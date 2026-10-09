source_filename = "script.nx"
target triple = "x86_64-pc-linux-gnu"

%Token = type { %nyx_string*, %nyx_string*, i64, i64 }

@.str0 = private unnamed_addr constant [9 x i8] c"NYX_LANG\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [3 x i8] c"es\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [9 x i8] c"NYX_DIAG\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [5 x i8] c"json\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [1 x i8] c"\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [30 x i8] c"ERROR: demasiadas iteraciones\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [4 x i8] c"EOF\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [6 x i8] c"error\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [9 x i8] c"Parser: \00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [16 x i8] c" error(s) found\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [10 x i8] c"_consumed\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [6 x i8] c"block\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [6 x i8] c"block\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [4 x i8] c"EOF\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [1 x i8] c"\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [4 x i8] c"EOF\00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [14 x i8] c"RIGHT_BRACKET\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [1 x i8] c"\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [1 x i8] c"\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [3 x i8] c"\5c\22\00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [3 x i8] c"\5c\5c\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [3 x i8] c"\5cn\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [3 x i8] c"\5cr\00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [3 x i8] c"\5ct\00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [1 x i8] c"\00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [39 x i8] c"demasiados errores de parse, abortando\00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [32 x i8] c"too many parse errors, aborting\00"
@.str28.c = internal global %nyx_string* null
@.str29 = private unnamed_addr constant [65 x i8] c"{\22code\22:\22NYX0103\22,\22severity\22:\22error\22,\22phase\22:\22parse\22,\22message\22:\22\00"
@.str29.c = internal global %nyx_string* null
@.str30 = private unnamed_addr constant [3 x i8] c"\22}\00"
@.str30.c = internal global %nyx_string* null
@.str31 = private unnamed_addr constant [18 x i8] c"error [NYX0103]: \00"
@.str31.c = internal global %nyx_string* null
@.str32 = private unnamed_addr constant [10 x i8] c"{\22code\22:\22\00"
@.str32.c = internal global %nyx_string* null
@.str33 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str33.c = internal global %nyx_string* null
@.str34 = private unnamed_addr constant [20 x i8] c",\22severity\22:\22error\22\00"
@.str34.c = internal global %nyx_string* null
@.str35 = private unnamed_addr constant [17 x i8] c",\22phase\22:\22parse\22\00"
@.str35.c = internal global %nyx_string* null
@.str36 = private unnamed_addr constant [9 x i8] c",\22line\22:\00"
@.str36.c = internal global %nyx_string* null
@.str37 = private unnamed_addr constant [11 x i8] c",\22column\22:\00"
@.str37.c = internal global %nyx_string* null
@.str38 = private unnamed_addr constant [13 x i8] c",\22message\22:\22\00"
@.str38.c = internal global %nyx_string* null
@.str39 = private unnamed_addr constant [3 x i8] c"\22}\00"
@.str39.c = internal global %nyx_string* null
@.str40 = private unnamed_addr constant [8 x i8] c"error [\00"
@.str40.c = internal global %nyx_string* null
@.str41 = private unnamed_addr constant [4 x i8] c"]: \00"
@.str41.c = internal global %nyx_string* null
@.str42 = private unnamed_addr constant [7 x i8] c"  --> \00"
@.str42.c = internal global %nyx_string* null
@.str43 = private unnamed_addr constant [7 x i8] c"línea\00"
@.str43.c = internal global %nyx_string* null
@.str44 = private unnamed_addr constant [5 x i8] c"line\00"
@.str44.c = internal global %nyx_string* null
@.str45 = private unnamed_addr constant [2 x i8] c" \00"
@.str45.c = internal global %nyx_string* null
@.str46 = private unnamed_addr constant [2 x i8] c":\00"
@.str46.c = internal global %nyx_string* null
@.str47 = private unnamed_addr constant [4 x i8] c"LET\00"
@.str47.c = internal global %nyx_string* null
@.str48 = private unnamed_addr constant [4 x i8] c"VAR\00"
@.str48.c = internal global %nyx_string* null
@.str49 = private unnamed_addr constant [6 x i8] c"CONST\00"
@.str49.c = internal global %nyx_string* null
@.str50 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str50.c = internal global %nyx_string* null
@.str51 = private unnamed_addr constant [7 x i8] c"RETURN\00"
@.str51.c = internal global %nyx_string* null
@.str52 = private unnamed_addr constant [3 x i8] c"IF\00"
@.str52.c = internal global %nyx_string* null
@.str53 = private unnamed_addr constant [5 x i8] c"ELSE\00"
@.str53.c = internal global %nyx_string* null
@.str54 = private unnamed_addr constant [6 x i8] c"WHILE\00"
@.str54.c = internal global %nyx_string* null
@.str55 = private unnamed_addr constant [4 x i8] c"FOR\00"
@.str55.c = internal global %nyx_string* null
@.str56 = private unnamed_addr constant [3 x i8] c"IN\00"
@.str56.c = internal global %nyx_string* null
@.str57 = private unnamed_addr constant [6 x i8] c"BREAK\00"
@.str57.c = internal global %nyx_string* null
@.str58 = private unnamed_addr constant [9 x i8] c"CONTINUE\00"
@.str58.c = internal global %nyx_string* null
@.str59 = private unnamed_addr constant [7 x i8] c"STRUCT\00"
@.str59.c = internal global %nyx_string* null
@.str60 = private unnamed_addr constant [5 x i8] c"ENUM\00"
@.str60.c = internal global %nyx_string* null
@.str61 = private unnamed_addr constant [6 x i8] c"MATCH\00"
@.str61.c = internal global %nyx_string* null
@.str62 = private unnamed_addr constant [7 x i8] c"EXPORT\00"
@.str62.c = internal global %nyx_string* null
@.str63 = private unnamed_addr constant [7 x i8] c"IMPORT\00"
@.str63.c = internal global %nyx_string* null
@.str64 = private unnamed_addr constant [5 x i8] c"FROM\00"
@.str64.c = internal global %nyx_string* null
@.str65 = private unnamed_addr constant [5 x i8] c"TRUE\00"
@.str65.c = internal global %nyx_string* null
@.str66 = private unnamed_addr constant [6 x i8] c"FALSE\00"
@.str66.c = internal global %nyx_string* null
@.str67 = private unnamed_addr constant [4 x i8] c"AND\00"
@.str67.c = internal global %nyx_string* null
@.str68 = private unnamed_addr constant [3 x i8] c"OR\00"
@.str68.c = internal global %nyx_string* null
@.str69 = private unnamed_addr constant [4 x i8] c"NOT\00"
@.str69.c = internal global %nyx_string* null
@.str70 = private unnamed_addr constant [5 x i8] c"IMPL\00"
@.str70.c = internal global %nyx_string* null
@.str71 = private unnamed_addr constant [6 x i8] c"TRAIT\00"
@.str71.c = internal global %nyx_string* null
@.str72 = private unnamed_addr constant [5 x i8] c"TEST\00"
@.str72.c = internal global %nyx_string* null
@.str73 = private unnamed_addr constant [7 x i8] c"ASSERT\00"
@.str73.c = internal global %nyx_string* null
@.str74 = private unnamed_addr constant [7 x i8] c"EXTERN\00"
@.str74.c = internal global %nyx_string* null
@.str75 = private unnamed_addr constant [3 x i8] c"AS\00"
@.str75.c = internal global %nyx_string* null
@.str76 = private unnamed_addr constant [7 x i8] c"UNSAFE\00"
@.str76.c = internal global %nyx_string* null
@.str77 = private unnamed_addr constant [7 x i8] c"STATIC\00"
@.str77.c = internal global %nyx_string* null
@.str78 = private unnamed_addr constant [7 x i8] c"SIZEOF\00"
@.str78.c = internal global %nyx_string* null
@.str79 = private unnamed_addr constant [8 x i8] c"ALIGNOF\00"
@.str79.c = internal global %nyx_string* null
@.str80 = private unnamed_addr constant [4 x i8] c"ASM\00"
@.str80.c = internal global %nyx_string* null
@.str81 = private unnamed_addr constant [4 x i8] c"DYN\00"
@.str81.c = internal global %nyx_string* null
@.str82 = private unnamed_addr constant [4 x i8] c"PUB\00"
@.str82.c = internal global %nyx_string* null
@.str83 = private unnamed_addr constant [7 x i8] c"MODULE\00"
@.str83.c = internal global %nyx_string* null
@.str84 = private unnamed_addr constant [6 x i8] c"WHERE\00"
@.str84.c = internal global %nyx_string* null
@.str85 = private unnamed_addr constant [6 x i8] c"DEFER\00"
@.str85.c = internal global %nyx_string* null
@.str86 = private unnamed_addr constant [4 x i8] c"TRY\00"
@.str86.c = internal global %nyx_string* null
@.str87 = private unnamed_addr constant [6 x i8] c"CATCH\00"
@.str87.c = internal global %nyx_string* null
@.str88 = private unnamed_addr constant [6 x i8] c"THROW\00"
@.str88.c = internal global %nyx_string* null
@.str89 = private unnamed_addr constant [6 x i8] c"ASYNC\00"
@.str89.c = internal global %nyx_string* null
@.str90 = private unnamed_addr constant [6 x i8] c"AWAIT\00"
@.str90.c = internal global %nyx_string* null
@.str91 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str91.c = internal global %nyx_string* null
@.str92 = private unnamed_addr constant [8 x i8] c"NYX0102\00"
@.str92.c = internal global %nyx_string* null
@.str93 = private unnamed_addr constant [30 x i8] c"no se puede usar la keyword '\00"
@.str93.c = internal global %nyx_string* null
@.str94 = private unnamed_addr constant [21 x i8] c"' como identificador\00"
@.str94.c = internal global %nyx_string* null
@.str95 = private unnamed_addr constant [21 x i8] c"cannot use keyword '\00"
@.str95.c = internal global %nyx_string* null
@.str96 = private unnamed_addr constant [19 x i8] c"' as an identifier\00"
@.str96.c = internal global %nyx_string* null
@.str97 = private unnamed_addr constant [8 x i8] c"NYX0101\00"
@.str97.c = internal global %nyx_string* null
@.str98 = private unnamed_addr constant [14 x i8] c"se esperaba '\00"
@.str98.c = internal global %nyx_string* null
@.str99 = private unnamed_addr constant [16 x i8] c"', encontrado '\00"
@.str99.c = internal global %nyx_string* null
@.str100 = private unnamed_addr constant [4 x i8] c"' (\00"
@.str100.c = internal global %nyx_string* null
@.str101 = private unnamed_addr constant [2 x i8] c")\00"
@.str101.c = internal global %nyx_string* null
@.str102 = private unnamed_addr constant [11 x i8] c"expected '\00"
@.str102.c = internal global %nyx_string* null
@.str103 = private unnamed_addr constant [11 x i8] c"', found '\00"
@.str103.c = internal global %nyx_string* null
@.str104 = private unnamed_addr constant [4 x i8] c"' (\00"
@.str104.c = internal global %nyx_string* null
@.str105 = private unnamed_addr constant [2 x i8] c")\00"
@.str105.c = internal global %nyx_string* null
@.str106 = private unnamed_addr constant [4 x i8] c"EOF\00"
@.str106.c = internal global %nyx_string* null
@.str107 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str107.c = internal global %nyx_string* null
@.str108 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str108.c = internal global %nyx_string* null
@.str109 = private unnamed_addr constant [14 x i8] c"RIGHT_BRACKET\00"
@.str109.c = internal global %nyx_string* null
@.str110 = private unnamed_addr constant [6 x i8] c"OR_OR\00"
@.str110.c = internal global %nyx_string* null
@.str111 = private unnamed_addr constant [3 x i8] c"OR\00"
@.str111.c = internal global %nyx_string* null
@.str112 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str112.c = internal global %nyx_string* null
@.str113 = private unnamed_addr constant [8 x i8] c"AND_AND\00"
@.str113.c = internal global %nyx_string* null
@.str114 = private unnamed_addr constant [4 x i8] c"AND\00"
@.str114.c = internal global %nyx_string* null
@.str115 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str115.c = internal global %nyx_string* null
@.str116 = private unnamed_addr constant [5 x i8] c"PIPE\00"
@.str116.c = internal global %nyx_string* null
@.str117 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str117.c = internal global %nyx_string* null
@.str118 = private unnamed_addr constant [6 x i8] c"CARET\00"
@.str118.c = internal global %nyx_string* null
@.str119 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str119.c = internal global %nyx_string* null
@.str120 = private unnamed_addr constant [4 x i8] c"AMP\00"
@.str120.c = internal global %nyx_string* null
@.str121 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str121.c = internal global %nyx_string* null
@.str122 = private unnamed_addr constant [12 x i8] c"EQUAL_EQUAL\00"
@.str122.c = internal global %nyx_string* null
@.str123 = private unnamed_addr constant [10 x i8] c"NOT_EQUAL\00"
@.str123.c = internal global %nyx_string* null
@.str124 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str124.c = internal global %nyx_string* null
@.str125 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str125.c = internal global %nyx_string* null
@.str126 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str126.c = internal global %nyx_string* null
@.str127 = private unnamed_addr constant [11 x i8] c"LESS_EQUAL\00"
@.str127.c = internal global %nyx_string* null
@.str128 = private unnamed_addr constant [14 x i8] c"GREATER_EQUAL\00"
@.str128.c = internal global %nyx_string* null
@.str129 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str129.c = internal global %nyx_string* null
@.str130 = private unnamed_addr constant [16 x i8] c"RANGE_INCLUSIVE\00"
@.str130.c = internal global %nyx_string* null
@.str131 = private unnamed_addr constant [6 x i8] c"range\00"
@.str131.c = internal global %nyx_string* null
@.str132 = private unnamed_addr constant [5 x i8] c"true\00"
@.str132.c = internal global %nyx_string* null
@.str133 = private unnamed_addr constant [6 x i8] c"RANGE\00"
@.str133.c = internal global %nyx_string* null
@.str134 = private unnamed_addr constant [6 x i8] c"range\00"
@.str134.c = internal global %nyx_string* null
@.str135 = private unnamed_addr constant [6 x i8] c"false\00"
@.str135.c = internal global %nyx_string* null
@.str136 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str136.c = internal global %nyx_string* null
@.str137 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str137.c = internal global %nyx_string* null
@.str138 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str138.c = internal global %nyx_string* null
@.str139 = private unnamed_addr constant [11 x i8] c"SHIFT_LEFT\00"
@.str139.c = internal global %nyx_string* null
@.str140 = private unnamed_addr constant [12 x i8] c"SHIFT_RIGHT\00"
@.str140.c = internal global %nyx_string* null
@.str141 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str141.c = internal global %nyx_string* null
@.str142 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str142.c = internal global %nyx_string* null
@.str143 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str143.c = internal global %nyx_string* null
@.str144 = private unnamed_addr constant [6 x i8] c"SLASH\00"
@.str144.c = internal global %nyx_string* null
@.str145 = private unnamed_addr constant [8 x i8] c"PERCENT\00"
@.str145.c = internal global %nyx_string* null
@.str146 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str146.c = internal global %nyx_string* null
@.str147 = private unnamed_addr constant [6 x i8] c"POWER\00"
@.str147.c = internal global %nyx_string* null
@.str148 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str148.c = internal global %nyx_string* null
@.str149 = private unnamed_addr constant [6 x i8] c"POWER\00"
@.str149.c = internal global %nyx_string* null
@.str150 = private unnamed_addr constant [6 x i8] c"AWAIT\00"
@.str150.c = internal global %nyx_string* null
@.str151 = private unnamed_addr constant [11 x i8] c"await_expr\00"
@.str151.c = internal global %nyx_string* null
@.str152 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str152.c = internal global %nyx_string* null
@.str153 = private unnamed_addr constant [4 x i8] c"NOT\00"
@.str153.c = internal global %nyx_string* null
@.str154 = private unnamed_addr constant [6 x i8] c"TILDE\00"
@.str154.c = internal global %nyx_string* null
@.str155 = private unnamed_addr constant [5 x i8] c"unop\00"
@.str155.c = internal global %nyx_string* null
@.str156 = private unnamed_addr constant [4 x i8] c"AMP\00"
@.str156.c = internal global %nyx_string* null
@.str157 = private unnamed_addr constant [4 x i8] c"mut\00"
@.str157.c = internal global %nyx_string* null
@.str158 = private unnamed_addr constant [12 x i8] c"addr_of_mut\00"
@.str158.c = internal global %nyx_string* null
@.str159 = private unnamed_addr constant [8 x i8] c"addr_of\00"
@.str159.c = internal global %nyx_string* null
@.str160 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str160.c = internal global %nyx_string* null
@.str161 = private unnamed_addr constant [6 x i8] c"deref\00"
@.str161.c = internal global %nyx_string* null
@.str162 = private unnamed_addr constant [3 x i8] c"AS\00"
@.str162.c = internal global %nyx_string* null
@.str163 = private unnamed_addr constant [5 x i8] c"cast\00"
@.str163.c = internal global %nyx_string* null
@.str164 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str164.c = internal global %nyx_string* null
@.str165 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str165.c = internal global %nyx_string* null
@.str166 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str166.c = internal global %nyx_string* null
@.str167 = private unnamed_addr constant [12 x i8] c"SHIFT_RIGHT\00"
@.str167.c = internal global %nyx_string* null
@.str168 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str168.c = internal global %nyx_string* null
@.str169 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str169.c = internal global %nyx_string* null
@.str170 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str170.c = internal global %nyx_string* null
@.str171 = private unnamed_addr constant [4 x i8] c"AMP\00"
@.str171.c = internal global %nyx_string* null
@.str172 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str172.c = internal global %nyx_string* null
@.str173 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str173.c = internal global %nyx_string* null
@.str174 = private unnamed_addr constant [4 x i8] c"DYN\00"
@.str174.c = internal global %nyx_string* null
@.str175 = private unnamed_addr constant [5 x i8] c"IMPL\00"
@.str175.c = internal global %nyx_string* null
@.str176 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str176.c = internal global %nyx_string* null
@.str177 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str177.c = internal global %nyx_string* null
@.str178 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str178.c = internal global %nyx_string* null
@.str179 = private unnamed_addr constant [6 x i8] c"ARROW\00"
@.str179.c = internal global %nyx_string* null
@.str180 = private unnamed_addr constant [13 x i8] c"LEFT_BRACKET\00"
@.str180.c = internal global %nyx_string* null
@.str181 = private unnamed_addr constant [14 x i8] c"RIGHT_BRACKET\00"
@.str181.c = internal global %nyx_string* null
@.str182 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str182.c = internal global %nyx_string* null
@.str183 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str183.c = internal global %nyx_string* null
@.str184 = private unnamed_addr constant [4 x i8] c"DOT\00"
@.str184.c = internal global %nyx_string* null
@.str185 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str185.c = internal global %nyx_string* null
@.str186 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str186.c = internal global %nyx_string* null
@.str187 = private unnamed_addr constant [4 x i8] c"DOT\00"
@.str187.c = internal global %nyx_string* null
@.str188 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str188.c = internal global %nyx_string* null
@.str189 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str189.c = internal global %nyx_string* null
@.str190 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str190.c = internal global %nyx_string* null
@.str191 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str191.c = internal global %nyx_string* null
@.str192 = private unnamed_addr constant [12 x i8] c"SHIFT_RIGHT\00"
@.str192.c = internal global %nyx_string* null
@.str193 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str193.c = internal global %nyx_string* null
@.str194 = private unnamed_addr constant [13 x i8] c"generic_call\00"
@.str194.c = internal global %nyx_string* null
@.str195 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str195.c = internal global %nyx_string* null
@.str196 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str196.c = internal global %nyx_string* null
@.str197 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str197.c = internal global %nyx_string* null
@.str198 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str198.c = internal global %nyx_string* null
@.str199 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str199.c = internal global %nyx_string* null
@.str200 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str200.c = internal global %nyx_string* null
@.str201 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str201.c = internal global %nyx_string* null
@.str202 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str202.c = internal global %nyx_string* null
@.str203 = private unnamed_addr constant [12 x i8] c"struct_init\00"
@.str203.c = internal global %nyx_string* null
@.str204 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str204.c = internal global %nyx_string* null
@.str205 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str205.c = internal global %nyx_string* null
@.str206 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str206.c = internal global %nyx_string* null
@.str207 = private unnamed_addr constant [5 x i8] c"call\00"
@.str207.c = internal global %nyx_string* null
@.str208 = private unnamed_addr constant [13 x i8] c"LEFT_BRACKET\00"
@.str208.c = internal global %nyx_string* null
@.str209 = private unnamed_addr constant [14 x i8] c"RIGHT_BRACKET\00"
@.str209.c = internal global %nyx_string* null
@.str210 = private unnamed_addr constant [6 x i8] c"index\00"
@.str210.c = internal global %nyx_string* null
@.str211 = private unnamed_addr constant [4 x i8] c"DOT\00"
@.str211.c = internal global %nyx_string* null
@.str212 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str212.c = internal global %nyx_string* null
@.str213 = private unnamed_addr constant [12 x i8] c"tuple_index\00"
@.str213.c = internal global %nyx_string* null
@.str214 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str214.c = internal global %nyx_string* null
@.str215 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str215.c = internal global %nyx_string* null
@.str216 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str216.c = internal global %nyx_string* null
@.str217 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str217.c = internal global %nyx_string* null
@.str218 = private unnamed_addr constant [12 x i8] c"SHIFT_RIGHT\00"
@.str218.c = internal global %nyx_string* null
@.str219 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str219.c = internal global %nyx_string* null
@.str220 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str220.c = internal global %nyx_string* null
@.str221 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str221.c = internal global %nyx_string* null
@.str222 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str222.c = internal global %nyx_string* null
@.str223 = private unnamed_addr constant [12 x i8] c"method_call\00"
@.str223.c = internal global %nyx_string* null
@.str224 = private unnamed_addr constant [12 x i8] c"method_call\00"
@.str224.c = internal global %nyx_string* null
@.str225 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str225.c = internal global %nyx_string* null
@.str226 = private unnamed_addr constant [13 x i8] c"field_access\00"
@.str226.c = internal global %nyx_string* null
@.str227 = private unnamed_addr constant [9 x i8] c"QUESTION\00"
@.str227.c = internal global %nyx_string* null
@.str228 = private unnamed_addr constant [7 x i8] c"try_op\00"
@.str228.c = internal global %nyx_string* null
@.str229 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str229.c = internal global %nyx_string* null
@.str230 = private unnamed_addr constant [7 x i8] c"number\00"
@.str230.c = internal global %nyx_string* null
@.str231 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str231.c = internal global %nyx_string* null
@.str232 = private unnamed_addr constant [7 x i8] c"string\00"
@.str232.c = internal global %nyx_string* null
@.str233 = private unnamed_addr constant [5 x i8] c"CHAR\00"
@.str233.c = internal global %nyx_string* null
@.str234 = private unnamed_addr constant [5 x i8] c"char\00"
@.str234.c = internal global %nyx_string* null
@.str235 = private unnamed_addr constant [5 x i8] c"TRUE\00"
@.str235.c = internal global %nyx_string* null
@.str236 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str236.c = internal global %nyx_string* null
@.str237 = private unnamed_addr constant [5 x i8] c"true\00"
@.str237.c = internal global %nyx_string* null
@.str238 = private unnamed_addr constant [6 x i8] c"FALSE\00"
@.str238.c = internal global %nyx_string* null
@.str239 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str239.c = internal global %nyx_string* null
@.str240 = private unnamed_addr constant [6 x i8] c"false\00"
@.str240.c = internal global %nyx_string* null
@.str241 = private unnamed_addr constant [7 x i8] c"SIZEOF\00"
@.str241.c = internal global %nyx_string* null
@.str242 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str242.c = internal global %nyx_string* null
@.str243 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str243.c = internal global %nyx_string* null
@.str244 = private unnamed_addr constant [7 x i8] c"sizeof\00"
@.str244.c = internal global %nyx_string* null
@.str245 = private unnamed_addr constant [8 x i8] c"ALIGNOF\00"
@.str245.c = internal global %nyx_string* null
@.str246 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str246.c = internal global %nyx_string* null
@.str247 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str247.c = internal global %nyx_string* null
@.str248 = private unnamed_addr constant [8 x i8] c"alignof\00"
@.str248.c = internal global %nyx_string* null
@.str249 = private unnamed_addr constant [4 x i8] c"ASM\00"
@.str249.c = internal global %nyx_string* null
@.str250 = private unnamed_addr constant [2 x i8] c"0\00"
@.str250.c = internal global %nyx_string* null
@.str251 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str251.c = internal global %nyx_string* null
@.str252 = private unnamed_addr constant [9 x i8] c"volatile\00"
@.str252.c = internal global %nyx_string* null
@.str253 = private unnamed_addr constant [2 x i8] c"1\00"
@.str253.c = internal global %nyx_string* null
@.str254 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str254.c = internal global %nyx_string* null
@.str255 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str255.c = internal global %nyx_string* null
@.str256 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str256.c = internal global %nyx_string* null
@.str257 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str257.c = internal global %nyx_string* null
@.str258 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str258.c = internal global %nyx_string* null
@.str259 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str259.c = internal global %nyx_string* null
@.str260 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str260.c = internal global %nyx_string* null
@.str261 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str261.c = internal global %nyx_string* null
@.str262 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str262.c = internal global %nyx_string* null
@.str263 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str263.c = internal global %nyx_string* null
@.str264 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str264.c = internal global %nyx_string* null
@.str265 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str265.c = internal global %nyx_string* null
@.str266 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str266.c = internal global %nyx_string* null
@.str267 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str267.c = internal global %nyx_string* null
@.str268 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str268.c = internal global %nyx_string* null
@.str269 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str269.c = internal global %nyx_string* null
@.str270 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str270.c = internal global %nyx_string* null
@.str271 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str271.c = internal global %nyx_string* null
@.str272 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str272.c = internal global %nyx_string* null
@.str273 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str273.c = internal global %nyx_string* null
@.str274 = private unnamed_addr constant [15 x i8] c"inline_asm_gcc\00"
@.str274.c = internal global %nyx_string* null
@.str275 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str275.c = internal global %nyx_string* null
@.str276 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str276.c = internal global %nyx_string* null
@.str277 = private unnamed_addr constant [4 x i8] c"out\00"
@.str277.c = internal global %nyx_string* null
@.str278 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str278.c = internal global %nyx_string* null
@.str279 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str279.c = internal global %nyx_string* null
@.str280 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str280.c = internal global %nyx_string* null
@.str281 = private unnamed_addr constant [3 x i8] c"in\00"
@.str281.c = internal global %nyx_string* null
@.str282 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str282.c = internal global %nyx_string* null
@.str283 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str283.c = internal global %nyx_string* null
@.str284 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str284.c = internal global %nyx_string* null
@.str285 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str285.c = internal global %nyx_string* null
@.str286 = private unnamed_addr constant [8 x i8] c"clobber\00"
@.str286.c = internal global %nyx_string* null
@.str287 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str287.c = internal global %nyx_string* null
@.str288 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str288.c = internal global %nyx_string* null
@.str289 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str289.c = internal global %nyx_string* null
@.str290 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str290.c = internal global %nyx_string* null
@.str291 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str291.c = internal global %nyx_string* null
@.str292 = private unnamed_addr constant [11 x i8] c"inline_asm\00"
@.str292.c = internal global %nyx_string* null
@.str293 = private unnamed_addr constant [7 x i8] c"ASSERT\00"
@.str293.c = internal global %nyx_string* null
@.str294 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str294.c = internal global %nyx_string* null
@.str295 = private unnamed_addr constant [7 x i8] c"string\00"
@.str295.c = internal global %nyx_string* null
@.str296 = private unnamed_addr constant [15 x i8] c"assert @ line \00"
@.str296.c = internal global %nyx_string* null
@.str297 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str297.c = internal global %nyx_string* null
@.str298 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str298.c = internal global %nyx_string* null
@.str299 = private unnamed_addr constant [7 x i8] c"assert\00"
@.str299.c = internal global %nyx_string* null
@.str300 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str300.c = internal global %nyx_string* null
@.str301 = private unnamed_addr constant [4 x i8] c"NOT\00"
@.str301.c = internal global %nyx_string* null
@.str302 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str302.c = internal global %nyx_string* null
@.str303 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str303.c = internal global %nyx_string* null
@.str304 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str304.c = internal global %nyx_string* null
@.str305 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str305.c = internal global %nyx_string* null
@.str306 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str306.c = internal global %nyx_string* null
@.str307 = private unnamed_addr constant [13 x i8] c"LEFT_BRACKET\00"
@.str307.c = internal global %nyx_string* null
@.str308 = private unnamed_addr constant [6 x i8] c"MATCH\00"
@.str308.c = internal global %nyx_string* null
@.str309 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str309.c = internal global %nyx_string* null
@.str310 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str310.c = internal global %nyx_string* null
@.str311 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str311.c = internal global %nyx_string* null
@.str312 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str312.c = internal global %nyx_string* null
@.str313 = private unnamed_addr constant [10 x i8] c"tuple_lit\00"
@.str313.c = internal global %nyx_string* null
@.str314 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str314.c = internal global %nyx_string* null
@.str315 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str315.c = internal global %nyx_string* null
@.str316 = private unnamed_addr constant [10 x i8] c"__lambda_\00"
@.str316.c = internal global %nyx_string* null
@.str317 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str317.c = internal global %nyx_string* null
@.str318 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str318.c = internal global %nyx_string* null
@.str319 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str319.c = internal global %nyx_string* null
@.str320 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str320.c = internal global %nyx_string* null
@.str321 = private unnamed_addr constant [4 x i8] c"int\00"
@.str321.c = internal global %nyx_string* null
@.str322 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str322.c = internal global %nyx_string* null
@.str323 = private unnamed_addr constant [1 x i8] c"\00"
@.str323.c = internal global %nyx_string* null
@.str324 = private unnamed_addr constant [6 x i8] c"ARROW\00"
@.str324.c = internal global %nyx_string* null
@.str325 = private unnamed_addr constant [9 x i8] c"function\00"
@.str325.c = internal global %nyx_string* null
@.str326 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str326.c = internal global %nyx_string* null
@.str327 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str327.c = internal global %nyx_string* null
@.str328 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str328.c = internal global %nyx_string* null
@.str329 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str329.c = internal global %nyx_string* null
@.str330 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str330.c = internal global %nyx_string* null
@.str331 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str331.c = internal global %nyx_string* null
@.str332 = private unnamed_addr constant [8 x i8] c"NYX0106\00"
@.str332.c = internal global %nyx_string* null
@.str333 = private unnamed_addr constant [71 x i8] c"las claves de un map literal deben ser String — usa {\22clave\22: valor}\00"
@.str333.c = internal global %nyx_string* null
@.str334 = private unnamed_addr constant [55 x i8] c"map literal keys must be String — use {\22key\22: value}\00"
@.str334.c = internal global %nyx_string* null
@.str335 = private unnamed_addr constant [6 x i8] c"error\00"
@.str335.c = internal global %nyx_string* null
@.str336 = private unnamed_addr constant [8 x i8] c"NYX0107\00"
@.str336.c = internal global %nyx_string* null
@.str337 = private unnamed_addr constant [38 x i8] c"token inesperado en una expresión: '\00"
@.str337.c = internal global %nyx_string* null
@.str338 = private unnamed_addr constant [4 x i8] c"' (\00"
@.str338.c = internal global %nyx_string* null
@.str339 = private unnamed_addr constant [2 x i8] c")\00"
@.str339.c = internal global %nyx_string* null
@.str340 = private unnamed_addr constant [34 x i8] c"unexpected token in expression: '\00"
@.str340.c = internal global %nyx_string* null
@.str341 = private unnamed_addr constant [4 x i8] c"' (\00"
@.str341.c = internal global %nyx_string* null
@.str342 = private unnamed_addr constant [2 x i8] c")\00"
@.str342.c = internal global %nyx_string* null
@.str343 = private unnamed_addr constant [6 x i8] c"error\00"
@.str343.c = internal global %nyx_string* null
@.str344 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str344.c = internal global %nyx_string* null
@.str345 = private unnamed_addr constant [4 x i8] c"EOF\00"
@.str345.c = internal global %nyx_string* null
@.str346 = private unnamed_addr constant [8 x i8] c"NYX0104\00"
@.str346.c = internal global %nyx_string* null
@.str347 = private unnamed_addr constant [53 x i8] c"fin de archivo inesperado: falta '}' del map literal\00"
@.str347.c = internal global %nyx_string* null
@.str348 = private unnamed_addr constant [59 x i8] c"unexpected end of file: missing closing '}' of map literal\00"
@.str348.c = internal global %nyx_string* null
@.str349 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str349.c = internal global %nyx_string* null
@.str350 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str350.c = internal global %nyx_string* null
@.str351 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str351.c = internal global %nyx_string* null
@.str352 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str352.c = internal global %nyx_string* null
@.str353 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str353.c = internal global %nyx_string* null
@.str354 = private unnamed_addr constant [12 x i8] c"map_literal\00"
@.str354.c = internal global %nyx_string* null
@.str355 = private unnamed_addr constant [13 x i8] c"LEFT_BRACKET\00"
@.str355.c = internal global %nyx_string* null
@.str356 = private unnamed_addr constant [14 x i8] c"RIGHT_BRACKET\00"
@.str356.c = internal global %nyx_string* null
@.str357 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str357.c = internal global %nyx_string* null
@.str358 = private unnamed_addr constant [6 x i8] c"array\00"
@.str358.c = internal global %nyx_string* null
@.str359 = private unnamed_addr constant [5 x i8] c"ENUM\00"
@.str359.c = internal global %nyx_string* null
@.str360 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str360.c = internal global %nyx_string* null
@.str361 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str361.c = internal global %nyx_string* null
@.str362 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str362.c = internal global %nyx_string* null
@.str363 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str363.c = internal global %nyx_string* null
@.str364 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str364.c = internal global %nyx_string* null
@.str365 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str365.c = internal global %nyx_string* null
@.str366 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str366.c = internal global %nyx_string* null
@.str367 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str367.c = internal global %nyx_string* null
@.str368 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str368.c = internal global %nyx_string* null
@.str369 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str369.c = internal global %nyx_string* null
@.str370 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str370.c = internal global %nyx_string* null
@.str371 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str371.c = internal global %nyx_string* null
@.str372 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str372.c = internal global %nyx_string* null
@.str373 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str373.c = internal global %nyx_string* null
@.str374 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str374.c = internal global %nyx_string* null
@.str375 = private unnamed_addr constant [9 x i8] c"enum_def\00"
@.str375.c = internal global %nyx_string* null
@.str376 = private unnamed_addr constant [9 x i8] c"wildcard\00"
@.str376.c = internal global %nyx_string* null
@.str377 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str377.c = internal global %nyx_string* null
@.str378 = private unnamed_addr constant [2 x i8] c".\00"
@.str378.c = internal global %nyx_string* null
@.str379 = private unnamed_addr constant [16 x i8] c"literal_pattern\00"
@.str379.c = internal global %nyx_string* null
@.str380 = private unnamed_addr constant [6 x i8] c"float\00"
@.str380.c = internal global %nyx_string* null
@.str381 = private unnamed_addr constant [16 x i8] c"RANGE_INCLUSIVE\00"
@.str381.c = internal global %nyx_string* null
@.str382 = private unnamed_addr constant [1 x i8] c"\00"
@.str382.c = internal global %nyx_string* null
@.str383 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str383.c = internal global %nyx_string* null
@.str384 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str384.c = internal global %nyx_string* null
@.str385 = private unnamed_addr constant [2 x i8] c"-\00"
@.str385.c = internal global %nyx_string* null
@.str386 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str386.c = internal global %nyx_string* null
@.str387 = private unnamed_addr constant [14 x i8] c"range_pattern\00"
@.str387.c = internal global %nyx_string* null
@.str388 = private unnamed_addr constant [5 x i8] c"true\00"
@.str388.c = internal global %nyx_string* null
@.str389 = private unnamed_addr constant [4 x i8] c"int\00"
@.str389.c = internal global %nyx_string* null
@.str390 = private unnamed_addr constant [6 x i8] c"RANGE\00"
@.str390.c = internal global %nyx_string* null
@.str391 = private unnamed_addr constant [1 x i8] c"\00"
@.str391.c = internal global %nyx_string* null
@.str392 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str392.c = internal global %nyx_string* null
@.str393 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str393.c = internal global %nyx_string* null
@.str394 = private unnamed_addr constant [2 x i8] c"-\00"
@.str394.c = internal global %nyx_string* null
@.str395 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str395.c = internal global %nyx_string* null
@.str396 = private unnamed_addr constant [14 x i8] c"range_pattern\00"
@.str396.c = internal global %nyx_string* null
@.str397 = private unnamed_addr constant [6 x i8] c"false\00"
@.str397.c = internal global %nyx_string* null
@.str398 = private unnamed_addr constant [4 x i8] c"int\00"
@.str398.c = internal global %nyx_string* null
@.str399 = private unnamed_addr constant [16 x i8] c"literal_pattern\00"
@.str399.c = internal global %nyx_string* null
@.str400 = private unnamed_addr constant [4 x i8] c"int\00"
@.str400.c = internal global %nyx_string* null
@.str401 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str401.c = internal global %nyx_string* null
@.str402 = private unnamed_addr constant [16 x i8] c"literal_pattern\00"
@.str402.c = internal global %nyx_string* null
@.str403 = private unnamed_addr constant [7 x i8] c"string\00"
@.str403.c = internal global %nyx_string* null
@.str404 = private unnamed_addr constant [5 x i8] c"TRUE\00"
@.str404.c = internal global %nyx_string* null
@.str405 = private unnamed_addr constant [16 x i8] c"literal_pattern\00"
@.str405.c = internal global %nyx_string* null
@.str406 = private unnamed_addr constant [5 x i8] c"true\00"
@.str406.c = internal global %nyx_string* null
@.str407 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str407.c = internal global %nyx_string* null
@.str408 = private unnamed_addr constant [6 x i8] c"FALSE\00"
@.str408.c = internal global %nyx_string* null
@.str409 = private unnamed_addr constant [16 x i8] c"literal_pattern\00"
@.str409.c = internal global %nyx_string* null
@.str410 = private unnamed_addr constant [6 x i8] c"false\00"
@.str410.c = internal global %nyx_string* null
@.str411 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str411.c = internal global %nyx_string* null
@.str412 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str412.c = internal global %nyx_string* null
@.str413 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str413.c = internal global %nyx_string* null
@.str414 = private unnamed_addr constant [2 x i8] c".\00"
@.str414.c = internal global %nyx_string* null
@.str415 = private unnamed_addr constant [16 x i8] c"literal_pattern\00"
@.str415.c = internal global %nyx_string* null
@.str416 = private unnamed_addr constant [2 x i8] c"-\00"
@.str416.c = internal global %nyx_string* null
@.str417 = private unnamed_addr constant [6 x i8] c"float\00"
@.str417.c = internal global %nyx_string* null
@.str418 = private unnamed_addr constant [16 x i8] c"RANGE_INCLUSIVE\00"
@.str418.c = internal global %nyx_string* null
@.str419 = private unnamed_addr constant [1 x i8] c"\00"
@.str419.c = internal global %nyx_string* null
@.str420 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str420.c = internal global %nyx_string* null
@.str421 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str421.c = internal global %nyx_string* null
@.str422 = private unnamed_addr constant [2 x i8] c"-\00"
@.str422.c = internal global %nyx_string* null
@.str423 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str423.c = internal global %nyx_string* null
@.str424 = private unnamed_addr constant [14 x i8] c"range_pattern\00"
@.str424.c = internal global %nyx_string* null
@.str425 = private unnamed_addr constant [2 x i8] c"-\00"
@.str425.c = internal global %nyx_string* null
@.str426 = private unnamed_addr constant [5 x i8] c"true\00"
@.str426.c = internal global %nyx_string* null
@.str427 = private unnamed_addr constant [4 x i8] c"int\00"
@.str427.c = internal global %nyx_string* null
@.str428 = private unnamed_addr constant [6 x i8] c"RANGE\00"
@.str428.c = internal global %nyx_string* null
@.str429 = private unnamed_addr constant [1 x i8] c"\00"
@.str429.c = internal global %nyx_string* null
@.str430 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str430.c = internal global %nyx_string* null
@.str431 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str431.c = internal global %nyx_string* null
@.str432 = private unnamed_addr constant [2 x i8] c"-\00"
@.str432.c = internal global %nyx_string* null
@.str433 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str433.c = internal global %nyx_string* null
@.str434 = private unnamed_addr constant [14 x i8] c"range_pattern\00"
@.str434.c = internal global %nyx_string* null
@.str435 = private unnamed_addr constant [2 x i8] c"-\00"
@.str435.c = internal global %nyx_string* null
@.str436 = private unnamed_addr constant [6 x i8] c"false\00"
@.str436.c = internal global %nyx_string* null
@.str437 = private unnamed_addr constant [4 x i8] c"int\00"
@.str437.c = internal global %nyx_string* null
@.str438 = private unnamed_addr constant [16 x i8] c"literal_pattern\00"
@.str438.c = internal global %nyx_string* null
@.str439 = private unnamed_addr constant [2 x i8] c"-\00"
@.str439.c = internal global %nyx_string* null
@.str440 = private unnamed_addr constant [4 x i8] c"int\00"
@.str440.c = internal global %nyx_string* null
@.str441 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str441.c = internal global %nyx_string* null
@.str442 = private unnamed_addr constant [2 x i8] c"_\00"
@.str442.c = internal global %nyx_string* null
@.str443 = private unnamed_addr constant [4 x i8] c"DOT\00"
@.str443.c = internal global %nyx_string* null
@.str444 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str444.c = internal global %nyx_string* null
@.str445 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str445.c = internal global %nyx_string* null
@.str446 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str446.c = internal global %nyx_string* null
@.str447 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str447.c = internal global %nyx_string* null
@.str448 = private unnamed_addr constant [19 x i8] c"identifier_pattern\00"
@.str448.c = internal global %nyx_string* null
@.str449 = private unnamed_addr constant [9 x i8] c"wildcard\00"
@.str449.c = internal global %nyx_string* null
@.str450 = private unnamed_addr constant [21 x i8] c"nested_match_pattern\00"
@.str450.c = internal global %nyx_string* null
@.str451 = private unnamed_addr constant [9 x i8] c"wildcard\00"
@.str451.c = internal global %nyx_string* null
@.str452 = private unnamed_addr constant [2 x i8] c"_\00"
@.str452.c = internal global %nyx_string* null
@.str453 = private unnamed_addr constant [14 x i8] c"match_pattern\00"
@.str453.c = internal global %nyx_string* null
@.str454 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str454.c = internal global %nyx_string* null
@.str455 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str455.c = internal global %nyx_string* null
@.str456 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str456.c = internal global %nyx_string* null
@.str457 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str457.c = internal global %nyx_string* null
@.str458 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str458.c = internal global %nyx_string* null
@.str459 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str459.c = internal global %nyx_string* null
@.str460 = private unnamed_addr constant [15 x i8] c"struct_pattern\00"
@.str460.c = internal global %nyx_string* null
@.str461 = private unnamed_addr constant [19 x i8] c"identifier_pattern\00"
@.str461.c = internal global %nyx_string* null
@.str462 = private unnamed_addr constant [5 x i8] c"PIPE\00"
@.str462.c = internal global %nyx_string* null
@.str463 = private unnamed_addr constant [5 x i8] c"PIPE\00"
@.str463.c = internal global %nyx_string* null
@.str464 = private unnamed_addr constant [11 x i8] c"or_pattern\00"
@.str464.c = internal global %nyx_string* null
@.str465 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str465.c = internal global %nyx_string* null
@.str466 = private unnamed_addr constant [3 x i8] c"IF\00"
@.str466.c = internal global %nyx_string* null
@.str467 = private unnamed_addr constant [12 x i8] c"ARROW_MATCH\00"
@.str467.c = internal global %nyx_string* null
@.str468 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str468.c = internal global %nyx_string* null
@.str469 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str469.c = internal global %nyx_string* null
@.str470 = private unnamed_addr constant [10 x i8] c"match_arm\00"
@.str470.c = internal global %nyx_string* null
@.str471 = private unnamed_addr constant [6 x i8] c"MATCH\00"
@.str471.c = internal global %nyx_string* null
@.str472 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str472.c = internal global %nyx_string* null
@.str473 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str473.c = internal global %nyx_string* null
@.str474 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str474.c = internal global %nyx_string* null
@.str475 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str475.c = internal global %nyx_string* null
@.str476 = private unnamed_addr constant [6 x i8] c"match\00"
@.str476.c = internal global %nyx_string* null
@.str477 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str477.c = internal global %nyx_string* null
@.str478 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str478.c = internal global %nyx_string* null
@.str479 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str479.c = internal global %nyx_string* null
@.str480 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str480.c = internal global %nyx_string* null
@.str481 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str481.c = internal global %nyx_string* null
@.str482 = private unnamed_addr constant [12 x i8] c"struct_init\00"
@.str482.c = internal global %nyx_string* null
@.str483 = private unnamed_addr constant [14 x i8] c"MODULE_MARKER\00"
@.str483.c = internal global %nyx_string* null
@.str484 = private unnamed_addr constant [8 x i8] c"-reabre\00"
@.str484.c = internal global %nyx_string* null
@.str485 = private unnamed_addr constant [14 x i8] c"module_marker\00"
@.str485.c = internal global %nyx_string* null
@.str486 = private unnamed_addr constant [14 x i8] c"module_marker\00"
@.str486.c = internal global %nyx_string* null
@.str487 = private unnamed_addr constant [4 x i8] c"LET\00"
@.str487.c = internal global %nyx_string* null
@.str488 = private unnamed_addr constant [4 x i8] c"VAR\00"
@.str488.c = internal global %nyx_string* null
@.str489 = private unnamed_addr constant [6 x i8] c"CONST\00"
@.str489.c = internal global %nyx_string* null
@.str490 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str490.c = internal global %nyx_string* null
@.str491 = private unnamed_addr constant [5 x i8] c"HASH\00"
@.str491.c = internal global %nyx_string* null
@.str492 = private unnamed_addr constant [13 x i8] c"LEFT_BRACKET\00"
@.str492.c = internal global %nyx_string* null
@.str493 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str493.c = internal global %nyx_string* null
@.str494 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str494.c = internal global %nyx_string* null
@.str495 = private unnamed_addr constant [1 x i8] c"\00"
@.str495.c = internal global %nyx_string* null
@.str496 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str496.c = internal global %nyx_string* null
@.str497 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str497.c = internal global %nyx_string* null
@.str498 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str498.c = internal global %nyx_string* null
@.str499 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str499.c = internal global %nyx_string* null
@.str500 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str500.c = internal global %nyx_string* null
@.str501 = private unnamed_addr constant [2 x i8] c",\00"
@.str501.c = internal global %nyx_string* null
@.str502 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str502.c = internal global %nyx_string* null
@.str503 = private unnamed_addr constant [2 x i8] c"(\00"
@.str503.c = internal global %nyx_string* null
@.str504 = private unnamed_addr constant [2 x i8] c")\00"
@.str504.c = internal global %nyx_string* null
@.str505 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str505.c = internal global %nyx_string* null
@.str506 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str506.c = internal global %nyx_string* null
@.str507 = private unnamed_addr constant [2 x i8] c"=\00"
@.str507.c = internal global %nyx_string* null
@.str508 = private unnamed_addr constant [14 x i8] c"RIGHT_BRACKET\00"
@.str508.c = internal global %nyx_string* null
@.str509 = private unnamed_addr constant [9 x i8] c"suspends\00"
@.str509.c = internal global %nyx_string* null
@.str510 = private unnamed_addr constant [7 x i8] c"EXTERN\00"
@.str510.c = internal global %nyx_string* null
@.str511 = private unnamed_addr constant [8 x i8] c"NYX0105\00"
@.str511.c = internal global %nyx_string* null
@.str512 = private unnamed_addr constant [41 x i8] c"#[suspends] solo aplica a extern \22js\22 fn\00"
@.str512.c = internal global %nyx_string* null
@.str513 = private unnamed_addr constant [43 x i8] c"#[suspends] only applies to extern \22js\22 fn\00"
@.str513.c = internal global %nyx_string* null
@.str514 = private unnamed_addr constant [6 x i8] c"error\00"
@.str514.c = internal global %nyx_string* null
@.str515 = private unnamed_addr constant [7 x i8] c"EXTERN\00"
@.str515.c = internal global %nyx_string* null
@.str516 = private unnamed_addr constant [9 x i8] c"suspends\00"
@.str516.c = internal global %nyx_string* null
@.str517 = private unnamed_addr constant [3 x i8] c"js\00"
@.str517.c = internal global %nyx_string* null
@.str518 = private unnamed_addr constant [8 x i8] c"NYX0105\00"
@.str518.c = internal global %nyx_string* null
@.str519 = private unnamed_addr constant [76 x i8] c"el único atributo de un extern es #[suspends], y solo sobre extern \22js\22 fn\00"
@.str519.c = internal global %nyx_string* null
@.str520 = private unnamed_addr constant [83 x i8] c"the only attribute allowed on an extern is #[suspends], and only on extern \22js\22 fn\00"
@.str520.c = internal global %nyx_string* null
@.str521 = private unnamed_addr constant [6 x i8] c"error\00"
@.str521.c = internal global %nyx_string* null
@.str522 = private unnamed_addr constant [10 x i8] c"extern_fn\00"
@.str522.c = internal global %nyx_string* null
@.str523 = private unnamed_addr constant [4 x i8] c"PUB\00"
@.str523.c = internal global %nyx_string* null
@.str524 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str524.c = internal global %nyx_string* null
@.str525 = private unnamed_addr constant [9 x i8] c"function\00"
@.str525.c = internal global %nyx_string* null
@.str526 = private unnamed_addr constant [7 x i8] c"export\00"
@.str526.c = internal global %nyx_string* null
@.str527 = private unnamed_addr constant [7 x i8] c"STRUCT\00"
@.str527.c = internal global %nyx_string* null
@.str528 = private unnamed_addr constant [7 x i8] c"struct\00"
@.str528.c = internal global %nyx_string* null
@.str529 = private unnamed_addr constant [7 x i8] c"export\00"
@.str529.c = internal global %nyx_string* null
@.str530 = private unnamed_addr constant [5 x i8] c"ENUM\00"
@.str530.c = internal global %nyx_string* null
@.str531 = private unnamed_addr constant [5 x i8] c"enum\00"
@.str531.c = internal global %nyx_string* null
@.str532 = private unnamed_addr constant [7 x i8] c"export\00"
@.str532.c = internal global %nyx_string* null
@.str533 = private unnamed_addr constant [8 x i8] c"NYX0105\00"
@.str533.c = internal global %nyx_string* null
@.str534 = private unnamed_addr constant [59 x i8] c"pub solo puede preceder fn, struct o enum tras un atributo\00"
@.str534.c = internal global %nyx_string* null
@.str535 = private unnamed_addr constant [59 x i8] c"pub can only precede fn, struct or enum after an attribute\00"
@.str535.c = internal global %nyx_string* null
@.str536 = private unnamed_addr constant [6 x i8] c"error\00"
@.str536.c = internal global %nyx_string* null
@.str537 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str537.c = internal global %nyx_string* null
@.str538 = private unnamed_addr constant [9 x i8] c"function\00"
@.str538.c = internal global %nyx_string* null
@.str539 = private unnamed_addr constant [7 x i8] c"STRUCT\00"
@.str539.c = internal global %nyx_string* null
@.str540 = private unnamed_addr constant [7 x i8] c"struct\00"
@.str540.c = internal global %nyx_string* null
@.str541 = private unnamed_addr constant [5 x i8] c"ENUM\00"
@.str541.c = internal global %nyx_string* null
@.str542 = private unnamed_addr constant [5 x i8] c"enum\00"
@.str542.c = internal global %nyx_string* null
@.str543 = private unnamed_addr constant [8 x i8] c"NYX0105\00"
@.str543.c = internal global %nyx_string* null
@.str544 = private unnamed_addr constant [77 x i8] c"#[...] solo soportado antes de fn, struct, enum, extern o pub fn/struct/enum\00"
@.str544.c = internal global %nyx_string* null
@.str545 = private unnamed_addr constant [80 x i8] c"#[...] is only supported before fn, struct, enum, extern, or pub fn/struct/enum\00"
@.str545.c = internal global %nyx_string* null
@.str546 = private unnamed_addr constant [6 x i8] c"error\00"
@.str546.c = internal global %nyx_string* null
@.str547 = private unnamed_addr constant [7 x i8] c"STRUCT\00"
@.str547.c = internal global %nyx_string* null
@.str548 = private unnamed_addr constant [5 x i8] c"ENUM\00"
@.str548.c = internal global %nyx_string* null
@.str549 = private unnamed_addr constant [6 x i8] c"MATCH\00"
@.str549.c = internal global %nyx_string* null
@.str550 = private unnamed_addr constant [3 x i8] c"IF\00"
@.str550.c = internal global %nyx_string* null
@.str551 = private unnamed_addr constant [6 x i8] c"WHILE\00"
@.str551.c = internal global %nyx_string* null
@.str552 = private unnamed_addr constant [4 x i8] c"FOR\00"
@.str552.c = internal global %nyx_string* null
@.str553 = private unnamed_addr constant [7 x i8] c"RETURN\00"
@.str553.c = internal global %nyx_string* null
@.str554 = private unnamed_addr constant [6 x i8] c"BREAK\00"
@.str554.c = internal global %nyx_string* null
@.str555 = private unnamed_addr constant [6 x i8] c"break\00"
@.str555.c = internal global %nyx_string* null
@.str556 = private unnamed_addr constant [9 x i8] c"CONTINUE\00"
@.str556.c = internal global %nyx_string* null
@.str557 = private unnamed_addr constant [9 x i8] c"continue\00"
@.str557.c = internal global %nyx_string* null
@.str558 = private unnamed_addr constant [7 x i8] c"EXPORT\00"
@.str558.c = internal global %nyx_string* null
@.str559 = private unnamed_addr constant [4 x i8] c"PUB\00"
@.str559.c = internal global %nyx_string* null
@.str560 = private unnamed_addr constant [7 x i8] c"IMPORT\00"
@.str560.c = internal global %nyx_string* null
@.str561 = private unnamed_addr constant [6 x i8] c"TRAIT\00"
@.str561.c = internal global %nyx_string* null
@.str562 = private unnamed_addr constant [5 x i8] c"IMPL\00"
@.str562.c = internal global %nyx_string* null
@.str563 = private unnamed_addr constant [5 x i8] c"TEST\00"
@.str563.c = internal global %nyx_string* null
@.str564 = private unnamed_addr constant [7 x i8] c"EXTERN\00"
@.str564.c = internal global %nyx_string* null
@.str565 = private unnamed_addr constant [7 x i8] c"UNSAFE\00"
@.str565.c = internal global %nyx_string* null
@.str566 = private unnamed_addr constant [13 x i8] c"unsafe_block\00"
@.str566.c = internal global %nyx_string* null
@.str567 = private unnamed_addr constant [7 x i8] c"STATIC\00"
@.str567.c = internal global %nyx_string* null
@.str568 = private unnamed_addr constant [7 x i8] c"MODULE\00"
@.str568.c = internal global %nyx_string* null
@.str569 = private unnamed_addr constant [6 x i8] c"DEFER\00"
@.str569.c = internal global %nyx_string* null
@.str570 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str570.c = internal global %nyx_string* null
@.str571 = private unnamed_addr constant [6 x i8] c"defer\00"
@.str571.c = internal global %nyx_string* null
@.str572 = private unnamed_addr constant [6 x i8] c"block\00"
@.str572.c = internal global %nyx_string* null
@.str573 = private unnamed_addr constant [6 x i8] c"defer\00"
@.str573.c = internal global %nyx_string* null
@.str574 = private unnamed_addr constant [4 x i8] c"TRY\00"
@.str574.c = internal global %nyx_string* null
@.str575 = private unnamed_addr constant [6 x i8] c"THROW\00"
@.str575.c = internal global %nyx_string* null
@.str576 = private unnamed_addr constant [6 x i8] c"ASYNC\00"
@.str576.c = internal global %nyx_string* null
@.str577 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str577.c = internal global %nyx_string* null
@.str578 = private unnamed_addr constant [5 x i8] c"type\00"
@.str578.c = internal global %nyx_string* null
@.str579 = private unnamed_addr constant [6 x i8] c"macro\00"
@.str579.c = internal global %nyx_string* null
@.str580 = private unnamed_addr constant [6 x i8] c"bench\00"
@.str580.c = internal global %nyx_string* null
@.str581 = private unnamed_addr constant [6 x i8] c"spawn\00"
@.str581.c = internal global %nyx_string* null
@.str582 = private unnamed_addr constant [7 x i8] c"select\00"
@.str582.c = internal global %nyx_string* null
@.str583 = private unnamed_addr constant [5 x i8] c"safe\00"
@.str583.c = internal global %nyx_string* null
@.str584 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str584.c = internal global %nyx_string* null
@.str585 = private unnamed_addr constant [9 x i8] c"function\00"
@.str585.c = internal global %nyx_string* null
@.str586 = private unnamed_addr constant [5 x i8] c"safe\00"
@.str586.c = internal global %nyx_string* null
@.str587 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str587.c = internal global %nyx_string* null
@.str588 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str588.c = internal global %nyx_string* null
@.str589 = private unnamed_addr constant [13 x i8] c"deref_assign\00"
@.str589.c = internal global %nyx_string* null
@.str590 = private unnamed_addr constant [6 x i8] c"deref\00"
@.str590.c = internal global %nyx_string* null
@.str591 = private unnamed_addr constant [9 x i8] c"__spawn_\00"
@.str591.c = internal global %nyx_string* null
@.str592 = private unnamed_addr constant [7 x i8] c"return\00"
@.str592.c = internal global %nyx_string* null
@.str593 = private unnamed_addr constant [8 x i8] c"integer\00"
@.str593.c = internal global %nyx_string* null
@.str594 = private unnamed_addr constant [9 x i8] c"function\00"
@.str594.c = internal global %nyx_string* null
@.str595 = private unnamed_addr constant [4 x i8] c"int\00"
@.str595.c = internal global %nyx_string* null
@.str596 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str596.c = internal global %nyx_string* null
@.str597 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str597.c = internal global %nyx_string* null
@.str598 = private unnamed_addr constant [11 x i8] c"__go_spawn\00"
@.str598.c = internal global %nyx_string* null
@.str599 = private unnamed_addr constant [5 x i8] c"call\00"
@.str599.c = internal global %nyx_string* null
@.str600 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str600.c = internal global %nyx_string* null
@.str601 = private unnamed_addr constant [6 x i8] c"block\00"
@.str601.c = internal global %nyx_string* null
@.str602 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str602.c = internal global %nyx_string* null
@.str603 = private unnamed_addr constant [8 x i8] c"default\00"
@.str603.c = internal global %nyx_string* null
@.str604 = private unnamed_addr constant [12 x i8] c"ARROW_MATCH\00"
@.str604.c = internal global %nyx_string* null
@.str605 = private unnamed_addr constant [5 x i8] c"case\00"
@.str605.c = internal global %nyx_string* null
@.str606 = private unnamed_addr constant [1 x i8] c"\00"
@.str606.c = internal global %nyx_string* null
@.str607 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str607.c = internal global %nyx_string* null
@.str608 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str608.c = internal global %nyx_string* null
@.str609 = private unnamed_addr constant [12 x i8] c"ARROW_MATCH\00"
@.str609.c = internal global %nyx_string* null
@.str610 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str610.c = internal global %nyx_string* null
@.str611 = private unnamed_addr constant [12 x i8] c"select_stmt\00"
@.str611.c = internal global %nyx_string* null
@.str612 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str612.c = internal global %nyx_string* null
@.str613 = private unnamed_addr constant [7 x i8] c"100000\00"
@.str613.c = internal global %nyx_string* null
@.str614 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str614.c = internal global %nyx_string* null
@.str615 = private unnamed_addr constant [11 x i8] c"bench_decl\00"
@.str615.c = internal global %nyx_string* null
@.str616 = private unnamed_addr constant [5 x i8] c"TEST\00"
@.str616.c = internal global %nyx_string* null
@.str617 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str617.c = internal global %nyx_string* null
@.str618 = private unnamed_addr constant [10 x i8] c"test_decl\00"
@.str618.c = internal global %nyx_string* null
@.str619 = private unnamed_addr constant [7 x i8] c"STATIC\00"
@.str619.c = internal global %nyx_string* null
@.str620 = private unnamed_addr constant [4 x i8] c"VAR\00"
@.str620.c = internal global %nyx_string* null
@.str621 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str621.c = internal global %nyx_string* null
@.str622 = private unnamed_addr constant [4 x i8] c"int\00"
@.str622.c = internal global %nyx_string* null
@.str623 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str623.c = internal global %nyx_string* null
@.str624 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str624.c = internal global %nyx_string* null
@.str625 = private unnamed_addr constant [11 x i8] c"static_var\00"
@.str625.c = internal global %nyx_string* null
@.str626 = private unnamed_addr constant [7 x i8] c"EXTERN\00"
@.str626.c = internal global %nyx_string* null
@.str627 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str627.c = internal global %nyx_string* null
@.str628 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str628.c = internal global %nyx_string* null
@.str629 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str629.c = internal global %nyx_string* null
@.str630 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str630.c = internal global %nyx_string* null
@.str631 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str631.c = internal global %nyx_string* null
@.str632 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str632.c = internal global %nyx_string* null
@.str633 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str633.c = internal global %nyx_string* null
@.str634 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str634.c = internal global %nyx_string* null
@.str635 = private unnamed_addr constant [5 x i8] c"void\00"
@.str635.c = internal global %nyx_string* null
@.str636 = private unnamed_addr constant [6 x i8] c"ARROW\00"
@.str636.c = internal global %nyx_string* null
@.str637 = private unnamed_addr constant [10 x i8] c"extern_fn\00"
@.str637.c = internal global %nyx_string* null
@.str638 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str638.c = internal global %nyx_string* null
@.str639 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str639.c = internal global %nyx_string* null
@.str640 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str640.c = internal global %nyx_string* null
@.str641 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str641.c = internal global %nyx_string* null
@.str642 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str642.c = internal global %nyx_string* null
@.str643 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str643.c = internal global %nyx_string* null
@.str644 = private unnamed_addr constant [12 x i8] c"ARROW_MATCH\00"
@.str644.c = internal global %nyx_string* null
@.str645 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str645.c = internal global %nyx_string* null
@.str646 = private unnamed_addr constant [1 x i8] c"\00"
@.str646.c = internal global %nyx_string* null
@.str647 = private unnamed_addr constant [2 x i8] c",\00"
@.str647.c = internal global %nyx_string* null
@.str648 = private unnamed_addr constant [10 x i8] c"macro_def\00"
@.str648.c = internal global %nyx_string* null
@.str649 = private unnamed_addr constant [4 x i8] c"NOT\00"
@.str649.c = internal global %nyx_string* null
@.str650 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str650.c = internal global %nyx_string* null
@.str651 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str651.c = internal global %nyx_string* null
@.str652 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str652.c = internal global %nyx_string* null
@.str653 = private unnamed_addr constant [1 x i8] c"\00"
@.str653.c = internal global %nyx_string* null
@.str654 = private unnamed_addr constant [2 x i8] c",\00"
@.str654.c = internal global %nyx_string* null
@.str655 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str655.c = internal global %nyx_string* null
@.str656 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str656.c = internal global %nyx_string* null
@.str657 = private unnamed_addr constant [5 x i8] c"PIPE\00"
@.str657.c = internal global %nyx_string* null
@.str658 = private unnamed_addr constant [5 x i8] c"PIPE\00"
@.str658.c = internal global %nyx_string* null
@.str659 = private unnamed_addr constant [9 x i8] c"enum_def\00"
@.str659.c = internal global %nyx_string* null
@.str660 = private unnamed_addr constant [11 x i8] c"type_alias\00"
@.str660.c = internal global %nyx_string* null
@.str661 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str661.c = internal global %nyx_string* null
@.str662 = private unnamed_addr constant [2 x i8] c"(\00"
@.str662.c = internal global %nyx_string* null
@.str663 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str663.c = internal global %nyx_string* null
@.str664 = private unnamed_addr constant [2 x i8] c",\00"
@.str664.c = internal global %nyx_string* null
@.str665 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str665.c = internal global %nyx_string* null
@.str666 = private unnamed_addr constant [2 x i8] c")\00"
@.str666.c = internal global %nyx_string* null
@.str667 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str667.c = internal global %nyx_string* null
@.str668 = private unnamed_addr constant [3 x i8] c"Fn\00"
@.str668.c = internal global %nyx_string* null
@.str669 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str669.c = internal global %nyx_string* null
@.str670 = private unnamed_addr constant [2 x i8] c"*\00"
@.str670.c = internal global %nyx_string* null
@.str671 = private unnamed_addr constant [4 x i8] c"AMP\00"
@.str671.c = internal global %nyx_string* null
@.str672 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str672.c = internal global %nyx_string* null
@.str673 = private unnamed_addr constant [1 x i8] c"'"
@.str674 = private unnamed_addr constant [4 x i8] c"mut\00"
@.str674.c = internal global %nyx_string* null
@.str675 = private unnamed_addr constant [6 x i8] c"&mut \00"
@.str675.c = internal global %nyx_string* null
@.str676 = private unnamed_addr constant [2 x i8] c"&\00"
@.str676.c = internal global %nyx_string* null
@.str677 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str677.c = internal global %nyx_string* null
@.str678 = private unnamed_addr constant [13 x i8] c"LEFT_BRACKET\00"
@.str678.c = internal global %nyx_string* null
@.str679 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str679.c = internal global %nyx_string* null
@.str680 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str680.c = internal global %nyx_string* null
@.str681 = private unnamed_addr constant [14 x i8] c"RIGHT_BRACKET\00"
@.str681.c = internal global %nyx_string* null
@.str682 = private unnamed_addr constant [2 x i8] c"[\00"
@.str682.c = internal global %nyx_string* null
@.str683 = private unnamed_addr constant [2 x i8] c":\00"
@.str683.c = internal global %nyx_string* null
@.str684 = private unnamed_addr constant [2 x i8] c"]\00"
@.str684.c = internal global %nyx_string* null
@.str685 = private unnamed_addr constant [4 x i8] c"DYN\00"
@.str685.c = internal global %nyx_string* null
@.str686 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str686.c = internal global %nyx_string* null
@.str687 = private unnamed_addr constant [5 x i8] c"dyn \00"
@.str687.c = internal global %nyx_string* null
@.str688 = private unnamed_addr constant [5 x i8] c"IMPL\00"
@.str688.c = internal global %nyx_string* null
@.str689 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str689.c = internal global %nyx_string* null
@.str690 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str690.c = internal global %nyx_string* null
@.str691 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str691.c = internal global %nyx_string* null
@.str692 = private unnamed_addr constant [2 x i8] c"+\00"
@.str692.c = internal global %nyx_string* null
@.str693 = private unnamed_addr constant [5 x i8] c"dyn \00"
@.str693.c = internal global %nyx_string* null
@.str694 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str694.c = internal global %nyx_string* null
@.str695 = private unnamed_addr constant [5 x i8] c"Self\00"
@.str695.c = internal global %nyx_string* null
@.str696 = private unnamed_addr constant [4 x i8] c"DOT\00"
@.str696.c = internal global %nyx_string* null
@.str697 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str697.c = internal global %nyx_string* null
@.str698 = private unnamed_addr constant [6 x i8] c"Self.\00"
@.str698.c = internal global %nyx_string* null
@.str699 = private unnamed_addr constant [3 x i8] c"Fn\00"
@.str699.c = internal global %nyx_string* null
@.str700 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str700.c = internal global %nyx_string* null
@.str701 = private unnamed_addr constant [4 x i8] c"Fn(\00"
@.str701.c = internal global %nyx_string* null
@.str702 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str702.c = internal global %nyx_string* null
@.str703 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str703.c = internal global %nyx_string* null
@.str704 = private unnamed_addr constant [2 x i8] c",\00"
@.str704.c = internal global %nyx_string* null
@.str705 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str705.c = internal global %nyx_string* null
@.str706 = private unnamed_addr constant [2 x i8] c")\00"
@.str706.c = internal global %nyx_string* null
@.str707 = private unnamed_addr constant [6 x i8] c"ARROW\00"
@.str707.c = internal global %nyx_string* null
@.str708 = private unnamed_addr constant [3 x i8] c"->\00"
@.str708.c = internal global %nyx_string* null
@.str709 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str709.c = internal global %nyx_string* null
@.str710 = private unnamed_addr constant [2 x i8] c"<\00"
@.str710.c = internal global %nyx_string* null
@.str711 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str711.c = internal global %nyx_string* null
@.str712 = private unnamed_addr constant [2 x i8] c",\00"
@.str712.c = internal global %nyx_string* null
@.str713 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str713.c = internal global %nyx_string* null
@.str714 = private unnamed_addr constant [12 x i8] c"SHIFT_RIGHT\00"
@.str714.c = internal global %nyx_string* null
@.str715 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str715.c = internal global %nyx_string* null
@.str716 = private unnamed_addr constant [2 x i8] c">\00"
@.str716.c = internal global %nyx_string* null
@.str717 = private unnamed_addr constant [4 x i8] c"VAR\00"
@.str717.c = internal global %nyx_string* null
@.str718 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str718.c = internal global %nyx_string* null
@.str719 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str719.c = internal global %nyx_string* null
@.str720 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str720.c = internal global %nyx_string* null
@.str721 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str721.c = internal global %nyx_string* null
@.str722 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str722.c = internal global %nyx_string* null
@.str723 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str723.c = internal global %nyx_string* null
@.str724 = private unnamed_addr constant [22 x i8] c"let_destructure_tuple\00"
@.str724.c = internal global %nyx_string* null
@.str725 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str725.c = internal global %nyx_string* null
@.str726 = private unnamed_addr constant [1 x i8] c"\00"
@.str726.c = internal global %nyx_string* null
@.str727 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str727.c = internal global %nyx_string* null
@.str728 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str728.c = internal global %nyx_string* null
@.str729 = private unnamed_addr constant [4 x i8] c"let\00"
@.str729.c = internal global %nyx_string* null
@.str730 = private unnamed_addr constant [6 x i8] c"CONST\00"
@.str730.c = internal global %nyx_string* null
@.str731 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str731.c = internal global %nyx_string* null
@.str732 = private unnamed_addr constant [1 x i8] c"\00"
@.str732.c = internal global %nyx_string* null
@.str733 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str733.c = internal global %nyx_string* null
@.str734 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str734.c = internal global %nyx_string* null
@.str735 = private unnamed_addr constant [6 x i8] c"const\00"
@.str735.c = internal global %nyx_string* null
@.str736 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str736.c = internal global %nyx_string* null
@.str737 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str737.c = internal global %nyx_string* null
@.str738 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str738.c = internal global %nyx_string* null
@.str739 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str739.c = internal global %nyx_string* null
@.str740 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str740.c = internal global %nyx_string* null
@.str741 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str741.c = internal global %nyx_string* null
@.str742 = private unnamed_addr constant [1 x i8] c"\00"
@.str742.c = internal global %nyx_string* null
@.str743 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str743.c = internal global %nyx_string* null
@.str744 = private unnamed_addr constant [1 x i8] c"\00"
@.str744.c = internal global %nyx_string* null
@.str745 = private unnamed_addr constant [6 x i8] c"ARROW\00"
@.str745.c = internal global %nyx_string* null
@.str746 = private unnamed_addr constant [9 x i8] c"async_fn\00"
@.str746.c = internal global %nyx_string* null
@.str747 = private unnamed_addr constant [1 x i8] c"\00"
@.str747.c = internal global %nyx_string* null
@.str748 = private unnamed_addr constant [13 x i8] c"__declline__\00"
@.str748.c = internal global %nyx_string* null
@.str749 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str749.c = internal global %nyx_string* null
@.str750 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str750.c = internal global %nyx_string* null
@.str751 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str751.c = internal global %nyx_string* null
@.str752 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str752.c = internal global %nyx_string* null
@.str753 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str753.c = internal global %nyx_string* null
@.str754 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str754.c = internal global %nyx_string* null
@.str755 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str755.c = internal global %nyx_string* null
@.str756 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str756.c = internal global %nyx_string* null
@.str757 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str757.c = internal global %nyx_string* null
@.str758 = private unnamed_addr constant [2 x i8] c"+\00"
@.str758.c = internal global %nyx_string* null
@.str759 = private unnamed_addr constant [2 x i8] c":\00"
@.str759.c = internal global %nyx_string* null
@.str760 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str760.c = internal global %nyx_string* null
@.str761 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str761.c = internal global %nyx_string* null
@.str762 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str762.c = internal global %nyx_string* null
@.str763 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str763.c = internal global %nyx_string* null
@.str764 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str764.c = internal global %nyx_string* null
@.str765 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str765.c = internal global %nyx_string* null
@.str766 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str766.c = internal global %nyx_string* null
@.str767 = private unnamed_addr constant [2 x i8] c"+\00"
@.str767.c = internal global %nyx_string* null
@.str768 = private unnamed_addr constant [2 x i8] c":\00"
@.str768.c = internal global %nyx_string* null
@.str769 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str769.c = internal global %nyx_string* null
@.str770 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str770.c = internal global %nyx_string* null
@.str771 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str771.c = internal global %nyx_string* null
@.str772 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str772.c = internal global %nyx_string* null
@.str773 = private unnamed_addr constant [9 x i8] c"ELLIPSIS\00"
@.str773.c = internal global %nyx_string* null
@.str774 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str774.c = internal global %nyx_string* null
@.str775 = private unnamed_addr constant [10 x i8] c"...String\00"
@.str775.c = internal global %nyx_string* null
@.str776 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str776.c = internal global %nyx_string* null
@.str777 = private unnamed_addr constant [4 x i8] c"...\00"
@.str777.c = internal global %nyx_string* null
@.str778 = private unnamed_addr constant [1 x i8] c"\00"
@.str778.c = internal global %nyx_string* null
@.str779 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str779.c = internal global %nyx_string* null
@.str780 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str780.c = internal global %nyx_string* null
@.str781 = private unnamed_addr constant [4 x i8] c"AMP\00"
@.str781.c = internal global %nyx_string* null
@.str782 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str782.c = internal global %nyx_string* null
@.str783 = private unnamed_addr constant [2 x i8] c"&\00"
@.str783.c = internal global %nyx_string* null
@.str784 = private unnamed_addr constant [4 x i8] c"mut\00"
@.str784.c = internal global %nyx_string* null
@.str785 = private unnamed_addr constant [5 x i8] c"&mut\00"
@.str785.c = internal global %nyx_string* null
@.str786 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str786.c = internal global %nyx_string* null
@.str787 = private unnamed_addr constant [1 x i8] c"\00"
@.str787.c = internal global %nyx_string* null
@.str788 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str788.c = internal global %nyx_string* null
@.str789 = private unnamed_addr constant [1 x i8] c"\00"
@.str789.c = internal global %nyx_string* null
@.str790 = private unnamed_addr constant [1 x i8] c"\00"
@.str790.c = internal global %nyx_string* null
@.str791 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str791.c = internal global %nyx_string* null
@.str792 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str792.c = internal global %nyx_string* null
@.str793 = private unnamed_addr constant [1 x i8] c"\00"
@.str793.c = internal global %nyx_string* null
@.str794 = private unnamed_addr constant [1 x i8] c"\00"
@.str794.c = internal global %nyx_string* null
@.str795 = private unnamed_addr constant [6 x i8] c"ARROW\00"
@.str795.c = internal global %nyx_string* null
@.str796 = private unnamed_addr constant [6 x i8] c"WHERE\00"
@.str796.c = internal global %nyx_string* null
@.str797 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str797.c = internal global %nyx_string* null
@.str798 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str798.c = internal global %nyx_string* null
@.str799 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str799.c = internal global %nyx_string* null
@.str800 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str800.c = internal global %nyx_string* null
@.str801 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str801.c = internal global %nyx_string* null
@.str802 = private unnamed_addr constant [2 x i8] c"+\00"
@.str802.c = internal global %nyx_string* null
@.str803 = private unnamed_addr constant [1 x i8] c":"
@.str804 = private unnamed_addr constant [2 x i8] c"+\00"
@.str804.c = internal global %nyx_string* null
@.str805 = private unnamed_addr constant [2 x i8] c":\00"
@.str805.c = internal global %nyx_string* null
@.str806 = private unnamed_addr constant [2 x i8] c":\00"
@.str806.c = internal global %nyx_string* null
@.str807 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str807.c = internal global %nyx_string* null
@.str808 = private unnamed_addr constant [10 x i8] c"_consumed\00"
@.str808.c = internal global %nyx_string* null
@.str809 = private unnamed_addr constant [10 x i8] c"_consumed\00"
@.str809.c = internal global %nyx_string* null
@.str810 = private unnamed_addr constant [9 x i8] c"function\00"
@.str810.c = internal global %nyx_string* null
@.str811 = private unnamed_addr constant [6 x i8] c"block\00"
@.str811.c = internal global %nyx_string* null
@.str812 = private unnamed_addr constant [1 x i8] c"\00"
@.str812.c = internal global %nyx_string* null
@.str813 = private unnamed_addr constant [10 x i8] c"__retlt__\00"
@.str813.c = internal global %nyx_string* null
@.str814 = private unnamed_addr constant [12 x i8] c"__paramlt__\00"
@.str814.c = internal global %nyx_string* null
@.str815 = private unnamed_addr constant [13 x i8] c"__declline__\00"
@.str815.c = internal global %nyx_string* null
@.str816 = private unnamed_addr constant [9 x i8] c"function\00"
@.str816.c = internal global %nyx_string* null
@.str817 = private unnamed_addr constant [1 x i8] c"\00"
@.str817.c = internal global %nyx_string* null
@.str818 = private unnamed_addr constant [10 x i8] c"__retlt__\00"
@.str818.c = internal global %nyx_string* null
@.str819 = private unnamed_addr constant [12 x i8] c"__paramlt__\00"
@.str819.c = internal global %nyx_string* null
@.str820 = private unnamed_addr constant [13 x i8] c"__declline__\00"
@.str820.c = internal global %nyx_string* null
@.str821 = private unnamed_addr constant [7 x i8] c"STRUCT\00"
@.str821.c = internal global %nyx_string* null
@.str822 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str822.c = internal global %nyx_string* null
@.str823 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str823.c = internal global %nyx_string* null
@.str824 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str824.c = internal global %nyx_string* null
@.str825 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str825.c = internal global %nyx_string* null
@.str826 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str826.c = internal global %nyx_string* null
@.str827 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str827.c = internal global %nyx_string* null
@.str828 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str828.c = internal global %nyx_string* null
@.str829 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str829.c = internal global %nyx_string* null
@.str830 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str830.c = internal global %nyx_string* null
@.str831 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str831.c = internal global %nyx_string* null
@.str832 = private unnamed_addr constant [3 x i8] c"_0\00"
@.str832.c = internal global %nyx_string* null
@.str833 = private unnamed_addr constant [7 x i8] c"struct\00"
@.str833.c = internal global %nyx_string* null
@.str834 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str834.c = internal global %nyx_string* null
@.str835 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str835.c = internal global %nyx_string* null
@.str836 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str836.c = internal global %nyx_string* null
@.str837 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str837.c = internal global %nyx_string* null
@.str838 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str838.c = internal global %nyx_string* null
@.str839 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str839.c = internal global %nyx_string* null
@.str840 = private unnamed_addr constant [7 x i8] c"struct\00"
@.str840.c = internal global %nyx_string* null
@.str841 = private unnamed_addr constant [3 x i8] c"IF\00"
@.str841.c = internal global %nyx_string* null
@.str842 = private unnamed_addr constant [4 x i8] c"LET\00"
@.str842.c = internal global %nyx_string* null
@.str843 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str843.c = internal global %nyx_string* null
@.str844 = private unnamed_addr constant [5 x i8] c"ELSE\00"
@.str844.c = internal global %nyx_string* null
@.str845 = private unnamed_addr constant [3 x i8] c"IF\00"
@.str845.c = internal global %nyx_string* null
@.str846 = private unnamed_addr constant [3 x i8] c"if\00"
@.str846.c = internal global %nyx_string* null
@.str847 = private unnamed_addr constant [4 x i8] c"LET\00"
@.str847.c = internal global %nyx_string* null
@.str848 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str848.c = internal global %nyx_string* null
@.str849 = private unnamed_addr constant [6 x i8] c"block\00"
@.str849.c = internal global %nyx_string* null
@.str850 = private unnamed_addr constant [5 x i8] c"ELSE\00"
@.str850.c = internal global %nyx_string* null
@.str851 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str851.c = internal global %nyx_string* null
@.str852 = private unnamed_addr constant [10 x i8] c"match_arm\00"
@.str852.c = internal global %nyx_string* null
@.str853 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str853.c = internal global %nyx_string* null
@.str854 = private unnamed_addr constant [9 x i8] c"wildcard\00"
@.str854.c = internal global %nyx_string* null
@.str855 = private unnamed_addr constant [10 x i8] c"match_arm\00"
@.str855.c = internal global %nyx_string* null
@.str856 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str856.c = internal global %nyx_string* null
@.str857 = private unnamed_addr constant [6 x i8] c"match\00"
@.str857.c = internal global %nyx_string* null
@.str858 = private unnamed_addr constant [6 x i8] c"WHILE\00"
@.str858.c = internal global %nyx_string* null
@.str859 = private unnamed_addr constant [4 x i8] c"LET\00"
@.str859.c = internal global %nyx_string* null
@.str860 = private unnamed_addr constant [6 x i8] c"while\00"
@.str860.c = internal global %nyx_string* null
@.str861 = private unnamed_addr constant [4 x i8] c"LET\00"
@.str861.c = internal global %nyx_string* null
@.str862 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str862.c = internal global %nyx_string* null
@.str863 = private unnamed_addr constant [10 x i8] c"while_let\00"
@.str863.c = internal global %nyx_string* null
@.str864 = private unnamed_addr constant [4 x i8] c"FOR\00"
@.str864.c = internal global %nyx_string* null
@.str865 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str865.c = internal global %nyx_string* null
@.str866 = private unnamed_addr constant [1 x i8] c"\00"
@.str866.c = internal global %nyx_string* null
@.str867 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str867.c = internal global %nyx_string* null
@.str868 = private unnamed_addr constant [3 x i8] c"IN\00"
@.str868.c = internal global %nyx_string* null
@.str869 = private unnamed_addr constant [4 x i8] c"for\00"
@.str869.c = internal global %nyx_string* null
@.str870 = private unnamed_addr constant [7 x i8] c"RETURN\00"
@.str870.c = internal global %nyx_string* null
@.str871 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str871.c = internal global %nyx_string* null
@.str872 = private unnamed_addr constant [4 x i8] c"EOF\00"
@.str872.c = internal global %nyx_string* null
@.str873 = private unnamed_addr constant [4 x i8] c"LET\00"
@.str873.c = internal global %nyx_string* null
@.str874 = private unnamed_addr constant [4 x i8] c"VAR\00"
@.str874.c = internal global %nyx_string* null
@.str875 = private unnamed_addr constant [6 x i8] c"WHILE\00"
@.str875.c = internal global %nyx_string* null
@.str876 = private unnamed_addr constant [4 x i8] c"FOR\00"
@.str876.c = internal global %nyx_string* null
@.str877 = private unnamed_addr constant [7 x i8] c"RETURN\00"
@.str877.c = internal global %nyx_string* null
@.str878 = private unnamed_addr constant [8 x i8] c"integer\00"
@.str878.c = internal global %nyx_string* null
@.str879 = private unnamed_addr constant [7 x i8] c"return\00"
@.str879.c = internal global %nyx_string* null
@.str880 = private unnamed_addr constant [7 x i8] c"return\00"
@.str880.c = internal global %nyx_string* null
@.str881 = private unnamed_addr constant [7 x i8] c"EXPORT\00"
@.str881.c = internal global %nyx_string* null
@.str882 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str882.c = internal global %nyx_string* null
@.str883 = private unnamed_addr constant [7 x i8] c"export\00"
@.str883.c = internal global %nyx_string* null
@.str884 = private unnamed_addr constant [6 x i8] c"ASYNC\00"
@.str884.c = internal global %nyx_string* null
@.str885 = private unnamed_addr constant [7 x i8] c"export\00"
@.str885.c = internal global %nyx_string* null
@.str886 = private unnamed_addr constant [7 x i8] c"STRUCT\00"
@.str886.c = internal global %nyx_string* null
@.str887 = private unnamed_addr constant [7 x i8] c"export\00"
@.str887.c = internal global %nyx_string* null
@.str888 = private unnamed_addr constant [5 x i8] c"ENUM\00"
@.str888.c = internal global %nyx_string* null
@.str889 = private unnamed_addr constant [7 x i8] c"export\00"
@.str889.c = internal global %nyx_string* null
@.str890 = private unnamed_addr constant [6 x i8] c"TRAIT\00"
@.str890.c = internal global %nyx_string* null
@.str891 = private unnamed_addr constant [7 x i8] c"export\00"
@.str891.c = internal global %nyx_string* null
@.str892 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str892.c = internal global %nyx_string* null
@.str893 = private unnamed_addr constant [5 x i8] c"type\00"
@.str893.c = internal global %nyx_string* null
@.str894 = private unnamed_addr constant [7 x i8] c"export\00"
@.str894.c = internal global %nyx_string* null
@.str895 = private unnamed_addr constant [8 x i8] c"NYX0105\00"
@.str895.c = internal global %nyx_string* null
@.str896 = private unnamed_addr constant [58 x i8] c"export solo puede preceder fn, struct, enum, trait o type\00"
@.str896.c = internal global %nyx_string* null
@.str897 = private unnamed_addr constant [56 x i8] c"export can only precede fn, struct, enum, trait or type\00"
@.str897.c = internal global %nyx_string* null
@.str898 = private unnamed_addr constant [6 x i8] c"error\00"
@.str898.c = internal global %nyx_string* null
@.str899 = private unnamed_addr constant [7 x i8] c"IMPORT\00"
@.str899.c = internal global %nyx_string* null
@.str900 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str900.c = internal global %nyx_string* null
@.str901 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str901.c = internal global %nyx_string* null
@.str902 = private unnamed_addr constant [1 x i8] c"\00"
@.str902.c = internal global %nyx_string* null
@.str903 = private unnamed_addr constant [3 x i8] c"AS\00"
@.str903.c = internal global %nyx_string* null
@.str904 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str904.c = internal global %nyx_string* null
@.str905 = private unnamed_addr constant [14 x i8] c"import_module\00"
@.str905.c = internal global %nyx_string* null
@.str906 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str906.c = internal global %nyx_string* null
@.str907 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str907.c = internal global %nyx_string* null
@.str908 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str908.c = internal global %nyx_string* null
@.str909 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str909.c = internal global %nyx_string* null
@.str910 = private unnamed_addr constant [5 x i8] c"FROM\00"
@.str910.c = internal global %nyx_string* null
@.str911 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str911.c = internal global %nyx_string* null
@.str912 = private unnamed_addr constant [7 x i8] c"import\00"
@.str912.c = internal global %nyx_string* null
@.str913 = private unnamed_addr constant [4 x i8] c"PUB\00"
@.str913.c = internal global %nyx_string* null
@.str914 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str914.c = internal global %nyx_string* null
@.str915 = private unnamed_addr constant [7 x i8] c"export\00"
@.str915.c = internal global %nyx_string* null
@.str916 = private unnamed_addr constant [6 x i8] c"ASYNC\00"
@.str916.c = internal global %nyx_string* null
@.str917 = private unnamed_addr constant [7 x i8] c"export\00"
@.str917.c = internal global %nyx_string* null
@.str918 = private unnamed_addr constant [7 x i8] c"STRUCT\00"
@.str918.c = internal global %nyx_string* null
@.str919 = private unnamed_addr constant [7 x i8] c"export\00"
@.str919.c = internal global %nyx_string* null
@.str920 = private unnamed_addr constant [5 x i8] c"ENUM\00"
@.str920.c = internal global %nyx_string* null
@.str921 = private unnamed_addr constant [7 x i8] c"export\00"
@.str921.c = internal global %nyx_string* null
@.str922 = private unnamed_addr constant [6 x i8] c"TRAIT\00"
@.str922.c = internal global %nyx_string* null
@.str923 = private unnamed_addr constant [7 x i8] c"export\00"
@.str923.c = internal global %nyx_string* null
@.str924 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str924.c = internal global %nyx_string* null
@.str925 = private unnamed_addr constant [5 x i8] c"type\00"
@.str925.c = internal global %nyx_string* null
@.str926 = private unnamed_addr constant [7 x i8] c"export\00"
@.str926.c = internal global %nyx_string* null
@.str927 = private unnamed_addr constant [8 x i8] c"NYX0105\00"
@.str927.c = internal global %nyx_string* null
@.str928 = private unnamed_addr constant [55 x i8] c"pub solo puede preceder fn, struct, enum, trait o type\00"
@.str928.c = internal global %nyx_string* null
@.str929 = private unnamed_addr constant [53 x i8] c"pub can only precede fn, struct, enum, trait or type\00"
@.str929.c = internal global %nyx_string* null
@.str930 = private unnamed_addr constant [6 x i8] c"error\00"
@.str930.c = internal global %nyx_string* null
@.str931 = private unnamed_addr constant [7 x i8] c"MODULE\00"
@.str931.c = internal global %nyx_string* null
@.str932 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str932.c = internal global %nyx_string* null
@.str933 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str933.c = internal global %nyx_string* null
@.str934 = private unnamed_addr constant [1 x i8] c"\00"
@.str934.c = internal global %nyx_string* null
@.str935 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str935.c = internal global %nyx_string* null
@.str936 = private unnamed_addr constant [13 x i8] c"LEFT_BRACKET\00"
@.str936.c = internal global %nyx_string* null
@.str937 = private unnamed_addr constant [14 x i8] c"RIGHT_BRACKET\00"
@.str937.c = internal global %nyx_string* null
@.str938 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str938.c = internal global %nyx_string* null
@.str939 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str939.c = internal global %nyx_string* null
@.str940 = private unnamed_addr constant [14 x i8] c"RIGHT_BRACKET\00"
@.str940.c = internal global %nyx_string* null
@.str941 = private unnamed_addr constant [12 x i8] c"module_decl\00"
@.str941.c = internal global %nyx_string* null
@.str942 = private unnamed_addr constant [6 x i8] c"TRAIT\00"
@.str942.c = internal global %nyx_string* null
@.str943 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str943.c = internal global %nyx_string* null
@.str944 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str944.c = internal global %nyx_string* null
@.str945 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str945.c = internal global %nyx_string* null
@.str946 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str946.c = internal global %nyx_string* null
@.str947 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str947.c = internal global %nyx_string* null
@.str948 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str948.c = internal global %nyx_string* null
@.str949 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str949.c = internal global %nyx_string* null
@.str950 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str950.c = internal global %nyx_string* null
@.str951 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str951.c = internal global %nyx_string* null
@.str952 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str952.c = internal global %nyx_string* null
@.str953 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str953.c = internal global %nyx_string* null
@.str954 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str954.c = internal global %nyx_string* null
@.str955 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str955.c = internal global %nyx_string* null
@.str956 = private unnamed_addr constant [5 x i8] c"type\00"
@.str956.c = internal global %nyx_string* null
@.str957 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str957.c = internal global %nyx_string* null
@.str958 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str958.c = internal global %nyx_string* null
@.str959 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str959.c = internal global %nyx_string* null
@.str960 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str960.c = internal global %nyx_string* null
@.str961 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str961.c = internal global %nyx_string* null
@.str962 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str962.c = internal global %nyx_string* null
@.str963 = private unnamed_addr constant [15 x i8] c"__assoc_type__\00"
@.str963.c = internal global %nyx_string* null
@.str964 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str964.c = internal global %nyx_string* null
@.str965 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str965.c = internal global %nyx_string* null
@.str966 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str966.c = internal global %nyx_string* null
@.str967 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str967.c = internal global %nyx_string* null
@.str968 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str968.c = internal global %nyx_string* null
@.str969 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str969.c = internal global %nyx_string* null
@.str970 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str970.c = internal global %nyx_string* null
@.str971 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str971.c = internal global %nyx_string* null
@.str972 = private unnamed_addr constant [1 x i8] c"\00"
@.str972.c = internal global %nyx_string* null
@.str973 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str973.c = internal global %nyx_string* null
@.str974 = private unnamed_addr constant [1 x i8] c"\00"
@.str974.c = internal global %nyx_string* null
@.str975 = private unnamed_addr constant [6 x i8] c"ARROW\00"
@.str975.c = internal global %nyx_string* null
@.str976 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str976.c = internal global %nyx_string* null
@.str977 = private unnamed_addr constant [10 x i8] c"trait_def\00"
@.str977.c = internal global %nyx_string* null
@.str978 = private unnamed_addr constant [5 x i8] c"IMPL\00"
@.str978.c = internal global %nyx_string* null
@.str979 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str979.c = internal global %nyx_string* null
@.str980 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str980.c = internal global %nyx_string* null
@.str981 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str981.c = internal global %nyx_string* null
@.str982 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str982.c = internal global %nyx_string* null
@.str983 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str983.c = internal global %nyx_string* null
@.str984 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str984.c = internal global %nyx_string* null
@.str985 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str985.c = internal global %nyx_string* null
@.str986 = private unnamed_addr constant [2 x i8] c"+\00"
@.str986.c = internal global %nyx_string* null
@.str987 = private unnamed_addr constant [2 x i8] c":\00"
@.str987.c = internal global %nyx_string* null
@.str988 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str988.c = internal global %nyx_string* null
@.str989 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str989.c = internal global %nyx_string* null
@.str990 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str990.c = internal global %nyx_string* null
@.str991 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str991.c = internal global %nyx_string* null
@.str992 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str992.c = internal global %nyx_string* null
@.str993 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str993.c = internal global %nyx_string* null
@.str994 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str994.c = internal global %nyx_string* null
@.str995 = private unnamed_addr constant [2 x i8] c"+\00"
@.str995.c = internal global %nyx_string* null
@.str996 = private unnamed_addr constant [2 x i8] c":\00"
@.str996.c = internal global %nyx_string* null
@.str997 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str997.c = internal global %nyx_string* null
@.str998 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str998.c = internal global %nyx_string* null
@.str999 = private unnamed_addr constant [4 x i8] c"FOR\00"
@.str999.c = internal global %nyx_string* null
@.str1000 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str1000.c = internal global %nyx_string* null
@.str1001 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str1001.c = internal global %nyx_string* null
@.str1002 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str1002.c = internal global %nyx_string* null
@.str1003 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str1003.c = internal global %nyx_string* null
@.str1004 = private unnamed_addr constant [5 x i8] c"type\00"
@.str1004.c = internal global %nyx_string* null
@.str1005 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str1005.c = internal global %nyx_string* null
@.str1006 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str1006.c = internal global %nyx_string* null
@.str1007 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str1007.c = internal global %nyx_string* null
@.str1008 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str1008.c = internal global %nyx_string* null
@.str1009 = private unnamed_addr constant [11 x i8] c"impl_trait\00"
@.str1009.c = internal global %nyx_string* null
@.str1010 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str1010.c = internal global %nyx_string* null
@.str1011 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str1011.c = internal global %nyx_string* null
@.str1012 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str1012.c = internal global %nyx_string* null
@.str1013 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str1013.c = internal global %nyx_string* null
@.str1014 = private unnamed_addr constant [4 x i8] c"int\00"
@.str1014.c = internal global %nyx_string* null
@.str1015 = private unnamed_addr constant [6 x i8] c"float\00"
@.str1015.c = internal global %nyx_string* null
@.str1016 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str1016.c = internal global %nyx_string* null
@.str1017 = private unnamed_addr constant [7 x i8] c"String\00"
@.str1017.c = internal global %nyx_string* null
@.str1018 = private unnamed_addr constant [5 x i8] c"char\00"
@.str1018.c = internal global %nyx_string* null
@.str1019 = private unnamed_addr constant [3 x i8] c"i8\00"
@.str1019.c = internal global %nyx_string* null
@.str1020 = private unnamed_addr constant [4 x i8] c"i16\00"
@.str1020.c = internal global %nyx_string* null
@.str1021 = private unnamed_addr constant [4 x i8] c"i32\00"
@.str1021.c = internal global %nyx_string* null
@.str1022 = private unnamed_addr constant [3 x i8] c"u8\00"
@.str1022.c = internal global %nyx_string* null
@.str1023 = private unnamed_addr constant [4 x i8] c"u16\00"
@.str1023.c = internal global %nyx_string* null
@.str1024 = private unnamed_addr constant [4 x i8] c"u32\00"
@.str1024.c = internal global %nyx_string* null
@.str1025 = private unnamed_addr constant [4 x i8] c"u64\00"
@.str1025.c = internal global %nyx_string* null
@.str1026 = private unnamed_addr constant [6 x i8] c"usize\00"
@.str1026.c = internal global %nyx_string* null
@.str1027 = private unnamed_addr constant [4 x i8] c"f32\00"
@.str1027.c = internal global %nyx_string* null
@.str1028 = private unnamed_addr constant [6 x i8] c"Array\00"
@.str1028.c = internal global %nyx_string* null
@.str1029 = private unnamed_addr constant [4 x i8] c"Map\00"
@.str1029.c = internal global %nyx_string* null
@.str1030 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str1030.c = internal global %nyx_string* null
@.str1031 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str1031.c = internal global %nyx_string* null
@.str1032 = private unnamed_addr constant [5 x i8] c"impl\00"
@.str1032.c = internal global %nyx_string* null
@.str1033 = private unnamed_addr constant [6 x i8] c"CATCH\00"
@.str1033.c = internal global %nyx_string* null
@.str1034 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str1034.c = internal global %nyx_string* null
@.str1035 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str1035.c = internal global %nyx_string* null
@.str1036 = private unnamed_addr constant [1 x i8] c"\00"
@.str1036.c = internal global %nyx_string* null
@.str1037 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str1037.c = internal global %nyx_string* null
@.str1038 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str1038.c = internal global %nyx_string* null
@.str1039 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str1039.c = internal global %nyx_string* null
@.str1040 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str1040.c = internal global %nyx_string* null
@.str1041 = private unnamed_addr constant [10 x i8] c"try_catch\00"
@.str1041.c = internal global %nyx_string* null
@.str1042 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str1042.c = internal global %nyx_string* null
@.str1043 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str1043.c = internal global %nyx_string* null
@.str1044 = private unnamed_addr constant [6 x i8] c"throw\00"
@.str1044.c = internal global %nyx_string* null
@.str1045 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str1045.c = internal global %nyx_string* null
@.str1046 = private unnamed_addr constant [4 x i8] c"EOF\00"
@.str1046.c = internal global %nyx_string* null
@.str1047 = private unnamed_addr constant [8 x i8] c"NYX0104\00"
@.str1047.c = internal global %nyx_string* null
@.str1048 = private unnamed_addr constant [47 x i8] c"fin de archivo inesperado: falta '}' de cierre\00"
@.str1048.c = internal global %nyx_string* null
@.str1049 = private unnamed_addr constant [44 x i8] c"unexpected end of file: missing closing '}'\00"
@.str1049.c = internal global %nyx_string* null
@.str1050 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str1050.c = internal global %nyx_string* null
@.str1051 = private unnamed_addr constant [10 x i8] c"_consumed\00"
@.str1051.c = internal global %nyx_string* null
@.str1052 = private unnamed_addr constant [10 x i8] c"_consumed\00"
@.str1052.c = internal global %nyx_string* null
@.str1053 = private unnamed_addr constant [6 x i8] c"block\00"
@.str1053.c = internal global %nyx_string* null
@.str1054 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str1054.c = internal global %nyx_string* null
@.str1055 = private unnamed_addr constant [4 x i8] c"EOF\00"
@.str1055.c = internal global %nyx_string* null
@.str1056 = private unnamed_addr constant [8 x i8] c"NYX0104\00"
@.str1056.c = internal global %nyx_string* null
@.str1057 = private unnamed_addr constant [47 x i8] c"fin de archivo inesperado: falta '}' de cierre\00"
@.str1057.c = internal global %nyx_string* null
@.str1058 = private unnamed_addr constant [44 x i8] c"unexpected end of file: missing closing '}'\00"
@.str1058.c = internal global %nyx_string* null
@.str1059 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str1059.c = internal global %nyx_string* null
@.str1060 = private unnamed_addr constant [10 x i8] c"_consumed\00"
@.str1060.c = internal global %nyx_string* null
@.str1061 = private unnamed_addr constant [10 x i8] c"_consumed\00"
@.str1061.c = internal global %nyx_string* null
@.str1062 = private unnamed_addr constant [6 x i8] c"block\00"
@.str1062.c = internal global %nyx_string* null
@.str1063 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str1063.c = internal global %nyx_string* null
@.str1064 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str1064.c = internal global %nyx_string* null
@.str1065 = private unnamed_addr constant [7 x i8] c"assign\00"
@.str1065.c = internal global %nyx_string* null
@.str1066 = private unnamed_addr constant [1 x i8] c"\00"
@.str1066.c = internal global %nyx_string* null
@.str1067 = private unnamed_addr constant [12 x i8] c"PLUS_EQUALS\00"
@.str1067.c = internal global %nyx_string* null
@.str1068 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str1068.c = internal global %nyx_string* null
@.str1069 = private unnamed_addr constant [13 x i8] c"MINUS_EQUALS\00"
@.str1069.c = internal global %nyx_string* null
@.str1070 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str1070.c = internal global %nyx_string* null
@.str1071 = private unnamed_addr constant [12 x i8] c"STAR_EQUALS\00"
@.str1071.c = internal global %nyx_string* null
@.str1072 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str1072.c = internal global %nyx_string* null
@.str1073 = private unnamed_addr constant [13 x i8] c"SLASH_EQUALS\00"
@.str1073.c = internal global %nyx_string* null
@.str1074 = private unnamed_addr constant [6 x i8] c"SLASH\00"
@.str1074.c = internal global %nyx_string* null
@.str1075 = private unnamed_addr constant [15 x i8] c"PERCENT_EQUALS\00"
@.str1075.c = internal global %nyx_string* null
@.str1076 = private unnamed_addr constant [8 x i8] c"PERCENT\00"
@.str1076.c = internal global %nyx_string* null
@.str1077 = private unnamed_addr constant [11 x i8] c"AMP_EQUALS\00"
@.str1077.c = internal global %nyx_string* null
@.str1078 = private unnamed_addr constant [4 x i8] c"AMP\00"
@.str1078.c = internal global %nyx_string* null
@.str1079 = private unnamed_addr constant [12 x i8] c"PIPE_EQUALS\00"
@.str1079.c = internal global %nyx_string* null
@.str1080 = private unnamed_addr constant [5 x i8] c"PIPE\00"
@.str1080.c = internal global %nyx_string* null
@.str1081 = private unnamed_addr constant [13 x i8] c"CARET_EQUALS\00"
@.str1081.c = internal global %nyx_string* null
@.str1082 = private unnamed_addr constant [6 x i8] c"CARET\00"
@.str1082.c = internal global %nyx_string* null
@.str1083 = private unnamed_addr constant [18 x i8] c"SHIFT_LEFT_EQUALS\00"
@.str1083.c = internal global %nyx_string* null
@.str1084 = private unnamed_addr constant [11 x i8] c"SHIFT_LEFT\00"
@.str1084.c = internal global %nyx_string* null
@.str1085 = private unnamed_addr constant [19 x i8] c"SHIFT_RIGHT_EQUALS\00"
@.str1085.c = internal global %nyx_string* null
@.str1086 = private unnamed_addr constant [12 x i8] c"SHIFT_RIGHT\00"
@.str1086.c = internal global %nyx_string* null
@.str1087 = private unnamed_addr constant [1 x i8] c"\00"
@.str1087.c = internal global %nyx_string* null
@.str1088 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str1088.c = internal global %nyx_string* null
@.str1089 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str1089.c = internal global %nyx_string* null
@.str1090 = private unnamed_addr constant [7 x i8] c"assign\00"
@.str1090.c = internal global %nyx_string* null
@.str1091 = private unnamed_addr constant [6 x i8] c"deref\00"
@.str1091.c = internal global %nyx_string* null
@.str1092 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str1092.c = internal global %nyx_string* null
@.str1093 = private unnamed_addr constant [13 x i8] c"deref_assign\00"
@.str1093.c = internal global %nyx_string* null
@.str1094 = private unnamed_addr constant [6 x i8] c"index\00"
@.str1094.c = internal global %nyx_string* null
@.str1095 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str1095.c = internal global %nyx_string* null
@.str1096 = private unnamed_addr constant [13 x i8] c"index_assign\00"
@.str1096.c = internal global %nyx_string* null
@.str1097 = private unnamed_addr constant [13 x i8] c"field_access\00"
@.str1097.c = internal global %nyx_string* null
@.str1098 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str1098.c = internal global %nyx_string* null
@.str1099 = private unnamed_addr constant [13 x i8] c"field_assign\00"
@.str1099.c = internal global %nyx_string* null
@.str1100 = private unnamed_addr constant [4 x i8] c"EOF\00"
@.str1100.c = internal global %nyx_string* null
@.str1101 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str1101.c = internal global %nyx_string* null
@.str1102 = private unnamed_addr constant [4 x i8] c"LET\00"
@.str1102.c = internal global %nyx_string* null
@.str1103 = private unnamed_addr constant [4 x i8] c"VAR\00"
@.str1103.c = internal global %nyx_string* null
@.str1104 = private unnamed_addr constant [6 x i8] c"CONST\00"
@.str1104.c = internal global %nyx_string* null
@.str1105 = private unnamed_addr constant [7 x i8] c"STRUCT\00"
@.str1105.c = internal global %nyx_string* null
@.str1106 = private unnamed_addr constant [5 x i8] c"ENUM\00"
@.str1106.c = internal global %nyx_string* null
@.str1107 = private unnamed_addr constant [3 x i8] c"IF\00"
@.str1107.c = internal global %nyx_string* null
@.str1108 = private unnamed_addr constant [6 x i8] c"WHILE\00"
@.str1108.c = internal global %nyx_string* null
@.str1109 = private unnamed_addr constant [4 x i8] c"FOR\00"
@.str1109.c = internal global %nyx_string* null
@.str1110 = private unnamed_addr constant [7 x i8] c"RETURN\00"
@.str1110.c = internal global %nyx_string* null
@.str1111 = private unnamed_addr constant [7 x i8] c"IMPORT\00"
@.str1111.c = internal global %nyx_string* null
@.str1112 = private unnamed_addr constant [7 x i8] c"EXPORT\00"
@.str1112.c = internal global %nyx_string* null
@.str1113 = private unnamed_addr constant [6 x i8] c"TRAIT\00"
@.str1113.c = internal global %nyx_string* null
@.str1114 = private unnamed_addr constant [5 x i8] c"IMPL\00"
@.str1114.c = internal global %nyx_string* null
@.str1115 = private unnamed_addr constant [6 x i8] c"MATCH\00"
@.str1115.c = internal global %nyx_string* null
@.str1116 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str1116.c = internal global %nyx_string* null
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

@g_last_line = global i64 0
@g_last_col = global i64 0
@g_parse_error_count = global i64 0

define internal %nyx_string* @get_token_type(
%Token %tok.param) {
  %tok.ptr = alloca %Token
  store %Token %tok.param, %Token* %tok.ptr
  %1 = getelementptr %Token, %Token* %tok.ptr, i32 0, i32 0
  %2 = load %nyx_string*, %nyx_string** %1
  ret %nyx_string* %2
}

define internal %nyx_string* @get_token_value(
%Token %tok.param) {
  %tok.ptr = alloca %Token
  store %Token %tok.param, %Token* %tok.ptr
  %3 = getelementptr %Token, %Token* %tok.ptr, i32 0, i32 1
  %4 = load %nyx_string*, %nyx_string** %3
  ret %nyx_string* %4
}

define internal i64 @get_token_line(
%Token %tok.param) {
  %tok.ptr = alloca %Token
  store %Token %tok.param, %Token* %tok.ptr
  %5 = getelementptr %Token, %Token* %tok.ptr, i32 0, i32 2
  %6 = load i64, i64* %5
  ret i64 %6
}

define internal i64 @get_token_column(
%Token %tok.param) {
  %tok.ptr = alloca %Token
  store %Token %tok.param, %Token* %tok.ptr
  %7 = getelementptr %Token, %Token* %tok.ptr, i32 0, i32 3
  %8 = load i64, i64* %7
  ret i64 %8
}

define i64 @get_parse_error_count(
) {
  %9 = load i64, i64* @g_parse_error_count
  ret i64 %9
}

define internal { i64, i8* }* @make_astnode(
%nyx_string* %node_type.param, { i64, i8* }* %data.param) {
  %node_type.ptr = alloca %nyx_string*
  store %nyx_string* %node_type.param, %nyx_string** %node_type.ptr
  %data.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %data.param, { i64, i8* }** %data.ptr
  %10 = call { i64, i8* }* @nyx_array_new_ptr()
  %11 = alloca { i64, i8* }*
  store { i64, i8* }* %10, { i64, i8* }** %11
  %12 = load { i64, i8* }*, { i64, i8* }** %11
  %13 = load %nyx_string*, %nyx_string** %node_type.ptr
  %14 = ptrtoint %nyx_string* %13 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %12, i64 %14, i64 2)
  %15 = load { i64, i8* }*, { i64, i8* }** %11
  %16 = load { i64, i8* }*, { i64, i8* }** %data.ptr
  %17 = ptrtoint { i64, i8* }* %16 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %15, i64 %17, i64 5)
  %18 = load { i64, i8* }*, { i64, i8* }** %11
  %19 = load i64, i64* @g_last_line
  call void @nyx_array_push({ i64, i8* }* %18, i64 %19)
  %20 = load { i64, i8* }*, { i64, i8* }** %11
  %21 = load i64, i64* @g_last_col
  call void @nyx_array_push({ i64, i8* }* %20, i64 %21)
  %22 = load { i64, i8* }*, { i64, i8* }** %11
  ret { i64, i8* }* %22
}

define internal %nyx_string* @astnode_get_type(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %23 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %24 = call i64 @nyx_array_get({ i64, i8* }* %23, i64 0)
  %25 = inttoptr i64 %24 to %nyx_string*
  ret %nyx_string* %25
}

define internal { i64, i8* }* @astnode_get_data(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %26 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %27 = call i64 @nyx_array_get({ i64, i8* }* %26, i64 1)
  %28 = inttoptr i64 %27 to { i64, i8* }*
  ret { i64, i8* }* %28
}

%SharedEnv_parse = type { { i64, i8* }*, %nyx_string*, { i64, i8* }*, i64, i64, i64, i64, i64, i64, i64, { i64, i8* }*, { i64, i8* }*, { i64, i8* }*, { i64, i8* }*, { i64, i8* }*, { i64, i8* }*, { i64, i8* }*, { i64, i8* }*, { i64, i8* }*, i1, i64, i64, i64, { i64, i8* }*, { i64, i8* }*, i64, { i64, i8* }*, %nyx_string*, i64 }
define { i64, i8* }* @parse(
{ i64, i8* }* %input_tokens.param, %nyx_string* %source.param) {
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* null, i32 1
  %30 = ptrtoint %SharedEnv_parse* %29 to i64
  %31 = call i8* @GC_malloc(i64 %30)
  %32 = bitcast i8* %31 to %SharedEnv_parse*
  %33 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 0
  store { i64, i8* }* %input_tokens.param, { i64, i8* }** %33
  %34 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 1
  store %nyx_string* %source.param, %nyx_string** %34
  %35 = load { i64, i8* }*, { i64, i8* }** %33
  %36 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 2
  store { i64, i8* }* %35, { i64, i8* }** %36
  %37 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 3
  store i64 0, i64* %37
  %38 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 4
  store i64 0, i64* %38
  %39 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 5
  store i64 0, i64* %39
  %40 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 6
  store i64 0, i64* %40
  %41 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 7
  store i64 0, i64* %41
  store i64 0, i64* @g_parse_error_count
  %42 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 8
  store i64 0, i64* %42
  %43 = getelementptr [9 x i8], [9 x i8]* @.str0, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str0.c, i8* %43, i64 8)
  %45 = call i8* @nyx_string_to_cstr(%nyx_string* %44)
  %46 = call %nyx_string* @nyx_getenv(i8* %45)
  %47 = getelementptr [3 x i8], [3 x i8]* @.str1, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1.c, i8* %47, i64 2)
  %49 = call i1 @nyx_string_equals(%nyx_string* %46, %nyx_string* %48)
  br i1 %49, label %then0, label %else1
then0:
  store i64 1, i64* %42
  br label %merge2
else1:
  br label %merge2
merge2:
  %50 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 9
  store i64 0, i64* %50
  %51 = getelementptr [9 x i8], [9 x i8]* @.str2, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str2.c, i8* %51, i64 8)
  %53 = call i8* @nyx_string_to_cstr(%nyx_string* %52)
  %54 = call %nyx_string* @nyx_getenv(i8* %53)
  %55 = getelementptr [5 x i8], [5 x i8]* @.str3, i32 0, i32 0
  %56 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str3.c, i8* %55, i64 4)
  %57 = call i1 @nyx_string_equals(%nyx_string* %54, %nyx_string* %56)
  br i1 %57, label %then3, label %else4
then3:
  store i64 1, i64* %50
  br label %merge5
else4:
  br label %merge5
merge5:
  %58 = call { i64, i8* }* @nyx_array_new_ptr()
  %59 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 10
  store { i64, i8* }* %58, { i64, i8* }** %59
  %60 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %60, i64 0, i64 1)
  %61 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 11
  store { i64, i8* }* %60, { i64, i8* }** %61
  %62 = call { i64, i8* }* @nyx_array_new_ptr()
  %63 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 12
  store { i64, i8* }* %62, { i64, i8* }** %63
  %64 = call { i64, i8* }* @nyx_array_new_ptr()
  %65 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 13
  store { i64, i8* }* %64, { i64, i8* }** %65
  %66 = call { i64, i8* }* @nyx_array_new_ptr()
  %67 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 14
  store { i64, i8* }* %66, { i64, i8* }** %67
  %68 = call { i64, i8* }* @nyx_array_new_ptr()
  %69 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 15
  store { i64, i8* }* %68, { i64, i8* }** %69
  %70 = call { i64, i8* }* @nyx_array_new_ptr()
  %71 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 16
  store { i64, i8* }* %70, { i64, i8* }** %71
  %72 = call { i64, i8* }* @nyx_array_new_ptr()
  %73 = getelementptr [1 x i8], [1 x i8]* @.str4, i32 0, i32 0
  %74 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str4.c, i8* %73, i64 0)
  %75 = ptrtoint %nyx_string* %74 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %72, i64 %75, i64 2)
  %76 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 17
  store { i64, i8* }* %72, { i64, i8* }** %76
  %77 = call { i64, i8* }* @nyx_array_new_ptr()
  %78 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 18
  store { i64, i8* }* %77, { i64, i8* }** %78
  %79 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 19
  store i1 0, i1* %79
  %80 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 20
  store i64 0, i64* %80
  %81 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 21
  store i64 0, i64* %81
  %82 = call i8* @llvm.stacksave()
  br label %while_cond6
while_cond6:
  %83 = load i1, i1* %79
  %84 = xor i1 %83, true
  br i1 %84, label %while_body7, label %while_end8
while_body7:
  call void @llvm.stackrestore(i8* %82)
  %85 = load i64, i64* %80
  %86 = add i64 %85, 1
  store i64 %86, i64* %80
  %87 = load i64, i64* %80
  %88 = icmp sgt i64 %87, 100000
  br i1 %88, label %then9, label %else10
then9:
  %89 = getelementptr [30 x i8], [30 x i8]* @.str5, i32 0, i32 0
  %90 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str5.c, i8* %89, i64 29)
  %91 = call i8* @nyx_string_to_cstr(%nyx_string* %90)
  call void @nyx_print_string(i8* %91)
  store i1 1, i1* %79
  br label %merge11
else10:
  br label %merge11
merge11:
  %92 = load i64, i64* %41
  %93 = icmp eq i64 %92, 1
  br i1 %93, label %then12, label %else13
then12:
  store i1 1, i1* %79
  br label %merge14
else13:
  br label %merge14
merge14:
  %94 = getelementptr [4 x i8], [4 x i8]* @.str6, i32 0, i32 0
  %95 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str6.c, i8* %94, i64 3)
  %96 = call i1 @parse__check(%SharedEnv_parse* %32, %nyx_string* %95)
  br i1 %96, label %then15, label %else16
then15:
  store i1 1, i1* %79
  br label %merge17
else16:
  %97 = load i1, i1* %79
  %98 = xor i1 %97, true
  br i1 %98, label %then18, label %else19
then18:
  %99 = load i64, i64* %37
  %100 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 22
  store i64 %99, i64* %100
  %101 = call { i64, i8* }* @parse__parse_statement(%SharedEnv_parse* %32)
  %102 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 23
  store { i64, i8* }* %101, { i64, i8* }** %102
  %103 = load { i64, i8* }*, { i64, i8* }** %102
  %104 = call %nyx_string* @astnode_get_type({ i64, i8* }* %103)
  %105 = getelementptr [6 x i8], [6 x i8]* @.str7, i32 0, i32 0
  %106 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str7.c, i8* %105, i64 5)
  %107 = call i1 @nyx_string_equals(%nyx_string* %104, %nyx_string* %106)
  br i1 %107, label %then21, label %else22
then21:
  %108 = load i64, i64* %81
  %109 = add i64 %108, 1
  store i64 %109, i64* %81
  %110 = call i64 @parse__synchronize(%SharedEnv_parse* %32)
  %111 = load i64, i64* %37
  %112 = load i64, i64* %100
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %then24, label %else25
then24:
  %114 = call %Token @parse__advance(%SharedEnv_parse* %32)
  br label %merge26
else25:
  br label %merge26
merge26:
  br label %merge23
else22:
  %115 = load i64, i64* %37
  %116 = load i64, i64* %100
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %then27, label %else28
then27:
  %118 = load i64, i64* %81
  %119 = add i64 %118, 1
  store i64 %119, i64* %81
  %120 = call i64 @parse__synchronize(%SharedEnv_parse* %32)
  %121 = load i64, i64* %37
  %122 = load i64, i64* %100
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %then30, label %else31
then30:
  %124 = call %Token @parse__advance(%SharedEnv_parse* %32)
  br label %merge32
else31:
  br label %merge32
merge32:
  br label %merge29
else28:
  %125 = load { i64, i8* }*, { i64, i8* }** %78
  %126 = load { i64, i8* }*, { i64, i8* }** %102
  %127 = ptrtoint { i64, i8* }* %126 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %125, i64 %127, i64 5)
  br label %merge29
merge29:
  br label %merge23
merge23:
  br label %merge20
else19:
  br label %merge20
merge20:
  br label %merge17
merge17:
  br label %while_cond6
while_end8:
  %128 = load i64, i64* %81
  %129 = icmp sgt i64 %128, 0
  br i1 %129, label %then33, label %else34
then33:
  %130 = getelementptr [9 x i8], [9 x i8]* @.str8, i32 0, i32 0
  %131 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str8.c, i8* %130, i64 8)
  %132 = load i64, i64* %81
  %133 = call %nyx_string* @nyx_string_from_int(i64 %132)
  %134 = call %nyx_string* @nyx_string_concat(%nyx_string* %131, %nyx_string* %133)
  %135 = getelementptr [16 x i8], [16 x i8]* @.str9, i32 0, i32 0
  %136 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str9.c, i8* %135, i64 15)
  %137 = call %nyx_string* @nyx_string_concat(%nyx_string* %134, %nyx_string* %136)
  %138 = call i8* @nyx_string_to_cstr(%nyx_string* %137)
  call void @nyx_print_string(i8* %138)
  br label %merge35
else34:
  br label %merge35
merge35:
  %139 = load { i64, i8* }*, { i64, i8* }** %59
  %140 = call i64 @nyx_array_length({ i64, i8* }* %139)
  %141 = icmp sgt i64 %140, 0
  br i1 %141, label %then36, label %else37
then36:
  %142 = call { i64, i8* }* @nyx_array_new_ptr()
  %143 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 24
  store { i64, i8* }* %142, { i64, i8* }** %143
  %144 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 25
  store i64 0, i64* %144
  %145 = call i8* @llvm.stacksave()
  br label %while_cond39
while_cond39:
  %146 = load i64, i64* %144
  %147 = load { i64, i8* }*, { i64, i8* }** %59
  %148 = call i64 @nyx_array_length({ i64, i8* }* %147)
  %149 = icmp slt i64 %146, %148
  br i1 %149, label %while_body40, label %while_end41
while_body40:
  call void @llvm.stackrestore(i8* %145)
  %150 = load { i64, i8* }*, { i64, i8* }** %59
  %151 = load i64, i64* %144
  %152 = call i64 @nyx_array_get({ i64, i8* }* %150, i64 %151)
  %153 = inttoptr i64 %152 to { i64, i8* }*
  %154 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 26
  store { i64, i8* }* %153, { i64, i8* }** %154
  %155 = load { i64, i8* }*, { i64, i8* }** %154
  %156 = call i64 @nyx_array_get_checked({ i64, i8* }* %155, i64 0, i64 2)
  %157 = inttoptr i64 %156 to %nyx_string*
  %158 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 27
  store %nyx_string* %157, %nyx_string** %158
  %159 = load %nyx_string*, %nyx_string** %158
  %160 = getelementptr [10 x i8], [10 x i8]* @.str10, i32 0, i32 0
  %161 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str10.c, i8* %160, i64 9)
  %162 = call i1 @nyx_string_equals(%nyx_string* %159, %nyx_string* %161)
  %163 = xor i1 %162, true
  br i1 %163, label %then42, label %else43
then42:
  %164 = load { i64, i8* }*, { i64, i8* }** %143
  %165 = load { i64, i8* }*, { i64, i8* }** %59
  %166 = load i64, i64* %144
  %167 = call i64 @nyx_array_get({ i64, i8* }* %165, i64 %166)
  %168 = load { i64, i8* }*, { i64, i8* }** %59
  %169 = load i64, i64* %144
  %170 = call i64 @nyx_array_get_tag({ i64, i8* }* %168, i64 %169)
  call void @nyx_array_push_tagged({ i64, i8* }* %164, i64 %167, i64 %170)
  br label %merge44
else43:
  br label %merge44
merge44:
  %171 = load i64, i64* %144
  %172 = add i64 %171, 1
  store i64 %172, i64* %144
  br label %while_cond39
while_end41:
  %173 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 28
  store i64 0, i64* %173
  %174 = call i8* @llvm.stacksave()
  br label %while_cond45
while_cond45:
  %175 = load i64, i64* %173
  %176 = load { i64, i8* }*, { i64, i8* }** %78
  %177 = call i64 @nyx_array_length({ i64, i8* }* %176)
  %178 = icmp slt i64 %175, %177
  br i1 %178, label %while_body46, label %while_end47
while_body46:
  call void @llvm.stackrestore(i8* %174)
  %179 = load { i64, i8* }*, { i64, i8* }** %143
  %180 = load { i64, i8* }*, { i64, i8* }** %78
  %181 = load i64, i64* %173
  %182 = call i64 @nyx_array_get({ i64, i8* }* %180, i64 %181)
  %183 = load { i64, i8* }*, { i64, i8* }** %78
  %184 = load i64, i64* %173
  %185 = call i64 @nyx_array_get_tag({ i64, i8* }* %183, i64 %184)
  call void @nyx_array_push_tagged({ i64, i8* }* %179, i64 %182, i64 %185)
  %186 = load i64, i64* %173
  %187 = add i64 %186, 1
  store i64 %187, i64* %173
  br label %while_cond45
while_end47:
  %188 = getelementptr [6 x i8], [6 x i8]* @.str11, i32 0, i32 0
  %189 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str11.c, i8* %188, i64 5)
  %190 = call { i64, i8* }* @nyx_array_new_ptr()
  %191 = load { i64, i8* }*, { i64, i8* }** %143
  %192 = ptrtoint { i64, i8* }* %191 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %190, i64 %192, i64 5)
  %193 = call { i64, i8* }* @make_astnode(%nyx_string* %189, { i64, i8* }* %190)
  ret { i64, i8* }* %193
else37:
  br label %merge38
merge38:
  %194 = getelementptr [6 x i8], [6 x i8]* @.str12, i32 0, i32 0
  %195 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str12.c, i8* %194, i64 5)
  %196 = call { i64, i8* }* @nyx_array_new_ptr()
  %197 = load { i64, i8* }*, { i64, i8* }** %78
  %198 = ptrtoint { i64, i8* }* %197 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %196, i64 %198, i64 5)
  %199 = call { i64, i8* }* @make_astnode(%nyx_string* %195, { i64, i8* }* %196)
  ret { i64, i8* }* %199
}

define internal %Token @parse__peek(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = load i64, i64* %4
  %31 = load { i64, i8* }*, { i64, i8* }** %3
  %32 = call i64 @nyx_array_length({ i64, i8* }* %31)
  %33 = icmp slt i64 %30, %32
  br i1 %33, label %then0, label %else1
then0:
  %34 = load { i64, i8* }*, { i64, i8* }** %3
  %35 = load i64, i64* %4
  %36 = call i64 @nyx_array_get({ i64, i8* }* %34, i64 %35)
  %37 = inttoptr i64 %36 to %Token*
  %38 = load %Token, %Token* %37
  ret %Token %38
else1:
  br label %merge2
merge2:
  %39 = getelementptr %Token, %Token* null, i32 1
  %40 = ptrtoint %Token* %39 to i64
  %41 = call i8* @GC_malloc(i64 %40)
  %42 = bitcast i8* %41 to %Token*
  %43 = getelementptr [4 x i8], [4 x i8]* @.str13, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str13.c, i8* %43, i64 3)
  %45 = getelementptr %Token, %Token* %42, i32 0, i32 0
  store %nyx_string* %44, %nyx_string** %45
  %46 = getelementptr [1 x i8], [1 x i8]* @.str14, i32 0, i32 0
  %47 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str14.c, i8* %46, i64 0)
  %48 = getelementptr %Token, %Token* %42, i32 0, i32 1
  store %nyx_string* %47, %nyx_string** %48
  %49 = getelementptr %Token, %Token* %42, i32 0, i32 2
  store i64 0, i64* %49
  %50 = getelementptr %Token, %Token* %42, i32 0, i32 3
  store i64 0, i64* %50
  %51 = load %Token, %Token* %42
  %52 = alloca %Token
  store %Token %51, %Token* %52
  %53 = load %Token, %Token* %52
  ret %Token %53
}

define internal i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %type.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = alloca %nyx_string*
  store %nyx_string* %type.param, %nyx_string** %30
  %31 = load i64, i64* %8
  %32 = icmp eq i64 %31, 1
  br i1 %32, label %then0, label %else1
then0:
  %33 = load %nyx_string*, %nyx_string** %30
  %34 = getelementptr [4 x i8], [4 x i8]* @.str15, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str15.c, i8* %34, i64 3)
  %36 = call i1 @nyx_string_equals(%nyx_string* %33, %nyx_string* %35)
  br i1 %36, label %then3, label %else4
then3:
  ret i1 1
else4:
  br label %merge5
merge5:
  %37 = load %nyx_string*, %nyx_string** %30
  %38 = getelementptr [12 x i8], [12 x i8]* @.str16, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str16.c, i8* %38, i64 11)
  %40 = call i1 @nyx_string_equals(%nyx_string* %37, %nyx_string* %39)
  br i1 %40, label %then6, label %else7
then6:
  ret i1 1
else7:
  br label %merge8
merge8:
  %41 = load %nyx_string*, %nyx_string** %30
  %42 = getelementptr [12 x i8], [12 x i8]* @.str17, i32 0, i32 0
  %43 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str17.c, i8* %42, i64 11)
  %44 = call i1 @nyx_string_equals(%nyx_string* %41, %nyx_string* %43)
  br i1 %44, label %then9, label %else10
then9:
  ret i1 1
else10:
  br label %merge11
merge11:
  %45 = load %nyx_string*, %nyx_string** %30
  %46 = getelementptr [14 x i8], [14 x i8]* @.str18, i32 0, i32 0
  %47 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str18.c, i8* %46, i64 13)
  %48 = call i1 @nyx_string_equals(%nyx_string* %45, %nyx_string* %47)
  br i1 %48, label %then12, label %else13
then12:
  ret i1 1
else13:
  br label %merge14
merge14:
  ret i1 0
else1:
  br label %merge2
merge2:
  %49 = load i64, i64* %4
  %50 = load { i64, i8* }*, { i64, i8* }** %3
  %51 = call i64 @nyx_array_length({ i64, i8* }* %50)
  %52 = icmp slt i64 %49, %51
  br i1 %52, label %then15, label %else16
then15:
  %53 = load { i64, i8* }*, { i64, i8* }** %3
  %54 = load i64, i64* %4
  %55 = call i64 @nyx_array_get({ i64, i8* }* %53, i64 %54)
  %56 = inttoptr i64 %55 to %Token*
  %57 = load %Token, %Token* %56
  %58 = alloca %Token
  store %Token %57, %Token* %58
  %59 = load %Token, %Token* %58
  %60 = call %nyx_string* @get_token_type(%Token %59)
  %61 = alloca %nyx_string*
  store %nyx_string* %60, %nyx_string** %61
  %62 = load %nyx_string*, %nyx_string** %61
  %63 = load %nyx_string*, %nyx_string** %30
  %64 = call i1 @nyx_string_equals(%nyx_string* %62, %nyx_string* %63)
  ret i1 %64
else16:
  br label %merge17
merge17:
  ret i1 0
}

define internal %Token @parse__advance(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %31 = alloca %Token
  store %Token %30, %Token* %31
  %32 = load i64, i64* %4
  %33 = add i64 %32, 1
  store i64 %33, i64* %4
  %34 = load %Token, %Token* %31
  %35 = call i64 @get_token_line(%Token %34)
  store i64 %35, i64* @g_last_line
  %36 = load %Token, %Token* %31
  %37 = call i64 @get_token_column(%Token %36)
  store i64 %37, i64* @g_last_col
  %38 = load %Token, %Token* %31
  ret %Token %38
}

define internal i1 @parse__check_at(%SharedEnv_parse* %env.param, i64 %offset.param, %nyx_string* %type.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = alloca i64
  store i64 %offset.param, i64* %30
  %31 = alloca %nyx_string*
  store %nyx_string* %type.param, %nyx_string** %31
  %32 = load i64, i64* %4
  %33 = load i64, i64* %30
  %34 = add i64 %32, %33
  %35 = alloca i64
  store i64 %34, i64* %35
  %36 = load i64, i64* %35
  %37 = load { i64, i8* }*, { i64, i8* }** %3
  %38 = call i64 @nyx_array_length({ i64, i8* }* %37)
  %39 = icmp slt i64 %36, %38
  br i1 %39, label %then0, label %else1
then0:
  %40 = load { i64, i8* }*, { i64, i8* }** %3
  %41 = load i64, i64* %35
  %42 = call i64 @nyx_array_get({ i64, i8* }* %40, i64 %41)
  %43 = inttoptr i64 %42 to %Token*
  %44 = load %Token, %Token* %43
  %45 = alloca %Token
  store %Token %44, %Token* %45
  %46 = load %Token, %Token* %45
  %47 = call %nyx_string* @get_token_type(%Token %46)
  %48 = alloca %nyx_string*
  store %nyx_string* %47, %nyx_string** %48
  %49 = load %nyx_string*, %nyx_string** %48
  %50 = load %nyx_string*, %nyx_string** %31
  %51 = call i1 @nyx_string_equals(%nyx_string* %49, %nyx_string* %50)
  ret i1 %51
else1:
  br label %merge2
merge2:
  ret i1 0
}

define internal %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %es.param, %nyx_string* %en.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = alloca %nyx_string*
  store %nyx_string* %es.param, %nyx_string** %30
  %31 = alloca %nyx_string*
  store %nyx_string* %en.param, %nyx_string** %31
  %32 = load i64, i64* %9
  %33 = icmp eq i64 %32, 1
  br i1 %33, label %then0, label %else1
then0:
  %34 = load %nyx_string*, %nyx_string** %30
  ret %nyx_string* %34
else1:
  br label %merge2
merge2:
  %35 = load %nyx_string*, %nyx_string** %31
  ret %nyx_string* %35
}

define internal %nyx_string* @parse__p_json_escape(%SharedEnv_parse* %env.param, %nyx_string* %s.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %30
  %31 = getelementptr [1 x i8], [1 x i8]* @.str19, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str19.c, i8* %31, i64 0)
  %33 = alloca %nyx_string*
  store %nyx_string* %32, %nyx_string** %33
  %34 = alloca i64
  store i64 0, i64* %34
  %35 = alloca i64
  store i64 0, i64* %35
  %36 = load %nyx_string*, %nyx_string** %30
  %37 = call i64 @nyx_string_byte_length(%nyx_string* %36)
  %38 = alloca i64
  store i64 %37, i64* %38
  %39 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %40 = load i64, i64* %35
  %41 = load i64, i64* %38
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %39)
  %43 = load %nyx_string*, %nyx_string** %30
  %44 = load i64, i64* %35
  %45 = call i8 @nyx_string_char_at(%nyx_string* %43, i64 %44)
  %46 = zext i8 %45 to i64
  %47 = alloca i64
  store i64 %46, i64* %47
  %48 = getelementptr [1 x i8], [1 x i8]* @.str20, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str20.c, i8* %48, i64 0)
  %50 = alloca %nyx_string*
  store %nyx_string* %49, %nyx_string** %50
  %51 = load i64, i64* %47
  %52 = icmp eq i64 %51, 34
  br i1 %52, label %then3, label %else4
then3:
  %53 = getelementptr [3 x i8], [3 x i8]* @.str21, i32 0, i32 0
  %54 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str21.c, i8* %53, i64 2)
  store %nyx_string* %54, %nyx_string** %50
  br label %merge5
else4:
  br label %merge5
merge5:
  %55 = load i64, i64* %47
  %56 = icmp eq i64 %55, 92
  br i1 %56, label %then6, label %else7
then6:
  %57 = getelementptr [3 x i8], [3 x i8]* @.str22, i32 0, i32 0
  %58 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str22.c, i8* %57, i64 2)
  store %nyx_string* %58, %nyx_string** %50
  br label %merge8
else7:
  br label %merge8
merge8:
  %59 = load i64, i64* %47
  %60 = icmp eq i64 %59, 10
  br i1 %60, label %then9, label %else10
then9:
  %61 = getelementptr [3 x i8], [3 x i8]* @.str23, i32 0, i32 0
  %62 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str23.c, i8* %61, i64 2)
  store %nyx_string* %62, %nyx_string** %50
  br label %merge11
else10:
  br label %merge11
merge11:
  %63 = load i64, i64* %47
  %64 = icmp eq i64 %63, 13
  br i1 %64, label %then12, label %else13
then12:
  %65 = getelementptr [3 x i8], [3 x i8]* @.str24, i32 0, i32 0
  %66 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str24.c, i8* %65, i64 2)
  store %nyx_string* %66, %nyx_string** %50
  br label %merge14
else13:
  br label %merge14
merge14:
  %67 = load i64, i64* %47
  %68 = icmp eq i64 %67, 9
  br i1 %68, label %then15, label %else16
then15:
  %69 = getelementptr [3 x i8], [3 x i8]* @.str25, i32 0, i32 0
  %70 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str25.c, i8* %69, i64 2)
  store %nyx_string* %70, %nyx_string** %50
  br label %merge17
else16:
  br label %merge17
merge17:
  %71 = load %nyx_string*, %nyx_string** %50
  %72 = getelementptr [1 x i8], [1 x i8]* @.str26, i32 0, i32 0
  %73 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str26.c, i8* %72, i64 0)
  %74 = call i1 @nyx_string_equals(%nyx_string* %71, %nyx_string* %73)
  %75 = xor i1 %74, true
  br i1 %75, label %then18, label %else19
then18:
  %76 = load %nyx_string*, %nyx_string** %33
  %77 = load %nyx_string*, %nyx_string** %30
  %78 = load i64, i64* %34
  %79 = load i64, i64* %35
  %80 = call %nyx_string* @nyx_string_substring(%nyx_string* %77, i64 %78, i64 %79)
  %81 = call %nyx_string* @nyx_string_concat(%nyx_string* %76, %nyx_string* %80)
  %82 = load %nyx_string*, %nyx_string** %50
  %83 = call %nyx_string* @nyx_string_concat(%nyx_string* %81, %nyx_string* %82)
  store %nyx_string* %83, %nyx_string** %33
  %84 = load i64, i64* %35
  %85 = add i64 %84, 1
  store i64 %85, i64* %34
  br label %merge20
else19:
  br label %merge20
merge20:
  %86 = load i64, i64* %35
  %87 = add i64 %86, 1
  store i64 %87, i64* %35
  br label %while_cond0
while_end2:
  %88 = load i64, i64* %34
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %then21, label %else22
then21:
  %90 = load %nyx_string*, %nyx_string** %30
  ret %nyx_string* %90
else22:
  br label %merge23
merge23:
  %91 = load %nyx_string*, %nyx_string** %33
  %92 = load %nyx_string*, %nyx_string** %30
  %93 = load i64, i64* %34
  %94 = load i64, i64* %38
  %95 = call %nyx_string* @nyx_string_substring(%nyx_string* %92, i64 %93, i64 %94)
  %96 = call %nyx_string* @nyx_string_concat(%nyx_string* %91, %nyx_string* %95)
  ret %nyx_string* %96
}

define internal i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %code.param, i64 %ln.param, i64 %cl.param, %nyx_string* %dmsg.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = alloca %nyx_string*
  store %nyx_string* %code.param, %nyx_string** %30
  %31 = alloca i64
  store i64 %ln.param, i64* %31
  %32 = alloca i64
  store i64 %cl.param, i64* %32
  %33 = alloca %nyx_string*
  store %nyx_string* %dmsg.param, %nyx_string** %33
  %34 = load i64, i64* %8
  %35 = icmp eq i64 %34, 1
  br i1 %35, label %then0, label %else1
then0:
  ret i64 0
else1:
  br label %merge2
merge2:
  %36 = load i64, i64* %7
  %37 = add i64 %36, 1
  store i64 %37, i64* %7
  %38 = load i64, i64* @g_parse_error_count
  %39 = add i64 %38, 1
  store i64 %39, i64* @g_parse_error_count
  %40 = load i64, i64* %7
  %41 = icmp sgt i64 %40, 20
  br i1 %41, label %then3, label %else4
then3:
  %42 = getelementptr [39 x i8], [39 x i8]* @.str27, i32 0, i32 0
  %43 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str27.c, i8* %42, i64 38)
  %44 = getelementptr [32 x i8], [32 x i8]* @.str28, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str28.c, i8* %44, i64 31)
  %46 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %43, %nyx_string* %45)
  %47 = alloca %nyx_string*
  store %nyx_string* %46, %nyx_string** %47
  %48 = load i64, i64* %10
  %49 = icmp eq i64 %48, 1
  br i1 %49, label %then6, label %else7
then6:
  %50 = getelementptr [65 x i8], [65 x i8]* @.str29, i32 0, i32 0
  %51 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str29.c, i8* %50, i64 64)
  %52 = load %nyx_string*, %nyx_string** %47
  %53 = call %nyx_string* @parse__p_json_escape(%SharedEnv_parse* %env.param, %nyx_string* %52)
  %54 = call %nyx_string* @nyx_string_concat(%nyx_string* %51, %nyx_string* %53)
  %55 = getelementptr [3 x i8], [3 x i8]* @.str30, i32 0, i32 0
  %56 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str30.c, i8* %55, i64 2)
  %57 = call %nyx_string* @nyx_string_concat(%nyx_string* %54, %nyx_string* %56)
  %58 = call i8* @nyx_string_to_cstr(%nyx_string* %57)
  call void @nyx_print_string(i8* %58)
  br label %merge8
else7:
  %59 = getelementptr [18 x i8], [18 x i8]* @.str31, i32 0, i32 0
  %60 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str31.c, i8* %59, i64 17)
  %61 = load %nyx_string*, %nyx_string** %47
  %62 = call %nyx_string* @nyx_string_concat(%nyx_string* %60, %nyx_string* %61)
  %63 = call i8* @nyx_string_to_cstr(%nyx_string* %62)
  call void @nyx_print_string(i8* %63)
  br label %merge8
merge8:
  store i64 1, i64* %8
  ret i64 0
else4:
  br label %merge5
merge5:
  %64 = load i64, i64* %10
  %65 = icmp eq i64 %64, 1
  br i1 %65, label %then9, label %else10
then9:
  %66 = getelementptr [10 x i8], [10 x i8]* @.str32, i32 0, i32 0
  %67 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str32.c, i8* %66, i64 9)
  %68 = load %nyx_string*, %nyx_string** %30
  %69 = call %nyx_string* @nyx_string_concat(%nyx_string* %67, %nyx_string* %68)
  %70 = getelementptr [2 x i8], [2 x i8]* @.str33, i32 0, i32 0
  %71 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str33.c, i8* %70, i64 1)
  %72 = call %nyx_string* @nyx_string_concat(%nyx_string* %69, %nyx_string* %71)
  %73 = alloca %nyx_string*
  store %nyx_string* %72, %nyx_string** %73
  %74 = load %nyx_string*, %nyx_string** %73
  %75 = getelementptr [20 x i8], [20 x i8]* @.str34, i32 0, i32 0
  %76 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str34.c, i8* %75, i64 19)
  %77 = call %nyx_string* @nyx_string_concat(%nyx_string* %74, %nyx_string* %76)
  store %nyx_string* %77, %nyx_string** %73
  %78 = load %nyx_string*, %nyx_string** %73
  %79 = getelementptr [17 x i8], [17 x i8]* @.str35, i32 0, i32 0
  %80 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str35.c, i8* %79, i64 16)
  %81 = call %nyx_string* @nyx_string_concat(%nyx_string* %78, %nyx_string* %80)
  store %nyx_string* %81, %nyx_string** %73
  %82 = load i64, i64* %31
  %83 = icmp sgt i64 %82, 0
  br i1 %83, label %then12, label %else13
then12:
  %84 = load %nyx_string*, %nyx_string** %73
  %85 = getelementptr [9 x i8], [9 x i8]* @.str36, i32 0, i32 0
  %86 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str36.c, i8* %85, i64 8)
  %87 = call %nyx_string* @nyx_string_concat(%nyx_string* %84, %nyx_string* %86)
  %88 = load i64, i64* %31
  %89 = call %nyx_string* @nyx_string_from_int(i64 %88)
  %90 = call %nyx_string* @nyx_string_concat(%nyx_string* %87, %nyx_string* %89)
  store %nyx_string* %90, %nyx_string** %73
  %91 = load %nyx_string*, %nyx_string** %73
  %92 = getelementptr [11 x i8], [11 x i8]* @.str37, i32 0, i32 0
  %93 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str37.c, i8* %92, i64 10)
  %94 = call %nyx_string* @nyx_string_concat(%nyx_string* %91, %nyx_string* %93)
  %95 = load i64, i64* %32
  %96 = call %nyx_string* @nyx_string_from_int(i64 %95)
  %97 = call %nyx_string* @nyx_string_concat(%nyx_string* %94, %nyx_string* %96)
  store %nyx_string* %97, %nyx_string** %73
  br label %merge14
else13:
  br label %merge14
merge14:
  %98 = load %nyx_string*, %nyx_string** %73
  %99 = getelementptr [13 x i8], [13 x i8]* @.str38, i32 0, i32 0
  %100 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str38.c, i8* %99, i64 12)
  %101 = call %nyx_string* @nyx_string_concat(%nyx_string* %98, %nyx_string* %100)
  %102 = load %nyx_string*, %nyx_string** %33
  %103 = call %nyx_string* @parse__p_json_escape(%SharedEnv_parse* %env.param, %nyx_string* %102)
  %104 = call %nyx_string* @nyx_string_concat(%nyx_string* %101, %nyx_string* %103)
  %105 = getelementptr [3 x i8], [3 x i8]* @.str39, i32 0, i32 0
  %106 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str39.c, i8* %105, i64 2)
  %107 = call %nyx_string* @nyx_string_concat(%nyx_string* %104, %nyx_string* %106)
  store %nyx_string* %107, %nyx_string** %73
  %108 = load %nyx_string*, %nyx_string** %73
  %109 = call i8* @nyx_string_to_cstr(%nyx_string* %108)
  call void @nyx_print_string(i8* %109)
  ret i64 0
else10:
  br label %merge11
merge11:
  %110 = getelementptr [8 x i8], [8 x i8]* @.str40, i32 0, i32 0
  %111 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str40.c, i8* %110, i64 7)
  %112 = load %nyx_string*, %nyx_string** %30
  %113 = call %nyx_string* @nyx_string_concat(%nyx_string* %111, %nyx_string* %112)
  %114 = getelementptr [4 x i8], [4 x i8]* @.str41, i32 0, i32 0
  %115 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str41.c, i8* %114, i64 3)
  %116 = call %nyx_string* @nyx_string_concat(%nyx_string* %113, %nyx_string* %115)
  %117 = load %nyx_string*, %nyx_string** %33
  %118 = call %nyx_string* @nyx_string_concat(%nyx_string* %116, %nyx_string* %117)
  %119 = call i8* @nyx_string_to_cstr(%nyx_string* %118)
  call void @nyx_print_string(i8* %119)
  %120 = getelementptr [7 x i8], [7 x i8]* @.str42, i32 0, i32 0
  %121 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str42.c, i8* %120, i64 6)
  %122 = getelementptr [7 x i8], [7 x i8]* @.str43, i32 0, i32 0
  %123 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str43.c, i8* %122, i64 6)
  %124 = getelementptr [5 x i8], [5 x i8]* @.str44, i32 0, i32 0
  %125 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str44.c, i8* %124, i64 4)
  %126 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %123, %nyx_string* %125)
  %127 = call %nyx_string* @nyx_string_concat(%nyx_string* %121, %nyx_string* %126)
  %128 = getelementptr [2 x i8], [2 x i8]* @.str45, i32 0, i32 0
  %129 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str45.c, i8* %128, i64 1)
  %130 = call %nyx_string* @nyx_string_concat(%nyx_string* %127, %nyx_string* %129)
  %131 = load i64, i64* %31
  %132 = call %nyx_string* @nyx_string_from_int(i64 %131)
  %133 = call %nyx_string* @nyx_string_concat(%nyx_string* %130, %nyx_string* %132)
  %134 = getelementptr [2 x i8], [2 x i8]* @.str46, i32 0, i32 0
  %135 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str46.c, i8* %134, i64 1)
  %136 = call %nyx_string* @nyx_string_concat(%nyx_string* %133, %nyx_string* %135)
  %137 = load i64, i64* %32
  %138 = call %nyx_string* @nyx_string_from_int(i64 %137)
  %139 = call %nyx_string* @nyx_string_concat(%nyx_string* %136, %nyx_string* %138)
  %140 = call i8* @nyx_string_to_cstr(%nyx_string* %139)
  call void @nyx_print_string(i8* %140)
  ret i64 0
}

define internal i1 @parse__is_keyword_token(%SharedEnv_parse* %env.param, %nyx_string* %tt.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = alloca %nyx_string*
  store %nyx_string* %tt.param, %nyx_string** %30
  %31 = alloca i1
  store i1 true, i1* %31
  %32 = alloca i1
  store i1 true, i1* %32
  %33 = alloca i1
  store i1 true, i1* %33
  %34 = alloca i1
  store i1 true, i1* %34
  %35 = load %nyx_string*, %nyx_string** %30
  %36 = getelementptr [4 x i8], [4 x i8]* @.str47, i32 0, i32 0
  %37 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str47.c, i8* %36, i64 3)
  %38 = call i1 @nyx_string_equals(%nyx_string* %35, %nyx_string* %37)
  br i1 %38, label %sc_or_end1, label %sc_or_rhs0
sc_or_rhs0:
  %39 = load %nyx_string*, %nyx_string** %30
  %40 = getelementptr [4 x i8], [4 x i8]* @.str48, i32 0, i32 0
  %41 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str48.c, i8* %40, i64 3)
  %42 = call i1 @nyx_string_equals(%nyx_string* %39, %nyx_string* %41)
  store i1 %42, i1* %34
  br label %sc_or_end1
sc_or_end1:
  %43 = load i1, i1* %34
  br i1 %43, label %sc_or_end3, label %sc_or_rhs2
sc_or_rhs2:
  %44 = load %nyx_string*, %nyx_string** %30
  %45 = getelementptr [6 x i8], [6 x i8]* @.str49, i32 0, i32 0
  %46 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str49.c, i8* %45, i64 5)
  %47 = call i1 @nyx_string_equals(%nyx_string* %44, %nyx_string* %46)
  store i1 %47, i1* %33
  br label %sc_or_end3
sc_or_end3:
  %48 = load i1, i1* %33
  br i1 %48, label %sc_or_end5, label %sc_or_rhs4
sc_or_rhs4:
  %49 = load %nyx_string*, %nyx_string** %30
  %50 = getelementptr [3 x i8], [3 x i8]* @.str50, i32 0, i32 0
  %51 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str50.c, i8* %50, i64 2)
  %52 = call i1 @nyx_string_equals(%nyx_string* %49, %nyx_string* %51)
  store i1 %52, i1* %32
  br label %sc_or_end5
sc_or_end5:
  %53 = load i1, i1* %32
  br i1 %53, label %sc_or_end7, label %sc_or_rhs6
sc_or_rhs6:
  %54 = load %nyx_string*, %nyx_string** %30
  %55 = getelementptr [7 x i8], [7 x i8]* @.str51, i32 0, i32 0
  %56 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str51.c, i8* %55, i64 6)
  %57 = call i1 @nyx_string_equals(%nyx_string* %54, %nyx_string* %56)
  store i1 %57, i1* %31
  br label %sc_or_end7
sc_or_end7:
  %58 = load i1, i1* %31
  br i1 %58, label %then8, label %else9
then8:
  ret i1 1
else9:
  br label %merge10
merge10:
  %59 = alloca i1
  store i1 true, i1* %59
  %60 = alloca i1
  store i1 true, i1* %60
  %61 = alloca i1
  store i1 true, i1* %61
  %62 = alloca i1
  store i1 true, i1* %62
  %63 = load %nyx_string*, %nyx_string** %30
  %64 = getelementptr [3 x i8], [3 x i8]* @.str52, i32 0, i32 0
  %65 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str52.c, i8* %64, i64 2)
  %66 = call i1 @nyx_string_equals(%nyx_string* %63, %nyx_string* %65)
  br i1 %66, label %sc_or_end12, label %sc_or_rhs11
sc_or_rhs11:
  %67 = load %nyx_string*, %nyx_string** %30
  %68 = getelementptr [5 x i8], [5 x i8]* @.str53, i32 0, i32 0
  %69 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str53.c, i8* %68, i64 4)
  %70 = call i1 @nyx_string_equals(%nyx_string* %67, %nyx_string* %69)
  store i1 %70, i1* %62
  br label %sc_or_end12
sc_or_end12:
  %71 = load i1, i1* %62
  br i1 %71, label %sc_or_end14, label %sc_or_rhs13
sc_or_rhs13:
  %72 = load %nyx_string*, %nyx_string** %30
  %73 = getelementptr [6 x i8], [6 x i8]* @.str54, i32 0, i32 0
  %74 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str54.c, i8* %73, i64 5)
  %75 = call i1 @nyx_string_equals(%nyx_string* %72, %nyx_string* %74)
  store i1 %75, i1* %61
  br label %sc_or_end14
sc_or_end14:
  %76 = load i1, i1* %61
  br i1 %76, label %sc_or_end16, label %sc_or_rhs15
sc_or_rhs15:
  %77 = load %nyx_string*, %nyx_string** %30
  %78 = getelementptr [4 x i8], [4 x i8]* @.str55, i32 0, i32 0
  %79 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str55.c, i8* %78, i64 3)
  %80 = call i1 @nyx_string_equals(%nyx_string* %77, %nyx_string* %79)
  store i1 %80, i1* %60
  br label %sc_or_end16
sc_or_end16:
  %81 = load i1, i1* %60
  br i1 %81, label %sc_or_end18, label %sc_or_rhs17
sc_or_rhs17:
  %82 = load %nyx_string*, %nyx_string** %30
  %83 = getelementptr [3 x i8], [3 x i8]* @.str56, i32 0, i32 0
  %84 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str56.c, i8* %83, i64 2)
  %85 = call i1 @nyx_string_equals(%nyx_string* %82, %nyx_string* %84)
  store i1 %85, i1* %59
  br label %sc_or_end18
sc_or_end18:
  %86 = load i1, i1* %59
  br i1 %86, label %then19, label %else20
then19:
  ret i1 1
else20:
  br label %merge21
merge21:
  %87 = alloca i1
  store i1 true, i1* %87
  %88 = alloca i1
  store i1 true, i1* %88
  %89 = alloca i1
  store i1 true, i1* %89
  %90 = alloca i1
  store i1 true, i1* %90
  %91 = load %nyx_string*, %nyx_string** %30
  %92 = getelementptr [6 x i8], [6 x i8]* @.str57, i32 0, i32 0
  %93 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str57.c, i8* %92, i64 5)
  %94 = call i1 @nyx_string_equals(%nyx_string* %91, %nyx_string* %93)
  br i1 %94, label %sc_or_end23, label %sc_or_rhs22
sc_or_rhs22:
  %95 = load %nyx_string*, %nyx_string** %30
  %96 = getelementptr [9 x i8], [9 x i8]* @.str58, i32 0, i32 0
  %97 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str58.c, i8* %96, i64 8)
  %98 = call i1 @nyx_string_equals(%nyx_string* %95, %nyx_string* %97)
  store i1 %98, i1* %90
  br label %sc_or_end23
sc_or_end23:
  %99 = load i1, i1* %90
  br i1 %99, label %sc_or_end25, label %sc_or_rhs24
sc_or_rhs24:
  %100 = load %nyx_string*, %nyx_string** %30
  %101 = getelementptr [7 x i8], [7 x i8]* @.str59, i32 0, i32 0
  %102 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str59.c, i8* %101, i64 6)
  %103 = call i1 @nyx_string_equals(%nyx_string* %100, %nyx_string* %102)
  store i1 %103, i1* %89
  br label %sc_or_end25
sc_or_end25:
  %104 = load i1, i1* %89
  br i1 %104, label %sc_or_end27, label %sc_or_rhs26
sc_or_rhs26:
  %105 = load %nyx_string*, %nyx_string** %30
  %106 = getelementptr [5 x i8], [5 x i8]* @.str60, i32 0, i32 0
  %107 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str60.c, i8* %106, i64 4)
  %108 = call i1 @nyx_string_equals(%nyx_string* %105, %nyx_string* %107)
  store i1 %108, i1* %88
  br label %sc_or_end27
sc_or_end27:
  %109 = load i1, i1* %88
  br i1 %109, label %sc_or_end29, label %sc_or_rhs28
sc_or_rhs28:
  %110 = load %nyx_string*, %nyx_string** %30
  %111 = getelementptr [6 x i8], [6 x i8]* @.str61, i32 0, i32 0
  %112 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str61.c, i8* %111, i64 5)
  %113 = call i1 @nyx_string_equals(%nyx_string* %110, %nyx_string* %112)
  store i1 %113, i1* %87
  br label %sc_or_end29
sc_or_end29:
  %114 = load i1, i1* %87
  br i1 %114, label %then30, label %else31
then30:
  ret i1 1
else31:
  br label %merge32
merge32:
  %115 = alloca i1
  store i1 true, i1* %115
  %116 = alloca i1
  store i1 true, i1* %116
  %117 = alloca i1
  store i1 true, i1* %117
  %118 = alloca i1
  store i1 true, i1* %118
  %119 = load %nyx_string*, %nyx_string** %30
  %120 = getelementptr [7 x i8], [7 x i8]* @.str62, i32 0, i32 0
  %121 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str62.c, i8* %120, i64 6)
  %122 = call i1 @nyx_string_equals(%nyx_string* %119, %nyx_string* %121)
  br i1 %122, label %sc_or_end34, label %sc_or_rhs33
sc_or_rhs33:
  %123 = load %nyx_string*, %nyx_string** %30
  %124 = getelementptr [7 x i8], [7 x i8]* @.str63, i32 0, i32 0
  %125 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str63.c, i8* %124, i64 6)
  %126 = call i1 @nyx_string_equals(%nyx_string* %123, %nyx_string* %125)
  store i1 %126, i1* %118
  br label %sc_or_end34
sc_or_end34:
  %127 = load i1, i1* %118
  br i1 %127, label %sc_or_end36, label %sc_or_rhs35
sc_or_rhs35:
  %128 = load %nyx_string*, %nyx_string** %30
  %129 = getelementptr [5 x i8], [5 x i8]* @.str64, i32 0, i32 0
  %130 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str64.c, i8* %129, i64 4)
  %131 = call i1 @nyx_string_equals(%nyx_string* %128, %nyx_string* %130)
  store i1 %131, i1* %117
  br label %sc_or_end36
sc_or_end36:
  %132 = load i1, i1* %117
  br i1 %132, label %sc_or_end38, label %sc_or_rhs37
sc_or_rhs37:
  %133 = load %nyx_string*, %nyx_string** %30
  %134 = getelementptr [5 x i8], [5 x i8]* @.str65, i32 0, i32 0
  %135 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str65.c, i8* %134, i64 4)
  %136 = call i1 @nyx_string_equals(%nyx_string* %133, %nyx_string* %135)
  store i1 %136, i1* %116
  br label %sc_or_end38
sc_or_end38:
  %137 = load i1, i1* %116
  br i1 %137, label %sc_or_end40, label %sc_or_rhs39
sc_or_rhs39:
  %138 = load %nyx_string*, %nyx_string** %30
  %139 = getelementptr [6 x i8], [6 x i8]* @.str66, i32 0, i32 0
  %140 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str66.c, i8* %139, i64 5)
  %141 = call i1 @nyx_string_equals(%nyx_string* %138, %nyx_string* %140)
  store i1 %141, i1* %115
  br label %sc_or_end40
sc_or_end40:
  %142 = load i1, i1* %115
  br i1 %142, label %then41, label %else42
then41:
  ret i1 1
else42:
  br label %merge43
merge43:
  %143 = alloca i1
  store i1 true, i1* %143
  %144 = alloca i1
  store i1 true, i1* %144
  %145 = alloca i1
  store i1 true, i1* %145
  %146 = alloca i1
  store i1 true, i1* %146
  %147 = load %nyx_string*, %nyx_string** %30
  %148 = getelementptr [4 x i8], [4 x i8]* @.str67, i32 0, i32 0
  %149 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str67.c, i8* %148, i64 3)
  %150 = call i1 @nyx_string_equals(%nyx_string* %147, %nyx_string* %149)
  br i1 %150, label %sc_or_end45, label %sc_or_rhs44
sc_or_rhs44:
  %151 = load %nyx_string*, %nyx_string** %30
  %152 = getelementptr [3 x i8], [3 x i8]* @.str68, i32 0, i32 0
  %153 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str68.c, i8* %152, i64 2)
  %154 = call i1 @nyx_string_equals(%nyx_string* %151, %nyx_string* %153)
  store i1 %154, i1* %146
  br label %sc_or_end45
sc_or_end45:
  %155 = load i1, i1* %146
  br i1 %155, label %sc_or_end47, label %sc_or_rhs46
sc_or_rhs46:
  %156 = load %nyx_string*, %nyx_string** %30
  %157 = getelementptr [4 x i8], [4 x i8]* @.str69, i32 0, i32 0
  %158 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str69.c, i8* %157, i64 3)
  %159 = call i1 @nyx_string_equals(%nyx_string* %156, %nyx_string* %158)
  store i1 %159, i1* %145
  br label %sc_or_end47
sc_or_end47:
  %160 = load i1, i1* %145
  br i1 %160, label %sc_or_end49, label %sc_or_rhs48
sc_or_rhs48:
  %161 = load %nyx_string*, %nyx_string** %30
  %162 = getelementptr [5 x i8], [5 x i8]* @.str70, i32 0, i32 0
  %163 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str70.c, i8* %162, i64 4)
  %164 = call i1 @nyx_string_equals(%nyx_string* %161, %nyx_string* %163)
  store i1 %164, i1* %144
  br label %sc_or_end49
sc_or_end49:
  %165 = load i1, i1* %144
  br i1 %165, label %sc_or_end51, label %sc_or_rhs50
sc_or_rhs50:
  %166 = load %nyx_string*, %nyx_string** %30
  %167 = getelementptr [6 x i8], [6 x i8]* @.str71, i32 0, i32 0
  %168 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str71.c, i8* %167, i64 5)
  %169 = call i1 @nyx_string_equals(%nyx_string* %166, %nyx_string* %168)
  store i1 %169, i1* %143
  br label %sc_or_end51
sc_or_end51:
  %170 = load i1, i1* %143
  br i1 %170, label %then52, label %else53
then52:
  ret i1 1
else53:
  br label %merge54
merge54:
  %171 = alloca i1
  store i1 true, i1* %171
  %172 = alloca i1
  store i1 true, i1* %172
  %173 = alloca i1
  store i1 true, i1* %173
  %174 = alloca i1
  store i1 true, i1* %174
  %175 = load %nyx_string*, %nyx_string** %30
  %176 = getelementptr [5 x i8], [5 x i8]* @.str72, i32 0, i32 0
  %177 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str72.c, i8* %176, i64 4)
  %178 = call i1 @nyx_string_equals(%nyx_string* %175, %nyx_string* %177)
  br i1 %178, label %sc_or_end56, label %sc_or_rhs55
sc_or_rhs55:
  %179 = load %nyx_string*, %nyx_string** %30
  %180 = getelementptr [7 x i8], [7 x i8]* @.str73, i32 0, i32 0
  %181 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str73.c, i8* %180, i64 6)
  %182 = call i1 @nyx_string_equals(%nyx_string* %179, %nyx_string* %181)
  store i1 %182, i1* %174
  br label %sc_or_end56
sc_or_end56:
  %183 = load i1, i1* %174
  br i1 %183, label %sc_or_end58, label %sc_or_rhs57
sc_or_rhs57:
  %184 = load %nyx_string*, %nyx_string** %30
  %185 = getelementptr [7 x i8], [7 x i8]* @.str74, i32 0, i32 0
  %186 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str74.c, i8* %185, i64 6)
  %187 = call i1 @nyx_string_equals(%nyx_string* %184, %nyx_string* %186)
  store i1 %187, i1* %173
  br label %sc_or_end58
sc_or_end58:
  %188 = load i1, i1* %173
  br i1 %188, label %sc_or_end60, label %sc_or_rhs59
sc_or_rhs59:
  %189 = load %nyx_string*, %nyx_string** %30
  %190 = getelementptr [3 x i8], [3 x i8]* @.str75, i32 0, i32 0
  %191 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str75.c, i8* %190, i64 2)
  %192 = call i1 @nyx_string_equals(%nyx_string* %189, %nyx_string* %191)
  store i1 %192, i1* %172
  br label %sc_or_end60
sc_or_end60:
  %193 = load i1, i1* %172
  br i1 %193, label %sc_or_end62, label %sc_or_rhs61
sc_or_rhs61:
  %194 = load %nyx_string*, %nyx_string** %30
  %195 = getelementptr [7 x i8], [7 x i8]* @.str76, i32 0, i32 0
  %196 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str76.c, i8* %195, i64 6)
  %197 = call i1 @nyx_string_equals(%nyx_string* %194, %nyx_string* %196)
  store i1 %197, i1* %171
  br label %sc_or_end62
sc_or_end62:
  %198 = load i1, i1* %171
  br i1 %198, label %then63, label %else64
then63:
  ret i1 1
else64:
  br label %merge65
merge65:
  %199 = alloca i1
  store i1 true, i1* %199
  %200 = alloca i1
  store i1 true, i1* %200
  %201 = alloca i1
  store i1 true, i1* %201
  %202 = alloca i1
  store i1 true, i1* %202
  %203 = load %nyx_string*, %nyx_string** %30
  %204 = getelementptr [7 x i8], [7 x i8]* @.str77, i32 0, i32 0
  %205 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str77.c, i8* %204, i64 6)
  %206 = call i1 @nyx_string_equals(%nyx_string* %203, %nyx_string* %205)
  br i1 %206, label %sc_or_end67, label %sc_or_rhs66
sc_or_rhs66:
  %207 = load %nyx_string*, %nyx_string** %30
  %208 = getelementptr [7 x i8], [7 x i8]* @.str78, i32 0, i32 0
  %209 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str78.c, i8* %208, i64 6)
  %210 = call i1 @nyx_string_equals(%nyx_string* %207, %nyx_string* %209)
  store i1 %210, i1* %202
  br label %sc_or_end67
sc_or_end67:
  %211 = load i1, i1* %202
  br i1 %211, label %sc_or_end69, label %sc_or_rhs68
sc_or_rhs68:
  %212 = load %nyx_string*, %nyx_string** %30
  %213 = getelementptr [8 x i8], [8 x i8]* @.str79, i32 0, i32 0
  %214 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str79.c, i8* %213, i64 7)
  %215 = call i1 @nyx_string_equals(%nyx_string* %212, %nyx_string* %214)
  store i1 %215, i1* %201
  br label %sc_or_end69
sc_or_end69:
  %216 = load i1, i1* %201
  br i1 %216, label %sc_or_end71, label %sc_or_rhs70
sc_or_rhs70:
  %217 = load %nyx_string*, %nyx_string** %30
  %218 = getelementptr [4 x i8], [4 x i8]* @.str80, i32 0, i32 0
  %219 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str80.c, i8* %218, i64 3)
  %220 = call i1 @nyx_string_equals(%nyx_string* %217, %nyx_string* %219)
  store i1 %220, i1* %200
  br label %sc_or_end71
sc_or_end71:
  %221 = load i1, i1* %200
  br i1 %221, label %sc_or_end73, label %sc_or_rhs72
sc_or_rhs72:
  %222 = load %nyx_string*, %nyx_string** %30
  %223 = getelementptr [4 x i8], [4 x i8]* @.str81, i32 0, i32 0
  %224 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str81.c, i8* %223, i64 3)
  %225 = call i1 @nyx_string_equals(%nyx_string* %222, %nyx_string* %224)
  store i1 %225, i1* %199
  br label %sc_or_end73
sc_or_end73:
  %226 = load i1, i1* %199
  br i1 %226, label %then74, label %else75
then74:
  ret i1 1
else75:
  br label %merge76
merge76:
  %227 = alloca i1
  store i1 true, i1* %227
  %228 = alloca i1
  store i1 true, i1* %228
  %229 = alloca i1
  store i1 true, i1* %229
  %230 = load %nyx_string*, %nyx_string** %30
  %231 = getelementptr [4 x i8], [4 x i8]* @.str82, i32 0, i32 0
  %232 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str82.c, i8* %231, i64 3)
  %233 = call i1 @nyx_string_equals(%nyx_string* %230, %nyx_string* %232)
  br i1 %233, label %sc_or_end78, label %sc_or_rhs77
sc_or_rhs77:
  %234 = load %nyx_string*, %nyx_string** %30
  %235 = getelementptr [7 x i8], [7 x i8]* @.str83, i32 0, i32 0
  %236 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str83.c, i8* %235, i64 6)
  %237 = call i1 @nyx_string_equals(%nyx_string* %234, %nyx_string* %236)
  store i1 %237, i1* %229
  br label %sc_or_end78
sc_or_end78:
  %238 = load i1, i1* %229
  br i1 %238, label %sc_or_end80, label %sc_or_rhs79
sc_or_rhs79:
  %239 = load %nyx_string*, %nyx_string** %30
  %240 = getelementptr [6 x i8], [6 x i8]* @.str84, i32 0, i32 0
  %241 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str84.c, i8* %240, i64 5)
  %242 = call i1 @nyx_string_equals(%nyx_string* %239, %nyx_string* %241)
  store i1 %242, i1* %228
  br label %sc_or_end80
sc_or_end80:
  %243 = load i1, i1* %228
  br i1 %243, label %sc_or_end82, label %sc_or_rhs81
sc_or_rhs81:
  %244 = load %nyx_string*, %nyx_string** %30
  %245 = getelementptr [6 x i8], [6 x i8]* @.str85, i32 0, i32 0
  %246 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str85.c, i8* %245, i64 5)
  %247 = call i1 @nyx_string_equals(%nyx_string* %244, %nyx_string* %246)
  store i1 %247, i1* %227
  br label %sc_or_end82
sc_or_end82:
  %248 = load i1, i1* %227
  br i1 %248, label %then83, label %else84
then83:
  ret i1 1
else84:
  br label %merge85
merge85:
  %249 = alloca i1
  store i1 true, i1* %249
  %250 = alloca i1
  store i1 true, i1* %250
  %251 = alloca i1
  store i1 true, i1* %251
  %252 = alloca i1
  store i1 true, i1* %252
  %253 = load %nyx_string*, %nyx_string** %30
  %254 = getelementptr [4 x i8], [4 x i8]* @.str86, i32 0, i32 0
  %255 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str86.c, i8* %254, i64 3)
  %256 = call i1 @nyx_string_equals(%nyx_string* %253, %nyx_string* %255)
  br i1 %256, label %sc_or_end87, label %sc_or_rhs86
sc_or_rhs86:
  %257 = load %nyx_string*, %nyx_string** %30
  %258 = getelementptr [6 x i8], [6 x i8]* @.str87, i32 0, i32 0
  %259 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str87.c, i8* %258, i64 5)
  %260 = call i1 @nyx_string_equals(%nyx_string* %257, %nyx_string* %259)
  store i1 %260, i1* %252
  br label %sc_or_end87
sc_or_end87:
  %261 = load i1, i1* %252
  br i1 %261, label %sc_or_end89, label %sc_or_rhs88
sc_or_rhs88:
  %262 = load %nyx_string*, %nyx_string** %30
  %263 = getelementptr [6 x i8], [6 x i8]* @.str88, i32 0, i32 0
  %264 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str88.c, i8* %263, i64 5)
  %265 = call i1 @nyx_string_equals(%nyx_string* %262, %nyx_string* %264)
  store i1 %265, i1* %251
  br label %sc_or_end89
sc_or_end89:
  %266 = load i1, i1* %251
  br i1 %266, label %sc_or_end91, label %sc_or_rhs90
sc_or_rhs90:
  %267 = load %nyx_string*, %nyx_string** %30
  %268 = getelementptr [6 x i8], [6 x i8]* @.str89, i32 0, i32 0
  %269 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str89.c, i8* %268, i64 5)
  %270 = call i1 @nyx_string_equals(%nyx_string* %267, %nyx_string* %269)
  store i1 %270, i1* %250
  br label %sc_or_end91
sc_or_end91:
  %271 = load i1, i1* %250
  br i1 %271, label %sc_or_end93, label %sc_or_rhs92
sc_or_rhs92:
  %272 = load %nyx_string*, %nyx_string** %30
  %273 = getelementptr [6 x i8], [6 x i8]* @.str90, i32 0, i32 0
  %274 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str90.c, i8* %273, i64 5)
  %275 = call i1 @nyx_string_equals(%nyx_string* %272, %nyx_string* %274)
  store i1 %275, i1* %249
  br label %sc_or_end93
sc_or_end93:
  %276 = load i1, i1* %249
  br i1 %276, label %then94, label %else95
then94:
  ret i1 1
else95:
  br label %merge96
merge96:
  ret i1 0
}

define internal %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %type.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = alloca %nyx_string*
  store %nyx_string* %type.param, %nyx_string** %30
  %31 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %32 = alloca %Token
  store %Token %31, %Token* %32
  %33 = load %Token, %Token* %32
  %34 = call %nyx_string* @get_token_type(%Token %33)
  %35 = load %nyx_string*, %nyx_string** %30
  %36 = call i1 @nyx_string_equals(%nyx_string* %34, %nyx_string* %35)
  br i1 %36, label %then0, label %else1
then0:
  %37 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  ret %Token %37
else1:
  br label %merge2
merge2:
  %38 = load %Token, %Token* %32
  %39 = call i64 @get_token_line(%Token %38)
  %40 = alloca i64
  store i64 %39, i64* %40
  %41 = load %Token, %Token* %32
  %42 = call i64 @get_token_column(%Token %41)
  %43 = alloca i64
  store i64 %42, i64* %43
  %44 = load %Token, %Token* %32
  %45 = call %nyx_string* @get_token_value(%Token %44)
  %46 = alloca %nyx_string*
  store %nyx_string* %45, %nyx_string** %46
  %47 = load %Token, %Token* %32
  %48 = call %nyx_string* @get_token_type(%Token %47)
  %49 = alloca %nyx_string*
  store %nyx_string* %48, %nyx_string** %49
  %50 = alloca i1
  store i1 false, i1* %50
  %51 = load %nyx_string*, %nyx_string** %30
  %52 = getelementptr [11 x i8], [11 x i8]* @.str91, i32 0, i32 0
  %53 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str91.c, i8* %52, i64 10)
  %54 = call i1 @nyx_string_equals(%nyx_string* %51, %nyx_string* %53)
  br i1 %54, label %sc_and_rhs3, label %sc_and_end4
sc_and_rhs3:
  %55 = load %nyx_string*, %nyx_string** %49
  %56 = call i1 @parse__is_keyword_token(%SharedEnv_parse* %env.param, %nyx_string* %55)
  store i1 %56, i1* %50
  br label %sc_and_end4
sc_and_end4:
  %57 = load i1, i1* %50
  br i1 %57, label %then5, label %else6
then5:
  %58 = getelementptr [8 x i8], [8 x i8]* @.str92, i32 0, i32 0
  %59 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str92.c, i8* %58, i64 7)
  %60 = load i64, i64* %40
  %61 = load i64, i64* %43
  %62 = getelementptr [30 x i8], [30 x i8]* @.str93, i32 0, i32 0
  %63 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str93.c, i8* %62, i64 29)
  %64 = load %nyx_string*, %nyx_string** %46
  %65 = call %nyx_string* @nyx_string_concat(%nyx_string* %63, %nyx_string* %64)
  %66 = getelementptr [21 x i8], [21 x i8]* @.str94, i32 0, i32 0
  %67 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str94.c, i8* %66, i64 20)
  %68 = call %nyx_string* @nyx_string_concat(%nyx_string* %65, %nyx_string* %67)
  %69 = getelementptr [21 x i8], [21 x i8]* @.str95, i32 0, i32 0
  %70 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str95.c, i8* %69, i64 20)
  %71 = load %nyx_string*, %nyx_string** %46
  %72 = call %nyx_string* @nyx_string_concat(%nyx_string* %70, %nyx_string* %71)
  %73 = getelementptr [19 x i8], [19 x i8]* @.str96, i32 0, i32 0
  %74 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str96.c, i8* %73, i64 18)
  %75 = call %nyx_string* @nyx_string_concat(%nyx_string* %72, %nyx_string* %74)
  %76 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %68, %nyx_string* %75)
  %77 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %59, i64 %60, i64 %61, %nyx_string* %76)
  br label %merge7
else6:
  %78 = getelementptr [8 x i8], [8 x i8]* @.str97, i32 0, i32 0
  %79 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str97.c, i8* %78, i64 7)
  %80 = load i64, i64* %40
  %81 = load i64, i64* %43
  %82 = getelementptr [14 x i8], [14 x i8]* @.str98, i32 0, i32 0
  %83 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str98.c, i8* %82, i64 13)
  %84 = load %nyx_string*, %nyx_string** %30
  %85 = call %nyx_string* @nyx_string_concat(%nyx_string* %83, %nyx_string* %84)
  %86 = getelementptr [16 x i8], [16 x i8]* @.str99, i32 0, i32 0
  %87 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str99.c, i8* %86, i64 15)
  %88 = call %nyx_string* @nyx_string_concat(%nyx_string* %85, %nyx_string* %87)
  %89 = load %nyx_string*, %nyx_string** %46
  %90 = call %nyx_string* @nyx_string_concat(%nyx_string* %88, %nyx_string* %89)
  %91 = getelementptr [4 x i8], [4 x i8]* @.str100, i32 0, i32 0
  %92 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str100.c, i8* %91, i64 3)
  %93 = call %nyx_string* @nyx_string_concat(%nyx_string* %90, %nyx_string* %92)
  %94 = load %nyx_string*, %nyx_string** %49
  %95 = call %nyx_string* @nyx_string_concat(%nyx_string* %93, %nyx_string* %94)
  %96 = getelementptr [2 x i8], [2 x i8]* @.str101, i32 0, i32 0
  %97 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str101.c, i8* %96, i64 1)
  %98 = call %nyx_string* @nyx_string_concat(%nyx_string* %95, %nyx_string* %97)
  %99 = getelementptr [11 x i8], [11 x i8]* @.str102, i32 0, i32 0
  %100 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str102.c, i8* %99, i64 10)
  %101 = load %nyx_string*, %nyx_string** %30
  %102 = call %nyx_string* @nyx_string_concat(%nyx_string* %100, %nyx_string* %101)
  %103 = getelementptr [11 x i8], [11 x i8]* @.str103, i32 0, i32 0
  %104 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str103.c, i8* %103, i64 10)
  %105 = call %nyx_string* @nyx_string_concat(%nyx_string* %102, %nyx_string* %104)
  %106 = load %nyx_string*, %nyx_string** %46
  %107 = call %nyx_string* @nyx_string_concat(%nyx_string* %105, %nyx_string* %106)
  %108 = getelementptr [4 x i8], [4 x i8]* @.str104, i32 0, i32 0
  %109 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str104.c, i8* %108, i64 3)
  %110 = call %nyx_string* @nyx_string_concat(%nyx_string* %107, %nyx_string* %109)
  %111 = load %nyx_string*, %nyx_string** %49
  %112 = call %nyx_string* @nyx_string_concat(%nyx_string* %110, %nyx_string* %111)
  %113 = getelementptr [2 x i8], [2 x i8]* @.str105, i32 0, i32 0
  %114 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str105.c, i8* %113, i64 1)
  %115 = call %nyx_string* @nyx_string_concat(%nyx_string* %112, %nyx_string* %114)
  %116 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %98, %nyx_string* %115)
  %117 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %79, i64 %80, i64 %81, %nyx_string* %116)
  br label %merge7
merge7:
  %118 = alloca i1
  store i1 false, i1* %118
  %119 = alloca i1
  store i1 false, i1* %119
  %120 = alloca i1
  store i1 false, i1* %120
  %121 = load %nyx_string*, %nyx_string** %49
  %122 = getelementptr [4 x i8], [4 x i8]* @.str106, i32 0, i32 0
  %123 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str106.c, i8* %122, i64 3)
  %124 = call i1 @nyx_string_equals(%nyx_string* %121, %nyx_string* %123)
  %125 = xor i1 %124, true
  br i1 %125, label %sc_and_rhs8, label %sc_and_end9
sc_and_rhs8:
  %126 = load %nyx_string*, %nyx_string** %49
  %127 = getelementptr [12 x i8], [12 x i8]* @.str107, i32 0, i32 0
  %128 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str107.c, i8* %127, i64 11)
  %129 = call i1 @nyx_string_equals(%nyx_string* %126, %nyx_string* %128)
  %130 = xor i1 %129, true
  store i1 %130, i1* %120
  br label %sc_and_end9
sc_and_end9:
  %131 = load i1, i1* %120
  br i1 %131, label %sc_and_rhs10, label %sc_and_end11
sc_and_rhs10:
  %132 = load %nyx_string*, %nyx_string** %49
  %133 = getelementptr [12 x i8], [12 x i8]* @.str108, i32 0, i32 0
  %134 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str108.c, i8* %133, i64 11)
  %135 = call i1 @nyx_string_equals(%nyx_string* %132, %nyx_string* %134)
  %136 = xor i1 %135, true
  store i1 %136, i1* %119
  br label %sc_and_end11
sc_and_end11:
  %137 = load i1, i1* %119
  br i1 %137, label %sc_and_rhs12, label %sc_and_end13
sc_and_rhs12:
  %138 = load %nyx_string*, %nyx_string** %49
  %139 = getelementptr [14 x i8], [14 x i8]* @.str109, i32 0, i32 0
  %140 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str109.c, i8* %139, i64 13)
  %141 = call i1 @nyx_string_equals(%nyx_string* %138, %nyx_string* %140)
  %142 = xor i1 %141, true
  store i1 %142, i1* %118
  br label %sc_and_end13
sc_and_end13:
  %143 = load i1, i1* %118
  br i1 %143, label %then14, label %else15
then14:
  %144 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge16
else15:
  br label %merge16
merge16:
  %145 = load %Token, %Token* %32
  ret %Token %145
}

define internal i1 @parse__is_on_new_line(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = load i64, i64* %4
  %31 = icmp slt i64 %30, 1
  br i1 %31, label %then0, label %else1
then0:
  ret i1 0
else1:
  br label %merge2
merge2:
  %32 = load { i64, i8* }*, { i64, i8* }** %3
  %33 = load i64, i64* %4
  %34 = sub i64 %33, 1
  %35 = call i64 @nyx_array_get({ i64, i8* }* %32, i64 %34)
  %36 = inttoptr i64 %35 to %Token*
  %37 = load %Token, %Token* %36
  %38 = alloca %Token
  store %Token %37, %Token* %38
  %39 = load { i64, i8* }*, { i64, i8* }** %3
  %40 = load i64, i64* %4
  %41 = call i64 @nyx_array_get({ i64, i8* }* %39, i64 %40)
  %42 = inttoptr i64 %41 to %Token*
  %43 = load %Token, %Token* %42
  %44 = alloca %Token
  store %Token %43, %Token* %44
  %45 = load %Token, %Token* %44
  %46 = call i64 @get_token_line(%Token %45)
  %47 = load %Token, %Token* %38
  %48 = call i64 @get_token_line(%Token %47)
  %49 = icmp sgt i64 %46, %48
  ret i1 %49
}

define internal { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = call { i64, i8* }* @parse__parse_logical_or(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %30
}

define internal { i64, i8* }* @parse__parse_logical_or(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = call { i64, i8* }* @parse__parse_logical_and(%SharedEnv_parse* %env.param)
  %31 = alloca { i64, i8* }*
  store { i64, i8* }* %30, { i64, i8* }** %31
  %32 = alloca i1
  store i1 0, i1* %32
  %33 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %34 = load i1, i1* %32
  %35 = xor i1 %34, true
  br i1 %35, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %33)
  %36 = alloca i1
  store i1 true, i1* %36
  %37 = getelementptr [6 x i8], [6 x i8]* @.str110, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str110.c, i8* %37, i64 5)
  %39 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %38)
  br i1 %39, label %sc_or_end4, label %sc_or_rhs3
sc_or_rhs3:
  %40 = getelementptr [3 x i8], [3 x i8]* @.str111, i32 0, i32 0
  %41 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str111.c, i8* %40, i64 2)
  %42 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %41)
  store i1 %42, i1* %36
  br label %sc_or_end4
sc_or_end4:
  %43 = load i1, i1* %36
  br i1 %43, label %then5, label %else6
then5:
  %44 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %45 = alloca %Token
  store %Token %44, %Token* %45
  %46 = call { i64, i8* }* @parse__parse_logical_and(%SharedEnv_parse* %env.param)
  %47 = alloca { i64, i8* }*
  store { i64, i8* }* %46, { i64, i8* }** %47
  %48 = getelementptr [6 x i8], [6 x i8]* @.str112, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str112.c, i8* %48, i64 5)
  %50 = call { i64, i8* }* @nyx_array_new_ptr()
  %51 = load %Token, %Token* %45
  %52 = call %nyx_string* @get_token_type(%Token %51)
  %53 = ptrtoint %nyx_string* %52 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %50, i64 %53, i64 2)
  %54 = load { i64, i8* }*, { i64, i8* }** %31
  %55 = ptrtoint { i64, i8* }* %54 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %50, i64 %55, i64 5)
  %56 = load { i64, i8* }*, { i64, i8* }** %47
  %57 = ptrtoint { i64, i8* }* %56 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %50, i64 %57, i64 5)
  %58 = call { i64, i8* }* @make_astnode(%nyx_string* %49, { i64, i8* }* %50)
  store { i64, i8* }* %58, { i64, i8* }** %31
  br label %merge7
else6:
  store i1 1, i1* %32
  br label %merge7
merge7:
  br label %while_cond0
while_end2:
  %59 = load { i64, i8* }*, { i64, i8* }** %31
  ret { i64, i8* }* %59
}

define internal { i64, i8* }* @parse__parse_logical_and(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = call { i64, i8* }* @parse__parse_bitwise_or(%SharedEnv_parse* %env.param)
  %31 = alloca { i64, i8* }*
  store { i64, i8* }* %30, { i64, i8* }** %31
  %32 = alloca i1
  store i1 0, i1* %32
  %33 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %34 = load i1, i1* %32
  %35 = xor i1 %34, true
  br i1 %35, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %33)
  %36 = alloca i1
  store i1 true, i1* %36
  %37 = getelementptr [8 x i8], [8 x i8]* @.str113, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str113.c, i8* %37, i64 7)
  %39 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %38)
  br i1 %39, label %sc_or_end4, label %sc_or_rhs3
sc_or_rhs3:
  %40 = getelementptr [4 x i8], [4 x i8]* @.str114, i32 0, i32 0
  %41 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str114.c, i8* %40, i64 3)
  %42 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %41)
  store i1 %42, i1* %36
  br label %sc_or_end4
sc_or_end4:
  %43 = load i1, i1* %36
  br i1 %43, label %then5, label %else6
then5:
  %44 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %45 = alloca %Token
  store %Token %44, %Token* %45
  %46 = call { i64, i8* }* @parse__parse_bitwise_or(%SharedEnv_parse* %env.param)
  %47 = alloca { i64, i8* }*
  store { i64, i8* }* %46, { i64, i8* }** %47
  %48 = getelementptr [6 x i8], [6 x i8]* @.str115, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str115.c, i8* %48, i64 5)
  %50 = call { i64, i8* }* @nyx_array_new_ptr()
  %51 = load %Token, %Token* %45
  %52 = call %nyx_string* @get_token_type(%Token %51)
  %53 = ptrtoint %nyx_string* %52 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %50, i64 %53, i64 2)
  %54 = load { i64, i8* }*, { i64, i8* }** %31
  %55 = ptrtoint { i64, i8* }* %54 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %50, i64 %55, i64 5)
  %56 = load { i64, i8* }*, { i64, i8* }** %47
  %57 = ptrtoint { i64, i8* }* %56 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %50, i64 %57, i64 5)
  %58 = call { i64, i8* }* @make_astnode(%nyx_string* %49, { i64, i8* }* %50)
  store { i64, i8* }* %58, { i64, i8* }** %31
  br label %merge7
else6:
  store i1 1, i1* %32
  br label %merge7
merge7:
  br label %while_cond0
while_end2:
  %59 = load { i64, i8* }*, { i64, i8* }** %31
  ret { i64, i8* }* %59
}

define internal { i64, i8* }* @parse__parse_bitwise_or(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = call { i64, i8* }* @parse__parse_bitwise_xor(%SharedEnv_parse* %env.param)
  %31 = alloca { i64, i8* }*
  store { i64, i8* }* %30, { i64, i8* }** %31
  %32 = alloca i1
  store i1 0, i1* %32
  %33 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %34 = load i1, i1* %32
  %35 = xor i1 %34, true
  br i1 %35, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %33)
  %36 = getelementptr [5 x i8], [5 x i8]* @.str116, i32 0, i32 0
  %37 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str116.c, i8* %36, i64 4)
  %38 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %37)
  br i1 %38, label %then3, label %else4
then3:
  %39 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %40 = alloca %Token
  store %Token %39, %Token* %40
  %41 = call { i64, i8* }* @parse__parse_bitwise_xor(%SharedEnv_parse* %env.param)
  %42 = alloca { i64, i8* }*
  store { i64, i8* }* %41, { i64, i8* }** %42
  %43 = getelementptr [6 x i8], [6 x i8]* @.str117, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str117.c, i8* %43, i64 5)
  %45 = call { i64, i8* }* @nyx_array_new_ptr()
  %46 = load %Token, %Token* %40
  %47 = call %nyx_string* @get_token_type(%Token %46)
  %48 = ptrtoint %nyx_string* %47 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %45, i64 %48, i64 2)
  %49 = load { i64, i8* }*, { i64, i8* }** %31
  %50 = ptrtoint { i64, i8* }* %49 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %45, i64 %50, i64 5)
  %51 = load { i64, i8* }*, { i64, i8* }** %42
  %52 = ptrtoint { i64, i8* }* %51 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %45, i64 %52, i64 5)
  %53 = call { i64, i8* }* @make_astnode(%nyx_string* %44, { i64, i8* }* %45)
  store { i64, i8* }* %53, { i64, i8* }** %31
  br label %merge5
else4:
  store i1 1, i1* %32
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %54 = load { i64, i8* }*, { i64, i8* }** %31
  ret { i64, i8* }* %54
}

define internal { i64, i8* }* @parse__parse_bitwise_xor(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = call { i64, i8* }* @parse__parse_bitwise_and(%SharedEnv_parse* %env.param)
  %31 = alloca { i64, i8* }*
  store { i64, i8* }* %30, { i64, i8* }** %31
  %32 = alloca i1
  store i1 0, i1* %32
  %33 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %34 = load i1, i1* %32
  %35 = xor i1 %34, true
  br i1 %35, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %33)
  %36 = getelementptr [6 x i8], [6 x i8]* @.str118, i32 0, i32 0
  %37 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str118.c, i8* %36, i64 5)
  %38 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %37)
  br i1 %38, label %then3, label %else4
then3:
  %39 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %40 = alloca %Token
  store %Token %39, %Token* %40
  %41 = call { i64, i8* }* @parse__parse_bitwise_and(%SharedEnv_parse* %env.param)
  %42 = alloca { i64, i8* }*
  store { i64, i8* }* %41, { i64, i8* }** %42
  %43 = getelementptr [6 x i8], [6 x i8]* @.str119, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str119.c, i8* %43, i64 5)
  %45 = call { i64, i8* }* @nyx_array_new_ptr()
  %46 = load %Token, %Token* %40
  %47 = call %nyx_string* @get_token_type(%Token %46)
  %48 = ptrtoint %nyx_string* %47 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %45, i64 %48, i64 2)
  %49 = load { i64, i8* }*, { i64, i8* }** %31
  %50 = ptrtoint { i64, i8* }* %49 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %45, i64 %50, i64 5)
  %51 = load { i64, i8* }*, { i64, i8* }** %42
  %52 = ptrtoint { i64, i8* }* %51 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %45, i64 %52, i64 5)
  %53 = call { i64, i8* }* @make_astnode(%nyx_string* %44, { i64, i8* }* %45)
  store { i64, i8* }* %53, { i64, i8* }** %31
  br label %merge5
else4:
  store i1 1, i1* %32
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %54 = load { i64, i8* }*, { i64, i8* }** %31
  ret { i64, i8* }* %54
}

define internal { i64, i8* }* @parse__parse_bitwise_and(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = call { i64, i8* }* @parse__parse_equality(%SharedEnv_parse* %env.param)
  %31 = alloca { i64, i8* }*
  store { i64, i8* }* %30, { i64, i8* }** %31
  %32 = alloca i1
  store i1 0, i1* %32
  %33 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %34 = load i1, i1* %32
  %35 = xor i1 %34, true
  br i1 %35, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %33)
  %36 = getelementptr [4 x i8], [4 x i8]* @.str120, i32 0, i32 0
  %37 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str120.c, i8* %36, i64 3)
  %38 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %37)
  br i1 %38, label %then3, label %else4
then3:
  %39 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %40 = alloca %Token
  store %Token %39, %Token* %40
  %41 = call { i64, i8* }* @parse__parse_equality(%SharedEnv_parse* %env.param)
  %42 = alloca { i64, i8* }*
  store { i64, i8* }* %41, { i64, i8* }** %42
  %43 = getelementptr [6 x i8], [6 x i8]* @.str121, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str121.c, i8* %43, i64 5)
  %45 = call { i64, i8* }* @nyx_array_new_ptr()
  %46 = load %Token, %Token* %40
  %47 = call %nyx_string* @get_token_type(%Token %46)
  %48 = ptrtoint %nyx_string* %47 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %45, i64 %48, i64 2)
  %49 = load { i64, i8* }*, { i64, i8* }** %31
  %50 = ptrtoint { i64, i8* }* %49 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %45, i64 %50, i64 5)
  %51 = load { i64, i8* }*, { i64, i8* }** %42
  %52 = ptrtoint { i64, i8* }* %51 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %45, i64 %52, i64 5)
  %53 = call { i64, i8* }* @make_astnode(%nyx_string* %44, { i64, i8* }* %45)
  store { i64, i8* }* %53, { i64, i8* }** %31
  br label %merge5
else4:
  store i1 1, i1* %32
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %54 = load { i64, i8* }*, { i64, i8* }** %31
  ret { i64, i8* }* %54
}

define internal { i64, i8* }* @parse__parse_equality(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = call { i64, i8* }* @parse__parse_comparison(%SharedEnv_parse* %env.param)
  %31 = alloca { i64, i8* }*
  store { i64, i8* }* %30, { i64, i8* }** %31
  %32 = alloca i1
  store i1 0, i1* %32
  %33 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %34 = load i1, i1* %32
  %35 = xor i1 %34, true
  br i1 %35, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %33)
  %36 = alloca i1
  store i1 true, i1* %36
  %37 = getelementptr [12 x i8], [12 x i8]* @.str122, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str122.c, i8* %37, i64 11)
  %39 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %38)
  br i1 %39, label %sc_or_end4, label %sc_or_rhs3
sc_or_rhs3:
  %40 = getelementptr [10 x i8], [10 x i8]* @.str123, i32 0, i32 0
  %41 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str123.c, i8* %40, i64 9)
  %42 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %41)
  store i1 %42, i1* %36
  br label %sc_or_end4
sc_or_end4:
  %43 = load i1, i1* %36
  br i1 %43, label %then5, label %else6
then5:
  %44 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %45 = alloca %Token
  store %Token %44, %Token* %45
  %46 = call { i64, i8* }* @parse__parse_comparison(%SharedEnv_parse* %env.param)
  %47 = alloca { i64, i8* }*
  store { i64, i8* }* %46, { i64, i8* }** %47
  %48 = getelementptr [6 x i8], [6 x i8]* @.str124, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str124.c, i8* %48, i64 5)
  %50 = call { i64, i8* }* @nyx_array_new_ptr()
  %51 = load %Token, %Token* %45
  %52 = call %nyx_string* @get_token_type(%Token %51)
  %53 = ptrtoint %nyx_string* %52 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %50, i64 %53, i64 2)
  %54 = load { i64, i8* }*, { i64, i8* }** %31
  %55 = ptrtoint { i64, i8* }* %54 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %50, i64 %55, i64 5)
  %56 = load { i64, i8* }*, { i64, i8* }** %47
  %57 = ptrtoint { i64, i8* }* %56 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %50, i64 %57, i64 5)
  %58 = call { i64, i8* }* @make_astnode(%nyx_string* %49, { i64, i8* }* %50)
  store { i64, i8* }* %58, { i64, i8* }** %31
  br label %merge7
else6:
  store i1 1, i1* %32
  br label %merge7
merge7:
  br label %while_cond0
while_end2:
  %59 = load { i64, i8* }*, { i64, i8* }** %31
  ret { i64, i8* }* %59
}

define internal { i64, i8* }* @parse__parse_comparison(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = call { i64, i8* }* @parse__parse_range(%SharedEnv_parse* %env.param)
  %31 = alloca { i64, i8* }*
  store { i64, i8* }* %30, { i64, i8* }** %31
  %32 = alloca i1
  store i1 0, i1* %32
  %33 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %34 = load i1, i1* %32
  %35 = xor i1 %34, true
  br i1 %35, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %33)
  %36 = alloca i1
  store i1 true, i1* %36
  %37 = alloca i1
  store i1 true, i1* %37
  %38 = alloca i1
  store i1 true, i1* %38
  %39 = getelementptr [5 x i8], [5 x i8]* @.str125, i32 0, i32 0
  %40 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str125.c, i8* %39, i64 4)
  %41 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %40)
  br i1 %41, label %sc_or_end4, label %sc_or_rhs3
sc_or_rhs3:
  %42 = getelementptr [8 x i8], [8 x i8]* @.str126, i32 0, i32 0
  %43 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str126.c, i8* %42, i64 7)
  %44 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %43)
  store i1 %44, i1* %38
  br label %sc_or_end4
sc_or_end4:
  %45 = load i1, i1* %38
  br i1 %45, label %sc_or_end6, label %sc_or_rhs5
sc_or_rhs5:
  %46 = getelementptr [11 x i8], [11 x i8]* @.str127, i32 0, i32 0
  %47 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str127.c, i8* %46, i64 10)
  %48 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %47)
  store i1 %48, i1* %37
  br label %sc_or_end6
sc_or_end6:
  %49 = load i1, i1* %37
  br i1 %49, label %sc_or_end8, label %sc_or_rhs7
sc_or_rhs7:
  %50 = getelementptr [14 x i8], [14 x i8]* @.str128, i32 0, i32 0
  %51 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str128.c, i8* %50, i64 13)
  %52 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %51)
  store i1 %52, i1* %36
  br label %sc_or_end8
sc_or_end8:
  %53 = load i1, i1* %36
  br i1 %53, label %then9, label %else10
then9:
  %54 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %55 = alloca %Token
  store %Token %54, %Token* %55
  %56 = call { i64, i8* }* @parse__parse_range(%SharedEnv_parse* %env.param)
  %57 = alloca { i64, i8* }*
  store { i64, i8* }* %56, { i64, i8* }** %57
  %58 = getelementptr [6 x i8], [6 x i8]* @.str129, i32 0, i32 0
  %59 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str129.c, i8* %58, i64 5)
  %60 = call { i64, i8* }* @nyx_array_new_ptr()
  %61 = load %Token, %Token* %55
  %62 = call %nyx_string* @get_token_type(%Token %61)
  %63 = ptrtoint %nyx_string* %62 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %60, i64 %63, i64 2)
  %64 = load { i64, i8* }*, { i64, i8* }** %31
  %65 = ptrtoint { i64, i8* }* %64 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %60, i64 %65, i64 5)
  %66 = load { i64, i8* }*, { i64, i8* }** %57
  %67 = ptrtoint { i64, i8* }* %66 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %60, i64 %67, i64 5)
  %68 = call { i64, i8* }* @make_astnode(%nyx_string* %59, { i64, i8* }* %60)
  store { i64, i8* }* %68, { i64, i8* }** %31
  br label %merge11
else10:
  store i1 1, i1* %32
  br label %merge11
merge11:
  br label %while_cond0
while_end2:
  %69 = load { i64, i8* }*, { i64, i8* }** %31
  ret { i64, i8* }* %69
}

define internal { i64, i8* }* @parse__parse_range(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = call { i64, i8* }* @parse__parse_addition(%SharedEnv_parse* %env.param)
  %31 = alloca { i64, i8* }*
  store { i64, i8* }* %30, { i64, i8* }** %31
  %32 = getelementptr [16 x i8], [16 x i8]* @.str130, i32 0, i32 0
  %33 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str130.c, i8* %32, i64 15)
  %34 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %33)
  br i1 %34, label %then0, label %else1
then0:
  %35 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %36 = call { i64, i8* }* @parse__parse_addition(%SharedEnv_parse* %env.param)
  %37 = alloca { i64, i8* }*
  store { i64, i8* }* %36, { i64, i8* }** %37
  %38 = getelementptr [6 x i8], [6 x i8]* @.str131, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str131.c, i8* %38, i64 5)
  %40 = call { i64, i8* }* @nyx_array_new_ptr()
  %41 = load { i64, i8* }*, { i64, i8* }** %31
  %42 = ptrtoint { i64, i8* }* %41 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %40, i64 %42, i64 5)
  %43 = load { i64, i8* }*, { i64, i8* }** %37
  %44 = ptrtoint { i64, i8* }* %43 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %40, i64 %44, i64 5)
  %45 = getelementptr [5 x i8], [5 x i8]* @.str132, i32 0, i32 0
  %46 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str132.c, i8* %45, i64 4)
  %47 = ptrtoint %nyx_string* %46 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %40, i64 %47, i64 2)
  %48 = call { i64, i8* }* @make_astnode(%nyx_string* %39, { i64, i8* }* %40)
  ret { i64, i8* }* %48
else1:
  br label %merge2
merge2:
  %49 = getelementptr [6 x i8], [6 x i8]* @.str133, i32 0, i32 0
  %50 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str133.c, i8* %49, i64 5)
  %51 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %50)
  br i1 %51, label %then3, label %else4
then3:
  %52 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %53 = call { i64, i8* }* @parse__parse_addition(%SharedEnv_parse* %env.param)
  %54 = alloca { i64, i8* }*
  store { i64, i8* }* %53, { i64, i8* }** %54
  %55 = getelementptr [6 x i8], [6 x i8]* @.str134, i32 0, i32 0
  %56 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str134.c, i8* %55, i64 5)
  %57 = call { i64, i8* }* @nyx_array_new_ptr()
  %58 = load { i64, i8* }*, { i64, i8* }** %31
  %59 = ptrtoint { i64, i8* }* %58 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %57, i64 %59, i64 5)
  %60 = load { i64, i8* }*, { i64, i8* }** %54
  %61 = ptrtoint { i64, i8* }* %60 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %57, i64 %61, i64 5)
  %62 = getelementptr [6 x i8], [6 x i8]* @.str135, i32 0, i32 0
  %63 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str135.c, i8* %62, i64 5)
  %64 = ptrtoint %nyx_string* %63 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %57, i64 %64, i64 2)
  %65 = call { i64, i8* }* @make_astnode(%nyx_string* %56, { i64, i8* }* %57)
  ret { i64, i8* }* %65
else4:
  br label %merge5
merge5:
  %66 = load { i64, i8* }*, { i64, i8* }** %31
  ret { i64, i8* }* %66
}

define internal { i64, i8* }* @parse__parse_addition(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = call { i64, i8* }* @parse__parse_shift(%SharedEnv_parse* %env.param)
  %31 = alloca { i64, i8* }*
  store { i64, i8* }* %30, { i64, i8* }** %31
  %32 = alloca i1
  store i1 0, i1* %32
  %33 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %34 = load i1, i1* %32
  %35 = xor i1 %34, true
  br i1 %35, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %33)
  %36 = alloca i1
  store i1 true, i1* %36
  %37 = getelementptr [5 x i8], [5 x i8]* @.str136, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str136.c, i8* %37, i64 4)
  %39 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %38)
  br i1 %39, label %sc_or_end4, label %sc_or_rhs3
sc_or_rhs3:
  %40 = getelementptr [6 x i8], [6 x i8]* @.str137, i32 0, i32 0
  %41 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str137.c, i8* %40, i64 5)
  %42 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %41)
  store i1 %42, i1* %36
  br label %sc_or_end4
sc_or_end4:
  %43 = load i1, i1* %36
  br i1 %43, label %then5, label %else6
then5:
  %44 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %45 = alloca %Token
  store %Token %44, %Token* %45
  %46 = call { i64, i8* }* @parse__parse_shift(%SharedEnv_parse* %env.param)
  %47 = alloca { i64, i8* }*
  store { i64, i8* }* %46, { i64, i8* }** %47
  %48 = getelementptr [6 x i8], [6 x i8]* @.str138, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str138.c, i8* %48, i64 5)
  %50 = call { i64, i8* }* @nyx_array_new_ptr()
  %51 = load %Token, %Token* %45
  %52 = call %nyx_string* @get_token_type(%Token %51)
  %53 = ptrtoint %nyx_string* %52 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %50, i64 %53, i64 2)
  %54 = load { i64, i8* }*, { i64, i8* }** %31
  %55 = ptrtoint { i64, i8* }* %54 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %50, i64 %55, i64 5)
  %56 = load { i64, i8* }*, { i64, i8* }** %47
  %57 = ptrtoint { i64, i8* }* %56 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %50, i64 %57, i64 5)
  %58 = call { i64, i8* }* @make_astnode(%nyx_string* %49, { i64, i8* }* %50)
  store { i64, i8* }* %58, { i64, i8* }** %31
  br label %merge7
else6:
  store i1 1, i1* %32
  br label %merge7
merge7:
  br label %while_cond0
while_end2:
  %59 = load { i64, i8* }*, { i64, i8* }** %31
  ret { i64, i8* }* %59
}

define internal { i64, i8* }* @parse__parse_shift(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = call { i64, i8* }* @parse__parse_multiplication(%SharedEnv_parse* %env.param)
  %31 = alloca { i64, i8* }*
  store { i64, i8* }* %30, { i64, i8* }** %31
  %32 = alloca i1
  store i1 0, i1* %32
  %33 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %34 = load i1, i1* %32
  %35 = xor i1 %34, true
  br i1 %35, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %33)
  %36 = alloca i1
  store i1 true, i1* %36
  %37 = getelementptr [11 x i8], [11 x i8]* @.str139, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str139.c, i8* %37, i64 10)
  %39 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %38)
  br i1 %39, label %sc_or_end4, label %sc_or_rhs3
sc_or_rhs3:
  %40 = getelementptr [12 x i8], [12 x i8]* @.str140, i32 0, i32 0
  %41 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str140.c, i8* %40, i64 11)
  %42 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %41)
  store i1 %42, i1* %36
  br label %sc_or_end4
sc_or_end4:
  %43 = load i1, i1* %36
  br i1 %43, label %then5, label %else6
then5:
  %44 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %45 = alloca %Token
  store %Token %44, %Token* %45
  %46 = call { i64, i8* }* @parse__parse_multiplication(%SharedEnv_parse* %env.param)
  %47 = alloca { i64, i8* }*
  store { i64, i8* }* %46, { i64, i8* }** %47
  %48 = getelementptr [6 x i8], [6 x i8]* @.str141, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str141.c, i8* %48, i64 5)
  %50 = call { i64, i8* }* @nyx_array_new_ptr()
  %51 = load %Token, %Token* %45
  %52 = call %nyx_string* @get_token_type(%Token %51)
  %53 = ptrtoint %nyx_string* %52 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %50, i64 %53, i64 2)
  %54 = load { i64, i8* }*, { i64, i8* }** %31
  %55 = ptrtoint { i64, i8* }* %54 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %50, i64 %55, i64 5)
  %56 = load { i64, i8* }*, { i64, i8* }** %47
  %57 = ptrtoint { i64, i8* }* %56 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %50, i64 %57, i64 5)
  %58 = call { i64, i8* }* @make_astnode(%nyx_string* %49, { i64, i8* }* %50)
  store { i64, i8* }* %58, { i64, i8* }** %31
  br label %merge7
else6:
  store i1 1, i1* %32
  br label %merge7
merge7:
  br label %while_cond0
while_end2:
  %59 = load { i64, i8* }*, { i64, i8* }** %31
  ret { i64, i8* }* %59
}

define internal { i64, i8* }* @parse__parse_multiplication(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = call { i64, i8* }* @parse__parse_power(%SharedEnv_parse* %env.param)
  %31 = alloca { i64, i8* }*
  store { i64, i8* }* %30, { i64, i8* }** %31
  %32 = alloca i1
  store i1 0, i1* %32
  %33 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %34 = load i1, i1* %32
  %35 = xor i1 %34, true
  br i1 %35, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %33)
  %36 = alloca i1
  store i1 false, i1* %36
  %37 = getelementptr [5 x i8], [5 x i8]* @.str142, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str142.c, i8* %37, i64 4)
  %39 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %38)
  br i1 %39, label %sc_and_rhs3, label %sc_and_end4
sc_and_rhs3:
  %40 = call i1 @parse__is_on_new_line(%SharedEnv_parse* %env.param)
  store i1 %40, i1* %36
  br label %sc_and_end4
sc_and_end4:
  %41 = load i1, i1* %36
  br i1 %41, label %then5, label %else6
then5:
  store i1 1, i1* %32
  br label %merge7
else6:
  %42 = alloca i1
  store i1 true, i1* %42
  %43 = alloca i1
  store i1 true, i1* %43
  %44 = getelementptr [5 x i8], [5 x i8]* @.str143, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str143.c, i8* %44, i64 4)
  %46 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %45)
  br i1 %46, label %sc_or_end9, label %sc_or_rhs8
sc_or_rhs8:
  %47 = getelementptr [6 x i8], [6 x i8]* @.str144, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str144.c, i8* %47, i64 5)
  %49 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %48)
  store i1 %49, i1* %43
  br label %sc_or_end9
sc_or_end9:
  %50 = load i1, i1* %43
  br i1 %50, label %sc_or_end11, label %sc_or_rhs10
sc_or_rhs10:
  %51 = getelementptr [8 x i8], [8 x i8]* @.str145, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str145.c, i8* %51, i64 7)
  %53 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %52)
  store i1 %53, i1* %42
  br label %sc_or_end11
sc_or_end11:
  %54 = load i1, i1* %42
  br i1 %54, label %then12, label %else13
then12:
  %55 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %56 = alloca %Token
  store %Token %55, %Token* %56
  %57 = call { i64, i8* }* @parse__parse_power(%SharedEnv_parse* %env.param)
  %58 = alloca { i64, i8* }*
  store { i64, i8* }* %57, { i64, i8* }** %58
  %59 = getelementptr [6 x i8], [6 x i8]* @.str146, i32 0, i32 0
  %60 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str146.c, i8* %59, i64 5)
  %61 = call { i64, i8* }* @nyx_array_new_ptr()
  %62 = load %Token, %Token* %56
  %63 = call %nyx_string* @get_token_type(%Token %62)
  %64 = ptrtoint %nyx_string* %63 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %61, i64 %64, i64 2)
  %65 = load { i64, i8* }*, { i64, i8* }** %31
  %66 = ptrtoint { i64, i8* }* %65 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %61, i64 %66, i64 5)
  %67 = load { i64, i8* }*, { i64, i8* }** %58
  %68 = ptrtoint { i64, i8* }* %67 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %61, i64 %68, i64 5)
  %69 = call { i64, i8* }* @make_astnode(%nyx_string* %60, { i64, i8* }* %61)
  store { i64, i8* }* %69, { i64, i8* }** %31
  br label %merge14
else13:
  store i1 1, i1* %32
  br label %merge14
merge14:
  br label %merge7
merge7:
  br label %while_cond0
while_end2:
  %70 = load { i64, i8* }*, { i64, i8* }** %31
  ret { i64, i8* }* %70
}

define internal { i64, i8* }* @parse__parse_power(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = call { i64, i8* }* @parse__parse_unary(%SharedEnv_parse* %env.param)
  %31 = alloca { i64, i8* }*
  store { i64, i8* }* %30, { i64, i8* }** %31
  %32 = getelementptr [6 x i8], [6 x i8]* @.str147, i32 0, i32 0
  %33 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str147.c, i8* %32, i64 5)
  %34 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %33)
  br i1 %34, label %then0, label %else1
then0:
  %35 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %36 = call { i64, i8* }* @parse__parse_power(%SharedEnv_parse* %env.param)
  %37 = alloca { i64, i8* }*
  store { i64, i8* }* %36, { i64, i8* }** %37
  %38 = getelementptr [6 x i8], [6 x i8]* @.str148, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str148.c, i8* %38, i64 5)
  %40 = call { i64, i8* }* @nyx_array_new_ptr()
  %41 = getelementptr [6 x i8], [6 x i8]* @.str149, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str149.c, i8* %41, i64 5)
  %43 = ptrtoint %nyx_string* %42 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %40, i64 %43, i64 2)
  %44 = load { i64, i8* }*, { i64, i8* }** %31
  %45 = ptrtoint { i64, i8* }* %44 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %40, i64 %45, i64 5)
  %46 = load { i64, i8* }*, { i64, i8* }** %37
  %47 = ptrtoint { i64, i8* }* %46 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %40, i64 %47, i64 5)
  %48 = call { i64, i8* }* @make_astnode(%nyx_string* %39, { i64, i8* }* %40)
  ret { i64, i8* }* %48
else1:
  br label %merge2
merge2:
  %49 = load { i64, i8* }*, { i64, i8* }** %31
  ret { i64, i8* }* %49
}

define internal { i64, i8* }* @parse__parse_unary(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = getelementptr [6 x i8], [6 x i8]* @.str150, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str150.c, i8* %30, i64 5)
  %32 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %31)
  br i1 %32, label %then0, label %else1
then0:
  %33 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %34 = call { i64, i8* }* @parse__parse_unary(%SharedEnv_parse* %env.param)
  %35 = alloca { i64, i8* }*
  store { i64, i8* }* %34, { i64, i8* }** %35
  %36 = getelementptr [11 x i8], [11 x i8]* @.str151, i32 0, i32 0
  %37 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str151.c, i8* %36, i64 10)
  %38 = call { i64, i8* }* @nyx_array_new_ptr()
  %39 = load { i64, i8* }*, { i64, i8* }** %35
  %40 = ptrtoint { i64, i8* }* %39 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %38, i64 %40, i64 5)
  %41 = call { i64, i8* }* @make_astnode(%nyx_string* %37, { i64, i8* }* %38)
  ret { i64, i8* }* %41
else1:
  br label %merge2
merge2:
  %42 = alloca i1
  store i1 true, i1* %42
  %43 = alloca i1
  store i1 true, i1* %43
  %44 = getelementptr [6 x i8], [6 x i8]* @.str152, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str152.c, i8* %44, i64 5)
  %46 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %45)
  br i1 %46, label %sc_or_end4, label %sc_or_rhs3
sc_or_rhs3:
  %47 = getelementptr [4 x i8], [4 x i8]* @.str153, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str153.c, i8* %47, i64 3)
  %49 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %48)
  store i1 %49, i1* %43
  br label %sc_or_end4
sc_or_end4:
  %50 = load i1, i1* %43
  br i1 %50, label %sc_or_end6, label %sc_or_rhs5
sc_or_rhs5:
  %51 = getelementptr [6 x i8], [6 x i8]* @.str154, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str154.c, i8* %51, i64 5)
  %53 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %52)
  store i1 %53, i1* %42
  br label %sc_or_end6
sc_or_end6:
  %54 = load i1, i1* %42
  br i1 %54, label %then7, label %else8
then7:
  %55 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %56 = alloca %Token
  store %Token %55, %Token* %56
  %57 = call { i64, i8* }* @parse__parse_unary(%SharedEnv_parse* %env.param)
  %58 = alloca { i64, i8* }*
  store { i64, i8* }* %57, { i64, i8* }** %58
  %59 = getelementptr [5 x i8], [5 x i8]* @.str155, i32 0, i32 0
  %60 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str155.c, i8* %59, i64 4)
  %61 = call { i64, i8* }* @nyx_array_new_ptr()
  %62 = load %Token, %Token* %56
  %63 = call %nyx_string* @get_token_type(%Token %62)
  %64 = ptrtoint %nyx_string* %63 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %61, i64 %64, i64 2)
  %65 = load { i64, i8* }*, { i64, i8* }** %58
  %66 = ptrtoint { i64, i8* }* %65 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %61, i64 %66, i64 5)
  %67 = call { i64, i8* }* @make_astnode(%nyx_string* %60, { i64, i8* }* %61)
  ret { i64, i8* }* %67
else8:
  br label %merge9
merge9:
  %68 = getelementptr [4 x i8], [4 x i8]* @.str156, i32 0, i32 0
  %69 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str156.c, i8* %68, i64 3)
  %70 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %69)
  br i1 %70, label %then10, label %else11
then10:
  %71 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %72 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %73 = call %nyx_string* @get_token_value(%Token %72)
  %74 = alloca %nyx_string*
  store %nyx_string* %73, %nyx_string** %74
  %75 = load %nyx_string*, %nyx_string** %74
  %76 = getelementptr [4 x i8], [4 x i8]* @.str157, i32 0, i32 0
  %77 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str157.c, i8* %76, i64 3)
  %78 = call i1 @nyx_string_equals(%nyx_string* %75, %nyx_string* %77)
  br i1 %78, label %then13, label %else14
then13:
  %79 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %80 = call { i64, i8* }* @parse__parse_unary(%SharedEnv_parse* %env.param)
  %81 = alloca { i64, i8* }*
  store { i64, i8* }* %80, { i64, i8* }** %81
  %82 = getelementptr [12 x i8], [12 x i8]* @.str158, i32 0, i32 0
  %83 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str158.c, i8* %82, i64 11)
  %84 = call { i64, i8* }* @nyx_array_new_ptr()
  %85 = load { i64, i8* }*, { i64, i8* }** %81
  %86 = ptrtoint { i64, i8* }* %85 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %84, i64 %86, i64 5)
  %87 = call { i64, i8* }* @make_astnode(%nyx_string* %83, { i64, i8* }* %84)
  ret { i64, i8* }* %87
else14:
  br label %merge15
merge15:
  %88 = call { i64, i8* }* @parse__parse_unary(%SharedEnv_parse* %env.param)
  %89 = alloca { i64, i8* }*
  store { i64, i8* }* %88, { i64, i8* }** %89
  %90 = getelementptr [8 x i8], [8 x i8]* @.str159, i32 0, i32 0
  %91 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str159.c, i8* %90, i64 7)
  %92 = call { i64, i8* }* @nyx_array_new_ptr()
  %93 = load { i64, i8* }*, { i64, i8* }** %89
  %94 = ptrtoint { i64, i8* }* %93 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %92, i64 %94, i64 5)
  %95 = call { i64, i8* }* @make_astnode(%nyx_string* %91, { i64, i8* }* %92)
  ret { i64, i8* }* %95
else11:
  br label %merge12
merge12:
  %96 = getelementptr [5 x i8], [5 x i8]* @.str160, i32 0, i32 0
  %97 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str160.c, i8* %96, i64 4)
  %98 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %97)
  br i1 %98, label %then16, label %else17
then16:
  %99 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %100 = call { i64, i8* }* @parse__parse_unary(%SharedEnv_parse* %env.param)
  %101 = alloca { i64, i8* }*
  store { i64, i8* }* %100, { i64, i8* }** %101
  %102 = getelementptr [6 x i8], [6 x i8]* @.str161, i32 0, i32 0
  %103 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str161.c, i8* %102, i64 5)
  %104 = call { i64, i8* }* @nyx_array_new_ptr()
  %105 = load { i64, i8* }*, { i64, i8* }** %101
  %106 = ptrtoint { i64, i8* }* %105 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %104, i64 %106, i64 5)
  %107 = call { i64, i8* }* @make_astnode(%nyx_string* %103, { i64, i8* }* %104)
  ret { i64, i8* }* %107
else17:
  br label %merge18
merge18:
  %108 = call { i64, i8* }* @parse__parse_cast(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %108
}

define internal { i64, i8* }* @parse__parse_cast(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = call { i64, i8* }* @parse__parse_postfix(%SharedEnv_parse* %env.param)
  %31 = alloca { i64, i8* }*
  store { i64, i8* }* %30, { i64, i8* }** %31
  %32 = alloca i1
  store i1 0, i1* %32
  %33 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %34 = load i1, i1* %32
  %35 = xor i1 %34, true
  br i1 %35, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %33)
  %36 = getelementptr [3 x i8], [3 x i8]* @.str162, i32 0, i32 0
  %37 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str162.c, i8* %36, i64 2)
  %38 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %37)
  br i1 %38, label %then3, label %else4
then3:
  %39 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %40 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %41 = alloca %nyx_string*
  store %nyx_string* %40, %nyx_string** %41
  %42 = getelementptr [5 x i8], [5 x i8]* @.str163, i32 0, i32 0
  %43 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str163.c, i8* %42, i64 4)
  %44 = call { i64, i8* }* @nyx_array_new_ptr()
  %45 = load { i64, i8* }*, { i64, i8* }** %31
  %46 = ptrtoint { i64, i8* }* %45 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %44, i64 %46, i64 5)
  %47 = load %nyx_string*, %nyx_string** %41
  %48 = ptrtoint %nyx_string* %47 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %44, i64 %48, i64 2)
  %49 = call { i64, i8* }* @make_astnode(%nyx_string* %43, { i64, i8* }* %44)
  store { i64, i8* }* %49, { i64, i8* }** %31
  br label %merge5
else4:
  store i1 1, i1* %32
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %50 = load { i64, i8* }*, { i64, i8* }** %31
  ret { i64, i8* }* %50
}

define internal i1 @parse__is_generic_call_lookahead(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = load i64, i64* %4
  %31 = add i64 %30, 1
  %32 = alloca i64
  store i64 %31, i64* %32
  %33 = load i64, i64* %32
  %34 = load { i64, i8* }*, { i64, i8* }** %3
  %35 = call i64 @nyx_array_length({ i64, i8* }* %34)
  %36 = icmp sge i64 %33, %35
  br i1 %36, label %then0, label %else1
then0:
  ret i1 0
else1:
  br label %merge2
merge2:
  %37 = load { i64, i8* }*, { i64, i8* }** %3
  %38 = load i64, i64* %32
  %39 = call i64 @nyx_array_get({ i64, i8* }* %37, i64 %38)
  %40 = inttoptr i64 %39 to %Token*
  %41 = load %Token, %Token* %40
  %42 = alloca %Token
  store %Token %41, %Token* %42
  %43 = load %Token, %Token* %42
  %44 = call %nyx_string* @get_token_type(%Token %43)
  %45 = getelementptr [11 x i8], [11 x i8]* @.str164, i32 0, i32 0
  %46 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str164.c, i8* %45, i64 10)
  %47 = call i1 @nyx_string_equals(%nyx_string* %44, %nyx_string* %46)
  %48 = xor i1 %47, true
  br i1 %48, label %then3, label %else4
then3:
  ret i1 0
else4:
  br label %merge5
merge5:
  %49 = alloca i64
  store i64 1, i64* %49
  %50 = load i64, i64* %32
  %51 = add i64 %50, 1
  store i64 %51, i64* %32
  %52 = call i8* @llvm.stacksave()
  br label %while_cond6
while_cond6:
  %53 = alloca i1
  store i1 false, i1* %53
  %54 = load i64, i64* %32
  %55 = load { i64, i8* }*, { i64, i8* }** %3
  %56 = call i64 @nyx_array_length({ i64, i8* }* %55)
  %57 = icmp slt i64 %54, %56
  br i1 %57, label %sc_and_rhs9, label %sc_and_end10
sc_and_rhs9:
  %58 = load i64, i64* %49
  %59 = icmp sgt i64 %58, 0
  store i1 %59, i1* %53
  br label %sc_and_end10
sc_and_end10:
  %60 = load i1, i1* %53
  br i1 %60, label %while_body7, label %while_end8
while_body7:
  call void @llvm.stackrestore(i8* %52)
  %61 = load { i64, i8* }*, { i64, i8* }** %3
  %62 = load i64, i64* %32
  %63 = call i64 @nyx_array_get({ i64, i8* }* %61, i64 %62)
  %64 = inttoptr i64 %63 to %Token*
  %65 = load %Token, %Token* %64
  %66 = alloca %Token
  store %Token %65, %Token* %66
  %67 = load %Token, %Token* %66
  %68 = call %nyx_string* @get_token_type(%Token %67)
  %69 = alloca %nyx_string*
  store %nyx_string* %68, %nyx_string** %69
  %70 = load %nyx_string*, %nyx_string** %69
  %71 = getelementptr [5 x i8], [5 x i8]* @.str165, i32 0, i32 0
  %72 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str165.c, i8* %71, i64 4)
  %73 = call i1 @nyx_string_equals(%nyx_string* %70, %nyx_string* %72)
  br i1 %73, label %then11, label %else12
then11:
  %74 = load i64, i64* %49
  %75 = add i64 %74, 1
  store i64 %75, i64* %49
  br label %merge13
else12:
  %76 = load %nyx_string*, %nyx_string** %69
  %77 = getelementptr [8 x i8], [8 x i8]* @.str166, i32 0, i32 0
  %78 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str166.c, i8* %77, i64 7)
  %79 = call i1 @nyx_string_equals(%nyx_string* %76, %nyx_string* %78)
  br i1 %79, label %then14, label %else15
then14:
  %80 = load i64, i64* %49
  %81 = sub i64 %80, 1
  store i64 %81, i64* %49
  br label %merge16
else15:
  %82 = load %nyx_string*, %nyx_string** %69
  %83 = getelementptr [12 x i8], [12 x i8]* @.str167, i32 0, i32 0
  %84 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str167.c, i8* %83, i64 11)
  %85 = call i1 @nyx_string_equals(%nyx_string* %82, %nyx_string* %84)
  br i1 %85, label %then17, label %else18
then17:
  %86 = load i64, i64* %49
  %87 = icmp sge i64 %86, 2
  br i1 %87, label %then20, label %else21
then20:
  %88 = load i64, i64* %49
  %89 = sub i64 %88, 2
  store i64 %89, i64* %49
  br label %merge22
else21:
  ret i1 0
merge22:
  br label %merge19
else18:
  %90 = alloca i1
  store i1 true, i1* %90
  %91 = alloca i1
  store i1 true, i1* %91
  %92 = alloca i1
  store i1 true, i1* %92
  %93 = alloca i1
  store i1 true, i1* %93
  %94 = alloca i1
  store i1 true, i1* %94
  %95 = alloca i1
  store i1 true, i1* %95
  %96 = alloca i1
  store i1 true, i1* %96
  %97 = alloca i1
  store i1 true, i1* %97
  %98 = alloca i1
  store i1 true, i1* %98
  %99 = alloca i1
  store i1 true, i1* %99
  %100 = alloca i1
  store i1 true, i1* %100
  %101 = alloca i1
  store i1 true, i1* %101
  %102 = alloca i1
  store i1 true, i1* %102
  %103 = alloca i1
  store i1 true, i1* %103
  %104 = alloca i1
  store i1 true, i1* %104
  %105 = alloca i1
  store i1 true, i1* %105
  %106 = load %nyx_string*, %nyx_string** %69
  %107 = getelementptr [11 x i8], [11 x i8]* @.str168, i32 0, i32 0
  %108 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str168.c, i8* %107, i64 10)
  %109 = call i1 @nyx_string_equals(%nyx_string* %106, %nyx_string* %108)
  br i1 %109, label %sc_or_end24, label %sc_or_rhs23
sc_or_rhs23:
  %110 = load %nyx_string*, %nyx_string** %69
  %111 = getelementptr [6 x i8], [6 x i8]* @.str169, i32 0, i32 0
  %112 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str169.c, i8* %111, i64 5)
  %113 = call i1 @nyx_string_equals(%nyx_string* %110, %nyx_string* %112)
  store i1 %113, i1* %105
  br label %sc_or_end24
sc_or_end24:
  %114 = load i1, i1* %105
  br i1 %114, label %sc_or_end26, label %sc_or_rhs25
sc_or_rhs25:
  %115 = load %nyx_string*, %nyx_string** %69
  %116 = getelementptr [5 x i8], [5 x i8]* @.str170, i32 0, i32 0
  %117 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str170.c, i8* %116, i64 4)
  %118 = call i1 @nyx_string_equals(%nyx_string* %115, %nyx_string* %117)
  store i1 %118, i1* %104
  br label %sc_or_end26
sc_or_end26:
  %119 = load i1, i1* %104
  br i1 %119, label %sc_or_end28, label %sc_or_rhs27
sc_or_rhs27:
  %120 = load %nyx_string*, %nyx_string** %69
  %121 = getelementptr [4 x i8], [4 x i8]* @.str171, i32 0, i32 0
  %122 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str171.c, i8* %121, i64 3)
  %123 = call i1 @nyx_string_equals(%nyx_string* %120, %nyx_string* %122)
  store i1 %123, i1* %103
  br label %sc_or_end28
sc_or_end28:
  %124 = load i1, i1* %103
  br i1 %124, label %sc_or_end30, label %sc_or_rhs29
sc_or_rhs29:
  %125 = load %nyx_string*, %nyx_string** %69
  %126 = getelementptr [9 x i8], [9 x i8]* @.str172, i32 0, i32 0
  %127 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str172.c, i8* %126, i64 8)
  %128 = call i1 @nyx_string_equals(%nyx_string* %125, %nyx_string* %127)
  store i1 %128, i1* %102
  br label %sc_or_end30
sc_or_end30:
  %129 = load i1, i1* %102
  br i1 %129, label %sc_or_end32, label %sc_or_rhs31
sc_or_rhs31:
  %130 = load %nyx_string*, %nyx_string** %69
  %131 = getelementptr [3 x i8], [3 x i8]* @.str173, i32 0, i32 0
  %132 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str173.c, i8* %131, i64 2)
  %133 = call i1 @nyx_string_equals(%nyx_string* %130, %nyx_string* %132)
  store i1 %133, i1* %101
  br label %sc_or_end32
sc_or_end32:
  %134 = load i1, i1* %101
  br i1 %134, label %sc_or_end34, label %sc_or_rhs33
sc_or_rhs33:
  %135 = load %nyx_string*, %nyx_string** %69
  %136 = getelementptr [4 x i8], [4 x i8]* @.str174, i32 0, i32 0
  %137 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str174.c, i8* %136, i64 3)
  %138 = call i1 @nyx_string_equals(%nyx_string* %135, %nyx_string* %137)
  store i1 %138, i1* %100
  br label %sc_or_end34
sc_or_end34:
  %139 = load i1, i1* %100
  br i1 %139, label %sc_or_end36, label %sc_or_rhs35
sc_or_rhs35:
  %140 = load %nyx_string*, %nyx_string** %69
  %141 = getelementptr [5 x i8], [5 x i8]* @.str175, i32 0, i32 0
  %142 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str175.c, i8* %141, i64 4)
  %143 = call i1 @nyx_string_equals(%nyx_string* %140, %nyx_string* %142)
  store i1 %143, i1* %99
  br label %sc_or_end36
sc_or_end36:
  %144 = load i1, i1* %99
  br i1 %144, label %sc_or_end38, label %sc_or_rhs37
sc_or_rhs37:
  %145 = load %nyx_string*, %nyx_string** %69
  %146 = getelementptr [5 x i8], [5 x i8]* @.str176, i32 0, i32 0
  %147 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str176.c, i8* %146, i64 4)
  %148 = call i1 @nyx_string_equals(%nyx_string* %145, %nyx_string* %147)
  store i1 %148, i1* %98
  br label %sc_or_end38
sc_or_end38:
  %149 = load i1, i1* %98
  br i1 %149, label %sc_or_end40, label %sc_or_rhs39
sc_or_rhs39:
  %150 = load %nyx_string*, %nyx_string** %69
  %151 = getelementptr [11 x i8], [11 x i8]* @.str177, i32 0, i32 0
  %152 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str177.c, i8* %151, i64 10)
  %153 = call i1 @nyx_string_equals(%nyx_string* %150, %nyx_string* %152)
  store i1 %153, i1* %97
  br label %sc_or_end40
sc_or_end40:
  %154 = load i1, i1* %97
  br i1 %154, label %sc_or_end42, label %sc_or_rhs41
sc_or_rhs41:
  %155 = load %nyx_string*, %nyx_string** %69
  %156 = getelementptr [12 x i8], [12 x i8]* @.str178, i32 0, i32 0
  %157 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str178.c, i8* %156, i64 11)
  %158 = call i1 @nyx_string_equals(%nyx_string* %155, %nyx_string* %157)
  store i1 %158, i1* %96
  br label %sc_or_end42
sc_or_end42:
  %159 = load i1, i1* %96
  br i1 %159, label %sc_or_end44, label %sc_or_rhs43
sc_or_rhs43:
  %160 = load %nyx_string*, %nyx_string** %69
  %161 = getelementptr [6 x i8], [6 x i8]* @.str179, i32 0, i32 0
  %162 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str179.c, i8* %161, i64 5)
  %163 = call i1 @nyx_string_equals(%nyx_string* %160, %nyx_string* %162)
  store i1 %163, i1* %95
  br label %sc_or_end44
sc_or_end44:
  %164 = load i1, i1* %95
  br i1 %164, label %sc_or_end46, label %sc_or_rhs45
sc_or_rhs45:
  %165 = load %nyx_string*, %nyx_string** %69
  %166 = getelementptr [13 x i8], [13 x i8]* @.str180, i32 0, i32 0
  %167 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str180.c, i8* %166, i64 12)
  %168 = call i1 @nyx_string_equals(%nyx_string* %165, %nyx_string* %167)
  store i1 %168, i1* %94
  br label %sc_or_end46
sc_or_end46:
  %169 = load i1, i1* %94
  br i1 %169, label %sc_or_end48, label %sc_or_rhs47
sc_or_rhs47:
  %170 = load %nyx_string*, %nyx_string** %69
  %171 = getelementptr [14 x i8], [14 x i8]* @.str181, i32 0, i32 0
  %172 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str181.c, i8* %171, i64 13)
  %173 = call i1 @nyx_string_equals(%nyx_string* %170, %nyx_string* %172)
  store i1 %173, i1* %93
  br label %sc_or_end48
sc_or_end48:
  %174 = load i1, i1* %93
  br i1 %174, label %sc_or_end50, label %sc_or_rhs49
sc_or_rhs49:
  %175 = load %nyx_string*, %nyx_string** %69
  %176 = getelementptr [6 x i8], [6 x i8]* @.str182, i32 0, i32 0
  %177 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str182.c, i8* %176, i64 5)
  %178 = call i1 @nyx_string_equals(%nyx_string* %175, %nyx_string* %177)
  store i1 %178, i1* %92
  br label %sc_or_end50
sc_or_end50:
  %179 = load i1, i1* %92
  br i1 %179, label %sc_or_end52, label %sc_or_rhs51
sc_or_rhs51:
  %180 = load %nyx_string*, %nyx_string** %69
  %181 = getelementptr [7 x i8], [7 x i8]* @.str183, i32 0, i32 0
  %182 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str183.c, i8* %181, i64 6)
  %183 = call i1 @nyx_string_equals(%nyx_string* %180, %nyx_string* %182)
  store i1 %183, i1* %91
  br label %sc_or_end52
sc_or_end52:
  %184 = load i1, i1* %91
  br i1 %184, label %sc_or_end54, label %sc_or_rhs53
sc_or_rhs53:
  %185 = load %nyx_string*, %nyx_string** %69
  %186 = getelementptr [4 x i8], [4 x i8]* @.str184, i32 0, i32 0
  %187 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str184.c, i8* %186, i64 3)
  %188 = call i1 @nyx_string_equals(%nyx_string* %185, %nyx_string* %187)
  store i1 %188, i1* %90
  br label %sc_or_end54
sc_or_end54:
  %189 = load i1, i1* %90
  %190 = xor i1 %189, true
  br i1 %190, label %then55, label %else56
then55:
  ret i1 0
else56:
  br label %merge57
merge57:
  br label %merge19
merge19:
  br label %merge16
merge16:
  br label %merge13
merge13:
  %191 = load i64, i64* %32
  %192 = add i64 %191, 1
  store i64 %192, i64* %32
  br label %while_cond6
while_end8:
  %193 = load i64, i64* %49
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %then58, label %else59
then58:
  ret i1 0
else59:
  br label %merge60
merge60:
  %195 = load i64, i64* %32
  %196 = load { i64, i8* }*, { i64, i8* }** %3
  %197 = call i64 @nyx_array_length({ i64, i8* }* %196)
  %198 = icmp sge i64 %195, %197
  br i1 %198, label %then61, label %else62
then61:
  ret i1 0
else62:
  br label %merge63
merge63:
  %199 = load { i64, i8* }*, { i64, i8* }** %3
  %200 = load i64, i64* %32
  %201 = call i64 @nyx_array_get({ i64, i8* }* %199, i64 %200)
  %202 = inttoptr i64 %201 to %Token*
  %203 = load %Token, %Token* %202
  %204 = alloca %Token
  store %Token %203, %Token* %204
  %205 = load %Token, %Token* %204
  %206 = call %nyx_string* @get_token_type(%Token %205)
  %207 = alloca %nyx_string*
  store %nyx_string* %206, %nyx_string** %207
  %208 = load %nyx_string*, %nyx_string** %207
  %209 = getelementptr [11 x i8], [11 x i8]* @.str185, i32 0, i32 0
  %210 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str185.c, i8* %209, i64 10)
  %211 = call i1 @nyx_string_equals(%nyx_string* %208, %nyx_string* %210)
  br i1 %211, label %then64, label %else65
then64:
  ret i1 1
else65:
  br label %merge66
merge66:
  %212 = load %nyx_string*, %nyx_string** %207
  %213 = getelementptr [11 x i8], [11 x i8]* @.str186, i32 0, i32 0
  %214 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str186.c, i8* %213, i64 10)
  %215 = call i1 @nyx_string_equals(%nyx_string* %212, %nyx_string* %214)
  br i1 %215, label %then67, label %else68
then67:
  ret i1 1
else68:
  br label %merge69
merge69:
  %216 = load %nyx_string*, %nyx_string** %207
  %217 = getelementptr [4 x i8], [4 x i8]* @.str187, i32 0, i32 0
  %218 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str187.c, i8* %217, i64 3)
  %219 = call i1 @nyx_string_equals(%nyx_string* %216, %nyx_string* %218)
  br i1 %219, label %then70, label %else71
then70:
  ret i1 1
else71:
  br label %merge72
merge72:
  ret i1 0
}

define internal { i64, i8* }* @parse__parse_postfix(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = call { i64, i8* }* @parse__parse_primary(%SharedEnv_parse* %env.param)
  %31 = alloca { i64, i8* }*
  store { i64, i8* }* %30, { i64, i8* }** %31
  %32 = alloca i1
  store i1 0, i1* %32
  %33 = alloca i64
  store i64 0, i64* %33
  %34 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %35 = load i1, i1* %32
  %36 = xor i1 %35, true
  br i1 %36, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %34)
  %37 = load i64, i64* %33
  %38 = add i64 %37, 1
  store i64 %38, i64* %33
  %39 = load i64, i64* %33
  %40 = icmp sgt i64 %39, 50
  br i1 %40, label %then3, label %else4
then3:
  store i1 1, i1* %32
  br label %merge5
else4:
  br label %merge5
merge5:
  %41 = alloca i1
  store i1 false, i1* %41
  %42 = load { i64, i8* }*, { i64, i8* }** %31
  %43 = call i64 @nyx_array_get({ i64, i8* }* %42, i64 0)
  %44 = getelementptr [11 x i8], [11 x i8]* @.str188, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str188.c, i8* %44, i64 10)
  %46 = inttoptr i64 %43 to %nyx_string*
  %47 = call i1 @nyx_string_equals(%nyx_string* %46, %nyx_string* %45)
  br i1 %47, label %sc_and_rhs6, label %sc_and_end7
sc_and_rhs6:
  %48 = getelementptr [5 x i8], [5 x i8]* @.str189, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str189.c, i8* %48, i64 4)
  %50 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %49)
  store i1 %50, i1* %41
  br label %sc_and_end7
sc_and_end7:
  %51 = load i1, i1* %41
  br i1 %51, label %then8, label %else9
then8:
  %52 = call i1 @parse__is_generic_call_lookahead(%SharedEnv_parse* %env.param)
  br i1 %52, label %then11, label %else12
then11:
  %53 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %54 = call { i64, i8* }* @nyx_array_new_ptr()
  %55 = alloca { i64, i8* }*
  store { i64, i8* }* %54, { i64, i8* }** %55
  %56 = load { i64, i8* }*, { i64, i8* }** %55
  %57 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %58 = ptrtoint %nyx_string* %57 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %56, i64 %58, i64 2)
  %59 = alloca i1
  store i1 0, i1* %59
  %60 = call i8* @llvm.stacksave()
  br label %while_cond14
while_cond14:
  %61 = load i1, i1* %59
  %62 = xor i1 %61, true
  br i1 %62, label %while_body15, label %while_end16
while_body15:
  call void @llvm.stackrestore(i8* %60)
  %63 = getelementptr [6 x i8], [6 x i8]* @.str190, i32 0, i32 0
  %64 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str190.c, i8* %63, i64 5)
  %65 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %64)
  br i1 %65, label %then17, label %else18
then17:
  %66 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %67 = load { i64, i8* }*, { i64, i8* }** %55
  %68 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %69 = ptrtoint %nyx_string* %68 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %67, i64 %69, i64 2)
  br label %merge19
else18:
  store i1 1, i1* %59
  br label %merge19
merge19:
  br label %while_cond14
while_end16:
  %70 = load i64, i64* %5
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %then20, label %else21
then20:
  %72 = load i64, i64* %5
  %73 = sub i64 %72, 1
  store i64 %73, i64* %5
  br label %merge22
else21:
  %74 = getelementptr [8 x i8], [8 x i8]* @.str191, i32 0, i32 0
  %75 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str191.c, i8* %74, i64 7)
  %76 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %75)
  br i1 %76, label %then23, label %else24
then23:
  %77 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge25
else24:
  %78 = getelementptr [12 x i8], [12 x i8]* @.str192, i32 0, i32 0
  %79 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str192.c, i8* %78, i64 11)
  %80 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %79)
  br i1 %80, label %then26, label %else27
then26:
  %81 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %82 = load i64, i64* %5
  %83 = add i64 %82, 1
  store i64 %83, i64* %5
  br label %merge28
else27:
  %84 = getelementptr [8 x i8], [8 x i8]* @.str193, i32 0, i32 0
  %85 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str193.c, i8* %84, i64 7)
  %86 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %85)
  br label %merge28
merge28:
  br label %merge25
merge25:
  br label %merge22
merge22:
  %87 = getelementptr [13 x i8], [13 x i8]* @.str194, i32 0, i32 0
  %88 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str194.c, i8* %87, i64 12)
  %89 = call { i64, i8* }* @nyx_array_new_ptr()
  %90 = load { i64, i8* }*, { i64, i8* }** %31
  %91 = ptrtoint { i64, i8* }* %90 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %89, i64 %91, i64 5)
  %92 = load { i64, i8* }*, { i64, i8* }** %55
  %93 = ptrtoint { i64, i8* }* %92 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %89, i64 %93, i64 5)
  %94 = call { i64, i8* }* @make_astnode(%nyx_string* %88, { i64, i8* }* %89)
  store { i64, i8* }* %94, { i64, i8* }** %31
  %95 = getelementptr [11 x i8], [11 x i8]* @.str195, i32 0, i32 0
  %96 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str195.c, i8* %95, i64 10)
  %97 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %96)
  br i1 %97, label %then29, label %else30
then29:
  %98 = alloca i1
  store i1 false, i1* %98
  %99 = getelementptr [11 x i8], [11 x i8]* @.str196, i32 0, i32 0
  %100 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str196.c, i8* %99, i64 10)
  %101 = call i1 @parse__check_at(%SharedEnv_parse* %env.param, i64 1, %nyx_string* %100)
  br i1 %101, label %sc_and_rhs32, label %sc_and_end33
sc_and_rhs32:
  %102 = getelementptr [6 x i8], [6 x i8]* @.str197, i32 0, i32 0
  %103 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str197.c, i8* %102, i64 5)
  %104 = call i1 @parse__check_at(%SharedEnv_parse* %env.param, i64 2, %nyx_string* %103)
  store i1 %104, i1* %98
  br label %sc_and_end33
sc_and_end33:
  %105 = load i1, i1* %98
  br i1 %105, label %then34, label %else35
then34:
  %106 = load { i64, i8* }*, { i64, i8* }** %31
  %107 = call i64 @nyx_array_get({ i64, i8* }* %106, i64 1)
  %108 = inttoptr i64 %107 to { i64, i8* }*
  %109 = alloca { i64, i8* }*
  store { i64, i8* }* %108, { i64, i8* }** %109
  %110 = load { i64, i8* }*, { i64, i8* }** %109
  %111 = call i64 @nyx_array_get({ i64, i8* }* %110, i64 0)
  %112 = inttoptr i64 %111 to { i64, i8* }*
  %113 = alloca { i64, i8* }*
  store { i64, i8* }* %112, { i64, i8* }** %113
  %114 = load { i64, i8* }*, { i64, i8* }** %113
  %115 = call i64 @nyx_array_get({ i64, i8* }* %114, i64 1)
  %116 = inttoptr i64 %115 to { i64, i8* }*
  %117 = alloca { i64, i8* }*
  store { i64, i8* }* %116, { i64, i8* }** %117
  %118 = load { i64, i8* }*, { i64, i8* }** %117
  %119 = call i64 @nyx_array_get_checked({ i64, i8* }* %118, i64 0, i64 2)
  %120 = inttoptr i64 %119 to %nyx_string*
  %121 = alloca %nyx_string*
  store %nyx_string* %120, %nyx_string** %121
  %122 = load { i64, i8* }*, { i64, i8* }** %109
  %123 = call i64 @nyx_array_get({ i64, i8* }* %122, i64 1)
  %124 = inttoptr i64 %123 to { i64, i8* }*
  %125 = alloca { i64, i8* }*
  store { i64, i8* }* %124, { i64, i8* }** %125
  %126 = getelementptr [11 x i8], [11 x i8]* @.str198, i32 0, i32 0
  %127 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str198.c, i8* %126, i64 10)
  %128 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %127)
  %129 = call { i64, i8* }* @nyx_array_new_ptr()
  %130 = alloca { i64, i8* }*
  store { i64, i8* }* %129, { i64, i8* }** %130
  %131 = alloca i1
  store i1 0, i1* %131
  %132 = call i8* @llvm.stacksave()
  br label %while_cond37
while_cond37:
  %133 = load i1, i1* %131
  %134 = xor i1 %133, true
  br i1 %134, label %while_body38, label %while_end39
while_body38:
  call void @llvm.stackrestore(i8* %132)
  %135 = getelementptr [12 x i8], [12 x i8]* @.str199, i32 0, i32 0
  %136 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str199.c, i8* %135, i64 11)
  %137 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %136)
  br i1 %137, label %then40, label %else41
then40:
  %138 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %131
  br label %merge42
else41:
  %139 = load { i64, i8* }*, { i64, i8* }** %130
  %140 = call i64 @nyx_array_length({ i64, i8* }* %139)
  %141 = icmp sgt i64 %140, 0
  br i1 %141, label %then43, label %else44
then43:
  %142 = getelementptr [6 x i8], [6 x i8]* @.str200, i32 0, i32 0
  %143 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str200.c, i8* %142, i64 5)
  %144 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %143)
  br i1 %144, label %then46, label %else47
then46:
  %145 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge48
else47:
  br label %merge48
merge48:
  br label %merge45
else44:
  br label %merge45
merge45:
  %146 = getelementptr [11 x i8], [11 x i8]* @.str201, i32 0, i32 0
  %147 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str201.c, i8* %146, i64 10)
  %148 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %147)
  %149 = alloca %Token
  store %Token %148, %Token* %149
  %150 = getelementptr [6 x i8], [6 x i8]* @.str202, i32 0, i32 0
  %151 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str202.c, i8* %150, i64 5)
  %152 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %151)
  %153 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %154 = alloca { i64, i8* }*
  store { i64, i8* }* %153, { i64, i8* }** %154
  %155 = load { i64, i8* }*, { i64, i8* }** %130
  %156 = call { i64, i8* }* @nyx_array_new_ptr()
  %157 = load %Token, %Token* %149
  %158 = call %nyx_string* @get_token_value(%Token %157)
  %159 = ptrtoint %nyx_string* %158 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %156, i64 %159, i64 2)
  %160 = load { i64, i8* }*, { i64, i8* }** %154
  %161 = ptrtoint { i64, i8* }* %160 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %156, i64 %161, i64 5)
  %162 = ptrtoint { i64, i8* }* %156 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %155, i64 %162, i64 5)
  br label %merge42
merge42:
  br label %while_cond37
while_end39:
  %163 = getelementptr [12 x i8], [12 x i8]* @.str203, i32 0, i32 0
  %164 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str203.c, i8* %163, i64 11)
  %165 = call { i64, i8* }* @nyx_array_new_ptr()
  %166 = load %nyx_string*, %nyx_string** %121
  %167 = ptrtoint %nyx_string* %166 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %165, i64 %167, i64 2)
  %168 = load { i64, i8* }*, { i64, i8* }** %130
  %169 = ptrtoint { i64, i8* }* %168 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %165, i64 %169, i64 5)
  %170 = load { i64, i8* }*, { i64, i8* }** %125
  %171 = ptrtoint { i64, i8* }* %170 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %165, i64 %171, i64 5)
  %172 = call { i64, i8* }* @make_astnode(%nyx_string* %164, { i64, i8* }* %165)
  store { i64, i8* }* %172, { i64, i8* }** %31
  br label %merge36
else35:
  br label %merge36
merge36:
  br label %merge31
else30:
  br label %merge31
merge31:
  br label %merge13
else12:
  br label %merge13
merge13:
  br label %merge10
else9:
  br label %merge10
merge10:
  %173 = alloca i1
  store i1 false, i1* %173
  %174 = getelementptr [11 x i8], [11 x i8]* @.str204, i32 0, i32 0
  %175 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str204.c, i8* %174, i64 10)
  %176 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %175)
  br i1 %176, label %sc_and_rhs49, label %sc_and_end50
sc_and_rhs49:
  %177 = call i1 @parse__is_on_new_line(%SharedEnv_parse* %env.param)
  %178 = xor i1 %177, true
  store i1 %178, i1* %173
  br label %sc_and_end50
sc_and_end50:
  %179 = load i1, i1* %173
  br i1 %179, label %then51, label %else52
then51:
  %180 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %181 = call { i64, i8* }* @nyx_array_new_ptr()
  %182 = alloca { i64, i8* }*
  store { i64, i8* }* %181, { i64, i8* }** %182
  %183 = load i64, i64* %6
  %184 = alloca i64
  store i64 %183, i64* %184
  store i64 0, i64* %6
  %185 = alloca i1
  store i1 0, i1* %185
  %186 = call i8* @llvm.stacksave()
  br label %while_cond54
while_cond54:
  %187 = load i1, i1* %185
  %188 = xor i1 %187, true
  br i1 %188, label %while_body55, label %while_end56
while_body55:
  call void @llvm.stackrestore(i8* %186)
  %189 = getelementptr [12 x i8], [12 x i8]* @.str205, i32 0, i32 0
  %190 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str205.c, i8* %189, i64 11)
  %191 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %190)
  br i1 %191, label %then57, label %else58
then57:
  %192 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %185
  br label %merge59
else58:
  %193 = load { i64, i8* }*, { i64, i8* }** %182
  %194 = call i64 @nyx_array_length({ i64, i8* }* %193)
  %195 = icmp sgt i64 %194, 0
  br i1 %195, label %then60, label %else61
then60:
  %196 = getelementptr [6 x i8], [6 x i8]* @.str206, i32 0, i32 0
  %197 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str206.c, i8* %196, i64 5)
  %198 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %197)
  br label %merge62
else61:
  br label %merge62
merge62:
  %199 = load { i64, i8* }*, { i64, i8* }** %182
  %200 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %201 = ptrtoint { i64, i8* }* %200 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %199, i64 %201, i64 5)
  br label %merge59
merge59:
  br label %while_cond54
while_end56:
  %202 = load i64, i64* %184
  store i64 %202, i64* %6
  %203 = getelementptr [5 x i8], [5 x i8]* @.str207, i32 0, i32 0
  %204 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str207.c, i8* %203, i64 4)
  %205 = call { i64, i8* }* @nyx_array_new_ptr()
  %206 = load { i64, i8* }*, { i64, i8* }** %31
  %207 = ptrtoint { i64, i8* }* %206 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %205, i64 %207, i64 5)
  %208 = load { i64, i8* }*, { i64, i8* }** %182
  %209 = ptrtoint { i64, i8* }* %208 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %205, i64 %209, i64 5)
  %210 = call { i64, i8* }* @make_astnode(%nyx_string* %204, { i64, i8* }* %205)
  store { i64, i8* }* %210, { i64, i8* }** %31
  br label %merge53
else52:
  %211 = getelementptr [13 x i8], [13 x i8]* @.str208, i32 0, i32 0
  %212 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str208.c, i8* %211, i64 12)
  %213 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %212)
  br i1 %213, label %then63, label %else64
then63:
  %214 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %215 = load i64, i64* %6
  %216 = alloca i64
  store i64 %215, i64* %216
  store i64 0, i64* %6
  %217 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %218 = alloca { i64, i8* }*
  store { i64, i8* }* %217, { i64, i8* }** %218
  %219 = load i64, i64* %216
  store i64 %219, i64* %6
  %220 = getelementptr [14 x i8], [14 x i8]* @.str209, i32 0, i32 0
  %221 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str209.c, i8* %220, i64 13)
  %222 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %221)
  %223 = getelementptr [6 x i8], [6 x i8]* @.str210, i32 0, i32 0
  %224 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str210.c, i8* %223, i64 5)
  %225 = call { i64, i8* }* @nyx_array_new_ptr()
  %226 = load { i64, i8* }*, { i64, i8* }** %31
  %227 = ptrtoint { i64, i8* }* %226 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %225, i64 %227, i64 5)
  %228 = load { i64, i8* }*, { i64, i8* }** %218
  %229 = ptrtoint { i64, i8* }* %228 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %225, i64 %229, i64 5)
  %230 = call { i64, i8* }* @make_astnode(%nyx_string* %224, { i64, i8* }* %225)
  store { i64, i8* }* %230, { i64, i8* }** %31
  br label %merge65
else64:
  %231 = getelementptr [4 x i8], [4 x i8]* @.str211, i32 0, i32 0
  %232 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str211.c, i8* %231, i64 3)
  %233 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %232)
  br i1 %233, label %then66, label %else67
then66:
  %234 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %235 = getelementptr [7 x i8], [7 x i8]* @.str212, i32 0, i32 0
  %236 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str212.c, i8* %235, i64 6)
  %237 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %236)
  br i1 %237, label %then69, label %else70
then69:
  %238 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %239 = alloca %Token
  store %Token %238, %Token* %239
  %240 = load %Token, %Token* %239
  %241 = call %nyx_string* @get_token_value(%Token %240)
  %242 = alloca %nyx_string*
  store %nyx_string* %241, %nyx_string** %242
  %243 = getelementptr [12 x i8], [12 x i8]* @.str213, i32 0, i32 0
  %244 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str213.c, i8* %243, i64 11)
  %245 = call { i64, i8* }* @nyx_array_new_ptr()
  %246 = load { i64, i8* }*, { i64, i8* }** %31
  %247 = ptrtoint { i64, i8* }* %246 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %245, i64 %247, i64 5)
  %248 = load %nyx_string*, %nyx_string** %242
  %249 = ptrtoint %nyx_string* %248 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %245, i64 %249, i64 2)
  %250 = call { i64, i8* }* @make_astnode(%nyx_string* %244, { i64, i8* }* %245)
  store { i64, i8* }* %250, { i64, i8* }** %31
  br label %merge71
else70:
  %251 = getelementptr [11 x i8], [11 x i8]* @.str214, i32 0, i32 0
  %252 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str214.c, i8* %251, i64 10)
  %253 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %252)
  %254 = alloca %Token
  store %Token %253, %Token* %254
  %255 = load %Token, %Token* %254
  %256 = call %nyx_string* @get_token_value(%Token %255)
  %257 = alloca %nyx_string*
  store %nyx_string* %256, %nyx_string** %257
  %258 = call { i64, i8* }* @nyx_array_new_ptr()
  %259 = alloca { i64, i8* }*
  store { i64, i8* }* %258, { i64, i8* }** %259
  %260 = alloca i1
  store i1 0, i1* %260
  %261 = getelementptr [5 x i8], [5 x i8]* @.str215, i32 0, i32 0
  %262 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str215.c, i8* %261, i64 4)
  %263 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %262)
  br i1 %263, label %then72, label %else73
then72:
  %264 = call i1 @parse__is_generic_call_lookahead(%SharedEnv_parse* %env.param)
  br i1 %264, label %then75, label %else76
then75:
  %265 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %266 = load { i64, i8* }*, { i64, i8* }** %259
  %267 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %268 = ptrtoint %nyx_string* %267 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %266, i64 %268, i64 2)
  %269 = alloca i1
  store i1 0, i1* %269
  %270 = call i8* @llvm.stacksave()
  br label %while_cond78
while_cond78:
  %271 = load i1, i1* %269
  %272 = xor i1 %271, true
  br i1 %272, label %while_body79, label %while_end80
while_body79:
  call void @llvm.stackrestore(i8* %270)
  %273 = getelementptr [6 x i8], [6 x i8]* @.str216, i32 0, i32 0
  %274 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str216.c, i8* %273, i64 5)
  %275 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %274)
  br i1 %275, label %then81, label %else82
then81:
  %276 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %277 = load { i64, i8* }*, { i64, i8* }** %259
  %278 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %279 = ptrtoint %nyx_string* %278 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %277, i64 %279, i64 2)
  br label %merge83
else82:
  store i1 1, i1* %269
  br label %merge83
merge83:
  br label %while_cond78
while_end80:
  %280 = load i64, i64* %5
  %281 = icmp sgt i64 %280, 0
  br i1 %281, label %then84, label %else85
then84:
  %282 = load i64, i64* %5
  %283 = sub i64 %282, 1
  store i64 %283, i64* %5
  br label %merge86
else85:
  %284 = getelementptr [8 x i8], [8 x i8]* @.str217, i32 0, i32 0
  %285 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str217.c, i8* %284, i64 7)
  %286 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %285)
  br i1 %286, label %then87, label %else88
then87:
  %287 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge89
else88:
  %288 = getelementptr [12 x i8], [12 x i8]* @.str218, i32 0, i32 0
  %289 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str218.c, i8* %288, i64 11)
  %290 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %289)
  br i1 %290, label %then90, label %else91
then90:
  %291 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %292 = load i64, i64* %5
  %293 = add i64 %292, 1
  store i64 %293, i64* %5
  br label %merge92
else91:
  %294 = getelementptr [8 x i8], [8 x i8]* @.str219, i32 0, i32 0
  %295 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str219.c, i8* %294, i64 7)
  %296 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %295)
  br label %merge92
merge92:
  br label %merge89
merge89:
  br label %merge86
merge86:
  store i1 1, i1* %260
  br label %merge77
else76:
  br label %merge77
merge77:
  br label %merge74
else73:
  br label %merge74
merge74:
  %297 = getelementptr [11 x i8], [11 x i8]* @.str220, i32 0, i32 0
  %298 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str220.c, i8* %297, i64 10)
  %299 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %298)
  br i1 %299, label %then93, label %else94
then93:
  %300 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %301 = call { i64, i8* }* @nyx_array_new_ptr()
  %302 = alloca { i64, i8* }*
  store { i64, i8* }* %301, { i64, i8* }** %302
  %303 = alloca i1
  store i1 0, i1* %303
  %304 = call i8* @llvm.stacksave()
  br label %while_cond96
while_cond96:
  %305 = load i1, i1* %303
  %306 = xor i1 %305, true
  br i1 %306, label %while_body97, label %while_end98
while_body97:
  call void @llvm.stackrestore(i8* %304)
  %307 = getelementptr [12 x i8], [12 x i8]* @.str221, i32 0, i32 0
  %308 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str221.c, i8* %307, i64 11)
  %309 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %308)
  br i1 %309, label %then99, label %else100
then99:
  %310 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %303
  br label %merge101
else100:
  %311 = load { i64, i8* }*, { i64, i8* }** %302
  %312 = call i64 @nyx_array_length({ i64, i8* }* %311)
  %313 = icmp sgt i64 %312, 0
  br i1 %313, label %then102, label %else103
then102:
  %314 = getelementptr [6 x i8], [6 x i8]* @.str222, i32 0, i32 0
  %315 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str222.c, i8* %314, i64 5)
  %316 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %315)
  br label %merge104
else103:
  br label %merge104
merge104:
  %317 = load { i64, i8* }*, { i64, i8* }** %302
  %318 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %319 = ptrtoint { i64, i8* }* %318 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %317, i64 %319, i64 5)
  br label %merge101
merge101:
  br label %while_cond96
while_end98:
  %320 = load i1, i1* %260
  br i1 %320, label %then105, label %else106
then105:
  %321 = getelementptr [12 x i8], [12 x i8]* @.str223, i32 0, i32 0
  %322 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str223.c, i8* %321, i64 11)
  %323 = call { i64, i8* }* @nyx_array_new_ptr()
  %324 = load { i64, i8* }*, { i64, i8* }** %31
  %325 = ptrtoint { i64, i8* }* %324 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %323, i64 %325, i64 5)
  %326 = load %nyx_string*, %nyx_string** %257
  %327 = ptrtoint %nyx_string* %326 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %323, i64 %327, i64 2)
  %328 = load { i64, i8* }*, { i64, i8* }** %302
  %329 = ptrtoint { i64, i8* }* %328 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %323, i64 %329, i64 5)
  %330 = load { i64, i8* }*, { i64, i8* }** %259
  %331 = ptrtoint { i64, i8* }* %330 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %323, i64 %331, i64 5)
  %332 = call { i64, i8* }* @make_astnode(%nyx_string* %322, { i64, i8* }* %323)
  store { i64, i8* }* %332, { i64, i8* }** %31
  br label %merge107
else106:
  %333 = getelementptr [12 x i8], [12 x i8]* @.str224, i32 0, i32 0
  %334 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str224.c, i8* %333, i64 11)
  %335 = call { i64, i8* }* @nyx_array_new_ptr()
  %336 = load { i64, i8* }*, { i64, i8* }** %31
  %337 = ptrtoint { i64, i8* }* %336 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %335, i64 %337, i64 5)
  %338 = load %nyx_string*, %nyx_string** %257
  %339 = ptrtoint %nyx_string* %338 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %335, i64 %339, i64 2)
  %340 = load { i64, i8* }*, { i64, i8* }** %302
  %341 = ptrtoint { i64, i8* }* %340 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %335, i64 %341, i64 5)
  %342 = call { i64, i8* }* @make_astnode(%nyx_string* %334, { i64, i8* }* %335)
  store { i64, i8* }* %342, { i64, i8* }** %31
  br label %merge107
merge107:
  br label %merge95
else94:
  %343 = load i1, i1* %260
  br i1 %343, label %then108, label %else109
then108:
  %344 = getelementptr [11 x i8], [11 x i8]* @.str225, i32 0, i32 0
  %345 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str225.c, i8* %344, i64 10)
  %346 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %345)
  br label %merge110
else109:
  br label %merge110
merge110:
  %347 = getelementptr [13 x i8], [13 x i8]* @.str226, i32 0, i32 0
  %348 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str226.c, i8* %347, i64 12)
  %349 = call { i64, i8* }* @nyx_array_new_ptr()
  %350 = load { i64, i8* }*, { i64, i8* }** %31
  %351 = ptrtoint { i64, i8* }* %350 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %349, i64 %351, i64 5)
  %352 = load %nyx_string*, %nyx_string** %257
  %353 = ptrtoint %nyx_string* %352 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %349, i64 %353, i64 2)
  %354 = call { i64, i8* }* @make_astnode(%nyx_string* %348, { i64, i8* }* %349)
  store { i64, i8* }* %354, { i64, i8* }** %31
  br label %merge95
merge95:
  br label %merge71
merge71:
  br label %merge68
else67:
  %355 = getelementptr [9 x i8], [9 x i8]* @.str227, i32 0, i32 0
  %356 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str227.c, i8* %355, i64 8)
  %357 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %356)
  br i1 %357, label %then111, label %else112
then111:
  %358 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %359 = getelementptr [7 x i8], [7 x i8]* @.str228, i32 0, i32 0
  %360 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str228.c, i8* %359, i64 6)
  %361 = call { i64, i8* }* @nyx_array_new_ptr()
  %362 = load { i64, i8* }*, { i64, i8* }** %31
  %363 = ptrtoint { i64, i8* }* %362 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %361, i64 %363, i64 5)
  %364 = call { i64, i8* }* @make_astnode(%nyx_string* %360, { i64, i8* }* %361)
  store { i64, i8* }* %364, { i64, i8* }** %31
  br label %merge113
else112:
  store i1 1, i1* %32
  br label %merge113
merge113:
  br label %merge68
merge68:
  br label %merge65
merge65:
  br label %merge53
merge53:
  br label %while_cond0
while_end2:
  %365 = load { i64, i8* }*, { i64, i8* }** %31
  ret { i64, i8* }* %365
}

define internal { i64, i8* }* @parse__parse_primary(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = getelementptr [7 x i8], [7 x i8]* @.str229, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str229.c, i8* %30, i64 6)
  %32 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %31)
  br i1 %32, label %then0, label %else1
then0:
  %33 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %34 = alloca %Token
  store %Token %33, %Token* %34
  %35 = getelementptr [7 x i8], [7 x i8]* @.str230, i32 0, i32 0
  %36 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str230.c, i8* %35, i64 6)
  %37 = call { i64, i8* }* @nyx_array_new_ptr()
  %38 = load %Token, %Token* %34
  %39 = call %nyx_string* @get_token_value(%Token %38)
  %40 = ptrtoint %nyx_string* %39 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %37, i64 %40, i64 2)
  %41 = call { i64, i8* }* @make_astnode(%nyx_string* %36, { i64, i8* }* %37)
  ret { i64, i8* }* %41
else1:
  br label %merge2
merge2:
  %42 = getelementptr [7 x i8], [7 x i8]* @.str231, i32 0, i32 0
  %43 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str231.c, i8* %42, i64 6)
  %44 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %43)
  br i1 %44, label %then3, label %else4
then3:
  %45 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %46 = alloca %Token
  store %Token %45, %Token* %46
  %47 = getelementptr [7 x i8], [7 x i8]* @.str232, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str232.c, i8* %47, i64 6)
  %49 = call { i64, i8* }* @nyx_array_new_ptr()
  %50 = load %Token, %Token* %46
  %51 = call %nyx_string* @get_token_value(%Token %50)
  %52 = ptrtoint %nyx_string* %51 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %49, i64 %52, i64 2)
  %53 = call { i64, i8* }* @make_astnode(%nyx_string* %48, { i64, i8* }* %49)
  ret { i64, i8* }* %53
else4:
  br label %merge5
merge5:
  %54 = getelementptr [5 x i8], [5 x i8]* @.str233, i32 0, i32 0
  %55 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str233.c, i8* %54, i64 4)
  %56 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %55)
  br i1 %56, label %then6, label %else7
then6:
  %57 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %58 = alloca %Token
  store %Token %57, %Token* %58
  %59 = getelementptr [5 x i8], [5 x i8]* @.str234, i32 0, i32 0
  %60 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str234.c, i8* %59, i64 4)
  %61 = call { i64, i8* }* @nyx_array_new_ptr()
  %62 = load %Token, %Token* %58
  %63 = call %nyx_string* @get_token_value(%Token %62)
  %64 = ptrtoint %nyx_string* %63 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %61, i64 %64, i64 2)
  %65 = call { i64, i8* }* @make_astnode(%nyx_string* %60, { i64, i8* }* %61)
  ret { i64, i8* }* %65
else7:
  br label %merge8
merge8:
  %66 = getelementptr [5 x i8], [5 x i8]* @.str235, i32 0, i32 0
  %67 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str235.c, i8* %66, i64 4)
  %68 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %67)
  br i1 %68, label %then9, label %else10
then9:
  %69 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %70 = getelementptr [5 x i8], [5 x i8]* @.str236, i32 0, i32 0
  %71 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str236.c, i8* %70, i64 4)
  %72 = call { i64, i8* }* @nyx_array_new_ptr()
  %73 = getelementptr [5 x i8], [5 x i8]* @.str237, i32 0, i32 0
  %74 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str237.c, i8* %73, i64 4)
  %75 = ptrtoint %nyx_string* %74 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %72, i64 %75, i64 2)
  %76 = call { i64, i8* }* @make_astnode(%nyx_string* %71, { i64, i8* }* %72)
  ret { i64, i8* }* %76
else10:
  br label %merge11
merge11:
  %77 = getelementptr [6 x i8], [6 x i8]* @.str238, i32 0, i32 0
  %78 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str238.c, i8* %77, i64 5)
  %79 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %78)
  br i1 %79, label %then12, label %else13
then12:
  %80 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %81 = getelementptr [5 x i8], [5 x i8]* @.str239, i32 0, i32 0
  %82 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str239.c, i8* %81, i64 4)
  %83 = call { i64, i8* }* @nyx_array_new_ptr()
  %84 = getelementptr [6 x i8], [6 x i8]* @.str240, i32 0, i32 0
  %85 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str240.c, i8* %84, i64 5)
  %86 = ptrtoint %nyx_string* %85 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %83, i64 %86, i64 2)
  %87 = call { i64, i8* }* @make_astnode(%nyx_string* %82, { i64, i8* }* %83)
  ret { i64, i8* }* %87
else13:
  br label %merge14
merge14:
  %88 = getelementptr [7 x i8], [7 x i8]* @.str241, i32 0, i32 0
  %89 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str241.c, i8* %88, i64 6)
  %90 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %89)
  br i1 %90, label %then15, label %else16
then15:
  %91 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %92 = getelementptr [11 x i8], [11 x i8]* @.str242, i32 0, i32 0
  %93 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str242.c, i8* %92, i64 10)
  %94 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %93)
  %95 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %96 = alloca %nyx_string*
  store %nyx_string* %95, %nyx_string** %96
  %97 = getelementptr [12 x i8], [12 x i8]* @.str243, i32 0, i32 0
  %98 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str243.c, i8* %97, i64 11)
  %99 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %98)
  %100 = getelementptr [7 x i8], [7 x i8]* @.str244, i32 0, i32 0
  %101 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str244.c, i8* %100, i64 6)
  %102 = call { i64, i8* }* @nyx_array_new_ptr()
  %103 = load %nyx_string*, %nyx_string** %96
  %104 = ptrtoint %nyx_string* %103 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %102, i64 %104, i64 2)
  %105 = call { i64, i8* }* @make_astnode(%nyx_string* %101, { i64, i8* }* %102)
  ret { i64, i8* }* %105
else16:
  br label %merge17
merge17:
  %106 = getelementptr [8 x i8], [8 x i8]* @.str245, i32 0, i32 0
  %107 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str245.c, i8* %106, i64 7)
  %108 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %107)
  br i1 %108, label %then18, label %else19
then18:
  %109 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %110 = getelementptr [11 x i8], [11 x i8]* @.str246, i32 0, i32 0
  %111 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str246.c, i8* %110, i64 10)
  %112 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %111)
  %113 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %114 = alloca %nyx_string*
  store %nyx_string* %113, %nyx_string** %114
  %115 = getelementptr [12 x i8], [12 x i8]* @.str247, i32 0, i32 0
  %116 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str247.c, i8* %115, i64 11)
  %117 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %116)
  %118 = getelementptr [8 x i8], [8 x i8]* @.str248, i32 0, i32 0
  %119 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str248.c, i8* %118, i64 7)
  %120 = call { i64, i8* }* @nyx_array_new_ptr()
  %121 = load %nyx_string*, %nyx_string** %114
  %122 = ptrtoint %nyx_string* %121 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %120, i64 %122, i64 2)
  %123 = call { i64, i8* }* @make_astnode(%nyx_string* %119, { i64, i8* }* %120)
  ret { i64, i8* }* %123
else19:
  br label %merge20
merge20:
  %124 = getelementptr [4 x i8], [4 x i8]* @.str249, i32 0, i32 0
  %125 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str249.c, i8* %124, i64 3)
  %126 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %125)
  br i1 %126, label %then21, label %else22
then21:
  %127 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %128 = getelementptr [2 x i8], [2 x i8]* @.str250, i32 0, i32 0
  %129 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str250.c, i8* %128, i64 1)
  %130 = alloca %nyx_string*
  store %nyx_string* %129, %nyx_string** %130
  %131 = getelementptr [11 x i8], [11 x i8]* @.str251, i32 0, i32 0
  %132 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str251.c, i8* %131, i64 10)
  %133 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %132)
  br i1 %133, label %then24, label %else25
then24:
  %134 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %135 = alloca %Token
  store %Token %134, %Token* %135
  %136 = load %Token, %Token* %135
  %137 = call %nyx_string* @get_token_value(%Token %136)
  %138 = alloca %nyx_string*
  store %nyx_string* %137, %nyx_string** %138
  %139 = load %nyx_string*, %nyx_string** %138
  %140 = getelementptr [9 x i8], [9 x i8]* @.str252, i32 0, i32 0
  %141 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str252.c, i8* %140, i64 8)
  %142 = call i1 @nyx_string_equals(%nyx_string* %139, %nyx_string* %141)
  br i1 %142, label %then27, label %else28
then27:
  %143 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %144 = getelementptr [2 x i8], [2 x i8]* @.str253, i32 0, i32 0
  %145 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str253.c, i8* %144, i64 1)
  store %nyx_string* %145, %nyx_string** %130
  br label %merge29
else28:
  br label %merge29
merge29:
  br label %merge26
else25:
  br label %merge26
merge26:
  %146 = getelementptr [11 x i8], [11 x i8]* @.str254, i32 0, i32 0
  %147 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str254.c, i8* %146, i64 10)
  %148 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %147)
  %149 = getelementptr [7 x i8], [7 x i8]* @.str255, i32 0, i32 0
  %150 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str255.c, i8* %149, i64 6)
  %151 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %150)
  %152 = alloca %Token
  store %Token %151, %Token* %152
  %153 = load %Token, %Token* %152
  %154 = call %nyx_string* @get_token_value(%Token %153)
  %155 = alloca %nyx_string*
  store %nyx_string* %154, %nyx_string** %155
  %156 = getelementptr [6 x i8], [6 x i8]* @.str256, i32 0, i32 0
  %157 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str256.c, i8* %156, i64 5)
  %158 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %157)
  br i1 %158, label %then30, label %else31
then30:
  %159 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %160 = call { i64, i8* }* @nyx_array_new_ptr()
  %161 = alloca { i64, i8* }*
  store { i64, i8* }* %160, { i64, i8* }** %161
  %162 = alloca i1
  store i1 0, i1* %162
  %163 = call i8* @llvm.stacksave()
  br label %while_cond33
while_cond33:
  %164 = load i1, i1* %162
  %165 = xor i1 %164, true
  br i1 %165, label %while_body34, label %while_end35
while_body34:
  call void @llvm.stackrestore(i8* %163)
  %166 = getelementptr [7 x i8], [7 x i8]* @.str257, i32 0, i32 0
  %167 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str257.c, i8* %166, i64 6)
  %168 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %167)
  br i1 %168, label %then36, label %else37
then36:
  %169 = getelementptr [7 x i8], [7 x i8]* @.str258, i32 0, i32 0
  %170 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str258.c, i8* %169, i64 6)
  %171 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %170)
  %172 = alloca %Token
  store %Token %171, %Token* %172
  %173 = load %Token, %Token* %172
  %174 = call %nyx_string* @get_token_value(%Token %173)
  %175 = alloca %nyx_string*
  store %nyx_string* %174, %nyx_string** %175
  %176 = getelementptr [11 x i8], [11 x i8]* @.str259, i32 0, i32 0
  %177 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str259.c, i8* %176, i64 10)
  %178 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %177)
  %179 = getelementptr [11 x i8], [11 x i8]* @.str260, i32 0, i32 0
  %180 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str260.c, i8* %179, i64 10)
  %181 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %180)
  %182 = alloca %Token
  store %Token %181, %Token* %182
  %183 = load %Token, %Token* %182
  %184 = call %nyx_string* @get_token_value(%Token %183)
  %185 = alloca %nyx_string*
  store %nyx_string* %184, %nyx_string** %185
  %186 = getelementptr [12 x i8], [12 x i8]* @.str261, i32 0, i32 0
  %187 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str261.c, i8* %186, i64 11)
  %188 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %187)
  %189 = load { i64, i8* }*, { i64, i8* }** %161
  %190 = call { i64, i8* }* @nyx_array_new_ptr()
  %191 = load %nyx_string*, %nyx_string** %175
  %192 = ptrtoint %nyx_string* %191 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %190, i64 %192, i64 2)
  %193 = load %nyx_string*, %nyx_string** %185
  %194 = ptrtoint %nyx_string* %193 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %190, i64 %194, i64 2)
  %195 = ptrtoint { i64, i8* }* %190 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %189, i64 %195, i64 5)
  %196 = getelementptr [6 x i8], [6 x i8]* @.str262, i32 0, i32 0
  %197 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str262.c, i8* %196, i64 5)
  %198 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %197)
  br i1 %198, label %then39, label %else40
then39:
  %199 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge41
else40:
  br label %merge41
merge41:
  br label %merge38
else37:
  store i1 1, i1* %162
  br label %merge38
merge38:
  br label %while_cond33
while_end35:
  %200 = getelementptr [6 x i8], [6 x i8]* @.str263, i32 0, i32 0
  %201 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str263.c, i8* %200, i64 5)
  %202 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %201)
  br i1 %202, label %then42, label %else43
then42:
  %203 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge44
else43:
  br label %merge44
merge44:
  %204 = call { i64, i8* }* @nyx_array_new_ptr()
  %205 = alloca { i64, i8* }*
  store { i64, i8* }* %204, { i64, i8* }** %205
  %206 = alloca i1
  store i1 0, i1* %206
  %207 = call i8* @llvm.stacksave()
  br label %while_cond45
while_cond45:
  %208 = load i1, i1* %206
  %209 = xor i1 %208, true
  br i1 %209, label %while_body46, label %while_end47
while_body46:
  call void @llvm.stackrestore(i8* %207)
  %210 = getelementptr [7 x i8], [7 x i8]* @.str264, i32 0, i32 0
  %211 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str264.c, i8* %210, i64 6)
  %212 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %211)
  br i1 %212, label %then48, label %else49
then48:
  %213 = getelementptr [7 x i8], [7 x i8]* @.str265, i32 0, i32 0
  %214 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str265.c, i8* %213, i64 6)
  %215 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %214)
  %216 = alloca %Token
  store %Token %215, %Token* %216
  %217 = load %Token, %Token* %216
  %218 = call %nyx_string* @get_token_value(%Token %217)
  %219 = alloca %nyx_string*
  store %nyx_string* %218, %nyx_string** %219
  %220 = getelementptr [11 x i8], [11 x i8]* @.str266, i32 0, i32 0
  %221 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str266.c, i8* %220, i64 10)
  %222 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %221)
  %223 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %224 = alloca { i64, i8* }*
  store { i64, i8* }* %223, { i64, i8* }** %224
  %225 = getelementptr [12 x i8], [12 x i8]* @.str267, i32 0, i32 0
  %226 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str267.c, i8* %225, i64 11)
  %227 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %226)
  %228 = load { i64, i8* }*, { i64, i8* }** %205
  %229 = call { i64, i8* }* @nyx_array_new_ptr()
  %230 = load %nyx_string*, %nyx_string** %219
  %231 = ptrtoint %nyx_string* %230 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %229, i64 %231, i64 2)
  %232 = load { i64, i8* }*, { i64, i8* }** %224
  %233 = ptrtoint { i64, i8* }* %232 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %229, i64 %233, i64 5)
  %234 = ptrtoint { i64, i8* }* %229 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %228, i64 %234, i64 5)
  %235 = getelementptr [6 x i8], [6 x i8]* @.str268, i32 0, i32 0
  %236 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str268.c, i8* %235, i64 5)
  %237 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %236)
  br i1 %237, label %then51, label %else52
then51:
  %238 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge53
else52:
  br label %merge53
merge53:
  br label %merge50
else49:
  store i1 1, i1* %206
  br label %merge50
merge50:
  br label %while_cond45
while_end47:
  %239 = getelementptr [6 x i8], [6 x i8]* @.str269, i32 0, i32 0
  %240 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str269.c, i8* %239, i64 5)
  %241 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %240)
  br i1 %241, label %then54, label %else55
then54:
  %242 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge56
else55:
  br label %merge56
merge56:
  %243 = call { i64, i8* }* @nyx_array_new_ptr()
  %244 = alloca { i64, i8* }*
  store { i64, i8* }* %243, { i64, i8* }** %244
  %245 = alloca i1
  store i1 0, i1* %245
  %246 = call i8* @llvm.stacksave()
  br label %while_cond57
while_cond57:
  %247 = load i1, i1* %245
  %248 = xor i1 %247, true
  br i1 %248, label %while_body58, label %while_end59
while_body58:
  call void @llvm.stackrestore(i8* %246)
  %249 = getelementptr [7 x i8], [7 x i8]* @.str270, i32 0, i32 0
  %250 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str270.c, i8* %249, i64 6)
  %251 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %250)
  br i1 %251, label %then60, label %else61
then60:
  %252 = getelementptr [7 x i8], [7 x i8]* @.str271, i32 0, i32 0
  %253 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str271.c, i8* %252, i64 6)
  %254 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %253)
  %255 = alloca %Token
  store %Token %254, %Token* %255
  %256 = load { i64, i8* }*, { i64, i8* }** %244
  %257 = load %Token, %Token* %255
  %258 = call %nyx_string* @get_token_value(%Token %257)
  %259 = ptrtoint %nyx_string* %258 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %256, i64 %259, i64 2)
  %260 = getelementptr [6 x i8], [6 x i8]* @.str272, i32 0, i32 0
  %261 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str272.c, i8* %260, i64 5)
  %262 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %261)
  br i1 %262, label %then63, label %else64
then63:
  %263 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge65
else64:
  br label %merge65
merge65:
  br label %merge62
else61:
  store i1 1, i1* %245
  br label %merge62
merge62:
  br label %while_cond57
while_end59:
  %264 = getelementptr [12 x i8], [12 x i8]* @.str273, i32 0, i32 0
  %265 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str273.c, i8* %264, i64 11)
  %266 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %265)
  %267 = getelementptr [15 x i8], [15 x i8]* @.str274, i32 0, i32 0
  %268 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str274.c, i8* %267, i64 14)
  %269 = call { i64, i8* }* @nyx_array_new_ptr()
  %270 = load %nyx_string*, %nyx_string** %155
  %271 = ptrtoint %nyx_string* %270 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %269, i64 %271, i64 2)
  %272 = load { i64, i8* }*, { i64, i8* }** %161
  %273 = ptrtoint { i64, i8* }* %272 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %269, i64 %273, i64 5)
  %274 = load { i64, i8* }*, { i64, i8* }** %205
  %275 = ptrtoint { i64, i8* }* %274 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %269, i64 %275, i64 5)
  %276 = load { i64, i8* }*, { i64, i8* }** %244
  %277 = ptrtoint { i64, i8* }* %276 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %269, i64 %277, i64 5)
  %278 = load %nyx_string*, %nyx_string** %130
  %279 = ptrtoint %nyx_string* %278 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %269, i64 %279, i64 2)
  %280 = call { i64, i8* }* @make_astnode(%nyx_string* %268, { i64, i8* }* %269)
  ret { i64, i8* }* %280
else31:
  br label %merge32
merge32:
  %281 = call { i64, i8* }* @nyx_array_new_ptr()
  %282 = alloca { i64, i8* }*
  store { i64, i8* }* %281, { i64, i8* }** %282
  %283 = call { i64, i8* }* @nyx_array_new_ptr()
  %284 = alloca { i64, i8* }*
  store { i64, i8* }* %283, { i64, i8* }** %284
  %285 = call { i64, i8* }* @nyx_array_new_ptr()
  %286 = alloca { i64, i8* }*
  store { i64, i8* }* %285, { i64, i8* }** %286
  %287 = alloca i1
  store i1 0, i1* %287
  %288 = call i8* @llvm.stacksave()
  br label %while_cond66
while_cond66:
  %289 = load i1, i1* %287
  %290 = xor i1 %289, true
  br i1 %290, label %while_body67, label %while_end68
while_body67:
  call void @llvm.stackrestore(i8* %288)
  %291 = getelementptr [6 x i8], [6 x i8]* @.str275, i32 0, i32 0
  %292 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str275.c, i8* %291, i64 5)
  %293 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %292)
  br i1 %293, label %then69, label %else70
then69:
  %294 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %295 = getelementptr [11 x i8], [11 x i8]* @.str276, i32 0, i32 0
  %296 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str276.c, i8* %295, i64 10)
  %297 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %296)
  br i1 %297, label %then72, label %else73
then72:
  %298 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %299 = alloca %Token
  store %Token %298, %Token* %299
  %300 = load %Token, %Token* %299
  %301 = call %nyx_string* @get_token_value(%Token %300)
  %302 = alloca %nyx_string*
  store %nyx_string* %301, %nyx_string** %302
  %303 = load %nyx_string*, %nyx_string** %302
  %304 = getelementptr [4 x i8], [4 x i8]* @.str277, i32 0, i32 0
  %305 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str277.c, i8* %304, i64 3)
  %306 = call i1 @nyx_string_equals(%nyx_string* %303, %nyx_string* %305)
  br i1 %306, label %then75, label %else76
then75:
  %307 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %308 = getelementptr [11 x i8], [11 x i8]* @.str278, i32 0, i32 0
  %309 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str278.c, i8* %308, i64 10)
  %310 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %309)
  %311 = getelementptr [7 x i8], [7 x i8]* @.str279, i32 0, i32 0
  %312 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str279.c, i8* %311, i64 6)
  %313 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %312)
  %314 = alloca %Token
  store %Token %313, %Token* %314
  %315 = load { i64, i8* }*, { i64, i8* }** %282
  %316 = load %Token, %Token* %314
  %317 = call %nyx_string* @get_token_value(%Token %316)
  %318 = ptrtoint %nyx_string* %317 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %315, i64 %318, i64 2)
  %319 = getelementptr [12 x i8], [12 x i8]* @.str280, i32 0, i32 0
  %320 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str280.c, i8* %319, i64 11)
  %321 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %320)
  br label %merge77
else76:
  %322 = load %nyx_string*, %nyx_string** %302
  %323 = getelementptr [3 x i8], [3 x i8]* @.str281, i32 0, i32 0
  %324 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str281.c, i8* %323, i64 2)
  %325 = call i1 @nyx_string_equals(%nyx_string* %322, %nyx_string* %324)
  br i1 %325, label %then78, label %else79
then78:
  %326 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %327 = getelementptr [11 x i8], [11 x i8]* @.str282, i32 0, i32 0
  %328 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str282.c, i8* %327, i64 10)
  %329 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %328)
  %330 = getelementptr [7 x i8], [7 x i8]* @.str283, i32 0, i32 0
  %331 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str283.c, i8* %330, i64 6)
  %332 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %331)
  %333 = alloca %Token
  store %Token %332, %Token* %333
  %334 = load %Token, %Token* %333
  %335 = call %nyx_string* @get_token_value(%Token %334)
  %336 = alloca %nyx_string*
  store %nyx_string* %335, %nyx_string** %336
  %337 = getelementptr [6 x i8], [6 x i8]* @.str284, i32 0, i32 0
  %338 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str284.c, i8* %337, i64 5)
  %339 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %338)
  %340 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %341 = alloca { i64, i8* }*
  store { i64, i8* }* %340, { i64, i8* }** %341
  %342 = load { i64, i8* }*, { i64, i8* }** %284
  %343 = call { i64, i8* }* @nyx_array_new_ptr()
  %344 = load %nyx_string*, %nyx_string** %336
  %345 = ptrtoint %nyx_string* %344 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %343, i64 %345, i64 2)
  %346 = load { i64, i8* }*, { i64, i8* }** %341
  %347 = ptrtoint { i64, i8* }* %346 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %343, i64 %347, i64 5)
  %348 = ptrtoint { i64, i8* }* %343 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %342, i64 %348, i64 5)
  %349 = getelementptr [12 x i8], [12 x i8]* @.str285, i32 0, i32 0
  %350 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str285.c, i8* %349, i64 11)
  %351 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %350)
  br label %merge80
else79:
  %352 = load %nyx_string*, %nyx_string** %302
  %353 = getelementptr [8 x i8], [8 x i8]* @.str286, i32 0, i32 0
  %354 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str286.c, i8* %353, i64 7)
  %355 = call i1 @nyx_string_equals(%nyx_string* %352, %nyx_string* %354)
  br i1 %355, label %then81, label %else82
then81:
  %356 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %357 = getelementptr [11 x i8], [11 x i8]* @.str287, i32 0, i32 0
  %358 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str287.c, i8* %357, i64 10)
  %359 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %358)
  %360 = alloca i1
  store i1 0, i1* %360
  %361 = call i8* @llvm.stacksave()
  br label %while_cond84
while_cond84:
  %362 = load i1, i1* %360
  %363 = xor i1 %362, true
  br i1 %363, label %while_body85, label %while_end86
while_body85:
  call void @llvm.stackrestore(i8* %361)
  %364 = getelementptr [7 x i8], [7 x i8]* @.str288, i32 0, i32 0
  %365 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str288.c, i8* %364, i64 6)
  %366 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %365)
  %367 = alloca %Token
  store %Token %366, %Token* %367
  %368 = load { i64, i8* }*, { i64, i8* }** %286
  %369 = load %Token, %Token* %367
  %370 = call %nyx_string* @get_token_value(%Token %369)
  %371 = ptrtoint %nyx_string* %370 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %368, i64 %371, i64 2)
  %372 = getelementptr [6 x i8], [6 x i8]* @.str289, i32 0, i32 0
  %373 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str289.c, i8* %372, i64 5)
  %374 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %373)
  br i1 %374, label %then87, label %else88
then87:
  %375 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge89
else88:
  store i1 1, i1* %360
  br label %merge89
merge89:
  br label %while_cond84
while_end86:
  %376 = getelementptr [12 x i8], [12 x i8]* @.str290, i32 0, i32 0
  %377 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str290.c, i8* %376, i64 11)
  %378 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %377)
  br label %merge83
else82:
  store i1 1, i1* %287
  br label %merge83
merge83:
  br label %merge80
merge80:
  br label %merge77
merge77:
  br label %merge74
else73:
  store i1 1, i1* %287
  br label %merge74
merge74:
  br label %merge71
else70:
  store i1 1, i1* %287
  br label %merge71
merge71:
  br label %while_cond66
while_end68:
  %379 = getelementptr [12 x i8], [12 x i8]* @.str291, i32 0, i32 0
  %380 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str291.c, i8* %379, i64 11)
  %381 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %380)
  %382 = getelementptr [11 x i8], [11 x i8]* @.str292, i32 0, i32 0
  %383 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str292.c, i8* %382, i64 10)
  %384 = call { i64, i8* }* @nyx_array_new_ptr()
  %385 = load %nyx_string*, %nyx_string** %155
  %386 = ptrtoint %nyx_string* %385 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %384, i64 %386, i64 2)
  %387 = load { i64, i8* }*, { i64, i8* }** %282
  %388 = ptrtoint { i64, i8* }* %387 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %384, i64 %388, i64 5)
  %389 = load { i64, i8* }*, { i64, i8* }** %284
  %390 = ptrtoint { i64, i8* }* %389 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %384, i64 %390, i64 5)
  %391 = load { i64, i8* }*, { i64, i8* }** %286
  %392 = ptrtoint { i64, i8* }* %391 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %384, i64 %392, i64 5)
  %393 = call { i64, i8* }* @make_astnode(%nyx_string* %383, { i64, i8* }* %384)
  ret { i64, i8* }* %393
else22:
  br label %merge23
merge23:
  %394 = getelementptr [7 x i8], [7 x i8]* @.str293, i32 0, i32 0
  %395 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str293.c, i8* %394, i64 6)
  %396 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %395)
  br i1 %396, label %then90, label %else91
then90:
  %397 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %398 = alloca %Token
  store %Token %397, %Token* %398
  %399 = getelementptr [11 x i8], [11 x i8]* @.str294, i32 0, i32 0
  %400 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str294.c, i8* %399, i64 10)
  %401 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %400)
  %402 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %403 = alloca { i64, i8* }*
  store { i64, i8* }* %402, { i64, i8* }** %403
  %404 = getelementptr [7 x i8], [7 x i8]* @.str295, i32 0, i32 0
  %405 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str295.c, i8* %404, i64 6)
  %406 = call { i64, i8* }* @nyx_array_new_ptr()
  %407 = getelementptr [15 x i8], [15 x i8]* @.str296, i32 0, i32 0
  %408 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str296.c, i8* %407, i64 14)
  %409 = load %Token, %Token* %398
  %410 = call i64 @get_token_line(%Token %409)
  %411 = call %nyx_string* @nyx_string_from_int(i64 %410)
  %412 = call %nyx_string* @nyx_string_concat(%nyx_string* %408, %nyx_string* %411)
  %413 = ptrtoint %nyx_string* %412 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %406, i64 %413, i64 2)
  %414 = call { i64, i8* }* @make_astnode(%nyx_string* %405, { i64, i8* }* %406)
  %415 = alloca { i64, i8* }*
  store { i64, i8* }* %414, { i64, i8* }** %415
  %416 = getelementptr [6 x i8], [6 x i8]* @.str297, i32 0, i32 0
  %417 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str297.c, i8* %416, i64 5)
  %418 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %417)
  br i1 %418, label %then93, label %else94
then93:
  %419 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %420 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %420, { i64, i8* }** %415
  br label %merge95
else94:
  br label %merge95
merge95:
  %421 = getelementptr [12 x i8], [12 x i8]* @.str298, i32 0, i32 0
  %422 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str298.c, i8* %421, i64 11)
  %423 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %422)
  %424 = getelementptr [7 x i8], [7 x i8]* @.str299, i32 0, i32 0
  %425 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str299.c, i8* %424, i64 6)
  %426 = call { i64, i8* }* @nyx_array_new_ptr()
  %427 = load { i64, i8* }*, { i64, i8* }** %403
  %428 = ptrtoint { i64, i8* }* %427 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %426, i64 %428, i64 5)
  %429 = load { i64, i8* }*, { i64, i8* }** %415
  %430 = ptrtoint { i64, i8* }* %429 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %426, i64 %430, i64 5)
  %431 = call { i64, i8* }* @make_astnode(%nyx_string* %425, { i64, i8* }* %426)
  ret { i64, i8* }* %431
else91:
  br label %merge92
merge92:
  %432 = getelementptr [11 x i8], [11 x i8]* @.str300, i32 0, i32 0
  %433 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str300.c, i8* %432, i64 10)
  %434 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %433)
  br i1 %434, label %then96, label %else97
then96:
  %435 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %436 = alloca %Token
  store %Token %435, %Token* %436
  %437 = load %Token, %Token* %436
  %438 = call %nyx_string* @get_token_value(%Token %437)
  %439 = alloca %nyx_string*
  store %nyx_string* %438, %nyx_string** %439
  %440 = load { i64, i8* }*, { i64, i8* }** %16
  %441 = call i64 @nyx_array_length({ i64, i8* }* %440)
  %442 = icmp sgt i64 %441, 0
  br i1 %442, label %then99, label %else100
then99:
  %443 = alloca i64
  store i64 0, i64* %443
  %444 = call i8* @llvm.stacksave()
  br label %while_cond102
while_cond102:
  %445 = load i64, i64* %443
  %446 = load { i64, i8* }*, { i64, i8* }** %16
  %447 = call i64 @nyx_array_length({ i64, i8* }* %446)
  %448 = icmp slt i64 %445, %447
  br i1 %448, label %while_body103, label %while_end104
while_body103:
  call void @llvm.stackrestore(i8* %444)
  %449 = load { i64, i8* }*, { i64, i8* }** %16
  %450 = load i64, i64* %443
  %451 = call i64 @nyx_array_get_checked({ i64, i8* }* %449, i64 %450, i64 2)
  %452 = inttoptr i64 %451 to %nyx_string*
  %453 = alloca %nyx_string*
  store %nyx_string* %452, %nyx_string** %453
  %454 = load %nyx_string*, %nyx_string** %453
  %455 = load %nyx_string*, %nyx_string** %439
  %456 = call i1 @nyx_string_equals(%nyx_string* %454, %nyx_string* %455)
  br i1 %456, label %then105, label %else106
then105:
  %457 = load { i64, i8* }*, { i64, i8* }** %17
  %458 = load i64, i64* %443
  %459 = call i64 @nyx_array_get({ i64, i8* }* %457, i64 %458)
  %460 = inttoptr i64 %459 to { i64, i8* }*
  %461 = alloca { i64, i8* }*
  store { i64, i8* }* %460, { i64, i8* }** %461
  %462 = load { i64, i8* }*, { i64, i8* }** %461
  ret { i64, i8* }* %462
else106:
  br label %merge107
merge107:
  %463 = load i64, i64* %443
  %464 = add i64 %463, 1
  store i64 %464, i64* %443
  br label %while_cond102
while_end104:
  br label %merge101
else100:
  br label %merge101
merge101:
  %465 = getelementptr [4 x i8], [4 x i8]* @.str301, i32 0, i32 0
  %466 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str301.c, i8* %465, i64 3)
  %467 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %466)
  br i1 %467, label %then108, label %else109
then108:
  %468 = alloca i1
  store i1 0, i1* %468
  %469 = alloca i64
  store i64 0, i64* %469
  %470 = call i8* @llvm.stacksave()
  br label %while_cond111
while_cond111:
  %471 = load i64, i64* %469
  %472 = load { i64, i8* }*, { i64, i8* }** %13
  %473 = call i64 @nyx_array_length({ i64, i8* }* %472)
  %474 = icmp slt i64 %471, %473
  br i1 %474, label %while_body112, label %while_end113
while_body112:
  call void @llvm.stackrestore(i8* %470)
  %475 = load { i64, i8* }*, { i64, i8* }** %13
  %476 = load i64, i64* %469
  %477 = call i64 @nyx_array_get_checked({ i64, i8* }* %475, i64 %476, i64 2)
  %478 = inttoptr i64 %477 to %nyx_string*
  %479 = alloca %nyx_string*
  store %nyx_string* %478, %nyx_string** %479
  %480 = load %nyx_string*, %nyx_string** %479
  %481 = load %nyx_string*, %nyx_string** %439
  %482 = call i1 @nyx_string_equals(%nyx_string* %480, %nyx_string* %481)
  br i1 %482, label %then114, label %else115
then114:
  store i1 1, i1* %468
  br label %merge116
else115:
  br label %merge116
merge116:
  %483 = load i64, i64* %469
  %484 = add i64 %483, 1
  store i64 %484, i64* %469
  br label %while_cond111
while_end113:
  %485 = load i1, i1* %468
  br i1 %485, label %then117, label %else118
then117:
  %486 = load %nyx_string*, %nyx_string** %439
  %487 = call { i64, i8* }* @parse__parse_macro_invocation(%SharedEnv_parse* %env.param, %nyx_string* %486)
  ret { i64, i8* }* %487
else118:
  br label %merge119
merge119:
  br label %merge110
else109:
  br label %merge110
merge110:
  %488 = alloca i1
  store i1 false, i1* %488
  %489 = getelementptr [11 x i8], [11 x i8]* @.str302, i32 0, i32 0
  %490 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str302.c, i8* %489, i64 10)
  %491 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %490)
  br i1 %491, label %sc_and_rhs120, label %sc_and_end121
sc_and_rhs120:
  %492 = load i64, i64* %6
  %493 = icmp eq i64 %492, 0
  store i1 %493, i1* %488
  br label %sc_and_end121
sc_and_end121:
  %494 = load i1, i1* %488
  br i1 %494, label %then122, label %else123
then122:
  %495 = alloca i1
  store i1 false, i1* %495
  %496 = getelementptr [11 x i8], [11 x i8]* @.str303, i32 0, i32 0
  %497 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str303.c, i8* %496, i64 10)
  %498 = call i1 @parse__check_at(%SharedEnv_parse* %env.param, i64 1, %nyx_string* %497)
  br i1 %498, label %sc_and_rhs125, label %sc_and_end126
sc_and_rhs125:
  %499 = getelementptr [6 x i8], [6 x i8]* @.str304, i32 0, i32 0
  %500 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str304.c, i8* %499, i64 5)
  %501 = call i1 @parse__check_at(%SharedEnv_parse* %env.param, i64 2, %nyx_string* %500)
  store i1 %501, i1* %495
  br label %sc_and_end126
sc_and_end126:
  %502 = load i1, i1* %495
  br i1 %502, label %then127, label %else128
then127:
  %503 = load %nyx_string*, %nyx_string** %439
  %504 = call { i64, i8* }* @parse__parse_struct_construction(%SharedEnv_parse* %env.param, %nyx_string* %503)
  ret { i64, i8* }* %504
else128:
  br label %merge129
merge129:
  %505 = getelementptr [12 x i8], [12 x i8]* @.str305, i32 0, i32 0
  %506 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str305.c, i8* %505, i64 11)
  %507 = call i1 @parse__check_at(%SharedEnv_parse* %env.param, i64 1, %nyx_string* %506)
  br i1 %507, label %then130, label %else131
then130:
  %508 = load %nyx_string*, %nyx_string** %439
  %509 = call { i64, i8* }* @parse__parse_struct_construction(%SharedEnv_parse* %env.param, %nyx_string* %508)
  ret { i64, i8* }* %509
else131:
  br label %merge132
merge132:
  br label %merge124
else123:
  br label %merge124
merge124:
  %510 = getelementptr [11 x i8], [11 x i8]* @.str306, i32 0, i32 0
  %511 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str306.c, i8* %510, i64 10)
  %512 = call { i64, i8* }* @nyx_array_new_ptr()
  %513 = load %nyx_string*, %nyx_string** %439
  %514 = ptrtoint %nyx_string* %513 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %512, i64 %514, i64 2)
  %515 = call { i64, i8* }* @make_astnode(%nyx_string* %511, { i64, i8* }* %512)
  ret { i64, i8* }* %515
else97:
  br label %merge98
merge98:
  %516 = getelementptr [13 x i8], [13 x i8]* @.str307, i32 0, i32 0
  %517 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str307.c, i8* %516, i64 12)
  %518 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %517)
  br i1 %518, label %then133, label %else134
then133:
  %519 = call { i64, i8* }* @parse__parse_array_literal(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %519
else134:
  br label %merge135
merge135:
  %520 = getelementptr [6 x i8], [6 x i8]* @.str308, i32 0, i32 0
  %521 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str308.c, i8* %520, i64 5)
  %522 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %521)
  br i1 %522, label %then136, label %else137
then136:
  %523 = call { i64, i8* }* @parse__parse_match(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %523
else137:
  br label %merge138
merge138:
  %524 = getelementptr [11 x i8], [11 x i8]* @.str309, i32 0, i32 0
  %525 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str309.c, i8* %524, i64 10)
  %526 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %525)
  br i1 %526, label %then139, label %else140
then139:
  %527 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %528 = load i64, i64* %6
  %529 = alloca i64
  store i64 %528, i64* %529
  store i64 0, i64* %6
  %530 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %531 = alloca { i64, i8* }*
  store { i64, i8* }* %530, { i64, i8* }** %531
  %532 = getelementptr [6 x i8], [6 x i8]* @.str310, i32 0, i32 0
  %533 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str310.c, i8* %532, i64 5)
  %534 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %533)
  br i1 %534, label %then142, label %else143
then142:
  %535 = call { i64, i8* }* @nyx_array_new_ptr()
  %536 = load { i64, i8* }*, { i64, i8* }** %531
  %537 = ptrtoint { i64, i8* }* %536 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %535, i64 %537, i64 5)
  %538 = alloca { i64, i8* }*
  store { i64, i8* }* %535, { i64, i8* }** %538
  %539 = call i8* @llvm.stacksave()
  br label %while_cond145
while_cond145:
  %540 = getelementptr [6 x i8], [6 x i8]* @.str311, i32 0, i32 0
  %541 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str311.c, i8* %540, i64 5)
  %542 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %541)
  br i1 %542, label %while_body146, label %while_end147
while_body146:
  call void @llvm.stackrestore(i8* %539)
  %543 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %544 = load { i64, i8* }*, { i64, i8* }** %538
  %545 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %546 = ptrtoint { i64, i8* }* %545 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %544, i64 %546, i64 5)
  br label %while_cond145
while_end147:
  %547 = getelementptr [12 x i8], [12 x i8]* @.str312, i32 0, i32 0
  %548 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str312.c, i8* %547, i64 11)
  %549 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %548)
  %550 = load i64, i64* %529
  store i64 %550, i64* %6
  %551 = getelementptr [10 x i8], [10 x i8]* @.str313, i32 0, i32 0
  %552 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str313.c, i8* %551, i64 9)
  %553 = call { i64, i8* }* @nyx_array_new_ptr()
  %554 = load { i64, i8* }*, { i64, i8* }** %538
  %555 = ptrtoint { i64, i8* }* %554 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %553, i64 %555, i64 5)
  %556 = call { i64, i8* }* @make_astnode(%nyx_string* %552, { i64, i8* }* %553)
  ret { i64, i8* }* %556
else143:
  br label %merge144
merge144:
  %557 = getelementptr [12 x i8], [12 x i8]* @.str314, i32 0, i32 0
  %558 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str314.c, i8* %557, i64 11)
  %559 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %558)
  %560 = load i64, i64* %529
  store i64 %560, i64* %6
  %561 = load { i64, i8* }*, { i64, i8* }** %531
  ret { i64, i8* }* %561
else140:
  br label %merge141
merge141:
  %562 = getelementptr [3 x i8], [3 x i8]* @.str315, i32 0, i32 0
  %563 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str315.c, i8* %562, i64 2)
  %564 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %563)
  br i1 %564, label %then148, label %else149
then148:
  %565 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %566 = load { i64, i8* }*, { i64, i8* }** %12
  %567 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %566, i64 0)
  %568 = alloca i64
  store i64 %567, i64* %568
  %569 = load { i64, i8* }*, { i64, i8* }** %12
  %570 = load { i64, i8* }*, { i64, i8* }** %12
  %571 = call i64 @nyx_array_get({ i64, i8* }* %570, i64 0)
  %572 = add i64 %571, 1
  call void @nyx_array_set({ i64, i8* }* %569, i64 0, i64 %572)
  %573 = getelementptr [10 x i8], [10 x i8]* @.str316, i32 0, i32 0
  %574 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str316.c, i8* %573, i64 9)
  %575 = load i64, i64* %568
  %576 = call %nyx_string* @nyx_string_from_int(i64 %575)
  %577 = call %nyx_string* @nyx_string_concat(%nyx_string* %574, %nyx_string* %576)
  %578 = alloca %nyx_string*
  store %nyx_string* %577, %nyx_string** %578
  %579 = getelementptr [11 x i8], [11 x i8]* @.str317, i32 0, i32 0
  %580 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str317.c, i8* %579, i64 10)
  %581 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %580)
  %582 = call { i64, i8* }* @nyx_array_new_ptr()
  %583 = alloca { i64, i8* }*
  store { i64, i8* }* %582, { i64, i8* }** %583
  %584 = alloca i1
  store i1 0, i1* %584
  %585 = call i8* @llvm.stacksave()
  br label %while_cond151
while_cond151:
  %586 = load i1, i1* %584
  %587 = xor i1 %586, true
  br i1 %587, label %while_body152, label %while_end153
while_body152:
  call void @llvm.stackrestore(i8* %585)
  %588 = getelementptr [12 x i8], [12 x i8]* @.str318, i32 0, i32 0
  %589 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str318.c, i8* %588, i64 11)
  %590 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %589)
  br i1 %590, label %then154, label %else155
then154:
  %591 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %584
  br label %merge156
else155:
  %592 = load { i64, i8* }*, { i64, i8* }** %583
  %593 = call i64 @nyx_array_length({ i64, i8* }* %592)
  %594 = icmp sgt i64 %593, 0
  br i1 %594, label %then157, label %else158
then157:
  %595 = getelementptr [6 x i8], [6 x i8]* @.str319, i32 0, i32 0
  %596 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str319.c, i8* %595, i64 5)
  %597 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %596)
  br label %merge159
else158:
  br label %merge159
merge159:
  %598 = getelementptr [11 x i8], [11 x i8]* @.str320, i32 0, i32 0
  %599 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str320.c, i8* %598, i64 10)
  %600 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %599)
  %601 = alloca %Token
  store %Token %600, %Token* %601
  %602 = load %Token, %Token* %601
  %603 = call %nyx_string* @get_token_value(%Token %602)
  %604 = alloca %nyx_string*
  store %nyx_string* %603, %nyx_string** %604
  %605 = getelementptr [4 x i8], [4 x i8]* @.str321, i32 0, i32 0
  %606 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str321.c, i8* %605, i64 3)
  %607 = alloca %nyx_string*
  store %nyx_string* %606, %nyx_string** %607
  %608 = getelementptr [6 x i8], [6 x i8]* @.str322, i32 0, i32 0
  %609 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str322.c, i8* %608, i64 5)
  %610 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %609)
  br i1 %610, label %then160, label %else161
then160:
  %611 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %612 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %612, %nyx_string** %607
  br label %merge162
else161:
  br label %merge162
merge162:
  %613 = load { i64, i8* }*, { i64, i8* }** %583
  %614 = call { i64, i8* }* @nyx_array_new_ptr()
  %615 = load %nyx_string*, %nyx_string** %604
  %616 = ptrtoint %nyx_string* %615 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %614, i64 %616, i64 2)
  %617 = load %nyx_string*, %nyx_string** %607
  %618 = ptrtoint %nyx_string* %617 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %614, i64 %618, i64 2)
  %619 = ptrtoint { i64, i8* }* %614 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %613, i64 %619, i64 5)
  br label %merge156
merge156:
  br label %while_cond151
while_end153:
  %620 = getelementptr [1 x i8], [1 x i8]* @.str323, i32 0, i32 0
  %621 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str323.c, i8* %620, i64 0)
  %622 = alloca %nyx_string*
  store %nyx_string* %621, %nyx_string** %622
  %623 = getelementptr [6 x i8], [6 x i8]* @.str324, i32 0, i32 0
  %624 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str324.c, i8* %623, i64 5)
  %625 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %624)
  br i1 %625, label %then163, label %else164
then163:
  %626 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %627 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %627, %nyx_string** %622
  br label %merge165
else164:
  br label %merge165
merge165:
  %628 = call { i64, i8* }* @parse__parse_fn_body_block(%SharedEnv_parse* %env.param)
  %629 = alloca { i64, i8* }*
  store { i64, i8* }* %628, { i64, i8* }** %629
  %630 = getelementptr [9 x i8], [9 x i8]* @.str325, i32 0, i32 0
  %631 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str325.c, i8* %630, i64 8)
  %632 = call { i64, i8* }* @nyx_array_new_ptr()
  %633 = load %nyx_string*, %nyx_string** %578
  %634 = ptrtoint %nyx_string* %633 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %632, i64 %634, i64 2)
  %635 = load { i64, i8* }*, { i64, i8* }** %583
  %636 = ptrtoint { i64, i8* }* %635 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %632, i64 %636, i64 5)
  %637 = load %nyx_string*, %nyx_string** %622
  %638 = ptrtoint %nyx_string* %637 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %632, i64 %638, i64 2)
  %639 = load { i64, i8* }*, { i64, i8* }** %629
  %640 = ptrtoint { i64, i8* }* %639 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %632, i64 %640, i64 5)
  %641 = call { i64, i8* }* @nyx_array_new_ptr()
  %642 = ptrtoint { i64, i8* }* %641 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %632, i64 %642, i64 5)
  %643 = call { i64, i8* }* @make_astnode(%nyx_string* %631, { i64, i8* }* %632)
  %644 = alloca { i64, i8* }*
  store { i64, i8* }* %643, { i64, i8* }** %644
  %645 = load { i64, i8* }*, { i64, i8* }** %11
  %646 = load { i64, i8* }*, { i64, i8* }** %644
  %647 = ptrtoint { i64, i8* }* %646 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %645, i64 %647, i64 5)
  %648 = getelementptr [11 x i8], [11 x i8]* @.str326, i32 0, i32 0
  %649 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str326.c, i8* %648, i64 10)
  %650 = call { i64, i8* }* @nyx_array_new_ptr()
  %651 = load %nyx_string*, %nyx_string** %578
  %652 = ptrtoint %nyx_string* %651 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %650, i64 %652, i64 2)
  %653 = call { i64, i8* }* @make_astnode(%nyx_string* %649, { i64, i8* }* %650)
  ret { i64, i8* }* %653
else149:
  br label %merge150
merge150:
  %654 = getelementptr [11 x i8], [11 x i8]* @.str327, i32 0, i32 0
  %655 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str327.c, i8* %654, i64 10)
  %656 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %655)
  br i1 %656, label %then166, label %else167
then166:
  %657 = alloca i1
  store i1 true, i1* %657
  %658 = getelementptr [12 x i8], [12 x i8]* @.str328, i32 0, i32 0
  %659 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str328.c, i8* %658, i64 11)
  %660 = call i1 @parse__check_at(%SharedEnv_parse* %env.param, i64 1, %nyx_string* %659)
  br i1 %660, label %sc_or_end170, label %sc_or_rhs169
sc_or_rhs169:
  %661 = alloca i1
  store i1 false, i1* %661
  %662 = getelementptr [7 x i8], [7 x i8]* @.str329, i32 0, i32 0
  %663 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str329.c, i8* %662, i64 6)
  %664 = call i1 @parse__check_at(%SharedEnv_parse* %env.param, i64 1, %nyx_string* %663)
  br i1 %664, label %sc_and_rhs171, label %sc_and_end172
sc_and_rhs171:
  %665 = getelementptr [6 x i8], [6 x i8]* @.str330, i32 0, i32 0
  %666 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str330.c, i8* %665, i64 5)
  %667 = call i1 @parse__check_at(%SharedEnv_parse* %env.param, i64 2, %nyx_string* %666)
  store i1 %667, i1* %661
  br label %sc_and_end172
sc_and_end172:
  %668 = load i1, i1* %661
  store i1 %668, i1* %657
  br label %sc_or_end170
sc_or_end170:
  %669 = load i1, i1* %657
  br i1 %669, label %then173, label %else174
then173:
  %670 = call { i64, i8* }* @parse__parse_map_literal(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %670
else174:
  br label %merge175
merge175:
  %671 = getelementptr [6 x i8], [6 x i8]* @.str331, i32 0, i32 0
  %672 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str331.c, i8* %671, i64 5)
  %673 = call i1 @parse__check_at(%SharedEnv_parse* %env.param, i64 2, %nyx_string* %672)
  br i1 %673, label %then176, label %else177
then176:
  %674 = getelementptr [8 x i8], [8 x i8]* @.str332, i32 0, i32 0
  %675 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str332.c, i8* %674, i64 7)
  %676 = load i64, i64* @g_last_line
  %677 = load i64, i64* @g_last_col
  %678 = getelementptr [71 x i8], [71 x i8]* @.str333, i32 0, i32 0
  %679 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str333.c, i8* %678, i64 70)
  %680 = getelementptr [55 x i8], [55 x i8]* @.str334, i32 0, i32 0
  %681 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str334.c, i8* %680, i64 54)
  %682 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %679, %nyx_string* %681)
  %683 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %675, i64 %676, i64 %677, %nyx_string* %682)
  %684 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %685 = getelementptr [6 x i8], [6 x i8]* @.str335, i32 0, i32 0
  %686 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str335.c, i8* %685, i64 5)
  %687 = call { i64, i8* }* @nyx_array_new_ptr()
  %688 = call { i64, i8* }* @make_astnode(%nyx_string* %686, { i64, i8* }* %687)
  ret { i64, i8* }* %688
else177:
  br label %merge178
merge178:
  br label %merge168
else167:
  br label %merge168
merge168:
  %689 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %690 = alloca %Token
  store %Token %689, %Token* %690
  %691 = load %Token, %Token* %690
  %692 = call %nyx_string* @get_token_value(%Token %691)
  %693 = alloca %nyx_string*
  store %nyx_string* %692, %nyx_string** %693
  %694 = load %Token, %Token* %690
  %695 = call %nyx_string* @get_token_type(%Token %694)
  %696 = alloca %nyx_string*
  store %nyx_string* %695, %nyx_string** %696
  %697 = getelementptr [8 x i8], [8 x i8]* @.str336, i32 0, i32 0
  %698 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str336.c, i8* %697, i64 7)
  %699 = load %Token, %Token* %690
  %700 = call i64 @get_token_line(%Token %699)
  %701 = load %Token, %Token* %690
  %702 = call i64 @get_token_column(%Token %701)
  %703 = getelementptr [38 x i8], [38 x i8]* @.str337, i32 0, i32 0
  %704 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str337.c, i8* %703, i64 37)
  %705 = load %nyx_string*, %nyx_string** %693
  %706 = call %nyx_string* @nyx_string_concat(%nyx_string* %704, %nyx_string* %705)
  %707 = getelementptr [4 x i8], [4 x i8]* @.str338, i32 0, i32 0
  %708 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str338.c, i8* %707, i64 3)
  %709 = call %nyx_string* @nyx_string_concat(%nyx_string* %706, %nyx_string* %708)
  %710 = load %nyx_string*, %nyx_string** %696
  %711 = call %nyx_string* @nyx_string_concat(%nyx_string* %709, %nyx_string* %710)
  %712 = getelementptr [2 x i8], [2 x i8]* @.str339, i32 0, i32 0
  %713 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str339.c, i8* %712, i64 1)
  %714 = call %nyx_string* @nyx_string_concat(%nyx_string* %711, %nyx_string* %713)
  %715 = getelementptr [34 x i8], [34 x i8]* @.str340, i32 0, i32 0
  %716 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str340.c, i8* %715, i64 33)
  %717 = load %nyx_string*, %nyx_string** %693
  %718 = call %nyx_string* @nyx_string_concat(%nyx_string* %716, %nyx_string* %717)
  %719 = getelementptr [4 x i8], [4 x i8]* @.str341, i32 0, i32 0
  %720 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str341.c, i8* %719, i64 3)
  %721 = call %nyx_string* @nyx_string_concat(%nyx_string* %718, %nyx_string* %720)
  %722 = load %nyx_string*, %nyx_string** %696
  %723 = call %nyx_string* @nyx_string_concat(%nyx_string* %721, %nyx_string* %722)
  %724 = getelementptr [2 x i8], [2 x i8]* @.str342, i32 0, i32 0
  %725 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str342.c, i8* %724, i64 1)
  %726 = call %nyx_string* @nyx_string_concat(%nyx_string* %723, %nyx_string* %725)
  %727 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %714, %nyx_string* %726)
  %728 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %698, i64 %700, i64 %702, %nyx_string* %727)
  %729 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %730 = getelementptr [6 x i8], [6 x i8]* @.str343, i32 0, i32 0
  %731 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str343.c, i8* %730, i64 5)
  %732 = call { i64, i8* }* @nyx_array_new_ptr()
  %733 = call { i64, i8* }* @make_astnode(%nyx_string* %731, { i64, i8* }* %732)
  ret { i64, i8* }* %733
}

define internal { i64, i8* }* @parse__parse_map_literal(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = getelementptr [11 x i8], [11 x i8]* @.str344, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str344.c, i8* %30, i64 10)
  %32 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %31)
  %33 = call { i64, i8* }* @nyx_array_new_ptr()
  %34 = alloca { i64, i8* }*
  store { i64, i8* }* %33, { i64, i8* }** %34
  %35 = call { i64, i8* }* @nyx_array_new_ptr()
  %36 = alloca { i64, i8* }*
  store { i64, i8* }* %35, { i64, i8* }** %36
  %37 = alloca i1
  store i1 0, i1* %37
  %38 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %39 = load i1, i1* %37
  %40 = xor i1 %39, true
  br i1 %40, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %38)
  %41 = load i64, i64* %8
  %42 = icmp eq i64 %41, 1
  br i1 %42, label %then3, label %else4
then3:
  store i1 1, i1* %37
  br label %merge5
else4:
  %43 = getelementptr [4 x i8], [4 x i8]* @.str345, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str345.c, i8* %43, i64 3)
  %45 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %44)
  br i1 %45, label %then6, label %else7
then6:
  %46 = getelementptr [8 x i8], [8 x i8]* @.str346, i32 0, i32 0
  %47 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str346.c, i8* %46, i64 7)
  %48 = load i64, i64* @g_last_line
  %49 = load i64, i64* @g_last_col
  %50 = getelementptr [53 x i8], [53 x i8]* @.str347, i32 0, i32 0
  %51 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str347.c, i8* %50, i64 52)
  %52 = getelementptr [59 x i8], [59 x i8]* @.str348, i32 0, i32 0
  %53 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str348.c, i8* %52, i64 58)
  %54 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %51, %nyx_string* %53)
  %55 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %47, i64 %48, i64 %49, %nyx_string* %54)
  store i1 1, i1* %37
  br label %merge8
else7:
  %56 = getelementptr [12 x i8], [12 x i8]* @.str349, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str349.c, i8* %56, i64 11)
  %58 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %57)
  br i1 %58, label %then9, label %else10
then9:
  %59 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %37
  br label %merge11
else10:
  %60 = load { i64, i8* }*, { i64, i8* }** %34
  %61 = call i64 @nyx_array_length({ i64, i8* }* %60)
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %then12, label %else13
then12:
  %63 = getelementptr [6 x i8], [6 x i8]* @.str350, i32 0, i32 0
  %64 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str350.c, i8* %63, i64 5)
  %65 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %64)
  br i1 %65, label %then15, label %else16
then15:
  %66 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge17
else16:
  br label %merge17
merge17:
  br label %merge14
else13:
  br label %merge14
merge14:
  %67 = getelementptr [12 x i8], [12 x i8]* @.str351, i32 0, i32 0
  %68 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str351.c, i8* %67, i64 11)
  %69 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %68)
  br i1 %69, label %then18, label %else19
then18:
  %70 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %37
  br label %merge20
else19:
  %71 = getelementptr [7 x i8], [7 x i8]* @.str352, i32 0, i32 0
  %72 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str352.c, i8* %71, i64 6)
  %73 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %72)
  %74 = alloca %Token
  store %Token %73, %Token* %74
  %75 = getelementptr [6 x i8], [6 x i8]* @.str353, i32 0, i32 0
  %76 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str353.c, i8* %75, i64 5)
  %77 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %76)
  %78 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %79 = alloca { i64, i8* }*
  store { i64, i8* }* %78, { i64, i8* }** %79
  %80 = load { i64, i8* }*, { i64, i8* }** %34
  %81 = load %Token, %Token* %74
  %82 = call %nyx_string* @get_token_value(%Token %81)
  %83 = ptrtoint %nyx_string* %82 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %80, i64 %83, i64 2)
  %84 = load { i64, i8* }*, { i64, i8* }** %36
  %85 = load { i64, i8* }*, { i64, i8* }** %79
  %86 = ptrtoint { i64, i8* }* %85 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %84, i64 %86, i64 5)
  br label %merge20
merge20:
  br label %merge11
merge11:
  br label %merge8
merge8:
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %87 = getelementptr [12 x i8], [12 x i8]* @.str354, i32 0, i32 0
  %88 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str354.c, i8* %87, i64 11)
  %89 = call { i64, i8* }* @nyx_array_new_ptr()
  %90 = load { i64, i8* }*, { i64, i8* }** %34
  %91 = ptrtoint { i64, i8* }* %90 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %89, i64 %91, i64 5)
  %92 = load { i64, i8* }*, { i64, i8* }** %36
  %93 = ptrtoint { i64, i8* }* %92 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %89, i64 %93, i64 5)
  %94 = call { i64, i8* }* @make_astnode(%nyx_string* %88, { i64, i8* }* %89)
  ret { i64, i8* }* %94
}

define internal { i64, i8* }* @parse__parse_array_literal(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = getelementptr [13 x i8], [13 x i8]* @.str355, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str355.c, i8* %30, i64 12)
  %32 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %31)
  %33 = call { i64, i8* }* @nyx_array_new_ptr()
  %34 = alloca { i64, i8* }*
  store { i64, i8* }* %33, { i64, i8* }** %34
  %35 = load i64, i64* %6
  %36 = alloca i64
  store i64 %35, i64* %36
  store i64 0, i64* %6
  %37 = alloca i1
  store i1 0, i1* %37
  %38 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %39 = load i1, i1* %37
  %40 = xor i1 %39, true
  br i1 %40, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %38)
  %41 = getelementptr [14 x i8], [14 x i8]* @.str356, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str356.c, i8* %41, i64 13)
  %43 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %42)
  br i1 %43, label %then3, label %else4
then3:
  %44 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %37
  br label %merge5
else4:
  %45 = load { i64, i8* }*, { i64, i8* }** %34
  %46 = call i64 @nyx_array_length({ i64, i8* }* %45)
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %then6, label %else7
then6:
  %48 = getelementptr [6 x i8], [6 x i8]* @.str357, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str357.c, i8* %48, i64 5)
  %50 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %49)
  br label %merge8
else7:
  br label %merge8
merge8:
  %51 = load { i64, i8* }*, { i64, i8* }** %34
  %52 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %53 = ptrtoint { i64, i8* }* %52 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %51, i64 %53, i64 5)
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %54 = load i64, i64* %36
  store i64 %54, i64* %6
  %55 = getelementptr [6 x i8], [6 x i8]* @.str358, i32 0, i32 0
  %56 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str358.c, i8* %55, i64 5)
  %57 = call { i64, i8* }* @nyx_array_new_ptr()
  %58 = load { i64, i8* }*, { i64, i8* }** %34
  %59 = ptrtoint { i64, i8* }* %58 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %57, i64 %59, i64 5)
  %60 = call { i64, i8* }* @make_astnode(%nyx_string* %56, { i64, i8* }* %57)
  ret { i64, i8* }* %60
}

define internal { i64, i8* }* @parse__parse_enum(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = getelementptr [5 x i8], [5 x i8]* @.str359, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str359.c, i8* %30, i64 4)
  %32 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %31)
  %33 = getelementptr [11 x i8], [11 x i8]* @.str360, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str360.c, i8* %33, i64 10)
  %35 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %34)
  %36 = alloca %Token
  store %Token %35, %Token* %36
  %37 = load %Token, %Token* %36
  %38 = call %nyx_string* @get_token_value(%Token %37)
  %39 = alloca %nyx_string*
  store %nyx_string* %38, %nyx_string** %39
  %40 = call { i64, i8* }* @nyx_array_new_ptr()
  %41 = alloca { i64, i8* }*
  store { i64, i8* }* %40, { i64, i8* }** %41
  %42 = getelementptr [5 x i8], [5 x i8]* @.str361, i32 0, i32 0
  %43 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str361.c, i8* %42, i64 4)
  %44 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %43)
  br i1 %44, label %then0, label %else1
then0:
  %45 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %46 = getelementptr [11 x i8], [11 x i8]* @.str362, i32 0, i32 0
  %47 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str362.c, i8* %46, i64 10)
  %48 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %47)
  %49 = alloca %Token
  store %Token %48, %Token* %49
  %50 = load { i64, i8* }*, { i64, i8* }** %41
  %51 = load %Token, %Token* %49
  %52 = call %nyx_string* @get_token_value(%Token %51)
  %53 = ptrtoint %nyx_string* %52 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %50, i64 %53, i64 2)
  %54 = alloca i1
  store i1 0, i1* %54
  %55 = call i8* @llvm.stacksave()
  br label %while_cond3
while_cond3:
  %56 = load i1, i1* %54
  %57 = xor i1 %56, true
  br i1 %57, label %while_body4, label %while_end5
while_body4:
  call void @llvm.stackrestore(i8* %55)
  %58 = getelementptr [6 x i8], [6 x i8]* @.str363, i32 0, i32 0
  %59 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str363.c, i8* %58, i64 5)
  %60 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %59)
  br i1 %60, label %then6, label %else7
then6:
  %61 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %62 = getelementptr [11 x i8], [11 x i8]* @.str364, i32 0, i32 0
  %63 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str364.c, i8* %62, i64 10)
  %64 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %63)
  %65 = alloca %Token
  store %Token %64, %Token* %65
  %66 = load { i64, i8* }*, { i64, i8* }** %41
  %67 = load %Token, %Token* %65
  %68 = call %nyx_string* @get_token_value(%Token %67)
  %69 = ptrtoint %nyx_string* %68 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %66, i64 %69, i64 2)
  br label %merge8
else7:
  store i1 1, i1* %54
  br label %merge8
merge8:
  br label %while_cond3
while_end5:
  %70 = getelementptr [8 x i8], [8 x i8]* @.str365, i32 0, i32 0
  %71 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str365.c, i8* %70, i64 7)
  %72 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %71)
  br label %merge2
else1:
  br label %merge2
merge2:
  %73 = getelementptr [11 x i8], [11 x i8]* @.str366, i32 0, i32 0
  %74 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str366.c, i8* %73, i64 10)
  %75 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %74)
  %76 = call { i64, i8* }* @nyx_array_new_ptr()
  %77 = alloca { i64, i8* }*
  store { i64, i8* }* %76, { i64, i8* }** %77
  %78 = alloca i1
  store i1 0, i1* %78
  %79 = call i8* @llvm.stacksave()
  br label %while_cond9
while_cond9:
  %80 = load i1, i1* %78
  %81 = xor i1 %80, true
  br i1 %81, label %while_body10, label %while_end11
while_body10:
  call void @llvm.stackrestore(i8* %79)
  %82 = getelementptr [12 x i8], [12 x i8]* @.str367, i32 0, i32 0
  %83 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str367.c, i8* %82, i64 11)
  %84 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %83)
  br i1 %84, label %then12, label %else13
then12:
  %85 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %78
  br label %merge14
else13:
  %86 = load { i64, i8* }*, { i64, i8* }** %77
  %87 = call i64 @nyx_array_length({ i64, i8* }* %86)
  %88 = icmp sgt i64 %87, 0
  br i1 %88, label %then15, label %else16
then15:
  %89 = getelementptr [6 x i8], [6 x i8]* @.str368, i32 0, i32 0
  %90 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str368.c, i8* %89, i64 5)
  %91 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %90)
  br i1 %91, label %then18, label %else19
then18:
  %92 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge20
else19:
  br label %merge20
merge20:
  br label %merge17
else16:
  br label %merge17
merge17:
  %93 = getelementptr [12 x i8], [12 x i8]* @.str369, i32 0, i32 0
  %94 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str369.c, i8* %93, i64 11)
  %95 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %94)
  br i1 %95, label %then21, label %else22
then21:
  %96 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %78
  br label %merge23
else22:
  %97 = getelementptr [11 x i8], [11 x i8]* @.str370, i32 0, i32 0
  %98 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str370.c, i8* %97, i64 10)
  %99 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %98)
  %100 = alloca %Token
  store %Token %99, %Token* %100
  %101 = load %Token, %Token* %100
  %102 = call %nyx_string* @get_token_value(%Token %101)
  %103 = alloca %nyx_string*
  store %nyx_string* %102, %nyx_string** %103
  %104 = call { i64, i8* }* @nyx_array_new_ptr()
  %105 = alloca { i64, i8* }*
  store { i64, i8* }* %104, { i64, i8* }** %105
  %106 = getelementptr [11 x i8], [11 x i8]* @.str371, i32 0, i32 0
  %107 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str371.c, i8* %106, i64 10)
  %108 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %107)
  br i1 %108, label %then24, label %else25
then24:
  %109 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %110 = alloca i1
  store i1 0, i1* %110
  %111 = call i8* @llvm.stacksave()
  br label %while_cond27
while_cond27:
  %112 = load i1, i1* %110
  %113 = xor i1 %112, true
  br i1 %113, label %while_body28, label %while_end29
while_body28:
  call void @llvm.stackrestore(i8* %111)
  %114 = getelementptr [12 x i8], [12 x i8]* @.str372, i32 0, i32 0
  %115 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str372.c, i8* %114, i64 11)
  %116 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %115)
  br i1 %116, label %then30, label %else31
then30:
  %117 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %110
  br label %merge32
else31:
  %118 = load { i64, i8* }*, { i64, i8* }** %105
  %119 = call i64 @nyx_array_length({ i64, i8* }* %118)
  %120 = icmp sgt i64 %119, 0
  br i1 %120, label %then33, label %else34
then33:
  %121 = getelementptr [6 x i8], [6 x i8]* @.str373, i32 0, i32 0
  %122 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str373.c, i8* %121, i64 5)
  %123 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %122)
  br label %merge35
else34:
  br label %merge35
merge35:
  %124 = getelementptr [11 x i8], [11 x i8]* @.str374, i32 0, i32 0
  %125 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str374.c, i8* %124, i64 10)
  %126 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %125)
  %127 = alloca %Token
  store %Token %126, %Token* %127
  %128 = load { i64, i8* }*, { i64, i8* }** %105
  %129 = load %Token, %Token* %127
  %130 = call %nyx_string* @get_token_value(%Token %129)
  %131 = ptrtoint %nyx_string* %130 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %128, i64 %131, i64 2)
  br label %merge32
merge32:
  br label %while_cond27
while_end29:
  br label %merge26
else25:
  br label %merge26
merge26:
  %132 = call { i64, i8* }* @nyx_array_new_ptr()
  %133 = alloca { i64, i8* }*
  store { i64, i8* }* %132, { i64, i8* }** %133
  %134 = load { i64, i8* }*, { i64, i8* }** %133
  %135 = load %nyx_string*, %nyx_string** %103
  %136 = ptrtoint %nyx_string* %135 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %134, i64 %136, i64 2)
  %137 = load { i64, i8* }*, { i64, i8* }** %133
  %138 = load { i64, i8* }*, { i64, i8* }** %105
  %139 = ptrtoint { i64, i8* }* %138 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %137, i64 %139, i64 5)
  %140 = load { i64, i8* }*, { i64, i8* }** %77
  %141 = load { i64, i8* }*, { i64, i8* }** %133
  %142 = ptrtoint { i64, i8* }* %141 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %140, i64 %142, i64 5)
  br label %merge23
merge23:
  br label %merge14
merge14:
  br label %while_cond9
while_end11:
  %143 = getelementptr [9 x i8], [9 x i8]* @.str375, i32 0, i32 0
  %144 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str375.c, i8* %143, i64 8)
  %145 = call { i64, i8* }* @nyx_array_new_ptr()
  %146 = load %nyx_string*, %nyx_string** %39
  %147 = ptrtoint %nyx_string* %146 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %145, i64 %147, i64 2)
  %148 = load { i64, i8* }*, { i64, i8* }** %77
  %149 = ptrtoint { i64, i8* }* %148 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %145, i64 %149, i64 5)
  %150 = load { i64, i8* }*, { i64, i8* }** %41
  %151 = ptrtoint { i64, i8* }* %150 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %145, i64 %151, i64 5)
  %152 = call { i64, i8* }* @make_astnode(%nyx_string* %144, { i64, i8* }* %145)
  %153 = alloca { i64, i8* }*
  store { i64, i8* }* %152, { i64, i8* }** %153
  %154 = load { i64, i8* }*, { i64, i8* }** %153
  %155 = load %Token, %Token* %36
  %156 = call i64 @get_token_line(%Token %155)
  call void @nyx_array_set({ i64, i8* }* %154, i64 2, i64 %156)
  %157 = load { i64, i8* }*, { i64, i8* }** %153
  ret { i64, i8* }* %157
}

define internal { i64, i8* }* @parse__parse_single_pattern(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = getelementptr [9 x i8], [9 x i8]* @.str376, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str376.c, i8* %30, i64 8)
  %32 = call { i64, i8* }* @nyx_array_new_ptr()
  %33 = call { i64, i8* }* @make_astnode(%nyx_string* %31, { i64, i8* }* %32)
  %34 = alloca { i64, i8* }*
  store { i64, i8* }* %33, { i64, i8* }** %34
  %35 = getelementptr [7 x i8], [7 x i8]* @.str377, i32 0, i32 0
  %36 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str377.c, i8* %35, i64 6)
  %37 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %36)
  br i1 %37, label %then0, label %else1
then0:
  %38 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %39 = alloca %Token
  store %Token %38, %Token* %39
  %40 = load %Token, %Token* %39
  %41 = call %nyx_string* @get_token_value(%Token %40)
  %42 = alloca %nyx_string*
  store %nyx_string* %41, %nyx_string** %42
  %43 = load %nyx_string*, %nyx_string** %42
  %44 = getelementptr [2 x i8], [2 x i8]* @.str378, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str378.c, i8* %44, i64 1)
  %46 = call i64 @nyx_string_index_of(%nyx_string* %43, %nyx_string* %45)
  %47 = icmp sge i64 %46, 0
  br i1 %47, label %then3, label %else4
then3:
  %48 = getelementptr [16 x i8], [16 x i8]* @.str379, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str379.c, i8* %48, i64 15)
  %50 = call { i64, i8* }* @nyx_array_new_ptr()
  %51 = load %nyx_string*, %nyx_string** %42
  %52 = ptrtoint %nyx_string* %51 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %50, i64 %52, i64 2)
  %53 = getelementptr [6 x i8], [6 x i8]* @.str380, i32 0, i32 0
  %54 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str380.c, i8* %53, i64 5)
  %55 = ptrtoint %nyx_string* %54 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %50, i64 %55, i64 2)
  %56 = call { i64, i8* }* @make_astnode(%nyx_string* %49, { i64, i8* }* %50)
  ret { i64, i8* }* %56
else4:
  br label %merge5
merge5:
  %57 = getelementptr [16 x i8], [16 x i8]* @.str381, i32 0, i32 0
  %58 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str381.c, i8* %57, i64 15)
  %59 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %58)
  br i1 %59, label %then6, label %else7
then6:
  %60 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %61 = getelementptr [1 x i8], [1 x i8]* @.str382, i32 0, i32 0
  %62 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str382.c, i8* %61, i64 0)
  %63 = alloca %nyx_string*
  store %nyx_string* %62, %nyx_string** %63
  %64 = getelementptr [6 x i8], [6 x i8]* @.str383, i32 0, i32 0
  %65 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str383.c, i8* %64, i64 5)
  %66 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %65)
  br i1 %66, label %then9, label %else10
then9:
  %67 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %68 = getelementptr [7 x i8], [7 x i8]* @.str384, i32 0, i32 0
  %69 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str384.c, i8* %68, i64 6)
  %70 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %69)
  %71 = alloca %Token
  store %Token %70, %Token* %71
  %72 = getelementptr [2 x i8], [2 x i8]* @.str385, i32 0, i32 0
  %73 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str385.c, i8* %72, i64 1)
  %74 = load %Token, %Token* %71
  %75 = call %nyx_string* @get_token_value(%Token %74)
  %76 = call %nyx_string* @nyx_string_concat(%nyx_string* %73, %nyx_string* %75)
  store %nyx_string* %76, %nyx_string** %63
  br label %merge11
else10:
  %77 = getelementptr [7 x i8], [7 x i8]* @.str386, i32 0, i32 0
  %78 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str386.c, i8* %77, i64 6)
  %79 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %78)
  %80 = alloca %Token
  store %Token %79, %Token* %80
  %81 = load %Token, %Token* %80
  %82 = call %nyx_string* @get_token_value(%Token %81)
  store %nyx_string* %82, %nyx_string** %63
  br label %merge11
merge11:
  %83 = getelementptr [14 x i8], [14 x i8]* @.str387, i32 0, i32 0
  %84 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str387.c, i8* %83, i64 13)
  %85 = call { i64, i8* }* @nyx_array_new_ptr()
  %86 = load %nyx_string*, %nyx_string** %42
  %87 = ptrtoint %nyx_string* %86 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %85, i64 %87, i64 2)
  %88 = load %nyx_string*, %nyx_string** %63
  %89 = ptrtoint %nyx_string* %88 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %85, i64 %89, i64 2)
  %90 = getelementptr [5 x i8], [5 x i8]* @.str388, i32 0, i32 0
  %91 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str388.c, i8* %90, i64 4)
  %92 = ptrtoint %nyx_string* %91 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %85, i64 %92, i64 2)
  %93 = getelementptr [4 x i8], [4 x i8]* @.str389, i32 0, i32 0
  %94 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str389.c, i8* %93, i64 3)
  %95 = ptrtoint %nyx_string* %94 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %85, i64 %95, i64 2)
  %96 = call { i64, i8* }* @make_astnode(%nyx_string* %84, { i64, i8* }* %85)
  ret { i64, i8* }* %96
else7:
  br label %merge8
merge8:
  %97 = getelementptr [6 x i8], [6 x i8]* @.str390, i32 0, i32 0
  %98 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str390.c, i8* %97, i64 5)
  %99 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %98)
  br i1 %99, label %then12, label %else13
then12:
  %100 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %101 = getelementptr [1 x i8], [1 x i8]* @.str391, i32 0, i32 0
  %102 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str391.c, i8* %101, i64 0)
  %103 = alloca %nyx_string*
  store %nyx_string* %102, %nyx_string** %103
  %104 = getelementptr [6 x i8], [6 x i8]* @.str392, i32 0, i32 0
  %105 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str392.c, i8* %104, i64 5)
  %106 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %105)
  br i1 %106, label %then15, label %else16
then15:
  %107 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %108 = getelementptr [7 x i8], [7 x i8]* @.str393, i32 0, i32 0
  %109 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str393.c, i8* %108, i64 6)
  %110 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %109)
  %111 = alloca %Token
  store %Token %110, %Token* %111
  %112 = getelementptr [2 x i8], [2 x i8]* @.str394, i32 0, i32 0
  %113 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str394.c, i8* %112, i64 1)
  %114 = load %Token, %Token* %111
  %115 = call %nyx_string* @get_token_value(%Token %114)
  %116 = call %nyx_string* @nyx_string_concat(%nyx_string* %113, %nyx_string* %115)
  store %nyx_string* %116, %nyx_string** %103
  br label %merge17
else16:
  %117 = getelementptr [7 x i8], [7 x i8]* @.str395, i32 0, i32 0
  %118 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str395.c, i8* %117, i64 6)
  %119 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %118)
  %120 = alloca %Token
  store %Token %119, %Token* %120
  %121 = load %Token, %Token* %120
  %122 = call %nyx_string* @get_token_value(%Token %121)
  store %nyx_string* %122, %nyx_string** %103
  br label %merge17
merge17:
  %123 = getelementptr [14 x i8], [14 x i8]* @.str396, i32 0, i32 0
  %124 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str396.c, i8* %123, i64 13)
  %125 = call { i64, i8* }* @nyx_array_new_ptr()
  %126 = load %nyx_string*, %nyx_string** %42
  %127 = ptrtoint %nyx_string* %126 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %125, i64 %127, i64 2)
  %128 = load %nyx_string*, %nyx_string** %103
  %129 = ptrtoint %nyx_string* %128 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %125, i64 %129, i64 2)
  %130 = getelementptr [6 x i8], [6 x i8]* @.str397, i32 0, i32 0
  %131 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str397.c, i8* %130, i64 5)
  %132 = ptrtoint %nyx_string* %131 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %125, i64 %132, i64 2)
  %133 = getelementptr [4 x i8], [4 x i8]* @.str398, i32 0, i32 0
  %134 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str398.c, i8* %133, i64 3)
  %135 = ptrtoint %nyx_string* %134 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %125, i64 %135, i64 2)
  %136 = call { i64, i8* }* @make_astnode(%nyx_string* %124, { i64, i8* }* %125)
  ret { i64, i8* }* %136
else13:
  br label %merge14
merge14:
  %137 = getelementptr [16 x i8], [16 x i8]* @.str399, i32 0, i32 0
  %138 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str399.c, i8* %137, i64 15)
  %139 = call { i64, i8* }* @nyx_array_new_ptr()
  %140 = load %nyx_string*, %nyx_string** %42
  %141 = ptrtoint %nyx_string* %140 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %139, i64 %141, i64 2)
  %142 = getelementptr [4 x i8], [4 x i8]* @.str400, i32 0, i32 0
  %143 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str400.c, i8* %142, i64 3)
  %144 = ptrtoint %nyx_string* %143 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %139, i64 %144, i64 2)
  %145 = call { i64, i8* }* @make_astnode(%nyx_string* %138, { i64, i8* }* %139)
  ret { i64, i8* }* %145
else1:
  br label %merge2
merge2:
  %146 = getelementptr [7 x i8], [7 x i8]* @.str401, i32 0, i32 0
  %147 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str401.c, i8* %146, i64 6)
  %148 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %147)
  br i1 %148, label %then18, label %else19
then18:
  %149 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %150 = alloca %Token
  store %Token %149, %Token* %150
  %151 = getelementptr [16 x i8], [16 x i8]* @.str402, i32 0, i32 0
  %152 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str402.c, i8* %151, i64 15)
  %153 = call { i64, i8* }* @nyx_array_new_ptr()
  %154 = load %Token, %Token* %150
  %155 = call %nyx_string* @get_token_value(%Token %154)
  %156 = ptrtoint %nyx_string* %155 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %153, i64 %156, i64 2)
  %157 = getelementptr [7 x i8], [7 x i8]* @.str403, i32 0, i32 0
  %158 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str403.c, i8* %157, i64 6)
  %159 = ptrtoint %nyx_string* %158 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %153, i64 %159, i64 2)
  %160 = call { i64, i8* }* @make_astnode(%nyx_string* %152, { i64, i8* }* %153)
  ret { i64, i8* }* %160
else19:
  br label %merge20
merge20:
  %161 = getelementptr [5 x i8], [5 x i8]* @.str404, i32 0, i32 0
  %162 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str404.c, i8* %161, i64 4)
  %163 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %162)
  br i1 %163, label %then21, label %else22
then21:
  %164 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %165 = getelementptr [16 x i8], [16 x i8]* @.str405, i32 0, i32 0
  %166 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str405.c, i8* %165, i64 15)
  %167 = call { i64, i8* }* @nyx_array_new_ptr()
  %168 = getelementptr [5 x i8], [5 x i8]* @.str406, i32 0, i32 0
  %169 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str406.c, i8* %168, i64 4)
  %170 = ptrtoint %nyx_string* %169 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %167, i64 %170, i64 2)
  %171 = getelementptr [5 x i8], [5 x i8]* @.str407, i32 0, i32 0
  %172 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str407.c, i8* %171, i64 4)
  %173 = ptrtoint %nyx_string* %172 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %167, i64 %173, i64 2)
  %174 = call { i64, i8* }* @make_astnode(%nyx_string* %166, { i64, i8* }* %167)
  ret { i64, i8* }* %174
else22:
  br label %merge23
merge23:
  %175 = getelementptr [6 x i8], [6 x i8]* @.str408, i32 0, i32 0
  %176 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str408.c, i8* %175, i64 5)
  %177 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %176)
  br i1 %177, label %then24, label %else25
then24:
  %178 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %179 = getelementptr [16 x i8], [16 x i8]* @.str409, i32 0, i32 0
  %180 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str409.c, i8* %179, i64 15)
  %181 = call { i64, i8* }* @nyx_array_new_ptr()
  %182 = getelementptr [6 x i8], [6 x i8]* @.str410, i32 0, i32 0
  %183 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str410.c, i8* %182, i64 5)
  %184 = ptrtoint %nyx_string* %183 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %181, i64 %184, i64 2)
  %185 = getelementptr [5 x i8], [5 x i8]* @.str411, i32 0, i32 0
  %186 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str411.c, i8* %185, i64 4)
  %187 = ptrtoint %nyx_string* %186 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %181, i64 %187, i64 2)
  %188 = call { i64, i8* }* @make_astnode(%nyx_string* %180, { i64, i8* }* %181)
  ret { i64, i8* }* %188
else25:
  br label %merge26
merge26:
  %189 = getelementptr [6 x i8], [6 x i8]* @.str412, i32 0, i32 0
  %190 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str412.c, i8* %189, i64 5)
  %191 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %190)
  br i1 %191, label %then27, label %else28
then27:
  %192 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %193 = getelementptr [7 x i8], [7 x i8]* @.str413, i32 0, i32 0
  %194 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str413.c, i8* %193, i64 6)
  %195 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %194)
  br i1 %195, label %then30, label %else31
then30:
  %196 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %197 = alloca %Token
  store %Token %196, %Token* %197
  %198 = load %Token, %Token* %197
  %199 = call %nyx_string* @get_token_value(%Token %198)
  %200 = alloca %nyx_string*
  store %nyx_string* %199, %nyx_string** %200
  %201 = load %nyx_string*, %nyx_string** %200
  %202 = getelementptr [2 x i8], [2 x i8]* @.str414, i32 0, i32 0
  %203 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str414.c, i8* %202, i64 1)
  %204 = call i64 @nyx_string_index_of(%nyx_string* %201, %nyx_string* %203)
  %205 = icmp sge i64 %204, 0
  br i1 %205, label %then33, label %else34
then33:
  %206 = getelementptr [16 x i8], [16 x i8]* @.str415, i32 0, i32 0
  %207 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str415.c, i8* %206, i64 15)
  %208 = call { i64, i8* }* @nyx_array_new_ptr()
  %209 = getelementptr [2 x i8], [2 x i8]* @.str416, i32 0, i32 0
  %210 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str416.c, i8* %209, i64 1)
  %211 = load %nyx_string*, %nyx_string** %200
  %212 = call %nyx_string* @nyx_string_concat(%nyx_string* %210, %nyx_string* %211)
  %213 = ptrtoint %nyx_string* %212 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %208, i64 %213, i64 2)
  %214 = getelementptr [6 x i8], [6 x i8]* @.str417, i32 0, i32 0
  %215 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str417.c, i8* %214, i64 5)
  %216 = ptrtoint %nyx_string* %215 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %208, i64 %216, i64 2)
  %217 = call { i64, i8* }* @make_astnode(%nyx_string* %207, { i64, i8* }* %208)
  ret { i64, i8* }* %217
else34:
  br label %merge35
merge35:
  %218 = getelementptr [16 x i8], [16 x i8]* @.str418, i32 0, i32 0
  %219 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str418.c, i8* %218, i64 15)
  %220 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %219)
  br i1 %220, label %then36, label %else37
then36:
  %221 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %222 = getelementptr [1 x i8], [1 x i8]* @.str419, i32 0, i32 0
  %223 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str419.c, i8* %222, i64 0)
  %224 = alloca %nyx_string*
  store %nyx_string* %223, %nyx_string** %224
  %225 = getelementptr [6 x i8], [6 x i8]* @.str420, i32 0, i32 0
  %226 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str420.c, i8* %225, i64 5)
  %227 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %226)
  br i1 %227, label %then39, label %else40
then39:
  %228 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %229 = getelementptr [7 x i8], [7 x i8]* @.str421, i32 0, i32 0
  %230 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str421.c, i8* %229, i64 6)
  %231 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %230)
  %232 = alloca %Token
  store %Token %231, %Token* %232
  %233 = getelementptr [2 x i8], [2 x i8]* @.str422, i32 0, i32 0
  %234 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str422.c, i8* %233, i64 1)
  %235 = load %Token, %Token* %232
  %236 = call %nyx_string* @get_token_value(%Token %235)
  %237 = call %nyx_string* @nyx_string_concat(%nyx_string* %234, %nyx_string* %236)
  store %nyx_string* %237, %nyx_string** %224
  br label %merge41
else40:
  %238 = getelementptr [7 x i8], [7 x i8]* @.str423, i32 0, i32 0
  %239 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str423.c, i8* %238, i64 6)
  %240 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %239)
  %241 = alloca %Token
  store %Token %240, %Token* %241
  %242 = load %Token, %Token* %241
  %243 = call %nyx_string* @get_token_value(%Token %242)
  store %nyx_string* %243, %nyx_string** %224
  br label %merge41
merge41:
  %244 = getelementptr [14 x i8], [14 x i8]* @.str424, i32 0, i32 0
  %245 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str424.c, i8* %244, i64 13)
  %246 = call { i64, i8* }* @nyx_array_new_ptr()
  %247 = getelementptr [2 x i8], [2 x i8]* @.str425, i32 0, i32 0
  %248 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str425.c, i8* %247, i64 1)
  %249 = load %nyx_string*, %nyx_string** %200
  %250 = call %nyx_string* @nyx_string_concat(%nyx_string* %248, %nyx_string* %249)
  %251 = ptrtoint %nyx_string* %250 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %246, i64 %251, i64 2)
  %252 = load %nyx_string*, %nyx_string** %224
  %253 = ptrtoint %nyx_string* %252 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %246, i64 %253, i64 2)
  %254 = getelementptr [5 x i8], [5 x i8]* @.str426, i32 0, i32 0
  %255 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str426.c, i8* %254, i64 4)
  %256 = ptrtoint %nyx_string* %255 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %246, i64 %256, i64 2)
  %257 = getelementptr [4 x i8], [4 x i8]* @.str427, i32 0, i32 0
  %258 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str427.c, i8* %257, i64 3)
  %259 = ptrtoint %nyx_string* %258 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %246, i64 %259, i64 2)
  %260 = call { i64, i8* }* @make_astnode(%nyx_string* %245, { i64, i8* }* %246)
  ret { i64, i8* }* %260
else37:
  br label %merge38
merge38:
  %261 = getelementptr [6 x i8], [6 x i8]* @.str428, i32 0, i32 0
  %262 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str428.c, i8* %261, i64 5)
  %263 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %262)
  br i1 %263, label %then42, label %else43
then42:
  %264 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %265 = getelementptr [1 x i8], [1 x i8]* @.str429, i32 0, i32 0
  %266 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str429.c, i8* %265, i64 0)
  %267 = alloca %nyx_string*
  store %nyx_string* %266, %nyx_string** %267
  %268 = getelementptr [6 x i8], [6 x i8]* @.str430, i32 0, i32 0
  %269 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str430.c, i8* %268, i64 5)
  %270 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %269)
  br i1 %270, label %then45, label %else46
then45:
  %271 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %272 = getelementptr [7 x i8], [7 x i8]* @.str431, i32 0, i32 0
  %273 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str431.c, i8* %272, i64 6)
  %274 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %273)
  %275 = alloca %Token
  store %Token %274, %Token* %275
  %276 = getelementptr [2 x i8], [2 x i8]* @.str432, i32 0, i32 0
  %277 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str432.c, i8* %276, i64 1)
  %278 = load %Token, %Token* %275
  %279 = call %nyx_string* @get_token_value(%Token %278)
  %280 = call %nyx_string* @nyx_string_concat(%nyx_string* %277, %nyx_string* %279)
  store %nyx_string* %280, %nyx_string** %267
  br label %merge47
else46:
  %281 = getelementptr [7 x i8], [7 x i8]* @.str433, i32 0, i32 0
  %282 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str433.c, i8* %281, i64 6)
  %283 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %282)
  %284 = alloca %Token
  store %Token %283, %Token* %284
  %285 = load %Token, %Token* %284
  %286 = call %nyx_string* @get_token_value(%Token %285)
  store %nyx_string* %286, %nyx_string** %267
  br label %merge47
merge47:
  %287 = getelementptr [14 x i8], [14 x i8]* @.str434, i32 0, i32 0
  %288 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str434.c, i8* %287, i64 13)
  %289 = call { i64, i8* }* @nyx_array_new_ptr()
  %290 = getelementptr [2 x i8], [2 x i8]* @.str435, i32 0, i32 0
  %291 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str435.c, i8* %290, i64 1)
  %292 = load %nyx_string*, %nyx_string** %200
  %293 = call %nyx_string* @nyx_string_concat(%nyx_string* %291, %nyx_string* %292)
  %294 = ptrtoint %nyx_string* %293 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %289, i64 %294, i64 2)
  %295 = load %nyx_string*, %nyx_string** %267
  %296 = ptrtoint %nyx_string* %295 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %289, i64 %296, i64 2)
  %297 = getelementptr [6 x i8], [6 x i8]* @.str436, i32 0, i32 0
  %298 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str436.c, i8* %297, i64 5)
  %299 = ptrtoint %nyx_string* %298 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %289, i64 %299, i64 2)
  %300 = getelementptr [4 x i8], [4 x i8]* @.str437, i32 0, i32 0
  %301 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str437.c, i8* %300, i64 3)
  %302 = ptrtoint %nyx_string* %301 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %289, i64 %302, i64 2)
  %303 = call { i64, i8* }* @make_astnode(%nyx_string* %288, { i64, i8* }* %289)
  ret { i64, i8* }* %303
else43:
  br label %merge44
merge44:
  %304 = getelementptr [16 x i8], [16 x i8]* @.str438, i32 0, i32 0
  %305 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str438.c, i8* %304, i64 15)
  %306 = call { i64, i8* }* @nyx_array_new_ptr()
  %307 = getelementptr [2 x i8], [2 x i8]* @.str439, i32 0, i32 0
  %308 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str439.c, i8* %307, i64 1)
  %309 = load %nyx_string*, %nyx_string** %200
  %310 = call %nyx_string* @nyx_string_concat(%nyx_string* %308, %nyx_string* %309)
  %311 = ptrtoint %nyx_string* %310 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %306, i64 %311, i64 2)
  %312 = getelementptr [4 x i8], [4 x i8]* @.str440, i32 0, i32 0
  %313 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str440.c, i8* %312, i64 3)
  %314 = ptrtoint %nyx_string* %313 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %306, i64 %314, i64 2)
  %315 = call { i64, i8* }* @make_astnode(%nyx_string* %305, { i64, i8* }* %306)
  ret { i64, i8* }* %315
else31:
  br label %merge32
merge32:
  br label %merge29
else28:
  br label %merge29
merge29:
  %316 = getelementptr [11 x i8], [11 x i8]* @.str441, i32 0, i32 0
  %317 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str441.c, i8* %316, i64 10)
  %318 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %317)
  br i1 %318, label %then48, label %else49
then48:
  %319 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %320 = alloca %Token
  store %Token %319, %Token* %320
  %321 = load %Token, %Token* %320
  %322 = call %nyx_string* @get_token_value(%Token %321)
  %323 = alloca %nyx_string*
  store %nyx_string* %322, %nyx_string** %323
  %324 = load %nyx_string*, %nyx_string** %323
  %325 = getelementptr [2 x i8], [2 x i8]* @.str442, i32 0, i32 0
  %326 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str442.c, i8* %325, i64 1)
  %327 = call i1 @nyx_string_equals(%nyx_string* %324, %nyx_string* %326)
  br i1 %327, label %then51, label %else52
then51:
  %328 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge53
else52:
  %329 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %330 = load %nyx_string*, %nyx_string** %323
  %331 = alloca %nyx_string*
  store %nyx_string* %330, %nyx_string** %331
  %332 = getelementptr [4 x i8], [4 x i8]* @.str443, i32 0, i32 0
  %333 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str443.c, i8* %332, i64 3)
  %334 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %333)
  br i1 %334, label %then54, label %else55
then54:
  %335 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %336 = getelementptr [11 x i8], [11 x i8]* @.str444, i32 0, i32 0
  %337 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str444.c, i8* %336, i64 10)
  %338 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %337)
  %339 = alloca %Token
  store %Token %338, %Token* %339
  %340 = load %Token, %Token* %339
  %341 = call %nyx_string* @get_token_value(%Token %340)
  %342 = alloca %nyx_string*
  store %nyx_string* %341, %nyx_string** %342
  %343 = call { i64, i8* }* @nyx_array_new_ptr()
  %344 = alloca { i64, i8* }*
  store { i64, i8* }* %343, { i64, i8* }** %344
  %345 = alloca i1
  store i1 0, i1* %345
  %346 = call { i64, i8* }* @nyx_array_new_ptr()
  %347 = alloca { i64, i8* }*
  store { i64, i8* }* %346, { i64, i8* }** %347
  %348 = getelementptr [11 x i8], [11 x i8]* @.str445, i32 0, i32 0
  %349 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str445.c, i8* %348, i64 10)
  %350 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %349)
  br i1 %350, label %then57, label %else58
then57:
  %351 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %352 = alloca i1
  store i1 0, i1* %352
  %353 = call i8* @llvm.stacksave()
  br label %while_cond60
while_cond60:
  %354 = load i1, i1* %352
  %355 = xor i1 %354, true
  br i1 %355, label %while_body61, label %while_end62
while_body61:
  call void @llvm.stackrestore(i8* %353)
  %356 = getelementptr [12 x i8], [12 x i8]* @.str446, i32 0, i32 0
  %357 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str446.c, i8* %356, i64 11)
  %358 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %357)
  br i1 %358, label %then63, label %else64
then63:
  %359 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %352
  br label %merge65
else64:
  %360 = load { i64, i8* }*, { i64, i8* }** %347
  %361 = call i64 @nyx_array_length({ i64, i8* }* %360)
  %362 = icmp sgt i64 %361, 0
  br i1 %362, label %then66, label %else67
then66:
  %363 = getelementptr [6 x i8], [6 x i8]* @.str447, i32 0, i32 0
  %364 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str447.c, i8* %363, i64 5)
  %365 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %364)
  br label %merge68
else67:
  br label %merge68
merge68:
  %366 = call { i64, i8* }* @parse__parse_single_pattern(%SharedEnv_parse* %env.param)
  %367 = alloca { i64, i8* }*
  store { i64, i8* }* %366, { i64, i8* }** %367
  %368 = load { i64, i8* }*, { i64, i8* }** %347
  %369 = load { i64, i8* }*, { i64, i8* }** %367
  %370 = ptrtoint { i64, i8* }* %369 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %368, i64 %370, i64 5)
  %371 = load { i64, i8* }*, { i64, i8* }** %367
  %372 = call %nyx_string* @astnode_get_type({ i64, i8* }* %371)
  %373 = alloca %nyx_string*
  store %nyx_string* %372, %nyx_string** %373
  %374 = alloca i1
  store i1 false, i1* %374
  %375 = load %nyx_string*, %nyx_string** %373
  %376 = getelementptr [19 x i8], [19 x i8]* @.str448, i32 0, i32 0
  %377 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str448.c, i8* %376, i64 18)
  %378 = call i1 @nyx_string_equals(%nyx_string* %375, %nyx_string* %377)
  %379 = xor i1 %378, true
  br i1 %379, label %sc_and_rhs69, label %sc_and_end70
sc_and_rhs69:
  %380 = load %nyx_string*, %nyx_string** %373
  %381 = getelementptr [9 x i8], [9 x i8]* @.str449, i32 0, i32 0
  %382 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str449.c, i8* %381, i64 8)
  %383 = call i1 @nyx_string_equals(%nyx_string* %380, %nyx_string* %382)
  %384 = xor i1 %383, true
  store i1 %384, i1* %374
  br label %sc_and_end70
sc_and_end70:
  %385 = load i1, i1* %374
  br i1 %385, label %then71, label %else72
then71:
  store i1 1, i1* %345
  br label %merge73
else72:
  br label %merge73
merge73:
  br label %merge65
merge65:
  br label %while_cond60
while_end62:
  br label %merge59
else58:
  br label %merge59
merge59:
  %386 = load i1, i1* %345
  br i1 %386, label %then74, label %else75
then74:
  %387 = getelementptr [21 x i8], [21 x i8]* @.str450, i32 0, i32 0
  %388 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str450.c, i8* %387, i64 20)
  %389 = call { i64, i8* }* @nyx_array_new_ptr()
  %390 = load %nyx_string*, %nyx_string** %331
  %391 = ptrtoint %nyx_string* %390 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %389, i64 %391, i64 2)
  %392 = load %nyx_string*, %nyx_string** %342
  %393 = ptrtoint %nyx_string* %392 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %389, i64 %393, i64 2)
  %394 = load { i64, i8* }*, { i64, i8* }** %347
  %395 = ptrtoint { i64, i8* }* %394 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %389, i64 %395, i64 5)
  %396 = call { i64, i8* }* @make_astnode(%nyx_string* %388, { i64, i8* }* %389)
  store { i64, i8* }* %396, { i64, i8* }** %34
  br label %merge76
else75:
  %397 = alloca i64
  store i64 0, i64* %397
  %398 = call i8* @llvm.stacksave()
  br label %while_cond77
while_cond77:
  %399 = load i64, i64* %397
  %400 = load { i64, i8* }*, { i64, i8* }** %347
  %401 = call i64 @nyx_array_length({ i64, i8* }* %400)
  %402 = icmp slt i64 %399, %401
  br i1 %402, label %while_body78, label %while_end79
while_body78:
  call void @llvm.stackrestore(i8* %398)
  %403 = load { i64, i8* }*, { i64, i8* }** %347
  %404 = load i64, i64* %397
  %405 = call i64 @nyx_array_get({ i64, i8* }* %403, i64 %404)
  %406 = inttoptr i64 %405 to { i64, i8* }*
  %407 = call i64 @nyx_array_get({ i64, i8* }* %406, i64 0)
  %408 = call i64 @nyx_array_get({ i64, i8* }* %406, i64 1)
  %409 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %406, i64 2)
  %410 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %406, i64 3)
  %411 = inttoptr i64 %407 to %nyx_string*
  %412 = inttoptr i64 %408 to { i64, i8* }*
  %413 = alloca %ASTNode
  %414 = getelementptr inbounds %ASTNode, %ASTNode* %413, i32 0, i32 0
  store %nyx_string* %411, %nyx_string** %414
  %415 = getelementptr inbounds %ASTNode, %ASTNode* %413, i32 0, i32 1
  store { i64, i8* }* %412, { i64, i8* }** %415
  %416 = getelementptr inbounds %ASTNode, %ASTNode* %413, i32 0, i32 2
  store i64 %409, i64* %416
  %417 = getelementptr inbounds %ASTNode, %ASTNode* %413, i32 0, i32 3
  store i64 %410, i64* %417
  %418 = load %ASTNode, %ASTNode* %413
  %419 = alloca %ASTNode
  store %ASTNode %418, %ASTNode* %419
  %420 = getelementptr %ASTNode, %ASTNode* %419, i32 0, i32 0
  %421 = load %nyx_string*, %nyx_string** %420
  %422 = getelementptr [9 x i8], [9 x i8]* @.str451, i32 0, i32 0
  %423 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str451.c, i8* %422, i64 8)
  %424 = call i1 @nyx_string_equals(%nyx_string* %421, %nyx_string* %423)
  br i1 %424, label %then80, label %else81
then80:
  %425 = load { i64, i8* }*, { i64, i8* }** %344
  %426 = getelementptr [2 x i8], [2 x i8]* @.str452, i32 0, i32 0
  %427 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str452.c, i8* %426, i64 1)
  %428 = ptrtoint %nyx_string* %427 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %425, i64 %428, i64 2)
  br label %merge82
else81:
  %429 = getelementptr %ASTNode, %ASTNode* %419, i32 0, i32 1
  %430 = load { i64, i8* }*, { i64, i8* }** %429
  %431 = call i64 @nyx_array_get({ i64, i8* }* %430, i64 0)
  %432 = inttoptr i64 %431 to %nyx_string*
  %433 = alloca %nyx_string*
  store %nyx_string* %432, %nyx_string** %433
  %434 = load { i64, i8* }*, { i64, i8* }** %344
  %435 = load %nyx_string*, %nyx_string** %433
  %436 = ptrtoint %nyx_string* %435 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %434, i64 %436, i64 2)
  br label %merge82
merge82:
  %437 = load i64, i64* %397
  %438 = add i64 %437, 1
  store i64 %438, i64* %397
  br label %while_cond77
while_end79:
  %439 = getelementptr [14 x i8], [14 x i8]* @.str453, i32 0, i32 0
  %440 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str453.c, i8* %439, i64 13)
  %441 = call { i64, i8* }* @nyx_array_new_ptr()
  %442 = load %nyx_string*, %nyx_string** %331
  %443 = ptrtoint %nyx_string* %442 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %441, i64 %443, i64 2)
  %444 = load %nyx_string*, %nyx_string** %342
  %445 = ptrtoint %nyx_string* %444 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %441, i64 %445, i64 2)
  %446 = load { i64, i8* }*, { i64, i8* }** %344
  %447 = ptrtoint { i64, i8* }* %446 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %441, i64 %447, i64 5)
  %448 = call { i64, i8* }* @make_astnode(%nyx_string* %440, { i64, i8* }* %441)
  store { i64, i8* }* %448, { i64, i8* }** %34
  br label %merge76
merge76:
  br label %merge56
else55:
  %449 = getelementptr [11 x i8], [11 x i8]* @.str454, i32 0, i32 0
  %450 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str454.c, i8* %449, i64 10)
  %451 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %450)
  br i1 %451, label %then83, label %else84
then83:
  %452 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %453 = call { i64, i8* }* @nyx_array_new_ptr()
  %454 = alloca { i64, i8* }*
  store { i64, i8* }* %453, { i64, i8* }** %454
  %455 = call i8* @llvm.stacksave()
  br label %while_cond86
while_cond86:
  %456 = getelementptr [12 x i8], [12 x i8]* @.str455, i32 0, i32 0
  %457 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str455.c, i8* %456, i64 11)
  %458 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %457)
  %459 = xor i1 %458, true
  br i1 %459, label %while_body87, label %while_end88
while_body87:
  call void @llvm.stackrestore(i8* %455)
  %460 = load { i64, i8* }*, { i64, i8* }** %454
  %461 = call i64 @nyx_array_length({ i64, i8* }* %460)
  %462 = icmp sgt i64 %461, 0
  br i1 %462, label %then89, label %else90
then89:
  %463 = getelementptr [6 x i8], [6 x i8]* @.str456, i32 0, i32 0
  %464 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str456.c, i8* %463, i64 5)
  %465 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %464)
  br label %merge91
else90:
  br label %merge91
merge91:
  %466 = getelementptr [11 x i8], [11 x i8]* @.str457, i32 0, i32 0
  %467 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str457.c, i8* %466, i64 10)
  %468 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %467)
  %469 = alloca %Token
  store %Token %468, %Token* %469
  %470 = load %Token, %Token* %469
  %471 = call %nyx_string* @get_token_value(%Token %470)
  %472 = alloca %nyx_string*
  store %nyx_string* %471, %nyx_string** %472
  %473 = load %nyx_string*, %nyx_string** %472
  %474 = alloca %nyx_string*
  store %nyx_string* %473, %nyx_string** %474
  %475 = getelementptr [6 x i8], [6 x i8]* @.str458, i32 0, i32 0
  %476 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str458.c, i8* %475, i64 5)
  %477 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %476)
  br i1 %477, label %then92, label %else93
then92:
  %478 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %479 = getelementptr [11 x i8], [11 x i8]* @.str459, i32 0, i32 0
  %480 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str459.c, i8* %479, i64 10)
  %481 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %480)
  %482 = call %nyx_string* @get_token_value(%Token %481)
  store %nyx_string* %482, %nyx_string** %474
  br label %merge94
else93:
  br label %merge94
merge94:
  %483 = load { i64, i8* }*, { i64, i8* }** %454
  %484 = call { i64, i8* }* @nyx_array_new_ptr()
  %485 = load %nyx_string*, %nyx_string** %472
  %486 = ptrtoint %nyx_string* %485 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %484, i64 %486, i64 2)
  %487 = load %nyx_string*, %nyx_string** %474
  %488 = ptrtoint %nyx_string* %487 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %484, i64 %488, i64 2)
  %489 = ptrtoint { i64, i8* }* %484 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %483, i64 %489, i64 5)
  br label %while_cond86
while_end88:
  %490 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %491 = getelementptr [15 x i8], [15 x i8]* @.str460, i32 0, i32 0
  %492 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str460.c, i8* %491, i64 14)
  %493 = call { i64, i8* }* @nyx_array_new_ptr()
  %494 = load %nyx_string*, %nyx_string** %331
  %495 = ptrtoint %nyx_string* %494 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %493, i64 %495, i64 2)
  %496 = load { i64, i8* }*, { i64, i8* }** %454
  %497 = ptrtoint { i64, i8* }* %496 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %493, i64 %497, i64 5)
  %498 = call { i64, i8* }* @make_astnode(%nyx_string* %492, { i64, i8* }* %493)
  store { i64, i8* }* %498, { i64, i8* }** %34
  br label %merge85
else84:
  %499 = getelementptr [19 x i8], [19 x i8]* @.str461, i32 0, i32 0
  %500 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str461.c, i8* %499, i64 18)
  %501 = call { i64, i8* }* @nyx_array_new_ptr()
  %502 = load %nyx_string*, %nyx_string** %331
  %503 = ptrtoint %nyx_string* %502 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %501, i64 %503, i64 2)
  %504 = call { i64, i8* }* @make_astnode(%nyx_string* %500, { i64, i8* }* %501)
  store { i64, i8* }* %504, { i64, i8* }** %34
  br label %merge85
merge85:
  br label %merge56
merge56:
  br label %merge53
merge53:
  br label %merge50
else49:
  br label %merge50
merge50:
  %505 = load { i64, i8* }*, { i64, i8* }** %34
  ret { i64, i8* }* %505
}

define internal { i64, i8* }* @parse__parse_match_arm(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = call { i64, i8* }* @parse__parse_single_pattern(%SharedEnv_parse* %env.param)
  %31 = alloca { i64, i8* }*
  store { i64, i8* }* %30, { i64, i8* }** %31
  %32 = getelementptr [5 x i8], [5 x i8]* @.str462, i32 0, i32 0
  %33 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str462.c, i8* %32, i64 4)
  %34 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %33)
  br i1 %34, label %then0, label %else1
then0:
  %35 = call { i64, i8* }* @nyx_array_new_ptr()
  %36 = load { i64, i8* }*, { i64, i8* }** %31
  %37 = ptrtoint { i64, i8* }* %36 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %35, i64 %37, i64 5)
  %38 = alloca { i64, i8* }*
  store { i64, i8* }* %35, { i64, i8* }** %38
  %39 = call i8* @llvm.stacksave()
  br label %while_cond3
while_cond3:
  %40 = getelementptr [5 x i8], [5 x i8]* @.str463, i32 0, i32 0
  %41 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str463.c, i8* %40, i64 4)
  %42 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %41)
  br i1 %42, label %while_body4, label %while_end5
while_body4:
  call void @llvm.stackrestore(i8* %39)
  %43 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %44 = load { i64, i8* }*, { i64, i8* }** %38
  %45 = call { i64, i8* }* @parse__parse_single_pattern(%SharedEnv_parse* %env.param)
  %46 = ptrtoint { i64, i8* }* %45 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %44, i64 %46, i64 5)
  br label %while_cond3
while_end5:
  %47 = getelementptr [11 x i8], [11 x i8]* @.str464, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str464.c, i8* %47, i64 10)
  %49 = load { i64, i8* }*, { i64, i8* }** %38
  %50 = call { i64, i8* }* @make_astnode(%nyx_string* %48, { i64, i8* }* %49)
  store { i64, i8* }* %50, { i64, i8* }** %31
  br label %merge2
else1:
  br label %merge2
merge2:
  %51 = getelementptr [6 x i8], [6 x i8]* @.str465, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str465.c, i8* %51, i64 5)
  %53 = call { i64, i8* }* @nyx_array_new_ptr()
  %54 = call { i64, i8* }* @make_astnode(%nyx_string* %52, { i64, i8* }* %53)
  %55 = alloca { i64, i8* }*
  store { i64, i8* }* %54, { i64, i8* }** %55
  %56 = getelementptr [3 x i8], [3 x i8]* @.str466, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str466.c, i8* %56, i64 2)
  %58 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %57)
  br i1 %58, label %then6, label %else7
then6:
  %59 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %60 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %60, { i64, i8* }** %55
  br label %merge8
else7:
  br label %merge8
merge8:
  %61 = getelementptr [12 x i8], [12 x i8]* @.str467, i32 0, i32 0
  %62 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str467.c, i8* %61, i64 11)
  %63 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %62)
  %64 = getelementptr [6 x i8], [6 x i8]* @.str468, i32 0, i32 0
  %65 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str468.c, i8* %64, i64 5)
  %66 = call { i64, i8* }* @nyx_array_new_ptr()
  %67 = call { i64, i8* }* @make_astnode(%nyx_string* %65, { i64, i8* }* %66)
  %68 = alloca { i64, i8* }*
  store { i64, i8* }* %67, { i64, i8* }** %68
  %69 = getelementptr [11 x i8], [11 x i8]* @.str469, i32 0, i32 0
  %70 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str469.c, i8* %69, i64 10)
  %71 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %70)
  br i1 %71, label %then9, label %else10
then9:
  %72 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %72, { i64, i8* }** %68
  br label %merge11
else10:
  %73 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %73, { i64, i8* }** %68
  br label %merge11
merge11:
  %74 = getelementptr [10 x i8], [10 x i8]* @.str470, i32 0, i32 0
  %75 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str470.c, i8* %74, i64 9)
  %76 = call { i64, i8* }* @nyx_array_new_ptr()
  %77 = load { i64, i8* }*, { i64, i8* }** %31
  %78 = ptrtoint { i64, i8* }* %77 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %76, i64 %78, i64 5)
  %79 = load { i64, i8* }*, { i64, i8* }** %68
  %80 = ptrtoint { i64, i8* }* %79 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %76, i64 %80, i64 5)
  %81 = load { i64, i8* }*, { i64, i8* }** %55
  %82 = ptrtoint { i64, i8* }* %81 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %76, i64 %82, i64 5)
  %83 = call { i64, i8* }* @make_astnode(%nyx_string* %75, { i64, i8* }* %76)
  ret { i64, i8* }* %83
}

define internal { i64, i8* }* @parse__parse_match(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = getelementptr [6 x i8], [6 x i8]* @.str471, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str471.c, i8* %30, i64 5)
  %32 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %31)
  %33 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %34 = alloca { i64, i8* }*
  store { i64, i8* }* %33, { i64, i8* }** %34
  %35 = getelementptr [11 x i8], [11 x i8]* @.str472, i32 0, i32 0
  %36 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str472.c, i8* %35, i64 10)
  %37 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %36)
  %38 = call { i64, i8* }* @nyx_array_new_ptr()
  %39 = alloca { i64, i8* }*
  store { i64, i8* }* %38, { i64, i8* }** %39
  %40 = alloca i1
  store i1 0, i1* %40
  %41 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %42 = load i1, i1* %40
  %43 = xor i1 %42, true
  br i1 %43, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %41)
  %44 = getelementptr [12 x i8], [12 x i8]* @.str473, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str473.c, i8* %44, i64 11)
  %46 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %45)
  br i1 %46, label %then3, label %else4
then3:
  %47 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %40
  br label %merge5
else4:
  %48 = load { i64, i8* }*, { i64, i8* }** %39
  %49 = call i64 @nyx_array_length({ i64, i8* }* %48)
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %then6, label %else7
then6:
  %51 = getelementptr [6 x i8], [6 x i8]* @.str474, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str474.c, i8* %51, i64 5)
  %53 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %52)
  br i1 %53, label %then9, label %else10
then9:
  %54 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge11
else10:
  br label %merge11
merge11:
  br label %merge8
else7:
  br label %merge8
merge8:
  %55 = getelementptr [12 x i8], [12 x i8]* @.str475, i32 0, i32 0
  %56 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str475.c, i8* %55, i64 11)
  %57 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %56)
  br i1 %57, label %then12, label %else13
then12:
  %58 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %40
  br label %merge14
else13:
  %59 = load { i64, i8* }*, { i64, i8* }** %39
  %60 = call { i64, i8* }* @parse__parse_match_arm(%SharedEnv_parse* %env.param)
  %61 = ptrtoint { i64, i8* }* %60 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %59, i64 %61, i64 5)
  br label %merge14
merge14:
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %62 = getelementptr [6 x i8], [6 x i8]* @.str476, i32 0, i32 0
  %63 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str476.c, i8* %62, i64 5)
  %64 = call { i64, i8* }* @nyx_array_new_ptr()
  %65 = load { i64, i8* }*, { i64, i8* }** %34
  %66 = ptrtoint { i64, i8* }* %65 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %64, i64 %66, i64 5)
  %67 = load { i64, i8* }*, { i64, i8* }** %39
  %68 = ptrtoint { i64, i8* }* %67 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %64, i64 %68, i64 5)
  %69 = call { i64, i8* }* @make_astnode(%nyx_string* %63, { i64, i8* }* %64)
  ret { i64, i8* }* %69
}

define internal { i64, i8* }* @parse__parse_struct_construction(%SharedEnv_parse* %env.param, %nyx_string* %struct_name.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = alloca %nyx_string*
  store %nyx_string* %struct_name.param, %nyx_string** %30
  %31 = getelementptr [11 x i8], [11 x i8]* @.str477, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str477.c, i8* %31, i64 10)
  %33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %32)
  %34 = call { i64, i8* }* @nyx_array_new_ptr()
  %35 = alloca { i64, i8* }*
  store { i64, i8* }* %34, { i64, i8* }** %35
  %36 = alloca i1
  store i1 0, i1* %36
  %37 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %38 = load i1, i1* %36
  %39 = xor i1 %38, true
  br i1 %39, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %37)
  %40 = getelementptr [12 x i8], [12 x i8]* @.str478, i32 0, i32 0
  %41 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str478.c, i8* %40, i64 11)
  %42 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %41)
  br i1 %42, label %then3, label %else4
then3:
  %43 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %36
  br label %merge5
else4:
  %44 = load { i64, i8* }*, { i64, i8* }** %35
  %45 = call i64 @nyx_array_length({ i64, i8* }* %44)
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %then6, label %else7
then6:
  %47 = getelementptr [6 x i8], [6 x i8]* @.str479, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str479.c, i8* %47, i64 5)
  %49 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %48)
  br i1 %49, label %then9, label %else10
then9:
  %50 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge11
else10:
  br label %merge11
merge11:
  br label %merge8
else7:
  br label %merge8
merge8:
  %51 = getelementptr [11 x i8], [11 x i8]* @.str480, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str480.c, i8* %51, i64 10)
  %53 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %52)
  %54 = alloca %Token
  store %Token %53, %Token* %54
  %55 = getelementptr [6 x i8], [6 x i8]* @.str481, i32 0, i32 0
  %56 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str481.c, i8* %55, i64 5)
  %57 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %56)
  %58 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %59 = alloca { i64, i8* }*
  store { i64, i8* }* %58, { i64, i8* }** %59
  %60 = load { i64, i8* }*, { i64, i8* }** %35
  %61 = call { i64, i8* }* @nyx_array_new_ptr()
  %62 = load %Token, %Token* %54
  %63 = call %nyx_string* @get_token_value(%Token %62)
  %64 = ptrtoint %nyx_string* %63 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %61, i64 %64, i64 2)
  %65 = load { i64, i8* }*, { i64, i8* }** %59
  %66 = ptrtoint { i64, i8* }* %65 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %61, i64 %66, i64 5)
  %67 = ptrtoint { i64, i8* }* %61 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %60, i64 %67, i64 5)
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %68 = getelementptr [12 x i8], [12 x i8]* @.str482, i32 0, i32 0
  %69 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str482.c, i8* %68, i64 11)
  %70 = call { i64, i8* }* @nyx_array_new_ptr()
  %71 = load %nyx_string*, %nyx_string** %30
  %72 = ptrtoint %nyx_string* %71 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %70, i64 %72, i64 2)
  %73 = load { i64, i8* }*, { i64, i8* }** %35
  %74 = ptrtoint { i64, i8* }* %73 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %70, i64 %74, i64 5)
  %75 = call { i64, i8* }* @nyx_array_new_ptr()
  %76 = ptrtoint { i64, i8* }* %75 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %70, i64 %76, i64 5)
  %77 = call { i64, i8* }* @make_astnode(%nyx_string* %69, { i64, i8* }* %70)
  ret { i64, i8* }* %77
}

define internal { i64, i8* }* @parse__parse_statement(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = getelementptr [14 x i8], [14 x i8]* @.str483, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str483.c, i8* %30, i64 13)
  %32 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %31)
  br i1 %32, label %then0, label %else1
then0:
  %33 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %34 = alloca %Token
  store %Token %33, %Token* %34
  %35 = load %Token, %Token* %34
  %36 = call %nyx_string* @get_token_value(%Token %35)
  %37 = alloca %nyx_string*
  store %nyx_string* %36, %nyx_string** %37
  %38 = load %nyx_string*, %nyx_string** %37
  %39 = getelementptr [8 x i8], [8 x i8]* @.str484, i32 0, i32 0
  %40 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str484.c, i8* %39, i64 7)
  %41 = call i1 @nyx_string_starts_with(%nyx_string* %38, %nyx_string* %40)
  br i1 %41, label %then3, label %else4
then3:
  %42 = load %nyx_string*, %nyx_string** %37
  %43 = load %nyx_string*, %nyx_string** %37
  %44 = call i64 @nyx_string_byte_length(%nyx_string* %43)
  %45 = call %nyx_string* @nyx_string_substring(%nyx_string* %42, i64 7, i64 %44)
  %46 = call %nyx_string* @nyx_string_trim(%nyx_string* %45)
  %47 = alloca %nyx_string*
  store %nyx_string* %46, %nyx_string** %47
  %48 = call { i64, i8* }* @nyx_array_new_ptr()
  %49 = load %nyx_string*, %nyx_string** %47
  %50 = ptrtoint %nyx_string* %49 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %48, i64 %50, i64 2)
  %51 = alloca { i64, i8* }*
  store { i64, i8* }* %48, { i64, i8* }** %51
  %52 = getelementptr [14 x i8], [14 x i8]* @.str485, i32 0, i32 0
  %53 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str485.c, i8* %52, i64 13)
  %54 = load { i64, i8* }*, { i64, i8* }** %51
  %55 = call { i64, i8* }* @make_astnode(%nyx_string* %53, { i64, i8* }* %54)
  ret { i64, i8* }* %55
else4:
  br label %merge5
merge5:
  %56 = call { i64, i8* }* @nyx_array_new_ptr()
  %57 = load %nyx_string*, %nyx_string** %37
  %58 = ptrtoint %nyx_string* %57 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %56, i64 %58, i64 2)
  %59 = alloca { i64, i8* }*
  store { i64, i8* }* %56, { i64, i8* }** %59
  %60 = getelementptr [14 x i8], [14 x i8]* @.str486, i32 0, i32 0
  %61 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str486.c, i8* %60, i64 13)
  %62 = load { i64, i8* }*, { i64, i8* }** %59
  %63 = call { i64, i8* }* @make_astnode(%nyx_string* %61, { i64, i8* }* %62)
  ret { i64, i8* }* %63
else1:
  br label %merge2
merge2:
  %64 = alloca i1
  store i1 true, i1* %64
  %65 = getelementptr [4 x i8], [4 x i8]* @.str487, i32 0, i32 0
  %66 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str487.c, i8* %65, i64 3)
  %67 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %66)
  br i1 %67, label %sc_or_end7, label %sc_or_rhs6
sc_or_rhs6:
  %68 = getelementptr [4 x i8], [4 x i8]* @.str488, i32 0, i32 0
  %69 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str488.c, i8* %68, i64 3)
  %70 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %69)
  store i1 %70, i1* %64
  br label %sc_or_end7
sc_or_end7:
  %71 = load i1, i1* %64
  br i1 %71, label %then8, label %else9
then8:
  %72 = call { i64, i8* }* @parse__parse_let(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %72
else9:
  br label %merge10
merge10:
  %73 = getelementptr [6 x i8], [6 x i8]* @.str489, i32 0, i32 0
  %74 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str489.c, i8* %73, i64 5)
  %75 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %74)
  br i1 %75, label %then11, label %else12
then11:
  %76 = call { i64, i8* }* @parse__parse_const(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %76
else12:
  br label %merge13
merge13:
  %77 = getelementptr [3 x i8], [3 x i8]* @.str490, i32 0, i32 0
  %78 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str490.c, i8* %77, i64 2)
  %79 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %78)
  br i1 %79, label %then14, label %else15
then14:
  %80 = call { i64, i8* }* @parse__parse_function(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %80
else15:
  br label %merge16
merge16:
  %81 = getelementptr [5 x i8], [5 x i8]* @.str491, i32 0, i32 0
  %82 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str491.c, i8* %81, i64 4)
  %83 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %82)
  br i1 %83, label %then17, label %else18
then17:
  %84 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %85 = getelementptr [13 x i8], [13 x i8]* @.str492, i32 0, i32 0
  %86 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str492.c, i8* %85, i64 12)
  %87 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %86)
  %88 = getelementptr [11 x i8], [11 x i8]* @.str493, i32 0, i32 0
  %89 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str493.c, i8* %88, i64 10)
  %90 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %89)
  %91 = alloca %Token
  store %Token %90, %Token* %91
  %92 = load %Token, %Token* %91
  %93 = call %nyx_string* @get_token_value(%Token %92)
  %94 = alloca %nyx_string*
  store %nyx_string* %93, %nyx_string** %94
  %95 = load %nyx_string*, %nyx_string** %94
  %96 = alloca %nyx_string*
  store %nyx_string* %95, %nyx_string** %96
  %97 = getelementptr [11 x i8], [11 x i8]* @.str494, i32 0, i32 0
  %98 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str494.c, i8* %97, i64 10)
  %99 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %98)
  br i1 %99, label %then20, label %else21
then20:
  %100 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %101 = getelementptr [1 x i8], [1 x i8]* @.str495, i32 0, i32 0
  %102 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str495.c, i8* %101, i64 0)
  %103 = alloca %nyx_string*
  store %nyx_string* %102, %nyx_string** %103
  %104 = getelementptr [7 x i8], [7 x i8]* @.str496, i32 0, i32 0
  %105 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str496.c, i8* %104, i64 6)
  %106 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %105)
  br i1 %106, label %then23, label %else24
then23:
  %107 = getelementptr [7 x i8], [7 x i8]* @.str497, i32 0, i32 0
  %108 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str497.c, i8* %107, i64 6)
  %109 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %108)
  %110 = alloca %Token
  store %Token %109, %Token* %110
  %111 = load %Token, %Token* %110
  %112 = call %nyx_string* @get_token_value(%Token %111)
  store %nyx_string* %112, %nyx_string** %103
  br label %merge25
else24:
  %113 = getelementptr [11 x i8], [11 x i8]* @.str498, i32 0, i32 0
  %114 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str498.c, i8* %113, i64 10)
  %115 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %114)
  %116 = alloca %Token
  store %Token %115, %Token* %116
  %117 = load %Token, %Token* %116
  %118 = call %nyx_string* @get_token_value(%Token %117)
  store %nyx_string* %118, %nyx_string** %103
  %119 = call i8* @llvm.stacksave()
  br label %while_cond26
while_cond26:
  %120 = getelementptr [6 x i8], [6 x i8]* @.str499, i32 0, i32 0
  %121 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str499.c, i8* %120, i64 5)
  %122 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %121)
  br i1 %122, label %while_body27, label %while_end28
while_body27:
  call void @llvm.stackrestore(i8* %119)
  %123 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %124 = getelementptr [11 x i8], [11 x i8]* @.str500, i32 0, i32 0
  %125 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str500.c, i8* %124, i64 10)
  %126 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %125)
  %127 = alloca %Token
  store %Token %126, %Token* %127
  %128 = load %nyx_string*, %nyx_string** %103
  %129 = getelementptr [2 x i8], [2 x i8]* @.str501, i32 0, i32 0
  %130 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str501.c, i8* %129, i64 1)
  %131 = call %nyx_string* @nyx_string_concat(%nyx_string* %128, %nyx_string* %130)
  %132 = load %Token, %Token* %127
  %133 = call %nyx_string* @get_token_value(%Token %132)
  %134 = call %nyx_string* @nyx_string_concat(%nyx_string* %131, %nyx_string* %133)
  store %nyx_string* %134, %nyx_string** %103
  br label %while_cond26
while_end28:
  br label %merge25
merge25:
  %135 = getelementptr [12 x i8], [12 x i8]* @.str502, i32 0, i32 0
  %136 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str502.c, i8* %135, i64 11)
  %137 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %136)
  %138 = load %nyx_string*, %nyx_string** %94
  %139 = getelementptr [2 x i8], [2 x i8]* @.str503, i32 0, i32 0
  %140 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str503.c, i8* %139, i64 1)
  %141 = call %nyx_string* @nyx_string_concat(%nyx_string* %138, %nyx_string* %140)
  %142 = load %nyx_string*, %nyx_string** %103
  %143 = call %nyx_string* @nyx_string_concat(%nyx_string* %141, %nyx_string* %142)
  %144 = getelementptr [2 x i8], [2 x i8]* @.str504, i32 0, i32 0
  %145 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str504.c, i8* %144, i64 1)
  %146 = call %nyx_string* @nyx_string_concat(%nyx_string* %143, %nyx_string* %145)
  store %nyx_string* %146, %nyx_string** %96
  br label %merge22
else21:
  %147 = getelementptr [7 x i8], [7 x i8]* @.str505, i32 0, i32 0
  %148 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str505.c, i8* %147, i64 6)
  %149 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %148)
  br i1 %149, label %then29, label %else30
then29:
  %150 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %151 = getelementptr [7 x i8], [7 x i8]* @.str506, i32 0, i32 0
  %152 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str506.c, i8* %151, i64 6)
  %153 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %152)
  %154 = alloca %Token
  store %Token %153, %Token* %154
  %155 = load %nyx_string*, %nyx_string** %94
  %156 = getelementptr [2 x i8], [2 x i8]* @.str507, i32 0, i32 0
  %157 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str507.c, i8* %156, i64 1)
  %158 = call %nyx_string* @nyx_string_concat(%nyx_string* %155, %nyx_string* %157)
  %159 = load %Token, %Token* %154
  %160 = call %nyx_string* @get_token_value(%Token %159)
  %161 = call %nyx_string* @nyx_string_concat(%nyx_string* %158, %nyx_string* %160)
  store %nyx_string* %161, %nyx_string** %96
  br label %merge31
else30:
  br label %merge31
merge31:
  br label %merge22
merge22:
  %162 = getelementptr [14 x i8], [14 x i8]* @.str508, i32 0, i32 0
  %163 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str508.c, i8* %162, i64 13)
  %164 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %163)
  %165 = alloca i1
  store i1 false, i1* %165
  %166 = load %nyx_string*, %nyx_string** %96
  %167 = getelementptr [9 x i8], [9 x i8]* @.str509, i32 0, i32 0
  %168 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str509.c, i8* %167, i64 8)
  %169 = call i1 @nyx_string_equals(%nyx_string* %166, %nyx_string* %168)
  br i1 %169, label %sc_and_rhs32, label %sc_and_end33
sc_and_rhs32:
  %170 = getelementptr [7 x i8], [7 x i8]* @.str510, i32 0, i32 0
  %171 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str510.c, i8* %170, i64 6)
  %172 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %171)
  %173 = xor i1 %172, true
  store i1 %173, i1* %165
  br label %sc_and_end33
sc_and_end33:
  %174 = load i1, i1* %165
  br i1 %174, label %then34, label %else35
then34:
  %175 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %176 = alloca %Token
  store %Token %175, %Token* %176
  %177 = getelementptr [8 x i8], [8 x i8]* @.str511, i32 0, i32 0
  %178 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str511.c, i8* %177, i64 7)
  %179 = load %Token, %Token* %176
  %180 = call i64 @get_token_line(%Token %179)
  %181 = load %Token, %Token* %176
  %182 = call i64 @get_token_column(%Token %181)
  %183 = getelementptr [41 x i8], [41 x i8]* @.str512, i32 0, i32 0
  %184 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str512.c, i8* %183, i64 40)
  %185 = getelementptr [43 x i8], [43 x i8]* @.str513, i32 0, i32 0
  %186 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str513.c, i8* %185, i64 42)
  %187 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %184, %nyx_string* %186)
  %188 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %178, i64 %180, i64 %182, %nyx_string* %187)
  %189 = getelementptr [6 x i8], [6 x i8]* @.str514, i32 0, i32 0
  %190 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str514.c, i8* %189, i64 5)
  %191 = call { i64, i8* }* @nyx_array_new_ptr()
  %192 = call { i64, i8* }* @make_astnode(%nyx_string* %190, { i64, i8* }* %191)
  ret { i64, i8* }* %192
else35:
  br label %merge36
merge36:
  %193 = getelementptr [7 x i8], [7 x i8]* @.str515, i32 0, i32 0
  %194 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str515.c, i8* %193, i64 6)
  %195 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %194)
  br i1 %195, label %then37, label %else38
then37:
  %196 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %197 = alloca %Token
  store %Token %196, %Token* %197
  %198 = call { i64, i8* }* @parse__parse_extern_fn(%SharedEnv_parse* %env.param)
  %199 = alloca { i64, i8* }*
  store { i64, i8* }* %198, { i64, i8* }** %199
  %200 = load { i64, i8* }*, { i64, i8* }** %199
  %201 = call i64 @nyx_array_get({ i64, i8* }* %200, i64 1)
  %202 = inttoptr i64 %201 to { i64, i8* }*
  %203 = alloca { i64, i8* }*
  store { i64, i8* }* %202, { i64, i8* }** %203
  %204 = load { i64, i8* }*, { i64, i8* }** %203
  %205 = call i64 @nyx_array_get_checked({ i64, i8* }* %204, i64 3, i64 2)
  %206 = inttoptr i64 %205 to %nyx_string*
  %207 = alloca %nyx_string*
  store %nyx_string* %206, %nyx_string** %207
  %208 = alloca i1
  store i1 true, i1* %208
  %209 = load %nyx_string*, %nyx_string** %96
  %210 = getelementptr [9 x i8], [9 x i8]* @.str516, i32 0, i32 0
  %211 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str516.c, i8* %210, i64 8)
  %212 = call i1 @nyx_string_equals(%nyx_string* %209, %nyx_string* %211)
  %213 = xor i1 %212, true
  br i1 %213, label %sc_or_end41, label %sc_or_rhs40
sc_or_rhs40:
  %214 = load %nyx_string*, %nyx_string** %207
  %215 = getelementptr [3 x i8], [3 x i8]* @.str517, i32 0, i32 0
  %216 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str517.c, i8* %215, i64 2)
  %217 = call i1 @nyx_string_equals(%nyx_string* %214, %nyx_string* %216)
  %218 = xor i1 %217, true
  store i1 %218, i1* %208
  br label %sc_or_end41
sc_or_end41:
  %219 = load i1, i1* %208
  br i1 %219, label %then42, label %else43
then42:
  %220 = getelementptr [8 x i8], [8 x i8]* @.str518, i32 0, i32 0
  %221 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str518.c, i8* %220, i64 7)
  %222 = load %Token, %Token* %197
  %223 = call i64 @get_token_line(%Token %222)
  %224 = load %Token, %Token* %197
  %225 = call i64 @get_token_column(%Token %224)
  %226 = getelementptr [76 x i8], [76 x i8]* @.str519, i32 0, i32 0
  %227 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str519.c, i8* %226, i64 75)
  %228 = getelementptr [83 x i8], [83 x i8]* @.str520, i32 0, i32 0
  %229 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str520.c, i8* %228, i64 82)
  %230 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %227, %nyx_string* %229)
  %231 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %221, i64 %223, i64 %225, %nyx_string* %230)
  %232 = getelementptr [6 x i8], [6 x i8]* @.str521, i32 0, i32 0
  %233 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str521.c, i8* %232, i64 5)
  %234 = call { i64, i8* }* @nyx_array_new_ptr()
  %235 = call { i64, i8* }* @make_astnode(%nyx_string* %233, { i64, i8* }* %234)
  ret { i64, i8* }* %235
else43:
  br label %merge44
merge44:
  %236 = getelementptr [10 x i8], [10 x i8]* @.str522, i32 0, i32 0
  %237 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str522.c, i8* %236, i64 9)
  %238 = call { i64, i8* }* @nyx_array_new_ptr()
  %239 = load { i64, i8* }*, { i64, i8* }** %203
  %240 = call i64 @nyx_array_get({ i64, i8* }* %239, i64 0)
  call void @nyx_array_push({ i64, i8* }* %238, i64 %240)
  %241 = load { i64, i8* }*, { i64, i8* }** %203
  %242 = call i64 @nyx_array_get({ i64, i8* }* %241, i64 1)
  call void @nyx_array_push({ i64, i8* }* %238, i64 %242)
  %243 = load { i64, i8* }*, { i64, i8* }** %203
  %244 = call i64 @nyx_array_get({ i64, i8* }* %243, i64 2)
  call void @nyx_array_push({ i64, i8* }* %238, i64 %244)
  %245 = load { i64, i8* }*, { i64, i8* }** %203
  %246 = call i64 @nyx_array_get({ i64, i8* }* %245, i64 3)
  call void @nyx_array_push({ i64, i8* }* %238, i64 %246)
  %247 = load %nyx_string*, %nyx_string** %96
  %248 = ptrtoint %nyx_string* %247 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %238, i64 %248, i64 2)
  %249 = call { i64, i8* }* @make_astnode(%nyx_string* %237, { i64, i8* }* %238)
  ret { i64, i8* }* %249
else38:
  br label %merge39
merge39:
  %250 = getelementptr [4 x i8], [4 x i8]* @.str523, i32 0, i32 0
  %251 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str523.c, i8* %250, i64 3)
  %252 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %251)
  br i1 %252, label %then45, label %else46
then45:
  %253 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %254 = getelementptr [3 x i8], [3 x i8]* @.str524, i32 0, i32 0
  %255 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str524.c, i8* %254, i64 2)
  %256 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %255)
  br i1 %256, label %then48, label %else49
then48:
  %257 = call { i64, i8* }* @parse__parse_function(%SharedEnv_parse* %env.param)
  %258 = alloca { i64, i8* }*
  store { i64, i8* }* %257, { i64, i8* }** %258
  %259 = load { i64, i8* }*, { i64, i8* }** %258
  %260 = call i64 @nyx_array_get({ i64, i8* }* %259, i64 1)
  %261 = inttoptr i64 %260 to { i64, i8* }*
  %262 = alloca { i64, i8* }*
  store { i64, i8* }* %261, { i64, i8* }** %262
  %263 = getelementptr [9 x i8], [9 x i8]* @.str525, i32 0, i32 0
  %264 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str525.c, i8* %263, i64 8)
  %265 = call { i64, i8* }* @nyx_array_new_ptr()
  %266 = load { i64, i8* }*, { i64, i8* }** %262
  %267 = call i64 @nyx_array_get({ i64, i8* }* %266, i64 0)
  call void @nyx_array_push({ i64, i8* }* %265, i64 %267)
  %268 = load { i64, i8* }*, { i64, i8* }** %262
  %269 = call i64 @nyx_array_get({ i64, i8* }* %268, i64 1)
  call void @nyx_array_push({ i64, i8* }* %265, i64 %269)
  %270 = load { i64, i8* }*, { i64, i8* }** %262
  %271 = call i64 @nyx_array_get({ i64, i8* }* %270, i64 2)
  call void @nyx_array_push({ i64, i8* }* %265, i64 %271)
  %272 = load { i64, i8* }*, { i64, i8* }** %262
  %273 = call i64 @nyx_array_get({ i64, i8* }* %272, i64 3)
  call void @nyx_array_push({ i64, i8* }* %265, i64 %273)
  %274 = load { i64, i8* }*, { i64, i8* }** %262
  %275 = call i64 @nyx_array_get({ i64, i8* }* %274, i64 4)
  call void @nyx_array_push({ i64, i8* }* %265, i64 %275)
  %276 = load %nyx_string*, %nyx_string** %96
  %277 = ptrtoint %nyx_string* %276 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %265, i64 %277, i64 2)
  %278 = load { i64, i8* }*, { i64, i8* }** %262
  %279 = call i64 @nyx_array_get({ i64, i8* }* %278, i64 8)
  call void @nyx_array_push({ i64, i8* }* %265, i64 %279)
  %280 = call { i64, i8* }* @make_astnode(%nyx_string* %264, { i64, i8* }* %265)
  %281 = alloca { i64, i8* }*
  store { i64, i8* }* %280, { i64, i8* }** %281
  %282 = getelementptr [7 x i8], [7 x i8]* @.str526, i32 0, i32 0
  %283 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str526.c, i8* %282, i64 6)
  %284 = call { i64, i8* }* @nyx_array_new_ptr()
  %285 = load { i64, i8* }*, { i64, i8* }** %281
  %286 = ptrtoint { i64, i8* }* %285 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %284, i64 %286, i64 5)
  %287 = call { i64, i8* }* @make_astnode(%nyx_string* %283, { i64, i8* }* %284)
  ret { i64, i8* }* %287
else49:
  br label %merge50
merge50:
  %288 = getelementptr [7 x i8], [7 x i8]* @.str527, i32 0, i32 0
  %289 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str527.c, i8* %288, i64 6)
  %290 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %289)
  br i1 %290, label %then51, label %else52
then51:
  %291 = call { i64, i8* }* @parse__parse_struct(%SharedEnv_parse* %env.param)
  %292 = alloca { i64, i8* }*
  store { i64, i8* }* %291, { i64, i8* }** %292
  %293 = load { i64, i8* }*, { i64, i8* }** %292
  %294 = call i64 @nyx_array_get({ i64, i8* }* %293, i64 1)
  %295 = inttoptr i64 %294 to { i64, i8* }*
  %296 = alloca { i64, i8* }*
  store { i64, i8* }* %295, { i64, i8* }** %296
  %297 = getelementptr [7 x i8], [7 x i8]* @.str528, i32 0, i32 0
  %298 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str528.c, i8* %297, i64 6)
  %299 = call { i64, i8* }* @nyx_array_new_ptr()
  %300 = load { i64, i8* }*, { i64, i8* }** %296
  %301 = call i64 @nyx_array_get({ i64, i8* }* %300, i64 0)
  call void @nyx_array_push({ i64, i8* }* %299, i64 %301)
  %302 = load { i64, i8* }*, { i64, i8* }** %296
  %303 = call i64 @nyx_array_get({ i64, i8* }* %302, i64 1)
  call void @nyx_array_push({ i64, i8* }* %299, i64 %303)
  %304 = load { i64, i8* }*, { i64, i8* }** %296
  %305 = call i64 @nyx_array_get({ i64, i8* }* %304, i64 2)
  call void @nyx_array_push({ i64, i8* }* %299, i64 %305)
  %306 = load %nyx_string*, %nyx_string** %96
  %307 = ptrtoint %nyx_string* %306 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %299, i64 %307, i64 2)
  %308 = call { i64, i8* }* @make_astnode(%nyx_string* %298, { i64, i8* }* %299)
  %309 = alloca { i64, i8* }*
  store { i64, i8* }* %308, { i64, i8* }** %309
  %310 = load { i64, i8* }*, { i64, i8* }** %309
  %311 = load { i64, i8* }*, { i64, i8* }** %292
  %312 = call i64 @nyx_array_get({ i64, i8* }* %311, i64 2)
  call void @nyx_array_set({ i64, i8* }* %310, i64 2, i64 %312)
  %313 = getelementptr [7 x i8], [7 x i8]* @.str529, i32 0, i32 0
  %314 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str529.c, i8* %313, i64 6)
  %315 = call { i64, i8* }* @nyx_array_new_ptr()
  %316 = load { i64, i8* }*, { i64, i8* }** %309
  %317 = ptrtoint { i64, i8* }* %316 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %315, i64 %317, i64 5)
  %318 = call { i64, i8* }* @make_astnode(%nyx_string* %314, { i64, i8* }* %315)
  ret { i64, i8* }* %318
else52:
  br label %merge53
merge53:
  %319 = getelementptr [5 x i8], [5 x i8]* @.str530, i32 0, i32 0
  %320 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str530.c, i8* %319, i64 4)
  %321 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %320)
  br i1 %321, label %then54, label %else55
then54:
  %322 = call { i64, i8* }* @parse__parse_enum(%SharedEnv_parse* %env.param)
  %323 = alloca { i64, i8* }*
  store { i64, i8* }* %322, { i64, i8* }** %323
  %324 = load { i64, i8* }*, { i64, i8* }** %323
  %325 = call i64 @nyx_array_get({ i64, i8* }* %324, i64 1)
  %326 = inttoptr i64 %325 to { i64, i8* }*
  %327 = alloca { i64, i8* }*
  store { i64, i8* }* %326, { i64, i8* }** %327
  %328 = getelementptr [5 x i8], [5 x i8]* @.str531, i32 0, i32 0
  %329 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str531.c, i8* %328, i64 4)
  %330 = call { i64, i8* }* @nyx_array_new_ptr()
  %331 = load { i64, i8* }*, { i64, i8* }** %327
  %332 = call i64 @nyx_array_get({ i64, i8* }* %331, i64 0)
  call void @nyx_array_push({ i64, i8* }* %330, i64 %332)
  %333 = load { i64, i8* }*, { i64, i8* }** %327
  %334 = call i64 @nyx_array_get({ i64, i8* }* %333, i64 1)
  call void @nyx_array_push({ i64, i8* }* %330, i64 %334)
  %335 = load { i64, i8* }*, { i64, i8* }** %327
  %336 = call i64 @nyx_array_get({ i64, i8* }* %335, i64 2)
  call void @nyx_array_push({ i64, i8* }* %330, i64 %336)
  %337 = load %nyx_string*, %nyx_string** %96
  %338 = ptrtoint %nyx_string* %337 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %330, i64 %338, i64 2)
  %339 = call { i64, i8* }* @make_astnode(%nyx_string* %329, { i64, i8* }* %330)
  %340 = alloca { i64, i8* }*
  store { i64, i8* }* %339, { i64, i8* }** %340
  %341 = getelementptr [7 x i8], [7 x i8]* @.str532, i32 0, i32 0
  %342 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str532.c, i8* %341, i64 6)
  %343 = call { i64, i8* }* @nyx_array_new_ptr()
  %344 = load { i64, i8* }*, { i64, i8* }** %340
  %345 = ptrtoint { i64, i8* }* %344 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %343, i64 %345, i64 5)
  %346 = call { i64, i8* }* @make_astnode(%nyx_string* %342, { i64, i8* }* %343)
  ret { i64, i8* }* %346
else55:
  br label %merge56
merge56:
  %347 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %348 = alloca %Token
  store %Token %347, %Token* %348
  %349 = getelementptr [8 x i8], [8 x i8]* @.str533, i32 0, i32 0
  %350 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str533.c, i8* %349, i64 7)
  %351 = load %Token, %Token* %348
  %352 = call i64 @get_token_line(%Token %351)
  %353 = load %Token, %Token* %348
  %354 = call i64 @get_token_column(%Token %353)
  %355 = getelementptr [59 x i8], [59 x i8]* @.str534, i32 0, i32 0
  %356 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str534.c, i8* %355, i64 58)
  %357 = getelementptr [59 x i8], [59 x i8]* @.str535, i32 0, i32 0
  %358 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str535.c, i8* %357, i64 58)
  %359 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %356, %nyx_string* %358)
  %360 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %350, i64 %352, i64 %354, %nyx_string* %359)
  %361 = getelementptr [6 x i8], [6 x i8]* @.str536, i32 0, i32 0
  %362 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str536.c, i8* %361, i64 5)
  %363 = call { i64, i8* }* @nyx_array_new_ptr()
  %364 = call { i64, i8* }* @make_astnode(%nyx_string* %362, { i64, i8* }* %363)
  ret { i64, i8* }* %364
else46:
  br label %merge47
merge47:
  %365 = getelementptr [3 x i8], [3 x i8]* @.str537, i32 0, i32 0
  %366 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str537.c, i8* %365, i64 2)
  %367 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %366)
  br i1 %367, label %then57, label %else58
then57:
  %368 = call { i64, i8* }* @parse__parse_function(%SharedEnv_parse* %env.param)
  %369 = alloca { i64, i8* }*
  store { i64, i8* }* %368, { i64, i8* }** %369
  %370 = load { i64, i8* }*, { i64, i8* }** %369
  %371 = call i64 @nyx_array_get({ i64, i8* }* %370, i64 1)
  %372 = inttoptr i64 %371 to { i64, i8* }*
  %373 = alloca { i64, i8* }*
  store { i64, i8* }* %372, { i64, i8* }** %373
  %374 = getelementptr [9 x i8], [9 x i8]* @.str538, i32 0, i32 0
  %375 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str538.c, i8* %374, i64 8)
  %376 = call { i64, i8* }* @nyx_array_new_ptr()
  %377 = load { i64, i8* }*, { i64, i8* }** %373
  %378 = call i64 @nyx_array_get({ i64, i8* }* %377, i64 0)
  call void @nyx_array_push({ i64, i8* }* %376, i64 %378)
  %379 = load { i64, i8* }*, { i64, i8* }** %373
  %380 = call i64 @nyx_array_get({ i64, i8* }* %379, i64 1)
  call void @nyx_array_push({ i64, i8* }* %376, i64 %380)
  %381 = load { i64, i8* }*, { i64, i8* }** %373
  %382 = call i64 @nyx_array_get({ i64, i8* }* %381, i64 2)
  call void @nyx_array_push({ i64, i8* }* %376, i64 %382)
  %383 = load { i64, i8* }*, { i64, i8* }** %373
  %384 = call i64 @nyx_array_get({ i64, i8* }* %383, i64 3)
  call void @nyx_array_push({ i64, i8* }* %376, i64 %384)
  %385 = load { i64, i8* }*, { i64, i8* }** %373
  %386 = call i64 @nyx_array_get({ i64, i8* }* %385, i64 4)
  call void @nyx_array_push({ i64, i8* }* %376, i64 %386)
  %387 = load %nyx_string*, %nyx_string** %96
  %388 = ptrtoint %nyx_string* %387 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %376, i64 %388, i64 2)
  %389 = load { i64, i8* }*, { i64, i8* }** %373
  %390 = call i64 @nyx_array_get({ i64, i8* }* %389, i64 8)
  call void @nyx_array_push({ i64, i8* }* %376, i64 %390)
  %391 = call { i64, i8* }* @make_astnode(%nyx_string* %375, { i64, i8* }* %376)
  ret { i64, i8* }* %391
else58:
  br label %merge59
merge59:
  %392 = getelementptr [7 x i8], [7 x i8]* @.str539, i32 0, i32 0
  %393 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str539.c, i8* %392, i64 6)
  %394 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %393)
  br i1 %394, label %then60, label %else61
then60:
  %395 = call { i64, i8* }* @parse__parse_struct(%SharedEnv_parse* %env.param)
  %396 = alloca { i64, i8* }*
  store { i64, i8* }* %395, { i64, i8* }** %396
  %397 = load { i64, i8* }*, { i64, i8* }** %396
  %398 = call i64 @nyx_array_get({ i64, i8* }* %397, i64 1)
  %399 = inttoptr i64 %398 to { i64, i8* }*
  %400 = alloca { i64, i8* }*
  store { i64, i8* }* %399, { i64, i8* }** %400
  %401 = getelementptr [7 x i8], [7 x i8]* @.str540, i32 0, i32 0
  %402 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str540.c, i8* %401, i64 6)
  %403 = call { i64, i8* }* @nyx_array_new_ptr()
  %404 = load { i64, i8* }*, { i64, i8* }** %400
  %405 = call i64 @nyx_array_get({ i64, i8* }* %404, i64 0)
  call void @nyx_array_push({ i64, i8* }* %403, i64 %405)
  %406 = load { i64, i8* }*, { i64, i8* }** %400
  %407 = call i64 @nyx_array_get({ i64, i8* }* %406, i64 1)
  call void @nyx_array_push({ i64, i8* }* %403, i64 %407)
  %408 = load { i64, i8* }*, { i64, i8* }** %400
  %409 = call i64 @nyx_array_get({ i64, i8* }* %408, i64 2)
  call void @nyx_array_push({ i64, i8* }* %403, i64 %409)
  %410 = load %nyx_string*, %nyx_string** %96
  %411 = ptrtoint %nyx_string* %410 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %403, i64 %411, i64 2)
  %412 = call { i64, i8* }* @make_astnode(%nyx_string* %402, { i64, i8* }* %403)
  %413 = alloca { i64, i8* }*
  store { i64, i8* }* %412, { i64, i8* }** %413
  %414 = load { i64, i8* }*, { i64, i8* }** %413
  %415 = load { i64, i8* }*, { i64, i8* }** %396
  %416 = call i64 @nyx_array_get({ i64, i8* }* %415, i64 2)
  call void @nyx_array_set({ i64, i8* }* %414, i64 2, i64 %416)
  %417 = load { i64, i8* }*, { i64, i8* }** %413
  ret { i64, i8* }* %417
else61:
  br label %merge62
merge62:
  %418 = getelementptr [5 x i8], [5 x i8]* @.str541, i32 0, i32 0
  %419 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str541.c, i8* %418, i64 4)
  %420 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %419)
  br i1 %420, label %then63, label %else64
then63:
  %421 = call { i64, i8* }* @parse__parse_enum(%SharedEnv_parse* %env.param)
  %422 = alloca { i64, i8* }*
  store { i64, i8* }* %421, { i64, i8* }** %422
  %423 = load { i64, i8* }*, { i64, i8* }** %422
  %424 = call i64 @nyx_array_get({ i64, i8* }* %423, i64 1)
  %425 = inttoptr i64 %424 to { i64, i8* }*
  %426 = alloca { i64, i8* }*
  store { i64, i8* }* %425, { i64, i8* }** %426
  %427 = getelementptr [5 x i8], [5 x i8]* @.str542, i32 0, i32 0
  %428 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str542.c, i8* %427, i64 4)
  %429 = call { i64, i8* }* @nyx_array_new_ptr()
  %430 = load { i64, i8* }*, { i64, i8* }** %426
  %431 = call i64 @nyx_array_get({ i64, i8* }* %430, i64 0)
  call void @nyx_array_push({ i64, i8* }* %429, i64 %431)
  %432 = load { i64, i8* }*, { i64, i8* }** %426
  %433 = call i64 @nyx_array_get({ i64, i8* }* %432, i64 1)
  call void @nyx_array_push({ i64, i8* }* %429, i64 %433)
  %434 = load { i64, i8* }*, { i64, i8* }** %426
  %435 = call i64 @nyx_array_get({ i64, i8* }* %434, i64 2)
  call void @nyx_array_push({ i64, i8* }* %429, i64 %435)
  %436 = load %nyx_string*, %nyx_string** %96
  %437 = ptrtoint %nyx_string* %436 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %429, i64 %437, i64 2)
  %438 = call { i64, i8* }* @make_astnode(%nyx_string* %428, { i64, i8* }* %429)
  ret { i64, i8* }* %438
else64:
  br label %merge65
merge65:
  %439 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %440 = alloca %Token
  store %Token %439, %Token* %440
  %441 = getelementptr [8 x i8], [8 x i8]* @.str543, i32 0, i32 0
  %442 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str543.c, i8* %441, i64 7)
  %443 = load %Token, %Token* %440
  %444 = call i64 @get_token_line(%Token %443)
  %445 = load %Token, %Token* %440
  %446 = call i64 @get_token_column(%Token %445)
  %447 = getelementptr [77 x i8], [77 x i8]* @.str544, i32 0, i32 0
  %448 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str544.c, i8* %447, i64 76)
  %449 = getelementptr [80 x i8], [80 x i8]* @.str545, i32 0, i32 0
  %450 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str545.c, i8* %449, i64 79)
  %451 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %448, %nyx_string* %450)
  %452 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %442, i64 %444, i64 %446, %nyx_string* %451)
  %453 = getelementptr [6 x i8], [6 x i8]* @.str546, i32 0, i32 0
  %454 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str546.c, i8* %453, i64 5)
  %455 = call { i64, i8* }* @nyx_array_new_ptr()
  %456 = call { i64, i8* }* @make_astnode(%nyx_string* %454, { i64, i8* }* %455)
  ret { i64, i8* }* %456
else18:
  br label %merge19
merge19:
  %457 = getelementptr [7 x i8], [7 x i8]* @.str547, i32 0, i32 0
  %458 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str547.c, i8* %457, i64 6)
  %459 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %458)
  br i1 %459, label %then66, label %else67
then66:
  %460 = call { i64, i8* }* @parse__parse_struct(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %460
else67:
  br label %merge68
merge68:
  %461 = getelementptr [5 x i8], [5 x i8]* @.str548, i32 0, i32 0
  %462 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str548.c, i8* %461, i64 4)
  %463 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %462)
  br i1 %463, label %then69, label %else70
then69:
  %464 = call { i64, i8* }* @parse__parse_enum(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %464
else70:
  br label %merge71
merge71:
  %465 = getelementptr [6 x i8], [6 x i8]* @.str549, i32 0, i32 0
  %466 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str549.c, i8* %465, i64 5)
  %467 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %466)
  br i1 %467, label %then72, label %else73
then72:
  %468 = call { i64, i8* }* @parse__parse_match(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %468
else73:
  br label %merge74
merge74:
  %469 = getelementptr [3 x i8], [3 x i8]* @.str550, i32 0, i32 0
  %470 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str550.c, i8* %469, i64 2)
  %471 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %470)
  br i1 %471, label %then75, label %else76
then75:
  %472 = call { i64, i8* }* @parse__parse_if(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %472
else76:
  br label %merge77
merge77:
  %473 = getelementptr [6 x i8], [6 x i8]* @.str551, i32 0, i32 0
  %474 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str551.c, i8* %473, i64 5)
  %475 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %474)
  br i1 %475, label %then78, label %else79
then78:
  %476 = call { i64, i8* }* @parse__parse_while(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %476
else79:
  br label %merge80
merge80:
  %477 = getelementptr [4 x i8], [4 x i8]* @.str552, i32 0, i32 0
  %478 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str552.c, i8* %477, i64 3)
  %479 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %478)
  br i1 %479, label %then81, label %else82
then81:
  %480 = call { i64, i8* }* @parse__parse_for(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %480
else82:
  br label %merge83
merge83:
  %481 = getelementptr [7 x i8], [7 x i8]* @.str553, i32 0, i32 0
  %482 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str553.c, i8* %481, i64 6)
  %483 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %482)
  br i1 %483, label %then84, label %else85
then84:
  %484 = call { i64, i8* }* @parse__parse_return(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %484
else85:
  br label %merge86
merge86:
  %485 = getelementptr [6 x i8], [6 x i8]* @.str554, i32 0, i32 0
  %486 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str554.c, i8* %485, i64 5)
  %487 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %486)
  br i1 %487, label %then87, label %else88
then87:
  %488 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %489 = getelementptr [6 x i8], [6 x i8]* @.str555, i32 0, i32 0
  %490 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str555.c, i8* %489, i64 5)
  %491 = call { i64, i8* }* @nyx_array_new_ptr()
  %492 = call { i64, i8* }* @make_astnode(%nyx_string* %490, { i64, i8* }* %491)
  ret { i64, i8* }* %492
else88:
  br label %merge89
merge89:
  %493 = getelementptr [9 x i8], [9 x i8]* @.str556, i32 0, i32 0
  %494 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str556.c, i8* %493, i64 8)
  %495 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %494)
  br i1 %495, label %then90, label %else91
then90:
  %496 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %497 = getelementptr [9 x i8], [9 x i8]* @.str557, i32 0, i32 0
  %498 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str557.c, i8* %497, i64 8)
  %499 = call { i64, i8* }* @nyx_array_new_ptr()
  %500 = call { i64, i8* }* @make_astnode(%nyx_string* %498, { i64, i8* }* %499)
  ret { i64, i8* }* %500
else91:
  br label %merge92
merge92:
  %501 = getelementptr [7 x i8], [7 x i8]* @.str558, i32 0, i32 0
  %502 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str558.c, i8* %501, i64 6)
  %503 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %502)
  br i1 %503, label %then93, label %else94
then93:
  %504 = call { i64, i8* }* @parse__parse_export(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %504
else94:
  br label %merge95
merge95:
  %505 = getelementptr [4 x i8], [4 x i8]* @.str559, i32 0, i32 0
  %506 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str559.c, i8* %505, i64 3)
  %507 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %506)
  br i1 %507, label %then96, label %else97
then96:
  %508 = call { i64, i8* }* @parse__parse_pub(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %508
else97:
  br label %merge98
merge98:
  %509 = getelementptr [7 x i8], [7 x i8]* @.str560, i32 0, i32 0
  %510 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str560.c, i8* %509, i64 6)
  %511 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %510)
  br i1 %511, label %then99, label %else100
then99:
  %512 = call { i64, i8* }* @parse__parse_import(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %512
else100:
  br label %merge101
merge101:
  %513 = getelementptr [6 x i8], [6 x i8]* @.str561, i32 0, i32 0
  %514 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str561.c, i8* %513, i64 5)
  %515 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %514)
  br i1 %515, label %then102, label %else103
then102:
  %516 = call { i64, i8* }* @parse__parse_trait(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %516
else103:
  br label %merge104
merge104:
  %517 = getelementptr [5 x i8], [5 x i8]* @.str562, i32 0, i32 0
  %518 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str562.c, i8* %517, i64 4)
  %519 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %518)
  br i1 %519, label %then105, label %else106
then105:
  %520 = call { i64, i8* }* @parse__parse_impl(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %520
else106:
  br label %merge107
merge107:
  %521 = getelementptr [5 x i8], [5 x i8]* @.str563, i32 0, i32 0
  %522 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str563.c, i8* %521, i64 4)
  %523 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %522)
  br i1 %523, label %then108, label %else109
then108:
  %524 = call { i64, i8* }* @parse__parse_test_decl(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %524
else109:
  br label %merge110
merge110:
  %525 = getelementptr [7 x i8], [7 x i8]* @.str564, i32 0, i32 0
  %526 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str564.c, i8* %525, i64 6)
  %527 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %526)
  br i1 %527, label %then111, label %else112
then111:
  %528 = call { i64, i8* }* @parse__parse_extern_fn(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %528
else112:
  br label %merge113
merge113:
  %529 = getelementptr [7 x i8], [7 x i8]* @.str565, i32 0, i32 0
  %530 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str565.c, i8* %529, i64 6)
  %531 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %530)
  br i1 %531, label %then114, label %else115
then114:
  %532 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %533 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %534 = alloca { i64, i8* }*
  store { i64, i8* }* %533, { i64, i8* }** %534
  %535 = getelementptr [13 x i8], [13 x i8]* @.str566, i32 0, i32 0
  %536 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str566.c, i8* %535, i64 12)
  %537 = call { i64, i8* }* @nyx_array_new_ptr()
  %538 = load { i64, i8* }*, { i64, i8* }** %534
  %539 = ptrtoint { i64, i8* }* %538 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %537, i64 %539, i64 5)
  %540 = call { i64, i8* }* @make_astnode(%nyx_string* %536, { i64, i8* }* %537)
  ret { i64, i8* }* %540
else115:
  br label %merge116
merge116:
  %541 = getelementptr [7 x i8], [7 x i8]* @.str567, i32 0, i32 0
  %542 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str567.c, i8* %541, i64 6)
  %543 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %542)
  br i1 %543, label %then117, label %else118
then117:
  %544 = call { i64, i8* }* @parse__parse_static_var(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %544
else118:
  br label %merge119
merge119:
  %545 = getelementptr [7 x i8], [7 x i8]* @.str568, i32 0, i32 0
  %546 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str568.c, i8* %545, i64 6)
  %547 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %546)
  br i1 %547, label %then120, label %else121
then120:
  %548 = call { i64, i8* }* @parse__parse_module_decl(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %548
else121:
  br label %merge122
merge122:
  %549 = getelementptr [6 x i8], [6 x i8]* @.str569, i32 0, i32 0
  %550 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str569.c, i8* %549, i64 5)
  %551 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %550)
  br i1 %551, label %then123, label %else124
then123:
  %552 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %553 = getelementptr [11 x i8], [11 x i8]* @.str570, i32 0, i32 0
  %554 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str570.c, i8* %553, i64 10)
  %555 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %554)
  br i1 %555, label %then126, label %else127
then126:
  %556 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %557 = alloca { i64, i8* }*
  store { i64, i8* }* %556, { i64, i8* }** %557
  %558 = getelementptr [6 x i8], [6 x i8]* @.str571, i32 0, i32 0
  %559 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str571.c, i8* %558, i64 5)
  %560 = call { i64, i8* }* @nyx_array_new_ptr()
  %561 = load { i64, i8* }*, { i64, i8* }** %557
  %562 = ptrtoint { i64, i8* }* %561 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %560, i64 %562, i64 5)
  %563 = call { i64, i8* }* @make_astnode(%nyx_string* %559, { i64, i8* }* %560)
  ret { i64, i8* }* %563
else127:
  br label %merge128
merge128:
  %564 = call { i64, i8* }* @parse__parse_statement(%SharedEnv_parse* %env.param)
  %565 = alloca { i64, i8* }*
  store { i64, i8* }* %564, { i64, i8* }** %565
  %566 = getelementptr [6 x i8], [6 x i8]* @.str572, i32 0, i32 0
  %567 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str572.c, i8* %566, i64 5)
  %568 = call { i64, i8* }* @nyx_array_new_ptr()
  %569 = call { i64, i8* }* @nyx_array_new_ptr()
  %570 = load { i64, i8* }*, { i64, i8* }** %565
  %571 = ptrtoint { i64, i8* }* %570 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %569, i64 %571, i64 5)
  %572 = ptrtoint { i64, i8* }* %569 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %568, i64 %572, i64 5)
  %573 = call { i64, i8* }* @make_astnode(%nyx_string* %567, { i64, i8* }* %568)
  %574 = alloca { i64, i8* }*
  store { i64, i8* }* %573, { i64, i8* }** %574
  %575 = getelementptr [6 x i8], [6 x i8]* @.str573, i32 0, i32 0
  %576 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str573.c, i8* %575, i64 5)
  %577 = call { i64, i8* }* @nyx_array_new_ptr()
  %578 = load { i64, i8* }*, { i64, i8* }** %574
  %579 = ptrtoint { i64, i8* }* %578 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %577, i64 %579, i64 5)
  %580 = call { i64, i8* }* @make_astnode(%nyx_string* %576, { i64, i8* }* %577)
  ret { i64, i8* }* %580
else124:
  br label %merge125
merge125:
  %581 = getelementptr [4 x i8], [4 x i8]* @.str574, i32 0, i32 0
  %582 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str574.c, i8* %581, i64 3)
  %583 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %582)
  br i1 %583, label %then129, label %else130
then129:
  %584 = call { i64, i8* }* @parse__parse_try_catch(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %584
else130:
  br label %merge131
merge131:
  %585 = getelementptr [6 x i8], [6 x i8]* @.str575, i32 0, i32 0
  %586 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str575.c, i8* %585, i64 5)
  %587 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %586)
  br i1 %587, label %then132, label %else133
then132:
  %588 = call { i64, i8* }* @parse__parse_throw(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %588
else133:
  br label %merge134
merge134:
  %589 = getelementptr [6 x i8], [6 x i8]* @.str576, i32 0, i32 0
  %590 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str576.c, i8* %589, i64 5)
  %591 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %590)
  br i1 %591, label %then135, label %else136
then135:
  %592 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %593 = call { i64, i8* }* @parse__parse_async_function(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %593
else136:
  br label %merge137
merge137:
  %594 = getelementptr [11 x i8], [11 x i8]* @.str577, i32 0, i32 0
  %595 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str577.c, i8* %594, i64 10)
  %596 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %595)
  br i1 %596, label %then138, label %else139
then138:
  %597 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %598 = alloca %Token
  store %Token %597, %Token* %598
  %599 = load %Token, %Token* %598
  %600 = call %nyx_string* @get_token_value(%Token %599)
  %601 = alloca %nyx_string*
  store %nyx_string* %600, %nyx_string** %601
  %602 = load %nyx_string*, %nyx_string** %601
  %603 = getelementptr [5 x i8], [5 x i8]* @.str578, i32 0, i32 0
  %604 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str578.c, i8* %603, i64 4)
  %605 = call i1 @nyx_string_equals(%nyx_string* %602, %nyx_string* %604)
  br i1 %605, label %then141, label %else142
then141:
  %606 = call { i64, i8* }* @parse__parse_type_alias(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %606
else142:
  br label %merge143
merge143:
  %607 = load %nyx_string*, %nyx_string** %601
  %608 = getelementptr [6 x i8], [6 x i8]* @.str579, i32 0, i32 0
  %609 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str579.c, i8* %608, i64 5)
  %610 = call i1 @nyx_string_equals(%nyx_string* %607, %nyx_string* %609)
  br i1 %610, label %then144, label %else145
then144:
  %611 = call { i64, i8* }* @parse__parse_macro_def(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %611
else145:
  br label %merge146
merge146:
  %612 = load %nyx_string*, %nyx_string** %601
  %613 = getelementptr [6 x i8], [6 x i8]* @.str580, i32 0, i32 0
  %614 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str580.c, i8* %613, i64 5)
  %615 = call i1 @nyx_string_equals(%nyx_string* %612, %nyx_string* %614)
  br i1 %615, label %then147, label %else148
then147:
  %616 = call { i64, i8* }* @parse__parse_bench_decl(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %616
else148:
  br label %merge149
merge149:
  %617 = load %nyx_string*, %nyx_string** %601
  %618 = getelementptr [6 x i8], [6 x i8]* @.str581, i32 0, i32 0
  %619 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str581.c, i8* %618, i64 5)
  %620 = call i1 @nyx_string_equals(%nyx_string* %617, %nyx_string* %619)
  br i1 %620, label %then150, label %else151
then150:
  %621 = call { i64, i8* }* @parse__parse_spawn_stmt(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %621
else151:
  br label %merge152
merge152:
  %622 = load %nyx_string*, %nyx_string** %601
  %623 = getelementptr [7 x i8], [7 x i8]* @.str582, i32 0, i32 0
  %624 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str582.c, i8* %623, i64 6)
  %625 = call i1 @nyx_string_equals(%nyx_string* %622, %nyx_string* %624)
  br i1 %625, label %then153, label %else154
then153:
  %626 = call { i64, i8* }* @parse__parse_select_stmt(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %626
else154:
  br label %merge155
merge155:
  %627 = load %nyx_string*, %nyx_string** %601
  %628 = getelementptr [5 x i8], [5 x i8]* @.str583, i32 0, i32 0
  %629 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str583.c, i8* %628, i64 4)
  %630 = call i1 @nyx_string_equals(%nyx_string* %627, %nyx_string* %629)
  br i1 %630, label %then156, label %else157
then156:
  %631 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %632 = getelementptr [3 x i8], [3 x i8]* @.str584, i32 0, i32 0
  %633 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str584.c, i8* %632, i64 2)
  %634 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %633)
  br i1 %634, label %then159, label %else160
then159:
  %635 = call { i64, i8* }* @parse__parse_function(%SharedEnv_parse* %env.param)
  %636 = alloca { i64, i8* }*
  store { i64, i8* }* %635, { i64, i8* }** %636
  %637 = load { i64, i8* }*, { i64, i8* }** %636
  %638 = call i64 @nyx_array_get({ i64, i8* }* %637, i64 1)
  %639 = inttoptr i64 %638 to { i64, i8* }*
  %640 = alloca { i64, i8* }*
  store { i64, i8* }* %639, { i64, i8* }** %640
  %641 = getelementptr [9 x i8], [9 x i8]* @.str585, i32 0, i32 0
  %642 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str585.c, i8* %641, i64 8)
  %643 = call { i64, i8* }* @nyx_array_new_ptr()
  %644 = load { i64, i8* }*, { i64, i8* }** %640
  %645 = call i64 @nyx_array_get({ i64, i8* }* %644, i64 0)
  call void @nyx_array_push({ i64, i8* }* %643, i64 %645)
  %646 = load { i64, i8* }*, { i64, i8* }** %640
  %647 = call i64 @nyx_array_get({ i64, i8* }* %646, i64 1)
  call void @nyx_array_push({ i64, i8* }* %643, i64 %647)
  %648 = load { i64, i8* }*, { i64, i8* }** %640
  %649 = call i64 @nyx_array_get({ i64, i8* }* %648, i64 2)
  call void @nyx_array_push({ i64, i8* }* %643, i64 %649)
  %650 = load { i64, i8* }*, { i64, i8* }** %640
  %651 = call i64 @nyx_array_get({ i64, i8* }* %650, i64 3)
  call void @nyx_array_push({ i64, i8* }* %643, i64 %651)
  %652 = load { i64, i8* }*, { i64, i8* }** %640
  %653 = call i64 @nyx_array_get({ i64, i8* }* %652, i64 4)
  call void @nyx_array_push({ i64, i8* }* %643, i64 %653)
  %654 = getelementptr [5 x i8], [5 x i8]* @.str586, i32 0, i32 0
  %655 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str586.c, i8* %654, i64 4)
  %656 = ptrtoint %nyx_string* %655 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %643, i64 %656, i64 2)
  %657 = load { i64, i8* }*, { i64, i8* }** %640
  %658 = call i64 @nyx_array_get({ i64, i8* }* %657, i64 8)
  call void @nyx_array_push({ i64, i8* }* %643, i64 %658)
  %659 = call { i64, i8* }* @make_astnode(%nyx_string* %642, { i64, i8* }* %643)
  ret { i64, i8* }* %659
else160:
  br label %merge161
merge161:
  br label %merge158
else157:
  br label %merge158
merge158:
  br label %merge140
else139:
  br label %merge140
merge140:
  %660 = getelementptr [5 x i8], [5 x i8]* @.str587, i32 0, i32 0
  %661 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str587.c, i8* %660, i64 4)
  %662 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %661)
  br i1 %662, label %then162, label %else163
then162:
  %663 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %664 = call { i64, i8* }* @parse__parse_unary(%SharedEnv_parse* %env.param)
  %665 = alloca { i64, i8* }*
  store { i64, i8* }* %664, { i64, i8* }** %665
  %666 = getelementptr [7 x i8], [7 x i8]* @.str588, i32 0, i32 0
  %667 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str588.c, i8* %666, i64 6)
  %668 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %667)
  br i1 %668, label %then165, label %else166
then165:
  %669 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %670 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %671 = alloca { i64, i8* }*
  store { i64, i8* }* %670, { i64, i8* }** %671
  %672 = getelementptr [13 x i8], [13 x i8]* @.str589, i32 0, i32 0
  %673 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str589.c, i8* %672, i64 12)
  %674 = call { i64, i8* }* @nyx_array_new_ptr()
  %675 = load { i64, i8* }*, { i64, i8* }** %665
  %676 = ptrtoint { i64, i8* }* %675 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %674, i64 %676, i64 5)
  %677 = load { i64, i8* }*, { i64, i8* }** %671
  %678 = ptrtoint { i64, i8* }* %677 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %674, i64 %678, i64 5)
  %679 = call { i64, i8* }* @make_astnode(%nyx_string* %673, { i64, i8* }* %674)
  ret { i64, i8* }* %679
else166:
  br label %merge167
merge167:
  %680 = getelementptr [6 x i8], [6 x i8]* @.str590, i32 0, i32 0
  %681 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str590.c, i8* %680, i64 5)
  %682 = call { i64, i8* }* @nyx_array_new_ptr()
  %683 = load { i64, i8* }*, { i64, i8* }** %665
  %684 = ptrtoint { i64, i8* }* %683 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %682, i64 %684, i64 5)
  %685 = call { i64, i8* }* @make_astnode(%nyx_string* %681, { i64, i8* }* %682)
  ret { i64, i8* }* %685
else163:
  br label %merge164
merge164:
  %686 = call { i64, i8* }* @parse__parse_assignment_or_expr(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %686
}

define internal { i64, i8* }* @parse__parse_spawn_stmt(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %31 = load i64, i64* @g_last_line
  %32 = alloca i64
  store i64 %31, i64* %32
  %33 = load { i64, i8* }*, { i64, i8* }** %12
  %34 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %33, i64 0)
  %35 = alloca i64
  store i64 %34, i64* %35
  %36 = load { i64, i8* }*, { i64, i8* }** %12
  %37 = load { i64, i8* }*, { i64, i8* }** %12
  %38 = call i64 @nyx_array_get({ i64, i8* }* %37, i64 0)
  %39 = add i64 %38, 1
  call void @nyx_array_set({ i64, i8* }* %36, i64 0, i64 %39)
  %40 = getelementptr [9 x i8], [9 x i8]* @.str591, i32 0, i32 0
  %41 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str591.c, i8* %40, i64 8)
  %42 = load i64, i64* %35
  %43 = call %nyx_string* @nyx_string_from_int(i64 %42)
  %44 = call %nyx_string* @nyx_string_concat(%nyx_string* %41, %nyx_string* %43)
  %45 = alloca %nyx_string*
  store %nyx_string* %44, %nyx_string** %45
  %46 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %47 = alloca { i64, i8* }*
  store { i64, i8* }* %46, { i64, i8* }** %47
  %48 = load { i64, i8* }*, { i64, i8* }** %47
  %49 = call i64 @nyx_array_get({ i64, i8* }* %48, i64 1)
  %50 = inttoptr i64 %49 to { i64, i8* }*
  %51 = alloca { i64, i8* }*
  store { i64, i8* }* %50, { i64, i8* }** %51
  %52 = load { i64, i8* }*, { i64, i8* }** %51
  %53 = call i64 @nyx_array_get({ i64, i8* }* %52, i64 0)
  %54 = inttoptr i64 %53 to { i64, i8* }*
  %55 = alloca { i64, i8* }*
  store { i64, i8* }* %54, { i64, i8* }** %55
  %56 = load { i64, i8* }*, { i64, i8* }** %55
  %57 = getelementptr [7 x i8], [7 x i8]* @.str592, i32 0, i32 0
  %58 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str592.c, i8* %57, i64 6)
  %59 = call { i64, i8* }* @nyx_array_new_ptr()
  %60 = getelementptr [8 x i8], [8 x i8]* @.str593, i32 0, i32 0
  %61 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str593.c, i8* %60, i64 7)
  %62 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %62, i64 0, i64 1)
  %63 = call { i64, i8* }* @make_astnode(%nyx_string* %61, { i64, i8* }* %62)
  %64 = ptrtoint { i64, i8* }* %63 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %59, i64 %64, i64 5)
  %65 = call { i64, i8* }* @make_astnode(%nyx_string* %58, { i64, i8* }* %59)
  %66 = ptrtoint { i64, i8* }* %65 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %56, i64 %66, i64 5)
  %67 = getelementptr [9 x i8], [9 x i8]* @.str594, i32 0, i32 0
  %68 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str594.c, i8* %67, i64 8)
  %69 = call { i64, i8* }* @nyx_array_new_ptr()
  %70 = load %nyx_string*, %nyx_string** %45
  %71 = ptrtoint %nyx_string* %70 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %69, i64 %71, i64 2)
  %72 = call { i64, i8* }* @nyx_array_new_ptr()
  %73 = ptrtoint { i64, i8* }* %72 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %69, i64 %73, i64 5)
  %74 = getelementptr [4 x i8], [4 x i8]* @.str595, i32 0, i32 0
  %75 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str595.c, i8* %74, i64 3)
  %76 = ptrtoint %nyx_string* %75 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %69, i64 %76, i64 2)
  %77 = load { i64, i8* }*, { i64, i8* }** %47
  %78 = ptrtoint { i64, i8* }* %77 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %69, i64 %78, i64 5)
  %79 = call { i64, i8* }* @nyx_array_new_ptr()
  %80 = ptrtoint { i64, i8* }* %79 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %69, i64 %80, i64 5)
  %81 = call { i64, i8* }* @make_astnode(%nyx_string* %68, { i64, i8* }* %69)
  %82 = alloca { i64, i8* }*
  store { i64, i8* }* %81, { i64, i8* }** %82
  %83 = load { i64, i8* }*, { i64, i8* }** %11
  %84 = load { i64, i8* }*, { i64, i8* }** %82
  %85 = ptrtoint { i64, i8* }* %84 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %83, i64 %85, i64 5)
  %86 = getelementptr [11 x i8], [11 x i8]* @.str596, i32 0, i32 0
  %87 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str596.c, i8* %86, i64 10)
  %88 = call { i64, i8* }* @nyx_array_new_ptr()
  %89 = load %nyx_string*, %nyx_string** %45
  %90 = ptrtoint %nyx_string* %89 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %88, i64 %90, i64 2)
  %91 = call { i64, i8* }* @make_astnode(%nyx_string* %87, { i64, i8* }* %88)
  %92 = alloca { i64, i8* }*
  store { i64, i8* }* %91, { i64, i8* }** %92
  %93 = getelementptr [11 x i8], [11 x i8]* @.str597, i32 0, i32 0
  %94 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str597.c, i8* %93, i64 10)
  %95 = call { i64, i8* }* @nyx_array_new_ptr()
  %96 = getelementptr [11 x i8], [11 x i8]* @.str598, i32 0, i32 0
  %97 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str598.c, i8* %96, i64 10)
  %98 = ptrtoint %nyx_string* %97 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %95, i64 %98, i64 2)
  %99 = call { i64, i8* }* @make_astnode(%nyx_string* %94, { i64, i8* }* %95)
  %100 = alloca { i64, i8* }*
  store { i64, i8* }* %99, { i64, i8* }** %100
  %101 = call { i64, i8* }* @nyx_array_new_ptr()
  %102 = alloca { i64, i8* }*
  store { i64, i8* }* %101, { i64, i8* }** %102
  %103 = load { i64, i8* }*, { i64, i8* }** %102
  %104 = load { i64, i8* }*, { i64, i8* }** %92
  %105 = ptrtoint { i64, i8* }* %104 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %103, i64 %105, i64 5)
  %106 = getelementptr [5 x i8], [5 x i8]* @.str599, i32 0, i32 0
  %107 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str599.c, i8* %106, i64 4)
  %108 = call { i64, i8* }* @nyx_array_new_ptr()
  %109 = load { i64, i8* }*, { i64, i8* }** %100
  %110 = ptrtoint { i64, i8* }* %109 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %108, i64 %110, i64 5)
  %111 = load { i64, i8* }*, { i64, i8* }** %102
  %112 = ptrtoint { i64, i8* }* %111 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %108, i64 %112, i64 5)
  %113 = call { i64, i8* }* @make_astnode(%nyx_string* %107, { i64, i8* }* %108)
  %114 = alloca { i64, i8* }*
  store { i64, i8* }* %113, { i64, i8* }** %114
  %115 = load { i64, i8* }*, { i64, i8* }** %114
  %116 = load i64, i64* %32
  call void @nyx_array_set({ i64, i8* }* %115, i64 2, i64 %116)
  %117 = load { i64, i8* }*, { i64, i8* }** %114
  ret { i64, i8* }* %117
}

define internal { i64, i8* }* @parse__parse_select_stmt(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %31 = load i64, i64* @g_last_line
  %32 = alloca i64
  store i64 %31, i64* %32
  %33 = getelementptr [11 x i8], [11 x i8]* @.str600, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str600.c, i8* %33, i64 10)
  %35 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %34)
  %36 = call { i64, i8* }* @nyx_array_new_ptr()
  %37 = alloca { i64, i8* }*
  store { i64, i8* }* %36, { i64, i8* }** %37
  %38 = getelementptr [6 x i8], [6 x i8]* @.str601, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str601.c, i8* %38, i64 5)
  %40 = call { i64, i8* }* @nyx_array_new_ptr()
  %41 = call { i64, i8* }* @nyx_array_new_ptr()
  %42 = ptrtoint { i64, i8* }* %41 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %40, i64 %42, i64 5)
  %43 = call { i64, i8* }* @make_astnode(%nyx_string* %39, { i64, i8* }* %40)
  %44 = alloca { i64, i8* }*
  store { i64, i8* }* %43, { i64, i8* }** %44
  %45 = alloca i1
  store i1 0, i1* %45
  %46 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %47 = getelementptr [12 x i8], [12 x i8]* @.str602, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str602.c, i8* %47, i64 11)
  %49 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %48)
  %50 = xor i1 %49, true
  br i1 %50, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %46)
  %51 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %52 = alloca %Token
  store %Token %51, %Token* %52
  %53 = load %Token, %Token* %52
  %54 = call %nyx_string* @get_token_value(%Token %53)
  %55 = alloca %nyx_string*
  store %nyx_string* %54, %nyx_string** %55
  %56 = load %nyx_string*, %nyx_string** %55
  %57 = getelementptr [8 x i8], [8 x i8]* @.str603, i32 0, i32 0
  %58 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str603.c, i8* %57, i64 7)
  %59 = call i1 @nyx_string_equals(%nyx_string* %56, %nyx_string* %58)
  br i1 %59, label %then3, label %else4
then3:
  %60 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %61 = getelementptr [12 x i8], [12 x i8]* @.str604, i32 0, i32 0
  %62 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str604.c, i8* %61, i64 11)
  %63 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %62)
  %64 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %64, { i64, i8* }** %44
  store i1 1, i1* %45
  br label %merge5
else4:
  %65 = load %nyx_string*, %nyx_string** %55
  %66 = getelementptr [5 x i8], [5 x i8]* @.str605, i32 0, i32 0
  %67 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str605.c, i8* %66, i64 4)
  %68 = call i1 @nyx_string_equals(%nyx_string* %65, %nyx_string* %67)
  br i1 %68, label %then6, label %else7
then6:
  %69 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge8
else7:
  br label %merge8
merge8:
  %70 = getelementptr [1 x i8], [1 x i8]* @.str606, i32 0, i32 0
  %71 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str606.c, i8* %70, i64 0)
  %72 = alloca %nyx_string*
  store %nyx_string* %71, %nyx_string** %72
  %73 = getelementptr [11 x i8], [11 x i8]* @.str607, i32 0, i32 0
  %74 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str607.c, i8* %73, i64 10)
  %75 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %74)
  br i1 %75, label %then9, label %else10
then9:
  %76 = load i64, i64* %4
  %77 = alloca i64
  store i64 %76, i64* %77
  %78 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %79 = alloca %Token
  store %Token %78, %Token* %79
  %80 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %81 = getelementptr [7 x i8], [7 x i8]* @.str608, i32 0, i32 0
  %82 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str608.c, i8* %81, i64 6)
  %83 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %82)
  br i1 %83, label %then12, label %else13
then12:
  %84 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %85 = load %Token, %Token* %79
  %86 = call %nyx_string* @get_token_value(%Token %85)
  store %nyx_string* %86, %nyx_string** %72
  br label %merge14
else13:
  %87 = load i64, i64* %77
  store i64 %87, i64* %4
  br label %merge14
merge14:
  br label %merge11
else10:
  br label %merge11
merge11:
  %88 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %89 = alloca { i64, i8* }*
  store { i64, i8* }* %88, { i64, i8* }** %89
  %90 = getelementptr [12 x i8], [12 x i8]* @.str609, i32 0, i32 0
  %91 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str609.c, i8* %90, i64 11)
  %92 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %91)
  %93 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %94 = alloca { i64, i8* }*
  store { i64, i8* }* %93, { i64, i8* }** %94
  %95 = call { i64, i8* }* @nyx_array_new_ptr()
  %96 = alloca { i64, i8* }*
  store { i64, i8* }* %95, { i64, i8* }** %96
  %97 = load { i64, i8* }*, { i64, i8* }** %96
  %98 = load { i64, i8* }*, { i64, i8* }** %89
  %99 = ptrtoint { i64, i8* }* %98 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %97, i64 %99, i64 5)
  %100 = load { i64, i8* }*, { i64, i8* }** %96
  %101 = load { i64, i8* }*, { i64, i8* }** %94
  %102 = ptrtoint { i64, i8* }* %101 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %100, i64 %102, i64 5)
  %103 = load { i64, i8* }*, { i64, i8* }** %96
  %104 = load %nyx_string*, %nyx_string** %72
  %105 = ptrtoint %nyx_string* %104 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %103, i64 %105, i64 2)
  %106 = load { i64, i8* }*, { i64, i8* }** %37
  %107 = load { i64, i8* }*, { i64, i8* }** %96
  %108 = ptrtoint { i64, i8* }* %107 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %106, i64 %108, i64 5)
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %109 = getelementptr [12 x i8], [12 x i8]* @.str610, i32 0, i32 0
  %110 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str610.c, i8* %109, i64 11)
  %111 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %110)
  %112 = alloca i64
  store i64 0, i64* %112
  %113 = load i1, i1* %45
  br i1 %113, label %then15, label %else16
then15:
  store i64 1, i64* %112
  br label %merge17
else16:
  br label %merge17
merge17:
  %114 = getelementptr [12 x i8], [12 x i8]* @.str611, i32 0, i32 0
  %115 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str611.c, i8* %114, i64 11)
  %116 = call { i64, i8* }* @nyx_array_new_ptr()
  %117 = load { i64, i8* }*, { i64, i8* }** %37
  %118 = ptrtoint { i64, i8* }* %117 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %116, i64 %118, i64 5)
  %119 = load { i64, i8* }*, { i64, i8* }** %44
  %120 = ptrtoint { i64, i8* }* %119 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %116, i64 %120, i64 5)
  %121 = load i64, i64* %112
  call void @nyx_array_push({ i64, i8* }* %116, i64 %121)
  %122 = call { i64, i8* }* @make_astnode(%nyx_string* %115, { i64, i8* }* %116)
  %123 = alloca { i64, i8* }*
  store { i64, i8* }* %122, { i64, i8* }** %123
  %124 = load { i64, i8* }*, { i64, i8* }** %123
  %125 = load i64, i64* %32
  call void @nyx_array_set({ i64, i8* }* %124, i64 2, i64 %125)
  %126 = load { i64, i8* }*, { i64, i8* }** %123
  ret { i64, i8* }* %126
}

define internal { i64, i8* }* @parse__parse_bench_decl(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %31 = getelementptr [7 x i8], [7 x i8]* @.str612, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str612.c, i8* %31, i64 6)
  %33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %32)
  %34 = alloca %Token
  store %Token %33, %Token* %34
  %35 = load %Token, %Token* %34
  %36 = call %nyx_string* @get_token_value(%Token %35)
  %37 = alloca %nyx_string*
  store %nyx_string* %36, %nyx_string** %37
  %38 = getelementptr [7 x i8], [7 x i8]* @.str613, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str613.c, i8* %38, i64 6)
  %40 = alloca %nyx_string*
  store %nyx_string* %39, %nyx_string** %40
  %41 = getelementptr [7 x i8], [7 x i8]* @.str614, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str614.c, i8* %41, i64 6)
  %43 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %42)
  br i1 %43, label %then0, label %else1
then0:
  %44 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %45 = alloca %Token
  store %Token %44, %Token* %45
  %46 = load %Token, %Token* %45
  %47 = call %nyx_string* @get_token_value(%Token %46)
  store %nyx_string* %47, %nyx_string** %40
  br label %merge2
else1:
  br label %merge2
merge2:
  %48 = call { i64, i8* }* @parse__parse_fn_body_block(%SharedEnv_parse* %env.param)
  %49 = alloca { i64, i8* }*
  store { i64, i8* }* %48, { i64, i8* }** %49
  %50 = getelementptr [11 x i8], [11 x i8]* @.str615, i32 0, i32 0
  %51 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str615.c, i8* %50, i64 10)
  %52 = call { i64, i8* }* @nyx_array_new_ptr()
  %53 = load %nyx_string*, %nyx_string** %37
  %54 = ptrtoint %nyx_string* %53 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %52, i64 %54, i64 2)
  %55 = load %nyx_string*, %nyx_string** %40
  %56 = ptrtoint %nyx_string* %55 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %52, i64 %56, i64 2)
  %57 = load { i64, i8* }*, { i64, i8* }** %49
  %58 = ptrtoint { i64, i8* }* %57 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %52, i64 %58, i64 5)
  %59 = call { i64, i8* }* @make_astnode(%nyx_string* %51, { i64, i8* }* %52)
  ret { i64, i8* }* %59
}

define internal { i64, i8* }* @parse__parse_test_decl(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = getelementptr [5 x i8], [5 x i8]* @.str616, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str616.c, i8* %30, i64 4)
  %32 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %31)
  %33 = getelementptr [7 x i8], [7 x i8]* @.str617, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str617.c, i8* %33, i64 6)
  %35 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %34)
  %36 = alloca %Token
  store %Token %35, %Token* %36
  %37 = load %Token, %Token* %36
  %38 = call %nyx_string* @get_token_value(%Token %37)
  %39 = alloca %nyx_string*
  store %nyx_string* %38, %nyx_string** %39
  %40 = call { i64, i8* }* @parse__parse_fn_body_block(%SharedEnv_parse* %env.param)
  %41 = alloca { i64, i8* }*
  store { i64, i8* }* %40, { i64, i8* }** %41
  %42 = getelementptr [10 x i8], [10 x i8]* @.str618, i32 0, i32 0
  %43 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str618.c, i8* %42, i64 9)
  %44 = call { i64, i8* }* @nyx_array_new_ptr()
  %45 = load %nyx_string*, %nyx_string** %39
  %46 = ptrtoint %nyx_string* %45 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %44, i64 %46, i64 2)
  %47 = load { i64, i8* }*, { i64, i8* }** %41
  %48 = ptrtoint { i64, i8* }* %47 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %44, i64 %48, i64 5)
  %49 = call { i64, i8* }* @make_astnode(%nyx_string* %43, { i64, i8* }* %44)
  ret { i64, i8* }* %49
}

define internal { i64, i8* }* @parse__parse_static_var(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = getelementptr [7 x i8], [7 x i8]* @.str619, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str619.c, i8* %30, i64 6)
  %32 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %31)
  %33 = getelementptr [4 x i8], [4 x i8]* @.str620, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str620.c, i8* %33, i64 3)
  %35 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %34)
  %36 = getelementptr [11 x i8], [11 x i8]* @.str621, i32 0, i32 0
  %37 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str621.c, i8* %36, i64 10)
  %38 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %37)
  %39 = alloca %Token
  store %Token %38, %Token* %39
  %40 = load %Token, %Token* %39
  %41 = call %nyx_string* @get_token_value(%Token %40)
  %42 = alloca %nyx_string*
  store %nyx_string* %41, %nyx_string** %42
  %43 = getelementptr [4 x i8], [4 x i8]* @.str622, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str622.c, i8* %43, i64 3)
  %45 = alloca %nyx_string*
  store %nyx_string* %44, %nyx_string** %45
  %46 = getelementptr [6 x i8], [6 x i8]* @.str623, i32 0, i32 0
  %47 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str623.c, i8* %46, i64 5)
  %48 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %47)
  br i1 %48, label %then0, label %else1
then0:
  %49 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %50 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %50, %nyx_string** %45
  br label %merge2
else1:
  br label %merge2
merge2:
  %51 = getelementptr [7 x i8], [7 x i8]* @.str624, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str624.c, i8* %51, i64 6)
  %53 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %52)
  %54 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %55 = alloca { i64, i8* }*
  store { i64, i8* }* %54, { i64, i8* }** %55
  %56 = getelementptr [11 x i8], [11 x i8]* @.str625, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str625.c, i8* %56, i64 10)
  %58 = call { i64, i8* }* @nyx_array_new_ptr()
  %59 = load %nyx_string*, %nyx_string** %42
  %60 = ptrtoint %nyx_string* %59 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %58, i64 %60, i64 2)
  %61 = load %nyx_string*, %nyx_string** %45
  %62 = ptrtoint %nyx_string* %61 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %58, i64 %62, i64 2)
  %63 = load { i64, i8* }*, { i64, i8* }** %55
  %64 = ptrtoint { i64, i8* }* %63 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %58, i64 %64, i64 5)
  %65 = call { i64, i8* }* @make_astnode(%nyx_string* %57, { i64, i8* }* %58)
  ret { i64, i8* }* %65
}

define internal { i64, i8* }* @parse__parse_extern_fn(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = getelementptr [7 x i8], [7 x i8]* @.str626, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str626.c, i8* %30, i64 6)
  %32 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %31)
  %33 = getelementptr [7 x i8], [7 x i8]* @.str627, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str627.c, i8* %33, i64 6)
  %35 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %34)
  %36 = alloca %Token
  store %Token %35, %Token* %36
  %37 = load %Token, %Token* %36
  %38 = call %nyx_string* @get_token_value(%Token %37)
  %39 = alloca %nyx_string*
  store %nyx_string* %38, %nyx_string** %39
  %40 = getelementptr [3 x i8], [3 x i8]* @.str628, i32 0, i32 0
  %41 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str628.c, i8* %40, i64 2)
  %42 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %41)
  %43 = getelementptr [11 x i8], [11 x i8]* @.str629, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str629.c, i8* %43, i64 10)
  %45 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %44)
  %46 = alloca %Token
  store %Token %45, %Token* %46
  %47 = load %Token, %Token* %46
  %48 = call %nyx_string* @get_token_value(%Token %47)
  %49 = alloca %nyx_string*
  store %nyx_string* %48, %nyx_string** %49
  %50 = getelementptr [11 x i8], [11 x i8]* @.str630, i32 0, i32 0
  %51 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str630.c, i8* %50, i64 10)
  %52 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %51)
  %53 = call { i64, i8* }* @nyx_array_new_ptr()
  %54 = alloca { i64, i8* }*
  store { i64, i8* }* %53, { i64, i8* }** %54
  %55 = alloca i1
  store i1 0, i1* %55
  %56 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %57 = load i1, i1* %55
  %58 = xor i1 %57, true
  br i1 %58, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %56)
  %59 = getelementptr [12 x i8], [12 x i8]* @.str631, i32 0, i32 0
  %60 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str631.c, i8* %59, i64 11)
  %61 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %60)
  br i1 %61, label %then3, label %else4
then3:
  %62 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %55
  br label %merge5
else4:
  %63 = load { i64, i8* }*, { i64, i8* }** %54
  %64 = call i64 @nyx_array_length({ i64, i8* }* %63)
  %65 = icmp sgt i64 %64, 0
  br i1 %65, label %then6, label %else7
then6:
  %66 = getelementptr [6 x i8], [6 x i8]* @.str632, i32 0, i32 0
  %67 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str632.c, i8* %66, i64 5)
  %68 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %67)
  br label %merge8
else7:
  br label %merge8
merge8:
  %69 = getelementptr [11 x i8], [11 x i8]* @.str633, i32 0, i32 0
  %70 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str633.c, i8* %69, i64 10)
  %71 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %70)
  %72 = alloca %Token
  store %Token %71, %Token* %72
  %73 = load %Token, %Token* %72
  %74 = call %nyx_string* @get_token_value(%Token %73)
  %75 = alloca %nyx_string*
  store %nyx_string* %74, %nyx_string** %75
  %76 = getelementptr [6 x i8], [6 x i8]* @.str634, i32 0, i32 0
  %77 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str634.c, i8* %76, i64 5)
  %78 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %77)
  %79 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %80 = alloca %nyx_string*
  store %nyx_string* %79, %nyx_string** %80
  %81 = load { i64, i8* }*, { i64, i8* }** %54
  %82 = call { i64, i8* }* @nyx_array_new_ptr()
  %83 = load %nyx_string*, %nyx_string** %75
  %84 = ptrtoint %nyx_string* %83 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %82, i64 %84, i64 2)
  %85 = load %nyx_string*, %nyx_string** %80
  %86 = ptrtoint %nyx_string* %85 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %82, i64 %86, i64 2)
  %87 = ptrtoint { i64, i8* }* %82 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %81, i64 %87, i64 5)
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %88 = getelementptr [5 x i8], [5 x i8]* @.str635, i32 0, i32 0
  %89 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str635.c, i8* %88, i64 4)
  %90 = alloca %nyx_string*
  store %nyx_string* %89, %nyx_string** %90
  %91 = getelementptr [6 x i8], [6 x i8]* @.str636, i32 0, i32 0
  %92 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str636.c, i8* %91, i64 5)
  %93 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %92)
  br i1 %93, label %then9, label %else10
then9:
  %94 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %95 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %95, %nyx_string** %90
  br label %merge11
else10:
  br label %merge11
merge11:
  %96 = getelementptr [10 x i8], [10 x i8]* @.str637, i32 0, i32 0
  %97 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str637.c, i8* %96, i64 9)
  %98 = call { i64, i8* }* @nyx_array_new_ptr()
  %99 = load %nyx_string*, %nyx_string** %49
  %100 = ptrtoint %nyx_string* %99 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %98, i64 %100, i64 2)
  %101 = load { i64, i8* }*, { i64, i8* }** %54
  %102 = ptrtoint { i64, i8* }* %101 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %98, i64 %102, i64 5)
  %103 = load %nyx_string*, %nyx_string** %90
  %104 = ptrtoint %nyx_string* %103 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %98, i64 %104, i64 2)
  %105 = load %nyx_string*, %nyx_string** %39
  %106 = ptrtoint %nyx_string* %105 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %98, i64 %106, i64 2)
  %107 = call { i64, i8* }* @make_astnode(%nyx_string* %97, { i64, i8* }* %98)
  ret { i64, i8* }* %107
}

define internal { i64, i8* }* @parse__parse_macro_def(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %31 = getelementptr [11 x i8], [11 x i8]* @.str638, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str638.c, i8* %31, i64 10)
  %33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %32)
  %34 = alloca %Token
  store %Token %33, %Token* %34
  %35 = load %Token, %Token* %34
  %36 = call %nyx_string* @get_token_value(%Token %35)
  %37 = alloca %nyx_string*
  store %nyx_string* %36, %nyx_string** %37
  %38 = getelementptr [11 x i8], [11 x i8]* @.str639, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str639.c, i8* %38, i64 10)
  %40 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %39)
  %41 = getelementptr [11 x i8], [11 x i8]* @.str640, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str640.c, i8* %41, i64 10)
  %43 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %42)
  %44 = call { i64, i8* }* @nyx_array_new_ptr()
  %45 = alloca { i64, i8* }*
  store { i64, i8* }* %44, { i64, i8* }** %45
  %46 = alloca i1
  store i1 0, i1* %46
  %47 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %48 = load i1, i1* %46
  %49 = xor i1 %48, true
  br i1 %49, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %47)
  %50 = getelementptr [12 x i8], [12 x i8]* @.str641, i32 0, i32 0
  %51 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str641.c, i8* %50, i64 11)
  %52 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %51)
  br i1 %52, label %then3, label %else4
then3:
  %53 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %46
  br label %merge5
else4:
  %54 = load { i64, i8* }*, { i64, i8* }** %45
  %55 = call i64 @nyx_array_length({ i64, i8* }* %54)
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %then6, label %else7
then6:
  %57 = getelementptr [6 x i8], [6 x i8]* @.str642, i32 0, i32 0
  %58 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str642.c, i8* %57, i64 5)
  %59 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %58)
  br label %merge8
else7:
  br label %merge8
merge8:
  %60 = getelementptr [11 x i8], [11 x i8]* @.str643, i32 0, i32 0
  %61 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str643.c, i8* %60, i64 10)
  %62 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %61)
  %63 = alloca %Token
  store %Token %62, %Token* %63
  %64 = load { i64, i8* }*, { i64, i8* }** %45
  %65 = load %Token, %Token* %63
  %66 = call %nyx_string* @get_token_value(%Token %65)
  %67 = ptrtoint %nyx_string* %66 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %64, i64 %67, i64 2)
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %68 = getelementptr [12 x i8], [12 x i8]* @.str644, i32 0, i32 0
  %69 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str644.c, i8* %68, i64 11)
  %70 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %69)
  %71 = load i64, i64* %4
  %72 = alloca i64
  store i64 %71, i64* %72
  %73 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %74 = getelementptr [12 x i8], [12 x i8]* @.str645, i32 0, i32 0
  %75 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str645.c, i8* %74, i64 11)
  %76 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %75)
  %77 = getelementptr [1 x i8], [1 x i8]* @.str646, i32 0, i32 0
  %78 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str646.c, i8* %77, i64 0)
  %79 = alloca %nyx_string*
  store %nyx_string* %78, %nyx_string** %79
  %80 = alloca i64
  store i64 0, i64* %80
  %81 = call i8* @llvm.stacksave()
  br label %while_cond9
while_cond9:
  %82 = load i64, i64* %80
  %83 = load { i64, i8* }*, { i64, i8* }** %45
  %84 = call i64 @nyx_array_length({ i64, i8* }* %83)
  %85 = icmp slt i64 %82, %84
  br i1 %85, label %while_body10, label %while_end11
while_body10:
  call void @llvm.stackrestore(i8* %81)
  %86 = load i64, i64* %80
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %then12, label %else13
then12:
  %88 = load %nyx_string*, %nyx_string** %79
  %89 = getelementptr [2 x i8], [2 x i8]* @.str647, i32 0, i32 0
  %90 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str647.c, i8* %89, i64 1)
  %91 = call %nyx_string* @nyx_string_concat(%nyx_string* %88, %nyx_string* %90)
  store %nyx_string* %91, %nyx_string** %79
  br label %merge14
else13:
  br label %merge14
merge14:
  %92 = load { i64, i8* }*, { i64, i8* }** %45
  %93 = load i64, i64* %80
  %94 = call i64 @nyx_array_get_checked({ i64, i8* }* %92, i64 %93, i64 2)
  %95 = inttoptr i64 %94 to %nyx_string*
  %96 = alloca %nyx_string*
  store %nyx_string* %95, %nyx_string** %96
  %97 = load %nyx_string*, %nyx_string** %79
  %98 = load %nyx_string*, %nyx_string** %96
  %99 = call %nyx_string* @nyx_string_concat(%nyx_string* %97, %nyx_string* %98)
  store %nyx_string* %99, %nyx_string** %79
  %100 = load i64, i64* %80
  %101 = add i64 %100, 1
  store i64 %101, i64* %80
  br label %while_cond9
while_end11:
  %102 = load { i64, i8* }*, { i64, i8* }** %13
  %103 = load %nyx_string*, %nyx_string** %37
  %104 = ptrtoint %nyx_string* %103 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %102, i64 %104, i64 2)
  %105 = load { i64, i8* }*, { i64, i8* }** %14
  %106 = load i64, i64* %72
  call void @nyx_array_push({ i64, i8* }* %105, i64 %106)
  %107 = load { i64, i8* }*, { i64, i8* }** %15
  %108 = load %nyx_string*, %nyx_string** %79
  %109 = ptrtoint %nyx_string* %108 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %107, i64 %109, i64 2)
  %110 = getelementptr [10 x i8], [10 x i8]* @.str648, i32 0, i32 0
  %111 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str648.c, i8* %110, i64 9)
  %112 = call { i64, i8* }* @nyx_array_new_ptr()
  %113 = load %nyx_string*, %nyx_string** %37
  %114 = ptrtoint %nyx_string* %113 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %112, i64 %114, i64 2)
  %115 = call { i64, i8* }* @make_astnode(%nyx_string* %111, { i64, i8* }* %112)
  ret { i64, i8* }* %115
}

define internal { i64, i8* }* @parse__parse_macro_invocation(%SharedEnv_parse* %env.param, %nyx_string* %mac_name.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = alloca %nyx_string*
  store %nyx_string* %mac_name.param, %nyx_string** %30
  %31 = getelementptr [4 x i8], [4 x i8]* @.str649, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str649.c, i8* %31, i64 3)
  %33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %32)
  %34 = getelementptr [11 x i8], [11 x i8]* @.str650, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str650.c, i8* %34, i64 10)
  %36 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %35)
  %37 = call { i64, i8* }* @nyx_array_new_ptr()
  %38 = alloca { i64, i8* }*
  store { i64, i8* }* %37, { i64, i8* }** %38
  %39 = alloca i1
  store i1 0, i1* %39
  %40 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %41 = load i1, i1* %39
  %42 = xor i1 %41, true
  br i1 %42, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %40)
  %43 = getelementptr [12 x i8], [12 x i8]* @.str651, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str651.c, i8* %43, i64 11)
  %45 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %44)
  br i1 %45, label %then3, label %else4
then3:
  %46 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %39
  br label %merge5
else4:
  %47 = load { i64, i8* }*, { i64, i8* }** %38
  %48 = call i64 @nyx_array_length({ i64, i8* }* %47)
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %then6, label %else7
then6:
  %50 = getelementptr [6 x i8], [6 x i8]* @.str652, i32 0, i32 0
  %51 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str652.c, i8* %50, i64 5)
  %52 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %51)
  br label %merge8
else7:
  br label %merge8
merge8:
  %53 = load { i64, i8* }*, { i64, i8* }** %38
  %54 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %55 = ptrtoint { i64, i8* }* %54 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %53, i64 %55, i64 5)
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %56 = alloca i64
  store i64 0, i64* %56
  %57 = alloca i64
  store i64 0, i64* %57
  %58 = call i8* @llvm.stacksave()
  br label %while_cond9
while_cond9:
  %59 = load i64, i64* %57
  %60 = load { i64, i8* }*, { i64, i8* }** %13
  %61 = call i64 @nyx_array_length({ i64, i8* }* %60)
  %62 = icmp slt i64 %59, %61
  br i1 %62, label %while_body10, label %while_end11
while_body10:
  call void @llvm.stackrestore(i8* %58)
  %63 = load { i64, i8* }*, { i64, i8* }** %13
  %64 = load i64, i64* %57
  %65 = call i64 @nyx_array_get_checked({ i64, i8* }* %63, i64 %64, i64 2)
  %66 = inttoptr i64 %65 to %nyx_string*
  %67 = alloca %nyx_string*
  store %nyx_string* %66, %nyx_string** %67
  %68 = load %nyx_string*, %nyx_string** %67
  %69 = load %nyx_string*, %nyx_string** %30
  %70 = call i1 @nyx_string_equals(%nyx_string* %68, %nyx_string* %69)
  br i1 %70, label %then12, label %else13
then12:
  %71 = load i64, i64* %57
  store i64 %71, i64* %56
  br label %merge14
else13:
  br label %merge14
merge14:
  %72 = load i64, i64* %57
  %73 = add i64 %72, 1
  store i64 %73, i64* %57
  br label %while_cond9
while_end11:
  %74 = load { i64, i8* }*, { i64, i8* }** %15
  %75 = load i64, i64* %56
  %76 = call i64 @nyx_array_get_checked({ i64, i8* }* %74, i64 %75, i64 2)
  %77 = inttoptr i64 %76 to %nyx_string*
  %78 = alloca %nyx_string*
  store %nyx_string* %77, %nyx_string** %78
  %79 = load { i64, i8* }*, { i64, i8* }** %14
  %80 = load i64, i64* %56
  %81 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %79, i64 %80)
  %82 = alloca i64
  store i64 %81, i64* %82
  %83 = call { i64, i8* }* @nyx_array_new_ptr()
  %84 = alloca { i64, i8* }*
  store { i64, i8* }* %83, { i64, i8* }** %84
  %85 = load %nyx_string*, %nyx_string** %78
  %86 = getelementptr [1 x i8], [1 x i8]* @.str653, i32 0, i32 0
  %87 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str653.c, i8* %86, i64 0)
  %88 = call i1 @nyx_string_equals(%nyx_string* %85, %nyx_string* %87)
  %89 = xor i1 %88, true
  br i1 %89, label %then15, label %else16
then15:
  %90 = load %nyx_string*, %nyx_string** %78
  %91 = getelementptr [2 x i8], [2 x i8]* @.str654, i32 0, i32 0
  %92 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str654.c, i8* %91, i64 1)
  %93 = call { i64, i8* }* @nyx_string_split(%nyx_string* %90, %nyx_string* %92)
  store { i64, i8* }* %93, { i64, i8* }** %84
  br label %merge17
else16:
  br label %merge17
merge17:
  %94 = load i64, i64* %4
  %95 = alloca i64
  store i64 %94, i64* %95
  %96 = load { i64, i8* }*, { i64, i8* }** %84
  store { i64, i8* }* %96, { i64, i8* }** %16
  %97 = load { i64, i8* }*, { i64, i8* }** %38
  store { i64, i8* }* %97, { i64, i8* }** %17
  %98 = load i64, i64* %82
  store i64 %98, i64* %4
  %99 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %100 = alloca { i64, i8* }*
  store { i64, i8* }* %99, { i64, i8* }** %100
  %101 = load i64, i64* %95
  store i64 %101, i64* %4
  %102 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %102, { i64, i8* }** %16
  %103 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %103, { i64, i8* }** %17
  %104 = load { i64, i8* }*, { i64, i8* }** %100
  ret { i64, i8* }* %104
}

define internal { i64, i8* }* @parse__parse_type_alias(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %31 = getelementptr [11 x i8], [11 x i8]* @.str655, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str655.c, i8* %31, i64 10)
  %33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %32)
  %34 = alloca %Token
  store %Token %33, %Token* %34
  %35 = load %Token, %Token* %34
  %36 = call %nyx_string* @get_token_value(%Token %35)
  %37 = alloca %nyx_string*
  store %nyx_string* %36, %nyx_string** %37
  %38 = getelementptr [7 x i8], [7 x i8]* @.str656, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str656.c, i8* %38, i64 6)
  %40 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %39)
  %41 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %42 = alloca %nyx_string*
  store %nyx_string* %41, %nyx_string** %42
  %43 = getelementptr [5 x i8], [5 x i8]* @.str657, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str657.c, i8* %43, i64 4)
  %45 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %44)
  br i1 %45, label %then0, label %else1
then0:
  %46 = call { i64, i8* }* @nyx_array_new_ptr()
  %47 = load %nyx_string*, %nyx_string** %42
  %48 = ptrtoint %nyx_string* %47 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %46, i64 %48, i64 2)
  %49 = alloca { i64, i8* }*
  store { i64, i8* }* %46, { i64, i8* }** %49
  %50 = call i8* @llvm.stacksave()
  br label %while_cond3
while_cond3:
  %51 = getelementptr [5 x i8], [5 x i8]* @.str658, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str658.c, i8* %51, i64 4)
  %53 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %52)
  br i1 %53, label %while_body4, label %while_end5
while_body4:
  call void @llvm.stackrestore(i8* %50)
  %54 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %55 = load { i64, i8* }*, { i64, i8* }** %49
  %56 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %57 = ptrtoint %nyx_string* %56 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %55, i64 %57, i64 2)
  br label %while_cond3
while_end5:
  %58 = call { i64, i8* }* @nyx_array_new_ptr()
  %59 = alloca { i64, i8* }*
  store { i64, i8* }* %58, { i64, i8* }** %59
  %60 = alloca i64
  store i64 0, i64* %60
  %61 = call i8* @llvm.stacksave()
  br label %while_cond6
while_cond6:
  %62 = load i64, i64* %60
  %63 = load { i64, i8* }*, { i64, i8* }** %49
  %64 = call i64 @nyx_array_length({ i64, i8* }* %63)
  %65 = icmp slt i64 %62, %64
  br i1 %65, label %while_body7, label %while_end8
while_body7:
  call void @llvm.stackrestore(i8* %61)
  %66 = load { i64, i8* }*, { i64, i8* }** %49
  %67 = load i64, i64* %60
  %68 = call i64 @nyx_array_get_checked({ i64, i8* }* %66, i64 %67, i64 2)
  %69 = inttoptr i64 %68 to %nyx_string*
  %70 = alloca %nyx_string*
  store %nyx_string* %69, %nyx_string** %70
  %71 = call { i64, i8* }* @nyx_array_new_ptr()
  %72 = load %nyx_string*, %nyx_string** %70
  %73 = ptrtoint %nyx_string* %72 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %71, i64 %73, i64 2)
  %74 = alloca { i64, i8* }*
  store { i64, i8* }* %71, { i64, i8* }** %74
  %75 = load { i64, i8* }*, { i64, i8* }** %59
  %76 = call { i64, i8* }* @nyx_array_new_ptr()
  %77 = load %nyx_string*, %nyx_string** %70
  %78 = ptrtoint %nyx_string* %77 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %76, i64 %78, i64 2)
  %79 = load { i64, i8* }*, { i64, i8* }** %74
  %80 = ptrtoint { i64, i8* }* %79 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %76, i64 %80, i64 5)
  %81 = ptrtoint { i64, i8* }* %76 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %75, i64 %81, i64 5)
  %82 = load i64, i64* %60
  %83 = add i64 %82, 1
  store i64 %83, i64* %60
  br label %while_cond6
while_end8:
  %84 = getelementptr [9 x i8], [9 x i8]* @.str659, i32 0, i32 0
  %85 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str659.c, i8* %84, i64 8)
  %86 = call { i64, i8* }* @nyx_array_new_ptr()
  %87 = load %nyx_string*, %nyx_string** %37
  %88 = ptrtoint %nyx_string* %87 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %86, i64 %88, i64 2)
  %89 = load { i64, i8* }*, { i64, i8* }** %59
  %90 = ptrtoint { i64, i8* }* %89 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %86, i64 %90, i64 5)
  %91 = call { i64, i8* }* @nyx_array_new_ptr()
  %92 = ptrtoint { i64, i8* }* %91 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %86, i64 %92, i64 5)
  %93 = call { i64, i8* }* @make_astnode(%nyx_string* %85, { i64, i8* }* %86)
  ret { i64, i8* }* %93
else1:
  br label %merge2
merge2:
  %94 = getelementptr [11 x i8], [11 x i8]* @.str660, i32 0, i32 0
  %95 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str660.c, i8* %94, i64 10)
  %96 = call { i64, i8* }* @nyx_array_new_ptr()
  %97 = load %nyx_string*, %nyx_string** %37
  %98 = ptrtoint %nyx_string* %97 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %96, i64 %98, i64 2)
  %99 = load %nyx_string*, %nyx_string** %42
  %100 = ptrtoint %nyx_string* %99 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %96, i64 %100, i64 2)
  %101 = call { i64, i8* }* @make_astnode(%nyx_string* %95, { i64, i8* }* %96)
  ret { i64, i8* }* %101
}

define internal %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = getelementptr [11 x i8], [11 x i8]* @.str661, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str661.c, i8* %30, i64 10)
  %32 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %31)
  br i1 %32, label %then0, label %else1
then0:
  %33 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %34 = getelementptr [2 x i8], [2 x i8]* @.str662, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str662.c, i8* %34, i64 1)
  %36 = alloca %nyx_string*
  store %nyx_string* %35, %nyx_string** %36
  %37 = load %nyx_string*, %nyx_string** %36
  %38 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %39 = call %nyx_string* @nyx_string_concat(%nyx_string* %37, %nyx_string* %38)
  store %nyx_string* %39, %nyx_string** %36
  %40 = call i8* @llvm.stacksave()
  br label %while_cond3
while_cond3:
  %41 = getelementptr [6 x i8], [6 x i8]* @.str663, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str663.c, i8* %41, i64 5)
  %43 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %42)
  br i1 %43, label %while_body4, label %while_end5
while_body4:
  call void @llvm.stackrestore(i8* %40)
  %44 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %45 = load %nyx_string*, %nyx_string** %36
  %46 = getelementptr [2 x i8], [2 x i8]* @.str664, i32 0, i32 0
  %47 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str664.c, i8* %46, i64 1)
  %48 = call %nyx_string* @nyx_string_concat(%nyx_string* %45, %nyx_string* %47)
  %49 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %50 = call %nyx_string* @nyx_string_concat(%nyx_string* %48, %nyx_string* %49)
  store %nyx_string* %50, %nyx_string** %36
  br label %while_cond3
while_end5:
  %51 = getelementptr [12 x i8], [12 x i8]* @.str665, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str665.c, i8* %51, i64 11)
  %53 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %52)
  %54 = load %nyx_string*, %nyx_string** %36
  %55 = getelementptr [2 x i8], [2 x i8]* @.str666, i32 0, i32 0
  %56 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str666.c, i8* %55, i64 1)
  %57 = call %nyx_string* @nyx_string_concat(%nyx_string* %54, %nyx_string* %56)
  store %nyx_string* %57, %nyx_string** %36
  %58 = load %nyx_string*, %nyx_string** %36
  ret %nyx_string* %58
else1:
  br label %merge2
merge2:
  %59 = getelementptr [3 x i8], [3 x i8]* @.str667, i32 0, i32 0
  %60 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str667.c, i8* %59, i64 2)
  %61 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %60)
  br i1 %61, label %then6, label %else7
then6:
  %62 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %63 = getelementptr [3 x i8], [3 x i8]* @.str668, i32 0, i32 0
  %64 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str668.c, i8* %63, i64 2)
  ret %nyx_string* %64
else7:
  br label %merge8
merge8:
  %65 = getelementptr [5 x i8], [5 x i8]* @.str669, i32 0, i32 0
  %66 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str669.c, i8* %65, i64 4)
  %67 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %66)
  br i1 %67, label %then9, label %else10
then9:
  %68 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %69 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %70 = alloca %nyx_string*
  store %nyx_string* %69, %nyx_string** %70
  %71 = getelementptr [2 x i8], [2 x i8]* @.str670, i32 0, i32 0
  %72 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str670.c, i8* %71, i64 1)
  %73 = load %nyx_string*, %nyx_string** %70
  %74 = call %nyx_string* @nyx_string_concat(%nyx_string* %72, %nyx_string* %73)
  ret %nyx_string* %74
else10:
  br label %merge11
merge11:
  %75 = getelementptr [4 x i8], [4 x i8]* @.str671, i32 0, i32 0
  %76 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str671.c, i8* %75, i64 3)
  %77 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %76)
  br i1 %77, label %then12, label %else13
then12:
  %78 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %79 = getelementptr [9 x i8], [9 x i8]* @.str672, i32 0, i32 0
  %80 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str672.c, i8* %79, i64 8)
  %81 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %80)
  br i1 %81, label %then15, label %else16
then15:
  %82 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %83 = alloca %Token
  store %Token %82, %Token* %83
  %84 = load %Token, %Token* %83
  %85 = call %nyx_string* @get_token_value(%Token %84)
  %86 = alloca %nyx_string*
  store %nyx_string* %85, %nyx_string** %86
  %87 = load %nyx_string*, %nyx_string** %86
  %88 = call i64 @nyx_string_byte_length(%nyx_string* %87)
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %then18, label %else19
then18:
  %90 = load %nyx_string*, %nyx_string** %86
  %91 = call i8 @nyx_string_char_at(%nyx_string* %90, i64 0)
  %92 = zext i8 %91 to i64
  %93 = getelementptr [1 x i8], [1 x i8]* @.str673, i32 0, i32 0
  %94 = load i8, i8* %93
  %95 = zext i8 %94 to i64
  %96 = icmp eq i64 %92, %95
  br i1 %96, label %then21, label %else22
then21:
  %97 = load %nyx_string*, %nyx_string** %86
  %98 = load %nyx_string*, %nyx_string** %86
  %99 = call i64 @nyx_string_byte_length(%nyx_string* %98)
  %100 = call %nyx_string* @nyx_string_substring(%nyx_string* %97, i64 1, i64 %99)
  store %nyx_string* %100, %nyx_string** %86
  br label %merge23
else22:
  br label %merge23
merge23:
  br label %merge20
else19:
  br label %merge20
merge20:
  %101 = load { i64, i8* }*, { i64, i8* }** %18
  %102 = load %nyx_string*, %nyx_string** %86
  %103 = ptrtoint %nyx_string* %102 to i64
  call void @nyx_array_set_tagged({ i64, i8* }* %101, i64 0, i64 %103, i64 2)
  br label %merge17
else16:
  br label %merge17
merge17:
  %104 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %105 = alloca %Token
  store %Token %104, %Token* %105
  %106 = load %Token, %Token* %105
  %107 = call %nyx_string* @get_token_value(%Token %106)
  %108 = alloca %nyx_string*
  store %nyx_string* %107, %nyx_string** %108
  %109 = alloca i1
  store i1 0, i1* %109
  %110 = load %nyx_string*, %nyx_string** %108
  %111 = getelementptr [4 x i8], [4 x i8]* @.str674, i32 0, i32 0
  %112 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str674.c, i8* %111, i64 3)
  %113 = call i1 @nyx_string_equals(%nyx_string* %110, %nyx_string* %112)
  br i1 %113, label %then24, label %else25
then24:
  %114 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %109
  br label %merge26
else25:
  br label %merge26
merge26:
  %115 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %116 = alloca %nyx_string*
  store %nyx_string* %115, %nyx_string** %116
  %117 = load i1, i1* %109
  br i1 %117, label %then27, label %else28
then27:
  %118 = getelementptr [6 x i8], [6 x i8]* @.str675, i32 0, i32 0
  %119 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str675.c, i8* %118, i64 5)
  %120 = load %nyx_string*, %nyx_string** %116
  %121 = call %nyx_string* @nyx_string_concat(%nyx_string* %119, %nyx_string* %120)
  ret %nyx_string* %121
else28:
  br label %merge29
merge29:
  %122 = getelementptr [2 x i8], [2 x i8]* @.str676, i32 0, i32 0
  %123 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str676.c, i8* %122, i64 1)
  %124 = load %nyx_string*, %nyx_string** %116
  %125 = call %nyx_string* @nyx_string_concat(%nyx_string* %123, %nyx_string* %124)
  ret %nyx_string* %125
else13:
  br label %merge14
merge14:
  %126 = getelementptr [9 x i8], [9 x i8]* @.str677, i32 0, i32 0
  %127 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str677.c, i8* %126, i64 8)
  %128 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %127)
  br i1 %128, label %then30, label %else31
then30:
  %129 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %130 = alloca %Token
  store %Token %129, %Token* %130
  %131 = load %Token, %Token* %130
  %132 = call %nyx_string* @get_token_value(%Token %131)
  ret %nyx_string* %132
else31:
  br label %merge32
merge32:
  %133 = getelementptr [13 x i8], [13 x i8]* @.str678, i32 0, i32 0
  %134 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str678.c, i8* %133, i64 12)
  %135 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %134)
  br i1 %135, label %then33, label %else34
then33:
  %136 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %137 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %138 = alloca %nyx_string*
  store %nyx_string* %137, %nyx_string** %138
  %139 = getelementptr [6 x i8], [6 x i8]* @.str679, i32 0, i32 0
  %140 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str679.c, i8* %139, i64 5)
  %141 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %140)
  %142 = getelementptr [7 x i8], [7 x i8]* @.str680, i32 0, i32 0
  %143 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str680.c, i8* %142, i64 6)
  %144 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %143)
  %145 = alloca %Token
  store %Token %144, %Token* %145
  %146 = load %Token, %Token* %145
  %147 = call %nyx_string* @get_token_value(%Token %146)
  %148 = alloca %nyx_string*
  store %nyx_string* %147, %nyx_string** %148
  %149 = getelementptr [14 x i8], [14 x i8]* @.str681, i32 0, i32 0
  %150 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str681.c, i8* %149, i64 13)
  %151 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %150)
  %152 = getelementptr [2 x i8], [2 x i8]* @.str682, i32 0, i32 0
  %153 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str682.c, i8* %152, i64 1)
  %154 = load %nyx_string*, %nyx_string** %138
  %155 = call %nyx_string* @nyx_string_concat(%nyx_string* %153, %nyx_string* %154)
  %156 = getelementptr [2 x i8], [2 x i8]* @.str683, i32 0, i32 0
  %157 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str683.c, i8* %156, i64 1)
  %158 = call %nyx_string* @nyx_string_concat(%nyx_string* %155, %nyx_string* %157)
  %159 = load %nyx_string*, %nyx_string** %148
  %160 = call %nyx_string* @nyx_string_concat(%nyx_string* %158, %nyx_string* %159)
  %161 = getelementptr [2 x i8], [2 x i8]* @.str684, i32 0, i32 0
  %162 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str684.c, i8* %161, i64 1)
  %163 = call %nyx_string* @nyx_string_concat(%nyx_string* %160, %nyx_string* %162)
  ret %nyx_string* %163
else34:
  br label %merge35
merge35:
  %164 = getelementptr [4 x i8], [4 x i8]* @.str685, i32 0, i32 0
  %165 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str685.c, i8* %164, i64 3)
  %166 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %165)
  br i1 %166, label %then36, label %else37
then36:
  %167 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %168 = getelementptr [11 x i8], [11 x i8]* @.str686, i32 0, i32 0
  %169 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str686.c, i8* %168, i64 10)
  %170 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %169)
  %171 = alloca %Token
  store %Token %170, %Token* %171
  %172 = load %Token, %Token* %171
  %173 = call %nyx_string* @get_token_value(%Token %172)
  %174 = alloca %nyx_string*
  store %nyx_string* %173, %nyx_string** %174
  %175 = getelementptr [5 x i8], [5 x i8]* @.str687, i32 0, i32 0
  %176 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str687.c, i8* %175, i64 4)
  %177 = load %nyx_string*, %nyx_string** %174
  %178 = call %nyx_string* @nyx_string_concat(%nyx_string* %176, %nyx_string* %177)
  ret %nyx_string* %178
else37:
  br label %merge38
merge38:
  %179 = getelementptr [5 x i8], [5 x i8]* @.str688, i32 0, i32 0
  %180 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str688.c, i8* %179, i64 4)
  %181 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %180)
  br i1 %181, label %then39, label %else40
then39:
  %182 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %183 = getelementptr [11 x i8], [11 x i8]* @.str689, i32 0, i32 0
  %184 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str689.c, i8* %183, i64 10)
  %185 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %184)
  %186 = alloca %Token
  store %Token %185, %Token* %186
  %187 = load %Token, %Token* %186
  %188 = call %nyx_string* @get_token_value(%Token %187)
  %189 = alloca %nyx_string*
  store %nyx_string* %188, %nyx_string** %189
  %190 = call i8* @llvm.stacksave()
  br label %while_cond42
while_cond42:
  %191 = getelementptr [5 x i8], [5 x i8]* @.str690, i32 0, i32 0
  %192 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str690.c, i8* %191, i64 4)
  %193 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %192)
  br i1 %193, label %while_body43, label %while_end44
while_body43:
  call void @llvm.stackrestore(i8* %190)
  %194 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %195 = getelementptr [11 x i8], [11 x i8]* @.str691, i32 0, i32 0
  %196 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str691.c, i8* %195, i64 10)
  %197 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %196)
  %198 = alloca %Token
  store %Token %197, %Token* %198
  %199 = load %nyx_string*, %nyx_string** %189
  %200 = getelementptr [2 x i8], [2 x i8]* @.str692, i32 0, i32 0
  %201 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str692.c, i8* %200, i64 1)
  %202 = call %nyx_string* @nyx_string_concat(%nyx_string* %199, %nyx_string* %201)
  %203 = load %Token, %Token* %198
  %204 = call %nyx_string* @get_token_value(%Token %203)
  %205 = call %nyx_string* @nyx_string_concat(%nyx_string* %202, %nyx_string* %204)
  store %nyx_string* %205, %nyx_string** %189
  br label %while_cond42
while_end44:
  %206 = getelementptr [5 x i8], [5 x i8]* @.str693, i32 0, i32 0
  %207 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str693.c, i8* %206, i64 4)
  %208 = load %nyx_string*, %nyx_string** %189
  %209 = call %nyx_string* @nyx_string_concat(%nyx_string* %207, %nyx_string* %208)
  ret %nyx_string* %209
else40:
  br label %merge41
merge41:
  %210 = getelementptr [11 x i8], [11 x i8]* @.str694, i32 0, i32 0
  %211 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str694.c, i8* %210, i64 10)
  %212 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %211)
  %213 = alloca %Token
  store %Token %212, %Token* %213
  %214 = load %Token, %Token* %213
  %215 = call %nyx_string* @get_token_value(%Token %214)
  %216 = alloca %nyx_string*
  store %nyx_string* %215, %nyx_string** %216
  %217 = alloca i1
  store i1 false, i1* %217
  %218 = load %nyx_string*, %nyx_string** %216
  %219 = getelementptr [5 x i8], [5 x i8]* @.str695, i32 0, i32 0
  %220 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str695.c, i8* %219, i64 4)
  %221 = call i1 @nyx_string_equals(%nyx_string* %218, %nyx_string* %220)
  br i1 %221, label %sc_and_rhs45, label %sc_and_end46
sc_and_rhs45:
  %222 = getelementptr [4 x i8], [4 x i8]* @.str696, i32 0, i32 0
  %223 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str696.c, i8* %222, i64 3)
  %224 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %223)
  store i1 %224, i1* %217
  br label %sc_and_end46
sc_and_end46:
  %225 = load i1, i1* %217
  br i1 %225, label %then47, label %else48
then47:
  %226 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %227 = getelementptr [11 x i8], [11 x i8]* @.str697, i32 0, i32 0
  %228 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str697.c, i8* %227, i64 10)
  %229 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %228)
  %230 = alloca %Token
  store %Token %229, %Token* %230
  %231 = getelementptr [6 x i8], [6 x i8]* @.str698, i32 0, i32 0
  %232 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str698.c, i8* %231, i64 5)
  %233 = load %Token, %Token* %230
  %234 = call %nyx_string* @get_token_value(%Token %233)
  %235 = call %nyx_string* @nyx_string_concat(%nyx_string* %232, %nyx_string* %234)
  store %nyx_string* %235, %nyx_string** %216
  %236 = load %nyx_string*, %nyx_string** %216
  ret %nyx_string* %236
else48:
  br label %merge49
merge49:
  %237 = alloca i1
  store i1 false, i1* %237
  %238 = load %nyx_string*, %nyx_string** %216
  %239 = getelementptr [3 x i8], [3 x i8]* @.str699, i32 0, i32 0
  %240 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str699.c, i8* %239, i64 2)
  %241 = call i1 @nyx_string_equals(%nyx_string* %238, %nyx_string* %240)
  br i1 %241, label %sc_and_rhs50, label %sc_and_end51
sc_and_rhs50:
  %242 = getelementptr [11 x i8], [11 x i8]* @.str700, i32 0, i32 0
  %243 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str700.c, i8* %242, i64 10)
  %244 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %243)
  store i1 %244, i1* %237
  br label %sc_and_end51
sc_and_end51:
  %245 = load i1, i1* %237
  br i1 %245, label %then52, label %else53
then52:
  %246 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %247 = getelementptr [4 x i8], [4 x i8]* @.str701, i32 0, i32 0
  %248 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str701.c, i8* %247, i64 3)
  %249 = alloca %nyx_string*
  store %nyx_string* %248, %nyx_string** %249
  %250 = getelementptr [12 x i8], [12 x i8]* @.str702, i32 0, i32 0
  %251 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str702.c, i8* %250, i64 11)
  %252 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %251)
  %253 = xor i1 %252, true
  br i1 %253, label %then55, label %else56
then55:
  %254 = load %nyx_string*, %nyx_string** %249
  %255 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %256 = call %nyx_string* @nyx_string_concat(%nyx_string* %254, %nyx_string* %255)
  store %nyx_string* %256, %nyx_string** %249
  %257 = alloca i1
  store i1 0, i1* %257
  %258 = call i8* @llvm.stacksave()
  br label %while_cond58
while_cond58:
  %259 = load i1, i1* %257
  %260 = xor i1 %259, true
  br i1 %260, label %while_body59, label %while_end60
while_body59:
  call void @llvm.stackrestore(i8* %258)
  %261 = getelementptr [6 x i8], [6 x i8]* @.str703, i32 0, i32 0
  %262 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str703.c, i8* %261, i64 5)
  %263 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %262)
  br i1 %263, label %then61, label %else62
then61:
  %264 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %265 = load %nyx_string*, %nyx_string** %249
  %266 = getelementptr [2 x i8], [2 x i8]* @.str704, i32 0, i32 0
  %267 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str704.c, i8* %266, i64 1)
  %268 = call %nyx_string* @nyx_string_concat(%nyx_string* %265, %nyx_string* %267)
  %269 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %270 = call %nyx_string* @nyx_string_concat(%nyx_string* %268, %nyx_string* %269)
  store %nyx_string* %270, %nyx_string** %249
  br label %merge63
else62:
  store i1 1, i1* %257
  br label %merge63
merge63:
  br label %while_cond58
while_end60:
  br label %merge57
else56:
  br label %merge57
merge57:
  %271 = getelementptr [12 x i8], [12 x i8]* @.str705, i32 0, i32 0
  %272 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str705.c, i8* %271, i64 11)
  %273 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %272)
  %274 = load %nyx_string*, %nyx_string** %249
  %275 = getelementptr [2 x i8], [2 x i8]* @.str706, i32 0, i32 0
  %276 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str706.c, i8* %275, i64 1)
  %277 = call %nyx_string* @nyx_string_concat(%nyx_string* %274, %nyx_string* %276)
  store %nyx_string* %277, %nyx_string** %249
  %278 = getelementptr [6 x i8], [6 x i8]* @.str707, i32 0, i32 0
  %279 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str707.c, i8* %278, i64 5)
  %280 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %279)
  br i1 %280, label %then64, label %else65
then64:
  %281 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %282 = load %nyx_string*, %nyx_string** %249
  %283 = getelementptr [3 x i8], [3 x i8]* @.str708, i32 0, i32 0
  %284 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str708.c, i8* %283, i64 2)
  %285 = call %nyx_string* @nyx_string_concat(%nyx_string* %282, %nyx_string* %284)
  %286 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %287 = call %nyx_string* @nyx_string_concat(%nyx_string* %285, %nyx_string* %286)
  store %nyx_string* %287, %nyx_string** %249
  br label %merge66
else65:
  br label %merge66
merge66:
  %288 = load %nyx_string*, %nyx_string** %249
  ret %nyx_string* %288
else53:
  br label %merge54
merge54:
  %289 = getelementptr [5 x i8], [5 x i8]* @.str709, i32 0, i32 0
  %290 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str709.c, i8* %289, i64 4)
  %291 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %290)
  br i1 %291, label %then67, label %else68
then67:
  %292 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %293 = load %nyx_string*, %nyx_string** %216
  %294 = getelementptr [2 x i8], [2 x i8]* @.str710, i32 0, i32 0
  %295 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str710.c, i8* %294, i64 1)
  %296 = call %nyx_string* @nyx_string_concat(%nyx_string* %293, %nyx_string* %295)
  store %nyx_string* %296, %nyx_string** %216
  %297 = load %nyx_string*, %nyx_string** %216
  %298 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %299 = call %nyx_string* @nyx_string_concat(%nyx_string* %297, %nyx_string* %298)
  store %nyx_string* %299, %nyx_string** %216
  %300 = alloca i1
  store i1 0, i1* %300
  %301 = call i8* @llvm.stacksave()
  br label %while_cond70
while_cond70:
  %302 = load i1, i1* %300
  %303 = xor i1 %302, true
  br i1 %303, label %while_body71, label %while_end72
while_body71:
  call void @llvm.stackrestore(i8* %301)
  %304 = getelementptr [6 x i8], [6 x i8]* @.str711, i32 0, i32 0
  %305 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str711.c, i8* %304, i64 5)
  %306 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %305)
  br i1 %306, label %then73, label %else74
then73:
  %307 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %308 = load %nyx_string*, %nyx_string** %216
  %309 = getelementptr [2 x i8], [2 x i8]* @.str712, i32 0, i32 0
  %310 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str712.c, i8* %309, i64 1)
  %311 = call %nyx_string* @nyx_string_concat(%nyx_string* %308, %nyx_string* %310)
  store %nyx_string* %311, %nyx_string** %216
  %312 = load %nyx_string*, %nyx_string** %216
  %313 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %314 = call %nyx_string* @nyx_string_concat(%nyx_string* %312, %nyx_string* %313)
  store %nyx_string* %314, %nyx_string** %216
  br label %merge75
else74:
  store i1 1, i1* %300
  br label %merge75
merge75:
  br label %while_cond70
while_end72:
  %315 = load i64, i64* %5
  %316 = icmp sgt i64 %315, 0
  br i1 %316, label %then76, label %else77
then76:
  %317 = load i64, i64* %5
  %318 = sub i64 %317, 1
  store i64 %318, i64* %5
  br label %merge78
else77:
  %319 = getelementptr [8 x i8], [8 x i8]* @.str713, i32 0, i32 0
  %320 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str713.c, i8* %319, i64 7)
  %321 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %320)
  br i1 %321, label %then79, label %else80
then79:
  %322 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge81
else80:
  %323 = getelementptr [12 x i8], [12 x i8]* @.str714, i32 0, i32 0
  %324 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str714.c, i8* %323, i64 11)
  %325 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %324)
  br i1 %325, label %then82, label %else83
then82:
  %326 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %327 = load i64, i64* %5
  %328 = add i64 %327, 1
  store i64 %328, i64* %5
  br label %merge84
else83:
  %329 = getelementptr [8 x i8], [8 x i8]* @.str715, i32 0, i32 0
  %330 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str715.c, i8* %329, i64 7)
  %331 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %330)
  br label %merge84
merge84:
  br label %merge81
merge81:
  br label %merge78
merge78:
  %332 = load %nyx_string*, %nyx_string** %216
  %333 = getelementptr [2 x i8], [2 x i8]* @.str716, i32 0, i32 0
  %334 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str716.c, i8* %333, i64 1)
  %335 = call %nyx_string* @nyx_string_concat(%nyx_string* %332, %nyx_string* %334)
  store %nyx_string* %335, %nyx_string** %216
  br label %merge69
else68:
  br label %merge69
merge69:
  %336 = load %nyx_string*, %nyx_string** %216
  ret %nyx_string* %336
}

define internal { i64, i8* }* @parse__parse_let(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = getelementptr [4 x i8], [4 x i8]* @.str717, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str717.c, i8* %30, i64 3)
  %32 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %31)
  %33 = alloca i1
  store i1 %32, i1* %33
  %34 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %35 = getelementptr [11 x i8], [11 x i8]* @.str718, i32 0, i32 0
  %36 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str718.c, i8* %35, i64 10)
  %37 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %36)
  br i1 %37, label %then0, label %else1
then0:
  %38 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %39 = call { i64, i8* }* @nyx_array_new_ptr()
  %40 = alloca { i64, i8* }*
  store { i64, i8* }* %39, { i64, i8* }** %40
  %41 = getelementptr [11 x i8], [11 x i8]* @.str719, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str719.c, i8* %41, i64 10)
  %43 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %42)
  %44 = alloca %Token
  store %Token %43, %Token* %44
  %45 = load { i64, i8* }*, { i64, i8* }** %40
  %46 = load %Token, %Token* %44
  %47 = call %nyx_string* @get_token_value(%Token %46)
  %48 = ptrtoint %nyx_string* %47 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %45, i64 %48, i64 2)
  %49 = call i8* @llvm.stacksave()
  br label %while_cond3
while_cond3:
  %50 = getelementptr [6 x i8], [6 x i8]* @.str720, i32 0, i32 0
  %51 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str720.c, i8* %50, i64 5)
  %52 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %51)
  br i1 %52, label %while_body4, label %while_end5
while_body4:
  call void @llvm.stackrestore(i8* %49)
  %53 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %54 = getelementptr [11 x i8], [11 x i8]* @.str721, i32 0, i32 0
  %55 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str721.c, i8* %54, i64 10)
  %56 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %55)
  %57 = alloca %Token
  store %Token %56, %Token* %57
  %58 = load { i64, i8* }*, { i64, i8* }** %40
  %59 = load %Token, %Token* %57
  %60 = call %nyx_string* @get_token_value(%Token %59)
  %61 = ptrtoint %nyx_string* %60 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %58, i64 %61, i64 2)
  br label %while_cond3
while_end5:
  %62 = getelementptr [12 x i8], [12 x i8]* @.str722, i32 0, i32 0
  %63 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str722.c, i8* %62, i64 11)
  %64 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %63)
  %65 = getelementptr [7 x i8], [7 x i8]* @.str723, i32 0, i32 0
  %66 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str723.c, i8* %65, i64 6)
  %67 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %66)
  %68 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %69 = alloca { i64, i8* }*
  store { i64, i8* }* %68, { i64, i8* }** %69
  %70 = getelementptr [22 x i8], [22 x i8]* @.str724, i32 0, i32 0
  %71 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str724.c, i8* %70, i64 21)
  %72 = call { i64, i8* }* @nyx_array_new_ptr()
  %73 = load { i64, i8* }*, { i64, i8* }** %40
  %74 = ptrtoint { i64, i8* }* %73 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %72, i64 %74, i64 5)
  %75 = load i1, i1* %33
  %76 = zext i1 %75 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %72, i64 %76, i64 4)
  %77 = load { i64, i8* }*, { i64, i8* }** %69
  %78 = ptrtoint { i64, i8* }* %77 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %72, i64 %78, i64 5)
  %79 = call { i64, i8* }* @make_astnode(%nyx_string* %71, { i64, i8* }* %72)
  ret { i64, i8* }* %79
else1:
  br label %merge2
merge2:
  %80 = getelementptr [11 x i8], [11 x i8]* @.str725, i32 0, i32 0
  %81 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str725.c, i8* %80, i64 10)
  %82 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %81)
  %83 = alloca %Token
  store %Token %82, %Token* %83
  %84 = load %Token, %Token* %83
  %85 = call %nyx_string* @get_token_value(%Token %84)
  %86 = alloca %nyx_string*
  store %nyx_string* %85, %nyx_string** %86
  %87 = load %nyx_string*, %nyx_string** %86
  %88 = call { i64, i8* }* @nyx_array_new_ptr()
  %89 = call { i64, i8* }* @make_astnode(%nyx_string* %87, { i64, i8* }* %88)
  %90 = alloca { i64, i8* }*
  store { i64, i8* }* %89, { i64, i8* }** %90
  %91 = getelementptr [1 x i8], [1 x i8]* @.str726, i32 0, i32 0
  %92 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str726.c, i8* %91, i64 0)
  %93 = alloca %nyx_string*
  store %nyx_string* %92, %nyx_string** %93
  %94 = getelementptr [6 x i8], [6 x i8]* @.str727, i32 0, i32 0
  %95 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str727.c, i8* %94, i64 5)
  %96 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %95)
  br i1 %96, label %then6, label %else7
then6:
  %97 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %98 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %98, %nyx_string** %93
  br label %merge8
else7:
  br label %merge8
merge8:
  %99 = getelementptr [7 x i8], [7 x i8]* @.str728, i32 0, i32 0
  %100 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str728.c, i8* %99, i64 6)
  %101 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %100)
  %102 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %103 = alloca { i64, i8* }*
  store { i64, i8* }* %102, { i64, i8* }** %103
  %104 = getelementptr [4 x i8], [4 x i8]* @.str729, i32 0, i32 0
  %105 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str729.c, i8* %104, i64 3)
  %106 = call { i64, i8* }* @nyx_array_new_ptr()
  %107 = load { i64, i8* }*, { i64, i8* }** %90
  %108 = ptrtoint { i64, i8* }* %107 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %106, i64 %108, i64 5)
  %109 = load i1, i1* %33
  %110 = zext i1 %109 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %106, i64 %110, i64 4)
  %111 = load { i64, i8* }*, { i64, i8* }** %103
  %112 = ptrtoint { i64, i8* }* %111 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %106, i64 %112, i64 5)
  %113 = load %nyx_string*, %nyx_string** %93
  %114 = ptrtoint %nyx_string* %113 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %106, i64 %114, i64 2)
  %115 = call { i64, i8* }* @make_astnode(%nyx_string* %105, { i64, i8* }* %106)
  ret { i64, i8* }* %115
}

define internal { i64, i8* }* @parse__parse_const(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = getelementptr [6 x i8], [6 x i8]* @.str730, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str730.c, i8* %30, i64 5)
  %32 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %31)
  %33 = getelementptr [11 x i8], [11 x i8]* @.str731, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str731.c, i8* %33, i64 10)
  %35 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %34)
  %36 = alloca %Token
  store %Token %35, %Token* %36
  %37 = getelementptr [1 x i8], [1 x i8]* @.str732, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str732.c, i8* %37, i64 0)
  %39 = alloca %nyx_string*
  store %nyx_string* %38, %nyx_string** %39
  %40 = getelementptr [6 x i8], [6 x i8]* @.str733, i32 0, i32 0
  %41 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str733.c, i8* %40, i64 5)
  %42 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %41)
  br i1 %42, label %then0, label %else1
then0:
  %43 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %44 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %44, %nyx_string** %39
  br label %merge2
else1:
  br label %merge2
merge2:
  %45 = getelementptr [7 x i8], [7 x i8]* @.str734, i32 0, i32 0
  %46 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str734.c, i8* %45, i64 6)
  %47 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %46)
  %48 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %49 = alloca { i64, i8* }*
  store { i64, i8* }* %48, { i64, i8* }** %49
  %50 = getelementptr [6 x i8], [6 x i8]* @.str735, i32 0, i32 0
  %51 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str735.c, i8* %50, i64 5)
  %52 = call { i64, i8* }* @nyx_array_new_ptr()
  %53 = load %Token, %Token* %36
  %54 = call %nyx_string* @get_token_value(%Token %53)
  %55 = ptrtoint %nyx_string* %54 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %52, i64 %55, i64 2)
  %56 = load { i64, i8* }*, { i64, i8* }** %49
  %57 = ptrtoint { i64, i8* }* %56 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %52, i64 %57, i64 5)
  %58 = load %nyx_string*, %nyx_string** %39
  %59 = ptrtoint %nyx_string* %58 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %52, i64 %59, i64 2)
  %60 = call { i64, i8* }* @make_astnode(%nyx_string* %51, { i64, i8* }* %52)
  ret { i64, i8* }* %60
}

define internal { i64, i8* }* @parse__parse_async_function(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = getelementptr [3 x i8], [3 x i8]* @.str736, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str736.c, i8* %30, i64 2)
  %32 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %31)
  %33 = alloca %Token
  store %Token %32, %Token* %33
  %34 = load %Token, %Token* %33
  %35 = call i64 @get_token_line(%Token %34)
  %36 = alloca i64
  store i64 %35, i64* %36
  %37 = getelementptr [11 x i8], [11 x i8]* @.str737, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str737.c, i8* %37, i64 10)
  %39 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %38)
  %40 = alloca %Token
  store %Token %39, %Token* %40
  %41 = load %Token, %Token* %40
  %42 = call %nyx_string* @get_token_value(%Token %41)
  %43 = alloca %nyx_string*
  store %nyx_string* %42, %nyx_string** %43
  %44 = getelementptr [11 x i8], [11 x i8]* @.str738, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str738.c, i8* %44, i64 10)
  %46 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %45)
  %47 = call { i64, i8* }* @nyx_array_new_ptr()
  %48 = alloca { i64, i8* }*
  store { i64, i8* }* %47, { i64, i8* }** %48
  %49 = alloca i1
  store i1 0, i1* %49
  %50 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %51 = load i1, i1* %49
  %52 = xor i1 %51, true
  br i1 %52, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %50)
  %53 = getelementptr [12 x i8], [12 x i8]* @.str739, i32 0, i32 0
  %54 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str739.c, i8* %53, i64 11)
  %55 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %54)
  br i1 %55, label %then3, label %else4
then3:
  %56 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %49
  br label %merge5
else4:
  %57 = load { i64, i8* }*, { i64, i8* }** %48
  %58 = call i64 @nyx_array_length({ i64, i8* }* %57)
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %then6, label %else7
then6:
  %60 = getelementptr [6 x i8], [6 x i8]* @.str740, i32 0, i32 0
  %61 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str740.c, i8* %60, i64 5)
  %62 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %61)
  br label %merge8
else7:
  br label %merge8
merge8:
  %63 = getelementptr [11 x i8], [11 x i8]* @.str741, i32 0, i32 0
  %64 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str741.c, i8* %63, i64 10)
  %65 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %64)
  %66 = alloca %Token
  store %Token %65, %Token* %66
  %67 = getelementptr [1 x i8], [1 x i8]* @.str742, i32 0, i32 0
  %68 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str742.c, i8* %67, i64 0)
  %69 = alloca %nyx_string*
  store %nyx_string* %68, %nyx_string** %69
  %70 = getelementptr [6 x i8], [6 x i8]* @.str743, i32 0, i32 0
  %71 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str743.c, i8* %70, i64 5)
  %72 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %71)
  br i1 %72, label %then9, label %else10
then9:
  %73 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %74 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %74, %nyx_string** %69
  br label %merge11
else10:
  br label %merge11
merge11:
  %75 = load { i64, i8* }*, { i64, i8* }** %48
  %76 = call { i64, i8* }* @nyx_array_new_ptr()
  %77 = load %Token, %Token* %66
  %78 = call %nyx_string* @get_token_value(%Token %77)
  %79 = ptrtoint %nyx_string* %78 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %76, i64 %79, i64 2)
  %80 = load %nyx_string*, %nyx_string** %69
  %81 = ptrtoint %nyx_string* %80 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %76, i64 %81, i64 2)
  %82 = ptrtoint { i64, i8* }* %76 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %75, i64 %82, i64 5)
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %83 = getelementptr [1 x i8], [1 x i8]* @.str744, i32 0, i32 0
  %84 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str744.c, i8* %83, i64 0)
  %85 = alloca %nyx_string*
  store %nyx_string* %84, %nyx_string** %85
  %86 = getelementptr [6 x i8], [6 x i8]* @.str745, i32 0, i32 0
  %87 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str745.c, i8* %86, i64 5)
  %88 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %87)
  br i1 %88, label %then12, label %else13
then12:
  %89 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %90 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %90, %nyx_string** %85
  br label %merge14
else13:
  br label %merge14
merge14:
  %91 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %92 = alloca { i64, i8* }*
  store { i64, i8* }* %91, { i64, i8* }** %92
  %93 = getelementptr [9 x i8], [9 x i8]* @.str746, i32 0, i32 0
  %94 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str746.c, i8* %93, i64 8)
  %95 = call { i64, i8* }* @nyx_array_new_ptr()
  %96 = load %nyx_string*, %nyx_string** %43
  %97 = ptrtoint %nyx_string* %96 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %95, i64 %97, i64 2)
  %98 = load { i64, i8* }*, { i64, i8* }** %48
  %99 = ptrtoint { i64, i8* }* %98 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %95, i64 %99, i64 5)
  %100 = load %nyx_string*, %nyx_string** %85
  %101 = ptrtoint %nyx_string* %100 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %95, i64 %101, i64 2)
  %102 = load { i64, i8* }*, { i64, i8* }** %92
  %103 = ptrtoint { i64, i8* }* %102 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %95, i64 %103, i64 5)
  %104 = call { i64, i8* }* @nyx_array_new_ptr()
  %105 = ptrtoint { i64, i8* }* %104 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %95, i64 %105, i64 5)
  %106 = getelementptr [1 x i8], [1 x i8]* @.str747, i32 0, i32 0
  %107 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str747.c, i8* %106, i64 0)
  %108 = ptrtoint %nyx_string* %107 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %95, i64 %108, i64 2)
  %109 = call { i64, i8* }* @nyx_array_new_ptr()
  %110 = getelementptr [13 x i8], [13 x i8]* @.str748, i32 0, i32 0
  %111 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str748.c, i8* %110, i64 12)
  %112 = ptrtoint %nyx_string* %111 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %109, i64 %112, i64 2)
  %113 = load i64, i64* %36
  call void @nyx_array_push_tagged({ i64, i8* }* %109, i64 %113, i64 1)
  %114 = ptrtoint { i64, i8* }* %109 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %95, i64 %114, i64 5)
  %115 = call { i64, i8* }* @make_astnode(%nyx_string* %94, { i64, i8* }* %95)
  ret { i64, i8* }* %115
}

define internal { i64, i8* }* @parse__parse_function(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = getelementptr [3 x i8], [3 x i8]* @.str749, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str749.c, i8* %30, i64 2)
  %32 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %31)
  %33 = alloca %Token
  store %Token %32, %Token* %33
  %34 = load %Token, %Token* %33
  %35 = call i64 @get_token_line(%Token %34)
  %36 = alloca i64
  store i64 %35, i64* %36
  %37 = getelementptr [11 x i8], [11 x i8]* @.str750, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str750.c, i8* %37, i64 10)
  %39 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %38)
  %40 = alloca %Token
  store %Token %39, %Token* %40
  %41 = call { i64, i8* }* @nyx_array_new_ptr()
  %42 = alloca { i64, i8* }*
  store { i64, i8* }* %41, { i64, i8* }** %42
  %43 = getelementptr [5 x i8], [5 x i8]* @.str751, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str751.c, i8* %43, i64 4)
  %45 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %44)
  br i1 %45, label %then0, label %else1
then0:
  %46 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %47 = getelementptr [9 x i8], [9 x i8]* @.str752, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str752.c, i8* %47, i64 8)
  %49 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %48)
  br i1 %49, label %then3, label %else4
then3:
  %50 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %51 = alloca %Token
  store %Token %50, %Token* %51
  %52 = load { i64, i8* }*, { i64, i8* }** %42
  %53 = load %Token, %Token* %51
  %54 = call %nyx_string* @get_token_value(%Token %53)
  %55 = ptrtoint %nyx_string* %54 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %52, i64 %55, i64 2)
  br label %merge5
else4:
  %56 = getelementptr [11 x i8], [11 x i8]* @.str753, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str753.c, i8* %56, i64 10)
  %58 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %57)
  %59 = alloca %Token
  store %Token %58, %Token* %59
  %60 = load %Token, %Token* %59
  %61 = call %nyx_string* @get_token_value(%Token %60)
  %62 = alloca %nyx_string*
  store %nyx_string* %61, %nyx_string** %62
  %63 = getelementptr [6 x i8], [6 x i8]* @.str754, i32 0, i32 0
  %64 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str754.c, i8* %63, i64 5)
  %65 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %64)
  br i1 %65, label %then6, label %else7
then6:
  %66 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %67 = getelementptr [11 x i8], [11 x i8]* @.str755, i32 0, i32 0
  %68 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str755.c, i8* %67, i64 10)
  %69 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %68)
  %70 = alloca %Token
  store %Token %69, %Token* %70
  %71 = load %Token, %Token* %70
  %72 = call %nyx_string* @get_token_value(%Token %71)
  %73 = alloca %nyx_string*
  store %nyx_string* %72, %nyx_string** %73
  %74 = call i8* @llvm.stacksave()
  br label %while_cond9
while_cond9:
  %75 = getelementptr [5 x i8], [5 x i8]* @.str756, i32 0, i32 0
  %76 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str756.c, i8* %75, i64 4)
  %77 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %76)
  br i1 %77, label %while_body10, label %while_end11
while_body10:
  call void @llvm.stackrestore(i8* %74)
  %78 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %79 = getelementptr [11 x i8], [11 x i8]* @.str757, i32 0, i32 0
  %80 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str757.c, i8* %79, i64 10)
  %81 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %80)
  %82 = alloca %Token
  store %Token %81, %Token* %82
  %83 = load %nyx_string*, %nyx_string** %73
  %84 = getelementptr [2 x i8], [2 x i8]* @.str758, i32 0, i32 0
  %85 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str758.c, i8* %84, i64 1)
  %86 = call %nyx_string* @nyx_string_concat(%nyx_string* %83, %nyx_string* %85)
  %87 = load %Token, %Token* %82
  %88 = call %nyx_string* @get_token_value(%Token %87)
  %89 = call %nyx_string* @nyx_string_concat(%nyx_string* %86, %nyx_string* %88)
  store %nyx_string* %89, %nyx_string** %73
  br label %while_cond9
while_end11:
  %90 = load %nyx_string*, %nyx_string** %62
  %91 = getelementptr [2 x i8], [2 x i8]* @.str759, i32 0, i32 0
  %92 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str759.c, i8* %91, i64 1)
  %93 = call %nyx_string* @nyx_string_concat(%nyx_string* %90, %nyx_string* %92)
  %94 = load %nyx_string*, %nyx_string** %73
  %95 = call %nyx_string* @nyx_string_concat(%nyx_string* %93, %nyx_string* %94)
  store %nyx_string* %95, %nyx_string** %62
  br label %merge8
else7:
  br label %merge8
merge8:
  %96 = load { i64, i8* }*, { i64, i8* }** %42
  %97 = load %nyx_string*, %nyx_string** %62
  %98 = ptrtoint %nyx_string* %97 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %96, i64 %98, i64 2)
  br label %merge5
merge5:
  %99 = alloca i1
  store i1 0, i1* %99
  %100 = call i8* @llvm.stacksave()
  br label %while_cond12
while_cond12:
  %101 = load i1, i1* %99
  %102 = xor i1 %101, true
  br i1 %102, label %while_body13, label %while_end14
while_body13:
  call void @llvm.stackrestore(i8* %100)
  %103 = getelementptr [6 x i8], [6 x i8]* @.str760, i32 0, i32 0
  %104 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str760.c, i8* %103, i64 5)
  %105 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %104)
  br i1 %105, label %then15, label %else16
then15:
  %106 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %107 = getelementptr [9 x i8], [9 x i8]* @.str761, i32 0, i32 0
  %108 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str761.c, i8* %107, i64 8)
  %109 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %108)
  br i1 %109, label %then18, label %else19
then18:
  %110 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %111 = alloca %Token
  store %Token %110, %Token* %111
  %112 = load { i64, i8* }*, { i64, i8* }** %42
  %113 = load %Token, %Token* %111
  %114 = call %nyx_string* @get_token_value(%Token %113)
  %115 = ptrtoint %nyx_string* %114 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %112, i64 %115, i64 2)
  br label %merge20
else19:
  %116 = getelementptr [11 x i8], [11 x i8]* @.str762, i32 0, i32 0
  %117 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str762.c, i8* %116, i64 10)
  %118 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %117)
  %119 = alloca %Token
  store %Token %118, %Token* %119
  %120 = load %Token, %Token* %119
  %121 = call %nyx_string* @get_token_value(%Token %120)
  %122 = alloca %nyx_string*
  store %nyx_string* %121, %nyx_string** %122
  %123 = getelementptr [6 x i8], [6 x i8]* @.str763, i32 0, i32 0
  %124 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str763.c, i8* %123, i64 5)
  %125 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %124)
  br i1 %125, label %then21, label %else22
then21:
  %126 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %127 = getelementptr [11 x i8], [11 x i8]* @.str764, i32 0, i32 0
  %128 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str764.c, i8* %127, i64 10)
  %129 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %128)
  %130 = alloca %Token
  store %Token %129, %Token* %130
  %131 = load %Token, %Token* %130
  %132 = call %nyx_string* @get_token_value(%Token %131)
  %133 = alloca %nyx_string*
  store %nyx_string* %132, %nyx_string** %133
  %134 = call i8* @llvm.stacksave()
  br label %while_cond24
while_cond24:
  %135 = getelementptr [5 x i8], [5 x i8]* @.str765, i32 0, i32 0
  %136 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str765.c, i8* %135, i64 4)
  %137 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %136)
  br i1 %137, label %while_body25, label %while_end26
while_body25:
  call void @llvm.stackrestore(i8* %134)
  %138 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %139 = getelementptr [11 x i8], [11 x i8]* @.str766, i32 0, i32 0
  %140 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str766.c, i8* %139, i64 10)
  %141 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %140)
  %142 = alloca %Token
  store %Token %141, %Token* %142
  %143 = load %nyx_string*, %nyx_string** %133
  %144 = getelementptr [2 x i8], [2 x i8]* @.str767, i32 0, i32 0
  %145 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str767.c, i8* %144, i64 1)
  %146 = call %nyx_string* @nyx_string_concat(%nyx_string* %143, %nyx_string* %145)
  %147 = load %Token, %Token* %142
  %148 = call %nyx_string* @get_token_value(%Token %147)
  %149 = call %nyx_string* @nyx_string_concat(%nyx_string* %146, %nyx_string* %148)
  store %nyx_string* %149, %nyx_string** %133
  br label %while_cond24
while_end26:
  %150 = load %nyx_string*, %nyx_string** %122
  %151 = getelementptr [2 x i8], [2 x i8]* @.str768, i32 0, i32 0
  %152 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str768.c, i8* %151, i64 1)
  %153 = call %nyx_string* @nyx_string_concat(%nyx_string* %150, %nyx_string* %152)
  %154 = load %nyx_string*, %nyx_string** %133
  %155 = call %nyx_string* @nyx_string_concat(%nyx_string* %153, %nyx_string* %154)
  store %nyx_string* %155, %nyx_string** %122
  br label %merge23
else22:
  br label %merge23
merge23:
  %156 = load { i64, i8* }*, { i64, i8* }** %42
  %157 = load %nyx_string*, %nyx_string** %122
  %158 = ptrtoint %nyx_string* %157 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %156, i64 %158, i64 2)
  br label %merge20
merge20:
  br label %merge17
else16:
  store i1 1, i1* %99
  br label %merge17
merge17:
  br label %while_cond12
while_end14:
  %159 = getelementptr [8 x i8], [8 x i8]* @.str769, i32 0, i32 0
  %160 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str769.c, i8* %159, i64 7)
  %161 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %160)
  br label %merge2
else1:
  br label %merge2
merge2:
  %162 = getelementptr [11 x i8], [11 x i8]* @.str770, i32 0, i32 0
  %163 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str770.c, i8* %162, i64 10)
  %164 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %163)
  %165 = call { i64, i8* }* @nyx_array_new_ptr()
  %166 = alloca { i64, i8* }*
  store { i64, i8* }* %165, { i64, i8* }** %166
  %167 = call { i64, i8* }* @nyx_array_new_ptr()
  %168 = alloca { i64, i8* }*
  store { i64, i8* }* %167, { i64, i8* }** %168
  %169 = alloca i1
  store i1 0, i1* %169
  %170 = call i8* @llvm.stacksave()
  br label %while_cond27
while_cond27:
  %171 = load i1, i1* %169
  %172 = xor i1 %171, true
  br i1 %172, label %while_body28, label %while_end29
while_body28:
  call void @llvm.stackrestore(i8* %170)
  %173 = getelementptr [12 x i8], [12 x i8]* @.str771, i32 0, i32 0
  %174 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str771.c, i8* %173, i64 11)
  %175 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %174)
  br i1 %175, label %then30, label %else31
then30:
  %176 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %169
  br label %merge32
else31:
  %177 = load { i64, i8* }*, { i64, i8* }** %166
  %178 = call i64 @nyx_array_length({ i64, i8* }* %177)
  %179 = icmp sgt i64 %178, 0
  br i1 %179, label %then33, label %else34
then33:
  %180 = getelementptr [6 x i8], [6 x i8]* @.str772, i32 0, i32 0
  %181 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str772.c, i8* %180, i64 5)
  %182 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %181)
  br label %merge35
else34:
  br label %merge35
merge35:
  %183 = getelementptr [9 x i8], [9 x i8]* @.str773, i32 0, i32 0
  %184 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str773.c, i8* %183, i64 8)
  %185 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %184)
  br i1 %185, label %then36, label %else37
then36:
  %186 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %187 = getelementptr [11 x i8], [11 x i8]* @.str774, i32 0, i32 0
  %188 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str774.c, i8* %187, i64 10)
  %189 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %188)
  %190 = alloca %Token
  store %Token %189, %Token* %190
  %191 = load %Token, %Token* %190
  %192 = call %nyx_string* @get_token_value(%Token %191)
  %193 = alloca %nyx_string*
  store %nyx_string* %192, %nyx_string** %193
  %194 = getelementptr [10 x i8], [10 x i8]* @.str775, i32 0, i32 0
  %195 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str775.c, i8* %194, i64 9)
  %196 = alloca %nyx_string*
  store %nyx_string* %195, %nyx_string** %196
  %197 = getelementptr [6 x i8], [6 x i8]* @.str776, i32 0, i32 0
  %198 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str776.c, i8* %197, i64 5)
  %199 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %198)
  br i1 %199, label %then39, label %else40
then39:
  %200 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %201 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %202 = alloca %nyx_string*
  store %nyx_string* %201, %nyx_string** %202
  %203 = getelementptr [4 x i8], [4 x i8]* @.str777, i32 0, i32 0
  %204 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str777.c, i8* %203, i64 3)
  %205 = load %nyx_string*, %nyx_string** %202
  %206 = call %nyx_string* @nyx_string_concat(%nyx_string* %204, %nyx_string* %205)
  store %nyx_string* %206, %nyx_string** %196
  br label %merge41
else40:
  br label %merge41
merge41:
  %207 = load { i64, i8* }*, { i64, i8* }** %166
  %208 = call { i64, i8* }* @nyx_array_new_ptr()
  %209 = load %nyx_string*, %nyx_string** %193
  %210 = ptrtoint %nyx_string* %209 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %208, i64 %210, i64 2)
  %211 = load %nyx_string*, %nyx_string** %196
  %212 = ptrtoint %nyx_string* %211 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %208, i64 %212, i64 2)
  %213 = ptrtoint { i64, i8* }* %208 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %207, i64 %213, i64 5)
  %214 = load { i64, i8* }*, { i64, i8* }** %168
  %215 = getelementptr [1 x i8], [1 x i8]* @.str778, i32 0, i32 0
  %216 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str778.c, i8* %215, i64 0)
  %217 = ptrtoint %nyx_string* %216 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %214, i64 %217, i64 2)
  %218 = getelementptr [6 x i8], [6 x i8]* @.str779, i32 0, i32 0
  %219 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str779.c, i8* %218, i64 5)
  %220 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %219)
  br i1 %220, label %then42, label %else43
then42:
  %221 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge44
else43:
  br label %merge44
merge44:
  %222 = getelementptr [12 x i8], [12 x i8]* @.str780, i32 0, i32 0
  %223 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str780.c, i8* %222, i64 11)
  %224 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %223)
  br i1 %224, label %then45, label %else46
then45:
  %225 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge47
else46:
  br label %merge47
merge47:
  store i1 1, i1* %169
  br label %merge38
else37:
  %226 = alloca i1
  store i1 false, i1* %226
  %227 = getelementptr [4 x i8], [4 x i8]* @.str781, i32 0, i32 0
  %228 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str781.c, i8* %227, i64 3)
  %229 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %228)
  br i1 %229, label %sc_and_rhs48, label %sc_and_end49
sc_and_rhs48:
  %230 = load { i64, i8* }*, { i64, i8* }** %166
  %231 = call i64 @nyx_array_length({ i64, i8* }* %230)
  %232 = icmp eq i64 %231, 0
  store i1 %232, i1* %226
  br label %sc_and_end49
sc_and_end49:
  %233 = load i1, i1* %226
  br i1 %233, label %then50, label %else51
then50:
  %234 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %235 = getelementptr [9 x i8], [9 x i8]* @.str782, i32 0, i32 0
  %236 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str782.c, i8* %235, i64 8)
  %237 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %236)
  br i1 %237, label %then53, label %else54
then53:
  %238 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge55
else54:
  br label %merge55
merge55:
  %239 = getelementptr [2 x i8], [2 x i8]* @.str783, i32 0, i32 0
  %240 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str783.c, i8* %239, i64 1)
  %241 = alloca %nyx_string*
  store %nyx_string* %240, %nyx_string** %241
  %242 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %243 = call %nyx_string* @get_token_value(%Token %242)
  %244 = getelementptr [4 x i8], [4 x i8]* @.str784, i32 0, i32 0
  %245 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str784.c, i8* %244, i64 3)
  %246 = call i1 @nyx_string_equals(%nyx_string* %243, %nyx_string* %245)
  br i1 %246, label %then56, label %else57
then56:
  %247 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %248 = getelementptr [5 x i8], [5 x i8]* @.str785, i32 0, i32 0
  %249 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str785.c, i8* %248, i64 4)
  store %nyx_string* %249, %nyx_string** %241
  br label %merge58
else57:
  br label %merge58
merge58:
  %250 = getelementptr [11 x i8], [11 x i8]* @.str786, i32 0, i32 0
  %251 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str786.c, i8* %250, i64 10)
  %252 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %251)
  %253 = alloca %Token
  store %Token %252, %Token* %253
  %254 = load { i64, i8* }*, { i64, i8* }** %166
  %255 = call { i64, i8* }* @nyx_array_new_ptr()
  %256 = load %Token, %Token* %253
  %257 = call %nyx_string* @get_token_value(%Token %256)
  %258 = ptrtoint %nyx_string* %257 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %255, i64 %258, i64 2)
  %259 = load %nyx_string*, %nyx_string** %241
  %260 = ptrtoint %nyx_string* %259 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %255, i64 %260, i64 2)
  %261 = ptrtoint { i64, i8* }* %255 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %254, i64 %261, i64 5)
  %262 = load { i64, i8* }*, { i64, i8* }** %168
  %263 = getelementptr [1 x i8], [1 x i8]* @.str787, i32 0, i32 0
  %264 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str787.c, i8* %263, i64 0)
  %265 = ptrtoint %nyx_string* %264 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %262, i64 %265, i64 2)
  br label %merge52
else51:
  %266 = getelementptr [11 x i8], [11 x i8]* @.str788, i32 0, i32 0
  %267 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str788.c, i8* %266, i64 10)
  %268 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %267)
  %269 = alloca %Token
  store %Token %268, %Token* %269
  %270 = getelementptr [1 x i8], [1 x i8]* @.str789, i32 0, i32 0
  %271 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str789.c, i8* %270, i64 0)
  %272 = alloca %nyx_string*
  store %nyx_string* %271, %nyx_string** %272
  %273 = load { i64, i8* }*, { i64, i8* }** %18
  %274 = getelementptr [1 x i8], [1 x i8]* @.str790, i32 0, i32 0
  %275 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str790.c, i8* %274, i64 0)
  %276 = ptrtoint %nyx_string* %275 to i64
  call void @nyx_array_set_tagged({ i64, i8* }* %273, i64 0, i64 %276, i64 2)
  %277 = getelementptr [6 x i8], [6 x i8]* @.str791, i32 0, i32 0
  %278 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str791.c, i8* %277, i64 5)
  %279 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %278)
  br i1 %279, label %then59, label %else60
then59:
  %280 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %281 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %281, %nyx_string** %272
  br label %merge61
else60:
  br label %merge61
merge61:
  %282 = load { i64, i8* }*, { i64, i8* }** %18
  %283 = call i64 @nyx_array_get_checked({ i64, i8* }* %282, i64 0, i64 2)
  %284 = inttoptr i64 %283 to %nyx_string*
  %285 = alloca %nyx_string*
  store %nyx_string* %284, %nyx_string** %285
  %286 = getelementptr [7 x i8], [7 x i8]* @.str792, i32 0, i32 0
  %287 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str792.c, i8* %286, i64 6)
  %288 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %287)
  br i1 %288, label %then62, label %else63
then62:
  %289 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %290 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %291 = alloca { i64, i8* }*
  store { i64, i8* }* %290, { i64, i8* }** %291
  %292 = load { i64, i8* }*, { i64, i8* }** %166
  %293 = call { i64, i8* }* @nyx_array_new_ptr()
  %294 = load %Token, %Token* %269
  %295 = call %nyx_string* @get_token_value(%Token %294)
  %296 = ptrtoint %nyx_string* %295 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %293, i64 %296, i64 2)
  %297 = load %nyx_string*, %nyx_string** %272
  %298 = ptrtoint %nyx_string* %297 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %293, i64 %298, i64 2)
  %299 = load { i64, i8* }*, { i64, i8* }** %291
  %300 = ptrtoint { i64, i8* }* %299 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %293, i64 %300, i64 5)
  %301 = ptrtoint { i64, i8* }* %293 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %292, i64 %301, i64 5)
  br label %merge64
else63:
  %302 = load { i64, i8* }*, { i64, i8* }** %166
  %303 = call { i64, i8* }* @nyx_array_new_ptr()
  %304 = load %Token, %Token* %269
  %305 = call %nyx_string* @get_token_value(%Token %304)
  %306 = ptrtoint %nyx_string* %305 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %303, i64 %306, i64 2)
  %307 = load %nyx_string*, %nyx_string** %272
  %308 = ptrtoint %nyx_string* %307 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %303, i64 %308, i64 2)
  %309 = ptrtoint { i64, i8* }* %303 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %302, i64 %309, i64 5)
  br label %merge64
merge64:
  %310 = load { i64, i8* }*, { i64, i8* }** %168
  %311 = load %nyx_string*, %nyx_string** %285
  %312 = ptrtoint %nyx_string* %311 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %310, i64 %312, i64 2)
  br label %merge52
merge52:
  br label %merge38
merge38:
  br label %merge32
merge32:
  br label %while_cond27
while_end29:
  %313 = getelementptr [1 x i8], [1 x i8]* @.str793, i32 0, i32 0
  %314 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str793.c, i8* %313, i64 0)
  %315 = alloca %nyx_string*
  store %nyx_string* %314, %nyx_string** %315
  %316 = load { i64, i8* }*, { i64, i8* }** %18
  %317 = getelementptr [1 x i8], [1 x i8]* @.str794, i32 0, i32 0
  %318 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str794.c, i8* %317, i64 0)
  %319 = ptrtoint %nyx_string* %318 to i64
  call void @nyx_array_set_tagged({ i64, i8* }* %316, i64 0, i64 %319, i64 2)
  %320 = getelementptr [6 x i8], [6 x i8]* @.str795, i32 0, i32 0
  %321 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str795.c, i8* %320, i64 5)
  %322 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %321)
  br i1 %322, label %then65, label %else66
then65:
  %323 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %324 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %324, %nyx_string** %315
  br label %merge67
else66:
  br label %merge67
merge67:
  %325 = load { i64, i8* }*, { i64, i8* }** %18
  %326 = call i64 @nyx_array_get_checked({ i64, i8* }* %325, i64 0, i64 2)
  %327 = inttoptr i64 %326 to %nyx_string*
  %328 = alloca %nyx_string*
  store %nyx_string* %327, %nyx_string** %328
  %329 = getelementptr [6 x i8], [6 x i8]* @.str796, i32 0, i32 0
  %330 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str796.c, i8* %329, i64 5)
  %331 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %330)
  br i1 %331, label %then68, label %else69
then68:
  %332 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %333 = alloca i1
  store i1 0, i1* %333
  %334 = call i8* @llvm.stacksave()
  br label %while_cond71
while_cond71:
  %335 = load i1, i1* %333
  %336 = xor i1 %335, true
  br i1 %336, label %while_body72, label %while_end73
while_body72:
  call void @llvm.stackrestore(i8* %334)
  %337 = getelementptr [11 x i8], [11 x i8]* @.str797, i32 0, i32 0
  %338 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str797.c, i8* %337, i64 10)
  %339 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %338)
  %340 = alloca %Token
  store %Token %339, %Token* %340
  %341 = load %Token, %Token* %340
  %342 = call %nyx_string* @get_token_value(%Token %341)
  %343 = alloca %nyx_string*
  store %nyx_string* %342, %nyx_string** %343
  %344 = getelementptr [6 x i8], [6 x i8]* @.str798, i32 0, i32 0
  %345 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str798.c, i8* %344, i64 5)
  %346 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %345)
  %347 = getelementptr [11 x i8], [11 x i8]* @.str799, i32 0, i32 0
  %348 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str799.c, i8* %347, i64 10)
  %349 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %348)
  %350 = alloca %Token
  store %Token %349, %Token* %350
  %351 = load %Token, %Token* %350
  %352 = call %nyx_string* @get_token_value(%Token %351)
  %353 = alloca %nyx_string*
  store %nyx_string* %352, %nyx_string** %353
  %354 = call i8* @llvm.stacksave()
  br label %while_cond74
while_cond74:
  %355 = getelementptr [5 x i8], [5 x i8]* @.str800, i32 0, i32 0
  %356 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str800.c, i8* %355, i64 4)
  %357 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %356)
  br i1 %357, label %while_body75, label %while_end76
while_body75:
  call void @llvm.stackrestore(i8* %354)
  %358 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %359 = getelementptr [11 x i8], [11 x i8]* @.str801, i32 0, i32 0
  %360 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str801.c, i8* %359, i64 10)
  %361 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %360)
  %362 = alloca %Token
  store %Token %361, %Token* %362
  %363 = load %nyx_string*, %nyx_string** %353
  %364 = getelementptr [2 x i8], [2 x i8]* @.str802, i32 0, i32 0
  %365 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str802.c, i8* %364, i64 1)
  %366 = call %nyx_string* @nyx_string_concat(%nyx_string* %363, %nyx_string* %365)
  %367 = load %Token, %Token* %362
  %368 = call %nyx_string* @get_token_value(%Token %367)
  %369 = call %nyx_string* @nyx_string_concat(%nyx_string* %366, %nyx_string* %368)
  store %nyx_string* %369, %nyx_string** %353
  br label %while_cond74
while_end76:
  %370 = alloca i1
  store i1 0, i1* %370
  %371 = alloca i64
  store i64 0, i64* %371
  %372 = call i8* @llvm.stacksave()
  br label %while_cond77
while_cond77:
  %373 = load i64, i64* %371
  %374 = load { i64, i8* }*, { i64, i8* }** %42
  %375 = call i64 @nyx_array_length({ i64, i8* }* %374)
  %376 = icmp slt i64 %373, %375
  br i1 %376, label %while_body78, label %while_end79
while_body78:
  call void @llvm.stackrestore(i8* %372)
  %377 = load { i64, i8* }*, { i64, i8* }** %42
  %378 = load i64, i64* %371
  %379 = call i64 @nyx_array_get_checked({ i64, i8* }* %377, i64 %378, i64 2)
  %380 = inttoptr i64 %379 to %nyx_string*
  %381 = alloca %nyx_string*
  store %nyx_string* %380, %nyx_string** %381
  %382 = load %nyx_string*, %nyx_string** %381
  %383 = alloca %nyx_string*
  store %nyx_string* %382, %nyx_string** %383
  %384 = sub i64 0, 1
  %385 = alloca i64
  store i64 %384, i64* %385
  %386 = alloca i64
  store i64 0, i64* %386
  %387 = call i8* @llvm.stacksave()
  br label %while_cond80
while_cond80:
  %388 = load i64, i64* %386
  %389 = load %nyx_string*, %nyx_string** %381
  %390 = call i64 @nyx_string_byte_length(%nyx_string* %389)
  %391 = icmp slt i64 %388, %390
  br i1 %391, label %while_body81, label %while_end82
while_body81:
  call void @llvm.stackrestore(i8* %387)
  %392 = load %nyx_string*, %nyx_string** %381
  %393 = load i64, i64* %386
  %394 = call i8 @nyx_string_char_at(%nyx_string* %392, i64 %393)
  %395 = zext i8 %394 to i64
  %396 = getelementptr [1 x i8], [1 x i8]* @.str803, i32 0, i32 0
  %397 = load i8, i8* %396
  %398 = zext i8 %397 to i64
  %399 = icmp eq i64 %395, %398
  br i1 %399, label %then83, label %else84
then83:
  %400 = load i64, i64* %386
  store i64 %400, i64* %385
  %401 = load %nyx_string*, %nyx_string** %381
  %402 = call i64 @nyx_string_byte_length(%nyx_string* %401)
  store i64 %402, i64* %386
  br label %merge85
else84:
  br label %merge85
merge85:
  %403 = load i64, i64* %386
  %404 = add i64 %403, 1
  store i64 %404, i64* %386
  br label %while_cond80
while_end82:
  %405 = load i64, i64* %385
  %406 = icmp sge i64 %405, 0
  br i1 %406, label %then86, label %else87
then86:
  %407 = load %nyx_string*, %nyx_string** %381
  %408 = load i64, i64* %385
  %409 = call %nyx_string* @nyx_string_substring(%nyx_string* %407, i64 0, i64 %408)
  store %nyx_string* %409, %nyx_string** %383
  br label %merge88
else87:
  br label %merge88
merge88:
  %410 = load %nyx_string*, %nyx_string** %383
  %411 = load %nyx_string*, %nyx_string** %343
  %412 = call i1 @nyx_string_equals(%nyx_string* %410, %nyx_string* %411)
  br i1 %412, label %then89, label %else90
then89:
  %413 = load i64, i64* %385
  %414 = icmp sge i64 %413, 0
  br i1 %414, label %then92, label %else93
then92:
  %415 = load { i64, i8* }*, { i64, i8* }** %42
  %416 = load i64, i64* %371
  %417 = load %nyx_string*, %nyx_string** %381
  %418 = getelementptr [2 x i8], [2 x i8]* @.str804, i32 0, i32 0
  %419 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str804.c, i8* %418, i64 1)
  %420 = call %nyx_string* @nyx_string_concat(%nyx_string* %417, %nyx_string* %419)
  %421 = load %nyx_string*, %nyx_string** %353
  %422 = call %nyx_string* @nyx_string_concat(%nyx_string* %420, %nyx_string* %421)
  %423 = ptrtoint %nyx_string* %422 to i64
  call void @nyx_array_set_tagged({ i64, i8* }* %415, i64 %416, i64 %423, i64 2)
  br label %merge94
else93:
  %424 = load { i64, i8* }*, { i64, i8* }** %42
  %425 = load i64, i64* %371
  %426 = load %nyx_string*, %nyx_string** %381
  %427 = getelementptr [2 x i8], [2 x i8]* @.str805, i32 0, i32 0
  %428 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str805.c, i8* %427, i64 1)
  %429 = call %nyx_string* @nyx_string_concat(%nyx_string* %426, %nyx_string* %428)
  %430 = load %nyx_string*, %nyx_string** %353
  %431 = call %nyx_string* @nyx_string_concat(%nyx_string* %429, %nyx_string* %430)
  %432 = ptrtoint %nyx_string* %431 to i64
  call void @nyx_array_set_tagged({ i64, i8* }* %424, i64 %425, i64 %432, i64 2)
  br label %merge94
merge94:
  store i1 1, i1* %370
  %433 = load { i64, i8* }*, { i64, i8* }** %42
  %434 = call i64 @nyx_array_length({ i64, i8* }* %433)
  store i64 %434, i64* %371
  br label %merge91
else90:
  br label %merge91
merge91:
  %435 = load i64, i64* %371
  %436 = add i64 %435, 1
  store i64 %436, i64* %371
  br label %while_cond77
while_end79:
  %437 = load i1, i1* %370
  %438 = xor i1 %437, true
  br i1 %438, label %then95, label %else96
then95:
  %439 = load { i64, i8* }*, { i64, i8* }** %42
  %440 = load %nyx_string*, %nyx_string** %343
  %441 = getelementptr [2 x i8], [2 x i8]* @.str806, i32 0, i32 0
  %442 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str806.c, i8* %441, i64 1)
  %443 = call %nyx_string* @nyx_string_concat(%nyx_string* %440, %nyx_string* %442)
  %444 = load %nyx_string*, %nyx_string** %353
  %445 = call %nyx_string* @nyx_string_concat(%nyx_string* %443, %nyx_string* %444)
  %446 = ptrtoint %nyx_string* %445 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %439, i64 %446, i64 2)
  br label %merge97
else96:
  br label %merge97
merge97:
  %447 = getelementptr [6 x i8], [6 x i8]* @.str807, i32 0, i32 0
  %448 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str807.c, i8* %447, i64 5)
  %449 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %448)
  br i1 %449, label %then98, label %else99
then98:
  %450 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge100
else99:
  store i1 1, i1* %333
  br label %merge100
merge100:
  br label %while_cond71
while_end73:
  br label %merge70
else69:
  br label %merge70
merge70:
  %451 = load { i64, i8* }*, { i64, i8* }** %11
  %452 = call i64 @nyx_array_length({ i64, i8* }* %451)
  %453 = alloca i64
  store i64 %452, i64* %453
  %454 = call { i64, i8* }* @parse__parse_fn_body_block(%SharedEnv_parse* %env.param)
  %455 = alloca { i64, i8* }*
  store { i64, i8* }* %454, { i64, i8* }** %455
  %456 = load { i64, i8* }*, { i64, i8* }** %11
  %457 = call i64 @nyx_array_length({ i64, i8* }* %456)
  %458 = load i64, i64* %453
  %459 = icmp sgt i64 %457, %458
  br i1 %459, label %then101, label %else102
then101:
  %460 = load { i64, i8* }*, { i64, i8* }** %455
  %461 = call i64 @nyx_array_get({ i64, i8* }* %460, i64 1)
  %462 = inttoptr i64 %461 to { i64, i8* }*
  %463 = alloca { i64, i8* }*
  store { i64, i8* }* %462, { i64, i8* }** %463
  %464 = load { i64, i8* }*, { i64, i8* }** %463
  %465 = call i64 @nyx_array_get({ i64, i8* }* %464, i64 0)
  %466 = inttoptr i64 %465 to { i64, i8* }*
  %467 = alloca { i64, i8* }*
  store { i64, i8* }* %466, { i64, i8* }** %467
  %468 = call { i64, i8* }* @nyx_array_new_ptr()
  %469 = alloca { i64, i8* }*
  store { i64, i8* }* %468, { i64, i8* }** %469
  %470 = load i64, i64* %453
  %471 = alloca i64
  store i64 %470, i64* %471
  %472 = call i8* @llvm.stacksave()
  br label %while_cond104
while_cond104:
  %473 = load i64, i64* %471
  %474 = load { i64, i8* }*, { i64, i8* }** %11
  %475 = call i64 @nyx_array_length({ i64, i8* }* %474)
  %476 = icmp slt i64 %473, %475
  br i1 %476, label %while_body105, label %while_end106
while_body105:
  call void @llvm.stackrestore(i8* %472)
  %477 = load { i64, i8* }*, { i64, i8* }** %11
  %478 = load i64, i64* %471
  %479 = call i64 @nyx_array_get({ i64, i8* }* %477, i64 %478)
  %480 = inttoptr i64 %479 to { i64, i8* }*
  %481 = alloca { i64, i8* }*
  store { i64, i8* }* %480, { i64, i8* }** %481
  %482 = load { i64, i8* }*, { i64, i8* }** %481
  %483 = call i64 @nyx_array_get_checked({ i64, i8* }* %482, i64 0, i64 2)
  %484 = inttoptr i64 %483 to %nyx_string*
  %485 = alloca %nyx_string*
  store %nyx_string* %484, %nyx_string** %485
  %486 = load %nyx_string*, %nyx_string** %485
  %487 = getelementptr [10 x i8], [10 x i8]* @.str808, i32 0, i32 0
  %488 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str808.c, i8* %487, i64 9)
  %489 = call i1 @nyx_string_equals(%nyx_string* %486, %nyx_string* %488)
  %490 = xor i1 %489, true
  br i1 %490, label %then107, label %else108
then107:
  %491 = load { i64, i8* }*, { i64, i8* }** %469
  %492 = load { i64, i8* }*, { i64, i8* }** %11
  %493 = load i64, i64* %471
  %494 = call i64 @nyx_array_get({ i64, i8* }* %492, i64 %493)
  %495 = load { i64, i8* }*, { i64, i8* }** %11
  %496 = load i64, i64* %471
  %497 = call i64 @nyx_array_get_tag({ i64, i8* }* %495, i64 %496)
  call void @nyx_array_push_tagged({ i64, i8* }* %491, i64 %494, i64 %497)
  br label %merge109
else108:
  br label %merge109
merge109:
  %498 = load i64, i64* %471
  %499 = add i64 %498, 1
  store i64 %499, i64* %471
  br label %while_cond104
while_end106:
  %500 = alloca i64
  store i64 0, i64* %500
  %501 = call i8* @llvm.stacksave()
  br label %while_cond110
while_cond110:
  %502 = load i64, i64* %500
  %503 = load { i64, i8* }*, { i64, i8* }** %467
  %504 = call i64 @nyx_array_length({ i64, i8* }* %503)
  %505 = icmp slt i64 %502, %504
  br i1 %505, label %while_body111, label %while_end112
while_body111:
  call void @llvm.stackrestore(i8* %501)
  %506 = load { i64, i8* }*, { i64, i8* }** %469
  %507 = load { i64, i8* }*, { i64, i8* }** %467
  %508 = load i64, i64* %500
  %509 = call i64 @nyx_array_get({ i64, i8* }* %507, i64 %508)
  %510 = load { i64, i8* }*, { i64, i8* }** %467
  %511 = load i64, i64* %500
  %512 = call i64 @nyx_array_get_tag({ i64, i8* }* %510, i64 %511)
  call void @nyx_array_push_tagged({ i64, i8* }* %506, i64 %509, i64 %512)
  %513 = load i64, i64* %500
  %514 = add i64 %513, 1
  store i64 %514, i64* %500
  br label %while_cond110
while_end112:
  %515 = load i64, i64* %453
  %516 = alloca i64
  store i64 %515, i64* %516
  %517 = call i8* @llvm.stacksave()
  br label %while_cond113
while_cond113:
  %518 = load i64, i64* %516
  %519 = load { i64, i8* }*, { i64, i8* }** %11
  %520 = call i64 @nyx_array_length({ i64, i8* }* %519)
  %521 = icmp slt i64 %518, %520
  br i1 %521, label %while_body114, label %while_end115
while_body114:
  call void @llvm.stackrestore(i8* %517)
  %522 = load { i64, i8* }*, { i64, i8* }** %11
  %523 = load i64, i64* %516
  %524 = getelementptr [10 x i8], [10 x i8]* @.str809, i32 0, i32 0
  %525 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str809.c, i8* %524, i64 9)
  %526 = call { i64, i8* }* @nyx_array_new_ptr()
  %527 = call { i64, i8* }* @make_astnode(%nyx_string* %525, { i64, i8* }* %526)
  %528 = ptrtoint { i64, i8* }* %527 to i64
  call void @nyx_array_set_tagged({ i64, i8* }* %522, i64 %523, i64 %528, i64 5)
  %529 = load i64, i64* %516
  %530 = add i64 %529, 1
  store i64 %530, i64* %516
  br label %while_cond113
while_end115:
  %531 = getelementptr [9 x i8], [9 x i8]* @.str810, i32 0, i32 0
  %532 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str810.c, i8* %531, i64 8)
  %533 = call { i64, i8* }* @nyx_array_new_ptr()
  %534 = load %Token, %Token* %40
  %535 = call %nyx_string* @get_token_value(%Token %534)
  %536 = ptrtoint %nyx_string* %535 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %533, i64 %536, i64 2)
  %537 = load { i64, i8* }*, { i64, i8* }** %166
  %538 = ptrtoint { i64, i8* }* %537 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %533, i64 %538, i64 5)
  %539 = load %nyx_string*, %nyx_string** %315
  %540 = ptrtoint %nyx_string* %539 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %533, i64 %540, i64 2)
  %541 = getelementptr [6 x i8], [6 x i8]* @.str811, i32 0, i32 0
  %542 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str811.c, i8* %541, i64 5)
  %543 = call { i64, i8* }* @nyx_array_new_ptr()
  %544 = load { i64, i8* }*, { i64, i8* }** %469
  %545 = ptrtoint { i64, i8* }* %544 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %543, i64 %545, i64 5)
  %546 = call { i64, i8* }* @make_astnode(%nyx_string* %542, { i64, i8* }* %543)
  %547 = ptrtoint { i64, i8* }* %546 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %533, i64 %547, i64 5)
  %548 = load { i64, i8* }*, { i64, i8* }** %42
  %549 = ptrtoint { i64, i8* }* %548 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %533, i64 %549, i64 5)
  %550 = getelementptr [1 x i8], [1 x i8]* @.str812, i32 0, i32 0
  %551 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str812.c, i8* %550, i64 0)
  %552 = ptrtoint %nyx_string* %551 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %533, i64 %552, i64 2)
  %553 = call { i64, i8* }* @nyx_array_new_ptr()
  %554 = getelementptr [10 x i8], [10 x i8]* @.str813, i32 0, i32 0
  %555 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str813.c, i8* %554, i64 9)
  %556 = ptrtoint %nyx_string* %555 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %553, i64 %556, i64 2)
  %557 = load %nyx_string*, %nyx_string** %328
  %558 = ptrtoint %nyx_string* %557 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %553, i64 %558, i64 2)
  %559 = ptrtoint { i64, i8* }* %553 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %533, i64 %559, i64 5)
  %560 = call { i64, i8* }* @nyx_array_new_ptr()
  %561 = getelementptr [12 x i8], [12 x i8]* @.str814, i32 0, i32 0
  %562 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str814.c, i8* %561, i64 11)
  %563 = ptrtoint %nyx_string* %562 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %560, i64 %563, i64 2)
  %564 = load { i64, i8* }*, { i64, i8* }** %168
  %565 = ptrtoint { i64, i8* }* %564 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %560, i64 %565, i64 5)
  %566 = ptrtoint { i64, i8* }* %560 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %533, i64 %566, i64 5)
  %567 = call { i64, i8* }* @nyx_array_new_ptr()
  %568 = getelementptr [13 x i8], [13 x i8]* @.str815, i32 0, i32 0
  %569 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str815.c, i8* %568, i64 12)
  %570 = ptrtoint %nyx_string* %569 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %567, i64 %570, i64 2)
  %571 = load i64, i64* %36
  call void @nyx_array_push_tagged({ i64, i8* }* %567, i64 %571, i64 1)
  %572 = ptrtoint { i64, i8* }* %567 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %533, i64 %572, i64 5)
  %573 = call { i64, i8* }* @make_astnode(%nyx_string* %532, { i64, i8* }* %533)
  ret { i64, i8* }* %573
else102:
  br label %merge103
merge103:
  %574 = getelementptr [9 x i8], [9 x i8]* @.str816, i32 0, i32 0
  %575 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str816.c, i8* %574, i64 8)
  %576 = call { i64, i8* }* @nyx_array_new_ptr()
  %577 = load %Token, %Token* %40
  %578 = call %nyx_string* @get_token_value(%Token %577)
  %579 = ptrtoint %nyx_string* %578 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %576, i64 %579, i64 2)
  %580 = load { i64, i8* }*, { i64, i8* }** %166
  %581 = ptrtoint { i64, i8* }* %580 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %576, i64 %581, i64 5)
  %582 = load %nyx_string*, %nyx_string** %315
  %583 = ptrtoint %nyx_string* %582 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %576, i64 %583, i64 2)
  %584 = load { i64, i8* }*, { i64, i8* }** %455
  %585 = ptrtoint { i64, i8* }* %584 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %576, i64 %585, i64 5)
  %586 = load { i64, i8* }*, { i64, i8* }** %42
  %587 = ptrtoint { i64, i8* }* %586 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %576, i64 %587, i64 5)
  %588 = getelementptr [1 x i8], [1 x i8]* @.str817, i32 0, i32 0
  %589 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str817.c, i8* %588, i64 0)
  %590 = ptrtoint %nyx_string* %589 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %576, i64 %590, i64 2)
  %591 = call { i64, i8* }* @nyx_array_new_ptr()
  %592 = getelementptr [10 x i8], [10 x i8]* @.str818, i32 0, i32 0
  %593 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str818.c, i8* %592, i64 9)
  %594 = ptrtoint %nyx_string* %593 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %591, i64 %594, i64 2)
  %595 = load %nyx_string*, %nyx_string** %328
  %596 = ptrtoint %nyx_string* %595 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %591, i64 %596, i64 2)
  %597 = ptrtoint { i64, i8* }* %591 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %576, i64 %597, i64 5)
  %598 = call { i64, i8* }* @nyx_array_new_ptr()
  %599 = getelementptr [12 x i8], [12 x i8]* @.str819, i32 0, i32 0
  %600 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str819.c, i8* %599, i64 11)
  %601 = ptrtoint %nyx_string* %600 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %598, i64 %601, i64 2)
  %602 = load { i64, i8* }*, { i64, i8* }** %168
  %603 = ptrtoint { i64, i8* }* %602 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %598, i64 %603, i64 5)
  %604 = ptrtoint { i64, i8* }* %598 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %576, i64 %604, i64 5)
  %605 = call { i64, i8* }* @nyx_array_new_ptr()
  %606 = getelementptr [13 x i8], [13 x i8]* @.str820, i32 0, i32 0
  %607 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str820.c, i8* %606, i64 12)
  %608 = ptrtoint %nyx_string* %607 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %605, i64 %608, i64 2)
  %609 = load i64, i64* %36
  call void @nyx_array_push_tagged({ i64, i8* }* %605, i64 %609, i64 1)
  %610 = ptrtoint { i64, i8* }* %605 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %576, i64 %610, i64 5)
  %611 = call { i64, i8* }* @make_astnode(%nyx_string* %575, { i64, i8* }* %576)
  ret { i64, i8* }* %611
}

define internal { i64, i8* }* @parse__parse_struct(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = getelementptr [7 x i8], [7 x i8]* @.str821, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str821.c, i8* %30, i64 6)
  %32 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %31)
  %33 = getelementptr [11 x i8], [11 x i8]* @.str822, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str822.c, i8* %33, i64 10)
  %35 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %34)
  %36 = alloca %Token
  store %Token %35, %Token* %36
  %37 = call { i64, i8* }* @nyx_array_new_ptr()
  %38 = alloca { i64, i8* }*
  store { i64, i8* }* %37, { i64, i8* }** %38
  %39 = getelementptr [5 x i8], [5 x i8]* @.str823, i32 0, i32 0
  %40 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str823.c, i8* %39, i64 4)
  %41 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %40)
  br i1 %41, label %then0, label %else1
then0:
  %42 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %43 = getelementptr [9 x i8], [9 x i8]* @.str824, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str824.c, i8* %43, i64 8)
  %45 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %44)
  br i1 %45, label %then3, label %else4
then3:
  %46 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %47 = alloca %Token
  store %Token %46, %Token* %47
  %48 = load { i64, i8* }*, { i64, i8* }** %38
  %49 = load %Token, %Token* %47
  %50 = call %nyx_string* @get_token_value(%Token %49)
  %51 = ptrtoint %nyx_string* %50 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %48, i64 %51, i64 2)
  br label %merge5
else4:
  %52 = getelementptr [11 x i8], [11 x i8]* @.str825, i32 0, i32 0
  %53 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str825.c, i8* %52, i64 10)
  %54 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %53)
  %55 = alloca %Token
  store %Token %54, %Token* %55
  %56 = load { i64, i8* }*, { i64, i8* }** %38
  %57 = load %Token, %Token* %55
  %58 = call %nyx_string* @get_token_value(%Token %57)
  %59 = ptrtoint %nyx_string* %58 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %56, i64 %59, i64 2)
  br label %merge5
merge5:
  %60 = alloca i1
  store i1 0, i1* %60
  %61 = call i8* @llvm.stacksave()
  br label %while_cond6
while_cond6:
  %62 = load i1, i1* %60
  %63 = xor i1 %62, true
  br i1 %63, label %while_body7, label %while_end8
while_body7:
  call void @llvm.stackrestore(i8* %61)
  %64 = getelementptr [6 x i8], [6 x i8]* @.str826, i32 0, i32 0
  %65 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str826.c, i8* %64, i64 5)
  %66 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %65)
  br i1 %66, label %then9, label %else10
then9:
  %67 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %68 = getelementptr [9 x i8], [9 x i8]* @.str827, i32 0, i32 0
  %69 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str827.c, i8* %68, i64 8)
  %70 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %69)
  br i1 %70, label %then12, label %else13
then12:
  %71 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %72 = alloca %Token
  store %Token %71, %Token* %72
  %73 = load { i64, i8* }*, { i64, i8* }** %38
  %74 = load %Token, %Token* %72
  %75 = call %nyx_string* @get_token_value(%Token %74)
  %76 = ptrtoint %nyx_string* %75 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %73, i64 %76, i64 2)
  br label %merge14
else13:
  %77 = getelementptr [11 x i8], [11 x i8]* @.str828, i32 0, i32 0
  %78 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str828.c, i8* %77, i64 10)
  %79 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %78)
  %80 = alloca %Token
  store %Token %79, %Token* %80
  %81 = load { i64, i8* }*, { i64, i8* }** %38
  %82 = load %Token, %Token* %80
  %83 = call %nyx_string* @get_token_value(%Token %82)
  %84 = ptrtoint %nyx_string* %83 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %81, i64 %84, i64 2)
  br label %merge14
merge14:
  br label %merge11
else10:
  store i1 1, i1* %60
  br label %merge11
merge11:
  br label %while_cond6
while_end8:
  %85 = getelementptr [8 x i8], [8 x i8]* @.str829, i32 0, i32 0
  %86 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str829.c, i8* %85, i64 7)
  %87 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %86)
  br label %merge2
else1:
  br label %merge2
merge2:
  %88 = getelementptr [11 x i8], [11 x i8]* @.str830, i32 0, i32 0
  %89 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str830.c, i8* %88, i64 10)
  %90 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %89)
  br i1 %90, label %then15, label %else16
then15:
  %91 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %92 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %93 = alloca %nyx_string*
  store %nyx_string* %92, %nyx_string** %93
  %94 = getelementptr [12 x i8], [12 x i8]* @.str831, i32 0, i32 0
  %95 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str831.c, i8* %94, i64 11)
  %96 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %95)
  %97 = call { i64, i8* }* @nyx_array_new_ptr()
  %98 = call { i64, i8* }* @nyx_array_new_ptr()
  %99 = getelementptr [3 x i8], [3 x i8]* @.str832, i32 0, i32 0
  %100 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str832.c, i8* %99, i64 2)
  %101 = ptrtoint %nyx_string* %100 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %98, i64 %101, i64 2)
  %102 = load %nyx_string*, %nyx_string** %93
  %103 = ptrtoint %nyx_string* %102 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %98, i64 %103, i64 2)
  %104 = ptrtoint { i64, i8* }* %98 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %97, i64 %104, i64 5)
  %105 = alloca { i64, i8* }*
  store { i64, i8* }* %97, { i64, i8* }** %105
  %106 = getelementptr [7 x i8], [7 x i8]* @.str833, i32 0, i32 0
  %107 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str833.c, i8* %106, i64 6)
  %108 = call { i64, i8* }* @nyx_array_new_ptr()
  %109 = load %Token, %Token* %36
  %110 = call %nyx_string* @get_token_value(%Token %109)
  %111 = ptrtoint %nyx_string* %110 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %108, i64 %111, i64 2)
  %112 = load { i64, i8* }*, { i64, i8* }** %105
  %113 = ptrtoint { i64, i8* }* %112 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %108, i64 %113, i64 5)
  %114 = load { i64, i8* }*, { i64, i8* }** %38
  %115 = ptrtoint { i64, i8* }* %114 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %108, i64 %115, i64 5)
  %116 = call { i64, i8* }* @make_astnode(%nyx_string* %107, { i64, i8* }* %108)
  %117 = alloca { i64, i8* }*
  store { i64, i8* }* %116, { i64, i8* }** %117
  %118 = load { i64, i8* }*, { i64, i8* }** %117
  %119 = load %Token, %Token* %36
  %120 = call i64 @get_token_line(%Token %119)
  call void @nyx_array_set({ i64, i8* }* %118, i64 2, i64 %120)
  %121 = load { i64, i8* }*, { i64, i8* }** %117
  ret { i64, i8* }* %121
else16:
  br label %merge17
merge17:
  %122 = getelementptr [11 x i8], [11 x i8]* @.str834, i32 0, i32 0
  %123 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str834.c, i8* %122, i64 10)
  %124 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %123)
  %125 = call { i64, i8* }* @nyx_array_new_ptr()
  %126 = alloca { i64, i8* }*
  store { i64, i8* }* %125, { i64, i8* }** %126
  %127 = alloca i1
  store i1 0, i1* %127
  %128 = call i8* @llvm.stacksave()
  br label %while_cond18
while_cond18:
  %129 = load i1, i1* %127
  %130 = xor i1 %129, true
  br i1 %130, label %while_body19, label %while_end20
while_body19:
  call void @llvm.stackrestore(i8* %128)
  %131 = getelementptr [12 x i8], [12 x i8]* @.str835, i32 0, i32 0
  %132 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str835.c, i8* %131, i64 11)
  %133 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %132)
  br i1 %133, label %then21, label %else22
then21:
  %134 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %127
  br label %merge23
else22:
  %135 = load { i64, i8* }*, { i64, i8* }** %126
  %136 = call i64 @nyx_array_length({ i64, i8* }* %135)
  %137 = icmp sgt i64 %136, 0
  br i1 %137, label %then24, label %else25
then24:
  %138 = getelementptr [6 x i8], [6 x i8]* @.str836, i32 0, i32 0
  %139 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str836.c, i8* %138, i64 5)
  %140 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %139)
  br i1 %140, label %then27, label %else28
then27:
  %141 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %142 = getelementptr [12 x i8], [12 x i8]* @.str837, i32 0, i32 0
  %143 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str837.c, i8* %142, i64 11)
  %144 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %143)
  br i1 %144, label %then30, label %else31
then30:
  %145 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %127
  br label %merge32
else31:
  br label %merge32
merge32:
  br label %merge29
else28:
  br label %merge29
merge29:
  br label %merge26
else25:
  br label %merge26
merge26:
  %146 = load i1, i1* %127
  %147 = xor i1 %146, true
  br i1 %147, label %then33, label %else34
then33:
  %148 = getelementptr [11 x i8], [11 x i8]* @.str838, i32 0, i32 0
  %149 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str838.c, i8* %148, i64 10)
  %150 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %149)
  %151 = alloca %Token
  store %Token %150, %Token* %151
  %152 = getelementptr [6 x i8], [6 x i8]* @.str839, i32 0, i32 0
  %153 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str839.c, i8* %152, i64 5)
  %154 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %153)
  %155 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %156 = alloca %nyx_string*
  store %nyx_string* %155, %nyx_string** %156
  %157 = load { i64, i8* }*, { i64, i8* }** %126
  %158 = call { i64, i8* }* @nyx_array_new_ptr()
  %159 = load %Token, %Token* %151
  %160 = call %nyx_string* @get_token_value(%Token %159)
  %161 = ptrtoint %nyx_string* %160 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %158, i64 %161, i64 2)
  %162 = load %nyx_string*, %nyx_string** %156
  %163 = ptrtoint %nyx_string* %162 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %158, i64 %163, i64 2)
  %164 = ptrtoint { i64, i8* }* %158 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %157, i64 %164, i64 5)
  br label %merge35
else34:
  br label %merge35
merge35:
  br label %merge23
merge23:
  br label %while_cond18
while_end20:
  %165 = getelementptr [7 x i8], [7 x i8]* @.str840, i32 0, i32 0
  %166 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str840.c, i8* %165, i64 6)
  %167 = call { i64, i8* }* @nyx_array_new_ptr()
  %168 = load %Token, %Token* %36
  %169 = call %nyx_string* @get_token_value(%Token %168)
  %170 = ptrtoint %nyx_string* %169 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %167, i64 %170, i64 2)
  %171 = load { i64, i8* }*, { i64, i8* }** %126
  %172 = ptrtoint { i64, i8* }* %171 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %167, i64 %172, i64 5)
  %173 = load { i64, i8* }*, { i64, i8* }** %38
  %174 = ptrtoint { i64, i8* }* %173 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %167, i64 %174, i64 5)
  %175 = call { i64, i8* }* @make_astnode(%nyx_string* %166, { i64, i8* }* %167)
  %176 = alloca { i64, i8* }*
  store { i64, i8* }* %175, { i64, i8* }** %176
  %177 = load { i64, i8* }*, { i64, i8* }** %176
  %178 = load %Token, %Token* %36
  %179 = call i64 @get_token_line(%Token %178)
  call void @nyx_array_set({ i64, i8* }* %177, i64 2, i64 %179)
  %180 = load { i64, i8* }*, { i64, i8* }** %176
  ret { i64, i8* }* %180
}

define internal { i64, i8* }* @parse__parse_if(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = getelementptr [3 x i8], [3 x i8]* @.str841, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str841.c, i8* %30, i64 2)
  %32 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %31)
  %33 = getelementptr [4 x i8], [4 x i8]* @.str842, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str842.c, i8* %33, i64 3)
  %35 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %34)
  br i1 %35, label %then0, label %else1
then0:
  %36 = call { i64, i8* }* @parse__parse_if_let(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %36
else1:
  br label %merge2
merge2:
  %37 = load i64, i64* %6
  %38 = alloca i64
  store i64 %37, i64* %38
  store i64 1, i64* %6
  %39 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %40 = alloca { i64, i8* }*
  store { i64, i8* }* %39, { i64, i8* }** %40
  %41 = load i64, i64* %38
  store i64 %41, i64* %6
  %42 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %43 = alloca { i64, i8* }*
  store { i64, i8* }* %42, { i64, i8* }** %43
  %44 = getelementptr [6 x i8], [6 x i8]* @.str843, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str843.c, i8* %44, i64 5)
  %46 = call { i64, i8* }* @nyx_array_new_ptr()
  %47 = call { i64, i8* }* @make_astnode(%nyx_string* %45, { i64, i8* }* %46)
  %48 = alloca { i64, i8* }*
  store { i64, i8* }* %47, { i64, i8* }** %48
  %49 = getelementptr [5 x i8], [5 x i8]* @.str844, i32 0, i32 0
  %50 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str844.c, i8* %49, i64 4)
  %51 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %50)
  br i1 %51, label %then3, label %else4
then3:
  %52 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %53 = getelementptr [3 x i8], [3 x i8]* @.str845, i32 0, i32 0
  %54 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str845.c, i8* %53, i64 2)
  %55 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %54)
  br i1 %55, label %then6, label %else7
then6:
  %56 = call { i64, i8* }* @parse__parse_if(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %56, { i64, i8* }** %48
  br label %merge8
else7:
  %57 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %57, { i64, i8* }** %48
  br label %merge8
merge8:
  br label %merge5
else4:
  br label %merge5
merge5:
  %58 = getelementptr [3 x i8], [3 x i8]* @.str846, i32 0, i32 0
  %59 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str846.c, i8* %58, i64 2)
  %60 = call { i64, i8* }* @nyx_array_new_ptr()
  %61 = load { i64, i8* }*, { i64, i8* }** %40
  %62 = ptrtoint { i64, i8* }* %61 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %60, i64 %62, i64 5)
  %63 = load { i64, i8* }*, { i64, i8* }** %43
  %64 = ptrtoint { i64, i8* }* %63 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %60, i64 %64, i64 5)
  %65 = load { i64, i8* }*, { i64, i8* }** %48
  %66 = ptrtoint { i64, i8* }* %65 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %60, i64 %66, i64 5)
  %67 = call { i64, i8* }* @make_astnode(%nyx_string* %59, { i64, i8* }* %60)
  ret { i64, i8* }* %67
}

define internal { i64, i8* }* @parse__parse_if_let(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = getelementptr [4 x i8], [4 x i8]* @.str847, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str847.c, i8* %30, i64 3)
  %32 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %31)
  %33 = call { i64, i8* }* @parse__parse_single_pattern(%SharedEnv_parse* %env.param)
  %34 = alloca { i64, i8* }*
  store { i64, i8* }* %33, { i64, i8* }** %34
  %35 = getelementptr [7 x i8], [7 x i8]* @.str848, i32 0, i32 0
  %36 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str848.c, i8* %35, i64 6)
  %37 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %36)
  %38 = load i64, i64* %6
  %39 = alloca i64
  store i64 %38, i64* %39
  store i64 1, i64* %6
  %40 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %41 = alloca { i64, i8* }*
  store { i64, i8* }* %40, { i64, i8* }** %41
  %42 = load i64, i64* %39
  store i64 %42, i64* %6
  %43 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %44 = alloca { i64, i8* }*
  store { i64, i8* }* %43, { i64, i8* }** %44
  %45 = call { i64, i8* }* @nyx_array_new_ptr()
  %46 = alloca { i64, i8* }*
  store { i64, i8* }* %45, { i64, i8* }** %46
  %47 = getelementptr [6 x i8], [6 x i8]* @.str849, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str849.c, i8* %47, i64 5)
  %49 = call { i64, i8* }* @nyx_array_new_ptr()
  %50 = load { i64, i8* }*, { i64, i8* }** %46
  %51 = ptrtoint { i64, i8* }* %50 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %49, i64 %51, i64 5)
  %52 = call { i64, i8* }* @make_astnode(%nyx_string* %48, { i64, i8* }* %49)
  %53 = alloca { i64, i8* }*
  store { i64, i8* }* %52, { i64, i8* }** %53
  %54 = getelementptr [5 x i8], [5 x i8]* @.str850, i32 0, i32 0
  %55 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str850.c, i8* %54, i64 4)
  %56 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %55)
  br i1 %56, label %then0, label %else1
then0:
  %57 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %58 = getelementptr [11 x i8], [11 x i8]* @.str851, i32 0, i32 0
  %59 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str851.c, i8* %58, i64 10)
  %60 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %59)
  br i1 %60, label %then3, label %else4
then3:
  %61 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %61, { i64, i8* }** %53
  br label %merge5
else4:
  br label %merge5
merge5:
  br label %merge2
else1:
  br label %merge2
merge2:
  %62 = getelementptr [10 x i8], [10 x i8]* @.str852, i32 0, i32 0
  %63 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str852.c, i8* %62, i64 9)
  %64 = call { i64, i8* }* @nyx_array_new_ptr()
  %65 = load { i64, i8* }*, { i64, i8* }** %34
  %66 = ptrtoint { i64, i8* }* %65 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %64, i64 %66, i64 5)
  %67 = load { i64, i8* }*, { i64, i8* }** %44
  %68 = ptrtoint { i64, i8* }* %67 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %64, i64 %68, i64 5)
  %69 = getelementptr [6 x i8], [6 x i8]* @.str853, i32 0, i32 0
  %70 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str853.c, i8* %69, i64 5)
  %71 = call { i64, i8* }* @nyx_array_new_ptr()
  %72 = call { i64, i8* }* @make_astnode(%nyx_string* %70, { i64, i8* }* %71)
  %73 = ptrtoint { i64, i8* }* %72 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %64, i64 %73, i64 5)
  %74 = call { i64, i8* }* @make_astnode(%nyx_string* %63, { i64, i8* }* %64)
  %75 = alloca { i64, i8* }*
  store { i64, i8* }* %74, { i64, i8* }** %75
  %76 = getelementptr [9 x i8], [9 x i8]* @.str854, i32 0, i32 0
  %77 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str854.c, i8* %76, i64 8)
  %78 = call { i64, i8* }* @nyx_array_new_ptr()
  %79 = call { i64, i8* }* @make_astnode(%nyx_string* %77, { i64, i8* }* %78)
  %80 = alloca { i64, i8* }*
  store { i64, i8* }* %79, { i64, i8* }** %80
  %81 = getelementptr [10 x i8], [10 x i8]* @.str855, i32 0, i32 0
  %82 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str855.c, i8* %81, i64 9)
  %83 = call { i64, i8* }* @nyx_array_new_ptr()
  %84 = load { i64, i8* }*, { i64, i8* }** %80
  %85 = ptrtoint { i64, i8* }* %84 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %83, i64 %85, i64 5)
  %86 = load { i64, i8* }*, { i64, i8* }** %53
  %87 = ptrtoint { i64, i8* }* %86 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %83, i64 %87, i64 5)
  %88 = getelementptr [6 x i8], [6 x i8]* @.str856, i32 0, i32 0
  %89 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str856.c, i8* %88, i64 5)
  %90 = call { i64, i8* }* @nyx_array_new_ptr()
  %91 = call { i64, i8* }* @make_astnode(%nyx_string* %89, { i64, i8* }* %90)
  %92 = ptrtoint { i64, i8* }* %91 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %83, i64 %92, i64 5)
  %93 = call { i64, i8* }* @make_astnode(%nyx_string* %82, { i64, i8* }* %83)
  %94 = alloca { i64, i8* }*
  store { i64, i8* }* %93, { i64, i8* }** %94
  %95 = call { i64, i8* }* @nyx_array_new_ptr()
  %96 = alloca { i64, i8* }*
  store { i64, i8* }* %95, { i64, i8* }** %96
  %97 = load { i64, i8* }*, { i64, i8* }** %96
  %98 = load { i64, i8* }*, { i64, i8* }** %75
  %99 = ptrtoint { i64, i8* }* %98 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %97, i64 %99, i64 5)
  %100 = load { i64, i8* }*, { i64, i8* }** %96
  %101 = load { i64, i8* }*, { i64, i8* }** %94
  %102 = ptrtoint { i64, i8* }* %101 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %100, i64 %102, i64 5)
  %103 = getelementptr [6 x i8], [6 x i8]* @.str857, i32 0, i32 0
  %104 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str857.c, i8* %103, i64 5)
  %105 = call { i64, i8* }* @nyx_array_new_ptr()
  %106 = load { i64, i8* }*, { i64, i8* }** %41
  %107 = ptrtoint { i64, i8* }* %106 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %105, i64 %107, i64 5)
  %108 = load { i64, i8* }*, { i64, i8* }** %96
  %109 = ptrtoint { i64, i8* }* %108 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %105, i64 %109, i64 5)
  %110 = call { i64, i8* }* @make_astnode(%nyx_string* %104, { i64, i8* }* %105)
  ret { i64, i8* }* %110
}

define internal { i64, i8* }* @parse__parse_while(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = getelementptr [6 x i8], [6 x i8]* @.str858, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str858.c, i8* %30, i64 5)
  %32 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %31)
  %33 = getelementptr [4 x i8], [4 x i8]* @.str859, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str859.c, i8* %33, i64 3)
  %35 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %34)
  br i1 %35, label %then0, label %else1
then0:
  %36 = call { i64, i8* }* @parse__parse_while_let(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %36
else1:
  br label %merge2
merge2:
  %37 = load i64, i64* %6
  %38 = alloca i64
  store i64 %37, i64* %38
  store i64 1, i64* %6
  %39 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %40 = alloca { i64, i8* }*
  store { i64, i8* }* %39, { i64, i8* }** %40
  %41 = load i64, i64* %38
  store i64 %41, i64* %6
  %42 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %43 = alloca { i64, i8* }*
  store { i64, i8* }* %42, { i64, i8* }** %43
  %44 = getelementptr [6 x i8], [6 x i8]* @.str860, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str860.c, i8* %44, i64 5)
  %46 = call { i64, i8* }* @nyx_array_new_ptr()
  %47 = load { i64, i8* }*, { i64, i8* }** %40
  %48 = ptrtoint { i64, i8* }* %47 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %46, i64 %48, i64 5)
  %49 = load { i64, i8* }*, { i64, i8* }** %43
  %50 = ptrtoint { i64, i8* }* %49 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %46, i64 %50, i64 5)
  %51 = call { i64, i8* }* @make_astnode(%nyx_string* %45, { i64, i8* }* %46)
  ret { i64, i8* }* %51
}

define internal { i64, i8* }* @parse__parse_while_let(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = getelementptr [4 x i8], [4 x i8]* @.str861, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str861.c, i8* %30, i64 3)
  %32 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %31)
  %33 = call { i64, i8* }* @parse__parse_single_pattern(%SharedEnv_parse* %env.param)
  %34 = alloca { i64, i8* }*
  store { i64, i8* }* %33, { i64, i8* }** %34
  %35 = getelementptr [7 x i8], [7 x i8]* @.str862, i32 0, i32 0
  %36 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str862.c, i8* %35, i64 6)
  %37 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %36)
  %38 = load i64, i64* %6
  %39 = alloca i64
  store i64 %38, i64* %39
  store i64 1, i64* %6
  %40 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %41 = alloca { i64, i8* }*
  store { i64, i8* }* %40, { i64, i8* }** %41
  %42 = load i64, i64* %39
  store i64 %42, i64* %6
  %43 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %44 = alloca { i64, i8* }*
  store { i64, i8* }* %43, { i64, i8* }** %44
  %45 = getelementptr [10 x i8], [10 x i8]* @.str863, i32 0, i32 0
  %46 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str863.c, i8* %45, i64 9)
  %47 = call { i64, i8* }* @nyx_array_new_ptr()
  %48 = load { i64, i8* }*, { i64, i8* }** %34
  %49 = ptrtoint { i64, i8* }* %48 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %47, i64 %49, i64 5)
  %50 = load { i64, i8* }*, { i64, i8* }** %41
  %51 = ptrtoint { i64, i8* }* %50 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %47, i64 %51, i64 5)
  %52 = load { i64, i8* }*, { i64, i8* }** %44
  %53 = ptrtoint { i64, i8* }* %52 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %47, i64 %53, i64 5)
  %54 = call { i64, i8* }* @make_astnode(%nyx_string* %46, { i64, i8* }* %47)
  ret { i64, i8* }* %54
}

define internal { i64, i8* }* @parse__parse_for(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = getelementptr [4 x i8], [4 x i8]* @.str864, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str864.c, i8* %30, i64 3)
  %32 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %31)
  %33 = getelementptr [11 x i8], [11 x i8]* @.str865, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str865.c, i8* %33, i64 10)
  %35 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %34)
  %36 = alloca %Token
  store %Token %35, %Token* %36
  %37 = getelementptr [1 x i8], [1 x i8]* @.str866, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str866.c, i8* %37, i64 0)
  %39 = alloca %nyx_string*
  store %nyx_string* %38, %nyx_string** %39
  %40 = getelementptr [6 x i8], [6 x i8]* @.str867, i32 0, i32 0
  %41 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str867.c, i8* %40, i64 5)
  %42 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %41)
  br i1 %42, label %then0, label %else1
then0:
  %43 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %44 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %44, %nyx_string** %39
  br label %merge2
else1:
  br label %merge2
merge2:
  %45 = getelementptr [3 x i8], [3 x i8]* @.str868, i32 0, i32 0
  %46 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str868.c, i8* %45, i64 2)
  %47 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %46)
  %48 = load i64, i64* %6
  %49 = alloca i64
  store i64 %48, i64* %49
  store i64 1, i64* %6
  %50 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %51 = alloca { i64, i8* }*
  store { i64, i8* }* %50, { i64, i8* }** %51
  %52 = load i64, i64* %49
  store i64 %52, i64* %6
  %53 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %54 = alloca { i64, i8* }*
  store { i64, i8* }* %53, { i64, i8* }** %54
  %55 = getelementptr [4 x i8], [4 x i8]* @.str869, i32 0, i32 0
  %56 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str869.c, i8* %55, i64 3)
  %57 = call { i64, i8* }* @nyx_array_new_ptr()
  %58 = load %Token, %Token* %36
  %59 = call %nyx_string* @get_token_value(%Token %58)
  %60 = ptrtoint %nyx_string* %59 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %57, i64 %60, i64 2)
  %61 = load { i64, i8* }*, { i64, i8* }** %51
  %62 = ptrtoint { i64, i8* }* %61 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %57, i64 %62, i64 5)
  %63 = load { i64, i8* }*, { i64, i8* }** %54
  %64 = ptrtoint { i64, i8* }* %63 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %57, i64 %64, i64 5)
  %65 = load %nyx_string*, %nyx_string** %39
  %66 = ptrtoint %nyx_string* %65 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %57, i64 %66, i64 2)
  %67 = call { i64, i8* }* @make_astnode(%nyx_string* %56, { i64, i8* }* %57)
  ret { i64, i8* }* %67
}

define internal { i64, i8* }* @parse__parse_return(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = getelementptr [7 x i8], [7 x i8]* @.str870, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str870.c, i8* %30, i64 6)
  %32 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %31)
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
  %39 = getelementptr [12 x i8], [12 x i8]* @.str871, i32 0, i32 0
  %40 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str871.c, i8* %39, i64 11)
  %41 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %40)
  br i1 %41, label %sc_or_end1, label %sc_or_rhs0
sc_or_rhs0:
  %42 = getelementptr [4 x i8], [4 x i8]* @.str872, i32 0, i32 0
  %43 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str872.c, i8* %42, i64 3)
  %44 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %43)
  store i1 %44, i1* %38
  br label %sc_or_end1
sc_or_end1:
  %45 = load i1, i1* %38
  br i1 %45, label %sc_or_end3, label %sc_or_rhs2
sc_or_rhs2:
  %46 = getelementptr [4 x i8], [4 x i8]* @.str873, i32 0, i32 0
  %47 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str873.c, i8* %46, i64 3)
  %48 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %47)
  store i1 %48, i1* %37
  br label %sc_or_end3
sc_or_end3:
  %49 = load i1, i1* %37
  br i1 %49, label %sc_or_end5, label %sc_or_rhs4
sc_or_rhs4:
  %50 = getelementptr [4 x i8], [4 x i8]* @.str874, i32 0, i32 0
  %51 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str874.c, i8* %50, i64 3)
  %52 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %51)
  store i1 %52, i1* %36
  br label %sc_or_end5
sc_or_end5:
  %53 = load i1, i1* %36
  br i1 %53, label %sc_or_end7, label %sc_or_rhs6
sc_or_rhs6:
  %54 = getelementptr [6 x i8], [6 x i8]* @.str875, i32 0, i32 0
  %55 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str875.c, i8* %54, i64 5)
  %56 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %55)
  store i1 %56, i1* %35
  br label %sc_or_end7
sc_or_end7:
  %57 = load i1, i1* %35
  br i1 %57, label %sc_or_end9, label %sc_or_rhs8
sc_or_rhs8:
  %58 = getelementptr [4 x i8], [4 x i8]* @.str876, i32 0, i32 0
  %59 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str876.c, i8* %58, i64 3)
  %60 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %59)
  store i1 %60, i1* %34
  br label %sc_or_end9
sc_or_end9:
  %61 = load i1, i1* %34
  br i1 %61, label %sc_or_end11, label %sc_or_rhs10
sc_or_rhs10:
  %62 = getelementptr [7 x i8], [7 x i8]* @.str877, i32 0, i32 0
  %63 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str877.c, i8* %62, i64 6)
  %64 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %63)
  store i1 %64, i1* %33
  br label %sc_or_end11
sc_or_end11:
  %65 = load i1, i1* %33
  br i1 %65, label %then12, label %else13
then12:
  %66 = getelementptr [8 x i8], [8 x i8]* @.str878, i32 0, i32 0
  %67 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str878.c, i8* %66, i64 7)
  %68 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %68, i64 0, i64 1)
  %69 = call { i64, i8* }* @make_astnode(%nyx_string* %67, { i64, i8* }* %68)
  %70 = alloca { i64, i8* }*
  store { i64, i8* }* %69, { i64, i8* }** %70
  %71 = getelementptr [7 x i8], [7 x i8]* @.str879, i32 0, i32 0
  %72 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str879.c, i8* %71, i64 6)
  %73 = call { i64, i8* }* @nyx_array_new_ptr()
  %74 = load { i64, i8* }*, { i64, i8* }** %70
  %75 = ptrtoint { i64, i8* }* %74 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %73, i64 %75, i64 5)
  %76 = call { i64, i8* }* @make_astnode(%nyx_string* %72, { i64, i8* }* %73)
  ret { i64, i8* }* %76
else13:
  br label %merge14
merge14:
  %77 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %78 = alloca { i64, i8* }*
  store { i64, i8* }* %77, { i64, i8* }** %78
  %79 = getelementptr [7 x i8], [7 x i8]* @.str880, i32 0, i32 0
  %80 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str880.c, i8* %79, i64 6)
  %81 = call { i64, i8* }* @nyx_array_new_ptr()
  %82 = load { i64, i8* }*, { i64, i8* }** %78
  %83 = ptrtoint { i64, i8* }* %82 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %81, i64 %83, i64 5)
  %84 = call { i64, i8* }* @make_astnode(%nyx_string* %80, { i64, i8* }* %81)
  ret { i64, i8* }* %84
}

define internal { i64, i8* }* @parse__parse_export(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = getelementptr [7 x i8], [7 x i8]* @.str881, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str881.c, i8* %30, i64 6)
  %32 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %31)
  %33 = getelementptr [3 x i8], [3 x i8]* @.str882, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str882.c, i8* %33, i64 2)
  %35 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %34)
  br i1 %35, label %then0, label %else1
then0:
  %36 = call { i64, i8* }* @parse__parse_function(%SharedEnv_parse* %env.param)
  %37 = alloca { i64, i8* }*
  store { i64, i8* }* %36, { i64, i8* }** %37
  %38 = getelementptr [7 x i8], [7 x i8]* @.str883, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str883.c, i8* %38, i64 6)
  %40 = call { i64, i8* }* @nyx_array_new_ptr()
  %41 = load { i64, i8* }*, { i64, i8* }** %37
  %42 = ptrtoint { i64, i8* }* %41 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %40, i64 %42, i64 5)
  %43 = call { i64, i8* }* @make_astnode(%nyx_string* %39, { i64, i8* }* %40)
  ret { i64, i8* }* %43
else1:
  br label %merge2
merge2:
  %44 = getelementptr [6 x i8], [6 x i8]* @.str884, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str884.c, i8* %44, i64 5)
  %46 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %45)
  br i1 %46, label %then3, label %else4
then3:
  %47 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %48 = call { i64, i8* }* @parse__parse_async_function(%SharedEnv_parse* %env.param)
  %49 = alloca { i64, i8* }*
  store { i64, i8* }* %48, { i64, i8* }** %49
  %50 = getelementptr [7 x i8], [7 x i8]* @.str885, i32 0, i32 0
  %51 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str885.c, i8* %50, i64 6)
  %52 = call { i64, i8* }* @nyx_array_new_ptr()
  %53 = load { i64, i8* }*, { i64, i8* }** %49
  %54 = ptrtoint { i64, i8* }* %53 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %52, i64 %54, i64 5)
  %55 = call { i64, i8* }* @make_astnode(%nyx_string* %51, { i64, i8* }* %52)
  ret { i64, i8* }* %55
else4:
  br label %merge5
merge5:
  %56 = getelementptr [7 x i8], [7 x i8]* @.str886, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str886.c, i8* %56, i64 6)
  %58 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %57)
  br i1 %58, label %then6, label %else7
then6:
  %59 = call { i64, i8* }* @parse__parse_struct(%SharedEnv_parse* %env.param)
  %60 = alloca { i64, i8* }*
  store { i64, i8* }* %59, { i64, i8* }** %60
  %61 = getelementptr [7 x i8], [7 x i8]* @.str887, i32 0, i32 0
  %62 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str887.c, i8* %61, i64 6)
  %63 = call { i64, i8* }* @nyx_array_new_ptr()
  %64 = load { i64, i8* }*, { i64, i8* }** %60
  %65 = ptrtoint { i64, i8* }* %64 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %63, i64 %65, i64 5)
  %66 = call { i64, i8* }* @make_astnode(%nyx_string* %62, { i64, i8* }* %63)
  ret { i64, i8* }* %66
else7:
  br label %merge8
merge8:
  %67 = getelementptr [5 x i8], [5 x i8]* @.str888, i32 0, i32 0
  %68 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str888.c, i8* %67, i64 4)
  %69 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %68)
  br i1 %69, label %then9, label %else10
then9:
  %70 = call { i64, i8* }* @parse__parse_enum(%SharedEnv_parse* %env.param)
  %71 = alloca { i64, i8* }*
  store { i64, i8* }* %70, { i64, i8* }** %71
  %72 = getelementptr [7 x i8], [7 x i8]* @.str889, i32 0, i32 0
  %73 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str889.c, i8* %72, i64 6)
  %74 = call { i64, i8* }* @nyx_array_new_ptr()
  %75 = load { i64, i8* }*, { i64, i8* }** %71
  %76 = ptrtoint { i64, i8* }* %75 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %74, i64 %76, i64 5)
  %77 = call { i64, i8* }* @make_astnode(%nyx_string* %73, { i64, i8* }* %74)
  ret { i64, i8* }* %77
else10:
  br label %merge11
merge11:
  %78 = getelementptr [6 x i8], [6 x i8]* @.str890, i32 0, i32 0
  %79 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str890.c, i8* %78, i64 5)
  %80 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %79)
  br i1 %80, label %then12, label %else13
then12:
  %81 = call { i64, i8* }* @parse__parse_trait(%SharedEnv_parse* %env.param)
  %82 = alloca { i64, i8* }*
  store { i64, i8* }* %81, { i64, i8* }** %82
  %83 = getelementptr [7 x i8], [7 x i8]* @.str891, i32 0, i32 0
  %84 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str891.c, i8* %83, i64 6)
  %85 = call { i64, i8* }* @nyx_array_new_ptr()
  %86 = load { i64, i8* }*, { i64, i8* }** %82
  %87 = ptrtoint { i64, i8* }* %86 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %85, i64 %87, i64 5)
  %88 = call { i64, i8* }* @make_astnode(%nyx_string* %84, { i64, i8* }* %85)
  ret { i64, i8* }* %88
else13:
  br label %merge14
merge14:
  %89 = getelementptr [11 x i8], [11 x i8]* @.str892, i32 0, i32 0
  %90 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str892.c, i8* %89, i64 10)
  %91 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %90)
  br i1 %91, label %then15, label %else16
then15:
  %92 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %93 = call %nyx_string* @get_token_value(%Token %92)
  %94 = getelementptr [5 x i8], [5 x i8]* @.str893, i32 0, i32 0
  %95 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str893.c, i8* %94, i64 4)
  %96 = call i1 @nyx_string_equals(%nyx_string* %93, %nyx_string* %95)
  br i1 %96, label %then18, label %else19
then18:
  %97 = call { i64, i8* }* @parse__parse_type_alias(%SharedEnv_parse* %env.param)
  %98 = alloca { i64, i8* }*
  store { i64, i8* }* %97, { i64, i8* }** %98
  %99 = getelementptr [7 x i8], [7 x i8]* @.str894, i32 0, i32 0
  %100 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str894.c, i8* %99, i64 6)
  %101 = call { i64, i8* }* @nyx_array_new_ptr()
  %102 = load { i64, i8* }*, { i64, i8* }** %98
  %103 = ptrtoint { i64, i8* }* %102 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %101, i64 %103, i64 5)
  %104 = call { i64, i8* }* @make_astnode(%nyx_string* %100, { i64, i8* }* %101)
  ret { i64, i8* }* %104
else19:
  br label %merge20
merge20:
  br label %merge17
else16:
  br label %merge17
merge17:
  %105 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %106 = alloca %Token
  store %Token %105, %Token* %106
  %107 = getelementptr [8 x i8], [8 x i8]* @.str895, i32 0, i32 0
  %108 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str895.c, i8* %107, i64 7)
  %109 = load %Token, %Token* %106
  %110 = call i64 @get_token_line(%Token %109)
  %111 = load %Token, %Token* %106
  %112 = call i64 @get_token_column(%Token %111)
  %113 = getelementptr [58 x i8], [58 x i8]* @.str896, i32 0, i32 0
  %114 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str896.c, i8* %113, i64 57)
  %115 = getelementptr [56 x i8], [56 x i8]* @.str897, i32 0, i32 0
  %116 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str897.c, i8* %115, i64 55)
  %117 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %114, %nyx_string* %116)
  %118 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %108, i64 %110, i64 %112, %nyx_string* %117)
  %119 = getelementptr [6 x i8], [6 x i8]* @.str898, i32 0, i32 0
  %120 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str898.c, i8* %119, i64 5)
  %121 = call { i64, i8* }* @nyx_array_new_ptr()
  %122 = call { i64, i8* }* @make_astnode(%nyx_string* %120, { i64, i8* }* %121)
  ret { i64, i8* }* %122
}

define internal { i64, i8* }* @parse__parse_import(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = getelementptr [7 x i8], [7 x i8]* @.str899, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str899.c, i8* %30, i64 6)
  %32 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %31)
  %33 = getelementptr [7 x i8], [7 x i8]* @.str900, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str900.c, i8* %33, i64 6)
  %35 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %34)
  br i1 %35, label %then0, label %else1
then0:
  %36 = getelementptr [7 x i8], [7 x i8]* @.str901, i32 0, i32 0
  %37 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str901.c, i8* %36, i64 6)
  %38 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %37)
  %39 = alloca %Token
  store %Token %38, %Token* %39
  %40 = load %Token, %Token* %39
  %41 = call %nyx_string* @get_token_value(%Token %40)
  %42 = alloca %nyx_string*
  store %nyx_string* %41, %nyx_string** %42
  %43 = getelementptr [1 x i8], [1 x i8]* @.str902, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str902.c, i8* %43, i64 0)
  %45 = alloca %nyx_string*
  store %nyx_string* %44, %nyx_string** %45
  %46 = getelementptr [3 x i8], [3 x i8]* @.str903, i32 0, i32 0
  %47 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str903.c, i8* %46, i64 2)
  %48 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %47)
  br i1 %48, label %then3, label %else4
then3:
  %49 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %50 = getelementptr [11 x i8], [11 x i8]* @.str904, i32 0, i32 0
  %51 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str904.c, i8* %50, i64 10)
  %52 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %51)
  %53 = alloca %Token
  store %Token %52, %Token* %53
  %54 = load %Token, %Token* %53
  %55 = call %nyx_string* @get_token_value(%Token %54)
  store %nyx_string* %55, %nyx_string** %45
  br label %merge5
else4:
  br label %merge5
merge5:
  %56 = getelementptr [14 x i8], [14 x i8]* @.str905, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str905.c, i8* %56, i64 13)
  %58 = call { i64, i8* }* @nyx_array_new_ptr()
  %59 = load %nyx_string*, %nyx_string** %42
  %60 = ptrtoint %nyx_string* %59 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %58, i64 %60, i64 2)
  %61 = load %nyx_string*, %nyx_string** %45
  %62 = ptrtoint %nyx_string* %61 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %58, i64 %62, i64 2)
  %63 = call { i64, i8* }* @make_astnode(%nyx_string* %57, { i64, i8* }* %58)
  ret { i64, i8* }* %63
else1:
  br label %merge2
merge2:
  %64 = getelementptr [11 x i8], [11 x i8]* @.str906, i32 0, i32 0
  %65 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str906.c, i8* %64, i64 10)
  %66 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %65)
  %67 = call { i64, i8* }* @nyx_array_new_ptr()
  %68 = alloca { i64, i8* }*
  store { i64, i8* }* %67, { i64, i8* }** %68
  %69 = alloca i1
  store i1 0, i1* %69
  %70 = call i8* @llvm.stacksave()
  br label %while_cond6
while_cond6:
  %71 = load i1, i1* %69
  %72 = xor i1 %71, true
  br i1 %72, label %while_body7, label %while_end8
while_body7:
  call void @llvm.stackrestore(i8* %70)
  %73 = getelementptr [11 x i8], [11 x i8]* @.str907, i32 0, i32 0
  %74 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str907.c, i8* %73, i64 10)
  %75 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %74)
  %76 = alloca %Token
  store %Token %75, %Token* %76
  %77 = load %Token, %Token* %76
  %78 = call %nyx_string* @get_token_value(%Token %77)
  %79 = alloca %nyx_string*
  store %nyx_string* %78, %nyx_string** %79
  %80 = load { i64, i8* }*, { i64, i8* }** %68
  %81 = load %nyx_string*, %nyx_string** %79
  %82 = ptrtoint %nyx_string* %81 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %80, i64 %82, i64 2)
  %83 = getelementptr [6 x i8], [6 x i8]* @.str908, i32 0, i32 0
  %84 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str908.c, i8* %83, i64 5)
  %85 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %84)
  br i1 %85, label %then9, label %else10
then9:
  %86 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge11
else10:
  store i1 1, i1* %69
  br label %merge11
merge11:
  br label %while_cond6
while_end8:
  %87 = getelementptr [12 x i8], [12 x i8]* @.str909, i32 0, i32 0
  %88 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str909.c, i8* %87, i64 11)
  %89 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %88)
  %90 = getelementptr [5 x i8], [5 x i8]* @.str910, i32 0, i32 0
  %91 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str910.c, i8* %90, i64 4)
  %92 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %91)
  %93 = getelementptr [7 x i8], [7 x i8]* @.str911, i32 0, i32 0
  %94 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str911.c, i8* %93, i64 6)
  %95 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %94)
  %96 = alloca %Token
  store %Token %95, %Token* %96
  %97 = load %Token, %Token* %96
  %98 = call %nyx_string* @get_token_value(%Token %97)
  %99 = alloca %nyx_string*
  store %nyx_string* %98, %nyx_string** %99
  %100 = getelementptr [7 x i8], [7 x i8]* @.str912, i32 0, i32 0
  %101 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str912.c, i8* %100, i64 6)
  %102 = call { i64, i8* }* @nyx_array_new_ptr()
  %103 = load { i64, i8* }*, { i64, i8* }** %68
  %104 = ptrtoint { i64, i8* }* %103 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %102, i64 %104, i64 5)
  %105 = load %nyx_string*, %nyx_string** %99
  %106 = ptrtoint %nyx_string* %105 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %102, i64 %106, i64 2)
  %107 = call { i64, i8* }* @make_astnode(%nyx_string* %101, { i64, i8* }* %102)
  ret { i64, i8* }* %107
}

define internal { i64, i8* }* @parse__parse_pub(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = getelementptr [4 x i8], [4 x i8]* @.str913, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str913.c, i8* %30, i64 3)
  %32 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %31)
  %33 = getelementptr [3 x i8], [3 x i8]* @.str914, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str914.c, i8* %33, i64 2)
  %35 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %34)
  br i1 %35, label %then0, label %else1
then0:
  %36 = call { i64, i8* }* @parse__parse_function(%SharedEnv_parse* %env.param)
  %37 = alloca { i64, i8* }*
  store { i64, i8* }* %36, { i64, i8* }** %37
  %38 = getelementptr [7 x i8], [7 x i8]* @.str915, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str915.c, i8* %38, i64 6)
  %40 = call { i64, i8* }* @nyx_array_new_ptr()
  %41 = load { i64, i8* }*, { i64, i8* }** %37
  %42 = ptrtoint { i64, i8* }* %41 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %40, i64 %42, i64 5)
  %43 = call { i64, i8* }* @make_astnode(%nyx_string* %39, { i64, i8* }* %40)
  ret { i64, i8* }* %43
else1:
  br label %merge2
merge2:
  %44 = getelementptr [6 x i8], [6 x i8]* @.str916, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str916.c, i8* %44, i64 5)
  %46 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %45)
  br i1 %46, label %then3, label %else4
then3:
  %47 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %48 = call { i64, i8* }* @parse__parse_async_function(%SharedEnv_parse* %env.param)
  %49 = alloca { i64, i8* }*
  store { i64, i8* }* %48, { i64, i8* }** %49
  %50 = getelementptr [7 x i8], [7 x i8]* @.str917, i32 0, i32 0
  %51 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str917.c, i8* %50, i64 6)
  %52 = call { i64, i8* }* @nyx_array_new_ptr()
  %53 = load { i64, i8* }*, { i64, i8* }** %49
  %54 = ptrtoint { i64, i8* }* %53 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %52, i64 %54, i64 5)
  %55 = call { i64, i8* }* @make_astnode(%nyx_string* %51, { i64, i8* }* %52)
  ret { i64, i8* }* %55
else4:
  br label %merge5
merge5:
  %56 = getelementptr [7 x i8], [7 x i8]* @.str918, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str918.c, i8* %56, i64 6)
  %58 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %57)
  br i1 %58, label %then6, label %else7
then6:
  %59 = call { i64, i8* }* @parse__parse_struct(%SharedEnv_parse* %env.param)
  %60 = alloca { i64, i8* }*
  store { i64, i8* }* %59, { i64, i8* }** %60
  %61 = getelementptr [7 x i8], [7 x i8]* @.str919, i32 0, i32 0
  %62 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str919.c, i8* %61, i64 6)
  %63 = call { i64, i8* }* @nyx_array_new_ptr()
  %64 = load { i64, i8* }*, { i64, i8* }** %60
  %65 = ptrtoint { i64, i8* }* %64 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %63, i64 %65, i64 5)
  %66 = call { i64, i8* }* @make_astnode(%nyx_string* %62, { i64, i8* }* %63)
  ret { i64, i8* }* %66
else7:
  br label %merge8
merge8:
  %67 = getelementptr [5 x i8], [5 x i8]* @.str920, i32 0, i32 0
  %68 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str920.c, i8* %67, i64 4)
  %69 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %68)
  br i1 %69, label %then9, label %else10
then9:
  %70 = call { i64, i8* }* @parse__parse_enum(%SharedEnv_parse* %env.param)
  %71 = alloca { i64, i8* }*
  store { i64, i8* }* %70, { i64, i8* }** %71
  %72 = getelementptr [7 x i8], [7 x i8]* @.str921, i32 0, i32 0
  %73 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str921.c, i8* %72, i64 6)
  %74 = call { i64, i8* }* @nyx_array_new_ptr()
  %75 = load { i64, i8* }*, { i64, i8* }** %71
  %76 = ptrtoint { i64, i8* }* %75 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %74, i64 %76, i64 5)
  %77 = call { i64, i8* }* @make_astnode(%nyx_string* %73, { i64, i8* }* %74)
  ret { i64, i8* }* %77
else10:
  br label %merge11
merge11:
  %78 = getelementptr [6 x i8], [6 x i8]* @.str922, i32 0, i32 0
  %79 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str922.c, i8* %78, i64 5)
  %80 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %79)
  br i1 %80, label %then12, label %else13
then12:
  %81 = call { i64, i8* }* @parse__parse_trait(%SharedEnv_parse* %env.param)
  %82 = alloca { i64, i8* }*
  store { i64, i8* }* %81, { i64, i8* }** %82
  %83 = getelementptr [7 x i8], [7 x i8]* @.str923, i32 0, i32 0
  %84 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str923.c, i8* %83, i64 6)
  %85 = call { i64, i8* }* @nyx_array_new_ptr()
  %86 = load { i64, i8* }*, { i64, i8* }** %82
  %87 = ptrtoint { i64, i8* }* %86 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %85, i64 %87, i64 5)
  %88 = call { i64, i8* }* @make_astnode(%nyx_string* %84, { i64, i8* }* %85)
  ret { i64, i8* }* %88
else13:
  br label %merge14
merge14:
  %89 = getelementptr [11 x i8], [11 x i8]* @.str924, i32 0, i32 0
  %90 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str924.c, i8* %89, i64 10)
  %91 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %90)
  br i1 %91, label %then15, label %else16
then15:
  %92 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %93 = call %nyx_string* @get_token_value(%Token %92)
  %94 = getelementptr [5 x i8], [5 x i8]* @.str925, i32 0, i32 0
  %95 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str925.c, i8* %94, i64 4)
  %96 = call i1 @nyx_string_equals(%nyx_string* %93, %nyx_string* %95)
  br i1 %96, label %then18, label %else19
then18:
  %97 = call { i64, i8* }* @parse__parse_type_alias(%SharedEnv_parse* %env.param)
  %98 = alloca { i64, i8* }*
  store { i64, i8* }* %97, { i64, i8* }** %98
  %99 = getelementptr [7 x i8], [7 x i8]* @.str926, i32 0, i32 0
  %100 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str926.c, i8* %99, i64 6)
  %101 = call { i64, i8* }* @nyx_array_new_ptr()
  %102 = load { i64, i8* }*, { i64, i8* }** %98
  %103 = ptrtoint { i64, i8* }* %102 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %101, i64 %103, i64 5)
  %104 = call { i64, i8* }* @make_astnode(%nyx_string* %100, { i64, i8* }* %101)
  ret { i64, i8* }* %104
else19:
  br label %merge20
merge20:
  br label %merge17
else16:
  br label %merge17
merge17:
  %105 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %106 = alloca %Token
  store %Token %105, %Token* %106
  %107 = getelementptr [8 x i8], [8 x i8]* @.str927, i32 0, i32 0
  %108 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str927.c, i8* %107, i64 7)
  %109 = load %Token, %Token* %106
  %110 = call i64 @get_token_line(%Token %109)
  %111 = load %Token, %Token* %106
  %112 = call i64 @get_token_column(%Token %111)
  %113 = getelementptr [55 x i8], [55 x i8]* @.str928, i32 0, i32 0
  %114 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str928.c, i8* %113, i64 54)
  %115 = getelementptr [53 x i8], [53 x i8]* @.str929, i32 0, i32 0
  %116 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str929.c, i8* %115, i64 52)
  %117 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %114, %nyx_string* %116)
  %118 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %108, i64 %110, i64 %112, %nyx_string* %117)
  %119 = getelementptr [6 x i8], [6 x i8]* @.str930, i32 0, i32 0
  %120 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str930.c, i8* %119, i64 5)
  %121 = call { i64, i8* }* @nyx_array_new_ptr()
  %122 = call { i64, i8* }* @make_astnode(%nyx_string* %120, { i64, i8* }* %121)
  ret { i64, i8* }* %122
}

define internal { i64, i8* }* @parse__parse_module_decl(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = getelementptr [7 x i8], [7 x i8]* @.str931, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str931.c, i8* %30, i64 6)
  %32 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %31)
  %33 = getelementptr [11 x i8], [11 x i8]* @.str932, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str932.c, i8* %33, i64 10)
  %35 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %34)
  %36 = alloca %Token
  store %Token %35, %Token* %36
  %37 = load %Token, %Token* %36
  %38 = call %nyx_string* @get_token_value(%Token %37)
  %39 = alloca %nyx_string*
  store %nyx_string* %38, %nyx_string** %39
  %40 = getelementptr [7 x i8], [7 x i8]* @.str933, i32 0, i32 0
  %41 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str933.c, i8* %40, i64 6)
  %42 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %41)
  %43 = getelementptr [1 x i8], [1 x i8]* @.str934, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str934.c, i8* %43, i64 0)
  %45 = alloca %nyx_string*
  store %nyx_string* %44, %nyx_string** %45
  %46 = getelementptr [7 x i8], [7 x i8]* @.str935, i32 0, i32 0
  %47 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str935.c, i8* %46, i64 6)
  %48 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %47)
  br i1 %48, label %then0, label %else1
then0:
  %49 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %50 = alloca %Token
  store %Token %49, %Token* %50
  %51 = load %Token, %Token* %50
  %52 = call %nyx_string* @get_token_value(%Token %51)
  store %nyx_string* %52, %nyx_string** %45
  br label %merge2
else1:
  br label %merge2
merge2:
  %53 = getelementptr [13 x i8], [13 x i8]* @.str936, i32 0, i32 0
  %54 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str936.c, i8* %53, i64 12)
  %55 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %54)
  %56 = call { i64, i8* }* @nyx_array_new_ptr()
  %57 = alloca { i64, i8* }*
  store { i64, i8* }* %56, { i64, i8* }** %57
  %58 = alloca i1
  store i1 0, i1* %58
  %59 = call i8* @llvm.stacksave()
  br label %while_cond3
while_cond3:
  %60 = load i1, i1* %58
  %61 = xor i1 %60, true
  br i1 %61, label %while_body4, label %while_end5
while_body4:
  call void @llvm.stackrestore(i8* %59)
  %62 = getelementptr [14 x i8], [14 x i8]* @.str937, i32 0, i32 0
  %63 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str937.c, i8* %62, i64 13)
  %64 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %63)
  br i1 %64, label %then6, label %else7
then6:
  store i1 1, i1* %58
  br label %merge8
else7:
  %65 = getelementptr [11 x i8], [11 x i8]* @.str938, i32 0, i32 0
  %66 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str938.c, i8* %65, i64 10)
  %67 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %66)
  %68 = alloca %Token
  store %Token %67, %Token* %68
  %69 = load %Token, %Token* %68
  %70 = call %nyx_string* @get_token_value(%Token %69)
  %71 = alloca %nyx_string*
  store %nyx_string* %70, %nyx_string** %71
  %72 = load { i64, i8* }*, { i64, i8* }** %57
  %73 = load %nyx_string*, %nyx_string** %71
  %74 = ptrtoint %nyx_string* %73 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %72, i64 %74, i64 2)
  %75 = getelementptr [6 x i8], [6 x i8]* @.str939, i32 0, i32 0
  %76 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str939.c, i8* %75, i64 5)
  %77 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %76)
  br i1 %77, label %then9, label %else10
then9:
  %78 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge11
else10:
  br label %merge11
merge11:
  br label %merge8
merge8:
  br label %while_cond3
while_end5:
  %79 = getelementptr [14 x i8], [14 x i8]* @.str940, i32 0, i32 0
  %80 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str940.c, i8* %79, i64 13)
  %81 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %80)
  %82 = getelementptr [12 x i8], [12 x i8]* @.str941, i32 0, i32 0
  %83 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str941.c, i8* %82, i64 11)
  %84 = call { i64, i8* }* @nyx_array_new_ptr()
  %85 = load %nyx_string*, %nyx_string** %39
  %86 = ptrtoint %nyx_string* %85 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %84, i64 %86, i64 2)
  %87 = load { i64, i8* }*, { i64, i8* }** %57
  %88 = ptrtoint { i64, i8* }* %87 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %84, i64 %88, i64 5)
  %89 = load %nyx_string*, %nyx_string** %45
  %90 = ptrtoint %nyx_string* %89 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %84, i64 %90, i64 2)
  %91 = call { i64, i8* }* @make_astnode(%nyx_string* %83, { i64, i8* }* %84)
  ret { i64, i8* }* %91
}

define internal { i64, i8* }* @parse__parse_trait(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = getelementptr [6 x i8], [6 x i8]* @.str942, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str942.c, i8* %30, i64 5)
  %32 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %31)
  %33 = getelementptr [11 x i8], [11 x i8]* @.str943, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str943.c, i8* %33, i64 10)
  %35 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %34)
  %36 = alloca %Token
  store %Token %35, %Token* %36
  %37 = load %Token, %Token* %36
  %38 = call %nyx_string* @get_token_value(%Token %37)
  %39 = alloca %nyx_string*
  store %nyx_string* %38, %nyx_string** %39
  %40 = getelementptr [5 x i8], [5 x i8]* @.str944, i32 0, i32 0
  %41 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str944.c, i8* %40, i64 4)
  %42 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %41)
  br i1 %42, label %then0, label %else1
then0:
  %43 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %44 = alloca i1
  store i1 0, i1* %44
  %45 = call i8* @llvm.stacksave()
  br label %while_cond3
while_cond3:
  %46 = load i1, i1* %44
  %47 = xor i1 %46, true
  br i1 %47, label %while_body4, label %while_end5
while_body4:
  call void @llvm.stackrestore(i8* %45)
  %48 = getelementptr [8 x i8], [8 x i8]* @.str945, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str945.c, i8* %48, i64 7)
  %50 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %49)
  br i1 %50, label %then6, label %else7
then6:
  %51 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %44
  br label %merge8
else7:
  %52 = getelementptr [9 x i8], [9 x i8]* @.str946, i32 0, i32 0
  %53 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str946.c, i8* %52, i64 8)
  %54 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %53)
  br i1 %54, label %then9, label %else10
then9:
  %55 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge11
else10:
  %56 = getelementptr [11 x i8], [11 x i8]* @.str947, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str947.c, i8* %56, i64 10)
  %58 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %57)
  br i1 %58, label %then12, label %else13
then12:
  %59 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge14
else13:
  %60 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge14
merge14:
  br label %merge11
merge11:
  %61 = getelementptr [6 x i8], [6 x i8]* @.str948, i32 0, i32 0
  %62 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str948.c, i8* %61, i64 5)
  %63 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %62)
  br i1 %63, label %then15, label %else16
then15:
  %64 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge17
else16:
  %65 = getelementptr [8 x i8], [8 x i8]* @.str949, i32 0, i32 0
  %66 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str949.c, i8* %65, i64 7)
  %67 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %66)
  %68 = xor i1 %67, true
  br i1 %68, label %then18, label %else19
then18:
  store i1 1, i1* %44
  br label %merge20
else19:
  br label %merge20
merge20:
  br label %merge17
merge17:
  br label %merge8
merge8:
  br label %while_cond3
while_end5:
  br label %merge2
else1:
  br label %merge2
merge2:
  %69 = call { i64, i8* }* @nyx_array_new_ptr()
  %70 = alloca { i64, i8* }*
  store { i64, i8* }* %69, { i64, i8* }** %70
  %71 = getelementptr [6 x i8], [6 x i8]* @.str950, i32 0, i32 0
  %72 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str950.c, i8* %71, i64 5)
  %73 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %72)
  br i1 %73, label %then21, label %else22
then21:
  %74 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %75 = alloca i1
  store i1 1, i1* %75
  %76 = call i8* @llvm.stacksave()
  br label %while_cond24
while_cond24:
  %77 = load i1, i1* %75
  br i1 %77, label %while_body25, label %while_end26
while_body25:
  call void @llvm.stackrestore(i8* %76)
  %78 = getelementptr [11 x i8], [11 x i8]* @.str951, i32 0, i32 0
  %79 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str951.c, i8* %78, i64 10)
  %80 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %79)
  %81 = alloca %Token
  store %Token %80, %Token* %81
  %82 = load %Token, %Token* %81
  %83 = call %nyx_string* @get_token_value(%Token %82)
  %84 = alloca %nyx_string*
  store %nyx_string* %83, %nyx_string** %84
  %85 = load { i64, i8* }*, { i64, i8* }** %70
  %86 = load %nyx_string*, %nyx_string** %84
  %87 = ptrtoint %nyx_string* %86 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %85, i64 %87, i64 2)
  %88 = getelementptr [5 x i8], [5 x i8]* @.str952, i32 0, i32 0
  %89 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str952.c, i8* %88, i64 4)
  %90 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %89)
  br i1 %90, label %then27, label %else28
then27:
  %91 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge29
else28:
  store i1 0, i1* %75
  br label %merge29
merge29:
  br label %while_cond24
while_end26:
  br label %merge23
else22:
  br label %merge23
merge23:
  %92 = getelementptr [11 x i8], [11 x i8]* @.str953, i32 0, i32 0
  %93 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str953.c, i8* %92, i64 10)
  %94 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %93)
  %95 = call { i64, i8* }* @nyx_array_new_ptr()
  %96 = alloca { i64, i8* }*
  store { i64, i8* }* %95, { i64, i8* }** %96
  %97 = alloca i1
  store i1 0, i1* %97
  %98 = call i8* @llvm.stacksave()
  br label %while_cond30
while_cond30:
  %99 = load i1, i1* %97
  %100 = xor i1 %99, true
  br i1 %100, label %while_body31, label %while_end32
while_body31:
  call void @llvm.stackrestore(i8* %98)
  %101 = getelementptr [12 x i8], [12 x i8]* @.str954, i32 0, i32 0
  %102 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str954.c, i8* %101, i64 11)
  %103 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %102)
  br i1 %103, label %then33, label %else34
then33:
  %104 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %97
  br label %merge35
else34:
  %105 = alloca i1
  store i1 0, i1* %105
  %106 = getelementptr [11 x i8], [11 x i8]* @.str955, i32 0, i32 0
  %107 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str955.c, i8* %106, i64 10)
  %108 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %107)
  br i1 %108, label %then36, label %else37
then36:
  %109 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %110 = alloca %Token
  store %Token %109, %Token* %110
  %111 = load %Token, %Token* %110
  %112 = call %nyx_string* @get_token_value(%Token %111)
  %113 = getelementptr [5 x i8], [5 x i8]* @.str956, i32 0, i32 0
  %114 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str956.c, i8* %113, i64 4)
  %115 = call i1 @nyx_string_equals(%nyx_string* %112, %nyx_string* %114)
  br i1 %115, label %then39, label %else40
then39:
  %116 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %117 = getelementptr [11 x i8], [11 x i8]* @.str957, i32 0, i32 0
  %118 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str957.c, i8* %117, i64 10)
  %119 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %118)
  %120 = alloca %Token
  store %Token %119, %Token* %120
  %121 = load %Token, %Token* %120
  %122 = call %nyx_string* @get_token_value(%Token %121)
  %123 = alloca %nyx_string*
  store %nyx_string* %122, %nyx_string** %123
  %124 = call { i64, i8* }* @nyx_array_new_ptr()
  %125 = alloca { i64, i8* }*
  store { i64, i8* }* %124, { i64, i8* }** %125
  %126 = getelementptr [5 x i8], [5 x i8]* @.str958, i32 0, i32 0
  %127 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str958.c, i8* %126, i64 4)
  %128 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %127)
  br i1 %128, label %then42, label %else43
then42:
  %129 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %130 = alloca i1
  store i1 0, i1* %130
  %131 = call i8* @llvm.stacksave()
  br label %while_cond45
while_cond45:
  %132 = load i1, i1* %130
  %133 = xor i1 %132, true
  br i1 %133, label %while_body46, label %while_end47
while_body46:
  call void @llvm.stackrestore(i8* %131)
  %134 = getelementptr [8 x i8], [8 x i8]* @.str959, i32 0, i32 0
  %135 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str959.c, i8* %134, i64 7)
  %136 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %135)
  br i1 %136, label %then48, label %else49
then48:
  %137 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %130
  br label %merge50
else49:
  %138 = getelementptr [11 x i8], [11 x i8]* @.str960, i32 0, i32 0
  %139 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str960.c, i8* %138, i64 10)
  %140 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %139)
  br i1 %140, label %then51, label %else52
then51:
  %141 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %142 = alloca %Token
  store %Token %141, %Token* %142
  %143 = load { i64, i8* }*, { i64, i8* }** %125
  %144 = load %Token, %Token* %142
  %145 = call %nyx_string* @get_token_value(%Token %144)
  %146 = ptrtoint %nyx_string* %145 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %143, i64 %146, i64 2)
  br label %merge53
else52:
  %147 = getelementptr [9 x i8], [9 x i8]* @.str961, i32 0, i32 0
  %148 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str961.c, i8* %147, i64 8)
  %149 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %148)
  br i1 %149, label %then54, label %else55
then54:
  %150 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %151 = alloca %Token
  store %Token %150, %Token* %151
  %152 = load { i64, i8* }*, { i64, i8* }** %125
  %153 = load %Token, %Token* %151
  %154 = call %nyx_string* @get_token_value(%Token %153)
  %155 = ptrtoint %nyx_string* %154 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %152, i64 %155, i64 2)
  br label %merge56
else55:
  %156 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge56
merge56:
  br label %merge53
merge53:
  %157 = getelementptr [6 x i8], [6 x i8]* @.str962, i32 0, i32 0
  %158 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str962.c, i8* %157, i64 5)
  %159 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %158)
  br i1 %159, label %then57, label %else58
then57:
  %160 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge59
else58:
  br label %merge59
merge59:
  br label %merge50
merge50:
  br label %while_cond45
while_end47:
  br label %merge44
else43:
  br label %merge44
merge44:
  %161 = load { i64, i8* }*, { i64, i8* }** %96
  %162 = call { i64, i8* }* @nyx_array_new_ptr()
  %163 = getelementptr [15 x i8], [15 x i8]* @.str963, i32 0, i32 0
  %164 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str963.c, i8* %163, i64 14)
  %165 = ptrtoint %nyx_string* %164 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %162, i64 %165, i64 2)
  %166 = load %nyx_string*, %nyx_string** %123
  %167 = ptrtoint %nyx_string* %166 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %162, i64 %167, i64 2)
  %168 = load { i64, i8* }*, { i64, i8* }** %125
  %169 = ptrtoint { i64, i8* }* %168 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %162, i64 %169, i64 5)
  %170 = ptrtoint { i64, i8* }* %162 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %161, i64 %170, i64 5)
  store i1 1, i1* %105
  br label %merge41
else40:
  br label %merge41
merge41:
  br label %merge38
else37:
  br label %merge38
merge38:
  %171 = load i1, i1* %105
  %172 = xor i1 %171, true
  br i1 %172, label %then60, label %else61
then60:
  %173 = getelementptr [3 x i8], [3 x i8]* @.str964, i32 0, i32 0
  %174 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str964.c, i8* %173, i64 2)
  %175 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %174)
  %176 = getelementptr [11 x i8], [11 x i8]* @.str965, i32 0, i32 0
  %177 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str965.c, i8* %176, i64 10)
  %178 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %177)
  %179 = alloca %Token
  store %Token %178, %Token* %179
  %180 = load %Token, %Token* %179
  %181 = call %nyx_string* @get_token_value(%Token %180)
  %182 = alloca %nyx_string*
  store %nyx_string* %181, %nyx_string** %182
  %183 = getelementptr [5 x i8], [5 x i8]* @.str966, i32 0, i32 0
  %184 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str966.c, i8* %183, i64 4)
  %185 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %184)
  br i1 %185, label %then63, label %else64
then63:
  %186 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %187 = alloca i1
  store i1 0, i1* %187
  %188 = call i8* @llvm.stacksave()
  br label %while_cond66
while_cond66:
  %189 = load i1, i1* %187
  %190 = xor i1 %189, true
  br i1 %190, label %while_body67, label %while_end68
while_body67:
  call void @llvm.stackrestore(i8* %188)
  %191 = getelementptr [8 x i8], [8 x i8]* @.str967, i32 0, i32 0
  %192 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str967.c, i8* %191, i64 7)
  %193 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %192)
  br i1 %193, label %then69, label %else70
then69:
  %194 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %187
  br label %merge71
else70:
  %195 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge71
merge71:
  br label %while_cond66
while_end68:
  br label %merge65
else64:
  br label %merge65
merge65:
  %196 = getelementptr [11 x i8], [11 x i8]* @.str968, i32 0, i32 0
  %197 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str968.c, i8* %196, i64 10)
  %198 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %197)
  %199 = call { i64, i8* }* @nyx_array_new_ptr()
  %200 = alloca { i64, i8* }*
  store { i64, i8* }* %199, { i64, i8* }** %200
  %201 = alloca i1
  store i1 0, i1* %201
  %202 = call i8* @llvm.stacksave()
  br label %while_cond72
while_cond72:
  %203 = load i1, i1* %201
  %204 = xor i1 %203, true
  br i1 %204, label %while_body73, label %while_end74
while_body73:
  call void @llvm.stackrestore(i8* %202)
  %205 = getelementptr [12 x i8], [12 x i8]* @.str969, i32 0, i32 0
  %206 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str969.c, i8* %205, i64 11)
  %207 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %206)
  br i1 %207, label %then75, label %else76
then75:
  %208 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %201
  br label %merge77
else76:
  %209 = load { i64, i8* }*, { i64, i8* }** %200
  %210 = call i64 @nyx_array_length({ i64, i8* }* %209)
  %211 = icmp sgt i64 %210, 0
  br i1 %211, label %then78, label %else79
then78:
  %212 = getelementptr [6 x i8], [6 x i8]* @.str970, i32 0, i32 0
  %213 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str970.c, i8* %212, i64 5)
  %214 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %213)
  br label %merge80
else79:
  br label %merge80
merge80:
  %215 = getelementptr [11 x i8], [11 x i8]* @.str971, i32 0, i32 0
  %216 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str971.c, i8* %215, i64 10)
  %217 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %216)
  %218 = alloca %Token
  store %Token %217, %Token* %218
  %219 = load %Token, %Token* %218
  %220 = call %nyx_string* @get_token_value(%Token %219)
  %221 = alloca %nyx_string*
  store %nyx_string* %220, %nyx_string** %221
  %222 = getelementptr [1 x i8], [1 x i8]* @.str972, i32 0, i32 0
  %223 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str972.c, i8* %222, i64 0)
  %224 = alloca %nyx_string*
  store %nyx_string* %223, %nyx_string** %224
  %225 = getelementptr [6 x i8], [6 x i8]* @.str973, i32 0, i32 0
  %226 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str973.c, i8* %225, i64 5)
  %227 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %226)
  br i1 %227, label %then81, label %else82
then81:
  %228 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %229 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %229, %nyx_string** %224
  br label %merge83
else82:
  br label %merge83
merge83:
  %230 = load { i64, i8* }*, { i64, i8* }** %200
  %231 = call { i64, i8* }* @nyx_array_new_ptr()
  %232 = load %nyx_string*, %nyx_string** %221
  %233 = ptrtoint %nyx_string* %232 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %231, i64 %233, i64 2)
  %234 = load %nyx_string*, %nyx_string** %224
  %235 = ptrtoint %nyx_string* %234 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %231, i64 %235, i64 2)
  %236 = ptrtoint { i64, i8* }* %231 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %230, i64 %236, i64 5)
  br label %merge77
merge77:
  br label %while_cond72
while_end74:
  %237 = getelementptr [1 x i8], [1 x i8]* @.str974, i32 0, i32 0
  %238 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str974.c, i8* %237, i64 0)
  %239 = alloca %nyx_string*
  store %nyx_string* %238, %nyx_string** %239
  %240 = getelementptr [6 x i8], [6 x i8]* @.str975, i32 0, i32 0
  %241 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str975.c, i8* %240, i64 5)
  %242 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %241)
  br i1 %242, label %then84, label %else85
then84:
  %243 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %244 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %244, %nyx_string** %239
  br label %merge86
else85:
  br label %merge86
merge86:
  %245 = getelementptr [11 x i8], [11 x i8]* @.str976, i32 0, i32 0
  %246 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str976.c, i8* %245, i64 10)
  %247 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %246)
  br i1 %247, label %then87, label %else88
then87:
  %248 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %249 = alloca { i64, i8* }*
  store { i64, i8* }* %248, { i64, i8* }** %249
  %250 = load { i64, i8* }*, { i64, i8* }** %96
  %251 = call { i64, i8* }* @nyx_array_new_ptr()
  %252 = load %nyx_string*, %nyx_string** %182
  %253 = ptrtoint %nyx_string* %252 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %251, i64 %253, i64 2)
  %254 = load { i64, i8* }*, { i64, i8* }** %200
  %255 = ptrtoint { i64, i8* }* %254 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %251, i64 %255, i64 5)
  %256 = load %nyx_string*, %nyx_string** %239
  %257 = ptrtoint %nyx_string* %256 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %251, i64 %257, i64 2)
  %258 = load { i64, i8* }*, { i64, i8* }** %249
  %259 = ptrtoint { i64, i8* }* %258 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %251, i64 %259, i64 5)
  %260 = ptrtoint { i64, i8* }* %251 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %250, i64 %260, i64 5)
  br label %merge89
else88:
  %261 = load { i64, i8* }*, { i64, i8* }** %96
  %262 = call { i64, i8* }* @nyx_array_new_ptr()
  %263 = load %nyx_string*, %nyx_string** %182
  %264 = ptrtoint %nyx_string* %263 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %262, i64 %264, i64 2)
  %265 = load { i64, i8* }*, { i64, i8* }** %200
  %266 = ptrtoint { i64, i8* }* %265 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %262, i64 %266, i64 5)
  %267 = load %nyx_string*, %nyx_string** %239
  %268 = ptrtoint %nyx_string* %267 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %262, i64 %268, i64 2)
  %269 = ptrtoint { i64, i8* }* %262 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %261, i64 %269, i64 5)
  br label %merge89
merge89:
  br label %merge62
else61:
  br label %merge62
merge62:
  br label %merge35
merge35:
  br label %while_cond30
while_end32:
  %270 = getelementptr [10 x i8], [10 x i8]* @.str977, i32 0, i32 0
  %271 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str977.c, i8* %270, i64 9)
  %272 = call { i64, i8* }* @nyx_array_new_ptr()
  %273 = load %nyx_string*, %nyx_string** %39
  %274 = ptrtoint %nyx_string* %273 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %272, i64 %274, i64 2)
  %275 = load { i64, i8* }*, { i64, i8* }** %70
  %276 = ptrtoint { i64, i8* }* %275 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %272, i64 %276, i64 5)
  %277 = load { i64, i8* }*, { i64, i8* }** %96
  %278 = ptrtoint { i64, i8* }* %277 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %272, i64 %278, i64 5)
  %279 = call { i64, i8* }* @make_astnode(%nyx_string* %271, { i64, i8* }* %272)
  ret { i64, i8* }* %279
}

define internal { i64, i8* }* @parse__parse_impl(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = getelementptr [5 x i8], [5 x i8]* @.str978, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str978.c, i8* %30, i64 4)
  %32 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %31)
  %33 = call { i64, i8* }* @nyx_array_new_ptr()
  %34 = alloca { i64, i8* }*
  store { i64, i8* }* %33, { i64, i8* }** %34
  %35 = getelementptr [5 x i8], [5 x i8]* @.str979, i32 0, i32 0
  %36 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str979.c, i8* %35, i64 4)
  %37 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %36)
  br i1 %37, label %then0, label %else1
then0:
  %38 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %39 = getelementptr [9 x i8], [9 x i8]* @.str980, i32 0, i32 0
  %40 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str980.c, i8* %39, i64 8)
  %41 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %40)
  br i1 %41, label %then3, label %else4
then3:
  %42 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %43 = alloca %Token
  store %Token %42, %Token* %43
  %44 = load { i64, i8* }*, { i64, i8* }** %34
  %45 = load %Token, %Token* %43
  %46 = call %nyx_string* @get_token_value(%Token %45)
  %47 = ptrtoint %nyx_string* %46 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %44, i64 %47, i64 2)
  br label %merge5
else4:
  %48 = getelementptr [11 x i8], [11 x i8]* @.str981, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str981.c, i8* %48, i64 10)
  %50 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %49)
  %51 = alloca %Token
  store %Token %50, %Token* %51
  %52 = load %Token, %Token* %51
  %53 = call %nyx_string* @get_token_value(%Token %52)
  %54 = alloca %nyx_string*
  store %nyx_string* %53, %nyx_string** %54
  %55 = getelementptr [6 x i8], [6 x i8]* @.str982, i32 0, i32 0
  %56 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str982.c, i8* %55, i64 5)
  %57 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %56)
  br i1 %57, label %then6, label %else7
then6:
  %58 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %59 = getelementptr [11 x i8], [11 x i8]* @.str983, i32 0, i32 0
  %60 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str983.c, i8* %59, i64 10)
  %61 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %60)
  %62 = alloca %Token
  store %Token %61, %Token* %62
  %63 = load %Token, %Token* %62
  %64 = call %nyx_string* @get_token_value(%Token %63)
  %65 = alloca %nyx_string*
  store %nyx_string* %64, %nyx_string** %65
  %66 = call i8* @llvm.stacksave()
  br label %while_cond9
while_cond9:
  %67 = getelementptr [5 x i8], [5 x i8]* @.str984, i32 0, i32 0
  %68 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str984.c, i8* %67, i64 4)
  %69 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %68)
  br i1 %69, label %while_body10, label %while_end11
while_body10:
  call void @llvm.stackrestore(i8* %66)
  %70 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %71 = getelementptr [11 x i8], [11 x i8]* @.str985, i32 0, i32 0
  %72 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str985.c, i8* %71, i64 10)
  %73 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %72)
  %74 = alloca %Token
  store %Token %73, %Token* %74
  %75 = load %nyx_string*, %nyx_string** %65
  %76 = getelementptr [2 x i8], [2 x i8]* @.str986, i32 0, i32 0
  %77 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str986.c, i8* %76, i64 1)
  %78 = call %nyx_string* @nyx_string_concat(%nyx_string* %75, %nyx_string* %77)
  %79 = load %Token, %Token* %74
  %80 = call %nyx_string* @get_token_value(%Token %79)
  %81 = call %nyx_string* @nyx_string_concat(%nyx_string* %78, %nyx_string* %80)
  store %nyx_string* %81, %nyx_string** %65
  br label %while_cond9
while_end11:
  %82 = load %nyx_string*, %nyx_string** %54
  %83 = getelementptr [2 x i8], [2 x i8]* @.str987, i32 0, i32 0
  %84 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str987.c, i8* %83, i64 1)
  %85 = call %nyx_string* @nyx_string_concat(%nyx_string* %82, %nyx_string* %84)
  %86 = load %nyx_string*, %nyx_string** %65
  %87 = call %nyx_string* @nyx_string_concat(%nyx_string* %85, %nyx_string* %86)
  store %nyx_string* %87, %nyx_string** %54
  br label %merge8
else7:
  br label %merge8
merge8:
  %88 = load { i64, i8* }*, { i64, i8* }** %34
  %89 = load %nyx_string*, %nyx_string** %54
  %90 = ptrtoint %nyx_string* %89 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %88, i64 %90, i64 2)
  br label %merge5
merge5:
  %91 = alloca i1
  store i1 0, i1* %91
  %92 = call i8* @llvm.stacksave()
  br label %while_cond12
while_cond12:
  %93 = load i1, i1* %91
  %94 = xor i1 %93, true
  br i1 %94, label %while_body13, label %while_end14
while_body13:
  call void @llvm.stackrestore(i8* %92)
  %95 = getelementptr [6 x i8], [6 x i8]* @.str988, i32 0, i32 0
  %96 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str988.c, i8* %95, i64 5)
  %97 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %96)
  br i1 %97, label %then15, label %else16
then15:
  %98 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %99 = getelementptr [9 x i8], [9 x i8]* @.str989, i32 0, i32 0
  %100 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str989.c, i8* %99, i64 8)
  %101 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %100)
  br i1 %101, label %then18, label %else19
then18:
  %102 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %103 = alloca %Token
  store %Token %102, %Token* %103
  %104 = load { i64, i8* }*, { i64, i8* }** %34
  %105 = load %Token, %Token* %103
  %106 = call %nyx_string* @get_token_value(%Token %105)
  %107 = ptrtoint %nyx_string* %106 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %104, i64 %107, i64 2)
  br label %merge20
else19:
  %108 = getelementptr [11 x i8], [11 x i8]* @.str990, i32 0, i32 0
  %109 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str990.c, i8* %108, i64 10)
  %110 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %109)
  %111 = alloca %Token
  store %Token %110, %Token* %111
  %112 = load %Token, %Token* %111
  %113 = call %nyx_string* @get_token_value(%Token %112)
  %114 = alloca %nyx_string*
  store %nyx_string* %113, %nyx_string** %114
  %115 = getelementptr [6 x i8], [6 x i8]* @.str991, i32 0, i32 0
  %116 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str991.c, i8* %115, i64 5)
  %117 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %116)
  br i1 %117, label %then21, label %else22
then21:
  %118 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %119 = getelementptr [11 x i8], [11 x i8]* @.str992, i32 0, i32 0
  %120 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str992.c, i8* %119, i64 10)
  %121 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %120)
  %122 = alloca %Token
  store %Token %121, %Token* %122
  %123 = load %Token, %Token* %122
  %124 = call %nyx_string* @get_token_value(%Token %123)
  %125 = alloca %nyx_string*
  store %nyx_string* %124, %nyx_string** %125
  %126 = call i8* @llvm.stacksave()
  br label %while_cond24
while_cond24:
  %127 = getelementptr [5 x i8], [5 x i8]* @.str993, i32 0, i32 0
  %128 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str993.c, i8* %127, i64 4)
  %129 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %128)
  br i1 %129, label %while_body25, label %while_end26
while_body25:
  call void @llvm.stackrestore(i8* %126)
  %130 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %131 = getelementptr [11 x i8], [11 x i8]* @.str994, i32 0, i32 0
  %132 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str994.c, i8* %131, i64 10)
  %133 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %132)
  %134 = alloca %Token
  store %Token %133, %Token* %134
  %135 = load %nyx_string*, %nyx_string** %125
  %136 = getelementptr [2 x i8], [2 x i8]* @.str995, i32 0, i32 0
  %137 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str995.c, i8* %136, i64 1)
  %138 = call %nyx_string* @nyx_string_concat(%nyx_string* %135, %nyx_string* %137)
  %139 = load %Token, %Token* %134
  %140 = call %nyx_string* @get_token_value(%Token %139)
  %141 = call %nyx_string* @nyx_string_concat(%nyx_string* %138, %nyx_string* %140)
  store %nyx_string* %141, %nyx_string** %125
  br label %while_cond24
while_end26:
  %142 = load %nyx_string*, %nyx_string** %114
  %143 = getelementptr [2 x i8], [2 x i8]* @.str996, i32 0, i32 0
  %144 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str996.c, i8* %143, i64 1)
  %145 = call %nyx_string* @nyx_string_concat(%nyx_string* %142, %nyx_string* %144)
  %146 = load %nyx_string*, %nyx_string** %125
  %147 = call %nyx_string* @nyx_string_concat(%nyx_string* %145, %nyx_string* %146)
  store %nyx_string* %147, %nyx_string** %114
  br label %merge23
else22:
  br label %merge23
merge23:
  %148 = load { i64, i8* }*, { i64, i8* }** %34
  %149 = load %nyx_string*, %nyx_string** %114
  %150 = ptrtoint %nyx_string* %149 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %148, i64 %150, i64 2)
  br label %merge20
merge20:
  br label %merge17
else16:
  store i1 1, i1* %91
  br label %merge17
merge17:
  br label %while_cond12
while_end14:
  %151 = getelementptr [8 x i8], [8 x i8]* @.str997, i32 0, i32 0
  %152 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str997.c, i8* %151, i64 7)
  %153 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %152)
  br label %merge2
else1:
  br label %merge2
merge2:
  %154 = getelementptr [11 x i8], [11 x i8]* @.str998, i32 0, i32 0
  %155 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str998.c, i8* %154, i64 10)
  %156 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %155)
  %157 = alloca %Token
  store %Token %156, %Token* %157
  %158 = load %Token, %Token* %157
  %159 = call %nyx_string* @get_token_value(%Token %158)
  %160 = alloca %nyx_string*
  store %nyx_string* %159, %nyx_string** %160
  %161 = getelementptr [4 x i8], [4 x i8]* @.str999, i32 0, i32 0
  %162 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str999.c, i8* %161, i64 3)
  %163 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %162)
  br i1 %163, label %then27, label %else28
then27:
  %164 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %165 = getelementptr [11 x i8], [11 x i8]* @.str1000, i32 0, i32 0
  %166 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1000.c, i8* %165, i64 10)
  %167 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %166)
  %168 = alloca %Token
  store %Token %167, %Token* %168
  %169 = load %Token, %Token* %168
  %170 = call %nyx_string* @get_token_value(%Token %169)
  %171 = alloca %nyx_string*
  store %nyx_string* %170, %nyx_string** %171
  %172 = getelementptr [11 x i8], [11 x i8]* @.str1001, i32 0, i32 0
  %173 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1001.c, i8* %172, i64 10)
  %174 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %173)
  %175 = call { i64, i8* }* @nyx_array_new_ptr()
  %176 = alloca { i64, i8* }*
  store { i64, i8* }* %175, { i64, i8* }** %176
  %177 = call { i64, i8* }* @nyx_array_new_ptr()
  %178 = alloca { i64, i8* }*
  store { i64, i8* }* %177, { i64, i8* }** %178
  %179 = alloca i1
  store i1 0, i1* %179
  %180 = call i8* @llvm.stacksave()
  br label %while_cond30
while_cond30:
  %181 = load i1, i1* %179
  %182 = xor i1 %181, true
  br i1 %182, label %while_body31, label %while_end32
while_body31:
  call void @llvm.stackrestore(i8* %180)
  %183 = getelementptr [12 x i8], [12 x i8]* @.str1002, i32 0, i32 0
  %184 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1002.c, i8* %183, i64 11)
  %185 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %184)
  br i1 %185, label %then33, label %else34
then33:
  %186 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %179
  br label %merge35
else34:
  %187 = alloca i1
  store i1 0, i1* %187
  %188 = getelementptr [11 x i8], [11 x i8]* @.str1003, i32 0, i32 0
  %189 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1003.c, i8* %188, i64 10)
  %190 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %189)
  br i1 %190, label %then36, label %else37
then36:
  %191 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %192 = alloca %Token
  store %Token %191, %Token* %192
  %193 = load %Token, %Token* %192
  %194 = call %nyx_string* @get_token_value(%Token %193)
  %195 = getelementptr [5 x i8], [5 x i8]* @.str1004, i32 0, i32 0
  %196 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1004.c, i8* %195, i64 4)
  %197 = call i1 @nyx_string_equals(%nyx_string* %194, %nyx_string* %196)
  br i1 %197, label %then39, label %else40
then39:
  %198 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %199 = getelementptr [11 x i8], [11 x i8]* @.str1005, i32 0, i32 0
  %200 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1005.c, i8* %199, i64 10)
  %201 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %200)
  %202 = alloca %Token
  store %Token %201, %Token* %202
  %203 = load %Token, %Token* %202
  %204 = call %nyx_string* @get_token_value(%Token %203)
  %205 = alloca %nyx_string*
  store %nyx_string* %204, %nyx_string** %205
  %206 = getelementptr [5 x i8], [5 x i8]* @.str1006, i32 0, i32 0
  %207 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1006.c, i8* %206, i64 4)
  %208 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %207)
  br i1 %208, label %then42, label %else43
then42:
  %209 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %210 = alloca i1
  store i1 0, i1* %210
  %211 = call i8* @llvm.stacksave()
  br label %while_cond45
while_cond45:
  %212 = load i1, i1* %210
  %213 = xor i1 %212, true
  br i1 %213, label %while_body46, label %while_end47
while_body46:
  call void @llvm.stackrestore(i8* %211)
  %214 = getelementptr [8 x i8], [8 x i8]* @.str1007, i32 0, i32 0
  %215 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1007.c, i8* %214, i64 7)
  %216 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %215)
  br i1 %216, label %then48, label %else49
then48:
  %217 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %210
  br label %merge50
else49:
  %218 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge50
merge50:
  br label %while_cond45
while_end47:
  br label %merge44
else43:
  br label %merge44
merge44:
  %219 = getelementptr [7 x i8], [7 x i8]* @.str1008, i32 0, i32 0
  %220 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1008.c, i8* %219, i64 6)
  %221 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %220)
  %222 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %223 = alloca %nyx_string*
  store %nyx_string* %222, %nyx_string** %223
  %224 = load { i64, i8* }*, { i64, i8* }** %178
  %225 = call { i64, i8* }* @nyx_array_new_ptr()
  %226 = load %nyx_string*, %nyx_string** %205
  %227 = ptrtoint %nyx_string* %226 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %225, i64 %227, i64 2)
  %228 = load %nyx_string*, %nyx_string** %223
  %229 = ptrtoint %nyx_string* %228 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %225, i64 %229, i64 2)
  %230 = ptrtoint { i64, i8* }* %225 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %224, i64 %230, i64 5)
  store i1 1, i1* %187
  br label %merge41
else40:
  br label %merge41
merge41:
  br label %merge38
else37:
  br label %merge38
merge38:
  %231 = load i1, i1* %187
  %232 = xor i1 %231, true
  br i1 %232, label %then51, label %else52
then51:
  %233 = call { i64, i8* }* @parse__parse_function(%SharedEnv_parse* %env.param)
  %234 = alloca { i64, i8* }*
  store { i64, i8* }* %233, { i64, i8* }** %234
  %235 = load { i64, i8* }*, { i64, i8* }** %176
  %236 = load { i64, i8* }*, { i64, i8* }** %234
  %237 = ptrtoint { i64, i8* }* %236 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %235, i64 %237, i64 5)
  br label %merge53
else52:
  br label %merge53
merge53:
  br label %merge35
merge35:
  br label %while_cond30
while_end32:
  %238 = getelementptr [11 x i8], [11 x i8]* @.str1009, i32 0, i32 0
  %239 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1009.c, i8* %238, i64 10)
  %240 = call { i64, i8* }* @nyx_array_new_ptr()
  %241 = load %nyx_string*, %nyx_string** %160
  %242 = ptrtoint %nyx_string* %241 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %240, i64 %242, i64 2)
  %243 = load %nyx_string*, %nyx_string** %171
  %244 = ptrtoint %nyx_string* %243 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %240, i64 %244, i64 2)
  %245 = load { i64, i8* }*, { i64, i8* }** %176
  %246 = ptrtoint { i64, i8* }* %245 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %240, i64 %246, i64 5)
  %247 = load { i64, i8* }*, { i64, i8* }** %178
  %248 = ptrtoint { i64, i8* }* %247 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %240, i64 %248, i64 5)
  %249 = call { i64, i8* }* @make_astnode(%nyx_string* %239, { i64, i8* }* %240)
  ret { i64, i8* }* %249
else28:
  br label %merge29
merge29:
  %250 = getelementptr [5 x i8], [5 x i8]* @.str1010, i32 0, i32 0
  %251 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1010.c, i8* %250, i64 4)
  %252 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %251)
  br i1 %252, label %then54, label %else55
then54:
  %253 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %254 = call { i64, i8* }* @nyx_array_new_ptr()
  %255 = alloca { i64, i8* }*
  store { i64, i8* }* %254, { i64, i8* }** %255
  %256 = alloca i1
  store i1 1, i1* %256
  %257 = alloca i1
  store i1 0, i1* %257
  %258 = call i8* @llvm.stacksave()
  br label %while_cond57
while_cond57:
  %259 = load i1, i1* %257
  %260 = xor i1 %259, true
  br i1 %260, label %while_body58, label %while_end59
while_body58:
  call void @llvm.stackrestore(i8* %258)
  %261 = getelementptr [8 x i8], [8 x i8]* @.str1011, i32 0, i32 0
  %262 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1011.c, i8* %261, i64 7)
  %263 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %262)
  br i1 %263, label %then60, label %else61
then60:
  %264 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %257
  br label %merge62
else61:
  %265 = getelementptr [11 x i8], [11 x i8]* @.str1012, i32 0, i32 0
  %266 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1012.c, i8* %265, i64 10)
  %267 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %266)
  br i1 %267, label %then63, label %else64
then63:
  %268 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %269 = alloca %Token
  store %Token %268, %Token* %269
  %270 = load { i64, i8* }*, { i64, i8* }** %255
  %271 = load %Token, %Token* %269
  %272 = call %nyx_string* @get_token_value(%Token %271)
  %273 = ptrtoint %nyx_string* %272 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %270, i64 %273, i64 2)
  br label %merge65
else64:
  %274 = getelementptr [6 x i8], [6 x i8]* @.str1013, i32 0, i32 0
  %275 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1013.c, i8* %274, i64 5)
  %276 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %275)
  br i1 %276, label %then66, label %else67
then66:
  %277 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge68
else67:
  store i1 0, i1* %256
  %278 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge68
merge68:
  br label %merge65
merge65:
  br label %merge62
merge62:
  br label %while_cond57
while_end59:
  %279 = alloca i1
  store i1 false, i1* %279
  %280 = alloca i1
  store i1 false, i1* %280
  %281 = load { i64, i8* }*, { i64, i8* }** %34
  %282 = call i64 @nyx_array_length({ i64, i8* }* %281)
  %283 = icmp eq i64 %282, 0
  br i1 %283, label %sc_and_rhs69, label %sc_and_end70
sc_and_rhs69:
  %284 = load i1, i1* %256
  store i1 %284, i1* %280
  br label %sc_and_end70
sc_and_end70:
  %285 = load i1, i1* %280
  br i1 %285, label %sc_and_rhs71, label %sc_and_end72
sc_and_rhs71:
  %286 = load { i64, i8* }*, { i64, i8* }** %255
  %287 = call i64 @nyx_array_length({ i64, i8* }* %286)
  %288 = icmp sgt i64 %287, 0
  store i1 %288, i1* %279
  br label %sc_and_end72
sc_and_end72:
  %289 = load i1, i1* %279
  br i1 %289, label %then73, label %else74
then73:
  %290 = alloca i1
  store i1 1, i1* %290
  %291 = alloca i64
  store i64 0, i64* %291
  %292 = call i8* @llvm.stacksave()
  br label %while_cond76
while_cond76:
  %293 = load i64, i64* %291
  %294 = load { i64, i8* }*, { i64, i8* }** %255
  %295 = call i64 @nyx_array_length({ i64, i8* }* %294)
  %296 = icmp slt i64 %293, %295
  br i1 %296, label %while_body77, label %while_end78
while_body77:
  call void @llvm.stackrestore(i8* %292)
  %297 = load { i64, i8* }*, { i64, i8* }** %255
  %298 = load i64, i64* %291
  %299 = call i64 @nyx_array_get_checked({ i64, i8* }* %297, i64 %298, i64 2)
  %300 = inttoptr i64 %299 to %nyx_string*
  %301 = alloca %nyx_string*
  store %nyx_string* %300, %nyx_string** %301
  %302 = alloca i1
  store i1 true, i1* %302
  %303 = alloca i1
  store i1 true, i1* %303
  %304 = alloca i1
  store i1 true, i1* %304
  %305 = alloca i1
  store i1 true, i1* %305
  %306 = alloca i1
  store i1 true, i1* %306
  %307 = alloca i1
  store i1 true, i1* %307
  %308 = alloca i1
  store i1 true, i1* %308
  %309 = alloca i1
  store i1 true, i1* %309
  %310 = alloca i1
  store i1 true, i1* %310
  %311 = alloca i1
  store i1 true, i1* %311
  %312 = alloca i1
  store i1 true, i1* %312
  %313 = alloca i1
  store i1 true, i1* %313
  %314 = alloca i1
  store i1 true, i1* %314
  %315 = alloca i1
  store i1 true, i1* %315
  %316 = alloca i1
  store i1 true, i1* %316
  %317 = load %nyx_string*, %nyx_string** %301
  %318 = getelementptr [4 x i8], [4 x i8]* @.str1014, i32 0, i32 0
  %319 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1014.c, i8* %318, i64 3)
  %320 = call i1 @nyx_string_equals(%nyx_string* %317, %nyx_string* %319)
  br i1 %320, label %sc_or_end80, label %sc_or_rhs79
sc_or_rhs79:
  %321 = load %nyx_string*, %nyx_string** %301
  %322 = getelementptr [6 x i8], [6 x i8]* @.str1015, i32 0, i32 0
  %323 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1015.c, i8* %322, i64 5)
  %324 = call i1 @nyx_string_equals(%nyx_string* %321, %nyx_string* %323)
  store i1 %324, i1* %316
  br label %sc_or_end80
sc_or_end80:
  %325 = load i1, i1* %316
  br i1 %325, label %sc_or_end82, label %sc_or_rhs81
sc_or_rhs81:
  %326 = load %nyx_string*, %nyx_string** %301
  %327 = getelementptr [5 x i8], [5 x i8]* @.str1016, i32 0, i32 0
  %328 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1016.c, i8* %327, i64 4)
  %329 = call i1 @nyx_string_equals(%nyx_string* %326, %nyx_string* %328)
  store i1 %329, i1* %315
  br label %sc_or_end82
sc_or_end82:
  %330 = load i1, i1* %315
  br i1 %330, label %sc_or_end84, label %sc_or_rhs83
sc_or_rhs83:
  %331 = load %nyx_string*, %nyx_string** %301
  %332 = getelementptr [7 x i8], [7 x i8]* @.str1017, i32 0, i32 0
  %333 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1017.c, i8* %332, i64 6)
  %334 = call i1 @nyx_string_equals(%nyx_string* %331, %nyx_string* %333)
  store i1 %334, i1* %314
  br label %sc_or_end84
sc_or_end84:
  %335 = load i1, i1* %314
  br i1 %335, label %sc_or_end86, label %sc_or_rhs85
sc_or_rhs85:
  %336 = load %nyx_string*, %nyx_string** %301
  %337 = getelementptr [5 x i8], [5 x i8]* @.str1018, i32 0, i32 0
  %338 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1018.c, i8* %337, i64 4)
  %339 = call i1 @nyx_string_equals(%nyx_string* %336, %nyx_string* %338)
  store i1 %339, i1* %313
  br label %sc_or_end86
sc_or_end86:
  %340 = load i1, i1* %313
  br i1 %340, label %sc_or_end88, label %sc_or_rhs87
sc_or_rhs87:
  %341 = load %nyx_string*, %nyx_string** %301
  %342 = getelementptr [3 x i8], [3 x i8]* @.str1019, i32 0, i32 0
  %343 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1019.c, i8* %342, i64 2)
  %344 = call i1 @nyx_string_equals(%nyx_string* %341, %nyx_string* %343)
  store i1 %344, i1* %312
  br label %sc_or_end88
sc_or_end88:
  %345 = load i1, i1* %312
  br i1 %345, label %sc_or_end90, label %sc_or_rhs89
sc_or_rhs89:
  %346 = load %nyx_string*, %nyx_string** %301
  %347 = getelementptr [4 x i8], [4 x i8]* @.str1020, i32 0, i32 0
  %348 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1020.c, i8* %347, i64 3)
  %349 = call i1 @nyx_string_equals(%nyx_string* %346, %nyx_string* %348)
  store i1 %349, i1* %311
  br label %sc_or_end90
sc_or_end90:
  %350 = load i1, i1* %311
  br i1 %350, label %sc_or_end92, label %sc_or_rhs91
sc_or_rhs91:
  %351 = load %nyx_string*, %nyx_string** %301
  %352 = getelementptr [4 x i8], [4 x i8]* @.str1021, i32 0, i32 0
  %353 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1021.c, i8* %352, i64 3)
  %354 = call i1 @nyx_string_equals(%nyx_string* %351, %nyx_string* %353)
  store i1 %354, i1* %310
  br label %sc_or_end92
sc_or_end92:
  %355 = load i1, i1* %310
  br i1 %355, label %sc_or_end94, label %sc_or_rhs93
sc_or_rhs93:
  %356 = load %nyx_string*, %nyx_string** %301
  %357 = getelementptr [3 x i8], [3 x i8]* @.str1022, i32 0, i32 0
  %358 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1022.c, i8* %357, i64 2)
  %359 = call i1 @nyx_string_equals(%nyx_string* %356, %nyx_string* %358)
  store i1 %359, i1* %309
  br label %sc_or_end94
sc_or_end94:
  %360 = load i1, i1* %309
  br i1 %360, label %sc_or_end96, label %sc_or_rhs95
sc_or_rhs95:
  %361 = load %nyx_string*, %nyx_string** %301
  %362 = getelementptr [4 x i8], [4 x i8]* @.str1023, i32 0, i32 0
  %363 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1023.c, i8* %362, i64 3)
  %364 = call i1 @nyx_string_equals(%nyx_string* %361, %nyx_string* %363)
  store i1 %364, i1* %308
  br label %sc_or_end96
sc_or_end96:
  %365 = load i1, i1* %308
  br i1 %365, label %sc_or_end98, label %sc_or_rhs97
sc_or_rhs97:
  %366 = load %nyx_string*, %nyx_string** %301
  %367 = getelementptr [4 x i8], [4 x i8]* @.str1024, i32 0, i32 0
  %368 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1024.c, i8* %367, i64 3)
  %369 = call i1 @nyx_string_equals(%nyx_string* %366, %nyx_string* %368)
  store i1 %369, i1* %307
  br label %sc_or_end98
sc_or_end98:
  %370 = load i1, i1* %307
  br i1 %370, label %sc_or_end100, label %sc_or_rhs99
sc_or_rhs99:
  %371 = load %nyx_string*, %nyx_string** %301
  %372 = getelementptr [4 x i8], [4 x i8]* @.str1025, i32 0, i32 0
  %373 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1025.c, i8* %372, i64 3)
  %374 = call i1 @nyx_string_equals(%nyx_string* %371, %nyx_string* %373)
  store i1 %374, i1* %306
  br label %sc_or_end100
sc_or_end100:
  %375 = load i1, i1* %306
  br i1 %375, label %sc_or_end102, label %sc_or_rhs101
sc_or_rhs101:
  %376 = load %nyx_string*, %nyx_string** %301
  %377 = getelementptr [6 x i8], [6 x i8]* @.str1026, i32 0, i32 0
  %378 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1026.c, i8* %377, i64 5)
  %379 = call i1 @nyx_string_equals(%nyx_string* %376, %nyx_string* %378)
  store i1 %379, i1* %305
  br label %sc_or_end102
sc_or_end102:
  %380 = load i1, i1* %305
  br i1 %380, label %sc_or_end104, label %sc_or_rhs103
sc_or_rhs103:
  %381 = load %nyx_string*, %nyx_string** %301
  %382 = getelementptr [4 x i8], [4 x i8]* @.str1027, i32 0, i32 0
  %383 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1027.c, i8* %382, i64 3)
  %384 = call i1 @nyx_string_equals(%nyx_string* %381, %nyx_string* %383)
  store i1 %384, i1* %304
  br label %sc_or_end104
sc_or_end104:
  %385 = load i1, i1* %304
  br i1 %385, label %sc_or_end106, label %sc_or_rhs105
sc_or_rhs105:
  %386 = load %nyx_string*, %nyx_string** %301
  %387 = getelementptr [6 x i8], [6 x i8]* @.str1028, i32 0, i32 0
  %388 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1028.c, i8* %387, i64 5)
  %389 = call i1 @nyx_string_equals(%nyx_string* %386, %nyx_string* %388)
  store i1 %389, i1* %303
  br label %sc_or_end106
sc_or_end106:
  %390 = load i1, i1* %303
  br i1 %390, label %sc_or_end108, label %sc_or_rhs107
sc_or_rhs107:
  %391 = load %nyx_string*, %nyx_string** %301
  %392 = getelementptr [4 x i8], [4 x i8]* @.str1029, i32 0, i32 0
  %393 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1029.c, i8* %392, i64 3)
  %394 = call i1 @nyx_string_equals(%nyx_string* %391, %nyx_string* %393)
  store i1 %394, i1* %302
  br label %sc_or_end108
sc_or_end108:
  %395 = load i1, i1* %302
  br i1 %395, label %then109, label %else110
then109:
  store i1 0, i1* %290
  br label %merge111
else110:
  br label %merge111
merge111:
  %396 = load i64, i64* %291
  %397 = add i64 %396, 1
  store i64 %397, i64* %291
  br label %while_cond76
while_end78:
  %398 = load i1, i1* %290
  br i1 %398, label %then112, label %else113
then112:
  %399 = load { i64, i8* }*, { i64, i8* }** %255
  store { i64, i8* }* %399, { i64, i8* }** %34
  br label %merge114
else113:
  br label %merge114
merge114:
  br label %merge75
else74:
  br label %merge75
merge75:
  br label %merge56
else55:
  br label %merge56
merge56:
  %400 = getelementptr [11 x i8], [11 x i8]* @.str1030, i32 0, i32 0
  %401 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1030.c, i8* %400, i64 10)
  %402 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %401)
  %403 = call { i64, i8* }* @nyx_array_new_ptr()
  %404 = alloca { i64, i8* }*
  store { i64, i8* }* %403, { i64, i8* }** %404
  %405 = alloca i1
  store i1 0, i1* %405
  %406 = call i8* @llvm.stacksave()
  br label %while_cond115
while_cond115:
  %407 = load i1, i1* %405
  %408 = xor i1 %407, true
  br i1 %408, label %while_body116, label %while_end117
while_body116:
  call void @llvm.stackrestore(i8* %406)
  %409 = getelementptr [12 x i8], [12 x i8]* @.str1031, i32 0, i32 0
  %410 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1031.c, i8* %409, i64 11)
  %411 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %410)
  br i1 %411, label %then118, label %else119
then118:
  %412 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %405
  br label %merge120
else119:
  %413 = call { i64, i8* }* @parse__parse_function(%SharedEnv_parse* %env.param)
  %414 = alloca { i64, i8* }*
  store { i64, i8* }* %413, { i64, i8* }** %414
  %415 = load { i64, i8* }*, { i64, i8* }** %404
  %416 = load { i64, i8* }*, { i64, i8* }** %414
  %417 = ptrtoint { i64, i8* }* %416 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %415, i64 %417, i64 5)
  br label %merge120
merge120:
  br label %while_cond115
while_end117:
  %418 = getelementptr [5 x i8], [5 x i8]* @.str1032, i32 0, i32 0
  %419 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1032.c, i8* %418, i64 4)
  %420 = call { i64, i8* }* @nyx_array_new_ptr()
  %421 = load %nyx_string*, %nyx_string** %160
  %422 = ptrtoint %nyx_string* %421 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %420, i64 %422, i64 2)
  %423 = load { i64, i8* }*, { i64, i8* }** %404
  %424 = ptrtoint { i64, i8* }* %423 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %420, i64 %424, i64 5)
  %425 = load { i64, i8* }*, { i64, i8* }** %34
  %426 = ptrtoint { i64, i8* }* %425 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %420, i64 %426, i64 5)
  %427 = call { i64, i8* }* @make_astnode(%nyx_string* %419, { i64, i8* }* %420)
  ret { i64, i8* }* %427
}

define internal { i64, i8* }* @parse__parse_try_catch(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %31 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %32 = alloca { i64, i8* }*
  store { i64, i8* }* %31, { i64, i8* }** %32
  %33 = getelementptr [6 x i8], [6 x i8]* @.str1033, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1033.c, i8* %33, i64 5)
  %35 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %34)
  %36 = getelementptr [11 x i8], [11 x i8]* @.str1034, i32 0, i32 0
  %37 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1034.c, i8* %36, i64 10)
  %38 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %37)
  %39 = getelementptr [11 x i8], [11 x i8]* @.str1035, i32 0, i32 0
  %40 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1035.c, i8* %39, i64 10)
  %41 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %40)
  %42 = alloca %Token
  store %Token %41, %Token* %42
  %43 = load %Token, %Token* %42
  %44 = call %nyx_string* @get_token_value(%Token %43)
  %45 = alloca %nyx_string*
  store %nyx_string* %44, %nyx_string** %45
  %46 = getelementptr [1 x i8], [1 x i8]* @.str1036, i32 0, i32 0
  %47 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1036.c, i8* %46, i64 0)
  %48 = alloca %nyx_string*
  store %nyx_string* %47, %nyx_string** %48
  %49 = getelementptr [6 x i8], [6 x i8]* @.str1037, i32 0, i32 0
  %50 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1037.c, i8* %49, i64 5)
  %51 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %50)
  br i1 %51, label %then0, label %else1
then0:
  %52 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %53 = getelementptr [11 x i8], [11 x i8]* @.str1038, i32 0, i32 0
  %54 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1038.c, i8* %53, i64 10)
  %55 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %54)
  br i1 %55, label %then3, label %else4
then3:
  %56 = getelementptr [11 x i8], [11 x i8]* @.str1039, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1039.c, i8* %56, i64 10)
  %58 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %57)
  %59 = alloca %Token
  store %Token %58, %Token* %59
  %60 = load %Token, %Token* %59
  %61 = call %nyx_string* @get_token_value(%Token %60)
  store %nyx_string* %61, %nyx_string** %48
  br label %merge5
else4:
  br label %merge5
merge5:
  br label %merge2
else1:
  br label %merge2
merge2:
  %62 = getelementptr [12 x i8], [12 x i8]* @.str1040, i32 0, i32 0
  %63 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1040.c, i8* %62, i64 11)
  %64 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %63)
  %65 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %66 = alloca { i64, i8* }*
  store { i64, i8* }* %65, { i64, i8* }** %66
  %67 = getelementptr [10 x i8], [10 x i8]* @.str1041, i32 0, i32 0
  %68 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1041.c, i8* %67, i64 9)
  %69 = call { i64, i8* }* @nyx_array_new_ptr()
  %70 = load { i64, i8* }*, { i64, i8* }** %32
  %71 = ptrtoint { i64, i8* }* %70 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %69, i64 %71, i64 5)
  %72 = load %nyx_string*, %nyx_string** %45
  %73 = ptrtoint %nyx_string* %72 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %69, i64 %73, i64 2)
  %74 = load { i64, i8* }*, { i64, i8* }** %66
  %75 = ptrtoint { i64, i8* }* %74 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %69, i64 %75, i64 5)
  %76 = load %nyx_string*, %nyx_string** %48
  %77 = ptrtoint %nyx_string* %76 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %69, i64 %77, i64 2)
  %78 = call { i64, i8* }* @make_astnode(%nyx_string* %68, { i64, i8* }* %69)
  ret { i64, i8* }* %78
}

define internal { i64, i8* }* @parse__parse_throw(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %31 = getelementptr [11 x i8], [11 x i8]* @.str1042, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1042.c, i8* %31, i64 10)
  %33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %32)
  %34 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %35 = alloca { i64, i8* }*
  store { i64, i8* }* %34, { i64, i8* }** %35
  %36 = getelementptr [12 x i8], [12 x i8]* @.str1043, i32 0, i32 0
  %37 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1043.c, i8* %36, i64 11)
  %38 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %37)
  %39 = getelementptr [6 x i8], [6 x i8]* @.str1044, i32 0, i32 0
  %40 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1044.c, i8* %39, i64 5)
  %41 = call { i64, i8* }* @nyx_array_new_ptr()
  %42 = load { i64, i8* }*, { i64, i8* }** %35
  %43 = ptrtoint { i64, i8* }* %42 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %41, i64 %43, i64 5)
  %44 = call { i64, i8* }* @make_astnode(%nyx_string* %40, { i64, i8* }* %41)
  ret { i64, i8* }* %44
}

define internal { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = getelementptr [11 x i8], [11 x i8]* @.str1045, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1045.c, i8* %30, i64 10)
  %32 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %31)
  %33 = call { i64, i8* }* @nyx_array_new_ptr()
  %34 = alloca { i64, i8* }*
  store { i64, i8* }* %33, { i64, i8* }** %34
  %35 = alloca i1
  store i1 0, i1* %35
  %36 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %37 = load i1, i1* %35
  %38 = xor i1 %37, true
  br i1 %38, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %36)
  %39 = load i64, i64* %8
  %40 = icmp eq i64 %39, 1
  br i1 %40, label %then3, label %else4
then3:
  store i1 1, i1* %35
  br label %merge5
else4:
  %41 = getelementptr [4 x i8], [4 x i8]* @.str1046, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1046.c, i8* %41, i64 3)
  %43 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %42)
  br i1 %43, label %then6, label %else7
then6:
  %44 = getelementptr [8 x i8], [8 x i8]* @.str1047, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1047.c, i8* %44, i64 7)
  %46 = load i64, i64* @g_last_line
  %47 = load i64, i64* @g_last_col
  %48 = getelementptr [47 x i8], [47 x i8]* @.str1048, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1048.c, i8* %48, i64 46)
  %50 = getelementptr [44 x i8], [44 x i8]* @.str1049, i32 0, i32 0
  %51 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1049.c, i8* %50, i64 43)
  %52 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %49, %nyx_string* %51)
  %53 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %45, i64 %46, i64 %47, %nyx_string* %52)
  store i1 1, i1* %35
  br label %merge8
else7:
  %54 = getelementptr [12 x i8], [12 x i8]* @.str1050, i32 0, i32 0
  %55 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1050.c, i8* %54, i64 11)
  %56 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %55)
  br i1 %56, label %then9, label %else10
then9:
  %57 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %35
  br label %merge11
else10:
  %58 = load i64, i64* %4
  %59 = alloca i64
  store i64 %58, i64* %59
  %60 = load { i64, i8* }*, { i64, i8* }** %11
  %61 = call i64 @nyx_array_length({ i64, i8* }* %60)
  %62 = alloca i64
  store i64 %61, i64* %62
  %63 = call { i64, i8* }* @parse__parse_statement(%SharedEnv_parse* %env.param)
  %64 = alloca { i64, i8* }*
  store { i64, i8* }* %63, { i64, i8* }** %64
  %65 = load i64, i64* %4
  %66 = load i64, i64* %59
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %then12, label %else13
then12:
  %68 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge14
else13:
  %69 = load { i64, i8* }*, { i64, i8* }** %11
  %70 = call i64 @nyx_array_length({ i64, i8* }* %69)
  %71 = load i64, i64* %62
  %72 = icmp sgt i64 %70, %71
  br i1 %72, label %then15, label %else16
then15:
  %73 = load i64, i64* %62
  %74 = alloca i64
  store i64 %73, i64* %74
  %75 = call i8* @llvm.stacksave()
  br label %while_cond18
while_cond18:
  %76 = load i64, i64* %74
  %77 = load { i64, i8* }*, { i64, i8* }** %11
  %78 = call i64 @nyx_array_length({ i64, i8* }* %77)
  %79 = icmp slt i64 %76, %78
  br i1 %79, label %while_body19, label %while_end20
while_body19:
  call void @llvm.stackrestore(i8* %75)
  %80 = load { i64, i8* }*, { i64, i8* }** %11
  %81 = load i64, i64* %74
  %82 = call i64 @nyx_array_get({ i64, i8* }* %80, i64 %81)
  %83 = inttoptr i64 %82 to { i64, i8* }*
  %84 = alloca { i64, i8* }*
  store { i64, i8* }* %83, { i64, i8* }** %84
  %85 = load { i64, i8* }*, { i64, i8* }** %84
  %86 = call i64 @nyx_array_get_checked({ i64, i8* }* %85, i64 0, i64 2)
  %87 = inttoptr i64 %86 to %nyx_string*
  %88 = alloca %nyx_string*
  store %nyx_string* %87, %nyx_string** %88
  %89 = load %nyx_string*, %nyx_string** %88
  %90 = getelementptr [10 x i8], [10 x i8]* @.str1051, i32 0, i32 0
  %91 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1051.c, i8* %90, i64 9)
  %92 = call i1 @nyx_string_equals(%nyx_string* %89, %nyx_string* %91)
  %93 = xor i1 %92, true
  br i1 %93, label %then21, label %else22
then21:
  %94 = load { i64, i8* }*, { i64, i8* }** %34
  %95 = load { i64, i8* }*, { i64, i8* }** %11
  %96 = load i64, i64* %74
  %97 = call i64 @nyx_array_get({ i64, i8* }* %95, i64 %96)
  %98 = load { i64, i8* }*, { i64, i8* }** %11
  %99 = load i64, i64* %74
  %100 = call i64 @nyx_array_get_tag({ i64, i8* }* %98, i64 %99)
  call void @nyx_array_push_tagged({ i64, i8* }* %94, i64 %97, i64 %100)
  %101 = load { i64, i8* }*, { i64, i8* }** %11
  %102 = load i64, i64* %74
  %103 = getelementptr [10 x i8], [10 x i8]* @.str1052, i32 0, i32 0
  %104 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1052.c, i8* %103, i64 9)
  %105 = call { i64, i8* }* @nyx_array_new_ptr()
  %106 = call { i64, i8* }* @make_astnode(%nyx_string* %104, { i64, i8* }* %105)
  %107 = ptrtoint { i64, i8* }* %106 to i64
  call void @nyx_array_set_tagged({ i64, i8* }* %101, i64 %102, i64 %107, i64 5)
  br label %merge23
else22:
  br label %merge23
merge23:
  %108 = load i64, i64* %74
  %109 = add i64 %108, 1
  store i64 %109, i64* %74
  br label %while_cond18
while_end20:
  br label %merge17
else16:
  br label %merge17
merge17:
  %110 = load { i64, i8* }*, { i64, i8* }** %34
  %111 = load { i64, i8* }*, { i64, i8* }** %64
  %112 = ptrtoint { i64, i8* }* %111 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %110, i64 %112, i64 5)
  br label %merge14
merge14:
  br label %merge11
merge11:
  br label %merge8
merge8:
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %113 = getelementptr [6 x i8], [6 x i8]* @.str1053, i32 0, i32 0
  %114 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1053.c, i8* %113, i64 5)
  %115 = call { i64, i8* }* @nyx_array_new_ptr()
  %116 = load { i64, i8* }*, { i64, i8* }** %34
  %117 = ptrtoint { i64, i8* }* %116 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %115, i64 %117, i64 5)
  %118 = call { i64, i8* }* @make_astnode(%nyx_string* %114, { i64, i8* }* %115)
  ret { i64, i8* }* %118
}

define internal { i64, i8* }* @parse__parse_fn_body_block(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = getelementptr [11 x i8], [11 x i8]* @.str1054, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1054.c, i8* %30, i64 10)
  %32 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %31)
  %33 = call { i64, i8* }* @nyx_array_new_ptr()
  %34 = alloca { i64, i8* }*
  store { i64, i8* }* %33, { i64, i8* }** %34
  %35 = alloca i1
  store i1 0, i1* %35
  %36 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %37 = load i1, i1* %35
  %38 = xor i1 %37, true
  br i1 %38, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %36)
  %39 = load i64, i64* %8
  %40 = icmp eq i64 %39, 1
  br i1 %40, label %then3, label %else4
then3:
  store i1 1, i1* %35
  br label %merge5
else4:
  %41 = getelementptr [4 x i8], [4 x i8]* @.str1055, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1055.c, i8* %41, i64 3)
  %43 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %42)
  br i1 %43, label %then6, label %else7
then6:
  %44 = getelementptr [8 x i8], [8 x i8]* @.str1056, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1056.c, i8* %44, i64 7)
  %46 = load i64, i64* @g_last_line
  %47 = load i64, i64* @g_last_col
  %48 = getelementptr [47 x i8], [47 x i8]* @.str1057, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1057.c, i8* %48, i64 46)
  %50 = getelementptr [44 x i8], [44 x i8]* @.str1058, i32 0, i32 0
  %51 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1058.c, i8* %50, i64 43)
  %52 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %49, %nyx_string* %51)
  %53 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %45, i64 %46, i64 %47, %nyx_string* %52)
  store i1 1, i1* %35
  br label %merge8
else7:
  %54 = getelementptr [12 x i8], [12 x i8]* @.str1059, i32 0, i32 0
  %55 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1059.c, i8* %54, i64 11)
  %56 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %55)
  br i1 %56, label %then9, label %else10
then9:
  %57 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %35
  br label %merge11
else10:
  %58 = load i64, i64* %4
  %59 = alloca i64
  store i64 %58, i64* %59
  %60 = load { i64, i8* }*, { i64, i8* }** %11
  %61 = call i64 @nyx_array_length({ i64, i8* }* %60)
  %62 = alloca i64
  store i64 %61, i64* %62
  %63 = call { i64, i8* }* @parse__parse_statement(%SharedEnv_parse* %env.param)
  %64 = alloca { i64, i8* }*
  store { i64, i8* }* %63, { i64, i8* }** %64
  %65 = load i64, i64* %4
  %66 = load i64, i64* %59
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %then12, label %else13
then12:
  %68 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge14
else13:
  %69 = load { i64, i8* }*, { i64, i8* }** %11
  %70 = call i64 @nyx_array_length({ i64, i8* }* %69)
  %71 = load i64, i64* %62
  %72 = icmp sgt i64 %70, %71
  br i1 %72, label %then15, label %else16
then15:
  %73 = load i64, i64* %62
  %74 = alloca i64
  store i64 %73, i64* %74
  %75 = call i8* @llvm.stacksave()
  br label %while_cond18
while_cond18:
  %76 = load i64, i64* %74
  %77 = load { i64, i8* }*, { i64, i8* }** %11
  %78 = call i64 @nyx_array_length({ i64, i8* }* %77)
  %79 = icmp slt i64 %76, %78
  br i1 %79, label %while_body19, label %while_end20
while_body19:
  call void @llvm.stackrestore(i8* %75)
  %80 = load { i64, i8* }*, { i64, i8* }** %11
  %81 = load i64, i64* %74
  %82 = call i64 @nyx_array_get({ i64, i8* }* %80, i64 %81)
  %83 = inttoptr i64 %82 to { i64, i8* }*
  %84 = alloca { i64, i8* }*
  store { i64, i8* }* %83, { i64, i8* }** %84
  %85 = load { i64, i8* }*, { i64, i8* }** %84
  %86 = call i64 @nyx_array_get_checked({ i64, i8* }* %85, i64 0, i64 2)
  %87 = inttoptr i64 %86 to %nyx_string*
  %88 = alloca %nyx_string*
  store %nyx_string* %87, %nyx_string** %88
  %89 = load %nyx_string*, %nyx_string** %88
  %90 = getelementptr [10 x i8], [10 x i8]* @.str1060, i32 0, i32 0
  %91 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1060.c, i8* %90, i64 9)
  %92 = call i1 @nyx_string_equals(%nyx_string* %89, %nyx_string* %91)
  %93 = xor i1 %92, true
  br i1 %93, label %then21, label %else22
then21:
  %94 = load { i64, i8* }*, { i64, i8* }** %34
  %95 = load { i64, i8* }*, { i64, i8* }** %11
  %96 = load i64, i64* %74
  %97 = call i64 @nyx_array_get({ i64, i8* }* %95, i64 %96)
  %98 = load { i64, i8* }*, { i64, i8* }** %11
  %99 = load i64, i64* %74
  %100 = call i64 @nyx_array_get_tag({ i64, i8* }* %98, i64 %99)
  call void @nyx_array_push_tagged({ i64, i8* }* %94, i64 %97, i64 %100)
  %101 = load { i64, i8* }*, { i64, i8* }** %11
  %102 = load i64, i64* %74
  %103 = getelementptr [10 x i8], [10 x i8]* @.str1061, i32 0, i32 0
  %104 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1061.c, i8* %103, i64 9)
  %105 = call { i64, i8* }* @nyx_array_new_ptr()
  %106 = call { i64, i8* }* @make_astnode(%nyx_string* %104, { i64, i8* }* %105)
  %107 = ptrtoint { i64, i8* }* %106 to i64
  call void @nyx_array_set_tagged({ i64, i8* }* %101, i64 %102, i64 %107, i64 5)
  br label %merge23
else22:
  br label %merge23
merge23:
  %108 = load i64, i64* %74
  %109 = add i64 %108, 1
  store i64 %109, i64* %74
  br label %while_cond18
while_end20:
  br label %merge17
else16:
  br label %merge17
merge17:
  %110 = load { i64, i8* }*, { i64, i8* }** %34
  %111 = load { i64, i8* }*, { i64, i8* }** %64
  %112 = ptrtoint { i64, i8* }* %111 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %110, i64 %112, i64 5)
  br label %merge14
merge14:
  br label %merge11
merge11:
  br label %merge8
merge8:
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %113 = getelementptr [6 x i8], [6 x i8]* @.str1062, i32 0, i32 0
  %114 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1062.c, i8* %113, i64 5)
  %115 = call { i64, i8* }* @nyx_array_new_ptr()
  %116 = load { i64, i8* }*, { i64, i8* }** %34
  %117 = ptrtoint { i64, i8* }* %116 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %115, i64 %117, i64 5)
  %118 = call { i64, i8* }* @make_astnode(%nyx_string* %114, { i64, i8* }* %115)
  ret { i64, i8* }* %118
}

define internal { i64, i8* }* @parse__parse_assignment_or_expr(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %31 = alloca { i64, i8* }*
  store { i64, i8* }* %30, { i64, i8* }** %31
  %32 = load { i64, i8* }*, { i64, i8* }** %31
  %33 = call %nyx_string* @astnode_get_type({ i64, i8* }* %32)
  %34 = alloca %nyx_string*
  store %nyx_string* %33, %nyx_string** %34
  %35 = load { i64, i8* }*, { i64, i8* }** %31
  %36 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %35)
  %37 = alloca { i64, i8* }*
  store { i64, i8* }* %36, { i64, i8* }** %37
  %38 = load %nyx_string*, %nyx_string** %34
  %39 = getelementptr [11 x i8], [11 x i8]* @.str1063, i32 0, i32 0
  %40 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1063.c, i8* %39, i64 10)
  %41 = call i1 @nyx_string_equals(%nyx_string* %38, %nyx_string* %40)
  br i1 %41, label %then0, label %else1
then0:
  %42 = getelementptr [7 x i8], [7 x i8]* @.str1064, i32 0, i32 0
  %43 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1064.c, i8* %42, i64 6)
  %44 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %43)
  br i1 %44, label %then3, label %else4
then3:
  %45 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %46 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %47 = alloca { i64, i8* }*
  store { i64, i8* }* %46, { i64, i8* }** %47
  %48 = load { i64, i8* }*, { i64, i8* }** %37
  %49 = call i64 @nyx_array_get_checked({ i64, i8* }* %48, i64 0, i64 2)
  %50 = inttoptr i64 %49 to %nyx_string*
  %51 = alloca %nyx_string*
  store %nyx_string* %50, %nyx_string** %51
  %52 = load %nyx_string*, %nyx_string** %51
  %53 = call { i64, i8* }* @nyx_array_new_ptr()
  %54 = call { i64, i8* }* @make_astnode(%nyx_string* %52, { i64, i8* }* %53)
  %55 = alloca { i64, i8* }*
  store { i64, i8* }* %54, { i64, i8* }** %55
  %56 = getelementptr [7 x i8], [7 x i8]* @.str1065, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1065.c, i8* %56, i64 6)
  %58 = call { i64, i8* }* @nyx_array_new_ptr()
  %59 = load { i64, i8* }*, { i64, i8* }** %55
  %60 = ptrtoint { i64, i8* }* %59 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %58, i64 %60, i64 5)
  %61 = load { i64, i8* }*, { i64, i8* }** %47
  %62 = ptrtoint { i64, i8* }* %61 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %58, i64 %62, i64 5)
  %63 = call { i64, i8* }* @make_astnode(%nyx_string* %57, { i64, i8* }* %58)
  ret { i64, i8* }* %63
else4:
  br label %merge5
merge5:
  %64 = getelementptr [1 x i8], [1 x i8]* @.str1066, i32 0, i32 0
  %65 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1066.c, i8* %64, i64 0)
  %66 = alloca %nyx_string*
  store %nyx_string* %65, %nyx_string** %66
  %67 = getelementptr [12 x i8], [12 x i8]* @.str1067, i32 0, i32 0
  %68 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1067.c, i8* %67, i64 11)
  %69 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %68)
  br i1 %69, label %then6, label %else7
then6:
  %70 = getelementptr [5 x i8], [5 x i8]* @.str1068, i32 0, i32 0
  %71 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1068.c, i8* %70, i64 4)
  store %nyx_string* %71, %nyx_string** %66
  br label %merge8
else7:
  br label %merge8
merge8:
  %72 = getelementptr [13 x i8], [13 x i8]* @.str1069, i32 0, i32 0
  %73 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1069.c, i8* %72, i64 12)
  %74 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %73)
  br i1 %74, label %then9, label %else10
then9:
  %75 = getelementptr [6 x i8], [6 x i8]* @.str1070, i32 0, i32 0
  %76 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1070.c, i8* %75, i64 5)
  store %nyx_string* %76, %nyx_string** %66
  br label %merge11
else10:
  br label %merge11
merge11:
  %77 = getelementptr [12 x i8], [12 x i8]* @.str1071, i32 0, i32 0
  %78 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1071.c, i8* %77, i64 11)
  %79 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %78)
  br i1 %79, label %then12, label %else13
then12:
  %80 = getelementptr [5 x i8], [5 x i8]* @.str1072, i32 0, i32 0
  %81 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1072.c, i8* %80, i64 4)
  store %nyx_string* %81, %nyx_string** %66
  br label %merge14
else13:
  br label %merge14
merge14:
  %82 = getelementptr [13 x i8], [13 x i8]* @.str1073, i32 0, i32 0
  %83 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1073.c, i8* %82, i64 12)
  %84 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %83)
  br i1 %84, label %then15, label %else16
then15:
  %85 = getelementptr [6 x i8], [6 x i8]* @.str1074, i32 0, i32 0
  %86 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1074.c, i8* %85, i64 5)
  store %nyx_string* %86, %nyx_string** %66
  br label %merge17
else16:
  br label %merge17
merge17:
  %87 = getelementptr [15 x i8], [15 x i8]* @.str1075, i32 0, i32 0
  %88 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1075.c, i8* %87, i64 14)
  %89 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %88)
  br i1 %89, label %then18, label %else19
then18:
  %90 = getelementptr [8 x i8], [8 x i8]* @.str1076, i32 0, i32 0
  %91 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1076.c, i8* %90, i64 7)
  store %nyx_string* %91, %nyx_string** %66
  br label %merge20
else19:
  br label %merge20
merge20:
  %92 = getelementptr [11 x i8], [11 x i8]* @.str1077, i32 0, i32 0
  %93 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1077.c, i8* %92, i64 10)
  %94 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %93)
  br i1 %94, label %then21, label %else22
then21:
  %95 = getelementptr [4 x i8], [4 x i8]* @.str1078, i32 0, i32 0
  %96 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1078.c, i8* %95, i64 3)
  store %nyx_string* %96, %nyx_string** %66
  br label %merge23
else22:
  br label %merge23
merge23:
  %97 = getelementptr [12 x i8], [12 x i8]* @.str1079, i32 0, i32 0
  %98 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1079.c, i8* %97, i64 11)
  %99 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %98)
  br i1 %99, label %then24, label %else25
then24:
  %100 = getelementptr [5 x i8], [5 x i8]* @.str1080, i32 0, i32 0
  %101 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1080.c, i8* %100, i64 4)
  store %nyx_string* %101, %nyx_string** %66
  br label %merge26
else25:
  br label %merge26
merge26:
  %102 = getelementptr [13 x i8], [13 x i8]* @.str1081, i32 0, i32 0
  %103 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1081.c, i8* %102, i64 12)
  %104 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %103)
  br i1 %104, label %then27, label %else28
then27:
  %105 = getelementptr [6 x i8], [6 x i8]* @.str1082, i32 0, i32 0
  %106 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1082.c, i8* %105, i64 5)
  store %nyx_string* %106, %nyx_string** %66
  br label %merge29
else28:
  br label %merge29
merge29:
  %107 = getelementptr [18 x i8], [18 x i8]* @.str1083, i32 0, i32 0
  %108 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1083.c, i8* %107, i64 17)
  %109 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %108)
  br i1 %109, label %then30, label %else31
then30:
  %110 = getelementptr [11 x i8], [11 x i8]* @.str1084, i32 0, i32 0
  %111 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1084.c, i8* %110, i64 10)
  store %nyx_string* %111, %nyx_string** %66
  br label %merge32
else31:
  br label %merge32
merge32:
  %112 = getelementptr [19 x i8], [19 x i8]* @.str1085, i32 0, i32 0
  %113 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1085.c, i8* %112, i64 18)
  %114 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %113)
  br i1 %114, label %then33, label %else34
then33:
  %115 = getelementptr [12 x i8], [12 x i8]* @.str1086, i32 0, i32 0
  %116 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1086.c, i8* %115, i64 11)
  store %nyx_string* %116, %nyx_string** %66
  br label %merge35
else34:
  br label %merge35
merge35:
  %117 = load %nyx_string*, %nyx_string** %66
  %118 = getelementptr [1 x i8], [1 x i8]* @.str1087, i32 0, i32 0
  %119 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1087.c, i8* %118, i64 0)
  %120 = call i1 @nyx_string_equals(%nyx_string* %117, %nyx_string* %119)
  %121 = xor i1 %120, true
  br i1 %121, label %then36, label %else37
then36:
  %122 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %123 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %124 = alloca { i64, i8* }*
  store { i64, i8* }* %123, { i64, i8* }** %124
  %125 = load { i64, i8* }*, { i64, i8* }** %37
  %126 = call i64 @nyx_array_get_checked({ i64, i8* }* %125, i64 0, i64 2)
  %127 = inttoptr i64 %126 to %nyx_string*
  %128 = alloca %nyx_string*
  store %nyx_string* %127, %nyx_string** %128
  %129 = load %nyx_string*, %nyx_string** %128
  %130 = call { i64, i8* }* @nyx_array_new_ptr()
  %131 = call { i64, i8* }* @make_astnode(%nyx_string* %129, { i64, i8* }* %130)
  %132 = alloca { i64, i8* }*
  store { i64, i8* }* %131, { i64, i8* }** %132
  %133 = getelementptr [11 x i8], [11 x i8]* @.str1088, i32 0, i32 0
  %134 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1088.c, i8* %133, i64 10)
  %135 = call { i64, i8* }* @nyx_array_new_ptr()
  %136 = load %nyx_string*, %nyx_string** %128
  %137 = ptrtoint %nyx_string* %136 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %135, i64 %137, i64 2)
  %138 = call { i64, i8* }* @make_astnode(%nyx_string* %134, { i64, i8* }* %135)
  %139 = alloca { i64, i8* }*
  store { i64, i8* }* %138, { i64, i8* }** %139
  %140 = getelementptr [6 x i8], [6 x i8]* @.str1089, i32 0, i32 0
  %141 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1089.c, i8* %140, i64 5)
  %142 = call { i64, i8* }* @nyx_array_new_ptr()
  %143 = load %nyx_string*, %nyx_string** %66
  %144 = ptrtoint %nyx_string* %143 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %142, i64 %144, i64 2)
  %145 = load { i64, i8* }*, { i64, i8* }** %139
  %146 = ptrtoint { i64, i8* }* %145 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %142, i64 %146, i64 5)
  %147 = load { i64, i8* }*, { i64, i8* }** %124
  %148 = ptrtoint { i64, i8* }* %147 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %142, i64 %148, i64 5)
  %149 = call { i64, i8* }* @make_astnode(%nyx_string* %141, { i64, i8* }* %142)
  %150 = alloca { i64, i8* }*
  store { i64, i8* }* %149, { i64, i8* }** %150
  %151 = getelementptr [7 x i8], [7 x i8]* @.str1090, i32 0, i32 0
  %152 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1090.c, i8* %151, i64 6)
  %153 = call { i64, i8* }* @nyx_array_new_ptr()
  %154 = load { i64, i8* }*, { i64, i8* }** %132
  %155 = ptrtoint { i64, i8* }* %154 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %153, i64 %155, i64 5)
  %156 = load { i64, i8* }*, { i64, i8* }** %150
  %157 = ptrtoint { i64, i8* }* %156 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %153, i64 %157, i64 5)
  %158 = call { i64, i8* }* @make_astnode(%nyx_string* %152, { i64, i8* }* %153)
  ret { i64, i8* }* %158
else37:
  br label %merge38
merge38:
  br label %merge2
else1:
  br label %merge2
merge2:
  %159 = load %nyx_string*, %nyx_string** %34
  %160 = getelementptr [6 x i8], [6 x i8]* @.str1091, i32 0, i32 0
  %161 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1091.c, i8* %160, i64 5)
  %162 = call i1 @nyx_string_equals(%nyx_string* %159, %nyx_string* %161)
  br i1 %162, label %then39, label %else40
then39:
  %163 = getelementptr [7 x i8], [7 x i8]* @.str1092, i32 0, i32 0
  %164 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1092.c, i8* %163, i64 6)
  %165 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %164)
  br i1 %165, label %then42, label %else43
then42:
  %166 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %167 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %168 = alloca { i64, i8* }*
  store { i64, i8* }* %167, { i64, i8* }** %168
  %169 = load { i64, i8* }*, { i64, i8* }** %37
  %170 = call i64 @nyx_array_get({ i64, i8* }* %169, i64 0)
  %171 = inttoptr i64 %170 to { i64, i8* }*
  %172 = alloca { i64, i8* }*
  store { i64, i8* }* %171, { i64, i8* }** %172
  %173 = getelementptr [13 x i8], [13 x i8]* @.str1093, i32 0, i32 0
  %174 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1093.c, i8* %173, i64 12)
  %175 = call { i64, i8* }* @nyx_array_new_ptr()
  %176 = load { i64, i8* }*, { i64, i8* }** %172
  %177 = ptrtoint { i64, i8* }* %176 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %175, i64 %177, i64 5)
  %178 = load { i64, i8* }*, { i64, i8* }** %168
  %179 = ptrtoint { i64, i8* }* %178 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %175, i64 %179, i64 5)
  %180 = call { i64, i8* }* @make_astnode(%nyx_string* %174, { i64, i8* }* %175)
  ret { i64, i8* }* %180
else43:
  br label %merge44
merge44:
  br label %merge41
else40:
  br label %merge41
merge41:
  %181 = alloca i1
  store i1 false, i1* %181
  %182 = load %nyx_string*, %nyx_string** %34
  %183 = getelementptr [6 x i8], [6 x i8]* @.str1094, i32 0, i32 0
  %184 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1094.c, i8* %183, i64 5)
  %185 = call i1 @nyx_string_equals(%nyx_string* %182, %nyx_string* %184)
  br i1 %185, label %sc_and_rhs45, label %sc_and_end46
sc_and_rhs45:
  %186 = getelementptr [7 x i8], [7 x i8]* @.str1095, i32 0, i32 0
  %187 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1095.c, i8* %186, i64 6)
  %188 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %187)
  store i1 %188, i1* %181
  br label %sc_and_end46
sc_and_end46:
  %189 = load i1, i1* %181
  br i1 %189, label %then47, label %else48
then47:
  %190 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %191 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %192 = alloca { i64, i8* }*
  store { i64, i8* }* %191, { i64, i8* }** %192
  %193 = getelementptr [13 x i8], [13 x i8]* @.str1096, i32 0, i32 0
  %194 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1096.c, i8* %193, i64 12)
  %195 = call { i64, i8* }* @nyx_array_new_ptr()
  %196 = load { i64, i8* }*, { i64, i8* }** %37
  %197 = call i64 @nyx_array_get({ i64, i8* }* %196, i64 0)
  call void @nyx_array_push({ i64, i8* }* %195, i64 %197)
  %198 = load { i64, i8* }*, { i64, i8* }** %37
  %199 = call i64 @nyx_array_get({ i64, i8* }* %198, i64 1)
  call void @nyx_array_push({ i64, i8* }* %195, i64 %199)
  %200 = load { i64, i8* }*, { i64, i8* }** %192
  %201 = ptrtoint { i64, i8* }* %200 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %195, i64 %201, i64 5)
  %202 = call { i64, i8* }* @make_astnode(%nyx_string* %194, { i64, i8* }* %195)
  ret { i64, i8* }* %202
else48:
  br label %merge49
merge49:
  %203 = alloca i1
  store i1 false, i1* %203
  %204 = load %nyx_string*, %nyx_string** %34
  %205 = getelementptr [13 x i8], [13 x i8]* @.str1097, i32 0, i32 0
  %206 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1097.c, i8* %205, i64 12)
  %207 = call i1 @nyx_string_equals(%nyx_string* %204, %nyx_string* %206)
  br i1 %207, label %sc_and_rhs50, label %sc_and_end51
sc_and_rhs50:
  %208 = getelementptr [7 x i8], [7 x i8]* @.str1098, i32 0, i32 0
  %209 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1098.c, i8* %208, i64 6)
  %210 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %209)
  store i1 %210, i1* %203
  br label %sc_and_end51
sc_and_end51:
  %211 = load i1, i1* %203
  br i1 %211, label %then52, label %else53
then52:
  %212 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %213 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %214 = alloca { i64, i8* }*
  store { i64, i8* }* %213, { i64, i8* }** %214
  %215 = getelementptr [13 x i8], [13 x i8]* @.str1099, i32 0, i32 0
  %216 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1099.c, i8* %215, i64 12)
  %217 = call { i64, i8* }* @nyx_array_new_ptr()
  %218 = load { i64, i8* }*, { i64, i8* }** %37
  %219 = call i64 @nyx_array_get({ i64, i8* }* %218, i64 0)
  call void @nyx_array_push({ i64, i8* }* %217, i64 %219)
  %220 = load { i64, i8* }*, { i64, i8* }** %37
  %221 = call i64 @nyx_array_get({ i64, i8* }* %220, i64 1)
  call void @nyx_array_push({ i64, i8* }* %217, i64 %221)
  %222 = load { i64, i8* }*, { i64, i8* }** %214
  %223 = ptrtoint { i64, i8* }* %222 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %217, i64 %223, i64 5)
  %224 = call { i64, i8* }* @make_astnode(%nyx_string* %216, { i64, i8* }* %217)
  ret { i64, i8* }* %224
else53:
  br label %merge54
merge54:
  %225 = load { i64, i8* }*, { i64, i8* }** %31
  ret { i64, i8* }* %225
}

define internal i64 @parse__synchronize(%SharedEnv_parse* %env.param) {
  %1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %30 = alloca i1
  store i1 0, i1* %30
  %31 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %32 = load i1, i1* %30
  %33 = xor i1 %32, true
  br i1 %33, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %31)
  %34 = getelementptr [4 x i8], [4 x i8]* @.str1100, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1100.c, i8* %34, i64 3)
  %36 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %35)
  br i1 %36, label %then3, label %else4
then3:
  store i1 1, i1* %30
  br label %merge5
else4:
  %37 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %38 = call %nyx_string* @get_token_type(%Token %37)
  %39 = alloca %nyx_string*
  store %nyx_string* %38, %nyx_string** %39
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
  %54 = load %nyx_string*, %nyx_string** %39
  %55 = getelementptr [3 x i8], [3 x i8]* @.str1101, i32 0, i32 0
  %56 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1101.c, i8* %55, i64 2)
  %57 = call i1 @nyx_string_equals(%nyx_string* %54, %nyx_string* %56)
  br i1 %57, label %sc_or_end7, label %sc_or_rhs6
sc_or_rhs6:
  %58 = load %nyx_string*, %nyx_string** %39
  %59 = getelementptr [4 x i8], [4 x i8]* @.str1102, i32 0, i32 0
  %60 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1102.c, i8* %59, i64 3)
  %61 = call i1 @nyx_string_equals(%nyx_string* %58, %nyx_string* %60)
  store i1 %61, i1* %53
  br label %sc_or_end7
sc_or_end7:
  %62 = load i1, i1* %53
  br i1 %62, label %sc_or_end9, label %sc_or_rhs8
sc_or_rhs8:
  %63 = load %nyx_string*, %nyx_string** %39
  %64 = getelementptr [4 x i8], [4 x i8]* @.str1103, i32 0, i32 0
  %65 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1103.c, i8* %64, i64 3)
  %66 = call i1 @nyx_string_equals(%nyx_string* %63, %nyx_string* %65)
  store i1 %66, i1* %52
  br label %sc_or_end9
sc_or_end9:
  %67 = load i1, i1* %52
  br i1 %67, label %sc_or_end11, label %sc_or_rhs10
sc_or_rhs10:
  %68 = load %nyx_string*, %nyx_string** %39
  %69 = getelementptr [6 x i8], [6 x i8]* @.str1104, i32 0, i32 0
  %70 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1104.c, i8* %69, i64 5)
  %71 = call i1 @nyx_string_equals(%nyx_string* %68, %nyx_string* %70)
  store i1 %71, i1* %51
  br label %sc_or_end11
sc_or_end11:
  %72 = load i1, i1* %51
  br i1 %72, label %sc_or_end13, label %sc_or_rhs12
sc_or_rhs12:
  %73 = load %nyx_string*, %nyx_string** %39
  %74 = getelementptr [7 x i8], [7 x i8]* @.str1105, i32 0, i32 0
  %75 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1105.c, i8* %74, i64 6)
  %76 = call i1 @nyx_string_equals(%nyx_string* %73, %nyx_string* %75)
  store i1 %76, i1* %50
  br label %sc_or_end13
sc_or_end13:
  %77 = load i1, i1* %50
  br i1 %77, label %sc_or_end15, label %sc_or_rhs14
sc_or_rhs14:
  %78 = load %nyx_string*, %nyx_string** %39
  %79 = getelementptr [5 x i8], [5 x i8]* @.str1106, i32 0, i32 0
  %80 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1106.c, i8* %79, i64 4)
  %81 = call i1 @nyx_string_equals(%nyx_string* %78, %nyx_string* %80)
  store i1 %81, i1* %49
  br label %sc_or_end15
sc_or_end15:
  %82 = load i1, i1* %49
  br i1 %82, label %sc_or_end17, label %sc_or_rhs16
sc_or_rhs16:
  %83 = load %nyx_string*, %nyx_string** %39
  %84 = getelementptr [3 x i8], [3 x i8]* @.str1107, i32 0, i32 0
  %85 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1107.c, i8* %84, i64 2)
  %86 = call i1 @nyx_string_equals(%nyx_string* %83, %nyx_string* %85)
  store i1 %86, i1* %48
  br label %sc_or_end17
sc_or_end17:
  %87 = load i1, i1* %48
  br i1 %87, label %sc_or_end19, label %sc_or_rhs18
sc_or_rhs18:
  %88 = load %nyx_string*, %nyx_string** %39
  %89 = getelementptr [6 x i8], [6 x i8]* @.str1108, i32 0, i32 0
  %90 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1108.c, i8* %89, i64 5)
  %91 = call i1 @nyx_string_equals(%nyx_string* %88, %nyx_string* %90)
  store i1 %91, i1* %47
  br label %sc_or_end19
sc_or_end19:
  %92 = load i1, i1* %47
  br i1 %92, label %sc_or_end21, label %sc_or_rhs20
sc_or_rhs20:
  %93 = load %nyx_string*, %nyx_string** %39
  %94 = getelementptr [4 x i8], [4 x i8]* @.str1109, i32 0, i32 0
  %95 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1109.c, i8* %94, i64 3)
  %96 = call i1 @nyx_string_equals(%nyx_string* %93, %nyx_string* %95)
  store i1 %96, i1* %46
  br label %sc_or_end21
sc_or_end21:
  %97 = load i1, i1* %46
  br i1 %97, label %sc_or_end23, label %sc_or_rhs22
sc_or_rhs22:
  %98 = load %nyx_string*, %nyx_string** %39
  %99 = getelementptr [7 x i8], [7 x i8]* @.str1110, i32 0, i32 0
  %100 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1110.c, i8* %99, i64 6)
  %101 = call i1 @nyx_string_equals(%nyx_string* %98, %nyx_string* %100)
  store i1 %101, i1* %45
  br label %sc_or_end23
sc_or_end23:
  %102 = load i1, i1* %45
  br i1 %102, label %sc_or_end25, label %sc_or_rhs24
sc_or_rhs24:
  %103 = load %nyx_string*, %nyx_string** %39
  %104 = getelementptr [7 x i8], [7 x i8]* @.str1111, i32 0, i32 0
  %105 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1111.c, i8* %104, i64 6)
  %106 = call i1 @nyx_string_equals(%nyx_string* %103, %nyx_string* %105)
  store i1 %106, i1* %44
  br label %sc_or_end25
sc_or_end25:
  %107 = load i1, i1* %44
  br i1 %107, label %sc_or_end27, label %sc_or_rhs26
sc_or_rhs26:
  %108 = load %nyx_string*, %nyx_string** %39
  %109 = getelementptr [7 x i8], [7 x i8]* @.str1112, i32 0, i32 0
  %110 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1112.c, i8* %109, i64 6)
  %111 = call i1 @nyx_string_equals(%nyx_string* %108, %nyx_string* %110)
  store i1 %111, i1* %43
  br label %sc_or_end27
sc_or_end27:
  %112 = load i1, i1* %43
  br i1 %112, label %sc_or_end29, label %sc_or_rhs28
sc_or_rhs28:
  %113 = load %nyx_string*, %nyx_string** %39
  %114 = getelementptr [6 x i8], [6 x i8]* @.str1113, i32 0, i32 0
  %115 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1113.c, i8* %114, i64 5)
  %116 = call i1 @nyx_string_equals(%nyx_string* %113, %nyx_string* %115)
  store i1 %116, i1* %42
  br label %sc_or_end29
sc_or_end29:
  %117 = load i1, i1* %42
  br i1 %117, label %sc_or_end31, label %sc_or_rhs30
sc_or_rhs30:
  %118 = load %nyx_string*, %nyx_string** %39
  %119 = getelementptr [5 x i8], [5 x i8]* @.str1114, i32 0, i32 0
  %120 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1114.c, i8* %119, i64 4)
  %121 = call i1 @nyx_string_equals(%nyx_string* %118, %nyx_string* %120)
  store i1 %121, i1* %41
  br label %sc_or_end31
sc_or_end31:
  %122 = load i1, i1* %41
  br i1 %122, label %sc_or_end33, label %sc_or_rhs32
sc_or_rhs32:
  %123 = load %nyx_string*, %nyx_string** %39
  %124 = getelementptr [6 x i8], [6 x i8]* @.str1115, i32 0, i32 0
  %125 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1115.c, i8* %124, i64 5)
  %126 = call i1 @nyx_string_equals(%nyx_string* %123, %nyx_string* %125)
  store i1 %126, i1* %40
  br label %sc_or_end33
sc_or_end33:
  %127 = load i1, i1* %40
  br i1 %127, label %then34, label %else35
then34:
  store i1 1, i1* %30
  br label %merge36
else35:
  %128 = load %nyx_string*, %nyx_string** %39
  %129 = getelementptr [12 x i8], [12 x i8]* @.str1116, i32 0, i32 0
  %130 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1116.c, i8* %129, i64 11)
  %131 = call i1 @nyx_string_equals(%nyx_string* %128, %nyx_string* %130)
  br i1 %131, label %then37, label %else38
then37:
  store i1 1, i1* %30
  br label %merge39
else38:
  %132 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge39
merge39:
  br label %merge36
merge36:
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  ret i64 0
}


attributes #0 = { returns_twice }

