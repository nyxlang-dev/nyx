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
@.str168 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str168.c = internal global %nyx_string* null
@.str169 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str169.c = internal global %nyx_string* null
@.str170 = private unnamed_addr constant [4 x i8] c"DOT\00"
@.str170.c = internal global %nyx_string* null
@.str171 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str171.c = internal global %nyx_string* null
@.str172 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str172.c = internal global %nyx_string* null
@.str173 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str173.c = internal global %nyx_string* null
@.str174 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str174.c = internal global %nyx_string* null
@.str175 = private unnamed_addr constant [12 x i8] c"SHIFT_RIGHT\00"
@.str175.c = internal global %nyx_string* null
@.str176 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str176.c = internal global %nyx_string* null
@.str177 = private unnamed_addr constant [13 x i8] c"generic_call\00"
@.str177.c = internal global %nyx_string* null
@.str178 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str178.c = internal global %nyx_string* null
@.str179 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str179.c = internal global %nyx_string* null
@.str180 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str180.c = internal global %nyx_string* null
@.str181 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str181.c = internal global %nyx_string* null
@.str182 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str182.c = internal global %nyx_string* null
@.str183 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str183.c = internal global %nyx_string* null
@.str184 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str184.c = internal global %nyx_string* null
@.str185 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str185.c = internal global %nyx_string* null
@.str186 = private unnamed_addr constant [12 x i8] c"struct_init\00"
@.str186.c = internal global %nyx_string* null
@.str187 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str187.c = internal global %nyx_string* null
@.str188 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str188.c = internal global %nyx_string* null
@.str189 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str189.c = internal global %nyx_string* null
@.str190 = private unnamed_addr constant [5 x i8] c"call\00"
@.str190.c = internal global %nyx_string* null
@.str191 = private unnamed_addr constant [13 x i8] c"LEFT_BRACKET\00"
@.str191.c = internal global %nyx_string* null
@.str192 = private unnamed_addr constant [14 x i8] c"RIGHT_BRACKET\00"
@.str192.c = internal global %nyx_string* null
@.str193 = private unnamed_addr constant [6 x i8] c"index\00"
@.str193.c = internal global %nyx_string* null
@.str194 = private unnamed_addr constant [4 x i8] c"DOT\00"
@.str194.c = internal global %nyx_string* null
@.str195 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str195.c = internal global %nyx_string* null
@.str196 = private unnamed_addr constant [12 x i8] c"tuple_index\00"
@.str196.c = internal global %nyx_string* null
@.str197 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str197.c = internal global %nyx_string* null
@.str198 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str198.c = internal global %nyx_string* null
@.str199 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str199.c = internal global %nyx_string* null
@.str200 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str200.c = internal global %nyx_string* null
@.str201 = private unnamed_addr constant [12 x i8] c"method_call\00"
@.str201.c = internal global %nyx_string* null
@.str202 = private unnamed_addr constant [13 x i8] c"field_access\00"
@.str202.c = internal global %nyx_string* null
@.str203 = private unnamed_addr constant [9 x i8] c"QUESTION\00"
@.str203.c = internal global %nyx_string* null
@.str204 = private unnamed_addr constant [7 x i8] c"try_op\00"
@.str204.c = internal global %nyx_string* null
@.str205 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str205.c = internal global %nyx_string* null
@.str206 = private unnamed_addr constant [7 x i8] c"number\00"
@.str206.c = internal global %nyx_string* null
@.str207 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str207.c = internal global %nyx_string* null
@.str208 = private unnamed_addr constant [7 x i8] c"string\00"
@.str208.c = internal global %nyx_string* null
@.str209 = private unnamed_addr constant [5 x i8] c"CHAR\00"
@.str209.c = internal global %nyx_string* null
@.str210 = private unnamed_addr constant [5 x i8] c"char\00"
@.str210.c = internal global %nyx_string* null
@.str211 = private unnamed_addr constant [5 x i8] c"TRUE\00"
@.str211.c = internal global %nyx_string* null
@.str212 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str212.c = internal global %nyx_string* null
@.str213 = private unnamed_addr constant [5 x i8] c"true\00"
@.str213.c = internal global %nyx_string* null
@.str214 = private unnamed_addr constant [6 x i8] c"FALSE\00"
@.str214.c = internal global %nyx_string* null
@.str215 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str215.c = internal global %nyx_string* null
@.str216 = private unnamed_addr constant [6 x i8] c"false\00"
@.str216.c = internal global %nyx_string* null
@.str217 = private unnamed_addr constant [7 x i8] c"SIZEOF\00"
@.str217.c = internal global %nyx_string* null
@.str218 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str218.c = internal global %nyx_string* null
@.str219 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str219.c = internal global %nyx_string* null
@.str220 = private unnamed_addr constant [7 x i8] c"sizeof\00"
@.str220.c = internal global %nyx_string* null
@.str221 = private unnamed_addr constant [8 x i8] c"ALIGNOF\00"
@.str221.c = internal global %nyx_string* null
@.str222 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str222.c = internal global %nyx_string* null
@.str223 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str223.c = internal global %nyx_string* null
@.str224 = private unnamed_addr constant [8 x i8] c"alignof\00"
@.str224.c = internal global %nyx_string* null
@.str225 = private unnamed_addr constant [4 x i8] c"ASM\00"
@.str225.c = internal global %nyx_string* null
@.str226 = private unnamed_addr constant [2 x i8] c"0\00"
@.str226.c = internal global %nyx_string* null
@.str227 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str227.c = internal global %nyx_string* null
@.str228 = private unnamed_addr constant [9 x i8] c"volatile\00"
@.str228.c = internal global %nyx_string* null
@.str229 = private unnamed_addr constant [2 x i8] c"1\00"
@.str229.c = internal global %nyx_string* null
@.str230 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str230.c = internal global %nyx_string* null
@.str231 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str231.c = internal global %nyx_string* null
@.str232 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str232.c = internal global %nyx_string* null
@.str233 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str233.c = internal global %nyx_string* null
@.str234 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str234.c = internal global %nyx_string* null
@.str235 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str235.c = internal global %nyx_string* null
@.str236 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str236.c = internal global %nyx_string* null
@.str237 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str237.c = internal global %nyx_string* null
@.str238 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str238.c = internal global %nyx_string* null
@.str239 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str239.c = internal global %nyx_string* null
@.str240 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str240.c = internal global %nyx_string* null
@.str241 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str241.c = internal global %nyx_string* null
@.str242 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str242.c = internal global %nyx_string* null
@.str243 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str243.c = internal global %nyx_string* null
@.str244 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str244.c = internal global %nyx_string* null
@.str245 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str245.c = internal global %nyx_string* null
@.str246 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str246.c = internal global %nyx_string* null
@.str247 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str247.c = internal global %nyx_string* null
@.str248 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str248.c = internal global %nyx_string* null
@.str249 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str249.c = internal global %nyx_string* null
@.str250 = private unnamed_addr constant [15 x i8] c"inline_asm_gcc\00"
@.str250.c = internal global %nyx_string* null
@.str251 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str251.c = internal global %nyx_string* null
@.str252 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str252.c = internal global %nyx_string* null
@.str253 = private unnamed_addr constant [4 x i8] c"out\00"
@.str253.c = internal global %nyx_string* null
@.str254 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str254.c = internal global %nyx_string* null
@.str255 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str255.c = internal global %nyx_string* null
@.str256 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str256.c = internal global %nyx_string* null
@.str257 = private unnamed_addr constant [3 x i8] c"in\00"
@.str257.c = internal global %nyx_string* null
@.str258 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str258.c = internal global %nyx_string* null
@.str259 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str259.c = internal global %nyx_string* null
@.str260 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str260.c = internal global %nyx_string* null
@.str261 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str261.c = internal global %nyx_string* null
@.str262 = private unnamed_addr constant [8 x i8] c"clobber\00"
@.str262.c = internal global %nyx_string* null
@.str263 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str263.c = internal global %nyx_string* null
@.str264 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str264.c = internal global %nyx_string* null
@.str265 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str265.c = internal global %nyx_string* null
@.str266 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str266.c = internal global %nyx_string* null
@.str267 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str267.c = internal global %nyx_string* null
@.str268 = private unnamed_addr constant [11 x i8] c"inline_asm\00"
@.str268.c = internal global %nyx_string* null
@.str269 = private unnamed_addr constant [7 x i8] c"ASSERT\00"
@.str269.c = internal global %nyx_string* null
@.str270 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str270.c = internal global %nyx_string* null
@.str271 = private unnamed_addr constant [7 x i8] c"string\00"
@.str271.c = internal global %nyx_string* null
@.str272 = private unnamed_addr constant [17 x i8] c"assertion failed\00"
@.str272.c = internal global %nyx_string* null
@.str273 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str273.c = internal global %nyx_string* null
@.str274 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str274.c = internal global %nyx_string* null
@.str275 = private unnamed_addr constant [7 x i8] c"assert\00"
@.str275.c = internal global %nyx_string* null
@.str276 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str276.c = internal global %nyx_string* null
@.str277 = private unnamed_addr constant [4 x i8] c"NOT\00"
@.str277.c = internal global %nyx_string* null
@.str278 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str278.c = internal global %nyx_string* null
@.str279 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str279.c = internal global %nyx_string* null
@.str280 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str280.c = internal global %nyx_string* null
@.str281 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str281.c = internal global %nyx_string* null
@.str282 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str282.c = internal global %nyx_string* null
@.str283 = private unnamed_addr constant [13 x i8] c"LEFT_BRACKET\00"
@.str283.c = internal global %nyx_string* null
@.str284 = private unnamed_addr constant [6 x i8] c"MATCH\00"
@.str284.c = internal global %nyx_string* null
@.str285 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str285.c = internal global %nyx_string* null
@.str286 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str286.c = internal global %nyx_string* null
@.str287 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str287.c = internal global %nyx_string* null
@.str288 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str288.c = internal global %nyx_string* null
@.str289 = private unnamed_addr constant [10 x i8] c"tuple_lit\00"
@.str289.c = internal global %nyx_string* null
@.str290 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str290.c = internal global %nyx_string* null
@.str291 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str291.c = internal global %nyx_string* null
@.str292 = private unnamed_addr constant [10 x i8] c"__lambda_\00"
@.str292.c = internal global %nyx_string* null
@.str293 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str293.c = internal global %nyx_string* null
@.str294 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str294.c = internal global %nyx_string* null
@.str295 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str295.c = internal global %nyx_string* null
@.str296 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str296.c = internal global %nyx_string* null
@.str297 = private unnamed_addr constant [4 x i8] c"int\00"
@.str297.c = internal global %nyx_string* null
@.str298 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str298.c = internal global %nyx_string* null
@.str299 = private unnamed_addr constant [1 x i8] c"\00"
@.str299.c = internal global %nyx_string* null
@.str300 = private unnamed_addr constant [6 x i8] c"ARROW\00"
@.str300.c = internal global %nyx_string* null
@.str301 = private unnamed_addr constant [9 x i8] c"function\00"
@.str301.c = internal global %nyx_string* null
@.str302 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str302.c = internal global %nyx_string* null
@.str303 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str303.c = internal global %nyx_string* null
@.str304 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str304.c = internal global %nyx_string* null
@.str305 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str305.c = internal global %nyx_string* null
@.str306 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str306.c = internal global %nyx_string* null
@.str307 = private unnamed_addr constant [35 x i8] c"ERROR: token inesperado en primary\00"
@.str307.c = internal global %nyx_string* null
@.str308 = private unnamed_addr constant [6 x i8] c"error\00"
@.str308.c = internal global %nyx_string* null
@.str309 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str309.c = internal global %nyx_string* null
@.str310 = private unnamed_addr constant [4 x i8] c"EOF\00"
@.str310.c = internal global %nyx_string* null
@.str311 = private unnamed_addr constant [8 x i8] c"NYX0104\00"
@.str311.c = internal global %nyx_string* null
@.str312 = private unnamed_addr constant [53 x i8] c"fin de archivo inesperado: falta '}' del map literal\00"
@.str312.c = internal global %nyx_string* null
@.str313 = private unnamed_addr constant [59 x i8] c"unexpected end of file: missing closing '}' of map literal\00"
@.str313.c = internal global %nyx_string* null
@.str314 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str314.c = internal global %nyx_string* null
@.str315 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str315.c = internal global %nyx_string* null
@.str316 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str316.c = internal global %nyx_string* null
@.str317 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str317.c = internal global %nyx_string* null
@.str318 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str318.c = internal global %nyx_string* null
@.str319 = private unnamed_addr constant [12 x i8] c"map_literal\00"
@.str319.c = internal global %nyx_string* null
@.str320 = private unnamed_addr constant [13 x i8] c"LEFT_BRACKET\00"
@.str320.c = internal global %nyx_string* null
@.str321 = private unnamed_addr constant [14 x i8] c"RIGHT_BRACKET\00"
@.str321.c = internal global %nyx_string* null
@.str322 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str322.c = internal global %nyx_string* null
@.str323 = private unnamed_addr constant [6 x i8] c"array\00"
@.str323.c = internal global %nyx_string* null
@.str324 = private unnamed_addr constant [5 x i8] c"ENUM\00"
@.str324.c = internal global %nyx_string* null
@.str325 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str325.c = internal global %nyx_string* null
@.str326 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str326.c = internal global %nyx_string* null
@.str327 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str327.c = internal global %nyx_string* null
@.str328 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str328.c = internal global %nyx_string* null
@.str329 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str329.c = internal global %nyx_string* null
@.str330 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str330.c = internal global %nyx_string* null
@.str331 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str331.c = internal global %nyx_string* null
@.str332 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str332.c = internal global %nyx_string* null
@.str333 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str333.c = internal global %nyx_string* null
@.str334 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str334.c = internal global %nyx_string* null
@.str335 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str335.c = internal global %nyx_string* null
@.str336 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str336.c = internal global %nyx_string* null
@.str337 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str337.c = internal global %nyx_string* null
@.str338 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str338.c = internal global %nyx_string* null
@.str339 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str339.c = internal global %nyx_string* null
@.str340 = private unnamed_addr constant [9 x i8] c"enum_def\00"
@.str340.c = internal global %nyx_string* null
@.str341 = private unnamed_addr constant [9 x i8] c"wildcard\00"
@.str341.c = internal global %nyx_string* null
@.str342 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str342.c = internal global %nyx_string* null
@.str343 = private unnamed_addr constant [2 x i8] c".\00"
@.str343.c = internal global %nyx_string* null
@.str344 = private unnamed_addr constant [16 x i8] c"literal_pattern\00"
@.str344.c = internal global %nyx_string* null
@.str345 = private unnamed_addr constant [6 x i8] c"float\00"
@.str345.c = internal global %nyx_string* null
@.str346 = private unnamed_addr constant [16 x i8] c"RANGE_INCLUSIVE\00"
@.str346.c = internal global %nyx_string* null
@.str347 = private unnamed_addr constant [1 x i8] c"\00"
@.str347.c = internal global %nyx_string* null
@.str348 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str348.c = internal global %nyx_string* null
@.str349 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str349.c = internal global %nyx_string* null
@.str350 = private unnamed_addr constant [2 x i8] c"-\00"
@.str350.c = internal global %nyx_string* null
@.str351 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str351.c = internal global %nyx_string* null
@.str352 = private unnamed_addr constant [14 x i8] c"range_pattern\00"
@.str352.c = internal global %nyx_string* null
@.str353 = private unnamed_addr constant [5 x i8] c"true\00"
@.str353.c = internal global %nyx_string* null
@.str354 = private unnamed_addr constant [4 x i8] c"int\00"
@.str354.c = internal global %nyx_string* null
@.str355 = private unnamed_addr constant [6 x i8] c"RANGE\00"
@.str355.c = internal global %nyx_string* null
@.str356 = private unnamed_addr constant [1 x i8] c"\00"
@.str356.c = internal global %nyx_string* null
@.str357 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str357.c = internal global %nyx_string* null
@.str358 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str358.c = internal global %nyx_string* null
@.str359 = private unnamed_addr constant [2 x i8] c"-\00"
@.str359.c = internal global %nyx_string* null
@.str360 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str360.c = internal global %nyx_string* null
@.str361 = private unnamed_addr constant [14 x i8] c"range_pattern\00"
@.str361.c = internal global %nyx_string* null
@.str362 = private unnamed_addr constant [6 x i8] c"false\00"
@.str362.c = internal global %nyx_string* null
@.str363 = private unnamed_addr constant [4 x i8] c"int\00"
@.str363.c = internal global %nyx_string* null
@.str364 = private unnamed_addr constant [16 x i8] c"literal_pattern\00"
@.str364.c = internal global %nyx_string* null
@.str365 = private unnamed_addr constant [4 x i8] c"int\00"
@.str365.c = internal global %nyx_string* null
@.str366 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str366.c = internal global %nyx_string* null
@.str367 = private unnamed_addr constant [16 x i8] c"literal_pattern\00"
@.str367.c = internal global %nyx_string* null
@.str368 = private unnamed_addr constant [7 x i8] c"string\00"
@.str368.c = internal global %nyx_string* null
@.str369 = private unnamed_addr constant [5 x i8] c"TRUE\00"
@.str369.c = internal global %nyx_string* null
@.str370 = private unnamed_addr constant [16 x i8] c"literal_pattern\00"
@.str370.c = internal global %nyx_string* null
@.str371 = private unnamed_addr constant [5 x i8] c"true\00"
@.str371.c = internal global %nyx_string* null
@.str372 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str372.c = internal global %nyx_string* null
@.str373 = private unnamed_addr constant [6 x i8] c"FALSE\00"
@.str373.c = internal global %nyx_string* null
@.str374 = private unnamed_addr constant [16 x i8] c"literal_pattern\00"
@.str374.c = internal global %nyx_string* null
@.str375 = private unnamed_addr constant [6 x i8] c"false\00"
@.str375.c = internal global %nyx_string* null
@.str376 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str376.c = internal global %nyx_string* null
@.str377 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str377.c = internal global %nyx_string* null
@.str378 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str378.c = internal global %nyx_string* null
@.str379 = private unnamed_addr constant [2 x i8] c".\00"
@.str379.c = internal global %nyx_string* null
@.str380 = private unnamed_addr constant [16 x i8] c"literal_pattern\00"
@.str380.c = internal global %nyx_string* null
@.str381 = private unnamed_addr constant [2 x i8] c"-\00"
@.str381.c = internal global %nyx_string* null
@.str382 = private unnamed_addr constant [6 x i8] c"float\00"
@.str382.c = internal global %nyx_string* null
@.str383 = private unnamed_addr constant [16 x i8] c"RANGE_INCLUSIVE\00"
@.str383.c = internal global %nyx_string* null
@.str384 = private unnamed_addr constant [1 x i8] c"\00"
@.str384.c = internal global %nyx_string* null
@.str385 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str385.c = internal global %nyx_string* null
@.str386 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str386.c = internal global %nyx_string* null
@.str387 = private unnamed_addr constant [2 x i8] c"-\00"
@.str387.c = internal global %nyx_string* null
@.str388 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str388.c = internal global %nyx_string* null
@.str389 = private unnamed_addr constant [14 x i8] c"range_pattern\00"
@.str389.c = internal global %nyx_string* null
@.str390 = private unnamed_addr constant [2 x i8] c"-\00"
@.str390.c = internal global %nyx_string* null
@.str391 = private unnamed_addr constant [5 x i8] c"true\00"
@.str391.c = internal global %nyx_string* null
@.str392 = private unnamed_addr constant [4 x i8] c"int\00"
@.str392.c = internal global %nyx_string* null
@.str393 = private unnamed_addr constant [6 x i8] c"RANGE\00"
@.str393.c = internal global %nyx_string* null
@.str394 = private unnamed_addr constant [1 x i8] c"\00"
@.str394.c = internal global %nyx_string* null
@.str395 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str395.c = internal global %nyx_string* null
@.str396 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str396.c = internal global %nyx_string* null
@.str397 = private unnamed_addr constant [2 x i8] c"-\00"
@.str397.c = internal global %nyx_string* null
@.str398 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str398.c = internal global %nyx_string* null
@.str399 = private unnamed_addr constant [14 x i8] c"range_pattern\00"
@.str399.c = internal global %nyx_string* null
@.str400 = private unnamed_addr constant [2 x i8] c"-\00"
@.str400.c = internal global %nyx_string* null
@.str401 = private unnamed_addr constant [6 x i8] c"false\00"
@.str401.c = internal global %nyx_string* null
@.str402 = private unnamed_addr constant [4 x i8] c"int\00"
@.str402.c = internal global %nyx_string* null
@.str403 = private unnamed_addr constant [16 x i8] c"literal_pattern\00"
@.str403.c = internal global %nyx_string* null
@.str404 = private unnamed_addr constant [2 x i8] c"-\00"
@.str404.c = internal global %nyx_string* null
@.str405 = private unnamed_addr constant [4 x i8] c"int\00"
@.str405.c = internal global %nyx_string* null
@.str406 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str406.c = internal global %nyx_string* null
@.str407 = private unnamed_addr constant [2 x i8] c"_\00"
@.str407.c = internal global %nyx_string* null
@.str408 = private unnamed_addr constant [4 x i8] c"DOT\00"
@.str408.c = internal global %nyx_string* null
@.str409 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str409.c = internal global %nyx_string* null
@.str410 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str410.c = internal global %nyx_string* null
@.str411 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str411.c = internal global %nyx_string* null
@.str412 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str412.c = internal global %nyx_string* null
@.str413 = private unnamed_addr constant [19 x i8] c"identifier_pattern\00"
@.str413.c = internal global %nyx_string* null
@.str414 = private unnamed_addr constant [9 x i8] c"wildcard\00"
@.str414.c = internal global %nyx_string* null
@.str415 = private unnamed_addr constant [21 x i8] c"nested_match_pattern\00"
@.str415.c = internal global %nyx_string* null
@.str416 = private unnamed_addr constant [9 x i8] c"wildcard\00"
@.str416.c = internal global %nyx_string* null
@.str417 = private unnamed_addr constant [2 x i8] c"_\00"
@.str417.c = internal global %nyx_string* null
@.str418 = private unnamed_addr constant [14 x i8] c"match_pattern\00"
@.str418.c = internal global %nyx_string* null
@.str419 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str419.c = internal global %nyx_string* null
@.str420 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str420.c = internal global %nyx_string* null
@.str421 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str421.c = internal global %nyx_string* null
@.str422 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str422.c = internal global %nyx_string* null
@.str423 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str423.c = internal global %nyx_string* null
@.str424 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str424.c = internal global %nyx_string* null
@.str425 = private unnamed_addr constant [15 x i8] c"struct_pattern\00"
@.str425.c = internal global %nyx_string* null
@.str426 = private unnamed_addr constant [19 x i8] c"identifier_pattern\00"
@.str426.c = internal global %nyx_string* null
@.str427 = private unnamed_addr constant [5 x i8] c"PIPE\00"
@.str427.c = internal global %nyx_string* null
@.str428 = private unnamed_addr constant [5 x i8] c"PIPE\00"
@.str428.c = internal global %nyx_string* null
@.str429 = private unnamed_addr constant [11 x i8] c"or_pattern\00"
@.str429.c = internal global %nyx_string* null
@.str430 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str430.c = internal global %nyx_string* null
@.str431 = private unnamed_addr constant [3 x i8] c"IF\00"
@.str431.c = internal global %nyx_string* null
@.str432 = private unnamed_addr constant [12 x i8] c"ARROW_MATCH\00"
@.str432.c = internal global %nyx_string* null
@.str433 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str433.c = internal global %nyx_string* null
@.str434 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str434.c = internal global %nyx_string* null
@.str435 = private unnamed_addr constant [10 x i8] c"match_arm\00"
@.str435.c = internal global %nyx_string* null
@.str436 = private unnamed_addr constant [6 x i8] c"MATCH\00"
@.str436.c = internal global %nyx_string* null
@.str437 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str437.c = internal global %nyx_string* null
@.str438 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str438.c = internal global %nyx_string* null
@.str439 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str439.c = internal global %nyx_string* null
@.str440 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str440.c = internal global %nyx_string* null
@.str441 = private unnamed_addr constant [6 x i8] c"match\00"
@.str441.c = internal global %nyx_string* null
@.str442 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str442.c = internal global %nyx_string* null
@.str443 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str443.c = internal global %nyx_string* null
@.str444 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str444.c = internal global %nyx_string* null
@.str445 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str445.c = internal global %nyx_string* null
@.str446 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str446.c = internal global %nyx_string* null
@.str447 = private unnamed_addr constant [12 x i8] c"struct_init\00"
@.str447.c = internal global %nyx_string* null
@.str448 = private unnamed_addr constant [4 x i8] c"LET\00"
@.str448.c = internal global %nyx_string* null
@.str449 = private unnamed_addr constant [4 x i8] c"VAR\00"
@.str449.c = internal global %nyx_string* null
@.str450 = private unnamed_addr constant [6 x i8] c"CONST\00"
@.str450.c = internal global %nyx_string* null
@.str451 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str451.c = internal global %nyx_string* null
@.str452 = private unnamed_addr constant [5 x i8] c"HASH\00"
@.str452.c = internal global %nyx_string* null
@.str453 = private unnamed_addr constant [13 x i8] c"LEFT_BRACKET\00"
@.str453.c = internal global %nyx_string* null
@.str454 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str454.c = internal global %nyx_string* null
@.str455 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str455.c = internal global %nyx_string* null
@.str456 = private unnamed_addr constant [1 x i8] c"\00"
@.str456.c = internal global %nyx_string* null
@.str457 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str457.c = internal global %nyx_string* null
@.str458 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str458.c = internal global %nyx_string* null
@.str459 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str459.c = internal global %nyx_string* null
@.str460 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str460.c = internal global %nyx_string* null
@.str461 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str461.c = internal global %nyx_string* null
@.str462 = private unnamed_addr constant [2 x i8] c",\00"
@.str462.c = internal global %nyx_string* null
@.str463 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str463.c = internal global %nyx_string* null
@.str464 = private unnamed_addr constant [2 x i8] c"(\00"
@.str464.c = internal global %nyx_string* null
@.str465 = private unnamed_addr constant [2 x i8] c")\00"
@.str465.c = internal global %nyx_string* null
@.str466 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str466.c = internal global %nyx_string* null
@.str467 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str467.c = internal global %nyx_string* null
@.str468 = private unnamed_addr constant [2 x i8] c"=\00"
@.str468.c = internal global %nyx_string* null
@.str469 = private unnamed_addr constant [14 x i8] c"RIGHT_BRACKET\00"
@.str469.c = internal global %nyx_string* null
@.str470 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str470.c = internal global %nyx_string* null
@.str471 = private unnamed_addr constant [9 x i8] c"function\00"
@.str471.c = internal global %nyx_string* null
@.str472 = private unnamed_addr constant [7 x i8] c"STRUCT\00"
@.str472.c = internal global %nyx_string* null
@.str473 = private unnamed_addr constant [7 x i8] c"struct\00"
@.str473.c = internal global %nyx_string* null
@.str474 = private unnamed_addr constant [5 x i8] c"ENUM\00"
@.str474.c = internal global %nyx_string* null
@.str475 = private unnamed_addr constant [5 x i8] c"enum\00"
@.str475.c = internal global %nyx_string* null
@.str476 = private unnamed_addr constant [6 x i8] c"error\00"
@.str476.c = internal global %nyx_string* null
@.str477 = private unnamed_addr constant [49 x i8] c"#[...] solo soportado antes de fn, struct o enum\00"
@.str477.c = internal global %nyx_string* null
@.str478 = private unnamed_addr constant [7 x i8] c"STRUCT\00"
@.str478.c = internal global %nyx_string* null
@.str479 = private unnamed_addr constant [5 x i8] c"ENUM\00"
@.str479.c = internal global %nyx_string* null
@.str480 = private unnamed_addr constant [6 x i8] c"MATCH\00"
@.str480.c = internal global %nyx_string* null
@.str481 = private unnamed_addr constant [3 x i8] c"IF\00"
@.str481.c = internal global %nyx_string* null
@.str482 = private unnamed_addr constant [6 x i8] c"WHILE\00"
@.str482.c = internal global %nyx_string* null
@.str483 = private unnamed_addr constant [4 x i8] c"FOR\00"
@.str483.c = internal global %nyx_string* null
@.str484 = private unnamed_addr constant [7 x i8] c"RETURN\00"
@.str484.c = internal global %nyx_string* null
@.str485 = private unnamed_addr constant [6 x i8] c"BREAK\00"
@.str485.c = internal global %nyx_string* null
@.str486 = private unnamed_addr constant [6 x i8] c"break\00"
@.str486.c = internal global %nyx_string* null
@.str487 = private unnamed_addr constant [9 x i8] c"CONTINUE\00"
@.str487.c = internal global %nyx_string* null
@.str488 = private unnamed_addr constant [9 x i8] c"continue\00"
@.str488.c = internal global %nyx_string* null
@.str489 = private unnamed_addr constant [7 x i8] c"EXPORT\00"
@.str489.c = internal global %nyx_string* null
@.str490 = private unnamed_addr constant [4 x i8] c"PUB\00"
@.str490.c = internal global %nyx_string* null
@.str491 = private unnamed_addr constant [7 x i8] c"IMPORT\00"
@.str491.c = internal global %nyx_string* null
@.str492 = private unnamed_addr constant [6 x i8] c"TRAIT\00"
@.str492.c = internal global %nyx_string* null
@.str493 = private unnamed_addr constant [5 x i8] c"IMPL\00"
@.str493.c = internal global %nyx_string* null
@.str494 = private unnamed_addr constant [5 x i8] c"TEST\00"
@.str494.c = internal global %nyx_string* null
@.str495 = private unnamed_addr constant [7 x i8] c"EXTERN\00"
@.str495.c = internal global %nyx_string* null
@.str496 = private unnamed_addr constant [7 x i8] c"UNSAFE\00"
@.str496.c = internal global %nyx_string* null
@.str497 = private unnamed_addr constant [13 x i8] c"unsafe_block\00"
@.str497.c = internal global %nyx_string* null
@.str498 = private unnamed_addr constant [7 x i8] c"STATIC\00"
@.str498.c = internal global %nyx_string* null
@.str499 = private unnamed_addr constant [7 x i8] c"MODULE\00"
@.str499.c = internal global %nyx_string* null
@.str500 = private unnamed_addr constant [6 x i8] c"DEFER\00"
@.str500.c = internal global %nyx_string* null
@.str501 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str501.c = internal global %nyx_string* null
@.str502 = private unnamed_addr constant [6 x i8] c"defer\00"
@.str502.c = internal global %nyx_string* null
@.str503 = private unnamed_addr constant [6 x i8] c"block\00"
@.str503.c = internal global %nyx_string* null
@.str504 = private unnamed_addr constant [6 x i8] c"defer\00"
@.str504.c = internal global %nyx_string* null
@.str505 = private unnamed_addr constant [4 x i8] c"TRY\00"
@.str505.c = internal global %nyx_string* null
@.str506 = private unnamed_addr constant [6 x i8] c"THROW\00"
@.str506.c = internal global %nyx_string* null
@.str507 = private unnamed_addr constant [6 x i8] c"ASYNC\00"
@.str507.c = internal global %nyx_string* null
@.str508 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str508.c = internal global %nyx_string* null
@.str509 = private unnamed_addr constant [5 x i8] c"type\00"
@.str509.c = internal global %nyx_string* null
@.str510 = private unnamed_addr constant [6 x i8] c"macro\00"
@.str510.c = internal global %nyx_string* null
@.str511 = private unnamed_addr constant [6 x i8] c"bench\00"
@.str511.c = internal global %nyx_string* null
@.str512 = private unnamed_addr constant [6 x i8] c"spawn\00"
@.str512.c = internal global %nyx_string* null
@.str513 = private unnamed_addr constant [7 x i8] c"select\00"
@.str513.c = internal global %nyx_string* null
@.str514 = private unnamed_addr constant [5 x i8] c"safe\00"
@.str514.c = internal global %nyx_string* null
@.str515 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str515.c = internal global %nyx_string* null
@.str516 = private unnamed_addr constant [9 x i8] c"function\00"
@.str516.c = internal global %nyx_string* null
@.str517 = private unnamed_addr constant [5 x i8] c"safe\00"
@.str517.c = internal global %nyx_string* null
@.str518 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str518.c = internal global %nyx_string* null
@.str519 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str519.c = internal global %nyx_string* null
@.str520 = private unnamed_addr constant [13 x i8] c"deref_assign\00"
@.str520.c = internal global %nyx_string* null
@.str521 = private unnamed_addr constant [6 x i8] c"deref\00"
@.str521.c = internal global %nyx_string* null
@.str522 = private unnamed_addr constant [9 x i8] c"__spawn_\00"
@.str522.c = internal global %nyx_string* null
@.str523 = private unnamed_addr constant [7 x i8] c"return\00"
@.str523.c = internal global %nyx_string* null
@.str524 = private unnamed_addr constant [8 x i8] c"integer\00"
@.str524.c = internal global %nyx_string* null
@.str525 = private unnamed_addr constant [9 x i8] c"function\00"
@.str525.c = internal global %nyx_string* null
@.str526 = private unnamed_addr constant [4 x i8] c"int\00"
@.str526.c = internal global %nyx_string* null
@.str527 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str527.c = internal global %nyx_string* null
@.str528 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str528.c = internal global %nyx_string* null
@.str529 = private unnamed_addr constant [11 x i8] c"__go_spawn\00"
@.str529.c = internal global %nyx_string* null
@.str530 = private unnamed_addr constant [5 x i8] c"call\00"
@.str530.c = internal global %nyx_string* null
@.str531 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str531.c = internal global %nyx_string* null
@.str532 = private unnamed_addr constant [6 x i8] c"block\00"
@.str532.c = internal global %nyx_string* null
@.str533 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str533.c = internal global %nyx_string* null
@.str534 = private unnamed_addr constant [8 x i8] c"default\00"
@.str534.c = internal global %nyx_string* null
@.str535 = private unnamed_addr constant [12 x i8] c"ARROW_MATCH\00"
@.str535.c = internal global %nyx_string* null
@.str536 = private unnamed_addr constant [5 x i8] c"case\00"
@.str536.c = internal global %nyx_string* null
@.str537 = private unnamed_addr constant [12 x i8] c"ARROW_MATCH\00"
@.str537.c = internal global %nyx_string* null
@.str538 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str538.c = internal global %nyx_string* null
@.str539 = private unnamed_addr constant [12 x i8] c"select_stmt\00"
@.str539.c = internal global %nyx_string* null
@.str540 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str540.c = internal global %nyx_string* null
@.str541 = private unnamed_addr constant [7 x i8] c"100000\00"
@.str541.c = internal global %nyx_string* null
@.str542 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str542.c = internal global %nyx_string* null
@.str543 = private unnamed_addr constant [11 x i8] c"bench_decl\00"
@.str543.c = internal global %nyx_string* null
@.str544 = private unnamed_addr constant [5 x i8] c"TEST\00"
@.str544.c = internal global %nyx_string* null
@.str545 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str545.c = internal global %nyx_string* null
@.str546 = private unnamed_addr constant [10 x i8] c"test_decl\00"
@.str546.c = internal global %nyx_string* null
@.str547 = private unnamed_addr constant [7 x i8] c"STATIC\00"
@.str547.c = internal global %nyx_string* null
@.str548 = private unnamed_addr constant [4 x i8] c"VAR\00"
@.str548.c = internal global %nyx_string* null
@.str549 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str549.c = internal global %nyx_string* null
@.str550 = private unnamed_addr constant [4 x i8] c"int\00"
@.str550.c = internal global %nyx_string* null
@.str551 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str551.c = internal global %nyx_string* null
@.str552 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str552.c = internal global %nyx_string* null
@.str553 = private unnamed_addr constant [11 x i8] c"static_var\00"
@.str553.c = internal global %nyx_string* null
@.str554 = private unnamed_addr constant [7 x i8] c"EXTERN\00"
@.str554.c = internal global %nyx_string* null
@.str555 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str555.c = internal global %nyx_string* null
@.str556 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str556.c = internal global %nyx_string* null
@.str557 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str557.c = internal global %nyx_string* null
@.str558 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str558.c = internal global %nyx_string* null
@.str559 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str559.c = internal global %nyx_string* null
@.str560 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str560.c = internal global %nyx_string* null
@.str561 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str561.c = internal global %nyx_string* null
@.str562 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str562.c = internal global %nyx_string* null
@.str563 = private unnamed_addr constant [5 x i8] c"void\00"
@.str563.c = internal global %nyx_string* null
@.str564 = private unnamed_addr constant [6 x i8] c"ARROW\00"
@.str564.c = internal global %nyx_string* null
@.str565 = private unnamed_addr constant [10 x i8] c"extern_fn\00"
@.str565.c = internal global %nyx_string* null
@.str566 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str566.c = internal global %nyx_string* null
@.str567 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str567.c = internal global %nyx_string* null
@.str568 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str568.c = internal global %nyx_string* null
@.str569 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str569.c = internal global %nyx_string* null
@.str570 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str570.c = internal global %nyx_string* null
@.str571 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str571.c = internal global %nyx_string* null
@.str572 = private unnamed_addr constant [12 x i8] c"ARROW_MATCH\00"
@.str572.c = internal global %nyx_string* null
@.str573 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str573.c = internal global %nyx_string* null
@.str574 = private unnamed_addr constant [1 x i8] c"\00"
@.str574.c = internal global %nyx_string* null
@.str575 = private unnamed_addr constant [2 x i8] c",\00"
@.str575.c = internal global %nyx_string* null
@.str576 = private unnamed_addr constant [10 x i8] c"macro_def\00"
@.str576.c = internal global %nyx_string* null
@.str577 = private unnamed_addr constant [4 x i8] c"NOT\00"
@.str577.c = internal global %nyx_string* null
@.str578 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str578.c = internal global %nyx_string* null
@.str579 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str579.c = internal global %nyx_string* null
@.str580 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str580.c = internal global %nyx_string* null
@.str581 = private unnamed_addr constant [1 x i8] c"\00"
@.str581.c = internal global %nyx_string* null
@.str582 = private unnamed_addr constant [2 x i8] c",\00"
@.str582.c = internal global %nyx_string* null
@.str583 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str583.c = internal global %nyx_string* null
@.str584 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str584.c = internal global %nyx_string* null
@.str585 = private unnamed_addr constant [5 x i8] c"PIPE\00"
@.str585.c = internal global %nyx_string* null
@.str586 = private unnamed_addr constant [5 x i8] c"PIPE\00"
@.str586.c = internal global %nyx_string* null
@.str587 = private unnamed_addr constant [9 x i8] c"enum_def\00"
@.str587.c = internal global %nyx_string* null
@.str588 = private unnamed_addr constant [11 x i8] c"type_alias\00"
@.str588.c = internal global %nyx_string* null
@.str589 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str589.c = internal global %nyx_string* null
@.str590 = private unnamed_addr constant [2 x i8] c"(\00"
@.str590.c = internal global %nyx_string* null
@.str591 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str591.c = internal global %nyx_string* null
@.str592 = private unnamed_addr constant [2 x i8] c",\00"
@.str592.c = internal global %nyx_string* null
@.str593 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str593.c = internal global %nyx_string* null
@.str594 = private unnamed_addr constant [2 x i8] c")\00"
@.str594.c = internal global %nyx_string* null
@.str595 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str595.c = internal global %nyx_string* null
@.str596 = private unnamed_addr constant [3 x i8] c"Fn\00"
@.str596.c = internal global %nyx_string* null
@.str597 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str597.c = internal global %nyx_string* null
@.str598 = private unnamed_addr constant [2 x i8] c"*\00"
@.str598.c = internal global %nyx_string* null
@.str599 = private unnamed_addr constant [4 x i8] c"AMP\00"
@.str599.c = internal global %nyx_string* null
@.str600 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str600.c = internal global %nyx_string* null
@.str601 = private unnamed_addr constant [1 x i8] c"'"
@.str602 = private unnamed_addr constant [4 x i8] c"mut\00"
@.str602.c = internal global %nyx_string* null
@.str603 = private unnamed_addr constant [6 x i8] c"&mut \00"
@.str603.c = internal global %nyx_string* null
@.str604 = private unnamed_addr constant [2 x i8] c"&\00"
@.str604.c = internal global %nyx_string* null
@.str605 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str605.c = internal global %nyx_string* null
@.str606 = private unnamed_addr constant [13 x i8] c"LEFT_BRACKET\00"
@.str606.c = internal global %nyx_string* null
@.str607 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str607.c = internal global %nyx_string* null
@.str608 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str608.c = internal global %nyx_string* null
@.str609 = private unnamed_addr constant [14 x i8] c"RIGHT_BRACKET\00"
@.str609.c = internal global %nyx_string* null
@.str610 = private unnamed_addr constant [2 x i8] c"[\00"
@.str610.c = internal global %nyx_string* null
@.str611 = private unnamed_addr constant [2 x i8] c":\00"
@.str611.c = internal global %nyx_string* null
@.str612 = private unnamed_addr constant [2 x i8] c"]\00"
@.str612.c = internal global %nyx_string* null
@.str613 = private unnamed_addr constant [4 x i8] c"DYN\00"
@.str613.c = internal global %nyx_string* null
@.str614 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str614.c = internal global %nyx_string* null
@.str615 = private unnamed_addr constant [5 x i8] c"dyn \00"
@.str615.c = internal global %nyx_string* null
@.str616 = private unnamed_addr constant [5 x i8] c"IMPL\00"
@.str616.c = internal global %nyx_string* null
@.str617 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str617.c = internal global %nyx_string* null
@.str618 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str618.c = internal global %nyx_string* null
@.str619 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str619.c = internal global %nyx_string* null
@.str620 = private unnamed_addr constant [2 x i8] c"+\00"
@.str620.c = internal global %nyx_string* null
@.str621 = private unnamed_addr constant [5 x i8] c"dyn \00"
@.str621.c = internal global %nyx_string* null
@.str622 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str622.c = internal global %nyx_string* null
@.str623 = private unnamed_addr constant [5 x i8] c"Self\00"
@.str623.c = internal global %nyx_string* null
@.str624 = private unnamed_addr constant [4 x i8] c"DOT\00"
@.str624.c = internal global %nyx_string* null
@.str625 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str625.c = internal global %nyx_string* null
@.str626 = private unnamed_addr constant [6 x i8] c"Self.\00"
@.str626.c = internal global %nyx_string* null
@.str627 = private unnamed_addr constant [3 x i8] c"Fn\00"
@.str627.c = internal global %nyx_string* null
@.str628 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str628.c = internal global %nyx_string* null
@.str629 = private unnamed_addr constant [4 x i8] c"Fn(\00"
@.str629.c = internal global %nyx_string* null
@.str630 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str630.c = internal global %nyx_string* null
@.str631 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str631.c = internal global %nyx_string* null
@.str632 = private unnamed_addr constant [2 x i8] c",\00"
@.str632.c = internal global %nyx_string* null
@.str633 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str633.c = internal global %nyx_string* null
@.str634 = private unnamed_addr constant [2 x i8] c")\00"
@.str634.c = internal global %nyx_string* null
@.str635 = private unnamed_addr constant [6 x i8] c"ARROW\00"
@.str635.c = internal global %nyx_string* null
@.str636 = private unnamed_addr constant [3 x i8] c"->\00"
@.str636.c = internal global %nyx_string* null
@.str637 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str637.c = internal global %nyx_string* null
@.str638 = private unnamed_addr constant [2 x i8] c"<\00"
@.str638.c = internal global %nyx_string* null
@.str639 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str639.c = internal global %nyx_string* null
@.str640 = private unnamed_addr constant [2 x i8] c",\00"
@.str640.c = internal global %nyx_string* null
@.str641 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str641.c = internal global %nyx_string* null
@.str642 = private unnamed_addr constant [12 x i8] c"SHIFT_RIGHT\00"
@.str642.c = internal global %nyx_string* null
@.str643 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str643.c = internal global %nyx_string* null
@.str644 = private unnamed_addr constant [2 x i8] c">\00"
@.str644.c = internal global %nyx_string* null
@.str645 = private unnamed_addr constant [4 x i8] c"VAR\00"
@.str645.c = internal global %nyx_string* null
@.str646 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str646.c = internal global %nyx_string* null
@.str647 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str647.c = internal global %nyx_string* null
@.str648 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str648.c = internal global %nyx_string* null
@.str649 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str649.c = internal global %nyx_string* null
@.str650 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str650.c = internal global %nyx_string* null
@.str651 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str651.c = internal global %nyx_string* null
@.str652 = private unnamed_addr constant [22 x i8] c"let_destructure_tuple\00"
@.str652.c = internal global %nyx_string* null
@.str653 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str653.c = internal global %nyx_string* null
@.str654 = private unnamed_addr constant [1 x i8] c"\00"
@.str654.c = internal global %nyx_string* null
@.str655 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str655.c = internal global %nyx_string* null
@.str656 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str656.c = internal global %nyx_string* null
@.str657 = private unnamed_addr constant [4 x i8] c"let\00"
@.str657.c = internal global %nyx_string* null
@.str658 = private unnamed_addr constant [6 x i8] c"CONST\00"
@.str658.c = internal global %nyx_string* null
@.str659 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str659.c = internal global %nyx_string* null
@.str660 = private unnamed_addr constant [1 x i8] c"\00"
@.str660.c = internal global %nyx_string* null
@.str661 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str661.c = internal global %nyx_string* null
@.str662 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str662.c = internal global %nyx_string* null
@.str663 = private unnamed_addr constant [6 x i8] c"const\00"
@.str663.c = internal global %nyx_string* null
@.str664 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str664.c = internal global %nyx_string* null
@.str665 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str665.c = internal global %nyx_string* null
@.str666 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str666.c = internal global %nyx_string* null
@.str667 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str667.c = internal global %nyx_string* null
@.str668 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str668.c = internal global %nyx_string* null
@.str669 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str669.c = internal global %nyx_string* null
@.str670 = private unnamed_addr constant [1 x i8] c"\00"
@.str670.c = internal global %nyx_string* null
@.str671 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str671.c = internal global %nyx_string* null
@.str672 = private unnamed_addr constant [1 x i8] c"\00"
@.str672.c = internal global %nyx_string* null
@.str673 = private unnamed_addr constant [6 x i8] c"ARROW\00"
@.str673.c = internal global %nyx_string* null
@.str674 = private unnamed_addr constant [9 x i8] c"async_fn\00"
@.str674.c = internal global %nyx_string* null
@.str675 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str675.c = internal global %nyx_string* null
@.str676 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str676.c = internal global %nyx_string* null
@.str677 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str677.c = internal global %nyx_string* null
@.str678 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str678.c = internal global %nyx_string* null
@.str679 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str679.c = internal global %nyx_string* null
@.str680 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str680.c = internal global %nyx_string* null
@.str681 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str681.c = internal global %nyx_string* null
@.str682 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str682.c = internal global %nyx_string* null
@.str683 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str683.c = internal global %nyx_string* null
@.str684 = private unnamed_addr constant [2 x i8] c"+\00"
@.str684.c = internal global %nyx_string* null
@.str685 = private unnamed_addr constant [2 x i8] c":\00"
@.str685.c = internal global %nyx_string* null
@.str686 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str686.c = internal global %nyx_string* null
@.str687 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str687.c = internal global %nyx_string* null
@.str688 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str688.c = internal global %nyx_string* null
@.str689 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str689.c = internal global %nyx_string* null
@.str690 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str690.c = internal global %nyx_string* null
@.str691 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str691.c = internal global %nyx_string* null
@.str692 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str692.c = internal global %nyx_string* null
@.str693 = private unnamed_addr constant [2 x i8] c"+\00"
@.str693.c = internal global %nyx_string* null
@.str694 = private unnamed_addr constant [2 x i8] c":\00"
@.str694.c = internal global %nyx_string* null
@.str695 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str695.c = internal global %nyx_string* null
@.str696 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str696.c = internal global %nyx_string* null
@.str697 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str697.c = internal global %nyx_string* null
@.str698 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str698.c = internal global %nyx_string* null
@.str699 = private unnamed_addr constant [9 x i8] c"ELLIPSIS\00"
@.str699.c = internal global %nyx_string* null
@.str700 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str700.c = internal global %nyx_string* null
@.str701 = private unnamed_addr constant [10 x i8] c"...String\00"
@.str701.c = internal global %nyx_string* null
@.str702 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str702.c = internal global %nyx_string* null
@.str703 = private unnamed_addr constant [4 x i8] c"...\00"
@.str703.c = internal global %nyx_string* null
@.str704 = private unnamed_addr constant [1 x i8] c"\00"
@.str704.c = internal global %nyx_string* null
@.str705 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str705.c = internal global %nyx_string* null
@.str706 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str706.c = internal global %nyx_string* null
@.str707 = private unnamed_addr constant [4 x i8] c"AMP\00"
@.str707.c = internal global %nyx_string* null
@.str708 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str708.c = internal global %nyx_string* null
@.str709 = private unnamed_addr constant [2 x i8] c"&\00"
@.str709.c = internal global %nyx_string* null
@.str710 = private unnamed_addr constant [4 x i8] c"mut\00"
@.str710.c = internal global %nyx_string* null
@.str711 = private unnamed_addr constant [5 x i8] c"&mut\00"
@.str711.c = internal global %nyx_string* null
@.str712 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str712.c = internal global %nyx_string* null
@.str713 = private unnamed_addr constant [1 x i8] c"\00"
@.str713.c = internal global %nyx_string* null
@.str714 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str714.c = internal global %nyx_string* null
@.str715 = private unnamed_addr constant [1 x i8] c"\00"
@.str715.c = internal global %nyx_string* null
@.str716 = private unnamed_addr constant [1 x i8] c"\00"
@.str716.c = internal global %nyx_string* null
@.str717 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str717.c = internal global %nyx_string* null
@.str718 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str718.c = internal global %nyx_string* null
@.str719 = private unnamed_addr constant [1 x i8] c"\00"
@.str719.c = internal global %nyx_string* null
@.str720 = private unnamed_addr constant [1 x i8] c"\00"
@.str720.c = internal global %nyx_string* null
@.str721 = private unnamed_addr constant [6 x i8] c"ARROW\00"
@.str721.c = internal global %nyx_string* null
@.str722 = private unnamed_addr constant [6 x i8] c"WHERE\00"
@.str722.c = internal global %nyx_string* null
@.str723 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str723.c = internal global %nyx_string* null
@.str724 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str724.c = internal global %nyx_string* null
@.str725 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str725.c = internal global %nyx_string* null
@.str726 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str726.c = internal global %nyx_string* null
@.str727 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str727.c = internal global %nyx_string* null
@.str728 = private unnamed_addr constant [2 x i8] c"+\00"
@.str728.c = internal global %nyx_string* null
@.str729 = private unnamed_addr constant [1 x i8] c":"
@.str730 = private unnamed_addr constant [2 x i8] c"+\00"
@.str730.c = internal global %nyx_string* null
@.str731 = private unnamed_addr constant [2 x i8] c":\00"
@.str731.c = internal global %nyx_string* null
@.str732 = private unnamed_addr constant [2 x i8] c":\00"
@.str732.c = internal global %nyx_string* null
@.str733 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str733.c = internal global %nyx_string* null
@.str734 = private unnamed_addr constant [10 x i8] c"_consumed\00"
@.str734.c = internal global %nyx_string* null
@.str735 = private unnamed_addr constant [10 x i8] c"_consumed\00"
@.str735.c = internal global %nyx_string* null
@.str736 = private unnamed_addr constant [9 x i8] c"function\00"
@.str736.c = internal global %nyx_string* null
@.str737 = private unnamed_addr constant [6 x i8] c"block\00"
@.str737.c = internal global %nyx_string* null
@.str738 = private unnamed_addr constant [1 x i8] c"\00"
@.str738.c = internal global %nyx_string* null
@.str739 = private unnamed_addr constant [10 x i8] c"__retlt__\00"
@.str739.c = internal global %nyx_string* null
@.str740 = private unnamed_addr constant [12 x i8] c"__paramlt__\00"
@.str740.c = internal global %nyx_string* null
@.str741 = private unnamed_addr constant [9 x i8] c"function\00"
@.str741.c = internal global %nyx_string* null
@.str742 = private unnamed_addr constant [1 x i8] c"\00"
@.str742.c = internal global %nyx_string* null
@.str743 = private unnamed_addr constant [10 x i8] c"__retlt__\00"
@.str743.c = internal global %nyx_string* null
@.str744 = private unnamed_addr constant [12 x i8] c"__paramlt__\00"
@.str744.c = internal global %nyx_string* null
@.str745 = private unnamed_addr constant [7 x i8] c"STRUCT\00"
@.str745.c = internal global %nyx_string* null
@.str746 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str746.c = internal global %nyx_string* null
@.str747 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str747.c = internal global %nyx_string* null
@.str748 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str748.c = internal global %nyx_string* null
@.str749 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str749.c = internal global %nyx_string* null
@.str750 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str750.c = internal global %nyx_string* null
@.str751 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str751.c = internal global %nyx_string* null
@.str752 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str752.c = internal global %nyx_string* null
@.str753 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str753.c = internal global %nyx_string* null
@.str754 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str754.c = internal global %nyx_string* null
@.str755 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str755.c = internal global %nyx_string* null
@.str756 = private unnamed_addr constant [3 x i8] c"_0\00"
@.str756.c = internal global %nyx_string* null
@.str757 = private unnamed_addr constant [7 x i8] c"struct\00"
@.str757.c = internal global %nyx_string* null
@.str758 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str758.c = internal global %nyx_string* null
@.str759 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str759.c = internal global %nyx_string* null
@.str760 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str760.c = internal global %nyx_string* null
@.str761 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str761.c = internal global %nyx_string* null
@.str762 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str762.c = internal global %nyx_string* null
@.str763 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str763.c = internal global %nyx_string* null
@.str764 = private unnamed_addr constant [7 x i8] c"struct\00"
@.str764.c = internal global %nyx_string* null
@.str765 = private unnamed_addr constant [3 x i8] c"IF\00"
@.str765.c = internal global %nyx_string* null
@.str766 = private unnamed_addr constant [4 x i8] c"LET\00"
@.str766.c = internal global %nyx_string* null
@.str767 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str767.c = internal global %nyx_string* null
@.str768 = private unnamed_addr constant [5 x i8] c"ELSE\00"
@.str768.c = internal global %nyx_string* null
@.str769 = private unnamed_addr constant [3 x i8] c"IF\00"
@.str769.c = internal global %nyx_string* null
@.str770 = private unnamed_addr constant [3 x i8] c"if\00"
@.str770.c = internal global %nyx_string* null
@.str771 = private unnamed_addr constant [4 x i8] c"LET\00"
@.str771.c = internal global %nyx_string* null
@.str772 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str772.c = internal global %nyx_string* null
@.str773 = private unnamed_addr constant [6 x i8] c"block\00"
@.str773.c = internal global %nyx_string* null
@.str774 = private unnamed_addr constant [5 x i8] c"ELSE\00"
@.str774.c = internal global %nyx_string* null
@.str775 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str775.c = internal global %nyx_string* null
@.str776 = private unnamed_addr constant [10 x i8] c"match_arm\00"
@.str776.c = internal global %nyx_string* null
@.str777 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str777.c = internal global %nyx_string* null
@.str778 = private unnamed_addr constant [9 x i8] c"wildcard\00"
@.str778.c = internal global %nyx_string* null
@.str779 = private unnamed_addr constant [10 x i8] c"match_arm\00"
@.str779.c = internal global %nyx_string* null
@.str780 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str780.c = internal global %nyx_string* null
@.str781 = private unnamed_addr constant [6 x i8] c"match\00"
@.str781.c = internal global %nyx_string* null
@.str782 = private unnamed_addr constant [6 x i8] c"WHILE\00"
@.str782.c = internal global %nyx_string* null
@.str783 = private unnamed_addr constant [4 x i8] c"LET\00"
@.str783.c = internal global %nyx_string* null
@.str784 = private unnamed_addr constant [6 x i8] c"while\00"
@.str784.c = internal global %nyx_string* null
@.str785 = private unnamed_addr constant [4 x i8] c"LET\00"
@.str785.c = internal global %nyx_string* null
@.str786 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str786.c = internal global %nyx_string* null
@.str787 = private unnamed_addr constant [10 x i8] c"while_let\00"
@.str787.c = internal global %nyx_string* null
@.str788 = private unnamed_addr constant [4 x i8] c"FOR\00"
@.str788.c = internal global %nyx_string* null
@.str789 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str789.c = internal global %nyx_string* null
@.str790 = private unnamed_addr constant [1 x i8] c"\00"
@.str790.c = internal global %nyx_string* null
@.str791 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str791.c = internal global %nyx_string* null
@.str792 = private unnamed_addr constant [3 x i8] c"IN\00"
@.str792.c = internal global %nyx_string* null
@.str793 = private unnamed_addr constant [4 x i8] c"for\00"
@.str793.c = internal global %nyx_string* null
@.str794 = private unnamed_addr constant [7 x i8] c"RETURN\00"
@.str794.c = internal global %nyx_string* null
@.str795 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str795.c = internal global %nyx_string* null
@.str796 = private unnamed_addr constant [4 x i8] c"EOF\00"
@.str796.c = internal global %nyx_string* null
@.str797 = private unnamed_addr constant [4 x i8] c"LET\00"
@.str797.c = internal global %nyx_string* null
@.str798 = private unnamed_addr constant [4 x i8] c"VAR\00"
@.str798.c = internal global %nyx_string* null
@.str799 = private unnamed_addr constant [6 x i8] c"WHILE\00"
@.str799.c = internal global %nyx_string* null
@.str800 = private unnamed_addr constant [4 x i8] c"FOR\00"
@.str800.c = internal global %nyx_string* null
@.str801 = private unnamed_addr constant [7 x i8] c"RETURN\00"
@.str801.c = internal global %nyx_string* null
@.str802 = private unnamed_addr constant [8 x i8] c"integer\00"
@.str802.c = internal global %nyx_string* null
@.str803 = private unnamed_addr constant [7 x i8] c"return\00"
@.str803.c = internal global %nyx_string* null
@.str804 = private unnamed_addr constant [7 x i8] c"return\00"
@.str804.c = internal global %nyx_string* null
@.str805 = private unnamed_addr constant [7 x i8] c"EXPORT\00"
@.str805.c = internal global %nyx_string* null
@.str806 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str806.c = internal global %nyx_string* null
@.str807 = private unnamed_addr constant [7 x i8] c"export\00"
@.str807.c = internal global %nyx_string* null
@.str808 = private unnamed_addr constant [7 x i8] c"STRUCT\00"
@.str808.c = internal global %nyx_string* null
@.str809 = private unnamed_addr constant [7 x i8] c"export\00"
@.str809.c = internal global %nyx_string* null
@.str810 = private unnamed_addr constant [5 x i8] c"ENUM\00"
@.str810.c = internal global %nyx_string* null
@.str811 = private unnamed_addr constant [7 x i8] c"export\00"
@.str811.c = internal global %nyx_string* null
@.str812 = private unnamed_addr constant [6 x i8] c"TRAIT\00"
@.str812.c = internal global %nyx_string* null
@.str813 = private unnamed_addr constant [7 x i8] c"export\00"
@.str813.c = internal global %nyx_string* null
@.str814 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str814.c = internal global %nyx_string* null
@.str815 = private unnamed_addr constant [5 x i8] c"type\00"
@.str815.c = internal global %nyx_string* null
@.str816 = private unnamed_addr constant [7 x i8] c"export\00"
@.str816.c = internal global %nyx_string* null
@.str817 = private unnamed_addr constant [8 x i8] c"NYX0105\00"
@.str817.c = internal global %nyx_string* null
@.str818 = private unnamed_addr constant [58 x i8] c"export solo puede preceder fn, struct, enum, trait o type\00"
@.str818.c = internal global %nyx_string* null
@.str819 = private unnamed_addr constant [56 x i8] c"export can only precede fn, struct, enum, trait or type\00"
@.str819.c = internal global %nyx_string* null
@.str820 = private unnamed_addr constant [6 x i8] c"error\00"
@.str820.c = internal global %nyx_string* null
@.str821 = private unnamed_addr constant [7 x i8] c"IMPORT\00"
@.str821.c = internal global %nyx_string* null
@.str822 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str822.c = internal global %nyx_string* null
@.str823 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str823.c = internal global %nyx_string* null
@.str824 = private unnamed_addr constant [1 x i8] c"\00"
@.str824.c = internal global %nyx_string* null
@.str825 = private unnamed_addr constant [3 x i8] c"AS\00"
@.str825.c = internal global %nyx_string* null
@.str826 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str826.c = internal global %nyx_string* null
@.str827 = private unnamed_addr constant [14 x i8] c"import_module\00"
@.str827.c = internal global %nyx_string* null
@.str828 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str828.c = internal global %nyx_string* null
@.str829 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str829.c = internal global %nyx_string* null
@.str830 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str830.c = internal global %nyx_string* null
@.str831 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str831.c = internal global %nyx_string* null
@.str832 = private unnamed_addr constant [5 x i8] c"FROM\00"
@.str832.c = internal global %nyx_string* null
@.str833 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str833.c = internal global %nyx_string* null
@.str834 = private unnamed_addr constant [7 x i8] c"import\00"
@.str834.c = internal global %nyx_string* null
@.str835 = private unnamed_addr constant [4 x i8] c"PUB\00"
@.str835.c = internal global %nyx_string* null
@.str836 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str836.c = internal global %nyx_string* null
@.str837 = private unnamed_addr constant [7 x i8] c"export\00"
@.str837.c = internal global %nyx_string* null
@.str838 = private unnamed_addr constant [7 x i8] c"STRUCT\00"
@.str838.c = internal global %nyx_string* null
@.str839 = private unnamed_addr constant [7 x i8] c"export\00"
@.str839.c = internal global %nyx_string* null
@.str840 = private unnamed_addr constant [5 x i8] c"ENUM\00"
@.str840.c = internal global %nyx_string* null
@.str841 = private unnamed_addr constant [7 x i8] c"export\00"
@.str841.c = internal global %nyx_string* null
@.str842 = private unnamed_addr constant [6 x i8] c"TRAIT\00"
@.str842.c = internal global %nyx_string* null
@.str843 = private unnamed_addr constant [7 x i8] c"export\00"
@.str843.c = internal global %nyx_string* null
@.str844 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str844.c = internal global %nyx_string* null
@.str845 = private unnamed_addr constant [5 x i8] c"type\00"
@.str845.c = internal global %nyx_string* null
@.str846 = private unnamed_addr constant [7 x i8] c"export\00"
@.str846.c = internal global %nyx_string* null
@.str847 = private unnamed_addr constant [8 x i8] c"NYX0105\00"
@.str847.c = internal global %nyx_string* null
@.str848 = private unnamed_addr constant [55 x i8] c"pub solo puede preceder fn, struct, enum, trait o type\00"
@.str848.c = internal global %nyx_string* null
@.str849 = private unnamed_addr constant [53 x i8] c"pub can only precede fn, struct, enum, trait or type\00"
@.str849.c = internal global %nyx_string* null
@.str850 = private unnamed_addr constant [6 x i8] c"error\00"
@.str850.c = internal global %nyx_string* null
@.str851 = private unnamed_addr constant [7 x i8] c"MODULE\00"
@.str851.c = internal global %nyx_string* null
@.str852 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str852.c = internal global %nyx_string* null
@.str853 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str853.c = internal global %nyx_string* null
@.str854 = private unnamed_addr constant [13 x i8] c"LEFT_BRACKET\00"
@.str854.c = internal global %nyx_string* null
@.str855 = private unnamed_addr constant [14 x i8] c"RIGHT_BRACKET\00"
@.str855.c = internal global %nyx_string* null
@.str856 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str856.c = internal global %nyx_string* null
@.str857 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str857.c = internal global %nyx_string* null
@.str858 = private unnamed_addr constant [14 x i8] c"RIGHT_BRACKET\00"
@.str858.c = internal global %nyx_string* null
@.str859 = private unnamed_addr constant [12 x i8] c"module_decl\00"
@.str859.c = internal global %nyx_string* null
@.str860 = private unnamed_addr constant [6 x i8] c"TRAIT\00"
@.str860.c = internal global %nyx_string* null
@.str861 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str861.c = internal global %nyx_string* null
@.str862 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str862.c = internal global %nyx_string* null
@.str863 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str863.c = internal global %nyx_string* null
@.str864 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str864.c = internal global %nyx_string* null
@.str865 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str865.c = internal global %nyx_string* null
@.str866 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str866.c = internal global %nyx_string* null
@.str867 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str867.c = internal global %nyx_string* null
@.str868 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str868.c = internal global %nyx_string* null
@.str869 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str869.c = internal global %nyx_string* null
@.str870 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str870.c = internal global %nyx_string* null
@.str871 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str871.c = internal global %nyx_string* null
@.str872 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str872.c = internal global %nyx_string* null
@.str873 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str873.c = internal global %nyx_string* null
@.str874 = private unnamed_addr constant [5 x i8] c"type\00"
@.str874.c = internal global %nyx_string* null
@.str875 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str875.c = internal global %nyx_string* null
@.str876 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str876.c = internal global %nyx_string* null
@.str877 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str877.c = internal global %nyx_string* null
@.str878 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str878.c = internal global %nyx_string* null
@.str879 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str879.c = internal global %nyx_string* null
@.str880 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str880.c = internal global %nyx_string* null
@.str881 = private unnamed_addr constant [15 x i8] c"__assoc_type__\00"
@.str881.c = internal global %nyx_string* null
@.str882 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str882.c = internal global %nyx_string* null
@.str883 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str883.c = internal global %nyx_string* null
@.str884 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str884.c = internal global %nyx_string* null
@.str885 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str885.c = internal global %nyx_string* null
@.str886 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str886.c = internal global %nyx_string* null
@.str887 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str887.c = internal global %nyx_string* null
@.str888 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str888.c = internal global %nyx_string* null
@.str889 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str889.c = internal global %nyx_string* null
@.str890 = private unnamed_addr constant [1 x i8] c"\00"
@.str890.c = internal global %nyx_string* null
@.str891 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str891.c = internal global %nyx_string* null
@.str892 = private unnamed_addr constant [1 x i8] c"\00"
@.str892.c = internal global %nyx_string* null
@.str893 = private unnamed_addr constant [6 x i8] c"ARROW\00"
@.str893.c = internal global %nyx_string* null
@.str894 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str894.c = internal global %nyx_string* null
@.str895 = private unnamed_addr constant [10 x i8] c"trait_def\00"
@.str895.c = internal global %nyx_string* null
@.str896 = private unnamed_addr constant [5 x i8] c"IMPL\00"
@.str896.c = internal global %nyx_string* null
@.str897 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str897.c = internal global %nyx_string* null
@.str898 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str898.c = internal global %nyx_string* null
@.str899 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str899.c = internal global %nyx_string* null
@.str900 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str900.c = internal global %nyx_string* null
@.str901 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str901.c = internal global %nyx_string* null
@.str902 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str902.c = internal global %nyx_string* null
@.str903 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str903.c = internal global %nyx_string* null
@.str904 = private unnamed_addr constant [2 x i8] c"+\00"
@.str904.c = internal global %nyx_string* null
@.str905 = private unnamed_addr constant [2 x i8] c":\00"
@.str905.c = internal global %nyx_string* null
@.str906 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str906.c = internal global %nyx_string* null
@.str907 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str907.c = internal global %nyx_string* null
@.str908 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str908.c = internal global %nyx_string* null
@.str909 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str909.c = internal global %nyx_string* null
@.str910 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str910.c = internal global %nyx_string* null
@.str911 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str911.c = internal global %nyx_string* null
@.str912 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str912.c = internal global %nyx_string* null
@.str913 = private unnamed_addr constant [2 x i8] c"+\00"
@.str913.c = internal global %nyx_string* null
@.str914 = private unnamed_addr constant [2 x i8] c":\00"
@.str914.c = internal global %nyx_string* null
@.str915 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str915.c = internal global %nyx_string* null
@.str916 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str916.c = internal global %nyx_string* null
@.str917 = private unnamed_addr constant [4 x i8] c"FOR\00"
@.str917.c = internal global %nyx_string* null
@.str918 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str918.c = internal global %nyx_string* null
@.str919 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str919.c = internal global %nyx_string* null
@.str920 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str920.c = internal global %nyx_string* null
@.str921 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str921.c = internal global %nyx_string* null
@.str922 = private unnamed_addr constant [5 x i8] c"type\00"
@.str922.c = internal global %nyx_string* null
@.str923 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str923.c = internal global %nyx_string* null
@.str924 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str924.c = internal global %nyx_string* null
@.str925 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str925.c = internal global %nyx_string* null
@.str926 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str926.c = internal global %nyx_string* null
@.str927 = private unnamed_addr constant [11 x i8] c"impl_trait\00"
@.str927.c = internal global %nyx_string* null
@.str928 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str928.c = internal global %nyx_string* null
@.str929 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str929.c = internal global %nyx_string* null
@.str930 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str930.c = internal global %nyx_string* null
@.str931 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str931.c = internal global %nyx_string* null
@.str932 = private unnamed_addr constant [5 x i8] c"impl\00"
@.str932.c = internal global %nyx_string* null
@.str933 = private unnamed_addr constant [6 x i8] c"CATCH\00"
@.str933.c = internal global %nyx_string* null
@.str934 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str934.c = internal global %nyx_string* null
@.str935 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str935.c = internal global %nyx_string* null
@.str936 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str936.c = internal global %nyx_string* null
@.str937 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str937.c = internal global %nyx_string* null
@.str938 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str938.c = internal global %nyx_string* null
@.str939 = private unnamed_addr constant [10 x i8] c"try_catch\00"
@.str939.c = internal global %nyx_string* null
@.str940 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str940.c = internal global %nyx_string* null
@.str941 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str941.c = internal global %nyx_string* null
@.str942 = private unnamed_addr constant [6 x i8] c"throw\00"
@.str942.c = internal global %nyx_string* null
@.str943 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str943.c = internal global %nyx_string* null
@.str944 = private unnamed_addr constant [4 x i8] c"EOF\00"
@.str944.c = internal global %nyx_string* null
@.str945 = private unnamed_addr constant [8 x i8] c"NYX0104\00"
@.str945.c = internal global %nyx_string* null
@.str946 = private unnamed_addr constant [47 x i8] c"fin de archivo inesperado: falta '}' de cierre\00"
@.str946.c = internal global %nyx_string* null
@.str947 = private unnamed_addr constant [44 x i8] c"unexpected end of file: missing closing '}'\00"
@.str947.c = internal global %nyx_string* null
@.str948 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str948.c = internal global %nyx_string* null
@.str949 = private unnamed_addr constant [6 x i8] c"block\00"
@.str949.c = internal global %nyx_string* null
@.str950 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str950.c = internal global %nyx_string* null
@.str951 = private unnamed_addr constant [4 x i8] c"EOF\00"
@.str951.c = internal global %nyx_string* null
@.str952 = private unnamed_addr constant [8 x i8] c"NYX0104\00"
@.str952.c = internal global %nyx_string* null
@.str953 = private unnamed_addr constant [47 x i8] c"fin de archivo inesperado: falta '}' de cierre\00"
@.str953.c = internal global %nyx_string* null
@.str954 = private unnamed_addr constant [44 x i8] c"unexpected end of file: missing closing '}'\00"
@.str954.c = internal global %nyx_string* null
@.str955 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str955.c = internal global %nyx_string* null
@.str956 = private unnamed_addr constant [10 x i8] c"_consumed\00"
@.str956.c = internal global %nyx_string* null
@.str957 = private unnamed_addr constant [10 x i8] c"_consumed\00"
@.str957.c = internal global %nyx_string* null
@.str958 = private unnamed_addr constant [6 x i8] c"block\00"
@.str958.c = internal global %nyx_string* null
@.str959 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str959.c = internal global %nyx_string* null
@.str960 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str960.c = internal global %nyx_string* null
@.str961 = private unnamed_addr constant [7 x i8] c"assign\00"
@.str961.c = internal global %nyx_string* null
@.str962 = private unnamed_addr constant [1 x i8] c"\00"
@.str962.c = internal global %nyx_string* null
@.str963 = private unnamed_addr constant [12 x i8] c"PLUS_EQUALS\00"
@.str963.c = internal global %nyx_string* null
@.str964 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str964.c = internal global %nyx_string* null
@.str965 = private unnamed_addr constant [13 x i8] c"MINUS_EQUALS\00"
@.str965.c = internal global %nyx_string* null
@.str966 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str966.c = internal global %nyx_string* null
@.str967 = private unnamed_addr constant [12 x i8] c"STAR_EQUALS\00"
@.str967.c = internal global %nyx_string* null
@.str968 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str968.c = internal global %nyx_string* null
@.str969 = private unnamed_addr constant [13 x i8] c"SLASH_EQUALS\00"
@.str969.c = internal global %nyx_string* null
@.str970 = private unnamed_addr constant [6 x i8] c"SLASH\00"
@.str970.c = internal global %nyx_string* null
@.str971 = private unnamed_addr constant [15 x i8] c"PERCENT_EQUALS\00"
@.str971.c = internal global %nyx_string* null
@.str972 = private unnamed_addr constant [8 x i8] c"PERCENT\00"
@.str972.c = internal global %nyx_string* null
@.str973 = private unnamed_addr constant [11 x i8] c"AMP_EQUALS\00"
@.str973.c = internal global %nyx_string* null
@.str974 = private unnamed_addr constant [4 x i8] c"AMP\00"
@.str974.c = internal global %nyx_string* null
@.str975 = private unnamed_addr constant [12 x i8] c"PIPE_EQUALS\00"
@.str975.c = internal global %nyx_string* null
@.str976 = private unnamed_addr constant [5 x i8] c"PIPE\00"
@.str976.c = internal global %nyx_string* null
@.str977 = private unnamed_addr constant [13 x i8] c"CARET_EQUALS\00"
@.str977.c = internal global %nyx_string* null
@.str978 = private unnamed_addr constant [6 x i8] c"CARET\00"
@.str978.c = internal global %nyx_string* null
@.str979 = private unnamed_addr constant [18 x i8] c"SHIFT_LEFT_EQUALS\00"
@.str979.c = internal global %nyx_string* null
@.str980 = private unnamed_addr constant [11 x i8] c"SHIFT_LEFT\00"
@.str980.c = internal global %nyx_string* null
@.str981 = private unnamed_addr constant [19 x i8] c"SHIFT_RIGHT_EQUALS\00"
@.str981.c = internal global %nyx_string* null
@.str982 = private unnamed_addr constant [12 x i8] c"SHIFT_RIGHT\00"
@.str982.c = internal global %nyx_string* null
@.str983 = private unnamed_addr constant [1 x i8] c"\00"
@.str983.c = internal global %nyx_string* null
@.str984 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str984.c = internal global %nyx_string* null
@.str985 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str985.c = internal global %nyx_string* null
@.str986 = private unnamed_addr constant [7 x i8] c"assign\00"
@.str986.c = internal global %nyx_string* null
@.str987 = private unnamed_addr constant [6 x i8] c"deref\00"
@.str987.c = internal global %nyx_string* null
@.str988 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str988.c = internal global %nyx_string* null
@.str989 = private unnamed_addr constant [13 x i8] c"deref_assign\00"
@.str989.c = internal global %nyx_string* null
@.str990 = private unnamed_addr constant [6 x i8] c"index\00"
@.str990.c = internal global %nyx_string* null
@.str991 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str991.c = internal global %nyx_string* null
@.str992 = private unnamed_addr constant [13 x i8] c"index_assign\00"
@.str992.c = internal global %nyx_string* null
@.str993 = private unnamed_addr constant [13 x i8] c"field_access\00"
@.str993.c = internal global %nyx_string* null
@.str994 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str994.c = internal global %nyx_string* null
@.str995 = private unnamed_addr constant [13 x i8] c"field_assign\00"
@.str995.c = internal global %nyx_string* null
@.str996 = private unnamed_addr constant [4 x i8] c"EOF\00"
@.str996.c = internal global %nyx_string* null
@.str997 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str997.c = internal global %nyx_string* null
@.str998 = private unnamed_addr constant [4 x i8] c"LET\00"
@.str998.c = internal global %nyx_string* null
@.str999 = private unnamed_addr constant [4 x i8] c"VAR\00"
@.str999.c = internal global %nyx_string* null
@.str1000 = private unnamed_addr constant [6 x i8] c"CONST\00"
@.str1000.c = internal global %nyx_string* null
@.str1001 = private unnamed_addr constant [7 x i8] c"STRUCT\00"
@.str1001.c = internal global %nyx_string* null
@.str1002 = private unnamed_addr constant [5 x i8] c"ENUM\00"
@.str1002.c = internal global %nyx_string* null
@.str1003 = private unnamed_addr constant [3 x i8] c"IF\00"
@.str1003.c = internal global %nyx_string* null
@.str1004 = private unnamed_addr constant [6 x i8] c"WHILE\00"
@.str1004.c = internal global %nyx_string* null
@.str1005 = private unnamed_addr constant [4 x i8] c"FOR\00"
@.str1005.c = internal global %nyx_string* null
@.str1006 = private unnamed_addr constant [7 x i8] c"RETURN\00"
@.str1006.c = internal global %nyx_string* null
@.str1007 = private unnamed_addr constant [7 x i8] c"IMPORT\00"
@.str1007.c = internal global %nyx_string* null
@.str1008 = private unnamed_addr constant [7 x i8] c"EXPORT\00"
@.str1008.c = internal global %nyx_string* null
@.str1009 = private unnamed_addr constant [6 x i8] c"TRAIT\00"
@.str1009.c = internal global %nyx_string* null
@.str1010 = private unnamed_addr constant [5 x i8] c"IMPL\00"
@.str1010.c = internal global %nyx_string* null
@.str1011 = private unnamed_addr constant [6 x i8] c"MATCH\00"
@.str1011.c = internal global %nyx_string* null
@.str1012 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str1012.c = internal global %nyx_string* null
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
  call void @nyx_array_push({ i64, i8* }* %12, i64 %14)
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

%SharedEnv_parse = type { { i64, i8* }*, %nyx_string*, { i64, i8* }*, i64, i64, i64, i64, i64, i64, { i64, i8* }*, { i64, i8* }*, { i64, i8* }*, { i64, i8* }*, { i64, i8* }*, { i64, i8* }*, { i64, i8* }*, { i64, i8* }* }
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
  store i64 0, i64* @g_parse_error_count
  %41 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 7
  store i64 0, i64* %41
  %42 = getelementptr [9 x i8], [9 x i8]* @.str0, i32 0, i32 0
  %43 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %42)
  %44 = call i8* @nyx_string_to_cstr(%nyx_string* %43)
  %45 = call %nyx_string* @nyx_getenv(i8* %44)
  %46 = getelementptr [3 x i8], [3 x i8]* @.str1, i32 0, i32 0
  %47 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %46)
  %48 = call i1 @nyx_string_equals(%nyx_string* %45, %nyx_string* %47)
  br i1 %48, label %then0, label %else1
then0:
  store i64 1, i64* %41
  br label %merge2
else1:
  br label %merge2
merge2:
  %49 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 8
  store i64 0, i64* %49
  %50 = getelementptr [9 x i8], [9 x i8]* @.str2, i32 0, i32 0
  %51 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %50)
  %52 = call i8* @nyx_string_to_cstr(%nyx_string* %51)
  %53 = call %nyx_string* @nyx_getenv(i8* %52)
  %54 = getelementptr [5 x i8], [5 x i8]* @.str3, i32 0, i32 0
  %55 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %54)
  %56 = call i1 @nyx_string_equals(%nyx_string* %53, %nyx_string* %55)
  br i1 %56, label %then3, label %else4
then3:
  store i64 1, i64* %49
  br label %merge5
else4:
  br label %merge5
merge5:
  %57 = call { i64, i8* }* @nyx_array_new_ptr()
  %58 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 9
  store { i64, i8* }* %57, { i64, i8* }** %58
  %59 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push({ i64, i8* }* %59, i64 0)
  %60 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 10
  store { i64, i8* }* %59, { i64, i8* }** %60
  %61 = call { i64, i8* }* @nyx_array_new_ptr()
  %62 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 11
  store { i64, i8* }* %61, { i64, i8* }** %62
  %63 = call { i64, i8* }* @nyx_array_new_ptr()
  %64 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 12
  store { i64, i8* }* %63, { i64, i8* }** %64
  %65 = call { i64, i8* }* @nyx_array_new_ptr()
  %66 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 13
  store { i64, i8* }* %65, { i64, i8* }** %66
  %67 = call { i64, i8* }* @nyx_array_new_ptr()
  %68 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 14
  store { i64, i8* }* %67, { i64, i8* }** %68
  %69 = call { i64, i8* }* @nyx_array_new_ptr()
  %70 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 15
  store { i64, i8* }* %69, { i64, i8* }** %70
  %71 = call { i64, i8* }* @nyx_array_new_ptr()
  %72 = getelementptr [1 x i8], [1 x i8]* @.str4, i32 0, i32 0
  %73 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %72)
  %74 = ptrtoint %nyx_string* %73 to i64
  call void @nyx_array_push({ i64, i8* }* %71, i64 %74)
  %75 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 16
  store { i64, i8* }* %71, { i64, i8* }** %75
  %76 = call { i64, i8* }* @nyx_array_new_ptr()
  %77 = alloca { i64, i8* }*
  store { i64, i8* }* %76, { i64, i8* }** %77
  %78 = alloca i1
  store i1 0, i1* %78
  %79 = alloca i64
  store i64 0, i64* %79
  %80 = alloca i64
  store i64 0, i64* %80
  br label %while_cond6
while_cond6:
  %81 = load i1, i1* %78
  %82 = xor i1 %81, true
  br i1 %82, label %while_body7, label %while_end8
while_body7:
  %83 = load i64, i64* %79
  %84 = add i64 %83, 1
  store i64 %84, i64* %79
  %85 = load i64, i64* %79
  %86 = icmp sgt i64 %85, 100000
  br i1 %86, label %then9, label %else10
then9:
  %87 = getelementptr [30 x i8], [30 x i8]* @.str5, i32 0, i32 0
  %88 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %87)
  %89 = call i8* @nyx_string_to_cstr(%nyx_string* %88)
  call void @nyx_print_string(i8* %89)
  store i1 1, i1* %78
  br label %merge11
else10:
  br label %merge11
merge11:
  %90 = load i64, i64* %40
  %91 = icmp eq i64 %90, 1
  br i1 %91, label %then12, label %else13
then12:
  store i1 1, i1* %78
  br label %merge14
else13:
  br label %merge14
merge14:
  %92 = getelementptr [4 x i8], [4 x i8]* @.str6, i32 0, i32 0
  %93 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %92)
  %94 = call i1 @check(%SharedEnv_parse* %32, %nyx_string* %93)
  br i1 %94, label %then15, label %else16
then15:
  store i1 1, i1* %78
  br label %merge17
else16:
  %95 = load i1, i1* %78
  %96 = xor i1 %95, true
  br i1 %96, label %then18, label %else19
then18:
  %97 = load i64, i64* %37
  %98 = alloca i64
  store i64 %97, i64* %98
  %99 = call { i64, i8* }* @parse_statement(%SharedEnv_parse* %32)
  %100 = alloca { i64, i8* }*
  store { i64, i8* }* %99, { i64, i8* }** %100
  %101 = getelementptr [6 x i8], [6 x i8]* @.str7, i32 0, i32 0
  %102 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %101)
  %103 = inttoptr i64 0 to %nyx_string*
  %104 = call i1 @nyx_string_equals(%nyx_string* %103, %nyx_string* %102)
  br i1 %104, label %then21, label %else22
then21:
  %105 = load i64, i64* %80
  %106 = add i64 %105, 1
  store i64 %106, i64* %80
  %107 = call i64 @synchronize(%SharedEnv_parse* %32)
  %108 = load i64, i64* %37
  %109 = load i64, i64* %98
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %then24, label %else25
then24:
  %111 = call %Token @advance(%SharedEnv_parse* %32)
  br label %merge26
else25:
  br label %merge26
merge26:
  br label %merge23
else22:
  %112 = load i64, i64* %37
  %113 = load i64, i64* %98
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %then27, label %else28
then27:
  %115 = load i64, i64* %80
  %116 = add i64 %115, 1
  store i64 %116, i64* %80
  %117 = call i64 @synchronize(%SharedEnv_parse* %32)
  %118 = load i64, i64* %37
  %119 = load i64, i64* %98
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %then30, label %else31
then30:
  %121 = call %Token @advance(%SharedEnv_parse* %32)
  br label %merge32
else31:
  br label %merge32
merge32:
  br label %merge29
else28:
  %122 = load { i64, i8* }*, { i64, i8* }** %77
  %123 = load { i64, i8* }*, { i64, i8* }** %100
  %124 = ptrtoint { i64, i8* }* %123 to i64
  call void @nyx_array_push({ i64, i8* }* %122, i64 %124)
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
  %125 = load i64, i64* %80
  %126 = icmp sgt i64 %125, 0
  br i1 %126, label %then33, label %else34
then33:
  %127 = getelementptr [9 x i8], [9 x i8]* @.str8, i32 0, i32 0
  %128 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %127)
  %129 = load i64, i64* %80
  %130 = call %nyx_string* @nyx_string_from_int(i64 %129)
  %131 = call %nyx_string* @nyx_string_concat(%nyx_string* %128, %nyx_string* %130)
  %132 = getelementptr [16 x i8], [16 x i8]* @.str9, i32 0, i32 0
  %133 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %132)
  %134 = call %nyx_string* @nyx_string_concat(%nyx_string* %131, %nyx_string* %133)
  %135 = call i8* @nyx_string_to_cstr(%nyx_string* %134)
  call void @nyx_print_string(i8* %135)
  br label %merge35
else34:
  br label %merge35
merge35:
  %136 = load { i64, i8* }*, { i64, i8* }** %58
  %137 = call i64 @nyx_array_length({ i64, i8* }* %136)
  %138 = icmp sgt i64 %137, 0
  br i1 %138, label %then36, label %else37
then36:
  %139 = call { i64, i8* }* @nyx_array_new_ptr()
  %140 = alloca { i64, i8* }*
  store { i64, i8* }* %139, { i64, i8* }** %140
  %141 = alloca i64
  store i64 0, i64* %141
  br label %while_cond39
while_cond39:
  %142 = load i64, i64* %141
  %143 = load { i64, i8* }*, { i64, i8* }** %58
  %144 = call i64 @nyx_array_length({ i64, i8* }* %143)
  %145 = icmp slt i64 %142, %144
  br i1 %145, label %while_body40, label %while_end41
while_body40:
  %146 = load { i64, i8* }*, { i64, i8* }** %58
  %147 = load i64, i64* %141
  %148 = call i64 @nyx_array_get({ i64, i8* }* %146, i64 %147)
  %149 = inttoptr i64 %148 to { i64, i8* }*
  %150 = alloca { i64, i8* }*
  store { i64, i8* }* %149, { i64, i8* }** %150
  %151 = load { i64, i8* }*, { i64, i8* }** %150
  %152 = call i64 @nyx_array_get({ i64, i8* }* %151, i64 0)
  %153 = inttoptr i64 %152 to %nyx_string*
  %154 = alloca %nyx_string*
  store %nyx_string* %153, %nyx_string** %154
  %155 = load %nyx_string*, %nyx_string** %154
  %156 = getelementptr [10 x i8], [10 x i8]* @.str10, i32 0, i32 0
  %157 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %156)
  %158 = call i1 @nyx_string_equals(%nyx_string* %155, %nyx_string* %157)
  %159 = xor i1 %158, true
  br i1 %159, label %then42, label %else43
then42:
  %160 = load { i64, i8* }*, { i64, i8* }** %140
  %161 = load { i64, i8* }*, { i64, i8* }** %58
  %162 = load i64, i64* %141
  %163 = call i64 @nyx_array_get({ i64, i8* }* %161, i64 %162)
  call void @nyx_array_push({ i64, i8* }* %160, i64 %163)
  br label %merge44
else43:
  br label %merge44
merge44:
  %164 = load i64, i64* %141
  %165 = add i64 %164, 1
  store i64 %165, i64* %141
  br label %while_cond39
while_end41:
  %166 = alloca i64
  store i64 0, i64* %166
  br label %while_cond45
while_cond45:
  %167 = load i64, i64* %166
  %168 = load { i64, i8* }*, { i64, i8* }** %77
  %169 = call i64 @nyx_array_length({ i64, i8* }* %168)
  %170 = icmp slt i64 %167, %169
  br i1 %170, label %while_body46, label %while_end47
while_body46:
  %171 = load { i64, i8* }*, { i64, i8* }** %140
  %172 = load { i64, i8* }*, { i64, i8* }** %77
  %173 = load i64, i64* %166
  %174 = call i64 @nyx_array_get({ i64, i8* }* %172, i64 %173)
  call void @nyx_array_push({ i64, i8* }* %171, i64 %174)
  %175 = load i64, i64* %166
  %176 = add i64 %175, 1
  store i64 %176, i64* %166
  br label %while_cond45
while_end47:
  %177 = getelementptr [6 x i8], [6 x i8]* @.str11, i32 0, i32 0
  %178 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %177)
  %179 = call { i64, i8* }* @nyx_array_new_ptr()
  %180 = load { i64, i8* }*, { i64, i8* }** %140
  %181 = bitcast { i64, i8* }* %180 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %179, i8* %181)
  %182 = call { i64, i8* }* @make_astnode(%nyx_string* %178, { i64, i8* }* %179)
  ret { i64, i8* }* %182
else37:
  br label %merge38
merge38:
  %183 = getelementptr [6 x i8], [6 x i8]* @.str12, i32 0, i32 0
  %184 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %183)
  %185 = call { i64, i8* }* @nyx_array_new_ptr()
  %186 = load { i64, i8* }*, { i64, i8* }** %77
  %187 = bitcast { i64, i8* }* %186 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %185, i8* %187)
  %188 = call { i64, i8* }* @make_astnode(%nyx_string* %184, { i64, i8* }* %185)
  ret { i64, i8* }* %188
}

define internal %Token @peek(%SharedEnv_parse* %env.param) {
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
  %18 = load i64, i64* %4
  %19 = load { i64, i8* }*, { i64, i8* }** %3
  %20 = call i64 @nyx_array_length({ i64, i8* }* %19)
  %21 = icmp slt i64 %18, %20
  br i1 %21, label %then0, label %else1
then0:
  %22 = load { i64, i8* }*, { i64, i8* }** %3
  %23 = load i64, i64* %4
  %24 = call i64 @nyx_array_get({ i64, i8* }* %22, i64 %23)
  %25 = inttoptr i64 %24 to %Token*
  %26 = load %Token, %Token* %25
  ret %Token %26
else1:
  br label %merge2
merge2:
  %27 = getelementptr %Token, %Token* null, i32 1
  %28 = ptrtoint %Token* %27 to i64
  %29 = call i8* @GC_malloc(i64 %28)
  %30 = bitcast i8* %29 to %Token*
  %31 = getelementptr [4 x i8], [4 x i8]* @.str13, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str13.c, i8* %31)
  %33 = getelementptr %Token, %Token* %30, i32 0, i32 0
  store %nyx_string* %32, %nyx_string** %33
  %34 = getelementptr [1 x i8], [1 x i8]* @.str14, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str14.c, i8* %34)
  %36 = getelementptr %Token, %Token* %30, i32 0, i32 1
  store %nyx_string* %35, %nyx_string** %36
  %37 = getelementptr %Token, %Token* %30, i32 0, i32 2
  store i64 0, i64* %37
  %38 = getelementptr %Token, %Token* %30, i32 0, i32 3
  store i64 0, i64* %38
  %39 = load %Token, %Token* %30
  %40 = alloca %Token
  store %Token %39, %Token* %40
  %41 = load %Token, %Token* %40
  ret %Token %41
}

define internal i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %type.param) {
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
  %18 = alloca %nyx_string*
  store %nyx_string* %type.param, %nyx_string** %18
  %19 = load i64, i64* %7
  %20 = icmp eq i64 %19, 1
  br i1 %20, label %then0, label %else1
then0:
  %21 = load %nyx_string*, %nyx_string** %18
  %22 = getelementptr [4 x i8], [4 x i8]* @.str15, i32 0, i32 0
  %23 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str15.c, i8* %22)
  %24 = call i1 @nyx_string_equals(%nyx_string* %21, %nyx_string* %23)
  br i1 %24, label %then3, label %else4
then3:
  ret i1 1
else4:
  br label %merge5
merge5:
  %25 = load %nyx_string*, %nyx_string** %18
  %26 = getelementptr [12 x i8], [12 x i8]* @.str16, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str16.c, i8* %26)
  %28 = call i1 @nyx_string_equals(%nyx_string* %25, %nyx_string* %27)
  br i1 %28, label %then6, label %else7
then6:
  ret i1 1
else7:
  br label %merge8
merge8:
  %29 = load %nyx_string*, %nyx_string** %18
  %30 = getelementptr [12 x i8], [12 x i8]* @.str17, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str17.c, i8* %30)
  %32 = call i1 @nyx_string_equals(%nyx_string* %29, %nyx_string* %31)
  br i1 %32, label %then9, label %else10
then9:
  ret i1 1
else10:
  br label %merge11
merge11:
  %33 = load %nyx_string*, %nyx_string** %18
  %34 = getelementptr [14 x i8], [14 x i8]* @.str18, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str18.c, i8* %34)
  %36 = call i1 @nyx_string_equals(%nyx_string* %33, %nyx_string* %35)
  br i1 %36, label %then12, label %else13
then12:
  ret i1 1
else13:
  br label %merge14
merge14:
  ret i1 0
else1:
  br label %merge2
merge2:
  %37 = load i64, i64* %4
  %38 = load { i64, i8* }*, { i64, i8* }** %3
  %39 = call i64 @nyx_array_length({ i64, i8* }* %38)
  %40 = icmp slt i64 %37, %39
  br i1 %40, label %then15, label %else16
then15:
  %41 = load { i64, i8* }*, { i64, i8* }** %3
  %42 = load i64, i64* %4
  %43 = call i64 @nyx_array_get({ i64, i8* }* %41, i64 %42)
  %44 = inttoptr i64 %43 to %Token*
  %45 = load %Token, %Token* %44
  %46 = alloca %Token
  store %Token %45, %Token* %46
  %47 = load %Token, %Token* %46
  %48 = call %nyx_string* @get_token_type(%Token %47)
  %49 = alloca %nyx_string*
  store %nyx_string* %48, %nyx_string** %49
  %50 = load %nyx_string*, %nyx_string** %49
  %51 = load %nyx_string*, %nyx_string** %18
  %52 = call i1 @nyx_string_equals(%nyx_string* %50, %nyx_string* %51)
  ret i1 %52
else16:
  br label %merge17
merge17:
  ret i1 0
}

define internal %Token @advance(%SharedEnv_parse* %env.param) {
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
  %18 = call %Token @peek(%SharedEnv_parse* %env.param)
  %19 = alloca %Token
  store %Token %18, %Token* %19
  %20 = load i64, i64* %4
  %21 = add i64 %20, 1
  store i64 %21, i64* %4
  %22 = load %Token, %Token* %19
  %23 = call i64 @get_token_line(%Token %22)
  store i64 %23, i64* @g_last_line
  %24 = load %Token, %Token* %19
  %25 = call i64 @get_token_column(%Token %24)
  store i64 %25, i64* @g_last_col
  %26 = load %Token, %Token* %19
  ret %Token %26
}

define internal i1 @check_at(%SharedEnv_parse* %env.param, i64 %offset.param, %nyx_string* %type.param) {
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
  %18 = alloca i64
  store i64 %offset.param, i64* %18
  %19 = alloca %nyx_string*
  store %nyx_string* %type.param, %nyx_string** %19
  %20 = load i64, i64* %4
  %21 = load i64, i64* %18
  %22 = add i64 %20, %21
  %23 = alloca i64
  store i64 %22, i64* %23
  %24 = load i64, i64* %23
  %25 = load { i64, i8* }*, { i64, i8* }** %3
  %26 = call i64 @nyx_array_length({ i64, i8* }* %25)
  %27 = icmp slt i64 %24, %26
  br i1 %27, label %then0, label %else1
then0:
  %28 = load { i64, i8* }*, { i64, i8* }** %3
  %29 = load i64, i64* %23
  %30 = call i64 @nyx_array_get({ i64, i8* }* %28, i64 %29)
  %31 = inttoptr i64 %30 to %Token*
  %32 = load %Token, %Token* %31
  %33 = alloca %Token
  store %Token %32, %Token* %33
  %34 = load %Token, %Token* %33
  %35 = call %nyx_string* @get_token_type(%Token %34)
  %36 = alloca %nyx_string*
  store %nyx_string* %35, %nyx_string** %36
  %37 = load %nyx_string*, %nyx_string** %36
  %38 = load %nyx_string*, %nyx_string** %19
  %39 = call i1 @nyx_string_equals(%nyx_string* %37, %nyx_string* %38)
  ret i1 %39
else1:
  br label %merge2
merge2:
  ret i1 0
}

define internal %nyx_string* @p_msg(%SharedEnv_parse* %env.param, %nyx_string* %es.param, %nyx_string* %en.param) {
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
  %18 = alloca %nyx_string*
  store %nyx_string* %es.param, %nyx_string** %18
  %19 = alloca %nyx_string*
  store %nyx_string* %en.param, %nyx_string** %19
  %20 = load i64, i64* %8
  %21 = icmp eq i64 %20, 1
  br i1 %21, label %then0, label %else1
then0:
  %22 = load %nyx_string*, %nyx_string** %18
  ret %nyx_string* %22
else1:
  br label %merge2
merge2:
  %23 = load %nyx_string*, %nyx_string** %19
  ret %nyx_string* %23
}

define internal %nyx_string* @p_json_escape(%SharedEnv_parse* %env.param, %nyx_string* %s.param) {
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
  %18 = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %18
  %19 = getelementptr [1 x i8], [1 x i8]* @.str19, i32 0, i32 0
  %20 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str19.c, i8* %19)
  %21 = alloca %nyx_string*
  store %nyx_string* %20, %nyx_string** %21
  %22 = alloca i64
  store i64 0, i64* %22
  %23 = alloca i64
  store i64 0, i64* %23
  %24 = load %nyx_string*, %nyx_string** %18
  %25 = call i64 @nyx_string_byte_length(%nyx_string* %24)
  %26 = alloca i64
  store i64 %25, i64* %26
  br label %while_cond0
while_cond0:
  %27 = load i64, i64* %23
  %28 = load i64, i64* %26
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %while_body1, label %while_end2
while_body1:
  %30 = load %nyx_string*, %nyx_string** %18
  %31 = load i64, i64* %23
  %32 = call i8 @nyx_string_char_at(%nyx_string* %30, i64 %31)
  %33 = zext i8 %32 to i64
  %34 = alloca i64
  store i64 %33, i64* %34
  %35 = getelementptr [1 x i8], [1 x i8]* @.str20, i32 0, i32 0
  %36 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str20.c, i8* %35)
  %37 = alloca %nyx_string*
  store %nyx_string* %36, %nyx_string** %37
  %38 = load i64, i64* %34
  %39 = icmp eq i64 %38, 34
  br i1 %39, label %then3, label %else4
then3:
  %40 = getelementptr [3 x i8], [3 x i8]* @.str21, i32 0, i32 0
  %41 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str21.c, i8* %40)
  store %nyx_string* %41, %nyx_string** %37
  br label %merge5
else4:
  br label %merge5
merge5:
  %42 = load i64, i64* %34
  %43 = icmp eq i64 %42, 92
  br i1 %43, label %then6, label %else7
then6:
  %44 = getelementptr [3 x i8], [3 x i8]* @.str22, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str22.c, i8* %44)
  store %nyx_string* %45, %nyx_string** %37
  br label %merge8
else7:
  br label %merge8
merge8:
  %46 = load i64, i64* %34
  %47 = icmp eq i64 %46, 10
  br i1 %47, label %then9, label %else10
then9:
  %48 = getelementptr [3 x i8], [3 x i8]* @.str23, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str23.c, i8* %48)
  store %nyx_string* %49, %nyx_string** %37
  br label %merge11
else10:
  br label %merge11
merge11:
  %50 = load i64, i64* %34
  %51 = icmp eq i64 %50, 13
  br i1 %51, label %then12, label %else13
then12:
  %52 = getelementptr [3 x i8], [3 x i8]* @.str24, i32 0, i32 0
  %53 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str24.c, i8* %52)
  store %nyx_string* %53, %nyx_string** %37
  br label %merge14
else13:
  br label %merge14
merge14:
  %54 = load i64, i64* %34
  %55 = icmp eq i64 %54, 9
  br i1 %55, label %then15, label %else16
then15:
  %56 = getelementptr [3 x i8], [3 x i8]* @.str25, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str25.c, i8* %56)
  store %nyx_string* %57, %nyx_string** %37
  br label %merge17
else16:
  br label %merge17
merge17:
  %58 = load %nyx_string*, %nyx_string** %37
  %59 = getelementptr [1 x i8], [1 x i8]* @.str26, i32 0, i32 0
  %60 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str26.c, i8* %59)
  %61 = call i1 @nyx_string_equals(%nyx_string* %58, %nyx_string* %60)
  %62 = xor i1 %61, true
  br i1 %62, label %then18, label %else19
then18:
  %63 = load %nyx_string*, %nyx_string** %21
  %64 = load %nyx_string*, %nyx_string** %18
  %65 = load i64, i64* %22
  %66 = load i64, i64* %23
  %67 = call %nyx_string* @nyx_string_substring(%nyx_string* %64, i64 %65, i64 %66)
  %68 = call %nyx_string* @nyx_string_concat(%nyx_string* %63, %nyx_string* %67)
  %69 = load %nyx_string*, %nyx_string** %37
  %70 = call %nyx_string* @nyx_string_concat(%nyx_string* %68, %nyx_string* %69)
  store %nyx_string* %70, %nyx_string** %21
  %71 = load i64, i64* %23
  %72 = add i64 %71, 1
  store i64 %72, i64* %22
  br label %merge20
else19:
  br label %merge20
merge20:
  %73 = load i64, i64* %23
  %74 = add i64 %73, 1
  store i64 %74, i64* %23
  br label %while_cond0
while_end2:
  %75 = load i64, i64* %22
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %then21, label %else22
then21:
  %77 = load %nyx_string*, %nyx_string** %18
  ret %nyx_string* %77
else22:
  br label %merge23
merge23:
  %78 = load %nyx_string*, %nyx_string** %21
  %79 = load %nyx_string*, %nyx_string** %18
  %80 = load i64, i64* %22
  %81 = load i64, i64* %26
  %82 = call %nyx_string* @nyx_string_substring(%nyx_string* %79, i64 %80, i64 %81)
  %83 = call %nyx_string* @nyx_string_concat(%nyx_string* %78, %nyx_string* %82)
  ret %nyx_string* %83
}

define internal i64 @p_diag(%SharedEnv_parse* %env.param, %nyx_string* %code.param, i64 %ln.param, i64 %cl.param, %nyx_string* %dmsg.param) {
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
  %18 = alloca %nyx_string*
  store %nyx_string* %code.param, %nyx_string** %18
  %19 = alloca i64
  store i64 %ln.param, i64* %19
  %20 = alloca i64
  store i64 %cl.param, i64* %20
  %21 = alloca %nyx_string*
  store %nyx_string* %dmsg.param, %nyx_string** %21
  %22 = load i64, i64* %7
  %23 = icmp eq i64 %22, 1
  br i1 %23, label %then0, label %else1
then0:
  ret i64 0
else1:
  br label %merge2
merge2:
  %24 = load i64, i64* %6
  %25 = add i64 %24, 1
  store i64 %25, i64* %6
  %26 = load i64, i64* @g_parse_error_count
  %27 = add i64 %26, 1
  store i64 %27, i64* @g_parse_error_count
  %28 = load i64, i64* %6
  %29 = icmp sgt i64 %28, 20
  br i1 %29, label %then3, label %else4
then3:
  %30 = getelementptr [39 x i8], [39 x i8]* @.str27, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str27.c, i8* %30)
  %32 = getelementptr [32 x i8], [32 x i8]* @.str28, i32 0, i32 0
  %33 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str28.c, i8* %32)
  %34 = call %nyx_string* @p_msg(%SharedEnv_parse* %env.param, %nyx_string* %31, %nyx_string* %33)
  %35 = alloca %nyx_string*
  store %nyx_string* %34, %nyx_string** %35
  %36 = load i64, i64* %9
  %37 = icmp eq i64 %36, 1
  br i1 %37, label %then6, label %else7
then6:
  %38 = getelementptr [65 x i8], [65 x i8]* @.str29, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str29.c, i8* %38)
  %40 = load %nyx_string*, %nyx_string** %35
  %41 = call %nyx_string* @p_json_escape(%SharedEnv_parse* %env.param, %nyx_string* %40)
  %42 = call %nyx_string* @nyx_string_concat(%nyx_string* %39, %nyx_string* %41)
  %43 = getelementptr [3 x i8], [3 x i8]* @.str30, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str30.c, i8* %43)
  %45 = call %nyx_string* @nyx_string_concat(%nyx_string* %42, %nyx_string* %44)
  %46 = call i8* @nyx_string_to_cstr(%nyx_string* %45)
  call void @nyx_print_string(i8* %46)
  br label %merge8
else7:
  %47 = getelementptr [18 x i8], [18 x i8]* @.str31, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str31.c, i8* %47)
  %49 = load %nyx_string*, %nyx_string** %35
  %50 = call %nyx_string* @nyx_string_concat(%nyx_string* %48, %nyx_string* %49)
  %51 = call i8* @nyx_string_to_cstr(%nyx_string* %50)
  call void @nyx_print_string(i8* %51)
  br label %merge8
merge8:
  store i64 1, i64* %7
  ret i64 0
else4:
  br label %merge5
merge5:
  %52 = load i64, i64* %9
  %53 = icmp eq i64 %52, 1
  br i1 %53, label %then9, label %else10
then9:
  %54 = getelementptr [10 x i8], [10 x i8]* @.str32, i32 0, i32 0
  %55 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str32.c, i8* %54)
  %56 = load %nyx_string*, %nyx_string** %18
  %57 = call %nyx_string* @nyx_string_concat(%nyx_string* %55, %nyx_string* %56)
  %58 = getelementptr [2 x i8], [2 x i8]* @.str33, i32 0, i32 0
  %59 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str33.c, i8* %58)
  %60 = call %nyx_string* @nyx_string_concat(%nyx_string* %57, %nyx_string* %59)
  %61 = alloca %nyx_string*
  store %nyx_string* %60, %nyx_string** %61
  %62 = load %nyx_string*, %nyx_string** %61
  %63 = getelementptr [20 x i8], [20 x i8]* @.str34, i32 0, i32 0
  %64 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str34.c, i8* %63)
  %65 = call %nyx_string* @nyx_string_concat(%nyx_string* %62, %nyx_string* %64)
  store %nyx_string* %65, %nyx_string** %61
  %66 = load %nyx_string*, %nyx_string** %61
  %67 = getelementptr [17 x i8], [17 x i8]* @.str35, i32 0, i32 0
  %68 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str35.c, i8* %67)
  %69 = call %nyx_string* @nyx_string_concat(%nyx_string* %66, %nyx_string* %68)
  store %nyx_string* %69, %nyx_string** %61
  %70 = load i64, i64* %19
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %then12, label %else13
then12:
  %72 = load %nyx_string*, %nyx_string** %61
  %73 = getelementptr [9 x i8], [9 x i8]* @.str36, i32 0, i32 0
  %74 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str36.c, i8* %73)
  %75 = call %nyx_string* @nyx_string_concat(%nyx_string* %72, %nyx_string* %74)
  %76 = load i64, i64* %19
  %77 = call %nyx_string* @nyx_string_from_int(i64 %76)
  %78 = call %nyx_string* @nyx_string_concat(%nyx_string* %75, %nyx_string* %77)
  store %nyx_string* %78, %nyx_string** %61
  %79 = load %nyx_string*, %nyx_string** %61
  %80 = getelementptr [11 x i8], [11 x i8]* @.str37, i32 0, i32 0
  %81 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str37.c, i8* %80)
  %82 = call %nyx_string* @nyx_string_concat(%nyx_string* %79, %nyx_string* %81)
  %83 = load i64, i64* %20
  %84 = call %nyx_string* @nyx_string_from_int(i64 %83)
  %85 = call %nyx_string* @nyx_string_concat(%nyx_string* %82, %nyx_string* %84)
  store %nyx_string* %85, %nyx_string** %61
  br label %merge14
else13:
  br label %merge14
merge14:
  %86 = load %nyx_string*, %nyx_string** %61
  %87 = getelementptr [13 x i8], [13 x i8]* @.str38, i32 0, i32 0
  %88 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str38.c, i8* %87)
  %89 = call %nyx_string* @nyx_string_concat(%nyx_string* %86, %nyx_string* %88)
  %90 = load %nyx_string*, %nyx_string** %21
  %91 = call %nyx_string* @p_json_escape(%SharedEnv_parse* %env.param, %nyx_string* %90)
  %92 = call %nyx_string* @nyx_string_concat(%nyx_string* %89, %nyx_string* %91)
  %93 = getelementptr [3 x i8], [3 x i8]* @.str39, i32 0, i32 0
  %94 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str39.c, i8* %93)
  %95 = call %nyx_string* @nyx_string_concat(%nyx_string* %92, %nyx_string* %94)
  store %nyx_string* %95, %nyx_string** %61
  %96 = load %nyx_string*, %nyx_string** %61
  %97 = call i8* @nyx_string_to_cstr(%nyx_string* %96)
  call void @nyx_print_string(i8* %97)
  ret i64 0
else10:
  br label %merge11
merge11:
  %98 = getelementptr [8 x i8], [8 x i8]* @.str40, i32 0, i32 0
  %99 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str40.c, i8* %98)
  %100 = load %nyx_string*, %nyx_string** %18
  %101 = call %nyx_string* @nyx_string_concat(%nyx_string* %99, %nyx_string* %100)
  %102 = getelementptr [4 x i8], [4 x i8]* @.str41, i32 0, i32 0
  %103 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str41.c, i8* %102)
  %104 = call %nyx_string* @nyx_string_concat(%nyx_string* %101, %nyx_string* %103)
  %105 = load %nyx_string*, %nyx_string** %21
  %106 = call %nyx_string* @nyx_string_concat(%nyx_string* %104, %nyx_string* %105)
  %107 = call i8* @nyx_string_to_cstr(%nyx_string* %106)
  call void @nyx_print_string(i8* %107)
  %108 = getelementptr [7 x i8], [7 x i8]* @.str42, i32 0, i32 0
  %109 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str42.c, i8* %108)
  %110 = getelementptr [7 x i8], [7 x i8]* @.str43, i32 0, i32 0
  %111 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str43.c, i8* %110)
  %112 = getelementptr [5 x i8], [5 x i8]* @.str44, i32 0, i32 0
  %113 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str44.c, i8* %112)
  %114 = call %nyx_string* @p_msg(%SharedEnv_parse* %env.param, %nyx_string* %111, %nyx_string* %113)
  %115 = call %nyx_string* @nyx_string_concat(%nyx_string* %109, %nyx_string* %114)
  %116 = getelementptr [2 x i8], [2 x i8]* @.str45, i32 0, i32 0
  %117 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str45.c, i8* %116)
  %118 = call %nyx_string* @nyx_string_concat(%nyx_string* %115, %nyx_string* %117)
  %119 = load i64, i64* %19
  %120 = call %nyx_string* @nyx_string_from_int(i64 %119)
  %121 = call %nyx_string* @nyx_string_concat(%nyx_string* %118, %nyx_string* %120)
  %122 = getelementptr [2 x i8], [2 x i8]* @.str46, i32 0, i32 0
  %123 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str46.c, i8* %122)
  %124 = call %nyx_string* @nyx_string_concat(%nyx_string* %121, %nyx_string* %123)
  %125 = load i64, i64* %20
  %126 = call %nyx_string* @nyx_string_from_int(i64 %125)
  %127 = call %nyx_string* @nyx_string_concat(%nyx_string* %124, %nyx_string* %126)
  %128 = call i8* @nyx_string_to_cstr(%nyx_string* %127)
  call void @nyx_print_string(i8* %128)
  ret i64 0
}

define internal i1 @is_keyword_token(%SharedEnv_parse* %env.param, %nyx_string* %tt.param) {
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
  %18 = alloca %nyx_string*
  store %nyx_string* %tt.param, %nyx_string** %18
  %19 = alloca i1
  store i1 true, i1* %19
  %20 = alloca i1
  store i1 true, i1* %20
  %21 = alloca i1
  store i1 true, i1* %21
  %22 = alloca i1
  store i1 true, i1* %22
  %23 = load %nyx_string*, %nyx_string** %18
  %24 = getelementptr [4 x i8], [4 x i8]* @.str47, i32 0, i32 0
  %25 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str47.c, i8* %24)
  %26 = call i1 @nyx_string_equals(%nyx_string* %23, %nyx_string* %25)
  br i1 %26, label %sc_or_end1, label %sc_or_rhs0
sc_or_rhs0:
  %27 = load %nyx_string*, %nyx_string** %18
  %28 = getelementptr [4 x i8], [4 x i8]* @.str48, i32 0, i32 0
  %29 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str48.c, i8* %28)
  %30 = call i1 @nyx_string_equals(%nyx_string* %27, %nyx_string* %29)
  store i1 %30, i1* %22
  br label %sc_or_end1
sc_or_end1:
  %31 = load i1, i1* %22
  br i1 %31, label %sc_or_end3, label %sc_or_rhs2
sc_or_rhs2:
  %32 = load %nyx_string*, %nyx_string** %18
  %33 = getelementptr [6 x i8], [6 x i8]* @.str49, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str49.c, i8* %33)
  %35 = call i1 @nyx_string_equals(%nyx_string* %32, %nyx_string* %34)
  store i1 %35, i1* %21
  br label %sc_or_end3
sc_or_end3:
  %36 = load i1, i1* %21
  br i1 %36, label %sc_or_end5, label %sc_or_rhs4
sc_or_rhs4:
  %37 = load %nyx_string*, %nyx_string** %18
  %38 = getelementptr [3 x i8], [3 x i8]* @.str50, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str50.c, i8* %38)
  %40 = call i1 @nyx_string_equals(%nyx_string* %37, %nyx_string* %39)
  store i1 %40, i1* %20
  br label %sc_or_end5
sc_or_end5:
  %41 = load i1, i1* %20
  br i1 %41, label %sc_or_end7, label %sc_or_rhs6
sc_or_rhs6:
  %42 = load %nyx_string*, %nyx_string** %18
  %43 = getelementptr [7 x i8], [7 x i8]* @.str51, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str51.c, i8* %43)
  %45 = call i1 @nyx_string_equals(%nyx_string* %42, %nyx_string* %44)
  store i1 %45, i1* %19
  br label %sc_or_end7
sc_or_end7:
  %46 = load i1, i1* %19
  br i1 %46, label %then8, label %else9
then8:
  ret i1 1
else9:
  br label %merge10
merge10:
  %47 = alloca i1
  store i1 true, i1* %47
  %48 = alloca i1
  store i1 true, i1* %48
  %49 = alloca i1
  store i1 true, i1* %49
  %50 = alloca i1
  store i1 true, i1* %50
  %51 = load %nyx_string*, %nyx_string** %18
  %52 = getelementptr [3 x i8], [3 x i8]* @.str52, i32 0, i32 0
  %53 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str52.c, i8* %52)
  %54 = call i1 @nyx_string_equals(%nyx_string* %51, %nyx_string* %53)
  br i1 %54, label %sc_or_end12, label %sc_or_rhs11
sc_or_rhs11:
  %55 = load %nyx_string*, %nyx_string** %18
  %56 = getelementptr [5 x i8], [5 x i8]* @.str53, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str53.c, i8* %56)
  %58 = call i1 @nyx_string_equals(%nyx_string* %55, %nyx_string* %57)
  store i1 %58, i1* %50
  br label %sc_or_end12
sc_or_end12:
  %59 = load i1, i1* %50
  br i1 %59, label %sc_or_end14, label %sc_or_rhs13
sc_or_rhs13:
  %60 = load %nyx_string*, %nyx_string** %18
  %61 = getelementptr [6 x i8], [6 x i8]* @.str54, i32 0, i32 0
  %62 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str54.c, i8* %61)
  %63 = call i1 @nyx_string_equals(%nyx_string* %60, %nyx_string* %62)
  store i1 %63, i1* %49
  br label %sc_or_end14
sc_or_end14:
  %64 = load i1, i1* %49
  br i1 %64, label %sc_or_end16, label %sc_or_rhs15
sc_or_rhs15:
  %65 = load %nyx_string*, %nyx_string** %18
  %66 = getelementptr [4 x i8], [4 x i8]* @.str55, i32 0, i32 0
  %67 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str55.c, i8* %66)
  %68 = call i1 @nyx_string_equals(%nyx_string* %65, %nyx_string* %67)
  store i1 %68, i1* %48
  br label %sc_or_end16
sc_or_end16:
  %69 = load i1, i1* %48
  br i1 %69, label %sc_or_end18, label %sc_or_rhs17
sc_or_rhs17:
  %70 = load %nyx_string*, %nyx_string** %18
  %71 = getelementptr [3 x i8], [3 x i8]* @.str56, i32 0, i32 0
  %72 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str56.c, i8* %71)
  %73 = call i1 @nyx_string_equals(%nyx_string* %70, %nyx_string* %72)
  store i1 %73, i1* %47
  br label %sc_or_end18
sc_or_end18:
  %74 = load i1, i1* %47
  br i1 %74, label %then19, label %else20
then19:
  ret i1 1
else20:
  br label %merge21
merge21:
  %75 = alloca i1
  store i1 true, i1* %75
  %76 = alloca i1
  store i1 true, i1* %76
  %77 = alloca i1
  store i1 true, i1* %77
  %78 = alloca i1
  store i1 true, i1* %78
  %79 = load %nyx_string*, %nyx_string** %18
  %80 = getelementptr [6 x i8], [6 x i8]* @.str57, i32 0, i32 0
  %81 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str57.c, i8* %80)
  %82 = call i1 @nyx_string_equals(%nyx_string* %79, %nyx_string* %81)
  br i1 %82, label %sc_or_end23, label %sc_or_rhs22
sc_or_rhs22:
  %83 = load %nyx_string*, %nyx_string** %18
  %84 = getelementptr [9 x i8], [9 x i8]* @.str58, i32 0, i32 0
  %85 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str58.c, i8* %84)
  %86 = call i1 @nyx_string_equals(%nyx_string* %83, %nyx_string* %85)
  store i1 %86, i1* %78
  br label %sc_or_end23
sc_or_end23:
  %87 = load i1, i1* %78
  br i1 %87, label %sc_or_end25, label %sc_or_rhs24
sc_or_rhs24:
  %88 = load %nyx_string*, %nyx_string** %18
  %89 = getelementptr [7 x i8], [7 x i8]* @.str59, i32 0, i32 0
  %90 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str59.c, i8* %89)
  %91 = call i1 @nyx_string_equals(%nyx_string* %88, %nyx_string* %90)
  store i1 %91, i1* %77
  br label %sc_or_end25
sc_or_end25:
  %92 = load i1, i1* %77
  br i1 %92, label %sc_or_end27, label %sc_or_rhs26
sc_or_rhs26:
  %93 = load %nyx_string*, %nyx_string** %18
  %94 = getelementptr [5 x i8], [5 x i8]* @.str60, i32 0, i32 0
  %95 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str60.c, i8* %94)
  %96 = call i1 @nyx_string_equals(%nyx_string* %93, %nyx_string* %95)
  store i1 %96, i1* %76
  br label %sc_or_end27
sc_or_end27:
  %97 = load i1, i1* %76
  br i1 %97, label %sc_or_end29, label %sc_or_rhs28
sc_or_rhs28:
  %98 = load %nyx_string*, %nyx_string** %18
  %99 = getelementptr [6 x i8], [6 x i8]* @.str61, i32 0, i32 0
  %100 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str61.c, i8* %99)
  %101 = call i1 @nyx_string_equals(%nyx_string* %98, %nyx_string* %100)
  store i1 %101, i1* %75
  br label %sc_or_end29
sc_or_end29:
  %102 = load i1, i1* %75
  br i1 %102, label %then30, label %else31
then30:
  ret i1 1
else31:
  br label %merge32
merge32:
  %103 = alloca i1
  store i1 true, i1* %103
  %104 = alloca i1
  store i1 true, i1* %104
  %105 = alloca i1
  store i1 true, i1* %105
  %106 = alloca i1
  store i1 true, i1* %106
  %107 = load %nyx_string*, %nyx_string** %18
  %108 = getelementptr [7 x i8], [7 x i8]* @.str62, i32 0, i32 0
  %109 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str62.c, i8* %108)
  %110 = call i1 @nyx_string_equals(%nyx_string* %107, %nyx_string* %109)
  br i1 %110, label %sc_or_end34, label %sc_or_rhs33
sc_or_rhs33:
  %111 = load %nyx_string*, %nyx_string** %18
  %112 = getelementptr [7 x i8], [7 x i8]* @.str63, i32 0, i32 0
  %113 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str63.c, i8* %112)
  %114 = call i1 @nyx_string_equals(%nyx_string* %111, %nyx_string* %113)
  store i1 %114, i1* %106
  br label %sc_or_end34
sc_or_end34:
  %115 = load i1, i1* %106
  br i1 %115, label %sc_or_end36, label %sc_or_rhs35
sc_or_rhs35:
  %116 = load %nyx_string*, %nyx_string** %18
  %117 = getelementptr [5 x i8], [5 x i8]* @.str64, i32 0, i32 0
  %118 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str64.c, i8* %117)
  %119 = call i1 @nyx_string_equals(%nyx_string* %116, %nyx_string* %118)
  store i1 %119, i1* %105
  br label %sc_or_end36
sc_or_end36:
  %120 = load i1, i1* %105
  br i1 %120, label %sc_or_end38, label %sc_or_rhs37
sc_or_rhs37:
  %121 = load %nyx_string*, %nyx_string** %18
  %122 = getelementptr [5 x i8], [5 x i8]* @.str65, i32 0, i32 0
  %123 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str65.c, i8* %122)
  %124 = call i1 @nyx_string_equals(%nyx_string* %121, %nyx_string* %123)
  store i1 %124, i1* %104
  br label %sc_or_end38
sc_or_end38:
  %125 = load i1, i1* %104
  br i1 %125, label %sc_or_end40, label %sc_or_rhs39
sc_or_rhs39:
  %126 = load %nyx_string*, %nyx_string** %18
  %127 = getelementptr [6 x i8], [6 x i8]* @.str66, i32 0, i32 0
  %128 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str66.c, i8* %127)
  %129 = call i1 @nyx_string_equals(%nyx_string* %126, %nyx_string* %128)
  store i1 %129, i1* %103
  br label %sc_or_end40
sc_or_end40:
  %130 = load i1, i1* %103
  br i1 %130, label %then41, label %else42
then41:
  ret i1 1
else42:
  br label %merge43
merge43:
  %131 = alloca i1
  store i1 true, i1* %131
  %132 = alloca i1
  store i1 true, i1* %132
  %133 = alloca i1
  store i1 true, i1* %133
  %134 = alloca i1
  store i1 true, i1* %134
  %135 = load %nyx_string*, %nyx_string** %18
  %136 = getelementptr [4 x i8], [4 x i8]* @.str67, i32 0, i32 0
  %137 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str67.c, i8* %136)
  %138 = call i1 @nyx_string_equals(%nyx_string* %135, %nyx_string* %137)
  br i1 %138, label %sc_or_end45, label %sc_or_rhs44
sc_or_rhs44:
  %139 = load %nyx_string*, %nyx_string** %18
  %140 = getelementptr [3 x i8], [3 x i8]* @.str68, i32 0, i32 0
  %141 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str68.c, i8* %140)
  %142 = call i1 @nyx_string_equals(%nyx_string* %139, %nyx_string* %141)
  store i1 %142, i1* %134
  br label %sc_or_end45
sc_or_end45:
  %143 = load i1, i1* %134
  br i1 %143, label %sc_or_end47, label %sc_or_rhs46
sc_or_rhs46:
  %144 = load %nyx_string*, %nyx_string** %18
  %145 = getelementptr [4 x i8], [4 x i8]* @.str69, i32 0, i32 0
  %146 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str69.c, i8* %145)
  %147 = call i1 @nyx_string_equals(%nyx_string* %144, %nyx_string* %146)
  store i1 %147, i1* %133
  br label %sc_or_end47
sc_or_end47:
  %148 = load i1, i1* %133
  br i1 %148, label %sc_or_end49, label %sc_or_rhs48
sc_or_rhs48:
  %149 = load %nyx_string*, %nyx_string** %18
  %150 = getelementptr [5 x i8], [5 x i8]* @.str70, i32 0, i32 0
  %151 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str70.c, i8* %150)
  %152 = call i1 @nyx_string_equals(%nyx_string* %149, %nyx_string* %151)
  store i1 %152, i1* %132
  br label %sc_or_end49
sc_or_end49:
  %153 = load i1, i1* %132
  br i1 %153, label %sc_or_end51, label %sc_or_rhs50
sc_or_rhs50:
  %154 = load %nyx_string*, %nyx_string** %18
  %155 = getelementptr [6 x i8], [6 x i8]* @.str71, i32 0, i32 0
  %156 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str71.c, i8* %155)
  %157 = call i1 @nyx_string_equals(%nyx_string* %154, %nyx_string* %156)
  store i1 %157, i1* %131
  br label %sc_or_end51
sc_or_end51:
  %158 = load i1, i1* %131
  br i1 %158, label %then52, label %else53
then52:
  ret i1 1
else53:
  br label %merge54
merge54:
  %159 = alloca i1
  store i1 true, i1* %159
  %160 = alloca i1
  store i1 true, i1* %160
  %161 = alloca i1
  store i1 true, i1* %161
  %162 = alloca i1
  store i1 true, i1* %162
  %163 = load %nyx_string*, %nyx_string** %18
  %164 = getelementptr [5 x i8], [5 x i8]* @.str72, i32 0, i32 0
  %165 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str72.c, i8* %164)
  %166 = call i1 @nyx_string_equals(%nyx_string* %163, %nyx_string* %165)
  br i1 %166, label %sc_or_end56, label %sc_or_rhs55
sc_or_rhs55:
  %167 = load %nyx_string*, %nyx_string** %18
  %168 = getelementptr [7 x i8], [7 x i8]* @.str73, i32 0, i32 0
  %169 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str73.c, i8* %168)
  %170 = call i1 @nyx_string_equals(%nyx_string* %167, %nyx_string* %169)
  store i1 %170, i1* %162
  br label %sc_or_end56
sc_or_end56:
  %171 = load i1, i1* %162
  br i1 %171, label %sc_or_end58, label %sc_or_rhs57
sc_or_rhs57:
  %172 = load %nyx_string*, %nyx_string** %18
  %173 = getelementptr [7 x i8], [7 x i8]* @.str74, i32 0, i32 0
  %174 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str74.c, i8* %173)
  %175 = call i1 @nyx_string_equals(%nyx_string* %172, %nyx_string* %174)
  store i1 %175, i1* %161
  br label %sc_or_end58
sc_or_end58:
  %176 = load i1, i1* %161
  br i1 %176, label %sc_or_end60, label %sc_or_rhs59
sc_or_rhs59:
  %177 = load %nyx_string*, %nyx_string** %18
  %178 = getelementptr [3 x i8], [3 x i8]* @.str75, i32 0, i32 0
  %179 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str75.c, i8* %178)
  %180 = call i1 @nyx_string_equals(%nyx_string* %177, %nyx_string* %179)
  store i1 %180, i1* %160
  br label %sc_or_end60
sc_or_end60:
  %181 = load i1, i1* %160
  br i1 %181, label %sc_or_end62, label %sc_or_rhs61
sc_or_rhs61:
  %182 = load %nyx_string*, %nyx_string** %18
  %183 = getelementptr [7 x i8], [7 x i8]* @.str76, i32 0, i32 0
  %184 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str76.c, i8* %183)
  %185 = call i1 @nyx_string_equals(%nyx_string* %182, %nyx_string* %184)
  store i1 %185, i1* %159
  br label %sc_or_end62
sc_or_end62:
  %186 = load i1, i1* %159
  br i1 %186, label %then63, label %else64
then63:
  ret i1 1
else64:
  br label %merge65
merge65:
  %187 = alloca i1
  store i1 true, i1* %187
  %188 = alloca i1
  store i1 true, i1* %188
  %189 = alloca i1
  store i1 true, i1* %189
  %190 = alloca i1
  store i1 true, i1* %190
  %191 = load %nyx_string*, %nyx_string** %18
  %192 = getelementptr [7 x i8], [7 x i8]* @.str77, i32 0, i32 0
  %193 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str77.c, i8* %192)
  %194 = call i1 @nyx_string_equals(%nyx_string* %191, %nyx_string* %193)
  br i1 %194, label %sc_or_end67, label %sc_or_rhs66
sc_or_rhs66:
  %195 = load %nyx_string*, %nyx_string** %18
  %196 = getelementptr [7 x i8], [7 x i8]* @.str78, i32 0, i32 0
  %197 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str78.c, i8* %196)
  %198 = call i1 @nyx_string_equals(%nyx_string* %195, %nyx_string* %197)
  store i1 %198, i1* %190
  br label %sc_or_end67
sc_or_end67:
  %199 = load i1, i1* %190
  br i1 %199, label %sc_or_end69, label %sc_or_rhs68
sc_or_rhs68:
  %200 = load %nyx_string*, %nyx_string** %18
  %201 = getelementptr [8 x i8], [8 x i8]* @.str79, i32 0, i32 0
  %202 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str79.c, i8* %201)
  %203 = call i1 @nyx_string_equals(%nyx_string* %200, %nyx_string* %202)
  store i1 %203, i1* %189
  br label %sc_or_end69
sc_or_end69:
  %204 = load i1, i1* %189
  br i1 %204, label %sc_or_end71, label %sc_or_rhs70
sc_or_rhs70:
  %205 = load %nyx_string*, %nyx_string** %18
  %206 = getelementptr [4 x i8], [4 x i8]* @.str80, i32 0, i32 0
  %207 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str80.c, i8* %206)
  %208 = call i1 @nyx_string_equals(%nyx_string* %205, %nyx_string* %207)
  store i1 %208, i1* %188
  br label %sc_or_end71
sc_or_end71:
  %209 = load i1, i1* %188
  br i1 %209, label %sc_or_end73, label %sc_or_rhs72
sc_or_rhs72:
  %210 = load %nyx_string*, %nyx_string** %18
  %211 = getelementptr [4 x i8], [4 x i8]* @.str81, i32 0, i32 0
  %212 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str81.c, i8* %211)
  %213 = call i1 @nyx_string_equals(%nyx_string* %210, %nyx_string* %212)
  store i1 %213, i1* %187
  br label %sc_or_end73
sc_or_end73:
  %214 = load i1, i1* %187
  br i1 %214, label %then74, label %else75
then74:
  ret i1 1
else75:
  br label %merge76
merge76:
  %215 = alloca i1
  store i1 true, i1* %215
  %216 = alloca i1
  store i1 true, i1* %216
  %217 = alloca i1
  store i1 true, i1* %217
  %218 = load %nyx_string*, %nyx_string** %18
  %219 = getelementptr [4 x i8], [4 x i8]* @.str82, i32 0, i32 0
  %220 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str82.c, i8* %219)
  %221 = call i1 @nyx_string_equals(%nyx_string* %218, %nyx_string* %220)
  br i1 %221, label %sc_or_end78, label %sc_or_rhs77
sc_or_rhs77:
  %222 = load %nyx_string*, %nyx_string** %18
  %223 = getelementptr [7 x i8], [7 x i8]* @.str83, i32 0, i32 0
  %224 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str83.c, i8* %223)
  %225 = call i1 @nyx_string_equals(%nyx_string* %222, %nyx_string* %224)
  store i1 %225, i1* %217
  br label %sc_or_end78
sc_or_end78:
  %226 = load i1, i1* %217
  br i1 %226, label %sc_or_end80, label %sc_or_rhs79
sc_or_rhs79:
  %227 = load %nyx_string*, %nyx_string** %18
  %228 = getelementptr [6 x i8], [6 x i8]* @.str84, i32 0, i32 0
  %229 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str84.c, i8* %228)
  %230 = call i1 @nyx_string_equals(%nyx_string* %227, %nyx_string* %229)
  store i1 %230, i1* %216
  br label %sc_or_end80
sc_or_end80:
  %231 = load i1, i1* %216
  br i1 %231, label %sc_or_end82, label %sc_or_rhs81
sc_or_rhs81:
  %232 = load %nyx_string*, %nyx_string** %18
  %233 = getelementptr [6 x i8], [6 x i8]* @.str85, i32 0, i32 0
  %234 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str85.c, i8* %233)
  %235 = call i1 @nyx_string_equals(%nyx_string* %232, %nyx_string* %234)
  store i1 %235, i1* %215
  br label %sc_or_end82
sc_or_end82:
  %236 = load i1, i1* %215
  br i1 %236, label %then83, label %else84
then83:
  ret i1 1
else84:
  br label %merge85
merge85:
  %237 = alloca i1
  store i1 true, i1* %237
  %238 = alloca i1
  store i1 true, i1* %238
  %239 = alloca i1
  store i1 true, i1* %239
  %240 = alloca i1
  store i1 true, i1* %240
  %241 = load %nyx_string*, %nyx_string** %18
  %242 = getelementptr [4 x i8], [4 x i8]* @.str86, i32 0, i32 0
  %243 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str86.c, i8* %242)
  %244 = call i1 @nyx_string_equals(%nyx_string* %241, %nyx_string* %243)
  br i1 %244, label %sc_or_end87, label %sc_or_rhs86
sc_or_rhs86:
  %245 = load %nyx_string*, %nyx_string** %18
  %246 = getelementptr [6 x i8], [6 x i8]* @.str87, i32 0, i32 0
  %247 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str87.c, i8* %246)
  %248 = call i1 @nyx_string_equals(%nyx_string* %245, %nyx_string* %247)
  store i1 %248, i1* %240
  br label %sc_or_end87
sc_or_end87:
  %249 = load i1, i1* %240
  br i1 %249, label %sc_or_end89, label %sc_or_rhs88
sc_or_rhs88:
  %250 = load %nyx_string*, %nyx_string** %18
  %251 = getelementptr [6 x i8], [6 x i8]* @.str88, i32 0, i32 0
  %252 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str88.c, i8* %251)
  %253 = call i1 @nyx_string_equals(%nyx_string* %250, %nyx_string* %252)
  store i1 %253, i1* %239
  br label %sc_or_end89
sc_or_end89:
  %254 = load i1, i1* %239
  br i1 %254, label %sc_or_end91, label %sc_or_rhs90
sc_or_rhs90:
  %255 = load %nyx_string*, %nyx_string** %18
  %256 = getelementptr [6 x i8], [6 x i8]* @.str89, i32 0, i32 0
  %257 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str89.c, i8* %256)
  %258 = call i1 @nyx_string_equals(%nyx_string* %255, %nyx_string* %257)
  store i1 %258, i1* %238
  br label %sc_or_end91
sc_or_end91:
  %259 = load i1, i1* %238
  br i1 %259, label %sc_or_end93, label %sc_or_rhs92
sc_or_rhs92:
  %260 = load %nyx_string*, %nyx_string** %18
  %261 = getelementptr [6 x i8], [6 x i8]* @.str90, i32 0, i32 0
  %262 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str90.c, i8* %261)
  %263 = call i1 @nyx_string_equals(%nyx_string* %260, %nyx_string* %262)
  store i1 %263, i1* %237
  br label %sc_or_end93
sc_or_end93:
  %264 = load i1, i1* %237
  br i1 %264, label %then94, label %else95
then94:
  ret i1 1
else95:
  br label %merge96
merge96:
  ret i1 0
}

define internal %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %type.param) {
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
  %18 = alloca %nyx_string*
  store %nyx_string* %type.param, %nyx_string** %18
  %19 = call %Token @peek(%SharedEnv_parse* %env.param)
  %20 = alloca %Token
  store %Token %19, %Token* %20
  %21 = load %Token, %Token* %20
  %22 = call %nyx_string* @get_token_type(%Token %21)
  %23 = load %nyx_string*, %nyx_string** %18
  %24 = call i1 @nyx_string_equals(%nyx_string* %22, %nyx_string* %23)
  br i1 %24, label %then0, label %else1
then0:
  %25 = call %Token @advance(%SharedEnv_parse* %env.param)
  ret %Token %25
else1:
  br label %merge2
merge2:
  %26 = load %Token, %Token* %20
  %27 = call i64 @get_token_line(%Token %26)
  %28 = alloca i64
  store i64 %27, i64* %28
  %29 = load %Token, %Token* %20
  %30 = call i64 @get_token_column(%Token %29)
  %31 = alloca i64
  store i64 %30, i64* %31
  %32 = load %Token, %Token* %20
  %33 = call %nyx_string* @get_token_value(%Token %32)
  %34 = alloca %nyx_string*
  store %nyx_string* %33, %nyx_string** %34
  %35 = load %Token, %Token* %20
  %36 = call %nyx_string* @get_token_type(%Token %35)
  %37 = alloca %nyx_string*
  store %nyx_string* %36, %nyx_string** %37
  %38 = alloca i1
  store i1 false, i1* %38
  %39 = load %nyx_string*, %nyx_string** %18
  %40 = getelementptr [11 x i8], [11 x i8]* @.str91, i32 0, i32 0
  %41 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str91.c, i8* %40)
  %42 = call i1 @nyx_string_equals(%nyx_string* %39, %nyx_string* %41)
  br i1 %42, label %sc_and_rhs3, label %sc_and_end4
sc_and_rhs3:
  %43 = load %nyx_string*, %nyx_string** %37
  %44 = call i1 @is_keyword_token(%SharedEnv_parse* %env.param, %nyx_string* %43)
  store i1 %44, i1* %38
  br label %sc_and_end4
sc_and_end4:
  %45 = load i1, i1* %38
  br i1 %45, label %then5, label %else6
then5:
  %46 = getelementptr [8 x i8], [8 x i8]* @.str92, i32 0, i32 0
  %47 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str92.c, i8* %46)
  %48 = load i64, i64* %28
  %49 = load i64, i64* %31
  %50 = getelementptr [30 x i8], [30 x i8]* @.str93, i32 0, i32 0
  %51 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str93.c, i8* %50)
  %52 = load %nyx_string*, %nyx_string** %34
  %53 = call %nyx_string* @nyx_string_concat(%nyx_string* %51, %nyx_string* %52)
  %54 = getelementptr [21 x i8], [21 x i8]* @.str94, i32 0, i32 0
  %55 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str94.c, i8* %54)
  %56 = call %nyx_string* @nyx_string_concat(%nyx_string* %53, %nyx_string* %55)
  %57 = getelementptr [21 x i8], [21 x i8]* @.str95, i32 0, i32 0
  %58 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str95.c, i8* %57)
  %59 = load %nyx_string*, %nyx_string** %34
  %60 = call %nyx_string* @nyx_string_concat(%nyx_string* %58, %nyx_string* %59)
  %61 = getelementptr [19 x i8], [19 x i8]* @.str96, i32 0, i32 0
  %62 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str96.c, i8* %61)
  %63 = call %nyx_string* @nyx_string_concat(%nyx_string* %60, %nyx_string* %62)
  %64 = call %nyx_string* @p_msg(%SharedEnv_parse* %env.param, %nyx_string* %56, %nyx_string* %63)
  %65 = call i64 @p_diag(%SharedEnv_parse* %env.param, %nyx_string* %47, i64 %48, i64 %49, %nyx_string* %64)
  br label %merge7
else6:
  %66 = getelementptr [8 x i8], [8 x i8]* @.str97, i32 0, i32 0
  %67 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str97.c, i8* %66)
  %68 = load i64, i64* %28
  %69 = load i64, i64* %31
  %70 = getelementptr [14 x i8], [14 x i8]* @.str98, i32 0, i32 0
  %71 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str98.c, i8* %70)
  %72 = load %nyx_string*, %nyx_string** %18
  %73 = call %nyx_string* @nyx_string_concat(%nyx_string* %71, %nyx_string* %72)
  %74 = getelementptr [16 x i8], [16 x i8]* @.str99, i32 0, i32 0
  %75 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str99.c, i8* %74)
  %76 = call %nyx_string* @nyx_string_concat(%nyx_string* %73, %nyx_string* %75)
  %77 = load %nyx_string*, %nyx_string** %34
  %78 = call %nyx_string* @nyx_string_concat(%nyx_string* %76, %nyx_string* %77)
  %79 = getelementptr [4 x i8], [4 x i8]* @.str100, i32 0, i32 0
  %80 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str100.c, i8* %79)
  %81 = call %nyx_string* @nyx_string_concat(%nyx_string* %78, %nyx_string* %80)
  %82 = load %nyx_string*, %nyx_string** %37
  %83 = call %nyx_string* @nyx_string_concat(%nyx_string* %81, %nyx_string* %82)
  %84 = getelementptr [2 x i8], [2 x i8]* @.str101, i32 0, i32 0
  %85 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str101.c, i8* %84)
  %86 = call %nyx_string* @nyx_string_concat(%nyx_string* %83, %nyx_string* %85)
  %87 = getelementptr [11 x i8], [11 x i8]* @.str102, i32 0, i32 0
  %88 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str102.c, i8* %87)
  %89 = load %nyx_string*, %nyx_string** %18
  %90 = call %nyx_string* @nyx_string_concat(%nyx_string* %88, %nyx_string* %89)
  %91 = getelementptr [11 x i8], [11 x i8]* @.str103, i32 0, i32 0
  %92 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str103.c, i8* %91)
  %93 = call %nyx_string* @nyx_string_concat(%nyx_string* %90, %nyx_string* %92)
  %94 = load %nyx_string*, %nyx_string** %34
  %95 = call %nyx_string* @nyx_string_concat(%nyx_string* %93, %nyx_string* %94)
  %96 = getelementptr [4 x i8], [4 x i8]* @.str104, i32 0, i32 0
  %97 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str104.c, i8* %96)
  %98 = call %nyx_string* @nyx_string_concat(%nyx_string* %95, %nyx_string* %97)
  %99 = load %nyx_string*, %nyx_string** %37
  %100 = call %nyx_string* @nyx_string_concat(%nyx_string* %98, %nyx_string* %99)
  %101 = getelementptr [2 x i8], [2 x i8]* @.str105, i32 0, i32 0
  %102 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str105.c, i8* %101)
  %103 = call %nyx_string* @nyx_string_concat(%nyx_string* %100, %nyx_string* %102)
  %104 = call %nyx_string* @p_msg(%SharedEnv_parse* %env.param, %nyx_string* %86, %nyx_string* %103)
  %105 = call i64 @p_diag(%SharedEnv_parse* %env.param, %nyx_string* %67, i64 %68, i64 %69, %nyx_string* %104)
  br label %merge7
merge7:
  %106 = alloca i1
  store i1 false, i1* %106
  %107 = alloca i1
  store i1 false, i1* %107
  %108 = alloca i1
  store i1 false, i1* %108
  %109 = load %nyx_string*, %nyx_string** %37
  %110 = getelementptr [4 x i8], [4 x i8]* @.str106, i32 0, i32 0
  %111 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str106.c, i8* %110)
  %112 = call i1 @nyx_string_equals(%nyx_string* %109, %nyx_string* %111)
  %113 = xor i1 %112, true
  br i1 %113, label %sc_and_rhs8, label %sc_and_end9
sc_and_rhs8:
  %114 = load %nyx_string*, %nyx_string** %37
  %115 = getelementptr [12 x i8], [12 x i8]* @.str107, i32 0, i32 0
  %116 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str107.c, i8* %115)
  %117 = call i1 @nyx_string_equals(%nyx_string* %114, %nyx_string* %116)
  %118 = xor i1 %117, true
  store i1 %118, i1* %108
  br label %sc_and_end9
sc_and_end9:
  %119 = load i1, i1* %108
  br i1 %119, label %sc_and_rhs10, label %sc_and_end11
sc_and_rhs10:
  %120 = load %nyx_string*, %nyx_string** %37
  %121 = getelementptr [12 x i8], [12 x i8]* @.str108, i32 0, i32 0
  %122 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str108.c, i8* %121)
  %123 = call i1 @nyx_string_equals(%nyx_string* %120, %nyx_string* %122)
  %124 = xor i1 %123, true
  store i1 %124, i1* %107
  br label %sc_and_end11
sc_and_end11:
  %125 = load i1, i1* %107
  br i1 %125, label %sc_and_rhs12, label %sc_and_end13
sc_and_rhs12:
  %126 = load %nyx_string*, %nyx_string** %37
  %127 = getelementptr [14 x i8], [14 x i8]* @.str109, i32 0, i32 0
  %128 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str109.c, i8* %127)
  %129 = call i1 @nyx_string_equals(%nyx_string* %126, %nyx_string* %128)
  %130 = xor i1 %129, true
  store i1 %130, i1* %106
  br label %sc_and_end13
sc_and_end13:
  %131 = load i1, i1* %106
  br i1 %131, label %then14, label %else15
then14:
  %132 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge16
else15:
  br label %merge16
merge16:
  %133 = load %Token, %Token* %20
  ret %Token %133
}

define internal i1 @is_on_new_line(%SharedEnv_parse* %env.param) {
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
  %18 = load i64, i64* %4
  %19 = icmp slt i64 %18, 1
  br i1 %19, label %then0, label %else1
then0:
  ret i1 0
else1:
  br label %merge2
merge2:
  %20 = load { i64, i8* }*, { i64, i8* }** %3
  %21 = load i64, i64* %4
  %22 = sub i64 %21, 1
  %23 = call i64 @nyx_array_get({ i64, i8* }* %20, i64 %22)
  %24 = inttoptr i64 %23 to %Token*
  %25 = load %Token, %Token* %24
  %26 = alloca %Token
  store %Token %25, %Token* %26
  %27 = load { i64, i8* }*, { i64, i8* }** %3
  %28 = load i64, i64* %4
  %29 = call i64 @nyx_array_get({ i64, i8* }* %27, i64 %28)
  %30 = inttoptr i64 %29 to %Token*
  %31 = load %Token, %Token* %30
  %32 = alloca %Token
  store %Token %31, %Token* %32
  %33 = load %Token, %Token* %32
  %34 = call i64 @get_token_line(%Token %33)
  %35 = load %Token, %Token* %26
  %36 = call i64 @get_token_line(%Token %35)
  %37 = icmp sgt i64 %34, %36
  ret i1 %37
}

define internal { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param) {
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
  %18 = call { i64, i8* }* @parse_logical_or(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %18
}

define internal { i64, i8* }* @parse_logical_or(%SharedEnv_parse* %env.param) {
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
  %18 = call { i64, i8* }* @parse_logical_and(%SharedEnv_parse* %env.param)
  %19 = alloca { i64, i8* }*
  store { i64, i8* }* %18, { i64, i8* }** %19
  %20 = alloca i1
  store i1 0, i1* %20
  br label %while_cond0
while_cond0:
  %21 = load i1, i1* %20
  %22 = xor i1 %21, true
  br i1 %22, label %while_body1, label %while_end2
while_body1:
  %23 = alloca i1
  store i1 true, i1* %23
  %24 = getelementptr [6 x i8], [6 x i8]* @.str110, i32 0, i32 0
  %25 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str110.c, i8* %24)
  %26 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %25)
  br i1 %26, label %sc_or_end4, label %sc_or_rhs3
sc_or_rhs3:
  %27 = getelementptr [3 x i8], [3 x i8]* @.str111, i32 0, i32 0
  %28 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str111.c, i8* %27)
  %29 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %28)
  store i1 %29, i1* %23
  br label %sc_or_end4
sc_or_end4:
  %30 = load i1, i1* %23
  br i1 %30, label %then5, label %else6
then5:
  %31 = call %Token @advance(%SharedEnv_parse* %env.param)
  %32 = alloca %Token
  store %Token %31, %Token* %32
  %33 = call { i64, i8* }* @parse_logical_and(%SharedEnv_parse* %env.param)
  %34 = alloca { i64, i8* }*
  store { i64, i8* }* %33, { i64, i8* }** %34
  %35 = getelementptr [6 x i8], [6 x i8]* @.str112, i32 0, i32 0
  %36 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str112.c, i8* %35)
  %37 = call { i64, i8* }* @nyx_array_new_ptr()
  %38 = load %Token, %Token* %32
  %39 = call %nyx_string* @get_token_type(%Token %38)
  %40 = ptrtoint %nyx_string* %39 to i64
  call void @nyx_array_push({ i64, i8* }* %37, i64 %40)
  %41 = load { i64, i8* }*, { i64, i8* }** %19
  %42 = bitcast { i64, i8* }* %41 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %37, i8* %42)
  %43 = load { i64, i8* }*, { i64, i8* }** %34
  %44 = bitcast { i64, i8* }* %43 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %37, i8* %44)
  %45 = call { i64, i8* }* @make_astnode(%nyx_string* %36, { i64, i8* }* %37)
  store { i64, i8* }* %45, { i64, i8* }** %19
  br label %merge7
else6:
  store i1 1, i1* %20
  br label %merge7
merge7:
  br label %while_cond0
while_end2:
  %46 = load { i64, i8* }*, { i64, i8* }** %19
  ret { i64, i8* }* %46
}

define internal { i64, i8* }* @parse_logical_and(%SharedEnv_parse* %env.param) {
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
  %18 = call { i64, i8* }* @parse_bitwise_or(%SharedEnv_parse* %env.param)
  %19 = alloca { i64, i8* }*
  store { i64, i8* }* %18, { i64, i8* }** %19
  %20 = alloca i1
  store i1 0, i1* %20
  br label %while_cond0
while_cond0:
  %21 = load i1, i1* %20
  %22 = xor i1 %21, true
  br i1 %22, label %while_body1, label %while_end2
while_body1:
  %23 = alloca i1
  store i1 true, i1* %23
  %24 = getelementptr [8 x i8], [8 x i8]* @.str113, i32 0, i32 0
  %25 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str113.c, i8* %24)
  %26 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %25)
  br i1 %26, label %sc_or_end4, label %sc_or_rhs3
sc_or_rhs3:
  %27 = getelementptr [4 x i8], [4 x i8]* @.str114, i32 0, i32 0
  %28 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str114.c, i8* %27)
  %29 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %28)
  store i1 %29, i1* %23
  br label %sc_or_end4
sc_or_end4:
  %30 = load i1, i1* %23
  br i1 %30, label %then5, label %else6
then5:
  %31 = call %Token @advance(%SharedEnv_parse* %env.param)
  %32 = alloca %Token
  store %Token %31, %Token* %32
  %33 = call { i64, i8* }* @parse_bitwise_or(%SharedEnv_parse* %env.param)
  %34 = alloca { i64, i8* }*
  store { i64, i8* }* %33, { i64, i8* }** %34
  %35 = getelementptr [6 x i8], [6 x i8]* @.str115, i32 0, i32 0
  %36 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str115.c, i8* %35)
  %37 = call { i64, i8* }* @nyx_array_new_ptr()
  %38 = load %Token, %Token* %32
  %39 = call %nyx_string* @get_token_type(%Token %38)
  %40 = ptrtoint %nyx_string* %39 to i64
  call void @nyx_array_push({ i64, i8* }* %37, i64 %40)
  %41 = load { i64, i8* }*, { i64, i8* }** %19
  %42 = bitcast { i64, i8* }* %41 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %37, i8* %42)
  %43 = load { i64, i8* }*, { i64, i8* }** %34
  %44 = bitcast { i64, i8* }* %43 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %37, i8* %44)
  %45 = call { i64, i8* }* @make_astnode(%nyx_string* %36, { i64, i8* }* %37)
  store { i64, i8* }* %45, { i64, i8* }** %19
  br label %merge7
else6:
  store i1 1, i1* %20
  br label %merge7
merge7:
  br label %while_cond0
while_end2:
  %46 = load { i64, i8* }*, { i64, i8* }** %19
  ret { i64, i8* }* %46
}

define internal { i64, i8* }* @parse_bitwise_or(%SharedEnv_parse* %env.param) {
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
  %18 = call { i64, i8* }* @parse_bitwise_xor(%SharedEnv_parse* %env.param)
  %19 = alloca { i64, i8* }*
  store { i64, i8* }* %18, { i64, i8* }** %19
  %20 = alloca i1
  store i1 0, i1* %20
  br label %while_cond0
while_cond0:
  %21 = load i1, i1* %20
  %22 = xor i1 %21, true
  br i1 %22, label %while_body1, label %while_end2
while_body1:
  %23 = getelementptr [5 x i8], [5 x i8]* @.str116, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str116.c, i8* %23)
  %25 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %24)
  br i1 %25, label %then3, label %else4
then3:
  %26 = call %Token @advance(%SharedEnv_parse* %env.param)
  %27 = alloca %Token
  store %Token %26, %Token* %27
  %28 = call { i64, i8* }* @parse_bitwise_xor(%SharedEnv_parse* %env.param)
  %29 = alloca { i64, i8* }*
  store { i64, i8* }* %28, { i64, i8* }** %29
  %30 = getelementptr [6 x i8], [6 x i8]* @.str117, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str117.c, i8* %30)
  %32 = call { i64, i8* }* @nyx_array_new_ptr()
  %33 = load %Token, %Token* %27
  %34 = call %nyx_string* @get_token_type(%Token %33)
  %35 = ptrtoint %nyx_string* %34 to i64
  call void @nyx_array_push({ i64, i8* }* %32, i64 %35)
  %36 = load { i64, i8* }*, { i64, i8* }** %19
  %37 = bitcast { i64, i8* }* %36 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %32, i8* %37)
  %38 = load { i64, i8* }*, { i64, i8* }** %29
  %39 = bitcast { i64, i8* }* %38 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %32, i8* %39)
  %40 = call { i64, i8* }* @make_astnode(%nyx_string* %31, { i64, i8* }* %32)
  store { i64, i8* }* %40, { i64, i8* }** %19
  br label %merge5
else4:
  store i1 1, i1* %20
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %41 = load { i64, i8* }*, { i64, i8* }** %19
  ret { i64, i8* }* %41
}

define internal { i64, i8* }* @parse_bitwise_xor(%SharedEnv_parse* %env.param) {
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
  %18 = call { i64, i8* }* @parse_bitwise_and(%SharedEnv_parse* %env.param)
  %19 = alloca { i64, i8* }*
  store { i64, i8* }* %18, { i64, i8* }** %19
  %20 = alloca i1
  store i1 0, i1* %20
  br label %while_cond0
while_cond0:
  %21 = load i1, i1* %20
  %22 = xor i1 %21, true
  br i1 %22, label %while_body1, label %while_end2
while_body1:
  %23 = getelementptr [6 x i8], [6 x i8]* @.str118, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str118.c, i8* %23)
  %25 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %24)
  br i1 %25, label %then3, label %else4
then3:
  %26 = call %Token @advance(%SharedEnv_parse* %env.param)
  %27 = alloca %Token
  store %Token %26, %Token* %27
  %28 = call { i64, i8* }* @parse_bitwise_and(%SharedEnv_parse* %env.param)
  %29 = alloca { i64, i8* }*
  store { i64, i8* }* %28, { i64, i8* }** %29
  %30 = getelementptr [6 x i8], [6 x i8]* @.str119, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str119.c, i8* %30)
  %32 = call { i64, i8* }* @nyx_array_new_ptr()
  %33 = load %Token, %Token* %27
  %34 = call %nyx_string* @get_token_type(%Token %33)
  %35 = ptrtoint %nyx_string* %34 to i64
  call void @nyx_array_push({ i64, i8* }* %32, i64 %35)
  %36 = load { i64, i8* }*, { i64, i8* }** %19
  %37 = bitcast { i64, i8* }* %36 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %32, i8* %37)
  %38 = load { i64, i8* }*, { i64, i8* }** %29
  %39 = bitcast { i64, i8* }* %38 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %32, i8* %39)
  %40 = call { i64, i8* }* @make_astnode(%nyx_string* %31, { i64, i8* }* %32)
  store { i64, i8* }* %40, { i64, i8* }** %19
  br label %merge5
else4:
  store i1 1, i1* %20
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %41 = load { i64, i8* }*, { i64, i8* }** %19
  ret { i64, i8* }* %41
}

define internal { i64, i8* }* @parse_bitwise_and(%SharedEnv_parse* %env.param) {
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
  %18 = call { i64, i8* }* @parse_equality(%SharedEnv_parse* %env.param)
  %19 = alloca { i64, i8* }*
  store { i64, i8* }* %18, { i64, i8* }** %19
  %20 = alloca i1
  store i1 0, i1* %20
  br label %while_cond0
while_cond0:
  %21 = load i1, i1* %20
  %22 = xor i1 %21, true
  br i1 %22, label %while_body1, label %while_end2
while_body1:
  %23 = getelementptr [4 x i8], [4 x i8]* @.str120, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str120.c, i8* %23)
  %25 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %24)
  br i1 %25, label %then3, label %else4
then3:
  %26 = call %Token @advance(%SharedEnv_parse* %env.param)
  %27 = alloca %Token
  store %Token %26, %Token* %27
  %28 = call { i64, i8* }* @parse_equality(%SharedEnv_parse* %env.param)
  %29 = alloca { i64, i8* }*
  store { i64, i8* }* %28, { i64, i8* }** %29
  %30 = getelementptr [6 x i8], [6 x i8]* @.str121, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str121.c, i8* %30)
  %32 = call { i64, i8* }* @nyx_array_new_ptr()
  %33 = load %Token, %Token* %27
  %34 = call %nyx_string* @get_token_type(%Token %33)
  %35 = ptrtoint %nyx_string* %34 to i64
  call void @nyx_array_push({ i64, i8* }* %32, i64 %35)
  %36 = load { i64, i8* }*, { i64, i8* }** %19
  %37 = bitcast { i64, i8* }* %36 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %32, i8* %37)
  %38 = load { i64, i8* }*, { i64, i8* }** %29
  %39 = bitcast { i64, i8* }* %38 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %32, i8* %39)
  %40 = call { i64, i8* }* @make_astnode(%nyx_string* %31, { i64, i8* }* %32)
  store { i64, i8* }* %40, { i64, i8* }** %19
  br label %merge5
else4:
  store i1 1, i1* %20
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %41 = load { i64, i8* }*, { i64, i8* }** %19
  ret { i64, i8* }* %41
}

define internal { i64, i8* }* @parse_equality(%SharedEnv_parse* %env.param) {
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
  %18 = call { i64, i8* }* @parse_comparison(%SharedEnv_parse* %env.param)
  %19 = alloca { i64, i8* }*
  store { i64, i8* }* %18, { i64, i8* }** %19
  %20 = alloca i1
  store i1 0, i1* %20
  br label %while_cond0
while_cond0:
  %21 = load i1, i1* %20
  %22 = xor i1 %21, true
  br i1 %22, label %while_body1, label %while_end2
while_body1:
  %23 = alloca i1
  store i1 true, i1* %23
  %24 = getelementptr [12 x i8], [12 x i8]* @.str122, i32 0, i32 0
  %25 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str122.c, i8* %24)
  %26 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %25)
  br i1 %26, label %sc_or_end4, label %sc_or_rhs3
sc_or_rhs3:
  %27 = getelementptr [10 x i8], [10 x i8]* @.str123, i32 0, i32 0
  %28 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str123.c, i8* %27)
  %29 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %28)
  store i1 %29, i1* %23
  br label %sc_or_end4
sc_or_end4:
  %30 = load i1, i1* %23
  br i1 %30, label %then5, label %else6
then5:
  %31 = call %Token @advance(%SharedEnv_parse* %env.param)
  %32 = alloca %Token
  store %Token %31, %Token* %32
  %33 = call { i64, i8* }* @parse_comparison(%SharedEnv_parse* %env.param)
  %34 = alloca { i64, i8* }*
  store { i64, i8* }* %33, { i64, i8* }** %34
  %35 = getelementptr [6 x i8], [6 x i8]* @.str124, i32 0, i32 0
  %36 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str124.c, i8* %35)
  %37 = call { i64, i8* }* @nyx_array_new_ptr()
  %38 = load %Token, %Token* %32
  %39 = call %nyx_string* @get_token_type(%Token %38)
  %40 = ptrtoint %nyx_string* %39 to i64
  call void @nyx_array_push({ i64, i8* }* %37, i64 %40)
  %41 = load { i64, i8* }*, { i64, i8* }** %19
  %42 = bitcast { i64, i8* }* %41 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %37, i8* %42)
  %43 = load { i64, i8* }*, { i64, i8* }** %34
  %44 = bitcast { i64, i8* }* %43 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %37, i8* %44)
  %45 = call { i64, i8* }* @make_astnode(%nyx_string* %36, { i64, i8* }* %37)
  store { i64, i8* }* %45, { i64, i8* }** %19
  br label %merge7
else6:
  store i1 1, i1* %20
  br label %merge7
merge7:
  br label %while_cond0
while_end2:
  %46 = load { i64, i8* }*, { i64, i8* }** %19
  ret { i64, i8* }* %46
}

define internal { i64, i8* }* @parse_comparison(%SharedEnv_parse* %env.param) {
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
  %18 = call { i64, i8* }* @parse_range(%SharedEnv_parse* %env.param)
  %19 = alloca { i64, i8* }*
  store { i64, i8* }* %18, { i64, i8* }** %19
  %20 = alloca i1
  store i1 0, i1* %20
  br label %while_cond0
while_cond0:
  %21 = load i1, i1* %20
  %22 = xor i1 %21, true
  br i1 %22, label %while_body1, label %while_end2
while_body1:
  %23 = alloca i1
  store i1 true, i1* %23
  %24 = alloca i1
  store i1 true, i1* %24
  %25 = alloca i1
  store i1 true, i1* %25
  %26 = getelementptr [5 x i8], [5 x i8]* @.str125, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str125.c, i8* %26)
  %28 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %27)
  br i1 %28, label %sc_or_end4, label %sc_or_rhs3
sc_or_rhs3:
  %29 = getelementptr [8 x i8], [8 x i8]* @.str126, i32 0, i32 0
  %30 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str126.c, i8* %29)
  %31 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %30)
  store i1 %31, i1* %25
  br label %sc_or_end4
sc_or_end4:
  %32 = load i1, i1* %25
  br i1 %32, label %sc_or_end6, label %sc_or_rhs5
sc_or_rhs5:
  %33 = getelementptr [11 x i8], [11 x i8]* @.str127, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str127.c, i8* %33)
  %35 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %34)
  store i1 %35, i1* %24
  br label %sc_or_end6
sc_or_end6:
  %36 = load i1, i1* %24
  br i1 %36, label %sc_or_end8, label %sc_or_rhs7
sc_or_rhs7:
  %37 = getelementptr [14 x i8], [14 x i8]* @.str128, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str128.c, i8* %37)
  %39 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %38)
  store i1 %39, i1* %23
  br label %sc_or_end8
sc_or_end8:
  %40 = load i1, i1* %23
  br i1 %40, label %then9, label %else10
then9:
  %41 = call %Token @advance(%SharedEnv_parse* %env.param)
  %42 = alloca %Token
  store %Token %41, %Token* %42
  %43 = call { i64, i8* }* @parse_range(%SharedEnv_parse* %env.param)
  %44 = alloca { i64, i8* }*
  store { i64, i8* }* %43, { i64, i8* }** %44
  %45 = getelementptr [6 x i8], [6 x i8]* @.str129, i32 0, i32 0
  %46 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str129.c, i8* %45)
  %47 = call { i64, i8* }* @nyx_array_new_ptr()
  %48 = load %Token, %Token* %42
  %49 = call %nyx_string* @get_token_type(%Token %48)
  %50 = ptrtoint %nyx_string* %49 to i64
  call void @nyx_array_push({ i64, i8* }* %47, i64 %50)
  %51 = load { i64, i8* }*, { i64, i8* }** %19
  %52 = bitcast { i64, i8* }* %51 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %47, i8* %52)
  %53 = load { i64, i8* }*, { i64, i8* }** %44
  %54 = bitcast { i64, i8* }* %53 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %47, i8* %54)
  %55 = call { i64, i8* }* @make_astnode(%nyx_string* %46, { i64, i8* }* %47)
  store { i64, i8* }* %55, { i64, i8* }** %19
  br label %merge11
else10:
  store i1 1, i1* %20
  br label %merge11
merge11:
  br label %while_cond0
while_end2:
  %56 = load { i64, i8* }*, { i64, i8* }** %19
  ret { i64, i8* }* %56
}

define internal { i64, i8* }* @parse_range(%SharedEnv_parse* %env.param) {
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
  %18 = call { i64, i8* }* @parse_addition(%SharedEnv_parse* %env.param)
  %19 = alloca { i64, i8* }*
  store { i64, i8* }* %18, { i64, i8* }** %19
  %20 = getelementptr [16 x i8], [16 x i8]* @.str130, i32 0, i32 0
  %21 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str130.c, i8* %20)
  %22 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %21)
  br i1 %22, label %then0, label %else1
then0:
  %23 = call %Token @advance(%SharedEnv_parse* %env.param)
  %24 = call { i64, i8* }* @parse_addition(%SharedEnv_parse* %env.param)
  %25 = alloca { i64, i8* }*
  store { i64, i8* }* %24, { i64, i8* }** %25
  %26 = getelementptr [6 x i8], [6 x i8]* @.str131, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str131.c, i8* %26)
  %28 = call { i64, i8* }* @nyx_array_new_ptr()
  %29 = load { i64, i8* }*, { i64, i8* }** %19
  %30 = bitcast { i64, i8* }* %29 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %28, i8* %30)
  %31 = load { i64, i8* }*, { i64, i8* }** %25
  %32 = bitcast { i64, i8* }* %31 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %28, i8* %32)
  %33 = getelementptr [5 x i8], [5 x i8]* @.str132, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str132.c, i8* %33)
  %35 = ptrtoint %nyx_string* %34 to i64
  call void @nyx_array_push({ i64, i8* }* %28, i64 %35)
  %36 = call { i64, i8* }* @make_astnode(%nyx_string* %27, { i64, i8* }* %28)
  ret { i64, i8* }* %36
else1:
  br label %merge2
merge2:
  %37 = getelementptr [6 x i8], [6 x i8]* @.str133, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str133.c, i8* %37)
  %39 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %38)
  br i1 %39, label %then3, label %else4
then3:
  %40 = call %Token @advance(%SharedEnv_parse* %env.param)
  %41 = call { i64, i8* }* @parse_addition(%SharedEnv_parse* %env.param)
  %42 = alloca { i64, i8* }*
  store { i64, i8* }* %41, { i64, i8* }** %42
  %43 = getelementptr [6 x i8], [6 x i8]* @.str134, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str134.c, i8* %43)
  %45 = call { i64, i8* }* @nyx_array_new_ptr()
  %46 = load { i64, i8* }*, { i64, i8* }** %19
  %47 = bitcast { i64, i8* }* %46 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %45, i8* %47)
  %48 = load { i64, i8* }*, { i64, i8* }** %42
  %49 = bitcast { i64, i8* }* %48 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %45, i8* %49)
  %50 = getelementptr [6 x i8], [6 x i8]* @.str135, i32 0, i32 0
  %51 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str135.c, i8* %50)
  %52 = ptrtoint %nyx_string* %51 to i64
  call void @nyx_array_push({ i64, i8* }* %45, i64 %52)
  %53 = call { i64, i8* }* @make_astnode(%nyx_string* %44, { i64, i8* }* %45)
  ret { i64, i8* }* %53
else4:
  br label %merge5
merge5:
  %54 = load { i64, i8* }*, { i64, i8* }** %19
  ret { i64, i8* }* %54
}

define internal { i64, i8* }* @parse_addition(%SharedEnv_parse* %env.param) {
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
  %18 = call { i64, i8* }* @parse_shift(%SharedEnv_parse* %env.param)
  %19 = alloca { i64, i8* }*
  store { i64, i8* }* %18, { i64, i8* }** %19
  %20 = alloca i1
  store i1 0, i1* %20
  br label %while_cond0
while_cond0:
  %21 = load i1, i1* %20
  %22 = xor i1 %21, true
  br i1 %22, label %while_body1, label %while_end2
while_body1:
  %23 = alloca i1
  store i1 true, i1* %23
  %24 = getelementptr [5 x i8], [5 x i8]* @.str136, i32 0, i32 0
  %25 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str136.c, i8* %24)
  %26 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %25)
  br i1 %26, label %sc_or_end4, label %sc_or_rhs3
sc_or_rhs3:
  %27 = getelementptr [6 x i8], [6 x i8]* @.str137, i32 0, i32 0
  %28 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str137.c, i8* %27)
  %29 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %28)
  store i1 %29, i1* %23
  br label %sc_or_end4
sc_or_end4:
  %30 = load i1, i1* %23
  br i1 %30, label %then5, label %else6
then5:
  %31 = call %Token @advance(%SharedEnv_parse* %env.param)
  %32 = alloca %Token
  store %Token %31, %Token* %32
  %33 = call { i64, i8* }* @parse_shift(%SharedEnv_parse* %env.param)
  %34 = alloca { i64, i8* }*
  store { i64, i8* }* %33, { i64, i8* }** %34
  %35 = getelementptr [6 x i8], [6 x i8]* @.str138, i32 0, i32 0
  %36 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str138.c, i8* %35)
  %37 = call { i64, i8* }* @nyx_array_new_ptr()
  %38 = load %Token, %Token* %32
  %39 = call %nyx_string* @get_token_type(%Token %38)
  %40 = ptrtoint %nyx_string* %39 to i64
  call void @nyx_array_push({ i64, i8* }* %37, i64 %40)
  %41 = load { i64, i8* }*, { i64, i8* }** %19
  %42 = bitcast { i64, i8* }* %41 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %37, i8* %42)
  %43 = load { i64, i8* }*, { i64, i8* }** %34
  %44 = bitcast { i64, i8* }* %43 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %37, i8* %44)
  %45 = call { i64, i8* }* @make_astnode(%nyx_string* %36, { i64, i8* }* %37)
  store { i64, i8* }* %45, { i64, i8* }** %19
  br label %merge7
else6:
  store i1 1, i1* %20
  br label %merge7
merge7:
  br label %while_cond0
while_end2:
  %46 = load { i64, i8* }*, { i64, i8* }** %19
  ret { i64, i8* }* %46
}

define internal { i64, i8* }* @parse_shift(%SharedEnv_parse* %env.param) {
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
  %18 = call { i64, i8* }* @parse_multiplication(%SharedEnv_parse* %env.param)
  %19 = alloca { i64, i8* }*
  store { i64, i8* }* %18, { i64, i8* }** %19
  %20 = alloca i1
  store i1 0, i1* %20
  br label %while_cond0
while_cond0:
  %21 = load i1, i1* %20
  %22 = xor i1 %21, true
  br i1 %22, label %while_body1, label %while_end2
while_body1:
  %23 = alloca i1
  store i1 true, i1* %23
  %24 = getelementptr [11 x i8], [11 x i8]* @.str139, i32 0, i32 0
  %25 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str139.c, i8* %24)
  %26 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %25)
  br i1 %26, label %sc_or_end4, label %sc_or_rhs3
sc_or_rhs3:
  %27 = getelementptr [12 x i8], [12 x i8]* @.str140, i32 0, i32 0
  %28 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str140.c, i8* %27)
  %29 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %28)
  store i1 %29, i1* %23
  br label %sc_or_end4
sc_or_end4:
  %30 = load i1, i1* %23
  br i1 %30, label %then5, label %else6
then5:
  %31 = call %Token @advance(%SharedEnv_parse* %env.param)
  %32 = alloca %Token
  store %Token %31, %Token* %32
  %33 = call { i64, i8* }* @parse_multiplication(%SharedEnv_parse* %env.param)
  %34 = alloca { i64, i8* }*
  store { i64, i8* }* %33, { i64, i8* }** %34
  %35 = getelementptr [6 x i8], [6 x i8]* @.str141, i32 0, i32 0
  %36 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str141.c, i8* %35)
  %37 = call { i64, i8* }* @nyx_array_new_ptr()
  %38 = load %Token, %Token* %32
  %39 = call %nyx_string* @get_token_type(%Token %38)
  %40 = ptrtoint %nyx_string* %39 to i64
  call void @nyx_array_push({ i64, i8* }* %37, i64 %40)
  %41 = load { i64, i8* }*, { i64, i8* }** %19
  %42 = bitcast { i64, i8* }* %41 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %37, i8* %42)
  %43 = load { i64, i8* }*, { i64, i8* }** %34
  %44 = bitcast { i64, i8* }* %43 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %37, i8* %44)
  %45 = call { i64, i8* }* @make_astnode(%nyx_string* %36, { i64, i8* }* %37)
  store { i64, i8* }* %45, { i64, i8* }** %19
  br label %merge7
else6:
  store i1 1, i1* %20
  br label %merge7
merge7:
  br label %while_cond0
while_end2:
  %46 = load { i64, i8* }*, { i64, i8* }** %19
  ret { i64, i8* }* %46
}

define internal { i64, i8* }* @parse_multiplication(%SharedEnv_parse* %env.param) {
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
  %18 = call { i64, i8* }* @parse_power(%SharedEnv_parse* %env.param)
  %19 = alloca { i64, i8* }*
  store { i64, i8* }* %18, { i64, i8* }** %19
  %20 = alloca i1
  store i1 0, i1* %20
  br label %while_cond0
while_cond0:
  %21 = load i1, i1* %20
  %22 = xor i1 %21, true
  br i1 %22, label %while_body1, label %while_end2
while_body1:
  %23 = alloca i1
  store i1 false, i1* %23
  %24 = getelementptr [5 x i8], [5 x i8]* @.str142, i32 0, i32 0
  %25 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str142.c, i8* %24)
  %26 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %25)
  br i1 %26, label %sc_and_rhs3, label %sc_and_end4
sc_and_rhs3:
  %27 = call i1 @is_on_new_line(%SharedEnv_parse* %env.param)
  store i1 %27, i1* %23
  br label %sc_and_end4
sc_and_end4:
  %28 = load i1, i1* %23
  br i1 %28, label %then5, label %else6
then5:
  store i1 1, i1* %20
  br label %merge7
else6:
  %29 = alloca i1
  store i1 true, i1* %29
  %30 = alloca i1
  store i1 true, i1* %30
  %31 = getelementptr [5 x i8], [5 x i8]* @.str143, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str143.c, i8* %31)
  %33 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %32)
  br i1 %33, label %sc_or_end9, label %sc_or_rhs8
sc_or_rhs8:
  %34 = getelementptr [6 x i8], [6 x i8]* @.str144, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str144.c, i8* %34)
  %36 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %35)
  store i1 %36, i1* %30
  br label %sc_or_end9
sc_or_end9:
  %37 = load i1, i1* %30
  br i1 %37, label %sc_or_end11, label %sc_or_rhs10
sc_or_rhs10:
  %38 = getelementptr [8 x i8], [8 x i8]* @.str145, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str145.c, i8* %38)
  %40 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %39)
  store i1 %40, i1* %29
  br label %sc_or_end11
sc_or_end11:
  %41 = load i1, i1* %29
  br i1 %41, label %then12, label %else13
then12:
  %42 = call %Token @advance(%SharedEnv_parse* %env.param)
  %43 = alloca %Token
  store %Token %42, %Token* %43
  %44 = call { i64, i8* }* @parse_power(%SharedEnv_parse* %env.param)
  %45 = alloca { i64, i8* }*
  store { i64, i8* }* %44, { i64, i8* }** %45
  %46 = getelementptr [6 x i8], [6 x i8]* @.str146, i32 0, i32 0
  %47 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str146.c, i8* %46)
  %48 = call { i64, i8* }* @nyx_array_new_ptr()
  %49 = load %Token, %Token* %43
  %50 = call %nyx_string* @get_token_type(%Token %49)
  %51 = ptrtoint %nyx_string* %50 to i64
  call void @nyx_array_push({ i64, i8* }* %48, i64 %51)
  %52 = load { i64, i8* }*, { i64, i8* }** %19
  %53 = bitcast { i64, i8* }* %52 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %48, i8* %53)
  %54 = load { i64, i8* }*, { i64, i8* }** %45
  %55 = bitcast { i64, i8* }* %54 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %48, i8* %55)
  %56 = call { i64, i8* }* @make_astnode(%nyx_string* %47, { i64, i8* }* %48)
  store { i64, i8* }* %56, { i64, i8* }** %19
  br label %merge14
else13:
  store i1 1, i1* %20
  br label %merge14
merge14:
  br label %merge7
merge7:
  br label %while_cond0
while_end2:
  %57 = load { i64, i8* }*, { i64, i8* }** %19
  ret { i64, i8* }* %57
}

define internal { i64, i8* }* @parse_power(%SharedEnv_parse* %env.param) {
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
  %18 = call { i64, i8* }* @parse_unary(%SharedEnv_parse* %env.param)
  %19 = alloca { i64, i8* }*
  store { i64, i8* }* %18, { i64, i8* }** %19
  %20 = getelementptr [6 x i8], [6 x i8]* @.str147, i32 0, i32 0
  %21 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str147.c, i8* %20)
  %22 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %21)
  br i1 %22, label %then0, label %else1
then0:
  %23 = call %Token @advance(%SharedEnv_parse* %env.param)
  %24 = call { i64, i8* }* @parse_power(%SharedEnv_parse* %env.param)
  %25 = alloca { i64, i8* }*
  store { i64, i8* }* %24, { i64, i8* }** %25
  %26 = getelementptr [6 x i8], [6 x i8]* @.str148, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str148.c, i8* %26)
  %28 = call { i64, i8* }* @nyx_array_new_ptr()
  %29 = getelementptr [6 x i8], [6 x i8]* @.str149, i32 0, i32 0
  %30 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str149.c, i8* %29)
  %31 = ptrtoint %nyx_string* %30 to i64
  call void @nyx_array_push({ i64, i8* }* %28, i64 %31)
  %32 = load { i64, i8* }*, { i64, i8* }** %19
  %33 = bitcast { i64, i8* }* %32 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %28, i8* %33)
  %34 = load { i64, i8* }*, { i64, i8* }** %25
  %35 = bitcast { i64, i8* }* %34 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %28, i8* %35)
  %36 = call { i64, i8* }* @make_astnode(%nyx_string* %27, { i64, i8* }* %28)
  ret { i64, i8* }* %36
else1:
  br label %merge2
merge2:
  %37 = load { i64, i8* }*, { i64, i8* }** %19
  ret { i64, i8* }* %37
}

define internal { i64, i8* }* @parse_unary(%SharedEnv_parse* %env.param) {
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
  %18 = getelementptr [6 x i8], [6 x i8]* @.str150, i32 0, i32 0
  %19 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str150.c, i8* %18)
  %20 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %19)
  br i1 %20, label %then0, label %else1
then0:
  %21 = call %Token @advance(%SharedEnv_parse* %env.param)
  %22 = call { i64, i8* }* @parse_unary(%SharedEnv_parse* %env.param)
  %23 = alloca { i64, i8* }*
  store { i64, i8* }* %22, { i64, i8* }** %23
  %24 = getelementptr [11 x i8], [11 x i8]* @.str151, i32 0, i32 0
  %25 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str151.c, i8* %24)
  %26 = call { i64, i8* }* @nyx_array_new_ptr()
  %27 = load { i64, i8* }*, { i64, i8* }** %23
  %28 = bitcast { i64, i8* }* %27 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %26, i8* %28)
  %29 = call { i64, i8* }* @make_astnode(%nyx_string* %25, { i64, i8* }* %26)
  ret { i64, i8* }* %29
else1:
  br label %merge2
merge2:
  %30 = alloca i1
  store i1 true, i1* %30
  %31 = alloca i1
  store i1 true, i1* %31
  %32 = getelementptr [6 x i8], [6 x i8]* @.str152, i32 0, i32 0
  %33 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str152.c, i8* %32)
  %34 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %33)
  br i1 %34, label %sc_or_end4, label %sc_or_rhs3
sc_or_rhs3:
  %35 = getelementptr [4 x i8], [4 x i8]* @.str153, i32 0, i32 0
  %36 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str153.c, i8* %35)
  %37 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %36)
  store i1 %37, i1* %31
  br label %sc_or_end4
sc_or_end4:
  %38 = load i1, i1* %31
  br i1 %38, label %sc_or_end6, label %sc_or_rhs5
sc_or_rhs5:
  %39 = getelementptr [6 x i8], [6 x i8]* @.str154, i32 0, i32 0
  %40 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str154.c, i8* %39)
  %41 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %40)
  store i1 %41, i1* %30
  br label %sc_or_end6
sc_or_end6:
  %42 = load i1, i1* %30
  br i1 %42, label %then7, label %else8
then7:
  %43 = call %Token @advance(%SharedEnv_parse* %env.param)
  %44 = alloca %Token
  store %Token %43, %Token* %44
  %45 = call { i64, i8* }* @parse_unary(%SharedEnv_parse* %env.param)
  %46 = alloca { i64, i8* }*
  store { i64, i8* }* %45, { i64, i8* }** %46
  %47 = getelementptr [5 x i8], [5 x i8]* @.str155, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str155.c, i8* %47)
  %49 = call { i64, i8* }* @nyx_array_new_ptr()
  %50 = load %Token, %Token* %44
  %51 = call %nyx_string* @get_token_type(%Token %50)
  %52 = ptrtoint %nyx_string* %51 to i64
  call void @nyx_array_push({ i64, i8* }* %49, i64 %52)
  %53 = load { i64, i8* }*, { i64, i8* }** %46
  %54 = bitcast { i64, i8* }* %53 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %49, i8* %54)
  %55 = call { i64, i8* }* @make_astnode(%nyx_string* %48, { i64, i8* }* %49)
  ret { i64, i8* }* %55
else8:
  br label %merge9
merge9:
  %56 = getelementptr [4 x i8], [4 x i8]* @.str156, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str156.c, i8* %56)
  %58 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %57)
  br i1 %58, label %then10, label %else11
then10:
  %59 = call %Token @advance(%SharedEnv_parse* %env.param)
  %60 = call %Token @peek(%SharedEnv_parse* %env.param)
  %61 = call %nyx_string* @get_token_value(%Token %60)
  %62 = alloca %nyx_string*
  store %nyx_string* %61, %nyx_string** %62
  %63 = load %nyx_string*, %nyx_string** %62
  %64 = getelementptr [4 x i8], [4 x i8]* @.str157, i32 0, i32 0
  %65 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str157.c, i8* %64)
  %66 = call i1 @nyx_string_equals(%nyx_string* %63, %nyx_string* %65)
  br i1 %66, label %then13, label %else14
then13:
  %67 = call %Token @advance(%SharedEnv_parse* %env.param)
  %68 = call { i64, i8* }* @parse_unary(%SharedEnv_parse* %env.param)
  %69 = alloca { i64, i8* }*
  store { i64, i8* }* %68, { i64, i8* }** %69
  %70 = getelementptr [12 x i8], [12 x i8]* @.str158, i32 0, i32 0
  %71 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str158.c, i8* %70)
  %72 = call { i64, i8* }* @nyx_array_new_ptr()
  %73 = load { i64, i8* }*, { i64, i8* }** %69
  %74 = bitcast { i64, i8* }* %73 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %72, i8* %74)
  %75 = call { i64, i8* }* @make_astnode(%nyx_string* %71, { i64, i8* }* %72)
  ret { i64, i8* }* %75
else14:
  br label %merge15
merge15:
  %76 = call { i64, i8* }* @parse_unary(%SharedEnv_parse* %env.param)
  %77 = alloca { i64, i8* }*
  store { i64, i8* }* %76, { i64, i8* }** %77
  %78 = getelementptr [8 x i8], [8 x i8]* @.str159, i32 0, i32 0
  %79 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str159.c, i8* %78)
  %80 = call { i64, i8* }* @nyx_array_new_ptr()
  %81 = load { i64, i8* }*, { i64, i8* }** %77
  %82 = bitcast { i64, i8* }* %81 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %80, i8* %82)
  %83 = call { i64, i8* }* @make_astnode(%nyx_string* %79, { i64, i8* }* %80)
  ret { i64, i8* }* %83
else11:
  br label %merge12
merge12:
  %84 = getelementptr [5 x i8], [5 x i8]* @.str160, i32 0, i32 0
  %85 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str160.c, i8* %84)
  %86 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %85)
  br i1 %86, label %then16, label %else17
then16:
  %87 = call %Token @advance(%SharedEnv_parse* %env.param)
  %88 = call { i64, i8* }* @parse_unary(%SharedEnv_parse* %env.param)
  %89 = alloca { i64, i8* }*
  store { i64, i8* }* %88, { i64, i8* }** %89
  %90 = getelementptr [6 x i8], [6 x i8]* @.str161, i32 0, i32 0
  %91 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str161.c, i8* %90)
  %92 = call { i64, i8* }* @nyx_array_new_ptr()
  %93 = load { i64, i8* }*, { i64, i8* }** %89
  %94 = bitcast { i64, i8* }* %93 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %92, i8* %94)
  %95 = call { i64, i8* }* @make_astnode(%nyx_string* %91, { i64, i8* }* %92)
  ret { i64, i8* }* %95
else17:
  br label %merge18
merge18:
  %96 = call { i64, i8* }* @parse_cast(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %96
}

define internal { i64, i8* }* @parse_cast(%SharedEnv_parse* %env.param) {
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
  %18 = call { i64, i8* }* @parse_postfix(%SharedEnv_parse* %env.param)
  %19 = alloca { i64, i8* }*
  store { i64, i8* }* %18, { i64, i8* }** %19
  %20 = alloca i1
  store i1 0, i1* %20
  br label %while_cond0
while_cond0:
  %21 = load i1, i1* %20
  %22 = xor i1 %21, true
  br i1 %22, label %while_body1, label %while_end2
while_body1:
  %23 = getelementptr [3 x i8], [3 x i8]* @.str162, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str162.c, i8* %23)
  %25 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %24)
  br i1 %25, label %then3, label %else4
then3:
  %26 = call %Token @advance(%SharedEnv_parse* %env.param)
  %27 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  %28 = alloca %nyx_string*
  store %nyx_string* %27, %nyx_string** %28
  %29 = getelementptr [5 x i8], [5 x i8]* @.str163, i32 0, i32 0
  %30 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str163.c, i8* %29)
  %31 = call { i64, i8* }* @nyx_array_new_ptr()
  %32 = load { i64, i8* }*, { i64, i8* }** %19
  %33 = bitcast { i64, i8* }* %32 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %31, i8* %33)
  %34 = load %nyx_string*, %nyx_string** %28
  %35 = ptrtoint %nyx_string* %34 to i64
  call void @nyx_array_push({ i64, i8* }* %31, i64 %35)
  %36 = call { i64, i8* }* @make_astnode(%nyx_string* %30, { i64, i8* }* %31)
  store { i64, i8* }* %36, { i64, i8* }** %19
  br label %merge5
else4:
  store i1 1, i1* %20
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %37 = load { i64, i8* }*, { i64, i8* }** %19
  ret { i64, i8* }* %37
}

define internal i1 @is_generic_call_lookahead(%SharedEnv_parse* %env.param) {
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
  %18 = load i64, i64* %4
  %19 = add i64 %18, 1
  %20 = alloca i64
  store i64 %19, i64* %20
  %21 = load i64, i64* %20
  %22 = load { i64, i8* }*, { i64, i8* }** %3
  %23 = call i64 @nyx_array_length({ i64, i8* }* %22)
  %24 = icmp sge i64 %21, %23
  br i1 %24, label %then0, label %else1
then0:
  ret i1 0
else1:
  br label %merge2
merge2:
  %25 = load { i64, i8* }*, { i64, i8* }** %3
  %26 = load i64, i64* %20
  %27 = call i64 @nyx_array_get({ i64, i8* }* %25, i64 %26)
  %28 = inttoptr i64 %27 to %Token*
  %29 = load %Token, %Token* %28
  %30 = alloca %Token
  store %Token %29, %Token* %30
  %31 = load %Token, %Token* %30
  %32 = call %nyx_string* @get_token_type(%Token %31)
  %33 = getelementptr [11 x i8], [11 x i8]* @.str164, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str164.c, i8* %33)
  %35 = call i1 @nyx_string_equals(%nyx_string* %32, %nyx_string* %34)
  %36 = xor i1 %35, true
  br i1 %36, label %then3, label %else4
then3:
  ret i1 0
else4:
  br label %merge5
merge5:
  %37 = alloca i64
  store i64 1, i64* %37
  %38 = load i64, i64* %20
  %39 = add i64 %38, 1
  store i64 %39, i64* %20
  br label %while_cond6
while_cond6:
  %40 = alloca i1
  store i1 false, i1* %40
  %41 = load i64, i64* %20
  %42 = load { i64, i8* }*, { i64, i8* }** %3
  %43 = call i64 @nyx_array_length({ i64, i8* }* %42)
  %44 = icmp slt i64 %41, %43
  br i1 %44, label %sc_and_rhs9, label %sc_and_end10
sc_and_rhs9:
  %45 = load i64, i64* %37
  %46 = icmp sgt i64 %45, 0
  store i1 %46, i1* %40
  br label %sc_and_end10
sc_and_end10:
  %47 = load i1, i1* %40
  br i1 %47, label %while_body7, label %while_end8
while_body7:
  %48 = load { i64, i8* }*, { i64, i8* }** %3
  %49 = load i64, i64* %20
  %50 = call i64 @nyx_array_get({ i64, i8* }* %48, i64 %49)
  %51 = inttoptr i64 %50 to %Token*
  %52 = load %Token, %Token* %51
  %53 = alloca %Token
  store %Token %52, %Token* %53
  %54 = load %Token, %Token* %53
  %55 = call %nyx_string* @get_token_type(%Token %54)
  %56 = alloca %nyx_string*
  store %nyx_string* %55, %nyx_string** %56
  %57 = load %nyx_string*, %nyx_string** %56
  %58 = getelementptr [5 x i8], [5 x i8]* @.str165, i32 0, i32 0
  %59 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str165.c, i8* %58)
  %60 = call i1 @nyx_string_equals(%nyx_string* %57, %nyx_string* %59)
  br i1 %60, label %then11, label %else12
then11:
  %61 = load i64, i64* %37
  %62 = add i64 %61, 1
  store i64 %62, i64* %37
  br label %merge13
else12:
  %63 = load %nyx_string*, %nyx_string** %56
  %64 = getelementptr [8 x i8], [8 x i8]* @.str166, i32 0, i32 0
  %65 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str166.c, i8* %64)
  %66 = call i1 @nyx_string_equals(%nyx_string* %63, %nyx_string* %65)
  br i1 %66, label %then14, label %else15
then14:
  %67 = load i64, i64* %37
  %68 = sub i64 %67, 1
  store i64 %68, i64* %37
  br label %merge16
else15:
  %69 = load %nyx_string*, %nyx_string** %56
  %70 = getelementptr [12 x i8], [12 x i8]* @.str167, i32 0, i32 0
  %71 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str167.c, i8* %70)
  %72 = call i1 @nyx_string_equals(%nyx_string* %69, %nyx_string* %71)
  br i1 %72, label %then17, label %else18
then17:
  %73 = load i64, i64* %37
  %74 = icmp sge i64 %73, 2
  br i1 %74, label %then20, label %else21
then20:
  %75 = load i64, i64* %37
  %76 = sub i64 %75, 2
  store i64 %76, i64* %37
  br label %merge22
else21:
  ret i1 0
merge22:
  br label %merge19
else18:
  br label %merge19
merge19:
  br label %merge16
merge16:
  br label %merge13
merge13:
  %77 = load i64, i64* %20
  %78 = add i64 %77, 1
  store i64 %78, i64* %20
  br label %while_cond6
while_end8:
  %79 = load i64, i64* %37
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %then23, label %else24
then23:
  ret i1 0
else24:
  br label %merge25
merge25:
  %81 = load i64, i64* %20
  %82 = load { i64, i8* }*, { i64, i8* }** %3
  %83 = call i64 @nyx_array_length({ i64, i8* }* %82)
  %84 = icmp sge i64 %81, %83
  br i1 %84, label %then26, label %else27
then26:
  ret i1 0
else27:
  br label %merge28
merge28:
  %85 = load { i64, i8* }*, { i64, i8* }** %3
  %86 = load i64, i64* %20
  %87 = call i64 @nyx_array_get({ i64, i8* }* %85, i64 %86)
  %88 = inttoptr i64 %87 to %Token*
  %89 = load %Token, %Token* %88
  %90 = alloca %Token
  store %Token %89, %Token* %90
  %91 = load %Token, %Token* %90
  %92 = call %nyx_string* @get_token_type(%Token %91)
  %93 = alloca %nyx_string*
  store %nyx_string* %92, %nyx_string** %93
  %94 = load %nyx_string*, %nyx_string** %93
  %95 = getelementptr [11 x i8], [11 x i8]* @.str168, i32 0, i32 0
  %96 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str168.c, i8* %95)
  %97 = call i1 @nyx_string_equals(%nyx_string* %94, %nyx_string* %96)
  br i1 %97, label %then29, label %else30
then29:
  ret i1 1
else30:
  br label %merge31
merge31:
  %98 = load %nyx_string*, %nyx_string** %93
  %99 = getelementptr [11 x i8], [11 x i8]* @.str169, i32 0, i32 0
  %100 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str169.c, i8* %99)
  %101 = call i1 @nyx_string_equals(%nyx_string* %98, %nyx_string* %100)
  br i1 %101, label %then32, label %else33
then32:
  ret i1 1
else33:
  br label %merge34
merge34:
  %102 = load %nyx_string*, %nyx_string** %93
  %103 = getelementptr [4 x i8], [4 x i8]* @.str170, i32 0, i32 0
  %104 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str170.c, i8* %103)
  %105 = call i1 @nyx_string_equals(%nyx_string* %102, %nyx_string* %104)
  br i1 %105, label %then35, label %else36
then35:
  ret i1 1
else36:
  br label %merge37
merge37:
  ret i1 0
}

define internal { i64, i8* }* @parse_postfix(%SharedEnv_parse* %env.param) {
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
  %18 = call { i64, i8* }* @parse_primary(%SharedEnv_parse* %env.param)
  %19 = alloca { i64, i8* }*
  store { i64, i8* }* %18, { i64, i8* }** %19
  %20 = alloca i1
  store i1 0, i1* %20
  %21 = alloca i64
  store i64 0, i64* %21
  br label %while_cond0
while_cond0:
  %22 = load i1, i1* %20
  %23 = xor i1 %22, true
  br i1 %23, label %while_body1, label %while_end2
while_body1:
  %24 = load i64, i64* %21
  %25 = add i64 %24, 1
  store i64 %25, i64* %21
  %26 = load i64, i64* %21
  %27 = icmp sgt i64 %26, 50
  br i1 %27, label %then3, label %else4
then3:
  store i1 1, i1* %20
  br label %merge5
else4:
  br label %merge5
merge5:
  %28 = alloca i1
  store i1 false, i1* %28
  %29 = load { i64, i8* }*, { i64, i8* }** %19
  %30 = call i64 @nyx_array_get({ i64, i8* }* %29, i64 0)
  %31 = getelementptr [11 x i8], [11 x i8]* @.str171, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str171.c, i8* %31)
  %33 = inttoptr i64 %30 to %nyx_string*
  %34 = call i1 @nyx_string_equals(%nyx_string* %33, %nyx_string* %32)
  br i1 %34, label %sc_and_rhs6, label %sc_and_end7
sc_and_rhs6:
  %35 = getelementptr [5 x i8], [5 x i8]* @.str172, i32 0, i32 0
  %36 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str172.c, i8* %35)
  %37 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %36)
  store i1 %37, i1* %28
  br label %sc_and_end7
sc_and_end7:
  %38 = load i1, i1* %28
  br i1 %38, label %then8, label %else9
then8:
  %39 = call i1 @is_generic_call_lookahead(%SharedEnv_parse* %env.param)
  br i1 %39, label %then11, label %else12
then11:
  %40 = call %Token @advance(%SharedEnv_parse* %env.param)
  %41 = call { i64, i8* }* @nyx_array_new_ptr()
  %42 = alloca { i64, i8* }*
  store { i64, i8* }* %41, { i64, i8* }** %42
  %43 = load { i64, i8* }*, { i64, i8* }** %42
  %44 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  %45 = ptrtoint %nyx_string* %44 to i64
  call void @nyx_array_push({ i64, i8* }* %43, i64 %45)
  %46 = alloca i1
  store i1 0, i1* %46
  br label %while_cond14
while_cond14:
  %47 = load i1, i1* %46
  %48 = xor i1 %47, true
  br i1 %48, label %while_body15, label %while_end16
while_body15:
  %49 = getelementptr [6 x i8], [6 x i8]* @.str173, i32 0, i32 0
  %50 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str173.c, i8* %49)
  %51 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %50)
  br i1 %51, label %then17, label %else18
then17:
  %52 = call %Token @advance(%SharedEnv_parse* %env.param)
  %53 = load { i64, i8* }*, { i64, i8* }** %42
  %54 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  %55 = ptrtoint %nyx_string* %54 to i64
  call void @nyx_array_push({ i64, i8* }* %53, i64 %55)
  br label %merge19
else18:
  store i1 1, i1* %46
  br label %merge19
merge19:
  br label %while_cond14
while_end16:
  %56 = load i64, i64* %5
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %then20, label %else21
then20:
  %58 = load i64, i64* %5
  %59 = sub i64 %58, 1
  store i64 %59, i64* %5
  br label %merge22
else21:
  %60 = getelementptr [8 x i8], [8 x i8]* @.str174, i32 0, i32 0
  %61 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str174.c, i8* %60)
  %62 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %61)
  br i1 %62, label %then23, label %else24
then23:
  %63 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge25
else24:
  %64 = getelementptr [12 x i8], [12 x i8]* @.str175, i32 0, i32 0
  %65 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str175.c, i8* %64)
  %66 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %65)
  br i1 %66, label %then26, label %else27
then26:
  %67 = call %Token @advance(%SharedEnv_parse* %env.param)
  %68 = load i64, i64* %5
  %69 = add i64 %68, 1
  store i64 %69, i64* %5
  br label %merge28
else27:
  %70 = getelementptr [8 x i8], [8 x i8]* @.str176, i32 0, i32 0
  %71 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str176.c, i8* %70)
  %72 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %71)
  br label %merge28
merge28:
  br label %merge25
merge25:
  br label %merge22
merge22:
  %73 = getelementptr [13 x i8], [13 x i8]* @.str177, i32 0, i32 0
  %74 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str177.c, i8* %73)
  %75 = call { i64, i8* }* @nyx_array_new_ptr()
  %76 = load { i64, i8* }*, { i64, i8* }** %19
  %77 = bitcast { i64, i8* }* %76 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %75, i8* %77)
  %78 = load { i64, i8* }*, { i64, i8* }** %42
  %79 = bitcast { i64, i8* }* %78 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %75, i8* %79)
  %80 = call { i64, i8* }* @make_astnode(%nyx_string* %74, { i64, i8* }* %75)
  store { i64, i8* }* %80, { i64, i8* }** %19
  %81 = getelementptr [11 x i8], [11 x i8]* @.str178, i32 0, i32 0
  %82 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str178.c, i8* %81)
  %83 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %82)
  br i1 %83, label %then29, label %else30
then29:
  %84 = alloca i1
  store i1 false, i1* %84
  %85 = getelementptr [11 x i8], [11 x i8]* @.str179, i32 0, i32 0
  %86 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str179.c, i8* %85)
  %87 = call i1 @check_at(%SharedEnv_parse* %env.param, i64 1, %nyx_string* %86)
  br i1 %87, label %sc_and_rhs32, label %sc_and_end33
sc_and_rhs32:
  %88 = getelementptr [6 x i8], [6 x i8]* @.str180, i32 0, i32 0
  %89 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str180.c, i8* %88)
  %90 = call i1 @check_at(%SharedEnv_parse* %env.param, i64 2, %nyx_string* %89)
  store i1 %90, i1* %84
  br label %sc_and_end33
sc_and_end33:
  %91 = load i1, i1* %84
  br i1 %91, label %then34, label %else35
then34:
  %92 = load { i64, i8* }*, { i64, i8* }** %19
  %93 = call i64 @nyx_array_get({ i64, i8* }* %92, i64 1)
  %94 = inttoptr i64 %93 to { i64, i8* }*
  %95 = alloca { i64, i8* }*
  store { i64, i8* }* %94, { i64, i8* }** %95
  %96 = load { i64, i8* }*, { i64, i8* }** %95
  %97 = call i64 @nyx_array_get({ i64, i8* }* %96, i64 0)
  %98 = inttoptr i64 %97 to { i64, i8* }*
  %99 = alloca { i64, i8* }*
  store { i64, i8* }* %98, { i64, i8* }** %99
  %100 = load { i64, i8* }*, { i64, i8* }** %99
  %101 = call i64 @nyx_array_get({ i64, i8* }* %100, i64 1)
  %102 = inttoptr i64 %101 to { i64, i8* }*
  %103 = alloca { i64, i8* }*
  store { i64, i8* }* %102, { i64, i8* }** %103
  %104 = load { i64, i8* }*, { i64, i8* }** %103
  %105 = call i64 @nyx_array_get({ i64, i8* }* %104, i64 0)
  %106 = inttoptr i64 %105 to %nyx_string*
  %107 = alloca %nyx_string*
  store %nyx_string* %106, %nyx_string** %107
  %108 = load { i64, i8* }*, { i64, i8* }** %95
  %109 = call i64 @nyx_array_get({ i64, i8* }* %108, i64 1)
  %110 = inttoptr i64 %109 to { i64, i8* }*
  %111 = alloca { i64, i8* }*
  store { i64, i8* }* %110, { i64, i8* }** %111
  %112 = getelementptr [11 x i8], [11 x i8]* @.str181, i32 0, i32 0
  %113 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str181.c, i8* %112)
  %114 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %113)
  %115 = call { i64, i8* }* @nyx_array_new_ptr()
  %116 = alloca { i64, i8* }*
  store { i64, i8* }* %115, { i64, i8* }** %116
  %117 = alloca i1
  store i1 0, i1* %117
  br label %while_cond37
while_cond37:
  %118 = load i1, i1* %117
  %119 = xor i1 %118, true
  br i1 %119, label %while_body38, label %while_end39
while_body38:
  %120 = getelementptr [12 x i8], [12 x i8]* @.str182, i32 0, i32 0
  %121 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str182.c, i8* %120)
  %122 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %121)
  br i1 %122, label %then40, label %else41
then40:
  %123 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %117
  br label %merge42
else41:
  %124 = load { i64, i8* }*, { i64, i8* }** %116
  %125 = call i64 @nyx_array_length({ i64, i8* }* %124)
  %126 = icmp sgt i64 %125, 0
  br i1 %126, label %then43, label %else44
then43:
  %127 = getelementptr [6 x i8], [6 x i8]* @.str183, i32 0, i32 0
  %128 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str183.c, i8* %127)
  %129 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %128)
  br i1 %129, label %then46, label %else47
then46:
  %130 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge48
else47:
  br label %merge48
merge48:
  br label %merge45
else44:
  br label %merge45
merge45:
  %131 = getelementptr [11 x i8], [11 x i8]* @.str184, i32 0, i32 0
  %132 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str184.c, i8* %131)
  %133 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %132)
  %134 = alloca %Token
  store %Token %133, %Token* %134
  %135 = getelementptr [6 x i8], [6 x i8]* @.str185, i32 0, i32 0
  %136 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str185.c, i8* %135)
  %137 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %136)
  %138 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %139 = alloca { i64, i8* }*
  store { i64, i8* }* %138, { i64, i8* }** %139
  %140 = load { i64, i8* }*, { i64, i8* }** %116
  %141 = call { i64, i8* }* @nyx_array_new_ptr()
  %142 = load %Token, %Token* %134
  %143 = call %nyx_string* @get_token_value(%Token %142)
  %144 = ptrtoint %nyx_string* %143 to i64
  call void @nyx_array_push({ i64, i8* }* %141, i64 %144)
  %145 = load { i64, i8* }*, { i64, i8* }** %139
  %146 = bitcast { i64, i8* }* %145 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %141, i8* %146)
  %147 = ptrtoint { i64, i8* }* %141 to i64
  call void @nyx_array_push({ i64, i8* }* %140, i64 %147)
  br label %merge42
merge42:
  br label %while_cond37
while_end39:
  %148 = getelementptr [12 x i8], [12 x i8]* @.str186, i32 0, i32 0
  %149 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str186.c, i8* %148)
  %150 = call { i64, i8* }* @nyx_array_new_ptr()
  %151 = load %nyx_string*, %nyx_string** %107
  %152 = ptrtoint %nyx_string* %151 to i64
  call void @nyx_array_push({ i64, i8* }* %150, i64 %152)
  %153 = load { i64, i8* }*, { i64, i8* }** %116
  %154 = bitcast { i64, i8* }* %153 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %150, i8* %154)
  %155 = load { i64, i8* }*, { i64, i8* }** %111
  %156 = bitcast { i64, i8* }* %155 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %150, i8* %156)
  %157 = call { i64, i8* }* @make_astnode(%nyx_string* %149, { i64, i8* }* %150)
  store { i64, i8* }* %157, { i64, i8* }** %19
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
  %158 = alloca i1
  store i1 false, i1* %158
  %159 = getelementptr [11 x i8], [11 x i8]* @.str187, i32 0, i32 0
  %160 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str187.c, i8* %159)
  %161 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %160)
  br i1 %161, label %sc_and_rhs49, label %sc_and_end50
sc_and_rhs49:
  %162 = call i1 @is_on_new_line(%SharedEnv_parse* %env.param)
  %163 = xor i1 %162, true
  store i1 %163, i1* %158
  br label %sc_and_end50
sc_and_end50:
  %164 = load i1, i1* %158
  br i1 %164, label %then51, label %else52
then51:
  %165 = call %Token @advance(%SharedEnv_parse* %env.param)
  %166 = call { i64, i8* }* @nyx_array_new_ptr()
  %167 = alloca { i64, i8* }*
  store { i64, i8* }* %166, { i64, i8* }** %167
  %168 = alloca i1
  store i1 0, i1* %168
  br label %while_cond54
while_cond54:
  %169 = load i1, i1* %168
  %170 = xor i1 %169, true
  br i1 %170, label %while_body55, label %while_end56
while_body55:
  %171 = getelementptr [12 x i8], [12 x i8]* @.str188, i32 0, i32 0
  %172 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str188.c, i8* %171)
  %173 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %172)
  br i1 %173, label %then57, label %else58
then57:
  %174 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %168
  br label %merge59
else58:
  %175 = load { i64, i8* }*, { i64, i8* }** %167
  %176 = call i64 @nyx_array_length({ i64, i8* }* %175)
  %177 = icmp sgt i64 %176, 0
  br i1 %177, label %then60, label %else61
then60:
  %178 = getelementptr [6 x i8], [6 x i8]* @.str189, i32 0, i32 0
  %179 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str189.c, i8* %178)
  %180 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %179)
  br label %merge62
else61:
  br label %merge62
merge62:
  %181 = load { i64, i8* }*, { i64, i8* }** %167
  %182 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %183 = ptrtoint { i64, i8* }* %182 to i64
  call void @nyx_array_push({ i64, i8* }* %181, i64 %183)
  br label %merge59
merge59:
  br label %while_cond54
while_end56:
  %184 = getelementptr [5 x i8], [5 x i8]* @.str190, i32 0, i32 0
  %185 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str190.c, i8* %184)
  %186 = call { i64, i8* }* @nyx_array_new_ptr()
  %187 = load { i64, i8* }*, { i64, i8* }** %19
  %188 = bitcast { i64, i8* }* %187 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %186, i8* %188)
  %189 = load { i64, i8* }*, { i64, i8* }** %167
  %190 = bitcast { i64, i8* }* %189 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %186, i8* %190)
  %191 = call { i64, i8* }* @make_astnode(%nyx_string* %185, { i64, i8* }* %186)
  store { i64, i8* }* %191, { i64, i8* }** %19
  br label %merge53
else52:
  %192 = getelementptr [13 x i8], [13 x i8]* @.str191, i32 0, i32 0
  %193 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str191.c, i8* %192)
  %194 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %193)
  br i1 %194, label %then63, label %else64
then63:
  %195 = call %Token @advance(%SharedEnv_parse* %env.param)
  %196 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %197 = alloca { i64, i8* }*
  store { i64, i8* }* %196, { i64, i8* }** %197
  %198 = getelementptr [14 x i8], [14 x i8]* @.str192, i32 0, i32 0
  %199 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str192.c, i8* %198)
  %200 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %199)
  %201 = getelementptr [6 x i8], [6 x i8]* @.str193, i32 0, i32 0
  %202 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str193.c, i8* %201)
  %203 = call { i64, i8* }* @nyx_array_new_ptr()
  %204 = load { i64, i8* }*, { i64, i8* }** %19
  %205 = bitcast { i64, i8* }* %204 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %203, i8* %205)
  %206 = load { i64, i8* }*, { i64, i8* }** %197
  %207 = bitcast { i64, i8* }* %206 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %203, i8* %207)
  %208 = call { i64, i8* }* @make_astnode(%nyx_string* %202, { i64, i8* }* %203)
  store { i64, i8* }* %208, { i64, i8* }** %19
  br label %merge65
else64:
  %209 = getelementptr [4 x i8], [4 x i8]* @.str194, i32 0, i32 0
  %210 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str194.c, i8* %209)
  %211 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %210)
  br i1 %211, label %then66, label %else67
then66:
  %212 = call %Token @advance(%SharedEnv_parse* %env.param)
  %213 = getelementptr [7 x i8], [7 x i8]* @.str195, i32 0, i32 0
  %214 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str195.c, i8* %213)
  %215 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %214)
  br i1 %215, label %then69, label %else70
then69:
  %216 = call %Token @advance(%SharedEnv_parse* %env.param)
  %217 = alloca %Token
  store %Token %216, %Token* %217
  %218 = load %Token, %Token* %217
  %219 = call %nyx_string* @get_token_value(%Token %218)
  %220 = alloca %nyx_string*
  store %nyx_string* %219, %nyx_string** %220
  %221 = getelementptr [12 x i8], [12 x i8]* @.str196, i32 0, i32 0
  %222 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str196.c, i8* %221)
  %223 = call { i64, i8* }* @nyx_array_new_ptr()
  %224 = load { i64, i8* }*, { i64, i8* }** %19
  %225 = bitcast { i64, i8* }* %224 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %223, i8* %225)
  %226 = load %nyx_string*, %nyx_string** %220
  %227 = ptrtoint %nyx_string* %226 to i64
  call void @nyx_array_push({ i64, i8* }* %223, i64 %227)
  %228 = call { i64, i8* }* @make_astnode(%nyx_string* %222, { i64, i8* }* %223)
  store { i64, i8* }* %228, { i64, i8* }** %19
  br label %merge71
else70:
  %229 = getelementptr [11 x i8], [11 x i8]* @.str197, i32 0, i32 0
  %230 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str197.c, i8* %229)
  %231 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %230)
  %232 = alloca %Token
  store %Token %231, %Token* %232
  %233 = load %Token, %Token* %232
  %234 = call %nyx_string* @get_token_value(%Token %233)
  %235 = alloca %nyx_string*
  store %nyx_string* %234, %nyx_string** %235
  %236 = getelementptr [11 x i8], [11 x i8]* @.str198, i32 0, i32 0
  %237 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str198.c, i8* %236)
  %238 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %237)
  br i1 %238, label %then72, label %else73
then72:
  %239 = call %Token @advance(%SharedEnv_parse* %env.param)
  %240 = call { i64, i8* }* @nyx_array_new_ptr()
  %241 = alloca { i64, i8* }*
  store { i64, i8* }* %240, { i64, i8* }** %241
  %242 = alloca i1
  store i1 0, i1* %242
  br label %while_cond75
while_cond75:
  %243 = load i1, i1* %242
  %244 = xor i1 %243, true
  br i1 %244, label %while_body76, label %while_end77
while_body76:
  %245 = getelementptr [12 x i8], [12 x i8]* @.str199, i32 0, i32 0
  %246 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str199.c, i8* %245)
  %247 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %246)
  br i1 %247, label %then78, label %else79
then78:
  %248 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %242
  br label %merge80
else79:
  %249 = load { i64, i8* }*, { i64, i8* }** %241
  %250 = call i64 @nyx_array_length({ i64, i8* }* %249)
  %251 = icmp sgt i64 %250, 0
  br i1 %251, label %then81, label %else82
then81:
  %252 = getelementptr [6 x i8], [6 x i8]* @.str200, i32 0, i32 0
  %253 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str200.c, i8* %252)
  %254 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %253)
  br label %merge83
else82:
  br label %merge83
merge83:
  %255 = load { i64, i8* }*, { i64, i8* }** %241
  %256 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %257 = ptrtoint { i64, i8* }* %256 to i64
  call void @nyx_array_push({ i64, i8* }* %255, i64 %257)
  br label %merge80
merge80:
  br label %while_cond75
while_end77:
  %258 = getelementptr [12 x i8], [12 x i8]* @.str201, i32 0, i32 0
  %259 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str201.c, i8* %258)
  %260 = call { i64, i8* }* @nyx_array_new_ptr()
  %261 = load { i64, i8* }*, { i64, i8* }** %19
  %262 = bitcast { i64, i8* }* %261 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %260, i8* %262)
  %263 = load %nyx_string*, %nyx_string** %235
  %264 = ptrtoint %nyx_string* %263 to i64
  call void @nyx_array_push({ i64, i8* }* %260, i64 %264)
  %265 = load { i64, i8* }*, { i64, i8* }** %241
  %266 = bitcast { i64, i8* }* %265 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %260, i8* %266)
  %267 = call { i64, i8* }* @make_astnode(%nyx_string* %259, { i64, i8* }* %260)
  store { i64, i8* }* %267, { i64, i8* }** %19
  br label %merge74
else73:
  %268 = getelementptr [13 x i8], [13 x i8]* @.str202, i32 0, i32 0
  %269 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str202.c, i8* %268)
  %270 = call { i64, i8* }* @nyx_array_new_ptr()
  %271 = load { i64, i8* }*, { i64, i8* }** %19
  %272 = bitcast { i64, i8* }* %271 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %270, i8* %272)
  %273 = load %nyx_string*, %nyx_string** %235
  %274 = ptrtoint %nyx_string* %273 to i64
  call void @nyx_array_push({ i64, i8* }* %270, i64 %274)
  %275 = call { i64, i8* }* @make_astnode(%nyx_string* %269, { i64, i8* }* %270)
  store { i64, i8* }* %275, { i64, i8* }** %19
  br label %merge74
merge74:
  br label %merge71
merge71:
  br label %merge68
else67:
  %276 = getelementptr [9 x i8], [9 x i8]* @.str203, i32 0, i32 0
  %277 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str203.c, i8* %276)
  %278 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %277)
  br i1 %278, label %then84, label %else85
then84:
  %279 = call %Token @advance(%SharedEnv_parse* %env.param)
  %280 = getelementptr [7 x i8], [7 x i8]* @.str204, i32 0, i32 0
  %281 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str204.c, i8* %280)
  %282 = call { i64, i8* }* @nyx_array_new_ptr()
  %283 = load { i64, i8* }*, { i64, i8* }** %19
  %284 = bitcast { i64, i8* }* %283 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %282, i8* %284)
  %285 = call { i64, i8* }* @make_astnode(%nyx_string* %281, { i64, i8* }* %282)
  store { i64, i8* }* %285, { i64, i8* }** %19
  br label %merge86
else85:
  store i1 1, i1* %20
  br label %merge86
merge86:
  br label %merge68
merge68:
  br label %merge65
merge65:
  br label %merge53
merge53:
  br label %while_cond0
while_end2:
  %286 = load { i64, i8* }*, { i64, i8* }** %19
  ret { i64, i8* }* %286
}

define internal { i64, i8* }* @parse_primary(%SharedEnv_parse* %env.param) {
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
  %18 = getelementptr [7 x i8], [7 x i8]* @.str205, i32 0, i32 0
  %19 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str205.c, i8* %18)
  %20 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %19)
  br i1 %20, label %then0, label %else1
then0:
  %21 = call %Token @advance(%SharedEnv_parse* %env.param)
  %22 = alloca %Token
  store %Token %21, %Token* %22
  %23 = getelementptr [7 x i8], [7 x i8]* @.str206, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str206.c, i8* %23)
  %25 = call { i64, i8* }* @nyx_array_new_ptr()
  %26 = load %Token, %Token* %22
  %27 = call %nyx_string* @get_token_value(%Token %26)
  %28 = ptrtoint %nyx_string* %27 to i64
  call void @nyx_array_push({ i64, i8* }* %25, i64 %28)
  %29 = call { i64, i8* }* @make_astnode(%nyx_string* %24, { i64, i8* }* %25)
  ret { i64, i8* }* %29
else1:
  br label %merge2
merge2:
  %30 = getelementptr [7 x i8], [7 x i8]* @.str207, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str207.c, i8* %30)
  %32 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %31)
  br i1 %32, label %then3, label %else4
then3:
  %33 = call %Token @advance(%SharedEnv_parse* %env.param)
  %34 = alloca %Token
  store %Token %33, %Token* %34
  %35 = getelementptr [7 x i8], [7 x i8]* @.str208, i32 0, i32 0
  %36 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str208.c, i8* %35)
  %37 = call { i64, i8* }* @nyx_array_new_ptr()
  %38 = load %Token, %Token* %34
  %39 = call %nyx_string* @get_token_value(%Token %38)
  %40 = ptrtoint %nyx_string* %39 to i64
  call void @nyx_array_push({ i64, i8* }* %37, i64 %40)
  %41 = call { i64, i8* }* @make_astnode(%nyx_string* %36, { i64, i8* }* %37)
  ret { i64, i8* }* %41
else4:
  br label %merge5
merge5:
  %42 = getelementptr [5 x i8], [5 x i8]* @.str209, i32 0, i32 0
  %43 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str209.c, i8* %42)
  %44 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %43)
  br i1 %44, label %then6, label %else7
then6:
  %45 = call %Token @advance(%SharedEnv_parse* %env.param)
  %46 = alloca %Token
  store %Token %45, %Token* %46
  %47 = getelementptr [5 x i8], [5 x i8]* @.str210, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str210.c, i8* %47)
  %49 = call { i64, i8* }* @nyx_array_new_ptr()
  %50 = load %Token, %Token* %46
  %51 = call %nyx_string* @get_token_value(%Token %50)
  %52 = ptrtoint %nyx_string* %51 to i64
  call void @nyx_array_push({ i64, i8* }* %49, i64 %52)
  %53 = call { i64, i8* }* @make_astnode(%nyx_string* %48, { i64, i8* }* %49)
  ret { i64, i8* }* %53
else7:
  br label %merge8
merge8:
  %54 = getelementptr [5 x i8], [5 x i8]* @.str211, i32 0, i32 0
  %55 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str211.c, i8* %54)
  %56 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %55)
  br i1 %56, label %then9, label %else10
then9:
  %57 = call %Token @advance(%SharedEnv_parse* %env.param)
  %58 = getelementptr [5 x i8], [5 x i8]* @.str212, i32 0, i32 0
  %59 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str212.c, i8* %58)
  %60 = call { i64, i8* }* @nyx_array_new_ptr()
  %61 = getelementptr [5 x i8], [5 x i8]* @.str213, i32 0, i32 0
  %62 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str213.c, i8* %61)
  %63 = ptrtoint %nyx_string* %62 to i64
  call void @nyx_array_push({ i64, i8* }* %60, i64 %63)
  %64 = call { i64, i8* }* @make_astnode(%nyx_string* %59, { i64, i8* }* %60)
  ret { i64, i8* }* %64
else10:
  br label %merge11
merge11:
  %65 = getelementptr [6 x i8], [6 x i8]* @.str214, i32 0, i32 0
  %66 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str214.c, i8* %65)
  %67 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %66)
  br i1 %67, label %then12, label %else13
then12:
  %68 = call %Token @advance(%SharedEnv_parse* %env.param)
  %69 = getelementptr [5 x i8], [5 x i8]* @.str215, i32 0, i32 0
  %70 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str215.c, i8* %69)
  %71 = call { i64, i8* }* @nyx_array_new_ptr()
  %72 = getelementptr [6 x i8], [6 x i8]* @.str216, i32 0, i32 0
  %73 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str216.c, i8* %72)
  %74 = ptrtoint %nyx_string* %73 to i64
  call void @nyx_array_push({ i64, i8* }* %71, i64 %74)
  %75 = call { i64, i8* }* @make_astnode(%nyx_string* %70, { i64, i8* }* %71)
  ret { i64, i8* }* %75
else13:
  br label %merge14
merge14:
  %76 = getelementptr [7 x i8], [7 x i8]* @.str217, i32 0, i32 0
  %77 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str217.c, i8* %76)
  %78 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %77)
  br i1 %78, label %then15, label %else16
then15:
  %79 = call %Token @advance(%SharedEnv_parse* %env.param)
  %80 = getelementptr [11 x i8], [11 x i8]* @.str218, i32 0, i32 0
  %81 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str218.c, i8* %80)
  %82 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %81)
  %83 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  %84 = alloca %nyx_string*
  store %nyx_string* %83, %nyx_string** %84
  %85 = getelementptr [12 x i8], [12 x i8]* @.str219, i32 0, i32 0
  %86 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str219.c, i8* %85)
  %87 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %86)
  %88 = getelementptr [7 x i8], [7 x i8]* @.str220, i32 0, i32 0
  %89 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str220.c, i8* %88)
  %90 = call { i64, i8* }* @nyx_array_new_ptr()
  %91 = load %nyx_string*, %nyx_string** %84
  %92 = ptrtoint %nyx_string* %91 to i64
  call void @nyx_array_push({ i64, i8* }* %90, i64 %92)
  %93 = call { i64, i8* }* @make_astnode(%nyx_string* %89, { i64, i8* }* %90)
  ret { i64, i8* }* %93
else16:
  br label %merge17
merge17:
  %94 = getelementptr [8 x i8], [8 x i8]* @.str221, i32 0, i32 0
  %95 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str221.c, i8* %94)
  %96 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %95)
  br i1 %96, label %then18, label %else19
then18:
  %97 = call %Token @advance(%SharedEnv_parse* %env.param)
  %98 = getelementptr [11 x i8], [11 x i8]* @.str222, i32 0, i32 0
  %99 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str222.c, i8* %98)
  %100 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %99)
  %101 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  %102 = alloca %nyx_string*
  store %nyx_string* %101, %nyx_string** %102
  %103 = getelementptr [12 x i8], [12 x i8]* @.str223, i32 0, i32 0
  %104 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str223.c, i8* %103)
  %105 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %104)
  %106 = getelementptr [8 x i8], [8 x i8]* @.str224, i32 0, i32 0
  %107 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str224.c, i8* %106)
  %108 = call { i64, i8* }* @nyx_array_new_ptr()
  %109 = load %nyx_string*, %nyx_string** %102
  %110 = ptrtoint %nyx_string* %109 to i64
  call void @nyx_array_push({ i64, i8* }* %108, i64 %110)
  %111 = call { i64, i8* }* @make_astnode(%nyx_string* %107, { i64, i8* }* %108)
  ret { i64, i8* }* %111
else19:
  br label %merge20
merge20:
  %112 = getelementptr [4 x i8], [4 x i8]* @.str225, i32 0, i32 0
  %113 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str225.c, i8* %112)
  %114 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %113)
  br i1 %114, label %then21, label %else22
then21:
  %115 = call %Token @advance(%SharedEnv_parse* %env.param)
  %116 = getelementptr [2 x i8], [2 x i8]* @.str226, i32 0, i32 0
  %117 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str226.c, i8* %116)
  %118 = alloca %nyx_string*
  store %nyx_string* %117, %nyx_string** %118
  %119 = getelementptr [11 x i8], [11 x i8]* @.str227, i32 0, i32 0
  %120 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str227.c, i8* %119)
  %121 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %120)
  br i1 %121, label %then24, label %else25
then24:
  %122 = call %Token @peek(%SharedEnv_parse* %env.param)
  %123 = alloca %Token
  store %Token %122, %Token* %123
  %124 = load %Token, %Token* %123
  %125 = call %nyx_string* @get_token_value(%Token %124)
  %126 = alloca %nyx_string*
  store %nyx_string* %125, %nyx_string** %126
  %127 = load %nyx_string*, %nyx_string** %126
  %128 = getelementptr [9 x i8], [9 x i8]* @.str228, i32 0, i32 0
  %129 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str228.c, i8* %128)
  %130 = call i1 @nyx_string_equals(%nyx_string* %127, %nyx_string* %129)
  br i1 %130, label %then27, label %else28
then27:
  %131 = call %Token @advance(%SharedEnv_parse* %env.param)
  %132 = getelementptr [2 x i8], [2 x i8]* @.str229, i32 0, i32 0
  %133 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str229.c, i8* %132)
  store %nyx_string* %133, %nyx_string** %118
  br label %merge29
else28:
  br label %merge29
merge29:
  br label %merge26
else25:
  br label %merge26
merge26:
  %134 = getelementptr [11 x i8], [11 x i8]* @.str230, i32 0, i32 0
  %135 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str230.c, i8* %134)
  %136 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %135)
  %137 = getelementptr [7 x i8], [7 x i8]* @.str231, i32 0, i32 0
  %138 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str231.c, i8* %137)
  %139 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %138)
  %140 = alloca %Token
  store %Token %139, %Token* %140
  %141 = load %Token, %Token* %140
  %142 = call %nyx_string* @get_token_value(%Token %141)
  %143 = alloca %nyx_string*
  store %nyx_string* %142, %nyx_string** %143
  %144 = getelementptr [6 x i8], [6 x i8]* @.str232, i32 0, i32 0
  %145 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str232.c, i8* %144)
  %146 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %145)
  br i1 %146, label %then30, label %else31
then30:
  %147 = call %Token @advance(%SharedEnv_parse* %env.param)
  %148 = call { i64, i8* }* @nyx_array_new_ptr()
  %149 = alloca { i64, i8* }*
  store { i64, i8* }* %148, { i64, i8* }** %149
  %150 = alloca i1
  store i1 0, i1* %150
  br label %while_cond33
while_cond33:
  %151 = load i1, i1* %150
  %152 = xor i1 %151, true
  br i1 %152, label %while_body34, label %while_end35
while_body34:
  %153 = getelementptr [7 x i8], [7 x i8]* @.str233, i32 0, i32 0
  %154 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str233.c, i8* %153)
  %155 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %154)
  br i1 %155, label %then36, label %else37
then36:
  %156 = getelementptr [7 x i8], [7 x i8]* @.str234, i32 0, i32 0
  %157 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str234.c, i8* %156)
  %158 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %157)
  %159 = alloca %Token
  store %Token %158, %Token* %159
  %160 = load %Token, %Token* %159
  %161 = call %nyx_string* @get_token_value(%Token %160)
  %162 = alloca %nyx_string*
  store %nyx_string* %161, %nyx_string** %162
  %163 = getelementptr [11 x i8], [11 x i8]* @.str235, i32 0, i32 0
  %164 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str235.c, i8* %163)
  %165 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %164)
  %166 = getelementptr [11 x i8], [11 x i8]* @.str236, i32 0, i32 0
  %167 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str236.c, i8* %166)
  %168 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %167)
  %169 = alloca %Token
  store %Token %168, %Token* %169
  %170 = load %Token, %Token* %169
  %171 = call %nyx_string* @get_token_value(%Token %170)
  %172 = alloca %nyx_string*
  store %nyx_string* %171, %nyx_string** %172
  %173 = getelementptr [12 x i8], [12 x i8]* @.str237, i32 0, i32 0
  %174 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str237.c, i8* %173)
  %175 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %174)
  %176 = load { i64, i8* }*, { i64, i8* }** %149
  %177 = call { i64, i8* }* @nyx_array_new_ptr()
  %178 = load %nyx_string*, %nyx_string** %162
  %179 = ptrtoint %nyx_string* %178 to i64
  call void @nyx_array_push({ i64, i8* }* %177, i64 %179)
  %180 = load %nyx_string*, %nyx_string** %172
  %181 = ptrtoint %nyx_string* %180 to i64
  call void @nyx_array_push({ i64, i8* }* %177, i64 %181)
  %182 = ptrtoint { i64, i8* }* %177 to i64
  call void @nyx_array_push({ i64, i8* }* %176, i64 %182)
  %183 = getelementptr [6 x i8], [6 x i8]* @.str238, i32 0, i32 0
  %184 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str238.c, i8* %183)
  %185 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %184)
  br i1 %185, label %then39, label %else40
then39:
  %186 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge41
else40:
  br label %merge41
merge41:
  br label %merge38
else37:
  store i1 1, i1* %150
  br label %merge38
merge38:
  br label %while_cond33
while_end35:
  %187 = getelementptr [6 x i8], [6 x i8]* @.str239, i32 0, i32 0
  %188 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str239.c, i8* %187)
  %189 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %188)
  br i1 %189, label %then42, label %else43
then42:
  %190 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge44
else43:
  br label %merge44
merge44:
  %191 = call { i64, i8* }* @nyx_array_new_ptr()
  %192 = alloca { i64, i8* }*
  store { i64, i8* }* %191, { i64, i8* }** %192
  %193 = alloca i1
  store i1 0, i1* %193
  br label %while_cond45
while_cond45:
  %194 = load i1, i1* %193
  %195 = xor i1 %194, true
  br i1 %195, label %while_body46, label %while_end47
while_body46:
  %196 = getelementptr [7 x i8], [7 x i8]* @.str240, i32 0, i32 0
  %197 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str240.c, i8* %196)
  %198 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %197)
  br i1 %198, label %then48, label %else49
then48:
  %199 = getelementptr [7 x i8], [7 x i8]* @.str241, i32 0, i32 0
  %200 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str241.c, i8* %199)
  %201 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %200)
  %202 = alloca %Token
  store %Token %201, %Token* %202
  %203 = load %Token, %Token* %202
  %204 = call %nyx_string* @get_token_value(%Token %203)
  %205 = alloca %nyx_string*
  store %nyx_string* %204, %nyx_string** %205
  %206 = getelementptr [11 x i8], [11 x i8]* @.str242, i32 0, i32 0
  %207 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str242.c, i8* %206)
  %208 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %207)
  %209 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %210 = alloca { i64, i8* }*
  store { i64, i8* }* %209, { i64, i8* }** %210
  %211 = getelementptr [12 x i8], [12 x i8]* @.str243, i32 0, i32 0
  %212 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str243.c, i8* %211)
  %213 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %212)
  %214 = load { i64, i8* }*, { i64, i8* }** %192
  %215 = call { i64, i8* }* @nyx_array_new_ptr()
  %216 = load %nyx_string*, %nyx_string** %205
  %217 = ptrtoint %nyx_string* %216 to i64
  call void @nyx_array_push({ i64, i8* }* %215, i64 %217)
  %218 = load { i64, i8* }*, { i64, i8* }** %210
  %219 = bitcast { i64, i8* }* %218 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %215, i8* %219)
  %220 = ptrtoint { i64, i8* }* %215 to i64
  call void @nyx_array_push({ i64, i8* }* %214, i64 %220)
  %221 = getelementptr [6 x i8], [6 x i8]* @.str244, i32 0, i32 0
  %222 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str244.c, i8* %221)
  %223 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %222)
  br i1 %223, label %then51, label %else52
then51:
  %224 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge53
else52:
  br label %merge53
merge53:
  br label %merge50
else49:
  store i1 1, i1* %193
  br label %merge50
merge50:
  br label %while_cond45
while_end47:
  %225 = getelementptr [6 x i8], [6 x i8]* @.str245, i32 0, i32 0
  %226 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str245.c, i8* %225)
  %227 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %226)
  br i1 %227, label %then54, label %else55
then54:
  %228 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge56
else55:
  br label %merge56
merge56:
  %229 = call { i64, i8* }* @nyx_array_new_ptr()
  %230 = alloca { i64, i8* }*
  store { i64, i8* }* %229, { i64, i8* }** %230
  %231 = alloca i1
  store i1 0, i1* %231
  br label %while_cond57
while_cond57:
  %232 = load i1, i1* %231
  %233 = xor i1 %232, true
  br i1 %233, label %while_body58, label %while_end59
while_body58:
  %234 = getelementptr [7 x i8], [7 x i8]* @.str246, i32 0, i32 0
  %235 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str246.c, i8* %234)
  %236 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %235)
  br i1 %236, label %then60, label %else61
then60:
  %237 = getelementptr [7 x i8], [7 x i8]* @.str247, i32 0, i32 0
  %238 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str247.c, i8* %237)
  %239 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %238)
  %240 = alloca %Token
  store %Token %239, %Token* %240
  %241 = load { i64, i8* }*, { i64, i8* }** %230
  %242 = load %Token, %Token* %240
  %243 = call %nyx_string* @get_token_value(%Token %242)
  %244 = ptrtoint %nyx_string* %243 to i64
  call void @nyx_array_push({ i64, i8* }* %241, i64 %244)
  %245 = getelementptr [6 x i8], [6 x i8]* @.str248, i32 0, i32 0
  %246 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str248.c, i8* %245)
  %247 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %246)
  br i1 %247, label %then63, label %else64
then63:
  %248 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge65
else64:
  br label %merge65
merge65:
  br label %merge62
else61:
  store i1 1, i1* %231
  br label %merge62
merge62:
  br label %while_cond57
while_end59:
  %249 = getelementptr [12 x i8], [12 x i8]* @.str249, i32 0, i32 0
  %250 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str249.c, i8* %249)
  %251 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %250)
  %252 = getelementptr [15 x i8], [15 x i8]* @.str250, i32 0, i32 0
  %253 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str250.c, i8* %252)
  %254 = call { i64, i8* }* @nyx_array_new_ptr()
  %255 = load %nyx_string*, %nyx_string** %143
  %256 = ptrtoint %nyx_string* %255 to i64
  call void @nyx_array_push({ i64, i8* }* %254, i64 %256)
  %257 = load { i64, i8* }*, { i64, i8* }** %149
  %258 = bitcast { i64, i8* }* %257 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %254, i8* %258)
  %259 = load { i64, i8* }*, { i64, i8* }** %192
  %260 = bitcast { i64, i8* }* %259 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %254, i8* %260)
  %261 = load { i64, i8* }*, { i64, i8* }** %230
  %262 = bitcast { i64, i8* }* %261 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %254, i8* %262)
  %263 = load %nyx_string*, %nyx_string** %118
  %264 = ptrtoint %nyx_string* %263 to i64
  call void @nyx_array_push({ i64, i8* }* %254, i64 %264)
  %265 = call { i64, i8* }* @make_astnode(%nyx_string* %253, { i64, i8* }* %254)
  ret { i64, i8* }* %265
else31:
  br label %merge32
merge32:
  %266 = call { i64, i8* }* @nyx_array_new_ptr()
  %267 = alloca { i64, i8* }*
  store { i64, i8* }* %266, { i64, i8* }** %267
  %268 = call { i64, i8* }* @nyx_array_new_ptr()
  %269 = alloca { i64, i8* }*
  store { i64, i8* }* %268, { i64, i8* }** %269
  %270 = call { i64, i8* }* @nyx_array_new_ptr()
  %271 = alloca { i64, i8* }*
  store { i64, i8* }* %270, { i64, i8* }** %271
  %272 = alloca i1
  store i1 0, i1* %272
  br label %while_cond66
while_cond66:
  %273 = load i1, i1* %272
  %274 = xor i1 %273, true
  br i1 %274, label %while_body67, label %while_end68
while_body67:
  %275 = getelementptr [6 x i8], [6 x i8]* @.str251, i32 0, i32 0
  %276 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str251.c, i8* %275)
  %277 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %276)
  br i1 %277, label %then69, label %else70
then69:
  %278 = call %Token @advance(%SharedEnv_parse* %env.param)
  %279 = getelementptr [11 x i8], [11 x i8]* @.str252, i32 0, i32 0
  %280 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str252.c, i8* %279)
  %281 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %280)
  br i1 %281, label %then72, label %else73
then72:
  %282 = call %Token @peek(%SharedEnv_parse* %env.param)
  %283 = alloca %Token
  store %Token %282, %Token* %283
  %284 = load %Token, %Token* %283
  %285 = call %nyx_string* @get_token_value(%Token %284)
  %286 = alloca %nyx_string*
  store %nyx_string* %285, %nyx_string** %286
  %287 = load %nyx_string*, %nyx_string** %286
  %288 = getelementptr [4 x i8], [4 x i8]* @.str253, i32 0, i32 0
  %289 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str253.c, i8* %288)
  %290 = call i1 @nyx_string_equals(%nyx_string* %287, %nyx_string* %289)
  br i1 %290, label %then75, label %else76
then75:
  %291 = call %Token @advance(%SharedEnv_parse* %env.param)
  %292 = getelementptr [11 x i8], [11 x i8]* @.str254, i32 0, i32 0
  %293 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str254.c, i8* %292)
  %294 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %293)
  %295 = getelementptr [7 x i8], [7 x i8]* @.str255, i32 0, i32 0
  %296 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str255.c, i8* %295)
  %297 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %296)
  %298 = alloca %Token
  store %Token %297, %Token* %298
  %299 = load { i64, i8* }*, { i64, i8* }** %267
  %300 = load %Token, %Token* %298
  %301 = call %nyx_string* @get_token_value(%Token %300)
  %302 = ptrtoint %nyx_string* %301 to i64
  call void @nyx_array_push({ i64, i8* }* %299, i64 %302)
  %303 = getelementptr [12 x i8], [12 x i8]* @.str256, i32 0, i32 0
  %304 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str256.c, i8* %303)
  %305 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %304)
  br label %merge77
else76:
  %306 = load %nyx_string*, %nyx_string** %286
  %307 = getelementptr [3 x i8], [3 x i8]* @.str257, i32 0, i32 0
  %308 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str257.c, i8* %307)
  %309 = call i1 @nyx_string_equals(%nyx_string* %306, %nyx_string* %308)
  br i1 %309, label %then78, label %else79
then78:
  %310 = call %Token @advance(%SharedEnv_parse* %env.param)
  %311 = getelementptr [11 x i8], [11 x i8]* @.str258, i32 0, i32 0
  %312 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str258.c, i8* %311)
  %313 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %312)
  %314 = getelementptr [7 x i8], [7 x i8]* @.str259, i32 0, i32 0
  %315 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str259.c, i8* %314)
  %316 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %315)
  %317 = alloca %Token
  store %Token %316, %Token* %317
  %318 = load %Token, %Token* %317
  %319 = call %nyx_string* @get_token_value(%Token %318)
  %320 = alloca %nyx_string*
  store %nyx_string* %319, %nyx_string** %320
  %321 = getelementptr [6 x i8], [6 x i8]* @.str260, i32 0, i32 0
  %322 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str260.c, i8* %321)
  %323 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %322)
  %324 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %325 = alloca { i64, i8* }*
  store { i64, i8* }* %324, { i64, i8* }** %325
  %326 = load { i64, i8* }*, { i64, i8* }** %269
  %327 = call { i64, i8* }* @nyx_array_new_ptr()
  %328 = load %nyx_string*, %nyx_string** %320
  %329 = ptrtoint %nyx_string* %328 to i64
  call void @nyx_array_push({ i64, i8* }* %327, i64 %329)
  %330 = load { i64, i8* }*, { i64, i8* }** %325
  %331 = bitcast { i64, i8* }* %330 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %327, i8* %331)
  %332 = ptrtoint { i64, i8* }* %327 to i64
  call void @nyx_array_push({ i64, i8* }* %326, i64 %332)
  %333 = getelementptr [12 x i8], [12 x i8]* @.str261, i32 0, i32 0
  %334 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str261.c, i8* %333)
  %335 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %334)
  br label %merge80
else79:
  %336 = load %nyx_string*, %nyx_string** %286
  %337 = getelementptr [8 x i8], [8 x i8]* @.str262, i32 0, i32 0
  %338 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str262.c, i8* %337)
  %339 = call i1 @nyx_string_equals(%nyx_string* %336, %nyx_string* %338)
  br i1 %339, label %then81, label %else82
then81:
  %340 = call %Token @advance(%SharedEnv_parse* %env.param)
  %341 = getelementptr [11 x i8], [11 x i8]* @.str263, i32 0, i32 0
  %342 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str263.c, i8* %341)
  %343 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %342)
  %344 = alloca i1
  store i1 0, i1* %344
  br label %while_cond84
while_cond84:
  %345 = load i1, i1* %344
  %346 = xor i1 %345, true
  br i1 %346, label %while_body85, label %while_end86
while_body85:
  %347 = getelementptr [7 x i8], [7 x i8]* @.str264, i32 0, i32 0
  %348 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str264.c, i8* %347)
  %349 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %348)
  %350 = alloca %Token
  store %Token %349, %Token* %350
  %351 = load { i64, i8* }*, { i64, i8* }** %271
  %352 = load %Token, %Token* %350
  %353 = call %nyx_string* @get_token_value(%Token %352)
  %354 = ptrtoint %nyx_string* %353 to i64
  call void @nyx_array_push({ i64, i8* }* %351, i64 %354)
  %355 = getelementptr [6 x i8], [6 x i8]* @.str265, i32 0, i32 0
  %356 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str265.c, i8* %355)
  %357 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %356)
  br i1 %357, label %then87, label %else88
then87:
  %358 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge89
else88:
  store i1 1, i1* %344
  br label %merge89
merge89:
  br label %while_cond84
while_end86:
  %359 = getelementptr [12 x i8], [12 x i8]* @.str266, i32 0, i32 0
  %360 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str266.c, i8* %359)
  %361 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %360)
  br label %merge83
else82:
  store i1 1, i1* %272
  br label %merge83
merge83:
  br label %merge80
merge80:
  br label %merge77
merge77:
  br label %merge74
else73:
  store i1 1, i1* %272
  br label %merge74
merge74:
  br label %merge71
else70:
  store i1 1, i1* %272
  br label %merge71
merge71:
  br label %while_cond66
while_end68:
  %362 = getelementptr [12 x i8], [12 x i8]* @.str267, i32 0, i32 0
  %363 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str267.c, i8* %362)
  %364 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %363)
  %365 = getelementptr [11 x i8], [11 x i8]* @.str268, i32 0, i32 0
  %366 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str268.c, i8* %365)
  %367 = call { i64, i8* }* @nyx_array_new_ptr()
  %368 = load %nyx_string*, %nyx_string** %143
  %369 = ptrtoint %nyx_string* %368 to i64
  call void @nyx_array_push({ i64, i8* }* %367, i64 %369)
  %370 = load { i64, i8* }*, { i64, i8* }** %267
  %371 = bitcast { i64, i8* }* %370 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %367, i8* %371)
  %372 = load { i64, i8* }*, { i64, i8* }** %269
  %373 = bitcast { i64, i8* }* %372 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %367, i8* %373)
  %374 = load { i64, i8* }*, { i64, i8* }** %271
  %375 = bitcast { i64, i8* }* %374 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %367, i8* %375)
  %376 = call { i64, i8* }* @make_astnode(%nyx_string* %366, { i64, i8* }* %367)
  ret { i64, i8* }* %376
else22:
  br label %merge23
merge23:
  %377 = getelementptr [7 x i8], [7 x i8]* @.str269, i32 0, i32 0
  %378 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str269.c, i8* %377)
  %379 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %378)
  br i1 %379, label %then90, label %else91
then90:
  %380 = call %Token @advance(%SharedEnv_parse* %env.param)
  %381 = getelementptr [11 x i8], [11 x i8]* @.str270, i32 0, i32 0
  %382 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str270.c, i8* %381)
  %383 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %382)
  %384 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %385 = alloca { i64, i8* }*
  store { i64, i8* }* %384, { i64, i8* }** %385
  %386 = getelementptr [7 x i8], [7 x i8]* @.str271, i32 0, i32 0
  %387 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str271.c, i8* %386)
  %388 = call { i64, i8* }* @nyx_array_new_ptr()
  %389 = getelementptr [17 x i8], [17 x i8]* @.str272, i32 0, i32 0
  %390 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str272.c, i8* %389)
  %391 = ptrtoint %nyx_string* %390 to i64
  call void @nyx_array_push({ i64, i8* }* %388, i64 %391)
  %392 = call { i64, i8* }* @make_astnode(%nyx_string* %387, { i64, i8* }* %388)
  %393 = alloca { i64, i8* }*
  store { i64, i8* }* %392, { i64, i8* }** %393
  %394 = getelementptr [6 x i8], [6 x i8]* @.str273, i32 0, i32 0
  %395 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str273.c, i8* %394)
  %396 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %395)
  br i1 %396, label %then93, label %else94
then93:
  %397 = call %Token @advance(%SharedEnv_parse* %env.param)
  %398 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %398, { i64, i8* }** %393
  br label %merge95
else94:
  br label %merge95
merge95:
  %399 = getelementptr [12 x i8], [12 x i8]* @.str274, i32 0, i32 0
  %400 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str274.c, i8* %399)
  %401 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %400)
  %402 = getelementptr [7 x i8], [7 x i8]* @.str275, i32 0, i32 0
  %403 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str275.c, i8* %402)
  %404 = call { i64, i8* }* @nyx_array_new_ptr()
  %405 = load { i64, i8* }*, { i64, i8* }** %385
  %406 = bitcast { i64, i8* }* %405 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %404, i8* %406)
  %407 = load { i64, i8* }*, { i64, i8* }** %393
  %408 = bitcast { i64, i8* }* %407 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %404, i8* %408)
  %409 = call { i64, i8* }* @make_astnode(%nyx_string* %403, { i64, i8* }* %404)
  ret { i64, i8* }* %409
else91:
  br label %merge92
merge92:
  %410 = getelementptr [11 x i8], [11 x i8]* @.str276, i32 0, i32 0
  %411 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str276.c, i8* %410)
  %412 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %411)
  br i1 %412, label %then96, label %else97
then96:
  %413 = call %Token @advance(%SharedEnv_parse* %env.param)
  %414 = alloca %Token
  store %Token %413, %Token* %414
  %415 = load %Token, %Token* %414
  %416 = call %nyx_string* @get_token_value(%Token %415)
  %417 = alloca %nyx_string*
  store %nyx_string* %416, %nyx_string** %417
  %418 = load { i64, i8* }*, { i64, i8* }** %15
  %419 = call i64 @nyx_array_length({ i64, i8* }* %418)
  %420 = icmp sgt i64 %419, 0
  br i1 %420, label %then99, label %else100
then99:
  %421 = alloca i64
  store i64 0, i64* %421
  br label %while_cond102
while_cond102:
  %422 = load i64, i64* %421
  %423 = load { i64, i8* }*, { i64, i8* }** %15
  %424 = call i64 @nyx_array_length({ i64, i8* }* %423)
  %425 = icmp slt i64 %422, %424
  br i1 %425, label %while_body103, label %while_end104
while_body103:
  %426 = load { i64, i8* }*, { i64, i8* }** %15
  %427 = load i64, i64* %421
  %428 = call i64 @nyx_array_get({ i64, i8* }* %426, i64 %427)
  %429 = inttoptr i64 %428 to %nyx_string*
  %430 = alloca %nyx_string*
  store %nyx_string* %429, %nyx_string** %430
  %431 = load %nyx_string*, %nyx_string** %430
  %432 = load %nyx_string*, %nyx_string** %417
  %433 = call i1 @nyx_string_equals(%nyx_string* %431, %nyx_string* %432)
  br i1 %433, label %then105, label %else106
then105:
  %434 = load { i64, i8* }*, { i64, i8* }** %16
  %435 = load i64, i64* %421
  %436 = call i64 @nyx_array_get({ i64, i8* }* %434, i64 %435)
  %437 = inttoptr i64 %436 to { i64, i8* }*
  %438 = alloca { i64, i8* }*
  store { i64, i8* }* %437, { i64, i8* }** %438
  %439 = load { i64, i8* }*, { i64, i8* }** %438
  ret { i64, i8* }* %439
else106:
  br label %merge107
merge107:
  %440 = load i64, i64* %421
  %441 = add i64 %440, 1
  store i64 %441, i64* %421
  br label %while_cond102
while_end104:
  br label %merge101
else100:
  br label %merge101
merge101:
  %442 = getelementptr [4 x i8], [4 x i8]* @.str277, i32 0, i32 0
  %443 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str277.c, i8* %442)
  %444 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %443)
  br i1 %444, label %then108, label %else109
then108:
  %445 = alloca i1
  store i1 0, i1* %445
  %446 = alloca i64
  store i64 0, i64* %446
  br label %while_cond111
while_cond111:
  %447 = load i64, i64* %446
  %448 = load { i64, i8* }*, { i64, i8* }** %12
  %449 = call i64 @nyx_array_length({ i64, i8* }* %448)
  %450 = icmp slt i64 %447, %449
  br i1 %450, label %while_body112, label %while_end113
while_body112:
  %451 = load { i64, i8* }*, { i64, i8* }** %12
  %452 = load i64, i64* %446
  %453 = call i64 @nyx_array_get({ i64, i8* }* %451, i64 %452)
  %454 = inttoptr i64 %453 to %nyx_string*
  %455 = alloca %nyx_string*
  store %nyx_string* %454, %nyx_string** %455
  %456 = load %nyx_string*, %nyx_string** %455
  %457 = load %nyx_string*, %nyx_string** %417
  %458 = call i1 @nyx_string_equals(%nyx_string* %456, %nyx_string* %457)
  br i1 %458, label %then114, label %else115
then114:
  store i1 1, i1* %445
  br label %merge116
else115:
  br label %merge116
merge116:
  %459 = load i64, i64* %446
  %460 = add i64 %459, 1
  store i64 %460, i64* %446
  br label %while_cond111
while_end113:
  %461 = load i1, i1* %445
  br i1 %461, label %then117, label %else118
then117:
  %462 = load %nyx_string*, %nyx_string** %417
  %463 = call { i64, i8* }* @parse_macro_invocation(%SharedEnv_parse* %env.param, %nyx_string* %462)
  ret { i64, i8* }* %463
else118:
  br label %merge119
merge119:
  br label %merge110
else109:
  br label %merge110
merge110:
  %464 = getelementptr [11 x i8], [11 x i8]* @.str278, i32 0, i32 0
  %465 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str278.c, i8* %464)
  %466 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %465)
  br i1 %466, label %then120, label %else121
then120:
  %467 = alloca i1
  store i1 false, i1* %467
  %468 = getelementptr [11 x i8], [11 x i8]* @.str279, i32 0, i32 0
  %469 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str279.c, i8* %468)
  %470 = call i1 @check_at(%SharedEnv_parse* %env.param, i64 1, %nyx_string* %469)
  br i1 %470, label %sc_and_rhs123, label %sc_and_end124
sc_and_rhs123:
  %471 = getelementptr [6 x i8], [6 x i8]* @.str280, i32 0, i32 0
  %472 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str280.c, i8* %471)
  %473 = call i1 @check_at(%SharedEnv_parse* %env.param, i64 2, %nyx_string* %472)
  store i1 %473, i1* %467
  br label %sc_and_end124
sc_and_end124:
  %474 = load i1, i1* %467
  br i1 %474, label %then125, label %else126
then125:
  %475 = load %nyx_string*, %nyx_string** %417
  %476 = call { i64, i8* }* @parse_struct_construction(%SharedEnv_parse* %env.param, %nyx_string* %475)
  ret { i64, i8* }* %476
else126:
  br label %merge127
merge127:
  %477 = getelementptr [12 x i8], [12 x i8]* @.str281, i32 0, i32 0
  %478 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str281.c, i8* %477)
  %479 = call i1 @check_at(%SharedEnv_parse* %env.param, i64 1, %nyx_string* %478)
  br i1 %479, label %then128, label %else129
then128:
  %480 = load %nyx_string*, %nyx_string** %417
  %481 = call { i64, i8* }* @parse_struct_construction(%SharedEnv_parse* %env.param, %nyx_string* %480)
  ret { i64, i8* }* %481
else129:
  br label %merge130
merge130:
  br label %merge122
else121:
  br label %merge122
merge122:
  %482 = getelementptr [11 x i8], [11 x i8]* @.str282, i32 0, i32 0
  %483 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str282.c, i8* %482)
  %484 = call { i64, i8* }* @nyx_array_new_ptr()
  %485 = load %nyx_string*, %nyx_string** %417
  %486 = ptrtoint %nyx_string* %485 to i64
  call void @nyx_array_push({ i64, i8* }* %484, i64 %486)
  %487 = call { i64, i8* }* @make_astnode(%nyx_string* %483, { i64, i8* }* %484)
  ret { i64, i8* }* %487
else97:
  br label %merge98
merge98:
  %488 = getelementptr [13 x i8], [13 x i8]* @.str283, i32 0, i32 0
  %489 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str283.c, i8* %488)
  %490 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %489)
  br i1 %490, label %then131, label %else132
then131:
  %491 = call { i64, i8* }* @parse_array_literal(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %491
else132:
  br label %merge133
merge133:
  %492 = getelementptr [6 x i8], [6 x i8]* @.str284, i32 0, i32 0
  %493 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str284.c, i8* %492)
  %494 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %493)
  br i1 %494, label %then134, label %else135
then134:
  %495 = call { i64, i8* }* @parse_match(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %495
else135:
  br label %merge136
merge136:
  %496 = getelementptr [11 x i8], [11 x i8]* @.str285, i32 0, i32 0
  %497 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str285.c, i8* %496)
  %498 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %497)
  br i1 %498, label %then137, label %else138
then137:
  %499 = call %Token @advance(%SharedEnv_parse* %env.param)
  %500 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %501 = alloca { i64, i8* }*
  store { i64, i8* }* %500, { i64, i8* }** %501
  %502 = getelementptr [6 x i8], [6 x i8]* @.str286, i32 0, i32 0
  %503 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str286.c, i8* %502)
  %504 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %503)
  br i1 %504, label %then140, label %else141
then140:
  %505 = call { i64, i8* }* @nyx_array_new_ptr()
  %506 = load { i64, i8* }*, { i64, i8* }** %501
  %507 = bitcast { i64, i8* }* %506 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %505, i8* %507)
  %508 = alloca { i64, i8* }*
  store { i64, i8* }* %505, { i64, i8* }** %508
  br label %while_cond143
while_cond143:
  %509 = getelementptr [6 x i8], [6 x i8]* @.str287, i32 0, i32 0
  %510 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str287.c, i8* %509)
  %511 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %510)
  br i1 %511, label %while_body144, label %while_end145
while_body144:
  %512 = call %Token @advance(%SharedEnv_parse* %env.param)
  %513 = load { i64, i8* }*, { i64, i8* }** %508
  %514 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %515 = ptrtoint { i64, i8* }* %514 to i64
  call void @nyx_array_push({ i64, i8* }* %513, i64 %515)
  br label %while_cond143
while_end145:
  %516 = getelementptr [12 x i8], [12 x i8]* @.str288, i32 0, i32 0
  %517 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str288.c, i8* %516)
  %518 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %517)
  %519 = getelementptr [10 x i8], [10 x i8]* @.str289, i32 0, i32 0
  %520 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str289.c, i8* %519)
  %521 = call { i64, i8* }* @nyx_array_new_ptr()
  %522 = load { i64, i8* }*, { i64, i8* }** %508
  %523 = bitcast { i64, i8* }* %522 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %521, i8* %523)
  %524 = call { i64, i8* }* @make_astnode(%nyx_string* %520, { i64, i8* }* %521)
  ret { i64, i8* }* %524
else141:
  br label %merge142
merge142:
  %525 = getelementptr [12 x i8], [12 x i8]* @.str290, i32 0, i32 0
  %526 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str290.c, i8* %525)
  %527 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %526)
  %528 = load { i64, i8* }*, { i64, i8* }** %501
  ret { i64, i8* }* %528
else138:
  br label %merge139
merge139:
  %529 = getelementptr [3 x i8], [3 x i8]* @.str291, i32 0, i32 0
  %530 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str291.c, i8* %529)
  %531 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %530)
  br i1 %531, label %then146, label %else147
then146:
  %532 = call %Token @advance(%SharedEnv_parse* %env.param)
  %533 = load { i64, i8* }*, { i64, i8* }** %11
  %534 = call i64 @nyx_array_get({ i64, i8* }* %533, i64 0)
  %535 = alloca i64
  store i64 %534, i64* %535
  %536 = load { i64, i8* }*, { i64, i8* }** %11
  %537 = load { i64, i8* }*, { i64, i8* }** %11
  %538 = call i64 @nyx_array_get({ i64, i8* }* %537, i64 0)
  %539 = add i64 %538, 1
  call void @nyx_array_set({ i64, i8* }* %536, i64 0, i64 %539)
  %540 = getelementptr [10 x i8], [10 x i8]* @.str292, i32 0, i32 0
  %541 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str292.c, i8* %540)
  %542 = load i64, i64* %535
  %543 = call %nyx_string* @nyx_string_from_int(i64 %542)
  %544 = call %nyx_string* @nyx_string_concat(%nyx_string* %541, %nyx_string* %543)
  %545 = alloca %nyx_string*
  store %nyx_string* %544, %nyx_string** %545
  %546 = getelementptr [11 x i8], [11 x i8]* @.str293, i32 0, i32 0
  %547 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str293.c, i8* %546)
  %548 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %547)
  %549 = call { i64, i8* }* @nyx_array_new_ptr()
  %550 = alloca { i64, i8* }*
  store { i64, i8* }* %549, { i64, i8* }** %550
  %551 = alloca i1
  store i1 0, i1* %551
  br label %while_cond149
while_cond149:
  %552 = load i1, i1* %551
  %553 = xor i1 %552, true
  br i1 %553, label %while_body150, label %while_end151
while_body150:
  %554 = getelementptr [12 x i8], [12 x i8]* @.str294, i32 0, i32 0
  %555 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str294.c, i8* %554)
  %556 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %555)
  br i1 %556, label %then152, label %else153
then152:
  %557 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %551
  br label %merge154
else153:
  %558 = load { i64, i8* }*, { i64, i8* }** %550
  %559 = call i64 @nyx_array_length({ i64, i8* }* %558)
  %560 = icmp sgt i64 %559, 0
  br i1 %560, label %then155, label %else156
then155:
  %561 = getelementptr [6 x i8], [6 x i8]* @.str295, i32 0, i32 0
  %562 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str295.c, i8* %561)
  %563 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %562)
  br label %merge157
else156:
  br label %merge157
merge157:
  %564 = getelementptr [11 x i8], [11 x i8]* @.str296, i32 0, i32 0
  %565 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str296.c, i8* %564)
  %566 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %565)
  %567 = alloca %Token
  store %Token %566, %Token* %567
  %568 = load %Token, %Token* %567
  %569 = call %nyx_string* @get_token_value(%Token %568)
  %570 = alloca %nyx_string*
  store %nyx_string* %569, %nyx_string** %570
  %571 = getelementptr [4 x i8], [4 x i8]* @.str297, i32 0, i32 0
  %572 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str297.c, i8* %571)
  %573 = alloca %nyx_string*
  store %nyx_string* %572, %nyx_string** %573
  %574 = getelementptr [6 x i8], [6 x i8]* @.str298, i32 0, i32 0
  %575 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str298.c, i8* %574)
  %576 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %575)
  br i1 %576, label %then158, label %else159
then158:
  %577 = call %Token @advance(%SharedEnv_parse* %env.param)
  %578 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %578, %nyx_string** %573
  br label %merge160
else159:
  br label %merge160
merge160:
  %579 = load { i64, i8* }*, { i64, i8* }** %550
  %580 = call { i64, i8* }* @nyx_array_new_ptr()
  %581 = load %nyx_string*, %nyx_string** %570
  %582 = ptrtoint %nyx_string* %581 to i64
  call void @nyx_array_push({ i64, i8* }* %580, i64 %582)
  %583 = load %nyx_string*, %nyx_string** %573
  %584 = ptrtoint %nyx_string* %583 to i64
  call void @nyx_array_push({ i64, i8* }* %580, i64 %584)
  %585 = ptrtoint { i64, i8* }* %580 to i64
  call void @nyx_array_push({ i64, i8* }* %579, i64 %585)
  br label %merge154
merge154:
  br label %while_cond149
while_end151:
  %586 = getelementptr [1 x i8], [1 x i8]* @.str299, i32 0, i32 0
  %587 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str299.c, i8* %586)
  %588 = alloca %nyx_string*
  store %nyx_string* %587, %nyx_string** %588
  %589 = getelementptr [6 x i8], [6 x i8]* @.str300, i32 0, i32 0
  %590 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str300.c, i8* %589)
  %591 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %590)
  br i1 %591, label %then161, label %else162
then161:
  %592 = call %Token @advance(%SharedEnv_parse* %env.param)
  %593 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %593, %nyx_string** %588
  br label %merge163
else162:
  br label %merge163
merge163:
  %594 = call { i64, i8* }* @parse_fn_body_block(%SharedEnv_parse* %env.param)
  %595 = alloca { i64, i8* }*
  store { i64, i8* }* %594, { i64, i8* }** %595
  %596 = getelementptr [9 x i8], [9 x i8]* @.str301, i32 0, i32 0
  %597 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str301.c, i8* %596)
  %598 = call { i64, i8* }* @nyx_array_new_ptr()
  %599 = load %nyx_string*, %nyx_string** %545
  %600 = ptrtoint %nyx_string* %599 to i64
  call void @nyx_array_push({ i64, i8* }* %598, i64 %600)
  %601 = load { i64, i8* }*, { i64, i8* }** %550
  %602 = bitcast { i64, i8* }* %601 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %598, i8* %602)
  %603 = load %nyx_string*, %nyx_string** %588
  %604 = ptrtoint %nyx_string* %603 to i64
  call void @nyx_array_push({ i64, i8* }* %598, i64 %604)
  %605 = load { i64, i8* }*, { i64, i8* }** %595
  %606 = bitcast { i64, i8* }* %605 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %598, i8* %606)
  %607 = call { i64, i8* }* @nyx_array_new_ptr()
  %608 = bitcast { i64, i8* }* %607 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %598, i8* %608)
  %609 = call { i64, i8* }* @make_astnode(%nyx_string* %597, { i64, i8* }* %598)
  %610 = alloca { i64, i8* }*
  store { i64, i8* }* %609, { i64, i8* }** %610
  %611 = load { i64, i8* }*, { i64, i8* }** %10
  %612 = load { i64, i8* }*, { i64, i8* }** %610
  %613 = ptrtoint { i64, i8* }* %612 to i64
  call void @nyx_array_push({ i64, i8* }* %611, i64 %613)
  %614 = getelementptr [11 x i8], [11 x i8]* @.str302, i32 0, i32 0
  %615 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str302.c, i8* %614)
  %616 = call { i64, i8* }* @nyx_array_new_ptr()
  %617 = load %nyx_string*, %nyx_string** %545
  %618 = ptrtoint %nyx_string* %617 to i64
  call void @nyx_array_push({ i64, i8* }* %616, i64 %618)
  %619 = call { i64, i8* }* @make_astnode(%nyx_string* %615, { i64, i8* }* %616)
  ret { i64, i8* }* %619
else147:
  br label %merge148
merge148:
  %620 = getelementptr [11 x i8], [11 x i8]* @.str303, i32 0, i32 0
  %621 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str303.c, i8* %620)
  %622 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %621)
  br i1 %622, label %then164, label %else165
then164:
  %623 = alloca i1
  store i1 true, i1* %623
  %624 = getelementptr [12 x i8], [12 x i8]* @.str304, i32 0, i32 0
  %625 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str304.c, i8* %624)
  %626 = call i1 @check_at(%SharedEnv_parse* %env.param, i64 1, %nyx_string* %625)
  br i1 %626, label %sc_or_end168, label %sc_or_rhs167
sc_or_rhs167:
  %627 = alloca i1
  store i1 false, i1* %627
  %628 = getelementptr [7 x i8], [7 x i8]* @.str305, i32 0, i32 0
  %629 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str305.c, i8* %628)
  %630 = call i1 @check_at(%SharedEnv_parse* %env.param, i64 1, %nyx_string* %629)
  br i1 %630, label %sc_and_rhs169, label %sc_and_end170
sc_and_rhs169:
  %631 = getelementptr [6 x i8], [6 x i8]* @.str306, i32 0, i32 0
  %632 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str306.c, i8* %631)
  %633 = call i1 @check_at(%SharedEnv_parse* %env.param, i64 2, %nyx_string* %632)
  store i1 %633, i1* %627
  br label %sc_and_end170
sc_and_end170:
  %634 = load i1, i1* %627
  store i1 %634, i1* %623
  br label %sc_or_end168
sc_or_end168:
  %635 = load i1, i1* %623
  br i1 %635, label %then171, label %else172
then171:
  %636 = call { i64, i8* }* @parse_map_literal(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %636
else172:
  br label %merge173
merge173:
  br label %merge166
else165:
  br label %merge166
merge166:
  %637 = getelementptr [35 x i8], [35 x i8]* @.str307, i32 0, i32 0
  %638 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str307.c, i8* %637)
  %639 = call i8* @nyx_string_to_cstr(%nyx_string* %638)
  call void @nyx_print_string(i8* %639)
  %640 = call %Token @advance(%SharedEnv_parse* %env.param)
  %641 = getelementptr [6 x i8], [6 x i8]* @.str308, i32 0, i32 0
  %642 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str308.c, i8* %641)
  %643 = call { i64, i8* }* @nyx_array_new_ptr()
  %644 = call { i64, i8* }* @make_astnode(%nyx_string* %642, { i64, i8* }* %643)
  ret { i64, i8* }* %644
}

define internal { i64, i8* }* @parse_map_literal(%SharedEnv_parse* %env.param) {
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
  %18 = getelementptr [11 x i8], [11 x i8]* @.str309, i32 0, i32 0
  %19 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str309.c, i8* %18)
  %20 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %19)
  %21 = call { i64, i8* }* @nyx_array_new_ptr()
  %22 = alloca { i64, i8* }*
  store { i64, i8* }* %21, { i64, i8* }** %22
  %23 = call { i64, i8* }* @nyx_array_new_ptr()
  %24 = alloca { i64, i8* }*
  store { i64, i8* }* %23, { i64, i8* }** %24
  %25 = alloca i1
  store i1 0, i1* %25
  br label %while_cond0
while_cond0:
  %26 = load i1, i1* %25
  %27 = xor i1 %26, true
  br i1 %27, label %while_body1, label %while_end2
while_body1:
  %28 = load i64, i64* %7
  %29 = icmp eq i64 %28, 1
  br i1 %29, label %then3, label %else4
then3:
  store i1 1, i1* %25
  br label %merge5
else4:
  %30 = getelementptr [4 x i8], [4 x i8]* @.str310, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str310.c, i8* %30)
  %32 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %31)
  br i1 %32, label %then6, label %else7
then6:
  %33 = getelementptr [8 x i8], [8 x i8]* @.str311, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str311.c, i8* %33)
  %35 = load i64, i64* @g_last_line
  %36 = load i64, i64* @g_last_col
  %37 = getelementptr [53 x i8], [53 x i8]* @.str312, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str312.c, i8* %37)
  %39 = getelementptr [59 x i8], [59 x i8]* @.str313, i32 0, i32 0
  %40 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str313.c, i8* %39)
  %41 = call %nyx_string* @p_msg(%SharedEnv_parse* %env.param, %nyx_string* %38, %nyx_string* %40)
  %42 = call i64 @p_diag(%SharedEnv_parse* %env.param, %nyx_string* %34, i64 %35, i64 %36, %nyx_string* %41)
  store i1 1, i1* %25
  br label %merge8
else7:
  %43 = getelementptr [12 x i8], [12 x i8]* @.str314, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str314.c, i8* %43)
  %45 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %44)
  br i1 %45, label %then9, label %else10
then9:
  %46 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %25
  br label %merge11
else10:
  %47 = load { i64, i8* }*, { i64, i8* }** %22
  %48 = call i64 @nyx_array_length({ i64, i8* }* %47)
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %then12, label %else13
then12:
  %50 = getelementptr [6 x i8], [6 x i8]* @.str315, i32 0, i32 0
  %51 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str315.c, i8* %50)
  %52 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %51)
  br i1 %52, label %then15, label %else16
then15:
  %53 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge17
else16:
  br label %merge17
merge17:
  br label %merge14
else13:
  br label %merge14
merge14:
  %54 = getelementptr [12 x i8], [12 x i8]* @.str316, i32 0, i32 0
  %55 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str316.c, i8* %54)
  %56 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %55)
  br i1 %56, label %then18, label %else19
then18:
  %57 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %25
  br label %merge20
else19:
  %58 = getelementptr [7 x i8], [7 x i8]* @.str317, i32 0, i32 0
  %59 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str317.c, i8* %58)
  %60 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %59)
  %61 = alloca %Token
  store %Token %60, %Token* %61
  %62 = getelementptr [6 x i8], [6 x i8]* @.str318, i32 0, i32 0
  %63 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str318.c, i8* %62)
  %64 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %63)
  %65 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %66 = alloca { i64, i8* }*
  store { i64, i8* }* %65, { i64, i8* }** %66
  %67 = load { i64, i8* }*, { i64, i8* }** %22
  %68 = load %Token, %Token* %61
  %69 = call %nyx_string* @get_token_value(%Token %68)
  %70 = ptrtoint %nyx_string* %69 to i64
  call void @nyx_array_push({ i64, i8* }* %67, i64 %70)
  %71 = load { i64, i8* }*, { i64, i8* }** %24
  %72 = load { i64, i8* }*, { i64, i8* }** %66
  %73 = ptrtoint { i64, i8* }* %72 to i64
  call void @nyx_array_push({ i64, i8* }* %71, i64 %73)
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
  %74 = getelementptr [12 x i8], [12 x i8]* @.str319, i32 0, i32 0
  %75 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str319.c, i8* %74)
  %76 = call { i64, i8* }* @nyx_array_new_ptr()
  %77 = load { i64, i8* }*, { i64, i8* }** %22
  %78 = bitcast { i64, i8* }* %77 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %76, i8* %78)
  %79 = load { i64, i8* }*, { i64, i8* }** %24
  %80 = bitcast { i64, i8* }* %79 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %76, i8* %80)
  %81 = call { i64, i8* }* @make_astnode(%nyx_string* %75, { i64, i8* }* %76)
  ret { i64, i8* }* %81
}

define internal { i64, i8* }* @parse_array_literal(%SharedEnv_parse* %env.param) {
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
  %18 = getelementptr [13 x i8], [13 x i8]* @.str320, i32 0, i32 0
  %19 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str320.c, i8* %18)
  %20 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %19)
  %21 = call { i64, i8* }* @nyx_array_new_ptr()
  %22 = alloca { i64, i8* }*
  store { i64, i8* }* %21, { i64, i8* }** %22
  %23 = alloca i1
  store i1 0, i1* %23
  br label %while_cond0
while_cond0:
  %24 = load i1, i1* %23
  %25 = xor i1 %24, true
  br i1 %25, label %while_body1, label %while_end2
while_body1:
  %26 = getelementptr [14 x i8], [14 x i8]* @.str321, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str321.c, i8* %26)
  %28 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %27)
  br i1 %28, label %then3, label %else4
then3:
  %29 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %23
  br label %merge5
else4:
  %30 = load { i64, i8* }*, { i64, i8* }** %22
  %31 = call i64 @nyx_array_length({ i64, i8* }* %30)
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %then6, label %else7
then6:
  %33 = getelementptr [6 x i8], [6 x i8]* @.str322, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str322.c, i8* %33)
  %35 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %34)
  br label %merge8
else7:
  br label %merge8
merge8:
  %36 = load { i64, i8* }*, { i64, i8* }** %22
  %37 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %38 = ptrtoint { i64, i8* }* %37 to i64
  call void @nyx_array_push({ i64, i8* }* %36, i64 %38)
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %39 = getelementptr [6 x i8], [6 x i8]* @.str323, i32 0, i32 0
  %40 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str323.c, i8* %39)
  %41 = call { i64, i8* }* @nyx_array_new_ptr()
  %42 = load { i64, i8* }*, { i64, i8* }** %22
  %43 = bitcast { i64, i8* }* %42 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %41, i8* %43)
  %44 = call { i64, i8* }* @make_astnode(%nyx_string* %40, { i64, i8* }* %41)
  ret { i64, i8* }* %44
}

define internal { i64, i8* }* @parse_enum(%SharedEnv_parse* %env.param) {
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
  %18 = getelementptr [5 x i8], [5 x i8]* @.str324, i32 0, i32 0
  %19 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str324.c, i8* %18)
  %20 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %19)
  %21 = getelementptr [11 x i8], [11 x i8]* @.str325, i32 0, i32 0
  %22 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str325.c, i8* %21)
  %23 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %22)
  %24 = alloca %Token
  store %Token %23, %Token* %24
  %25 = load %Token, %Token* %24
  %26 = call %nyx_string* @get_token_value(%Token %25)
  %27 = alloca %nyx_string*
  store %nyx_string* %26, %nyx_string** %27
  %28 = call { i64, i8* }* @nyx_array_new_ptr()
  %29 = alloca { i64, i8* }*
  store { i64, i8* }* %28, { i64, i8* }** %29
  %30 = getelementptr [5 x i8], [5 x i8]* @.str326, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str326.c, i8* %30)
  %32 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %31)
  br i1 %32, label %then0, label %else1
then0:
  %33 = call %Token @advance(%SharedEnv_parse* %env.param)
  %34 = getelementptr [11 x i8], [11 x i8]* @.str327, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str327.c, i8* %34)
  %36 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %35)
  %37 = alloca %Token
  store %Token %36, %Token* %37
  %38 = load { i64, i8* }*, { i64, i8* }** %29
  %39 = load %Token, %Token* %37
  %40 = call %nyx_string* @get_token_value(%Token %39)
  %41 = ptrtoint %nyx_string* %40 to i64
  call void @nyx_array_push({ i64, i8* }* %38, i64 %41)
  %42 = alloca i1
  store i1 0, i1* %42
  br label %while_cond3
while_cond3:
  %43 = load i1, i1* %42
  %44 = xor i1 %43, true
  br i1 %44, label %while_body4, label %while_end5
while_body4:
  %45 = getelementptr [6 x i8], [6 x i8]* @.str328, i32 0, i32 0
  %46 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str328.c, i8* %45)
  %47 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %46)
  br i1 %47, label %then6, label %else7
then6:
  %48 = call %Token @advance(%SharedEnv_parse* %env.param)
  %49 = getelementptr [11 x i8], [11 x i8]* @.str329, i32 0, i32 0
  %50 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str329.c, i8* %49)
  %51 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %50)
  %52 = alloca %Token
  store %Token %51, %Token* %52
  %53 = load { i64, i8* }*, { i64, i8* }** %29
  %54 = load %Token, %Token* %52
  %55 = call %nyx_string* @get_token_value(%Token %54)
  %56 = ptrtoint %nyx_string* %55 to i64
  call void @nyx_array_push({ i64, i8* }* %53, i64 %56)
  br label %merge8
else7:
  store i1 1, i1* %42
  br label %merge8
merge8:
  br label %while_cond3
while_end5:
  %57 = getelementptr [8 x i8], [8 x i8]* @.str330, i32 0, i32 0
  %58 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str330.c, i8* %57)
  %59 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %58)
  br label %merge2
else1:
  br label %merge2
merge2:
  %60 = getelementptr [11 x i8], [11 x i8]* @.str331, i32 0, i32 0
  %61 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str331.c, i8* %60)
  %62 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %61)
  %63 = call { i64, i8* }* @nyx_array_new_ptr()
  %64 = alloca { i64, i8* }*
  store { i64, i8* }* %63, { i64, i8* }** %64
  %65 = alloca i1
  store i1 0, i1* %65
  br label %while_cond9
while_cond9:
  %66 = load i1, i1* %65
  %67 = xor i1 %66, true
  br i1 %67, label %while_body10, label %while_end11
while_body10:
  %68 = getelementptr [12 x i8], [12 x i8]* @.str332, i32 0, i32 0
  %69 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str332.c, i8* %68)
  %70 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %69)
  br i1 %70, label %then12, label %else13
then12:
  %71 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %65
  br label %merge14
else13:
  %72 = load { i64, i8* }*, { i64, i8* }** %64
  %73 = call i64 @nyx_array_length({ i64, i8* }* %72)
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %then15, label %else16
then15:
  %75 = getelementptr [6 x i8], [6 x i8]* @.str333, i32 0, i32 0
  %76 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str333.c, i8* %75)
  %77 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %76)
  br i1 %77, label %then18, label %else19
then18:
  %78 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge20
else19:
  br label %merge20
merge20:
  br label %merge17
else16:
  br label %merge17
merge17:
  %79 = getelementptr [12 x i8], [12 x i8]* @.str334, i32 0, i32 0
  %80 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str334.c, i8* %79)
  %81 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %80)
  br i1 %81, label %then21, label %else22
then21:
  %82 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %65
  br label %merge23
else22:
  %83 = getelementptr [11 x i8], [11 x i8]* @.str335, i32 0, i32 0
  %84 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str335.c, i8* %83)
  %85 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %84)
  %86 = alloca %Token
  store %Token %85, %Token* %86
  %87 = load %Token, %Token* %86
  %88 = call %nyx_string* @get_token_value(%Token %87)
  %89 = alloca %nyx_string*
  store %nyx_string* %88, %nyx_string** %89
  %90 = call { i64, i8* }* @nyx_array_new_ptr()
  %91 = alloca { i64, i8* }*
  store { i64, i8* }* %90, { i64, i8* }** %91
  %92 = getelementptr [11 x i8], [11 x i8]* @.str336, i32 0, i32 0
  %93 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str336.c, i8* %92)
  %94 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %93)
  br i1 %94, label %then24, label %else25
then24:
  %95 = call %Token @advance(%SharedEnv_parse* %env.param)
  %96 = alloca i1
  store i1 0, i1* %96
  br label %while_cond27
while_cond27:
  %97 = load i1, i1* %96
  %98 = xor i1 %97, true
  br i1 %98, label %while_body28, label %while_end29
while_body28:
  %99 = getelementptr [12 x i8], [12 x i8]* @.str337, i32 0, i32 0
  %100 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str337.c, i8* %99)
  %101 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %100)
  br i1 %101, label %then30, label %else31
then30:
  %102 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %96
  br label %merge32
else31:
  %103 = load { i64, i8* }*, { i64, i8* }** %91
  %104 = call i64 @nyx_array_length({ i64, i8* }* %103)
  %105 = icmp sgt i64 %104, 0
  br i1 %105, label %then33, label %else34
then33:
  %106 = getelementptr [6 x i8], [6 x i8]* @.str338, i32 0, i32 0
  %107 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str338.c, i8* %106)
  %108 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %107)
  br label %merge35
else34:
  br label %merge35
merge35:
  %109 = getelementptr [11 x i8], [11 x i8]* @.str339, i32 0, i32 0
  %110 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str339.c, i8* %109)
  %111 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %110)
  %112 = alloca %Token
  store %Token %111, %Token* %112
  %113 = load { i64, i8* }*, { i64, i8* }** %91
  %114 = load %Token, %Token* %112
  %115 = call %nyx_string* @get_token_value(%Token %114)
  %116 = ptrtoint %nyx_string* %115 to i64
  call void @nyx_array_push({ i64, i8* }* %113, i64 %116)
  br label %merge32
merge32:
  br label %while_cond27
while_end29:
  br label %merge26
else25:
  br label %merge26
merge26:
  %117 = call { i64, i8* }* @nyx_array_new_ptr()
  %118 = alloca { i64, i8* }*
  store { i64, i8* }* %117, { i64, i8* }** %118
  %119 = load { i64, i8* }*, { i64, i8* }** %118
  %120 = load %nyx_string*, %nyx_string** %89
  %121 = ptrtoint %nyx_string* %120 to i64
  call void @nyx_array_push({ i64, i8* }* %119, i64 %121)
  %122 = load { i64, i8* }*, { i64, i8* }** %118
  %123 = load { i64, i8* }*, { i64, i8* }** %91
  %124 = ptrtoint { i64, i8* }* %123 to i64
  call void @nyx_array_push({ i64, i8* }* %122, i64 %124)
  %125 = load { i64, i8* }*, { i64, i8* }** %64
  %126 = load { i64, i8* }*, { i64, i8* }** %118
  %127 = ptrtoint { i64, i8* }* %126 to i64
  call void @nyx_array_push({ i64, i8* }* %125, i64 %127)
  br label %merge23
merge23:
  br label %merge14
merge14:
  br label %while_cond9
while_end11:
  %128 = getelementptr [9 x i8], [9 x i8]* @.str340, i32 0, i32 0
  %129 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str340.c, i8* %128)
  %130 = call { i64, i8* }* @nyx_array_new_ptr()
  %131 = load %nyx_string*, %nyx_string** %27
  %132 = ptrtoint %nyx_string* %131 to i64
  call void @nyx_array_push({ i64, i8* }* %130, i64 %132)
  %133 = load { i64, i8* }*, { i64, i8* }** %64
  %134 = bitcast { i64, i8* }* %133 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %130, i8* %134)
  %135 = load { i64, i8* }*, { i64, i8* }** %29
  %136 = bitcast { i64, i8* }* %135 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %130, i8* %136)
  %137 = call { i64, i8* }* @make_astnode(%nyx_string* %129, { i64, i8* }* %130)
  ret { i64, i8* }* %137
}

define internal { i64, i8* }* @parse_single_pattern(%SharedEnv_parse* %env.param) {
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
  %18 = getelementptr [9 x i8], [9 x i8]* @.str341, i32 0, i32 0
  %19 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str341.c, i8* %18)
  %20 = call { i64, i8* }* @nyx_array_new_ptr()
  %21 = call { i64, i8* }* @make_astnode(%nyx_string* %19, { i64, i8* }* %20)
  %22 = alloca { i64, i8* }*
  store { i64, i8* }* %21, { i64, i8* }** %22
  %23 = getelementptr [7 x i8], [7 x i8]* @.str342, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str342.c, i8* %23)
  %25 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %24)
  br i1 %25, label %then0, label %else1
then0:
  %26 = call %Token @advance(%SharedEnv_parse* %env.param)
  %27 = alloca %Token
  store %Token %26, %Token* %27
  %28 = load %Token, %Token* %27
  %29 = call %nyx_string* @get_token_value(%Token %28)
  %30 = alloca %nyx_string*
  store %nyx_string* %29, %nyx_string** %30
  %31 = load %nyx_string*, %nyx_string** %30
  %32 = getelementptr [2 x i8], [2 x i8]* @.str343, i32 0, i32 0
  %33 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str343.c, i8* %32)
  %34 = call i64 @nyx_string_index_of(%nyx_string* %31, %nyx_string* %33)
  %35 = icmp sge i64 %34, 0
  br i1 %35, label %then3, label %else4
then3:
  %36 = getelementptr [16 x i8], [16 x i8]* @.str344, i32 0, i32 0
  %37 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str344.c, i8* %36)
  %38 = call { i64, i8* }* @nyx_array_new_ptr()
  %39 = load %nyx_string*, %nyx_string** %30
  %40 = ptrtoint %nyx_string* %39 to i64
  call void @nyx_array_push({ i64, i8* }* %38, i64 %40)
  %41 = getelementptr [6 x i8], [6 x i8]* @.str345, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str345.c, i8* %41)
  %43 = ptrtoint %nyx_string* %42 to i64
  call void @nyx_array_push({ i64, i8* }* %38, i64 %43)
  %44 = call { i64, i8* }* @make_astnode(%nyx_string* %37, { i64, i8* }* %38)
  ret { i64, i8* }* %44
else4:
  br label %merge5
merge5:
  %45 = getelementptr [16 x i8], [16 x i8]* @.str346, i32 0, i32 0
  %46 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str346.c, i8* %45)
  %47 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %46)
  br i1 %47, label %then6, label %else7
then6:
  %48 = call %Token @advance(%SharedEnv_parse* %env.param)
  %49 = getelementptr [1 x i8], [1 x i8]* @.str347, i32 0, i32 0
  %50 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str347.c, i8* %49)
  %51 = alloca %nyx_string*
  store %nyx_string* %50, %nyx_string** %51
  %52 = getelementptr [6 x i8], [6 x i8]* @.str348, i32 0, i32 0
  %53 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str348.c, i8* %52)
  %54 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %53)
  br i1 %54, label %then9, label %else10
then9:
  %55 = call %Token @advance(%SharedEnv_parse* %env.param)
  %56 = getelementptr [7 x i8], [7 x i8]* @.str349, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str349.c, i8* %56)
  %58 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %57)
  %59 = alloca %Token
  store %Token %58, %Token* %59
  %60 = getelementptr [2 x i8], [2 x i8]* @.str350, i32 0, i32 0
  %61 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str350.c, i8* %60)
  %62 = load %Token, %Token* %59
  %63 = call %nyx_string* @get_token_value(%Token %62)
  %64 = call %nyx_string* @nyx_string_concat(%nyx_string* %61, %nyx_string* %63)
  store %nyx_string* %64, %nyx_string** %51
  br label %merge11
else10:
  %65 = getelementptr [7 x i8], [7 x i8]* @.str351, i32 0, i32 0
  %66 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str351.c, i8* %65)
  %67 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %66)
  %68 = alloca %Token
  store %Token %67, %Token* %68
  %69 = load %Token, %Token* %68
  %70 = call %nyx_string* @get_token_value(%Token %69)
  store %nyx_string* %70, %nyx_string** %51
  br label %merge11
merge11:
  %71 = getelementptr [14 x i8], [14 x i8]* @.str352, i32 0, i32 0
  %72 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str352.c, i8* %71)
  %73 = call { i64, i8* }* @nyx_array_new_ptr()
  %74 = load %nyx_string*, %nyx_string** %30
  %75 = ptrtoint %nyx_string* %74 to i64
  call void @nyx_array_push({ i64, i8* }* %73, i64 %75)
  %76 = load %nyx_string*, %nyx_string** %51
  %77 = ptrtoint %nyx_string* %76 to i64
  call void @nyx_array_push({ i64, i8* }* %73, i64 %77)
  %78 = getelementptr [5 x i8], [5 x i8]* @.str353, i32 0, i32 0
  %79 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str353.c, i8* %78)
  %80 = ptrtoint %nyx_string* %79 to i64
  call void @nyx_array_push({ i64, i8* }* %73, i64 %80)
  %81 = getelementptr [4 x i8], [4 x i8]* @.str354, i32 0, i32 0
  %82 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str354.c, i8* %81)
  %83 = ptrtoint %nyx_string* %82 to i64
  call void @nyx_array_push({ i64, i8* }* %73, i64 %83)
  %84 = call { i64, i8* }* @make_astnode(%nyx_string* %72, { i64, i8* }* %73)
  ret { i64, i8* }* %84
else7:
  br label %merge8
merge8:
  %85 = getelementptr [6 x i8], [6 x i8]* @.str355, i32 0, i32 0
  %86 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str355.c, i8* %85)
  %87 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %86)
  br i1 %87, label %then12, label %else13
then12:
  %88 = call %Token @advance(%SharedEnv_parse* %env.param)
  %89 = getelementptr [1 x i8], [1 x i8]* @.str356, i32 0, i32 0
  %90 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str356.c, i8* %89)
  %91 = alloca %nyx_string*
  store %nyx_string* %90, %nyx_string** %91
  %92 = getelementptr [6 x i8], [6 x i8]* @.str357, i32 0, i32 0
  %93 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str357.c, i8* %92)
  %94 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %93)
  br i1 %94, label %then15, label %else16
then15:
  %95 = call %Token @advance(%SharedEnv_parse* %env.param)
  %96 = getelementptr [7 x i8], [7 x i8]* @.str358, i32 0, i32 0
  %97 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str358.c, i8* %96)
  %98 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %97)
  %99 = alloca %Token
  store %Token %98, %Token* %99
  %100 = getelementptr [2 x i8], [2 x i8]* @.str359, i32 0, i32 0
  %101 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str359.c, i8* %100)
  %102 = load %Token, %Token* %99
  %103 = call %nyx_string* @get_token_value(%Token %102)
  %104 = call %nyx_string* @nyx_string_concat(%nyx_string* %101, %nyx_string* %103)
  store %nyx_string* %104, %nyx_string** %91
  br label %merge17
else16:
  %105 = getelementptr [7 x i8], [7 x i8]* @.str360, i32 0, i32 0
  %106 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str360.c, i8* %105)
  %107 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %106)
  %108 = alloca %Token
  store %Token %107, %Token* %108
  %109 = load %Token, %Token* %108
  %110 = call %nyx_string* @get_token_value(%Token %109)
  store %nyx_string* %110, %nyx_string** %91
  br label %merge17
merge17:
  %111 = getelementptr [14 x i8], [14 x i8]* @.str361, i32 0, i32 0
  %112 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str361.c, i8* %111)
  %113 = call { i64, i8* }* @nyx_array_new_ptr()
  %114 = load %nyx_string*, %nyx_string** %30
  %115 = ptrtoint %nyx_string* %114 to i64
  call void @nyx_array_push({ i64, i8* }* %113, i64 %115)
  %116 = load %nyx_string*, %nyx_string** %91
  %117 = ptrtoint %nyx_string* %116 to i64
  call void @nyx_array_push({ i64, i8* }* %113, i64 %117)
  %118 = getelementptr [6 x i8], [6 x i8]* @.str362, i32 0, i32 0
  %119 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str362.c, i8* %118)
  %120 = ptrtoint %nyx_string* %119 to i64
  call void @nyx_array_push({ i64, i8* }* %113, i64 %120)
  %121 = getelementptr [4 x i8], [4 x i8]* @.str363, i32 0, i32 0
  %122 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str363.c, i8* %121)
  %123 = ptrtoint %nyx_string* %122 to i64
  call void @nyx_array_push({ i64, i8* }* %113, i64 %123)
  %124 = call { i64, i8* }* @make_astnode(%nyx_string* %112, { i64, i8* }* %113)
  ret { i64, i8* }* %124
else13:
  br label %merge14
merge14:
  %125 = getelementptr [16 x i8], [16 x i8]* @.str364, i32 0, i32 0
  %126 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str364.c, i8* %125)
  %127 = call { i64, i8* }* @nyx_array_new_ptr()
  %128 = load %nyx_string*, %nyx_string** %30
  %129 = ptrtoint %nyx_string* %128 to i64
  call void @nyx_array_push({ i64, i8* }* %127, i64 %129)
  %130 = getelementptr [4 x i8], [4 x i8]* @.str365, i32 0, i32 0
  %131 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str365.c, i8* %130)
  %132 = ptrtoint %nyx_string* %131 to i64
  call void @nyx_array_push({ i64, i8* }* %127, i64 %132)
  %133 = call { i64, i8* }* @make_astnode(%nyx_string* %126, { i64, i8* }* %127)
  ret { i64, i8* }* %133
else1:
  br label %merge2
merge2:
  %134 = getelementptr [7 x i8], [7 x i8]* @.str366, i32 0, i32 0
  %135 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str366.c, i8* %134)
  %136 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %135)
  br i1 %136, label %then18, label %else19
then18:
  %137 = call %Token @advance(%SharedEnv_parse* %env.param)
  %138 = alloca %Token
  store %Token %137, %Token* %138
  %139 = getelementptr [16 x i8], [16 x i8]* @.str367, i32 0, i32 0
  %140 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str367.c, i8* %139)
  %141 = call { i64, i8* }* @nyx_array_new_ptr()
  %142 = load %Token, %Token* %138
  %143 = call %nyx_string* @get_token_value(%Token %142)
  %144 = ptrtoint %nyx_string* %143 to i64
  call void @nyx_array_push({ i64, i8* }* %141, i64 %144)
  %145 = getelementptr [7 x i8], [7 x i8]* @.str368, i32 0, i32 0
  %146 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str368.c, i8* %145)
  %147 = ptrtoint %nyx_string* %146 to i64
  call void @nyx_array_push({ i64, i8* }* %141, i64 %147)
  %148 = call { i64, i8* }* @make_astnode(%nyx_string* %140, { i64, i8* }* %141)
  ret { i64, i8* }* %148
else19:
  br label %merge20
merge20:
  %149 = getelementptr [5 x i8], [5 x i8]* @.str369, i32 0, i32 0
  %150 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str369.c, i8* %149)
  %151 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %150)
  br i1 %151, label %then21, label %else22
then21:
  %152 = call %Token @advance(%SharedEnv_parse* %env.param)
  %153 = getelementptr [16 x i8], [16 x i8]* @.str370, i32 0, i32 0
  %154 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str370.c, i8* %153)
  %155 = call { i64, i8* }* @nyx_array_new_ptr()
  %156 = getelementptr [5 x i8], [5 x i8]* @.str371, i32 0, i32 0
  %157 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str371.c, i8* %156)
  %158 = ptrtoint %nyx_string* %157 to i64
  call void @nyx_array_push({ i64, i8* }* %155, i64 %158)
  %159 = getelementptr [5 x i8], [5 x i8]* @.str372, i32 0, i32 0
  %160 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str372.c, i8* %159)
  %161 = ptrtoint %nyx_string* %160 to i64
  call void @nyx_array_push({ i64, i8* }* %155, i64 %161)
  %162 = call { i64, i8* }* @make_astnode(%nyx_string* %154, { i64, i8* }* %155)
  ret { i64, i8* }* %162
else22:
  br label %merge23
merge23:
  %163 = getelementptr [6 x i8], [6 x i8]* @.str373, i32 0, i32 0
  %164 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str373.c, i8* %163)
  %165 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %164)
  br i1 %165, label %then24, label %else25
then24:
  %166 = call %Token @advance(%SharedEnv_parse* %env.param)
  %167 = getelementptr [16 x i8], [16 x i8]* @.str374, i32 0, i32 0
  %168 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str374.c, i8* %167)
  %169 = call { i64, i8* }* @nyx_array_new_ptr()
  %170 = getelementptr [6 x i8], [6 x i8]* @.str375, i32 0, i32 0
  %171 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str375.c, i8* %170)
  %172 = ptrtoint %nyx_string* %171 to i64
  call void @nyx_array_push({ i64, i8* }* %169, i64 %172)
  %173 = getelementptr [5 x i8], [5 x i8]* @.str376, i32 0, i32 0
  %174 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str376.c, i8* %173)
  %175 = ptrtoint %nyx_string* %174 to i64
  call void @nyx_array_push({ i64, i8* }* %169, i64 %175)
  %176 = call { i64, i8* }* @make_astnode(%nyx_string* %168, { i64, i8* }* %169)
  ret { i64, i8* }* %176
else25:
  br label %merge26
merge26:
  %177 = getelementptr [6 x i8], [6 x i8]* @.str377, i32 0, i32 0
  %178 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str377.c, i8* %177)
  %179 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %178)
  br i1 %179, label %then27, label %else28
then27:
  %180 = call %Token @advance(%SharedEnv_parse* %env.param)
  %181 = getelementptr [7 x i8], [7 x i8]* @.str378, i32 0, i32 0
  %182 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str378.c, i8* %181)
  %183 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %182)
  br i1 %183, label %then30, label %else31
then30:
  %184 = call %Token @advance(%SharedEnv_parse* %env.param)
  %185 = alloca %Token
  store %Token %184, %Token* %185
  %186 = load %Token, %Token* %185
  %187 = call %nyx_string* @get_token_value(%Token %186)
  %188 = alloca %nyx_string*
  store %nyx_string* %187, %nyx_string** %188
  %189 = load %nyx_string*, %nyx_string** %188
  %190 = getelementptr [2 x i8], [2 x i8]* @.str379, i32 0, i32 0
  %191 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str379.c, i8* %190)
  %192 = call i64 @nyx_string_index_of(%nyx_string* %189, %nyx_string* %191)
  %193 = icmp sge i64 %192, 0
  br i1 %193, label %then33, label %else34
then33:
  %194 = getelementptr [16 x i8], [16 x i8]* @.str380, i32 0, i32 0
  %195 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str380.c, i8* %194)
  %196 = call { i64, i8* }* @nyx_array_new_ptr()
  %197 = getelementptr [2 x i8], [2 x i8]* @.str381, i32 0, i32 0
  %198 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str381.c, i8* %197)
  %199 = load %nyx_string*, %nyx_string** %188
  %200 = call %nyx_string* @nyx_string_concat(%nyx_string* %198, %nyx_string* %199)
  %201 = ptrtoint %nyx_string* %200 to i64
  call void @nyx_array_push({ i64, i8* }* %196, i64 %201)
  %202 = getelementptr [6 x i8], [6 x i8]* @.str382, i32 0, i32 0
  %203 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str382.c, i8* %202)
  %204 = ptrtoint %nyx_string* %203 to i64
  call void @nyx_array_push({ i64, i8* }* %196, i64 %204)
  %205 = call { i64, i8* }* @make_astnode(%nyx_string* %195, { i64, i8* }* %196)
  ret { i64, i8* }* %205
else34:
  br label %merge35
merge35:
  %206 = getelementptr [16 x i8], [16 x i8]* @.str383, i32 0, i32 0
  %207 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str383.c, i8* %206)
  %208 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %207)
  br i1 %208, label %then36, label %else37
then36:
  %209 = call %Token @advance(%SharedEnv_parse* %env.param)
  %210 = getelementptr [1 x i8], [1 x i8]* @.str384, i32 0, i32 0
  %211 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str384.c, i8* %210)
  %212 = alloca %nyx_string*
  store %nyx_string* %211, %nyx_string** %212
  %213 = getelementptr [6 x i8], [6 x i8]* @.str385, i32 0, i32 0
  %214 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str385.c, i8* %213)
  %215 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %214)
  br i1 %215, label %then39, label %else40
then39:
  %216 = call %Token @advance(%SharedEnv_parse* %env.param)
  %217 = getelementptr [7 x i8], [7 x i8]* @.str386, i32 0, i32 0
  %218 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str386.c, i8* %217)
  %219 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %218)
  %220 = alloca %Token
  store %Token %219, %Token* %220
  %221 = getelementptr [2 x i8], [2 x i8]* @.str387, i32 0, i32 0
  %222 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str387.c, i8* %221)
  %223 = load %Token, %Token* %220
  %224 = call %nyx_string* @get_token_value(%Token %223)
  %225 = call %nyx_string* @nyx_string_concat(%nyx_string* %222, %nyx_string* %224)
  store %nyx_string* %225, %nyx_string** %212
  br label %merge41
else40:
  %226 = getelementptr [7 x i8], [7 x i8]* @.str388, i32 0, i32 0
  %227 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str388.c, i8* %226)
  %228 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %227)
  %229 = alloca %Token
  store %Token %228, %Token* %229
  %230 = load %Token, %Token* %229
  %231 = call %nyx_string* @get_token_value(%Token %230)
  store %nyx_string* %231, %nyx_string** %212
  br label %merge41
merge41:
  %232 = getelementptr [14 x i8], [14 x i8]* @.str389, i32 0, i32 0
  %233 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str389.c, i8* %232)
  %234 = call { i64, i8* }* @nyx_array_new_ptr()
  %235 = getelementptr [2 x i8], [2 x i8]* @.str390, i32 0, i32 0
  %236 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str390.c, i8* %235)
  %237 = load %nyx_string*, %nyx_string** %188
  %238 = call %nyx_string* @nyx_string_concat(%nyx_string* %236, %nyx_string* %237)
  %239 = ptrtoint %nyx_string* %238 to i64
  call void @nyx_array_push({ i64, i8* }* %234, i64 %239)
  %240 = load %nyx_string*, %nyx_string** %212
  %241 = ptrtoint %nyx_string* %240 to i64
  call void @nyx_array_push({ i64, i8* }* %234, i64 %241)
  %242 = getelementptr [5 x i8], [5 x i8]* @.str391, i32 0, i32 0
  %243 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str391.c, i8* %242)
  %244 = ptrtoint %nyx_string* %243 to i64
  call void @nyx_array_push({ i64, i8* }* %234, i64 %244)
  %245 = getelementptr [4 x i8], [4 x i8]* @.str392, i32 0, i32 0
  %246 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str392.c, i8* %245)
  %247 = ptrtoint %nyx_string* %246 to i64
  call void @nyx_array_push({ i64, i8* }* %234, i64 %247)
  %248 = call { i64, i8* }* @make_astnode(%nyx_string* %233, { i64, i8* }* %234)
  ret { i64, i8* }* %248
else37:
  br label %merge38
merge38:
  %249 = getelementptr [6 x i8], [6 x i8]* @.str393, i32 0, i32 0
  %250 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str393.c, i8* %249)
  %251 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %250)
  br i1 %251, label %then42, label %else43
then42:
  %252 = call %Token @advance(%SharedEnv_parse* %env.param)
  %253 = getelementptr [1 x i8], [1 x i8]* @.str394, i32 0, i32 0
  %254 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str394.c, i8* %253)
  %255 = alloca %nyx_string*
  store %nyx_string* %254, %nyx_string** %255
  %256 = getelementptr [6 x i8], [6 x i8]* @.str395, i32 0, i32 0
  %257 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str395.c, i8* %256)
  %258 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %257)
  br i1 %258, label %then45, label %else46
then45:
  %259 = call %Token @advance(%SharedEnv_parse* %env.param)
  %260 = getelementptr [7 x i8], [7 x i8]* @.str396, i32 0, i32 0
  %261 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str396.c, i8* %260)
  %262 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %261)
  %263 = alloca %Token
  store %Token %262, %Token* %263
  %264 = getelementptr [2 x i8], [2 x i8]* @.str397, i32 0, i32 0
  %265 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str397.c, i8* %264)
  %266 = load %Token, %Token* %263
  %267 = call %nyx_string* @get_token_value(%Token %266)
  %268 = call %nyx_string* @nyx_string_concat(%nyx_string* %265, %nyx_string* %267)
  store %nyx_string* %268, %nyx_string** %255
  br label %merge47
else46:
  %269 = getelementptr [7 x i8], [7 x i8]* @.str398, i32 0, i32 0
  %270 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str398.c, i8* %269)
  %271 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %270)
  %272 = alloca %Token
  store %Token %271, %Token* %272
  %273 = load %Token, %Token* %272
  %274 = call %nyx_string* @get_token_value(%Token %273)
  store %nyx_string* %274, %nyx_string** %255
  br label %merge47
merge47:
  %275 = getelementptr [14 x i8], [14 x i8]* @.str399, i32 0, i32 0
  %276 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str399.c, i8* %275)
  %277 = call { i64, i8* }* @nyx_array_new_ptr()
  %278 = getelementptr [2 x i8], [2 x i8]* @.str400, i32 0, i32 0
  %279 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str400.c, i8* %278)
  %280 = load %nyx_string*, %nyx_string** %188
  %281 = call %nyx_string* @nyx_string_concat(%nyx_string* %279, %nyx_string* %280)
  %282 = ptrtoint %nyx_string* %281 to i64
  call void @nyx_array_push({ i64, i8* }* %277, i64 %282)
  %283 = load %nyx_string*, %nyx_string** %255
  %284 = ptrtoint %nyx_string* %283 to i64
  call void @nyx_array_push({ i64, i8* }* %277, i64 %284)
  %285 = getelementptr [6 x i8], [6 x i8]* @.str401, i32 0, i32 0
  %286 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str401.c, i8* %285)
  %287 = ptrtoint %nyx_string* %286 to i64
  call void @nyx_array_push({ i64, i8* }* %277, i64 %287)
  %288 = getelementptr [4 x i8], [4 x i8]* @.str402, i32 0, i32 0
  %289 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str402.c, i8* %288)
  %290 = ptrtoint %nyx_string* %289 to i64
  call void @nyx_array_push({ i64, i8* }* %277, i64 %290)
  %291 = call { i64, i8* }* @make_astnode(%nyx_string* %276, { i64, i8* }* %277)
  ret { i64, i8* }* %291
else43:
  br label %merge44
merge44:
  %292 = getelementptr [16 x i8], [16 x i8]* @.str403, i32 0, i32 0
  %293 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str403.c, i8* %292)
  %294 = call { i64, i8* }* @nyx_array_new_ptr()
  %295 = getelementptr [2 x i8], [2 x i8]* @.str404, i32 0, i32 0
  %296 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str404.c, i8* %295)
  %297 = load %nyx_string*, %nyx_string** %188
  %298 = call %nyx_string* @nyx_string_concat(%nyx_string* %296, %nyx_string* %297)
  %299 = ptrtoint %nyx_string* %298 to i64
  call void @nyx_array_push({ i64, i8* }* %294, i64 %299)
  %300 = getelementptr [4 x i8], [4 x i8]* @.str405, i32 0, i32 0
  %301 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str405.c, i8* %300)
  %302 = ptrtoint %nyx_string* %301 to i64
  call void @nyx_array_push({ i64, i8* }* %294, i64 %302)
  %303 = call { i64, i8* }* @make_astnode(%nyx_string* %293, { i64, i8* }* %294)
  ret { i64, i8* }* %303
else31:
  br label %merge32
merge32:
  br label %merge29
else28:
  br label %merge29
merge29:
  %304 = getelementptr [11 x i8], [11 x i8]* @.str406, i32 0, i32 0
  %305 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str406.c, i8* %304)
  %306 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %305)
  br i1 %306, label %then48, label %else49
then48:
  %307 = call %Token @peek(%SharedEnv_parse* %env.param)
  %308 = alloca %Token
  store %Token %307, %Token* %308
  %309 = load %Token, %Token* %308
  %310 = call %nyx_string* @get_token_value(%Token %309)
  %311 = alloca %nyx_string*
  store %nyx_string* %310, %nyx_string** %311
  %312 = load %nyx_string*, %nyx_string** %311
  %313 = getelementptr [2 x i8], [2 x i8]* @.str407, i32 0, i32 0
  %314 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str407.c, i8* %313)
  %315 = call i1 @nyx_string_equals(%nyx_string* %312, %nyx_string* %314)
  br i1 %315, label %then51, label %else52
then51:
  %316 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge53
else52:
  %317 = call %Token @advance(%SharedEnv_parse* %env.param)
  %318 = load %nyx_string*, %nyx_string** %311
  %319 = alloca %nyx_string*
  store %nyx_string* %318, %nyx_string** %319
  %320 = getelementptr [4 x i8], [4 x i8]* @.str408, i32 0, i32 0
  %321 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str408.c, i8* %320)
  %322 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %321)
  br i1 %322, label %then54, label %else55
then54:
  %323 = call %Token @advance(%SharedEnv_parse* %env.param)
  %324 = getelementptr [11 x i8], [11 x i8]* @.str409, i32 0, i32 0
  %325 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str409.c, i8* %324)
  %326 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %325)
  %327 = alloca %Token
  store %Token %326, %Token* %327
  %328 = load %Token, %Token* %327
  %329 = call %nyx_string* @get_token_value(%Token %328)
  %330 = alloca %nyx_string*
  store %nyx_string* %329, %nyx_string** %330
  %331 = call { i64, i8* }* @nyx_array_new_ptr()
  %332 = alloca { i64, i8* }*
  store { i64, i8* }* %331, { i64, i8* }** %332
  %333 = alloca i1
  store i1 0, i1* %333
  %334 = call { i64, i8* }* @nyx_array_new_ptr()
  %335 = alloca { i64, i8* }*
  store { i64, i8* }* %334, { i64, i8* }** %335
  %336 = getelementptr [11 x i8], [11 x i8]* @.str410, i32 0, i32 0
  %337 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str410.c, i8* %336)
  %338 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %337)
  br i1 %338, label %then57, label %else58
then57:
  %339 = call %Token @advance(%SharedEnv_parse* %env.param)
  %340 = alloca i1
  store i1 0, i1* %340
  br label %while_cond60
while_cond60:
  %341 = load i1, i1* %340
  %342 = xor i1 %341, true
  br i1 %342, label %while_body61, label %while_end62
while_body61:
  %343 = getelementptr [12 x i8], [12 x i8]* @.str411, i32 0, i32 0
  %344 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str411.c, i8* %343)
  %345 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %344)
  br i1 %345, label %then63, label %else64
then63:
  %346 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %340
  br label %merge65
else64:
  %347 = load { i64, i8* }*, { i64, i8* }** %335
  %348 = call i64 @nyx_array_length({ i64, i8* }* %347)
  %349 = icmp sgt i64 %348, 0
  br i1 %349, label %then66, label %else67
then66:
  %350 = getelementptr [6 x i8], [6 x i8]* @.str412, i32 0, i32 0
  %351 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str412.c, i8* %350)
  %352 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %351)
  br label %merge68
else67:
  br label %merge68
merge68:
  %353 = call { i64, i8* }* @parse_single_pattern(%SharedEnv_parse* %env.param)
  %354 = alloca { i64, i8* }*
  store { i64, i8* }* %353, { i64, i8* }** %354
  %355 = load { i64, i8* }*, { i64, i8* }** %335
  %356 = load { i64, i8* }*, { i64, i8* }** %354
  %357 = ptrtoint { i64, i8* }* %356 to i64
  call void @nyx_array_push({ i64, i8* }* %355, i64 %357)
  %358 = alloca i1
  store i1 false, i1* %358
  %359 = getelementptr [19 x i8], [19 x i8]* @.str413, i32 0, i32 0
  %360 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str413.c, i8* %359)
  %361 = inttoptr i64 0 to %nyx_string*
  %362 = call i1 @nyx_string_equals(%nyx_string* %361, %nyx_string* %360)
  %363 = xor i1 %362, true
  br i1 %363, label %sc_and_rhs69, label %sc_and_end70
sc_and_rhs69:
  %364 = getelementptr [9 x i8], [9 x i8]* @.str414, i32 0, i32 0
  %365 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str414.c, i8* %364)
  %366 = inttoptr i64 0 to %nyx_string*
  %367 = call i1 @nyx_string_equals(%nyx_string* %366, %nyx_string* %365)
  %368 = xor i1 %367, true
  store i1 %368, i1* %358
  br label %sc_and_end70
sc_and_end70:
  %369 = load i1, i1* %358
  br i1 %369, label %then71, label %else72
then71:
  store i1 1, i1* %333
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
  %370 = load i1, i1* %333
  br i1 %370, label %then74, label %else75
then74:
  %371 = getelementptr [21 x i8], [21 x i8]* @.str415, i32 0, i32 0
  %372 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str415.c, i8* %371)
  %373 = call { i64, i8* }* @nyx_array_new_ptr()
  %374 = load %nyx_string*, %nyx_string** %319
  %375 = ptrtoint %nyx_string* %374 to i64
  call void @nyx_array_push({ i64, i8* }* %373, i64 %375)
  %376 = load %nyx_string*, %nyx_string** %330
  %377 = ptrtoint %nyx_string* %376 to i64
  call void @nyx_array_push({ i64, i8* }* %373, i64 %377)
  %378 = load { i64, i8* }*, { i64, i8* }** %335
  %379 = bitcast { i64, i8* }* %378 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %373, i8* %379)
  %380 = call { i64, i8* }* @make_astnode(%nyx_string* %372, { i64, i8* }* %373)
  store { i64, i8* }* %380, { i64, i8* }** %22
  br label %merge76
else75:
  %381 = alloca i64
  store i64 0, i64* %381
  br label %while_cond77
while_cond77:
  %382 = load i64, i64* %381
  %383 = load { i64, i8* }*, { i64, i8* }** %335
  %384 = call i64 @nyx_array_length({ i64, i8* }* %383)
  %385 = icmp slt i64 %382, %384
  br i1 %385, label %while_body78, label %while_end79
while_body78:
  %386 = load { i64, i8* }*, { i64, i8* }** %335
  %387 = load i64, i64* %381
  %388 = call i64 @nyx_array_get({ i64, i8* }* %386, i64 %387)
  %389 = inttoptr i64 %388 to { i64, i8* }*
  %390 = call i64 @nyx_array_get({ i64, i8* }* %389, i64 0)
  %391 = call i64 @nyx_array_get({ i64, i8* }* %389, i64 1)
  %392 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %389, i64 2)
  %393 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %389, i64 3)
  %394 = inttoptr i64 %390 to %nyx_string*
  %395 = inttoptr i64 %391 to { i64, i8* }*
  %396 = alloca %ASTNode
  %397 = getelementptr inbounds %ASTNode, %ASTNode* %396, i32 0, i32 0
  store %nyx_string* %394, %nyx_string** %397
  %398 = getelementptr inbounds %ASTNode, %ASTNode* %396, i32 0, i32 1
  store { i64, i8* }* %395, { i64, i8* }** %398
  %399 = getelementptr inbounds %ASTNode, %ASTNode* %396, i32 0, i32 2
  store i64 %392, i64* %399
  %400 = getelementptr inbounds %ASTNode, %ASTNode* %396, i32 0, i32 3
  store i64 %393, i64* %400
  %401 = load %ASTNode, %ASTNode* %396
  %402 = alloca %ASTNode
  store %ASTNode %401, %ASTNode* %402
  %403 = getelementptr %ASTNode, %ASTNode* %402, i32 0, i32 0
  %404 = load %nyx_string*, %nyx_string** %403
  %405 = getelementptr [9 x i8], [9 x i8]* @.str416, i32 0, i32 0
  %406 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str416.c, i8* %405)
  %407 = call i1 @nyx_string_equals(%nyx_string* %404, %nyx_string* %406)
  br i1 %407, label %then80, label %else81
then80:
  %408 = load { i64, i8* }*, { i64, i8* }** %332
  %409 = getelementptr [2 x i8], [2 x i8]* @.str417, i32 0, i32 0
  %410 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str417.c, i8* %409)
  %411 = ptrtoint %nyx_string* %410 to i64
  call void @nyx_array_push({ i64, i8* }* %408, i64 %411)
  br label %merge82
else81:
  %412 = getelementptr %ASTNode, %ASTNode* %402, i32 0, i32 1
  %413 = load { i64, i8* }*, { i64, i8* }** %412
  %414 = call i64 @nyx_array_get({ i64, i8* }* %413, i64 0)
  %415 = inttoptr i64 %414 to %nyx_string*
  %416 = alloca %nyx_string*
  store %nyx_string* %415, %nyx_string** %416
  %417 = load { i64, i8* }*, { i64, i8* }** %332
  %418 = load %nyx_string*, %nyx_string** %416
  %419 = ptrtoint %nyx_string* %418 to i64
  call void @nyx_array_push({ i64, i8* }* %417, i64 %419)
  br label %merge82
merge82:
  %420 = load i64, i64* %381
  %421 = add i64 %420, 1
  store i64 %421, i64* %381
  br label %while_cond77
while_end79:
  %422 = getelementptr [14 x i8], [14 x i8]* @.str418, i32 0, i32 0
  %423 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str418.c, i8* %422)
  %424 = call { i64, i8* }* @nyx_array_new_ptr()
  %425 = load %nyx_string*, %nyx_string** %319
  %426 = ptrtoint %nyx_string* %425 to i64
  call void @nyx_array_push({ i64, i8* }* %424, i64 %426)
  %427 = load %nyx_string*, %nyx_string** %330
  %428 = ptrtoint %nyx_string* %427 to i64
  call void @nyx_array_push({ i64, i8* }* %424, i64 %428)
  %429 = load { i64, i8* }*, { i64, i8* }** %332
  %430 = bitcast { i64, i8* }* %429 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %424, i8* %430)
  %431 = call { i64, i8* }* @make_astnode(%nyx_string* %423, { i64, i8* }* %424)
  store { i64, i8* }* %431, { i64, i8* }** %22
  br label %merge76
merge76:
  br label %merge56
else55:
  %432 = getelementptr [11 x i8], [11 x i8]* @.str419, i32 0, i32 0
  %433 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str419.c, i8* %432)
  %434 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %433)
  br i1 %434, label %then83, label %else84
then83:
  %435 = call %Token @advance(%SharedEnv_parse* %env.param)
  %436 = call { i64, i8* }* @nyx_array_new_ptr()
  %437 = alloca { i64, i8* }*
  store { i64, i8* }* %436, { i64, i8* }** %437
  br label %while_cond86
while_cond86:
  %438 = getelementptr [12 x i8], [12 x i8]* @.str420, i32 0, i32 0
  %439 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str420.c, i8* %438)
  %440 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %439)
  %441 = xor i1 %440, true
  br i1 %441, label %while_body87, label %while_end88
while_body87:
  %442 = load { i64, i8* }*, { i64, i8* }** %437
  %443 = call i64 @nyx_array_length({ i64, i8* }* %442)
  %444 = icmp sgt i64 %443, 0
  br i1 %444, label %then89, label %else90
then89:
  %445 = getelementptr [6 x i8], [6 x i8]* @.str421, i32 0, i32 0
  %446 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str421.c, i8* %445)
  %447 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %446)
  br label %merge91
else90:
  br label %merge91
merge91:
  %448 = getelementptr [11 x i8], [11 x i8]* @.str422, i32 0, i32 0
  %449 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str422.c, i8* %448)
  %450 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %449)
  %451 = alloca %Token
  store %Token %450, %Token* %451
  %452 = load %Token, %Token* %451
  %453 = call %nyx_string* @get_token_value(%Token %452)
  %454 = alloca %nyx_string*
  store %nyx_string* %453, %nyx_string** %454
  %455 = load %nyx_string*, %nyx_string** %454
  %456 = alloca %nyx_string*
  store %nyx_string* %455, %nyx_string** %456
  %457 = getelementptr [6 x i8], [6 x i8]* @.str423, i32 0, i32 0
  %458 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str423.c, i8* %457)
  %459 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %458)
  br i1 %459, label %then92, label %else93
then92:
  %460 = call %Token @advance(%SharedEnv_parse* %env.param)
  %461 = getelementptr [11 x i8], [11 x i8]* @.str424, i32 0, i32 0
  %462 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str424.c, i8* %461)
  %463 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %462)
  %464 = call %nyx_string* @get_token_value(%Token %463)
  store %nyx_string* %464, %nyx_string** %456
  br label %merge94
else93:
  br label %merge94
merge94:
  %465 = load { i64, i8* }*, { i64, i8* }** %437
  %466 = call { i64, i8* }* @nyx_array_new_ptr()
  %467 = load %nyx_string*, %nyx_string** %454
  %468 = ptrtoint %nyx_string* %467 to i64
  call void @nyx_array_push({ i64, i8* }* %466, i64 %468)
  %469 = load %nyx_string*, %nyx_string** %456
  %470 = ptrtoint %nyx_string* %469 to i64
  call void @nyx_array_push({ i64, i8* }* %466, i64 %470)
  %471 = ptrtoint { i64, i8* }* %466 to i64
  call void @nyx_array_push({ i64, i8* }* %465, i64 %471)
  br label %while_cond86
while_end88:
  %472 = call %Token @advance(%SharedEnv_parse* %env.param)
  %473 = getelementptr [15 x i8], [15 x i8]* @.str425, i32 0, i32 0
  %474 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str425.c, i8* %473)
  %475 = call { i64, i8* }* @nyx_array_new_ptr()
  %476 = load %nyx_string*, %nyx_string** %319
  %477 = ptrtoint %nyx_string* %476 to i64
  call void @nyx_array_push({ i64, i8* }* %475, i64 %477)
  %478 = load { i64, i8* }*, { i64, i8* }** %437
  %479 = bitcast { i64, i8* }* %478 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %475, i8* %479)
  %480 = call { i64, i8* }* @make_astnode(%nyx_string* %474, { i64, i8* }* %475)
  store { i64, i8* }* %480, { i64, i8* }** %22
  br label %merge85
else84:
  %481 = getelementptr [19 x i8], [19 x i8]* @.str426, i32 0, i32 0
  %482 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str426.c, i8* %481)
  %483 = call { i64, i8* }* @nyx_array_new_ptr()
  %484 = load %nyx_string*, %nyx_string** %319
  %485 = ptrtoint %nyx_string* %484 to i64
  call void @nyx_array_push({ i64, i8* }* %483, i64 %485)
  %486 = call { i64, i8* }* @make_astnode(%nyx_string* %482, { i64, i8* }* %483)
  store { i64, i8* }* %486, { i64, i8* }** %22
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
  %487 = load { i64, i8* }*, { i64, i8* }** %22
  ret { i64, i8* }* %487
}

define internal { i64, i8* }* @parse_match_arm(%SharedEnv_parse* %env.param) {
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
  %18 = call { i64, i8* }* @parse_single_pattern(%SharedEnv_parse* %env.param)
  %19 = alloca { i64, i8* }*
  store { i64, i8* }* %18, { i64, i8* }** %19
  %20 = getelementptr [5 x i8], [5 x i8]* @.str427, i32 0, i32 0
  %21 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str427.c, i8* %20)
  %22 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %21)
  br i1 %22, label %then0, label %else1
then0:
  %23 = call { i64, i8* }* @nyx_array_new_ptr()
  %24 = load { i64, i8* }*, { i64, i8* }** %19
  %25 = bitcast { i64, i8* }* %24 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %23, i8* %25)
  %26 = alloca { i64, i8* }*
  store { i64, i8* }* %23, { i64, i8* }** %26
  br label %while_cond3
while_cond3:
  %27 = getelementptr [5 x i8], [5 x i8]* @.str428, i32 0, i32 0
  %28 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str428.c, i8* %27)
  %29 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %28)
  br i1 %29, label %while_body4, label %while_end5
while_body4:
  %30 = call %Token @advance(%SharedEnv_parse* %env.param)
  %31 = load { i64, i8* }*, { i64, i8* }** %26
  %32 = call { i64, i8* }* @parse_single_pattern(%SharedEnv_parse* %env.param)
  %33 = ptrtoint { i64, i8* }* %32 to i64
  call void @nyx_array_push({ i64, i8* }* %31, i64 %33)
  br label %while_cond3
while_end5:
  %34 = getelementptr [11 x i8], [11 x i8]* @.str429, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str429.c, i8* %34)
  %36 = load { i64, i8* }*, { i64, i8* }** %26
  %37 = call { i64, i8* }* @make_astnode(%nyx_string* %35, { i64, i8* }* %36)
  store { i64, i8* }* %37, { i64, i8* }** %19
  br label %merge2
else1:
  br label %merge2
merge2:
  %38 = getelementptr [6 x i8], [6 x i8]* @.str430, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str430.c, i8* %38)
  %40 = call { i64, i8* }* @nyx_array_new_ptr()
  %41 = call { i64, i8* }* @make_astnode(%nyx_string* %39, { i64, i8* }* %40)
  %42 = alloca { i64, i8* }*
  store { i64, i8* }* %41, { i64, i8* }** %42
  %43 = getelementptr [3 x i8], [3 x i8]* @.str431, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str431.c, i8* %43)
  %45 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %44)
  br i1 %45, label %then6, label %else7
then6:
  %46 = call %Token @advance(%SharedEnv_parse* %env.param)
  %47 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %47, { i64, i8* }** %42
  br label %merge8
else7:
  br label %merge8
merge8:
  %48 = getelementptr [12 x i8], [12 x i8]* @.str432, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str432.c, i8* %48)
  %50 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %49)
  %51 = getelementptr [6 x i8], [6 x i8]* @.str433, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str433.c, i8* %51)
  %53 = call { i64, i8* }* @nyx_array_new_ptr()
  %54 = call { i64, i8* }* @make_astnode(%nyx_string* %52, { i64, i8* }* %53)
  %55 = alloca { i64, i8* }*
  store { i64, i8* }* %54, { i64, i8* }** %55
  %56 = getelementptr [11 x i8], [11 x i8]* @.str434, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str434.c, i8* %56)
  %58 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %57)
  br i1 %58, label %then9, label %else10
then9:
  %59 = call { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %59, { i64, i8* }** %55
  br label %merge11
else10:
  %60 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %60, { i64, i8* }** %55
  br label %merge11
merge11:
  %61 = getelementptr [10 x i8], [10 x i8]* @.str435, i32 0, i32 0
  %62 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str435.c, i8* %61)
  %63 = call { i64, i8* }* @nyx_array_new_ptr()
  %64 = load { i64, i8* }*, { i64, i8* }** %19
  %65 = bitcast { i64, i8* }* %64 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %63, i8* %65)
  %66 = load { i64, i8* }*, { i64, i8* }** %55
  %67 = bitcast { i64, i8* }* %66 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %63, i8* %67)
  %68 = load { i64, i8* }*, { i64, i8* }** %42
  %69 = bitcast { i64, i8* }* %68 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %63, i8* %69)
  %70 = call { i64, i8* }* @make_astnode(%nyx_string* %62, { i64, i8* }* %63)
  ret { i64, i8* }* %70
}

define internal { i64, i8* }* @parse_match(%SharedEnv_parse* %env.param) {
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
  %18 = getelementptr [6 x i8], [6 x i8]* @.str436, i32 0, i32 0
  %19 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str436.c, i8* %18)
  %20 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %19)
  %21 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %22 = alloca { i64, i8* }*
  store { i64, i8* }* %21, { i64, i8* }** %22
  %23 = getelementptr [11 x i8], [11 x i8]* @.str437, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str437.c, i8* %23)
  %25 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %24)
  %26 = call { i64, i8* }* @nyx_array_new_ptr()
  %27 = alloca { i64, i8* }*
  store { i64, i8* }* %26, { i64, i8* }** %27
  %28 = alloca i1
  store i1 0, i1* %28
  br label %while_cond0
while_cond0:
  %29 = load i1, i1* %28
  %30 = xor i1 %29, true
  br i1 %30, label %while_body1, label %while_end2
while_body1:
  %31 = getelementptr [12 x i8], [12 x i8]* @.str438, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str438.c, i8* %31)
  %33 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %32)
  br i1 %33, label %then3, label %else4
then3:
  %34 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %28
  br label %merge5
else4:
  %35 = load { i64, i8* }*, { i64, i8* }** %27
  %36 = call i64 @nyx_array_length({ i64, i8* }* %35)
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %then6, label %else7
then6:
  %38 = getelementptr [6 x i8], [6 x i8]* @.str439, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str439.c, i8* %38)
  %40 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %39)
  br i1 %40, label %then9, label %else10
then9:
  %41 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge11
else10:
  br label %merge11
merge11:
  br label %merge8
else7:
  br label %merge8
merge8:
  %42 = getelementptr [12 x i8], [12 x i8]* @.str440, i32 0, i32 0
  %43 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str440.c, i8* %42)
  %44 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %43)
  br i1 %44, label %then12, label %else13
then12:
  %45 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %28
  br label %merge14
else13:
  %46 = load { i64, i8* }*, { i64, i8* }** %27
  %47 = call { i64, i8* }* @parse_match_arm(%SharedEnv_parse* %env.param)
  %48 = ptrtoint { i64, i8* }* %47 to i64
  call void @nyx_array_push({ i64, i8* }* %46, i64 %48)
  br label %merge14
merge14:
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %49 = getelementptr [6 x i8], [6 x i8]* @.str441, i32 0, i32 0
  %50 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str441.c, i8* %49)
  %51 = call { i64, i8* }* @nyx_array_new_ptr()
  %52 = load { i64, i8* }*, { i64, i8* }** %22
  %53 = bitcast { i64, i8* }* %52 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %51, i8* %53)
  %54 = load { i64, i8* }*, { i64, i8* }** %27
  %55 = bitcast { i64, i8* }* %54 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %51, i8* %55)
  %56 = call { i64, i8* }* @make_astnode(%nyx_string* %50, { i64, i8* }* %51)
  ret { i64, i8* }* %56
}

define internal { i64, i8* }* @parse_struct_construction(%SharedEnv_parse* %env.param, %nyx_string* %struct_name.param) {
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
  %18 = alloca %nyx_string*
  store %nyx_string* %struct_name.param, %nyx_string** %18
  %19 = getelementptr [11 x i8], [11 x i8]* @.str442, i32 0, i32 0
  %20 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str442.c, i8* %19)
  %21 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %20)
  %22 = call { i64, i8* }* @nyx_array_new_ptr()
  %23 = alloca { i64, i8* }*
  store { i64, i8* }* %22, { i64, i8* }** %23
  %24 = alloca i1
  store i1 0, i1* %24
  br label %while_cond0
while_cond0:
  %25 = load i1, i1* %24
  %26 = xor i1 %25, true
  br i1 %26, label %while_body1, label %while_end2
while_body1:
  %27 = getelementptr [12 x i8], [12 x i8]* @.str443, i32 0, i32 0
  %28 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str443.c, i8* %27)
  %29 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %28)
  br i1 %29, label %then3, label %else4
then3:
  %30 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %24
  br label %merge5
else4:
  %31 = load { i64, i8* }*, { i64, i8* }** %23
  %32 = call i64 @nyx_array_length({ i64, i8* }* %31)
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %then6, label %else7
then6:
  %34 = getelementptr [6 x i8], [6 x i8]* @.str444, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str444.c, i8* %34)
  %36 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %35)
  br i1 %36, label %then9, label %else10
then9:
  %37 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge11
else10:
  br label %merge11
merge11:
  br label %merge8
else7:
  br label %merge8
merge8:
  %38 = getelementptr [11 x i8], [11 x i8]* @.str445, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str445.c, i8* %38)
  %40 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %39)
  %41 = alloca %Token
  store %Token %40, %Token* %41
  %42 = getelementptr [6 x i8], [6 x i8]* @.str446, i32 0, i32 0
  %43 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str446.c, i8* %42)
  %44 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %43)
  %45 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %46 = alloca { i64, i8* }*
  store { i64, i8* }* %45, { i64, i8* }** %46
  %47 = load { i64, i8* }*, { i64, i8* }** %23
  %48 = call { i64, i8* }* @nyx_array_new_ptr()
  %49 = load %Token, %Token* %41
  %50 = call %nyx_string* @get_token_value(%Token %49)
  %51 = ptrtoint %nyx_string* %50 to i64
  call void @nyx_array_push({ i64, i8* }* %48, i64 %51)
  %52 = load { i64, i8* }*, { i64, i8* }** %46
  %53 = bitcast { i64, i8* }* %52 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %48, i8* %53)
  %54 = ptrtoint { i64, i8* }* %48 to i64
  call void @nyx_array_push({ i64, i8* }* %47, i64 %54)
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %55 = getelementptr [12 x i8], [12 x i8]* @.str447, i32 0, i32 0
  %56 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str447.c, i8* %55)
  %57 = call { i64, i8* }* @nyx_array_new_ptr()
  %58 = load %nyx_string*, %nyx_string** %18
  %59 = ptrtoint %nyx_string* %58 to i64
  call void @nyx_array_push({ i64, i8* }* %57, i64 %59)
  %60 = load { i64, i8* }*, { i64, i8* }** %23
  %61 = bitcast { i64, i8* }* %60 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %57, i8* %61)
  %62 = call { i64, i8* }* @nyx_array_new_ptr()
  %63 = bitcast { i64, i8* }* %62 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %57, i8* %63)
  %64 = call { i64, i8* }* @make_astnode(%nyx_string* %56, { i64, i8* }* %57)
  ret { i64, i8* }* %64
}

define internal { i64, i8* }* @parse_statement(%SharedEnv_parse* %env.param) {
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
  %18 = alloca i1
  store i1 true, i1* %18
  %19 = getelementptr [4 x i8], [4 x i8]* @.str448, i32 0, i32 0
  %20 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str448.c, i8* %19)
  %21 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %20)
  br i1 %21, label %sc_or_end1, label %sc_or_rhs0
sc_or_rhs0:
  %22 = getelementptr [4 x i8], [4 x i8]* @.str449, i32 0, i32 0
  %23 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str449.c, i8* %22)
  %24 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %23)
  store i1 %24, i1* %18
  br label %sc_or_end1
sc_or_end1:
  %25 = load i1, i1* %18
  br i1 %25, label %then2, label %else3
then2:
  %26 = call { i64, i8* }* @parse_let(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %26
else3:
  br label %merge4
merge4:
  %27 = getelementptr [6 x i8], [6 x i8]* @.str450, i32 0, i32 0
  %28 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str450.c, i8* %27)
  %29 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %28)
  br i1 %29, label %then5, label %else6
then5:
  %30 = call { i64, i8* }* @parse_const(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %30
else6:
  br label %merge7
merge7:
  %31 = getelementptr [3 x i8], [3 x i8]* @.str451, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str451.c, i8* %31)
  %33 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %32)
  br i1 %33, label %then8, label %else9
then8:
  %34 = call { i64, i8* }* @parse_function(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %34
else9:
  br label %merge10
merge10:
  %35 = getelementptr [5 x i8], [5 x i8]* @.str452, i32 0, i32 0
  %36 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str452.c, i8* %35)
  %37 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %36)
  br i1 %37, label %then11, label %else12
then11:
  %38 = call %Token @advance(%SharedEnv_parse* %env.param)
  %39 = getelementptr [13 x i8], [13 x i8]* @.str453, i32 0, i32 0
  %40 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str453.c, i8* %39)
  %41 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %40)
  %42 = getelementptr [11 x i8], [11 x i8]* @.str454, i32 0, i32 0
  %43 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str454.c, i8* %42)
  %44 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %43)
  %45 = alloca %Token
  store %Token %44, %Token* %45
  %46 = load %Token, %Token* %45
  %47 = call %nyx_string* @get_token_value(%Token %46)
  %48 = alloca %nyx_string*
  store %nyx_string* %47, %nyx_string** %48
  %49 = load %nyx_string*, %nyx_string** %48
  %50 = alloca %nyx_string*
  store %nyx_string* %49, %nyx_string** %50
  %51 = getelementptr [11 x i8], [11 x i8]* @.str455, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str455.c, i8* %51)
  %53 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %52)
  br i1 %53, label %then14, label %else15
then14:
  %54 = call %Token @advance(%SharedEnv_parse* %env.param)
  %55 = getelementptr [1 x i8], [1 x i8]* @.str456, i32 0, i32 0
  %56 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str456.c, i8* %55)
  %57 = alloca %nyx_string*
  store %nyx_string* %56, %nyx_string** %57
  %58 = getelementptr [7 x i8], [7 x i8]* @.str457, i32 0, i32 0
  %59 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str457.c, i8* %58)
  %60 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %59)
  br i1 %60, label %then17, label %else18
then17:
  %61 = getelementptr [7 x i8], [7 x i8]* @.str458, i32 0, i32 0
  %62 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str458.c, i8* %61)
  %63 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %62)
  %64 = alloca %Token
  store %Token %63, %Token* %64
  %65 = load %Token, %Token* %64
  %66 = call %nyx_string* @get_token_value(%Token %65)
  store %nyx_string* %66, %nyx_string** %57
  br label %merge19
else18:
  %67 = getelementptr [11 x i8], [11 x i8]* @.str459, i32 0, i32 0
  %68 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str459.c, i8* %67)
  %69 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %68)
  %70 = alloca %Token
  store %Token %69, %Token* %70
  %71 = load %Token, %Token* %70
  %72 = call %nyx_string* @get_token_value(%Token %71)
  store %nyx_string* %72, %nyx_string** %57
  br label %while_cond20
while_cond20:
  %73 = getelementptr [6 x i8], [6 x i8]* @.str460, i32 0, i32 0
  %74 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str460.c, i8* %73)
  %75 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %74)
  br i1 %75, label %while_body21, label %while_end22
while_body21:
  %76 = call %Token @advance(%SharedEnv_parse* %env.param)
  %77 = getelementptr [11 x i8], [11 x i8]* @.str461, i32 0, i32 0
  %78 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str461.c, i8* %77)
  %79 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %78)
  %80 = alloca %Token
  store %Token %79, %Token* %80
  %81 = load %nyx_string*, %nyx_string** %57
  %82 = getelementptr [2 x i8], [2 x i8]* @.str462, i32 0, i32 0
  %83 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str462.c, i8* %82)
  %84 = call %nyx_string* @nyx_string_concat(%nyx_string* %81, %nyx_string* %83)
  %85 = load %Token, %Token* %80
  %86 = call %nyx_string* @get_token_value(%Token %85)
  %87 = call %nyx_string* @nyx_string_concat(%nyx_string* %84, %nyx_string* %86)
  store %nyx_string* %87, %nyx_string** %57
  br label %while_cond20
while_end22:
  br label %merge19
merge19:
  %88 = getelementptr [12 x i8], [12 x i8]* @.str463, i32 0, i32 0
  %89 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str463.c, i8* %88)
  %90 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %89)
  %91 = load %nyx_string*, %nyx_string** %48
  %92 = getelementptr [2 x i8], [2 x i8]* @.str464, i32 0, i32 0
  %93 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str464.c, i8* %92)
  %94 = call %nyx_string* @nyx_string_concat(%nyx_string* %91, %nyx_string* %93)
  %95 = load %nyx_string*, %nyx_string** %57
  %96 = call %nyx_string* @nyx_string_concat(%nyx_string* %94, %nyx_string* %95)
  %97 = getelementptr [2 x i8], [2 x i8]* @.str465, i32 0, i32 0
  %98 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str465.c, i8* %97)
  %99 = call %nyx_string* @nyx_string_concat(%nyx_string* %96, %nyx_string* %98)
  store %nyx_string* %99, %nyx_string** %50
  br label %merge16
else15:
  %100 = getelementptr [7 x i8], [7 x i8]* @.str466, i32 0, i32 0
  %101 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str466.c, i8* %100)
  %102 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %101)
  br i1 %102, label %then23, label %else24
then23:
  %103 = call %Token @advance(%SharedEnv_parse* %env.param)
  %104 = getelementptr [7 x i8], [7 x i8]* @.str467, i32 0, i32 0
  %105 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str467.c, i8* %104)
  %106 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %105)
  %107 = alloca %Token
  store %Token %106, %Token* %107
  %108 = load %nyx_string*, %nyx_string** %48
  %109 = getelementptr [2 x i8], [2 x i8]* @.str468, i32 0, i32 0
  %110 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str468.c, i8* %109)
  %111 = call %nyx_string* @nyx_string_concat(%nyx_string* %108, %nyx_string* %110)
  %112 = load %Token, %Token* %107
  %113 = call %nyx_string* @get_token_value(%Token %112)
  %114 = call %nyx_string* @nyx_string_concat(%nyx_string* %111, %nyx_string* %113)
  store %nyx_string* %114, %nyx_string** %50
  br label %merge25
else24:
  br label %merge25
merge25:
  br label %merge16
merge16:
  %115 = getelementptr [14 x i8], [14 x i8]* @.str469, i32 0, i32 0
  %116 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str469.c, i8* %115)
  %117 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %116)
  %118 = getelementptr [3 x i8], [3 x i8]* @.str470, i32 0, i32 0
  %119 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str470.c, i8* %118)
  %120 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %119)
  br i1 %120, label %then26, label %else27
then26:
  %121 = call { i64, i8* }* @parse_function(%SharedEnv_parse* %env.param)
  %122 = alloca { i64, i8* }*
  store { i64, i8* }* %121, { i64, i8* }** %122
  %123 = load { i64, i8* }*, { i64, i8* }** %122
  %124 = call i64 @nyx_array_get({ i64, i8* }* %123, i64 1)
  %125 = inttoptr i64 %124 to { i64, i8* }*
  %126 = alloca { i64, i8* }*
  store { i64, i8* }* %125, { i64, i8* }** %126
  %127 = getelementptr [9 x i8], [9 x i8]* @.str471, i32 0, i32 0
  %128 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str471.c, i8* %127)
  %129 = call { i64, i8* }* @nyx_array_new_ptr()
  %130 = load { i64, i8* }*, { i64, i8* }** %126
  %131 = call i64 @nyx_array_get({ i64, i8* }* %130, i64 0)
  call void @nyx_array_push({ i64, i8* }* %129, i64 %131)
  %132 = load { i64, i8* }*, { i64, i8* }** %126
  %133 = call i64 @nyx_array_get({ i64, i8* }* %132, i64 1)
  call void @nyx_array_push({ i64, i8* }* %129, i64 %133)
  %134 = load { i64, i8* }*, { i64, i8* }** %126
  %135 = call i64 @nyx_array_get({ i64, i8* }* %134, i64 2)
  call void @nyx_array_push({ i64, i8* }* %129, i64 %135)
  %136 = load { i64, i8* }*, { i64, i8* }** %126
  %137 = call i64 @nyx_array_get({ i64, i8* }* %136, i64 3)
  call void @nyx_array_push({ i64, i8* }* %129, i64 %137)
  %138 = load { i64, i8* }*, { i64, i8* }** %126
  %139 = call i64 @nyx_array_get({ i64, i8* }* %138, i64 4)
  call void @nyx_array_push({ i64, i8* }* %129, i64 %139)
  %140 = load %nyx_string*, %nyx_string** %50
  %141 = ptrtoint %nyx_string* %140 to i64
  call void @nyx_array_push({ i64, i8* }* %129, i64 %141)
  %142 = call { i64, i8* }* @make_astnode(%nyx_string* %128, { i64, i8* }* %129)
  ret { i64, i8* }* %142
else27:
  br label %merge28
merge28:
  %143 = getelementptr [7 x i8], [7 x i8]* @.str472, i32 0, i32 0
  %144 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str472.c, i8* %143)
  %145 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %144)
  br i1 %145, label %then29, label %else30
then29:
  %146 = call { i64, i8* }* @parse_struct(%SharedEnv_parse* %env.param)
  %147 = alloca { i64, i8* }*
  store { i64, i8* }* %146, { i64, i8* }** %147
  %148 = load { i64, i8* }*, { i64, i8* }** %147
  %149 = call i64 @nyx_array_get({ i64, i8* }* %148, i64 1)
  %150 = inttoptr i64 %149 to { i64, i8* }*
  %151 = alloca { i64, i8* }*
  store { i64, i8* }* %150, { i64, i8* }** %151
  %152 = getelementptr [7 x i8], [7 x i8]* @.str473, i32 0, i32 0
  %153 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str473.c, i8* %152)
  %154 = call { i64, i8* }* @nyx_array_new_ptr()
  %155 = load { i64, i8* }*, { i64, i8* }** %151
  %156 = call i64 @nyx_array_get({ i64, i8* }* %155, i64 0)
  call void @nyx_array_push({ i64, i8* }* %154, i64 %156)
  %157 = load { i64, i8* }*, { i64, i8* }** %151
  %158 = call i64 @nyx_array_get({ i64, i8* }* %157, i64 1)
  call void @nyx_array_push({ i64, i8* }* %154, i64 %158)
  %159 = load { i64, i8* }*, { i64, i8* }** %151
  %160 = call i64 @nyx_array_get({ i64, i8* }* %159, i64 2)
  call void @nyx_array_push({ i64, i8* }* %154, i64 %160)
  %161 = load %nyx_string*, %nyx_string** %50
  %162 = ptrtoint %nyx_string* %161 to i64
  call void @nyx_array_push({ i64, i8* }* %154, i64 %162)
  %163 = call { i64, i8* }* @make_astnode(%nyx_string* %153, { i64, i8* }* %154)
  ret { i64, i8* }* %163
else30:
  br label %merge31
merge31:
  %164 = getelementptr [5 x i8], [5 x i8]* @.str474, i32 0, i32 0
  %165 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str474.c, i8* %164)
  %166 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %165)
  br i1 %166, label %then32, label %else33
then32:
  %167 = call { i64, i8* }* @parse_enum(%SharedEnv_parse* %env.param)
  %168 = alloca { i64, i8* }*
  store { i64, i8* }* %167, { i64, i8* }** %168
  %169 = load { i64, i8* }*, { i64, i8* }** %168
  %170 = call i64 @nyx_array_get({ i64, i8* }* %169, i64 1)
  %171 = inttoptr i64 %170 to { i64, i8* }*
  %172 = alloca { i64, i8* }*
  store { i64, i8* }* %171, { i64, i8* }** %172
  %173 = getelementptr [5 x i8], [5 x i8]* @.str475, i32 0, i32 0
  %174 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str475.c, i8* %173)
  %175 = call { i64, i8* }* @nyx_array_new_ptr()
  %176 = load { i64, i8* }*, { i64, i8* }** %172
  %177 = call i64 @nyx_array_get({ i64, i8* }* %176, i64 0)
  call void @nyx_array_push({ i64, i8* }* %175, i64 %177)
  %178 = load { i64, i8* }*, { i64, i8* }** %172
  %179 = call i64 @nyx_array_get({ i64, i8* }* %178, i64 1)
  call void @nyx_array_push({ i64, i8* }* %175, i64 %179)
  %180 = load { i64, i8* }*, { i64, i8* }** %172
  %181 = call i64 @nyx_array_get({ i64, i8* }* %180, i64 2)
  call void @nyx_array_push({ i64, i8* }* %175, i64 %181)
  %182 = load %nyx_string*, %nyx_string** %50
  %183 = ptrtoint %nyx_string* %182 to i64
  call void @nyx_array_push({ i64, i8* }* %175, i64 %183)
  %184 = call { i64, i8* }* @make_astnode(%nyx_string* %174, { i64, i8* }* %175)
  ret { i64, i8* }* %184
else33:
  br label %merge34
merge34:
  %185 = getelementptr [6 x i8], [6 x i8]* @.str476, i32 0, i32 0
  %186 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str476.c, i8* %185)
  %187 = call { i64, i8* }* @nyx_array_new_ptr()
  %188 = getelementptr [49 x i8], [49 x i8]* @.str477, i32 0, i32 0
  %189 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str477.c, i8* %188)
  %190 = ptrtoint %nyx_string* %189 to i64
  call void @nyx_array_push({ i64, i8* }* %187, i64 %190)
  %191 = call { i64, i8* }* @make_astnode(%nyx_string* %186, { i64, i8* }* %187)
  ret { i64, i8* }* %191
else12:
  br label %merge13
merge13:
  %192 = getelementptr [7 x i8], [7 x i8]* @.str478, i32 0, i32 0
  %193 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str478.c, i8* %192)
  %194 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %193)
  br i1 %194, label %then35, label %else36
then35:
  %195 = call { i64, i8* }* @parse_struct(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %195
else36:
  br label %merge37
merge37:
  %196 = getelementptr [5 x i8], [5 x i8]* @.str479, i32 0, i32 0
  %197 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str479.c, i8* %196)
  %198 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %197)
  br i1 %198, label %then38, label %else39
then38:
  %199 = call { i64, i8* }* @parse_enum(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %199
else39:
  br label %merge40
merge40:
  %200 = getelementptr [6 x i8], [6 x i8]* @.str480, i32 0, i32 0
  %201 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str480.c, i8* %200)
  %202 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %201)
  br i1 %202, label %then41, label %else42
then41:
  %203 = call { i64, i8* }* @parse_match(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %203
else42:
  br label %merge43
merge43:
  %204 = getelementptr [3 x i8], [3 x i8]* @.str481, i32 0, i32 0
  %205 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str481.c, i8* %204)
  %206 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %205)
  br i1 %206, label %then44, label %else45
then44:
  %207 = call { i64, i8* }* @parse_if(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %207
else45:
  br label %merge46
merge46:
  %208 = getelementptr [6 x i8], [6 x i8]* @.str482, i32 0, i32 0
  %209 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str482.c, i8* %208)
  %210 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %209)
  br i1 %210, label %then47, label %else48
then47:
  %211 = call { i64, i8* }* @parse_while(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %211
else48:
  br label %merge49
merge49:
  %212 = getelementptr [4 x i8], [4 x i8]* @.str483, i32 0, i32 0
  %213 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str483.c, i8* %212)
  %214 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %213)
  br i1 %214, label %then50, label %else51
then50:
  %215 = call { i64, i8* }* @parse_for(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %215
else51:
  br label %merge52
merge52:
  %216 = getelementptr [7 x i8], [7 x i8]* @.str484, i32 0, i32 0
  %217 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str484.c, i8* %216)
  %218 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %217)
  br i1 %218, label %then53, label %else54
then53:
  %219 = call { i64, i8* }* @parse_return(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %219
else54:
  br label %merge55
merge55:
  %220 = getelementptr [6 x i8], [6 x i8]* @.str485, i32 0, i32 0
  %221 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str485.c, i8* %220)
  %222 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %221)
  br i1 %222, label %then56, label %else57
then56:
  %223 = call %Token @advance(%SharedEnv_parse* %env.param)
  %224 = getelementptr [6 x i8], [6 x i8]* @.str486, i32 0, i32 0
  %225 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str486.c, i8* %224)
  %226 = call { i64, i8* }* @nyx_array_new_ptr()
  %227 = call { i64, i8* }* @make_astnode(%nyx_string* %225, { i64, i8* }* %226)
  ret { i64, i8* }* %227
else57:
  br label %merge58
merge58:
  %228 = getelementptr [9 x i8], [9 x i8]* @.str487, i32 0, i32 0
  %229 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str487.c, i8* %228)
  %230 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %229)
  br i1 %230, label %then59, label %else60
then59:
  %231 = call %Token @advance(%SharedEnv_parse* %env.param)
  %232 = getelementptr [9 x i8], [9 x i8]* @.str488, i32 0, i32 0
  %233 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str488.c, i8* %232)
  %234 = call { i64, i8* }* @nyx_array_new_ptr()
  %235 = call { i64, i8* }* @make_astnode(%nyx_string* %233, { i64, i8* }* %234)
  ret { i64, i8* }* %235
else60:
  br label %merge61
merge61:
  %236 = getelementptr [7 x i8], [7 x i8]* @.str489, i32 0, i32 0
  %237 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str489.c, i8* %236)
  %238 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %237)
  br i1 %238, label %then62, label %else63
then62:
  %239 = call { i64, i8* }* @parse_export(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %239
else63:
  br label %merge64
merge64:
  %240 = getelementptr [4 x i8], [4 x i8]* @.str490, i32 0, i32 0
  %241 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str490.c, i8* %240)
  %242 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %241)
  br i1 %242, label %then65, label %else66
then65:
  %243 = call { i64, i8* }* @parse_pub(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %243
else66:
  br label %merge67
merge67:
  %244 = getelementptr [7 x i8], [7 x i8]* @.str491, i32 0, i32 0
  %245 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str491.c, i8* %244)
  %246 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %245)
  br i1 %246, label %then68, label %else69
then68:
  %247 = call { i64, i8* }* @parse_import(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %247
else69:
  br label %merge70
merge70:
  %248 = getelementptr [6 x i8], [6 x i8]* @.str492, i32 0, i32 0
  %249 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str492.c, i8* %248)
  %250 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %249)
  br i1 %250, label %then71, label %else72
then71:
  %251 = call { i64, i8* }* @parse_trait(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %251
else72:
  br label %merge73
merge73:
  %252 = getelementptr [5 x i8], [5 x i8]* @.str493, i32 0, i32 0
  %253 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str493.c, i8* %252)
  %254 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %253)
  br i1 %254, label %then74, label %else75
then74:
  %255 = call { i64, i8* }* @parse_impl(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %255
else75:
  br label %merge76
merge76:
  %256 = getelementptr [5 x i8], [5 x i8]* @.str494, i32 0, i32 0
  %257 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str494.c, i8* %256)
  %258 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %257)
  br i1 %258, label %then77, label %else78
then77:
  %259 = call { i64, i8* }* @parse_test_decl(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %259
else78:
  br label %merge79
merge79:
  %260 = getelementptr [7 x i8], [7 x i8]* @.str495, i32 0, i32 0
  %261 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str495.c, i8* %260)
  %262 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %261)
  br i1 %262, label %then80, label %else81
then80:
  %263 = call { i64, i8* }* @parse_extern_fn(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %263
else81:
  br label %merge82
merge82:
  %264 = getelementptr [7 x i8], [7 x i8]* @.str496, i32 0, i32 0
  %265 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str496.c, i8* %264)
  %266 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %265)
  br i1 %266, label %then83, label %else84
then83:
  %267 = call %Token @advance(%SharedEnv_parse* %env.param)
  %268 = call { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param)
  %269 = alloca { i64, i8* }*
  store { i64, i8* }* %268, { i64, i8* }** %269
  %270 = getelementptr [13 x i8], [13 x i8]* @.str497, i32 0, i32 0
  %271 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str497.c, i8* %270)
  %272 = call { i64, i8* }* @nyx_array_new_ptr()
  %273 = load { i64, i8* }*, { i64, i8* }** %269
  %274 = bitcast { i64, i8* }* %273 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %272, i8* %274)
  %275 = call { i64, i8* }* @make_astnode(%nyx_string* %271, { i64, i8* }* %272)
  ret { i64, i8* }* %275
else84:
  br label %merge85
merge85:
  %276 = getelementptr [7 x i8], [7 x i8]* @.str498, i32 0, i32 0
  %277 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str498.c, i8* %276)
  %278 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %277)
  br i1 %278, label %then86, label %else87
then86:
  %279 = call { i64, i8* }* @parse_static_var(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %279
else87:
  br label %merge88
merge88:
  %280 = getelementptr [7 x i8], [7 x i8]* @.str499, i32 0, i32 0
  %281 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str499.c, i8* %280)
  %282 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %281)
  br i1 %282, label %then89, label %else90
then89:
  %283 = call { i64, i8* }* @parse_module_decl(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %283
else90:
  br label %merge91
merge91:
  %284 = getelementptr [6 x i8], [6 x i8]* @.str500, i32 0, i32 0
  %285 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str500.c, i8* %284)
  %286 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %285)
  br i1 %286, label %then92, label %else93
then92:
  %287 = call %Token @advance(%SharedEnv_parse* %env.param)
  %288 = getelementptr [11 x i8], [11 x i8]* @.str501, i32 0, i32 0
  %289 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str501.c, i8* %288)
  %290 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %289)
  br i1 %290, label %then95, label %else96
then95:
  %291 = call { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param)
  %292 = alloca { i64, i8* }*
  store { i64, i8* }* %291, { i64, i8* }** %292
  %293 = getelementptr [6 x i8], [6 x i8]* @.str502, i32 0, i32 0
  %294 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str502.c, i8* %293)
  %295 = call { i64, i8* }* @nyx_array_new_ptr()
  %296 = load { i64, i8* }*, { i64, i8* }** %292
  %297 = bitcast { i64, i8* }* %296 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %295, i8* %297)
  %298 = call { i64, i8* }* @make_astnode(%nyx_string* %294, { i64, i8* }* %295)
  ret { i64, i8* }* %298
else96:
  br label %merge97
merge97:
  %299 = call { i64, i8* }* @parse_statement(%SharedEnv_parse* %env.param)
  %300 = alloca { i64, i8* }*
  store { i64, i8* }* %299, { i64, i8* }** %300
  %301 = getelementptr [6 x i8], [6 x i8]* @.str503, i32 0, i32 0
  %302 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str503.c, i8* %301)
  %303 = call { i64, i8* }* @nyx_array_new_ptr()
  %304 = call { i64, i8* }* @nyx_array_new_ptr()
  %305 = load { i64, i8* }*, { i64, i8* }** %300
  %306 = bitcast { i64, i8* }* %305 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %304, i8* %306)
  %307 = bitcast { i64, i8* }* %304 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %303, i8* %307)
  %308 = call { i64, i8* }* @make_astnode(%nyx_string* %302, { i64, i8* }* %303)
  %309 = alloca { i64, i8* }*
  store { i64, i8* }* %308, { i64, i8* }** %309
  %310 = getelementptr [6 x i8], [6 x i8]* @.str504, i32 0, i32 0
  %311 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str504.c, i8* %310)
  %312 = call { i64, i8* }* @nyx_array_new_ptr()
  %313 = load { i64, i8* }*, { i64, i8* }** %309
  %314 = bitcast { i64, i8* }* %313 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %312, i8* %314)
  %315 = call { i64, i8* }* @make_astnode(%nyx_string* %311, { i64, i8* }* %312)
  ret { i64, i8* }* %315
else93:
  br label %merge94
merge94:
  %316 = getelementptr [4 x i8], [4 x i8]* @.str505, i32 0, i32 0
  %317 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str505.c, i8* %316)
  %318 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %317)
  br i1 %318, label %then98, label %else99
then98:
  %319 = call { i64, i8* }* @parse_try_catch(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %319
else99:
  br label %merge100
merge100:
  %320 = getelementptr [6 x i8], [6 x i8]* @.str506, i32 0, i32 0
  %321 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str506.c, i8* %320)
  %322 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %321)
  br i1 %322, label %then101, label %else102
then101:
  %323 = call { i64, i8* }* @parse_throw(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %323
else102:
  br label %merge103
merge103:
  %324 = getelementptr [6 x i8], [6 x i8]* @.str507, i32 0, i32 0
  %325 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str507.c, i8* %324)
  %326 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %325)
  br i1 %326, label %then104, label %else105
then104:
  %327 = call %Token @advance(%SharedEnv_parse* %env.param)
  %328 = call { i64, i8* }* @parse_async_function(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %328
else105:
  br label %merge106
merge106:
  %329 = getelementptr [11 x i8], [11 x i8]* @.str508, i32 0, i32 0
  %330 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str508.c, i8* %329)
  %331 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %330)
  br i1 %331, label %then107, label %else108
then107:
  %332 = call %Token @peek(%SharedEnv_parse* %env.param)
  %333 = alloca %Token
  store %Token %332, %Token* %333
  %334 = load %Token, %Token* %333
  %335 = call %nyx_string* @get_token_value(%Token %334)
  %336 = alloca %nyx_string*
  store %nyx_string* %335, %nyx_string** %336
  %337 = load %nyx_string*, %nyx_string** %336
  %338 = getelementptr [5 x i8], [5 x i8]* @.str509, i32 0, i32 0
  %339 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str509.c, i8* %338)
  %340 = call i1 @nyx_string_equals(%nyx_string* %337, %nyx_string* %339)
  br i1 %340, label %then110, label %else111
then110:
  %341 = call { i64, i8* }* @parse_type_alias(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %341
else111:
  br label %merge112
merge112:
  %342 = load %nyx_string*, %nyx_string** %336
  %343 = getelementptr [6 x i8], [6 x i8]* @.str510, i32 0, i32 0
  %344 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str510.c, i8* %343)
  %345 = call i1 @nyx_string_equals(%nyx_string* %342, %nyx_string* %344)
  br i1 %345, label %then113, label %else114
then113:
  %346 = call { i64, i8* }* @parse_macro_def(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %346
else114:
  br label %merge115
merge115:
  %347 = load %nyx_string*, %nyx_string** %336
  %348 = getelementptr [6 x i8], [6 x i8]* @.str511, i32 0, i32 0
  %349 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str511.c, i8* %348)
  %350 = call i1 @nyx_string_equals(%nyx_string* %347, %nyx_string* %349)
  br i1 %350, label %then116, label %else117
then116:
  %351 = call { i64, i8* }* @parse_bench_decl(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %351
else117:
  br label %merge118
merge118:
  %352 = load %nyx_string*, %nyx_string** %336
  %353 = getelementptr [6 x i8], [6 x i8]* @.str512, i32 0, i32 0
  %354 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str512.c, i8* %353)
  %355 = call i1 @nyx_string_equals(%nyx_string* %352, %nyx_string* %354)
  br i1 %355, label %then119, label %else120
then119:
  %356 = call { i64, i8* }* @parse_spawn_stmt(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %356
else120:
  br label %merge121
merge121:
  %357 = load %nyx_string*, %nyx_string** %336
  %358 = getelementptr [7 x i8], [7 x i8]* @.str513, i32 0, i32 0
  %359 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str513.c, i8* %358)
  %360 = call i1 @nyx_string_equals(%nyx_string* %357, %nyx_string* %359)
  br i1 %360, label %then122, label %else123
then122:
  %361 = call { i64, i8* }* @parse_select_stmt(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %361
else123:
  br label %merge124
merge124:
  %362 = load %nyx_string*, %nyx_string** %336
  %363 = getelementptr [5 x i8], [5 x i8]* @.str514, i32 0, i32 0
  %364 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str514.c, i8* %363)
  %365 = call i1 @nyx_string_equals(%nyx_string* %362, %nyx_string* %364)
  br i1 %365, label %then125, label %else126
then125:
  %366 = call %Token @advance(%SharedEnv_parse* %env.param)
  %367 = getelementptr [3 x i8], [3 x i8]* @.str515, i32 0, i32 0
  %368 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str515.c, i8* %367)
  %369 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %368)
  br i1 %369, label %then128, label %else129
then128:
  %370 = call { i64, i8* }* @parse_function(%SharedEnv_parse* %env.param)
  %371 = alloca { i64, i8* }*
  store { i64, i8* }* %370, { i64, i8* }** %371
  %372 = load { i64, i8* }*, { i64, i8* }** %371
  %373 = call i64 @nyx_array_get({ i64, i8* }* %372, i64 1)
  %374 = inttoptr i64 %373 to { i64, i8* }*
  %375 = alloca { i64, i8* }*
  store { i64, i8* }* %374, { i64, i8* }** %375
  %376 = getelementptr [9 x i8], [9 x i8]* @.str516, i32 0, i32 0
  %377 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str516.c, i8* %376)
  %378 = call { i64, i8* }* @nyx_array_new_ptr()
  %379 = load { i64, i8* }*, { i64, i8* }** %375
  %380 = call i64 @nyx_array_get({ i64, i8* }* %379, i64 0)
  call void @nyx_array_push({ i64, i8* }* %378, i64 %380)
  %381 = load { i64, i8* }*, { i64, i8* }** %375
  %382 = call i64 @nyx_array_get({ i64, i8* }* %381, i64 1)
  call void @nyx_array_push({ i64, i8* }* %378, i64 %382)
  %383 = load { i64, i8* }*, { i64, i8* }** %375
  %384 = call i64 @nyx_array_get({ i64, i8* }* %383, i64 2)
  call void @nyx_array_push({ i64, i8* }* %378, i64 %384)
  %385 = load { i64, i8* }*, { i64, i8* }** %375
  %386 = call i64 @nyx_array_get({ i64, i8* }* %385, i64 3)
  call void @nyx_array_push({ i64, i8* }* %378, i64 %386)
  %387 = load { i64, i8* }*, { i64, i8* }** %375
  %388 = call i64 @nyx_array_get({ i64, i8* }* %387, i64 4)
  call void @nyx_array_push({ i64, i8* }* %378, i64 %388)
  %389 = getelementptr [5 x i8], [5 x i8]* @.str517, i32 0, i32 0
  %390 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str517.c, i8* %389)
  %391 = ptrtoint %nyx_string* %390 to i64
  call void @nyx_array_push({ i64, i8* }* %378, i64 %391)
  %392 = call { i64, i8* }* @make_astnode(%nyx_string* %377, { i64, i8* }* %378)
  ret { i64, i8* }* %392
else129:
  br label %merge130
merge130:
  br label %merge127
else126:
  br label %merge127
merge127:
  br label %merge109
else108:
  br label %merge109
merge109:
  %393 = getelementptr [5 x i8], [5 x i8]* @.str518, i32 0, i32 0
  %394 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str518.c, i8* %393)
  %395 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %394)
  br i1 %395, label %then131, label %else132
then131:
  %396 = call %Token @advance(%SharedEnv_parse* %env.param)
  %397 = call { i64, i8* }* @parse_unary(%SharedEnv_parse* %env.param)
  %398 = alloca { i64, i8* }*
  store { i64, i8* }* %397, { i64, i8* }** %398
  %399 = getelementptr [7 x i8], [7 x i8]* @.str519, i32 0, i32 0
  %400 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str519.c, i8* %399)
  %401 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %400)
  br i1 %401, label %then134, label %else135
then134:
  %402 = call %Token @advance(%SharedEnv_parse* %env.param)
  %403 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %404 = alloca { i64, i8* }*
  store { i64, i8* }* %403, { i64, i8* }** %404
  %405 = getelementptr [13 x i8], [13 x i8]* @.str520, i32 0, i32 0
  %406 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str520.c, i8* %405)
  %407 = call { i64, i8* }* @nyx_array_new_ptr()
  %408 = load { i64, i8* }*, { i64, i8* }** %398
  %409 = bitcast { i64, i8* }* %408 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %407, i8* %409)
  %410 = load { i64, i8* }*, { i64, i8* }** %404
  %411 = bitcast { i64, i8* }* %410 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %407, i8* %411)
  %412 = call { i64, i8* }* @make_astnode(%nyx_string* %406, { i64, i8* }* %407)
  ret { i64, i8* }* %412
else135:
  br label %merge136
merge136:
  %413 = getelementptr [6 x i8], [6 x i8]* @.str521, i32 0, i32 0
  %414 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str521.c, i8* %413)
  %415 = call { i64, i8* }* @nyx_array_new_ptr()
  %416 = load { i64, i8* }*, { i64, i8* }** %398
  %417 = bitcast { i64, i8* }* %416 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %415, i8* %417)
  %418 = call { i64, i8* }* @make_astnode(%nyx_string* %414, { i64, i8* }* %415)
  ret { i64, i8* }* %418
else132:
  br label %merge133
merge133:
  %419 = call { i64, i8* }* @parse_assignment_or_expr(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %419
}

define internal { i64, i8* }* @parse_spawn_stmt(%SharedEnv_parse* %env.param) {
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
  %18 = call %Token @advance(%SharedEnv_parse* %env.param)
  %19 = load { i64, i8* }*, { i64, i8* }** %11
  %20 = call i64 @nyx_array_get({ i64, i8* }* %19, i64 0)
  %21 = alloca i64
  store i64 %20, i64* %21
  %22 = load { i64, i8* }*, { i64, i8* }** %11
  %23 = load { i64, i8* }*, { i64, i8* }** %11
  %24 = call i64 @nyx_array_get({ i64, i8* }* %23, i64 0)
  %25 = add i64 %24, 1
  call void @nyx_array_set({ i64, i8* }* %22, i64 0, i64 %25)
  %26 = getelementptr [9 x i8], [9 x i8]* @.str522, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str522.c, i8* %26)
  %28 = load i64, i64* %21
  %29 = call %nyx_string* @nyx_string_from_int(i64 %28)
  %30 = call %nyx_string* @nyx_string_concat(%nyx_string* %27, %nyx_string* %29)
  %31 = alloca %nyx_string*
  store %nyx_string* %30, %nyx_string** %31
  %32 = call { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param)
  %33 = alloca { i64, i8* }*
  store { i64, i8* }* %32, { i64, i8* }** %33
  %34 = load { i64, i8* }*, { i64, i8* }** %33
  %35 = call i64 @nyx_array_get({ i64, i8* }* %34, i64 1)
  %36 = inttoptr i64 %35 to { i64, i8* }*
  %37 = alloca { i64, i8* }*
  store { i64, i8* }* %36, { i64, i8* }** %37
  %38 = load { i64, i8* }*, { i64, i8* }** %37
  %39 = call i64 @nyx_array_get({ i64, i8* }* %38, i64 0)
  %40 = inttoptr i64 %39 to { i64, i8* }*
  %41 = alloca { i64, i8* }*
  store { i64, i8* }* %40, { i64, i8* }** %41
  %42 = load { i64, i8* }*, { i64, i8* }** %41
  %43 = getelementptr [7 x i8], [7 x i8]* @.str523, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str523.c, i8* %43)
  %45 = call { i64, i8* }* @nyx_array_new_ptr()
  %46 = getelementptr [8 x i8], [8 x i8]* @.str524, i32 0, i32 0
  %47 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str524.c, i8* %46)
  %48 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push({ i64, i8* }* %48, i64 0)
  %49 = call { i64, i8* }* @make_astnode(%nyx_string* %47, { i64, i8* }* %48)
  %50 = bitcast { i64, i8* }* %49 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %45, i8* %50)
  %51 = call { i64, i8* }* @make_astnode(%nyx_string* %44, { i64, i8* }* %45)
  %52 = ptrtoint { i64, i8* }* %51 to i64
  call void @nyx_array_push({ i64, i8* }* %42, i64 %52)
  %53 = getelementptr [9 x i8], [9 x i8]* @.str525, i32 0, i32 0
  %54 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str525.c, i8* %53)
  %55 = call { i64, i8* }* @nyx_array_new_ptr()
  %56 = load %nyx_string*, %nyx_string** %31
  %57 = ptrtoint %nyx_string* %56 to i64
  call void @nyx_array_push({ i64, i8* }* %55, i64 %57)
  %58 = call { i64, i8* }* @nyx_array_new_ptr()
  %59 = bitcast { i64, i8* }* %58 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %55, i8* %59)
  %60 = getelementptr [4 x i8], [4 x i8]* @.str526, i32 0, i32 0
  %61 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str526.c, i8* %60)
  %62 = ptrtoint %nyx_string* %61 to i64
  call void @nyx_array_push({ i64, i8* }* %55, i64 %62)
  %63 = load { i64, i8* }*, { i64, i8* }** %33
  %64 = bitcast { i64, i8* }* %63 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %55, i8* %64)
  %65 = call { i64, i8* }* @nyx_array_new_ptr()
  %66 = bitcast { i64, i8* }* %65 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %55, i8* %66)
  %67 = call { i64, i8* }* @make_astnode(%nyx_string* %54, { i64, i8* }* %55)
  %68 = alloca { i64, i8* }*
  store { i64, i8* }* %67, { i64, i8* }** %68
  %69 = load { i64, i8* }*, { i64, i8* }** %10
  %70 = load { i64, i8* }*, { i64, i8* }** %68
  %71 = ptrtoint { i64, i8* }* %70 to i64
  call void @nyx_array_push({ i64, i8* }* %69, i64 %71)
  %72 = getelementptr [11 x i8], [11 x i8]* @.str527, i32 0, i32 0
  %73 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str527.c, i8* %72)
  %74 = call { i64, i8* }* @nyx_array_new_ptr()
  %75 = load %nyx_string*, %nyx_string** %31
  %76 = ptrtoint %nyx_string* %75 to i64
  call void @nyx_array_push({ i64, i8* }* %74, i64 %76)
  %77 = call { i64, i8* }* @make_astnode(%nyx_string* %73, { i64, i8* }* %74)
  %78 = alloca { i64, i8* }*
  store { i64, i8* }* %77, { i64, i8* }** %78
  %79 = getelementptr [11 x i8], [11 x i8]* @.str528, i32 0, i32 0
  %80 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str528.c, i8* %79)
  %81 = call { i64, i8* }* @nyx_array_new_ptr()
  %82 = getelementptr [11 x i8], [11 x i8]* @.str529, i32 0, i32 0
  %83 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str529.c, i8* %82)
  %84 = ptrtoint %nyx_string* %83 to i64
  call void @nyx_array_push({ i64, i8* }* %81, i64 %84)
  %85 = call { i64, i8* }* @make_astnode(%nyx_string* %80, { i64, i8* }* %81)
  %86 = alloca { i64, i8* }*
  store { i64, i8* }* %85, { i64, i8* }** %86
  %87 = call { i64, i8* }* @nyx_array_new_ptr()
  %88 = alloca { i64, i8* }*
  store { i64, i8* }* %87, { i64, i8* }** %88
  %89 = load { i64, i8* }*, { i64, i8* }** %88
  %90 = load { i64, i8* }*, { i64, i8* }** %78
  %91 = ptrtoint { i64, i8* }* %90 to i64
  call void @nyx_array_push({ i64, i8* }* %89, i64 %91)
  %92 = getelementptr [5 x i8], [5 x i8]* @.str530, i32 0, i32 0
  %93 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str530.c, i8* %92)
  %94 = call { i64, i8* }* @nyx_array_new_ptr()
  %95 = load { i64, i8* }*, { i64, i8* }** %86
  %96 = bitcast { i64, i8* }* %95 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %94, i8* %96)
  %97 = load { i64, i8* }*, { i64, i8* }** %88
  %98 = bitcast { i64, i8* }* %97 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %94, i8* %98)
  %99 = call { i64, i8* }* @make_astnode(%nyx_string* %93, { i64, i8* }* %94)
  ret { i64, i8* }* %99
}

define internal { i64, i8* }* @parse_select_stmt(%SharedEnv_parse* %env.param) {
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
  %18 = call %Token @advance(%SharedEnv_parse* %env.param)
  %19 = getelementptr [11 x i8], [11 x i8]* @.str531, i32 0, i32 0
  %20 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str531.c, i8* %19)
  %21 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %20)
  %22 = call { i64, i8* }* @nyx_array_new_ptr()
  %23 = alloca { i64, i8* }*
  store { i64, i8* }* %22, { i64, i8* }** %23
  %24 = getelementptr [6 x i8], [6 x i8]* @.str532, i32 0, i32 0
  %25 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str532.c, i8* %24)
  %26 = call { i64, i8* }* @nyx_array_new_ptr()
  %27 = call { i64, i8* }* @nyx_array_new_ptr()
  %28 = bitcast { i64, i8* }* %27 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %26, i8* %28)
  %29 = call { i64, i8* }* @make_astnode(%nyx_string* %25, { i64, i8* }* %26)
  %30 = alloca { i64, i8* }*
  store { i64, i8* }* %29, { i64, i8* }** %30
  %31 = alloca i1
  store i1 0, i1* %31
  br label %while_cond0
while_cond0:
  %32 = getelementptr [12 x i8], [12 x i8]* @.str533, i32 0, i32 0
  %33 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str533.c, i8* %32)
  %34 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %33)
  %35 = xor i1 %34, true
  br i1 %35, label %while_body1, label %while_end2
while_body1:
  %36 = call %Token @peek(%SharedEnv_parse* %env.param)
  %37 = alloca %Token
  store %Token %36, %Token* %37
  %38 = load %Token, %Token* %37
  %39 = call %nyx_string* @get_token_value(%Token %38)
  %40 = alloca %nyx_string*
  store %nyx_string* %39, %nyx_string** %40
  %41 = load %nyx_string*, %nyx_string** %40
  %42 = getelementptr [8 x i8], [8 x i8]* @.str534, i32 0, i32 0
  %43 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str534.c, i8* %42)
  %44 = call i1 @nyx_string_equals(%nyx_string* %41, %nyx_string* %43)
  br i1 %44, label %then3, label %else4
then3:
  %45 = call %Token @advance(%SharedEnv_parse* %env.param)
  %46 = getelementptr [12 x i8], [12 x i8]* @.str535, i32 0, i32 0
  %47 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str535.c, i8* %46)
  %48 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %47)
  %49 = call { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %49, { i64, i8* }** %30
  store i1 1, i1* %31
  br label %merge5
else4:
  %50 = load %nyx_string*, %nyx_string** %40
  %51 = getelementptr [5 x i8], [5 x i8]* @.str536, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str536.c, i8* %51)
  %53 = call i1 @nyx_string_equals(%nyx_string* %50, %nyx_string* %52)
  br i1 %53, label %then6, label %else7
then6:
  %54 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge8
else7:
  br label %merge8
merge8:
  %55 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %56 = alloca { i64, i8* }*
  store { i64, i8* }* %55, { i64, i8* }** %56
  %57 = getelementptr [12 x i8], [12 x i8]* @.str537, i32 0, i32 0
  %58 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str537.c, i8* %57)
  %59 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %58)
  %60 = call { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param)
  %61 = alloca { i64, i8* }*
  store { i64, i8* }* %60, { i64, i8* }** %61
  %62 = call { i64, i8* }* @nyx_array_new_ptr()
  %63 = alloca { i64, i8* }*
  store { i64, i8* }* %62, { i64, i8* }** %63
  %64 = load { i64, i8* }*, { i64, i8* }** %63
  %65 = load { i64, i8* }*, { i64, i8* }** %56
  %66 = ptrtoint { i64, i8* }* %65 to i64
  call void @nyx_array_push({ i64, i8* }* %64, i64 %66)
  %67 = load { i64, i8* }*, { i64, i8* }** %63
  %68 = load { i64, i8* }*, { i64, i8* }** %61
  %69 = ptrtoint { i64, i8* }* %68 to i64
  call void @nyx_array_push({ i64, i8* }* %67, i64 %69)
  %70 = load { i64, i8* }*, { i64, i8* }** %23
  %71 = load { i64, i8* }*, { i64, i8* }** %63
  %72 = ptrtoint { i64, i8* }* %71 to i64
  call void @nyx_array_push({ i64, i8* }* %70, i64 %72)
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %73 = getelementptr [12 x i8], [12 x i8]* @.str538, i32 0, i32 0
  %74 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str538.c, i8* %73)
  %75 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %74)
  %76 = alloca i64
  store i64 0, i64* %76
  %77 = load i1, i1* %31
  br i1 %77, label %then9, label %else10
then9:
  store i64 1, i64* %76
  br label %merge11
else10:
  br label %merge11
merge11:
  %78 = getelementptr [12 x i8], [12 x i8]* @.str539, i32 0, i32 0
  %79 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str539.c, i8* %78)
  %80 = call { i64, i8* }* @nyx_array_new_ptr()
  %81 = load { i64, i8* }*, { i64, i8* }** %23
  %82 = bitcast { i64, i8* }* %81 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %80, i8* %82)
  %83 = load { i64, i8* }*, { i64, i8* }** %30
  %84 = bitcast { i64, i8* }* %83 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %80, i8* %84)
  %85 = load i64, i64* %76
  call void @nyx_array_push({ i64, i8* }* %80, i64 %85)
  %86 = call { i64, i8* }* @make_astnode(%nyx_string* %79, { i64, i8* }* %80)
  ret { i64, i8* }* %86
}

define internal { i64, i8* }* @parse_bench_decl(%SharedEnv_parse* %env.param) {
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
  %18 = call %Token @advance(%SharedEnv_parse* %env.param)
  %19 = getelementptr [7 x i8], [7 x i8]* @.str540, i32 0, i32 0
  %20 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str540.c, i8* %19)
  %21 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %20)
  %22 = alloca %Token
  store %Token %21, %Token* %22
  %23 = load %Token, %Token* %22
  %24 = call %nyx_string* @get_token_value(%Token %23)
  %25 = alloca %nyx_string*
  store %nyx_string* %24, %nyx_string** %25
  %26 = getelementptr [7 x i8], [7 x i8]* @.str541, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str541.c, i8* %26)
  %28 = alloca %nyx_string*
  store %nyx_string* %27, %nyx_string** %28
  %29 = getelementptr [7 x i8], [7 x i8]* @.str542, i32 0, i32 0
  %30 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str542.c, i8* %29)
  %31 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %30)
  br i1 %31, label %then0, label %else1
then0:
  %32 = call %Token @advance(%SharedEnv_parse* %env.param)
  %33 = alloca %Token
  store %Token %32, %Token* %33
  %34 = load %Token, %Token* %33
  %35 = call %nyx_string* @get_token_value(%Token %34)
  store %nyx_string* %35, %nyx_string** %28
  br label %merge2
else1:
  br label %merge2
merge2:
  %36 = call { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param)
  %37 = alloca { i64, i8* }*
  store { i64, i8* }* %36, { i64, i8* }** %37
  %38 = getelementptr [11 x i8], [11 x i8]* @.str543, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str543.c, i8* %38)
  %40 = call { i64, i8* }* @nyx_array_new_ptr()
  %41 = load %nyx_string*, %nyx_string** %25
  %42 = ptrtoint %nyx_string* %41 to i64
  call void @nyx_array_push({ i64, i8* }* %40, i64 %42)
  %43 = load %nyx_string*, %nyx_string** %28
  %44 = ptrtoint %nyx_string* %43 to i64
  call void @nyx_array_push({ i64, i8* }* %40, i64 %44)
  %45 = load { i64, i8* }*, { i64, i8* }** %37
  %46 = bitcast { i64, i8* }* %45 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %40, i8* %46)
  %47 = call { i64, i8* }* @make_astnode(%nyx_string* %39, { i64, i8* }* %40)
  ret { i64, i8* }* %47
}

define internal { i64, i8* }* @parse_test_decl(%SharedEnv_parse* %env.param) {
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
  %18 = getelementptr [5 x i8], [5 x i8]* @.str544, i32 0, i32 0
  %19 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str544.c, i8* %18)
  %20 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %19)
  %21 = getelementptr [7 x i8], [7 x i8]* @.str545, i32 0, i32 0
  %22 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str545.c, i8* %21)
  %23 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %22)
  %24 = alloca %Token
  store %Token %23, %Token* %24
  %25 = load %Token, %Token* %24
  %26 = call %nyx_string* @get_token_value(%Token %25)
  %27 = alloca %nyx_string*
  store %nyx_string* %26, %nyx_string** %27
  %28 = call { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param)
  %29 = alloca { i64, i8* }*
  store { i64, i8* }* %28, { i64, i8* }** %29
  %30 = getelementptr [10 x i8], [10 x i8]* @.str546, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str546.c, i8* %30)
  %32 = call { i64, i8* }* @nyx_array_new_ptr()
  %33 = load %nyx_string*, %nyx_string** %27
  %34 = ptrtoint %nyx_string* %33 to i64
  call void @nyx_array_push({ i64, i8* }* %32, i64 %34)
  %35 = load { i64, i8* }*, { i64, i8* }** %29
  %36 = bitcast { i64, i8* }* %35 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %32, i8* %36)
  %37 = call { i64, i8* }* @make_astnode(%nyx_string* %31, { i64, i8* }* %32)
  ret { i64, i8* }* %37
}

define internal { i64, i8* }* @parse_static_var(%SharedEnv_parse* %env.param) {
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
  %18 = getelementptr [7 x i8], [7 x i8]* @.str547, i32 0, i32 0
  %19 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str547.c, i8* %18)
  %20 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %19)
  %21 = getelementptr [4 x i8], [4 x i8]* @.str548, i32 0, i32 0
  %22 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str548.c, i8* %21)
  %23 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %22)
  %24 = getelementptr [11 x i8], [11 x i8]* @.str549, i32 0, i32 0
  %25 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str549.c, i8* %24)
  %26 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %25)
  %27 = alloca %Token
  store %Token %26, %Token* %27
  %28 = load %Token, %Token* %27
  %29 = call %nyx_string* @get_token_value(%Token %28)
  %30 = alloca %nyx_string*
  store %nyx_string* %29, %nyx_string** %30
  %31 = getelementptr [4 x i8], [4 x i8]* @.str550, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str550.c, i8* %31)
  %33 = alloca %nyx_string*
  store %nyx_string* %32, %nyx_string** %33
  %34 = getelementptr [6 x i8], [6 x i8]* @.str551, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str551.c, i8* %34)
  %36 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %35)
  br i1 %36, label %then0, label %else1
then0:
  %37 = call %Token @advance(%SharedEnv_parse* %env.param)
  %38 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %38, %nyx_string** %33
  br label %merge2
else1:
  br label %merge2
merge2:
  %39 = getelementptr [7 x i8], [7 x i8]* @.str552, i32 0, i32 0
  %40 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str552.c, i8* %39)
  %41 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %40)
  %42 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %43 = alloca { i64, i8* }*
  store { i64, i8* }* %42, { i64, i8* }** %43
  %44 = getelementptr [11 x i8], [11 x i8]* @.str553, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str553.c, i8* %44)
  %46 = call { i64, i8* }* @nyx_array_new_ptr()
  %47 = load %nyx_string*, %nyx_string** %30
  %48 = ptrtoint %nyx_string* %47 to i64
  call void @nyx_array_push({ i64, i8* }* %46, i64 %48)
  %49 = load %nyx_string*, %nyx_string** %33
  %50 = ptrtoint %nyx_string* %49 to i64
  call void @nyx_array_push({ i64, i8* }* %46, i64 %50)
  %51 = load { i64, i8* }*, { i64, i8* }** %43
  %52 = bitcast { i64, i8* }* %51 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %46, i8* %52)
  %53 = call { i64, i8* }* @make_astnode(%nyx_string* %45, { i64, i8* }* %46)
  ret { i64, i8* }* %53
}

define internal { i64, i8* }* @parse_extern_fn(%SharedEnv_parse* %env.param) {
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
  %18 = getelementptr [7 x i8], [7 x i8]* @.str554, i32 0, i32 0
  %19 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str554.c, i8* %18)
  %20 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %19)
  %21 = getelementptr [7 x i8], [7 x i8]* @.str555, i32 0, i32 0
  %22 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str555.c, i8* %21)
  %23 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %22)
  %24 = alloca %Token
  store %Token %23, %Token* %24
  %25 = load %Token, %Token* %24
  %26 = call %nyx_string* @get_token_value(%Token %25)
  %27 = alloca %nyx_string*
  store %nyx_string* %26, %nyx_string** %27
  %28 = getelementptr [3 x i8], [3 x i8]* @.str556, i32 0, i32 0
  %29 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str556.c, i8* %28)
  %30 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %29)
  %31 = getelementptr [11 x i8], [11 x i8]* @.str557, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str557.c, i8* %31)
  %33 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %32)
  %34 = alloca %Token
  store %Token %33, %Token* %34
  %35 = load %Token, %Token* %34
  %36 = call %nyx_string* @get_token_value(%Token %35)
  %37 = alloca %nyx_string*
  store %nyx_string* %36, %nyx_string** %37
  %38 = getelementptr [11 x i8], [11 x i8]* @.str558, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str558.c, i8* %38)
  %40 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %39)
  %41 = call { i64, i8* }* @nyx_array_new_ptr()
  %42 = alloca { i64, i8* }*
  store { i64, i8* }* %41, { i64, i8* }** %42
  %43 = alloca i1
  store i1 0, i1* %43
  br label %while_cond0
while_cond0:
  %44 = load i1, i1* %43
  %45 = xor i1 %44, true
  br i1 %45, label %while_body1, label %while_end2
while_body1:
  %46 = getelementptr [12 x i8], [12 x i8]* @.str559, i32 0, i32 0
  %47 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str559.c, i8* %46)
  %48 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %47)
  br i1 %48, label %then3, label %else4
then3:
  %49 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %43
  br label %merge5
else4:
  %50 = load { i64, i8* }*, { i64, i8* }** %42
  %51 = call i64 @nyx_array_length({ i64, i8* }* %50)
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %then6, label %else7
then6:
  %53 = getelementptr [6 x i8], [6 x i8]* @.str560, i32 0, i32 0
  %54 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str560.c, i8* %53)
  %55 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %54)
  br label %merge8
else7:
  br label %merge8
merge8:
  %56 = getelementptr [11 x i8], [11 x i8]* @.str561, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str561.c, i8* %56)
  %58 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %57)
  %59 = alloca %Token
  store %Token %58, %Token* %59
  %60 = load %Token, %Token* %59
  %61 = call %nyx_string* @get_token_value(%Token %60)
  %62 = alloca %nyx_string*
  store %nyx_string* %61, %nyx_string** %62
  %63 = getelementptr [6 x i8], [6 x i8]* @.str562, i32 0, i32 0
  %64 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str562.c, i8* %63)
  %65 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %64)
  %66 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  %67 = alloca %nyx_string*
  store %nyx_string* %66, %nyx_string** %67
  %68 = load { i64, i8* }*, { i64, i8* }** %42
  %69 = call { i64, i8* }* @nyx_array_new_ptr()
  %70 = load %nyx_string*, %nyx_string** %62
  %71 = ptrtoint %nyx_string* %70 to i64
  call void @nyx_array_push({ i64, i8* }* %69, i64 %71)
  %72 = load %nyx_string*, %nyx_string** %67
  %73 = ptrtoint %nyx_string* %72 to i64
  call void @nyx_array_push({ i64, i8* }* %69, i64 %73)
  %74 = ptrtoint { i64, i8* }* %69 to i64
  call void @nyx_array_push({ i64, i8* }* %68, i64 %74)
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %75 = getelementptr [5 x i8], [5 x i8]* @.str563, i32 0, i32 0
  %76 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str563.c, i8* %75)
  %77 = alloca %nyx_string*
  store %nyx_string* %76, %nyx_string** %77
  %78 = getelementptr [6 x i8], [6 x i8]* @.str564, i32 0, i32 0
  %79 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str564.c, i8* %78)
  %80 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %79)
  br i1 %80, label %then9, label %else10
then9:
  %81 = call %Token @advance(%SharedEnv_parse* %env.param)
  %82 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %82, %nyx_string** %77
  br label %merge11
else10:
  br label %merge11
merge11:
  %83 = getelementptr [10 x i8], [10 x i8]* @.str565, i32 0, i32 0
  %84 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str565.c, i8* %83)
  %85 = call { i64, i8* }* @nyx_array_new_ptr()
  %86 = load %nyx_string*, %nyx_string** %37
  %87 = ptrtoint %nyx_string* %86 to i64
  call void @nyx_array_push({ i64, i8* }* %85, i64 %87)
  %88 = load { i64, i8* }*, { i64, i8* }** %42
  %89 = bitcast { i64, i8* }* %88 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %85, i8* %89)
  %90 = load %nyx_string*, %nyx_string** %77
  %91 = ptrtoint %nyx_string* %90 to i64
  call void @nyx_array_push({ i64, i8* }* %85, i64 %91)
  %92 = load %nyx_string*, %nyx_string** %27
  %93 = ptrtoint %nyx_string* %92 to i64
  call void @nyx_array_push({ i64, i8* }* %85, i64 %93)
  %94 = call { i64, i8* }* @make_astnode(%nyx_string* %84, { i64, i8* }* %85)
  ret { i64, i8* }* %94
}

define internal { i64, i8* }* @parse_macro_def(%SharedEnv_parse* %env.param) {
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
  %18 = call %Token @advance(%SharedEnv_parse* %env.param)
  %19 = getelementptr [11 x i8], [11 x i8]* @.str566, i32 0, i32 0
  %20 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str566.c, i8* %19)
  %21 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %20)
  %22 = alloca %Token
  store %Token %21, %Token* %22
  %23 = load %Token, %Token* %22
  %24 = call %nyx_string* @get_token_value(%Token %23)
  %25 = alloca %nyx_string*
  store %nyx_string* %24, %nyx_string** %25
  %26 = getelementptr [11 x i8], [11 x i8]* @.str567, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str567.c, i8* %26)
  %28 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %27)
  %29 = getelementptr [11 x i8], [11 x i8]* @.str568, i32 0, i32 0
  %30 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str568.c, i8* %29)
  %31 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %30)
  %32 = call { i64, i8* }* @nyx_array_new_ptr()
  %33 = alloca { i64, i8* }*
  store { i64, i8* }* %32, { i64, i8* }** %33
  %34 = alloca i1
  store i1 0, i1* %34
  br label %while_cond0
while_cond0:
  %35 = load i1, i1* %34
  %36 = xor i1 %35, true
  br i1 %36, label %while_body1, label %while_end2
while_body1:
  %37 = getelementptr [12 x i8], [12 x i8]* @.str569, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str569.c, i8* %37)
  %39 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %38)
  br i1 %39, label %then3, label %else4
then3:
  %40 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %34
  br label %merge5
else4:
  %41 = load { i64, i8* }*, { i64, i8* }** %33
  %42 = call i64 @nyx_array_length({ i64, i8* }* %41)
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %then6, label %else7
then6:
  %44 = getelementptr [6 x i8], [6 x i8]* @.str570, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str570.c, i8* %44)
  %46 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %45)
  br label %merge8
else7:
  br label %merge8
merge8:
  %47 = getelementptr [11 x i8], [11 x i8]* @.str571, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str571.c, i8* %47)
  %49 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %48)
  %50 = alloca %Token
  store %Token %49, %Token* %50
  %51 = load { i64, i8* }*, { i64, i8* }** %33
  %52 = load %Token, %Token* %50
  %53 = call %nyx_string* @get_token_value(%Token %52)
  %54 = ptrtoint %nyx_string* %53 to i64
  call void @nyx_array_push({ i64, i8* }* %51, i64 %54)
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %55 = getelementptr [12 x i8], [12 x i8]* @.str572, i32 0, i32 0
  %56 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str572.c, i8* %55)
  %57 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %56)
  %58 = load i64, i64* %4
  %59 = alloca i64
  store i64 %58, i64* %59
  %60 = call { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param)
  %61 = getelementptr [12 x i8], [12 x i8]* @.str573, i32 0, i32 0
  %62 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str573.c, i8* %61)
  %63 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %62)
  %64 = getelementptr [1 x i8], [1 x i8]* @.str574, i32 0, i32 0
  %65 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str574.c, i8* %64)
  %66 = alloca %nyx_string*
  store %nyx_string* %65, %nyx_string** %66
  %67 = alloca i64
  store i64 0, i64* %67
  br label %while_cond9
while_cond9:
  %68 = load i64, i64* %67
  %69 = load { i64, i8* }*, { i64, i8* }** %33
  %70 = call i64 @nyx_array_length({ i64, i8* }* %69)
  %71 = icmp slt i64 %68, %70
  br i1 %71, label %while_body10, label %while_end11
while_body10:
  %72 = load i64, i64* %67
  %73 = icmp sgt i64 %72, 0
  br i1 %73, label %then12, label %else13
then12:
  %74 = load %nyx_string*, %nyx_string** %66
  %75 = getelementptr [2 x i8], [2 x i8]* @.str575, i32 0, i32 0
  %76 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str575.c, i8* %75)
  %77 = call %nyx_string* @nyx_string_concat(%nyx_string* %74, %nyx_string* %76)
  store %nyx_string* %77, %nyx_string** %66
  br label %merge14
else13:
  br label %merge14
merge14:
  %78 = load { i64, i8* }*, { i64, i8* }** %33
  %79 = load i64, i64* %67
  %80 = call i64 @nyx_array_get({ i64, i8* }* %78, i64 %79)
  %81 = inttoptr i64 %80 to %nyx_string*
  %82 = alloca %nyx_string*
  store %nyx_string* %81, %nyx_string** %82
  %83 = load %nyx_string*, %nyx_string** %66
  %84 = load %nyx_string*, %nyx_string** %82
  %85 = call %nyx_string* @nyx_string_concat(%nyx_string* %83, %nyx_string* %84)
  store %nyx_string* %85, %nyx_string** %66
  %86 = load i64, i64* %67
  %87 = add i64 %86, 1
  store i64 %87, i64* %67
  br label %while_cond9
while_end11:
  %88 = load { i64, i8* }*, { i64, i8* }** %12
  %89 = load %nyx_string*, %nyx_string** %25
  %90 = ptrtoint %nyx_string* %89 to i64
  call void @nyx_array_push({ i64, i8* }* %88, i64 %90)
  %91 = load { i64, i8* }*, { i64, i8* }** %13
  %92 = load i64, i64* %59
  call void @nyx_array_push({ i64, i8* }* %91, i64 %92)
  %93 = load { i64, i8* }*, { i64, i8* }** %14
  %94 = load %nyx_string*, %nyx_string** %66
  %95 = ptrtoint %nyx_string* %94 to i64
  call void @nyx_array_push({ i64, i8* }* %93, i64 %95)
  %96 = getelementptr [10 x i8], [10 x i8]* @.str576, i32 0, i32 0
  %97 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str576.c, i8* %96)
  %98 = call { i64, i8* }* @nyx_array_new_ptr()
  %99 = load %nyx_string*, %nyx_string** %25
  %100 = ptrtoint %nyx_string* %99 to i64
  call void @nyx_array_push({ i64, i8* }* %98, i64 %100)
  %101 = call { i64, i8* }* @make_astnode(%nyx_string* %97, { i64, i8* }* %98)
  ret { i64, i8* }* %101
}

define internal { i64, i8* }* @parse_macro_invocation(%SharedEnv_parse* %env.param, %nyx_string* %mac_name.param) {
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
  %18 = alloca %nyx_string*
  store %nyx_string* %mac_name.param, %nyx_string** %18
  %19 = getelementptr [4 x i8], [4 x i8]* @.str577, i32 0, i32 0
  %20 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str577.c, i8* %19)
  %21 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %20)
  %22 = getelementptr [11 x i8], [11 x i8]* @.str578, i32 0, i32 0
  %23 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str578.c, i8* %22)
  %24 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %23)
  %25 = call { i64, i8* }* @nyx_array_new_ptr()
  %26 = alloca { i64, i8* }*
  store { i64, i8* }* %25, { i64, i8* }** %26
  %27 = alloca i1
  store i1 0, i1* %27
  br label %while_cond0
while_cond0:
  %28 = load i1, i1* %27
  %29 = xor i1 %28, true
  br i1 %29, label %while_body1, label %while_end2
while_body1:
  %30 = getelementptr [12 x i8], [12 x i8]* @.str579, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str579.c, i8* %30)
  %32 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %31)
  br i1 %32, label %then3, label %else4
then3:
  %33 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %27
  br label %merge5
else4:
  %34 = load { i64, i8* }*, { i64, i8* }** %26
  %35 = call i64 @nyx_array_length({ i64, i8* }* %34)
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %then6, label %else7
then6:
  %37 = getelementptr [6 x i8], [6 x i8]* @.str580, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str580.c, i8* %37)
  %39 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %38)
  br label %merge8
else7:
  br label %merge8
merge8:
  %40 = load { i64, i8* }*, { i64, i8* }** %26
  %41 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %42 = ptrtoint { i64, i8* }* %41 to i64
  call void @nyx_array_push({ i64, i8* }* %40, i64 %42)
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %43 = alloca i64
  store i64 0, i64* %43
  %44 = alloca i64
  store i64 0, i64* %44
  br label %while_cond9
while_cond9:
  %45 = load i64, i64* %44
  %46 = load { i64, i8* }*, { i64, i8* }** %12
  %47 = call i64 @nyx_array_length({ i64, i8* }* %46)
  %48 = icmp slt i64 %45, %47
  br i1 %48, label %while_body10, label %while_end11
while_body10:
  %49 = load { i64, i8* }*, { i64, i8* }** %12
  %50 = load i64, i64* %44
  %51 = call i64 @nyx_array_get({ i64, i8* }* %49, i64 %50)
  %52 = inttoptr i64 %51 to %nyx_string*
  %53 = alloca %nyx_string*
  store %nyx_string* %52, %nyx_string** %53
  %54 = load %nyx_string*, %nyx_string** %53
  %55 = load %nyx_string*, %nyx_string** %18
  %56 = call i1 @nyx_string_equals(%nyx_string* %54, %nyx_string* %55)
  br i1 %56, label %then12, label %else13
then12:
  %57 = load i64, i64* %44
  store i64 %57, i64* %43
  br label %merge14
else13:
  br label %merge14
merge14:
  %58 = load i64, i64* %44
  %59 = add i64 %58, 1
  store i64 %59, i64* %44
  br label %while_cond9
while_end11:
  %60 = load { i64, i8* }*, { i64, i8* }** %14
  %61 = load i64, i64* %43
  %62 = call i64 @nyx_array_get({ i64, i8* }* %60, i64 %61)
  %63 = inttoptr i64 %62 to %nyx_string*
  %64 = alloca %nyx_string*
  store %nyx_string* %63, %nyx_string** %64
  %65 = load { i64, i8* }*, { i64, i8* }** %13
  %66 = load i64, i64* %43
  %67 = call i64 @nyx_array_get({ i64, i8* }* %65, i64 %66)
  %68 = alloca i64
  store i64 %67, i64* %68
  %69 = call { i64, i8* }* @nyx_array_new_ptr()
  %70 = alloca { i64, i8* }*
  store { i64, i8* }* %69, { i64, i8* }** %70
  %71 = load %nyx_string*, %nyx_string** %64
  %72 = getelementptr [1 x i8], [1 x i8]* @.str581, i32 0, i32 0
  %73 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str581.c, i8* %72)
  %74 = call i1 @nyx_string_equals(%nyx_string* %71, %nyx_string* %73)
  %75 = xor i1 %74, true
  br i1 %75, label %then15, label %else16
then15:
  %76 = load %nyx_string*, %nyx_string** %64
  %77 = getelementptr [2 x i8], [2 x i8]* @.str582, i32 0, i32 0
  %78 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str582.c, i8* %77)
  %79 = call { i64, i8* }* @nyx_string_split(%nyx_string* %76, %nyx_string* %78)
  store { i64, i8* }* %79, { i64, i8* }** %70
  br label %merge17
else16:
  br label %merge17
merge17:
  %80 = load i64, i64* %4
  %81 = alloca i64
  store i64 %80, i64* %81
  %82 = load { i64, i8* }*, { i64, i8* }** %70
  store { i64, i8* }* %82, { i64, i8* }** %15
  %83 = load { i64, i8* }*, { i64, i8* }** %26
  store { i64, i8* }* %83, { i64, i8* }** %16
  %84 = load i64, i64* %68
  store i64 %84, i64* %4
  %85 = call { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param)
  %86 = alloca { i64, i8* }*
  store { i64, i8* }* %85, { i64, i8* }** %86
  %87 = load i64, i64* %81
  store i64 %87, i64* %4
  %88 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %88, { i64, i8* }** %15
  %89 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %89, { i64, i8* }** %16
  %90 = load { i64, i8* }*, { i64, i8* }** %86
  ret { i64, i8* }* %90
}

define internal { i64, i8* }* @parse_type_alias(%SharedEnv_parse* %env.param) {
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
  %18 = call %Token @advance(%SharedEnv_parse* %env.param)
  %19 = getelementptr [11 x i8], [11 x i8]* @.str583, i32 0, i32 0
  %20 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str583.c, i8* %19)
  %21 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %20)
  %22 = alloca %Token
  store %Token %21, %Token* %22
  %23 = load %Token, %Token* %22
  %24 = call %nyx_string* @get_token_value(%Token %23)
  %25 = alloca %nyx_string*
  store %nyx_string* %24, %nyx_string** %25
  %26 = getelementptr [7 x i8], [7 x i8]* @.str584, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str584.c, i8* %26)
  %28 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %27)
  %29 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  %30 = alloca %nyx_string*
  store %nyx_string* %29, %nyx_string** %30
  %31 = getelementptr [5 x i8], [5 x i8]* @.str585, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str585.c, i8* %31)
  %33 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %32)
  br i1 %33, label %then0, label %else1
then0:
  %34 = call { i64, i8* }* @nyx_array_new_ptr()
  %35 = load %nyx_string*, %nyx_string** %30
  %36 = ptrtoint %nyx_string* %35 to i64
  call void @nyx_array_push({ i64, i8* }* %34, i64 %36)
  %37 = alloca { i64, i8* }*
  store { i64, i8* }* %34, { i64, i8* }** %37
  br label %while_cond3
while_cond3:
  %38 = getelementptr [5 x i8], [5 x i8]* @.str586, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str586.c, i8* %38)
  %40 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %39)
  br i1 %40, label %while_body4, label %while_end5
while_body4:
  %41 = call %Token @advance(%SharedEnv_parse* %env.param)
  %42 = load { i64, i8* }*, { i64, i8* }** %37
  %43 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  %44 = ptrtoint %nyx_string* %43 to i64
  call void @nyx_array_push({ i64, i8* }* %42, i64 %44)
  br label %while_cond3
while_end5:
  %45 = call { i64, i8* }* @nyx_array_new_ptr()
  %46 = alloca { i64, i8* }*
  store { i64, i8* }* %45, { i64, i8* }** %46
  %47 = alloca i64
  store i64 0, i64* %47
  br label %while_cond6
while_cond6:
  %48 = load i64, i64* %47
  %49 = load { i64, i8* }*, { i64, i8* }** %37
  %50 = call i64 @nyx_array_length({ i64, i8* }* %49)
  %51 = icmp slt i64 %48, %50
  br i1 %51, label %while_body7, label %while_end8
while_body7:
  %52 = load { i64, i8* }*, { i64, i8* }** %37
  %53 = load i64, i64* %47
  %54 = call i64 @nyx_array_get({ i64, i8* }* %52, i64 %53)
  %55 = inttoptr i64 %54 to %nyx_string*
  %56 = alloca %nyx_string*
  store %nyx_string* %55, %nyx_string** %56
  %57 = call { i64, i8* }* @nyx_array_new_ptr()
  %58 = load %nyx_string*, %nyx_string** %56
  %59 = ptrtoint %nyx_string* %58 to i64
  call void @nyx_array_push({ i64, i8* }* %57, i64 %59)
  %60 = alloca { i64, i8* }*
  store { i64, i8* }* %57, { i64, i8* }** %60
  %61 = load { i64, i8* }*, { i64, i8* }** %46
  %62 = call { i64, i8* }* @nyx_array_new_ptr()
  %63 = load %nyx_string*, %nyx_string** %56
  %64 = ptrtoint %nyx_string* %63 to i64
  call void @nyx_array_push({ i64, i8* }* %62, i64 %64)
  %65 = load { i64, i8* }*, { i64, i8* }** %60
  %66 = bitcast { i64, i8* }* %65 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %62, i8* %66)
  %67 = ptrtoint { i64, i8* }* %62 to i64
  call void @nyx_array_push({ i64, i8* }* %61, i64 %67)
  %68 = load i64, i64* %47
  %69 = add i64 %68, 1
  store i64 %69, i64* %47
  br label %while_cond6
while_end8:
  %70 = getelementptr [9 x i8], [9 x i8]* @.str587, i32 0, i32 0
  %71 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str587.c, i8* %70)
  %72 = call { i64, i8* }* @nyx_array_new_ptr()
  %73 = load %nyx_string*, %nyx_string** %25
  %74 = ptrtoint %nyx_string* %73 to i64
  call void @nyx_array_push({ i64, i8* }* %72, i64 %74)
  %75 = load { i64, i8* }*, { i64, i8* }** %46
  %76 = bitcast { i64, i8* }* %75 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %72, i8* %76)
  %77 = call { i64, i8* }* @nyx_array_new_ptr()
  %78 = bitcast { i64, i8* }* %77 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %72, i8* %78)
  %79 = call { i64, i8* }* @make_astnode(%nyx_string* %71, { i64, i8* }* %72)
  ret { i64, i8* }* %79
else1:
  br label %merge2
merge2:
  %80 = getelementptr [11 x i8], [11 x i8]* @.str588, i32 0, i32 0
  %81 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str588.c, i8* %80)
  %82 = call { i64, i8* }* @nyx_array_new_ptr()
  %83 = load %nyx_string*, %nyx_string** %25
  %84 = ptrtoint %nyx_string* %83 to i64
  call void @nyx_array_push({ i64, i8* }* %82, i64 %84)
  %85 = load %nyx_string*, %nyx_string** %30
  %86 = ptrtoint %nyx_string* %85 to i64
  call void @nyx_array_push({ i64, i8* }* %82, i64 %86)
  %87 = call { i64, i8* }* @make_astnode(%nyx_string* %81, { i64, i8* }* %82)
  ret { i64, i8* }* %87
}

define internal %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param) {
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
  %18 = getelementptr [11 x i8], [11 x i8]* @.str589, i32 0, i32 0
  %19 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str589.c, i8* %18)
  %20 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %19)
  br i1 %20, label %then0, label %else1
then0:
  %21 = call %Token @advance(%SharedEnv_parse* %env.param)
  %22 = getelementptr [2 x i8], [2 x i8]* @.str590, i32 0, i32 0
  %23 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str590.c, i8* %22)
  %24 = alloca %nyx_string*
  store %nyx_string* %23, %nyx_string** %24
  %25 = load %nyx_string*, %nyx_string** %24
  %26 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  %27 = call %nyx_string* @nyx_string_concat(%nyx_string* %25, %nyx_string* %26)
  store %nyx_string* %27, %nyx_string** %24
  br label %while_cond3
while_cond3:
  %28 = getelementptr [6 x i8], [6 x i8]* @.str591, i32 0, i32 0
  %29 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str591.c, i8* %28)
  %30 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %29)
  br i1 %30, label %while_body4, label %while_end5
while_body4:
  %31 = call %Token @advance(%SharedEnv_parse* %env.param)
  %32 = load %nyx_string*, %nyx_string** %24
  %33 = getelementptr [2 x i8], [2 x i8]* @.str592, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str592.c, i8* %33)
  %35 = call %nyx_string* @nyx_string_concat(%nyx_string* %32, %nyx_string* %34)
  %36 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  %37 = call %nyx_string* @nyx_string_concat(%nyx_string* %35, %nyx_string* %36)
  store %nyx_string* %37, %nyx_string** %24
  br label %while_cond3
while_end5:
  %38 = getelementptr [12 x i8], [12 x i8]* @.str593, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str593.c, i8* %38)
  %40 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %39)
  %41 = load %nyx_string*, %nyx_string** %24
  %42 = getelementptr [2 x i8], [2 x i8]* @.str594, i32 0, i32 0
  %43 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str594.c, i8* %42)
  %44 = call %nyx_string* @nyx_string_concat(%nyx_string* %41, %nyx_string* %43)
  store %nyx_string* %44, %nyx_string** %24
  %45 = load %nyx_string*, %nyx_string** %24
  ret %nyx_string* %45
else1:
  br label %merge2
merge2:
  %46 = getelementptr [3 x i8], [3 x i8]* @.str595, i32 0, i32 0
  %47 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str595.c, i8* %46)
  %48 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %47)
  br i1 %48, label %then6, label %else7
then6:
  %49 = call %Token @advance(%SharedEnv_parse* %env.param)
  %50 = getelementptr [3 x i8], [3 x i8]* @.str596, i32 0, i32 0
  %51 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str596.c, i8* %50)
  ret %nyx_string* %51
else7:
  br label %merge8
merge8:
  %52 = getelementptr [5 x i8], [5 x i8]* @.str597, i32 0, i32 0
  %53 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str597.c, i8* %52)
  %54 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %53)
  br i1 %54, label %then9, label %else10
then9:
  %55 = call %Token @advance(%SharedEnv_parse* %env.param)
  %56 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  %57 = alloca %nyx_string*
  store %nyx_string* %56, %nyx_string** %57
  %58 = getelementptr [2 x i8], [2 x i8]* @.str598, i32 0, i32 0
  %59 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str598.c, i8* %58)
  %60 = load %nyx_string*, %nyx_string** %57
  %61 = call %nyx_string* @nyx_string_concat(%nyx_string* %59, %nyx_string* %60)
  ret %nyx_string* %61
else10:
  br label %merge11
merge11:
  %62 = getelementptr [4 x i8], [4 x i8]* @.str599, i32 0, i32 0
  %63 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str599.c, i8* %62)
  %64 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %63)
  br i1 %64, label %then12, label %else13
then12:
  %65 = call %Token @advance(%SharedEnv_parse* %env.param)
  %66 = getelementptr [9 x i8], [9 x i8]* @.str600, i32 0, i32 0
  %67 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str600.c, i8* %66)
  %68 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %67)
  br i1 %68, label %then15, label %else16
then15:
  %69 = call %Token @advance(%SharedEnv_parse* %env.param)
  %70 = alloca %Token
  store %Token %69, %Token* %70
  %71 = load %Token, %Token* %70
  %72 = call %nyx_string* @get_token_value(%Token %71)
  %73 = alloca %nyx_string*
  store %nyx_string* %72, %nyx_string** %73
  %74 = load %nyx_string*, %nyx_string** %73
  %75 = call i64 @nyx_string_byte_length(%nyx_string* %74)
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %then18, label %else19
then18:
  %77 = load %nyx_string*, %nyx_string** %73
  %78 = call i8 @nyx_string_char_at(%nyx_string* %77, i64 0)
  %79 = zext i8 %78 to i64
  %80 = getelementptr [1 x i8], [1 x i8]* @.str601, i32 0, i32 0
  %81 = load i8, i8* %80
  %82 = zext i8 %81 to i64
  %83 = icmp eq i64 %79, %82
  br i1 %83, label %then21, label %else22
then21:
  %84 = load %nyx_string*, %nyx_string** %73
  %85 = load %nyx_string*, %nyx_string** %73
  %86 = call i64 @nyx_string_byte_length(%nyx_string* %85)
  %87 = call %nyx_string* @nyx_string_substring(%nyx_string* %84, i64 1, i64 %86)
  store %nyx_string* %87, %nyx_string** %73
  br label %merge23
else22:
  br label %merge23
merge23:
  br label %merge20
else19:
  br label %merge20
merge20:
  %88 = load { i64, i8* }*, { i64, i8* }** %17
  %89 = load %nyx_string*, %nyx_string** %73
  %90 = ptrtoint %nyx_string* %89 to i64
  call void @nyx_array_set({ i64, i8* }* %88, i64 0, i64 %90)
  br label %merge17
else16:
  br label %merge17
merge17:
  %91 = call %Token @peek(%SharedEnv_parse* %env.param)
  %92 = alloca %Token
  store %Token %91, %Token* %92
  %93 = load %Token, %Token* %92
  %94 = call %nyx_string* @get_token_value(%Token %93)
  %95 = alloca %nyx_string*
  store %nyx_string* %94, %nyx_string** %95
  %96 = alloca i1
  store i1 0, i1* %96
  %97 = load %nyx_string*, %nyx_string** %95
  %98 = getelementptr [4 x i8], [4 x i8]* @.str602, i32 0, i32 0
  %99 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str602.c, i8* %98)
  %100 = call i1 @nyx_string_equals(%nyx_string* %97, %nyx_string* %99)
  br i1 %100, label %then24, label %else25
then24:
  %101 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %96
  br label %merge26
else25:
  br label %merge26
merge26:
  %102 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  %103 = alloca %nyx_string*
  store %nyx_string* %102, %nyx_string** %103
  %104 = load i1, i1* %96
  br i1 %104, label %then27, label %else28
then27:
  %105 = getelementptr [6 x i8], [6 x i8]* @.str603, i32 0, i32 0
  %106 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str603.c, i8* %105)
  %107 = load %nyx_string*, %nyx_string** %103
  %108 = call %nyx_string* @nyx_string_concat(%nyx_string* %106, %nyx_string* %107)
  ret %nyx_string* %108
else28:
  br label %merge29
merge29:
  %109 = getelementptr [2 x i8], [2 x i8]* @.str604, i32 0, i32 0
  %110 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str604.c, i8* %109)
  %111 = load %nyx_string*, %nyx_string** %103
  %112 = call %nyx_string* @nyx_string_concat(%nyx_string* %110, %nyx_string* %111)
  ret %nyx_string* %112
else13:
  br label %merge14
merge14:
  %113 = getelementptr [9 x i8], [9 x i8]* @.str605, i32 0, i32 0
  %114 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str605.c, i8* %113)
  %115 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %114)
  br i1 %115, label %then30, label %else31
then30:
  %116 = call %Token @advance(%SharedEnv_parse* %env.param)
  %117 = alloca %Token
  store %Token %116, %Token* %117
  %118 = load %Token, %Token* %117
  %119 = call %nyx_string* @get_token_value(%Token %118)
  ret %nyx_string* %119
else31:
  br label %merge32
merge32:
  %120 = getelementptr [13 x i8], [13 x i8]* @.str606, i32 0, i32 0
  %121 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str606.c, i8* %120)
  %122 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %121)
  br i1 %122, label %then33, label %else34
then33:
  %123 = call %Token @advance(%SharedEnv_parse* %env.param)
  %124 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  %125 = alloca %nyx_string*
  store %nyx_string* %124, %nyx_string** %125
  %126 = getelementptr [6 x i8], [6 x i8]* @.str607, i32 0, i32 0
  %127 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str607.c, i8* %126)
  %128 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %127)
  %129 = getelementptr [7 x i8], [7 x i8]* @.str608, i32 0, i32 0
  %130 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str608.c, i8* %129)
  %131 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %130)
  %132 = alloca %Token
  store %Token %131, %Token* %132
  %133 = load %Token, %Token* %132
  %134 = call %nyx_string* @get_token_value(%Token %133)
  %135 = alloca %nyx_string*
  store %nyx_string* %134, %nyx_string** %135
  %136 = getelementptr [14 x i8], [14 x i8]* @.str609, i32 0, i32 0
  %137 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str609.c, i8* %136)
  %138 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %137)
  %139 = getelementptr [2 x i8], [2 x i8]* @.str610, i32 0, i32 0
  %140 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str610.c, i8* %139)
  %141 = load %nyx_string*, %nyx_string** %125
  %142 = call %nyx_string* @nyx_string_concat(%nyx_string* %140, %nyx_string* %141)
  %143 = getelementptr [2 x i8], [2 x i8]* @.str611, i32 0, i32 0
  %144 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str611.c, i8* %143)
  %145 = call %nyx_string* @nyx_string_concat(%nyx_string* %142, %nyx_string* %144)
  %146 = load %nyx_string*, %nyx_string** %135
  %147 = call %nyx_string* @nyx_string_concat(%nyx_string* %145, %nyx_string* %146)
  %148 = getelementptr [2 x i8], [2 x i8]* @.str612, i32 0, i32 0
  %149 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str612.c, i8* %148)
  %150 = call %nyx_string* @nyx_string_concat(%nyx_string* %147, %nyx_string* %149)
  ret %nyx_string* %150
else34:
  br label %merge35
merge35:
  %151 = getelementptr [4 x i8], [4 x i8]* @.str613, i32 0, i32 0
  %152 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str613.c, i8* %151)
  %153 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %152)
  br i1 %153, label %then36, label %else37
then36:
  %154 = call %Token @advance(%SharedEnv_parse* %env.param)
  %155 = getelementptr [11 x i8], [11 x i8]* @.str614, i32 0, i32 0
  %156 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str614.c, i8* %155)
  %157 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %156)
  %158 = alloca %Token
  store %Token %157, %Token* %158
  %159 = load %Token, %Token* %158
  %160 = call %nyx_string* @get_token_value(%Token %159)
  %161 = alloca %nyx_string*
  store %nyx_string* %160, %nyx_string** %161
  %162 = getelementptr [5 x i8], [5 x i8]* @.str615, i32 0, i32 0
  %163 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str615.c, i8* %162)
  %164 = load %nyx_string*, %nyx_string** %161
  %165 = call %nyx_string* @nyx_string_concat(%nyx_string* %163, %nyx_string* %164)
  ret %nyx_string* %165
else37:
  br label %merge38
merge38:
  %166 = getelementptr [5 x i8], [5 x i8]* @.str616, i32 0, i32 0
  %167 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str616.c, i8* %166)
  %168 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %167)
  br i1 %168, label %then39, label %else40
then39:
  %169 = call %Token @advance(%SharedEnv_parse* %env.param)
  %170 = getelementptr [11 x i8], [11 x i8]* @.str617, i32 0, i32 0
  %171 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str617.c, i8* %170)
  %172 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %171)
  %173 = alloca %Token
  store %Token %172, %Token* %173
  %174 = load %Token, %Token* %173
  %175 = call %nyx_string* @get_token_value(%Token %174)
  %176 = alloca %nyx_string*
  store %nyx_string* %175, %nyx_string** %176
  br label %while_cond42
while_cond42:
  %177 = getelementptr [5 x i8], [5 x i8]* @.str618, i32 0, i32 0
  %178 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str618.c, i8* %177)
  %179 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %178)
  br i1 %179, label %while_body43, label %while_end44
while_body43:
  %180 = call %Token @advance(%SharedEnv_parse* %env.param)
  %181 = getelementptr [11 x i8], [11 x i8]* @.str619, i32 0, i32 0
  %182 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str619.c, i8* %181)
  %183 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %182)
  %184 = alloca %Token
  store %Token %183, %Token* %184
  %185 = load %nyx_string*, %nyx_string** %176
  %186 = getelementptr [2 x i8], [2 x i8]* @.str620, i32 0, i32 0
  %187 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str620.c, i8* %186)
  %188 = call %nyx_string* @nyx_string_concat(%nyx_string* %185, %nyx_string* %187)
  %189 = load %Token, %Token* %184
  %190 = call %nyx_string* @get_token_value(%Token %189)
  %191 = call %nyx_string* @nyx_string_concat(%nyx_string* %188, %nyx_string* %190)
  store %nyx_string* %191, %nyx_string** %176
  br label %while_cond42
while_end44:
  %192 = getelementptr [5 x i8], [5 x i8]* @.str621, i32 0, i32 0
  %193 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str621.c, i8* %192)
  %194 = load %nyx_string*, %nyx_string** %176
  %195 = call %nyx_string* @nyx_string_concat(%nyx_string* %193, %nyx_string* %194)
  ret %nyx_string* %195
else40:
  br label %merge41
merge41:
  %196 = getelementptr [11 x i8], [11 x i8]* @.str622, i32 0, i32 0
  %197 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str622.c, i8* %196)
  %198 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %197)
  %199 = alloca %Token
  store %Token %198, %Token* %199
  %200 = load %Token, %Token* %199
  %201 = call %nyx_string* @get_token_value(%Token %200)
  %202 = alloca %nyx_string*
  store %nyx_string* %201, %nyx_string** %202
  %203 = alloca i1
  store i1 false, i1* %203
  %204 = load %nyx_string*, %nyx_string** %202
  %205 = getelementptr [5 x i8], [5 x i8]* @.str623, i32 0, i32 0
  %206 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str623.c, i8* %205)
  %207 = call i1 @nyx_string_equals(%nyx_string* %204, %nyx_string* %206)
  br i1 %207, label %sc_and_rhs45, label %sc_and_end46
sc_and_rhs45:
  %208 = getelementptr [4 x i8], [4 x i8]* @.str624, i32 0, i32 0
  %209 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str624.c, i8* %208)
  %210 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %209)
  store i1 %210, i1* %203
  br label %sc_and_end46
sc_and_end46:
  %211 = load i1, i1* %203
  br i1 %211, label %then47, label %else48
then47:
  %212 = call %Token @advance(%SharedEnv_parse* %env.param)
  %213 = getelementptr [11 x i8], [11 x i8]* @.str625, i32 0, i32 0
  %214 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str625.c, i8* %213)
  %215 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %214)
  %216 = alloca %Token
  store %Token %215, %Token* %216
  %217 = getelementptr [6 x i8], [6 x i8]* @.str626, i32 0, i32 0
  %218 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str626.c, i8* %217)
  %219 = load %Token, %Token* %216
  %220 = call %nyx_string* @get_token_value(%Token %219)
  %221 = call %nyx_string* @nyx_string_concat(%nyx_string* %218, %nyx_string* %220)
  store %nyx_string* %221, %nyx_string** %202
  %222 = load %nyx_string*, %nyx_string** %202
  ret %nyx_string* %222
else48:
  br label %merge49
merge49:
  %223 = alloca i1
  store i1 false, i1* %223
  %224 = load %nyx_string*, %nyx_string** %202
  %225 = getelementptr [3 x i8], [3 x i8]* @.str627, i32 0, i32 0
  %226 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str627.c, i8* %225)
  %227 = call i1 @nyx_string_equals(%nyx_string* %224, %nyx_string* %226)
  br i1 %227, label %sc_and_rhs50, label %sc_and_end51
sc_and_rhs50:
  %228 = getelementptr [11 x i8], [11 x i8]* @.str628, i32 0, i32 0
  %229 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str628.c, i8* %228)
  %230 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %229)
  store i1 %230, i1* %223
  br label %sc_and_end51
sc_and_end51:
  %231 = load i1, i1* %223
  br i1 %231, label %then52, label %else53
then52:
  %232 = call %Token @advance(%SharedEnv_parse* %env.param)
  %233 = getelementptr [4 x i8], [4 x i8]* @.str629, i32 0, i32 0
  %234 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str629.c, i8* %233)
  %235 = alloca %nyx_string*
  store %nyx_string* %234, %nyx_string** %235
  %236 = getelementptr [12 x i8], [12 x i8]* @.str630, i32 0, i32 0
  %237 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str630.c, i8* %236)
  %238 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %237)
  %239 = xor i1 %238, true
  br i1 %239, label %then55, label %else56
then55:
  %240 = load %nyx_string*, %nyx_string** %235
  %241 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  %242 = call %nyx_string* @nyx_string_concat(%nyx_string* %240, %nyx_string* %241)
  store %nyx_string* %242, %nyx_string** %235
  %243 = alloca i1
  store i1 0, i1* %243
  br label %while_cond58
while_cond58:
  %244 = load i1, i1* %243
  %245 = xor i1 %244, true
  br i1 %245, label %while_body59, label %while_end60
while_body59:
  %246 = getelementptr [6 x i8], [6 x i8]* @.str631, i32 0, i32 0
  %247 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str631.c, i8* %246)
  %248 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %247)
  br i1 %248, label %then61, label %else62
then61:
  %249 = call %Token @advance(%SharedEnv_parse* %env.param)
  %250 = load %nyx_string*, %nyx_string** %235
  %251 = getelementptr [2 x i8], [2 x i8]* @.str632, i32 0, i32 0
  %252 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str632.c, i8* %251)
  %253 = call %nyx_string* @nyx_string_concat(%nyx_string* %250, %nyx_string* %252)
  %254 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  %255 = call %nyx_string* @nyx_string_concat(%nyx_string* %253, %nyx_string* %254)
  store %nyx_string* %255, %nyx_string** %235
  br label %merge63
else62:
  store i1 1, i1* %243
  br label %merge63
merge63:
  br label %while_cond58
while_end60:
  br label %merge57
else56:
  br label %merge57
merge57:
  %256 = getelementptr [12 x i8], [12 x i8]* @.str633, i32 0, i32 0
  %257 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str633.c, i8* %256)
  %258 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %257)
  %259 = load %nyx_string*, %nyx_string** %235
  %260 = getelementptr [2 x i8], [2 x i8]* @.str634, i32 0, i32 0
  %261 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str634.c, i8* %260)
  %262 = call %nyx_string* @nyx_string_concat(%nyx_string* %259, %nyx_string* %261)
  store %nyx_string* %262, %nyx_string** %235
  %263 = getelementptr [6 x i8], [6 x i8]* @.str635, i32 0, i32 0
  %264 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str635.c, i8* %263)
  %265 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %264)
  br i1 %265, label %then64, label %else65
then64:
  %266 = call %Token @advance(%SharedEnv_parse* %env.param)
  %267 = load %nyx_string*, %nyx_string** %235
  %268 = getelementptr [3 x i8], [3 x i8]* @.str636, i32 0, i32 0
  %269 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str636.c, i8* %268)
  %270 = call %nyx_string* @nyx_string_concat(%nyx_string* %267, %nyx_string* %269)
  %271 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  %272 = call %nyx_string* @nyx_string_concat(%nyx_string* %270, %nyx_string* %271)
  store %nyx_string* %272, %nyx_string** %235
  br label %merge66
else65:
  br label %merge66
merge66:
  %273 = load %nyx_string*, %nyx_string** %235
  ret %nyx_string* %273
else53:
  br label %merge54
merge54:
  %274 = getelementptr [5 x i8], [5 x i8]* @.str637, i32 0, i32 0
  %275 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str637.c, i8* %274)
  %276 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %275)
  br i1 %276, label %then67, label %else68
then67:
  %277 = call %Token @advance(%SharedEnv_parse* %env.param)
  %278 = load %nyx_string*, %nyx_string** %202
  %279 = getelementptr [2 x i8], [2 x i8]* @.str638, i32 0, i32 0
  %280 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str638.c, i8* %279)
  %281 = call %nyx_string* @nyx_string_concat(%nyx_string* %278, %nyx_string* %280)
  store %nyx_string* %281, %nyx_string** %202
  %282 = load %nyx_string*, %nyx_string** %202
  %283 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  %284 = call %nyx_string* @nyx_string_concat(%nyx_string* %282, %nyx_string* %283)
  store %nyx_string* %284, %nyx_string** %202
  %285 = alloca i1
  store i1 0, i1* %285
  br label %while_cond70
while_cond70:
  %286 = load i1, i1* %285
  %287 = xor i1 %286, true
  br i1 %287, label %while_body71, label %while_end72
while_body71:
  %288 = getelementptr [6 x i8], [6 x i8]* @.str639, i32 0, i32 0
  %289 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str639.c, i8* %288)
  %290 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %289)
  br i1 %290, label %then73, label %else74
then73:
  %291 = call %Token @advance(%SharedEnv_parse* %env.param)
  %292 = load %nyx_string*, %nyx_string** %202
  %293 = getelementptr [2 x i8], [2 x i8]* @.str640, i32 0, i32 0
  %294 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str640.c, i8* %293)
  %295 = call %nyx_string* @nyx_string_concat(%nyx_string* %292, %nyx_string* %294)
  store %nyx_string* %295, %nyx_string** %202
  %296 = load %nyx_string*, %nyx_string** %202
  %297 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  %298 = call %nyx_string* @nyx_string_concat(%nyx_string* %296, %nyx_string* %297)
  store %nyx_string* %298, %nyx_string** %202
  br label %merge75
else74:
  store i1 1, i1* %285
  br label %merge75
merge75:
  br label %while_cond70
while_end72:
  %299 = load i64, i64* %5
  %300 = icmp sgt i64 %299, 0
  br i1 %300, label %then76, label %else77
then76:
  %301 = load i64, i64* %5
  %302 = sub i64 %301, 1
  store i64 %302, i64* %5
  br label %merge78
else77:
  %303 = getelementptr [8 x i8], [8 x i8]* @.str641, i32 0, i32 0
  %304 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str641.c, i8* %303)
  %305 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %304)
  br i1 %305, label %then79, label %else80
then79:
  %306 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge81
else80:
  %307 = getelementptr [12 x i8], [12 x i8]* @.str642, i32 0, i32 0
  %308 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str642.c, i8* %307)
  %309 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %308)
  br i1 %309, label %then82, label %else83
then82:
  %310 = call %Token @advance(%SharedEnv_parse* %env.param)
  %311 = load i64, i64* %5
  %312 = add i64 %311, 1
  store i64 %312, i64* %5
  br label %merge84
else83:
  %313 = getelementptr [8 x i8], [8 x i8]* @.str643, i32 0, i32 0
  %314 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str643.c, i8* %313)
  %315 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %314)
  br label %merge84
merge84:
  br label %merge81
merge81:
  br label %merge78
merge78:
  %316 = load %nyx_string*, %nyx_string** %202
  %317 = getelementptr [2 x i8], [2 x i8]* @.str644, i32 0, i32 0
  %318 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str644.c, i8* %317)
  %319 = call %nyx_string* @nyx_string_concat(%nyx_string* %316, %nyx_string* %318)
  store %nyx_string* %319, %nyx_string** %202
  br label %merge69
else68:
  br label %merge69
merge69:
  %320 = load %nyx_string*, %nyx_string** %202
  ret %nyx_string* %320
}

define internal { i64, i8* }* @parse_let(%SharedEnv_parse* %env.param) {
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
  %18 = getelementptr [4 x i8], [4 x i8]* @.str645, i32 0, i32 0
  %19 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str645.c, i8* %18)
  %20 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %19)
  %21 = alloca i1
  store i1 %20, i1* %21
  %22 = call %Token @advance(%SharedEnv_parse* %env.param)
  %23 = getelementptr [11 x i8], [11 x i8]* @.str646, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str646.c, i8* %23)
  %25 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %24)
  br i1 %25, label %then0, label %else1
then0:
  %26 = call %Token @advance(%SharedEnv_parse* %env.param)
  %27 = call { i64, i8* }* @nyx_array_new_ptr()
  %28 = alloca { i64, i8* }*
  store { i64, i8* }* %27, { i64, i8* }** %28
  %29 = getelementptr [11 x i8], [11 x i8]* @.str647, i32 0, i32 0
  %30 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str647.c, i8* %29)
  %31 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %30)
  %32 = alloca %Token
  store %Token %31, %Token* %32
  %33 = load { i64, i8* }*, { i64, i8* }** %28
  %34 = load %Token, %Token* %32
  %35 = call %nyx_string* @get_token_value(%Token %34)
  %36 = ptrtoint %nyx_string* %35 to i64
  call void @nyx_array_push({ i64, i8* }* %33, i64 %36)
  br label %while_cond3
while_cond3:
  %37 = getelementptr [6 x i8], [6 x i8]* @.str648, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str648.c, i8* %37)
  %39 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %38)
  br i1 %39, label %while_body4, label %while_end5
while_body4:
  %40 = call %Token @advance(%SharedEnv_parse* %env.param)
  %41 = getelementptr [11 x i8], [11 x i8]* @.str649, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str649.c, i8* %41)
  %43 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %42)
  %44 = alloca %Token
  store %Token %43, %Token* %44
  %45 = load { i64, i8* }*, { i64, i8* }** %28
  %46 = load %Token, %Token* %44
  %47 = call %nyx_string* @get_token_value(%Token %46)
  %48 = ptrtoint %nyx_string* %47 to i64
  call void @nyx_array_push({ i64, i8* }* %45, i64 %48)
  br label %while_cond3
while_end5:
  %49 = getelementptr [12 x i8], [12 x i8]* @.str650, i32 0, i32 0
  %50 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str650.c, i8* %49)
  %51 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %50)
  %52 = getelementptr [7 x i8], [7 x i8]* @.str651, i32 0, i32 0
  %53 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str651.c, i8* %52)
  %54 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %53)
  %55 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %56 = alloca { i64, i8* }*
  store { i64, i8* }* %55, { i64, i8* }** %56
  %57 = getelementptr [22 x i8], [22 x i8]* @.str652, i32 0, i32 0
  %58 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str652.c, i8* %57)
  %59 = call { i64, i8* }* @nyx_array_new_ptr()
  %60 = load { i64, i8* }*, { i64, i8* }** %28
  %61 = bitcast { i64, i8* }* %60 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %59, i8* %61)
  %62 = load i1, i1* %21
  %63 = zext i1 %62 to i64
  call void @nyx_array_push({ i64, i8* }* %59, i64 %63)
  %64 = load { i64, i8* }*, { i64, i8* }** %56
  %65 = bitcast { i64, i8* }* %64 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %59, i8* %65)
  %66 = call { i64, i8* }* @make_astnode(%nyx_string* %58, { i64, i8* }* %59)
  ret { i64, i8* }* %66
else1:
  br label %merge2
merge2:
  %67 = getelementptr [11 x i8], [11 x i8]* @.str653, i32 0, i32 0
  %68 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str653.c, i8* %67)
  %69 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %68)
  %70 = alloca %Token
  store %Token %69, %Token* %70
  %71 = load %Token, %Token* %70
  %72 = call %nyx_string* @get_token_value(%Token %71)
  %73 = alloca %nyx_string*
  store %nyx_string* %72, %nyx_string** %73
  %74 = load %nyx_string*, %nyx_string** %73
  %75 = call { i64, i8* }* @nyx_array_new_ptr()
  %76 = call { i64, i8* }* @make_astnode(%nyx_string* %74, { i64, i8* }* %75)
  %77 = alloca { i64, i8* }*
  store { i64, i8* }* %76, { i64, i8* }** %77
  %78 = getelementptr [1 x i8], [1 x i8]* @.str654, i32 0, i32 0
  %79 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str654.c, i8* %78)
  %80 = alloca %nyx_string*
  store %nyx_string* %79, %nyx_string** %80
  %81 = getelementptr [6 x i8], [6 x i8]* @.str655, i32 0, i32 0
  %82 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str655.c, i8* %81)
  %83 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %82)
  br i1 %83, label %then6, label %else7
then6:
  %84 = call %Token @advance(%SharedEnv_parse* %env.param)
  %85 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %85, %nyx_string** %80
  br label %merge8
else7:
  br label %merge8
merge8:
  %86 = getelementptr [7 x i8], [7 x i8]* @.str656, i32 0, i32 0
  %87 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str656.c, i8* %86)
  %88 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %87)
  %89 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %90 = alloca { i64, i8* }*
  store { i64, i8* }* %89, { i64, i8* }** %90
  %91 = getelementptr [4 x i8], [4 x i8]* @.str657, i32 0, i32 0
  %92 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str657.c, i8* %91)
  %93 = call { i64, i8* }* @nyx_array_new_ptr()
  %94 = load { i64, i8* }*, { i64, i8* }** %77
  %95 = bitcast { i64, i8* }* %94 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %93, i8* %95)
  %96 = load i1, i1* %21
  %97 = zext i1 %96 to i64
  call void @nyx_array_push({ i64, i8* }* %93, i64 %97)
  %98 = load { i64, i8* }*, { i64, i8* }** %90
  %99 = bitcast { i64, i8* }* %98 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %93, i8* %99)
  %100 = load %nyx_string*, %nyx_string** %80
  %101 = ptrtoint %nyx_string* %100 to i64
  call void @nyx_array_push({ i64, i8* }* %93, i64 %101)
  %102 = call { i64, i8* }* @make_astnode(%nyx_string* %92, { i64, i8* }* %93)
  ret { i64, i8* }* %102
}

define internal { i64, i8* }* @parse_const(%SharedEnv_parse* %env.param) {
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
  %18 = getelementptr [6 x i8], [6 x i8]* @.str658, i32 0, i32 0
  %19 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str658.c, i8* %18)
  %20 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %19)
  %21 = getelementptr [11 x i8], [11 x i8]* @.str659, i32 0, i32 0
  %22 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str659.c, i8* %21)
  %23 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %22)
  %24 = alloca %Token
  store %Token %23, %Token* %24
  %25 = getelementptr [1 x i8], [1 x i8]* @.str660, i32 0, i32 0
  %26 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str660.c, i8* %25)
  %27 = alloca %nyx_string*
  store %nyx_string* %26, %nyx_string** %27
  %28 = getelementptr [6 x i8], [6 x i8]* @.str661, i32 0, i32 0
  %29 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str661.c, i8* %28)
  %30 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %29)
  br i1 %30, label %then0, label %else1
then0:
  %31 = call %Token @advance(%SharedEnv_parse* %env.param)
  %32 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %32, %nyx_string** %27
  br label %merge2
else1:
  br label %merge2
merge2:
  %33 = getelementptr [7 x i8], [7 x i8]* @.str662, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str662.c, i8* %33)
  %35 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %34)
  %36 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %37 = alloca { i64, i8* }*
  store { i64, i8* }* %36, { i64, i8* }** %37
  %38 = getelementptr [6 x i8], [6 x i8]* @.str663, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str663.c, i8* %38)
  %40 = call { i64, i8* }* @nyx_array_new_ptr()
  %41 = load %Token, %Token* %24
  %42 = call %nyx_string* @get_token_value(%Token %41)
  %43 = ptrtoint %nyx_string* %42 to i64
  call void @nyx_array_push({ i64, i8* }* %40, i64 %43)
  %44 = load { i64, i8* }*, { i64, i8* }** %37
  %45 = bitcast { i64, i8* }* %44 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %40, i8* %45)
  %46 = load %nyx_string*, %nyx_string** %27
  %47 = ptrtoint %nyx_string* %46 to i64
  call void @nyx_array_push({ i64, i8* }* %40, i64 %47)
  %48 = call { i64, i8* }* @make_astnode(%nyx_string* %39, { i64, i8* }* %40)
  ret { i64, i8* }* %48
}

define internal { i64, i8* }* @parse_async_function(%SharedEnv_parse* %env.param) {
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
  %18 = getelementptr [3 x i8], [3 x i8]* @.str664, i32 0, i32 0
  %19 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str664.c, i8* %18)
  %20 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %19)
  %21 = getelementptr [11 x i8], [11 x i8]* @.str665, i32 0, i32 0
  %22 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str665.c, i8* %21)
  %23 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %22)
  %24 = alloca %Token
  store %Token %23, %Token* %24
  %25 = load %Token, %Token* %24
  %26 = call %nyx_string* @get_token_value(%Token %25)
  %27 = alloca %nyx_string*
  store %nyx_string* %26, %nyx_string** %27
  %28 = getelementptr [11 x i8], [11 x i8]* @.str666, i32 0, i32 0
  %29 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str666.c, i8* %28)
  %30 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %29)
  %31 = call { i64, i8* }* @nyx_array_new_ptr()
  %32 = alloca { i64, i8* }*
  store { i64, i8* }* %31, { i64, i8* }** %32
  %33 = alloca i1
  store i1 0, i1* %33
  br label %while_cond0
while_cond0:
  %34 = load i1, i1* %33
  %35 = xor i1 %34, true
  br i1 %35, label %while_body1, label %while_end2
while_body1:
  %36 = getelementptr [12 x i8], [12 x i8]* @.str667, i32 0, i32 0
  %37 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str667.c, i8* %36)
  %38 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %37)
  br i1 %38, label %then3, label %else4
then3:
  %39 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %33
  br label %merge5
else4:
  %40 = load { i64, i8* }*, { i64, i8* }** %32
  %41 = call i64 @nyx_array_length({ i64, i8* }* %40)
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %then6, label %else7
then6:
  %43 = getelementptr [6 x i8], [6 x i8]* @.str668, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str668.c, i8* %43)
  %45 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %44)
  br label %merge8
else7:
  br label %merge8
merge8:
  %46 = getelementptr [11 x i8], [11 x i8]* @.str669, i32 0, i32 0
  %47 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str669.c, i8* %46)
  %48 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %47)
  %49 = alloca %Token
  store %Token %48, %Token* %49
  %50 = getelementptr [1 x i8], [1 x i8]* @.str670, i32 0, i32 0
  %51 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str670.c, i8* %50)
  %52 = alloca %nyx_string*
  store %nyx_string* %51, %nyx_string** %52
  %53 = getelementptr [6 x i8], [6 x i8]* @.str671, i32 0, i32 0
  %54 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str671.c, i8* %53)
  %55 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %54)
  br i1 %55, label %then9, label %else10
then9:
  %56 = call %Token @advance(%SharedEnv_parse* %env.param)
  %57 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %57, %nyx_string** %52
  br label %merge11
else10:
  br label %merge11
merge11:
  %58 = load { i64, i8* }*, { i64, i8* }** %32
  %59 = call { i64, i8* }* @nyx_array_new_ptr()
  %60 = load %Token, %Token* %49
  %61 = call %nyx_string* @get_token_value(%Token %60)
  %62 = ptrtoint %nyx_string* %61 to i64
  call void @nyx_array_push({ i64, i8* }* %59, i64 %62)
  %63 = load %nyx_string*, %nyx_string** %52
  %64 = ptrtoint %nyx_string* %63 to i64
  call void @nyx_array_push({ i64, i8* }* %59, i64 %64)
  %65 = ptrtoint { i64, i8* }* %59 to i64
  call void @nyx_array_push({ i64, i8* }* %58, i64 %65)
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %66 = getelementptr [1 x i8], [1 x i8]* @.str672, i32 0, i32 0
  %67 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str672.c, i8* %66)
  %68 = alloca %nyx_string*
  store %nyx_string* %67, %nyx_string** %68
  %69 = getelementptr [6 x i8], [6 x i8]* @.str673, i32 0, i32 0
  %70 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str673.c, i8* %69)
  %71 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %70)
  br i1 %71, label %then12, label %else13
then12:
  %72 = call %Token @advance(%SharedEnv_parse* %env.param)
  %73 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %73, %nyx_string** %68
  br label %merge14
else13:
  br label %merge14
merge14:
  %74 = call { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param)
  %75 = alloca { i64, i8* }*
  store { i64, i8* }* %74, { i64, i8* }** %75
  %76 = getelementptr [9 x i8], [9 x i8]* @.str674, i32 0, i32 0
  %77 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str674.c, i8* %76)
  %78 = call { i64, i8* }* @nyx_array_new_ptr()
  %79 = load %nyx_string*, %nyx_string** %27
  %80 = ptrtoint %nyx_string* %79 to i64
  call void @nyx_array_push({ i64, i8* }* %78, i64 %80)
  %81 = load { i64, i8* }*, { i64, i8* }** %32
  %82 = bitcast { i64, i8* }* %81 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %78, i8* %82)
  %83 = load %nyx_string*, %nyx_string** %68
  %84 = ptrtoint %nyx_string* %83 to i64
  call void @nyx_array_push({ i64, i8* }* %78, i64 %84)
  %85 = load { i64, i8* }*, { i64, i8* }** %75
  %86 = bitcast { i64, i8* }* %85 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %78, i8* %86)
  %87 = call { i64, i8* }* @make_astnode(%nyx_string* %77, { i64, i8* }* %78)
  ret { i64, i8* }* %87
}

define internal { i64, i8* }* @parse_function(%SharedEnv_parse* %env.param) {
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
  %18 = getelementptr [3 x i8], [3 x i8]* @.str675, i32 0, i32 0
  %19 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str675.c, i8* %18)
  %20 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %19)
  %21 = getelementptr [11 x i8], [11 x i8]* @.str676, i32 0, i32 0
  %22 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str676.c, i8* %21)
  %23 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %22)
  %24 = alloca %Token
  store %Token %23, %Token* %24
  %25 = call { i64, i8* }* @nyx_array_new_ptr()
  %26 = alloca { i64, i8* }*
  store { i64, i8* }* %25, { i64, i8* }** %26
  %27 = getelementptr [5 x i8], [5 x i8]* @.str677, i32 0, i32 0
  %28 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str677.c, i8* %27)
  %29 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %28)
  br i1 %29, label %then0, label %else1
then0:
  %30 = call %Token @advance(%SharedEnv_parse* %env.param)
  %31 = getelementptr [9 x i8], [9 x i8]* @.str678, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str678.c, i8* %31)
  %33 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %32)
  br i1 %33, label %then3, label %else4
then3:
  %34 = call %Token @advance(%SharedEnv_parse* %env.param)
  %35 = alloca %Token
  store %Token %34, %Token* %35
  %36 = load { i64, i8* }*, { i64, i8* }** %26
  %37 = load %Token, %Token* %35
  %38 = call %nyx_string* @get_token_value(%Token %37)
  %39 = ptrtoint %nyx_string* %38 to i64
  call void @nyx_array_push({ i64, i8* }* %36, i64 %39)
  br label %merge5
else4:
  %40 = getelementptr [11 x i8], [11 x i8]* @.str679, i32 0, i32 0
  %41 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str679.c, i8* %40)
  %42 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %41)
  %43 = alloca %Token
  store %Token %42, %Token* %43
  %44 = load %Token, %Token* %43
  %45 = call %nyx_string* @get_token_value(%Token %44)
  %46 = alloca %nyx_string*
  store %nyx_string* %45, %nyx_string** %46
  %47 = getelementptr [6 x i8], [6 x i8]* @.str680, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str680.c, i8* %47)
  %49 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %48)
  br i1 %49, label %then6, label %else7
then6:
  %50 = call %Token @advance(%SharedEnv_parse* %env.param)
  %51 = getelementptr [11 x i8], [11 x i8]* @.str681, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str681.c, i8* %51)
  %53 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %52)
  %54 = alloca %Token
  store %Token %53, %Token* %54
  %55 = load %Token, %Token* %54
  %56 = call %nyx_string* @get_token_value(%Token %55)
  %57 = alloca %nyx_string*
  store %nyx_string* %56, %nyx_string** %57
  br label %while_cond9
while_cond9:
  %58 = getelementptr [5 x i8], [5 x i8]* @.str682, i32 0, i32 0
  %59 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str682.c, i8* %58)
  %60 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %59)
  br i1 %60, label %while_body10, label %while_end11
while_body10:
  %61 = call %Token @advance(%SharedEnv_parse* %env.param)
  %62 = getelementptr [11 x i8], [11 x i8]* @.str683, i32 0, i32 0
  %63 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str683.c, i8* %62)
  %64 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %63)
  %65 = alloca %Token
  store %Token %64, %Token* %65
  %66 = load %nyx_string*, %nyx_string** %57
  %67 = getelementptr [2 x i8], [2 x i8]* @.str684, i32 0, i32 0
  %68 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str684.c, i8* %67)
  %69 = call %nyx_string* @nyx_string_concat(%nyx_string* %66, %nyx_string* %68)
  %70 = load %Token, %Token* %65
  %71 = call %nyx_string* @get_token_value(%Token %70)
  %72 = call %nyx_string* @nyx_string_concat(%nyx_string* %69, %nyx_string* %71)
  store %nyx_string* %72, %nyx_string** %57
  br label %while_cond9
while_end11:
  %73 = load %nyx_string*, %nyx_string** %46
  %74 = getelementptr [2 x i8], [2 x i8]* @.str685, i32 0, i32 0
  %75 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str685.c, i8* %74)
  %76 = call %nyx_string* @nyx_string_concat(%nyx_string* %73, %nyx_string* %75)
  %77 = load %nyx_string*, %nyx_string** %57
  %78 = call %nyx_string* @nyx_string_concat(%nyx_string* %76, %nyx_string* %77)
  store %nyx_string* %78, %nyx_string** %46
  br label %merge8
else7:
  br label %merge8
merge8:
  %79 = load { i64, i8* }*, { i64, i8* }** %26
  %80 = load %nyx_string*, %nyx_string** %46
  %81 = ptrtoint %nyx_string* %80 to i64
  call void @nyx_array_push({ i64, i8* }* %79, i64 %81)
  br label %merge5
merge5:
  %82 = alloca i1
  store i1 0, i1* %82
  br label %while_cond12
while_cond12:
  %83 = load i1, i1* %82
  %84 = xor i1 %83, true
  br i1 %84, label %while_body13, label %while_end14
while_body13:
  %85 = getelementptr [6 x i8], [6 x i8]* @.str686, i32 0, i32 0
  %86 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str686.c, i8* %85)
  %87 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %86)
  br i1 %87, label %then15, label %else16
then15:
  %88 = call %Token @advance(%SharedEnv_parse* %env.param)
  %89 = getelementptr [9 x i8], [9 x i8]* @.str687, i32 0, i32 0
  %90 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str687.c, i8* %89)
  %91 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %90)
  br i1 %91, label %then18, label %else19
then18:
  %92 = call %Token @advance(%SharedEnv_parse* %env.param)
  %93 = alloca %Token
  store %Token %92, %Token* %93
  %94 = load { i64, i8* }*, { i64, i8* }** %26
  %95 = load %Token, %Token* %93
  %96 = call %nyx_string* @get_token_value(%Token %95)
  %97 = ptrtoint %nyx_string* %96 to i64
  call void @nyx_array_push({ i64, i8* }* %94, i64 %97)
  br label %merge20
else19:
  %98 = getelementptr [11 x i8], [11 x i8]* @.str688, i32 0, i32 0
  %99 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str688.c, i8* %98)
  %100 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %99)
  %101 = alloca %Token
  store %Token %100, %Token* %101
  %102 = load %Token, %Token* %101
  %103 = call %nyx_string* @get_token_value(%Token %102)
  %104 = alloca %nyx_string*
  store %nyx_string* %103, %nyx_string** %104
  %105 = getelementptr [6 x i8], [6 x i8]* @.str689, i32 0, i32 0
  %106 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str689.c, i8* %105)
  %107 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %106)
  br i1 %107, label %then21, label %else22
then21:
  %108 = call %Token @advance(%SharedEnv_parse* %env.param)
  %109 = getelementptr [11 x i8], [11 x i8]* @.str690, i32 0, i32 0
  %110 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str690.c, i8* %109)
  %111 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %110)
  %112 = alloca %Token
  store %Token %111, %Token* %112
  %113 = load %Token, %Token* %112
  %114 = call %nyx_string* @get_token_value(%Token %113)
  %115 = alloca %nyx_string*
  store %nyx_string* %114, %nyx_string** %115
  br label %while_cond24
while_cond24:
  %116 = getelementptr [5 x i8], [5 x i8]* @.str691, i32 0, i32 0
  %117 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str691.c, i8* %116)
  %118 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %117)
  br i1 %118, label %while_body25, label %while_end26
while_body25:
  %119 = call %Token @advance(%SharedEnv_parse* %env.param)
  %120 = getelementptr [11 x i8], [11 x i8]* @.str692, i32 0, i32 0
  %121 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str692.c, i8* %120)
  %122 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %121)
  %123 = alloca %Token
  store %Token %122, %Token* %123
  %124 = load %nyx_string*, %nyx_string** %115
  %125 = getelementptr [2 x i8], [2 x i8]* @.str693, i32 0, i32 0
  %126 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str693.c, i8* %125)
  %127 = call %nyx_string* @nyx_string_concat(%nyx_string* %124, %nyx_string* %126)
  %128 = load %Token, %Token* %123
  %129 = call %nyx_string* @get_token_value(%Token %128)
  %130 = call %nyx_string* @nyx_string_concat(%nyx_string* %127, %nyx_string* %129)
  store %nyx_string* %130, %nyx_string** %115
  br label %while_cond24
while_end26:
  %131 = load %nyx_string*, %nyx_string** %104
  %132 = getelementptr [2 x i8], [2 x i8]* @.str694, i32 0, i32 0
  %133 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str694.c, i8* %132)
  %134 = call %nyx_string* @nyx_string_concat(%nyx_string* %131, %nyx_string* %133)
  %135 = load %nyx_string*, %nyx_string** %115
  %136 = call %nyx_string* @nyx_string_concat(%nyx_string* %134, %nyx_string* %135)
  store %nyx_string* %136, %nyx_string** %104
  br label %merge23
else22:
  br label %merge23
merge23:
  %137 = load { i64, i8* }*, { i64, i8* }** %26
  %138 = load %nyx_string*, %nyx_string** %104
  %139 = ptrtoint %nyx_string* %138 to i64
  call void @nyx_array_push({ i64, i8* }* %137, i64 %139)
  br label %merge20
merge20:
  br label %merge17
else16:
  store i1 1, i1* %82
  br label %merge17
merge17:
  br label %while_cond12
while_end14:
  %140 = getelementptr [8 x i8], [8 x i8]* @.str695, i32 0, i32 0
  %141 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str695.c, i8* %140)
  %142 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %141)
  br label %merge2
else1:
  br label %merge2
merge2:
  %143 = getelementptr [11 x i8], [11 x i8]* @.str696, i32 0, i32 0
  %144 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str696.c, i8* %143)
  %145 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %144)
  %146 = call { i64, i8* }* @nyx_array_new_ptr()
  %147 = alloca { i64, i8* }*
  store { i64, i8* }* %146, { i64, i8* }** %147
  %148 = call { i64, i8* }* @nyx_array_new_ptr()
  %149 = alloca { i64, i8* }*
  store { i64, i8* }* %148, { i64, i8* }** %149
  %150 = alloca i1
  store i1 0, i1* %150
  br label %while_cond27
while_cond27:
  %151 = load i1, i1* %150
  %152 = xor i1 %151, true
  br i1 %152, label %while_body28, label %while_end29
while_body28:
  %153 = getelementptr [12 x i8], [12 x i8]* @.str697, i32 0, i32 0
  %154 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str697.c, i8* %153)
  %155 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %154)
  br i1 %155, label %then30, label %else31
then30:
  %156 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %150
  br label %merge32
else31:
  %157 = load { i64, i8* }*, { i64, i8* }** %147
  %158 = call i64 @nyx_array_length({ i64, i8* }* %157)
  %159 = icmp sgt i64 %158, 0
  br i1 %159, label %then33, label %else34
then33:
  %160 = getelementptr [6 x i8], [6 x i8]* @.str698, i32 0, i32 0
  %161 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str698.c, i8* %160)
  %162 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %161)
  br label %merge35
else34:
  br label %merge35
merge35:
  %163 = getelementptr [9 x i8], [9 x i8]* @.str699, i32 0, i32 0
  %164 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str699.c, i8* %163)
  %165 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %164)
  br i1 %165, label %then36, label %else37
then36:
  %166 = call %Token @advance(%SharedEnv_parse* %env.param)
  %167 = getelementptr [11 x i8], [11 x i8]* @.str700, i32 0, i32 0
  %168 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str700.c, i8* %167)
  %169 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %168)
  %170 = alloca %Token
  store %Token %169, %Token* %170
  %171 = load %Token, %Token* %170
  %172 = call %nyx_string* @get_token_value(%Token %171)
  %173 = alloca %nyx_string*
  store %nyx_string* %172, %nyx_string** %173
  %174 = getelementptr [10 x i8], [10 x i8]* @.str701, i32 0, i32 0
  %175 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str701.c, i8* %174)
  %176 = alloca %nyx_string*
  store %nyx_string* %175, %nyx_string** %176
  %177 = getelementptr [6 x i8], [6 x i8]* @.str702, i32 0, i32 0
  %178 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str702.c, i8* %177)
  %179 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %178)
  br i1 %179, label %then39, label %else40
then39:
  %180 = call %Token @advance(%SharedEnv_parse* %env.param)
  %181 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  %182 = alloca %nyx_string*
  store %nyx_string* %181, %nyx_string** %182
  %183 = getelementptr [4 x i8], [4 x i8]* @.str703, i32 0, i32 0
  %184 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str703.c, i8* %183)
  %185 = load %nyx_string*, %nyx_string** %182
  %186 = call %nyx_string* @nyx_string_concat(%nyx_string* %184, %nyx_string* %185)
  store %nyx_string* %186, %nyx_string** %176
  br label %merge41
else40:
  br label %merge41
merge41:
  %187 = load { i64, i8* }*, { i64, i8* }** %147
  %188 = call { i64, i8* }* @nyx_array_new_ptr()
  %189 = load %nyx_string*, %nyx_string** %173
  %190 = ptrtoint %nyx_string* %189 to i64
  call void @nyx_array_push({ i64, i8* }* %188, i64 %190)
  %191 = load %nyx_string*, %nyx_string** %176
  %192 = ptrtoint %nyx_string* %191 to i64
  call void @nyx_array_push({ i64, i8* }* %188, i64 %192)
  %193 = ptrtoint { i64, i8* }* %188 to i64
  call void @nyx_array_push({ i64, i8* }* %187, i64 %193)
  %194 = load { i64, i8* }*, { i64, i8* }** %149
  %195 = getelementptr [1 x i8], [1 x i8]* @.str704, i32 0, i32 0
  %196 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str704.c, i8* %195)
  %197 = ptrtoint %nyx_string* %196 to i64
  call void @nyx_array_push({ i64, i8* }* %194, i64 %197)
  %198 = getelementptr [6 x i8], [6 x i8]* @.str705, i32 0, i32 0
  %199 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str705.c, i8* %198)
  %200 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %199)
  br i1 %200, label %then42, label %else43
then42:
  %201 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge44
else43:
  br label %merge44
merge44:
  %202 = getelementptr [12 x i8], [12 x i8]* @.str706, i32 0, i32 0
  %203 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str706.c, i8* %202)
  %204 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %203)
  br i1 %204, label %then45, label %else46
then45:
  %205 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge47
else46:
  br label %merge47
merge47:
  store i1 1, i1* %150
  br label %merge38
else37:
  %206 = alloca i1
  store i1 false, i1* %206
  %207 = getelementptr [4 x i8], [4 x i8]* @.str707, i32 0, i32 0
  %208 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str707.c, i8* %207)
  %209 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %208)
  br i1 %209, label %sc_and_rhs48, label %sc_and_end49
sc_and_rhs48:
  %210 = load { i64, i8* }*, { i64, i8* }** %147
  %211 = call i64 @nyx_array_length({ i64, i8* }* %210)
  %212 = icmp eq i64 %211, 0
  store i1 %212, i1* %206
  br label %sc_and_end49
sc_and_end49:
  %213 = load i1, i1* %206
  br i1 %213, label %then50, label %else51
then50:
  %214 = call %Token @advance(%SharedEnv_parse* %env.param)
  %215 = getelementptr [9 x i8], [9 x i8]* @.str708, i32 0, i32 0
  %216 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str708.c, i8* %215)
  %217 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %216)
  br i1 %217, label %then53, label %else54
then53:
  %218 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge55
else54:
  br label %merge55
merge55:
  %219 = getelementptr [2 x i8], [2 x i8]* @.str709, i32 0, i32 0
  %220 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str709.c, i8* %219)
  %221 = alloca %nyx_string*
  store %nyx_string* %220, %nyx_string** %221
  %222 = call %Token @peek(%SharedEnv_parse* %env.param)
  %223 = call %nyx_string* @get_token_value(%Token %222)
  %224 = getelementptr [4 x i8], [4 x i8]* @.str710, i32 0, i32 0
  %225 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str710.c, i8* %224)
  %226 = call i1 @nyx_string_equals(%nyx_string* %223, %nyx_string* %225)
  br i1 %226, label %then56, label %else57
then56:
  %227 = call %Token @advance(%SharedEnv_parse* %env.param)
  %228 = getelementptr [5 x i8], [5 x i8]* @.str711, i32 0, i32 0
  %229 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str711.c, i8* %228)
  store %nyx_string* %229, %nyx_string** %221
  br label %merge58
else57:
  br label %merge58
merge58:
  %230 = getelementptr [11 x i8], [11 x i8]* @.str712, i32 0, i32 0
  %231 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str712.c, i8* %230)
  %232 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %231)
  %233 = alloca %Token
  store %Token %232, %Token* %233
  %234 = load { i64, i8* }*, { i64, i8* }** %147
  %235 = call { i64, i8* }* @nyx_array_new_ptr()
  %236 = load %Token, %Token* %233
  %237 = call %nyx_string* @get_token_value(%Token %236)
  %238 = ptrtoint %nyx_string* %237 to i64
  call void @nyx_array_push({ i64, i8* }* %235, i64 %238)
  %239 = load %nyx_string*, %nyx_string** %221
  %240 = ptrtoint %nyx_string* %239 to i64
  call void @nyx_array_push({ i64, i8* }* %235, i64 %240)
  %241 = ptrtoint { i64, i8* }* %235 to i64
  call void @nyx_array_push({ i64, i8* }* %234, i64 %241)
  %242 = load { i64, i8* }*, { i64, i8* }** %149
  %243 = getelementptr [1 x i8], [1 x i8]* @.str713, i32 0, i32 0
  %244 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str713.c, i8* %243)
  %245 = ptrtoint %nyx_string* %244 to i64
  call void @nyx_array_push({ i64, i8* }* %242, i64 %245)
  br label %merge52
else51:
  %246 = getelementptr [11 x i8], [11 x i8]* @.str714, i32 0, i32 0
  %247 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str714.c, i8* %246)
  %248 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %247)
  %249 = alloca %Token
  store %Token %248, %Token* %249
  %250 = getelementptr [1 x i8], [1 x i8]* @.str715, i32 0, i32 0
  %251 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str715.c, i8* %250)
  %252 = alloca %nyx_string*
  store %nyx_string* %251, %nyx_string** %252
  %253 = load { i64, i8* }*, { i64, i8* }** %17
  %254 = getelementptr [1 x i8], [1 x i8]* @.str716, i32 0, i32 0
  %255 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str716.c, i8* %254)
  %256 = ptrtoint %nyx_string* %255 to i64
  call void @nyx_array_set({ i64, i8* }* %253, i64 0, i64 %256)
  %257 = getelementptr [6 x i8], [6 x i8]* @.str717, i32 0, i32 0
  %258 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str717.c, i8* %257)
  %259 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %258)
  br i1 %259, label %then59, label %else60
then59:
  %260 = call %Token @advance(%SharedEnv_parse* %env.param)
  %261 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %261, %nyx_string** %252
  br label %merge61
else60:
  br label %merge61
merge61:
  %262 = load { i64, i8* }*, { i64, i8* }** %17
  %263 = call i64 @nyx_array_get({ i64, i8* }* %262, i64 0)
  %264 = inttoptr i64 %263 to %nyx_string*
  %265 = alloca %nyx_string*
  store %nyx_string* %264, %nyx_string** %265
  %266 = getelementptr [7 x i8], [7 x i8]* @.str718, i32 0, i32 0
  %267 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str718.c, i8* %266)
  %268 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %267)
  br i1 %268, label %then62, label %else63
then62:
  %269 = call %Token @advance(%SharedEnv_parse* %env.param)
  %270 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %271 = alloca { i64, i8* }*
  store { i64, i8* }* %270, { i64, i8* }** %271
  %272 = load { i64, i8* }*, { i64, i8* }** %147
  %273 = call { i64, i8* }* @nyx_array_new_ptr()
  %274 = load %Token, %Token* %249
  %275 = call %nyx_string* @get_token_value(%Token %274)
  %276 = ptrtoint %nyx_string* %275 to i64
  call void @nyx_array_push({ i64, i8* }* %273, i64 %276)
  %277 = load %nyx_string*, %nyx_string** %252
  %278 = ptrtoint %nyx_string* %277 to i64
  call void @nyx_array_push({ i64, i8* }* %273, i64 %278)
  %279 = load { i64, i8* }*, { i64, i8* }** %271
  %280 = bitcast { i64, i8* }* %279 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %273, i8* %280)
  %281 = ptrtoint { i64, i8* }* %273 to i64
  call void @nyx_array_push({ i64, i8* }* %272, i64 %281)
  br label %merge64
else63:
  %282 = load { i64, i8* }*, { i64, i8* }** %147
  %283 = call { i64, i8* }* @nyx_array_new_ptr()
  %284 = load %Token, %Token* %249
  %285 = call %nyx_string* @get_token_value(%Token %284)
  %286 = ptrtoint %nyx_string* %285 to i64
  call void @nyx_array_push({ i64, i8* }* %283, i64 %286)
  %287 = load %nyx_string*, %nyx_string** %252
  %288 = ptrtoint %nyx_string* %287 to i64
  call void @nyx_array_push({ i64, i8* }* %283, i64 %288)
  %289 = ptrtoint { i64, i8* }* %283 to i64
  call void @nyx_array_push({ i64, i8* }* %282, i64 %289)
  br label %merge64
merge64:
  %290 = load { i64, i8* }*, { i64, i8* }** %149
  %291 = load %nyx_string*, %nyx_string** %265
  %292 = ptrtoint %nyx_string* %291 to i64
  call void @nyx_array_push({ i64, i8* }* %290, i64 %292)
  br label %merge52
merge52:
  br label %merge38
merge38:
  br label %merge32
merge32:
  br label %while_cond27
while_end29:
  %293 = getelementptr [1 x i8], [1 x i8]* @.str719, i32 0, i32 0
  %294 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str719.c, i8* %293)
  %295 = alloca %nyx_string*
  store %nyx_string* %294, %nyx_string** %295
  %296 = load { i64, i8* }*, { i64, i8* }** %17
  %297 = getelementptr [1 x i8], [1 x i8]* @.str720, i32 0, i32 0
  %298 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str720.c, i8* %297)
  %299 = ptrtoint %nyx_string* %298 to i64
  call void @nyx_array_set({ i64, i8* }* %296, i64 0, i64 %299)
  %300 = getelementptr [6 x i8], [6 x i8]* @.str721, i32 0, i32 0
  %301 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str721.c, i8* %300)
  %302 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %301)
  br i1 %302, label %then65, label %else66
then65:
  %303 = call %Token @advance(%SharedEnv_parse* %env.param)
  %304 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %304, %nyx_string** %295
  br label %merge67
else66:
  br label %merge67
merge67:
  %305 = load { i64, i8* }*, { i64, i8* }** %17
  %306 = call i64 @nyx_array_get({ i64, i8* }* %305, i64 0)
  %307 = inttoptr i64 %306 to %nyx_string*
  %308 = alloca %nyx_string*
  store %nyx_string* %307, %nyx_string** %308
  %309 = getelementptr [6 x i8], [6 x i8]* @.str722, i32 0, i32 0
  %310 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str722.c, i8* %309)
  %311 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %310)
  br i1 %311, label %then68, label %else69
then68:
  %312 = call %Token @advance(%SharedEnv_parse* %env.param)
  %313 = alloca i1
  store i1 0, i1* %313
  br label %while_cond71
while_cond71:
  %314 = load i1, i1* %313
  %315 = xor i1 %314, true
  br i1 %315, label %while_body72, label %while_end73
while_body72:
  %316 = getelementptr [11 x i8], [11 x i8]* @.str723, i32 0, i32 0
  %317 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str723.c, i8* %316)
  %318 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %317)
  %319 = alloca %Token
  store %Token %318, %Token* %319
  %320 = load %Token, %Token* %319
  %321 = call %nyx_string* @get_token_value(%Token %320)
  %322 = alloca %nyx_string*
  store %nyx_string* %321, %nyx_string** %322
  %323 = getelementptr [6 x i8], [6 x i8]* @.str724, i32 0, i32 0
  %324 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str724.c, i8* %323)
  %325 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %324)
  %326 = getelementptr [11 x i8], [11 x i8]* @.str725, i32 0, i32 0
  %327 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str725.c, i8* %326)
  %328 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %327)
  %329 = alloca %Token
  store %Token %328, %Token* %329
  %330 = load %Token, %Token* %329
  %331 = call %nyx_string* @get_token_value(%Token %330)
  %332 = alloca %nyx_string*
  store %nyx_string* %331, %nyx_string** %332
  br label %while_cond74
while_cond74:
  %333 = getelementptr [5 x i8], [5 x i8]* @.str726, i32 0, i32 0
  %334 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str726.c, i8* %333)
  %335 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %334)
  br i1 %335, label %while_body75, label %while_end76
while_body75:
  %336 = call %Token @advance(%SharedEnv_parse* %env.param)
  %337 = getelementptr [11 x i8], [11 x i8]* @.str727, i32 0, i32 0
  %338 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str727.c, i8* %337)
  %339 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %338)
  %340 = alloca %Token
  store %Token %339, %Token* %340
  %341 = load %nyx_string*, %nyx_string** %332
  %342 = getelementptr [2 x i8], [2 x i8]* @.str728, i32 0, i32 0
  %343 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str728.c, i8* %342)
  %344 = call %nyx_string* @nyx_string_concat(%nyx_string* %341, %nyx_string* %343)
  %345 = load %Token, %Token* %340
  %346 = call %nyx_string* @get_token_value(%Token %345)
  %347 = call %nyx_string* @nyx_string_concat(%nyx_string* %344, %nyx_string* %346)
  store %nyx_string* %347, %nyx_string** %332
  br label %while_cond74
while_end76:
  %348 = alloca i1
  store i1 0, i1* %348
  %349 = alloca i64
  store i64 0, i64* %349
  br label %while_cond77
while_cond77:
  %350 = load i64, i64* %349
  %351 = load { i64, i8* }*, { i64, i8* }** %26
  %352 = call i64 @nyx_array_length({ i64, i8* }* %351)
  %353 = icmp slt i64 %350, %352
  br i1 %353, label %while_body78, label %while_end79
while_body78:
  %354 = load { i64, i8* }*, { i64, i8* }** %26
  %355 = load i64, i64* %349
  %356 = call i64 @nyx_array_get({ i64, i8* }* %354, i64 %355)
  %357 = inttoptr i64 %356 to %nyx_string*
  %358 = alloca %nyx_string*
  store %nyx_string* %357, %nyx_string** %358
  %359 = load %nyx_string*, %nyx_string** %358
  %360 = alloca %nyx_string*
  store %nyx_string* %359, %nyx_string** %360
  %361 = sub i64 0, 1
  %362 = alloca i64
  store i64 %361, i64* %362
  %363 = alloca i64
  store i64 0, i64* %363
  br label %while_cond80
while_cond80:
  %364 = load i64, i64* %363
  %365 = load %nyx_string*, %nyx_string** %358
  %366 = call i64 @nyx_string_byte_length(%nyx_string* %365)
  %367 = icmp slt i64 %364, %366
  br i1 %367, label %while_body81, label %while_end82
while_body81:
  %368 = load %nyx_string*, %nyx_string** %358
  %369 = load i64, i64* %363
  %370 = call i8 @nyx_string_char_at(%nyx_string* %368, i64 %369)
  %371 = zext i8 %370 to i64
  %372 = getelementptr [1 x i8], [1 x i8]* @.str729, i32 0, i32 0
  %373 = load i8, i8* %372
  %374 = zext i8 %373 to i64
  %375 = icmp eq i64 %371, %374
  br i1 %375, label %then83, label %else84
then83:
  %376 = load i64, i64* %363
  store i64 %376, i64* %362
  %377 = load %nyx_string*, %nyx_string** %358
  %378 = call i64 @nyx_string_byte_length(%nyx_string* %377)
  store i64 %378, i64* %363
  br label %merge85
else84:
  br label %merge85
merge85:
  %379 = load i64, i64* %363
  %380 = add i64 %379, 1
  store i64 %380, i64* %363
  br label %while_cond80
while_end82:
  %381 = load i64, i64* %362
  %382 = icmp sge i64 %381, 0
  br i1 %382, label %then86, label %else87
then86:
  %383 = load %nyx_string*, %nyx_string** %358
  %384 = load i64, i64* %362
  %385 = call %nyx_string* @nyx_string_substring(%nyx_string* %383, i64 0, i64 %384)
  store %nyx_string* %385, %nyx_string** %360
  br label %merge88
else87:
  br label %merge88
merge88:
  %386 = load %nyx_string*, %nyx_string** %360
  %387 = load %nyx_string*, %nyx_string** %322
  %388 = call i1 @nyx_string_equals(%nyx_string* %386, %nyx_string* %387)
  br i1 %388, label %then89, label %else90
then89:
  %389 = load i64, i64* %362
  %390 = icmp sge i64 %389, 0
  br i1 %390, label %then92, label %else93
then92:
  %391 = load { i64, i8* }*, { i64, i8* }** %26
  %392 = load i64, i64* %349
  %393 = load %nyx_string*, %nyx_string** %358
  %394 = getelementptr [2 x i8], [2 x i8]* @.str730, i32 0, i32 0
  %395 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str730.c, i8* %394)
  %396 = call %nyx_string* @nyx_string_concat(%nyx_string* %393, %nyx_string* %395)
  %397 = load %nyx_string*, %nyx_string** %332
  %398 = call %nyx_string* @nyx_string_concat(%nyx_string* %396, %nyx_string* %397)
  %399 = ptrtoint %nyx_string* %398 to i64
  call void @nyx_array_set({ i64, i8* }* %391, i64 %392, i64 %399)
  br label %merge94
else93:
  %400 = load { i64, i8* }*, { i64, i8* }** %26
  %401 = load i64, i64* %349
  %402 = load %nyx_string*, %nyx_string** %358
  %403 = getelementptr [2 x i8], [2 x i8]* @.str731, i32 0, i32 0
  %404 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str731.c, i8* %403)
  %405 = call %nyx_string* @nyx_string_concat(%nyx_string* %402, %nyx_string* %404)
  %406 = load %nyx_string*, %nyx_string** %332
  %407 = call %nyx_string* @nyx_string_concat(%nyx_string* %405, %nyx_string* %406)
  %408 = ptrtoint %nyx_string* %407 to i64
  call void @nyx_array_set({ i64, i8* }* %400, i64 %401, i64 %408)
  br label %merge94
merge94:
  store i1 1, i1* %348
  %409 = load { i64, i8* }*, { i64, i8* }** %26
  %410 = call i64 @nyx_array_length({ i64, i8* }* %409)
  store i64 %410, i64* %349
  br label %merge91
else90:
  br label %merge91
merge91:
  %411 = load i64, i64* %349
  %412 = add i64 %411, 1
  store i64 %412, i64* %349
  br label %while_cond77
while_end79:
  %413 = load i1, i1* %348
  %414 = xor i1 %413, true
  br i1 %414, label %then95, label %else96
then95:
  %415 = load { i64, i8* }*, { i64, i8* }** %26
  %416 = load %nyx_string*, %nyx_string** %322
  %417 = getelementptr [2 x i8], [2 x i8]* @.str732, i32 0, i32 0
  %418 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str732.c, i8* %417)
  %419 = call %nyx_string* @nyx_string_concat(%nyx_string* %416, %nyx_string* %418)
  %420 = load %nyx_string*, %nyx_string** %332
  %421 = call %nyx_string* @nyx_string_concat(%nyx_string* %419, %nyx_string* %420)
  %422 = ptrtoint %nyx_string* %421 to i64
  call void @nyx_array_push({ i64, i8* }* %415, i64 %422)
  br label %merge97
else96:
  br label %merge97
merge97:
  %423 = getelementptr [6 x i8], [6 x i8]* @.str733, i32 0, i32 0
  %424 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str733.c, i8* %423)
  %425 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %424)
  br i1 %425, label %then98, label %else99
then98:
  %426 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge100
else99:
  store i1 1, i1* %313
  br label %merge100
merge100:
  br label %while_cond71
while_end73:
  br label %merge70
else69:
  br label %merge70
merge70:
  %427 = load { i64, i8* }*, { i64, i8* }** %10
  %428 = call i64 @nyx_array_length({ i64, i8* }* %427)
  %429 = alloca i64
  store i64 %428, i64* %429
  %430 = call { i64, i8* }* @parse_fn_body_block(%SharedEnv_parse* %env.param)
  %431 = alloca { i64, i8* }*
  store { i64, i8* }* %430, { i64, i8* }** %431
  %432 = load { i64, i8* }*, { i64, i8* }** %10
  %433 = call i64 @nyx_array_length({ i64, i8* }* %432)
  %434 = load i64, i64* %429
  %435 = icmp sgt i64 %433, %434
  br i1 %435, label %then101, label %else102
then101:
  %436 = load { i64, i8* }*, { i64, i8* }** %431
  %437 = call i64 @nyx_array_get({ i64, i8* }* %436, i64 1)
  %438 = inttoptr i64 %437 to { i64, i8* }*
  %439 = alloca { i64, i8* }*
  store { i64, i8* }* %438, { i64, i8* }** %439
  %440 = load { i64, i8* }*, { i64, i8* }** %439
  %441 = call i64 @nyx_array_get({ i64, i8* }* %440, i64 0)
  %442 = inttoptr i64 %441 to { i64, i8* }*
  %443 = alloca { i64, i8* }*
  store { i64, i8* }* %442, { i64, i8* }** %443
  %444 = call { i64, i8* }* @nyx_array_new_ptr()
  %445 = alloca { i64, i8* }*
  store { i64, i8* }* %444, { i64, i8* }** %445
  %446 = load i64, i64* %429
  %447 = alloca i64
  store i64 %446, i64* %447
  br label %while_cond104
while_cond104:
  %448 = load i64, i64* %447
  %449 = load { i64, i8* }*, { i64, i8* }** %10
  %450 = call i64 @nyx_array_length({ i64, i8* }* %449)
  %451 = icmp slt i64 %448, %450
  br i1 %451, label %while_body105, label %while_end106
while_body105:
  %452 = load { i64, i8* }*, { i64, i8* }** %10
  %453 = load i64, i64* %447
  %454 = call i64 @nyx_array_get({ i64, i8* }* %452, i64 %453)
  %455 = inttoptr i64 %454 to { i64, i8* }*
  %456 = alloca { i64, i8* }*
  store { i64, i8* }* %455, { i64, i8* }** %456
  %457 = load { i64, i8* }*, { i64, i8* }** %456
  %458 = call i64 @nyx_array_get({ i64, i8* }* %457, i64 0)
  %459 = inttoptr i64 %458 to %nyx_string*
  %460 = alloca %nyx_string*
  store %nyx_string* %459, %nyx_string** %460
  %461 = load %nyx_string*, %nyx_string** %460
  %462 = getelementptr [10 x i8], [10 x i8]* @.str734, i32 0, i32 0
  %463 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str734.c, i8* %462)
  %464 = call i1 @nyx_string_equals(%nyx_string* %461, %nyx_string* %463)
  %465 = xor i1 %464, true
  br i1 %465, label %then107, label %else108
then107:
  %466 = load { i64, i8* }*, { i64, i8* }** %445
  %467 = load { i64, i8* }*, { i64, i8* }** %10
  %468 = load i64, i64* %447
  %469 = call i64 @nyx_array_get({ i64, i8* }* %467, i64 %468)
  call void @nyx_array_push({ i64, i8* }* %466, i64 %469)
  br label %merge109
else108:
  br label %merge109
merge109:
  %470 = load i64, i64* %447
  %471 = add i64 %470, 1
  store i64 %471, i64* %447
  br label %while_cond104
while_end106:
  %472 = alloca i64
  store i64 0, i64* %472
  br label %while_cond110
while_cond110:
  %473 = load i64, i64* %472
  %474 = load { i64, i8* }*, { i64, i8* }** %443
  %475 = call i64 @nyx_array_length({ i64, i8* }* %474)
  %476 = icmp slt i64 %473, %475
  br i1 %476, label %while_body111, label %while_end112
while_body111:
  %477 = load { i64, i8* }*, { i64, i8* }** %445
  %478 = load { i64, i8* }*, { i64, i8* }** %443
  %479 = load i64, i64* %472
  %480 = call i64 @nyx_array_get({ i64, i8* }* %478, i64 %479)
  call void @nyx_array_push({ i64, i8* }* %477, i64 %480)
  %481 = load i64, i64* %472
  %482 = add i64 %481, 1
  store i64 %482, i64* %472
  br label %while_cond110
while_end112:
  %483 = load i64, i64* %429
  %484 = alloca i64
  store i64 %483, i64* %484
  br label %while_cond113
while_cond113:
  %485 = load i64, i64* %484
  %486 = load { i64, i8* }*, { i64, i8* }** %10
  %487 = call i64 @nyx_array_length({ i64, i8* }* %486)
  %488 = icmp slt i64 %485, %487
  br i1 %488, label %while_body114, label %while_end115
while_body114:
  %489 = load { i64, i8* }*, { i64, i8* }** %10
  %490 = load i64, i64* %484
  %491 = getelementptr [10 x i8], [10 x i8]* @.str735, i32 0, i32 0
  %492 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str735.c, i8* %491)
  %493 = call { i64, i8* }* @nyx_array_new_ptr()
  %494 = call { i64, i8* }* @make_astnode(%nyx_string* %492, { i64, i8* }* %493)
  %495 = ptrtoint { i64, i8* }* %494 to i64
  call void @nyx_array_set({ i64, i8* }* %489, i64 %490, i64 %495)
  %496 = load i64, i64* %484
  %497 = add i64 %496, 1
  store i64 %497, i64* %484
  br label %while_cond113
while_end115:
  %498 = getelementptr [9 x i8], [9 x i8]* @.str736, i32 0, i32 0
  %499 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str736.c, i8* %498)
  %500 = call { i64, i8* }* @nyx_array_new_ptr()
  %501 = load %Token, %Token* %24
  %502 = call %nyx_string* @get_token_value(%Token %501)
  %503 = ptrtoint %nyx_string* %502 to i64
  call void @nyx_array_push({ i64, i8* }* %500, i64 %503)
  %504 = load { i64, i8* }*, { i64, i8* }** %147
  %505 = bitcast { i64, i8* }* %504 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %500, i8* %505)
  %506 = load %nyx_string*, %nyx_string** %295
  %507 = ptrtoint %nyx_string* %506 to i64
  call void @nyx_array_push({ i64, i8* }* %500, i64 %507)
  %508 = getelementptr [6 x i8], [6 x i8]* @.str737, i32 0, i32 0
  %509 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str737.c, i8* %508)
  %510 = call { i64, i8* }* @nyx_array_new_ptr()
  %511 = load { i64, i8* }*, { i64, i8* }** %445
  %512 = bitcast { i64, i8* }* %511 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %510, i8* %512)
  %513 = call { i64, i8* }* @make_astnode(%nyx_string* %509, { i64, i8* }* %510)
  %514 = bitcast { i64, i8* }* %513 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %500, i8* %514)
  %515 = load { i64, i8* }*, { i64, i8* }** %26
  %516 = bitcast { i64, i8* }* %515 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %500, i8* %516)
  %517 = getelementptr [1 x i8], [1 x i8]* @.str738, i32 0, i32 0
  %518 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str738.c, i8* %517)
  %519 = ptrtoint %nyx_string* %518 to i64
  call void @nyx_array_push({ i64, i8* }* %500, i64 %519)
  %520 = call { i64, i8* }* @nyx_array_new_ptr()
  %521 = getelementptr [10 x i8], [10 x i8]* @.str739, i32 0, i32 0
  %522 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str739.c, i8* %521)
  %523 = ptrtoint %nyx_string* %522 to i64
  call void @nyx_array_push({ i64, i8* }* %520, i64 %523)
  %524 = load %nyx_string*, %nyx_string** %308
  %525 = ptrtoint %nyx_string* %524 to i64
  call void @nyx_array_push({ i64, i8* }* %520, i64 %525)
  %526 = bitcast { i64, i8* }* %520 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %500, i8* %526)
  %527 = call { i64, i8* }* @nyx_array_new_ptr()
  %528 = getelementptr [12 x i8], [12 x i8]* @.str740, i32 0, i32 0
  %529 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str740.c, i8* %528)
  %530 = ptrtoint %nyx_string* %529 to i64
  call void @nyx_array_push({ i64, i8* }* %527, i64 %530)
  %531 = load { i64, i8* }*, { i64, i8* }** %149
  %532 = bitcast { i64, i8* }* %531 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %527, i8* %532)
  %533 = bitcast { i64, i8* }* %527 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %500, i8* %533)
  %534 = call { i64, i8* }* @make_astnode(%nyx_string* %499, { i64, i8* }* %500)
  ret { i64, i8* }* %534
else102:
  br label %merge103
merge103:
  %535 = getelementptr [9 x i8], [9 x i8]* @.str741, i32 0, i32 0
  %536 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str741.c, i8* %535)
  %537 = call { i64, i8* }* @nyx_array_new_ptr()
  %538 = load %Token, %Token* %24
  %539 = call %nyx_string* @get_token_value(%Token %538)
  %540 = ptrtoint %nyx_string* %539 to i64
  call void @nyx_array_push({ i64, i8* }* %537, i64 %540)
  %541 = load { i64, i8* }*, { i64, i8* }** %147
  %542 = bitcast { i64, i8* }* %541 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %537, i8* %542)
  %543 = load %nyx_string*, %nyx_string** %295
  %544 = ptrtoint %nyx_string* %543 to i64
  call void @nyx_array_push({ i64, i8* }* %537, i64 %544)
  %545 = load { i64, i8* }*, { i64, i8* }** %431
  %546 = bitcast { i64, i8* }* %545 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %537, i8* %546)
  %547 = load { i64, i8* }*, { i64, i8* }** %26
  %548 = bitcast { i64, i8* }* %547 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %537, i8* %548)
  %549 = getelementptr [1 x i8], [1 x i8]* @.str742, i32 0, i32 0
  %550 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str742.c, i8* %549)
  %551 = ptrtoint %nyx_string* %550 to i64
  call void @nyx_array_push({ i64, i8* }* %537, i64 %551)
  %552 = call { i64, i8* }* @nyx_array_new_ptr()
  %553 = getelementptr [10 x i8], [10 x i8]* @.str743, i32 0, i32 0
  %554 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str743.c, i8* %553)
  %555 = ptrtoint %nyx_string* %554 to i64
  call void @nyx_array_push({ i64, i8* }* %552, i64 %555)
  %556 = load %nyx_string*, %nyx_string** %308
  %557 = ptrtoint %nyx_string* %556 to i64
  call void @nyx_array_push({ i64, i8* }* %552, i64 %557)
  %558 = bitcast { i64, i8* }* %552 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %537, i8* %558)
  %559 = call { i64, i8* }* @nyx_array_new_ptr()
  %560 = getelementptr [12 x i8], [12 x i8]* @.str744, i32 0, i32 0
  %561 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str744.c, i8* %560)
  %562 = ptrtoint %nyx_string* %561 to i64
  call void @nyx_array_push({ i64, i8* }* %559, i64 %562)
  %563 = load { i64, i8* }*, { i64, i8* }** %149
  %564 = bitcast { i64, i8* }* %563 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %559, i8* %564)
  %565 = bitcast { i64, i8* }* %559 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %537, i8* %565)
  %566 = call { i64, i8* }* @make_astnode(%nyx_string* %536, { i64, i8* }* %537)
  ret { i64, i8* }* %566
}

define internal { i64, i8* }* @parse_struct(%SharedEnv_parse* %env.param) {
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
  %18 = getelementptr [7 x i8], [7 x i8]* @.str745, i32 0, i32 0
  %19 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str745.c, i8* %18)
  %20 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %19)
  %21 = getelementptr [11 x i8], [11 x i8]* @.str746, i32 0, i32 0
  %22 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str746.c, i8* %21)
  %23 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %22)
  %24 = alloca %Token
  store %Token %23, %Token* %24
  %25 = call { i64, i8* }* @nyx_array_new_ptr()
  %26 = alloca { i64, i8* }*
  store { i64, i8* }* %25, { i64, i8* }** %26
  %27 = getelementptr [5 x i8], [5 x i8]* @.str747, i32 0, i32 0
  %28 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str747.c, i8* %27)
  %29 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %28)
  br i1 %29, label %then0, label %else1
then0:
  %30 = call %Token @advance(%SharedEnv_parse* %env.param)
  %31 = getelementptr [9 x i8], [9 x i8]* @.str748, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str748.c, i8* %31)
  %33 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %32)
  br i1 %33, label %then3, label %else4
then3:
  %34 = call %Token @advance(%SharedEnv_parse* %env.param)
  %35 = alloca %Token
  store %Token %34, %Token* %35
  %36 = load { i64, i8* }*, { i64, i8* }** %26
  %37 = load %Token, %Token* %35
  %38 = call %nyx_string* @get_token_value(%Token %37)
  %39 = ptrtoint %nyx_string* %38 to i64
  call void @nyx_array_push({ i64, i8* }* %36, i64 %39)
  br label %merge5
else4:
  %40 = getelementptr [11 x i8], [11 x i8]* @.str749, i32 0, i32 0
  %41 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str749.c, i8* %40)
  %42 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %41)
  %43 = alloca %Token
  store %Token %42, %Token* %43
  %44 = load { i64, i8* }*, { i64, i8* }** %26
  %45 = load %Token, %Token* %43
  %46 = call %nyx_string* @get_token_value(%Token %45)
  %47 = ptrtoint %nyx_string* %46 to i64
  call void @nyx_array_push({ i64, i8* }* %44, i64 %47)
  br label %merge5
merge5:
  %48 = alloca i1
  store i1 0, i1* %48
  br label %while_cond6
while_cond6:
  %49 = load i1, i1* %48
  %50 = xor i1 %49, true
  br i1 %50, label %while_body7, label %while_end8
while_body7:
  %51 = getelementptr [6 x i8], [6 x i8]* @.str750, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str750.c, i8* %51)
  %53 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %52)
  br i1 %53, label %then9, label %else10
then9:
  %54 = call %Token @advance(%SharedEnv_parse* %env.param)
  %55 = getelementptr [9 x i8], [9 x i8]* @.str751, i32 0, i32 0
  %56 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str751.c, i8* %55)
  %57 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %56)
  br i1 %57, label %then12, label %else13
then12:
  %58 = call %Token @advance(%SharedEnv_parse* %env.param)
  %59 = alloca %Token
  store %Token %58, %Token* %59
  %60 = load { i64, i8* }*, { i64, i8* }** %26
  %61 = load %Token, %Token* %59
  %62 = call %nyx_string* @get_token_value(%Token %61)
  %63 = ptrtoint %nyx_string* %62 to i64
  call void @nyx_array_push({ i64, i8* }* %60, i64 %63)
  br label %merge14
else13:
  %64 = getelementptr [11 x i8], [11 x i8]* @.str752, i32 0, i32 0
  %65 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str752.c, i8* %64)
  %66 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %65)
  %67 = alloca %Token
  store %Token %66, %Token* %67
  %68 = load { i64, i8* }*, { i64, i8* }** %26
  %69 = load %Token, %Token* %67
  %70 = call %nyx_string* @get_token_value(%Token %69)
  %71 = ptrtoint %nyx_string* %70 to i64
  call void @nyx_array_push({ i64, i8* }* %68, i64 %71)
  br label %merge14
merge14:
  br label %merge11
else10:
  store i1 1, i1* %48
  br label %merge11
merge11:
  br label %while_cond6
while_end8:
  %72 = getelementptr [8 x i8], [8 x i8]* @.str753, i32 0, i32 0
  %73 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str753.c, i8* %72)
  %74 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %73)
  br label %merge2
else1:
  br label %merge2
merge2:
  %75 = getelementptr [11 x i8], [11 x i8]* @.str754, i32 0, i32 0
  %76 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str754.c, i8* %75)
  %77 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %76)
  br i1 %77, label %then15, label %else16
then15:
  %78 = call %Token @advance(%SharedEnv_parse* %env.param)
  %79 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  %80 = alloca %nyx_string*
  store %nyx_string* %79, %nyx_string** %80
  %81 = getelementptr [12 x i8], [12 x i8]* @.str755, i32 0, i32 0
  %82 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str755.c, i8* %81)
  %83 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %82)
  %84 = call { i64, i8* }* @nyx_array_new_ptr()
  %85 = call { i64, i8* }* @nyx_array_new_ptr()
  %86 = getelementptr [3 x i8], [3 x i8]* @.str756, i32 0, i32 0
  %87 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str756.c, i8* %86)
  %88 = ptrtoint %nyx_string* %87 to i64
  call void @nyx_array_push({ i64, i8* }* %85, i64 %88)
  %89 = load %nyx_string*, %nyx_string** %80
  %90 = ptrtoint %nyx_string* %89 to i64
  call void @nyx_array_push({ i64, i8* }* %85, i64 %90)
  %91 = bitcast { i64, i8* }* %85 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %84, i8* %91)
  %92 = alloca { i64, i8* }*
  store { i64, i8* }* %84, { i64, i8* }** %92
  %93 = getelementptr [7 x i8], [7 x i8]* @.str757, i32 0, i32 0
  %94 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str757.c, i8* %93)
  %95 = call { i64, i8* }* @nyx_array_new_ptr()
  %96 = load %Token, %Token* %24
  %97 = call %nyx_string* @get_token_value(%Token %96)
  %98 = ptrtoint %nyx_string* %97 to i64
  call void @nyx_array_push({ i64, i8* }* %95, i64 %98)
  %99 = load { i64, i8* }*, { i64, i8* }** %92
  %100 = bitcast { i64, i8* }* %99 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %95, i8* %100)
  %101 = load { i64, i8* }*, { i64, i8* }** %26
  %102 = bitcast { i64, i8* }* %101 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %95, i8* %102)
  %103 = call { i64, i8* }* @make_astnode(%nyx_string* %94, { i64, i8* }* %95)
  ret { i64, i8* }* %103
else16:
  br label %merge17
merge17:
  %104 = getelementptr [11 x i8], [11 x i8]* @.str758, i32 0, i32 0
  %105 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str758.c, i8* %104)
  %106 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %105)
  %107 = call { i64, i8* }* @nyx_array_new_ptr()
  %108 = alloca { i64, i8* }*
  store { i64, i8* }* %107, { i64, i8* }** %108
  %109 = alloca i1
  store i1 0, i1* %109
  br label %while_cond18
while_cond18:
  %110 = load i1, i1* %109
  %111 = xor i1 %110, true
  br i1 %111, label %while_body19, label %while_end20
while_body19:
  %112 = getelementptr [12 x i8], [12 x i8]* @.str759, i32 0, i32 0
  %113 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str759.c, i8* %112)
  %114 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %113)
  br i1 %114, label %then21, label %else22
then21:
  %115 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %109
  br label %merge23
else22:
  %116 = load { i64, i8* }*, { i64, i8* }** %108
  %117 = call i64 @nyx_array_length({ i64, i8* }* %116)
  %118 = icmp sgt i64 %117, 0
  br i1 %118, label %then24, label %else25
then24:
  %119 = getelementptr [6 x i8], [6 x i8]* @.str760, i32 0, i32 0
  %120 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str760.c, i8* %119)
  %121 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %120)
  br i1 %121, label %then27, label %else28
then27:
  %122 = call %Token @advance(%SharedEnv_parse* %env.param)
  %123 = getelementptr [12 x i8], [12 x i8]* @.str761, i32 0, i32 0
  %124 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str761.c, i8* %123)
  %125 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %124)
  br i1 %125, label %then30, label %else31
then30:
  %126 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %109
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
  %127 = load i1, i1* %109
  %128 = xor i1 %127, true
  br i1 %128, label %then33, label %else34
then33:
  %129 = getelementptr [11 x i8], [11 x i8]* @.str762, i32 0, i32 0
  %130 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str762.c, i8* %129)
  %131 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %130)
  %132 = alloca %Token
  store %Token %131, %Token* %132
  %133 = getelementptr [6 x i8], [6 x i8]* @.str763, i32 0, i32 0
  %134 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str763.c, i8* %133)
  %135 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %134)
  %136 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  %137 = alloca %nyx_string*
  store %nyx_string* %136, %nyx_string** %137
  %138 = load { i64, i8* }*, { i64, i8* }** %108
  %139 = call { i64, i8* }* @nyx_array_new_ptr()
  %140 = load %Token, %Token* %132
  %141 = call %nyx_string* @get_token_value(%Token %140)
  %142 = ptrtoint %nyx_string* %141 to i64
  call void @nyx_array_push({ i64, i8* }* %139, i64 %142)
  %143 = load %nyx_string*, %nyx_string** %137
  %144 = ptrtoint %nyx_string* %143 to i64
  call void @nyx_array_push({ i64, i8* }* %139, i64 %144)
  %145 = ptrtoint { i64, i8* }* %139 to i64
  call void @nyx_array_push({ i64, i8* }* %138, i64 %145)
  br label %merge35
else34:
  br label %merge35
merge35:
  br label %merge23
merge23:
  br label %while_cond18
while_end20:
  %146 = getelementptr [7 x i8], [7 x i8]* @.str764, i32 0, i32 0
  %147 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str764.c, i8* %146)
  %148 = call { i64, i8* }* @nyx_array_new_ptr()
  %149 = load %Token, %Token* %24
  %150 = call %nyx_string* @get_token_value(%Token %149)
  %151 = ptrtoint %nyx_string* %150 to i64
  call void @nyx_array_push({ i64, i8* }* %148, i64 %151)
  %152 = load { i64, i8* }*, { i64, i8* }** %108
  %153 = bitcast { i64, i8* }* %152 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %148, i8* %153)
  %154 = load { i64, i8* }*, { i64, i8* }** %26
  %155 = bitcast { i64, i8* }* %154 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %148, i8* %155)
  %156 = call { i64, i8* }* @make_astnode(%nyx_string* %147, { i64, i8* }* %148)
  ret { i64, i8* }* %156
}

define internal { i64, i8* }* @parse_if(%SharedEnv_parse* %env.param) {
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
  %18 = getelementptr [3 x i8], [3 x i8]* @.str765, i32 0, i32 0
  %19 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str765.c, i8* %18)
  %20 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %19)
  %21 = getelementptr [4 x i8], [4 x i8]* @.str766, i32 0, i32 0
  %22 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str766.c, i8* %21)
  %23 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %22)
  br i1 %23, label %then0, label %else1
then0:
  %24 = call { i64, i8* }* @parse_if_let(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %24
else1:
  br label %merge2
merge2:
  %25 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %26 = alloca { i64, i8* }*
  store { i64, i8* }* %25, { i64, i8* }** %26
  %27 = call { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param)
  %28 = alloca { i64, i8* }*
  store { i64, i8* }* %27, { i64, i8* }** %28
  %29 = getelementptr [6 x i8], [6 x i8]* @.str767, i32 0, i32 0
  %30 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str767.c, i8* %29)
  %31 = call { i64, i8* }* @nyx_array_new_ptr()
  %32 = call { i64, i8* }* @make_astnode(%nyx_string* %30, { i64, i8* }* %31)
  %33 = alloca { i64, i8* }*
  store { i64, i8* }* %32, { i64, i8* }** %33
  %34 = getelementptr [5 x i8], [5 x i8]* @.str768, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str768.c, i8* %34)
  %36 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %35)
  br i1 %36, label %then3, label %else4
then3:
  %37 = call %Token @advance(%SharedEnv_parse* %env.param)
  %38 = getelementptr [3 x i8], [3 x i8]* @.str769, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str769.c, i8* %38)
  %40 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %39)
  br i1 %40, label %then6, label %else7
then6:
  %41 = call { i64, i8* }* @parse_if(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %41, { i64, i8* }** %33
  br label %merge8
else7:
  %42 = call { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %42, { i64, i8* }** %33
  br label %merge8
merge8:
  br label %merge5
else4:
  br label %merge5
merge5:
  %43 = getelementptr [3 x i8], [3 x i8]* @.str770, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str770.c, i8* %43)
  %45 = call { i64, i8* }* @nyx_array_new_ptr()
  %46 = load { i64, i8* }*, { i64, i8* }** %26
  %47 = bitcast { i64, i8* }* %46 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %45, i8* %47)
  %48 = load { i64, i8* }*, { i64, i8* }** %28
  %49 = bitcast { i64, i8* }* %48 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %45, i8* %49)
  %50 = load { i64, i8* }*, { i64, i8* }** %33
  %51 = bitcast { i64, i8* }* %50 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %45, i8* %51)
  %52 = call { i64, i8* }* @make_astnode(%nyx_string* %44, { i64, i8* }* %45)
  ret { i64, i8* }* %52
}

define internal { i64, i8* }* @parse_if_let(%SharedEnv_parse* %env.param) {
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
  %18 = getelementptr [4 x i8], [4 x i8]* @.str771, i32 0, i32 0
  %19 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str771.c, i8* %18)
  %20 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %19)
  %21 = call { i64, i8* }* @parse_single_pattern(%SharedEnv_parse* %env.param)
  %22 = alloca { i64, i8* }*
  store { i64, i8* }* %21, { i64, i8* }** %22
  %23 = getelementptr [7 x i8], [7 x i8]* @.str772, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str772.c, i8* %23)
  %25 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %24)
  %26 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %27 = alloca { i64, i8* }*
  store { i64, i8* }* %26, { i64, i8* }** %27
  %28 = call { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param)
  %29 = alloca { i64, i8* }*
  store { i64, i8* }* %28, { i64, i8* }** %29
  %30 = call { i64, i8* }* @nyx_array_new_ptr()
  %31 = alloca { i64, i8* }*
  store { i64, i8* }* %30, { i64, i8* }** %31
  %32 = getelementptr [6 x i8], [6 x i8]* @.str773, i32 0, i32 0
  %33 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str773.c, i8* %32)
  %34 = call { i64, i8* }* @nyx_array_new_ptr()
  %35 = load { i64, i8* }*, { i64, i8* }** %31
  %36 = bitcast { i64, i8* }* %35 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %34, i8* %36)
  %37 = call { i64, i8* }* @make_astnode(%nyx_string* %33, { i64, i8* }* %34)
  %38 = alloca { i64, i8* }*
  store { i64, i8* }* %37, { i64, i8* }** %38
  %39 = getelementptr [5 x i8], [5 x i8]* @.str774, i32 0, i32 0
  %40 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str774.c, i8* %39)
  %41 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %40)
  br i1 %41, label %then0, label %else1
then0:
  %42 = call %Token @advance(%SharedEnv_parse* %env.param)
  %43 = getelementptr [11 x i8], [11 x i8]* @.str775, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str775.c, i8* %43)
  %45 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %44)
  br i1 %45, label %then3, label %else4
then3:
  %46 = call { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %46, { i64, i8* }** %38
  br label %merge5
else4:
  br label %merge5
merge5:
  br label %merge2
else1:
  br label %merge2
merge2:
  %47 = getelementptr [10 x i8], [10 x i8]* @.str776, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str776.c, i8* %47)
  %49 = call { i64, i8* }* @nyx_array_new_ptr()
  %50 = load { i64, i8* }*, { i64, i8* }** %22
  %51 = bitcast { i64, i8* }* %50 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %49, i8* %51)
  %52 = load { i64, i8* }*, { i64, i8* }** %29
  %53 = bitcast { i64, i8* }* %52 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %49, i8* %53)
  %54 = getelementptr [6 x i8], [6 x i8]* @.str777, i32 0, i32 0
  %55 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str777.c, i8* %54)
  %56 = call { i64, i8* }* @nyx_array_new_ptr()
  %57 = call { i64, i8* }* @make_astnode(%nyx_string* %55, { i64, i8* }* %56)
  %58 = bitcast { i64, i8* }* %57 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %49, i8* %58)
  %59 = call { i64, i8* }* @make_astnode(%nyx_string* %48, { i64, i8* }* %49)
  %60 = alloca { i64, i8* }*
  store { i64, i8* }* %59, { i64, i8* }** %60
  %61 = getelementptr [9 x i8], [9 x i8]* @.str778, i32 0, i32 0
  %62 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str778.c, i8* %61)
  %63 = call { i64, i8* }* @nyx_array_new_ptr()
  %64 = call { i64, i8* }* @make_astnode(%nyx_string* %62, { i64, i8* }* %63)
  %65 = alloca { i64, i8* }*
  store { i64, i8* }* %64, { i64, i8* }** %65
  %66 = getelementptr [10 x i8], [10 x i8]* @.str779, i32 0, i32 0
  %67 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str779.c, i8* %66)
  %68 = call { i64, i8* }* @nyx_array_new_ptr()
  %69 = load { i64, i8* }*, { i64, i8* }** %65
  %70 = bitcast { i64, i8* }* %69 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %68, i8* %70)
  %71 = load { i64, i8* }*, { i64, i8* }** %38
  %72 = bitcast { i64, i8* }* %71 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %68, i8* %72)
  %73 = getelementptr [6 x i8], [6 x i8]* @.str780, i32 0, i32 0
  %74 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str780.c, i8* %73)
  %75 = call { i64, i8* }* @nyx_array_new_ptr()
  %76 = call { i64, i8* }* @make_astnode(%nyx_string* %74, { i64, i8* }* %75)
  %77 = bitcast { i64, i8* }* %76 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %68, i8* %77)
  %78 = call { i64, i8* }* @make_astnode(%nyx_string* %67, { i64, i8* }* %68)
  %79 = alloca { i64, i8* }*
  store { i64, i8* }* %78, { i64, i8* }** %79
  %80 = call { i64, i8* }* @nyx_array_new_ptr()
  %81 = alloca { i64, i8* }*
  store { i64, i8* }* %80, { i64, i8* }** %81
  %82 = load { i64, i8* }*, { i64, i8* }** %81
  %83 = load { i64, i8* }*, { i64, i8* }** %60
  %84 = ptrtoint { i64, i8* }* %83 to i64
  call void @nyx_array_push({ i64, i8* }* %82, i64 %84)
  %85 = load { i64, i8* }*, { i64, i8* }** %81
  %86 = load { i64, i8* }*, { i64, i8* }** %79
  %87 = ptrtoint { i64, i8* }* %86 to i64
  call void @nyx_array_push({ i64, i8* }* %85, i64 %87)
  %88 = getelementptr [6 x i8], [6 x i8]* @.str781, i32 0, i32 0
  %89 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str781.c, i8* %88)
  %90 = call { i64, i8* }* @nyx_array_new_ptr()
  %91 = load { i64, i8* }*, { i64, i8* }** %27
  %92 = bitcast { i64, i8* }* %91 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %90, i8* %92)
  %93 = load { i64, i8* }*, { i64, i8* }** %81
  %94 = bitcast { i64, i8* }* %93 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %90, i8* %94)
  %95 = call { i64, i8* }* @make_astnode(%nyx_string* %89, { i64, i8* }* %90)
  ret { i64, i8* }* %95
}

define internal { i64, i8* }* @parse_while(%SharedEnv_parse* %env.param) {
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
  %18 = getelementptr [6 x i8], [6 x i8]* @.str782, i32 0, i32 0
  %19 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str782.c, i8* %18)
  %20 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %19)
  %21 = getelementptr [4 x i8], [4 x i8]* @.str783, i32 0, i32 0
  %22 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str783.c, i8* %21)
  %23 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %22)
  br i1 %23, label %then0, label %else1
then0:
  %24 = call { i64, i8* }* @parse_while_let(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %24
else1:
  br label %merge2
merge2:
  %25 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %26 = alloca { i64, i8* }*
  store { i64, i8* }* %25, { i64, i8* }** %26
  %27 = call { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param)
  %28 = alloca { i64, i8* }*
  store { i64, i8* }* %27, { i64, i8* }** %28
  %29 = getelementptr [6 x i8], [6 x i8]* @.str784, i32 0, i32 0
  %30 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str784.c, i8* %29)
  %31 = call { i64, i8* }* @nyx_array_new_ptr()
  %32 = load { i64, i8* }*, { i64, i8* }** %26
  %33 = bitcast { i64, i8* }* %32 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %31, i8* %33)
  %34 = load { i64, i8* }*, { i64, i8* }** %28
  %35 = bitcast { i64, i8* }* %34 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %31, i8* %35)
  %36 = call { i64, i8* }* @make_astnode(%nyx_string* %30, { i64, i8* }* %31)
  ret { i64, i8* }* %36
}

define internal { i64, i8* }* @parse_while_let(%SharedEnv_parse* %env.param) {
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
  %18 = getelementptr [4 x i8], [4 x i8]* @.str785, i32 0, i32 0
  %19 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str785.c, i8* %18)
  %20 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %19)
  %21 = call { i64, i8* }* @parse_single_pattern(%SharedEnv_parse* %env.param)
  %22 = alloca { i64, i8* }*
  store { i64, i8* }* %21, { i64, i8* }** %22
  %23 = getelementptr [7 x i8], [7 x i8]* @.str786, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str786.c, i8* %23)
  %25 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %24)
  %26 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %27 = alloca { i64, i8* }*
  store { i64, i8* }* %26, { i64, i8* }** %27
  %28 = call { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param)
  %29 = alloca { i64, i8* }*
  store { i64, i8* }* %28, { i64, i8* }** %29
  %30 = getelementptr [10 x i8], [10 x i8]* @.str787, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str787.c, i8* %30)
  %32 = call { i64, i8* }* @nyx_array_new_ptr()
  %33 = load { i64, i8* }*, { i64, i8* }** %22
  %34 = bitcast { i64, i8* }* %33 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %32, i8* %34)
  %35 = load { i64, i8* }*, { i64, i8* }** %27
  %36 = bitcast { i64, i8* }* %35 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %32, i8* %36)
  %37 = load { i64, i8* }*, { i64, i8* }** %29
  %38 = bitcast { i64, i8* }* %37 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %32, i8* %38)
  %39 = call { i64, i8* }* @make_astnode(%nyx_string* %31, { i64, i8* }* %32)
  ret { i64, i8* }* %39
}

define internal { i64, i8* }* @parse_for(%SharedEnv_parse* %env.param) {
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
  %18 = getelementptr [4 x i8], [4 x i8]* @.str788, i32 0, i32 0
  %19 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str788.c, i8* %18)
  %20 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %19)
  %21 = getelementptr [11 x i8], [11 x i8]* @.str789, i32 0, i32 0
  %22 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str789.c, i8* %21)
  %23 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %22)
  %24 = alloca %Token
  store %Token %23, %Token* %24
  %25 = getelementptr [1 x i8], [1 x i8]* @.str790, i32 0, i32 0
  %26 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str790.c, i8* %25)
  %27 = alloca %nyx_string*
  store %nyx_string* %26, %nyx_string** %27
  %28 = getelementptr [6 x i8], [6 x i8]* @.str791, i32 0, i32 0
  %29 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str791.c, i8* %28)
  %30 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %29)
  br i1 %30, label %then0, label %else1
then0:
  %31 = call %Token @advance(%SharedEnv_parse* %env.param)
  %32 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %32, %nyx_string** %27
  br label %merge2
else1:
  br label %merge2
merge2:
  %33 = getelementptr [3 x i8], [3 x i8]* @.str792, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str792.c, i8* %33)
  %35 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %34)
  %36 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %37 = alloca { i64, i8* }*
  store { i64, i8* }* %36, { i64, i8* }** %37
  %38 = call { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param)
  %39 = alloca { i64, i8* }*
  store { i64, i8* }* %38, { i64, i8* }** %39
  %40 = getelementptr [4 x i8], [4 x i8]* @.str793, i32 0, i32 0
  %41 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str793.c, i8* %40)
  %42 = call { i64, i8* }* @nyx_array_new_ptr()
  %43 = load %Token, %Token* %24
  %44 = call %nyx_string* @get_token_value(%Token %43)
  %45 = ptrtoint %nyx_string* %44 to i64
  call void @nyx_array_push({ i64, i8* }* %42, i64 %45)
  %46 = load { i64, i8* }*, { i64, i8* }** %37
  %47 = bitcast { i64, i8* }* %46 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %42, i8* %47)
  %48 = load { i64, i8* }*, { i64, i8* }** %39
  %49 = bitcast { i64, i8* }* %48 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %42, i8* %49)
  %50 = load %nyx_string*, %nyx_string** %27
  %51 = ptrtoint %nyx_string* %50 to i64
  call void @nyx_array_push({ i64, i8* }* %42, i64 %51)
  %52 = call { i64, i8* }* @make_astnode(%nyx_string* %41, { i64, i8* }* %42)
  ret { i64, i8* }* %52
}

define internal { i64, i8* }* @parse_return(%SharedEnv_parse* %env.param) {
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
  %18 = getelementptr [7 x i8], [7 x i8]* @.str794, i32 0, i32 0
  %19 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str794.c, i8* %18)
  %20 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %19)
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
  %27 = getelementptr [12 x i8], [12 x i8]* @.str795, i32 0, i32 0
  %28 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str795.c, i8* %27)
  %29 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %28)
  br i1 %29, label %sc_or_end1, label %sc_or_rhs0
sc_or_rhs0:
  %30 = getelementptr [4 x i8], [4 x i8]* @.str796, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str796.c, i8* %30)
  %32 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %31)
  store i1 %32, i1* %26
  br label %sc_or_end1
sc_or_end1:
  %33 = load i1, i1* %26
  br i1 %33, label %sc_or_end3, label %sc_or_rhs2
sc_or_rhs2:
  %34 = getelementptr [4 x i8], [4 x i8]* @.str797, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str797.c, i8* %34)
  %36 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %35)
  store i1 %36, i1* %25
  br label %sc_or_end3
sc_or_end3:
  %37 = load i1, i1* %25
  br i1 %37, label %sc_or_end5, label %sc_or_rhs4
sc_or_rhs4:
  %38 = getelementptr [4 x i8], [4 x i8]* @.str798, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str798.c, i8* %38)
  %40 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %39)
  store i1 %40, i1* %24
  br label %sc_or_end5
sc_or_end5:
  %41 = load i1, i1* %24
  br i1 %41, label %sc_or_end7, label %sc_or_rhs6
sc_or_rhs6:
  %42 = getelementptr [6 x i8], [6 x i8]* @.str799, i32 0, i32 0
  %43 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str799.c, i8* %42)
  %44 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %43)
  store i1 %44, i1* %23
  br label %sc_or_end7
sc_or_end7:
  %45 = load i1, i1* %23
  br i1 %45, label %sc_or_end9, label %sc_or_rhs8
sc_or_rhs8:
  %46 = getelementptr [4 x i8], [4 x i8]* @.str800, i32 0, i32 0
  %47 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str800.c, i8* %46)
  %48 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %47)
  store i1 %48, i1* %22
  br label %sc_or_end9
sc_or_end9:
  %49 = load i1, i1* %22
  br i1 %49, label %sc_or_end11, label %sc_or_rhs10
sc_or_rhs10:
  %50 = getelementptr [7 x i8], [7 x i8]* @.str801, i32 0, i32 0
  %51 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str801.c, i8* %50)
  %52 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %51)
  store i1 %52, i1* %21
  br label %sc_or_end11
sc_or_end11:
  %53 = load i1, i1* %21
  br i1 %53, label %then12, label %else13
then12:
  %54 = getelementptr [8 x i8], [8 x i8]* @.str802, i32 0, i32 0
  %55 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str802.c, i8* %54)
  %56 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push({ i64, i8* }* %56, i64 0)
  %57 = call { i64, i8* }* @make_astnode(%nyx_string* %55, { i64, i8* }* %56)
  %58 = alloca { i64, i8* }*
  store { i64, i8* }* %57, { i64, i8* }** %58
  %59 = getelementptr [7 x i8], [7 x i8]* @.str803, i32 0, i32 0
  %60 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str803.c, i8* %59)
  %61 = call { i64, i8* }* @nyx_array_new_ptr()
  %62 = load { i64, i8* }*, { i64, i8* }** %58
  %63 = bitcast { i64, i8* }* %62 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %61, i8* %63)
  %64 = call { i64, i8* }* @make_astnode(%nyx_string* %60, { i64, i8* }* %61)
  ret { i64, i8* }* %64
else13:
  br label %merge14
merge14:
  %65 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %66 = alloca { i64, i8* }*
  store { i64, i8* }* %65, { i64, i8* }** %66
  %67 = getelementptr [7 x i8], [7 x i8]* @.str804, i32 0, i32 0
  %68 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str804.c, i8* %67)
  %69 = call { i64, i8* }* @nyx_array_new_ptr()
  %70 = load { i64, i8* }*, { i64, i8* }** %66
  %71 = bitcast { i64, i8* }* %70 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %69, i8* %71)
  %72 = call { i64, i8* }* @make_astnode(%nyx_string* %68, { i64, i8* }* %69)
  ret { i64, i8* }* %72
}

define internal { i64, i8* }* @parse_export(%SharedEnv_parse* %env.param) {
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
  %18 = getelementptr [7 x i8], [7 x i8]* @.str805, i32 0, i32 0
  %19 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str805.c, i8* %18)
  %20 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %19)
  %21 = getelementptr [3 x i8], [3 x i8]* @.str806, i32 0, i32 0
  %22 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str806.c, i8* %21)
  %23 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %22)
  br i1 %23, label %then0, label %else1
then0:
  %24 = call { i64, i8* }* @parse_function(%SharedEnv_parse* %env.param)
  %25 = alloca { i64, i8* }*
  store { i64, i8* }* %24, { i64, i8* }** %25
  %26 = getelementptr [7 x i8], [7 x i8]* @.str807, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str807.c, i8* %26)
  %28 = call { i64, i8* }* @nyx_array_new_ptr()
  %29 = load { i64, i8* }*, { i64, i8* }** %25
  %30 = bitcast { i64, i8* }* %29 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %28, i8* %30)
  %31 = call { i64, i8* }* @make_astnode(%nyx_string* %27, { i64, i8* }* %28)
  ret { i64, i8* }* %31
else1:
  br label %merge2
merge2:
  %32 = getelementptr [7 x i8], [7 x i8]* @.str808, i32 0, i32 0
  %33 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str808.c, i8* %32)
  %34 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %33)
  br i1 %34, label %then3, label %else4
then3:
  %35 = call { i64, i8* }* @parse_struct(%SharedEnv_parse* %env.param)
  %36 = alloca { i64, i8* }*
  store { i64, i8* }* %35, { i64, i8* }** %36
  %37 = getelementptr [7 x i8], [7 x i8]* @.str809, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str809.c, i8* %37)
  %39 = call { i64, i8* }* @nyx_array_new_ptr()
  %40 = load { i64, i8* }*, { i64, i8* }** %36
  %41 = bitcast { i64, i8* }* %40 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %39, i8* %41)
  %42 = call { i64, i8* }* @make_astnode(%nyx_string* %38, { i64, i8* }* %39)
  ret { i64, i8* }* %42
else4:
  br label %merge5
merge5:
  %43 = getelementptr [5 x i8], [5 x i8]* @.str810, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str810.c, i8* %43)
  %45 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %44)
  br i1 %45, label %then6, label %else7
then6:
  %46 = call { i64, i8* }* @parse_enum(%SharedEnv_parse* %env.param)
  %47 = alloca { i64, i8* }*
  store { i64, i8* }* %46, { i64, i8* }** %47
  %48 = getelementptr [7 x i8], [7 x i8]* @.str811, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str811.c, i8* %48)
  %50 = call { i64, i8* }* @nyx_array_new_ptr()
  %51 = load { i64, i8* }*, { i64, i8* }** %47
  %52 = bitcast { i64, i8* }* %51 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %50, i8* %52)
  %53 = call { i64, i8* }* @make_astnode(%nyx_string* %49, { i64, i8* }* %50)
  ret { i64, i8* }* %53
else7:
  br label %merge8
merge8:
  %54 = getelementptr [6 x i8], [6 x i8]* @.str812, i32 0, i32 0
  %55 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str812.c, i8* %54)
  %56 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %55)
  br i1 %56, label %then9, label %else10
then9:
  %57 = call { i64, i8* }* @parse_trait(%SharedEnv_parse* %env.param)
  %58 = alloca { i64, i8* }*
  store { i64, i8* }* %57, { i64, i8* }** %58
  %59 = getelementptr [7 x i8], [7 x i8]* @.str813, i32 0, i32 0
  %60 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str813.c, i8* %59)
  %61 = call { i64, i8* }* @nyx_array_new_ptr()
  %62 = load { i64, i8* }*, { i64, i8* }** %58
  %63 = bitcast { i64, i8* }* %62 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %61, i8* %63)
  %64 = call { i64, i8* }* @make_astnode(%nyx_string* %60, { i64, i8* }* %61)
  ret { i64, i8* }* %64
else10:
  br label %merge11
merge11:
  %65 = getelementptr [11 x i8], [11 x i8]* @.str814, i32 0, i32 0
  %66 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str814.c, i8* %65)
  %67 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %66)
  br i1 %67, label %then12, label %else13
then12:
  %68 = call %Token @peek(%SharedEnv_parse* %env.param)
  %69 = call %nyx_string* @get_token_value(%Token %68)
  %70 = getelementptr [5 x i8], [5 x i8]* @.str815, i32 0, i32 0
  %71 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str815.c, i8* %70)
  %72 = call i1 @nyx_string_equals(%nyx_string* %69, %nyx_string* %71)
  br i1 %72, label %then15, label %else16
then15:
  %73 = call { i64, i8* }* @parse_type_alias(%SharedEnv_parse* %env.param)
  %74 = alloca { i64, i8* }*
  store { i64, i8* }* %73, { i64, i8* }** %74
  %75 = getelementptr [7 x i8], [7 x i8]* @.str816, i32 0, i32 0
  %76 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str816.c, i8* %75)
  %77 = call { i64, i8* }* @nyx_array_new_ptr()
  %78 = load { i64, i8* }*, { i64, i8* }** %74
  %79 = bitcast { i64, i8* }* %78 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %77, i8* %79)
  %80 = call { i64, i8* }* @make_astnode(%nyx_string* %76, { i64, i8* }* %77)
  ret { i64, i8* }* %80
else16:
  br label %merge17
merge17:
  br label %merge14
else13:
  br label %merge14
merge14:
  %81 = call %Token @peek(%SharedEnv_parse* %env.param)
  %82 = alloca %Token
  store %Token %81, %Token* %82
  %83 = getelementptr [8 x i8], [8 x i8]* @.str817, i32 0, i32 0
  %84 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str817.c, i8* %83)
  %85 = load %Token, %Token* %82
  %86 = call i64 @get_token_line(%Token %85)
  %87 = load %Token, %Token* %82
  %88 = call i64 @get_token_column(%Token %87)
  %89 = getelementptr [58 x i8], [58 x i8]* @.str818, i32 0, i32 0
  %90 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str818.c, i8* %89)
  %91 = getelementptr [56 x i8], [56 x i8]* @.str819, i32 0, i32 0
  %92 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str819.c, i8* %91)
  %93 = call %nyx_string* @p_msg(%SharedEnv_parse* %env.param, %nyx_string* %90, %nyx_string* %92)
  %94 = call i64 @p_diag(%SharedEnv_parse* %env.param, %nyx_string* %84, i64 %86, i64 %88, %nyx_string* %93)
  %95 = getelementptr [6 x i8], [6 x i8]* @.str820, i32 0, i32 0
  %96 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str820.c, i8* %95)
  %97 = call { i64, i8* }* @nyx_array_new_ptr()
  %98 = call { i64, i8* }* @make_astnode(%nyx_string* %96, { i64, i8* }* %97)
  ret { i64, i8* }* %98
}

define internal { i64, i8* }* @parse_import(%SharedEnv_parse* %env.param) {
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
  %18 = getelementptr [7 x i8], [7 x i8]* @.str821, i32 0, i32 0
  %19 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str821.c, i8* %18)
  %20 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %19)
  %21 = getelementptr [7 x i8], [7 x i8]* @.str822, i32 0, i32 0
  %22 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str822.c, i8* %21)
  %23 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %22)
  br i1 %23, label %then0, label %else1
then0:
  %24 = getelementptr [7 x i8], [7 x i8]* @.str823, i32 0, i32 0
  %25 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str823.c, i8* %24)
  %26 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %25)
  %27 = alloca %Token
  store %Token %26, %Token* %27
  %28 = load %Token, %Token* %27
  %29 = call %nyx_string* @get_token_value(%Token %28)
  %30 = alloca %nyx_string*
  store %nyx_string* %29, %nyx_string** %30
  %31 = getelementptr [1 x i8], [1 x i8]* @.str824, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str824.c, i8* %31)
  %33 = alloca %nyx_string*
  store %nyx_string* %32, %nyx_string** %33
  %34 = getelementptr [3 x i8], [3 x i8]* @.str825, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str825.c, i8* %34)
  %36 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %35)
  br i1 %36, label %then3, label %else4
then3:
  %37 = call %Token @advance(%SharedEnv_parse* %env.param)
  %38 = getelementptr [11 x i8], [11 x i8]* @.str826, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str826.c, i8* %38)
  %40 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %39)
  %41 = alloca %Token
  store %Token %40, %Token* %41
  %42 = load %Token, %Token* %41
  %43 = call %nyx_string* @get_token_value(%Token %42)
  store %nyx_string* %43, %nyx_string** %33
  br label %merge5
else4:
  br label %merge5
merge5:
  %44 = getelementptr [14 x i8], [14 x i8]* @.str827, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str827.c, i8* %44)
  %46 = call { i64, i8* }* @nyx_array_new_ptr()
  %47 = load %nyx_string*, %nyx_string** %30
  %48 = ptrtoint %nyx_string* %47 to i64
  call void @nyx_array_push({ i64, i8* }* %46, i64 %48)
  %49 = load %nyx_string*, %nyx_string** %33
  %50 = ptrtoint %nyx_string* %49 to i64
  call void @nyx_array_push({ i64, i8* }* %46, i64 %50)
  %51 = call { i64, i8* }* @make_astnode(%nyx_string* %45, { i64, i8* }* %46)
  ret { i64, i8* }* %51
else1:
  br label %merge2
merge2:
  %52 = getelementptr [11 x i8], [11 x i8]* @.str828, i32 0, i32 0
  %53 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str828.c, i8* %52)
  %54 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %53)
  %55 = call { i64, i8* }* @nyx_array_new_ptr()
  %56 = alloca { i64, i8* }*
  store { i64, i8* }* %55, { i64, i8* }** %56
  %57 = alloca i1
  store i1 0, i1* %57
  br label %while_cond6
while_cond6:
  %58 = load i1, i1* %57
  %59 = xor i1 %58, true
  br i1 %59, label %while_body7, label %while_end8
while_body7:
  %60 = getelementptr [11 x i8], [11 x i8]* @.str829, i32 0, i32 0
  %61 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str829.c, i8* %60)
  %62 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %61)
  %63 = alloca %Token
  store %Token %62, %Token* %63
  %64 = load %Token, %Token* %63
  %65 = call %nyx_string* @get_token_value(%Token %64)
  %66 = alloca %nyx_string*
  store %nyx_string* %65, %nyx_string** %66
  %67 = load { i64, i8* }*, { i64, i8* }** %56
  %68 = load %nyx_string*, %nyx_string** %66
  %69 = ptrtoint %nyx_string* %68 to i64
  call void @nyx_array_push({ i64, i8* }* %67, i64 %69)
  %70 = getelementptr [6 x i8], [6 x i8]* @.str830, i32 0, i32 0
  %71 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str830.c, i8* %70)
  %72 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %71)
  br i1 %72, label %then9, label %else10
then9:
  %73 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge11
else10:
  store i1 1, i1* %57
  br label %merge11
merge11:
  br label %while_cond6
while_end8:
  %74 = getelementptr [12 x i8], [12 x i8]* @.str831, i32 0, i32 0
  %75 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str831.c, i8* %74)
  %76 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %75)
  %77 = getelementptr [5 x i8], [5 x i8]* @.str832, i32 0, i32 0
  %78 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str832.c, i8* %77)
  %79 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %78)
  %80 = getelementptr [7 x i8], [7 x i8]* @.str833, i32 0, i32 0
  %81 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str833.c, i8* %80)
  %82 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %81)
  %83 = alloca %Token
  store %Token %82, %Token* %83
  %84 = load %Token, %Token* %83
  %85 = call %nyx_string* @get_token_value(%Token %84)
  %86 = alloca %nyx_string*
  store %nyx_string* %85, %nyx_string** %86
  %87 = getelementptr [7 x i8], [7 x i8]* @.str834, i32 0, i32 0
  %88 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str834.c, i8* %87)
  %89 = call { i64, i8* }* @nyx_array_new_ptr()
  %90 = load { i64, i8* }*, { i64, i8* }** %56
  %91 = bitcast { i64, i8* }* %90 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %89, i8* %91)
  %92 = load %nyx_string*, %nyx_string** %86
  %93 = ptrtoint %nyx_string* %92 to i64
  call void @nyx_array_push({ i64, i8* }* %89, i64 %93)
  %94 = call { i64, i8* }* @make_astnode(%nyx_string* %88, { i64, i8* }* %89)
  ret { i64, i8* }* %94
}

define internal { i64, i8* }* @parse_pub(%SharedEnv_parse* %env.param) {
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
  %18 = getelementptr [4 x i8], [4 x i8]* @.str835, i32 0, i32 0
  %19 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str835.c, i8* %18)
  %20 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %19)
  %21 = getelementptr [3 x i8], [3 x i8]* @.str836, i32 0, i32 0
  %22 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str836.c, i8* %21)
  %23 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %22)
  br i1 %23, label %then0, label %else1
then0:
  %24 = call { i64, i8* }* @parse_function(%SharedEnv_parse* %env.param)
  %25 = alloca { i64, i8* }*
  store { i64, i8* }* %24, { i64, i8* }** %25
  %26 = getelementptr [7 x i8], [7 x i8]* @.str837, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str837.c, i8* %26)
  %28 = call { i64, i8* }* @nyx_array_new_ptr()
  %29 = load { i64, i8* }*, { i64, i8* }** %25
  %30 = bitcast { i64, i8* }* %29 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %28, i8* %30)
  %31 = call { i64, i8* }* @make_astnode(%nyx_string* %27, { i64, i8* }* %28)
  ret { i64, i8* }* %31
else1:
  br label %merge2
merge2:
  %32 = getelementptr [7 x i8], [7 x i8]* @.str838, i32 0, i32 0
  %33 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str838.c, i8* %32)
  %34 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %33)
  br i1 %34, label %then3, label %else4
then3:
  %35 = call { i64, i8* }* @parse_struct(%SharedEnv_parse* %env.param)
  %36 = alloca { i64, i8* }*
  store { i64, i8* }* %35, { i64, i8* }** %36
  %37 = getelementptr [7 x i8], [7 x i8]* @.str839, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str839.c, i8* %37)
  %39 = call { i64, i8* }* @nyx_array_new_ptr()
  %40 = load { i64, i8* }*, { i64, i8* }** %36
  %41 = bitcast { i64, i8* }* %40 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %39, i8* %41)
  %42 = call { i64, i8* }* @make_astnode(%nyx_string* %38, { i64, i8* }* %39)
  ret { i64, i8* }* %42
else4:
  br label %merge5
merge5:
  %43 = getelementptr [5 x i8], [5 x i8]* @.str840, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str840.c, i8* %43)
  %45 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %44)
  br i1 %45, label %then6, label %else7
then6:
  %46 = call { i64, i8* }* @parse_enum(%SharedEnv_parse* %env.param)
  %47 = alloca { i64, i8* }*
  store { i64, i8* }* %46, { i64, i8* }** %47
  %48 = getelementptr [7 x i8], [7 x i8]* @.str841, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str841.c, i8* %48)
  %50 = call { i64, i8* }* @nyx_array_new_ptr()
  %51 = load { i64, i8* }*, { i64, i8* }** %47
  %52 = bitcast { i64, i8* }* %51 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %50, i8* %52)
  %53 = call { i64, i8* }* @make_astnode(%nyx_string* %49, { i64, i8* }* %50)
  ret { i64, i8* }* %53
else7:
  br label %merge8
merge8:
  %54 = getelementptr [6 x i8], [6 x i8]* @.str842, i32 0, i32 0
  %55 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str842.c, i8* %54)
  %56 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %55)
  br i1 %56, label %then9, label %else10
then9:
  %57 = call { i64, i8* }* @parse_trait(%SharedEnv_parse* %env.param)
  %58 = alloca { i64, i8* }*
  store { i64, i8* }* %57, { i64, i8* }** %58
  %59 = getelementptr [7 x i8], [7 x i8]* @.str843, i32 0, i32 0
  %60 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str843.c, i8* %59)
  %61 = call { i64, i8* }* @nyx_array_new_ptr()
  %62 = load { i64, i8* }*, { i64, i8* }** %58
  %63 = bitcast { i64, i8* }* %62 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %61, i8* %63)
  %64 = call { i64, i8* }* @make_astnode(%nyx_string* %60, { i64, i8* }* %61)
  ret { i64, i8* }* %64
else10:
  br label %merge11
merge11:
  %65 = getelementptr [11 x i8], [11 x i8]* @.str844, i32 0, i32 0
  %66 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str844.c, i8* %65)
  %67 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %66)
  br i1 %67, label %then12, label %else13
then12:
  %68 = call %Token @peek(%SharedEnv_parse* %env.param)
  %69 = call %nyx_string* @get_token_value(%Token %68)
  %70 = getelementptr [5 x i8], [5 x i8]* @.str845, i32 0, i32 0
  %71 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str845.c, i8* %70)
  %72 = call i1 @nyx_string_equals(%nyx_string* %69, %nyx_string* %71)
  br i1 %72, label %then15, label %else16
then15:
  %73 = call { i64, i8* }* @parse_type_alias(%SharedEnv_parse* %env.param)
  %74 = alloca { i64, i8* }*
  store { i64, i8* }* %73, { i64, i8* }** %74
  %75 = getelementptr [7 x i8], [7 x i8]* @.str846, i32 0, i32 0
  %76 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str846.c, i8* %75)
  %77 = call { i64, i8* }* @nyx_array_new_ptr()
  %78 = load { i64, i8* }*, { i64, i8* }** %74
  %79 = bitcast { i64, i8* }* %78 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %77, i8* %79)
  %80 = call { i64, i8* }* @make_astnode(%nyx_string* %76, { i64, i8* }* %77)
  ret { i64, i8* }* %80
else16:
  br label %merge17
merge17:
  br label %merge14
else13:
  br label %merge14
merge14:
  %81 = call %Token @peek(%SharedEnv_parse* %env.param)
  %82 = alloca %Token
  store %Token %81, %Token* %82
  %83 = getelementptr [8 x i8], [8 x i8]* @.str847, i32 0, i32 0
  %84 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str847.c, i8* %83)
  %85 = load %Token, %Token* %82
  %86 = call i64 @get_token_line(%Token %85)
  %87 = load %Token, %Token* %82
  %88 = call i64 @get_token_column(%Token %87)
  %89 = getelementptr [55 x i8], [55 x i8]* @.str848, i32 0, i32 0
  %90 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str848.c, i8* %89)
  %91 = getelementptr [53 x i8], [53 x i8]* @.str849, i32 0, i32 0
  %92 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str849.c, i8* %91)
  %93 = call %nyx_string* @p_msg(%SharedEnv_parse* %env.param, %nyx_string* %90, %nyx_string* %92)
  %94 = call i64 @p_diag(%SharedEnv_parse* %env.param, %nyx_string* %84, i64 %86, i64 %88, %nyx_string* %93)
  %95 = getelementptr [6 x i8], [6 x i8]* @.str850, i32 0, i32 0
  %96 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str850.c, i8* %95)
  %97 = call { i64, i8* }* @nyx_array_new_ptr()
  %98 = call { i64, i8* }* @make_astnode(%nyx_string* %96, { i64, i8* }* %97)
  ret { i64, i8* }* %98
}

define internal { i64, i8* }* @parse_module_decl(%SharedEnv_parse* %env.param) {
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
  %18 = getelementptr [7 x i8], [7 x i8]* @.str851, i32 0, i32 0
  %19 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str851.c, i8* %18)
  %20 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %19)
  %21 = getelementptr [11 x i8], [11 x i8]* @.str852, i32 0, i32 0
  %22 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str852.c, i8* %21)
  %23 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %22)
  %24 = alloca %Token
  store %Token %23, %Token* %24
  %25 = load %Token, %Token* %24
  %26 = call %nyx_string* @get_token_value(%Token %25)
  %27 = alloca %nyx_string*
  store %nyx_string* %26, %nyx_string** %27
  %28 = getelementptr [7 x i8], [7 x i8]* @.str853, i32 0, i32 0
  %29 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str853.c, i8* %28)
  %30 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %29)
  %31 = getelementptr [13 x i8], [13 x i8]* @.str854, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str854.c, i8* %31)
  %33 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %32)
  %34 = call { i64, i8* }* @nyx_array_new_ptr()
  %35 = alloca { i64, i8* }*
  store { i64, i8* }* %34, { i64, i8* }** %35
  %36 = alloca i1
  store i1 0, i1* %36
  br label %while_cond0
while_cond0:
  %37 = load i1, i1* %36
  %38 = xor i1 %37, true
  br i1 %38, label %while_body1, label %while_end2
while_body1:
  %39 = getelementptr [14 x i8], [14 x i8]* @.str855, i32 0, i32 0
  %40 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str855.c, i8* %39)
  %41 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %40)
  br i1 %41, label %then3, label %else4
then3:
  store i1 1, i1* %36
  br label %merge5
else4:
  %42 = getelementptr [11 x i8], [11 x i8]* @.str856, i32 0, i32 0
  %43 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str856.c, i8* %42)
  %44 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %43)
  %45 = alloca %Token
  store %Token %44, %Token* %45
  %46 = load %Token, %Token* %45
  %47 = call %nyx_string* @get_token_value(%Token %46)
  %48 = alloca %nyx_string*
  store %nyx_string* %47, %nyx_string** %48
  %49 = load { i64, i8* }*, { i64, i8* }** %35
  %50 = load %nyx_string*, %nyx_string** %48
  %51 = ptrtoint %nyx_string* %50 to i64
  call void @nyx_array_push({ i64, i8* }* %49, i64 %51)
  %52 = getelementptr [6 x i8], [6 x i8]* @.str857, i32 0, i32 0
  %53 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str857.c, i8* %52)
  %54 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %53)
  br i1 %54, label %then6, label %else7
then6:
  %55 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge8
else7:
  br label %merge8
merge8:
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %56 = getelementptr [14 x i8], [14 x i8]* @.str858, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str858.c, i8* %56)
  %58 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %57)
  %59 = getelementptr [12 x i8], [12 x i8]* @.str859, i32 0, i32 0
  %60 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str859.c, i8* %59)
  %61 = call { i64, i8* }* @nyx_array_new_ptr()
  %62 = load %nyx_string*, %nyx_string** %27
  %63 = ptrtoint %nyx_string* %62 to i64
  call void @nyx_array_push({ i64, i8* }* %61, i64 %63)
  %64 = load { i64, i8* }*, { i64, i8* }** %35
  %65 = bitcast { i64, i8* }* %64 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %61, i8* %65)
  %66 = call { i64, i8* }* @make_astnode(%nyx_string* %60, { i64, i8* }* %61)
  ret { i64, i8* }* %66
}

define internal { i64, i8* }* @parse_trait(%SharedEnv_parse* %env.param) {
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
  %18 = getelementptr [6 x i8], [6 x i8]* @.str860, i32 0, i32 0
  %19 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str860.c, i8* %18)
  %20 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %19)
  %21 = getelementptr [11 x i8], [11 x i8]* @.str861, i32 0, i32 0
  %22 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str861.c, i8* %21)
  %23 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %22)
  %24 = alloca %Token
  store %Token %23, %Token* %24
  %25 = load %Token, %Token* %24
  %26 = call %nyx_string* @get_token_value(%Token %25)
  %27 = alloca %nyx_string*
  store %nyx_string* %26, %nyx_string** %27
  %28 = getelementptr [5 x i8], [5 x i8]* @.str862, i32 0, i32 0
  %29 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str862.c, i8* %28)
  %30 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %29)
  br i1 %30, label %then0, label %else1
then0:
  %31 = call %Token @advance(%SharedEnv_parse* %env.param)
  %32 = alloca i1
  store i1 0, i1* %32
  br label %while_cond3
while_cond3:
  %33 = load i1, i1* %32
  %34 = xor i1 %33, true
  br i1 %34, label %while_body4, label %while_end5
while_body4:
  %35 = getelementptr [8 x i8], [8 x i8]* @.str863, i32 0, i32 0
  %36 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str863.c, i8* %35)
  %37 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %36)
  br i1 %37, label %then6, label %else7
then6:
  %38 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %32
  br label %merge8
else7:
  %39 = getelementptr [9 x i8], [9 x i8]* @.str864, i32 0, i32 0
  %40 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str864.c, i8* %39)
  %41 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %40)
  br i1 %41, label %then9, label %else10
then9:
  %42 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge11
else10:
  %43 = getelementptr [11 x i8], [11 x i8]* @.str865, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str865.c, i8* %43)
  %45 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %44)
  br i1 %45, label %then12, label %else13
then12:
  %46 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge14
else13:
  %47 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge14
merge14:
  br label %merge11
merge11:
  %48 = getelementptr [6 x i8], [6 x i8]* @.str866, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str866.c, i8* %48)
  %50 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %49)
  br i1 %50, label %then15, label %else16
then15:
  %51 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge17
else16:
  %52 = getelementptr [8 x i8], [8 x i8]* @.str867, i32 0, i32 0
  %53 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str867.c, i8* %52)
  %54 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %53)
  %55 = xor i1 %54, true
  br i1 %55, label %then18, label %else19
then18:
  store i1 1, i1* %32
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
  %56 = call { i64, i8* }* @nyx_array_new_ptr()
  %57 = alloca { i64, i8* }*
  store { i64, i8* }* %56, { i64, i8* }** %57
  %58 = getelementptr [6 x i8], [6 x i8]* @.str868, i32 0, i32 0
  %59 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str868.c, i8* %58)
  %60 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %59)
  br i1 %60, label %then21, label %else22
then21:
  %61 = call %Token @advance(%SharedEnv_parse* %env.param)
  %62 = alloca i1
  store i1 1, i1* %62
  br label %while_cond24
while_cond24:
  %63 = load i1, i1* %62
  br i1 %63, label %while_body25, label %while_end26
while_body25:
  %64 = getelementptr [11 x i8], [11 x i8]* @.str869, i32 0, i32 0
  %65 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str869.c, i8* %64)
  %66 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %65)
  %67 = alloca %Token
  store %Token %66, %Token* %67
  %68 = load %Token, %Token* %67
  %69 = call %nyx_string* @get_token_value(%Token %68)
  %70 = alloca %nyx_string*
  store %nyx_string* %69, %nyx_string** %70
  %71 = load { i64, i8* }*, { i64, i8* }** %57
  %72 = load %nyx_string*, %nyx_string** %70
  %73 = ptrtoint %nyx_string* %72 to i64
  call void @nyx_array_push({ i64, i8* }* %71, i64 %73)
  %74 = getelementptr [5 x i8], [5 x i8]* @.str870, i32 0, i32 0
  %75 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str870.c, i8* %74)
  %76 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %75)
  br i1 %76, label %then27, label %else28
then27:
  %77 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge29
else28:
  store i1 0, i1* %62
  br label %merge29
merge29:
  br label %while_cond24
while_end26:
  br label %merge23
else22:
  br label %merge23
merge23:
  %78 = getelementptr [11 x i8], [11 x i8]* @.str871, i32 0, i32 0
  %79 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str871.c, i8* %78)
  %80 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %79)
  %81 = call { i64, i8* }* @nyx_array_new_ptr()
  %82 = alloca { i64, i8* }*
  store { i64, i8* }* %81, { i64, i8* }** %82
  %83 = alloca i1
  store i1 0, i1* %83
  br label %while_cond30
while_cond30:
  %84 = load i1, i1* %83
  %85 = xor i1 %84, true
  br i1 %85, label %while_body31, label %while_end32
while_body31:
  %86 = getelementptr [12 x i8], [12 x i8]* @.str872, i32 0, i32 0
  %87 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str872.c, i8* %86)
  %88 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %87)
  br i1 %88, label %then33, label %else34
then33:
  %89 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %83
  br label %merge35
else34:
  %90 = alloca i1
  store i1 0, i1* %90
  %91 = getelementptr [11 x i8], [11 x i8]* @.str873, i32 0, i32 0
  %92 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str873.c, i8* %91)
  %93 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %92)
  br i1 %93, label %then36, label %else37
then36:
  %94 = call %Token @peek(%SharedEnv_parse* %env.param)
  %95 = alloca %Token
  store %Token %94, %Token* %95
  %96 = load %Token, %Token* %95
  %97 = call %nyx_string* @get_token_value(%Token %96)
  %98 = getelementptr [5 x i8], [5 x i8]* @.str874, i32 0, i32 0
  %99 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str874.c, i8* %98)
  %100 = call i1 @nyx_string_equals(%nyx_string* %97, %nyx_string* %99)
  br i1 %100, label %then39, label %else40
then39:
  %101 = call %Token @advance(%SharedEnv_parse* %env.param)
  %102 = getelementptr [11 x i8], [11 x i8]* @.str875, i32 0, i32 0
  %103 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str875.c, i8* %102)
  %104 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %103)
  %105 = alloca %Token
  store %Token %104, %Token* %105
  %106 = load %Token, %Token* %105
  %107 = call %nyx_string* @get_token_value(%Token %106)
  %108 = alloca %nyx_string*
  store %nyx_string* %107, %nyx_string** %108
  %109 = call { i64, i8* }* @nyx_array_new_ptr()
  %110 = alloca { i64, i8* }*
  store { i64, i8* }* %109, { i64, i8* }** %110
  %111 = getelementptr [5 x i8], [5 x i8]* @.str876, i32 0, i32 0
  %112 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str876.c, i8* %111)
  %113 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %112)
  br i1 %113, label %then42, label %else43
then42:
  %114 = call %Token @advance(%SharedEnv_parse* %env.param)
  %115 = alloca i1
  store i1 0, i1* %115
  br label %while_cond45
while_cond45:
  %116 = load i1, i1* %115
  %117 = xor i1 %116, true
  br i1 %117, label %while_body46, label %while_end47
while_body46:
  %118 = getelementptr [8 x i8], [8 x i8]* @.str877, i32 0, i32 0
  %119 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str877.c, i8* %118)
  %120 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %119)
  br i1 %120, label %then48, label %else49
then48:
  %121 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %115
  br label %merge50
else49:
  %122 = getelementptr [11 x i8], [11 x i8]* @.str878, i32 0, i32 0
  %123 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str878.c, i8* %122)
  %124 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %123)
  br i1 %124, label %then51, label %else52
then51:
  %125 = call %Token @advance(%SharedEnv_parse* %env.param)
  %126 = alloca %Token
  store %Token %125, %Token* %126
  %127 = load { i64, i8* }*, { i64, i8* }** %110
  %128 = load %Token, %Token* %126
  %129 = call %nyx_string* @get_token_value(%Token %128)
  %130 = ptrtoint %nyx_string* %129 to i64
  call void @nyx_array_push({ i64, i8* }* %127, i64 %130)
  br label %merge53
else52:
  %131 = getelementptr [9 x i8], [9 x i8]* @.str879, i32 0, i32 0
  %132 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str879.c, i8* %131)
  %133 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %132)
  br i1 %133, label %then54, label %else55
then54:
  %134 = call %Token @advance(%SharedEnv_parse* %env.param)
  %135 = alloca %Token
  store %Token %134, %Token* %135
  %136 = load { i64, i8* }*, { i64, i8* }** %110
  %137 = load %Token, %Token* %135
  %138 = call %nyx_string* @get_token_value(%Token %137)
  %139 = ptrtoint %nyx_string* %138 to i64
  call void @nyx_array_push({ i64, i8* }* %136, i64 %139)
  br label %merge56
else55:
  %140 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge56
merge56:
  br label %merge53
merge53:
  %141 = getelementptr [6 x i8], [6 x i8]* @.str880, i32 0, i32 0
  %142 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str880.c, i8* %141)
  %143 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %142)
  br i1 %143, label %then57, label %else58
then57:
  %144 = call %Token @advance(%SharedEnv_parse* %env.param)
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
  %145 = load { i64, i8* }*, { i64, i8* }** %82
  %146 = call { i64, i8* }* @nyx_array_new_ptr()
  %147 = getelementptr [15 x i8], [15 x i8]* @.str881, i32 0, i32 0
  %148 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str881.c, i8* %147)
  %149 = ptrtoint %nyx_string* %148 to i64
  call void @nyx_array_push({ i64, i8* }* %146, i64 %149)
  %150 = load %nyx_string*, %nyx_string** %108
  %151 = ptrtoint %nyx_string* %150 to i64
  call void @nyx_array_push({ i64, i8* }* %146, i64 %151)
  %152 = load { i64, i8* }*, { i64, i8* }** %110
  %153 = bitcast { i64, i8* }* %152 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %146, i8* %153)
  %154 = ptrtoint { i64, i8* }* %146 to i64
  call void @nyx_array_push({ i64, i8* }* %145, i64 %154)
  store i1 1, i1* %90
  br label %merge41
else40:
  br label %merge41
merge41:
  br label %merge38
else37:
  br label %merge38
merge38:
  %155 = load i1, i1* %90
  %156 = xor i1 %155, true
  br i1 %156, label %then60, label %else61
then60:
  %157 = getelementptr [3 x i8], [3 x i8]* @.str882, i32 0, i32 0
  %158 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str882.c, i8* %157)
  %159 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %158)
  %160 = getelementptr [11 x i8], [11 x i8]* @.str883, i32 0, i32 0
  %161 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str883.c, i8* %160)
  %162 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %161)
  %163 = alloca %Token
  store %Token %162, %Token* %163
  %164 = load %Token, %Token* %163
  %165 = call %nyx_string* @get_token_value(%Token %164)
  %166 = alloca %nyx_string*
  store %nyx_string* %165, %nyx_string** %166
  %167 = getelementptr [5 x i8], [5 x i8]* @.str884, i32 0, i32 0
  %168 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str884.c, i8* %167)
  %169 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %168)
  br i1 %169, label %then63, label %else64
then63:
  %170 = call %Token @advance(%SharedEnv_parse* %env.param)
  %171 = alloca i1
  store i1 0, i1* %171
  br label %while_cond66
while_cond66:
  %172 = load i1, i1* %171
  %173 = xor i1 %172, true
  br i1 %173, label %while_body67, label %while_end68
while_body67:
  %174 = getelementptr [8 x i8], [8 x i8]* @.str885, i32 0, i32 0
  %175 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str885.c, i8* %174)
  %176 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %175)
  br i1 %176, label %then69, label %else70
then69:
  %177 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %171
  br label %merge71
else70:
  %178 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge71
merge71:
  br label %while_cond66
while_end68:
  br label %merge65
else64:
  br label %merge65
merge65:
  %179 = getelementptr [11 x i8], [11 x i8]* @.str886, i32 0, i32 0
  %180 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str886.c, i8* %179)
  %181 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %180)
  %182 = call { i64, i8* }* @nyx_array_new_ptr()
  %183 = alloca { i64, i8* }*
  store { i64, i8* }* %182, { i64, i8* }** %183
  %184 = alloca i1
  store i1 0, i1* %184
  br label %while_cond72
while_cond72:
  %185 = load i1, i1* %184
  %186 = xor i1 %185, true
  br i1 %186, label %while_body73, label %while_end74
while_body73:
  %187 = getelementptr [12 x i8], [12 x i8]* @.str887, i32 0, i32 0
  %188 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str887.c, i8* %187)
  %189 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %188)
  br i1 %189, label %then75, label %else76
then75:
  %190 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %184
  br label %merge77
else76:
  %191 = load { i64, i8* }*, { i64, i8* }** %183
  %192 = call i64 @nyx_array_length({ i64, i8* }* %191)
  %193 = icmp sgt i64 %192, 0
  br i1 %193, label %then78, label %else79
then78:
  %194 = getelementptr [6 x i8], [6 x i8]* @.str888, i32 0, i32 0
  %195 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str888.c, i8* %194)
  %196 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %195)
  br label %merge80
else79:
  br label %merge80
merge80:
  %197 = getelementptr [11 x i8], [11 x i8]* @.str889, i32 0, i32 0
  %198 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str889.c, i8* %197)
  %199 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %198)
  %200 = alloca %Token
  store %Token %199, %Token* %200
  %201 = load %Token, %Token* %200
  %202 = call %nyx_string* @get_token_value(%Token %201)
  %203 = alloca %nyx_string*
  store %nyx_string* %202, %nyx_string** %203
  %204 = getelementptr [1 x i8], [1 x i8]* @.str890, i32 0, i32 0
  %205 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str890.c, i8* %204)
  %206 = alloca %nyx_string*
  store %nyx_string* %205, %nyx_string** %206
  %207 = getelementptr [6 x i8], [6 x i8]* @.str891, i32 0, i32 0
  %208 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str891.c, i8* %207)
  %209 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %208)
  br i1 %209, label %then81, label %else82
then81:
  %210 = call %Token @advance(%SharedEnv_parse* %env.param)
  %211 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %211, %nyx_string** %206
  br label %merge83
else82:
  br label %merge83
merge83:
  %212 = load { i64, i8* }*, { i64, i8* }** %183
  %213 = call { i64, i8* }* @nyx_array_new_ptr()
  %214 = load %nyx_string*, %nyx_string** %203
  %215 = ptrtoint %nyx_string* %214 to i64
  call void @nyx_array_push({ i64, i8* }* %213, i64 %215)
  %216 = load %nyx_string*, %nyx_string** %206
  %217 = ptrtoint %nyx_string* %216 to i64
  call void @nyx_array_push({ i64, i8* }* %213, i64 %217)
  %218 = ptrtoint { i64, i8* }* %213 to i64
  call void @nyx_array_push({ i64, i8* }* %212, i64 %218)
  br label %merge77
merge77:
  br label %while_cond72
while_end74:
  %219 = getelementptr [1 x i8], [1 x i8]* @.str892, i32 0, i32 0
  %220 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str892.c, i8* %219)
  %221 = alloca %nyx_string*
  store %nyx_string* %220, %nyx_string** %221
  %222 = getelementptr [6 x i8], [6 x i8]* @.str893, i32 0, i32 0
  %223 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str893.c, i8* %222)
  %224 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %223)
  br i1 %224, label %then84, label %else85
then84:
  %225 = call %Token @advance(%SharedEnv_parse* %env.param)
  %226 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %226, %nyx_string** %221
  br label %merge86
else85:
  br label %merge86
merge86:
  %227 = getelementptr [11 x i8], [11 x i8]* @.str894, i32 0, i32 0
  %228 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str894.c, i8* %227)
  %229 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %228)
  br i1 %229, label %then87, label %else88
then87:
  %230 = call { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param)
  %231 = alloca { i64, i8* }*
  store { i64, i8* }* %230, { i64, i8* }** %231
  %232 = load { i64, i8* }*, { i64, i8* }** %82
  %233 = call { i64, i8* }* @nyx_array_new_ptr()
  %234 = load %nyx_string*, %nyx_string** %166
  %235 = ptrtoint %nyx_string* %234 to i64
  call void @nyx_array_push({ i64, i8* }* %233, i64 %235)
  %236 = load { i64, i8* }*, { i64, i8* }** %183
  %237 = bitcast { i64, i8* }* %236 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %233, i8* %237)
  %238 = load %nyx_string*, %nyx_string** %221
  %239 = ptrtoint %nyx_string* %238 to i64
  call void @nyx_array_push({ i64, i8* }* %233, i64 %239)
  %240 = load { i64, i8* }*, { i64, i8* }** %231
  %241 = bitcast { i64, i8* }* %240 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %233, i8* %241)
  %242 = ptrtoint { i64, i8* }* %233 to i64
  call void @nyx_array_push({ i64, i8* }* %232, i64 %242)
  br label %merge89
else88:
  %243 = load { i64, i8* }*, { i64, i8* }** %82
  %244 = call { i64, i8* }* @nyx_array_new_ptr()
  %245 = load %nyx_string*, %nyx_string** %166
  %246 = ptrtoint %nyx_string* %245 to i64
  call void @nyx_array_push({ i64, i8* }* %244, i64 %246)
  %247 = load { i64, i8* }*, { i64, i8* }** %183
  %248 = bitcast { i64, i8* }* %247 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %244, i8* %248)
  %249 = load %nyx_string*, %nyx_string** %221
  %250 = ptrtoint %nyx_string* %249 to i64
  call void @nyx_array_push({ i64, i8* }* %244, i64 %250)
  %251 = ptrtoint { i64, i8* }* %244 to i64
  call void @nyx_array_push({ i64, i8* }* %243, i64 %251)
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
  %252 = getelementptr [10 x i8], [10 x i8]* @.str895, i32 0, i32 0
  %253 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str895.c, i8* %252)
  %254 = call { i64, i8* }* @nyx_array_new_ptr()
  %255 = load %nyx_string*, %nyx_string** %27
  %256 = ptrtoint %nyx_string* %255 to i64
  call void @nyx_array_push({ i64, i8* }* %254, i64 %256)
  %257 = load { i64, i8* }*, { i64, i8* }** %57
  %258 = bitcast { i64, i8* }* %257 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %254, i8* %258)
  %259 = load { i64, i8* }*, { i64, i8* }** %82
  %260 = bitcast { i64, i8* }* %259 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %254, i8* %260)
  %261 = call { i64, i8* }* @make_astnode(%nyx_string* %253, { i64, i8* }* %254)
  ret { i64, i8* }* %261
}

define internal { i64, i8* }* @parse_impl(%SharedEnv_parse* %env.param) {
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
  %18 = getelementptr [5 x i8], [5 x i8]* @.str896, i32 0, i32 0
  %19 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str896.c, i8* %18)
  %20 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %19)
  %21 = call { i64, i8* }* @nyx_array_new_ptr()
  %22 = alloca { i64, i8* }*
  store { i64, i8* }* %21, { i64, i8* }** %22
  %23 = getelementptr [5 x i8], [5 x i8]* @.str897, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str897.c, i8* %23)
  %25 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %24)
  br i1 %25, label %then0, label %else1
then0:
  %26 = call %Token @advance(%SharedEnv_parse* %env.param)
  %27 = getelementptr [9 x i8], [9 x i8]* @.str898, i32 0, i32 0
  %28 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str898.c, i8* %27)
  %29 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %28)
  br i1 %29, label %then3, label %else4
then3:
  %30 = call %Token @advance(%SharedEnv_parse* %env.param)
  %31 = alloca %Token
  store %Token %30, %Token* %31
  %32 = load { i64, i8* }*, { i64, i8* }** %22
  %33 = load %Token, %Token* %31
  %34 = call %nyx_string* @get_token_value(%Token %33)
  %35 = ptrtoint %nyx_string* %34 to i64
  call void @nyx_array_push({ i64, i8* }* %32, i64 %35)
  br label %merge5
else4:
  %36 = getelementptr [11 x i8], [11 x i8]* @.str899, i32 0, i32 0
  %37 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str899.c, i8* %36)
  %38 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %37)
  %39 = alloca %Token
  store %Token %38, %Token* %39
  %40 = load %Token, %Token* %39
  %41 = call %nyx_string* @get_token_value(%Token %40)
  %42 = alloca %nyx_string*
  store %nyx_string* %41, %nyx_string** %42
  %43 = getelementptr [6 x i8], [6 x i8]* @.str900, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str900.c, i8* %43)
  %45 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %44)
  br i1 %45, label %then6, label %else7
then6:
  %46 = call %Token @advance(%SharedEnv_parse* %env.param)
  %47 = getelementptr [11 x i8], [11 x i8]* @.str901, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str901.c, i8* %47)
  %49 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %48)
  %50 = alloca %Token
  store %Token %49, %Token* %50
  %51 = load %Token, %Token* %50
  %52 = call %nyx_string* @get_token_value(%Token %51)
  %53 = alloca %nyx_string*
  store %nyx_string* %52, %nyx_string** %53
  br label %while_cond9
while_cond9:
  %54 = getelementptr [5 x i8], [5 x i8]* @.str902, i32 0, i32 0
  %55 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str902.c, i8* %54)
  %56 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %55)
  br i1 %56, label %while_body10, label %while_end11
while_body10:
  %57 = call %Token @advance(%SharedEnv_parse* %env.param)
  %58 = getelementptr [11 x i8], [11 x i8]* @.str903, i32 0, i32 0
  %59 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str903.c, i8* %58)
  %60 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %59)
  %61 = alloca %Token
  store %Token %60, %Token* %61
  %62 = load %nyx_string*, %nyx_string** %53
  %63 = getelementptr [2 x i8], [2 x i8]* @.str904, i32 0, i32 0
  %64 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str904.c, i8* %63)
  %65 = call %nyx_string* @nyx_string_concat(%nyx_string* %62, %nyx_string* %64)
  %66 = load %Token, %Token* %61
  %67 = call %nyx_string* @get_token_value(%Token %66)
  %68 = call %nyx_string* @nyx_string_concat(%nyx_string* %65, %nyx_string* %67)
  store %nyx_string* %68, %nyx_string** %53
  br label %while_cond9
while_end11:
  %69 = load %nyx_string*, %nyx_string** %42
  %70 = getelementptr [2 x i8], [2 x i8]* @.str905, i32 0, i32 0
  %71 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str905.c, i8* %70)
  %72 = call %nyx_string* @nyx_string_concat(%nyx_string* %69, %nyx_string* %71)
  %73 = load %nyx_string*, %nyx_string** %53
  %74 = call %nyx_string* @nyx_string_concat(%nyx_string* %72, %nyx_string* %73)
  store %nyx_string* %74, %nyx_string** %42
  br label %merge8
else7:
  br label %merge8
merge8:
  %75 = load { i64, i8* }*, { i64, i8* }** %22
  %76 = load %nyx_string*, %nyx_string** %42
  %77 = ptrtoint %nyx_string* %76 to i64
  call void @nyx_array_push({ i64, i8* }* %75, i64 %77)
  br label %merge5
merge5:
  %78 = alloca i1
  store i1 0, i1* %78
  br label %while_cond12
while_cond12:
  %79 = load i1, i1* %78
  %80 = xor i1 %79, true
  br i1 %80, label %while_body13, label %while_end14
while_body13:
  %81 = getelementptr [6 x i8], [6 x i8]* @.str906, i32 0, i32 0
  %82 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str906.c, i8* %81)
  %83 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %82)
  br i1 %83, label %then15, label %else16
then15:
  %84 = call %Token @advance(%SharedEnv_parse* %env.param)
  %85 = getelementptr [9 x i8], [9 x i8]* @.str907, i32 0, i32 0
  %86 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str907.c, i8* %85)
  %87 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %86)
  br i1 %87, label %then18, label %else19
then18:
  %88 = call %Token @advance(%SharedEnv_parse* %env.param)
  %89 = alloca %Token
  store %Token %88, %Token* %89
  %90 = load { i64, i8* }*, { i64, i8* }** %22
  %91 = load %Token, %Token* %89
  %92 = call %nyx_string* @get_token_value(%Token %91)
  %93 = ptrtoint %nyx_string* %92 to i64
  call void @nyx_array_push({ i64, i8* }* %90, i64 %93)
  br label %merge20
else19:
  %94 = getelementptr [11 x i8], [11 x i8]* @.str908, i32 0, i32 0
  %95 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str908.c, i8* %94)
  %96 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %95)
  %97 = alloca %Token
  store %Token %96, %Token* %97
  %98 = load %Token, %Token* %97
  %99 = call %nyx_string* @get_token_value(%Token %98)
  %100 = alloca %nyx_string*
  store %nyx_string* %99, %nyx_string** %100
  %101 = getelementptr [6 x i8], [6 x i8]* @.str909, i32 0, i32 0
  %102 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str909.c, i8* %101)
  %103 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %102)
  br i1 %103, label %then21, label %else22
then21:
  %104 = call %Token @advance(%SharedEnv_parse* %env.param)
  %105 = getelementptr [11 x i8], [11 x i8]* @.str910, i32 0, i32 0
  %106 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str910.c, i8* %105)
  %107 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %106)
  %108 = alloca %Token
  store %Token %107, %Token* %108
  %109 = load %Token, %Token* %108
  %110 = call %nyx_string* @get_token_value(%Token %109)
  %111 = alloca %nyx_string*
  store %nyx_string* %110, %nyx_string** %111
  br label %while_cond24
while_cond24:
  %112 = getelementptr [5 x i8], [5 x i8]* @.str911, i32 0, i32 0
  %113 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str911.c, i8* %112)
  %114 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %113)
  br i1 %114, label %while_body25, label %while_end26
while_body25:
  %115 = call %Token @advance(%SharedEnv_parse* %env.param)
  %116 = getelementptr [11 x i8], [11 x i8]* @.str912, i32 0, i32 0
  %117 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str912.c, i8* %116)
  %118 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %117)
  %119 = alloca %Token
  store %Token %118, %Token* %119
  %120 = load %nyx_string*, %nyx_string** %111
  %121 = getelementptr [2 x i8], [2 x i8]* @.str913, i32 0, i32 0
  %122 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str913.c, i8* %121)
  %123 = call %nyx_string* @nyx_string_concat(%nyx_string* %120, %nyx_string* %122)
  %124 = load %Token, %Token* %119
  %125 = call %nyx_string* @get_token_value(%Token %124)
  %126 = call %nyx_string* @nyx_string_concat(%nyx_string* %123, %nyx_string* %125)
  store %nyx_string* %126, %nyx_string** %111
  br label %while_cond24
while_end26:
  %127 = load %nyx_string*, %nyx_string** %100
  %128 = getelementptr [2 x i8], [2 x i8]* @.str914, i32 0, i32 0
  %129 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str914.c, i8* %128)
  %130 = call %nyx_string* @nyx_string_concat(%nyx_string* %127, %nyx_string* %129)
  %131 = load %nyx_string*, %nyx_string** %111
  %132 = call %nyx_string* @nyx_string_concat(%nyx_string* %130, %nyx_string* %131)
  store %nyx_string* %132, %nyx_string** %100
  br label %merge23
else22:
  br label %merge23
merge23:
  %133 = load { i64, i8* }*, { i64, i8* }** %22
  %134 = load %nyx_string*, %nyx_string** %100
  %135 = ptrtoint %nyx_string* %134 to i64
  call void @nyx_array_push({ i64, i8* }* %133, i64 %135)
  br label %merge20
merge20:
  br label %merge17
else16:
  store i1 1, i1* %78
  br label %merge17
merge17:
  br label %while_cond12
while_end14:
  %136 = getelementptr [8 x i8], [8 x i8]* @.str915, i32 0, i32 0
  %137 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str915.c, i8* %136)
  %138 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %137)
  br label %merge2
else1:
  br label %merge2
merge2:
  %139 = getelementptr [11 x i8], [11 x i8]* @.str916, i32 0, i32 0
  %140 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str916.c, i8* %139)
  %141 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %140)
  %142 = alloca %Token
  store %Token %141, %Token* %142
  %143 = load %Token, %Token* %142
  %144 = call %nyx_string* @get_token_value(%Token %143)
  %145 = alloca %nyx_string*
  store %nyx_string* %144, %nyx_string** %145
  %146 = getelementptr [4 x i8], [4 x i8]* @.str917, i32 0, i32 0
  %147 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str917.c, i8* %146)
  %148 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %147)
  br i1 %148, label %then27, label %else28
then27:
  %149 = call %Token @advance(%SharedEnv_parse* %env.param)
  %150 = getelementptr [11 x i8], [11 x i8]* @.str918, i32 0, i32 0
  %151 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str918.c, i8* %150)
  %152 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %151)
  %153 = alloca %Token
  store %Token %152, %Token* %153
  %154 = load %Token, %Token* %153
  %155 = call %nyx_string* @get_token_value(%Token %154)
  %156 = alloca %nyx_string*
  store %nyx_string* %155, %nyx_string** %156
  %157 = getelementptr [11 x i8], [11 x i8]* @.str919, i32 0, i32 0
  %158 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str919.c, i8* %157)
  %159 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %158)
  %160 = call { i64, i8* }* @nyx_array_new_ptr()
  %161 = alloca { i64, i8* }*
  store { i64, i8* }* %160, { i64, i8* }** %161
  %162 = call { i64, i8* }* @nyx_array_new_ptr()
  %163 = alloca { i64, i8* }*
  store { i64, i8* }* %162, { i64, i8* }** %163
  %164 = alloca i1
  store i1 0, i1* %164
  br label %while_cond30
while_cond30:
  %165 = load i1, i1* %164
  %166 = xor i1 %165, true
  br i1 %166, label %while_body31, label %while_end32
while_body31:
  %167 = getelementptr [12 x i8], [12 x i8]* @.str920, i32 0, i32 0
  %168 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str920.c, i8* %167)
  %169 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %168)
  br i1 %169, label %then33, label %else34
then33:
  %170 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %164
  br label %merge35
else34:
  %171 = alloca i1
  store i1 0, i1* %171
  %172 = getelementptr [11 x i8], [11 x i8]* @.str921, i32 0, i32 0
  %173 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str921.c, i8* %172)
  %174 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %173)
  br i1 %174, label %then36, label %else37
then36:
  %175 = call %Token @peek(%SharedEnv_parse* %env.param)
  %176 = alloca %Token
  store %Token %175, %Token* %176
  %177 = load %Token, %Token* %176
  %178 = call %nyx_string* @get_token_value(%Token %177)
  %179 = getelementptr [5 x i8], [5 x i8]* @.str922, i32 0, i32 0
  %180 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str922.c, i8* %179)
  %181 = call i1 @nyx_string_equals(%nyx_string* %178, %nyx_string* %180)
  br i1 %181, label %then39, label %else40
then39:
  %182 = call %Token @advance(%SharedEnv_parse* %env.param)
  %183 = getelementptr [11 x i8], [11 x i8]* @.str923, i32 0, i32 0
  %184 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str923.c, i8* %183)
  %185 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %184)
  %186 = alloca %Token
  store %Token %185, %Token* %186
  %187 = load %Token, %Token* %186
  %188 = call %nyx_string* @get_token_value(%Token %187)
  %189 = alloca %nyx_string*
  store %nyx_string* %188, %nyx_string** %189
  %190 = getelementptr [5 x i8], [5 x i8]* @.str924, i32 0, i32 0
  %191 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str924.c, i8* %190)
  %192 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %191)
  br i1 %192, label %then42, label %else43
then42:
  %193 = call %Token @advance(%SharedEnv_parse* %env.param)
  %194 = alloca i1
  store i1 0, i1* %194
  br label %while_cond45
while_cond45:
  %195 = load i1, i1* %194
  %196 = xor i1 %195, true
  br i1 %196, label %while_body46, label %while_end47
while_body46:
  %197 = getelementptr [8 x i8], [8 x i8]* @.str925, i32 0, i32 0
  %198 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str925.c, i8* %197)
  %199 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %198)
  br i1 %199, label %then48, label %else49
then48:
  %200 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %194
  br label %merge50
else49:
  %201 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge50
merge50:
  br label %while_cond45
while_end47:
  br label %merge44
else43:
  br label %merge44
merge44:
  %202 = getelementptr [7 x i8], [7 x i8]* @.str926, i32 0, i32 0
  %203 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str926.c, i8* %202)
  %204 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %203)
  %205 = call %nyx_string* @parse_type_annotation(%SharedEnv_parse* %env.param)
  %206 = alloca %nyx_string*
  store %nyx_string* %205, %nyx_string** %206
  %207 = load { i64, i8* }*, { i64, i8* }** %163
  %208 = call { i64, i8* }* @nyx_array_new_ptr()
  %209 = load %nyx_string*, %nyx_string** %189
  %210 = ptrtoint %nyx_string* %209 to i64
  call void @nyx_array_push({ i64, i8* }* %208, i64 %210)
  %211 = load %nyx_string*, %nyx_string** %206
  %212 = ptrtoint %nyx_string* %211 to i64
  call void @nyx_array_push({ i64, i8* }* %208, i64 %212)
  %213 = ptrtoint { i64, i8* }* %208 to i64
  call void @nyx_array_push({ i64, i8* }* %207, i64 %213)
  store i1 1, i1* %171
  br label %merge41
else40:
  br label %merge41
merge41:
  br label %merge38
else37:
  br label %merge38
merge38:
  %214 = load i1, i1* %171
  %215 = xor i1 %214, true
  br i1 %215, label %then51, label %else52
then51:
  %216 = call { i64, i8* }* @parse_function(%SharedEnv_parse* %env.param)
  %217 = alloca { i64, i8* }*
  store { i64, i8* }* %216, { i64, i8* }** %217
  %218 = load { i64, i8* }*, { i64, i8* }** %161
  %219 = load { i64, i8* }*, { i64, i8* }** %217
  %220 = ptrtoint { i64, i8* }* %219 to i64
  call void @nyx_array_push({ i64, i8* }* %218, i64 %220)
  br label %merge53
else52:
  br label %merge53
merge53:
  br label %merge35
merge35:
  br label %while_cond30
while_end32:
  %221 = getelementptr [11 x i8], [11 x i8]* @.str927, i32 0, i32 0
  %222 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str927.c, i8* %221)
  %223 = call { i64, i8* }* @nyx_array_new_ptr()
  %224 = load %nyx_string*, %nyx_string** %145
  %225 = ptrtoint %nyx_string* %224 to i64
  call void @nyx_array_push({ i64, i8* }* %223, i64 %225)
  %226 = load %nyx_string*, %nyx_string** %156
  %227 = ptrtoint %nyx_string* %226 to i64
  call void @nyx_array_push({ i64, i8* }* %223, i64 %227)
  %228 = load { i64, i8* }*, { i64, i8* }** %161
  %229 = bitcast { i64, i8* }* %228 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %223, i8* %229)
  %230 = load { i64, i8* }*, { i64, i8* }** %163
  %231 = bitcast { i64, i8* }* %230 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %223, i8* %231)
  %232 = call { i64, i8* }* @make_astnode(%nyx_string* %222, { i64, i8* }* %223)
  ret { i64, i8* }* %232
else28:
  br label %merge29
merge29:
  %233 = getelementptr [5 x i8], [5 x i8]* @.str928, i32 0, i32 0
  %234 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str928.c, i8* %233)
  %235 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %234)
  br i1 %235, label %then54, label %else55
then54:
  %236 = call %Token @advance(%SharedEnv_parse* %env.param)
  %237 = alloca i1
  store i1 0, i1* %237
  br label %while_cond57
while_cond57:
  %238 = load i1, i1* %237
  %239 = xor i1 %238, true
  br i1 %239, label %while_body58, label %while_end59
while_body58:
  %240 = getelementptr [8 x i8], [8 x i8]* @.str929, i32 0, i32 0
  %241 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str929.c, i8* %240)
  %242 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %241)
  br i1 %242, label %then60, label %else61
then60:
  %243 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %237
  br label %merge62
else61:
  %244 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge62
merge62:
  br label %while_cond57
while_end59:
  br label %merge56
else55:
  br label %merge56
merge56:
  %245 = getelementptr [11 x i8], [11 x i8]* @.str930, i32 0, i32 0
  %246 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str930.c, i8* %245)
  %247 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %246)
  %248 = call { i64, i8* }* @nyx_array_new_ptr()
  %249 = alloca { i64, i8* }*
  store { i64, i8* }* %248, { i64, i8* }** %249
  %250 = alloca i1
  store i1 0, i1* %250
  br label %while_cond63
while_cond63:
  %251 = load i1, i1* %250
  %252 = xor i1 %251, true
  br i1 %252, label %while_body64, label %while_end65
while_body64:
  %253 = getelementptr [12 x i8], [12 x i8]* @.str931, i32 0, i32 0
  %254 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str931.c, i8* %253)
  %255 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %254)
  br i1 %255, label %then66, label %else67
then66:
  %256 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %250
  br label %merge68
else67:
  %257 = call { i64, i8* }* @parse_function(%SharedEnv_parse* %env.param)
  %258 = alloca { i64, i8* }*
  store { i64, i8* }* %257, { i64, i8* }** %258
  %259 = load { i64, i8* }*, { i64, i8* }** %249
  %260 = load { i64, i8* }*, { i64, i8* }** %258
  %261 = ptrtoint { i64, i8* }* %260 to i64
  call void @nyx_array_push({ i64, i8* }* %259, i64 %261)
  br label %merge68
merge68:
  br label %while_cond63
while_end65:
  %262 = getelementptr [5 x i8], [5 x i8]* @.str932, i32 0, i32 0
  %263 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str932.c, i8* %262)
  %264 = call { i64, i8* }* @nyx_array_new_ptr()
  %265 = load %nyx_string*, %nyx_string** %145
  %266 = ptrtoint %nyx_string* %265 to i64
  call void @nyx_array_push({ i64, i8* }* %264, i64 %266)
  %267 = load { i64, i8* }*, { i64, i8* }** %249
  %268 = bitcast { i64, i8* }* %267 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %264, i8* %268)
  %269 = load { i64, i8* }*, { i64, i8* }** %22
  %270 = bitcast { i64, i8* }* %269 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %264, i8* %270)
  %271 = call { i64, i8* }* @make_astnode(%nyx_string* %263, { i64, i8* }* %264)
  ret { i64, i8* }* %271
}

define internal { i64, i8* }* @parse_try_catch(%SharedEnv_parse* %env.param) {
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
  %18 = call %Token @advance(%SharedEnv_parse* %env.param)
  %19 = call { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param)
  %20 = alloca { i64, i8* }*
  store { i64, i8* }* %19, { i64, i8* }** %20
  %21 = getelementptr [6 x i8], [6 x i8]* @.str933, i32 0, i32 0
  %22 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str933.c, i8* %21)
  %23 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %22)
  %24 = getelementptr [11 x i8], [11 x i8]* @.str934, i32 0, i32 0
  %25 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str934.c, i8* %24)
  %26 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %25)
  %27 = getelementptr [11 x i8], [11 x i8]* @.str935, i32 0, i32 0
  %28 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str935.c, i8* %27)
  %29 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %28)
  %30 = alloca %Token
  store %Token %29, %Token* %30
  %31 = load %Token, %Token* %30
  %32 = call %nyx_string* @get_token_value(%Token %31)
  %33 = alloca %nyx_string*
  store %nyx_string* %32, %nyx_string** %33
  %34 = getelementptr [6 x i8], [6 x i8]* @.str936, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str936.c, i8* %34)
  %36 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %35)
  br i1 %36, label %then0, label %else1
then0:
  %37 = call %Token @advance(%SharedEnv_parse* %env.param)
  %38 = getelementptr [11 x i8], [11 x i8]* @.str937, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str937.c, i8* %38)
  %40 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %39)
  br i1 %40, label %then3, label %else4
then3:
  %41 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge5
else4:
  br label %merge5
merge5:
  br label %merge2
else1:
  br label %merge2
merge2:
  %42 = getelementptr [12 x i8], [12 x i8]* @.str938, i32 0, i32 0
  %43 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str938.c, i8* %42)
  %44 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %43)
  %45 = call { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param)
  %46 = alloca { i64, i8* }*
  store { i64, i8* }* %45, { i64, i8* }** %46
  %47 = getelementptr [10 x i8], [10 x i8]* @.str939, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str939.c, i8* %47)
  %49 = call { i64, i8* }* @nyx_array_new_ptr()
  %50 = load { i64, i8* }*, { i64, i8* }** %20
  %51 = bitcast { i64, i8* }* %50 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %49, i8* %51)
  %52 = load %nyx_string*, %nyx_string** %33
  %53 = ptrtoint %nyx_string* %52 to i64
  call void @nyx_array_push({ i64, i8* }* %49, i64 %53)
  %54 = load { i64, i8* }*, { i64, i8* }** %46
  %55 = bitcast { i64, i8* }* %54 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %49, i8* %55)
  %56 = call { i64, i8* }* @make_astnode(%nyx_string* %48, { i64, i8* }* %49)
  ret { i64, i8* }* %56
}

define internal { i64, i8* }* @parse_throw(%SharedEnv_parse* %env.param) {
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
  %18 = call %Token @advance(%SharedEnv_parse* %env.param)
  %19 = getelementptr [11 x i8], [11 x i8]* @.str940, i32 0, i32 0
  %20 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str940.c, i8* %19)
  %21 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %20)
  %22 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %23 = alloca { i64, i8* }*
  store { i64, i8* }* %22, { i64, i8* }** %23
  %24 = getelementptr [12 x i8], [12 x i8]* @.str941, i32 0, i32 0
  %25 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str941.c, i8* %24)
  %26 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %25)
  %27 = getelementptr [6 x i8], [6 x i8]* @.str942, i32 0, i32 0
  %28 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str942.c, i8* %27)
  %29 = call { i64, i8* }* @nyx_array_new_ptr()
  %30 = load { i64, i8* }*, { i64, i8* }** %23
  %31 = bitcast { i64, i8* }* %30 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %29, i8* %31)
  %32 = call { i64, i8* }* @make_astnode(%nyx_string* %28, { i64, i8* }* %29)
  ret { i64, i8* }* %32
}

define internal { i64, i8* }* @parse_block(%SharedEnv_parse* %env.param) {
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
  %18 = getelementptr [11 x i8], [11 x i8]* @.str943, i32 0, i32 0
  %19 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str943.c, i8* %18)
  %20 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %19)
  %21 = call { i64, i8* }* @nyx_array_new_ptr()
  %22 = alloca { i64, i8* }*
  store { i64, i8* }* %21, { i64, i8* }** %22
  %23 = alloca i1
  store i1 0, i1* %23
  br label %while_cond0
while_cond0:
  %24 = load i1, i1* %23
  %25 = xor i1 %24, true
  br i1 %25, label %while_body1, label %while_end2
while_body1:
  %26 = load i64, i64* %7
  %27 = icmp eq i64 %26, 1
  br i1 %27, label %then3, label %else4
then3:
  store i1 1, i1* %23
  br label %merge5
else4:
  %28 = getelementptr [4 x i8], [4 x i8]* @.str944, i32 0, i32 0
  %29 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str944.c, i8* %28)
  %30 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %29)
  br i1 %30, label %then6, label %else7
then6:
  %31 = getelementptr [8 x i8], [8 x i8]* @.str945, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str945.c, i8* %31)
  %33 = load i64, i64* @g_last_line
  %34 = load i64, i64* @g_last_col
  %35 = getelementptr [47 x i8], [47 x i8]* @.str946, i32 0, i32 0
  %36 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str946.c, i8* %35)
  %37 = getelementptr [44 x i8], [44 x i8]* @.str947, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str947.c, i8* %37)
  %39 = call %nyx_string* @p_msg(%SharedEnv_parse* %env.param, %nyx_string* %36, %nyx_string* %38)
  %40 = call i64 @p_diag(%SharedEnv_parse* %env.param, %nyx_string* %32, i64 %33, i64 %34, %nyx_string* %39)
  store i1 1, i1* %23
  br label %merge8
else7:
  %41 = getelementptr [12 x i8], [12 x i8]* @.str948, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str948.c, i8* %41)
  %43 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %42)
  br i1 %43, label %then9, label %else10
then9:
  %44 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %23
  br label %merge11
else10:
  %45 = load i64, i64* %4
  %46 = alloca i64
  store i64 %45, i64* %46
  %47 = call { i64, i8* }* @parse_statement(%SharedEnv_parse* %env.param)
  %48 = alloca { i64, i8* }*
  store { i64, i8* }* %47, { i64, i8* }** %48
  %49 = load i64, i64* %4
  %50 = load i64, i64* %46
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %then12, label %else13
then12:
  %52 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge14
else13:
  %53 = load { i64, i8* }*, { i64, i8* }** %22
  %54 = load { i64, i8* }*, { i64, i8* }** %48
  %55 = ptrtoint { i64, i8* }* %54 to i64
  call void @nyx_array_push({ i64, i8* }* %53, i64 %55)
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
  %56 = getelementptr [6 x i8], [6 x i8]* @.str949, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str949.c, i8* %56)
  %58 = call { i64, i8* }* @nyx_array_new_ptr()
  %59 = load { i64, i8* }*, { i64, i8* }** %22
  %60 = bitcast { i64, i8* }* %59 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %58, i8* %60)
  %61 = call { i64, i8* }* @make_astnode(%nyx_string* %57, { i64, i8* }* %58)
  ret { i64, i8* }* %61
}

define internal { i64, i8* }* @parse_fn_body_block(%SharedEnv_parse* %env.param) {
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
  %18 = getelementptr [11 x i8], [11 x i8]* @.str950, i32 0, i32 0
  %19 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str950.c, i8* %18)
  %20 = call %Token @expect(%SharedEnv_parse* %env.param, %nyx_string* %19)
  %21 = call { i64, i8* }* @nyx_array_new_ptr()
  %22 = alloca { i64, i8* }*
  store { i64, i8* }* %21, { i64, i8* }** %22
  %23 = alloca i1
  store i1 0, i1* %23
  br label %while_cond0
while_cond0:
  %24 = load i1, i1* %23
  %25 = xor i1 %24, true
  br i1 %25, label %while_body1, label %while_end2
while_body1:
  %26 = load i64, i64* %7
  %27 = icmp eq i64 %26, 1
  br i1 %27, label %then3, label %else4
then3:
  store i1 1, i1* %23
  br label %merge5
else4:
  %28 = getelementptr [4 x i8], [4 x i8]* @.str951, i32 0, i32 0
  %29 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str951.c, i8* %28)
  %30 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %29)
  br i1 %30, label %then6, label %else7
then6:
  %31 = getelementptr [8 x i8], [8 x i8]* @.str952, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str952.c, i8* %31)
  %33 = load i64, i64* @g_last_line
  %34 = load i64, i64* @g_last_col
  %35 = getelementptr [47 x i8], [47 x i8]* @.str953, i32 0, i32 0
  %36 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str953.c, i8* %35)
  %37 = getelementptr [44 x i8], [44 x i8]* @.str954, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str954.c, i8* %37)
  %39 = call %nyx_string* @p_msg(%SharedEnv_parse* %env.param, %nyx_string* %36, %nyx_string* %38)
  %40 = call i64 @p_diag(%SharedEnv_parse* %env.param, %nyx_string* %32, i64 %33, i64 %34, %nyx_string* %39)
  store i1 1, i1* %23
  br label %merge8
else7:
  %41 = getelementptr [12 x i8], [12 x i8]* @.str955, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str955.c, i8* %41)
  %43 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %42)
  br i1 %43, label %then9, label %else10
then9:
  %44 = call %Token @advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %23
  br label %merge11
else10:
  %45 = load i64, i64* %4
  %46 = alloca i64
  store i64 %45, i64* %46
  %47 = load { i64, i8* }*, { i64, i8* }** %10
  %48 = call i64 @nyx_array_length({ i64, i8* }* %47)
  %49 = alloca i64
  store i64 %48, i64* %49
  %50 = call { i64, i8* }* @parse_statement(%SharedEnv_parse* %env.param)
  %51 = alloca { i64, i8* }*
  store { i64, i8* }* %50, { i64, i8* }** %51
  %52 = load i64, i64* %4
  %53 = load i64, i64* %46
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %then12, label %else13
then12:
  %55 = call %Token @advance(%SharedEnv_parse* %env.param)
  br label %merge14
else13:
  %56 = load { i64, i8* }*, { i64, i8* }** %10
  %57 = call i64 @nyx_array_length({ i64, i8* }* %56)
  %58 = load i64, i64* %49
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %then15, label %else16
then15:
  %60 = load i64, i64* %49
  %61 = alloca i64
  store i64 %60, i64* %61
  br label %while_cond18
while_cond18:
  %62 = load i64, i64* %61
  %63 = load { i64, i8* }*, { i64, i8* }** %10
  %64 = call i64 @nyx_array_length({ i64, i8* }* %63)
  %65 = icmp slt i64 %62, %64
  br i1 %65, label %while_body19, label %while_end20
while_body19:
  %66 = load { i64, i8* }*, { i64, i8* }** %10
  %67 = load i64, i64* %61
  %68 = call i64 @nyx_array_get({ i64, i8* }* %66, i64 %67)
  %69 = inttoptr i64 %68 to { i64, i8* }*
  %70 = alloca { i64, i8* }*
  store { i64, i8* }* %69, { i64, i8* }** %70
  %71 = load { i64, i8* }*, { i64, i8* }** %70
  %72 = call i64 @nyx_array_get({ i64, i8* }* %71, i64 0)
  %73 = inttoptr i64 %72 to %nyx_string*
  %74 = alloca %nyx_string*
  store %nyx_string* %73, %nyx_string** %74
  %75 = load %nyx_string*, %nyx_string** %74
  %76 = getelementptr [10 x i8], [10 x i8]* @.str956, i32 0, i32 0
  %77 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str956.c, i8* %76)
  %78 = call i1 @nyx_string_equals(%nyx_string* %75, %nyx_string* %77)
  %79 = xor i1 %78, true
  br i1 %79, label %then21, label %else22
then21:
  %80 = load { i64, i8* }*, { i64, i8* }** %22
  %81 = load { i64, i8* }*, { i64, i8* }** %10
  %82 = load i64, i64* %61
  %83 = call i64 @nyx_array_get({ i64, i8* }* %81, i64 %82)
  call void @nyx_array_push({ i64, i8* }* %80, i64 %83)
  %84 = load { i64, i8* }*, { i64, i8* }** %10
  %85 = load i64, i64* %61
  %86 = getelementptr [10 x i8], [10 x i8]* @.str957, i32 0, i32 0
  %87 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str957.c, i8* %86)
  %88 = call { i64, i8* }* @nyx_array_new_ptr()
  %89 = call { i64, i8* }* @make_astnode(%nyx_string* %87, { i64, i8* }* %88)
  %90 = ptrtoint { i64, i8* }* %89 to i64
  call void @nyx_array_set({ i64, i8* }* %84, i64 %85, i64 %90)
  br label %merge23
else22:
  br label %merge23
merge23:
  %91 = load i64, i64* %61
  %92 = add i64 %91, 1
  store i64 %92, i64* %61
  br label %while_cond18
while_end20:
  br label %merge17
else16:
  br label %merge17
merge17:
  %93 = load { i64, i8* }*, { i64, i8* }** %22
  %94 = load { i64, i8* }*, { i64, i8* }** %51
  %95 = ptrtoint { i64, i8* }* %94 to i64
  call void @nyx_array_push({ i64, i8* }* %93, i64 %95)
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
  %96 = getelementptr [6 x i8], [6 x i8]* @.str958, i32 0, i32 0
  %97 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str958.c, i8* %96)
  %98 = call { i64, i8* }* @nyx_array_new_ptr()
  %99 = load { i64, i8* }*, { i64, i8* }** %22
  %100 = bitcast { i64, i8* }* %99 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %98, i8* %100)
  %101 = call { i64, i8* }* @make_astnode(%nyx_string* %97, { i64, i8* }* %98)
  ret { i64, i8* }* %101
}

define internal { i64, i8* }* @parse_assignment_or_expr(%SharedEnv_parse* %env.param) {
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
  %18 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %19 = alloca { i64, i8* }*
  store { i64, i8* }* %18, { i64, i8* }** %19
  %20 = load { i64, i8* }*, { i64, i8* }** %19
  %21 = call %nyx_string* @astnode_get_type({ i64, i8* }* %20)
  %22 = alloca %nyx_string*
  store %nyx_string* %21, %nyx_string** %22
  %23 = load { i64, i8* }*, { i64, i8* }** %19
  %24 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %23)
  %25 = alloca { i64, i8* }*
  store { i64, i8* }* %24, { i64, i8* }** %25
  %26 = load %nyx_string*, %nyx_string** %22
  %27 = getelementptr [11 x i8], [11 x i8]* @.str959, i32 0, i32 0
  %28 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str959.c, i8* %27)
  %29 = call i1 @nyx_string_equals(%nyx_string* %26, %nyx_string* %28)
  br i1 %29, label %then0, label %else1
then0:
  %30 = getelementptr [7 x i8], [7 x i8]* @.str960, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str960.c, i8* %30)
  %32 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %31)
  br i1 %32, label %then3, label %else4
then3:
  %33 = call %Token @advance(%SharedEnv_parse* %env.param)
  %34 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %35 = alloca { i64, i8* }*
  store { i64, i8* }* %34, { i64, i8* }** %35
  %36 = load { i64, i8* }*, { i64, i8* }** %25
  %37 = call i64 @nyx_array_get({ i64, i8* }* %36, i64 0)
  %38 = inttoptr i64 %37 to %nyx_string*
  %39 = alloca %nyx_string*
  store %nyx_string* %38, %nyx_string** %39
  %40 = load %nyx_string*, %nyx_string** %39
  %41 = call { i64, i8* }* @nyx_array_new_ptr()
  %42 = call { i64, i8* }* @make_astnode(%nyx_string* %40, { i64, i8* }* %41)
  %43 = alloca { i64, i8* }*
  store { i64, i8* }* %42, { i64, i8* }** %43
  %44 = getelementptr [7 x i8], [7 x i8]* @.str961, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str961.c, i8* %44)
  %46 = call { i64, i8* }* @nyx_array_new_ptr()
  %47 = load { i64, i8* }*, { i64, i8* }** %43
  %48 = bitcast { i64, i8* }* %47 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %46, i8* %48)
  %49 = load { i64, i8* }*, { i64, i8* }** %35
  %50 = bitcast { i64, i8* }* %49 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %46, i8* %50)
  %51 = call { i64, i8* }* @make_astnode(%nyx_string* %45, { i64, i8* }* %46)
  ret { i64, i8* }* %51
else4:
  br label %merge5
merge5:
  %52 = getelementptr [1 x i8], [1 x i8]* @.str962, i32 0, i32 0
  %53 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str962.c, i8* %52)
  %54 = alloca %nyx_string*
  store %nyx_string* %53, %nyx_string** %54
  %55 = getelementptr [12 x i8], [12 x i8]* @.str963, i32 0, i32 0
  %56 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str963.c, i8* %55)
  %57 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %56)
  br i1 %57, label %then6, label %else7
then6:
  %58 = getelementptr [5 x i8], [5 x i8]* @.str964, i32 0, i32 0
  %59 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str964.c, i8* %58)
  store %nyx_string* %59, %nyx_string** %54
  br label %merge8
else7:
  br label %merge8
merge8:
  %60 = getelementptr [13 x i8], [13 x i8]* @.str965, i32 0, i32 0
  %61 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str965.c, i8* %60)
  %62 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %61)
  br i1 %62, label %then9, label %else10
then9:
  %63 = getelementptr [6 x i8], [6 x i8]* @.str966, i32 0, i32 0
  %64 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str966.c, i8* %63)
  store %nyx_string* %64, %nyx_string** %54
  br label %merge11
else10:
  br label %merge11
merge11:
  %65 = getelementptr [12 x i8], [12 x i8]* @.str967, i32 0, i32 0
  %66 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str967.c, i8* %65)
  %67 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %66)
  br i1 %67, label %then12, label %else13
then12:
  %68 = getelementptr [5 x i8], [5 x i8]* @.str968, i32 0, i32 0
  %69 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str968.c, i8* %68)
  store %nyx_string* %69, %nyx_string** %54
  br label %merge14
else13:
  br label %merge14
merge14:
  %70 = getelementptr [13 x i8], [13 x i8]* @.str969, i32 0, i32 0
  %71 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str969.c, i8* %70)
  %72 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %71)
  br i1 %72, label %then15, label %else16
then15:
  %73 = getelementptr [6 x i8], [6 x i8]* @.str970, i32 0, i32 0
  %74 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str970.c, i8* %73)
  store %nyx_string* %74, %nyx_string** %54
  br label %merge17
else16:
  br label %merge17
merge17:
  %75 = getelementptr [15 x i8], [15 x i8]* @.str971, i32 0, i32 0
  %76 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str971.c, i8* %75)
  %77 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %76)
  br i1 %77, label %then18, label %else19
then18:
  %78 = getelementptr [8 x i8], [8 x i8]* @.str972, i32 0, i32 0
  %79 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str972.c, i8* %78)
  store %nyx_string* %79, %nyx_string** %54
  br label %merge20
else19:
  br label %merge20
merge20:
  %80 = getelementptr [11 x i8], [11 x i8]* @.str973, i32 0, i32 0
  %81 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str973.c, i8* %80)
  %82 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %81)
  br i1 %82, label %then21, label %else22
then21:
  %83 = getelementptr [4 x i8], [4 x i8]* @.str974, i32 0, i32 0
  %84 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str974.c, i8* %83)
  store %nyx_string* %84, %nyx_string** %54
  br label %merge23
else22:
  br label %merge23
merge23:
  %85 = getelementptr [12 x i8], [12 x i8]* @.str975, i32 0, i32 0
  %86 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str975.c, i8* %85)
  %87 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %86)
  br i1 %87, label %then24, label %else25
then24:
  %88 = getelementptr [5 x i8], [5 x i8]* @.str976, i32 0, i32 0
  %89 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str976.c, i8* %88)
  store %nyx_string* %89, %nyx_string** %54
  br label %merge26
else25:
  br label %merge26
merge26:
  %90 = getelementptr [13 x i8], [13 x i8]* @.str977, i32 0, i32 0
  %91 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str977.c, i8* %90)
  %92 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %91)
  br i1 %92, label %then27, label %else28
then27:
  %93 = getelementptr [6 x i8], [6 x i8]* @.str978, i32 0, i32 0
  %94 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str978.c, i8* %93)
  store %nyx_string* %94, %nyx_string** %54
  br label %merge29
else28:
  br label %merge29
merge29:
  %95 = getelementptr [18 x i8], [18 x i8]* @.str979, i32 0, i32 0
  %96 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str979.c, i8* %95)
  %97 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %96)
  br i1 %97, label %then30, label %else31
then30:
  %98 = getelementptr [11 x i8], [11 x i8]* @.str980, i32 0, i32 0
  %99 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str980.c, i8* %98)
  store %nyx_string* %99, %nyx_string** %54
  br label %merge32
else31:
  br label %merge32
merge32:
  %100 = getelementptr [19 x i8], [19 x i8]* @.str981, i32 0, i32 0
  %101 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str981.c, i8* %100)
  %102 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %101)
  br i1 %102, label %then33, label %else34
then33:
  %103 = getelementptr [12 x i8], [12 x i8]* @.str982, i32 0, i32 0
  %104 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str982.c, i8* %103)
  store %nyx_string* %104, %nyx_string** %54
  br label %merge35
else34:
  br label %merge35
merge35:
  %105 = load %nyx_string*, %nyx_string** %54
  %106 = getelementptr [1 x i8], [1 x i8]* @.str983, i32 0, i32 0
  %107 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str983.c, i8* %106)
  %108 = call i1 @nyx_string_equals(%nyx_string* %105, %nyx_string* %107)
  %109 = xor i1 %108, true
  br i1 %109, label %then36, label %else37
then36:
  %110 = call %Token @advance(%SharedEnv_parse* %env.param)
  %111 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %112 = alloca { i64, i8* }*
  store { i64, i8* }* %111, { i64, i8* }** %112
  %113 = load { i64, i8* }*, { i64, i8* }** %25
  %114 = call i64 @nyx_array_get({ i64, i8* }* %113, i64 0)
  %115 = inttoptr i64 %114 to %nyx_string*
  %116 = alloca %nyx_string*
  store %nyx_string* %115, %nyx_string** %116
  %117 = load %nyx_string*, %nyx_string** %116
  %118 = call { i64, i8* }* @nyx_array_new_ptr()
  %119 = call { i64, i8* }* @make_astnode(%nyx_string* %117, { i64, i8* }* %118)
  %120 = alloca { i64, i8* }*
  store { i64, i8* }* %119, { i64, i8* }** %120
  %121 = getelementptr [11 x i8], [11 x i8]* @.str984, i32 0, i32 0
  %122 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str984.c, i8* %121)
  %123 = call { i64, i8* }* @nyx_array_new_ptr()
  %124 = load %nyx_string*, %nyx_string** %116
  %125 = ptrtoint %nyx_string* %124 to i64
  call void @nyx_array_push({ i64, i8* }* %123, i64 %125)
  %126 = call { i64, i8* }* @make_astnode(%nyx_string* %122, { i64, i8* }* %123)
  %127 = alloca { i64, i8* }*
  store { i64, i8* }* %126, { i64, i8* }** %127
  %128 = getelementptr [6 x i8], [6 x i8]* @.str985, i32 0, i32 0
  %129 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str985.c, i8* %128)
  %130 = call { i64, i8* }* @nyx_array_new_ptr()
  %131 = load %nyx_string*, %nyx_string** %54
  %132 = ptrtoint %nyx_string* %131 to i64
  call void @nyx_array_push({ i64, i8* }* %130, i64 %132)
  %133 = load { i64, i8* }*, { i64, i8* }** %127
  %134 = bitcast { i64, i8* }* %133 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %130, i8* %134)
  %135 = load { i64, i8* }*, { i64, i8* }** %112
  %136 = bitcast { i64, i8* }* %135 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %130, i8* %136)
  %137 = call { i64, i8* }* @make_astnode(%nyx_string* %129, { i64, i8* }* %130)
  %138 = alloca { i64, i8* }*
  store { i64, i8* }* %137, { i64, i8* }** %138
  %139 = getelementptr [7 x i8], [7 x i8]* @.str986, i32 0, i32 0
  %140 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str986.c, i8* %139)
  %141 = call { i64, i8* }* @nyx_array_new_ptr()
  %142 = load { i64, i8* }*, { i64, i8* }** %120
  %143 = bitcast { i64, i8* }* %142 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %141, i8* %143)
  %144 = load { i64, i8* }*, { i64, i8* }** %138
  %145 = bitcast { i64, i8* }* %144 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %141, i8* %145)
  %146 = call { i64, i8* }* @make_astnode(%nyx_string* %140, { i64, i8* }* %141)
  ret { i64, i8* }* %146
else37:
  br label %merge38
merge38:
  br label %merge2
else1:
  br label %merge2
merge2:
  %147 = load %nyx_string*, %nyx_string** %22
  %148 = getelementptr [6 x i8], [6 x i8]* @.str987, i32 0, i32 0
  %149 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str987.c, i8* %148)
  %150 = call i1 @nyx_string_equals(%nyx_string* %147, %nyx_string* %149)
  br i1 %150, label %then39, label %else40
then39:
  %151 = getelementptr [7 x i8], [7 x i8]* @.str988, i32 0, i32 0
  %152 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str988.c, i8* %151)
  %153 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %152)
  br i1 %153, label %then42, label %else43
then42:
  %154 = call %Token @advance(%SharedEnv_parse* %env.param)
  %155 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %156 = alloca { i64, i8* }*
  store { i64, i8* }* %155, { i64, i8* }** %156
  %157 = load { i64, i8* }*, { i64, i8* }** %25
  %158 = call i64 @nyx_array_get({ i64, i8* }* %157, i64 0)
  %159 = inttoptr i64 %158 to { i64, i8* }*
  %160 = alloca { i64, i8* }*
  store { i64, i8* }* %159, { i64, i8* }** %160
  %161 = getelementptr [13 x i8], [13 x i8]* @.str989, i32 0, i32 0
  %162 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str989.c, i8* %161)
  %163 = call { i64, i8* }* @nyx_array_new_ptr()
  %164 = load { i64, i8* }*, { i64, i8* }** %160
  %165 = bitcast { i64, i8* }* %164 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %163, i8* %165)
  %166 = load { i64, i8* }*, { i64, i8* }** %156
  %167 = bitcast { i64, i8* }* %166 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %163, i8* %167)
  %168 = call { i64, i8* }* @make_astnode(%nyx_string* %162, { i64, i8* }* %163)
  ret { i64, i8* }* %168
else43:
  br label %merge44
merge44:
  br label %merge41
else40:
  br label %merge41
merge41:
  %169 = alloca i1
  store i1 false, i1* %169
  %170 = load %nyx_string*, %nyx_string** %22
  %171 = getelementptr [6 x i8], [6 x i8]* @.str990, i32 0, i32 0
  %172 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str990.c, i8* %171)
  %173 = call i1 @nyx_string_equals(%nyx_string* %170, %nyx_string* %172)
  br i1 %173, label %sc_and_rhs45, label %sc_and_end46
sc_and_rhs45:
  %174 = getelementptr [7 x i8], [7 x i8]* @.str991, i32 0, i32 0
  %175 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str991.c, i8* %174)
  %176 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %175)
  store i1 %176, i1* %169
  br label %sc_and_end46
sc_and_end46:
  %177 = load i1, i1* %169
  br i1 %177, label %then47, label %else48
then47:
  %178 = call %Token @advance(%SharedEnv_parse* %env.param)
  %179 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %180 = alloca { i64, i8* }*
  store { i64, i8* }* %179, { i64, i8* }** %180
  %181 = getelementptr [13 x i8], [13 x i8]* @.str992, i32 0, i32 0
  %182 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str992.c, i8* %181)
  %183 = call { i64, i8* }* @nyx_array_new_ptr()
  %184 = load { i64, i8* }*, { i64, i8* }** %25
  %185 = call i64 @nyx_array_get({ i64, i8* }* %184, i64 0)
  call void @nyx_array_push({ i64, i8* }* %183, i64 %185)
  %186 = load { i64, i8* }*, { i64, i8* }** %25
  %187 = call i64 @nyx_array_get({ i64, i8* }* %186, i64 1)
  call void @nyx_array_push({ i64, i8* }* %183, i64 %187)
  %188 = load { i64, i8* }*, { i64, i8* }** %180
  %189 = bitcast { i64, i8* }* %188 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %183, i8* %189)
  %190 = call { i64, i8* }* @make_astnode(%nyx_string* %182, { i64, i8* }* %183)
  ret { i64, i8* }* %190
else48:
  br label %merge49
merge49:
  %191 = alloca i1
  store i1 false, i1* %191
  %192 = load %nyx_string*, %nyx_string** %22
  %193 = getelementptr [13 x i8], [13 x i8]* @.str993, i32 0, i32 0
  %194 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str993.c, i8* %193)
  %195 = call i1 @nyx_string_equals(%nyx_string* %192, %nyx_string* %194)
  br i1 %195, label %sc_and_rhs50, label %sc_and_end51
sc_and_rhs50:
  %196 = getelementptr [7 x i8], [7 x i8]* @.str994, i32 0, i32 0
  %197 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str994.c, i8* %196)
  %198 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %197)
  store i1 %198, i1* %191
  br label %sc_and_end51
sc_and_end51:
  %199 = load i1, i1* %191
  br i1 %199, label %then52, label %else53
then52:
  %200 = call %Token @advance(%SharedEnv_parse* %env.param)
  %201 = call { i64, i8* }* @parse_expression(%SharedEnv_parse* %env.param)
  %202 = alloca { i64, i8* }*
  store { i64, i8* }* %201, { i64, i8* }** %202
  %203 = getelementptr [13 x i8], [13 x i8]* @.str995, i32 0, i32 0
  %204 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str995.c, i8* %203)
  %205 = call { i64, i8* }* @nyx_array_new_ptr()
  %206 = load { i64, i8* }*, { i64, i8* }** %25
  %207 = call i64 @nyx_array_get({ i64, i8* }* %206, i64 0)
  call void @nyx_array_push({ i64, i8* }* %205, i64 %207)
  %208 = load { i64, i8* }*, { i64, i8* }** %25
  %209 = call i64 @nyx_array_get({ i64, i8* }* %208, i64 1)
  call void @nyx_array_push({ i64, i8* }* %205, i64 %209)
  %210 = load { i64, i8* }*, { i64, i8* }** %202
  %211 = bitcast { i64, i8* }* %210 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %205, i8* %211)
  %212 = call { i64, i8* }* @make_astnode(%nyx_string* %204, { i64, i8* }* %205)
  ret { i64, i8* }* %212
else53:
  br label %merge54
merge54:
  %213 = load { i64, i8* }*, { i64, i8* }** %19
  ret { i64, i8* }* %213
}

define internal i64 @synchronize(%SharedEnv_parse* %env.param) {
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
  %18 = alloca i1
  store i1 0, i1* %18
  br label %while_cond0
while_cond0:
  %19 = load i1, i1* %18
  %20 = xor i1 %19, true
  br i1 %20, label %while_body1, label %while_end2
while_body1:
  %21 = getelementptr [4 x i8], [4 x i8]* @.str996, i32 0, i32 0
  %22 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str996.c, i8* %21)
  %23 = call i1 @check(%SharedEnv_parse* %env.param, %nyx_string* %22)
  br i1 %23, label %then3, label %else4
then3:
  store i1 1, i1* %18
  br label %merge5
else4:
  %24 = call %Token @peek(%SharedEnv_parse* %env.param)
  %25 = call %nyx_string* @get_token_type(%Token %24)
  %26 = alloca %nyx_string*
  store %nyx_string* %25, %nyx_string** %26
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
  %41 = load %nyx_string*, %nyx_string** %26
  %42 = getelementptr [3 x i8], [3 x i8]* @.str997, i32 0, i32 0
  %43 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str997.c, i8* %42)
  %44 = call i1 @nyx_string_equals(%nyx_string* %41, %nyx_string* %43)
  br i1 %44, label %sc_or_end7, label %sc_or_rhs6
sc_or_rhs6:
  %45 = load %nyx_string*, %nyx_string** %26
  %46 = getelementptr [4 x i8], [4 x i8]* @.str998, i32 0, i32 0
  %47 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str998.c, i8* %46)
  %48 = call i1 @nyx_string_equals(%nyx_string* %45, %nyx_string* %47)
  store i1 %48, i1* %40
  br label %sc_or_end7
sc_or_end7:
  %49 = load i1, i1* %40
  br i1 %49, label %sc_or_end9, label %sc_or_rhs8
sc_or_rhs8:
  %50 = load %nyx_string*, %nyx_string** %26
  %51 = getelementptr [4 x i8], [4 x i8]* @.str999, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str999.c, i8* %51)
  %53 = call i1 @nyx_string_equals(%nyx_string* %50, %nyx_string* %52)
  store i1 %53, i1* %39
  br label %sc_or_end9
sc_or_end9:
  %54 = load i1, i1* %39
  br i1 %54, label %sc_or_end11, label %sc_or_rhs10
sc_or_rhs10:
  %55 = load %nyx_string*, %nyx_string** %26
  %56 = getelementptr [6 x i8], [6 x i8]* @.str1000, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1000.c, i8* %56)
  %58 = call i1 @nyx_string_equals(%nyx_string* %55, %nyx_string* %57)
  store i1 %58, i1* %38
  br label %sc_or_end11
sc_or_end11:
  %59 = load i1, i1* %38
  br i1 %59, label %sc_or_end13, label %sc_or_rhs12
sc_or_rhs12:
  %60 = load %nyx_string*, %nyx_string** %26
  %61 = getelementptr [7 x i8], [7 x i8]* @.str1001, i32 0, i32 0
  %62 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1001.c, i8* %61)
  %63 = call i1 @nyx_string_equals(%nyx_string* %60, %nyx_string* %62)
  store i1 %63, i1* %37
  br label %sc_or_end13
sc_or_end13:
  %64 = load i1, i1* %37
  br i1 %64, label %sc_or_end15, label %sc_or_rhs14
sc_or_rhs14:
  %65 = load %nyx_string*, %nyx_string** %26
  %66 = getelementptr [5 x i8], [5 x i8]* @.str1002, i32 0, i32 0
  %67 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1002.c, i8* %66)
  %68 = call i1 @nyx_string_equals(%nyx_string* %65, %nyx_string* %67)
  store i1 %68, i1* %36
  br label %sc_or_end15
sc_or_end15:
  %69 = load i1, i1* %36
  br i1 %69, label %sc_or_end17, label %sc_or_rhs16
sc_or_rhs16:
  %70 = load %nyx_string*, %nyx_string** %26
  %71 = getelementptr [3 x i8], [3 x i8]* @.str1003, i32 0, i32 0
  %72 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1003.c, i8* %71)
  %73 = call i1 @nyx_string_equals(%nyx_string* %70, %nyx_string* %72)
  store i1 %73, i1* %35
  br label %sc_or_end17
sc_or_end17:
  %74 = load i1, i1* %35
  br i1 %74, label %sc_or_end19, label %sc_or_rhs18
sc_or_rhs18:
  %75 = load %nyx_string*, %nyx_string** %26
  %76 = getelementptr [6 x i8], [6 x i8]* @.str1004, i32 0, i32 0
  %77 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1004.c, i8* %76)
  %78 = call i1 @nyx_string_equals(%nyx_string* %75, %nyx_string* %77)
  store i1 %78, i1* %34
  br label %sc_or_end19
sc_or_end19:
  %79 = load i1, i1* %34
  br i1 %79, label %sc_or_end21, label %sc_or_rhs20
sc_or_rhs20:
  %80 = load %nyx_string*, %nyx_string** %26
  %81 = getelementptr [4 x i8], [4 x i8]* @.str1005, i32 0, i32 0
  %82 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1005.c, i8* %81)
  %83 = call i1 @nyx_string_equals(%nyx_string* %80, %nyx_string* %82)
  store i1 %83, i1* %33
  br label %sc_or_end21
sc_or_end21:
  %84 = load i1, i1* %33
  br i1 %84, label %sc_or_end23, label %sc_or_rhs22
sc_or_rhs22:
  %85 = load %nyx_string*, %nyx_string** %26
  %86 = getelementptr [7 x i8], [7 x i8]* @.str1006, i32 0, i32 0
  %87 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1006.c, i8* %86)
  %88 = call i1 @nyx_string_equals(%nyx_string* %85, %nyx_string* %87)
  store i1 %88, i1* %32
  br label %sc_or_end23
sc_or_end23:
  %89 = load i1, i1* %32
  br i1 %89, label %sc_or_end25, label %sc_or_rhs24
sc_or_rhs24:
  %90 = load %nyx_string*, %nyx_string** %26
  %91 = getelementptr [7 x i8], [7 x i8]* @.str1007, i32 0, i32 0
  %92 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1007.c, i8* %91)
  %93 = call i1 @nyx_string_equals(%nyx_string* %90, %nyx_string* %92)
  store i1 %93, i1* %31
  br label %sc_or_end25
sc_or_end25:
  %94 = load i1, i1* %31
  br i1 %94, label %sc_or_end27, label %sc_or_rhs26
sc_or_rhs26:
  %95 = load %nyx_string*, %nyx_string** %26
  %96 = getelementptr [7 x i8], [7 x i8]* @.str1008, i32 0, i32 0
  %97 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1008.c, i8* %96)
  %98 = call i1 @nyx_string_equals(%nyx_string* %95, %nyx_string* %97)
  store i1 %98, i1* %30
  br label %sc_or_end27
sc_or_end27:
  %99 = load i1, i1* %30
  br i1 %99, label %sc_or_end29, label %sc_or_rhs28
sc_or_rhs28:
  %100 = load %nyx_string*, %nyx_string** %26
  %101 = getelementptr [6 x i8], [6 x i8]* @.str1009, i32 0, i32 0
  %102 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1009.c, i8* %101)
  %103 = call i1 @nyx_string_equals(%nyx_string* %100, %nyx_string* %102)
  store i1 %103, i1* %29
  br label %sc_or_end29
sc_or_end29:
  %104 = load i1, i1* %29
  br i1 %104, label %sc_or_end31, label %sc_or_rhs30
sc_or_rhs30:
  %105 = load %nyx_string*, %nyx_string** %26
  %106 = getelementptr [5 x i8], [5 x i8]* @.str1010, i32 0, i32 0
  %107 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1010.c, i8* %106)
  %108 = call i1 @nyx_string_equals(%nyx_string* %105, %nyx_string* %107)
  store i1 %108, i1* %28
  br label %sc_or_end31
sc_or_end31:
  %109 = load i1, i1* %28
  br i1 %109, label %sc_or_end33, label %sc_or_rhs32
sc_or_rhs32:
  %110 = load %nyx_string*, %nyx_string** %26
  %111 = getelementptr [6 x i8], [6 x i8]* @.str1011, i32 0, i32 0
  %112 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1011.c, i8* %111)
  %113 = call i1 @nyx_string_equals(%nyx_string* %110, %nyx_string* %112)
  store i1 %113, i1* %27
  br label %sc_or_end33
sc_or_end33:
  %114 = load i1, i1* %27
  br i1 %114, label %then34, label %else35
then34:
  store i1 1, i1* %18
  br label %merge36
else35:
  %115 = load %nyx_string*, %nyx_string** %26
  %116 = getelementptr [12 x i8], [12 x i8]* @.str1012, i32 0, i32 0
  %117 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1012.c, i8* %116)
  %118 = call i1 @nyx_string_equals(%nyx_string* %115, %nyx_string* %117)
  br i1 %118, label %then37, label %else38
then37:
  store i1 1, i1* %18
  br label %merge39
else38:
  %119 = call %Token @advance(%SharedEnv_parse* %env.param)
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

