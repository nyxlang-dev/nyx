source_filename = "script.nx"
target triple = "x86_64-pc-linux-gnu"

%Token = type { %nyx_string*, %nyx_string*, i64, i64 }

@.str0 = private unnamed_addr constant [9 x i8] c"NYX_LANG\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [3 x i8] c"es\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [1 x i8] c"\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [9 x i8] c"NYX_DIAG\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [5 x i8] c"json\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [1 x i8] c"\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [73 x i8] c"error interno [parser]: el bucle principal dejó de avanzar en el token \00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [67 x i8] c"internal error [parser]: the main loop stopped advancing at token \00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [4 x i8] c"EOF\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [6 x i8] c"error\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [9 x i8] c"Parser: \00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [16 x i8] c" error(s) found\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [10 x i8] c"_consumed\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [6 x i8] c"block\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [6 x i8] c"block\00"
@.str14.c = internal global %nyx_string* null
@.slotT15 = private unnamed_addr constant [6 x i8] c"Token\00"
@.str16 = private unnamed_addr constant [4 x i8] c"EOF\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [1 x i8] c"\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [4 x i8] c"EOF\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [14 x i8] c"RIGHT_BRACKET\00"
@.str21.c = internal global %nyx_string* null
@.slotT22 = private unnamed_addr constant [6 x i8] c"Token\00"
@.slotT23 = private unnamed_addr constant [6 x i8] c"Token\00"
@.str24 = private unnamed_addr constant [1 x i8] c"\00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [1 x i8] c"\00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [3 x i8] c"\5c\22\00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [3 x i8] c"\5c\5c\00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [3 x i8] c"\5cn\00"
@.str28.c = internal global %nyx_string* null
@.str29 = private unnamed_addr constant [3 x i8] c"\5cr\00"
@.str29.c = internal global %nyx_string* null
@.str30 = private unnamed_addr constant [3 x i8] c"\5ct\00"
@.str30.c = internal global %nyx_string* null
@.str31 = private unnamed_addr constant [1 x i8] c"\00"
@.str31.c = internal global %nyx_string* null
@.str32 = private unnamed_addr constant [39 x i8] c"demasiados errores de parse, abortando\00"
@.str32.c = internal global %nyx_string* null
@.str33 = private unnamed_addr constant [32 x i8] c"too many parse errors, aborting\00"
@.str33.c = internal global %nyx_string* null
@.str34 = private unnamed_addr constant [65 x i8] c"{\22code\22:\22NYX0103\22,\22severity\22:\22error\22,\22phase\22:\22parse\22,\22message\22:\22\00"
@.str34.c = internal global %nyx_string* null
@.str35 = private unnamed_addr constant [3 x i8] c"\22}\00"
@.str35.c = internal global %nyx_string* null
@.str36 = private unnamed_addr constant [18 x i8] c"error [NYX0103]: \00"
@.str36.c = internal global %nyx_string* null
@.str37 = private unnamed_addr constant [10 x i8] c"{\22code\22:\22\00"
@.str37.c = internal global %nyx_string* null
@.str38 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str38.c = internal global %nyx_string* null
@.str39 = private unnamed_addr constant [20 x i8] c",\22severity\22:\22error\22\00"
@.str39.c = internal global %nyx_string* null
@.str40 = private unnamed_addr constant [17 x i8] c",\22phase\22:\22parse\22\00"
@.str40.c = internal global %nyx_string* null
@.str41 = private unnamed_addr constant [9 x i8] c",\22line\22:\00"
@.str41.c = internal global %nyx_string* null
@.str42 = private unnamed_addr constant [11 x i8] c",\22column\22:\00"
@.str42.c = internal global %nyx_string* null
@.str43 = private unnamed_addr constant [1 x i8] c"\00"
@.str43.c = internal global %nyx_string* null
@.str44 = private unnamed_addr constant [12 x i8] c",\22module\22:\22\00"
@.str44.c = internal global %nyx_string* null
@.str45 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str45.c = internal global %nyx_string* null
@.str46 = private unnamed_addr constant [13 x i8] c",\22message\22:\22\00"
@.str46.c = internal global %nyx_string* null
@.str47 = private unnamed_addr constant [3 x i8] c"\22}\00"
@.str47.c = internal global %nyx_string* null
@.str48 = private unnamed_addr constant [8 x i8] c"error [\00"
@.str48.c = internal global %nyx_string* null
@.str49 = private unnamed_addr constant [4 x i8] c"]: \00"
@.str49.c = internal global %nyx_string* null
@.str50 = private unnamed_addr constant [1 x i8] c"\00"
@.str50.c = internal global %nyx_string* null
@.str51 = private unnamed_addr constant [7 x i8] c"  --> \00"
@.str51.c = internal global %nyx_string* null
@.str52 = private unnamed_addr constant [3 x i8] c", \00"
@.str52.c = internal global %nyx_string* null
@.str53 = private unnamed_addr constant [7 x i8] c"línea\00"
@.str53.c = internal global %nyx_string* null
@.str54 = private unnamed_addr constant [5 x i8] c"line\00"
@.str54.c = internal global %nyx_string* null
@.str55 = private unnamed_addr constant [2 x i8] c" \00"
@.str55.c = internal global %nyx_string* null
@.str56 = private unnamed_addr constant [2 x i8] c":\00"
@.str56.c = internal global %nyx_string* null
@.str57 = private unnamed_addr constant [7 x i8] c"  --> \00"
@.str57.c = internal global %nyx_string* null
@.str58 = private unnamed_addr constant [7 x i8] c"línea\00"
@.str58.c = internal global %nyx_string* null
@.str59 = private unnamed_addr constant [5 x i8] c"line\00"
@.str59.c = internal global %nyx_string* null
@.str60 = private unnamed_addr constant [2 x i8] c" \00"
@.str60.c = internal global %nyx_string* null
@.str61 = private unnamed_addr constant [2 x i8] c":\00"
@.str61.c = internal global %nyx_string* null
@.str62 = private unnamed_addr constant [4 x i8] c"LET\00"
@.str62.c = internal global %nyx_string* null
@.str63 = private unnamed_addr constant [4 x i8] c"VAR\00"
@.str63.c = internal global %nyx_string* null
@.str64 = private unnamed_addr constant [6 x i8] c"CONST\00"
@.str64.c = internal global %nyx_string* null
@.str65 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str65.c = internal global %nyx_string* null
@.str66 = private unnamed_addr constant [7 x i8] c"RETURN\00"
@.str66.c = internal global %nyx_string* null
@.str67 = private unnamed_addr constant [3 x i8] c"IF\00"
@.str67.c = internal global %nyx_string* null
@.str68 = private unnamed_addr constant [5 x i8] c"ELSE\00"
@.str68.c = internal global %nyx_string* null
@.str69 = private unnamed_addr constant [6 x i8] c"WHILE\00"
@.str69.c = internal global %nyx_string* null
@.str70 = private unnamed_addr constant [4 x i8] c"FOR\00"
@.str70.c = internal global %nyx_string* null
@.str71 = private unnamed_addr constant [3 x i8] c"IN\00"
@.str71.c = internal global %nyx_string* null
@.str72 = private unnamed_addr constant [6 x i8] c"BREAK\00"
@.str72.c = internal global %nyx_string* null
@.str73 = private unnamed_addr constant [9 x i8] c"CONTINUE\00"
@.str73.c = internal global %nyx_string* null
@.str74 = private unnamed_addr constant [7 x i8] c"STRUCT\00"
@.str74.c = internal global %nyx_string* null
@.str75 = private unnamed_addr constant [5 x i8] c"ENUM\00"
@.str75.c = internal global %nyx_string* null
@.str76 = private unnamed_addr constant [6 x i8] c"MATCH\00"
@.str76.c = internal global %nyx_string* null
@.str77 = private unnamed_addr constant [7 x i8] c"EXPORT\00"
@.str77.c = internal global %nyx_string* null
@.str78 = private unnamed_addr constant [7 x i8] c"IMPORT\00"
@.str78.c = internal global %nyx_string* null
@.str79 = private unnamed_addr constant [5 x i8] c"FROM\00"
@.str79.c = internal global %nyx_string* null
@.str80 = private unnamed_addr constant [5 x i8] c"TRUE\00"
@.str80.c = internal global %nyx_string* null
@.str81 = private unnamed_addr constant [6 x i8] c"FALSE\00"
@.str81.c = internal global %nyx_string* null
@.str82 = private unnamed_addr constant [4 x i8] c"AND\00"
@.str82.c = internal global %nyx_string* null
@.str83 = private unnamed_addr constant [3 x i8] c"OR\00"
@.str83.c = internal global %nyx_string* null
@.str84 = private unnamed_addr constant [4 x i8] c"NOT\00"
@.str84.c = internal global %nyx_string* null
@.str85 = private unnamed_addr constant [5 x i8] c"IMPL\00"
@.str85.c = internal global %nyx_string* null
@.str86 = private unnamed_addr constant [6 x i8] c"TRAIT\00"
@.str86.c = internal global %nyx_string* null
@.str87 = private unnamed_addr constant [5 x i8] c"TEST\00"
@.str87.c = internal global %nyx_string* null
@.str88 = private unnamed_addr constant [7 x i8] c"ASSERT\00"
@.str88.c = internal global %nyx_string* null
@.str89 = private unnamed_addr constant [7 x i8] c"EXTERN\00"
@.str89.c = internal global %nyx_string* null
@.str90 = private unnamed_addr constant [3 x i8] c"AS\00"
@.str90.c = internal global %nyx_string* null
@.str91 = private unnamed_addr constant [7 x i8] c"UNSAFE\00"
@.str91.c = internal global %nyx_string* null
@.str92 = private unnamed_addr constant [7 x i8] c"STATIC\00"
@.str92.c = internal global %nyx_string* null
@.str93 = private unnamed_addr constant [7 x i8] c"SIZEOF\00"
@.str93.c = internal global %nyx_string* null
@.str94 = private unnamed_addr constant [8 x i8] c"ALIGNOF\00"
@.str94.c = internal global %nyx_string* null
@.str95 = private unnamed_addr constant [4 x i8] c"ASM\00"
@.str95.c = internal global %nyx_string* null
@.str96 = private unnamed_addr constant [4 x i8] c"DYN\00"
@.str96.c = internal global %nyx_string* null
@.str97 = private unnamed_addr constant [4 x i8] c"PUB\00"
@.str97.c = internal global %nyx_string* null
@.str98 = private unnamed_addr constant [7 x i8] c"MODULE\00"
@.str98.c = internal global %nyx_string* null
@.str99 = private unnamed_addr constant [6 x i8] c"WHERE\00"
@.str99.c = internal global %nyx_string* null
@.str100 = private unnamed_addr constant [6 x i8] c"DEFER\00"
@.str100.c = internal global %nyx_string* null
@.str101 = private unnamed_addr constant [4 x i8] c"TRY\00"
@.str101.c = internal global %nyx_string* null
@.str102 = private unnamed_addr constant [6 x i8] c"CATCH\00"
@.str102.c = internal global %nyx_string* null
@.str103 = private unnamed_addr constant [6 x i8] c"THROW\00"
@.str103.c = internal global %nyx_string* null
@.str104 = private unnamed_addr constant [6 x i8] c"ASYNC\00"
@.str104.c = internal global %nyx_string* null
@.str105 = private unnamed_addr constant [6 x i8] c"AWAIT\00"
@.str105.c = internal global %nyx_string* null
@.str106 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str106.c = internal global %nyx_string* null
@.str107 = private unnamed_addr constant [8 x i8] c"NYX0102\00"
@.str107.c = internal global %nyx_string* null
@.str108 = private unnamed_addr constant [30 x i8] c"no se puede usar la keyword '\00"
@.str108.c = internal global %nyx_string* null
@.str109 = private unnamed_addr constant [21 x i8] c"' como identificador\00"
@.str109.c = internal global %nyx_string* null
@.str110 = private unnamed_addr constant [21 x i8] c"cannot use keyword '\00"
@.str110.c = internal global %nyx_string* null
@.str111 = private unnamed_addr constant [19 x i8] c"' as an identifier\00"
@.str111.c = internal global %nyx_string* null
@.str112 = private unnamed_addr constant [8 x i8] c"NYX0101\00"
@.str112.c = internal global %nyx_string* null
@.str113 = private unnamed_addr constant [14 x i8] c"se esperaba '\00"
@.str113.c = internal global %nyx_string* null
@.str114 = private unnamed_addr constant [16 x i8] c"', encontrado '\00"
@.str114.c = internal global %nyx_string* null
@.str115 = private unnamed_addr constant [4 x i8] c"' (\00"
@.str115.c = internal global %nyx_string* null
@.str116 = private unnamed_addr constant [2 x i8] c")\00"
@.str116.c = internal global %nyx_string* null
@.str117 = private unnamed_addr constant [11 x i8] c"expected '\00"
@.str117.c = internal global %nyx_string* null
@.str118 = private unnamed_addr constant [11 x i8] c"', found '\00"
@.str118.c = internal global %nyx_string* null
@.str119 = private unnamed_addr constant [4 x i8] c"' (\00"
@.str119.c = internal global %nyx_string* null
@.str120 = private unnamed_addr constant [2 x i8] c")\00"
@.str120.c = internal global %nyx_string* null
@.str121 = private unnamed_addr constant [4 x i8] c"EOF\00"
@.str121.c = internal global %nyx_string* null
@.str122 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str122.c = internal global %nyx_string* null
@.str123 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str123.c = internal global %nyx_string* null
@.str124 = private unnamed_addr constant [14 x i8] c"RIGHT_BRACKET\00"
@.str124.c = internal global %nyx_string* null
@.slotT125 = private unnamed_addr constant [6 x i8] c"Token\00"
@.slotT126 = private unnamed_addr constant [6 x i8] c"Token\00"
@.str127 = private unnamed_addr constant [6 x i8] c"OR_OR\00"
@.str127.c = internal global %nyx_string* null
@.str128 = private unnamed_addr constant [3 x i8] c"OR\00"
@.str128.c = internal global %nyx_string* null
@.str129 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str129.c = internal global %nyx_string* null
@.str130 = private unnamed_addr constant [8 x i8] c"AND_AND\00"
@.str130.c = internal global %nyx_string* null
@.str131 = private unnamed_addr constant [4 x i8] c"AND\00"
@.str131.c = internal global %nyx_string* null
@.str132 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str132.c = internal global %nyx_string* null
@.str133 = private unnamed_addr constant [5 x i8] c"PIPE\00"
@.str133.c = internal global %nyx_string* null
@.str134 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str134.c = internal global %nyx_string* null
@.str135 = private unnamed_addr constant [6 x i8] c"CARET\00"
@.str135.c = internal global %nyx_string* null
@.str136 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str136.c = internal global %nyx_string* null
@.str137 = private unnamed_addr constant [4 x i8] c"AMP\00"
@.str137.c = internal global %nyx_string* null
@.str138 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str138.c = internal global %nyx_string* null
@.str139 = private unnamed_addr constant [12 x i8] c"EQUAL_EQUAL\00"
@.str139.c = internal global %nyx_string* null
@.str140 = private unnamed_addr constant [10 x i8] c"NOT_EQUAL\00"
@.str140.c = internal global %nyx_string* null
@.str141 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str141.c = internal global %nyx_string* null
@.str142 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str142.c = internal global %nyx_string* null
@.str143 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str143.c = internal global %nyx_string* null
@.str144 = private unnamed_addr constant [11 x i8] c"LESS_EQUAL\00"
@.str144.c = internal global %nyx_string* null
@.str145 = private unnamed_addr constant [14 x i8] c"GREATER_EQUAL\00"
@.str145.c = internal global %nyx_string* null
@.str146 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str146.c = internal global %nyx_string* null
@.str147 = private unnamed_addr constant [16 x i8] c"RANGE_INCLUSIVE\00"
@.str147.c = internal global %nyx_string* null
@.str148 = private unnamed_addr constant [6 x i8] c"range\00"
@.str148.c = internal global %nyx_string* null
@.str149 = private unnamed_addr constant [5 x i8] c"true\00"
@.str149.c = internal global %nyx_string* null
@.str150 = private unnamed_addr constant [6 x i8] c"RANGE\00"
@.str150.c = internal global %nyx_string* null
@.str151 = private unnamed_addr constant [6 x i8] c"range\00"
@.str151.c = internal global %nyx_string* null
@.str152 = private unnamed_addr constant [6 x i8] c"false\00"
@.str152.c = internal global %nyx_string* null
@.str153 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str153.c = internal global %nyx_string* null
@.str154 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str154.c = internal global %nyx_string* null
@.str155 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str155.c = internal global %nyx_string* null
@.str156 = private unnamed_addr constant [11 x i8] c"SHIFT_LEFT\00"
@.str156.c = internal global %nyx_string* null
@.str157 = private unnamed_addr constant [12 x i8] c"SHIFT_RIGHT\00"
@.str157.c = internal global %nyx_string* null
@.str158 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str158.c = internal global %nyx_string* null
@.str159 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str159.c = internal global %nyx_string* null
@.str160 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str160.c = internal global %nyx_string* null
@.str161 = private unnamed_addr constant [6 x i8] c"SLASH\00"
@.str161.c = internal global %nyx_string* null
@.str162 = private unnamed_addr constant [8 x i8] c"PERCENT\00"
@.str162.c = internal global %nyx_string* null
@.str163 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str163.c = internal global %nyx_string* null
@.str164 = private unnamed_addr constant [6 x i8] c"POWER\00"
@.str164.c = internal global %nyx_string* null
@.str165 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str165.c = internal global %nyx_string* null
@.str166 = private unnamed_addr constant [6 x i8] c"POWER\00"
@.str166.c = internal global %nyx_string* null
@.str167 = private unnamed_addr constant [6 x i8] c"AWAIT\00"
@.str167.c = internal global %nyx_string* null
@.str168 = private unnamed_addr constant [11 x i8] c"await_expr\00"
@.str168.c = internal global %nyx_string* null
@.str169 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str169.c = internal global %nyx_string* null
@.str170 = private unnamed_addr constant [4 x i8] c"NOT\00"
@.str170.c = internal global %nyx_string* null
@.str171 = private unnamed_addr constant [6 x i8] c"TILDE\00"
@.str171.c = internal global %nyx_string* null
@.str172 = private unnamed_addr constant [5 x i8] c"unop\00"
@.str172.c = internal global %nyx_string* null
@.str173 = private unnamed_addr constant [4 x i8] c"AMP\00"
@.str173.c = internal global %nyx_string* null
@.str174 = private unnamed_addr constant [4 x i8] c"mut\00"
@.str174.c = internal global %nyx_string* null
@.str175 = private unnamed_addr constant [12 x i8] c"addr_of_mut\00"
@.str175.c = internal global %nyx_string* null
@.str176 = private unnamed_addr constant [8 x i8] c"addr_of\00"
@.str176.c = internal global %nyx_string* null
@.str177 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str177.c = internal global %nyx_string* null
@.str178 = private unnamed_addr constant [6 x i8] c"deref\00"
@.str178.c = internal global %nyx_string* null
@.str179 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str179.c = internal global %nyx_string* null
@.str180 = private unnamed_addr constant [6 x i8] c"deref\00"
@.str180.c = internal global %nyx_string* null
@.str181 = private unnamed_addr constant [4 x i8] c"AMP\00"
@.str181.c = internal global %nyx_string* null
@.str182 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str182.c = internal global %nyx_string* null
@.str183 = private unnamed_addr constant [4 x i8] c"NOT\00"
@.str183.c = internal global %nyx_string* null
@.str184 = private unnamed_addr constant [6 x i8] c"TILDE\00"
@.str184.c = internal global %nyx_string* null
@.str185 = private unnamed_addr constant [6 x i8] c"AWAIT\00"
@.str185.c = internal global %nyx_string* null
@.str186 = private unnamed_addr constant [3 x i8] c"AS\00"
@.str186.c = internal global %nyx_string* null
@.str187 = private unnamed_addr constant [5 x i8] c"cast\00"
@.str187.c = internal global %nyx_string* null
@.slotT188 = private unnamed_addr constant [6 x i8] c"Token\00"
@.str189 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str189.c = internal global %nyx_string* null
@.slotT190 = private unnamed_addr constant [6 x i8] c"Token\00"
@.str191 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str191.c = internal global %nyx_string* null
@.str192 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str192.c = internal global %nyx_string* null
@.str193 = private unnamed_addr constant [12 x i8] c"SHIFT_RIGHT\00"
@.str193.c = internal global %nyx_string* null
@.str194 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str194.c = internal global %nyx_string* null
@.str195 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str195.c = internal global %nyx_string* null
@.str196 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str196.c = internal global %nyx_string* null
@.str197 = private unnamed_addr constant [4 x i8] c"AMP\00"
@.str197.c = internal global %nyx_string* null
@.str198 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str198.c = internal global %nyx_string* null
@.str199 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str199.c = internal global %nyx_string* null
@.str200 = private unnamed_addr constant [4 x i8] c"DYN\00"
@.str200.c = internal global %nyx_string* null
@.str201 = private unnamed_addr constant [5 x i8] c"IMPL\00"
@.str201.c = internal global %nyx_string* null
@.str202 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str202.c = internal global %nyx_string* null
@.str203 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str203.c = internal global %nyx_string* null
@.str204 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str204.c = internal global %nyx_string* null
@.str205 = private unnamed_addr constant [6 x i8] c"ARROW\00"
@.str205.c = internal global %nyx_string* null
@.str206 = private unnamed_addr constant [13 x i8] c"LEFT_BRACKET\00"
@.str206.c = internal global %nyx_string* null
@.str207 = private unnamed_addr constant [14 x i8] c"RIGHT_BRACKET\00"
@.str207.c = internal global %nyx_string* null
@.str208 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str208.c = internal global %nyx_string* null
@.str209 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str209.c = internal global %nyx_string* null
@.str210 = private unnamed_addr constant [4 x i8] c"DOT\00"
@.str210.c = internal global %nyx_string* null
@.slotT211 = private unnamed_addr constant [6 x i8] c"Token\00"
@.str212 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str212.c = internal global %nyx_string* null
@.str213 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str213.c = internal global %nyx_string* null
@.str214 = private unnamed_addr constant [4 x i8] c"DOT\00"
@.str214.c = internal global %nyx_string* null
@.str215 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str215.c = internal global %nyx_string* null
@.str216 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str216.c = internal global %nyx_string* null
@.str217 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str217.c = internal global %nyx_string* null
@.str218 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str218.c = internal global %nyx_string* null
@.str219 = private unnamed_addr constant [12 x i8] c"SHIFT_RIGHT\00"
@.str219.c = internal global %nyx_string* null
@.str220 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str220.c = internal global %nyx_string* null
@.str221 = private unnamed_addr constant [13 x i8] c"generic_call\00"
@.str221.c = internal global %nyx_string* null
@.str222 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str222.c = internal global %nyx_string* null
@.str223 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str223.c = internal global %nyx_string* null
@.str224 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str224.c = internal global %nyx_string* null
@.str225 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str225.c = internal global %nyx_string* null
@.str226 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str226.c = internal global %nyx_string* null
@.str227 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str227.c = internal global %nyx_string* null
@.str228 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str228.c = internal global %nyx_string* null
@.str229 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str229.c = internal global %nyx_string* null
@.str230 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str230.c = internal global %nyx_string* null
@.str231 = private unnamed_addr constant [12 x i8] c"struct_init\00"
@.str231.c = internal global %nyx_string* null
@.str232 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str232.c = internal global %nyx_string* null
@.str233 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str233.c = internal global %nyx_string* null
@.str234 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str234.c = internal global %nyx_string* null
@.str235 = private unnamed_addr constant [5 x i8] c"call\00"
@.str235.c = internal global %nyx_string* null
@.str236 = private unnamed_addr constant [13 x i8] c"LEFT_BRACKET\00"
@.str236.c = internal global %nyx_string* null
@.str237 = private unnamed_addr constant [14 x i8] c"RIGHT_BRACKET\00"
@.str237.c = internal global %nyx_string* null
@.str238 = private unnamed_addr constant [6 x i8] c"index\00"
@.str238.c = internal global %nyx_string* null
@.str239 = private unnamed_addr constant [4 x i8] c"DOT\00"
@.str239.c = internal global %nyx_string* null
@.str240 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str240.c = internal global %nyx_string* null
@.str241 = private unnamed_addr constant [12 x i8] c"tuple_index\00"
@.str241.c = internal global %nyx_string* null
@.str242 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str242.c = internal global %nyx_string* null
@.str243 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str243.c = internal global %nyx_string* null
@.str244 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str244.c = internal global %nyx_string* null
@.str245 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str245.c = internal global %nyx_string* null
@.str246 = private unnamed_addr constant [12 x i8] c"SHIFT_RIGHT\00"
@.str246.c = internal global %nyx_string* null
@.str247 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str247.c = internal global %nyx_string* null
@.str248 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str248.c = internal global %nyx_string* null
@.str249 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str249.c = internal global %nyx_string* null
@.str250 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str250.c = internal global %nyx_string* null
@.str251 = private unnamed_addr constant [12 x i8] c"method_call\00"
@.str251.c = internal global %nyx_string* null
@.str252 = private unnamed_addr constant [12 x i8] c"method_call\00"
@.str252.c = internal global %nyx_string* null
@.str253 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str253.c = internal global %nyx_string* null
@.str254 = private unnamed_addr constant [13 x i8] c"field_access\00"
@.str254.c = internal global %nyx_string* null
@.str255 = private unnamed_addr constant [9 x i8] c"QUESTION\00"
@.str255.c = internal global %nyx_string* null
@.str256 = private unnamed_addr constant [7 x i8] c"try_op\00"
@.str256.c = internal global %nyx_string* null
@.str257 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str257.c = internal global %nyx_string* null
@.str258 = private unnamed_addr constant [7 x i8] c"number\00"
@.str258.c = internal global %nyx_string* null
@.str259 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str259.c = internal global %nyx_string* null
@.str260 = private unnamed_addr constant [7 x i8] c"string\00"
@.str260.c = internal global %nyx_string* null
@.str261 = private unnamed_addr constant [5 x i8] c"CHAR\00"
@.str261.c = internal global %nyx_string* null
@.str262 = private unnamed_addr constant [5 x i8] c"char\00"
@.str262.c = internal global %nyx_string* null
@.str263 = private unnamed_addr constant [5 x i8] c"TRUE\00"
@.str263.c = internal global %nyx_string* null
@.str264 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str264.c = internal global %nyx_string* null
@.str265 = private unnamed_addr constant [5 x i8] c"true\00"
@.str265.c = internal global %nyx_string* null
@.str266 = private unnamed_addr constant [6 x i8] c"FALSE\00"
@.str266.c = internal global %nyx_string* null
@.str267 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str267.c = internal global %nyx_string* null
@.str268 = private unnamed_addr constant [6 x i8] c"false\00"
@.str268.c = internal global %nyx_string* null
@.str269 = private unnamed_addr constant [7 x i8] c"SIZEOF\00"
@.str269.c = internal global %nyx_string* null
@.str270 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str270.c = internal global %nyx_string* null
@.str271 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str271.c = internal global %nyx_string* null
@.str272 = private unnamed_addr constant [7 x i8] c"sizeof\00"
@.str272.c = internal global %nyx_string* null
@.str273 = private unnamed_addr constant [8 x i8] c"ALIGNOF\00"
@.str273.c = internal global %nyx_string* null
@.str274 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str274.c = internal global %nyx_string* null
@.str275 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str275.c = internal global %nyx_string* null
@.str276 = private unnamed_addr constant [8 x i8] c"alignof\00"
@.str276.c = internal global %nyx_string* null
@.str277 = private unnamed_addr constant [4 x i8] c"ASM\00"
@.str277.c = internal global %nyx_string* null
@.str278 = private unnamed_addr constant [2 x i8] c"0\00"
@.str278.c = internal global %nyx_string* null
@.str279 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str279.c = internal global %nyx_string* null
@.str280 = private unnamed_addr constant [9 x i8] c"volatile\00"
@.str280.c = internal global %nyx_string* null
@.str281 = private unnamed_addr constant [2 x i8] c"1\00"
@.str281.c = internal global %nyx_string* null
@.str282 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str282.c = internal global %nyx_string* null
@.str283 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str283.c = internal global %nyx_string* null
@.str284 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str284.c = internal global %nyx_string* null
@.str285 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str285.c = internal global %nyx_string* null
@.str286 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str286.c = internal global %nyx_string* null
@.str287 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str287.c = internal global %nyx_string* null
@.str288 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str288.c = internal global %nyx_string* null
@.str289 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str289.c = internal global %nyx_string* null
@.str290 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str290.c = internal global %nyx_string* null
@.str291 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str291.c = internal global %nyx_string* null
@.str292 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str292.c = internal global %nyx_string* null
@.str293 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str293.c = internal global %nyx_string* null
@.str294 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str294.c = internal global %nyx_string* null
@.str295 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str295.c = internal global %nyx_string* null
@.str296 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str296.c = internal global %nyx_string* null
@.str297 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str297.c = internal global %nyx_string* null
@.str298 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str298.c = internal global %nyx_string* null
@.str299 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str299.c = internal global %nyx_string* null
@.str300 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str300.c = internal global %nyx_string* null
@.str301 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str301.c = internal global %nyx_string* null
@.str302 = private unnamed_addr constant [15 x i8] c"inline_asm_gcc\00"
@.str302.c = internal global %nyx_string* null
@.str303 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str303.c = internal global %nyx_string* null
@.str304 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str304.c = internal global %nyx_string* null
@.str305 = private unnamed_addr constant [4 x i8] c"out\00"
@.str305.c = internal global %nyx_string* null
@.str306 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str306.c = internal global %nyx_string* null
@.str307 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str307.c = internal global %nyx_string* null
@.str308 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str308.c = internal global %nyx_string* null
@.str309 = private unnamed_addr constant [3 x i8] c"in\00"
@.str309.c = internal global %nyx_string* null
@.str310 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str310.c = internal global %nyx_string* null
@.str311 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str311.c = internal global %nyx_string* null
@.str312 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str312.c = internal global %nyx_string* null
@.str313 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str313.c = internal global %nyx_string* null
@.str314 = private unnamed_addr constant [8 x i8] c"clobber\00"
@.str314.c = internal global %nyx_string* null
@.str315 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str315.c = internal global %nyx_string* null
@.str316 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str316.c = internal global %nyx_string* null
@.str317 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str317.c = internal global %nyx_string* null
@.str318 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str318.c = internal global %nyx_string* null
@.str319 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str319.c = internal global %nyx_string* null
@.str320 = private unnamed_addr constant [11 x i8] c"inline_asm\00"
@.str320.c = internal global %nyx_string* null
@.str321 = private unnamed_addr constant [7 x i8] c"ASSERT\00"
@.str321.c = internal global %nyx_string* null
@.str322 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str322.c = internal global %nyx_string* null
@.str323 = private unnamed_addr constant [7 x i8] c"string\00"
@.str323.c = internal global %nyx_string* null
@.str324 = private unnamed_addr constant [15 x i8] c"assert @ line \00"
@.str324.c = internal global %nyx_string* null
@.str325 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str325.c = internal global %nyx_string* null
@.str326 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str326.c = internal global %nyx_string* null
@.str327 = private unnamed_addr constant [7 x i8] c"assert\00"
@.str327.c = internal global %nyx_string* null
@.str328 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str328.c = internal global %nyx_string* null
@.str329 = private unnamed_addr constant [4 x i8] c"NOT\00"
@.str329.c = internal global %nyx_string* null
@.str330 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str330.c = internal global %nyx_string* null
@.str331 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str331.c = internal global %nyx_string* null
@.str332 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str332.c = internal global %nyx_string* null
@.str333 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str333.c = internal global %nyx_string* null
@.str334 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str334.c = internal global %nyx_string* null
@.str335 = private unnamed_addr constant [13 x i8] c"LEFT_BRACKET\00"
@.str335.c = internal global %nyx_string* null
@.str336 = private unnamed_addr constant [6 x i8] c"MATCH\00"
@.str336.c = internal global %nyx_string* null
@.str337 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str337.c = internal global %nyx_string* null
@.str338 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str338.c = internal global %nyx_string* null
@.str339 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str339.c = internal global %nyx_string* null
@.str340 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str340.c = internal global %nyx_string* null
@.str341 = private unnamed_addr constant [10 x i8] c"tuple_lit\00"
@.str341.c = internal global %nyx_string* null
@.str342 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str342.c = internal global %nyx_string* null
@.str343 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str343.c = internal global %nyx_string* null
@.str344 = private unnamed_addr constant [10 x i8] c"__lambda_\00"
@.str344.c = internal global %nyx_string* null
@.str345 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str345.c = internal global %nyx_string* null
@.str346 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str346.c = internal global %nyx_string* null
@.str347 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str347.c = internal global %nyx_string* null
@.str348 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str348.c = internal global %nyx_string* null
@.str349 = private unnamed_addr constant [4 x i8] c"int\00"
@.str349.c = internal global %nyx_string* null
@.str350 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str350.c = internal global %nyx_string* null
@.str351 = private unnamed_addr constant [1 x i8] c"\00"
@.str351.c = internal global %nyx_string* null
@.str352 = private unnamed_addr constant [6 x i8] c"ARROW\00"
@.str352.c = internal global %nyx_string* null
@.str353 = private unnamed_addr constant [9 x i8] c"function\00"
@.str353.c = internal global %nyx_string* null
@.str354 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str354.c = internal global %nyx_string* null
@.str355 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str355.c = internal global %nyx_string* null
@.str356 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str356.c = internal global %nyx_string* null
@.str357 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str357.c = internal global %nyx_string* null
@.str358 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str358.c = internal global %nyx_string* null
@.str359 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str359.c = internal global %nyx_string* null
@.str360 = private unnamed_addr constant [8 x i8] c"NYX0106\00"
@.str360.c = internal global %nyx_string* null
@.str361 = private unnamed_addr constant [71 x i8] c"las claves de un map literal deben ser String — usa {\22clave\22: valor}\00"
@.str361.c = internal global %nyx_string* null
@.str362 = private unnamed_addr constant [55 x i8] c"map literal keys must be String — use {\22key\22: value}\00"
@.str362.c = internal global %nyx_string* null
@.str363 = private unnamed_addr constant [6 x i8] c"error\00"
@.str363.c = internal global %nyx_string* null
@.str364 = private unnamed_addr constant [8 x i8] c"NYX0107\00"
@.str364.c = internal global %nyx_string* null
@.str365 = private unnamed_addr constant [38 x i8] c"token inesperado en una expresión: '\00"
@.str365.c = internal global %nyx_string* null
@.str366 = private unnamed_addr constant [4 x i8] c"' (\00"
@.str366.c = internal global %nyx_string* null
@.str367 = private unnamed_addr constant [2 x i8] c")\00"
@.str367.c = internal global %nyx_string* null
@.str368 = private unnamed_addr constant [34 x i8] c"unexpected token in expression: '\00"
@.str368.c = internal global %nyx_string* null
@.str369 = private unnamed_addr constant [4 x i8] c"' (\00"
@.str369.c = internal global %nyx_string* null
@.str370 = private unnamed_addr constant [2 x i8] c")\00"
@.str370.c = internal global %nyx_string* null
@.str371 = private unnamed_addr constant [6 x i8] c"error\00"
@.str371.c = internal global %nyx_string* null
@.str372 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str372.c = internal global %nyx_string* null
@.str373 = private unnamed_addr constant [4 x i8] c"EOF\00"
@.str373.c = internal global %nyx_string* null
@.str374 = private unnamed_addr constant [8 x i8] c"NYX0104\00"
@.str374.c = internal global %nyx_string* null
@.str375 = private unnamed_addr constant [53 x i8] c"fin de archivo inesperado: falta '}' del map literal\00"
@.str375.c = internal global %nyx_string* null
@.str376 = private unnamed_addr constant [59 x i8] c"unexpected end of file: missing closing '}' of map literal\00"
@.str376.c = internal global %nyx_string* null
@.str377 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str377.c = internal global %nyx_string* null
@.str378 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str378.c = internal global %nyx_string* null
@.str379 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str379.c = internal global %nyx_string* null
@.str380 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str380.c = internal global %nyx_string* null
@.str381 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str381.c = internal global %nyx_string* null
@.str382 = private unnamed_addr constant [12 x i8] c"map_literal\00"
@.str382.c = internal global %nyx_string* null
@.str383 = private unnamed_addr constant [13 x i8] c"LEFT_BRACKET\00"
@.str383.c = internal global %nyx_string* null
@.str384 = private unnamed_addr constant [14 x i8] c"RIGHT_BRACKET\00"
@.str384.c = internal global %nyx_string* null
@.str385 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str385.c = internal global %nyx_string* null
@.str386 = private unnamed_addr constant [6 x i8] c"array\00"
@.str386.c = internal global %nyx_string* null
@.str387 = private unnamed_addr constant [5 x i8] c"ENUM\00"
@.str387.c = internal global %nyx_string* null
@.str388 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str388.c = internal global %nyx_string* null
@.str389 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str389.c = internal global %nyx_string* null
@.str390 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str390.c = internal global %nyx_string* null
@.str391 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str391.c = internal global %nyx_string* null
@.str392 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str392.c = internal global %nyx_string* null
@.str393 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str393.c = internal global %nyx_string* null
@.str394 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str394.c = internal global %nyx_string* null
@.str395 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str395.c = internal global %nyx_string* null
@.str396 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str396.c = internal global %nyx_string* null
@.str397 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str397.c = internal global %nyx_string* null
@.str398 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str398.c = internal global %nyx_string* null
@.str399 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str399.c = internal global %nyx_string* null
@.str400 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str400.c = internal global %nyx_string* null
@.str401 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str401.c = internal global %nyx_string* null
@.str402 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str402.c = internal global %nyx_string* null
@.str403 = private unnamed_addr constant [9 x i8] c"enum_def\00"
@.str403.c = internal global %nyx_string* null
@.str404 = private unnamed_addr constant [9 x i8] c"wildcard\00"
@.str404.c = internal global %nyx_string* null
@.str405 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str405.c = internal global %nyx_string* null
@.str406 = private unnamed_addr constant [2 x i8] c".\00"
@.str406.c = internal global %nyx_string* null
@.str407 = private unnamed_addr constant [16 x i8] c"literal_pattern\00"
@.str407.c = internal global %nyx_string* null
@.str408 = private unnamed_addr constant [6 x i8] c"float\00"
@.str408.c = internal global %nyx_string* null
@.str409 = private unnamed_addr constant [16 x i8] c"RANGE_INCLUSIVE\00"
@.str409.c = internal global %nyx_string* null
@.str410 = private unnamed_addr constant [1 x i8] c"\00"
@.str410.c = internal global %nyx_string* null
@.str411 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str411.c = internal global %nyx_string* null
@.str412 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str412.c = internal global %nyx_string* null
@.str413 = private unnamed_addr constant [2 x i8] c"-\00"
@.str413.c = internal global %nyx_string* null
@.str414 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str414.c = internal global %nyx_string* null
@.str415 = private unnamed_addr constant [14 x i8] c"range_pattern\00"
@.str415.c = internal global %nyx_string* null
@.str416 = private unnamed_addr constant [5 x i8] c"true\00"
@.str416.c = internal global %nyx_string* null
@.str417 = private unnamed_addr constant [4 x i8] c"int\00"
@.str417.c = internal global %nyx_string* null
@.str418 = private unnamed_addr constant [6 x i8] c"RANGE\00"
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
@.str425 = private unnamed_addr constant [6 x i8] c"false\00"
@.str425.c = internal global %nyx_string* null
@.str426 = private unnamed_addr constant [4 x i8] c"int\00"
@.str426.c = internal global %nyx_string* null
@.str427 = private unnamed_addr constant [16 x i8] c"literal_pattern\00"
@.str427.c = internal global %nyx_string* null
@.str428 = private unnamed_addr constant [4 x i8] c"int\00"
@.str428.c = internal global %nyx_string* null
@.str429 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str429.c = internal global %nyx_string* null
@.str430 = private unnamed_addr constant [16 x i8] c"literal_pattern\00"
@.str430.c = internal global %nyx_string* null
@.str431 = private unnamed_addr constant [7 x i8] c"string\00"
@.str431.c = internal global %nyx_string* null
@.str432 = private unnamed_addr constant [5 x i8] c"TRUE\00"
@.str432.c = internal global %nyx_string* null
@.str433 = private unnamed_addr constant [16 x i8] c"literal_pattern\00"
@.str433.c = internal global %nyx_string* null
@.str434 = private unnamed_addr constant [5 x i8] c"true\00"
@.str434.c = internal global %nyx_string* null
@.str435 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str435.c = internal global %nyx_string* null
@.str436 = private unnamed_addr constant [6 x i8] c"FALSE\00"
@.str436.c = internal global %nyx_string* null
@.str437 = private unnamed_addr constant [16 x i8] c"literal_pattern\00"
@.str437.c = internal global %nyx_string* null
@.str438 = private unnamed_addr constant [6 x i8] c"false\00"
@.str438.c = internal global %nyx_string* null
@.str439 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str439.c = internal global %nyx_string* null
@.str440 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str440.c = internal global %nyx_string* null
@.str441 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str441.c = internal global %nyx_string* null
@.str442 = private unnamed_addr constant [2 x i8] c".\00"
@.str442.c = internal global %nyx_string* null
@.str443 = private unnamed_addr constant [16 x i8] c"literal_pattern\00"
@.str443.c = internal global %nyx_string* null
@.str444 = private unnamed_addr constant [2 x i8] c"-\00"
@.str444.c = internal global %nyx_string* null
@.str445 = private unnamed_addr constant [6 x i8] c"float\00"
@.str445.c = internal global %nyx_string* null
@.str446 = private unnamed_addr constant [16 x i8] c"RANGE_INCLUSIVE\00"
@.str446.c = internal global %nyx_string* null
@.str447 = private unnamed_addr constant [1 x i8] c"\00"
@.str447.c = internal global %nyx_string* null
@.str448 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str448.c = internal global %nyx_string* null
@.str449 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str449.c = internal global %nyx_string* null
@.str450 = private unnamed_addr constant [2 x i8] c"-\00"
@.str450.c = internal global %nyx_string* null
@.str451 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str451.c = internal global %nyx_string* null
@.str452 = private unnamed_addr constant [14 x i8] c"range_pattern\00"
@.str452.c = internal global %nyx_string* null
@.str453 = private unnamed_addr constant [2 x i8] c"-\00"
@.str453.c = internal global %nyx_string* null
@.str454 = private unnamed_addr constant [5 x i8] c"true\00"
@.str454.c = internal global %nyx_string* null
@.str455 = private unnamed_addr constant [4 x i8] c"int\00"
@.str455.c = internal global %nyx_string* null
@.str456 = private unnamed_addr constant [6 x i8] c"RANGE\00"
@.str456.c = internal global %nyx_string* null
@.str457 = private unnamed_addr constant [1 x i8] c"\00"
@.str457.c = internal global %nyx_string* null
@.str458 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str458.c = internal global %nyx_string* null
@.str459 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str459.c = internal global %nyx_string* null
@.str460 = private unnamed_addr constant [2 x i8] c"-\00"
@.str460.c = internal global %nyx_string* null
@.str461 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str461.c = internal global %nyx_string* null
@.str462 = private unnamed_addr constant [14 x i8] c"range_pattern\00"
@.str462.c = internal global %nyx_string* null
@.str463 = private unnamed_addr constant [2 x i8] c"-\00"
@.str463.c = internal global %nyx_string* null
@.str464 = private unnamed_addr constant [6 x i8] c"false\00"
@.str464.c = internal global %nyx_string* null
@.str465 = private unnamed_addr constant [4 x i8] c"int\00"
@.str465.c = internal global %nyx_string* null
@.str466 = private unnamed_addr constant [16 x i8] c"literal_pattern\00"
@.str466.c = internal global %nyx_string* null
@.str467 = private unnamed_addr constant [2 x i8] c"-\00"
@.str467.c = internal global %nyx_string* null
@.str468 = private unnamed_addr constant [4 x i8] c"int\00"
@.str468.c = internal global %nyx_string* null
@.str469 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str469.c = internal global %nyx_string* null
@.str470 = private unnamed_addr constant [2 x i8] c"_\00"
@.str470.c = internal global %nyx_string* null
@.str471 = private unnamed_addr constant [4 x i8] c"DOT\00"
@.str471.c = internal global %nyx_string* null
@.str472 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str472.c = internal global %nyx_string* null
@.str473 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str473.c = internal global %nyx_string* null
@.str474 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str474.c = internal global %nyx_string* null
@.str475 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str475.c = internal global %nyx_string* null
@.str476 = private unnamed_addr constant [19 x i8] c"identifier_pattern\00"
@.str476.c = internal global %nyx_string* null
@.str477 = private unnamed_addr constant [9 x i8] c"wildcard\00"
@.str477.c = internal global %nyx_string* null
@.str478 = private unnamed_addr constant [21 x i8] c"nested_match_pattern\00"
@.str478.c = internal global %nyx_string* null
@.str479 = private unnamed_addr constant [9 x i8] c"wildcard\00"
@.str479.c = internal global %nyx_string* null
@.str480 = private unnamed_addr constant [2 x i8] c"_\00"
@.str480.c = internal global %nyx_string* null
@.str481 = private unnamed_addr constant [14 x i8] c"match_pattern\00"
@.str481.c = internal global %nyx_string* null
@.str482 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str482.c = internal global %nyx_string* null
@.str483 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str483.c = internal global %nyx_string* null
@.str484 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str484.c = internal global %nyx_string* null
@.str485 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str485.c = internal global %nyx_string* null
@.str486 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str486.c = internal global %nyx_string* null
@.str487 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str487.c = internal global %nyx_string* null
@.str488 = private unnamed_addr constant [15 x i8] c"struct_pattern\00"
@.str488.c = internal global %nyx_string* null
@.str489 = private unnamed_addr constant [19 x i8] c"identifier_pattern\00"
@.str489.c = internal global %nyx_string* null
@.str490 = private unnamed_addr constant [5 x i8] c"PIPE\00"
@.str490.c = internal global %nyx_string* null
@.str491 = private unnamed_addr constant [5 x i8] c"PIPE\00"
@.str491.c = internal global %nyx_string* null
@.str492 = private unnamed_addr constant [11 x i8] c"or_pattern\00"
@.str492.c = internal global %nyx_string* null
@.str493 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str493.c = internal global %nyx_string* null
@.str494 = private unnamed_addr constant [3 x i8] c"IF\00"
@.str494.c = internal global %nyx_string* null
@.str495 = private unnamed_addr constant [12 x i8] c"ARROW_MATCH\00"
@.str495.c = internal global %nyx_string* null
@.str496 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str496.c = internal global %nyx_string* null
@.str497 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str497.c = internal global %nyx_string* null
@.str498 = private unnamed_addr constant [10 x i8] c"match_arm\00"
@.str498.c = internal global %nyx_string* null
@.str499 = private unnamed_addr constant [6 x i8] c"MATCH\00"
@.str499.c = internal global %nyx_string* null
@.str500 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str500.c = internal global %nyx_string* null
@.str501 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str501.c = internal global %nyx_string* null
@.str502 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str502.c = internal global %nyx_string* null
@.str503 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str503.c = internal global %nyx_string* null
@.str504 = private unnamed_addr constant [6 x i8] c"match\00"
@.str504.c = internal global %nyx_string* null
@.str505 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str505.c = internal global %nyx_string* null
@.str506 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str506.c = internal global %nyx_string* null
@.str507 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str507.c = internal global %nyx_string* null
@.str508 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str508.c = internal global %nyx_string* null
@.str509 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str509.c = internal global %nyx_string* null
@.str510 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str510.c = internal global %nyx_string* null
@.str511 = private unnamed_addr constant [12 x i8] c"struct_init\00"
@.str511.c = internal global %nyx_string* null
@.str512 = private unnamed_addr constant [14 x i8] c"MODULE_MARKER\00"
@.str512.c = internal global %nyx_string* null
@.str513 = private unnamed_addr constant [8 x i8] c"-reabre\00"
@.str513.c = internal global %nyx_string* null
@.str514 = private unnamed_addr constant [14 x i8] c"module_marker\00"
@.str514.c = internal global %nyx_string* null
@.str515 = private unnamed_addr constant [14 x i8] c"module_marker\00"
@.str515.c = internal global %nyx_string* null
@.str516 = private unnamed_addr constant [4 x i8] c"LET\00"
@.str516.c = internal global %nyx_string* null
@.str517 = private unnamed_addr constant [4 x i8] c"VAR\00"
@.str517.c = internal global %nyx_string* null
@.str518 = private unnamed_addr constant [6 x i8] c"CONST\00"
@.str518.c = internal global %nyx_string* null
@.str519 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str519.c = internal global %nyx_string* null
@.str520 = private unnamed_addr constant [5 x i8] c"HASH\00"
@.str520.c = internal global %nyx_string* null
@.str521 = private unnamed_addr constant [13 x i8] c"LEFT_BRACKET\00"
@.str521.c = internal global %nyx_string* null
@.str522 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str522.c = internal global %nyx_string* null
@.str523 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str523.c = internal global %nyx_string* null
@.str524 = private unnamed_addr constant [1 x i8] c"\00"
@.str524.c = internal global %nyx_string* null
@.str525 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str525.c = internal global %nyx_string* null
@.str526 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str526.c = internal global %nyx_string* null
@.str527 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str527.c = internal global %nyx_string* null
@.str528 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str528.c = internal global %nyx_string* null
@.str529 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str529.c = internal global %nyx_string* null
@.str530 = private unnamed_addr constant [2 x i8] c",\00"
@.str530.c = internal global %nyx_string* null
@.str531 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str531.c = internal global %nyx_string* null
@.str532 = private unnamed_addr constant [2 x i8] c"(\00"
@.str532.c = internal global %nyx_string* null
@.str533 = private unnamed_addr constant [2 x i8] c")\00"
@.str533.c = internal global %nyx_string* null
@.str534 = private unnamed_addr constant [12 x i8] c"export_name\00"
@.str534.c = internal global %nyx_string* null
@.str535 = private unnamed_addr constant [13 x i8] c"export_name=\00"
@.str535.c = internal global %nyx_string* null
@.str536 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str536.c = internal global %nyx_string* null
@.str537 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str537.c = internal global %nyx_string* null
@.str538 = private unnamed_addr constant [2 x i8] c"=\00"
@.str538.c = internal global %nyx_string* null
@.str539 = private unnamed_addr constant [14 x i8] c"RIGHT_BRACKET\00"
@.str539.c = internal global %nyx_string* null
@.str540 = private unnamed_addr constant [9 x i8] c"suspends\00"
@.str540.c = internal global %nyx_string* null
@.str541 = private unnamed_addr constant [7 x i8] c"EXTERN\00"
@.str541.c = internal global %nyx_string* null
@.str542 = private unnamed_addr constant [8 x i8] c"NYX0105\00"
@.str542.c = internal global %nyx_string* null
@.str543 = private unnamed_addr constant [41 x i8] c"#[suspends] solo aplica a extern \22js\22 fn\00"
@.str543.c = internal global %nyx_string* null
@.str544 = private unnamed_addr constant [43 x i8] c"#[suspends] only applies to extern \22js\22 fn\00"
@.str544.c = internal global %nyx_string* null
@.str545 = private unnamed_addr constant [6 x i8] c"error\00"
@.str545.c = internal global %nyx_string* null
@.str546 = private unnamed_addr constant [7 x i8] c"EXTERN\00"
@.str546.c = internal global %nyx_string* null
@.str547 = private unnamed_addr constant [9 x i8] c"suspends\00"
@.str547.c = internal global %nyx_string* null
@.str548 = private unnamed_addr constant [3 x i8] c"js\00"
@.str548.c = internal global %nyx_string* null
@.str549 = private unnamed_addr constant [8 x i8] c"NYX0105\00"
@.str549.c = internal global %nyx_string* null
@.str550 = private unnamed_addr constant [76 x i8] c"el único atributo de un extern es #[suspends], y solo sobre extern \22js\22 fn\00"
@.str550.c = internal global %nyx_string* null
@.str551 = private unnamed_addr constant [83 x i8] c"the only attribute allowed on an extern is #[suspends], and only on extern \22js\22 fn\00"
@.str551.c = internal global %nyx_string* null
@.str552 = private unnamed_addr constant [6 x i8] c"error\00"
@.str552.c = internal global %nyx_string* null
@.str553 = private unnamed_addr constant [10 x i8] c"extern_fn\00"
@.str553.c = internal global %nyx_string* null
@.str554 = private unnamed_addr constant [4 x i8] c"PUB\00"
@.str554.c = internal global %nyx_string* null
@.str555 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str555.c = internal global %nyx_string* null
@.str556 = private unnamed_addr constant [9 x i8] c"function\00"
@.str556.c = internal global %nyx_string* null
@.str557 = private unnamed_addr constant [7 x i8] c"export\00"
@.str557.c = internal global %nyx_string* null
@.str558 = private unnamed_addr constant [7 x i8] c"STRUCT\00"
@.str558.c = internal global %nyx_string* null
@.str559 = private unnamed_addr constant [7 x i8] c"struct\00"
@.str559.c = internal global %nyx_string* null
@.str560 = private unnamed_addr constant [7 x i8] c"export\00"
@.str560.c = internal global %nyx_string* null
@.str561 = private unnamed_addr constant [5 x i8] c"ENUM\00"
@.str561.c = internal global %nyx_string* null
@.str562 = private unnamed_addr constant [5 x i8] c"enum\00"
@.str562.c = internal global %nyx_string* null
@.str563 = private unnamed_addr constant [7 x i8] c"export\00"
@.str563.c = internal global %nyx_string* null
@.str564 = private unnamed_addr constant [8 x i8] c"NYX0105\00"
@.str564.c = internal global %nyx_string* null
@.str565 = private unnamed_addr constant [59 x i8] c"pub solo puede preceder fn, struct o enum tras un atributo\00"
@.str565.c = internal global %nyx_string* null
@.str566 = private unnamed_addr constant [59 x i8] c"pub can only precede fn, struct or enum after an attribute\00"
@.str566.c = internal global %nyx_string* null
@.str567 = private unnamed_addr constant [6 x i8] c"error\00"
@.str567.c = internal global %nyx_string* null
@.str568 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str568.c = internal global %nyx_string* null
@.str569 = private unnamed_addr constant [9 x i8] c"function\00"
@.str569.c = internal global %nyx_string* null
@.str570 = private unnamed_addr constant [7 x i8] c"STRUCT\00"
@.str570.c = internal global %nyx_string* null
@.str571 = private unnamed_addr constant [7 x i8] c"struct\00"
@.str571.c = internal global %nyx_string* null
@.str572 = private unnamed_addr constant [5 x i8] c"ENUM\00"
@.str572.c = internal global %nyx_string* null
@.str573 = private unnamed_addr constant [5 x i8] c"enum\00"
@.str573.c = internal global %nyx_string* null
@.str574 = private unnamed_addr constant [8 x i8] c"NYX0105\00"
@.str574.c = internal global %nyx_string* null
@.str575 = private unnamed_addr constant [77 x i8] c"#[...] solo soportado antes de fn, struct, enum, extern o pub fn/struct/enum\00"
@.str575.c = internal global %nyx_string* null
@.str576 = private unnamed_addr constant [80 x i8] c"#[...] is only supported before fn, struct, enum, extern, or pub fn/struct/enum\00"
@.str576.c = internal global %nyx_string* null
@.str577 = private unnamed_addr constant [6 x i8] c"error\00"
@.str577.c = internal global %nyx_string* null
@.str578 = private unnamed_addr constant [7 x i8] c"STRUCT\00"
@.str578.c = internal global %nyx_string* null
@.str579 = private unnamed_addr constant [5 x i8] c"ENUM\00"
@.str579.c = internal global %nyx_string* null
@.str580 = private unnamed_addr constant [6 x i8] c"MATCH\00"
@.str580.c = internal global %nyx_string* null
@.str581 = private unnamed_addr constant [3 x i8] c"IF\00"
@.str581.c = internal global %nyx_string* null
@.str582 = private unnamed_addr constant [6 x i8] c"WHILE\00"
@.str582.c = internal global %nyx_string* null
@.str583 = private unnamed_addr constant [4 x i8] c"FOR\00"
@.str583.c = internal global %nyx_string* null
@.str584 = private unnamed_addr constant [7 x i8] c"RETURN\00"
@.str584.c = internal global %nyx_string* null
@.str585 = private unnamed_addr constant [6 x i8] c"BREAK\00"
@.str585.c = internal global %nyx_string* null
@.str586 = private unnamed_addr constant [6 x i8] c"break\00"
@.str586.c = internal global %nyx_string* null
@.str587 = private unnamed_addr constant [9 x i8] c"CONTINUE\00"
@.str587.c = internal global %nyx_string* null
@.str588 = private unnamed_addr constant [9 x i8] c"continue\00"
@.str588.c = internal global %nyx_string* null
@.str589 = private unnamed_addr constant [7 x i8] c"EXPORT\00"
@.str589.c = internal global %nyx_string* null
@.str590 = private unnamed_addr constant [4 x i8] c"PUB\00"
@.str590.c = internal global %nyx_string* null
@.str591 = private unnamed_addr constant [7 x i8] c"IMPORT\00"
@.str591.c = internal global %nyx_string* null
@.str592 = private unnamed_addr constant [6 x i8] c"TRAIT\00"
@.str592.c = internal global %nyx_string* null
@.str593 = private unnamed_addr constant [5 x i8] c"IMPL\00"
@.str593.c = internal global %nyx_string* null
@.str594 = private unnamed_addr constant [5 x i8] c"TEST\00"
@.str594.c = internal global %nyx_string* null
@.str595 = private unnamed_addr constant [7 x i8] c"EXTERN\00"
@.str595.c = internal global %nyx_string* null
@.str596 = private unnamed_addr constant [7 x i8] c"UNSAFE\00"
@.str596.c = internal global %nyx_string* null
@.str597 = private unnamed_addr constant [13 x i8] c"unsafe_block\00"
@.str597.c = internal global %nyx_string* null
@.str598 = private unnamed_addr constant [7 x i8] c"STATIC\00"
@.str598.c = internal global %nyx_string* null
@.str599 = private unnamed_addr constant [7 x i8] c"MODULE\00"
@.str599.c = internal global %nyx_string* null
@.str600 = private unnamed_addr constant [6 x i8] c"DEFER\00"
@.str600.c = internal global %nyx_string* null
@.str601 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str601.c = internal global %nyx_string* null
@.str602 = private unnamed_addr constant [6 x i8] c"defer\00"
@.str602.c = internal global %nyx_string* null
@.str603 = private unnamed_addr constant [6 x i8] c"block\00"
@.str603.c = internal global %nyx_string* null
@.str604 = private unnamed_addr constant [6 x i8] c"defer\00"
@.str604.c = internal global %nyx_string* null
@.str605 = private unnamed_addr constant [4 x i8] c"TRY\00"
@.str605.c = internal global %nyx_string* null
@.str606 = private unnamed_addr constant [6 x i8] c"THROW\00"
@.str606.c = internal global %nyx_string* null
@.str607 = private unnamed_addr constant [6 x i8] c"ASYNC\00"
@.str607.c = internal global %nyx_string* null
@.str608 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str608.c = internal global %nyx_string* null
@.str609 = private unnamed_addr constant [5 x i8] c"type\00"
@.str609.c = internal global %nyx_string* null
@.str610 = private unnamed_addr constant [6 x i8] c"macro\00"
@.str610.c = internal global %nyx_string* null
@.str611 = private unnamed_addr constant [6 x i8] c"bench\00"
@.str611.c = internal global %nyx_string* null
@.str612 = private unnamed_addr constant [6 x i8] c"spawn\00"
@.str612.c = internal global %nyx_string* null
@.str613 = private unnamed_addr constant [7 x i8] c"select\00"
@.str613.c = internal global %nyx_string* null
@.str614 = private unnamed_addr constant [5 x i8] c"safe\00"
@.str614.c = internal global %nyx_string* null
@.str615 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str615.c = internal global %nyx_string* null
@.str616 = private unnamed_addr constant [9 x i8] c"function\00"
@.str616.c = internal global %nyx_string* null
@.str617 = private unnamed_addr constant [5 x i8] c"safe\00"
@.str617.c = internal global %nyx_string* null
@.str618 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str618.c = internal global %nyx_string* null
@.str619 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str619.c = internal global %nyx_string* null
@.str620 = private unnamed_addr constant [13 x i8] c"deref_assign\00"
@.str620.c = internal global %nyx_string* null
@.str621 = private unnamed_addr constant [6 x i8] c"deref\00"
@.str621.c = internal global %nyx_string* null
@.str622 = private unnamed_addr constant [9 x i8] c"__spawn_\00"
@.str622.c = internal global %nyx_string* null
@.str623 = private unnamed_addr constant [7 x i8] c"return\00"
@.str623.c = internal global %nyx_string* null
@.str624 = private unnamed_addr constant [8 x i8] c"integer\00"
@.str624.c = internal global %nyx_string* null
@.str625 = private unnamed_addr constant [9 x i8] c"function\00"
@.str625.c = internal global %nyx_string* null
@.str626 = private unnamed_addr constant [4 x i8] c"int\00"
@.str626.c = internal global %nyx_string* null
@.str627 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str627.c = internal global %nyx_string* null
@.str628 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str628.c = internal global %nyx_string* null
@.str629 = private unnamed_addr constant [11 x i8] c"__go_spawn\00"
@.str629.c = internal global %nyx_string* null
@.str630 = private unnamed_addr constant [5 x i8] c"call\00"
@.str630.c = internal global %nyx_string* null
@.str631 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str631.c = internal global %nyx_string* null
@.str632 = private unnamed_addr constant [6 x i8] c"block\00"
@.str632.c = internal global %nyx_string* null
@.str633 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str633.c = internal global %nyx_string* null
@.str634 = private unnamed_addr constant [8 x i8] c"default\00"
@.str634.c = internal global %nyx_string* null
@.str635 = private unnamed_addr constant [12 x i8] c"ARROW_MATCH\00"
@.str635.c = internal global %nyx_string* null
@.str636 = private unnamed_addr constant [5 x i8] c"case\00"
@.str636.c = internal global %nyx_string* null
@.str637 = private unnamed_addr constant [1 x i8] c"\00"
@.str637.c = internal global %nyx_string* null
@.str638 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str638.c = internal global %nyx_string* null
@.str639 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str639.c = internal global %nyx_string* null
@.str640 = private unnamed_addr constant [12 x i8] c"ARROW_MATCH\00"
@.str640.c = internal global %nyx_string* null
@.str641 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str641.c = internal global %nyx_string* null
@.str642 = private unnamed_addr constant [12 x i8] c"select_stmt\00"
@.str642.c = internal global %nyx_string* null
@.str643 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str643.c = internal global %nyx_string* null
@.str644 = private unnamed_addr constant [7 x i8] c"100000\00"
@.str644.c = internal global %nyx_string* null
@.str645 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str645.c = internal global %nyx_string* null
@.str646 = private unnamed_addr constant [11 x i8] c"bench_decl\00"
@.str646.c = internal global %nyx_string* null
@.str647 = private unnamed_addr constant [5 x i8] c"TEST\00"
@.str647.c = internal global %nyx_string* null
@.str648 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str648.c = internal global %nyx_string* null
@.str649 = private unnamed_addr constant [10 x i8] c"test_decl\00"
@.str649.c = internal global %nyx_string* null
@.str650 = private unnamed_addr constant [7 x i8] c"STATIC\00"
@.str650.c = internal global %nyx_string* null
@.str651 = private unnamed_addr constant [4 x i8] c"VAR\00"
@.str651.c = internal global %nyx_string* null
@.str652 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str652.c = internal global %nyx_string* null
@.str653 = private unnamed_addr constant [4 x i8] c"int\00"
@.str653.c = internal global %nyx_string* null
@.str654 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str654.c = internal global %nyx_string* null
@.str655 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str655.c = internal global %nyx_string* null
@.str656 = private unnamed_addr constant [11 x i8] c"static_var\00"
@.str656.c = internal global %nyx_string* null
@.str657 = private unnamed_addr constant [7 x i8] c"EXTERN\00"
@.str657.c = internal global %nyx_string* null
@.str658 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str658.c = internal global %nyx_string* null
@.str659 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str659.c = internal global %nyx_string* null
@.str660 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str660.c = internal global %nyx_string* null
@.str661 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str661.c = internal global %nyx_string* null
@.str662 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str662.c = internal global %nyx_string* null
@.str663 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str663.c = internal global %nyx_string* null
@.str664 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str664.c = internal global %nyx_string* null
@.str665 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str665.c = internal global %nyx_string* null
@.str666 = private unnamed_addr constant [5 x i8] c"void\00"
@.str666.c = internal global %nyx_string* null
@.str667 = private unnamed_addr constant [6 x i8] c"ARROW\00"
@.str667.c = internal global %nyx_string* null
@.str668 = private unnamed_addr constant [10 x i8] c"extern_fn\00"
@.str668.c = internal global %nyx_string* null
@.str669 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str669.c = internal global %nyx_string* null
@.str670 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str670.c = internal global %nyx_string* null
@.str671 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str671.c = internal global %nyx_string* null
@.str672 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str672.c = internal global %nyx_string* null
@.str673 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str673.c = internal global %nyx_string* null
@.str674 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str674.c = internal global %nyx_string* null
@.str675 = private unnamed_addr constant [12 x i8] c"ARROW_MATCH\00"
@.str675.c = internal global %nyx_string* null
@.str676 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str676.c = internal global %nyx_string* null
@.str677 = private unnamed_addr constant [1 x i8] c"\00"
@.str677.c = internal global %nyx_string* null
@.str678 = private unnamed_addr constant [2 x i8] c",\00"
@.str678.c = internal global %nyx_string* null
@.str679 = private unnamed_addr constant [10 x i8] c"macro_def\00"
@.str679.c = internal global %nyx_string* null
@.str680 = private unnamed_addr constant [4 x i8] c"NOT\00"
@.str680.c = internal global %nyx_string* null
@.str681 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str681.c = internal global %nyx_string* null
@.str682 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str682.c = internal global %nyx_string* null
@.str683 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str683.c = internal global %nyx_string* null
@.str684 = private unnamed_addr constant [1 x i8] c"\00"
@.str684.c = internal global %nyx_string* null
@.str685 = private unnamed_addr constant [2 x i8] c",\00"
@.str685.c = internal global %nyx_string* null
@.str686 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str686.c = internal global %nyx_string* null
@.str687 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str687.c = internal global %nyx_string* null
@.str688 = private unnamed_addr constant [5 x i8] c"PIPE\00"
@.str688.c = internal global %nyx_string* null
@.str689 = private unnamed_addr constant [5 x i8] c"PIPE\00"
@.str689.c = internal global %nyx_string* null
@.str690 = private unnamed_addr constant [9 x i8] c"enum_def\00"
@.str690.c = internal global %nyx_string* null
@.str691 = private unnamed_addr constant [11 x i8] c"type_alias\00"
@.str691.c = internal global %nyx_string* null
@.str692 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str692.c = internal global %nyx_string* null
@.str693 = private unnamed_addr constant [2 x i8] c"(\00"
@.str693.c = internal global %nyx_string* null
@.str694 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str694.c = internal global %nyx_string* null
@.str695 = private unnamed_addr constant [2 x i8] c",\00"
@.str695.c = internal global %nyx_string* null
@.str696 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str696.c = internal global %nyx_string* null
@.str697 = private unnamed_addr constant [2 x i8] c")\00"
@.str697.c = internal global %nyx_string* null
@.str698 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str698.c = internal global %nyx_string* null
@.str699 = private unnamed_addr constant [3 x i8] c"Fn\00"
@.str699.c = internal global %nyx_string* null
@.str700 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str700.c = internal global %nyx_string* null
@.str701 = private unnamed_addr constant [2 x i8] c"*\00"
@.str701.c = internal global %nyx_string* null
@.str702 = private unnamed_addr constant [4 x i8] c"AMP\00"
@.str702.c = internal global %nyx_string* null
@.str703 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str703.c = internal global %nyx_string* null
@.str704 = private unnamed_addr constant [1 x i8] c"'"
@.str705 = private unnamed_addr constant [4 x i8] c"mut\00"
@.str705.c = internal global %nyx_string* null
@.str706 = private unnamed_addr constant [6 x i8] c"&mut \00"
@.str706.c = internal global %nyx_string* null
@.str707 = private unnamed_addr constant [2 x i8] c"&\00"
@.str707.c = internal global %nyx_string* null
@.str708 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str708.c = internal global %nyx_string* null
@.str709 = private unnamed_addr constant [13 x i8] c"LEFT_BRACKET\00"
@.str709.c = internal global %nyx_string* null
@.str710 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str710.c = internal global %nyx_string* null
@.str711 = private unnamed_addr constant [7 x i8] c"NUMBER\00"
@.str711.c = internal global %nyx_string* null
@.str712 = private unnamed_addr constant [14 x i8] c"RIGHT_BRACKET\00"
@.str712.c = internal global %nyx_string* null
@.str713 = private unnamed_addr constant [2 x i8] c"[\00"
@.str713.c = internal global %nyx_string* null
@.str714 = private unnamed_addr constant [2 x i8] c":\00"
@.str714.c = internal global %nyx_string* null
@.str715 = private unnamed_addr constant [2 x i8] c"]\00"
@.str715.c = internal global %nyx_string* null
@.str716 = private unnamed_addr constant [4 x i8] c"DYN\00"
@.str716.c = internal global %nyx_string* null
@.str717 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str717.c = internal global %nyx_string* null
@.str718 = private unnamed_addr constant [5 x i8] c"dyn \00"
@.str718.c = internal global %nyx_string* null
@.str719 = private unnamed_addr constant [5 x i8] c"IMPL\00"
@.str719.c = internal global %nyx_string* null
@.str720 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str720.c = internal global %nyx_string* null
@.str721 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str721.c = internal global %nyx_string* null
@.str722 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str722.c = internal global %nyx_string* null
@.str723 = private unnamed_addr constant [2 x i8] c"+\00"
@.str723.c = internal global %nyx_string* null
@.str724 = private unnamed_addr constant [5 x i8] c"dyn \00"
@.str724.c = internal global %nyx_string* null
@.str725 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str725.c = internal global %nyx_string* null
@.str726 = private unnamed_addr constant [5 x i8] c"Self\00"
@.str726.c = internal global %nyx_string* null
@.str727 = private unnamed_addr constant [4 x i8] c"DOT\00"
@.str727.c = internal global %nyx_string* null
@.str728 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str728.c = internal global %nyx_string* null
@.str729 = private unnamed_addr constant [6 x i8] c"Self.\00"
@.str729.c = internal global %nyx_string* null
@.str730 = private unnamed_addr constant [3 x i8] c"Fn\00"
@.str730.c = internal global %nyx_string* null
@.str731 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str731.c = internal global %nyx_string* null
@.str732 = private unnamed_addr constant [4 x i8] c"Fn(\00"
@.str732.c = internal global %nyx_string* null
@.str733 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str733.c = internal global %nyx_string* null
@.str734 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str734.c = internal global %nyx_string* null
@.str735 = private unnamed_addr constant [2 x i8] c",\00"
@.str735.c = internal global %nyx_string* null
@.str736 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str736.c = internal global %nyx_string* null
@.str737 = private unnamed_addr constant [2 x i8] c")\00"
@.str737.c = internal global %nyx_string* null
@.str738 = private unnamed_addr constant [6 x i8] c"ARROW\00"
@.str738.c = internal global %nyx_string* null
@.str739 = private unnamed_addr constant [3 x i8] c"->\00"
@.str739.c = internal global %nyx_string* null
@.str740 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str740.c = internal global %nyx_string* null
@.str741 = private unnamed_addr constant [2 x i8] c"<\00"
@.str741.c = internal global %nyx_string* null
@.str742 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str742.c = internal global %nyx_string* null
@.str743 = private unnamed_addr constant [2 x i8] c",\00"
@.str743.c = internal global %nyx_string* null
@.str744 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str744.c = internal global %nyx_string* null
@.str745 = private unnamed_addr constant [12 x i8] c"SHIFT_RIGHT\00"
@.str745.c = internal global %nyx_string* null
@.str746 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str746.c = internal global %nyx_string* null
@.str747 = private unnamed_addr constant [2 x i8] c">\00"
@.str747.c = internal global %nyx_string* null
@.str748 = private unnamed_addr constant [4 x i8] c"VAR\00"
@.str748.c = internal global %nyx_string* null
@.str749 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str749.c = internal global %nyx_string* null
@.str750 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str750.c = internal global %nyx_string* null
@.str751 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str751.c = internal global %nyx_string* null
@.str752 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str752.c = internal global %nyx_string* null
@.str753 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str753.c = internal global %nyx_string* null
@.str754 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str754.c = internal global %nyx_string* null
@.str755 = private unnamed_addr constant [22 x i8] c"let_destructure_tuple\00"
@.str755.c = internal global %nyx_string* null
@.str756 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str756.c = internal global %nyx_string* null
@.str757 = private unnamed_addr constant [1 x i8] c"\00"
@.str757.c = internal global %nyx_string* null
@.str758 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str758.c = internal global %nyx_string* null
@.str759 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str759.c = internal global %nyx_string* null
@.str760 = private unnamed_addr constant [4 x i8] c"let\00"
@.str760.c = internal global %nyx_string* null
@.str761 = private unnamed_addr constant [6 x i8] c"CONST\00"
@.str761.c = internal global %nyx_string* null
@.str762 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str762.c = internal global %nyx_string* null
@.str763 = private unnamed_addr constant [1 x i8] c"\00"
@.str763.c = internal global %nyx_string* null
@.str764 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str764.c = internal global %nyx_string* null
@.str765 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str765.c = internal global %nyx_string* null
@.str766 = private unnamed_addr constant [6 x i8] c"const\00"
@.str766.c = internal global %nyx_string* null
@.str767 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str767.c = internal global %nyx_string* null
@.str768 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str768.c = internal global %nyx_string* null
@.str769 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str769.c = internal global %nyx_string* null
@.str770 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str770.c = internal global %nyx_string* null
@.str771 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str771.c = internal global %nyx_string* null
@.str772 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str772.c = internal global %nyx_string* null
@.str773 = private unnamed_addr constant [1 x i8] c"\00"
@.str773.c = internal global %nyx_string* null
@.str774 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str774.c = internal global %nyx_string* null
@.str775 = private unnamed_addr constant [1 x i8] c"\00"
@.str775.c = internal global %nyx_string* null
@.str776 = private unnamed_addr constant [6 x i8] c"ARROW\00"
@.str776.c = internal global %nyx_string* null
@.str777 = private unnamed_addr constant [9 x i8] c"async_fn\00"
@.str777.c = internal global %nyx_string* null
@.str778 = private unnamed_addr constant [1 x i8] c"\00"
@.str778.c = internal global %nyx_string* null
@.str779 = private unnamed_addr constant [13 x i8] c"__declline__\00"
@.str779.c = internal global %nyx_string* null
@.str780 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str780.c = internal global %nyx_string* null
@.str781 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str781.c = internal global %nyx_string* null
@.str782 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str782.c = internal global %nyx_string* null
@.str783 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str783.c = internal global %nyx_string* null
@.str784 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str784.c = internal global %nyx_string* null
@.str785 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str785.c = internal global %nyx_string* null
@.str786 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str786.c = internal global %nyx_string* null
@.str787 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str787.c = internal global %nyx_string* null
@.str788 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str788.c = internal global %nyx_string* null
@.str789 = private unnamed_addr constant [2 x i8] c"+\00"
@.str789.c = internal global %nyx_string* null
@.str790 = private unnamed_addr constant [2 x i8] c":\00"
@.str790.c = internal global %nyx_string* null
@.str791 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str791.c = internal global %nyx_string* null
@.str792 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str792.c = internal global %nyx_string* null
@.str793 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str793.c = internal global %nyx_string* null
@.str794 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str794.c = internal global %nyx_string* null
@.str795 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str795.c = internal global %nyx_string* null
@.str796 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str796.c = internal global %nyx_string* null
@.str797 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str797.c = internal global %nyx_string* null
@.str798 = private unnamed_addr constant [2 x i8] c"+\00"
@.str798.c = internal global %nyx_string* null
@.str799 = private unnamed_addr constant [2 x i8] c":\00"
@.str799.c = internal global %nyx_string* null
@.str800 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str800.c = internal global %nyx_string* null
@.str801 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str801.c = internal global %nyx_string* null
@.str802 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str802.c = internal global %nyx_string* null
@.str803 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str803.c = internal global %nyx_string* null
@.str804 = private unnamed_addr constant [9 x i8] c"ELLIPSIS\00"
@.str804.c = internal global %nyx_string* null
@.str805 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str805.c = internal global %nyx_string* null
@.str806 = private unnamed_addr constant [10 x i8] c"...String\00"
@.str806.c = internal global %nyx_string* null
@.str807 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str807.c = internal global %nyx_string* null
@.str808 = private unnamed_addr constant [4 x i8] c"...\00"
@.str808.c = internal global %nyx_string* null
@.str809 = private unnamed_addr constant [1 x i8] c"\00"
@.str809.c = internal global %nyx_string* null
@.str810 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str810.c = internal global %nyx_string* null
@.str811 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str811.c = internal global %nyx_string* null
@.str812 = private unnamed_addr constant [4 x i8] c"AMP\00"
@.str812.c = internal global %nyx_string* null
@.str813 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str813.c = internal global %nyx_string* null
@.str814 = private unnamed_addr constant [2 x i8] c"&\00"
@.str814.c = internal global %nyx_string* null
@.str815 = private unnamed_addr constant [4 x i8] c"mut\00"
@.str815.c = internal global %nyx_string* null
@.str816 = private unnamed_addr constant [5 x i8] c"&mut\00"
@.str816.c = internal global %nyx_string* null
@.str817 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str817.c = internal global %nyx_string* null
@.str818 = private unnamed_addr constant [1 x i8] c"\00"
@.str818.c = internal global %nyx_string* null
@.str819 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str819.c = internal global %nyx_string* null
@.str820 = private unnamed_addr constant [1 x i8] c"\00"
@.str820.c = internal global %nyx_string* null
@.str821 = private unnamed_addr constant [1 x i8] c"\00"
@.str821.c = internal global %nyx_string* null
@.str822 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str822.c = internal global %nyx_string* null
@.str823 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str823.c = internal global %nyx_string* null
@.str824 = private unnamed_addr constant [1 x i8] c"\00"
@.str824.c = internal global %nyx_string* null
@.str825 = private unnamed_addr constant [1 x i8] c"\00"
@.str825.c = internal global %nyx_string* null
@.str826 = private unnamed_addr constant [6 x i8] c"ARROW\00"
@.str826.c = internal global %nyx_string* null
@.str827 = private unnamed_addr constant [6 x i8] c"WHERE\00"
@.str827.c = internal global %nyx_string* null
@.str828 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str828.c = internal global %nyx_string* null
@.str829 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str829.c = internal global %nyx_string* null
@.str830 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str830.c = internal global %nyx_string* null
@.str831 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str831.c = internal global %nyx_string* null
@.str832 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str832.c = internal global %nyx_string* null
@.str833 = private unnamed_addr constant [2 x i8] c"+\00"
@.str833.c = internal global %nyx_string* null
@.str834 = private unnamed_addr constant [1 x i8] c":"
@.str835 = private unnamed_addr constant [2 x i8] c"+\00"
@.str835.c = internal global %nyx_string* null
@.str836 = private unnamed_addr constant [2 x i8] c":\00"
@.str836.c = internal global %nyx_string* null
@.str837 = private unnamed_addr constant [2 x i8] c":\00"
@.str837.c = internal global %nyx_string* null
@.str838 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str838.c = internal global %nyx_string* null
@.str839 = private unnamed_addr constant [10 x i8] c"_consumed\00"
@.str839.c = internal global %nyx_string* null
@.str840 = private unnamed_addr constant [10 x i8] c"_consumed\00"
@.str840.c = internal global %nyx_string* null
@.str841 = private unnamed_addr constant [9 x i8] c"function\00"
@.str841.c = internal global %nyx_string* null
@.str842 = private unnamed_addr constant [6 x i8] c"block\00"
@.str842.c = internal global %nyx_string* null
@.str843 = private unnamed_addr constant [1 x i8] c"\00"
@.str843.c = internal global %nyx_string* null
@.str844 = private unnamed_addr constant [10 x i8] c"__retlt__\00"
@.str844.c = internal global %nyx_string* null
@.str845 = private unnamed_addr constant [12 x i8] c"__paramlt__\00"
@.str845.c = internal global %nyx_string* null
@.str846 = private unnamed_addr constant [13 x i8] c"__declline__\00"
@.str846.c = internal global %nyx_string* null
@.str847 = private unnamed_addr constant [9 x i8] c"function\00"
@.str847.c = internal global %nyx_string* null
@.str848 = private unnamed_addr constant [1 x i8] c"\00"
@.str848.c = internal global %nyx_string* null
@.str849 = private unnamed_addr constant [10 x i8] c"__retlt__\00"
@.str849.c = internal global %nyx_string* null
@.str850 = private unnamed_addr constant [12 x i8] c"__paramlt__\00"
@.str850.c = internal global %nyx_string* null
@.str851 = private unnamed_addr constant [13 x i8] c"__declline__\00"
@.str851.c = internal global %nyx_string* null
@.str852 = private unnamed_addr constant [7 x i8] c"STRUCT\00"
@.str852.c = internal global %nyx_string* null
@.str853 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str853.c = internal global %nyx_string* null
@.str854 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str854.c = internal global %nyx_string* null
@.str855 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str855.c = internal global %nyx_string* null
@.str856 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str856.c = internal global %nyx_string* null
@.str857 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str857.c = internal global %nyx_string* null
@.str858 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str858.c = internal global %nyx_string* null
@.str859 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str859.c = internal global %nyx_string* null
@.str860 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str860.c = internal global %nyx_string* null
@.str861 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str861.c = internal global %nyx_string* null
@.str862 = private unnamed_addr constant [2 x i8] c"_\00"
@.str862.c = internal global %nyx_string* null
@.str863 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str863.c = internal global %nyx_string* null
@.str864 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str864.c = internal global %nyx_string* null
@.str865 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str865.c = internal global %nyx_string* null
@.str866 = private unnamed_addr constant [7 x i8] c"struct\00"
@.str866.c = internal global %nyx_string* null
@.str867 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str867.c = internal global %nyx_string* null
@.str868 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str868.c = internal global %nyx_string* null
@.str869 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str869.c = internal global %nyx_string* null
@.str870 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str870.c = internal global %nyx_string* null
@.str871 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str871.c = internal global %nyx_string* null
@.str872 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str872.c = internal global %nyx_string* null
@.str873 = private unnamed_addr constant [7 x i8] c"struct\00"
@.str873.c = internal global %nyx_string* null
@.str874 = private unnamed_addr constant [3 x i8] c"IF\00"
@.str874.c = internal global %nyx_string* null
@.str875 = private unnamed_addr constant [4 x i8] c"LET\00"
@.str875.c = internal global %nyx_string* null
@.str876 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str876.c = internal global %nyx_string* null
@.str877 = private unnamed_addr constant [5 x i8] c"ELSE\00"
@.str877.c = internal global %nyx_string* null
@.str878 = private unnamed_addr constant [3 x i8] c"IF\00"
@.str878.c = internal global %nyx_string* null
@.str879 = private unnamed_addr constant [3 x i8] c"if\00"
@.str879.c = internal global %nyx_string* null
@.str880 = private unnamed_addr constant [4 x i8] c"LET\00"
@.str880.c = internal global %nyx_string* null
@.str881 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str881.c = internal global %nyx_string* null
@.str882 = private unnamed_addr constant [6 x i8] c"block\00"
@.str882.c = internal global %nyx_string* null
@.str883 = private unnamed_addr constant [5 x i8] c"ELSE\00"
@.str883.c = internal global %nyx_string* null
@.str884 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str884.c = internal global %nyx_string* null
@.str885 = private unnamed_addr constant [10 x i8] c"match_arm\00"
@.str885.c = internal global %nyx_string* null
@.str886 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str886.c = internal global %nyx_string* null
@.str887 = private unnamed_addr constant [9 x i8] c"wildcard\00"
@.str887.c = internal global %nyx_string* null
@.str888 = private unnamed_addr constant [10 x i8] c"match_arm\00"
@.str888.c = internal global %nyx_string* null
@.str889 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str889.c = internal global %nyx_string* null
@.str890 = private unnamed_addr constant [6 x i8] c"match\00"
@.str890.c = internal global %nyx_string* null
@.str891 = private unnamed_addr constant [6 x i8] c"WHILE\00"
@.str891.c = internal global %nyx_string* null
@.str892 = private unnamed_addr constant [4 x i8] c"LET\00"
@.str892.c = internal global %nyx_string* null
@.str893 = private unnamed_addr constant [6 x i8] c"while\00"
@.str893.c = internal global %nyx_string* null
@.str894 = private unnamed_addr constant [4 x i8] c"LET\00"
@.str894.c = internal global %nyx_string* null
@.str895 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str895.c = internal global %nyx_string* null
@.str896 = private unnamed_addr constant [10 x i8] c"while_let\00"
@.str896.c = internal global %nyx_string* null
@.str897 = private unnamed_addr constant [4 x i8] c"FOR\00"
@.str897.c = internal global %nyx_string* null
@.str898 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str898.c = internal global %nyx_string* null
@.str899 = private unnamed_addr constant [1 x i8] c"\00"
@.str899.c = internal global %nyx_string* null
@.str900 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str900.c = internal global %nyx_string* null
@.str901 = private unnamed_addr constant [3 x i8] c"IN\00"
@.str901.c = internal global %nyx_string* null
@.str902 = private unnamed_addr constant [4 x i8] c"for\00"
@.str902.c = internal global %nyx_string* null
@.str903 = private unnamed_addr constant [7 x i8] c"RETURN\00"
@.str903.c = internal global %nyx_string* null
@.str904 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str904.c = internal global %nyx_string* null
@.str905 = private unnamed_addr constant [4 x i8] c"EOF\00"
@.str905.c = internal global %nyx_string* null
@.str906 = private unnamed_addr constant [4 x i8] c"LET\00"
@.str906.c = internal global %nyx_string* null
@.str907 = private unnamed_addr constant [4 x i8] c"VAR\00"
@.str907.c = internal global %nyx_string* null
@.str908 = private unnamed_addr constant [6 x i8] c"WHILE\00"
@.str908.c = internal global %nyx_string* null
@.str909 = private unnamed_addr constant [4 x i8] c"FOR\00"
@.str909.c = internal global %nyx_string* null
@.str910 = private unnamed_addr constant [7 x i8] c"RETURN\00"
@.str910.c = internal global %nyx_string* null
@.str911 = private unnamed_addr constant [8 x i8] c"integer\00"
@.str911.c = internal global %nyx_string* null
@.str912 = private unnamed_addr constant [7 x i8] c"return\00"
@.str912.c = internal global %nyx_string* null
@.str913 = private unnamed_addr constant [7 x i8] c"return\00"
@.str913.c = internal global %nyx_string* null
@.str914 = private unnamed_addr constant [7 x i8] c"EXPORT\00"
@.str914.c = internal global %nyx_string* null
@.str915 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str915.c = internal global %nyx_string* null
@.str916 = private unnamed_addr constant [7 x i8] c"export\00"
@.str916.c = internal global %nyx_string* null
@.str917 = private unnamed_addr constant [6 x i8] c"ASYNC\00"
@.str917.c = internal global %nyx_string* null
@.str918 = private unnamed_addr constant [7 x i8] c"export\00"
@.str918.c = internal global %nyx_string* null
@.str919 = private unnamed_addr constant [7 x i8] c"STRUCT\00"
@.str919.c = internal global %nyx_string* null
@.str920 = private unnamed_addr constant [7 x i8] c"export\00"
@.str920.c = internal global %nyx_string* null
@.str921 = private unnamed_addr constant [5 x i8] c"ENUM\00"
@.str921.c = internal global %nyx_string* null
@.str922 = private unnamed_addr constant [7 x i8] c"export\00"
@.str922.c = internal global %nyx_string* null
@.str923 = private unnamed_addr constant [6 x i8] c"TRAIT\00"
@.str923.c = internal global %nyx_string* null
@.str924 = private unnamed_addr constant [7 x i8] c"export\00"
@.str924.c = internal global %nyx_string* null
@.str925 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str925.c = internal global %nyx_string* null
@.str926 = private unnamed_addr constant [5 x i8] c"type\00"
@.str926.c = internal global %nyx_string* null
@.str927 = private unnamed_addr constant [7 x i8] c"export\00"
@.str927.c = internal global %nyx_string* null
@.str928 = private unnamed_addr constant [8 x i8] c"NYX0105\00"
@.str928.c = internal global %nyx_string* null
@.str929 = private unnamed_addr constant [58 x i8] c"export solo puede preceder fn, struct, enum, trait o type\00"
@.str929.c = internal global %nyx_string* null
@.str930 = private unnamed_addr constant [56 x i8] c"export can only precede fn, struct, enum, trait or type\00"
@.str930.c = internal global %nyx_string* null
@.str931 = private unnamed_addr constant [6 x i8] c"error\00"
@.str931.c = internal global %nyx_string* null
@.str932 = private unnamed_addr constant [7 x i8] c"IMPORT\00"
@.str932.c = internal global %nyx_string* null
@.str933 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str933.c = internal global %nyx_string* null
@.str934 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str934.c = internal global %nyx_string* null
@.str935 = private unnamed_addr constant [1 x i8] c"\00"
@.str935.c = internal global %nyx_string* null
@.str936 = private unnamed_addr constant [3 x i8] c"AS\00"
@.str936.c = internal global %nyx_string* null
@.str937 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str937.c = internal global %nyx_string* null
@.str938 = private unnamed_addr constant [14 x i8] c"import_module\00"
@.str938.c = internal global %nyx_string* null
@.str939 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str939.c = internal global %nyx_string* null
@.str940 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str940.c = internal global %nyx_string* null
@.str941 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str941.c = internal global %nyx_string* null
@.str942 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str942.c = internal global %nyx_string* null
@.str943 = private unnamed_addr constant [5 x i8] c"FROM\00"
@.str943.c = internal global %nyx_string* null
@.str944 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str944.c = internal global %nyx_string* null
@.str945 = private unnamed_addr constant [7 x i8] c"import\00"
@.str945.c = internal global %nyx_string* null
@.str946 = private unnamed_addr constant [4 x i8] c"PUB\00"
@.str946.c = internal global %nyx_string* null
@.str947 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str947.c = internal global %nyx_string* null
@.str948 = private unnamed_addr constant [7 x i8] c"export\00"
@.str948.c = internal global %nyx_string* null
@.str949 = private unnamed_addr constant [6 x i8] c"ASYNC\00"
@.str949.c = internal global %nyx_string* null
@.str950 = private unnamed_addr constant [7 x i8] c"export\00"
@.str950.c = internal global %nyx_string* null
@.str951 = private unnamed_addr constant [7 x i8] c"STRUCT\00"
@.str951.c = internal global %nyx_string* null
@.str952 = private unnamed_addr constant [7 x i8] c"export\00"
@.str952.c = internal global %nyx_string* null
@.str953 = private unnamed_addr constant [5 x i8] c"ENUM\00"
@.str953.c = internal global %nyx_string* null
@.str954 = private unnamed_addr constant [7 x i8] c"export\00"
@.str954.c = internal global %nyx_string* null
@.str955 = private unnamed_addr constant [6 x i8] c"TRAIT\00"
@.str955.c = internal global %nyx_string* null
@.str956 = private unnamed_addr constant [7 x i8] c"export\00"
@.str956.c = internal global %nyx_string* null
@.str957 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str957.c = internal global %nyx_string* null
@.str958 = private unnamed_addr constant [5 x i8] c"type\00"
@.str958.c = internal global %nyx_string* null
@.str959 = private unnamed_addr constant [7 x i8] c"export\00"
@.str959.c = internal global %nyx_string* null
@.str960 = private unnamed_addr constant [8 x i8] c"NYX0105\00"
@.str960.c = internal global %nyx_string* null
@.str961 = private unnamed_addr constant [55 x i8] c"pub solo puede preceder fn, struct, enum, trait o type\00"
@.str961.c = internal global %nyx_string* null
@.str962 = private unnamed_addr constant [53 x i8] c"pub can only precede fn, struct, enum, trait or type\00"
@.str962.c = internal global %nyx_string* null
@.str963 = private unnamed_addr constant [6 x i8] c"error\00"
@.str963.c = internal global %nyx_string* null
@.str964 = private unnamed_addr constant [7 x i8] c"MODULE\00"
@.str964.c = internal global %nyx_string* null
@.str965 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str965.c = internal global %nyx_string* null
@.str966 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str966.c = internal global %nyx_string* null
@.str967 = private unnamed_addr constant [1 x i8] c"\00"
@.str967.c = internal global %nyx_string* null
@.str968 = private unnamed_addr constant [7 x i8] c"STRING\00"
@.str968.c = internal global %nyx_string* null
@.str969 = private unnamed_addr constant [13 x i8] c"LEFT_BRACKET\00"
@.str969.c = internal global %nyx_string* null
@.str970 = private unnamed_addr constant [14 x i8] c"RIGHT_BRACKET\00"
@.str970.c = internal global %nyx_string* null
@.str971 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str971.c = internal global %nyx_string* null
@.str972 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str972.c = internal global %nyx_string* null
@.str973 = private unnamed_addr constant [14 x i8] c"RIGHT_BRACKET\00"
@.str973.c = internal global %nyx_string* null
@.str974 = private unnamed_addr constant [12 x i8] c"module_decl\00"
@.str974.c = internal global %nyx_string* null
@.str975 = private unnamed_addr constant [6 x i8] c"TRAIT\00"
@.str975.c = internal global %nyx_string* null
@.str976 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str976.c = internal global %nyx_string* null
@.str977 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str977.c = internal global %nyx_string* null
@.str978 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str978.c = internal global %nyx_string* null
@.str979 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str979.c = internal global %nyx_string* null
@.str980 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str980.c = internal global %nyx_string* null
@.str981 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str981.c = internal global %nyx_string* null
@.str982 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str982.c = internal global %nyx_string* null
@.str983 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str983.c = internal global %nyx_string* null
@.str984 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str984.c = internal global %nyx_string* null
@.str985 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str985.c = internal global %nyx_string* null
@.str986 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str986.c = internal global %nyx_string* null
@.str987 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str987.c = internal global %nyx_string* null
@.str988 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str988.c = internal global %nyx_string* null
@.str989 = private unnamed_addr constant [5 x i8] c"type\00"
@.str989.c = internal global %nyx_string* null
@.str990 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str990.c = internal global %nyx_string* null
@.str991 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str991.c = internal global %nyx_string* null
@.str992 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str992.c = internal global %nyx_string* null
@.str993 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str993.c = internal global %nyx_string* null
@.str994 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str994.c = internal global %nyx_string* null
@.str995 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str995.c = internal global %nyx_string* null
@.str996 = private unnamed_addr constant [15 x i8] c"__assoc_type__\00"
@.str996.c = internal global %nyx_string* null
@.str997 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str997.c = internal global %nyx_string* null
@.str998 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str998.c = internal global %nyx_string* null
@.str999 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str999.c = internal global %nyx_string* null
@.str1000 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str1000.c = internal global %nyx_string* null
@.str1001 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str1001.c = internal global %nyx_string* null
@.str1002 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str1002.c = internal global %nyx_string* null
@.str1003 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str1003.c = internal global %nyx_string* null
@.str1004 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str1004.c = internal global %nyx_string* null
@.str1005 = private unnamed_addr constant [1 x i8] c"\00"
@.str1005.c = internal global %nyx_string* null
@.str1006 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str1006.c = internal global %nyx_string* null
@.str1007 = private unnamed_addr constant [1 x i8] c"\00"
@.str1007.c = internal global %nyx_string* null
@.str1008 = private unnamed_addr constant [6 x i8] c"ARROW\00"
@.str1008.c = internal global %nyx_string* null
@.str1009 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str1009.c = internal global %nyx_string* null
@.str1010 = private unnamed_addr constant [10 x i8] c"trait_def\00"
@.str1010.c = internal global %nyx_string* null
@.str1011 = private unnamed_addr constant [5 x i8] c"IMPL\00"
@.str1011.c = internal global %nyx_string* null
@.str1012 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str1012.c = internal global %nyx_string* null
@.str1013 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str1013.c = internal global %nyx_string* null
@.str1014 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str1014.c = internal global %nyx_string* null
@.str1015 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str1015.c = internal global %nyx_string* null
@.str1016 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str1016.c = internal global %nyx_string* null
@.str1017 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str1017.c = internal global %nyx_string* null
@.str1018 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str1018.c = internal global %nyx_string* null
@.str1019 = private unnamed_addr constant [2 x i8] c"+\00"
@.str1019.c = internal global %nyx_string* null
@.str1020 = private unnamed_addr constant [2 x i8] c":\00"
@.str1020.c = internal global %nyx_string* null
@.str1021 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str1021.c = internal global %nyx_string* null
@.str1022 = private unnamed_addr constant [9 x i8] c"LIFETIME\00"
@.str1022.c = internal global %nyx_string* null
@.str1023 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str1023.c = internal global %nyx_string* null
@.str1024 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str1024.c = internal global %nyx_string* null
@.str1025 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str1025.c = internal global %nyx_string* null
@.str1026 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str1026.c = internal global %nyx_string* null
@.str1027 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str1027.c = internal global %nyx_string* null
@.str1028 = private unnamed_addr constant [2 x i8] c"+\00"
@.str1028.c = internal global %nyx_string* null
@.str1029 = private unnamed_addr constant [2 x i8] c":\00"
@.str1029.c = internal global %nyx_string* null
@.str1030 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str1030.c = internal global %nyx_string* null
@.str1031 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str1031.c = internal global %nyx_string* null
@.str1032 = private unnamed_addr constant [4 x i8] c"FOR\00"
@.str1032.c = internal global %nyx_string* null
@.str1033 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str1033.c = internal global %nyx_string* null
@.str1034 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str1034.c = internal global %nyx_string* null
@.str1035 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str1035.c = internal global %nyx_string* null
@.str1036 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str1036.c = internal global %nyx_string* null
@.str1037 = private unnamed_addr constant [5 x i8] c"type\00"
@.str1037.c = internal global %nyx_string* null
@.str1038 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str1038.c = internal global %nyx_string* null
@.str1039 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str1039.c = internal global %nyx_string* null
@.str1040 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str1040.c = internal global %nyx_string* null
@.str1041 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str1041.c = internal global %nyx_string* null
@.str1042 = private unnamed_addr constant [11 x i8] c"impl_trait\00"
@.str1042.c = internal global %nyx_string* null
@.str1043 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str1043.c = internal global %nyx_string* null
@.str1044 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str1044.c = internal global %nyx_string* null
@.str1045 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str1045.c = internal global %nyx_string* null
@.str1046 = private unnamed_addr constant [6 x i8] c"COMMA\00"
@.str1046.c = internal global %nyx_string* null
@.str1047 = private unnamed_addr constant [4 x i8] c"int\00"
@.str1047.c = internal global %nyx_string* null
@.str1048 = private unnamed_addr constant [6 x i8] c"float\00"
@.str1048.c = internal global %nyx_string* null
@.str1049 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str1049.c = internal global %nyx_string* null
@.str1050 = private unnamed_addr constant [7 x i8] c"String\00"
@.str1050.c = internal global %nyx_string* null
@.str1051 = private unnamed_addr constant [5 x i8] c"char\00"
@.str1051.c = internal global %nyx_string* null
@.str1052 = private unnamed_addr constant [3 x i8] c"i8\00"
@.str1052.c = internal global %nyx_string* null
@.str1053 = private unnamed_addr constant [4 x i8] c"i16\00"
@.str1053.c = internal global %nyx_string* null
@.str1054 = private unnamed_addr constant [4 x i8] c"i32\00"
@.str1054.c = internal global %nyx_string* null
@.str1055 = private unnamed_addr constant [3 x i8] c"u8\00"
@.str1055.c = internal global %nyx_string* null
@.str1056 = private unnamed_addr constant [4 x i8] c"u16\00"
@.str1056.c = internal global %nyx_string* null
@.str1057 = private unnamed_addr constant [4 x i8] c"u32\00"
@.str1057.c = internal global %nyx_string* null
@.str1058 = private unnamed_addr constant [4 x i8] c"u64\00"
@.str1058.c = internal global %nyx_string* null
@.str1059 = private unnamed_addr constant [6 x i8] c"usize\00"
@.str1059.c = internal global %nyx_string* null
@.str1060 = private unnamed_addr constant [4 x i8] c"f32\00"
@.str1060.c = internal global %nyx_string* null
@.str1061 = private unnamed_addr constant [6 x i8] c"Array\00"
@.str1061.c = internal global %nyx_string* null
@.str1062 = private unnamed_addr constant [4 x i8] c"Map\00"
@.str1062.c = internal global %nyx_string* null
@.str1063 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str1063.c = internal global %nyx_string* null
@.str1064 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str1064.c = internal global %nyx_string* null
@.str1065 = private unnamed_addr constant [5 x i8] c"impl\00"
@.str1065.c = internal global %nyx_string* null
@.str1066 = private unnamed_addr constant [6 x i8] c"CATCH\00"
@.str1066.c = internal global %nyx_string* null
@.str1067 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str1067.c = internal global %nyx_string* null
@.str1068 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str1068.c = internal global %nyx_string* null
@.str1069 = private unnamed_addr constant [1 x i8] c"\00"
@.str1069.c = internal global %nyx_string* null
@.str1070 = private unnamed_addr constant [6 x i8] c"COLON\00"
@.str1070.c = internal global %nyx_string* null
@.str1071 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str1071.c = internal global %nyx_string* null
@.str1072 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00"
@.str1072.c = internal global %nyx_string* null
@.str1073 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str1073.c = internal global %nyx_string* null
@.str1074 = private unnamed_addr constant [10 x i8] c"try_catch\00"
@.str1074.c = internal global %nyx_string* null
@.str1075 = private unnamed_addr constant [11 x i8] c"LEFT_PAREN\00"
@.str1075.c = internal global %nyx_string* null
@.str1076 = private unnamed_addr constant [12 x i8] c"RIGHT_PAREN\00"
@.str1076.c = internal global %nyx_string* null
@.str1077 = private unnamed_addr constant [6 x i8] c"throw\00"
@.str1077.c = internal global %nyx_string* null
@.str1078 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str1078.c = internal global %nyx_string* null
@.str1079 = private unnamed_addr constant [4 x i8] c"EOF\00"
@.str1079.c = internal global %nyx_string* null
@.str1080 = private unnamed_addr constant [8 x i8] c"NYX0104\00"
@.str1080.c = internal global %nyx_string* null
@.str1081 = private unnamed_addr constant [47 x i8] c"fin de archivo inesperado: falta '}' de cierre\00"
@.str1081.c = internal global %nyx_string* null
@.str1082 = private unnamed_addr constant [44 x i8] c"unexpected end of file: missing closing '}'\00"
@.str1082.c = internal global %nyx_string* null
@.str1083 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str1083.c = internal global %nyx_string* null
@.str1084 = private unnamed_addr constant [10 x i8] c"_consumed\00"
@.str1084.c = internal global %nyx_string* null
@.str1085 = private unnamed_addr constant [10 x i8] c"_consumed\00"
@.str1085.c = internal global %nyx_string* null
@.str1086 = private unnamed_addr constant [6 x i8] c"block\00"
@.str1086.c = internal global %nyx_string* null
@.str1087 = private unnamed_addr constant [11 x i8] c"LEFT_BRACE\00"
@.str1087.c = internal global %nyx_string* null
@.str1088 = private unnamed_addr constant [4 x i8] c"EOF\00"
@.str1088.c = internal global %nyx_string* null
@.str1089 = private unnamed_addr constant [8 x i8] c"NYX0104\00"
@.str1089.c = internal global %nyx_string* null
@.str1090 = private unnamed_addr constant [47 x i8] c"fin de archivo inesperado: falta '}' de cierre\00"
@.str1090.c = internal global %nyx_string* null
@.str1091 = private unnamed_addr constant [44 x i8] c"unexpected end of file: missing closing '}'\00"
@.str1091.c = internal global %nyx_string* null
@.str1092 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str1092.c = internal global %nyx_string* null
@.str1093 = private unnamed_addr constant [10 x i8] c"_consumed\00"
@.str1093.c = internal global %nyx_string* null
@.str1094 = private unnamed_addr constant [10 x i8] c"_consumed\00"
@.str1094.c = internal global %nyx_string* null
@.str1095 = private unnamed_addr constant [6 x i8] c"block\00"
@.str1095.c = internal global %nyx_string* null
@.str1096 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str1096.c = internal global %nyx_string* null
@.str1097 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str1097.c = internal global %nyx_string* null
@.str1098 = private unnamed_addr constant [7 x i8] c"assign\00"
@.str1098.c = internal global %nyx_string* null
@.str1099 = private unnamed_addr constant [1 x i8] c"\00"
@.str1099.c = internal global %nyx_string* null
@.str1100 = private unnamed_addr constant [12 x i8] c"PLUS_EQUALS\00"
@.str1100.c = internal global %nyx_string* null
@.str1101 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str1101.c = internal global %nyx_string* null
@.str1102 = private unnamed_addr constant [13 x i8] c"MINUS_EQUALS\00"
@.str1102.c = internal global %nyx_string* null
@.str1103 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str1103.c = internal global %nyx_string* null
@.str1104 = private unnamed_addr constant [12 x i8] c"STAR_EQUALS\00"
@.str1104.c = internal global %nyx_string* null
@.str1105 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str1105.c = internal global %nyx_string* null
@.str1106 = private unnamed_addr constant [13 x i8] c"SLASH_EQUALS\00"
@.str1106.c = internal global %nyx_string* null
@.str1107 = private unnamed_addr constant [6 x i8] c"SLASH\00"
@.str1107.c = internal global %nyx_string* null
@.str1108 = private unnamed_addr constant [15 x i8] c"PERCENT_EQUALS\00"
@.str1108.c = internal global %nyx_string* null
@.str1109 = private unnamed_addr constant [8 x i8] c"PERCENT\00"
@.str1109.c = internal global %nyx_string* null
@.str1110 = private unnamed_addr constant [11 x i8] c"AMP_EQUALS\00"
@.str1110.c = internal global %nyx_string* null
@.str1111 = private unnamed_addr constant [4 x i8] c"AMP\00"
@.str1111.c = internal global %nyx_string* null
@.str1112 = private unnamed_addr constant [12 x i8] c"PIPE_EQUALS\00"
@.str1112.c = internal global %nyx_string* null
@.str1113 = private unnamed_addr constant [5 x i8] c"PIPE\00"
@.str1113.c = internal global %nyx_string* null
@.str1114 = private unnamed_addr constant [13 x i8] c"CARET_EQUALS\00"
@.str1114.c = internal global %nyx_string* null
@.str1115 = private unnamed_addr constant [6 x i8] c"CARET\00"
@.str1115.c = internal global %nyx_string* null
@.str1116 = private unnamed_addr constant [18 x i8] c"SHIFT_LEFT_EQUALS\00"
@.str1116.c = internal global %nyx_string* null
@.str1117 = private unnamed_addr constant [11 x i8] c"SHIFT_LEFT\00"
@.str1117.c = internal global %nyx_string* null
@.str1118 = private unnamed_addr constant [19 x i8] c"SHIFT_RIGHT_EQUALS\00"
@.str1118.c = internal global %nyx_string* null
@.str1119 = private unnamed_addr constant [12 x i8] c"SHIFT_RIGHT\00"
@.str1119.c = internal global %nyx_string* null
@.str1120 = private unnamed_addr constant [1 x i8] c"\00"
@.str1120.c = internal global %nyx_string* null
@.str1121 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str1121.c = internal global %nyx_string* null
@.str1122 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str1122.c = internal global %nyx_string* null
@.str1123 = private unnamed_addr constant [7 x i8] c"assign\00"
@.str1123.c = internal global %nyx_string* null
@.str1124 = private unnamed_addr constant [6 x i8] c"deref\00"
@.str1124.c = internal global %nyx_string* null
@.str1125 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str1125.c = internal global %nyx_string* null
@.str1126 = private unnamed_addr constant [13 x i8] c"deref_assign\00"
@.str1126.c = internal global %nyx_string* null
@.str1127 = private unnamed_addr constant [6 x i8] c"index\00"
@.str1127.c = internal global %nyx_string* null
@.str1128 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str1128.c = internal global %nyx_string* null
@.str1129 = private unnamed_addr constant [13 x i8] c"index_assign\00"
@.str1129.c = internal global %nyx_string* null
@.str1130 = private unnamed_addr constant [13 x i8] c"field_access\00"
@.str1130.c = internal global %nyx_string* null
@.str1131 = private unnamed_addr constant [7 x i8] c"EQUALS\00"
@.str1131.c = internal global %nyx_string* null
@.str1132 = private unnamed_addr constant [13 x i8] c"field_assign\00"
@.str1132.c = internal global %nyx_string* null
@.str1133 = private unnamed_addr constant [4 x i8] c"EOF\00"
@.str1133.c = internal global %nyx_string* null
@.str1134 = private unnamed_addr constant [3 x i8] c"FN\00"
@.str1134.c = internal global %nyx_string* null
@.str1135 = private unnamed_addr constant [4 x i8] c"LET\00"
@.str1135.c = internal global %nyx_string* null
@.str1136 = private unnamed_addr constant [4 x i8] c"VAR\00"
@.str1136.c = internal global %nyx_string* null
@.str1137 = private unnamed_addr constant [6 x i8] c"CONST\00"
@.str1137.c = internal global %nyx_string* null
@.str1138 = private unnamed_addr constant [7 x i8] c"STRUCT\00"
@.str1138.c = internal global %nyx_string* null
@.str1139 = private unnamed_addr constant [5 x i8] c"ENUM\00"
@.str1139.c = internal global %nyx_string* null
@.str1140 = private unnamed_addr constant [3 x i8] c"IF\00"
@.str1140.c = internal global %nyx_string* null
@.str1141 = private unnamed_addr constant [6 x i8] c"WHILE\00"
@.str1141.c = internal global %nyx_string* null
@.str1142 = private unnamed_addr constant [4 x i8] c"FOR\00"
@.str1142.c = internal global %nyx_string* null
@.str1143 = private unnamed_addr constant [7 x i8] c"RETURN\00"
@.str1143.c = internal global %nyx_string* null
@.str1144 = private unnamed_addr constant [7 x i8] c"IMPORT\00"
@.str1144.c = internal global %nyx_string* null
@.str1145 = private unnamed_addr constant [7 x i8] c"EXPORT\00"
@.str1145.c = internal global %nyx_string* null
@.str1146 = private unnamed_addr constant [6 x i8] c"TRAIT\00"
@.str1146.c = internal global %nyx_string* null
@.str1147 = private unnamed_addr constant [5 x i8] c"IMPL\00"
@.str1147.c = internal global %nyx_string* null
@.str1148 = private unnamed_addr constant [6 x i8] c"MATCH\00"
@.str1148.c = internal global %nyx_string* null
@.str1149 = private unnamed_addr constant [12 x i8] c"RIGHT_BRACE\00"
@.str1149.c = internal global %nyx_string* null
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
declare i64 @nyx_slot_eq({ i64, i8* }*, i64, { i64, i8* }*, i64)
declare i64 @nyx_array_get_checked({ i64, i8* }*, i64, i64)
declare i64 @nyx_slot_as_array_checked({ i64, i8* }*, i64)
declare i64 @nyx_slot_as_value_checked({ i64, i8* }*, i64, i8*)
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

%SharedEnv_parse = type { { i64, i8* }*, %nyx_string*, { i64, i8* }*, i64, i64, i64, i64, i64, i64, %nyx_string*, i64, { i64, i8* }*, { i64, i8* }*, { i64, i8* }*, { i64, i8* }*, { i64, i8* }*, { i64, i8* }*, { i64, i8* }*, { i64, i8* }*, { i64, i8* }*, i1, i64, i64, i64, { i64, i8* }*, { i64, i8* }*, i64, { i64, i8* }*, %nyx_string*, i64 }
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
  %50 = getelementptr [1 x i8], [1 x i8]* @.str2, i32 0, i32 0
  %51 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str2.c, i8* %50, i64 0)
  %52 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 9
  store %nyx_string* %51, %nyx_string** %52
  %53 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 10
  store i64 0, i64* %53
  %54 = getelementptr [9 x i8], [9 x i8]* @.str3, i32 0, i32 0
  %55 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str3.c, i8* %54, i64 8)
  %56 = call i8* @nyx_string_to_cstr(%nyx_string* %55)
  %57 = call %nyx_string* @nyx_getenv(i8* %56)
  %58 = getelementptr [5 x i8], [5 x i8]* @.str4, i32 0, i32 0
  %59 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str4.c, i8* %58, i64 4)
  %60 = call i1 @nyx_string_equals(%nyx_string* %57, %nyx_string* %59)
  br i1 %60, label %then3, label %else4
then3:
  store i64 1, i64* %53
  br label %merge5
else4:
  br label %merge5
merge5:
  %61 = call { i64, i8* }* @nyx_array_new_ptr()
  %62 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 11
  store { i64, i8* }* %61, { i64, i8* }** %62
  %63 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %63, i64 0, i64 1)
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
  %72 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 16
  store { i64, i8* }* %71, { i64, i8* }** %72
  %73 = call { i64, i8* }* @nyx_array_new_ptr()
  %74 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 17
  store { i64, i8* }* %73, { i64, i8* }** %74
  %75 = call { i64, i8* }* @nyx_array_new_ptr()
  %76 = getelementptr [1 x i8], [1 x i8]* @.str5, i32 0, i32 0
  %77 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str5.c, i8* %76, i64 0)
  %78 = ptrtoint %nyx_string* %77 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %75, i64 %78, i64 2)
  %79 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 18
  store { i64, i8* }* %75, { i64, i8* }** %79
  %80 = call { i64, i8* }* @nyx_array_new_ptr()
  %81 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 19
  store { i64, i8* }* %80, { i64, i8* }** %81
  %82 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 20
  store i1 0, i1* %82
  %83 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 21
  store i64 0, i64* %83
  %84 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 22
  store i64 0, i64* %84
  %85 = call i8* @llvm.stacksave()
  br label %while_cond6
while_cond6:
  %86 = load i1, i1* %82
  %87 = xor i1 %86, true
  br i1 %87, label %while_body7, label %while_end8
while_body7:
  call void @llvm.stackrestore(i8* %85)
  %88 = load i64, i64* %83
  %89 = add i64 %88, 1
  store i64 %89, i64* %83
  %90 = load i64, i64* %83
  %91 = load { i64, i8* }*, { i64, i8* }** %36
  %92 = call i64 @nyx_array_length({ i64, i8* }* %91)
  %93 = add i64 %92, 1
  %94 = icmp sgt i64 %90, %93
  br i1 %94, label %then9, label %else10
then9:
  %95 = getelementptr [73 x i8], [73 x i8]* @.str6, i32 0, i32 0
  %96 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str6.c, i8* %95, i64 72)
  %97 = getelementptr [67 x i8], [67 x i8]* @.str7, i32 0, i32 0
  %98 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str7.c, i8* %97, i64 66)
  %99 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %32, %nyx_string* %96, %nyx_string* %98)
  %100 = load i64, i64* %37
  %101 = call %nyx_string* @nyx_string_from_int(i64 %100)
  %102 = call %nyx_string* @nyx_string_concat(%nyx_string* %99, %nyx_string* %101)
  %103 = call i8* @nyx_string_to_cstr(%nyx_string* %102)
  call void @nyx_print_string(i8* %103)
  call void @nyx_exit(i64 1)
  br label %merge11
else10:
  br label %merge11
merge11:
  %104 = load i64, i64* %41
  %105 = icmp eq i64 %104, 1
  br i1 %105, label %then12, label %else13
then12:
  store i1 1, i1* %82
  br label %merge14
else13:
  br label %merge14
merge14:
  %106 = getelementptr [4 x i8], [4 x i8]* @.str8, i32 0, i32 0
  %107 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str8.c, i8* %106, i64 3)
  %108 = call i1 @parse__check(%SharedEnv_parse* %32, %nyx_string* %107)
  br i1 %108, label %then15, label %else16
then15:
  store i1 1, i1* %82
  br label %merge17
else16:
  %109 = load i1, i1* %82
  %110 = xor i1 %109, true
  br i1 %110, label %then18, label %else19
then18:
  %111 = load i64, i64* %37
  %112 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 23
  store i64 %111, i64* %112
  %113 = call { i64, i8* }* @parse__parse_statement(%SharedEnv_parse* %32)
  %114 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 24
  store { i64, i8* }* %113, { i64, i8* }** %114
  %115 = load { i64, i8* }*, { i64, i8* }** %114
  %116 = call %nyx_string* @astnode_get_type({ i64, i8* }* %115)
  %117 = getelementptr [6 x i8], [6 x i8]* @.str9, i32 0, i32 0
  %118 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str9.c, i8* %117, i64 5)
  %119 = call i1 @nyx_string_equals(%nyx_string* %116, %nyx_string* %118)
  br i1 %119, label %then21, label %else22
then21:
  %120 = load i64, i64* %84
  %121 = add i64 %120, 1
  store i64 %121, i64* %84
  %122 = call i64 @parse__synchronize(%SharedEnv_parse* %32)
  %123 = load i64, i64* %37
  %124 = load i64, i64* %112
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %then24, label %else25
then24:
  %126 = call %Token @parse__advance(%SharedEnv_parse* %32)
  br label %merge26
else25:
  br label %merge26
merge26:
  br label %merge23
else22:
  %127 = load i64, i64* %37
  %128 = load i64, i64* %112
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %then27, label %else28
then27:
  %130 = load i64, i64* %84
  %131 = add i64 %130, 1
  store i64 %131, i64* %84
  %132 = call i64 @parse__synchronize(%SharedEnv_parse* %32)
  %133 = load i64, i64* %37
  %134 = load i64, i64* %112
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %then30, label %else31
then30:
  %136 = call %Token @parse__advance(%SharedEnv_parse* %32)
  br label %merge32
else31:
  br label %merge32
merge32:
  br label %merge29
else28:
  %137 = load { i64, i8* }*, { i64, i8* }** %81
  %138 = load { i64, i8* }*, { i64, i8* }** %114
  %139 = ptrtoint { i64, i8* }* %138 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %137, i64 %139, i64 5)
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
  %140 = load i64, i64* %84
  %141 = icmp sgt i64 %140, 0
  br i1 %141, label %then33, label %else34
then33:
  %142 = getelementptr [9 x i8], [9 x i8]* @.str10, i32 0, i32 0
  %143 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str10.c, i8* %142, i64 8)
  %144 = load i64, i64* %84
  %145 = call %nyx_string* @nyx_string_from_int(i64 %144)
  %146 = call %nyx_string* @nyx_string_concat(%nyx_string* %143, %nyx_string* %145)
  %147 = getelementptr [16 x i8], [16 x i8]* @.str11, i32 0, i32 0
  %148 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str11.c, i8* %147, i64 15)
  %149 = call %nyx_string* @nyx_string_concat(%nyx_string* %146, %nyx_string* %148)
  %150 = call i8* @nyx_string_to_cstr(%nyx_string* %149)
  call void @nyx_print_string(i8* %150)
  br label %merge35
else34:
  br label %merge35
merge35:
  %151 = load { i64, i8* }*, { i64, i8* }** %62
  %152 = call i64 @nyx_array_length({ i64, i8* }* %151)
  %153 = icmp sgt i64 %152, 0
  br i1 %153, label %then36, label %else37
then36:
  %154 = call { i64, i8* }* @nyx_array_new_ptr()
  %155 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 25
  store { i64, i8* }* %154, { i64, i8* }** %155
  %156 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 26
  store i64 0, i64* %156
  %157 = call i8* @llvm.stacksave()
  br label %while_cond39
while_cond39:
  %158 = load i64, i64* %156
  %159 = load { i64, i8* }*, { i64, i8* }** %62
  %160 = call i64 @nyx_array_length({ i64, i8* }* %159)
  %161 = icmp slt i64 %158, %160
  br i1 %161, label %while_body40, label %while_end41
while_body40:
  call void @llvm.stackrestore(i8* %157)
  %162 = load { i64, i8* }*, { i64, i8* }** %62
  %163 = load i64, i64* %156
  %164 = call i64 @nyx_array_get({ i64, i8* }* %162, i64 %163)
  %165 = inttoptr i64 %164 to { i64, i8* }*
  %166 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 27
  store { i64, i8* }* %165, { i64, i8* }** %166
  %167 = load { i64, i8* }*, { i64, i8* }** %166
  %168 = call i64 @nyx_array_get_checked({ i64, i8* }* %167, i64 0, i64 2)
  %169 = inttoptr i64 %168 to %nyx_string*
  %170 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 28
  store %nyx_string* %169, %nyx_string** %170
  %171 = load %nyx_string*, %nyx_string** %170
  %172 = getelementptr [10 x i8], [10 x i8]* @.str12, i32 0, i32 0
  %173 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str12.c, i8* %172, i64 9)
  %174 = call i1 @nyx_string_equals(%nyx_string* %171, %nyx_string* %173)
  %175 = xor i1 %174, true
  br i1 %175, label %then42, label %else43
then42:
  %176 = load { i64, i8* }*, { i64, i8* }** %155
  %177 = load { i64, i8* }*, { i64, i8* }** %62
  %178 = load i64, i64* %156
  %179 = call i64 @nyx_array_get({ i64, i8* }* %177, i64 %178)
  %180 = load { i64, i8* }*, { i64, i8* }** %62
  %181 = load i64, i64* %156
  %182 = call i64 @nyx_array_get_tag({ i64, i8* }* %180, i64 %181)
  call void @nyx_array_push_tagged({ i64, i8* }* %176, i64 %179, i64 %182)
  br label %merge44
else43:
  br label %merge44
merge44:
  %183 = load i64, i64* %156
  %184 = add i64 %183, 1
  store i64 %184, i64* %156
  br label %while_cond39
while_end41:
  %185 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %32, i32 0, i32 29
  store i64 0, i64* %185
  %186 = call i8* @llvm.stacksave()
  br label %while_cond45
while_cond45:
  %187 = load i64, i64* %185
  %188 = load { i64, i8* }*, { i64, i8* }** %81
  %189 = call i64 @nyx_array_length({ i64, i8* }* %188)
  %190 = icmp slt i64 %187, %189
  br i1 %190, label %while_body46, label %while_end47
while_body46:
  call void @llvm.stackrestore(i8* %186)
  %191 = load { i64, i8* }*, { i64, i8* }** %155
  %192 = load { i64, i8* }*, { i64, i8* }** %81
  %193 = load i64, i64* %185
  %194 = call i64 @nyx_array_get({ i64, i8* }* %192, i64 %193)
  %195 = load { i64, i8* }*, { i64, i8* }** %81
  %196 = load i64, i64* %185
  %197 = call i64 @nyx_array_get_tag({ i64, i8* }* %195, i64 %196)
  call void @nyx_array_push_tagged({ i64, i8* }* %191, i64 %194, i64 %197)
  %198 = load i64, i64* %185
  %199 = add i64 %198, 1
  store i64 %199, i64* %185
  br label %while_cond45
while_end47:
  %200 = getelementptr [6 x i8], [6 x i8]* @.str13, i32 0, i32 0
  %201 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str13.c, i8* %200, i64 5)
  %202 = call { i64, i8* }* @nyx_array_new_ptr()
  %203 = load { i64, i8* }*, { i64, i8* }** %155
  %204 = ptrtoint { i64, i8* }* %203 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %202, i64 %204, i64 5)
  %205 = call { i64, i8* }* @make_astnode(%nyx_string* %201, { i64, i8* }* %202)
  ret { i64, i8* }* %205
else37:
  br label %merge38
merge38:
  %206 = getelementptr [6 x i8], [6 x i8]* @.str14, i32 0, i32 0
  %207 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str14.c, i8* %206, i64 5)
  %208 = call { i64, i8* }* @nyx_array_new_ptr()
  %209 = load { i64, i8* }*, { i64, i8* }** %81
  %210 = ptrtoint { i64, i8* }* %209 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %208, i64 %210, i64 5)
  %211 = call { i64, i8* }* @make_astnode(%nyx_string* %207, { i64, i8* }* %208)
  ret { i64, i8* }* %211
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = load i64, i64* %4
  %32 = load { i64, i8* }*, { i64, i8* }** %3
  %33 = call i64 @nyx_array_length({ i64, i8* }* %32)
  %34 = icmp slt i64 %31, %33
  br i1 %34, label %then0, label %else1
then0:
  %35 = load { i64, i8* }*, { i64, i8* }** %3
  %36 = load i64, i64* %4
  %37 = getelementptr [6 x i8], [6 x i8]* @.slotT15, i32 0, i32 0
  %38 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %35, i64 %36, i8* %37)
  %39 = inttoptr i64 %38 to %Token*
  %40 = load %Token, %Token* %39
  ret %Token %40
else1:
  br label %merge2
merge2:
  %41 = getelementptr %Token, %Token* null, i32 1
  %42 = ptrtoint %Token* %41 to i64
  %43 = call i8* @GC_malloc(i64 %42)
  %44 = bitcast i8* %43 to %Token*
  %45 = getelementptr [4 x i8], [4 x i8]* @.str16, i32 0, i32 0
  %46 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str16.c, i8* %45, i64 3)
  %47 = getelementptr %Token, %Token* %44, i32 0, i32 0
  store %nyx_string* %46, %nyx_string** %47
  %48 = getelementptr [1 x i8], [1 x i8]* @.str17, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str17.c, i8* %48, i64 0)
  %50 = getelementptr %Token, %Token* %44, i32 0, i32 1
  store %nyx_string* %49, %nyx_string** %50
  %51 = getelementptr %Token, %Token* %44, i32 0, i32 2
  store i64 0, i64* %51
  %52 = getelementptr %Token, %Token* %44, i32 0, i32 3
  store i64 0, i64* %52
  %53 = load %Token, %Token* %44
  %54 = alloca %Token
  store %Token %53, %Token* %54
  %55 = load %Token, %Token* %54
  ret %Token %55
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = alloca %nyx_string*
  store %nyx_string* %type.param, %nyx_string** %31
  %32 = load i64, i64* %8
  %33 = icmp eq i64 %32, 1
  br i1 %33, label %then0, label %else1
then0:
  %34 = load %nyx_string*, %nyx_string** %31
  %35 = getelementptr [4 x i8], [4 x i8]* @.str18, i32 0, i32 0
  %36 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str18.c, i8* %35, i64 3)
  %37 = call i1 @nyx_string_equals(%nyx_string* %34, %nyx_string* %36)
  br i1 %37, label %then3, label %else4
then3:
  ret i1 1
else4:
  br label %merge5
merge5:
  %38 = load %nyx_string*, %nyx_string** %31
  %39 = getelementptr [12 x i8], [12 x i8]* @.str19, i32 0, i32 0
  %40 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str19.c, i8* %39, i64 11)
  %41 = call i1 @nyx_string_equals(%nyx_string* %38, %nyx_string* %40)
  br i1 %41, label %then6, label %else7
then6:
  ret i1 1
else7:
  br label %merge8
merge8:
  %42 = load %nyx_string*, %nyx_string** %31
  %43 = getelementptr [12 x i8], [12 x i8]* @.str20, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str20.c, i8* %43, i64 11)
  %45 = call i1 @nyx_string_equals(%nyx_string* %42, %nyx_string* %44)
  br i1 %45, label %then9, label %else10
then9:
  ret i1 1
else10:
  br label %merge11
merge11:
  %46 = load %nyx_string*, %nyx_string** %31
  %47 = getelementptr [14 x i8], [14 x i8]* @.str21, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str21.c, i8* %47, i64 13)
  %49 = call i1 @nyx_string_equals(%nyx_string* %46, %nyx_string* %48)
  br i1 %49, label %then12, label %else13
then12:
  ret i1 1
else13:
  br label %merge14
merge14:
  ret i1 0
else1:
  br label %merge2
merge2:
  %50 = load i64, i64* %4
  %51 = load { i64, i8* }*, { i64, i8* }** %3
  %52 = call i64 @nyx_array_length({ i64, i8* }* %51)
  %53 = icmp slt i64 %50, %52
  br i1 %53, label %then15, label %else16
then15:
  %54 = load { i64, i8* }*, { i64, i8* }** %3
  %55 = load i64, i64* %4
  %56 = getelementptr [6 x i8], [6 x i8]* @.slotT22, i32 0, i32 0
  %57 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %54, i64 %55, i8* %56)
  %58 = inttoptr i64 %57 to %Token*
  %59 = load %Token, %Token* %58
  %60 = alloca %Token
  store %Token %59, %Token* %60
  %61 = load %Token, %Token* %60
  %62 = call %nyx_string* @get_token_type(%Token %61)
  %63 = alloca %nyx_string*
  store %nyx_string* %62, %nyx_string** %63
  %64 = load %nyx_string*, %nyx_string** %63
  %65 = load %nyx_string*, %nyx_string** %31
  %66 = call i1 @nyx_string_equals(%nyx_string* %64, %nyx_string* %65)
  ret i1 %66
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %32 = alloca %Token
  store %Token %31, %Token* %32
  %33 = load i64, i64* %4
  %34 = add i64 %33, 1
  store i64 %34, i64* %4
  %35 = load %Token, %Token* %32
  %36 = call i64 @get_token_line(%Token %35)
  store i64 %36, i64* @g_last_line
  %37 = load %Token, %Token* %32
  %38 = call i64 @get_token_column(%Token %37)
  store i64 %38, i64* @g_last_col
  %39 = load %Token, %Token* %32
  ret %Token %39
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = alloca i64
  store i64 %offset.param, i64* %31
  %32 = alloca %nyx_string*
  store %nyx_string* %type.param, %nyx_string** %32
  %33 = load i64, i64* %4
  %34 = load i64, i64* %31
  %35 = add i64 %33, %34
  %36 = alloca i64
  store i64 %35, i64* %36
  %37 = load i64, i64* %36
  %38 = load { i64, i8* }*, { i64, i8* }** %3
  %39 = call i64 @nyx_array_length({ i64, i8* }* %38)
  %40 = icmp slt i64 %37, %39
  br i1 %40, label %then0, label %else1
then0:
  %41 = load { i64, i8* }*, { i64, i8* }** %3
  %42 = load i64, i64* %36
  %43 = getelementptr [6 x i8], [6 x i8]* @.slotT23, i32 0, i32 0
  %44 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %41, i64 %42, i8* %43)
  %45 = inttoptr i64 %44 to %Token*
  %46 = load %Token, %Token* %45
  %47 = alloca %Token
  store %Token %46, %Token* %47
  %48 = load %Token, %Token* %47
  %49 = call %nyx_string* @get_token_type(%Token %48)
  %50 = alloca %nyx_string*
  store %nyx_string* %49, %nyx_string** %50
  %51 = load %nyx_string*, %nyx_string** %50
  %52 = load %nyx_string*, %nyx_string** %32
  %53 = call i1 @nyx_string_equals(%nyx_string* %51, %nyx_string* %52)
  ret i1 %53
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = alloca %nyx_string*
  store %nyx_string* %es.param, %nyx_string** %31
  %32 = alloca %nyx_string*
  store %nyx_string* %en.param, %nyx_string** %32
  %33 = load i64, i64* %9
  %34 = icmp eq i64 %33, 1
  br i1 %34, label %then0, label %else1
then0:
  %35 = load %nyx_string*, %nyx_string** %31
  ret %nyx_string* %35
else1:
  br label %merge2
merge2:
  %36 = load %nyx_string*, %nyx_string** %32
  ret %nyx_string* %36
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %31
  %32 = getelementptr [1 x i8], [1 x i8]* @.str24, i32 0, i32 0
  %33 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str24.c, i8* %32, i64 0)
  %34 = alloca %nyx_string*
  store %nyx_string* %33, %nyx_string** %34
  %35 = alloca i64
  store i64 0, i64* %35
  %36 = alloca i64
  store i64 0, i64* %36
  %37 = load %nyx_string*, %nyx_string** %31
  %38 = call i64 @nyx_string_byte_length(%nyx_string* %37)
  %39 = alloca i64
  store i64 %38, i64* %39
  %40 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %41 = load i64, i64* %36
  %42 = load i64, i64* %39
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %40)
  %44 = load %nyx_string*, %nyx_string** %31
  %45 = load i64, i64* %36
  %46 = call i8 @nyx_string_char_at(%nyx_string* %44, i64 %45)
  %47 = zext i8 %46 to i64
  %48 = alloca i64
  store i64 %47, i64* %48
  %49 = getelementptr [1 x i8], [1 x i8]* @.str25, i32 0, i32 0
  %50 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str25.c, i8* %49, i64 0)
  %51 = alloca %nyx_string*
  store %nyx_string* %50, %nyx_string** %51
  %52 = load i64, i64* %48
  %53 = icmp eq i64 %52, 34
  br i1 %53, label %then3, label %else4
then3:
  %54 = getelementptr [3 x i8], [3 x i8]* @.str26, i32 0, i32 0
  %55 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str26.c, i8* %54, i64 2)
  store %nyx_string* %55, %nyx_string** %51
  br label %merge5
else4:
  br label %merge5
merge5:
  %56 = load i64, i64* %48
  %57 = icmp eq i64 %56, 92
  br i1 %57, label %then6, label %else7
then6:
  %58 = getelementptr [3 x i8], [3 x i8]* @.str27, i32 0, i32 0
  %59 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str27.c, i8* %58, i64 2)
  store %nyx_string* %59, %nyx_string** %51
  br label %merge8
else7:
  br label %merge8
merge8:
  %60 = load i64, i64* %48
  %61 = icmp eq i64 %60, 10
  br i1 %61, label %then9, label %else10
then9:
  %62 = getelementptr [3 x i8], [3 x i8]* @.str28, i32 0, i32 0
  %63 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str28.c, i8* %62, i64 2)
  store %nyx_string* %63, %nyx_string** %51
  br label %merge11
else10:
  br label %merge11
merge11:
  %64 = load i64, i64* %48
  %65 = icmp eq i64 %64, 13
  br i1 %65, label %then12, label %else13
then12:
  %66 = getelementptr [3 x i8], [3 x i8]* @.str29, i32 0, i32 0
  %67 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str29.c, i8* %66, i64 2)
  store %nyx_string* %67, %nyx_string** %51
  br label %merge14
else13:
  br label %merge14
merge14:
  %68 = load i64, i64* %48
  %69 = icmp eq i64 %68, 9
  br i1 %69, label %then15, label %else16
then15:
  %70 = getelementptr [3 x i8], [3 x i8]* @.str30, i32 0, i32 0
  %71 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str30.c, i8* %70, i64 2)
  store %nyx_string* %71, %nyx_string** %51
  br label %merge17
else16:
  br label %merge17
merge17:
  %72 = load %nyx_string*, %nyx_string** %51
  %73 = getelementptr [1 x i8], [1 x i8]* @.str31, i32 0, i32 0
  %74 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str31.c, i8* %73, i64 0)
  %75 = call i1 @nyx_string_equals(%nyx_string* %72, %nyx_string* %74)
  %76 = xor i1 %75, true
  br i1 %76, label %then18, label %else19
then18:
  %77 = load %nyx_string*, %nyx_string** %34
  %78 = load %nyx_string*, %nyx_string** %31
  %79 = load i64, i64* %35
  %80 = load i64, i64* %36
  %81 = call %nyx_string* @nyx_string_substring(%nyx_string* %78, i64 %79, i64 %80)
  %82 = call %nyx_string* @nyx_string_concat(%nyx_string* %77, %nyx_string* %81)
  %83 = load %nyx_string*, %nyx_string** %51
  %84 = call %nyx_string* @nyx_string_concat(%nyx_string* %82, %nyx_string* %83)
  store %nyx_string* %84, %nyx_string** %34
  %85 = load i64, i64* %36
  %86 = add i64 %85, 1
  store i64 %86, i64* %35
  br label %merge20
else19:
  br label %merge20
merge20:
  %87 = load i64, i64* %36
  %88 = add i64 %87, 1
  store i64 %88, i64* %36
  br label %while_cond0
while_end2:
  %89 = load i64, i64* %35
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %then21, label %else22
then21:
  %91 = load %nyx_string*, %nyx_string** %31
  ret %nyx_string* %91
else22:
  br label %merge23
merge23:
  %92 = load %nyx_string*, %nyx_string** %34
  %93 = load %nyx_string*, %nyx_string** %31
  %94 = load i64, i64* %35
  %95 = load i64, i64* %39
  %96 = call %nyx_string* @nyx_string_substring(%nyx_string* %93, i64 %94, i64 %95)
  %97 = call %nyx_string* @nyx_string_concat(%nyx_string* %92, %nyx_string* %96)
  ret %nyx_string* %97
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = alloca %nyx_string*
  store %nyx_string* %code.param, %nyx_string** %31
  %32 = alloca i64
  store i64 %ln.param, i64* %32
  %33 = alloca i64
  store i64 %cl.param, i64* %33
  %34 = alloca %nyx_string*
  store %nyx_string* %dmsg.param, %nyx_string** %34
  %35 = load i64, i64* %8
  %36 = icmp eq i64 %35, 1
  br i1 %36, label %then0, label %else1
then0:
  ret i64 0
else1:
  br label %merge2
merge2:
  %37 = load i64, i64* %7
  %38 = add i64 %37, 1
  store i64 %38, i64* %7
  %39 = load i64, i64* @g_parse_error_count
  %40 = add i64 %39, 1
  store i64 %40, i64* @g_parse_error_count
  %41 = load i64, i64* %7
  %42 = icmp sgt i64 %41, 20
  br i1 %42, label %then3, label %else4
then3:
  %43 = getelementptr [39 x i8], [39 x i8]* @.str32, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str32.c, i8* %43, i64 38)
  %45 = getelementptr [32 x i8], [32 x i8]* @.str33, i32 0, i32 0
  %46 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str33.c, i8* %45, i64 31)
  %47 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %44, %nyx_string* %46)
  %48 = alloca %nyx_string*
  store %nyx_string* %47, %nyx_string** %48
  %49 = load i64, i64* %11
  %50 = icmp eq i64 %49, 1
  br i1 %50, label %then6, label %else7
then6:
  %51 = getelementptr [65 x i8], [65 x i8]* @.str34, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str34.c, i8* %51, i64 64)
  %53 = load %nyx_string*, %nyx_string** %48
  %54 = call %nyx_string* @parse__p_json_escape(%SharedEnv_parse* %env.param, %nyx_string* %53)
  %55 = call %nyx_string* @nyx_string_concat(%nyx_string* %52, %nyx_string* %54)
  %56 = getelementptr [3 x i8], [3 x i8]* @.str35, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str35.c, i8* %56, i64 2)
  %58 = call %nyx_string* @nyx_string_concat(%nyx_string* %55, %nyx_string* %57)
  %59 = call i8* @nyx_string_to_cstr(%nyx_string* %58)
  call void @nyx_print_string(i8* %59)
  br label %merge8
else7:
  %60 = getelementptr [18 x i8], [18 x i8]* @.str36, i32 0, i32 0
  %61 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str36.c, i8* %60, i64 17)
  %62 = load %nyx_string*, %nyx_string** %48
  %63 = call %nyx_string* @nyx_string_concat(%nyx_string* %61, %nyx_string* %62)
  %64 = call i8* @nyx_string_to_cstr(%nyx_string* %63)
  call void @nyx_print_string(i8* %64)
  br label %merge8
merge8:
  store i64 1, i64* %8
  ret i64 0
else4:
  br label %merge5
merge5:
  %65 = load i64, i64* %11
  %66 = icmp eq i64 %65, 1
  br i1 %66, label %then9, label %else10
then9:
  %67 = getelementptr [10 x i8], [10 x i8]* @.str37, i32 0, i32 0
  %68 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str37.c, i8* %67, i64 9)
  %69 = load %nyx_string*, %nyx_string** %31
  %70 = call %nyx_string* @nyx_string_concat(%nyx_string* %68, %nyx_string* %69)
  %71 = getelementptr [2 x i8], [2 x i8]* @.str38, i32 0, i32 0
  %72 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str38.c, i8* %71, i64 1)
  %73 = call %nyx_string* @nyx_string_concat(%nyx_string* %70, %nyx_string* %72)
  %74 = alloca %nyx_string*
  store %nyx_string* %73, %nyx_string** %74
  %75 = load %nyx_string*, %nyx_string** %74
  %76 = getelementptr [20 x i8], [20 x i8]* @.str39, i32 0, i32 0
  %77 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str39.c, i8* %76, i64 19)
  %78 = call %nyx_string* @nyx_string_concat(%nyx_string* %75, %nyx_string* %77)
  store %nyx_string* %78, %nyx_string** %74
  %79 = load %nyx_string*, %nyx_string** %74
  %80 = getelementptr [17 x i8], [17 x i8]* @.str40, i32 0, i32 0
  %81 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str40.c, i8* %80, i64 16)
  %82 = call %nyx_string* @nyx_string_concat(%nyx_string* %79, %nyx_string* %81)
  store %nyx_string* %82, %nyx_string** %74
  %83 = load i64, i64* %32
  %84 = icmp sgt i64 %83, 0
  br i1 %84, label %then12, label %else13
then12:
  %85 = load %nyx_string*, %nyx_string** %74
  %86 = getelementptr [9 x i8], [9 x i8]* @.str41, i32 0, i32 0
  %87 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str41.c, i8* %86, i64 8)
  %88 = call %nyx_string* @nyx_string_concat(%nyx_string* %85, %nyx_string* %87)
  %89 = load i64, i64* %32
  %90 = call %nyx_string* @nyx_string_from_int(i64 %89)
  %91 = call %nyx_string* @nyx_string_concat(%nyx_string* %88, %nyx_string* %90)
  store %nyx_string* %91, %nyx_string** %74
  %92 = load %nyx_string*, %nyx_string** %74
  %93 = getelementptr [11 x i8], [11 x i8]* @.str42, i32 0, i32 0
  %94 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str42.c, i8* %93, i64 10)
  %95 = call %nyx_string* @nyx_string_concat(%nyx_string* %92, %nyx_string* %94)
  %96 = load i64, i64* %33
  %97 = call %nyx_string* @nyx_string_from_int(i64 %96)
  %98 = call %nyx_string* @nyx_string_concat(%nyx_string* %95, %nyx_string* %97)
  store %nyx_string* %98, %nyx_string** %74
  br label %merge14
else13:
  br label %merge14
merge14:
  %99 = load %nyx_string*, %nyx_string** %10
  %100 = getelementptr [1 x i8], [1 x i8]* @.str43, i32 0, i32 0
  %101 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str43.c, i8* %100, i64 0)
  %102 = call i1 @nyx_string_equals(%nyx_string* %99, %nyx_string* %101)
  %103 = xor i1 %102, true
  br i1 %103, label %then15, label %else16
then15:
  %104 = load %nyx_string*, %nyx_string** %74
  %105 = getelementptr [12 x i8], [12 x i8]* @.str44, i32 0, i32 0
  %106 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str44.c, i8* %105, i64 11)
  %107 = call %nyx_string* @nyx_string_concat(%nyx_string* %104, %nyx_string* %106)
  %108 = load %nyx_string*, %nyx_string** %10
  %109 = call %nyx_string* @parse__p_json_escape(%SharedEnv_parse* %env.param, %nyx_string* %108)
  %110 = call %nyx_string* @nyx_string_concat(%nyx_string* %107, %nyx_string* %109)
  %111 = getelementptr [2 x i8], [2 x i8]* @.str45, i32 0, i32 0
  %112 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str45.c, i8* %111, i64 1)
  %113 = call %nyx_string* @nyx_string_concat(%nyx_string* %110, %nyx_string* %112)
  store %nyx_string* %113, %nyx_string** %74
  br label %merge17
else16:
  br label %merge17
merge17:
  %114 = load %nyx_string*, %nyx_string** %74
  %115 = getelementptr [13 x i8], [13 x i8]* @.str46, i32 0, i32 0
  %116 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str46.c, i8* %115, i64 12)
  %117 = call %nyx_string* @nyx_string_concat(%nyx_string* %114, %nyx_string* %116)
  %118 = load %nyx_string*, %nyx_string** %34
  %119 = call %nyx_string* @parse__p_json_escape(%SharedEnv_parse* %env.param, %nyx_string* %118)
  %120 = call %nyx_string* @nyx_string_concat(%nyx_string* %117, %nyx_string* %119)
  %121 = getelementptr [3 x i8], [3 x i8]* @.str47, i32 0, i32 0
  %122 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str47.c, i8* %121, i64 2)
  %123 = call %nyx_string* @nyx_string_concat(%nyx_string* %120, %nyx_string* %122)
  store %nyx_string* %123, %nyx_string** %74
  %124 = load %nyx_string*, %nyx_string** %74
  %125 = call i8* @nyx_string_to_cstr(%nyx_string* %124)
  call void @nyx_print_string(i8* %125)
  ret i64 0
else10:
  br label %merge11
merge11:
  %126 = getelementptr [8 x i8], [8 x i8]* @.str48, i32 0, i32 0
  %127 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str48.c, i8* %126, i64 7)
  %128 = load %nyx_string*, %nyx_string** %31
  %129 = call %nyx_string* @nyx_string_concat(%nyx_string* %127, %nyx_string* %128)
  %130 = getelementptr [4 x i8], [4 x i8]* @.str49, i32 0, i32 0
  %131 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str49.c, i8* %130, i64 3)
  %132 = call %nyx_string* @nyx_string_concat(%nyx_string* %129, %nyx_string* %131)
  %133 = load %nyx_string*, %nyx_string** %34
  %134 = call %nyx_string* @nyx_string_concat(%nyx_string* %132, %nyx_string* %133)
  %135 = call i8* @nyx_string_to_cstr(%nyx_string* %134)
  call void @nyx_print_string(i8* %135)
  %136 = load %nyx_string*, %nyx_string** %10
  %137 = getelementptr [1 x i8], [1 x i8]* @.str50, i32 0, i32 0
  %138 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str50.c, i8* %137, i64 0)
  %139 = call i1 @nyx_string_equals(%nyx_string* %136, %nyx_string* %138)
  %140 = xor i1 %139, true
  br i1 %140, label %then18, label %else19
then18:
  %141 = getelementptr [7 x i8], [7 x i8]* @.str51, i32 0, i32 0
  %142 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str51.c, i8* %141, i64 6)
  %143 = load %nyx_string*, %nyx_string** %10
  %144 = call %nyx_string* @nyx_string_concat(%nyx_string* %142, %nyx_string* %143)
  %145 = getelementptr [3 x i8], [3 x i8]* @.str52, i32 0, i32 0
  %146 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str52.c, i8* %145, i64 2)
  %147 = call %nyx_string* @nyx_string_concat(%nyx_string* %144, %nyx_string* %146)
  %148 = getelementptr [7 x i8], [7 x i8]* @.str53, i32 0, i32 0
  %149 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str53.c, i8* %148, i64 6)
  %150 = getelementptr [5 x i8], [5 x i8]* @.str54, i32 0, i32 0
  %151 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str54.c, i8* %150, i64 4)
  %152 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %149, %nyx_string* %151)
  %153 = call %nyx_string* @nyx_string_concat(%nyx_string* %147, %nyx_string* %152)
  %154 = getelementptr [2 x i8], [2 x i8]* @.str55, i32 0, i32 0
  %155 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str55.c, i8* %154, i64 1)
  %156 = call %nyx_string* @nyx_string_concat(%nyx_string* %153, %nyx_string* %155)
  %157 = load i64, i64* %32
  %158 = call %nyx_string* @nyx_string_from_int(i64 %157)
  %159 = call %nyx_string* @nyx_string_concat(%nyx_string* %156, %nyx_string* %158)
  %160 = getelementptr [2 x i8], [2 x i8]* @.str56, i32 0, i32 0
  %161 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str56.c, i8* %160, i64 1)
  %162 = call %nyx_string* @nyx_string_concat(%nyx_string* %159, %nyx_string* %161)
  %163 = load i64, i64* %33
  %164 = call %nyx_string* @nyx_string_from_int(i64 %163)
  %165 = call %nyx_string* @nyx_string_concat(%nyx_string* %162, %nyx_string* %164)
  %166 = call i8* @nyx_string_to_cstr(%nyx_string* %165)
  call void @nyx_print_string(i8* %166)
  br label %merge20
else19:
  %167 = getelementptr [7 x i8], [7 x i8]* @.str57, i32 0, i32 0
  %168 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str57.c, i8* %167, i64 6)
  %169 = getelementptr [7 x i8], [7 x i8]* @.str58, i32 0, i32 0
  %170 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str58.c, i8* %169, i64 6)
  %171 = getelementptr [5 x i8], [5 x i8]* @.str59, i32 0, i32 0
  %172 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str59.c, i8* %171, i64 4)
  %173 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %170, %nyx_string* %172)
  %174 = call %nyx_string* @nyx_string_concat(%nyx_string* %168, %nyx_string* %173)
  %175 = getelementptr [2 x i8], [2 x i8]* @.str60, i32 0, i32 0
  %176 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str60.c, i8* %175, i64 1)
  %177 = call %nyx_string* @nyx_string_concat(%nyx_string* %174, %nyx_string* %176)
  %178 = load i64, i64* %32
  %179 = call %nyx_string* @nyx_string_from_int(i64 %178)
  %180 = call %nyx_string* @nyx_string_concat(%nyx_string* %177, %nyx_string* %179)
  %181 = getelementptr [2 x i8], [2 x i8]* @.str61, i32 0, i32 0
  %182 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str61.c, i8* %181, i64 1)
  %183 = call %nyx_string* @nyx_string_concat(%nyx_string* %180, %nyx_string* %182)
  %184 = load i64, i64* %33
  %185 = call %nyx_string* @nyx_string_from_int(i64 %184)
  %186 = call %nyx_string* @nyx_string_concat(%nyx_string* %183, %nyx_string* %185)
  %187 = call i8* @nyx_string_to_cstr(%nyx_string* %186)
  call void @nyx_print_string(i8* %187)
  br label %merge20
merge20:
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = alloca %nyx_string*
  store %nyx_string* %tt.param, %nyx_string** %31
  %32 = alloca i1
  store i1 true, i1* %32
  %33 = alloca i1
  store i1 true, i1* %33
  %34 = alloca i1
  store i1 true, i1* %34
  %35 = alloca i1
  store i1 true, i1* %35
  %36 = load %nyx_string*, %nyx_string** %31
  %37 = getelementptr [4 x i8], [4 x i8]* @.str62, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str62.c, i8* %37, i64 3)
  %39 = call i1 @nyx_string_equals(%nyx_string* %36, %nyx_string* %38)
  br i1 %39, label %sc_or_end1, label %sc_or_rhs0
sc_or_rhs0:
  %40 = load %nyx_string*, %nyx_string** %31
  %41 = getelementptr [4 x i8], [4 x i8]* @.str63, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str63.c, i8* %41, i64 3)
  %43 = call i1 @nyx_string_equals(%nyx_string* %40, %nyx_string* %42)
  store i1 %43, i1* %35
  br label %sc_or_end1
sc_or_end1:
  %44 = load i1, i1* %35
  br i1 %44, label %sc_or_end3, label %sc_or_rhs2
sc_or_rhs2:
  %45 = load %nyx_string*, %nyx_string** %31
  %46 = getelementptr [6 x i8], [6 x i8]* @.str64, i32 0, i32 0
  %47 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str64.c, i8* %46, i64 5)
  %48 = call i1 @nyx_string_equals(%nyx_string* %45, %nyx_string* %47)
  store i1 %48, i1* %34
  br label %sc_or_end3
sc_or_end3:
  %49 = load i1, i1* %34
  br i1 %49, label %sc_or_end5, label %sc_or_rhs4
sc_or_rhs4:
  %50 = load %nyx_string*, %nyx_string** %31
  %51 = getelementptr [3 x i8], [3 x i8]* @.str65, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str65.c, i8* %51, i64 2)
  %53 = call i1 @nyx_string_equals(%nyx_string* %50, %nyx_string* %52)
  store i1 %53, i1* %33
  br label %sc_or_end5
sc_or_end5:
  %54 = load i1, i1* %33
  br i1 %54, label %sc_or_end7, label %sc_or_rhs6
sc_or_rhs6:
  %55 = load %nyx_string*, %nyx_string** %31
  %56 = getelementptr [7 x i8], [7 x i8]* @.str66, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str66.c, i8* %56, i64 6)
  %58 = call i1 @nyx_string_equals(%nyx_string* %55, %nyx_string* %57)
  store i1 %58, i1* %32
  br label %sc_or_end7
sc_or_end7:
  %59 = load i1, i1* %32
  br i1 %59, label %then8, label %else9
then8:
  ret i1 1
else9:
  br label %merge10
merge10:
  %60 = alloca i1
  store i1 true, i1* %60
  %61 = alloca i1
  store i1 true, i1* %61
  %62 = alloca i1
  store i1 true, i1* %62
  %63 = alloca i1
  store i1 true, i1* %63
  %64 = load %nyx_string*, %nyx_string** %31
  %65 = getelementptr [3 x i8], [3 x i8]* @.str67, i32 0, i32 0
  %66 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str67.c, i8* %65, i64 2)
  %67 = call i1 @nyx_string_equals(%nyx_string* %64, %nyx_string* %66)
  br i1 %67, label %sc_or_end12, label %sc_or_rhs11
sc_or_rhs11:
  %68 = load %nyx_string*, %nyx_string** %31
  %69 = getelementptr [5 x i8], [5 x i8]* @.str68, i32 0, i32 0
  %70 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str68.c, i8* %69, i64 4)
  %71 = call i1 @nyx_string_equals(%nyx_string* %68, %nyx_string* %70)
  store i1 %71, i1* %63
  br label %sc_or_end12
sc_or_end12:
  %72 = load i1, i1* %63
  br i1 %72, label %sc_or_end14, label %sc_or_rhs13
sc_or_rhs13:
  %73 = load %nyx_string*, %nyx_string** %31
  %74 = getelementptr [6 x i8], [6 x i8]* @.str69, i32 0, i32 0
  %75 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str69.c, i8* %74, i64 5)
  %76 = call i1 @nyx_string_equals(%nyx_string* %73, %nyx_string* %75)
  store i1 %76, i1* %62
  br label %sc_or_end14
sc_or_end14:
  %77 = load i1, i1* %62
  br i1 %77, label %sc_or_end16, label %sc_or_rhs15
sc_or_rhs15:
  %78 = load %nyx_string*, %nyx_string** %31
  %79 = getelementptr [4 x i8], [4 x i8]* @.str70, i32 0, i32 0
  %80 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str70.c, i8* %79, i64 3)
  %81 = call i1 @nyx_string_equals(%nyx_string* %78, %nyx_string* %80)
  store i1 %81, i1* %61
  br label %sc_or_end16
sc_or_end16:
  %82 = load i1, i1* %61
  br i1 %82, label %sc_or_end18, label %sc_or_rhs17
sc_or_rhs17:
  %83 = load %nyx_string*, %nyx_string** %31
  %84 = getelementptr [3 x i8], [3 x i8]* @.str71, i32 0, i32 0
  %85 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str71.c, i8* %84, i64 2)
  %86 = call i1 @nyx_string_equals(%nyx_string* %83, %nyx_string* %85)
  store i1 %86, i1* %60
  br label %sc_or_end18
sc_or_end18:
  %87 = load i1, i1* %60
  br i1 %87, label %then19, label %else20
then19:
  ret i1 1
else20:
  br label %merge21
merge21:
  %88 = alloca i1
  store i1 true, i1* %88
  %89 = alloca i1
  store i1 true, i1* %89
  %90 = alloca i1
  store i1 true, i1* %90
  %91 = alloca i1
  store i1 true, i1* %91
  %92 = load %nyx_string*, %nyx_string** %31
  %93 = getelementptr [6 x i8], [6 x i8]* @.str72, i32 0, i32 0
  %94 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str72.c, i8* %93, i64 5)
  %95 = call i1 @nyx_string_equals(%nyx_string* %92, %nyx_string* %94)
  br i1 %95, label %sc_or_end23, label %sc_or_rhs22
sc_or_rhs22:
  %96 = load %nyx_string*, %nyx_string** %31
  %97 = getelementptr [9 x i8], [9 x i8]* @.str73, i32 0, i32 0
  %98 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str73.c, i8* %97, i64 8)
  %99 = call i1 @nyx_string_equals(%nyx_string* %96, %nyx_string* %98)
  store i1 %99, i1* %91
  br label %sc_or_end23
sc_or_end23:
  %100 = load i1, i1* %91
  br i1 %100, label %sc_or_end25, label %sc_or_rhs24
sc_or_rhs24:
  %101 = load %nyx_string*, %nyx_string** %31
  %102 = getelementptr [7 x i8], [7 x i8]* @.str74, i32 0, i32 0
  %103 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str74.c, i8* %102, i64 6)
  %104 = call i1 @nyx_string_equals(%nyx_string* %101, %nyx_string* %103)
  store i1 %104, i1* %90
  br label %sc_or_end25
sc_or_end25:
  %105 = load i1, i1* %90
  br i1 %105, label %sc_or_end27, label %sc_or_rhs26
sc_or_rhs26:
  %106 = load %nyx_string*, %nyx_string** %31
  %107 = getelementptr [5 x i8], [5 x i8]* @.str75, i32 0, i32 0
  %108 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str75.c, i8* %107, i64 4)
  %109 = call i1 @nyx_string_equals(%nyx_string* %106, %nyx_string* %108)
  store i1 %109, i1* %89
  br label %sc_or_end27
sc_or_end27:
  %110 = load i1, i1* %89
  br i1 %110, label %sc_or_end29, label %sc_or_rhs28
sc_or_rhs28:
  %111 = load %nyx_string*, %nyx_string** %31
  %112 = getelementptr [6 x i8], [6 x i8]* @.str76, i32 0, i32 0
  %113 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str76.c, i8* %112, i64 5)
  %114 = call i1 @nyx_string_equals(%nyx_string* %111, %nyx_string* %113)
  store i1 %114, i1* %88
  br label %sc_or_end29
sc_or_end29:
  %115 = load i1, i1* %88
  br i1 %115, label %then30, label %else31
then30:
  ret i1 1
else31:
  br label %merge32
merge32:
  %116 = alloca i1
  store i1 true, i1* %116
  %117 = alloca i1
  store i1 true, i1* %117
  %118 = alloca i1
  store i1 true, i1* %118
  %119 = alloca i1
  store i1 true, i1* %119
  %120 = load %nyx_string*, %nyx_string** %31
  %121 = getelementptr [7 x i8], [7 x i8]* @.str77, i32 0, i32 0
  %122 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str77.c, i8* %121, i64 6)
  %123 = call i1 @nyx_string_equals(%nyx_string* %120, %nyx_string* %122)
  br i1 %123, label %sc_or_end34, label %sc_or_rhs33
sc_or_rhs33:
  %124 = load %nyx_string*, %nyx_string** %31
  %125 = getelementptr [7 x i8], [7 x i8]* @.str78, i32 0, i32 0
  %126 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str78.c, i8* %125, i64 6)
  %127 = call i1 @nyx_string_equals(%nyx_string* %124, %nyx_string* %126)
  store i1 %127, i1* %119
  br label %sc_or_end34
sc_or_end34:
  %128 = load i1, i1* %119
  br i1 %128, label %sc_or_end36, label %sc_or_rhs35
sc_or_rhs35:
  %129 = load %nyx_string*, %nyx_string** %31
  %130 = getelementptr [5 x i8], [5 x i8]* @.str79, i32 0, i32 0
  %131 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str79.c, i8* %130, i64 4)
  %132 = call i1 @nyx_string_equals(%nyx_string* %129, %nyx_string* %131)
  store i1 %132, i1* %118
  br label %sc_or_end36
sc_or_end36:
  %133 = load i1, i1* %118
  br i1 %133, label %sc_or_end38, label %sc_or_rhs37
sc_or_rhs37:
  %134 = load %nyx_string*, %nyx_string** %31
  %135 = getelementptr [5 x i8], [5 x i8]* @.str80, i32 0, i32 0
  %136 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str80.c, i8* %135, i64 4)
  %137 = call i1 @nyx_string_equals(%nyx_string* %134, %nyx_string* %136)
  store i1 %137, i1* %117
  br label %sc_or_end38
sc_or_end38:
  %138 = load i1, i1* %117
  br i1 %138, label %sc_or_end40, label %sc_or_rhs39
sc_or_rhs39:
  %139 = load %nyx_string*, %nyx_string** %31
  %140 = getelementptr [6 x i8], [6 x i8]* @.str81, i32 0, i32 0
  %141 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str81.c, i8* %140, i64 5)
  %142 = call i1 @nyx_string_equals(%nyx_string* %139, %nyx_string* %141)
  store i1 %142, i1* %116
  br label %sc_or_end40
sc_or_end40:
  %143 = load i1, i1* %116
  br i1 %143, label %then41, label %else42
then41:
  ret i1 1
else42:
  br label %merge43
merge43:
  %144 = alloca i1
  store i1 true, i1* %144
  %145 = alloca i1
  store i1 true, i1* %145
  %146 = alloca i1
  store i1 true, i1* %146
  %147 = alloca i1
  store i1 true, i1* %147
  %148 = load %nyx_string*, %nyx_string** %31
  %149 = getelementptr [4 x i8], [4 x i8]* @.str82, i32 0, i32 0
  %150 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str82.c, i8* %149, i64 3)
  %151 = call i1 @nyx_string_equals(%nyx_string* %148, %nyx_string* %150)
  br i1 %151, label %sc_or_end45, label %sc_or_rhs44
sc_or_rhs44:
  %152 = load %nyx_string*, %nyx_string** %31
  %153 = getelementptr [3 x i8], [3 x i8]* @.str83, i32 0, i32 0
  %154 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str83.c, i8* %153, i64 2)
  %155 = call i1 @nyx_string_equals(%nyx_string* %152, %nyx_string* %154)
  store i1 %155, i1* %147
  br label %sc_or_end45
sc_or_end45:
  %156 = load i1, i1* %147
  br i1 %156, label %sc_or_end47, label %sc_or_rhs46
sc_or_rhs46:
  %157 = load %nyx_string*, %nyx_string** %31
  %158 = getelementptr [4 x i8], [4 x i8]* @.str84, i32 0, i32 0
  %159 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str84.c, i8* %158, i64 3)
  %160 = call i1 @nyx_string_equals(%nyx_string* %157, %nyx_string* %159)
  store i1 %160, i1* %146
  br label %sc_or_end47
sc_or_end47:
  %161 = load i1, i1* %146
  br i1 %161, label %sc_or_end49, label %sc_or_rhs48
sc_or_rhs48:
  %162 = load %nyx_string*, %nyx_string** %31
  %163 = getelementptr [5 x i8], [5 x i8]* @.str85, i32 0, i32 0
  %164 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str85.c, i8* %163, i64 4)
  %165 = call i1 @nyx_string_equals(%nyx_string* %162, %nyx_string* %164)
  store i1 %165, i1* %145
  br label %sc_or_end49
sc_or_end49:
  %166 = load i1, i1* %145
  br i1 %166, label %sc_or_end51, label %sc_or_rhs50
sc_or_rhs50:
  %167 = load %nyx_string*, %nyx_string** %31
  %168 = getelementptr [6 x i8], [6 x i8]* @.str86, i32 0, i32 0
  %169 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str86.c, i8* %168, i64 5)
  %170 = call i1 @nyx_string_equals(%nyx_string* %167, %nyx_string* %169)
  store i1 %170, i1* %144
  br label %sc_or_end51
sc_or_end51:
  %171 = load i1, i1* %144
  br i1 %171, label %then52, label %else53
then52:
  ret i1 1
else53:
  br label %merge54
merge54:
  %172 = alloca i1
  store i1 true, i1* %172
  %173 = alloca i1
  store i1 true, i1* %173
  %174 = alloca i1
  store i1 true, i1* %174
  %175 = alloca i1
  store i1 true, i1* %175
  %176 = load %nyx_string*, %nyx_string** %31
  %177 = getelementptr [5 x i8], [5 x i8]* @.str87, i32 0, i32 0
  %178 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str87.c, i8* %177, i64 4)
  %179 = call i1 @nyx_string_equals(%nyx_string* %176, %nyx_string* %178)
  br i1 %179, label %sc_or_end56, label %sc_or_rhs55
sc_or_rhs55:
  %180 = load %nyx_string*, %nyx_string** %31
  %181 = getelementptr [7 x i8], [7 x i8]* @.str88, i32 0, i32 0
  %182 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str88.c, i8* %181, i64 6)
  %183 = call i1 @nyx_string_equals(%nyx_string* %180, %nyx_string* %182)
  store i1 %183, i1* %175
  br label %sc_or_end56
sc_or_end56:
  %184 = load i1, i1* %175
  br i1 %184, label %sc_or_end58, label %sc_or_rhs57
sc_or_rhs57:
  %185 = load %nyx_string*, %nyx_string** %31
  %186 = getelementptr [7 x i8], [7 x i8]* @.str89, i32 0, i32 0
  %187 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str89.c, i8* %186, i64 6)
  %188 = call i1 @nyx_string_equals(%nyx_string* %185, %nyx_string* %187)
  store i1 %188, i1* %174
  br label %sc_or_end58
sc_or_end58:
  %189 = load i1, i1* %174
  br i1 %189, label %sc_or_end60, label %sc_or_rhs59
sc_or_rhs59:
  %190 = load %nyx_string*, %nyx_string** %31
  %191 = getelementptr [3 x i8], [3 x i8]* @.str90, i32 0, i32 0
  %192 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str90.c, i8* %191, i64 2)
  %193 = call i1 @nyx_string_equals(%nyx_string* %190, %nyx_string* %192)
  store i1 %193, i1* %173
  br label %sc_or_end60
sc_or_end60:
  %194 = load i1, i1* %173
  br i1 %194, label %sc_or_end62, label %sc_or_rhs61
sc_or_rhs61:
  %195 = load %nyx_string*, %nyx_string** %31
  %196 = getelementptr [7 x i8], [7 x i8]* @.str91, i32 0, i32 0
  %197 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str91.c, i8* %196, i64 6)
  %198 = call i1 @nyx_string_equals(%nyx_string* %195, %nyx_string* %197)
  store i1 %198, i1* %172
  br label %sc_or_end62
sc_or_end62:
  %199 = load i1, i1* %172
  br i1 %199, label %then63, label %else64
then63:
  ret i1 1
else64:
  br label %merge65
merge65:
  %200 = alloca i1
  store i1 true, i1* %200
  %201 = alloca i1
  store i1 true, i1* %201
  %202 = alloca i1
  store i1 true, i1* %202
  %203 = alloca i1
  store i1 true, i1* %203
  %204 = load %nyx_string*, %nyx_string** %31
  %205 = getelementptr [7 x i8], [7 x i8]* @.str92, i32 0, i32 0
  %206 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str92.c, i8* %205, i64 6)
  %207 = call i1 @nyx_string_equals(%nyx_string* %204, %nyx_string* %206)
  br i1 %207, label %sc_or_end67, label %sc_or_rhs66
sc_or_rhs66:
  %208 = load %nyx_string*, %nyx_string** %31
  %209 = getelementptr [7 x i8], [7 x i8]* @.str93, i32 0, i32 0
  %210 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str93.c, i8* %209, i64 6)
  %211 = call i1 @nyx_string_equals(%nyx_string* %208, %nyx_string* %210)
  store i1 %211, i1* %203
  br label %sc_or_end67
sc_or_end67:
  %212 = load i1, i1* %203
  br i1 %212, label %sc_or_end69, label %sc_or_rhs68
sc_or_rhs68:
  %213 = load %nyx_string*, %nyx_string** %31
  %214 = getelementptr [8 x i8], [8 x i8]* @.str94, i32 0, i32 0
  %215 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str94.c, i8* %214, i64 7)
  %216 = call i1 @nyx_string_equals(%nyx_string* %213, %nyx_string* %215)
  store i1 %216, i1* %202
  br label %sc_or_end69
sc_or_end69:
  %217 = load i1, i1* %202
  br i1 %217, label %sc_or_end71, label %sc_or_rhs70
sc_or_rhs70:
  %218 = load %nyx_string*, %nyx_string** %31
  %219 = getelementptr [4 x i8], [4 x i8]* @.str95, i32 0, i32 0
  %220 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str95.c, i8* %219, i64 3)
  %221 = call i1 @nyx_string_equals(%nyx_string* %218, %nyx_string* %220)
  store i1 %221, i1* %201
  br label %sc_or_end71
sc_or_end71:
  %222 = load i1, i1* %201
  br i1 %222, label %sc_or_end73, label %sc_or_rhs72
sc_or_rhs72:
  %223 = load %nyx_string*, %nyx_string** %31
  %224 = getelementptr [4 x i8], [4 x i8]* @.str96, i32 0, i32 0
  %225 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str96.c, i8* %224, i64 3)
  %226 = call i1 @nyx_string_equals(%nyx_string* %223, %nyx_string* %225)
  store i1 %226, i1* %200
  br label %sc_or_end73
sc_or_end73:
  %227 = load i1, i1* %200
  br i1 %227, label %then74, label %else75
then74:
  ret i1 1
else75:
  br label %merge76
merge76:
  %228 = alloca i1
  store i1 true, i1* %228
  %229 = alloca i1
  store i1 true, i1* %229
  %230 = alloca i1
  store i1 true, i1* %230
  %231 = load %nyx_string*, %nyx_string** %31
  %232 = getelementptr [4 x i8], [4 x i8]* @.str97, i32 0, i32 0
  %233 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str97.c, i8* %232, i64 3)
  %234 = call i1 @nyx_string_equals(%nyx_string* %231, %nyx_string* %233)
  br i1 %234, label %sc_or_end78, label %sc_or_rhs77
sc_or_rhs77:
  %235 = load %nyx_string*, %nyx_string** %31
  %236 = getelementptr [7 x i8], [7 x i8]* @.str98, i32 0, i32 0
  %237 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str98.c, i8* %236, i64 6)
  %238 = call i1 @nyx_string_equals(%nyx_string* %235, %nyx_string* %237)
  store i1 %238, i1* %230
  br label %sc_or_end78
sc_or_end78:
  %239 = load i1, i1* %230
  br i1 %239, label %sc_or_end80, label %sc_or_rhs79
sc_or_rhs79:
  %240 = load %nyx_string*, %nyx_string** %31
  %241 = getelementptr [6 x i8], [6 x i8]* @.str99, i32 0, i32 0
  %242 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str99.c, i8* %241, i64 5)
  %243 = call i1 @nyx_string_equals(%nyx_string* %240, %nyx_string* %242)
  store i1 %243, i1* %229
  br label %sc_or_end80
sc_or_end80:
  %244 = load i1, i1* %229
  br i1 %244, label %sc_or_end82, label %sc_or_rhs81
sc_or_rhs81:
  %245 = load %nyx_string*, %nyx_string** %31
  %246 = getelementptr [6 x i8], [6 x i8]* @.str100, i32 0, i32 0
  %247 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str100.c, i8* %246, i64 5)
  %248 = call i1 @nyx_string_equals(%nyx_string* %245, %nyx_string* %247)
  store i1 %248, i1* %228
  br label %sc_or_end82
sc_or_end82:
  %249 = load i1, i1* %228
  br i1 %249, label %then83, label %else84
then83:
  ret i1 1
else84:
  br label %merge85
merge85:
  %250 = alloca i1
  store i1 true, i1* %250
  %251 = alloca i1
  store i1 true, i1* %251
  %252 = alloca i1
  store i1 true, i1* %252
  %253 = alloca i1
  store i1 true, i1* %253
  %254 = load %nyx_string*, %nyx_string** %31
  %255 = getelementptr [4 x i8], [4 x i8]* @.str101, i32 0, i32 0
  %256 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str101.c, i8* %255, i64 3)
  %257 = call i1 @nyx_string_equals(%nyx_string* %254, %nyx_string* %256)
  br i1 %257, label %sc_or_end87, label %sc_or_rhs86
sc_or_rhs86:
  %258 = load %nyx_string*, %nyx_string** %31
  %259 = getelementptr [6 x i8], [6 x i8]* @.str102, i32 0, i32 0
  %260 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str102.c, i8* %259, i64 5)
  %261 = call i1 @nyx_string_equals(%nyx_string* %258, %nyx_string* %260)
  store i1 %261, i1* %253
  br label %sc_or_end87
sc_or_end87:
  %262 = load i1, i1* %253
  br i1 %262, label %sc_or_end89, label %sc_or_rhs88
sc_or_rhs88:
  %263 = load %nyx_string*, %nyx_string** %31
  %264 = getelementptr [6 x i8], [6 x i8]* @.str103, i32 0, i32 0
  %265 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str103.c, i8* %264, i64 5)
  %266 = call i1 @nyx_string_equals(%nyx_string* %263, %nyx_string* %265)
  store i1 %266, i1* %252
  br label %sc_or_end89
sc_or_end89:
  %267 = load i1, i1* %252
  br i1 %267, label %sc_or_end91, label %sc_or_rhs90
sc_or_rhs90:
  %268 = load %nyx_string*, %nyx_string** %31
  %269 = getelementptr [6 x i8], [6 x i8]* @.str104, i32 0, i32 0
  %270 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str104.c, i8* %269, i64 5)
  %271 = call i1 @nyx_string_equals(%nyx_string* %268, %nyx_string* %270)
  store i1 %271, i1* %251
  br label %sc_or_end91
sc_or_end91:
  %272 = load i1, i1* %251
  br i1 %272, label %sc_or_end93, label %sc_or_rhs92
sc_or_rhs92:
  %273 = load %nyx_string*, %nyx_string** %31
  %274 = getelementptr [6 x i8], [6 x i8]* @.str105, i32 0, i32 0
  %275 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str105.c, i8* %274, i64 5)
  %276 = call i1 @nyx_string_equals(%nyx_string* %273, %nyx_string* %275)
  store i1 %276, i1* %250
  br label %sc_or_end93
sc_or_end93:
  %277 = load i1, i1* %250
  br i1 %277, label %then94, label %else95
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = alloca %nyx_string*
  store %nyx_string* %type.param, %nyx_string** %31
  %32 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %33 = alloca %Token
  store %Token %32, %Token* %33
  %34 = load %Token, %Token* %33
  %35 = call %nyx_string* @get_token_type(%Token %34)
  %36 = load %nyx_string*, %nyx_string** %31
  %37 = call i1 @nyx_string_equals(%nyx_string* %35, %nyx_string* %36)
  br i1 %37, label %then0, label %else1
then0:
  %38 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  ret %Token %38
else1:
  br label %merge2
merge2:
  %39 = load %Token, %Token* %33
  %40 = call i64 @get_token_line(%Token %39)
  %41 = alloca i64
  store i64 %40, i64* %41
  %42 = load %Token, %Token* %33
  %43 = call i64 @get_token_column(%Token %42)
  %44 = alloca i64
  store i64 %43, i64* %44
  %45 = load %Token, %Token* %33
  %46 = call %nyx_string* @get_token_value(%Token %45)
  %47 = alloca %nyx_string*
  store %nyx_string* %46, %nyx_string** %47
  %48 = load %Token, %Token* %33
  %49 = call %nyx_string* @get_token_type(%Token %48)
  %50 = alloca %nyx_string*
  store %nyx_string* %49, %nyx_string** %50
  %51 = alloca i1
  store i1 false, i1* %51
  %52 = load %nyx_string*, %nyx_string** %31
  %53 = getelementptr [11 x i8], [11 x i8]* @.str106, i32 0, i32 0
  %54 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str106.c, i8* %53, i64 10)
  %55 = call i1 @nyx_string_equals(%nyx_string* %52, %nyx_string* %54)
  br i1 %55, label %sc_and_rhs3, label %sc_and_end4
sc_and_rhs3:
  %56 = load %nyx_string*, %nyx_string** %50
  %57 = call i1 @parse__is_keyword_token(%SharedEnv_parse* %env.param, %nyx_string* %56)
  store i1 %57, i1* %51
  br label %sc_and_end4
sc_and_end4:
  %58 = load i1, i1* %51
  br i1 %58, label %then5, label %else6
then5:
  %59 = getelementptr [8 x i8], [8 x i8]* @.str107, i32 0, i32 0
  %60 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str107.c, i8* %59, i64 7)
  %61 = load i64, i64* %41
  %62 = load i64, i64* %44
  %63 = getelementptr [30 x i8], [30 x i8]* @.str108, i32 0, i32 0
  %64 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str108.c, i8* %63, i64 29)
  %65 = load %nyx_string*, %nyx_string** %47
  %66 = call %nyx_string* @nyx_string_concat(%nyx_string* %64, %nyx_string* %65)
  %67 = getelementptr [21 x i8], [21 x i8]* @.str109, i32 0, i32 0
  %68 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str109.c, i8* %67, i64 20)
  %69 = call %nyx_string* @nyx_string_concat(%nyx_string* %66, %nyx_string* %68)
  %70 = getelementptr [21 x i8], [21 x i8]* @.str110, i32 0, i32 0
  %71 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str110.c, i8* %70, i64 20)
  %72 = load %nyx_string*, %nyx_string** %47
  %73 = call %nyx_string* @nyx_string_concat(%nyx_string* %71, %nyx_string* %72)
  %74 = getelementptr [19 x i8], [19 x i8]* @.str111, i32 0, i32 0
  %75 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str111.c, i8* %74, i64 18)
  %76 = call %nyx_string* @nyx_string_concat(%nyx_string* %73, %nyx_string* %75)
  %77 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %69, %nyx_string* %76)
  %78 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %60, i64 %61, i64 %62, %nyx_string* %77)
  br label %merge7
else6:
  %79 = getelementptr [8 x i8], [8 x i8]* @.str112, i32 0, i32 0
  %80 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str112.c, i8* %79, i64 7)
  %81 = load i64, i64* %41
  %82 = load i64, i64* %44
  %83 = getelementptr [14 x i8], [14 x i8]* @.str113, i32 0, i32 0
  %84 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str113.c, i8* %83, i64 13)
  %85 = load %nyx_string*, %nyx_string** %31
  %86 = call %nyx_string* @nyx_string_concat(%nyx_string* %84, %nyx_string* %85)
  %87 = getelementptr [16 x i8], [16 x i8]* @.str114, i32 0, i32 0
  %88 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str114.c, i8* %87, i64 15)
  %89 = call %nyx_string* @nyx_string_concat(%nyx_string* %86, %nyx_string* %88)
  %90 = load %nyx_string*, %nyx_string** %47
  %91 = call %nyx_string* @nyx_string_concat(%nyx_string* %89, %nyx_string* %90)
  %92 = getelementptr [4 x i8], [4 x i8]* @.str115, i32 0, i32 0
  %93 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str115.c, i8* %92, i64 3)
  %94 = call %nyx_string* @nyx_string_concat(%nyx_string* %91, %nyx_string* %93)
  %95 = load %nyx_string*, %nyx_string** %50
  %96 = call %nyx_string* @nyx_string_concat(%nyx_string* %94, %nyx_string* %95)
  %97 = getelementptr [2 x i8], [2 x i8]* @.str116, i32 0, i32 0
  %98 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str116.c, i8* %97, i64 1)
  %99 = call %nyx_string* @nyx_string_concat(%nyx_string* %96, %nyx_string* %98)
  %100 = getelementptr [11 x i8], [11 x i8]* @.str117, i32 0, i32 0
  %101 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str117.c, i8* %100, i64 10)
  %102 = load %nyx_string*, %nyx_string** %31
  %103 = call %nyx_string* @nyx_string_concat(%nyx_string* %101, %nyx_string* %102)
  %104 = getelementptr [11 x i8], [11 x i8]* @.str118, i32 0, i32 0
  %105 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str118.c, i8* %104, i64 10)
  %106 = call %nyx_string* @nyx_string_concat(%nyx_string* %103, %nyx_string* %105)
  %107 = load %nyx_string*, %nyx_string** %47
  %108 = call %nyx_string* @nyx_string_concat(%nyx_string* %106, %nyx_string* %107)
  %109 = getelementptr [4 x i8], [4 x i8]* @.str119, i32 0, i32 0
  %110 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str119.c, i8* %109, i64 3)
  %111 = call %nyx_string* @nyx_string_concat(%nyx_string* %108, %nyx_string* %110)
  %112 = load %nyx_string*, %nyx_string** %50
  %113 = call %nyx_string* @nyx_string_concat(%nyx_string* %111, %nyx_string* %112)
  %114 = getelementptr [2 x i8], [2 x i8]* @.str120, i32 0, i32 0
  %115 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str120.c, i8* %114, i64 1)
  %116 = call %nyx_string* @nyx_string_concat(%nyx_string* %113, %nyx_string* %115)
  %117 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %99, %nyx_string* %116)
  %118 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %80, i64 %81, i64 %82, %nyx_string* %117)
  br label %merge7
merge7:
  %119 = alloca i1
  store i1 false, i1* %119
  %120 = alloca i1
  store i1 false, i1* %120
  %121 = alloca i1
  store i1 false, i1* %121
  %122 = load %nyx_string*, %nyx_string** %50
  %123 = getelementptr [4 x i8], [4 x i8]* @.str121, i32 0, i32 0
  %124 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str121.c, i8* %123, i64 3)
  %125 = call i1 @nyx_string_equals(%nyx_string* %122, %nyx_string* %124)
  %126 = xor i1 %125, true
  br i1 %126, label %sc_and_rhs8, label %sc_and_end9
sc_and_rhs8:
  %127 = load %nyx_string*, %nyx_string** %50
  %128 = getelementptr [12 x i8], [12 x i8]* @.str122, i32 0, i32 0
  %129 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str122.c, i8* %128, i64 11)
  %130 = call i1 @nyx_string_equals(%nyx_string* %127, %nyx_string* %129)
  %131 = xor i1 %130, true
  store i1 %131, i1* %121
  br label %sc_and_end9
sc_and_end9:
  %132 = load i1, i1* %121
  br i1 %132, label %sc_and_rhs10, label %sc_and_end11
sc_and_rhs10:
  %133 = load %nyx_string*, %nyx_string** %50
  %134 = getelementptr [12 x i8], [12 x i8]* @.str123, i32 0, i32 0
  %135 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str123.c, i8* %134, i64 11)
  %136 = call i1 @nyx_string_equals(%nyx_string* %133, %nyx_string* %135)
  %137 = xor i1 %136, true
  store i1 %137, i1* %120
  br label %sc_and_end11
sc_and_end11:
  %138 = load i1, i1* %120
  br i1 %138, label %sc_and_rhs12, label %sc_and_end13
sc_and_rhs12:
  %139 = load %nyx_string*, %nyx_string** %50
  %140 = getelementptr [14 x i8], [14 x i8]* @.str124, i32 0, i32 0
  %141 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str124.c, i8* %140, i64 13)
  %142 = call i1 @nyx_string_equals(%nyx_string* %139, %nyx_string* %141)
  %143 = xor i1 %142, true
  store i1 %143, i1* %119
  br label %sc_and_end13
sc_and_end13:
  %144 = load i1, i1* %119
  br i1 %144, label %then14, label %else15
then14:
  %145 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge16
else15:
  br label %merge16
merge16:
  %146 = load %Token, %Token* %33
  ret %Token %146
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = load i64, i64* %4
  %32 = icmp slt i64 %31, 1
  br i1 %32, label %then0, label %else1
then0:
  ret i1 0
else1:
  br label %merge2
merge2:
  %33 = load { i64, i8* }*, { i64, i8* }** %3
  %34 = load i64, i64* %4
  %35 = sub i64 %34, 1
  %36 = getelementptr [6 x i8], [6 x i8]* @.slotT125, i32 0, i32 0
  %37 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %33, i64 %35, i8* %36)
  %38 = inttoptr i64 %37 to %Token*
  %39 = load %Token, %Token* %38
  %40 = alloca %Token
  store %Token %39, %Token* %40
  %41 = load { i64, i8* }*, { i64, i8* }** %3
  %42 = load i64, i64* %4
  %43 = getelementptr [6 x i8], [6 x i8]* @.slotT126, i32 0, i32 0
  %44 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %41, i64 %42, i8* %43)
  %45 = inttoptr i64 %44 to %Token*
  %46 = load %Token, %Token* %45
  %47 = alloca %Token
  store %Token %46, %Token* %47
  %48 = load %Token, %Token* %47
  %49 = call i64 @get_token_line(%Token %48)
  %50 = load %Token, %Token* %40
  %51 = call i64 @get_token_line(%Token %50)
  %52 = icmp sgt i64 %49, %51
  ret i1 %52
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = call { i64, i8* }* @parse__parse_logical_or(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %31
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = call { i64, i8* }* @parse__parse_logical_and(%SharedEnv_parse* %env.param)
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
  %37 = alloca i1
  store i1 true, i1* %37
  %38 = getelementptr [6 x i8], [6 x i8]* @.str127, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str127.c, i8* %38, i64 5)
  %40 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %39)
  br i1 %40, label %sc_or_end4, label %sc_or_rhs3
sc_or_rhs3:
  %41 = getelementptr [3 x i8], [3 x i8]* @.str128, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str128.c, i8* %41, i64 2)
  %43 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %42)
  store i1 %43, i1* %37
  br label %sc_or_end4
sc_or_end4:
  %44 = load i1, i1* %37
  br i1 %44, label %then5, label %else6
then5:
  %45 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %46 = alloca %Token
  store %Token %45, %Token* %46
  %47 = call { i64, i8* }* @parse__parse_logical_and(%SharedEnv_parse* %env.param)
  %48 = alloca { i64, i8* }*
  store { i64, i8* }* %47, { i64, i8* }** %48
  %49 = getelementptr [6 x i8], [6 x i8]* @.str129, i32 0, i32 0
  %50 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str129.c, i8* %49, i64 5)
  %51 = call { i64, i8* }* @nyx_array_new_ptr()
  %52 = load %Token, %Token* %46
  %53 = call %nyx_string* @get_token_type(%Token %52)
  %54 = ptrtoint %nyx_string* %53 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %51, i64 %54, i64 2)
  %55 = load { i64, i8* }*, { i64, i8* }** %32
  %56 = ptrtoint { i64, i8* }* %55 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %51, i64 %56, i64 5)
  %57 = load { i64, i8* }*, { i64, i8* }** %48
  %58 = ptrtoint { i64, i8* }* %57 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %51, i64 %58, i64 5)
  %59 = call { i64, i8* }* @make_astnode(%nyx_string* %50, { i64, i8* }* %51)
  store { i64, i8* }* %59, { i64, i8* }** %32
  br label %merge7
else6:
  store i1 1, i1* %33
  br label %merge7
merge7:
  br label %while_cond0
while_end2:
  %60 = load { i64, i8* }*, { i64, i8* }** %32
  ret { i64, i8* }* %60
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = call { i64, i8* }* @parse__parse_bitwise_or(%SharedEnv_parse* %env.param)
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
  %37 = alloca i1
  store i1 true, i1* %37
  %38 = getelementptr [8 x i8], [8 x i8]* @.str130, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str130.c, i8* %38, i64 7)
  %40 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %39)
  br i1 %40, label %sc_or_end4, label %sc_or_rhs3
sc_or_rhs3:
  %41 = getelementptr [4 x i8], [4 x i8]* @.str131, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str131.c, i8* %41, i64 3)
  %43 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %42)
  store i1 %43, i1* %37
  br label %sc_or_end4
sc_or_end4:
  %44 = load i1, i1* %37
  br i1 %44, label %then5, label %else6
then5:
  %45 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %46 = alloca %Token
  store %Token %45, %Token* %46
  %47 = call { i64, i8* }* @parse__parse_bitwise_or(%SharedEnv_parse* %env.param)
  %48 = alloca { i64, i8* }*
  store { i64, i8* }* %47, { i64, i8* }** %48
  %49 = getelementptr [6 x i8], [6 x i8]* @.str132, i32 0, i32 0
  %50 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str132.c, i8* %49, i64 5)
  %51 = call { i64, i8* }* @nyx_array_new_ptr()
  %52 = load %Token, %Token* %46
  %53 = call %nyx_string* @get_token_type(%Token %52)
  %54 = ptrtoint %nyx_string* %53 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %51, i64 %54, i64 2)
  %55 = load { i64, i8* }*, { i64, i8* }** %32
  %56 = ptrtoint { i64, i8* }* %55 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %51, i64 %56, i64 5)
  %57 = load { i64, i8* }*, { i64, i8* }** %48
  %58 = ptrtoint { i64, i8* }* %57 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %51, i64 %58, i64 5)
  %59 = call { i64, i8* }* @make_astnode(%nyx_string* %50, { i64, i8* }* %51)
  store { i64, i8* }* %59, { i64, i8* }** %32
  br label %merge7
else6:
  store i1 1, i1* %33
  br label %merge7
merge7:
  br label %while_cond0
while_end2:
  %60 = load { i64, i8* }*, { i64, i8* }** %32
  ret { i64, i8* }* %60
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = call { i64, i8* }* @parse__parse_bitwise_xor(%SharedEnv_parse* %env.param)
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
  %37 = getelementptr [5 x i8], [5 x i8]* @.str133, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str133.c, i8* %37, i64 4)
  %39 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %38)
  br i1 %39, label %then3, label %else4
then3:
  %40 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %41 = alloca %Token
  store %Token %40, %Token* %41
  %42 = call { i64, i8* }* @parse__parse_bitwise_xor(%SharedEnv_parse* %env.param)
  %43 = alloca { i64, i8* }*
  store { i64, i8* }* %42, { i64, i8* }** %43
  %44 = getelementptr [6 x i8], [6 x i8]* @.str134, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str134.c, i8* %44, i64 5)
  %46 = call { i64, i8* }* @nyx_array_new_ptr()
  %47 = load %Token, %Token* %41
  %48 = call %nyx_string* @get_token_type(%Token %47)
  %49 = ptrtoint %nyx_string* %48 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %46, i64 %49, i64 2)
  %50 = load { i64, i8* }*, { i64, i8* }** %32
  %51 = ptrtoint { i64, i8* }* %50 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %46, i64 %51, i64 5)
  %52 = load { i64, i8* }*, { i64, i8* }** %43
  %53 = ptrtoint { i64, i8* }* %52 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %46, i64 %53, i64 5)
  %54 = call { i64, i8* }* @make_astnode(%nyx_string* %45, { i64, i8* }* %46)
  store { i64, i8* }* %54, { i64, i8* }** %32
  br label %merge5
else4:
  store i1 1, i1* %33
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %55 = load { i64, i8* }*, { i64, i8* }** %32
  ret { i64, i8* }* %55
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = call { i64, i8* }* @parse__parse_bitwise_and(%SharedEnv_parse* %env.param)
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
  %37 = getelementptr [6 x i8], [6 x i8]* @.str135, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str135.c, i8* %37, i64 5)
  %39 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %38)
  br i1 %39, label %then3, label %else4
then3:
  %40 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %41 = alloca %Token
  store %Token %40, %Token* %41
  %42 = call { i64, i8* }* @parse__parse_bitwise_and(%SharedEnv_parse* %env.param)
  %43 = alloca { i64, i8* }*
  store { i64, i8* }* %42, { i64, i8* }** %43
  %44 = getelementptr [6 x i8], [6 x i8]* @.str136, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str136.c, i8* %44, i64 5)
  %46 = call { i64, i8* }* @nyx_array_new_ptr()
  %47 = load %Token, %Token* %41
  %48 = call %nyx_string* @get_token_type(%Token %47)
  %49 = ptrtoint %nyx_string* %48 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %46, i64 %49, i64 2)
  %50 = load { i64, i8* }*, { i64, i8* }** %32
  %51 = ptrtoint { i64, i8* }* %50 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %46, i64 %51, i64 5)
  %52 = load { i64, i8* }*, { i64, i8* }** %43
  %53 = ptrtoint { i64, i8* }* %52 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %46, i64 %53, i64 5)
  %54 = call { i64, i8* }* @make_astnode(%nyx_string* %45, { i64, i8* }* %46)
  store { i64, i8* }* %54, { i64, i8* }** %32
  br label %merge5
else4:
  store i1 1, i1* %33
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %55 = load { i64, i8* }*, { i64, i8* }** %32
  ret { i64, i8* }* %55
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = call { i64, i8* }* @parse__parse_equality(%SharedEnv_parse* %env.param)
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
  %37 = getelementptr [4 x i8], [4 x i8]* @.str137, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str137.c, i8* %37, i64 3)
  %39 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %38)
  br i1 %39, label %then3, label %else4
then3:
  %40 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %41 = alloca %Token
  store %Token %40, %Token* %41
  %42 = call { i64, i8* }* @parse__parse_equality(%SharedEnv_parse* %env.param)
  %43 = alloca { i64, i8* }*
  store { i64, i8* }* %42, { i64, i8* }** %43
  %44 = getelementptr [6 x i8], [6 x i8]* @.str138, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str138.c, i8* %44, i64 5)
  %46 = call { i64, i8* }* @nyx_array_new_ptr()
  %47 = load %Token, %Token* %41
  %48 = call %nyx_string* @get_token_type(%Token %47)
  %49 = ptrtoint %nyx_string* %48 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %46, i64 %49, i64 2)
  %50 = load { i64, i8* }*, { i64, i8* }** %32
  %51 = ptrtoint { i64, i8* }* %50 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %46, i64 %51, i64 5)
  %52 = load { i64, i8* }*, { i64, i8* }** %43
  %53 = ptrtoint { i64, i8* }* %52 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %46, i64 %53, i64 5)
  %54 = call { i64, i8* }* @make_astnode(%nyx_string* %45, { i64, i8* }* %46)
  store { i64, i8* }* %54, { i64, i8* }** %32
  br label %merge5
else4:
  store i1 1, i1* %33
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %55 = load { i64, i8* }*, { i64, i8* }** %32
  ret { i64, i8* }* %55
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = call { i64, i8* }* @parse__parse_comparison(%SharedEnv_parse* %env.param)
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
  %37 = alloca i1
  store i1 true, i1* %37
  %38 = getelementptr [12 x i8], [12 x i8]* @.str139, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str139.c, i8* %38, i64 11)
  %40 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %39)
  br i1 %40, label %sc_or_end4, label %sc_or_rhs3
sc_or_rhs3:
  %41 = getelementptr [10 x i8], [10 x i8]* @.str140, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str140.c, i8* %41, i64 9)
  %43 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %42)
  store i1 %43, i1* %37
  br label %sc_or_end4
sc_or_end4:
  %44 = load i1, i1* %37
  br i1 %44, label %then5, label %else6
then5:
  %45 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %46 = alloca %Token
  store %Token %45, %Token* %46
  %47 = call { i64, i8* }* @parse__parse_comparison(%SharedEnv_parse* %env.param)
  %48 = alloca { i64, i8* }*
  store { i64, i8* }* %47, { i64, i8* }** %48
  %49 = getelementptr [6 x i8], [6 x i8]* @.str141, i32 0, i32 0
  %50 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str141.c, i8* %49, i64 5)
  %51 = call { i64, i8* }* @nyx_array_new_ptr()
  %52 = load %Token, %Token* %46
  %53 = call %nyx_string* @get_token_type(%Token %52)
  %54 = ptrtoint %nyx_string* %53 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %51, i64 %54, i64 2)
  %55 = load { i64, i8* }*, { i64, i8* }** %32
  %56 = ptrtoint { i64, i8* }* %55 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %51, i64 %56, i64 5)
  %57 = load { i64, i8* }*, { i64, i8* }** %48
  %58 = ptrtoint { i64, i8* }* %57 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %51, i64 %58, i64 5)
  %59 = call { i64, i8* }* @make_astnode(%nyx_string* %50, { i64, i8* }* %51)
  store { i64, i8* }* %59, { i64, i8* }** %32
  br label %merge7
else6:
  store i1 1, i1* %33
  br label %merge7
merge7:
  br label %while_cond0
while_end2:
  %60 = load { i64, i8* }*, { i64, i8* }** %32
  ret { i64, i8* }* %60
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = call { i64, i8* }* @parse__parse_range(%SharedEnv_parse* %env.param)
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
  %37 = alloca i1
  store i1 true, i1* %37
  %38 = alloca i1
  store i1 true, i1* %38
  %39 = alloca i1
  store i1 true, i1* %39
  %40 = getelementptr [5 x i8], [5 x i8]* @.str142, i32 0, i32 0
  %41 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str142.c, i8* %40, i64 4)
  %42 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %41)
  br i1 %42, label %sc_or_end4, label %sc_or_rhs3
sc_or_rhs3:
  %43 = getelementptr [8 x i8], [8 x i8]* @.str143, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str143.c, i8* %43, i64 7)
  %45 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %44)
  store i1 %45, i1* %39
  br label %sc_or_end4
sc_or_end4:
  %46 = load i1, i1* %39
  br i1 %46, label %sc_or_end6, label %sc_or_rhs5
sc_or_rhs5:
  %47 = getelementptr [11 x i8], [11 x i8]* @.str144, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str144.c, i8* %47, i64 10)
  %49 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %48)
  store i1 %49, i1* %38
  br label %sc_or_end6
sc_or_end6:
  %50 = load i1, i1* %38
  br i1 %50, label %sc_or_end8, label %sc_or_rhs7
sc_or_rhs7:
  %51 = getelementptr [14 x i8], [14 x i8]* @.str145, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str145.c, i8* %51, i64 13)
  %53 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %52)
  store i1 %53, i1* %37
  br label %sc_or_end8
sc_or_end8:
  %54 = load i1, i1* %37
  br i1 %54, label %then9, label %else10
then9:
  %55 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %56 = alloca %Token
  store %Token %55, %Token* %56
  %57 = call { i64, i8* }* @parse__parse_range(%SharedEnv_parse* %env.param)
  %58 = alloca { i64, i8* }*
  store { i64, i8* }* %57, { i64, i8* }** %58
  %59 = getelementptr [6 x i8], [6 x i8]* @.str146, i32 0, i32 0
  %60 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str146.c, i8* %59, i64 5)
  %61 = call { i64, i8* }* @nyx_array_new_ptr()
  %62 = load %Token, %Token* %56
  %63 = call %nyx_string* @get_token_type(%Token %62)
  %64 = ptrtoint %nyx_string* %63 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %61, i64 %64, i64 2)
  %65 = load { i64, i8* }*, { i64, i8* }** %32
  %66 = ptrtoint { i64, i8* }* %65 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %61, i64 %66, i64 5)
  %67 = load { i64, i8* }*, { i64, i8* }** %58
  %68 = ptrtoint { i64, i8* }* %67 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %61, i64 %68, i64 5)
  %69 = call { i64, i8* }* @make_astnode(%nyx_string* %60, { i64, i8* }* %61)
  store { i64, i8* }* %69, { i64, i8* }** %32
  br label %merge11
else10:
  store i1 1, i1* %33
  br label %merge11
merge11:
  br label %while_cond0
while_end2:
  %70 = load { i64, i8* }*, { i64, i8* }** %32
  ret { i64, i8* }* %70
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = call { i64, i8* }* @parse__parse_addition(%SharedEnv_parse* %env.param)
  %32 = alloca { i64, i8* }*
  store { i64, i8* }* %31, { i64, i8* }** %32
  %33 = getelementptr [16 x i8], [16 x i8]* @.str147, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str147.c, i8* %33, i64 15)
  %35 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %34)
  br i1 %35, label %then0, label %else1
then0:
  %36 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %37 = call { i64, i8* }* @parse__parse_addition(%SharedEnv_parse* %env.param)
  %38 = alloca { i64, i8* }*
  store { i64, i8* }* %37, { i64, i8* }** %38
  %39 = getelementptr [6 x i8], [6 x i8]* @.str148, i32 0, i32 0
  %40 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str148.c, i8* %39, i64 5)
  %41 = call { i64, i8* }* @nyx_array_new_ptr()
  %42 = load { i64, i8* }*, { i64, i8* }** %32
  %43 = ptrtoint { i64, i8* }* %42 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %41, i64 %43, i64 5)
  %44 = load { i64, i8* }*, { i64, i8* }** %38
  %45 = ptrtoint { i64, i8* }* %44 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %41, i64 %45, i64 5)
  %46 = getelementptr [5 x i8], [5 x i8]* @.str149, i32 0, i32 0
  %47 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str149.c, i8* %46, i64 4)
  %48 = ptrtoint %nyx_string* %47 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %41, i64 %48, i64 2)
  %49 = call { i64, i8* }* @make_astnode(%nyx_string* %40, { i64, i8* }* %41)
  ret { i64, i8* }* %49
else1:
  br label %merge2
merge2:
  %50 = getelementptr [6 x i8], [6 x i8]* @.str150, i32 0, i32 0
  %51 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str150.c, i8* %50, i64 5)
  %52 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %51)
  br i1 %52, label %then3, label %else4
then3:
  %53 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %54 = call { i64, i8* }* @parse__parse_addition(%SharedEnv_parse* %env.param)
  %55 = alloca { i64, i8* }*
  store { i64, i8* }* %54, { i64, i8* }** %55
  %56 = getelementptr [6 x i8], [6 x i8]* @.str151, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str151.c, i8* %56, i64 5)
  %58 = call { i64, i8* }* @nyx_array_new_ptr()
  %59 = load { i64, i8* }*, { i64, i8* }** %32
  %60 = ptrtoint { i64, i8* }* %59 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %58, i64 %60, i64 5)
  %61 = load { i64, i8* }*, { i64, i8* }** %55
  %62 = ptrtoint { i64, i8* }* %61 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %58, i64 %62, i64 5)
  %63 = getelementptr [6 x i8], [6 x i8]* @.str152, i32 0, i32 0
  %64 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str152.c, i8* %63, i64 5)
  %65 = ptrtoint %nyx_string* %64 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %58, i64 %65, i64 2)
  %66 = call { i64, i8* }* @make_astnode(%nyx_string* %57, { i64, i8* }* %58)
  ret { i64, i8* }* %66
else4:
  br label %merge5
merge5:
  %67 = load { i64, i8* }*, { i64, i8* }** %32
  ret { i64, i8* }* %67
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = call { i64, i8* }* @parse__parse_shift(%SharedEnv_parse* %env.param)
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
  %37 = alloca i1
  store i1 true, i1* %37
  %38 = getelementptr [5 x i8], [5 x i8]* @.str153, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str153.c, i8* %38, i64 4)
  %40 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %39)
  br i1 %40, label %sc_or_end4, label %sc_or_rhs3
sc_or_rhs3:
  %41 = getelementptr [6 x i8], [6 x i8]* @.str154, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str154.c, i8* %41, i64 5)
  %43 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %42)
  store i1 %43, i1* %37
  br label %sc_or_end4
sc_or_end4:
  %44 = load i1, i1* %37
  br i1 %44, label %then5, label %else6
then5:
  %45 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %46 = alloca %Token
  store %Token %45, %Token* %46
  %47 = call { i64, i8* }* @parse__parse_shift(%SharedEnv_parse* %env.param)
  %48 = alloca { i64, i8* }*
  store { i64, i8* }* %47, { i64, i8* }** %48
  %49 = getelementptr [6 x i8], [6 x i8]* @.str155, i32 0, i32 0
  %50 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str155.c, i8* %49, i64 5)
  %51 = call { i64, i8* }* @nyx_array_new_ptr()
  %52 = load %Token, %Token* %46
  %53 = call %nyx_string* @get_token_type(%Token %52)
  %54 = ptrtoint %nyx_string* %53 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %51, i64 %54, i64 2)
  %55 = load { i64, i8* }*, { i64, i8* }** %32
  %56 = ptrtoint { i64, i8* }* %55 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %51, i64 %56, i64 5)
  %57 = load { i64, i8* }*, { i64, i8* }** %48
  %58 = ptrtoint { i64, i8* }* %57 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %51, i64 %58, i64 5)
  %59 = call { i64, i8* }* @make_astnode(%nyx_string* %50, { i64, i8* }* %51)
  store { i64, i8* }* %59, { i64, i8* }** %32
  br label %merge7
else6:
  store i1 1, i1* %33
  br label %merge7
merge7:
  br label %while_cond0
while_end2:
  %60 = load { i64, i8* }*, { i64, i8* }** %32
  ret { i64, i8* }* %60
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = call { i64, i8* }* @parse__parse_multiplication(%SharedEnv_parse* %env.param)
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
  %37 = alloca i1
  store i1 true, i1* %37
  %38 = getelementptr [11 x i8], [11 x i8]* @.str156, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str156.c, i8* %38, i64 10)
  %40 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %39)
  br i1 %40, label %sc_or_end4, label %sc_or_rhs3
sc_or_rhs3:
  %41 = getelementptr [12 x i8], [12 x i8]* @.str157, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str157.c, i8* %41, i64 11)
  %43 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %42)
  store i1 %43, i1* %37
  br label %sc_or_end4
sc_or_end4:
  %44 = load i1, i1* %37
  br i1 %44, label %then5, label %else6
then5:
  %45 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %46 = alloca %Token
  store %Token %45, %Token* %46
  %47 = call { i64, i8* }* @parse__parse_multiplication(%SharedEnv_parse* %env.param)
  %48 = alloca { i64, i8* }*
  store { i64, i8* }* %47, { i64, i8* }** %48
  %49 = getelementptr [6 x i8], [6 x i8]* @.str158, i32 0, i32 0
  %50 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str158.c, i8* %49, i64 5)
  %51 = call { i64, i8* }* @nyx_array_new_ptr()
  %52 = load %Token, %Token* %46
  %53 = call %nyx_string* @get_token_type(%Token %52)
  %54 = ptrtoint %nyx_string* %53 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %51, i64 %54, i64 2)
  %55 = load { i64, i8* }*, { i64, i8* }** %32
  %56 = ptrtoint { i64, i8* }* %55 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %51, i64 %56, i64 5)
  %57 = load { i64, i8* }*, { i64, i8* }** %48
  %58 = ptrtoint { i64, i8* }* %57 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %51, i64 %58, i64 5)
  %59 = call { i64, i8* }* @make_astnode(%nyx_string* %50, { i64, i8* }* %51)
  store { i64, i8* }* %59, { i64, i8* }** %32
  br label %merge7
else6:
  store i1 1, i1* %33
  br label %merge7
merge7:
  br label %while_cond0
while_end2:
  %60 = load { i64, i8* }*, { i64, i8* }** %32
  ret { i64, i8* }* %60
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = call { i64, i8* }* @parse__parse_power(%SharedEnv_parse* %env.param)
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
  %37 = alloca i1
  store i1 false, i1* %37
  %38 = getelementptr [5 x i8], [5 x i8]* @.str159, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str159.c, i8* %38, i64 4)
  %40 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %39)
  br i1 %40, label %sc_and_rhs3, label %sc_and_end4
sc_and_rhs3:
  %41 = call i1 @parse__is_on_new_line(%SharedEnv_parse* %env.param)
  store i1 %41, i1* %37
  br label %sc_and_end4
sc_and_end4:
  %42 = load i1, i1* %37
  br i1 %42, label %then5, label %else6
then5:
  store i1 1, i1* %33
  br label %merge7
else6:
  %43 = alloca i1
  store i1 true, i1* %43
  %44 = alloca i1
  store i1 true, i1* %44
  %45 = getelementptr [5 x i8], [5 x i8]* @.str160, i32 0, i32 0
  %46 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str160.c, i8* %45, i64 4)
  %47 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %46)
  br i1 %47, label %sc_or_end9, label %sc_or_rhs8
sc_or_rhs8:
  %48 = getelementptr [6 x i8], [6 x i8]* @.str161, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str161.c, i8* %48, i64 5)
  %50 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %49)
  store i1 %50, i1* %44
  br label %sc_or_end9
sc_or_end9:
  %51 = load i1, i1* %44
  br i1 %51, label %sc_or_end11, label %sc_or_rhs10
sc_or_rhs10:
  %52 = getelementptr [8 x i8], [8 x i8]* @.str162, i32 0, i32 0
  %53 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str162.c, i8* %52, i64 7)
  %54 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %53)
  store i1 %54, i1* %43
  br label %sc_or_end11
sc_or_end11:
  %55 = load i1, i1* %43
  br i1 %55, label %then12, label %else13
then12:
  %56 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %57 = alloca %Token
  store %Token %56, %Token* %57
  %58 = call { i64, i8* }* @parse__parse_power(%SharedEnv_parse* %env.param)
  %59 = alloca { i64, i8* }*
  store { i64, i8* }* %58, { i64, i8* }** %59
  %60 = getelementptr [6 x i8], [6 x i8]* @.str163, i32 0, i32 0
  %61 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str163.c, i8* %60, i64 5)
  %62 = call { i64, i8* }* @nyx_array_new_ptr()
  %63 = load %Token, %Token* %57
  %64 = call %nyx_string* @get_token_type(%Token %63)
  %65 = ptrtoint %nyx_string* %64 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %62, i64 %65, i64 2)
  %66 = load { i64, i8* }*, { i64, i8* }** %32
  %67 = ptrtoint { i64, i8* }* %66 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %62, i64 %67, i64 5)
  %68 = load { i64, i8* }*, { i64, i8* }** %59
  %69 = ptrtoint { i64, i8* }* %68 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %62, i64 %69, i64 5)
  %70 = call { i64, i8* }* @make_astnode(%nyx_string* %61, { i64, i8* }* %62)
  store { i64, i8* }* %70, { i64, i8* }** %32
  br label %merge14
else13:
  store i1 1, i1* %33
  br label %merge14
merge14:
  br label %merge7
merge7:
  br label %while_cond0
while_end2:
  %71 = load { i64, i8* }*, { i64, i8* }** %32
  ret { i64, i8* }* %71
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = call { i64, i8* }* @parse__parse_unary(%SharedEnv_parse* %env.param)
  %32 = alloca { i64, i8* }*
  store { i64, i8* }* %31, { i64, i8* }** %32
  %33 = getelementptr [6 x i8], [6 x i8]* @.str164, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str164.c, i8* %33, i64 5)
  %35 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %34)
  br i1 %35, label %then0, label %else1
then0:
  %36 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %37 = call { i64, i8* }* @parse__parse_power(%SharedEnv_parse* %env.param)
  %38 = alloca { i64, i8* }*
  store { i64, i8* }* %37, { i64, i8* }** %38
  %39 = getelementptr [6 x i8], [6 x i8]* @.str165, i32 0, i32 0
  %40 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str165.c, i8* %39, i64 5)
  %41 = call { i64, i8* }* @nyx_array_new_ptr()
  %42 = getelementptr [6 x i8], [6 x i8]* @.str166, i32 0, i32 0
  %43 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str166.c, i8* %42, i64 5)
  %44 = ptrtoint %nyx_string* %43 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %41, i64 %44, i64 2)
  %45 = load { i64, i8* }*, { i64, i8* }** %32
  %46 = ptrtoint { i64, i8* }* %45 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %41, i64 %46, i64 5)
  %47 = load { i64, i8* }*, { i64, i8* }** %38
  %48 = ptrtoint { i64, i8* }* %47 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %41, i64 %48, i64 5)
  %49 = call { i64, i8* }* @make_astnode(%nyx_string* %40, { i64, i8* }* %41)
  ret { i64, i8* }* %49
else1:
  br label %merge2
merge2:
  %50 = load { i64, i8* }*, { i64, i8* }** %32
  ret { i64, i8* }* %50
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = getelementptr [6 x i8], [6 x i8]* @.str167, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str167.c, i8* %31, i64 5)
  %33 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %32)
  br i1 %33, label %then0, label %else1
then0:
  %34 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %35 = call { i64, i8* }* @parse__parse_unary(%SharedEnv_parse* %env.param)
  %36 = alloca { i64, i8* }*
  store { i64, i8* }* %35, { i64, i8* }** %36
  %37 = getelementptr [11 x i8], [11 x i8]* @.str168, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str168.c, i8* %37, i64 10)
  %39 = call { i64, i8* }* @nyx_array_new_ptr()
  %40 = load { i64, i8* }*, { i64, i8* }** %36
  %41 = ptrtoint { i64, i8* }* %40 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %39, i64 %41, i64 5)
  %42 = call { i64, i8* }* @make_astnode(%nyx_string* %38, { i64, i8* }* %39)
  ret { i64, i8* }* %42
else1:
  br label %merge2
merge2:
  %43 = alloca i1
  store i1 true, i1* %43
  %44 = alloca i1
  store i1 true, i1* %44
  %45 = getelementptr [6 x i8], [6 x i8]* @.str169, i32 0, i32 0
  %46 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str169.c, i8* %45, i64 5)
  %47 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %46)
  br i1 %47, label %sc_or_end4, label %sc_or_rhs3
sc_or_rhs3:
  %48 = getelementptr [4 x i8], [4 x i8]* @.str170, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str170.c, i8* %48, i64 3)
  %50 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %49)
  store i1 %50, i1* %44
  br label %sc_or_end4
sc_or_end4:
  %51 = load i1, i1* %44
  br i1 %51, label %sc_or_end6, label %sc_or_rhs5
sc_or_rhs5:
  %52 = getelementptr [6 x i8], [6 x i8]* @.str171, i32 0, i32 0
  %53 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str171.c, i8* %52, i64 5)
  %54 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %53)
  store i1 %54, i1* %43
  br label %sc_or_end6
sc_or_end6:
  %55 = load i1, i1* %43
  br i1 %55, label %then7, label %else8
then7:
  %56 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %57 = alloca %Token
  store %Token %56, %Token* %57
  %58 = call { i64, i8* }* @parse__parse_unary(%SharedEnv_parse* %env.param)
  %59 = alloca { i64, i8* }*
  store { i64, i8* }* %58, { i64, i8* }** %59
  %60 = getelementptr [5 x i8], [5 x i8]* @.str172, i32 0, i32 0
  %61 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str172.c, i8* %60, i64 4)
  %62 = call { i64, i8* }* @nyx_array_new_ptr()
  %63 = load %Token, %Token* %57
  %64 = call %nyx_string* @get_token_type(%Token %63)
  %65 = ptrtoint %nyx_string* %64 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %62, i64 %65, i64 2)
  %66 = load { i64, i8* }*, { i64, i8* }** %59
  %67 = ptrtoint { i64, i8* }* %66 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %62, i64 %67, i64 5)
  %68 = call { i64, i8* }* @make_astnode(%nyx_string* %61, { i64, i8* }* %62)
  ret { i64, i8* }* %68
else8:
  br label %merge9
merge9:
  %69 = getelementptr [4 x i8], [4 x i8]* @.str173, i32 0, i32 0
  %70 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str173.c, i8* %69, i64 3)
  %71 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %70)
  br i1 %71, label %then10, label %else11
then10:
  %72 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %73 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %74 = call %nyx_string* @get_token_value(%Token %73)
  %75 = alloca %nyx_string*
  store %nyx_string* %74, %nyx_string** %75
  %76 = load %nyx_string*, %nyx_string** %75
  %77 = getelementptr [4 x i8], [4 x i8]* @.str174, i32 0, i32 0
  %78 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str174.c, i8* %77, i64 3)
  %79 = call i1 @nyx_string_equals(%nyx_string* %76, %nyx_string* %78)
  br i1 %79, label %then13, label %else14
then13:
  %80 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %81 = call { i64, i8* }* @parse__parse_unary(%SharedEnv_parse* %env.param)
  %82 = alloca { i64, i8* }*
  store { i64, i8* }* %81, { i64, i8* }** %82
  %83 = getelementptr [12 x i8], [12 x i8]* @.str175, i32 0, i32 0
  %84 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str175.c, i8* %83, i64 11)
  %85 = call { i64, i8* }* @nyx_array_new_ptr()
  %86 = load { i64, i8* }*, { i64, i8* }** %82
  %87 = ptrtoint { i64, i8* }* %86 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %85, i64 %87, i64 5)
  %88 = call { i64, i8* }* @make_astnode(%nyx_string* %84, { i64, i8* }* %85)
  ret { i64, i8* }* %88
else14:
  br label %merge15
merge15:
  %89 = call { i64, i8* }* @parse__parse_unary(%SharedEnv_parse* %env.param)
  %90 = alloca { i64, i8* }*
  store { i64, i8* }* %89, { i64, i8* }** %90
  %91 = getelementptr [8 x i8], [8 x i8]* @.str176, i32 0, i32 0
  %92 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str176.c, i8* %91, i64 7)
  %93 = call { i64, i8* }* @nyx_array_new_ptr()
  %94 = load { i64, i8* }*, { i64, i8* }** %90
  %95 = ptrtoint { i64, i8* }* %94 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %93, i64 %95, i64 5)
  %96 = call { i64, i8* }* @make_astnode(%nyx_string* %92, { i64, i8* }* %93)
  ret { i64, i8* }* %96
else11:
  br label %merge12
merge12:
  %97 = getelementptr [5 x i8], [5 x i8]* @.str177, i32 0, i32 0
  %98 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str177.c, i8* %97, i64 4)
  %99 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %98)
  br i1 %99, label %then16, label %else17
then16:
  %100 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %101 = getelementptr [6 x i8], [6 x i8]* @.str178, i32 0, i32 0
  %102 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str178.c, i8* %101, i64 5)
  %103 = call { i64, i8* }* @nyx_array_new_ptr()
  %104 = call { i64, i8* }* @parse__parse_deref_operand(%SharedEnv_parse* %env.param)
  %105 = ptrtoint { i64, i8* }* %104 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %103, i64 %105, i64 5)
  %106 = call { i64, i8* }* @make_astnode(%nyx_string* %102, { i64, i8* }* %103)
  %107 = alloca { i64, i8* }*
  store { i64, i8* }* %106, { i64, i8* }** %107
  %108 = load { i64, i8* }*, { i64, i8* }** %107
  %109 = call { i64, i8* }* @parse__parse_cast_suffix(%SharedEnv_parse* %env.param, { i64, i8* }* %108)
  ret { i64, i8* }* %109
else17:
  br label %merge18
merge18:
  %110 = call { i64, i8* }* @parse__parse_cast(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %110
}

define internal { i64, i8* }* @parse__parse_deref_operand(%SharedEnv_parse* %env.param) {
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = getelementptr [5 x i8], [5 x i8]* @.str179, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str179.c, i8* %31, i64 4)
  %33 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %32)
  br i1 %33, label %then0, label %else1
then0:
  %34 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %35 = getelementptr [6 x i8], [6 x i8]* @.str180, i32 0, i32 0
  %36 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str180.c, i8* %35, i64 5)
  %37 = call { i64, i8* }* @nyx_array_new_ptr()
  %38 = call { i64, i8* }* @parse__parse_deref_operand(%SharedEnv_parse* %env.param)
  %39 = ptrtoint { i64, i8* }* %38 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %37, i64 %39, i64 5)
  %40 = call { i64, i8* }* @make_astnode(%nyx_string* %36, { i64, i8* }* %37)
  ret { i64, i8* }* %40
else1:
  br label %merge2
merge2:
  %41 = alloca i1
  store i1 true, i1* %41
  %42 = alloca i1
  store i1 true, i1* %42
  %43 = alloca i1
  store i1 true, i1* %43
  %44 = alloca i1
  store i1 true, i1* %44
  %45 = getelementptr [4 x i8], [4 x i8]* @.str181, i32 0, i32 0
  %46 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str181.c, i8* %45, i64 3)
  %47 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %46)
  br i1 %47, label %sc_or_end4, label %sc_or_rhs3
sc_or_rhs3:
  %48 = getelementptr [6 x i8], [6 x i8]* @.str182, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str182.c, i8* %48, i64 5)
  %50 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %49)
  store i1 %50, i1* %44
  br label %sc_or_end4
sc_or_end4:
  %51 = load i1, i1* %44
  br i1 %51, label %sc_or_end6, label %sc_or_rhs5
sc_or_rhs5:
  %52 = getelementptr [4 x i8], [4 x i8]* @.str183, i32 0, i32 0
  %53 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str183.c, i8* %52, i64 3)
  %54 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %53)
  store i1 %54, i1* %43
  br label %sc_or_end6
sc_or_end6:
  %55 = load i1, i1* %43
  br i1 %55, label %sc_or_end8, label %sc_or_rhs7
sc_or_rhs7:
  %56 = getelementptr [6 x i8], [6 x i8]* @.str184, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str184.c, i8* %56, i64 5)
  %58 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %57)
  store i1 %58, i1* %42
  br label %sc_or_end8
sc_or_end8:
  %59 = load i1, i1* %42
  br i1 %59, label %sc_or_end10, label %sc_or_rhs9
sc_or_rhs9:
  %60 = getelementptr [6 x i8], [6 x i8]* @.str185, i32 0, i32 0
  %61 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str185.c, i8* %60, i64 5)
  %62 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %61)
  store i1 %62, i1* %41
  br label %sc_or_end10
sc_or_end10:
  %63 = load i1, i1* %41
  br i1 %63, label %then11, label %else12
then11:
  %64 = call { i64, i8* }* @parse__parse_unary(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %64
else12:
  br label %merge13
merge13:
  %65 = call { i64, i8* }* @parse__parse_postfix(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %65
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = call { i64, i8* }* @parse__parse_postfix(%SharedEnv_parse* %env.param)
  %32 = call { i64, i8* }* @parse__parse_cast_suffix(%SharedEnv_parse* %env.param, { i64, i8* }* %31)
  ret { i64, i8* }* %32
}

define internal { i64, i8* }* @parse__parse_cast_suffix(%SharedEnv_parse* %env.param, { i64, i8* }* %base.param) {
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = alloca { i64, i8* }*
  store { i64, i8* }* %base.param, { i64, i8* }** %31
  %32 = load { i64, i8* }*, { i64, i8* }** %31
  %33 = alloca { i64, i8* }*
  store { i64, i8* }* %32, { i64, i8* }** %33
  %34 = alloca i1
  store i1 0, i1* %34
  %35 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %36 = load i1, i1* %34
  %37 = xor i1 %36, true
  br i1 %37, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %35)
  %38 = getelementptr [3 x i8], [3 x i8]* @.str186, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str186.c, i8* %38, i64 2)
  %40 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %39)
  br i1 %40, label %then3, label %else4
then3:
  %41 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %42 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %43 = alloca %nyx_string*
  store %nyx_string* %42, %nyx_string** %43
  %44 = getelementptr [5 x i8], [5 x i8]* @.str187, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str187.c, i8* %44, i64 4)
  %46 = call { i64, i8* }* @nyx_array_new_ptr()
  %47 = load { i64, i8* }*, { i64, i8* }** %33
  %48 = ptrtoint { i64, i8* }* %47 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %46, i64 %48, i64 5)
  %49 = load %nyx_string*, %nyx_string** %43
  %50 = ptrtoint %nyx_string* %49 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %46, i64 %50, i64 2)
  %51 = call { i64, i8* }* @make_astnode(%nyx_string* %45, { i64, i8* }* %46)
  store { i64, i8* }* %51, { i64, i8* }** %33
  br label %merge5
else4:
  store i1 1, i1* %34
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %52 = load { i64, i8* }*, { i64, i8* }** %33
  ret { i64, i8* }* %52
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = load i64, i64* %4
  %32 = add i64 %31, 1
  %33 = alloca i64
  store i64 %32, i64* %33
  %34 = load i64, i64* %33
  %35 = load { i64, i8* }*, { i64, i8* }** %3
  %36 = call i64 @nyx_array_length({ i64, i8* }* %35)
  %37 = icmp sge i64 %34, %36
  br i1 %37, label %then0, label %else1
then0:
  ret i1 0
else1:
  br label %merge2
merge2:
  %38 = load { i64, i8* }*, { i64, i8* }** %3
  %39 = load i64, i64* %33
  %40 = getelementptr [6 x i8], [6 x i8]* @.slotT188, i32 0, i32 0
  %41 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %38, i64 %39, i8* %40)
  %42 = inttoptr i64 %41 to %Token*
  %43 = load %Token, %Token* %42
  %44 = alloca %Token
  store %Token %43, %Token* %44
  %45 = load %Token, %Token* %44
  %46 = call %nyx_string* @get_token_type(%Token %45)
  %47 = getelementptr [11 x i8], [11 x i8]* @.str189, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str189.c, i8* %47, i64 10)
  %49 = call i1 @nyx_string_equals(%nyx_string* %46, %nyx_string* %48)
  %50 = xor i1 %49, true
  br i1 %50, label %then3, label %else4
then3:
  ret i1 0
else4:
  br label %merge5
merge5:
  %51 = alloca i64
  store i64 1, i64* %51
  %52 = load i64, i64* %33
  %53 = add i64 %52, 1
  store i64 %53, i64* %33
  %54 = call i8* @llvm.stacksave()
  br label %while_cond6
while_cond6:
  %55 = alloca i1
  store i1 false, i1* %55
  %56 = load i64, i64* %33
  %57 = load { i64, i8* }*, { i64, i8* }** %3
  %58 = call i64 @nyx_array_length({ i64, i8* }* %57)
  %59 = icmp slt i64 %56, %58
  br i1 %59, label %sc_and_rhs9, label %sc_and_end10
sc_and_rhs9:
  %60 = load i64, i64* %51
  %61 = icmp sgt i64 %60, 0
  store i1 %61, i1* %55
  br label %sc_and_end10
sc_and_end10:
  %62 = load i1, i1* %55
  br i1 %62, label %while_body7, label %while_end8
while_body7:
  call void @llvm.stackrestore(i8* %54)
  %63 = load { i64, i8* }*, { i64, i8* }** %3
  %64 = load i64, i64* %33
  %65 = getelementptr [6 x i8], [6 x i8]* @.slotT190, i32 0, i32 0
  %66 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %63, i64 %64, i8* %65)
  %67 = inttoptr i64 %66 to %Token*
  %68 = load %Token, %Token* %67
  %69 = alloca %Token
  store %Token %68, %Token* %69
  %70 = load %Token, %Token* %69
  %71 = call %nyx_string* @get_token_type(%Token %70)
  %72 = alloca %nyx_string*
  store %nyx_string* %71, %nyx_string** %72
  %73 = load %nyx_string*, %nyx_string** %72
  %74 = getelementptr [5 x i8], [5 x i8]* @.str191, i32 0, i32 0
  %75 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str191.c, i8* %74, i64 4)
  %76 = call i1 @nyx_string_equals(%nyx_string* %73, %nyx_string* %75)
  br i1 %76, label %then11, label %else12
then11:
  %77 = load i64, i64* %51
  %78 = add i64 %77, 1
  store i64 %78, i64* %51
  br label %merge13
else12:
  %79 = load %nyx_string*, %nyx_string** %72
  %80 = getelementptr [8 x i8], [8 x i8]* @.str192, i32 0, i32 0
  %81 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str192.c, i8* %80, i64 7)
  %82 = call i1 @nyx_string_equals(%nyx_string* %79, %nyx_string* %81)
  br i1 %82, label %then14, label %else15
then14:
  %83 = load i64, i64* %51
  %84 = sub i64 %83, 1
  store i64 %84, i64* %51
  br label %merge16
else15:
  %85 = load %nyx_string*, %nyx_string** %72
  %86 = getelementptr [12 x i8], [12 x i8]* @.str193, i32 0, i32 0
  %87 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str193.c, i8* %86, i64 11)
  %88 = call i1 @nyx_string_equals(%nyx_string* %85, %nyx_string* %87)
  br i1 %88, label %then17, label %else18
then17:
  %89 = load i64, i64* %51
  %90 = icmp sge i64 %89, 2
  br i1 %90, label %then20, label %else21
then20:
  %91 = load i64, i64* %51
  %92 = sub i64 %91, 2
  store i64 %92, i64* %51
  br label %merge22
else21:
  ret i1 0
merge22:
  br label %merge19
else18:
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
  %106 = alloca i1
  store i1 true, i1* %106
  %107 = alloca i1
  store i1 true, i1* %107
  %108 = alloca i1
  store i1 true, i1* %108
  %109 = load %nyx_string*, %nyx_string** %72
  %110 = getelementptr [11 x i8], [11 x i8]* @.str194, i32 0, i32 0
  %111 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str194.c, i8* %110, i64 10)
  %112 = call i1 @nyx_string_equals(%nyx_string* %109, %nyx_string* %111)
  br i1 %112, label %sc_or_end24, label %sc_or_rhs23
sc_or_rhs23:
  %113 = load %nyx_string*, %nyx_string** %72
  %114 = getelementptr [6 x i8], [6 x i8]* @.str195, i32 0, i32 0
  %115 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str195.c, i8* %114, i64 5)
  %116 = call i1 @nyx_string_equals(%nyx_string* %113, %nyx_string* %115)
  store i1 %116, i1* %108
  br label %sc_or_end24
sc_or_end24:
  %117 = load i1, i1* %108
  br i1 %117, label %sc_or_end26, label %sc_or_rhs25
sc_or_rhs25:
  %118 = load %nyx_string*, %nyx_string** %72
  %119 = getelementptr [5 x i8], [5 x i8]* @.str196, i32 0, i32 0
  %120 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str196.c, i8* %119, i64 4)
  %121 = call i1 @nyx_string_equals(%nyx_string* %118, %nyx_string* %120)
  store i1 %121, i1* %107
  br label %sc_or_end26
sc_or_end26:
  %122 = load i1, i1* %107
  br i1 %122, label %sc_or_end28, label %sc_or_rhs27
sc_or_rhs27:
  %123 = load %nyx_string*, %nyx_string** %72
  %124 = getelementptr [4 x i8], [4 x i8]* @.str197, i32 0, i32 0
  %125 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str197.c, i8* %124, i64 3)
  %126 = call i1 @nyx_string_equals(%nyx_string* %123, %nyx_string* %125)
  store i1 %126, i1* %106
  br label %sc_or_end28
sc_or_end28:
  %127 = load i1, i1* %106
  br i1 %127, label %sc_or_end30, label %sc_or_rhs29
sc_or_rhs29:
  %128 = load %nyx_string*, %nyx_string** %72
  %129 = getelementptr [9 x i8], [9 x i8]* @.str198, i32 0, i32 0
  %130 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str198.c, i8* %129, i64 8)
  %131 = call i1 @nyx_string_equals(%nyx_string* %128, %nyx_string* %130)
  store i1 %131, i1* %105
  br label %sc_or_end30
sc_or_end30:
  %132 = load i1, i1* %105
  br i1 %132, label %sc_or_end32, label %sc_or_rhs31
sc_or_rhs31:
  %133 = load %nyx_string*, %nyx_string** %72
  %134 = getelementptr [3 x i8], [3 x i8]* @.str199, i32 0, i32 0
  %135 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str199.c, i8* %134, i64 2)
  %136 = call i1 @nyx_string_equals(%nyx_string* %133, %nyx_string* %135)
  store i1 %136, i1* %104
  br label %sc_or_end32
sc_or_end32:
  %137 = load i1, i1* %104
  br i1 %137, label %sc_or_end34, label %sc_or_rhs33
sc_or_rhs33:
  %138 = load %nyx_string*, %nyx_string** %72
  %139 = getelementptr [4 x i8], [4 x i8]* @.str200, i32 0, i32 0
  %140 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str200.c, i8* %139, i64 3)
  %141 = call i1 @nyx_string_equals(%nyx_string* %138, %nyx_string* %140)
  store i1 %141, i1* %103
  br label %sc_or_end34
sc_or_end34:
  %142 = load i1, i1* %103
  br i1 %142, label %sc_or_end36, label %sc_or_rhs35
sc_or_rhs35:
  %143 = load %nyx_string*, %nyx_string** %72
  %144 = getelementptr [5 x i8], [5 x i8]* @.str201, i32 0, i32 0
  %145 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str201.c, i8* %144, i64 4)
  %146 = call i1 @nyx_string_equals(%nyx_string* %143, %nyx_string* %145)
  store i1 %146, i1* %102
  br label %sc_or_end36
sc_or_end36:
  %147 = load i1, i1* %102
  br i1 %147, label %sc_or_end38, label %sc_or_rhs37
sc_or_rhs37:
  %148 = load %nyx_string*, %nyx_string** %72
  %149 = getelementptr [5 x i8], [5 x i8]* @.str202, i32 0, i32 0
  %150 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str202.c, i8* %149, i64 4)
  %151 = call i1 @nyx_string_equals(%nyx_string* %148, %nyx_string* %150)
  store i1 %151, i1* %101
  br label %sc_or_end38
sc_or_end38:
  %152 = load i1, i1* %101
  br i1 %152, label %sc_or_end40, label %sc_or_rhs39
sc_or_rhs39:
  %153 = load %nyx_string*, %nyx_string** %72
  %154 = getelementptr [11 x i8], [11 x i8]* @.str203, i32 0, i32 0
  %155 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str203.c, i8* %154, i64 10)
  %156 = call i1 @nyx_string_equals(%nyx_string* %153, %nyx_string* %155)
  store i1 %156, i1* %100
  br label %sc_or_end40
sc_or_end40:
  %157 = load i1, i1* %100
  br i1 %157, label %sc_or_end42, label %sc_or_rhs41
sc_or_rhs41:
  %158 = load %nyx_string*, %nyx_string** %72
  %159 = getelementptr [12 x i8], [12 x i8]* @.str204, i32 0, i32 0
  %160 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str204.c, i8* %159, i64 11)
  %161 = call i1 @nyx_string_equals(%nyx_string* %158, %nyx_string* %160)
  store i1 %161, i1* %99
  br label %sc_or_end42
sc_or_end42:
  %162 = load i1, i1* %99
  br i1 %162, label %sc_or_end44, label %sc_or_rhs43
sc_or_rhs43:
  %163 = load %nyx_string*, %nyx_string** %72
  %164 = getelementptr [6 x i8], [6 x i8]* @.str205, i32 0, i32 0
  %165 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str205.c, i8* %164, i64 5)
  %166 = call i1 @nyx_string_equals(%nyx_string* %163, %nyx_string* %165)
  store i1 %166, i1* %98
  br label %sc_or_end44
sc_or_end44:
  %167 = load i1, i1* %98
  br i1 %167, label %sc_or_end46, label %sc_or_rhs45
sc_or_rhs45:
  %168 = load %nyx_string*, %nyx_string** %72
  %169 = getelementptr [13 x i8], [13 x i8]* @.str206, i32 0, i32 0
  %170 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str206.c, i8* %169, i64 12)
  %171 = call i1 @nyx_string_equals(%nyx_string* %168, %nyx_string* %170)
  store i1 %171, i1* %97
  br label %sc_or_end46
sc_or_end46:
  %172 = load i1, i1* %97
  br i1 %172, label %sc_or_end48, label %sc_or_rhs47
sc_or_rhs47:
  %173 = load %nyx_string*, %nyx_string** %72
  %174 = getelementptr [14 x i8], [14 x i8]* @.str207, i32 0, i32 0
  %175 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str207.c, i8* %174, i64 13)
  %176 = call i1 @nyx_string_equals(%nyx_string* %173, %nyx_string* %175)
  store i1 %176, i1* %96
  br label %sc_or_end48
sc_or_end48:
  %177 = load i1, i1* %96
  br i1 %177, label %sc_or_end50, label %sc_or_rhs49
sc_or_rhs49:
  %178 = load %nyx_string*, %nyx_string** %72
  %179 = getelementptr [6 x i8], [6 x i8]* @.str208, i32 0, i32 0
  %180 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str208.c, i8* %179, i64 5)
  %181 = call i1 @nyx_string_equals(%nyx_string* %178, %nyx_string* %180)
  store i1 %181, i1* %95
  br label %sc_or_end50
sc_or_end50:
  %182 = load i1, i1* %95
  br i1 %182, label %sc_or_end52, label %sc_or_rhs51
sc_or_rhs51:
  %183 = load %nyx_string*, %nyx_string** %72
  %184 = getelementptr [7 x i8], [7 x i8]* @.str209, i32 0, i32 0
  %185 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str209.c, i8* %184, i64 6)
  %186 = call i1 @nyx_string_equals(%nyx_string* %183, %nyx_string* %185)
  store i1 %186, i1* %94
  br label %sc_or_end52
sc_or_end52:
  %187 = load i1, i1* %94
  br i1 %187, label %sc_or_end54, label %sc_or_rhs53
sc_or_rhs53:
  %188 = load %nyx_string*, %nyx_string** %72
  %189 = getelementptr [4 x i8], [4 x i8]* @.str210, i32 0, i32 0
  %190 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str210.c, i8* %189, i64 3)
  %191 = call i1 @nyx_string_equals(%nyx_string* %188, %nyx_string* %190)
  store i1 %191, i1* %93
  br label %sc_or_end54
sc_or_end54:
  %192 = load i1, i1* %93
  %193 = xor i1 %192, true
  br i1 %193, label %then55, label %else56
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
  %194 = load i64, i64* %33
  %195 = add i64 %194, 1
  store i64 %195, i64* %33
  br label %while_cond6
while_end8:
  %196 = load i64, i64* %51
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %then58, label %else59
then58:
  ret i1 0
else59:
  br label %merge60
merge60:
  %198 = load i64, i64* %33
  %199 = load { i64, i8* }*, { i64, i8* }** %3
  %200 = call i64 @nyx_array_length({ i64, i8* }* %199)
  %201 = icmp sge i64 %198, %200
  br i1 %201, label %then61, label %else62
then61:
  ret i1 0
else62:
  br label %merge63
merge63:
  %202 = load { i64, i8* }*, { i64, i8* }** %3
  %203 = load i64, i64* %33
  %204 = getelementptr [6 x i8], [6 x i8]* @.slotT211, i32 0, i32 0
  %205 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %202, i64 %203, i8* %204)
  %206 = inttoptr i64 %205 to %Token*
  %207 = load %Token, %Token* %206
  %208 = alloca %Token
  store %Token %207, %Token* %208
  %209 = load %Token, %Token* %208
  %210 = call %nyx_string* @get_token_type(%Token %209)
  %211 = alloca %nyx_string*
  store %nyx_string* %210, %nyx_string** %211
  %212 = load %nyx_string*, %nyx_string** %211
  %213 = getelementptr [11 x i8], [11 x i8]* @.str212, i32 0, i32 0
  %214 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str212.c, i8* %213, i64 10)
  %215 = call i1 @nyx_string_equals(%nyx_string* %212, %nyx_string* %214)
  br i1 %215, label %then64, label %else65
then64:
  ret i1 1
else65:
  br label %merge66
merge66:
  %216 = load %nyx_string*, %nyx_string** %211
  %217 = getelementptr [11 x i8], [11 x i8]* @.str213, i32 0, i32 0
  %218 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str213.c, i8* %217, i64 10)
  %219 = call i1 @nyx_string_equals(%nyx_string* %216, %nyx_string* %218)
  br i1 %219, label %then67, label %else68
then67:
  ret i1 1
else68:
  br label %merge69
merge69:
  %220 = load %nyx_string*, %nyx_string** %211
  %221 = getelementptr [4 x i8], [4 x i8]* @.str214, i32 0, i32 0
  %222 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str214.c, i8* %221, i64 3)
  %223 = call i1 @nyx_string_equals(%nyx_string* %220, %nyx_string* %222)
  br i1 %223, label %then70, label %else71
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = call { i64, i8* }* @parse__parse_primary(%SharedEnv_parse* %env.param)
  %32 = alloca { i64, i8* }*
  store { i64, i8* }* %31, { i64, i8* }** %32
  %33 = alloca i1
  store i1 0, i1* %33
  %34 = alloca i64
  store i64 0, i64* %34
  %35 = sub i64 0, 1
  %36 = alloca i64
  store i64 %35, i64* %36
  %37 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %38 = load i1, i1* %33
  %39 = xor i1 %38, true
  br i1 %39, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %37)
  %40 = load i64, i64* %34
  %41 = add i64 %40, 1
  store i64 %41, i64* %34
  %42 = load i64, i64* %4
  %43 = load i64, i64* %36
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %then3, label %else4
then3:
  store i1 1, i1* %33
  br label %merge5
else4:
  br label %merge5
merge5:
  %45 = load i64, i64* %4
  store i64 %45, i64* %36
  %46 = alloca i1
  store i1 false, i1* %46
  %47 = load { i64, i8* }*, { i64, i8* }** %32
  %48 = call i64 @nyx_array_get({ i64, i8* }* %47, i64 0)
  %49 = getelementptr [11 x i8], [11 x i8]* @.str215, i32 0, i32 0
  %50 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str215.c, i8* %49, i64 10)
  %51 = inttoptr i64 %48 to %nyx_string*
  %52 = call i1 @nyx_string_equals(%nyx_string* %51, %nyx_string* %50)
  br i1 %52, label %sc_and_rhs6, label %sc_and_end7
sc_and_rhs6:
  %53 = getelementptr [5 x i8], [5 x i8]* @.str216, i32 0, i32 0
  %54 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str216.c, i8* %53, i64 4)
  %55 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %54)
  store i1 %55, i1* %46
  br label %sc_and_end7
sc_and_end7:
  %56 = load i1, i1* %46
  br i1 %56, label %then8, label %else9
then8:
  %57 = call i1 @parse__is_generic_call_lookahead(%SharedEnv_parse* %env.param)
  br i1 %57, label %then11, label %else12
then11:
  %58 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %59 = call { i64, i8* }* @nyx_array_new_ptr()
  %60 = alloca { i64, i8* }*
  store { i64, i8* }* %59, { i64, i8* }** %60
  %61 = load { i64, i8* }*, { i64, i8* }** %60
  %62 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %63 = ptrtoint %nyx_string* %62 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %61, i64 %63, i64 2)
  %64 = alloca i1
  store i1 0, i1* %64
  %65 = call i8* @llvm.stacksave()
  br label %while_cond14
while_cond14:
  %66 = load i1, i1* %64
  %67 = xor i1 %66, true
  br i1 %67, label %while_body15, label %while_end16
while_body15:
  call void @llvm.stackrestore(i8* %65)
  %68 = getelementptr [6 x i8], [6 x i8]* @.str217, i32 0, i32 0
  %69 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str217.c, i8* %68, i64 5)
  %70 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %69)
  br i1 %70, label %then17, label %else18
then17:
  %71 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %72 = load { i64, i8* }*, { i64, i8* }** %60
  %73 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %74 = ptrtoint %nyx_string* %73 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %72, i64 %74, i64 2)
  br label %merge19
else18:
  store i1 1, i1* %64
  br label %merge19
merge19:
  br label %while_cond14
while_end16:
  %75 = load i64, i64* %5
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %then20, label %else21
then20:
  %77 = load i64, i64* %5
  %78 = sub i64 %77, 1
  store i64 %78, i64* %5
  br label %merge22
else21:
  %79 = getelementptr [8 x i8], [8 x i8]* @.str218, i32 0, i32 0
  %80 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str218.c, i8* %79, i64 7)
  %81 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %80)
  br i1 %81, label %then23, label %else24
then23:
  %82 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge25
else24:
  %83 = getelementptr [12 x i8], [12 x i8]* @.str219, i32 0, i32 0
  %84 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str219.c, i8* %83, i64 11)
  %85 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %84)
  br i1 %85, label %then26, label %else27
then26:
  %86 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %87 = load i64, i64* %5
  %88 = add i64 %87, 1
  store i64 %88, i64* %5
  br label %merge28
else27:
  %89 = getelementptr [8 x i8], [8 x i8]* @.str220, i32 0, i32 0
  %90 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str220.c, i8* %89, i64 7)
  %91 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %90)
  br label %merge28
merge28:
  br label %merge25
merge25:
  br label %merge22
merge22:
  %92 = getelementptr [13 x i8], [13 x i8]* @.str221, i32 0, i32 0
  %93 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str221.c, i8* %92, i64 12)
  %94 = call { i64, i8* }* @nyx_array_new_ptr()
  %95 = load { i64, i8* }*, { i64, i8* }** %32
  %96 = ptrtoint { i64, i8* }* %95 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %94, i64 %96, i64 5)
  %97 = load { i64, i8* }*, { i64, i8* }** %60
  %98 = ptrtoint { i64, i8* }* %97 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %94, i64 %98, i64 5)
  %99 = call { i64, i8* }* @make_astnode(%nyx_string* %93, { i64, i8* }* %94)
  store { i64, i8* }* %99, { i64, i8* }** %32
  %100 = getelementptr [11 x i8], [11 x i8]* @.str222, i32 0, i32 0
  %101 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str222.c, i8* %100, i64 10)
  %102 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %101)
  br i1 %102, label %then29, label %else30
then29:
  %103 = alloca i1
  store i1 false, i1* %103
  %104 = getelementptr [11 x i8], [11 x i8]* @.str223, i32 0, i32 0
  %105 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str223.c, i8* %104, i64 10)
  %106 = call i1 @parse__check_at(%SharedEnv_parse* %env.param, i64 1, %nyx_string* %105)
  br i1 %106, label %sc_and_rhs32, label %sc_and_end33
sc_and_rhs32:
  %107 = getelementptr [6 x i8], [6 x i8]* @.str224, i32 0, i32 0
  %108 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str224.c, i8* %107, i64 5)
  %109 = call i1 @parse__check_at(%SharedEnv_parse* %env.param, i64 2, %nyx_string* %108)
  store i1 %109, i1* %103
  br label %sc_and_end33
sc_and_end33:
  %110 = load i1, i1* %103
  br i1 %110, label %then34, label %else35
then34:
  %111 = load { i64, i8* }*, { i64, i8* }** %32
  %112 = call i64 @nyx_array_get({ i64, i8* }* %111, i64 1)
  %113 = inttoptr i64 %112 to { i64, i8* }*
  %114 = alloca { i64, i8* }*
  store { i64, i8* }* %113, { i64, i8* }** %114
  %115 = load { i64, i8* }*, { i64, i8* }** %114
  %116 = call i64 @nyx_array_get({ i64, i8* }* %115, i64 0)
  %117 = inttoptr i64 %116 to { i64, i8* }*
  %118 = alloca { i64, i8* }*
  store { i64, i8* }* %117, { i64, i8* }** %118
  %119 = load { i64, i8* }*, { i64, i8* }** %118
  %120 = call i64 @nyx_array_get({ i64, i8* }* %119, i64 1)
  %121 = inttoptr i64 %120 to { i64, i8* }*
  %122 = alloca { i64, i8* }*
  store { i64, i8* }* %121, { i64, i8* }** %122
  %123 = load { i64, i8* }*, { i64, i8* }** %122
  %124 = call i64 @nyx_array_get_checked({ i64, i8* }* %123, i64 0, i64 2)
  %125 = inttoptr i64 %124 to %nyx_string*
  %126 = alloca %nyx_string*
  store %nyx_string* %125, %nyx_string** %126
  %127 = load { i64, i8* }*, { i64, i8* }** %114
  %128 = call i64 @nyx_array_get({ i64, i8* }* %127, i64 1)
  %129 = inttoptr i64 %128 to { i64, i8* }*
  %130 = alloca { i64, i8* }*
  store { i64, i8* }* %129, { i64, i8* }** %130
  %131 = getelementptr [11 x i8], [11 x i8]* @.str225, i32 0, i32 0
  %132 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str225.c, i8* %131, i64 10)
  %133 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %132)
  %134 = call { i64, i8* }* @nyx_array_new_ptr()
  %135 = alloca { i64, i8* }*
  store { i64, i8* }* %134, { i64, i8* }** %135
  %136 = alloca i1
  store i1 0, i1* %136
  %137 = call i8* @llvm.stacksave()
  br label %while_cond37
while_cond37:
  %138 = load i1, i1* %136
  %139 = xor i1 %138, true
  br i1 %139, label %while_body38, label %while_end39
while_body38:
  call void @llvm.stackrestore(i8* %137)
  %140 = getelementptr [12 x i8], [12 x i8]* @.str226, i32 0, i32 0
  %141 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str226.c, i8* %140, i64 11)
  %142 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %141)
  br i1 %142, label %then40, label %else41
then40:
  %143 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %136
  br label %merge42
else41:
  %144 = load { i64, i8* }*, { i64, i8* }** %135
  %145 = call i64 @nyx_array_length({ i64, i8* }* %144)
  %146 = icmp sgt i64 %145, 0
  br i1 %146, label %then43, label %else44
then43:
  %147 = getelementptr [6 x i8], [6 x i8]* @.str227, i32 0, i32 0
  %148 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str227.c, i8* %147, i64 5)
  %149 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %148)
  br i1 %149, label %then46, label %else47
then46:
  %150 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge48
else47:
  br label %merge48
merge48:
  br label %merge45
else44:
  br label %merge45
merge45:
  %151 = getelementptr [12 x i8], [12 x i8]* @.str228, i32 0, i32 0
  %152 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str228.c, i8* %151, i64 11)
  %153 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %152)
  br i1 %153, label %then49, label %else50
then49:
  %154 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %136
  br label %merge51
else50:
  %155 = getelementptr [11 x i8], [11 x i8]* @.str229, i32 0, i32 0
  %156 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str229.c, i8* %155, i64 10)
  %157 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %156)
  %158 = alloca %Token
  store %Token %157, %Token* %158
  %159 = getelementptr [6 x i8], [6 x i8]* @.str230, i32 0, i32 0
  %160 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str230.c, i8* %159, i64 5)
  %161 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %160)
  %162 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %163 = alloca { i64, i8* }*
  store { i64, i8* }* %162, { i64, i8* }** %163
  %164 = load { i64, i8* }*, { i64, i8* }** %135
  %165 = call { i64, i8* }* @nyx_array_new_ptr()
  %166 = load %Token, %Token* %158
  %167 = call %nyx_string* @get_token_value(%Token %166)
  %168 = ptrtoint %nyx_string* %167 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %165, i64 %168, i64 2)
  %169 = load { i64, i8* }*, { i64, i8* }** %163
  %170 = ptrtoint { i64, i8* }* %169 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %165, i64 %170, i64 5)
  %171 = ptrtoint { i64, i8* }* %165 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %164, i64 %171, i64 5)
  br label %merge51
merge51:
  br label %merge42
merge42:
  br label %while_cond37
while_end39:
  %172 = getelementptr [12 x i8], [12 x i8]* @.str231, i32 0, i32 0
  %173 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str231.c, i8* %172, i64 11)
  %174 = call { i64, i8* }* @nyx_array_new_ptr()
  %175 = load %nyx_string*, %nyx_string** %126
  %176 = ptrtoint %nyx_string* %175 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %174, i64 %176, i64 2)
  %177 = load { i64, i8* }*, { i64, i8* }** %135
  %178 = ptrtoint { i64, i8* }* %177 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %174, i64 %178, i64 5)
  %179 = load { i64, i8* }*, { i64, i8* }** %130
  %180 = ptrtoint { i64, i8* }* %179 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %174, i64 %180, i64 5)
  %181 = call { i64, i8* }* @make_astnode(%nyx_string* %173, { i64, i8* }* %174)
  store { i64, i8* }* %181, { i64, i8* }** %32
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
  %182 = alloca i1
  store i1 false, i1* %182
  %183 = getelementptr [11 x i8], [11 x i8]* @.str232, i32 0, i32 0
  %184 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str232.c, i8* %183, i64 10)
  %185 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %184)
  br i1 %185, label %sc_and_rhs52, label %sc_and_end53
sc_and_rhs52:
  %186 = call i1 @parse__is_on_new_line(%SharedEnv_parse* %env.param)
  %187 = xor i1 %186, true
  store i1 %187, i1* %182
  br label %sc_and_end53
sc_and_end53:
  %188 = load i1, i1* %182
  br i1 %188, label %then54, label %else55
then54:
  %189 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %190 = call { i64, i8* }* @nyx_array_new_ptr()
  %191 = alloca { i64, i8* }*
  store { i64, i8* }* %190, { i64, i8* }** %191
  %192 = load i64, i64* %6
  %193 = alloca i64
  store i64 %192, i64* %193
  store i64 0, i64* %6
  %194 = alloca i1
  store i1 0, i1* %194
  %195 = call i8* @llvm.stacksave()
  br label %while_cond57
while_cond57:
  %196 = load i1, i1* %194
  %197 = xor i1 %196, true
  br i1 %197, label %while_body58, label %while_end59
while_body58:
  call void @llvm.stackrestore(i8* %195)
  %198 = getelementptr [12 x i8], [12 x i8]* @.str233, i32 0, i32 0
  %199 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str233.c, i8* %198, i64 11)
  %200 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %199)
  br i1 %200, label %then60, label %else61
then60:
  %201 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %194
  br label %merge62
else61:
  %202 = load { i64, i8* }*, { i64, i8* }** %191
  %203 = call i64 @nyx_array_length({ i64, i8* }* %202)
  %204 = icmp sgt i64 %203, 0
  br i1 %204, label %then63, label %else64
then63:
  %205 = getelementptr [6 x i8], [6 x i8]* @.str234, i32 0, i32 0
  %206 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str234.c, i8* %205, i64 5)
  %207 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %206)
  br label %merge65
else64:
  br label %merge65
merge65:
  %208 = load { i64, i8* }*, { i64, i8* }** %191
  %209 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %210 = ptrtoint { i64, i8* }* %209 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %208, i64 %210, i64 5)
  br label %merge62
merge62:
  br label %while_cond57
while_end59:
  %211 = load i64, i64* %193
  store i64 %211, i64* %6
  %212 = getelementptr [5 x i8], [5 x i8]* @.str235, i32 0, i32 0
  %213 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str235.c, i8* %212, i64 4)
  %214 = call { i64, i8* }* @nyx_array_new_ptr()
  %215 = load { i64, i8* }*, { i64, i8* }** %32
  %216 = ptrtoint { i64, i8* }* %215 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %214, i64 %216, i64 5)
  %217 = load { i64, i8* }*, { i64, i8* }** %191
  %218 = ptrtoint { i64, i8* }* %217 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %214, i64 %218, i64 5)
  %219 = call { i64, i8* }* @make_astnode(%nyx_string* %213, { i64, i8* }* %214)
  store { i64, i8* }* %219, { i64, i8* }** %32
  br label %merge56
else55:
  %220 = getelementptr [13 x i8], [13 x i8]* @.str236, i32 0, i32 0
  %221 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str236.c, i8* %220, i64 12)
  %222 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %221)
  br i1 %222, label %then66, label %else67
then66:
  %223 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %224 = load i64, i64* %6
  %225 = alloca i64
  store i64 %224, i64* %225
  store i64 0, i64* %6
  %226 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %227 = alloca { i64, i8* }*
  store { i64, i8* }* %226, { i64, i8* }** %227
  %228 = load i64, i64* %225
  store i64 %228, i64* %6
  %229 = getelementptr [14 x i8], [14 x i8]* @.str237, i32 0, i32 0
  %230 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str237.c, i8* %229, i64 13)
  %231 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %230)
  %232 = getelementptr [6 x i8], [6 x i8]* @.str238, i32 0, i32 0
  %233 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str238.c, i8* %232, i64 5)
  %234 = call { i64, i8* }* @nyx_array_new_ptr()
  %235 = load { i64, i8* }*, { i64, i8* }** %32
  %236 = ptrtoint { i64, i8* }* %235 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %234, i64 %236, i64 5)
  %237 = load { i64, i8* }*, { i64, i8* }** %227
  %238 = ptrtoint { i64, i8* }* %237 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %234, i64 %238, i64 5)
  %239 = call { i64, i8* }* @make_astnode(%nyx_string* %233, { i64, i8* }* %234)
  store { i64, i8* }* %239, { i64, i8* }** %32
  br label %merge68
else67:
  %240 = getelementptr [4 x i8], [4 x i8]* @.str239, i32 0, i32 0
  %241 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str239.c, i8* %240, i64 3)
  %242 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %241)
  br i1 %242, label %then69, label %else70
then69:
  %243 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %244 = getelementptr [7 x i8], [7 x i8]* @.str240, i32 0, i32 0
  %245 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str240.c, i8* %244, i64 6)
  %246 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %245)
  br i1 %246, label %then72, label %else73
then72:
  %247 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %248 = alloca %Token
  store %Token %247, %Token* %248
  %249 = load %Token, %Token* %248
  %250 = call %nyx_string* @get_token_value(%Token %249)
  %251 = alloca %nyx_string*
  store %nyx_string* %250, %nyx_string** %251
  %252 = getelementptr [12 x i8], [12 x i8]* @.str241, i32 0, i32 0
  %253 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str241.c, i8* %252, i64 11)
  %254 = call { i64, i8* }* @nyx_array_new_ptr()
  %255 = load { i64, i8* }*, { i64, i8* }** %32
  %256 = ptrtoint { i64, i8* }* %255 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %254, i64 %256, i64 5)
  %257 = load %nyx_string*, %nyx_string** %251
  %258 = ptrtoint %nyx_string* %257 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %254, i64 %258, i64 2)
  %259 = call { i64, i8* }* @make_astnode(%nyx_string* %253, { i64, i8* }* %254)
  store { i64, i8* }* %259, { i64, i8* }** %32
  br label %merge74
else73:
  %260 = getelementptr [11 x i8], [11 x i8]* @.str242, i32 0, i32 0
  %261 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str242.c, i8* %260, i64 10)
  %262 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %261)
  %263 = alloca %Token
  store %Token %262, %Token* %263
  %264 = load %Token, %Token* %263
  %265 = call %nyx_string* @get_token_value(%Token %264)
  %266 = alloca %nyx_string*
  store %nyx_string* %265, %nyx_string** %266
  %267 = call { i64, i8* }* @nyx_array_new_ptr()
  %268 = alloca { i64, i8* }*
  store { i64, i8* }* %267, { i64, i8* }** %268
  %269 = alloca i1
  store i1 0, i1* %269
  %270 = getelementptr [5 x i8], [5 x i8]* @.str243, i32 0, i32 0
  %271 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str243.c, i8* %270, i64 4)
  %272 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %271)
  br i1 %272, label %then75, label %else76
then75:
  %273 = call i1 @parse__is_generic_call_lookahead(%SharedEnv_parse* %env.param)
  br i1 %273, label %then78, label %else79
then78:
  %274 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %275 = load { i64, i8* }*, { i64, i8* }** %268
  %276 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %277 = ptrtoint %nyx_string* %276 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %275, i64 %277, i64 2)
  %278 = alloca i1
  store i1 0, i1* %278
  %279 = call i8* @llvm.stacksave()
  br label %while_cond81
while_cond81:
  %280 = load i1, i1* %278
  %281 = xor i1 %280, true
  br i1 %281, label %while_body82, label %while_end83
while_body82:
  call void @llvm.stackrestore(i8* %279)
  %282 = getelementptr [6 x i8], [6 x i8]* @.str244, i32 0, i32 0
  %283 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str244.c, i8* %282, i64 5)
  %284 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %283)
  br i1 %284, label %then84, label %else85
then84:
  %285 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %286 = load { i64, i8* }*, { i64, i8* }** %268
  %287 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %288 = ptrtoint %nyx_string* %287 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %286, i64 %288, i64 2)
  br label %merge86
else85:
  store i1 1, i1* %278
  br label %merge86
merge86:
  br label %while_cond81
while_end83:
  %289 = load i64, i64* %5
  %290 = icmp sgt i64 %289, 0
  br i1 %290, label %then87, label %else88
then87:
  %291 = load i64, i64* %5
  %292 = sub i64 %291, 1
  store i64 %292, i64* %5
  br label %merge89
else88:
  %293 = getelementptr [8 x i8], [8 x i8]* @.str245, i32 0, i32 0
  %294 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str245.c, i8* %293, i64 7)
  %295 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %294)
  br i1 %295, label %then90, label %else91
then90:
  %296 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge92
else91:
  %297 = getelementptr [12 x i8], [12 x i8]* @.str246, i32 0, i32 0
  %298 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str246.c, i8* %297, i64 11)
  %299 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %298)
  br i1 %299, label %then93, label %else94
then93:
  %300 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %301 = load i64, i64* %5
  %302 = add i64 %301, 1
  store i64 %302, i64* %5
  br label %merge95
else94:
  %303 = getelementptr [8 x i8], [8 x i8]* @.str247, i32 0, i32 0
  %304 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str247.c, i8* %303, i64 7)
  %305 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %304)
  br label %merge95
merge95:
  br label %merge92
merge92:
  br label %merge89
merge89:
  store i1 1, i1* %269
  br label %merge80
else79:
  br label %merge80
merge80:
  br label %merge77
else76:
  br label %merge77
merge77:
  %306 = getelementptr [11 x i8], [11 x i8]* @.str248, i32 0, i32 0
  %307 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str248.c, i8* %306, i64 10)
  %308 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %307)
  br i1 %308, label %then96, label %else97
then96:
  %309 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %310 = call { i64, i8* }* @nyx_array_new_ptr()
  %311 = alloca { i64, i8* }*
  store { i64, i8* }* %310, { i64, i8* }** %311
  %312 = alloca i1
  store i1 0, i1* %312
  %313 = call i8* @llvm.stacksave()
  br label %while_cond99
while_cond99:
  %314 = load i1, i1* %312
  %315 = xor i1 %314, true
  br i1 %315, label %while_body100, label %while_end101
while_body100:
  call void @llvm.stackrestore(i8* %313)
  %316 = getelementptr [12 x i8], [12 x i8]* @.str249, i32 0, i32 0
  %317 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str249.c, i8* %316, i64 11)
  %318 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %317)
  br i1 %318, label %then102, label %else103
then102:
  %319 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %312
  br label %merge104
else103:
  %320 = load { i64, i8* }*, { i64, i8* }** %311
  %321 = call i64 @nyx_array_length({ i64, i8* }* %320)
  %322 = icmp sgt i64 %321, 0
  br i1 %322, label %then105, label %else106
then105:
  %323 = getelementptr [6 x i8], [6 x i8]* @.str250, i32 0, i32 0
  %324 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str250.c, i8* %323, i64 5)
  %325 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %324)
  br label %merge107
else106:
  br label %merge107
merge107:
  %326 = load { i64, i8* }*, { i64, i8* }** %311
  %327 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %328 = ptrtoint { i64, i8* }* %327 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %326, i64 %328, i64 5)
  br label %merge104
merge104:
  br label %while_cond99
while_end101:
  %329 = load i1, i1* %269
  br i1 %329, label %then108, label %else109
then108:
  %330 = getelementptr [12 x i8], [12 x i8]* @.str251, i32 0, i32 0
  %331 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str251.c, i8* %330, i64 11)
  %332 = call { i64, i8* }* @nyx_array_new_ptr()
  %333 = load { i64, i8* }*, { i64, i8* }** %32
  %334 = ptrtoint { i64, i8* }* %333 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %332, i64 %334, i64 5)
  %335 = load %nyx_string*, %nyx_string** %266
  %336 = ptrtoint %nyx_string* %335 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %332, i64 %336, i64 2)
  %337 = load { i64, i8* }*, { i64, i8* }** %311
  %338 = ptrtoint { i64, i8* }* %337 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %332, i64 %338, i64 5)
  %339 = load { i64, i8* }*, { i64, i8* }** %268
  %340 = ptrtoint { i64, i8* }* %339 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %332, i64 %340, i64 5)
  %341 = call { i64, i8* }* @make_astnode(%nyx_string* %331, { i64, i8* }* %332)
  store { i64, i8* }* %341, { i64, i8* }** %32
  br label %merge110
else109:
  %342 = getelementptr [12 x i8], [12 x i8]* @.str252, i32 0, i32 0
  %343 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str252.c, i8* %342, i64 11)
  %344 = call { i64, i8* }* @nyx_array_new_ptr()
  %345 = load { i64, i8* }*, { i64, i8* }** %32
  %346 = ptrtoint { i64, i8* }* %345 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %344, i64 %346, i64 5)
  %347 = load %nyx_string*, %nyx_string** %266
  %348 = ptrtoint %nyx_string* %347 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %344, i64 %348, i64 2)
  %349 = load { i64, i8* }*, { i64, i8* }** %311
  %350 = ptrtoint { i64, i8* }* %349 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %344, i64 %350, i64 5)
  %351 = call { i64, i8* }* @make_astnode(%nyx_string* %343, { i64, i8* }* %344)
  store { i64, i8* }* %351, { i64, i8* }** %32
  br label %merge110
merge110:
  br label %merge98
else97:
  %352 = load i1, i1* %269
  br i1 %352, label %then111, label %else112
then111:
  %353 = getelementptr [11 x i8], [11 x i8]* @.str253, i32 0, i32 0
  %354 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str253.c, i8* %353, i64 10)
  %355 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %354)
  br label %merge113
else112:
  br label %merge113
merge113:
  %356 = getelementptr [13 x i8], [13 x i8]* @.str254, i32 0, i32 0
  %357 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str254.c, i8* %356, i64 12)
  %358 = call { i64, i8* }* @nyx_array_new_ptr()
  %359 = load { i64, i8* }*, { i64, i8* }** %32
  %360 = ptrtoint { i64, i8* }* %359 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %358, i64 %360, i64 5)
  %361 = load %nyx_string*, %nyx_string** %266
  %362 = ptrtoint %nyx_string* %361 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %358, i64 %362, i64 2)
  %363 = call { i64, i8* }* @make_astnode(%nyx_string* %357, { i64, i8* }* %358)
  store { i64, i8* }* %363, { i64, i8* }** %32
  br label %merge98
merge98:
  br label %merge74
merge74:
  br label %merge71
else70:
  %364 = getelementptr [9 x i8], [9 x i8]* @.str255, i32 0, i32 0
  %365 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str255.c, i8* %364, i64 8)
  %366 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %365)
  br i1 %366, label %then114, label %else115
then114:
  %367 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %368 = getelementptr [7 x i8], [7 x i8]* @.str256, i32 0, i32 0
  %369 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str256.c, i8* %368, i64 6)
  %370 = call { i64, i8* }* @nyx_array_new_ptr()
  %371 = load { i64, i8* }*, { i64, i8* }** %32
  %372 = ptrtoint { i64, i8* }* %371 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %370, i64 %372, i64 5)
  %373 = call { i64, i8* }* @make_astnode(%nyx_string* %369, { i64, i8* }* %370)
  store { i64, i8* }* %373, { i64, i8* }** %32
  br label %merge116
else115:
  store i1 1, i1* %33
  br label %merge116
merge116:
  br label %merge71
merge71:
  br label %merge68
merge68:
  br label %merge56
merge56:
  br label %while_cond0
while_end2:
  %374 = load { i64, i8* }*, { i64, i8* }** %32
  ret { i64, i8* }* %374
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = getelementptr [7 x i8], [7 x i8]* @.str257, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str257.c, i8* %31, i64 6)
  %33 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %32)
  br i1 %33, label %then0, label %else1
then0:
  %34 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %35 = alloca %Token
  store %Token %34, %Token* %35
  %36 = getelementptr [7 x i8], [7 x i8]* @.str258, i32 0, i32 0
  %37 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str258.c, i8* %36, i64 6)
  %38 = call { i64, i8* }* @nyx_array_new_ptr()
  %39 = load %Token, %Token* %35
  %40 = call %nyx_string* @get_token_value(%Token %39)
  %41 = ptrtoint %nyx_string* %40 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %38, i64 %41, i64 2)
  %42 = call { i64, i8* }* @make_astnode(%nyx_string* %37, { i64, i8* }* %38)
  ret { i64, i8* }* %42
else1:
  br label %merge2
merge2:
  %43 = getelementptr [7 x i8], [7 x i8]* @.str259, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str259.c, i8* %43, i64 6)
  %45 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %44)
  br i1 %45, label %then3, label %else4
then3:
  %46 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %47 = alloca %Token
  store %Token %46, %Token* %47
  %48 = getelementptr [7 x i8], [7 x i8]* @.str260, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str260.c, i8* %48, i64 6)
  %50 = call { i64, i8* }* @nyx_array_new_ptr()
  %51 = load %Token, %Token* %47
  %52 = call %nyx_string* @get_token_value(%Token %51)
  %53 = ptrtoint %nyx_string* %52 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %50, i64 %53, i64 2)
  %54 = call { i64, i8* }* @make_astnode(%nyx_string* %49, { i64, i8* }* %50)
  ret { i64, i8* }* %54
else4:
  br label %merge5
merge5:
  %55 = getelementptr [5 x i8], [5 x i8]* @.str261, i32 0, i32 0
  %56 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str261.c, i8* %55, i64 4)
  %57 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %56)
  br i1 %57, label %then6, label %else7
then6:
  %58 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %59 = alloca %Token
  store %Token %58, %Token* %59
  %60 = getelementptr [5 x i8], [5 x i8]* @.str262, i32 0, i32 0
  %61 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str262.c, i8* %60, i64 4)
  %62 = call { i64, i8* }* @nyx_array_new_ptr()
  %63 = load %Token, %Token* %59
  %64 = call %nyx_string* @get_token_value(%Token %63)
  %65 = ptrtoint %nyx_string* %64 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %62, i64 %65, i64 2)
  %66 = call { i64, i8* }* @make_astnode(%nyx_string* %61, { i64, i8* }* %62)
  ret { i64, i8* }* %66
else7:
  br label %merge8
merge8:
  %67 = getelementptr [5 x i8], [5 x i8]* @.str263, i32 0, i32 0
  %68 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str263.c, i8* %67, i64 4)
  %69 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %68)
  br i1 %69, label %then9, label %else10
then9:
  %70 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %71 = getelementptr [5 x i8], [5 x i8]* @.str264, i32 0, i32 0
  %72 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str264.c, i8* %71, i64 4)
  %73 = call { i64, i8* }* @nyx_array_new_ptr()
  %74 = getelementptr [5 x i8], [5 x i8]* @.str265, i32 0, i32 0
  %75 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str265.c, i8* %74, i64 4)
  %76 = ptrtoint %nyx_string* %75 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %73, i64 %76, i64 2)
  %77 = call { i64, i8* }* @make_astnode(%nyx_string* %72, { i64, i8* }* %73)
  ret { i64, i8* }* %77
else10:
  br label %merge11
merge11:
  %78 = getelementptr [6 x i8], [6 x i8]* @.str266, i32 0, i32 0
  %79 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str266.c, i8* %78, i64 5)
  %80 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %79)
  br i1 %80, label %then12, label %else13
then12:
  %81 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %82 = getelementptr [5 x i8], [5 x i8]* @.str267, i32 0, i32 0
  %83 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str267.c, i8* %82, i64 4)
  %84 = call { i64, i8* }* @nyx_array_new_ptr()
  %85 = getelementptr [6 x i8], [6 x i8]* @.str268, i32 0, i32 0
  %86 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str268.c, i8* %85, i64 5)
  %87 = ptrtoint %nyx_string* %86 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %84, i64 %87, i64 2)
  %88 = call { i64, i8* }* @make_astnode(%nyx_string* %83, { i64, i8* }* %84)
  ret { i64, i8* }* %88
else13:
  br label %merge14
merge14:
  %89 = getelementptr [7 x i8], [7 x i8]* @.str269, i32 0, i32 0
  %90 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str269.c, i8* %89, i64 6)
  %91 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %90)
  br i1 %91, label %then15, label %else16
then15:
  %92 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %93 = getelementptr [11 x i8], [11 x i8]* @.str270, i32 0, i32 0
  %94 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str270.c, i8* %93, i64 10)
  %95 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %94)
  %96 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %97 = alloca %nyx_string*
  store %nyx_string* %96, %nyx_string** %97
  %98 = getelementptr [12 x i8], [12 x i8]* @.str271, i32 0, i32 0
  %99 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str271.c, i8* %98, i64 11)
  %100 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %99)
  %101 = getelementptr [7 x i8], [7 x i8]* @.str272, i32 0, i32 0
  %102 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str272.c, i8* %101, i64 6)
  %103 = call { i64, i8* }* @nyx_array_new_ptr()
  %104 = load %nyx_string*, %nyx_string** %97
  %105 = ptrtoint %nyx_string* %104 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %103, i64 %105, i64 2)
  %106 = call { i64, i8* }* @make_astnode(%nyx_string* %102, { i64, i8* }* %103)
  ret { i64, i8* }* %106
else16:
  br label %merge17
merge17:
  %107 = getelementptr [8 x i8], [8 x i8]* @.str273, i32 0, i32 0
  %108 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str273.c, i8* %107, i64 7)
  %109 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %108)
  br i1 %109, label %then18, label %else19
then18:
  %110 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %111 = getelementptr [11 x i8], [11 x i8]* @.str274, i32 0, i32 0
  %112 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str274.c, i8* %111, i64 10)
  %113 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %112)
  %114 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %115 = alloca %nyx_string*
  store %nyx_string* %114, %nyx_string** %115
  %116 = getelementptr [12 x i8], [12 x i8]* @.str275, i32 0, i32 0
  %117 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str275.c, i8* %116, i64 11)
  %118 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %117)
  %119 = getelementptr [8 x i8], [8 x i8]* @.str276, i32 0, i32 0
  %120 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str276.c, i8* %119, i64 7)
  %121 = call { i64, i8* }* @nyx_array_new_ptr()
  %122 = load %nyx_string*, %nyx_string** %115
  %123 = ptrtoint %nyx_string* %122 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %121, i64 %123, i64 2)
  %124 = call { i64, i8* }* @make_astnode(%nyx_string* %120, { i64, i8* }* %121)
  ret { i64, i8* }* %124
else19:
  br label %merge20
merge20:
  %125 = getelementptr [4 x i8], [4 x i8]* @.str277, i32 0, i32 0
  %126 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str277.c, i8* %125, i64 3)
  %127 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %126)
  br i1 %127, label %then21, label %else22
then21:
  %128 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %129 = getelementptr [2 x i8], [2 x i8]* @.str278, i32 0, i32 0
  %130 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str278.c, i8* %129, i64 1)
  %131 = alloca %nyx_string*
  store %nyx_string* %130, %nyx_string** %131
  %132 = getelementptr [11 x i8], [11 x i8]* @.str279, i32 0, i32 0
  %133 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str279.c, i8* %132, i64 10)
  %134 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %133)
  br i1 %134, label %then24, label %else25
then24:
  %135 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %136 = alloca %Token
  store %Token %135, %Token* %136
  %137 = load %Token, %Token* %136
  %138 = call %nyx_string* @get_token_value(%Token %137)
  %139 = alloca %nyx_string*
  store %nyx_string* %138, %nyx_string** %139
  %140 = load %nyx_string*, %nyx_string** %139
  %141 = getelementptr [9 x i8], [9 x i8]* @.str280, i32 0, i32 0
  %142 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str280.c, i8* %141, i64 8)
  %143 = call i1 @nyx_string_equals(%nyx_string* %140, %nyx_string* %142)
  br i1 %143, label %then27, label %else28
then27:
  %144 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %145 = getelementptr [2 x i8], [2 x i8]* @.str281, i32 0, i32 0
  %146 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str281.c, i8* %145, i64 1)
  store %nyx_string* %146, %nyx_string** %131
  br label %merge29
else28:
  br label %merge29
merge29:
  br label %merge26
else25:
  br label %merge26
merge26:
  %147 = getelementptr [11 x i8], [11 x i8]* @.str282, i32 0, i32 0
  %148 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str282.c, i8* %147, i64 10)
  %149 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %148)
  %150 = getelementptr [7 x i8], [7 x i8]* @.str283, i32 0, i32 0
  %151 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str283.c, i8* %150, i64 6)
  %152 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %151)
  %153 = alloca %Token
  store %Token %152, %Token* %153
  %154 = load %Token, %Token* %153
  %155 = call %nyx_string* @get_token_value(%Token %154)
  %156 = alloca %nyx_string*
  store %nyx_string* %155, %nyx_string** %156
  %157 = getelementptr [6 x i8], [6 x i8]* @.str284, i32 0, i32 0
  %158 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str284.c, i8* %157, i64 5)
  %159 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %158)
  br i1 %159, label %then30, label %else31
then30:
  %160 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %161 = call { i64, i8* }* @nyx_array_new_ptr()
  %162 = alloca { i64, i8* }*
  store { i64, i8* }* %161, { i64, i8* }** %162
  %163 = alloca i1
  store i1 0, i1* %163
  %164 = call i8* @llvm.stacksave()
  br label %while_cond33
while_cond33:
  %165 = load i1, i1* %163
  %166 = xor i1 %165, true
  br i1 %166, label %while_body34, label %while_end35
while_body34:
  call void @llvm.stackrestore(i8* %164)
  %167 = getelementptr [7 x i8], [7 x i8]* @.str285, i32 0, i32 0
  %168 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str285.c, i8* %167, i64 6)
  %169 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %168)
  br i1 %169, label %then36, label %else37
then36:
  %170 = getelementptr [7 x i8], [7 x i8]* @.str286, i32 0, i32 0
  %171 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str286.c, i8* %170, i64 6)
  %172 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %171)
  %173 = alloca %Token
  store %Token %172, %Token* %173
  %174 = load %Token, %Token* %173
  %175 = call %nyx_string* @get_token_value(%Token %174)
  %176 = alloca %nyx_string*
  store %nyx_string* %175, %nyx_string** %176
  %177 = getelementptr [11 x i8], [11 x i8]* @.str287, i32 0, i32 0
  %178 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str287.c, i8* %177, i64 10)
  %179 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %178)
  %180 = getelementptr [11 x i8], [11 x i8]* @.str288, i32 0, i32 0
  %181 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str288.c, i8* %180, i64 10)
  %182 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %181)
  %183 = alloca %Token
  store %Token %182, %Token* %183
  %184 = load %Token, %Token* %183
  %185 = call %nyx_string* @get_token_value(%Token %184)
  %186 = alloca %nyx_string*
  store %nyx_string* %185, %nyx_string** %186
  %187 = getelementptr [12 x i8], [12 x i8]* @.str289, i32 0, i32 0
  %188 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str289.c, i8* %187, i64 11)
  %189 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %188)
  %190 = load { i64, i8* }*, { i64, i8* }** %162
  %191 = call { i64, i8* }* @nyx_array_new_ptr()
  %192 = load %nyx_string*, %nyx_string** %176
  %193 = ptrtoint %nyx_string* %192 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %191, i64 %193, i64 2)
  %194 = load %nyx_string*, %nyx_string** %186
  %195 = ptrtoint %nyx_string* %194 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %191, i64 %195, i64 2)
  %196 = ptrtoint { i64, i8* }* %191 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %190, i64 %196, i64 5)
  %197 = getelementptr [6 x i8], [6 x i8]* @.str290, i32 0, i32 0
  %198 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str290.c, i8* %197, i64 5)
  %199 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %198)
  br i1 %199, label %then39, label %else40
then39:
  %200 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge41
else40:
  br label %merge41
merge41:
  br label %merge38
else37:
  store i1 1, i1* %163
  br label %merge38
merge38:
  br label %while_cond33
while_end35:
  %201 = getelementptr [6 x i8], [6 x i8]* @.str291, i32 0, i32 0
  %202 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str291.c, i8* %201, i64 5)
  %203 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %202)
  br i1 %203, label %then42, label %else43
then42:
  %204 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge44
else43:
  br label %merge44
merge44:
  %205 = call { i64, i8* }* @nyx_array_new_ptr()
  %206 = alloca { i64, i8* }*
  store { i64, i8* }* %205, { i64, i8* }** %206
  %207 = alloca i1
  store i1 0, i1* %207
  %208 = call i8* @llvm.stacksave()
  br label %while_cond45
while_cond45:
  %209 = load i1, i1* %207
  %210 = xor i1 %209, true
  br i1 %210, label %while_body46, label %while_end47
while_body46:
  call void @llvm.stackrestore(i8* %208)
  %211 = getelementptr [7 x i8], [7 x i8]* @.str292, i32 0, i32 0
  %212 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str292.c, i8* %211, i64 6)
  %213 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %212)
  br i1 %213, label %then48, label %else49
then48:
  %214 = getelementptr [7 x i8], [7 x i8]* @.str293, i32 0, i32 0
  %215 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str293.c, i8* %214, i64 6)
  %216 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %215)
  %217 = alloca %Token
  store %Token %216, %Token* %217
  %218 = load %Token, %Token* %217
  %219 = call %nyx_string* @get_token_value(%Token %218)
  %220 = alloca %nyx_string*
  store %nyx_string* %219, %nyx_string** %220
  %221 = getelementptr [11 x i8], [11 x i8]* @.str294, i32 0, i32 0
  %222 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str294.c, i8* %221, i64 10)
  %223 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %222)
  %224 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %225 = alloca { i64, i8* }*
  store { i64, i8* }* %224, { i64, i8* }** %225
  %226 = getelementptr [12 x i8], [12 x i8]* @.str295, i32 0, i32 0
  %227 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str295.c, i8* %226, i64 11)
  %228 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %227)
  %229 = load { i64, i8* }*, { i64, i8* }** %206
  %230 = call { i64, i8* }* @nyx_array_new_ptr()
  %231 = load %nyx_string*, %nyx_string** %220
  %232 = ptrtoint %nyx_string* %231 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %230, i64 %232, i64 2)
  %233 = load { i64, i8* }*, { i64, i8* }** %225
  %234 = ptrtoint { i64, i8* }* %233 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %230, i64 %234, i64 5)
  %235 = ptrtoint { i64, i8* }* %230 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %229, i64 %235, i64 5)
  %236 = getelementptr [6 x i8], [6 x i8]* @.str296, i32 0, i32 0
  %237 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str296.c, i8* %236, i64 5)
  %238 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %237)
  br i1 %238, label %then51, label %else52
then51:
  %239 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge53
else52:
  br label %merge53
merge53:
  br label %merge50
else49:
  store i1 1, i1* %207
  br label %merge50
merge50:
  br label %while_cond45
while_end47:
  %240 = getelementptr [6 x i8], [6 x i8]* @.str297, i32 0, i32 0
  %241 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str297.c, i8* %240, i64 5)
  %242 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %241)
  br i1 %242, label %then54, label %else55
then54:
  %243 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge56
else55:
  br label %merge56
merge56:
  %244 = call { i64, i8* }* @nyx_array_new_ptr()
  %245 = alloca { i64, i8* }*
  store { i64, i8* }* %244, { i64, i8* }** %245
  %246 = alloca i1
  store i1 0, i1* %246
  %247 = call i8* @llvm.stacksave()
  br label %while_cond57
while_cond57:
  %248 = load i1, i1* %246
  %249 = xor i1 %248, true
  br i1 %249, label %while_body58, label %while_end59
while_body58:
  call void @llvm.stackrestore(i8* %247)
  %250 = getelementptr [7 x i8], [7 x i8]* @.str298, i32 0, i32 0
  %251 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str298.c, i8* %250, i64 6)
  %252 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %251)
  br i1 %252, label %then60, label %else61
then60:
  %253 = getelementptr [7 x i8], [7 x i8]* @.str299, i32 0, i32 0
  %254 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str299.c, i8* %253, i64 6)
  %255 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %254)
  %256 = alloca %Token
  store %Token %255, %Token* %256
  %257 = load { i64, i8* }*, { i64, i8* }** %245
  %258 = load %Token, %Token* %256
  %259 = call %nyx_string* @get_token_value(%Token %258)
  %260 = ptrtoint %nyx_string* %259 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %257, i64 %260, i64 2)
  %261 = getelementptr [6 x i8], [6 x i8]* @.str300, i32 0, i32 0
  %262 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str300.c, i8* %261, i64 5)
  %263 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %262)
  br i1 %263, label %then63, label %else64
then63:
  %264 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge65
else64:
  br label %merge65
merge65:
  br label %merge62
else61:
  store i1 1, i1* %246
  br label %merge62
merge62:
  br label %while_cond57
while_end59:
  %265 = getelementptr [12 x i8], [12 x i8]* @.str301, i32 0, i32 0
  %266 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str301.c, i8* %265, i64 11)
  %267 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %266)
  %268 = getelementptr [15 x i8], [15 x i8]* @.str302, i32 0, i32 0
  %269 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str302.c, i8* %268, i64 14)
  %270 = call { i64, i8* }* @nyx_array_new_ptr()
  %271 = load %nyx_string*, %nyx_string** %156
  %272 = ptrtoint %nyx_string* %271 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %270, i64 %272, i64 2)
  %273 = load { i64, i8* }*, { i64, i8* }** %162
  %274 = ptrtoint { i64, i8* }* %273 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %270, i64 %274, i64 5)
  %275 = load { i64, i8* }*, { i64, i8* }** %206
  %276 = ptrtoint { i64, i8* }* %275 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %270, i64 %276, i64 5)
  %277 = load { i64, i8* }*, { i64, i8* }** %245
  %278 = ptrtoint { i64, i8* }* %277 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %270, i64 %278, i64 5)
  %279 = load %nyx_string*, %nyx_string** %131
  %280 = ptrtoint %nyx_string* %279 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %270, i64 %280, i64 2)
  %281 = call { i64, i8* }* @make_astnode(%nyx_string* %269, { i64, i8* }* %270)
  ret { i64, i8* }* %281
else31:
  br label %merge32
merge32:
  %282 = call { i64, i8* }* @nyx_array_new_ptr()
  %283 = alloca { i64, i8* }*
  store { i64, i8* }* %282, { i64, i8* }** %283
  %284 = call { i64, i8* }* @nyx_array_new_ptr()
  %285 = alloca { i64, i8* }*
  store { i64, i8* }* %284, { i64, i8* }** %285
  %286 = call { i64, i8* }* @nyx_array_new_ptr()
  %287 = alloca { i64, i8* }*
  store { i64, i8* }* %286, { i64, i8* }** %287
  %288 = alloca i1
  store i1 0, i1* %288
  %289 = call i8* @llvm.stacksave()
  br label %while_cond66
while_cond66:
  %290 = load i1, i1* %288
  %291 = xor i1 %290, true
  br i1 %291, label %while_body67, label %while_end68
while_body67:
  call void @llvm.stackrestore(i8* %289)
  %292 = getelementptr [6 x i8], [6 x i8]* @.str303, i32 0, i32 0
  %293 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str303.c, i8* %292, i64 5)
  %294 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %293)
  br i1 %294, label %then69, label %else70
then69:
  %295 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %296 = getelementptr [11 x i8], [11 x i8]* @.str304, i32 0, i32 0
  %297 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str304.c, i8* %296, i64 10)
  %298 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %297)
  br i1 %298, label %then72, label %else73
then72:
  %299 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %300 = alloca %Token
  store %Token %299, %Token* %300
  %301 = load %Token, %Token* %300
  %302 = call %nyx_string* @get_token_value(%Token %301)
  %303 = alloca %nyx_string*
  store %nyx_string* %302, %nyx_string** %303
  %304 = load %nyx_string*, %nyx_string** %303
  %305 = getelementptr [4 x i8], [4 x i8]* @.str305, i32 0, i32 0
  %306 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str305.c, i8* %305, i64 3)
  %307 = call i1 @nyx_string_equals(%nyx_string* %304, %nyx_string* %306)
  br i1 %307, label %then75, label %else76
then75:
  %308 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %309 = getelementptr [11 x i8], [11 x i8]* @.str306, i32 0, i32 0
  %310 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str306.c, i8* %309, i64 10)
  %311 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %310)
  %312 = getelementptr [7 x i8], [7 x i8]* @.str307, i32 0, i32 0
  %313 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str307.c, i8* %312, i64 6)
  %314 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %313)
  %315 = alloca %Token
  store %Token %314, %Token* %315
  %316 = load { i64, i8* }*, { i64, i8* }** %283
  %317 = load %Token, %Token* %315
  %318 = call %nyx_string* @get_token_value(%Token %317)
  %319 = ptrtoint %nyx_string* %318 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %316, i64 %319, i64 2)
  %320 = getelementptr [12 x i8], [12 x i8]* @.str308, i32 0, i32 0
  %321 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str308.c, i8* %320, i64 11)
  %322 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %321)
  br label %merge77
else76:
  %323 = load %nyx_string*, %nyx_string** %303
  %324 = getelementptr [3 x i8], [3 x i8]* @.str309, i32 0, i32 0
  %325 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str309.c, i8* %324, i64 2)
  %326 = call i1 @nyx_string_equals(%nyx_string* %323, %nyx_string* %325)
  br i1 %326, label %then78, label %else79
then78:
  %327 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %328 = getelementptr [11 x i8], [11 x i8]* @.str310, i32 0, i32 0
  %329 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str310.c, i8* %328, i64 10)
  %330 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %329)
  %331 = getelementptr [7 x i8], [7 x i8]* @.str311, i32 0, i32 0
  %332 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str311.c, i8* %331, i64 6)
  %333 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %332)
  %334 = alloca %Token
  store %Token %333, %Token* %334
  %335 = load %Token, %Token* %334
  %336 = call %nyx_string* @get_token_value(%Token %335)
  %337 = alloca %nyx_string*
  store %nyx_string* %336, %nyx_string** %337
  %338 = getelementptr [6 x i8], [6 x i8]* @.str312, i32 0, i32 0
  %339 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str312.c, i8* %338, i64 5)
  %340 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %339)
  %341 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %342 = alloca { i64, i8* }*
  store { i64, i8* }* %341, { i64, i8* }** %342
  %343 = load { i64, i8* }*, { i64, i8* }** %285
  %344 = call { i64, i8* }* @nyx_array_new_ptr()
  %345 = load %nyx_string*, %nyx_string** %337
  %346 = ptrtoint %nyx_string* %345 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %344, i64 %346, i64 2)
  %347 = load { i64, i8* }*, { i64, i8* }** %342
  %348 = ptrtoint { i64, i8* }* %347 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %344, i64 %348, i64 5)
  %349 = ptrtoint { i64, i8* }* %344 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %343, i64 %349, i64 5)
  %350 = getelementptr [12 x i8], [12 x i8]* @.str313, i32 0, i32 0
  %351 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str313.c, i8* %350, i64 11)
  %352 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %351)
  br label %merge80
else79:
  %353 = load %nyx_string*, %nyx_string** %303
  %354 = getelementptr [8 x i8], [8 x i8]* @.str314, i32 0, i32 0
  %355 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str314.c, i8* %354, i64 7)
  %356 = call i1 @nyx_string_equals(%nyx_string* %353, %nyx_string* %355)
  br i1 %356, label %then81, label %else82
then81:
  %357 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %358 = getelementptr [11 x i8], [11 x i8]* @.str315, i32 0, i32 0
  %359 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str315.c, i8* %358, i64 10)
  %360 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %359)
  %361 = alloca i1
  store i1 0, i1* %361
  %362 = call i8* @llvm.stacksave()
  br label %while_cond84
while_cond84:
  %363 = load i1, i1* %361
  %364 = xor i1 %363, true
  br i1 %364, label %while_body85, label %while_end86
while_body85:
  call void @llvm.stackrestore(i8* %362)
  %365 = getelementptr [7 x i8], [7 x i8]* @.str316, i32 0, i32 0
  %366 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str316.c, i8* %365, i64 6)
  %367 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %366)
  %368 = alloca %Token
  store %Token %367, %Token* %368
  %369 = load { i64, i8* }*, { i64, i8* }** %287
  %370 = load %Token, %Token* %368
  %371 = call %nyx_string* @get_token_value(%Token %370)
  %372 = ptrtoint %nyx_string* %371 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %369, i64 %372, i64 2)
  %373 = getelementptr [6 x i8], [6 x i8]* @.str317, i32 0, i32 0
  %374 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str317.c, i8* %373, i64 5)
  %375 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %374)
  br i1 %375, label %then87, label %else88
then87:
  %376 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge89
else88:
  store i1 1, i1* %361
  br label %merge89
merge89:
  br label %while_cond84
while_end86:
  %377 = getelementptr [12 x i8], [12 x i8]* @.str318, i32 0, i32 0
  %378 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str318.c, i8* %377, i64 11)
  %379 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %378)
  br label %merge83
else82:
  store i1 1, i1* %288
  br label %merge83
merge83:
  br label %merge80
merge80:
  br label %merge77
merge77:
  br label %merge74
else73:
  store i1 1, i1* %288
  br label %merge74
merge74:
  br label %merge71
else70:
  store i1 1, i1* %288
  br label %merge71
merge71:
  br label %while_cond66
while_end68:
  %380 = getelementptr [12 x i8], [12 x i8]* @.str319, i32 0, i32 0
  %381 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str319.c, i8* %380, i64 11)
  %382 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %381)
  %383 = getelementptr [11 x i8], [11 x i8]* @.str320, i32 0, i32 0
  %384 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str320.c, i8* %383, i64 10)
  %385 = call { i64, i8* }* @nyx_array_new_ptr()
  %386 = load %nyx_string*, %nyx_string** %156
  %387 = ptrtoint %nyx_string* %386 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %385, i64 %387, i64 2)
  %388 = load { i64, i8* }*, { i64, i8* }** %283
  %389 = ptrtoint { i64, i8* }* %388 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %385, i64 %389, i64 5)
  %390 = load { i64, i8* }*, { i64, i8* }** %285
  %391 = ptrtoint { i64, i8* }* %390 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %385, i64 %391, i64 5)
  %392 = load { i64, i8* }*, { i64, i8* }** %287
  %393 = ptrtoint { i64, i8* }* %392 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %385, i64 %393, i64 5)
  %394 = call { i64, i8* }* @make_astnode(%nyx_string* %384, { i64, i8* }* %385)
  ret { i64, i8* }* %394
else22:
  br label %merge23
merge23:
  %395 = getelementptr [7 x i8], [7 x i8]* @.str321, i32 0, i32 0
  %396 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str321.c, i8* %395, i64 6)
  %397 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %396)
  br i1 %397, label %then90, label %else91
then90:
  %398 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %399 = alloca %Token
  store %Token %398, %Token* %399
  %400 = getelementptr [11 x i8], [11 x i8]* @.str322, i32 0, i32 0
  %401 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str322.c, i8* %400, i64 10)
  %402 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %401)
  %403 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %404 = alloca { i64, i8* }*
  store { i64, i8* }* %403, { i64, i8* }** %404
  %405 = getelementptr [7 x i8], [7 x i8]* @.str323, i32 0, i32 0
  %406 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str323.c, i8* %405, i64 6)
  %407 = call { i64, i8* }* @nyx_array_new_ptr()
  %408 = getelementptr [15 x i8], [15 x i8]* @.str324, i32 0, i32 0
  %409 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str324.c, i8* %408, i64 14)
  %410 = load %Token, %Token* %399
  %411 = call i64 @get_token_line(%Token %410)
  %412 = call %nyx_string* @nyx_string_from_int(i64 %411)
  %413 = call %nyx_string* @nyx_string_concat(%nyx_string* %409, %nyx_string* %412)
  %414 = ptrtoint %nyx_string* %413 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %407, i64 %414, i64 2)
  %415 = call { i64, i8* }* @make_astnode(%nyx_string* %406, { i64, i8* }* %407)
  %416 = alloca { i64, i8* }*
  store { i64, i8* }* %415, { i64, i8* }** %416
  %417 = getelementptr [6 x i8], [6 x i8]* @.str325, i32 0, i32 0
  %418 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str325.c, i8* %417, i64 5)
  %419 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %418)
  br i1 %419, label %then93, label %else94
then93:
  %420 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %421 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %421, { i64, i8* }** %416
  br label %merge95
else94:
  br label %merge95
merge95:
  %422 = getelementptr [12 x i8], [12 x i8]* @.str326, i32 0, i32 0
  %423 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str326.c, i8* %422, i64 11)
  %424 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %423)
  %425 = getelementptr [7 x i8], [7 x i8]* @.str327, i32 0, i32 0
  %426 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str327.c, i8* %425, i64 6)
  %427 = call { i64, i8* }* @nyx_array_new_ptr()
  %428 = load { i64, i8* }*, { i64, i8* }** %404
  %429 = ptrtoint { i64, i8* }* %428 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %427, i64 %429, i64 5)
  %430 = load { i64, i8* }*, { i64, i8* }** %416
  %431 = ptrtoint { i64, i8* }* %430 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %427, i64 %431, i64 5)
  %432 = call { i64, i8* }* @make_astnode(%nyx_string* %426, { i64, i8* }* %427)
  ret { i64, i8* }* %432
else91:
  br label %merge92
merge92:
  %433 = getelementptr [11 x i8], [11 x i8]* @.str328, i32 0, i32 0
  %434 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str328.c, i8* %433, i64 10)
  %435 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %434)
  br i1 %435, label %then96, label %else97
then96:
  %436 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %437 = alloca %Token
  store %Token %436, %Token* %437
  %438 = load %Token, %Token* %437
  %439 = call %nyx_string* @get_token_value(%Token %438)
  %440 = alloca %nyx_string*
  store %nyx_string* %439, %nyx_string** %440
  %441 = load { i64, i8* }*, { i64, i8* }** %17
  %442 = call i64 @nyx_array_length({ i64, i8* }* %441)
  %443 = icmp sgt i64 %442, 0
  br i1 %443, label %then99, label %else100
then99:
  %444 = alloca i64
  store i64 0, i64* %444
  %445 = call i8* @llvm.stacksave()
  br label %while_cond102
while_cond102:
  %446 = load i64, i64* %444
  %447 = load { i64, i8* }*, { i64, i8* }** %17
  %448 = call i64 @nyx_array_length({ i64, i8* }* %447)
  %449 = icmp slt i64 %446, %448
  br i1 %449, label %while_body103, label %while_end104
while_body103:
  call void @llvm.stackrestore(i8* %445)
  %450 = load { i64, i8* }*, { i64, i8* }** %17
  %451 = load i64, i64* %444
  %452 = call i64 @nyx_array_get_checked({ i64, i8* }* %450, i64 %451, i64 2)
  %453 = inttoptr i64 %452 to %nyx_string*
  %454 = alloca %nyx_string*
  store %nyx_string* %453, %nyx_string** %454
  %455 = load %nyx_string*, %nyx_string** %454
  %456 = load %nyx_string*, %nyx_string** %440
  %457 = call i1 @nyx_string_equals(%nyx_string* %455, %nyx_string* %456)
  br i1 %457, label %then105, label %else106
then105:
  %458 = load { i64, i8* }*, { i64, i8* }** %18
  %459 = load i64, i64* %444
  %460 = call i64 @nyx_array_get({ i64, i8* }* %458, i64 %459)
  %461 = inttoptr i64 %460 to { i64, i8* }*
  %462 = alloca { i64, i8* }*
  store { i64, i8* }* %461, { i64, i8* }** %462
  %463 = load { i64, i8* }*, { i64, i8* }** %462
  ret { i64, i8* }* %463
else106:
  br label %merge107
merge107:
  %464 = load i64, i64* %444
  %465 = add i64 %464, 1
  store i64 %465, i64* %444
  br label %while_cond102
while_end104:
  br label %merge101
else100:
  br label %merge101
merge101:
  %466 = getelementptr [4 x i8], [4 x i8]* @.str329, i32 0, i32 0
  %467 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str329.c, i8* %466, i64 3)
  %468 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %467)
  br i1 %468, label %then108, label %else109
then108:
  %469 = alloca i1
  store i1 0, i1* %469
  %470 = alloca i64
  store i64 0, i64* %470
  %471 = call i8* @llvm.stacksave()
  br label %while_cond111
while_cond111:
  %472 = load i64, i64* %470
  %473 = load { i64, i8* }*, { i64, i8* }** %14
  %474 = call i64 @nyx_array_length({ i64, i8* }* %473)
  %475 = icmp slt i64 %472, %474
  br i1 %475, label %while_body112, label %while_end113
while_body112:
  call void @llvm.stackrestore(i8* %471)
  %476 = load { i64, i8* }*, { i64, i8* }** %14
  %477 = load i64, i64* %470
  %478 = call i64 @nyx_array_get_checked({ i64, i8* }* %476, i64 %477, i64 2)
  %479 = inttoptr i64 %478 to %nyx_string*
  %480 = alloca %nyx_string*
  store %nyx_string* %479, %nyx_string** %480
  %481 = load %nyx_string*, %nyx_string** %480
  %482 = load %nyx_string*, %nyx_string** %440
  %483 = call i1 @nyx_string_equals(%nyx_string* %481, %nyx_string* %482)
  br i1 %483, label %then114, label %else115
then114:
  store i1 1, i1* %469
  br label %merge116
else115:
  br label %merge116
merge116:
  %484 = load i64, i64* %470
  %485 = add i64 %484, 1
  store i64 %485, i64* %470
  br label %while_cond111
while_end113:
  %486 = load i1, i1* %469
  br i1 %486, label %then117, label %else118
then117:
  %487 = load %nyx_string*, %nyx_string** %440
  %488 = call { i64, i8* }* @parse__parse_macro_invocation(%SharedEnv_parse* %env.param, %nyx_string* %487)
  ret { i64, i8* }* %488
else118:
  br label %merge119
merge119:
  br label %merge110
else109:
  br label %merge110
merge110:
  %489 = alloca i1
  store i1 false, i1* %489
  %490 = getelementptr [11 x i8], [11 x i8]* @.str330, i32 0, i32 0
  %491 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str330.c, i8* %490, i64 10)
  %492 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %491)
  br i1 %492, label %sc_and_rhs120, label %sc_and_end121
sc_and_rhs120:
  %493 = load i64, i64* %6
  %494 = icmp eq i64 %493, 0
  store i1 %494, i1* %489
  br label %sc_and_end121
sc_and_end121:
  %495 = load i1, i1* %489
  br i1 %495, label %then122, label %else123
then122:
  %496 = alloca i1
  store i1 false, i1* %496
  %497 = getelementptr [11 x i8], [11 x i8]* @.str331, i32 0, i32 0
  %498 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str331.c, i8* %497, i64 10)
  %499 = call i1 @parse__check_at(%SharedEnv_parse* %env.param, i64 1, %nyx_string* %498)
  br i1 %499, label %sc_and_rhs125, label %sc_and_end126
sc_and_rhs125:
  %500 = getelementptr [6 x i8], [6 x i8]* @.str332, i32 0, i32 0
  %501 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str332.c, i8* %500, i64 5)
  %502 = call i1 @parse__check_at(%SharedEnv_parse* %env.param, i64 2, %nyx_string* %501)
  store i1 %502, i1* %496
  br label %sc_and_end126
sc_and_end126:
  %503 = load i1, i1* %496
  br i1 %503, label %then127, label %else128
then127:
  %504 = load %nyx_string*, %nyx_string** %440
  %505 = call { i64, i8* }* @parse__parse_struct_construction(%SharedEnv_parse* %env.param, %nyx_string* %504)
  ret { i64, i8* }* %505
else128:
  br label %merge129
merge129:
  %506 = getelementptr [12 x i8], [12 x i8]* @.str333, i32 0, i32 0
  %507 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str333.c, i8* %506, i64 11)
  %508 = call i1 @parse__check_at(%SharedEnv_parse* %env.param, i64 1, %nyx_string* %507)
  br i1 %508, label %then130, label %else131
then130:
  %509 = load %nyx_string*, %nyx_string** %440
  %510 = call { i64, i8* }* @parse__parse_struct_construction(%SharedEnv_parse* %env.param, %nyx_string* %509)
  ret { i64, i8* }* %510
else131:
  br label %merge132
merge132:
  br label %merge124
else123:
  br label %merge124
merge124:
  %511 = getelementptr [11 x i8], [11 x i8]* @.str334, i32 0, i32 0
  %512 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str334.c, i8* %511, i64 10)
  %513 = call { i64, i8* }* @nyx_array_new_ptr()
  %514 = load %nyx_string*, %nyx_string** %440
  %515 = ptrtoint %nyx_string* %514 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %513, i64 %515, i64 2)
  %516 = call { i64, i8* }* @make_astnode(%nyx_string* %512, { i64, i8* }* %513)
  ret { i64, i8* }* %516
else97:
  br label %merge98
merge98:
  %517 = getelementptr [13 x i8], [13 x i8]* @.str335, i32 0, i32 0
  %518 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str335.c, i8* %517, i64 12)
  %519 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %518)
  br i1 %519, label %then133, label %else134
then133:
  %520 = call { i64, i8* }* @parse__parse_array_literal(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %520
else134:
  br label %merge135
merge135:
  %521 = getelementptr [6 x i8], [6 x i8]* @.str336, i32 0, i32 0
  %522 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str336.c, i8* %521, i64 5)
  %523 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %522)
  br i1 %523, label %then136, label %else137
then136:
  %524 = call { i64, i8* }* @parse__parse_match(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %524
else137:
  br label %merge138
merge138:
  %525 = getelementptr [11 x i8], [11 x i8]* @.str337, i32 0, i32 0
  %526 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str337.c, i8* %525, i64 10)
  %527 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %526)
  br i1 %527, label %then139, label %else140
then139:
  %528 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %529 = load i64, i64* %6
  %530 = alloca i64
  store i64 %529, i64* %530
  store i64 0, i64* %6
  %531 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %532 = alloca { i64, i8* }*
  store { i64, i8* }* %531, { i64, i8* }** %532
  %533 = getelementptr [6 x i8], [6 x i8]* @.str338, i32 0, i32 0
  %534 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str338.c, i8* %533, i64 5)
  %535 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %534)
  br i1 %535, label %then142, label %else143
then142:
  %536 = call { i64, i8* }* @nyx_array_new_ptr()
  %537 = load { i64, i8* }*, { i64, i8* }** %532
  %538 = ptrtoint { i64, i8* }* %537 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %536, i64 %538, i64 5)
  %539 = alloca { i64, i8* }*
  store { i64, i8* }* %536, { i64, i8* }** %539
  %540 = call i8* @llvm.stacksave()
  br label %while_cond145
while_cond145:
  %541 = getelementptr [6 x i8], [6 x i8]* @.str339, i32 0, i32 0
  %542 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str339.c, i8* %541, i64 5)
  %543 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %542)
  br i1 %543, label %while_body146, label %while_end147
while_body146:
  call void @llvm.stackrestore(i8* %540)
  %544 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %545 = load { i64, i8* }*, { i64, i8* }** %539
  %546 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %547 = ptrtoint { i64, i8* }* %546 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %545, i64 %547, i64 5)
  br label %while_cond145
while_end147:
  %548 = getelementptr [12 x i8], [12 x i8]* @.str340, i32 0, i32 0
  %549 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str340.c, i8* %548, i64 11)
  %550 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %549)
  %551 = load i64, i64* %530
  store i64 %551, i64* %6
  %552 = getelementptr [10 x i8], [10 x i8]* @.str341, i32 0, i32 0
  %553 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str341.c, i8* %552, i64 9)
  %554 = call { i64, i8* }* @nyx_array_new_ptr()
  %555 = load { i64, i8* }*, { i64, i8* }** %539
  %556 = ptrtoint { i64, i8* }* %555 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %554, i64 %556, i64 5)
  %557 = call { i64, i8* }* @make_astnode(%nyx_string* %553, { i64, i8* }* %554)
  ret { i64, i8* }* %557
else143:
  br label %merge144
merge144:
  %558 = getelementptr [12 x i8], [12 x i8]* @.str342, i32 0, i32 0
  %559 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str342.c, i8* %558, i64 11)
  %560 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %559)
  %561 = load i64, i64* %530
  store i64 %561, i64* %6
  %562 = load { i64, i8* }*, { i64, i8* }** %532
  ret { i64, i8* }* %562
else140:
  br label %merge141
merge141:
  %563 = getelementptr [3 x i8], [3 x i8]* @.str343, i32 0, i32 0
  %564 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str343.c, i8* %563, i64 2)
  %565 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %564)
  br i1 %565, label %then148, label %else149
then148:
  %566 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %567 = load { i64, i8* }*, { i64, i8* }** %13
  %568 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %567, i64 0)
  %569 = alloca i64
  store i64 %568, i64* %569
  %570 = load { i64, i8* }*, { i64, i8* }** %13
  %571 = load { i64, i8* }*, { i64, i8* }** %13
  %572 = call i64 @nyx_array_get({ i64, i8* }* %571, i64 0)
  %573 = add i64 %572, 1
  call void @nyx_array_set({ i64, i8* }* %570, i64 0, i64 %573)
  %574 = getelementptr [10 x i8], [10 x i8]* @.str344, i32 0, i32 0
  %575 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str344.c, i8* %574, i64 9)
  %576 = load i64, i64* %569
  %577 = call %nyx_string* @nyx_string_from_int(i64 %576)
  %578 = call %nyx_string* @nyx_string_concat(%nyx_string* %575, %nyx_string* %577)
  %579 = alloca %nyx_string*
  store %nyx_string* %578, %nyx_string** %579
  %580 = getelementptr [11 x i8], [11 x i8]* @.str345, i32 0, i32 0
  %581 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str345.c, i8* %580, i64 10)
  %582 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %581)
  %583 = call { i64, i8* }* @nyx_array_new_ptr()
  %584 = alloca { i64, i8* }*
  store { i64, i8* }* %583, { i64, i8* }** %584
  %585 = alloca i1
  store i1 0, i1* %585
  %586 = call i8* @llvm.stacksave()
  br label %while_cond151
while_cond151:
  %587 = load i1, i1* %585
  %588 = xor i1 %587, true
  br i1 %588, label %while_body152, label %while_end153
while_body152:
  call void @llvm.stackrestore(i8* %586)
  %589 = getelementptr [12 x i8], [12 x i8]* @.str346, i32 0, i32 0
  %590 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str346.c, i8* %589, i64 11)
  %591 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %590)
  br i1 %591, label %then154, label %else155
then154:
  %592 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %585
  br label %merge156
else155:
  %593 = load { i64, i8* }*, { i64, i8* }** %584
  %594 = call i64 @nyx_array_length({ i64, i8* }* %593)
  %595 = icmp sgt i64 %594, 0
  br i1 %595, label %then157, label %else158
then157:
  %596 = getelementptr [6 x i8], [6 x i8]* @.str347, i32 0, i32 0
  %597 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str347.c, i8* %596, i64 5)
  %598 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %597)
  br label %merge159
else158:
  br label %merge159
merge159:
  %599 = getelementptr [11 x i8], [11 x i8]* @.str348, i32 0, i32 0
  %600 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str348.c, i8* %599, i64 10)
  %601 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %600)
  %602 = alloca %Token
  store %Token %601, %Token* %602
  %603 = load %Token, %Token* %602
  %604 = call %nyx_string* @get_token_value(%Token %603)
  %605 = alloca %nyx_string*
  store %nyx_string* %604, %nyx_string** %605
  %606 = getelementptr [4 x i8], [4 x i8]* @.str349, i32 0, i32 0
  %607 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str349.c, i8* %606, i64 3)
  %608 = alloca %nyx_string*
  store %nyx_string* %607, %nyx_string** %608
  %609 = getelementptr [6 x i8], [6 x i8]* @.str350, i32 0, i32 0
  %610 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str350.c, i8* %609, i64 5)
  %611 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %610)
  br i1 %611, label %then160, label %else161
then160:
  %612 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %613 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %613, %nyx_string** %608
  br label %merge162
else161:
  br label %merge162
merge162:
  %614 = load { i64, i8* }*, { i64, i8* }** %584
  %615 = call { i64, i8* }* @nyx_array_new_ptr()
  %616 = load %nyx_string*, %nyx_string** %605
  %617 = ptrtoint %nyx_string* %616 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %615, i64 %617, i64 2)
  %618 = load %nyx_string*, %nyx_string** %608
  %619 = ptrtoint %nyx_string* %618 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %615, i64 %619, i64 2)
  %620 = ptrtoint { i64, i8* }* %615 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %614, i64 %620, i64 5)
  br label %merge156
merge156:
  br label %while_cond151
while_end153:
  %621 = getelementptr [1 x i8], [1 x i8]* @.str351, i32 0, i32 0
  %622 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str351.c, i8* %621, i64 0)
  %623 = alloca %nyx_string*
  store %nyx_string* %622, %nyx_string** %623
  %624 = getelementptr [6 x i8], [6 x i8]* @.str352, i32 0, i32 0
  %625 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str352.c, i8* %624, i64 5)
  %626 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %625)
  br i1 %626, label %then163, label %else164
then163:
  %627 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %628 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %628, %nyx_string** %623
  br label %merge165
else164:
  br label %merge165
merge165:
  %629 = call { i64, i8* }* @parse__parse_fn_body_block(%SharedEnv_parse* %env.param)
  %630 = alloca { i64, i8* }*
  store { i64, i8* }* %629, { i64, i8* }** %630
  %631 = getelementptr [9 x i8], [9 x i8]* @.str353, i32 0, i32 0
  %632 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str353.c, i8* %631, i64 8)
  %633 = call { i64, i8* }* @nyx_array_new_ptr()
  %634 = load %nyx_string*, %nyx_string** %579
  %635 = ptrtoint %nyx_string* %634 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %633, i64 %635, i64 2)
  %636 = load { i64, i8* }*, { i64, i8* }** %584
  %637 = ptrtoint { i64, i8* }* %636 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %633, i64 %637, i64 5)
  %638 = load %nyx_string*, %nyx_string** %623
  %639 = ptrtoint %nyx_string* %638 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %633, i64 %639, i64 2)
  %640 = load { i64, i8* }*, { i64, i8* }** %630
  %641 = ptrtoint { i64, i8* }* %640 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %633, i64 %641, i64 5)
  %642 = call { i64, i8* }* @nyx_array_new_ptr()
  %643 = ptrtoint { i64, i8* }* %642 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %633, i64 %643, i64 5)
  %644 = call { i64, i8* }* @make_astnode(%nyx_string* %632, { i64, i8* }* %633)
  %645 = alloca { i64, i8* }*
  store { i64, i8* }* %644, { i64, i8* }** %645
  %646 = load { i64, i8* }*, { i64, i8* }** %12
  %647 = load { i64, i8* }*, { i64, i8* }** %645
  %648 = ptrtoint { i64, i8* }* %647 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %646, i64 %648, i64 5)
  %649 = getelementptr [11 x i8], [11 x i8]* @.str354, i32 0, i32 0
  %650 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str354.c, i8* %649, i64 10)
  %651 = call { i64, i8* }* @nyx_array_new_ptr()
  %652 = load %nyx_string*, %nyx_string** %579
  %653 = ptrtoint %nyx_string* %652 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %651, i64 %653, i64 2)
  %654 = call { i64, i8* }* @make_astnode(%nyx_string* %650, { i64, i8* }* %651)
  ret { i64, i8* }* %654
else149:
  br label %merge150
merge150:
  %655 = getelementptr [11 x i8], [11 x i8]* @.str355, i32 0, i32 0
  %656 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str355.c, i8* %655, i64 10)
  %657 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %656)
  br i1 %657, label %then166, label %else167
then166:
  %658 = alloca i1
  store i1 true, i1* %658
  %659 = getelementptr [12 x i8], [12 x i8]* @.str356, i32 0, i32 0
  %660 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str356.c, i8* %659, i64 11)
  %661 = call i1 @parse__check_at(%SharedEnv_parse* %env.param, i64 1, %nyx_string* %660)
  br i1 %661, label %sc_or_end170, label %sc_or_rhs169
sc_or_rhs169:
  %662 = alloca i1
  store i1 false, i1* %662
  %663 = getelementptr [7 x i8], [7 x i8]* @.str357, i32 0, i32 0
  %664 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str357.c, i8* %663, i64 6)
  %665 = call i1 @parse__check_at(%SharedEnv_parse* %env.param, i64 1, %nyx_string* %664)
  br i1 %665, label %sc_and_rhs171, label %sc_and_end172
sc_and_rhs171:
  %666 = getelementptr [6 x i8], [6 x i8]* @.str358, i32 0, i32 0
  %667 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str358.c, i8* %666, i64 5)
  %668 = call i1 @parse__check_at(%SharedEnv_parse* %env.param, i64 2, %nyx_string* %667)
  store i1 %668, i1* %662
  br label %sc_and_end172
sc_and_end172:
  %669 = load i1, i1* %662
  store i1 %669, i1* %658
  br label %sc_or_end170
sc_or_end170:
  %670 = load i1, i1* %658
  br i1 %670, label %then173, label %else174
then173:
  %671 = call { i64, i8* }* @parse__parse_map_literal(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %671
else174:
  br label %merge175
merge175:
  %672 = getelementptr [6 x i8], [6 x i8]* @.str359, i32 0, i32 0
  %673 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str359.c, i8* %672, i64 5)
  %674 = call i1 @parse__check_at(%SharedEnv_parse* %env.param, i64 2, %nyx_string* %673)
  br i1 %674, label %then176, label %else177
then176:
  %675 = getelementptr [8 x i8], [8 x i8]* @.str360, i32 0, i32 0
  %676 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str360.c, i8* %675, i64 7)
  %677 = load i64, i64* @g_last_line
  %678 = load i64, i64* @g_last_col
  %679 = getelementptr [71 x i8], [71 x i8]* @.str361, i32 0, i32 0
  %680 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str361.c, i8* %679, i64 70)
  %681 = getelementptr [55 x i8], [55 x i8]* @.str362, i32 0, i32 0
  %682 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str362.c, i8* %681, i64 54)
  %683 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %680, %nyx_string* %682)
  %684 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %676, i64 %677, i64 %678, %nyx_string* %683)
  %685 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %686 = getelementptr [6 x i8], [6 x i8]* @.str363, i32 0, i32 0
  %687 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str363.c, i8* %686, i64 5)
  %688 = call { i64, i8* }* @nyx_array_new_ptr()
  %689 = call { i64, i8* }* @make_astnode(%nyx_string* %687, { i64, i8* }* %688)
  ret { i64, i8* }* %689
else177:
  br label %merge178
merge178:
  br label %merge168
else167:
  br label %merge168
merge168:
  %690 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %691 = alloca %Token
  store %Token %690, %Token* %691
  %692 = load %Token, %Token* %691
  %693 = call %nyx_string* @get_token_value(%Token %692)
  %694 = alloca %nyx_string*
  store %nyx_string* %693, %nyx_string** %694
  %695 = load %Token, %Token* %691
  %696 = call %nyx_string* @get_token_type(%Token %695)
  %697 = alloca %nyx_string*
  store %nyx_string* %696, %nyx_string** %697
  %698 = getelementptr [8 x i8], [8 x i8]* @.str364, i32 0, i32 0
  %699 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str364.c, i8* %698, i64 7)
  %700 = load %Token, %Token* %691
  %701 = call i64 @get_token_line(%Token %700)
  %702 = load %Token, %Token* %691
  %703 = call i64 @get_token_column(%Token %702)
  %704 = getelementptr [38 x i8], [38 x i8]* @.str365, i32 0, i32 0
  %705 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str365.c, i8* %704, i64 37)
  %706 = load %nyx_string*, %nyx_string** %694
  %707 = call %nyx_string* @nyx_string_concat(%nyx_string* %705, %nyx_string* %706)
  %708 = getelementptr [4 x i8], [4 x i8]* @.str366, i32 0, i32 0
  %709 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str366.c, i8* %708, i64 3)
  %710 = call %nyx_string* @nyx_string_concat(%nyx_string* %707, %nyx_string* %709)
  %711 = load %nyx_string*, %nyx_string** %697
  %712 = call %nyx_string* @nyx_string_concat(%nyx_string* %710, %nyx_string* %711)
  %713 = getelementptr [2 x i8], [2 x i8]* @.str367, i32 0, i32 0
  %714 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str367.c, i8* %713, i64 1)
  %715 = call %nyx_string* @nyx_string_concat(%nyx_string* %712, %nyx_string* %714)
  %716 = getelementptr [34 x i8], [34 x i8]* @.str368, i32 0, i32 0
  %717 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str368.c, i8* %716, i64 33)
  %718 = load %nyx_string*, %nyx_string** %694
  %719 = call %nyx_string* @nyx_string_concat(%nyx_string* %717, %nyx_string* %718)
  %720 = getelementptr [4 x i8], [4 x i8]* @.str369, i32 0, i32 0
  %721 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str369.c, i8* %720, i64 3)
  %722 = call %nyx_string* @nyx_string_concat(%nyx_string* %719, %nyx_string* %721)
  %723 = load %nyx_string*, %nyx_string** %697
  %724 = call %nyx_string* @nyx_string_concat(%nyx_string* %722, %nyx_string* %723)
  %725 = getelementptr [2 x i8], [2 x i8]* @.str370, i32 0, i32 0
  %726 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str370.c, i8* %725, i64 1)
  %727 = call %nyx_string* @nyx_string_concat(%nyx_string* %724, %nyx_string* %726)
  %728 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %715, %nyx_string* %727)
  %729 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %699, i64 %701, i64 %703, %nyx_string* %728)
  %730 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %731 = getelementptr [6 x i8], [6 x i8]* @.str371, i32 0, i32 0
  %732 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str371.c, i8* %731, i64 5)
  %733 = call { i64, i8* }* @nyx_array_new_ptr()
  %734 = call { i64, i8* }* @make_astnode(%nyx_string* %732, { i64, i8* }* %733)
  ret { i64, i8* }* %734
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = getelementptr [11 x i8], [11 x i8]* @.str372, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str372.c, i8* %31, i64 10)
  %33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %32)
  %34 = call { i64, i8* }* @nyx_array_new_ptr()
  %35 = alloca { i64, i8* }*
  store { i64, i8* }* %34, { i64, i8* }** %35
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
  %42 = load i64, i64* %8
  %43 = icmp eq i64 %42, 1
  br i1 %43, label %then3, label %else4
then3:
  store i1 1, i1* %38
  br label %merge5
else4:
  %44 = getelementptr [4 x i8], [4 x i8]* @.str373, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str373.c, i8* %44, i64 3)
  %46 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %45)
  br i1 %46, label %then6, label %else7
then6:
  %47 = getelementptr [8 x i8], [8 x i8]* @.str374, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str374.c, i8* %47, i64 7)
  %49 = load i64, i64* @g_last_line
  %50 = load i64, i64* @g_last_col
  %51 = getelementptr [53 x i8], [53 x i8]* @.str375, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str375.c, i8* %51, i64 52)
  %53 = getelementptr [59 x i8], [59 x i8]* @.str376, i32 0, i32 0
  %54 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str376.c, i8* %53, i64 58)
  %55 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %52, %nyx_string* %54)
  %56 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %48, i64 %49, i64 %50, %nyx_string* %55)
  store i1 1, i1* %38
  br label %merge8
else7:
  %57 = getelementptr [12 x i8], [12 x i8]* @.str377, i32 0, i32 0
  %58 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str377.c, i8* %57, i64 11)
  %59 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %58)
  br i1 %59, label %then9, label %else10
then9:
  %60 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %38
  br label %merge11
else10:
  %61 = load { i64, i8* }*, { i64, i8* }** %35
  %62 = call i64 @nyx_array_length({ i64, i8* }* %61)
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %then12, label %else13
then12:
  %64 = getelementptr [6 x i8], [6 x i8]* @.str378, i32 0, i32 0
  %65 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str378.c, i8* %64, i64 5)
  %66 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %65)
  br i1 %66, label %then15, label %else16
then15:
  %67 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge17
else16:
  br label %merge17
merge17:
  br label %merge14
else13:
  br label %merge14
merge14:
  %68 = getelementptr [12 x i8], [12 x i8]* @.str379, i32 0, i32 0
  %69 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str379.c, i8* %68, i64 11)
  %70 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %69)
  br i1 %70, label %then18, label %else19
then18:
  %71 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %38
  br label %merge20
else19:
  %72 = getelementptr [7 x i8], [7 x i8]* @.str380, i32 0, i32 0
  %73 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str380.c, i8* %72, i64 6)
  %74 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %73)
  %75 = alloca %Token
  store %Token %74, %Token* %75
  %76 = getelementptr [6 x i8], [6 x i8]* @.str381, i32 0, i32 0
  %77 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str381.c, i8* %76, i64 5)
  %78 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %77)
  %79 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %80 = alloca { i64, i8* }*
  store { i64, i8* }* %79, { i64, i8* }** %80
  %81 = load { i64, i8* }*, { i64, i8* }** %35
  %82 = load %Token, %Token* %75
  %83 = call %nyx_string* @get_token_value(%Token %82)
  %84 = ptrtoint %nyx_string* %83 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %81, i64 %84, i64 2)
  %85 = load { i64, i8* }*, { i64, i8* }** %37
  %86 = load { i64, i8* }*, { i64, i8* }** %80
  %87 = ptrtoint { i64, i8* }* %86 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %85, i64 %87, i64 5)
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
  %88 = getelementptr [12 x i8], [12 x i8]* @.str382, i32 0, i32 0
  %89 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str382.c, i8* %88, i64 11)
  %90 = call { i64, i8* }* @nyx_array_new_ptr()
  %91 = load { i64, i8* }*, { i64, i8* }** %35
  %92 = ptrtoint { i64, i8* }* %91 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %90, i64 %92, i64 5)
  %93 = load { i64, i8* }*, { i64, i8* }** %37
  %94 = ptrtoint { i64, i8* }* %93 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %90, i64 %94, i64 5)
  %95 = call { i64, i8* }* @make_astnode(%nyx_string* %89, { i64, i8* }* %90)
  ret { i64, i8* }* %95
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = getelementptr [13 x i8], [13 x i8]* @.str383, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str383.c, i8* %31, i64 12)
  %33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %32)
  %34 = call { i64, i8* }* @nyx_array_new_ptr()
  %35 = alloca { i64, i8* }*
  store { i64, i8* }* %34, { i64, i8* }** %35
  %36 = load i64, i64* %6
  %37 = alloca i64
  store i64 %36, i64* %37
  store i64 0, i64* %6
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
  %42 = getelementptr [14 x i8], [14 x i8]* @.str384, i32 0, i32 0
  %43 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str384.c, i8* %42, i64 13)
  %44 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %43)
  br i1 %44, label %then3, label %else4
then3:
  %45 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %38
  br label %merge5
else4:
  %46 = load { i64, i8* }*, { i64, i8* }** %35
  %47 = call i64 @nyx_array_length({ i64, i8* }* %46)
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %then6, label %else7
then6:
  %49 = getelementptr [6 x i8], [6 x i8]* @.str385, i32 0, i32 0
  %50 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str385.c, i8* %49, i64 5)
  %51 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %50)
  br label %merge8
else7:
  br label %merge8
merge8:
  %52 = load { i64, i8* }*, { i64, i8* }** %35
  %53 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %54 = ptrtoint { i64, i8* }* %53 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %52, i64 %54, i64 5)
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %55 = load i64, i64* %37
  store i64 %55, i64* %6
  %56 = getelementptr [6 x i8], [6 x i8]* @.str386, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str386.c, i8* %56, i64 5)
  %58 = call { i64, i8* }* @nyx_array_new_ptr()
  %59 = load { i64, i8* }*, { i64, i8* }** %35
  %60 = ptrtoint { i64, i8* }* %59 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %58, i64 %60, i64 5)
  %61 = call { i64, i8* }* @make_astnode(%nyx_string* %57, { i64, i8* }* %58)
  ret { i64, i8* }* %61
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = getelementptr [5 x i8], [5 x i8]* @.str387, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str387.c, i8* %31, i64 4)
  %33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %32)
  %34 = getelementptr [11 x i8], [11 x i8]* @.str388, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str388.c, i8* %34, i64 10)
  %36 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %35)
  %37 = alloca %Token
  store %Token %36, %Token* %37
  %38 = load %Token, %Token* %37
  %39 = call %nyx_string* @get_token_value(%Token %38)
  %40 = alloca %nyx_string*
  store %nyx_string* %39, %nyx_string** %40
  %41 = call { i64, i8* }* @nyx_array_new_ptr()
  %42 = alloca { i64, i8* }*
  store { i64, i8* }* %41, { i64, i8* }** %42
  %43 = getelementptr [5 x i8], [5 x i8]* @.str389, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str389.c, i8* %43, i64 4)
  %45 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %44)
  br i1 %45, label %then0, label %else1
then0:
  %46 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %47 = getelementptr [11 x i8], [11 x i8]* @.str390, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str390.c, i8* %47, i64 10)
  %49 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %48)
  %50 = alloca %Token
  store %Token %49, %Token* %50
  %51 = load { i64, i8* }*, { i64, i8* }** %42
  %52 = load %Token, %Token* %50
  %53 = call %nyx_string* @get_token_value(%Token %52)
  %54 = ptrtoint %nyx_string* %53 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %51, i64 %54, i64 2)
  %55 = alloca i1
  store i1 0, i1* %55
  %56 = call i8* @llvm.stacksave()
  br label %while_cond3
while_cond3:
  %57 = load i1, i1* %55
  %58 = xor i1 %57, true
  br i1 %58, label %while_body4, label %while_end5
while_body4:
  call void @llvm.stackrestore(i8* %56)
  %59 = getelementptr [6 x i8], [6 x i8]* @.str391, i32 0, i32 0
  %60 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str391.c, i8* %59, i64 5)
  %61 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %60)
  br i1 %61, label %then6, label %else7
then6:
  %62 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %63 = getelementptr [11 x i8], [11 x i8]* @.str392, i32 0, i32 0
  %64 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str392.c, i8* %63, i64 10)
  %65 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %64)
  %66 = alloca %Token
  store %Token %65, %Token* %66
  %67 = load { i64, i8* }*, { i64, i8* }** %42
  %68 = load %Token, %Token* %66
  %69 = call %nyx_string* @get_token_value(%Token %68)
  %70 = ptrtoint %nyx_string* %69 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %67, i64 %70, i64 2)
  br label %merge8
else7:
  store i1 1, i1* %55
  br label %merge8
merge8:
  br label %while_cond3
while_end5:
  %71 = getelementptr [8 x i8], [8 x i8]* @.str393, i32 0, i32 0
  %72 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str393.c, i8* %71, i64 7)
  %73 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %72)
  br label %merge2
else1:
  br label %merge2
merge2:
  %74 = getelementptr [11 x i8], [11 x i8]* @.str394, i32 0, i32 0
  %75 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str394.c, i8* %74, i64 10)
  %76 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %75)
  %77 = call { i64, i8* }* @nyx_array_new_ptr()
  %78 = alloca { i64, i8* }*
  store { i64, i8* }* %77, { i64, i8* }** %78
  %79 = alloca i1
  store i1 0, i1* %79
  %80 = call i8* @llvm.stacksave()
  br label %while_cond9
while_cond9:
  %81 = load i1, i1* %79
  %82 = xor i1 %81, true
  br i1 %82, label %while_body10, label %while_end11
while_body10:
  call void @llvm.stackrestore(i8* %80)
  %83 = getelementptr [12 x i8], [12 x i8]* @.str395, i32 0, i32 0
  %84 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str395.c, i8* %83, i64 11)
  %85 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %84)
  br i1 %85, label %then12, label %else13
then12:
  %86 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %79
  br label %merge14
else13:
  %87 = load { i64, i8* }*, { i64, i8* }** %78
  %88 = call i64 @nyx_array_length({ i64, i8* }* %87)
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %then15, label %else16
then15:
  %90 = getelementptr [6 x i8], [6 x i8]* @.str396, i32 0, i32 0
  %91 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str396.c, i8* %90, i64 5)
  %92 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %91)
  br i1 %92, label %then18, label %else19
then18:
  %93 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge20
else19:
  br label %merge20
merge20:
  br label %merge17
else16:
  br label %merge17
merge17:
  %94 = getelementptr [12 x i8], [12 x i8]* @.str397, i32 0, i32 0
  %95 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str397.c, i8* %94, i64 11)
  %96 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %95)
  br i1 %96, label %then21, label %else22
then21:
  %97 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %79
  br label %merge23
else22:
  %98 = getelementptr [11 x i8], [11 x i8]* @.str398, i32 0, i32 0
  %99 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str398.c, i8* %98, i64 10)
  %100 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %99)
  %101 = alloca %Token
  store %Token %100, %Token* %101
  %102 = load %Token, %Token* %101
  %103 = call %nyx_string* @get_token_value(%Token %102)
  %104 = alloca %nyx_string*
  store %nyx_string* %103, %nyx_string** %104
  %105 = call { i64, i8* }* @nyx_array_new_ptr()
  %106 = alloca { i64, i8* }*
  store { i64, i8* }* %105, { i64, i8* }** %106
  %107 = getelementptr [11 x i8], [11 x i8]* @.str399, i32 0, i32 0
  %108 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str399.c, i8* %107, i64 10)
  %109 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %108)
  br i1 %109, label %then24, label %else25
then24:
  %110 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %111 = alloca i1
  store i1 0, i1* %111
  %112 = call i8* @llvm.stacksave()
  br label %while_cond27
while_cond27:
  %113 = load i1, i1* %111
  %114 = xor i1 %113, true
  br i1 %114, label %while_body28, label %while_end29
while_body28:
  call void @llvm.stackrestore(i8* %112)
  %115 = getelementptr [12 x i8], [12 x i8]* @.str400, i32 0, i32 0
  %116 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str400.c, i8* %115, i64 11)
  %117 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %116)
  br i1 %117, label %then30, label %else31
then30:
  %118 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %111
  br label %merge32
else31:
  %119 = load { i64, i8* }*, { i64, i8* }** %106
  %120 = call i64 @nyx_array_length({ i64, i8* }* %119)
  %121 = icmp sgt i64 %120, 0
  br i1 %121, label %then33, label %else34
then33:
  %122 = getelementptr [6 x i8], [6 x i8]* @.str401, i32 0, i32 0
  %123 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str401.c, i8* %122, i64 5)
  %124 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %123)
  br label %merge35
else34:
  br label %merge35
merge35:
  %125 = getelementptr [11 x i8], [11 x i8]* @.str402, i32 0, i32 0
  %126 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str402.c, i8* %125, i64 10)
  %127 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %126)
  %128 = alloca %Token
  store %Token %127, %Token* %128
  %129 = load { i64, i8* }*, { i64, i8* }** %106
  %130 = load %Token, %Token* %128
  %131 = call %nyx_string* @get_token_value(%Token %130)
  %132 = ptrtoint %nyx_string* %131 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %129, i64 %132, i64 2)
  br label %merge32
merge32:
  br label %while_cond27
while_end29:
  br label %merge26
else25:
  br label %merge26
merge26:
  %133 = call { i64, i8* }* @nyx_array_new_ptr()
  %134 = alloca { i64, i8* }*
  store { i64, i8* }* %133, { i64, i8* }** %134
  %135 = load { i64, i8* }*, { i64, i8* }** %134
  %136 = load %nyx_string*, %nyx_string** %104
  %137 = ptrtoint %nyx_string* %136 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %135, i64 %137, i64 2)
  %138 = load { i64, i8* }*, { i64, i8* }** %134
  %139 = load { i64, i8* }*, { i64, i8* }** %106
  %140 = ptrtoint { i64, i8* }* %139 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %138, i64 %140, i64 5)
  %141 = load { i64, i8* }*, { i64, i8* }** %78
  %142 = load { i64, i8* }*, { i64, i8* }** %134
  %143 = ptrtoint { i64, i8* }* %142 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %141, i64 %143, i64 5)
  br label %merge23
merge23:
  br label %merge14
merge14:
  br label %while_cond9
while_end11:
  %144 = getelementptr [9 x i8], [9 x i8]* @.str403, i32 0, i32 0
  %145 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str403.c, i8* %144, i64 8)
  %146 = call { i64, i8* }* @nyx_array_new_ptr()
  %147 = load %nyx_string*, %nyx_string** %40
  %148 = ptrtoint %nyx_string* %147 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %146, i64 %148, i64 2)
  %149 = load { i64, i8* }*, { i64, i8* }** %78
  %150 = ptrtoint { i64, i8* }* %149 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %146, i64 %150, i64 5)
  %151 = load { i64, i8* }*, { i64, i8* }** %42
  %152 = ptrtoint { i64, i8* }* %151 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %146, i64 %152, i64 5)
  %153 = call { i64, i8* }* @make_astnode(%nyx_string* %145, { i64, i8* }* %146)
  %154 = alloca { i64, i8* }*
  store { i64, i8* }* %153, { i64, i8* }** %154
  %155 = load { i64, i8* }*, { i64, i8* }** %154
  %156 = load %Token, %Token* %37
  %157 = call i64 @get_token_line(%Token %156)
  call void @nyx_array_set({ i64, i8* }* %155, i64 2, i64 %157)
  %158 = load { i64, i8* }*, { i64, i8* }** %154
  ret { i64, i8* }* %158
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = getelementptr [9 x i8], [9 x i8]* @.str404, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str404.c, i8* %31, i64 8)
  %33 = call { i64, i8* }* @nyx_array_new_ptr()
  %34 = call { i64, i8* }* @make_astnode(%nyx_string* %32, { i64, i8* }* %33)
  %35 = alloca { i64, i8* }*
  store { i64, i8* }* %34, { i64, i8* }** %35
  %36 = getelementptr [7 x i8], [7 x i8]* @.str405, i32 0, i32 0
  %37 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str405.c, i8* %36, i64 6)
  %38 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %37)
  br i1 %38, label %then0, label %else1
then0:
  %39 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %40 = alloca %Token
  store %Token %39, %Token* %40
  %41 = load %Token, %Token* %40
  %42 = call %nyx_string* @get_token_value(%Token %41)
  %43 = alloca %nyx_string*
  store %nyx_string* %42, %nyx_string** %43
  %44 = load %nyx_string*, %nyx_string** %43
  %45 = getelementptr [2 x i8], [2 x i8]* @.str406, i32 0, i32 0
  %46 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str406.c, i8* %45, i64 1)
  %47 = call i64 @nyx_string_index_of(%nyx_string* %44, %nyx_string* %46)
  %48 = icmp sge i64 %47, 0
  br i1 %48, label %then3, label %else4
then3:
  %49 = getelementptr [16 x i8], [16 x i8]* @.str407, i32 0, i32 0
  %50 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str407.c, i8* %49, i64 15)
  %51 = call { i64, i8* }* @nyx_array_new_ptr()
  %52 = load %nyx_string*, %nyx_string** %43
  %53 = ptrtoint %nyx_string* %52 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %51, i64 %53, i64 2)
  %54 = getelementptr [6 x i8], [6 x i8]* @.str408, i32 0, i32 0
  %55 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str408.c, i8* %54, i64 5)
  %56 = ptrtoint %nyx_string* %55 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %51, i64 %56, i64 2)
  %57 = call { i64, i8* }* @make_astnode(%nyx_string* %50, { i64, i8* }* %51)
  ret { i64, i8* }* %57
else4:
  br label %merge5
merge5:
  %58 = getelementptr [16 x i8], [16 x i8]* @.str409, i32 0, i32 0
  %59 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str409.c, i8* %58, i64 15)
  %60 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %59)
  br i1 %60, label %then6, label %else7
then6:
  %61 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %62 = getelementptr [1 x i8], [1 x i8]* @.str410, i32 0, i32 0
  %63 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str410.c, i8* %62, i64 0)
  %64 = alloca %nyx_string*
  store %nyx_string* %63, %nyx_string** %64
  %65 = getelementptr [6 x i8], [6 x i8]* @.str411, i32 0, i32 0
  %66 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str411.c, i8* %65, i64 5)
  %67 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %66)
  br i1 %67, label %then9, label %else10
then9:
  %68 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %69 = getelementptr [7 x i8], [7 x i8]* @.str412, i32 0, i32 0
  %70 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str412.c, i8* %69, i64 6)
  %71 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %70)
  %72 = alloca %Token
  store %Token %71, %Token* %72
  %73 = getelementptr [2 x i8], [2 x i8]* @.str413, i32 0, i32 0
  %74 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str413.c, i8* %73, i64 1)
  %75 = load %Token, %Token* %72
  %76 = call %nyx_string* @get_token_value(%Token %75)
  %77 = call %nyx_string* @nyx_string_concat(%nyx_string* %74, %nyx_string* %76)
  store %nyx_string* %77, %nyx_string** %64
  br label %merge11
else10:
  %78 = getelementptr [7 x i8], [7 x i8]* @.str414, i32 0, i32 0
  %79 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str414.c, i8* %78, i64 6)
  %80 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %79)
  %81 = alloca %Token
  store %Token %80, %Token* %81
  %82 = load %Token, %Token* %81
  %83 = call %nyx_string* @get_token_value(%Token %82)
  store %nyx_string* %83, %nyx_string** %64
  br label %merge11
merge11:
  %84 = getelementptr [14 x i8], [14 x i8]* @.str415, i32 0, i32 0
  %85 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str415.c, i8* %84, i64 13)
  %86 = call { i64, i8* }* @nyx_array_new_ptr()
  %87 = load %nyx_string*, %nyx_string** %43
  %88 = ptrtoint %nyx_string* %87 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %86, i64 %88, i64 2)
  %89 = load %nyx_string*, %nyx_string** %64
  %90 = ptrtoint %nyx_string* %89 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %86, i64 %90, i64 2)
  %91 = getelementptr [5 x i8], [5 x i8]* @.str416, i32 0, i32 0
  %92 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str416.c, i8* %91, i64 4)
  %93 = ptrtoint %nyx_string* %92 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %86, i64 %93, i64 2)
  %94 = getelementptr [4 x i8], [4 x i8]* @.str417, i32 0, i32 0
  %95 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str417.c, i8* %94, i64 3)
  %96 = ptrtoint %nyx_string* %95 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %86, i64 %96, i64 2)
  %97 = call { i64, i8* }* @make_astnode(%nyx_string* %85, { i64, i8* }* %86)
  ret { i64, i8* }* %97
else7:
  br label %merge8
merge8:
  %98 = getelementptr [6 x i8], [6 x i8]* @.str418, i32 0, i32 0
  %99 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str418.c, i8* %98, i64 5)
  %100 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %99)
  br i1 %100, label %then12, label %else13
then12:
  %101 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %102 = getelementptr [1 x i8], [1 x i8]* @.str419, i32 0, i32 0
  %103 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str419.c, i8* %102, i64 0)
  %104 = alloca %nyx_string*
  store %nyx_string* %103, %nyx_string** %104
  %105 = getelementptr [6 x i8], [6 x i8]* @.str420, i32 0, i32 0
  %106 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str420.c, i8* %105, i64 5)
  %107 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %106)
  br i1 %107, label %then15, label %else16
then15:
  %108 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %109 = getelementptr [7 x i8], [7 x i8]* @.str421, i32 0, i32 0
  %110 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str421.c, i8* %109, i64 6)
  %111 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %110)
  %112 = alloca %Token
  store %Token %111, %Token* %112
  %113 = getelementptr [2 x i8], [2 x i8]* @.str422, i32 0, i32 0
  %114 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str422.c, i8* %113, i64 1)
  %115 = load %Token, %Token* %112
  %116 = call %nyx_string* @get_token_value(%Token %115)
  %117 = call %nyx_string* @nyx_string_concat(%nyx_string* %114, %nyx_string* %116)
  store %nyx_string* %117, %nyx_string** %104
  br label %merge17
else16:
  %118 = getelementptr [7 x i8], [7 x i8]* @.str423, i32 0, i32 0
  %119 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str423.c, i8* %118, i64 6)
  %120 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %119)
  %121 = alloca %Token
  store %Token %120, %Token* %121
  %122 = load %Token, %Token* %121
  %123 = call %nyx_string* @get_token_value(%Token %122)
  store %nyx_string* %123, %nyx_string** %104
  br label %merge17
merge17:
  %124 = getelementptr [14 x i8], [14 x i8]* @.str424, i32 0, i32 0
  %125 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str424.c, i8* %124, i64 13)
  %126 = call { i64, i8* }* @nyx_array_new_ptr()
  %127 = load %nyx_string*, %nyx_string** %43
  %128 = ptrtoint %nyx_string* %127 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %126, i64 %128, i64 2)
  %129 = load %nyx_string*, %nyx_string** %104
  %130 = ptrtoint %nyx_string* %129 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %126, i64 %130, i64 2)
  %131 = getelementptr [6 x i8], [6 x i8]* @.str425, i32 0, i32 0
  %132 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str425.c, i8* %131, i64 5)
  %133 = ptrtoint %nyx_string* %132 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %126, i64 %133, i64 2)
  %134 = getelementptr [4 x i8], [4 x i8]* @.str426, i32 0, i32 0
  %135 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str426.c, i8* %134, i64 3)
  %136 = ptrtoint %nyx_string* %135 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %126, i64 %136, i64 2)
  %137 = call { i64, i8* }* @make_astnode(%nyx_string* %125, { i64, i8* }* %126)
  ret { i64, i8* }* %137
else13:
  br label %merge14
merge14:
  %138 = getelementptr [16 x i8], [16 x i8]* @.str427, i32 0, i32 0
  %139 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str427.c, i8* %138, i64 15)
  %140 = call { i64, i8* }* @nyx_array_new_ptr()
  %141 = load %nyx_string*, %nyx_string** %43
  %142 = ptrtoint %nyx_string* %141 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %140, i64 %142, i64 2)
  %143 = getelementptr [4 x i8], [4 x i8]* @.str428, i32 0, i32 0
  %144 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str428.c, i8* %143, i64 3)
  %145 = ptrtoint %nyx_string* %144 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %140, i64 %145, i64 2)
  %146 = call { i64, i8* }* @make_astnode(%nyx_string* %139, { i64, i8* }* %140)
  ret { i64, i8* }* %146
else1:
  br label %merge2
merge2:
  %147 = getelementptr [7 x i8], [7 x i8]* @.str429, i32 0, i32 0
  %148 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str429.c, i8* %147, i64 6)
  %149 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %148)
  br i1 %149, label %then18, label %else19
then18:
  %150 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %151 = alloca %Token
  store %Token %150, %Token* %151
  %152 = getelementptr [16 x i8], [16 x i8]* @.str430, i32 0, i32 0
  %153 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str430.c, i8* %152, i64 15)
  %154 = call { i64, i8* }* @nyx_array_new_ptr()
  %155 = load %Token, %Token* %151
  %156 = call %nyx_string* @get_token_value(%Token %155)
  %157 = ptrtoint %nyx_string* %156 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %154, i64 %157, i64 2)
  %158 = getelementptr [7 x i8], [7 x i8]* @.str431, i32 0, i32 0
  %159 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str431.c, i8* %158, i64 6)
  %160 = ptrtoint %nyx_string* %159 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %154, i64 %160, i64 2)
  %161 = call { i64, i8* }* @make_astnode(%nyx_string* %153, { i64, i8* }* %154)
  ret { i64, i8* }* %161
else19:
  br label %merge20
merge20:
  %162 = getelementptr [5 x i8], [5 x i8]* @.str432, i32 0, i32 0
  %163 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str432.c, i8* %162, i64 4)
  %164 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %163)
  br i1 %164, label %then21, label %else22
then21:
  %165 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %166 = getelementptr [16 x i8], [16 x i8]* @.str433, i32 0, i32 0
  %167 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str433.c, i8* %166, i64 15)
  %168 = call { i64, i8* }* @nyx_array_new_ptr()
  %169 = getelementptr [5 x i8], [5 x i8]* @.str434, i32 0, i32 0
  %170 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str434.c, i8* %169, i64 4)
  %171 = ptrtoint %nyx_string* %170 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %168, i64 %171, i64 2)
  %172 = getelementptr [5 x i8], [5 x i8]* @.str435, i32 0, i32 0
  %173 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str435.c, i8* %172, i64 4)
  %174 = ptrtoint %nyx_string* %173 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %168, i64 %174, i64 2)
  %175 = call { i64, i8* }* @make_astnode(%nyx_string* %167, { i64, i8* }* %168)
  ret { i64, i8* }* %175
else22:
  br label %merge23
merge23:
  %176 = getelementptr [6 x i8], [6 x i8]* @.str436, i32 0, i32 0
  %177 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str436.c, i8* %176, i64 5)
  %178 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %177)
  br i1 %178, label %then24, label %else25
then24:
  %179 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %180 = getelementptr [16 x i8], [16 x i8]* @.str437, i32 0, i32 0
  %181 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str437.c, i8* %180, i64 15)
  %182 = call { i64, i8* }* @nyx_array_new_ptr()
  %183 = getelementptr [6 x i8], [6 x i8]* @.str438, i32 0, i32 0
  %184 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str438.c, i8* %183, i64 5)
  %185 = ptrtoint %nyx_string* %184 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %182, i64 %185, i64 2)
  %186 = getelementptr [5 x i8], [5 x i8]* @.str439, i32 0, i32 0
  %187 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str439.c, i8* %186, i64 4)
  %188 = ptrtoint %nyx_string* %187 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %182, i64 %188, i64 2)
  %189 = call { i64, i8* }* @make_astnode(%nyx_string* %181, { i64, i8* }* %182)
  ret { i64, i8* }* %189
else25:
  br label %merge26
merge26:
  %190 = getelementptr [6 x i8], [6 x i8]* @.str440, i32 0, i32 0
  %191 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str440.c, i8* %190, i64 5)
  %192 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %191)
  br i1 %192, label %then27, label %else28
then27:
  %193 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %194 = getelementptr [7 x i8], [7 x i8]* @.str441, i32 0, i32 0
  %195 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str441.c, i8* %194, i64 6)
  %196 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %195)
  br i1 %196, label %then30, label %else31
then30:
  %197 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %198 = alloca %Token
  store %Token %197, %Token* %198
  %199 = load %Token, %Token* %198
  %200 = call %nyx_string* @get_token_value(%Token %199)
  %201 = alloca %nyx_string*
  store %nyx_string* %200, %nyx_string** %201
  %202 = load %nyx_string*, %nyx_string** %201
  %203 = getelementptr [2 x i8], [2 x i8]* @.str442, i32 0, i32 0
  %204 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str442.c, i8* %203, i64 1)
  %205 = call i64 @nyx_string_index_of(%nyx_string* %202, %nyx_string* %204)
  %206 = icmp sge i64 %205, 0
  br i1 %206, label %then33, label %else34
then33:
  %207 = getelementptr [16 x i8], [16 x i8]* @.str443, i32 0, i32 0
  %208 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str443.c, i8* %207, i64 15)
  %209 = call { i64, i8* }* @nyx_array_new_ptr()
  %210 = getelementptr [2 x i8], [2 x i8]* @.str444, i32 0, i32 0
  %211 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str444.c, i8* %210, i64 1)
  %212 = load %nyx_string*, %nyx_string** %201
  %213 = call %nyx_string* @nyx_string_concat(%nyx_string* %211, %nyx_string* %212)
  %214 = ptrtoint %nyx_string* %213 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %209, i64 %214, i64 2)
  %215 = getelementptr [6 x i8], [6 x i8]* @.str445, i32 0, i32 0
  %216 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str445.c, i8* %215, i64 5)
  %217 = ptrtoint %nyx_string* %216 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %209, i64 %217, i64 2)
  %218 = call { i64, i8* }* @make_astnode(%nyx_string* %208, { i64, i8* }* %209)
  ret { i64, i8* }* %218
else34:
  br label %merge35
merge35:
  %219 = getelementptr [16 x i8], [16 x i8]* @.str446, i32 0, i32 0
  %220 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str446.c, i8* %219, i64 15)
  %221 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %220)
  br i1 %221, label %then36, label %else37
then36:
  %222 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %223 = getelementptr [1 x i8], [1 x i8]* @.str447, i32 0, i32 0
  %224 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str447.c, i8* %223, i64 0)
  %225 = alloca %nyx_string*
  store %nyx_string* %224, %nyx_string** %225
  %226 = getelementptr [6 x i8], [6 x i8]* @.str448, i32 0, i32 0
  %227 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str448.c, i8* %226, i64 5)
  %228 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %227)
  br i1 %228, label %then39, label %else40
then39:
  %229 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %230 = getelementptr [7 x i8], [7 x i8]* @.str449, i32 0, i32 0
  %231 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str449.c, i8* %230, i64 6)
  %232 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %231)
  %233 = alloca %Token
  store %Token %232, %Token* %233
  %234 = getelementptr [2 x i8], [2 x i8]* @.str450, i32 0, i32 0
  %235 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str450.c, i8* %234, i64 1)
  %236 = load %Token, %Token* %233
  %237 = call %nyx_string* @get_token_value(%Token %236)
  %238 = call %nyx_string* @nyx_string_concat(%nyx_string* %235, %nyx_string* %237)
  store %nyx_string* %238, %nyx_string** %225
  br label %merge41
else40:
  %239 = getelementptr [7 x i8], [7 x i8]* @.str451, i32 0, i32 0
  %240 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str451.c, i8* %239, i64 6)
  %241 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %240)
  %242 = alloca %Token
  store %Token %241, %Token* %242
  %243 = load %Token, %Token* %242
  %244 = call %nyx_string* @get_token_value(%Token %243)
  store %nyx_string* %244, %nyx_string** %225
  br label %merge41
merge41:
  %245 = getelementptr [14 x i8], [14 x i8]* @.str452, i32 0, i32 0
  %246 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str452.c, i8* %245, i64 13)
  %247 = call { i64, i8* }* @nyx_array_new_ptr()
  %248 = getelementptr [2 x i8], [2 x i8]* @.str453, i32 0, i32 0
  %249 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str453.c, i8* %248, i64 1)
  %250 = load %nyx_string*, %nyx_string** %201
  %251 = call %nyx_string* @nyx_string_concat(%nyx_string* %249, %nyx_string* %250)
  %252 = ptrtoint %nyx_string* %251 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %247, i64 %252, i64 2)
  %253 = load %nyx_string*, %nyx_string** %225
  %254 = ptrtoint %nyx_string* %253 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %247, i64 %254, i64 2)
  %255 = getelementptr [5 x i8], [5 x i8]* @.str454, i32 0, i32 0
  %256 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str454.c, i8* %255, i64 4)
  %257 = ptrtoint %nyx_string* %256 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %247, i64 %257, i64 2)
  %258 = getelementptr [4 x i8], [4 x i8]* @.str455, i32 0, i32 0
  %259 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str455.c, i8* %258, i64 3)
  %260 = ptrtoint %nyx_string* %259 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %247, i64 %260, i64 2)
  %261 = call { i64, i8* }* @make_astnode(%nyx_string* %246, { i64, i8* }* %247)
  ret { i64, i8* }* %261
else37:
  br label %merge38
merge38:
  %262 = getelementptr [6 x i8], [6 x i8]* @.str456, i32 0, i32 0
  %263 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str456.c, i8* %262, i64 5)
  %264 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %263)
  br i1 %264, label %then42, label %else43
then42:
  %265 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %266 = getelementptr [1 x i8], [1 x i8]* @.str457, i32 0, i32 0
  %267 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str457.c, i8* %266, i64 0)
  %268 = alloca %nyx_string*
  store %nyx_string* %267, %nyx_string** %268
  %269 = getelementptr [6 x i8], [6 x i8]* @.str458, i32 0, i32 0
  %270 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str458.c, i8* %269, i64 5)
  %271 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %270)
  br i1 %271, label %then45, label %else46
then45:
  %272 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %273 = getelementptr [7 x i8], [7 x i8]* @.str459, i32 0, i32 0
  %274 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str459.c, i8* %273, i64 6)
  %275 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %274)
  %276 = alloca %Token
  store %Token %275, %Token* %276
  %277 = getelementptr [2 x i8], [2 x i8]* @.str460, i32 0, i32 0
  %278 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str460.c, i8* %277, i64 1)
  %279 = load %Token, %Token* %276
  %280 = call %nyx_string* @get_token_value(%Token %279)
  %281 = call %nyx_string* @nyx_string_concat(%nyx_string* %278, %nyx_string* %280)
  store %nyx_string* %281, %nyx_string** %268
  br label %merge47
else46:
  %282 = getelementptr [7 x i8], [7 x i8]* @.str461, i32 0, i32 0
  %283 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str461.c, i8* %282, i64 6)
  %284 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %283)
  %285 = alloca %Token
  store %Token %284, %Token* %285
  %286 = load %Token, %Token* %285
  %287 = call %nyx_string* @get_token_value(%Token %286)
  store %nyx_string* %287, %nyx_string** %268
  br label %merge47
merge47:
  %288 = getelementptr [14 x i8], [14 x i8]* @.str462, i32 0, i32 0
  %289 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str462.c, i8* %288, i64 13)
  %290 = call { i64, i8* }* @nyx_array_new_ptr()
  %291 = getelementptr [2 x i8], [2 x i8]* @.str463, i32 0, i32 0
  %292 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str463.c, i8* %291, i64 1)
  %293 = load %nyx_string*, %nyx_string** %201
  %294 = call %nyx_string* @nyx_string_concat(%nyx_string* %292, %nyx_string* %293)
  %295 = ptrtoint %nyx_string* %294 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %290, i64 %295, i64 2)
  %296 = load %nyx_string*, %nyx_string** %268
  %297 = ptrtoint %nyx_string* %296 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %290, i64 %297, i64 2)
  %298 = getelementptr [6 x i8], [6 x i8]* @.str464, i32 0, i32 0
  %299 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str464.c, i8* %298, i64 5)
  %300 = ptrtoint %nyx_string* %299 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %290, i64 %300, i64 2)
  %301 = getelementptr [4 x i8], [4 x i8]* @.str465, i32 0, i32 0
  %302 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str465.c, i8* %301, i64 3)
  %303 = ptrtoint %nyx_string* %302 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %290, i64 %303, i64 2)
  %304 = call { i64, i8* }* @make_astnode(%nyx_string* %289, { i64, i8* }* %290)
  ret { i64, i8* }* %304
else43:
  br label %merge44
merge44:
  %305 = getelementptr [16 x i8], [16 x i8]* @.str466, i32 0, i32 0
  %306 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str466.c, i8* %305, i64 15)
  %307 = call { i64, i8* }* @nyx_array_new_ptr()
  %308 = getelementptr [2 x i8], [2 x i8]* @.str467, i32 0, i32 0
  %309 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str467.c, i8* %308, i64 1)
  %310 = load %nyx_string*, %nyx_string** %201
  %311 = call %nyx_string* @nyx_string_concat(%nyx_string* %309, %nyx_string* %310)
  %312 = ptrtoint %nyx_string* %311 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %307, i64 %312, i64 2)
  %313 = getelementptr [4 x i8], [4 x i8]* @.str468, i32 0, i32 0
  %314 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str468.c, i8* %313, i64 3)
  %315 = ptrtoint %nyx_string* %314 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %307, i64 %315, i64 2)
  %316 = call { i64, i8* }* @make_astnode(%nyx_string* %306, { i64, i8* }* %307)
  ret { i64, i8* }* %316
else31:
  br label %merge32
merge32:
  br label %merge29
else28:
  br label %merge29
merge29:
  %317 = getelementptr [11 x i8], [11 x i8]* @.str469, i32 0, i32 0
  %318 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str469.c, i8* %317, i64 10)
  %319 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %318)
  br i1 %319, label %then48, label %else49
then48:
  %320 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %321 = alloca %Token
  store %Token %320, %Token* %321
  %322 = load %Token, %Token* %321
  %323 = call %nyx_string* @get_token_value(%Token %322)
  %324 = alloca %nyx_string*
  store %nyx_string* %323, %nyx_string** %324
  %325 = load %nyx_string*, %nyx_string** %324
  %326 = getelementptr [2 x i8], [2 x i8]* @.str470, i32 0, i32 0
  %327 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str470.c, i8* %326, i64 1)
  %328 = call i1 @nyx_string_equals(%nyx_string* %325, %nyx_string* %327)
  br i1 %328, label %then51, label %else52
then51:
  %329 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge53
else52:
  %330 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %331 = load %nyx_string*, %nyx_string** %324
  %332 = alloca %nyx_string*
  store %nyx_string* %331, %nyx_string** %332
  %333 = getelementptr [4 x i8], [4 x i8]* @.str471, i32 0, i32 0
  %334 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str471.c, i8* %333, i64 3)
  %335 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %334)
  br i1 %335, label %then54, label %else55
then54:
  %336 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %337 = getelementptr [11 x i8], [11 x i8]* @.str472, i32 0, i32 0
  %338 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str472.c, i8* %337, i64 10)
  %339 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %338)
  %340 = alloca %Token
  store %Token %339, %Token* %340
  %341 = load %Token, %Token* %340
  %342 = call %nyx_string* @get_token_value(%Token %341)
  %343 = alloca %nyx_string*
  store %nyx_string* %342, %nyx_string** %343
  %344 = call { i64, i8* }* @nyx_array_new_ptr()
  %345 = alloca { i64, i8* }*
  store { i64, i8* }* %344, { i64, i8* }** %345
  %346 = alloca i1
  store i1 0, i1* %346
  %347 = call { i64, i8* }* @nyx_array_new_ptr()
  %348 = alloca { i64, i8* }*
  store { i64, i8* }* %347, { i64, i8* }** %348
  %349 = getelementptr [11 x i8], [11 x i8]* @.str473, i32 0, i32 0
  %350 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str473.c, i8* %349, i64 10)
  %351 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %350)
  br i1 %351, label %then57, label %else58
then57:
  %352 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %353 = alloca i1
  store i1 0, i1* %353
  %354 = call i8* @llvm.stacksave()
  br label %while_cond60
while_cond60:
  %355 = load i1, i1* %353
  %356 = xor i1 %355, true
  br i1 %356, label %while_body61, label %while_end62
while_body61:
  call void @llvm.stackrestore(i8* %354)
  %357 = getelementptr [12 x i8], [12 x i8]* @.str474, i32 0, i32 0
  %358 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str474.c, i8* %357, i64 11)
  %359 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %358)
  br i1 %359, label %then63, label %else64
then63:
  %360 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %353
  br label %merge65
else64:
  %361 = load { i64, i8* }*, { i64, i8* }** %348
  %362 = call i64 @nyx_array_length({ i64, i8* }* %361)
  %363 = icmp sgt i64 %362, 0
  br i1 %363, label %then66, label %else67
then66:
  %364 = getelementptr [6 x i8], [6 x i8]* @.str475, i32 0, i32 0
  %365 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str475.c, i8* %364, i64 5)
  %366 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %365)
  br label %merge68
else67:
  br label %merge68
merge68:
  %367 = call { i64, i8* }* @parse__parse_single_pattern(%SharedEnv_parse* %env.param)
  %368 = alloca { i64, i8* }*
  store { i64, i8* }* %367, { i64, i8* }** %368
  %369 = load { i64, i8* }*, { i64, i8* }** %348
  %370 = load { i64, i8* }*, { i64, i8* }** %368
  %371 = ptrtoint { i64, i8* }* %370 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %369, i64 %371, i64 5)
  %372 = load { i64, i8* }*, { i64, i8* }** %368
  %373 = call %nyx_string* @astnode_get_type({ i64, i8* }* %372)
  %374 = alloca %nyx_string*
  store %nyx_string* %373, %nyx_string** %374
  %375 = alloca i1
  store i1 false, i1* %375
  %376 = load %nyx_string*, %nyx_string** %374
  %377 = getelementptr [19 x i8], [19 x i8]* @.str476, i32 0, i32 0
  %378 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str476.c, i8* %377, i64 18)
  %379 = call i1 @nyx_string_equals(%nyx_string* %376, %nyx_string* %378)
  %380 = xor i1 %379, true
  br i1 %380, label %sc_and_rhs69, label %sc_and_end70
sc_and_rhs69:
  %381 = load %nyx_string*, %nyx_string** %374
  %382 = getelementptr [9 x i8], [9 x i8]* @.str477, i32 0, i32 0
  %383 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str477.c, i8* %382, i64 8)
  %384 = call i1 @nyx_string_equals(%nyx_string* %381, %nyx_string* %383)
  %385 = xor i1 %384, true
  store i1 %385, i1* %375
  br label %sc_and_end70
sc_and_end70:
  %386 = load i1, i1* %375
  br i1 %386, label %then71, label %else72
then71:
  store i1 1, i1* %346
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
  %387 = load i1, i1* %346
  br i1 %387, label %then74, label %else75
then74:
  %388 = getelementptr [21 x i8], [21 x i8]* @.str478, i32 0, i32 0
  %389 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str478.c, i8* %388, i64 20)
  %390 = call { i64, i8* }* @nyx_array_new_ptr()
  %391 = load %nyx_string*, %nyx_string** %332
  %392 = ptrtoint %nyx_string* %391 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %390, i64 %392, i64 2)
  %393 = load %nyx_string*, %nyx_string** %343
  %394 = ptrtoint %nyx_string* %393 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %390, i64 %394, i64 2)
  %395 = load { i64, i8* }*, { i64, i8* }** %348
  %396 = ptrtoint { i64, i8* }* %395 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %390, i64 %396, i64 5)
  %397 = call { i64, i8* }* @make_astnode(%nyx_string* %389, { i64, i8* }* %390)
  store { i64, i8* }* %397, { i64, i8* }** %35
  br label %merge76
else75:
  %398 = alloca i64
  store i64 0, i64* %398
  %399 = call i8* @llvm.stacksave()
  br label %while_cond77
while_cond77:
  %400 = load i64, i64* %398
  %401 = load { i64, i8* }*, { i64, i8* }** %348
  %402 = call i64 @nyx_array_length({ i64, i8* }* %401)
  %403 = icmp slt i64 %400, %402
  br i1 %403, label %while_body78, label %while_end79
while_body78:
  call void @llvm.stackrestore(i8* %399)
  %404 = load { i64, i8* }*, { i64, i8* }** %348
  %405 = load i64, i64* %398
  %406 = call i64 @nyx_array_get({ i64, i8* }* %404, i64 %405)
  %407 = inttoptr i64 %406 to { i64, i8* }*
  %408 = call i64 @nyx_array_get({ i64, i8* }* %407, i64 0)
  %409 = call i64 @nyx_array_get({ i64, i8* }* %407, i64 1)
  %410 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %407, i64 2)
  %411 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %407, i64 3)
  %412 = inttoptr i64 %408 to %nyx_string*
  %413 = inttoptr i64 %409 to { i64, i8* }*
  %414 = alloca %ASTNode
  %415 = getelementptr inbounds %ASTNode, %ASTNode* %414, i32 0, i32 0
  store %nyx_string* %412, %nyx_string** %415
  %416 = getelementptr inbounds %ASTNode, %ASTNode* %414, i32 0, i32 1
  store { i64, i8* }* %413, { i64, i8* }** %416
  %417 = getelementptr inbounds %ASTNode, %ASTNode* %414, i32 0, i32 2
  store i64 %410, i64* %417
  %418 = getelementptr inbounds %ASTNode, %ASTNode* %414, i32 0, i32 3
  store i64 %411, i64* %418
  %419 = load %ASTNode, %ASTNode* %414
  %420 = alloca %ASTNode
  store %ASTNode %419, %ASTNode* %420
  %421 = getelementptr %ASTNode, %ASTNode* %420, i32 0, i32 0
  %422 = load %nyx_string*, %nyx_string** %421
  %423 = getelementptr [9 x i8], [9 x i8]* @.str479, i32 0, i32 0
  %424 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str479.c, i8* %423, i64 8)
  %425 = call i1 @nyx_string_equals(%nyx_string* %422, %nyx_string* %424)
  br i1 %425, label %then80, label %else81
then80:
  %426 = load { i64, i8* }*, { i64, i8* }** %345
  %427 = getelementptr [2 x i8], [2 x i8]* @.str480, i32 0, i32 0
  %428 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str480.c, i8* %427, i64 1)
  %429 = ptrtoint %nyx_string* %428 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %426, i64 %429, i64 2)
  br label %merge82
else81:
  %430 = getelementptr %ASTNode, %ASTNode* %420, i32 0, i32 1
  %431 = load { i64, i8* }*, { i64, i8* }** %430
  %432 = call i64 @nyx_array_get({ i64, i8* }* %431, i64 0)
  %433 = inttoptr i64 %432 to %nyx_string*
  %434 = alloca %nyx_string*
  store %nyx_string* %433, %nyx_string** %434
  %435 = load { i64, i8* }*, { i64, i8* }** %345
  %436 = load %nyx_string*, %nyx_string** %434
  %437 = ptrtoint %nyx_string* %436 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %435, i64 %437, i64 2)
  br label %merge82
merge82:
  %438 = load i64, i64* %398
  %439 = add i64 %438, 1
  store i64 %439, i64* %398
  br label %while_cond77
while_end79:
  %440 = getelementptr [14 x i8], [14 x i8]* @.str481, i32 0, i32 0
  %441 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str481.c, i8* %440, i64 13)
  %442 = call { i64, i8* }* @nyx_array_new_ptr()
  %443 = load %nyx_string*, %nyx_string** %332
  %444 = ptrtoint %nyx_string* %443 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %442, i64 %444, i64 2)
  %445 = load %nyx_string*, %nyx_string** %343
  %446 = ptrtoint %nyx_string* %445 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %442, i64 %446, i64 2)
  %447 = load { i64, i8* }*, { i64, i8* }** %345
  %448 = ptrtoint { i64, i8* }* %447 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %442, i64 %448, i64 5)
  %449 = call { i64, i8* }* @make_astnode(%nyx_string* %441, { i64, i8* }* %442)
  store { i64, i8* }* %449, { i64, i8* }** %35
  br label %merge76
merge76:
  br label %merge56
else55:
  %450 = getelementptr [11 x i8], [11 x i8]* @.str482, i32 0, i32 0
  %451 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str482.c, i8* %450, i64 10)
  %452 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %451)
  br i1 %452, label %then83, label %else84
then83:
  %453 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %454 = call { i64, i8* }* @nyx_array_new_ptr()
  %455 = alloca { i64, i8* }*
  store { i64, i8* }* %454, { i64, i8* }** %455
  %456 = call i8* @llvm.stacksave()
  br label %while_cond86
while_cond86:
  %457 = getelementptr [12 x i8], [12 x i8]* @.str483, i32 0, i32 0
  %458 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str483.c, i8* %457, i64 11)
  %459 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %458)
  %460 = xor i1 %459, true
  br i1 %460, label %while_body87, label %while_end88
while_body87:
  call void @llvm.stackrestore(i8* %456)
  %461 = load { i64, i8* }*, { i64, i8* }** %455
  %462 = call i64 @nyx_array_length({ i64, i8* }* %461)
  %463 = icmp sgt i64 %462, 0
  br i1 %463, label %then89, label %else90
then89:
  %464 = getelementptr [6 x i8], [6 x i8]* @.str484, i32 0, i32 0
  %465 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str484.c, i8* %464, i64 5)
  %466 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %465)
  br label %merge91
else90:
  br label %merge91
merge91:
  %467 = getelementptr [11 x i8], [11 x i8]* @.str485, i32 0, i32 0
  %468 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str485.c, i8* %467, i64 10)
  %469 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %468)
  %470 = alloca %Token
  store %Token %469, %Token* %470
  %471 = load %Token, %Token* %470
  %472 = call %nyx_string* @get_token_value(%Token %471)
  %473 = alloca %nyx_string*
  store %nyx_string* %472, %nyx_string** %473
  %474 = load %nyx_string*, %nyx_string** %473
  %475 = alloca %nyx_string*
  store %nyx_string* %474, %nyx_string** %475
  %476 = getelementptr [6 x i8], [6 x i8]* @.str486, i32 0, i32 0
  %477 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str486.c, i8* %476, i64 5)
  %478 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %477)
  br i1 %478, label %then92, label %else93
then92:
  %479 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %480 = getelementptr [11 x i8], [11 x i8]* @.str487, i32 0, i32 0
  %481 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str487.c, i8* %480, i64 10)
  %482 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %481)
  %483 = call %nyx_string* @get_token_value(%Token %482)
  store %nyx_string* %483, %nyx_string** %475
  br label %merge94
else93:
  br label %merge94
merge94:
  %484 = load { i64, i8* }*, { i64, i8* }** %455
  %485 = call { i64, i8* }* @nyx_array_new_ptr()
  %486 = load %nyx_string*, %nyx_string** %473
  %487 = ptrtoint %nyx_string* %486 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %485, i64 %487, i64 2)
  %488 = load %nyx_string*, %nyx_string** %475
  %489 = ptrtoint %nyx_string* %488 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %485, i64 %489, i64 2)
  %490 = ptrtoint { i64, i8* }* %485 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %484, i64 %490, i64 5)
  br label %while_cond86
while_end88:
  %491 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %492 = getelementptr [15 x i8], [15 x i8]* @.str488, i32 0, i32 0
  %493 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str488.c, i8* %492, i64 14)
  %494 = call { i64, i8* }* @nyx_array_new_ptr()
  %495 = load %nyx_string*, %nyx_string** %332
  %496 = ptrtoint %nyx_string* %495 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %494, i64 %496, i64 2)
  %497 = load { i64, i8* }*, { i64, i8* }** %455
  %498 = ptrtoint { i64, i8* }* %497 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %494, i64 %498, i64 5)
  %499 = call { i64, i8* }* @make_astnode(%nyx_string* %493, { i64, i8* }* %494)
  store { i64, i8* }* %499, { i64, i8* }** %35
  br label %merge85
else84:
  %500 = getelementptr [19 x i8], [19 x i8]* @.str489, i32 0, i32 0
  %501 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str489.c, i8* %500, i64 18)
  %502 = call { i64, i8* }* @nyx_array_new_ptr()
  %503 = load %nyx_string*, %nyx_string** %332
  %504 = ptrtoint %nyx_string* %503 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %502, i64 %504, i64 2)
  %505 = call { i64, i8* }* @make_astnode(%nyx_string* %501, { i64, i8* }* %502)
  store { i64, i8* }* %505, { i64, i8* }** %35
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
  %506 = load { i64, i8* }*, { i64, i8* }** %35
  ret { i64, i8* }* %506
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = call { i64, i8* }* @parse__parse_single_pattern(%SharedEnv_parse* %env.param)
  %32 = alloca { i64, i8* }*
  store { i64, i8* }* %31, { i64, i8* }** %32
  %33 = getelementptr [5 x i8], [5 x i8]* @.str490, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str490.c, i8* %33, i64 4)
  %35 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %34)
  br i1 %35, label %then0, label %else1
then0:
  %36 = call { i64, i8* }* @nyx_array_new_ptr()
  %37 = load { i64, i8* }*, { i64, i8* }** %32
  %38 = ptrtoint { i64, i8* }* %37 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %36, i64 %38, i64 5)
  %39 = alloca { i64, i8* }*
  store { i64, i8* }* %36, { i64, i8* }** %39
  %40 = call i8* @llvm.stacksave()
  br label %while_cond3
while_cond3:
  %41 = getelementptr [5 x i8], [5 x i8]* @.str491, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str491.c, i8* %41, i64 4)
  %43 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %42)
  br i1 %43, label %while_body4, label %while_end5
while_body4:
  call void @llvm.stackrestore(i8* %40)
  %44 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %45 = load { i64, i8* }*, { i64, i8* }** %39
  %46 = call { i64, i8* }* @parse__parse_single_pattern(%SharedEnv_parse* %env.param)
  %47 = ptrtoint { i64, i8* }* %46 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %45, i64 %47, i64 5)
  br label %while_cond3
while_end5:
  %48 = getelementptr [11 x i8], [11 x i8]* @.str492, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str492.c, i8* %48, i64 10)
  %50 = load { i64, i8* }*, { i64, i8* }** %39
  %51 = call { i64, i8* }* @make_astnode(%nyx_string* %49, { i64, i8* }* %50)
  store { i64, i8* }* %51, { i64, i8* }** %32
  br label %merge2
else1:
  br label %merge2
merge2:
  %52 = getelementptr [6 x i8], [6 x i8]* @.str493, i32 0, i32 0
  %53 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str493.c, i8* %52, i64 5)
  %54 = call { i64, i8* }* @nyx_array_new_ptr()
  %55 = call { i64, i8* }* @make_astnode(%nyx_string* %53, { i64, i8* }* %54)
  %56 = alloca { i64, i8* }*
  store { i64, i8* }* %55, { i64, i8* }** %56
  %57 = getelementptr [3 x i8], [3 x i8]* @.str494, i32 0, i32 0
  %58 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str494.c, i8* %57, i64 2)
  %59 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %58)
  br i1 %59, label %then6, label %else7
then6:
  %60 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %61 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %61, { i64, i8* }** %56
  br label %merge8
else7:
  br label %merge8
merge8:
  %62 = getelementptr [12 x i8], [12 x i8]* @.str495, i32 0, i32 0
  %63 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str495.c, i8* %62, i64 11)
  %64 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %63)
  %65 = getelementptr [6 x i8], [6 x i8]* @.str496, i32 0, i32 0
  %66 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str496.c, i8* %65, i64 5)
  %67 = call { i64, i8* }* @nyx_array_new_ptr()
  %68 = call { i64, i8* }* @make_astnode(%nyx_string* %66, { i64, i8* }* %67)
  %69 = alloca { i64, i8* }*
  store { i64, i8* }* %68, { i64, i8* }** %69
  %70 = getelementptr [11 x i8], [11 x i8]* @.str497, i32 0, i32 0
  %71 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str497.c, i8* %70, i64 10)
  %72 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %71)
  br i1 %72, label %then9, label %else10
then9:
  %73 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %73, { i64, i8* }** %69
  br label %merge11
else10:
  %74 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %74, { i64, i8* }** %69
  br label %merge11
merge11:
  %75 = getelementptr [10 x i8], [10 x i8]* @.str498, i32 0, i32 0
  %76 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str498.c, i8* %75, i64 9)
  %77 = call { i64, i8* }* @nyx_array_new_ptr()
  %78 = load { i64, i8* }*, { i64, i8* }** %32
  %79 = ptrtoint { i64, i8* }* %78 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %77, i64 %79, i64 5)
  %80 = load { i64, i8* }*, { i64, i8* }** %69
  %81 = ptrtoint { i64, i8* }* %80 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %77, i64 %81, i64 5)
  %82 = load { i64, i8* }*, { i64, i8* }** %56
  %83 = ptrtoint { i64, i8* }* %82 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %77, i64 %83, i64 5)
  %84 = call { i64, i8* }* @make_astnode(%nyx_string* %76, { i64, i8* }* %77)
  ret { i64, i8* }* %84
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = getelementptr [6 x i8], [6 x i8]* @.str499, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str499.c, i8* %31, i64 5)
  %33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %32)
  %34 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %35 = alloca { i64, i8* }*
  store { i64, i8* }* %34, { i64, i8* }** %35
  %36 = getelementptr [11 x i8], [11 x i8]* @.str500, i32 0, i32 0
  %37 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str500.c, i8* %36, i64 10)
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
  %45 = getelementptr [12 x i8], [12 x i8]* @.str501, i32 0, i32 0
  %46 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str501.c, i8* %45, i64 11)
  %47 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %46)
  br i1 %47, label %then3, label %else4
then3:
  %48 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %41
  br label %merge5
else4:
  %49 = load { i64, i8* }*, { i64, i8* }** %40
  %50 = call i64 @nyx_array_length({ i64, i8* }* %49)
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %then6, label %else7
then6:
  %52 = getelementptr [6 x i8], [6 x i8]* @.str502, i32 0, i32 0
  %53 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str502.c, i8* %52, i64 5)
  %54 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %53)
  br i1 %54, label %then9, label %else10
then9:
  %55 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge11
else10:
  br label %merge11
merge11:
  br label %merge8
else7:
  br label %merge8
merge8:
  %56 = getelementptr [12 x i8], [12 x i8]* @.str503, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str503.c, i8* %56, i64 11)
  %58 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %57)
  br i1 %58, label %then12, label %else13
then12:
  %59 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %41
  br label %merge14
else13:
  %60 = load { i64, i8* }*, { i64, i8* }** %40
  %61 = call { i64, i8* }* @parse__parse_match_arm(%SharedEnv_parse* %env.param)
  %62 = ptrtoint { i64, i8* }* %61 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %60, i64 %62, i64 5)
  br label %merge14
merge14:
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %63 = getelementptr [6 x i8], [6 x i8]* @.str504, i32 0, i32 0
  %64 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str504.c, i8* %63, i64 5)
  %65 = call { i64, i8* }* @nyx_array_new_ptr()
  %66 = load { i64, i8* }*, { i64, i8* }** %35
  %67 = ptrtoint { i64, i8* }* %66 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %65, i64 %67, i64 5)
  %68 = load { i64, i8* }*, { i64, i8* }** %40
  %69 = ptrtoint { i64, i8* }* %68 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %65, i64 %69, i64 5)
  %70 = call { i64, i8* }* @make_astnode(%nyx_string* %64, { i64, i8* }* %65)
  ret { i64, i8* }* %70
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = alloca %nyx_string*
  store %nyx_string* %struct_name.param, %nyx_string** %31
  %32 = getelementptr [11 x i8], [11 x i8]* @.str505, i32 0, i32 0
  %33 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str505.c, i8* %32, i64 10)
  %34 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %33)
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
  %41 = getelementptr [12 x i8], [12 x i8]* @.str506, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str506.c, i8* %41, i64 11)
  %43 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %42)
  br i1 %43, label %then3, label %else4
then3:
  %44 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %37
  br label %merge5
else4:
  %45 = load { i64, i8* }*, { i64, i8* }** %36
  %46 = call i64 @nyx_array_length({ i64, i8* }* %45)
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %then6, label %else7
then6:
  %48 = getelementptr [6 x i8], [6 x i8]* @.str507, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str507.c, i8* %48, i64 5)
  %50 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %49)
  br i1 %50, label %then9, label %else10
then9:
  %51 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge11
else10:
  br label %merge11
merge11:
  br label %merge8
else7:
  br label %merge8
merge8:
  %52 = getelementptr [12 x i8], [12 x i8]* @.str508, i32 0, i32 0
  %53 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str508.c, i8* %52, i64 11)
  %54 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %53)
  br i1 %54, label %then12, label %else13
then12:
  %55 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %37
  br label %merge14
else13:
  %56 = getelementptr [11 x i8], [11 x i8]* @.str509, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str509.c, i8* %56, i64 10)
  %58 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %57)
  %59 = alloca %Token
  store %Token %58, %Token* %59
  %60 = getelementptr [6 x i8], [6 x i8]* @.str510, i32 0, i32 0
  %61 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str510.c, i8* %60, i64 5)
  %62 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %61)
  %63 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %64 = alloca { i64, i8* }*
  store { i64, i8* }* %63, { i64, i8* }** %64
  %65 = load { i64, i8* }*, { i64, i8* }** %36
  %66 = call { i64, i8* }* @nyx_array_new_ptr()
  %67 = load %Token, %Token* %59
  %68 = call %nyx_string* @get_token_value(%Token %67)
  %69 = ptrtoint %nyx_string* %68 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %66, i64 %69, i64 2)
  %70 = load { i64, i8* }*, { i64, i8* }** %64
  %71 = ptrtoint { i64, i8* }* %70 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %66, i64 %71, i64 5)
  %72 = ptrtoint { i64, i8* }* %66 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %65, i64 %72, i64 5)
  br label %merge14
merge14:
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %73 = getelementptr [12 x i8], [12 x i8]* @.str511, i32 0, i32 0
  %74 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str511.c, i8* %73, i64 11)
  %75 = call { i64, i8* }* @nyx_array_new_ptr()
  %76 = load %nyx_string*, %nyx_string** %31
  %77 = ptrtoint %nyx_string* %76 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %75, i64 %77, i64 2)
  %78 = load { i64, i8* }*, { i64, i8* }** %36
  %79 = ptrtoint { i64, i8* }* %78 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %75, i64 %79, i64 5)
  %80 = call { i64, i8* }* @nyx_array_new_ptr()
  %81 = ptrtoint { i64, i8* }* %80 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %75, i64 %81, i64 5)
  %82 = call { i64, i8* }* @make_astnode(%nyx_string* %74, { i64, i8* }* %75)
  ret { i64, i8* }* %82
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = getelementptr [14 x i8], [14 x i8]* @.str512, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str512.c, i8* %31, i64 13)
  %33 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %32)
  br i1 %33, label %then0, label %else1
then0:
  %34 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %35 = alloca %Token
  store %Token %34, %Token* %35
  %36 = load %Token, %Token* %35
  %37 = call %nyx_string* @get_token_value(%Token %36)
  %38 = alloca %nyx_string*
  store %nyx_string* %37, %nyx_string** %38
  %39 = load %nyx_string*, %nyx_string** %38
  %40 = getelementptr [8 x i8], [8 x i8]* @.str513, i32 0, i32 0
  %41 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str513.c, i8* %40, i64 7)
  %42 = call i1 @nyx_string_starts_with(%nyx_string* %39, %nyx_string* %41)
  br i1 %42, label %then3, label %else4
then3:
  %43 = load %nyx_string*, %nyx_string** %38
  %44 = load %nyx_string*, %nyx_string** %38
  %45 = call i64 @nyx_string_byte_length(%nyx_string* %44)
  %46 = call %nyx_string* @nyx_string_substring(%nyx_string* %43, i64 7, i64 %45)
  %47 = call %nyx_string* @nyx_string_trim(%nyx_string* %46)
  %48 = alloca %nyx_string*
  store %nyx_string* %47, %nyx_string** %48
  %49 = load %nyx_string*, %nyx_string** %48
  store %nyx_string* %49, %nyx_string** %10
  %50 = call { i64, i8* }* @nyx_array_new_ptr()
  %51 = load %nyx_string*, %nyx_string** %48
  %52 = ptrtoint %nyx_string* %51 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %50, i64 %52, i64 2)
  %53 = alloca { i64, i8* }*
  store { i64, i8* }* %50, { i64, i8* }** %53
  %54 = getelementptr [14 x i8], [14 x i8]* @.str514, i32 0, i32 0
  %55 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str514.c, i8* %54, i64 13)
  %56 = load { i64, i8* }*, { i64, i8* }** %53
  %57 = call { i64, i8* }* @make_astnode(%nyx_string* %55, { i64, i8* }* %56)
  ret { i64, i8* }* %57
else4:
  br label %merge5
merge5:
  %58 = load %nyx_string*, %nyx_string** %38
  store %nyx_string* %58, %nyx_string** %10
  %59 = call { i64, i8* }* @nyx_array_new_ptr()
  %60 = load %nyx_string*, %nyx_string** %38
  %61 = ptrtoint %nyx_string* %60 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %59, i64 %61, i64 2)
  %62 = alloca { i64, i8* }*
  store { i64, i8* }* %59, { i64, i8* }** %62
  %63 = getelementptr [14 x i8], [14 x i8]* @.str515, i32 0, i32 0
  %64 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str515.c, i8* %63, i64 13)
  %65 = load { i64, i8* }*, { i64, i8* }** %62
  %66 = call { i64, i8* }* @make_astnode(%nyx_string* %64, { i64, i8* }* %65)
  ret { i64, i8* }* %66
else1:
  br label %merge2
merge2:
  %67 = alloca i1
  store i1 true, i1* %67
  %68 = getelementptr [4 x i8], [4 x i8]* @.str516, i32 0, i32 0
  %69 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str516.c, i8* %68, i64 3)
  %70 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %69)
  br i1 %70, label %sc_or_end7, label %sc_or_rhs6
sc_or_rhs6:
  %71 = getelementptr [4 x i8], [4 x i8]* @.str517, i32 0, i32 0
  %72 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str517.c, i8* %71, i64 3)
  %73 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %72)
  store i1 %73, i1* %67
  br label %sc_or_end7
sc_or_end7:
  %74 = load i1, i1* %67
  br i1 %74, label %then8, label %else9
then8:
  %75 = call { i64, i8* }* @parse__parse_let(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %75
else9:
  br label %merge10
merge10:
  %76 = getelementptr [6 x i8], [6 x i8]* @.str518, i32 0, i32 0
  %77 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str518.c, i8* %76, i64 5)
  %78 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %77)
  br i1 %78, label %then11, label %else12
then11:
  %79 = call { i64, i8* }* @parse__parse_const(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %79
else12:
  br label %merge13
merge13:
  %80 = getelementptr [3 x i8], [3 x i8]* @.str519, i32 0, i32 0
  %81 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str519.c, i8* %80, i64 2)
  %82 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %81)
  br i1 %82, label %then14, label %else15
then14:
  %83 = call { i64, i8* }* @parse__parse_function(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %83
else15:
  br label %merge16
merge16:
  %84 = getelementptr [5 x i8], [5 x i8]* @.str520, i32 0, i32 0
  %85 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str520.c, i8* %84, i64 4)
  %86 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %85)
  br i1 %86, label %then17, label %else18
then17:
  %87 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %88 = getelementptr [13 x i8], [13 x i8]* @.str521, i32 0, i32 0
  %89 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str521.c, i8* %88, i64 12)
  %90 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %89)
  %91 = getelementptr [11 x i8], [11 x i8]* @.str522, i32 0, i32 0
  %92 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str522.c, i8* %91, i64 10)
  %93 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %92)
  %94 = alloca %Token
  store %Token %93, %Token* %94
  %95 = load %Token, %Token* %94
  %96 = call %nyx_string* @get_token_value(%Token %95)
  %97 = alloca %nyx_string*
  store %nyx_string* %96, %nyx_string** %97
  %98 = load %nyx_string*, %nyx_string** %97
  %99 = alloca %nyx_string*
  store %nyx_string* %98, %nyx_string** %99
  %100 = getelementptr [11 x i8], [11 x i8]* @.str523, i32 0, i32 0
  %101 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str523.c, i8* %100, i64 10)
  %102 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %101)
  br i1 %102, label %then20, label %else21
then20:
  %103 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %104 = getelementptr [1 x i8], [1 x i8]* @.str524, i32 0, i32 0
  %105 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str524.c, i8* %104, i64 0)
  %106 = alloca %nyx_string*
  store %nyx_string* %105, %nyx_string** %106
  %107 = getelementptr [7 x i8], [7 x i8]* @.str525, i32 0, i32 0
  %108 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str525.c, i8* %107, i64 6)
  %109 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %108)
  br i1 %109, label %then23, label %else24
then23:
  %110 = getelementptr [7 x i8], [7 x i8]* @.str526, i32 0, i32 0
  %111 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str526.c, i8* %110, i64 6)
  %112 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %111)
  %113 = alloca %Token
  store %Token %112, %Token* %113
  %114 = load %Token, %Token* %113
  %115 = call %nyx_string* @get_token_value(%Token %114)
  store %nyx_string* %115, %nyx_string** %106
  br label %merge25
else24:
  %116 = getelementptr [11 x i8], [11 x i8]* @.str527, i32 0, i32 0
  %117 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str527.c, i8* %116, i64 10)
  %118 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %117)
  %119 = alloca %Token
  store %Token %118, %Token* %119
  %120 = load %Token, %Token* %119
  %121 = call %nyx_string* @get_token_value(%Token %120)
  store %nyx_string* %121, %nyx_string** %106
  %122 = call i8* @llvm.stacksave()
  br label %while_cond26
while_cond26:
  %123 = getelementptr [6 x i8], [6 x i8]* @.str528, i32 0, i32 0
  %124 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str528.c, i8* %123, i64 5)
  %125 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %124)
  br i1 %125, label %while_body27, label %while_end28
while_body27:
  call void @llvm.stackrestore(i8* %122)
  %126 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %127 = getelementptr [11 x i8], [11 x i8]* @.str529, i32 0, i32 0
  %128 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str529.c, i8* %127, i64 10)
  %129 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %128)
  %130 = alloca %Token
  store %Token %129, %Token* %130
  %131 = load %nyx_string*, %nyx_string** %106
  %132 = getelementptr [2 x i8], [2 x i8]* @.str530, i32 0, i32 0
  %133 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str530.c, i8* %132, i64 1)
  %134 = call %nyx_string* @nyx_string_concat(%nyx_string* %131, %nyx_string* %133)
  %135 = load %Token, %Token* %130
  %136 = call %nyx_string* @get_token_value(%Token %135)
  %137 = call %nyx_string* @nyx_string_concat(%nyx_string* %134, %nyx_string* %136)
  store %nyx_string* %137, %nyx_string** %106
  br label %while_cond26
while_end28:
  br label %merge25
merge25:
  %138 = getelementptr [12 x i8], [12 x i8]* @.str531, i32 0, i32 0
  %139 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str531.c, i8* %138, i64 11)
  %140 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %139)
  %141 = load %nyx_string*, %nyx_string** %97
  %142 = getelementptr [2 x i8], [2 x i8]* @.str532, i32 0, i32 0
  %143 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str532.c, i8* %142, i64 1)
  %144 = call %nyx_string* @nyx_string_concat(%nyx_string* %141, %nyx_string* %143)
  %145 = load %nyx_string*, %nyx_string** %106
  %146 = call %nyx_string* @nyx_string_concat(%nyx_string* %144, %nyx_string* %145)
  %147 = getelementptr [2 x i8], [2 x i8]* @.str533, i32 0, i32 0
  %148 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str533.c, i8* %147, i64 1)
  %149 = call %nyx_string* @nyx_string_concat(%nyx_string* %146, %nyx_string* %148)
  store %nyx_string* %149, %nyx_string** %99
  %150 = load %nyx_string*, %nyx_string** %97
  %151 = getelementptr [12 x i8], [12 x i8]* @.str534, i32 0, i32 0
  %152 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str534.c, i8* %151, i64 11)
  %153 = call i1 @nyx_string_equals(%nyx_string* %150, %nyx_string* %152)
  br i1 %153, label %then29, label %else30
then29:
  %154 = getelementptr [13 x i8], [13 x i8]* @.str535, i32 0, i32 0
  %155 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str535.c, i8* %154, i64 12)
  %156 = load %nyx_string*, %nyx_string** %106
  %157 = call %nyx_string* @nyx_string_concat(%nyx_string* %155, %nyx_string* %156)
  store %nyx_string* %157, %nyx_string** %99
  br label %merge31
else30:
  br label %merge31
merge31:
  br label %merge22
else21:
  %158 = getelementptr [7 x i8], [7 x i8]* @.str536, i32 0, i32 0
  %159 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str536.c, i8* %158, i64 6)
  %160 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %159)
  br i1 %160, label %then32, label %else33
then32:
  %161 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %162 = getelementptr [7 x i8], [7 x i8]* @.str537, i32 0, i32 0
  %163 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str537.c, i8* %162, i64 6)
  %164 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %163)
  %165 = alloca %Token
  store %Token %164, %Token* %165
  %166 = load %nyx_string*, %nyx_string** %97
  %167 = getelementptr [2 x i8], [2 x i8]* @.str538, i32 0, i32 0
  %168 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str538.c, i8* %167, i64 1)
  %169 = call %nyx_string* @nyx_string_concat(%nyx_string* %166, %nyx_string* %168)
  %170 = load %Token, %Token* %165
  %171 = call %nyx_string* @get_token_value(%Token %170)
  %172 = call %nyx_string* @nyx_string_concat(%nyx_string* %169, %nyx_string* %171)
  store %nyx_string* %172, %nyx_string** %99
  br label %merge34
else33:
  br label %merge34
merge34:
  br label %merge22
merge22:
  %173 = getelementptr [14 x i8], [14 x i8]* @.str539, i32 0, i32 0
  %174 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str539.c, i8* %173, i64 13)
  %175 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %174)
  %176 = alloca i1
  store i1 false, i1* %176
  %177 = load %nyx_string*, %nyx_string** %99
  %178 = getelementptr [9 x i8], [9 x i8]* @.str540, i32 0, i32 0
  %179 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str540.c, i8* %178, i64 8)
  %180 = call i1 @nyx_string_equals(%nyx_string* %177, %nyx_string* %179)
  br i1 %180, label %sc_and_rhs35, label %sc_and_end36
sc_and_rhs35:
  %181 = getelementptr [7 x i8], [7 x i8]* @.str541, i32 0, i32 0
  %182 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str541.c, i8* %181, i64 6)
  %183 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %182)
  %184 = xor i1 %183, true
  store i1 %184, i1* %176
  br label %sc_and_end36
sc_and_end36:
  %185 = load i1, i1* %176
  br i1 %185, label %then37, label %else38
then37:
  %186 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %187 = alloca %Token
  store %Token %186, %Token* %187
  %188 = getelementptr [8 x i8], [8 x i8]* @.str542, i32 0, i32 0
  %189 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str542.c, i8* %188, i64 7)
  %190 = load %Token, %Token* %187
  %191 = call i64 @get_token_line(%Token %190)
  %192 = load %Token, %Token* %187
  %193 = call i64 @get_token_column(%Token %192)
  %194 = getelementptr [41 x i8], [41 x i8]* @.str543, i32 0, i32 0
  %195 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str543.c, i8* %194, i64 40)
  %196 = getelementptr [43 x i8], [43 x i8]* @.str544, i32 0, i32 0
  %197 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str544.c, i8* %196, i64 42)
  %198 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %195, %nyx_string* %197)
  %199 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %189, i64 %191, i64 %193, %nyx_string* %198)
  %200 = getelementptr [6 x i8], [6 x i8]* @.str545, i32 0, i32 0
  %201 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str545.c, i8* %200, i64 5)
  %202 = call { i64, i8* }* @nyx_array_new_ptr()
  %203 = call { i64, i8* }* @make_astnode(%nyx_string* %201, { i64, i8* }* %202)
  ret { i64, i8* }* %203
else38:
  br label %merge39
merge39:
  %204 = getelementptr [7 x i8], [7 x i8]* @.str546, i32 0, i32 0
  %205 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str546.c, i8* %204, i64 6)
  %206 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %205)
  br i1 %206, label %then40, label %else41
then40:
  %207 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %208 = alloca %Token
  store %Token %207, %Token* %208
  %209 = call { i64, i8* }* @parse__parse_extern_fn(%SharedEnv_parse* %env.param)
  %210 = alloca { i64, i8* }*
  store { i64, i8* }* %209, { i64, i8* }** %210
  %211 = load { i64, i8* }*, { i64, i8* }** %210
  %212 = call i64 @nyx_array_get({ i64, i8* }* %211, i64 1)
  %213 = inttoptr i64 %212 to { i64, i8* }*
  %214 = alloca { i64, i8* }*
  store { i64, i8* }* %213, { i64, i8* }** %214
  %215 = load { i64, i8* }*, { i64, i8* }** %214
  %216 = call i64 @nyx_array_get_checked({ i64, i8* }* %215, i64 3, i64 2)
  %217 = inttoptr i64 %216 to %nyx_string*
  %218 = alloca %nyx_string*
  store %nyx_string* %217, %nyx_string** %218
  %219 = alloca i1
  store i1 true, i1* %219
  %220 = load %nyx_string*, %nyx_string** %99
  %221 = getelementptr [9 x i8], [9 x i8]* @.str547, i32 0, i32 0
  %222 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str547.c, i8* %221, i64 8)
  %223 = call i1 @nyx_string_equals(%nyx_string* %220, %nyx_string* %222)
  %224 = xor i1 %223, true
  br i1 %224, label %sc_or_end44, label %sc_or_rhs43
sc_or_rhs43:
  %225 = load %nyx_string*, %nyx_string** %218
  %226 = getelementptr [3 x i8], [3 x i8]* @.str548, i32 0, i32 0
  %227 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str548.c, i8* %226, i64 2)
  %228 = call i1 @nyx_string_equals(%nyx_string* %225, %nyx_string* %227)
  %229 = xor i1 %228, true
  store i1 %229, i1* %219
  br label %sc_or_end44
sc_or_end44:
  %230 = load i1, i1* %219
  br i1 %230, label %then45, label %else46
then45:
  %231 = getelementptr [8 x i8], [8 x i8]* @.str549, i32 0, i32 0
  %232 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str549.c, i8* %231, i64 7)
  %233 = load %Token, %Token* %208
  %234 = call i64 @get_token_line(%Token %233)
  %235 = load %Token, %Token* %208
  %236 = call i64 @get_token_column(%Token %235)
  %237 = getelementptr [76 x i8], [76 x i8]* @.str550, i32 0, i32 0
  %238 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str550.c, i8* %237, i64 75)
  %239 = getelementptr [83 x i8], [83 x i8]* @.str551, i32 0, i32 0
  %240 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str551.c, i8* %239, i64 82)
  %241 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %238, %nyx_string* %240)
  %242 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %232, i64 %234, i64 %236, %nyx_string* %241)
  %243 = getelementptr [6 x i8], [6 x i8]* @.str552, i32 0, i32 0
  %244 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str552.c, i8* %243, i64 5)
  %245 = call { i64, i8* }* @nyx_array_new_ptr()
  %246 = call { i64, i8* }* @make_astnode(%nyx_string* %244, { i64, i8* }* %245)
  ret { i64, i8* }* %246
else46:
  br label %merge47
merge47:
  %247 = getelementptr [10 x i8], [10 x i8]* @.str553, i32 0, i32 0
  %248 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str553.c, i8* %247, i64 9)
  %249 = call { i64, i8* }* @nyx_array_new_ptr()
  %250 = load { i64, i8* }*, { i64, i8* }** %214
  %251 = call i64 @nyx_array_get({ i64, i8* }* %250, i64 0)
  call void @nyx_array_push({ i64, i8* }* %249, i64 %251)
  %252 = load { i64, i8* }*, { i64, i8* }** %214
  %253 = call i64 @nyx_array_get({ i64, i8* }* %252, i64 1)
  call void @nyx_array_push({ i64, i8* }* %249, i64 %253)
  %254 = load { i64, i8* }*, { i64, i8* }** %214
  %255 = call i64 @nyx_array_get({ i64, i8* }* %254, i64 2)
  call void @nyx_array_push({ i64, i8* }* %249, i64 %255)
  %256 = load { i64, i8* }*, { i64, i8* }** %214
  %257 = call i64 @nyx_array_get({ i64, i8* }* %256, i64 3)
  call void @nyx_array_push({ i64, i8* }* %249, i64 %257)
  %258 = load %nyx_string*, %nyx_string** %99
  %259 = ptrtoint %nyx_string* %258 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %249, i64 %259, i64 2)
  %260 = call { i64, i8* }* @make_astnode(%nyx_string* %248, { i64, i8* }* %249)
  ret { i64, i8* }* %260
else41:
  br label %merge42
merge42:
  %261 = getelementptr [4 x i8], [4 x i8]* @.str554, i32 0, i32 0
  %262 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str554.c, i8* %261, i64 3)
  %263 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %262)
  br i1 %263, label %then48, label %else49
then48:
  %264 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %265 = getelementptr [3 x i8], [3 x i8]* @.str555, i32 0, i32 0
  %266 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str555.c, i8* %265, i64 2)
  %267 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %266)
  br i1 %267, label %then51, label %else52
then51:
  %268 = call { i64, i8* }* @parse__parse_function(%SharedEnv_parse* %env.param)
  %269 = alloca { i64, i8* }*
  store { i64, i8* }* %268, { i64, i8* }** %269
  %270 = load { i64, i8* }*, { i64, i8* }** %269
  %271 = call i64 @nyx_array_get({ i64, i8* }* %270, i64 1)
  %272 = inttoptr i64 %271 to { i64, i8* }*
  %273 = alloca { i64, i8* }*
  store { i64, i8* }* %272, { i64, i8* }** %273
  %274 = getelementptr [9 x i8], [9 x i8]* @.str556, i32 0, i32 0
  %275 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str556.c, i8* %274, i64 8)
  %276 = call { i64, i8* }* @nyx_array_new_ptr()
  %277 = load { i64, i8* }*, { i64, i8* }** %273
  %278 = call i64 @nyx_array_get({ i64, i8* }* %277, i64 0)
  call void @nyx_array_push({ i64, i8* }* %276, i64 %278)
  %279 = load { i64, i8* }*, { i64, i8* }** %273
  %280 = call i64 @nyx_array_get({ i64, i8* }* %279, i64 1)
  call void @nyx_array_push({ i64, i8* }* %276, i64 %280)
  %281 = load { i64, i8* }*, { i64, i8* }** %273
  %282 = call i64 @nyx_array_get({ i64, i8* }* %281, i64 2)
  call void @nyx_array_push({ i64, i8* }* %276, i64 %282)
  %283 = load { i64, i8* }*, { i64, i8* }** %273
  %284 = call i64 @nyx_array_get({ i64, i8* }* %283, i64 3)
  call void @nyx_array_push({ i64, i8* }* %276, i64 %284)
  %285 = load { i64, i8* }*, { i64, i8* }** %273
  %286 = call i64 @nyx_array_get({ i64, i8* }* %285, i64 4)
  call void @nyx_array_push({ i64, i8* }* %276, i64 %286)
  %287 = load %nyx_string*, %nyx_string** %99
  %288 = ptrtoint %nyx_string* %287 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %276, i64 %288, i64 2)
  %289 = load { i64, i8* }*, { i64, i8* }** %273
  %290 = call i64 @nyx_array_get({ i64, i8* }* %289, i64 8)
  call void @nyx_array_push({ i64, i8* }* %276, i64 %290)
  %291 = call { i64, i8* }* @make_astnode(%nyx_string* %275, { i64, i8* }* %276)
  %292 = alloca { i64, i8* }*
  store { i64, i8* }* %291, { i64, i8* }** %292
  %293 = getelementptr [7 x i8], [7 x i8]* @.str557, i32 0, i32 0
  %294 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str557.c, i8* %293, i64 6)
  %295 = call { i64, i8* }* @nyx_array_new_ptr()
  %296 = load { i64, i8* }*, { i64, i8* }** %292
  %297 = ptrtoint { i64, i8* }* %296 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %295, i64 %297, i64 5)
  %298 = call { i64, i8* }* @make_astnode(%nyx_string* %294, { i64, i8* }* %295)
  ret { i64, i8* }* %298
else52:
  br label %merge53
merge53:
  %299 = getelementptr [7 x i8], [7 x i8]* @.str558, i32 0, i32 0
  %300 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str558.c, i8* %299, i64 6)
  %301 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %300)
  br i1 %301, label %then54, label %else55
then54:
  %302 = call { i64, i8* }* @parse__parse_struct(%SharedEnv_parse* %env.param)
  %303 = alloca { i64, i8* }*
  store { i64, i8* }* %302, { i64, i8* }** %303
  %304 = load { i64, i8* }*, { i64, i8* }** %303
  %305 = call i64 @nyx_array_get({ i64, i8* }* %304, i64 1)
  %306 = inttoptr i64 %305 to { i64, i8* }*
  %307 = alloca { i64, i8* }*
  store { i64, i8* }* %306, { i64, i8* }** %307
  %308 = getelementptr [7 x i8], [7 x i8]* @.str559, i32 0, i32 0
  %309 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str559.c, i8* %308, i64 6)
  %310 = call { i64, i8* }* @nyx_array_new_ptr()
  %311 = load { i64, i8* }*, { i64, i8* }** %307
  %312 = call i64 @nyx_array_get({ i64, i8* }* %311, i64 0)
  call void @nyx_array_push({ i64, i8* }* %310, i64 %312)
  %313 = load { i64, i8* }*, { i64, i8* }** %307
  %314 = call i64 @nyx_array_get({ i64, i8* }* %313, i64 1)
  call void @nyx_array_push({ i64, i8* }* %310, i64 %314)
  %315 = load { i64, i8* }*, { i64, i8* }** %307
  %316 = call i64 @nyx_array_get({ i64, i8* }* %315, i64 2)
  call void @nyx_array_push({ i64, i8* }* %310, i64 %316)
  %317 = load %nyx_string*, %nyx_string** %99
  %318 = ptrtoint %nyx_string* %317 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %310, i64 %318, i64 2)
  %319 = call { i64, i8* }* @make_astnode(%nyx_string* %309, { i64, i8* }* %310)
  %320 = alloca { i64, i8* }*
  store { i64, i8* }* %319, { i64, i8* }** %320
  %321 = load { i64, i8* }*, { i64, i8* }** %320
  %322 = load { i64, i8* }*, { i64, i8* }** %303
  %323 = call i64 @nyx_array_get({ i64, i8* }* %322, i64 2)
  %324 = load { i64, i8* }*, { i64, i8* }** %303
  %325 = call i64 @nyx_array_get_tag({ i64, i8* }* %324, i64 2)
  call void @nyx_array_set_tagged({ i64, i8* }* %321, i64 2, i64 %323, i64 %325)
  %326 = getelementptr [7 x i8], [7 x i8]* @.str560, i32 0, i32 0
  %327 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str560.c, i8* %326, i64 6)
  %328 = call { i64, i8* }* @nyx_array_new_ptr()
  %329 = load { i64, i8* }*, { i64, i8* }** %320
  %330 = ptrtoint { i64, i8* }* %329 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %328, i64 %330, i64 5)
  %331 = call { i64, i8* }* @make_astnode(%nyx_string* %327, { i64, i8* }* %328)
  ret { i64, i8* }* %331
else55:
  br label %merge56
merge56:
  %332 = getelementptr [5 x i8], [5 x i8]* @.str561, i32 0, i32 0
  %333 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str561.c, i8* %332, i64 4)
  %334 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %333)
  br i1 %334, label %then57, label %else58
then57:
  %335 = call { i64, i8* }* @parse__parse_enum(%SharedEnv_parse* %env.param)
  %336 = alloca { i64, i8* }*
  store { i64, i8* }* %335, { i64, i8* }** %336
  %337 = load { i64, i8* }*, { i64, i8* }** %336
  %338 = call i64 @nyx_array_get({ i64, i8* }* %337, i64 1)
  %339 = inttoptr i64 %338 to { i64, i8* }*
  %340 = alloca { i64, i8* }*
  store { i64, i8* }* %339, { i64, i8* }** %340
  %341 = getelementptr [5 x i8], [5 x i8]* @.str562, i32 0, i32 0
  %342 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str562.c, i8* %341, i64 4)
  %343 = call { i64, i8* }* @nyx_array_new_ptr()
  %344 = load { i64, i8* }*, { i64, i8* }** %340
  %345 = call i64 @nyx_array_get({ i64, i8* }* %344, i64 0)
  call void @nyx_array_push({ i64, i8* }* %343, i64 %345)
  %346 = load { i64, i8* }*, { i64, i8* }** %340
  %347 = call i64 @nyx_array_get({ i64, i8* }* %346, i64 1)
  call void @nyx_array_push({ i64, i8* }* %343, i64 %347)
  %348 = load { i64, i8* }*, { i64, i8* }** %340
  %349 = call i64 @nyx_array_get({ i64, i8* }* %348, i64 2)
  call void @nyx_array_push({ i64, i8* }* %343, i64 %349)
  %350 = load %nyx_string*, %nyx_string** %99
  %351 = ptrtoint %nyx_string* %350 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %343, i64 %351, i64 2)
  %352 = call { i64, i8* }* @make_astnode(%nyx_string* %342, { i64, i8* }* %343)
  %353 = alloca { i64, i8* }*
  store { i64, i8* }* %352, { i64, i8* }** %353
  %354 = getelementptr [7 x i8], [7 x i8]* @.str563, i32 0, i32 0
  %355 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str563.c, i8* %354, i64 6)
  %356 = call { i64, i8* }* @nyx_array_new_ptr()
  %357 = load { i64, i8* }*, { i64, i8* }** %353
  %358 = ptrtoint { i64, i8* }* %357 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %356, i64 %358, i64 5)
  %359 = call { i64, i8* }* @make_astnode(%nyx_string* %355, { i64, i8* }* %356)
  ret { i64, i8* }* %359
else58:
  br label %merge59
merge59:
  %360 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %361 = alloca %Token
  store %Token %360, %Token* %361
  %362 = getelementptr [8 x i8], [8 x i8]* @.str564, i32 0, i32 0
  %363 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str564.c, i8* %362, i64 7)
  %364 = load %Token, %Token* %361
  %365 = call i64 @get_token_line(%Token %364)
  %366 = load %Token, %Token* %361
  %367 = call i64 @get_token_column(%Token %366)
  %368 = getelementptr [59 x i8], [59 x i8]* @.str565, i32 0, i32 0
  %369 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str565.c, i8* %368, i64 58)
  %370 = getelementptr [59 x i8], [59 x i8]* @.str566, i32 0, i32 0
  %371 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str566.c, i8* %370, i64 58)
  %372 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %369, %nyx_string* %371)
  %373 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %363, i64 %365, i64 %367, %nyx_string* %372)
  %374 = getelementptr [6 x i8], [6 x i8]* @.str567, i32 0, i32 0
  %375 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str567.c, i8* %374, i64 5)
  %376 = call { i64, i8* }* @nyx_array_new_ptr()
  %377 = call { i64, i8* }* @make_astnode(%nyx_string* %375, { i64, i8* }* %376)
  ret { i64, i8* }* %377
else49:
  br label %merge50
merge50:
  %378 = getelementptr [3 x i8], [3 x i8]* @.str568, i32 0, i32 0
  %379 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str568.c, i8* %378, i64 2)
  %380 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %379)
  br i1 %380, label %then60, label %else61
then60:
  %381 = call { i64, i8* }* @parse__parse_function(%SharedEnv_parse* %env.param)
  %382 = alloca { i64, i8* }*
  store { i64, i8* }* %381, { i64, i8* }** %382
  %383 = load { i64, i8* }*, { i64, i8* }** %382
  %384 = call i64 @nyx_array_get({ i64, i8* }* %383, i64 1)
  %385 = inttoptr i64 %384 to { i64, i8* }*
  %386 = alloca { i64, i8* }*
  store { i64, i8* }* %385, { i64, i8* }** %386
  %387 = getelementptr [9 x i8], [9 x i8]* @.str569, i32 0, i32 0
  %388 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str569.c, i8* %387, i64 8)
  %389 = call { i64, i8* }* @nyx_array_new_ptr()
  %390 = load { i64, i8* }*, { i64, i8* }** %386
  %391 = call i64 @nyx_array_get({ i64, i8* }* %390, i64 0)
  call void @nyx_array_push({ i64, i8* }* %389, i64 %391)
  %392 = load { i64, i8* }*, { i64, i8* }** %386
  %393 = call i64 @nyx_array_get({ i64, i8* }* %392, i64 1)
  call void @nyx_array_push({ i64, i8* }* %389, i64 %393)
  %394 = load { i64, i8* }*, { i64, i8* }** %386
  %395 = call i64 @nyx_array_get({ i64, i8* }* %394, i64 2)
  call void @nyx_array_push({ i64, i8* }* %389, i64 %395)
  %396 = load { i64, i8* }*, { i64, i8* }** %386
  %397 = call i64 @nyx_array_get({ i64, i8* }* %396, i64 3)
  call void @nyx_array_push({ i64, i8* }* %389, i64 %397)
  %398 = load { i64, i8* }*, { i64, i8* }** %386
  %399 = call i64 @nyx_array_get({ i64, i8* }* %398, i64 4)
  call void @nyx_array_push({ i64, i8* }* %389, i64 %399)
  %400 = load %nyx_string*, %nyx_string** %99
  %401 = ptrtoint %nyx_string* %400 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %389, i64 %401, i64 2)
  %402 = load { i64, i8* }*, { i64, i8* }** %386
  %403 = call i64 @nyx_array_get({ i64, i8* }* %402, i64 8)
  call void @nyx_array_push({ i64, i8* }* %389, i64 %403)
  %404 = call { i64, i8* }* @make_astnode(%nyx_string* %388, { i64, i8* }* %389)
  ret { i64, i8* }* %404
else61:
  br label %merge62
merge62:
  %405 = getelementptr [7 x i8], [7 x i8]* @.str570, i32 0, i32 0
  %406 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str570.c, i8* %405, i64 6)
  %407 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %406)
  br i1 %407, label %then63, label %else64
then63:
  %408 = call { i64, i8* }* @parse__parse_struct(%SharedEnv_parse* %env.param)
  %409 = alloca { i64, i8* }*
  store { i64, i8* }* %408, { i64, i8* }** %409
  %410 = load { i64, i8* }*, { i64, i8* }** %409
  %411 = call i64 @nyx_array_get({ i64, i8* }* %410, i64 1)
  %412 = inttoptr i64 %411 to { i64, i8* }*
  %413 = alloca { i64, i8* }*
  store { i64, i8* }* %412, { i64, i8* }** %413
  %414 = getelementptr [7 x i8], [7 x i8]* @.str571, i32 0, i32 0
  %415 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str571.c, i8* %414, i64 6)
  %416 = call { i64, i8* }* @nyx_array_new_ptr()
  %417 = load { i64, i8* }*, { i64, i8* }** %413
  %418 = call i64 @nyx_array_get({ i64, i8* }* %417, i64 0)
  call void @nyx_array_push({ i64, i8* }* %416, i64 %418)
  %419 = load { i64, i8* }*, { i64, i8* }** %413
  %420 = call i64 @nyx_array_get({ i64, i8* }* %419, i64 1)
  call void @nyx_array_push({ i64, i8* }* %416, i64 %420)
  %421 = load { i64, i8* }*, { i64, i8* }** %413
  %422 = call i64 @nyx_array_get({ i64, i8* }* %421, i64 2)
  call void @nyx_array_push({ i64, i8* }* %416, i64 %422)
  %423 = load %nyx_string*, %nyx_string** %99
  %424 = ptrtoint %nyx_string* %423 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %416, i64 %424, i64 2)
  %425 = call { i64, i8* }* @make_astnode(%nyx_string* %415, { i64, i8* }* %416)
  %426 = alloca { i64, i8* }*
  store { i64, i8* }* %425, { i64, i8* }** %426
  %427 = load { i64, i8* }*, { i64, i8* }** %426
  %428 = load { i64, i8* }*, { i64, i8* }** %409
  %429 = call i64 @nyx_array_get({ i64, i8* }* %428, i64 2)
  %430 = load { i64, i8* }*, { i64, i8* }** %409
  %431 = call i64 @nyx_array_get_tag({ i64, i8* }* %430, i64 2)
  call void @nyx_array_set_tagged({ i64, i8* }* %427, i64 2, i64 %429, i64 %431)
  %432 = load { i64, i8* }*, { i64, i8* }** %426
  ret { i64, i8* }* %432
else64:
  br label %merge65
merge65:
  %433 = getelementptr [5 x i8], [5 x i8]* @.str572, i32 0, i32 0
  %434 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str572.c, i8* %433, i64 4)
  %435 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %434)
  br i1 %435, label %then66, label %else67
then66:
  %436 = call { i64, i8* }* @parse__parse_enum(%SharedEnv_parse* %env.param)
  %437 = alloca { i64, i8* }*
  store { i64, i8* }* %436, { i64, i8* }** %437
  %438 = load { i64, i8* }*, { i64, i8* }** %437
  %439 = call i64 @nyx_array_get({ i64, i8* }* %438, i64 1)
  %440 = inttoptr i64 %439 to { i64, i8* }*
  %441 = alloca { i64, i8* }*
  store { i64, i8* }* %440, { i64, i8* }** %441
  %442 = getelementptr [5 x i8], [5 x i8]* @.str573, i32 0, i32 0
  %443 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str573.c, i8* %442, i64 4)
  %444 = call { i64, i8* }* @nyx_array_new_ptr()
  %445 = load { i64, i8* }*, { i64, i8* }** %441
  %446 = call i64 @nyx_array_get({ i64, i8* }* %445, i64 0)
  call void @nyx_array_push({ i64, i8* }* %444, i64 %446)
  %447 = load { i64, i8* }*, { i64, i8* }** %441
  %448 = call i64 @nyx_array_get({ i64, i8* }* %447, i64 1)
  call void @nyx_array_push({ i64, i8* }* %444, i64 %448)
  %449 = load { i64, i8* }*, { i64, i8* }** %441
  %450 = call i64 @nyx_array_get({ i64, i8* }* %449, i64 2)
  call void @nyx_array_push({ i64, i8* }* %444, i64 %450)
  %451 = load %nyx_string*, %nyx_string** %99
  %452 = ptrtoint %nyx_string* %451 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %444, i64 %452, i64 2)
  %453 = call { i64, i8* }* @make_astnode(%nyx_string* %443, { i64, i8* }* %444)
  ret { i64, i8* }* %453
else67:
  br label %merge68
merge68:
  %454 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %455 = alloca %Token
  store %Token %454, %Token* %455
  %456 = getelementptr [8 x i8], [8 x i8]* @.str574, i32 0, i32 0
  %457 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str574.c, i8* %456, i64 7)
  %458 = load %Token, %Token* %455
  %459 = call i64 @get_token_line(%Token %458)
  %460 = load %Token, %Token* %455
  %461 = call i64 @get_token_column(%Token %460)
  %462 = getelementptr [77 x i8], [77 x i8]* @.str575, i32 0, i32 0
  %463 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str575.c, i8* %462, i64 76)
  %464 = getelementptr [80 x i8], [80 x i8]* @.str576, i32 0, i32 0
  %465 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str576.c, i8* %464, i64 79)
  %466 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %463, %nyx_string* %465)
  %467 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %457, i64 %459, i64 %461, %nyx_string* %466)
  %468 = getelementptr [6 x i8], [6 x i8]* @.str577, i32 0, i32 0
  %469 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str577.c, i8* %468, i64 5)
  %470 = call { i64, i8* }* @nyx_array_new_ptr()
  %471 = call { i64, i8* }* @make_astnode(%nyx_string* %469, { i64, i8* }* %470)
  ret { i64, i8* }* %471
else18:
  br label %merge19
merge19:
  %472 = getelementptr [7 x i8], [7 x i8]* @.str578, i32 0, i32 0
  %473 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str578.c, i8* %472, i64 6)
  %474 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %473)
  br i1 %474, label %then69, label %else70
then69:
  %475 = call { i64, i8* }* @parse__parse_struct(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %475
else70:
  br label %merge71
merge71:
  %476 = getelementptr [5 x i8], [5 x i8]* @.str579, i32 0, i32 0
  %477 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str579.c, i8* %476, i64 4)
  %478 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %477)
  br i1 %478, label %then72, label %else73
then72:
  %479 = call { i64, i8* }* @parse__parse_enum(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %479
else73:
  br label %merge74
merge74:
  %480 = getelementptr [6 x i8], [6 x i8]* @.str580, i32 0, i32 0
  %481 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str580.c, i8* %480, i64 5)
  %482 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %481)
  br i1 %482, label %then75, label %else76
then75:
  %483 = call { i64, i8* }* @parse__parse_match(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %483
else76:
  br label %merge77
merge77:
  %484 = getelementptr [3 x i8], [3 x i8]* @.str581, i32 0, i32 0
  %485 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str581.c, i8* %484, i64 2)
  %486 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %485)
  br i1 %486, label %then78, label %else79
then78:
  %487 = call { i64, i8* }* @parse__parse_if(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %487
else79:
  br label %merge80
merge80:
  %488 = getelementptr [6 x i8], [6 x i8]* @.str582, i32 0, i32 0
  %489 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str582.c, i8* %488, i64 5)
  %490 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %489)
  br i1 %490, label %then81, label %else82
then81:
  %491 = call { i64, i8* }* @parse__parse_while(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %491
else82:
  br label %merge83
merge83:
  %492 = getelementptr [4 x i8], [4 x i8]* @.str583, i32 0, i32 0
  %493 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str583.c, i8* %492, i64 3)
  %494 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %493)
  br i1 %494, label %then84, label %else85
then84:
  %495 = call { i64, i8* }* @parse__parse_for(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %495
else85:
  br label %merge86
merge86:
  %496 = getelementptr [7 x i8], [7 x i8]* @.str584, i32 0, i32 0
  %497 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str584.c, i8* %496, i64 6)
  %498 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %497)
  br i1 %498, label %then87, label %else88
then87:
  %499 = call { i64, i8* }* @parse__parse_return(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %499
else88:
  br label %merge89
merge89:
  %500 = getelementptr [6 x i8], [6 x i8]* @.str585, i32 0, i32 0
  %501 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str585.c, i8* %500, i64 5)
  %502 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %501)
  br i1 %502, label %then90, label %else91
then90:
  %503 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %504 = getelementptr [6 x i8], [6 x i8]* @.str586, i32 0, i32 0
  %505 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str586.c, i8* %504, i64 5)
  %506 = call { i64, i8* }* @nyx_array_new_ptr()
  %507 = call { i64, i8* }* @make_astnode(%nyx_string* %505, { i64, i8* }* %506)
  ret { i64, i8* }* %507
else91:
  br label %merge92
merge92:
  %508 = getelementptr [9 x i8], [9 x i8]* @.str587, i32 0, i32 0
  %509 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str587.c, i8* %508, i64 8)
  %510 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %509)
  br i1 %510, label %then93, label %else94
then93:
  %511 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %512 = getelementptr [9 x i8], [9 x i8]* @.str588, i32 0, i32 0
  %513 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str588.c, i8* %512, i64 8)
  %514 = call { i64, i8* }* @nyx_array_new_ptr()
  %515 = call { i64, i8* }* @make_astnode(%nyx_string* %513, { i64, i8* }* %514)
  ret { i64, i8* }* %515
else94:
  br label %merge95
merge95:
  %516 = getelementptr [7 x i8], [7 x i8]* @.str589, i32 0, i32 0
  %517 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str589.c, i8* %516, i64 6)
  %518 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %517)
  br i1 %518, label %then96, label %else97
then96:
  %519 = call { i64, i8* }* @parse__parse_export(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %519
else97:
  br label %merge98
merge98:
  %520 = getelementptr [4 x i8], [4 x i8]* @.str590, i32 0, i32 0
  %521 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str590.c, i8* %520, i64 3)
  %522 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %521)
  br i1 %522, label %then99, label %else100
then99:
  %523 = call { i64, i8* }* @parse__parse_pub(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %523
else100:
  br label %merge101
merge101:
  %524 = getelementptr [7 x i8], [7 x i8]* @.str591, i32 0, i32 0
  %525 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str591.c, i8* %524, i64 6)
  %526 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %525)
  br i1 %526, label %then102, label %else103
then102:
  %527 = call { i64, i8* }* @parse__parse_import(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %527
else103:
  br label %merge104
merge104:
  %528 = getelementptr [6 x i8], [6 x i8]* @.str592, i32 0, i32 0
  %529 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str592.c, i8* %528, i64 5)
  %530 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %529)
  br i1 %530, label %then105, label %else106
then105:
  %531 = call { i64, i8* }* @parse__parse_trait(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %531
else106:
  br label %merge107
merge107:
  %532 = getelementptr [5 x i8], [5 x i8]* @.str593, i32 0, i32 0
  %533 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str593.c, i8* %532, i64 4)
  %534 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %533)
  br i1 %534, label %then108, label %else109
then108:
  %535 = call { i64, i8* }* @parse__parse_impl(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %535
else109:
  br label %merge110
merge110:
  %536 = getelementptr [5 x i8], [5 x i8]* @.str594, i32 0, i32 0
  %537 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str594.c, i8* %536, i64 4)
  %538 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %537)
  br i1 %538, label %then111, label %else112
then111:
  %539 = call { i64, i8* }* @parse__parse_test_decl(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %539
else112:
  br label %merge113
merge113:
  %540 = getelementptr [7 x i8], [7 x i8]* @.str595, i32 0, i32 0
  %541 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str595.c, i8* %540, i64 6)
  %542 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %541)
  br i1 %542, label %then114, label %else115
then114:
  %543 = call { i64, i8* }* @parse__parse_extern_fn(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %543
else115:
  br label %merge116
merge116:
  %544 = getelementptr [7 x i8], [7 x i8]* @.str596, i32 0, i32 0
  %545 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str596.c, i8* %544, i64 6)
  %546 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %545)
  br i1 %546, label %then117, label %else118
then117:
  %547 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %548 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %549 = alloca { i64, i8* }*
  store { i64, i8* }* %548, { i64, i8* }** %549
  %550 = getelementptr [13 x i8], [13 x i8]* @.str597, i32 0, i32 0
  %551 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str597.c, i8* %550, i64 12)
  %552 = call { i64, i8* }* @nyx_array_new_ptr()
  %553 = load { i64, i8* }*, { i64, i8* }** %549
  %554 = ptrtoint { i64, i8* }* %553 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %552, i64 %554, i64 5)
  %555 = call { i64, i8* }* @make_astnode(%nyx_string* %551, { i64, i8* }* %552)
  ret { i64, i8* }* %555
else118:
  br label %merge119
merge119:
  %556 = getelementptr [7 x i8], [7 x i8]* @.str598, i32 0, i32 0
  %557 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str598.c, i8* %556, i64 6)
  %558 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %557)
  br i1 %558, label %then120, label %else121
then120:
  %559 = call { i64, i8* }* @parse__parse_static_var(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %559
else121:
  br label %merge122
merge122:
  %560 = getelementptr [7 x i8], [7 x i8]* @.str599, i32 0, i32 0
  %561 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str599.c, i8* %560, i64 6)
  %562 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %561)
  br i1 %562, label %then123, label %else124
then123:
  %563 = call { i64, i8* }* @parse__parse_module_decl(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %563
else124:
  br label %merge125
merge125:
  %564 = getelementptr [6 x i8], [6 x i8]* @.str600, i32 0, i32 0
  %565 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str600.c, i8* %564, i64 5)
  %566 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %565)
  br i1 %566, label %then126, label %else127
then126:
  %567 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %568 = getelementptr [11 x i8], [11 x i8]* @.str601, i32 0, i32 0
  %569 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str601.c, i8* %568, i64 10)
  %570 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %569)
  br i1 %570, label %then129, label %else130
then129:
  %571 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %572 = alloca { i64, i8* }*
  store { i64, i8* }* %571, { i64, i8* }** %572
  %573 = getelementptr [6 x i8], [6 x i8]* @.str602, i32 0, i32 0
  %574 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str602.c, i8* %573, i64 5)
  %575 = call { i64, i8* }* @nyx_array_new_ptr()
  %576 = load { i64, i8* }*, { i64, i8* }** %572
  %577 = ptrtoint { i64, i8* }* %576 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %575, i64 %577, i64 5)
  %578 = call { i64, i8* }* @make_astnode(%nyx_string* %574, { i64, i8* }* %575)
  ret { i64, i8* }* %578
else130:
  br label %merge131
merge131:
  %579 = call { i64, i8* }* @parse__parse_statement(%SharedEnv_parse* %env.param)
  %580 = alloca { i64, i8* }*
  store { i64, i8* }* %579, { i64, i8* }** %580
  %581 = getelementptr [6 x i8], [6 x i8]* @.str603, i32 0, i32 0
  %582 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str603.c, i8* %581, i64 5)
  %583 = call { i64, i8* }* @nyx_array_new_ptr()
  %584 = call { i64, i8* }* @nyx_array_new_ptr()
  %585 = load { i64, i8* }*, { i64, i8* }** %580
  %586 = ptrtoint { i64, i8* }* %585 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %584, i64 %586, i64 5)
  %587 = ptrtoint { i64, i8* }* %584 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %583, i64 %587, i64 5)
  %588 = call { i64, i8* }* @make_astnode(%nyx_string* %582, { i64, i8* }* %583)
  %589 = alloca { i64, i8* }*
  store { i64, i8* }* %588, { i64, i8* }** %589
  %590 = getelementptr [6 x i8], [6 x i8]* @.str604, i32 0, i32 0
  %591 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str604.c, i8* %590, i64 5)
  %592 = call { i64, i8* }* @nyx_array_new_ptr()
  %593 = load { i64, i8* }*, { i64, i8* }** %589
  %594 = ptrtoint { i64, i8* }* %593 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %592, i64 %594, i64 5)
  %595 = call { i64, i8* }* @make_astnode(%nyx_string* %591, { i64, i8* }* %592)
  ret { i64, i8* }* %595
else127:
  br label %merge128
merge128:
  %596 = getelementptr [4 x i8], [4 x i8]* @.str605, i32 0, i32 0
  %597 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str605.c, i8* %596, i64 3)
  %598 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %597)
  br i1 %598, label %then132, label %else133
then132:
  %599 = call { i64, i8* }* @parse__parse_try_catch(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %599
else133:
  br label %merge134
merge134:
  %600 = getelementptr [6 x i8], [6 x i8]* @.str606, i32 0, i32 0
  %601 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str606.c, i8* %600, i64 5)
  %602 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %601)
  br i1 %602, label %then135, label %else136
then135:
  %603 = call { i64, i8* }* @parse__parse_throw(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %603
else136:
  br label %merge137
merge137:
  %604 = getelementptr [6 x i8], [6 x i8]* @.str607, i32 0, i32 0
  %605 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str607.c, i8* %604, i64 5)
  %606 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %605)
  br i1 %606, label %then138, label %else139
then138:
  %607 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %608 = call { i64, i8* }* @parse__parse_async_function(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %608
else139:
  br label %merge140
merge140:
  %609 = getelementptr [11 x i8], [11 x i8]* @.str608, i32 0, i32 0
  %610 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str608.c, i8* %609, i64 10)
  %611 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %610)
  br i1 %611, label %then141, label %else142
then141:
  %612 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %613 = alloca %Token
  store %Token %612, %Token* %613
  %614 = load %Token, %Token* %613
  %615 = call %nyx_string* @get_token_value(%Token %614)
  %616 = alloca %nyx_string*
  store %nyx_string* %615, %nyx_string** %616
  %617 = load %nyx_string*, %nyx_string** %616
  %618 = getelementptr [5 x i8], [5 x i8]* @.str609, i32 0, i32 0
  %619 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str609.c, i8* %618, i64 4)
  %620 = call i1 @nyx_string_equals(%nyx_string* %617, %nyx_string* %619)
  br i1 %620, label %then144, label %else145
then144:
  %621 = call { i64, i8* }* @parse__parse_type_alias(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %621
else145:
  br label %merge146
merge146:
  %622 = load %nyx_string*, %nyx_string** %616
  %623 = getelementptr [6 x i8], [6 x i8]* @.str610, i32 0, i32 0
  %624 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str610.c, i8* %623, i64 5)
  %625 = call i1 @nyx_string_equals(%nyx_string* %622, %nyx_string* %624)
  br i1 %625, label %then147, label %else148
then147:
  %626 = call { i64, i8* }* @parse__parse_macro_def(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %626
else148:
  br label %merge149
merge149:
  %627 = load %nyx_string*, %nyx_string** %616
  %628 = getelementptr [6 x i8], [6 x i8]* @.str611, i32 0, i32 0
  %629 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str611.c, i8* %628, i64 5)
  %630 = call i1 @nyx_string_equals(%nyx_string* %627, %nyx_string* %629)
  br i1 %630, label %then150, label %else151
then150:
  %631 = call { i64, i8* }* @parse__parse_bench_decl(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %631
else151:
  br label %merge152
merge152:
  %632 = load %nyx_string*, %nyx_string** %616
  %633 = getelementptr [6 x i8], [6 x i8]* @.str612, i32 0, i32 0
  %634 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str612.c, i8* %633, i64 5)
  %635 = call i1 @nyx_string_equals(%nyx_string* %632, %nyx_string* %634)
  br i1 %635, label %then153, label %else154
then153:
  %636 = call { i64, i8* }* @parse__parse_spawn_stmt(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %636
else154:
  br label %merge155
merge155:
  %637 = load %nyx_string*, %nyx_string** %616
  %638 = getelementptr [7 x i8], [7 x i8]* @.str613, i32 0, i32 0
  %639 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str613.c, i8* %638, i64 6)
  %640 = call i1 @nyx_string_equals(%nyx_string* %637, %nyx_string* %639)
  br i1 %640, label %then156, label %else157
then156:
  %641 = call { i64, i8* }* @parse__parse_select_stmt(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %641
else157:
  br label %merge158
merge158:
  %642 = load %nyx_string*, %nyx_string** %616
  %643 = getelementptr [5 x i8], [5 x i8]* @.str614, i32 0, i32 0
  %644 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str614.c, i8* %643, i64 4)
  %645 = call i1 @nyx_string_equals(%nyx_string* %642, %nyx_string* %644)
  br i1 %645, label %then159, label %else160
then159:
  %646 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %647 = getelementptr [3 x i8], [3 x i8]* @.str615, i32 0, i32 0
  %648 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str615.c, i8* %647, i64 2)
  %649 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %648)
  br i1 %649, label %then162, label %else163
then162:
  %650 = call { i64, i8* }* @parse__parse_function(%SharedEnv_parse* %env.param)
  %651 = alloca { i64, i8* }*
  store { i64, i8* }* %650, { i64, i8* }** %651
  %652 = load { i64, i8* }*, { i64, i8* }** %651
  %653 = call i64 @nyx_array_get({ i64, i8* }* %652, i64 1)
  %654 = inttoptr i64 %653 to { i64, i8* }*
  %655 = alloca { i64, i8* }*
  store { i64, i8* }* %654, { i64, i8* }** %655
  %656 = getelementptr [9 x i8], [9 x i8]* @.str616, i32 0, i32 0
  %657 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str616.c, i8* %656, i64 8)
  %658 = call { i64, i8* }* @nyx_array_new_ptr()
  %659 = load { i64, i8* }*, { i64, i8* }** %655
  %660 = call i64 @nyx_array_get({ i64, i8* }* %659, i64 0)
  call void @nyx_array_push({ i64, i8* }* %658, i64 %660)
  %661 = load { i64, i8* }*, { i64, i8* }** %655
  %662 = call i64 @nyx_array_get({ i64, i8* }* %661, i64 1)
  call void @nyx_array_push({ i64, i8* }* %658, i64 %662)
  %663 = load { i64, i8* }*, { i64, i8* }** %655
  %664 = call i64 @nyx_array_get({ i64, i8* }* %663, i64 2)
  call void @nyx_array_push({ i64, i8* }* %658, i64 %664)
  %665 = load { i64, i8* }*, { i64, i8* }** %655
  %666 = call i64 @nyx_array_get({ i64, i8* }* %665, i64 3)
  call void @nyx_array_push({ i64, i8* }* %658, i64 %666)
  %667 = load { i64, i8* }*, { i64, i8* }** %655
  %668 = call i64 @nyx_array_get({ i64, i8* }* %667, i64 4)
  call void @nyx_array_push({ i64, i8* }* %658, i64 %668)
  %669 = getelementptr [5 x i8], [5 x i8]* @.str617, i32 0, i32 0
  %670 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str617.c, i8* %669, i64 4)
  %671 = ptrtoint %nyx_string* %670 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %658, i64 %671, i64 2)
  %672 = load { i64, i8* }*, { i64, i8* }** %655
  %673 = call i64 @nyx_array_get({ i64, i8* }* %672, i64 8)
  call void @nyx_array_push({ i64, i8* }* %658, i64 %673)
  %674 = call { i64, i8* }* @make_astnode(%nyx_string* %657, { i64, i8* }* %658)
  ret { i64, i8* }* %674
else163:
  br label %merge164
merge164:
  br label %merge161
else160:
  br label %merge161
merge161:
  br label %merge143
else142:
  br label %merge143
merge143:
  %675 = getelementptr [5 x i8], [5 x i8]* @.str618, i32 0, i32 0
  %676 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str618.c, i8* %675, i64 4)
  %677 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %676)
  br i1 %677, label %then165, label %else166
then165:
  %678 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %679 = call { i64, i8* }* @parse__parse_unary(%SharedEnv_parse* %env.param)
  %680 = alloca { i64, i8* }*
  store { i64, i8* }* %679, { i64, i8* }** %680
  %681 = getelementptr [7 x i8], [7 x i8]* @.str619, i32 0, i32 0
  %682 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str619.c, i8* %681, i64 6)
  %683 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %682)
  br i1 %683, label %then168, label %else169
then168:
  %684 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %685 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %686 = alloca { i64, i8* }*
  store { i64, i8* }* %685, { i64, i8* }** %686
  %687 = getelementptr [13 x i8], [13 x i8]* @.str620, i32 0, i32 0
  %688 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str620.c, i8* %687, i64 12)
  %689 = call { i64, i8* }* @nyx_array_new_ptr()
  %690 = load { i64, i8* }*, { i64, i8* }** %680
  %691 = ptrtoint { i64, i8* }* %690 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %689, i64 %691, i64 5)
  %692 = load { i64, i8* }*, { i64, i8* }** %686
  %693 = ptrtoint { i64, i8* }* %692 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %689, i64 %693, i64 5)
  %694 = call { i64, i8* }* @make_astnode(%nyx_string* %688, { i64, i8* }* %689)
  ret { i64, i8* }* %694
else169:
  br label %merge170
merge170:
  %695 = getelementptr [6 x i8], [6 x i8]* @.str621, i32 0, i32 0
  %696 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str621.c, i8* %695, i64 5)
  %697 = call { i64, i8* }* @nyx_array_new_ptr()
  %698 = load { i64, i8* }*, { i64, i8* }** %680
  %699 = ptrtoint { i64, i8* }* %698 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %697, i64 %699, i64 5)
  %700 = call { i64, i8* }* @make_astnode(%nyx_string* %696, { i64, i8* }* %697)
  ret { i64, i8* }* %700
else166:
  br label %merge167
merge167:
  %701 = call { i64, i8* }* @parse__parse_assignment_or_expr(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %701
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %32 = load i64, i64* @g_last_line
  %33 = alloca i64
  store i64 %32, i64* %33
  %34 = load { i64, i8* }*, { i64, i8* }** %13
  %35 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %34, i64 0)
  %36 = alloca i64
  store i64 %35, i64* %36
  %37 = load { i64, i8* }*, { i64, i8* }** %13
  %38 = load { i64, i8* }*, { i64, i8* }** %13
  %39 = call i64 @nyx_array_get({ i64, i8* }* %38, i64 0)
  %40 = add i64 %39, 1
  call void @nyx_array_set({ i64, i8* }* %37, i64 0, i64 %40)
  %41 = getelementptr [9 x i8], [9 x i8]* @.str622, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str622.c, i8* %41, i64 8)
  %43 = load i64, i64* %36
  %44 = call %nyx_string* @nyx_string_from_int(i64 %43)
  %45 = call %nyx_string* @nyx_string_concat(%nyx_string* %42, %nyx_string* %44)
  %46 = alloca %nyx_string*
  store %nyx_string* %45, %nyx_string** %46
  %47 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %48 = alloca { i64, i8* }*
  store { i64, i8* }* %47, { i64, i8* }** %48
  %49 = load { i64, i8* }*, { i64, i8* }** %48
  %50 = call i64 @nyx_array_get({ i64, i8* }* %49, i64 1)
  %51 = inttoptr i64 %50 to { i64, i8* }*
  %52 = alloca { i64, i8* }*
  store { i64, i8* }* %51, { i64, i8* }** %52
  %53 = load { i64, i8* }*, { i64, i8* }** %52
  %54 = call i64 @nyx_array_get({ i64, i8* }* %53, i64 0)
  %55 = inttoptr i64 %54 to { i64, i8* }*
  %56 = alloca { i64, i8* }*
  store { i64, i8* }* %55, { i64, i8* }** %56
  %57 = load { i64, i8* }*, { i64, i8* }** %56
  %58 = getelementptr [7 x i8], [7 x i8]* @.str623, i32 0, i32 0
  %59 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str623.c, i8* %58, i64 6)
  %60 = call { i64, i8* }* @nyx_array_new_ptr()
  %61 = getelementptr [8 x i8], [8 x i8]* @.str624, i32 0, i32 0
  %62 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str624.c, i8* %61, i64 7)
  %63 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %63, i64 0, i64 1)
  %64 = call { i64, i8* }* @make_astnode(%nyx_string* %62, { i64, i8* }* %63)
  %65 = ptrtoint { i64, i8* }* %64 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %60, i64 %65, i64 5)
  %66 = call { i64, i8* }* @make_astnode(%nyx_string* %59, { i64, i8* }* %60)
  %67 = ptrtoint { i64, i8* }* %66 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %57, i64 %67, i64 5)
  %68 = getelementptr [9 x i8], [9 x i8]* @.str625, i32 0, i32 0
  %69 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str625.c, i8* %68, i64 8)
  %70 = call { i64, i8* }* @nyx_array_new_ptr()
  %71 = load %nyx_string*, %nyx_string** %46
  %72 = ptrtoint %nyx_string* %71 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %70, i64 %72, i64 2)
  %73 = call { i64, i8* }* @nyx_array_new_ptr()
  %74 = ptrtoint { i64, i8* }* %73 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %70, i64 %74, i64 5)
  %75 = getelementptr [4 x i8], [4 x i8]* @.str626, i32 0, i32 0
  %76 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str626.c, i8* %75, i64 3)
  %77 = ptrtoint %nyx_string* %76 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %70, i64 %77, i64 2)
  %78 = load { i64, i8* }*, { i64, i8* }** %48
  %79 = ptrtoint { i64, i8* }* %78 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %70, i64 %79, i64 5)
  %80 = call { i64, i8* }* @nyx_array_new_ptr()
  %81 = ptrtoint { i64, i8* }* %80 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %70, i64 %81, i64 5)
  %82 = call { i64, i8* }* @make_astnode(%nyx_string* %69, { i64, i8* }* %70)
  %83 = alloca { i64, i8* }*
  store { i64, i8* }* %82, { i64, i8* }** %83
  %84 = load { i64, i8* }*, { i64, i8* }** %12
  %85 = load { i64, i8* }*, { i64, i8* }** %83
  %86 = ptrtoint { i64, i8* }* %85 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %84, i64 %86, i64 5)
  %87 = getelementptr [11 x i8], [11 x i8]* @.str627, i32 0, i32 0
  %88 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str627.c, i8* %87, i64 10)
  %89 = call { i64, i8* }* @nyx_array_new_ptr()
  %90 = load %nyx_string*, %nyx_string** %46
  %91 = ptrtoint %nyx_string* %90 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %89, i64 %91, i64 2)
  %92 = call { i64, i8* }* @make_astnode(%nyx_string* %88, { i64, i8* }* %89)
  %93 = alloca { i64, i8* }*
  store { i64, i8* }* %92, { i64, i8* }** %93
  %94 = getelementptr [11 x i8], [11 x i8]* @.str628, i32 0, i32 0
  %95 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str628.c, i8* %94, i64 10)
  %96 = call { i64, i8* }* @nyx_array_new_ptr()
  %97 = getelementptr [11 x i8], [11 x i8]* @.str629, i32 0, i32 0
  %98 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str629.c, i8* %97, i64 10)
  %99 = ptrtoint %nyx_string* %98 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %96, i64 %99, i64 2)
  %100 = call { i64, i8* }* @make_astnode(%nyx_string* %95, { i64, i8* }* %96)
  %101 = alloca { i64, i8* }*
  store { i64, i8* }* %100, { i64, i8* }** %101
  %102 = call { i64, i8* }* @nyx_array_new_ptr()
  %103 = alloca { i64, i8* }*
  store { i64, i8* }* %102, { i64, i8* }** %103
  %104 = load { i64, i8* }*, { i64, i8* }** %103
  %105 = load { i64, i8* }*, { i64, i8* }** %93
  %106 = ptrtoint { i64, i8* }* %105 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %104, i64 %106, i64 5)
  %107 = getelementptr [5 x i8], [5 x i8]* @.str630, i32 0, i32 0
  %108 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str630.c, i8* %107, i64 4)
  %109 = call { i64, i8* }* @nyx_array_new_ptr()
  %110 = load { i64, i8* }*, { i64, i8* }** %101
  %111 = ptrtoint { i64, i8* }* %110 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %109, i64 %111, i64 5)
  %112 = load { i64, i8* }*, { i64, i8* }** %103
  %113 = ptrtoint { i64, i8* }* %112 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %109, i64 %113, i64 5)
  %114 = call { i64, i8* }* @make_astnode(%nyx_string* %108, { i64, i8* }* %109)
  %115 = alloca { i64, i8* }*
  store { i64, i8* }* %114, { i64, i8* }** %115
  %116 = load { i64, i8* }*, { i64, i8* }** %115
  %117 = load i64, i64* %33
  call void @nyx_array_set({ i64, i8* }* %116, i64 2, i64 %117)
  %118 = load { i64, i8* }*, { i64, i8* }** %115
  ret { i64, i8* }* %118
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %32 = load i64, i64* @g_last_line
  %33 = alloca i64
  store i64 %32, i64* %33
  %34 = getelementptr [11 x i8], [11 x i8]* @.str631, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str631.c, i8* %34, i64 10)
  %36 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %35)
  %37 = call { i64, i8* }* @nyx_array_new_ptr()
  %38 = alloca { i64, i8* }*
  store { i64, i8* }* %37, { i64, i8* }** %38
  %39 = getelementptr [6 x i8], [6 x i8]* @.str632, i32 0, i32 0
  %40 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str632.c, i8* %39, i64 5)
  %41 = call { i64, i8* }* @nyx_array_new_ptr()
  %42 = call { i64, i8* }* @nyx_array_new_ptr()
  %43 = ptrtoint { i64, i8* }* %42 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %41, i64 %43, i64 5)
  %44 = call { i64, i8* }* @make_astnode(%nyx_string* %40, { i64, i8* }* %41)
  %45 = alloca { i64, i8* }*
  store { i64, i8* }* %44, { i64, i8* }** %45
  %46 = alloca i1
  store i1 0, i1* %46
  %47 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %48 = getelementptr [12 x i8], [12 x i8]* @.str633, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str633.c, i8* %48, i64 11)
  %50 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %49)
  %51 = xor i1 %50, true
  br i1 %51, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %47)
  %52 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %53 = alloca %Token
  store %Token %52, %Token* %53
  %54 = load %Token, %Token* %53
  %55 = call %nyx_string* @get_token_value(%Token %54)
  %56 = alloca %nyx_string*
  store %nyx_string* %55, %nyx_string** %56
  %57 = load %nyx_string*, %nyx_string** %56
  %58 = getelementptr [8 x i8], [8 x i8]* @.str634, i32 0, i32 0
  %59 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str634.c, i8* %58, i64 7)
  %60 = call i1 @nyx_string_equals(%nyx_string* %57, %nyx_string* %59)
  br i1 %60, label %then3, label %else4
then3:
  %61 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %62 = getelementptr [12 x i8], [12 x i8]* @.str635, i32 0, i32 0
  %63 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str635.c, i8* %62, i64 11)
  %64 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %63)
  %65 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %65, { i64, i8* }** %45
  store i1 1, i1* %46
  br label %merge5
else4:
  %66 = load %nyx_string*, %nyx_string** %56
  %67 = getelementptr [5 x i8], [5 x i8]* @.str636, i32 0, i32 0
  %68 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str636.c, i8* %67, i64 4)
  %69 = call i1 @nyx_string_equals(%nyx_string* %66, %nyx_string* %68)
  br i1 %69, label %then6, label %else7
then6:
  %70 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge8
else7:
  br label %merge8
merge8:
  %71 = getelementptr [1 x i8], [1 x i8]* @.str637, i32 0, i32 0
  %72 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str637.c, i8* %71, i64 0)
  %73 = alloca %nyx_string*
  store %nyx_string* %72, %nyx_string** %73
  %74 = getelementptr [11 x i8], [11 x i8]* @.str638, i32 0, i32 0
  %75 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str638.c, i8* %74, i64 10)
  %76 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %75)
  br i1 %76, label %then9, label %else10
then9:
  %77 = load i64, i64* %4
  %78 = alloca i64
  store i64 %77, i64* %78
  %79 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %80 = alloca %Token
  store %Token %79, %Token* %80
  %81 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %82 = getelementptr [7 x i8], [7 x i8]* @.str639, i32 0, i32 0
  %83 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str639.c, i8* %82, i64 6)
  %84 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %83)
  br i1 %84, label %then12, label %else13
then12:
  %85 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %86 = load %Token, %Token* %80
  %87 = call %nyx_string* @get_token_value(%Token %86)
  store %nyx_string* %87, %nyx_string** %73
  br label %merge14
else13:
  %88 = load i64, i64* %78
  store i64 %88, i64* %4
  br label %merge14
merge14:
  br label %merge11
else10:
  br label %merge11
merge11:
  %89 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %90 = alloca { i64, i8* }*
  store { i64, i8* }* %89, { i64, i8* }** %90
  %91 = getelementptr [12 x i8], [12 x i8]* @.str640, i32 0, i32 0
  %92 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str640.c, i8* %91, i64 11)
  %93 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %92)
  %94 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %95 = alloca { i64, i8* }*
  store { i64, i8* }* %94, { i64, i8* }** %95
  %96 = call { i64, i8* }* @nyx_array_new_ptr()
  %97 = alloca { i64, i8* }*
  store { i64, i8* }* %96, { i64, i8* }** %97
  %98 = load { i64, i8* }*, { i64, i8* }** %97
  %99 = load { i64, i8* }*, { i64, i8* }** %90
  %100 = ptrtoint { i64, i8* }* %99 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %98, i64 %100, i64 5)
  %101 = load { i64, i8* }*, { i64, i8* }** %97
  %102 = load { i64, i8* }*, { i64, i8* }** %95
  %103 = ptrtoint { i64, i8* }* %102 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %101, i64 %103, i64 5)
  %104 = load { i64, i8* }*, { i64, i8* }** %97
  %105 = load %nyx_string*, %nyx_string** %73
  %106 = ptrtoint %nyx_string* %105 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %104, i64 %106, i64 2)
  %107 = load { i64, i8* }*, { i64, i8* }** %38
  %108 = load { i64, i8* }*, { i64, i8* }** %97
  %109 = ptrtoint { i64, i8* }* %108 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %107, i64 %109, i64 5)
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %110 = getelementptr [12 x i8], [12 x i8]* @.str641, i32 0, i32 0
  %111 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str641.c, i8* %110, i64 11)
  %112 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %111)
  %113 = alloca i64
  store i64 0, i64* %113
  %114 = load i1, i1* %46
  br i1 %114, label %then15, label %else16
then15:
  store i64 1, i64* %113
  br label %merge17
else16:
  br label %merge17
merge17:
  %115 = getelementptr [12 x i8], [12 x i8]* @.str642, i32 0, i32 0
  %116 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str642.c, i8* %115, i64 11)
  %117 = call { i64, i8* }* @nyx_array_new_ptr()
  %118 = load { i64, i8* }*, { i64, i8* }** %38
  %119 = ptrtoint { i64, i8* }* %118 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %117, i64 %119, i64 5)
  %120 = load { i64, i8* }*, { i64, i8* }** %45
  %121 = ptrtoint { i64, i8* }* %120 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %117, i64 %121, i64 5)
  %122 = load i64, i64* %113
  call void @nyx_array_push_tagged({ i64, i8* }* %117, i64 %122, i64 1)
  %123 = call { i64, i8* }* @make_astnode(%nyx_string* %116, { i64, i8* }* %117)
  %124 = alloca { i64, i8* }*
  store { i64, i8* }* %123, { i64, i8* }** %124
  %125 = load { i64, i8* }*, { i64, i8* }** %124
  %126 = load i64, i64* %33
  call void @nyx_array_set({ i64, i8* }* %125, i64 2, i64 %126)
  %127 = load { i64, i8* }*, { i64, i8* }** %124
  ret { i64, i8* }* %127
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %32 = getelementptr [7 x i8], [7 x i8]* @.str643, i32 0, i32 0
  %33 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str643.c, i8* %32, i64 6)
  %34 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %33)
  %35 = alloca %Token
  store %Token %34, %Token* %35
  %36 = load %Token, %Token* %35
  %37 = call %nyx_string* @get_token_value(%Token %36)
  %38 = alloca %nyx_string*
  store %nyx_string* %37, %nyx_string** %38
  %39 = getelementptr [7 x i8], [7 x i8]* @.str644, i32 0, i32 0
  %40 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str644.c, i8* %39, i64 6)
  %41 = alloca %nyx_string*
  store %nyx_string* %40, %nyx_string** %41
  %42 = getelementptr [7 x i8], [7 x i8]* @.str645, i32 0, i32 0
  %43 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str645.c, i8* %42, i64 6)
  %44 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %43)
  br i1 %44, label %then0, label %else1
then0:
  %45 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %46 = alloca %Token
  store %Token %45, %Token* %46
  %47 = load %Token, %Token* %46
  %48 = call %nyx_string* @get_token_value(%Token %47)
  store %nyx_string* %48, %nyx_string** %41
  br label %merge2
else1:
  br label %merge2
merge2:
  %49 = call { i64, i8* }* @parse__parse_fn_body_block(%SharedEnv_parse* %env.param)
  %50 = alloca { i64, i8* }*
  store { i64, i8* }* %49, { i64, i8* }** %50
  %51 = getelementptr [11 x i8], [11 x i8]* @.str646, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str646.c, i8* %51, i64 10)
  %53 = call { i64, i8* }* @nyx_array_new_ptr()
  %54 = load %nyx_string*, %nyx_string** %38
  %55 = ptrtoint %nyx_string* %54 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %53, i64 %55, i64 2)
  %56 = load %nyx_string*, %nyx_string** %41
  %57 = ptrtoint %nyx_string* %56 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %53, i64 %57, i64 2)
  %58 = load { i64, i8* }*, { i64, i8* }** %50
  %59 = ptrtoint { i64, i8* }* %58 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %53, i64 %59, i64 5)
  %60 = call { i64, i8* }* @make_astnode(%nyx_string* %52, { i64, i8* }* %53)
  ret { i64, i8* }* %60
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = getelementptr [5 x i8], [5 x i8]* @.str647, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str647.c, i8* %31, i64 4)
  %33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %32)
  %34 = getelementptr [7 x i8], [7 x i8]* @.str648, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str648.c, i8* %34, i64 6)
  %36 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %35)
  %37 = alloca %Token
  store %Token %36, %Token* %37
  %38 = load %Token, %Token* %37
  %39 = call %nyx_string* @get_token_value(%Token %38)
  %40 = alloca %nyx_string*
  store %nyx_string* %39, %nyx_string** %40
  %41 = call { i64, i8* }* @parse__parse_fn_body_block(%SharedEnv_parse* %env.param)
  %42 = alloca { i64, i8* }*
  store { i64, i8* }* %41, { i64, i8* }** %42
  %43 = getelementptr [10 x i8], [10 x i8]* @.str649, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str649.c, i8* %43, i64 9)
  %45 = call { i64, i8* }* @nyx_array_new_ptr()
  %46 = load %nyx_string*, %nyx_string** %40
  %47 = ptrtoint %nyx_string* %46 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %45, i64 %47, i64 2)
  %48 = load { i64, i8* }*, { i64, i8* }** %42
  %49 = ptrtoint { i64, i8* }* %48 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %45, i64 %49, i64 5)
  %50 = call { i64, i8* }* @make_astnode(%nyx_string* %44, { i64, i8* }* %45)
  ret { i64, i8* }* %50
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = getelementptr [7 x i8], [7 x i8]* @.str650, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str650.c, i8* %31, i64 6)
  %33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %32)
  %34 = getelementptr [4 x i8], [4 x i8]* @.str651, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str651.c, i8* %34, i64 3)
  %36 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %35)
  %37 = getelementptr [11 x i8], [11 x i8]* @.str652, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str652.c, i8* %37, i64 10)
  %39 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %38)
  %40 = alloca %Token
  store %Token %39, %Token* %40
  %41 = load %Token, %Token* %40
  %42 = call %nyx_string* @get_token_value(%Token %41)
  %43 = alloca %nyx_string*
  store %nyx_string* %42, %nyx_string** %43
  %44 = getelementptr [4 x i8], [4 x i8]* @.str653, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str653.c, i8* %44, i64 3)
  %46 = alloca %nyx_string*
  store %nyx_string* %45, %nyx_string** %46
  %47 = getelementptr [6 x i8], [6 x i8]* @.str654, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str654.c, i8* %47, i64 5)
  %49 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %48)
  br i1 %49, label %then0, label %else1
then0:
  %50 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %51 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %51, %nyx_string** %46
  br label %merge2
else1:
  br label %merge2
merge2:
  %52 = getelementptr [7 x i8], [7 x i8]* @.str655, i32 0, i32 0
  %53 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str655.c, i8* %52, i64 6)
  %54 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %53)
  %55 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %56 = alloca { i64, i8* }*
  store { i64, i8* }* %55, { i64, i8* }** %56
  %57 = getelementptr [11 x i8], [11 x i8]* @.str656, i32 0, i32 0
  %58 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str656.c, i8* %57, i64 10)
  %59 = call { i64, i8* }* @nyx_array_new_ptr()
  %60 = load %nyx_string*, %nyx_string** %43
  %61 = ptrtoint %nyx_string* %60 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %59, i64 %61, i64 2)
  %62 = load %nyx_string*, %nyx_string** %46
  %63 = ptrtoint %nyx_string* %62 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %59, i64 %63, i64 2)
  %64 = load { i64, i8* }*, { i64, i8* }** %56
  %65 = ptrtoint { i64, i8* }* %64 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %59, i64 %65, i64 5)
  %66 = call { i64, i8* }* @make_astnode(%nyx_string* %58, { i64, i8* }* %59)
  ret { i64, i8* }* %66
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = getelementptr [7 x i8], [7 x i8]* @.str657, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str657.c, i8* %31, i64 6)
  %33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %32)
  %34 = getelementptr [7 x i8], [7 x i8]* @.str658, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str658.c, i8* %34, i64 6)
  %36 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %35)
  %37 = alloca %Token
  store %Token %36, %Token* %37
  %38 = load %Token, %Token* %37
  %39 = call %nyx_string* @get_token_value(%Token %38)
  %40 = alloca %nyx_string*
  store %nyx_string* %39, %nyx_string** %40
  %41 = getelementptr [3 x i8], [3 x i8]* @.str659, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str659.c, i8* %41, i64 2)
  %43 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %42)
  %44 = getelementptr [11 x i8], [11 x i8]* @.str660, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str660.c, i8* %44, i64 10)
  %46 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %45)
  %47 = alloca %Token
  store %Token %46, %Token* %47
  %48 = load %Token, %Token* %47
  %49 = call %nyx_string* @get_token_value(%Token %48)
  %50 = alloca %nyx_string*
  store %nyx_string* %49, %nyx_string** %50
  %51 = getelementptr [11 x i8], [11 x i8]* @.str661, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str661.c, i8* %51, i64 10)
  %53 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %52)
  %54 = call { i64, i8* }* @nyx_array_new_ptr()
  %55 = alloca { i64, i8* }*
  store { i64, i8* }* %54, { i64, i8* }** %55
  %56 = alloca i1
  store i1 0, i1* %56
  %57 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %58 = load i1, i1* %56
  %59 = xor i1 %58, true
  br i1 %59, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %57)
  %60 = getelementptr [12 x i8], [12 x i8]* @.str662, i32 0, i32 0
  %61 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str662.c, i8* %60, i64 11)
  %62 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %61)
  br i1 %62, label %then3, label %else4
then3:
  %63 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %56
  br label %merge5
else4:
  %64 = load { i64, i8* }*, { i64, i8* }** %55
  %65 = call i64 @nyx_array_length({ i64, i8* }* %64)
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %then6, label %else7
then6:
  %67 = getelementptr [6 x i8], [6 x i8]* @.str663, i32 0, i32 0
  %68 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str663.c, i8* %67, i64 5)
  %69 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %68)
  br label %merge8
else7:
  br label %merge8
merge8:
  %70 = getelementptr [11 x i8], [11 x i8]* @.str664, i32 0, i32 0
  %71 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str664.c, i8* %70, i64 10)
  %72 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %71)
  %73 = alloca %Token
  store %Token %72, %Token* %73
  %74 = load %Token, %Token* %73
  %75 = call %nyx_string* @get_token_value(%Token %74)
  %76 = alloca %nyx_string*
  store %nyx_string* %75, %nyx_string** %76
  %77 = getelementptr [6 x i8], [6 x i8]* @.str665, i32 0, i32 0
  %78 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str665.c, i8* %77, i64 5)
  %79 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %78)
  %80 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %81 = alloca %nyx_string*
  store %nyx_string* %80, %nyx_string** %81
  %82 = load { i64, i8* }*, { i64, i8* }** %55
  %83 = call { i64, i8* }* @nyx_array_new_ptr()
  %84 = load %nyx_string*, %nyx_string** %76
  %85 = ptrtoint %nyx_string* %84 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %83, i64 %85, i64 2)
  %86 = load %nyx_string*, %nyx_string** %81
  %87 = ptrtoint %nyx_string* %86 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %83, i64 %87, i64 2)
  %88 = ptrtoint { i64, i8* }* %83 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %82, i64 %88, i64 5)
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %89 = getelementptr [5 x i8], [5 x i8]* @.str666, i32 0, i32 0
  %90 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str666.c, i8* %89, i64 4)
  %91 = alloca %nyx_string*
  store %nyx_string* %90, %nyx_string** %91
  %92 = getelementptr [6 x i8], [6 x i8]* @.str667, i32 0, i32 0
  %93 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str667.c, i8* %92, i64 5)
  %94 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %93)
  br i1 %94, label %then9, label %else10
then9:
  %95 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %96 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %96, %nyx_string** %91
  br label %merge11
else10:
  br label %merge11
merge11:
  %97 = getelementptr [10 x i8], [10 x i8]* @.str668, i32 0, i32 0
  %98 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str668.c, i8* %97, i64 9)
  %99 = call { i64, i8* }* @nyx_array_new_ptr()
  %100 = load %nyx_string*, %nyx_string** %50
  %101 = ptrtoint %nyx_string* %100 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %99, i64 %101, i64 2)
  %102 = load { i64, i8* }*, { i64, i8* }** %55
  %103 = ptrtoint { i64, i8* }* %102 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %99, i64 %103, i64 5)
  %104 = load %nyx_string*, %nyx_string** %91
  %105 = ptrtoint %nyx_string* %104 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %99, i64 %105, i64 2)
  %106 = load %nyx_string*, %nyx_string** %40
  %107 = ptrtoint %nyx_string* %106 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %99, i64 %107, i64 2)
  %108 = call { i64, i8* }* @make_astnode(%nyx_string* %98, { i64, i8* }* %99)
  ret { i64, i8* }* %108
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %32 = getelementptr [11 x i8], [11 x i8]* @.str669, i32 0, i32 0
  %33 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str669.c, i8* %32, i64 10)
  %34 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %33)
  %35 = alloca %Token
  store %Token %34, %Token* %35
  %36 = load %Token, %Token* %35
  %37 = call %nyx_string* @get_token_value(%Token %36)
  %38 = alloca %nyx_string*
  store %nyx_string* %37, %nyx_string** %38
  %39 = getelementptr [11 x i8], [11 x i8]* @.str670, i32 0, i32 0
  %40 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str670.c, i8* %39, i64 10)
  %41 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %40)
  %42 = getelementptr [11 x i8], [11 x i8]* @.str671, i32 0, i32 0
  %43 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str671.c, i8* %42, i64 10)
  %44 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %43)
  %45 = call { i64, i8* }* @nyx_array_new_ptr()
  %46 = alloca { i64, i8* }*
  store { i64, i8* }* %45, { i64, i8* }** %46
  %47 = alloca i1
  store i1 0, i1* %47
  %48 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %49 = load i1, i1* %47
  %50 = xor i1 %49, true
  br i1 %50, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %48)
  %51 = getelementptr [12 x i8], [12 x i8]* @.str672, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str672.c, i8* %51, i64 11)
  %53 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %52)
  br i1 %53, label %then3, label %else4
then3:
  %54 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %47
  br label %merge5
else4:
  %55 = load { i64, i8* }*, { i64, i8* }** %46
  %56 = call i64 @nyx_array_length({ i64, i8* }* %55)
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %then6, label %else7
then6:
  %58 = getelementptr [6 x i8], [6 x i8]* @.str673, i32 0, i32 0
  %59 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str673.c, i8* %58, i64 5)
  %60 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %59)
  br label %merge8
else7:
  br label %merge8
merge8:
  %61 = getelementptr [11 x i8], [11 x i8]* @.str674, i32 0, i32 0
  %62 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str674.c, i8* %61, i64 10)
  %63 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %62)
  %64 = alloca %Token
  store %Token %63, %Token* %64
  %65 = load { i64, i8* }*, { i64, i8* }** %46
  %66 = load %Token, %Token* %64
  %67 = call %nyx_string* @get_token_value(%Token %66)
  %68 = ptrtoint %nyx_string* %67 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %65, i64 %68, i64 2)
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %69 = getelementptr [12 x i8], [12 x i8]* @.str675, i32 0, i32 0
  %70 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str675.c, i8* %69, i64 11)
  %71 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %70)
  %72 = load i64, i64* %4
  %73 = alloca i64
  store i64 %72, i64* %73
  %74 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %75 = getelementptr [12 x i8], [12 x i8]* @.str676, i32 0, i32 0
  %76 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str676.c, i8* %75, i64 11)
  %77 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %76)
  %78 = getelementptr [1 x i8], [1 x i8]* @.str677, i32 0, i32 0
  %79 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str677.c, i8* %78, i64 0)
  %80 = alloca %nyx_string*
  store %nyx_string* %79, %nyx_string** %80
  %81 = alloca i64
  store i64 0, i64* %81
  %82 = call i8* @llvm.stacksave()
  br label %while_cond9
while_cond9:
  %83 = load i64, i64* %81
  %84 = load { i64, i8* }*, { i64, i8* }** %46
  %85 = call i64 @nyx_array_length({ i64, i8* }* %84)
  %86 = icmp slt i64 %83, %85
  br i1 %86, label %while_body10, label %while_end11
while_body10:
  call void @llvm.stackrestore(i8* %82)
  %87 = load i64, i64* %81
  %88 = icmp sgt i64 %87, 0
  br i1 %88, label %then12, label %else13
then12:
  %89 = load %nyx_string*, %nyx_string** %80
  %90 = getelementptr [2 x i8], [2 x i8]* @.str678, i32 0, i32 0
  %91 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str678.c, i8* %90, i64 1)
  %92 = call %nyx_string* @nyx_string_concat(%nyx_string* %89, %nyx_string* %91)
  store %nyx_string* %92, %nyx_string** %80
  br label %merge14
else13:
  br label %merge14
merge14:
  %93 = load { i64, i8* }*, { i64, i8* }** %46
  %94 = load i64, i64* %81
  %95 = call i64 @nyx_array_get_checked({ i64, i8* }* %93, i64 %94, i64 2)
  %96 = inttoptr i64 %95 to %nyx_string*
  %97 = alloca %nyx_string*
  store %nyx_string* %96, %nyx_string** %97
  %98 = load %nyx_string*, %nyx_string** %80
  %99 = load %nyx_string*, %nyx_string** %97
  %100 = call %nyx_string* @nyx_string_concat(%nyx_string* %98, %nyx_string* %99)
  store %nyx_string* %100, %nyx_string** %80
  %101 = load i64, i64* %81
  %102 = add i64 %101, 1
  store i64 %102, i64* %81
  br label %while_cond9
while_end11:
  %103 = load { i64, i8* }*, { i64, i8* }** %14
  %104 = load %nyx_string*, %nyx_string** %38
  %105 = ptrtoint %nyx_string* %104 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %103, i64 %105, i64 2)
  %106 = load { i64, i8* }*, { i64, i8* }** %15
  %107 = load i64, i64* %73
  call void @nyx_array_push({ i64, i8* }* %106, i64 %107)
  %108 = load { i64, i8* }*, { i64, i8* }** %16
  %109 = load %nyx_string*, %nyx_string** %80
  %110 = ptrtoint %nyx_string* %109 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %108, i64 %110, i64 2)
  %111 = getelementptr [10 x i8], [10 x i8]* @.str679, i32 0, i32 0
  %112 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str679.c, i8* %111, i64 9)
  %113 = call { i64, i8* }* @nyx_array_new_ptr()
  %114 = load %nyx_string*, %nyx_string** %38
  %115 = ptrtoint %nyx_string* %114 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %113, i64 %115, i64 2)
  %116 = call { i64, i8* }* @make_astnode(%nyx_string* %112, { i64, i8* }* %113)
  ret { i64, i8* }* %116
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = alloca %nyx_string*
  store %nyx_string* %mac_name.param, %nyx_string** %31
  %32 = getelementptr [4 x i8], [4 x i8]* @.str680, i32 0, i32 0
  %33 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str680.c, i8* %32, i64 3)
  %34 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %33)
  %35 = getelementptr [11 x i8], [11 x i8]* @.str681, i32 0, i32 0
  %36 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str681.c, i8* %35, i64 10)
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
  %44 = getelementptr [12 x i8], [12 x i8]* @.str682, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str682.c, i8* %44, i64 11)
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
  %51 = getelementptr [6 x i8], [6 x i8]* @.str683, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str683.c, i8* %51, i64 5)
  %53 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %52)
  br label %merge8
else7:
  br label %merge8
merge8:
  %54 = load { i64, i8* }*, { i64, i8* }** %39
  %55 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %56 = ptrtoint { i64, i8* }* %55 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %54, i64 %56, i64 5)
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %57 = alloca i64
  store i64 0, i64* %57
  %58 = alloca i64
  store i64 0, i64* %58
  %59 = call i8* @llvm.stacksave()
  br label %while_cond9
while_cond9:
  %60 = load i64, i64* %58
  %61 = load { i64, i8* }*, { i64, i8* }** %14
  %62 = call i64 @nyx_array_length({ i64, i8* }* %61)
  %63 = icmp slt i64 %60, %62
  br i1 %63, label %while_body10, label %while_end11
while_body10:
  call void @llvm.stackrestore(i8* %59)
  %64 = load { i64, i8* }*, { i64, i8* }** %14
  %65 = load i64, i64* %58
  %66 = call i64 @nyx_array_get_checked({ i64, i8* }* %64, i64 %65, i64 2)
  %67 = inttoptr i64 %66 to %nyx_string*
  %68 = alloca %nyx_string*
  store %nyx_string* %67, %nyx_string** %68
  %69 = load %nyx_string*, %nyx_string** %68
  %70 = load %nyx_string*, %nyx_string** %31
  %71 = call i1 @nyx_string_equals(%nyx_string* %69, %nyx_string* %70)
  br i1 %71, label %then12, label %else13
then12:
  %72 = load i64, i64* %58
  store i64 %72, i64* %57
  br label %merge14
else13:
  br label %merge14
merge14:
  %73 = load i64, i64* %58
  %74 = add i64 %73, 1
  store i64 %74, i64* %58
  br label %while_cond9
while_end11:
  %75 = load { i64, i8* }*, { i64, i8* }** %16
  %76 = load i64, i64* %57
  %77 = call i64 @nyx_array_get_checked({ i64, i8* }* %75, i64 %76, i64 2)
  %78 = inttoptr i64 %77 to %nyx_string*
  %79 = alloca %nyx_string*
  store %nyx_string* %78, %nyx_string** %79
  %80 = load { i64, i8* }*, { i64, i8* }** %15
  %81 = load i64, i64* %57
  %82 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %80, i64 %81)
  %83 = alloca i64
  store i64 %82, i64* %83
  %84 = call { i64, i8* }* @nyx_array_new_ptr()
  %85 = alloca { i64, i8* }*
  store { i64, i8* }* %84, { i64, i8* }** %85
  %86 = load %nyx_string*, %nyx_string** %79
  %87 = getelementptr [1 x i8], [1 x i8]* @.str684, i32 0, i32 0
  %88 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str684.c, i8* %87, i64 0)
  %89 = call i1 @nyx_string_equals(%nyx_string* %86, %nyx_string* %88)
  %90 = xor i1 %89, true
  br i1 %90, label %then15, label %else16
then15:
  %91 = load %nyx_string*, %nyx_string** %79
  %92 = getelementptr [2 x i8], [2 x i8]* @.str685, i32 0, i32 0
  %93 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str685.c, i8* %92, i64 1)
  %94 = call { i64, i8* }* @nyx_string_split(%nyx_string* %91, %nyx_string* %93)
  store { i64, i8* }* %94, { i64, i8* }** %85
  br label %merge17
else16:
  br label %merge17
merge17:
  %95 = load i64, i64* %4
  %96 = alloca i64
  store i64 %95, i64* %96
  %97 = load { i64, i8* }*, { i64, i8* }** %85
  store { i64, i8* }* %97, { i64, i8* }** %17
  %98 = load { i64, i8* }*, { i64, i8* }** %39
  store { i64, i8* }* %98, { i64, i8* }** %18
  %99 = load i64, i64* %83
  store i64 %99, i64* %4
  %100 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %101 = alloca { i64, i8* }*
  store { i64, i8* }* %100, { i64, i8* }** %101
  %102 = load i64, i64* %96
  store i64 %102, i64* %4
  %103 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %103, { i64, i8* }** %17
  %104 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %104, { i64, i8* }** %18
  %105 = load { i64, i8* }*, { i64, i8* }** %101
  ret { i64, i8* }* %105
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %32 = getelementptr [11 x i8], [11 x i8]* @.str686, i32 0, i32 0
  %33 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str686.c, i8* %32, i64 10)
  %34 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %33)
  %35 = alloca %Token
  store %Token %34, %Token* %35
  %36 = load %Token, %Token* %35
  %37 = call %nyx_string* @get_token_value(%Token %36)
  %38 = alloca %nyx_string*
  store %nyx_string* %37, %nyx_string** %38
  %39 = getelementptr [7 x i8], [7 x i8]* @.str687, i32 0, i32 0
  %40 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str687.c, i8* %39, i64 6)
  %41 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %40)
  %42 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %43 = alloca %nyx_string*
  store %nyx_string* %42, %nyx_string** %43
  %44 = getelementptr [5 x i8], [5 x i8]* @.str688, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str688.c, i8* %44, i64 4)
  %46 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %45)
  br i1 %46, label %then0, label %else1
then0:
  %47 = call { i64, i8* }* @nyx_array_new_ptr()
  %48 = load %nyx_string*, %nyx_string** %43
  %49 = ptrtoint %nyx_string* %48 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %47, i64 %49, i64 2)
  %50 = alloca { i64, i8* }*
  store { i64, i8* }* %47, { i64, i8* }** %50
  %51 = call i8* @llvm.stacksave()
  br label %while_cond3
while_cond3:
  %52 = getelementptr [5 x i8], [5 x i8]* @.str689, i32 0, i32 0
  %53 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str689.c, i8* %52, i64 4)
  %54 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %53)
  br i1 %54, label %while_body4, label %while_end5
while_body4:
  call void @llvm.stackrestore(i8* %51)
  %55 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %56 = load { i64, i8* }*, { i64, i8* }** %50
  %57 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %58 = ptrtoint %nyx_string* %57 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %56, i64 %58, i64 2)
  br label %while_cond3
while_end5:
  %59 = call { i64, i8* }* @nyx_array_new_ptr()
  %60 = alloca { i64, i8* }*
  store { i64, i8* }* %59, { i64, i8* }** %60
  %61 = alloca i64
  store i64 0, i64* %61
  %62 = call i8* @llvm.stacksave()
  br label %while_cond6
while_cond6:
  %63 = load i64, i64* %61
  %64 = load { i64, i8* }*, { i64, i8* }** %50
  %65 = call i64 @nyx_array_length({ i64, i8* }* %64)
  %66 = icmp slt i64 %63, %65
  br i1 %66, label %while_body7, label %while_end8
while_body7:
  call void @llvm.stackrestore(i8* %62)
  %67 = load { i64, i8* }*, { i64, i8* }** %50
  %68 = load i64, i64* %61
  %69 = call i64 @nyx_array_get_checked({ i64, i8* }* %67, i64 %68, i64 2)
  %70 = inttoptr i64 %69 to %nyx_string*
  %71 = alloca %nyx_string*
  store %nyx_string* %70, %nyx_string** %71
  %72 = call { i64, i8* }* @nyx_array_new_ptr()
  %73 = load %nyx_string*, %nyx_string** %71
  %74 = ptrtoint %nyx_string* %73 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %72, i64 %74, i64 2)
  %75 = alloca { i64, i8* }*
  store { i64, i8* }* %72, { i64, i8* }** %75
  %76 = load { i64, i8* }*, { i64, i8* }** %60
  %77 = call { i64, i8* }* @nyx_array_new_ptr()
  %78 = load %nyx_string*, %nyx_string** %71
  %79 = ptrtoint %nyx_string* %78 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %77, i64 %79, i64 2)
  %80 = load { i64, i8* }*, { i64, i8* }** %75
  %81 = ptrtoint { i64, i8* }* %80 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %77, i64 %81, i64 5)
  %82 = ptrtoint { i64, i8* }* %77 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %76, i64 %82, i64 5)
  %83 = load i64, i64* %61
  %84 = add i64 %83, 1
  store i64 %84, i64* %61
  br label %while_cond6
while_end8:
  %85 = getelementptr [9 x i8], [9 x i8]* @.str690, i32 0, i32 0
  %86 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str690.c, i8* %85, i64 8)
  %87 = call { i64, i8* }* @nyx_array_new_ptr()
  %88 = load %nyx_string*, %nyx_string** %38
  %89 = ptrtoint %nyx_string* %88 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %87, i64 %89, i64 2)
  %90 = load { i64, i8* }*, { i64, i8* }** %60
  %91 = ptrtoint { i64, i8* }* %90 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %87, i64 %91, i64 5)
  %92 = call { i64, i8* }* @nyx_array_new_ptr()
  %93 = ptrtoint { i64, i8* }* %92 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %87, i64 %93, i64 5)
  %94 = call { i64, i8* }* @make_astnode(%nyx_string* %86, { i64, i8* }* %87)
  ret { i64, i8* }* %94
else1:
  br label %merge2
merge2:
  %95 = getelementptr [11 x i8], [11 x i8]* @.str691, i32 0, i32 0
  %96 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str691.c, i8* %95, i64 10)
  %97 = call { i64, i8* }* @nyx_array_new_ptr()
  %98 = load %nyx_string*, %nyx_string** %38
  %99 = ptrtoint %nyx_string* %98 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %97, i64 %99, i64 2)
  %100 = load %nyx_string*, %nyx_string** %43
  %101 = ptrtoint %nyx_string* %100 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %97, i64 %101, i64 2)
  %102 = call { i64, i8* }* @make_astnode(%nyx_string* %96, { i64, i8* }* %97)
  ret { i64, i8* }* %102
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = getelementptr [11 x i8], [11 x i8]* @.str692, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str692.c, i8* %31, i64 10)
  %33 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %32)
  br i1 %33, label %then0, label %else1
then0:
  %34 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %35 = getelementptr [2 x i8], [2 x i8]* @.str693, i32 0, i32 0
  %36 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str693.c, i8* %35, i64 1)
  %37 = alloca %nyx_string*
  store %nyx_string* %36, %nyx_string** %37
  %38 = load %nyx_string*, %nyx_string** %37
  %39 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %40 = call %nyx_string* @nyx_string_concat(%nyx_string* %38, %nyx_string* %39)
  store %nyx_string* %40, %nyx_string** %37
  %41 = call i8* @llvm.stacksave()
  br label %while_cond3
while_cond3:
  %42 = getelementptr [6 x i8], [6 x i8]* @.str694, i32 0, i32 0
  %43 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str694.c, i8* %42, i64 5)
  %44 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %43)
  br i1 %44, label %while_body4, label %while_end5
while_body4:
  call void @llvm.stackrestore(i8* %41)
  %45 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %46 = load %nyx_string*, %nyx_string** %37
  %47 = getelementptr [2 x i8], [2 x i8]* @.str695, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str695.c, i8* %47, i64 1)
  %49 = call %nyx_string* @nyx_string_concat(%nyx_string* %46, %nyx_string* %48)
  %50 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %51 = call %nyx_string* @nyx_string_concat(%nyx_string* %49, %nyx_string* %50)
  store %nyx_string* %51, %nyx_string** %37
  br label %while_cond3
while_end5:
  %52 = getelementptr [12 x i8], [12 x i8]* @.str696, i32 0, i32 0
  %53 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str696.c, i8* %52, i64 11)
  %54 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %53)
  %55 = load %nyx_string*, %nyx_string** %37
  %56 = getelementptr [2 x i8], [2 x i8]* @.str697, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str697.c, i8* %56, i64 1)
  %58 = call %nyx_string* @nyx_string_concat(%nyx_string* %55, %nyx_string* %57)
  store %nyx_string* %58, %nyx_string** %37
  %59 = load %nyx_string*, %nyx_string** %37
  ret %nyx_string* %59
else1:
  br label %merge2
merge2:
  %60 = getelementptr [3 x i8], [3 x i8]* @.str698, i32 0, i32 0
  %61 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str698.c, i8* %60, i64 2)
  %62 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %61)
  br i1 %62, label %then6, label %else7
then6:
  %63 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %64 = getelementptr [3 x i8], [3 x i8]* @.str699, i32 0, i32 0
  %65 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str699.c, i8* %64, i64 2)
  ret %nyx_string* %65
else7:
  br label %merge8
merge8:
  %66 = getelementptr [5 x i8], [5 x i8]* @.str700, i32 0, i32 0
  %67 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str700.c, i8* %66, i64 4)
  %68 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %67)
  br i1 %68, label %then9, label %else10
then9:
  %69 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %70 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %71 = alloca %nyx_string*
  store %nyx_string* %70, %nyx_string** %71
  %72 = getelementptr [2 x i8], [2 x i8]* @.str701, i32 0, i32 0
  %73 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str701.c, i8* %72, i64 1)
  %74 = load %nyx_string*, %nyx_string** %71
  %75 = call %nyx_string* @nyx_string_concat(%nyx_string* %73, %nyx_string* %74)
  ret %nyx_string* %75
else10:
  br label %merge11
merge11:
  %76 = getelementptr [4 x i8], [4 x i8]* @.str702, i32 0, i32 0
  %77 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str702.c, i8* %76, i64 3)
  %78 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %77)
  br i1 %78, label %then12, label %else13
then12:
  %79 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %80 = getelementptr [9 x i8], [9 x i8]* @.str703, i32 0, i32 0
  %81 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str703.c, i8* %80, i64 8)
  %82 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %81)
  br i1 %82, label %then15, label %else16
then15:
  %83 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %84 = alloca %Token
  store %Token %83, %Token* %84
  %85 = load %Token, %Token* %84
  %86 = call %nyx_string* @get_token_value(%Token %85)
  %87 = alloca %nyx_string*
  store %nyx_string* %86, %nyx_string** %87
  %88 = load %nyx_string*, %nyx_string** %87
  %89 = call i64 @nyx_string_byte_length(%nyx_string* %88)
  %90 = icmp sgt i64 %89, 0
  br i1 %90, label %then18, label %else19
then18:
  %91 = load %nyx_string*, %nyx_string** %87
  %92 = call i8 @nyx_string_char_at(%nyx_string* %91, i64 0)
  %93 = zext i8 %92 to i64
  %94 = getelementptr [1 x i8], [1 x i8]* @.str704, i32 0, i32 0
  %95 = load i8, i8* %94
  %96 = zext i8 %95 to i64
  %97 = icmp eq i64 %93, %96
  br i1 %97, label %then21, label %else22
then21:
  %98 = load %nyx_string*, %nyx_string** %87
  %99 = load %nyx_string*, %nyx_string** %87
  %100 = call i64 @nyx_string_byte_length(%nyx_string* %99)
  %101 = call %nyx_string* @nyx_string_substring(%nyx_string* %98, i64 1, i64 %100)
  store %nyx_string* %101, %nyx_string** %87
  br label %merge23
else22:
  br label %merge23
merge23:
  br label %merge20
else19:
  br label %merge20
merge20:
  %102 = load { i64, i8* }*, { i64, i8* }** %19
  %103 = load %nyx_string*, %nyx_string** %87
  %104 = ptrtoint %nyx_string* %103 to i64
  call void @nyx_array_set_tagged({ i64, i8* }* %102, i64 0, i64 %104, i64 2)
  br label %merge17
else16:
  br label %merge17
merge17:
  %105 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %106 = alloca %Token
  store %Token %105, %Token* %106
  %107 = load %Token, %Token* %106
  %108 = call %nyx_string* @get_token_value(%Token %107)
  %109 = alloca %nyx_string*
  store %nyx_string* %108, %nyx_string** %109
  %110 = alloca i1
  store i1 0, i1* %110
  %111 = load %nyx_string*, %nyx_string** %109
  %112 = getelementptr [4 x i8], [4 x i8]* @.str705, i32 0, i32 0
  %113 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str705.c, i8* %112, i64 3)
  %114 = call i1 @nyx_string_equals(%nyx_string* %111, %nyx_string* %113)
  br i1 %114, label %then24, label %else25
then24:
  %115 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %110
  br label %merge26
else25:
  br label %merge26
merge26:
  %116 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %117 = alloca %nyx_string*
  store %nyx_string* %116, %nyx_string** %117
  %118 = load i1, i1* %110
  br i1 %118, label %then27, label %else28
then27:
  %119 = getelementptr [6 x i8], [6 x i8]* @.str706, i32 0, i32 0
  %120 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str706.c, i8* %119, i64 5)
  %121 = load %nyx_string*, %nyx_string** %117
  %122 = call %nyx_string* @nyx_string_concat(%nyx_string* %120, %nyx_string* %121)
  ret %nyx_string* %122
else28:
  br label %merge29
merge29:
  %123 = getelementptr [2 x i8], [2 x i8]* @.str707, i32 0, i32 0
  %124 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str707.c, i8* %123, i64 1)
  %125 = load %nyx_string*, %nyx_string** %117
  %126 = call %nyx_string* @nyx_string_concat(%nyx_string* %124, %nyx_string* %125)
  ret %nyx_string* %126
else13:
  br label %merge14
merge14:
  %127 = getelementptr [9 x i8], [9 x i8]* @.str708, i32 0, i32 0
  %128 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str708.c, i8* %127, i64 8)
  %129 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %128)
  br i1 %129, label %then30, label %else31
then30:
  %130 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %131 = alloca %Token
  store %Token %130, %Token* %131
  %132 = load %Token, %Token* %131
  %133 = call %nyx_string* @get_token_value(%Token %132)
  ret %nyx_string* %133
else31:
  br label %merge32
merge32:
  %134 = getelementptr [13 x i8], [13 x i8]* @.str709, i32 0, i32 0
  %135 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str709.c, i8* %134, i64 12)
  %136 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %135)
  br i1 %136, label %then33, label %else34
then33:
  %137 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %138 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %139 = alloca %nyx_string*
  store %nyx_string* %138, %nyx_string** %139
  %140 = getelementptr [6 x i8], [6 x i8]* @.str710, i32 0, i32 0
  %141 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str710.c, i8* %140, i64 5)
  %142 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %141)
  %143 = getelementptr [7 x i8], [7 x i8]* @.str711, i32 0, i32 0
  %144 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str711.c, i8* %143, i64 6)
  %145 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %144)
  %146 = alloca %Token
  store %Token %145, %Token* %146
  %147 = load %Token, %Token* %146
  %148 = call %nyx_string* @get_token_value(%Token %147)
  %149 = alloca %nyx_string*
  store %nyx_string* %148, %nyx_string** %149
  %150 = getelementptr [14 x i8], [14 x i8]* @.str712, i32 0, i32 0
  %151 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str712.c, i8* %150, i64 13)
  %152 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %151)
  %153 = getelementptr [2 x i8], [2 x i8]* @.str713, i32 0, i32 0
  %154 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str713.c, i8* %153, i64 1)
  %155 = load %nyx_string*, %nyx_string** %139
  %156 = call %nyx_string* @nyx_string_concat(%nyx_string* %154, %nyx_string* %155)
  %157 = getelementptr [2 x i8], [2 x i8]* @.str714, i32 0, i32 0
  %158 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str714.c, i8* %157, i64 1)
  %159 = call %nyx_string* @nyx_string_concat(%nyx_string* %156, %nyx_string* %158)
  %160 = load %nyx_string*, %nyx_string** %149
  %161 = call %nyx_string* @nyx_string_concat(%nyx_string* %159, %nyx_string* %160)
  %162 = getelementptr [2 x i8], [2 x i8]* @.str715, i32 0, i32 0
  %163 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str715.c, i8* %162, i64 1)
  %164 = call %nyx_string* @nyx_string_concat(%nyx_string* %161, %nyx_string* %163)
  ret %nyx_string* %164
else34:
  br label %merge35
merge35:
  %165 = getelementptr [4 x i8], [4 x i8]* @.str716, i32 0, i32 0
  %166 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str716.c, i8* %165, i64 3)
  %167 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %166)
  br i1 %167, label %then36, label %else37
then36:
  %168 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %169 = getelementptr [11 x i8], [11 x i8]* @.str717, i32 0, i32 0
  %170 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str717.c, i8* %169, i64 10)
  %171 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %170)
  %172 = alloca %Token
  store %Token %171, %Token* %172
  %173 = load %Token, %Token* %172
  %174 = call %nyx_string* @get_token_value(%Token %173)
  %175 = alloca %nyx_string*
  store %nyx_string* %174, %nyx_string** %175
  %176 = getelementptr [5 x i8], [5 x i8]* @.str718, i32 0, i32 0
  %177 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str718.c, i8* %176, i64 4)
  %178 = load %nyx_string*, %nyx_string** %175
  %179 = call %nyx_string* @nyx_string_concat(%nyx_string* %177, %nyx_string* %178)
  ret %nyx_string* %179
else37:
  br label %merge38
merge38:
  %180 = getelementptr [5 x i8], [5 x i8]* @.str719, i32 0, i32 0
  %181 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str719.c, i8* %180, i64 4)
  %182 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %181)
  br i1 %182, label %then39, label %else40
then39:
  %183 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %184 = getelementptr [11 x i8], [11 x i8]* @.str720, i32 0, i32 0
  %185 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str720.c, i8* %184, i64 10)
  %186 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %185)
  %187 = alloca %Token
  store %Token %186, %Token* %187
  %188 = load %Token, %Token* %187
  %189 = call %nyx_string* @get_token_value(%Token %188)
  %190 = alloca %nyx_string*
  store %nyx_string* %189, %nyx_string** %190
  %191 = call i8* @llvm.stacksave()
  br label %while_cond42
while_cond42:
  %192 = getelementptr [5 x i8], [5 x i8]* @.str721, i32 0, i32 0
  %193 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str721.c, i8* %192, i64 4)
  %194 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %193)
  br i1 %194, label %while_body43, label %while_end44
while_body43:
  call void @llvm.stackrestore(i8* %191)
  %195 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %196 = getelementptr [11 x i8], [11 x i8]* @.str722, i32 0, i32 0
  %197 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str722.c, i8* %196, i64 10)
  %198 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %197)
  %199 = alloca %Token
  store %Token %198, %Token* %199
  %200 = load %nyx_string*, %nyx_string** %190
  %201 = getelementptr [2 x i8], [2 x i8]* @.str723, i32 0, i32 0
  %202 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str723.c, i8* %201, i64 1)
  %203 = call %nyx_string* @nyx_string_concat(%nyx_string* %200, %nyx_string* %202)
  %204 = load %Token, %Token* %199
  %205 = call %nyx_string* @get_token_value(%Token %204)
  %206 = call %nyx_string* @nyx_string_concat(%nyx_string* %203, %nyx_string* %205)
  store %nyx_string* %206, %nyx_string** %190
  br label %while_cond42
while_end44:
  %207 = getelementptr [5 x i8], [5 x i8]* @.str724, i32 0, i32 0
  %208 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str724.c, i8* %207, i64 4)
  %209 = load %nyx_string*, %nyx_string** %190
  %210 = call %nyx_string* @nyx_string_concat(%nyx_string* %208, %nyx_string* %209)
  ret %nyx_string* %210
else40:
  br label %merge41
merge41:
  %211 = getelementptr [11 x i8], [11 x i8]* @.str725, i32 0, i32 0
  %212 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str725.c, i8* %211, i64 10)
  %213 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %212)
  %214 = alloca %Token
  store %Token %213, %Token* %214
  %215 = load %Token, %Token* %214
  %216 = call %nyx_string* @get_token_value(%Token %215)
  %217 = alloca %nyx_string*
  store %nyx_string* %216, %nyx_string** %217
  %218 = alloca i1
  store i1 false, i1* %218
  %219 = load %nyx_string*, %nyx_string** %217
  %220 = getelementptr [5 x i8], [5 x i8]* @.str726, i32 0, i32 0
  %221 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str726.c, i8* %220, i64 4)
  %222 = call i1 @nyx_string_equals(%nyx_string* %219, %nyx_string* %221)
  br i1 %222, label %sc_and_rhs45, label %sc_and_end46
sc_and_rhs45:
  %223 = getelementptr [4 x i8], [4 x i8]* @.str727, i32 0, i32 0
  %224 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str727.c, i8* %223, i64 3)
  %225 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %224)
  store i1 %225, i1* %218
  br label %sc_and_end46
sc_and_end46:
  %226 = load i1, i1* %218
  br i1 %226, label %then47, label %else48
then47:
  %227 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %228 = getelementptr [11 x i8], [11 x i8]* @.str728, i32 0, i32 0
  %229 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str728.c, i8* %228, i64 10)
  %230 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %229)
  %231 = alloca %Token
  store %Token %230, %Token* %231
  %232 = getelementptr [6 x i8], [6 x i8]* @.str729, i32 0, i32 0
  %233 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str729.c, i8* %232, i64 5)
  %234 = load %Token, %Token* %231
  %235 = call %nyx_string* @get_token_value(%Token %234)
  %236 = call %nyx_string* @nyx_string_concat(%nyx_string* %233, %nyx_string* %235)
  store %nyx_string* %236, %nyx_string** %217
  %237 = load %nyx_string*, %nyx_string** %217
  ret %nyx_string* %237
else48:
  br label %merge49
merge49:
  %238 = alloca i1
  store i1 false, i1* %238
  %239 = load %nyx_string*, %nyx_string** %217
  %240 = getelementptr [3 x i8], [3 x i8]* @.str730, i32 0, i32 0
  %241 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str730.c, i8* %240, i64 2)
  %242 = call i1 @nyx_string_equals(%nyx_string* %239, %nyx_string* %241)
  br i1 %242, label %sc_and_rhs50, label %sc_and_end51
sc_and_rhs50:
  %243 = getelementptr [11 x i8], [11 x i8]* @.str731, i32 0, i32 0
  %244 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str731.c, i8* %243, i64 10)
  %245 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %244)
  store i1 %245, i1* %238
  br label %sc_and_end51
sc_and_end51:
  %246 = load i1, i1* %238
  br i1 %246, label %then52, label %else53
then52:
  %247 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %248 = getelementptr [4 x i8], [4 x i8]* @.str732, i32 0, i32 0
  %249 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str732.c, i8* %248, i64 3)
  %250 = alloca %nyx_string*
  store %nyx_string* %249, %nyx_string** %250
  %251 = getelementptr [12 x i8], [12 x i8]* @.str733, i32 0, i32 0
  %252 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str733.c, i8* %251, i64 11)
  %253 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %252)
  %254 = xor i1 %253, true
  br i1 %254, label %then55, label %else56
then55:
  %255 = load %nyx_string*, %nyx_string** %250
  %256 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %257 = call %nyx_string* @nyx_string_concat(%nyx_string* %255, %nyx_string* %256)
  store %nyx_string* %257, %nyx_string** %250
  %258 = alloca i1
  store i1 0, i1* %258
  %259 = call i8* @llvm.stacksave()
  br label %while_cond58
while_cond58:
  %260 = load i1, i1* %258
  %261 = xor i1 %260, true
  br i1 %261, label %while_body59, label %while_end60
while_body59:
  call void @llvm.stackrestore(i8* %259)
  %262 = getelementptr [6 x i8], [6 x i8]* @.str734, i32 0, i32 0
  %263 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str734.c, i8* %262, i64 5)
  %264 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %263)
  br i1 %264, label %then61, label %else62
then61:
  %265 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %266 = load %nyx_string*, %nyx_string** %250
  %267 = getelementptr [2 x i8], [2 x i8]* @.str735, i32 0, i32 0
  %268 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str735.c, i8* %267, i64 1)
  %269 = call %nyx_string* @nyx_string_concat(%nyx_string* %266, %nyx_string* %268)
  %270 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %271 = call %nyx_string* @nyx_string_concat(%nyx_string* %269, %nyx_string* %270)
  store %nyx_string* %271, %nyx_string** %250
  br label %merge63
else62:
  store i1 1, i1* %258
  br label %merge63
merge63:
  br label %while_cond58
while_end60:
  br label %merge57
else56:
  br label %merge57
merge57:
  %272 = getelementptr [12 x i8], [12 x i8]* @.str736, i32 0, i32 0
  %273 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str736.c, i8* %272, i64 11)
  %274 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %273)
  %275 = load %nyx_string*, %nyx_string** %250
  %276 = getelementptr [2 x i8], [2 x i8]* @.str737, i32 0, i32 0
  %277 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str737.c, i8* %276, i64 1)
  %278 = call %nyx_string* @nyx_string_concat(%nyx_string* %275, %nyx_string* %277)
  store %nyx_string* %278, %nyx_string** %250
  %279 = getelementptr [6 x i8], [6 x i8]* @.str738, i32 0, i32 0
  %280 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str738.c, i8* %279, i64 5)
  %281 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %280)
  br i1 %281, label %then64, label %else65
then64:
  %282 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %283 = load %nyx_string*, %nyx_string** %250
  %284 = getelementptr [3 x i8], [3 x i8]* @.str739, i32 0, i32 0
  %285 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str739.c, i8* %284, i64 2)
  %286 = call %nyx_string* @nyx_string_concat(%nyx_string* %283, %nyx_string* %285)
  %287 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %288 = call %nyx_string* @nyx_string_concat(%nyx_string* %286, %nyx_string* %287)
  store %nyx_string* %288, %nyx_string** %250
  br label %merge66
else65:
  br label %merge66
merge66:
  %289 = load %nyx_string*, %nyx_string** %250
  ret %nyx_string* %289
else53:
  br label %merge54
merge54:
  %290 = getelementptr [5 x i8], [5 x i8]* @.str740, i32 0, i32 0
  %291 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str740.c, i8* %290, i64 4)
  %292 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %291)
  br i1 %292, label %then67, label %else68
then67:
  %293 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %294 = load %nyx_string*, %nyx_string** %217
  %295 = getelementptr [2 x i8], [2 x i8]* @.str741, i32 0, i32 0
  %296 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str741.c, i8* %295, i64 1)
  %297 = call %nyx_string* @nyx_string_concat(%nyx_string* %294, %nyx_string* %296)
  store %nyx_string* %297, %nyx_string** %217
  %298 = load %nyx_string*, %nyx_string** %217
  %299 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %300 = call %nyx_string* @nyx_string_concat(%nyx_string* %298, %nyx_string* %299)
  store %nyx_string* %300, %nyx_string** %217
  %301 = alloca i1
  store i1 0, i1* %301
  %302 = call i8* @llvm.stacksave()
  br label %while_cond70
while_cond70:
  %303 = load i1, i1* %301
  %304 = xor i1 %303, true
  br i1 %304, label %while_body71, label %while_end72
while_body71:
  call void @llvm.stackrestore(i8* %302)
  %305 = getelementptr [6 x i8], [6 x i8]* @.str742, i32 0, i32 0
  %306 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str742.c, i8* %305, i64 5)
  %307 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %306)
  br i1 %307, label %then73, label %else74
then73:
  %308 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %309 = load %nyx_string*, %nyx_string** %217
  %310 = getelementptr [2 x i8], [2 x i8]* @.str743, i32 0, i32 0
  %311 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str743.c, i8* %310, i64 1)
  %312 = call %nyx_string* @nyx_string_concat(%nyx_string* %309, %nyx_string* %311)
  store %nyx_string* %312, %nyx_string** %217
  %313 = load %nyx_string*, %nyx_string** %217
  %314 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %315 = call %nyx_string* @nyx_string_concat(%nyx_string* %313, %nyx_string* %314)
  store %nyx_string* %315, %nyx_string** %217
  br label %merge75
else74:
  store i1 1, i1* %301
  br label %merge75
merge75:
  br label %while_cond70
while_end72:
  %316 = load i64, i64* %5
  %317 = icmp sgt i64 %316, 0
  br i1 %317, label %then76, label %else77
then76:
  %318 = load i64, i64* %5
  %319 = sub i64 %318, 1
  store i64 %319, i64* %5
  br label %merge78
else77:
  %320 = getelementptr [8 x i8], [8 x i8]* @.str744, i32 0, i32 0
  %321 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str744.c, i8* %320, i64 7)
  %322 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %321)
  br i1 %322, label %then79, label %else80
then79:
  %323 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge81
else80:
  %324 = getelementptr [12 x i8], [12 x i8]* @.str745, i32 0, i32 0
  %325 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str745.c, i8* %324, i64 11)
  %326 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %325)
  br i1 %326, label %then82, label %else83
then82:
  %327 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %328 = load i64, i64* %5
  %329 = add i64 %328, 1
  store i64 %329, i64* %5
  br label %merge84
else83:
  %330 = getelementptr [8 x i8], [8 x i8]* @.str746, i32 0, i32 0
  %331 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str746.c, i8* %330, i64 7)
  %332 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %331)
  br label %merge84
merge84:
  br label %merge81
merge81:
  br label %merge78
merge78:
  %333 = load %nyx_string*, %nyx_string** %217
  %334 = getelementptr [2 x i8], [2 x i8]* @.str747, i32 0, i32 0
  %335 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str747.c, i8* %334, i64 1)
  %336 = call %nyx_string* @nyx_string_concat(%nyx_string* %333, %nyx_string* %335)
  store %nyx_string* %336, %nyx_string** %217
  br label %merge69
else68:
  br label %merge69
merge69:
  %337 = load %nyx_string*, %nyx_string** %217
  ret %nyx_string* %337
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = getelementptr [4 x i8], [4 x i8]* @.str748, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str748.c, i8* %31, i64 3)
  %33 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %32)
  %34 = alloca i1
  store i1 %33, i1* %34
  %35 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %36 = getelementptr [11 x i8], [11 x i8]* @.str749, i32 0, i32 0
  %37 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str749.c, i8* %36, i64 10)
  %38 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %37)
  br i1 %38, label %then0, label %else1
then0:
  %39 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %40 = call { i64, i8* }* @nyx_array_new_ptr()
  %41 = alloca { i64, i8* }*
  store { i64, i8* }* %40, { i64, i8* }** %41
  %42 = getelementptr [11 x i8], [11 x i8]* @.str750, i32 0, i32 0
  %43 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str750.c, i8* %42, i64 10)
  %44 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %43)
  %45 = alloca %Token
  store %Token %44, %Token* %45
  %46 = load { i64, i8* }*, { i64, i8* }** %41
  %47 = load %Token, %Token* %45
  %48 = call %nyx_string* @get_token_value(%Token %47)
  %49 = ptrtoint %nyx_string* %48 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %46, i64 %49, i64 2)
  %50 = call i8* @llvm.stacksave()
  br label %while_cond3
while_cond3:
  %51 = getelementptr [6 x i8], [6 x i8]* @.str751, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str751.c, i8* %51, i64 5)
  %53 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %52)
  br i1 %53, label %while_body4, label %while_end5
while_body4:
  call void @llvm.stackrestore(i8* %50)
  %54 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %55 = getelementptr [11 x i8], [11 x i8]* @.str752, i32 0, i32 0
  %56 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str752.c, i8* %55, i64 10)
  %57 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %56)
  %58 = alloca %Token
  store %Token %57, %Token* %58
  %59 = load { i64, i8* }*, { i64, i8* }** %41
  %60 = load %Token, %Token* %58
  %61 = call %nyx_string* @get_token_value(%Token %60)
  %62 = ptrtoint %nyx_string* %61 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %59, i64 %62, i64 2)
  br label %while_cond3
while_end5:
  %63 = getelementptr [12 x i8], [12 x i8]* @.str753, i32 0, i32 0
  %64 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str753.c, i8* %63, i64 11)
  %65 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %64)
  %66 = getelementptr [7 x i8], [7 x i8]* @.str754, i32 0, i32 0
  %67 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str754.c, i8* %66, i64 6)
  %68 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %67)
  %69 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %70 = alloca { i64, i8* }*
  store { i64, i8* }* %69, { i64, i8* }** %70
  %71 = getelementptr [22 x i8], [22 x i8]* @.str755, i32 0, i32 0
  %72 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str755.c, i8* %71, i64 21)
  %73 = call { i64, i8* }* @nyx_array_new_ptr()
  %74 = load { i64, i8* }*, { i64, i8* }** %41
  %75 = ptrtoint { i64, i8* }* %74 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %73, i64 %75, i64 5)
  %76 = load i1, i1* %34
  %77 = zext i1 %76 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %73, i64 %77, i64 4)
  %78 = load { i64, i8* }*, { i64, i8* }** %70
  %79 = ptrtoint { i64, i8* }* %78 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %73, i64 %79, i64 5)
  %80 = call { i64, i8* }* @make_astnode(%nyx_string* %72, { i64, i8* }* %73)
  ret { i64, i8* }* %80
else1:
  br label %merge2
merge2:
  %81 = getelementptr [11 x i8], [11 x i8]* @.str756, i32 0, i32 0
  %82 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str756.c, i8* %81, i64 10)
  %83 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %82)
  %84 = alloca %Token
  store %Token %83, %Token* %84
  %85 = load %Token, %Token* %84
  %86 = call %nyx_string* @get_token_value(%Token %85)
  %87 = alloca %nyx_string*
  store %nyx_string* %86, %nyx_string** %87
  %88 = load %nyx_string*, %nyx_string** %87
  %89 = call { i64, i8* }* @nyx_array_new_ptr()
  %90 = call { i64, i8* }* @make_astnode(%nyx_string* %88, { i64, i8* }* %89)
  %91 = alloca { i64, i8* }*
  store { i64, i8* }* %90, { i64, i8* }** %91
  %92 = getelementptr [1 x i8], [1 x i8]* @.str757, i32 0, i32 0
  %93 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str757.c, i8* %92, i64 0)
  %94 = alloca %nyx_string*
  store %nyx_string* %93, %nyx_string** %94
  %95 = getelementptr [6 x i8], [6 x i8]* @.str758, i32 0, i32 0
  %96 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str758.c, i8* %95, i64 5)
  %97 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %96)
  br i1 %97, label %then6, label %else7
then6:
  %98 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %99 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %99, %nyx_string** %94
  br label %merge8
else7:
  br label %merge8
merge8:
  %100 = getelementptr [7 x i8], [7 x i8]* @.str759, i32 0, i32 0
  %101 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str759.c, i8* %100, i64 6)
  %102 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %101)
  %103 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %104 = alloca { i64, i8* }*
  store { i64, i8* }* %103, { i64, i8* }** %104
  %105 = getelementptr [4 x i8], [4 x i8]* @.str760, i32 0, i32 0
  %106 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str760.c, i8* %105, i64 3)
  %107 = call { i64, i8* }* @nyx_array_new_ptr()
  %108 = load { i64, i8* }*, { i64, i8* }** %91
  %109 = ptrtoint { i64, i8* }* %108 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %107, i64 %109, i64 5)
  %110 = load i1, i1* %34
  %111 = zext i1 %110 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %107, i64 %111, i64 4)
  %112 = load { i64, i8* }*, { i64, i8* }** %104
  %113 = ptrtoint { i64, i8* }* %112 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %107, i64 %113, i64 5)
  %114 = load %nyx_string*, %nyx_string** %94
  %115 = ptrtoint %nyx_string* %114 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %107, i64 %115, i64 2)
  %116 = call { i64, i8* }* @make_astnode(%nyx_string* %106, { i64, i8* }* %107)
  ret { i64, i8* }* %116
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = getelementptr [6 x i8], [6 x i8]* @.str761, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str761.c, i8* %31, i64 5)
  %33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %32)
  %34 = getelementptr [11 x i8], [11 x i8]* @.str762, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str762.c, i8* %34, i64 10)
  %36 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %35)
  %37 = alloca %Token
  store %Token %36, %Token* %37
  %38 = getelementptr [1 x i8], [1 x i8]* @.str763, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str763.c, i8* %38, i64 0)
  %40 = alloca %nyx_string*
  store %nyx_string* %39, %nyx_string** %40
  %41 = getelementptr [6 x i8], [6 x i8]* @.str764, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str764.c, i8* %41, i64 5)
  %43 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %42)
  br i1 %43, label %then0, label %else1
then0:
  %44 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %45 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %45, %nyx_string** %40
  br label %merge2
else1:
  br label %merge2
merge2:
  %46 = getelementptr [7 x i8], [7 x i8]* @.str765, i32 0, i32 0
  %47 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str765.c, i8* %46, i64 6)
  %48 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %47)
  %49 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %50 = alloca { i64, i8* }*
  store { i64, i8* }* %49, { i64, i8* }** %50
  %51 = getelementptr [6 x i8], [6 x i8]* @.str766, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str766.c, i8* %51, i64 5)
  %53 = call { i64, i8* }* @nyx_array_new_ptr()
  %54 = load %Token, %Token* %37
  %55 = call %nyx_string* @get_token_value(%Token %54)
  %56 = ptrtoint %nyx_string* %55 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %53, i64 %56, i64 2)
  %57 = load { i64, i8* }*, { i64, i8* }** %50
  %58 = ptrtoint { i64, i8* }* %57 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %53, i64 %58, i64 5)
  %59 = load %nyx_string*, %nyx_string** %40
  %60 = ptrtoint %nyx_string* %59 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %53, i64 %60, i64 2)
  %61 = call { i64, i8* }* @make_astnode(%nyx_string* %52, { i64, i8* }* %53)
  ret { i64, i8* }* %61
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = getelementptr [3 x i8], [3 x i8]* @.str767, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str767.c, i8* %31, i64 2)
  %33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %32)
  %34 = alloca %Token
  store %Token %33, %Token* %34
  %35 = load %Token, %Token* %34
  %36 = call i64 @get_token_line(%Token %35)
  %37 = alloca i64
  store i64 %36, i64* %37
  %38 = getelementptr [11 x i8], [11 x i8]* @.str768, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str768.c, i8* %38, i64 10)
  %40 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %39)
  %41 = alloca %Token
  store %Token %40, %Token* %41
  %42 = load %Token, %Token* %41
  %43 = call %nyx_string* @get_token_value(%Token %42)
  %44 = alloca %nyx_string*
  store %nyx_string* %43, %nyx_string** %44
  %45 = getelementptr [11 x i8], [11 x i8]* @.str769, i32 0, i32 0
  %46 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str769.c, i8* %45, i64 10)
  %47 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %46)
  %48 = call { i64, i8* }* @nyx_array_new_ptr()
  %49 = alloca { i64, i8* }*
  store { i64, i8* }* %48, { i64, i8* }** %49
  %50 = alloca i1
  store i1 0, i1* %50
  %51 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %52 = load i1, i1* %50
  %53 = xor i1 %52, true
  br i1 %53, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %51)
  %54 = getelementptr [12 x i8], [12 x i8]* @.str770, i32 0, i32 0
  %55 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str770.c, i8* %54, i64 11)
  %56 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %55)
  br i1 %56, label %then3, label %else4
then3:
  %57 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %50
  br label %merge5
else4:
  %58 = load { i64, i8* }*, { i64, i8* }** %49
  %59 = call i64 @nyx_array_length({ i64, i8* }* %58)
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %then6, label %else7
then6:
  %61 = getelementptr [6 x i8], [6 x i8]* @.str771, i32 0, i32 0
  %62 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str771.c, i8* %61, i64 5)
  %63 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %62)
  br label %merge8
else7:
  br label %merge8
merge8:
  %64 = getelementptr [11 x i8], [11 x i8]* @.str772, i32 0, i32 0
  %65 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str772.c, i8* %64, i64 10)
  %66 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %65)
  %67 = alloca %Token
  store %Token %66, %Token* %67
  %68 = getelementptr [1 x i8], [1 x i8]* @.str773, i32 0, i32 0
  %69 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str773.c, i8* %68, i64 0)
  %70 = alloca %nyx_string*
  store %nyx_string* %69, %nyx_string** %70
  %71 = getelementptr [6 x i8], [6 x i8]* @.str774, i32 0, i32 0
  %72 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str774.c, i8* %71, i64 5)
  %73 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %72)
  br i1 %73, label %then9, label %else10
then9:
  %74 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %75 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %75, %nyx_string** %70
  br label %merge11
else10:
  br label %merge11
merge11:
  %76 = load { i64, i8* }*, { i64, i8* }** %49
  %77 = call { i64, i8* }* @nyx_array_new_ptr()
  %78 = load %Token, %Token* %67
  %79 = call %nyx_string* @get_token_value(%Token %78)
  %80 = ptrtoint %nyx_string* %79 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %77, i64 %80, i64 2)
  %81 = load %nyx_string*, %nyx_string** %70
  %82 = ptrtoint %nyx_string* %81 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %77, i64 %82, i64 2)
  %83 = ptrtoint { i64, i8* }* %77 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %76, i64 %83, i64 5)
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %84 = getelementptr [1 x i8], [1 x i8]* @.str775, i32 0, i32 0
  %85 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str775.c, i8* %84, i64 0)
  %86 = alloca %nyx_string*
  store %nyx_string* %85, %nyx_string** %86
  %87 = getelementptr [6 x i8], [6 x i8]* @.str776, i32 0, i32 0
  %88 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str776.c, i8* %87, i64 5)
  %89 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %88)
  br i1 %89, label %then12, label %else13
then12:
  %90 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %91 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %91, %nyx_string** %86
  br label %merge14
else13:
  br label %merge14
merge14:
  %92 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %93 = alloca { i64, i8* }*
  store { i64, i8* }* %92, { i64, i8* }** %93
  %94 = getelementptr [9 x i8], [9 x i8]* @.str777, i32 0, i32 0
  %95 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str777.c, i8* %94, i64 8)
  %96 = call { i64, i8* }* @nyx_array_new_ptr()
  %97 = load %nyx_string*, %nyx_string** %44
  %98 = ptrtoint %nyx_string* %97 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %96, i64 %98, i64 2)
  %99 = load { i64, i8* }*, { i64, i8* }** %49
  %100 = ptrtoint { i64, i8* }* %99 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %96, i64 %100, i64 5)
  %101 = load %nyx_string*, %nyx_string** %86
  %102 = ptrtoint %nyx_string* %101 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %96, i64 %102, i64 2)
  %103 = load { i64, i8* }*, { i64, i8* }** %93
  %104 = ptrtoint { i64, i8* }* %103 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %96, i64 %104, i64 5)
  %105 = call { i64, i8* }* @nyx_array_new_ptr()
  %106 = ptrtoint { i64, i8* }* %105 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %96, i64 %106, i64 5)
  %107 = getelementptr [1 x i8], [1 x i8]* @.str778, i32 0, i32 0
  %108 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str778.c, i8* %107, i64 0)
  %109 = ptrtoint %nyx_string* %108 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %96, i64 %109, i64 2)
  %110 = call { i64, i8* }* @nyx_array_new_ptr()
  %111 = getelementptr [13 x i8], [13 x i8]* @.str779, i32 0, i32 0
  %112 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str779.c, i8* %111, i64 12)
  %113 = ptrtoint %nyx_string* %112 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %110, i64 %113, i64 2)
  %114 = load i64, i64* %37
  call void @nyx_array_push_tagged({ i64, i8* }* %110, i64 %114, i64 1)
  %115 = ptrtoint { i64, i8* }* %110 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %96, i64 %115, i64 5)
  %116 = call { i64, i8* }* @make_astnode(%nyx_string* %95, { i64, i8* }* %96)
  ret { i64, i8* }* %116
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = getelementptr [3 x i8], [3 x i8]* @.str780, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str780.c, i8* %31, i64 2)
  %33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %32)
  %34 = alloca %Token
  store %Token %33, %Token* %34
  %35 = load %Token, %Token* %34
  %36 = call i64 @get_token_line(%Token %35)
  %37 = alloca i64
  store i64 %36, i64* %37
  %38 = getelementptr [11 x i8], [11 x i8]* @.str781, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str781.c, i8* %38, i64 10)
  %40 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %39)
  %41 = alloca %Token
  store %Token %40, %Token* %41
  %42 = call { i64, i8* }* @nyx_array_new_ptr()
  %43 = alloca { i64, i8* }*
  store { i64, i8* }* %42, { i64, i8* }** %43
  %44 = getelementptr [5 x i8], [5 x i8]* @.str782, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str782.c, i8* %44, i64 4)
  %46 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %45)
  br i1 %46, label %then0, label %else1
then0:
  %47 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %48 = getelementptr [9 x i8], [9 x i8]* @.str783, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str783.c, i8* %48, i64 8)
  %50 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %49)
  br i1 %50, label %then3, label %else4
then3:
  %51 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %52 = alloca %Token
  store %Token %51, %Token* %52
  %53 = load { i64, i8* }*, { i64, i8* }** %43
  %54 = load %Token, %Token* %52
  %55 = call %nyx_string* @get_token_value(%Token %54)
  %56 = ptrtoint %nyx_string* %55 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %53, i64 %56, i64 2)
  br label %merge5
else4:
  %57 = getelementptr [11 x i8], [11 x i8]* @.str784, i32 0, i32 0
  %58 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str784.c, i8* %57, i64 10)
  %59 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %58)
  %60 = alloca %Token
  store %Token %59, %Token* %60
  %61 = load %Token, %Token* %60
  %62 = call %nyx_string* @get_token_value(%Token %61)
  %63 = alloca %nyx_string*
  store %nyx_string* %62, %nyx_string** %63
  %64 = getelementptr [6 x i8], [6 x i8]* @.str785, i32 0, i32 0
  %65 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str785.c, i8* %64, i64 5)
  %66 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %65)
  br i1 %66, label %then6, label %else7
then6:
  %67 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %68 = getelementptr [11 x i8], [11 x i8]* @.str786, i32 0, i32 0
  %69 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str786.c, i8* %68, i64 10)
  %70 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %69)
  %71 = alloca %Token
  store %Token %70, %Token* %71
  %72 = load %Token, %Token* %71
  %73 = call %nyx_string* @get_token_value(%Token %72)
  %74 = alloca %nyx_string*
  store %nyx_string* %73, %nyx_string** %74
  %75 = call i8* @llvm.stacksave()
  br label %while_cond9
while_cond9:
  %76 = getelementptr [5 x i8], [5 x i8]* @.str787, i32 0, i32 0
  %77 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str787.c, i8* %76, i64 4)
  %78 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %77)
  br i1 %78, label %while_body10, label %while_end11
while_body10:
  call void @llvm.stackrestore(i8* %75)
  %79 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %80 = getelementptr [11 x i8], [11 x i8]* @.str788, i32 0, i32 0
  %81 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str788.c, i8* %80, i64 10)
  %82 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %81)
  %83 = alloca %Token
  store %Token %82, %Token* %83
  %84 = load %nyx_string*, %nyx_string** %74
  %85 = getelementptr [2 x i8], [2 x i8]* @.str789, i32 0, i32 0
  %86 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str789.c, i8* %85, i64 1)
  %87 = call %nyx_string* @nyx_string_concat(%nyx_string* %84, %nyx_string* %86)
  %88 = load %Token, %Token* %83
  %89 = call %nyx_string* @get_token_value(%Token %88)
  %90 = call %nyx_string* @nyx_string_concat(%nyx_string* %87, %nyx_string* %89)
  store %nyx_string* %90, %nyx_string** %74
  br label %while_cond9
while_end11:
  %91 = load %nyx_string*, %nyx_string** %63
  %92 = getelementptr [2 x i8], [2 x i8]* @.str790, i32 0, i32 0
  %93 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str790.c, i8* %92, i64 1)
  %94 = call %nyx_string* @nyx_string_concat(%nyx_string* %91, %nyx_string* %93)
  %95 = load %nyx_string*, %nyx_string** %74
  %96 = call %nyx_string* @nyx_string_concat(%nyx_string* %94, %nyx_string* %95)
  store %nyx_string* %96, %nyx_string** %63
  br label %merge8
else7:
  br label %merge8
merge8:
  %97 = load { i64, i8* }*, { i64, i8* }** %43
  %98 = load %nyx_string*, %nyx_string** %63
  %99 = ptrtoint %nyx_string* %98 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %97, i64 %99, i64 2)
  br label %merge5
merge5:
  %100 = alloca i1
  store i1 0, i1* %100
  %101 = call i8* @llvm.stacksave()
  br label %while_cond12
while_cond12:
  %102 = load i1, i1* %100
  %103 = xor i1 %102, true
  br i1 %103, label %while_body13, label %while_end14
while_body13:
  call void @llvm.stackrestore(i8* %101)
  %104 = getelementptr [6 x i8], [6 x i8]* @.str791, i32 0, i32 0
  %105 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str791.c, i8* %104, i64 5)
  %106 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %105)
  br i1 %106, label %then15, label %else16
then15:
  %107 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %108 = getelementptr [9 x i8], [9 x i8]* @.str792, i32 0, i32 0
  %109 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str792.c, i8* %108, i64 8)
  %110 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %109)
  br i1 %110, label %then18, label %else19
then18:
  %111 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %112 = alloca %Token
  store %Token %111, %Token* %112
  %113 = load { i64, i8* }*, { i64, i8* }** %43
  %114 = load %Token, %Token* %112
  %115 = call %nyx_string* @get_token_value(%Token %114)
  %116 = ptrtoint %nyx_string* %115 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %113, i64 %116, i64 2)
  br label %merge20
else19:
  %117 = getelementptr [11 x i8], [11 x i8]* @.str793, i32 0, i32 0
  %118 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str793.c, i8* %117, i64 10)
  %119 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %118)
  %120 = alloca %Token
  store %Token %119, %Token* %120
  %121 = load %Token, %Token* %120
  %122 = call %nyx_string* @get_token_value(%Token %121)
  %123 = alloca %nyx_string*
  store %nyx_string* %122, %nyx_string** %123
  %124 = getelementptr [6 x i8], [6 x i8]* @.str794, i32 0, i32 0
  %125 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str794.c, i8* %124, i64 5)
  %126 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %125)
  br i1 %126, label %then21, label %else22
then21:
  %127 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %128 = getelementptr [11 x i8], [11 x i8]* @.str795, i32 0, i32 0
  %129 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str795.c, i8* %128, i64 10)
  %130 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %129)
  %131 = alloca %Token
  store %Token %130, %Token* %131
  %132 = load %Token, %Token* %131
  %133 = call %nyx_string* @get_token_value(%Token %132)
  %134 = alloca %nyx_string*
  store %nyx_string* %133, %nyx_string** %134
  %135 = call i8* @llvm.stacksave()
  br label %while_cond24
while_cond24:
  %136 = getelementptr [5 x i8], [5 x i8]* @.str796, i32 0, i32 0
  %137 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str796.c, i8* %136, i64 4)
  %138 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %137)
  br i1 %138, label %while_body25, label %while_end26
while_body25:
  call void @llvm.stackrestore(i8* %135)
  %139 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %140 = getelementptr [11 x i8], [11 x i8]* @.str797, i32 0, i32 0
  %141 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str797.c, i8* %140, i64 10)
  %142 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %141)
  %143 = alloca %Token
  store %Token %142, %Token* %143
  %144 = load %nyx_string*, %nyx_string** %134
  %145 = getelementptr [2 x i8], [2 x i8]* @.str798, i32 0, i32 0
  %146 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str798.c, i8* %145, i64 1)
  %147 = call %nyx_string* @nyx_string_concat(%nyx_string* %144, %nyx_string* %146)
  %148 = load %Token, %Token* %143
  %149 = call %nyx_string* @get_token_value(%Token %148)
  %150 = call %nyx_string* @nyx_string_concat(%nyx_string* %147, %nyx_string* %149)
  store %nyx_string* %150, %nyx_string** %134
  br label %while_cond24
while_end26:
  %151 = load %nyx_string*, %nyx_string** %123
  %152 = getelementptr [2 x i8], [2 x i8]* @.str799, i32 0, i32 0
  %153 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str799.c, i8* %152, i64 1)
  %154 = call %nyx_string* @nyx_string_concat(%nyx_string* %151, %nyx_string* %153)
  %155 = load %nyx_string*, %nyx_string** %134
  %156 = call %nyx_string* @nyx_string_concat(%nyx_string* %154, %nyx_string* %155)
  store %nyx_string* %156, %nyx_string** %123
  br label %merge23
else22:
  br label %merge23
merge23:
  %157 = load { i64, i8* }*, { i64, i8* }** %43
  %158 = load %nyx_string*, %nyx_string** %123
  %159 = ptrtoint %nyx_string* %158 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %157, i64 %159, i64 2)
  br label %merge20
merge20:
  br label %merge17
else16:
  store i1 1, i1* %100
  br label %merge17
merge17:
  br label %while_cond12
while_end14:
  %160 = getelementptr [8 x i8], [8 x i8]* @.str800, i32 0, i32 0
  %161 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str800.c, i8* %160, i64 7)
  %162 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %161)
  br label %merge2
else1:
  br label %merge2
merge2:
  %163 = getelementptr [11 x i8], [11 x i8]* @.str801, i32 0, i32 0
  %164 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str801.c, i8* %163, i64 10)
  %165 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %164)
  %166 = call { i64, i8* }* @nyx_array_new_ptr()
  %167 = alloca { i64, i8* }*
  store { i64, i8* }* %166, { i64, i8* }** %167
  %168 = call { i64, i8* }* @nyx_array_new_ptr()
  %169 = alloca { i64, i8* }*
  store { i64, i8* }* %168, { i64, i8* }** %169
  %170 = alloca i1
  store i1 0, i1* %170
  %171 = call i8* @llvm.stacksave()
  br label %while_cond27
while_cond27:
  %172 = load i1, i1* %170
  %173 = xor i1 %172, true
  br i1 %173, label %while_body28, label %while_end29
while_body28:
  call void @llvm.stackrestore(i8* %171)
  %174 = getelementptr [12 x i8], [12 x i8]* @.str802, i32 0, i32 0
  %175 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str802.c, i8* %174, i64 11)
  %176 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %175)
  br i1 %176, label %then30, label %else31
then30:
  %177 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %170
  br label %merge32
else31:
  %178 = load { i64, i8* }*, { i64, i8* }** %167
  %179 = call i64 @nyx_array_length({ i64, i8* }* %178)
  %180 = icmp sgt i64 %179, 0
  br i1 %180, label %then33, label %else34
then33:
  %181 = getelementptr [6 x i8], [6 x i8]* @.str803, i32 0, i32 0
  %182 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str803.c, i8* %181, i64 5)
  %183 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %182)
  br label %merge35
else34:
  br label %merge35
merge35:
  %184 = getelementptr [9 x i8], [9 x i8]* @.str804, i32 0, i32 0
  %185 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str804.c, i8* %184, i64 8)
  %186 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %185)
  br i1 %186, label %then36, label %else37
then36:
  %187 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %188 = getelementptr [11 x i8], [11 x i8]* @.str805, i32 0, i32 0
  %189 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str805.c, i8* %188, i64 10)
  %190 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %189)
  %191 = alloca %Token
  store %Token %190, %Token* %191
  %192 = load %Token, %Token* %191
  %193 = call %nyx_string* @get_token_value(%Token %192)
  %194 = alloca %nyx_string*
  store %nyx_string* %193, %nyx_string** %194
  %195 = getelementptr [10 x i8], [10 x i8]* @.str806, i32 0, i32 0
  %196 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str806.c, i8* %195, i64 9)
  %197 = alloca %nyx_string*
  store %nyx_string* %196, %nyx_string** %197
  %198 = getelementptr [6 x i8], [6 x i8]* @.str807, i32 0, i32 0
  %199 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str807.c, i8* %198, i64 5)
  %200 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %199)
  br i1 %200, label %then39, label %else40
then39:
  %201 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %202 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %203 = alloca %nyx_string*
  store %nyx_string* %202, %nyx_string** %203
  %204 = getelementptr [4 x i8], [4 x i8]* @.str808, i32 0, i32 0
  %205 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str808.c, i8* %204, i64 3)
  %206 = load %nyx_string*, %nyx_string** %203
  %207 = call %nyx_string* @nyx_string_concat(%nyx_string* %205, %nyx_string* %206)
  store %nyx_string* %207, %nyx_string** %197
  br label %merge41
else40:
  br label %merge41
merge41:
  %208 = load { i64, i8* }*, { i64, i8* }** %167
  %209 = call { i64, i8* }* @nyx_array_new_ptr()
  %210 = load %nyx_string*, %nyx_string** %194
  %211 = ptrtoint %nyx_string* %210 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %209, i64 %211, i64 2)
  %212 = load %nyx_string*, %nyx_string** %197
  %213 = ptrtoint %nyx_string* %212 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %209, i64 %213, i64 2)
  %214 = ptrtoint { i64, i8* }* %209 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %208, i64 %214, i64 5)
  %215 = load { i64, i8* }*, { i64, i8* }** %169
  %216 = getelementptr [1 x i8], [1 x i8]* @.str809, i32 0, i32 0
  %217 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str809.c, i8* %216, i64 0)
  %218 = ptrtoint %nyx_string* %217 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %215, i64 %218, i64 2)
  %219 = getelementptr [6 x i8], [6 x i8]* @.str810, i32 0, i32 0
  %220 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str810.c, i8* %219, i64 5)
  %221 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %220)
  br i1 %221, label %then42, label %else43
then42:
  %222 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge44
else43:
  br label %merge44
merge44:
  %223 = getelementptr [12 x i8], [12 x i8]* @.str811, i32 0, i32 0
  %224 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str811.c, i8* %223, i64 11)
  %225 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %224)
  br i1 %225, label %then45, label %else46
then45:
  %226 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge47
else46:
  br label %merge47
merge47:
  store i1 1, i1* %170
  br label %merge38
else37:
  %227 = alloca i1
  store i1 false, i1* %227
  %228 = getelementptr [4 x i8], [4 x i8]* @.str812, i32 0, i32 0
  %229 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str812.c, i8* %228, i64 3)
  %230 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %229)
  br i1 %230, label %sc_and_rhs48, label %sc_and_end49
sc_and_rhs48:
  %231 = load { i64, i8* }*, { i64, i8* }** %167
  %232 = call i64 @nyx_array_length({ i64, i8* }* %231)
  %233 = icmp eq i64 %232, 0
  store i1 %233, i1* %227
  br label %sc_and_end49
sc_and_end49:
  %234 = load i1, i1* %227
  br i1 %234, label %then50, label %else51
then50:
  %235 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %236 = getelementptr [9 x i8], [9 x i8]* @.str813, i32 0, i32 0
  %237 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str813.c, i8* %236, i64 8)
  %238 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %237)
  br i1 %238, label %then53, label %else54
then53:
  %239 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge55
else54:
  br label %merge55
merge55:
  %240 = getelementptr [2 x i8], [2 x i8]* @.str814, i32 0, i32 0
  %241 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str814.c, i8* %240, i64 1)
  %242 = alloca %nyx_string*
  store %nyx_string* %241, %nyx_string** %242
  %243 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %244 = call %nyx_string* @get_token_value(%Token %243)
  %245 = getelementptr [4 x i8], [4 x i8]* @.str815, i32 0, i32 0
  %246 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str815.c, i8* %245, i64 3)
  %247 = call i1 @nyx_string_equals(%nyx_string* %244, %nyx_string* %246)
  br i1 %247, label %then56, label %else57
then56:
  %248 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %249 = getelementptr [5 x i8], [5 x i8]* @.str816, i32 0, i32 0
  %250 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str816.c, i8* %249, i64 4)
  store %nyx_string* %250, %nyx_string** %242
  br label %merge58
else57:
  br label %merge58
merge58:
  %251 = getelementptr [11 x i8], [11 x i8]* @.str817, i32 0, i32 0
  %252 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str817.c, i8* %251, i64 10)
  %253 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %252)
  %254 = alloca %Token
  store %Token %253, %Token* %254
  %255 = load { i64, i8* }*, { i64, i8* }** %167
  %256 = call { i64, i8* }* @nyx_array_new_ptr()
  %257 = load %Token, %Token* %254
  %258 = call %nyx_string* @get_token_value(%Token %257)
  %259 = ptrtoint %nyx_string* %258 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %256, i64 %259, i64 2)
  %260 = load %nyx_string*, %nyx_string** %242
  %261 = ptrtoint %nyx_string* %260 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %256, i64 %261, i64 2)
  %262 = ptrtoint { i64, i8* }* %256 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %255, i64 %262, i64 5)
  %263 = load { i64, i8* }*, { i64, i8* }** %169
  %264 = getelementptr [1 x i8], [1 x i8]* @.str818, i32 0, i32 0
  %265 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str818.c, i8* %264, i64 0)
  %266 = ptrtoint %nyx_string* %265 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %263, i64 %266, i64 2)
  br label %merge52
else51:
  %267 = getelementptr [11 x i8], [11 x i8]* @.str819, i32 0, i32 0
  %268 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str819.c, i8* %267, i64 10)
  %269 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %268)
  %270 = alloca %Token
  store %Token %269, %Token* %270
  %271 = getelementptr [1 x i8], [1 x i8]* @.str820, i32 0, i32 0
  %272 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str820.c, i8* %271, i64 0)
  %273 = alloca %nyx_string*
  store %nyx_string* %272, %nyx_string** %273
  %274 = load { i64, i8* }*, { i64, i8* }** %19
  %275 = getelementptr [1 x i8], [1 x i8]* @.str821, i32 0, i32 0
  %276 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str821.c, i8* %275, i64 0)
  %277 = ptrtoint %nyx_string* %276 to i64
  call void @nyx_array_set_tagged({ i64, i8* }* %274, i64 0, i64 %277, i64 2)
  %278 = getelementptr [6 x i8], [6 x i8]* @.str822, i32 0, i32 0
  %279 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str822.c, i8* %278, i64 5)
  %280 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %279)
  br i1 %280, label %then59, label %else60
then59:
  %281 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %282 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %282, %nyx_string** %273
  br label %merge61
else60:
  br label %merge61
merge61:
  %283 = load { i64, i8* }*, { i64, i8* }** %19
  %284 = call i64 @nyx_array_get_checked({ i64, i8* }* %283, i64 0, i64 2)
  %285 = inttoptr i64 %284 to %nyx_string*
  %286 = alloca %nyx_string*
  store %nyx_string* %285, %nyx_string** %286
  %287 = getelementptr [7 x i8], [7 x i8]* @.str823, i32 0, i32 0
  %288 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str823.c, i8* %287, i64 6)
  %289 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %288)
  br i1 %289, label %then62, label %else63
then62:
  %290 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %291 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %292 = alloca { i64, i8* }*
  store { i64, i8* }* %291, { i64, i8* }** %292
  %293 = load { i64, i8* }*, { i64, i8* }** %167
  %294 = call { i64, i8* }* @nyx_array_new_ptr()
  %295 = load %Token, %Token* %270
  %296 = call %nyx_string* @get_token_value(%Token %295)
  %297 = ptrtoint %nyx_string* %296 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %294, i64 %297, i64 2)
  %298 = load %nyx_string*, %nyx_string** %273
  %299 = ptrtoint %nyx_string* %298 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %294, i64 %299, i64 2)
  %300 = load { i64, i8* }*, { i64, i8* }** %292
  %301 = ptrtoint { i64, i8* }* %300 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %294, i64 %301, i64 5)
  %302 = ptrtoint { i64, i8* }* %294 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %293, i64 %302, i64 5)
  br label %merge64
else63:
  %303 = load { i64, i8* }*, { i64, i8* }** %167
  %304 = call { i64, i8* }* @nyx_array_new_ptr()
  %305 = load %Token, %Token* %270
  %306 = call %nyx_string* @get_token_value(%Token %305)
  %307 = ptrtoint %nyx_string* %306 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %304, i64 %307, i64 2)
  %308 = load %nyx_string*, %nyx_string** %273
  %309 = ptrtoint %nyx_string* %308 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %304, i64 %309, i64 2)
  %310 = ptrtoint { i64, i8* }* %304 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %303, i64 %310, i64 5)
  br label %merge64
merge64:
  %311 = load { i64, i8* }*, { i64, i8* }** %169
  %312 = load %nyx_string*, %nyx_string** %286
  %313 = ptrtoint %nyx_string* %312 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %311, i64 %313, i64 2)
  br label %merge52
merge52:
  br label %merge38
merge38:
  br label %merge32
merge32:
  br label %while_cond27
while_end29:
  %314 = getelementptr [1 x i8], [1 x i8]* @.str824, i32 0, i32 0
  %315 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str824.c, i8* %314, i64 0)
  %316 = alloca %nyx_string*
  store %nyx_string* %315, %nyx_string** %316
  %317 = load { i64, i8* }*, { i64, i8* }** %19
  %318 = getelementptr [1 x i8], [1 x i8]* @.str825, i32 0, i32 0
  %319 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str825.c, i8* %318, i64 0)
  %320 = ptrtoint %nyx_string* %319 to i64
  call void @nyx_array_set_tagged({ i64, i8* }* %317, i64 0, i64 %320, i64 2)
  %321 = getelementptr [6 x i8], [6 x i8]* @.str826, i32 0, i32 0
  %322 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str826.c, i8* %321, i64 5)
  %323 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %322)
  br i1 %323, label %then65, label %else66
then65:
  %324 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %325 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %325, %nyx_string** %316
  br label %merge67
else66:
  br label %merge67
merge67:
  %326 = load { i64, i8* }*, { i64, i8* }** %19
  %327 = call i64 @nyx_array_get_checked({ i64, i8* }* %326, i64 0, i64 2)
  %328 = inttoptr i64 %327 to %nyx_string*
  %329 = alloca %nyx_string*
  store %nyx_string* %328, %nyx_string** %329
  %330 = getelementptr [6 x i8], [6 x i8]* @.str827, i32 0, i32 0
  %331 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str827.c, i8* %330, i64 5)
  %332 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %331)
  br i1 %332, label %then68, label %else69
then68:
  %333 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %334 = alloca i1
  store i1 0, i1* %334
  %335 = call i8* @llvm.stacksave()
  br label %while_cond71
while_cond71:
  %336 = load i1, i1* %334
  %337 = xor i1 %336, true
  br i1 %337, label %while_body72, label %while_end73
while_body72:
  call void @llvm.stackrestore(i8* %335)
  %338 = getelementptr [11 x i8], [11 x i8]* @.str828, i32 0, i32 0
  %339 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str828.c, i8* %338, i64 10)
  %340 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %339)
  %341 = alloca %Token
  store %Token %340, %Token* %341
  %342 = load %Token, %Token* %341
  %343 = call %nyx_string* @get_token_value(%Token %342)
  %344 = alloca %nyx_string*
  store %nyx_string* %343, %nyx_string** %344
  %345 = getelementptr [6 x i8], [6 x i8]* @.str829, i32 0, i32 0
  %346 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str829.c, i8* %345, i64 5)
  %347 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %346)
  %348 = getelementptr [11 x i8], [11 x i8]* @.str830, i32 0, i32 0
  %349 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str830.c, i8* %348, i64 10)
  %350 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %349)
  %351 = alloca %Token
  store %Token %350, %Token* %351
  %352 = load %Token, %Token* %351
  %353 = call %nyx_string* @get_token_value(%Token %352)
  %354 = alloca %nyx_string*
  store %nyx_string* %353, %nyx_string** %354
  %355 = call i8* @llvm.stacksave()
  br label %while_cond74
while_cond74:
  %356 = getelementptr [5 x i8], [5 x i8]* @.str831, i32 0, i32 0
  %357 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str831.c, i8* %356, i64 4)
  %358 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %357)
  br i1 %358, label %while_body75, label %while_end76
while_body75:
  call void @llvm.stackrestore(i8* %355)
  %359 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %360 = getelementptr [11 x i8], [11 x i8]* @.str832, i32 0, i32 0
  %361 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str832.c, i8* %360, i64 10)
  %362 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %361)
  %363 = alloca %Token
  store %Token %362, %Token* %363
  %364 = load %nyx_string*, %nyx_string** %354
  %365 = getelementptr [2 x i8], [2 x i8]* @.str833, i32 0, i32 0
  %366 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str833.c, i8* %365, i64 1)
  %367 = call %nyx_string* @nyx_string_concat(%nyx_string* %364, %nyx_string* %366)
  %368 = load %Token, %Token* %363
  %369 = call %nyx_string* @get_token_value(%Token %368)
  %370 = call %nyx_string* @nyx_string_concat(%nyx_string* %367, %nyx_string* %369)
  store %nyx_string* %370, %nyx_string** %354
  br label %while_cond74
while_end76:
  %371 = alloca i1
  store i1 0, i1* %371
  %372 = alloca i64
  store i64 0, i64* %372
  %373 = call i8* @llvm.stacksave()
  br label %while_cond77
while_cond77:
  %374 = load i64, i64* %372
  %375 = load { i64, i8* }*, { i64, i8* }** %43
  %376 = call i64 @nyx_array_length({ i64, i8* }* %375)
  %377 = icmp slt i64 %374, %376
  br i1 %377, label %while_body78, label %while_end79
while_body78:
  call void @llvm.stackrestore(i8* %373)
  %378 = load { i64, i8* }*, { i64, i8* }** %43
  %379 = load i64, i64* %372
  %380 = call i64 @nyx_array_get_checked({ i64, i8* }* %378, i64 %379, i64 2)
  %381 = inttoptr i64 %380 to %nyx_string*
  %382 = alloca %nyx_string*
  store %nyx_string* %381, %nyx_string** %382
  %383 = load %nyx_string*, %nyx_string** %382
  %384 = alloca %nyx_string*
  store %nyx_string* %383, %nyx_string** %384
  %385 = sub i64 0, 1
  %386 = alloca i64
  store i64 %385, i64* %386
  %387 = alloca i64
  store i64 0, i64* %387
  %388 = call i8* @llvm.stacksave()
  br label %while_cond80
while_cond80:
  %389 = load i64, i64* %387
  %390 = load %nyx_string*, %nyx_string** %382
  %391 = call i64 @nyx_string_byte_length(%nyx_string* %390)
  %392 = icmp slt i64 %389, %391
  br i1 %392, label %while_body81, label %while_end82
while_body81:
  call void @llvm.stackrestore(i8* %388)
  %393 = load %nyx_string*, %nyx_string** %382
  %394 = load i64, i64* %387
  %395 = call i8 @nyx_string_char_at(%nyx_string* %393, i64 %394)
  %396 = zext i8 %395 to i64
  %397 = getelementptr [1 x i8], [1 x i8]* @.str834, i32 0, i32 0
  %398 = load i8, i8* %397
  %399 = zext i8 %398 to i64
  %400 = icmp eq i64 %396, %399
  br i1 %400, label %then83, label %else84
then83:
  %401 = load i64, i64* %387
  store i64 %401, i64* %386
  %402 = load %nyx_string*, %nyx_string** %382
  %403 = call i64 @nyx_string_byte_length(%nyx_string* %402)
  store i64 %403, i64* %387
  br label %merge85
else84:
  br label %merge85
merge85:
  %404 = load i64, i64* %387
  %405 = add i64 %404, 1
  store i64 %405, i64* %387
  br label %while_cond80
while_end82:
  %406 = load i64, i64* %386
  %407 = icmp sge i64 %406, 0
  br i1 %407, label %then86, label %else87
then86:
  %408 = load %nyx_string*, %nyx_string** %382
  %409 = load i64, i64* %386
  %410 = call %nyx_string* @nyx_string_substring(%nyx_string* %408, i64 0, i64 %409)
  store %nyx_string* %410, %nyx_string** %384
  br label %merge88
else87:
  br label %merge88
merge88:
  %411 = load %nyx_string*, %nyx_string** %384
  %412 = load %nyx_string*, %nyx_string** %344
  %413 = call i1 @nyx_string_equals(%nyx_string* %411, %nyx_string* %412)
  br i1 %413, label %then89, label %else90
then89:
  %414 = load i64, i64* %386
  %415 = icmp sge i64 %414, 0
  br i1 %415, label %then92, label %else93
then92:
  %416 = load { i64, i8* }*, { i64, i8* }** %43
  %417 = load i64, i64* %372
  %418 = load %nyx_string*, %nyx_string** %382
  %419 = getelementptr [2 x i8], [2 x i8]* @.str835, i32 0, i32 0
  %420 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str835.c, i8* %419, i64 1)
  %421 = call %nyx_string* @nyx_string_concat(%nyx_string* %418, %nyx_string* %420)
  %422 = load %nyx_string*, %nyx_string** %354
  %423 = call %nyx_string* @nyx_string_concat(%nyx_string* %421, %nyx_string* %422)
  %424 = ptrtoint %nyx_string* %423 to i64
  call void @nyx_array_set_tagged({ i64, i8* }* %416, i64 %417, i64 %424, i64 2)
  br label %merge94
else93:
  %425 = load { i64, i8* }*, { i64, i8* }** %43
  %426 = load i64, i64* %372
  %427 = load %nyx_string*, %nyx_string** %382
  %428 = getelementptr [2 x i8], [2 x i8]* @.str836, i32 0, i32 0
  %429 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str836.c, i8* %428, i64 1)
  %430 = call %nyx_string* @nyx_string_concat(%nyx_string* %427, %nyx_string* %429)
  %431 = load %nyx_string*, %nyx_string** %354
  %432 = call %nyx_string* @nyx_string_concat(%nyx_string* %430, %nyx_string* %431)
  %433 = ptrtoint %nyx_string* %432 to i64
  call void @nyx_array_set_tagged({ i64, i8* }* %425, i64 %426, i64 %433, i64 2)
  br label %merge94
merge94:
  store i1 1, i1* %371
  %434 = load { i64, i8* }*, { i64, i8* }** %43
  %435 = call i64 @nyx_array_length({ i64, i8* }* %434)
  store i64 %435, i64* %372
  br label %merge91
else90:
  br label %merge91
merge91:
  %436 = load i64, i64* %372
  %437 = add i64 %436, 1
  store i64 %437, i64* %372
  br label %while_cond77
while_end79:
  %438 = load i1, i1* %371
  %439 = xor i1 %438, true
  br i1 %439, label %then95, label %else96
then95:
  %440 = load { i64, i8* }*, { i64, i8* }** %43
  %441 = load %nyx_string*, %nyx_string** %344
  %442 = getelementptr [2 x i8], [2 x i8]* @.str837, i32 0, i32 0
  %443 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str837.c, i8* %442, i64 1)
  %444 = call %nyx_string* @nyx_string_concat(%nyx_string* %441, %nyx_string* %443)
  %445 = load %nyx_string*, %nyx_string** %354
  %446 = call %nyx_string* @nyx_string_concat(%nyx_string* %444, %nyx_string* %445)
  %447 = ptrtoint %nyx_string* %446 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %440, i64 %447, i64 2)
  br label %merge97
else96:
  br label %merge97
merge97:
  %448 = getelementptr [6 x i8], [6 x i8]* @.str838, i32 0, i32 0
  %449 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str838.c, i8* %448, i64 5)
  %450 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %449)
  br i1 %450, label %then98, label %else99
then98:
  %451 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge100
else99:
  store i1 1, i1* %334
  br label %merge100
merge100:
  br label %while_cond71
while_end73:
  br label %merge70
else69:
  br label %merge70
merge70:
  %452 = load { i64, i8* }*, { i64, i8* }** %12
  %453 = call i64 @nyx_array_length({ i64, i8* }* %452)
  %454 = alloca i64
  store i64 %453, i64* %454
  %455 = call { i64, i8* }* @parse__parse_fn_body_block(%SharedEnv_parse* %env.param)
  %456 = alloca { i64, i8* }*
  store { i64, i8* }* %455, { i64, i8* }** %456
  %457 = load { i64, i8* }*, { i64, i8* }** %12
  %458 = call i64 @nyx_array_length({ i64, i8* }* %457)
  %459 = load i64, i64* %454
  %460 = icmp sgt i64 %458, %459
  br i1 %460, label %then101, label %else102
then101:
  %461 = load { i64, i8* }*, { i64, i8* }** %456
  %462 = call i64 @nyx_array_get({ i64, i8* }* %461, i64 1)
  %463 = inttoptr i64 %462 to { i64, i8* }*
  %464 = alloca { i64, i8* }*
  store { i64, i8* }* %463, { i64, i8* }** %464
  %465 = load { i64, i8* }*, { i64, i8* }** %464
  %466 = call i64 @nyx_array_get({ i64, i8* }* %465, i64 0)
  %467 = inttoptr i64 %466 to { i64, i8* }*
  %468 = alloca { i64, i8* }*
  store { i64, i8* }* %467, { i64, i8* }** %468
  %469 = call { i64, i8* }* @nyx_array_new_ptr()
  %470 = alloca { i64, i8* }*
  store { i64, i8* }* %469, { i64, i8* }** %470
  %471 = load i64, i64* %454
  %472 = alloca i64
  store i64 %471, i64* %472
  %473 = call i8* @llvm.stacksave()
  br label %while_cond104
while_cond104:
  %474 = load i64, i64* %472
  %475 = load { i64, i8* }*, { i64, i8* }** %12
  %476 = call i64 @nyx_array_length({ i64, i8* }* %475)
  %477 = icmp slt i64 %474, %476
  br i1 %477, label %while_body105, label %while_end106
while_body105:
  call void @llvm.stackrestore(i8* %473)
  %478 = load { i64, i8* }*, { i64, i8* }** %12
  %479 = load i64, i64* %472
  %480 = call i64 @nyx_array_get({ i64, i8* }* %478, i64 %479)
  %481 = inttoptr i64 %480 to { i64, i8* }*
  %482 = alloca { i64, i8* }*
  store { i64, i8* }* %481, { i64, i8* }** %482
  %483 = load { i64, i8* }*, { i64, i8* }** %482
  %484 = call i64 @nyx_array_get_checked({ i64, i8* }* %483, i64 0, i64 2)
  %485 = inttoptr i64 %484 to %nyx_string*
  %486 = alloca %nyx_string*
  store %nyx_string* %485, %nyx_string** %486
  %487 = load %nyx_string*, %nyx_string** %486
  %488 = getelementptr [10 x i8], [10 x i8]* @.str839, i32 0, i32 0
  %489 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str839.c, i8* %488, i64 9)
  %490 = call i1 @nyx_string_equals(%nyx_string* %487, %nyx_string* %489)
  %491 = xor i1 %490, true
  br i1 %491, label %then107, label %else108
then107:
  %492 = load { i64, i8* }*, { i64, i8* }** %470
  %493 = load { i64, i8* }*, { i64, i8* }** %12
  %494 = load i64, i64* %472
  %495 = call i64 @nyx_array_get({ i64, i8* }* %493, i64 %494)
  %496 = load { i64, i8* }*, { i64, i8* }** %12
  %497 = load i64, i64* %472
  %498 = call i64 @nyx_array_get_tag({ i64, i8* }* %496, i64 %497)
  call void @nyx_array_push_tagged({ i64, i8* }* %492, i64 %495, i64 %498)
  br label %merge109
else108:
  br label %merge109
merge109:
  %499 = load i64, i64* %472
  %500 = add i64 %499, 1
  store i64 %500, i64* %472
  br label %while_cond104
while_end106:
  %501 = alloca i64
  store i64 0, i64* %501
  %502 = call i8* @llvm.stacksave()
  br label %while_cond110
while_cond110:
  %503 = load i64, i64* %501
  %504 = load { i64, i8* }*, { i64, i8* }** %468
  %505 = call i64 @nyx_array_length({ i64, i8* }* %504)
  %506 = icmp slt i64 %503, %505
  br i1 %506, label %while_body111, label %while_end112
while_body111:
  call void @llvm.stackrestore(i8* %502)
  %507 = load { i64, i8* }*, { i64, i8* }** %470
  %508 = load { i64, i8* }*, { i64, i8* }** %468
  %509 = load i64, i64* %501
  %510 = call i64 @nyx_array_get({ i64, i8* }* %508, i64 %509)
  %511 = load { i64, i8* }*, { i64, i8* }** %468
  %512 = load i64, i64* %501
  %513 = call i64 @nyx_array_get_tag({ i64, i8* }* %511, i64 %512)
  call void @nyx_array_push_tagged({ i64, i8* }* %507, i64 %510, i64 %513)
  %514 = load i64, i64* %501
  %515 = add i64 %514, 1
  store i64 %515, i64* %501
  br label %while_cond110
while_end112:
  %516 = load i64, i64* %454
  %517 = alloca i64
  store i64 %516, i64* %517
  %518 = call i8* @llvm.stacksave()
  br label %while_cond113
while_cond113:
  %519 = load i64, i64* %517
  %520 = load { i64, i8* }*, { i64, i8* }** %12
  %521 = call i64 @nyx_array_length({ i64, i8* }* %520)
  %522 = icmp slt i64 %519, %521
  br i1 %522, label %while_body114, label %while_end115
while_body114:
  call void @llvm.stackrestore(i8* %518)
  %523 = load { i64, i8* }*, { i64, i8* }** %12
  %524 = load i64, i64* %517
  %525 = getelementptr [10 x i8], [10 x i8]* @.str840, i32 0, i32 0
  %526 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str840.c, i8* %525, i64 9)
  %527 = call { i64, i8* }* @nyx_array_new_ptr()
  %528 = call { i64, i8* }* @make_astnode(%nyx_string* %526, { i64, i8* }* %527)
  %529 = ptrtoint { i64, i8* }* %528 to i64
  call void @nyx_array_set_tagged({ i64, i8* }* %523, i64 %524, i64 %529, i64 5)
  %530 = load i64, i64* %517
  %531 = add i64 %530, 1
  store i64 %531, i64* %517
  br label %while_cond113
while_end115:
  %532 = getelementptr [9 x i8], [9 x i8]* @.str841, i32 0, i32 0
  %533 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str841.c, i8* %532, i64 8)
  %534 = call { i64, i8* }* @nyx_array_new_ptr()
  %535 = load %Token, %Token* %41
  %536 = call %nyx_string* @get_token_value(%Token %535)
  %537 = ptrtoint %nyx_string* %536 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %534, i64 %537, i64 2)
  %538 = load { i64, i8* }*, { i64, i8* }** %167
  %539 = ptrtoint { i64, i8* }* %538 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %534, i64 %539, i64 5)
  %540 = load %nyx_string*, %nyx_string** %316
  %541 = ptrtoint %nyx_string* %540 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %534, i64 %541, i64 2)
  %542 = getelementptr [6 x i8], [6 x i8]* @.str842, i32 0, i32 0
  %543 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str842.c, i8* %542, i64 5)
  %544 = call { i64, i8* }* @nyx_array_new_ptr()
  %545 = load { i64, i8* }*, { i64, i8* }** %470
  %546 = ptrtoint { i64, i8* }* %545 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %544, i64 %546, i64 5)
  %547 = call { i64, i8* }* @make_astnode(%nyx_string* %543, { i64, i8* }* %544)
  %548 = ptrtoint { i64, i8* }* %547 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %534, i64 %548, i64 5)
  %549 = load { i64, i8* }*, { i64, i8* }** %43
  %550 = ptrtoint { i64, i8* }* %549 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %534, i64 %550, i64 5)
  %551 = getelementptr [1 x i8], [1 x i8]* @.str843, i32 0, i32 0
  %552 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str843.c, i8* %551, i64 0)
  %553 = ptrtoint %nyx_string* %552 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %534, i64 %553, i64 2)
  %554 = call { i64, i8* }* @nyx_array_new_ptr()
  %555 = getelementptr [10 x i8], [10 x i8]* @.str844, i32 0, i32 0
  %556 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str844.c, i8* %555, i64 9)
  %557 = ptrtoint %nyx_string* %556 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %554, i64 %557, i64 2)
  %558 = load %nyx_string*, %nyx_string** %329
  %559 = ptrtoint %nyx_string* %558 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %554, i64 %559, i64 2)
  %560 = ptrtoint { i64, i8* }* %554 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %534, i64 %560, i64 5)
  %561 = call { i64, i8* }* @nyx_array_new_ptr()
  %562 = getelementptr [12 x i8], [12 x i8]* @.str845, i32 0, i32 0
  %563 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str845.c, i8* %562, i64 11)
  %564 = ptrtoint %nyx_string* %563 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %561, i64 %564, i64 2)
  %565 = load { i64, i8* }*, { i64, i8* }** %169
  %566 = ptrtoint { i64, i8* }* %565 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %561, i64 %566, i64 5)
  %567 = ptrtoint { i64, i8* }* %561 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %534, i64 %567, i64 5)
  %568 = call { i64, i8* }* @nyx_array_new_ptr()
  %569 = getelementptr [13 x i8], [13 x i8]* @.str846, i32 0, i32 0
  %570 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str846.c, i8* %569, i64 12)
  %571 = ptrtoint %nyx_string* %570 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %568, i64 %571, i64 2)
  %572 = load i64, i64* %37
  call void @nyx_array_push_tagged({ i64, i8* }* %568, i64 %572, i64 1)
  %573 = ptrtoint { i64, i8* }* %568 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %534, i64 %573, i64 5)
  %574 = call { i64, i8* }* @make_astnode(%nyx_string* %533, { i64, i8* }* %534)
  ret { i64, i8* }* %574
else102:
  br label %merge103
merge103:
  %575 = getelementptr [9 x i8], [9 x i8]* @.str847, i32 0, i32 0
  %576 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str847.c, i8* %575, i64 8)
  %577 = call { i64, i8* }* @nyx_array_new_ptr()
  %578 = load %Token, %Token* %41
  %579 = call %nyx_string* @get_token_value(%Token %578)
  %580 = ptrtoint %nyx_string* %579 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %577, i64 %580, i64 2)
  %581 = load { i64, i8* }*, { i64, i8* }** %167
  %582 = ptrtoint { i64, i8* }* %581 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %577, i64 %582, i64 5)
  %583 = load %nyx_string*, %nyx_string** %316
  %584 = ptrtoint %nyx_string* %583 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %577, i64 %584, i64 2)
  %585 = load { i64, i8* }*, { i64, i8* }** %456
  %586 = ptrtoint { i64, i8* }* %585 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %577, i64 %586, i64 5)
  %587 = load { i64, i8* }*, { i64, i8* }** %43
  %588 = ptrtoint { i64, i8* }* %587 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %577, i64 %588, i64 5)
  %589 = getelementptr [1 x i8], [1 x i8]* @.str848, i32 0, i32 0
  %590 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str848.c, i8* %589, i64 0)
  %591 = ptrtoint %nyx_string* %590 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %577, i64 %591, i64 2)
  %592 = call { i64, i8* }* @nyx_array_new_ptr()
  %593 = getelementptr [10 x i8], [10 x i8]* @.str849, i32 0, i32 0
  %594 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str849.c, i8* %593, i64 9)
  %595 = ptrtoint %nyx_string* %594 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %592, i64 %595, i64 2)
  %596 = load %nyx_string*, %nyx_string** %329
  %597 = ptrtoint %nyx_string* %596 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %592, i64 %597, i64 2)
  %598 = ptrtoint { i64, i8* }* %592 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %577, i64 %598, i64 5)
  %599 = call { i64, i8* }* @nyx_array_new_ptr()
  %600 = getelementptr [12 x i8], [12 x i8]* @.str850, i32 0, i32 0
  %601 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str850.c, i8* %600, i64 11)
  %602 = ptrtoint %nyx_string* %601 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %599, i64 %602, i64 2)
  %603 = load { i64, i8* }*, { i64, i8* }** %169
  %604 = ptrtoint { i64, i8* }* %603 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %599, i64 %604, i64 5)
  %605 = ptrtoint { i64, i8* }* %599 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %577, i64 %605, i64 5)
  %606 = call { i64, i8* }* @nyx_array_new_ptr()
  %607 = getelementptr [13 x i8], [13 x i8]* @.str851, i32 0, i32 0
  %608 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str851.c, i8* %607, i64 12)
  %609 = ptrtoint %nyx_string* %608 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %606, i64 %609, i64 2)
  %610 = load i64, i64* %37
  call void @nyx_array_push_tagged({ i64, i8* }* %606, i64 %610, i64 1)
  %611 = ptrtoint { i64, i8* }* %606 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %577, i64 %611, i64 5)
  %612 = call { i64, i8* }* @make_astnode(%nyx_string* %576, { i64, i8* }* %577)
  ret { i64, i8* }* %612
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = getelementptr [7 x i8], [7 x i8]* @.str852, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str852.c, i8* %31, i64 6)
  %33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %32)
  %34 = getelementptr [11 x i8], [11 x i8]* @.str853, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str853.c, i8* %34, i64 10)
  %36 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %35)
  %37 = alloca %Token
  store %Token %36, %Token* %37
  %38 = call { i64, i8* }* @nyx_array_new_ptr()
  %39 = alloca { i64, i8* }*
  store { i64, i8* }* %38, { i64, i8* }** %39
  %40 = getelementptr [5 x i8], [5 x i8]* @.str854, i32 0, i32 0
  %41 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str854.c, i8* %40, i64 4)
  %42 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %41)
  br i1 %42, label %then0, label %else1
then0:
  %43 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %44 = getelementptr [9 x i8], [9 x i8]* @.str855, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str855.c, i8* %44, i64 8)
  %46 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %45)
  br i1 %46, label %then3, label %else4
then3:
  %47 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %48 = alloca %Token
  store %Token %47, %Token* %48
  %49 = load { i64, i8* }*, { i64, i8* }** %39
  %50 = load %Token, %Token* %48
  %51 = call %nyx_string* @get_token_value(%Token %50)
  %52 = ptrtoint %nyx_string* %51 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %49, i64 %52, i64 2)
  br label %merge5
else4:
  %53 = getelementptr [11 x i8], [11 x i8]* @.str856, i32 0, i32 0
  %54 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str856.c, i8* %53, i64 10)
  %55 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %54)
  %56 = alloca %Token
  store %Token %55, %Token* %56
  %57 = load { i64, i8* }*, { i64, i8* }** %39
  %58 = load %Token, %Token* %56
  %59 = call %nyx_string* @get_token_value(%Token %58)
  %60 = ptrtoint %nyx_string* %59 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %57, i64 %60, i64 2)
  br label %merge5
merge5:
  %61 = alloca i1
  store i1 0, i1* %61
  %62 = call i8* @llvm.stacksave()
  br label %while_cond6
while_cond6:
  %63 = load i1, i1* %61
  %64 = xor i1 %63, true
  br i1 %64, label %while_body7, label %while_end8
while_body7:
  call void @llvm.stackrestore(i8* %62)
  %65 = getelementptr [6 x i8], [6 x i8]* @.str857, i32 0, i32 0
  %66 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str857.c, i8* %65, i64 5)
  %67 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %66)
  br i1 %67, label %then9, label %else10
then9:
  %68 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %69 = getelementptr [9 x i8], [9 x i8]* @.str858, i32 0, i32 0
  %70 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str858.c, i8* %69, i64 8)
  %71 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %70)
  br i1 %71, label %then12, label %else13
then12:
  %72 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %73 = alloca %Token
  store %Token %72, %Token* %73
  %74 = load { i64, i8* }*, { i64, i8* }** %39
  %75 = load %Token, %Token* %73
  %76 = call %nyx_string* @get_token_value(%Token %75)
  %77 = ptrtoint %nyx_string* %76 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %74, i64 %77, i64 2)
  br label %merge14
else13:
  %78 = getelementptr [11 x i8], [11 x i8]* @.str859, i32 0, i32 0
  %79 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str859.c, i8* %78, i64 10)
  %80 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %79)
  %81 = alloca %Token
  store %Token %80, %Token* %81
  %82 = load { i64, i8* }*, { i64, i8* }** %39
  %83 = load %Token, %Token* %81
  %84 = call %nyx_string* @get_token_value(%Token %83)
  %85 = ptrtoint %nyx_string* %84 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %82, i64 %85, i64 2)
  br label %merge14
merge14:
  br label %merge11
else10:
  store i1 1, i1* %61
  br label %merge11
merge11:
  br label %while_cond6
while_end8:
  %86 = getelementptr [8 x i8], [8 x i8]* @.str860, i32 0, i32 0
  %87 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str860.c, i8* %86, i64 7)
  %88 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %87)
  br label %merge2
else1:
  br label %merge2
merge2:
  %89 = getelementptr [11 x i8], [11 x i8]* @.str861, i32 0, i32 0
  %90 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str861.c, i8* %89, i64 10)
  %91 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %90)
  br i1 %91, label %then15, label %else16
then15:
  %92 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %93 = call { i64, i8* }* @nyx_array_new_ptr()
  %94 = alloca { i64, i8* }*
  store { i64, i8* }* %93, { i64, i8* }** %94
  %95 = alloca i1
  store i1 0, i1* %95
  %96 = call i8* @llvm.stacksave()
  br label %while_cond18
while_cond18:
  %97 = load i1, i1* %95
  %98 = xor i1 %97, true
  br i1 %98, label %while_body19, label %while_end20
while_body19:
  call void @llvm.stackrestore(i8* %96)
  %99 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %100 = alloca %nyx_string*
  store %nyx_string* %99, %nyx_string** %100
  %101 = load { i64, i8* }*, { i64, i8* }** %94
  %102 = call { i64, i8* }* @nyx_array_new_ptr()
  %103 = getelementptr [2 x i8], [2 x i8]* @.str862, i32 0, i32 0
  %104 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str862.c, i8* %103, i64 1)
  %105 = load { i64, i8* }*, { i64, i8* }** %94
  %106 = call i64 @nyx_array_length({ i64, i8* }* %105)
  %107 = call %nyx_string* @nyx_string_from_int(i64 %106)
  %108 = call %nyx_string* @nyx_string_concat(%nyx_string* %104, %nyx_string* %107)
  %109 = ptrtoint %nyx_string* %108 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %102, i64 %109, i64 2)
  %110 = load %nyx_string*, %nyx_string** %100
  %111 = ptrtoint %nyx_string* %110 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %102, i64 %111, i64 2)
  %112 = ptrtoint { i64, i8* }* %102 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %101, i64 %112, i64 5)
  %113 = getelementptr [6 x i8], [6 x i8]* @.str863, i32 0, i32 0
  %114 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str863.c, i8* %113, i64 5)
  %115 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %114)
  br i1 %115, label %then21, label %else22
then21:
  %116 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %117 = getelementptr [12 x i8], [12 x i8]* @.str864, i32 0, i32 0
  %118 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str864.c, i8* %117, i64 11)
  %119 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %118)
  br i1 %119, label %then24, label %else25
then24:
  store i1 1, i1* %95
  br label %merge26
else25:
  br label %merge26
merge26:
  br label %merge23
else22:
  store i1 1, i1* %95
  br label %merge23
merge23:
  br label %while_cond18
while_end20:
  %120 = getelementptr [12 x i8], [12 x i8]* @.str865, i32 0, i32 0
  %121 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str865.c, i8* %120, i64 11)
  %122 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %121)
  %123 = getelementptr [7 x i8], [7 x i8]* @.str866, i32 0, i32 0
  %124 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str866.c, i8* %123, i64 6)
  %125 = call { i64, i8* }* @nyx_array_new_ptr()
  %126 = load %Token, %Token* %37
  %127 = call %nyx_string* @get_token_value(%Token %126)
  %128 = ptrtoint %nyx_string* %127 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %125, i64 %128, i64 2)
  %129 = load { i64, i8* }*, { i64, i8* }** %94
  %130 = ptrtoint { i64, i8* }* %129 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %125, i64 %130, i64 5)
  %131 = load { i64, i8* }*, { i64, i8* }** %39
  %132 = ptrtoint { i64, i8* }* %131 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %125, i64 %132, i64 5)
  %133 = call { i64, i8* }* @make_astnode(%nyx_string* %124, { i64, i8* }* %125)
  %134 = alloca { i64, i8* }*
  store { i64, i8* }* %133, { i64, i8* }** %134
  %135 = load { i64, i8* }*, { i64, i8* }** %134
  %136 = load %Token, %Token* %37
  %137 = call i64 @get_token_line(%Token %136)
  call void @nyx_array_set({ i64, i8* }* %135, i64 2, i64 %137)
  %138 = load { i64, i8* }*, { i64, i8* }** %134
  ret { i64, i8* }* %138
else16:
  br label %merge17
merge17:
  %139 = getelementptr [11 x i8], [11 x i8]* @.str867, i32 0, i32 0
  %140 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str867.c, i8* %139, i64 10)
  %141 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %140)
  %142 = call { i64, i8* }* @nyx_array_new_ptr()
  %143 = alloca { i64, i8* }*
  store { i64, i8* }* %142, { i64, i8* }** %143
  %144 = alloca i1
  store i1 0, i1* %144
  %145 = call i8* @llvm.stacksave()
  br label %while_cond27
while_cond27:
  %146 = load i1, i1* %144
  %147 = xor i1 %146, true
  br i1 %147, label %while_body28, label %while_end29
while_body28:
  call void @llvm.stackrestore(i8* %145)
  %148 = getelementptr [12 x i8], [12 x i8]* @.str868, i32 0, i32 0
  %149 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str868.c, i8* %148, i64 11)
  %150 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %149)
  br i1 %150, label %then30, label %else31
then30:
  %151 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %144
  br label %merge32
else31:
  %152 = load { i64, i8* }*, { i64, i8* }** %143
  %153 = call i64 @nyx_array_length({ i64, i8* }* %152)
  %154 = icmp sgt i64 %153, 0
  br i1 %154, label %then33, label %else34
then33:
  %155 = getelementptr [6 x i8], [6 x i8]* @.str869, i32 0, i32 0
  %156 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str869.c, i8* %155, i64 5)
  %157 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %156)
  br i1 %157, label %then36, label %else37
then36:
  %158 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %159 = getelementptr [12 x i8], [12 x i8]* @.str870, i32 0, i32 0
  %160 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str870.c, i8* %159, i64 11)
  %161 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %160)
  br i1 %161, label %then39, label %else40
then39:
  %162 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %144
  br label %merge41
else40:
  br label %merge41
merge41:
  br label %merge38
else37:
  br label %merge38
merge38:
  br label %merge35
else34:
  br label %merge35
merge35:
  %163 = load i1, i1* %144
  %164 = xor i1 %163, true
  br i1 %164, label %then42, label %else43
then42:
  %165 = getelementptr [11 x i8], [11 x i8]* @.str871, i32 0, i32 0
  %166 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str871.c, i8* %165, i64 10)
  %167 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %166)
  %168 = alloca %Token
  store %Token %167, %Token* %168
  %169 = getelementptr [6 x i8], [6 x i8]* @.str872, i32 0, i32 0
  %170 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str872.c, i8* %169, i64 5)
  %171 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %170)
  %172 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %173 = alloca %nyx_string*
  store %nyx_string* %172, %nyx_string** %173
  %174 = load { i64, i8* }*, { i64, i8* }** %143
  %175 = call { i64, i8* }* @nyx_array_new_ptr()
  %176 = load %Token, %Token* %168
  %177 = call %nyx_string* @get_token_value(%Token %176)
  %178 = ptrtoint %nyx_string* %177 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %175, i64 %178, i64 2)
  %179 = load %nyx_string*, %nyx_string** %173
  %180 = ptrtoint %nyx_string* %179 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %175, i64 %180, i64 2)
  %181 = ptrtoint { i64, i8* }* %175 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %174, i64 %181, i64 5)
  br label %merge44
else43:
  br label %merge44
merge44:
  br label %merge32
merge32:
  br label %while_cond27
while_end29:
  %182 = getelementptr [7 x i8], [7 x i8]* @.str873, i32 0, i32 0
  %183 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str873.c, i8* %182, i64 6)
  %184 = call { i64, i8* }* @nyx_array_new_ptr()
  %185 = load %Token, %Token* %37
  %186 = call %nyx_string* @get_token_value(%Token %185)
  %187 = ptrtoint %nyx_string* %186 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %184, i64 %187, i64 2)
  %188 = load { i64, i8* }*, { i64, i8* }** %143
  %189 = ptrtoint { i64, i8* }* %188 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %184, i64 %189, i64 5)
  %190 = load { i64, i8* }*, { i64, i8* }** %39
  %191 = ptrtoint { i64, i8* }* %190 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %184, i64 %191, i64 5)
  %192 = call { i64, i8* }* @make_astnode(%nyx_string* %183, { i64, i8* }* %184)
  %193 = alloca { i64, i8* }*
  store { i64, i8* }* %192, { i64, i8* }** %193
  %194 = load { i64, i8* }*, { i64, i8* }** %193
  %195 = load %Token, %Token* %37
  %196 = call i64 @get_token_line(%Token %195)
  call void @nyx_array_set({ i64, i8* }* %194, i64 2, i64 %196)
  %197 = load { i64, i8* }*, { i64, i8* }** %193
  ret { i64, i8* }* %197
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = getelementptr [3 x i8], [3 x i8]* @.str874, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str874.c, i8* %31, i64 2)
  %33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %32)
  %34 = getelementptr [4 x i8], [4 x i8]* @.str875, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str875.c, i8* %34, i64 3)
  %36 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %35)
  br i1 %36, label %then0, label %else1
then0:
  %37 = call { i64, i8* }* @parse__parse_if_let(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %37
else1:
  br label %merge2
merge2:
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
  %45 = getelementptr [6 x i8], [6 x i8]* @.str876, i32 0, i32 0
  %46 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str876.c, i8* %45, i64 5)
  %47 = call { i64, i8* }* @nyx_array_new_ptr()
  %48 = call { i64, i8* }* @make_astnode(%nyx_string* %46, { i64, i8* }* %47)
  %49 = alloca { i64, i8* }*
  store { i64, i8* }* %48, { i64, i8* }** %49
  %50 = getelementptr [5 x i8], [5 x i8]* @.str877, i32 0, i32 0
  %51 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str877.c, i8* %50, i64 4)
  %52 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %51)
  br i1 %52, label %then3, label %else4
then3:
  %53 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %54 = getelementptr [3 x i8], [3 x i8]* @.str878, i32 0, i32 0
  %55 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str878.c, i8* %54, i64 2)
  %56 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %55)
  br i1 %56, label %then6, label %else7
then6:
  %57 = call { i64, i8* }* @parse__parse_if(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %57, { i64, i8* }** %49
  br label %merge8
else7:
  %58 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %58, { i64, i8* }** %49
  br label %merge8
merge8:
  br label %merge5
else4:
  br label %merge5
merge5:
  %59 = getelementptr [3 x i8], [3 x i8]* @.str879, i32 0, i32 0
  %60 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str879.c, i8* %59, i64 2)
  %61 = call { i64, i8* }* @nyx_array_new_ptr()
  %62 = load { i64, i8* }*, { i64, i8* }** %41
  %63 = ptrtoint { i64, i8* }* %62 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %61, i64 %63, i64 5)
  %64 = load { i64, i8* }*, { i64, i8* }** %44
  %65 = ptrtoint { i64, i8* }* %64 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %61, i64 %65, i64 5)
  %66 = load { i64, i8* }*, { i64, i8* }** %49
  %67 = ptrtoint { i64, i8* }* %66 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %61, i64 %67, i64 5)
  %68 = call { i64, i8* }* @make_astnode(%nyx_string* %60, { i64, i8* }* %61)
  ret { i64, i8* }* %68
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = getelementptr [4 x i8], [4 x i8]* @.str880, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str880.c, i8* %31, i64 3)
  %33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %32)
  %34 = call { i64, i8* }* @parse__parse_single_pattern(%SharedEnv_parse* %env.param)
  %35 = alloca { i64, i8* }*
  store { i64, i8* }* %34, { i64, i8* }** %35
  %36 = getelementptr [7 x i8], [7 x i8]* @.str881, i32 0, i32 0
  %37 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str881.c, i8* %36, i64 6)
  %38 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %37)
  %39 = load i64, i64* %6
  %40 = alloca i64
  store i64 %39, i64* %40
  store i64 1, i64* %6
  %41 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %42 = alloca { i64, i8* }*
  store { i64, i8* }* %41, { i64, i8* }** %42
  %43 = load i64, i64* %40
  store i64 %43, i64* %6
  %44 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %45 = alloca { i64, i8* }*
  store { i64, i8* }* %44, { i64, i8* }** %45
  %46 = call { i64, i8* }* @nyx_array_new_ptr()
  %47 = alloca { i64, i8* }*
  store { i64, i8* }* %46, { i64, i8* }** %47
  %48 = getelementptr [6 x i8], [6 x i8]* @.str882, i32 0, i32 0
  %49 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str882.c, i8* %48, i64 5)
  %50 = call { i64, i8* }* @nyx_array_new_ptr()
  %51 = load { i64, i8* }*, { i64, i8* }** %47
  %52 = ptrtoint { i64, i8* }* %51 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %50, i64 %52, i64 5)
  %53 = call { i64, i8* }* @make_astnode(%nyx_string* %49, { i64, i8* }* %50)
  %54 = alloca { i64, i8* }*
  store { i64, i8* }* %53, { i64, i8* }** %54
  %55 = getelementptr [5 x i8], [5 x i8]* @.str883, i32 0, i32 0
  %56 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str883.c, i8* %55, i64 4)
  %57 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %56)
  br i1 %57, label %then0, label %else1
then0:
  %58 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %59 = getelementptr [11 x i8], [11 x i8]* @.str884, i32 0, i32 0
  %60 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str884.c, i8* %59, i64 10)
  %61 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %60)
  br i1 %61, label %then3, label %else4
then3:
  %62 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %62, { i64, i8* }** %54
  br label %merge5
else4:
  br label %merge5
merge5:
  br label %merge2
else1:
  br label %merge2
merge2:
  %63 = getelementptr [10 x i8], [10 x i8]* @.str885, i32 0, i32 0
  %64 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str885.c, i8* %63, i64 9)
  %65 = call { i64, i8* }* @nyx_array_new_ptr()
  %66 = load { i64, i8* }*, { i64, i8* }** %35
  %67 = ptrtoint { i64, i8* }* %66 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %65, i64 %67, i64 5)
  %68 = load { i64, i8* }*, { i64, i8* }** %45
  %69 = ptrtoint { i64, i8* }* %68 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %65, i64 %69, i64 5)
  %70 = getelementptr [6 x i8], [6 x i8]* @.str886, i32 0, i32 0
  %71 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str886.c, i8* %70, i64 5)
  %72 = call { i64, i8* }* @nyx_array_new_ptr()
  %73 = call { i64, i8* }* @make_astnode(%nyx_string* %71, { i64, i8* }* %72)
  %74 = ptrtoint { i64, i8* }* %73 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %65, i64 %74, i64 5)
  %75 = call { i64, i8* }* @make_astnode(%nyx_string* %64, { i64, i8* }* %65)
  %76 = alloca { i64, i8* }*
  store { i64, i8* }* %75, { i64, i8* }** %76
  %77 = getelementptr [9 x i8], [9 x i8]* @.str887, i32 0, i32 0
  %78 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str887.c, i8* %77, i64 8)
  %79 = call { i64, i8* }* @nyx_array_new_ptr()
  %80 = call { i64, i8* }* @make_astnode(%nyx_string* %78, { i64, i8* }* %79)
  %81 = alloca { i64, i8* }*
  store { i64, i8* }* %80, { i64, i8* }** %81
  %82 = getelementptr [10 x i8], [10 x i8]* @.str888, i32 0, i32 0
  %83 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str888.c, i8* %82, i64 9)
  %84 = call { i64, i8* }* @nyx_array_new_ptr()
  %85 = load { i64, i8* }*, { i64, i8* }** %81
  %86 = ptrtoint { i64, i8* }* %85 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %84, i64 %86, i64 5)
  %87 = load { i64, i8* }*, { i64, i8* }** %54
  %88 = ptrtoint { i64, i8* }* %87 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %84, i64 %88, i64 5)
  %89 = getelementptr [6 x i8], [6 x i8]* @.str889, i32 0, i32 0
  %90 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str889.c, i8* %89, i64 5)
  %91 = call { i64, i8* }* @nyx_array_new_ptr()
  %92 = call { i64, i8* }* @make_astnode(%nyx_string* %90, { i64, i8* }* %91)
  %93 = ptrtoint { i64, i8* }* %92 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %84, i64 %93, i64 5)
  %94 = call { i64, i8* }* @make_astnode(%nyx_string* %83, { i64, i8* }* %84)
  %95 = alloca { i64, i8* }*
  store { i64, i8* }* %94, { i64, i8* }** %95
  %96 = call { i64, i8* }* @nyx_array_new_ptr()
  %97 = alloca { i64, i8* }*
  store { i64, i8* }* %96, { i64, i8* }** %97
  %98 = load { i64, i8* }*, { i64, i8* }** %97
  %99 = load { i64, i8* }*, { i64, i8* }** %76
  %100 = ptrtoint { i64, i8* }* %99 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %98, i64 %100, i64 5)
  %101 = load { i64, i8* }*, { i64, i8* }** %97
  %102 = load { i64, i8* }*, { i64, i8* }** %95
  %103 = ptrtoint { i64, i8* }* %102 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %101, i64 %103, i64 5)
  %104 = getelementptr [6 x i8], [6 x i8]* @.str890, i32 0, i32 0
  %105 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str890.c, i8* %104, i64 5)
  %106 = call { i64, i8* }* @nyx_array_new_ptr()
  %107 = load { i64, i8* }*, { i64, i8* }** %42
  %108 = ptrtoint { i64, i8* }* %107 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %106, i64 %108, i64 5)
  %109 = load { i64, i8* }*, { i64, i8* }** %97
  %110 = ptrtoint { i64, i8* }* %109 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %106, i64 %110, i64 5)
  %111 = call { i64, i8* }* @make_astnode(%nyx_string* %105, { i64, i8* }* %106)
  ret { i64, i8* }* %111
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = getelementptr [6 x i8], [6 x i8]* @.str891, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str891.c, i8* %31, i64 5)
  %33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %32)
  %34 = getelementptr [4 x i8], [4 x i8]* @.str892, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str892.c, i8* %34, i64 3)
  %36 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %35)
  br i1 %36, label %then0, label %else1
then0:
  %37 = call { i64, i8* }* @parse__parse_while_let(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %37
else1:
  br label %merge2
merge2:
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
  %45 = getelementptr [6 x i8], [6 x i8]* @.str893, i32 0, i32 0
  %46 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str893.c, i8* %45, i64 5)
  %47 = call { i64, i8* }* @nyx_array_new_ptr()
  %48 = load { i64, i8* }*, { i64, i8* }** %41
  %49 = ptrtoint { i64, i8* }* %48 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %47, i64 %49, i64 5)
  %50 = load { i64, i8* }*, { i64, i8* }** %44
  %51 = ptrtoint { i64, i8* }* %50 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %47, i64 %51, i64 5)
  %52 = call { i64, i8* }* @make_astnode(%nyx_string* %46, { i64, i8* }* %47)
  ret { i64, i8* }* %52
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = getelementptr [4 x i8], [4 x i8]* @.str894, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str894.c, i8* %31, i64 3)
  %33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %32)
  %34 = call { i64, i8* }* @parse__parse_single_pattern(%SharedEnv_parse* %env.param)
  %35 = alloca { i64, i8* }*
  store { i64, i8* }* %34, { i64, i8* }** %35
  %36 = getelementptr [7 x i8], [7 x i8]* @.str895, i32 0, i32 0
  %37 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str895.c, i8* %36, i64 6)
  %38 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %37)
  %39 = load i64, i64* %6
  %40 = alloca i64
  store i64 %39, i64* %40
  store i64 1, i64* %6
  %41 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %42 = alloca { i64, i8* }*
  store { i64, i8* }* %41, { i64, i8* }** %42
  %43 = load i64, i64* %40
  store i64 %43, i64* %6
  %44 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %45 = alloca { i64, i8* }*
  store { i64, i8* }* %44, { i64, i8* }** %45
  %46 = getelementptr [10 x i8], [10 x i8]* @.str896, i32 0, i32 0
  %47 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str896.c, i8* %46, i64 9)
  %48 = call { i64, i8* }* @nyx_array_new_ptr()
  %49 = load { i64, i8* }*, { i64, i8* }** %35
  %50 = ptrtoint { i64, i8* }* %49 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %48, i64 %50, i64 5)
  %51 = load { i64, i8* }*, { i64, i8* }** %42
  %52 = ptrtoint { i64, i8* }* %51 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %48, i64 %52, i64 5)
  %53 = load { i64, i8* }*, { i64, i8* }** %45
  %54 = ptrtoint { i64, i8* }* %53 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %48, i64 %54, i64 5)
  %55 = call { i64, i8* }* @make_astnode(%nyx_string* %47, { i64, i8* }* %48)
  ret { i64, i8* }* %55
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = getelementptr [4 x i8], [4 x i8]* @.str897, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str897.c, i8* %31, i64 3)
  %33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %32)
  %34 = getelementptr [11 x i8], [11 x i8]* @.str898, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str898.c, i8* %34, i64 10)
  %36 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %35)
  %37 = alloca %Token
  store %Token %36, %Token* %37
  %38 = getelementptr [1 x i8], [1 x i8]* @.str899, i32 0, i32 0
  %39 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str899.c, i8* %38, i64 0)
  %40 = alloca %nyx_string*
  store %nyx_string* %39, %nyx_string** %40
  %41 = getelementptr [6 x i8], [6 x i8]* @.str900, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str900.c, i8* %41, i64 5)
  %43 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %42)
  br i1 %43, label %then0, label %else1
then0:
  %44 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %45 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %45, %nyx_string** %40
  br label %merge2
else1:
  br label %merge2
merge2:
  %46 = getelementptr [3 x i8], [3 x i8]* @.str901, i32 0, i32 0
  %47 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str901.c, i8* %46, i64 2)
  %48 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %47)
  %49 = load i64, i64* %6
  %50 = alloca i64
  store i64 %49, i64* %50
  store i64 1, i64* %6
  %51 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %52 = alloca { i64, i8* }*
  store { i64, i8* }* %51, { i64, i8* }** %52
  %53 = load i64, i64* %50
  store i64 %53, i64* %6
  %54 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %55 = alloca { i64, i8* }*
  store { i64, i8* }* %54, { i64, i8* }** %55
  %56 = getelementptr [4 x i8], [4 x i8]* @.str902, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str902.c, i8* %56, i64 3)
  %58 = call { i64, i8* }* @nyx_array_new_ptr()
  %59 = load %Token, %Token* %37
  %60 = call %nyx_string* @get_token_value(%Token %59)
  %61 = ptrtoint %nyx_string* %60 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %58, i64 %61, i64 2)
  %62 = load { i64, i8* }*, { i64, i8* }** %52
  %63 = ptrtoint { i64, i8* }* %62 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %58, i64 %63, i64 5)
  %64 = load { i64, i8* }*, { i64, i8* }** %55
  %65 = ptrtoint { i64, i8* }* %64 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %58, i64 %65, i64 5)
  %66 = load %nyx_string*, %nyx_string** %40
  %67 = ptrtoint %nyx_string* %66 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %58, i64 %67, i64 2)
  %68 = call { i64, i8* }* @make_astnode(%nyx_string* %57, { i64, i8* }* %58)
  ret { i64, i8* }* %68
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = getelementptr [7 x i8], [7 x i8]* @.str903, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str903.c, i8* %31, i64 6)
  %33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %32)
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
  %40 = getelementptr [12 x i8], [12 x i8]* @.str904, i32 0, i32 0
  %41 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str904.c, i8* %40, i64 11)
  %42 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %41)
  br i1 %42, label %sc_or_end1, label %sc_or_rhs0
sc_or_rhs0:
  %43 = getelementptr [4 x i8], [4 x i8]* @.str905, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str905.c, i8* %43, i64 3)
  %45 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %44)
  store i1 %45, i1* %39
  br label %sc_or_end1
sc_or_end1:
  %46 = load i1, i1* %39
  br i1 %46, label %sc_or_end3, label %sc_or_rhs2
sc_or_rhs2:
  %47 = getelementptr [4 x i8], [4 x i8]* @.str906, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str906.c, i8* %47, i64 3)
  %49 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %48)
  store i1 %49, i1* %38
  br label %sc_or_end3
sc_or_end3:
  %50 = load i1, i1* %38
  br i1 %50, label %sc_or_end5, label %sc_or_rhs4
sc_or_rhs4:
  %51 = getelementptr [4 x i8], [4 x i8]* @.str907, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str907.c, i8* %51, i64 3)
  %53 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %52)
  store i1 %53, i1* %37
  br label %sc_or_end5
sc_or_end5:
  %54 = load i1, i1* %37
  br i1 %54, label %sc_or_end7, label %sc_or_rhs6
sc_or_rhs6:
  %55 = getelementptr [6 x i8], [6 x i8]* @.str908, i32 0, i32 0
  %56 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str908.c, i8* %55, i64 5)
  %57 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %56)
  store i1 %57, i1* %36
  br label %sc_or_end7
sc_or_end7:
  %58 = load i1, i1* %36
  br i1 %58, label %sc_or_end9, label %sc_or_rhs8
sc_or_rhs8:
  %59 = getelementptr [4 x i8], [4 x i8]* @.str909, i32 0, i32 0
  %60 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str909.c, i8* %59, i64 3)
  %61 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %60)
  store i1 %61, i1* %35
  br label %sc_or_end9
sc_or_end9:
  %62 = load i1, i1* %35
  br i1 %62, label %sc_or_end11, label %sc_or_rhs10
sc_or_rhs10:
  %63 = getelementptr [7 x i8], [7 x i8]* @.str910, i32 0, i32 0
  %64 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str910.c, i8* %63, i64 6)
  %65 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %64)
  store i1 %65, i1* %34
  br label %sc_or_end11
sc_or_end11:
  %66 = load i1, i1* %34
  br i1 %66, label %then12, label %else13
then12:
  %67 = getelementptr [8 x i8], [8 x i8]* @.str911, i32 0, i32 0
  %68 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str911.c, i8* %67, i64 7)
  %69 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %69, i64 0, i64 1)
  %70 = call { i64, i8* }* @make_astnode(%nyx_string* %68, { i64, i8* }* %69)
  %71 = alloca { i64, i8* }*
  store { i64, i8* }* %70, { i64, i8* }** %71
  %72 = getelementptr [7 x i8], [7 x i8]* @.str912, i32 0, i32 0
  %73 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str912.c, i8* %72, i64 6)
  %74 = call { i64, i8* }* @nyx_array_new_ptr()
  %75 = load { i64, i8* }*, { i64, i8* }** %71
  %76 = ptrtoint { i64, i8* }* %75 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %74, i64 %76, i64 5)
  %77 = call { i64, i8* }* @make_astnode(%nyx_string* %73, { i64, i8* }* %74)
  ret { i64, i8* }* %77
else13:
  br label %merge14
merge14:
  %78 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %79 = alloca { i64, i8* }*
  store { i64, i8* }* %78, { i64, i8* }** %79
  %80 = getelementptr [7 x i8], [7 x i8]* @.str913, i32 0, i32 0
  %81 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str913.c, i8* %80, i64 6)
  %82 = call { i64, i8* }* @nyx_array_new_ptr()
  %83 = load { i64, i8* }*, { i64, i8* }** %79
  %84 = ptrtoint { i64, i8* }* %83 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %82, i64 %84, i64 5)
  %85 = call { i64, i8* }* @make_astnode(%nyx_string* %81, { i64, i8* }* %82)
  ret { i64, i8* }* %85
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = getelementptr [7 x i8], [7 x i8]* @.str914, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str914.c, i8* %31, i64 6)
  %33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %32)
  %34 = getelementptr [3 x i8], [3 x i8]* @.str915, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str915.c, i8* %34, i64 2)
  %36 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %35)
  br i1 %36, label %then0, label %else1
then0:
  %37 = call { i64, i8* }* @parse__parse_function(%SharedEnv_parse* %env.param)
  %38 = alloca { i64, i8* }*
  store { i64, i8* }* %37, { i64, i8* }** %38
  %39 = getelementptr [7 x i8], [7 x i8]* @.str916, i32 0, i32 0
  %40 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str916.c, i8* %39, i64 6)
  %41 = call { i64, i8* }* @nyx_array_new_ptr()
  %42 = load { i64, i8* }*, { i64, i8* }** %38
  %43 = ptrtoint { i64, i8* }* %42 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %41, i64 %43, i64 5)
  %44 = call { i64, i8* }* @make_astnode(%nyx_string* %40, { i64, i8* }* %41)
  ret { i64, i8* }* %44
else1:
  br label %merge2
merge2:
  %45 = getelementptr [6 x i8], [6 x i8]* @.str917, i32 0, i32 0
  %46 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str917.c, i8* %45, i64 5)
  %47 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %46)
  br i1 %47, label %then3, label %else4
then3:
  %48 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %49 = call { i64, i8* }* @parse__parse_async_function(%SharedEnv_parse* %env.param)
  %50 = alloca { i64, i8* }*
  store { i64, i8* }* %49, { i64, i8* }** %50
  %51 = getelementptr [7 x i8], [7 x i8]* @.str918, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str918.c, i8* %51, i64 6)
  %53 = call { i64, i8* }* @nyx_array_new_ptr()
  %54 = load { i64, i8* }*, { i64, i8* }** %50
  %55 = ptrtoint { i64, i8* }* %54 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %53, i64 %55, i64 5)
  %56 = call { i64, i8* }* @make_astnode(%nyx_string* %52, { i64, i8* }* %53)
  ret { i64, i8* }* %56
else4:
  br label %merge5
merge5:
  %57 = getelementptr [7 x i8], [7 x i8]* @.str919, i32 0, i32 0
  %58 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str919.c, i8* %57, i64 6)
  %59 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %58)
  br i1 %59, label %then6, label %else7
then6:
  %60 = call { i64, i8* }* @parse__parse_struct(%SharedEnv_parse* %env.param)
  %61 = alloca { i64, i8* }*
  store { i64, i8* }* %60, { i64, i8* }** %61
  %62 = getelementptr [7 x i8], [7 x i8]* @.str920, i32 0, i32 0
  %63 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str920.c, i8* %62, i64 6)
  %64 = call { i64, i8* }* @nyx_array_new_ptr()
  %65 = load { i64, i8* }*, { i64, i8* }** %61
  %66 = ptrtoint { i64, i8* }* %65 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %64, i64 %66, i64 5)
  %67 = call { i64, i8* }* @make_astnode(%nyx_string* %63, { i64, i8* }* %64)
  ret { i64, i8* }* %67
else7:
  br label %merge8
merge8:
  %68 = getelementptr [5 x i8], [5 x i8]* @.str921, i32 0, i32 0
  %69 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str921.c, i8* %68, i64 4)
  %70 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %69)
  br i1 %70, label %then9, label %else10
then9:
  %71 = call { i64, i8* }* @parse__parse_enum(%SharedEnv_parse* %env.param)
  %72 = alloca { i64, i8* }*
  store { i64, i8* }* %71, { i64, i8* }** %72
  %73 = getelementptr [7 x i8], [7 x i8]* @.str922, i32 0, i32 0
  %74 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str922.c, i8* %73, i64 6)
  %75 = call { i64, i8* }* @nyx_array_new_ptr()
  %76 = load { i64, i8* }*, { i64, i8* }** %72
  %77 = ptrtoint { i64, i8* }* %76 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %75, i64 %77, i64 5)
  %78 = call { i64, i8* }* @make_astnode(%nyx_string* %74, { i64, i8* }* %75)
  ret { i64, i8* }* %78
else10:
  br label %merge11
merge11:
  %79 = getelementptr [6 x i8], [6 x i8]* @.str923, i32 0, i32 0
  %80 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str923.c, i8* %79, i64 5)
  %81 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %80)
  br i1 %81, label %then12, label %else13
then12:
  %82 = call { i64, i8* }* @parse__parse_trait(%SharedEnv_parse* %env.param)
  %83 = alloca { i64, i8* }*
  store { i64, i8* }* %82, { i64, i8* }** %83
  %84 = getelementptr [7 x i8], [7 x i8]* @.str924, i32 0, i32 0
  %85 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str924.c, i8* %84, i64 6)
  %86 = call { i64, i8* }* @nyx_array_new_ptr()
  %87 = load { i64, i8* }*, { i64, i8* }** %83
  %88 = ptrtoint { i64, i8* }* %87 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %86, i64 %88, i64 5)
  %89 = call { i64, i8* }* @make_astnode(%nyx_string* %85, { i64, i8* }* %86)
  ret { i64, i8* }* %89
else13:
  br label %merge14
merge14:
  %90 = getelementptr [11 x i8], [11 x i8]* @.str925, i32 0, i32 0
  %91 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str925.c, i8* %90, i64 10)
  %92 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %91)
  br i1 %92, label %then15, label %else16
then15:
  %93 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %94 = call %nyx_string* @get_token_value(%Token %93)
  %95 = getelementptr [5 x i8], [5 x i8]* @.str926, i32 0, i32 0
  %96 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str926.c, i8* %95, i64 4)
  %97 = call i1 @nyx_string_equals(%nyx_string* %94, %nyx_string* %96)
  br i1 %97, label %then18, label %else19
then18:
  %98 = call { i64, i8* }* @parse__parse_type_alias(%SharedEnv_parse* %env.param)
  %99 = alloca { i64, i8* }*
  store { i64, i8* }* %98, { i64, i8* }** %99
  %100 = getelementptr [7 x i8], [7 x i8]* @.str927, i32 0, i32 0
  %101 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str927.c, i8* %100, i64 6)
  %102 = call { i64, i8* }* @nyx_array_new_ptr()
  %103 = load { i64, i8* }*, { i64, i8* }** %99
  %104 = ptrtoint { i64, i8* }* %103 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %102, i64 %104, i64 5)
  %105 = call { i64, i8* }* @make_astnode(%nyx_string* %101, { i64, i8* }* %102)
  ret { i64, i8* }* %105
else19:
  br label %merge20
merge20:
  br label %merge17
else16:
  br label %merge17
merge17:
  %106 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %107 = alloca %Token
  store %Token %106, %Token* %107
  %108 = getelementptr [8 x i8], [8 x i8]* @.str928, i32 0, i32 0
  %109 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str928.c, i8* %108, i64 7)
  %110 = load %Token, %Token* %107
  %111 = call i64 @get_token_line(%Token %110)
  %112 = load %Token, %Token* %107
  %113 = call i64 @get_token_column(%Token %112)
  %114 = getelementptr [58 x i8], [58 x i8]* @.str929, i32 0, i32 0
  %115 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str929.c, i8* %114, i64 57)
  %116 = getelementptr [56 x i8], [56 x i8]* @.str930, i32 0, i32 0
  %117 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str930.c, i8* %116, i64 55)
  %118 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %115, %nyx_string* %117)
  %119 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %109, i64 %111, i64 %113, %nyx_string* %118)
  %120 = getelementptr [6 x i8], [6 x i8]* @.str931, i32 0, i32 0
  %121 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str931.c, i8* %120, i64 5)
  %122 = call { i64, i8* }* @nyx_array_new_ptr()
  %123 = call { i64, i8* }* @make_astnode(%nyx_string* %121, { i64, i8* }* %122)
  ret { i64, i8* }* %123
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = getelementptr [7 x i8], [7 x i8]* @.str932, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str932.c, i8* %31, i64 6)
  %33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %32)
  %34 = getelementptr [7 x i8], [7 x i8]* @.str933, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str933.c, i8* %34, i64 6)
  %36 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %35)
  br i1 %36, label %then0, label %else1
then0:
  %37 = getelementptr [7 x i8], [7 x i8]* @.str934, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str934.c, i8* %37, i64 6)
  %39 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %38)
  %40 = alloca %Token
  store %Token %39, %Token* %40
  %41 = load %Token, %Token* %40
  %42 = call %nyx_string* @get_token_value(%Token %41)
  %43 = alloca %nyx_string*
  store %nyx_string* %42, %nyx_string** %43
  %44 = getelementptr [1 x i8], [1 x i8]* @.str935, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str935.c, i8* %44, i64 0)
  %46 = alloca %nyx_string*
  store %nyx_string* %45, %nyx_string** %46
  %47 = getelementptr [3 x i8], [3 x i8]* @.str936, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str936.c, i8* %47, i64 2)
  %49 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %48)
  br i1 %49, label %then3, label %else4
then3:
  %50 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %51 = getelementptr [11 x i8], [11 x i8]* @.str937, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str937.c, i8* %51, i64 10)
  %53 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %52)
  %54 = alloca %Token
  store %Token %53, %Token* %54
  %55 = load %Token, %Token* %54
  %56 = call %nyx_string* @get_token_value(%Token %55)
  store %nyx_string* %56, %nyx_string** %46
  br label %merge5
else4:
  br label %merge5
merge5:
  %57 = getelementptr [14 x i8], [14 x i8]* @.str938, i32 0, i32 0
  %58 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str938.c, i8* %57, i64 13)
  %59 = call { i64, i8* }* @nyx_array_new_ptr()
  %60 = load %nyx_string*, %nyx_string** %43
  %61 = ptrtoint %nyx_string* %60 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %59, i64 %61, i64 2)
  %62 = load %nyx_string*, %nyx_string** %46
  %63 = ptrtoint %nyx_string* %62 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %59, i64 %63, i64 2)
  %64 = call { i64, i8* }* @make_astnode(%nyx_string* %58, { i64, i8* }* %59)
  ret { i64, i8* }* %64
else1:
  br label %merge2
merge2:
  %65 = getelementptr [11 x i8], [11 x i8]* @.str939, i32 0, i32 0
  %66 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str939.c, i8* %65, i64 10)
  %67 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %66)
  %68 = call { i64, i8* }* @nyx_array_new_ptr()
  %69 = alloca { i64, i8* }*
  store { i64, i8* }* %68, { i64, i8* }** %69
  %70 = alloca i1
  store i1 0, i1* %70
  %71 = call i8* @llvm.stacksave()
  br label %while_cond6
while_cond6:
  %72 = load i1, i1* %70
  %73 = xor i1 %72, true
  br i1 %73, label %while_body7, label %while_end8
while_body7:
  call void @llvm.stackrestore(i8* %71)
  %74 = getelementptr [11 x i8], [11 x i8]* @.str940, i32 0, i32 0
  %75 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str940.c, i8* %74, i64 10)
  %76 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %75)
  %77 = alloca %Token
  store %Token %76, %Token* %77
  %78 = load %Token, %Token* %77
  %79 = call %nyx_string* @get_token_value(%Token %78)
  %80 = alloca %nyx_string*
  store %nyx_string* %79, %nyx_string** %80
  %81 = load { i64, i8* }*, { i64, i8* }** %69
  %82 = load %nyx_string*, %nyx_string** %80
  %83 = ptrtoint %nyx_string* %82 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %81, i64 %83, i64 2)
  %84 = getelementptr [6 x i8], [6 x i8]* @.str941, i32 0, i32 0
  %85 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str941.c, i8* %84, i64 5)
  %86 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %85)
  br i1 %86, label %then9, label %else10
then9:
  %87 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge11
else10:
  store i1 1, i1* %70
  br label %merge11
merge11:
  br label %while_cond6
while_end8:
  %88 = getelementptr [12 x i8], [12 x i8]* @.str942, i32 0, i32 0
  %89 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str942.c, i8* %88, i64 11)
  %90 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %89)
  %91 = getelementptr [5 x i8], [5 x i8]* @.str943, i32 0, i32 0
  %92 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str943.c, i8* %91, i64 4)
  %93 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %92)
  %94 = getelementptr [7 x i8], [7 x i8]* @.str944, i32 0, i32 0
  %95 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str944.c, i8* %94, i64 6)
  %96 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %95)
  %97 = alloca %Token
  store %Token %96, %Token* %97
  %98 = load %Token, %Token* %97
  %99 = call %nyx_string* @get_token_value(%Token %98)
  %100 = alloca %nyx_string*
  store %nyx_string* %99, %nyx_string** %100
  %101 = getelementptr [7 x i8], [7 x i8]* @.str945, i32 0, i32 0
  %102 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str945.c, i8* %101, i64 6)
  %103 = call { i64, i8* }* @nyx_array_new_ptr()
  %104 = load { i64, i8* }*, { i64, i8* }** %69
  %105 = ptrtoint { i64, i8* }* %104 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %103, i64 %105, i64 5)
  %106 = load %nyx_string*, %nyx_string** %100
  %107 = ptrtoint %nyx_string* %106 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %103, i64 %107, i64 2)
  %108 = call { i64, i8* }* @make_astnode(%nyx_string* %102, { i64, i8* }* %103)
  ret { i64, i8* }* %108
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = getelementptr [4 x i8], [4 x i8]* @.str946, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str946.c, i8* %31, i64 3)
  %33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %32)
  %34 = getelementptr [3 x i8], [3 x i8]* @.str947, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str947.c, i8* %34, i64 2)
  %36 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %35)
  br i1 %36, label %then0, label %else1
then0:
  %37 = call { i64, i8* }* @parse__parse_function(%SharedEnv_parse* %env.param)
  %38 = alloca { i64, i8* }*
  store { i64, i8* }* %37, { i64, i8* }** %38
  %39 = getelementptr [7 x i8], [7 x i8]* @.str948, i32 0, i32 0
  %40 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str948.c, i8* %39, i64 6)
  %41 = call { i64, i8* }* @nyx_array_new_ptr()
  %42 = load { i64, i8* }*, { i64, i8* }** %38
  %43 = ptrtoint { i64, i8* }* %42 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %41, i64 %43, i64 5)
  %44 = call { i64, i8* }* @make_astnode(%nyx_string* %40, { i64, i8* }* %41)
  ret { i64, i8* }* %44
else1:
  br label %merge2
merge2:
  %45 = getelementptr [6 x i8], [6 x i8]* @.str949, i32 0, i32 0
  %46 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str949.c, i8* %45, i64 5)
  %47 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %46)
  br i1 %47, label %then3, label %else4
then3:
  %48 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %49 = call { i64, i8* }* @parse__parse_async_function(%SharedEnv_parse* %env.param)
  %50 = alloca { i64, i8* }*
  store { i64, i8* }* %49, { i64, i8* }** %50
  %51 = getelementptr [7 x i8], [7 x i8]* @.str950, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str950.c, i8* %51, i64 6)
  %53 = call { i64, i8* }* @nyx_array_new_ptr()
  %54 = load { i64, i8* }*, { i64, i8* }** %50
  %55 = ptrtoint { i64, i8* }* %54 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %53, i64 %55, i64 5)
  %56 = call { i64, i8* }* @make_astnode(%nyx_string* %52, { i64, i8* }* %53)
  ret { i64, i8* }* %56
else4:
  br label %merge5
merge5:
  %57 = getelementptr [7 x i8], [7 x i8]* @.str951, i32 0, i32 0
  %58 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str951.c, i8* %57, i64 6)
  %59 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %58)
  br i1 %59, label %then6, label %else7
then6:
  %60 = call { i64, i8* }* @parse__parse_struct(%SharedEnv_parse* %env.param)
  %61 = alloca { i64, i8* }*
  store { i64, i8* }* %60, { i64, i8* }** %61
  %62 = getelementptr [7 x i8], [7 x i8]* @.str952, i32 0, i32 0
  %63 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str952.c, i8* %62, i64 6)
  %64 = call { i64, i8* }* @nyx_array_new_ptr()
  %65 = load { i64, i8* }*, { i64, i8* }** %61
  %66 = ptrtoint { i64, i8* }* %65 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %64, i64 %66, i64 5)
  %67 = call { i64, i8* }* @make_astnode(%nyx_string* %63, { i64, i8* }* %64)
  ret { i64, i8* }* %67
else7:
  br label %merge8
merge8:
  %68 = getelementptr [5 x i8], [5 x i8]* @.str953, i32 0, i32 0
  %69 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str953.c, i8* %68, i64 4)
  %70 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %69)
  br i1 %70, label %then9, label %else10
then9:
  %71 = call { i64, i8* }* @parse__parse_enum(%SharedEnv_parse* %env.param)
  %72 = alloca { i64, i8* }*
  store { i64, i8* }* %71, { i64, i8* }** %72
  %73 = getelementptr [7 x i8], [7 x i8]* @.str954, i32 0, i32 0
  %74 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str954.c, i8* %73, i64 6)
  %75 = call { i64, i8* }* @nyx_array_new_ptr()
  %76 = load { i64, i8* }*, { i64, i8* }** %72
  %77 = ptrtoint { i64, i8* }* %76 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %75, i64 %77, i64 5)
  %78 = call { i64, i8* }* @make_astnode(%nyx_string* %74, { i64, i8* }* %75)
  ret { i64, i8* }* %78
else10:
  br label %merge11
merge11:
  %79 = getelementptr [6 x i8], [6 x i8]* @.str955, i32 0, i32 0
  %80 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str955.c, i8* %79, i64 5)
  %81 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %80)
  br i1 %81, label %then12, label %else13
then12:
  %82 = call { i64, i8* }* @parse__parse_trait(%SharedEnv_parse* %env.param)
  %83 = alloca { i64, i8* }*
  store { i64, i8* }* %82, { i64, i8* }** %83
  %84 = getelementptr [7 x i8], [7 x i8]* @.str956, i32 0, i32 0
  %85 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str956.c, i8* %84, i64 6)
  %86 = call { i64, i8* }* @nyx_array_new_ptr()
  %87 = load { i64, i8* }*, { i64, i8* }** %83
  %88 = ptrtoint { i64, i8* }* %87 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %86, i64 %88, i64 5)
  %89 = call { i64, i8* }* @make_astnode(%nyx_string* %85, { i64, i8* }* %86)
  ret { i64, i8* }* %89
else13:
  br label %merge14
merge14:
  %90 = getelementptr [11 x i8], [11 x i8]* @.str957, i32 0, i32 0
  %91 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str957.c, i8* %90, i64 10)
  %92 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %91)
  br i1 %92, label %then15, label %else16
then15:
  %93 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %94 = call %nyx_string* @get_token_value(%Token %93)
  %95 = getelementptr [5 x i8], [5 x i8]* @.str958, i32 0, i32 0
  %96 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str958.c, i8* %95, i64 4)
  %97 = call i1 @nyx_string_equals(%nyx_string* %94, %nyx_string* %96)
  br i1 %97, label %then18, label %else19
then18:
  %98 = call { i64, i8* }* @parse__parse_type_alias(%SharedEnv_parse* %env.param)
  %99 = alloca { i64, i8* }*
  store { i64, i8* }* %98, { i64, i8* }** %99
  %100 = getelementptr [7 x i8], [7 x i8]* @.str959, i32 0, i32 0
  %101 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str959.c, i8* %100, i64 6)
  %102 = call { i64, i8* }* @nyx_array_new_ptr()
  %103 = load { i64, i8* }*, { i64, i8* }** %99
  %104 = ptrtoint { i64, i8* }* %103 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %102, i64 %104, i64 5)
  %105 = call { i64, i8* }* @make_astnode(%nyx_string* %101, { i64, i8* }* %102)
  ret { i64, i8* }* %105
else19:
  br label %merge20
merge20:
  br label %merge17
else16:
  br label %merge17
merge17:
  %106 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %107 = alloca %Token
  store %Token %106, %Token* %107
  %108 = getelementptr [8 x i8], [8 x i8]* @.str960, i32 0, i32 0
  %109 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str960.c, i8* %108, i64 7)
  %110 = load %Token, %Token* %107
  %111 = call i64 @get_token_line(%Token %110)
  %112 = load %Token, %Token* %107
  %113 = call i64 @get_token_column(%Token %112)
  %114 = getelementptr [55 x i8], [55 x i8]* @.str961, i32 0, i32 0
  %115 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str961.c, i8* %114, i64 54)
  %116 = getelementptr [53 x i8], [53 x i8]* @.str962, i32 0, i32 0
  %117 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str962.c, i8* %116, i64 52)
  %118 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %115, %nyx_string* %117)
  %119 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %109, i64 %111, i64 %113, %nyx_string* %118)
  %120 = getelementptr [6 x i8], [6 x i8]* @.str963, i32 0, i32 0
  %121 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str963.c, i8* %120, i64 5)
  %122 = call { i64, i8* }* @nyx_array_new_ptr()
  %123 = call { i64, i8* }* @make_astnode(%nyx_string* %121, { i64, i8* }* %122)
  ret { i64, i8* }* %123
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = getelementptr [7 x i8], [7 x i8]* @.str964, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str964.c, i8* %31, i64 6)
  %33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %32)
  %34 = getelementptr [11 x i8], [11 x i8]* @.str965, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str965.c, i8* %34, i64 10)
  %36 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %35)
  %37 = alloca %Token
  store %Token %36, %Token* %37
  %38 = load %Token, %Token* %37
  %39 = call %nyx_string* @get_token_value(%Token %38)
  %40 = alloca %nyx_string*
  store %nyx_string* %39, %nyx_string** %40
  %41 = getelementptr [7 x i8], [7 x i8]* @.str966, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str966.c, i8* %41, i64 6)
  %43 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %42)
  %44 = getelementptr [1 x i8], [1 x i8]* @.str967, i32 0, i32 0
  %45 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str967.c, i8* %44, i64 0)
  %46 = alloca %nyx_string*
  store %nyx_string* %45, %nyx_string** %46
  %47 = getelementptr [7 x i8], [7 x i8]* @.str968, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str968.c, i8* %47, i64 6)
  %49 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %48)
  br i1 %49, label %then0, label %else1
then0:
  %50 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %51 = alloca %Token
  store %Token %50, %Token* %51
  %52 = load %Token, %Token* %51
  %53 = call %nyx_string* @get_token_value(%Token %52)
  store %nyx_string* %53, %nyx_string** %46
  br label %merge2
else1:
  br label %merge2
merge2:
  %54 = getelementptr [13 x i8], [13 x i8]* @.str969, i32 0, i32 0
  %55 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str969.c, i8* %54, i64 12)
  %56 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %55)
  %57 = call { i64, i8* }* @nyx_array_new_ptr()
  %58 = alloca { i64, i8* }*
  store { i64, i8* }* %57, { i64, i8* }** %58
  %59 = alloca i1
  store i1 0, i1* %59
  %60 = call i8* @llvm.stacksave()
  br label %while_cond3
while_cond3:
  %61 = load i1, i1* %59
  %62 = xor i1 %61, true
  br i1 %62, label %while_body4, label %while_end5
while_body4:
  call void @llvm.stackrestore(i8* %60)
  %63 = getelementptr [14 x i8], [14 x i8]* @.str970, i32 0, i32 0
  %64 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str970.c, i8* %63, i64 13)
  %65 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %64)
  br i1 %65, label %then6, label %else7
then6:
  store i1 1, i1* %59
  br label %merge8
else7:
  %66 = getelementptr [11 x i8], [11 x i8]* @.str971, i32 0, i32 0
  %67 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str971.c, i8* %66, i64 10)
  %68 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %67)
  %69 = alloca %Token
  store %Token %68, %Token* %69
  %70 = load %Token, %Token* %69
  %71 = call %nyx_string* @get_token_value(%Token %70)
  %72 = alloca %nyx_string*
  store %nyx_string* %71, %nyx_string** %72
  %73 = load { i64, i8* }*, { i64, i8* }** %58
  %74 = load %nyx_string*, %nyx_string** %72
  %75 = ptrtoint %nyx_string* %74 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %73, i64 %75, i64 2)
  %76 = getelementptr [6 x i8], [6 x i8]* @.str972, i32 0, i32 0
  %77 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str972.c, i8* %76, i64 5)
  %78 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %77)
  br i1 %78, label %then9, label %else10
then9:
  %79 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge11
else10:
  br label %merge11
merge11:
  br label %merge8
merge8:
  br label %while_cond3
while_end5:
  %80 = getelementptr [14 x i8], [14 x i8]* @.str973, i32 0, i32 0
  %81 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str973.c, i8* %80, i64 13)
  %82 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %81)
  %83 = getelementptr [12 x i8], [12 x i8]* @.str974, i32 0, i32 0
  %84 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str974.c, i8* %83, i64 11)
  %85 = call { i64, i8* }* @nyx_array_new_ptr()
  %86 = load %nyx_string*, %nyx_string** %40
  %87 = ptrtoint %nyx_string* %86 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %85, i64 %87, i64 2)
  %88 = load { i64, i8* }*, { i64, i8* }** %58
  %89 = ptrtoint { i64, i8* }* %88 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %85, i64 %89, i64 5)
  %90 = load %nyx_string*, %nyx_string** %46
  %91 = ptrtoint %nyx_string* %90 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %85, i64 %91, i64 2)
  %92 = call { i64, i8* }* @make_astnode(%nyx_string* %84, { i64, i8* }* %85)
  ret { i64, i8* }* %92
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = getelementptr [6 x i8], [6 x i8]* @.str975, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str975.c, i8* %31, i64 5)
  %33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %32)
  %34 = getelementptr [11 x i8], [11 x i8]* @.str976, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str976.c, i8* %34, i64 10)
  %36 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %35)
  %37 = alloca %Token
  store %Token %36, %Token* %37
  %38 = load %Token, %Token* %37
  %39 = call %nyx_string* @get_token_value(%Token %38)
  %40 = alloca %nyx_string*
  store %nyx_string* %39, %nyx_string** %40
  %41 = getelementptr [5 x i8], [5 x i8]* @.str977, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str977.c, i8* %41, i64 4)
  %43 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %42)
  br i1 %43, label %then0, label %else1
then0:
  %44 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %45 = alloca i1
  store i1 0, i1* %45
  %46 = call i8* @llvm.stacksave()
  br label %while_cond3
while_cond3:
  %47 = load i1, i1* %45
  %48 = xor i1 %47, true
  br i1 %48, label %while_body4, label %while_end5
while_body4:
  call void @llvm.stackrestore(i8* %46)
  %49 = getelementptr [8 x i8], [8 x i8]* @.str978, i32 0, i32 0
  %50 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str978.c, i8* %49, i64 7)
  %51 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %50)
  br i1 %51, label %then6, label %else7
then6:
  %52 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %45
  br label %merge8
else7:
  %53 = getelementptr [9 x i8], [9 x i8]* @.str979, i32 0, i32 0
  %54 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str979.c, i8* %53, i64 8)
  %55 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %54)
  br i1 %55, label %then9, label %else10
then9:
  %56 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge11
else10:
  %57 = getelementptr [11 x i8], [11 x i8]* @.str980, i32 0, i32 0
  %58 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str980.c, i8* %57, i64 10)
  %59 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %58)
  br i1 %59, label %then12, label %else13
then12:
  %60 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge14
else13:
  %61 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge14
merge14:
  br label %merge11
merge11:
  %62 = getelementptr [6 x i8], [6 x i8]* @.str981, i32 0, i32 0
  %63 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str981.c, i8* %62, i64 5)
  %64 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %63)
  br i1 %64, label %then15, label %else16
then15:
  %65 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge17
else16:
  %66 = getelementptr [8 x i8], [8 x i8]* @.str982, i32 0, i32 0
  %67 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str982.c, i8* %66, i64 7)
  %68 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %67)
  %69 = xor i1 %68, true
  br i1 %69, label %then18, label %else19
then18:
  store i1 1, i1* %45
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
  %70 = call { i64, i8* }* @nyx_array_new_ptr()
  %71 = alloca { i64, i8* }*
  store { i64, i8* }* %70, { i64, i8* }** %71
  %72 = getelementptr [6 x i8], [6 x i8]* @.str983, i32 0, i32 0
  %73 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str983.c, i8* %72, i64 5)
  %74 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %73)
  br i1 %74, label %then21, label %else22
then21:
  %75 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %76 = alloca i1
  store i1 1, i1* %76
  %77 = call i8* @llvm.stacksave()
  br label %while_cond24
while_cond24:
  %78 = load i1, i1* %76
  br i1 %78, label %while_body25, label %while_end26
while_body25:
  call void @llvm.stackrestore(i8* %77)
  %79 = getelementptr [11 x i8], [11 x i8]* @.str984, i32 0, i32 0
  %80 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str984.c, i8* %79, i64 10)
  %81 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %80)
  %82 = alloca %Token
  store %Token %81, %Token* %82
  %83 = load %Token, %Token* %82
  %84 = call %nyx_string* @get_token_value(%Token %83)
  %85 = alloca %nyx_string*
  store %nyx_string* %84, %nyx_string** %85
  %86 = load { i64, i8* }*, { i64, i8* }** %71
  %87 = load %nyx_string*, %nyx_string** %85
  %88 = ptrtoint %nyx_string* %87 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %86, i64 %88, i64 2)
  %89 = getelementptr [5 x i8], [5 x i8]* @.str985, i32 0, i32 0
  %90 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str985.c, i8* %89, i64 4)
  %91 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %90)
  br i1 %91, label %then27, label %else28
then27:
  %92 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge29
else28:
  store i1 0, i1* %76
  br label %merge29
merge29:
  br label %while_cond24
while_end26:
  br label %merge23
else22:
  br label %merge23
merge23:
  %93 = getelementptr [11 x i8], [11 x i8]* @.str986, i32 0, i32 0
  %94 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str986.c, i8* %93, i64 10)
  %95 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %94)
  %96 = call { i64, i8* }* @nyx_array_new_ptr()
  %97 = alloca { i64, i8* }*
  store { i64, i8* }* %96, { i64, i8* }** %97
  %98 = alloca i1
  store i1 0, i1* %98
  %99 = call i8* @llvm.stacksave()
  br label %while_cond30
while_cond30:
  %100 = load i1, i1* %98
  %101 = xor i1 %100, true
  br i1 %101, label %while_body31, label %while_end32
while_body31:
  call void @llvm.stackrestore(i8* %99)
  %102 = getelementptr [12 x i8], [12 x i8]* @.str987, i32 0, i32 0
  %103 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str987.c, i8* %102, i64 11)
  %104 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %103)
  br i1 %104, label %then33, label %else34
then33:
  %105 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %98
  br label %merge35
else34:
  %106 = alloca i1
  store i1 0, i1* %106
  %107 = getelementptr [11 x i8], [11 x i8]* @.str988, i32 0, i32 0
  %108 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str988.c, i8* %107, i64 10)
  %109 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %108)
  br i1 %109, label %then36, label %else37
then36:
  %110 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %111 = alloca %Token
  store %Token %110, %Token* %111
  %112 = load %Token, %Token* %111
  %113 = call %nyx_string* @get_token_value(%Token %112)
  %114 = getelementptr [5 x i8], [5 x i8]* @.str989, i32 0, i32 0
  %115 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str989.c, i8* %114, i64 4)
  %116 = call i1 @nyx_string_equals(%nyx_string* %113, %nyx_string* %115)
  br i1 %116, label %then39, label %else40
then39:
  %117 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %118 = getelementptr [11 x i8], [11 x i8]* @.str990, i32 0, i32 0
  %119 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str990.c, i8* %118, i64 10)
  %120 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %119)
  %121 = alloca %Token
  store %Token %120, %Token* %121
  %122 = load %Token, %Token* %121
  %123 = call %nyx_string* @get_token_value(%Token %122)
  %124 = alloca %nyx_string*
  store %nyx_string* %123, %nyx_string** %124
  %125 = call { i64, i8* }* @nyx_array_new_ptr()
  %126 = alloca { i64, i8* }*
  store { i64, i8* }* %125, { i64, i8* }** %126
  %127 = getelementptr [5 x i8], [5 x i8]* @.str991, i32 0, i32 0
  %128 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str991.c, i8* %127, i64 4)
  %129 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %128)
  br i1 %129, label %then42, label %else43
then42:
  %130 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %131 = alloca i1
  store i1 0, i1* %131
  %132 = call i8* @llvm.stacksave()
  br label %while_cond45
while_cond45:
  %133 = load i1, i1* %131
  %134 = xor i1 %133, true
  br i1 %134, label %while_body46, label %while_end47
while_body46:
  call void @llvm.stackrestore(i8* %132)
  %135 = getelementptr [8 x i8], [8 x i8]* @.str992, i32 0, i32 0
  %136 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str992.c, i8* %135, i64 7)
  %137 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %136)
  br i1 %137, label %then48, label %else49
then48:
  %138 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %131
  br label %merge50
else49:
  %139 = getelementptr [11 x i8], [11 x i8]* @.str993, i32 0, i32 0
  %140 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str993.c, i8* %139, i64 10)
  %141 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %140)
  br i1 %141, label %then51, label %else52
then51:
  %142 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %143 = alloca %Token
  store %Token %142, %Token* %143
  %144 = load { i64, i8* }*, { i64, i8* }** %126
  %145 = load %Token, %Token* %143
  %146 = call %nyx_string* @get_token_value(%Token %145)
  %147 = ptrtoint %nyx_string* %146 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %144, i64 %147, i64 2)
  br label %merge53
else52:
  %148 = getelementptr [9 x i8], [9 x i8]* @.str994, i32 0, i32 0
  %149 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str994.c, i8* %148, i64 8)
  %150 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %149)
  br i1 %150, label %then54, label %else55
then54:
  %151 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %152 = alloca %Token
  store %Token %151, %Token* %152
  %153 = load { i64, i8* }*, { i64, i8* }** %126
  %154 = load %Token, %Token* %152
  %155 = call %nyx_string* @get_token_value(%Token %154)
  %156 = ptrtoint %nyx_string* %155 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %153, i64 %156, i64 2)
  br label %merge56
else55:
  %157 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge56
merge56:
  br label %merge53
merge53:
  %158 = getelementptr [6 x i8], [6 x i8]* @.str995, i32 0, i32 0
  %159 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str995.c, i8* %158, i64 5)
  %160 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %159)
  br i1 %160, label %then57, label %else58
then57:
  %161 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
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
  %162 = load { i64, i8* }*, { i64, i8* }** %97
  %163 = call { i64, i8* }* @nyx_array_new_ptr()
  %164 = getelementptr [15 x i8], [15 x i8]* @.str996, i32 0, i32 0
  %165 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str996.c, i8* %164, i64 14)
  %166 = ptrtoint %nyx_string* %165 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %163, i64 %166, i64 2)
  %167 = load %nyx_string*, %nyx_string** %124
  %168 = ptrtoint %nyx_string* %167 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %163, i64 %168, i64 2)
  %169 = load { i64, i8* }*, { i64, i8* }** %126
  %170 = ptrtoint { i64, i8* }* %169 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %163, i64 %170, i64 5)
  %171 = ptrtoint { i64, i8* }* %163 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %162, i64 %171, i64 5)
  store i1 1, i1* %106
  br label %merge41
else40:
  br label %merge41
merge41:
  br label %merge38
else37:
  br label %merge38
merge38:
  %172 = load i1, i1* %106
  %173 = xor i1 %172, true
  br i1 %173, label %then60, label %else61
then60:
  %174 = getelementptr [3 x i8], [3 x i8]* @.str997, i32 0, i32 0
  %175 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str997.c, i8* %174, i64 2)
  %176 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %175)
  %177 = getelementptr [11 x i8], [11 x i8]* @.str998, i32 0, i32 0
  %178 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str998.c, i8* %177, i64 10)
  %179 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %178)
  %180 = alloca %Token
  store %Token %179, %Token* %180
  %181 = load %Token, %Token* %180
  %182 = call %nyx_string* @get_token_value(%Token %181)
  %183 = alloca %nyx_string*
  store %nyx_string* %182, %nyx_string** %183
  %184 = getelementptr [5 x i8], [5 x i8]* @.str999, i32 0, i32 0
  %185 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str999.c, i8* %184, i64 4)
  %186 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %185)
  br i1 %186, label %then63, label %else64
then63:
  %187 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %188 = alloca i1
  store i1 0, i1* %188
  %189 = call i8* @llvm.stacksave()
  br label %while_cond66
while_cond66:
  %190 = load i1, i1* %188
  %191 = xor i1 %190, true
  br i1 %191, label %while_body67, label %while_end68
while_body67:
  call void @llvm.stackrestore(i8* %189)
  %192 = getelementptr [8 x i8], [8 x i8]* @.str1000, i32 0, i32 0
  %193 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1000.c, i8* %192, i64 7)
  %194 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %193)
  br i1 %194, label %then69, label %else70
then69:
  %195 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %188
  br label %merge71
else70:
  %196 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge71
merge71:
  br label %while_cond66
while_end68:
  br label %merge65
else64:
  br label %merge65
merge65:
  %197 = getelementptr [11 x i8], [11 x i8]* @.str1001, i32 0, i32 0
  %198 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1001.c, i8* %197, i64 10)
  %199 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %198)
  %200 = call { i64, i8* }* @nyx_array_new_ptr()
  %201 = alloca { i64, i8* }*
  store { i64, i8* }* %200, { i64, i8* }** %201
  %202 = alloca i1
  store i1 0, i1* %202
  %203 = call i8* @llvm.stacksave()
  br label %while_cond72
while_cond72:
  %204 = load i1, i1* %202
  %205 = xor i1 %204, true
  br i1 %205, label %while_body73, label %while_end74
while_body73:
  call void @llvm.stackrestore(i8* %203)
  %206 = getelementptr [12 x i8], [12 x i8]* @.str1002, i32 0, i32 0
  %207 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1002.c, i8* %206, i64 11)
  %208 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %207)
  br i1 %208, label %then75, label %else76
then75:
  %209 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %202
  br label %merge77
else76:
  %210 = load { i64, i8* }*, { i64, i8* }** %201
  %211 = call i64 @nyx_array_length({ i64, i8* }* %210)
  %212 = icmp sgt i64 %211, 0
  br i1 %212, label %then78, label %else79
then78:
  %213 = getelementptr [6 x i8], [6 x i8]* @.str1003, i32 0, i32 0
  %214 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1003.c, i8* %213, i64 5)
  %215 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %214)
  br label %merge80
else79:
  br label %merge80
merge80:
  %216 = getelementptr [11 x i8], [11 x i8]* @.str1004, i32 0, i32 0
  %217 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1004.c, i8* %216, i64 10)
  %218 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %217)
  %219 = alloca %Token
  store %Token %218, %Token* %219
  %220 = load %Token, %Token* %219
  %221 = call %nyx_string* @get_token_value(%Token %220)
  %222 = alloca %nyx_string*
  store %nyx_string* %221, %nyx_string** %222
  %223 = getelementptr [1 x i8], [1 x i8]* @.str1005, i32 0, i32 0
  %224 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1005.c, i8* %223, i64 0)
  %225 = alloca %nyx_string*
  store %nyx_string* %224, %nyx_string** %225
  %226 = getelementptr [6 x i8], [6 x i8]* @.str1006, i32 0, i32 0
  %227 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1006.c, i8* %226, i64 5)
  %228 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %227)
  br i1 %228, label %then81, label %else82
then81:
  %229 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %230 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %230, %nyx_string** %225
  br label %merge83
else82:
  br label %merge83
merge83:
  %231 = load { i64, i8* }*, { i64, i8* }** %201
  %232 = call { i64, i8* }* @nyx_array_new_ptr()
  %233 = load %nyx_string*, %nyx_string** %222
  %234 = ptrtoint %nyx_string* %233 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %232, i64 %234, i64 2)
  %235 = load %nyx_string*, %nyx_string** %225
  %236 = ptrtoint %nyx_string* %235 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %232, i64 %236, i64 2)
  %237 = ptrtoint { i64, i8* }* %232 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %231, i64 %237, i64 5)
  br label %merge77
merge77:
  br label %while_cond72
while_end74:
  %238 = getelementptr [1 x i8], [1 x i8]* @.str1007, i32 0, i32 0
  %239 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1007.c, i8* %238, i64 0)
  %240 = alloca %nyx_string*
  store %nyx_string* %239, %nyx_string** %240
  %241 = getelementptr [6 x i8], [6 x i8]* @.str1008, i32 0, i32 0
  %242 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1008.c, i8* %241, i64 5)
  %243 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %242)
  br i1 %243, label %then84, label %else85
then84:
  %244 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %245 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %245, %nyx_string** %240
  br label %merge86
else85:
  br label %merge86
merge86:
  %246 = getelementptr [11 x i8], [11 x i8]* @.str1009, i32 0, i32 0
  %247 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1009.c, i8* %246, i64 10)
  %248 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %247)
  br i1 %248, label %then87, label %else88
then87:
  %249 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %250 = alloca { i64, i8* }*
  store { i64, i8* }* %249, { i64, i8* }** %250
  %251 = load { i64, i8* }*, { i64, i8* }** %97
  %252 = call { i64, i8* }* @nyx_array_new_ptr()
  %253 = load %nyx_string*, %nyx_string** %183
  %254 = ptrtoint %nyx_string* %253 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %252, i64 %254, i64 2)
  %255 = load { i64, i8* }*, { i64, i8* }** %201
  %256 = ptrtoint { i64, i8* }* %255 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %252, i64 %256, i64 5)
  %257 = load %nyx_string*, %nyx_string** %240
  %258 = ptrtoint %nyx_string* %257 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %252, i64 %258, i64 2)
  %259 = load { i64, i8* }*, { i64, i8* }** %250
  %260 = ptrtoint { i64, i8* }* %259 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %252, i64 %260, i64 5)
  %261 = ptrtoint { i64, i8* }* %252 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %251, i64 %261, i64 5)
  br label %merge89
else88:
  %262 = load { i64, i8* }*, { i64, i8* }** %97
  %263 = call { i64, i8* }* @nyx_array_new_ptr()
  %264 = load %nyx_string*, %nyx_string** %183
  %265 = ptrtoint %nyx_string* %264 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %263, i64 %265, i64 2)
  %266 = load { i64, i8* }*, { i64, i8* }** %201
  %267 = ptrtoint { i64, i8* }* %266 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %263, i64 %267, i64 5)
  %268 = load %nyx_string*, %nyx_string** %240
  %269 = ptrtoint %nyx_string* %268 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %263, i64 %269, i64 2)
  %270 = ptrtoint { i64, i8* }* %263 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %262, i64 %270, i64 5)
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
  %271 = getelementptr [10 x i8], [10 x i8]* @.str1010, i32 0, i32 0
  %272 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1010.c, i8* %271, i64 9)
  %273 = call { i64, i8* }* @nyx_array_new_ptr()
  %274 = load %nyx_string*, %nyx_string** %40
  %275 = ptrtoint %nyx_string* %274 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %273, i64 %275, i64 2)
  %276 = load { i64, i8* }*, { i64, i8* }** %71
  %277 = ptrtoint { i64, i8* }* %276 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %273, i64 %277, i64 5)
  %278 = load { i64, i8* }*, { i64, i8* }** %97
  %279 = ptrtoint { i64, i8* }* %278 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %273, i64 %279, i64 5)
  %280 = call { i64, i8* }* @make_astnode(%nyx_string* %272, { i64, i8* }* %273)
  ret { i64, i8* }* %280
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = getelementptr [5 x i8], [5 x i8]* @.str1011, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1011.c, i8* %31, i64 4)
  %33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %32)
  %34 = call { i64, i8* }* @nyx_array_new_ptr()
  %35 = alloca { i64, i8* }*
  store { i64, i8* }* %34, { i64, i8* }** %35
  %36 = getelementptr [5 x i8], [5 x i8]* @.str1012, i32 0, i32 0
  %37 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1012.c, i8* %36, i64 4)
  %38 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %37)
  br i1 %38, label %then0, label %else1
then0:
  %39 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %40 = getelementptr [9 x i8], [9 x i8]* @.str1013, i32 0, i32 0
  %41 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1013.c, i8* %40, i64 8)
  %42 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %41)
  br i1 %42, label %then3, label %else4
then3:
  %43 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %44 = alloca %Token
  store %Token %43, %Token* %44
  %45 = load { i64, i8* }*, { i64, i8* }** %35
  %46 = load %Token, %Token* %44
  %47 = call %nyx_string* @get_token_value(%Token %46)
  %48 = ptrtoint %nyx_string* %47 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %45, i64 %48, i64 2)
  br label %merge5
else4:
  %49 = getelementptr [11 x i8], [11 x i8]* @.str1014, i32 0, i32 0
  %50 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1014.c, i8* %49, i64 10)
  %51 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %50)
  %52 = alloca %Token
  store %Token %51, %Token* %52
  %53 = load %Token, %Token* %52
  %54 = call %nyx_string* @get_token_value(%Token %53)
  %55 = alloca %nyx_string*
  store %nyx_string* %54, %nyx_string** %55
  %56 = getelementptr [6 x i8], [6 x i8]* @.str1015, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1015.c, i8* %56, i64 5)
  %58 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %57)
  br i1 %58, label %then6, label %else7
then6:
  %59 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %60 = getelementptr [11 x i8], [11 x i8]* @.str1016, i32 0, i32 0
  %61 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1016.c, i8* %60, i64 10)
  %62 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %61)
  %63 = alloca %Token
  store %Token %62, %Token* %63
  %64 = load %Token, %Token* %63
  %65 = call %nyx_string* @get_token_value(%Token %64)
  %66 = alloca %nyx_string*
  store %nyx_string* %65, %nyx_string** %66
  %67 = call i8* @llvm.stacksave()
  br label %while_cond9
while_cond9:
  %68 = getelementptr [5 x i8], [5 x i8]* @.str1017, i32 0, i32 0
  %69 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1017.c, i8* %68, i64 4)
  %70 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %69)
  br i1 %70, label %while_body10, label %while_end11
while_body10:
  call void @llvm.stackrestore(i8* %67)
  %71 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %72 = getelementptr [11 x i8], [11 x i8]* @.str1018, i32 0, i32 0
  %73 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1018.c, i8* %72, i64 10)
  %74 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %73)
  %75 = alloca %Token
  store %Token %74, %Token* %75
  %76 = load %nyx_string*, %nyx_string** %66
  %77 = getelementptr [2 x i8], [2 x i8]* @.str1019, i32 0, i32 0
  %78 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1019.c, i8* %77, i64 1)
  %79 = call %nyx_string* @nyx_string_concat(%nyx_string* %76, %nyx_string* %78)
  %80 = load %Token, %Token* %75
  %81 = call %nyx_string* @get_token_value(%Token %80)
  %82 = call %nyx_string* @nyx_string_concat(%nyx_string* %79, %nyx_string* %81)
  store %nyx_string* %82, %nyx_string** %66
  br label %while_cond9
while_end11:
  %83 = load %nyx_string*, %nyx_string** %55
  %84 = getelementptr [2 x i8], [2 x i8]* @.str1020, i32 0, i32 0
  %85 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1020.c, i8* %84, i64 1)
  %86 = call %nyx_string* @nyx_string_concat(%nyx_string* %83, %nyx_string* %85)
  %87 = load %nyx_string*, %nyx_string** %66
  %88 = call %nyx_string* @nyx_string_concat(%nyx_string* %86, %nyx_string* %87)
  store %nyx_string* %88, %nyx_string** %55
  br label %merge8
else7:
  br label %merge8
merge8:
  %89 = load { i64, i8* }*, { i64, i8* }** %35
  %90 = load %nyx_string*, %nyx_string** %55
  %91 = ptrtoint %nyx_string* %90 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %89, i64 %91, i64 2)
  br label %merge5
merge5:
  %92 = alloca i1
  store i1 0, i1* %92
  %93 = call i8* @llvm.stacksave()
  br label %while_cond12
while_cond12:
  %94 = load i1, i1* %92
  %95 = xor i1 %94, true
  br i1 %95, label %while_body13, label %while_end14
while_body13:
  call void @llvm.stackrestore(i8* %93)
  %96 = getelementptr [6 x i8], [6 x i8]* @.str1021, i32 0, i32 0
  %97 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1021.c, i8* %96, i64 5)
  %98 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %97)
  br i1 %98, label %then15, label %else16
then15:
  %99 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %100 = getelementptr [9 x i8], [9 x i8]* @.str1022, i32 0, i32 0
  %101 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1022.c, i8* %100, i64 8)
  %102 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %101)
  br i1 %102, label %then18, label %else19
then18:
  %103 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %104 = alloca %Token
  store %Token %103, %Token* %104
  %105 = load { i64, i8* }*, { i64, i8* }** %35
  %106 = load %Token, %Token* %104
  %107 = call %nyx_string* @get_token_value(%Token %106)
  %108 = ptrtoint %nyx_string* %107 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %105, i64 %108, i64 2)
  br label %merge20
else19:
  %109 = getelementptr [11 x i8], [11 x i8]* @.str1023, i32 0, i32 0
  %110 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1023.c, i8* %109, i64 10)
  %111 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %110)
  %112 = alloca %Token
  store %Token %111, %Token* %112
  %113 = load %Token, %Token* %112
  %114 = call %nyx_string* @get_token_value(%Token %113)
  %115 = alloca %nyx_string*
  store %nyx_string* %114, %nyx_string** %115
  %116 = getelementptr [6 x i8], [6 x i8]* @.str1024, i32 0, i32 0
  %117 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1024.c, i8* %116, i64 5)
  %118 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %117)
  br i1 %118, label %then21, label %else22
then21:
  %119 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %120 = getelementptr [11 x i8], [11 x i8]* @.str1025, i32 0, i32 0
  %121 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1025.c, i8* %120, i64 10)
  %122 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %121)
  %123 = alloca %Token
  store %Token %122, %Token* %123
  %124 = load %Token, %Token* %123
  %125 = call %nyx_string* @get_token_value(%Token %124)
  %126 = alloca %nyx_string*
  store %nyx_string* %125, %nyx_string** %126
  %127 = call i8* @llvm.stacksave()
  br label %while_cond24
while_cond24:
  %128 = getelementptr [5 x i8], [5 x i8]* @.str1026, i32 0, i32 0
  %129 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1026.c, i8* %128, i64 4)
  %130 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %129)
  br i1 %130, label %while_body25, label %while_end26
while_body25:
  call void @llvm.stackrestore(i8* %127)
  %131 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %132 = getelementptr [11 x i8], [11 x i8]* @.str1027, i32 0, i32 0
  %133 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1027.c, i8* %132, i64 10)
  %134 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %133)
  %135 = alloca %Token
  store %Token %134, %Token* %135
  %136 = load %nyx_string*, %nyx_string** %126
  %137 = getelementptr [2 x i8], [2 x i8]* @.str1028, i32 0, i32 0
  %138 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1028.c, i8* %137, i64 1)
  %139 = call %nyx_string* @nyx_string_concat(%nyx_string* %136, %nyx_string* %138)
  %140 = load %Token, %Token* %135
  %141 = call %nyx_string* @get_token_value(%Token %140)
  %142 = call %nyx_string* @nyx_string_concat(%nyx_string* %139, %nyx_string* %141)
  store %nyx_string* %142, %nyx_string** %126
  br label %while_cond24
while_end26:
  %143 = load %nyx_string*, %nyx_string** %115
  %144 = getelementptr [2 x i8], [2 x i8]* @.str1029, i32 0, i32 0
  %145 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1029.c, i8* %144, i64 1)
  %146 = call %nyx_string* @nyx_string_concat(%nyx_string* %143, %nyx_string* %145)
  %147 = load %nyx_string*, %nyx_string** %126
  %148 = call %nyx_string* @nyx_string_concat(%nyx_string* %146, %nyx_string* %147)
  store %nyx_string* %148, %nyx_string** %115
  br label %merge23
else22:
  br label %merge23
merge23:
  %149 = load { i64, i8* }*, { i64, i8* }** %35
  %150 = load %nyx_string*, %nyx_string** %115
  %151 = ptrtoint %nyx_string* %150 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %149, i64 %151, i64 2)
  br label %merge20
merge20:
  br label %merge17
else16:
  store i1 1, i1* %92
  br label %merge17
merge17:
  br label %while_cond12
while_end14:
  %152 = getelementptr [8 x i8], [8 x i8]* @.str1030, i32 0, i32 0
  %153 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1030.c, i8* %152, i64 7)
  %154 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %153)
  br label %merge2
else1:
  br label %merge2
merge2:
  %155 = getelementptr [11 x i8], [11 x i8]* @.str1031, i32 0, i32 0
  %156 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1031.c, i8* %155, i64 10)
  %157 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %156)
  %158 = alloca %Token
  store %Token %157, %Token* %158
  %159 = load %Token, %Token* %158
  %160 = call %nyx_string* @get_token_value(%Token %159)
  %161 = alloca %nyx_string*
  store %nyx_string* %160, %nyx_string** %161
  %162 = getelementptr [4 x i8], [4 x i8]* @.str1032, i32 0, i32 0
  %163 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1032.c, i8* %162, i64 3)
  %164 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %163)
  br i1 %164, label %then27, label %else28
then27:
  %165 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %166 = getelementptr [11 x i8], [11 x i8]* @.str1033, i32 0, i32 0
  %167 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1033.c, i8* %166, i64 10)
  %168 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %167)
  %169 = alloca %Token
  store %Token %168, %Token* %169
  %170 = load %Token, %Token* %169
  %171 = call %nyx_string* @get_token_value(%Token %170)
  %172 = alloca %nyx_string*
  store %nyx_string* %171, %nyx_string** %172
  %173 = getelementptr [11 x i8], [11 x i8]* @.str1034, i32 0, i32 0
  %174 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1034.c, i8* %173, i64 10)
  %175 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %174)
  %176 = call { i64, i8* }* @nyx_array_new_ptr()
  %177 = alloca { i64, i8* }*
  store { i64, i8* }* %176, { i64, i8* }** %177
  %178 = call { i64, i8* }* @nyx_array_new_ptr()
  %179 = alloca { i64, i8* }*
  store { i64, i8* }* %178, { i64, i8* }** %179
  %180 = alloca i1
  store i1 0, i1* %180
  %181 = call i8* @llvm.stacksave()
  br label %while_cond30
while_cond30:
  %182 = load i1, i1* %180
  %183 = xor i1 %182, true
  br i1 %183, label %while_body31, label %while_end32
while_body31:
  call void @llvm.stackrestore(i8* %181)
  %184 = getelementptr [12 x i8], [12 x i8]* @.str1035, i32 0, i32 0
  %185 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1035.c, i8* %184, i64 11)
  %186 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %185)
  br i1 %186, label %then33, label %else34
then33:
  %187 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %180
  br label %merge35
else34:
  %188 = alloca i1
  store i1 0, i1* %188
  %189 = getelementptr [11 x i8], [11 x i8]* @.str1036, i32 0, i32 0
  %190 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1036.c, i8* %189, i64 10)
  %191 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %190)
  br i1 %191, label %then36, label %else37
then36:
  %192 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %193 = alloca %Token
  store %Token %192, %Token* %193
  %194 = load %Token, %Token* %193
  %195 = call %nyx_string* @get_token_value(%Token %194)
  %196 = getelementptr [5 x i8], [5 x i8]* @.str1037, i32 0, i32 0
  %197 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1037.c, i8* %196, i64 4)
  %198 = call i1 @nyx_string_equals(%nyx_string* %195, %nyx_string* %197)
  br i1 %198, label %then39, label %else40
then39:
  %199 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %200 = getelementptr [11 x i8], [11 x i8]* @.str1038, i32 0, i32 0
  %201 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1038.c, i8* %200, i64 10)
  %202 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %201)
  %203 = alloca %Token
  store %Token %202, %Token* %203
  %204 = load %Token, %Token* %203
  %205 = call %nyx_string* @get_token_value(%Token %204)
  %206 = alloca %nyx_string*
  store %nyx_string* %205, %nyx_string** %206
  %207 = getelementptr [5 x i8], [5 x i8]* @.str1039, i32 0, i32 0
  %208 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1039.c, i8* %207, i64 4)
  %209 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %208)
  br i1 %209, label %then42, label %else43
then42:
  %210 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %211 = alloca i1
  store i1 0, i1* %211
  %212 = call i8* @llvm.stacksave()
  br label %while_cond45
while_cond45:
  %213 = load i1, i1* %211
  %214 = xor i1 %213, true
  br i1 %214, label %while_body46, label %while_end47
while_body46:
  call void @llvm.stackrestore(i8* %212)
  %215 = getelementptr [8 x i8], [8 x i8]* @.str1040, i32 0, i32 0
  %216 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1040.c, i8* %215, i64 7)
  %217 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %216)
  br i1 %217, label %then48, label %else49
then48:
  %218 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %211
  br label %merge50
else49:
  %219 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge50
merge50:
  br label %while_cond45
while_end47:
  br label %merge44
else43:
  br label %merge44
merge44:
  %220 = getelementptr [7 x i8], [7 x i8]* @.str1041, i32 0, i32 0
  %221 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1041.c, i8* %220, i64 6)
  %222 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %221)
  %223 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %224 = alloca %nyx_string*
  store %nyx_string* %223, %nyx_string** %224
  %225 = load { i64, i8* }*, { i64, i8* }** %179
  %226 = call { i64, i8* }* @nyx_array_new_ptr()
  %227 = load %nyx_string*, %nyx_string** %206
  %228 = ptrtoint %nyx_string* %227 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %226, i64 %228, i64 2)
  %229 = load %nyx_string*, %nyx_string** %224
  %230 = ptrtoint %nyx_string* %229 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %226, i64 %230, i64 2)
  %231 = ptrtoint { i64, i8* }* %226 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %225, i64 %231, i64 5)
  store i1 1, i1* %188
  br label %merge41
else40:
  br label %merge41
merge41:
  br label %merge38
else37:
  br label %merge38
merge38:
  %232 = load i1, i1* %188
  %233 = xor i1 %232, true
  br i1 %233, label %then51, label %else52
then51:
  %234 = call { i64, i8* }* @parse__parse_function(%SharedEnv_parse* %env.param)
  %235 = alloca { i64, i8* }*
  store { i64, i8* }* %234, { i64, i8* }** %235
  %236 = load { i64, i8* }*, { i64, i8* }** %177
  %237 = load { i64, i8* }*, { i64, i8* }** %235
  %238 = ptrtoint { i64, i8* }* %237 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %236, i64 %238, i64 5)
  br label %merge53
else52:
  br label %merge53
merge53:
  br label %merge35
merge35:
  br label %while_cond30
while_end32:
  %239 = getelementptr [11 x i8], [11 x i8]* @.str1042, i32 0, i32 0
  %240 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1042.c, i8* %239, i64 10)
  %241 = call { i64, i8* }* @nyx_array_new_ptr()
  %242 = load %nyx_string*, %nyx_string** %161
  %243 = ptrtoint %nyx_string* %242 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %241, i64 %243, i64 2)
  %244 = load %nyx_string*, %nyx_string** %172
  %245 = ptrtoint %nyx_string* %244 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %241, i64 %245, i64 2)
  %246 = load { i64, i8* }*, { i64, i8* }** %177
  %247 = ptrtoint { i64, i8* }* %246 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %241, i64 %247, i64 5)
  %248 = load { i64, i8* }*, { i64, i8* }** %179
  %249 = ptrtoint { i64, i8* }* %248 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %241, i64 %249, i64 5)
  %250 = call { i64, i8* }* @make_astnode(%nyx_string* %240, { i64, i8* }* %241)
  ret { i64, i8* }* %250
else28:
  br label %merge29
merge29:
  %251 = getelementptr [5 x i8], [5 x i8]* @.str1043, i32 0, i32 0
  %252 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1043.c, i8* %251, i64 4)
  %253 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %252)
  br i1 %253, label %then54, label %else55
then54:
  %254 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %255 = call { i64, i8* }* @nyx_array_new_ptr()
  %256 = alloca { i64, i8* }*
  store { i64, i8* }* %255, { i64, i8* }** %256
  %257 = alloca i1
  store i1 1, i1* %257
  %258 = alloca i1
  store i1 0, i1* %258
  %259 = call i8* @llvm.stacksave()
  br label %while_cond57
while_cond57:
  %260 = load i1, i1* %258
  %261 = xor i1 %260, true
  br i1 %261, label %while_body58, label %while_end59
while_body58:
  call void @llvm.stackrestore(i8* %259)
  %262 = getelementptr [8 x i8], [8 x i8]* @.str1044, i32 0, i32 0
  %263 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1044.c, i8* %262, i64 7)
  %264 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %263)
  br i1 %264, label %then60, label %else61
then60:
  %265 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %258
  br label %merge62
else61:
  %266 = getelementptr [11 x i8], [11 x i8]* @.str1045, i32 0, i32 0
  %267 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1045.c, i8* %266, i64 10)
  %268 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %267)
  br i1 %268, label %then63, label %else64
then63:
  %269 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %270 = alloca %Token
  store %Token %269, %Token* %270
  %271 = load { i64, i8* }*, { i64, i8* }** %256
  %272 = load %Token, %Token* %270
  %273 = call %nyx_string* @get_token_value(%Token %272)
  %274 = ptrtoint %nyx_string* %273 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %271, i64 %274, i64 2)
  br label %merge65
else64:
  %275 = getelementptr [6 x i8], [6 x i8]* @.str1046, i32 0, i32 0
  %276 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1046.c, i8* %275, i64 5)
  %277 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %276)
  br i1 %277, label %then66, label %else67
then66:
  %278 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge68
else67:
  store i1 0, i1* %257
  %279 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge68
merge68:
  br label %merge65
merge65:
  br label %merge62
merge62:
  br label %while_cond57
while_end59:
  %280 = alloca i1
  store i1 false, i1* %280
  %281 = alloca i1
  store i1 false, i1* %281
  %282 = load { i64, i8* }*, { i64, i8* }** %35
  %283 = call i64 @nyx_array_length({ i64, i8* }* %282)
  %284 = icmp eq i64 %283, 0
  br i1 %284, label %sc_and_rhs69, label %sc_and_end70
sc_and_rhs69:
  %285 = load i1, i1* %257
  store i1 %285, i1* %281
  br label %sc_and_end70
sc_and_end70:
  %286 = load i1, i1* %281
  br i1 %286, label %sc_and_rhs71, label %sc_and_end72
sc_and_rhs71:
  %287 = load { i64, i8* }*, { i64, i8* }** %256
  %288 = call i64 @nyx_array_length({ i64, i8* }* %287)
  %289 = icmp sgt i64 %288, 0
  store i1 %289, i1* %280
  br label %sc_and_end72
sc_and_end72:
  %290 = load i1, i1* %280
  br i1 %290, label %then73, label %else74
then73:
  %291 = alloca i1
  store i1 1, i1* %291
  %292 = alloca i64
  store i64 0, i64* %292
  %293 = call i8* @llvm.stacksave()
  br label %while_cond76
while_cond76:
  %294 = load i64, i64* %292
  %295 = load { i64, i8* }*, { i64, i8* }** %256
  %296 = call i64 @nyx_array_length({ i64, i8* }* %295)
  %297 = icmp slt i64 %294, %296
  br i1 %297, label %while_body77, label %while_end78
while_body77:
  call void @llvm.stackrestore(i8* %293)
  %298 = load { i64, i8* }*, { i64, i8* }** %256
  %299 = load i64, i64* %292
  %300 = call i64 @nyx_array_get_checked({ i64, i8* }* %298, i64 %299, i64 2)
  %301 = inttoptr i64 %300 to %nyx_string*
  %302 = alloca %nyx_string*
  store %nyx_string* %301, %nyx_string** %302
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
  %317 = alloca i1
  store i1 true, i1* %317
  %318 = load %nyx_string*, %nyx_string** %302
  %319 = getelementptr [4 x i8], [4 x i8]* @.str1047, i32 0, i32 0
  %320 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1047.c, i8* %319, i64 3)
  %321 = call i1 @nyx_string_equals(%nyx_string* %318, %nyx_string* %320)
  br i1 %321, label %sc_or_end80, label %sc_or_rhs79
sc_or_rhs79:
  %322 = load %nyx_string*, %nyx_string** %302
  %323 = getelementptr [6 x i8], [6 x i8]* @.str1048, i32 0, i32 0
  %324 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1048.c, i8* %323, i64 5)
  %325 = call i1 @nyx_string_equals(%nyx_string* %322, %nyx_string* %324)
  store i1 %325, i1* %317
  br label %sc_or_end80
sc_or_end80:
  %326 = load i1, i1* %317
  br i1 %326, label %sc_or_end82, label %sc_or_rhs81
sc_or_rhs81:
  %327 = load %nyx_string*, %nyx_string** %302
  %328 = getelementptr [5 x i8], [5 x i8]* @.str1049, i32 0, i32 0
  %329 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1049.c, i8* %328, i64 4)
  %330 = call i1 @nyx_string_equals(%nyx_string* %327, %nyx_string* %329)
  store i1 %330, i1* %316
  br label %sc_or_end82
sc_or_end82:
  %331 = load i1, i1* %316
  br i1 %331, label %sc_or_end84, label %sc_or_rhs83
sc_or_rhs83:
  %332 = load %nyx_string*, %nyx_string** %302
  %333 = getelementptr [7 x i8], [7 x i8]* @.str1050, i32 0, i32 0
  %334 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1050.c, i8* %333, i64 6)
  %335 = call i1 @nyx_string_equals(%nyx_string* %332, %nyx_string* %334)
  store i1 %335, i1* %315
  br label %sc_or_end84
sc_or_end84:
  %336 = load i1, i1* %315
  br i1 %336, label %sc_or_end86, label %sc_or_rhs85
sc_or_rhs85:
  %337 = load %nyx_string*, %nyx_string** %302
  %338 = getelementptr [5 x i8], [5 x i8]* @.str1051, i32 0, i32 0
  %339 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1051.c, i8* %338, i64 4)
  %340 = call i1 @nyx_string_equals(%nyx_string* %337, %nyx_string* %339)
  store i1 %340, i1* %314
  br label %sc_or_end86
sc_or_end86:
  %341 = load i1, i1* %314
  br i1 %341, label %sc_or_end88, label %sc_or_rhs87
sc_or_rhs87:
  %342 = load %nyx_string*, %nyx_string** %302
  %343 = getelementptr [3 x i8], [3 x i8]* @.str1052, i32 0, i32 0
  %344 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1052.c, i8* %343, i64 2)
  %345 = call i1 @nyx_string_equals(%nyx_string* %342, %nyx_string* %344)
  store i1 %345, i1* %313
  br label %sc_or_end88
sc_or_end88:
  %346 = load i1, i1* %313
  br i1 %346, label %sc_or_end90, label %sc_or_rhs89
sc_or_rhs89:
  %347 = load %nyx_string*, %nyx_string** %302
  %348 = getelementptr [4 x i8], [4 x i8]* @.str1053, i32 0, i32 0
  %349 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1053.c, i8* %348, i64 3)
  %350 = call i1 @nyx_string_equals(%nyx_string* %347, %nyx_string* %349)
  store i1 %350, i1* %312
  br label %sc_or_end90
sc_or_end90:
  %351 = load i1, i1* %312
  br i1 %351, label %sc_or_end92, label %sc_or_rhs91
sc_or_rhs91:
  %352 = load %nyx_string*, %nyx_string** %302
  %353 = getelementptr [4 x i8], [4 x i8]* @.str1054, i32 0, i32 0
  %354 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1054.c, i8* %353, i64 3)
  %355 = call i1 @nyx_string_equals(%nyx_string* %352, %nyx_string* %354)
  store i1 %355, i1* %311
  br label %sc_or_end92
sc_or_end92:
  %356 = load i1, i1* %311
  br i1 %356, label %sc_or_end94, label %sc_or_rhs93
sc_or_rhs93:
  %357 = load %nyx_string*, %nyx_string** %302
  %358 = getelementptr [3 x i8], [3 x i8]* @.str1055, i32 0, i32 0
  %359 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1055.c, i8* %358, i64 2)
  %360 = call i1 @nyx_string_equals(%nyx_string* %357, %nyx_string* %359)
  store i1 %360, i1* %310
  br label %sc_or_end94
sc_or_end94:
  %361 = load i1, i1* %310
  br i1 %361, label %sc_or_end96, label %sc_or_rhs95
sc_or_rhs95:
  %362 = load %nyx_string*, %nyx_string** %302
  %363 = getelementptr [4 x i8], [4 x i8]* @.str1056, i32 0, i32 0
  %364 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1056.c, i8* %363, i64 3)
  %365 = call i1 @nyx_string_equals(%nyx_string* %362, %nyx_string* %364)
  store i1 %365, i1* %309
  br label %sc_or_end96
sc_or_end96:
  %366 = load i1, i1* %309
  br i1 %366, label %sc_or_end98, label %sc_or_rhs97
sc_or_rhs97:
  %367 = load %nyx_string*, %nyx_string** %302
  %368 = getelementptr [4 x i8], [4 x i8]* @.str1057, i32 0, i32 0
  %369 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1057.c, i8* %368, i64 3)
  %370 = call i1 @nyx_string_equals(%nyx_string* %367, %nyx_string* %369)
  store i1 %370, i1* %308
  br label %sc_or_end98
sc_or_end98:
  %371 = load i1, i1* %308
  br i1 %371, label %sc_or_end100, label %sc_or_rhs99
sc_or_rhs99:
  %372 = load %nyx_string*, %nyx_string** %302
  %373 = getelementptr [4 x i8], [4 x i8]* @.str1058, i32 0, i32 0
  %374 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1058.c, i8* %373, i64 3)
  %375 = call i1 @nyx_string_equals(%nyx_string* %372, %nyx_string* %374)
  store i1 %375, i1* %307
  br label %sc_or_end100
sc_or_end100:
  %376 = load i1, i1* %307
  br i1 %376, label %sc_or_end102, label %sc_or_rhs101
sc_or_rhs101:
  %377 = load %nyx_string*, %nyx_string** %302
  %378 = getelementptr [6 x i8], [6 x i8]* @.str1059, i32 0, i32 0
  %379 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1059.c, i8* %378, i64 5)
  %380 = call i1 @nyx_string_equals(%nyx_string* %377, %nyx_string* %379)
  store i1 %380, i1* %306
  br label %sc_or_end102
sc_or_end102:
  %381 = load i1, i1* %306
  br i1 %381, label %sc_or_end104, label %sc_or_rhs103
sc_or_rhs103:
  %382 = load %nyx_string*, %nyx_string** %302
  %383 = getelementptr [4 x i8], [4 x i8]* @.str1060, i32 0, i32 0
  %384 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1060.c, i8* %383, i64 3)
  %385 = call i1 @nyx_string_equals(%nyx_string* %382, %nyx_string* %384)
  store i1 %385, i1* %305
  br label %sc_or_end104
sc_or_end104:
  %386 = load i1, i1* %305
  br i1 %386, label %sc_or_end106, label %sc_or_rhs105
sc_or_rhs105:
  %387 = load %nyx_string*, %nyx_string** %302
  %388 = getelementptr [6 x i8], [6 x i8]* @.str1061, i32 0, i32 0
  %389 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1061.c, i8* %388, i64 5)
  %390 = call i1 @nyx_string_equals(%nyx_string* %387, %nyx_string* %389)
  store i1 %390, i1* %304
  br label %sc_or_end106
sc_or_end106:
  %391 = load i1, i1* %304
  br i1 %391, label %sc_or_end108, label %sc_or_rhs107
sc_or_rhs107:
  %392 = load %nyx_string*, %nyx_string** %302
  %393 = getelementptr [4 x i8], [4 x i8]* @.str1062, i32 0, i32 0
  %394 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1062.c, i8* %393, i64 3)
  %395 = call i1 @nyx_string_equals(%nyx_string* %392, %nyx_string* %394)
  store i1 %395, i1* %303
  br label %sc_or_end108
sc_or_end108:
  %396 = load i1, i1* %303
  br i1 %396, label %then109, label %else110
then109:
  store i1 0, i1* %291
  br label %merge111
else110:
  br label %merge111
merge111:
  %397 = load i64, i64* %292
  %398 = add i64 %397, 1
  store i64 %398, i64* %292
  br label %while_cond76
while_end78:
  %399 = load i1, i1* %291
  br i1 %399, label %then112, label %else113
then112:
  %400 = load { i64, i8* }*, { i64, i8* }** %256
  store { i64, i8* }* %400, { i64, i8* }** %35
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
  %401 = getelementptr [11 x i8], [11 x i8]* @.str1063, i32 0, i32 0
  %402 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1063.c, i8* %401, i64 10)
  %403 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %402)
  %404 = call { i64, i8* }* @nyx_array_new_ptr()
  %405 = alloca { i64, i8* }*
  store { i64, i8* }* %404, { i64, i8* }** %405
  %406 = alloca i1
  store i1 0, i1* %406
  %407 = call i8* @llvm.stacksave()
  br label %while_cond115
while_cond115:
  %408 = load i1, i1* %406
  %409 = xor i1 %408, true
  br i1 %409, label %while_body116, label %while_end117
while_body116:
  call void @llvm.stackrestore(i8* %407)
  %410 = getelementptr [12 x i8], [12 x i8]* @.str1064, i32 0, i32 0
  %411 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1064.c, i8* %410, i64 11)
  %412 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %411)
  br i1 %412, label %then118, label %else119
then118:
  %413 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %406
  br label %merge120
else119:
  %414 = call { i64, i8* }* @parse__parse_function(%SharedEnv_parse* %env.param)
  %415 = alloca { i64, i8* }*
  store { i64, i8* }* %414, { i64, i8* }** %415
  %416 = load { i64, i8* }*, { i64, i8* }** %405
  %417 = load { i64, i8* }*, { i64, i8* }** %415
  %418 = ptrtoint { i64, i8* }* %417 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %416, i64 %418, i64 5)
  br label %merge120
merge120:
  br label %while_cond115
while_end117:
  %419 = getelementptr [5 x i8], [5 x i8]* @.str1065, i32 0, i32 0
  %420 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1065.c, i8* %419, i64 4)
  %421 = call { i64, i8* }* @nyx_array_new_ptr()
  %422 = load %nyx_string*, %nyx_string** %161
  %423 = ptrtoint %nyx_string* %422 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %421, i64 %423, i64 2)
  %424 = load { i64, i8* }*, { i64, i8* }** %405
  %425 = ptrtoint { i64, i8* }* %424 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %421, i64 %425, i64 5)
  %426 = load { i64, i8* }*, { i64, i8* }** %35
  %427 = ptrtoint { i64, i8* }* %426 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %421, i64 %427, i64 5)
  %428 = call { i64, i8* }* @make_astnode(%nyx_string* %420, { i64, i8* }* %421)
  ret { i64, i8* }* %428
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %32 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %33 = alloca { i64, i8* }*
  store { i64, i8* }* %32, { i64, i8* }** %33
  %34 = getelementptr [6 x i8], [6 x i8]* @.str1066, i32 0, i32 0
  %35 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1066.c, i8* %34, i64 5)
  %36 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %35)
  %37 = getelementptr [11 x i8], [11 x i8]* @.str1067, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1067.c, i8* %37, i64 10)
  %39 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %38)
  %40 = getelementptr [11 x i8], [11 x i8]* @.str1068, i32 0, i32 0
  %41 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1068.c, i8* %40, i64 10)
  %42 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %41)
  %43 = alloca %Token
  store %Token %42, %Token* %43
  %44 = load %Token, %Token* %43
  %45 = call %nyx_string* @get_token_value(%Token %44)
  %46 = alloca %nyx_string*
  store %nyx_string* %45, %nyx_string** %46
  %47 = getelementptr [1 x i8], [1 x i8]* @.str1069, i32 0, i32 0
  %48 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1069.c, i8* %47, i64 0)
  %49 = alloca %nyx_string*
  store %nyx_string* %48, %nyx_string** %49
  %50 = getelementptr [6 x i8], [6 x i8]* @.str1070, i32 0, i32 0
  %51 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1070.c, i8* %50, i64 5)
  %52 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %51)
  br i1 %52, label %then0, label %else1
then0:
  %53 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %54 = getelementptr [11 x i8], [11 x i8]* @.str1071, i32 0, i32 0
  %55 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1071.c, i8* %54, i64 10)
  %56 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %55)
  br i1 %56, label %then3, label %else4
then3:
  %57 = getelementptr [11 x i8], [11 x i8]* @.str1072, i32 0, i32 0
  %58 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1072.c, i8* %57, i64 10)
  %59 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %58)
  %60 = alloca %Token
  store %Token %59, %Token* %60
  %61 = load %Token, %Token* %60
  %62 = call %nyx_string* @get_token_value(%Token %61)
  store %nyx_string* %62, %nyx_string** %49
  br label %merge5
else4:
  br label %merge5
merge5:
  br label %merge2
else1:
  br label %merge2
merge2:
  %63 = getelementptr [12 x i8], [12 x i8]* @.str1073, i32 0, i32 0
  %64 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1073.c, i8* %63, i64 11)
  %65 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %64)
  %66 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %67 = alloca { i64, i8* }*
  store { i64, i8* }* %66, { i64, i8* }** %67
  %68 = getelementptr [10 x i8], [10 x i8]* @.str1074, i32 0, i32 0
  %69 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1074.c, i8* %68, i64 9)
  %70 = call { i64, i8* }* @nyx_array_new_ptr()
  %71 = load { i64, i8* }*, { i64, i8* }** %33
  %72 = ptrtoint { i64, i8* }* %71 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %70, i64 %72, i64 5)
  %73 = load %nyx_string*, %nyx_string** %46
  %74 = ptrtoint %nyx_string* %73 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %70, i64 %74, i64 2)
  %75 = load { i64, i8* }*, { i64, i8* }** %67
  %76 = ptrtoint { i64, i8* }* %75 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %70, i64 %76, i64 5)
  %77 = load %nyx_string*, %nyx_string** %49
  %78 = ptrtoint %nyx_string* %77 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %70, i64 %78, i64 2)
  %79 = call { i64, i8* }* @make_astnode(%nyx_string* %69, { i64, i8* }* %70)
  ret { i64, i8* }* %79
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %32 = getelementptr [11 x i8], [11 x i8]* @.str1075, i32 0, i32 0
  %33 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1075.c, i8* %32, i64 10)
  %34 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %33)
  %35 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %36 = alloca { i64, i8* }*
  store { i64, i8* }* %35, { i64, i8* }** %36
  %37 = getelementptr [12 x i8], [12 x i8]* @.str1076, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1076.c, i8* %37, i64 11)
  %39 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %38)
  %40 = getelementptr [6 x i8], [6 x i8]* @.str1077, i32 0, i32 0
  %41 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1077.c, i8* %40, i64 5)
  %42 = call { i64, i8* }* @nyx_array_new_ptr()
  %43 = load { i64, i8* }*, { i64, i8* }** %36
  %44 = ptrtoint { i64, i8* }* %43 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %42, i64 %44, i64 5)
  %45 = call { i64, i8* }* @make_astnode(%nyx_string* %41, { i64, i8* }* %42)
  ret { i64, i8* }* %45
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = getelementptr [11 x i8], [11 x i8]* @.str1078, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1078.c, i8* %31, i64 10)
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
  %40 = load i64, i64* %8
  %41 = icmp eq i64 %40, 1
  br i1 %41, label %then3, label %else4
then3:
  store i1 1, i1* %36
  br label %merge5
else4:
  %42 = getelementptr [4 x i8], [4 x i8]* @.str1079, i32 0, i32 0
  %43 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1079.c, i8* %42, i64 3)
  %44 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %43)
  br i1 %44, label %then6, label %else7
then6:
  %45 = getelementptr [8 x i8], [8 x i8]* @.str1080, i32 0, i32 0
  %46 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1080.c, i8* %45, i64 7)
  %47 = load i64, i64* @g_last_line
  %48 = load i64, i64* @g_last_col
  %49 = getelementptr [47 x i8], [47 x i8]* @.str1081, i32 0, i32 0
  %50 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1081.c, i8* %49, i64 46)
  %51 = getelementptr [44 x i8], [44 x i8]* @.str1082, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1082.c, i8* %51, i64 43)
  %53 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %50, %nyx_string* %52)
  %54 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %46, i64 %47, i64 %48, %nyx_string* %53)
  store i1 1, i1* %36
  br label %merge8
else7:
  %55 = getelementptr [12 x i8], [12 x i8]* @.str1083, i32 0, i32 0
  %56 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1083.c, i8* %55, i64 11)
  %57 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %56)
  br i1 %57, label %then9, label %else10
then9:
  %58 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %36
  br label %merge11
else10:
  %59 = load i64, i64* %4
  %60 = alloca i64
  store i64 %59, i64* %60
  %61 = load { i64, i8* }*, { i64, i8* }** %12
  %62 = call i64 @nyx_array_length({ i64, i8* }* %61)
  %63 = alloca i64
  store i64 %62, i64* %63
  %64 = call { i64, i8* }* @parse__parse_statement(%SharedEnv_parse* %env.param)
  %65 = alloca { i64, i8* }*
  store { i64, i8* }* %64, { i64, i8* }** %65
  %66 = load i64, i64* %4
  %67 = load i64, i64* %60
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %then12, label %else13
then12:
  %69 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge14
else13:
  %70 = load { i64, i8* }*, { i64, i8* }** %12
  %71 = call i64 @nyx_array_length({ i64, i8* }* %70)
  %72 = load i64, i64* %63
  %73 = icmp sgt i64 %71, %72
  br i1 %73, label %then15, label %else16
then15:
  %74 = load i64, i64* %63
  %75 = alloca i64
  store i64 %74, i64* %75
  %76 = call i8* @llvm.stacksave()
  br label %while_cond18
while_cond18:
  %77 = load i64, i64* %75
  %78 = load { i64, i8* }*, { i64, i8* }** %12
  %79 = call i64 @nyx_array_length({ i64, i8* }* %78)
  %80 = icmp slt i64 %77, %79
  br i1 %80, label %while_body19, label %while_end20
while_body19:
  call void @llvm.stackrestore(i8* %76)
  %81 = load { i64, i8* }*, { i64, i8* }** %12
  %82 = load i64, i64* %75
  %83 = call i64 @nyx_array_get({ i64, i8* }* %81, i64 %82)
  %84 = inttoptr i64 %83 to { i64, i8* }*
  %85 = alloca { i64, i8* }*
  store { i64, i8* }* %84, { i64, i8* }** %85
  %86 = load { i64, i8* }*, { i64, i8* }** %85
  %87 = call i64 @nyx_array_get_checked({ i64, i8* }* %86, i64 0, i64 2)
  %88 = inttoptr i64 %87 to %nyx_string*
  %89 = alloca %nyx_string*
  store %nyx_string* %88, %nyx_string** %89
  %90 = load %nyx_string*, %nyx_string** %89
  %91 = getelementptr [10 x i8], [10 x i8]* @.str1084, i32 0, i32 0
  %92 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1084.c, i8* %91, i64 9)
  %93 = call i1 @nyx_string_equals(%nyx_string* %90, %nyx_string* %92)
  %94 = xor i1 %93, true
  br i1 %94, label %then21, label %else22
then21:
  %95 = load { i64, i8* }*, { i64, i8* }** %35
  %96 = load { i64, i8* }*, { i64, i8* }** %12
  %97 = load i64, i64* %75
  %98 = call i64 @nyx_array_get({ i64, i8* }* %96, i64 %97)
  %99 = load { i64, i8* }*, { i64, i8* }** %12
  %100 = load i64, i64* %75
  %101 = call i64 @nyx_array_get_tag({ i64, i8* }* %99, i64 %100)
  call void @nyx_array_push_tagged({ i64, i8* }* %95, i64 %98, i64 %101)
  %102 = load { i64, i8* }*, { i64, i8* }** %12
  %103 = load i64, i64* %75
  %104 = getelementptr [10 x i8], [10 x i8]* @.str1085, i32 0, i32 0
  %105 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1085.c, i8* %104, i64 9)
  %106 = call { i64, i8* }* @nyx_array_new_ptr()
  %107 = call { i64, i8* }* @make_astnode(%nyx_string* %105, { i64, i8* }* %106)
  %108 = ptrtoint { i64, i8* }* %107 to i64
  call void @nyx_array_set_tagged({ i64, i8* }* %102, i64 %103, i64 %108, i64 5)
  br label %merge23
else22:
  br label %merge23
merge23:
  %109 = load i64, i64* %75
  %110 = add i64 %109, 1
  store i64 %110, i64* %75
  br label %while_cond18
while_end20:
  br label %merge17
else16:
  br label %merge17
merge17:
  %111 = load { i64, i8* }*, { i64, i8* }** %35
  %112 = load { i64, i8* }*, { i64, i8* }** %65
  %113 = ptrtoint { i64, i8* }* %112 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %111, i64 %113, i64 5)
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
  %114 = getelementptr [6 x i8], [6 x i8]* @.str1086, i32 0, i32 0
  %115 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1086.c, i8* %114, i64 5)
  %116 = call { i64, i8* }* @nyx_array_new_ptr()
  %117 = load { i64, i8* }*, { i64, i8* }** %35
  %118 = ptrtoint { i64, i8* }* %117 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %116, i64 %118, i64 5)
  %119 = call { i64, i8* }* @make_astnode(%nyx_string* %115, { i64, i8* }* %116)
  ret { i64, i8* }* %119
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = getelementptr [11 x i8], [11 x i8]* @.str1087, i32 0, i32 0
  %32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1087.c, i8* %31, i64 10)
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
  %40 = load i64, i64* %8
  %41 = icmp eq i64 %40, 1
  br i1 %41, label %then3, label %else4
then3:
  store i1 1, i1* %36
  br label %merge5
else4:
  %42 = getelementptr [4 x i8], [4 x i8]* @.str1088, i32 0, i32 0
  %43 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1088.c, i8* %42, i64 3)
  %44 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %43)
  br i1 %44, label %then6, label %else7
then6:
  %45 = getelementptr [8 x i8], [8 x i8]* @.str1089, i32 0, i32 0
  %46 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1089.c, i8* %45, i64 7)
  %47 = load i64, i64* @g_last_line
  %48 = load i64, i64* @g_last_col
  %49 = getelementptr [47 x i8], [47 x i8]* @.str1090, i32 0, i32 0
  %50 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1090.c, i8* %49, i64 46)
  %51 = getelementptr [44 x i8], [44 x i8]* @.str1091, i32 0, i32 0
  %52 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1091.c, i8* %51, i64 43)
  %53 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %50, %nyx_string* %52)
  %54 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %46, i64 %47, i64 %48, %nyx_string* %53)
  store i1 1, i1* %36
  br label %merge8
else7:
  %55 = getelementptr [12 x i8], [12 x i8]* @.str1092, i32 0, i32 0
  %56 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1092.c, i8* %55, i64 11)
  %57 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %56)
  br i1 %57, label %then9, label %else10
then9:
  %58 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %36
  br label %merge11
else10:
  %59 = load i64, i64* %4
  %60 = alloca i64
  store i64 %59, i64* %60
  %61 = load { i64, i8* }*, { i64, i8* }** %12
  %62 = call i64 @nyx_array_length({ i64, i8* }* %61)
  %63 = alloca i64
  store i64 %62, i64* %63
  %64 = call { i64, i8* }* @parse__parse_statement(%SharedEnv_parse* %env.param)
  %65 = alloca { i64, i8* }*
  store { i64, i8* }* %64, { i64, i8* }** %65
  %66 = load i64, i64* %4
  %67 = load i64, i64* %60
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %then12, label %else13
then12:
  %69 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge14
else13:
  %70 = load { i64, i8* }*, { i64, i8* }** %12
  %71 = call i64 @nyx_array_length({ i64, i8* }* %70)
  %72 = load i64, i64* %63
  %73 = icmp sgt i64 %71, %72
  br i1 %73, label %then15, label %else16
then15:
  %74 = load i64, i64* %63
  %75 = alloca i64
  store i64 %74, i64* %75
  %76 = call i8* @llvm.stacksave()
  br label %while_cond18
while_cond18:
  %77 = load i64, i64* %75
  %78 = load { i64, i8* }*, { i64, i8* }** %12
  %79 = call i64 @nyx_array_length({ i64, i8* }* %78)
  %80 = icmp slt i64 %77, %79
  br i1 %80, label %while_body19, label %while_end20
while_body19:
  call void @llvm.stackrestore(i8* %76)
  %81 = load { i64, i8* }*, { i64, i8* }** %12
  %82 = load i64, i64* %75
  %83 = call i64 @nyx_array_get({ i64, i8* }* %81, i64 %82)
  %84 = inttoptr i64 %83 to { i64, i8* }*
  %85 = alloca { i64, i8* }*
  store { i64, i8* }* %84, { i64, i8* }** %85
  %86 = load { i64, i8* }*, { i64, i8* }** %85
  %87 = call i64 @nyx_array_get_checked({ i64, i8* }* %86, i64 0, i64 2)
  %88 = inttoptr i64 %87 to %nyx_string*
  %89 = alloca %nyx_string*
  store %nyx_string* %88, %nyx_string** %89
  %90 = load %nyx_string*, %nyx_string** %89
  %91 = getelementptr [10 x i8], [10 x i8]* @.str1093, i32 0, i32 0
  %92 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1093.c, i8* %91, i64 9)
  %93 = call i1 @nyx_string_equals(%nyx_string* %90, %nyx_string* %92)
  %94 = xor i1 %93, true
  br i1 %94, label %then21, label %else22
then21:
  %95 = load { i64, i8* }*, { i64, i8* }** %35
  %96 = load { i64, i8* }*, { i64, i8* }** %12
  %97 = load i64, i64* %75
  %98 = call i64 @nyx_array_get({ i64, i8* }* %96, i64 %97)
  %99 = load { i64, i8* }*, { i64, i8* }** %12
  %100 = load i64, i64* %75
  %101 = call i64 @nyx_array_get_tag({ i64, i8* }* %99, i64 %100)
  call void @nyx_array_push_tagged({ i64, i8* }* %95, i64 %98, i64 %101)
  %102 = load { i64, i8* }*, { i64, i8* }** %12
  %103 = load i64, i64* %75
  %104 = getelementptr [10 x i8], [10 x i8]* @.str1094, i32 0, i32 0
  %105 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1094.c, i8* %104, i64 9)
  %106 = call { i64, i8* }* @nyx_array_new_ptr()
  %107 = call { i64, i8* }* @make_astnode(%nyx_string* %105, { i64, i8* }* %106)
  %108 = ptrtoint { i64, i8* }* %107 to i64
  call void @nyx_array_set_tagged({ i64, i8* }* %102, i64 %103, i64 %108, i64 5)
  br label %merge23
else22:
  br label %merge23
merge23:
  %109 = load i64, i64* %75
  %110 = add i64 %109, 1
  store i64 %110, i64* %75
  br label %while_cond18
while_end20:
  br label %merge17
else16:
  br label %merge17
merge17:
  %111 = load { i64, i8* }*, { i64, i8* }** %35
  %112 = load { i64, i8* }*, { i64, i8* }** %65
  %113 = ptrtoint { i64, i8* }* %112 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %111, i64 %113, i64 5)
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
  %114 = getelementptr [6 x i8], [6 x i8]* @.str1095, i32 0, i32 0
  %115 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1095.c, i8* %114, i64 5)
  %116 = call { i64, i8* }* @nyx_array_new_ptr()
  %117 = load { i64, i8* }*, { i64, i8* }** %35
  %118 = ptrtoint { i64, i8* }* %117 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %116, i64 %118, i64 5)
  %119 = call { i64, i8* }* @make_astnode(%nyx_string* %115, { i64, i8* }* %116)
  ret { i64, i8* }* %119
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %32 = alloca { i64, i8* }*
  store { i64, i8* }* %31, { i64, i8* }** %32
  %33 = load { i64, i8* }*, { i64, i8* }** %32
  %34 = call %nyx_string* @astnode_get_type({ i64, i8* }* %33)
  %35 = alloca %nyx_string*
  store %nyx_string* %34, %nyx_string** %35
  %36 = load { i64, i8* }*, { i64, i8* }** %32
  %37 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %36)
  %38 = alloca { i64, i8* }*
  store { i64, i8* }* %37, { i64, i8* }** %38
  %39 = load %nyx_string*, %nyx_string** %35
  %40 = getelementptr [11 x i8], [11 x i8]* @.str1096, i32 0, i32 0
  %41 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1096.c, i8* %40, i64 10)
  %42 = call i1 @nyx_string_equals(%nyx_string* %39, %nyx_string* %41)
  br i1 %42, label %then0, label %else1
then0:
  %43 = getelementptr [7 x i8], [7 x i8]* @.str1097, i32 0, i32 0
  %44 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1097.c, i8* %43, i64 6)
  %45 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %44)
  br i1 %45, label %then3, label %else4
then3:
  %46 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %47 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %48 = alloca { i64, i8* }*
  store { i64, i8* }* %47, { i64, i8* }** %48
  %49 = load { i64, i8* }*, { i64, i8* }** %38
  %50 = call i64 @nyx_array_get_checked({ i64, i8* }* %49, i64 0, i64 2)
  %51 = inttoptr i64 %50 to %nyx_string*
  %52 = alloca %nyx_string*
  store %nyx_string* %51, %nyx_string** %52
  %53 = load %nyx_string*, %nyx_string** %52
  %54 = call { i64, i8* }* @nyx_array_new_ptr()
  %55 = call { i64, i8* }* @make_astnode(%nyx_string* %53, { i64, i8* }* %54)
  %56 = alloca { i64, i8* }*
  store { i64, i8* }* %55, { i64, i8* }** %56
  %57 = getelementptr [7 x i8], [7 x i8]* @.str1098, i32 0, i32 0
  %58 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1098.c, i8* %57, i64 6)
  %59 = call { i64, i8* }* @nyx_array_new_ptr()
  %60 = load { i64, i8* }*, { i64, i8* }** %56
  %61 = ptrtoint { i64, i8* }* %60 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %59, i64 %61, i64 5)
  %62 = load { i64, i8* }*, { i64, i8* }** %48
  %63 = ptrtoint { i64, i8* }* %62 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %59, i64 %63, i64 5)
  %64 = call { i64, i8* }* @make_astnode(%nyx_string* %58, { i64, i8* }* %59)
  ret { i64, i8* }* %64
else4:
  br label %merge5
merge5:
  %65 = getelementptr [1 x i8], [1 x i8]* @.str1099, i32 0, i32 0
  %66 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1099.c, i8* %65, i64 0)
  %67 = alloca %nyx_string*
  store %nyx_string* %66, %nyx_string** %67
  %68 = getelementptr [12 x i8], [12 x i8]* @.str1100, i32 0, i32 0
  %69 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1100.c, i8* %68, i64 11)
  %70 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %69)
  br i1 %70, label %then6, label %else7
then6:
  %71 = getelementptr [5 x i8], [5 x i8]* @.str1101, i32 0, i32 0
  %72 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1101.c, i8* %71, i64 4)
  store %nyx_string* %72, %nyx_string** %67
  br label %merge8
else7:
  br label %merge8
merge8:
  %73 = getelementptr [13 x i8], [13 x i8]* @.str1102, i32 0, i32 0
  %74 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1102.c, i8* %73, i64 12)
  %75 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %74)
  br i1 %75, label %then9, label %else10
then9:
  %76 = getelementptr [6 x i8], [6 x i8]* @.str1103, i32 0, i32 0
  %77 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1103.c, i8* %76, i64 5)
  store %nyx_string* %77, %nyx_string** %67
  br label %merge11
else10:
  br label %merge11
merge11:
  %78 = getelementptr [12 x i8], [12 x i8]* @.str1104, i32 0, i32 0
  %79 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1104.c, i8* %78, i64 11)
  %80 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %79)
  br i1 %80, label %then12, label %else13
then12:
  %81 = getelementptr [5 x i8], [5 x i8]* @.str1105, i32 0, i32 0
  %82 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1105.c, i8* %81, i64 4)
  store %nyx_string* %82, %nyx_string** %67
  br label %merge14
else13:
  br label %merge14
merge14:
  %83 = getelementptr [13 x i8], [13 x i8]* @.str1106, i32 0, i32 0
  %84 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1106.c, i8* %83, i64 12)
  %85 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %84)
  br i1 %85, label %then15, label %else16
then15:
  %86 = getelementptr [6 x i8], [6 x i8]* @.str1107, i32 0, i32 0
  %87 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1107.c, i8* %86, i64 5)
  store %nyx_string* %87, %nyx_string** %67
  br label %merge17
else16:
  br label %merge17
merge17:
  %88 = getelementptr [15 x i8], [15 x i8]* @.str1108, i32 0, i32 0
  %89 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1108.c, i8* %88, i64 14)
  %90 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %89)
  br i1 %90, label %then18, label %else19
then18:
  %91 = getelementptr [8 x i8], [8 x i8]* @.str1109, i32 0, i32 0
  %92 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1109.c, i8* %91, i64 7)
  store %nyx_string* %92, %nyx_string** %67
  br label %merge20
else19:
  br label %merge20
merge20:
  %93 = getelementptr [11 x i8], [11 x i8]* @.str1110, i32 0, i32 0
  %94 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1110.c, i8* %93, i64 10)
  %95 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %94)
  br i1 %95, label %then21, label %else22
then21:
  %96 = getelementptr [4 x i8], [4 x i8]* @.str1111, i32 0, i32 0
  %97 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1111.c, i8* %96, i64 3)
  store %nyx_string* %97, %nyx_string** %67
  br label %merge23
else22:
  br label %merge23
merge23:
  %98 = getelementptr [12 x i8], [12 x i8]* @.str1112, i32 0, i32 0
  %99 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1112.c, i8* %98, i64 11)
  %100 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %99)
  br i1 %100, label %then24, label %else25
then24:
  %101 = getelementptr [5 x i8], [5 x i8]* @.str1113, i32 0, i32 0
  %102 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1113.c, i8* %101, i64 4)
  store %nyx_string* %102, %nyx_string** %67
  br label %merge26
else25:
  br label %merge26
merge26:
  %103 = getelementptr [13 x i8], [13 x i8]* @.str1114, i32 0, i32 0
  %104 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1114.c, i8* %103, i64 12)
  %105 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %104)
  br i1 %105, label %then27, label %else28
then27:
  %106 = getelementptr [6 x i8], [6 x i8]* @.str1115, i32 0, i32 0
  %107 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1115.c, i8* %106, i64 5)
  store %nyx_string* %107, %nyx_string** %67
  br label %merge29
else28:
  br label %merge29
merge29:
  %108 = getelementptr [18 x i8], [18 x i8]* @.str1116, i32 0, i32 0
  %109 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1116.c, i8* %108, i64 17)
  %110 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %109)
  br i1 %110, label %then30, label %else31
then30:
  %111 = getelementptr [11 x i8], [11 x i8]* @.str1117, i32 0, i32 0
  %112 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1117.c, i8* %111, i64 10)
  store %nyx_string* %112, %nyx_string** %67
  br label %merge32
else31:
  br label %merge32
merge32:
  %113 = getelementptr [19 x i8], [19 x i8]* @.str1118, i32 0, i32 0
  %114 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1118.c, i8* %113, i64 18)
  %115 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %114)
  br i1 %115, label %then33, label %else34
then33:
  %116 = getelementptr [12 x i8], [12 x i8]* @.str1119, i32 0, i32 0
  %117 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1119.c, i8* %116, i64 11)
  store %nyx_string* %117, %nyx_string** %67
  br label %merge35
else34:
  br label %merge35
merge35:
  %118 = load %nyx_string*, %nyx_string** %67
  %119 = getelementptr [1 x i8], [1 x i8]* @.str1120, i32 0, i32 0
  %120 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1120.c, i8* %119, i64 0)
  %121 = call i1 @nyx_string_equals(%nyx_string* %118, %nyx_string* %120)
  %122 = xor i1 %121, true
  br i1 %122, label %then36, label %else37
then36:
  %123 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %124 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %125 = alloca { i64, i8* }*
  store { i64, i8* }* %124, { i64, i8* }** %125
  %126 = load { i64, i8* }*, { i64, i8* }** %38
  %127 = call i64 @nyx_array_get_checked({ i64, i8* }* %126, i64 0, i64 2)
  %128 = inttoptr i64 %127 to %nyx_string*
  %129 = alloca %nyx_string*
  store %nyx_string* %128, %nyx_string** %129
  %130 = load %nyx_string*, %nyx_string** %129
  %131 = call { i64, i8* }* @nyx_array_new_ptr()
  %132 = call { i64, i8* }* @make_astnode(%nyx_string* %130, { i64, i8* }* %131)
  %133 = alloca { i64, i8* }*
  store { i64, i8* }* %132, { i64, i8* }** %133
  %134 = getelementptr [11 x i8], [11 x i8]* @.str1121, i32 0, i32 0
  %135 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1121.c, i8* %134, i64 10)
  %136 = call { i64, i8* }* @nyx_array_new_ptr()
  %137 = load %nyx_string*, %nyx_string** %129
  %138 = ptrtoint %nyx_string* %137 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %136, i64 %138, i64 2)
  %139 = call { i64, i8* }* @make_astnode(%nyx_string* %135, { i64, i8* }* %136)
  %140 = alloca { i64, i8* }*
  store { i64, i8* }* %139, { i64, i8* }** %140
  %141 = getelementptr [6 x i8], [6 x i8]* @.str1122, i32 0, i32 0
  %142 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1122.c, i8* %141, i64 5)
  %143 = call { i64, i8* }* @nyx_array_new_ptr()
  %144 = load %nyx_string*, %nyx_string** %67
  %145 = ptrtoint %nyx_string* %144 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %143, i64 %145, i64 2)
  %146 = load { i64, i8* }*, { i64, i8* }** %140
  %147 = ptrtoint { i64, i8* }* %146 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %143, i64 %147, i64 5)
  %148 = load { i64, i8* }*, { i64, i8* }** %125
  %149 = ptrtoint { i64, i8* }* %148 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %143, i64 %149, i64 5)
  %150 = call { i64, i8* }* @make_astnode(%nyx_string* %142, { i64, i8* }* %143)
  %151 = alloca { i64, i8* }*
  store { i64, i8* }* %150, { i64, i8* }** %151
  %152 = getelementptr [7 x i8], [7 x i8]* @.str1123, i32 0, i32 0
  %153 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1123.c, i8* %152, i64 6)
  %154 = call { i64, i8* }* @nyx_array_new_ptr()
  %155 = load { i64, i8* }*, { i64, i8* }** %133
  %156 = ptrtoint { i64, i8* }* %155 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %154, i64 %156, i64 5)
  %157 = load { i64, i8* }*, { i64, i8* }** %151
  %158 = ptrtoint { i64, i8* }* %157 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %154, i64 %158, i64 5)
  %159 = call { i64, i8* }* @make_astnode(%nyx_string* %153, { i64, i8* }* %154)
  ret { i64, i8* }* %159
else37:
  br label %merge38
merge38:
  br label %merge2
else1:
  br label %merge2
merge2:
  %160 = load %nyx_string*, %nyx_string** %35
  %161 = getelementptr [6 x i8], [6 x i8]* @.str1124, i32 0, i32 0
  %162 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1124.c, i8* %161, i64 5)
  %163 = call i1 @nyx_string_equals(%nyx_string* %160, %nyx_string* %162)
  br i1 %163, label %then39, label %else40
then39:
  %164 = getelementptr [7 x i8], [7 x i8]* @.str1125, i32 0, i32 0
  %165 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1125.c, i8* %164, i64 6)
  %166 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %165)
  br i1 %166, label %then42, label %else43
then42:
  %167 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %168 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %169 = alloca { i64, i8* }*
  store { i64, i8* }* %168, { i64, i8* }** %169
  %170 = load { i64, i8* }*, { i64, i8* }** %38
  %171 = call i64 @nyx_array_get({ i64, i8* }* %170, i64 0)
  %172 = inttoptr i64 %171 to { i64, i8* }*
  %173 = alloca { i64, i8* }*
  store { i64, i8* }* %172, { i64, i8* }** %173
  %174 = getelementptr [13 x i8], [13 x i8]* @.str1126, i32 0, i32 0
  %175 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1126.c, i8* %174, i64 12)
  %176 = call { i64, i8* }* @nyx_array_new_ptr()
  %177 = load { i64, i8* }*, { i64, i8* }** %173
  %178 = ptrtoint { i64, i8* }* %177 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %176, i64 %178, i64 5)
  %179 = load { i64, i8* }*, { i64, i8* }** %169
  %180 = ptrtoint { i64, i8* }* %179 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %176, i64 %180, i64 5)
  %181 = call { i64, i8* }* @make_astnode(%nyx_string* %175, { i64, i8* }* %176)
  ret { i64, i8* }* %181
else43:
  br label %merge44
merge44:
  br label %merge41
else40:
  br label %merge41
merge41:
  %182 = alloca i1
  store i1 false, i1* %182
  %183 = load %nyx_string*, %nyx_string** %35
  %184 = getelementptr [6 x i8], [6 x i8]* @.str1127, i32 0, i32 0
  %185 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1127.c, i8* %184, i64 5)
  %186 = call i1 @nyx_string_equals(%nyx_string* %183, %nyx_string* %185)
  br i1 %186, label %sc_and_rhs45, label %sc_and_end46
sc_and_rhs45:
  %187 = getelementptr [7 x i8], [7 x i8]* @.str1128, i32 0, i32 0
  %188 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1128.c, i8* %187, i64 6)
  %189 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %188)
  store i1 %189, i1* %182
  br label %sc_and_end46
sc_and_end46:
  %190 = load i1, i1* %182
  br i1 %190, label %then47, label %else48
then47:
  %191 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %192 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %193 = alloca { i64, i8* }*
  store { i64, i8* }* %192, { i64, i8* }** %193
  %194 = getelementptr [13 x i8], [13 x i8]* @.str1129, i32 0, i32 0
  %195 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1129.c, i8* %194, i64 12)
  %196 = call { i64, i8* }* @nyx_array_new_ptr()
  %197 = load { i64, i8* }*, { i64, i8* }** %38
  %198 = call i64 @nyx_array_get({ i64, i8* }* %197, i64 0)
  call void @nyx_array_push({ i64, i8* }* %196, i64 %198)
  %199 = load { i64, i8* }*, { i64, i8* }** %38
  %200 = call i64 @nyx_array_get({ i64, i8* }* %199, i64 1)
  call void @nyx_array_push({ i64, i8* }* %196, i64 %200)
  %201 = load { i64, i8* }*, { i64, i8* }** %193
  %202 = ptrtoint { i64, i8* }* %201 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %196, i64 %202, i64 5)
  %203 = call { i64, i8* }* @make_astnode(%nyx_string* %195, { i64, i8* }* %196)
  ret { i64, i8* }* %203
else48:
  br label %merge49
merge49:
  %204 = alloca i1
  store i1 false, i1* %204
  %205 = load %nyx_string*, %nyx_string** %35
  %206 = getelementptr [13 x i8], [13 x i8]* @.str1130, i32 0, i32 0
  %207 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1130.c, i8* %206, i64 12)
  %208 = call i1 @nyx_string_equals(%nyx_string* %205, %nyx_string* %207)
  br i1 %208, label %sc_and_rhs50, label %sc_and_end51
sc_and_rhs50:
  %209 = getelementptr [7 x i8], [7 x i8]* @.str1131, i32 0, i32 0
  %210 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1131.c, i8* %209, i64 6)
  %211 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %210)
  store i1 %211, i1* %204
  br label %sc_and_end51
sc_and_end51:
  %212 = load i1, i1* %204
  br i1 %212, label %then52, label %else53
then52:
  %213 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %214 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %215 = alloca { i64, i8* }*
  store { i64, i8* }* %214, { i64, i8* }** %215
  %216 = getelementptr [13 x i8], [13 x i8]* @.str1132, i32 0, i32 0
  %217 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1132.c, i8* %216, i64 12)
  %218 = call { i64, i8* }* @nyx_array_new_ptr()
  %219 = load { i64, i8* }*, { i64, i8* }** %38
  %220 = call i64 @nyx_array_get({ i64, i8* }* %219, i64 0)
  call void @nyx_array_push({ i64, i8* }* %218, i64 %220)
  %221 = load { i64, i8* }*, { i64, i8* }** %38
  %222 = call i64 @nyx_array_get({ i64, i8* }* %221, i64 1)
  call void @nyx_array_push({ i64, i8* }* %218, i64 %222)
  %223 = load { i64, i8* }*, { i64, i8* }** %215
  %224 = ptrtoint { i64, i8* }* %223 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %218, i64 %224, i64 5)
  %225 = call { i64, i8* }* @make_astnode(%nyx_string* %217, { i64, i8* }* %218)
  ret { i64, i8* }* %225
else53:
  br label %merge54
merge54:
  %226 = load { i64, i8* }*, { i64, i8* }** %32
  ret { i64, i8* }* %226
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
  %30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %31 = alloca i1
  store i1 0, i1* %31
  %32 = call i8* @llvm.stacksave()
  br label %while_cond0
while_cond0:
  %33 = load i1, i1* %31
  %34 = xor i1 %33, true
  br i1 %34, label %while_body1, label %while_end2
while_body1:
  call void @llvm.stackrestore(i8* %32)
  %35 = getelementptr [4 x i8], [4 x i8]* @.str1133, i32 0, i32 0
  %36 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1133.c, i8* %35, i64 3)
  %37 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %36)
  br i1 %37, label %then3, label %else4
then3:
  store i1 1, i1* %31
  br label %merge5
else4:
  %38 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %39 = call %nyx_string* @get_token_type(%Token %38)
  %40 = alloca %nyx_string*
  store %nyx_string* %39, %nyx_string** %40
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
  %55 = load %nyx_string*, %nyx_string** %40
  %56 = getelementptr [3 x i8], [3 x i8]* @.str1134, i32 0, i32 0
  %57 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1134.c, i8* %56, i64 2)
  %58 = call i1 @nyx_string_equals(%nyx_string* %55, %nyx_string* %57)
  br i1 %58, label %sc_or_end7, label %sc_or_rhs6
sc_or_rhs6:
  %59 = load %nyx_string*, %nyx_string** %40
  %60 = getelementptr [4 x i8], [4 x i8]* @.str1135, i32 0, i32 0
  %61 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1135.c, i8* %60, i64 3)
  %62 = call i1 @nyx_string_equals(%nyx_string* %59, %nyx_string* %61)
  store i1 %62, i1* %54
  br label %sc_or_end7
sc_or_end7:
  %63 = load i1, i1* %54
  br i1 %63, label %sc_or_end9, label %sc_or_rhs8
sc_or_rhs8:
  %64 = load %nyx_string*, %nyx_string** %40
  %65 = getelementptr [4 x i8], [4 x i8]* @.str1136, i32 0, i32 0
  %66 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1136.c, i8* %65, i64 3)
  %67 = call i1 @nyx_string_equals(%nyx_string* %64, %nyx_string* %66)
  store i1 %67, i1* %53
  br label %sc_or_end9
sc_or_end9:
  %68 = load i1, i1* %53
  br i1 %68, label %sc_or_end11, label %sc_or_rhs10
sc_or_rhs10:
  %69 = load %nyx_string*, %nyx_string** %40
  %70 = getelementptr [6 x i8], [6 x i8]* @.str1137, i32 0, i32 0
  %71 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1137.c, i8* %70, i64 5)
  %72 = call i1 @nyx_string_equals(%nyx_string* %69, %nyx_string* %71)
  store i1 %72, i1* %52
  br label %sc_or_end11
sc_or_end11:
  %73 = load i1, i1* %52
  br i1 %73, label %sc_or_end13, label %sc_or_rhs12
sc_or_rhs12:
  %74 = load %nyx_string*, %nyx_string** %40
  %75 = getelementptr [7 x i8], [7 x i8]* @.str1138, i32 0, i32 0
  %76 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1138.c, i8* %75, i64 6)
  %77 = call i1 @nyx_string_equals(%nyx_string* %74, %nyx_string* %76)
  store i1 %77, i1* %51
  br label %sc_or_end13
sc_or_end13:
  %78 = load i1, i1* %51
  br i1 %78, label %sc_or_end15, label %sc_or_rhs14
sc_or_rhs14:
  %79 = load %nyx_string*, %nyx_string** %40
  %80 = getelementptr [5 x i8], [5 x i8]* @.str1139, i32 0, i32 0
  %81 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1139.c, i8* %80, i64 4)
  %82 = call i1 @nyx_string_equals(%nyx_string* %79, %nyx_string* %81)
  store i1 %82, i1* %50
  br label %sc_or_end15
sc_or_end15:
  %83 = load i1, i1* %50
  br i1 %83, label %sc_or_end17, label %sc_or_rhs16
sc_or_rhs16:
  %84 = load %nyx_string*, %nyx_string** %40
  %85 = getelementptr [3 x i8], [3 x i8]* @.str1140, i32 0, i32 0
  %86 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1140.c, i8* %85, i64 2)
  %87 = call i1 @nyx_string_equals(%nyx_string* %84, %nyx_string* %86)
  store i1 %87, i1* %49
  br label %sc_or_end17
sc_or_end17:
  %88 = load i1, i1* %49
  br i1 %88, label %sc_or_end19, label %sc_or_rhs18
sc_or_rhs18:
  %89 = load %nyx_string*, %nyx_string** %40
  %90 = getelementptr [6 x i8], [6 x i8]* @.str1141, i32 0, i32 0
  %91 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1141.c, i8* %90, i64 5)
  %92 = call i1 @nyx_string_equals(%nyx_string* %89, %nyx_string* %91)
  store i1 %92, i1* %48
  br label %sc_or_end19
sc_or_end19:
  %93 = load i1, i1* %48
  br i1 %93, label %sc_or_end21, label %sc_or_rhs20
sc_or_rhs20:
  %94 = load %nyx_string*, %nyx_string** %40
  %95 = getelementptr [4 x i8], [4 x i8]* @.str1142, i32 0, i32 0
  %96 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1142.c, i8* %95, i64 3)
  %97 = call i1 @nyx_string_equals(%nyx_string* %94, %nyx_string* %96)
  store i1 %97, i1* %47
  br label %sc_or_end21
sc_or_end21:
  %98 = load i1, i1* %47
  br i1 %98, label %sc_or_end23, label %sc_or_rhs22
sc_or_rhs22:
  %99 = load %nyx_string*, %nyx_string** %40
  %100 = getelementptr [7 x i8], [7 x i8]* @.str1143, i32 0, i32 0
  %101 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1143.c, i8* %100, i64 6)
  %102 = call i1 @nyx_string_equals(%nyx_string* %99, %nyx_string* %101)
  store i1 %102, i1* %46
  br label %sc_or_end23
sc_or_end23:
  %103 = load i1, i1* %46
  br i1 %103, label %sc_or_end25, label %sc_or_rhs24
sc_or_rhs24:
  %104 = load %nyx_string*, %nyx_string** %40
  %105 = getelementptr [7 x i8], [7 x i8]* @.str1144, i32 0, i32 0
  %106 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1144.c, i8* %105, i64 6)
  %107 = call i1 @nyx_string_equals(%nyx_string* %104, %nyx_string* %106)
  store i1 %107, i1* %45
  br label %sc_or_end25
sc_or_end25:
  %108 = load i1, i1* %45
  br i1 %108, label %sc_or_end27, label %sc_or_rhs26
sc_or_rhs26:
  %109 = load %nyx_string*, %nyx_string** %40
  %110 = getelementptr [7 x i8], [7 x i8]* @.str1145, i32 0, i32 0
  %111 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1145.c, i8* %110, i64 6)
  %112 = call i1 @nyx_string_equals(%nyx_string* %109, %nyx_string* %111)
  store i1 %112, i1* %44
  br label %sc_or_end27
sc_or_end27:
  %113 = load i1, i1* %44
  br i1 %113, label %sc_or_end29, label %sc_or_rhs28
sc_or_rhs28:
  %114 = load %nyx_string*, %nyx_string** %40
  %115 = getelementptr [6 x i8], [6 x i8]* @.str1146, i32 0, i32 0
  %116 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1146.c, i8* %115, i64 5)
  %117 = call i1 @nyx_string_equals(%nyx_string* %114, %nyx_string* %116)
  store i1 %117, i1* %43
  br label %sc_or_end29
sc_or_end29:
  %118 = load i1, i1* %43
  br i1 %118, label %sc_or_end31, label %sc_or_rhs30
sc_or_rhs30:
  %119 = load %nyx_string*, %nyx_string** %40
  %120 = getelementptr [5 x i8], [5 x i8]* @.str1147, i32 0, i32 0
  %121 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1147.c, i8* %120, i64 4)
  %122 = call i1 @nyx_string_equals(%nyx_string* %119, %nyx_string* %121)
  store i1 %122, i1* %42
  br label %sc_or_end31
sc_or_end31:
  %123 = load i1, i1* %42
  br i1 %123, label %sc_or_end33, label %sc_or_rhs32
sc_or_rhs32:
  %124 = load %nyx_string*, %nyx_string** %40
  %125 = getelementptr [6 x i8], [6 x i8]* @.str1148, i32 0, i32 0
  %126 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1148.c, i8* %125, i64 5)
  %127 = call i1 @nyx_string_equals(%nyx_string* %124, %nyx_string* %126)
  store i1 %127, i1* %41
  br label %sc_or_end33
sc_or_end33:
  %128 = load i1, i1* %41
  br i1 %128, label %then34, label %else35
then34:
  store i1 1, i1* %31
  br label %merge36
else35:
  %129 = load %nyx_string*, %nyx_string** %40
  %130 = getelementptr [12 x i8], [12 x i8]* @.str1149, i32 0, i32 0
  %131 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1149.c, i8* %130, i64 11)
  %132 = call i1 @nyx_string_equals(%nyx_string* %129, %nyx_string* %131)
  br i1 %132, label %then37, label %else38
then37:
  store i1 1, i1* %31
  br label %merge39
else38:
  %133 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
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

