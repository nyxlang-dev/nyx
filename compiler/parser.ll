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
@.str296 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
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
@.str333 = private unnamed_addr constant [72 x i8] c"las claves de un map literal deben ser String — usá {\22clave\22: valor}\00"
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
@.str484 = private unnamed_addr constant [14 x i8] c"module_marker\00"
@.str484.c = internal global %nyx_string* null
@.str485 = private unnamed_addr constant [4 x i8] c"LET\00"
@.str485.c = internal global %nyx_string* null
@.str486 = private unnamed_addr constant [4 x i8] c"VAR\00"
@.str486.c = internal global %nyx_string* null
@.str487 = private unnamed_addr constant [6 x i8] c"CONST\00"
@.str487.c = internal global %nyx_string* null
@.str488 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str488.c = internal global %nyx_string* null
@.str489 = private unnamed_addr constant [5 x i8] c"HASH\00"
@.str489.c = internal global %nyx_string* null
@.str490 = private unnamed_addr constant [13 x i8] c"LEFT_BRACKET\00"
@.str490.c = internal global %nyx_string* null
@.str491 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str491.c = internal global %nyx_string* null
@.str492 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str492.c = internal global %nyx_string* null
@.str493 = private unnamed_addr constant [1 x i8] c"\00"
@.str493.c = internal global %nyx_string* null
@.str494 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str494.c = internal global %nyx_string* null
@.str495 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str495.c = internal global %nyx_string* null
@.str496 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str496.c = internal global %nyx_string* null
@.str497 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str497.c = internal global %nyx_string* null
@.str498 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str498.c = internal global %nyx_string* null
@.str499 = private unnamed_addr constant [2 x i8] c",\00"
@.str499.c = internal global %nyx_string* null
@.str500 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str500.c = internal global %nyx_string* null
@.str501 = private unnamed_addr constant [2 x i8] c"(\00"
@.str501.c = internal global %nyx_string* null
@.str502 = private unnamed_addr constant [2 x i8] c")\00"
@.str502.c = internal global %nyx_string* null
@.str503 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str503.c = internal global %nyx_string* null
@.str504 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str504.c = internal global %nyx_string* null
@.str505 = private unnamed_addr constant [2 x i8] c"=\00"
@.str505.c = internal global %nyx_string* null
@.str506 = private unnamed_addr constant [14 x i8] c"RIGHT_BRACKET\00"
@.str506.c = internal global %nyx_string* null
@.str507 = private unnamed_addr constant [4 x i8] c"PUB\00"
@.str507.c = internal global %nyx_string* null
@.str508 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str508.c = internal global %nyx_string* null
@.str509 = private unnamed_addr constant [9 x i8] c"function\00"
@.str509.c = internal global %nyx_string* null
@.str510 = private unnamed_addr constant [7 x i8] c"export\00"
@.str510.c = internal global %nyx_string* null
@.str511 = private unnamed_addr constant [7 x i8] c"STRUCT\00"
@.str511.c = internal global %nyx_string* null
@.str512 = private unnamed_addr constant [7 x i8] c"struct\00"
@.str512.c = internal global %nyx_string* null
@.str513 = private unnamed_addr constant [7 x i8] c"export\00"
@.str513.c = internal global %nyx_string* null
@.str514 = private unnamed_addr constant [5 x i8] c"ENUM\00"
@.str514.c = internal global %nyx_string* null
@.str515 = private unnamed_addr constant [5 x i8] c"enum\00"
@.str515.c = internal global %nyx_string* null
@.str516 = private unnamed_addr constant [7 x i8] c"export\00"
@.str516.c = internal global %nyx_string* null
@.str517 = private unnamed_addr constant [8 x i8] c"NYX0105\00"
@.str517.c = internal global %nyx_string* null
@.str518 = private unnamed_addr constant [59 x i8] c"pub solo puede preceder fn, struct o enum tras un atributo\00"
@.str518.c = internal global %nyx_string* null
@.str519 = private unnamed_addr constant [59 x i8] c"pub can only precede fn, struct or enum after an attribute\00"
@.str519.c = internal global %nyx_string* null
@.str520 = private unnamed_addr constant [6 x i8] c"error\00"
@.str520.c = internal global %nyx_string* null
@.str521 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str521.c = internal global %nyx_string* null
@.str522 = private unnamed_addr constant [9 x i8] c"function\00"
@.str522.c = internal global %nyx_string* null
@.str523 = private unnamed_addr constant [7 x i8] c"STRUCT\00"
@.str523.c = internal global %nyx_string* null
@.str524 = private unnamed_addr constant [7 x i8] c"struct\00"
@.str524.c = internal global %nyx_string* null
@.str525 = private unnamed_addr constant [5 x i8] c"ENUM\00"
@.str525.c = internal global %nyx_string* null
@.str526 = private unnamed_addr constant [5 x i8] c"enum\00"
@.str526.c = internal global %nyx_string* null
@.str527 = private unnamed_addr constant [8 x i8] c"NYX0105\00"
@.str527.c = internal global %nyx_string* null
@.str528 = private unnamed_addr constant [69 x i8] c"#[...] solo soportado antes de fn, struct, enum o pub fn/struct/enum\00"
@.str528.c = internal global %nyx_string* null
@.str529 = private unnamed_addr constant [72 x i8] c"#[...] is only supported before fn, struct, enum, or pub fn/struct/enum\00"
@.str529.c = internal global %nyx_string* null
@.str530 = private unnamed_addr constant [6 x i8] c"error\00"
@.str530.c = internal global %nyx_string* null
@.str531 = private unnamed_addr constant [7 x i8] c"STRUCT\00"
@.str531.c = internal global %nyx_string* null
@.str532 = private unnamed_addr constant [5 x i8] c"ENUM\00"
@.str532.c = internal global %nyx_string* null
@.str533 = private unnamed_addr constant [6 x i8] c"MATCH\00"
@.str533.c = internal global %nyx_string* null
@.str534 = private unnamed_addr constant [3 x i8] c"IF\00"
@.str534.c = internal global %nyx_string* null
@.str535 = private unnamed_addr constant [6 x i8] c"WHILE\00"
@.str535.c = internal global %nyx_string* null
@.str536 = private unnamed_addr constant [4 x i8] c"FOR\00"
@.str536.c = internal global %nyx_string* null
@.str537 = private unnamed_addr constant [7 x i8] c"RETURN\00"
@.str537.c = internal global %nyx_string* null
@.str538 = private unnamed_addr constant [6 x i8] c"BREAK\00"
@.str538.c = internal global %nyx_string* null
@.str539 = private unnamed_addr constant [6 x i8] c"break\00"
@.str539.c = internal global %nyx_string* null
@.str540 = private unnamed_addr constant [9 x i8] c"CONTINUE\00"
@.str540.c = internal global %nyx_string* null
@.str541 = private unnamed_addr constant [9 x i8] c"continue\00"
@.str541.c = internal global %nyx_string* null
@.str542 = private unnamed_addr constant [7 x i8] c"EXPORT\00"
@.str542.c = internal global %nyx_string* null
@.str543 = private unnamed_addr constant [4 x i8] c"PUB\00"
@.str543.c = internal global %nyx_string* null
@.str544 = private unnamed_addr constant [7 x i8] c"IMPORT\00"
@.str544.c = internal global %nyx_string* null
@.str545 = private unnamed_addr constant [6 x i8] c"TRAIT\00"
@.str545.c = internal global %nyx_string* null
@.str546 = private unnamed_addr constant [5 x i8] c"IMPL\00"
@.str546.c = internal global %nyx_string* null
@.str547 = private unnamed_addr constant [5 x i8] c"TEST\00"
@.str547.c = internal global %nyx_string* null
@.str548 = private unnamed_addr constant [7 x i8] c"EXTERN\00"
@.str548.c = internal global %nyx_string* null
@.str549 = private unnamed_addr constant [7 x i8] c"UNSAFE\00"
@.str549.c = internal global %nyx_string* null
@.str550 = private unnamed_addr constant [13 x i8] c"unsafe_block\00"
@.str550.c = internal global %nyx_string* null
@.str551 = private unnamed_addr constant [7 x i8] c"STATIC\00"
@.str551.c = internal global %nyx_string* null
@.str552 = private unnamed_addr constant [7 x i8] c"MODULE\00"
@.str552.c = internal global %nyx_string* null
@.str553 = private unnamed_addr constant [6 x i8] c"DEFER\00"
@.str553.c = internal global %nyx_string* null
@.str554 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str554.c = internal global %nyx_string* null
@.str555 = private unnamed_addr constant [6 x i8] c"defer\00"
@.str555.c = internal global %nyx_string* null
@.str556 = private unnamed_addr constant [6 x i8] c"block\00"
@.str556.c = internal global %nyx_string* null
@.str557 = private unnamed_addr constant [6 x i8] c"defer\00"
@.str557.c = internal global %nyx_string* null
@.str558 = private unnamed_addr constant [4 x i8] c"TRY\00"
@.str558.c = internal global %nyx_string* null
@.str559 = private unnamed_addr constant [6 x i8] c"THROW\00"
@.str559.c = internal global %nyx_string* null
@.str560 = private unnamed_addr constant [6 x i8] c"ASYNC\00"
@.str560.c = internal global %nyx_string* null
@.str561 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str561.c = internal global %nyx_string* null
@.str562 = private unnamed_addr constant [5 x i8] c"type\00"
@.str562.c = internal global %nyx_string* null
@.str563 = private unnamed_addr constant [6 x i8] c"macro\00"
@.str563.c = internal global %nyx_string* null
@.str564 = private unnamed_addr constant [6 x i8] c"bench\00"
@.str564.c = internal global %nyx_string* null
@.str565 = private unnamed_addr constant [6 x i8] c"spawn\00"
@.str565.c = internal global %nyx_string* null
@.str566 = private unnamed_addr constant [7 x i8] c"select\00"
@.str566.c = internal global %nyx_string* null
@.str567 = private unnamed_addr constant [5 x i8] c"safe\00"
@.str567.c = internal global %nyx_string* null
@.str568 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str568.c = internal global %nyx_string* null
@.str569 = private unnamed_addr constant [9 x i8] c"function\00"
@.str569.c = internal global %nyx_string* null
@.str570 = private unnamed_addr constant [5 x i8] c"safe\00"
@.str570.c = internal global %nyx_string* null
@.str571 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str571.c = internal global %nyx_string* null
@.str572 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str572.c = internal global %nyx_string* null
@.str573 = private unnamed_addr constant [13 x i8] c"deref_assign\00"
@.str573.c = internal global %nyx_string* null
@.str574 = private unnamed_addr constant [6 x i8] c"deref\00"
@.str574.c = internal global %nyx_string* null
@.str575 = private unnamed_addr constant [9 x i8] c"__spawn_\00"
@.str575.c = internal global %nyx_string* null
@.str576 = private unnamed_addr constant [7 x i8] c"return\00"
@.str576.c = internal global %nyx_string* null
@.str577 = private unnamed_addr constant [8 x i8] c"integer\00"
@.str577.c = internal global %nyx_string* null
@.str578 = private unnamed_addr constant [9 x i8] c"function\00"
@.str578.c = internal global %nyx_string* null
@.str579 = private unnamed_addr constant [4 x i8] c"int\00"
@.str579.c = internal global %nyx_string* null
@.str580 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str580.c = internal global %nyx_string* null
@.str581 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str581.c = internal global %nyx_string* null
@.str582 = private unnamed_addr constant [11 x i8] c"__go_spawn\00"
@.str582.c = internal global %nyx_string* null
@.str583 = private unnamed_addr constant [5 x i8] c"call\00"
@.str583.c = internal global %nyx_string* null
@.str584 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str584.c = internal global %nyx_string* null
@.str585 = private unnamed_addr constant [6 x i8] c"block\00"
@.str585.c = internal global %nyx_string* null
@.str586 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str586.c = internal global %nyx_string* null
@.str587 = private unnamed_addr constant [8 x i8] c"default\00"
@.str587.c = internal global %nyx_string* null
@.str588 = private unnamed_addr constant [12 x i8] c"ARROW_MATCH\00"
@.str588.c = internal global %nyx_string* null
@.str589 = private unnamed_addr constant [5 x i8] c"case\00"
@.str589.c = internal global %nyx_string* null
@.str590 = private unnamed_addr constant [12 x i8] c"ARROW_MATCH\00"
@.str590.c = internal global %nyx_string* null
@.str591 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str591.c = internal global %nyx_string* null
@.str592 = private unnamed_addr constant [12 x i8] c"select_stmt\00"
@.str592.c = internal global %nyx_string* null
@.str593 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str593.c = internal global %nyx_string* null
@.str594 = private unnamed_addr constant [7 x i8] c"100000\00"
@.str594.c = internal global %nyx_string* null
@.str595 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str595.c = internal global %nyx_string* null
@.str596 = private unnamed_addr constant [11 x i8] c"bench_decl\00"
@.str596.c = internal global %nyx_string* null
@.str597 = private unnamed_addr constant [5 x i8] c"TEST\00"
@.str597.c = internal global %nyx_string* null
@.str598 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str598.c = internal global %nyx_string* null
@.str599 = private unnamed_addr constant [10 x i8] c"test_decl\00"
@.str599.c = internal global %nyx_string* null
@.str600 = private unnamed_addr constant [7 x i8] c"STATIC\00"
@.str600.c = internal global %nyx_string* null
@.str601 = private unnamed_addr constant [4 x i8] c"VAR\00"
@.str601.c = internal global %nyx_string* null
@.str602 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str602.c = internal global %nyx_string* null
@.str603 = private unnamed_addr constant [4 x i8] c"int\00"
@.str603.c = internal global %nyx_string* null
@.str604 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str604.c = internal global %nyx_string* null
@.str605 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str605.c = internal global %nyx_string* null
@.str606 = private unnamed_addr constant [11 x i8] c"static_var\00"
@.str606.c = internal global %nyx_string* null
@.str607 = private unnamed_addr constant [7 x i8] c"EXTERN\00"
@.str607.c = internal global %nyx_string* null
@.str608 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str608.c = internal global %nyx_string* null
@.str609 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str609.c = internal global %nyx_string* null
@.str610 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str610.c = internal global %nyx_string* null
@.str611 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str611.c = internal global %nyx_string* null
@.str612 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str612.c = internal global %nyx_string* null
@.str613 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str613.c = internal global %nyx_string* null
@.str614 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str614.c = internal global %nyx_string* null
@.str615 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str615.c = internal global %nyx_string* null
@.str616 = private unnamed_addr constant [5 x i8] c"void\00"
@.str616.c = internal global %nyx_string* null
@.str617 = private unnamed_addr constant [6 x i8] c"ARROW\00"
@.str617.c = internal global %nyx_string* null
@.str618 = private unnamed_addr constant [10 x i8] c"extern_fn\00"
@.str618.c = internal global %nyx_string* null
@.str619 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str619.c = internal global %nyx_string* null
@.str620 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str620.c = internal global %nyx_string* null
@.str621 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str621.c = internal global %nyx_string* null
@.str622 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str622.c = internal global %nyx_string* null
@.str623 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str623.c = internal global %nyx_string* null
@.str624 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str624.c = internal global %nyx_string* null
@.str625 = private unnamed_addr constant [12 x i8] c"ARROW_MATCH\00"
@.str625.c = internal global %nyx_string* null
@.str626 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str626.c = internal global %nyx_string* null
@.str627 = private unnamed_addr constant [1 x i8] c"\00"
@.str627.c = internal global %nyx_string* null
@.str628 = private unnamed_addr constant [2 x i8] c",\00"
@.str628.c = internal global %nyx_string* null
@.str629 = private unnamed_addr constant [10 x i8] c"macro_def\00"
@.str629.c = internal global %nyx_string* null
@.str630 = private unnamed_addr constant [4 x i8] c"NOT\00"
@.str630.c = internal global %nyx_string* null
@.str631 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str631.c = internal global %nyx_string* null
@.str632 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str632.c = internal global %nyx_string* null
@.str633 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str633.c = internal global %nyx_string* null
@.str634 = private unnamed_addr constant [1 x i8] c"\00"
@.str634.c = internal global %nyx_string* null
@.str635 = private unnamed_addr constant [2 x i8] c",\00"
@.str635.c = internal global %nyx_string* null
@.str636 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str636.c = internal global %nyx_string* null
@.str637 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str637.c = internal global %nyx_string* null
@.str638 = private unnamed_addr constant [5 x i8] c"PIPE\00"
@.str638.c = internal global %nyx_string* null
@.str639 = private unnamed_addr constant [5 x i8] c"PIPE\00"
@.str639.c = internal global %nyx_string* null
@.str640 = private unnamed_addr constant [9 x i8] c"enum_def\00"
@.str640.c = internal global %nyx_string* null
@.str641 = private unnamed_addr constant [11 x i8] c"type_alias\00"
@.str641.c = internal global %nyx_string* null
@.str642 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str642.c = internal global %nyx_string* null
@.str643 = private unnamed_addr constant [2 x i8] c"(\00"
@.str643.c = internal global %nyx_string* null
@.str644 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str644.c = internal global %nyx_string* null
@.str645 = private unnamed_addr constant [2 x i8] c",\00"
@.str645.c = internal global %nyx_string* null
@.str646 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str646.c = internal global %nyx_string* null
@.str647 = private unnamed_addr constant [2 x i8] c")\00"
@.str647.c = internal global %nyx_string* null
@.str648 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str648.c = internal global %nyx_string* null
@.str649 = private unnamed_addr constant [3 x i8] c"Fn\00"
@.str649.c = internal global %nyx_string* null
@.str650 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str650.c = internal global %nyx_string* null
@.str651 = private unnamed_addr constant [2 x i8] c"*\00"
@.str651.c = internal global %nyx_string* null
@.str652 = private unnamed_addr constant [4 x i8] c"AMP\00"
@.str652.c = internal global %nyx_string* null
@.str653 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str653.c = internal global %nyx_string* null
@.str654 = private unnamed_addr constant [1 x i8] c"'"
@.str655 = private unnamed_addr constant [4 x i8] c"mut\00"
@.str655.c = internal global %nyx_string* null
@.str656 = private unnamed_addr constant [6 x i8] c"&mut \00"
@.str656.c = internal global %nyx_string* null
@.str657 = private unnamed_addr constant [2 x i8] c"&\00"
@.str657.c = internal global %nyx_string* null
@.str658 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str658.c = internal global %nyx_string* null
@.str659 = private unnamed_addr constant [13 x i8] c"LEFT_BRACKET\00"
@.str659.c = internal global %nyx_string* null
@.str660 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str660.c = internal global %nyx_string* null
@.str661 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str661.c = internal global %nyx_string* null
@.str662 = private unnamed_addr constant [14 x i8] c"RIGHT_BRACKET\00"
@.str662.c = internal global %nyx_string* null
@.str663 = private unnamed_addr constant [2 x i8] c"[\00"
@.str663.c = internal global %nyx_string* null
@.str664 = private unnamed_addr constant [2 x i8] c":\00"
@.str664.c = internal global %nyx_string* null
@.str665 = private unnamed_addr constant [2 x i8] c"]\00"
@.str665.c = internal global %nyx_string* null
@.str666 = private unnamed_addr constant [4 x i8] c"DYN\00"
@.str666.c = internal global %nyx_string* null
@.str667 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str667.c = internal global %nyx_string* null
@.str668 = private unnamed_addr constant [5 x i8] c"dyn \00"
@.str668.c = internal global %nyx_string* null
@.str669 = private unnamed_addr constant [5 x i8] c"IMPL\00"
@.str669.c = internal global %nyx_string* null
@.str670 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str670.c = internal global %nyx_string* null
@.str671 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str671.c = internal global %nyx_string* null
@.str672 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str672.c = internal global %nyx_string* null
@.str673 = private unnamed_addr constant [2 x i8] c"+\00"
@.str673.c = internal global %nyx_string* null
@.str674 = private unnamed_addr constant [5 x i8] c"dyn \00"
@.str674.c = internal global %nyx_string* null
@.str675 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str675.c = internal global %nyx_string* null
@.str676 = private unnamed_addr constant [5 x i8] c"Self\00"
@.str676.c = internal global %nyx_string* null
@.str677 = private unnamed_addr constant [4 x i8] c"DOT\00"
@.str677.c = internal global %nyx_string* null
@.str678 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str678.c = internal global %nyx_string* null
@.str679 = private unnamed_addr constant [6 x i8] c"Self.\00"
@.str679.c = internal global %nyx_string* null
@.str680 = private unnamed_addr constant [3 x i8] c"Fn\00"
@.str680.c = internal global %nyx_string* null
@.str681 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str681.c = internal global %nyx_string* null
@.str682 = private unnamed_addr constant [4 x i8] c"Fn(\00"
@.str682.c = internal global %nyx_string* null
@.str683 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str683.c = internal global %nyx_string* null
@.str684 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str684.c = internal global %nyx_string* null
@.str685 = private unnamed_addr constant [2 x i8] c",\00"
@.str685.c = internal global %nyx_string* null
@.str686 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str686.c = internal global %nyx_string* null
@.str687 = private unnamed_addr constant [2 x i8] c")\00"
@.str687.c = internal global %nyx_string* null
@.str688 = private unnamed_addr constant [6 x i8] c"ARROW\00"
@.str688.c = internal global %nyx_string* null
@.str689 = private unnamed_addr constant [3 x i8] c"->\00"
@.str689.c = internal global %nyx_string* null
@.str690 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str690.c = internal global %nyx_string* null
@.str691 = private unnamed_addr constant [2 x i8] c"<\00"
@.str691.c = internal global %nyx_string* null
@.str692 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str692.c = internal global %nyx_string* null
@.str693 = private unnamed_addr constant [2 x i8] c",\00"
@.str693.c = internal global %nyx_string* null
@.str694 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str694.c = internal global %nyx_string* null
@.str695 = private unnamed_addr constant [12 x i8] c"SHIFT_RIGHT\00"
@.str695.c = internal global %nyx_string* null
@.str696 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str696.c = internal global %nyx_string* null
@.str697 = private unnamed_addr constant [2 x i8] c">\00"
@.str697.c = internal global %nyx_string* null
@.str698 = private unnamed_addr constant [4 x i8] c"VAR\00"
@.str698.c = internal global %nyx_string* null
@.str699 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str699.c = internal global %nyx_string* null
@.str700 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str700.c = internal global %nyx_string* null
@.str701 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str701.c = internal global %nyx_string* null
@.str702 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str702.c = internal global %nyx_string* null
@.str703 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str703.c = internal global %nyx_string* null
@.str704 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str704.c = internal global %nyx_string* null
@.str705 = private unnamed_addr constant [22 x i8] c"let_destructure_tuple\00"
@.str705.c = internal global %nyx_string* null
@.str706 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str706.c = internal global %nyx_string* null
@.str707 = private unnamed_addr constant [1 x i8] c"\00"
@.str707.c = internal global %nyx_string* null
@.str708 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str708.c = internal global %nyx_string* null
@.str709 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str709.c = internal global %nyx_string* null
@.str710 = private unnamed_addr constant [4 x i8] c"let\00"
@.str710.c = internal global %nyx_string* null
@.str711 = private unnamed_addr constant [6 x i8] c"CONST\00"
@.str711.c = internal global %nyx_string* null
@.str712 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str712.c = internal global %nyx_string* null
@.str713 = private unnamed_addr constant [1 x i8] c"\00"
@.str713.c = internal global %nyx_string* null
@.str714 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str714.c = internal global %nyx_string* null
@.str715 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str715.c = internal global %nyx_string* null
@.str716 = private unnamed_addr constant [6 x i8] c"const\00"
@.str716.c = internal global %nyx_string* null
@.str717 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str717.c = internal global %nyx_string* null
@.str718 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str718.c = internal global %nyx_string* null
@.str719 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str719.c = internal global %nyx_string* null
@.str720 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str720.c = internal global %nyx_string* null
@.str721 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str721.c = internal global %nyx_string* null
@.str722 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str722.c = internal global %nyx_string* null
@.str723 = private unnamed_addr constant [1 x i8] c"\00"
@.str723.c = internal global %nyx_string* null
@.str724 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str724.c = internal global %nyx_string* null
@.str725 = private unnamed_addr constant [1 x i8] c"\00"
@.str725.c = internal global %nyx_string* null
@.str726 = private unnamed_addr constant [6 x i8] c"ARROW\00"
@.str726.c = internal global %nyx_string* null
@.str727 = private unnamed_addr constant [9 x i8] c"async_fn\00"
@.str727.c = internal global %nyx_string* null
@.str728 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str728.c = internal global %nyx_string* null
@.str729 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str729.c = internal global %nyx_string* null
@.str730 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str730.c = internal global %nyx_string* null
@.str731 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str731.c = internal global %nyx_string* null
@.str732 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str732.c = internal global %nyx_string* null
@.str733 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str733.c = internal global %nyx_string* null
@.str734 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str734.c = internal global %nyx_string* null
@.str735 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str735.c = internal global %nyx_string* null
@.str736 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str736.c = internal global %nyx_string* null
@.str737 = private unnamed_addr constant [2 x i8] c"+\00"
@.str737.c = internal global %nyx_string* null
@.str738 = private unnamed_addr constant [2 x i8] c":\00"
@.str738.c = internal global %nyx_string* null
@.str739 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str739.c = internal global %nyx_string* null
@.str740 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str740.c = internal global %nyx_string* null
@.str741 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str741.c = internal global %nyx_string* null
@.str742 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str742.c = internal global %nyx_string* null
@.str743 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str743.c = internal global %nyx_string* null
@.str744 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str744.c = internal global %nyx_string* null
@.str745 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str745.c = internal global %nyx_string* null
@.str746 = private unnamed_addr constant [2 x i8] c"+\00"
@.str746.c = internal global %nyx_string* null
@.str747 = private unnamed_addr constant [2 x i8] c":\00"
@.str747.c = internal global %nyx_string* null
@.str748 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str748.c = internal global %nyx_string* null
@.str749 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str749.c = internal global %nyx_string* null
@.str750 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str750.c = internal global %nyx_string* null
@.str751 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str751.c = internal global %nyx_string* null
@.str752 = private unnamed_addr constant [9 x i8] c"ELLIPSIS\00"
@.str752.c = internal global %nyx_string* null
@.str753 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str753.c = internal global %nyx_string* null
@.str754 = private unnamed_addr constant [10 x i8] c"...String\00"
@.str754.c = internal global %nyx_string* null
@.str755 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str755.c = internal global %nyx_string* null
@.str756 = private unnamed_addr constant [4 x i8] c"...\00"
@.str756.c = internal global %nyx_string* null
@.str757 = private unnamed_addr constant [1 x i8] c"\00"
@.str757.c = internal global %nyx_string* null
@.str758 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str758.c = internal global %nyx_string* null
@.str759 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str759.c = internal global %nyx_string* null
@.str760 = private unnamed_addr constant [4 x i8] c"AMP\00"
@.str760.c = internal global %nyx_string* null
@.str761 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str761.c = internal global %nyx_string* null
@.str762 = private unnamed_addr constant [2 x i8] c"&\00"
@.str762.c = internal global %nyx_string* null
@.str763 = private unnamed_addr constant [4 x i8] c"mut\00"
@.str763.c = internal global %nyx_string* null
@.str764 = private unnamed_addr constant [5 x i8] c"&mut\00"
@.str764.c = internal global %nyx_string* null
@.str765 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str765.c = internal global %nyx_string* null
@.str766 = private unnamed_addr constant [1 x i8] c"\00"
@.str766.c = internal global %nyx_string* null
@.str767 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str767.c = internal global %nyx_string* null
@.str768 = private unnamed_addr constant [1 x i8] c"\00"
@.str768.c = internal global %nyx_string* null
@.str769 = private unnamed_addr constant [1 x i8] c"\00"
@.str769.c = internal global %nyx_string* null
@.str770 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str770.c = internal global %nyx_string* null
@.str771 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str771.c = internal global %nyx_string* null
@.str772 = private unnamed_addr constant [1 x i8] c"\00"
@.str772.c = internal global %nyx_string* null
@.str773 = private unnamed_addr constant [1 x i8] c"\00"
@.str773.c = internal global %nyx_string* null
@.str774 = private unnamed_addr constant [6 x i8] c"ARROW\00"
@.str774.c = internal global %nyx_string* null
@.str775 = private unnamed_addr constant [6 x i8] c"WHERE\00"
@.str775.c = internal global %nyx_string* null
@.str776 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str776.c = internal global %nyx_string* null
@.str777 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str777.c = internal global %nyx_string* null
@.str778 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str778.c = internal global %nyx_string* null
@.str779 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str779.c = internal global %nyx_string* null
@.str780 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str780.c = internal global %nyx_string* null
@.str781 = private unnamed_addr constant [2 x i8] c"+\00"
@.str781.c = internal global %nyx_string* null
@.str782 = private unnamed_addr constant [1 x i8] c":"
@.str783 = private unnamed_addr constant [2 x i8] c"+\00"
@.str783.c = internal global %nyx_string* null
@.str784 = private unnamed_addr constant [2 x i8] c":\00"
@.str784.c = internal global %nyx_string* null
@.str785 = private unnamed_addr constant [2 x i8] c":\00"
@.str785.c = internal global %nyx_string* null
@.str786 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str786.c = internal global %nyx_string* null
@.str787 = private unnamed_addr constant [10 x i8] c"_consumed\00"
@.str787.c = internal global %nyx_string* null
@.str788 = private unnamed_addr constant [10 x i8] c"_consumed\00"
@.str788.c = internal global %nyx_string* null
@.str789 = private unnamed_addr constant [9 x i8] c"function\00"
@.str789.c = internal global %nyx_string* null
@.str790 = private unnamed_addr constant [6 x i8] c"block\00"
@.str790.c = internal global %nyx_string* null
@.str791 = private unnamed_addr constant [1 x i8] c"\00"
@.str791.c = internal global %nyx_string* null
@.str792 = private unnamed_addr constant [10 x i8] c"__retlt__\00"
@.str792.c = internal global %nyx_string* null
@.str793 = private unnamed_addr constant [12 x i8] c"__paramlt__\00"
@.str793.c = internal global %nyx_string* null
@.str794 = private unnamed_addr constant [9 x i8] c"function\00"
@.str794.c = internal global %nyx_string* null
@.str795 = private unnamed_addr constant [1 x i8] c"\00"
@.str795.c = internal global %nyx_string* null
@.str796 = private unnamed_addr constant [10 x i8] c"__retlt__\00"
@.str796.c = internal global %nyx_string* null
@.str797 = private unnamed_addr constant [12 x i8] c"__paramlt__\00"
@.str797.c = internal global %nyx_string* null
@.str798 = private unnamed_addr constant [7 x i8] c"STRUCT\00"
@.str798.c = internal global %nyx_string* null
@.str799 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str799.c = internal global %nyx_string* null
@.str800 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str800.c = internal global %nyx_string* null
@.str801 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str801.c = internal global %nyx_string* null
@.str802 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str802.c = internal global %nyx_string* null
@.str803 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str803.c = internal global %nyx_string* null
@.str804 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str804.c = internal global %nyx_string* null
@.str805 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str805.c = internal global %nyx_string* null
@.str806 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str806.c = internal global %nyx_string* null
@.str807 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str807.c = internal global %nyx_string* null
@.str808 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str808.c = internal global %nyx_string* null
@.str809 = private unnamed_addr constant [3 x i8] c"_0\00"
@.str809.c = internal global %nyx_string* null
@.str810 = private unnamed_addr constant [7 x i8] c"struct\00"
@.str810.c = internal global %nyx_string* null
@.str811 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str811.c = internal global %nyx_string* null
@.str812 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str812.c = internal global %nyx_string* null
@.str813 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str813.c = internal global %nyx_string* null
@.str814 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str814.c = internal global %nyx_string* null
@.str815 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str815.c = internal global %nyx_string* null
@.str816 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str816.c = internal global %nyx_string* null
@.str817 = private unnamed_addr constant [7 x i8] c"struct\00"
@.str817.c = internal global %nyx_string* null
@.str818 = private unnamed_addr constant [3 x i8] c"IF\00"
@.str818.c = internal global %nyx_string* null
@.str819 = private unnamed_addr constant [4 x i8] c"LET\00"
@.str819.c = internal global %nyx_string* null
@.str820 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str820.c = internal global %nyx_string* null
@.str821 = private unnamed_addr constant [5 x i8] c"ELSE\00"
@.str821.c = internal global %nyx_string* null
@.str822 = private unnamed_addr constant [3 x i8] c"IF\00"
@.str822.c = internal global %nyx_string* null
@.str823 = private unnamed_addr constant [3 x i8] c"if\00"
@.str823.c = internal global %nyx_string* null
@.str824 = private unnamed_addr constant [4 x i8] c"LET\00"
@.str824.c = internal global %nyx_string* null
@.str825 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str825.c = internal global %nyx_string* null
@.str826 = private unnamed_addr constant [6 x i8] c"block\00"
@.str826.c = internal global %nyx_string* null
@.str827 = private unnamed_addr constant [5 x i8] c"ELSE\00"
@.str827.c = internal global %nyx_string* null
@.str828 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str828.c = internal global %nyx_string* null
@.str829 = private unnamed_addr constant [10 x i8] c"match_arm\00"
@.str829.c = internal global %nyx_string* null
@.str830 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str830.c = internal global %nyx_string* null
@.str831 = private unnamed_addr constant [9 x i8] c"wildcard\00"
@.str831.c = internal global %nyx_string* null
@.str832 = private unnamed_addr constant [10 x i8] c"match_arm\00"
@.str832.c = internal global %nyx_string* null
@.str833 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str833.c = internal global %nyx_string* null
@.str834 = private unnamed_addr constant [6 x i8] c"match\00"
@.str834.c = internal global %nyx_string* null
@.str835 = private unnamed_addr constant [6 x i8] c"WHILE\00"
@.str835.c = internal global %nyx_string* null
@.str836 = private unnamed_addr constant [4 x i8] c"LET\00"
@.str836.c = internal global %nyx_string* null
@.str837 = private unnamed_addr constant [6 x i8] c"while\00"
@.str837.c = internal global %nyx_string* null
@.str838 = private unnamed_addr constant [4 x i8] c"LET\00"
@.str838.c = internal global %nyx_string* null
@.str839 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str839.c = internal global %nyx_string* null
@.str840 = private unnamed_addr constant [10 x i8] c"while_let\00"
@.str840.c = internal global %nyx_string* null
@.str841 = private unnamed_addr constant [4 x i8] c"FOR\00"
@.str841.c = internal global %nyx_string* null
@.str842 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str842.c = internal global %nyx_string* null
@.str843 = private unnamed_addr constant [1 x i8] c"\00"
@.str843.c = internal global %nyx_string* null
@.str844 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str844.c = internal global %nyx_string* null
@.str845 = private unnamed_addr constant [3 x i8] c"IN\00"
@.str845.c = internal global %nyx_string* null
@.str846 = private unnamed_addr constant [4 x i8] c"for\00"
@.str846.c = internal global %nyx_string* null
@.str847 = private unnamed_addr constant [7 x i8] c"RETURN\00"
@.str847.c = internal global %nyx_string* null
@.str848 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str848.c = internal global %nyx_string* null
@.str849 = private unnamed_addr constant [4 x i8] c"EOF\00"
@.str849.c = internal global %nyx_string* null
@.str850 = private unnamed_addr constant [4 x i8] c"LET\00"
@.str850.c = internal global %nyx_string* null
@.str851 = private unnamed_addr constant [4 x i8] c"VAR\00"
@.str851.c = internal global %nyx_string* null
@.str852 = private unnamed_addr constant [6 x i8] c"WHILE\00"
@.str852.c = internal global %nyx_string* null
@.str853 = private unnamed_addr constant [4 x i8] c"FOR\00"
@.str853.c = internal global %nyx_string* null
@.str854 = private unnamed_addr constant [7 x i8] c"RETURN\00"
@.str854.c = internal global %nyx_string* null
@.str855 = private unnamed_addr constant [8 x i8] c"integer\00"
@.str855.c = internal global %nyx_string* null
@.str856 = private unnamed_addr constant [7 x i8] c"return\00"
@.str856.c = internal global %nyx_string* null
@.str857 = private unnamed_addr constant [7 x i8] c"return\00"
@.str857.c = internal global %nyx_string* null
@.str858 = private unnamed_addr constant [7 x i8] c"EXPORT\00"
@.str858.c = internal global %nyx_string* null
@.str859 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str859.c = internal global %nyx_string* null
@.str860 = private unnamed_addr constant [7 x i8] c"export\00"
@.str860.c = internal global %nyx_string* null
@.str861 = private unnamed_addr constant [7 x i8] c"STRUCT\00"
@.str861.c = internal global %nyx_string* null
@.str862 = private unnamed_addr constant [7 x i8] c"export\00"
@.str862.c = internal global %nyx_string* null
@.str863 = private unnamed_addr constant [5 x i8] c"ENUM\00"
@.str863.c = internal global %nyx_string* null
@.str864 = private unnamed_addr constant [7 x i8] c"export\00"
@.str864.c = internal global %nyx_string* null
@.str865 = private unnamed_addr constant [6 x i8] c"TRAIT\00"
@.str865.c = internal global %nyx_string* null
@.str866 = private unnamed_addr constant [7 x i8] c"export\00"
@.str866.c = internal global %nyx_string* null
@.str867 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str867.c = internal global %nyx_string* null
@.str868 = private unnamed_addr constant [5 x i8] c"type\00"
@.str868.c = internal global %nyx_string* null
@.str869 = private unnamed_addr constant [7 x i8] c"export\00"
@.str869.c = internal global %nyx_string* null
@.str870 = private unnamed_addr constant [8 x i8] c"NYX0105\00"
@.str870.c = internal global %nyx_string* null
@.str871 = private unnamed_addr constant [58 x i8] c"export solo puede preceder fn, struct, enum, trait o type\00"
@.str871.c = internal global %nyx_string* null
@.str872 = private unnamed_addr constant [56 x i8] c"export can only precede fn, struct, enum, trait or type\00"
@.str872.c = internal global %nyx_string* null
@.str873 = private unnamed_addr constant [6 x i8] c"error\00"
@.str873.c = internal global %nyx_string* null
@.str874 = private unnamed_addr constant [7 x i8] c"IMPORT\00"
@.str874.c = internal global %nyx_string* null
@.str875 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str875.c = internal global %nyx_string* null
@.str876 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str876.c = internal global %nyx_string* null
@.str877 = private unnamed_addr constant [1 x i8] c"\00"
@.str877.c = internal global %nyx_string* null
@.str878 = private unnamed_addr constant [3 x i8] c"AS\00"
@.str878.c = internal global %nyx_string* null
@.str879 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str879.c = internal global %nyx_string* null
@.str880 = private unnamed_addr constant [14 x i8] c"import_module\00"
@.str880.c = internal global %nyx_string* null
@.str881 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str881.c = internal global %nyx_string* null
@.str882 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str882.c = internal global %nyx_string* null
@.str883 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str883.c = internal global %nyx_string* null
@.str884 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str884.c = internal global %nyx_string* null
@.str885 = private unnamed_addr constant [5 x i8] c"FROM\00"
@.str885.c = internal global %nyx_string* null
@.str886 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str886.c = internal global %nyx_string* null
@.str887 = private unnamed_addr constant [7 x i8] c"import\00"
@.str887.c = internal global %nyx_string* null
@.str888 = private unnamed_addr constant [4 x i8] c"PUB\00"
@.str888.c = internal global %nyx_string* null
@.str889 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str889.c = internal global %nyx_string* null
@.str890 = private unnamed_addr constant [7 x i8] c"export\00"
@.str890.c = internal global %nyx_string* null
@.str891 = private unnamed_addr constant [7 x i8] c"STRUCT\00"
@.str891.c = internal global %nyx_string* null
@.str892 = private unnamed_addr constant [7 x i8] c"export\00"
@.str892.c = internal global %nyx_string* null
@.str893 = private unnamed_addr constant [5 x i8] c"ENUM\00"
@.str893.c = internal global %nyx_string* null
@.str894 = private unnamed_addr constant [7 x i8] c"export\00"
@.str894.c = internal global %nyx_string* null
@.str895 = private unnamed_addr constant [6 x i8] c"TRAIT\00"
@.str895.c = internal global %nyx_string* null
@.str896 = private unnamed_addr constant [7 x i8] c"export\00"
@.str896.c = internal global %nyx_string* null
@.str897 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str897.c = internal global %nyx_string* null
@.str898 = private unnamed_addr constant [5 x i8] c"type\00"
@.str898.c = internal global %nyx_string* null
@.str899 = private unnamed_addr constant [7 x i8] c"export\00"
@.str899.c = internal global %nyx_string* null
@.str900 = private unnamed_addr constant [8 x i8] c"NYX0105\00"
@.str900.c = internal global %nyx_string* null
@.str901 = private unnamed_addr constant [55 x i8] c"pub solo puede preceder fn, struct, enum, trait o type\00"
@.str901.c = internal global %nyx_string* null
@.str902 = private unnamed_addr constant [53 x i8] c"pub can only precede fn, struct, enum, trait or type\00"
@.str902.c = internal global %nyx_string* null
@.str903 = private unnamed_addr constant [6 x i8] c"error\00"
@.str903.c = internal global %nyx_string* null
@.str904 = private unnamed_addr constant [7 x i8] c"MODULE\00"
@.str904.c = internal global %nyx_string* null
@.str905 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str905.c = internal global %nyx_string* null
@.str906 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str906.c = internal global %nyx_string* null
@.str907 = private unnamed_addr constant [13 x i8] c"LEFT_BRACKET\00"
@.str907.c = internal global %nyx_string* null
@.str908 = private unnamed_addr constant [14 x i8] c"RIGHT_BRACKET\00"
@.str908.c = internal global %nyx_string* null
@.str909 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str909.c = internal global %nyx_string* null
@.str910 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str910.c = internal global %nyx_string* null
@.str911 = private unnamed_addr constant [14 x i8] c"RIGHT_BRACKET\00"
@.str911.c = internal global %nyx_string* null
@.str912 = private unnamed_addr constant [12 x i8] c"module_decl\00"
@.str912.c = internal global %nyx_string* null
@.str913 = private unnamed_addr constant [6 x i8] c"TRAIT\00"
@.str913.c = internal global %nyx_string* null
@.str914 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str914.c = internal global %nyx_string* null
@.str915 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str915.c = internal global %nyx_string* null
@.str916 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str916.c = internal global %nyx_string* null
@.str917 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str917.c = internal global %nyx_string* null
@.str918 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str918.c = internal global %nyx_string* null
@.str919 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str919.c = internal global %nyx_string* null
@.str920 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str920.c = internal global %nyx_string* null
@.str921 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str921.c = internal global %nyx_string* null
@.str922 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str922.c = internal global %nyx_string* null
@.str923 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str923.c = internal global %nyx_string* null
@.str924 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str924.c = internal global %nyx_string* null
@.str925 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str925.c = internal global %nyx_string* null
@.str926 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str926.c = internal global %nyx_string* null
@.str927 = private unnamed_addr constant [5 x i8] c"type\00"
@.str927.c = internal global %nyx_string* null
@.str928 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str928.c = internal global %nyx_string* null
@.str929 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str929.c = internal global %nyx_string* null
@.str930 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str930.c = internal global %nyx_string* null
@.str931 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str931.c = internal global %nyx_string* null
@.str932 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str932.c = internal global %nyx_string* null
@.str933 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str933.c = internal global %nyx_string* null
@.str934 = private unnamed_addr constant [15 x i8] c"__assoc_type__\00"
@.str934.c = internal global %nyx_string* null
@.str935 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str935.c = internal global %nyx_string* null
@.str936 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str936.c = internal global %nyx_string* null
@.str937 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str937.c = internal global %nyx_string* null
@.str938 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str938.c = internal global %nyx_string* null
@.str939 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str939.c = internal global %nyx_string* null
@.str940 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str940.c = internal global %nyx_string* null
@.str941 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str941.c = internal global %nyx_string* null
@.str942 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str942.c = internal global %nyx_string* null
@.str943 = private unnamed_addr constant [1 x i8] c"\00"
@.str943.c = internal global %nyx_string* null
@.str944 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str944.c = internal global %nyx_string* null
@.str945 = private unnamed_addr constant [1 x i8] c"\00"
@.str945.c = internal global %nyx_string* null
@.str946 = private unnamed_addr constant [6 x i8] c"ARROW\00"
@.str946.c = internal global %nyx_string* null
@.str947 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str947.c = internal global %nyx_string* null
@.str948 = private unnamed_addr constant [10 x i8] c"trait_def\00"
@.str948.c = internal global %nyx_string* null
@.str949 = private unnamed_addr constant [5 x i8] c"IMPL\00"
@.str949.c = internal global %nyx_string* null
@.str950 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str950.c = internal global %nyx_string* null
@.str951 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str951.c = internal global %nyx_string* null
@.str952 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str952.c = internal global %nyx_string* null
@.str953 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str953.c = internal global %nyx_string* null
@.str954 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str954.c = internal global %nyx_string* null
@.str955 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str955.c = internal global %nyx_string* null
@.str956 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str956.c = internal global %nyx_string* null
@.str957 = private unnamed_addr constant [2 x i8] c"+\00"
@.str957.c = internal global %nyx_string* null
@.str958 = private unnamed_addr constant [2 x i8] c":\00"
@.str958.c = internal global %nyx_string* null
@.str959 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str959.c = internal global %nyx_string* null
@.str960 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str960.c = internal global %nyx_string* null
@.str961 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str961.c = internal global %nyx_string* null
@.str962 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str962.c = internal global %nyx_string* null
@.str963 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str963.c = internal global %nyx_string* null
@.str964 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str964.c = internal global %nyx_string* null
@.str965 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str965.c = internal global %nyx_string* null
@.str966 = private unnamed_addr constant [2 x i8] c"+\00"
@.str966.c = internal global %nyx_string* null
@.str967 = private unnamed_addr constant [2 x i8] c":\00"
@.str967.c = internal global %nyx_string* null
@.str968 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str968.c = internal global %nyx_string* null
@.str969 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str969.c = internal global %nyx_string* null
@.str970 = private unnamed_addr constant [4 x i8] c"FOR\00"
@.str970.c = internal global %nyx_string* null
@.str971 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str971.c = internal global %nyx_string* null
@.str972 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str972.c = internal global %nyx_string* null
@.str973 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str973.c = internal global %nyx_string* null
@.str974 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str974.c = internal global %nyx_string* null
@.str975 = private unnamed_addr constant [5 x i8] c"type\00"
@.str975.c = internal global %nyx_string* null
@.str976 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str976.c = internal global %nyx_string* null
@.str977 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str977.c = internal global %nyx_string* null
@.str978 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str978.c = internal global %nyx_string* null
@.str979 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str979.c = internal global %nyx_string* null
@.str980 = private unnamed_addr constant [11 x i8] c"impl_trait\00"
@.str980.c = internal global %nyx_string* null
@.str981 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str981.c = internal global %nyx_string* null
@.str982 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str982.c = internal global %nyx_string* null
@.str983 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str983.c = internal global %nyx_string* null
@.str984 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str984.c = internal global %nyx_string* null
@.str985 = private unnamed_addr constant [4 x i8] c"int\00"
@.str985.c = internal global %nyx_string* null
@.str986 = private unnamed_addr constant [6 x i8] c"float\00"
@.str986.c = internal global %nyx_string* null
@.str987 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str987.c = internal global %nyx_string* null
@.str988 = private unnamed_addr constant [7 x i8] c"String\00"
@.str988.c = internal global %nyx_string* null
@.str989 = private unnamed_addr constant [5 x i8] c"char\00"
@.str989.c = internal global %nyx_string* null
@.str990 = private unnamed_addr constant [3 x i8] c"i8\00"
@.str990.c = internal global %nyx_string* null
@.str991 = private unnamed_addr constant [4 x i8] c"i16\00"
@.str991.c = internal global %nyx_string* null
@.str992 = private unnamed_addr constant [4 x i8] c"i32\00"
@.str992.c = internal global %nyx_string* null
@.str993 = private unnamed_addr constant [3 x i8] c"u8\00"
@.str993.c = internal global %nyx_string* null
@.str994 = private unnamed_addr constant [4 x i8] c"u16\00"
@.str994.c = internal global %nyx_string* null
@.str995 = private unnamed_addr constant [4 x i8] c"u32\00"
@.str995.c = internal global %nyx_string* null
@.str996 = private unnamed_addr constant [4 x i8] c"u64\00"
@.str996.c = internal global %nyx_string* null
@.str997 = private unnamed_addr constant [6 x i8] c"usize\00"
@.str997.c = internal global %nyx_string* null
@.str998 = private unnamed_addr constant [4 x i8] c"f32\00"
@.str998.c = internal global %nyx_string* null
@.str999 = private unnamed_addr constant [6 x i8] c"Array\00"
@.str999.c = internal global %nyx_string* null
@.str1000 = private unnamed_addr constant [4 x i8] c"Map\00"
@.str1000.c = internal global %nyx_string* null
@.str1001 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str1001.c = internal global %nyx_string* null
@.str1002 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str1002.c = internal global %nyx_string* null
@.str1003 = private unnamed_addr constant [5 x i8] c"impl\00"
@.str1003.c = internal global %nyx_string* null
@.str1004 = private unnamed_addr constant [6 x i8] c"CATCH\00"
@.str1004.c = internal global %nyx_string* null
@.str1005 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str1005.c = internal global %nyx_string* null
@.str1006 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str1006.c = internal global %nyx_string* null
@.str1007 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str1007.c = internal global %nyx_string* null
@.str1008 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str1008.c = internal global %nyx_string* null
@.str1009 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str1009.c = internal global %nyx_string* null
@.str1010 = private unnamed_addr constant [10 x i8] c"try_catch\00"
@.str1010.c = internal global %nyx_string* null
@.str1011 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str1011.c = internal global %nyx_string* null
@.str1012 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str1012.c = internal global %nyx_string* null
@.str1013 = private unnamed_addr constant [6 x i8] c"throw\00"
@.str1013.c = internal global %nyx_string* null
@.str1014 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str1014.c = internal global %nyx_string* null
@.str1015 = private unnamed_addr constant [4 x i8] c"EOF\00"
@.str1015.c = internal global %nyx_string* null
@.str1016 = private unnamed_addr constant [8 x i8] c"NYX0104\00"
@.str1016.c = internal global %nyx_string* null
@.str1017 = private unnamed_addr constant [47 x i8] c"fin de archivo inesperado: falta '}' de cierre\00"
@.str1017.c = internal global %nyx_string* null
@.str1018 = private unnamed_addr constant [44 x i8] c"unexpected end of file: missing closing '}'\00"
@.str1018.c = internal global %nyx_string* null
@.str1019 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str1019.c = internal global %nyx_string* null
@.str1020 = private unnamed_addr constant [6 x i8] c"block\00"
@.str1020.c = internal global %nyx_string* null
@.str1021 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str1021.c = internal global %nyx_string* null
@.str1022 = private unnamed_addr constant [4 x i8] c"EOF\00"
@.str1022.c = internal global %nyx_string* null
@.str1023 = private unnamed_addr constant [8 x i8] c"NYX0104\00"
@.str1023.c = internal global %nyx_string* null
@.str1024 = private unnamed_addr constant [47 x i8] c"fin de archivo inesperado: falta '}' de cierre\00"
@.str1024.c = internal global %nyx_string* null
@.str1025 = private unnamed_addr constant [44 x i8] c"unexpected end of file: missing closing '}'\00"
@.str1025.c = internal global %nyx_string* null
@.str1026 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str1026.c = internal global %nyx_string* null
@.str1027 = private unnamed_addr constant [10 x i8] c"_consumed\00"
@.str1027.c = internal global %nyx_string* null
@.str1028 = private unnamed_addr constant [10 x i8] c"_consumed\00"
@.str1028.c = internal global %nyx_string* null
@.str1029 = private unnamed_addr constant [6 x i8] c"block\00"
@.str1029.c = internal global %nyx_string* null
@.str1030 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str1030.c = internal global %nyx_string* null
@.str1031 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str1031.c = internal global %nyx_string* null
@.str1032 = private unnamed_addr constant [7 x i8] c"assign\00"
@.str1032.c = internal global %nyx_string* null
@.str1033 = private unnamed_addr constant [1 x i8] c"\00"
@.str1033.c = internal global %nyx_string* null
@.str1034 = private unnamed_addr constant [12 x i8] c"PLUS_EQUALS\00"
@.str1034.c = internal global %nyx_string* null
@.str1035 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str1035.c = internal global %nyx_string* null
@.str1036 = private unnamed_addr constant [13 x i8] c"MINUS_EQUALS\00"
@.str1036.c = internal global %nyx_string* null
@.str1037 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str1037.c = internal global %nyx_string* null
@.str1038 = private unnamed_addr constant [12 x i8] c"STAR_EQUALS\00"
@.str1038.c = internal global %nyx_string* null
@.str1039 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str1039.c = internal global %nyx_string* null
@.str1040 = private unnamed_addr constant [13 x i8] c"SLASH_EQUALS\00"
@.str1040.c = internal global %nyx_string* null
@.str1041 = private unnamed_addr constant [6 x i8] c"SLASH\00"
@.str1041.c = internal global %nyx_string* null
@.str1042 = private unnamed_addr constant [15 x i8] c"PERCENT_EQUALS\00"
@.str1042.c = internal global %nyx_string* null
@.str1043 = private unnamed_addr constant [8 x i8] c"PERCENT\00"
@.str1043.c = internal global %nyx_string* null
@.str1044 = private unnamed_addr constant [11 x i8] c"AMP_EQUALS\00"
@.str1044.c = internal global %nyx_string* null
@.str1045 = private unnamed_addr constant [4 x i8] c"AMP\00"
@.str1045.c = internal global %nyx_string* null
@.str1046 = private unnamed_addr constant [12 x i8] c"PIPE_EQUALS\00"
@.str1046.c = internal global %nyx_string* null
@.str1047 = private unnamed_addr constant [5 x i8] c"PIPE\00"
@.str1047.c = internal global %nyx_string* null
@.str1048 = private unnamed_addr constant [13 x i8] c"CARET_EQUALS\00"
@.str1048.c = internal global %nyx_string* null
@.str1049 = private unnamed_addr constant [6 x i8] c"CARET\00"
@.str1049.c = internal global %nyx_string* null
@.str1050 = private unnamed_addr constant [18 x i8] c"SHIFT_LEFT_EQUALS\00"
@.str1050.c = internal global %nyx_string* null
@.str1051 = private unnamed_addr constant [11 x i8] c"SHIFT_LEFT\00"
@.str1051.c = internal global %nyx_string* null
@.str1052 = private unnamed_addr constant [19 x i8] c"SHIFT_RIGHT_EQUALS\00"
@.str1052.c = internal global %nyx_string* null
@.str1053 = private unnamed_addr constant [12 x i8] c"SHIFT_RIGHT\00"
@.str1053.c = internal global %nyx_string* null
@.str1054 = private unnamed_addr constant [1 x i8] c"\00"
@.str1054.c = internal global %nyx_string* null
@.str1055 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str1055.c = internal global %nyx_string* null
@.str1056 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str1056.c = internal global %nyx_string* null
@.str1057 = private unnamed_addr constant [7 x i8] c"assign\00"
@.str1057.c = internal global %nyx_string* null
@.str1058 = private unnamed_addr constant [6 x i8] c"deref\00"
@.str1058.c = internal global %nyx_string* null
@.str1059 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str1059.c = internal global %nyx_string* null
@.str1060 = private unnamed_addr constant [13 x i8] c"deref_assign\00"
@.str1060.c = internal global %nyx_string* null
@.str1061 = private unnamed_addr constant [6 x i8] c"index\00"
@.str1061.c = internal global %nyx_string* null
@.str1062 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str1062.c = internal global %nyx_string* null
@.str1063 = private unnamed_addr constant [13 x i8] c"index_assign\00"
@.str1063.c = internal global %nyx_string* null
@.str1064 = private unnamed_addr constant [13 x i8] c"field_access\00"
@.str1064.c = internal global %nyx_string* null
@.str1065 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str1065.c = internal global %nyx_string* null
@.str1066 = private unnamed_addr constant [13 x i8] c"field_assign\00"
@.str1066.c = internal global %nyx_string* null
@.str1067 = private unnamed_addr constant [4 x i8] c"EOF\00"
@.str1067.c = internal global %nyx_string* null
@.str1068 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str1068.c = internal global %nyx_string* null
@.str1069 = private unnamed_addr constant [4 x i8] c"LET\00"
@.str1069.c = internal global %nyx_string* null
@.str1070 = private unnamed_addr constant [4 x i8] c"VAR\00"
@.str1070.c = internal global %nyx_string* null
@.str1071 = private unnamed_addr constant [6 x i8] c"CONST\00"
@.str1071.c = internal global %nyx_string* null
@.str1072 = private unnamed_addr constant [7 x i8] c"STRUCT\00"
@.str1072.c = internal global %nyx_string* null
@.str1073 = private unnamed_addr constant [5 x i8] c"ENUM\00"
@.str1073.c = internal global %nyx_string* null
@.str1074 = private unnamed_addr constant [3 x i8] c"IF\00"
@.str1074.c = internal global %nyx_string* null
@.str1075 = private unnamed_addr constant [6 x i8] c"WHILE\00"
@.str1075.c = internal global %nyx_string* null
@.str1076 = private unnamed_addr constant [4 x i8] c"FOR\00"
@.str1076.c = internal global %nyx_string* null
@.str1077 = private unnamed_addr constant [7 x i8] c"RETURN\00"
@.str1077.c = internal global %nyx_string* null
@.str1078 = private unnamed_addr constant [7 x i8] c"IMPORT\00"
@.str1078.c = internal global %nyx_string* null
@.str1079 = private unnamed_addr constant [7 x i8] c"EXPORT\00"
@.str1079.c = internal global %nyx_string* null
@.str1080 = private unnamed_addr constant [6 x i8] c"TRAIT\00"
@.str1080.c = internal global %nyx_string* null
@.str1081 = private unnamed_addr constant [5 x i8] c"IMPL\00"
@.str1081.c = internal global %nyx_string* null
@.str1082 = private unnamed_addr constant [6 x i8] c"MATCH\00"
@.str1082.c = internal global %nyx_string* null
@.str1083 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str1083.c = internal global %nyx_string* null
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
  call void @nyx_array_push({ i64, i8* }* %15, i64 %17)
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

%SharedEnv_parse = type { { i64, i8* }*, %nyx_string*, { i64, i8* }*, i64, i64, i64, i64, i64, i64, i64, { i64, i8* }*, { i64, i8* }*, { i64, i8* }*, { i64, i8* }*, { i64, i8* }*, { i64, i8* }*, { i64, i8* }*, { i64, i8* }*, { i64, i8* }*, i1, i64, i64 }
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
  %44 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %43)
  %45 = call i8* @nyx_string_to_cstr(%nyx_string* %44)
  %46 = call %nyx_string* @nyx_getenv(i8* %45)
  %47 = getelementptr [3 x i8], [3 x i8]* @.str1, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %47)
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
  %52 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %51)
  %53 = call i8* @nyx_string_to_cstr(%nyx_string* %52)
  %54 = call %nyx_string* @nyx_getenv(i8* %53)
  %55 = getelementptr [5 x i8], [5 x i8]* @.str3, i32 0, i32 0
  %56 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %55)
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
  %74 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %73)
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
  %90 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %89)
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
  %95 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %94)
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
  %100 = alloca i64
  store i64 %99, i64* %100
  %101 = call { i64, i8* }* @parse__parse_statement(%SharedEnv_parse* %32)
  %102 = alloca { i64, i8* }*
  store { i64, i8* }* %101, { i64, i8* }** %102
  %103 = getelementptr [6 x i8], [6 x i8]* @.str7, i32 0, i32 0
  %104 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %103)
  %105 = inttoptr i64 0 to %nyx_string*
  %106 = call i1 @nyx_string_equals(%nyx_string* %105, %nyx_string* %104)
  br i1 %106, label %then21, label %else22
then21:
  %107 = load i64, i64* %81
  %108 = add i64 %107, 1
  store i64 %108, i64* %81
  %109 = call i64 @parse__synchronize(%SharedEnv_parse* %32)
  %110 = load i64, i64* %37
  %111 = load i64, i64* %100
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %then24, label %else25
then24:
  %113 = call %Token @parse__advance(%SharedEnv_parse* %32)
  br label %merge26
else25:
  br label %merge26
merge26:
  br label %merge23
else22:
  %114 = load i64, i64* %37
  %115 = load i64, i64* %100
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %then27, label %else28
then27:
  %117 = load i64, i64* %81
  %118 = add i64 %117, 1
  store i64 %118, i64* %81
  %119 = call i64 @parse__synchronize(%SharedEnv_parse* %32)
  %120 = load i64, i64* %37
  %121 = load i64, i64* %100
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %then30, label %else31
then30:
  %123 = call %Token @parse__advance(%SharedEnv_parse* %32)
  br label %merge32
else31:
  br label %merge32
merge32:
  br label %merge29
else28:
  %124 = load { i64, i8* }*, { i64, i8* }** %78
  %125 = load { i64, i8* }*, { i64, i8* }** %102
  %126 = ptrtoint { i64, i8* }* %125 to i64
  call void @nyx_array_push({ i64, i8* }* %124, i64 %126)
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
  %127 = load i64, i64* %81
  %128 = icmp sgt i64 %127, 0
  br i1 %128, label %then33, label %else34
then33:
  %129 = getelementptr [9 x i8], [9 x i8]* @.str8, i32 0, i32 0
  %130 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %129)
  %131 = load i64, i64* %81
  %132 = call %nyx_string* @nyx_string_from_int(i64 %131)
  %133 = call %nyx_string* @nyx_string_concat(%nyx_string* %130, %nyx_string* %132)
  %134 = getelementptr [16 x i8], [16 x i8]* @.str9, i32 0, i32 0
  %135 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %134)
  %136 = call %nyx_string* @nyx_string_concat(%nyx_string* %133, %nyx_string* %135)
  %137 = call i8* @nyx_string_to_cstr(%nyx_string* %136)
  call void @nyx_print_string(i8* %137)
  br label %merge35
else34:
  br label %merge35
merge35:
  %138 = load { i64, i8* }*, { i64, i8* }** %59
  %139 = call i64 @nyx_array_length({ i64, i8* }* %138)
  %140 = icmp sgt i64 %139, 0
  br i1 %140, label %then36, label %else37
then36:
  %141 = call { i64, i8* }* @nyx_array_new_ptr()
  %142 = alloca { i64, i8* }*
  store { i64, i8* }* %141, { i64, i8* }** %142
  %143 = alloca i64
  store i64 0, i64* %143
  %144 = call i8* @llvm.stacksave()
  br label %while_cond39
while_cond39:
  %145 = load i64, i64* %143
  %146 = load { i64, i8* }*, { i64, i8* }** %59
  %147 = call i64 @nyx_array_length({ i64, i8* }* %146)
  %148 = icmp slt i64 %145, %147
  br i1 %148, label %while_body40, label %while_end41
while_body40:
  call void @llvm.stackrestore(i8* %144)
  %149 = load { i64, i8* }*, { i64, i8* }** %59
  %150 = load i64, i64* %143
  %151 = call i64 @nyx_array_get({ i64, i8* }* %149, i64 %150)
  %152 = inttoptr i64 %151 to { i64, i8* }*
  %153 = alloca { i64, i8* }*
  store { i64, i8* }* %152, { i64, i8* }** %153
  %154 = load { i64, i8* }*, { i64, i8* }** %153
  %155 = call i64 @nyx_array_get_checked({ i64, i8* }* %154, i64 0, i64 2)
  %156 = inttoptr i64 %155 to %nyx_string*
  %157 = alloca %nyx_string*
  store %nyx_string* %156, %nyx_string** %157
  %158 = load %nyx_string*, %nyx_string** %157
  %159 = getelementptr [10 x i8], [10 x i8]* @.str10, i32 0, i32 0
  %160 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %159)
  %161 = call i1 @nyx_string_equals(%nyx_string* %158, %nyx_string* %160)
  %162 = xor i1 %161, true
  br i1 %162, label %then42, label %else43
then42:
  %163 = load { i64, i8* }*, { i64, i8* }** %142
  %164 = load { i64, i8* }*, { i64, i8* }** %59
  %165 = load i64, i64* %143
  %166 = call i64 @nyx_array_get({ i64, i8* }* %164, i64 %165)
  %167 = load { i64, i8* }*, { i64, i8* }** %59
  %168 = load i64, i64* %143
  %169 = call i64 @nyx_array_get_tag({ i64, i8* }* %167, i64 %168)
  call void @nyx_array_push_tagged({ i64, i8* }* %163, i64 %166, i64 %169)
  br label %merge44
else43:
  br label %merge44
merge44:
  %170 = load i64, i64* %143
  %171 = add i64 %170, 1
  store i64 %171, i64* %143
  br label %while_cond39
while_end41:
  %172 = alloca i64
  store i64 0, i64* %172
  %173 = call i8* @llvm.stacksave()
  br label %while_cond45
while_cond45:
  %174 = load i64, i64* %172
  %175 = load { i64, i8* }*, { i64, i8* }** %78
  %176 = call i64 @nyx_array_length({ i64, i8* }* %175)
  %177 = icmp slt i64 %174, %176
  br i1 %177, label %while_body46, label %while_end47
while_body46:
  call void @llvm.stackrestore(i8* %173)
  %178 = load { i64, i8* }*, { i64, i8* }** %142
  %179 = load { i64, i8* }*, { i64, i8* }** %78
  %180 = load i64, i64* %172
  %181 = call i64 @nyx_array_get({ i64, i8* }* %179, i64 %180)
  %182 = load { i64, i8* }*, { i64, i8* }** %78
  %183 = load i64, i64* %172
  %184 = call i64 @nyx_array_get_tag({ i64, i8* }* %182, i64 %183)
  call void @nyx_array_push_tagged({ i64, i8* }* %178, i64 %181, i64 %184)
  %185 = load i64, i64* %172
  %186 = add i64 %185, 1
  store i64 %186, i64* %172
  br label %while_cond45
while_end47:
  %187 = getelementptr [6 x i8], [6 x i8]* @.str11, i32 0, i32 0
  %188 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %187)
  %189 = call { i64, i8* }* @nyx_array_new_ptr()
  %190 = load { i64, i8* }*, { i64, i8* }** %142
  %191 = bitcast { i64, i8* }* %190 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %189, i8* %191)
  %192 = call { i64, i8* }* @make_astnode(%nyx_string* %188, { i64, i8* }* %189)
  ret { i64, i8* }* %192
else37:
  br label %merge38
merge38:
  %193 = getelementptr [6 x i8], [6 x i8]* @.str12, i32 0, i32 0
  %194 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %193)
  %195 = call { i64, i8* }* @nyx_array_new_ptr()
  %196 = load { i64, i8* }*, { i64, i8* }** %78
  %197 = bitcast { i64, i8* }* %196 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %195, i8* %197)
  %198 = call { i64, i8* }* @make_astnode(%nyx_string* %194, { i64, i8* }* %195)
  ret { i64, i8* }* %198
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
  %23 = load i64, i64* %4
  %24 = load { i64, i8* }*, { i64, i8* }** %3
  %25 = call i64 @nyx_array_length({ i64, i8* }* %24)
  %26 = icmp slt i64 %23, %25
  br i1 %26, label %then0, label %else1
then0:
  %27 = load { i64, i8* }*, { i64, i8* }** %3
  %28 = load i64, i64* %4
  %29 = call i64 @nyx_array_get({ i64, i8* }* %27, i64 %28)
  %30 = inttoptr i64 %29 to %Token*
  %31 = load %Token, %Token* %30
  ret %Token %31
else1:
  br label %merge2
merge2:
  %32 = getelementptr %Token, %Token* null, i32 1
  %33 = ptrtoint %Token* %32 to i64
  %34 = call i8* @GC_malloc(i64 %33)
  %35 = bitcast i8* %34 to %Token*
  %36 = getelementptr [4 x i8], [4 x i8]* @.str13, i32 0, i32 0
  %37 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str13.c, i8* %36)
  %38 = getelementptr %Token, %Token* %35, i32 0, i32 0
  store %nyx_string* %37, %nyx_string** %38
  %39 = getelementptr [1 x i8], [1 x i8]* @.str14, i32 0, i32 0
  %40 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str14.c, i8* %39)
  %41 = getelementptr %Token, %Token* %35, i32 0, i32 1
  store %nyx_string* %40, %nyx_string** %41
  %42 = getelementptr %Token, %Token* %35, i32 0, i32 2
  store i64 0, i64* %42
  %43 = getelementptr %Token, %Token* %35, i32 0, i32 3
  store i64 0, i64* %43
  %44 = load %Token, %Token* %35
  %45 = alloca %Token
  store %Token %44, %Token* %45
  %46 = load %Token, %Token* %45
  ret %Token %46
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
  %23 = alloca %nyx_string*
  store %nyx_string* %type.param, %nyx_string** %23
  %24 = load i64, i64* %8
  %25 = icmp eq i64 %24, 1
  br i1 %25, label %then0, label %else1
then0:
  %26 = load %nyx_string*, %nyx_string** %23
  %27 = getelementptr [4 x i8], [4 x i8]* @.str15, i32 0, i32 0
  %28 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str15.c, i8* %27)
  %29 = call i1 @nyx_string_equals(%nyx_string* %26, %nyx_string* %28)
  br i1 %29, label %then3, label %else4
then3:
  ret i1 1
else4:
  br label %merge5
merge5:
  %30 = load %nyx_string*, %nyx_string** %23
  %31 = getelementptr [12 x i8], [12 x i8]* @.str16, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str16.c, i8* %31)
  %33 = call i1 @nyx_string_equals(%nyx_string* %30, %nyx_string* %32)
  br i1 %33, label %then6, label %else7
then6:
  ret i1 1
else7:
  br label %merge8
merge8:
  %34 = load %nyx_string*, %nyx_string** %23
  %35 = getelementptr [12 x i8], [12 x i8]* @.str17, i32 0, i32 0
  %36 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str17.c, i8* %35)
  %37 = call i1 @nyx_string_equals(%nyx_string* %34, %nyx_string* %36)
  br i1 %37, label %then9, label %else10
then9:
  ret i1 1
else10:
  br label %merge11
merge11:
  %38 = load %nyx_string*, %nyx_string** %23
  %39 = getelementptr [14 x i8], [14 x i8]* @.str18, i32 0, i32 0
  %40 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str18.c, i8* %39)
  %41 = call i1 @nyx_string_equals(%nyx_string* %38, %nyx_string* %40)
  br i1 %41, label %then12, label %else13
then12:
  ret i1 1
else13:
  br label %merge14
merge14:
  ret i1 0
else1:
  br label %merge2
merge2:
  %42 = load i64, i64* %4
  %43 = load { i64, i8* }*, { i64, i8* }** %3
  %44 = call i64 @nyx_array_length({ i64, i8* }* %43)
  %45 = icmp slt i64 %42, %44
  br i1 %45, label %then15, label %else16
then15:
  %46 = load { i64, i8* }*, { i64, i8* }** %3
  %47 = load i64, i64* %4
  %48 = call i64 @nyx_array_get({ i64, i8* }* %46, i64 %47)
  %49 = inttoptr i64 %48 to %Token*
  %50 = load %Token, %Token* %49
  %51 = alloca %Token
  store %Token %50, %Token* %51
  %52 = load %Token, %Token* %51
  %53 = call %nyx_string* @get_token_type(%Token %52)
  %54 = alloca %nyx_string*
  store %nyx_string* %53, %nyx_string** %54
  %55 = load %nyx_string*, %nyx_string** %54
  %56 = load %nyx_string*, %nyx_string** %23
  %57 = call i1 @nyx_string_equals(%nyx_string* %55, %nyx_string* %56)
  ret i1 %57
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
  %23 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %24 = alloca %Token
  store %Token %23, %Token* %24
  %25 = load i64, i64* %4
  %26 = add i64 %25, 1
  store i64 %26, i64* %4
  %27 = load %Token, %Token* %24
  %28 = call i64 @get_token_line(%Token %27)
  store i64 %28, i64* @g_last_line
  %29 = load %Token, %Token* %24
  %30 = call i64 @get_token_column(%Token %29)
  store i64 %30, i64* @g_last_col
  %31 = load %Token, %Token* %24
  ret %Token %31
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
  %23 = alloca i64
  store i64 %offset.param, i64* %23
  %24 = alloca %nyx_string*
  store %nyx_string* %type.param, %nyx_string** %24
  %25 = load i64, i64* %4
  %26 = load i64, i64* %23
  %27 = add i64 %25, %26
  %28 = alloca i64
  store i64 %27, i64* %28
  %29 = load i64, i64* %28
  %30 = load { i64, i8* }*, { i64, i8* }** %3
  %31 = call i64 @nyx_array_length({ i64, i8* }* %30)
  %32 = icmp slt i64 %29, %31
  br i1 %32, label %then0, label %else1
then0:
  %33 = load { i64, i8* }*, { i64, i8* }** %3
  %34 = load i64, i64* %28
  %35 = call i64 @nyx_array_get({ i64, i8* }* %33, i64 %34)
  %36 = inttoptr i64 %35 to %Token*
  %37 = load %Token, %Token* %36
  %38 = alloca %Token
  store %Token %37, %Token* %38
  %39 = load %Token, %Token* %38
  %40 = call %nyx_string* @get_token_type(%Token %39)
  %41 = alloca %nyx_string*
  store %nyx_string* %40, %nyx_string** %41
  %42 = load %nyx_string*, %nyx_string** %41
  %43 = load %nyx_string*, %nyx_string** %24
  %44 = call i1 @nyx_string_equals(%nyx_string* %42, %nyx_string* %43)
  ret i1 %44
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
  %23 = alloca %nyx_string*
  store %nyx_string* %es.param, %nyx_string** %23
  %24 = alloca %nyx_string*
  store %nyx_string* %en.param, %nyx_string** %24
  %25 = load i64, i64* %9
  %26 = icmp eq i64 %25, 1
  br i1 %26, label %then0, label %else1
then0:
  %27 = load %nyx_string*, %nyx_string** %23
  ret %nyx_string* %27
else1:
  br label %merge2
merge2:
  %28 = load %nyx_string*, %nyx_string** %24
  ret %nyx_string* %28
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
  %23 = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %23
  %24 = getelementptr [1 x i8], [1 x i8]* @.str19, i32 0, i32 0
  %25 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str19.c, i8* %24)
  %26 = alloca %nyx_string*
  store %nyx_string* %25, %nyx_string** %26
  %27 = alloca i64
  store i64 0, i64* %27
  %28 = alloca i64
  store i64 0, i64* %28
  %29 = load %nyx_string*, %nyx_string** %23
  %30 = call i64 @nyx_string_byte_length(%nyx_string* %29)
  %31 = alloca i64
  store i64 %30, i64* %31
  %32 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %33 = load i64, i64* %28
  %34 = load i64, i64* %31
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %32)
  %36 = load %nyx_string*, %nyx_string** %23
  %37 = load i64, i64* %28
  %38 = call i8 @nyx_string_char_at(%nyx_string* %36, i64 %37)
  %39 = zext i8 %38 to i64
  %40 = alloca i64
  store i64 %39, i64* %40
  %41 = getelementptr [1 x i8], [1 x i8]* @.str20, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str20.c, i8* %41)
  %43 = alloca %nyx_string*
  store %nyx_string* %42, %nyx_string** %43
  %44 = load i64, i64* %40
  %45 = icmp eq i64 %44, 34
  br i1 %45, label %then3, label %else4
then3:
  %46 = getelementptr [3 x i8], [3 x i8]* @.str21, i32 0, i32 0
  %47 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str21.c, i8* %46)
  store %nyx_string* %47, %nyx_string** %43
  br label %merge5
else4:
  br label %merge5
merge5:
  %48 = load i64, i64* %40
  %49 = icmp eq i64 %48, 92
  br i1 %49, label %then6, label %else7
then6:
  %50 = getelementptr [3 x i8], [3 x i8]* @.str22, i32 0, i32 0
  %51 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str22.c, i8* %50)
  store %nyx_string* %51, %nyx_string** %43
  br label %merge8
else7:
  br label %merge8
merge8:
  %52 = load i64, i64* %40
  %53 = icmp eq i64 %52, 10
  br i1 %53, label %then9, label %else10
then9:
  %54 = getelementptr [3 x i8], [3 x i8]* @.str23, i32 0, i32 0
  %55 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str23.c, i8* %54)
  store %nyx_string* %55, %nyx_string** %43
  br label %merge11
else10:
  br label %merge11
merge11:
  %56 = load i64, i64* %40
  %57 = icmp eq i64 %56, 13
  br i1 %57, label %then12, label %else13
then12:
  %58 = getelementptr [3 x i8], [3 x i8]* @.str24, i32 0, i32 0
  %59 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str24.c, i8* %58)
  store %nyx_string* %59, %nyx_string** %43
  br label %merge14
else13:
  br label %merge14
merge14:
  %60 = load i64, i64* %40
  %61 = icmp eq i64 %60, 9
  br i1 %61, label %then15, label %else16
then15:
  %62 = getelementptr [3 x i8], [3 x i8]* @.str25, i32 0, i32 0
  %63 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str25.c, i8* %62)
  store %nyx_string* %63, %nyx_string** %43
  br label %merge17
else16:
  br label %merge17
merge17:
  %64 = load %nyx_string*, %nyx_string** %43
  %65 = getelementptr [1 x i8], [1 x i8]* @.str26, i32 0, i32 0
  %66 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str26.c, i8* %65)
  %67 = call i1 @nyx_string_equals(%nyx_string* %64, %nyx_string* %66)
  %68 = xor i1 %67, true
  br i1 %68, label %then18, label %else19
then18:
  %69 = load %nyx_string*, %nyx_string** %26
  %70 = load %nyx_string*, %nyx_string** %23
  %71 = load i64, i64* %27
  %72 = load i64, i64* %28
  %73 = call %nyx_string* @nyx_string_substring(%nyx_string* %70, i64 %71, i64 %72)
  %74 = call %nyx_string* @nyx_string_concat(%nyx_string* %69, %nyx_string* %73)
  %75 = load %nyx_string*, %nyx_string** %43
  %76 = call %nyx_string* @nyx_string_concat(%nyx_string* %74, %nyx_string* %75)
  store %nyx_string* %76, %nyx_string** %26
  %77 = load i64, i64* %28
  %78 = add i64 %77, 1
  store i64 %78, i64* %27
  br label %merge20
else19:
  br label %merge20
merge20:
  %79 = load i64, i64* %28
  %80 = add i64 %79, 1
  store i64 %80, i64* %28
  br label %while_cond0
while_end2:
  %81 = load i64, i64* %27
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %then21, label %else22
then21:
  %83 = load %nyx_string*, %nyx_string** %23
  ret %nyx_string* %83
else22:
  br label %merge23
merge23:
  %84 = load %nyx_string*, %nyx_string** %26
  %85 = load %nyx_string*, %nyx_string** %23
  %86 = load i64, i64* %27
  %87 = load i64, i64* %31
  %88 = call %nyx_string* @nyx_string_substring(%nyx_string* %85, i64 %86, i64 %87)
  %89 = call %nyx_string* @nyx_string_concat(%nyx_string* %84, %nyx_string* %88)
  ret %nyx_string* %89
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
  %23 = alloca %nyx_string*
  store %nyx_string* %code.param, %nyx_string** %23
  %24 = alloca i64
  store i64 %ln.param, i64* %24
  %25 = alloca i64
  store i64 %cl.param, i64* %25
  %26 = alloca %nyx_string*
  store %nyx_string* %dmsg.param, %nyx_string** %26
  %27 = load i64, i64* %8
  %28 = icmp eq i64 %27, 1
  br i1 %28, label %then0, label %else1
then0:
  ret i64 0
else1:
  br label %merge2
merge2:
  %29 = load i64, i64* %7
  %30 = add i64 %29, 1
  store i64 %30, i64* %7
  %31 = load i64, i64* @g_parse_error_count
  %32 = add i64 %31, 1
  store i64 %32, i64* @g_parse_error_count
  %33 = load i64, i64* %7
  %34 = icmp sgt i64 %33, 20
  br i1 %34, label %then3, label %else4
then3:
  %35 = getelementptr [39 x i8], [39 x i8]* @.str27, i32 0, i32 0
  %36 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str27.c, i8* %35)
  %37 = getelementptr [32 x i8], [32 x i8]* @.str28, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str28.c, i8* %37)
  %39 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %36, %nyx_string* %38)
  %40 = alloca %nyx_string*
  store %nyx_string* %39, %nyx_string** %40
  %41 = load i64, i64* %10
  %42 = icmp eq i64 %41, 1
  br i1 %42, label %then6, label %else7
then6:
  %43 = getelementptr [65 x i8], [65 x i8]* @.str29, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str29.c, i8* %43)
  %45 = load %nyx_string*, %nyx_string** %40
  %46 = call %nyx_string* @parse__p_json_escape(%SharedEnv_parse* %env.param, %nyx_string* %45)
  %47 = call %nyx_string* @nyx_string_concat(%nyx_string* %44, %nyx_string* %46)
  %48 = getelementptr [3 x i8], [3 x i8]* @.str30, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str30.c, i8* %48)
  %50 = call %nyx_string* @nyx_string_concat(%nyx_string* %47, %nyx_string* %49)
  %51 = call i8* @nyx_string_to_cstr(%nyx_string* %50)
  call void @nyx_print_string(i8* %51)
  br label %merge8
else7:
  %52 = getelementptr [18 x i8], [18 x i8]* @.str31, i32 0, i32 0
  %53 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str31.c, i8* %52)
  %54 = load %nyx_string*, %nyx_string** %40
  %55 = call %nyx_string* @nyx_string_concat(%nyx_string* %53, %nyx_string* %54)
  %56 = call i8* @nyx_string_to_cstr(%nyx_string* %55)
  call void @nyx_print_string(i8* %56)
  br label %merge8
merge8:
  store i64 1, i64* %8
  ret i64 0
else4:
  br label %merge5
merge5:
  %57 = load i64, i64* %10
  %58 = icmp eq i64 %57, 1
  br i1 %58, label %then9, label %else10
then9:
  %59 = getelementptr [10 x i8], [10 x i8]* @.str32, i32 0, i32 0
  %60 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str32.c, i8* %59)
  %61 = load %nyx_string*, %nyx_string** %23
  %62 = call %nyx_string* @nyx_string_concat(%nyx_string* %60, %nyx_string* %61)
  %63 = getelementptr [2 x i8], [2 x i8]* @.str33, i32 0, i32 0
  %64 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str33.c, i8* %63)
  %65 = call %nyx_string* @nyx_string_concat(%nyx_string* %62, %nyx_string* %64)
  %66 = alloca %nyx_string*
  store %nyx_string* %65, %nyx_string** %66
  %67 = load %nyx_string*, %nyx_string** %66
  %68 = getelementptr [20 x i8], [20 x i8]* @.str34, i32 0, i32 0
  %69 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str34.c, i8* %68)
  %70 = call %nyx_string* @nyx_string_concat(%nyx_string* %67, %nyx_string* %69)
  store %nyx_string* %70, %nyx_string** %66
  %71 = load %nyx_string*, %nyx_string** %66
  %72 = getelementptr [17 x i8], [17 x i8]* @.str35, i32 0, i32 0
  %73 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str35.c, i8* %72)
  %74 = call %nyx_string* @nyx_string_concat(%nyx_string* %71, %nyx_string* %73)
  store %nyx_string* %74, %nyx_string** %66
  %75 = load i64, i64* %24
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %then12, label %else13
then12:
  %77 = load %nyx_string*, %nyx_string** %66
  %78 = getelementptr [9 x i8], [9 x i8]* @.str36, i32 0, i32 0
  %79 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str36.c, i8* %78)
  %80 = call %nyx_string* @nyx_string_concat(%nyx_string* %77, %nyx_string* %79)
  %81 = load i64, i64* %24
  %82 = call %nyx_string* @nyx_string_from_int(i64 %81)
  %83 = call %nyx_string* @nyx_string_concat(%nyx_string* %80, %nyx_string* %82)
  store %nyx_string* %83, %nyx_string** %66
  %84 = load %nyx_string*, %nyx_string** %66
  %85 = getelementptr [11 x i8], [11 x i8]* @.str37, i32 0, i32 0
  %86 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str37.c, i8* %85)
  %87 = call %nyx_string* @nyx_string_concat(%nyx_string* %84, %nyx_string* %86)
  %88 = load i64, i64* %25
  %89 = call %nyx_string* @nyx_string_from_int(i64 %88)
  %90 = call %nyx_string* @nyx_string_concat(%nyx_string* %87, %nyx_string* %89)
  store %nyx_string* %90, %nyx_string** %66
  br label %merge14
else13:
  br label %merge14
merge14:
  %91 = load %nyx_string*, %nyx_string** %66
  %92 = getelementptr [13 x i8], [13 x i8]* @.str38, i32 0, i32 0
  %93 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str38.c, i8* %92)
  %94 = call %nyx_string* @nyx_string_concat(%nyx_string* %91, %nyx_string* %93)
  %95 = load %nyx_string*, %nyx_string** %26
  %96 = call %nyx_string* @parse__p_json_escape(%SharedEnv_parse* %env.param, %nyx_string* %95)
  %97 = call %nyx_string* @nyx_string_concat(%nyx_string* %94, %nyx_string* %96)
  %98 = getelementptr [3 x i8], [3 x i8]* @.str39, i32 0, i32 0
  %99 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str39.c, i8* %98)
  %100 = call %nyx_string* @nyx_string_concat(%nyx_string* %97, %nyx_string* %99)
  store %nyx_string* %100, %nyx_string** %66
  %101 = load %nyx_string*, %nyx_string** %66
  %102 = call i8* @nyx_string_to_cstr(%nyx_string* %101)
  call void @nyx_print_string(i8* %102)
  ret i64 0
else10:
  br label %merge11
merge11:
  %103 = getelementptr [8 x i8], [8 x i8]* @.str40, i32 0, i32 0
  %104 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str40.c, i8* %103)
  %105 = load %nyx_string*, %nyx_string** %23
  %106 = call %nyx_string* @nyx_string_concat(%nyx_string* %104, %nyx_string* %105)
  %107 = getelementptr [4 x i8], [4 x i8]* @.str41, i32 0, i32 0
  %108 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str41.c, i8* %107)
  %109 = call %nyx_string* @nyx_string_concat(%nyx_string* %106, %nyx_string* %108)
  %110 = load %nyx_string*, %nyx_string** %26
  %111 = call %nyx_string* @nyx_string_concat(%nyx_string* %109, %nyx_string* %110)
  %112 = call i8* @nyx_string_to_cstr(%nyx_string* %111)
  call void @nyx_print_string(i8* %112)
  %113 = getelementptr [7 x i8], [7 x i8]* @.str42, i32 0, i32 0
  %114 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str42.c, i8* %113)
  %115 = getelementptr [7 x i8], [7 x i8]* @.str43, i32 0, i32 0
  %116 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str43.c, i8* %115)
  %117 = getelementptr [5 x i8], [5 x i8]* @.str44, i32 0, i32 0
  %118 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str44.c, i8* %117)
  %119 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %116, %nyx_string* %118)
  %120 = call %nyx_string* @nyx_string_concat(%nyx_string* %114, %nyx_string* %119)
  %121 = getelementptr [2 x i8], [2 x i8]* @.str45, i32 0, i32 0
  %122 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str45.c, i8* %121)
  %123 = call %nyx_string* @nyx_string_concat(%nyx_string* %120, %nyx_string* %122)
  %124 = load i64, i64* %24
  %125 = call %nyx_string* @nyx_string_from_int(i64 %124)
  %126 = call %nyx_string* @nyx_string_concat(%nyx_string* %123, %nyx_string* %125)
  %127 = getelementptr [2 x i8], [2 x i8]* @.str46, i32 0, i32 0
  %128 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str46.c, i8* %127)
  %129 = call %nyx_string* @nyx_string_concat(%nyx_string* %126, %nyx_string* %128)
  %130 = load i64, i64* %25
  %131 = call %nyx_string* @nyx_string_from_int(i64 %130)
  %132 = call %nyx_string* @nyx_string_concat(%nyx_string* %129, %nyx_string* %131)
  %133 = call i8* @nyx_string_to_cstr(%nyx_string* %132)
  call void @nyx_print_string(i8* %133)
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
  %23 = alloca %nyx_string*
  store %nyx_string* %tt.param, %nyx_string** %23
  %24 = alloca i1
  store i1 true, i1* %24
  %25 = alloca i1
  store i1 true, i1* %25
  %26 = alloca i1
  store i1 true, i1* %26
  %27 = alloca i1
  store i1 true, i1* %27
  %28 = load %nyx_string*, %nyx_string** %23
  %29 = getelementptr [4 x i8], [4 x i8]* @.str47, i32 0, i32 0
  %30 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str47.c, i8* %29)
  %31 = call i1 @nyx_string_equals(%nyx_string* %28, %nyx_string* %30)
  br i1 %31, label %sc_or_end1, label %sc_or_rhs0
sc_or_rhs0:
  %32 = load %nyx_string*, %nyx_string** %23
  %33 = getelementptr [4 x i8], [4 x i8]* @.str48, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str48.c, i8* %33)
  %35 = call i1 @nyx_string_equals(%nyx_string* %32, %nyx_string* %34)
  store i1 %35, i1* %27
  br label %sc_or_end1
sc_or_end1:
  %36 = load i1, i1* %27
  br i1 %36, label %sc_or_end3, label %sc_or_rhs2
sc_or_rhs2:
  %37 = load %nyx_string*, %nyx_string** %23
  %38 = getelementptr [6 x i8], [6 x i8]* @.str49, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str49.c, i8* %38)
  %40 = call i1 @nyx_string_equals(%nyx_string* %37, %nyx_string* %39)
  store i1 %40, i1* %26
  br label %sc_or_end3
sc_or_end3:
  %41 = load i1, i1* %26
  br i1 %41, label %sc_or_end5, label %sc_or_rhs4
sc_or_rhs4:
  %42 = load %nyx_string*, %nyx_string** %23
  %43 = getelementptr [3 x i8], [3 x i8]* @.str50, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str50.c, i8* %43)
  %45 = call i1 @nyx_string_equals(%nyx_string* %42, %nyx_string* %44)
  store i1 %45, i1* %25
  br label %sc_or_end5
sc_or_end5:
  %46 = load i1, i1* %25
  br i1 %46, label %sc_or_end7, label %sc_or_rhs6
sc_or_rhs6:
  %47 = load %nyx_string*, %nyx_string** %23
  %48 = getelementptr [7 x i8], [7 x i8]* @.str51, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str51.c, i8* %48)
  %50 = call i1 @nyx_string_equals(%nyx_string* %47, %nyx_string* %49)
  store i1 %50, i1* %24
  br label %sc_or_end7
sc_or_end7:
  %51 = load i1, i1* %24
  br i1 %51, label %then8, label %else9
then8:
  ret i1 1
else9:
  br label %merge10
merge10:
  %52 = alloca i1
  store i1 true, i1* %52
  %53 = alloca i1
  store i1 true, i1* %53
  %54 = alloca i1
  store i1 true, i1* %54
  %55 = alloca i1
  store i1 true, i1* %55
  %56 = load %nyx_string*, %nyx_string** %23
  %57 = getelementptr [3 x i8], [3 x i8]* @.str52, i32 0, i32 0
  %58 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str52.c, i8* %57)
  %59 = call i1 @nyx_string_equals(%nyx_string* %56, %nyx_string* %58)
  br i1 %59, label %sc_or_end12, label %sc_or_rhs11
sc_or_rhs11:
  %60 = load %nyx_string*, %nyx_string** %23
  %61 = getelementptr [5 x i8], [5 x i8]* @.str53, i32 0, i32 0
  %62 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str53.c, i8* %61)
  %63 = call i1 @nyx_string_equals(%nyx_string* %60, %nyx_string* %62)
  store i1 %63, i1* %55
  br label %sc_or_end12
sc_or_end12:
  %64 = load i1, i1* %55
  br i1 %64, label %sc_or_end14, label %sc_or_rhs13
sc_or_rhs13:
  %65 = load %nyx_string*, %nyx_string** %23
  %66 = getelementptr [6 x i8], [6 x i8]* @.str54, i32 0, i32 0
  %67 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str54.c, i8* %66)
  %68 = call i1 @nyx_string_equals(%nyx_string* %65, %nyx_string* %67)
  store i1 %68, i1* %54
  br label %sc_or_end14
sc_or_end14:
  %69 = load i1, i1* %54
  br i1 %69, label %sc_or_end16, label %sc_or_rhs15
sc_or_rhs15:
  %70 = load %nyx_string*, %nyx_string** %23
  %71 = getelementptr [4 x i8], [4 x i8]* @.str55, i32 0, i32 0
  %72 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str55.c, i8* %71)
  %73 = call i1 @nyx_string_equals(%nyx_string* %70, %nyx_string* %72)
  store i1 %73, i1* %53
  br label %sc_or_end16
sc_or_end16:
  %74 = load i1, i1* %53
  br i1 %74, label %sc_or_end18, label %sc_or_rhs17
sc_or_rhs17:
  %75 = load %nyx_string*, %nyx_string** %23
  %76 = getelementptr [3 x i8], [3 x i8]* @.str56, i32 0, i32 0
  %77 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str56.c, i8* %76)
  %78 = call i1 @nyx_string_equals(%nyx_string* %75, %nyx_string* %77)
  store i1 %78, i1* %52
  br label %sc_or_end18
sc_or_end18:
  %79 = load i1, i1* %52
  br i1 %79, label %then19, label %else20
then19:
  ret i1 1
else20:
  br label %merge21
merge21:
  %80 = alloca i1
  store i1 true, i1* %80
  %81 = alloca i1
  store i1 true, i1* %81
  %82 = alloca i1
  store i1 true, i1* %82
  %83 = alloca i1
  store i1 true, i1* %83
  %84 = load %nyx_string*, %nyx_string** %23
  %85 = getelementptr [6 x i8], [6 x i8]* @.str57, i32 0, i32 0
  %86 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str57.c, i8* %85)
  %87 = call i1 @nyx_string_equals(%nyx_string* %84, %nyx_string* %86)
  br i1 %87, label %sc_or_end23, label %sc_or_rhs22
sc_or_rhs22:
  %88 = load %nyx_string*, %nyx_string** %23
  %89 = getelementptr [9 x i8], [9 x i8]* @.str58, i32 0, i32 0
  %90 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str58.c, i8* %89)
  %91 = call i1 @nyx_string_equals(%nyx_string* %88, %nyx_string* %90)
  store i1 %91, i1* %83
  br label %sc_or_end23
sc_or_end23:
  %92 = load i1, i1* %83
  br i1 %92, label %sc_or_end25, label %sc_or_rhs24
sc_or_rhs24:
  %93 = load %nyx_string*, %nyx_string** %23
  %94 = getelementptr [7 x i8], [7 x i8]* @.str59, i32 0, i32 0
  %95 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str59.c, i8* %94)
  %96 = call i1 @nyx_string_equals(%nyx_string* %93, %nyx_string* %95)
  store i1 %96, i1* %82
  br label %sc_or_end25
sc_or_end25:
  %97 = load i1, i1* %82
  br i1 %97, label %sc_or_end27, label %sc_or_rhs26
sc_or_rhs26:
  %98 = load %nyx_string*, %nyx_string** %23
  %99 = getelementptr [5 x i8], [5 x i8]* @.str60, i32 0, i32 0
  %100 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str60.c, i8* %99)
  %101 = call i1 @nyx_string_equals(%nyx_string* %98, %nyx_string* %100)
  store i1 %101, i1* %81
  br label %sc_or_end27
sc_or_end27:
  %102 = load i1, i1* %81
  br i1 %102, label %sc_or_end29, label %sc_or_rhs28
sc_or_rhs28:
  %103 = load %nyx_string*, %nyx_string** %23
  %104 = getelementptr [6 x i8], [6 x i8]* @.str61, i32 0, i32 0
  %105 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str61.c, i8* %104)
  %106 = call i1 @nyx_string_equals(%nyx_string* %103, %nyx_string* %105)
  store i1 %106, i1* %80
  br label %sc_or_end29
sc_or_end29:
  %107 = load i1, i1* %80
  br i1 %107, label %then30, label %else31
then30:
  ret i1 1
else31:
  br label %merge32
merge32:
  %108 = alloca i1
  store i1 true, i1* %108
  %109 = alloca i1
  store i1 true, i1* %109
  %110 = alloca i1
  store i1 true, i1* %110
  %111 = alloca i1
  store i1 true, i1* %111
  %112 = load %nyx_string*, %nyx_string** %23
  %113 = getelementptr [7 x i8], [7 x i8]* @.str62, i32 0, i32 0
  %114 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str62.c, i8* %113)
  %115 = call i1 @nyx_string_equals(%nyx_string* %112, %nyx_string* %114)
  br i1 %115, label %sc_or_end34, label %sc_or_rhs33
sc_or_rhs33:
  %116 = load %nyx_string*, %nyx_string** %23
  %117 = getelementptr [7 x i8], [7 x i8]* @.str63, i32 0, i32 0
  %118 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str63.c, i8* %117)
  %119 = call i1 @nyx_string_equals(%nyx_string* %116, %nyx_string* %118)
  store i1 %119, i1* %111
  br label %sc_or_end34
sc_or_end34:
  %120 = load i1, i1* %111
  br i1 %120, label %sc_or_end36, label %sc_or_rhs35
sc_or_rhs35:
  %121 = load %nyx_string*, %nyx_string** %23
  %122 = getelementptr [5 x i8], [5 x i8]* @.str64, i32 0, i32 0
  %123 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str64.c, i8* %122)
  %124 = call i1 @nyx_string_equals(%nyx_string* %121, %nyx_string* %123)
  store i1 %124, i1* %110
  br label %sc_or_end36
sc_or_end36:
  %125 = load i1, i1* %110
  br i1 %125, label %sc_or_end38, label %sc_or_rhs37
sc_or_rhs37:
  %126 = load %nyx_string*, %nyx_string** %23
  %127 = getelementptr [5 x i8], [5 x i8]* @.str65, i32 0, i32 0
  %128 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str65.c, i8* %127)
  %129 = call i1 @nyx_string_equals(%nyx_string* %126, %nyx_string* %128)
  store i1 %129, i1* %109
  br label %sc_or_end38
sc_or_end38:
  %130 = load i1, i1* %109
  br i1 %130, label %sc_or_end40, label %sc_or_rhs39
sc_or_rhs39:
  %131 = load %nyx_string*, %nyx_string** %23
  %132 = getelementptr [6 x i8], [6 x i8]* @.str66, i32 0, i32 0
  %133 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str66.c, i8* %132)
  %134 = call i1 @nyx_string_equals(%nyx_string* %131, %nyx_string* %133)
  store i1 %134, i1* %108
  br label %sc_or_end40
sc_or_end40:
  %135 = load i1, i1* %108
  br i1 %135, label %then41, label %else42
then41:
  ret i1 1
else42:
  br label %merge43
merge43:
  %136 = alloca i1
  store i1 true, i1* %136
  %137 = alloca i1
  store i1 true, i1* %137
  %138 = alloca i1
  store i1 true, i1* %138
  %139 = alloca i1
  store i1 true, i1* %139
  %140 = load %nyx_string*, %nyx_string** %23
  %141 = getelementptr [4 x i8], [4 x i8]* @.str67, i32 0, i32 0
  %142 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str67.c, i8* %141)
  %143 = call i1 @nyx_string_equals(%nyx_string* %140, %nyx_string* %142)
  br i1 %143, label %sc_or_end45, label %sc_or_rhs44
sc_or_rhs44:
  %144 = load %nyx_string*, %nyx_string** %23
  %145 = getelementptr [3 x i8], [3 x i8]* @.str68, i32 0, i32 0
  %146 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str68.c, i8* %145)
  %147 = call i1 @nyx_string_equals(%nyx_string* %144, %nyx_string* %146)
  store i1 %147, i1* %139
  br label %sc_or_end45
sc_or_end45:
  %148 = load i1, i1* %139
  br i1 %148, label %sc_or_end47, label %sc_or_rhs46
sc_or_rhs46:
  %149 = load %nyx_string*, %nyx_string** %23
  %150 = getelementptr [4 x i8], [4 x i8]* @.str69, i32 0, i32 0
  %151 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str69.c, i8* %150)
  %152 = call i1 @nyx_string_equals(%nyx_string* %149, %nyx_string* %151)
  store i1 %152, i1* %138
  br label %sc_or_end47
sc_or_end47:
  %153 = load i1, i1* %138
  br i1 %153, label %sc_or_end49, label %sc_or_rhs48
sc_or_rhs48:
  %154 = load %nyx_string*, %nyx_string** %23
  %155 = getelementptr [5 x i8], [5 x i8]* @.str70, i32 0, i32 0
  %156 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str70.c, i8* %155)
  %157 = call i1 @nyx_string_equals(%nyx_string* %154, %nyx_string* %156)
  store i1 %157, i1* %137
  br label %sc_or_end49
sc_or_end49:
  %158 = load i1, i1* %137
  br i1 %158, label %sc_or_end51, label %sc_or_rhs50
sc_or_rhs50:
  %159 = load %nyx_string*, %nyx_string** %23
  %160 = getelementptr [6 x i8], [6 x i8]* @.str71, i32 0, i32 0
  %161 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str71.c, i8* %160)
  %162 = call i1 @nyx_string_equals(%nyx_string* %159, %nyx_string* %161)
  store i1 %162, i1* %136
  br label %sc_or_end51
sc_or_end51:
  %163 = load i1, i1* %136
  br i1 %163, label %then52, label %else53
then52:
  ret i1 1
else53:
  br label %merge54
merge54:
  %164 = alloca i1
  store i1 true, i1* %164
  %165 = alloca i1
  store i1 true, i1* %165
  %166 = alloca i1
  store i1 true, i1* %166
  %167 = alloca i1
  store i1 true, i1* %167
  %168 = load %nyx_string*, %nyx_string** %23
  %169 = getelementptr [5 x i8], [5 x i8]* @.str72, i32 0, i32 0
  %170 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str72.c, i8* %169)
  %171 = call i1 @nyx_string_equals(%nyx_string* %168, %nyx_string* %170)
  br i1 %171, label %sc_or_end56, label %sc_or_rhs55
sc_or_rhs55:
  %172 = load %nyx_string*, %nyx_string** %23
  %173 = getelementptr [7 x i8], [7 x i8]* @.str73, i32 0, i32 0
  %174 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str73.c, i8* %173)
  %175 = call i1 @nyx_string_equals(%nyx_string* %172, %nyx_string* %174)
  store i1 %175, i1* %167
  br label %sc_or_end56
sc_or_end56:
  %176 = load i1, i1* %167
  br i1 %176, label %sc_or_end58, label %sc_or_rhs57
sc_or_rhs57:
  %177 = load %nyx_string*, %nyx_string** %23
  %178 = getelementptr [7 x i8], [7 x i8]* @.str74, i32 0, i32 0
  %179 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str74.c, i8* %178)
  %180 = call i1 @nyx_string_equals(%nyx_string* %177, %nyx_string* %179)
  store i1 %180, i1* %166
  br label %sc_or_end58
sc_or_end58:
  %181 = load i1, i1* %166
  br i1 %181, label %sc_or_end60, label %sc_or_rhs59
sc_or_rhs59:
  %182 = load %nyx_string*, %nyx_string** %23
  %183 = getelementptr [3 x i8], [3 x i8]* @.str75, i32 0, i32 0
  %184 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str75.c, i8* %183)
  %185 = call i1 @nyx_string_equals(%nyx_string* %182, %nyx_string* %184)
  store i1 %185, i1* %165
  br label %sc_or_end60
sc_or_end60:
  %186 = load i1, i1* %165
  br i1 %186, label %sc_or_end62, label %sc_or_rhs61
sc_or_rhs61:
  %187 = load %nyx_string*, %nyx_string** %23
  %188 = getelementptr [7 x i8], [7 x i8]* @.str76, i32 0, i32 0
  %189 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str76.c, i8* %188)
  %190 = call i1 @nyx_string_equals(%nyx_string* %187, %nyx_string* %189)
  store i1 %190, i1* %164
  br label %sc_or_end62
sc_or_end62:
  %191 = load i1, i1* %164
  br i1 %191, label %then63, label %else64
then63:
  ret i1 1
else64:
  br label %merge65
merge65:
  %192 = alloca i1
  store i1 true, i1* %192
  %193 = alloca i1
  store i1 true, i1* %193
  %194 = alloca i1
  store i1 true, i1* %194
  %195 = alloca i1
  store i1 true, i1* %195
  %196 = load %nyx_string*, %nyx_string** %23
  %197 = getelementptr [7 x i8], [7 x i8]* @.str77, i32 0, i32 0
  %198 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str77.c, i8* %197)
  %199 = call i1 @nyx_string_equals(%nyx_string* %196, %nyx_string* %198)
  br i1 %199, label %sc_or_end67, label %sc_or_rhs66
sc_or_rhs66:
  %200 = load %nyx_string*, %nyx_string** %23
  %201 = getelementptr [7 x i8], [7 x i8]* @.str78, i32 0, i32 0
  %202 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str78.c, i8* %201)
  %203 = call i1 @nyx_string_equals(%nyx_string* %200, %nyx_string* %202)
  store i1 %203, i1* %195
  br label %sc_or_end67
sc_or_end67:
  %204 = load i1, i1* %195
  br i1 %204, label %sc_or_end69, label %sc_or_rhs68
sc_or_rhs68:
  %205 = load %nyx_string*, %nyx_string** %23
  %206 = getelementptr [8 x i8], [8 x i8]* @.str79, i32 0, i32 0
  %207 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str79.c, i8* %206)
  %208 = call i1 @nyx_string_equals(%nyx_string* %205, %nyx_string* %207)
  store i1 %208, i1* %194
  br label %sc_or_end69
sc_or_end69:
  %209 = load i1, i1* %194
  br i1 %209, label %sc_or_end71, label %sc_or_rhs70
sc_or_rhs70:
  %210 = load %nyx_string*, %nyx_string** %23
  %211 = getelementptr [4 x i8], [4 x i8]* @.str80, i32 0, i32 0
  %212 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str80.c, i8* %211)
  %213 = call i1 @nyx_string_equals(%nyx_string* %210, %nyx_string* %212)
  store i1 %213, i1* %193
  br label %sc_or_end71
sc_or_end71:
  %214 = load i1, i1* %193
  br i1 %214, label %sc_or_end73, label %sc_or_rhs72
sc_or_rhs72:
  %215 = load %nyx_string*, %nyx_string** %23
  %216 = getelementptr [4 x i8], [4 x i8]* @.str81, i32 0, i32 0
  %217 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str81.c, i8* %216)
  %218 = call i1 @nyx_string_equals(%nyx_string* %215, %nyx_string* %217)
  store i1 %218, i1* %192
  br label %sc_or_end73
sc_or_end73:
  %219 = load i1, i1* %192
  br i1 %219, label %then74, label %else75
then74:
  ret i1 1
else75:
  br label %merge76
merge76:
  %220 = alloca i1
  store i1 true, i1* %220
  %221 = alloca i1
  store i1 true, i1* %221
  %222 = alloca i1
  store i1 true, i1* %222
  %223 = load %nyx_string*, %nyx_string** %23
  %224 = getelementptr [4 x i8], [4 x i8]* @.str82, i32 0, i32 0
  %225 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str82.c, i8* %224)
  %226 = call i1 @nyx_string_equals(%nyx_string* %223, %nyx_string* %225)
  br i1 %226, label %sc_or_end78, label %sc_or_rhs77
sc_or_rhs77:
  %227 = load %nyx_string*, %nyx_string** %23
  %228 = getelementptr [7 x i8], [7 x i8]* @.str83, i32 0, i32 0
  %229 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str83.c, i8* %228)
  %230 = call i1 @nyx_string_equals(%nyx_string* %227, %nyx_string* %229)
  store i1 %230, i1* %222
  br label %sc_or_end78
sc_or_end78:
  %231 = load i1, i1* %222
  br i1 %231, label %sc_or_end80, label %sc_or_rhs79
sc_or_rhs79:
  %232 = load %nyx_string*, %nyx_string** %23
  %233 = getelementptr [6 x i8], [6 x i8]* @.str84, i32 0, i32 0
  %234 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str84.c, i8* %233)
  %235 = call i1 @nyx_string_equals(%nyx_string* %232, %nyx_string* %234)
  store i1 %235, i1* %221
  br label %sc_or_end80
sc_or_end80:
  %236 = load i1, i1* %221
  br i1 %236, label %sc_or_end82, label %sc_or_rhs81
sc_or_rhs81:
  %237 = load %nyx_string*, %nyx_string** %23
  %238 = getelementptr [6 x i8], [6 x i8]* @.str85, i32 0, i32 0
  %239 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str85.c, i8* %238)
  %240 = call i1 @nyx_string_equals(%nyx_string* %237, %nyx_string* %239)
  store i1 %240, i1* %220
  br label %sc_or_end82
sc_or_end82:
  %241 = load i1, i1* %220
  br i1 %241, label %then83, label %else84
then83:
  ret i1 1
else84:
  br label %merge85
merge85:
  %242 = alloca i1
  store i1 true, i1* %242
  %243 = alloca i1
  store i1 true, i1* %243
  %244 = alloca i1
  store i1 true, i1* %244
  %245 = alloca i1
  store i1 true, i1* %245
  %246 = load %nyx_string*, %nyx_string** %23
  %247 = getelementptr [4 x i8], [4 x i8]* @.str86, i32 0, i32 0
  %248 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str86.c, i8* %247)
  %249 = call i1 @nyx_string_equals(%nyx_string* %246, %nyx_string* %248)
  br i1 %249, label %sc_or_end87, label %sc_or_rhs86
sc_or_rhs86:
  %250 = load %nyx_string*, %nyx_string** %23
  %251 = getelementptr [6 x i8], [6 x i8]* @.str87, i32 0, i32 0
  %252 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str87.c, i8* %251)
  %253 = call i1 @nyx_string_equals(%nyx_string* %250, %nyx_string* %252)
  store i1 %253, i1* %245
  br label %sc_or_end87
sc_or_end87:
  %254 = load i1, i1* %245
  br i1 %254, label %sc_or_end89, label %sc_or_rhs88
sc_or_rhs88:
  %255 = load %nyx_string*, %nyx_string** %23
  %256 = getelementptr [6 x i8], [6 x i8]* @.str88, i32 0, i32 0
  %257 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str88.c, i8* %256)
  %258 = call i1 @nyx_string_equals(%nyx_string* %255, %nyx_string* %257)
  store i1 %258, i1* %244
  br label %sc_or_end89
sc_or_end89:
  %259 = load i1, i1* %244
  br i1 %259, label %sc_or_end91, label %sc_or_rhs90
sc_or_rhs90:
  %260 = load %nyx_string*, %nyx_string** %23
  %261 = getelementptr [6 x i8], [6 x i8]* @.str89, i32 0, i32 0
  %262 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str89.c, i8* %261)
  %263 = call i1 @nyx_string_equals(%nyx_string* %260, %nyx_string* %262)
  store i1 %263, i1* %243
  br label %sc_or_end91
sc_or_end91:
  %264 = load i1, i1* %243
  br i1 %264, label %sc_or_end93, label %sc_or_rhs92
sc_or_rhs92:
  %265 = load %nyx_string*, %nyx_string** %23
  %266 = getelementptr [6 x i8], [6 x i8]* @.str90, i32 0, i32 0
  %267 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str90.c, i8* %266)
  %268 = call i1 @nyx_string_equals(%nyx_string* %265, %nyx_string* %267)
  store i1 %268, i1* %242
  br label %sc_or_end93
sc_or_end93:
  %269 = load i1, i1* %242
  br i1 %269, label %then94, label %else95
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
  %23 = alloca %nyx_string*
  store %nyx_string* %type.param, %nyx_string** %23
  %24 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %25 = alloca %Token
  store %Token %24, %Token* %25
  %26 = load %Token, %Token* %25
  %27 = call %nyx_string* @get_token_type(%Token %26)
  %28 = load %nyx_string*, %nyx_string** %23
  %29 = call i1 @nyx_string_equals(%nyx_string* %27, %nyx_string* %28)
  br i1 %29, label %then0, label %else1
then0:
  %30 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  ret %Token %30
else1:
  br label %merge2
merge2:
  %31 = load %Token, %Token* %25
  %32 = call i64 @get_token_line(%Token %31)
  %33 = alloca i64
  store i64 %32, i64* %33
  %34 = load %Token, %Token* %25
  %35 = call i64 @get_token_column(%Token %34)
  %36 = alloca i64
  store i64 %35, i64* %36
  %37 = load %Token, %Token* %25
  %38 = call %nyx_string* @get_token_value(%Token %37)
  %39 = alloca %nyx_string*
  store %nyx_string* %38, %nyx_string** %39
  %40 = load %Token, %Token* %25
  %41 = call %nyx_string* @get_token_type(%Token %40)
  %42 = alloca %nyx_string*
  store %nyx_string* %41, %nyx_string** %42
  %43 = alloca i1
  store i1 false, i1* %43
  %44 = load %nyx_string*, %nyx_string** %23
  %45 = getelementptr [11 x i8], [11 x i8]* @.str91, i32 0, i32 0
  %46 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str91.c, i8* %45)
  %47 = call i1 @nyx_string_equals(%nyx_string* %44, %nyx_string* %46)
  br i1 %47, label %sc_and_rhs3, label %sc_and_end4
sc_and_rhs3:
  %48 = load %nyx_string*, %nyx_string** %42
  %49 = call i1 @parse__is_keyword_token(%SharedEnv_parse* %env.param, %nyx_string* %48)
  store i1 %49, i1* %43
  br label %sc_and_end4
sc_and_end4:
  %50 = load i1, i1* %43
  br i1 %50, label %then5, label %else6
then5:
  %51 = getelementptr [8 x i8], [8 x i8]* @.str92, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str92.c, i8* %51)
  %53 = load i64, i64* %33
  %54 = load i64, i64* %36
  %55 = getelementptr [30 x i8], [30 x i8]* @.str93, i32 0, i32 0
  %56 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str93.c, i8* %55)
  %57 = load %nyx_string*, %nyx_string** %39
  %58 = call %nyx_string* @nyx_string_concat(%nyx_string* %56, %nyx_string* %57)
  %59 = getelementptr [21 x i8], [21 x i8]* @.str94, i32 0, i32 0
  %60 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str94.c, i8* %59)
  %61 = call %nyx_string* @nyx_string_concat(%nyx_string* %58, %nyx_string* %60)
  %62 = getelementptr [21 x i8], [21 x i8]* @.str95, i32 0, i32 0
  %63 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str95.c, i8* %62)
  %64 = load %nyx_string*, %nyx_string** %39
  %65 = call %nyx_string* @nyx_string_concat(%nyx_string* %63, %nyx_string* %64)
  %66 = getelementptr [19 x i8], [19 x i8]* @.str96, i32 0, i32 0
  %67 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str96.c, i8* %66)
  %68 = call %nyx_string* @nyx_string_concat(%nyx_string* %65, %nyx_string* %67)
  %69 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %61, %nyx_string* %68)
  %70 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %52, i64 %53, i64 %54, %nyx_string* %69)
  br label %merge7
else6:
  %71 = getelementptr [8 x i8], [8 x i8]* @.str97, i32 0, i32 0
  %72 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str97.c, i8* %71)
  %73 = load i64, i64* %33
  %74 = load i64, i64* %36
  %75 = getelementptr [14 x i8], [14 x i8]* @.str98, i32 0, i32 0
  %76 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str98.c, i8* %75)
  %77 = load %nyx_string*, %nyx_string** %23
  %78 = call %nyx_string* @nyx_string_concat(%nyx_string* %76, %nyx_string* %77)
  %79 = getelementptr [16 x i8], [16 x i8]* @.str99, i32 0, i32 0
  %80 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str99.c, i8* %79)
  %81 = call %nyx_string* @nyx_string_concat(%nyx_string* %78, %nyx_string* %80)
  %82 = load %nyx_string*, %nyx_string** %39
  %83 = call %nyx_string* @nyx_string_concat(%nyx_string* %81, %nyx_string* %82)
  %84 = getelementptr [4 x i8], [4 x i8]* @.str100, i32 0, i32 0
  %85 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str100.c, i8* %84)
  %86 = call %nyx_string* @nyx_string_concat(%nyx_string* %83, %nyx_string* %85)
  %87 = load %nyx_string*, %nyx_string** %42
  %88 = call %nyx_string* @nyx_string_concat(%nyx_string* %86, %nyx_string* %87)
  %89 = getelementptr [2 x i8], [2 x i8]* @.str101, i32 0, i32 0
  %90 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str101.c, i8* %89)
  %91 = call %nyx_string* @nyx_string_concat(%nyx_string* %88, %nyx_string* %90)
  %92 = getelementptr [11 x i8], [11 x i8]* @.str102, i32 0, i32 0
  %93 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str102.c, i8* %92)
  %94 = load %nyx_string*, %nyx_string** %23
  %95 = call %nyx_string* @nyx_string_concat(%nyx_string* %93, %nyx_string* %94)
  %96 = getelementptr [11 x i8], [11 x i8]* @.str103, i32 0, i32 0
  %97 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str103.c, i8* %96)
  %98 = call %nyx_string* @nyx_string_concat(%nyx_string* %95, %nyx_string* %97)
  %99 = load %nyx_string*, %nyx_string** %39
  %100 = call %nyx_string* @nyx_string_concat(%nyx_string* %98, %nyx_string* %99)
  %101 = getelementptr [4 x i8], [4 x i8]* @.str104, i32 0, i32 0
  %102 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str104.c, i8* %101)
  %103 = call %nyx_string* @nyx_string_concat(%nyx_string* %100, %nyx_string* %102)
  %104 = load %nyx_string*, %nyx_string** %42
  %105 = call %nyx_string* @nyx_string_concat(%nyx_string* %103, %nyx_string* %104)
  %106 = getelementptr [2 x i8], [2 x i8]* @.str105, i32 0, i32 0
  %107 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str105.c, i8* %106)
  %108 = call %nyx_string* @nyx_string_concat(%nyx_string* %105, %nyx_string* %107)
  %109 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %91, %nyx_string* %108)
  %110 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %72, i64 %73, i64 %74, %nyx_string* %109)
  br label %merge7
merge7:
  %111 = alloca i1
  store i1 false, i1* %111
  %112 = alloca i1
  store i1 false, i1* %112
  %113 = alloca i1
  store i1 false, i1* %113
  %114 = load %nyx_string*, %nyx_string** %42
  %115 = getelementptr [4 x i8], [4 x i8]* @.str106, i32 0, i32 0
  %116 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str106.c, i8* %115)
  %117 = call i1 @nyx_string_equals(%nyx_string* %114, %nyx_string* %116)
  %118 = xor i1 %117, true
  br i1 %118, label %sc_and_rhs8, label %sc_and_end9
sc_and_rhs8:
  %119 = load %nyx_string*, %nyx_string** %42
  %120 = getelementptr [12 x i8], [12 x i8]* @.str107, i32 0, i32 0
  %121 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str107.c, i8* %120)
  %122 = call i1 @nyx_string_equals(%nyx_string* %119, %nyx_string* %121)
  %123 = xor i1 %122, true
  store i1 %123, i1* %113
  br label %sc_and_end9
sc_and_end9:
  %124 = load i1, i1* %113
  br i1 %124, label %sc_and_rhs10, label %sc_and_end11
sc_and_rhs10:
  %125 = load %nyx_string*, %nyx_string** %42
  %126 = getelementptr [12 x i8], [12 x i8]* @.str108, i32 0, i32 0
  %127 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str108.c, i8* %126)
  %128 = call i1 @nyx_string_equals(%nyx_string* %125, %nyx_string* %127)
  %129 = xor i1 %128, true
  store i1 %129, i1* %112
  br label %sc_and_end11
sc_and_end11:
  %130 = load i1, i1* %112
  br i1 %130, label %sc_and_rhs12, label %sc_and_end13
sc_and_rhs12:
  %131 = load %nyx_string*, %nyx_string** %42
  %132 = getelementptr [14 x i8], [14 x i8]* @.str109, i32 0, i32 0
  %133 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str109.c, i8* %132)
  %134 = call i1 @nyx_string_equals(%nyx_string* %131, %nyx_string* %133)
  %135 = xor i1 %134, true
  store i1 %135, i1* %111
  br label %sc_and_end13
sc_and_end13:
  %136 = load i1, i1* %111
  br i1 %136, label %then14, label %else15
then14:
  %137 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge16
else15:
  br label %merge16
merge16:
  %138 = load %Token, %Token* %25
  ret %Token %138
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
  %23 = load i64, i64* %4
  %24 = icmp slt i64 %23, 1
  br i1 %24, label %then0, label %else1
then0:
  ret i1 0
else1:
  br label %merge2
merge2:
  %25 = load { i64, i8* }*, { i64, i8* }** %3
  %26 = load i64, i64* %4
  %27 = sub i64 %26, 1
  %28 = call i64 @nyx_array_get({ i64, i8* }* %25, i64 %27)
  %29 = inttoptr i64 %28 to %Token*
  %30 = load %Token, %Token* %29
  %31 = alloca %Token
  store %Token %30, %Token* %31
  %32 = load { i64, i8* }*, { i64, i8* }** %3
  %33 = load i64, i64* %4
  %34 = call i64 @nyx_array_get({ i64, i8* }* %32, i64 %33)
  %35 = inttoptr i64 %34 to %Token*
  %36 = load %Token, %Token* %35
  %37 = alloca %Token
  store %Token %36, %Token* %37
  %38 = load %Token, %Token* %37
  %39 = call i64 @get_token_line(%Token %38)
  %40 = load %Token, %Token* %31
  %41 = call i64 @get_token_line(%Token %40)
  %42 = icmp sgt i64 %39, %41
  ret i1 %42
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
  %23 = call { i64, i8* }* @parse__parse_logical_or(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %23
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
  %23 = call { i64, i8* }* @parse__parse_logical_and(%SharedEnv_parse* %env.param)
  %24 = alloca { i64, i8* }*
  store { i64, i8* }* %23, { i64, i8* }** %24
  %25 = alloca i1
  store i1 0, i1* %25
  %26 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %27 = load i1, i1* %25
  %28 = xor i1 %27, true
  br i1 %28, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %26)
  %29 = alloca i1
  store i1 true, i1* %29
  %30 = getelementptr [6 x i8], [6 x i8]* @.str110, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str110.c, i8* %30)
  %32 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %31)
  br i1 %32, label %sc_or_end4, label %sc_or_rhs3
sc_or_rhs3:
  %33 = getelementptr [3 x i8], [3 x i8]* @.str111, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str111.c, i8* %33)
  %35 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %34)
  store i1 %35, i1* %29
  br label %sc_or_end4
sc_or_end4:
  %36 = load i1, i1* %29
  br i1 %36, label %then5, label %else6
then5:
  %37 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %38 = alloca %Token
  store %Token %37, %Token* %38
  %39 = call { i64, i8* }* @parse__parse_logical_and(%SharedEnv_parse* %env.param)
  %40 = alloca { i64, i8* }*
  store { i64, i8* }* %39, { i64, i8* }** %40
  %41 = getelementptr [6 x i8], [6 x i8]* @.str112, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str112.c, i8* %41)
  %43 = call { i64, i8* }* @nyx_array_new_ptr()
  %44 = load %Token, %Token* %38
  %45 = call %nyx_string* @get_token_type(%Token %44)
  %46 = ptrtoint %nyx_string* %45 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %43, i64 %46, i64 2)
  %47 = load { i64, i8* }*, { i64, i8* }** %24
  %48 = bitcast { i64, i8* }* %47 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %43, i8* %48)
  %49 = load { i64, i8* }*, { i64, i8* }** %40
  %50 = bitcast { i64, i8* }* %49 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %43, i8* %50)
  %51 = call { i64, i8* }* @make_astnode(%nyx_string* %42, { i64, i8* }* %43)
  store { i64, i8* }* %51, { i64, i8* }** %24
  br label %merge7
else6:
  store i1 1, i1* %25
  br label %merge7
merge7:
  br label %while_cond0
while_end2:
  %52 = load { i64, i8* }*, { i64, i8* }** %24
  ret { i64, i8* }* %52
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
  %23 = call { i64, i8* }* @parse__parse_bitwise_or(%SharedEnv_parse* %env.param)
  %24 = alloca { i64, i8* }*
  store { i64, i8* }* %23, { i64, i8* }** %24
  %25 = alloca i1
  store i1 0, i1* %25
  %26 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %27 = load i1, i1* %25
  %28 = xor i1 %27, true
  br i1 %28, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %26)
  %29 = alloca i1
  store i1 true, i1* %29
  %30 = getelementptr [8 x i8], [8 x i8]* @.str113, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str113.c, i8* %30)
  %32 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %31)
  br i1 %32, label %sc_or_end4, label %sc_or_rhs3
sc_or_rhs3:
  %33 = getelementptr [4 x i8], [4 x i8]* @.str114, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str114.c, i8* %33)
  %35 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %34)
  store i1 %35, i1* %29
  br label %sc_or_end4
sc_or_end4:
  %36 = load i1, i1* %29
  br i1 %36, label %then5, label %else6
then5:
  %37 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %38 = alloca %Token
  store %Token %37, %Token* %38
  %39 = call { i64, i8* }* @parse__parse_bitwise_or(%SharedEnv_parse* %env.param)
  %40 = alloca { i64, i8* }*
  store { i64, i8* }* %39, { i64, i8* }** %40
  %41 = getelementptr [6 x i8], [6 x i8]* @.str115, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str115.c, i8* %41)
  %43 = call { i64, i8* }* @nyx_array_new_ptr()
  %44 = load %Token, %Token* %38
  %45 = call %nyx_string* @get_token_type(%Token %44)
  %46 = ptrtoint %nyx_string* %45 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %43, i64 %46, i64 2)
  %47 = load { i64, i8* }*, { i64, i8* }** %24
  %48 = bitcast { i64, i8* }* %47 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %43, i8* %48)
  %49 = load { i64, i8* }*, { i64, i8* }** %40
  %50 = bitcast { i64, i8* }* %49 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %43, i8* %50)
  %51 = call { i64, i8* }* @make_astnode(%nyx_string* %42, { i64, i8* }* %43)
  store { i64, i8* }* %51, { i64, i8* }** %24
  br label %merge7
else6:
  store i1 1, i1* %25
  br label %merge7
merge7:
  br label %while_cond0
while_end2:
  %52 = load { i64, i8* }*, { i64, i8* }** %24
  ret { i64, i8* }* %52
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
  %23 = call { i64, i8* }* @parse__parse_bitwise_xor(%SharedEnv_parse* %env.param)
  %24 = alloca { i64, i8* }*
  store { i64, i8* }* %23, { i64, i8* }** %24
  %25 = alloca i1
  store i1 0, i1* %25
  %26 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %27 = load i1, i1* %25
  %28 = xor i1 %27, true
  br i1 %28, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %26)
  %29 = getelementptr [5 x i8], [5 x i8]* @.str116, i32 0, i32 0
  %30 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str116.c, i8* %29)
  %31 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %30)
  br i1 %31, label %then3, label %else4
then3:
  %32 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %33 = alloca %Token
  store %Token %32, %Token* %33
  %34 = call { i64, i8* }* @parse__parse_bitwise_xor(%SharedEnv_parse* %env.param)
  %35 = alloca { i64, i8* }*
  store { i64, i8* }* %34, { i64, i8* }** %35
  %36 = getelementptr [6 x i8], [6 x i8]* @.str117, i32 0, i32 0
  %37 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str117.c, i8* %36)
  %38 = call { i64, i8* }* @nyx_array_new_ptr()
  %39 = load %Token, %Token* %33
  %40 = call %nyx_string* @get_token_type(%Token %39)
  %41 = ptrtoint %nyx_string* %40 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %38, i64 %41, i64 2)
  %42 = load { i64, i8* }*, { i64, i8* }** %24
  %43 = bitcast { i64, i8* }* %42 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %38, i8* %43)
  %44 = load { i64, i8* }*, { i64, i8* }** %35
  %45 = bitcast { i64, i8* }* %44 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %38, i8* %45)
  %46 = call { i64, i8* }* @make_astnode(%nyx_string* %37, { i64, i8* }* %38)
  store { i64, i8* }* %46, { i64, i8* }** %24
  br label %merge5
else4:
  store i1 1, i1* %25
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %47 = load { i64, i8* }*, { i64, i8* }** %24
  ret { i64, i8* }* %47
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
  %23 = call { i64, i8* }* @parse__parse_bitwise_and(%SharedEnv_parse* %env.param)
  %24 = alloca { i64, i8* }*
  store { i64, i8* }* %23, { i64, i8* }** %24
  %25 = alloca i1
  store i1 0, i1* %25
  %26 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %27 = load i1, i1* %25
  %28 = xor i1 %27, true
  br i1 %28, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %26)
  %29 = getelementptr [6 x i8], [6 x i8]* @.str118, i32 0, i32 0
  %30 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str118.c, i8* %29)
  %31 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %30)
  br i1 %31, label %then3, label %else4
then3:
  %32 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %33 = alloca %Token
  store %Token %32, %Token* %33
  %34 = call { i64, i8* }* @parse__parse_bitwise_and(%SharedEnv_parse* %env.param)
  %35 = alloca { i64, i8* }*
  store { i64, i8* }* %34, { i64, i8* }** %35
  %36 = getelementptr [6 x i8], [6 x i8]* @.str119, i32 0, i32 0
  %37 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str119.c, i8* %36)
  %38 = call { i64, i8* }* @nyx_array_new_ptr()
  %39 = load %Token, %Token* %33
  %40 = call %nyx_string* @get_token_type(%Token %39)
  %41 = ptrtoint %nyx_string* %40 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %38, i64 %41, i64 2)
  %42 = load { i64, i8* }*, { i64, i8* }** %24
  %43 = bitcast { i64, i8* }* %42 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %38, i8* %43)
  %44 = load { i64, i8* }*, { i64, i8* }** %35
  %45 = bitcast { i64, i8* }* %44 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %38, i8* %45)
  %46 = call { i64, i8* }* @make_astnode(%nyx_string* %37, { i64, i8* }* %38)
  store { i64, i8* }* %46, { i64, i8* }** %24
  br label %merge5
else4:
  store i1 1, i1* %25
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %47 = load { i64, i8* }*, { i64, i8* }** %24
  ret { i64, i8* }* %47
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
  %23 = call { i64, i8* }* @parse__parse_equality(%SharedEnv_parse* %env.param)
  %24 = alloca { i64, i8* }*
  store { i64, i8* }* %23, { i64, i8* }** %24
  %25 = alloca i1
  store i1 0, i1* %25
  %26 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %27 = load i1, i1* %25
  %28 = xor i1 %27, true
  br i1 %28, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %26)
  %29 = getelementptr [4 x i8], [4 x i8]* @.str120, i32 0, i32 0
  %30 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str120.c, i8* %29)
  %31 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %30)
  br i1 %31, label %then3, label %else4
then3:
  %32 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %33 = alloca %Token
  store %Token %32, %Token* %33
  %34 = call { i64, i8* }* @parse__parse_equality(%SharedEnv_parse* %env.param)
  %35 = alloca { i64, i8* }*
  store { i64, i8* }* %34, { i64, i8* }** %35
  %36 = getelementptr [6 x i8], [6 x i8]* @.str121, i32 0, i32 0
  %37 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str121.c, i8* %36)
  %38 = call { i64, i8* }* @nyx_array_new_ptr()
  %39 = load %Token, %Token* %33
  %40 = call %nyx_string* @get_token_type(%Token %39)
  %41 = ptrtoint %nyx_string* %40 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %38, i64 %41, i64 2)
  %42 = load { i64, i8* }*, { i64, i8* }** %24
  %43 = bitcast { i64, i8* }* %42 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %38, i8* %43)
  %44 = load { i64, i8* }*, { i64, i8* }** %35
  %45 = bitcast { i64, i8* }* %44 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %38, i8* %45)
  %46 = call { i64, i8* }* @make_astnode(%nyx_string* %37, { i64, i8* }* %38)
  store { i64, i8* }* %46, { i64, i8* }** %24
  br label %merge5
else4:
  store i1 1, i1* %25
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %47 = load { i64, i8* }*, { i64, i8* }** %24
  ret { i64, i8* }* %47
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
  %23 = call { i64, i8* }* @parse__parse_comparison(%SharedEnv_parse* %env.param)
  %24 = alloca { i64, i8* }*
  store { i64, i8* }* %23, { i64, i8* }** %24
  %25 = alloca i1
  store i1 0, i1* %25
  %26 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %27 = load i1, i1* %25
  %28 = xor i1 %27, true
  br i1 %28, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %26)
  %29 = alloca i1
  store i1 true, i1* %29
  %30 = getelementptr [12 x i8], [12 x i8]* @.str122, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str122.c, i8* %30)
  %32 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %31)
  br i1 %32, label %sc_or_end4, label %sc_or_rhs3
sc_or_rhs3:
  %33 = getelementptr [10 x i8], [10 x i8]* @.str123, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str123.c, i8* %33)
  %35 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %34)
  store i1 %35, i1* %29
  br label %sc_or_end4
sc_or_end4:
  %36 = load i1, i1* %29
  br i1 %36, label %then5, label %else6
then5:
  %37 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %38 = alloca %Token
  store %Token %37, %Token* %38
  %39 = call { i64, i8* }* @parse__parse_comparison(%SharedEnv_parse* %env.param)
  %40 = alloca { i64, i8* }*
  store { i64, i8* }* %39, { i64, i8* }** %40
  %41 = getelementptr [6 x i8], [6 x i8]* @.str124, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str124.c, i8* %41)
  %43 = call { i64, i8* }* @nyx_array_new_ptr()
  %44 = load %Token, %Token* %38
  %45 = call %nyx_string* @get_token_type(%Token %44)
  %46 = ptrtoint %nyx_string* %45 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %43, i64 %46, i64 2)
  %47 = load { i64, i8* }*, { i64, i8* }** %24
  %48 = bitcast { i64, i8* }* %47 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %43, i8* %48)
  %49 = load { i64, i8* }*, { i64, i8* }** %40
  %50 = bitcast { i64, i8* }* %49 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %43, i8* %50)
  %51 = call { i64, i8* }* @make_astnode(%nyx_string* %42, { i64, i8* }* %43)
  store { i64, i8* }* %51, { i64, i8* }** %24
  br label %merge7
else6:
  store i1 1, i1* %25
  br label %merge7
merge7:
  br label %while_cond0
while_end2:
  %52 = load { i64, i8* }*, { i64, i8* }** %24
  ret { i64, i8* }* %52
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
  %23 = call { i64, i8* }* @parse__parse_range(%SharedEnv_parse* %env.param)
  %24 = alloca { i64, i8* }*
  store { i64, i8* }* %23, { i64, i8* }** %24
  %25 = alloca i1
  store i1 0, i1* %25
  %26 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %27 = load i1, i1* %25
  %28 = xor i1 %27, true
  br i1 %28, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %26)
  %29 = alloca i1
  store i1 true, i1* %29
  %30 = alloca i1
  store i1 true, i1* %30
  %31 = alloca i1
  store i1 true, i1* %31
  %32 = getelementptr [5 x i8], [5 x i8]* @.str125, i32 0, i32 0
  %33 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str125.c, i8* %32)
  %34 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %33)
  br i1 %34, label %sc_or_end4, label %sc_or_rhs3
sc_or_rhs3:
  %35 = getelementptr [8 x i8], [8 x i8]* @.str126, i32 0, i32 0
  %36 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str126.c, i8* %35)
  %37 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %36)
  store i1 %37, i1* %31
  br label %sc_or_end4
sc_or_end4:
  %38 = load i1, i1* %31
  br i1 %38, label %sc_or_end6, label %sc_or_rhs5
sc_or_rhs5:
  %39 = getelementptr [11 x i8], [11 x i8]* @.str127, i32 0, i32 0
  %40 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str127.c, i8* %39)
  %41 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %40)
  store i1 %41, i1* %30
  br label %sc_or_end6
sc_or_end6:
  %42 = load i1, i1* %30
  br i1 %42, label %sc_or_end8, label %sc_or_rhs7
sc_or_rhs7:
  %43 = getelementptr [14 x i8], [14 x i8]* @.str128, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str128.c, i8* %43)
  %45 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %44)
  store i1 %45, i1* %29
  br label %sc_or_end8
sc_or_end8:
  %46 = load i1, i1* %29
  br i1 %46, label %then9, label %else10
then9:
  %47 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %48 = alloca %Token
  store %Token %47, %Token* %48
  %49 = call { i64, i8* }* @parse__parse_range(%SharedEnv_parse* %env.param)
  %50 = alloca { i64, i8* }*
  store { i64, i8* }* %49, { i64, i8* }** %50
  %51 = getelementptr [6 x i8], [6 x i8]* @.str129, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str129.c, i8* %51)
  %53 = call { i64, i8* }* @nyx_array_new_ptr()
  %54 = load %Token, %Token* %48
  %55 = call %nyx_string* @get_token_type(%Token %54)
  %56 = ptrtoint %nyx_string* %55 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %53, i64 %56, i64 2)
  %57 = load { i64, i8* }*, { i64, i8* }** %24
  %58 = bitcast { i64, i8* }* %57 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %53, i8* %58)
  %59 = load { i64, i8* }*, { i64, i8* }** %50
  %60 = bitcast { i64, i8* }* %59 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %53, i8* %60)
  %61 = call { i64, i8* }* @make_astnode(%nyx_string* %52, { i64, i8* }* %53)
  store { i64, i8* }* %61, { i64, i8* }** %24
  br label %merge11
else10:
  store i1 1, i1* %25
  br label %merge11
merge11:
  br label %while_cond0
while_end2:
  %62 = load { i64, i8* }*, { i64, i8* }** %24
  ret { i64, i8* }* %62
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
  %23 = call { i64, i8* }* @parse__parse_addition(%SharedEnv_parse* %env.param)
  %24 = alloca { i64, i8* }*
  store { i64, i8* }* %23, { i64, i8* }** %24
  %25 = getelementptr [16 x i8], [16 x i8]* @.str130, i32 0, i32 0
  %26 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str130.c, i8* %25)
  %27 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %26)
  br i1 %27, label %then0, label %else1
then0:
  %28 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %29 = call { i64, i8* }* @parse__parse_addition(%SharedEnv_parse* %env.param)
  %30 = alloca { i64, i8* }*
  store { i64, i8* }* %29, { i64, i8* }** %30
  %31 = getelementptr [6 x i8], [6 x i8]* @.str131, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str131.c, i8* %31)
  %33 = call { i64, i8* }* @nyx_array_new_ptr()
  %34 = load { i64, i8* }*, { i64, i8* }** %24
  %35 = bitcast { i64, i8* }* %34 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %33, i8* %35)
  %36 = load { i64, i8* }*, { i64, i8* }** %30
  %37 = bitcast { i64, i8* }* %36 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %33, i8* %37)
  %38 = getelementptr [5 x i8], [5 x i8]* @.str132, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str132.c, i8* %38)
  %40 = ptrtoint %nyx_string* %39 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %33, i64 %40, i64 2)
  %41 = call { i64, i8* }* @make_astnode(%nyx_string* %32, { i64, i8* }* %33)
  ret { i64, i8* }* %41
else1:
  br label %merge2
merge2:
  %42 = getelementptr [6 x i8], [6 x i8]* @.str133, i32 0, i32 0
  %43 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str133.c, i8* %42)
  %44 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %43)
  br i1 %44, label %then3, label %else4
then3:
  %45 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %46 = call { i64, i8* }* @parse__parse_addition(%SharedEnv_parse* %env.param)
  %47 = alloca { i64, i8* }*
  store { i64, i8* }* %46, { i64, i8* }** %47
  %48 = getelementptr [6 x i8], [6 x i8]* @.str134, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str134.c, i8* %48)
  %50 = call { i64, i8* }* @nyx_array_new_ptr()
  %51 = load { i64, i8* }*, { i64, i8* }** %24
  %52 = bitcast { i64, i8* }* %51 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %50, i8* %52)
  %53 = load { i64, i8* }*, { i64, i8* }** %47
  %54 = bitcast { i64, i8* }* %53 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %50, i8* %54)
  %55 = getelementptr [6 x i8], [6 x i8]* @.str135, i32 0, i32 0
  %56 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str135.c, i8* %55)
  %57 = ptrtoint %nyx_string* %56 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %50, i64 %57, i64 2)
  %58 = call { i64, i8* }* @make_astnode(%nyx_string* %49, { i64, i8* }* %50)
  ret { i64, i8* }* %58
else4:
  br label %merge5
merge5:
  %59 = load { i64, i8* }*, { i64, i8* }** %24
  ret { i64, i8* }* %59
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
  %23 = call { i64, i8* }* @parse__parse_shift(%SharedEnv_parse* %env.param)
  %24 = alloca { i64, i8* }*
  store { i64, i8* }* %23, { i64, i8* }** %24
  %25 = alloca i1
  store i1 0, i1* %25
  %26 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %27 = load i1, i1* %25
  %28 = xor i1 %27, true
  br i1 %28, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %26)
  %29 = alloca i1
  store i1 true, i1* %29
  %30 = getelementptr [5 x i8], [5 x i8]* @.str136, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str136.c, i8* %30)
  %32 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %31)
  br i1 %32, label %sc_or_end4, label %sc_or_rhs3
sc_or_rhs3:
  %33 = getelementptr [6 x i8], [6 x i8]* @.str137, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str137.c, i8* %33)
  %35 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %34)
  store i1 %35, i1* %29
  br label %sc_or_end4
sc_or_end4:
  %36 = load i1, i1* %29
  br i1 %36, label %then5, label %else6
then5:
  %37 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %38 = alloca %Token
  store %Token %37, %Token* %38
  %39 = call { i64, i8* }* @parse__parse_shift(%SharedEnv_parse* %env.param)
  %40 = alloca { i64, i8* }*
  store { i64, i8* }* %39, { i64, i8* }** %40
  %41 = getelementptr [6 x i8], [6 x i8]* @.str138, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str138.c, i8* %41)
  %43 = call { i64, i8* }* @nyx_array_new_ptr()
  %44 = load %Token, %Token* %38
  %45 = call %nyx_string* @get_token_type(%Token %44)
  %46 = ptrtoint %nyx_string* %45 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %43, i64 %46, i64 2)
  %47 = load { i64, i8* }*, { i64, i8* }** %24
  %48 = bitcast { i64, i8* }* %47 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %43, i8* %48)
  %49 = load { i64, i8* }*, { i64, i8* }** %40
  %50 = bitcast { i64, i8* }* %49 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %43, i8* %50)
  %51 = call { i64, i8* }* @make_astnode(%nyx_string* %42, { i64, i8* }* %43)
  store { i64, i8* }* %51, { i64, i8* }** %24
  br label %merge7
else6:
  store i1 1, i1* %25
  br label %merge7
merge7:
  br label %while_cond0
while_end2:
  %52 = load { i64, i8* }*, { i64, i8* }** %24
  ret { i64, i8* }* %52
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
  %23 = call { i64, i8* }* @parse__parse_multiplication(%SharedEnv_parse* %env.param)
  %24 = alloca { i64, i8* }*
  store { i64, i8* }* %23, { i64, i8* }** %24
  %25 = alloca i1
  store i1 0, i1* %25
  %26 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %27 = load i1, i1* %25
  %28 = xor i1 %27, true
  br i1 %28, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %26)
  %29 = alloca i1
  store i1 true, i1* %29
  %30 = getelementptr [11 x i8], [11 x i8]* @.str139, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str139.c, i8* %30)
  %32 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %31)
  br i1 %32, label %sc_or_end4, label %sc_or_rhs3
sc_or_rhs3:
  %33 = getelementptr [12 x i8], [12 x i8]* @.str140, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str140.c, i8* %33)
  %35 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %34)
  store i1 %35, i1* %29
  br label %sc_or_end4
sc_or_end4:
  %36 = load i1, i1* %29
  br i1 %36, label %then5, label %else6
then5:
  %37 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %38 = alloca %Token
  store %Token %37, %Token* %38
  %39 = call { i64, i8* }* @parse__parse_multiplication(%SharedEnv_parse* %env.param)
  %40 = alloca { i64, i8* }*
  store { i64, i8* }* %39, { i64, i8* }** %40
  %41 = getelementptr [6 x i8], [6 x i8]* @.str141, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str141.c, i8* %41)
  %43 = call { i64, i8* }* @nyx_array_new_ptr()
  %44 = load %Token, %Token* %38
  %45 = call %nyx_string* @get_token_type(%Token %44)
  %46 = ptrtoint %nyx_string* %45 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %43, i64 %46, i64 2)
  %47 = load { i64, i8* }*, { i64, i8* }** %24
  %48 = bitcast { i64, i8* }* %47 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %43, i8* %48)
  %49 = load { i64, i8* }*, { i64, i8* }** %40
  %50 = bitcast { i64, i8* }* %49 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %43, i8* %50)
  %51 = call { i64, i8* }* @make_astnode(%nyx_string* %42, { i64, i8* }* %43)
  store { i64, i8* }* %51, { i64, i8* }** %24
  br label %merge7
else6:
  store i1 1, i1* %25
  br label %merge7
merge7:
  br label %while_cond0
while_end2:
  %52 = load { i64, i8* }*, { i64, i8* }** %24
  ret { i64, i8* }* %52
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
  %23 = call { i64, i8* }* @parse__parse_power(%SharedEnv_parse* %env.param)
  %24 = alloca { i64, i8* }*
  store { i64, i8* }* %23, { i64, i8* }** %24
  %25 = alloca i1
  store i1 0, i1* %25
  %26 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %27 = load i1, i1* %25
  %28 = xor i1 %27, true
  br i1 %28, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %26)
  %29 = alloca i1
  store i1 false, i1* %29
  %30 = getelementptr [5 x i8], [5 x i8]* @.str142, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str142.c, i8* %30)
  %32 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %31)
  br i1 %32, label %sc_and_rhs3, label %sc_and_end4
sc_and_rhs3:
  %33 = call i1 @parse__is_on_new_line(%SharedEnv_parse* %env.param)
  store i1 %33, i1* %29
  br label %sc_and_end4
sc_and_end4:
  %34 = load i1, i1* %29
  br i1 %34, label %then5, label %else6
then5:
  store i1 1, i1* %25
  br label %merge7
else6:
  %35 = alloca i1
  store i1 true, i1* %35
  %36 = alloca i1
  store i1 true, i1* %36
  %37 = getelementptr [5 x i8], [5 x i8]* @.str143, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str143.c, i8* %37)
  %39 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %38)
  br i1 %39, label %sc_or_end9, label %sc_or_rhs8
sc_or_rhs8:
  %40 = getelementptr [6 x i8], [6 x i8]* @.str144, i32 0, i32 0
  %41 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str144.c, i8* %40)
  %42 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %41)
  store i1 %42, i1* %36
  br label %sc_or_end9
sc_or_end9:
  %43 = load i1, i1* %36
  br i1 %43, label %sc_or_end11, label %sc_or_rhs10
sc_or_rhs10:
  %44 = getelementptr [8 x i8], [8 x i8]* @.str145, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str145.c, i8* %44)
  %46 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %45)
  store i1 %46, i1* %35
  br label %sc_or_end11
sc_or_end11:
  %47 = load i1, i1* %35
  br i1 %47, label %then12, label %else13
then12:
  %48 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %49 = alloca %Token
  store %Token %48, %Token* %49
  %50 = call { i64, i8* }* @parse__parse_power(%SharedEnv_parse* %env.param)
  %51 = alloca { i64, i8* }*
  store { i64, i8* }* %50, { i64, i8* }** %51
  %52 = getelementptr [6 x i8], [6 x i8]* @.str146, i32 0, i32 0
  %53 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str146.c, i8* %52)
  %54 = call { i64, i8* }* @nyx_array_new_ptr()
  %55 = load %Token, %Token* %49
  %56 = call %nyx_string* @get_token_type(%Token %55)
  %57 = ptrtoint %nyx_string* %56 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %54, i64 %57, i64 2)
  %58 = load { i64, i8* }*, { i64, i8* }** %24
  %59 = bitcast { i64, i8* }* %58 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %54, i8* %59)
  %60 = load { i64, i8* }*, { i64, i8* }** %51
  %61 = bitcast { i64, i8* }* %60 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %54, i8* %61)
  %62 = call { i64, i8* }* @make_astnode(%nyx_string* %53, { i64, i8* }* %54)
  store { i64, i8* }* %62, { i64, i8* }** %24
  br label %merge14
else13:
  store i1 1, i1* %25
  br label %merge14
merge14:
  br label %merge7
merge7:
  br label %while_cond0
while_end2:
  %63 = load { i64, i8* }*, { i64, i8* }** %24
  ret { i64, i8* }* %63
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
  %23 = call { i64, i8* }* @parse__parse_unary(%SharedEnv_parse* %env.param)
  %24 = alloca { i64, i8* }*
  store { i64, i8* }* %23, { i64, i8* }** %24
  %25 = getelementptr [6 x i8], [6 x i8]* @.str147, i32 0, i32 0
  %26 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str147.c, i8* %25)
  %27 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %26)
  br i1 %27, label %then0, label %else1
then0:
  %28 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %29 = call { i64, i8* }* @parse__parse_power(%SharedEnv_parse* %env.param)
  %30 = alloca { i64, i8* }*
  store { i64, i8* }* %29, { i64, i8* }** %30
  %31 = getelementptr [6 x i8], [6 x i8]* @.str148, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str148.c, i8* %31)
  %33 = call { i64, i8* }* @nyx_array_new_ptr()
  %34 = getelementptr [6 x i8], [6 x i8]* @.str149, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str149.c, i8* %34)
  %36 = ptrtoint %nyx_string* %35 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %33, i64 %36, i64 2)
  %37 = load { i64, i8* }*, { i64, i8* }** %24
  %38 = bitcast { i64, i8* }* %37 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %33, i8* %38)
  %39 = load { i64, i8* }*, { i64, i8* }** %30
  %40 = bitcast { i64, i8* }* %39 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %33, i8* %40)
  %41 = call { i64, i8* }* @make_astnode(%nyx_string* %32, { i64, i8* }* %33)
  ret { i64, i8* }* %41
else1:
  br label %merge2
merge2:
  %42 = load { i64, i8* }*, { i64, i8* }** %24
  ret { i64, i8* }* %42
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
  %23 = getelementptr [6 x i8], [6 x i8]* @.str150, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str150.c, i8* %23)
  %25 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %24)
  br i1 %25, label %then0, label %else1
then0:
  %26 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %27 = call { i64, i8* }* @parse__parse_unary(%SharedEnv_parse* %env.param)
  %28 = alloca { i64, i8* }*
  store { i64, i8* }* %27, { i64, i8* }** %28
  %29 = getelementptr [11 x i8], [11 x i8]* @.str151, i32 0, i32 0
  %30 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str151.c, i8* %29)
  %31 = call { i64, i8* }* @nyx_array_new_ptr()
  %32 = load { i64, i8* }*, { i64, i8* }** %28
  %33 = bitcast { i64, i8* }* %32 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %31, i8* %33)
  %34 = call { i64, i8* }* @make_astnode(%nyx_string* %30, { i64, i8* }* %31)
  ret { i64, i8* }* %34
else1:
  br label %merge2
merge2:
  %35 = alloca i1
  store i1 true, i1* %35
  %36 = alloca i1
  store i1 true, i1* %36
  %37 = getelementptr [6 x i8], [6 x i8]* @.str152, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str152.c, i8* %37)
  %39 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %38)
  br i1 %39, label %sc_or_end4, label %sc_or_rhs3
sc_or_rhs3:
  %40 = getelementptr [4 x i8], [4 x i8]* @.str153, i32 0, i32 0
  %41 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str153.c, i8* %40)
  %42 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %41)
  store i1 %42, i1* %36
  br label %sc_or_end4
sc_or_end4:
  %43 = load i1, i1* %36
  br i1 %43, label %sc_or_end6, label %sc_or_rhs5
sc_or_rhs5:
  %44 = getelementptr [6 x i8], [6 x i8]* @.str154, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str154.c, i8* %44)
  %46 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %45)
  store i1 %46, i1* %35
  br label %sc_or_end6
sc_or_end6:
  %47 = load i1, i1* %35
  br i1 %47, label %then7, label %else8
then7:
  %48 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %49 = alloca %Token
  store %Token %48, %Token* %49
  %50 = call { i64, i8* }* @parse__parse_unary(%SharedEnv_parse* %env.param)
  %51 = alloca { i64, i8* }*
  store { i64, i8* }* %50, { i64, i8* }** %51
  %52 = getelementptr [5 x i8], [5 x i8]* @.str155, i32 0, i32 0
  %53 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str155.c, i8* %52)
  %54 = call { i64, i8* }* @nyx_array_new_ptr()
  %55 = load %Token, %Token* %49
  %56 = call %nyx_string* @get_token_type(%Token %55)
  %57 = ptrtoint %nyx_string* %56 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %54, i64 %57, i64 2)
  %58 = load { i64, i8* }*, { i64, i8* }** %51
  %59 = bitcast { i64, i8* }* %58 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %54, i8* %59)
  %60 = call { i64, i8* }* @make_astnode(%nyx_string* %53, { i64, i8* }* %54)
  ret { i64, i8* }* %60
else8:
  br label %merge9
merge9:
  %61 = getelementptr [4 x i8], [4 x i8]* @.str156, i32 0, i32 0
  %62 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str156.c, i8* %61)
  %63 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %62)
  br i1 %63, label %then10, label %else11
then10:
  %64 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %65 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %66 = call %nyx_string* @get_token_value(%Token %65)
  %67 = alloca %nyx_string*
  store %nyx_string* %66, %nyx_string** %67
  %68 = load %nyx_string*, %nyx_string** %67
  %69 = getelementptr [4 x i8], [4 x i8]* @.str157, i32 0, i32 0
  %70 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str157.c, i8* %69)
  %71 = call i1 @nyx_string_equals(%nyx_string* %68, %nyx_string* %70)
  br i1 %71, label %then13, label %else14
then13:
  %72 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %73 = call { i64, i8* }* @parse__parse_unary(%SharedEnv_parse* %env.param)
  %74 = alloca { i64, i8* }*
  store { i64, i8* }* %73, { i64, i8* }** %74
  %75 = getelementptr [12 x i8], [12 x i8]* @.str158, i32 0, i32 0
  %76 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str158.c, i8* %75)
  %77 = call { i64, i8* }* @nyx_array_new_ptr()
  %78 = load { i64, i8* }*, { i64, i8* }** %74
  %79 = bitcast { i64, i8* }* %78 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %77, i8* %79)
  %80 = call { i64, i8* }* @make_astnode(%nyx_string* %76, { i64, i8* }* %77)
  ret { i64, i8* }* %80
else14:
  br label %merge15
merge15:
  %81 = call { i64, i8* }* @parse__parse_unary(%SharedEnv_parse* %env.param)
  %82 = alloca { i64, i8* }*
  store { i64, i8* }* %81, { i64, i8* }** %82
  %83 = getelementptr [8 x i8], [8 x i8]* @.str159, i32 0, i32 0
  %84 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str159.c, i8* %83)
  %85 = call { i64, i8* }* @nyx_array_new_ptr()
  %86 = load { i64, i8* }*, { i64, i8* }** %82
  %87 = bitcast { i64, i8* }* %86 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %85, i8* %87)
  %88 = call { i64, i8* }* @make_astnode(%nyx_string* %84, { i64, i8* }* %85)
  ret { i64, i8* }* %88
else11:
  br label %merge12
merge12:
  %89 = getelementptr [5 x i8], [5 x i8]* @.str160, i32 0, i32 0
  %90 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str160.c, i8* %89)
  %91 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %90)
  br i1 %91, label %then16, label %else17
then16:
  %92 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %93 = call { i64, i8* }* @parse__parse_unary(%SharedEnv_parse* %env.param)
  %94 = alloca { i64, i8* }*
  store { i64, i8* }* %93, { i64, i8* }** %94
  %95 = getelementptr [6 x i8], [6 x i8]* @.str161, i32 0, i32 0
  %96 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str161.c, i8* %95)
  %97 = call { i64, i8* }* @nyx_array_new_ptr()
  %98 = load { i64, i8* }*, { i64, i8* }** %94
  %99 = bitcast { i64, i8* }* %98 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %97, i8* %99)
  %100 = call { i64, i8* }* @make_astnode(%nyx_string* %96, { i64, i8* }* %97)
  ret { i64, i8* }* %100
else17:
  br label %merge18
merge18:
  %101 = call { i64, i8* }* @parse__parse_cast(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %101
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
  %23 = call { i64, i8* }* @parse__parse_postfix(%SharedEnv_parse* %env.param)
  %24 = alloca { i64, i8* }*
  store { i64, i8* }* %23, { i64, i8* }** %24
  %25 = alloca i1
  store i1 0, i1* %25
  %26 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %27 = load i1, i1* %25
  %28 = xor i1 %27, true
  br i1 %28, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %26)
  %29 = getelementptr [3 x i8], [3 x i8]* @.str162, i32 0, i32 0
  %30 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str162.c, i8* %29)
  %31 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %30)
  br i1 %31, label %then3, label %else4
then3:
  %32 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %33 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %34 = alloca %nyx_string*
  store %nyx_string* %33, %nyx_string** %34
  %35 = getelementptr [5 x i8], [5 x i8]* @.str163, i32 0, i32 0
  %36 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str163.c, i8* %35)
  %37 = call { i64, i8* }* @nyx_array_new_ptr()
  %38 = load { i64, i8* }*, { i64, i8* }** %24
  %39 = bitcast { i64, i8* }* %38 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %37, i8* %39)
  %40 = load %nyx_string*, %nyx_string** %34
  %41 = ptrtoint %nyx_string* %40 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %37, i64 %41, i64 2)
  %42 = call { i64, i8* }* @make_astnode(%nyx_string* %36, { i64, i8* }* %37)
  store { i64, i8* }* %42, { i64, i8* }** %24
  br label %merge5
else4:
  store i1 1, i1* %25
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %43 = load { i64, i8* }*, { i64, i8* }** %24
  ret { i64, i8* }* %43
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
  %23 = load i64, i64* %4
  %24 = add i64 %23, 1
  %25 = alloca i64
  store i64 %24, i64* %25
  %26 = load i64, i64* %25
  %27 = load { i64, i8* }*, { i64, i8* }** %3
  %28 = call i64 @nyx_array_length({ i64, i8* }* %27)
  %29 = icmp sge i64 %26, %28
  br i1 %29, label %then0, label %else1
then0:
  ret i1 0
else1:
  br label %merge2
merge2:
  %30 = load { i64, i8* }*, { i64, i8* }** %3
  %31 = load i64, i64* %25
  %32 = call i64 @nyx_array_get({ i64, i8* }* %30, i64 %31)
  %33 = inttoptr i64 %32 to %Token*
  %34 = load %Token, %Token* %33
  %35 = alloca %Token
  store %Token %34, %Token* %35
  %36 = load %Token, %Token* %35
  %37 = call %nyx_string* @get_token_type(%Token %36)
  %38 = getelementptr [11 x i8], [11 x i8]* @.str164, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str164.c, i8* %38)
  %40 = call i1 @nyx_string_equals(%nyx_string* %37, %nyx_string* %39)
  %41 = xor i1 %40, true
  br i1 %41, label %then3, label %else4
then3:
  ret i1 0
else4:
  br label %merge5
merge5:
  %42 = alloca i64
  store i64 1, i64* %42
  %43 = load i64, i64* %25
  %44 = add i64 %43, 1
  store i64 %44, i64* %25
  %45 = call i8* @llvm.stacksave()
  br label %while_cond6
while_cond6:
  %46 = alloca i1
  store i1 false, i1* %46
  %47 = load i64, i64* %25
  %48 = load { i64, i8* }*, { i64, i8* }** %3
  %49 = call i64 @nyx_array_length({ i64, i8* }* %48)
  %50 = icmp slt i64 %47, %49
  br i1 %50, label %sc_and_rhs9, label %sc_and_end10
sc_and_rhs9:
  %51 = load i64, i64* %42
  %52 = icmp sgt i64 %51, 0
  store i1 %52, i1* %46
  br label %sc_and_end10
sc_and_end10:
  %53 = load i1, i1* %46
  br i1 %53, label %while_body7, label %while_end8
while_body7:
  call void @llvm.stackrestore(i8* %45)
  %54 = load { i64, i8* }*, { i64, i8* }** %3
  %55 = load i64, i64* %25
  %56 = call i64 @nyx_array_get({ i64, i8* }* %54, i64 %55)
  %57 = inttoptr i64 %56 to %Token*
  %58 = load %Token, %Token* %57
  %59 = alloca %Token
  store %Token %58, %Token* %59
  %60 = load %Token, %Token* %59
  %61 = call %nyx_string* @get_token_type(%Token %60)
  %62 = alloca %nyx_string*
  store %nyx_string* %61, %nyx_string** %62
  %63 = load %nyx_string*, %nyx_string** %62
  %64 = getelementptr [5 x i8], [5 x i8]* @.str165, i32 0, i32 0
  %65 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str165.c, i8* %64)
  %66 = call i1 @nyx_string_equals(%nyx_string* %63, %nyx_string* %65)
  br i1 %66, label %then11, label %else12
then11:
  %67 = load i64, i64* %42
  %68 = add i64 %67, 1
  store i64 %68, i64* %42
  br label %merge13
else12:
  %69 = load %nyx_string*, %nyx_string** %62
  %70 = getelementptr [8 x i8], [8 x i8]* @.str166, i32 0, i32 0
  %71 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str166.c, i8* %70)
  %72 = call i1 @nyx_string_equals(%nyx_string* %69, %nyx_string* %71)
  br i1 %72, label %then14, label %else15
then14:
  %73 = load i64, i64* %42
  %74 = sub i64 %73, 1
  store i64 %74, i64* %42
  br label %merge16
else15:
  %75 = load %nyx_string*, %nyx_string** %62
  %76 = getelementptr [12 x i8], [12 x i8]* @.str167, i32 0, i32 0
  %77 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str167.c, i8* %76)
  %78 = call i1 @nyx_string_equals(%nyx_string* %75, %nyx_string* %77)
  br i1 %78, label %then17, label %else18
then17:
  %79 = load i64, i64* %42
  %80 = icmp sge i64 %79, 2
  br i1 %80, label %then20, label %else21
then20:
  %81 = load i64, i64* %42
  %82 = sub i64 %81, 2
  store i64 %82, i64* %42
  br label %merge22
else21:
  ret i1 0
merge22:
  br label %merge19
else18:
  %83 = alloca i1
  store i1 true, i1* %83
  %84 = alloca i1
  store i1 true, i1* %84
  %85 = alloca i1
  store i1 true, i1* %85
  %86 = alloca i1
  store i1 true, i1* %86
  %87 = alloca i1
  store i1 true, i1* %87
  %88 = alloca i1
  store i1 true, i1* %88
  %89 = alloca i1
  store i1 true, i1* %89
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
  %99 = load %nyx_string*, %nyx_string** %62
  %100 = getelementptr [11 x i8], [11 x i8]* @.str168, i32 0, i32 0
  %101 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str168.c, i8* %100)
  %102 = call i1 @nyx_string_equals(%nyx_string* %99, %nyx_string* %101)
  br i1 %102, label %sc_or_end24, label %sc_or_rhs23
sc_or_rhs23:
  %103 = load %nyx_string*, %nyx_string** %62
  %104 = getelementptr [6 x i8], [6 x i8]* @.str169, i32 0, i32 0
  %105 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str169.c, i8* %104)
  %106 = call i1 @nyx_string_equals(%nyx_string* %103, %nyx_string* %105)
  store i1 %106, i1* %98
  br label %sc_or_end24
sc_or_end24:
  %107 = load i1, i1* %98
  br i1 %107, label %sc_or_end26, label %sc_or_rhs25
sc_or_rhs25:
  %108 = load %nyx_string*, %nyx_string** %62
  %109 = getelementptr [5 x i8], [5 x i8]* @.str170, i32 0, i32 0
  %110 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str170.c, i8* %109)
  %111 = call i1 @nyx_string_equals(%nyx_string* %108, %nyx_string* %110)
  store i1 %111, i1* %97
  br label %sc_or_end26
sc_or_end26:
  %112 = load i1, i1* %97
  br i1 %112, label %sc_or_end28, label %sc_or_rhs27
sc_or_rhs27:
  %113 = load %nyx_string*, %nyx_string** %62
  %114 = getelementptr [4 x i8], [4 x i8]* @.str171, i32 0, i32 0
  %115 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str171.c, i8* %114)
  %116 = call i1 @nyx_string_equals(%nyx_string* %113, %nyx_string* %115)
  store i1 %116, i1* %96
  br label %sc_or_end28
sc_or_end28:
  %117 = load i1, i1* %96
  br i1 %117, label %sc_or_end30, label %sc_or_rhs29
sc_or_rhs29:
  %118 = load %nyx_string*, %nyx_string** %62
  %119 = getelementptr [9 x i8], [9 x i8]* @.str172, i32 0, i32 0
  %120 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str172.c, i8* %119)
  %121 = call i1 @nyx_string_equals(%nyx_string* %118, %nyx_string* %120)
  store i1 %121, i1* %95
  br label %sc_or_end30
sc_or_end30:
  %122 = load i1, i1* %95
  br i1 %122, label %sc_or_end32, label %sc_or_rhs31
sc_or_rhs31:
  %123 = load %nyx_string*, %nyx_string** %62
  %124 = getelementptr [3 x i8], [3 x i8]* @.str173, i32 0, i32 0
  %125 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str173.c, i8* %124)
  %126 = call i1 @nyx_string_equals(%nyx_string* %123, %nyx_string* %125)
  store i1 %126, i1* %94
  br label %sc_or_end32
sc_or_end32:
  %127 = load i1, i1* %94
  br i1 %127, label %sc_or_end34, label %sc_or_rhs33
sc_or_rhs33:
  %128 = load %nyx_string*, %nyx_string** %62
  %129 = getelementptr [4 x i8], [4 x i8]* @.str174, i32 0, i32 0
  %130 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str174.c, i8* %129)
  %131 = call i1 @nyx_string_equals(%nyx_string* %128, %nyx_string* %130)
  store i1 %131, i1* %93
  br label %sc_or_end34
sc_or_end34:
  %132 = load i1, i1* %93
  br i1 %132, label %sc_or_end36, label %sc_or_rhs35
sc_or_rhs35:
  %133 = load %nyx_string*, %nyx_string** %62
  %134 = getelementptr [5 x i8], [5 x i8]* @.str175, i32 0, i32 0
  %135 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str175.c, i8* %134)
  %136 = call i1 @nyx_string_equals(%nyx_string* %133, %nyx_string* %135)
  store i1 %136, i1* %92
  br label %sc_or_end36
sc_or_end36:
  %137 = load i1, i1* %92
  br i1 %137, label %sc_or_end38, label %sc_or_rhs37
sc_or_rhs37:
  %138 = load %nyx_string*, %nyx_string** %62
  %139 = getelementptr [5 x i8], [5 x i8]* @.str176, i32 0, i32 0
  %140 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str176.c, i8* %139)
  %141 = call i1 @nyx_string_equals(%nyx_string* %138, %nyx_string* %140)
  store i1 %141, i1* %91
  br label %sc_or_end38
sc_or_end38:
  %142 = load i1, i1* %91
  br i1 %142, label %sc_or_end40, label %sc_or_rhs39
sc_or_rhs39:
  %143 = load %nyx_string*, %nyx_string** %62
  %144 = getelementptr [11 x i8], [11 x i8]* @.str177, i32 0, i32 0
  %145 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str177.c, i8* %144)
  %146 = call i1 @nyx_string_equals(%nyx_string* %143, %nyx_string* %145)
  store i1 %146, i1* %90
  br label %sc_or_end40
sc_or_end40:
  %147 = load i1, i1* %90
  br i1 %147, label %sc_or_end42, label %sc_or_rhs41
sc_or_rhs41:
  %148 = load %nyx_string*, %nyx_string** %62
  %149 = getelementptr [12 x i8], [12 x i8]* @.str178, i32 0, i32 0
  %150 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str178.c, i8* %149)
  %151 = call i1 @nyx_string_equals(%nyx_string* %148, %nyx_string* %150)
  store i1 %151, i1* %89
  br label %sc_or_end42
sc_or_end42:
  %152 = load i1, i1* %89
  br i1 %152, label %sc_or_end44, label %sc_or_rhs43
sc_or_rhs43:
  %153 = load %nyx_string*, %nyx_string** %62
  %154 = getelementptr [6 x i8], [6 x i8]* @.str179, i32 0, i32 0
  %155 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str179.c, i8* %154)
  %156 = call i1 @nyx_string_equals(%nyx_string* %153, %nyx_string* %155)
  store i1 %156, i1* %88
  br label %sc_or_end44
sc_or_end44:
  %157 = load i1, i1* %88
  br i1 %157, label %sc_or_end46, label %sc_or_rhs45
sc_or_rhs45:
  %158 = load %nyx_string*, %nyx_string** %62
  %159 = getelementptr [13 x i8], [13 x i8]* @.str180, i32 0, i32 0
  %160 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str180.c, i8* %159)
  %161 = call i1 @nyx_string_equals(%nyx_string* %158, %nyx_string* %160)
  store i1 %161, i1* %87
  br label %sc_or_end46
sc_or_end46:
  %162 = load i1, i1* %87
  br i1 %162, label %sc_or_end48, label %sc_or_rhs47
sc_or_rhs47:
  %163 = load %nyx_string*, %nyx_string** %62
  %164 = getelementptr [14 x i8], [14 x i8]* @.str181, i32 0, i32 0
  %165 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str181.c, i8* %164)
  %166 = call i1 @nyx_string_equals(%nyx_string* %163, %nyx_string* %165)
  store i1 %166, i1* %86
  br label %sc_or_end48
sc_or_end48:
  %167 = load i1, i1* %86
  br i1 %167, label %sc_or_end50, label %sc_or_rhs49
sc_or_rhs49:
  %168 = load %nyx_string*, %nyx_string** %62
  %169 = getelementptr [6 x i8], [6 x i8]* @.str182, i32 0, i32 0
  %170 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str182.c, i8* %169)
  %171 = call i1 @nyx_string_equals(%nyx_string* %168, %nyx_string* %170)
  store i1 %171, i1* %85
  br label %sc_or_end50
sc_or_end50:
  %172 = load i1, i1* %85
  br i1 %172, label %sc_or_end52, label %sc_or_rhs51
sc_or_rhs51:
  %173 = load %nyx_string*, %nyx_string** %62
  %174 = getelementptr [7 x i8], [7 x i8]* @.str183, i32 0, i32 0
  %175 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str183.c, i8* %174)
  %176 = call i1 @nyx_string_equals(%nyx_string* %173, %nyx_string* %175)
  store i1 %176, i1* %84
  br label %sc_or_end52
sc_or_end52:
  %177 = load i1, i1* %84
  br i1 %177, label %sc_or_end54, label %sc_or_rhs53
sc_or_rhs53:
  %178 = load %nyx_string*, %nyx_string** %62
  %179 = getelementptr [4 x i8], [4 x i8]* @.str184, i32 0, i32 0
  %180 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str184.c, i8* %179)
  %181 = call i1 @nyx_string_equals(%nyx_string* %178, %nyx_string* %180)
  store i1 %181, i1* %83
  br label %sc_or_end54
sc_or_end54:
  %182 = load i1, i1* %83
  %183 = xor i1 %182, true
  br i1 %183, label %then55, label %else56
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
  %184 = load i64, i64* %25
  %185 = add i64 %184, 1
  store i64 %185, i64* %25
  br label %while_cond6
while_end8:
  %186 = load i64, i64* %42
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %then58, label %else59
then58:
  ret i1 0
else59:
  br label %merge60
merge60:
  %188 = load i64, i64* %25
  %189 = load { i64, i8* }*, { i64, i8* }** %3
  %190 = call i64 @nyx_array_length({ i64, i8* }* %189)
  %191 = icmp sge i64 %188, %190
  br i1 %191, label %then61, label %else62
then61:
  ret i1 0
else62:
  br label %merge63
merge63:
  %192 = load { i64, i8* }*, { i64, i8* }** %3
  %193 = load i64, i64* %25
  %194 = call i64 @nyx_array_get({ i64, i8* }* %192, i64 %193)
  %195 = inttoptr i64 %194 to %Token*
  %196 = load %Token, %Token* %195
  %197 = alloca %Token
  store %Token %196, %Token* %197
  %198 = load %Token, %Token* %197
  %199 = call %nyx_string* @get_token_type(%Token %198)
  %200 = alloca %nyx_string*
  store %nyx_string* %199, %nyx_string** %200
  %201 = load %nyx_string*, %nyx_string** %200
  %202 = getelementptr [11 x i8], [11 x i8]* @.str185, i32 0, i32 0
  %203 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str185.c, i8* %202)
  %204 = call i1 @nyx_string_equals(%nyx_string* %201, %nyx_string* %203)
  br i1 %204, label %then64, label %else65
then64:
  ret i1 1
else65:
  br label %merge66
merge66:
  %205 = load %nyx_string*, %nyx_string** %200
  %206 = getelementptr [11 x i8], [11 x i8]* @.str186, i32 0, i32 0
  %207 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str186.c, i8* %206)
  %208 = call i1 @nyx_string_equals(%nyx_string* %205, %nyx_string* %207)
  br i1 %208, label %then67, label %else68
then67:
  ret i1 1
else68:
  br label %merge69
merge69:
  %209 = load %nyx_string*, %nyx_string** %200
  %210 = getelementptr [4 x i8], [4 x i8]* @.str187, i32 0, i32 0
  %211 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str187.c, i8* %210)
  %212 = call i1 @nyx_string_equals(%nyx_string* %209, %nyx_string* %211)
  br i1 %212, label %then70, label %else71
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
  %23 = call { i64, i8* }* @parse__parse_primary(%SharedEnv_parse* %env.param)
  %24 = alloca { i64, i8* }*
  store { i64, i8* }* %23, { i64, i8* }** %24
  %25 = alloca i1
  store i1 0, i1* %25
  %26 = alloca i64
  store i64 0, i64* %26
  %27 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %28 = load i1, i1* %25
  %29 = xor i1 %28, true
  br i1 %29, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %27)
  %30 = load i64, i64* %26
  %31 = add i64 %30, 1
  store i64 %31, i64* %26
  %32 = load i64, i64* %26
  %33 = icmp sgt i64 %32, 50
  br i1 %33, label %then3, label %else4
then3:
  store i1 1, i1* %25
  br label %merge5
else4:
  br label %merge5
merge5:
  %34 = alloca i1
  store i1 false, i1* %34
  %35 = load { i64, i8* }*, { i64, i8* }** %24
  %36 = call i64 @nyx_array_get({ i64, i8* }* %35, i64 0)
  %37 = getelementptr [11 x i8], [11 x i8]* @.str188, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str188.c, i8* %37)
  %39 = inttoptr i64 %36 to %nyx_string*
  %40 = call i1 @nyx_string_equals(%nyx_string* %39, %nyx_string* %38)
  br i1 %40, label %sc_and_rhs6, label %sc_and_end7
sc_and_rhs6:
  %41 = getelementptr [5 x i8], [5 x i8]* @.str189, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str189.c, i8* %41)
  %43 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %42)
  store i1 %43, i1* %34
  br label %sc_and_end7
sc_and_end7:
  %44 = load i1, i1* %34
  br i1 %44, label %then8, label %else9
then8:
  %45 = call i1 @parse__is_generic_call_lookahead(%SharedEnv_parse* %env.param)
  br i1 %45, label %then11, label %else12
then11:
  %46 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %47 = call { i64, i8* }* @nyx_array_new_ptr()
  %48 = alloca { i64, i8* }*
  store { i64, i8* }* %47, { i64, i8* }** %48
  %49 = load { i64, i8* }*, { i64, i8* }** %48
  %50 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %51 = ptrtoint %nyx_string* %50 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %49, i64 %51, i64 2)
  %52 = alloca i1
  store i1 0, i1* %52
  %53 = call i8* @llvm.stacksave()
  br label %while_cond14
while_cond14:
  %54 = load i1, i1* %52
  %55 = xor i1 %54, true
  br i1 %55, label %while_body15, label %while_end16
while_body15:
  call void @llvm.stackrestore(i8* %53)
  %56 = getelementptr [6 x i8], [6 x i8]* @.str190, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str190.c, i8* %56)
  %58 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %57)
  br i1 %58, label %then17, label %else18
then17:
  %59 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %60 = load { i64, i8* }*, { i64, i8* }** %48
  %61 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %62 = ptrtoint %nyx_string* %61 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %60, i64 %62, i64 2)
  br label %merge19
else18:
  store i1 1, i1* %52
  br label %merge19
merge19:
  br label %while_cond14
while_end16:
  %63 = load i64, i64* %5
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %then20, label %else21
then20:
  %65 = load i64, i64* %5
  %66 = sub i64 %65, 1
  store i64 %66, i64* %5
  br label %merge22
else21:
  %67 = getelementptr [8 x i8], [8 x i8]* @.str191, i32 0, i32 0
  %68 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str191.c, i8* %67)
  %69 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %68)
  br i1 %69, label %then23, label %else24
then23:
  %70 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge25
else24:
  %71 = getelementptr [12 x i8], [12 x i8]* @.str192, i32 0, i32 0
  %72 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str192.c, i8* %71)
  %73 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %72)
  br i1 %73, label %then26, label %else27
then26:
  %74 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %75 = load i64, i64* %5
  %76 = add i64 %75, 1
  store i64 %76, i64* %5
  br label %merge28
else27:
  %77 = getelementptr [8 x i8], [8 x i8]* @.str193, i32 0, i32 0
  %78 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str193.c, i8* %77)
  %79 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %78)
  br label %merge28
merge28:
  br label %merge25
merge25:
  br label %merge22
merge22:
  %80 = getelementptr [13 x i8], [13 x i8]* @.str194, i32 0, i32 0
  %81 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str194.c, i8* %80)
  %82 = call { i64, i8* }* @nyx_array_new_ptr()
  %83 = load { i64, i8* }*, { i64, i8* }** %24
  %84 = bitcast { i64, i8* }* %83 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %82, i8* %84)
  %85 = load { i64, i8* }*, { i64, i8* }** %48
  %86 = bitcast { i64, i8* }* %85 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %82, i8* %86)
  %87 = call { i64, i8* }* @make_astnode(%nyx_string* %81, { i64, i8* }* %82)
  store { i64, i8* }* %87, { i64, i8* }** %24
  %88 = getelementptr [11 x i8], [11 x i8]* @.str195, i32 0, i32 0
  %89 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str195.c, i8* %88)
  %90 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %89)
  br i1 %90, label %then29, label %else30
then29:
  %91 = alloca i1
  store i1 false, i1* %91
  %92 = getelementptr [11 x i8], [11 x i8]* @.str196, i32 0, i32 0
  %93 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str196.c, i8* %92)
  %94 = call i1 @parse__check_at(%SharedEnv_parse* %env.param, i64 1, %nyx_string* %93)
  br i1 %94, label %sc_and_rhs32, label %sc_and_end33
sc_and_rhs32:
  %95 = getelementptr [6 x i8], [6 x i8]* @.str197, i32 0, i32 0
  %96 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str197.c, i8* %95)
  %97 = call i1 @parse__check_at(%SharedEnv_parse* %env.param, i64 2, %nyx_string* %96)
  store i1 %97, i1* %91
  br label %sc_and_end33
sc_and_end33:
  %98 = load i1, i1* %91
  br i1 %98, label %then34, label %else35
then34:
  %99 = load { i64, i8* }*, { i64, i8* }** %24
  %100 = call i64 @nyx_array_get({ i64, i8* }* %99, i64 1)
  %101 = inttoptr i64 %100 to { i64, i8* }*
  %102 = alloca { i64, i8* }*
  store { i64, i8* }* %101, { i64, i8* }** %102
  %103 = load { i64, i8* }*, { i64, i8* }** %102
  %104 = call i64 @nyx_array_get({ i64, i8* }* %103, i64 0)
  %105 = inttoptr i64 %104 to { i64, i8* }*
  %106 = alloca { i64, i8* }*
  store { i64, i8* }* %105, { i64, i8* }** %106
  %107 = load { i64, i8* }*, { i64, i8* }** %106
  %108 = call i64 @nyx_array_get({ i64, i8* }* %107, i64 1)
  %109 = inttoptr i64 %108 to { i64, i8* }*
  %110 = alloca { i64, i8* }*
  store { i64, i8* }* %109, { i64, i8* }** %110
  %111 = load { i64, i8* }*, { i64, i8* }** %110
  %112 = call i64 @nyx_array_get_checked({ i64, i8* }* %111, i64 0, i64 2)
  %113 = inttoptr i64 %112 to %nyx_string*
  %114 = alloca %nyx_string*
  store %nyx_string* %113, %nyx_string** %114
  %115 = load { i64, i8* }*, { i64, i8* }** %102
  %116 = call i64 @nyx_array_get({ i64, i8* }* %115, i64 1)
  %117 = inttoptr i64 %116 to { i64, i8* }*
  %118 = alloca { i64, i8* }*
  store { i64, i8* }* %117, { i64, i8* }** %118
  %119 = getelementptr [11 x i8], [11 x i8]* @.str198, i32 0, i32 0
  %120 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str198.c, i8* %119)
  %121 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %120)
  %122 = call { i64, i8* }* @nyx_array_new_ptr()
  %123 = alloca { i64, i8* }*
  store { i64, i8* }* %122, { i64, i8* }** %123
  %124 = alloca i1
  store i1 0, i1* %124
  %125 = call i8* @llvm.stacksave()
  br label %while_cond37
while_cond37:
  %126 = load i1, i1* %124
  %127 = xor i1 %126, true
  br i1 %127, label %while_body38, label %while_end39
while_body38:
  call void @llvm.stackrestore(i8* %125)
  %128 = getelementptr [12 x i8], [12 x i8]* @.str199, i32 0, i32 0
  %129 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str199.c, i8* %128)
  %130 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %129)
  br i1 %130, label %then40, label %else41
then40:
  %131 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %124
  br label %merge42
else41:
  %132 = load { i64, i8* }*, { i64, i8* }** %123
  %133 = call i64 @nyx_array_length({ i64, i8* }* %132)
  %134 = icmp sgt i64 %133, 0
  br i1 %134, label %then43, label %else44
then43:
  %135 = getelementptr [6 x i8], [6 x i8]* @.str200, i32 0, i32 0
  %136 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str200.c, i8* %135)
  %137 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %136)
  br i1 %137, label %then46, label %else47
then46:
  %138 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge48
else47:
  br label %merge48
merge48:
  br label %merge45
else44:
  br label %merge45
merge45:
  %139 = getelementptr [11 x i8], [11 x i8]* @.str201, i32 0, i32 0
  %140 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str201.c, i8* %139)
  %141 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %140)
  %142 = alloca %Token
  store %Token %141, %Token* %142
  %143 = getelementptr [6 x i8], [6 x i8]* @.str202, i32 0, i32 0
  %144 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str202.c, i8* %143)
  %145 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %144)
  %146 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %147 = alloca { i64, i8* }*
  store { i64, i8* }* %146, { i64, i8* }** %147
  %148 = load { i64, i8* }*, { i64, i8* }** %123
  %149 = call { i64, i8* }* @nyx_array_new_ptr()
  %150 = load %Token, %Token* %142
  %151 = call %nyx_string* @get_token_value(%Token %150)
  %152 = ptrtoint %nyx_string* %151 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %149, i64 %152, i64 2)
  %153 = load { i64, i8* }*, { i64, i8* }** %147
  %154 = bitcast { i64, i8* }* %153 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %149, i8* %154)
  %155 = ptrtoint { i64, i8* }* %149 to i64
  call void @nyx_array_push({ i64, i8* }* %148, i64 %155)
  br label %merge42
merge42:
  br label %while_cond37
while_end39:
  %156 = getelementptr [12 x i8], [12 x i8]* @.str203, i32 0, i32 0
  %157 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str203.c, i8* %156)
  %158 = call { i64, i8* }* @nyx_array_new_ptr()
  %159 = load %nyx_string*, %nyx_string** %114
  %160 = ptrtoint %nyx_string* %159 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %158, i64 %160, i64 2)
  %161 = load { i64, i8* }*, { i64, i8* }** %123
  %162 = bitcast { i64, i8* }* %161 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %158, i8* %162)
  %163 = load { i64, i8* }*, { i64, i8* }** %118
  %164 = bitcast { i64, i8* }* %163 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %158, i8* %164)
  %165 = call { i64, i8* }* @make_astnode(%nyx_string* %157, { i64, i8* }* %158)
  store { i64, i8* }* %165, { i64, i8* }** %24
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
  %166 = alloca i1
  store i1 false, i1* %166
  %167 = getelementptr [11 x i8], [11 x i8]* @.str204, i32 0, i32 0
  %168 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str204.c, i8* %167)
  %169 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %168)
  br i1 %169, label %sc_and_rhs49, label %sc_and_end50
sc_and_rhs49:
  %170 = call i1 @parse__is_on_new_line(%SharedEnv_parse* %env.param)
  %171 = xor i1 %170, true
  store i1 %171, i1* %166
  br label %sc_and_end50
sc_and_end50:
  %172 = load i1, i1* %166
  br i1 %172, label %then51, label %else52
then51:
  %173 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %174 = call { i64, i8* }* @nyx_array_new_ptr()
  %175 = alloca { i64, i8* }*
  store { i64, i8* }* %174, { i64, i8* }** %175
  %176 = load i64, i64* %6
  %177 = alloca i64
  store i64 %176, i64* %177
  store i64 0, i64* %6
  %178 = alloca i1
  store i1 0, i1* %178
  %179 = call i8* @llvm.stacksave()
  br label %while_cond54
while_cond54:
  %180 = load i1, i1* %178
  %181 = xor i1 %180, true
  br i1 %181, label %while_body55, label %while_end56
while_body55:
  call void @llvm.stackrestore(i8* %179)
  %182 = getelementptr [12 x i8], [12 x i8]* @.str205, i32 0, i32 0
  %183 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str205.c, i8* %182)
  %184 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %183)
  br i1 %184, label %then57, label %else58
then57:
  %185 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %178
  br label %merge59
else58:
  %186 = load { i64, i8* }*, { i64, i8* }** %175
  %187 = call i64 @nyx_array_length({ i64, i8* }* %186)
  %188 = icmp sgt i64 %187, 0
  br i1 %188, label %then60, label %else61
then60:
  %189 = getelementptr [6 x i8], [6 x i8]* @.str206, i32 0, i32 0
  %190 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str206.c, i8* %189)
  %191 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %190)
  br label %merge62
else61:
  br label %merge62
merge62:
  %192 = load { i64, i8* }*, { i64, i8* }** %175
  %193 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %194 = ptrtoint { i64, i8* }* %193 to i64
  call void @nyx_array_push({ i64, i8* }* %192, i64 %194)
  br label %merge59
merge59:
  br label %while_cond54
while_end56:
  %195 = load i64, i64* %177
  store i64 %195, i64* %6
  %196 = getelementptr [5 x i8], [5 x i8]* @.str207, i32 0, i32 0
  %197 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str207.c, i8* %196)
  %198 = call { i64, i8* }* @nyx_array_new_ptr()
  %199 = load { i64, i8* }*, { i64, i8* }** %24
  %200 = bitcast { i64, i8* }* %199 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %198, i8* %200)
  %201 = load { i64, i8* }*, { i64, i8* }** %175
  %202 = bitcast { i64, i8* }* %201 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %198, i8* %202)
  %203 = call { i64, i8* }* @make_astnode(%nyx_string* %197, { i64, i8* }* %198)
  store { i64, i8* }* %203, { i64, i8* }** %24
  br label %merge53
else52:
  %204 = getelementptr [13 x i8], [13 x i8]* @.str208, i32 0, i32 0
  %205 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str208.c, i8* %204)
  %206 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %205)
  br i1 %206, label %then63, label %else64
then63:
  %207 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %208 = load i64, i64* %6
  %209 = alloca i64
  store i64 %208, i64* %209
  store i64 0, i64* %6
  %210 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %211 = alloca { i64, i8* }*
  store { i64, i8* }* %210, { i64, i8* }** %211
  %212 = load i64, i64* %209
  store i64 %212, i64* %6
  %213 = getelementptr [14 x i8], [14 x i8]* @.str209, i32 0, i32 0
  %214 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str209.c, i8* %213)
  %215 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %214)
  %216 = getelementptr [6 x i8], [6 x i8]* @.str210, i32 0, i32 0
  %217 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str210.c, i8* %216)
  %218 = call { i64, i8* }* @nyx_array_new_ptr()
  %219 = load { i64, i8* }*, { i64, i8* }** %24
  %220 = bitcast { i64, i8* }* %219 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %218, i8* %220)
  %221 = load { i64, i8* }*, { i64, i8* }** %211
  %222 = bitcast { i64, i8* }* %221 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %218, i8* %222)
  %223 = call { i64, i8* }* @make_astnode(%nyx_string* %217, { i64, i8* }* %218)
  store { i64, i8* }* %223, { i64, i8* }** %24
  br label %merge65
else64:
  %224 = getelementptr [4 x i8], [4 x i8]* @.str211, i32 0, i32 0
  %225 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str211.c, i8* %224)
  %226 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %225)
  br i1 %226, label %then66, label %else67
then66:
  %227 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %228 = getelementptr [7 x i8], [7 x i8]* @.str212, i32 0, i32 0
  %229 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str212.c, i8* %228)
  %230 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %229)
  br i1 %230, label %then69, label %else70
then69:
  %231 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %232 = alloca %Token
  store %Token %231, %Token* %232
  %233 = load %Token, %Token* %232
  %234 = call %nyx_string* @get_token_value(%Token %233)
  %235 = alloca %nyx_string*
  store %nyx_string* %234, %nyx_string** %235
  %236 = getelementptr [12 x i8], [12 x i8]* @.str213, i32 0, i32 0
  %237 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str213.c, i8* %236)
  %238 = call { i64, i8* }* @nyx_array_new_ptr()
  %239 = load { i64, i8* }*, { i64, i8* }** %24
  %240 = bitcast { i64, i8* }* %239 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %238, i8* %240)
  %241 = load %nyx_string*, %nyx_string** %235
  %242 = ptrtoint %nyx_string* %241 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %238, i64 %242, i64 2)
  %243 = call { i64, i8* }* @make_astnode(%nyx_string* %237, { i64, i8* }* %238)
  store { i64, i8* }* %243, { i64, i8* }** %24
  br label %merge71
else70:
  %244 = getelementptr [11 x i8], [11 x i8]* @.str214, i32 0, i32 0
  %245 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str214.c, i8* %244)
  %246 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %245)
  %247 = alloca %Token
  store %Token %246, %Token* %247
  %248 = load %Token, %Token* %247
  %249 = call %nyx_string* @get_token_value(%Token %248)
  %250 = alloca %nyx_string*
  store %nyx_string* %249, %nyx_string** %250
  %251 = call { i64, i8* }* @nyx_array_new_ptr()
  %252 = alloca { i64, i8* }*
  store { i64, i8* }* %251, { i64, i8* }** %252
  %253 = alloca i1
  store i1 0, i1* %253
  %254 = getelementptr [5 x i8], [5 x i8]* @.str215, i32 0, i32 0
  %255 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str215.c, i8* %254)
  %256 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %255)
  br i1 %256, label %then72, label %else73
then72:
  %257 = call i1 @parse__is_generic_call_lookahead(%SharedEnv_parse* %env.param)
  br i1 %257, label %then75, label %else76
then75:
  %258 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %259 = load { i64, i8* }*, { i64, i8* }** %252
  %260 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %261 = ptrtoint %nyx_string* %260 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %259, i64 %261, i64 2)
  %262 = alloca i1
  store i1 0, i1* %262
  %263 = call i8* @llvm.stacksave()
  br label %while_cond78
while_cond78:
  %264 = load i1, i1* %262
  %265 = xor i1 %264, true
  br i1 %265, label %while_body79, label %while_end80
while_body79:
  call void @llvm.stackrestore(i8* %263)
  %266 = getelementptr [6 x i8], [6 x i8]* @.str216, i32 0, i32 0
  %267 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str216.c, i8* %266)
  %268 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %267)
  br i1 %268, label %then81, label %else82
then81:
  %269 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %270 = load { i64, i8* }*, { i64, i8* }** %252
  %271 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %272 = ptrtoint %nyx_string* %271 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %270, i64 %272, i64 2)
  br label %merge83
else82:
  store i1 1, i1* %262
  br label %merge83
merge83:
  br label %while_cond78
while_end80:
  %273 = load i64, i64* %5
  %274 = icmp sgt i64 %273, 0
  br i1 %274, label %then84, label %else85
then84:
  %275 = load i64, i64* %5
  %276 = sub i64 %275, 1
  store i64 %276, i64* %5
  br label %merge86
else85:
  %277 = getelementptr [8 x i8], [8 x i8]* @.str217, i32 0, i32 0
  %278 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str217.c, i8* %277)
  %279 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %278)
  br i1 %279, label %then87, label %else88
then87:
  %280 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge89
else88:
  %281 = getelementptr [12 x i8], [12 x i8]* @.str218, i32 0, i32 0
  %282 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str218.c, i8* %281)
  %283 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %282)
  br i1 %283, label %then90, label %else91
then90:
  %284 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %285 = load i64, i64* %5
  %286 = add i64 %285, 1
  store i64 %286, i64* %5
  br label %merge92
else91:
  %287 = getelementptr [8 x i8], [8 x i8]* @.str219, i32 0, i32 0
  %288 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str219.c, i8* %287)
  %289 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %288)
  br label %merge92
merge92:
  br label %merge89
merge89:
  br label %merge86
merge86:
  store i1 1, i1* %253
  br label %merge77
else76:
  br label %merge77
merge77:
  br label %merge74
else73:
  br label %merge74
merge74:
  %290 = getelementptr [11 x i8], [11 x i8]* @.str220, i32 0, i32 0
  %291 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str220.c, i8* %290)
  %292 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %291)
  br i1 %292, label %then93, label %else94
then93:
  %293 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %294 = call { i64, i8* }* @nyx_array_new_ptr()
  %295 = alloca { i64, i8* }*
  store { i64, i8* }* %294, { i64, i8* }** %295
  %296 = alloca i1
  store i1 0, i1* %296
  %297 = call i8* @llvm.stacksave()
  br label %while_cond96
while_cond96:
  %298 = load i1, i1* %296
  %299 = xor i1 %298, true
  br i1 %299, label %while_body97, label %while_end98
while_body97:
  call void @llvm.stackrestore(i8* %297)
  %300 = getelementptr [12 x i8], [12 x i8]* @.str221, i32 0, i32 0
  %301 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str221.c, i8* %300)
  %302 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %301)
  br i1 %302, label %then99, label %else100
then99:
  %303 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %296
  br label %merge101
else100:
  %304 = load { i64, i8* }*, { i64, i8* }** %295
  %305 = call i64 @nyx_array_length({ i64, i8* }* %304)
  %306 = icmp sgt i64 %305, 0
  br i1 %306, label %then102, label %else103
then102:
  %307 = getelementptr [6 x i8], [6 x i8]* @.str222, i32 0, i32 0
  %308 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str222.c, i8* %307)
  %309 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %308)
  br label %merge104
else103:
  br label %merge104
merge104:
  %310 = load { i64, i8* }*, { i64, i8* }** %295
  %311 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %312 = ptrtoint { i64, i8* }* %311 to i64
  call void @nyx_array_push({ i64, i8* }* %310, i64 %312)
  br label %merge101
merge101:
  br label %while_cond96
while_end98:
  %313 = load i1, i1* %253
  br i1 %313, label %then105, label %else106
then105:
  %314 = getelementptr [12 x i8], [12 x i8]* @.str223, i32 0, i32 0
  %315 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str223.c, i8* %314)
  %316 = call { i64, i8* }* @nyx_array_new_ptr()
  %317 = load { i64, i8* }*, { i64, i8* }** %24
  %318 = bitcast { i64, i8* }* %317 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %316, i8* %318)
  %319 = load %nyx_string*, %nyx_string** %250
  %320 = ptrtoint %nyx_string* %319 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %316, i64 %320, i64 2)
  %321 = load { i64, i8* }*, { i64, i8* }** %295
  %322 = bitcast { i64, i8* }* %321 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %316, i8* %322)
  %323 = load { i64, i8* }*, { i64, i8* }** %252
  %324 = bitcast { i64, i8* }* %323 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %316, i8* %324)
  %325 = call { i64, i8* }* @make_astnode(%nyx_string* %315, { i64, i8* }* %316)
  store { i64, i8* }* %325, { i64, i8* }** %24
  br label %merge107
else106:
  %326 = getelementptr [12 x i8], [12 x i8]* @.str224, i32 0, i32 0
  %327 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str224.c, i8* %326)
  %328 = call { i64, i8* }* @nyx_array_new_ptr()
  %329 = load { i64, i8* }*, { i64, i8* }** %24
  %330 = bitcast { i64, i8* }* %329 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %328, i8* %330)
  %331 = load %nyx_string*, %nyx_string** %250
  %332 = ptrtoint %nyx_string* %331 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %328, i64 %332, i64 2)
  %333 = load { i64, i8* }*, { i64, i8* }** %295
  %334 = bitcast { i64, i8* }* %333 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %328, i8* %334)
  %335 = call { i64, i8* }* @make_astnode(%nyx_string* %327, { i64, i8* }* %328)
  store { i64, i8* }* %335, { i64, i8* }** %24
  br label %merge107
merge107:
  br label %merge95
else94:
  %336 = load i1, i1* %253
  br i1 %336, label %then108, label %else109
then108:
  %337 = getelementptr [11 x i8], [11 x i8]* @.str225, i32 0, i32 0
  %338 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str225.c, i8* %337)
  %339 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %338)
  br label %merge110
else109:
  br label %merge110
merge110:
  %340 = getelementptr [13 x i8], [13 x i8]* @.str226, i32 0, i32 0
  %341 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str226.c, i8* %340)
  %342 = call { i64, i8* }* @nyx_array_new_ptr()
  %343 = load { i64, i8* }*, { i64, i8* }** %24
  %344 = bitcast { i64, i8* }* %343 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %342, i8* %344)
  %345 = load %nyx_string*, %nyx_string** %250
  %346 = ptrtoint %nyx_string* %345 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %342, i64 %346, i64 2)
  %347 = call { i64, i8* }* @make_astnode(%nyx_string* %341, { i64, i8* }* %342)
  store { i64, i8* }* %347, { i64, i8* }** %24
  br label %merge95
merge95:
  br label %merge71
merge71:
  br label %merge68
else67:
  %348 = getelementptr [9 x i8], [9 x i8]* @.str227, i32 0, i32 0
  %349 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str227.c, i8* %348)
  %350 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %349)
  br i1 %350, label %then111, label %else112
then111:
  %351 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %352 = getelementptr [7 x i8], [7 x i8]* @.str228, i32 0, i32 0
  %353 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str228.c, i8* %352)
  %354 = call { i64, i8* }* @nyx_array_new_ptr()
  %355 = load { i64, i8* }*, { i64, i8* }** %24
  %356 = bitcast { i64, i8* }* %355 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %354, i8* %356)
  %357 = call { i64, i8* }* @make_astnode(%nyx_string* %353, { i64, i8* }* %354)
  store { i64, i8* }* %357, { i64, i8* }** %24
  br label %merge113
else112:
  store i1 1, i1* %25
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
  %358 = load { i64, i8* }*, { i64, i8* }** %24
  ret { i64, i8* }* %358
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
  %23 = getelementptr [7 x i8], [7 x i8]* @.str229, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str229.c, i8* %23)
  %25 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %24)
  br i1 %25, label %then0, label %else1
then0:
  %26 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %27 = alloca %Token
  store %Token %26, %Token* %27
  %28 = getelementptr [7 x i8], [7 x i8]* @.str230, i32 0, i32 0
  %29 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str230.c, i8* %28)
  %30 = call { i64, i8* }* @nyx_array_new_ptr()
  %31 = load %Token, %Token* %27
  %32 = call %nyx_string* @get_token_value(%Token %31)
  %33 = ptrtoint %nyx_string* %32 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %30, i64 %33, i64 2)
  %34 = call { i64, i8* }* @make_astnode(%nyx_string* %29, { i64, i8* }* %30)
  ret { i64, i8* }* %34
else1:
  br label %merge2
merge2:
  %35 = getelementptr [7 x i8], [7 x i8]* @.str231, i32 0, i32 0
  %36 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str231.c, i8* %35)
  %37 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %36)
  br i1 %37, label %then3, label %else4
then3:
  %38 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %39 = alloca %Token
  store %Token %38, %Token* %39
  %40 = getelementptr [7 x i8], [7 x i8]* @.str232, i32 0, i32 0
  %41 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str232.c, i8* %40)
  %42 = call { i64, i8* }* @nyx_array_new_ptr()
  %43 = load %Token, %Token* %39
  %44 = call %nyx_string* @get_token_value(%Token %43)
  %45 = ptrtoint %nyx_string* %44 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %42, i64 %45, i64 2)
  %46 = call { i64, i8* }* @make_astnode(%nyx_string* %41, { i64, i8* }* %42)
  ret { i64, i8* }* %46
else4:
  br label %merge5
merge5:
  %47 = getelementptr [5 x i8], [5 x i8]* @.str233, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str233.c, i8* %47)
  %49 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %48)
  br i1 %49, label %then6, label %else7
then6:
  %50 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %51 = alloca %Token
  store %Token %50, %Token* %51
  %52 = getelementptr [5 x i8], [5 x i8]* @.str234, i32 0, i32 0
  %53 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str234.c, i8* %52)
  %54 = call { i64, i8* }* @nyx_array_new_ptr()
  %55 = load %Token, %Token* %51
  %56 = call %nyx_string* @get_token_value(%Token %55)
  %57 = ptrtoint %nyx_string* %56 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %54, i64 %57, i64 2)
  %58 = call { i64, i8* }* @make_astnode(%nyx_string* %53, { i64, i8* }* %54)
  ret { i64, i8* }* %58
else7:
  br label %merge8
merge8:
  %59 = getelementptr [5 x i8], [5 x i8]* @.str235, i32 0, i32 0
  %60 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str235.c, i8* %59)
  %61 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %60)
  br i1 %61, label %then9, label %else10
then9:
  %62 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %63 = getelementptr [5 x i8], [5 x i8]* @.str236, i32 0, i32 0
  %64 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str236.c, i8* %63)
  %65 = call { i64, i8* }* @nyx_array_new_ptr()
  %66 = getelementptr [5 x i8], [5 x i8]* @.str237, i32 0, i32 0
  %67 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str237.c, i8* %66)
  %68 = ptrtoint %nyx_string* %67 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %65, i64 %68, i64 2)
  %69 = call { i64, i8* }* @make_astnode(%nyx_string* %64, { i64, i8* }* %65)
  ret { i64, i8* }* %69
else10:
  br label %merge11
merge11:
  %70 = getelementptr [6 x i8], [6 x i8]* @.str238, i32 0, i32 0
  %71 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str238.c, i8* %70)
  %72 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %71)
  br i1 %72, label %then12, label %else13
then12:
  %73 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %74 = getelementptr [5 x i8], [5 x i8]* @.str239, i32 0, i32 0
  %75 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str239.c, i8* %74)
  %76 = call { i64, i8* }* @nyx_array_new_ptr()
  %77 = getelementptr [6 x i8], [6 x i8]* @.str240, i32 0, i32 0
  %78 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str240.c, i8* %77)
  %79 = ptrtoint %nyx_string* %78 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %76, i64 %79, i64 2)
  %80 = call { i64, i8* }* @make_astnode(%nyx_string* %75, { i64, i8* }* %76)
  ret { i64, i8* }* %80
else13:
  br label %merge14
merge14:
  %81 = getelementptr [7 x i8], [7 x i8]* @.str241, i32 0, i32 0
  %82 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str241.c, i8* %81)
  %83 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %82)
  br i1 %83, label %then15, label %else16
then15:
  %84 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %85 = getelementptr [11 x i8], [11 x i8]* @.str242, i32 0, i32 0
  %86 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str242.c, i8* %85)
  %87 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %86)
  %88 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %89 = alloca %nyx_string*
  store %nyx_string* %88, %nyx_string** %89
  %90 = getelementptr [12 x i8], [12 x i8]* @.str243, i32 0, i32 0
  %91 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str243.c, i8* %90)
  %92 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %91)
  %93 = getelementptr [7 x i8], [7 x i8]* @.str244, i32 0, i32 0
  %94 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str244.c, i8* %93)
  %95 = call { i64, i8* }* @nyx_array_new_ptr()
  %96 = load %nyx_string*, %nyx_string** %89
  %97 = ptrtoint %nyx_string* %96 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %95, i64 %97, i64 2)
  %98 = call { i64, i8* }* @make_astnode(%nyx_string* %94, { i64, i8* }* %95)
  ret { i64, i8* }* %98
else16:
  br label %merge17
merge17:
  %99 = getelementptr [8 x i8], [8 x i8]* @.str245, i32 0, i32 0
  %100 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str245.c, i8* %99)
  %101 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %100)
  br i1 %101, label %then18, label %else19
then18:
  %102 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %103 = getelementptr [11 x i8], [11 x i8]* @.str246, i32 0, i32 0
  %104 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str246.c, i8* %103)
  %105 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %104)
  %106 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %107 = alloca %nyx_string*
  store %nyx_string* %106, %nyx_string** %107
  %108 = getelementptr [12 x i8], [12 x i8]* @.str247, i32 0, i32 0
  %109 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str247.c, i8* %108)
  %110 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %109)
  %111 = getelementptr [8 x i8], [8 x i8]* @.str248, i32 0, i32 0
  %112 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str248.c, i8* %111)
  %113 = call { i64, i8* }* @nyx_array_new_ptr()
  %114 = load %nyx_string*, %nyx_string** %107
  %115 = ptrtoint %nyx_string* %114 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %113, i64 %115, i64 2)
  %116 = call { i64, i8* }* @make_astnode(%nyx_string* %112, { i64, i8* }* %113)
  ret { i64, i8* }* %116
else19:
  br label %merge20
merge20:
  %117 = getelementptr [4 x i8], [4 x i8]* @.str249, i32 0, i32 0
  %118 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str249.c, i8* %117)
  %119 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %118)
  br i1 %119, label %then21, label %else22
then21:
  %120 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %121 = getelementptr [2 x i8], [2 x i8]* @.str250, i32 0, i32 0
  %122 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str250.c, i8* %121)
  %123 = alloca %nyx_string*
  store %nyx_string* %122, %nyx_string** %123
  %124 = getelementptr [11 x i8], [11 x i8]* @.str251, i32 0, i32 0
  %125 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str251.c, i8* %124)
  %126 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %125)
  br i1 %126, label %then24, label %else25
then24:
  %127 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %128 = alloca %Token
  store %Token %127, %Token* %128
  %129 = load %Token, %Token* %128
  %130 = call %nyx_string* @get_token_value(%Token %129)
  %131 = alloca %nyx_string*
  store %nyx_string* %130, %nyx_string** %131
  %132 = load %nyx_string*, %nyx_string** %131
  %133 = getelementptr [9 x i8], [9 x i8]* @.str252, i32 0, i32 0
  %134 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str252.c, i8* %133)
  %135 = call i1 @nyx_string_equals(%nyx_string* %132, %nyx_string* %134)
  br i1 %135, label %then27, label %else28
then27:
  %136 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %137 = getelementptr [2 x i8], [2 x i8]* @.str253, i32 0, i32 0
  %138 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str253.c, i8* %137)
  store %nyx_string* %138, %nyx_string** %123
  br label %merge29
else28:
  br label %merge29
merge29:
  br label %merge26
else25:
  br label %merge26
merge26:
  %139 = getelementptr [11 x i8], [11 x i8]* @.str254, i32 0, i32 0
  %140 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str254.c, i8* %139)
  %141 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %140)
  %142 = getelementptr [7 x i8], [7 x i8]* @.str255, i32 0, i32 0
  %143 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str255.c, i8* %142)
  %144 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %143)
  %145 = alloca %Token
  store %Token %144, %Token* %145
  %146 = load %Token, %Token* %145
  %147 = call %nyx_string* @get_token_value(%Token %146)
  %148 = alloca %nyx_string*
  store %nyx_string* %147, %nyx_string** %148
  %149 = getelementptr [6 x i8], [6 x i8]* @.str256, i32 0, i32 0
  %150 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str256.c, i8* %149)
  %151 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %150)
  br i1 %151, label %then30, label %else31
then30:
  %152 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %153 = call { i64, i8* }* @nyx_array_new_ptr()
  %154 = alloca { i64, i8* }*
  store { i64, i8* }* %153, { i64, i8* }** %154
  %155 = alloca i1
  store i1 0, i1* %155
  %156 = call i8* @llvm.stacksave()
  br label %while_cond33
while_cond33:
  %157 = load i1, i1* %155
  %158 = xor i1 %157, true
  br i1 %158, label %while_body34, label %while_end35
while_body34:
  call void @llvm.stackrestore(i8* %156)
  %159 = getelementptr [7 x i8], [7 x i8]* @.str257, i32 0, i32 0
  %160 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str257.c, i8* %159)
  %161 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %160)
  br i1 %161, label %then36, label %else37
then36:
  %162 = getelementptr [7 x i8], [7 x i8]* @.str258, i32 0, i32 0
  %163 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str258.c, i8* %162)
  %164 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %163)
  %165 = alloca %Token
  store %Token %164, %Token* %165
  %166 = load %Token, %Token* %165
  %167 = call %nyx_string* @get_token_value(%Token %166)
  %168 = alloca %nyx_string*
  store %nyx_string* %167, %nyx_string** %168
  %169 = getelementptr [11 x i8], [11 x i8]* @.str259, i32 0, i32 0
  %170 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str259.c, i8* %169)
  %171 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %170)
  %172 = getelementptr [11 x i8], [11 x i8]* @.str260, i32 0, i32 0
  %173 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str260.c, i8* %172)
  %174 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %173)
  %175 = alloca %Token
  store %Token %174, %Token* %175
  %176 = load %Token, %Token* %175
  %177 = call %nyx_string* @get_token_value(%Token %176)
  %178 = alloca %nyx_string*
  store %nyx_string* %177, %nyx_string** %178
  %179 = getelementptr [12 x i8], [12 x i8]* @.str261, i32 0, i32 0
  %180 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str261.c, i8* %179)
  %181 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %180)
  %182 = load { i64, i8* }*, { i64, i8* }** %154
  %183 = call { i64, i8* }* @nyx_array_new_ptr()
  %184 = load %nyx_string*, %nyx_string** %168
  %185 = ptrtoint %nyx_string* %184 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %183, i64 %185, i64 2)
  %186 = load %nyx_string*, %nyx_string** %178
  %187 = ptrtoint %nyx_string* %186 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %183, i64 %187, i64 2)
  %188 = ptrtoint { i64, i8* }* %183 to i64
  call void @nyx_array_push({ i64, i8* }* %182, i64 %188)
  %189 = getelementptr [6 x i8], [6 x i8]* @.str262, i32 0, i32 0
  %190 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str262.c, i8* %189)
  %191 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %190)
  br i1 %191, label %then39, label %else40
then39:
  %192 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge41
else40:
  br label %merge41
merge41:
  br label %merge38
else37:
  store i1 1, i1* %155
  br label %merge38
merge38:
  br label %while_cond33
while_end35:
  %193 = getelementptr [6 x i8], [6 x i8]* @.str263, i32 0, i32 0
  %194 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str263.c, i8* %193)
  %195 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %194)
  br i1 %195, label %then42, label %else43
then42:
  %196 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge44
else43:
  br label %merge44
merge44:
  %197 = call { i64, i8* }* @nyx_array_new_ptr()
  %198 = alloca { i64, i8* }*
  store { i64, i8* }* %197, { i64, i8* }** %198
  %199 = alloca i1
  store i1 0, i1* %199
  %200 = call i8* @llvm.stacksave()
  br label %while_cond45
while_cond45:
  %201 = load i1, i1* %199
  %202 = xor i1 %201, true
  br i1 %202, label %while_body46, label %while_end47
while_body46:
  call void @llvm.stackrestore(i8* %200)
  %203 = getelementptr [7 x i8], [7 x i8]* @.str264, i32 0, i32 0
  %204 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str264.c, i8* %203)
  %205 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %204)
  br i1 %205, label %then48, label %else49
then48:
  %206 = getelementptr [7 x i8], [7 x i8]* @.str265, i32 0, i32 0
  %207 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str265.c, i8* %206)
  %208 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %207)
  %209 = alloca %Token
  store %Token %208, %Token* %209
  %210 = load %Token, %Token* %209
  %211 = call %nyx_string* @get_token_value(%Token %210)
  %212 = alloca %nyx_string*
  store %nyx_string* %211, %nyx_string** %212
  %213 = getelementptr [11 x i8], [11 x i8]* @.str266, i32 0, i32 0
  %214 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str266.c, i8* %213)
  %215 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %214)
  %216 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %217 = alloca { i64, i8* }*
  store { i64, i8* }* %216, { i64, i8* }** %217
  %218 = getelementptr [12 x i8], [12 x i8]* @.str267, i32 0, i32 0
  %219 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str267.c, i8* %218)
  %220 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %219)
  %221 = load { i64, i8* }*, { i64, i8* }** %198
  %222 = call { i64, i8* }* @nyx_array_new_ptr()
  %223 = load %nyx_string*, %nyx_string** %212
  %224 = ptrtoint %nyx_string* %223 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %222, i64 %224, i64 2)
  %225 = load { i64, i8* }*, { i64, i8* }** %217
  %226 = bitcast { i64, i8* }* %225 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %222, i8* %226)
  %227 = ptrtoint { i64, i8* }* %222 to i64
  call void @nyx_array_push({ i64, i8* }* %221, i64 %227)
  %228 = getelementptr [6 x i8], [6 x i8]* @.str268, i32 0, i32 0
  %229 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str268.c, i8* %228)
  %230 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %229)
  br i1 %230, label %then51, label %else52
then51:
  %231 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge53
else52:
  br label %merge53
merge53:
  br label %merge50
else49:
  store i1 1, i1* %199
  br label %merge50
merge50:
  br label %while_cond45
while_end47:
  %232 = getelementptr [6 x i8], [6 x i8]* @.str269, i32 0, i32 0
  %233 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str269.c, i8* %232)
  %234 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %233)
  br i1 %234, label %then54, label %else55
then54:
  %235 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge56
else55:
  br label %merge56
merge56:
  %236 = call { i64, i8* }* @nyx_array_new_ptr()
  %237 = alloca { i64, i8* }*
  store { i64, i8* }* %236, { i64, i8* }** %237
  %238 = alloca i1
  store i1 0, i1* %238
  %239 = call i8* @llvm.stacksave()
  br label %while_cond57
while_cond57:
  %240 = load i1, i1* %238
  %241 = xor i1 %240, true
  br i1 %241, label %while_body58, label %while_end59
while_body58:
  call void @llvm.stackrestore(i8* %239)
  %242 = getelementptr [7 x i8], [7 x i8]* @.str270, i32 0, i32 0
  %243 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str270.c, i8* %242)
  %244 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %243)
  br i1 %244, label %then60, label %else61
then60:
  %245 = getelementptr [7 x i8], [7 x i8]* @.str271, i32 0, i32 0
  %246 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str271.c, i8* %245)
  %247 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %246)
  %248 = alloca %Token
  store %Token %247, %Token* %248
  %249 = load { i64, i8* }*, { i64, i8* }** %237
  %250 = load %Token, %Token* %248
  %251 = call %nyx_string* @get_token_value(%Token %250)
  %252 = ptrtoint %nyx_string* %251 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %249, i64 %252, i64 2)
  %253 = getelementptr [6 x i8], [6 x i8]* @.str272, i32 0, i32 0
  %254 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str272.c, i8* %253)
  %255 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %254)
  br i1 %255, label %then63, label %else64
then63:
  %256 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge65
else64:
  br label %merge65
merge65:
  br label %merge62
else61:
  store i1 1, i1* %238
  br label %merge62
merge62:
  br label %while_cond57
while_end59:
  %257 = getelementptr [12 x i8], [12 x i8]* @.str273, i32 0, i32 0
  %258 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str273.c, i8* %257)
  %259 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %258)
  %260 = getelementptr [15 x i8], [15 x i8]* @.str274, i32 0, i32 0
  %261 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str274.c, i8* %260)
  %262 = call { i64, i8* }* @nyx_array_new_ptr()
  %263 = load %nyx_string*, %nyx_string** %148
  %264 = ptrtoint %nyx_string* %263 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %262, i64 %264, i64 2)
  %265 = load { i64, i8* }*, { i64, i8* }** %154
  %266 = bitcast { i64, i8* }* %265 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %262, i8* %266)
  %267 = load { i64, i8* }*, { i64, i8* }** %198
  %268 = bitcast { i64, i8* }* %267 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %262, i8* %268)
  %269 = load { i64, i8* }*, { i64, i8* }** %237
  %270 = bitcast { i64, i8* }* %269 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %262, i8* %270)
  %271 = load %nyx_string*, %nyx_string** %123
  %272 = ptrtoint %nyx_string* %271 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %262, i64 %272, i64 2)
  %273 = call { i64, i8* }* @make_astnode(%nyx_string* %261, { i64, i8* }* %262)
  ret { i64, i8* }* %273
else31:
  br label %merge32
merge32:
  %274 = call { i64, i8* }* @nyx_array_new_ptr()
  %275 = alloca { i64, i8* }*
  store { i64, i8* }* %274, { i64, i8* }** %275
  %276 = call { i64, i8* }* @nyx_array_new_ptr()
  %277 = alloca { i64, i8* }*
  store { i64, i8* }* %276, { i64, i8* }** %277
  %278 = call { i64, i8* }* @nyx_array_new_ptr()
  %279 = alloca { i64, i8* }*
  store { i64, i8* }* %278, { i64, i8* }** %279
  %280 = alloca i1
  store i1 0, i1* %280
  %281 = call i8* @llvm.stacksave()
  br label %while_cond66
while_cond66:
  %282 = load i1, i1* %280
  %283 = xor i1 %282, true
  br i1 %283, label %while_body67, label %while_end68
while_body67:
  call void @llvm.stackrestore(i8* %281)
  %284 = getelementptr [6 x i8], [6 x i8]* @.str275, i32 0, i32 0
  %285 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str275.c, i8* %284)
  %286 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %285)
  br i1 %286, label %then69, label %else70
then69:
  %287 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %288 = getelementptr [11 x i8], [11 x i8]* @.str276, i32 0, i32 0
  %289 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str276.c, i8* %288)
  %290 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %289)
  br i1 %290, label %then72, label %else73
then72:
  %291 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %292 = alloca %Token
  store %Token %291, %Token* %292
  %293 = load %Token, %Token* %292
  %294 = call %nyx_string* @get_token_value(%Token %293)
  %295 = alloca %nyx_string*
  store %nyx_string* %294, %nyx_string** %295
  %296 = load %nyx_string*, %nyx_string** %295
  %297 = getelementptr [4 x i8], [4 x i8]* @.str277, i32 0, i32 0
  %298 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str277.c, i8* %297)
  %299 = call i1 @nyx_string_equals(%nyx_string* %296, %nyx_string* %298)
  br i1 %299, label %then75, label %else76
then75:
  %300 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %301 = getelementptr [11 x i8], [11 x i8]* @.str278, i32 0, i32 0
  %302 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str278.c, i8* %301)
  %303 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %302)
  %304 = getelementptr [7 x i8], [7 x i8]* @.str279, i32 0, i32 0
  %305 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str279.c, i8* %304)
  %306 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %305)
  %307 = alloca %Token
  store %Token %306, %Token* %307
  %308 = load { i64, i8* }*, { i64, i8* }** %275
  %309 = load %Token, %Token* %307
  %310 = call %nyx_string* @get_token_value(%Token %309)
  %311 = ptrtoint %nyx_string* %310 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %308, i64 %311, i64 2)
  %312 = getelementptr [12 x i8], [12 x i8]* @.str280, i32 0, i32 0
  %313 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str280.c, i8* %312)
  %314 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %313)
  br label %merge77
else76:
  %315 = load %nyx_string*, %nyx_string** %295
  %316 = getelementptr [3 x i8], [3 x i8]* @.str281, i32 0, i32 0
  %317 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str281.c, i8* %316)
  %318 = call i1 @nyx_string_equals(%nyx_string* %315, %nyx_string* %317)
  br i1 %318, label %then78, label %else79
then78:
  %319 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %320 = getelementptr [11 x i8], [11 x i8]* @.str282, i32 0, i32 0
  %321 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str282.c, i8* %320)
  %322 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %321)
  %323 = getelementptr [7 x i8], [7 x i8]* @.str283, i32 0, i32 0
  %324 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str283.c, i8* %323)
  %325 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %324)
  %326 = alloca %Token
  store %Token %325, %Token* %326
  %327 = load %Token, %Token* %326
  %328 = call %nyx_string* @get_token_value(%Token %327)
  %329 = alloca %nyx_string*
  store %nyx_string* %328, %nyx_string** %329
  %330 = getelementptr [6 x i8], [6 x i8]* @.str284, i32 0, i32 0
  %331 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str284.c, i8* %330)
  %332 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %331)
  %333 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %334 = alloca { i64, i8* }*
  store { i64, i8* }* %333, { i64, i8* }** %334
  %335 = load { i64, i8* }*, { i64, i8* }** %277
  %336 = call { i64, i8* }* @nyx_array_new_ptr()
  %337 = load %nyx_string*, %nyx_string** %329
  %338 = ptrtoint %nyx_string* %337 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %336, i64 %338, i64 2)
  %339 = load { i64, i8* }*, { i64, i8* }** %334
  %340 = bitcast { i64, i8* }* %339 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %336, i8* %340)
  %341 = ptrtoint { i64, i8* }* %336 to i64
  call void @nyx_array_push({ i64, i8* }* %335, i64 %341)
  %342 = getelementptr [12 x i8], [12 x i8]* @.str285, i32 0, i32 0
  %343 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str285.c, i8* %342)
  %344 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %343)
  br label %merge80
else79:
  %345 = load %nyx_string*, %nyx_string** %295
  %346 = getelementptr [8 x i8], [8 x i8]* @.str286, i32 0, i32 0
  %347 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str286.c, i8* %346)
  %348 = call i1 @nyx_string_equals(%nyx_string* %345, %nyx_string* %347)
  br i1 %348, label %then81, label %else82
then81:
  %349 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %350 = getelementptr [11 x i8], [11 x i8]* @.str287, i32 0, i32 0
  %351 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str287.c, i8* %350)
  %352 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %351)
  %353 = alloca i1
  store i1 0, i1* %353
  %354 = call i8* @llvm.stacksave()
  br label %while_cond84
while_cond84:
  %355 = load i1, i1* %353
  %356 = xor i1 %355, true
  br i1 %356, label %while_body85, label %while_end86
while_body85:
  call void @llvm.stackrestore(i8* %354)
  %357 = getelementptr [7 x i8], [7 x i8]* @.str288, i32 0, i32 0
  %358 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str288.c, i8* %357)
  %359 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %358)
  %360 = alloca %Token
  store %Token %359, %Token* %360
  %361 = load { i64, i8* }*, { i64, i8* }** %279
  %362 = load %Token, %Token* %360
  %363 = call %nyx_string* @get_token_value(%Token %362)
  %364 = ptrtoint %nyx_string* %363 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %361, i64 %364, i64 2)
  %365 = getelementptr [6 x i8], [6 x i8]* @.str289, i32 0, i32 0
  %366 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str289.c, i8* %365)
  %367 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %366)
  br i1 %367, label %then87, label %else88
then87:
  %368 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge89
else88:
  store i1 1, i1* %353
  br label %merge89
merge89:
  br label %while_cond84
while_end86:
  %369 = getelementptr [12 x i8], [12 x i8]* @.str290, i32 0, i32 0
  %370 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str290.c, i8* %369)
  %371 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %370)
  br label %merge83
else82:
  store i1 1, i1* %280
  br label %merge83
merge83:
  br label %merge80
merge80:
  br label %merge77
merge77:
  br label %merge74
else73:
  store i1 1, i1* %280
  br label %merge74
merge74:
  br label %merge71
else70:
  store i1 1, i1* %280
  br label %merge71
merge71:
  br label %while_cond66
while_end68:
  %372 = getelementptr [12 x i8], [12 x i8]* @.str291, i32 0, i32 0
  %373 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str291.c, i8* %372)
  %374 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %373)
  %375 = getelementptr [11 x i8], [11 x i8]* @.str292, i32 0, i32 0
  %376 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str292.c, i8* %375)
  %377 = call { i64, i8* }* @nyx_array_new_ptr()
  %378 = load %nyx_string*, %nyx_string** %148
  %379 = ptrtoint %nyx_string* %378 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %377, i64 %379, i64 2)
  %380 = load { i64, i8* }*, { i64, i8* }** %275
  %381 = bitcast { i64, i8* }* %380 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %377, i8* %381)
  %382 = load { i64, i8* }*, { i64, i8* }** %277
  %383 = bitcast { i64, i8* }* %382 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %377, i8* %383)
  %384 = load { i64, i8* }*, { i64, i8* }** %279
  %385 = bitcast { i64, i8* }* %384 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %377, i8* %385)
  %386 = call { i64, i8* }* @make_astnode(%nyx_string* %376, { i64, i8* }* %377)
  ret { i64, i8* }* %386
else22:
  br label %merge23
merge23:
  %387 = getelementptr [7 x i8], [7 x i8]* @.str293, i32 0, i32 0
  %388 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str293.c, i8* %387)
  %389 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %388)
  br i1 %389, label %then90, label %else91
then90:
  %390 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %391 = getelementptr [11 x i8], [11 x i8]* @.str294, i32 0, i32 0
  %392 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str294.c, i8* %391)
  %393 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %392)
  %394 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %395 = alloca { i64, i8* }*
  store { i64, i8* }* %394, { i64, i8* }** %395
  %396 = getelementptr [7 x i8], [7 x i8]* @.str295, i32 0, i32 0
  %397 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str295.c, i8* %396)
  %398 = call { i64, i8* }* @nyx_array_new_ptr()
  %399 = getelementptr [17 x i8], [17 x i8]* @.str296, i32 0, i32 0
  %400 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str296.c, i8* %399)
  %401 = ptrtoint %nyx_string* %400 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %398, i64 %401, i64 2)
  %402 = call { i64, i8* }* @make_astnode(%nyx_string* %397, { i64, i8* }* %398)
  %403 = alloca { i64, i8* }*
  store { i64, i8* }* %402, { i64, i8* }** %403
  %404 = getelementptr [6 x i8], [6 x i8]* @.str297, i32 0, i32 0
  %405 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str297.c, i8* %404)
  %406 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %405)
  br i1 %406, label %then93, label %else94
then93:
  %407 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %408 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %408, { i64, i8* }** %403
  br label %merge95
else94:
  br label %merge95
merge95:
  %409 = getelementptr [12 x i8], [12 x i8]* @.str298, i32 0, i32 0
  %410 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str298.c, i8* %409)
  %411 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %410)
  %412 = getelementptr [7 x i8], [7 x i8]* @.str299, i32 0, i32 0
  %413 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str299.c, i8* %412)
  %414 = call { i64, i8* }* @nyx_array_new_ptr()
  %415 = load { i64, i8* }*, { i64, i8* }** %395
  %416 = bitcast { i64, i8* }* %415 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %414, i8* %416)
  %417 = load { i64, i8* }*, { i64, i8* }** %403
  %418 = bitcast { i64, i8* }* %417 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %414, i8* %418)
  %419 = call { i64, i8* }* @make_astnode(%nyx_string* %413, { i64, i8* }* %414)
  ret { i64, i8* }* %419
else91:
  br label %merge92
merge92:
  %420 = getelementptr [11 x i8], [11 x i8]* @.str300, i32 0, i32 0
  %421 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str300.c, i8* %420)
  %422 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %421)
  br i1 %422, label %then96, label %else97
then96:
  %423 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %424 = alloca %Token
  store %Token %423, %Token* %424
  %425 = load %Token, %Token* %424
  %426 = call %nyx_string* @get_token_value(%Token %425)
  %427 = alloca %nyx_string*
  store %nyx_string* %426, %nyx_string** %427
  %428 = load { i64, i8* }*, { i64, i8* }** %16
  %429 = call i64 @nyx_array_length({ i64, i8* }* %428)
  %430 = icmp sgt i64 %429, 0
  br i1 %430, label %then99, label %else100
then99:
  %431 = alloca i64
  store i64 0, i64* %431
  %432 = call i8* @llvm.stacksave()
  br label %while_cond102
while_cond102:
  %433 = load i64, i64* %431
  %434 = load { i64, i8* }*, { i64, i8* }** %16
  %435 = call i64 @nyx_array_length({ i64, i8* }* %434)
  %436 = icmp slt i64 %433, %435
  br i1 %436, label %while_body103, label %while_end104
while_body103:
  call void @llvm.stackrestore(i8* %432)
  %437 = load { i64, i8* }*, { i64, i8* }** %16
  %438 = load i64, i64* %431
  %439 = call i64 @nyx_array_get_checked({ i64, i8* }* %437, i64 %438, i64 2)
  %440 = inttoptr i64 %439 to %nyx_string*
  %441 = alloca %nyx_string*
  store %nyx_string* %440, %nyx_string** %441
  %442 = load %nyx_string*, %nyx_string** %441
  %443 = load %nyx_string*, %nyx_string** %427
  %444 = call i1 @nyx_string_equals(%nyx_string* %442, %nyx_string* %443)
  br i1 %444, label %then105, label %else106
then105:
  %445 = load { i64, i8* }*, { i64, i8* }** %17
  %446 = load i64, i64* %431
  %447 = call i64 @nyx_array_get({ i64, i8* }* %445, i64 %446)
  %448 = inttoptr i64 %447 to { i64, i8* }*
  %449 = alloca { i64, i8* }*
  store { i64, i8* }* %448, { i64, i8* }** %449
  %450 = load { i64, i8* }*, { i64, i8* }** %449
  ret { i64, i8* }* %450
else106:
  br label %merge107
merge107:
  %451 = load i64, i64* %431
  %452 = add i64 %451, 1
  store i64 %452, i64* %431
  br label %while_cond102
while_end104:
  br label %merge101
else100:
  br label %merge101
merge101:
  %453 = getelementptr [4 x i8], [4 x i8]* @.str301, i32 0, i32 0
  %454 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str301.c, i8* %453)
  %455 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %454)
  br i1 %455, label %then108, label %else109
then108:
  %456 = alloca i1
  store i1 0, i1* %456
  %457 = alloca i64
  store i64 0, i64* %457
  %458 = call i8* @llvm.stacksave()
  br label %while_cond111
while_cond111:
  %459 = load i64, i64* %457
  %460 = load { i64, i8* }*, { i64, i8* }** %13
  %461 = call i64 @nyx_array_length({ i64, i8* }* %460)
  %462 = icmp slt i64 %459, %461
  br i1 %462, label %while_body112, label %while_end113
while_body112:
  call void @llvm.stackrestore(i8* %458)
  %463 = load { i64, i8* }*, { i64, i8* }** %13
  %464 = load i64, i64* %457
  %465 = call i64 @nyx_array_get_checked({ i64, i8* }* %463, i64 %464, i64 2)
  %466 = inttoptr i64 %465 to %nyx_string*
  %467 = alloca %nyx_string*
  store %nyx_string* %466, %nyx_string** %467
  %468 = load %nyx_string*, %nyx_string** %467
  %469 = load %nyx_string*, %nyx_string** %427
  %470 = call i1 @nyx_string_equals(%nyx_string* %468, %nyx_string* %469)
  br i1 %470, label %then114, label %else115
then114:
  store i1 1, i1* %456
  br label %merge116
else115:
  br label %merge116
merge116:
  %471 = load i64, i64* %457
  %472 = add i64 %471, 1
  store i64 %472, i64* %457
  br label %while_cond111
while_end113:
  %473 = load i1, i1* %456
  br i1 %473, label %then117, label %else118
then117:
  %474 = load %nyx_string*, %nyx_string** %427
  %475 = call { i64, i8* }* @parse__parse_macro_invocation(%SharedEnv_parse* %env.param, %nyx_string* %474)
  ret { i64, i8* }* %475
else118:
  br label %merge119
merge119:
  br label %merge110
else109:
  br label %merge110
merge110:
  %476 = alloca i1
  store i1 false, i1* %476
  %477 = getelementptr [11 x i8], [11 x i8]* @.str302, i32 0, i32 0
  %478 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str302.c, i8* %477)
  %479 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %478)
  br i1 %479, label %sc_and_rhs120, label %sc_and_end121
sc_and_rhs120:
  %480 = load i64, i64* %6
  %481 = icmp eq i64 %480, 0
  store i1 %481, i1* %476
  br label %sc_and_end121
sc_and_end121:
  %482 = load i1, i1* %476
  br i1 %482, label %then122, label %else123
then122:
  %483 = alloca i1
  store i1 false, i1* %483
  %484 = getelementptr [11 x i8], [11 x i8]* @.str303, i32 0, i32 0
  %485 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str303.c, i8* %484)
  %486 = call i1 @parse__check_at(%SharedEnv_parse* %env.param, i64 1, %nyx_string* %485)
  br i1 %486, label %sc_and_rhs125, label %sc_and_end126
sc_and_rhs125:
  %487 = getelementptr [6 x i8], [6 x i8]* @.str304, i32 0, i32 0
  %488 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str304.c, i8* %487)
  %489 = call i1 @parse__check_at(%SharedEnv_parse* %env.param, i64 2, %nyx_string* %488)
  store i1 %489, i1* %483
  br label %sc_and_end126
sc_and_end126:
  %490 = load i1, i1* %483
  br i1 %490, label %then127, label %else128
then127:
  %491 = load %nyx_string*, %nyx_string** %427
  %492 = call { i64, i8* }* @parse__parse_struct_construction(%SharedEnv_parse* %env.param, %nyx_string* %491)
  ret { i64, i8* }* %492
else128:
  br label %merge129
merge129:
  %493 = getelementptr [12 x i8], [12 x i8]* @.str305, i32 0, i32 0
  %494 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str305.c, i8* %493)
  %495 = call i1 @parse__check_at(%SharedEnv_parse* %env.param, i64 1, %nyx_string* %494)
  br i1 %495, label %then130, label %else131
then130:
  %496 = load %nyx_string*, %nyx_string** %427
  %497 = call { i64, i8* }* @parse__parse_struct_construction(%SharedEnv_parse* %env.param, %nyx_string* %496)
  ret { i64, i8* }* %497
else131:
  br label %merge132
merge132:
  br label %merge124
else123:
  br label %merge124
merge124:
  %498 = getelementptr [11 x i8], [11 x i8]* @.str306, i32 0, i32 0
  %499 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str306.c, i8* %498)
  %500 = call { i64, i8* }* @nyx_array_new_ptr()
  %501 = load %nyx_string*, %nyx_string** %427
  %502 = ptrtoint %nyx_string* %501 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %500, i64 %502, i64 2)
  %503 = call { i64, i8* }* @make_astnode(%nyx_string* %499, { i64, i8* }* %500)
  ret { i64, i8* }* %503
else97:
  br label %merge98
merge98:
  %504 = getelementptr [13 x i8], [13 x i8]* @.str307, i32 0, i32 0
  %505 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str307.c, i8* %504)
  %506 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %505)
  br i1 %506, label %then133, label %else134
then133:
  %507 = call { i64, i8* }* @parse__parse_array_literal(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %507
else134:
  br label %merge135
merge135:
  %508 = getelementptr [6 x i8], [6 x i8]* @.str308, i32 0, i32 0
  %509 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str308.c, i8* %508)
  %510 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %509)
  br i1 %510, label %then136, label %else137
then136:
  %511 = call { i64, i8* }* @parse__parse_match(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %511
else137:
  br label %merge138
merge138:
  %512 = getelementptr [11 x i8], [11 x i8]* @.str309, i32 0, i32 0
  %513 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str309.c, i8* %512)
  %514 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %513)
  br i1 %514, label %then139, label %else140
then139:
  %515 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %516 = load i64, i64* %6
  %517 = alloca i64
  store i64 %516, i64* %517
  store i64 0, i64* %6
  %518 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %519 = alloca { i64, i8* }*
  store { i64, i8* }* %518, { i64, i8* }** %519
  %520 = getelementptr [6 x i8], [6 x i8]* @.str310, i32 0, i32 0
  %521 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str310.c, i8* %520)
  %522 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %521)
  br i1 %522, label %then142, label %else143
then142:
  %523 = call { i64, i8* }* @nyx_array_new_ptr()
  %524 = load { i64, i8* }*, { i64, i8* }** %519
  %525 = bitcast { i64, i8* }* %524 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %523, i8* %525)
  %526 = alloca { i64, i8* }*
  store { i64, i8* }* %523, { i64, i8* }** %526
  %527 = call i8* @llvm.stacksave()
  br label %while_cond145
while_cond145:
  %528 = getelementptr [6 x i8], [6 x i8]* @.str311, i32 0, i32 0
  %529 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str311.c, i8* %528)
  %530 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %529)
  br i1 %530, label %while_body146, label %while_end147
while_body146:
  call void @llvm.stackrestore(i8* %527)
  %531 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %532 = load { i64, i8* }*, { i64, i8* }** %526
  %533 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %534 = ptrtoint { i64, i8* }* %533 to i64
  call void @nyx_array_push({ i64, i8* }* %532, i64 %534)
  br label %while_cond145
while_end147:
  %535 = getelementptr [12 x i8], [12 x i8]* @.str312, i32 0, i32 0
  %536 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str312.c, i8* %535)
  %537 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %536)
  %538 = load i64, i64* %517
  store i64 %538, i64* %6
  %539 = getelementptr [10 x i8], [10 x i8]* @.str313, i32 0, i32 0
  %540 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str313.c, i8* %539)
  %541 = call { i64, i8* }* @nyx_array_new_ptr()
  %542 = load { i64, i8* }*, { i64, i8* }** %526
  %543 = bitcast { i64, i8* }* %542 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %541, i8* %543)
  %544 = call { i64, i8* }* @make_astnode(%nyx_string* %540, { i64, i8* }* %541)
  ret { i64, i8* }* %544
else143:
  br label %merge144
merge144:
  %545 = getelementptr [12 x i8], [12 x i8]* @.str314, i32 0, i32 0
  %546 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str314.c, i8* %545)
  %547 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %546)
  %548 = load i64, i64* %517
  store i64 %548, i64* %6
  %549 = load { i64, i8* }*, { i64, i8* }** %519
  ret { i64, i8* }* %549
else140:
  br label %merge141
merge141:
  %550 = getelementptr [3 x i8], [3 x i8]* @.str315, i32 0, i32 0
  %551 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str315.c, i8* %550)
  %552 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %551)
  br i1 %552, label %then148, label %else149
then148:
  %553 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %554 = load { i64, i8* }*, { i64, i8* }** %12
  %555 = call i64 @nyx_array_get({ i64, i8* }* %554, i64 0)
  %556 = alloca i64
  store i64 %555, i64* %556
  %557 = load { i64, i8* }*, { i64, i8* }** %12
  %558 = load { i64, i8* }*, { i64, i8* }** %12
  %559 = call i64 @nyx_array_get({ i64, i8* }* %558, i64 0)
  %560 = add i64 %559, 1
  call void @nyx_array_set({ i64, i8* }* %557, i64 0, i64 %560)
  %561 = getelementptr [10 x i8], [10 x i8]* @.str316, i32 0, i32 0
  %562 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str316.c, i8* %561)
  %563 = load i64, i64* %556
  %564 = call %nyx_string* @nyx_string_from_int(i64 %563)
  %565 = call %nyx_string* @nyx_string_concat(%nyx_string* %562, %nyx_string* %564)
  %566 = alloca %nyx_string*
  store %nyx_string* %565, %nyx_string** %566
  %567 = getelementptr [11 x i8], [11 x i8]* @.str317, i32 0, i32 0
  %568 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str317.c, i8* %567)
  %569 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %568)
  %570 = call { i64, i8* }* @nyx_array_new_ptr()
  %571 = alloca { i64, i8* }*
  store { i64, i8* }* %570, { i64, i8* }** %571
  %572 = alloca i1
  store i1 0, i1* %572
  %573 = call i8* @llvm.stacksave()
  br label %while_cond151
while_cond151:
  %574 = load i1, i1* %572
  %575 = xor i1 %574, true
  br i1 %575, label %while_body152, label %while_end153
while_body152:
  call void @llvm.stackrestore(i8* %573)
  %576 = getelementptr [12 x i8], [12 x i8]* @.str318, i32 0, i32 0
  %577 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str318.c, i8* %576)
  %578 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %577)
  br i1 %578, label %then154, label %else155
then154:
  %579 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %572
  br label %merge156
else155:
  %580 = load { i64, i8* }*, { i64, i8* }** %571
  %581 = call i64 @nyx_array_length({ i64, i8* }* %580)
  %582 = icmp sgt i64 %581, 0
  br i1 %582, label %then157, label %else158
then157:
  %583 = getelementptr [6 x i8], [6 x i8]* @.str319, i32 0, i32 0
  %584 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str319.c, i8* %583)
  %585 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %584)
  br label %merge159
else158:
  br label %merge159
merge159:
  %586 = getelementptr [11 x i8], [11 x i8]* @.str320, i32 0, i32 0
  %587 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str320.c, i8* %586)
  %588 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %587)
  %589 = alloca %Token
  store %Token %588, %Token* %589
  %590 = load %Token, %Token* %589
  %591 = call %nyx_string* @get_token_value(%Token %590)
  %592 = alloca %nyx_string*
  store %nyx_string* %591, %nyx_string** %592
  %593 = getelementptr [4 x i8], [4 x i8]* @.str321, i32 0, i32 0
  %594 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str321.c, i8* %593)
  %595 = alloca %nyx_string*
  store %nyx_string* %594, %nyx_string** %595
  %596 = getelementptr [6 x i8], [6 x i8]* @.str322, i32 0, i32 0
  %597 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str322.c, i8* %596)
  %598 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %597)
  br i1 %598, label %then160, label %else161
then160:
  %599 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %600 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %600, %nyx_string** %595
  br label %merge162
else161:
  br label %merge162
merge162:
  %601 = load { i64, i8* }*, { i64, i8* }** %571
  %602 = call { i64, i8* }* @nyx_array_new_ptr()
  %603 = load %nyx_string*, %nyx_string** %592
  %604 = ptrtoint %nyx_string* %603 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %602, i64 %604, i64 2)
  %605 = load %nyx_string*, %nyx_string** %595
  %606 = ptrtoint %nyx_string* %605 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %602, i64 %606, i64 2)
  %607 = ptrtoint { i64, i8* }* %602 to i64
  call void @nyx_array_push({ i64, i8* }* %601, i64 %607)
  br label %merge156
merge156:
  br label %while_cond151
while_end153:
  %608 = getelementptr [1 x i8], [1 x i8]* @.str323, i32 0, i32 0
  %609 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str323.c, i8* %608)
  %610 = alloca %nyx_string*
  store %nyx_string* %609, %nyx_string** %610
  %611 = getelementptr [6 x i8], [6 x i8]* @.str324, i32 0, i32 0
  %612 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str324.c, i8* %611)
  %613 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %612)
  br i1 %613, label %then163, label %else164
then163:
  %614 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %615 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %615, %nyx_string** %610
  br label %merge165
else164:
  br label %merge165
merge165:
  %616 = call { i64, i8* }* @parse__parse_fn_body_block(%SharedEnv_parse* %env.param)
  %617 = alloca { i64, i8* }*
  store { i64, i8* }* %616, { i64, i8* }** %617
  %618 = getelementptr [9 x i8], [9 x i8]* @.str325, i32 0, i32 0
  %619 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str325.c, i8* %618)
  %620 = call { i64, i8* }* @nyx_array_new_ptr()
  %621 = load %nyx_string*, %nyx_string** %566
  %622 = ptrtoint %nyx_string* %621 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %620, i64 %622, i64 2)
  %623 = load { i64, i8* }*, { i64, i8* }** %571
  %624 = bitcast { i64, i8* }* %623 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %620, i8* %624)
  %625 = load %nyx_string*, %nyx_string** %610
  %626 = ptrtoint %nyx_string* %625 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %620, i64 %626, i64 2)
  %627 = load { i64, i8* }*, { i64, i8* }** %617
  %628 = bitcast { i64, i8* }* %627 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %620, i8* %628)
  %629 = call { i64, i8* }* @nyx_array_new_ptr()
  %630 = bitcast { i64, i8* }* %629 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %620, i8* %630)
  %631 = call { i64, i8* }* @make_astnode(%nyx_string* %619, { i64, i8* }* %620)
  %632 = alloca { i64, i8* }*
  store { i64, i8* }* %631, { i64, i8* }** %632
  %633 = load { i64, i8* }*, { i64, i8* }** %11
  %634 = load { i64, i8* }*, { i64, i8* }** %632
  %635 = ptrtoint { i64, i8* }* %634 to i64
  call void @nyx_array_push({ i64, i8* }* %633, i64 %635)
  %636 = getelementptr [11 x i8], [11 x i8]* @.str326, i32 0, i32 0
  %637 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str326.c, i8* %636)
  %638 = call { i64, i8* }* @nyx_array_new_ptr()
  %639 = load %nyx_string*, %nyx_string** %566
  %640 = ptrtoint %nyx_string* %639 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %638, i64 %640, i64 2)
  %641 = call { i64, i8* }* @make_astnode(%nyx_string* %637, { i64, i8* }* %638)
  ret { i64, i8* }* %641
else149:
  br label %merge150
merge150:
  %642 = getelementptr [11 x i8], [11 x i8]* @.str327, i32 0, i32 0
  %643 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str327.c, i8* %642)
  %644 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %643)
  br i1 %644, label %then166, label %else167
then166:
  %645 = alloca i1
  store i1 true, i1* %645
  %646 = getelementptr [12 x i8], [12 x i8]* @.str328, i32 0, i32 0
  %647 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str328.c, i8* %646)
  %648 = call i1 @parse__check_at(%SharedEnv_parse* %env.param, i64 1, %nyx_string* %647)
  br i1 %648, label %sc_or_end170, label %sc_or_rhs169
sc_or_rhs169:
  %649 = alloca i1
  store i1 false, i1* %649
  %650 = getelementptr [7 x i8], [7 x i8]* @.str329, i32 0, i32 0
  %651 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str329.c, i8* %650)
  %652 = call i1 @parse__check_at(%SharedEnv_parse* %env.param, i64 1, %nyx_string* %651)
  br i1 %652, label %sc_and_rhs171, label %sc_and_end172
sc_and_rhs171:
  %653 = getelementptr [6 x i8], [6 x i8]* @.str330, i32 0, i32 0
  %654 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str330.c, i8* %653)
  %655 = call i1 @parse__check_at(%SharedEnv_parse* %env.param, i64 2, %nyx_string* %654)
  store i1 %655, i1* %649
  br label %sc_and_end172
sc_and_end172:
  %656 = load i1, i1* %649
  store i1 %656, i1* %645
  br label %sc_or_end170
sc_or_end170:
  %657 = load i1, i1* %645
  br i1 %657, label %then173, label %else174
then173:
  %658 = call { i64, i8* }* @parse__parse_map_literal(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %658
else174:
  br label %merge175
merge175:
  %659 = getelementptr [6 x i8], [6 x i8]* @.str331, i32 0, i32 0
  %660 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str331.c, i8* %659)
  %661 = call i1 @parse__check_at(%SharedEnv_parse* %env.param, i64 2, %nyx_string* %660)
  br i1 %661, label %then176, label %else177
then176:
  %662 = getelementptr [8 x i8], [8 x i8]* @.str332, i32 0, i32 0
  %663 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str332.c, i8* %662)
  %664 = load i64, i64* @g_last_line
  %665 = load i64, i64* @g_last_col
  %666 = getelementptr [72 x i8], [72 x i8]* @.str333, i32 0, i32 0
  %667 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str333.c, i8* %666)
  %668 = getelementptr [55 x i8], [55 x i8]* @.str334, i32 0, i32 0
  %669 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str334.c, i8* %668)
  %670 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %667, %nyx_string* %669)
  %671 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %663, i64 %664, i64 %665, %nyx_string* %670)
  %672 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %673 = getelementptr [6 x i8], [6 x i8]* @.str335, i32 0, i32 0
  %674 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str335.c, i8* %673)
  %675 = call { i64, i8* }* @nyx_array_new_ptr()
  %676 = call { i64, i8* }* @make_astnode(%nyx_string* %674, { i64, i8* }* %675)
  ret { i64, i8* }* %676
else177:
  br label %merge178
merge178:
  br label %merge168
else167:
  br label %merge168
merge168:
  %677 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %678 = alloca %Token
  store %Token %677, %Token* %678
  %679 = load %Token, %Token* %678
  %680 = call %nyx_string* @get_token_value(%Token %679)
  %681 = alloca %nyx_string*
  store %nyx_string* %680, %nyx_string** %681
  %682 = load %Token, %Token* %678
  %683 = call %nyx_string* @get_token_type(%Token %682)
  %684 = alloca %nyx_string*
  store %nyx_string* %683, %nyx_string** %684
  %685 = getelementptr [8 x i8], [8 x i8]* @.str336, i32 0, i32 0
  %686 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str336.c, i8* %685)
  %687 = load %Token, %Token* %678
  %688 = call i64 @get_token_line(%Token %687)
  %689 = load %Token, %Token* %678
  %690 = call i64 @get_token_column(%Token %689)
  %691 = getelementptr [38 x i8], [38 x i8]* @.str337, i32 0, i32 0
  %692 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str337.c, i8* %691)
  %693 = load %nyx_string*, %nyx_string** %681
  %694 = call %nyx_string* @nyx_string_concat(%nyx_string* %692, %nyx_string* %693)
  %695 = getelementptr [4 x i8], [4 x i8]* @.str338, i32 0, i32 0
  %696 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str338.c, i8* %695)
  %697 = call %nyx_string* @nyx_string_concat(%nyx_string* %694, %nyx_string* %696)
  %698 = load %nyx_string*, %nyx_string** %684
  %699 = call %nyx_string* @nyx_string_concat(%nyx_string* %697, %nyx_string* %698)
  %700 = getelementptr [2 x i8], [2 x i8]* @.str339, i32 0, i32 0
  %701 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str339.c, i8* %700)
  %702 = call %nyx_string* @nyx_string_concat(%nyx_string* %699, %nyx_string* %701)
  %703 = getelementptr [34 x i8], [34 x i8]* @.str340, i32 0, i32 0
  %704 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str340.c, i8* %703)
  %705 = load %nyx_string*, %nyx_string** %681
  %706 = call %nyx_string* @nyx_string_concat(%nyx_string* %704, %nyx_string* %705)
  %707 = getelementptr [4 x i8], [4 x i8]* @.str341, i32 0, i32 0
  %708 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str341.c, i8* %707)
  %709 = call %nyx_string* @nyx_string_concat(%nyx_string* %706, %nyx_string* %708)
  %710 = load %nyx_string*, %nyx_string** %684
  %711 = call %nyx_string* @nyx_string_concat(%nyx_string* %709, %nyx_string* %710)
  %712 = getelementptr [2 x i8], [2 x i8]* @.str342, i32 0, i32 0
  %713 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str342.c, i8* %712)
  %714 = call %nyx_string* @nyx_string_concat(%nyx_string* %711, %nyx_string* %713)
  %715 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %702, %nyx_string* %714)
  %716 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %686, i64 %688, i64 %690, %nyx_string* %715)
  %717 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %718 = getelementptr [6 x i8], [6 x i8]* @.str343, i32 0, i32 0
  %719 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str343.c, i8* %718)
  %720 = call { i64, i8* }* @nyx_array_new_ptr()
  %721 = call { i64, i8* }* @make_astnode(%nyx_string* %719, { i64, i8* }* %720)
  ret { i64, i8* }* %721
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
  %23 = getelementptr [11 x i8], [11 x i8]* @.str344, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str344.c, i8* %23)
  %25 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %24)
  %26 = call { i64, i8* }* @nyx_array_new_ptr()
  %27 = alloca { i64, i8* }*
  store { i64, i8* }* %26, { i64, i8* }** %27
  %28 = call { i64, i8* }* @nyx_array_new_ptr()
  %29 = alloca { i64, i8* }*
  store { i64, i8* }* %28, { i64, i8* }** %29
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
  %34 = load i64, i64* %8
  %35 = icmp eq i64 %34, 1
  br i1 %35, label %then3, label %else4
then3:
  store i1 1, i1* %30
  br label %merge5
else4:
  %36 = getelementptr [4 x i8], [4 x i8]* @.str345, i32 0, i32 0
  %37 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str345.c, i8* %36)
  %38 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %37)
  br i1 %38, label %then6, label %else7
then6:
  %39 = getelementptr [8 x i8], [8 x i8]* @.str346, i32 0, i32 0
  %40 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str346.c, i8* %39)
  %41 = load i64, i64* @g_last_line
  %42 = load i64, i64* @g_last_col
  %43 = getelementptr [53 x i8], [53 x i8]* @.str347, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str347.c, i8* %43)
  %45 = getelementptr [59 x i8], [59 x i8]* @.str348, i32 0, i32 0
  %46 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str348.c, i8* %45)
  %47 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %44, %nyx_string* %46)
  %48 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %40, i64 %41, i64 %42, %nyx_string* %47)
  store i1 1, i1* %30
  br label %merge8
else7:
  %49 = getelementptr [12 x i8], [12 x i8]* @.str349, i32 0, i32 0
  %50 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str349.c, i8* %49)
  %51 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %50)
  br i1 %51, label %then9, label %else10
then9:
  %52 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %30
  br label %merge11
else10:
  %53 = load { i64, i8* }*, { i64, i8* }** %27
  %54 = call i64 @nyx_array_length({ i64, i8* }* %53)
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %then12, label %else13
then12:
  %56 = getelementptr [6 x i8], [6 x i8]* @.str350, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str350.c, i8* %56)
  %58 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %57)
  br i1 %58, label %then15, label %else16
then15:
  %59 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge17
else16:
  br label %merge17
merge17:
  br label %merge14
else13:
  br label %merge14
merge14:
  %60 = getelementptr [12 x i8], [12 x i8]* @.str351, i32 0, i32 0
  %61 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str351.c, i8* %60)
  %62 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %61)
  br i1 %62, label %then18, label %else19
then18:
  %63 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %30
  br label %merge20
else19:
  %64 = getelementptr [7 x i8], [7 x i8]* @.str352, i32 0, i32 0
  %65 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str352.c, i8* %64)
  %66 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %65)
  %67 = alloca %Token
  store %Token %66, %Token* %67
  %68 = getelementptr [6 x i8], [6 x i8]* @.str353, i32 0, i32 0
  %69 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str353.c, i8* %68)
  %70 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %69)
  %71 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %72 = alloca { i64, i8* }*
  store { i64, i8* }* %71, { i64, i8* }** %72
  %73 = load { i64, i8* }*, { i64, i8* }** %27
  %74 = load %Token, %Token* %67
  %75 = call %nyx_string* @get_token_value(%Token %74)
  %76 = ptrtoint %nyx_string* %75 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %73, i64 %76, i64 2)
  %77 = load { i64, i8* }*, { i64, i8* }** %29
  %78 = load { i64, i8* }*, { i64, i8* }** %72
  %79 = ptrtoint { i64, i8* }* %78 to i64
  call void @nyx_array_push({ i64, i8* }* %77, i64 %79)
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
  %80 = getelementptr [12 x i8], [12 x i8]* @.str354, i32 0, i32 0
  %81 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str354.c, i8* %80)
  %82 = call { i64, i8* }* @nyx_array_new_ptr()
  %83 = load { i64, i8* }*, { i64, i8* }** %27
  %84 = bitcast { i64, i8* }* %83 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %82, i8* %84)
  %85 = load { i64, i8* }*, { i64, i8* }** %29
  %86 = bitcast { i64, i8* }* %85 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %82, i8* %86)
  %87 = call { i64, i8* }* @make_astnode(%nyx_string* %81, { i64, i8* }* %82)
  ret { i64, i8* }* %87
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
  %23 = getelementptr [13 x i8], [13 x i8]* @.str355, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str355.c, i8* %23)
  %25 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %24)
  %26 = call { i64, i8* }* @nyx_array_new_ptr()
  %27 = alloca { i64, i8* }*
  store { i64, i8* }* %26, { i64, i8* }** %27
  %28 = load i64, i64* %6
  %29 = alloca i64
  store i64 %28, i64* %29
  store i64 0, i64* %6
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
  %34 = getelementptr [14 x i8], [14 x i8]* @.str356, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str356.c, i8* %34)
  %36 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %35)
  br i1 %36, label %then3, label %else4
then3:
  %37 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %30
  br label %merge5
else4:
  %38 = load { i64, i8* }*, { i64, i8* }** %27
  %39 = call i64 @nyx_array_length({ i64, i8* }* %38)
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %then6, label %else7
then6:
  %41 = getelementptr [6 x i8], [6 x i8]* @.str357, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str357.c, i8* %41)
  %43 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %42)
  br label %merge8
else7:
  br label %merge8
merge8:
  %44 = load { i64, i8* }*, { i64, i8* }** %27
  %45 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %46 = ptrtoint { i64, i8* }* %45 to i64
  call void @nyx_array_push({ i64, i8* }* %44, i64 %46)
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %47 = load i64, i64* %29
  store i64 %47, i64* %6
  %48 = getelementptr [6 x i8], [6 x i8]* @.str358, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str358.c, i8* %48)
  %50 = call { i64, i8* }* @nyx_array_new_ptr()
  %51 = load { i64, i8* }*, { i64, i8* }** %27
  %52 = bitcast { i64, i8* }* %51 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %50, i8* %52)
  %53 = call { i64, i8* }* @make_astnode(%nyx_string* %49, { i64, i8* }* %50)
  ret { i64, i8* }* %53
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
  %23 = getelementptr [5 x i8], [5 x i8]* @.str359, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str359.c, i8* %23)
  %25 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %24)
  %26 = getelementptr [11 x i8], [11 x i8]* @.str360, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str360.c, i8* %26)
  %28 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %27)
  %29 = alloca %Token
  store %Token %28, %Token* %29
  %30 = load %Token, %Token* %29
  %31 = call %nyx_string* @get_token_value(%Token %30)
  %32 = alloca %nyx_string*
  store %nyx_string* %31, %nyx_string** %32
  %33 = call { i64, i8* }* @nyx_array_new_ptr()
  %34 = alloca { i64, i8* }*
  store { i64, i8* }* %33, { i64, i8* }** %34
  %35 = getelementptr [5 x i8], [5 x i8]* @.str361, i32 0, i32 0
  %36 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str361.c, i8* %35)
  %37 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %36)
  br i1 %37, label %then0, label %else1
then0:
  %38 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %39 = getelementptr [11 x i8], [11 x i8]* @.str362, i32 0, i32 0
  %40 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str362.c, i8* %39)
  %41 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %40)
  %42 = alloca %Token
  store %Token %41, %Token* %42
  %43 = load { i64, i8* }*, { i64, i8* }** %34
  %44 = load %Token, %Token* %42
  %45 = call %nyx_string* @get_token_value(%Token %44)
  %46 = ptrtoint %nyx_string* %45 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %43, i64 %46, i64 2)
  %47 = alloca i1
  store i1 0, i1* %47
  %48 = call i8* @llvm.stacksave()
  br label %while_cond3
while_cond3:
  %49 = load i1, i1* %47
  %50 = xor i1 %49, true
  br i1 %50, label %while_body4, label %while_end5
while_body4:
  call void @llvm.stackrestore(i8* %48)
  %51 = getelementptr [6 x i8], [6 x i8]* @.str363, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str363.c, i8* %51)
  %53 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %52)
  br i1 %53, label %then6, label %else7
then6:
  %54 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %55 = getelementptr [11 x i8], [11 x i8]* @.str364, i32 0, i32 0
  %56 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str364.c, i8* %55)
  %57 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %56)
  %58 = alloca %Token
  store %Token %57, %Token* %58
  %59 = load { i64, i8* }*, { i64, i8* }** %34
  %60 = load %Token, %Token* %58
  %61 = call %nyx_string* @get_token_value(%Token %60)
  %62 = ptrtoint %nyx_string* %61 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %59, i64 %62, i64 2)
  br label %merge8
else7:
  store i1 1, i1* %47
  br label %merge8
merge8:
  br label %while_cond3
while_end5:
  %63 = getelementptr [8 x i8], [8 x i8]* @.str365, i32 0, i32 0
  %64 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str365.c, i8* %63)
  %65 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %64)
  br label %merge2
else1:
  br label %merge2
merge2:
  %66 = getelementptr [11 x i8], [11 x i8]* @.str366, i32 0, i32 0
  %67 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str366.c, i8* %66)
  %68 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %67)
  %69 = call { i64, i8* }* @nyx_array_new_ptr()
  %70 = alloca { i64, i8* }*
  store { i64, i8* }* %69, { i64, i8* }** %70
  %71 = alloca i1
  store i1 0, i1* %71
  %72 = call i8* @llvm.stacksave()
  br label %while_cond9
while_cond9:
  %73 = load i1, i1* %71
  %74 = xor i1 %73, true
  br i1 %74, label %while_body10, label %while_end11
while_body10:
  call void @llvm.stackrestore(i8* %72)
  %75 = getelementptr [12 x i8], [12 x i8]* @.str367, i32 0, i32 0
  %76 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str367.c, i8* %75)
  %77 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %76)
  br i1 %77, label %then12, label %else13
then12:
  %78 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %71
  br label %merge14
else13:
  %79 = load { i64, i8* }*, { i64, i8* }** %70
  %80 = call i64 @nyx_array_length({ i64, i8* }* %79)
  %81 = icmp sgt i64 %80, 0
  br i1 %81, label %then15, label %else16
then15:
  %82 = getelementptr [6 x i8], [6 x i8]* @.str368, i32 0, i32 0
  %83 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str368.c, i8* %82)
  %84 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %83)
  br i1 %84, label %then18, label %else19
then18:
  %85 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge20
else19:
  br label %merge20
merge20:
  br label %merge17
else16:
  br label %merge17
merge17:
  %86 = getelementptr [12 x i8], [12 x i8]* @.str369, i32 0, i32 0
  %87 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str369.c, i8* %86)
  %88 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %87)
  br i1 %88, label %then21, label %else22
then21:
  %89 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %71
  br label %merge23
else22:
  %90 = getelementptr [11 x i8], [11 x i8]* @.str370, i32 0, i32 0
  %91 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str370.c, i8* %90)
  %92 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %91)
  %93 = alloca %Token
  store %Token %92, %Token* %93
  %94 = load %Token, %Token* %93
  %95 = call %nyx_string* @get_token_value(%Token %94)
  %96 = alloca %nyx_string*
  store %nyx_string* %95, %nyx_string** %96
  %97 = call { i64, i8* }* @nyx_array_new_ptr()
  %98 = alloca { i64, i8* }*
  store { i64, i8* }* %97, { i64, i8* }** %98
  %99 = getelementptr [11 x i8], [11 x i8]* @.str371, i32 0, i32 0
  %100 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str371.c, i8* %99)
  %101 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %100)
  br i1 %101, label %then24, label %else25
then24:
  %102 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %103 = alloca i1
  store i1 0, i1* %103
  %104 = call i8* @llvm.stacksave()
  br label %while_cond27
while_cond27:
  %105 = load i1, i1* %103
  %106 = xor i1 %105, true
  br i1 %106, label %while_body28, label %while_end29
while_body28:
  call void @llvm.stackrestore(i8* %104)
  %107 = getelementptr [12 x i8], [12 x i8]* @.str372, i32 0, i32 0
  %108 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str372.c, i8* %107)
  %109 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %108)
  br i1 %109, label %then30, label %else31
then30:
  %110 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %103
  br label %merge32
else31:
  %111 = load { i64, i8* }*, { i64, i8* }** %98
  %112 = call i64 @nyx_array_length({ i64, i8* }* %111)
  %113 = icmp sgt i64 %112, 0
  br i1 %113, label %then33, label %else34
then33:
  %114 = getelementptr [6 x i8], [6 x i8]* @.str373, i32 0, i32 0
  %115 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str373.c, i8* %114)
  %116 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %115)
  br label %merge35
else34:
  br label %merge35
merge35:
  %117 = getelementptr [11 x i8], [11 x i8]* @.str374, i32 0, i32 0
  %118 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str374.c, i8* %117)
  %119 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %118)
  %120 = alloca %Token
  store %Token %119, %Token* %120
  %121 = load { i64, i8* }*, { i64, i8* }** %98
  %122 = load %Token, %Token* %120
  %123 = call %nyx_string* @get_token_value(%Token %122)
  %124 = ptrtoint %nyx_string* %123 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %121, i64 %124, i64 2)
  br label %merge32
merge32:
  br label %while_cond27
while_end29:
  br label %merge26
else25:
  br label %merge26
merge26:
  %125 = call { i64, i8* }* @nyx_array_new_ptr()
  %126 = alloca { i64, i8* }*
  store { i64, i8* }* %125, { i64, i8* }** %126
  %127 = load { i64, i8* }*, { i64, i8* }** %126
  %128 = load %nyx_string*, %nyx_string** %96
  %129 = ptrtoint %nyx_string* %128 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %127, i64 %129, i64 2)
  %130 = load { i64, i8* }*, { i64, i8* }** %126
  %131 = load { i64, i8* }*, { i64, i8* }** %98
  %132 = ptrtoint { i64, i8* }* %131 to i64
  call void @nyx_array_push({ i64, i8* }* %130, i64 %132)
  %133 = load { i64, i8* }*, { i64, i8* }** %70
  %134 = load { i64, i8* }*, { i64, i8* }** %126
  %135 = ptrtoint { i64, i8* }* %134 to i64
  call void @nyx_array_push({ i64, i8* }* %133, i64 %135)
  br label %merge23
merge23:
  br label %merge14
merge14:
  br label %while_cond9
while_end11:
  %136 = getelementptr [9 x i8], [9 x i8]* @.str375, i32 0, i32 0
  %137 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str375.c, i8* %136)
  %138 = call { i64, i8* }* @nyx_array_new_ptr()
  %139 = load %nyx_string*, %nyx_string** %32
  %140 = ptrtoint %nyx_string* %139 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %138, i64 %140, i64 2)
  %141 = load { i64, i8* }*, { i64, i8* }** %70
  %142 = bitcast { i64, i8* }* %141 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %138, i8* %142)
  %143 = load { i64, i8* }*, { i64, i8* }** %34
  %144 = bitcast { i64, i8* }* %143 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %138, i8* %144)
  %145 = call { i64, i8* }* @make_astnode(%nyx_string* %137, { i64, i8* }* %138)
  ret { i64, i8* }* %145
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
  %23 = getelementptr [9 x i8], [9 x i8]* @.str376, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str376.c, i8* %23)
  %25 = call { i64, i8* }* @nyx_array_new_ptr()
  %26 = call { i64, i8* }* @make_astnode(%nyx_string* %24, { i64, i8* }* %25)
  %27 = alloca { i64, i8* }*
  store { i64, i8* }* %26, { i64, i8* }** %27
  %28 = getelementptr [7 x i8], [7 x i8]* @.str377, i32 0, i32 0
  %29 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str377.c, i8* %28)
  %30 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %29)
  br i1 %30, label %then0, label %else1
then0:
  %31 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %32 = alloca %Token
  store %Token %31, %Token* %32
  %33 = load %Token, %Token* %32
  %34 = call %nyx_string* @get_token_value(%Token %33)
  %35 = alloca %nyx_string*
  store %nyx_string* %34, %nyx_string** %35
  %36 = load %nyx_string*, %nyx_string** %35
  %37 = getelementptr [2 x i8], [2 x i8]* @.str378, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str378.c, i8* %37)
  %39 = call i64 @nyx_string_index_of(%nyx_string* %36, %nyx_string* %38)
  %40 = icmp sge i64 %39, 0
  br i1 %40, label %then3, label %else4
then3:
  %41 = getelementptr [16 x i8], [16 x i8]* @.str379, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str379.c, i8* %41)
  %43 = call { i64, i8* }* @nyx_array_new_ptr()
  %44 = load %nyx_string*, %nyx_string** %35
  %45 = ptrtoint %nyx_string* %44 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %43, i64 %45, i64 2)
  %46 = getelementptr [6 x i8], [6 x i8]* @.str380, i32 0, i32 0
  %47 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str380.c, i8* %46)
  %48 = ptrtoint %nyx_string* %47 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %43, i64 %48, i64 2)
  %49 = call { i64, i8* }* @make_astnode(%nyx_string* %42, { i64, i8* }* %43)
  ret { i64, i8* }* %49
else4:
  br label %merge5
merge5:
  %50 = getelementptr [16 x i8], [16 x i8]* @.str381, i32 0, i32 0
  %51 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str381.c, i8* %50)
  %52 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %51)
  br i1 %52, label %then6, label %else7
then6:
  %53 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %54 = getelementptr [1 x i8], [1 x i8]* @.str382, i32 0, i32 0
  %55 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str382.c, i8* %54)
  %56 = alloca %nyx_string*
  store %nyx_string* %55, %nyx_string** %56
  %57 = getelementptr [6 x i8], [6 x i8]* @.str383, i32 0, i32 0
  %58 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str383.c, i8* %57)
  %59 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %58)
  br i1 %59, label %then9, label %else10
then9:
  %60 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %61 = getelementptr [7 x i8], [7 x i8]* @.str384, i32 0, i32 0
  %62 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str384.c, i8* %61)
  %63 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %62)
  %64 = alloca %Token
  store %Token %63, %Token* %64
  %65 = getelementptr [2 x i8], [2 x i8]* @.str385, i32 0, i32 0
  %66 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str385.c, i8* %65)
  %67 = load %Token, %Token* %64
  %68 = call %nyx_string* @get_token_value(%Token %67)
  %69 = call %nyx_string* @nyx_string_concat(%nyx_string* %66, %nyx_string* %68)
  store %nyx_string* %69, %nyx_string** %56
  br label %merge11
else10:
  %70 = getelementptr [7 x i8], [7 x i8]* @.str386, i32 0, i32 0
  %71 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str386.c, i8* %70)
  %72 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %71)
  %73 = alloca %Token
  store %Token %72, %Token* %73
  %74 = load %Token, %Token* %73
  %75 = call %nyx_string* @get_token_value(%Token %74)
  store %nyx_string* %75, %nyx_string** %56
  br label %merge11
merge11:
  %76 = getelementptr [14 x i8], [14 x i8]* @.str387, i32 0, i32 0
  %77 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str387.c, i8* %76)
  %78 = call { i64, i8* }* @nyx_array_new_ptr()
  %79 = load %nyx_string*, %nyx_string** %35
  %80 = ptrtoint %nyx_string* %79 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %78, i64 %80, i64 2)
  %81 = load %nyx_string*, %nyx_string** %56
  %82 = ptrtoint %nyx_string* %81 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %78, i64 %82, i64 2)
  %83 = getelementptr [5 x i8], [5 x i8]* @.str388, i32 0, i32 0
  %84 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str388.c, i8* %83)
  %85 = ptrtoint %nyx_string* %84 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %78, i64 %85, i64 2)
  %86 = getelementptr [4 x i8], [4 x i8]* @.str389, i32 0, i32 0
  %87 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str389.c, i8* %86)
  %88 = ptrtoint %nyx_string* %87 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %78, i64 %88, i64 2)
  %89 = call { i64, i8* }* @make_astnode(%nyx_string* %77, { i64, i8* }* %78)
  ret { i64, i8* }* %89
else7:
  br label %merge8
merge8:
  %90 = getelementptr [6 x i8], [6 x i8]* @.str390, i32 0, i32 0
  %91 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str390.c, i8* %90)
  %92 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %91)
  br i1 %92, label %then12, label %else13
then12:
  %93 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %94 = getelementptr [1 x i8], [1 x i8]* @.str391, i32 0, i32 0
  %95 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str391.c, i8* %94)
  %96 = alloca %nyx_string*
  store %nyx_string* %95, %nyx_string** %96
  %97 = getelementptr [6 x i8], [6 x i8]* @.str392, i32 0, i32 0
  %98 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str392.c, i8* %97)
  %99 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %98)
  br i1 %99, label %then15, label %else16
then15:
  %100 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %101 = getelementptr [7 x i8], [7 x i8]* @.str393, i32 0, i32 0
  %102 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str393.c, i8* %101)
  %103 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %102)
  %104 = alloca %Token
  store %Token %103, %Token* %104
  %105 = getelementptr [2 x i8], [2 x i8]* @.str394, i32 0, i32 0
  %106 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str394.c, i8* %105)
  %107 = load %Token, %Token* %104
  %108 = call %nyx_string* @get_token_value(%Token %107)
  %109 = call %nyx_string* @nyx_string_concat(%nyx_string* %106, %nyx_string* %108)
  store %nyx_string* %109, %nyx_string** %96
  br label %merge17
else16:
  %110 = getelementptr [7 x i8], [7 x i8]* @.str395, i32 0, i32 0
  %111 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str395.c, i8* %110)
  %112 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %111)
  %113 = alloca %Token
  store %Token %112, %Token* %113
  %114 = load %Token, %Token* %113
  %115 = call %nyx_string* @get_token_value(%Token %114)
  store %nyx_string* %115, %nyx_string** %96
  br label %merge17
merge17:
  %116 = getelementptr [14 x i8], [14 x i8]* @.str396, i32 0, i32 0
  %117 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str396.c, i8* %116)
  %118 = call { i64, i8* }* @nyx_array_new_ptr()
  %119 = load %nyx_string*, %nyx_string** %35
  %120 = ptrtoint %nyx_string* %119 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %118, i64 %120, i64 2)
  %121 = load %nyx_string*, %nyx_string** %96
  %122 = ptrtoint %nyx_string* %121 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %118, i64 %122, i64 2)
  %123 = getelementptr [6 x i8], [6 x i8]* @.str397, i32 0, i32 0
  %124 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str397.c, i8* %123)
  %125 = ptrtoint %nyx_string* %124 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %118, i64 %125, i64 2)
  %126 = getelementptr [4 x i8], [4 x i8]* @.str398, i32 0, i32 0
  %127 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str398.c, i8* %126)
  %128 = ptrtoint %nyx_string* %127 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %118, i64 %128, i64 2)
  %129 = call { i64, i8* }* @make_astnode(%nyx_string* %117, { i64, i8* }* %118)
  ret { i64, i8* }* %129
else13:
  br label %merge14
merge14:
  %130 = getelementptr [16 x i8], [16 x i8]* @.str399, i32 0, i32 0
  %131 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str399.c, i8* %130)
  %132 = call { i64, i8* }* @nyx_array_new_ptr()
  %133 = load %nyx_string*, %nyx_string** %35
  %134 = ptrtoint %nyx_string* %133 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %132, i64 %134, i64 2)
  %135 = getelementptr [4 x i8], [4 x i8]* @.str400, i32 0, i32 0
  %136 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str400.c, i8* %135)
  %137 = ptrtoint %nyx_string* %136 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %132, i64 %137, i64 2)
  %138 = call { i64, i8* }* @make_astnode(%nyx_string* %131, { i64, i8* }* %132)
  ret { i64, i8* }* %138
else1:
  br label %merge2
merge2:
  %139 = getelementptr [7 x i8], [7 x i8]* @.str401, i32 0, i32 0
  %140 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str401.c, i8* %139)
  %141 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %140)
  br i1 %141, label %then18, label %else19
then18:
  %142 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %143 = alloca %Token
  store %Token %142, %Token* %143
  %144 = getelementptr [16 x i8], [16 x i8]* @.str402, i32 0, i32 0
  %145 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str402.c, i8* %144)
  %146 = call { i64, i8* }* @nyx_array_new_ptr()
  %147 = load %Token, %Token* %143
  %148 = call %nyx_string* @get_token_value(%Token %147)
  %149 = ptrtoint %nyx_string* %148 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %146, i64 %149, i64 2)
  %150 = getelementptr [7 x i8], [7 x i8]* @.str403, i32 0, i32 0
  %151 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str403.c, i8* %150)
  %152 = ptrtoint %nyx_string* %151 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %146, i64 %152, i64 2)
  %153 = call { i64, i8* }* @make_astnode(%nyx_string* %145, { i64, i8* }* %146)
  ret { i64, i8* }* %153
else19:
  br label %merge20
merge20:
  %154 = getelementptr [5 x i8], [5 x i8]* @.str404, i32 0, i32 0
  %155 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str404.c, i8* %154)
  %156 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %155)
  br i1 %156, label %then21, label %else22
then21:
  %157 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %158 = getelementptr [16 x i8], [16 x i8]* @.str405, i32 0, i32 0
  %159 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str405.c, i8* %158)
  %160 = call { i64, i8* }* @nyx_array_new_ptr()
  %161 = getelementptr [5 x i8], [5 x i8]* @.str406, i32 0, i32 0
  %162 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str406.c, i8* %161)
  %163 = ptrtoint %nyx_string* %162 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %160, i64 %163, i64 2)
  %164 = getelementptr [5 x i8], [5 x i8]* @.str407, i32 0, i32 0
  %165 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str407.c, i8* %164)
  %166 = ptrtoint %nyx_string* %165 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %160, i64 %166, i64 2)
  %167 = call { i64, i8* }* @make_astnode(%nyx_string* %159, { i64, i8* }* %160)
  ret { i64, i8* }* %167
else22:
  br label %merge23
merge23:
  %168 = getelementptr [6 x i8], [6 x i8]* @.str408, i32 0, i32 0
  %169 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str408.c, i8* %168)
  %170 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %169)
  br i1 %170, label %then24, label %else25
then24:
  %171 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %172 = getelementptr [16 x i8], [16 x i8]* @.str409, i32 0, i32 0
  %173 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str409.c, i8* %172)
  %174 = call { i64, i8* }* @nyx_array_new_ptr()
  %175 = getelementptr [6 x i8], [6 x i8]* @.str410, i32 0, i32 0
  %176 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str410.c, i8* %175)
  %177 = ptrtoint %nyx_string* %176 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %174, i64 %177, i64 2)
  %178 = getelementptr [5 x i8], [5 x i8]* @.str411, i32 0, i32 0
  %179 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str411.c, i8* %178)
  %180 = ptrtoint %nyx_string* %179 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %174, i64 %180, i64 2)
  %181 = call { i64, i8* }* @make_astnode(%nyx_string* %173, { i64, i8* }* %174)
  ret { i64, i8* }* %181
else25:
  br label %merge26
merge26:
  %182 = getelementptr [6 x i8], [6 x i8]* @.str412, i32 0, i32 0
  %183 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str412.c, i8* %182)
  %184 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %183)
  br i1 %184, label %then27, label %else28
then27:
  %185 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %186 = getelementptr [7 x i8], [7 x i8]* @.str413, i32 0, i32 0
  %187 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str413.c, i8* %186)
  %188 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %187)
  br i1 %188, label %then30, label %else31
then30:
  %189 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %190 = alloca %Token
  store %Token %189, %Token* %190
  %191 = load %Token, %Token* %190
  %192 = call %nyx_string* @get_token_value(%Token %191)
  %193 = alloca %nyx_string*
  store %nyx_string* %192, %nyx_string** %193
  %194 = load %nyx_string*, %nyx_string** %193
  %195 = getelementptr [2 x i8], [2 x i8]* @.str414, i32 0, i32 0
  %196 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str414.c, i8* %195)
  %197 = call i64 @nyx_string_index_of(%nyx_string* %194, %nyx_string* %196)
  %198 = icmp sge i64 %197, 0
  br i1 %198, label %then33, label %else34
then33:
  %199 = getelementptr [16 x i8], [16 x i8]* @.str415, i32 0, i32 0
  %200 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str415.c, i8* %199)
  %201 = call { i64, i8* }* @nyx_array_new_ptr()
  %202 = getelementptr [2 x i8], [2 x i8]* @.str416, i32 0, i32 0
  %203 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str416.c, i8* %202)
  %204 = load %nyx_string*, %nyx_string** %193
  %205 = call %nyx_string* @nyx_string_concat(%nyx_string* %203, %nyx_string* %204)
  %206 = ptrtoint %nyx_string* %205 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %201, i64 %206, i64 2)
  %207 = getelementptr [6 x i8], [6 x i8]* @.str417, i32 0, i32 0
  %208 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str417.c, i8* %207)
  %209 = ptrtoint %nyx_string* %208 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %201, i64 %209, i64 2)
  %210 = call { i64, i8* }* @make_astnode(%nyx_string* %200, { i64, i8* }* %201)
  ret { i64, i8* }* %210
else34:
  br label %merge35
merge35:
  %211 = getelementptr [16 x i8], [16 x i8]* @.str418, i32 0, i32 0
  %212 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str418.c, i8* %211)
  %213 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %212)
  br i1 %213, label %then36, label %else37
then36:
  %214 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %215 = getelementptr [1 x i8], [1 x i8]* @.str419, i32 0, i32 0
  %216 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str419.c, i8* %215)
  %217 = alloca %nyx_string*
  store %nyx_string* %216, %nyx_string** %217
  %218 = getelementptr [6 x i8], [6 x i8]* @.str420, i32 0, i32 0
  %219 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str420.c, i8* %218)
  %220 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %219)
  br i1 %220, label %then39, label %else40
then39:
  %221 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %222 = getelementptr [7 x i8], [7 x i8]* @.str421, i32 0, i32 0
  %223 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str421.c, i8* %222)
  %224 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %223)
  %225 = alloca %Token
  store %Token %224, %Token* %225
  %226 = getelementptr [2 x i8], [2 x i8]* @.str422, i32 0, i32 0
  %227 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str422.c, i8* %226)
  %228 = load %Token, %Token* %225
  %229 = call %nyx_string* @get_token_value(%Token %228)
  %230 = call %nyx_string* @nyx_string_concat(%nyx_string* %227, %nyx_string* %229)
  store %nyx_string* %230, %nyx_string** %217
  br label %merge41
else40:
  %231 = getelementptr [7 x i8], [7 x i8]* @.str423, i32 0, i32 0
  %232 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str423.c, i8* %231)
  %233 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %232)
  %234 = alloca %Token
  store %Token %233, %Token* %234
  %235 = load %Token, %Token* %234
  %236 = call %nyx_string* @get_token_value(%Token %235)
  store %nyx_string* %236, %nyx_string** %217
  br label %merge41
merge41:
  %237 = getelementptr [14 x i8], [14 x i8]* @.str424, i32 0, i32 0
  %238 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str424.c, i8* %237)
  %239 = call { i64, i8* }* @nyx_array_new_ptr()
  %240 = getelementptr [2 x i8], [2 x i8]* @.str425, i32 0, i32 0
  %241 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str425.c, i8* %240)
  %242 = load %nyx_string*, %nyx_string** %193
  %243 = call %nyx_string* @nyx_string_concat(%nyx_string* %241, %nyx_string* %242)
  %244 = ptrtoint %nyx_string* %243 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %239, i64 %244, i64 2)
  %245 = load %nyx_string*, %nyx_string** %217
  %246 = ptrtoint %nyx_string* %245 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %239, i64 %246, i64 2)
  %247 = getelementptr [5 x i8], [5 x i8]* @.str426, i32 0, i32 0
  %248 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str426.c, i8* %247)
  %249 = ptrtoint %nyx_string* %248 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %239, i64 %249, i64 2)
  %250 = getelementptr [4 x i8], [4 x i8]* @.str427, i32 0, i32 0
  %251 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str427.c, i8* %250)
  %252 = ptrtoint %nyx_string* %251 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %239, i64 %252, i64 2)
  %253 = call { i64, i8* }* @make_astnode(%nyx_string* %238, { i64, i8* }* %239)
  ret { i64, i8* }* %253
else37:
  br label %merge38
merge38:
  %254 = getelementptr [6 x i8], [6 x i8]* @.str428, i32 0, i32 0
  %255 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str428.c, i8* %254)
  %256 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %255)
  br i1 %256, label %then42, label %else43
then42:
  %257 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %258 = getelementptr [1 x i8], [1 x i8]* @.str429, i32 0, i32 0
  %259 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str429.c, i8* %258)
  %260 = alloca %nyx_string*
  store %nyx_string* %259, %nyx_string** %260
  %261 = getelementptr [6 x i8], [6 x i8]* @.str430, i32 0, i32 0
  %262 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str430.c, i8* %261)
  %263 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %262)
  br i1 %263, label %then45, label %else46
then45:
  %264 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %265 = getelementptr [7 x i8], [7 x i8]* @.str431, i32 0, i32 0
  %266 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str431.c, i8* %265)
  %267 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %266)
  %268 = alloca %Token
  store %Token %267, %Token* %268
  %269 = getelementptr [2 x i8], [2 x i8]* @.str432, i32 0, i32 0
  %270 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str432.c, i8* %269)
  %271 = load %Token, %Token* %268
  %272 = call %nyx_string* @get_token_value(%Token %271)
  %273 = call %nyx_string* @nyx_string_concat(%nyx_string* %270, %nyx_string* %272)
  store %nyx_string* %273, %nyx_string** %260
  br label %merge47
else46:
  %274 = getelementptr [7 x i8], [7 x i8]* @.str433, i32 0, i32 0
  %275 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str433.c, i8* %274)
  %276 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %275)
  %277 = alloca %Token
  store %Token %276, %Token* %277
  %278 = load %Token, %Token* %277
  %279 = call %nyx_string* @get_token_value(%Token %278)
  store %nyx_string* %279, %nyx_string** %260
  br label %merge47
merge47:
  %280 = getelementptr [14 x i8], [14 x i8]* @.str434, i32 0, i32 0
  %281 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str434.c, i8* %280)
  %282 = call { i64, i8* }* @nyx_array_new_ptr()
  %283 = getelementptr [2 x i8], [2 x i8]* @.str435, i32 0, i32 0
  %284 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str435.c, i8* %283)
  %285 = load %nyx_string*, %nyx_string** %193
  %286 = call %nyx_string* @nyx_string_concat(%nyx_string* %284, %nyx_string* %285)
  %287 = ptrtoint %nyx_string* %286 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %282, i64 %287, i64 2)
  %288 = load %nyx_string*, %nyx_string** %260
  %289 = ptrtoint %nyx_string* %288 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %282, i64 %289, i64 2)
  %290 = getelementptr [6 x i8], [6 x i8]* @.str436, i32 0, i32 0
  %291 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str436.c, i8* %290)
  %292 = ptrtoint %nyx_string* %291 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %282, i64 %292, i64 2)
  %293 = getelementptr [4 x i8], [4 x i8]* @.str437, i32 0, i32 0
  %294 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str437.c, i8* %293)
  %295 = ptrtoint %nyx_string* %294 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %282, i64 %295, i64 2)
  %296 = call { i64, i8* }* @make_astnode(%nyx_string* %281, { i64, i8* }* %282)
  ret { i64, i8* }* %296
else43:
  br label %merge44
merge44:
  %297 = getelementptr [16 x i8], [16 x i8]* @.str438, i32 0, i32 0
  %298 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str438.c, i8* %297)
  %299 = call { i64, i8* }* @nyx_array_new_ptr()
  %300 = getelementptr [2 x i8], [2 x i8]* @.str439, i32 0, i32 0
  %301 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str439.c, i8* %300)
  %302 = load %nyx_string*, %nyx_string** %193
  %303 = call %nyx_string* @nyx_string_concat(%nyx_string* %301, %nyx_string* %302)
  %304 = ptrtoint %nyx_string* %303 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %299, i64 %304, i64 2)
  %305 = getelementptr [4 x i8], [4 x i8]* @.str440, i32 0, i32 0
  %306 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str440.c, i8* %305)
  %307 = ptrtoint %nyx_string* %306 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %299, i64 %307, i64 2)
  %308 = call { i64, i8* }* @make_astnode(%nyx_string* %298, { i64, i8* }* %299)
  ret { i64, i8* }* %308
else31:
  br label %merge32
merge32:
  br label %merge29
else28:
  br label %merge29
merge29:
  %309 = getelementptr [11 x i8], [11 x i8]* @.str441, i32 0, i32 0
  %310 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str441.c, i8* %309)
  %311 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %310)
  br i1 %311, label %then48, label %else49
then48:
  %312 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %313 = alloca %Token
  store %Token %312, %Token* %313
  %314 = load %Token, %Token* %313
  %315 = call %nyx_string* @get_token_value(%Token %314)
  %316 = alloca %nyx_string*
  store %nyx_string* %315, %nyx_string** %316
  %317 = load %nyx_string*, %nyx_string** %316
  %318 = getelementptr [2 x i8], [2 x i8]* @.str442, i32 0, i32 0
  %319 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str442.c, i8* %318)
  %320 = call i1 @nyx_string_equals(%nyx_string* %317, %nyx_string* %319)
  br i1 %320, label %then51, label %else52
then51:
  %321 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge53
else52:
  %322 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %323 = load %nyx_string*, %nyx_string** %316
  %324 = alloca %nyx_string*
  store %nyx_string* %323, %nyx_string** %324
  %325 = getelementptr [4 x i8], [4 x i8]* @.str443, i32 0, i32 0
  %326 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str443.c, i8* %325)
  %327 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %326)
  br i1 %327, label %then54, label %else55
then54:
  %328 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %329 = getelementptr [11 x i8], [11 x i8]* @.str444, i32 0, i32 0
  %330 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str444.c, i8* %329)
  %331 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %330)
  %332 = alloca %Token
  store %Token %331, %Token* %332
  %333 = load %Token, %Token* %332
  %334 = call %nyx_string* @get_token_value(%Token %333)
  %335 = alloca %nyx_string*
  store %nyx_string* %334, %nyx_string** %335
  %336 = call { i64, i8* }* @nyx_array_new_ptr()
  %337 = alloca { i64, i8* }*
  store { i64, i8* }* %336, { i64, i8* }** %337
  %338 = alloca i1
  store i1 0, i1* %338
  %339 = call { i64, i8* }* @nyx_array_new_ptr()
  %340 = alloca { i64, i8* }*
  store { i64, i8* }* %339, { i64, i8* }** %340
  %341 = getelementptr [11 x i8], [11 x i8]* @.str445, i32 0, i32 0
  %342 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str445.c, i8* %341)
  %343 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %342)
  br i1 %343, label %then57, label %else58
then57:
  %344 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %345 = alloca i1
  store i1 0, i1* %345
  %346 = call i8* @llvm.stacksave()
  br label %while_cond60
while_cond60:
  %347 = load i1, i1* %345
  %348 = xor i1 %347, true
  br i1 %348, label %while_body61, label %while_end62
while_body61:
  call void @llvm.stackrestore(i8* %346)
  %349 = getelementptr [12 x i8], [12 x i8]* @.str446, i32 0, i32 0
  %350 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str446.c, i8* %349)
  %351 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %350)
  br i1 %351, label %then63, label %else64
then63:
  %352 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %345
  br label %merge65
else64:
  %353 = load { i64, i8* }*, { i64, i8* }** %340
  %354 = call i64 @nyx_array_length({ i64, i8* }* %353)
  %355 = icmp sgt i64 %354, 0
  br i1 %355, label %then66, label %else67
then66:
  %356 = getelementptr [6 x i8], [6 x i8]* @.str447, i32 0, i32 0
  %357 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str447.c, i8* %356)
  %358 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %357)
  br label %merge68
else67:
  br label %merge68
merge68:
  %359 = call { i64, i8* }* @parse__parse_single_pattern(%SharedEnv_parse* %env.param)
  %360 = alloca { i64, i8* }*
  store { i64, i8* }* %359, { i64, i8* }** %360
  %361 = load { i64, i8* }*, { i64, i8* }** %340
  %362 = load { i64, i8* }*, { i64, i8* }** %360
  %363 = ptrtoint { i64, i8* }* %362 to i64
  call void @nyx_array_push({ i64, i8* }* %361, i64 %363)
  %364 = alloca i1
  store i1 false, i1* %364
  %365 = getelementptr [19 x i8], [19 x i8]* @.str448, i32 0, i32 0
  %366 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str448.c, i8* %365)
  %367 = inttoptr i64 0 to %nyx_string*
  %368 = call i1 @nyx_string_equals(%nyx_string* %367, %nyx_string* %366)
  %369 = xor i1 %368, true
  br i1 %369, label %sc_and_rhs69, label %sc_and_end70
sc_and_rhs69:
  %370 = getelementptr [9 x i8], [9 x i8]* @.str449, i32 0, i32 0
  %371 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str449.c, i8* %370)
  %372 = inttoptr i64 0 to %nyx_string*
  %373 = call i1 @nyx_string_equals(%nyx_string* %372, %nyx_string* %371)
  %374 = xor i1 %373, true
  store i1 %374, i1* %364
  br label %sc_and_end70
sc_and_end70:
  %375 = load i1, i1* %364
  br i1 %375, label %then71, label %else72
then71:
  store i1 1, i1* %338
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
  %376 = load i1, i1* %338
  br i1 %376, label %then74, label %else75
then74:
  %377 = getelementptr [21 x i8], [21 x i8]* @.str450, i32 0, i32 0
  %378 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str450.c, i8* %377)
  %379 = call { i64, i8* }* @nyx_array_new_ptr()
  %380 = load %nyx_string*, %nyx_string** %324
  %381 = ptrtoint %nyx_string* %380 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %379, i64 %381, i64 2)
  %382 = load %nyx_string*, %nyx_string** %335
  %383 = ptrtoint %nyx_string* %382 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %379, i64 %383, i64 2)
  %384 = load { i64, i8* }*, { i64, i8* }** %340
  %385 = bitcast { i64, i8* }* %384 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %379, i8* %385)
  %386 = call { i64, i8* }* @make_astnode(%nyx_string* %378, { i64, i8* }* %379)
  store { i64, i8* }* %386, { i64, i8* }** %27
  br label %merge76
else75:
  %387 = alloca i64
  store i64 0, i64* %387
  %388 = call i8* @llvm.stacksave()
  br label %while_cond77
while_cond77:
  %389 = load i64, i64* %387
  %390 = load { i64, i8* }*, { i64, i8* }** %340
  %391 = call i64 @nyx_array_length({ i64, i8* }* %390)
  %392 = icmp slt i64 %389, %391
  br i1 %392, label %while_body78, label %while_end79
while_body78:
  call void @llvm.stackrestore(i8* %388)
  %393 = load { i64, i8* }*, { i64, i8* }** %340
  %394 = load i64, i64* %387
  %395 = call i64 @nyx_array_get({ i64, i8* }* %393, i64 %394)
  %396 = inttoptr i64 %395 to { i64, i8* }*
  %397 = call i64 @nyx_array_get({ i64, i8* }* %396, i64 0)
  %398 = call i64 @nyx_array_get({ i64, i8* }* %396, i64 1)
  %399 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %396, i64 2)
  %400 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %396, i64 3)
  %401 = inttoptr i64 %397 to %nyx_string*
  %402 = inttoptr i64 %398 to { i64, i8* }*
  %403 = alloca %ASTNode
  %404 = getelementptr inbounds %ASTNode, %ASTNode* %403, i32 0, i32 0
  store %nyx_string* %401, %nyx_string** %404
  %405 = getelementptr inbounds %ASTNode, %ASTNode* %403, i32 0, i32 1
  store { i64, i8* }* %402, { i64, i8* }** %405
  %406 = getelementptr inbounds %ASTNode, %ASTNode* %403, i32 0, i32 2
  store i64 %399, i64* %406
  %407 = getelementptr inbounds %ASTNode, %ASTNode* %403, i32 0, i32 3
  store i64 %400, i64* %407
  %408 = load %ASTNode, %ASTNode* %403
  %409 = alloca %ASTNode
  store %ASTNode %408, %ASTNode* %409
  %410 = getelementptr %ASTNode, %ASTNode* %409, i32 0, i32 0
  %411 = load %nyx_string*, %nyx_string** %410
  %412 = getelementptr [9 x i8], [9 x i8]* @.str451, i32 0, i32 0
  %413 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str451.c, i8* %412)
  %414 = call i1 @nyx_string_equals(%nyx_string* %411, %nyx_string* %413)
  br i1 %414, label %then80, label %else81
then80:
  %415 = load { i64, i8* }*, { i64, i8* }** %337
  %416 = getelementptr [2 x i8], [2 x i8]* @.str452, i32 0, i32 0
  %417 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str452.c, i8* %416)
  %418 = ptrtoint %nyx_string* %417 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %415, i64 %418, i64 2)
  br label %merge82
else81:
  %419 = getelementptr %ASTNode, %ASTNode* %409, i32 0, i32 1
  %420 = load { i64, i8* }*, { i64, i8* }** %419
  %421 = call i64 @nyx_array_get({ i64, i8* }* %420, i64 0)
  %422 = inttoptr i64 %421 to %nyx_string*
  %423 = alloca %nyx_string*
  store %nyx_string* %422, %nyx_string** %423
  %424 = load { i64, i8* }*, { i64, i8* }** %337
  %425 = load %nyx_string*, %nyx_string** %423
  %426 = ptrtoint %nyx_string* %425 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %424, i64 %426, i64 2)
  br label %merge82
merge82:
  %427 = load i64, i64* %387
  %428 = add i64 %427, 1
  store i64 %428, i64* %387
  br label %while_cond77
while_end79:
  %429 = getelementptr [14 x i8], [14 x i8]* @.str453, i32 0, i32 0
  %430 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str453.c, i8* %429)
  %431 = call { i64, i8* }* @nyx_array_new_ptr()
  %432 = load %nyx_string*, %nyx_string** %324
  %433 = ptrtoint %nyx_string* %432 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %431, i64 %433, i64 2)
  %434 = load %nyx_string*, %nyx_string** %335
  %435 = ptrtoint %nyx_string* %434 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %431, i64 %435, i64 2)
  %436 = load { i64, i8* }*, { i64, i8* }** %337
  %437 = bitcast { i64, i8* }* %436 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %431, i8* %437)
  %438 = call { i64, i8* }* @make_astnode(%nyx_string* %430, { i64, i8* }* %431)
  store { i64, i8* }* %438, { i64, i8* }** %27
  br label %merge76
merge76:
  br label %merge56
else55:
  %439 = getelementptr [11 x i8], [11 x i8]* @.str454, i32 0, i32 0
  %440 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str454.c, i8* %439)
  %441 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %440)
  br i1 %441, label %then83, label %else84
then83:
  %442 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %443 = call { i64, i8* }* @nyx_array_new_ptr()
  %444 = alloca { i64, i8* }*
  store { i64, i8* }* %443, { i64, i8* }** %444
  %445 = call i8* @llvm.stacksave()
  br label %while_cond86
while_cond86:
  %446 = getelementptr [12 x i8], [12 x i8]* @.str455, i32 0, i32 0
  %447 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str455.c, i8* %446)
  %448 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %447)
  %449 = xor i1 %448, true
  br i1 %449, label %while_body87, label %while_end88
while_body87:
  call void @llvm.stackrestore(i8* %445)
  %450 = load { i64, i8* }*, { i64, i8* }** %444
  %451 = call i64 @nyx_array_length({ i64, i8* }* %450)
  %452 = icmp sgt i64 %451, 0
  br i1 %452, label %then89, label %else90
then89:
  %453 = getelementptr [6 x i8], [6 x i8]* @.str456, i32 0, i32 0
  %454 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str456.c, i8* %453)
  %455 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %454)
  br label %merge91
else90:
  br label %merge91
merge91:
  %456 = getelementptr [11 x i8], [11 x i8]* @.str457, i32 0, i32 0
  %457 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str457.c, i8* %456)
  %458 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %457)
  %459 = alloca %Token
  store %Token %458, %Token* %459
  %460 = load %Token, %Token* %459
  %461 = call %nyx_string* @get_token_value(%Token %460)
  %462 = alloca %nyx_string*
  store %nyx_string* %461, %nyx_string** %462
  %463 = load %nyx_string*, %nyx_string** %462
  %464 = alloca %nyx_string*
  store %nyx_string* %463, %nyx_string** %464
  %465 = getelementptr [6 x i8], [6 x i8]* @.str458, i32 0, i32 0
  %466 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str458.c, i8* %465)
  %467 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %466)
  br i1 %467, label %then92, label %else93
then92:
  %468 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %469 = getelementptr [11 x i8], [11 x i8]* @.str459, i32 0, i32 0
  %470 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str459.c, i8* %469)
  %471 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %470)
  %472 = call %nyx_string* @get_token_value(%Token %471)
  store %nyx_string* %472, %nyx_string** %464
  br label %merge94
else93:
  br label %merge94
merge94:
  %473 = load { i64, i8* }*, { i64, i8* }** %444
  %474 = call { i64, i8* }* @nyx_array_new_ptr()
  %475 = load %nyx_string*, %nyx_string** %462
  %476 = ptrtoint %nyx_string* %475 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %474, i64 %476, i64 2)
  %477 = load %nyx_string*, %nyx_string** %464
  %478 = ptrtoint %nyx_string* %477 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %474, i64 %478, i64 2)
  %479 = ptrtoint { i64, i8* }* %474 to i64
  call void @nyx_array_push({ i64, i8* }* %473, i64 %479)
  br label %while_cond86
while_end88:
  %480 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %481 = getelementptr [15 x i8], [15 x i8]* @.str460, i32 0, i32 0
  %482 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str460.c, i8* %481)
  %483 = call { i64, i8* }* @nyx_array_new_ptr()
  %484 = load %nyx_string*, %nyx_string** %324
  %485 = ptrtoint %nyx_string* %484 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %483, i64 %485, i64 2)
  %486 = load { i64, i8* }*, { i64, i8* }** %444
  %487 = bitcast { i64, i8* }* %486 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %483, i8* %487)
  %488 = call { i64, i8* }* @make_astnode(%nyx_string* %482, { i64, i8* }* %483)
  store { i64, i8* }* %488, { i64, i8* }** %27
  br label %merge85
else84:
  %489 = getelementptr [19 x i8], [19 x i8]* @.str461, i32 0, i32 0
  %490 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str461.c, i8* %489)
  %491 = call { i64, i8* }* @nyx_array_new_ptr()
  %492 = load %nyx_string*, %nyx_string** %324
  %493 = ptrtoint %nyx_string* %492 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %491, i64 %493, i64 2)
  %494 = call { i64, i8* }* @make_astnode(%nyx_string* %490, { i64, i8* }* %491)
  store { i64, i8* }* %494, { i64, i8* }** %27
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
  %495 = load { i64, i8* }*, { i64, i8* }** %27
  ret { i64, i8* }* %495
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
  %23 = call { i64, i8* }* @parse__parse_single_pattern(%SharedEnv_parse* %env.param)
  %24 = alloca { i64, i8* }*
  store { i64, i8* }* %23, { i64, i8* }** %24
  %25 = getelementptr [5 x i8], [5 x i8]* @.str462, i32 0, i32 0
  %26 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str462.c, i8* %25)
  %27 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %26)
  br i1 %27, label %then0, label %else1
then0:
  %28 = call { i64, i8* }* @nyx_array_new_ptr()
  %29 = load { i64, i8* }*, { i64, i8* }** %24
  %30 = bitcast { i64, i8* }* %29 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %28, i8* %30)
  %31 = alloca { i64, i8* }*
  store { i64, i8* }* %28, { i64, i8* }** %31
  %32 = call i8* @llvm.stacksave()
  br label %while_cond3
while_cond3:
  %33 = getelementptr [5 x i8], [5 x i8]* @.str463, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str463.c, i8* %33)
  %35 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %34)
  br i1 %35, label %while_body4, label %while_end5
while_body4:
  call void @llvm.stackrestore(i8* %32)
  %36 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %37 = load { i64, i8* }*, { i64, i8* }** %31
  %38 = call { i64, i8* }* @parse__parse_single_pattern(%SharedEnv_parse* %env.param)
  %39 = ptrtoint { i64, i8* }* %38 to i64
  call void @nyx_array_push({ i64, i8* }* %37, i64 %39)
  br label %while_cond3
while_end5:
  %40 = getelementptr [11 x i8], [11 x i8]* @.str464, i32 0, i32 0
  %41 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str464.c, i8* %40)
  %42 = load { i64, i8* }*, { i64, i8* }** %31
  %43 = call { i64, i8* }* @make_astnode(%nyx_string* %41, { i64, i8* }* %42)
  store { i64, i8* }* %43, { i64, i8* }** %24
  br label %merge2
else1:
  br label %merge2
merge2:
  %44 = getelementptr [6 x i8], [6 x i8]* @.str465, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str465.c, i8* %44)
  %46 = call { i64, i8* }* @nyx_array_new_ptr()
  %47 = call { i64, i8* }* @make_astnode(%nyx_string* %45, { i64, i8* }* %46)
  %48 = alloca { i64, i8* }*
  store { i64, i8* }* %47, { i64, i8* }** %48
  %49 = getelementptr [3 x i8], [3 x i8]* @.str466, i32 0, i32 0
  %50 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str466.c, i8* %49)
  %51 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %50)
  br i1 %51, label %then6, label %else7
then6:
  %52 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %53 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %53, { i64, i8* }** %48
  br label %merge8
else7:
  br label %merge8
merge8:
  %54 = getelementptr [12 x i8], [12 x i8]* @.str467, i32 0, i32 0
  %55 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str467.c, i8* %54)
  %56 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %55)
  %57 = getelementptr [6 x i8], [6 x i8]* @.str468, i32 0, i32 0
  %58 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str468.c, i8* %57)
  %59 = call { i64, i8* }* @nyx_array_new_ptr()
  %60 = call { i64, i8* }* @make_astnode(%nyx_string* %58, { i64, i8* }* %59)
  %61 = alloca { i64, i8* }*
  store { i64, i8* }* %60, { i64, i8* }** %61
  %62 = getelementptr [11 x i8], [11 x i8]* @.str469, i32 0, i32 0
  %63 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str469.c, i8* %62)
  %64 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %63)
  br i1 %64, label %then9, label %else10
then9:
  %65 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %65, { i64, i8* }** %61
  br label %merge11
else10:
  %66 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %66, { i64, i8* }** %61
  br label %merge11
merge11:
  %67 = getelementptr [10 x i8], [10 x i8]* @.str470, i32 0, i32 0
  %68 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str470.c, i8* %67)
  %69 = call { i64, i8* }* @nyx_array_new_ptr()
  %70 = load { i64, i8* }*, { i64, i8* }** %24
  %71 = bitcast { i64, i8* }* %70 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %69, i8* %71)
  %72 = load { i64, i8* }*, { i64, i8* }** %61
  %73 = bitcast { i64, i8* }* %72 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %69, i8* %73)
  %74 = load { i64, i8* }*, { i64, i8* }** %48
  %75 = bitcast { i64, i8* }* %74 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %69, i8* %75)
  %76 = call { i64, i8* }* @make_astnode(%nyx_string* %68, { i64, i8* }* %69)
  ret { i64, i8* }* %76
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
  %23 = getelementptr [6 x i8], [6 x i8]* @.str471, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str471.c, i8* %23)
  %25 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %24)
  %26 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %27 = alloca { i64, i8* }*
  store { i64, i8* }* %26, { i64, i8* }** %27
  %28 = getelementptr [11 x i8], [11 x i8]* @.str472, i32 0, i32 0
  %29 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str472.c, i8* %28)
  %30 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %29)
  %31 = call { i64, i8* }* @nyx_array_new_ptr()
  %32 = alloca { i64, i8* }*
  store { i64, i8* }* %31, { i64, i8* }** %32
  %33 = alloca i1
  store i1 0, i1* %33
  %34 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %35 = load i1, i1* %33
  %36 = xor i1 %35, true
  br i1 %36, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %34)
  %37 = getelementptr [12 x i8], [12 x i8]* @.str473, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str473.c, i8* %37)
  %39 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %38)
  br i1 %39, label %then3, label %else4
then3:
  %40 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %33
  br label %merge5
else4:
  %41 = load { i64, i8* }*, { i64, i8* }** %32
  %42 = call i64 @nyx_array_length({ i64, i8* }* %41)
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %then6, label %else7
then6:
  %44 = getelementptr [6 x i8], [6 x i8]* @.str474, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str474.c, i8* %44)
  %46 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %45)
  br i1 %46, label %then9, label %else10
then9:
  %47 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge11
else10:
  br label %merge11
merge11:
  br label %merge8
else7:
  br label %merge8
merge8:
  %48 = getelementptr [12 x i8], [12 x i8]* @.str475, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str475.c, i8* %48)
  %50 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %49)
  br i1 %50, label %then12, label %else13
then12:
  %51 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %33
  br label %merge14
else13:
  %52 = load { i64, i8* }*, { i64, i8* }** %32
  %53 = call { i64, i8* }* @parse__parse_match_arm(%SharedEnv_parse* %env.param)
  %54 = ptrtoint { i64, i8* }* %53 to i64
  call void @nyx_array_push({ i64, i8* }* %52, i64 %54)
  br label %merge14
merge14:
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %55 = getelementptr [6 x i8], [6 x i8]* @.str476, i32 0, i32 0
  %56 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str476.c, i8* %55)
  %57 = call { i64, i8* }* @nyx_array_new_ptr()
  %58 = load { i64, i8* }*, { i64, i8* }** %27
  %59 = bitcast { i64, i8* }* %58 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %57, i8* %59)
  %60 = load { i64, i8* }*, { i64, i8* }** %32
  %61 = bitcast { i64, i8* }* %60 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %57, i8* %61)
  %62 = call { i64, i8* }* @make_astnode(%nyx_string* %56, { i64, i8* }* %57)
  ret { i64, i8* }* %62
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
  %23 = alloca %nyx_string*
  store %nyx_string* %struct_name.param, %nyx_string** %23
  %24 = getelementptr [11 x i8], [11 x i8]* @.str477, i32 0, i32 0
  %25 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str477.c, i8* %24)
  %26 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %25)
  %27 = call { i64, i8* }* @nyx_array_new_ptr()
  %28 = alloca { i64, i8* }*
  store { i64, i8* }* %27, { i64, i8* }** %28
  %29 = alloca i1
  store i1 0, i1* %29
  %30 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %31 = load i1, i1* %29
  %32 = xor i1 %31, true
  br i1 %32, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %30)
  %33 = getelementptr [12 x i8], [12 x i8]* @.str478, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str478.c, i8* %33)
  %35 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %34)
  br i1 %35, label %then3, label %else4
then3:
  %36 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %29
  br label %merge5
else4:
  %37 = load { i64, i8* }*, { i64, i8* }** %28
  %38 = call i64 @nyx_array_length({ i64, i8* }* %37)
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %then6, label %else7
then6:
  %40 = getelementptr [6 x i8], [6 x i8]* @.str479, i32 0, i32 0
  %41 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str479.c, i8* %40)
  %42 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %41)
  br i1 %42, label %then9, label %else10
then9:
  %43 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge11
else10:
  br label %merge11
merge11:
  br label %merge8
else7:
  br label %merge8
merge8:
  %44 = getelementptr [11 x i8], [11 x i8]* @.str480, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str480.c, i8* %44)
  %46 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %45)
  %47 = alloca %Token
  store %Token %46, %Token* %47
  %48 = getelementptr [6 x i8], [6 x i8]* @.str481, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str481.c, i8* %48)
  %50 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %49)
  %51 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %52 = alloca { i64, i8* }*
  store { i64, i8* }* %51, { i64, i8* }** %52
  %53 = load { i64, i8* }*, { i64, i8* }** %28
  %54 = call { i64, i8* }* @nyx_array_new_ptr()
  %55 = load %Token, %Token* %47
  %56 = call %nyx_string* @get_token_value(%Token %55)
  %57 = ptrtoint %nyx_string* %56 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %54, i64 %57, i64 2)
  %58 = load { i64, i8* }*, { i64, i8* }** %52
  %59 = bitcast { i64, i8* }* %58 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %54, i8* %59)
  %60 = ptrtoint { i64, i8* }* %54 to i64
  call void @nyx_array_push({ i64, i8* }* %53, i64 %60)
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %61 = getelementptr [12 x i8], [12 x i8]* @.str482, i32 0, i32 0
  %62 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str482.c, i8* %61)
  %63 = call { i64, i8* }* @nyx_array_new_ptr()
  %64 = load %nyx_string*, %nyx_string** %23
  %65 = ptrtoint %nyx_string* %64 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %63, i64 %65, i64 2)
  %66 = load { i64, i8* }*, { i64, i8* }** %28
  %67 = bitcast { i64, i8* }* %66 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %63, i8* %67)
  %68 = call { i64, i8* }* @nyx_array_new_ptr()
  %69 = bitcast { i64, i8* }* %68 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %63, i8* %69)
  %70 = call { i64, i8* }* @make_astnode(%nyx_string* %62, { i64, i8* }* %63)
  ret { i64, i8* }* %70
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
  %23 = getelementptr [14 x i8], [14 x i8]* @.str483, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str483.c, i8* %23)
  %25 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %24)
  br i1 %25, label %then0, label %else1
then0:
  %26 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %27 = alloca %Token
  store %Token %26, %Token* %27
  %28 = load %Token, %Token* %27
  %29 = call %nyx_string* @get_token_value(%Token %28)
  %30 = alloca %nyx_string*
  store %nyx_string* %29, %nyx_string** %30
  %31 = call { i64, i8* }* @nyx_array_new_ptr()
  %32 = load %nyx_string*, %nyx_string** %30
  %33 = ptrtoint %nyx_string* %32 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %31, i64 %33, i64 2)
  %34 = alloca { i64, i8* }*
  store { i64, i8* }* %31, { i64, i8* }** %34
  %35 = getelementptr [14 x i8], [14 x i8]* @.str484, i32 0, i32 0
  %36 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str484.c, i8* %35)
  %37 = load { i64, i8* }*, { i64, i8* }** %34
  %38 = call { i64, i8* }* @make_astnode(%nyx_string* %36, { i64, i8* }* %37)
  ret { i64, i8* }* %38
else1:
  br label %merge2
merge2:
  %39 = alloca i1
  store i1 true, i1* %39
  %40 = getelementptr [4 x i8], [4 x i8]* @.str485, i32 0, i32 0
  %41 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str485.c, i8* %40)
  %42 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %41)
  br i1 %42, label %sc_or_end4, label %sc_or_rhs3
sc_or_rhs3:
  %43 = getelementptr [4 x i8], [4 x i8]* @.str486, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str486.c, i8* %43)
  %45 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %44)
  store i1 %45, i1* %39
  br label %sc_or_end4
sc_or_end4:
  %46 = load i1, i1* %39
  br i1 %46, label %then5, label %else6
then5:
  %47 = call { i64, i8* }* @parse__parse_let(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %47
else6:
  br label %merge7
merge7:
  %48 = getelementptr [6 x i8], [6 x i8]* @.str487, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str487.c, i8* %48)
  %50 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %49)
  br i1 %50, label %then8, label %else9
then8:
  %51 = call { i64, i8* }* @parse__parse_const(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %51
else9:
  br label %merge10
merge10:
  %52 = getelementptr [3 x i8], [3 x i8]* @.str488, i32 0, i32 0
  %53 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str488.c, i8* %52)
  %54 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %53)
  br i1 %54, label %then11, label %else12
then11:
  %55 = call { i64, i8* }* @parse__parse_function(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %55
else12:
  br label %merge13
merge13:
  %56 = getelementptr [5 x i8], [5 x i8]* @.str489, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str489.c, i8* %56)
  %58 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %57)
  br i1 %58, label %then14, label %else15
then14:
  %59 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %60 = getelementptr [13 x i8], [13 x i8]* @.str490, i32 0, i32 0
  %61 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str490.c, i8* %60)
  %62 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %61)
  %63 = getelementptr [11 x i8], [11 x i8]* @.str491, i32 0, i32 0
  %64 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str491.c, i8* %63)
  %65 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %64)
  %66 = alloca %Token
  store %Token %65, %Token* %66
  %67 = load %Token, %Token* %66
  %68 = call %nyx_string* @get_token_value(%Token %67)
  %69 = alloca %nyx_string*
  store %nyx_string* %68, %nyx_string** %69
  %70 = load %nyx_string*, %nyx_string** %69
  %71 = alloca %nyx_string*
  store %nyx_string* %70, %nyx_string** %71
  %72 = getelementptr [11 x i8], [11 x i8]* @.str492, i32 0, i32 0
  %73 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str492.c, i8* %72)
  %74 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %73)
  br i1 %74, label %then17, label %else18
then17:
  %75 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %76 = getelementptr [1 x i8], [1 x i8]* @.str493, i32 0, i32 0
  %77 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str493.c, i8* %76)
  %78 = alloca %nyx_string*
  store %nyx_string* %77, %nyx_string** %78
  %79 = getelementptr [7 x i8], [7 x i8]* @.str494, i32 0, i32 0
  %80 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str494.c, i8* %79)
  %81 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %80)
  br i1 %81, label %then20, label %else21
then20:
  %82 = getelementptr [7 x i8], [7 x i8]* @.str495, i32 0, i32 0
  %83 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str495.c, i8* %82)
  %84 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %83)
  %85 = alloca %Token
  store %Token %84, %Token* %85
  %86 = load %Token, %Token* %85
  %87 = call %nyx_string* @get_token_value(%Token %86)
  store %nyx_string* %87, %nyx_string** %78
  br label %merge22
else21:
  %88 = getelementptr [11 x i8], [11 x i8]* @.str496, i32 0, i32 0
  %89 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str496.c, i8* %88)
  %90 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %89)
  %91 = alloca %Token
  store %Token %90, %Token* %91
  %92 = load %Token, %Token* %91
  %93 = call %nyx_string* @get_token_value(%Token %92)
  store %nyx_string* %93, %nyx_string** %78
  %94 = call i8* @llvm.stacksave()
  br label %while_cond23
while_cond23:
  %95 = getelementptr [6 x i8], [6 x i8]* @.str497, i32 0, i32 0
  %96 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str497.c, i8* %95)
  %97 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %96)
  br i1 %97, label %while_body24, label %while_end25
while_body24:
  call void @llvm.stackrestore(i8* %94)
  %98 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %99 = getelementptr [11 x i8], [11 x i8]* @.str498, i32 0, i32 0
  %100 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str498.c, i8* %99)
  %101 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %100)
  %102 = alloca %Token
  store %Token %101, %Token* %102
  %103 = load %nyx_string*, %nyx_string** %78
  %104 = getelementptr [2 x i8], [2 x i8]* @.str499, i32 0, i32 0
  %105 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str499.c, i8* %104)
  %106 = call %nyx_string* @nyx_string_concat(%nyx_string* %103, %nyx_string* %105)
  %107 = load %Token, %Token* %102
  %108 = call %nyx_string* @get_token_value(%Token %107)
  %109 = call %nyx_string* @nyx_string_concat(%nyx_string* %106, %nyx_string* %108)
  store %nyx_string* %109, %nyx_string** %78
  br label %while_cond23
while_end25:
  br label %merge22
merge22:
  %110 = getelementptr [12 x i8], [12 x i8]* @.str500, i32 0, i32 0
  %111 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str500.c, i8* %110)
  %112 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %111)
  %113 = load %nyx_string*, %nyx_string** %69
  %114 = getelementptr [2 x i8], [2 x i8]* @.str501, i32 0, i32 0
  %115 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str501.c, i8* %114)
  %116 = call %nyx_string* @nyx_string_concat(%nyx_string* %113, %nyx_string* %115)
  %117 = load %nyx_string*, %nyx_string** %78
  %118 = call %nyx_string* @nyx_string_concat(%nyx_string* %116, %nyx_string* %117)
  %119 = getelementptr [2 x i8], [2 x i8]* @.str502, i32 0, i32 0
  %120 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str502.c, i8* %119)
  %121 = call %nyx_string* @nyx_string_concat(%nyx_string* %118, %nyx_string* %120)
  store %nyx_string* %121, %nyx_string** %71
  br label %merge19
else18:
  %122 = getelementptr [7 x i8], [7 x i8]* @.str503, i32 0, i32 0
  %123 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str503.c, i8* %122)
  %124 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %123)
  br i1 %124, label %then26, label %else27
then26:
  %125 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %126 = getelementptr [7 x i8], [7 x i8]* @.str504, i32 0, i32 0
  %127 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str504.c, i8* %126)
  %128 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %127)
  %129 = alloca %Token
  store %Token %128, %Token* %129
  %130 = load %nyx_string*, %nyx_string** %69
  %131 = getelementptr [2 x i8], [2 x i8]* @.str505, i32 0, i32 0
  %132 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str505.c, i8* %131)
  %133 = call %nyx_string* @nyx_string_concat(%nyx_string* %130, %nyx_string* %132)
  %134 = load %Token, %Token* %129
  %135 = call %nyx_string* @get_token_value(%Token %134)
  %136 = call %nyx_string* @nyx_string_concat(%nyx_string* %133, %nyx_string* %135)
  store %nyx_string* %136, %nyx_string** %71
  br label %merge28
else27:
  br label %merge28
merge28:
  br label %merge19
merge19:
  %137 = getelementptr [14 x i8], [14 x i8]* @.str506, i32 0, i32 0
  %138 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str506.c, i8* %137)
  %139 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %138)
  %140 = getelementptr [4 x i8], [4 x i8]* @.str507, i32 0, i32 0
  %141 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str507.c, i8* %140)
  %142 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %141)
  br i1 %142, label %then29, label %else30
then29:
  %143 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %144 = getelementptr [3 x i8], [3 x i8]* @.str508, i32 0, i32 0
  %145 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str508.c, i8* %144)
  %146 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %145)
  br i1 %146, label %then32, label %else33
then32:
  %147 = call { i64, i8* }* @parse__parse_function(%SharedEnv_parse* %env.param)
  %148 = alloca { i64, i8* }*
  store { i64, i8* }* %147, { i64, i8* }** %148
  %149 = load { i64, i8* }*, { i64, i8* }** %148
  %150 = call i64 @nyx_array_get({ i64, i8* }* %149, i64 1)
  %151 = inttoptr i64 %150 to { i64, i8* }*
  %152 = alloca { i64, i8* }*
  store { i64, i8* }* %151, { i64, i8* }** %152
  %153 = getelementptr [9 x i8], [9 x i8]* @.str509, i32 0, i32 0
  %154 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str509.c, i8* %153)
  %155 = call { i64, i8* }* @nyx_array_new_ptr()
  %156 = load { i64, i8* }*, { i64, i8* }** %152
  %157 = call i64 @nyx_array_get({ i64, i8* }* %156, i64 0)
  call void @nyx_array_push({ i64, i8* }* %155, i64 %157)
  %158 = load { i64, i8* }*, { i64, i8* }** %152
  %159 = call i64 @nyx_array_get({ i64, i8* }* %158, i64 1)
  call void @nyx_array_push({ i64, i8* }* %155, i64 %159)
  %160 = load { i64, i8* }*, { i64, i8* }** %152
  %161 = call i64 @nyx_array_get({ i64, i8* }* %160, i64 2)
  call void @nyx_array_push({ i64, i8* }* %155, i64 %161)
  %162 = load { i64, i8* }*, { i64, i8* }** %152
  %163 = call i64 @nyx_array_get({ i64, i8* }* %162, i64 3)
  call void @nyx_array_push({ i64, i8* }* %155, i64 %163)
  %164 = load { i64, i8* }*, { i64, i8* }** %152
  %165 = call i64 @nyx_array_get({ i64, i8* }* %164, i64 4)
  call void @nyx_array_push({ i64, i8* }* %155, i64 %165)
  %166 = load %nyx_string*, %nyx_string** %71
  %167 = ptrtoint %nyx_string* %166 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %155, i64 %167, i64 2)
  %168 = call { i64, i8* }* @make_astnode(%nyx_string* %154, { i64, i8* }* %155)
  %169 = alloca { i64, i8* }*
  store { i64, i8* }* %168, { i64, i8* }** %169
  %170 = getelementptr [7 x i8], [7 x i8]* @.str510, i32 0, i32 0
  %171 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str510.c, i8* %170)
  %172 = call { i64, i8* }* @nyx_array_new_ptr()
  %173 = load { i64, i8* }*, { i64, i8* }** %169
  %174 = bitcast { i64, i8* }* %173 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %172, i8* %174)
  %175 = call { i64, i8* }* @make_astnode(%nyx_string* %171, { i64, i8* }* %172)
  ret { i64, i8* }* %175
else33:
  br label %merge34
merge34:
  %176 = getelementptr [7 x i8], [7 x i8]* @.str511, i32 0, i32 0
  %177 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str511.c, i8* %176)
  %178 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %177)
  br i1 %178, label %then35, label %else36
then35:
  %179 = call { i64, i8* }* @parse__parse_struct(%SharedEnv_parse* %env.param)
  %180 = alloca { i64, i8* }*
  store { i64, i8* }* %179, { i64, i8* }** %180
  %181 = load { i64, i8* }*, { i64, i8* }** %180
  %182 = call i64 @nyx_array_get({ i64, i8* }* %181, i64 1)
  %183 = inttoptr i64 %182 to { i64, i8* }*
  %184 = alloca { i64, i8* }*
  store { i64, i8* }* %183, { i64, i8* }** %184
  %185 = getelementptr [7 x i8], [7 x i8]* @.str512, i32 0, i32 0
  %186 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str512.c, i8* %185)
  %187 = call { i64, i8* }* @nyx_array_new_ptr()
  %188 = load { i64, i8* }*, { i64, i8* }** %184
  %189 = call i64 @nyx_array_get({ i64, i8* }* %188, i64 0)
  call void @nyx_array_push({ i64, i8* }* %187, i64 %189)
  %190 = load { i64, i8* }*, { i64, i8* }** %184
  %191 = call i64 @nyx_array_get({ i64, i8* }* %190, i64 1)
  call void @nyx_array_push({ i64, i8* }* %187, i64 %191)
  %192 = load { i64, i8* }*, { i64, i8* }** %184
  %193 = call i64 @nyx_array_get({ i64, i8* }* %192, i64 2)
  call void @nyx_array_push({ i64, i8* }* %187, i64 %193)
  %194 = load %nyx_string*, %nyx_string** %71
  %195 = ptrtoint %nyx_string* %194 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %187, i64 %195, i64 2)
  %196 = call { i64, i8* }* @make_astnode(%nyx_string* %186, { i64, i8* }* %187)
  %197 = alloca { i64, i8* }*
  store { i64, i8* }* %196, { i64, i8* }** %197
  %198 = getelementptr [7 x i8], [7 x i8]* @.str513, i32 0, i32 0
  %199 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str513.c, i8* %198)
  %200 = call { i64, i8* }* @nyx_array_new_ptr()
  %201 = load { i64, i8* }*, { i64, i8* }** %197
  %202 = bitcast { i64, i8* }* %201 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %200, i8* %202)
  %203 = call { i64, i8* }* @make_astnode(%nyx_string* %199, { i64, i8* }* %200)
  ret { i64, i8* }* %203
else36:
  br label %merge37
merge37:
  %204 = getelementptr [5 x i8], [5 x i8]* @.str514, i32 0, i32 0
  %205 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str514.c, i8* %204)
  %206 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %205)
  br i1 %206, label %then38, label %else39
then38:
  %207 = call { i64, i8* }* @parse__parse_enum(%SharedEnv_parse* %env.param)
  %208 = alloca { i64, i8* }*
  store { i64, i8* }* %207, { i64, i8* }** %208
  %209 = load { i64, i8* }*, { i64, i8* }** %208
  %210 = call i64 @nyx_array_get({ i64, i8* }* %209, i64 1)
  %211 = inttoptr i64 %210 to { i64, i8* }*
  %212 = alloca { i64, i8* }*
  store { i64, i8* }* %211, { i64, i8* }** %212
  %213 = getelementptr [5 x i8], [5 x i8]* @.str515, i32 0, i32 0
  %214 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str515.c, i8* %213)
  %215 = call { i64, i8* }* @nyx_array_new_ptr()
  %216 = load { i64, i8* }*, { i64, i8* }** %212
  %217 = call i64 @nyx_array_get({ i64, i8* }* %216, i64 0)
  call void @nyx_array_push({ i64, i8* }* %215, i64 %217)
  %218 = load { i64, i8* }*, { i64, i8* }** %212
  %219 = call i64 @nyx_array_get({ i64, i8* }* %218, i64 1)
  call void @nyx_array_push({ i64, i8* }* %215, i64 %219)
  %220 = load { i64, i8* }*, { i64, i8* }** %212
  %221 = call i64 @nyx_array_get({ i64, i8* }* %220, i64 2)
  call void @nyx_array_push({ i64, i8* }* %215, i64 %221)
  %222 = load %nyx_string*, %nyx_string** %71
  %223 = ptrtoint %nyx_string* %222 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %215, i64 %223, i64 2)
  %224 = call { i64, i8* }* @make_astnode(%nyx_string* %214, { i64, i8* }* %215)
  %225 = alloca { i64, i8* }*
  store { i64, i8* }* %224, { i64, i8* }** %225
  %226 = getelementptr [7 x i8], [7 x i8]* @.str516, i32 0, i32 0
  %227 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str516.c, i8* %226)
  %228 = call { i64, i8* }* @nyx_array_new_ptr()
  %229 = load { i64, i8* }*, { i64, i8* }** %225
  %230 = bitcast { i64, i8* }* %229 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %228, i8* %230)
  %231 = call { i64, i8* }* @make_astnode(%nyx_string* %227, { i64, i8* }* %228)
  ret { i64, i8* }* %231
else39:
  br label %merge40
merge40:
  %232 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %233 = alloca %Token
  store %Token %232, %Token* %233
  %234 = getelementptr [8 x i8], [8 x i8]* @.str517, i32 0, i32 0
  %235 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str517.c, i8* %234)
  %236 = load %Token, %Token* %233
  %237 = call i64 @get_token_line(%Token %236)
  %238 = load %Token, %Token* %233
  %239 = call i64 @get_token_column(%Token %238)
  %240 = getelementptr [59 x i8], [59 x i8]* @.str518, i32 0, i32 0
  %241 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str518.c, i8* %240)
  %242 = getelementptr [59 x i8], [59 x i8]* @.str519, i32 0, i32 0
  %243 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str519.c, i8* %242)
  %244 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %241, %nyx_string* %243)
  %245 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %235, i64 %237, i64 %239, %nyx_string* %244)
  %246 = getelementptr [6 x i8], [6 x i8]* @.str520, i32 0, i32 0
  %247 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str520.c, i8* %246)
  %248 = call { i64, i8* }* @nyx_array_new_ptr()
  %249 = call { i64, i8* }* @make_astnode(%nyx_string* %247, { i64, i8* }* %248)
  ret { i64, i8* }* %249
else30:
  br label %merge31
merge31:
  %250 = getelementptr [3 x i8], [3 x i8]* @.str521, i32 0, i32 0
  %251 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str521.c, i8* %250)
  %252 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %251)
  br i1 %252, label %then41, label %else42
then41:
  %253 = call { i64, i8* }* @parse__parse_function(%SharedEnv_parse* %env.param)
  %254 = alloca { i64, i8* }*
  store { i64, i8* }* %253, { i64, i8* }** %254
  %255 = load { i64, i8* }*, { i64, i8* }** %254
  %256 = call i64 @nyx_array_get({ i64, i8* }* %255, i64 1)
  %257 = inttoptr i64 %256 to { i64, i8* }*
  %258 = alloca { i64, i8* }*
  store { i64, i8* }* %257, { i64, i8* }** %258
  %259 = getelementptr [9 x i8], [9 x i8]* @.str522, i32 0, i32 0
  %260 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str522.c, i8* %259)
  %261 = call { i64, i8* }* @nyx_array_new_ptr()
  %262 = load { i64, i8* }*, { i64, i8* }** %258
  %263 = call i64 @nyx_array_get({ i64, i8* }* %262, i64 0)
  call void @nyx_array_push({ i64, i8* }* %261, i64 %263)
  %264 = load { i64, i8* }*, { i64, i8* }** %258
  %265 = call i64 @nyx_array_get({ i64, i8* }* %264, i64 1)
  call void @nyx_array_push({ i64, i8* }* %261, i64 %265)
  %266 = load { i64, i8* }*, { i64, i8* }** %258
  %267 = call i64 @nyx_array_get({ i64, i8* }* %266, i64 2)
  call void @nyx_array_push({ i64, i8* }* %261, i64 %267)
  %268 = load { i64, i8* }*, { i64, i8* }** %258
  %269 = call i64 @nyx_array_get({ i64, i8* }* %268, i64 3)
  call void @nyx_array_push({ i64, i8* }* %261, i64 %269)
  %270 = load { i64, i8* }*, { i64, i8* }** %258
  %271 = call i64 @nyx_array_get({ i64, i8* }* %270, i64 4)
  call void @nyx_array_push({ i64, i8* }* %261, i64 %271)
  %272 = load %nyx_string*, %nyx_string** %71
  %273 = ptrtoint %nyx_string* %272 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %261, i64 %273, i64 2)
  %274 = call { i64, i8* }* @make_astnode(%nyx_string* %260, { i64, i8* }* %261)
  ret { i64, i8* }* %274
else42:
  br label %merge43
merge43:
  %275 = getelementptr [7 x i8], [7 x i8]* @.str523, i32 0, i32 0
  %276 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str523.c, i8* %275)
  %277 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %276)
  br i1 %277, label %then44, label %else45
then44:
  %278 = call { i64, i8* }* @parse__parse_struct(%SharedEnv_parse* %env.param)
  %279 = alloca { i64, i8* }*
  store { i64, i8* }* %278, { i64, i8* }** %279
  %280 = load { i64, i8* }*, { i64, i8* }** %279
  %281 = call i64 @nyx_array_get({ i64, i8* }* %280, i64 1)
  %282 = inttoptr i64 %281 to { i64, i8* }*
  %283 = alloca { i64, i8* }*
  store { i64, i8* }* %282, { i64, i8* }** %283
  %284 = getelementptr [7 x i8], [7 x i8]* @.str524, i32 0, i32 0
  %285 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str524.c, i8* %284)
  %286 = call { i64, i8* }* @nyx_array_new_ptr()
  %287 = load { i64, i8* }*, { i64, i8* }** %283
  %288 = call i64 @nyx_array_get({ i64, i8* }* %287, i64 0)
  call void @nyx_array_push({ i64, i8* }* %286, i64 %288)
  %289 = load { i64, i8* }*, { i64, i8* }** %283
  %290 = call i64 @nyx_array_get({ i64, i8* }* %289, i64 1)
  call void @nyx_array_push({ i64, i8* }* %286, i64 %290)
  %291 = load { i64, i8* }*, { i64, i8* }** %283
  %292 = call i64 @nyx_array_get({ i64, i8* }* %291, i64 2)
  call void @nyx_array_push({ i64, i8* }* %286, i64 %292)
  %293 = load %nyx_string*, %nyx_string** %71
  %294 = ptrtoint %nyx_string* %293 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %286, i64 %294, i64 2)
  %295 = call { i64, i8* }* @make_astnode(%nyx_string* %285, { i64, i8* }* %286)
  ret { i64, i8* }* %295
else45:
  br label %merge46
merge46:
  %296 = getelementptr [5 x i8], [5 x i8]* @.str525, i32 0, i32 0
  %297 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str525.c, i8* %296)
  %298 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %297)
  br i1 %298, label %then47, label %else48
then47:
  %299 = call { i64, i8* }* @parse__parse_enum(%SharedEnv_parse* %env.param)
  %300 = alloca { i64, i8* }*
  store { i64, i8* }* %299, { i64, i8* }** %300
  %301 = load { i64, i8* }*, { i64, i8* }** %300
  %302 = call i64 @nyx_array_get({ i64, i8* }* %301, i64 1)
  %303 = inttoptr i64 %302 to { i64, i8* }*
  %304 = alloca { i64, i8* }*
  store { i64, i8* }* %303, { i64, i8* }** %304
  %305 = getelementptr [5 x i8], [5 x i8]* @.str526, i32 0, i32 0
  %306 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str526.c, i8* %305)
  %307 = call { i64, i8* }* @nyx_array_new_ptr()
  %308 = load { i64, i8* }*, { i64, i8* }** %304
  %309 = call i64 @nyx_array_get({ i64, i8* }* %308, i64 0)
  call void @nyx_array_push({ i64, i8* }* %307, i64 %309)
  %310 = load { i64, i8* }*, { i64, i8* }** %304
  %311 = call i64 @nyx_array_get({ i64, i8* }* %310, i64 1)
  call void @nyx_array_push({ i64, i8* }* %307, i64 %311)
  %312 = load { i64, i8* }*, { i64, i8* }** %304
  %313 = call i64 @nyx_array_get({ i64, i8* }* %312, i64 2)
  call void @nyx_array_push({ i64, i8* }* %307, i64 %313)
  %314 = load %nyx_string*, %nyx_string** %71
  %315 = ptrtoint %nyx_string* %314 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %307, i64 %315, i64 2)
  %316 = call { i64, i8* }* @make_astnode(%nyx_string* %306, { i64, i8* }* %307)
  ret { i64, i8* }* %316
else48:
  br label %merge49
merge49:
  %317 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %318 = alloca %Token
  store %Token %317, %Token* %318
  %319 = getelementptr [8 x i8], [8 x i8]* @.str527, i32 0, i32 0
  %320 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str527.c, i8* %319)
  %321 = load %Token, %Token* %318
  %322 = call i64 @get_token_line(%Token %321)
  %323 = load %Token, %Token* %318
  %324 = call i64 @get_token_column(%Token %323)
  %325 = getelementptr [69 x i8], [69 x i8]* @.str528, i32 0, i32 0
  %326 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str528.c, i8* %325)
  %327 = getelementptr [72 x i8], [72 x i8]* @.str529, i32 0, i32 0
  %328 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str529.c, i8* %327)
  %329 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %326, %nyx_string* %328)
  %330 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %320, i64 %322, i64 %324, %nyx_string* %329)
  %331 = getelementptr [6 x i8], [6 x i8]* @.str530, i32 0, i32 0
  %332 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str530.c, i8* %331)
  %333 = call { i64, i8* }* @nyx_array_new_ptr()
  %334 = call { i64, i8* }* @make_astnode(%nyx_string* %332, { i64, i8* }* %333)
  ret { i64, i8* }* %334
else15:
  br label %merge16
merge16:
  %335 = getelementptr [7 x i8], [7 x i8]* @.str531, i32 0, i32 0
  %336 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str531.c, i8* %335)
  %337 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %336)
  br i1 %337, label %then50, label %else51
then50:
  %338 = call { i64, i8* }* @parse__parse_struct(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %338
else51:
  br label %merge52
merge52:
  %339 = getelementptr [5 x i8], [5 x i8]* @.str532, i32 0, i32 0
  %340 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str532.c, i8* %339)
  %341 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %340)
  br i1 %341, label %then53, label %else54
then53:
  %342 = call { i64, i8* }* @parse__parse_enum(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %342
else54:
  br label %merge55
merge55:
  %343 = getelementptr [6 x i8], [6 x i8]* @.str533, i32 0, i32 0
  %344 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str533.c, i8* %343)
  %345 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %344)
  br i1 %345, label %then56, label %else57
then56:
  %346 = call { i64, i8* }* @parse__parse_match(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %346
else57:
  br label %merge58
merge58:
  %347 = getelementptr [3 x i8], [3 x i8]* @.str534, i32 0, i32 0
  %348 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str534.c, i8* %347)
  %349 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %348)
  br i1 %349, label %then59, label %else60
then59:
  %350 = call { i64, i8* }* @parse__parse_if(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %350
else60:
  br label %merge61
merge61:
  %351 = getelementptr [6 x i8], [6 x i8]* @.str535, i32 0, i32 0
  %352 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str535.c, i8* %351)
  %353 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %352)
  br i1 %353, label %then62, label %else63
then62:
  %354 = call { i64, i8* }* @parse__parse_while(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %354
else63:
  br label %merge64
merge64:
  %355 = getelementptr [4 x i8], [4 x i8]* @.str536, i32 0, i32 0
  %356 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str536.c, i8* %355)
  %357 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %356)
  br i1 %357, label %then65, label %else66
then65:
  %358 = call { i64, i8* }* @parse__parse_for(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %358
else66:
  br label %merge67
merge67:
  %359 = getelementptr [7 x i8], [7 x i8]* @.str537, i32 0, i32 0
  %360 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str537.c, i8* %359)
  %361 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %360)
  br i1 %361, label %then68, label %else69
then68:
  %362 = call { i64, i8* }* @parse__parse_return(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %362
else69:
  br label %merge70
merge70:
  %363 = getelementptr [6 x i8], [6 x i8]* @.str538, i32 0, i32 0
  %364 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str538.c, i8* %363)
  %365 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %364)
  br i1 %365, label %then71, label %else72
then71:
  %366 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %367 = getelementptr [6 x i8], [6 x i8]* @.str539, i32 0, i32 0
  %368 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str539.c, i8* %367)
  %369 = call { i64, i8* }* @nyx_array_new_ptr()
  %370 = call { i64, i8* }* @make_astnode(%nyx_string* %368, { i64, i8* }* %369)
  ret { i64, i8* }* %370
else72:
  br label %merge73
merge73:
  %371 = getelementptr [9 x i8], [9 x i8]* @.str540, i32 0, i32 0
  %372 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str540.c, i8* %371)
  %373 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %372)
  br i1 %373, label %then74, label %else75
then74:
  %374 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %375 = getelementptr [9 x i8], [9 x i8]* @.str541, i32 0, i32 0
  %376 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str541.c, i8* %375)
  %377 = call { i64, i8* }* @nyx_array_new_ptr()
  %378 = call { i64, i8* }* @make_astnode(%nyx_string* %376, { i64, i8* }* %377)
  ret { i64, i8* }* %378
else75:
  br label %merge76
merge76:
  %379 = getelementptr [7 x i8], [7 x i8]* @.str542, i32 0, i32 0
  %380 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str542.c, i8* %379)
  %381 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %380)
  br i1 %381, label %then77, label %else78
then77:
  %382 = call { i64, i8* }* @parse__parse_export(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %382
else78:
  br label %merge79
merge79:
  %383 = getelementptr [4 x i8], [4 x i8]* @.str543, i32 0, i32 0
  %384 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str543.c, i8* %383)
  %385 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %384)
  br i1 %385, label %then80, label %else81
then80:
  %386 = call { i64, i8* }* @parse__parse_pub(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %386
else81:
  br label %merge82
merge82:
  %387 = getelementptr [7 x i8], [7 x i8]* @.str544, i32 0, i32 0
  %388 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str544.c, i8* %387)
  %389 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %388)
  br i1 %389, label %then83, label %else84
then83:
  %390 = call { i64, i8* }* @parse__parse_import(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %390
else84:
  br label %merge85
merge85:
  %391 = getelementptr [6 x i8], [6 x i8]* @.str545, i32 0, i32 0
  %392 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str545.c, i8* %391)
  %393 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %392)
  br i1 %393, label %then86, label %else87
then86:
  %394 = call { i64, i8* }* @parse__parse_trait(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %394
else87:
  br label %merge88
merge88:
  %395 = getelementptr [5 x i8], [5 x i8]* @.str546, i32 0, i32 0
  %396 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str546.c, i8* %395)
  %397 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %396)
  br i1 %397, label %then89, label %else90
then89:
  %398 = call { i64, i8* }* @parse__parse_impl(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %398
else90:
  br label %merge91
merge91:
  %399 = getelementptr [5 x i8], [5 x i8]* @.str547, i32 0, i32 0
  %400 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str547.c, i8* %399)
  %401 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %400)
  br i1 %401, label %then92, label %else93
then92:
  %402 = call { i64, i8* }* @parse__parse_test_decl(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %402
else93:
  br label %merge94
merge94:
  %403 = getelementptr [7 x i8], [7 x i8]* @.str548, i32 0, i32 0
  %404 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str548.c, i8* %403)
  %405 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %404)
  br i1 %405, label %then95, label %else96
then95:
  %406 = call { i64, i8* }* @parse__parse_extern_fn(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %406
else96:
  br label %merge97
merge97:
  %407 = getelementptr [7 x i8], [7 x i8]* @.str549, i32 0, i32 0
  %408 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str549.c, i8* %407)
  %409 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %408)
  br i1 %409, label %then98, label %else99
then98:
  %410 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %411 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %412 = alloca { i64, i8* }*
  store { i64, i8* }* %411, { i64, i8* }** %412
  %413 = getelementptr [13 x i8], [13 x i8]* @.str550, i32 0, i32 0
  %414 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str550.c, i8* %413)
  %415 = call { i64, i8* }* @nyx_array_new_ptr()
  %416 = load { i64, i8* }*, { i64, i8* }** %412
  %417 = bitcast { i64, i8* }* %416 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %415, i8* %417)
  %418 = call { i64, i8* }* @make_astnode(%nyx_string* %414, { i64, i8* }* %415)
  ret { i64, i8* }* %418
else99:
  br label %merge100
merge100:
  %419 = getelementptr [7 x i8], [7 x i8]* @.str551, i32 0, i32 0
  %420 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str551.c, i8* %419)
  %421 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %420)
  br i1 %421, label %then101, label %else102
then101:
  %422 = call { i64, i8* }* @parse__parse_static_var(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %422
else102:
  br label %merge103
merge103:
  %423 = getelementptr [7 x i8], [7 x i8]* @.str552, i32 0, i32 0
  %424 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str552.c, i8* %423)
  %425 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %424)
  br i1 %425, label %then104, label %else105
then104:
  %426 = call { i64, i8* }* @parse__parse_module_decl(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %426
else105:
  br label %merge106
merge106:
  %427 = getelementptr [6 x i8], [6 x i8]* @.str553, i32 0, i32 0
  %428 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str553.c, i8* %427)
  %429 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %428)
  br i1 %429, label %then107, label %else108
then107:
  %430 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %431 = getelementptr [11 x i8], [11 x i8]* @.str554, i32 0, i32 0
  %432 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str554.c, i8* %431)
  %433 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %432)
  br i1 %433, label %then110, label %else111
then110:
  %434 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %435 = alloca { i64, i8* }*
  store { i64, i8* }* %434, { i64, i8* }** %435
  %436 = getelementptr [6 x i8], [6 x i8]* @.str555, i32 0, i32 0
  %437 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str555.c, i8* %436)
  %438 = call { i64, i8* }* @nyx_array_new_ptr()
  %439 = load { i64, i8* }*, { i64, i8* }** %435
  %440 = bitcast { i64, i8* }* %439 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %438, i8* %440)
  %441 = call { i64, i8* }* @make_astnode(%nyx_string* %437, { i64, i8* }* %438)
  ret { i64, i8* }* %441
else111:
  br label %merge112
merge112:
  %442 = call { i64, i8* }* @parse__parse_statement(%SharedEnv_parse* %env.param)
  %443 = alloca { i64, i8* }*
  store { i64, i8* }* %442, { i64, i8* }** %443
  %444 = getelementptr [6 x i8], [6 x i8]* @.str556, i32 0, i32 0
  %445 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str556.c, i8* %444)
  %446 = call { i64, i8* }* @nyx_array_new_ptr()
  %447 = call { i64, i8* }* @nyx_array_new_ptr()
  %448 = load { i64, i8* }*, { i64, i8* }** %443
  %449 = bitcast { i64, i8* }* %448 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %447, i8* %449)
  %450 = bitcast { i64, i8* }* %447 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %446, i8* %450)
  %451 = call { i64, i8* }* @make_astnode(%nyx_string* %445, { i64, i8* }* %446)
  %452 = alloca { i64, i8* }*
  store { i64, i8* }* %451, { i64, i8* }** %452
  %453 = getelementptr [6 x i8], [6 x i8]* @.str557, i32 0, i32 0
  %454 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str557.c, i8* %453)
  %455 = call { i64, i8* }* @nyx_array_new_ptr()
  %456 = load { i64, i8* }*, { i64, i8* }** %452
  %457 = bitcast { i64, i8* }* %456 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %455, i8* %457)
  %458 = call { i64, i8* }* @make_astnode(%nyx_string* %454, { i64, i8* }* %455)
  ret { i64, i8* }* %458
else108:
  br label %merge109
merge109:
  %459 = getelementptr [4 x i8], [4 x i8]* @.str558, i32 0, i32 0
  %460 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str558.c, i8* %459)
  %461 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %460)
  br i1 %461, label %then113, label %else114
then113:
  %462 = call { i64, i8* }* @parse__parse_try_catch(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %462
else114:
  br label %merge115
merge115:
  %463 = getelementptr [6 x i8], [6 x i8]* @.str559, i32 0, i32 0
  %464 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str559.c, i8* %463)
  %465 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %464)
  br i1 %465, label %then116, label %else117
then116:
  %466 = call { i64, i8* }* @parse__parse_throw(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %466
else117:
  br label %merge118
merge118:
  %467 = getelementptr [6 x i8], [6 x i8]* @.str560, i32 0, i32 0
  %468 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str560.c, i8* %467)
  %469 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %468)
  br i1 %469, label %then119, label %else120
then119:
  %470 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %471 = call { i64, i8* }* @parse__parse_async_function(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %471
else120:
  br label %merge121
merge121:
  %472 = getelementptr [11 x i8], [11 x i8]* @.str561, i32 0, i32 0
  %473 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str561.c, i8* %472)
  %474 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %473)
  br i1 %474, label %then122, label %else123
then122:
  %475 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %476 = alloca %Token
  store %Token %475, %Token* %476
  %477 = load %Token, %Token* %476
  %478 = call %nyx_string* @get_token_value(%Token %477)
  %479 = alloca %nyx_string*
  store %nyx_string* %478, %nyx_string** %479
  %480 = load %nyx_string*, %nyx_string** %479
  %481 = getelementptr [5 x i8], [5 x i8]* @.str562, i32 0, i32 0
  %482 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str562.c, i8* %481)
  %483 = call i1 @nyx_string_equals(%nyx_string* %480, %nyx_string* %482)
  br i1 %483, label %then125, label %else126
then125:
  %484 = call { i64, i8* }* @parse__parse_type_alias(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %484
else126:
  br label %merge127
merge127:
  %485 = load %nyx_string*, %nyx_string** %479
  %486 = getelementptr [6 x i8], [6 x i8]* @.str563, i32 0, i32 0
  %487 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str563.c, i8* %486)
  %488 = call i1 @nyx_string_equals(%nyx_string* %485, %nyx_string* %487)
  br i1 %488, label %then128, label %else129
then128:
  %489 = call { i64, i8* }* @parse__parse_macro_def(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %489
else129:
  br label %merge130
merge130:
  %490 = load %nyx_string*, %nyx_string** %479
  %491 = getelementptr [6 x i8], [6 x i8]* @.str564, i32 0, i32 0
  %492 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str564.c, i8* %491)
  %493 = call i1 @nyx_string_equals(%nyx_string* %490, %nyx_string* %492)
  br i1 %493, label %then131, label %else132
then131:
  %494 = call { i64, i8* }* @parse__parse_bench_decl(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %494
else132:
  br label %merge133
merge133:
  %495 = load %nyx_string*, %nyx_string** %479
  %496 = getelementptr [6 x i8], [6 x i8]* @.str565, i32 0, i32 0
  %497 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str565.c, i8* %496)
  %498 = call i1 @nyx_string_equals(%nyx_string* %495, %nyx_string* %497)
  br i1 %498, label %then134, label %else135
then134:
  %499 = call { i64, i8* }* @parse__parse_spawn_stmt(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %499
else135:
  br label %merge136
merge136:
  %500 = load %nyx_string*, %nyx_string** %479
  %501 = getelementptr [7 x i8], [7 x i8]* @.str566, i32 0, i32 0
  %502 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str566.c, i8* %501)
  %503 = call i1 @nyx_string_equals(%nyx_string* %500, %nyx_string* %502)
  br i1 %503, label %then137, label %else138
then137:
  %504 = call { i64, i8* }* @parse__parse_select_stmt(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %504
else138:
  br label %merge139
merge139:
  %505 = load %nyx_string*, %nyx_string** %479
  %506 = getelementptr [5 x i8], [5 x i8]* @.str567, i32 0, i32 0
  %507 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str567.c, i8* %506)
  %508 = call i1 @nyx_string_equals(%nyx_string* %505, %nyx_string* %507)
  br i1 %508, label %then140, label %else141
then140:
  %509 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %510 = getelementptr [3 x i8], [3 x i8]* @.str568, i32 0, i32 0
  %511 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str568.c, i8* %510)
  %512 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %511)
  br i1 %512, label %then143, label %else144
then143:
  %513 = call { i64, i8* }* @parse__parse_function(%SharedEnv_parse* %env.param)
  %514 = alloca { i64, i8* }*
  store { i64, i8* }* %513, { i64, i8* }** %514
  %515 = load { i64, i8* }*, { i64, i8* }** %514
  %516 = call i64 @nyx_array_get({ i64, i8* }* %515, i64 1)
  %517 = inttoptr i64 %516 to { i64, i8* }*
  %518 = alloca { i64, i8* }*
  store { i64, i8* }* %517, { i64, i8* }** %518
  %519 = getelementptr [9 x i8], [9 x i8]* @.str569, i32 0, i32 0
  %520 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str569.c, i8* %519)
  %521 = call { i64, i8* }* @nyx_array_new_ptr()
  %522 = load { i64, i8* }*, { i64, i8* }** %518
  %523 = call i64 @nyx_array_get({ i64, i8* }* %522, i64 0)
  call void @nyx_array_push({ i64, i8* }* %521, i64 %523)
  %524 = load { i64, i8* }*, { i64, i8* }** %518
  %525 = call i64 @nyx_array_get({ i64, i8* }* %524, i64 1)
  call void @nyx_array_push({ i64, i8* }* %521, i64 %525)
  %526 = load { i64, i8* }*, { i64, i8* }** %518
  %527 = call i64 @nyx_array_get({ i64, i8* }* %526, i64 2)
  call void @nyx_array_push({ i64, i8* }* %521, i64 %527)
  %528 = load { i64, i8* }*, { i64, i8* }** %518
  %529 = call i64 @nyx_array_get({ i64, i8* }* %528, i64 3)
  call void @nyx_array_push({ i64, i8* }* %521, i64 %529)
  %530 = load { i64, i8* }*, { i64, i8* }** %518
  %531 = call i64 @nyx_array_get({ i64, i8* }* %530, i64 4)
  call void @nyx_array_push({ i64, i8* }* %521, i64 %531)
  %532 = getelementptr [5 x i8], [5 x i8]* @.str570, i32 0, i32 0
  %533 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str570.c, i8* %532)
  %534 = ptrtoint %nyx_string* %533 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %521, i64 %534, i64 2)
  %535 = call { i64, i8* }* @make_astnode(%nyx_string* %520, { i64, i8* }* %521)
  ret { i64, i8* }* %535
else144:
  br label %merge145
merge145:
  br label %merge142
else141:
  br label %merge142
merge142:
  br label %merge124
else123:
  br label %merge124
merge124:
  %536 = getelementptr [5 x i8], [5 x i8]* @.str571, i32 0, i32 0
  %537 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str571.c, i8* %536)
  %538 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %537)
  br i1 %538, label %then146, label %else147
then146:
  %539 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %540 = call { i64, i8* }* @parse__parse_unary(%SharedEnv_parse* %env.param)
  %541 = alloca { i64, i8* }*
  store { i64, i8* }* %540, { i64, i8* }** %541
  %542 = getelementptr [7 x i8], [7 x i8]* @.str572, i32 0, i32 0
  %543 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str572.c, i8* %542)
  %544 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %543)
  br i1 %544, label %then149, label %else150
then149:
  %545 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %546 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %547 = alloca { i64, i8* }*
  store { i64, i8* }* %546, { i64, i8* }** %547
  %548 = getelementptr [13 x i8], [13 x i8]* @.str573, i32 0, i32 0
  %549 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str573.c, i8* %548)
  %550 = call { i64, i8* }* @nyx_array_new_ptr()
  %551 = load { i64, i8* }*, { i64, i8* }** %541
  %552 = bitcast { i64, i8* }* %551 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %550, i8* %552)
  %553 = load { i64, i8* }*, { i64, i8* }** %547
  %554 = bitcast { i64, i8* }* %553 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %550, i8* %554)
  %555 = call { i64, i8* }* @make_astnode(%nyx_string* %549, { i64, i8* }* %550)
  ret { i64, i8* }* %555
else150:
  br label %merge151
merge151:
  %556 = getelementptr [6 x i8], [6 x i8]* @.str574, i32 0, i32 0
  %557 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str574.c, i8* %556)
  %558 = call { i64, i8* }* @nyx_array_new_ptr()
  %559 = load { i64, i8* }*, { i64, i8* }** %541
  %560 = bitcast { i64, i8* }* %559 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %558, i8* %560)
  %561 = call { i64, i8* }* @make_astnode(%nyx_string* %557, { i64, i8* }* %558)
  ret { i64, i8* }* %561
else147:
  br label %merge148
merge148:
  %562 = call { i64, i8* }* @parse__parse_assignment_or_expr(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %562
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
  %23 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %24 = load { i64, i8* }*, { i64, i8* }** %12
  %25 = call i64 @nyx_array_get({ i64, i8* }* %24, i64 0)
  %26 = alloca i64
  store i64 %25, i64* %26
  %27 = load { i64, i8* }*, { i64, i8* }** %12
  %28 = load { i64, i8* }*, { i64, i8* }** %12
  %29 = call i64 @nyx_array_get({ i64, i8* }* %28, i64 0)
  %30 = add i64 %29, 1
  call void @nyx_array_set({ i64, i8* }* %27, i64 0, i64 %30)
  %31 = getelementptr [9 x i8], [9 x i8]* @.str575, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str575.c, i8* %31)
  %33 = load i64, i64* %26
  %34 = call %nyx_string* @nyx_string_from_int(i64 %33)
  %35 = call %nyx_string* @nyx_string_concat(%nyx_string* %32, %nyx_string* %34)
  %36 = alloca %nyx_string*
  store %nyx_string* %35, %nyx_string** %36
  %37 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %38 = alloca { i64, i8* }*
  store { i64, i8* }* %37, { i64, i8* }** %38
  %39 = load { i64, i8* }*, { i64, i8* }** %38
  %40 = call i64 @nyx_array_get({ i64, i8* }* %39, i64 1)
  %41 = inttoptr i64 %40 to { i64, i8* }*
  %42 = alloca { i64, i8* }*
  store { i64, i8* }* %41, { i64, i8* }** %42
  %43 = load { i64, i8* }*, { i64, i8* }** %42
  %44 = call i64 @nyx_array_get({ i64, i8* }* %43, i64 0)
  %45 = inttoptr i64 %44 to { i64, i8* }*
  %46 = alloca { i64, i8* }*
  store { i64, i8* }* %45, { i64, i8* }** %46
  %47 = load { i64, i8* }*, { i64, i8* }** %46
  %48 = getelementptr [7 x i8], [7 x i8]* @.str576, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str576.c, i8* %48)
  %50 = call { i64, i8* }* @nyx_array_new_ptr()
  %51 = getelementptr [8 x i8], [8 x i8]* @.str577, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str577.c, i8* %51)
  %53 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %53, i64 0, i64 1)
  %54 = call { i64, i8* }* @make_astnode(%nyx_string* %52, { i64, i8* }* %53)
  %55 = bitcast { i64, i8* }* %54 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %50, i8* %55)
  %56 = call { i64, i8* }* @make_astnode(%nyx_string* %49, { i64, i8* }* %50)
  %57 = ptrtoint { i64, i8* }* %56 to i64
  call void @nyx_array_push({ i64, i8* }* %47, i64 %57)
  %58 = getelementptr [9 x i8], [9 x i8]* @.str578, i32 0, i32 0
  %59 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str578.c, i8* %58)
  %60 = call { i64, i8* }* @nyx_array_new_ptr()
  %61 = load %nyx_string*, %nyx_string** %36
  %62 = ptrtoint %nyx_string* %61 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %60, i64 %62, i64 2)
  %63 = call { i64, i8* }* @nyx_array_new_ptr()
  %64 = bitcast { i64, i8* }* %63 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %60, i8* %64)
  %65 = getelementptr [4 x i8], [4 x i8]* @.str579, i32 0, i32 0
  %66 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str579.c, i8* %65)
  %67 = ptrtoint %nyx_string* %66 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %60, i64 %67, i64 2)
  %68 = load { i64, i8* }*, { i64, i8* }** %38
  %69 = bitcast { i64, i8* }* %68 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %60, i8* %69)
  %70 = call { i64, i8* }* @nyx_array_new_ptr()
  %71 = bitcast { i64, i8* }* %70 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %60, i8* %71)
  %72 = call { i64, i8* }* @make_astnode(%nyx_string* %59, { i64, i8* }* %60)
  %73 = alloca { i64, i8* }*
  store { i64, i8* }* %72, { i64, i8* }** %73
  %74 = load { i64, i8* }*, { i64, i8* }** %11
  %75 = load { i64, i8* }*, { i64, i8* }** %73
  %76 = ptrtoint { i64, i8* }* %75 to i64
  call void @nyx_array_push({ i64, i8* }* %74, i64 %76)
  %77 = getelementptr [11 x i8], [11 x i8]* @.str580, i32 0, i32 0
  %78 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str580.c, i8* %77)
  %79 = call { i64, i8* }* @nyx_array_new_ptr()
  %80 = load %nyx_string*, %nyx_string** %36
  %81 = ptrtoint %nyx_string* %80 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %79, i64 %81, i64 2)
  %82 = call { i64, i8* }* @make_astnode(%nyx_string* %78, { i64, i8* }* %79)
  %83 = alloca { i64, i8* }*
  store { i64, i8* }* %82, { i64, i8* }** %83
  %84 = getelementptr [11 x i8], [11 x i8]* @.str581, i32 0, i32 0
  %85 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str581.c, i8* %84)
  %86 = call { i64, i8* }* @nyx_array_new_ptr()
  %87 = getelementptr [11 x i8], [11 x i8]* @.str582, i32 0, i32 0
  %88 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str582.c, i8* %87)
  %89 = ptrtoint %nyx_string* %88 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %86, i64 %89, i64 2)
  %90 = call { i64, i8* }* @make_astnode(%nyx_string* %85, { i64, i8* }* %86)
  %91 = alloca { i64, i8* }*
  store { i64, i8* }* %90, { i64, i8* }** %91
  %92 = call { i64, i8* }* @nyx_array_new_ptr()
  %93 = alloca { i64, i8* }*
  store { i64, i8* }* %92, { i64, i8* }** %93
  %94 = load { i64, i8* }*, { i64, i8* }** %93
  %95 = load { i64, i8* }*, { i64, i8* }** %83
  %96 = ptrtoint { i64, i8* }* %95 to i64
  call void @nyx_array_push({ i64, i8* }* %94, i64 %96)
  %97 = getelementptr [5 x i8], [5 x i8]* @.str583, i32 0, i32 0
  %98 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str583.c, i8* %97)
  %99 = call { i64, i8* }* @nyx_array_new_ptr()
  %100 = load { i64, i8* }*, { i64, i8* }** %91
  %101 = bitcast { i64, i8* }* %100 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %99, i8* %101)
  %102 = load { i64, i8* }*, { i64, i8* }** %93
  %103 = bitcast { i64, i8* }* %102 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %99, i8* %103)
  %104 = call { i64, i8* }* @make_astnode(%nyx_string* %98, { i64, i8* }* %99)
  ret { i64, i8* }* %104
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
  %23 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %24 = getelementptr [11 x i8], [11 x i8]* @.str584, i32 0, i32 0
  %25 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str584.c, i8* %24)
  %26 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %25)
  %27 = call { i64, i8* }* @nyx_array_new_ptr()
  %28 = alloca { i64, i8* }*
  store { i64, i8* }* %27, { i64, i8* }** %28
  %29 = getelementptr [6 x i8], [6 x i8]* @.str585, i32 0, i32 0
  %30 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str585.c, i8* %29)
  %31 = call { i64, i8* }* @nyx_array_new_ptr()
  %32 = call { i64, i8* }* @nyx_array_new_ptr()
  %33 = bitcast { i64, i8* }* %32 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %31, i8* %33)
  %34 = call { i64, i8* }* @make_astnode(%nyx_string* %30, { i64, i8* }* %31)
  %35 = alloca { i64, i8* }*
  store { i64, i8* }* %34, { i64, i8* }** %35
  %36 = alloca i1
  store i1 0, i1* %36
  %37 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %38 = getelementptr [12 x i8], [12 x i8]* @.str586, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str586.c, i8* %38)
  %40 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %39)
  %41 = xor i1 %40, true
  br i1 %41, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %37)
  %42 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %43 = alloca %Token
  store %Token %42, %Token* %43
  %44 = load %Token, %Token* %43
  %45 = call %nyx_string* @get_token_value(%Token %44)
  %46 = alloca %nyx_string*
  store %nyx_string* %45, %nyx_string** %46
  %47 = load %nyx_string*, %nyx_string** %46
  %48 = getelementptr [8 x i8], [8 x i8]* @.str587, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str587.c, i8* %48)
  %50 = call i1 @nyx_string_equals(%nyx_string* %47, %nyx_string* %49)
  br i1 %50, label %then3, label %else4
then3:
  %51 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %52 = getelementptr [12 x i8], [12 x i8]* @.str588, i32 0, i32 0
  %53 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str588.c, i8* %52)
  %54 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %53)
  %55 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %55, { i64, i8* }** %35
  store i1 1, i1* %36
  br label %merge5
else4:
  %56 = load %nyx_string*, %nyx_string** %46
  %57 = getelementptr [5 x i8], [5 x i8]* @.str589, i32 0, i32 0
  %58 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str589.c, i8* %57)
  %59 = call i1 @nyx_string_equals(%nyx_string* %56, %nyx_string* %58)
  br i1 %59, label %then6, label %else7
then6:
  %60 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge8
else7:
  br label %merge8
merge8:
  %61 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %62 = alloca { i64, i8* }*
  store { i64, i8* }* %61, { i64, i8* }** %62
  %63 = getelementptr [12 x i8], [12 x i8]* @.str590, i32 0, i32 0
  %64 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str590.c, i8* %63)
  %65 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %64)
  %66 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %67 = alloca { i64, i8* }*
  store { i64, i8* }* %66, { i64, i8* }** %67
  %68 = call { i64, i8* }* @nyx_array_new_ptr()
  %69 = alloca { i64, i8* }*
  store { i64, i8* }* %68, { i64, i8* }** %69
  %70 = load { i64, i8* }*, { i64, i8* }** %69
  %71 = load { i64, i8* }*, { i64, i8* }** %62
  %72 = ptrtoint { i64, i8* }* %71 to i64
  call void @nyx_array_push({ i64, i8* }* %70, i64 %72)
  %73 = load { i64, i8* }*, { i64, i8* }** %69
  %74 = load { i64, i8* }*, { i64, i8* }** %67
  %75 = ptrtoint { i64, i8* }* %74 to i64
  call void @nyx_array_push({ i64, i8* }* %73, i64 %75)
  %76 = load { i64, i8* }*, { i64, i8* }** %28
  %77 = load { i64, i8* }*, { i64, i8* }** %69
  %78 = ptrtoint { i64, i8* }* %77 to i64
  call void @nyx_array_push({ i64, i8* }* %76, i64 %78)
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %79 = getelementptr [12 x i8], [12 x i8]* @.str591, i32 0, i32 0
  %80 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str591.c, i8* %79)
  %81 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %80)
  %82 = alloca i64
  store i64 0, i64* %82
  %83 = load i1, i1* %36
  br i1 %83, label %then9, label %else10
then9:
  store i64 1, i64* %82
  br label %merge11
else10:
  br label %merge11
merge11:
  %84 = getelementptr [12 x i8], [12 x i8]* @.str592, i32 0, i32 0
  %85 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str592.c, i8* %84)
  %86 = call { i64, i8* }* @nyx_array_new_ptr()
  %87 = load { i64, i8* }*, { i64, i8* }** %28
  %88 = bitcast { i64, i8* }* %87 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %86, i8* %88)
  %89 = load { i64, i8* }*, { i64, i8* }** %35
  %90 = bitcast { i64, i8* }* %89 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %86, i8* %90)
  %91 = load i64, i64* %82
  call void @nyx_array_push({ i64, i8* }* %86, i64 %91)
  %92 = call { i64, i8* }* @make_astnode(%nyx_string* %85, { i64, i8* }* %86)
  ret { i64, i8* }* %92
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
  %23 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %24 = getelementptr [7 x i8], [7 x i8]* @.str593, i32 0, i32 0
  %25 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str593.c, i8* %24)
  %26 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %25)
  %27 = alloca %Token
  store %Token %26, %Token* %27
  %28 = load %Token, %Token* %27
  %29 = call %nyx_string* @get_token_value(%Token %28)
  %30 = alloca %nyx_string*
  store %nyx_string* %29, %nyx_string** %30
  %31 = getelementptr [7 x i8], [7 x i8]* @.str594, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str594.c, i8* %31)
  %33 = alloca %nyx_string*
  store %nyx_string* %32, %nyx_string** %33
  %34 = getelementptr [7 x i8], [7 x i8]* @.str595, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str595.c, i8* %34)
  %36 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %35)
  br i1 %36, label %then0, label %else1
then0:
  %37 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %38 = alloca %Token
  store %Token %37, %Token* %38
  %39 = load %Token, %Token* %38
  %40 = call %nyx_string* @get_token_value(%Token %39)
  store %nyx_string* %40, %nyx_string** %33
  br label %merge2
else1:
  br label %merge2
merge2:
  %41 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %42 = alloca { i64, i8* }*
  store { i64, i8* }* %41, { i64, i8* }** %42
  %43 = getelementptr [11 x i8], [11 x i8]* @.str596, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str596.c, i8* %43)
  %45 = call { i64, i8* }* @nyx_array_new_ptr()
  %46 = load %nyx_string*, %nyx_string** %30
  %47 = ptrtoint %nyx_string* %46 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %45, i64 %47, i64 2)
  %48 = load %nyx_string*, %nyx_string** %33
  %49 = ptrtoint %nyx_string* %48 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %45, i64 %49, i64 2)
  %50 = load { i64, i8* }*, { i64, i8* }** %42
  %51 = bitcast { i64, i8* }* %50 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %45, i8* %51)
  %52 = call { i64, i8* }* @make_astnode(%nyx_string* %44, { i64, i8* }* %45)
  ret { i64, i8* }* %52
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
  %23 = getelementptr [5 x i8], [5 x i8]* @.str597, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str597.c, i8* %23)
  %25 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %24)
  %26 = getelementptr [7 x i8], [7 x i8]* @.str598, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str598.c, i8* %26)
  %28 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %27)
  %29 = alloca %Token
  store %Token %28, %Token* %29
  %30 = load %Token, %Token* %29
  %31 = call %nyx_string* @get_token_value(%Token %30)
  %32 = alloca %nyx_string*
  store %nyx_string* %31, %nyx_string** %32
  %33 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %34 = alloca { i64, i8* }*
  store { i64, i8* }* %33, { i64, i8* }** %34
  %35 = getelementptr [10 x i8], [10 x i8]* @.str599, i32 0, i32 0
  %36 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str599.c, i8* %35)
  %37 = call { i64, i8* }* @nyx_array_new_ptr()
  %38 = load %nyx_string*, %nyx_string** %32
  %39 = ptrtoint %nyx_string* %38 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %37, i64 %39, i64 2)
  %40 = load { i64, i8* }*, { i64, i8* }** %34
  %41 = bitcast { i64, i8* }* %40 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %37, i8* %41)
  %42 = call { i64, i8* }* @make_astnode(%nyx_string* %36, { i64, i8* }* %37)
  ret { i64, i8* }* %42
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
  %23 = getelementptr [7 x i8], [7 x i8]* @.str600, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str600.c, i8* %23)
  %25 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %24)
  %26 = getelementptr [4 x i8], [4 x i8]* @.str601, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str601.c, i8* %26)
  %28 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %27)
  %29 = getelementptr [11 x i8], [11 x i8]* @.str602, i32 0, i32 0
  %30 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str602.c, i8* %29)
  %31 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %30)
  %32 = alloca %Token
  store %Token %31, %Token* %32
  %33 = load %Token, %Token* %32
  %34 = call %nyx_string* @get_token_value(%Token %33)
  %35 = alloca %nyx_string*
  store %nyx_string* %34, %nyx_string** %35
  %36 = getelementptr [4 x i8], [4 x i8]* @.str603, i32 0, i32 0
  %37 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str603.c, i8* %36)
  %38 = alloca %nyx_string*
  store %nyx_string* %37, %nyx_string** %38
  %39 = getelementptr [6 x i8], [6 x i8]* @.str604, i32 0, i32 0
  %40 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str604.c, i8* %39)
  %41 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %40)
  br i1 %41, label %then0, label %else1
then0:
  %42 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %43 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %43, %nyx_string** %38
  br label %merge2
else1:
  br label %merge2
merge2:
  %44 = getelementptr [7 x i8], [7 x i8]* @.str605, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str605.c, i8* %44)
  %46 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %45)
  %47 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %48 = alloca { i64, i8* }*
  store { i64, i8* }* %47, { i64, i8* }** %48
  %49 = getelementptr [11 x i8], [11 x i8]* @.str606, i32 0, i32 0
  %50 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str606.c, i8* %49)
  %51 = call { i64, i8* }* @nyx_array_new_ptr()
  %52 = load %nyx_string*, %nyx_string** %35
  %53 = ptrtoint %nyx_string* %52 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %51, i64 %53, i64 2)
  %54 = load %nyx_string*, %nyx_string** %38
  %55 = ptrtoint %nyx_string* %54 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %51, i64 %55, i64 2)
  %56 = load { i64, i8* }*, { i64, i8* }** %48
  %57 = bitcast { i64, i8* }* %56 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %51, i8* %57)
  %58 = call { i64, i8* }* @make_astnode(%nyx_string* %50, { i64, i8* }* %51)
  ret { i64, i8* }* %58
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
  %23 = getelementptr [7 x i8], [7 x i8]* @.str607, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str607.c, i8* %23)
  %25 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %24)
  %26 = getelementptr [7 x i8], [7 x i8]* @.str608, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str608.c, i8* %26)
  %28 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %27)
  %29 = alloca %Token
  store %Token %28, %Token* %29
  %30 = load %Token, %Token* %29
  %31 = call %nyx_string* @get_token_value(%Token %30)
  %32 = alloca %nyx_string*
  store %nyx_string* %31, %nyx_string** %32
  %33 = getelementptr [3 x i8], [3 x i8]* @.str609, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str609.c, i8* %33)
  %35 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %34)
  %36 = getelementptr [11 x i8], [11 x i8]* @.str610, i32 0, i32 0
  %37 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str610.c, i8* %36)
  %38 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %37)
  %39 = alloca %Token
  store %Token %38, %Token* %39
  %40 = load %Token, %Token* %39
  %41 = call %nyx_string* @get_token_value(%Token %40)
  %42 = alloca %nyx_string*
  store %nyx_string* %41, %nyx_string** %42
  %43 = getelementptr [11 x i8], [11 x i8]* @.str611, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str611.c, i8* %43)
  %45 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %44)
  %46 = call { i64, i8* }* @nyx_array_new_ptr()
  %47 = alloca { i64, i8* }*
  store { i64, i8* }* %46, { i64, i8* }** %47
  %48 = alloca i1
  store i1 0, i1* %48
  %49 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %50 = load i1, i1* %48
  %51 = xor i1 %50, true
  br i1 %51, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %49)
  %52 = getelementptr [12 x i8], [12 x i8]* @.str612, i32 0, i32 0
  %53 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str612.c, i8* %52)
  %54 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %53)
  br i1 %54, label %then3, label %else4
then3:
  %55 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %48
  br label %merge5
else4:
  %56 = load { i64, i8* }*, { i64, i8* }** %47
  %57 = call i64 @nyx_array_length({ i64, i8* }* %56)
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %then6, label %else7
then6:
  %59 = getelementptr [6 x i8], [6 x i8]* @.str613, i32 0, i32 0
  %60 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str613.c, i8* %59)
  %61 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %60)
  br label %merge8
else7:
  br label %merge8
merge8:
  %62 = getelementptr [11 x i8], [11 x i8]* @.str614, i32 0, i32 0
  %63 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str614.c, i8* %62)
  %64 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %63)
  %65 = alloca %Token
  store %Token %64, %Token* %65
  %66 = load %Token, %Token* %65
  %67 = call %nyx_string* @get_token_value(%Token %66)
  %68 = alloca %nyx_string*
  store %nyx_string* %67, %nyx_string** %68
  %69 = getelementptr [6 x i8], [6 x i8]* @.str615, i32 0, i32 0
  %70 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str615.c, i8* %69)
  %71 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %70)
  %72 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %73 = alloca %nyx_string*
  store %nyx_string* %72, %nyx_string** %73
  %74 = load { i64, i8* }*, { i64, i8* }** %47
  %75 = call { i64, i8* }* @nyx_array_new_ptr()
  %76 = load %nyx_string*, %nyx_string** %68
  %77 = ptrtoint %nyx_string* %76 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %75, i64 %77, i64 2)
  %78 = load %nyx_string*, %nyx_string** %73
  %79 = ptrtoint %nyx_string* %78 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %75, i64 %79, i64 2)
  %80 = ptrtoint { i64, i8* }* %75 to i64
  call void @nyx_array_push({ i64, i8* }* %74, i64 %80)
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %81 = getelementptr [5 x i8], [5 x i8]* @.str616, i32 0, i32 0
  %82 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str616.c, i8* %81)
  %83 = alloca %nyx_string*
  store %nyx_string* %82, %nyx_string** %83
  %84 = getelementptr [6 x i8], [6 x i8]* @.str617, i32 0, i32 0
  %85 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str617.c, i8* %84)
  %86 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %85)
  br i1 %86, label %then9, label %else10
then9:
  %87 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %88 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %88, %nyx_string** %83
  br label %merge11
else10:
  br label %merge11
merge11:
  %89 = getelementptr [10 x i8], [10 x i8]* @.str618, i32 0, i32 0
  %90 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str618.c, i8* %89)
  %91 = call { i64, i8* }* @nyx_array_new_ptr()
  %92 = load %nyx_string*, %nyx_string** %42
  %93 = ptrtoint %nyx_string* %92 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %91, i64 %93, i64 2)
  %94 = load { i64, i8* }*, { i64, i8* }** %47
  %95 = bitcast { i64, i8* }* %94 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %91, i8* %95)
  %96 = load %nyx_string*, %nyx_string** %83
  %97 = ptrtoint %nyx_string* %96 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %91, i64 %97, i64 2)
  %98 = load %nyx_string*, %nyx_string** %32
  %99 = ptrtoint %nyx_string* %98 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %91, i64 %99, i64 2)
  %100 = call { i64, i8* }* @make_astnode(%nyx_string* %90, { i64, i8* }* %91)
  ret { i64, i8* }* %100
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
  %23 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %24 = getelementptr [11 x i8], [11 x i8]* @.str619, i32 0, i32 0
  %25 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str619.c, i8* %24)
  %26 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %25)
  %27 = alloca %Token
  store %Token %26, %Token* %27
  %28 = load %Token, %Token* %27
  %29 = call %nyx_string* @get_token_value(%Token %28)
  %30 = alloca %nyx_string*
  store %nyx_string* %29, %nyx_string** %30
  %31 = getelementptr [11 x i8], [11 x i8]* @.str620, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str620.c, i8* %31)
  %33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %32)
  %34 = getelementptr [11 x i8], [11 x i8]* @.str621, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str621.c, i8* %34)
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
  %43 = getelementptr [12 x i8], [12 x i8]* @.str622, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str622.c, i8* %43)
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
  %50 = getelementptr [6 x i8], [6 x i8]* @.str623, i32 0, i32 0
  %51 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str623.c, i8* %50)
  %52 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %51)
  br label %merge8
else7:
  br label %merge8
merge8:
  %53 = getelementptr [11 x i8], [11 x i8]* @.str624, i32 0, i32 0
  %54 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str624.c, i8* %53)
  %55 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %54)
  %56 = alloca %Token
  store %Token %55, %Token* %56
  %57 = load { i64, i8* }*, { i64, i8* }** %38
  %58 = load %Token, %Token* %56
  %59 = call %nyx_string* @get_token_value(%Token %58)
  %60 = ptrtoint %nyx_string* %59 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %57, i64 %60, i64 2)
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %61 = getelementptr [12 x i8], [12 x i8]* @.str625, i32 0, i32 0
  %62 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str625.c, i8* %61)
  %63 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %62)
  %64 = load i64, i64* %4
  %65 = alloca i64
  store i64 %64, i64* %65
  %66 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %67 = getelementptr [12 x i8], [12 x i8]* @.str626, i32 0, i32 0
  %68 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str626.c, i8* %67)
  %69 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %68)
  %70 = getelementptr [1 x i8], [1 x i8]* @.str627, i32 0, i32 0
  %71 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str627.c, i8* %70)
  %72 = alloca %nyx_string*
  store %nyx_string* %71, %nyx_string** %72
  %73 = alloca i64
  store i64 0, i64* %73
  %74 = call i8* @llvm.stacksave()
  br label %while_cond9
while_cond9:
  %75 = load i64, i64* %73
  %76 = load { i64, i8* }*, { i64, i8* }** %38
  %77 = call i64 @nyx_array_length({ i64, i8* }* %76)
  %78 = icmp slt i64 %75, %77
  br i1 %78, label %while_body10, label %while_end11
while_body10:
  call void @llvm.stackrestore(i8* %74)
  %79 = load i64, i64* %73
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %then12, label %else13
then12:
  %81 = load %nyx_string*, %nyx_string** %72
  %82 = getelementptr [2 x i8], [2 x i8]* @.str628, i32 0, i32 0
  %83 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str628.c, i8* %82)
  %84 = call %nyx_string* @nyx_string_concat(%nyx_string* %81, %nyx_string* %83)
  store %nyx_string* %84, %nyx_string** %72
  br label %merge14
else13:
  br label %merge14
merge14:
  %85 = load { i64, i8* }*, { i64, i8* }** %38
  %86 = load i64, i64* %73
  %87 = call i64 @nyx_array_get_checked({ i64, i8* }* %85, i64 %86, i64 2)
  %88 = inttoptr i64 %87 to %nyx_string*
  %89 = alloca %nyx_string*
  store %nyx_string* %88, %nyx_string** %89
  %90 = load %nyx_string*, %nyx_string** %72
  %91 = load %nyx_string*, %nyx_string** %89
  %92 = call %nyx_string* @nyx_string_concat(%nyx_string* %90, %nyx_string* %91)
  store %nyx_string* %92, %nyx_string** %72
  %93 = load i64, i64* %73
  %94 = add i64 %93, 1
  store i64 %94, i64* %73
  br label %while_cond9
while_end11:
  %95 = load { i64, i8* }*, { i64, i8* }** %13
  %96 = load %nyx_string*, %nyx_string** %30
  %97 = ptrtoint %nyx_string* %96 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %95, i64 %97, i64 2)
  %98 = load { i64, i8* }*, { i64, i8* }** %14
  %99 = load i64, i64* %65
  call void @nyx_array_push({ i64, i8* }* %98, i64 %99)
  %100 = load { i64, i8* }*, { i64, i8* }** %15
  %101 = load %nyx_string*, %nyx_string** %72
  %102 = ptrtoint %nyx_string* %101 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %100, i64 %102, i64 2)
  %103 = getelementptr [10 x i8], [10 x i8]* @.str629, i32 0, i32 0
  %104 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str629.c, i8* %103)
  %105 = call { i64, i8* }* @nyx_array_new_ptr()
  %106 = load %nyx_string*, %nyx_string** %30
  %107 = ptrtoint %nyx_string* %106 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %105, i64 %107, i64 2)
  %108 = call { i64, i8* }* @make_astnode(%nyx_string* %104, { i64, i8* }* %105)
  ret { i64, i8* }* %108
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
  %23 = alloca %nyx_string*
  store %nyx_string* %mac_name.param, %nyx_string** %23
  %24 = getelementptr [4 x i8], [4 x i8]* @.str630, i32 0, i32 0
  %25 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str630.c, i8* %24)
  %26 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %25)
  %27 = getelementptr [11 x i8], [11 x i8]* @.str631, i32 0, i32 0
  %28 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str631.c, i8* %27)
  %29 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %28)
  %30 = call { i64, i8* }* @nyx_array_new_ptr()
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
  %36 = getelementptr [12 x i8], [12 x i8]* @.str632, i32 0, i32 0
  %37 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str632.c, i8* %36)
  %38 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %37)
  br i1 %38, label %then3, label %else4
then3:
  %39 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %32
  br label %merge5
else4:
  %40 = load { i64, i8* }*, { i64, i8* }** %31
  %41 = call i64 @nyx_array_length({ i64, i8* }* %40)
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %then6, label %else7
then6:
  %43 = getelementptr [6 x i8], [6 x i8]* @.str633, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str633.c, i8* %43)
  %45 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %44)
  br label %merge8
else7:
  br label %merge8
merge8:
  %46 = load { i64, i8* }*, { i64, i8* }** %31
  %47 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %48 = ptrtoint { i64, i8* }* %47 to i64
  call void @nyx_array_push({ i64, i8* }* %46, i64 %48)
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %49 = alloca i64
  store i64 0, i64* %49
  %50 = alloca i64
  store i64 0, i64* %50
  %51 = call i8* @llvm.stacksave()
  br label %while_cond9
while_cond9:
  %52 = load i64, i64* %50
  %53 = load { i64, i8* }*, { i64, i8* }** %13
  %54 = call i64 @nyx_array_length({ i64, i8* }* %53)
  %55 = icmp slt i64 %52, %54
  br i1 %55, label %while_body10, label %while_end11
while_body10:
  call void @llvm.stackrestore(i8* %51)
  %56 = load { i64, i8* }*, { i64, i8* }** %13
  %57 = load i64, i64* %50
  %58 = call i64 @nyx_array_get_checked({ i64, i8* }* %56, i64 %57, i64 2)
  %59 = inttoptr i64 %58 to %nyx_string*
  %60 = alloca %nyx_string*
  store %nyx_string* %59, %nyx_string** %60
  %61 = load %nyx_string*, %nyx_string** %60
  %62 = load %nyx_string*, %nyx_string** %23
  %63 = call i1 @nyx_string_equals(%nyx_string* %61, %nyx_string* %62)
  br i1 %63, label %then12, label %else13
then12:
  %64 = load i64, i64* %50
  store i64 %64, i64* %49
  br label %merge14
else13:
  br label %merge14
merge14:
  %65 = load i64, i64* %50
  %66 = add i64 %65, 1
  store i64 %66, i64* %50
  br label %while_cond9
while_end11:
  %67 = load { i64, i8* }*, { i64, i8* }** %15
  %68 = load i64, i64* %49
  %69 = call i64 @nyx_array_get_checked({ i64, i8* }* %67, i64 %68, i64 2)
  %70 = inttoptr i64 %69 to %nyx_string*
  %71 = alloca %nyx_string*
  store %nyx_string* %70, %nyx_string** %71
  %72 = load { i64, i8* }*, { i64, i8* }** %14
  %73 = load i64, i64* %49
  %74 = call i64 @nyx_array_get({ i64, i8* }* %72, i64 %73)
  %75 = alloca i64
  store i64 %74, i64* %75
  %76 = call { i64, i8* }* @nyx_array_new_ptr()
  %77 = alloca { i64, i8* }*
  store { i64, i8* }* %76, { i64, i8* }** %77
  %78 = load %nyx_string*, %nyx_string** %71
  %79 = getelementptr [1 x i8], [1 x i8]* @.str634, i32 0, i32 0
  %80 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str634.c, i8* %79)
  %81 = call i1 @nyx_string_equals(%nyx_string* %78, %nyx_string* %80)
  %82 = xor i1 %81, true
  br i1 %82, label %then15, label %else16
then15:
  %83 = load %nyx_string*, %nyx_string** %71
  %84 = getelementptr [2 x i8], [2 x i8]* @.str635, i32 0, i32 0
  %85 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str635.c, i8* %84)
  %86 = call { i64, i8* }* @nyx_string_split(%nyx_string* %83, %nyx_string* %85)
  store { i64, i8* }* %86, { i64, i8* }** %77
  br label %merge17
else16:
  br label %merge17
merge17:
  %87 = load i64, i64* %4
  %88 = alloca i64
  store i64 %87, i64* %88
  %89 = load { i64, i8* }*, { i64, i8* }** %77
  store { i64, i8* }* %89, { i64, i8* }** %16
  %90 = load { i64, i8* }*, { i64, i8* }** %31
  store { i64, i8* }* %90, { i64, i8* }** %17
  %91 = load i64, i64* %75
  store i64 %91, i64* %4
  %92 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %93 = alloca { i64, i8* }*
  store { i64, i8* }* %92, { i64, i8* }** %93
  %94 = load i64, i64* %88
  store i64 %94, i64* %4
  %95 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %95, { i64, i8* }** %16
  %96 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %96, { i64, i8* }** %17
  %97 = load { i64, i8* }*, { i64, i8* }** %93
  ret { i64, i8* }* %97
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
  %23 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %24 = getelementptr [11 x i8], [11 x i8]* @.str636, i32 0, i32 0
  %25 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str636.c, i8* %24)
  %26 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %25)
  %27 = alloca %Token
  store %Token %26, %Token* %27
  %28 = load %Token, %Token* %27
  %29 = call %nyx_string* @get_token_value(%Token %28)
  %30 = alloca %nyx_string*
  store %nyx_string* %29, %nyx_string** %30
  %31 = getelementptr [7 x i8], [7 x i8]* @.str637, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str637.c, i8* %31)
  %33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %32)
  %34 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %35 = alloca %nyx_string*
  store %nyx_string* %34, %nyx_string** %35
  %36 = getelementptr [5 x i8], [5 x i8]* @.str638, i32 0, i32 0
  %37 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str638.c, i8* %36)
  %38 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %37)
  br i1 %38, label %then0, label %else1
then0:
  %39 = call { i64, i8* }* @nyx_array_new_ptr()
  %40 = load %nyx_string*, %nyx_string** %35
  %41 = ptrtoint %nyx_string* %40 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %39, i64 %41, i64 2)
  %42 = alloca { i64, i8* }*
  store { i64, i8* }* %39, { i64, i8* }** %42
  %43 = call i8* @llvm.stacksave()
  br label %while_cond3
while_cond3:
  %44 = getelementptr [5 x i8], [5 x i8]* @.str639, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str639.c, i8* %44)
  %46 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %45)
  br i1 %46, label %while_body4, label %while_end5
while_body4:
  call void @llvm.stackrestore(i8* %43)
  %47 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %48 = load { i64, i8* }*, { i64, i8* }** %42
  %49 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %50 = ptrtoint %nyx_string* %49 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %48, i64 %50, i64 2)
  br label %while_cond3
while_end5:
  %51 = call { i64, i8* }* @nyx_array_new_ptr()
  %52 = alloca { i64, i8* }*
  store { i64, i8* }* %51, { i64, i8* }** %52
  %53 = alloca i64
  store i64 0, i64* %53
  %54 = call i8* @llvm.stacksave()
  br label %while_cond6
while_cond6:
  %55 = load i64, i64* %53
  %56 = load { i64, i8* }*, { i64, i8* }** %42
  %57 = call i64 @nyx_array_length({ i64, i8* }* %56)
  %58 = icmp slt i64 %55, %57
  br i1 %58, label %while_body7, label %while_end8
while_body7:
  call void @llvm.stackrestore(i8* %54)
  %59 = load { i64, i8* }*, { i64, i8* }** %42
  %60 = load i64, i64* %53
  %61 = call i64 @nyx_array_get_checked({ i64, i8* }* %59, i64 %60, i64 2)
  %62 = inttoptr i64 %61 to %nyx_string*
  %63 = alloca %nyx_string*
  store %nyx_string* %62, %nyx_string** %63
  %64 = call { i64, i8* }* @nyx_array_new_ptr()
  %65 = load %nyx_string*, %nyx_string** %63
  %66 = ptrtoint %nyx_string* %65 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %64, i64 %66, i64 2)
  %67 = alloca { i64, i8* }*
  store { i64, i8* }* %64, { i64, i8* }** %67
  %68 = load { i64, i8* }*, { i64, i8* }** %52
  %69 = call { i64, i8* }* @nyx_array_new_ptr()
  %70 = load %nyx_string*, %nyx_string** %63
  %71 = ptrtoint %nyx_string* %70 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %69, i64 %71, i64 2)
  %72 = load { i64, i8* }*, { i64, i8* }** %67
  %73 = bitcast { i64, i8* }* %72 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %69, i8* %73)
  %74 = ptrtoint { i64, i8* }* %69 to i64
  call void @nyx_array_push({ i64, i8* }* %68, i64 %74)
  %75 = load i64, i64* %53
  %76 = add i64 %75, 1
  store i64 %76, i64* %53
  br label %while_cond6
while_end8:
  %77 = getelementptr [9 x i8], [9 x i8]* @.str640, i32 0, i32 0
  %78 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str640.c, i8* %77)
  %79 = call { i64, i8* }* @nyx_array_new_ptr()
  %80 = load %nyx_string*, %nyx_string** %30
  %81 = ptrtoint %nyx_string* %80 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %79, i64 %81, i64 2)
  %82 = load { i64, i8* }*, { i64, i8* }** %52
  %83 = bitcast { i64, i8* }* %82 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %79, i8* %83)
  %84 = call { i64, i8* }* @nyx_array_new_ptr()
  %85 = bitcast { i64, i8* }* %84 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %79, i8* %85)
  %86 = call { i64, i8* }* @make_astnode(%nyx_string* %78, { i64, i8* }* %79)
  ret { i64, i8* }* %86
else1:
  br label %merge2
merge2:
  %87 = getelementptr [11 x i8], [11 x i8]* @.str641, i32 0, i32 0
  %88 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str641.c, i8* %87)
  %89 = call { i64, i8* }* @nyx_array_new_ptr()
  %90 = load %nyx_string*, %nyx_string** %30
  %91 = ptrtoint %nyx_string* %90 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %89, i64 %91, i64 2)
  %92 = load %nyx_string*, %nyx_string** %35
  %93 = ptrtoint %nyx_string* %92 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %89, i64 %93, i64 2)
  %94 = call { i64, i8* }* @make_astnode(%nyx_string* %88, { i64, i8* }* %89)
  ret { i64, i8* }* %94
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
  %23 = getelementptr [11 x i8], [11 x i8]* @.str642, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str642.c, i8* %23)
  %25 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %24)
  br i1 %25, label %then0, label %else1
then0:
  %26 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %27 = getelementptr [2 x i8], [2 x i8]* @.str643, i32 0, i32 0
  %28 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str643.c, i8* %27)
  %29 = alloca %nyx_string*
  store %nyx_string* %28, %nyx_string** %29
  %30 = load %nyx_string*, %nyx_string** %29
  %31 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %32 = call %nyx_string* @nyx_string_concat(%nyx_string* %30, %nyx_string* %31)
  store %nyx_string* %32, %nyx_string** %29
  %33 = call i8* @llvm.stacksave()
  br label %while_cond3
while_cond3:
  %34 = getelementptr [6 x i8], [6 x i8]* @.str644, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str644.c, i8* %34)
  %36 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %35)
  br i1 %36, label %while_body4, label %while_end5
while_body4:
  call void @llvm.stackrestore(i8* %33)
  %37 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %38 = load %nyx_string*, %nyx_string** %29
  %39 = getelementptr [2 x i8], [2 x i8]* @.str645, i32 0, i32 0
  %40 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str645.c, i8* %39)
  %41 = call %nyx_string* @nyx_string_concat(%nyx_string* %38, %nyx_string* %40)
  %42 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %43 = call %nyx_string* @nyx_string_concat(%nyx_string* %41, %nyx_string* %42)
  store %nyx_string* %43, %nyx_string** %29
  br label %while_cond3
while_end5:
  %44 = getelementptr [12 x i8], [12 x i8]* @.str646, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str646.c, i8* %44)
  %46 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %45)
  %47 = load %nyx_string*, %nyx_string** %29
  %48 = getelementptr [2 x i8], [2 x i8]* @.str647, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str647.c, i8* %48)
  %50 = call %nyx_string* @nyx_string_concat(%nyx_string* %47, %nyx_string* %49)
  store %nyx_string* %50, %nyx_string** %29
  %51 = load %nyx_string*, %nyx_string** %29
  ret %nyx_string* %51
else1:
  br label %merge2
merge2:
  %52 = getelementptr [3 x i8], [3 x i8]* @.str648, i32 0, i32 0
  %53 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str648.c, i8* %52)
  %54 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %53)
  br i1 %54, label %then6, label %else7
then6:
  %55 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %56 = getelementptr [3 x i8], [3 x i8]* @.str649, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str649.c, i8* %56)
  ret %nyx_string* %57
else7:
  br label %merge8
merge8:
  %58 = getelementptr [5 x i8], [5 x i8]* @.str650, i32 0, i32 0
  %59 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str650.c, i8* %58)
  %60 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %59)
  br i1 %60, label %then9, label %else10
then9:
  %61 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %62 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %63 = alloca %nyx_string*
  store %nyx_string* %62, %nyx_string** %63
  %64 = getelementptr [2 x i8], [2 x i8]* @.str651, i32 0, i32 0
  %65 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str651.c, i8* %64)
  %66 = load %nyx_string*, %nyx_string** %63
  %67 = call %nyx_string* @nyx_string_concat(%nyx_string* %65, %nyx_string* %66)
  ret %nyx_string* %67
else10:
  br label %merge11
merge11:
  %68 = getelementptr [4 x i8], [4 x i8]* @.str652, i32 0, i32 0
  %69 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str652.c, i8* %68)
  %70 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %69)
  br i1 %70, label %then12, label %else13
then12:
  %71 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %72 = getelementptr [9 x i8], [9 x i8]* @.str653, i32 0, i32 0
  %73 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str653.c, i8* %72)
  %74 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %73)
  br i1 %74, label %then15, label %else16
then15:
  %75 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %76 = alloca %Token
  store %Token %75, %Token* %76
  %77 = load %Token, %Token* %76
  %78 = call %nyx_string* @get_token_value(%Token %77)
  %79 = alloca %nyx_string*
  store %nyx_string* %78, %nyx_string** %79
  %80 = load %nyx_string*, %nyx_string** %79
  %81 = call i64 @nyx_string_byte_length(%nyx_string* %80)
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %then18, label %else19
then18:
  %83 = load %nyx_string*, %nyx_string** %79
  %84 = call i8 @nyx_string_char_at(%nyx_string* %83, i64 0)
  %85 = zext i8 %84 to i64
  %86 = getelementptr [1 x i8], [1 x i8]* @.str654, i32 0, i32 0
  %87 = load i8, i8* %86
  %88 = zext i8 %87 to i64
  %89 = icmp eq i64 %85, %88
  br i1 %89, label %then21, label %else22
then21:
  %90 = load %nyx_string*, %nyx_string** %79
  %91 = load %nyx_string*, %nyx_string** %79
  %92 = call i64 @nyx_string_byte_length(%nyx_string* %91)
  %93 = call %nyx_string* @nyx_string_substring(%nyx_string* %90, i64 1, i64 %92)
  store %nyx_string* %93, %nyx_string** %79
  br label %merge23
else22:
  br label %merge23
merge23:
  br label %merge20
else19:
  br label %merge20
merge20:
  %94 = load { i64, i8* }*, { i64, i8* }** %18
  %95 = load %nyx_string*, %nyx_string** %79
  %96 = ptrtoint %nyx_string* %95 to i64
  call void @nyx_array_set_tagged({ i64, i8* }* %94, i64 0, i64 %96, i64 2)
  br label %merge17
else16:
  br label %merge17
merge17:
  %97 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %98 = alloca %Token
  store %Token %97, %Token* %98
  %99 = load %Token, %Token* %98
  %100 = call %nyx_string* @get_token_value(%Token %99)
  %101 = alloca %nyx_string*
  store %nyx_string* %100, %nyx_string** %101
  %102 = alloca i1
  store i1 0, i1* %102
  %103 = load %nyx_string*, %nyx_string** %101
  %104 = getelementptr [4 x i8], [4 x i8]* @.str655, i32 0, i32 0
  %105 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str655.c, i8* %104)
  %106 = call i1 @nyx_string_equals(%nyx_string* %103, %nyx_string* %105)
  br i1 %106, label %then24, label %else25
then24:
  %107 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %102
  br label %merge26
else25:
  br label %merge26
merge26:
  %108 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %109 = alloca %nyx_string*
  store %nyx_string* %108, %nyx_string** %109
  %110 = load i1, i1* %102
  br i1 %110, label %then27, label %else28
then27:
  %111 = getelementptr [6 x i8], [6 x i8]* @.str656, i32 0, i32 0
  %112 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str656.c, i8* %111)
  %113 = load %nyx_string*, %nyx_string** %109
  %114 = call %nyx_string* @nyx_string_concat(%nyx_string* %112, %nyx_string* %113)
  ret %nyx_string* %114
else28:
  br label %merge29
merge29:
  %115 = getelementptr [2 x i8], [2 x i8]* @.str657, i32 0, i32 0
  %116 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str657.c, i8* %115)
  %117 = load %nyx_string*, %nyx_string** %109
  %118 = call %nyx_string* @nyx_string_concat(%nyx_string* %116, %nyx_string* %117)
  ret %nyx_string* %118
else13:
  br label %merge14
merge14:
  %119 = getelementptr [9 x i8], [9 x i8]* @.str658, i32 0, i32 0
  %120 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str658.c, i8* %119)
  %121 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %120)
  br i1 %121, label %then30, label %else31
then30:
  %122 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %123 = alloca %Token
  store %Token %122, %Token* %123
  %124 = load %Token, %Token* %123
  %125 = call %nyx_string* @get_token_value(%Token %124)
  ret %nyx_string* %125
else31:
  br label %merge32
merge32:
  %126 = getelementptr [13 x i8], [13 x i8]* @.str659, i32 0, i32 0
  %127 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str659.c, i8* %126)
  %128 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %127)
  br i1 %128, label %then33, label %else34
then33:
  %129 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %130 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %131 = alloca %nyx_string*
  store %nyx_string* %130, %nyx_string** %131
  %132 = getelementptr [6 x i8], [6 x i8]* @.str660, i32 0, i32 0
  %133 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str660.c, i8* %132)
  %134 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %133)
  %135 = getelementptr [7 x i8], [7 x i8]* @.str661, i32 0, i32 0
  %136 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str661.c, i8* %135)
  %137 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %136)
  %138 = alloca %Token
  store %Token %137, %Token* %138
  %139 = load %Token, %Token* %138
  %140 = call %nyx_string* @get_token_value(%Token %139)
  %141 = alloca %nyx_string*
  store %nyx_string* %140, %nyx_string** %141
  %142 = getelementptr [14 x i8], [14 x i8]* @.str662, i32 0, i32 0
  %143 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str662.c, i8* %142)
  %144 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %143)
  %145 = getelementptr [2 x i8], [2 x i8]* @.str663, i32 0, i32 0
  %146 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str663.c, i8* %145)
  %147 = load %nyx_string*, %nyx_string** %131
  %148 = call %nyx_string* @nyx_string_concat(%nyx_string* %146, %nyx_string* %147)
  %149 = getelementptr [2 x i8], [2 x i8]* @.str664, i32 0, i32 0
  %150 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str664.c, i8* %149)
  %151 = call %nyx_string* @nyx_string_concat(%nyx_string* %148, %nyx_string* %150)
  %152 = load %nyx_string*, %nyx_string** %141
  %153 = call %nyx_string* @nyx_string_concat(%nyx_string* %151, %nyx_string* %152)
  %154 = getelementptr [2 x i8], [2 x i8]* @.str665, i32 0, i32 0
  %155 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str665.c, i8* %154)
  %156 = call %nyx_string* @nyx_string_concat(%nyx_string* %153, %nyx_string* %155)
  ret %nyx_string* %156
else34:
  br label %merge35
merge35:
  %157 = getelementptr [4 x i8], [4 x i8]* @.str666, i32 0, i32 0
  %158 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str666.c, i8* %157)
  %159 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %158)
  br i1 %159, label %then36, label %else37
then36:
  %160 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %161 = getelementptr [11 x i8], [11 x i8]* @.str667, i32 0, i32 0
  %162 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str667.c, i8* %161)
  %163 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %162)
  %164 = alloca %Token
  store %Token %163, %Token* %164
  %165 = load %Token, %Token* %164
  %166 = call %nyx_string* @get_token_value(%Token %165)
  %167 = alloca %nyx_string*
  store %nyx_string* %166, %nyx_string** %167
  %168 = getelementptr [5 x i8], [5 x i8]* @.str668, i32 0, i32 0
  %169 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str668.c, i8* %168)
  %170 = load %nyx_string*, %nyx_string** %167
  %171 = call %nyx_string* @nyx_string_concat(%nyx_string* %169, %nyx_string* %170)
  ret %nyx_string* %171
else37:
  br label %merge38
merge38:
  %172 = getelementptr [5 x i8], [5 x i8]* @.str669, i32 0, i32 0
  %173 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str669.c, i8* %172)
  %174 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %173)
  br i1 %174, label %then39, label %else40
then39:
  %175 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %176 = getelementptr [11 x i8], [11 x i8]* @.str670, i32 0, i32 0
  %177 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str670.c, i8* %176)
  %178 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %177)
  %179 = alloca %Token
  store %Token %178, %Token* %179
  %180 = load %Token, %Token* %179
  %181 = call %nyx_string* @get_token_value(%Token %180)
  %182 = alloca %nyx_string*
  store %nyx_string* %181, %nyx_string** %182
  %183 = call i8* @llvm.stacksave()
  br label %while_cond42
while_cond42:
  %184 = getelementptr [5 x i8], [5 x i8]* @.str671, i32 0, i32 0
  %185 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str671.c, i8* %184)
  %186 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %185)
  br i1 %186, label %while_body43, label %while_end44
while_body43:
  call void @llvm.stackrestore(i8* %183)
  %187 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %188 = getelementptr [11 x i8], [11 x i8]* @.str672, i32 0, i32 0
  %189 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str672.c, i8* %188)
  %190 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %189)
  %191 = alloca %Token
  store %Token %190, %Token* %191
  %192 = load %nyx_string*, %nyx_string** %182
  %193 = getelementptr [2 x i8], [2 x i8]* @.str673, i32 0, i32 0
  %194 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str673.c, i8* %193)
  %195 = call %nyx_string* @nyx_string_concat(%nyx_string* %192, %nyx_string* %194)
  %196 = load %Token, %Token* %191
  %197 = call %nyx_string* @get_token_value(%Token %196)
  %198 = call %nyx_string* @nyx_string_concat(%nyx_string* %195, %nyx_string* %197)
  store %nyx_string* %198, %nyx_string** %182
  br label %while_cond42
while_end44:
  %199 = getelementptr [5 x i8], [5 x i8]* @.str674, i32 0, i32 0
  %200 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str674.c, i8* %199)
  %201 = load %nyx_string*, %nyx_string** %182
  %202 = call %nyx_string* @nyx_string_concat(%nyx_string* %200, %nyx_string* %201)
  ret %nyx_string* %202
else40:
  br label %merge41
merge41:
  %203 = getelementptr [11 x i8], [11 x i8]* @.str675, i32 0, i32 0
  %204 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str675.c, i8* %203)
  %205 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %204)
  %206 = alloca %Token
  store %Token %205, %Token* %206
  %207 = load %Token, %Token* %206
  %208 = call %nyx_string* @get_token_value(%Token %207)
  %209 = alloca %nyx_string*
  store %nyx_string* %208, %nyx_string** %209
  %210 = alloca i1
  store i1 false, i1* %210
  %211 = load %nyx_string*, %nyx_string** %209
  %212 = getelementptr [5 x i8], [5 x i8]* @.str676, i32 0, i32 0
  %213 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str676.c, i8* %212)
  %214 = call i1 @nyx_string_equals(%nyx_string* %211, %nyx_string* %213)
  br i1 %214, label %sc_and_rhs45, label %sc_and_end46
sc_and_rhs45:
  %215 = getelementptr [4 x i8], [4 x i8]* @.str677, i32 0, i32 0
  %216 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str677.c, i8* %215)
  %217 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %216)
  store i1 %217, i1* %210
  br label %sc_and_end46
sc_and_end46:
  %218 = load i1, i1* %210
  br i1 %218, label %then47, label %else48
then47:
  %219 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %220 = getelementptr [11 x i8], [11 x i8]* @.str678, i32 0, i32 0
  %221 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str678.c, i8* %220)
  %222 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %221)
  %223 = alloca %Token
  store %Token %222, %Token* %223
  %224 = getelementptr [6 x i8], [6 x i8]* @.str679, i32 0, i32 0
  %225 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str679.c, i8* %224)
  %226 = load %Token, %Token* %223
  %227 = call %nyx_string* @get_token_value(%Token %226)
  %228 = call %nyx_string* @nyx_string_concat(%nyx_string* %225, %nyx_string* %227)
  store %nyx_string* %228, %nyx_string** %209
  %229 = load %nyx_string*, %nyx_string** %209
  ret %nyx_string* %229
else48:
  br label %merge49
merge49:
  %230 = alloca i1
  store i1 false, i1* %230
  %231 = load %nyx_string*, %nyx_string** %209
  %232 = getelementptr [3 x i8], [3 x i8]* @.str680, i32 0, i32 0
  %233 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str680.c, i8* %232)
  %234 = call i1 @nyx_string_equals(%nyx_string* %231, %nyx_string* %233)
  br i1 %234, label %sc_and_rhs50, label %sc_and_end51
sc_and_rhs50:
  %235 = getelementptr [11 x i8], [11 x i8]* @.str681, i32 0, i32 0
  %236 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str681.c, i8* %235)
  %237 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %236)
  store i1 %237, i1* %230
  br label %sc_and_end51
sc_and_end51:
  %238 = load i1, i1* %230
  br i1 %238, label %then52, label %else53
then52:
  %239 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %240 = getelementptr [4 x i8], [4 x i8]* @.str682, i32 0, i32 0
  %241 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str682.c, i8* %240)
  %242 = alloca %nyx_string*
  store %nyx_string* %241, %nyx_string** %242
  %243 = getelementptr [12 x i8], [12 x i8]* @.str683, i32 0, i32 0
  %244 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str683.c, i8* %243)
  %245 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %244)
  %246 = xor i1 %245, true
  br i1 %246, label %then55, label %else56
then55:
  %247 = load %nyx_string*, %nyx_string** %242
  %248 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %249 = call %nyx_string* @nyx_string_concat(%nyx_string* %247, %nyx_string* %248)
  store %nyx_string* %249, %nyx_string** %242
  %250 = alloca i1
  store i1 0, i1* %250
  %251 = call i8* @llvm.stacksave()
  br label %while_cond58
while_cond58:
  %252 = load i1, i1* %250
  %253 = xor i1 %252, true
  br i1 %253, label %while_body59, label %while_end60
while_body59:
  call void @llvm.stackrestore(i8* %251)
  %254 = getelementptr [6 x i8], [6 x i8]* @.str684, i32 0, i32 0
  %255 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str684.c, i8* %254)
  %256 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %255)
  br i1 %256, label %then61, label %else62
then61:
  %257 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %258 = load %nyx_string*, %nyx_string** %242
  %259 = getelementptr [2 x i8], [2 x i8]* @.str685, i32 0, i32 0
  %260 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str685.c, i8* %259)
  %261 = call %nyx_string* @nyx_string_concat(%nyx_string* %258, %nyx_string* %260)
  %262 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %263 = call %nyx_string* @nyx_string_concat(%nyx_string* %261, %nyx_string* %262)
  store %nyx_string* %263, %nyx_string** %242
  br label %merge63
else62:
  store i1 1, i1* %250
  br label %merge63
merge63:
  br label %while_cond58
while_end60:
  br label %merge57
else56:
  br label %merge57
merge57:
  %264 = getelementptr [12 x i8], [12 x i8]* @.str686, i32 0, i32 0
  %265 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str686.c, i8* %264)
  %266 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %265)
  %267 = load %nyx_string*, %nyx_string** %242
  %268 = getelementptr [2 x i8], [2 x i8]* @.str687, i32 0, i32 0
  %269 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str687.c, i8* %268)
  %270 = call %nyx_string* @nyx_string_concat(%nyx_string* %267, %nyx_string* %269)
  store %nyx_string* %270, %nyx_string** %242
  %271 = getelementptr [6 x i8], [6 x i8]* @.str688, i32 0, i32 0
  %272 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str688.c, i8* %271)
  %273 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %272)
  br i1 %273, label %then64, label %else65
then64:
  %274 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %275 = load %nyx_string*, %nyx_string** %242
  %276 = getelementptr [3 x i8], [3 x i8]* @.str689, i32 0, i32 0
  %277 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str689.c, i8* %276)
  %278 = call %nyx_string* @nyx_string_concat(%nyx_string* %275, %nyx_string* %277)
  %279 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %280 = call %nyx_string* @nyx_string_concat(%nyx_string* %278, %nyx_string* %279)
  store %nyx_string* %280, %nyx_string** %242
  br label %merge66
else65:
  br label %merge66
merge66:
  %281 = load %nyx_string*, %nyx_string** %242
  ret %nyx_string* %281
else53:
  br label %merge54
merge54:
  %282 = getelementptr [5 x i8], [5 x i8]* @.str690, i32 0, i32 0
  %283 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str690.c, i8* %282)
  %284 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %283)
  br i1 %284, label %then67, label %else68
then67:
  %285 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %286 = load %nyx_string*, %nyx_string** %209
  %287 = getelementptr [2 x i8], [2 x i8]* @.str691, i32 0, i32 0
  %288 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str691.c, i8* %287)
  %289 = call %nyx_string* @nyx_string_concat(%nyx_string* %286, %nyx_string* %288)
  store %nyx_string* %289, %nyx_string** %209
  %290 = load %nyx_string*, %nyx_string** %209
  %291 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %292 = call %nyx_string* @nyx_string_concat(%nyx_string* %290, %nyx_string* %291)
  store %nyx_string* %292, %nyx_string** %209
  %293 = alloca i1
  store i1 0, i1* %293
  %294 = call i8* @llvm.stacksave()
  br label %while_cond70
while_cond70:
  %295 = load i1, i1* %293
  %296 = xor i1 %295, true
  br i1 %296, label %while_body71, label %while_end72
while_body71:
  call void @llvm.stackrestore(i8* %294)
  %297 = getelementptr [6 x i8], [6 x i8]* @.str692, i32 0, i32 0
  %298 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str692.c, i8* %297)
  %299 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %298)
  br i1 %299, label %then73, label %else74
then73:
  %300 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %301 = load %nyx_string*, %nyx_string** %209
  %302 = getelementptr [2 x i8], [2 x i8]* @.str693, i32 0, i32 0
  %303 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str693.c, i8* %302)
  %304 = call %nyx_string* @nyx_string_concat(%nyx_string* %301, %nyx_string* %303)
  store %nyx_string* %304, %nyx_string** %209
  %305 = load %nyx_string*, %nyx_string** %209
  %306 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %307 = call %nyx_string* @nyx_string_concat(%nyx_string* %305, %nyx_string* %306)
  store %nyx_string* %307, %nyx_string** %209
  br label %merge75
else74:
  store i1 1, i1* %293
  br label %merge75
merge75:
  br label %while_cond70
while_end72:
  %308 = load i64, i64* %5
  %309 = icmp sgt i64 %308, 0
  br i1 %309, label %then76, label %else77
then76:
  %310 = load i64, i64* %5
  %311 = sub i64 %310, 1
  store i64 %311, i64* %5
  br label %merge78
else77:
  %312 = getelementptr [8 x i8], [8 x i8]* @.str694, i32 0, i32 0
  %313 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str694.c, i8* %312)
  %314 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %313)
  br i1 %314, label %then79, label %else80
then79:
  %315 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge81
else80:
  %316 = getelementptr [12 x i8], [12 x i8]* @.str695, i32 0, i32 0
  %317 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str695.c, i8* %316)
  %318 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %317)
  br i1 %318, label %then82, label %else83
then82:
  %319 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %320 = load i64, i64* %5
  %321 = add i64 %320, 1
  store i64 %321, i64* %5
  br label %merge84
else83:
  %322 = getelementptr [8 x i8], [8 x i8]* @.str696, i32 0, i32 0
  %323 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str696.c, i8* %322)
  %324 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %323)
  br label %merge84
merge84:
  br label %merge81
merge81:
  br label %merge78
merge78:
  %325 = load %nyx_string*, %nyx_string** %209
  %326 = getelementptr [2 x i8], [2 x i8]* @.str697, i32 0, i32 0
  %327 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str697.c, i8* %326)
  %328 = call %nyx_string* @nyx_string_concat(%nyx_string* %325, %nyx_string* %327)
  store %nyx_string* %328, %nyx_string** %209
  br label %merge69
else68:
  br label %merge69
merge69:
  %329 = load %nyx_string*, %nyx_string** %209
  ret %nyx_string* %329
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
  %23 = getelementptr [4 x i8], [4 x i8]* @.str698, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str698.c, i8* %23)
  %25 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %24)
  %26 = alloca i1
  store i1 %25, i1* %26
  %27 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %28 = getelementptr [11 x i8], [11 x i8]* @.str699, i32 0, i32 0
  %29 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str699.c, i8* %28)
  %30 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %29)
  br i1 %30, label %then0, label %else1
then0:
  %31 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %32 = call { i64, i8* }* @nyx_array_new_ptr()
  %33 = alloca { i64, i8* }*
  store { i64, i8* }* %32, { i64, i8* }** %33
  %34 = getelementptr [11 x i8], [11 x i8]* @.str700, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str700.c, i8* %34)
  %36 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %35)
  %37 = alloca %Token
  store %Token %36, %Token* %37
  %38 = load { i64, i8* }*, { i64, i8* }** %33
  %39 = load %Token, %Token* %37
  %40 = call %nyx_string* @get_token_value(%Token %39)
  %41 = ptrtoint %nyx_string* %40 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %38, i64 %41, i64 2)
  %42 = call i8* @llvm.stacksave()
  br label %while_cond3
while_cond3:
  %43 = getelementptr [6 x i8], [6 x i8]* @.str701, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str701.c, i8* %43)
  %45 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %44)
  br i1 %45, label %while_body4, label %while_end5
while_body4:
  call void @llvm.stackrestore(i8* %42)
  %46 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %47 = getelementptr [11 x i8], [11 x i8]* @.str702, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str702.c, i8* %47)
  %49 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %48)
  %50 = alloca %Token
  store %Token %49, %Token* %50
  %51 = load { i64, i8* }*, { i64, i8* }** %33
  %52 = load %Token, %Token* %50
  %53 = call %nyx_string* @get_token_value(%Token %52)
  %54 = ptrtoint %nyx_string* %53 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %51, i64 %54, i64 2)
  br label %while_cond3
while_end5:
  %55 = getelementptr [12 x i8], [12 x i8]* @.str703, i32 0, i32 0
  %56 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str703.c, i8* %55)
  %57 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %56)
  %58 = getelementptr [7 x i8], [7 x i8]* @.str704, i32 0, i32 0
  %59 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str704.c, i8* %58)
  %60 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %59)
  %61 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %62 = alloca { i64, i8* }*
  store { i64, i8* }* %61, { i64, i8* }** %62
  %63 = getelementptr [22 x i8], [22 x i8]* @.str705, i32 0, i32 0
  %64 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str705.c, i8* %63)
  %65 = call { i64, i8* }* @nyx_array_new_ptr()
  %66 = load { i64, i8* }*, { i64, i8* }** %33
  %67 = bitcast { i64, i8* }* %66 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %65, i8* %67)
  %68 = load i1, i1* %26
  %69 = zext i1 %68 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %65, i64 %69, i64 4)
  %70 = load { i64, i8* }*, { i64, i8* }** %62
  %71 = bitcast { i64, i8* }* %70 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %65, i8* %71)
  %72 = call { i64, i8* }* @make_astnode(%nyx_string* %64, { i64, i8* }* %65)
  ret { i64, i8* }* %72
else1:
  br label %merge2
merge2:
  %73 = getelementptr [11 x i8], [11 x i8]* @.str706, i32 0, i32 0
  %74 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str706.c, i8* %73)
  %75 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %74)
  %76 = alloca %Token
  store %Token %75, %Token* %76
  %77 = load %Token, %Token* %76
  %78 = call %nyx_string* @get_token_value(%Token %77)
  %79 = alloca %nyx_string*
  store %nyx_string* %78, %nyx_string** %79
  %80 = load %nyx_string*, %nyx_string** %79
  %81 = call { i64, i8* }* @nyx_array_new_ptr()
  %82 = call { i64, i8* }* @make_astnode(%nyx_string* %80, { i64, i8* }* %81)
  %83 = alloca { i64, i8* }*
  store { i64, i8* }* %82, { i64, i8* }** %83
  %84 = getelementptr [1 x i8], [1 x i8]* @.str707, i32 0, i32 0
  %85 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str707.c, i8* %84)
  %86 = alloca %nyx_string*
  store %nyx_string* %85, %nyx_string** %86
  %87 = getelementptr [6 x i8], [6 x i8]* @.str708, i32 0, i32 0
  %88 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str708.c, i8* %87)
  %89 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %88)
  br i1 %89, label %then6, label %else7
then6:
  %90 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %91 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %91, %nyx_string** %86
  br label %merge8
else7:
  br label %merge8
merge8:
  %92 = getelementptr [7 x i8], [7 x i8]* @.str709, i32 0, i32 0
  %93 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str709.c, i8* %92)
  %94 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %93)
  %95 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %96 = alloca { i64, i8* }*
  store { i64, i8* }* %95, { i64, i8* }** %96
  %97 = getelementptr [4 x i8], [4 x i8]* @.str710, i32 0, i32 0
  %98 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str710.c, i8* %97)
  %99 = call { i64, i8* }* @nyx_array_new_ptr()
  %100 = load { i64, i8* }*, { i64, i8* }** %83
  %101 = bitcast { i64, i8* }* %100 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %99, i8* %101)
  %102 = load i1, i1* %26
  %103 = zext i1 %102 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %99, i64 %103, i64 4)
  %104 = load { i64, i8* }*, { i64, i8* }** %96
  %105 = bitcast { i64, i8* }* %104 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %99, i8* %105)
  %106 = load %nyx_string*, %nyx_string** %86
  %107 = ptrtoint %nyx_string* %106 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %99, i64 %107, i64 2)
  %108 = call { i64, i8* }* @make_astnode(%nyx_string* %98, { i64, i8* }* %99)
  ret { i64, i8* }* %108
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
  %23 = getelementptr [6 x i8], [6 x i8]* @.str711, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str711.c, i8* %23)
  %25 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %24)
  %26 = getelementptr [11 x i8], [11 x i8]* @.str712, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str712.c, i8* %26)
  %28 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %27)
  %29 = alloca %Token
  store %Token %28, %Token* %29
  %30 = getelementptr [1 x i8], [1 x i8]* @.str713, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str713.c, i8* %30)
  %32 = alloca %nyx_string*
  store %nyx_string* %31, %nyx_string** %32
  %33 = getelementptr [6 x i8], [6 x i8]* @.str714, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str714.c, i8* %33)
  %35 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %34)
  br i1 %35, label %then0, label %else1
then0:
  %36 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %37 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %37, %nyx_string** %32
  br label %merge2
else1:
  br label %merge2
merge2:
  %38 = getelementptr [7 x i8], [7 x i8]* @.str715, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str715.c, i8* %38)
  %40 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %39)
  %41 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %42 = alloca { i64, i8* }*
  store { i64, i8* }* %41, { i64, i8* }** %42
  %43 = getelementptr [6 x i8], [6 x i8]* @.str716, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str716.c, i8* %43)
  %45 = call { i64, i8* }* @nyx_array_new_ptr()
  %46 = load %Token, %Token* %29
  %47 = call %nyx_string* @get_token_value(%Token %46)
  %48 = ptrtoint %nyx_string* %47 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %45, i64 %48, i64 2)
  %49 = load { i64, i8* }*, { i64, i8* }** %42
  %50 = bitcast { i64, i8* }* %49 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %45, i8* %50)
  %51 = load %nyx_string*, %nyx_string** %32
  %52 = ptrtoint %nyx_string* %51 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %45, i64 %52, i64 2)
  %53 = call { i64, i8* }* @make_astnode(%nyx_string* %44, { i64, i8* }* %45)
  ret { i64, i8* }* %53
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
  %23 = getelementptr [3 x i8], [3 x i8]* @.str717, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str717.c, i8* %23)
  %25 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %24)
  %26 = getelementptr [11 x i8], [11 x i8]* @.str718, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str718.c, i8* %26)
  %28 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %27)
  %29 = alloca %Token
  store %Token %28, %Token* %29
  %30 = load %Token, %Token* %29
  %31 = call %nyx_string* @get_token_value(%Token %30)
  %32 = alloca %nyx_string*
  store %nyx_string* %31, %nyx_string** %32
  %33 = getelementptr [11 x i8], [11 x i8]* @.str719, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str719.c, i8* %33)
  %35 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %34)
  %36 = call { i64, i8* }* @nyx_array_new_ptr()
  %37 = alloca { i64, i8* }*
  store { i64, i8* }* %36, { i64, i8* }** %37
  %38 = alloca i1
  store i1 0, i1* %38
  %39 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %40 = load i1, i1* %38
  %41 = xor i1 %40, true
  br i1 %41, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %39)
  %42 = getelementptr [12 x i8], [12 x i8]* @.str720, i32 0, i32 0
  %43 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str720.c, i8* %42)
  %44 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %43)
  br i1 %44, label %then3, label %else4
then3:
  %45 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %38
  br label %merge5
else4:
  %46 = load { i64, i8* }*, { i64, i8* }** %37
  %47 = call i64 @nyx_array_length({ i64, i8* }* %46)
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %then6, label %else7
then6:
  %49 = getelementptr [6 x i8], [6 x i8]* @.str721, i32 0, i32 0
  %50 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str721.c, i8* %49)
  %51 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %50)
  br label %merge8
else7:
  br label %merge8
merge8:
  %52 = getelementptr [11 x i8], [11 x i8]* @.str722, i32 0, i32 0
  %53 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str722.c, i8* %52)
  %54 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %53)
  %55 = alloca %Token
  store %Token %54, %Token* %55
  %56 = getelementptr [1 x i8], [1 x i8]* @.str723, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str723.c, i8* %56)
  %58 = alloca %nyx_string*
  store %nyx_string* %57, %nyx_string** %58
  %59 = getelementptr [6 x i8], [6 x i8]* @.str724, i32 0, i32 0
  %60 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str724.c, i8* %59)
  %61 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %60)
  br i1 %61, label %then9, label %else10
then9:
  %62 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %63 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %63, %nyx_string** %58
  br label %merge11
else10:
  br label %merge11
merge11:
  %64 = load { i64, i8* }*, { i64, i8* }** %37
  %65 = call { i64, i8* }* @nyx_array_new_ptr()
  %66 = load %Token, %Token* %55
  %67 = call %nyx_string* @get_token_value(%Token %66)
  %68 = ptrtoint %nyx_string* %67 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %65, i64 %68, i64 2)
  %69 = load %nyx_string*, %nyx_string** %58
  %70 = ptrtoint %nyx_string* %69 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %65, i64 %70, i64 2)
  %71 = ptrtoint { i64, i8* }* %65 to i64
  call void @nyx_array_push({ i64, i8* }* %64, i64 %71)
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %72 = getelementptr [1 x i8], [1 x i8]* @.str725, i32 0, i32 0
  %73 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str725.c, i8* %72)
  %74 = alloca %nyx_string*
  store %nyx_string* %73, %nyx_string** %74
  %75 = getelementptr [6 x i8], [6 x i8]* @.str726, i32 0, i32 0
  %76 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str726.c, i8* %75)
  %77 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %76)
  br i1 %77, label %then12, label %else13
then12:
  %78 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %79 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %79, %nyx_string** %74
  br label %merge14
else13:
  br label %merge14
merge14:
  %80 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %81 = alloca { i64, i8* }*
  store { i64, i8* }* %80, { i64, i8* }** %81
  %82 = getelementptr [9 x i8], [9 x i8]* @.str727, i32 0, i32 0
  %83 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str727.c, i8* %82)
  %84 = call { i64, i8* }* @nyx_array_new_ptr()
  %85 = load %nyx_string*, %nyx_string** %32
  %86 = ptrtoint %nyx_string* %85 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %84, i64 %86, i64 2)
  %87 = load { i64, i8* }*, { i64, i8* }** %37
  %88 = bitcast { i64, i8* }* %87 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %84, i8* %88)
  %89 = load %nyx_string*, %nyx_string** %74
  %90 = ptrtoint %nyx_string* %89 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %84, i64 %90, i64 2)
  %91 = load { i64, i8* }*, { i64, i8* }** %81
  %92 = bitcast { i64, i8* }* %91 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %84, i8* %92)
  %93 = call { i64, i8* }* @make_astnode(%nyx_string* %83, { i64, i8* }* %84)
  ret { i64, i8* }* %93
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
  %23 = getelementptr [3 x i8], [3 x i8]* @.str728, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str728.c, i8* %23)
  %25 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %24)
  %26 = getelementptr [11 x i8], [11 x i8]* @.str729, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str729.c, i8* %26)
  %28 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %27)
  %29 = alloca %Token
  store %Token %28, %Token* %29
  %30 = call { i64, i8* }* @nyx_array_new_ptr()
  %31 = alloca { i64, i8* }*
  store { i64, i8* }* %30, { i64, i8* }** %31
  %32 = getelementptr [5 x i8], [5 x i8]* @.str730, i32 0, i32 0
  %33 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str730.c, i8* %32)
  %34 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %33)
  br i1 %34, label %then0, label %else1
then0:
  %35 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %36 = getelementptr [9 x i8], [9 x i8]* @.str731, i32 0, i32 0
  %37 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str731.c, i8* %36)
  %38 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %37)
  br i1 %38, label %then3, label %else4
then3:
  %39 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %40 = alloca %Token
  store %Token %39, %Token* %40
  %41 = load { i64, i8* }*, { i64, i8* }** %31
  %42 = load %Token, %Token* %40
  %43 = call %nyx_string* @get_token_value(%Token %42)
  %44 = ptrtoint %nyx_string* %43 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %41, i64 %44, i64 2)
  br label %merge5
else4:
  %45 = getelementptr [11 x i8], [11 x i8]* @.str732, i32 0, i32 0
  %46 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str732.c, i8* %45)
  %47 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %46)
  %48 = alloca %Token
  store %Token %47, %Token* %48
  %49 = load %Token, %Token* %48
  %50 = call %nyx_string* @get_token_value(%Token %49)
  %51 = alloca %nyx_string*
  store %nyx_string* %50, %nyx_string** %51
  %52 = getelementptr [6 x i8], [6 x i8]* @.str733, i32 0, i32 0
  %53 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str733.c, i8* %52)
  %54 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %53)
  br i1 %54, label %then6, label %else7
then6:
  %55 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %56 = getelementptr [11 x i8], [11 x i8]* @.str734, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str734.c, i8* %56)
  %58 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %57)
  %59 = alloca %Token
  store %Token %58, %Token* %59
  %60 = load %Token, %Token* %59
  %61 = call %nyx_string* @get_token_value(%Token %60)
  %62 = alloca %nyx_string*
  store %nyx_string* %61, %nyx_string** %62
  %63 = call i8* @llvm.stacksave()
  br label %while_cond9
while_cond9:
  %64 = getelementptr [5 x i8], [5 x i8]* @.str735, i32 0, i32 0
  %65 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str735.c, i8* %64)
  %66 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %65)
  br i1 %66, label %while_body10, label %while_end11
while_body10:
  call void @llvm.stackrestore(i8* %63)
  %67 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %68 = getelementptr [11 x i8], [11 x i8]* @.str736, i32 0, i32 0
  %69 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str736.c, i8* %68)
  %70 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %69)
  %71 = alloca %Token
  store %Token %70, %Token* %71
  %72 = load %nyx_string*, %nyx_string** %62
  %73 = getelementptr [2 x i8], [2 x i8]* @.str737, i32 0, i32 0
  %74 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str737.c, i8* %73)
  %75 = call %nyx_string* @nyx_string_concat(%nyx_string* %72, %nyx_string* %74)
  %76 = load %Token, %Token* %71
  %77 = call %nyx_string* @get_token_value(%Token %76)
  %78 = call %nyx_string* @nyx_string_concat(%nyx_string* %75, %nyx_string* %77)
  store %nyx_string* %78, %nyx_string** %62
  br label %while_cond9
while_end11:
  %79 = load %nyx_string*, %nyx_string** %51
  %80 = getelementptr [2 x i8], [2 x i8]* @.str738, i32 0, i32 0
  %81 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str738.c, i8* %80)
  %82 = call %nyx_string* @nyx_string_concat(%nyx_string* %79, %nyx_string* %81)
  %83 = load %nyx_string*, %nyx_string** %62
  %84 = call %nyx_string* @nyx_string_concat(%nyx_string* %82, %nyx_string* %83)
  store %nyx_string* %84, %nyx_string** %51
  br label %merge8
else7:
  br label %merge8
merge8:
  %85 = load { i64, i8* }*, { i64, i8* }** %31
  %86 = load %nyx_string*, %nyx_string** %51
  %87 = ptrtoint %nyx_string* %86 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %85, i64 %87, i64 2)
  br label %merge5
merge5:
  %88 = alloca i1
  store i1 0, i1* %88
  %89 = call i8* @llvm.stacksave()
  br label %while_cond12
while_cond12:
  %90 = load i1, i1* %88
  %91 = xor i1 %90, true
  br i1 %91, label %while_body13, label %while_end14
while_body13:
  call void @llvm.stackrestore(i8* %89)
  %92 = getelementptr [6 x i8], [6 x i8]* @.str739, i32 0, i32 0
  %93 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str739.c, i8* %92)
  %94 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %93)
  br i1 %94, label %then15, label %else16
then15:
  %95 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %96 = getelementptr [9 x i8], [9 x i8]* @.str740, i32 0, i32 0
  %97 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str740.c, i8* %96)
  %98 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %97)
  br i1 %98, label %then18, label %else19
then18:
  %99 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %100 = alloca %Token
  store %Token %99, %Token* %100
  %101 = load { i64, i8* }*, { i64, i8* }** %31
  %102 = load %Token, %Token* %100
  %103 = call %nyx_string* @get_token_value(%Token %102)
  %104 = ptrtoint %nyx_string* %103 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %101, i64 %104, i64 2)
  br label %merge20
else19:
  %105 = getelementptr [11 x i8], [11 x i8]* @.str741, i32 0, i32 0
  %106 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str741.c, i8* %105)
  %107 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %106)
  %108 = alloca %Token
  store %Token %107, %Token* %108
  %109 = load %Token, %Token* %108
  %110 = call %nyx_string* @get_token_value(%Token %109)
  %111 = alloca %nyx_string*
  store %nyx_string* %110, %nyx_string** %111
  %112 = getelementptr [6 x i8], [6 x i8]* @.str742, i32 0, i32 0
  %113 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str742.c, i8* %112)
  %114 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %113)
  br i1 %114, label %then21, label %else22
then21:
  %115 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %116 = getelementptr [11 x i8], [11 x i8]* @.str743, i32 0, i32 0
  %117 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str743.c, i8* %116)
  %118 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %117)
  %119 = alloca %Token
  store %Token %118, %Token* %119
  %120 = load %Token, %Token* %119
  %121 = call %nyx_string* @get_token_value(%Token %120)
  %122 = alloca %nyx_string*
  store %nyx_string* %121, %nyx_string** %122
  %123 = call i8* @llvm.stacksave()
  br label %while_cond24
while_cond24:
  %124 = getelementptr [5 x i8], [5 x i8]* @.str744, i32 0, i32 0
  %125 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str744.c, i8* %124)
  %126 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %125)
  br i1 %126, label %while_body25, label %while_end26
while_body25:
  call void @llvm.stackrestore(i8* %123)
  %127 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %128 = getelementptr [11 x i8], [11 x i8]* @.str745, i32 0, i32 0
  %129 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str745.c, i8* %128)
  %130 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %129)
  %131 = alloca %Token
  store %Token %130, %Token* %131
  %132 = load %nyx_string*, %nyx_string** %122
  %133 = getelementptr [2 x i8], [2 x i8]* @.str746, i32 0, i32 0
  %134 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str746.c, i8* %133)
  %135 = call %nyx_string* @nyx_string_concat(%nyx_string* %132, %nyx_string* %134)
  %136 = load %Token, %Token* %131
  %137 = call %nyx_string* @get_token_value(%Token %136)
  %138 = call %nyx_string* @nyx_string_concat(%nyx_string* %135, %nyx_string* %137)
  store %nyx_string* %138, %nyx_string** %122
  br label %while_cond24
while_end26:
  %139 = load %nyx_string*, %nyx_string** %111
  %140 = getelementptr [2 x i8], [2 x i8]* @.str747, i32 0, i32 0
  %141 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str747.c, i8* %140)
  %142 = call %nyx_string* @nyx_string_concat(%nyx_string* %139, %nyx_string* %141)
  %143 = load %nyx_string*, %nyx_string** %122
  %144 = call %nyx_string* @nyx_string_concat(%nyx_string* %142, %nyx_string* %143)
  store %nyx_string* %144, %nyx_string** %111
  br label %merge23
else22:
  br label %merge23
merge23:
  %145 = load { i64, i8* }*, { i64, i8* }** %31
  %146 = load %nyx_string*, %nyx_string** %111
  %147 = ptrtoint %nyx_string* %146 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %145, i64 %147, i64 2)
  br label %merge20
merge20:
  br label %merge17
else16:
  store i1 1, i1* %88
  br label %merge17
merge17:
  br label %while_cond12
while_end14:
  %148 = getelementptr [8 x i8], [8 x i8]* @.str748, i32 0, i32 0
  %149 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str748.c, i8* %148)
  %150 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %149)
  br label %merge2
else1:
  br label %merge2
merge2:
  %151 = getelementptr [11 x i8], [11 x i8]* @.str749, i32 0, i32 0
  %152 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str749.c, i8* %151)
  %153 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %152)
  %154 = call { i64, i8* }* @nyx_array_new_ptr()
  %155 = alloca { i64, i8* }*
  store { i64, i8* }* %154, { i64, i8* }** %155
  %156 = call { i64, i8* }* @nyx_array_new_ptr()
  %157 = alloca { i64, i8* }*
  store { i64, i8* }* %156, { i64, i8* }** %157
  %158 = alloca i1
  store i1 0, i1* %158
  %159 = call i8* @llvm.stacksave()
  br label %while_cond27
while_cond27:
  %160 = load i1, i1* %158
  %161 = xor i1 %160, true
  br i1 %161, label %while_body28, label %while_end29
while_body28:
  call void @llvm.stackrestore(i8* %159)
  %162 = getelementptr [12 x i8], [12 x i8]* @.str750, i32 0, i32 0
  %163 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str750.c, i8* %162)
  %164 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %163)
  br i1 %164, label %then30, label %else31
then30:
  %165 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %158
  br label %merge32
else31:
  %166 = load { i64, i8* }*, { i64, i8* }** %155
  %167 = call i64 @nyx_array_length({ i64, i8* }* %166)
  %168 = icmp sgt i64 %167, 0
  br i1 %168, label %then33, label %else34
then33:
  %169 = getelementptr [6 x i8], [6 x i8]* @.str751, i32 0, i32 0
  %170 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str751.c, i8* %169)
  %171 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %170)
  br label %merge35
else34:
  br label %merge35
merge35:
  %172 = getelementptr [9 x i8], [9 x i8]* @.str752, i32 0, i32 0
  %173 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str752.c, i8* %172)
  %174 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %173)
  br i1 %174, label %then36, label %else37
then36:
  %175 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %176 = getelementptr [11 x i8], [11 x i8]* @.str753, i32 0, i32 0
  %177 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str753.c, i8* %176)
  %178 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %177)
  %179 = alloca %Token
  store %Token %178, %Token* %179
  %180 = load %Token, %Token* %179
  %181 = call %nyx_string* @get_token_value(%Token %180)
  %182 = alloca %nyx_string*
  store %nyx_string* %181, %nyx_string** %182
  %183 = getelementptr [10 x i8], [10 x i8]* @.str754, i32 0, i32 0
  %184 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str754.c, i8* %183)
  %185 = alloca %nyx_string*
  store %nyx_string* %184, %nyx_string** %185
  %186 = getelementptr [6 x i8], [6 x i8]* @.str755, i32 0, i32 0
  %187 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str755.c, i8* %186)
  %188 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %187)
  br i1 %188, label %then39, label %else40
then39:
  %189 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %190 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %191 = alloca %nyx_string*
  store %nyx_string* %190, %nyx_string** %191
  %192 = getelementptr [4 x i8], [4 x i8]* @.str756, i32 0, i32 0
  %193 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str756.c, i8* %192)
  %194 = load %nyx_string*, %nyx_string** %191
  %195 = call %nyx_string* @nyx_string_concat(%nyx_string* %193, %nyx_string* %194)
  store %nyx_string* %195, %nyx_string** %185
  br label %merge41
else40:
  br label %merge41
merge41:
  %196 = load { i64, i8* }*, { i64, i8* }** %155
  %197 = call { i64, i8* }* @nyx_array_new_ptr()
  %198 = load %nyx_string*, %nyx_string** %182
  %199 = ptrtoint %nyx_string* %198 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %197, i64 %199, i64 2)
  %200 = load %nyx_string*, %nyx_string** %185
  %201 = ptrtoint %nyx_string* %200 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %197, i64 %201, i64 2)
  %202 = ptrtoint { i64, i8* }* %197 to i64
  call void @nyx_array_push({ i64, i8* }* %196, i64 %202)
  %203 = load { i64, i8* }*, { i64, i8* }** %157
  %204 = getelementptr [1 x i8], [1 x i8]* @.str757, i32 0, i32 0
  %205 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str757.c, i8* %204)
  %206 = ptrtoint %nyx_string* %205 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %203, i64 %206, i64 2)
  %207 = getelementptr [6 x i8], [6 x i8]* @.str758, i32 0, i32 0
  %208 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str758.c, i8* %207)
  %209 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %208)
  br i1 %209, label %then42, label %else43
then42:
  %210 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge44
else43:
  br label %merge44
merge44:
  %211 = getelementptr [12 x i8], [12 x i8]* @.str759, i32 0, i32 0
  %212 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str759.c, i8* %211)
  %213 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %212)
  br i1 %213, label %then45, label %else46
then45:
  %214 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge47
else46:
  br label %merge47
merge47:
  store i1 1, i1* %158
  br label %merge38
else37:
  %215 = alloca i1
  store i1 false, i1* %215
  %216 = getelementptr [4 x i8], [4 x i8]* @.str760, i32 0, i32 0
  %217 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str760.c, i8* %216)
  %218 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %217)
  br i1 %218, label %sc_and_rhs48, label %sc_and_end49
sc_and_rhs48:
  %219 = load { i64, i8* }*, { i64, i8* }** %155
  %220 = call i64 @nyx_array_length({ i64, i8* }* %219)
  %221 = icmp eq i64 %220, 0
  store i1 %221, i1* %215
  br label %sc_and_end49
sc_and_end49:
  %222 = load i1, i1* %215
  br i1 %222, label %then50, label %else51
then50:
  %223 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %224 = getelementptr [9 x i8], [9 x i8]* @.str761, i32 0, i32 0
  %225 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str761.c, i8* %224)
  %226 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %225)
  br i1 %226, label %then53, label %else54
then53:
  %227 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge55
else54:
  br label %merge55
merge55:
  %228 = getelementptr [2 x i8], [2 x i8]* @.str762, i32 0, i32 0
  %229 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str762.c, i8* %228)
  %230 = alloca %nyx_string*
  store %nyx_string* %229, %nyx_string** %230
  %231 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %232 = call %nyx_string* @get_token_value(%Token %231)
  %233 = getelementptr [4 x i8], [4 x i8]* @.str763, i32 0, i32 0
  %234 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str763.c, i8* %233)
  %235 = call i1 @nyx_string_equals(%nyx_string* %232, %nyx_string* %234)
  br i1 %235, label %then56, label %else57
then56:
  %236 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %237 = getelementptr [5 x i8], [5 x i8]* @.str764, i32 0, i32 0
  %238 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str764.c, i8* %237)
  store %nyx_string* %238, %nyx_string** %230
  br label %merge58
else57:
  br label %merge58
merge58:
  %239 = getelementptr [11 x i8], [11 x i8]* @.str765, i32 0, i32 0
  %240 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str765.c, i8* %239)
  %241 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %240)
  %242 = alloca %Token
  store %Token %241, %Token* %242
  %243 = load { i64, i8* }*, { i64, i8* }** %155
  %244 = call { i64, i8* }* @nyx_array_new_ptr()
  %245 = load %Token, %Token* %242
  %246 = call %nyx_string* @get_token_value(%Token %245)
  %247 = ptrtoint %nyx_string* %246 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %244, i64 %247, i64 2)
  %248 = load %nyx_string*, %nyx_string** %230
  %249 = ptrtoint %nyx_string* %248 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %244, i64 %249, i64 2)
  %250 = ptrtoint { i64, i8* }* %244 to i64
  call void @nyx_array_push({ i64, i8* }* %243, i64 %250)
  %251 = load { i64, i8* }*, { i64, i8* }** %157
  %252 = getelementptr [1 x i8], [1 x i8]* @.str766, i32 0, i32 0
  %253 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str766.c, i8* %252)
  %254 = ptrtoint %nyx_string* %253 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %251, i64 %254, i64 2)
  br label %merge52
else51:
  %255 = getelementptr [11 x i8], [11 x i8]* @.str767, i32 0, i32 0
  %256 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str767.c, i8* %255)
  %257 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %256)
  %258 = alloca %Token
  store %Token %257, %Token* %258
  %259 = getelementptr [1 x i8], [1 x i8]* @.str768, i32 0, i32 0
  %260 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str768.c, i8* %259)
  %261 = alloca %nyx_string*
  store %nyx_string* %260, %nyx_string** %261
  %262 = load { i64, i8* }*, { i64, i8* }** %18
  %263 = getelementptr [1 x i8], [1 x i8]* @.str769, i32 0, i32 0
  %264 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str769.c, i8* %263)
  %265 = ptrtoint %nyx_string* %264 to i64
  call void @nyx_array_set_tagged({ i64, i8* }* %262, i64 0, i64 %265, i64 2)
  %266 = getelementptr [6 x i8], [6 x i8]* @.str770, i32 0, i32 0
  %267 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str770.c, i8* %266)
  %268 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %267)
  br i1 %268, label %then59, label %else60
then59:
  %269 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %270 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %270, %nyx_string** %261
  br label %merge61
else60:
  br label %merge61
merge61:
  %271 = load { i64, i8* }*, { i64, i8* }** %18
  %272 = call i64 @nyx_array_get_checked({ i64, i8* }* %271, i64 0, i64 2)
  %273 = inttoptr i64 %272 to %nyx_string*
  %274 = alloca %nyx_string*
  store %nyx_string* %273, %nyx_string** %274
  %275 = getelementptr [7 x i8], [7 x i8]* @.str771, i32 0, i32 0
  %276 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str771.c, i8* %275)
  %277 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %276)
  br i1 %277, label %then62, label %else63
then62:
  %278 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %279 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %280 = alloca { i64, i8* }*
  store { i64, i8* }* %279, { i64, i8* }** %280
  %281 = load { i64, i8* }*, { i64, i8* }** %155
  %282 = call { i64, i8* }* @nyx_array_new_ptr()
  %283 = load %Token, %Token* %258
  %284 = call %nyx_string* @get_token_value(%Token %283)
  %285 = ptrtoint %nyx_string* %284 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %282, i64 %285, i64 2)
  %286 = load %nyx_string*, %nyx_string** %261
  %287 = ptrtoint %nyx_string* %286 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %282, i64 %287, i64 2)
  %288 = load { i64, i8* }*, { i64, i8* }** %280
  %289 = bitcast { i64, i8* }* %288 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %282, i8* %289)
  %290 = ptrtoint { i64, i8* }* %282 to i64
  call void @nyx_array_push({ i64, i8* }* %281, i64 %290)
  br label %merge64
else63:
  %291 = load { i64, i8* }*, { i64, i8* }** %155
  %292 = call { i64, i8* }* @nyx_array_new_ptr()
  %293 = load %Token, %Token* %258
  %294 = call %nyx_string* @get_token_value(%Token %293)
  %295 = ptrtoint %nyx_string* %294 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %292, i64 %295, i64 2)
  %296 = load %nyx_string*, %nyx_string** %261
  %297 = ptrtoint %nyx_string* %296 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %292, i64 %297, i64 2)
  %298 = ptrtoint { i64, i8* }* %292 to i64
  call void @nyx_array_push({ i64, i8* }* %291, i64 %298)
  br label %merge64
merge64:
  %299 = load { i64, i8* }*, { i64, i8* }** %157
  %300 = load %nyx_string*, %nyx_string** %274
  %301 = ptrtoint %nyx_string* %300 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %299, i64 %301, i64 2)
  br label %merge52
merge52:
  br label %merge38
merge38:
  br label %merge32
merge32:
  br label %while_cond27
while_end29:
  %302 = getelementptr [1 x i8], [1 x i8]* @.str772, i32 0, i32 0
  %303 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str772.c, i8* %302)
  %304 = alloca %nyx_string*
  store %nyx_string* %303, %nyx_string** %304
  %305 = load { i64, i8* }*, { i64, i8* }** %18
  %306 = getelementptr [1 x i8], [1 x i8]* @.str773, i32 0, i32 0
  %307 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str773.c, i8* %306)
  %308 = ptrtoint %nyx_string* %307 to i64
  call void @nyx_array_set_tagged({ i64, i8* }* %305, i64 0, i64 %308, i64 2)
  %309 = getelementptr [6 x i8], [6 x i8]* @.str774, i32 0, i32 0
  %310 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str774.c, i8* %309)
  %311 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %310)
  br i1 %311, label %then65, label %else66
then65:
  %312 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %313 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %313, %nyx_string** %304
  br label %merge67
else66:
  br label %merge67
merge67:
  %314 = load { i64, i8* }*, { i64, i8* }** %18
  %315 = call i64 @nyx_array_get_checked({ i64, i8* }* %314, i64 0, i64 2)
  %316 = inttoptr i64 %315 to %nyx_string*
  %317 = alloca %nyx_string*
  store %nyx_string* %316, %nyx_string** %317
  %318 = getelementptr [6 x i8], [6 x i8]* @.str775, i32 0, i32 0
  %319 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str775.c, i8* %318)
  %320 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %319)
  br i1 %320, label %then68, label %else69
then68:
  %321 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %322 = alloca i1
  store i1 0, i1* %322
  %323 = call i8* @llvm.stacksave()
  br label %while_cond71
while_cond71:
  %324 = load i1, i1* %322
  %325 = xor i1 %324, true
  br i1 %325, label %while_body72, label %while_end73
while_body72:
  call void @llvm.stackrestore(i8* %323)
  %326 = getelementptr [11 x i8], [11 x i8]* @.str776, i32 0, i32 0
  %327 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str776.c, i8* %326)
  %328 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %327)
  %329 = alloca %Token
  store %Token %328, %Token* %329
  %330 = load %Token, %Token* %329
  %331 = call %nyx_string* @get_token_value(%Token %330)
  %332 = alloca %nyx_string*
  store %nyx_string* %331, %nyx_string** %332
  %333 = getelementptr [6 x i8], [6 x i8]* @.str777, i32 0, i32 0
  %334 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str777.c, i8* %333)
  %335 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %334)
  %336 = getelementptr [11 x i8], [11 x i8]* @.str778, i32 0, i32 0
  %337 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str778.c, i8* %336)
  %338 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %337)
  %339 = alloca %Token
  store %Token %338, %Token* %339
  %340 = load %Token, %Token* %339
  %341 = call %nyx_string* @get_token_value(%Token %340)
  %342 = alloca %nyx_string*
  store %nyx_string* %341, %nyx_string** %342
  %343 = call i8* @llvm.stacksave()
  br label %while_cond74
while_cond74:
  %344 = getelementptr [5 x i8], [5 x i8]* @.str779, i32 0, i32 0
  %345 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str779.c, i8* %344)
  %346 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %345)
  br i1 %346, label %while_body75, label %while_end76
while_body75:
  call void @llvm.stackrestore(i8* %343)
  %347 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %348 = getelementptr [11 x i8], [11 x i8]* @.str780, i32 0, i32 0
  %349 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str780.c, i8* %348)
  %350 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %349)
  %351 = alloca %Token
  store %Token %350, %Token* %351
  %352 = load %nyx_string*, %nyx_string** %342
  %353 = getelementptr [2 x i8], [2 x i8]* @.str781, i32 0, i32 0
  %354 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str781.c, i8* %353)
  %355 = call %nyx_string* @nyx_string_concat(%nyx_string* %352, %nyx_string* %354)
  %356 = load %Token, %Token* %351
  %357 = call %nyx_string* @get_token_value(%Token %356)
  %358 = call %nyx_string* @nyx_string_concat(%nyx_string* %355, %nyx_string* %357)
  store %nyx_string* %358, %nyx_string** %342
  br label %while_cond74
while_end76:
  %359 = alloca i1
  store i1 0, i1* %359
  %360 = alloca i64
  store i64 0, i64* %360
  %361 = call i8* @llvm.stacksave()
  br label %while_cond77
while_cond77:
  %362 = load i64, i64* %360
  %363 = load { i64, i8* }*, { i64, i8* }** %31
  %364 = call i64 @nyx_array_length({ i64, i8* }* %363)
  %365 = icmp slt i64 %362, %364
  br i1 %365, label %while_body78, label %while_end79
while_body78:
  call void @llvm.stackrestore(i8* %361)
  %366 = load { i64, i8* }*, { i64, i8* }** %31
  %367 = load i64, i64* %360
  %368 = call i64 @nyx_array_get_checked({ i64, i8* }* %366, i64 %367, i64 2)
  %369 = inttoptr i64 %368 to %nyx_string*
  %370 = alloca %nyx_string*
  store %nyx_string* %369, %nyx_string** %370
  %371 = load %nyx_string*, %nyx_string** %370
  %372 = alloca %nyx_string*
  store %nyx_string* %371, %nyx_string** %372
  %373 = sub i64 0, 1
  %374 = alloca i64
  store i64 %373, i64* %374
  %375 = alloca i64
  store i64 0, i64* %375
  %376 = call i8* @llvm.stacksave()
  br label %while_cond80
while_cond80:
  %377 = load i64, i64* %375
  %378 = load %nyx_string*, %nyx_string** %370
  %379 = call i64 @nyx_string_byte_length(%nyx_string* %378)
  %380 = icmp slt i64 %377, %379
  br i1 %380, label %while_body81, label %while_end82
while_body81:
  call void @llvm.stackrestore(i8* %376)
  %381 = load %nyx_string*, %nyx_string** %370
  %382 = load i64, i64* %375
  %383 = call i8 @nyx_string_char_at(%nyx_string* %381, i64 %382)
  %384 = zext i8 %383 to i64
  %385 = getelementptr [1 x i8], [1 x i8]* @.str782, i32 0, i32 0
  %386 = load i8, i8* %385
  %387 = zext i8 %386 to i64
  %388 = icmp eq i64 %384, %387
  br i1 %388, label %then83, label %else84
then83:
  %389 = load i64, i64* %375
  store i64 %389, i64* %374
  %390 = load %nyx_string*, %nyx_string** %370
  %391 = call i64 @nyx_string_byte_length(%nyx_string* %390)
  store i64 %391, i64* %375
  br label %merge85
else84:
  br label %merge85
merge85:
  %392 = load i64, i64* %375
  %393 = add i64 %392, 1
  store i64 %393, i64* %375
  br label %while_cond80
while_end82:
  %394 = load i64, i64* %374
  %395 = icmp sge i64 %394, 0
  br i1 %395, label %then86, label %else87
then86:
  %396 = load %nyx_string*, %nyx_string** %370
  %397 = load i64, i64* %374
  %398 = call %nyx_string* @nyx_string_substring(%nyx_string* %396, i64 0, i64 %397)
  store %nyx_string* %398, %nyx_string** %372
  br label %merge88
else87:
  br label %merge88
merge88:
  %399 = load %nyx_string*, %nyx_string** %372
  %400 = load %nyx_string*, %nyx_string** %332
  %401 = call i1 @nyx_string_equals(%nyx_string* %399, %nyx_string* %400)
  br i1 %401, label %then89, label %else90
then89:
  %402 = load i64, i64* %374
  %403 = icmp sge i64 %402, 0
  br i1 %403, label %then92, label %else93
then92:
  %404 = load { i64, i8* }*, { i64, i8* }** %31
  %405 = load i64, i64* %360
  %406 = load %nyx_string*, %nyx_string** %370
  %407 = getelementptr [2 x i8], [2 x i8]* @.str783, i32 0, i32 0
  %408 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str783.c, i8* %407)
  %409 = call %nyx_string* @nyx_string_concat(%nyx_string* %406, %nyx_string* %408)
  %410 = load %nyx_string*, %nyx_string** %342
  %411 = call %nyx_string* @nyx_string_concat(%nyx_string* %409, %nyx_string* %410)
  %412 = ptrtoint %nyx_string* %411 to i64
  call void @nyx_array_set_tagged({ i64, i8* }* %404, i64 %405, i64 %412, i64 2)
  br label %merge94
else93:
  %413 = load { i64, i8* }*, { i64, i8* }** %31
  %414 = load i64, i64* %360
  %415 = load %nyx_string*, %nyx_string** %370
  %416 = getelementptr [2 x i8], [2 x i8]* @.str784, i32 0, i32 0
  %417 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str784.c, i8* %416)
  %418 = call %nyx_string* @nyx_string_concat(%nyx_string* %415, %nyx_string* %417)
  %419 = load %nyx_string*, %nyx_string** %342
  %420 = call %nyx_string* @nyx_string_concat(%nyx_string* %418, %nyx_string* %419)
  %421 = ptrtoint %nyx_string* %420 to i64
  call void @nyx_array_set_tagged({ i64, i8* }* %413, i64 %414, i64 %421, i64 2)
  br label %merge94
merge94:
  store i1 1, i1* %359
  %422 = load { i64, i8* }*, { i64, i8* }** %31
  %423 = call i64 @nyx_array_length({ i64, i8* }* %422)
  store i64 %423, i64* %360
  br label %merge91
else90:
  br label %merge91
merge91:
  %424 = load i64, i64* %360
  %425 = add i64 %424, 1
  store i64 %425, i64* %360
  br label %while_cond77
while_end79:
  %426 = load i1, i1* %359
  %427 = xor i1 %426, true
  br i1 %427, label %then95, label %else96
then95:
  %428 = load { i64, i8* }*, { i64, i8* }** %31
  %429 = load %nyx_string*, %nyx_string** %332
  %430 = getelementptr [2 x i8], [2 x i8]* @.str785, i32 0, i32 0
  %431 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str785.c, i8* %430)
  %432 = call %nyx_string* @nyx_string_concat(%nyx_string* %429, %nyx_string* %431)
  %433 = load %nyx_string*, %nyx_string** %342
  %434 = call %nyx_string* @nyx_string_concat(%nyx_string* %432, %nyx_string* %433)
  %435 = ptrtoint %nyx_string* %434 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %428, i64 %435, i64 2)
  br label %merge97
else96:
  br label %merge97
merge97:
  %436 = getelementptr [6 x i8], [6 x i8]* @.str786, i32 0, i32 0
  %437 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str786.c, i8* %436)
  %438 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %437)
  br i1 %438, label %then98, label %else99
then98:
  %439 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge100
else99:
  store i1 1, i1* %322
  br label %merge100
merge100:
  br label %while_cond71
while_end73:
  br label %merge70
else69:
  br label %merge70
merge70:
  %440 = load { i64, i8* }*, { i64, i8* }** %11
  %441 = call i64 @nyx_array_length({ i64, i8* }* %440)
  %442 = alloca i64
  store i64 %441, i64* %442
  %443 = call { i64, i8* }* @parse__parse_fn_body_block(%SharedEnv_parse* %env.param)
  %444 = alloca { i64, i8* }*
  store { i64, i8* }* %443, { i64, i8* }** %444
  %445 = load { i64, i8* }*, { i64, i8* }** %11
  %446 = call i64 @nyx_array_length({ i64, i8* }* %445)
  %447 = load i64, i64* %442
  %448 = icmp sgt i64 %446, %447
  br i1 %448, label %then101, label %else102
then101:
  %449 = load { i64, i8* }*, { i64, i8* }** %444
  %450 = call i64 @nyx_array_get({ i64, i8* }* %449, i64 1)
  %451 = inttoptr i64 %450 to { i64, i8* }*
  %452 = alloca { i64, i8* }*
  store { i64, i8* }* %451, { i64, i8* }** %452
  %453 = load { i64, i8* }*, { i64, i8* }** %452
  %454 = call i64 @nyx_array_get({ i64, i8* }* %453, i64 0)
  %455 = inttoptr i64 %454 to { i64, i8* }*
  %456 = alloca { i64, i8* }*
  store { i64, i8* }* %455, { i64, i8* }** %456
  %457 = call { i64, i8* }* @nyx_array_new_ptr()
  %458 = alloca { i64, i8* }*
  store { i64, i8* }* %457, { i64, i8* }** %458
  %459 = load i64, i64* %442
  %460 = alloca i64
  store i64 %459, i64* %460
  %461 = call i8* @llvm.stacksave()
  br label %while_cond104
while_cond104:
  %462 = load i64, i64* %460
  %463 = load { i64, i8* }*, { i64, i8* }** %11
  %464 = call i64 @nyx_array_length({ i64, i8* }* %463)
  %465 = icmp slt i64 %462, %464
  br i1 %465, label %while_body105, label %while_end106
while_body105:
  call void @llvm.stackrestore(i8* %461)
  %466 = load { i64, i8* }*, { i64, i8* }** %11
  %467 = load i64, i64* %460
  %468 = call i64 @nyx_array_get({ i64, i8* }* %466, i64 %467)
  %469 = inttoptr i64 %468 to { i64, i8* }*
  %470 = alloca { i64, i8* }*
  store { i64, i8* }* %469, { i64, i8* }** %470
  %471 = load { i64, i8* }*, { i64, i8* }** %470
  %472 = call i64 @nyx_array_get_checked({ i64, i8* }* %471, i64 0, i64 2)
  %473 = inttoptr i64 %472 to %nyx_string*
  %474 = alloca %nyx_string*
  store %nyx_string* %473, %nyx_string** %474
  %475 = load %nyx_string*, %nyx_string** %474
  %476 = getelementptr [10 x i8], [10 x i8]* @.str787, i32 0, i32 0
  %477 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str787.c, i8* %476)
  %478 = call i1 @nyx_string_equals(%nyx_string* %475, %nyx_string* %477)
  %479 = xor i1 %478, true
  br i1 %479, label %then107, label %else108
then107:
  %480 = load { i64, i8* }*, { i64, i8* }** %458
  %481 = load { i64, i8* }*, { i64, i8* }** %11
  %482 = load i64, i64* %460
  %483 = call i64 @nyx_array_get({ i64, i8* }* %481, i64 %482)
  %484 = load { i64, i8* }*, { i64, i8* }** %11
  %485 = load i64, i64* %460
  %486 = call i64 @nyx_array_get_tag({ i64, i8* }* %484, i64 %485)
  call void @nyx_array_push_tagged({ i64, i8* }* %480, i64 %483, i64 %486)
  br label %merge109
else108:
  br label %merge109
merge109:
  %487 = load i64, i64* %460
  %488 = add i64 %487, 1
  store i64 %488, i64* %460
  br label %while_cond104
while_end106:
  %489 = alloca i64
  store i64 0, i64* %489
  %490 = call i8* @llvm.stacksave()
  br label %while_cond110
while_cond110:
  %491 = load i64, i64* %489
  %492 = load { i64, i8* }*, { i64, i8* }** %456
  %493 = call i64 @nyx_array_length({ i64, i8* }* %492)
  %494 = icmp slt i64 %491, %493
  br i1 %494, label %while_body111, label %while_end112
while_body111:
  call void @llvm.stackrestore(i8* %490)
  %495 = load { i64, i8* }*, { i64, i8* }** %458
  %496 = load { i64, i8* }*, { i64, i8* }** %456
  %497 = load i64, i64* %489
  %498 = call i64 @nyx_array_get({ i64, i8* }* %496, i64 %497)
  %499 = load { i64, i8* }*, { i64, i8* }** %456
  %500 = load i64, i64* %489
  %501 = call i64 @nyx_array_get_tag({ i64, i8* }* %499, i64 %500)
  call void @nyx_array_push_tagged({ i64, i8* }* %495, i64 %498, i64 %501)
  %502 = load i64, i64* %489
  %503 = add i64 %502, 1
  store i64 %503, i64* %489
  br label %while_cond110
while_end112:
  %504 = load i64, i64* %442
  %505 = alloca i64
  store i64 %504, i64* %505
  %506 = call i8* @llvm.stacksave()
  br label %while_cond113
while_cond113:
  %507 = load i64, i64* %505
  %508 = load { i64, i8* }*, { i64, i8* }** %11
  %509 = call i64 @nyx_array_length({ i64, i8* }* %508)
  %510 = icmp slt i64 %507, %509
  br i1 %510, label %while_body114, label %while_end115
while_body114:
  call void @llvm.stackrestore(i8* %506)
  %511 = load { i64, i8* }*, { i64, i8* }** %11
  %512 = load i64, i64* %505
  %513 = getelementptr [10 x i8], [10 x i8]* @.str788, i32 0, i32 0
  %514 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str788.c, i8* %513)
  %515 = call { i64, i8* }* @nyx_array_new_ptr()
  %516 = call { i64, i8* }* @make_astnode(%nyx_string* %514, { i64, i8* }* %515)
  %517 = ptrtoint { i64, i8* }* %516 to i64
  call void @nyx_array_set({ i64, i8* }* %511, i64 %512, i64 %517)
  %518 = load i64, i64* %505
  %519 = add i64 %518, 1
  store i64 %519, i64* %505
  br label %while_cond113
while_end115:
  %520 = getelementptr [9 x i8], [9 x i8]* @.str789, i32 0, i32 0
  %521 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str789.c, i8* %520)
  %522 = call { i64, i8* }* @nyx_array_new_ptr()
  %523 = load %Token, %Token* %29
  %524 = call %nyx_string* @get_token_value(%Token %523)
  %525 = ptrtoint %nyx_string* %524 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %522, i64 %525, i64 2)
  %526 = load { i64, i8* }*, { i64, i8* }** %155
  %527 = bitcast { i64, i8* }* %526 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %522, i8* %527)
  %528 = load %nyx_string*, %nyx_string** %304
  %529 = ptrtoint %nyx_string* %528 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %522, i64 %529, i64 2)
  %530 = getelementptr [6 x i8], [6 x i8]* @.str790, i32 0, i32 0
  %531 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str790.c, i8* %530)
  %532 = call { i64, i8* }* @nyx_array_new_ptr()
  %533 = load { i64, i8* }*, { i64, i8* }** %458
  %534 = bitcast { i64, i8* }* %533 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %532, i8* %534)
  %535 = call { i64, i8* }* @make_astnode(%nyx_string* %531, { i64, i8* }* %532)
  %536 = bitcast { i64, i8* }* %535 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %522, i8* %536)
  %537 = load { i64, i8* }*, { i64, i8* }** %31
  %538 = bitcast { i64, i8* }* %537 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %522, i8* %538)
  %539 = getelementptr [1 x i8], [1 x i8]* @.str791, i32 0, i32 0
  %540 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str791.c, i8* %539)
  %541 = ptrtoint %nyx_string* %540 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %522, i64 %541, i64 2)
  %542 = call { i64, i8* }* @nyx_array_new_ptr()
  %543 = getelementptr [10 x i8], [10 x i8]* @.str792, i32 0, i32 0
  %544 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str792.c, i8* %543)
  %545 = ptrtoint %nyx_string* %544 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %542, i64 %545, i64 2)
  %546 = load %nyx_string*, %nyx_string** %317
  %547 = ptrtoint %nyx_string* %546 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %542, i64 %547, i64 2)
  %548 = bitcast { i64, i8* }* %542 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %522, i8* %548)
  %549 = call { i64, i8* }* @nyx_array_new_ptr()
  %550 = getelementptr [12 x i8], [12 x i8]* @.str793, i32 0, i32 0
  %551 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str793.c, i8* %550)
  %552 = ptrtoint %nyx_string* %551 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %549, i64 %552, i64 2)
  %553 = load { i64, i8* }*, { i64, i8* }** %157
  %554 = bitcast { i64, i8* }* %553 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %549, i8* %554)
  %555 = bitcast { i64, i8* }* %549 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %522, i8* %555)
  %556 = call { i64, i8* }* @make_astnode(%nyx_string* %521, { i64, i8* }* %522)
  ret { i64, i8* }* %556
else102:
  br label %merge103
merge103:
  %557 = getelementptr [9 x i8], [9 x i8]* @.str794, i32 0, i32 0
  %558 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str794.c, i8* %557)
  %559 = call { i64, i8* }* @nyx_array_new_ptr()
  %560 = load %Token, %Token* %29
  %561 = call %nyx_string* @get_token_value(%Token %560)
  %562 = ptrtoint %nyx_string* %561 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %559, i64 %562, i64 2)
  %563 = load { i64, i8* }*, { i64, i8* }** %155
  %564 = bitcast { i64, i8* }* %563 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %559, i8* %564)
  %565 = load %nyx_string*, %nyx_string** %304
  %566 = ptrtoint %nyx_string* %565 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %559, i64 %566, i64 2)
  %567 = load { i64, i8* }*, { i64, i8* }** %444
  %568 = bitcast { i64, i8* }* %567 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %559, i8* %568)
  %569 = load { i64, i8* }*, { i64, i8* }** %31
  %570 = bitcast { i64, i8* }* %569 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %559, i8* %570)
  %571 = getelementptr [1 x i8], [1 x i8]* @.str795, i32 0, i32 0
  %572 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str795.c, i8* %571)
  %573 = ptrtoint %nyx_string* %572 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %559, i64 %573, i64 2)
  %574 = call { i64, i8* }* @nyx_array_new_ptr()
  %575 = getelementptr [10 x i8], [10 x i8]* @.str796, i32 0, i32 0
  %576 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str796.c, i8* %575)
  %577 = ptrtoint %nyx_string* %576 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %574, i64 %577, i64 2)
  %578 = load %nyx_string*, %nyx_string** %317
  %579 = ptrtoint %nyx_string* %578 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %574, i64 %579, i64 2)
  %580 = bitcast { i64, i8* }* %574 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %559, i8* %580)
  %581 = call { i64, i8* }* @nyx_array_new_ptr()
  %582 = getelementptr [12 x i8], [12 x i8]* @.str797, i32 0, i32 0
  %583 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str797.c, i8* %582)
  %584 = ptrtoint %nyx_string* %583 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %581, i64 %584, i64 2)
  %585 = load { i64, i8* }*, { i64, i8* }** %157
  %586 = bitcast { i64, i8* }* %585 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %581, i8* %586)
  %587 = bitcast { i64, i8* }* %581 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %559, i8* %587)
  %588 = call { i64, i8* }* @make_astnode(%nyx_string* %558, { i64, i8* }* %559)
  ret { i64, i8* }* %588
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
  %23 = getelementptr [7 x i8], [7 x i8]* @.str798, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str798.c, i8* %23)
  %25 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %24)
  %26 = getelementptr [11 x i8], [11 x i8]* @.str799, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str799.c, i8* %26)
  %28 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %27)
  %29 = alloca %Token
  store %Token %28, %Token* %29
  %30 = call { i64, i8* }* @nyx_array_new_ptr()
  %31 = alloca { i64, i8* }*
  store { i64, i8* }* %30, { i64, i8* }** %31
  %32 = getelementptr [5 x i8], [5 x i8]* @.str800, i32 0, i32 0
  %33 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str800.c, i8* %32)
  %34 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %33)
  br i1 %34, label %then0, label %else1
then0:
  %35 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %36 = getelementptr [9 x i8], [9 x i8]* @.str801, i32 0, i32 0
  %37 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str801.c, i8* %36)
  %38 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %37)
  br i1 %38, label %then3, label %else4
then3:
  %39 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %40 = alloca %Token
  store %Token %39, %Token* %40
  %41 = load { i64, i8* }*, { i64, i8* }** %31
  %42 = load %Token, %Token* %40
  %43 = call %nyx_string* @get_token_value(%Token %42)
  %44 = ptrtoint %nyx_string* %43 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %41, i64 %44, i64 2)
  br label %merge5
else4:
  %45 = getelementptr [11 x i8], [11 x i8]* @.str802, i32 0, i32 0
  %46 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str802.c, i8* %45)
  %47 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %46)
  %48 = alloca %Token
  store %Token %47, %Token* %48
  %49 = load { i64, i8* }*, { i64, i8* }** %31
  %50 = load %Token, %Token* %48
  %51 = call %nyx_string* @get_token_value(%Token %50)
  %52 = ptrtoint %nyx_string* %51 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %49, i64 %52, i64 2)
  br label %merge5
merge5:
  %53 = alloca i1
  store i1 0, i1* %53
  %54 = call i8* @llvm.stacksave()
  br label %while_cond6
while_cond6:
  %55 = load i1, i1* %53
  %56 = xor i1 %55, true
  br i1 %56, label %while_body7, label %while_end8
while_body7:
  call void @llvm.stackrestore(i8* %54)
  %57 = getelementptr [6 x i8], [6 x i8]* @.str803, i32 0, i32 0
  %58 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str803.c, i8* %57)
  %59 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %58)
  br i1 %59, label %then9, label %else10
then9:
  %60 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %61 = getelementptr [9 x i8], [9 x i8]* @.str804, i32 0, i32 0
  %62 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str804.c, i8* %61)
  %63 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %62)
  br i1 %63, label %then12, label %else13
then12:
  %64 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %65 = alloca %Token
  store %Token %64, %Token* %65
  %66 = load { i64, i8* }*, { i64, i8* }** %31
  %67 = load %Token, %Token* %65
  %68 = call %nyx_string* @get_token_value(%Token %67)
  %69 = ptrtoint %nyx_string* %68 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %66, i64 %69, i64 2)
  br label %merge14
else13:
  %70 = getelementptr [11 x i8], [11 x i8]* @.str805, i32 0, i32 0
  %71 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str805.c, i8* %70)
  %72 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %71)
  %73 = alloca %Token
  store %Token %72, %Token* %73
  %74 = load { i64, i8* }*, { i64, i8* }** %31
  %75 = load %Token, %Token* %73
  %76 = call %nyx_string* @get_token_value(%Token %75)
  %77 = ptrtoint %nyx_string* %76 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %74, i64 %77, i64 2)
  br label %merge14
merge14:
  br label %merge11
else10:
  store i1 1, i1* %53
  br label %merge11
merge11:
  br label %while_cond6
while_end8:
  %78 = getelementptr [8 x i8], [8 x i8]* @.str806, i32 0, i32 0
  %79 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str806.c, i8* %78)
  %80 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %79)
  br label %merge2
else1:
  br label %merge2
merge2:
  %81 = getelementptr [11 x i8], [11 x i8]* @.str807, i32 0, i32 0
  %82 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str807.c, i8* %81)
  %83 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %82)
  br i1 %83, label %then15, label %else16
then15:
  %84 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %85 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %86 = alloca %nyx_string*
  store %nyx_string* %85, %nyx_string** %86
  %87 = getelementptr [12 x i8], [12 x i8]* @.str808, i32 0, i32 0
  %88 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str808.c, i8* %87)
  %89 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %88)
  %90 = call { i64, i8* }* @nyx_array_new_ptr()
  %91 = call { i64, i8* }* @nyx_array_new_ptr()
  %92 = getelementptr [3 x i8], [3 x i8]* @.str809, i32 0, i32 0
  %93 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str809.c, i8* %92)
  %94 = ptrtoint %nyx_string* %93 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %91, i64 %94, i64 2)
  %95 = load %nyx_string*, %nyx_string** %86
  %96 = ptrtoint %nyx_string* %95 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %91, i64 %96, i64 2)
  %97 = bitcast { i64, i8* }* %91 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %90, i8* %97)
  %98 = alloca { i64, i8* }*
  store { i64, i8* }* %90, { i64, i8* }** %98
  %99 = getelementptr [7 x i8], [7 x i8]* @.str810, i32 0, i32 0
  %100 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str810.c, i8* %99)
  %101 = call { i64, i8* }* @nyx_array_new_ptr()
  %102 = load %Token, %Token* %29
  %103 = call %nyx_string* @get_token_value(%Token %102)
  %104 = ptrtoint %nyx_string* %103 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %101, i64 %104, i64 2)
  %105 = load { i64, i8* }*, { i64, i8* }** %98
  %106 = bitcast { i64, i8* }* %105 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %101, i8* %106)
  %107 = load { i64, i8* }*, { i64, i8* }** %31
  %108 = bitcast { i64, i8* }* %107 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %101, i8* %108)
  %109 = call { i64, i8* }* @make_astnode(%nyx_string* %100, { i64, i8* }* %101)
  ret { i64, i8* }* %109
else16:
  br label %merge17
merge17:
  %110 = getelementptr [11 x i8], [11 x i8]* @.str811, i32 0, i32 0
  %111 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str811.c, i8* %110)
  %112 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %111)
  %113 = call { i64, i8* }* @nyx_array_new_ptr()
  %114 = alloca { i64, i8* }*
  store { i64, i8* }* %113, { i64, i8* }** %114
  %115 = alloca i1
  store i1 0, i1* %115
  %116 = call i8* @llvm.stacksave()
  br label %while_cond18
while_cond18:
  %117 = load i1, i1* %115
  %118 = xor i1 %117, true
  br i1 %118, label %while_body19, label %while_end20
while_body19:
  call void @llvm.stackrestore(i8* %116)
  %119 = getelementptr [12 x i8], [12 x i8]* @.str812, i32 0, i32 0
  %120 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str812.c, i8* %119)
  %121 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %120)
  br i1 %121, label %then21, label %else22
then21:
  %122 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %115
  br label %merge23
else22:
  %123 = load { i64, i8* }*, { i64, i8* }** %114
  %124 = call i64 @nyx_array_length({ i64, i8* }* %123)
  %125 = icmp sgt i64 %124, 0
  br i1 %125, label %then24, label %else25
then24:
  %126 = getelementptr [6 x i8], [6 x i8]* @.str813, i32 0, i32 0
  %127 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str813.c, i8* %126)
  %128 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %127)
  br i1 %128, label %then27, label %else28
then27:
  %129 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %130 = getelementptr [12 x i8], [12 x i8]* @.str814, i32 0, i32 0
  %131 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str814.c, i8* %130)
  %132 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %131)
  br i1 %132, label %then30, label %else31
then30:
  %133 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %115
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
  %134 = load i1, i1* %115
  %135 = xor i1 %134, true
  br i1 %135, label %then33, label %else34
then33:
  %136 = getelementptr [11 x i8], [11 x i8]* @.str815, i32 0, i32 0
  %137 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str815.c, i8* %136)
  %138 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %137)
  %139 = alloca %Token
  store %Token %138, %Token* %139
  %140 = getelementptr [6 x i8], [6 x i8]* @.str816, i32 0, i32 0
  %141 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str816.c, i8* %140)
  %142 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %141)
  %143 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %144 = alloca %nyx_string*
  store %nyx_string* %143, %nyx_string** %144
  %145 = load { i64, i8* }*, { i64, i8* }** %114
  %146 = call { i64, i8* }* @nyx_array_new_ptr()
  %147 = load %Token, %Token* %139
  %148 = call %nyx_string* @get_token_value(%Token %147)
  %149 = ptrtoint %nyx_string* %148 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %146, i64 %149, i64 2)
  %150 = load %nyx_string*, %nyx_string** %144
  %151 = ptrtoint %nyx_string* %150 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %146, i64 %151, i64 2)
  %152 = ptrtoint { i64, i8* }* %146 to i64
  call void @nyx_array_push({ i64, i8* }* %145, i64 %152)
  br label %merge35
else34:
  br label %merge35
merge35:
  br label %merge23
merge23:
  br label %while_cond18
while_end20:
  %153 = getelementptr [7 x i8], [7 x i8]* @.str817, i32 0, i32 0
  %154 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str817.c, i8* %153)
  %155 = call { i64, i8* }* @nyx_array_new_ptr()
  %156 = load %Token, %Token* %29
  %157 = call %nyx_string* @get_token_value(%Token %156)
  %158 = ptrtoint %nyx_string* %157 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %155, i64 %158, i64 2)
  %159 = load { i64, i8* }*, { i64, i8* }** %114
  %160 = bitcast { i64, i8* }* %159 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %155, i8* %160)
  %161 = load { i64, i8* }*, { i64, i8* }** %31
  %162 = bitcast { i64, i8* }* %161 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %155, i8* %162)
  %163 = call { i64, i8* }* @make_astnode(%nyx_string* %154, { i64, i8* }* %155)
  ret { i64, i8* }* %163
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
  %23 = getelementptr [3 x i8], [3 x i8]* @.str818, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str818.c, i8* %23)
  %25 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %24)
  %26 = getelementptr [4 x i8], [4 x i8]* @.str819, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str819.c, i8* %26)
  %28 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %27)
  br i1 %28, label %then0, label %else1
then0:
  %29 = call { i64, i8* }* @parse__parse_if_let(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %29
else1:
  br label %merge2
merge2:
  %30 = load i64, i64* %6
  %31 = alloca i64
  store i64 %30, i64* %31
  store i64 1, i64* %6
  %32 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %33 = alloca { i64, i8* }*
  store { i64, i8* }* %32, { i64, i8* }** %33
  %34 = load i64, i64* %31
  store i64 %34, i64* %6
  %35 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %36 = alloca { i64, i8* }*
  store { i64, i8* }* %35, { i64, i8* }** %36
  %37 = getelementptr [6 x i8], [6 x i8]* @.str820, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str820.c, i8* %37)
  %39 = call { i64, i8* }* @nyx_array_new_ptr()
  %40 = call { i64, i8* }* @make_astnode(%nyx_string* %38, { i64, i8* }* %39)
  %41 = alloca { i64, i8* }*
  store { i64, i8* }* %40, { i64, i8* }** %41
  %42 = getelementptr [5 x i8], [5 x i8]* @.str821, i32 0, i32 0
  %43 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str821.c, i8* %42)
  %44 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %43)
  br i1 %44, label %then3, label %else4
then3:
  %45 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %46 = getelementptr [3 x i8], [3 x i8]* @.str822, i32 0, i32 0
  %47 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str822.c, i8* %46)
  %48 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %47)
  br i1 %48, label %then6, label %else7
then6:
  %49 = call { i64, i8* }* @parse__parse_if(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %49, { i64, i8* }** %41
  br label %merge8
else7:
  %50 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %50, { i64, i8* }** %41
  br label %merge8
merge8:
  br label %merge5
else4:
  br label %merge5
merge5:
  %51 = getelementptr [3 x i8], [3 x i8]* @.str823, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str823.c, i8* %51)
  %53 = call { i64, i8* }* @nyx_array_new_ptr()
  %54 = load { i64, i8* }*, { i64, i8* }** %33
  %55 = bitcast { i64, i8* }* %54 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %53, i8* %55)
  %56 = load { i64, i8* }*, { i64, i8* }** %36
  %57 = bitcast { i64, i8* }* %56 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %53, i8* %57)
  %58 = load { i64, i8* }*, { i64, i8* }** %41
  %59 = bitcast { i64, i8* }* %58 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %53, i8* %59)
  %60 = call { i64, i8* }* @make_astnode(%nyx_string* %52, { i64, i8* }* %53)
  ret { i64, i8* }* %60
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
  %23 = getelementptr [4 x i8], [4 x i8]* @.str824, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str824.c, i8* %23)
  %25 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %24)
  %26 = call { i64, i8* }* @parse__parse_single_pattern(%SharedEnv_parse* %env.param)
  %27 = alloca { i64, i8* }*
  store { i64, i8* }* %26, { i64, i8* }** %27
  %28 = getelementptr [7 x i8], [7 x i8]* @.str825, i32 0, i32 0
  %29 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str825.c, i8* %28)
  %30 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %29)
  %31 = load i64, i64* %6
  %32 = alloca i64
  store i64 %31, i64* %32
  store i64 1, i64* %6
  %33 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %34 = alloca { i64, i8* }*
  store { i64, i8* }* %33, { i64, i8* }** %34
  %35 = load i64, i64* %32
  store i64 %35, i64* %6
  %36 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %37 = alloca { i64, i8* }*
  store { i64, i8* }* %36, { i64, i8* }** %37
  %38 = call { i64, i8* }* @nyx_array_new_ptr()
  %39 = alloca { i64, i8* }*
  store { i64, i8* }* %38, { i64, i8* }** %39
  %40 = getelementptr [6 x i8], [6 x i8]* @.str826, i32 0, i32 0
  %41 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str826.c, i8* %40)
  %42 = call { i64, i8* }* @nyx_array_new_ptr()
  %43 = load { i64, i8* }*, { i64, i8* }** %39
  %44 = bitcast { i64, i8* }* %43 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %42, i8* %44)
  %45 = call { i64, i8* }* @make_astnode(%nyx_string* %41, { i64, i8* }* %42)
  %46 = alloca { i64, i8* }*
  store { i64, i8* }* %45, { i64, i8* }** %46
  %47 = getelementptr [5 x i8], [5 x i8]* @.str827, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str827.c, i8* %47)
  %49 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %48)
  br i1 %49, label %then0, label %else1
then0:
  %50 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %51 = getelementptr [11 x i8], [11 x i8]* @.str828, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str828.c, i8* %51)
  %53 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %52)
  br i1 %53, label %then3, label %else4
then3:
  %54 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %54, { i64, i8* }** %46
  br label %merge5
else4:
  br label %merge5
merge5:
  br label %merge2
else1:
  br label %merge2
merge2:
  %55 = getelementptr [10 x i8], [10 x i8]* @.str829, i32 0, i32 0
  %56 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str829.c, i8* %55)
  %57 = call { i64, i8* }* @nyx_array_new_ptr()
  %58 = load { i64, i8* }*, { i64, i8* }** %27
  %59 = bitcast { i64, i8* }* %58 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %57, i8* %59)
  %60 = load { i64, i8* }*, { i64, i8* }** %37
  %61 = bitcast { i64, i8* }* %60 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %57, i8* %61)
  %62 = getelementptr [6 x i8], [6 x i8]* @.str830, i32 0, i32 0
  %63 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str830.c, i8* %62)
  %64 = call { i64, i8* }* @nyx_array_new_ptr()
  %65 = call { i64, i8* }* @make_astnode(%nyx_string* %63, { i64, i8* }* %64)
  %66 = bitcast { i64, i8* }* %65 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %57, i8* %66)
  %67 = call { i64, i8* }* @make_astnode(%nyx_string* %56, { i64, i8* }* %57)
  %68 = alloca { i64, i8* }*
  store { i64, i8* }* %67, { i64, i8* }** %68
  %69 = getelementptr [9 x i8], [9 x i8]* @.str831, i32 0, i32 0
  %70 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str831.c, i8* %69)
  %71 = call { i64, i8* }* @nyx_array_new_ptr()
  %72 = call { i64, i8* }* @make_astnode(%nyx_string* %70, { i64, i8* }* %71)
  %73 = alloca { i64, i8* }*
  store { i64, i8* }* %72, { i64, i8* }** %73
  %74 = getelementptr [10 x i8], [10 x i8]* @.str832, i32 0, i32 0
  %75 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str832.c, i8* %74)
  %76 = call { i64, i8* }* @nyx_array_new_ptr()
  %77 = load { i64, i8* }*, { i64, i8* }** %73
  %78 = bitcast { i64, i8* }* %77 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %76, i8* %78)
  %79 = load { i64, i8* }*, { i64, i8* }** %46
  %80 = bitcast { i64, i8* }* %79 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %76, i8* %80)
  %81 = getelementptr [6 x i8], [6 x i8]* @.str833, i32 0, i32 0
  %82 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str833.c, i8* %81)
  %83 = call { i64, i8* }* @nyx_array_new_ptr()
  %84 = call { i64, i8* }* @make_astnode(%nyx_string* %82, { i64, i8* }* %83)
  %85 = bitcast { i64, i8* }* %84 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %76, i8* %85)
  %86 = call { i64, i8* }* @make_astnode(%nyx_string* %75, { i64, i8* }* %76)
  %87 = alloca { i64, i8* }*
  store { i64, i8* }* %86, { i64, i8* }** %87
  %88 = call { i64, i8* }* @nyx_array_new_ptr()
  %89 = alloca { i64, i8* }*
  store { i64, i8* }* %88, { i64, i8* }** %89
  %90 = load { i64, i8* }*, { i64, i8* }** %89
  %91 = load { i64, i8* }*, { i64, i8* }** %68
  %92 = ptrtoint { i64, i8* }* %91 to i64
  call void @nyx_array_push({ i64, i8* }* %90, i64 %92)
  %93 = load { i64, i8* }*, { i64, i8* }** %89
  %94 = load { i64, i8* }*, { i64, i8* }** %87
  %95 = ptrtoint { i64, i8* }* %94 to i64
  call void @nyx_array_push({ i64, i8* }* %93, i64 %95)
  %96 = getelementptr [6 x i8], [6 x i8]* @.str834, i32 0, i32 0
  %97 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str834.c, i8* %96)
  %98 = call { i64, i8* }* @nyx_array_new_ptr()
  %99 = load { i64, i8* }*, { i64, i8* }** %34
  %100 = bitcast { i64, i8* }* %99 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %98, i8* %100)
  %101 = load { i64, i8* }*, { i64, i8* }** %89
  %102 = bitcast { i64, i8* }* %101 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %98, i8* %102)
  %103 = call { i64, i8* }* @make_astnode(%nyx_string* %97, { i64, i8* }* %98)
  ret { i64, i8* }* %103
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
  %23 = getelementptr [6 x i8], [6 x i8]* @.str835, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str835.c, i8* %23)
  %25 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %24)
  %26 = getelementptr [4 x i8], [4 x i8]* @.str836, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str836.c, i8* %26)
  %28 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %27)
  br i1 %28, label %then0, label %else1
then0:
  %29 = call { i64, i8* }* @parse__parse_while_let(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %29
else1:
  br label %merge2
merge2:
  %30 = load i64, i64* %6
  %31 = alloca i64
  store i64 %30, i64* %31
  store i64 1, i64* %6
  %32 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %33 = alloca { i64, i8* }*
  store { i64, i8* }* %32, { i64, i8* }** %33
  %34 = load i64, i64* %31
  store i64 %34, i64* %6
  %35 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %36 = alloca { i64, i8* }*
  store { i64, i8* }* %35, { i64, i8* }** %36
  %37 = getelementptr [6 x i8], [6 x i8]* @.str837, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str837.c, i8* %37)
  %39 = call { i64, i8* }* @nyx_array_new_ptr()
  %40 = load { i64, i8* }*, { i64, i8* }** %33
  %41 = bitcast { i64, i8* }* %40 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %39, i8* %41)
  %42 = load { i64, i8* }*, { i64, i8* }** %36
  %43 = bitcast { i64, i8* }* %42 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %39, i8* %43)
  %44 = call { i64, i8* }* @make_astnode(%nyx_string* %38, { i64, i8* }* %39)
  ret { i64, i8* }* %44
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
  %23 = getelementptr [4 x i8], [4 x i8]* @.str838, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str838.c, i8* %23)
  %25 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %24)
  %26 = call { i64, i8* }* @parse__parse_single_pattern(%SharedEnv_parse* %env.param)
  %27 = alloca { i64, i8* }*
  store { i64, i8* }* %26, { i64, i8* }** %27
  %28 = getelementptr [7 x i8], [7 x i8]* @.str839, i32 0, i32 0
  %29 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str839.c, i8* %28)
  %30 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %29)
  %31 = load i64, i64* %6
  %32 = alloca i64
  store i64 %31, i64* %32
  store i64 1, i64* %6
  %33 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %34 = alloca { i64, i8* }*
  store { i64, i8* }* %33, { i64, i8* }** %34
  %35 = load i64, i64* %32
  store i64 %35, i64* %6
  %36 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %37 = alloca { i64, i8* }*
  store { i64, i8* }* %36, { i64, i8* }** %37
  %38 = getelementptr [10 x i8], [10 x i8]* @.str840, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str840.c, i8* %38)
  %40 = call { i64, i8* }* @nyx_array_new_ptr()
  %41 = load { i64, i8* }*, { i64, i8* }** %27
  %42 = bitcast { i64, i8* }* %41 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %40, i8* %42)
  %43 = load { i64, i8* }*, { i64, i8* }** %34
  %44 = bitcast { i64, i8* }* %43 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %40, i8* %44)
  %45 = load { i64, i8* }*, { i64, i8* }** %37
  %46 = bitcast { i64, i8* }* %45 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %40, i8* %46)
  %47 = call { i64, i8* }* @make_astnode(%nyx_string* %39, { i64, i8* }* %40)
  ret { i64, i8* }* %47
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
  %23 = getelementptr [4 x i8], [4 x i8]* @.str841, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str841.c, i8* %23)
  %25 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %24)
  %26 = getelementptr [11 x i8], [11 x i8]* @.str842, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str842.c, i8* %26)
  %28 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %27)
  %29 = alloca %Token
  store %Token %28, %Token* %29
  %30 = getelementptr [1 x i8], [1 x i8]* @.str843, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str843.c, i8* %30)
  %32 = alloca %nyx_string*
  store %nyx_string* %31, %nyx_string** %32
  %33 = getelementptr [6 x i8], [6 x i8]* @.str844, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str844.c, i8* %33)
  %35 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %34)
  br i1 %35, label %then0, label %else1
then0:
  %36 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %37 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %37, %nyx_string** %32
  br label %merge2
else1:
  br label %merge2
merge2:
  %38 = getelementptr [3 x i8], [3 x i8]* @.str845, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str845.c, i8* %38)
  %40 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %39)
  %41 = load i64, i64* %6
  %42 = alloca i64
  store i64 %41, i64* %42
  store i64 1, i64* %6
  %43 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %44 = alloca { i64, i8* }*
  store { i64, i8* }* %43, { i64, i8* }** %44
  %45 = load i64, i64* %42
  store i64 %45, i64* %6
  %46 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %47 = alloca { i64, i8* }*
  store { i64, i8* }* %46, { i64, i8* }** %47
  %48 = getelementptr [4 x i8], [4 x i8]* @.str846, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str846.c, i8* %48)
  %50 = call { i64, i8* }* @nyx_array_new_ptr()
  %51 = load %Token, %Token* %29
  %52 = call %nyx_string* @get_token_value(%Token %51)
  %53 = ptrtoint %nyx_string* %52 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %50, i64 %53, i64 2)
  %54 = load { i64, i8* }*, { i64, i8* }** %44
  %55 = bitcast { i64, i8* }* %54 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %50, i8* %55)
  %56 = load { i64, i8* }*, { i64, i8* }** %47
  %57 = bitcast { i64, i8* }* %56 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %50, i8* %57)
  %58 = load %nyx_string*, %nyx_string** %32
  %59 = ptrtoint %nyx_string* %58 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %50, i64 %59, i64 2)
  %60 = call { i64, i8* }* @make_astnode(%nyx_string* %49, { i64, i8* }* %50)
  ret { i64, i8* }* %60
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
  %23 = getelementptr [7 x i8], [7 x i8]* @.str847, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str847.c, i8* %23)
  %25 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %24)
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
  %32 = getelementptr [12 x i8], [12 x i8]* @.str848, i32 0, i32 0
  %33 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str848.c, i8* %32)
  %34 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %33)
  br i1 %34, label %sc_or_end1, label %sc_or_rhs0
sc_or_rhs0:
  %35 = getelementptr [4 x i8], [4 x i8]* @.str849, i32 0, i32 0
  %36 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str849.c, i8* %35)
  %37 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %36)
  store i1 %37, i1* %31
  br label %sc_or_end1
sc_or_end1:
  %38 = load i1, i1* %31
  br i1 %38, label %sc_or_end3, label %sc_or_rhs2
sc_or_rhs2:
  %39 = getelementptr [4 x i8], [4 x i8]* @.str850, i32 0, i32 0
  %40 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str850.c, i8* %39)
  %41 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %40)
  store i1 %41, i1* %30
  br label %sc_or_end3
sc_or_end3:
  %42 = load i1, i1* %30
  br i1 %42, label %sc_or_end5, label %sc_or_rhs4
sc_or_rhs4:
  %43 = getelementptr [4 x i8], [4 x i8]* @.str851, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str851.c, i8* %43)
  %45 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %44)
  store i1 %45, i1* %29
  br label %sc_or_end5
sc_or_end5:
  %46 = load i1, i1* %29
  br i1 %46, label %sc_or_end7, label %sc_or_rhs6
sc_or_rhs6:
  %47 = getelementptr [6 x i8], [6 x i8]* @.str852, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str852.c, i8* %47)
  %49 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %48)
  store i1 %49, i1* %28
  br label %sc_or_end7
sc_or_end7:
  %50 = load i1, i1* %28
  br i1 %50, label %sc_or_end9, label %sc_or_rhs8
sc_or_rhs8:
  %51 = getelementptr [4 x i8], [4 x i8]* @.str853, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str853.c, i8* %51)
  %53 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %52)
  store i1 %53, i1* %27
  br label %sc_or_end9
sc_or_end9:
  %54 = load i1, i1* %27
  br i1 %54, label %sc_or_end11, label %sc_or_rhs10
sc_or_rhs10:
  %55 = getelementptr [7 x i8], [7 x i8]* @.str854, i32 0, i32 0
  %56 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str854.c, i8* %55)
  %57 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %56)
  store i1 %57, i1* %26
  br label %sc_or_end11
sc_or_end11:
  %58 = load i1, i1* %26
  br i1 %58, label %then12, label %else13
then12:
  %59 = getelementptr [8 x i8], [8 x i8]* @.str855, i32 0, i32 0
  %60 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str855.c, i8* %59)
  %61 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %61, i64 0, i64 1)
  %62 = call { i64, i8* }* @make_astnode(%nyx_string* %60, { i64, i8* }* %61)
  %63 = alloca { i64, i8* }*
  store { i64, i8* }* %62, { i64, i8* }** %63
  %64 = getelementptr [7 x i8], [7 x i8]* @.str856, i32 0, i32 0
  %65 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str856.c, i8* %64)
  %66 = call { i64, i8* }* @nyx_array_new_ptr()
  %67 = load { i64, i8* }*, { i64, i8* }** %63
  %68 = bitcast { i64, i8* }* %67 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %66, i8* %68)
  %69 = call { i64, i8* }* @make_astnode(%nyx_string* %65, { i64, i8* }* %66)
  ret { i64, i8* }* %69
else13:
  br label %merge14
merge14:
  %70 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %71 = alloca { i64, i8* }*
  store { i64, i8* }* %70, { i64, i8* }** %71
  %72 = getelementptr [7 x i8], [7 x i8]* @.str857, i32 0, i32 0
  %73 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str857.c, i8* %72)
  %74 = call { i64, i8* }* @nyx_array_new_ptr()
  %75 = load { i64, i8* }*, { i64, i8* }** %71
  %76 = bitcast { i64, i8* }* %75 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %74, i8* %76)
  %77 = call { i64, i8* }* @make_astnode(%nyx_string* %73, { i64, i8* }* %74)
  ret { i64, i8* }* %77
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
  %23 = getelementptr [7 x i8], [7 x i8]* @.str858, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str858.c, i8* %23)
  %25 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %24)
  %26 = getelementptr [3 x i8], [3 x i8]* @.str859, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str859.c, i8* %26)
  %28 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %27)
  br i1 %28, label %then0, label %else1
then0:
  %29 = call { i64, i8* }* @parse__parse_function(%SharedEnv_parse* %env.param)
  %30 = alloca { i64, i8* }*
  store { i64, i8* }* %29, { i64, i8* }** %30
  %31 = getelementptr [7 x i8], [7 x i8]* @.str860, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str860.c, i8* %31)
  %33 = call { i64, i8* }* @nyx_array_new_ptr()
  %34 = load { i64, i8* }*, { i64, i8* }** %30
  %35 = bitcast { i64, i8* }* %34 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %33, i8* %35)
  %36 = call { i64, i8* }* @make_astnode(%nyx_string* %32, { i64, i8* }* %33)
  ret { i64, i8* }* %36
else1:
  br label %merge2
merge2:
  %37 = getelementptr [7 x i8], [7 x i8]* @.str861, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str861.c, i8* %37)
  %39 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %38)
  br i1 %39, label %then3, label %else4
then3:
  %40 = call { i64, i8* }* @parse__parse_struct(%SharedEnv_parse* %env.param)
  %41 = alloca { i64, i8* }*
  store { i64, i8* }* %40, { i64, i8* }** %41
  %42 = getelementptr [7 x i8], [7 x i8]* @.str862, i32 0, i32 0
  %43 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str862.c, i8* %42)
  %44 = call { i64, i8* }* @nyx_array_new_ptr()
  %45 = load { i64, i8* }*, { i64, i8* }** %41
  %46 = bitcast { i64, i8* }* %45 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %44, i8* %46)
  %47 = call { i64, i8* }* @make_astnode(%nyx_string* %43, { i64, i8* }* %44)
  ret { i64, i8* }* %47
else4:
  br label %merge5
merge5:
  %48 = getelementptr [5 x i8], [5 x i8]* @.str863, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str863.c, i8* %48)
  %50 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %49)
  br i1 %50, label %then6, label %else7
then6:
  %51 = call { i64, i8* }* @parse__parse_enum(%SharedEnv_parse* %env.param)
  %52 = alloca { i64, i8* }*
  store { i64, i8* }* %51, { i64, i8* }** %52
  %53 = getelementptr [7 x i8], [7 x i8]* @.str864, i32 0, i32 0
  %54 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str864.c, i8* %53)
  %55 = call { i64, i8* }* @nyx_array_new_ptr()
  %56 = load { i64, i8* }*, { i64, i8* }** %52
  %57 = bitcast { i64, i8* }* %56 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %55, i8* %57)
  %58 = call { i64, i8* }* @make_astnode(%nyx_string* %54, { i64, i8* }* %55)
  ret { i64, i8* }* %58
else7:
  br label %merge8
merge8:
  %59 = getelementptr [6 x i8], [6 x i8]* @.str865, i32 0, i32 0
  %60 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str865.c, i8* %59)
  %61 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %60)
  br i1 %61, label %then9, label %else10
then9:
  %62 = call { i64, i8* }* @parse__parse_trait(%SharedEnv_parse* %env.param)
  %63 = alloca { i64, i8* }*
  store { i64, i8* }* %62, { i64, i8* }** %63
  %64 = getelementptr [7 x i8], [7 x i8]* @.str866, i32 0, i32 0
  %65 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str866.c, i8* %64)
  %66 = call { i64, i8* }* @nyx_array_new_ptr()
  %67 = load { i64, i8* }*, { i64, i8* }** %63
  %68 = bitcast { i64, i8* }* %67 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %66, i8* %68)
  %69 = call { i64, i8* }* @make_astnode(%nyx_string* %65, { i64, i8* }* %66)
  ret { i64, i8* }* %69
else10:
  br label %merge11
merge11:
  %70 = getelementptr [11 x i8], [11 x i8]* @.str867, i32 0, i32 0
  %71 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str867.c, i8* %70)
  %72 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %71)
  br i1 %72, label %then12, label %else13
then12:
  %73 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %74 = call %nyx_string* @get_token_value(%Token %73)
  %75 = getelementptr [5 x i8], [5 x i8]* @.str868, i32 0, i32 0
  %76 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str868.c, i8* %75)
  %77 = call i1 @nyx_string_equals(%nyx_string* %74, %nyx_string* %76)
  br i1 %77, label %then15, label %else16
then15:
  %78 = call { i64, i8* }* @parse__parse_type_alias(%SharedEnv_parse* %env.param)
  %79 = alloca { i64, i8* }*
  store { i64, i8* }* %78, { i64, i8* }** %79
  %80 = getelementptr [7 x i8], [7 x i8]* @.str869, i32 0, i32 0
  %81 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str869.c, i8* %80)
  %82 = call { i64, i8* }* @nyx_array_new_ptr()
  %83 = load { i64, i8* }*, { i64, i8* }** %79
  %84 = bitcast { i64, i8* }* %83 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %82, i8* %84)
  %85 = call { i64, i8* }* @make_astnode(%nyx_string* %81, { i64, i8* }* %82)
  ret { i64, i8* }* %85
else16:
  br label %merge17
merge17:
  br label %merge14
else13:
  br label %merge14
merge14:
  %86 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %87 = alloca %Token
  store %Token %86, %Token* %87
  %88 = getelementptr [8 x i8], [8 x i8]* @.str870, i32 0, i32 0
  %89 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str870.c, i8* %88)
  %90 = load %Token, %Token* %87
  %91 = call i64 @get_token_line(%Token %90)
  %92 = load %Token, %Token* %87
  %93 = call i64 @get_token_column(%Token %92)
  %94 = getelementptr [58 x i8], [58 x i8]* @.str871, i32 0, i32 0
  %95 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str871.c, i8* %94)
  %96 = getelementptr [56 x i8], [56 x i8]* @.str872, i32 0, i32 0
  %97 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str872.c, i8* %96)
  %98 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %95, %nyx_string* %97)
  %99 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %89, i64 %91, i64 %93, %nyx_string* %98)
  %100 = getelementptr [6 x i8], [6 x i8]* @.str873, i32 0, i32 0
  %101 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str873.c, i8* %100)
  %102 = call { i64, i8* }* @nyx_array_new_ptr()
  %103 = call { i64, i8* }* @make_astnode(%nyx_string* %101, { i64, i8* }* %102)
  ret { i64, i8* }* %103
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
  %23 = getelementptr [7 x i8], [7 x i8]* @.str874, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str874.c, i8* %23)
  %25 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %24)
  %26 = getelementptr [7 x i8], [7 x i8]* @.str875, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str875.c, i8* %26)
  %28 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %27)
  br i1 %28, label %then0, label %else1
then0:
  %29 = getelementptr [7 x i8], [7 x i8]* @.str876, i32 0, i32 0
  %30 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str876.c, i8* %29)
  %31 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %30)
  %32 = alloca %Token
  store %Token %31, %Token* %32
  %33 = load %Token, %Token* %32
  %34 = call %nyx_string* @get_token_value(%Token %33)
  %35 = alloca %nyx_string*
  store %nyx_string* %34, %nyx_string** %35
  %36 = getelementptr [1 x i8], [1 x i8]* @.str877, i32 0, i32 0
  %37 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str877.c, i8* %36)
  %38 = alloca %nyx_string*
  store %nyx_string* %37, %nyx_string** %38
  %39 = getelementptr [3 x i8], [3 x i8]* @.str878, i32 0, i32 0
  %40 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str878.c, i8* %39)
  %41 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %40)
  br i1 %41, label %then3, label %else4
then3:
  %42 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %43 = getelementptr [11 x i8], [11 x i8]* @.str879, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str879.c, i8* %43)
  %45 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %44)
  %46 = alloca %Token
  store %Token %45, %Token* %46
  %47 = load %Token, %Token* %46
  %48 = call %nyx_string* @get_token_value(%Token %47)
  store %nyx_string* %48, %nyx_string** %38
  br label %merge5
else4:
  br label %merge5
merge5:
  %49 = getelementptr [14 x i8], [14 x i8]* @.str880, i32 0, i32 0
  %50 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str880.c, i8* %49)
  %51 = call { i64, i8* }* @nyx_array_new_ptr()
  %52 = load %nyx_string*, %nyx_string** %35
  %53 = ptrtoint %nyx_string* %52 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %51, i64 %53, i64 2)
  %54 = load %nyx_string*, %nyx_string** %38
  %55 = ptrtoint %nyx_string* %54 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %51, i64 %55, i64 2)
  %56 = call { i64, i8* }* @make_astnode(%nyx_string* %50, { i64, i8* }* %51)
  ret { i64, i8* }* %56
else1:
  br label %merge2
merge2:
  %57 = getelementptr [11 x i8], [11 x i8]* @.str881, i32 0, i32 0
  %58 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str881.c, i8* %57)
  %59 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %58)
  %60 = call { i64, i8* }* @nyx_array_new_ptr()
  %61 = alloca { i64, i8* }*
  store { i64, i8* }* %60, { i64, i8* }** %61
  %62 = alloca i1
  store i1 0, i1* %62
  %63 = call i8* @llvm.stacksave()
  br label %while_cond6
while_cond6:
  %64 = load i1, i1* %62
  %65 = xor i1 %64, true
  br i1 %65, label %while_body7, label %while_end8
while_body7:
  call void @llvm.stackrestore(i8* %63)
  %66 = getelementptr [11 x i8], [11 x i8]* @.str882, i32 0, i32 0
  %67 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str882.c, i8* %66)
  %68 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %67)
  %69 = alloca %Token
  store %Token %68, %Token* %69
  %70 = load %Token, %Token* %69
  %71 = call %nyx_string* @get_token_value(%Token %70)
  %72 = alloca %nyx_string*
  store %nyx_string* %71, %nyx_string** %72
  %73 = load { i64, i8* }*, { i64, i8* }** %61
  %74 = load %nyx_string*, %nyx_string** %72
  %75 = ptrtoint %nyx_string* %74 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %73, i64 %75, i64 2)
  %76 = getelementptr [6 x i8], [6 x i8]* @.str883, i32 0, i32 0
  %77 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str883.c, i8* %76)
  %78 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %77)
  br i1 %78, label %then9, label %else10
then9:
  %79 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge11
else10:
  store i1 1, i1* %62
  br label %merge11
merge11:
  br label %while_cond6
while_end8:
  %80 = getelementptr [12 x i8], [12 x i8]* @.str884, i32 0, i32 0
  %81 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str884.c, i8* %80)
  %82 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %81)
  %83 = getelementptr [5 x i8], [5 x i8]* @.str885, i32 0, i32 0
  %84 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str885.c, i8* %83)
  %85 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %84)
  %86 = getelementptr [7 x i8], [7 x i8]* @.str886, i32 0, i32 0
  %87 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str886.c, i8* %86)
  %88 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %87)
  %89 = alloca %Token
  store %Token %88, %Token* %89
  %90 = load %Token, %Token* %89
  %91 = call %nyx_string* @get_token_value(%Token %90)
  %92 = alloca %nyx_string*
  store %nyx_string* %91, %nyx_string** %92
  %93 = getelementptr [7 x i8], [7 x i8]* @.str887, i32 0, i32 0
  %94 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str887.c, i8* %93)
  %95 = call { i64, i8* }* @nyx_array_new_ptr()
  %96 = load { i64, i8* }*, { i64, i8* }** %61
  %97 = bitcast { i64, i8* }* %96 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %95, i8* %97)
  %98 = load %nyx_string*, %nyx_string** %92
  %99 = ptrtoint %nyx_string* %98 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %95, i64 %99, i64 2)
  %100 = call { i64, i8* }* @make_astnode(%nyx_string* %94, { i64, i8* }* %95)
  ret { i64, i8* }* %100
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
  %23 = getelementptr [4 x i8], [4 x i8]* @.str888, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str888.c, i8* %23)
  %25 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %24)
  %26 = getelementptr [3 x i8], [3 x i8]* @.str889, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str889.c, i8* %26)
  %28 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %27)
  br i1 %28, label %then0, label %else1
then0:
  %29 = call { i64, i8* }* @parse__parse_function(%SharedEnv_parse* %env.param)
  %30 = alloca { i64, i8* }*
  store { i64, i8* }* %29, { i64, i8* }** %30
  %31 = getelementptr [7 x i8], [7 x i8]* @.str890, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str890.c, i8* %31)
  %33 = call { i64, i8* }* @nyx_array_new_ptr()
  %34 = load { i64, i8* }*, { i64, i8* }** %30
  %35 = bitcast { i64, i8* }* %34 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %33, i8* %35)
  %36 = call { i64, i8* }* @make_astnode(%nyx_string* %32, { i64, i8* }* %33)
  ret { i64, i8* }* %36
else1:
  br label %merge2
merge2:
  %37 = getelementptr [7 x i8], [7 x i8]* @.str891, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str891.c, i8* %37)
  %39 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %38)
  br i1 %39, label %then3, label %else4
then3:
  %40 = call { i64, i8* }* @parse__parse_struct(%SharedEnv_parse* %env.param)
  %41 = alloca { i64, i8* }*
  store { i64, i8* }* %40, { i64, i8* }** %41
  %42 = getelementptr [7 x i8], [7 x i8]* @.str892, i32 0, i32 0
  %43 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str892.c, i8* %42)
  %44 = call { i64, i8* }* @nyx_array_new_ptr()
  %45 = load { i64, i8* }*, { i64, i8* }** %41
  %46 = bitcast { i64, i8* }* %45 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %44, i8* %46)
  %47 = call { i64, i8* }* @make_astnode(%nyx_string* %43, { i64, i8* }* %44)
  ret { i64, i8* }* %47
else4:
  br label %merge5
merge5:
  %48 = getelementptr [5 x i8], [5 x i8]* @.str893, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str893.c, i8* %48)
  %50 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %49)
  br i1 %50, label %then6, label %else7
then6:
  %51 = call { i64, i8* }* @parse__parse_enum(%SharedEnv_parse* %env.param)
  %52 = alloca { i64, i8* }*
  store { i64, i8* }* %51, { i64, i8* }** %52
  %53 = getelementptr [7 x i8], [7 x i8]* @.str894, i32 0, i32 0
  %54 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str894.c, i8* %53)
  %55 = call { i64, i8* }* @nyx_array_new_ptr()
  %56 = load { i64, i8* }*, { i64, i8* }** %52
  %57 = bitcast { i64, i8* }* %56 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %55, i8* %57)
  %58 = call { i64, i8* }* @make_astnode(%nyx_string* %54, { i64, i8* }* %55)
  ret { i64, i8* }* %58
else7:
  br label %merge8
merge8:
  %59 = getelementptr [6 x i8], [6 x i8]* @.str895, i32 0, i32 0
  %60 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str895.c, i8* %59)
  %61 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %60)
  br i1 %61, label %then9, label %else10
then9:
  %62 = call { i64, i8* }* @parse__parse_trait(%SharedEnv_parse* %env.param)
  %63 = alloca { i64, i8* }*
  store { i64, i8* }* %62, { i64, i8* }** %63
  %64 = getelementptr [7 x i8], [7 x i8]* @.str896, i32 0, i32 0
  %65 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str896.c, i8* %64)
  %66 = call { i64, i8* }* @nyx_array_new_ptr()
  %67 = load { i64, i8* }*, { i64, i8* }** %63
  %68 = bitcast { i64, i8* }* %67 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %66, i8* %68)
  %69 = call { i64, i8* }* @make_astnode(%nyx_string* %65, { i64, i8* }* %66)
  ret { i64, i8* }* %69
else10:
  br label %merge11
merge11:
  %70 = getelementptr [11 x i8], [11 x i8]* @.str897, i32 0, i32 0
  %71 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str897.c, i8* %70)
  %72 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %71)
  br i1 %72, label %then12, label %else13
then12:
  %73 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %74 = call %nyx_string* @get_token_value(%Token %73)
  %75 = getelementptr [5 x i8], [5 x i8]* @.str898, i32 0, i32 0
  %76 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str898.c, i8* %75)
  %77 = call i1 @nyx_string_equals(%nyx_string* %74, %nyx_string* %76)
  br i1 %77, label %then15, label %else16
then15:
  %78 = call { i64, i8* }* @parse__parse_type_alias(%SharedEnv_parse* %env.param)
  %79 = alloca { i64, i8* }*
  store { i64, i8* }* %78, { i64, i8* }** %79
  %80 = getelementptr [7 x i8], [7 x i8]* @.str899, i32 0, i32 0
  %81 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str899.c, i8* %80)
  %82 = call { i64, i8* }* @nyx_array_new_ptr()
  %83 = load { i64, i8* }*, { i64, i8* }** %79
  %84 = bitcast { i64, i8* }* %83 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %82, i8* %84)
  %85 = call { i64, i8* }* @make_astnode(%nyx_string* %81, { i64, i8* }* %82)
  ret { i64, i8* }* %85
else16:
  br label %merge17
merge17:
  br label %merge14
else13:
  br label %merge14
merge14:
  %86 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %87 = alloca %Token
  store %Token %86, %Token* %87
  %88 = getelementptr [8 x i8], [8 x i8]* @.str900, i32 0, i32 0
  %89 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str900.c, i8* %88)
  %90 = load %Token, %Token* %87
  %91 = call i64 @get_token_line(%Token %90)
  %92 = load %Token, %Token* %87
  %93 = call i64 @get_token_column(%Token %92)
  %94 = getelementptr [55 x i8], [55 x i8]* @.str901, i32 0, i32 0
  %95 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str901.c, i8* %94)
  %96 = getelementptr [53 x i8], [53 x i8]* @.str902, i32 0, i32 0
  %97 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str902.c, i8* %96)
  %98 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %95, %nyx_string* %97)
  %99 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %89, i64 %91, i64 %93, %nyx_string* %98)
  %100 = getelementptr [6 x i8], [6 x i8]* @.str903, i32 0, i32 0
  %101 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str903.c, i8* %100)
  %102 = call { i64, i8* }* @nyx_array_new_ptr()
  %103 = call { i64, i8* }* @make_astnode(%nyx_string* %101, { i64, i8* }* %102)
  ret { i64, i8* }* %103
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
  %23 = getelementptr [7 x i8], [7 x i8]* @.str904, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str904.c, i8* %23)
  %25 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %24)
  %26 = getelementptr [11 x i8], [11 x i8]* @.str905, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str905.c, i8* %26)
  %28 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %27)
  %29 = alloca %Token
  store %Token %28, %Token* %29
  %30 = load %Token, %Token* %29
  %31 = call %nyx_string* @get_token_value(%Token %30)
  %32 = alloca %nyx_string*
  store %nyx_string* %31, %nyx_string** %32
  %33 = getelementptr [7 x i8], [7 x i8]* @.str906, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str906.c, i8* %33)
  %35 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %34)
  %36 = getelementptr [13 x i8], [13 x i8]* @.str907, i32 0, i32 0
  %37 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str907.c, i8* %36)
  %38 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %37)
  %39 = call { i64, i8* }* @nyx_array_new_ptr()
  %40 = alloca { i64, i8* }*
  store { i64, i8* }* %39, { i64, i8* }** %40
  %41 = alloca i1
  store i1 0, i1* %41
  %42 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %43 = load i1, i1* %41
  %44 = xor i1 %43, true
  br i1 %44, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %42)
  %45 = getelementptr [14 x i8], [14 x i8]* @.str908, i32 0, i32 0
  %46 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str908.c, i8* %45)
  %47 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %46)
  br i1 %47, label %then3, label %else4
then3:
  store i1 1, i1* %41
  br label %merge5
else4:
  %48 = getelementptr [11 x i8], [11 x i8]* @.str909, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str909.c, i8* %48)
  %50 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %49)
  %51 = alloca %Token
  store %Token %50, %Token* %51
  %52 = load %Token, %Token* %51
  %53 = call %nyx_string* @get_token_value(%Token %52)
  %54 = alloca %nyx_string*
  store %nyx_string* %53, %nyx_string** %54
  %55 = load { i64, i8* }*, { i64, i8* }** %40
  %56 = load %nyx_string*, %nyx_string** %54
  %57 = ptrtoint %nyx_string* %56 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %55, i64 %57, i64 2)
  %58 = getelementptr [6 x i8], [6 x i8]* @.str910, i32 0, i32 0
  %59 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str910.c, i8* %58)
  %60 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %59)
  br i1 %60, label %then6, label %else7
then6:
  %61 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge8
else7:
  br label %merge8
merge8:
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %62 = getelementptr [14 x i8], [14 x i8]* @.str911, i32 0, i32 0
  %63 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str911.c, i8* %62)
  %64 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %63)
  %65 = getelementptr [12 x i8], [12 x i8]* @.str912, i32 0, i32 0
  %66 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str912.c, i8* %65)
  %67 = call { i64, i8* }* @nyx_array_new_ptr()
  %68 = load %nyx_string*, %nyx_string** %32
  %69 = ptrtoint %nyx_string* %68 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %67, i64 %69, i64 2)
  %70 = load { i64, i8* }*, { i64, i8* }** %40
  %71 = bitcast { i64, i8* }* %70 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %67, i8* %71)
  %72 = call { i64, i8* }* @make_astnode(%nyx_string* %66, { i64, i8* }* %67)
  ret { i64, i8* }* %72
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
  %23 = getelementptr [6 x i8], [6 x i8]* @.str913, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str913.c, i8* %23)
  %25 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %24)
  %26 = getelementptr [11 x i8], [11 x i8]* @.str914, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str914.c, i8* %26)
  %28 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %27)
  %29 = alloca %Token
  store %Token %28, %Token* %29
  %30 = load %Token, %Token* %29
  %31 = call %nyx_string* @get_token_value(%Token %30)
  %32 = alloca %nyx_string*
  store %nyx_string* %31, %nyx_string** %32
  %33 = getelementptr [5 x i8], [5 x i8]* @.str915, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str915.c, i8* %33)
  %35 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %34)
  br i1 %35, label %then0, label %else1
then0:
  %36 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %37 = alloca i1
  store i1 0, i1* %37
  %38 = call i8* @llvm.stacksave()
  br label %while_cond3
while_cond3:
  %39 = load i1, i1* %37
  %40 = xor i1 %39, true
  br i1 %40, label %while_body4, label %while_end5
while_body4:
  call void @llvm.stackrestore(i8* %38)
  %41 = getelementptr [8 x i8], [8 x i8]* @.str916, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str916.c, i8* %41)
  %43 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %42)
  br i1 %43, label %then6, label %else7
then6:
  %44 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %37
  br label %merge8
else7:
  %45 = getelementptr [9 x i8], [9 x i8]* @.str917, i32 0, i32 0
  %46 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str917.c, i8* %45)
  %47 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %46)
  br i1 %47, label %then9, label %else10
then9:
  %48 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge11
else10:
  %49 = getelementptr [11 x i8], [11 x i8]* @.str918, i32 0, i32 0
  %50 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str918.c, i8* %49)
  %51 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %50)
  br i1 %51, label %then12, label %else13
then12:
  %52 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge14
else13:
  %53 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge14
merge14:
  br label %merge11
merge11:
  %54 = getelementptr [6 x i8], [6 x i8]* @.str919, i32 0, i32 0
  %55 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str919.c, i8* %54)
  %56 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %55)
  br i1 %56, label %then15, label %else16
then15:
  %57 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge17
else16:
  %58 = getelementptr [8 x i8], [8 x i8]* @.str920, i32 0, i32 0
  %59 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str920.c, i8* %58)
  %60 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %59)
  %61 = xor i1 %60, true
  br i1 %61, label %then18, label %else19
then18:
  store i1 1, i1* %37
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
  %62 = call { i64, i8* }* @nyx_array_new_ptr()
  %63 = alloca { i64, i8* }*
  store { i64, i8* }* %62, { i64, i8* }** %63
  %64 = getelementptr [6 x i8], [6 x i8]* @.str921, i32 0, i32 0
  %65 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str921.c, i8* %64)
  %66 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %65)
  br i1 %66, label %then21, label %else22
then21:
  %67 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %68 = alloca i1
  store i1 1, i1* %68
  %69 = call i8* @llvm.stacksave()
  br label %while_cond24
while_cond24:
  %70 = load i1, i1* %68
  br i1 %70, label %while_body25, label %while_end26
while_body25:
  call void @llvm.stackrestore(i8* %69)
  %71 = getelementptr [11 x i8], [11 x i8]* @.str922, i32 0, i32 0
  %72 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str922.c, i8* %71)
  %73 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %72)
  %74 = alloca %Token
  store %Token %73, %Token* %74
  %75 = load %Token, %Token* %74
  %76 = call %nyx_string* @get_token_value(%Token %75)
  %77 = alloca %nyx_string*
  store %nyx_string* %76, %nyx_string** %77
  %78 = load { i64, i8* }*, { i64, i8* }** %63
  %79 = load %nyx_string*, %nyx_string** %77
  %80 = ptrtoint %nyx_string* %79 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %78, i64 %80, i64 2)
  %81 = getelementptr [5 x i8], [5 x i8]* @.str923, i32 0, i32 0
  %82 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str923.c, i8* %81)
  %83 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %82)
  br i1 %83, label %then27, label %else28
then27:
  %84 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge29
else28:
  store i1 0, i1* %68
  br label %merge29
merge29:
  br label %while_cond24
while_end26:
  br label %merge23
else22:
  br label %merge23
merge23:
  %85 = getelementptr [11 x i8], [11 x i8]* @.str924, i32 0, i32 0
  %86 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str924.c, i8* %85)
  %87 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %86)
  %88 = call { i64, i8* }* @nyx_array_new_ptr()
  %89 = alloca { i64, i8* }*
  store { i64, i8* }* %88, { i64, i8* }** %89
  %90 = alloca i1
  store i1 0, i1* %90
  %91 = call i8* @llvm.stacksave()
  br label %while_cond30
while_cond30:
  %92 = load i1, i1* %90
  %93 = xor i1 %92, true
  br i1 %93, label %while_body31, label %while_end32
while_body31:
  call void @llvm.stackrestore(i8* %91)
  %94 = getelementptr [12 x i8], [12 x i8]* @.str925, i32 0, i32 0
  %95 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str925.c, i8* %94)
  %96 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %95)
  br i1 %96, label %then33, label %else34
then33:
  %97 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %90
  br label %merge35
else34:
  %98 = alloca i1
  store i1 0, i1* %98
  %99 = getelementptr [11 x i8], [11 x i8]* @.str926, i32 0, i32 0
  %100 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str926.c, i8* %99)
  %101 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %100)
  br i1 %101, label %then36, label %else37
then36:
  %102 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %103 = alloca %Token
  store %Token %102, %Token* %103
  %104 = load %Token, %Token* %103
  %105 = call %nyx_string* @get_token_value(%Token %104)
  %106 = getelementptr [5 x i8], [5 x i8]* @.str927, i32 0, i32 0
  %107 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str927.c, i8* %106)
  %108 = call i1 @nyx_string_equals(%nyx_string* %105, %nyx_string* %107)
  br i1 %108, label %then39, label %else40
then39:
  %109 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %110 = getelementptr [11 x i8], [11 x i8]* @.str928, i32 0, i32 0
  %111 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str928.c, i8* %110)
  %112 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %111)
  %113 = alloca %Token
  store %Token %112, %Token* %113
  %114 = load %Token, %Token* %113
  %115 = call %nyx_string* @get_token_value(%Token %114)
  %116 = alloca %nyx_string*
  store %nyx_string* %115, %nyx_string** %116
  %117 = call { i64, i8* }* @nyx_array_new_ptr()
  %118 = alloca { i64, i8* }*
  store { i64, i8* }* %117, { i64, i8* }** %118
  %119 = getelementptr [5 x i8], [5 x i8]* @.str929, i32 0, i32 0
  %120 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str929.c, i8* %119)
  %121 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %120)
  br i1 %121, label %then42, label %else43
then42:
  %122 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %123 = alloca i1
  store i1 0, i1* %123
  %124 = call i8* @llvm.stacksave()
  br label %while_cond45
while_cond45:
  %125 = load i1, i1* %123
  %126 = xor i1 %125, true
  br i1 %126, label %while_body46, label %while_end47
while_body46:
  call void @llvm.stackrestore(i8* %124)
  %127 = getelementptr [8 x i8], [8 x i8]* @.str930, i32 0, i32 0
  %128 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str930.c, i8* %127)
  %129 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %128)
  br i1 %129, label %then48, label %else49
then48:
  %130 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %123
  br label %merge50
else49:
  %131 = getelementptr [11 x i8], [11 x i8]* @.str931, i32 0, i32 0
  %132 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str931.c, i8* %131)
  %133 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %132)
  br i1 %133, label %then51, label %else52
then51:
  %134 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %135 = alloca %Token
  store %Token %134, %Token* %135
  %136 = load { i64, i8* }*, { i64, i8* }** %118
  %137 = load %Token, %Token* %135
  %138 = call %nyx_string* @get_token_value(%Token %137)
  %139 = ptrtoint %nyx_string* %138 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %136, i64 %139, i64 2)
  br label %merge53
else52:
  %140 = getelementptr [9 x i8], [9 x i8]* @.str932, i32 0, i32 0
  %141 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str932.c, i8* %140)
  %142 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %141)
  br i1 %142, label %then54, label %else55
then54:
  %143 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %144 = alloca %Token
  store %Token %143, %Token* %144
  %145 = load { i64, i8* }*, { i64, i8* }** %118
  %146 = load %Token, %Token* %144
  %147 = call %nyx_string* @get_token_value(%Token %146)
  %148 = ptrtoint %nyx_string* %147 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %145, i64 %148, i64 2)
  br label %merge56
else55:
  %149 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge56
merge56:
  br label %merge53
merge53:
  %150 = getelementptr [6 x i8], [6 x i8]* @.str933, i32 0, i32 0
  %151 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str933.c, i8* %150)
  %152 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %151)
  br i1 %152, label %then57, label %else58
then57:
  %153 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
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
  %154 = load { i64, i8* }*, { i64, i8* }** %89
  %155 = call { i64, i8* }* @nyx_array_new_ptr()
  %156 = getelementptr [15 x i8], [15 x i8]* @.str934, i32 0, i32 0
  %157 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str934.c, i8* %156)
  %158 = ptrtoint %nyx_string* %157 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %155, i64 %158, i64 2)
  %159 = load %nyx_string*, %nyx_string** %116
  %160 = ptrtoint %nyx_string* %159 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %155, i64 %160, i64 2)
  %161 = load { i64, i8* }*, { i64, i8* }** %118
  %162 = bitcast { i64, i8* }* %161 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %155, i8* %162)
  %163 = ptrtoint { i64, i8* }* %155 to i64
  call void @nyx_array_push({ i64, i8* }* %154, i64 %163)
  store i1 1, i1* %98
  br label %merge41
else40:
  br label %merge41
merge41:
  br label %merge38
else37:
  br label %merge38
merge38:
  %164 = load i1, i1* %98
  %165 = xor i1 %164, true
  br i1 %165, label %then60, label %else61
then60:
  %166 = getelementptr [3 x i8], [3 x i8]* @.str935, i32 0, i32 0
  %167 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str935.c, i8* %166)
  %168 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %167)
  %169 = getelementptr [11 x i8], [11 x i8]* @.str936, i32 0, i32 0
  %170 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str936.c, i8* %169)
  %171 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %170)
  %172 = alloca %Token
  store %Token %171, %Token* %172
  %173 = load %Token, %Token* %172
  %174 = call %nyx_string* @get_token_value(%Token %173)
  %175 = alloca %nyx_string*
  store %nyx_string* %174, %nyx_string** %175
  %176 = getelementptr [5 x i8], [5 x i8]* @.str937, i32 0, i32 0
  %177 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str937.c, i8* %176)
  %178 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %177)
  br i1 %178, label %then63, label %else64
then63:
  %179 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %180 = alloca i1
  store i1 0, i1* %180
  %181 = call i8* @llvm.stacksave()
  br label %while_cond66
while_cond66:
  %182 = load i1, i1* %180
  %183 = xor i1 %182, true
  br i1 %183, label %while_body67, label %while_end68
while_body67:
  call void @llvm.stackrestore(i8* %181)
  %184 = getelementptr [8 x i8], [8 x i8]* @.str938, i32 0, i32 0
  %185 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str938.c, i8* %184)
  %186 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %185)
  br i1 %186, label %then69, label %else70
then69:
  %187 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %180
  br label %merge71
else70:
  %188 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge71
merge71:
  br label %while_cond66
while_end68:
  br label %merge65
else64:
  br label %merge65
merge65:
  %189 = getelementptr [11 x i8], [11 x i8]* @.str939, i32 0, i32 0
  %190 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str939.c, i8* %189)
  %191 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %190)
  %192 = call { i64, i8* }* @nyx_array_new_ptr()
  %193 = alloca { i64, i8* }*
  store { i64, i8* }* %192, { i64, i8* }** %193
  %194 = alloca i1
  store i1 0, i1* %194
  %195 = call i8* @llvm.stacksave()
  br label %while_cond72
while_cond72:
  %196 = load i1, i1* %194
  %197 = xor i1 %196, true
  br i1 %197, label %while_body73, label %while_end74
while_body73:
  call void @llvm.stackrestore(i8* %195)
  %198 = getelementptr [12 x i8], [12 x i8]* @.str940, i32 0, i32 0
  %199 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str940.c, i8* %198)
  %200 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %199)
  br i1 %200, label %then75, label %else76
then75:
  %201 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %194
  br label %merge77
else76:
  %202 = load { i64, i8* }*, { i64, i8* }** %193
  %203 = call i64 @nyx_array_length({ i64, i8* }* %202)
  %204 = icmp sgt i64 %203, 0
  br i1 %204, label %then78, label %else79
then78:
  %205 = getelementptr [6 x i8], [6 x i8]* @.str941, i32 0, i32 0
  %206 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str941.c, i8* %205)
  %207 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %206)
  br label %merge80
else79:
  br label %merge80
merge80:
  %208 = getelementptr [11 x i8], [11 x i8]* @.str942, i32 0, i32 0
  %209 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str942.c, i8* %208)
  %210 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %209)
  %211 = alloca %Token
  store %Token %210, %Token* %211
  %212 = load %Token, %Token* %211
  %213 = call %nyx_string* @get_token_value(%Token %212)
  %214 = alloca %nyx_string*
  store %nyx_string* %213, %nyx_string** %214
  %215 = getelementptr [1 x i8], [1 x i8]* @.str943, i32 0, i32 0
  %216 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str943.c, i8* %215)
  %217 = alloca %nyx_string*
  store %nyx_string* %216, %nyx_string** %217
  %218 = getelementptr [6 x i8], [6 x i8]* @.str944, i32 0, i32 0
  %219 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str944.c, i8* %218)
  %220 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %219)
  br i1 %220, label %then81, label %else82
then81:
  %221 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %222 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %222, %nyx_string** %217
  br label %merge83
else82:
  br label %merge83
merge83:
  %223 = load { i64, i8* }*, { i64, i8* }** %193
  %224 = call { i64, i8* }* @nyx_array_new_ptr()
  %225 = load %nyx_string*, %nyx_string** %214
  %226 = ptrtoint %nyx_string* %225 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %224, i64 %226, i64 2)
  %227 = load %nyx_string*, %nyx_string** %217
  %228 = ptrtoint %nyx_string* %227 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %224, i64 %228, i64 2)
  %229 = ptrtoint { i64, i8* }* %224 to i64
  call void @nyx_array_push({ i64, i8* }* %223, i64 %229)
  br label %merge77
merge77:
  br label %while_cond72
while_end74:
  %230 = getelementptr [1 x i8], [1 x i8]* @.str945, i32 0, i32 0
  %231 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str945.c, i8* %230)
  %232 = alloca %nyx_string*
  store %nyx_string* %231, %nyx_string** %232
  %233 = getelementptr [6 x i8], [6 x i8]* @.str946, i32 0, i32 0
  %234 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str946.c, i8* %233)
  %235 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %234)
  br i1 %235, label %then84, label %else85
then84:
  %236 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %237 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %237, %nyx_string** %232
  br label %merge86
else85:
  br label %merge86
merge86:
  %238 = getelementptr [11 x i8], [11 x i8]* @.str947, i32 0, i32 0
  %239 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str947.c, i8* %238)
  %240 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %239)
  br i1 %240, label %then87, label %else88
then87:
  %241 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %242 = alloca { i64, i8* }*
  store { i64, i8* }* %241, { i64, i8* }** %242
  %243 = load { i64, i8* }*, { i64, i8* }** %89
  %244 = call { i64, i8* }* @nyx_array_new_ptr()
  %245 = load %nyx_string*, %nyx_string** %175
  %246 = ptrtoint %nyx_string* %245 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %244, i64 %246, i64 2)
  %247 = load { i64, i8* }*, { i64, i8* }** %193
  %248 = bitcast { i64, i8* }* %247 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %244, i8* %248)
  %249 = load %nyx_string*, %nyx_string** %232
  %250 = ptrtoint %nyx_string* %249 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %244, i64 %250, i64 2)
  %251 = load { i64, i8* }*, { i64, i8* }** %242
  %252 = bitcast { i64, i8* }* %251 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %244, i8* %252)
  %253 = ptrtoint { i64, i8* }* %244 to i64
  call void @nyx_array_push({ i64, i8* }* %243, i64 %253)
  br label %merge89
else88:
  %254 = load { i64, i8* }*, { i64, i8* }** %89
  %255 = call { i64, i8* }* @nyx_array_new_ptr()
  %256 = load %nyx_string*, %nyx_string** %175
  %257 = ptrtoint %nyx_string* %256 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %255, i64 %257, i64 2)
  %258 = load { i64, i8* }*, { i64, i8* }** %193
  %259 = bitcast { i64, i8* }* %258 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %255, i8* %259)
  %260 = load %nyx_string*, %nyx_string** %232
  %261 = ptrtoint %nyx_string* %260 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %255, i64 %261, i64 2)
  %262 = ptrtoint { i64, i8* }* %255 to i64
  call void @nyx_array_push({ i64, i8* }* %254, i64 %262)
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
  %263 = getelementptr [10 x i8], [10 x i8]* @.str948, i32 0, i32 0
  %264 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str948.c, i8* %263)
  %265 = call { i64, i8* }* @nyx_array_new_ptr()
  %266 = load %nyx_string*, %nyx_string** %32
  %267 = ptrtoint %nyx_string* %266 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %265, i64 %267, i64 2)
  %268 = load { i64, i8* }*, { i64, i8* }** %63
  %269 = bitcast { i64, i8* }* %268 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %265, i8* %269)
  %270 = load { i64, i8* }*, { i64, i8* }** %89
  %271 = bitcast { i64, i8* }* %270 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %265, i8* %271)
  %272 = call { i64, i8* }* @make_astnode(%nyx_string* %264, { i64, i8* }* %265)
  ret { i64, i8* }* %272
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
  %23 = getelementptr [5 x i8], [5 x i8]* @.str949, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str949.c, i8* %23)
  %25 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %24)
  %26 = call { i64, i8* }* @nyx_array_new_ptr()
  %27 = alloca { i64, i8* }*
  store { i64, i8* }* %26, { i64, i8* }** %27
  %28 = getelementptr [5 x i8], [5 x i8]* @.str950, i32 0, i32 0
  %29 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str950.c, i8* %28)
  %30 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %29)
  br i1 %30, label %then0, label %else1
then0:
  %31 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %32 = getelementptr [9 x i8], [9 x i8]* @.str951, i32 0, i32 0
  %33 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str951.c, i8* %32)
  %34 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %33)
  br i1 %34, label %then3, label %else4
then3:
  %35 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %36 = alloca %Token
  store %Token %35, %Token* %36
  %37 = load { i64, i8* }*, { i64, i8* }** %27
  %38 = load %Token, %Token* %36
  %39 = call %nyx_string* @get_token_value(%Token %38)
  %40 = ptrtoint %nyx_string* %39 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %37, i64 %40, i64 2)
  br label %merge5
else4:
  %41 = getelementptr [11 x i8], [11 x i8]* @.str952, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str952.c, i8* %41)
  %43 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %42)
  %44 = alloca %Token
  store %Token %43, %Token* %44
  %45 = load %Token, %Token* %44
  %46 = call %nyx_string* @get_token_value(%Token %45)
  %47 = alloca %nyx_string*
  store %nyx_string* %46, %nyx_string** %47
  %48 = getelementptr [6 x i8], [6 x i8]* @.str953, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str953.c, i8* %48)
  %50 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %49)
  br i1 %50, label %then6, label %else7
then6:
  %51 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %52 = getelementptr [11 x i8], [11 x i8]* @.str954, i32 0, i32 0
  %53 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str954.c, i8* %52)
  %54 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %53)
  %55 = alloca %Token
  store %Token %54, %Token* %55
  %56 = load %Token, %Token* %55
  %57 = call %nyx_string* @get_token_value(%Token %56)
  %58 = alloca %nyx_string*
  store %nyx_string* %57, %nyx_string** %58
  %59 = call i8* @llvm.stacksave()
  br label %while_cond9
while_cond9:
  %60 = getelementptr [5 x i8], [5 x i8]* @.str955, i32 0, i32 0
  %61 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str955.c, i8* %60)
  %62 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %61)
  br i1 %62, label %while_body10, label %while_end11
while_body10:
  call void @llvm.stackrestore(i8* %59)
  %63 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %64 = getelementptr [11 x i8], [11 x i8]* @.str956, i32 0, i32 0
  %65 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str956.c, i8* %64)
  %66 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %65)
  %67 = alloca %Token
  store %Token %66, %Token* %67
  %68 = load %nyx_string*, %nyx_string** %58
  %69 = getelementptr [2 x i8], [2 x i8]* @.str957, i32 0, i32 0
  %70 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str957.c, i8* %69)
  %71 = call %nyx_string* @nyx_string_concat(%nyx_string* %68, %nyx_string* %70)
  %72 = load %Token, %Token* %67
  %73 = call %nyx_string* @get_token_value(%Token %72)
  %74 = call %nyx_string* @nyx_string_concat(%nyx_string* %71, %nyx_string* %73)
  store %nyx_string* %74, %nyx_string** %58
  br label %while_cond9
while_end11:
  %75 = load %nyx_string*, %nyx_string** %47
  %76 = getelementptr [2 x i8], [2 x i8]* @.str958, i32 0, i32 0
  %77 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str958.c, i8* %76)
  %78 = call %nyx_string* @nyx_string_concat(%nyx_string* %75, %nyx_string* %77)
  %79 = load %nyx_string*, %nyx_string** %58
  %80 = call %nyx_string* @nyx_string_concat(%nyx_string* %78, %nyx_string* %79)
  store %nyx_string* %80, %nyx_string** %47
  br label %merge8
else7:
  br label %merge8
merge8:
  %81 = load { i64, i8* }*, { i64, i8* }** %27
  %82 = load %nyx_string*, %nyx_string** %47
  %83 = ptrtoint %nyx_string* %82 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %81, i64 %83, i64 2)
  br label %merge5
merge5:
  %84 = alloca i1
  store i1 0, i1* %84
  %85 = call i8* @llvm.stacksave()
  br label %while_cond12
while_cond12:
  %86 = load i1, i1* %84
  %87 = xor i1 %86, true
  br i1 %87, label %while_body13, label %while_end14
while_body13:
  call void @llvm.stackrestore(i8* %85)
  %88 = getelementptr [6 x i8], [6 x i8]* @.str959, i32 0, i32 0
  %89 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str959.c, i8* %88)
  %90 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %89)
  br i1 %90, label %then15, label %else16
then15:
  %91 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %92 = getelementptr [9 x i8], [9 x i8]* @.str960, i32 0, i32 0
  %93 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str960.c, i8* %92)
  %94 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %93)
  br i1 %94, label %then18, label %else19
then18:
  %95 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %96 = alloca %Token
  store %Token %95, %Token* %96
  %97 = load { i64, i8* }*, { i64, i8* }** %27
  %98 = load %Token, %Token* %96
  %99 = call %nyx_string* @get_token_value(%Token %98)
  %100 = ptrtoint %nyx_string* %99 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %97, i64 %100, i64 2)
  br label %merge20
else19:
  %101 = getelementptr [11 x i8], [11 x i8]* @.str961, i32 0, i32 0
  %102 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str961.c, i8* %101)
  %103 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %102)
  %104 = alloca %Token
  store %Token %103, %Token* %104
  %105 = load %Token, %Token* %104
  %106 = call %nyx_string* @get_token_value(%Token %105)
  %107 = alloca %nyx_string*
  store %nyx_string* %106, %nyx_string** %107
  %108 = getelementptr [6 x i8], [6 x i8]* @.str962, i32 0, i32 0
  %109 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str962.c, i8* %108)
  %110 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %109)
  br i1 %110, label %then21, label %else22
then21:
  %111 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %112 = getelementptr [11 x i8], [11 x i8]* @.str963, i32 0, i32 0
  %113 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str963.c, i8* %112)
  %114 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %113)
  %115 = alloca %Token
  store %Token %114, %Token* %115
  %116 = load %Token, %Token* %115
  %117 = call %nyx_string* @get_token_value(%Token %116)
  %118 = alloca %nyx_string*
  store %nyx_string* %117, %nyx_string** %118
  %119 = call i8* @llvm.stacksave()
  br label %while_cond24
while_cond24:
  %120 = getelementptr [5 x i8], [5 x i8]* @.str964, i32 0, i32 0
  %121 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str964.c, i8* %120)
  %122 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %121)
  br i1 %122, label %while_body25, label %while_end26
while_body25:
  call void @llvm.stackrestore(i8* %119)
  %123 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %124 = getelementptr [11 x i8], [11 x i8]* @.str965, i32 0, i32 0
  %125 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str965.c, i8* %124)
  %126 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %125)
  %127 = alloca %Token
  store %Token %126, %Token* %127
  %128 = load %nyx_string*, %nyx_string** %118
  %129 = getelementptr [2 x i8], [2 x i8]* @.str966, i32 0, i32 0
  %130 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str966.c, i8* %129)
  %131 = call %nyx_string* @nyx_string_concat(%nyx_string* %128, %nyx_string* %130)
  %132 = load %Token, %Token* %127
  %133 = call %nyx_string* @get_token_value(%Token %132)
  %134 = call %nyx_string* @nyx_string_concat(%nyx_string* %131, %nyx_string* %133)
  store %nyx_string* %134, %nyx_string** %118
  br label %while_cond24
while_end26:
  %135 = load %nyx_string*, %nyx_string** %107
  %136 = getelementptr [2 x i8], [2 x i8]* @.str967, i32 0, i32 0
  %137 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str967.c, i8* %136)
  %138 = call %nyx_string* @nyx_string_concat(%nyx_string* %135, %nyx_string* %137)
  %139 = load %nyx_string*, %nyx_string** %118
  %140 = call %nyx_string* @nyx_string_concat(%nyx_string* %138, %nyx_string* %139)
  store %nyx_string* %140, %nyx_string** %107
  br label %merge23
else22:
  br label %merge23
merge23:
  %141 = load { i64, i8* }*, { i64, i8* }** %27
  %142 = load %nyx_string*, %nyx_string** %107
  %143 = ptrtoint %nyx_string* %142 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %141, i64 %143, i64 2)
  br label %merge20
merge20:
  br label %merge17
else16:
  store i1 1, i1* %84
  br label %merge17
merge17:
  br label %while_cond12
while_end14:
  %144 = getelementptr [8 x i8], [8 x i8]* @.str968, i32 0, i32 0
  %145 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str968.c, i8* %144)
  %146 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %145)
  br label %merge2
else1:
  br label %merge2
merge2:
  %147 = getelementptr [11 x i8], [11 x i8]* @.str969, i32 0, i32 0
  %148 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str969.c, i8* %147)
  %149 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %148)
  %150 = alloca %Token
  store %Token %149, %Token* %150
  %151 = load %Token, %Token* %150
  %152 = call %nyx_string* @get_token_value(%Token %151)
  %153 = alloca %nyx_string*
  store %nyx_string* %152, %nyx_string** %153
  %154 = getelementptr [4 x i8], [4 x i8]* @.str970, i32 0, i32 0
  %155 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str970.c, i8* %154)
  %156 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %155)
  br i1 %156, label %then27, label %else28
then27:
  %157 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %158 = getelementptr [11 x i8], [11 x i8]* @.str971, i32 0, i32 0
  %159 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str971.c, i8* %158)
  %160 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %159)
  %161 = alloca %Token
  store %Token %160, %Token* %161
  %162 = load %Token, %Token* %161
  %163 = call %nyx_string* @get_token_value(%Token %162)
  %164 = alloca %nyx_string*
  store %nyx_string* %163, %nyx_string** %164
  %165 = getelementptr [11 x i8], [11 x i8]* @.str972, i32 0, i32 0
  %166 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str972.c, i8* %165)
  %167 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %166)
  %168 = call { i64, i8* }* @nyx_array_new_ptr()
  %169 = alloca { i64, i8* }*
  store { i64, i8* }* %168, { i64, i8* }** %169
  %170 = call { i64, i8* }* @nyx_array_new_ptr()
  %171 = alloca { i64, i8* }*
  store { i64, i8* }* %170, { i64, i8* }** %171
  %172 = alloca i1
  store i1 0, i1* %172
  %173 = call i8* @llvm.stacksave()
  br label %while_cond30
while_cond30:
  %174 = load i1, i1* %172
  %175 = xor i1 %174, true
  br i1 %175, label %while_body31, label %while_end32
while_body31:
  call void @llvm.stackrestore(i8* %173)
  %176 = getelementptr [12 x i8], [12 x i8]* @.str973, i32 0, i32 0
  %177 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str973.c, i8* %176)
  %178 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %177)
  br i1 %178, label %then33, label %else34
then33:
  %179 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %172
  br label %merge35
else34:
  %180 = alloca i1
  store i1 0, i1* %180
  %181 = getelementptr [11 x i8], [11 x i8]* @.str974, i32 0, i32 0
  %182 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str974.c, i8* %181)
  %183 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %182)
  br i1 %183, label %then36, label %else37
then36:
  %184 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %185 = alloca %Token
  store %Token %184, %Token* %185
  %186 = load %Token, %Token* %185
  %187 = call %nyx_string* @get_token_value(%Token %186)
  %188 = getelementptr [5 x i8], [5 x i8]* @.str975, i32 0, i32 0
  %189 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str975.c, i8* %188)
  %190 = call i1 @nyx_string_equals(%nyx_string* %187, %nyx_string* %189)
  br i1 %190, label %then39, label %else40
then39:
  %191 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %192 = getelementptr [11 x i8], [11 x i8]* @.str976, i32 0, i32 0
  %193 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str976.c, i8* %192)
  %194 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %193)
  %195 = alloca %Token
  store %Token %194, %Token* %195
  %196 = load %Token, %Token* %195
  %197 = call %nyx_string* @get_token_value(%Token %196)
  %198 = alloca %nyx_string*
  store %nyx_string* %197, %nyx_string** %198
  %199 = getelementptr [5 x i8], [5 x i8]* @.str977, i32 0, i32 0
  %200 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str977.c, i8* %199)
  %201 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %200)
  br i1 %201, label %then42, label %else43
then42:
  %202 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %203 = alloca i1
  store i1 0, i1* %203
  %204 = call i8* @llvm.stacksave()
  br label %while_cond45
while_cond45:
  %205 = load i1, i1* %203
  %206 = xor i1 %205, true
  br i1 %206, label %while_body46, label %while_end47
while_body46:
  call void @llvm.stackrestore(i8* %204)
  %207 = getelementptr [8 x i8], [8 x i8]* @.str978, i32 0, i32 0
  %208 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str978.c, i8* %207)
  %209 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %208)
  br i1 %209, label %then48, label %else49
then48:
  %210 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %203
  br label %merge50
else49:
  %211 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge50
merge50:
  br label %while_cond45
while_end47:
  br label %merge44
else43:
  br label %merge44
merge44:
  %212 = getelementptr [7 x i8], [7 x i8]* @.str979, i32 0, i32 0
  %213 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str979.c, i8* %212)
  %214 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %213)
  %215 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %216 = alloca %nyx_string*
  store %nyx_string* %215, %nyx_string** %216
  %217 = load { i64, i8* }*, { i64, i8* }** %171
  %218 = call { i64, i8* }* @nyx_array_new_ptr()
  %219 = load %nyx_string*, %nyx_string** %198
  %220 = ptrtoint %nyx_string* %219 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %218, i64 %220, i64 2)
  %221 = load %nyx_string*, %nyx_string** %216
  %222 = ptrtoint %nyx_string* %221 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %218, i64 %222, i64 2)
  %223 = ptrtoint { i64, i8* }* %218 to i64
  call void @nyx_array_push({ i64, i8* }* %217, i64 %223)
  store i1 1, i1* %180
  br label %merge41
else40:
  br label %merge41
merge41:
  br label %merge38
else37:
  br label %merge38
merge38:
  %224 = load i1, i1* %180
  %225 = xor i1 %224, true
  br i1 %225, label %then51, label %else52
then51:
  %226 = call { i64, i8* }* @parse__parse_function(%SharedEnv_parse* %env.param)
  %227 = alloca { i64, i8* }*
  store { i64, i8* }* %226, { i64, i8* }** %227
  %228 = load { i64, i8* }*, { i64, i8* }** %169
  %229 = load { i64, i8* }*, { i64, i8* }** %227
  %230 = ptrtoint { i64, i8* }* %229 to i64
  call void @nyx_array_push({ i64, i8* }* %228, i64 %230)
  br label %merge53
else52:
  br label %merge53
merge53:
  br label %merge35
merge35:
  br label %while_cond30
while_end32:
  %231 = getelementptr [11 x i8], [11 x i8]* @.str980, i32 0, i32 0
  %232 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str980.c, i8* %231)
  %233 = call { i64, i8* }* @nyx_array_new_ptr()
  %234 = load %nyx_string*, %nyx_string** %153
  %235 = ptrtoint %nyx_string* %234 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %233, i64 %235, i64 2)
  %236 = load %nyx_string*, %nyx_string** %164
  %237 = ptrtoint %nyx_string* %236 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %233, i64 %237, i64 2)
  %238 = load { i64, i8* }*, { i64, i8* }** %169
  %239 = bitcast { i64, i8* }* %238 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %233, i8* %239)
  %240 = load { i64, i8* }*, { i64, i8* }** %171
  %241 = bitcast { i64, i8* }* %240 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %233, i8* %241)
  %242 = call { i64, i8* }* @make_astnode(%nyx_string* %232, { i64, i8* }* %233)
  ret { i64, i8* }* %242
else28:
  br label %merge29
merge29:
  %243 = getelementptr [5 x i8], [5 x i8]* @.str981, i32 0, i32 0
  %244 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str981.c, i8* %243)
  %245 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %244)
  br i1 %245, label %then54, label %else55
then54:
  %246 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %247 = call { i64, i8* }* @nyx_array_new_ptr()
  %248 = alloca { i64, i8* }*
  store { i64, i8* }* %247, { i64, i8* }** %248
  %249 = alloca i1
  store i1 1, i1* %249
  %250 = alloca i1
  store i1 0, i1* %250
  %251 = call i8* @llvm.stacksave()
  br label %while_cond57
while_cond57:
  %252 = load i1, i1* %250
  %253 = xor i1 %252, true
  br i1 %253, label %while_body58, label %while_end59
while_body58:
  call void @llvm.stackrestore(i8* %251)
  %254 = getelementptr [8 x i8], [8 x i8]* @.str982, i32 0, i32 0
  %255 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str982.c, i8* %254)
  %256 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %255)
  br i1 %256, label %then60, label %else61
then60:
  %257 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %250
  br label %merge62
else61:
  %258 = getelementptr [11 x i8], [11 x i8]* @.str983, i32 0, i32 0
  %259 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str983.c, i8* %258)
  %260 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %259)
  br i1 %260, label %then63, label %else64
then63:
  %261 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %262 = alloca %Token
  store %Token %261, %Token* %262
  %263 = load { i64, i8* }*, { i64, i8* }** %248
  %264 = load %Token, %Token* %262
  %265 = call %nyx_string* @get_token_value(%Token %264)
  %266 = ptrtoint %nyx_string* %265 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %263, i64 %266, i64 2)
  br label %merge65
else64:
  %267 = getelementptr [6 x i8], [6 x i8]* @.str984, i32 0, i32 0
  %268 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str984.c, i8* %267)
  %269 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %268)
  br i1 %269, label %then66, label %else67
then66:
  %270 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge68
else67:
  store i1 0, i1* %249
  %271 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge68
merge68:
  br label %merge65
merge65:
  br label %merge62
merge62:
  br label %while_cond57
while_end59:
  %272 = alloca i1
  store i1 false, i1* %272
  %273 = alloca i1
  store i1 false, i1* %273
  %274 = load { i64, i8* }*, { i64, i8* }** %27
  %275 = call i64 @nyx_array_length({ i64, i8* }* %274)
  %276 = icmp eq i64 %275, 0
  br i1 %276, label %sc_and_rhs69, label %sc_and_end70
sc_and_rhs69:
  %277 = load i1, i1* %249
  store i1 %277, i1* %273
  br label %sc_and_end70
sc_and_end70:
  %278 = load i1, i1* %273
  br i1 %278, label %sc_and_rhs71, label %sc_and_end72
sc_and_rhs71:
  %279 = load { i64, i8* }*, { i64, i8* }** %248
  %280 = call i64 @nyx_array_length({ i64, i8* }* %279)
  %281 = icmp sgt i64 %280, 0
  store i1 %281, i1* %272
  br label %sc_and_end72
sc_and_end72:
  %282 = load i1, i1* %272
  br i1 %282, label %then73, label %else74
then73:
  %283 = alloca i1
  store i1 1, i1* %283
  %284 = alloca i64
  store i64 0, i64* %284
  %285 = call i8* @llvm.stacksave()
  br label %while_cond76
while_cond76:
  %286 = load i64, i64* %284
  %287 = load { i64, i8* }*, { i64, i8* }** %248
  %288 = call i64 @nyx_array_length({ i64, i8* }* %287)
  %289 = icmp slt i64 %286, %288
  br i1 %289, label %while_body77, label %while_end78
while_body77:
  call void @llvm.stackrestore(i8* %285)
  %290 = load { i64, i8* }*, { i64, i8* }** %248
  %291 = load i64, i64* %284
  %292 = call i64 @nyx_array_get_checked({ i64, i8* }* %290, i64 %291, i64 2)
  %293 = inttoptr i64 %292 to %nyx_string*
  %294 = alloca %nyx_string*
  store %nyx_string* %293, %nyx_string** %294
  %295 = alloca i1
  store i1 true, i1* %295
  %296 = alloca i1
  store i1 true, i1* %296
  %297 = alloca i1
  store i1 true, i1* %297
  %298 = alloca i1
  store i1 true, i1* %298
  %299 = alloca i1
  store i1 true, i1* %299
  %300 = alloca i1
  store i1 true, i1* %300
  %301 = alloca i1
  store i1 true, i1* %301
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
  %310 = load %nyx_string*, %nyx_string** %294
  %311 = getelementptr [4 x i8], [4 x i8]* @.str985, i32 0, i32 0
  %312 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str985.c, i8* %311)
  %313 = call i1 @nyx_string_equals(%nyx_string* %310, %nyx_string* %312)
  br i1 %313, label %sc_or_end80, label %sc_or_rhs79
sc_or_rhs79:
  %314 = load %nyx_string*, %nyx_string** %294
  %315 = getelementptr [6 x i8], [6 x i8]* @.str986, i32 0, i32 0
  %316 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str986.c, i8* %315)
  %317 = call i1 @nyx_string_equals(%nyx_string* %314, %nyx_string* %316)
  store i1 %317, i1* %309
  br label %sc_or_end80
sc_or_end80:
  %318 = load i1, i1* %309
  br i1 %318, label %sc_or_end82, label %sc_or_rhs81
sc_or_rhs81:
  %319 = load %nyx_string*, %nyx_string** %294
  %320 = getelementptr [5 x i8], [5 x i8]* @.str987, i32 0, i32 0
  %321 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str987.c, i8* %320)
  %322 = call i1 @nyx_string_equals(%nyx_string* %319, %nyx_string* %321)
  store i1 %322, i1* %308
  br label %sc_or_end82
sc_or_end82:
  %323 = load i1, i1* %308
  br i1 %323, label %sc_or_end84, label %sc_or_rhs83
sc_or_rhs83:
  %324 = load %nyx_string*, %nyx_string** %294
  %325 = getelementptr [7 x i8], [7 x i8]* @.str988, i32 0, i32 0
  %326 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str988.c, i8* %325)
  %327 = call i1 @nyx_string_equals(%nyx_string* %324, %nyx_string* %326)
  store i1 %327, i1* %307
  br label %sc_or_end84
sc_or_end84:
  %328 = load i1, i1* %307
  br i1 %328, label %sc_or_end86, label %sc_or_rhs85
sc_or_rhs85:
  %329 = load %nyx_string*, %nyx_string** %294
  %330 = getelementptr [5 x i8], [5 x i8]* @.str989, i32 0, i32 0
  %331 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str989.c, i8* %330)
  %332 = call i1 @nyx_string_equals(%nyx_string* %329, %nyx_string* %331)
  store i1 %332, i1* %306
  br label %sc_or_end86
sc_or_end86:
  %333 = load i1, i1* %306
  br i1 %333, label %sc_or_end88, label %sc_or_rhs87
sc_or_rhs87:
  %334 = load %nyx_string*, %nyx_string** %294
  %335 = getelementptr [3 x i8], [3 x i8]* @.str990, i32 0, i32 0
  %336 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str990.c, i8* %335)
  %337 = call i1 @nyx_string_equals(%nyx_string* %334, %nyx_string* %336)
  store i1 %337, i1* %305
  br label %sc_or_end88
sc_or_end88:
  %338 = load i1, i1* %305
  br i1 %338, label %sc_or_end90, label %sc_or_rhs89
sc_or_rhs89:
  %339 = load %nyx_string*, %nyx_string** %294
  %340 = getelementptr [4 x i8], [4 x i8]* @.str991, i32 0, i32 0
  %341 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str991.c, i8* %340)
  %342 = call i1 @nyx_string_equals(%nyx_string* %339, %nyx_string* %341)
  store i1 %342, i1* %304
  br label %sc_or_end90
sc_or_end90:
  %343 = load i1, i1* %304
  br i1 %343, label %sc_or_end92, label %sc_or_rhs91
sc_or_rhs91:
  %344 = load %nyx_string*, %nyx_string** %294
  %345 = getelementptr [4 x i8], [4 x i8]* @.str992, i32 0, i32 0
  %346 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str992.c, i8* %345)
  %347 = call i1 @nyx_string_equals(%nyx_string* %344, %nyx_string* %346)
  store i1 %347, i1* %303
  br label %sc_or_end92
sc_or_end92:
  %348 = load i1, i1* %303
  br i1 %348, label %sc_or_end94, label %sc_or_rhs93
sc_or_rhs93:
  %349 = load %nyx_string*, %nyx_string** %294
  %350 = getelementptr [3 x i8], [3 x i8]* @.str993, i32 0, i32 0
  %351 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str993.c, i8* %350)
  %352 = call i1 @nyx_string_equals(%nyx_string* %349, %nyx_string* %351)
  store i1 %352, i1* %302
  br label %sc_or_end94
sc_or_end94:
  %353 = load i1, i1* %302
  br i1 %353, label %sc_or_end96, label %sc_or_rhs95
sc_or_rhs95:
  %354 = load %nyx_string*, %nyx_string** %294
  %355 = getelementptr [4 x i8], [4 x i8]* @.str994, i32 0, i32 0
  %356 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str994.c, i8* %355)
  %357 = call i1 @nyx_string_equals(%nyx_string* %354, %nyx_string* %356)
  store i1 %357, i1* %301
  br label %sc_or_end96
sc_or_end96:
  %358 = load i1, i1* %301
  br i1 %358, label %sc_or_end98, label %sc_or_rhs97
sc_or_rhs97:
  %359 = load %nyx_string*, %nyx_string** %294
  %360 = getelementptr [4 x i8], [4 x i8]* @.str995, i32 0, i32 0
  %361 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str995.c, i8* %360)
  %362 = call i1 @nyx_string_equals(%nyx_string* %359, %nyx_string* %361)
  store i1 %362, i1* %300
  br label %sc_or_end98
sc_or_end98:
  %363 = load i1, i1* %300
  br i1 %363, label %sc_or_end100, label %sc_or_rhs99
sc_or_rhs99:
  %364 = load %nyx_string*, %nyx_string** %294
  %365 = getelementptr [4 x i8], [4 x i8]* @.str996, i32 0, i32 0
  %366 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str996.c, i8* %365)
  %367 = call i1 @nyx_string_equals(%nyx_string* %364, %nyx_string* %366)
  store i1 %367, i1* %299
  br label %sc_or_end100
sc_or_end100:
  %368 = load i1, i1* %299
  br i1 %368, label %sc_or_end102, label %sc_or_rhs101
sc_or_rhs101:
  %369 = load %nyx_string*, %nyx_string** %294
  %370 = getelementptr [6 x i8], [6 x i8]* @.str997, i32 0, i32 0
  %371 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str997.c, i8* %370)
  %372 = call i1 @nyx_string_equals(%nyx_string* %369, %nyx_string* %371)
  store i1 %372, i1* %298
  br label %sc_or_end102
sc_or_end102:
  %373 = load i1, i1* %298
  br i1 %373, label %sc_or_end104, label %sc_or_rhs103
sc_or_rhs103:
  %374 = load %nyx_string*, %nyx_string** %294
  %375 = getelementptr [4 x i8], [4 x i8]* @.str998, i32 0, i32 0
  %376 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str998.c, i8* %375)
  %377 = call i1 @nyx_string_equals(%nyx_string* %374, %nyx_string* %376)
  store i1 %377, i1* %297
  br label %sc_or_end104
sc_or_end104:
  %378 = load i1, i1* %297
  br i1 %378, label %sc_or_end106, label %sc_or_rhs105
sc_or_rhs105:
  %379 = load %nyx_string*, %nyx_string** %294
  %380 = getelementptr [6 x i8], [6 x i8]* @.str999, i32 0, i32 0
  %381 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str999.c, i8* %380)
  %382 = call i1 @nyx_string_equals(%nyx_string* %379, %nyx_string* %381)
  store i1 %382, i1* %296
  br label %sc_or_end106
sc_or_end106:
  %383 = load i1, i1* %296
  br i1 %383, label %sc_or_end108, label %sc_or_rhs107
sc_or_rhs107:
  %384 = load %nyx_string*, %nyx_string** %294
  %385 = getelementptr [4 x i8], [4 x i8]* @.str1000, i32 0, i32 0
  %386 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1000.c, i8* %385)
  %387 = call i1 @nyx_string_equals(%nyx_string* %384, %nyx_string* %386)
  store i1 %387, i1* %295
  br label %sc_or_end108
sc_or_end108:
  %388 = load i1, i1* %295
  br i1 %388, label %then109, label %else110
then109:
  store i1 0, i1* %283
  br label %merge111
else110:
  br label %merge111
merge111:
  %389 = load i64, i64* %284
  %390 = add i64 %389, 1
  store i64 %390, i64* %284
  br label %while_cond76
while_end78:
  %391 = load i1, i1* %283
  br i1 %391, label %then112, label %else113
then112:
  %392 = load { i64, i8* }*, { i64, i8* }** %248
  store { i64, i8* }* %392, { i64, i8* }** %27
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
  %393 = getelementptr [11 x i8], [11 x i8]* @.str1001, i32 0, i32 0
  %394 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1001.c, i8* %393)
  %395 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %394)
  %396 = call { i64, i8* }* @nyx_array_new_ptr()
  %397 = alloca { i64, i8* }*
  store { i64, i8* }* %396, { i64, i8* }** %397
  %398 = alloca i1
  store i1 0, i1* %398
  %399 = call i8* @llvm.stacksave()
  br label %while_cond115
while_cond115:
  %400 = load i1, i1* %398
  %401 = xor i1 %400, true
  br i1 %401, label %while_body116, label %while_end117
while_body116:
  call void @llvm.stackrestore(i8* %399)
  %402 = getelementptr [12 x i8], [12 x i8]* @.str1002, i32 0, i32 0
  %403 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1002.c, i8* %402)
  %404 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %403)
  br i1 %404, label %then118, label %else119
then118:
  %405 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %398
  br label %merge120
else119:
  %406 = call { i64, i8* }* @parse__parse_function(%SharedEnv_parse* %env.param)
  %407 = alloca { i64, i8* }*
  store { i64, i8* }* %406, { i64, i8* }** %407
  %408 = load { i64, i8* }*, { i64, i8* }** %397
  %409 = load { i64, i8* }*, { i64, i8* }** %407
  %410 = ptrtoint { i64, i8* }* %409 to i64
  call void @nyx_array_push({ i64, i8* }* %408, i64 %410)
  br label %merge120
merge120:
  br label %while_cond115
while_end117:
  %411 = getelementptr [5 x i8], [5 x i8]* @.str1003, i32 0, i32 0
  %412 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1003.c, i8* %411)
  %413 = call { i64, i8* }* @nyx_array_new_ptr()
  %414 = load %nyx_string*, %nyx_string** %153
  %415 = ptrtoint %nyx_string* %414 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %413, i64 %415, i64 2)
  %416 = load { i64, i8* }*, { i64, i8* }** %397
  %417 = bitcast { i64, i8* }* %416 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %413, i8* %417)
  %418 = load { i64, i8* }*, { i64, i8* }** %27
  %419 = bitcast { i64, i8* }* %418 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %413, i8* %419)
  %420 = call { i64, i8* }* @make_astnode(%nyx_string* %412, { i64, i8* }* %413)
  ret { i64, i8* }* %420
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
  %23 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %24 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %25 = alloca { i64, i8* }*
  store { i64, i8* }* %24, { i64, i8* }** %25
  %26 = getelementptr [6 x i8], [6 x i8]* @.str1004, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1004.c, i8* %26)
  %28 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %27)
  %29 = getelementptr [11 x i8], [11 x i8]* @.str1005, i32 0, i32 0
  %30 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1005.c, i8* %29)
  %31 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %30)
  %32 = getelementptr [11 x i8], [11 x i8]* @.str1006, i32 0, i32 0
  %33 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1006.c, i8* %32)
  %34 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %33)
  %35 = alloca %Token
  store %Token %34, %Token* %35
  %36 = load %Token, %Token* %35
  %37 = call %nyx_string* @get_token_value(%Token %36)
  %38 = alloca %nyx_string*
  store %nyx_string* %37, %nyx_string** %38
  %39 = getelementptr [6 x i8], [6 x i8]* @.str1007, i32 0, i32 0
  %40 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1007.c, i8* %39)
  %41 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %40)
  br i1 %41, label %then0, label %else1
then0:
  %42 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %43 = getelementptr [11 x i8], [11 x i8]* @.str1008, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1008.c, i8* %43)
  %45 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %44)
  br i1 %45, label %then3, label %else4
then3:
  %46 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge5
else4:
  br label %merge5
merge5:
  br label %merge2
else1:
  br label %merge2
merge2:
  %47 = getelementptr [12 x i8], [12 x i8]* @.str1009, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1009.c, i8* %47)
  %49 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %48)
  %50 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %51 = alloca { i64, i8* }*
  store { i64, i8* }* %50, { i64, i8* }** %51
  %52 = getelementptr [10 x i8], [10 x i8]* @.str1010, i32 0, i32 0
  %53 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1010.c, i8* %52)
  %54 = call { i64, i8* }* @nyx_array_new_ptr()
  %55 = load { i64, i8* }*, { i64, i8* }** %25
  %56 = bitcast { i64, i8* }* %55 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %54, i8* %56)
  %57 = load %nyx_string*, %nyx_string** %38
  %58 = ptrtoint %nyx_string* %57 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %54, i64 %58, i64 2)
  %59 = load { i64, i8* }*, { i64, i8* }** %51
  %60 = bitcast { i64, i8* }* %59 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %54, i8* %60)
  %61 = call { i64, i8* }* @make_astnode(%nyx_string* %53, { i64, i8* }* %54)
  ret { i64, i8* }* %61
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
  %23 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %24 = getelementptr [11 x i8], [11 x i8]* @.str1011, i32 0, i32 0
  %25 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1011.c, i8* %24)
  %26 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %25)
  %27 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %28 = alloca { i64, i8* }*
  store { i64, i8* }* %27, { i64, i8* }** %28
  %29 = getelementptr [12 x i8], [12 x i8]* @.str1012, i32 0, i32 0
  %30 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1012.c, i8* %29)
  %31 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %30)
  %32 = getelementptr [6 x i8], [6 x i8]* @.str1013, i32 0, i32 0
  %33 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1013.c, i8* %32)
  %34 = call { i64, i8* }* @nyx_array_new_ptr()
  %35 = load { i64, i8* }*, { i64, i8* }** %28
  %36 = bitcast { i64, i8* }* %35 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %34, i8* %36)
  %37 = call { i64, i8* }* @make_astnode(%nyx_string* %33, { i64, i8* }* %34)
  ret { i64, i8* }* %37
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
  %23 = getelementptr [11 x i8], [11 x i8]* @.str1014, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1014.c, i8* %23)
  %25 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %24)
  %26 = call { i64, i8* }* @nyx_array_new_ptr()
  %27 = alloca { i64, i8* }*
  store { i64, i8* }* %26, { i64, i8* }** %27
  %28 = alloca i1
  store i1 0, i1* %28
  %29 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %30 = load i1, i1* %28
  %31 = xor i1 %30, true
  br i1 %31, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %29)
  %32 = load i64, i64* %8
  %33 = icmp eq i64 %32, 1
  br i1 %33, label %then3, label %else4
then3:
  store i1 1, i1* %28
  br label %merge5
else4:
  %34 = getelementptr [4 x i8], [4 x i8]* @.str1015, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1015.c, i8* %34)
  %36 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %35)
  br i1 %36, label %then6, label %else7
then6:
  %37 = getelementptr [8 x i8], [8 x i8]* @.str1016, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1016.c, i8* %37)
  %39 = load i64, i64* @g_last_line
  %40 = load i64, i64* @g_last_col
  %41 = getelementptr [47 x i8], [47 x i8]* @.str1017, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1017.c, i8* %41)
  %43 = getelementptr [44 x i8], [44 x i8]* @.str1018, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1018.c, i8* %43)
  %45 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %42, %nyx_string* %44)
  %46 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %38, i64 %39, i64 %40, %nyx_string* %45)
  store i1 1, i1* %28
  br label %merge8
else7:
  %47 = getelementptr [12 x i8], [12 x i8]* @.str1019, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1019.c, i8* %47)
  %49 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %48)
  br i1 %49, label %then9, label %else10
then9:
  %50 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %28
  br label %merge11
else10:
  %51 = load i64, i64* %4
  %52 = alloca i64
  store i64 %51, i64* %52
  %53 = call { i64, i8* }* @parse__parse_statement(%SharedEnv_parse* %env.param)
  %54 = alloca { i64, i8* }*
  store { i64, i8* }* %53, { i64, i8* }** %54
  %55 = load i64, i64* %4
  %56 = load i64, i64* %52
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %then12, label %else13
then12:
  %58 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge14
else13:
  %59 = load { i64, i8* }*, { i64, i8* }** %27
  %60 = load { i64, i8* }*, { i64, i8* }** %54
  %61 = ptrtoint { i64, i8* }* %60 to i64
  call void @nyx_array_push({ i64, i8* }* %59, i64 %61)
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
  %62 = getelementptr [6 x i8], [6 x i8]* @.str1020, i32 0, i32 0
  %63 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1020.c, i8* %62)
  %64 = call { i64, i8* }* @nyx_array_new_ptr()
  %65 = load { i64, i8* }*, { i64, i8* }** %27
  %66 = bitcast { i64, i8* }* %65 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %64, i8* %66)
  %67 = call { i64, i8* }* @make_astnode(%nyx_string* %63, { i64, i8* }* %64)
  ret { i64, i8* }* %67
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
  %23 = getelementptr [11 x i8], [11 x i8]* @.str1021, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1021.c, i8* %23)
  %25 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %24)
  %26 = call { i64, i8* }* @nyx_array_new_ptr()
  %27 = alloca { i64, i8* }*
  store { i64, i8* }* %26, { i64, i8* }** %27
  %28 = alloca i1
  store i1 0, i1* %28
  %29 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %30 = load i1, i1* %28
  %31 = xor i1 %30, true
  br i1 %31, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %29)
  %32 = load i64, i64* %8
  %33 = icmp eq i64 %32, 1
  br i1 %33, label %then3, label %else4
then3:
  store i1 1, i1* %28
  br label %merge5
else4:
  %34 = getelementptr [4 x i8], [4 x i8]* @.str1022, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1022.c, i8* %34)
  %36 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %35)
  br i1 %36, label %then6, label %else7
then6:
  %37 = getelementptr [8 x i8], [8 x i8]* @.str1023, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1023.c, i8* %37)
  %39 = load i64, i64* @g_last_line
  %40 = load i64, i64* @g_last_col
  %41 = getelementptr [47 x i8], [47 x i8]* @.str1024, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1024.c, i8* %41)
  %43 = getelementptr [44 x i8], [44 x i8]* @.str1025, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1025.c, i8* %43)
  %45 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %42, %nyx_string* %44)
  %46 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %38, i64 %39, i64 %40, %nyx_string* %45)
  store i1 1, i1* %28
  br label %merge8
else7:
  %47 = getelementptr [12 x i8], [12 x i8]* @.str1026, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1026.c, i8* %47)
  %49 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %48)
  br i1 %49, label %then9, label %else10
then9:
  %50 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %28
  br label %merge11
else10:
  %51 = load i64, i64* %4
  %52 = alloca i64
  store i64 %51, i64* %52
  %53 = load { i64, i8* }*, { i64, i8* }** %11
  %54 = call i64 @nyx_array_length({ i64, i8* }* %53)
  %55 = alloca i64
  store i64 %54, i64* %55
  %56 = call { i64, i8* }* @parse__parse_statement(%SharedEnv_parse* %env.param)
  %57 = alloca { i64, i8* }*
  store { i64, i8* }* %56, { i64, i8* }** %57
  %58 = load i64, i64* %4
  %59 = load i64, i64* %52
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %then12, label %else13
then12:
  %61 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge14
else13:
  %62 = load { i64, i8* }*, { i64, i8* }** %11
  %63 = call i64 @nyx_array_length({ i64, i8* }* %62)
  %64 = load i64, i64* %55
  %65 = icmp sgt i64 %63, %64
  br i1 %65, label %then15, label %else16
then15:
  %66 = load i64, i64* %55
  %67 = alloca i64
  store i64 %66, i64* %67
  %68 = call i8* @llvm.stacksave()
  br label %while_cond18
while_cond18:
  %69 = load i64, i64* %67
  %70 = load { i64, i8* }*, { i64, i8* }** %11
  %71 = call i64 @nyx_array_length({ i64, i8* }* %70)
  %72 = icmp slt i64 %69, %71
  br i1 %72, label %while_body19, label %while_end20
while_body19:
  call void @llvm.stackrestore(i8* %68)
  %73 = load { i64, i8* }*, { i64, i8* }** %11
  %74 = load i64, i64* %67
  %75 = call i64 @nyx_array_get({ i64, i8* }* %73, i64 %74)
  %76 = inttoptr i64 %75 to { i64, i8* }*
  %77 = alloca { i64, i8* }*
  store { i64, i8* }* %76, { i64, i8* }** %77
  %78 = load { i64, i8* }*, { i64, i8* }** %77
  %79 = call i64 @nyx_array_get_checked({ i64, i8* }* %78, i64 0, i64 2)
  %80 = inttoptr i64 %79 to %nyx_string*
  %81 = alloca %nyx_string*
  store %nyx_string* %80, %nyx_string** %81
  %82 = load %nyx_string*, %nyx_string** %81
  %83 = getelementptr [10 x i8], [10 x i8]* @.str1027, i32 0, i32 0
  %84 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1027.c, i8* %83)
  %85 = call i1 @nyx_string_equals(%nyx_string* %82, %nyx_string* %84)
  %86 = xor i1 %85, true
  br i1 %86, label %then21, label %else22
then21:
  %87 = load { i64, i8* }*, { i64, i8* }** %27
  %88 = load { i64, i8* }*, { i64, i8* }** %11
  %89 = load i64, i64* %67
  %90 = call i64 @nyx_array_get({ i64, i8* }* %88, i64 %89)
  %91 = load { i64, i8* }*, { i64, i8* }** %11
  %92 = load i64, i64* %67
  %93 = call i64 @nyx_array_get_tag({ i64, i8* }* %91, i64 %92)
  call void @nyx_array_push_tagged({ i64, i8* }* %87, i64 %90, i64 %93)
  %94 = load { i64, i8* }*, { i64, i8* }** %11
  %95 = load i64, i64* %67
  %96 = getelementptr [10 x i8], [10 x i8]* @.str1028, i32 0, i32 0
  %97 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1028.c, i8* %96)
  %98 = call { i64, i8* }* @nyx_array_new_ptr()
  %99 = call { i64, i8* }* @make_astnode(%nyx_string* %97, { i64, i8* }* %98)
  %100 = ptrtoint { i64, i8* }* %99 to i64
  call void @nyx_array_set({ i64, i8* }* %94, i64 %95, i64 %100)
  br label %merge23
else22:
  br label %merge23
merge23:
  %101 = load i64, i64* %67
  %102 = add i64 %101, 1
  store i64 %102, i64* %67
  br label %while_cond18
while_end20:
  br label %merge17
else16:
  br label %merge17
merge17:
  %103 = load { i64, i8* }*, { i64, i8* }** %27
  %104 = load { i64, i8* }*, { i64, i8* }** %57
  %105 = ptrtoint { i64, i8* }* %104 to i64
  call void @nyx_array_push({ i64, i8* }* %103, i64 %105)
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
  %106 = getelementptr [6 x i8], [6 x i8]* @.str1029, i32 0, i32 0
  %107 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1029.c, i8* %106)
  %108 = call { i64, i8* }* @nyx_array_new_ptr()
  %109 = load { i64, i8* }*, { i64, i8* }** %27
  %110 = bitcast { i64, i8* }* %109 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %108, i8* %110)
  %111 = call { i64, i8* }* @make_astnode(%nyx_string* %107, { i64, i8* }* %108)
  ret { i64, i8* }* %111
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
  %23 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %24 = alloca { i64, i8* }*
  store { i64, i8* }* %23, { i64, i8* }** %24
  %25 = load { i64, i8* }*, { i64, i8* }** %24
  %26 = call %nyx_string* @astnode_get_type({ i64, i8* }* %25)
  %27 = alloca %nyx_string*
  store %nyx_string* %26, %nyx_string** %27
  %28 = load { i64, i8* }*, { i64, i8* }** %24
  %29 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %28)
  %30 = alloca { i64, i8* }*
  store { i64, i8* }* %29, { i64, i8* }** %30
  %31 = load %nyx_string*, %nyx_string** %27
  %32 = getelementptr [11 x i8], [11 x i8]* @.str1030, i32 0, i32 0
  %33 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1030.c, i8* %32)
  %34 = call i1 @nyx_string_equals(%nyx_string* %31, %nyx_string* %33)
  br i1 %34, label %then0, label %else1
then0:
  %35 = getelementptr [7 x i8], [7 x i8]* @.str1031, i32 0, i32 0
  %36 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1031.c, i8* %35)
  %37 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %36)
  br i1 %37, label %then3, label %else4
then3:
  %38 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %39 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %40 = alloca { i64, i8* }*
  store { i64, i8* }* %39, { i64, i8* }** %40
  %41 = load { i64, i8* }*, { i64, i8* }** %30
  %42 = call i64 @nyx_array_get_checked({ i64, i8* }* %41, i64 0, i64 2)
  %43 = inttoptr i64 %42 to %nyx_string*
  %44 = alloca %nyx_string*
  store %nyx_string* %43, %nyx_string** %44
  %45 = load %nyx_string*, %nyx_string** %44
  %46 = call { i64, i8* }* @nyx_array_new_ptr()
  %47 = call { i64, i8* }* @make_astnode(%nyx_string* %45, { i64, i8* }* %46)
  %48 = alloca { i64, i8* }*
  store { i64, i8* }* %47, { i64, i8* }** %48
  %49 = getelementptr [7 x i8], [7 x i8]* @.str1032, i32 0, i32 0
  %50 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1032.c, i8* %49)
  %51 = call { i64, i8* }* @nyx_array_new_ptr()
  %52 = load { i64, i8* }*, { i64, i8* }** %48
  %53 = bitcast { i64, i8* }* %52 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %51, i8* %53)
  %54 = load { i64, i8* }*, { i64, i8* }** %40
  %55 = bitcast { i64, i8* }* %54 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %51, i8* %55)
  %56 = call { i64, i8* }* @make_astnode(%nyx_string* %50, { i64, i8* }* %51)
  ret { i64, i8* }* %56
else4:
  br label %merge5
merge5:
  %57 = getelementptr [1 x i8], [1 x i8]* @.str1033, i32 0, i32 0
  %58 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1033.c, i8* %57)
  %59 = alloca %nyx_string*
  store %nyx_string* %58, %nyx_string** %59
  %60 = getelementptr [12 x i8], [12 x i8]* @.str1034, i32 0, i32 0
  %61 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1034.c, i8* %60)
  %62 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %61)
  br i1 %62, label %then6, label %else7
then6:
  %63 = getelementptr [5 x i8], [5 x i8]* @.str1035, i32 0, i32 0
  %64 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1035.c, i8* %63)
  store %nyx_string* %64, %nyx_string** %59
  br label %merge8
else7:
  br label %merge8
merge8:
  %65 = getelementptr [13 x i8], [13 x i8]* @.str1036, i32 0, i32 0
  %66 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1036.c, i8* %65)
  %67 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %66)
  br i1 %67, label %then9, label %else10
then9:
  %68 = getelementptr [6 x i8], [6 x i8]* @.str1037, i32 0, i32 0
  %69 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1037.c, i8* %68)
  store %nyx_string* %69, %nyx_string** %59
  br label %merge11
else10:
  br label %merge11
merge11:
  %70 = getelementptr [12 x i8], [12 x i8]* @.str1038, i32 0, i32 0
  %71 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1038.c, i8* %70)
  %72 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %71)
  br i1 %72, label %then12, label %else13
then12:
  %73 = getelementptr [5 x i8], [5 x i8]* @.str1039, i32 0, i32 0
  %74 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1039.c, i8* %73)
  store %nyx_string* %74, %nyx_string** %59
  br label %merge14
else13:
  br label %merge14
merge14:
  %75 = getelementptr [13 x i8], [13 x i8]* @.str1040, i32 0, i32 0
  %76 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1040.c, i8* %75)
  %77 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %76)
  br i1 %77, label %then15, label %else16
then15:
  %78 = getelementptr [6 x i8], [6 x i8]* @.str1041, i32 0, i32 0
  %79 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1041.c, i8* %78)
  store %nyx_string* %79, %nyx_string** %59
  br label %merge17
else16:
  br label %merge17
merge17:
  %80 = getelementptr [15 x i8], [15 x i8]* @.str1042, i32 0, i32 0
  %81 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1042.c, i8* %80)
  %82 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %81)
  br i1 %82, label %then18, label %else19
then18:
  %83 = getelementptr [8 x i8], [8 x i8]* @.str1043, i32 0, i32 0
  %84 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1043.c, i8* %83)
  store %nyx_string* %84, %nyx_string** %59
  br label %merge20
else19:
  br label %merge20
merge20:
  %85 = getelementptr [11 x i8], [11 x i8]* @.str1044, i32 0, i32 0
  %86 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1044.c, i8* %85)
  %87 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %86)
  br i1 %87, label %then21, label %else22
then21:
  %88 = getelementptr [4 x i8], [4 x i8]* @.str1045, i32 0, i32 0
  %89 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1045.c, i8* %88)
  store %nyx_string* %89, %nyx_string** %59
  br label %merge23
else22:
  br label %merge23
merge23:
  %90 = getelementptr [12 x i8], [12 x i8]* @.str1046, i32 0, i32 0
  %91 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1046.c, i8* %90)
  %92 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %91)
  br i1 %92, label %then24, label %else25
then24:
  %93 = getelementptr [5 x i8], [5 x i8]* @.str1047, i32 0, i32 0
  %94 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1047.c, i8* %93)
  store %nyx_string* %94, %nyx_string** %59
  br label %merge26
else25:
  br label %merge26
merge26:
  %95 = getelementptr [13 x i8], [13 x i8]* @.str1048, i32 0, i32 0
  %96 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1048.c, i8* %95)
  %97 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %96)
  br i1 %97, label %then27, label %else28
then27:
  %98 = getelementptr [6 x i8], [6 x i8]* @.str1049, i32 0, i32 0
  %99 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1049.c, i8* %98)
  store %nyx_string* %99, %nyx_string** %59
  br label %merge29
else28:
  br label %merge29
merge29:
  %100 = getelementptr [18 x i8], [18 x i8]* @.str1050, i32 0, i32 0
  %101 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1050.c, i8* %100)
  %102 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %101)
  br i1 %102, label %then30, label %else31
then30:
  %103 = getelementptr [11 x i8], [11 x i8]* @.str1051, i32 0, i32 0
  %104 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1051.c, i8* %103)
  store %nyx_string* %104, %nyx_string** %59
  br label %merge32
else31:
  br label %merge32
merge32:
  %105 = getelementptr [19 x i8], [19 x i8]* @.str1052, i32 0, i32 0
  %106 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1052.c, i8* %105)
  %107 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %106)
  br i1 %107, label %then33, label %else34
then33:
  %108 = getelementptr [12 x i8], [12 x i8]* @.str1053, i32 0, i32 0
  %109 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1053.c, i8* %108)
  store %nyx_string* %109, %nyx_string** %59
  br label %merge35
else34:
  br label %merge35
merge35:
  %110 = load %nyx_string*, %nyx_string** %59
  %111 = getelementptr [1 x i8], [1 x i8]* @.str1054, i32 0, i32 0
  %112 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1054.c, i8* %111)
  %113 = call i1 @nyx_string_equals(%nyx_string* %110, %nyx_string* %112)
  %114 = xor i1 %113, true
  br i1 %114, label %then36, label %else37
then36:
  %115 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %116 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %117 = alloca { i64, i8* }*
  store { i64, i8* }* %116, { i64, i8* }** %117
  %118 = load { i64, i8* }*, { i64, i8* }** %30
  %119 = call i64 @nyx_array_get_checked({ i64, i8* }* %118, i64 0, i64 2)
  %120 = inttoptr i64 %119 to %nyx_string*
  %121 = alloca %nyx_string*
  store %nyx_string* %120, %nyx_string** %121
  %122 = load %nyx_string*, %nyx_string** %121
  %123 = call { i64, i8* }* @nyx_array_new_ptr()
  %124 = call { i64, i8* }* @make_astnode(%nyx_string* %122, { i64, i8* }* %123)
  %125 = alloca { i64, i8* }*
  store { i64, i8* }* %124, { i64, i8* }** %125
  %126 = getelementptr [11 x i8], [11 x i8]* @.str1055, i32 0, i32 0
  %127 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1055.c, i8* %126)
  %128 = call { i64, i8* }* @nyx_array_new_ptr()
  %129 = load %nyx_string*, %nyx_string** %121
  %130 = ptrtoint %nyx_string* %129 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %128, i64 %130, i64 2)
  %131 = call { i64, i8* }* @make_astnode(%nyx_string* %127, { i64, i8* }* %128)
  %132 = alloca { i64, i8* }*
  store { i64, i8* }* %131, { i64, i8* }** %132
  %133 = getelementptr [6 x i8], [6 x i8]* @.str1056, i32 0, i32 0
  %134 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1056.c, i8* %133)
  %135 = call { i64, i8* }* @nyx_array_new_ptr()
  %136 = load %nyx_string*, %nyx_string** %59
  %137 = ptrtoint %nyx_string* %136 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %135, i64 %137, i64 2)
  %138 = load { i64, i8* }*, { i64, i8* }** %132
  %139 = bitcast { i64, i8* }* %138 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %135, i8* %139)
  %140 = load { i64, i8* }*, { i64, i8* }** %117
  %141 = bitcast { i64, i8* }* %140 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %135, i8* %141)
  %142 = call { i64, i8* }* @make_astnode(%nyx_string* %134, { i64, i8* }* %135)
  %143 = alloca { i64, i8* }*
  store { i64, i8* }* %142, { i64, i8* }** %143
  %144 = getelementptr [7 x i8], [7 x i8]* @.str1057, i32 0, i32 0
  %145 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1057.c, i8* %144)
  %146 = call { i64, i8* }* @nyx_array_new_ptr()
  %147 = load { i64, i8* }*, { i64, i8* }** %125
  %148 = bitcast { i64, i8* }* %147 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %146, i8* %148)
  %149 = load { i64, i8* }*, { i64, i8* }** %143
  %150 = bitcast { i64, i8* }* %149 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %146, i8* %150)
  %151 = call { i64, i8* }* @make_astnode(%nyx_string* %145, { i64, i8* }* %146)
  ret { i64, i8* }* %151
else37:
  br label %merge38
merge38:
  br label %merge2
else1:
  br label %merge2
merge2:
  %152 = load %nyx_string*, %nyx_string** %27
  %153 = getelementptr [6 x i8], [6 x i8]* @.str1058, i32 0, i32 0
  %154 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1058.c, i8* %153)
  %155 = call i1 @nyx_string_equals(%nyx_string* %152, %nyx_string* %154)
  br i1 %155, label %then39, label %else40
then39:
  %156 = getelementptr [7 x i8], [7 x i8]* @.str1059, i32 0, i32 0
  %157 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1059.c, i8* %156)
  %158 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %157)
  br i1 %158, label %then42, label %else43
then42:
  %159 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %160 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %161 = alloca { i64, i8* }*
  store { i64, i8* }* %160, { i64, i8* }** %161
  %162 = load { i64, i8* }*, { i64, i8* }** %30
  %163 = call i64 @nyx_array_get({ i64, i8* }* %162, i64 0)
  %164 = inttoptr i64 %163 to { i64, i8* }*
  %165 = alloca { i64, i8* }*
  store { i64, i8* }* %164, { i64, i8* }** %165
  %166 = getelementptr [13 x i8], [13 x i8]* @.str1060, i32 0, i32 0
  %167 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1060.c, i8* %166)
  %168 = call { i64, i8* }* @nyx_array_new_ptr()
  %169 = load { i64, i8* }*, { i64, i8* }** %165
  %170 = bitcast { i64, i8* }* %169 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %168, i8* %170)
  %171 = load { i64, i8* }*, { i64, i8* }** %161
  %172 = bitcast { i64, i8* }* %171 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %168, i8* %172)
  %173 = call { i64, i8* }* @make_astnode(%nyx_string* %167, { i64, i8* }* %168)
  ret { i64, i8* }* %173
else43:
  br label %merge44
merge44:
  br label %merge41
else40:
  br label %merge41
merge41:
  %174 = alloca i1
  store i1 false, i1* %174
  %175 = load %nyx_string*, %nyx_string** %27
  %176 = getelementptr [6 x i8], [6 x i8]* @.str1061, i32 0, i32 0
  %177 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1061.c, i8* %176)
  %178 = call i1 @nyx_string_equals(%nyx_string* %175, %nyx_string* %177)
  br i1 %178, label %sc_and_rhs45, label %sc_and_end46
sc_and_rhs45:
  %179 = getelementptr [7 x i8], [7 x i8]* @.str1062, i32 0, i32 0
  %180 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1062.c, i8* %179)
  %181 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %180)
  store i1 %181, i1* %174
  br label %sc_and_end46
sc_and_end46:
  %182 = load i1, i1* %174
  br i1 %182, label %then47, label %else48
then47:
  %183 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %184 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %185 = alloca { i64, i8* }*
  store { i64, i8* }* %184, { i64, i8* }** %185
  %186 = getelementptr [13 x i8], [13 x i8]* @.str1063, i32 0, i32 0
  %187 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1063.c, i8* %186)
  %188 = call { i64, i8* }* @nyx_array_new_ptr()
  %189 = load { i64, i8* }*, { i64, i8* }** %30
  %190 = call i64 @nyx_array_get({ i64, i8* }* %189, i64 0)
  call void @nyx_array_push({ i64, i8* }* %188, i64 %190)
  %191 = load { i64, i8* }*, { i64, i8* }** %30
  %192 = call i64 @nyx_array_get({ i64, i8* }* %191, i64 1)
  call void @nyx_array_push({ i64, i8* }* %188, i64 %192)
  %193 = load { i64, i8* }*, { i64, i8* }** %185
  %194 = bitcast { i64, i8* }* %193 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %188, i8* %194)
  %195 = call { i64, i8* }* @make_astnode(%nyx_string* %187, { i64, i8* }* %188)
  ret { i64, i8* }* %195
else48:
  br label %merge49
merge49:
  %196 = alloca i1
  store i1 false, i1* %196
  %197 = load %nyx_string*, %nyx_string** %27
  %198 = getelementptr [13 x i8], [13 x i8]* @.str1064, i32 0, i32 0
  %199 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1064.c, i8* %198)
  %200 = call i1 @nyx_string_equals(%nyx_string* %197, %nyx_string* %199)
  br i1 %200, label %sc_and_rhs50, label %sc_and_end51
sc_and_rhs50:
  %201 = getelementptr [7 x i8], [7 x i8]* @.str1065, i32 0, i32 0
  %202 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1065.c, i8* %201)
  %203 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %202)
  store i1 %203, i1* %196
  br label %sc_and_end51
sc_and_end51:
  %204 = load i1, i1* %196
  br i1 %204, label %then52, label %else53
then52:
  %205 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %206 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %207 = alloca { i64, i8* }*
  store { i64, i8* }* %206, { i64, i8* }** %207
  %208 = getelementptr [13 x i8], [13 x i8]* @.str1066, i32 0, i32 0
  %209 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1066.c, i8* %208)
  %210 = call { i64, i8* }* @nyx_array_new_ptr()
  %211 = load { i64, i8* }*, { i64, i8* }** %30
  %212 = call i64 @nyx_array_get({ i64, i8* }* %211, i64 0)
  call void @nyx_array_push({ i64, i8* }* %210, i64 %212)
  %213 = load { i64, i8* }*, { i64, i8* }** %30
  %214 = call i64 @nyx_array_get({ i64, i8* }* %213, i64 1)
  call void @nyx_array_push({ i64, i8* }* %210, i64 %214)
  %215 = load { i64, i8* }*, { i64, i8* }** %207
  %216 = bitcast { i64, i8* }* %215 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %210, i8* %216)
  %217 = call { i64, i8* }* @make_astnode(%nyx_string* %209, { i64, i8* }* %210)
  ret { i64, i8* }* %217
else53:
  br label %merge54
merge54:
  %218 = load { i64, i8* }*, { i64, i8* }** %24
  ret { i64, i8* }* %218
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
  %23 = alloca i1
  store i1 0, i1* %23
  %24 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %25 = load i1, i1* %23
  %26 = xor i1 %25, true
  br i1 %26, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %24)
  %27 = getelementptr [4 x i8], [4 x i8]* @.str1067, i32 0, i32 0
  %28 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1067.c, i8* %27)
  %29 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %28)
  br i1 %29, label %then3, label %else4
then3:
  store i1 1, i1* %23
  br label %merge5
else4:
  %30 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %31 = call %nyx_string* @get_token_type(%Token %30)
  %32 = alloca %nyx_string*
  store %nyx_string* %31, %nyx_string** %32
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
  %47 = load %nyx_string*, %nyx_string** %32
  %48 = getelementptr [3 x i8], [3 x i8]* @.str1068, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1068.c, i8* %48)
  %50 = call i1 @nyx_string_equals(%nyx_string* %47, %nyx_string* %49)
  br i1 %50, label %sc_or_end7, label %sc_or_rhs6
sc_or_rhs6:
  %51 = load %nyx_string*, %nyx_string** %32
  %52 = getelementptr [4 x i8], [4 x i8]* @.str1069, i32 0, i32 0
  %53 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1069.c, i8* %52)
  %54 = call i1 @nyx_string_equals(%nyx_string* %51, %nyx_string* %53)
  store i1 %54, i1* %46
  br label %sc_or_end7
sc_or_end7:
  %55 = load i1, i1* %46
  br i1 %55, label %sc_or_end9, label %sc_or_rhs8
sc_or_rhs8:
  %56 = load %nyx_string*, %nyx_string** %32
  %57 = getelementptr [4 x i8], [4 x i8]* @.str1070, i32 0, i32 0
  %58 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1070.c, i8* %57)
  %59 = call i1 @nyx_string_equals(%nyx_string* %56, %nyx_string* %58)
  store i1 %59, i1* %45
  br label %sc_or_end9
sc_or_end9:
  %60 = load i1, i1* %45
  br i1 %60, label %sc_or_end11, label %sc_or_rhs10
sc_or_rhs10:
  %61 = load %nyx_string*, %nyx_string** %32
  %62 = getelementptr [6 x i8], [6 x i8]* @.str1071, i32 0, i32 0
  %63 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1071.c, i8* %62)
  %64 = call i1 @nyx_string_equals(%nyx_string* %61, %nyx_string* %63)
  store i1 %64, i1* %44
  br label %sc_or_end11
sc_or_end11:
  %65 = load i1, i1* %44
  br i1 %65, label %sc_or_end13, label %sc_or_rhs12
sc_or_rhs12:
  %66 = load %nyx_string*, %nyx_string** %32
  %67 = getelementptr [7 x i8], [7 x i8]* @.str1072, i32 0, i32 0
  %68 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1072.c, i8* %67)
  %69 = call i1 @nyx_string_equals(%nyx_string* %66, %nyx_string* %68)
  store i1 %69, i1* %43
  br label %sc_or_end13
sc_or_end13:
  %70 = load i1, i1* %43
  br i1 %70, label %sc_or_end15, label %sc_or_rhs14
sc_or_rhs14:
  %71 = load %nyx_string*, %nyx_string** %32
  %72 = getelementptr [5 x i8], [5 x i8]* @.str1073, i32 0, i32 0
  %73 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1073.c, i8* %72)
  %74 = call i1 @nyx_string_equals(%nyx_string* %71, %nyx_string* %73)
  store i1 %74, i1* %42
  br label %sc_or_end15
sc_or_end15:
  %75 = load i1, i1* %42
  br i1 %75, label %sc_or_end17, label %sc_or_rhs16
sc_or_rhs16:
  %76 = load %nyx_string*, %nyx_string** %32
  %77 = getelementptr [3 x i8], [3 x i8]* @.str1074, i32 0, i32 0
  %78 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1074.c, i8* %77)
  %79 = call i1 @nyx_string_equals(%nyx_string* %76, %nyx_string* %78)
  store i1 %79, i1* %41
  br label %sc_or_end17
sc_or_end17:
  %80 = load i1, i1* %41
  br i1 %80, label %sc_or_end19, label %sc_or_rhs18
sc_or_rhs18:
  %81 = load %nyx_string*, %nyx_string** %32
  %82 = getelementptr [6 x i8], [6 x i8]* @.str1075, i32 0, i32 0
  %83 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1075.c, i8* %82)
  %84 = call i1 @nyx_string_equals(%nyx_string* %81, %nyx_string* %83)
  store i1 %84, i1* %40
  br label %sc_or_end19
sc_or_end19:
  %85 = load i1, i1* %40
  br i1 %85, label %sc_or_end21, label %sc_or_rhs20
sc_or_rhs20:
  %86 = load %nyx_string*, %nyx_string** %32
  %87 = getelementptr [4 x i8], [4 x i8]* @.str1076, i32 0, i32 0
  %88 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1076.c, i8* %87)
  %89 = call i1 @nyx_string_equals(%nyx_string* %86, %nyx_string* %88)
  store i1 %89, i1* %39
  br label %sc_or_end21
sc_or_end21:
  %90 = load i1, i1* %39
  br i1 %90, label %sc_or_end23, label %sc_or_rhs22
sc_or_rhs22:
  %91 = load %nyx_string*, %nyx_string** %32
  %92 = getelementptr [7 x i8], [7 x i8]* @.str1077, i32 0, i32 0
  %93 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1077.c, i8* %92)
  %94 = call i1 @nyx_string_equals(%nyx_string* %91, %nyx_string* %93)
  store i1 %94, i1* %38
  br label %sc_or_end23
sc_or_end23:
  %95 = load i1, i1* %38
  br i1 %95, label %sc_or_end25, label %sc_or_rhs24
sc_or_rhs24:
  %96 = load %nyx_string*, %nyx_string** %32
  %97 = getelementptr [7 x i8], [7 x i8]* @.str1078, i32 0, i32 0
  %98 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1078.c, i8* %97)
  %99 = call i1 @nyx_string_equals(%nyx_string* %96, %nyx_string* %98)
  store i1 %99, i1* %37
  br label %sc_or_end25
sc_or_end25:
  %100 = load i1, i1* %37
  br i1 %100, label %sc_or_end27, label %sc_or_rhs26
sc_or_rhs26:
  %101 = load %nyx_string*, %nyx_string** %32
  %102 = getelementptr [7 x i8], [7 x i8]* @.str1079, i32 0, i32 0
  %103 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1079.c, i8* %102)
  %104 = call i1 @nyx_string_equals(%nyx_string* %101, %nyx_string* %103)
  store i1 %104, i1* %36
  br label %sc_or_end27
sc_or_end27:
  %105 = load i1, i1* %36
  br i1 %105, label %sc_or_end29, label %sc_or_rhs28
sc_or_rhs28:
  %106 = load %nyx_string*, %nyx_string** %32
  %107 = getelementptr [6 x i8], [6 x i8]* @.str1080, i32 0, i32 0
  %108 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1080.c, i8* %107)
  %109 = call i1 @nyx_string_equals(%nyx_string* %106, %nyx_string* %108)
  store i1 %109, i1* %35
  br label %sc_or_end29
sc_or_end29:
  %110 = load i1, i1* %35
  br i1 %110, label %sc_or_end31, label %sc_or_rhs30
sc_or_rhs30:
  %111 = load %nyx_string*, %nyx_string** %32
  %112 = getelementptr [5 x i8], [5 x i8]* @.str1081, i32 0, i32 0
  %113 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1081.c, i8* %112)
  %114 = call i1 @nyx_string_equals(%nyx_string* %111, %nyx_string* %113)
  store i1 %114, i1* %34
  br label %sc_or_end31
sc_or_end31:
  %115 = load i1, i1* %34
  br i1 %115, label %sc_or_end33, label %sc_or_rhs32
sc_or_rhs32:
  %116 = load %nyx_string*, %nyx_string** %32
  %117 = getelementptr [6 x i8], [6 x i8]* @.str1082, i32 0, i32 0
  %118 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1082.c, i8* %117)
  %119 = call i1 @nyx_string_equals(%nyx_string* %116, %nyx_string* %118)
  store i1 %119, i1* %33
  br label %sc_or_end33
sc_or_end33:
  %120 = load i1, i1* %33
  br i1 %120, label %then34, label %else35
then34:
  store i1 1, i1* %23
  br label %merge36
else35:
  %121 = load %nyx_string*, %nyx_string** %32
  %122 = getelementptr [12 x i8], [12 x i8]* @.str1083, i32 0, i32 0
  %123 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1083.c, i8* %122)
  %124 = call i1 @nyx_string_equals(%nyx_string* %121, %nyx_string* %123)
  br i1 %124, label %then37, label %else38
then37:
  store i1 1, i1* %23
  br label %merge39
else38:
  %125 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
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

