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

@g_last_line = global i64 0
@g_last_col = global i64 0
@g_parse_error_count = global i64 0

define internal %nyx_string* @get_token_type(
%Token %tok.param) {
  %tok.ptr = alloca %Token
  store %Token %tok.param, %Token* %tok.ptr
  %t1 = getelementptr %Token, %Token* %tok.ptr, i32 0, i32 0
  %t2 = load %nyx_string*, %nyx_string** %t1
  ret %nyx_string* %t2
}

define internal %nyx_string* @get_token_value(
%Token %tok.param) {
  %tok.ptr = alloca %Token
  store %Token %tok.param, %Token* %tok.ptr
  %t3 = getelementptr %Token, %Token* %tok.ptr, i32 0, i32 1
  %t4 = load %nyx_string*, %nyx_string** %t3
  ret %nyx_string* %t4
}

define internal i64 @get_token_line(
%Token %tok.param) {
  %tok.ptr = alloca %Token
  store %Token %tok.param, %Token* %tok.ptr
  %t5 = getelementptr %Token, %Token* %tok.ptr, i32 0, i32 2
  %t6 = load i64, i64* %t5
  ret i64 %t6
}

define internal i64 @get_token_column(
%Token %tok.param) {
  %tok.ptr = alloca %Token
  store %Token %tok.param, %Token* %tok.ptr
  %t7 = getelementptr %Token, %Token* %tok.ptr, i32 0, i32 3
  %t8 = load i64, i64* %t7
  ret i64 %t8
}

define i64 @get_parse_error_count(
) {
  %t9 = load i64, i64* @g_parse_error_count
  ret i64 %t9
}

define internal { i64, i8* }* @make_astnode(
%nyx_string* %node_type.param, { i64, i8* }* %data.param) {
  %node_type.ptr = alloca %nyx_string*
  %data.ptr = alloca { i64, i8* }*
  %t11 = alloca { i64, i8* }*
  store %nyx_string* %node_type.param, %nyx_string** %node_type.ptr
  store { i64, i8* }* %data.param, { i64, i8* }** %data.ptr
  %t10 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t10, { i64, i8* }** %t11
  %t12 = load { i64, i8* }*, { i64, i8* }** %t11
  %t13 = load %nyx_string*, %nyx_string** %node_type.ptr
  %t14 = ptrtoint %nyx_string* %t13 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t12, i64 %t14, i64 2)
  %t15 = load { i64, i8* }*, { i64, i8* }** %t11
  %t16 = load { i64, i8* }*, { i64, i8* }** %data.ptr
  %t17 = ptrtoint { i64, i8* }* %t16 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t15, i64 %t17, i64 5)
  %t18 = load { i64, i8* }*, { i64, i8* }** %t11
  %t19 = load i64, i64* @g_last_line
  call void @nyx_array_push({ i64, i8* }* %t18, i64 %t19)
  %t20 = load { i64, i8* }*, { i64, i8* }** %t11
  %t21 = load i64, i64* @g_last_col
  call void @nyx_array_push({ i64, i8* }* %t20, i64 %t21)
  %t22 = load { i64, i8* }*, { i64, i8* }** %t11
  ret { i64, i8* }* %t22
}

define internal %nyx_string* @astnode_get_type(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %t23 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t24 = call i64 @nyx_array_get({ i64, i8* }* %t23, i64 0)
  %t25 = inttoptr i64 %t24 to %nyx_string*
  ret %nyx_string* %t25
}

define internal { i64, i8* }* @astnode_get_data(
{ i64, i8* }* %node.param) {
  %node.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %node.param, { i64, i8* }** %node.ptr
  %t26 = load { i64, i8* }*, { i64, i8* }** %node.ptr
  %t27 = call i64 @nyx_array_get({ i64, i8* }* %t26, i64 1)
  %t28 = inttoptr i64 %t27 to { i64, i8* }*
  ret { i64, i8* }* %t28
}

%SharedEnv_parse = type { { i64, i8* }*, %nyx_string*, { i64, i8* }*, i64, i64, i64, i64, i64, i64, %nyx_string*, i64, { i64, i8* }*, { i64, i8* }*, { i64, i8* }*, { i64, i8* }*, { i64, i8* }*, { i64, i8* }*, { i64, i8* }*, { i64, i8* }*, { i64, i8* }*, i1, i64, i64, i64, { i64, i8* }*, { i64, i8* }*, i64, { i64, i8* }*, %nyx_string*, i64 }
define { i64, i8* }* @parse(
{ i64, i8* }* %input_tokens.param, %nyx_string* %source.param) {
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* null, i32 1
  %t30 = ptrtoint %SharedEnv_parse* %t29 to i64
  %t31 = call i8* @GC_malloc(i64 %t30)
  %t32 = bitcast i8* %t31 to %SharedEnv_parse*
  %t33 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %t32, i32 0, i32 0
  store { i64, i8* }* %input_tokens.param, { i64, i8* }** %t33
  %t34 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %t32, i32 0, i32 1
  store %nyx_string* %source.param, %nyx_string** %t34
  %t35 = load { i64, i8* }*, { i64, i8* }** %t33
  %t36 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %t32, i32 0, i32 2
  store { i64, i8* }* %t35, { i64, i8* }** %t36
  %t37 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %t32, i32 0, i32 3
  store i64 0, i64* %t37
  %t38 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %t32, i32 0, i32 4
  store i64 0, i64* %t38
  %t39 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %t32, i32 0, i32 5
  store i64 0, i64* %t39
  %t40 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %t32, i32 0, i32 6
  store i64 0, i64* %t40
  %t41 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %t32, i32 0, i32 7
  store i64 0, i64* %t41
  store i64 0, i64* @g_parse_error_count
  %t42 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %t32, i32 0, i32 8
  store i64 0, i64* %t42
  %t43 = getelementptr [9 x i8], [9 x i8]* @.str0, i32 0, i32 0
  %t44 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str0.c, i8* %t43, i64 8)
  %t45 = call i8* @nyx_string_to_cstr(%nyx_string* %t44)
  %t46 = call %nyx_string* @nyx_getenv(i8* %t45)
  %t47 = getelementptr [3 x i8], [3 x i8]* @.str1, i32 0, i32 0
  %t48 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1.c, i8* %t47, i64 2)
  %t49 = call i1 @nyx_string_equals(%nyx_string* %t46, %nyx_string* %t48)
  br i1 %t49, label %then0, label %else1
then0:
  store i64 1, i64* %t42
  br label %merge2
else1:
  br label %merge2
merge2:
  %t50 = getelementptr [1 x i8], [1 x i8]* @.str2, i32 0, i32 0
  %t51 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str2.c, i8* %t50, i64 0)
  %t52 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %t32, i32 0, i32 9
  store %nyx_string* %t51, %nyx_string** %t52
  %t53 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %t32, i32 0, i32 10
  store i64 0, i64* %t53
  %t54 = getelementptr [9 x i8], [9 x i8]* @.str3, i32 0, i32 0
  %t55 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str3.c, i8* %t54, i64 8)
  %t56 = call i8* @nyx_string_to_cstr(%nyx_string* %t55)
  %t57 = call %nyx_string* @nyx_getenv(i8* %t56)
  %t58 = getelementptr [5 x i8], [5 x i8]* @.str4, i32 0, i32 0
  %t59 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str4.c, i8* %t58, i64 4)
  %t60 = call i1 @nyx_string_equals(%nyx_string* %t57, %nyx_string* %t59)
  br i1 %t60, label %then3, label %else4
then3:
  store i64 1, i64* %t53
  br label %merge5
else4:
  br label %merge5
merge5:
  %t61 = call { i64, i8* }* @nyx_array_new_ptr()
  %t62 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %t32, i32 0, i32 11
  store { i64, i8* }* %t61, { i64, i8* }** %t62
  %t63 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %t63, i64 0, i64 1)
  %t64 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %t32, i32 0, i32 12
  store { i64, i8* }* %t63, { i64, i8* }** %t64
  %t65 = call { i64, i8* }* @nyx_array_new_ptr()
  %t66 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %t32, i32 0, i32 13
  store { i64, i8* }* %t65, { i64, i8* }** %t66
  %t67 = call { i64, i8* }* @nyx_array_new_ptr()
  %t68 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %t32, i32 0, i32 14
  store { i64, i8* }* %t67, { i64, i8* }** %t68
  %t69 = call { i64, i8* }* @nyx_array_new_ptr()
  %t70 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %t32, i32 0, i32 15
  store { i64, i8* }* %t69, { i64, i8* }** %t70
  %t71 = call { i64, i8* }* @nyx_array_new_ptr()
  %t72 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %t32, i32 0, i32 16
  store { i64, i8* }* %t71, { i64, i8* }** %t72
  %t73 = call { i64, i8* }* @nyx_array_new_ptr()
  %t74 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %t32, i32 0, i32 17
  store { i64, i8* }* %t73, { i64, i8* }** %t74
  %t75 = call { i64, i8* }* @nyx_array_new_ptr()
  %t76 = getelementptr [1 x i8], [1 x i8]* @.str5, i32 0, i32 0
  %t77 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str5.c, i8* %t76, i64 0)
  %t78 = ptrtoint %nyx_string* %t77 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t75, i64 %t78, i64 2)
  %t79 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %t32, i32 0, i32 18
  store { i64, i8* }* %t75, { i64, i8* }** %t79
  %t80 = call { i64, i8* }* @nyx_array_new_ptr()
  %t81 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %t32, i32 0, i32 19
  store { i64, i8* }* %t80, { i64, i8* }** %t81
  %t82 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %t32, i32 0, i32 20
  store i1 0, i1* %t82
  %t83 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %t32, i32 0, i32 21
  store i64 0, i64* %t83
  %t84 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %t32, i32 0, i32 22
  store i64 0, i64* %t84
  br label %while_cond6
while_cond6:
  %t85 = load i1, i1* %t82
  %t86 = xor i1 %t85, true
  br i1 %t86, label %while_body7, label %while_end8
while_body7:
  %t87 = load i64, i64* %t83
  %t88 = add i64 %t87, 1
  store i64 %t88, i64* %t83
  %t89 = load i64, i64* %t83
  %t90 = load { i64, i8* }*, { i64, i8* }** %t36
  %t91 = call i64 @nyx_array_length({ i64, i8* }* %t90)
  %t92 = add i64 %t91, 1
  %t93 = icmp sgt i64 %t89, %t92
  br i1 %t93, label %then9, label %else10
then9:
  %t94 = getelementptr [73 x i8], [73 x i8]* @.str6, i32 0, i32 0
  %t95 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str6.c, i8* %t94, i64 72)
  %t96 = getelementptr [67 x i8], [67 x i8]* @.str7, i32 0, i32 0
  %t97 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str7.c, i8* %t96, i64 66)
  %t98 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %t32, %nyx_string* %t95, %nyx_string* %t97)
  %t99 = load i64, i64* %t37
  %t100 = call %nyx_string* @nyx_string_from_int(i64 %t99)
  %t101 = call %nyx_string* @nyx_string_concat(%nyx_string* %t98, %nyx_string* %t100)
  %t102 = call i8* @nyx_string_to_cstr(%nyx_string* %t101)
  call void @nyx_print_string(i8* %t102)
  call void @nyx_exit(i64 1)
  br label %merge11
else10:
  br label %merge11
merge11:
  %t103 = load i64, i64* %t41
  %t104 = icmp eq i64 %t103, 1
  br i1 %t104, label %then12, label %else13
then12:
  store i1 1, i1* %t82
  br label %merge14
else13:
  br label %merge14
merge14:
  %t105 = getelementptr [4 x i8], [4 x i8]* @.str8, i32 0, i32 0
  %t106 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str8.c, i8* %t105, i64 3)
  %t107 = call i1 @parse__check(%SharedEnv_parse* %t32, %nyx_string* %t106)
  br i1 %t107, label %then15, label %else16
then15:
  store i1 1, i1* %t82
  br label %merge17
else16:
  %t108 = load i1, i1* %t82
  %t109 = xor i1 %t108, true
  br i1 %t109, label %then18, label %else19
then18:
  %t110 = load i64, i64* %t37
  %t111 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %t32, i32 0, i32 23
  store i64 %t110, i64* %t111
  %t112 = call { i64, i8* }* @parse__parse_statement(%SharedEnv_parse* %t32)
  %t113 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %t32, i32 0, i32 24
  store { i64, i8* }* %t112, { i64, i8* }** %t113
  %t114 = load { i64, i8* }*, { i64, i8* }** %t113
  %t115 = call %nyx_string* @astnode_get_type({ i64, i8* }* %t114)
  %t116 = getelementptr [6 x i8], [6 x i8]* @.str9, i32 0, i32 0
  %t117 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str9.c, i8* %t116, i64 5)
  %t118 = call i1 @nyx_string_equals(%nyx_string* %t115, %nyx_string* %t117)
  br i1 %t118, label %then21, label %else22
then21:
  %t119 = load i64, i64* %t84
  %t120 = add i64 %t119, 1
  store i64 %t120, i64* %t84
  %t121 = call i64 @parse__synchronize(%SharedEnv_parse* %t32)
  %t122 = load i64, i64* %t37
  %t123 = load i64, i64* %t111
  %t124 = icmp eq i64 %t122, %t123
  br i1 %t124, label %then24, label %else25
then24:
  %t125 = call %Token @parse__advance(%SharedEnv_parse* %t32)
  br label %merge26
else25:
  br label %merge26
merge26:
  br label %merge23
else22:
  %t126 = load i64, i64* %t37
  %t127 = load i64, i64* %t111
  %t128 = icmp eq i64 %t126, %t127
  br i1 %t128, label %then27, label %else28
then27:
  %t129 = load i64, i64* %t84
  %t130 = add i64 %t129, 1
  store i64 %t130, i64* %t84
  %t131 = call i64 @parse__synchronize(%SharedEnv_parse* %t32)
  %t132 = load i64, i64* %t37
  %t133 = load i64, i64* %t111
  %t134 = icmp eq i64 %t132, %t133
  br i1 %t134, label %then30, label %else31
then30:
  %t135 = call %Token @parse__advance(%SharedEnv_parse* %t32)
  br label %merge32
else31:
  br label %merge32
merge32:
  br label %merge29
else28:
  %t136 = load { i64, i8* }*, { i64, i8* }** %t81
  %t137 = load { i64, i8* }*, { i64, i8* }** %t113
  %t138 = ptrtoint { i64, i8* }* %t137 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t136, i64 %t138, i64 5)
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
  %t139 = load i64, i64* %t84
  %t140 = icmp sgt i64 %t139, 0
  br i1 %t140, label %then33, label %else34
then33:
  %t141 = getelementptr [9 x i8], [9 x i8]* @.str10, i32 0, i32 0
  %t142 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str10.c, i8* %t141, i64 8)
  %t143 = load i64, i64* %t84
  %t144 = call %nyx_string* @nyx_string_from_int(i64 %t143)
  %t145 = call %nyx_string* @nyx_string_concat(%nyx_string* %t142, %nyx_string* %t144)
  %t146 = getelementptr [16 x i8], [16 x i8]* @.str11, i32 0, i32 0
  %t147 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str11.c, i8* %t146, i64 15)
  %t148 = call %nyx_string* @nyx_string_concat(%nyx_string* %t145, %nyx_string* %t147)
  %t149 = call i8* @nyx_string_to_cstr(%nyx_string* %t148)
  call void @nyx_print_string(i8* %t149)
  br label %merge35
else34:
  br label %merge35
merge35:
  %t150 = load { i64, i8* }*, { i64, i8* }** %t62
  %t151 = call i64 @nyx_array_length({ i64, i8* }* %t150)
  %t152 = icmp sgt i64 %t151, 0
  br i1 %t152, label %then36, label %else37
then36:
  %t153 = call { i64, i8* }* @nyx_array_new_ptr()
  %t154 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %t32, i32 0, i32 25
  store { i64, i8* }* %t153, { i64, i8* }** %t154
  %t155 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %t32, i32 0, i32 26
  store i64 0, i64* %t155
  br label %while_cond39
while_cond39:
  %t156 = load i64, i64* %t155
  %t157 = load { i64, i8* }*, { i64, i8* }** %t62
  %t158 = call i64 @nyx_array_length({ i64, i8* }* %t157)
  %t159 = icmp slt i64 %t156, %t158
  br i1 %t159, label %while_body40, label %while_end41
while_body40:
  %t160 = load { i64, i8* }*, { i64, i8* }** %t62
  %t161 = load i64, i64* %t155
  %t162 = call i64 @nyx_array_get({ i64, i8* }* %t160, i64 %t161)
  %t163 = inttoptr i64 %t162 to { i64, i8* }*
  %t164 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %t32, i32 0, i32 27
  store { i64, i8* }* %t163, { i64, i8* }** %t164
  %t165 = load { i64, i8* }*, { i64, i8* }** %t164
  %t166 = call i64 @nyx_array_get_checked({ i64, i8* }* %t165, i64 0, i64 2)
  %t167 = inttoptr i64 %t166 to %nyx_string*
  %t168 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %t32, i32 0, i32 28
  store %nyx_string* %t167, %nyx_string** %t168
  %t169 = load %nyx_string*, %nyx_string** %t168
  %t170 = getelementptr [10 x i8], [10 x i8]* @.str12, i32 0, i32 0
  %t171 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str12.c, i8* %t170, i64 9)
  %t172 = call i1 @nyx_string_equals(%nyx_string* %t169, %nyx_string* %t171)
  %t173 = xor i1 %t172, true
  br i1 %t173, label %then42, label %else43
then42:
  %t174 = load { i64, i8* }*, { i64, i8* }** %t154
  %t175 = load { i64, i8* }*, { i64, i8* }** %t62
  %t176 = load i64, i64* %t155
  %t177 = call i64 @nyx_array_get({ i64, i8* }* %t175, i64 %t176)
  %t178 = load { i64, i8* }*, { i64, i8* }** %t62
  %t179 = load i64, i64* %t155
  %t180 = call i64 @nyx_array_get_tag({ i64, i8* }* %t178, i64 %t179)
  call void @nyx_array_push_tagged({ i64, i8* }* %t174, i64 %t177, i64 %t180)
  br label %merge44
else43:
  br label %merge44
merge44:
  %t181 = load i64, i64* %t155
  %t182 = add i64 %t181, 1
  store i64 %t182, i64* %t155
  br label %while_cond39
while_end41:
  %t183 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %t32, i32 0, i32 29
  store i64 0, i64* %t183
  br label %while_cond45
while_cond45:
  %t184 = load i64, i64* %t183
  %t185 = load { i64, i8* }*, { i64, i8* }** %t81
  %t186 = call i64 @nyx_array_length({ i64, i8* }* %t185)
  %t187 = icmp slt i64 %t184, %t186
  br i1 %t187, label %while_body46, label %while_end47
while_body46:
  %t188 = load { i64, i8* }*, { i64, i8* }** %t154
  %t189 = load { i64, i8* }*, { i64, i8* }** %t81
  %t190 = load i64, i64* %t183
  %t191 = call i64 @nyx_array_get({ i64, i8* }* %t189, i64 %t190)
  %t192 = load { i64, i8* }*, { i64, i8* }** %t81
  %t193 = load i64, i64* %t183
  %t194 = call i64 @nyx_array_get_tag({ i64, i8* }* %t192, i64 %t193)
  call void @nyx_array_push_tagged({ i64, i8* }* %t188, i64 %t191, i64 %t194)
  %t195 = load i64, i64* %t183
  %t196 = add i64 %t195, 1
  store i64 %t196, i64* %t183
  br label %while_cond45
while_end47:
  %t197 = getelementptr [6 x i8], [6 x i8]* @.str13, i32 0, i32 0
  %t198 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str13.c, i8* %t197, i64 5)
  %t199 = call { i64, i8* }* @nyx_array_new_ptr()
  %t200 = load { i64, i8* }*, { i64, i8* }** %t154
  %t201 = ptrtoint { i64, i8* }* %t200 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t199, i64 %t201, i64 5)
  %t202 = call { i64, i8* }* @make_astnode(%nyx_string* %t198, { i64, i8* }* %t199)
  ret { i64, i8* }* %t202
else37:
  br label %merge38
merge38:
  %t203 = getelementptr [6 x i8], [6 x i8]* @.str14, i32 0, i32 0
  %t204 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str14.c, i8* %t203, i64 5)
  %t205 = call { i64, i8* }* @nyx_array_new_ptr()
  %t206 = load { i64, i8* }*, { i64, i8* }** %t81
  %t207 = ptrtoint { i64, i8* }* %t206 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t205, i64 %t207, i64 5)
  %t208 = call { i64, i8* }* @make_astnode(%nyx_string* %t204, { i64, i8* }* %t205)
  ret { i64, i8* }* %t208
}

define internal %Token @parse__peek(%SharedEnv_parse* %env.param) {
  %t54 = alloca %Token
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = load i64, i64* %t4
  %t32 = load { i64, i8* }*, { i64, i8* }** %t3
  %t33 = call i64 @nyx_array_length({ i64, i8* }* %t32)
  %t34 = icmp slt i64 %t31, %t33
  br i1 %t34, label %then0, label %else1
then0:
  %t35 = load { i64, i8* }*, { i64, i8* }** %t3
  %t36 = load i64, i64* %t4
  %t37 = getelementptr [6 x i8], [6 x i8]* @.slotT15, i32 0, i32 0
  %t38 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %t35, i64 %t36, i8* %t37)
  %t39 = inttoptr i64 %t38 to %Token*
  %t40 = load %Token, %Token* %t39
  ret %Token %t40
else1:
  br label %merge2
merge2:
  %t41 = getelementptr %Token, %Token* null, i32 1
  %t42 = ptrtoint %Token* %t41 to i64
  %t43 = call i8* @GC_malloc(i64 %t42)
  %t44 = bitcast i8* %t43 to %Token*
  %t45 = getelementptr [4 x i8], [4 x i8]* @.str16, i32 0, i32 0
  %t46 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str16.c, i8* %t45, i64 3)
  %t47 = getelementptr %Token, %Token* %t44, i32 0, i32 0
  store %nyx_string* %t46, %nyx_string** %t47
  %t48 = getelementptr [1 x i8], [1 x i8]* @.str17, i32 0, i32 0
  %t49 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str17.c, i8* %t48, i64 0)
  %t50 = getelementptr %Token, %Token* %t44, i32 0, i32 1
  store %nyx_string* %t49, %nyx_string** %t50
  %t51 = getelementptr %Token, %Token* %t44, i32 0, i32 2
  store i64 0, i64* %t51
  %t52 = getelementptr %Token, %Token* %t44, i32 0, i32 3
  store i64 0, i64* %t52
  %t53 = load %Token, %Token* %t44
  store %Token %t53, %Token* %t54
  %t55 = load %Token, %Token* %t54
  ret %Token %t55
}

define internal i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %type.param) {
  %t31 = alloca %nyx_string*
  %t60 = alloca %Token
  %t63 = alloca %nyx_string*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  store %nyx_string* %type.param, %nyx_string** %t31
  %t32 = load i64, i64* %t8
  %t33 = icmp eq i64 %t32, 1
  br i1 %t33, label %then0, label %else1
then0:
  %t34 = load %nyx_string*, %nyx_string** %t31
  %t35 = getelementptr [4 x i8], [4 x i8]* @.str18, i32 0, i32 0
  %t36 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str18.c, i8* %t35, i64 3)
  %t37 = call i1 @nyx_string_equals(%nyx_string* %t34, %nyx_string* %t36)
  br i1 %t37, label %then3, label %else4
then3:
  ret i1 1
else4:
  br label %merge5
merge5:
  %t38 = load %nyx_string*, %nyx_string** %t31
  %t39 = getelementptr [12 x i8], [12 x i8]* @.str19, i32 0, i32 0
  %t40 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str19.c, i8* %t39, i64 11)
  %t41 = call i1 @nyx_string_equals(%nyx_string* %t38, %nyx_string* %t40)
  br i1 %t41, label %then6, label %else7
then6:
  ret i1 1
else7:
  br label %merge8
merge8:
  %t42 = load %nyx_string*, %nyx_string** %t31
  %t43 = getelementptr [12 x i8], [12 x i8]* @.str20, i32 0, i32 0
  %t44 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str20.c, i8* %t43, i64 11)
  %t45 = call i1 @nyx_string_equals(%nyx_string* %t42, %nyx_string* %t44)
  br i1 %t45, label %then9, label %else10
then9:
  ret i1 1
else10:
  br label %merge11
merge11:
  %t46 = load %nyx_string*, %nyx_string** %t31
  %t47 = getelementptr [14 x i8], [14 x i8]* @.str21, i32 0, i32 0
  %t48 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str21.c, i8* %t47, i64 13)
  %t49 = call i1 @nyx_string_equals(%nyx_string* %t46, %nyx_string* %t48)
  br i1 %t49, label %then12, label %else13
then12:
  ret i1 1
else13:
  br label %merge14
merge14:
  ret i1 0
else1:
  br label %merge2
merge2:
  %t50 = load i64, i64* %t4
  %t51 = load { i64, i8* }*, { i64, i8* }** %t3
  %t52 = call i64 @nyx_array_length({ i64, i8* }* %t51)
  %t53 = icmp slt i64 %t50, %t52
  br i1 %t53, label %then15, label %else16
then15:
  %t54 = load { i64, i8* }*, { i64, i8* }** %t3
  %t55 = load i64, i64* %t4
  %t56 = getelementptr [6 x i8], [6 x i8]* @.slotT22, i32 0, i32 0
  %t57 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %t54, i64 %t55, i8* %t56)
  %t58 = inttoptr i64 %t57 to %Token*
  %t59 = load %Token, %Token* %t58
  store %Token %t59, %Token* %t60
  %t61 = load %Token, %Token* %t60
  %t62 = call %nyx_string* @get_token_type(%Token %t61)
  store %nyx_string* %t62, %nyx_string** %t63
  %t64 = load %nyx_string*, %nyx_string** %t63
  %t65 = load %nyx_string*, %nyx_string** %t31
  %t66 = call i1 @nyx_string_equals(%nyx_string* %t64, %nyx_string* %t65)
  ret i1 %t66
else16:
  br label %merge17
merge17:
  ret i1 0
}

define internal %Token @parse__advance(%SharedEnv_parse* %env.param) {
  %t32 = alloca %Token
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  store %Token %t31, %Token* %t32
  %t33 = load i64, i64* %t4
  %t34 = add i64 %t33, 1
  store i64 %t34, i64* %t4
  %t35 = load %Token, %Token* %t32
  %t36 = call i64 @get_token_line(%Token %t35)
  store i64 %t36, i64* @g_last_line
  %t37 = load %Token, %Token* %t32
  %t38 = call i64 @get_token_column(%Token %t37)
  store i64 %t38, i64* @g_last_col
  %t39 = load %Token, %Token* %t32
  ret %Token %t39
}

define internal i1 @parse__check_at(%SharedEnv_parse* %env.param, i64 %offset.param, %nyx_string* %type.param) {
  %t31 = alloca i64
  %t32 = alloca %nyx_string*
  %t36 = alloca i64
  %t47 = alloca %Token
  %t50 = alloca %nyx_string*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  store i64 %offset.param, i64* %t31
  store %nyx_string* %type.param, %nyx_string** %t32
  %t33 = load i64, i64* %t4
  %t34 = load i64, i64* %t31
  %t35 = add i64 %t33, %t34
  store i64 %t35, i64* %t36
  %t37 = load i64, i64* %t36
  %t38 = load { i64, i8* }*, { i64, i8* }** %t3
  %t39 = call i64 @nyx_array_length({ i64, i8* }* %t38)
  %t40 = icmp slt i64 %t37, %t39
  br i1 %t40, label %then0, label %else1
then0:
  %t41 = load { i64, i8* }*, { i64, i8* }** %t3
  %t42 = load i64, i64* %t36
  %t43 = getelementptr [6 x i8], [6 x i8]* @.slotT23, i32 0, i32 0
  %t44 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %t41, i64 %t42, i8* %t43)
  %t45 = inttoptr i64 %t44 to %Token*
  %t46 = load %Token, %Token* %t45
  store %Token %t46, %Token* %t47
  %t48 = load %Token, %Token* %t47
  %t49 = call %nyx_string* @get_token_type(%Token %t48)
  store %nyx_string* %t49, %nyx_string** %t50
  %t51 = load %nyx_string*, %nyx_string** %t50
  %t52 = load %nyx_string*, %nyx_string** %t32
  %t53 = call i1 @nyx_string_equals(%nyx_string* %t51, %nyx_string* %t52)
  ret i1 %t53
else1:
  br label %merge2
merge2:
  ret i1 0
}

define internal %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %es.param, %nyx_string* %en.param) {
  %t31 = alloca %nyx_string*
  %t32 = alloca %nyx_string*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  store %nyx_string* %es.param, %nyx_string** %t31
  store %nyx_string* %en.param, %nyx_string** %t32
  %t33 = load i64, i64* %t9
  %t34 = icmp eq i64 %t33, 1
  br i1 %t34, label %then0, label %else1
then0:
  %t35 = load %nyx_string*, %nyx_string** %t31
  ret %nyx_string* %t35
else1:
  br label %merge2
merge2:
  %t36 = load %nyx_string*, %nyx_string** %t32
  ret %nyx_string* %t36
}

define internal %nyx_string* @parse__p_json_escape(%SharedEnv_parse* %env.param, %nyx_string* %s.param) {
  %t31 = alloca %nyx_string*
  %t34 = alloca %nyx_string*
  %t35 = alloca i64
  %t36 = alloca i64
  %t39 = alloca i64
  %t47 = alloca i64
  %t50 = alloca %nyx_string*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  store %nyx_string* %s.param, %nyx_string** %t31
  %t32 = getelementptr [1 x i8], [1 x i8]* @.str24, i32 0, i32 0
  %t33 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str24.c, i8* %t32, i64 0)
  store %nyx_string* %t33, %nyx_string** %t34
  store i64 0, i64* %t35
  store i64 0, i64* %t36
  %t37 = load %nyx_string*, %nyx_string** %t31
  %t38 = call i64 @nyx_string_byte_length(%nyx_string* %t37)
  store i64 %t38, i64* %t39
  br label %while_cond0
while_cond0:
  %t40 = load i64, i64* %t36
  %t41 = load i64, i64* %t39
  %t42 = icmp slt i64 %t40, %t41
  br i1 %t42, label %while_body1, label %while_end2
while_body1:
  %t43 = load %nyx_string*, %nyx_string** %t31
  %t44 = load i64, i64* %t36
  %t45 = call i8 @nyx_string_char_at(%nyx_string* %t43, i64 %t44)
  %t46 = zext i8 %t45 to i64
  store i64 %t46, i64* %t47
  %t48 = getelementptr [1 x i8], [1 x i8]* @.str25, i32 0, i32 0
  %t49 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str25.c, i8* %t48, i64 0)
  store %nyx_string* %t49, %nyx_string** %t50
  %t51 = load i64, i64* %t47
  %t52 = icmp eq i64 %t51, 34
  br i1 %t52, label %then3, label %else4
then3:
  %t53 = getelementptr [3 x i8], [3 x i8]* @.str26, i32 0, i32 0
  %t54 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str26.c, i8* %t53, i64 2)
  store %nyx_string* %t54, %nyx_string** %t50
  br label %merge5
else4:
  br label %merge5
merge5:
  %t55 = load i64, i64* %t47
  %t56 = icmp eq i64 %t55, 92
  br i1 %t56, label %then6, label %else7
then6:
  %t57 = getelementptr [3 x i8], [3 x i8]* @.str27, i32 0, i32 0
  %t58 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str27.c, i8* %t57, i64 2)
  store %nyx_string* %t58, %nyx_string** %t50
  br label %merge8
else7:
  br label %merge8
merge8:
  %t59 = load i64, i64* %t47
  %t60 = icmp eq i64 %t59, 10
  br i1 %t60, label %then9, label %else10
then9:
  %t61 = getelementptr [3 x i8], [3 x i8]* @.str28, i32 0, i32 0
  %t62 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str28.c, i8* %t61, i64 2)
  store %nyx_string* %t62, %nyx_string** %t50
  br label %merge11
else10:
  br label %merge11
merge11:
  %t63 = load i64, i64* %t47
  %t64 = icmp eq i64 %t63, 13
  br i1 %t64, label %then12, label %else13
then12:
  %t65 = getelementptr [3 x i8], [3 x i8]* @.str29, i32 0, i32 0
  %t66 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str29.c, i8* %t65, i64 2)
  store %nyx_string* %t66, %nyx_string** %t50
  br label %merge14
else13:
  br label %merge14
merge14:
  %t67 = load i64, i64* %t47
  %t68 = icmp eq i64 %t67, 9
  br i1 %t68, label %then15, label %else16
then15:
  %t69 = getelementptr [3 x i8], [3 x i8]* @.str30, i32 0, i32 0
  %t70 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str30.c, i8* %t69, i64 2)
  store %nyx_string* %t70, %nyx_string** %t50
  br label %merge17
else16:
  br label %merge17
merge17:
  %t71 = load %nyx_string*, %nyx_string** %t50
  %t72 = getelementptr [1 x i8], [1 x i8]* @.str31, i32 0, i32 0
  %t73 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str31.c, i8* %t72, i64 0)
  %t74 = call i1 @nyx_string_equals(%nyx_string* %t71, %nyx_string* %t73)
  %t75 = xor i1 %t74, true
  br i1 %t75, label %then18, label %else19
then18:
  %t76 = load %nyx_string*, %nyx_string** %t34
  %t77 = load %nyx_string*, %nyx_string** %t31
  %t78 = load i64, i64* %t35
  %t79 = load i64, i64* %t36
  %t80 = call %nyx_string* @nyx_string_substring(%nyx_string* %t77, i64 %t78, i64 %t79)
  %t81 = call %nyx_string* @nyx_string_concat(%nyx_string* %t76, %nyx_string* %t80)
  %t82 = load %nyx_string*, %nyx_string** %t50
  %t83 = call %nyx_string* @nyx_string_concat(%nyx_string* %t81, %nyx_string* %t82)
  store %nyx_string* %t83, %nyx_string** %t34
  %t84 = load i64, i64* %t36
  %t85 = add i64 %t84, 1
  store i64 %t85, i64* %t35
  br label %merge20
else19:
  br label %merge20
merge20:
  %t86 = load i64, i64* %t36
  %t87 = add i64 %t86, 1
  store i64 %t87, i64* %t36
  br label %while_cond0
while_end2:
  %t88 = load i64, i64* %t35
  %t89 = icmp eq i64 %t88, 0
  br i1 %t89, label %then21, label %else22
then21:
  %t90 = load %nyx_string*, %nyx_string** %t31
  ret %nyx_string* %t90
else22:
  br label %merge23
merge23:
  %t91 = load %nyx_string*, %nyx_string** %t34
  %t92 = load %nyx_string*, %nyx_string** %t31
  %t93 = load i64, i64* %t35
  %t94 = load i64, i64* %t39
  %t95 = call %nyx_string* @nyx_string_substring(%nyx_string* %t92, i64 %t93, i64 %t94)
  %t96 = call %nyx_string* @nyx_string_concat(%nyx_string* %t91, %nyx_string* %t95)
  ret %nyx_string* %t96
}

define internal i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %code.param, i64 %ln.param, i64 %cl.param, %nyx_string* %dmsg.param) {
  %t31 = alloca %nyx_string*
  %t32 = alloca i64
  %t33 = alloca i64
  %t34 = alloca %nyx_string*
  %t48 = alloca %nyx_string*
  %t74 = alloca %nyx_string*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  store %nyx_string* %code.param, %nyx_string** %t31
  store i64 %ln.param, i64* %t32
  store i64 %cl.param, i64* %t33
  store %nyx_string* %dmsg.param, %nyx_string** %t34
  %t35 = load i64, i64* %t8
  %t36 = icmp eq i64 %t35, 1
  br i1 %t36, label %then0, label %else1
then0:
  ret i64 0
else1:
  br label %merge2
merge2:
  %t37 = load i64, i64* %t7
  %t38 = add i64 %t37, 1
  store i64 %t38, i64* %t7
  %t39 = load i64, i64* @g_parse_error_count
  %t40 = add i64 %t39, 1
  store i64 %t40, i64* @g_parse_error_count
  %t41 = load i64, i64* %t7
  %t42 = icmp sgt i64 %t41, 20
  br i1 %t42, label %then3, label %else4
then3:
  %t43 = getelementptr [39 x i8], [39 x i8]* @.str32, i32 0, i32 0
  %t44 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str32.c, i8* %t43, i64 38)
  %t45 = getelementptr [32 x i8], [32 x i8]* @.str33, i32 0, i32 0
  %t46 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str33.c, i8* %t45, i64 31)
  %t47 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %t44, %nyx_string* %t46)
  store %nyx_string* %t47, %nyx_string** %t48
  %t49 = load i64, i64* %t11
  %t50 = icmp eq i64 %t49, 1
  br i1 %t50, label %then6, label %else7
then6:
  %t51 = getelementptr [65 x i8], [65 x i8]* @.str34, i32 0, i32 0
  %t52 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str34.c, i8* %t51, i64 64)
  %t53 = load %nyx_string*, %nyx_string** %t48
  %t54 = call %nyx_string* @parse__p_json_escape(%SharedEnv_parse* %env.param, %nyx_string* %t53)
  %t55 = call %nyx_string* @nyx_string_concat(%nyx_string* %t52, %nyx_string* %t54)
  %t56 = getelementptr [3 x i8], [3 x i8]* @.str35, i32 0, i32 0
  %t57 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str35.c, i8* %t56, i64 2)
  %t58 = call %nyx_string* @nyx_string_concat(%nyx_string* %t55, %nyx_string* %t57)
  %t59 = call i8* @nyx_string_to_cstr(%nyx_string* %t58)
  call void @nyx_print_string(i8* %t59)
  br label %merge8
else7:
  %t60 = getelementptr [18 x i8], [18 x i8]* @.str36, i32 0, i32 0
  %t61 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str36.c, i8* %t60, i64 17)
  %t62 = load %nyx_string*, %nyx_string** %t48
  %t63 = call %nyx_string* @nyx_string_concat(%nyx_string* %t61, %nyx_string* %t62)
  %t64 = call i8* @nyx_string_to_cstr(%nyx_string* %t63)
  call void @nyx_print_string(i8* %t64)
  br label %merge8
merge8:
  store i64 1, i64* %t8
  ret i64 0
else4:
  br label %merge5
merge5:
  %t65 = load i64, i64* %t11
  %t66 = icmp eq i64 %t65, 1
  br i1 %t66, label %then9, label %else10
then9:
  %t67 = getelementptr [10 x i8], [10 x i8]* @.str37, i32 0, i32 0
  %t68 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str37.c, i8* %t67, i64 9)
  %t69 = load %nyx_string*, %nyx_string** %t31
  %t70 = call %nyx_string* @nyx_string_concat(%nyx_string* %t68, %nyx_string* %t69)
  %t71 = getelementptr [2 x i8], [2 x i8]* @.str38, i32 0, i32 0
  %t72 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str38.c, i8* %t71, i64 1)
  %t73 = call %nyx_string* @nyx_string_concat(%nyx_string* %t70, %nyx_string* %t72)
  store %nyx_string* %t73, %nyx_string** %t74
  %t75 = load %nyx_string*, %nyx_string** %t74
  %t76 = getelementptr [20 x i8], [20 x i8]* @.str39, i32 0, i32 0
  %t77 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str39.c, i8* %t76, i64 19)
  %t78 = call %nyx_string* @nyx_string_concat(%nyx_string* %t75, %nyx_string* %t77)
  store %nyx_string* %t78, %nyx_string** %t74
  %t79 = load %nyx_string*, %nyx_string** %t74
  %t80 = getelementptr [17 x i8], [17 x i8]* @.str40, i32 0, i32 0
  %t81 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str40.c, i8* %t80, i64 16)
  %t82 = call %nyx_string* @nyx_string_concat(%nyx_string* %t79, %nyx_string* %t81)
  store %nyx_string* %t82, %nyx_string** %t74
  %t83 = load i64, i64* %t32
  %t84 = icmp sgt i64 %t83, 0
  br i1 %t84, label %then12, label %else13
then12:
  %t85 = load %nyx_string*, %nyx_string** %t74
  %t86 = getelementptr [9 x i8], [9 x i8]* @.str41, i32 0, i32 0
  %t87 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str41.c, i8* %t86, i64 8)
  %t88 = call %nyx_string* @nyx_string_concat(%nyx_string* %t85, %nyx_string* %t87)
  %t89 = load i64, i64* %t32
  %t90 = call %nyx_string* @nyx_string_from_int(i64 %t89)
  %t91 = call %nyx_string* @nyx_string_concat(%nyx_string* %t88, %nyx_string* %t90)
  store %nyx_string* %t91, %nyx_string** %t74
  %t92 = load %nyx_string*, %nyx_string** %t74
  %t93 = getelementptr [11 x i8], [11 x i8]* @.str42, i32 0, i32 0
  %t94 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str42.c, i8* %t93, i64 10)
  %t95 = call %nyx_string* @nyx_string_concat(%nyx_string* %t92, %nyx_string* %t94)
  %t96 = load i64, i64* %t33
  %t97 = call %nyx_string* @nyx_string_from_int(i64 %t96)
  %t98 = call %nyx_string* @nyx_string_concat(%nyx_string* %t95, %nyx_string* %t97)
  store %nyx_string* %t98, %nyx_string** %t74
  br label %merge14
else13:
  br label %merge14
merge14:
  %t99 = load %nyx_string*, %nyx_string** %t10
  %t100 = getelementptr [1 x i8], [1 x i8]* @.str43, i32 0, i32 0
  %t101 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str43.c, i8* %t100, i64 0)
  %t102 = call i1 @nyx_string_equals(%nyx_string* %t99, %nyx_string* %t101)
  %t103 = xor i1 %t102, true
  br i1 %t103, label %then15, label %else16
then15:
  %t104 = load %nyx_string*, %nyx_string** %t74
  %t105 = getelementptr [12 x i8], [12 x i8]* @.str44, i32 0, i32 0
  %t106 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str44.c, i8* %t105, i64 11)
  %t107 = call %nyx_string* @nyx_string_concat(%nyx_string* %t104, %nyx_string* %t106)
  %t108 = load %nyx_string*, %nyx_string** %t10
  %t109 = call %nyx_string* @parse__p_json_escape(%SharedEnv_parse* %env.param, %nyx_string* %t108)
  %t110 = call %nyx_string* @nyx_string_concat(%nyx_string* %t107, %nyx_string* %t109)
  %t111 = getelementptr [2 x i8], [2 x i8]* @.str45, i32 0, i32 0
  %t112 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str45.c, i8* %t111, i64 1)
  %t113 = call %nyx_string* @nyx_string_concat(%nyx_string* %t110, %nyx_string* %t112)
  store %nyx_string* %t113, %nyx_string** %t74
  br label %merge17
else16:
  br label %merge17
merge17:
  %t114 = load %nyx_string*, %nyx_string** %t74
  %t115 = getelementptr [13 x i8], [13 x i8]* @.str46, i32 0, i32 0
  %t116 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str46.c, i8* %t115, i64 12)
  %t117 = call %nyx_string* @nyx_string_concat(%nyx_string* %t114, %nyx_string* %t116)
  %t118 = load %nyx_string*, %nyx_string** %t34
  %t119 = call %nyx_string* @parse__p_json_escape(%SharedEnv_parse* %env.param, %nyx_string* %t118)
  %t120 = call %nyx_string* @nyx_string_concat(%nyx_string* %t117, %nyx_string* %t119)
  %t121 = getelementptr [3 x i8], [3 x i8]* @.str47, i32 0, i32 0
  %t122 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str47.c, i8* %t121, i64 2)
  %t123 = call %nyx_string* @nyx_string_concat(%nyx_string* %t120, %nyx_string* %t122)
  store %nyx_string* %t123, %nyx_string** %t74
  %t124 = load %nyx_string*, %nyx_string** %t74
  %t125 = call i8* @nyx_string_to_cstr(%nyx_string* %t124)
  call void @nyx_print_string(i8* %t125)
  ret i64 0
else10:
  br label %merge11
merge11:
  %t126 = getelementptr [8 x i8], [8 x i8]* @.str48, i32 0, i32 0
  %t127 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str48.c, i8* %t126, i64 7)
  %t128 = load %nyx_string*, %nyx_string** %t31
  %t129 = call %nyx_string* @nyx_string_concat(%nyx_string* %t127, %nyx_string* %t128)
  %t130 = getelementptr [4 x i8], [4 x i8]* @.str49, i32 0, i32 0
  %t131 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str49.c, i8* %t130, i64 3)
  %t132 = call %nyx_string* @nyx_string_concat(%nyx_string* %t129, %nyx_string* %t131)
  %t133 = load %nyx_string*, %nyx_string** %t34
  %t134 = call %nyx_string* @nyx_string_concat(%nyx_string* %t132, %nyx_string* %t133)
  %t135 = call i8* @nyx_string_to_cstr(%nyx_string* %t134)
  call void @nyx_print_string(i8* %t135)
  %t136 = load %nyx_string*, %nyx_string** %t10
  %t137 = getelementptr [1 x i8], [1 x i8]* @.str50, i32 0, i32 0
  %t138 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str50.c, i8* %t137, i64 0)
  %t139 = call i1 @nyx_string_equals(%nyx_string* %t136, %nyx_string* %t138)
  %t140 = xor i1 %t139, true
  br i1 %t140, label %then18, label %else19
then18:
  %t141 = getelementptr [7 x i8], [7 x i8]* @.str51, i32 0, i32 0
  %t142 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str51.c, i8* %t141, i64 6)
  %t143 = load %nyx_string*, %nyx_string** %t10
  %t144 = call %nyx_string* @nyx_string_concat(%nyx_string* %t142, %nyx_string* %t143)
  %t145 = getelementptr [3 x i8], [3 x i8]* @.str52, i32 0, i32 0
  %t146 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str52.c, i8* %t145, i64 2)
  %t147 = call %nyx_string* @nyx_string_concat(%nyx_string* %t144, %nyx_string* %t146)
  %t148 = getelementptr [7 x i8], [7 x i8]* @.str53, i32 0, i32 0
  %t149 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str53.c, i8* %t148, i64 6)
  %t150 = getelementptr [5 x i8], [5 x i8]* @.str54, i32 0, i32 0
  %t151 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str54.c, i8* %t150, i64 4)
  %t152 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %t149, %nyx_string* %t151)
  %t153 = call %nyx_string* @nyx_string_concat(%nyx_string* %t147, %nyx_string* %t152)
  %t154 = getelementptr [2 x i8], [2 x i8]* @.str55, i32 0, i32 0
  %t155 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str55.c, i8* %t154, i64 1)
  %t156 = call %nyx_string* @nyx_string_concat(%nyx_string* %t153, %nyx_string* %t155)
  %t157 = load i64, i64* %t32
  %t158 = call %nyx_string* @nyx_string_from_int(i64 %t157)
  %t159 = call %nyx_string* @nyx_string_concat(%nyx_string* %t156, %nyx_string* %t158)
  %t160 = getelementptr [2 x i8], [2 x i8]* @.str56, i32 0, i32 0
  %t161 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str56.c, i8* %t160, i64 1)
  %t162 = call %nyx_string* @nyx_string_concat(%nyx_string* %t159, %nyx_string* %t161)
  %t163 = load i64, i64* %t33
  %t164 = call %nyx_string* @nyx_string_from_int(i64 %t163)
  %t165 = call %nyx_string* @nyx_string_concat(%nyx_string* %t162, %nyx_string* %t164)
  %t166 = call i8* @nyx_string_to_cstr(%nyx_string* %t165)
  call void @nyx_print_string(i8* %t166)
  br label %merge20
else19:
  %t167 = getelementptr [7 x i8], [7 x i8]* @.str57, i32 0, i32 0
  %t168 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str57.c, i8* %t167, i64 6)
  %t169 = getelementptr [7 x i8], [7 x i8]* @.str58, i32 0, i32 0
  %t170 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str58.c, i8* %t169, i64 6)
  %t171 = getelementptr [5 x i8], [5 x i8]* @.str59, i32 0, i32 0
  %t172 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str59.c, i8* %t171, i64 4)
  %t173 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %t170, %nyx_string* %t172)
  %t174 = call %nyx_string* @nyx_string_concat(%nyx_string* %t168, %nyx_string* %t173)
  %t175 = getelementptr [2 x i8], [2 x i8]* @.str60, i32 0, i32 0
  %t176 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str60.c, i8* %t175, i64 1)
  %t177 = call %nyx_string* @nyx_string_concat(%nyx_string* %t174, %nyx_string* %t176)
  %t178 = load i64, i64* %t32
  %t179 = call %nyx_string* @nyx_string_from_int(i64 %t178)
  %t180 = call %nyx_string* @nyx_string_concat(%nyx_string* %t177, %nyx_string* %t179)
  %t181 = getelementptr [2 x i8], [2 x i8]* @.str61, i32 0, i32 0
  %t182 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str61.c, i8* %t181, i64 1)
  %t183 = call %nyx_string* @nyx_string_concat(%nyx_string* %t180, %nyx_string* %t182)
  %t184 = load i64, i64* %t33
  %t185 = call %nyx_string* @nyx_string_from_int(i64 %t184)
  %t186 = call %nyx_string* @nyx_string_concat(%nyx_string* %t183, %nyx_string* %t185)
  %t187 = call i8* @nyx_string_to_cstr(%nyx_string* %t186)
  call void @nyx_print_string(i8* %t187)
  br label %merge20
merge20:
  ret i64 0
}

define internal i1 @parse__is_keyword_token(%SharedEnv_parse* %env.param, %nyx_string* %tt.param) {
  %t31 = alloca %nyx_string*
  %t32 = alloca i1
  %t33 = alloca i1
  %t34 = alloca i1
  %t35 = alloca i1
  %t60 = alloca i1
  %t61 = alloca i1
  %t62 = alloca i1
  %t63 = alloca i1
  %t88 = alloca i1
  %t89 = alloca i1
  %t90 = alloca i1
  %t91 = alloca i1
  %t116 = alloca i1
  %t117 = alloca i1
  %t118 = alloca i1
  %t119 = alloca i1
  %t144 = alloca i1
  %t145 = alloca i1
  %t146 = alloca i1
  %t147 = alloca i1
  %t172 = alloca i1
  %t173 = alloca i1
  %t174 = alloca i1
  %t175 = alloca i1
  %t200 = alloca i1
  %t201 = alloca i1
  %t202 = alloca i1
  %t203 = alloca i1
  %t228 = alloca i1
  %t229 = alloca i1
  %t230 = alloca i1
  %t250 = alloca i1
  %t251 = alloca i1
  %t252 = alloca i1
  %t253 = alloca i1
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  store %nyx_string* %tt.param, %nyx_string** %t31
  store i1 true, i1* %t32
  store i1 true, i1* %t33
  store i1 true, i1* %t34
  store i1 true, i1* %t35
  %t36 = load %nyx_string*, %nyx_string** %t31
  %t37 = getelementptr [4 x i8], [4 x i8]* @.str62, i32 0, i32 0
  %t38 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str62.c, i8* %t37, i64 3)
  %t39 = call i1 @nyx_string_equals(%nyx_string* %t36, %nyx_string* %t38)
  br i1 %t39, label %sc_or_end1, label %sc_or_rhs0
sc_or_rhs0:
  %t40 = load %nyx_string*, %nyx_string** %t31
  %t41 = getelementptr [4 x i8], [4 x i8]* @.str63, i32 0, i32 0
  %t42 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str63.c, i8* %t41, i64 3)
  %t43 = call i1 @nyx_string_equals(%nyx_string* %t40, %nyx_string* %t42)
  store i1 %t43, i1* %t35
  br label %sc_or_end1
sc_or_end1:
  %t44 = load i1, i1* %t35
  br i1 %t44, label %sc_or_end3, label %sc_or_rhs2
sc_or_rhs2:
  %t45 = load %nyx_string*, %nyx_string** %t31
  %t46 = getelementptr [6 x i8], [6 x i8]* @.str64, i32 0, i32 0
  %t47 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str64.c, i8* %t46, i64 5)
  %t48 = call i1 @nyx_string_equals(%nyx_string* %t45, %nyx_string* %t47)
  store i1 %t48, i1* %t34
  br label %sc_or_end3
sc_or_end3:
  %t49 = load i1, i1* %t34
  br i1 %t49, label %sc_or_end5, label %sc_or_rhs4
sc_or_rhs4:
  %t50 = load %nyx_string*, %nyx_string** %t31
  %t51 = getelementptr [3 x i8], [3 x i8]* @.str65, i32 0, i32 0
  %t52 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str65.c, i8* %t51, i64 2)
  %t53 = call i1 @nyx_string_equals(%nyx_string* %t50, %nyx_string* %t52)
  store i1 %t53, i1* %t33
  br label %sc_or_end5
sc_or_end5:
  %t54 = load i1, i1* %t33
  br i1 %t54, label %sc_or_end7, label %sc_or_rhs6
sc_or_rhs6:
  %t55 = load %nyx_string*, %nyx_string** %t31
  %t56 = getelementptr [7 x i8], [7 x i8]* @.str66, i32 0, i32 0
  %t57 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str66.c, i8* %t56, i64 6)
  %t58 = call i1 @nyx_string_equals(%nyx_string* %t55, %nyx_string* %t57)
  store i1 %t58, i1* %t32
  br label %sc_or_end7
sc_or_end7:
  %t59 = load i1, i1* %t32
  br i1 %t59, label %then8, label %else9
then8:
  ret i1 1
else9:
  br label %merge10
merge10:
  store i1 true, i1* %t60
  store i1 true, i1* %t61
  store i1 true, i1* %t62
  store i1 true, i1* %t63
  %t64 = load %nyx_string*, %nyx_string** %t31
  %t65 = getelementptr [3 x i8], [3 x i8]* @.str67, i32 0, i32 0
  %t66 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str67.c, i8* %t65, i64 2)
  %t67 = call i1 @nyx_string_equals(%nyx_string* %t64, %nyx_string* %t66)
  br i1 %t67, label %sc_or_end12, label %sc_or_rhs11
sc_or_rhs11:
  %t68 = load %nyx_string*, %nyx_string** %t31
  %t69 = getelementptr [5 x i8], [5 x i8]* @.str68, i32 0, i32 0
  %t70 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str68.c, i8* %t69, i64 4)
  %t71 = call i1 @nyx_string_equals(%nyx_string* %t68, %nyx_string* %t70)
  store i1 %t71, i1* %t63
  br label %sc_or_end12
sc_or_end12:
  %t72 = load i1, i1* %t63
  br i1 %t72, label %sc_or_end14, label %sc_or_rhs13
sc_or_rhs13:
  %t73 = load %nyx_string*, %nyx_string** %t31
  %t74 = getelementptr [6 x i8], [6 x i8]* @.str69, i32 0, i32 0
  %t75 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str69.c, i8* %t74, i64 5)
  %t76 = call i1 @nyx_string_equals(%nyx_string* %t73, %nyx_string* %t75)
  store i1 %t76, i1* %t62
  br label %sc_or_end14
sc_or_end14:
  %t77 = load i1, i1* %t62
  br i1 %t77, label %sc_or_end16, label %sc_or_rhs15
sc_or_rhs15:
  %t78 = load %nyx_string*, %nyx_string** %t31
  %t79 = getelementptr [4 x i8], [4 x i8]* @.str70, i32 0, i32 0
  %t80 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str70.c, i8* %t79, i64 3)
  %t81 = call i1 @nyx_string_equals(%nyx_string* %t78, %nyx_string* %t80)
  store i1 %t81, i1* %t61
  br label %sc_or_end16
sc_or_end16:
  %t82 = load i1, i1* %t61
  br i1 %t82, label %sc_or_end18, label %sc_or_rhs17
sc_or_rhs17:
  %t83 = load %nyx_string*, %nyx_string** %t31
  %t84 = getelementptr [3 x i8], [3 x i8]* @.str71, i32 0, i32 0
  %t85 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str71.c, i8* %t84, i64 2)
  %t86 = call i1 @nyx_string_equals(%nyx_string* %t83, %nyx_string* %t85)
  store i1 %t86, i1* %t60
  br label %sc_or_end18
sc_or_end18:
  %t87 = load i1, i1* %t60
  br i1 %t87, label %then19, label %else20
then19:
  ret i1 1
else20:
  br label %merge21
merge21:
  store i1 true, i1* %t88
  store i1 true, i1* %t89
  store i1 true, i1* %t90
  store i1 true, i1* %t91
  %t92 = load %nyx_string*, %nyx_string** %t31
  %t93 = getelementptr [6 x i8], [6 x i8]* @.str72, i32 0, i32 0
  %t94 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str72.c, i8* %t93, i64 5)
  %t95 = call i1 @nyx_string_equals(%nyx_string* %t92, %nyx_string* %t94)
  br i1 %t95, label %sc_or_end23, label %sc_or_rhs22
sc_or_rhs22:
  %t96 = load %nyx_string*, %nyx_string** %t31
  %t97 = getelementptr [9 x i8], [9 x i8]* @.str73, i32 0, i32 0
  %t98 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str73.c, i8* %t97, i64 8)
  %t99 = call i1 @nyx_string_equals(%nyx_string* %t96, %nyx_string* %t98)
  store i1 %t99, i1* %t91
  br label %sc_or_end23
sc_or_end23:
  %t100 = load i1, i1* %t91
  br i1 %t100, label %sc_or_end25, label %sc_or_rhs24
sc_or_rhs24:
  %t101 = load %nyx_string*, %nyx_string** %t31
  %t102 = getelementptr [7 x i8], [7 x i8]* @.str74, i32 0, i32 0
  %t103 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str74.c, i8* %t102, i64 6)
  %t104 = call i1 @nyx_string_equals(%nyx_string* %t101, %nyx_string* %t103)
  store i1 %t104, i1* %t90
  br label %sc_or_end25
sc_or_end25:
  %t105 = load i1, i1* %t90
  br i1 %t105, label %sc_or_end27, label %sc_or_rhs26
sc_or_rhs26:
  %t106 = load %nyx_string*, %nyx_string** %t31
  %t107 = getelementptr [5 x i8], [5 x i8]* @.str75, i32 0, i32 0
  %t108 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str75.c, i8* %t107, i64 4)
  %t109 = call i1 @nyx_string_equals(%nyx_string* %t106, %nyx_string* %t108)
  store i1 %t109, i1* %t89
  br label %sc_or_end27
sc_or_end27:
  %t110 = load i1, i1* %t89
  br i1 %t110, label %sc_or_end29, label %sc_or_rhs28
sc_or_rhs28:
  %t111 = load %nyx_string*, %nyx_string** %t31
  %t112 = getelementptr [6 x i8], [6 x i8]* @.str76, i32 0, i32 0
  %t113 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str76.c, i8* %t112, i64 5)
  %t114 = call i1 @nyx_string_equals(%nyx_string* %t111, %nyx_string* %t113)
  store i1 %t114, i1* %t88
  br label %sc_or_end29
sc_or_end29:
  %t115 = load i1, i1* %t88
  br i1 %t115, label %then30, label %else31
then30:
  ret i1 1
else31:
  br label %merge32
merge32:
  store i1 true, i1* %t116
  store i1 true, i1* %t117
  store i1 true, i1* %t118
  store i1 true, i1* %t119
  %t120 = load %nyx_string*, %nyx_string** %t31
  %t121 = getelementptr [7 x i8], [7 x i8]* @.str77, i32 0, i32 0
  %t122 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str77.c, i8* %t121, i64 6)
  %t123 = call i1 @nyx_string_equals(%nyx_string* %t120, %nyx_string* %t122)
  br i1 %t123, label %sc_or_end34, label %sc_or_rhs33
sc_or_rhs33:
  %t124 = load %nyx_string*, %nyx_string** %t31
  %t125 = getelementptr [7 x i8], [7 x i8]* @.str78, i32 0, i32 0
  %t126 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str78.c, i8* %t125, i64 6)
  %t127 = call i1 @nyx_string_equals(%nyx_string* %t124, %nyx_string* %t126)
  store i1 %t127, i1* %t119
  br label %sc_or_end34
sc_or_end34:
  %t128 = load i1, i1* %t119
  br i1 %t128, label %sc_or_end36, label %sc_or_rhs35
sc_or_rhs35:
  %t129 = load %nyx_string*, %nyx_string** %t31
  %t130 = getelementptr [5 x i8], [5 x i8]* @.str79, i32 0, i32 0
  %t131 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str79.c, i8* %t130, i64 4)
  %t132 = call i1 @nyx_string_equals(%nyx_string* %t129, %nyx_string* %t131)
  store i1 %t132, i1* %t118
  br label %sc_or_end36
sc_or_end36:
  %t133 = load i1, i1* %t118
  br i1 %t133, label %sc_or_end38, label %sc_or_rhs37
sc_or_rhs37:
  %t134 = load %nyx_string*, %nyx_string** %t31
  %t135 = getelementptr [5 x i8], [5 x i8]* @.str80, i32 0, i32 0
  %t136 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str80.c, i8* %t135, i64 4)
  %t137 = call i1 @nyx_string_equals(%nyx_string* %t134, %nyx_string* %t136)
  store i1 %t137, i1* %t117
  br label %sc_or_end38
sc_or_end38:
  %t138 = load i1, i1* %t117
  br i1 %t138, label %sc_or_end40, label %sc_or_rhs39
sc_or_rhs39:
  %t139 = load %nyx_string*, %nyx_string** %t31
  %t140 = getelementptr [6 x i8], [6 x i8]* @.str81, i32 0, i32 0
  %t141 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str81.c, i8* %t140, i64 5)
  %t142 = call i1 @nyx_string_equals(%nyx_string* %t139, %nyx_string* %t141)
  store i1 %t142, i1* %t116
  br label %sc_or_end40
sc_or_end40:
  %t143 = load i1, i1* %t116
  br i1 %t143, label %then41, label %else42
then41:
  ret i1 1
else42:
  br label %merge43
merge43:
  store i1 true, i1* %t144
  store i1 true, i1* %t145
  store i1 true, i1* %t146
  store i1 true, i1* %t147
  %t148 = load %nyx_string*, %nyx_string** %t31
  %t149 = getelementptr [4 x i8], [4 x i8]* @.str82, i32 0, i32 0
  %t150 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str82.c, i8* %t149, i64 3)
  %t151 = call i1 @nyx_string_equals(%nyx_string* %t148, %nyx_string* %t150)
  br i1 %t151, label %sc_or_end45, label %sc_or_rhs44
sc_or_rhs44:
  %t152 = load %nyx_string*, %nyx_string** %t31
  %t153 = getelementptr [3 x i8], [3 x i8]* @.str83, i32 0, i32 0
  %t154 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str83.c, i8* %t153, i64 2)
  %t155 = call i1 @nyx_string_equals(%nyx_string* %t152, %nyx_string* %t154)
  store i1 %t155, i1* %t147
  br label %sc_or_end45
sc_or_end45:
  %t156 = load i1, i1* %t147
  br i1 %t156, label %sc_or_end47, label %sc_or_rhs46
sc_or_rhs46:
  %t157 = load %nyx_string*, %nyx_string** %t31
  %t158 = getelementptr [4 x i8], [4 x i8]* @.str84, i32 0, i32 0
  %t159 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str84.c, i8* %t158, i64 3)
  %t160 = call i1 @nyx_string_equals(%nyx_string* %t157, %nyx_string* %t159)
  store i1 %t160, i1* %t146
  br label %sc_or_end47
sc_or_end47:
  %t161 = load i1, i1* %t146
  br i1 %t161, label %sc_or_end49, label %sc_or_rhs48
sc_or_rhs48:
  %t162 = load %nyx_string*, %nyx_string** %t31
  %t163 = getelementptr [5 x i8], [5 x i8]* @.str85, i32 0, i32 0
  %t164 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str85.c, i8* %t163, i64 4)
  %t165 = call i1 @nyx_string_equals(%nyx_string* %t162, %nyx_string* %t164)
  store i1 %t165, i1* %t145
  br label %sc_or_end49
sc_or_end49:
  %t166 = load i1, i1* %t145
  br i1 %t166, label %sc_or_end51, label %sc_or_rhs50
sc_or_rhs50:
  %t167 = load %nyx_string*, %nyx_string** %t31
  %t168 = getelementptr [6 x i8], [6 x i8]* @.str86, i32 0, i32 0
  %t169 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str86.c, i8* %t168, i64 5)
  %t170 = call i1 @nyx_string_equals(%nyx_string* %t167, %nyx_string* %t169)
  store i1 %t170, i1* %t144
  br label %sc_or_end51
sc_or_end51:
  %t171 = load i1, i1* %t144
  br i1 %t171, label %then52, label %else53
then52:
  ret i1 1
else53:
  br label %merge54
merge54:
  store i1 true, i1* %t172
  store i1 true, i1* %t173
  store i1 true, i1* %t174
  store i1 true, i1* %t175
  %t176 = load %nyx_string*, %nyx_string** %t31
  %t177 = getelementptr [5 x i8], [5 x i8]* @.str87, i32 0, i32 0
  %t178 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str87.c, i8* %t177, i64 4)
  %t179 = call i1 @nyx_string_equals(%nyx_string* %t176, %nyx_string* %t178)
  br i1 %t179, label %sc_or_end56, label %sc_or_rhs55
sc_or_rhs55:
  %t180 = load %nyx_string*, %nyx_string** %t31
  %t181 = getelementptr [7 x i8], [7 x i8]* @.str88, i32 0, i32 0
  %t182 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str88.c, i8* %t181, i64 6)
  %t183 = call i1 @nyx_string_equals(%nyx_string* %t180, %nyx_string* %t182)
  store i1 %t183, i1* %t175
  br label %sc_or_end56
sc_or_end56:
  %t184 = load i1, i1* %t175
  br i1 %t184, label %sc_or_end58, label %sc_or_rhs57
sc_or_rhs57:
  %t185 = load %nyx_string*, %nyx_string** %t31
  %t186 = getelementptr [7 x i8], [7 x i8]* @.str89, i32 0, i32 0
  %t187 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str89.c, i8* %t186, i64 6)
  %t188 = call i1 @nyx_string_equals(%nyx_string* %t185, %nyx_string* %t187)
  store i1 %t188, i1* %t174
  br label %sc_or_end58
sc_or_end58:
  %t189 = load i1, i1* %t174
  br i1 %t189, label %sc_or_end60, label %sc_or_rhs59
sc_or_rhs59:
  %t190 = load %nyx_string*, %nyx_string** %t31
  %t191 = getelementptr [3 x i8], [3 x i8]* @.str90, i32 0, i32 0
  %t192 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str90.c, i8* %t191, i64 2)
  %t193 = call i1 @nyx_string_equals(%nyx_string* %t190, %nyx_string* %t192)
  store i1 %t193, i1* %t173
  br label %sc_or_end60
sc_or_end60:
  %t194 = load i1, i1* %t173
  br i1 %t194, label %sc_or_end62, label %sc_or_rhs61
sc_or_rhs61:
  %t195 = load %nyx_string*, %nyx_string** %t31
  %t196 = getelementptr [7 x i8], [7 x i8]* @.str91, i32 0, i32 0
  %t197 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str91.c, i8* %t196, i64 6)
  %t198 = call i1 @nyx_string_equals(%nyx_string* %t195, %nyx_string* %t197)
  store i1 %t198, i1* %t172
  br label %sc_or_end62
sc_or_end62:
  %t199 = load i1, i1* %t172
  br i1 %t199, label %then63, label %else64
then63:
  ret i1 1
else64:
  br label %merge65
merge65:
  store i1 true, i1* %t200
  store i1 true, i1* %t201
  store i1 true, i1* %t202
  store i1 true, i1* %t203
  %t204 = load %nyx_string*, %nyx_string** %t31
  %t205 = getelementptr [7 x i8], [7 x i8]* @.str92, i32 0, i32 0
  %t206 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str92.c, i8* %t205, i64 6)
  %t207 = call i1 @nyx_string_equals(%nyx_string* %t204, %nyx_string* %t206)
  br i1 %t207, label %sc_or_end67, label %sc_or_rhs66
sc_or_rhs66:
  %t208 = load %nyx_string*, %nyx_string** %t31
  %t209 = getelementptr [7 x i8], [7 x i8]* @.str93, i32 0, i32 0
  %t210 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str93.c, i8* %t209, i64 6)
  %t211 = call i1 @nyx_string_equals(%nyx_string* %t208, %nyx_string* %t210)
  store i1 %t211, i1* %t203
  br label %sc_or_end67
sc_or_end67:
  %t212 = load i1, i1* %t203
  br i1 %t212, label %sc_or_end69, label %sc_or_rhs68
sc_or_rhs68:
  %t213 = load %nyx_string*, %nyx_string** %t31
  %t214 = getelementptr [8 x i8], [8 x i8]* @.str94, i32 0, i32 0
  %t215 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str94.c, i8* %t214, i64 7)
  %t216 = call i1 @nyx_string_equals(%nyx_string* %t213, %nyx_string* %t215)
  store i1 %t216, i1* %t202
  br label %sc_or_end69
sc_or_end69:
  %t217 = load i1, i1* %t202
  br i1 %t217, label %sc_or_end71, label %sc_or_rhs70
sc_or_rhs70:
  %t218 = load %nyx_string*, %nyx_string** %t31
  %t219 = getelementptr [4 x i8], [4 x i8]* @.str95, i32 0, i32 0
  %t220 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str95.c, i8* %t219, i64 3)
  %t221 = call i1 @nyx_string_equals(%nyx_string* %t218, %nyx_string* %t220)
  store i1 %t221, i1* %t201
  br label %sc_or_end71
sc_or_end71:
  %t222 = load i1, i1* %t201
  br i1 %t222, label %sc_or_end73, label %sc_or_rhs72
sc_or_rhs72:
  %t223 = load %nyx_string*, %nyx_string** %t31
  %t224 = getelementptr [4 x i8], [4 x i8]* @.str96, i32 0, i32 0
  %t225 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str96.c, i8* %t224, i64 3)
  %t226 = call i1 @nyx_string_equals(%nyx_string* %t223, %nyx_string* %t225)
  store i1 %t226, i1* %t200
  br label %sc_or_end73
sc_or_end73:
  %t227 = load i1, i1* %t200
  br i1 %t227, label %then74, label %else75
then74:
  ret i1 1
else75:
  br label %merge76
merge76:
  store i1 true, i1* %t228
  store i1 true, i1* %t229
  store i1 true, i1* %t230
  %t231 = load %nyx_string*, %nyx_string** %t31
  %t232 = getelementptr [4 x i8], [4 x i8]* @.str97, i32 0, i32 0
  %t233 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str97.c, i8* %t232, i64 3)
  %t234 = call i1 @nyx_string_equals(%nyx_string* %t231, %nyx_string* %t233)
  br i1 %t234, label %sc_or_end78, label %sc_or_rhs77
sc_or_rhs77:
  %t235 = load %nyx_string*, %nyx_string** %t31
  %t236 = getelementptr [7 x i8], [7 x i8]* @.str98, i32 0, i32 0
  %t237 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str98.c, i8* %t236, i64 6)
  %t238 = call i1 @nyx_string_equals(%nyx_string* %t235, %nyx_string* %t237)
  store i1 %t238, i1* %t230
  br label %sc_or_end78
sc_or_end78:
  %t239 = load i1, i1* %t230
  br i1 %t239, label %sc_or_end80, label %sc_or_rhs79
sc_or_rhs79:
  %t240 = load %nyx_string*, %nyx_string** %t31
  %t241 = getelementptr [6 x i8], [6 x i8]* @.str99, i32 0, i32 0
  %t242 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str99.c, i8* %t241, i64 5)
  %t243 = call i1 @nyx_string_equals(%nyx_string* %t240, %nyx_string* %t242)
  store i1 %t243, i1* %t229
  br label %sc_or_end80
sc_or_end80:
  %t244 = load i1, i1* %t229
  br i1 %t244, label %sc_or_end82, label %sc_or_rhs81
sc_or_rhs81:
  %t245 = load %nyx_string*, %nyx_string** %t31
  %t246 = getelementptr [6 x i8], [6 x i8]* @.str100, i32 0, i32 0
  %t247 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str100.c, i8* %t246, i64 5)
  %t248 = call i1 @nyx_string_equals(%nyx_string* %t245, %nyx_string* %t247)
  store i1 %t248, i1* %t228
  br label %sc_or_end82
sc_or_end82:
  %t249 = load i1, i1* %t228
  br i1 %t249, label %then83, label %else84
then83:
  ret i1 1
else84:
  br label %merge85
merge85:
  store i1 true, i1* %t250
  store i1 true, i1* %t251
  store i1 true, i1* %t252
  store i1 true, i1* %t253
  %t254 = load %nyx_string*, %nyx_string** %t31
  %t255 = getelementptr [4 x i8], [4 x i8]* @.str101, i32 0, i32 0
  %t256 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str101.c, i8* %t255, i64 3)
  %t257 = call i1 @nyx_string_equals(%nyx_string* %t254, %nyx_string* %t256)
  br i1 %t257, label %sc_or_end87, label %sc_or_rhs86
sc_or_rhs86:
  %t258 = load %nyx_string*, %nyx_string** %t31
  %t259 = getelementptr [6 x i8], [6 x i8]* @.str102, i32 0, i32 0
  %t260 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str102.c, i8* %t259, i64 5)
  %t261 = call i1 @nyx_string_equals(%nyx_string* %t258, %nyx_string* %t260)
  store i1 %t261, i1* %t253
  br label %sc_or_end87
sc_or_end87:
  %t262 = load i1, i1* %t253
  br i1 %t262, label %sc_or_end89, label %sc_or_rhs88
sc_or_rhs88:
  %t263 = load %nyx_string*, %nyx_string** %t31
  %t264 = getelementptr [6 x i8], [6 x i8]* @.str103, i32 0, i32 0
  %t265 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str103.c, i8* %t264, i64 5)
  %t266 = call i1 @nyx_string_equals(%nyx_string* %t263, %nyx_string* %t265)
  store i1 %t266, i1* %t252
  br label %sc_or_end89
sc_or_end89:
  %t267 = load i1, i1* %t252
  br i1 %t267, label %sc_or_end91, label %sc_or_rhs90
sc_or_rhs90:
  %t268 = load %nyx_string*, %nyx_string** %t31
  %t269 = getelementptr [6 x i8], [6 x i8]* @.str104, i32 0, i32 0
  %t270 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str104.c, i8* %t269, i64 5)
  %t271 = call i1 @nyx_string_equals(%nyx_string* %t268, %nyx_string* %t270)
  store i1 %t271, i1* %t251
  br label %sc_or_end91
sc_or_end91:
  %t272 = load i1, i1* %t251
  br i1 %t272, label %sc_or_end93, label %sc_or_rhs92
sc_or_rhs92:
  %t273 = load %nyx_string*, %nyx_string** %t31
  %t274 = getelementptr [6 x i8], [6 x i8]* @.str105, i32 0, i32 0
  %t275 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str105.c, i8* %t274, i64 5)
  %t276 = call i1 @nyx_string_equals(%nyx_string* %t273, %nyx_string* %t275)
  store i1 %t276, i1* %t250
  br label %sc_or_end93
sc_or_end93:
  %t277 = load i1, i1* %t250
  br i1 %t277, label %then94, label %else95
then94:
  ret i1 1
else95:
  br label %merge96
merge96:
  ret i1 0
}

define internal %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %type.param) {
  %t31 = alloca %nyx_string*
  %t33 = alloca %Token
  %t41 = alloca i64
  %t44 = alloca i64
  %t47 = alloca %nyx_string*
  %t50 = alloca %nyx_string*
  %t51 = alloca i1
  %t119 = alloca i1
  %t120 = alloca i1
  %t121 = alloca i1
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  store %nyx_string* %type.param, %nyx_string** %t31
  %t32 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  store %Token %t32, %Token* %t33
  %t34 = load %Token, %Token* %t33
  %t35 = call %nyx_string* @get_token_type(%Token %t34)
  %t36 = load %nyx_string*, %nyx_string** %t31
  %t37 = call i1 @nyx_string_equals(%nyx_string* %t35, %nyx_string* %t36)
  br i1 %t37, label %then0, label %else1
then0:
  %t38 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  ret %Token %t38
else1:
  br label %merge2
merge2:
  %t39 = load %Token, %Token* %t33
  %t40 = call i64 @get_token_line(%Token %t39)
  store i64 %t40, i64* %t41
  %t42 = load %Token, %Token* %t33
  %t43 = call i64 @get_token_column(%Token %t42)
  store i64 %t43, i64* %t44
  %t45 = load %Token, %Token* %t33
  %t46 = call %nyx_string* @get_token_value(%Token %t45)
  store %nyx_string* %t46, %nyx_string** %t47
  %t48 = load %Token, %Token* %t33
  %t49 = call %nyx_string* @get_token_type(%Token %t48)
  store %nyx_string* %t49, %nyx_string** %t50
  store i1 false, i1* %t51
  %t52 = load %nyx_string*, %nyx_string** %t31
  %t53 = getelementptr [11 x i8], [11 x i8]* @.str106, i32 0, i32 0
  %t54 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str106.c, i8* %t53, i64 10)
  %t55 = call i1 @nyx_string_equals(%nyx_string* %t52, %nyx_string* %t54)
  br i1 %t55, label %sc_and_rhs3, label %sc_and_end4
sc_and_rhs3:
  %t56 = load %nyx_string*, %nyx_string** %t50
  %t57 = call i1 @parse__is_keyword_token(%SharedEnv_parse* %env.param, %nyx_string* %t56)
  store i1 %t57, i1* %t51
  br label %sc_and_end4
sc_and_end4:
  %t58 = load i1, i1* %t51
  br i1 %t58, label %then5, label %else6
then5:
  %t59 = getelementptr [8 x i8], [8 x i8]* @.str107, i32 0, i32 0
  %t60 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str107.c, i8* %t59, i64 7)
  %t61 = load i64, i64* %t41
  %t62 = load i64, i64* %t44
  %t63 = getelementptr [30 x i8], [30 x i8]* @.str108, i32 0, i32 0
  %t64 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str108.c, i8* %t63, i64 29)
  %t65 = load %nyx_string*, %nyx_string** %t47
  %t66 = call %nyx_string* @nyx_string_concat(%nyx_string* %t64, %nyx_string* %t65)
  %t67 = getelementptr [21 x i8], [21 x i8]* @.str109, i32 0, i32 0
  %t68 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str109.c, i8* %t67, i64 20)
  %t69 = call %nyx_string* @nyx_string_concat(%nyx_string* %t66, %nyx_string* %t68)
  %t70 = getelementptr [21 x i8], [21 x i8]* @.str110, i32 0, i32 0
  %t71 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str110.c, i8* %t70, i64 20)
  %t72 = load %nyx_string*, %nyx_string** %t47
  %t73 = call %nyx_string* @nyx_string_concat(%nyx_string* %t71, %nyx_string* %t72)
  %t74 = getelementptr [19 x i8], [19 x i8]* @.str111, i32 0, i32 0
  %t75 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str111.c, i8* %t74, i64 18)
  %t76 = call %nyx_string* @nyx_string_concat(%nyx_string* %t73, %nyx_string* %t75)
  %t77 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %t69, %nyx_string* %t76)
  %t78 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %t60, i64 %t61, i64 %t62, %nyx_string* %t77)
  br label %merge7
else6:
  %t79 = getelementptr [8 x i8], [8 x i8]* @.str112, i32 0, i32 0
  %t80 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str112.c, i8* %t79, i64 7)
  %t81 = load i64, i64* %t41
  %t82 = load i64, i64* %t44
  %t83 = getelementptr [14 x i8], [14 x i8]* @.str113, i32 0, i32 0
  %t84 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str113.c, i8* %t83, i64 13)
  %t85 = load %nyx_string*, %nyx_string** %t31
  %t86 = call %nyx_string* @nyx_string_concat(%nyx_string* %t84, %nyx_string* %t85)
  %t87 = getelementptr [16 x i8], [16 x i8]* @.str114, i32 0, i32 0
  %t88 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str114.c, i8* %t87, i64 15)
  %t89 = call %nyx_string* @nyx_string_concat(%nyx_string* %t86, %nyx_string* %t88)
  %t90 = load %nyx_string*, %nyx_string** %t47
  %t91 = call %nyx_string* @nyx_string_concat(%nyx_string* %t89, %nyx_string* %t90)
  %t92 = getelementptr [4 x i8], [4 x i8]* @.str115, i32 0, i32 0
  %t93 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str115.c, i8* %t92, i64 3)
  %t94 = call %nyx_string* @nyx_string_concat(%nyx_string* %t91, %nyx_string* %t93)
  %t95 = load %nyx_string*, %nyx_string** %t50
  %t96 = call %nyx_string* @nyx_string_concat(%nyx_string* %t94, %nyx_string* %t95)
  %t97 = getelementptr [2 x i8], [2 x i8]* @.str116, i32 0, i32 0
  %t98 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str116.c, i8* %t97, i64 1)
  %t99 = call %nyx_string* @nyx_string_concat(%nyx_string* %t96, %nyx_string* %t98)
  %t100 = getelementptr [11 x i8], [11 x i8]* @.str117, i32 0, i32 0
  %t101 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str117.c, i8* %t100, i64 10)
  %t102 = load %nyx_string*, %nyx_string** %t31
  %t103 = call %nyx_string* @nyx_string_concat(%nyx_string* %t101, %nyx_string* %t102)
  %t104 = getelementptr [11 x i8], [11 x i8]* @.str118, i32 0, i32 0
  %t105 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str118.c, i8* %t104, i64 10)
  %t106 = call %nyx_string* @nyx_string_concat(%nyx_string* %t103, %nyx_string* %t105)
  %t107 = load %nyx_string*, %nyx_string** %t47
  %t108 = call %nyx_string* @nyx_string_concat(%nyx_string* %t106, %nyx_string* %t107)
  %t109 = getelementptr [4 x i8], [4 x i8]* @.str119, i32 0, i32 0
  %t110 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str119.c, i8* %t109, i64 3)
  %t111 = call %nyx_string* @nyx_string_concat(%nyx_string* %t108, %nyx_string* %t110)
  %t112 = load %nyx_string*, %nyx_string** %t50
  %t113 = call %nyx_string* @nyx_string_concat(%nyx_string* %t111, %nyx_string* %t112)
  %t114 = getelementptr [2 x i8], [2 x i8]* @.str120, i32 0, i32 0
  %t115 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str120.c, i8* %t114, i64 1)
  %t116 = call %nyx_string* @nyx_string_concat(%nyx_string* %t113, %nyx_string* %t115)
  %t117 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %t99, %nyx_string* %t116)
  %t118 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %t80, i64 %t81, i64 %t82, %nyx_string* %t117)
  br label %merge7
merge7:
  store i1 false, i1* %t119
  store i1 false, i1* %t120
  store i1 false, i1* %t121
  %t122 = load %nyx_string*, %nyx_string** %t50
  %t123 = getelementptr [4 x i8], [4 x i8]* @.str121, i32 0, i32 0
  %t124 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str121.c, i8* %t123, i64 3)
  %t125 = call i1 @nyx_string_equals(%nyx_string* %t122, %nyx_string* %t124)
  %t126 = xor i1 %t125, true
  br i1 %t126, label %sc_and_rhs8, label %sc_and_end9
sc_and_rhs8:
  %t127 = load %nyx_string*, %nyx_string** %t50
  %t128 = getelementptr [12 x i8], [12 x i8]* @.str122, i32 0, i32 0
  %t129 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str122.c, i8* %t128, i64 11)
  %t130 = call i1 @nyx_string_equals(%nyx_string* %t127, %nyx_string* %t129)
  %t131 = xor i1 %t130, true
  store i1 %t131, i1* %t121
  br label %sc_and_end9
sc_and_end9:
  %t132 = load i1, i1* %t121
  br i1 %t132, label %sc_and_rhs10, label %sc_and_end11
sc_and_rhs10:
  %t133 = load %nyx_string*, %nyx_string** %t50
  %t134 = getelementptr [12 x i8], [12 x i8]* @.str123, i32 0, i32 0
  %t135 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str123.c, i8* %t134, i64 11)
  %t136 = call i1 @nyx_string_equals(%nyx_string* %t133, %nyx_string* %t135)
  %t137 = xor i1 %t136, true
  store i1 %t137, i1* %t120
  br label %sc_and_end11
sc_and_end11:
  %t138 = load i1, i1* %t120
  br i1 %t138, label %sc_and_rhs12, label %sc_and_end13
sc_and_rhs12:
  %t139 = load %nyx_string*, %nyx_string** %t50
  %t140 = getelementptr [14 x i8], [14 x i8]* @.str124, i32 0, i32 0
  %t141 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str124.c, i8* %t140, i64 13)
  %t142 = call i1 @nyx_string_equals(%nyx_string* %t139, %nyx_string* %t141)
  %t143 = xor i1 %t142, true
  store i1 %t143, i1* %t119
  br label %sc_and_end13
sc_and_end13:
  %t144 = load i1, i1* %t119
  br i1 %t144, label %then14, label %else15
then14:
  %t145 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge16
else15:
  br label %merge16
merge16:
  %t146 = load %Token, %Token* %t33
  ret %Token %t146
}

define internal i1 @parse__is_on_new_line(%SharedEnv_parse* %env.param) {
  %t40 = alloca %Token
  %t47 = alloca %Token
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = load i64, i64* %t4
  %t32 = icmp slt i64 %t31, 1
  br i1 %t32, label %then0, label %else1
then0:
  ret i1 0
else1:
  br label %merge2
merge2:
  %t33 = load { i64, i8* }*, { i64, i8* }** %t3
  %t34 = load i64, i64* %t4
  %t35 = sub i64 %t34, 1
  %t36 = getelementptr [6 x i8], [6 x i8]* @.slotT125, i32 0, i32 0
  %t37 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %t33, i64 %t35, i8* %t36)
  %t38 = inttoptr i64 %t37 to %Token*
  %t39 = load %Token, %Token* %t38
  store %Token %t39, %Token* %t40
  %t41 = load { i64, i8* }*, { i64, i8* }** %t3
  %t42 = load i64, i64* %t4
  %t43 = getelementptr [6 x i8], [6 x i8]* @.slotT126, i32 0, i32 0
  %t44 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %t41, i64 %t42, i8* %t43)
  %t45 = inttoptr i64 %t44 to %Token*
  %t46 = load %Token, %Token* %t45
  store %Token %t46, %Token* %t47
  %t48 = load %Token, %Token* %t47
  %t49 = call i64 @get_token_line(%Token %t48)
  %t50 = load %Token, %Token* %t40
  %t51 = call i64 @get_token_line(%Token %t50)
  %t52 = icmp sgt i64 %t49, %t51
  ret i1 %t52
}

define internal { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param) {
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = call { i64, i8* }* @parse__parse_logical_or(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %t31
}

define internal { i64, i8* }* @parse__parse_logical_or(%SharedEnv_parse* %env.param) {
  %t32 = alloca { i64, i8* }*
  %t33 = alloca i1
  %t36 = alloca i1
  %t45 = alloca %Token
  %t47 = alloca { i64, i8* }*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = call { i64, i8* }* @parse__parse_logical_and(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t31, { i64, i8* }** %t32
  store i1 0, i1* %t33
  br label %while_cond0
while_cond0:
  %t34 = load i1, i1* %t33
  %t35 = xor i1 %t34, true
  br i1 %t35, label %while_body1, label %while_end2
while_body1:
  store i1 true, i1* %t36
  %t37 = getelementptr [6 x i8], [6 x i8]* @.str127, i32 0, i32 0
  %t38 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str127.c, i8* %t37, i64 5)
  %t39 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t38)
  br i1 %t39, label %sc_or_end4, label %sc_or_rhs3
sc_or_rhs3:
  %t40 = getelementptr [3 x i8], [3 x i8]* @.str128, i32 0, i32 0
  %t41 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str128.c, i8* %t40, i64 2)
  %t42 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t41)
  store i1 %t42, i1* %t36
  br label %sc_or_end4
sc_or_end4:
  %t43 = load i1, i1* %t36
  br i1 %t43, label %then5, label %else6
then5:
  %t44 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store %Token %t44, %Token* %t45
  %t46 = call { i64, i8* }* @parse__parse_logical_and(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t46, { i64, i8* }** %t47
  %t48 = getelementptr [6 x i8], [6 x i8]* @.str129, i32 0, i32 0
  %t49 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str129.c, i8* %t48, i64 5)
  %t50 = call { i64, i8* }* @nyx_array_new_ptr()
  %t51 = load %Token, %Token* %t45
  %t52 = call %nyx_string* @get_token_type(%Token %t51)
  %t53 = ptrtoint %nyx_string* %t52 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t50, i64 %t53, i64 2)
  %t54 = load { i64, i8* }*, { i64, i8* }** %t32
  %t55 = ptrtoint { i64, i8* }* %t54 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t50, i64 %t55, i64 5)
  %t56 = load { i64, i8* }*, { i64, i8* }** %t47
  %t57 = ptrtoint { i64, i8* }* %t56 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t50, i64 %t57, i64 5)
  %t58 = call { i64, i8* }* @make_astnode(%nyx_string* %t49, { i64, i8* }* %t50)
  store { i64, i8* }* %t58, { i64, i8* }** %t32
  br label %merge7
else6:
  store i1 1, i1* %t33
  br label %merge7
merge7:
  br label %while_cond0
while_end2:
  %t59 = load { i64, i8* }*, { i64, i8* }** %t32
  ret { i64, i8* }* %t59
}

define internal { i64, i8* }* @parse__parse_logical_and(%SharedEnv_parse* %env.param) {
  %t32 = alloca { i64, i8* }*
  %t33 = alloca i1
  %t36 = alloca i1
  %t45 = alloca %Token
  %t47 = alloca { i64, i8* }*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = call { i64, i8* }* @parse__parse_bitwise_or(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t31, { i64, i8* }** %t32
  store i1 0, i1* %t33
  br label %while_cond0
while_cond0:
  %t34 = load i1, i1* %t33
  %t35 = xor i1 %t34, true
  br i1 %t35, label %while_body1, label %while_end2
while_body1:
  store i1 true, i1* %t36
  %t37 = getelementptr [8 x i8], [8 x i8]* @.str130, i32 0, i32 0
  %t38 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str130.c, i8* %t37, i64 7)
  %t39 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t38)
  br i1 %t39, label %sc_or_end4, label %sc_or_rhs3
sc_or_rhs3:
  %t40 = getelementptr [4 x i8], [4 x i8]* @.str131, i32 0, i32 0
  %t41 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str131.c, i8* %t40, i64 3)
  %t42 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t41)
  store i1 %t42, i1* %t36
  br label %sc_or_end4
sc_or_end4:
  %t43 = load i1, i1* %t36
  br i1 %t43, label %then5, label %else6
then5:
  %t44 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store %Token %t44, %Token* %t45
  %t46 = call { i64, i8* }* @parse__parse_bitwise_or(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t46, { i64, i8* }** %t47
  %t48 = getelementptr [6 x i8], [6 x i8]* @.str132, i32 0, i32 0
  %t49 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str132.c, i8* %t48, i64 5)
  %t50 = call { i64, i8* }* @nyx_array_new_ptr()
  %t51 = load %Token, %Token* %t45
  %t52 = call %nyx_string* @get_token_type(%Token %t51)
  %t53 = ptrtoint %nyx_string* %t52 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t50, i64 %t53, i64 2)
  %t54 = load { i64, i8* }*, { i64, i8* }** %t32
  %t55 = ptrtoint { i64, i8* }* %t54 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t50, i64 %t55, i64 5)
  %t56 = load { i64, i8* }*, { i64, i8* }** %t47
  %t57 = ptrtoint { i64, i8* }* %t56 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t50, i64 %t57, i64 5)
  %t58 = call { i64, i8* }* @make_astnode(%nyx_string* %t49, { i64, i8* }* %t50)
  store { i64, i8* }* %t58, { i64, i8* }** %t32
  br label %merge7
else6:
  store i1 1, i1* %t33
  br label %merge7
merge7:
  br label %while_cond0
while_end2:
  %t59 = load { i64, i8* }*, { i64, i8* }** %t32
  ret { i64, i8* }* %t59
}

define internal { i64, i8* }* @parse__parse_bitwise_or(%SharedEnv_parse* %env.param) {
  %t32 = alloca { i64, i8* }*
  %t33 = alloca i1
  %t40 = alloca %Token
  %t42 = alloca { i64, i8* }*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = call { i64, i8* }* @parse__parse_bitwise_xor(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t31, { i64, i8* }** %t32
  store i1 0, i1* %t33
  br label %while_cond0
while_cond0:
  %t34 = load i1, i1* %t33
  %t35 = xor i1 %t34, true
  br i1 %t35, label %while_body1, label %while_end2
while_body1:
  %t36 = getelementptr [5 x i8], [5 x i8]* @.str133, i32 0, i32 0
  %t37 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str133.c, i8* %t36, i64 4)
  %t38 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t37)
  br i1 %t38, label %then3, label %else4
then3:
  %t39 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store %Token %t39, %Token* %t40
  %t41 = call { i64, i8* }* @parse__parse_bitwise_xor(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t41, { i64, i8* }** %t42
  %t43 = getelementptr [6 x i8], [6 x i8]* @.str134, i32 0, i32 0
  %t44 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str134.c, i8* %t43, i64 5)
  %t45 = call { i64, i8* }* @nyx_array_new_ptr()
  %t46 = load %Token, %Token* %t40
  %t47 = call %nyx_string* @get_token_type(%Token %t46)
  %t48 = ptrtoint %nyx_string* %t47 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t45, i64 %t48, i64 2)
  %t49 = load { i64, i8* }*, { i64, i8* }** %t32
  %t50 = ptrtoint { i64, i8* }* %t49 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t45, i64 %t50, i64 5)
  %t51 = load { i64, i8* }*, { i64, i8* }** %t42
  %t52 = ptrtoint { i64, i8* }* %t51 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t45, i64 %t52, i64 5)
  %t53 = call { i64, i8* }* @make_astnode(%nyx_string* %t44, { i64, i8* }* %t45)
  store { i64, i8* }* %t53, { i64, i8* }** %t32
  br label %merge5
else4:
  store i1 1, i1* %t33
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %t54 = load { i64, i8* }*, { i64, i8* }** %t32
  ret { i64, i8* }* %t54
}

define internal { i64, i8* }* @parse__parse_bitwise_xor(%SharedEnv_parse* %env.param) {
  %t32 = alloca { i64, i8* }*
  %t33 = alloca i1
  %t40 = alloca %Token
  %t42 = alloca { i64, i8* }*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = call { i64, i8* }* @parse__parse_bitwise_and(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t31, { i64, i8* }** %t32
  store i1 0, i1* %t33
  br label %while_cond0
while_cond0:
  %t34 = load i1, i1* %t33
  %t35 = xor i1 %t34, true
  br i1 %t35, label %while_body1, label %while_end2
while_body1:
  %t36 = getelementptr [6 x i8], [6 x i8]* @.str135, i32 0, i32 0
  %t37 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str135.c, i8* %t36, i64 5)
  %t38 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t37)
  br i1 %t38, label %then3, label %else4
then3:
  %t39 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store %Token %t39, %Token* %t40
  %t41 = call { i64, i8* }* @parse__parse_bitwise_and(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t41, { i64, i8* }** %t42
  %t43 = getelementptr [6 x i8], [6 x i8]* @.str136, i32 0, i32 0
  %t44 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str136.c, i8* %t43, i64 5)
  %t45 = call { i64, i8* }* @nyx_array_new_ptr()
  %t46 = load %Token, %Token* %t40
  %t47 = call %nyx_string* @get_token_type(%Token %t46)
  %t48 = ptrtoint %nyx_string* %t47 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t45, i64 %t48, i64 2)
  %t49 = load { i64, i8* }*, { i64, i8* }** %t32
  %t50 = ptrtoint { i64, i8* }* %t49 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t45, i64 %t50, i64 5)
  %t51 = load { i64, i8* }*, { i64, i8* }** %t42
  %t52 = ptrtoint { i64, i8* }* %t51 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t45, i64 %t52, i64 5)
  %t53 = call { i64, i8* }* @make_astnode(%nyx_string* %t44, { i64, i8* }* %t45)
  store { i64, i8* }* %t53, { i64, i8* }** %t32
  br label %merge5
else4:
  store i1 1, i1* %t33
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %t54 = load { i64, i8* }*, { i64, i8* }** %t32
  ret { i64, i8* }* %t54
}

define internal { i64, i8* }* @parse__parse_bitwise_and(%SharedEnv_parse* %env.param) {
  %t32 = alloca { i64, i8* }*
  %t33 = alloca i1
  %t40 = alloca %Token
  %t42 = alloca { i64, i8* }*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = call { i64, i8* }* @parse__parse_equality(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t31, { i64, i8* }** %t32
  store i1 0, i1* %t33
  br label %while_cond0
while_cond0:
  %t34 = load i1, i1* %t33
  %t35 = xor i1 %t34, true
  br i1 %t35, label %while_body1, label %while_end2
while_body1:
  %t36 = getelementptr [4 x i8], [4 x i8]* @.str137, i32 0, i32 0
  %t37 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str137.c, i8* %t36, i64 3)
  %t38 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t37)
  br i1 %t38, label %then3, label %else4
then3:
  %t39 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store %Token %t39, %Token* %t40
  %t41 = call { i64, i8* }* @parse__parse_equality(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t41, { i64, i8* }** %t42
  %t43 = getelementptr [6 x i8], [6 x i8]* @.str138, i32 0, i32 0
  %t44 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str138.c, i8* %t43, i64 5)
  %t45 = call { i64, i8* }* @nyx_array_new_ptr()
  %t46 = load %Token, %Token* %t40
  %t47 = call %nyx_string* @get_token_type(%Token %t46)
  %t48 = ptrtoint %nyx_string* %t47 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t45, i64 %t48, i64 2)
  %t49 = load { i64, i8* }*, { i64, i8* }** %t32
  %t50 = ptrtoint { i64, i8* }* %t49 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t45, i64 %t50, i64 5)
  %t51 = load { i64, i8* }*, { i64, i8* }** %t42
  %t52 = ptrtoint { i64, i8* }* %t51 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t45, i64 %t52, i64 5)
  %t53 = call { i64, i8* }* @make_astnode(%nyx_string* %t44, { i64, i8* }* %t45)
  store { i64, i8* }* %t53, { i64, i8* }** %t32
  br label %merge5
else4:
  store i1 1, i1* %t33
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %t54 = load { i64, i8* }*, { i64, i8* }** %t32
  ret { i64, i8* }* %t54
}

define internal { i64, i8* }* @parse__parse_equality(%SharedEnv_parse* %env.param) {
  %t32 = alloca { i64, i8* }*
  %t33 = alloca i1
  %t36 = alloca i1
  %t45 = alloca %Token
  %t47 = alloca { i64, i8* }*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = call { i64, i8* }* @parse__parse_comparison(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t31, { i64, i8* }** %t32
  store i1 0, i1* %t33
  br label %while_cond0
while_cond0:
  %t34 = load i1, i1* %t33
  %t35 = xor i1 %t34, true
  br i1 %t35, label %while_body1, label %while_end2
while_body1:
  store i1 true, i1* %t36
  %t37 = getelementptr [12 x i8], [12 x i8]* @.str139, i32 0, i32 0
  %t38 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str139.c, i8* %t37, i64 11)
  %t39 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t38)
  br i1 %t39, label %sc_or_end4, label %sc_or_rhs3
sc_or_rhs3:
  %t40 = getelementptr [10 x i8], [10 x i8]* @.str140, i32 0, i32 0
  %t41 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str140.c, i8* %t40, i64 9)
  %t42 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t41)
  store i1 %t42, i1* %t36
  br label %sc_or_end4
sc_or_end4:
  %t43 = load i1, i1* %t36
  br i1 %t43, label %then5, label %else6
then5:
  %t44 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store %Token %t44, %Token* %t45
  %t46 = call { i64, i8* }* @parse__parse_comparison(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t46, { i64, i8* }** %t47
  %t48 = getelementptr [6 x i8], [6 x i8]* @.str141, i32 0, i32 0
  %t49 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str141.c, i8* %t48, i64 5)
  %t50 = call { i64, i8* }* @nyx_array_new_ptr()
  %t51 = load %Token, %Token* %t45
  %t52 = call %nyx_string* @get_token_type(%Token %t51)
  %t53 = ptrtoint %nyx_string* %t52 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t50, i64 %t53, i64 2)
  %t54 = load { i64, i8* }*, { i64, i8* }** %t32
  %t55 = ptrtoint { i64, i8* }* %t54 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t50, i64 %t55, i64 5)
  %t56 = load { i64, i8* }*, { i64, i8* }** %t47
  %t57 = ptrtoint { i64, i8* }* %t56 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t50, i64 %t57, i64 5)
  %t58 = call { i64, i8* }* @make_astnode(%nyx_string* %t49, { i64, i8* }* %t50)
  store { i64, i8* }* %t58, { i64, i8* }** %t32
  br label %merge7
else6:
  store i1 1, i1* %t33
  br label %merge7
merge7:
  br label %while_cond0
while_end2:
  %t59 = load { i64, i8* }*, { i64, i8* }** %t32
  ret { i64, i8* }* %t59
}

define internal { i64, i8* }* @parse__parse_comparison(%SharedEnv_parse* %env.param) {
  %t32 = alloca { i64, i8* }*
  %t33 = alloca i1
  %t36 = alloca i1
  %t37 = alloca i1
  %t38 = alloca i1
  %t55 = alloca %Token
  %t57 = alloca { i64, i8* }*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = call { i64, i8* }* @parse__parse_range(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t31, { i64, i8* }** %t32
  store i1 0, i1* %t33
  br label %while_cond0
while_cond0:
  %t34 = load i1, i1* %t33
  %t35 = xor i1 %t34, true
  br i1 %t35, label %while_body1, label %while_end2
while_body1:
  store i1 true, i1* %t36
  store i1 true, i1* %t37
  store i1 true, i1* %t38
  %t39 = getelementptr [5 x i8], [5 x i8]* @.str142, i32 0, i32 0
  %t40 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str142.c, i8* %t39, i64 4)
  %t41 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t40)
  br i1 %t41, label %sc_or_end4, label %sc_or_rhs3
sc_or_rhs3:
  %t42 = getelementptr [8 x i8], [8 x i8]* @.str143, i32 0, i32 0
  %t43 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str143.c, i8* %t42, i64 7)
  %t44 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t43)
  store i1 %t44, i1* %t38
  br label %sc_or_end4
sc_or_end4:
  %t45 = load i1, i1* %t38
  br i1 %t45, label %sc_or_end6, label %sc_or_rhs5
sc_or_rhs5:
  %t46 = getelementptr [11 x i8], [11 x i8]* @.str144, i32 0, i32 0
  %t47 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str144.c, i8* %t46, i64 10)
  %t48 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t47)
  store i1 %t48, i1* %t37
  br label %sc_or_end6
sc_or_end6:
  %t49 = load i1, i1* %t37
  br i1 %t49, label %sc_or_end8, label %sc_or_rhs7
sc_or_rhs7:
  %t50 = getelementptr [14 x i8], [14 x i8]* @.str145, i32 0, i32 0
  %t51 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str145.c, i8* %t50, i64 13)
  %t52 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t51)
  store i1 %t52, i1* %t36
  br label %sc_or_end8
sc_or_end8:
  %t53 = load i1, i1* %t36
  br i1 %t53, label %then9, label %else10
then9:
  %t54 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store %Token %t54, %Token* %t55
  %t56 = call { i64, i8* }* @parse__parse_range(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t56, { i64, i8* }** %t57
  %t58 = getelementptr [6 x i8], [6 x i8]* @.str146, i32 0, i32 0
  %t59 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str146.c, i8* %t58, i64 5)
  %t60 = call { i64, i8* }* @nyx_array_new_ptr()
  %t61 = load %Token, %Token* %t55
  %t62 = call %nyx_string* @get_token_type(%Token %t61)
  %t63 = ptrtoint %nyx_string* %t62 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t60, i64 %t63, i64 2)
  %t64 = load { i64, i8* }*, { i64, i8* }** %t32
  %t65 = ptrtoint { i64, i8* }* %t64 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t60, i64 %t65, i64 5)
  %t66 = load { i64, i8* }*, { i64, i8* }** %t57
  %t67 = ptrtoint { i64, i8* }* %t66 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t60, i64 %t67, i64 5)
  %t68 = call { i64, i8* }* @make_astnode(%nyx_string* %t59, { i64, i8* }* %t60)
  store { i64, i8* }* %t68, { i64, i8* }** %t32
  br label %merge11
else10:
  store i1 1, i1* %t33
  br label %merge11
merge11:
  br label %while_cond0
while_end2:
  %t69 = load { i64, i8* }*, { i64, i8* }** %t32
  ret { i64, i8* }* %t69
}

define internal { i64, i8* }* @parse__parse_range(%SharedEnv_parse* %env.param) {
  %t32 = alloca { i64, i8* }*
  %t38 = alloca { i64, i8* }*
  %t55 = alloca { i64, i8* }*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = call { i64, i8* }* @parse__parse_addition(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t31, { i64, i8* }** %t32
  %t33 = getelementptr [16 x i8], [16 x i8]* @.str147, i32 0, i32 0
  %t34 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str147.c, i8* %t33, i64 15)
  %t35 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t34)
  br i1 %t35, label %then0, label %else1
then0:
  %t36 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t37 = call { i64, i8* }* @parse__parse_addition(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t37, { i64, i8* }** %t38
  %t39 = getelementptr [6 x i8], [6 x i8]* @.str148, i32 0, i32 0
  %t40 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str148.c, i8* %t39, i64 5)
  %t41 = call { i64, i8* }* @nyx_array_new_ptr()
  %t42 = load { i64, i8* }*, { i64, i8* }** %t32
  %t43 = ptrtoint { i64, i8* }* %t42 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t41, i64 %t43, i64 5)
  %t44 = load { i64, i8* }*, { i64, i8* }** %t38
  %t45 = ptrtoint { i64, i8* }* %t44 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t41, i64 %t45, i64 5)
  %t46 = getelementptr [5 x i8], [5 x i8]* @.str149, i32 0, i32 0
  %t47 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str149.c, i8* %t46, i64 4)
  %t48 = ptrtoint %nyx_string* %t47 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t41, i64 %t48, i64 2)
  %t49 = call { i64, i8* }* @make_astnode(%nyx_string* %t40, { i64, i8* }* %t41)
  ret { i64, i8* }* %t49
else1:
  br label %merge2
merge2:
  %t50 = getelementptr [6 x i8], [6 x i8]* @.str150, i32 0, i32 0
  %t51 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str150.c, i8* %t50, i64 5)
  %t52 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t51)
  br i1 %t52, label %then3, label %else4
then3:
  %t53 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t54 = call { i64, i8* }* @parse__parse_addition(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t54, { i64, i8* }** %t55
  %t56 = getelementptr [6 x i8], [6 x i8]* @.str151, i32 0, i32 0
  %t57 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str151.c, i8* %t56, i64 5)
  %t58 = call { i64, i8* }* @nyx_array_new_ptr()
  %t59 = load { i64, i8* }*, { i64, i8* }** %t32
  %t60 = ptrtoint { i64, i8* }* %t59 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t58, i64 %t60, i64 5)
  %t61 = load { i64, i8* }*, { i64, i8* }** %t55
  %t62 = ptrtoint { i64, i8* }* %t61 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t58, i64 %t62, i64 5)
  %t63 = getelementptr [6 x i8], [6 x i8]* @.str152, i32 0, i32 0
  %t64 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str152.c, i8* %t63, i64 5)
  %t65 = ptrtoint %nyx_string* %t64 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t58, i64 %t65, i64 2)
  %t66 = call { i64, i8* }* @make_astnode(%nyx_string* %t57, { i64, i8* }* %t58)
  ret { i64, i8* }* %t66
else4:
  br label %merge5
merge5:
  %t67 = load { i64, i8* }*, { i64, i8* }** %t32
  ret { i64, i8* }* %t67
}

define internal { i64, i8* }* @parse__parse_addition(%SharedEnv_parse* %env.param) {
  %t32 = alloca { i64, i8* }*
  %t33 = alloca i1
  %t36 = alloca i1
  %t45 = alloca %Token
  %t47 = alloca { i64, i8* }*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = call { i64, i8* }* @parse__parse_shift(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t31, { i64, i8* }** %t32
  store i1 0, i1* %t33
  br label %while_cond0
while_cond0:
  %t34 = load i1, i1* %t33
  %t35 = xor i1 %t34, true
  br i1 %t35, label %while_body1, label %while_end2
while_body1:
  store i1 true, i1* %t36
  %t37 = getelementptr [5 x i8], [5 x i8]* @.str153, i32 0, i32 0
  %t38 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str153.c, i8* %t37, i64 4)
  %t39 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t38)
  br i1 %t39, label %sc_or_end4, label %sc_or_rhs3
sc_or_rhs3:
  %t40 = getelementptr [6 x i8], [6 x i8]* @.str154, i32 0, i32 0
  %t41 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str154.c, i8* %t40, i64 5)
  %t42 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t41)
  store i1 %t42, i1* %t36
  br label %sc_or_end4
sc_or_end4:
  %t43 = load i1, i1* %t36
  br i1 %t43, label %then5, label %else6
then5:
  %t44 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store %Token %t44, %Token* %t45
  %t46 = call { i64, i8* }* @parse__parse_shift(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t46, { i64, i8* }** %t47
  %t48 = getelementptr [6 x i8], [6 x i8]* @.str155, i32 0, i32 0
  %t49 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str155.c, i8* %t48, i64 5)
  %t50 = call { i64, i8* }* @nyx_array_new_ptr()
  %t51 = load %Token, %Token* %t45
  %t52 = call %nyx_string* @get_token_type(%Token %t51)
  %t53 = ptrtoint %nyx_string* %t52 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t50, i64 %t53, i64 2)
  %t54 = load { i64, i8* }*, { i64, i8* }** %t32
  %t55 = ptrtoint { i64, i8* }* %t54 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t50, i64 %t55, i64 5)
  %t56 = load { i64, i8* }*, { i64, i8* }** %t47
  %t57 = ptrtoint { i64, i8* }* %t56 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t50, i64 %t57, i64 5)
  %t58 = call { i64, i8* }* @make_astnode(%nyx_string* %t49, { i64, i8* }* %t50)
  store { i64, i8* }* %t58, { i64, i8* }** %t32
  br label %merge7
else6:
  store i1 1, i1* %t33
  br label %merge7
merge7:
  br label %while_cond0
while_end2:
  %t59 = load { i64, i8* }*, { i64, i8* }** %t32
  ret { i64, i8* }* %t59
}

define internal { i64, i8* }* @parse__parse_shift(%SharedEnv_parse* %env.param) {
  %t32 = alloca { i64, i8* }*
  %t33 = alloca i1
  %t36 = alloca i1
  %t45 = alloca %Token
  %t47 = alloca { i64, i8* }*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = call { i64, i8* }* @parse__parse_multiplication(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t31, { i64, i8* }** %t32
  store i1 0, i1* %t33
  br label %while_cond0
while_cond0:
  %t34 = load i1, i1* %t33
  %t35 = xor i1 %t34, true
  br i1 %t35, label %while_body1, label %while_end2
while_body1:
  store i1 true, i1* %t36
  %t37 = getelementptr [11 x i8], [11 x i8]* @.str156, i32 0, i32 0
  %t38 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str156.c, i8* %t37, i64 10)
  %t39 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t38)
  br i1 %t39, label %sc_or_end4, label %sc_or_rhs3
sc_or_rhs3:
  %t40 = getelementptr [12 x i8], [12 x i8]* @.str157, i32 0, i32 0
  %t41 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str157.c, i8* %t40, i64 11)
  %t42 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t41)
  store i1 %t42, i1* %t36
  br label %sc_or_end4
sc_or_end4:
  %t43 = load i1, i1* %t36
  br i1 %t43, label %then5, label %else6
then5:
  %t44 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store %Token %t44, %Token* %t45
  %t46 = call { i64, i8* }* @parse__parse_multiplication(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t46, { i64, i8* }** %t47
  %t48 = getelementptr [6 x i8], [6 x i8]* @.str158, i32 0, i32 0
  %t49 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str158.c, i8* %t48, i64 5)
  %t50 = call { i64, i8* }* @nyx_array_new_ptr()
  %t51 = load %Token, %Token* %t45
  %t52 = call %nyx_string* @get_token_type(%Token %t51)
  %t53 = ptrtoint %nyx_string* %t52 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t50, i64 %t53, i64 2)
  %t54 = load { i64, i8* }*, { i64, i8* }** %t32
  %t55 = ptrtoint { i64, i8* }* %t54 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t50, i64 %t55, i64 5)
  %t56 = load { i64, i8* }*, { i64, i8* }** %t47
  %t57 = ptrtoint { i64, i8* }* %t56 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t50, i64 %t57, i64 5)
  %t58 = call { i64, i8* }* @make_astnode(%nyx_string* %t49, { i64, i8* }* %t50)
  store { i64, i8* }* %t58, { i64, i8* }** %t32
  br label %merge7
else6:
  store i1 1, i1* %t33
  br label %merge7
merge7:
  br label %while_cond0
while_end2:
  %t59 = load { i64, i8* }*, { i64, i8* }** %t32
  ret { i64, i8* }* %t59
}

define internal { i64, i8* }* @parse__parse_multiplication(%SharedEnv_parse* %env.param) {
  %t32 = alloca { i64, i8* }*
  %t33 = alloca i1
  %t36 = alloca i1
  %t42 = alloca i1
  %t43 = alloca i1
  %t56 = alloca %Token
  %t58 = alloca { i64, i8* }*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = call { i64, i8* }* @parse__parse_power(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t31, { i64, i8* }** %t32
  store i1 0, i1* %t33
  br label %while_cond0
while_cond0:
  %t34 = load i1, i1* %t33
  %t35 = xor i1 %t34, true
  br i1 %t35, label %while_body1, label %while_end2
while_body1:
  store i1 false, i1* %t36
  %t37 = getelementptr [5 x i8], [5 x i8]* @.str159, i32 0, i32 0
  %t38 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str159.c, i8* %t37, i64 4)
  %t39 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t38)
  br i1 %t39, label %sc_and_rhs3, label %sc_and_end4
sc_and_rhs3:
  %t40 = call i1 @parse__is_on_new_line(%SharedEnv_parse* %env.param)
  store i1 %t40, i1* %t36
  br label %sc_and_end4
sc_and_end4:
  %t41 = load i1, i1* %t36
  br i1 %t41, label %then5, label %else6
then5:
  store i1 1, i1* %t33
  br label %merge7
else6:
  store i1 true, i1* %t42
  store i1 true, i1* %t43
  %t44 = getelementptr [5 x i8], [5 x i8]* @.str160, i32 0, i32 0
  %t45 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str160.c, i8* %t44, i64 4)
  %t46 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t45)
  br i1 %t46, label %sc_or_end9, label %sc_or_rhs8
sc_or_rhs8:
  %t47 = getelementptr [6 x i8], [6 x i8]* @.str161, i32 0, i32 0
  %t48 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str161.c, i8* %t47, i64 5)
  %t49 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t48)
  store i1 %t49, i1* %t43
  br label %sc_or_end9
sc_or_end9:
  %t50 = load i1, i1* %t43
  br i1 %t50, label %sc_or_end11, label %sc_or_rhs10
sc_or_rhs10:
  %t51 = getelementptr [8 x i8], [8 x i8]* @.str162, i32 0, i32 0
  %t52 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str162.c, i8* %t51, i64 7)
  %t53 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t52)
  store i1 %t53, i1* %t42
  br label %sc_or_end11
sc_or_end11:
  %t54 = load i1, i1* %t42
  br i1 %t54, label %then12, label %else13
then12:
  %t55 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store %Token %t55, %Token* %t56
  %t57 = call { i64, i8* }* @parse__parse_power(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t57, { i64, i8* }** %t58
  %t59 = getelementptr [6 x i8], [6 x i8]* @.str163, i32 0, i32 0
  %t60 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str163.c, i8* %t59, i64 5)
  %t61 = call { i64, i8* }* @nyx_array_new_ptr()
  %t62 = load %Token, %Token* %t56
  %t63 = call %nyx_string* @get_token_type(%Token %t62)
  %t64 = ptrtoint %nyx_string* %t63 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t61, i64 %t64, i64 2)
  %t65 = load { i64, i8* }*, { i64, i8* }** %t32
  %t66 = ptrtoint { i64, i8* }* %t65 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t61, i64 %t66, i64 5)
  %t67 = load { i64, i8* }*, { i64, i8* }** %t58
  %t68 = ptrtoint { i64, i8* }* %t67 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t61, i64 %t68, i64 5)
  %t69 = call { i64, i8* }* @make_astnode(%nyx_string* %t60, { i64, i8* }* %t61)
  store { i64, i8* }* %t69, { i64, i8* }** %t32
  br label %merge14
else13:
  store i1 1, i1* %t33
  br label %merge14
merge14:
  br label %merge7
merge7:
  br label %while_cond0
while_end2:
  %t70 = load { i64, i8* }*, { i64, i8* }** %t32
  ret { i64, i8* }* %t70
}

define internal { i64, i8* }* @parse__parse_power(%SharedEnv_parse* %env.param) {
  %t32 = alloca { i64, i8* }*
  %t38 = alloca { i64, i8* }*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = call { i64, i8* }* @parse__parse_unary(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t31, { i64, i8* }** %t32
  %t33 = getelementptr [6 x i8], [6 x i8]* @.str164, i32 0, i32 0
  %t34 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str164.c, i8* %t33, i64 5)
  %t35 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t34)
  br i1 %t35, label %then0, label %else1
then0:
  %t36 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t37 = call { i64, i8* }* @parse__parse_power(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t37, { i64, i8* }** %t38
  %t39 = getelementptr [6 x i8], [6 x i8]* @.str165, i32 0, i32 0
  %t40 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str165.c, i8* %t39, i64 5)
  %t41 = call { i64, i8* }* @nyx_array_new_ptr()
  %t42 = getelementptr [6 x i8], [6 x i8]* @.str166, i32 0, i32 0
  %t43 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str166.c, i8* %t42, i64 5)
  %t44 = ptrtoint %nyx_string* %t43 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t41, i64 %t44, i64 2)
  %t45 = load { i64, i8* }*, { i64, i8* }** %t32
  %t46 = ptrtoint { i64, i8* }* %t45 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t41, i64 %t46, i64 5)
  %t47 = load { i64, i8* }*, { i64, i8* }** %t38
  %t48 = ptrtoint { i64, i8* }* %t47 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t41, i64 %t48, i64 5)
  %t49 = call { i64, i8* }* @make_astnode(%nyx_string* %t40, { i64, i8* }* %t41)
  ret { i64, i8* }* %t49
else1:
  br label %merge2
merge2:
  %t50 = load { i64, i8* }*, { i64, i8* }** %t32
  ret { i64, i8* }* %t50
}

define internal { i64, i8* }* @parse__parse_unary(%SharedEnv_parse* %env.param) {
  %t36 = alloca { i64, i8* }*
  %t43 = alloca i1
  %t44 = alloca i1
  %t57 = alloca %Token
  %t59 = alloca { i64, i8* }*
  %t75 = alloca %nyx_string*
  %t82 = alloca { i64, i8* }*
  %t90 = alloca { i64, i8* }*
  %t107 = alloca { i64, i8* }*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = getelementptr [6 x i8], [6 x i8]* @.str167, i32 0, i32 0
  %t32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str167.c, i8* %t31, i64 5)
  %t33 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t32)
  br i1 %t33, label %then0, label %else1
then0:
  %t34 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t35 = call { i64, i8* }* @parse__parse_unary(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t35, { i64, i8* }** %t36
  %t37 = getelementptr [11 x i8], [11 x i8]* @.str168, i32 0, i32 0
  %t38 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str168.c, i8* %t37, i64 10)
  %t39 = call { i64, i8* }* @nyx_array_new_ptr()
  %t40 = load { i64, i8* }*, { i64, i8* }** %t36
  %t41 = ptrtoint { i64, i8* }* %t40 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t39, i64 %t41, i64 5)
  %t42 = call { i64, i8* }* @make_astnode(%nyx_string* %t38, { i64, i8* }* %t39)
  ret { i64, i8* }* %t42
else1:
  br label %merge2
merge2:
  store i1 true, i1* %t43
  store i1 true, i1* %t44
  %t45 = getelementptr [6 x i8], [6 x i8]* @.str169, i32 0, i32 0
  %t46 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str169.c, i8* %t45, i64 5)
  %t47 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t46)
  br i1 %t47, label %sc_or_end4, label %sc_or_rhs3
sc_or_rhs3:
  %t48 = getelementptr [4 x i8], [4 x i8]* @.str170, i32 0, i32 0
  %t49 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str170.c, i8* %t48, i64 3)
  %t50 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t49)
  store i1 %t50, i1* %t44
  br label %sc_or_end4
sc_or_end4:
  %t51 = load i1, i1* %t44
  br i1 %t51, label %sc_or_end6, label %sc_or_rhs5
sc_or_rhs5:
  %t52 = getelementptr [6 x i8], [6 x i8]* @.str171, i32 0, i32 0
  %t53 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str171.c, i8* %t52, i64 5)
  %t54 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t53)
  store i1 %t54, i1* %t43
  br label %sc_or_end6
sc_or_end6:
  %t55 = load i1, i1* %t43
  br i1 %t55, label %then7, label %else8
then7:
  %t56 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store %Token %t56, %Token* %t57
  %t58 = call { i64, i8* }* @parse__parse_unary(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t58, { i64, i8* }** %t59
  %t60 = getelementptr [5 x i8], [5 x i8]* @.str172, i32 0, i32 0
  %t61 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str172.c, i8* %t60, i64 4)
  %t62 = call { i64, i8* }* @nyx_array_new_ptr()
  %t63 = load %Token, %Token* %t57
  %t64 = call %nyx_string* @get_token_type(%Token %t63)
  %t65 = ptrtoint %nyx_string* %t64 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t62, i64 %t65, i64 2)
  %t66 = load { i64, i8* }*, { i64, i8* }** %t59
  %t67 = ptrtoint { i64, i8* }* %t66 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t62, i64 %t67, i64 5)
  %t68 = call { i64, i8* }* @make_astnode(%nyx_string* %t61, { i64, i8* }* %t62)
  ret { i64, i8* }* %t68
else8:
  br label %merge9
merge9:
  %t69 = getelementptr [4 x i8], [4 x i8]* @.str173, i32 0, i32 0
  %t70 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str173.c, i8* %t69, i64 3)
  %t71 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t70)
  br i1 %t71, label %then10, label %else11
then10:
  %t72 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t73 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %t74 = call %nyx_string* @get_token_value(%Token %t73)
  store %nyx_string* %t74, %nyx_string** %t75
  %t76 = load %nyx_string*, %nyx_string** %t75
  %t77 = getelementptr [4 x i8], [4 x i8]* @.str174, i32 0, i32 0
  %t78 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str174.c, i8* %t77, i64 3)
  %t79 = call i1 @nyx_string_equals(%nyx_string* %t76, %nyx_string* %t78)
  br i1 %t79, label %then13, label %else14
then13:
  %t80 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t81 = call { i64, i8* }* @parse__parse_unary(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t81, { i64, i8* }** %t82
  %t83 = getelementptr [12 x i8], [12 x i8]* @.str175, i32 0, i32 0
  %t84 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str175.c, i8* %t83, i64 11)
  %t85 = call { i64, i8* }* @nyx_array_new_ptr()
  %t86 = load { i64, i8* }*, { i64, i8* }** %t82
  %t87 = ptrtoint { i64, i8* }* %t86 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t85, i64 %t87, i64 5)
  %t88 = call { i64, i8* }* @make_astnode(%nyx_string* %t84, { i64, i8* }* %t85)
  ret { i64, i8* }* %t88
else14:
  br label %merge15
merge15:
  %t89 = call { i64, i8* }* @parse__parse_unary(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t89, { i64, i8* }** %t90
  %t91 = getelementptr [8 x i8], [8 x i8]* @.str176, i32 0, i32 0
  %t92 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str176.c, i8* %t91, i64 7)
  %t93 = call { i64, i8* }* @nyx_array_new_ptr()
  %t94 = load { i64, i8* }*, { i64, i8* }** %t90
  %t95 = ptrtoint { i64, i8* }* %t94 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t93, i64 %t95, i64 5)
  %t96 = call { i64, i8* }* @make_astnode(%nyx_string* %t92, { i64, i8* }* %t93)
  ret { i64, i8* }* %t96
else11:
  br label %merge12
merge12:
  %t97 = getelementptr [5 x i8], [5 x i8]* @.str177, i32 0, i32 0
  %t98 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str177.c, i8* %t97, i64 4)
  %t99 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t98)
  br i1 %t99, label %then16, label %else17
then16:
  %t100 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t101 = getelementptr [6 x i8], [6 x i8]* @.str178, i32 0, i32 0
  %t102 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str178.c, i8* %t101, i64 5)
  %t103 = call { i64, i8* }* @nyx_array_new_ptr()
  %t104 = call { i64, i8* }* @parse__parse_deref_operand(%SharedEnv_parse* %env.param)
  %t105 = ptrtoint { i64, i8* }* %t104 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t103, i64 %t105, i64 5)
  %t106 = call { i64, i8* }* @make_astnode(%nyx_string* %t102, { i64, i8* }* %t103)
  store { i64, i8* }* %t106, { i64, i8* }** %t107
  %t108 = load { i64, i8* }*, { i64, i8* }** %t107
  %t109 = call { i64, i8* }* @parse__parse_cast_suffix(%SharedEnv_parse* %env.param, { i64, i8* }* %t108)
  ret { i64, i8* }* %t109
else17:
  br label %merge18
merge18:
  %t110 = call { i64, i8* }* @parse__parse_cast(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %t110
}

define internal { i64, i8* }* @parse__parse_deref_operand(%SharedEnv_parse* %env.param) {
  %t41 = alloca i1
  %t42 = alloca i1
  %t43 = alloca i1
  %t44 = alloca i1
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = getelementptr [5 x i8], [5 x i8]* @.str179, i32 0, i32 0
  %t32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str179.c, i8* %t31, i64 4)
  %t33 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t32)
  br i1 %t33, label %then0, label %else1
then0:
  %t34 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t35 = getelementptr [6 x i8], [6 x i8]* @.str180, i32 0, i32 0
  %t36 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str180.c, i8* %t35, i64 5)
  %t37 = call { i64, i8* }* @nyx_array_new_ptr()
  %t38 = call { i64, i8* }* @parse__parse_deref_operand(%SharedEnv_parse* %env.param)
  %t39 = ptrtoint { i64, i8* }* %t38 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t37, i64 %t39, i64 5)
  %t40 = call { i64, i8* }* @make_astnode(%nyx_string* %t36, { i64, i8* }* %t37)
  ret { i64, i8* }* %t40
else1:
  br label %merge2
merge2:
  store i1 true, i1* %t41
  store i1 true, i1* %t42
  store i1 true, i1* %t43
  store i1 true, i1* %t44
  %t45 = getelementptr [4 x i8], [4 x i8]* @.str181, i32 0, i32 0
  %t46 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str181.c, i8* %t45, i64 3)
  %t47 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t46)
  br i1 %t47, label %sc_or_end4, label %sc_or_rhs3
sc_or_rhs3:
  %t48 = getelementptr [6 x i8], [6 x i8]* @.str182, i32 0, i32 0
  %t49 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str182.c, i8* %t48, i64 5)
  %t50 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t49)
  store i1 %t50, i1* %t44
  br label %sc_or_end4
sc_or_end4:
  %t51 = load i1, i1* %t44
  br i1 %t51, label %sc_or_end6, label %sc_or_rhs5
sc_or_rhs5:
  %t52 = getelementptr [4 x i8], [4 x i8]* @.str183, i32 0, i32 0
  %t53 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str183.c, i8* %t52, i64 3)
  %t54 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t53)
  store i1 %t54, i1* %t43
  br label %sc_or_end6
sc_or_end6:
  %t55 = load i1, i1* %t43
  br i1 %t55, label %sc_or_end8, label %sc_or_rhs7
sc_or_rhs7:
  %t56 = getelementptr [6 x i8], [6 x i8]* @.str184, i32 0, i32 0
  %t57 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str184.c, i8* %t56, i64 5)
  %t58 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t57)
  store i1 %t58, i1* %t42
  br label %sc_or_end8
sc_or_end8:
  %t59 = load i1, i1* %t42
  br i1 %t59, label %sc_or_end10, label %sc_or_rhs9
sc_or_rhs9:
  %t60 = getelementptr [6 x i8], [6 x i8]* @.str185, i32 0, i32 0
  %t61 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str185.c, i8* %t60, i64 5)
  %t62 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t61)
  store i1 %t62, i1* %t41
  br label %sc_or_end10
sc_or_end10:
  %t63 = load i1, i1* %t41
  br i1 %t63, label %then11, label %else12
then11:
  %t64 = call { i64, i8* }* @parse__parse_unary(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %t64
else12:
  br label %merge13
merge13:
  %t65 = call { i64, i8* }* @parse__parse_postfix(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %t65
}

define internal { i64, i8* }* @parse__parse_cast(%SharedEnv_parse* %env.param) {
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = call { i64, i8* }* @parse__parse_postfix(%SharedEnv_parse* %env.param)
  %t32 = call { i64, i8* }* @parse__parse_cast_suffix(%SharedEnv_parse* %env.param, { i64, i8* }* %t31)
  ret { i64, i8* }* %t32
}

define internal { i64, i8* }* @parse__parse_cast_suffix(%SharedEnv_parse* %env.param, { i64, i8* }* %base.param) {
  %t31 = alloca { i64, i8* }*
  %t33 = alloca { i64, i8* }*
  %t34 = alloca i1
  %t42 = alloca %nyx_string*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  store { i64, i8* }* %base.param, { i64, i8* }** %t31
  %t32 = load { i64, i8* }*, { i64, i8* }** %t31
  store { i64, i8* }* %t32, { i64, i8* }** %t33
  store i1 0, i1* %t34
  br label %while_cond0
while_cond0:
  %t35 = load i1, i1* %t34
  %t36 = xor i1 %t35, true
  br i1 %t36, label %while_body1, label %while_end2
while_body1:
  %t37 = getelementptr [3 x i8], [3 x i8]* @.str186, i32 0, i32 0
  %t38 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str186.c, i8* %t37, i64 2)
  %t39 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t38)
  br i1 %t39, label %then3, label %else4
then3:
  %t40 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t41 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %t41, %nyx_string** %t42
  %t43 = getelementptr [5 x i8], [5 x i8]* @.str187, i32 0, i32 0
  %t44 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str187.c, i8* %t43, i64 4)
  %t45 = call { i64, i8* }* @nyx_array_new_ptr()
  %t46 = load { i64, i8* }*, { i64, i8* }** %t33
  %t47 = ptrtoint { i64, i8* }* %t46 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t45, i64 %t47, i64 5)
  %t48 = load %nyx_string*, %nyx_string** %t42
  %t49 = ptrtoint %nyx_string* %t48 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t45, i64 %t49, i64 2)
  %t50 = call { i64, i8* }* @make_astnode(%nyx_string* %t44, { i64, i8* }* %t45)
  store { i64, i8* }* %t50, { i64, i8* }** %t33
  br label %merge5
else4:
  store i1 1, i1* %t34
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %t51 = load { i64, i8* }*, { i64, i8* }** %t33
  ret { i64, i8* }* %t51
}

define internal i1 @parse__is_generic_call_lookahead(%SharedEnv_parse* %env.param) {
  %t33 = alloca i64
  %t44 = alloca %Token
  %t51 = alloca i64
  %t54 = alloca i1
  %t68 = alloca %Token
  %t71 = alloca %nyx_string*
  %t92 = alloca i1
  %t93 = alloca i1
  %t94 = alloca i1
  %t95 = alloca i1
  %t96 = alloca i1
  %t97 = alloca i1
  %t98 = alloca i1
  %t99 = alloca i1
  %t100 = alloca i1
  %t101 = alloca i1
  %t102 = alloca i1
  %t103 = alloca i1
  %t104 = alloca i1
  %t105 = alloca i1
  %t106 = alloca i1
  %t107 = alloca i1
  %t207 = alloca %Token
  %t210 = alloca %nyx_string*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = load i64, i64* %t4
  %t32 = add i64 %t31, 1
  store i64 %t32, i64* %t33
  %t34 = load i64, i64* %t33
  %t35 = load { i64, i8* }*, { i64, i8* }** %t3
  %t36 = call i64 @nyx_array_length({ i64, i8* }* %t35)
  %t37 = icmp sge i64 %t34, %t36
  br i1 %t37, label %then0, label %else1
then0:
  ret i1 0
else1:
  br label %merge2
merge2:
  %t38 = load { i64, i8* }*, { i64, i8* }** %t3
  %t39 = load i64, i64* %t33
  %t40 = getelementptr [6 x i8], [6 x i8]* @.slotT188, i32 0, i32 0
  %t41 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %t38, i64 %t39, i8* %t40)
  %t42 = inttoptr i64 %t41 to %Token*
  %t43 = load %Token, %Token* %t42
  store %Token %t43, %Token* %t44
  %t45 = load %Token, %Token* %t44
  %t46 = call %nyx_string* @get_token_type(%Token %t45)
  %t47 = getelementptr [11 x i8], [11 x i8]* @.str189, i32 0, i32 0
  %t48 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str189.c, i8* %t47, i64 10)
  %t49 = call i1 @nyx_string_equals(%nyx_string* %t46, %nyx_string* %t48)
  %t50 = xor i1 %t49, true
  br i1 %t50, label %then3, label %else4
then3:
  ret i1 0
else4:
  br label %merge5
merge5:
  store i64 1, i64* %t51
  %t52 = load i64, i64* %t33
  %t53 = add i64 %t52, 1
  store i64 %t53, i64* %t33
  br label %while_cond6
while_cond6:
  store i1 false, i1* %t54
  %t55 = load i64, i64* %t33
  %t56 = load { i64, i8* }*, { i64, i8* }** %t3
  %t57 = call i64 @nyx_array_length({ i64, i8* }* %t56)
  %t58 = icmp slt i64 %t55, %t57
  br i1 %t58, label %sc_and_rhs9, label %sc_and_end10
sc_and_rhs9:
  %t59 = load i64, i64* %t51
  %t60 = icmp sgt i64 %t59, 0
  store i1 %t60, i1* %t54
  br label %sc_and_end10
sc_and_end10:
  %t61 = load i1, i1* %t54
  br i1 %t61, label %while_body7, label %while_end8
while_body7:
  %t62 = load { i64, i8* }*, { i64, i8* }** %t3
  %t63 = load i64, i64* %t33
  %t64 = getelementptr [6 x i8], [6 x i8]* @.slotT190, i32 0, i32 0
  %t65 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %t62, i64 %t63, i8* %t64)
  %t66 = inttoptr i64 %t65 to %Token*
  %t67 = load %Token, %Token* %t66
  store %Token %t67, %Token* %t68
  %t69 = load %Token, %Token* %t68
  %t70 = call %nyx_string* @get_token_type(%Token %t69)
  store %nyx_string* %t70, %nyx_string** %t71
  %t72 = load %nyx_string*, %nyx_string** %t71
  %t73 = getelementptr [5 x i8], [5 x i8]* @.str191, i32 0, i32 0
  %t74 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str191.c, i8* %t73, i64 4)
  %t75 = call i1 @nyx_string_equals(%nyx_string* %t72, %nyx_string* %t74)
  br i1 %t75, label %then11, label %else12
then11:
  %t76 = load i64, i64* %t51
  %t77 = add i64 %t76, 1
  store i64 %t77, i64* %t51
  br label %merge13
else12:
  %t78 = load %nyx_string*, %nyx_string** %t71
  %t79 = getelementptr [8 x i8], [8 x i8]* @.str192, i32 0, i32 0
  %t80 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str192.c, i8* %t79, i64 7)
  %t81 = call i1 @nyx_string_equals(%nyx_string* %t78, %nyx_string* %t80)
  br i1 %t81, label %then14, label %else15
then14:
  %t82 = load i64, i64* %t51
  %t83 = sub i64 %t82, 1
  store i64 %t83, i64* %t51
  br label %merge16
else15:
  %t84 = load %nyx_string*, %nyx_string** %t71
  %t85 = getelementptr [12 x i8], [12 x i8]* @.str193, i32 0, i32 0
  %t86 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str193.c, i8* %t85, i64 11)
  %t87 = call i1 @nyx_string_equals(%nyx_string* %t84, %nyx_string* %t86)
  br i1 %t87, label %then17, label %else18
then17:
  %t88 = load i64, i64* %t51
  %t89 = icmp sge i64 %t88, 2
  br i1 %t89, label %then20, label %else21
then20:
  %t90 = load i64, i64* %t51
  %t91 = sub i64 %t90, 2
  store i64 %t91, i64* %t51
  br label %merge22
else21:
  ret i1 0
merge22:
  br label %merge19
else18:
  store i1 true, i1* %t92
  store i1 true, i1* %t93
  store i1 true, i1* %t94
  store i1 true, i1* %t95
  store i1 true, i1* %t96
  store i1 true, i1* %t97
  store i1 true, i1* %t98
  store i1 true, i1* %t99
  store i1 true, i1* %t100
  store i1 true, i1* %t101
  store i1 true, i1* %t102
  store i1 true, i1* %t103
  store i1 true, i1* %t104
  store i1 true, i1* %t105
  store i1 true, i1* %t106
  store i1 true, i1* %t107
  %t108 = load %nyx_string*, %nyx_string** %t71
  %t109 = getelementptr [11 x i8], [11 x i8]* @.str194, i32 0, i32 0
  %t110 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str194.c, i8* %t109, i64 10)
  %t111 = call i1 @nyx_string_equals(%nyx_string* %t108, %nyx_string* %t110)
  br i1 %t111, label %sc_or_end24, label %sc_or_rhs23
sc_or_rhs23:
  %t112 = load %nyx_string*, %nyx_string** %t71
  %t113 = getelementptr [6 x i8], [6 x i8]* @.str195, i32 0, i32 0
  %t114 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str195.c, i8* %t113, i64 5)
  %t115 = call i1 @nyx_string_equals(%nyx_string* %t112, %nyx_string* %t114)
  store i1 %t115, i1* %t107
  br label %sc_or_end24
sc_or_end24:
  %t116 = load i1, i1* %t107
  br i1 %t116, label %sc_or_end26, label %sc_or_rhs25
sc_or_rhs25:
  %t117 = load %nyx_string*, %nyx_string** %t71
  %t118 = getelementptr [5 x i8], [5 x i8]* @.str196, i32 0, i32 0
  %t119 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str196.c, i8* %t118, i64 4)
  %t120 = call i1 @nyx_string_equals(%nyx_string* %t117, %nyx_string* %t119)
  store i1 %t120, i1* %t106
  br label %sc_or_end26
sc_or_end26:
  %t121 = load i1, i1* %t106
  br i1 %t121, label %sc_or_end28, label %sc_or_rhs27
sc_or_rhs27:
  %t122 = load %nyx_string*, %nyx_string** %t71
  %t123 = getelementptr [4 x i8], [4 x i8]* @.str197, i32 0, i32 0
  %t124 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str197.c, i8* %t123, i64 3)
  %t125 = call i1 @nyx_string_equals(%nyx_string* %t122, %nyx_string* %t124)
  store i1 %t125, i1* %t105
  br label %sc_or_end28
sc_or_end28:
  %t126 = load i1, i1* %t105
  br i1 %t126, label %sc_or_end30, label %sc_or_rhs29
sc_or_rhs29:
  %t127 = load %nyx_string*, %nyx_string** %t71
  %t128 = getelementptr [9 x i8], [9 x i8]* @.str198, i32 0, i32 0
  %t129 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str198.c, i8* %t128, i64 8)
  %t130 = call i1 @nyx_string_equals(%nyx_string* %t127, %nyx_string* %t129)
  store i1 %t130, i1* %t104
  br label %sc_or_end30
sc_or_end30:
  %t131 = load i1, i1* %t104
  br i1 %t131, label %sc_or_end32, label %sc_or_rhs31
sc_or_rhs31:
  %t132 = load %nyx_string*, %nyx_string** %t71
  %t133 = getelementptr [3 x i8], [3 x i8]* @.str199, i32 0, i32 0
  %t134 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str199.c, i8* %t133, i64 2)
  %t135 = call i1 @nyx_string_equals(%nyx_string* %t132, %nyx_string* %t134)
  store i1 %t135, i1* %t103
  br label %sc_or_end32
sc_or_end32:
  %t136 = load i1, i1* %t103
  br i1 %t136, label %sc_or_end34, label %sc_or_rhs33
sc_or_rhs33:
  %t137 = load %nyx_string*, %nyx_string** %t71
  %t138 = getelementptr [4 x i8], [4 x i8]* @.str200, i32 0, i32 0
  %t139 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str200.c, i8* %t138, i64 3)
  %t140 = call i1 @nyx_string_equals(%nyx_string* %t137, %nyx_string* %t139)
  store i1 %t140, i1* %t102
  br label %sc_or_end34
sc_or_end34:
  %t141 = load i1, i1* %t102
  br i1 %t141, label %sc_or_end36, label %sc_or_rhs35
sc_or_rhs35:
  %t142 = load %nyx_string*, %nyx_string** %t71
  %t143 = getelementptr [5 x i8], [5 x i8]* @.str201, i32 0, i32 0
  %t144 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str201.c, i8* %t143, i64 4)
  %t145 = call i1 @nyx_string_equals(%nyx_string* %t142, %nyx_string* %t144)
  store i1 %t145, i1* %t101
  br label %sc_or_end36
sc_or_end36:
  %t146 = load i1, i1* %t101
  br i1 %t146, label %sc_or_end38, label %sc_or_rhs37
sc_or_rhs37:
  %t147 = load %nyx_string*, %nyx_string** %t71
  %t148 = getelementptr [5 x i8], [5 x i8]* @.str202, i32 0, i32 0
  %t149 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str202.c, i8* %t148, i64 4)
  %t150 = call i1 @nyx_string_equals(%nyx_string* %t147, %nyx_string* %t149)
  store i1 %t150, i1* %t100
  br label %sc_or_end38
sc_or_end38:
  %t151 = load i1, i1* %t100
  br i1 %t151, label %sc_or_end40, label %sc_or_rhs39
sc_or_rhs39:
  %t152 = load %nyx_string*, %nyx_string** %t71
  %t153 = getelementptr [11 x i8], [11 x i8]* @.str203, i32 0, i32 0
  %t154 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str203.c, i8* %t153, i64 10)
  %t155 = call i1 @nyx_string_equals(%nyx_string* %t152, %nyx_string* %t154)
  store i1 %t155, i1* %t99
  br label %sc_or_end40
sc_or_end40:
  %t156 = load i1, i1* %t99
  br i1 %t156, label %sc_or_end42, label %sc_or_rhs41
sc_or_rhs41:
  %t157 = load %nyx_string*, %nyx_string** %t71
  %t158 = getelementptr [12 x i8], [12 x i8]* @.str204, i32 0, i32 0
  %t159 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str204.c, i8* %t158, i64 11)
  %t160 = call i1 @nyx_string_equals(%nyx_string* %t157, %nyx_string* %t159)
  store i1 %t160, i1* %t98
  br label %sc_or_end42
sc_or_end42:
  %t161 = load i1, i1* %t98
  br i1 %t161, label %sc_or_end44, label %sc_or_rhs43
sc_or_rhs43:
  %t162 = load %nyx_string*, %nyx_string** %t71
  %t163 = getelementptr [6 x i8], [6 x i8]* @.str205, i32 0, i32 0
  %t164 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str205.c, i8* %t163, i64 5)
  %t165 = call i1 @nyx_string_equals(%nyx_string* %t162, %nyx_string* %t164)
  store i1 %t165, i1* %t97
  br label %sc_or_end44
sc_or_end44:
  %t166 = load i1, i1* %t97
  br i1 %t166, label %sc_or_end46, label %sc_or_rhs45
sc_or_rhs45:
  %t167 = load %nyx_string*, %nyx_string** %t71
  %t168 = getelementptr [13 x i8], [13 x i8]* @.str206, i32 0, i32 0
  %t169 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str206.c, i8* %t168, i64 12)
  %t170 = call i1 @nyx_string_equals(%nyx_string* %t167, %nyx_string* %t169)
  store i1 %t170, i1* %t96
  br label %sc_or_end46
sc_or_end46:
  %t171 = load i1, i1* %t96
  br i1 %t171, label %sc_or_end48, label %sc_or_rhs47
sc_or_rhs47:
  %t172 = load %nyx_string*, %nyx_string** %t71
  %t173 = getelementptr [14 x i8], [14 x i8]* @.str207, i32 0, i32 0
  %t174 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str207.c, i8* %t173, i64 13)
  %t175 = call i1 @nyx_string_equals(%nyx_string* %t172, %nyx_string* %t174)
  store i1 %t175, i1* %t95
  br label %sc_or_end48
sc_or_end48:
  %t176 = load i1, i1* %t95
  br i1 %t176, label %sc_or_end50, label %sc_or_rhs49
sc_or_rhs49:
  %t177 = load %nyx_string*, %nyx_string** %t71
  %t178 = getelementptr [6 x i8], [6 x i8]* @.str208, i32 0, i32 0
  %t179 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str208.c, i8* %t178, i64 5)
  %t180 = call i1 @nyx_string_equals(%nyx_string* %t177, %nyx_string* %t179)
  store i1 %t180, i1* %t94
  br label %sc_or_end50
sc_or_end50:
  %t181 = load i1, i1* %t94
  br i1 %t181, label %sc_or_end52, label %sc_or_rhs51
sc_or_rhs51:
  %t182 = load %nyx_string*, %nyx_string** %t71
  %t183 = getelementptr [7 x i8], [7 x i8]* @.str209, i32 0, i32 0
  %t184 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str209.c, i8* %t183, i64 6)
  %t185 = call i1 @nyx_string_equals(%nyx_string* %t182, %nyx_string* %t184)
  store i1 %t185, i1* %t93
  br label %sc_or_end52
sc_or_end52:
  %t186 = load i1, i1* %t93
  br i1 %t186, label %sc_or_end54, label %sc_or_rhs53
sc_or_rhs53:
  %t187 = load %nyx_string*, %nyx_string** %t71
  %t188 = getelementptr [4 x i8], [4 x i8]* @.str210, i32 0, i32 0
  %t189 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str210.c, i8* %t188, i64 3)
  %t190 = call i1 @nyx_string_equals(%nyx_string* %t187, %nyx_string* %t189)
  store i1 %t190, i1* %t92
  br label %sc_or_end54
sc_or_end54:
  %t191 = load i1, i1* %t92
  %t192 = xor i1 %t191, true
  br i1 %t192, label %then55, label %else56
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
  %t193 = load i64, i64* %t33
  %t194 = add i64 %t193, 1
  store i64 %t194, i64* %t33
  br label %while_cond6
while_end8:
  %t195 = load i64, i64* %t51
  %t196 = icmp ne i64 %t195, 0
  br i1 %t196, label %then58, label %else59
then58:
  ret i1 0
else59:
  br label %merge60
merge60:
  %t197 = load i64, i64* %t33
  %t198 = load { i64, i8* }*, { i64, i8* }** %t3
  %t199 = call i64 @nyx_array_length({ i64, i8* }* %t198)
  %t200 = icmp sge i64 %t197, %t199
  br i1 %t200, label %then61, label %else62
then61:
  ret i1 0
else62:
  br label %merge63
merge63:
  %t201 = load { i64, i8* }*, { i64, i8* }** %t3
  %t202 = load i64, i64* %t33
  %t203 = getelementptr [6 x i8], [6 x i8]* @.slotT211, i32 0, i32 0
  %t204 = call i64 @nyx_slot_as_value_checked({ i64, i8* }* %t201, i64 %t202, i8* %t203)
  %t205 = inttoptr i64 %t204 to %Token*
  %t206 = load %Token, %Token* %t205
  store %Token %t206, %Token* %t207
  %t208 = load %Token, %Token* %t207
  %t209 = call %nyx_string* @get_token_type(%Token %t208)
  store %nyx_string* %t209, %nyx_string** %t210
  %t211 = load %nyx_string*, %nyx_string** %t210
  %t212 = getelementptr [11 x i8], [11 x i8]* @.str212, i32 0, i32 0
  %t213 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str212.c, i8* %t212, i64 10)
  %t214 = call i1 @nyx_string_equals(%nyx_string* %t211, %nyx_string* %t213)
  br i1 %t214, label %then64, label %else65
then64:
  ret i1 1
else65:
  br label %merge66
merge66:
  %t215 = load %nyx_string*, %nyx_string** %t210
  %t216 = getelementptr [11 x i8], [11 x i8]* @.str213, i32 0, i32 0
  %t217 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str213.c, i8* %t216, i64 10)
  %t218 = call i1 @nyx_string_equals(%nyx_string* %t215, %nyx_string* %t217)
  br i1 %t218, label %then67, label %else68
then67:
  ret i1 1
else68:
  br label %merge69
merge69:
  %t219 = load %nyx_string*, %nyx_string** %t210
  %t220 = getelementptr [4 x i8], [4 x i8]* @.str214, i32 0, i32 0
  %t221 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str214.c, i8* %t220, i64 3)
  %t222 = call i1 @nyx_string_equals(%nyx_string* %t219, %nyx_string* %t221)
  br i1 %t222, label %then70, label %else71
then70:
  ret i1 1
else71:
  br label %merge72
merge72:
  ret i1 0
}

define internal { i64, i8* }* @parse__parse_postfix(%SharedEnv_parse* %env.param) {
  %t32 = alloca { i64, i8* }*
  %t33 = alloca i1
  %t34 = alloca i64
  %t36 = alloca i64
  %t45 = alloca i1
  %t59 = alloca { i64, i8* }*
  %t63 = alloca i1
  %t66 = alloca i1
  %t105 = alloca i1
  %t116 = alloca { i64, i8* }*
  %t120 = alloca { i64, i8* }*
  %t124 = alloca { i64, i8* }*
  %t128 = alloca %nyx_string*
  %t132 = alloca { i64, i8* }*
  %t137 = alloca { i64, i8* }*
  %t138 = alloca i1
  %t159 = alloca %Token
  %t164 = alloca { i64, i8* }*
  %t183 = alloca i1
  %t192 = alloca { i64, i8* }*
  %t194 = alloca i64
  %t195 = alloca i1
  %t225 = alloca i64
  %t227 = alloca { i64, i8* }*
  %t248 = alloca %Token
  %t251 = alloca %nyx_string*
  %t263 = alloca %Token
  %t266 = alloca %nyx_string*
  %t268 = alloca { i64, i8* }*
  %t269 = alloca i1
  %t278 = alloca i1
  %t281 = alloca i1
  %t314 = alloca { i64, i8* }*
  %t315 = alloca i1
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = call { i64, i8* }* @parse__parse_primary(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t31, { i64, i8* }** %t32
  store i1 0, i1* %t33
  store i64 0, i64* %t34
  %t35 = sub i64 0, 1
  store i64 %t35, i64* %t36
  br label %while_cond0
while_cond0:
  %t37 = load i1, i1* %t33
  %t38 = xor i1 %t37, true
  br i1 %t38, label %while_body1, label %while_end2
while_body1:
  %t39 = load i64, i64* %t34
  %t40 = add i64 %t39, 1
  store i64 %t40, i64* %t34
  %t41 = load i64, i64* %t4
  %t42 = load i64, i64* %t36
  %t43 = icmp eq i64 %t41, %t42
  br i1 %t43, label %then3, label %else4
then3:
  store i1 1, i1* %t33
  br label %merge5
else4:
  br label %merge5
merge5:
  %t44 = load i64, i64* %t4
  store i64 %t44, i64* %t36
  store i1 false, i1* %t45
  %t46 = load { i64, i8* }*, { i64, i8* }** %t32
  %t47 = call i64 @nyx_array_get({ i64, i8* }* %t46, i64 0)
  %t48 = getelementptr [11 x i8], [11 x i8]* @.str215, i32 0, i32 0
  %t49 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str215.c, i8* %t48, i64 10)
  %t50 = inttoptr i64 %t47 to %nyx_string*
  %t51 = call i1 @nyx_string_equals(%nyx_string* %t50, %nyx_string* %t49)
  br i1 %t51, label %sc_and_rhs6, label %sc_and_end7
sc_and_rhs6:
  %t52 = getelementptr [5 x i8], [5 x i8]* @.str216, i32 0, i32 0
  %t53 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str216.c, i8* %t52, i64 4)
  %t54 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t53)
  store i1 %t54, i1* %t45
  br label %sc_and_end7
sc_and_end7:
  %t55 = load i1, i1* %t45
  br i1 %t55, label %then8, label %else9
then8:
  %t56 = call i1 @parse__is_generic_call_lookahead(%SharedEnv_parse* %env.param)
  br i1 %t56, label %then11, label %else12
then11:
  %t57 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t58 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t58, { i64, i8* }** %t59
  %t60 = load { i64, i8* }*, { i64, i8* }** %t59
  %t61 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %t62 = ptrtoint %nyx_string* %t61 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t60, i64 %t62, i64 2)
  store i1 0, i1* %t63
  br label %while_cond14
while_cond14:
  %t64 = load i1, i1* %t63
  %t65 = xor i1 %t64, true
  br i1 %t65, label %while_body15, label %while_end16
while_body15:
  store i1 false, i1* %t66
  %t67 = load i64, i64* %t5
  %t68 = icmp eq i64 %t67, 0
  br i1 %t68, label %sc_and_rhs17, label %sc_and_end18
sc_and_rhs17:
  %t69 = getelementptr [6 x i8], [6 x i8]* @.str217, i32 0, i32 0
  %t70 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str217.c, i8* %t69, i64 5)
  %t71 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t70)
  store i1 %t71, i1* %t66
  br label %sc_and_end18
sc_and_end18:
  %t72 = load i1, i1* %t66
  br i1 %t72, label %then19, label %else20
then19:
  %t73 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t74 = load { i64, i8* }*, { i64, i8* }** %t59
  %t75 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %t76 = ptrtoint %nyx_string* %t75 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t74, i64 %t76, i64 2)
  br label %merge21
else20:
  store i1 1, i1* %t63
  br label %merge21
merge21:
  br label %while_cond14
while_end16:
  %t77 = load i64, i64* %t5
  %t78 = icmp sgt i64 %t77, 0
  br i1 %t78, label %then22, label %else23
then22:
  %t79 = load i64, i64* %t5
  %t80 = sub i64 %t79, 1
  store i64 %t80, i64* %t5
  br label %merge24
else23:
  %t81 = getelementptr [8 x i8], [8 x i8]* @.str218, i32 0, i32 0
  %t82 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str218.c, i8* %t81, i64 7)
  %t83 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t82)
  br i1 %t83, label %then25, label %else26
then25:
  %t84 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge27
else26:
  %t85 = getelementptr [12 x i8], [12 x i8]* @.str219, i32 0, i32 0
  %t86 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str219.c, i8* %t85, i64 11)
  %t87 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t86)
  br i1 %t87, label %then28, label %else29
then28:
  %t88 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t89 = load i64, i64* %t5
  %t90 = add i64 %t89, 1
  store i64 %t90, i64* %t5
  br label %merge30
else29:
  %t91 = getelementptr [8 x i8], [8 x i8]* @.str220, i32 0, i32 0
  %t92 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str220.c, i8* %t91, i64 7)
  %t93 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t92)
  br label %merge30
merge30:
  br label %merge27
merge27:
  br label %merge24
merge24:
  %t94 = getelementptr [13 x i8], [13 x i8]* @.str221, i32 0, i32 0
  %t95 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str221.c, i8* %t94, i64 12)
  %t96 = call { i64, i8* }* @nyx_array_new_ptr()
  %t97 = load { i64, i8* }*, { i64, i8* }** %t32
  %t98 = ptrtoint { i64, i8* }* %t97 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t96, i64 %t98, i64 5)
  %t99 = load { i64, i8* }*, { i64, i8* }** %t59
  %t100 = ptrtoint { i64, i8* }* %t99 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t96, i64 %t100, i64 5)
  %t101 = call { i64, i8* }* @make_astnode(%nyx_string* %t95, { i64, i8* }* %t96)
  store { i64, i8* }* %t101, { i64, i8* }** %t32
  %t102 = getelementptr [11 x i8], [11 x i8]* @.str222, i32 0, i32 0
  %t103 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str222.c, i8* %t102, i64 10)
  %t104 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t103)
  br i1 %t104, label %then31, label %else32
then31:
  store i1 false, i1* %t105
  %t106 = getelementptr [11 x i8], [11 x i8]* @.str223, i32 0, i32 0
  %t107 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str223.c, i8* %t106, i64 10)
  %t108 = call i1 @parse__check_at(%SharedEnv_parse* %env.param, i64 1, %nyx_string* %t107)
  br i1 %t108, label %sc_and_rhs34, label %sc_and_end35
sc_and_rhs34:
  %t109 = getelementptr [6 x i8], [6 x i8]* @.str224, i32 0, i32 0
  %t110 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str224.c, i8* %t109, i64 5)
  %t111 = call i1 @parse__check_at(%SharedEnv_parse* %env.param, i64 2, %nyx_string* %t110)
  store i1 %t111, i1* %t105
  br label %sc_and_end35
sc_and_end35:
  %t112 = load i1, i1* %t105
  br i1 %t112, label %then36, label %else37
then36:
  %t113 = load { i64, i8* }*, { i64, i8* }** %t32
  %t114 = call i64 @nyx_array_get({ i64, i8* }* %t113, i64 1)
  %t115 = inttoptr i64 %t114 to { i64, i8* }*
  store { i64, i8* }* %t115, { i64, i8* }** %t116
  %t117 = load { i64, i8* }*, { i64, i8* }** %t116
  %t118 = call i64 @nyx_array_get({ i64, i8* }* %t117, i64 0)
  %t119 = inttoptr i64 %t118 to { i64, i8* }*
  store { i64, i8* }* %t119, { i64, i8* }** %t120
  %t121 = load { i64, i8* }*, { i64, i8* }** %t120
  %t122 = call i64 @nyx_array_get({ i64, i8* }* %t121, i64 1)
  %t123 = inttoptr i64 %t122 to { i64, i8* }*
  store { i64, i8* }* %t123, { i64, i8* }** %t124
  %t125 = load { i64, i8* }*, { i64, i8* }** %t124
  %t126 = call i64 @nyx_array_get_checked({ i64, i8* }* %t125, i64 0, i64 2)
  %t127 = inttoptr i64 %t126 to %nyx_string*
  store %nyx_string* %t127, %nyx_string** %t128
  %t129 = load { i64, i8* }*, { i64, i8* }** %t116
  %t130 = call i64 @nyx_array_get({ i64, i8* }* %t129, i64 1)
  %t131 = inttoptr i64 %t130 to { i64, i8* }*
  store { i64, i8* }* %t131, { i64, i8* }** %t132
  %t133 = getelementptr [11 x i8], [11 x i8]* @.str225, i32 0, i32 0
  %t134 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str225.c, i8* %t133, i64 10)
  %t135 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t134)
  %t136 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t136, { i64, i8* }** %t137
  store i1 0, i1* %t138
  br label %while_cond39
while_cond39:
  %t139 = load i1, i1* %t138
  %t140 = xor i1 %t139, true
  br i1 %t140, label %while_body40, label %while_end41
while_body40:
  %t141 = getelementptr [12 x i8], [12 x i8]* @.str226, i32 0, i32 0
  %t142 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str226.c, i8* %t141, i64 11)
  %t143 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t142)
  br i1 %t143, label %then42, label %else43
then42:
  %t144 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %t138
  br label %merge44
else43:
  %t145 = load { i64, i8* }*, { i64, i8* }** %t137
  %t146 = call i64 @nyx_array_length({ i64, i8* }* %t145)
  %t147 = icmp sgt i64 %t146, 0
  br i1 %t147, label %then45, label %else46
then45:
  %t148 = getelementptr [6 x i8], [6 x i8]* @.str227, i32 0, i32 0
  %t149 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str227.c, i8* %t148, i64 5)
  %t150 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t149)
  br i1 %t150, label %then48, label %else49
then48:
  %t151 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge50
else49:
  br label %merge50
merge50:
  br label %merge47
else46:
  br label %merge47
merge47:
  %t152 = getelementptr [12 x i8], [12 x i8]* @.str228, i32 0, i32 0
  %t153 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str228.c, i8* %t152, i64 11)
  %t154 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t153)
  br i1 %t154, label %then51, label %else52
then51:
  %t155 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %t138
  br label %merge53
else52:
  %t156 = getelementptr [11 x i8], [11 x i8]* @.str229, i32 0, i32 0
  %t157 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str229.c, i8* %t156, i64 10)
  %t158 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t157)
  store %Token %t158, %Token* %t159
  %t160 = getelementptr [6 x i8], [6 x i8]* @.str230, i32 0, i32 0
  %t161 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str230.c, i8* %t160, i64 5)
  %t162 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t161)
  %t163 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t163, { i64, i8* }** %t164
  %t165 = load { i64, i8* }*, { i64, i8* }** %t137
  %t166 = call { i64, i8* }* @nyx_array_new_ptr()
  %t167 = load %Token, %Token* %t159
  %t168 = call %nyx_string* @get_token_value(%Token %t167)
  %t169 = ptrtoint %nyx_string* %t168 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t166, i64 %t169, i64 2)
  %t170 = load { i64, i8* }*, { i64, i8* }** %t164
  %t171 = ptrtoint { i64, i8* }* %t170 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t166, i64 %t171, i64 5)
  %t172 = ptrtoint { i64, i8* }* %t166 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t165, i64 %t172, i64 5)
  br label %merge53
merge53:
  br label %merge44
merge44:
  br label %while_cond39
while_end41:
  %t173 = getelementptr [12 x i8], [12 x i8]* @.str231, i32 0, i32 0
  %t174 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str231.c, i8* %t173, i64 11)
  %t175 = call { i64, i8* }* @nyx_array_new_ptr()
  %t176 = load %nyx_string*, %nyx_string** %t128
  %t177 = ptrtoint %nyx_string* %t176 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t175, i64 %t177, i64 2)
  %t178 = load { i64, i8* }*, { i64, i8* }** %t137
  %t179 = ptrtoint { i64, i8* }* %t178 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t175, i64 %t179, i64 5)
  %t180 = load { i64, i8* }*, { i64, i8* }** %t132
  %t181 = ptrtoint { i64, i8* }* %t180 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t175, i64 %t181, i64 5)
  %t182 = call { i64, i8* }* @make_astnode(%nyx_string* %t174, { i64, i8* }* %t175)
  store { i64, i8* }* %t182, { i64, i8* }** %t32
  br label %merge38
else37:
  br label %merge38
merge38:
  br label %merge33
else32:
  br label %merge33
merge33:
  br label %merge13
else12:
  br label %merge13
merge13:
  br label %merge10
else9:
  br label %merge10
merge10:
  store i1 false, i1* %t183
  %t184 = getelementptr [11 x i8], [11 x i8]* @.str232, i32 0, i32 0
  %t185 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str232.c, i8* %t184, i64 10)
  %t186 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t185)
  br i1 %t186, label %sc_and_rhs54, label %sc_and_end55
sc_and_rhs54:
  %t187 = call i1 @parse__is_on_new_line(%SharedEnv_parse* %env.param)
  %t188 = xor i1 %t187, true
  store i1 %t188, i1* %t183
  br label %sc_and_end55
sc_and_end55:
  %t189 = load i1, i1* %t183
  br i1 %t189, label %then56, label %else57
then56:
  %t190 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t191 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t191, { i64, i8* }** %t192
  %t193 = load i64, i64* %t6
  store i64 %t193, i64* %t194
  store i64 0, i64* %t6
  store i1 0, i1* %t195
  br label %while_cond59
while_cond59:
  %t196 = load i1, i1* %t195
  %t197 = xor i1 %t196, true
  br i1 %t197, label %while_body60, label %while_end61
while_body60:
  %t198 = getelementptr [12 x i8], [12 x i8]* @.str233, i32 0, i32 0
  %t199 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str233.c, i8* %t198, i64 11)
  %t200 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t199)
  br i1 %t200, label %then62, label %else63
then62:
  %t201 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %t195
  br label %merge64
else63:
  %t202 = load { i64, i8* }*, { i64, i8* }** %t192
  %t203 = call i64 @nyx_array_length({ i64, i8* }* %t202)
  %t204 = icmp sgt i64 %t203, 0
  br i1 %t204, label %then65, label %else66
then65:
  %t205 = getelementptr [6 x i8], [6 x i8]* @.str234, i32 0, i32 0
  %t206 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str234.c, i8* %t205, i64 5)
  %t207 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t206)
  br label %merge67
else66:
  br label %merge67
merge67:
  %t208 = load { i64, i8* }*, { i64, i8* }** %t192
  %t209 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %t210 = ptrtoint { i64, i8* }* %t209 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t208, i64 %t210, i64 5)
  br label %merge64
merge64:
  br label %while_cond59
while_end61:
  %t211 = load i64, i64* %t194
  store i64 %t211, i64* %t6
  %t212 = getelementptr [5 x i8], [5 x i8]* @.str235, i32 0, i32 0
  %t213 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str235.c, i8* %t212, i64 4)
  %t214 = call { i64, i8* }* @nyx_array_new_ptr()
  %t215 = load { i64, i8* }*, { i64, i8* }** %t32
  %t216 = ptrtoint { i64, i8* }* %t215 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t214, i64 %t216, i64 5)
  %t217 = load { i64, i8* }*, { i64, i8* }** %t192
  %t218 = ptrtoint { i64, i8* }* %t217 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t214, i64 %t218, i64 5)
  %t219 = call { i64, i8* }* @make_astnode(%nyx_string* %t213, { i64, i8* }* %t214)
  store { i64, i8* }* %t219, { i64, i8* }** %t32
  br label %merge58
else57:
  %t220 = getelementptr [13 x i8], [13 x i8]* @.str236, i32 0, i32 0
  %t221 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str236.c, i8* %t220, i64 12)
  %t222 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t221)
  br i1 %t222, label %then68, label %else69
then68:
  %t223 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t224 = load i64, i64* %t6
  store i64 %t224, i64* %t225
  store i64 0, i64* %t6
  %t226 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t226, { i64, i8* }** %t227
  %t228 = load i64, i64* %t225
  store i64 %t228, i64* %t6
  %t229 = getelementptr [14 x i8], [14 x i8]* @.str237, i32 0, i32 0
  %t230 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str237.c, i8* %t229, i64 13)
  %t231 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t230)
  %t232 = getelementptr [6 x i8], [6 x i8]* @.str238, i32 0, i32 0
  %t233 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str238.c, i8* %t232, i64 5)
  %t234 = call { i64, i8* }* @nyx_array_new_ptr()
  %t235 = load { i64, i8* }*, { i64, i8* }** %t32
  %t236 = ptrtoint { i64, i8* }* %t235 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t234, i64 %t236, i64 5)
  %t237 = load { i64, i8* }*, { i64, i8* }** %t227
  %t238 = ptrtoint { i64, i8* }* %t237 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t234, i64 %t238, i64 5)
  %t239 = call { i64, i8* }* @make_astnode(%nyx_string* %t233, { i64, i8* }* %t234)
  store { i64, i8* }* %t239, { i64, i8* }** %t32
  br label %merge70
else69:
  %t240 = getelementptr [4 x i8], [4 x i8]* @.str239, i32 0, i32 0
  %t241 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str239.c, i8* %t240, i64 3)
  %t242 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t241)
  br i1 %t242, label %then71, label %else72
then71:
  %t243 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t244 = getelementptr [7 x i8], [7 x i8]* @.str240, i32 0, i32 0
  %t245 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str240.c, i8* %t244, i64 6)
  %t246 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t245)
  br i1 %t246, label %then74, label %else75
then74:
  %t247 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store %Token %t247, %Token* %t248
  %t249 = load %Token, %Token* %t248
  %t250 = call %nyx_string* @get_token_value(%Token %t249)
  store %nyx_string* %t250, %nyx_string** %t251
  %t252 = getelementptr [12 x i8], [12 x i8]* @.str241, i32 0, i32 0
  %t253 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str241.c, i8* %t252, i64 11)
  %t254 = call { i64, i8* }* @nyx_array_new_ptr()
  %t255 = load { i64, i8* }*, { i64, i8* }** %t32
  %t256 = ptrtoint { i64, i8* }* %t255 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t254, i64 %t256, i64 5)
  %t257 = load %nyx_string*, %nyx_string** %t251
  %t258 = ptrtoint %nyx_string* %t257 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t254, i64 %t258, i64 2)
  %t259 = call { i64, i8* }* @make_astnode(%nyx_string* %t253, { i64, i8* }* %t254)
  store { i64, i8* }* %t259, { i64, i8* }** %t32
  br label %merge76
else75:
  %t260 = getelementptr [11 x i8], [11 x i8]* @.str242, i32 0, i32 0
  %t261 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str242.c, i8* %t260, i64 10)
  %t262 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t261)
  store %Token %t262, %Token* %t263
  %t264 = load %Token, %Token* %t263
  %t265 = call %nyx_string* @get_token_value(%Token %t264)
  store %nyx_string* %t265, %nyx_string** %t266
  %t267 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t267, { i64, i8* }** %t268
  store i1 0, i1* %t269
  %t270 = getelementptr [5 x i8], [5 x i8]* @.str243, i32 0, i32 0
  %t271 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str243.c, i8* %t270, i64 4)
  %t272 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t271)
  br i1 %t272, label %then77, label %else78
then77:
  %t273 = call i1 @parse__is_generic_call_lookahead(%SharedEnv_parse* %env.param)
  br i1 %t273, label %then80, label %else81
then80:
  %t274 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t275 = load { i64, i8* }*, { i64, i8* }** %t268
  %t276 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %t277 = ptrtoint %nyx_string* %t276 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t275, i64 %t277, i64 2)
  store i1 0, i1* %t278
  br label %while_cond83
while_cond83:
  %t279 = load i1, i1* %t278
  %t280 = xor i1 %t279, true
  br i1 %t280, label %while_body84, label %while_end85
while_body84:
  store i1 false, i1* %t281
  %t282 = load i64, i64* %t5
  %t283 = icmp eq i64 %t282, 0
  br i1 %t283, label %sc_and_rhs86, label %sc_and_end87
sc_and_rhs86:
  %t284 = getelementptr [6 x i8], [6 x i8]* @.str244, i32 0, i32 0
  %t285 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str244.c, i8* %t284, i64 5)
  %t286 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t285)
  store i1 %t286, i1* %t281
  br label %sc_and_end87
sc_and_end87:
  %t287 = load i1, i1* %t281
  br i1 %t287, label %then88, label %else89
then88:
  %t288 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t289 = load { i64, i8* }*, { i64, i8* }** %t268
  %t290 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %t291 = ptrtoint %nyx_string* %t290 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t289, i64 %t291, i64 2)
  br label %merge90
else89:
  store i1 1, i1* %t278
  br label %merge90
merge90:
  br label %while_cond83
while_end85:
  %t292 = load i64, i64* %t5
  %t293 = icmp sgt i64 %t292, 0
  br i1 %t293, label %then91, label %else92
then91:
  %t294 = load i64, i64* %t5
  %t295 = sub i64 %t294, 1
  store i64 %t295, i64* %t5
  br label %merge93
else92:
  %t296 = getelementptr [8 x i8], [8 x i8]* @.str245, i32 0, i32 0
  %t297 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str245.c, i8* %t296, i64 7)
  %t298 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t297)
  br i1 %t298, label %then94, label %else95
then94:
  %t299 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge96
else95:
  %t300 = getelementptr [12 x i8], [12 x i8]* @.str246, i32 0, i32 0
  %t301 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str246.c, i8* %t300, i64 11)
  %t302 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t301)
  br i1 %t302, label %then97, label %else98
then97:
  %t303 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t304 = load i64, i64* %t5
  %t305 = add i64 %t304, 1
  store i64 %t305, i64* %t5
  br label %merge99
else98:
  %t306 = getelementptr [8 x i8], [8 x i8]* @.str247, i32 0, i32 0
  %t307 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str247.c, i8* %t306, i64 7)
  %t308 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t307)
  br label %merge99
merge99:
  br label %merge96
merge96:
  br label %merge93
merge93:
  store i1 1, i1* %t269
  br label %merge82
else81:
  br label %merge82
merge82:
  br label %merge79
else78:
  br label %merge79
merge79:
  %t309 = getelementptr [11 x i8], [11 x i8]* @.str248, i32 0, i32 0
  %t310 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str248.c, i8* %t309, i64 10)
  %t311 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t310)
  br i1 %t311, label %then100, label %else101
then100:
  %t312 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t313 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t313, { i64, i8* }** %t314
  store i1 0, i1* %t315
  br label %while_cond103
while_cond103:
  %t316 = load i1, i1* %t315
  %t317 = xor i1 %t316, true
  br i1 %t317, label %while_body104, label %while_end105
while_body104:
  %t318 = getelementptr [12 x i8], [12 x i8]* @.str249, i32 0, i32 0
  %t319 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str249.c, i8* %t318, i64 11)
  %t320 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t319)
  br i1 %t320, label %then106, label %else107
then106:
  %t321 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %t315
  br label %merge108
else107:
  %t322 = load { i64, i8* }*, { i64, i8* }** %t314
  %t323 = call i64 @nyx_array_length({ i64, i8* }* %t322)
  %t324 = icmp sgt i64 %t323, 0
  br i1 %t324, label %then109, label %else110
then109:
  %t325 = getelementptr [6 x i8], [6 x i8]* @.str250, i32 0, i32 0
  %t326 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str250.c, i8* %t325, i64 5)
  %t327 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t326)
  br label %merge111
else110:
  br label %merge111
merge111:
  %t328 = load { i64, i8* }*, { i64, i8* }** %t314
  %t329 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %t330 = ptrtoint { i64, i8* }* %t329 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t328, i64 %t330, i64 5)
  br label %merge108
merge108:
  br label %while_cond103
while_end105:
  %t331 = load i1, i1* %t269
  br i1 %t331, label %then112, label %else113
then112:
  %t332 = getelementptr [12 x i8], [12 x i8]* @.str251, i32 0, i32 0
  %t333 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str251.c, i8* %t332, i64 11)
  %t334 = call { i64, i8* }* @nyx_array_new_ptr()
  %t335 = load { i64, i8* }*, { i64, i8* }** %t32
  %t336 = ptrtoint { i64, i8* }* %t335 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t334, i64 %t336, i64 5)
  %t337 = load %nyx_string*, %nyx_string** %t266
  %t338 = ptrtoint %nyx_string* %t337 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t334, i64 %t338, i64 2)
  %t339 = load { i64, i8* }*, { i64, i8* }** %t314
  %t340 = ptrtoint { i64, i8* }* %t339 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t334, i64 %t340, i64 5)
  %t341 = load { i64, i8* }*, { i64, i8* }** %t268
  %t342 = ptrtoint { i64, i8* }* %t341 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t334, i64 %t342, i64 5)
  %t343 = call { i64, i8* }* @make_astnode(%nyx_string* %t333, { i64, i8* }* %t334)
  store { i64, i8* }* %t343, { i64, i8* }** %t32
  br label %merge114
else113:
  %t344 = getelementptr [12 x i8], [12 x i8]* @.str252, i32 0, i32 0
  %t345 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str252.c, i8* %t344, i64 11)
  %t346 = call { i64, i8* }* @nyx_array_new_ptr()
  %t347 = load { i64, i8* }*, { i64, i8* }** %t32
  %t348 = ptrtoint { i64, i8* }* %t347 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t346, i64 %t348, i64 5)
  %t349 = load %nyx_string*, %nyx_string** %t266
  %t350 = ptrtoint %nyx_string* %t349 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t346, i64 %t350, i64 2)
  %t351 = load { i64, i8* }*, { i64, i8* }** %t314
  %t352 = ptrtoint { i64, i8* }* %t351 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t346, i64 %t352, i64 5)
  %t353 = call { i64, i8* }* @make_astnode(%nyx_string* %t345, { i64, i8* }* %t346)
  store { i64, i8* }* %t353, { i64, i8* }** %t32
  br label %merge114
merge114:
  br label %merge102
else101:
  %t354 = load i1, i1* %t269
  br i1 %t354, label %then115, label %else116
then115:
  %t355 = getelementptr [11 x i8], [11 x i8]* @.str253, i32 0, i32 0
  %t356 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str253.c, i8* %t355, i64 10)
  %t357 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t356)
  br label %merge117
else116:
  br label %merge117
merge117:
  %t358 = getelementptr [13 x i8], [13 x i8]* @.str254, i32 0, i32 0
  %t359 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str254.c, i8* %t358, i64 12)
  %t360 = call { i64, i8* }* @nyx_array_new_ptr()
  %t361 = load { i64, i8* }*, { i64, i8* }** %t32
  %t362 = ptrtoint { i64, i8* }* %t361 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t360, i64 %t362, i64 5)
  %t363 = load %nyx_string*, %nyx_string** %t266
  %t364 = ptrtoint %nyx_string* %t363 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t360, i64 %t364, i64 2)
  %t365 = call { i64, i8* }* @make_astnode(%nyx_string* %t359, { i64, i8* }* %t360)
  store { i64, i8* }* %t365, { i64, i8* }** %t32
  br label %merge102
merge102:
  br label %merge76
merge76:
  br label %merge73
else72:
  %t366 = getelementptr [9 x i8], [9 x i8]* @.str255, i32 0, i32 0
  %t367 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str255.c, i8* %t366, i64 8)
  %t368 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t367)
  br i1 %t368, label %then118, label %else119
then118:
  %t369 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t370 = getelementptr [7 x i8], [7 x i8]* @.str256, i32 0, i32 0
  %t371 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str256.c, i8* %t370, i64 6)
  %t372 = call { i64, i8* }* @nyx_array_new_ptr()
  %t373 = load { i64, i8* }*, { i64, i8* }** %t32
  %t374 = ptrtoint { i64, i8* }* %t373 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t372, i64 %t374, i64 5)
  %t375 = call { i64, i8* }* @make_astnode(%nyx_string* %t371, { i64, i8* }* %t372)
  store { i64, i8* }* %t375, { i64, i8* }** %t32
  br label %merge120
else119:
  store i1 1, i1* %t33
  br label %merge120
merge120:
  br label %merge73
merge73:
  br label %merge70
merge70:
  br label %merge58
merge58:
  br label %while_cond0
while_end2:
  %t376 = load { i64, i8* }*, { i64, i8* }** %t32
  ret { i64, i8* }* %t376
}

define internal { i64, i8* }* @parse__parse_primary(%SharedEnv_parse* %env.param) {
  %t35 = alloca %Token
  %t47 = alloca %Token
  %t59 = alloca %Token
  %t97 = alloca %nyx_string*
  %t115 = alloca %nyx_string*
  %t131 = alloca %nyx_string*
  %t136 = alloca %Token
  %t139 = alloca %nyx_string*
  %t153 = alloca %Token
  %t156 = alloca %nyx_string*
  %t162 = alloca { i64, i8* }*
  %t163 = alloca i1
  %t172 = alloca %Token
  %t175 = alloca %nyx_string*
  %t182 = alloca %Token
  %t185 = alloca %nyx_string*
  %t205 = alloca { i64, i8* }*
  %t206 = alloca i1
  %t215 = alloca %Token
  %t218 = alloca %nyx_string*
  %t223 = alloca { i64, i8* }*
  %t243 = alloca { i64, i8* }*
  %t244 = alloca i1
  %t253 = alloca %Token
  %t280 = alloca { i64, i8* }*
  %t282 = alloca { i64, i8* }*
  %t284 = alloca { i64, i8* }*
  %t285 = alloca i1
  %t296 = alloca %Token
  %t299 = alloca %nyx_string*
  %t311 = alloca %Token
  %t330 = alloca %Token
  %t333 = alloca %nyx_string*
  %t338 = alloca { i64, i8* }*
  %t357 = alloca i1
  %t363 = alloca %Token
  %t394 = alloca %Token
  %t399 = alloca { i64, i8* }*
  %t411 = alloca { i64, i8* }*
  %t432 = alloca %Token
  %t435 = alloca %nyx_string*
  %t439 = alloca i64
  %t448 = alloca %nyx_string*
  %t456 = alloca { i64, i8* }*
  %t463 = alloca i1
  %t464 = alloca i64
  %t473 = alloca %nyx_string*
  %t482 = alloca i1
  %t489 = alloca i1
  %t523 = alloca i64
  %t525 = alloca { i64, i8* }*
  %t532 = alloca { i64, i8* }*
  %t561 = alloca i64
  %t571 = alloca %nyx_string*
  %t576 = alloca { i64, i8* }*
  %t577 = alloca i1
  %t593 = alloca %Token
  %t596 = alloca %nyx_string*
  %t599 = alloca %nyx_string*
  %t614 = alloca %nyx_string*
  %t621 = alloca { i64, i8* }*
  %t636 = alloca { i64, i8* }*
  %t649 = alloca i1
  %t653 = alloca i1
  %t682 = alloca %Token
  %t685 = alloca %nyx_string*
  %t688 = alloca %nyx_string*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = getelementptr [7 x i8], [7 x i8]* @.str257, i32 0, i32 0
  %t32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str257.c, i8* %t31, i64 6)
  %t33 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t32)
  br i1 %t33, label %then0, label %else1
then0:
  %t34 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store %Token %t34, %Token* %t35
  %t36 = getelementptr [7 x i8], [7 x i8]* @.str258, i32 0, i32 0
  %t37 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str258.c, i8* %t36, i64 6)
  %t38 = call { i64, i8* }* @nyx_array_new_ptr()
  %t39 = load %Token, %Token* %t35
  %t40 = call %nyx_string* @get_token_value(%Token %t39)
  %t41 = ptrtoint %nyx_string* %t40 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t38, i64 %t41, i64 2)
  %t42 = call { i64, i8* }* @make_astnode(%nyx_string* %t37, { i64, i8* }* %t38)
  ret { i64, i8* }* %t42
else1:
  br label %merge2
merge2:
  %t43 = getelementptr [7 x i8], [7 x i8]* @.str259, i32 0, i32 0
  %t44 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str259.c, i8* %t43, i64 6)
  %t45 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t44)
  br i1 %t45, label %then3, label %else4
then3:
  %t46 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store %Token %t46, %Token* %t47
  %t48 = getelementptr [7 x i8], [7 x i8]* @.str260, i32 0, i32 0
  %t49 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str260.c, i8* %t48, i64 6)
  %t50 = call { i64, i8* }* @nyx_array_new_ptr()
  %t51 = load %Token, %Token* %t47
  %t52 = call %nyx_string* @get_token_value(%Token %t51)
  %t53 = ptrtoint %nyx_string* %t52 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t50, i64 %t53, i64 2)
  %t54 = call { i64, i8* }* @make_astnode(%nyx_string* %t49, { i64, i8* }* %t50)
  ret { i64, i8* }* %t54
else4:
  br label %merge5
merge5:
  %t55 = getelementptr [5 x i8], [5 x i8]* @.str261, i32 0, i32 0
  %t56 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str261.c, i8* %t55, i64 4)
  %t57 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t56)
  br i1 %t57, label %then6, label %else7
then6:
  %t58 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store %Token %t58, %Token* %t59
  %t60 = getelementptr [5 x i8], [5 x i8]* @.str262, i32 0, i32 0
  %t61 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str262.c, i8* %t60, i64 4)
  %t62 = call { i64, i8* }* @nyx_array_new_ptr()
  %t63 = load %Token, %Token* %t59
  %t64 = call %nyx_string* @get_token_value(%Token %t63)
  %t65 = ptrtoint %nyx_string* %t64 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t62, i64 %t65, i64 2)
  %t66 = call { i64, i8* }* @make_astnode(%nyx_string* %t61, { i64, i8* }* %t62)
  ret { i64, i8* }* %t66
else7:
  br label %merge8
merge8:
  %t67 = getelementptr [5 x i8], [5 x i8]* @.str263, i32 0, i32 0
  %t68 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str263.c, i8* %t67, i64 4)
  %t69 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t68)
  br i1 %t69, label %then9, label %else10
then9:
  %t70 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t71 = getelementptr [5 x i8], [5 x i8]* @.str264, i32 0, i32 0
  %t72 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str264.c, i8* %t71, i64 4)
  %t73 = call { i64, i8* }* @nyx_array_new_ptr()
  %t74 = getelementptr [5 x i8], [5 x i8]* @.str265, i32 0, i32 0
  %t75 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str265.c, i8* %t74, i64 4)
  %t76 = ptrtoint %nyx_string* %t75 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t73, i64 %t76, i64 2)
  %t77 = call { i64, i8* }* @make_astnode(%nyx_string* %t72, { i64, i8* }* %t73)
  ret { i64, i8* }* %t77
else10:
  br label %merge11
merge11:
  %t78 = getelementptr [6 x i8], [6 x i8]* @.str266, i32 0, i32 0
  %t79 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str266.c, i8* %t78, i64 5)
  %t80 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t79)
  br i1 %t80, label %then12, label %else13
then12:
  %t81 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t82 = getelementptr [5 x i8], [5 x i8]* @.str267, i32 0, i32 0
  %t83 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str267.c, i8* %t82, i64 4)
  %t84 = call { i64, i8* }* @nyx_array_new_ptr()
  %t85 = getelementptr [6 x i8], [6 x i8]* @.str268, i32 0, i32 0
  %t86 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str268.c, i8* %t85, i64 5)
  %t87 = ptrtoint %nyx_string* %t86 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t84, i64 %t87, i64 2)
  %t88 = call { i64, i8* }* @make_astnode(%nyx_string* %t83, { i64, i8* }* %t84)
  ret { i64, i8* }* %t88
else13:
  br label %merge14
merge14:
  %t89 = getelementptr [7 x i8], [7 x i8]* @.str269, i32 0, i32 0
  %t90 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str269.c, i8* %t89, i64 6)
  %t91 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t90)
  br i1 %t91, label %then15, label %else16
then15:
  %t92 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t93 = getelementptr [11 x i8], [11 x i8]* @.str270, i32 0, i32 0
  %t94 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str270.c, i8* %t93, i64 10)
  %t95 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t94)
  %t96 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %t96, %nyx_string** %t97
  %t98 = getelementptr [12 x i8], [12 x i8]* @.str271, i32 0, i32 0
  %t99 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str271.c, i8* %t98, i64 11)
  %t100 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t99)
  %t101 = getelementptr [7 x i8], [7 x i8]* @.str272, i32 0, i32 0
  %t102 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str272.c, i8* %t101, i64 6)
  %t103 = call { i64, i8* }* @nyx_array_new_ptr()
  %t104 = load %nyx_string*, %nyx_string** %t97
  %t105 = ptrtoint %nyx_string* %t104 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t103, i64 %t105, i64 2)
  %t106 = call { i64, i8* }* @make_astnode(%nyx_string* %t102, { i64, i8* }* %t103)
  ret { i64, i8* }* %t106
else16:
  br label %merge17
merge17:
  %t107 = getelementptr [8 x i8], [8 x i8]* @.str273, i32 0, i32 0
  %t108 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str273.c, i8* %t107, i64 7)
  %t109 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t108)
  br i1 %t109, label %then18, label %else19
then18:
  %t110 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t111 = getelementptr [11 x i8], [11 x i8]* @.str274, i32 0, i32 0
  %t112 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str274.c, i8* %t111, i64 10)
  %t113 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t112)
  %t114 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %t114, %nyx_string** %t115
  %t116 = getelementptr [12 x i8], [12 x i8]* @.str275, i32 0, i32 0
  %t117 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str275.c, i8* %t116, i64 11)
  %t118 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t117)
  %t119 = getelementptr [8 x i8], [8 x i8]* @.str276, i32 0, i32 0
  %t120 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str276.c, i8* %t119, i64 7)
  %t121 = call { i64, i8* }* @nyx_array_new_ptr()
  %t122 = load %nyx_string*, %nyx_string** %t115
  %t123 = ptrtoint %nyx_string* %t122 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t121, i64 %t123, i64 2)
  %t124 = call { i64, i8* }* @make_astnode(%nyx_string* %t120, { i64, i8* }* %t121)
  ret { i64, i8* }* %t124
else19:
  br label %merge20
merge20:
  %t125 = getelementptr [4 x i8], [4 x i8]* @.str277, i32 0, i32 0
  %t126 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str277.c, i8* %t125, i64 3)
  %t127 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t126)
  br i1 %t127, label %then21, label %else22
then21:
  %t128 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t129 = getelementptr [2 x i8], [2 x i8]* @.str278, i32 0, i32 0
  %t130 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str278.c, i8* %t129, i64 1)
  store %nyx_string* %t130, %nyx_string** %t131
  %t132 = getelementptr [11 x i8], [11 x i8]* @.str279, i32 0, i32 0
  %t133 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str279.c, i8* %t132, i64 10)
  %t134 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t133)
  br i1 %t134, label %then24, label %else25
then24:
  %t135 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  store %Token %t135, %Token* %t136
  %t137 = load %Token, %Token* %t136
  %t138 = call %nyx_string* @get_token_value(%Token %t137)
  store %nyx_string* %t138, %nyx_string** %t139
  %t140 = load %nyx_string*, %nyx_string** %t139
  %t141 = getelementptr [9 x i8], [9 x i8]* @.str280, i32 0, i32 0
  %t142 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str280.c, i8* %t141, i64 8)
  %t143 = call i1 @nyx_string_equals(%nyx_string* %t140, %nyx_string* %t142)
  br i1 %t143, label %then27, label %else28
then27:
  %t144 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t145 = getelementptr [2 x i8], [2 x i8]* @.str281, i32 0, i32 0
  %t146 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str281.c, i8* %t145, i64 1)
  store %nyx_string* %t146, %nyx_string** %t131
  br label %merge29
else28:
  br label %merge29
merge29:
  br label %merge26
else25:
  br label %merge26
merge26:
  %t147 = getelementptr [11 x i8], [11 x i8]* @.str282, i32 0, i32 0
  %t148 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str282.c, i8* %t147, i64 10)
  %t149 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t148)
  %t150 = getelementptr [7 x i8], [7 x i8]* @.str283, i32 0, i32 0
  %t151 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str283.c, i8* %t150, i64 6)
  %t152 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t151)
  store %Token %t152, %Token* %t153
  %t154 = load %Token, %Token* %t153
  %t155 = call %nyx_string* @get_token_value(%Token %t154)
  store %nyx_string* %t155, %nyx_string** %t156
  %t157 = getelementptr [6 x i8], [6 x i8]* @.str284, i32 0, i32 0
  %t158 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str284.c, i8* %t157, i64 5)
  %t159 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t158)
  br i1 %t159, label %then30, label %else31
then30:
  %t160 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t161 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t161, { i64, i8* }** %t162
  store i1 0, i1* %t163
  br label %while_cond33
while_cond33:
  %t164 = load i1, i1* %t163
  %t165 = xor i1 %t164, true
  br i1 %t165, label %while_body34, label %while_end35
while_body34:
  %t166 = getelementptr [7 x i8], [7 x i8]* @.str285, i32 0, i32 0
  %t167 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str285.c, i8* %t166, i64 6)
  %t168 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t167)
  br i1 %t168, label %then36, label %else37
then36:
  %t169 = getelementptr [7 x i8], [7 x i8]* @.str286, i32 0, i32 0
  %t170 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str286.c, i8* %t169, i64 6)
  %t171 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t170)
  store %Token %t171, %Token* %t172
  %t173 = load %Token, %Token* %t172
  %t174 = call %nyx_string* @get_token_value(%Token %t173)
  store %nyx_string* %t174, %nyx_string** %t175
  %t176 = getelementptr [11 x i8], [11 x i8]* @.str287, i32 0, i32 0
  %t177 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str287.c, i8* %t176, i64 10)
  %t178 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t177)
  %t179 = getelementptr [11 x i8], [11 x i8]* @.str288, i32 0, i32 0
  %t180 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str288.c, i8* %t179, i64 10)
  %t181 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t180)
  store %Token %t181, %Token* %t182
  %t183 = load %Token, %Token* %t182
  %t184 = call %nyx_string* @get_token_value(%Token %t183)
  store %nyx_string* %t184, %nyx_string** %t185
  %t186 = getelementptr [12 x i8], [12 x i8]* @.str289, i32 0, i32 0
  %t187 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str289.c, i8* %t186, i64 11)
  %t188 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t187)
  %t189 = load { i64, i8* }*, { i64, i8* }** %t162
  %t190 = call { i64, i8* }* @nyx_array_new_ptr()
  %t191 = load %nyx_string*, %nyx_string** %t175
  %t192 = ptrtoint %nyx_string* %t191 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t190, i64 %t192, i64 2)
  %t193 = load %nyx_string*, %nyx_string** %t185
  %t194 = ptrtoint %nyx_string* %t193 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t190, i64 %t194, i64 2)
  %t195 = ptrtoint { i64, i8* }* %t190 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t189, i64 %t195, i64 5)
  %t196 = getelementptr [6 x i8], [6 x i8]* @.str290, i32 0, i32 0
  %t197 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str290.c, i8* %t196, i64 5)
  %t198 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t197)
  br i1 %t198, label %then39, label %else40
then39:
  %t199 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge41
else40:
  br label %merge41
merge41:
  br label %merge38
else37:
  store i1 1, i1* %t163
  br label %merge38
merge38:
  br label %while_cond33
while_end35:
  %t200 = getelementptr [6 x i8], [6 x i8]* @.str291, i32 0, i32 0
  %t201 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str291.c, i8* %t200, i64 5)
  %t202 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t201)
  br i1 %t202, label %then42, label %else43
then42:
  %t203 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge44
else43:
  br label %merge44
merge44:
  %t204 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t204, { i64, i8* }** %t205
  store i1 0, i1* %t206
  br label %while_cond45
while_cond45:
  %t207 = load i1, i1* %t206
  %t208 = xor i1 %t207, true
  br i1 %t208, label %while_body46, label %while_end47
while_body46:
  %t209 = getelementptr [7 x i8], [7 x i8]* @.str292, i32 0, i32 0
  %t210 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str292.c, i8* %t209, i64 6)
  %t211 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t210)
  br i1 %t211, label %then48, label %else49
then48:
  %t212 = getelementptr [7 x i8], [7 x i8]* @.str293, i32 0, i32 0
  %t213 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str293.c, i8* %t212, i64 6)
  %t214 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t213)
  store %Token %t214, %Token* %t215
  %t216 = load %Token, %Token* %t215
  %t217 = call %nyx_string* @get_token_value(%Token %t216)
  store %nyx_string* %t217, %nyx_string** %t218
  %t219 = getelementptr [11 x i8], [11 x i8]* @.str294, i32 0, i32 0
  %t220 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str294.c, i8* %t219, i64 10)
  %t221 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t220)
  %t222 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t222, { i64, i8* }** %t223
  %t224 = getelementptr [12 x i8], [12 x i8]* @.str295, i32 0, i32 0
  %t225 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str295.c, i8* %t224, i64 11)
  %t226 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t225)
  %t227 = load { i64, i8* }*, { i64, i8* }** %t205
  %t228 = call { i64, i8* }* @nyx_array_new_ptr()
  %t229 = load %nyx_string*, %nyx_string** %t218
  %t230 = ptrtoint %nyx_string* %t229 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t228, i64 %t230, i64 2)
  %t231 = load { i64, i8* }*, { i64, i8* }** %t223
  %t232 = ptrtoint { i64, i8* }* %t231 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t228, i64 %t232, i64 5)
  %t233 = ptrtoint { i64, i8* }* %t228 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t227, i64 %t233, i64 5)
  %t234 = getelementptr [6 x i8], [6 x i8]* @.str296, i32 0, i32 0
  %t235 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str296.c, i8* %t234, i64 5)
  %t236 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t235)
  br i1 %t236, label %then51, label %else52
then51:
  %t237 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge53
else52:
  br label %merge53
merge53:
  br label %merge50
else49:
  store i1 1, i1* %t206
  br label %merge50
merge50:
  br label %while_cond45
while_end47:
  %t238 = getelementptr [6 x i8], [6 x i8]* @.str297, i32 0, i32 0
  %t239 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str297.c, i8* %t238, i64 5)
  %t240 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t239)
  br i1 %t240, label %then54, label %else55
then54:
  %t241 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge56
else55:
  br label %merge56
merge56:
  %t242 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t242, { i64, i8* }** %t243
  store i1 0, i1* %t244
  br label %while_cond57
while_cond57:
  %t245 = load i1, i1* %t244
  %t246 = xor i1 %t245, true
  br i1 %t246, label %while_body58, label %while_end59
while_body58:
  %t247 = getelementptr [7 x i8], [7 x i8]* @.str298, i32 0, i32 0
  %t248 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str298.c, i8* %t247, i64 6)
  %t249 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t248)
  br i1 %t249, label %then60, label %else61
then60:
  %t250 = getelementptr [7 x i8], [7 x i8]* @.str299, i32 0, i32 0
  %t251 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str299.c, i8* %t250, i64 6)
  %t252 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t251)
  store %Token %t252, %Token* %t253
  %t254 = load { i64, i8* }*, { i64, i8* }** %t243
  %t255 = load %Token, %Token* %t253
  %t256 = call %nyx_string* @get_token_value(%Token %t255)
  %t257 = ptrtoint %nyx_string* %t256 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t254, i64 %t257, i64 2)
  %t258 = getelementptr [6 x i8], [6 x i8]* @.str300, i32 0, i32 0
  %t259 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str300.c, i8* %t258, i64 5)
  %t260 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t259)
  br i1 %t260, label %then63, label %else64
then63:
  %t261 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge65
else64:
  br label %merge65
merge65:
  br label %merge62
else61:
  store i1 1, i1* %t244
  br label %merge62
merge62:
  br label %while_cond57
while_end59:
  %t262 = getelementptr [12 x i8], [12 x i8]* @.str301, i32 0, i32 0
  %t263 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str301.c, i8* %t262, i64 11)
  %t264 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t263)
  %t265 = getelementptr [15 x i8], [15 x i8]* @.str302, i32 0, i32 0
  %t266 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str302.c, i8* %t265, i64 14)
  %t267 = call { i64, i8* }* @nyx_array_new_ptr()
  %t268 = load %nyx_string*, %nyx_string** %t156
  %t269 = ptrtoint %nyx_string* %t268 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t267, i64 %t269, i64 2)
  %t270 = load { i64, i8* }*, { i64, i8* }** %t162
  %t271 = ptrtoint { i64, i8* }* %t270 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t267, i64 %t271, i64 5)
  %t272 = load { i64, i8* }*, { i64, i8* }** %t205
  %t273 = ptrtoint { i64, i8* }* %t272 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t267, i64 %t273, i64 5)
  %t274 = load { i64, i8* }*, { i64, i8* }** %t243
  %t275 = ptrtoint { i64, i8* }* %t274 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t267, i64 %t275, i64 5)
  %t276 = load %nyx_string*, %nyx_string** %t131
  %t277 = ptrtoint %nyx_string* %t276 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t267, i64 %t277, i64 2)
  %t278 = call { i64, i8* }* @make_astnode(%nyx_string* %t266, { i64, i8* }* %t267)
  ret { i64, i8* }* %t278
else31:
  br label %merge32
merge32:
  %t279 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t279, { i64, i8* }** %t280
  %t281 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t281, { i64, i8* }** %t282
  %t283 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t283, { i64, i8* }** %t284
  store i1 0, i1* %t285
  br label %while_cond66
while_cond66:
  %t286 = load i1, i1* %t285
  %t287 = xor i1 %t286, true
  br i1 %t287, label %while_body67, label %while_end68
while_body67:
  %t288 = getelementptr [6 x i8], [6 x i8]* @.str303, i32 0, i32 0
  %t289 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str303.c, i8* %t288, i64 5)
  %t290 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t289)
  br i1 %t290, label %then69, label %else70
then69:
  %t291 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t292 = getelementptr [11 x i8], [11 x i8]* @.str304, i32 0, i32 0
  %t293 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str304.c, i8* %t292, i64 10)
  %t294 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t293)
  br i1 %t294, label %then72, label %else73
then72:
  %t295 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  store %Token %t295, %Token* %t296
  %t297 = load %Token, %Token* %t296
  %t298 = call %nyx_string* @get_token_value(%Token %t297)
  store %nyx_string* %t298, %nyx_string** %t299
  %t300 = load %nyx_string*, %nyx_string** %t299
  %t301 = getelementptr [4 x i8], [4 x i8]* @.str305, i32 0, i32 0
  %t302 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str305.c, i8* %t301, i64 3)
  %t303 = call i1 @nyx_string_equals(%nyx_string* %t300, %nyx_string* %t302)
  br i1 %t303, label %then75, label %else76
then75:
  %t304 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t305 = getelementptr [11 x i8], [11 x i8]* @.str306, i32 0, i32 0
  %t306 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str306.c, i8* %t305, i64 10)
  %t307 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t306)
  %t308 = getelementptr [7 x i8], [7 x i8]* @.str307, i32 0, i32 0
  %t309 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str307.c, i8* %t308, i64 6)
  %t310 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t309)
  store %Token %t310, %Token* %t311
  %t312 = load { i64, i8* }*, { i64, i8* }** %t280
  %t313 = load %Token, %Token* %t311
  %t314 = call %nyx_string* @get_token_value(%Token %t313)
  %t315 = ptrtoint %nyx_string* %t314 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t312, i64 %t315, i64 2)
  %t316 = getelementptr [12 x i8], [12 x i8]* @.str308, i32 0, i32 0
  %t317 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str308.c, i8* %t316, i64 11)
  %t318 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t317)
  br label %merge77
else76:
  %t319 = load %nyx_string*, %nyx_string** %t299
  %t320 = getelementptr [3 x i8], [3 x i8]* @.str309, i32 0, i32 0
  %t321 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str309.c, i8* %t320, i64 2)
  %t322 = call i1 @nyx_string_equals(%nyx_string* %t319, %nyx_string* %t321)
  br i1 %t322, label %then78, label %else79
then78:
  %t323 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t324 = getelementptr [11 x i8], [11 x i8]* @.str310, i32 0, i32 0
  %t325 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str310.c, i8* %t324, i64 10)
  %t326 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t325)
  %t327 = getelementptr [7 x i8], [7 x i8]* @.str311, i32 0, i32 0
  %t328 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str311.c, i8* %t327, i64 6)
  %t329 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t328)
  store %Token %t329, %Token* %t330
  %t331 = load %Token, %Token* %t330
  %t332 = call %nyx_string* @get_token_value(%Token %t331)
  store %nyx_string* %t332, %nyx_string** %t333
  %t334 = getelementptr [6 x i8], [6 x i8]* @.str312, i32 0, i32 0
  %t335 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str312.c, i8* %t334, i64 5)
  %t336 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t335)
  %t337 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t337, { i64, i8* }** %t338
  %t339 = load { i64, i8* }*, { i64, i8* }** %t282
  %t340 = call { i64, i8* }* @nyx_array_new_ptr()
  %t341 = load %nyx_string*, %nyx_string** %t333
  %t342 = ptrtoint %nyx_string* %t341 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t340, i64 %t342, i64 2)
  %t343 = load { i64, i8* }*, { i64, i8* }** %t338
  %t344 = ptrtoint { i64, i8* }* %t343 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t340, i64 %t344, i64 5)
  %t345 = ptrtoint { i64, i8* }* %t340 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t339, i64 %t345, i64 5)
  %t346 = getelementptr [12 x i8], [12 x i8]* @.str313, i32 0, i32 0
  %t347 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str313.c, i8* %t346, i64 11)
  %t348 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t347)
  br label %merge80
else79:
  %t349 = load %nyx_string*, %nyx_string** %t299
  %t350 = getelementptr [8 x i8], [8 x i8]* @.str314, i32 0, i32 0
  %t351 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str314.c, i8* %t350, i64 7)
  %t352 = call i1 @nyx_string_equals(%nyx_string* %t349, %nyx_string* %t351)
  br i1 %t352, label %then81, label %else82
then81:
  %t353 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t354 = getelementptr [11 x i8], [11 x i8]* @.str315, i32 0, i32 0
  %t355 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str315.c, i8* %t354, i64 10)
  %t356 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t355)
  store i1 0, i1* %t357
  br label %while_cond84
while_cond84:
  %t358 = load i1, i1* %t357
  %t359 = xor i1 %t358, true
  br i1 %t359, label %while_body85, label %while_end86
while_body85:
  %t360 = getelementptr [7 x i8], [7 x i8]* @.str316, i32 0, i32 0
  %t361 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str316.c, i8* %t360, i64 6)
  %t362 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t361)
  store %Token %t362, %Token* %t363
  %t364 = load { i64, i8* }*, { i64, i8* }** %t284
  %t365 = load %Token, %Token* %t363
  %t366 = call %nyx_string* @get_token_value(%Token %t365)
  %t367 = ptrtoint %nyx_string* %t366 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t364, i64 %t367, i64 2)
  %t368 = getelementptr [6 x i8], [6 x i8]* @.str317, i32 0, i32 0
  %t369 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str317.c, i8* %t368, i64 5)
  %t370 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t369)
  br i1 %t370, label %then87, label %else88
then87:
  %t371 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge89
else88:
  store i1 1, i1* %t357
  br label %merge89
merge89:
  br label %while_cond84
while_end86:
  %t372 = getelementptr [12 x i8], [12 x i8]* @.str318, i32 0, i32 0
  %t373 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str318.c, i8* %t372, i64 11)
  %t374 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t373)
  br label %merge83
else82:
  store i1 1, i1* %t285
  br label %merge83
merge83:
  br label %merge80
merge80:
  br label %merge77
merge77:
  br label %merge74
else73:
  store i1 1, i1* %t285
  br label %merge74
merge74:
  br label %merge71
else70:
  store i1 1, i1* %t285
  br label %merge71
merge71:
  br label %while_cond66
while_end68:
  %t375 = getelementptr [12 x i8], [12 x i8]* @.str319, i32 0, i32 0
  %t376 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str319.c, i8* %t375, i64 11)
  %t377 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t376)
  %t378 = getelementptr [11 x i8], [11 x i8]* @.str320, i32 0, i32 0
  %t379 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str320.c, i8* %t378, i64 10)
  %t380 = call { i64, i8* }* @nyx_array_new_ptr()
  %t381 = load %nyx_string*, %nyx_string** %t156
  %t382 = ptrtoint %nyx_string* %t381 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t380, i64 %t382, i64 2)
  %t383 = load { i64, i8* }*, { i64, i8* }** %t280
  %t384 = ptrtoint { i64, i8* }* %t383 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t380, i64 %t384, i64 5)
  %t385 = load { i64, i8* }*, { i64, i8* }** %t282
  %t386 = ptrtoint { i64, i8* }* %t385 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t380, i64 %t386, i64 5)
  %t387 = load { i64, i8* }*, { i64, i8* }** %t284
  %t388 = ptrtoint { i64, i8* }* %t387 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t380, i64 %t388, i64 5)
  %t389 = call { i64, i8* }* @make_astnode(%nyx_string* %t379, { i64, i8* }* %t380)
  ret { i64, i8* }* %t389
else22:
  br label %merge23
merge23:
  %t390 = getelementptr [7 x i8], [7 x i8]* @.str321, i32 0, i32 0
  %t391 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str321.c, i8* %t390, i64 6)
  %t392 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t391)
  br i1 %t392, label %then90, label %else91
then90:
  %t393 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store %Token %t393, %Token* %t394
  %t395 = getelementptr [11 x i8], [11 x i8]* @.str322, i32 0, i32 0
  %t396 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str322.c, i8* %t395, i64 10)
  %t397 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t396)
  %t398 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t398, { i64, i8* }** %t399
  %t400 = getelementptr [7 x i8], [7 x i8]* @.str323, i32 0, i32 0
  %t401 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str323.c, i8* %t400, i64 6)
  %t402 = call { i64, i8* }* @nyx_array_new_ptr()
  %t403 = getelementptr [15 x i8], [15 x i8]* @.str324, i32 0, i32 0
  %t404 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str324.c, i8* %t403, i64 14)
  %t405 = load %Token, %Token* %t394
  %t406 = call i64 @get_token_line(%Token %t405)
  %t407 = call %nyx_string* @nyx_string_from_int(i64 %t406)
  %t408 = call %nyx_string* @nyx_string_concat(%nyx_string* %t404, %nyx_string* %t407)
  %t409 = ptrtoint %nyx_string* %t408 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t402, i64 %t409, i64 2)
  %t410 = call { i64, i8* }* @make_astnode(%nyx_string* %t401, { i64, i8* }* %t402)
  store { i64, i8* }* %t410, { i64, i8* }** %t411
  %t412 = getelementptr [6 x i8], [6 x i8]* @.str325, i32 0, i32 0
  %t413 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str325.c, i8* %t412, i64 5)
  %t414 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t413)
  br i1 %t414, label %then93, label %else94
then93:
  %t415 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t416 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t416, { i64, i8* }** %t411
  br label %merge95
else94:
  br label %merge95
merge95:
  %t417 = getelementptr [12 x i8], [12 x i8]* @.str326, i32 0, i32 0
  %t418 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str326.c, i8* %t417, i64 11)
  %t419 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t418)
  %t420 = getelementptr [7 x i8], [7 x i8]* @.str327, i32 0, i32 0
  %t421 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str327.c, i8* %t420, i64 6)
  %t422 = call { i64, i8* }* @nyx_array_new_ptr()
  %t423 = load { i64, i8* }*, { i64, i8* }** %t399
  %t424 = ptrtoint { i64, i8* }* %t423 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t422, i64 %t424, i64 5)
  %t425 = load { i64, i8* }*, { i64, i8* }** %t411
  %t426 = ptrtoint { i64, i8* }* %t425 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t422, i64 %t426, i64 5)
  %t427 = call { i64, i8* }* @make_astnode(%nyx_string* %t421, { i64, i8* }* %t422)
  ret { i64, i8* }* %t427
else91:
  br label %merge92
merge92:
  %t428 = getelementptr [11 x i8], [11 x i8]* @.str328, i32 0, i32 0
  %t429 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str328.c, i8* %t428, i64 10)
  %t430 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t429)
  br i1 %t430, label %then96, label %else97
then96:
  %t431 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store %Token %t431, %Token* %t432
  %t433 = load %Token, %Token* %t432
  %t434 = call %nyx_string* @get_token_value(%Token %t433)
  store %nyx_string* %t434, %nyx_string** %t435
  %t436 = load { i64, i8* }*, { i64, i8* }** %t17
  %t437 = call i64 @nyx_array_length({ i64, i8* }* %t436)
  %t438 = icmp sgt i64 %t437, 0
  br i1 %t438, label %then99, label %else100
then99:
  store i64 0, i64* %t439
  br label %while_cond102
while_cond102:
  %t440 = load i64, i64* %t439
  %t441 = load { i64, i8* }*, { i64, i8* }** %t17
  %t442 = call i64 @nyx_array_length({ i64, i8* }* %t441)
  %t443 = icmp slt i64 %t440, %t442
  br i1 %t443, label %while_body103, label %while_end104
while_body103:
  %t444 = load { i64, i8* }*, { i64, i8* }** %t17
  %t445 = load i64, i64* %t439
  %t446 = call i64 @nyx_array_get_checked({ i64, i8* }* %t444, i64 %t445, i64 2)
  %t447 = inttoptr i64 %t446 to %nyx_string*
  store %nyx_string* %t447, %nyx_string** %t448
  %t449 = load %nyx_string*, %nyx_string** %t448
  %t450 = load %nyx_string*, %nyx_string** %t435
  %t451 = call i1 @nyx_string_equals(%nyx_string* %t449, %nyx_string* %t450)
  br i1 %t451, label %then105, label %else106
then105:
  %t452 = load { i64, i8* }*, { i64, i8* }** %t18
  %t453 = load i64, i64* %t439
  %t454 = call i64 @nyx_array_get({ i64, i8* }* %t452, i64 %t453)
  %t455 = inttoptr i64 %t454 to { i64, i8* }*
  store { i64, i8* }* %t455, { i64, i8* }** %t456
  %t457 = load { i64, i8* }*, { i64, i8* }** %t456
  ret { i64, i8* }* %t457
else106:
  br label %merge107
merge107:
  %t458 = load i64, i64* %t439
  %t459 = add i64 %t458, 1
  store i64 %t459, i64* %t439
  br label %while_cond102
while_end104:
  br label %merge101
else100:
  br label %merge101
merge101:
  %t460 = getelementptr [4 x i8], [4 x i8]* @.str329, i32 0, i32 0
  %t461 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str329.c, i8* %t460, i64 3)
  %t462 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t461)
  br i1 %t462, label %then108, label %else109
then108:
  store i1 0, i1* %t463
  store i64 0, i64* %t464
  br label %while_cond111
while_cond111:
  %t465 = load i64, i64* %t464
  %t466 = load { i64, i8* }*, { i64, i8* }** %t14
  %t467 = call i64 @nyx_array_length({ i64, i8* }* %t466)
  %t468 = icmp slt i64 %t465, %t467
  br i1 %t468, label %while_body112, label %while_end113
while_body112:
  %t469 = load { i64, i8* }*, { i64, i8* }** %t14
  %t470 = load i64, i64* %t464
  %t471 = call i64 @nyx_array_get_checked({ i64, i8* }* %t469, i64 %t470, i64 2)
  %t472 = inttoptr i64 %t471 to %nyx_string*
  store %nyx_string* %t472, %nyx_string** %t473
  %t474 = load %nyx_string*, %nyx_string** %t473
  %t475 = load %nyx_string*, %nyx_string** %t435
  %t476 = call i1 @nyx_string_equals(%nyx_string* %t474, %nyx_string* %t475)
  br i1 %t476, label %then114, label %else115
then114:
  store i1 1, i1* %t463
  br label %merge116
else115:
  br label %merge116
merge116:
  %t477 = load i64, i64* %t464
  %t478 = add i64 %t477, 1
  store i64 %t478, i64* %t464
  br label %while_cond111
while_end113:
  %t479 = load i1, i1* %t463
  br i1 %t479, label %then117, label %else118
then117:
  %t480 = load %nyx_string*, %nyx_string** %t435
  %t481 = call { i64, i8* }* @parse__parse_macro_invocation(%SharedEnv_parse* %env.param, %nyx_string* %t480)
  ret { i64, i8* }* %t481
else118:
  br label %merge119
merge119:
  br label %merge110
else109:
  br label %merge110
merge110:
  store i1 false, i1* %t482
  %t483 = getelementptr [11 x i8], [11 x i8]* @.str330, i32 0, i32 0
  %t484 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str330.c, i8* %t483, i64 10)
  %t485 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t484)
  br i1 %t485, label %sc_and_rhs120, label %sc_and_end121
sc_and_rhs120:
  %t486 = load i64, i64* %t6
  %t487 = icmp eq i64 %t486, 0
  store i1 %t487, i1* %t482
  br label %sc_and_end121
sc_and_end121:
  %t488 = load i1, i1* %t482
  br i1 %t488, label %then122, label %else123
then122:
  store i1 false, i1* %t489
  %t490 = getelementptr [11 x i8], [11 x i8]* @.str331, i32 0, i32 0
  %t491 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str331.c, i8* %t490, i64 10)
  %t492 = call i1 @parse__check_at(%SharedEnv_parse* %env.param, i64 1, %nyx_string* %t491)
  br i1 %t492, label %sc_and_rhs125, label %sc_and_end126
sc_and_rhs125:
  %t493 = getelementptr [6 x i8], [6 x i8]* @.str332, i32 0, i32 0
  %t494 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str332.c, i8* %t493, i64 5)
  %t495 = call i1 @parse__check_at(%SharedEnv_parse* %env.param, i64 2, %nyx_string* %t494)
  store i1 %t495, i1* %t489
  br label %sc_and_end126
sc_and_end126:
  %t496 = load i1, i1* %t489
  br i1 %t496, label %then127, label %else128
then127:
  %t497 = load %nyx_string*, %nyx_string** %t435
  %t498 = call { i64, i8* }* @parse__parse_struct_construction(%SharedEnv_parse* %env.param, %nyx_string* %t497)
  ret { i64, i8* }* %t498
else128:
  br label %merge129
merge129:
  %t499 = getelementptr [12 x i8], [12 x i8]* @.str333, i32 0, i32 0
  %t500 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str333.c, i8* %t499, i64 11)
  %t501 = call i1 @parse__check_at(%SharedEnv_parse* %env.param, i64 1, %nyx_string* %t500)
  br i1 %t501, label %then130, label %else131
then130:
  %t502 = load %nyx_string*, %nyx_string** %t435
  %t503 = call { i64, i8* }* @parse__parse_struct_construction(%SharedEnv_parse* %env.param, %nyx_string* %t502)
  ret { i64, i8* }* %t503
else131:
  br label %merge132
merge132:
  br label %merge124
else123:
  br label %merge124
merge124:
  %t504 = getelementptr [11 x i8], [11 x i8]* @.str334, i32 0, i32 0
  %t505 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str334.c, i8* %t504, i64 10)
  %t506 = call { i64, i8* }* @nyx_array_new_ptr()
  %t507 = load %nyx_string*, %nyx_string** %t435
  %t508 = ptrtoint %nyx_string* %t507 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t506, i64 %t508, i64 2)
  %t509 = call { i64, i8* }* @make_astnode(%nyx_string* %t505, { i64, i8* }* %t506)
  ret { i64, i8* }* %t509
else97:
  br label %merge98
merge98:
  %t510 = getelementptr [13 x i8], [13 x i8]* @.str335, i32 0, i32 0
  %t511 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str335.c, i8* %t510, i64 12)
  %t512 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t511)
  br i1 %t512, label %then133, label %else134
then133:
  %t513 = call { i64, i8* }* @parse__parse_array_literal(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %t513
else134:
  br label %merge135
merge135:
  %t514 = getelementptr [6 x i8], [6 x i8]* @.str336, i32 0, i32 0
  %t515 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str336.c, i8* %t514, i64 5)
  %t516 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t515)
  br i1 %t516, label %then136, label %else137
then136:
  %t517 = call { i64, i8* }* @parse__parse_match(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %t517
else137:
  br label %merge138
merge138:
  %t518 = getelementptr [11 x i8], [11 x i8]* @.str337, i32 0, i32 0
  %t519 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str337.c, i8* %t518, i64 10)
  %t520 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t519)
  br i1 %t520, label %then139, label %else140
then139:
  %t521 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t522 = load i64, i64* %t6
  store i64 %t522, i64* %t523
  store i64 0, i64* %t6
  %t524 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t524, { i64, i8* }** %t525
  %t526 = getelementptr [6 x i8], [6 x i8]* @.str338, i32 0, i32 0
  %t527 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str338.c, i8* %t526, i64 5)
  %t528 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t527)
  br i1 %t528, label %then142, label %else143
then142:
  %t529 = call { i64, i8* }* @nyx_array_new_ptr()
  %t530 = load { i64, i8* }*, { i64, i8* }** %t525
  %t531 = ptrtoint { i64, i8* }* %t530 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t529, i64 %t531, i64 5)
  store { i64, i8* }* %t529, { i64, i8* }** %t532
  br label %while_cond145
while_cond145:
  %t533 = getelementptr [6 x i8], [6 x i8]* @.str339, i32 0, i32 0
  %t534 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str339.c, i8* %t533, i64 5)
  %t535 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t534)
  br i1 %t535, label %while_body146, label %while_end147
while_body146:
  %t536 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t537 = load { i64, i8* }*, { i64, i8* }** %t532
  %t538 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %t539 = ptrtoint { i64, i8* }* %t538 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t537, i64 %t539, i64 5)
  br label %while_cond145
while_end147:
  %t540 = getelementptr [12 x i8], [12 x i8]* @.str340, i32 0, i32 0
  %t541 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str340.c, i8* %t540, i64 11)
  %t542 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t541)
  %t543 = load i64, i64* %t523
  store i64 %t543, i64* %t6
  %t544 = getelementptr [10 x i8], [10 x i8]* @.str341, i32 0, i32 0
  %t545 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str341.c, i8* %t544, i64 9)
  %t546 = call { i64, i8* }* @nyx_array_new_ptr()
  %t547 = load { i64, i8* }*, { i64, i8* }** %t532
  %t548 = ptrtoint { i64, i8* }* %t547 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t546, i64 %t548, i64 5)
  %t549 = call { i64, i8* }* @make_astnode(%nyx_string* %t545, { i64, i8* }* %t546)
  ret { i64, i8* }* %t549
else143:
  br label %merge144
merge144:
  %t550 = getelementptr [12 x i8], [12 x i8]* @.str342, i32 0, i32 0
  %t551 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str342.c, i8* %t550, i64 11)
  %t552 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t551)
  %t553 = load i64, i64* %t523
  store i64 %t553, i64* %t6
  %t554 = load { i64, i8* }*, { i64, i8* }** %t525
  ret { i64, i8* }* %t554
else140:
  br label %merge141
merge141:
  %t555 = getelementptr [3 x i8], [3 x i8]* @.str343, i32 0, i32 0
  %t556 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str343.c, i8* %t555, i64 2)
  %t557 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t556)
  br i1 %t557, label %then148, label %else149
then148:
  %t558 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t559 = load { i64, i8* }*, { i64, i8* }** %t13
  %t560 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %t559, i64 0)
  store i64 %t560, i64* %t561
  %t562 = load { i64, i8* }*, { i64, i8* }** %t13
  %t563 = load { i64, i8* }*, { i64, i8* }** %t13
  %t564 = call i64 @nyx_array_get({ i64, i8* }* %t563, i64 0)
  %t565 = add i64 %t564, 1
  call void @nyx_array_set({ i64, i8* }* %t562, i64 0, i64 %t565)
  %t566 = getelementptr [10 x i8], [10 x i8]* @.str344, i32 0, i32 0
  %t567 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str344.c, i8* %t566, i64 9)
  %t568 = load i64, i64* %t561
  %t569 = call %nyx_string* @nyx_string_from_int(i64 %t568)
  %t570 = call %nyx_string* @nyx_string_concat(%nyx_string* %t567, %nyx_string* %t569)
  store %nyx_string* %t570, %nyx_string** %t571
  %t572 = getelementptr [11 x i8], [11 x i8]* @.str345, i32 0, i32 0
  %t573 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str345.c, i8* %t572, i64 10)
  %t574 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t573)
  %t575 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t575, { i64, i8* }** %t576
  store i1 0, i1* %t577
  br label %while_cond151
while_cond151:
  %t578 = load i1, i1* %t577
  %t579 = xor i1 %t578, true
  br i1 %t579, label %while_body152, label %while_end153
while_body152:
  %t580 = getelementptr [12 x i8], [12 x i8]* @.str346, i32 0, i32 0
  %t581 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str346.c, i8* %t580, i64 11)
  %t582 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t581)
  br i1 %t582, label %then154, label %else155
then154:
  %t583 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %t577
  br label %merge156
else155:
  %t584 = load { i64, i8* }*, { i64, i8* }** %t576
  %t585 = call i64 @nyx_array_length({ i64, i8* }* %t584)
  %t586 = icmp sgt i64 %t585, 0
  br i1 %t586, label %then157, label %else158
then157:
  %t587 = getelementptr [6 x i8], [6 x i8]* @.str347, i32 0, i32 0
  %t588 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str347.c, i8* %t587, i64 5)
  %t589 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t588)
  br label %merge159
else158:
  br label %merge159
merge159:
  %t590 = getelementptr [11 x i8], [11 x i8]* @.str348, i32 0, i32 0
  %t591 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str348.c, i8* %t590, i64 10)
  %t592 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t591)
  store %Token %t592, %Token* %t593
  %t594 = load %Token, %Token* %t593
  %t595 = call %nyx_string* @get_token_value(%Token %t594)
  store %nyx_string* %t595, %nyx_string** %t596
  %t597 = getelementptr [4 x i8], [4 x i8]* @.str349, i32 0, i32 0
  %t598 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str349.c, i8* %t597, i64 3)
  store %nyx_string* %t598, %nyx_string** %t599
  %t600 = getelementptr [6 x i8], [6 x i8]* @.str350, i32 0, i32 0
  %t601 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str350.c, i8* %t600, i64 5)
  %t602 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t601)
  br i1 %t602, label %then160, label %else161
then160:
  %t603 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t604 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %t604, %nyx_string** %t599
  br label %merge162
else161:
  br label %merge162
merge162:
  %t605 = load { i64, i8* }*, { i64, i8* }** %t576
  %t606 = call { i64, i8* }* @nyx_array_new_ptr()
  %t607 = load %nyx_string*, %nyx_string** %t596
  %t608 = ptrtoint %nyx_string* %t607 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t606, i64 %t608, i64 2)
  %t609 = load %nyx_string*, %nyx_string** %t599
  %t610 = ptrtoint %nyx_string* %t609 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t606, i64 %t610, i64 2)
  %t611 = ptrtoint { i64, i8* }* %t606 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t605, i64 %t611, i64 5)
  br label %merge156
merge156:
  br label %while_cond151
while_end153:
  %t612 = getelementptr [1 x i8], [1 x i8]* @.str351, i32 0, i32 0
  %t613 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str351.c, i8* %t612, i64 0)
  store %nyx_string* %t613, %nyx_string** %t614
  %t615 = getelementptr [6 x i8], [6 x i8]* @.str352, i32 0, i32 0
  %t616 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str352.c, i8* %t615, i64 5)
  %t617 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t616)
  br i1 %t617, label %then163, label %else164
then163:
  %t618 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t619 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %t619, %nyx_string** %t614
  br label %merge165
else164:
  br label %merge165
merge165:
  %t620 = call { i64, i8* }* @parse__parse_fn_body_block(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t620, { i64, i8* }** %t621
  %t622 = getelementptr [9 x i8], [9 x i8]* @.str353, i32 0, i32 0
  %t623 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str353.c, i8* %t622, i64 8)
  %t624 = call { i64, i8* }* @nyx_array_new_ptr()
  %t625 = load %nyx_string*, %nyx_string** %t571
  %t626 = ptrtoint %nyx_string* %t625 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t624, i64 %t626, i64 2)
  %t627 = load { i64, i8* }*, { i64, i8* }** %t576
  %t628 = ptrtoint { i64, i8* }* %t627 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t624, i64 %t628, i64 5)
  %t629 = load %nyx_string*, %nyx_string** %t614
  %t630 = ptrtoint %nyx_string* %t629 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t624, i64 %t630, i64 2)
  %t631 = load { i64, i8* }*, { i64, i8* }** %t621
  %t632 = ptrtoint { i64, i8* }* %t631 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t624, i64 %t632, i64 5)
  %t633 = call { i64, i8* }* @nyx_array_new_ptr()
  %t634 = ptrtoint { i64, i8* }* %t633 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t624, i64 %t634, i64 5)
  %t635 = call { i64, i8* }* @make_astnode(%nyx_string* %t623, { i64, i8* }* %t624)
  store { i64, i8* }* %t635, { i64, i8* }** %t636
  %t637 = load { i64, i8* }*, { i64, i8* }** %t12
  %t638 = load { i64, i8* }*, { i64, i8* }** %t636
  %t639 = ptrtoint { i64, i8* }* %t638 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t637, i64 %t639, i64 5)
  %t640 = getelementptr [11 x i8], [11 x i8]* @.str354, i32 0, i32 0
  %t641 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str354.c, i8* %t640, i64 10)
  %t642 = call { i64, i8* }* @nyx_array_new_ptr()
  %t643 = load %nyx_string*, %nyx_string** %t571
  %t644 = ptrtoint %nyx_string* %t643 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t642, i64 %t644, i64 2)
  %t645 = call { i64, i8* }* @make_astnode(%nyx_string* %t641, { i64, i8* }* %t642)
  ret { i64, i8* }* %t645
else149:
  br label %merge150
merge150:
  %t646 = getelementptr [11 x i8], [11 x i8]* @.str355, i32 0, i32 0
  %t647 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str355.c, i8* %t646, i64 10)
  %t648 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t647)
  br i1 %t648, label %then166, label %else167
then166:
  store i1 true, i1* %t649
  %t650 = getelementptr [12 x i8], [12 x i8]* @.str356, i32 0, i32 0
  %t651 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str356.c, i8* %t650, i64 11)
  %t652 = call i1 @parse__check_at(%SharedEnv_parse* %env.param, i64 1, %nyx_string* %t651)
  br i1 %t652, label %sc_or_end170, label %sc_or_rhs169
sc_or_rhs169:
  store i1 false, i1* %t653
  %t654 = getelementptr [7 x i8], [7 x i8]* @.str357, i32 0, i32 0
  %t655 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str357.c, i8* %t654, i64 6)
  %t656 = call i1 @parse__check_at(%SharedEnv_parse* %env.param, i64 1, %nyx_string* %t655)
  br i1 %t656, label %sc_and_rhs171, label %sc_and_end172
sc_and_rhs171:
  %t657 = getelementptr [6 x i8], [6 x i8]* @.str358, i32 0, i32 0
  %t658 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str358.c, i8* %t657, i64 5)
  %t659 = call i1 @parse__check_at(%SharedEnv_parse* %env.param, i64 2, %nyx_string* %t658)
  store i1 %t659, i1* %t653
  br label %sc_and_end172
sc_and_end172:
  %t660 = load i1, i1* %t653
  store i1 %t660, i1* %t649
  br label %sc_or_end170
sc_or_end170:
  %t661 = load i1, i1* %t649
  br i1 %t661, label %then173, label %else174
then173:
  %t662 = call { i64, i8* }* @parse__parse_map_literal(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %t662
else174:
  br label %merge175
merge175:
  %t663 = getelementptr [6 x i8], [6 x i8]* @.str359, i32 0, i32 0
  %t664 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str359.c, i8* %t663, i64 5)
  %t665 = call i1 @parse__check_at(%SharedEnv_parse* %env.param, i64 2, %nyx_string* %t664)
  br i1 %t665, label %then176, label %else177
then176:
  %t666 = getelementptr [8 x i8], [8 x i8]* @.str360, i32 0, i32 0
  %t667 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str360.c, i8* %t666, i64 7)
  %t668 = load i64, i64* @g_last_line
  %t669 = load i64, i64* @g_last_col
  %t670 = getelementptr [71 x i8], [71 x i8]* @.str361, i32 0, i32 0
  %t671 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str361.c, i8* %t670, i64 70)
  %t672 = getelementptr [55 x i8], [55 x i8]* @.str362, i32 0, i32 0
  %t673 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str362.c, i8* %t672, i64 54)
  %t674 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %t671, %nyx_string* %t673)
  %t675 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %t667, i64 %t668, i64 %t669, %nyx_string* %t674)
  %t676 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t677 = getelementptr [6 x i8], [6 x i8]* @.str363, i32 0, i32 0
  %t678 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str363.c, i8* %t677, i64 5)
  %t679 = call { i64, i8* }* @nyx_array_new_ptr()
  %t680 = call { i64, i8* }* @make_astnode(%nyx_string* %t678, { i64, i8* }* %t679)
  ret { i64, i8* }* %t680
else177:
  br label %merge178
merge178:
  br label %merge168
else167:
  br label %merge168
merge168:
  %t681 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  store %Token %t681, %Token* %t682
  %t683 = load %Token, %Token* %t682
  %t684 = call %nyx_string* @get_token_value(%Token %t683)
  store %nyx_string* %t684, %nyx_string** %t685
  %t686 = load %Token, %Token* %t682
  %t687 = call %nyx_string* @get_token_type(%Token %t686)
  store %nyx_string* %t687, %nyx_string** %t688
  %t689 = getelementptr [8 x i8], [8 x i8]* @.str364, i32 0, i32 0
  %t690 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str364.c, i8* %t689, i64 7)
  %t691 = load %Token, %Token* %t682
  %t692 = call i64 @get_token_line(%Token %t691)
  %t693 = load %Token, %Token* %t682
  %t694 = call i64 @get_token_column(%Token %t693)
  %t695 = getelementptr [38 x i8], [38 x i8]* @.str365, i32 0, i32 0
  %t696 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str365.c, i8* %t695, i64 37)
  %t697 = load %nyx_string*, %nyx_string** %t685
  %t698 = call %nyx_string* @nyx_string_concat(%nyx_string* %t696, %nyx_string* %t697)
  %t699 = getelementptr [4 x i8], [4 x i8]* @.str366, i32 0, i32 0
  %t700 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str366.c, i8* %t699, i64 3)
  %t701 = call %nyx_string* @nyx_string_concat(%nyx_string* %t698, %nyx_string* %t700)
  %t702 = load %nyx_string*, %nyx_string** %t688
  %t703 = call %nyx_string* @nyx_string_concat(%nyx_string* %t701, %nyx_string* %t702)
  %t704 = getelementptr [2 x i8], [2 x i8]* @.str367, i32 0, i32 0
  %t705 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str367.c, i8* %t704, i64 1)
  %t706 = call %nyx_string* @nyx_string_concat(%nyx_string* %t703, %nyx_string* %t705)
  %t707 = getelementptr [34 x i8], [34 x i8]* @.str368, i32 0, i32 0
  %t708 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str368.c, i8* %t707, i64 33)
  %t709 = load %nyx_string*, %nyx_string** %t685
  %t710 = call %nyx_string* @nyx_string_concat(%nyx_string* %t708, %nyx_string* %t709)
  %t711 = getelementptr [4 x i8], [4 x i8]* @.str369, i32 0, i32 0
  %t712 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str369.c, i8* %t711, i64 3)
  %t713 = call %nyx_string* @nyx_string_concat(%nyx_string* %t710, %nyx_string* %t712)
  %t714 = load %nyx_string*, %nyx_string** %t688
  %t715 = call %nyx_string* @nyx_string_concat(%nyx_string* %t713, %nyx_string* %t714)
  %t716 = getelementptr [2 x i8], [2 x i8]* @.str370, i32 0, i32 0
  %t717 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str370.c, i8* %t716, i64 1)
  %t718 = call %nyx_string* @nyx_string_concat(%nyx_string* %t715, %nyx_string* %t717)
  %t719 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %t706, %nyx_string* %t718)
  %t720 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %t690, i64 %t692, i64 %t694, %nyx_string* %t719)
  %t721 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t722 = getelementptr [6 x i8], [6 x i8]* @.str371, i32 0, i32 0
  %t723 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str371.c, i8* %t722, i64 5)
  %t724 = call { i64, i8* }* @nyx_array_new_ptr()
  %t725 = call { i64, i8* }* @make_astnode(%nyx_string* %t723, { i64, i8* }* %t724)
  ret { i64, i8* }* %t725
}

define internal { i64, i8* }* @parse__parse_map_literal(%SharedEnv_parse* %env.param) {
  %t35 = alloca { i64, i8* }*
  %t37 = alloca { i64, i8* }*
  %t38 = alloca i1
  %t74 = alloca %Token
  %t79 = alloca { i64, i8* }*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = getelementptr [11 x i8], [11 x i8]* @.str372, i32 0, i32 0
  %t32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str372.c, i8* %t31, i64 10)
  %t33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t32)
  %t34 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t34, { i64, i8* }** %t35
  %t36 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t36, { i64, i8* }** %t37
  store i1 0, i1* %t38
  br label %while_cond0
while_cond0:
  %t39 = load i1, i1* %t38
  %t40 = xor i1 %t39, true
  br i1 %t40, label %while_body1, label %while_end2
while_body1:
  %t41 = load i64, i64* %t8
  %t42 = icmp eq i64 %t41, 1
  br i1 %t42, label %then3, label %else4
then3:
  store i1 1, i1* %t38
  br label %merge5
else4:
  %t43 = getelementptr [4 x i8], [4 x i8]* @.str373, i32 0, i32 0
  %t44 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str373.c, i8* %t43, i64 3)
  %t45 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t44)
  br i1 %t45, label %then6, label %else7
then6:
  %t46 = getelementptr [8 x i8], [8 x i8]* @.str374, i32 0, i32 0
  %t47 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str374.c, i8* %t46, i64 7)
  %t48 = load i64, i64* @g_last_line
  %t49 = load i64, i64* @g_last_col
  %t50 = getelementptr [53 x i8], [53 x i8]* @.str375, i32 0, i32 0
  %t51 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str375.c, i8* %t50, i64 52)
  %t52 = getelementptr [59 x i8], [59 x i8]* @.str376, i32 0, i32 0
  %t53 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str376.c, i8* %t52, i64 58)
  %t54 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %t51, %nyx_string* %t53)
  %t55 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %t47, i64 %t48, i64 %t49, %nyx_string* %t54)
  store i1 1, i1* %t38
  br label %merge8
else7:
  %t56 = getelementptr [12 x i8], [12 x i8]* @.str377, i32 0, i32 0
  %t57 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str377.c, i8* %t56, i64 11)
  %t58 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t57)
  br i1 %t58, label %then9, label %else10
then9:
  %t59 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %t38
  br label %merge11
else10:
  %t60 = load { i64, i8* }*, { i64, i8* }** %t35
  %t61 = call i64 @nyx_array_length({ i64, i8* }* %t60)
  %t62 = icmp sgt i64 %t61, 0
  br i1 %t62, label %then12, label %else13
then12:
  %t63 = getelementptr [6 x i8], [6 x i8]* @.str378, i32 0, i32 0
  %t64 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str378.c, i8* %t63, i64 5)
  %t65 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t64)
  br i1 %t65, label %then15, label %else16
then15:
  %t66 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge17
else16:
  br label %merge17
merge17:
  br label %merge14
else13:
  br label %merge14
merge14:
  %t67 = getelementptr [12 x i8], [12 x i8]* @.str379, i32 0, i32 0
  %t68 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str379.c, i8* %t67, i64 11)
  %t69 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t68)
  br i1 %t69, label %then18, label %else19
then18:
  %t70 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %t38
  br label %merge20
else19:
  %t71 = getelementptr [7 x i8], [7 x i8]* @.str380, i32 0, i32 0
  %t72 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str380.c, i8* %t71, i64 6)
  %t73 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t72)
  store %Token %t73, %Token* %t74
  %t75 = getelementptr [6 x i8], [6 x i8]* @.str381, i32 0, i32 0
  %t76 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str381.c, i8* %t75, i64 5)
  %t77 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t76)
  %t78 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t78, { i64, i8* }** %t79
  %t80 = load { i64, i8* }*, { i64, i8* }** %t35
  %t81 = load %Token, %Token* %t74
  %t82 = call %nyx_string* @get_token_value(%Token %t81)
  %t83 = ptrtoint %nyx_string* %t82 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t80, i64 %t83, i64 2)
  %t84 = load { i64, i8* }*, { i64, i8* }** %t37
  %t85 = load { i64, i8* }*, { i64, i8* }** %t79
  %t86 = ptrtoint { i64, i8* }* %t85 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t84, i64 %t86, i64 5)
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
  %t87 = getelementptr [12 x i8], [12 x i8]* @.str382, i32 0, i32 0
  %t88 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str382.c, i8* %t87, i64 11)
  %t89 = call { i64, i8* }* @nyx_array_new_ptr()
  %t90 = load { i64, i8* }*, { i64, i8* }** %t35
  %t91 = ptrtoint { i64, i8* }* %t90 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t89, i64 %t91, i64 5)
  %t92 = load { i64, i8* }*, { i64, i8* }** %t37
  %t93 = ptrtoint { i64, i8* }* %t92 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t89, i64 %t93, i64 5)
  %t94 = call { i64, i8* }* @make_astnode(%nyx_string* %t88, { i64, i8* }* %t89)
  ret { i64, i8* }* %t94
}

define internal { i64, i8* }* @parse__parse_array_literal(%SharedEnv_parse* %env.param) {
  %t35 = alloca { i64, i8* }*
  %t37 = alloca i64
  %t38 = alloca i1
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = getelementptr [13 x i8], [13 x i8]* @.str383, i32 0, i32 0
  %t32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str383.c, i8* %t31, i64 12)
  %t33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t32)
  %t34 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t34, { i64, i8* }** %t35
  %t36 = load i64, i64* %t6
  store i64 %t36, i64* %t37
  store i64 0, i64* %t6
  store i1 0, i1* %t38
  br label %while_cond0
while_cond0:
  %t39 = load i1, i1* %t38
  %t40 = xor i1 %t39, true
  br i1 %t40, label %while_body1, label %while_end2
while_body1:
  %t41 = getelementptr [14 x i8], [14 x i8]* @.str384, i32 0, i32 0
  %t42 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str384.c, i8* %t41, i64 13)
  %t43 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t42)
  br i1 %t43, label %then3, label %else4
then3:
  %t44 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %t38
  br label %merge5
else4:
  %t45 = load { i64, i8* }*, { i64, i8* }** %t35
  %t46 = call i64 @nyx_array_length({ i64, i8* }* %t45)
  %t47 = icmp sgt i64 %t46, 0
  br i1 %t47, label %then6, label %else7
then6:
  %t48 = getelementptr [6 x i8], [6 x i8]* @.str385, i32 0, i32 0
  %t49 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str385.c, i8* %t48, i64 5)
  %t50 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t49)
  br label %merge8
else7:
  br label %merge8
merge8:
  %t51 = load { i64, i8* }*, { i64, i8* }** %t35
  %t52 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %t53 = ptrtoint { i64, i8* }* %t52 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t51, i64 %t53, i64 5)
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %t54 = load i64, i64* %t37
  store i64 %t54, i64* %t6
  %t55 = getelementptr [6 x i8], [6 x i8]* @.str386, i32 0, i32 0
  %t56 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str386.c, i8* %t55, i64 5)
  %t57 = call { i64, i8* }* @nyx_array_new_ptr()
  %t58 = load { i64, i8* }*, { i64, i8* }** %t35
  %t59 = ptrtoint { i64, i8* }* %t58 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t57, i64 %t59, i64 5)
  %t60 = call { i64, i8* }* @make_astnode(%nyx_string* %t56, { i64, i8* }* %t57)
  ret { i64, i8* }* %t60
}

define internal { i64, i8* }* @parse__parse_enum(%SharedEnv_parse* %env.param) {
  %t37 = alloca %Token
  %t40 = alloca %nyx_string*
  %t42 = alloca { i64, i8* }*
  %t50 = alloca %Token
  %t55 = alloca i1
  %t65 = alloca %Token
  %t77 = alloca { i64, i8* }*
  %t78 = alloca i1
  %t99 = alloca %Token
  %t102 = alloca %nyx_string*
  %t104 = alloca { i64, i8* }*
  %t109 = alloca i1
  %t125 = alloca %Token
  %t131 = alloca { i64, i8* }*
  %t151 = alloca { i64, i8* }*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = getelementptr [5 x i8], [5 x i8]* @.str387, i32 0, i32 0
  %t32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str387.c, i8* %t31, i64 4)
  %t33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t32)
  %t34 = getelementptr [11 x i8], [11 x i8]* @.str388, i32 0, i32 0
  %t35 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str388.c, i8* %t34, i64 10)
  %t36 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t35)
  store %Token %t36, %Token* %t37
  %t38 = load %Token, %Token* %t37
  %t39 = call %nyx_string* @get_token_value(%Token %t38)
  store %nyx_string* %t39, %nyx_string** %t40
  %t41 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t41, { i64, i8* }** %t42
  %t43 = getelementptr [5 x i8], [5 x i8]* @.str389, i32 0, i32 0
  %t44 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str389.c, i8* %t43, i64 4)
  %t45 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t44)
  br i1 %t45, label %then0, label %else1
then0:
  %t46 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t47 = getelementptr [11 x i8], [11 x i8]* @.str390, i32 0, i32 0
  %t48 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str390.c, i8* %t47, i64 10)
  %t49 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t48)
  store %Token %t49, %Token* %t50
  %t51 = load { i64, i8* }*, { i64, i8* }** %t42
  %t52 = load %Token, %Token* %t50
  %t53 = call %nyx_string* @get_token_value(%Token %t52)
  %t54 = ptrtoint %nyx_string* %t53 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t51, i64 %t54, i64 2)
  store i1 0, i1* %t55
  br label %while_cond3
while_cond3:
  %t56 = load i1, i1* %t55
  %t57 = xor i1 %t56, true
  br i1 %t57, label %while_body4, label %while_end5
while_body4:
  %t58 = getelementptr [6 x i8], [6 x i8]* @.str391, i32 0, i32 0
  %t59 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str391.c, i8* %t58, i64 5)
  %t60 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t59)
  br i1 %t60, label %then6, label %else7
then6:
  %t61 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t62 = getelementptr [11 x i8], [11 x i8]* @.str392, i32 0, i32 0
  %t63 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str392.c, i8* %t62, i64 10)
  %t64 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t63)
  store %Token %t64, %Token* %t65
  %t66 = load { i64, i8* }*, { i64, i8* }** %t42
  %t67 = load %Token, %Token* %t65
  %t68 = call %nyx_string* @get_token_value(%Token %t67)
  %t69 = ptrtoint %nyx_string* %t68 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t66, i64 %t69, i64 2)
  br label %merge8
else7:
  store i1 1, i1* %t55
  br label %merge8
merge8:
  br label %while_cond3
while_end5:
  %t70 = getelementptr [8 x i8], [8 x i8]* @.str393, i32 0, i32 0
  %t71 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str393.c, i8* %t70, i64 7)
  %t72 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t71)
  br label %merge2
else1:
  br label %merge2
merge2:
  %t73 = getelementptr [11 x i8], [11 x i8]* @.str394, i32 0, i32 0
  %t74 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str394.c, i8* %t73, i64 10)
  %t75 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t74)
  %t76 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t76, { i64, i8* }** %t77
  store i1 0, i1* %t78
  br label %while_cond9
while_cond9:
  %t79 = load i1, i1* %t78
  %t80 = xor i1 %t79, true
  br i1 %t80, label %while_body10, label %while_end11
while_body10:
  %t81 = getelementptr [12 x i8], [12 x i8]* @.str395, i32 0, i32 0
  %t82 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str395.c, i8* %t81, i64 11)
  %t83 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t82)
  br i1 %t83, label %then12, label %else13
then12:
  %t84 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %t78
  br label %merge14
else13:
  %t85 = load { i64, i8* }*, { i64, i8* }** %t77
  %t86 = call i64 @nyx_array_length({ i64, i8* }* %t85)
  %t87 = icmp sgt i64 %t86, 0
  br i1 %t87, label %then15, label %else16
then15:
  %t88 = getelementptr [6 x i8], [6 x i8]* @.str396, i32 0, i32 0
  %t89 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str396.c, i8* %t88, i64 5)
  %t90 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t89)
  br i1 %t90, label %then18, label %else19
then18:
  %t91 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge20
else19:
  br label %merge20
merge20:
  br label %merge17
else16:
  br label %merge17
merge17:
  %t92 = getelementptr [12 x i8], [12 x i8]* @.str397, i32 0, i32 0
  %t93 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str397.c, i8* %t92, i64 11)
  %t94 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t93)
  br i1 %t94, label %then21, label %else22
then21:
  %t95 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %t78
  br label %merge23
else22:
  %t96 = getelementptr [11 x i8], [11 x i8]* @.str398, i32 0, i32 0
  %t97 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str398.c, i8* %t96, i64 10)
  %t98 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t97)
  store %Token %t98, %Token* %t99
  %t100 = load %Token, %Token* %t99
  %t101 = call %nyx_string* @get_token_value(%Token %t100)
  store %nyx_string* %t101, %nyx_string** %t102
  %t103 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t103, { i64, i8* }** %t104
  %t105 = getelementptr [11 x i8], [11 x i8]* @.str399, i32 0, i32 0
  %t106 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str399.c, i8* %t105, i64 10)
  %t107 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t106)
  br i1 %t107, label %then24, label %else25
then24:
  %t108 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 0, i1* %t109
  br label %while_cond27
while_cond27:
  %t110 = load i1, i1* %t109
  %t111 = xor i1 %t110, true
  br i1 %t111, label %while_body28, label %while_end29
while_body28:
  %t112 = getelementptr [12 x i8], [12 x i8]* @.str400, i32 0, i32 0
  %t113 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str400.c, i8* %t112, i64 11)
  %t114 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t113)
  br i1 %t114, label %then30, label %else31
then30:
  %t115 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %t109
  br label %merge32
else31:
  %t116 = load { i64, i8* }*, { i64, i8* }** %t104
  %t117 = call i64 @nyx_array_length({ i64, i8* }* %t116)
  %t118 = icmp sgt i64 %t117, 0
  br i1 %t118, label %then33, label %else34
then33:
  %t119 = getelementptr [6 x i8], [6 x i8]* @.str401, i32 0, i32 0
  %t120 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str401.c, i8* %t119, i64 5)
  %t121 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t120)
  br label %merge35
else34:
  br label %merge35
merge35:
  %t122 = getelementptr [11 x i8], [11 x i8]* @.str402, i32 0, i32 0
  %t123 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str402.c, i8* %t122, i64 10)
  %t124 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t123)
  store %Token %t124, %Token* %t125
  %t126 = load { i64, i8* }*, { i64, i8* }** %t104
  %t127 = load %Token, %Token* %t125
  %t128 = call %nyx_string* @get_token_value(%Token %t127)
  %t129 = ptrtoint %nyx_string* %t128 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t126, i64 %t129, i64 2)
  br label %merge32
merge32:
  br label %while_cond27
while_end29:
  br label %merge26
else25:
  br label %merge26
merge26:
  %t130 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t130, { i64, i8* }** %t131
  %t132 = load { i64, i8* }*, { i64, i8* }** %t131
  %t133 = load %nyx_string*, %nyx_string** %t102
  %t134 = ptrtoint %nyx_string* %t133 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t132, i64 %t134, i64 2)
  %t135 = load { i64, i8* }*, { i64, i8* }** %t131
  %t136 = load { i64, i8* }*, { i64, i8* }** %t104
  %t137 = ptrtoint { i64, i8* }* %t136 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t135, i64 %t137, i64 5)
  %t138 = load { i64, i8* }*, { i64, i8* }** %t77
  %t139 = load { i64, i8* }*, { i64, i8* }** %t131
  %t140 = ptrtoint { i64, i8* }* %t139 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t138, i64 %t140, i64 5)
  br label %merge23
merge23:
  br label %merge14
merge14:
  br label %while_cond9
while_end11:
  %t141 = getelementptr [9 x i8], [9 x i8]* @.str403, i32 0, i32 0
  %t142 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str403.c, i8* %t141, i64 8)
  %t143 = call { i64, i8* }* @nyx_array_new_ptr()
  %t144 = load %nyx_string*, %nyx_string** %t40
  %t145 = ptrtoint %nyx_string* %t144 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t143, i64 %t145, i64 2)
  %t146 = load { i64, i8* }*, { i64, i8* }** %t77
  %t147 = ptrtoint { i64, i8* }* %t146 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t143, i64 %t147, i64 5)
  %t148 = load { i64, i8* }*, { i64, i8* }** %t42
  %t149 = ptrtoint { i64, i8* }* %t148 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t143, i64 %t149, i64 5)
  %t150 = call { i64, i8* }* @make_astnode(%nyx_string* %t142, { i64, i8* }* %t143)
  store { i64, i8* }* %t150, { i64, i8* }** %t151
  %t152 = load { i64, i8* }*, { i64, i8* }** %t151
  %t153 = load %Token, %Token* %t37
  %t154 = call i64 @get_token_line(%Token %t153)
  call void @nyx_array_set({ i64, i8* }* %t152, i64 2, i64 %t154)
  %t155 = load { i64, i8* }*, { i64, i8* }** %t151
  ret { i64, i8* }* %t155
}

define internal { i64, i8* }* @parse__parse_single_pattern(%SharedEnv_parse* %env.param) {
  %t35 = alloca { i64, i8* }*
  %t40 = alloca %Token
  %t43 = alloca %nyx_string*
  %t64 = alloca %nyx_string*
  %t72 = alloca %Token
  %t81 = alloca %Token
  %t104 = alloca %nyx_string*
  %t112 = alloca %Token
  %t121 = alloca %Token
  %t151 = alloca %Token
  %t198 = alloca %Token
  %t201 = alloca %nyx_string*
  %t225 = alloca %nyx_string*
  %t233 = alloca %Token
  %t242 = alloca %Token
  %t268 = alloca %nyx_string*
  %t276 = alloca %Token
  %t285 = alloca %Token
  %t321 = alloca %Token
  %t324 = alloca %nyx_string*
  %t332 = alloca %nyx_string*
  %t340 = alloca %Token
  %t343 = alloca %nyx_string*
  %t345 = alloca { i64, i8* }*
  %t346 = alloca i1
  %t348 = alloca { i64, i8* }*
  %t353 = alloca i1
  %t367 = alloca { i64, i8* }*
  %t373 = alloca %nyx_string*
  %t374 = alloca i1
  %t397 = alloca i64
  %t412 = alloca %ASTNode
  %t418 = alloca %ASTNode
  %t432 = alloca %nyx_string*
  %t453 = alloca { i64, i8* }*
  %t467 = alloca %Token
  %t470 = alloca %nyx_string*
  %t472 = alloca %nyx_string*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = getelementptr [9 x i8], [9 x i8]* @.str404, i32 0, i32 0
  %t32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str404.c, i8* %t31, i64 8)
  %t33 = call { i64, i8* }* @nyx_array_new_ptr()
  %t34 = call { i64, i8* }* @make_astnode(%nyx_string* %t32, { i64, i8* }* %t33)
  store { i64, i8* }* %t34, { i64, i8* }** %t35
  %t36 = getelementptr [7 x i8], [7 x i8]* @.str405, i32 0, i32 0
  %t37 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str405.c, i8* %t36, i64 6)
  %t38 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t37)
  br i1 %t38, label %then0, label %else1
then0:
  %t39 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store %Token %t39, %Token* %t40
  %t41 = load %Token, %Token* %t40
  %t42 = call %nyx_string* @get_token_value(%Token %t41)
  store %nyx_string* %t42, %nyx_string** %t43
  %t44 = load %nyx_string*, %nyx_string** %t43
  %t45 = getelementptr [2 x i8], [2 x i8]* @.str406, i32 0, i32 0
  %t46 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str406.c, i8* %t45, i64 1)
  %t47 = call i64 @nyx_string_index_of(%nyx_string* %t44, %nyx_string* %t46)
  %t48 = icmp sge i64 %t47, 0
  br i1 %t48, label %then3, label %else4
then3:
  %t49 = getelementptr [16 x i8], [16 x i8]* @.str407, i32 0, i32 0
  %t50 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str407.c, i8* %t49, i64 15)
  %t51 = call { i64, i8* }* @nyx_array_new_ptr()
  %t52 = load %nyx_string*, %nyx_string** %t43
  %t53 = ptrtoint %nyx_string* %t52 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t51, i64 %t53, i64 2)
  %t54 = getelementptr [6 x i8], [6 x i8]* @.str408, i32 0, i32 0
  %t55 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str408.c, i8* %t54, i64 5)
  %t56 = ptrtoint %nyx_string* %t55 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t51, i64 %t56, i64 2)
  %t57 = call { i64, i8* }* @make_astnode(%nyx_string* %t50, { i64, i8* }* %t51)
  ret { i64, i8* }* %t57
else4:
  br label %merge5
merge5:
  %t58 = getelementptr [16 x i8], [16 x i8]* @.str409, i32 0, i32 0
  %t59 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str409.c, i8* %t58, i64 15)
  %t60 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t59)
  br i1 %t60, label %then6, label %else7
then6:
  %t61 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t62 = getelementptr [1 x i8], [1 x i8]* @.str410, i32 0, i32 0
  %t63 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str410.c, i8* %t62, i64 0)
  store %nyx_string* %t63, %nyx_string** %t64
  %t65 = getelementptr [6 x i8], [6 x i8]* @.str411, i32 0, i32 0
  %t66 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str411.c, i8* %t65, i64 5)
  %t67 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t66)
  br i1 %t67, label %then9, label %else10
then9:
  %t68 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t69 = getelementptr [7 x i8], [7 x i8]* @.str412, i32 0, i32 0
  %t70 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str412.c, i8* %t69, i64 6)
  %t71 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t70)
  store %Token %t71, %Token* %t72
  %t73 = getelementptr [2 x i8], [2 x i8]* @.str413, i32 0, i32 0
  %t74 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str413.c, i8* %t73, i64 1)
  %t75 = load %Token, %Token* %t72
  %t76 = call %nyx_string* @get_token_value(%Token %t75)
  %t77 = call %nyx_string* @nyx_string_concat(%nyx_string* %t74, %nyx_string* %t76)
  store %nyx_string* %t77, %nyx_string** %t64
  br label %merge11
else10:
  %t78 = getelementptr [7 x i8], [7 x i8]* @.str414, i32 0, i32 0
  %t79 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str414.c, i8* %t78, i64 6)
  %t80 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t79)
  store %Token %t80, %Token* %t81
  %t82 = load %Token, %Token* %t81
  %t83 = call %nyx_string* @get_token_value(%Token %t82)
  store %nyx_string* %t83, %nyx_string** %t64
  br label %merge11
merge11:
  %t84 = getelementptr [14 x i8], [14 x i8]* @.str415, i32 0, i32 0
  %t85 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str415.c, i8* %t84, i64 13)
  %t86 = call { i64, i8* }* @nyx_array_new_ptr()
  %t87 = load %nyx_string*, %nyx_string** %t43
  %t88 = ptrtoint %nyx_string* %t87 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t86, i64 %t88, i64 2)
  %t89 = load %nyx_string*, %nyx_string** %t64
  %t90 = ptrtoint %nyx_string* %t89 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t86, i64 %t90, i64 2)
  %t91 = getelementptr [5 x i8], [5 x i8]* @.str416, i32 0, i32 0
  %t92 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str416.c, i8* %t91, i64 4)
  %t93 = ptrtoint %nyx_string* %t92 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t86, i64 %t93, i64 2)
  %t94 = getelementptr [4 x i8], [4 x i8]* @.str417, i32 0, i32 0
  %t95 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str417.c, i8* %t94, i64 3)
  %t96 = ptrtoint %nyx_string* %t95 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t86, i64 %t96, i64 2)
  %t97 = call { i64, i8* }* @make_astnode(%nyx_string* %t85, { i64, i8* }* %t86)
  ret { i64, i8* }* %t97
else7:
  br label %merge8
merge8:
  %t98 = getelementptr [6 x i8], [6 x i8]* @.str418, i32 0, i32 0
  %t99 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str418.c, i8* %t98, i64 5)
  %t100 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t99)
  br i1 %t100, label %then12, label %else13
then12:
  %t101 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t102 = getelementptr [1 x i8], [1 x i8]* @.str419, i32 0, i32 0
  %t103 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str419.c, i8* %t102, i64 0)
  store %nyx_string* %t103, %nyx_string** %t104
  %t105 = getelementptr [6 x i8], [6 x i8]* @.str420, i32 0, i32 0
  %t106 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str420.c, i8* %t105, i64 5)
  %t107 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t106)
  br i1 %t107, label %then15, label %else16
then15:
  %t108 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t109 = getelementptr [7 x i8], [7 x i8]* @.str421, i32 0, i32 0
  %t110 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str421.c, i8* %t109, i64 6)
  %t111 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t110)
  store %Token %t111, %Token* %t112
  %t113 = getelementptr [2 x i8], [2 x i8]* @.str422, i32 0, i32 0
  %t114 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str422.c, i8* %t113, i64 1)
  %t115 = load %Token, %Token* %t112
  %t116 = call %nyx_string* @get_token_value(%Token %t115)
  %t117 = call %nyx_string* @nyx_string_concat(%nyx_string* %t114, %nyx_string* %t116)
  store %nyx_string* %t117, %nyx_string** %t104
  br label %merge17
else16:
  %t118 = getelementptr [7 x i8], [7 x i8]* @.str423, i32 0, i32 0
  %t119 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str423.c, i8* %t118, i64 6)
  %t120 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t119)
  store %Token %t120, %Token* %t121
  %t122 = load %Token, %Token* %t121
  %t123 = call %nyx_string* @get_token_value(%Token %t122)
  store %nyx_string* %t123, %nyx_string** %t104
  br label %merge17
merge17:
  %t124 = getelementptr [14 x i8], [14 x i8]* @.str424, i32 0, i32 0
  %t125 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str424.c, i8* %t124, i64 13)
  %t126 = call { i64, i8* }* @nyx_array_new_ptr()
  %t127 = load %nyx_string*, %nyx_string** %t43
  %t128 = ptrtoint %nyx_string* %t127 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t126, i64 %t128, i64 2)
  %t129 = load %nyx_string*, %nyx_string** %t104
  %t130 = ptrtoint %nyx_string* %t129 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t126, i64 %t130, i64 2)
  %t131 = getelementptr [6 x i8], [6 x i8]* @.str425, i32 0, i32 0
  %t132 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str425.c, i8* %t131, i64 5)
  %t133 = ptrtoint %nyx_string* %t132 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t126, i64 %t133, i64 2)
  %t134 = getelementptr [4 x i8], [4 x i8]* @.str426, i32 0, i32 0
  %t135 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str426.c, i8* %t134, i64 3)
  %t136 = ptrtoint %nyx_string* %t135 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t126, i64 %t136, i64 2)
  %t137 = call { i64, i8* }* @make_astnode(%nyx_string* %t125, { i64, i8* }* %t126)
  ret { i64, i8* }* %t137
else13:
  br label %merge14
merge14:
  %t138 = getelementptr [16 x i8], [16 x i8]* @.str427, i32 0, i32 0
  %t139 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str427.c, i8* %t138, i64 15)
  %t140 = call { i64, i8* }* @nyx_array_new_ptr()
  %t141 = load %nyx_string*, %nyx_string** %t43
  %t142 = ptrtoint %nyx_string* %t141 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t140, i64 %t142, i64 2)
  %t143 = getelementptr [4 x i8], [4 x i8]* @.str428, i32 0, i32 0
  %t144 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str428.c, i8* %t143, i64 3)
  %t145 = ptrtoint %nyx_string* %t144 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t140, i64 %t145, i64 2)
  %t146 = call { i64, i8* }* @make_astnode(%nyx_string* %t139, { i64, i8* }* %t140)
  ret { i64, i8* }* %t146
else1:
  br label %merge2
merge2:
  %t147 = getelementptr [7 x i8], [7 x i8]* @.str429, i32 0, i32 0
  %t148 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str429.c, i8* %t147, i64 6)
  %t149 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t148)
  br i1 %t149, label %then18, label %else19
then18:
  %t150 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store %Token %t150, %Token* %t151
  %t152 = getelementptr [16 x i8], [16 x i8]* @.str430, i32 0, i32 0
  %t153 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str430.c, i8* %t152, i64 15)
  %t154 = call { i64, i8* }* @nyx_array_new_ptr()
  %t155 = load %Token, %Token* %t151
  %t156 = call %nyx_string* @get_token_value(%Token %t155)
  %t157 = ptrtoint %nyx_string* %t156 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t154, i64 %t157, i64 2)
  %t158 = getelementptr [7 x i8], [7 x i8]* @.str431, i32 0, i32 0
  %t159 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str431.c, i8* %t158, i64 6)
  %t160 = ptrtoint %nyx_string* %t159 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t154, i64 %t160, i64 2)
  %t161 = call { i64, i8* }* @make_astnode(%nyx_string* %t153, { i64, i8* }* %t154)
  ret { i64, i8* }* %t161
else19:
  br label %merge20
merge20:
  %t162 = getelementptr [5 x i8], [5 x i8]* @.str432, i32 0, i32 0
  %t163 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str432.c, i8* %t162, i64 4)
  %t164 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t163)
  br i1 %t164, label %then21, label %else22
then21:
  %t165 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t166 = getelementptr [16 x i8], [16 x i8]* @.str433, i32 0, i32 0
  %t167 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str433.c, i8* %t166, i64 15)
  %t168 = call { i64, i8* }* @nyx_array_new_ptr()
  %t169 = getelementptr [5 x i8], [5 x i8]* @.str434, i32 0, i32 0
  %t170 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str434.c, i8* %t169, i64 4)
  %t171 = ptrtoint %nyx_string* %t170 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t168, i64 %t171, i64 2)
  %t172 = getelementptr [5 x i8], [5 x i8]* @.str435, i32 0, i32 0
  %t173 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str435.c, i8* %t172, i64 4)
  %t174 = ptrtoint %nyx_string* %t173 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t168, i64 %t174, i64 2)
  %t175 = call { i64, i8* }* @make_astnode(%nyx_string* %t167, { i64, i8* }* %t168)
  ret { i64, i8* }* %t175
else22:
  br label %merge23
merge23:
  %t176 = getelementptr [6 x i8], [6 x i8]* @.str436, i32 0, i32 0
  %t177 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str436.c, i8* %t176, i64 5)
  %t178 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t177)
  br i1 %t178, label %then24, label %else25
then24:
  %t179 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t180 = getelementptr [16 x i8], [16 x i8]* @.str437, i32 0, i32 0
  %t181 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str437.c, i8* %t180, i64 15)
  %t182 = call { i64, i8* }* @nyx_array_new_ptr()
  %t183 = getelementptr [6 x i8], [6 x i8]* @.str438, i32 0, i32 0
  %t184 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str438.c, i8* %t183, i64 5)
  %t185 = ptrtoint %nyx_string* %t184 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t182, i64 %t185, i64 2)
  %t186 = getelementptr [5 x i8], [5 x i8]* @.str439, i32 0, i32 0
  %t187 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str439.c, i8* %t186, i64 4)
  %t188 = ptrtoint %nyx_string* %t187 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t182, i64 %t188, i64 2)
  %t189 = call { i64, i8* }* @make_astnode(%nyx_string* %t181, { i64, i8* }* %t182)
  ret { i64, i8* }* %t189
else25:
  br label %merge26
merge26:
  %t190 = getelementptr [6 x i8], [6 x i8]* @.str440, i32 0, i32 0
  %t191 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str440.c, i8* %t190, i64 5)
  %t192 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t191)
  br i1 %t192, label %then27, label %else28
then27:
  %t193 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t194 = getelementptr [7 x i8], [7 x i8]* @.str441, i32 0, i32 0
  %t195 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str441.c, i8* %t194, i64 6)
  %t196 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t195)
  br i1 %t196, label %then30, label %else31
then30:
  %t197 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store %Token %t197, %Token* %t198
  %t199 = load %Token, %Token* %t198
  %t200 = call %nyx_string* @get_token_value(%Token %t199)
  store %nyx_string* %t200, %nyx_string** %t201
  %t202 = load %nyx_string*, %nyx_string** %t201
  %t203 = getelementptr [2 x i8], [2 x i8]* @.str442, i32 0, i32 0
  %t204 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str442.c, i8* %t203, i64 1)
  %t205 = call i64 @nyx_string_index_of(%nyx_string* %t202, %nyx_string* %t204)
  %t206 = icmp sge i64 %t205, 0
  br i1 %t206, label %then33, label %else34
then33:
  %t207 = getelementptr [16 x i8], [16 x i8]* @.str443, i32 0, i32 0
  %t208 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str443.c, i8* %t207, i64 15)
  %t209 = call { i64, i8* }* @nyx_array_new_ptr()
  %t210 = getelementptr [2 x i8], [2 x i8]* @.str444, i32 0, i32 0
  %t211 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str444.c, i8* %t210, i64 1)
  %t212 = load %nyx_string*, %nyx_string** %t201
  %t213 = call %nyx_string* @nyx_string_concat(%nyx_string* %t211, %nyx_string* %t212)
  %t214 = ptrtoint %nyx_string* %t213 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t209, i64 %t214, i64 2)
  %t215 = getelementptr [6 x i8], [6 x i8]* @.str445, i32 0, i32 0
  %t216 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str445.c, i8* %t215, i64 5)
  %t217 = ptrtoint %nyx_string* %t216 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t209, i64 %t217, i64 2)
  %t218 = call { i64, i8* }* @make_astnode(%nyx_string* %t208, { i64, i8* }* %t209)
  ret { i64, i8* }* %t218
else34:
  br label %merge35
merge35:
  %t219 = getelementptr [16 x i8], [16 x i8]* @.str446, i32 0, i32 0
  %t220 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str446.c, i8* %t219, i64 15)
  %t221 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t220)
  br i1 %t221, label %then36, label %else37
then36:
  %t222 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t223 = getelementptr [1 x i8], [1 x i8]* @.str447, i32 0, i32 0
  %t224 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str447.c, i8* %t223, i64 0)
  store %nyx_string* %t224, %nyx_string** %t225
  %t226 = getelementptr [6 x i8], [6 x i8]* @.str448, i32 0, i32 0
  %t227 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str448.c, i8* %t226, i64 5)
  %t228 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t227)
  br i1 %t228, label %then39, label %else40
then39:
  %t229 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t230 = getelementptr [7 x i8], [7 x i8]* @.str449, i32 0, i32 0
  %t231 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str449.c, i8* %t230, i64 6)
  %t232 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t231)
  store %Token %t232, %Token* %t233
  %t234 = getelementptr [2 x i8], [2 x i8]* @.str450, i32 0, i32 0
  %t235 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str450.c, i8* %t234, i64 1)
  %t236 = load %Token, %Token* %t233
  %t237 = call %nyx_string* @get_token_value(%Token %t236)
  %t238 = call %nyx_string* @nyx_string_concat(%nyx_string* %t235, %nyx_string* %t237)
  store %nyx_string* %t238, %nyx_string** %t225
  br label %merge41
else40:
  %t239 = getelementptr [7 x i8], [7 x i8]* @.str451, i32 0, i32 0
  %t240 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str451.c, i8* %t239, i64 6)
  %t241 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t240)
  store %Token %t241, %Token* %t242
  %t243 = load %Token, %Token* %t242
  %t244 = call %nyx_string* @get_token_value(%Token %t243)
  store %nyx_string* %t244, %nyx_string** %t225
  br label %merge41
merge41:
  %t245 = getelementptr [14 x i8], [14 x i8]* @.str452, i32 0, i32 0
  %t246 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str452.c, i8* %t245, i64 13)
  %t247 = call { i64, i8* }* @nyx_array_new_ptr()
  %t248 = getelementptr [2 x i8], [2 x i8]* @.str453, i32 0, i32 0
  %t249 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str453.c, i8* %t248, i64 1)
  %t250 = load %nyx_string*, %nyx_string** %t201
  %t251 = call %nyx_string* @nyx_string_concat(%nyx_string* %t249, %nyx_string* %t250)
  %t252 = ptrtoint %nyx_string* %t251 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t247, i64 %t252, i64 2)
  %t253 = load %nyx_string*, %nyx_string** %t225
  %t254 = ptrtoint %nyx_string* %t253 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t247, i64 %t254, i64 2)
  %t255 = getelementptr [5 x i8], [5 x i8]* @.str454, i32 0, i32 0
  %t256 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str454.c, i8* %t255, i64 4)
  %t257 = ptrtoint %nyx_string* %t256 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t247, i64 %t257, i64 2)
  %t258 = getelementptr [4 x i8], [4 x i8]* @.str455, i32 0, i32 0
  %t259 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str455.c, i8* %t258, i64 3)
  %t260 = ptrtoint %nyx_string* %t259 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t247, i64 %t260, i64 2)
  %t261 = call { i64, i8* }* @make_astnode(%nyx_string* %t246, { i64, i8* }* %t247)
  ret { i64, i8* }* %t261
else37:
  br label %merge38
merge38:
  %t262 = getelementptr [6 x i8], [6 x i8]* @.str456, i32 0, i32 0
  %t263 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str456.c, i8* %t262, i64 5)
  %t264 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t263)
  br i1 %t264, label %then42, label %else43
then42:
  %t265 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t266 = getelementptr [1 x i8], [1 x i8]* @.str457, i32 0, i32 0
  %t267 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str457.c, i8* %t266, i64 0)
  store %nyx_string* %t267, %nyx_string** %t268
  %t269 = getelementptr [6 x i8], [6 x i8]* @.str458, i32 0, i32 0
  %t270 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str458.c, i8* %t269, i64 5)
  %t271 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t270)
  br i1 %t271, label %then45, label %else46
then45:
  %t272 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t273 = getelementptr [7 x i8], [7 x i8]* @.str459, i32 0, i32 0
  %t274 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str459.c, i8* %t273, i64 6)
  %t275 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t274)
  store %Token %t275, %Token* %t276
  %t277 = getelementptr [2 x i8], [2 x i8]* @.str460, i32 0, i32 0
  %t278 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str460.c, i8* %t277, i64 1)
  %t279 = load %Token, %Token* %t276
  %t280 = call %nyx_string* @get_token_value(%Token %t279)
  %t281 = call %nyx_string* @nyx_string_concat(%nyx_string* %t278, %nyx_string* %t280)
  store %nyx_string* %t281, %nyx_string** %t268
  br label %merge47
else46:
  %t282 = getelementptr [7 x i8], [7 x i8]* @.str461, i32 0, i32 0
  %t283 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str461.c, i8* %t282, i64 6)
  %t284 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t283)
  store %Token %t284, %Token* %t285
  %t286 = load %Token, %Token* %t285
  %t287 = call %nyx_string* @get_token_value(%Token %t286)
  store %nyx_string* %t287, %nyx_string** %t268
  br label %merge47
merge47:
  %t288 = getelementptr [14 x i8], [14 x i8]* @.str462, i32 0, i32 0
  %t289 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str462.c, i8* %t288, i64 13)
  %t290 = call { i64, i8* }* @nyx_array_new_ptr()
  %t291 = getelementptr [2 x i8], [2 x i8]* @.str463, i32 0, i32 0
  %t292 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str463.c, i8* %t291, i64 1)
  %t293 = load %nyx_string*, %nyx_string** %t201
  %t294 = call %nyx_string* @nyx_string_concat(%nyx_string* %t292, %nyx_string* %t293)
  %t295 = ptrtoint %nyx_string* %t294 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t290, i64 %t295, i64 2)
  %t296 = load %nyx_string*, %nyx_string** %t268
  %t297 = ptrtoint %nyx_string* %t296 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t290, i64 %t297, i64 2)
  %t298 = getelementptr [6 x i8], [6 x i8]* @.str464, i32 0, i32 0
  %t299 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str464.c, i8* %t298, i64 5)
  %t300 = ptrtoint %nyx_string* %t299 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t290, i64 %t300, i64 2)
  %t301 = getelementptr [4 x i8], [4 x i8]* @.str465, i32 0, i32 0
  %t302 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str465.c, i8* %t301, i64 3)
  %t303 = ptrtoint %nyx_string* %t302 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t290, i64 %t303, i64 2)
  %t304 = call { i64, i8* }* @make_astnode(%nyx_string* %t289, { i64, i8* }* %t290)
  ret { i64, i8* }* %t304
else43:
  br label %merge44
merge44:
  %t305 = getelementptr [16 x i8], [16 x i8]* @.str466, i32 0, i32 0
  %t306 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str466.c, i8* %t305, i64 15)
  %t307 = call { i64, i8* }* @nyx_array_new_ptr()
  %t308 = getelementptr [2 x i8], [2 x i8]* @.str467, i32 0, i32 0
  %t309 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str467.c, i8* %t308, i64 1)
  %t310 = load %nyx_string*, %nyx_string** %t201
  %t311 = call %nyx_string* @nyx_string_concat(%nyx_string* %t309, %nyx_string* %t310)
  %t312 = ptrtoint %nyx_string* %t311 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t307, i64 %t312, i64 2)
  %t313 = getelementptr [4 x i8], [4 x i8]* @.str468, i32 0, i32 0
  %t314 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str468.c, i8* %t313, i64 3)
  %t315 = ptrtoint %nyx_string* %t314 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t307, i64 %t315, i64 2)
  %t316 = call { i64, i8* }* @make_astnode(%nyx_string* %t306, { i64, i8* }* %t307)
  ret { i64, i8* }* %t316
else31:
  br label %merge32
merge32:
  br label %merge29
else28:
  br label %merge29
merge29:
  %t317 = getelementptr [11 x i8], [11 x i8]* @.str469, i32 0, i32 0
  %t318 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str469.c, i8* %t317, i64 10)
  %t319 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t318)
  br i1 %t319, label %then48, label %else49
then48:
  %t320 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  store %Token %t320, %Token* %t321
  %t322 = load %Token, %Token* %t321
  %t323 = call %nyx_string* @get_token_value(%Token %t322)
  store %nyx_string* %t323, %nyx_string** %t324
  %t325 = load %nyx_string*, %nyx_string** %t324
  %t326 = getelementptr [2 x i8], [2 x i8]* @.str470, i32 0, i32 0
  %t327 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str470.c, i8* %t326, i64 1)
  %t328 = call i1 @nyx_string_equals(%nyx_string* %t325, %nyx_string* %t327)
  br i1 %t328, label %then51, label %else52
then51:
  %t329 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge53
else52:
  %t330 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t331 = load %nyx_string*, %nyx_string** %t324
  store %nyx_string* %t331, %nyx_string** %t332
  %t333 = getelementptr [4 x i8], [4 x i8]* @.str471, i32 0, i32 0
  %t334 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str471.c, i8* %t333, i64 3)
  %t335 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t334)
  br i1 %t335, label %then54, label %else55
then54:
  %t336 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t337 = getelementptr [11 x i8], [11 x i8]* @.str472, i32 0, i32 0
  %t338 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str472.c, i8* %t337, i64 10)
  %t339 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t338)
  store %Token %t339, %Token* %t340
  %t341 = load %Token, %Token* %t340
  %t342 = call %nyx_string* @get_token_value(%Token %t341)
  store %nyx_string* %t342, %nyx_string** %t343
  %t344 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t344, { i64, i8* }** %t345
  store i1 0, i1* %t346
  %t347 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t347, { i64, i8* }** %t348
  %t349 = getelementptr [11 x i8], [11 x i8]* @.str473, i32 0, i32 0
  %t350 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str473.c, i8* %t349, i64 10)
  %t351 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t350)
  br i1 %t351, label %then57, label %else58
then57:
  %t352 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 0, i1* %t353
  br label %while_cond60
while_cond60:
  %t354 = load i1, i1* %t353
  %t355 = xor i1 %t354, true
  br i1 %t355, label %while_body61, label %while_end62
while_body61:
  %t356 = getelementptr [12 x i8], [12 x i8]* @.str474, i32 0, i32 0
  %t357 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str474.c, i8* %t356, i64 11)
  %t358 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t357)
  br i1 %t358, label %then63, label %else64
then63:
  %t359 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %t353
  br label %merge65
else64:
  %t360 = load { i64, i8* }*, { i64, i8* }** %t348
  %t361 = call i64 @nyx_array_length({ i64, i8* }* %t360)
  %t362 = icmp sgt i64 %t361, 0
  br i1 %t362, label %then66, label %else67
then66:
  %t363 = getelementptr [6 x i8], [6 x i8]* @.str475, i32 0, i32 0
  %t364 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str475.c, i8* %t363, i64 5)
  %t365 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t364)
  br label %merge68
else67:
  br label %merge68
merge68:
  %t366 = call { i64, i8* }* @parse__parse_single_pattern(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t366, { i64, i8* }** %t367
  %t368 = load { i64, i8* }*, { i64, i8* }** %t348
  %t369 = load { i64, i8* }*, { i64, i8* }** %t367
  %t370 = ptrtoint { i64, i8* }* %t369 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t368, i64 %t370, i64 5)
  %t371 = load { i64, i8* }*, { i64, i8* }** %t367
  %t372 = call %nyx_string* @astnode_get_type({ i64, i8* }* %t371)
  store %nyx_string* %t372, %nyx_string** %t373
  store i1 false, i1* %t374
  %t375 = load %nyx_string*, %nyx_string** %t373
  %t376 = getelementptr [19 x i8], [19 x i8]* @.str476, i32 0, i32 0
  %t377 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str476.c, i8* %t376, i64 18)
  %t378 = call i1 @nyx_string_equals(%nyx_string* %t375, %nyx_string* %t377)
  %t379 = xor i1 %t378, true
  br i1 %t379, label %sc_and_rhs69, label %sc_and_end70
sc_and_rhs69:
  %t380 = load %nyx_string*, %nyx_string** %t373
  %t381 = getelementptr [9 x i8], [9 x i8]* @.str477, i32 0, i32 0
  %t382 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str477.c, i8* %t381, i64 8)
  %t383 = call i1 @nyx_string_equals(%nyx_string* %t380, %nyx_string* %t382)
  %t384 = xor i1 %t383, true
  store i1 %t384, i1* %t374
  br label %sc_and_end70
sc_and_end70:
  %t385 = load i1, i1* %t374
  br i1 %t385, label %then71, label %else72
then71:
  store i1 1, i1* %t346
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
  %t386 = load i1, i1* %t346
  br i1 %t386, label %then74, label %else75
then74:
  %t387 = getelementptr [21 x i8], [21 x i8]* @.str478, i32 0, i32 0
  %t388 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str478.c, i8* %t387, i64 20)
  %t389 = call { i64, i8* }* @nyx_array_new_ptr()
  %t390 = load %nyx_string*, %nyx_string** %t332
  %t391 = ptrtoint %nyx_string* %t390 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t389, i64 %t391, i64 2)
  %t392 = load %nyx_string*, %nyx_string** %t343
  %t393 = ptrtoint %nyx_string* %t392 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t389, i64 %t393, i64 2)
  %t394 = load { i64, i8* }*, { i64, i8* }** %t348
  %t395 = ptrtoint { i64, i8* }* %t394 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t389, i64 %t395, i64 5)
  %t396 = call { i64, i8* }* @make_astnode(%nyx_string* %t388, { i64, i8* }* %t389)
  store { i64, i8* }* %t396, { i64, i8* }** %t35
  br label %merge76
else75:
  store i64 0, i64* %t397
  br label %while_cond77
while_cond77:
  %t398 = load i64, i64* %t397
  %t399 = load { i64, i8* }*, { i64, i8* }** %t348
  %t400 = call i64 @nyx_array_length({ i64, i8* }* %t399)
  %t401 = icmp slt i64 %t398, %t400
  br i1 %t401, label %while_body78, label %while_end79
while_body78:
  %t402 = load { i64, i8* }*, { i64, i8* }** %t348
  %t403 = load i64, i64* %t397
  %t404 = call i64 @nyx_array_get({ i64, i8* }* %t402, i64 %t403)
  %t405 = inttoptr i64 %t404 to { i64, i8* }*
  %t406 = call i64 @nyx_array_get({ i64, i8* }* %t405, i64 0)
  %t407 = call i64 @nyx_array_get({ i64, i8* }* %t405, i64 1)
  %t408 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t405, i64 2)
  %t409 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t405, i64 3)
  %t410 = inttoptr i64 %t406 to %nyx_string*
  %t411 = inttoptr i64 %t407 to { i64, i8* }*
  %t413 = getelementptr inbounds %ASTNode, %ASTNode* %t412, i32 0, i32 0
  store %nyx_string* %t410, %nyx_string** %t413
  %t414 = getelementptr inbounds %ASTNode, %ASTNode* %t412, i32 0, i32 1
  store { i64, i8* }* %t411, { i64, i8* }** %t414
  %t415 = getelementptr inbounds %ASTNode, %ASTNode* %t412, i32 0, i32 2
  store i64 %t408, i64* %t415
  %t416 = getelementptr inbounds %ASTNode, %ASTNode* %t412, i32 0, i32 3
  store i64 %t409, i64* %t416
  %t417 = load %ASTNode, %ASTNode* %t412
  store %ASTNode %t417, %ASTNode* %t418
  %t419 = getelementptr %ASTNode, %ASTNode* %t418, i32 0, i32 0
  %t420 = load %nyx_string*, %nyx_string** %t419
  %t421 = getelementptr [9 x i8], [9 x i8]* @.str479, i32 0, i32 0
  %t422 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str479.c, i8* %t421, i64 8)
  %t423 = call i1 @nyx_string_equals(%nyx_string* %t420, %nyx_string* %t422)
  br i1 %t423, label %then80, label %else81
then80:
  %t424 = load { i64, i8* }*, { i64, i8* }** %t345
  %t425 = getelementptr [2 x i8], [2 x i8]* @.str480, i32 0, i32 0
  %t426 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str480.c, i8* %t425, i64 1)
  %t427 = ptrtoint %nyx_string* %t426 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t424, i64 %t427, i64 2)
  br label %merge82
else81:
  %t428 = getelementptr %ASTNode, %ASTNode* %t418, i32 0, i32 1
  %t429 = load { i64, i8* }*, { i64, i8* }** %t428
  %t430 = call i64 @nyx_array_get({ i64, i8* }* %t429, i64 0)
  %t431 = inttoptr i64 %t430 to %nyx_string*
  store %nyx_string* %t431, %nyx_string** %t432
  %t433 = load { i64, i8* }*, { i64, i8* }** %t345
  %t434 = load %nyx_string*, %nyx_string** %t432
  %t435 = ptrtoint %nyx_string* %t434 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t433, i64 %t435, i64 2)
  br label %merge82
merge82:
  %t436 = load i64, i64* %t397
  %t437 = add i64 %t436, 1
  store i64 %t437, i64* %t397
  br label %while_cond77
while_end79:
  %t438 = getelementptr [14 x i8], [14 x i8]* @.str481, i32 0, i32 0
  %t439 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str481.c, i8* %t438, i64 13)
  %t440 = call { i64, i8* }* @nyx_array_new_ptr()
  %t441 = load %nyx_string*, %nyx_string** %t332
  %t442 = ptrtoint %nyx_string* %t441 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t440, i64 %t442, i64 2)
  %t443 = load %nyx_string*, %nyx_string** %t343
  %t444 = ptrtoint %nyx_string* %t443 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t440, i64 %t444, i64 2)
  %t445 = load { i64, i8* }*, { i64, i8* }** %t345
  %t446 = ptrtoint { i64, i8* }* %t445 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t440, i64 %t446, i64 5)
  %t447 = call { i64, i8* }* @make_astnode(%nyx_string* %t439, { i64, i8* }* %t440)
  store { i64, i8* }* %t447, { i64, i8* }** %t35
  br label %merge76
merge76:
  br label %merge56
else55:
  %t448 = getelementptr [11 x i8], [11 x i8]* @.str482, i32 0, i32 0
  %t449 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str482.c, i8* %t448, i64 10)
  %t450 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t449)
  br i1 %t450, label %then83, label %else84
then83:
  %t451 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t452 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t452, { i64, i8* }** %t453
  br label %while_cond86
while_cond86:
  %t454 = getelementptr [12 x i8], [12 x i8]* @.str483, i32 0, i32 0
  %t455 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str483.c, i8* %t454, i64 11)
  %t456 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t455)
  %t457 = xor i1 %t456, true
  br i1 %t457, label %while_body87, label %while_end88
while_body87:
  %t458 = load { i64, i8* }*, { i64, i8* }** %t453
  %t459 = call i64 @nyx_array_length({ i64, i8* }* %t458)
  %t460 = icmp sgt i64 %t459, 0
  br i1 %t460, label %then89, label %else90
then89:
  %t461 = getelementptr [6 x i8], [6 x i8]* @.str484, i32 0, i32 0
  %t462 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str484.c, i8* %t461, i64 5)
  %t463 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t462)
  br label %merge91
else90:
  br label %merge91
merge91:
  %t464 = getelementptr [11 x i8], [11 x i8]* @.str485, i32 0, i32 0
  %t465 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str485.c, i8* %t464, i64 10)
  %t466 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t465)
  store %Token %t466, %Token* %t467
  %t468 = load %Token, %Token* %t467
  %t469 = call %nyx_string* @get_token_value(%Token %t468)
  store %nyx_string* %t469, %nyx_string** %t470
  %t471 = load %nyx_string*, %nyx_string** %t470
  store %nyx_string* %t471, %nyx_string** %t472
  %t473 = getelementptr [6 x i8], [6 x i8]* @.str486, i32 0, i32 0
  %t474 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str486.c, i8* %t473, i64 5)
  %t475 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t474)
  br i1 %t475, label %then92, label %else93
then92:
  %t476 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t477 = getelementptr [11 x i8], [11 x i8]* @.str487, i32 0, i32 0
  %t478 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str487.c, i8* %t477, i64 10)
  %t479 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t478)
  %t480 = call %nyx_string* @get_token_value(%Token %t479)
  store %nyx_string* %t480, %nyx_string** %t472
  br label %merge94
else93:
  br label %merge94
merge94:
  %t481 = load { i64, i8* }*, { i64, i8* }** %t453
  %t482 = call { i64, i8* }* @nyx_array_new_ptr()
  %t483 = load %nyx_string*, %nyx_string** %t470
  %t484 = ptrtoint %nyx_string* %t483 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t482, i64 %t484, i64 2)
  %t485 = load %nyx_string*, %nyx_string** %t472
  %t486 = ptrtoint %nyx_string* %t485 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t482, i64 %t486, i64 2)
  %t487 = ptrtoint { i64, i8* }* %t482 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t481, i64 %t487, i64 5)
  br label %while_cond86
while_end88:
  %t488 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t489 = getelementptr [15 x i8], [15 x i8]* @.str488, i32 0, i32 0
  %t490 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str488.c, i8* %t489, i64 14)
  %t491 = call { i64, i8* }* @nyx_array_new_ptr()
  %t492 = load %nyx_string*, %nyx_string** %t332
  %t493 = ptrtoint %nyx_string* %t492 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t491, i64 %t493, i64 2)
  %t494 = load { i64, i8* }*, { i64, i8* }** %t453
  %t495 = ptrtoint { i64, i8* }* %t494 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t491, i64 %t495, i64 5)
  %t496 = call { i64, i8* }* @make_astnode(%nyx_string* %t490, { i64, i8* }* %t491)
  store { i64, i8* }* %t496, { i64, i8* }** %t35
  br label %merge85
else84:
  %t497 = getelementptr [19 x i8], [19 x i8]* @.str489, i32 0, i32 0
  %t498 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str489.c, i8* %t497, i64 18)
  %t499 = call { i64, i8* }* @nyx_array_new_ptr()
  %t500 = load %nyx_string*, %nyx_string** %t332
  %t501 = ptrtoint %nyx_string* %t500 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t499, i64 %t501, i64 2)
  %t502 = call { i64, i8* }* @make_astnode(%nyx_string* %t498, { i64, i8* }* %t499)
  store { i64, i8* }* %t502, { i64, i8* }** %t35
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
  %t503 = load { i64, i8* }*, { i64, i8* }** %t35
  ret { i64, i8* }* %t503
}

define internal { i64, i8* }* @parse__parse_match_arm(%SharedEnv_parse* %env.param) {
  %t32 = alloca { i64, i8* }*
  %t39 = alloca { i64, i8* }*
  %t55 = alloca { i64, i8* }*
  %t68 = alloca { i64, i8* }*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = call { i64, i8* }* @parse__parse_single_pattern(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t31, { i64, i8* }** %t32
  %t33 = getelementptr [5 x i8], [5 x i8]* @.str490, i32 0, i32 0
  %t34 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str490.c, i8* %t33, i64 4)
  %t35 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t34)
  br i1 %t35, label %then0, label %else1
then0:
  %t36 = call { i64, i8* }* @nyx_array_new_ptr()
  %t37 = load { i64, i8* }*, { i64, i8* }** %t32
  %t38 = ptrtoint { i64, i8* }* %t37 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t36, i64 %t38, i64 5)
  store { i64, i8* }* %t36, { i64, i8* }** %t39
  br label %while_cond3
while_cond3:
  %t40 = getelementptr [5 x i8], [5 x i8]* @.str491, i32 0, i32 0
  %t41 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str491.c, i8* %t40, i64 4)
  %t42 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t41)
  br i1 %t42, label %while_body4, label %while_end5
while_body4:
  %t43 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t44 = load { i64, i8* }*, { i64, i8* }** %t39
  %t45 = call { i64, i8* }* @parse__parse_single_pattern(%SharedEnv_parse* %env.param)
  %t46 = ptrtoint { i64, i8* }* %t45 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t44, i64 %t46, i64 5)
  br label %while_cond3
while_end5:
  %t47 = getelementptr [11 x i8], [11 x i8]* @.str492, i32 0, i32 0
  %t48 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str492.c, i8* %t47, i64 10)
  %t49 = load { i64, i8* }*, { i64, i8* }** %t39
  %t50 = call { i64, i8* }* @make_astnode(%nyx_string* %t48, { i64, i8* }* %t49)
  store { i64, i8* }* %t50, { i64, i8* }** %t32
  br label %merge2
else1:
  br label %merge2
merge2:
  %t51 = getelementptr [6 x i8], [6 x i8]* @.str493, i32 0, i32 0
  %t52 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str493.c, i8* %t51, i64 5)
  %t53 = call { i64, i8* }* @nyx_array_new_ptr()
  %t54 = call { i64, i8* }* @make_astnode(%nyx_string* %t52, { i64, i8* }* %t53)
  store { i64, i8* }* %t54, { i64, i8* }** %t55
  %t56 = getelementptr [3 x i8], [3 x i8]* @.str494, i32 0, i32 0
  %t57 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str494.c, i8* %t56, i64 2)
  %t58 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t57)
  br i1 %t58, label %then6, label %else7
then6:
  %t59 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t60 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t60, { i64, i8* }** %t55
  br label %merge8
else7:
  br label %merge8
merge8:
  %t61 = getelementptr [12 x i8], [12 x i8]* @.str495, i32 0, i32 0
  %t62 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str495.c, i8* %t61, i64 11)
  %t63 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t62)
  %t64 = getelementptr [6 x i8], [6 x i8]* @.str496, i32 0, i32 0
  %t65 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str496.c, i8* %t64, i64 5)
  %t66 = call { i64, i8* }* @nyx_array_new_ptr()
  %t67 = call { i64, i8* }* @make_astnode(%nyx_string* %t65, { i64, i8* }* %t66)
  store { i64, i8* }* %t67, { i64, i8* }** %t68
  %t69 = getelementptr [11 x i8], [11 x i8]* @.str497, i32 0, i32 0
  %t70 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str497.c, i8* %t69, i64 10)
  %t71 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t70)
  br i1 %t71, label %then9, label %else10
then9:
  %t72 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t72, { i64, i8* }** %t68
  br label %merge11
else10:
  %t73 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t73, { i64, i8* }** %t68
  br label %merge11
merge11:
  %t74 = getelementptr [10 x i8], [10 x i8]* @.str498, i32 0, i32 0
  %t75 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str498.c, i8* %t74, i64 9)
  %t76 = call { i64, i8* }* @nyx_array_new_ptr()
  %t77 = load { i64, i8* }*, { i64, i8* }** %t32
  %t78 = ptrtoint { i64, i8* }* %t77 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t76, i64 %t78, i64 5)
  %t79 = load { i64, i8* }*, { i64, i8* }** %t68
  %t80 = ptrtoint { i64, i8* }* %t79 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t76, i64 %t80, i64 5)
  %t81 = load { i64, i8* }*, { i64, i8* }** %t55
  %t82 = ptrtoint { i64, i8* }* %t81 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t76, i64 %t82, i64 5)
  %t83 = call { i64, i8* }* @make_astnode(%nyx_string* %t75, { i64, i8* }* %t76)
  ret { i64, i8* }* %t83
}

define internal { i64, i8* }* @parse__parse_match(%SharedEnv_parse* %env.param) {
  %t35 = alloca { i64, i8* }*
  %t40 = alloca { i64, i8* }*
  %t41 = alloca i1
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = getelementptr [6 x i8], [6 x i8]* @.str499, i32 0, i32 0
  %t32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str499.c, i8* %t31, i64 5)
  %t33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t32)
  %t34 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t34, { i64, i8* }** %t35
  %t36 = getelementptr [11 x i8], [11 x i8]* @.str500, i32 0, i32 0
  %t37 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str500.c, i8* %t36, i64 10)
  %t38 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t37)
  %t39 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t39, { i64, i8* }** %t40
  store i1 0, i1* %t41
  br label %while_cond0
while_cond0:
  %t42 = load i1, i1* %t41
  %t43 = xor i1 %t42, true
  br i1 %t43, label %while_body1, label %while_end2
while_body1:
  %t44 = getelementptr [12 x i8], [12 x i8]* @.str501, i32 0, i32 0
  %t45 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str501.c, i8* %t44, i64 11)
  %t46 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t45)
  br i1 %t46, label %then3, label %else4
then3:
  %t47 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %t41
  br label %merge5
else4:
  %t48 = load { i64, i8* }*, { i64, i8* }** %t40
  %t49 = call i64 @nyx_array_length({ i64, i8* }* %t48)
  %t50 = icmp sgt i64 %t49, 0
  br i1 %t50, label %then6, label %else7
then6:
  %t51 = getelementptr [6 x i8], [6 x i8]* @.str502, i32 0, i32 0
  %t52 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str502.c, i8* %t51, i64 5)
  %t53 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t52)
  br i1 %t53, label %then9, label %else10
then9:
  %t54 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge11
else10:
  br label %merge11
merge11:
  br label %merge8
else7:
  br label %merge8
merge8:
  %t55 = getelementptr [12 x i8], [12 x i8]* @.str503, i32 0, i32 0
  %t56 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str503.c, i8* %t55, i64 11)
  %t57 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t56)
  br i1 %t57, label %then12, label %else13
then12:
  %t58 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %t41
  br label %merge14
else13:
  %t59 = load { i64, i8* }*, { i64, i8* }** %t40
  %t60 = call { i64, i8* }* @parse__parse_match_arm(%SharedEnv_parse* %env.param)
  %t61 = ptrtoint { i64, i8* }* %t60 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t59, i64 %t61, i64 5)
  br label %merge14
merge14:
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %t62 = getelementptr [6 x i8], [6 x i8]* @.str504, i32 0, i32 0
  %t63 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str504.c, i8* %t62, i64 5)
  %t64 = call { i64, i8* }* @nyx_array_new_ptr()
  %t65 = load { i64, i8* }*, { i64, i8* }** %t35
  %t66 = ptrtoint { i64, i8* }* %t65 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t64, i64 %t66, i64 5)
  %t67 = load { i64, i8* }*, { i64, i8* }** %t40
  %t68 = ptrtoint { i64, i8* }* %t67 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t64, i64 %t68, i64 5)
  %t69 = call { i64, i8* }* @make_astnode(%nyx_string* %t63, { i64, i8* }* %t64)
  ret { i64, i8* }* %t69
}

define internal { i64, i8* }* @parse__parse_struct_construction(%SharedEnv_parse* %env.param, %nyx_string* %struct_name.param) {
  %t31 = alloca %nyx_string*
  %t36 = alloca { i64, i8* }*
  %t37 = alloca i1
  %t58 = alloca %Token
  %t63 = alloca { i64, i8* }*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  store %nyx_string* %struct_name.param, %nyx_string** %t31
  %t32 = getelementptr [11 x i8], [11 x i8]* @.str505, i32 0, i32 0
  %t33 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str505.c, i8* %t32, i64 10)
  %t34 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t33)
  %t35 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t35, { i64, i8* }** %t36
  store i1 0, i1* %t37
  br label %while_cond0
while_cond0:
  %t38 = load i1, i1* %t37
  %t39 = xor i1 %t38, true
  br i1 %t39, label %while_body1, label %while_end2
while_body1:
  %t40 = getelementptr [12 x i8], [12 x i8]* @.str506, i32 0, i32 0
  %t41 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str506.c, i8* %t40, i64 11)
  %t42 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t41)
  br i1 %t42, label %then3, label %else4
then3:
  %t43 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %t37
  br label %merge5
else4:
  %t44 = load { i64, i8* }*, { i64, i8* }** %t36
  %t45 = call i64 @nyx_array_length({ i64, i8* }* %t44)
  %t46 = icmp sgt i64 %t45, 0
  br i1 %t46, label %then6, label %else7
then6:
  %t47 = getelementptr [6 x i8], [6 x i8]* @.str507, i32 0, i32 0
  %t48 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str507.c, i8* %t47, i64 5)
  %t49 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t48)
  br i1 %t49, label %then9, label %else10
then9:
  %t50 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge11
else10:
  br label %merge11
merge11:
  br label %merge8
else7:
  br label %merge8
merge8:
  %t51 = getelementptr [12 x i8], [12 x i8]* @.str508, i32 0, i32 0
  %t52 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str508.c, i8* %t51, i64 11)
  %t53 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t52)
  br i1 %t53, label %then12, label %else13
then12:
  %t54 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %t37
  br label %merge14
else13:
  %t55 = getelementptr [11 x i8], [11 x i8]* @.str509, i32 0, i32 0
  %t56 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str509.c, i8* %t55, i64 10)
  %t57 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t56)
  store %Token %t57, %Token* %t58
  %t59 = getelementptr [6 x i8], [6 x i8]* @.str510, i32 0, i32 0
  %t60 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str510.c, i8* %t59, i64 5)
  %t61 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t60)
  %t62 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t62, { i64, i8* }** %t63
  %t64 = load { i64, i8* }*, { i64, i8* }** %t36
  %t65 = call { i64, i8* }* @nyx_array_new_ptr()
  %t66 = load %Token, %Token* %t58
  %t67 = call %nyx_string* @get_token_value(%Token %t66)
  %t68 = ptrtoint %nyx_string* %t67 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t65, i64 %t68, i64 2)
  %t69 = load { i64, i8* }*, { i64, i8* }** %t63
  %t70 = ptrtoint { i64, i8* }* %t69 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t65, i64 %t70, i64 5)
  %t71 = ptrtoint { i64, i8* }* %t65 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t64, i64 %t71, i64 5)
  br label %merge14
merge14:
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %t72 = getelementptr [12 x i8], [12 x i8]* @.str511, i32 0, i32 0
  %t73 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str511.c, i8* %t72, i64 11)
  %t74 = call { i64, i8* }* @nyx_array_new_ptr()
  %t75 = load %nyx_string*, %nyx_string** %t31
  %t76 = ptrtoint %nyx_string* %t75 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t74, i64 %t76, i64 2)
  %t77 = load { i64, i8* }*, { i64, i8* }** %t36
  %t78 = ptrtoint { i64, i8* }* %t77 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t74, i64 %t78, i64 5)
  %t79 = call { i64, i8* }* @nyx_array_new_ptr()
  %t80 = ptrtoint { i64, i8* }* %t79 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t74, i64 %t80, i64 5)
  %t81 = call { i64, i8* }* @make_astnode(%nyx_string* %t73, { i64, i8* }* %t74)
  ret { i64, i8* }* %t81
}

define internal { i64, i8* }* @parse__parse_statement(%SharedEnv_parse* %env.param) {
  %t35 = alloca %Token
  %t38 = alloca %nyx_string*
  %t48 = alloca %nyx_string*
  %t53 = alloca { i64, i8* }*
  %t62 = alloca { i64, i8* }*
  %t67 = alloca i1
  %t94 = alloca %Token
  %t97 = alloca %nyx_string*
  %t99 = alloca %nyx_string*
  %t106 = alloca %nyx_string*
  %t113 = alloca %Token
  %t119 = alloca %Token
  %t129 = alloca %Token
  %t164 = alloca %Token
  %t175 = alloca i1
  %t186 = alloca %Token
  %t207 = alloca %Token
  %t209 = alloca { i64, i8* }*
  %t213 = alloca { i64, i8* }*
  %t217 = alloca %nyx_string*
  %t218 = alloca i1
  %t268 = alloca { i64, i8* }*
  %t272 = alloca { i64, i8* }*
  %t291 = alloca { i64, i8* }*
  %t302 = alloca { i64, i8* }*
  %t306 = alloca { i64, i8* }*
  %t319 = alloca { i64, i8* }*
  %t335 = alloca { i64, i8* }*
  %t339 = alloca { i64, i8* }*
  %t352 = alloca { i64, i8* }*
  %t360 = alloca %Token
  %t381 = alloca { i64, i8* }*
  %t385 = alloca { i64, i8* }*
  %t408 = alloca { i64, i8* }*
  %t412 = alloca { i64, i8* }*
  %t425 = alloca { i64, i8* }*
  %t436 = alloca { i64, i8* }*
  %t440 = alloca { i64, i8* }*
  %t454 = alloca %Token
  %t548 = alloca { i64, i8* }*
  %t571 = alloca { i64, i8* }*
  %t579 = alloca { i64, i8* }*
  %t588 = alloca { i64, i8* }*
  %t612 = alloca %Token
  %t615 = alloca %nyx_string*
  %t650 = alloca { i64, i8* }*
  %t654 = alloca { i64, i8* }*
  %t679 = alloca { i64, i8* }*
  %t685 = alloca { i64, i8* }*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = getelementptr [14 x i8], [14 x i8]* @.str512, i32 0, i32 0
  %t32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str512.c, i8* %t31, i64 13)
  %t33 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t32)
  br i1 %t33, label %then0, label %else1
then0:
  %t34 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store %Token %t34, %Token* %t35
  %t36 = load %Token, %Token* %t35
  %t37 = call %nyx_string* @get_token_value(%Token %t36)
  store %nyx_string* %t37, %nyx_string** %t38
  %t39 = load %nyx_string*, %nyx_string** %t38
  %t40 = getelementptr [8 x i8], [8 x i8]* @.str513, i32 0, i32 0
  %t41 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str513.c, i8* %t40, i64 7)
  %t42 = call i1 @nyx_string_starts_with(%nyx_string* %t39, %nyx_string* %t41)
  br i1 %t42, label %then3, label %else4
then3:
  %t43 = load %nyx_string*, %nyx_string** %t38
  %t44 = load %nyx_string*, %nyx_string** %t38
  %t45 = call i64 @nyx_string_byte_length(%nyx_string* %t44)
  %t46 = call %nyx_string* @nyx_string_substring(%nyx_string* %t43, i64 7, i64 %t45)
  %t47 = call %nyx_string* @nyx_string_trim(%nyx_string* %t46)
  store %nyx_string* %t47, %nyx_string** %t48
  %t49 = load %nyx_string*, %nyx_string** %t48
  store %nyx_string* %t49, %nyx_string** %t10
  %t50 = call { i64, i8* }* @nyx_array_new_ptr()
  %t51 = load %nyx_string*, %nyx_string** %t48
  %t52 = ptrtoint %nyx_string* %t51 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t50, i64 %t52, i64 2)
  store { i64, i8* }* %t50, { i64, i8* }** %t53
  %t54 = getelementptr [14 x i8], [14 x i8]* @.str514, i32 0, i32 0
  %t55 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str514.c, i8* %t54, i64 13)
  %t56 = load { i64, i8* }*, { i64, i8* }** %t53
  %t57 = call { i64, i8* }* @make_astnode(%nyx_string* %t55, { i64, i8* }* %t56)
  ret { i64, i8* }* %t57
else4:
  br label %merge5
merge5:
  %t58 = load %nyx_string*, %nyx_string** %t38
  store %nyx_string* %t58, %nyx_string** %t10
  %t59 = call { i64, i8* }* @nyx_array_new_ptr()
  %t60 = load %nyx_string*, %nyx_string** %t38
  %t61 = ptrtoint %nyx_string* %t60 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t59, i64 %t61, i64 2)
  store { i64, i8* }* %t59, { i64, i8* }** %t62
  %t63 = getelementptr [14 x i8], [14 x i8]* @.str515, i32 0, i32 0
  %t64 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str515.c, i8* %t63, i64 13)
  %t65 = load { i64, i8* }*, { i64, i8* }** %t62
  %t66 = call { i64, i8* }* @make_astnode(%nyx_string* %t64, { i64, i8* }* %t65)
  ret { i64, i8* }* %t66
else1:
  br label %merge2
merge2:
  store i1 true, i1* %t67
  %t68 = getelementptr [4 x i8], [4 x i8]* @.str516, i32 0, i32 0
  %t69 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str516.c, i8* %t68, i64 3)
  %t70 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t69)
  br i1 %t70, label %sc_or_end7, label %sc_or_rhs6
sc_or_rhs6:
  %t71 = getelementptr [4 x i8], [4 x i8]* @.str517, i32 0, i32 0
  %t72 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str517.c, i8* %t71, i64 3)
  %t73 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t72)
  store i1 %t73, i1* %t67
  br label %sc_or_end7
sc_or_end7:
  %t74 = load i1, i1* %t67
  br i1 %t74, label %then8, label %else9
then8:
  %t75 = call { i64, i8* }* @parse__parse_let(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %t75
else9:
  br label %merge10
merge10:
  %t76 = getelementptr [6 x i8], [6 x i8]* @.str518, i32 0, i32 0
  %t77 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str518.c, i8* %t76, i64 5)
  %t78 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t77)
  br i1 %t78, label %then11, label %else12
then11:
  %t79 = call { i64, i8* }* @parse__parse_const(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %t79
else12:
  br label %merge13
merge13:
  %t80 = getelementptr [3 x i8], [3 x i8]* @.str519, i32 0, i32 0
  %t81 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str519.c, i8* %t80, i64 2)
  %t82 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t81)
  br i1 %t82, label %then14, label %else15
then14:
  %t83 = call { i64, i8* }* @parse__parse_function(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %t83
else15:
  br label %merge16
merge16:
  %t84 = getelementptr [5 x i8], [5 x i8]* @.str520, i32 0, i32 0
  %t85 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str520.c, i8* %t84, i64 4)
  %t86 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t85)
  br i1 %t86, label %then17, label %else18
then17:
  %t87 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t88 = getelementptr [13 x i8], [13 x i8]* @.str521, i32 0, i32 0
  %t89 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str521.c, i8* %t88, i64 12)
  %t90 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t89)
  %t91 = getelementptr [11 x i8], [11 x i8]* @.str522, i32 0, i32 0
  %t92 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str522.c, i8* %t91, i64 10)
  %t93 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t92)
  store %Token %t93, %Token* %t94
  %t95 = load %Token, %Token* %t94
  %t96 = call %nyx_string* @get_token_value(%Token %t95)
  store %nyx_string* %t96, %nyx_string** %t97
  %t98 = load %nyx_string*, %nyx_string** %t97
  store %nyx_string* %t98, %nyx_string** %t99
  %t100 = getelementptr [11 x i8], [11 x i8]* @.str523, i32 0, i32 0
  %t101 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str523.c, i8* %t100, i64 10)
  %t102 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t101)
  br i1 %t102, label %then20, label %else21
then20:
  %t103 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t104 = getelementptr [1 x i8], [1 x i8]* @.str524, i32 0, i32 0
  %t105 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str524.c, i8* %t104, i64 0)
  store %nyx_string* %t105, %nyx_string** %t106
  %t107 = getelementptr [7 x i8], [7 x i8]* @.str525, i32 0, i32 0
  %t108 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str525.c, i8* %t107, i64 6)
  %t109 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t108)
  br i1 %t109, label %then23, label %else24
then23:
  %t110 = getelementptr [7 x i8], [7 x i8]* @.str526, i32 0, i32 0
  %t111 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str526.c, i8* %t110, i64 6)
  %t112 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t111)
  store %Token %t112, %Token* %t113
  %t114 = load %Token, %Token* %t113
  %t115 = call %nyx_string* @get_token_value(%Token %t114)
  store %nyx_string* %t115, %nyx_string** %t106
  br label %merge25
else24:
  %t116 = getelementptr [11 x i8], [11 x i8]* @.str527, i32 0, i32 0
  %t117 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str527.c, i8* %t116, i64 10)
  %t118 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t117)
  store %Token %t118, %Token* %t119
  %t120 = load %Token, %Token* %t119
  %t121 = call %nyx_string* @get_token_value(%Token %t120)
  store %nyx_string* %t121, %nyx_string** %t106
  br label %while_cond26
while_cond26:
  %t122 = getelementptr [6 x i8], [6 x i8]* @.str528, i32 0, i32 0
  %t123 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str528.c, i8* %t122, i64 5)
  %t124 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t123)
  br i1 %t124, label %while_body27, label %while_end28
while_body27:
  %t125 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t126 = getelementptr [11 x i8], [11 x i8]* @.str529, i32 0, i32 0
  %t127 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str529.c, i8* %t126, i64 10)
  %t128 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t127)
  store %Token %t128, %Token* %t129
  %t130 = load %nyx_string*, %nyx_string** %t106
  %t131 = getelementptr [2 x i8], [2 x i8]* @.str530, i32 0, i32 0
  %t132 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str530.c, i8* %t131, i64 1)
  %t133 = call %nyx_string* @nyx_string_concat(%nyx_string* %t130, %nyx_string* %t132)
  %t134 = load %Token, %Token* %t129
  %t135 = call %nyx_string* @get_token_value(%Token %t134)
  %t136 = call %nyx_string* @nyx_string_concat(%nyx_string* %t133, %nyx_string* %t135)
  store %nyx_string* %t136, %nyx_string** %t106
  br label %while_cond26
while_end28:
  br label %merge25
merge25:
  %t137 = getelementptr [12 x i8], [12 x i8]* @.str531, i32 0, i32 0
  %t138 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str531.c, i8* %t137, i64 11)
  %t139 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t138)
  %t140 = load %nyx_string*, %nyx_string** %t97
  %t141 = getelementptr [2 x i8], [2 x i8]* @.str532, i32 0, i32 0
  %t142 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str532.c, i8* %t141, i64 1)
  %t143 = call %nyx_string* @nyx_string_concat(%nyx_string* %t140, %nyx_string* %t142)
  %t144 = load %nyx_string*, %nyx_string** %t106
  %t145 = call %nyx_string* @nyx_string_concat(%nyx_string* %t143, %nyx_string* %t144)
  %t146 = getelementptr [2 x i8], [2 x i8]* @.str533, i32 0, i32 0
  %t147 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str533.c, i8* %t146, i64 1)
  %t148 = call %nyx_string* @nyx_string_concat(%nyx_string* %t145, %nyx_string* %t147)
  store %nyx_string* %t148, %nyx_string** %t99
  %t149 = load %nyx_string*, %nyx_string** %t97
  %t150 = getelementptr [12 x i8], [12 x i8]* @.str534, i32 0, i32 0
  %t151 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str534.c, i8* %t150, i64 11)
  %t152 = call i1 @nyx_string_equals(%nyx_string* %t149, %nyx_string* %t151)
  br i1 %t152, label %then29, label %else30
then29:
  %t153 = getelementptr [13 x i8], [13 x i8]* @.str535, i32 0, i32 0
  %t154 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str535.c, i8* %t153, i64 12)
  %t155 = load %nyx_string*, %nyx_string** %t106
  %t156 = call %nyx_string* @nyx_string_concat(%nyx_string* %t154, %nyx_string* %t155)
  store %nyx_string* %t156, %nyx_string** %t99
  br label %merge31
else30:
  br label %merge31
merge31:
  br label %merge22
else21:
  %t157 = getelementptr [7 x i8], [7 x i8]* @.str536, i32 0, i32 0
  %t158 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str536.c, i8* %t157, i64 6)
  %t159 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t158)
  br i1 %t159, label %then32, label %else33
then32:
  %t160 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t161 = getelementptr [7 x i8], [7 x i8]* @.str537, i32 0, i32 0
  %t162 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str537.c, i8* %t161, i64 6)
  %t163 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t162)
  store %Token %t163, %Token* %t164
  %t165 = load %nyx_string*, %nyx_string** %t97
  %t166 = getelementptr [2 x i8], [2 x i8]* @.str538, i32 0, i32 0
  %t167 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str538.c, i8* %t166, i64 1)
  %t168 = call %nyx_string* @nyx_string_concat(%nyx_string* %t165, %nyx_string* %t167)
  %t169 = load %Token, %Token* %t164
  %t170 = call %nyx_string* @get_token_value(%Token %t169)
  %t171 = call %nyx_string* @nyx_string_concat(%nyx_string* %t168, %nyx_string* %t170)
  store %nyx_string* %t171, %nyx_string** %t99
  br label %merge34
else33:
  br label %merge34
merge34:
  br label %merge22
merge22:
  %t172 = getelementptr [14 x i8], [14 x i8]* @.str539, i32 0, i32 0
  %t173 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str539.c, i8* %t172, i64 13)
  %t174 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t173)
  store i1 false, i1* %t175
  %t176 = load %nyx_string*, %nyx_string** %t99
  %t177 = getelementptr [9 x i8], [9 x i8]* @.str540, i32 0, i32 0
  %t178 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str540.c, i8* %t177, i64 8)
  %t179 = call i1 @nyx_string_equals(%nyx_string* %t176, %nyx_string* %t178)
  br i1 %t179, label %sc_and_rhs35, label %sc_and_end36
sc_and_rhs35:
  %t180 = getelementptr [7 x i8], [7 x i8]* @.str541, i32 0, i32 0
  %t181 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str541.c, i8* %t180, i64 6)
  %t182 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t181)
  %t183 = xor i1 %t182, true
  store i1 %t183, i1* %t175
  br label %sc_and_end36
sc_and_end36:
  %t184 = load i1, i1* %t175
  br i1 %t184, label %then37, label %else38
then37:
  %t185 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  store %Token %t185, %Token* %t186
  %t187 = getelementptr [8 x i8], [8 x i8]* @.str542, i32 0, i32 0
  %t188 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str542.c, i8* %t187, i64 7)
  %t189 = load %Token, %Token* %t186
  %t190 = call i64 @get_token_line(%Token %t189)
  %t191 = load %Token, %Token* %t186
  %t192 = call i64 @get_token_column(%Token %t191)
  %t193 = getelementptr [41 x i8], [41 x i8]* @.str543, i32 0, i32 0
  %t194 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str543.c, i8* %t193, i64 40)
  %t195 = getelementptr [43 x i8], [43 x i8]* @.str544, i32 0, i32 0
  %t196 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str544.c, i8* %t195, i64 42)
  %t197 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %t194, %nyx_string* %t196)
  %t198 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %t188, i64 %t190, i64 %t192, %nyx_string* %t197)
  %t199 = getelementptr [6 x i8], [6 x i8]* @.str545, i32 0, i32 0
  %t200 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str545.c, i8* %t199, i64 5)
  %t201 = call { i64, i8* }* @nyx_array_new_ptr()
  %t202 = call { i64, i8* }* @make_astnode(%nyx_string* %t200, { i64, i8* }* %t201)
  ret { i64, i8* }* %t202
else38:
  br label %merge39
merge39:
  %t203 = getelementptr [7 x i8], [7 x i8]* @.str546, i32 0, i32 0
  %t204 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str546.c, i8* %t203, i64 6)
  %t205 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t204)
  br i1 %t205, label %then40, label %else41
then40:
  %t206 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  store %Token %t206, %Token* %t207
  %t208 = call { i64, i8* }* @parse__parse_extern_fn(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t208, { i64, i8* }** %t209
  %t210 = load { i64, i8* }*, { i64, i8* }** %t209
  %t211 = call i64 @nyx_array_get({ i64, i8* }* %t210, i64 1)
  %t212 = inttoptr i64 %t211 to { i64, i8* }*
  store { i64, i8* }* %t212, { i64, i8* }** %t213
  %t214 = load { i64, i8* }*, { i64, i8* }** %t213
  %t215 = call i64 @nyx_array_get_checked({ i64, i8* }* %t214, i64 3, i64 2)
  %t216 = inttoptr i64 %t215 to %nyx_string*
  store %nyx_string* %t216, %nyx_string** %t217
  store i1 true, i1* %t218
  %t219 = load %nyx_string*, %nyx_string** %t99
  %t220 = getelementptr [9 x i8], [9 x i8]* @.str547, i32 0, i32 0
  %t221 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str547.c, i8* %t220, i64 8)
  %t222 = call i1 @nyx_string_equals(%nyx_string* %t219, %nyx_string* %t221)
  %t223 = xor i1 %t222, true
  br i1 %t223, label %sc_or_end44, label %sc_or_rhs43
sc_or_rhs43:
  %t224 = load %nyx_string*, %nyx_string** %t217
  %t225 = getelementptr [3 x i8], [3 x i8]* @.str548, i32 0, i32 0
  %t226 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str548.c, i8* %t225, i64 2)
  %t227 = call i1 @nyx_string_equals(%nyx_string* %t224, %nyx_string* %t226)
  %t228 = xor i1 %t227, true
  store i1 %t228, i1* %t218
  br label %sc_or_end44
sc_or_end44:
  %t229 = load i1, i1* %t218
  br i1 %t229, label %then45, label %else46
then45:
  %t230 = getelementptr [8 x i8], [8 x i8]* @.str549, i32 0, i32 0
  %t231 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str549.c, i8* %t230, i64 7)
  %t232 = load %Token, %Token* %t207
  %t233 = call i64 @get_token_line(%Token %t232)
  %t234 = load %Token, %Token* %t207
  %t235 = call i64 @get_token_column(%Token %t234)
  %t236 = getelementptr [76 x i8], [76 x i8]* @.str550, i32 0, i32 0
  %t237 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str550.c, i8* %t236, i64 75)
  %t238 = getelementptr [83 x i8], [83 x i8]* @.str551, i32 0, i32 0
  %t239 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str551.c, i8* %t238, i64 82)
  %t240 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %t237, %nyx_string* %t239)
  %t241 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %t231, i64 %t233, i64 %t235, %nyx_string* %t240)
  %t242 = getelementptr [6 x i8], [6 x i8]* @.str552, i32 0, i32 0
  %t243 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str552.c, i8* %t242, i64 5)
  %t244 = call { i64, i8* }* @nyx_array_new_ptr()
  %t245 = call { i64, i8* }* @make_astnode(%nyx_string* %t243, { i64, i8* }* %t244)
  ret { i64, i8* }* %t245
else46:
  br label %merge47
merge47:
  %t246 = getelementptr [10 x i8], [10 x i8]* @.str553, i32 0, i32 0
  %t247 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str553.c, i8* %t246, i64 9)
  %t248 = call { i64, i8* }* @nyx_array_new_ptr()
  %t249 = load { i64, i8* }*, { i64, i8* }** %t213
  %t250 = call i64 @nyx_array_get({ i64, i8* }* %t249, i64 0)
  call void @nyx_array_push({ i64, i8* }* %t248, i64 %t250)
  %t251 = load { i64, i8* }*, { i64, i8* }** %t213
  %t252 = call i64 @nyx_array_get({ i64, i8* }* %t251, i64 1)
  call void @nyx_array_push({ i64, i8* }* %t248, i64 %t252)
  %t253 = load { i64, i8* }*, { i64, i8* }** %t213
  %t254 = call i64 @nyx_array_get({ i64, i8* }* %t253, i64 2)
  call void @nyx_array_push({ i64, i8* }* %t248, i64 %t254)
  %t255 = load { i64, i8* }*, { i64, i8* }** %t213
  %t256 = call i64 @nyx_array_get({ i64, i8* }* %t255, i64 3)
  call void @nyx_array_push({ i64, i8* }* %t248, i64 %t256)
  %t257 = load %nyx_string*, %nyx_string** %t99
  %t258 = ptrtoint %nyx_string* %t257 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t248, i64 %t258, i64 2)
  %t259 = call { i64, i8* }* @make_astnode(%nyx_string* %t247, { i64, i8* }* %t248)
  ret { i64, i8* }* %t259
else41:
  br label %merge42
merge42:
  %t260 = getelementptr [4 x i8], [4 x i8]* @.str554, i32 0, i32 0
  %t261 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str554.c, i8* %t260, i64 3)
  %t262 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t261)
  br i1 %t262, label %then48, label %else49
then48:
  %t263 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t264 = getelementptr [3 x i8], [3 x i8]* @.str555, i32 0, i32 0
  %t265 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str555.c, i8* %t264, i64 2)
  %t266 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t265)
  br i1 %t266, label %then51, label %else52
then51:
  %t267 = call { i64, i8* }* @parse__parse_function(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t267, { i64, i8* }** %t268
  %t269 = load { i64, i8* }*, { i64, i8* }** %t268
  %t270 = call i64 @nyx_array_get({ i64, i8* }* %t269, i64 1)
  %t271 = inttoptr i64 %t270 to { i64, i8* }*
  store { i64, i8* }* %t271, { i64, i8* }** %t272
  %t273 = getelementptr [9 x i8], [9 x i8]* @.str556, i32 0, i32 0
  %t274 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str556.c, i8* %t273, i64 8)
  %t275 = call { i64, i8* }* @nyx_array_new_ptr()
  %t276 = load { i64, i8* }*, { i64, i8* }** %t272
  %t277 = call i64 @nyx_array_get({ i64, i8* }* %t276, i64 0)
  call void @nyx_array_push({ i64, i8* }* %t275, i64 %t277)
  %t278 = load { i64, i8* }*, { i64, i8* }** %t272
  %t279 = call i64 @nyx_array_get({ i64, i8* }* %t278, i64 1)
  call void @nyx_array_push({ i64, i8* }* %t275, i64 %t279)
  %t280 = load { i64, i8* }*, { i64, i8* }** %t272
  %t281 = call i64 @nyx_array_get({ i64, i8* }* %t280, i64 2)
  call void @nyx_array_push({ i64, i8* }* %t275, i64 %t281)
  %t282 = load { i64, i8* }*, { i64, i8* }** %t272
  %t283 = call i64 @nyx_array_get({ i64, i8* }* %t282, i64 3)
  call void @nyx_array_push({ i64, i8* }* %t275, i64 %t283)
  %t284 = load { i64, i8* }*, { i64, i8* }** %t272
  %t285 = call i64 @nyx_array_get({ i64, i8* }* %t284, i64 4)
  call void @nyx_array_push({ i64, i8* }* %t275, i64 %t285)
  %t286 = load %nyx_string*, %nyx_string** %t99
  %t287 = ptrtoint %nyx_string* %t286 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t275, i64 %t287, i64 2)
  %t288 = load { i64, i8* }*, { i64, i8* }** %t272
  %t289 = call i64 @nyx_array_get({ i64, i8* }* %t288, i64 8)
  call void @nyx_array_push({ i64, i8* }* %t275, i64 %t289)
  %t290 = call { i64, i8* }* @make_astnode(%nyx_string* %t274, { i64, i8* }* %t275)
  store { i64, i8* }* %t290, { i64, i8* }** %t291
  %t292 = getelementptr [7 x i8], [7 x i8]* @.str557, i32 0, i32 0
  %t293 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str557.c, i8* %t292, i64 6)
  %t294 = call { i64, i8* }* @nyx_array_new_ptr()
  %t295 = load { i64, i8* }*, { i64, i8* }** %t291
  %t296 = ptrtoint { i64, i8* }* %t295 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t294, i64 %t296, i64 5)
  %t297 = call { i64, i8* }* @make_astnode(%nyx_string* %t293, { i64, i8* }* %t294)
  ret { i64, i8* }* %t297
else52:
  br label %merge53
merge53:
  %t298 = getelementptr [7 x i8], [7 x i8]* @.str558, i32 0, i32 0
  %t299 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str558.c, i8* %t298, i64 6)
  %t300 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t299)
  br i1 %t300, label %then54, label %else55
then54:
  %t301 = call { i64, i8* }* @parse__parse_struct(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t301, { i64, i8* }** %t302
  %t303 = load { i64, i8* }*, { i64, i8* }** %t302
  %t304 = call i64 @nyx_array_get({ i64, i8* }* %t303, i64 1)
  %t305 = inttoptr i64 %t304 to { i64, i8* }*
  store { i64, i8* }* %t305, { i64, i8* }** %t306
  %t307 = getelementptr [7 x i8], [7 x i8]* @.str559, i32 0, i32 0
  %t308 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str559.c, i8* %t307, i64 6)
  %t309 = call { i64, i8* }* @nyx_array_new_ptr()
  %t310 = load { i64, i8* }*, { i64, i8* }** %t306
  %t311 = call i64 @nyx_array_get({ i64, i8* }* %t310, i64 0)
  call void @nyx_array_push({ i64, i8* }* %t309, i64 %t311)
  %t312 = load { i64, i8* }*, { i64, i8* }** %t306
  %t313 = call i64 @nyx_array_get({ i64, i8* }* %t312, i64 1)
  call void @nyx_array_push({ i64, i8* }* %t309, i64 %t313)
  %t314 = load { i64, i8* }*, { i64, i8* }** %t306
  %t315 = call i64 @nyx_array_get({ i64, i8* }* %t314, i64 2)
  call void @nyx_array_push({ i64, i8* }* %t309, i64 %t315)
  %t316 = load %nyx_string*, %nyx_string** %t99
  %t317 = ptrtoint %nyx_string* %t316 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t309, i64 %t317, i64 2)
  %t318 = call { i64, i8* }* @make_astnode(%nyx_string* %t308, { i64, i8* }* %t309)
  store { i64, i8* }* %t318, { i64, i8* }** %t319
  %t320 = load { i64, i8* }*, { i64, i8* }** %t319
  %t321 = load { i64, i8* }*, { i64, i8* }** %t302
  %t322 = call i64 @nyx_array_get({ i64, i8* }* %t321, i64 2)
  %t323 = load { i64, i8* }*, { i64, i8* }** %t302
  %t324 = call i64 @nyx_array_get_tag({ i64, i8* }* %t323, i64 2)
  call void @nyx_array_set_tagged({ i64, i8* }* %t320, i64 2, i64 %t322, i64 %t324)
  %t325 = getelementptr [7 x i8], [7 x i8]* @.str560, i32 0, i32 0
  %t326 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str560.c, i8* %t325, i64 6)
  %t327 = call { i64, i8* }* @nyx_array_new_ptr()
  %t328 = load { i64, i8* }*, { i64, i8* }** %t319
  %t329 = ptrtoint { i64, i8* }* %t328 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t327, i64 %t329, i64 5)
  %t330 = call { i64, i8* }* @make_astnode(%nyx_string* %t326, { i64, i8* }* %t327)
  ret { i64, i8* }* %t330
else55:
  br label %merge56
merge56:
  %t331 = getelementptr [5 x i8], [5 x i8]* @.str561, i32 0, i32 0
  %t332 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str561.c, i8* %t331, i64 4)
  %t333 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t332)
  br i1 %t333, label %then57, label %else58
then57:
  %t334 = call { i64, i8* }* @parse__parse_enum(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t334, { i64, i8* }** %t335
  %t336 = load { i64, i8* }*, { i64, i8* }** %t335
  %t337 = call i64 @nyx_array_get({ i64, i8* }* %t336, i64 1)
  %t338 = inttoptr i64 %t337 to { i64, i8* }*
  store { i64, i8* }* %t338, { i64, i8* }** %t339
  %t340 = getelementptr [5 x i8], [5 x i8]* @.str562, i32 0, i32 0
  %t341 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str562.c, i8* %t340, i64 4)
  %t342 = call { i64, i8* }* @nyx_array_new_ptr()
  %t343 = load { i64, i8* }*, { i64, i8* }** %t339
  %t344 = call i64 @nyx_array_get({ i64, i8* }* %t343, i64 0)
  call void @nyx_array_push({ i64, i8* }* %t342, i64 %t344)
  %t345 = load { i64, i8* }*, { i64, i8* }** %t339
  %t346 = call i64 @nyx_array_get({ i64, i8* }* %t345, i64 1)
  call void @nyx_array_push({ i64, i8* }* %t342, i64 %t346)
  %t347 = load { i64, i8* }*, { i64, i8* }** %t339
  %t348 = call i64 @nyx_array_get({ i64, i8* }* %t347, i64 2)
  call void @nyx_array_push({ i64, i8* }* %t342, i64 %t348)
  %t349 = load %nyx_string*, %nyx_string** %t99
  %t350 = ptrtoint %nyx_string* %t349 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t342, i64 %t350, i64 2)
  %t351 = call { i64, i8* }* @make_astnode(%nyx_string* %t341, { i64, i8* }* %t342)
  store { i64, i8* }* %t351, { i64, i8* }** %t352
  %t353 = getelementptr [7 x i8], [7 x i8]* @.str563, i32 0, i32 0
  %t354 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str563.c, i8* %t353, i64 6)
  %t355 = call { i64, i8* }* @nyx_array_new_ptr()
  %t356 = load { i64, i8* }*, { i64, i8* }** %t352
  %t357 = ptrtoint { i64, i8* }* %t356 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t355, i64 %t357, i64 5)
  %t358 = call { i64, i8* }* @make_astnode(%nyx_string* %t354, { i64, i8* }* %t355)
  ret { i64, i8* }* %t358
else58:
  br label %merge59
merge59:
  %t359 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  store %Token %t359, %Token* %t360
  %t361 = getelementptr [8 x i8], [8 x i8]* @.str564, i32 0, i32 0
  %t362 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str564.c, i8* %t361, i64 7)
  %t363 = load %Token, %Token* %t360
  %t364 = call i64 @get_token_line(%Token %t363)
  %t365 = load %Token, %Token* %t360
  %t366 = call i64 @get_token_column(%Token %t365)
  %t367 = getelementptr [59 x i8], [59 x i8]* @.str565, i32 0, i32 0
  %t368 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str565.c, i8* %t367, i64 58)
  %t369 = getelementptr [59 x i8], [59 x i8]* @.str566, i32 0, i32 0
  %t370 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str566.c, i8* %t369, i64 58)
  %t371 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %t368, %nyx_string* %t370)
  %t372 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %t362, i64 %t364, i64 %t366, %nyx_string* %t371)
  %t373 = getelementptr [6 x i8], [6 x i8]* @.str567, i32 0, i32 0
  %t374 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str567.c, i8* %t373, i64 5)
  %t375 = call { i64, i8* }* @nyx_array_new_ptr()
  %t376 = call { i64, i8* }* @make_astnode(%nyx_string* %t374, { i64, i8* }* %t375)
  ret { i64, i8* }* %t376
else49:
  br label %merge50
merge50:
  %t377 = getelementptr [3 x i8], [3 x i8]* @.str568, i32 0, i32 0
  %t378 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str568.c, i8* %t377, i64 2)
  %t379 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t378)
  br i1 %t379, label %then60, label %else61
then60:
  %t380 = call { i64, i8* }* @parse__parse_function(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t380, { i64, i8* }** %t381
  %t382 = load { i64, i8* }*, { i64, i8* }** %t381
  %t383 = call i64 @nyx_array_get({ i64, i8* }* %t382, i64 1)
  %t384 = inttoptr i64 %t383 to { i64, i8* }*
  store { i64, i8* }* %t384, { i64, i8* }** %t385
  %t386 = getelementptr [9 x i8], [9 x i8]* @.str569, i32 0, i32 0
  %t387 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str569.c, i8* %t386, i64 8)
  %t388 = call { i64, i8* }* @nyx_array_new_ptr()
  %t389 = load { i64, i8* }*, { i64, i8* }** %t385
  %t390 = call i64 @nyx_array_get({ i64, i8* }* %t389, i64 0)
  call void @nyx_array_push({ i64, i8* }* %t388, i64 %t390)
  %t391 = load { i64, i8* }*, { i64, i8* }** %t385
  %t392 = call i64 @nyx_array_get({ i64, i8* }* %t391, i64 1)
  call void @nyx_array_push({ i64, i8* }* %t388, i64 %t392)
  %t393 = load { i64, i8* }*, { i64, i8* }** %t385
  %t394 = call i64 @nyx_array_get({ i64, i8* }* %t393, i64 2)
  call void @nyx_array_push({ i64, i8* }* %t388, i64 %t394)
  %t395 = load { i64, i8* }*, { i64, i8* }** %t385
  %t396 = call i64 @nyx_array_get({ i64, i8* }* %t395, i64 3)
  call void @nyx_array_push({ i64, i8* }* %t388, i64 %t396)
  %t397 = load { i64, i8* }*, { i64, i8* }** %t385
  %t398 = call i64 @nyx_array_get({ i64, i8* }* %t397, i64 4)
  call void @nyx_array_push({ i64, i8* }* %t388, i64 %t398)
  %t399 = load %nyx_string*, %nyx_string** %t99
  %t400 = ptrtoint %nyx_string* %t399 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t388, i64 %t400, i64 2)
  %t401 = load { i64, i8* }*, { i64, i8* }** %t385
  %t402 = call i64 @nyx_array_get({ i64, i8* }* %t401, i64 8)
  call void @nyx_array_push({ i64, i8* }* %t388, i64 %t402)
  %t403 = call { i64, i8* }* @make_astnode(%nyx_string* %t387, { i64, i8* }* %t388)
  ret { i64, i8* }* %t403
else61:
  br label %merge62
merge62:
  %t404 = getelementptr [7 x i8], [7 x i8]* @.str570, i32 0, i32 0
  %t405 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str570.c, i8* %t404, i64 6)
  %t406 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t405)
  br i1 %t406, label %then63, label %else64
then63:
  %t407 = call { i64, i8* }* @parse__parse_struct(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t407, { i64, i8* }** %t408
  %t409 = load { i64, i8* }*, { i64, i8* }** %t408
  %t410 = call i64 @nyx_array_get({ i64, i8* }* %t409, i64 1)
  %t411 = inttoptr i64 %t410 to { i64, i8* }*
  store { i64, i8* }* %t411, { i64, i8* }** %t412
  %t413 = getelementptr [7 x i8], [7 x i8]* @.str571, i32 0, i32 0
  %t414 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str571.c, i8* %t413, i64 6)
  %t415 = call { i64, i8* }* @nyx_array_new_ptr()
  %t416 = load { i64, i8* }*, { i64, i8* }** %t412
  %t417 = call i64 @nyx_array_get({ i64, i8* }* %t416, i64 0)
  call void @nyx_array_push({ i64, i8* }* %t415, i64 %t417)
  %t418 = load { i64, i8* }*, { i64, i8* }** %t412
  %t419 = call i64 @nyx_array_get({ i64, i8* }* %t418, i64 1)
  call void @nyx_array_push({ i64, i8* }* %t415, i64 %t419)
  %t420 = load { i64, i8* }*, { i64, i8* }** %t412
  %t421 = call i64 @nyx_array_get({ i64, i8* }* %t420, i64 2)
  call void @nyx_array_push({ i64, i8* }* %t415, i64 %t421)
  %t422 = load %nyx_string*, %nyx_string** %t99
  %t423 = ptrtoint %nyx_string* %t422 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t415, i64 %t423, i64 2)
  %t424 = call { i64, i8* }* @make_astnode(%nyx_string* %t414, { i64, i8* }* %t415)
  store { i64, i8* }* %t424, { i64, i8* }** %t425
  %t426 = load { i64, i8* }*, { i64, i8* }** %t425
  %t427 = load { i64, i8* }*, { i64, i8* }** %t408
  %t428 = call i64 @nyx_array_get({ i64, i8* }* %t427, i64 2)
  %t429 = load { i64, i8* }*, { i64, i8* }** %t408
  %t430 = call i64 @nyx_array_get_tag({ i64, i8* }* %t429, i64 2)
  call void @nyx_array_set_tagged({ i64, i8* }* %t426, i64 2, i64 %t428, i64 %t430)
  %t431 = load { i64, i8* }*, { i64, i8* }** %t425
  ret { i64, i8* }* %t431
else64:
  br label %merge65
merge65:
  %t432 = getelementptr [5 x i8], [5 x i8]* @.str572, i32 0, i32 0
  %t433 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str572.c, i8* %t432, i64 4)
  %t434 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t433)
  br i1 %t434, label %then66, label %else67
then66:
  %t435 = call { i64, i8* }* @parse__parse_enum(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t435, { i64, i8* }** %t436
  %t437 = load { i64, i8* }*, { i64, i8* }** %t436
  %t438 = call i64 @nyx_array_get({ i64, i8* }* %t437, i64 1)
  %t439 = inttoptr i64 %t438 to { i64, i8* }*
  store { i64, i8* }* %t439, { i64, i8* }** %t440
  %t441 = getelementptr [5 x i8], [5 x i8]* @.str573, i32 0, i32 0
  %t442 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str573.c, i8* %t441, i64 4)
  %t443 = call { i64, i8* }* @nyx_array_new_ptr()
  %t444 = load { i64, i8* }*, { i64, i8* }** %t440
  %t445 = call i64 @nyx_array_get({ i64, i8* }* %t444, i64 0)
  call void @nyx_array_push({ i64, i8* }* %t443, i64 %t445)
  %t446 = load { i64, i8* }*, { i64, i8* }** %t440
  %t447 = call i64 @nyx_array_get({ i64, i8* }* %t446, i64 1)
  call void @nyx_array_push({ i64, i8* }* %t443, i64 %t447)
  %t448 = load { i64, i8* }*, { i64, i8* }** %t440
  %t449 = call i64 @nyx_array_get({ i64, i8* }* %t448, i64 2)
  call void @nyx_array_push({ i64, i8* }* %t443, i64 %t449)
  %t450 = load %nyx_string*, %nyx_string** %t99
  %t451 = ptrtoint %nyx_string* %t450 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t443, i64 %t451, i64 2)
  %t452 = call { i64, i8* }* @make_astnode(%nyx_string* %t442, { i64, i8* }* %t443)
  ret { i64, i8* }* %t452
else67:
  br label %merge68
merge68:
  %t453 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  store %Token %t453, %Token* %t454
  %t455 = getelementptr [8 x i8], [8 x i8]* @.str574, i32 0, i32 0
  %t456 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str574.c, i8* %t455, i64 7)
  %t457 = load %Token, %Token* %t454
  %t458 = call i64 @get_token_line(%Token %t457)
  %t459 = load %Token, %Token* %t454
  %t460 = call i64 @get_token_column(%Token %t459)
  %t461 = getelementptr [77 x i8], [77 x i8]* @.str575, i32 0, i32 0
  %t462 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str575.c, i8* %t461, i64 76)
  %t463 = getelementptr [80 x i8], [80 x i8]* @.str576, i32 0, i32 0
  %t464 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str576.c, i8* %t463, i64 79)
  %t465 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %t462, %nyx_string* %t464)
  %t466 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %t456, i64 %t458, i64 %t460, %nyx_string* %t465)
  %t467 = getelementptr [6 x i8], [6 x i8]* @.str577, i32 0, i32 0
  %t468 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str577.c, i8* %t467, i64 5)
  %t469 = call { i64, i8* }* @nyx_array_new_ptr()
  %t470 = call { i64, i8* }* @make_astnode(%nyx_string* %t468, { i64, i8* }* %t469)
  ret { i64, i8* }* %t470
else18:
  br label %merge19
merge19:
  %t471 = getelementptr [7 x i8], [7 x i8]* @.str578, i32 0, i32 0
  %t472 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str578.c, i8* %t471, i64 6)
  %t473 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t472)
  br i1 %t473, label %then69, label %else70
then69:
  %t474 = call { i64, i8* }* @parse__parse_struct(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %t474
else70:
  br label %merge71
merge71:
  %t475 = getelementptr [5 x i8], [5 x i8]* @.str579, i32 0, i32 0
  %t476 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str579.c, i8* %t475, i64 4)
  %t477 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t476)
  br i1 %t477, label %then72, label %else73
then72:
  %t478 = call { i64, i8* }* @parse__parse_enum(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %t478
else73:
  br label %merge74
merge74:
  %t479 = getelementptr [6 x i8], [6 x i8]* @.str580, i32 0, i32 0
  %t480 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str580.c, i8* %t479, i64 5)
  %t481 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t480)
  br i1 %t481, label %then75, label %else76
then75:
  %t482 = call { i64, i8* }* @parse__parse_match(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %t482
else76:
  br label %merge77
merge77:
  %t483 = getelementptr [3 x i8], [3 x i8]* @.str581, i32 0, i32 0
  %t484 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str581.c, i8* %t483, i64 2)
  %t485 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t484)
  br i1 %t485, label %then78, label %else79
then78:
  %t486 = call { i64, i8* }* @parse__parse_if(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %t486
else79:
  br label %merge80
merge80:
  %t487 = getelementptr [6 x i8], [6 x i8]* @.str582, i32 0, i32 0
  %t488 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str582.c, i8* %t487, i64 5)
  %t489 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t488)
  br i1 %t489, label %then81, label %else82
then81:
  %t490 = call { i64, i8* }* @parse__parse_while(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %t490
else82:
  br label %merge83
merge83:
  %t491 = getelementptr [4 x i8], [4 x i8]* @.str583, i32 0, i32 0
  %t492 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str583.c, i8* %t491, i64 3)
  %t493 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t492)
  br i1 %t493, label %then84, label %else85
then84:
  %t494 = call { i64, i8* }* @parse__parse_for(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %t494
else85:
  br label %merge86
merge86:
  %t495 = getelementptr [7 x i8], [7 x i8]* @.str584, i32 0, i32 0
  %t496 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str584.c, i8* %t495, i64 6)
  %t497 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t496)
  br i1 %t497, label %then87, label %else88
then87:
  %t498 = call { i64, i8* }* @parse__parse_return(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %t498
else88:
  br label %merge89
merge89:
  %t499 = getelementptr [6 x i8], [6 x i8]* @.str585, i32 0, i32 0
  %t500 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str585.c, i8* %t499, i64 5)
  %t501 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t500)
  br i1 %t501, label %then90, label %else91
then90:
  %t502 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t503 = getelementptr [6 x i8], [6 x i8]* @.str586, i32 0, i32 0
  %t504 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str586.c, i8* %t503, i64 5)
  %t505 = call { i64, i8* }* @nyx_array_new_ptr()
  %t506 = call { i64, i8* }* @make_astnode(%nyx_string* %t504, { i64, i8* }* %t505)
  ret { i64, i8* }* %t506
else91:
  br label %merge92
merge92:
  %t507 = getelementptr [9 x i8], [9 x i8]* @.str587, i32 0, i32 0
  %t508 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str587.c, i8* %t507, i64 8)
  %t509 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t508)
  br i1 %t509, label %then93, label %else94
then93:
  %t510 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t511 = getelementptr [9 x i8], [9 x i8]* @.str588, i32 0, i32 0
  %t512 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str588.c, i8* %t511, i64 8)
  %t513 = call { i64, i8* }* @nyx_array_new_ptr()
  %t514 = call { i64, i8* }* @make_astnode(%nyx_string* %t512, { i64, i8* }* %t513)
  ret { i64, i8* }* %t514
else94:
  br label %merge95
merge95:
  %t515 = getelementptr [7 x i8], [7 x i8]* @.str589, i32 0, i32 0
  %t516 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str589.c, i8* %t515, i64 6)
  %t517 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t516)
  br i1 %t517, label %then96, label %else97
then96:
  %t518 = call { i64, i8* }* @parse__parse_export(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %t518
else97:
  br label %merge98
merge98:
  %t519 = getelementptr [4 x i8], [4 x i8]* @.str590, i32 0, i32 0
  %t520 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str590.c, i8* %t519, i64 3)
  %t521 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t520)
  br i1 %t521, label %then99, label %else100
then99:
  %t522 = call { i64, i8* }* @parse__parse_pub(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %t522
else100:
  br label %merge101
merge101:
  %t523 = getelementptr [7 x i8], [7 x i8]* @.str591, i32 0, i32 0
  %t524 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str591.c, i8* %t523, i64 6)
  %t525 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t524)
  br i1 %t525, label %then102, label %else103
then102:
  %t526 = call { i64, i8* }* @parse__parse_import(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %t526
else103:
  br label %merge104
merge104:
  %t527 = getelementptr [6 x i8], [6 x i8]* @.str592, i32 0, i32 0
  %t528 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str592.c, i8* %t527, i64 5)
  %t529 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t528)
  br i1 %t529, label %then105, label %else106
then105:
  %t530 = call { i64, i8* }* @parse__parse_trait(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %t530
else106:
  br label %merge107
merge107:
  %t531 = getelementptr [5 x i8], [5 x i8]* @.str593, i32 0, i32 0
  %t532 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str593.c, i8* %t531, i64 4)
  %t533 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t532)
  br i1 %t533, label %then108, label %else109
then108:
  %t534 = call { i64, i8* }* @parse__parse_impl(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %t534
else109:
  br label %merge110
merge110:
  %t535 = getelementptr [5 x i8], [5 x i8]* @.str594, i32 0, i32 0
  %t536 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str594.c, i8* %t535, i64 4)
  %t537 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t536)
  br i1 %t537, label %then111, label %else112
then111:
  %t538 = call { i64, i8* }* @parse__parse_test_decl(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %t538
else112:
  br label %merge113
merge113:
  %t539 = getelementptr [7 x i8], [7 x i8]* @.str595, i32 0, i32 0
  %t540 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str595.c, i8* %t539, i64 6)
  %t541 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t540)
  br i1 %t541, label %then114, label %else115
then114:
  %t542 = call { i64, i8* }* @parse__parse_extern_fn(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %t542
else115:
  br label %merge116
merge116:
  %t543 = getelementptr [7 x i8], [7 x i8]* @.str596, i32 0, i32 0
  %t544 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str596.c, i8* %t543, i64 6)
  %t545 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t544)
  br i1 %t545, label %then117, label %else118
then117:
  %t546 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t547 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t547, { i64, i8* }** %t548
  %t549 = getelementptr [13 x i8], [13 x i8]* @.str597, i32 0, i32 0
  %t550 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str597.c, i8* %t549, i64 12)
  %t551 = call { i64, i8* }* @nyx_array_new_ptr()
  %t552 = load { i64, i8* }*, { i64, i8* }** %t548
  %t553 = ptrtoint { i64, i8* }* %t552 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t551, i64 %t553, i64 5)
  %t554 = call { i64, i8* }* @make_astnode(%nyx_string* %t550, { i64, i8* }* %t551)
  ret { i64, i8* }* %t554
else118:
  br label %merge119
merge119:
  %t555 = getelementptr [7 x i8], [7 x i8]* @.str598, i32 0, i32 0
  %t556 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str598.c, i8* %t555, i64 6)
  %t557 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t556)
  br i1 %t557, label %then120, label %else121
then120:
  %t558 = call { i64, i8* }* @parse__parse_static_var(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %t558
else121:
  br label %merge122
merge122:
  %t559 = getelementptr [7 x i8], [7 x i8]* @.str599, i32 0, i32 0
  %t560 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str599.c, i8* %t559, i64 6)
  %t561 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t560)
  br i1 %t561, label %then123, label %else124
then123:
  %t562 = call { i64, i8* }* @parse__parse_module_decl(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %t562
else124:
  br label %merge125
merge125:
  %t563 = getelementptr [6 x i8], [6 x i8]* @.str600, i32 0, i32 0
  %t564 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str600.c, i8* %t563, i64 5)
  %t565 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t564)
  br i1 %t565, label %then126, label %else127
then126:
  %t566 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t567 = getelementptr [11 x i8], [11 x i8]* @.str601, i32 0, i32 0
  %t568 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str601.c, i8* %t567, i64 10)
  %t569 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t568)
  br i1 %t569, label %then129, label %else130
then129:
  %t570 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t570, { i64, i8* }** %t571
  %t572 = getelementptr [6 x i8], [6 x i8]* @.str602, i32 0, i32 0
  %t573 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str602.c, i8* %t572, i64 5)
  %t574 = call { i64, i8* }* @nyx_array_new_ptr()
  %t575 = load { i64, i8* }*, { i64, i8* }** %t571
  %t576 = ptrtoint { i64, i8* }* %t575 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t574, i64 %t576, i64 5)
  %t577 = call { i64, i8* }* @make_astnode(%nyx_string* %t573, { i64, i8* }* %t574)
  ret { i64, i8* }* %t577
else130:
  br label %merge131
merge131:
  %t578 = call { i64, i8* }* @parse__parse_statement(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t578, { i64, i8* }** %t579
  %t580 = getelementptr [6 x i8], [6 x i8]* @.str603, i32 0, i32 0
  %t581 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str603.c, i8* %t580, i64 5)
  %t582 = call { i64, i8* }* @nyx_array_new_ptr()
  %t583 = call { i64, i8* }* @nyx_array_new_ptr()
  %t584 = load { i64, i8* }*, { i64, i8* }** %t579
  %t585 = ptrtoint { i64, i8* }* %t584 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t583, i64 %t585, i64 5)
  %t586 = ptrtoint { i64, i8* }* %t583 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t582, i64 %t586, i64 5)
  %t587 = call { i64, i8* }* @make_astnode(%nyx_string* %t581, { i64, i8* }* %t582)
  store { i64, i8* }* %t587, { i64, i8* }** %t588
  %t589 = getelementptr [6 x i8], [6 x i8]* @.str604, i32 0, i32 0
  %t590 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str604.c, i8* %t589, i64 5)
  %t591 = call { i64, i8* }* @nyx_array_new_ptr()
  %t592 = load { i64, i8* }*, { i64, i8* }** %t588
  %t593 = ptrtoint { i64, i8* }* %t592 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t591, i64 %t593, i64 5)
  %t594 = call { i64, i8* }* @make_astnode(%nyx_string* %t590, { i64, i8* }* %t591)
  ret { i64, i8* }* %t594
else127:
  br label %merge128
merge128:
  %t595 = getelementptr [4 x i8], [4 x i8]* @.str605, i32 0, i32 0
  %t596 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str605.c, i8* %t595, i64 3)
  %t597 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t596)
  br i1 %t597, label %then132, label %else133
then132:
  %t598 = call { i64, i8* }* @parse__parse_try_catch(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %t598
else133:
  br label %merge134
merge134:
  %t599 = getelementptr [6 x i8], [6 x i8]* @.str606, i32 0, i32 0
  %t600 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str606.c, i8* %t599, i64 5)
  %t601 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t600)
  br i1 %t601, label %then135, label %else136
then135:
  %t602 = call { i64, i8* }* @parse__parse_throw(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %t602
else136:
  br label %merge137
merge137:
  %t603 = getelementptr [6 x i8], [6 x i8]* @.str607, i32 0, i32 0
  %t604 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str607.c, i8* %t603, i64 5)
  %t605 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t604)
  br i1 %t605, label %then138, label %else139
then138:
  %t606 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t607 = call { i64, i8* }* @parse__parse_async_function(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %t607
else139:
  br label %merge140
merge140:
  %t608 = getelementptr [11 x i8], [11 x i8]* @.str608, i32 0, i32 0
  %t609 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str608.c, i8* %t608, i64 10)
  %t610 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t609)
  br i1 %t610, label %then141, label %else142
then141:
  %t611 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  store %Token %t611, %Token* %t612
  %t613 = load %Token, %Token* %t612
  %t614 = call %nyx_string* @get_token_value(%Token %t613)
  store %nyx_string* %t614, %nyx_string** %t615
  %t616 = load %nyx_string*, %nyx_string** %t615
  %t617 = getelementptr [5 x i8], [5 x i8]* @.str609, i32 0, i32 0
  %t618 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str609.c, i8* %t617, i64 4)
  %t619 = call i1 @nyx_string_equals(%nyx_string* %t616, %nyx_string* %t618)
  br i1 %t619, label %then144, label %else145
then144:
  %t620 = call { i64, i8* }* @parse__parse_type_alias(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %t620
else145:
  br label %merge146
merge146:
  %t621 = load %nyx_string*, %nyx_string** %t615
  %t622 = getelementptr [6 x i8], [6 x i8]* @.str610, i32 0, i32 0
  %t623 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str610.c, i8* %t622, i64 5)
  %t624 = call i1 @nyx_string_equals(%nyx_string* %t621, %nyx_string* %t623)
  br i1 %t624, label %then147, label %else148
then147:
  %t625 = call { i64, i8* }* @parse__parse_macro_def(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %t625
else148:
  br label %merge149
merge149:
  %t626 = load %nyx_string*, %nyx_string** %t615
  %t627 = getelementptr [6 x i8], [6 x i8]* @.str611, i32 0, i32 0
  %t628 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str611.c, i8* %t627, i64 5)
  %t629 = call i1 @nyx_string_equals(%nyx_string* %t626, %nyx_string* %t628)
  br i1 %t629, label %then150, label %else151
then150:
  %t630 = call { i64, i8* }* @parse__parse_bench_decl(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %t630
else151:
  br label %merge152
merge152:
  %t631 = load %nyx_string*, %nyx_string** %t615
  %t632 = getelementptr [6 x i8], [6 x i8]* @.str612, i32 0, i32 0
  %t633 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str612.c, i8* %t632, i64 5)
  %t634 = call i1 @nyx_string_equals(%nyx_string* %t631, %nyx_string* %t633)
  br i1 %t634, label %then153, label %else154
then153:
  %t635 = call { i64, i8* }* @parse__parse_spawn_stmt(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %t635
else154:
  br label %merge155
merge155:
  %t636 = load %nyx_string*, %nyx_string** %t615
  %t637 = getelementptr [7 x i8], [7 x i8]* @.str613, i32 0, i32 0
  %t638 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str613.c, i8* %t637, i64 6)
  %t639 = call i1 @nyx_string_equals(%nyx_string* %t636, %nyx_string* %t638)
  br i1 %t639, label %then156, label %else157
then156:
  %t640 = call { i64, i8* }* @parse__parse_select_stmt(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %t640
else157:
  br label %merge158
merge158:
  %t641 = load %nyx_string*, %nyx_string** %t615
  %t642 = getelementptr [5 x i8], [5 x i8]* @.str614, i32 0, i32 0
  %t643 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str614.c, i8* %t642, i64 4)
  %t644 = call i1 @nyx_string_equals(%nyx_string* %t641, %nyx_string* %t643)
  br i1 %t644, label %then159, label %else160
then159:
  %t645 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t646 = getelementptr [3 x i8], [3 x i8]* @.str615, i32 0, i32 0
  %t647 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str615.c, i8* %t646, i64 2)
  %t648 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t647)
  br i1 %t648, label %then162, label %else163
then162:
  %t649 = call { i64, i8* }* @parse__parse_function(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t649, { i64, i8* }** %t650
  %t651 = load { i64, i8* }*, { i64, i8* }** %t650
  %t652 = call i64 @nyx_array_get({ i64, i8* }* %t651, i64 1)
  %t653 = inttoptr i64 %t652 to { i64, i8* }*
  store { i64, i8* }* %t653, { i64, i8* }** %t654
  %t655 = getelementptr [9 x i8], [9 x i8]* @.str616, i32 0, i32 0
  %t656 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str616.c, i8* %t655, i64 8)
  %t657 = call { i64, i8* }* @nyx_array_new_ptr()
  %t658 = load { i64, i8* }*, { i64, i8* }** %t654
  %t659 = call i64 @nyx_array_get({ i64, i8* }* %t658, i64 0)
  call void @nyx_array_push({ i64, i8* }* %t657, i64 %t659)
  %t660 = load { i64, i8* }*, { i64, i8* }** %t654
  %t661 = call i64 @nyx_array_get({ i64, i8* }* %t660, i64 1)
  call void @nyx_array_push({ i64, i8* }* %t657, i64 %t661)
  %t662 = load { i64, i8* }*, { i64, i8* }** %t654
  %t663 = call i64 @nyx_array_get({ i64, i8* }* %t662, i64 2)
  call void @nyx_array_push({ i64, i8* }* %t657, i64 %t663)
  %t664 = load { i64, i8* }*, { i64, i8* }** %t654
  %t665 = call i64 @nyx_array_get({ i64, i8* }* %t664, i64 3)
  call void @nyx_array_push({ i64, i8* }* %t657, i64 %t665)
  %t666 = load { i64, i8* }*, { i64, i8* }** %t654
  %t667 = call i64 @nyx_array_get({ i64, i8* }* %t666, i64 4)
  call void @nyx_array_push({ i64, i8* }* %t657, i64 %t667)
  %t668 = getelementptr [5 x i8], [5 x i8]* @.str617, i32 0, i32 0
  %t669 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str617.c, i8* %t668, i64 4)
  %t670 = ptrtoint %nyx_string* %t669 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t657, i64 %t670, i64 2)
  %t671 = load { i64, i8* }*, { i64, i8* }** %t654
  %t672 = call i64 @nyx_array_get({ i64, i8* }* %t671, i64 8)
  call void @nyx_array_push({ i64, i8* }* %t657, i64 %t672)
  %t673 = call { i64, i8* }* @make_astnode(%nyx_string* %t656, { i64, i8* }* %t657)
  ret { i64, i8* }* %t673
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
  %t674 = getelementptr [5 x i8], [5 x i8]* @.str618, i32 0, i32 0
  %t675 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str618.c, i8* %t674, i64 4)
  %t676 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t675)
  br i1 %t676, label %then165, label %else166
then165:
  %t677 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t678 = call { i64, i8* }* @parse__parse_unary(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t678, { i64, i8* }** %t679
  %t680 = getelementptr [7 x i8], [7 x i8]* @.str619, i32 0, i32 0
  %t681 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str619.c, i8* %t680, i64 6)
  %t682 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t681)
  br i1 %t682, label %then168, label %else169
then168:
  %t683 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t684 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t684, { i64, i8* }** %t685
  %t686 = getelementptr [13 x i8], [13 x i8]* @.str620, i32 0, i32 0
  %t687 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str620.c, i8* %t686, i64 12)
  %t688 = call { i64, i8* }* @nyx_array_new_ptr()
  %t689 = load { i64, i8* }*, { i64, i8* }** %t679
  %t690 = ptrtoint { i64, i8* }* %t689 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t688, i64 %t690, i64 5)
  %t691 = load { i64, i8* }*, { i64, i8* }** %t685
  %t692 = ptrtoint { i64, i8* }* %t691 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t688, i64 %t692, i64 5)
  %t693 = call { i64, i8* }* @make_astnode(%nyx_string* %t687, { i64, i8* }* %t688)
  ret { i64, i8* }* %t693
else169:
  br label %merge170
merge170:
  %t694 = getelementptr [6 x i8], [6 x i8]* @.str621, i32 0, i32 0
  %t695 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str621.c, i8* %t694, i64 5)
  %t696 = call { i64, i8* }* @nyx_array_new_ptr()
  %t697 = load { i64, i8* }*, { i64, i8* }** %t679
  %t698 = ptrtoint { i64, i8* }* %t697 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t696, i64 %t698, i64 5)
  %t699 = call { i64, i8* }* @make_astnode(%nyx_string* %t695, { i64, i8* }* %t696)
  ret { i64, i8* }* %t699
else166:
  br label %merge167
merge167:
  %t700 = call { i64, i8* }* @parse__parse_assignment_or_expr(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %t700
}

define internal { i64, i8* }* @parse__parse_spawn_stmt(%SharedEnv_parse* %env.param) {
  %t33 = alloca i64
  %t36 = alloca i64
  %t46 = alloca %nyx_string*
  %t48 = alloca { i64, i8* }*
  %t52 = alloca { i64, i8* }*
  %t56 = alloca { i64, i8* }*
  %t83 = alloca { i64, i8* }*
  %t93 = alloca { i64, i8* }*
  %t101 = alloca { i64, i8* }*
  %t103 = alloca { i64, i8* }*
  %t115 = alloca { i64, i8* }*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t32 = load i64, i64* @g_last_line
  store i64 %t32, i64* %t33
  %t34 = load { i64, i8* }*, { i64, i8* }** %t13
  %t35 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %t34, i64 0)
  store i64 %t35, i64* %t36
  %t37 = load { i64, i8* }*, { i64, i8* }** %t13
  %t38 = load { i64, i8* }*, { i64, i8* }** %t13
  %t39 = call i64 @nyx_array_get({ i64, i8* }* %t38, i64 0)
  %t40 = add i64 %t39, 1
  call void @nyx_array_set({ i64, i8* }* %t37, i64 0, i64 %t40)
  %t41 = getelementptr [9 x i8], [9 x i8]* @.str622, i32 0, i32 0
  %t42 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str622.c, i8* %t41, i64 8)
  %t43 = load i64, i64* %t36
  %t44 = call %nyx_string* @nyx_string_from_int(i64 %t43)
  %t45 = call %nyx_string* @nyx_string_concat(%nyx_string* %t42, %nyx_string* %t44)
  store %nyx_string* %t45, %nyx_string** %t46
  %t47 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t47, { i64, i8* }** %t48
  %t49 = load { i64, i8* }*, { i64, i8* }** %t48
  %t50 = call i64 @nyx_array_get({ i64, i8* }* %t49, i64 1)
  %t51 = inttoptr i64 %t50 to { i64, i8* }*
  store { i64, i8* }* %t51, { i64, i8* }** %t52
  %t53 = load { i64, i8* }*, { i64, i8* }** %t52
  %t54 = call i64 @nyx_array_get({ i64, i8* }* %t53, i64 0)
  %t55 = inttoptr i64 %t54 to { i64, i8* }*
  store { i64, i8* }* %t55, { i64, i8* }** %t56
  %t57 = load { i64, i8* }*, { i64, i8* }** %t56
  %t58 = getelementptr [7 x i8], [7 x i8]* @.str623, i32 0, i32 0
  %t59 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str623.c, i8* %t58, i64 6)
  %t60 = call { i64, i8* }* @nyx_array_new_ptr()
  %t61 = getelementptr [8 x i8], [8 x i8]* @.str624, i32 0, i32 0
  %t62 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str624.c, i8* %t61, i64 7)
  %t63 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %t63, i64 0, i64 1)
  %t64 = call { i64, i8* }* @make_astnode(%nyx_string* %t62, { i64, i8* }* %t63)
  %t65 = ptrtoint { i64, i8* }* %t64 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t60, i64 %t65, i64 5)
  %t66 = call { i64, i8* }* @make_astnode(%nyx_string* %t59, { i64, i8* }* %t60)
  %t67 = ptrtoint { i64, i8* }* %t66 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t57, i64 %t67, i64 5)
  %t68 = getelementptr [9 x i8], [9 x i8]* @.str625, i32 0, i32 0
  %t69 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str625.c, i8* %t68, i64 8)
  %t70 = call { i64, i8* }* @nyx_array_new_ptr()
  %t71 = load %nyx_string*, %nyx_string** %t46
  %t72 = ptrtoint %nyx_string* %t71 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t70, i64 %t72, i64 2)
  %t73 = call { i64, i8* }* @nyx_array_new_ptr()
  %t74 = ptrtoint { i64, i8* }* %t73 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t70, i64 %t74, i64 5)
  %t75 = getelementptr [4 x i8], [4 x i8]* @.str626, i32 0, i32 0
  %t76 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str626.c, i8* %t75, i64 3)
  %t77 = ptrtoint %nyx_string* %t76 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t70, i64 %t77, i64 2)
  %t78 = load { i64, i8* }*, { i64, i8* }** %t48
  %t79 = ptrtoint { i64, i8* }* %t78 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t70, i64 %t79, i64 5)
  %t80 = call { i64, i8* }* @nyx_array_new_ptr()
  %t81 = ptrtoint { i64, i8* }* %t80 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t70, i64 %t81, i64 5)
  %t82 = call { i64, i8* }* @make_astnode(%nyx_string* %t69, { i64, i8* }* %t70)
  store { i64, i8* }* %t82, { i64, i8* }** %t83
  %t84 = load { i64, i8* }*, { i64, i8* }** %t12
  %t85 = load { i64, i8* }*, { i64, i8* }** %t83
  %t86 = ptrtoint { i64, i8* }* %t85 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t84, i64 %t86, i64 5)
  %t87 = getelementptr [11 x i8], [11 x i8]* @.str627, i32 0, i32 0
  %t88 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str627.c, i8* %t87, i64 10)
  %t89 = call { i64, i8* }* @nyx_array_new_ptr()
  %t90 = load %nyx_string*, %nyx_string** %t46
  %t91 = ptrtoint %nyx_string* %t90 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t89, i64 %t91, i64 2)
  %t92 = call { i64, i8* }* @make_astnode(%nyx_string* %t88, { i64, i8* }* %t89)
  store { i64, i8* }* %t92, { i64, i8* }** %t93
  %t94 = getelementptr [11 x i8], [11 x i8]* @.str628, i32 0, i32 0
  %t95 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str628.c, i8* %t94, i64 10)
  %t96 = call { i64, i8* }* @nyx_array_new_ptr()
  %t97 = getelementptr [11 x i8], [11 x i8]* @.str629, i32 0, i32 0
  %t98 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str629.c, i8* %t97, i64 10)
  %t99 = ptrtoint %nyx_string* %t98 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t96, i64 %t99, i64 2)
  %t100 = call { i64, i8* }* @make_astnode(%nyx_string* %t95, { i64, i8* }* %t96)
  store { i64, i8* }* %t100, { i64, i8* }** %t101
  %t102 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t102, { i64, i8* }** %t103
  %t104 = load { i64, i8* }*, { i64, i8* }** %t103
  %t105 = load { i64, i8* }*, { i64, i8* }** %t93
  %t106 = ptrtoint { i64, i8* }* %t105 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t104, i64 %t106, i64 5)
  %t107 = getelementptr [5 x i8], [5 x i8]* @.str630, i32 0, i32 0
  %t108 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str630.c, i8* %t107, i64 4)
  %t109 = call { i64, i8* }* @nyx_array_new_ptr()
  %t110 = load { i64, i8* }*, { i64, i8* }** %t101
  %t111 = ptrtoint { i64, i8* }* %t110 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t109, i64 %t111, i64 5)
  %t112 = load { i64, i8* }*, { i64, i8* }** %t103
  %t113 = ptrtoint { i64, i8* }* %t112 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t109, i64 %t113, i64 5)
  %t114 = call { i64, i8* }* @make_astnode(%nyx_string* %t108, { i64, i8* }* %t109)
  store { i64, i8* }* %t114, { i64, i8* }** %t115
  %t116 = load { i64, i8* }*, { i64, i8* }** %t115
  %t117 = load i64, i64* %t33
  call void @nyx_array_set({ i64, i8* }* %t116, i64 2, i64 %t117)
  %t118 = load { i64, i8* }*, { i64, i8* }** %t115
  ret { i64, i8* }* %t118
}

define internal { i64, i8* }* @parse__parse_select_stmt(%SharedEnv_parse* %env.param) {
  %t33 = alloca i64
  %t38 = alloca { i64, i8* }*
  %t45 = alloca { i64, i8* }*
  %t46 = alloca i1
  %t52 = alloca %Token
  %t55 = alloca %nyx_string*
  %t72 = alloca %nyx_string*
  %t77 = alloca i64
  %t79 = alloca %Token
  %t89 = alloca { i64, i8* }*
  %t94 = alloca { i64, i8* }*
  %t96 = alloca { i64, i8* }*
  %t112 = alloca i64
  %t123 = alloca { i64, i8* }*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t32 = load i64, i64* @g_last_line
  store i64 %t32, i64* %t33
  %t34 = getelementptr [11 x i8], [11 x i8]* @.str631, i32 0, i32 0
  %t35 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str631.c, i8* %t34, i64 10)
  %t36 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t35)
  %t37 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t37, { i64, i8* }** %t38
  %t39 = getelementptr [6 x i8], [6 x i8]* @.str632, i32 0, i32 0
  %t40 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str632.c, i8* %t39, i64 5)
  %t41 = call { i64, i8* }* @nyx_array_new_ptr()
  %t42 = call { i64, i8* }* @nyx_array_new_ptr()
  %t43 = ptrtoint { i64, i8* }* %t42 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t41, i64 %t43, i64 5)
  %t44 = call { i64, i8* }* @make_astnode(%nyx_string* %t40, { i64, i8* }* %t41)
  store { i64, i8* }* %t44, { i64, i8* }** %t45
  store i1 0, i1* %t46
  br label %while_cond0
while_cond0:
  %t47 = getelementptr [12 x i8], [12 x i8]* @.str633, i32 0, i32 0
  %t48 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str633.c, i8* %t47, i64 11)
  %t49 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t48)
  %t50 = xor i1 %t49, true
  br i1 %t50, label %while_body1, label %while_end2
while_body1:
  %t51 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  store %Token %t51, %Token* %t52
  %t53 = load %Token, %Token* %t52
  %t54 = call %nyx_string* @get_token_value(%Token %t53)
  store %nyx_string* %t54, %nyx_string** %t55
  %t56 = load %nyx_string*, %nyx_string** %t55
  %t57 = getelementptr [8 x i8], [8 x i8]* @.str634, i32 0, i32 0
  %t58 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str634.c, i8* %t57, i64 7)
  %t59 = call i1 @nyx_string_equals(%nyx_string* %t56, %nyx_string* %t58)
  br i1 %t59, label %then3, label %else4
then3:
  %t60 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t61 = getelementptr [12 x i8], [12 x i8]* @.str635, i32 0, i32 0
  %t62 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str635.c, i8* %t61, i64 11)
  %t63 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t62)
  %t64 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t64, { i64, i8* }** %t45
  store i1 1, i1* %t46
  br label %merge5
else4:
  %t65 = load %nyx_string*, %nyx_string** %t55
  %t66 = getelementptr [5 x i8], [5 x i8]* @.str636, i32 0, i32 0
  %t67 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str636.c, i8* %t66, i64 4)
  %t68 = call i1 @nyx_string_equals(%nyx_string* %t65, %nyx_string* %t67)
  br i1 %t68, label %then6, label %else7
then6:
  %t69 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge8
else7:
  br label %merge8
merge8:
  %t70 = getelementptr [1 x i8], [1 x i8]* @.str637, i32 0, i32 0
  %t71 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str637.c, i8* %t70, i64 0)
  store %nyx_string* %t71, %nyx_string** %t72
  %t73 = getelementptr [11 x i8], [11 x i8]* @.str638, i32 0, i32 0
  %t74 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str638.c, i8* %t73, i64 10)
  %t75 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t74)
  br i1 %t75, label %then9, label %else10
then9:
  %t76 = load i64, i64* %t4
  store i64 %t76, i64* %t77
  %t78 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  store %Token %t78, %Token* %t79
  %t80 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t81 = getelementptr [7 x i8], [7 x i8]* @.str639, i32 0, i32 0
  %t82 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str639.c, i8* %t81, i64 6)
  %t83 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t82)
  br i1 %t83, label %then12, label %else13
then12:
  %t84 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t85 = load %Token, %Token* %t79
  %t86 = call %nyx_string* @get_token_value(%Token %t85)
  store %nyx_string* %t86, %nyx_string** %t72
  br label %merge14
else13:
  %t87 = load i64, i64* %t77
  store i64 %t87, i64* %t4
  br label %merge14
merge14:
  br label %merge11
else10:
  br label %merge11
merge11:
  %t88 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t88, { i64, i8* }** %t89
  %t90 = getelementptr [12 x i8], [12 x i8]* @.str640, i32 0, i32 0
  %t91 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str640.c, i8* %t90, i64 11)
  %t92 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t91)
  %t93 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t93, { i64, i8* }** %t94
  %t95 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t95, { i64, i8* }** %t96
  %t97 = load { i64, i8* }*, { i64, i8* }** %t96
  %t98 = load { i64, i8* }*, { i64, i8* }** %t89
  %t99 = ptrtoint { i64, i8* }* %t98 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t97, i64 %t99, i64 5)
  %t100 = load { i64, i8* }*, { i64, i8* }** %t96
  %t101 = load { i64, i8* }*, { i64, i8* }** %t94
  %t102 = ptrtoint { i64, i8* }* %t101 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t100, i64 %t102, i64 5)
  %t103 = load { i64, i8* }*, { i64, i8* }** %t96
  %t104 = load %nyx_string*, %nyx_string** %t72
  %t105 = ptrtoint %nyx_string* %t104 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t103, i64 %t105, i64 2)
  %t106 = load { i64, i8* }*, { i64, i8* }** %t38
  %t107 = load { i64, i8* }*, { i64, i8* }** %t96
  %t108 = ptrtoint { i64, i8* }* %t107 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t106, i64 %t108, i64 5)
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %t109 = getelementptr [12 x i8], [12 x i8]* @.str641, i32 0, i32 0
  %t110 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str641.c, i8* %t109, i64 11)
  %t111 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t110)
  store i64 0, i64* %t112
  %t113 = load i1, i1* %t46
  br i1 %t113, label %then15, label %else16
then15:
  store i64 1, i64* %t112
  br label %merge17
else16:
  br label %merge17
merge17:
  %t114 = getelementptr [12 x i8], [12 x i8]* @.str642, i32 0, i32 0
  %t115 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str642.c, i8* %t114, i64 11)
  %t116 = call { i64, i8* }* @nyx_array_new_ptr()
  %t117 = load { i64, i8* }*, { i64, i8* }** %t38
  %t118 = ptrtoint { i64, i8* }* %t117 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t116, i64 %t118, i64 5)
  %t119 = load { i64, i8* }*, { i64, i8* }** %t45
  %t120 = ptrtoint { i64, i8* }* %t119 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t116, i64 %t120, i64 5)
  %t121 = load i64, i64* %t112
  call void @nyx_array_push_tagged({ i64, i8* }* %t116, i64 %t121, i64 1)
  %t122 = call { i64, i8* }* @make_astnode(%nyx_string* %t115, { i64, i8* }* %t116)
  store { i64, i8* }* %t122, { i64, i8* }** %t123
  %t124 = load { i64, i8* }*, { i64, i8* }** %t123
  %t125 = load i64, i64* %t33
  call void @nyx_array_set({ i64, i8* }* %t124, i64 2, i64 %t125)
  %t126 = load { i64, i8* }*, { i64, i8* }** %t123
  ret { i64, i8* }* %t126
}

define internal { i64, i8* }* @parse__parse_bench_decl(%SharedEnv_parse* %env.param) {
  %t35 = alloca %Token
  %t38 = alloca %nyx_string*
  %t41 = alloca %nyx_string*
  %t46 = alloca %Token
  %t50 = alloca { i64, i8* }*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t32 = getelementptr [7 x i8], [7 x i8]* @.str643, i32 0, i32 0
  %t33 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str643.c, i8* %t32, i64 6)
  %t34 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t33)
  store %Token %t34, %Token* %t35
  %t36 = load %Token, %Token* %t35
  %t37 = call %nyx_string* @get_token_value(%Token %t36)
  store %nyx_string* %t37, %nyx_string** %t38
  %t39 = getelementptr [7 x i8], [7 x i8]* @.str644, i32 0, i32 0
  %t40 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str644.c, i8* %t39, i64 6)
  store %nyx_string* %t40, %nyx_string** %t41
  %t42 = getelementptr [7 x i8], [7 x i8]* @.str645, i32 0, i32 0
  %t43 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str645.c, i8* %t42, i64 6)
  %t44 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t43)
  br i1 %t44, label %then0, label %else1
then0:
  %t45 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store %Token %t45, %Token* %t46
  %t47 = load %Token, %Token* %t46
  %t48 = call %nyx_string* @get_token_value(%Token %t47)
  store %nyx_string* %t48, %nyx_string** %t41
  br label %merge2
else1:
  br label %merge2
merge2:
  %t49 = call { i64, i8* }* @parse__parse_fn_body_block(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t49, { i64, i8* }** %t50
  %t51 = getelementptr [11 x i8], [11 x i8]* @.str646, i32 0, i32 0
  %t52 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str646.c, i8* %t51, i64 10)
  %t53 = call { i64, i8* }* @nyx_array_new_ptr()
  %t54 = load %nyx_string*, %nyx_string** %t38
  %t55 = ptrtoint %nyx_string* %t54 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t53, i64 %t55, i64 2)
  %t56 = load %nyx_string*, %nyx_string** %t41
  %t57 = ptrtoint %nyx_string* %t56 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t53, i64 %t57, i64 2)
  %t58 = load { i64, i8* }*, { i64, i8* }** %t50
  %t59 = ptrtoint { i64, i8* }* %t58 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t53, i64 %t59, i64 5)
  %t60 = call { i64, i8* }* @make_astnode(%nyx_string* %t52, { i64, i8* }* %t53)
  ret { i64, i8* }* %t60
}

define internal { i64, i8* }* @parse__parse_test_decl(%SharedEnv_parse* %env.param) {
  %t37 = alloca %Token
  %t40 = alloca %nyx_string*
  %t42 = alloca { i64, i8* }*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = getelementptr [5 x i8], [5 x i8]* @.str647, i32 0, i32 0
  %t32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str647.c, i8* %t31, i64 4)
  %t33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t32)
  %t34 = getelementptr [7 x i8], [7 x i8]* @.str648, i32 0, i32 0
  %t35 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str648.c, i8* %t34, i64 6)
  %t36 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t35)
  store %Token %t36, %Token* %t37
  %t38 = load %Token, %Token* %t37
  %t39 = call %nyx_string* @get_token_value(%Token %t38)
  store %nyx_string* %t39, %nyx_string** %t40
  %t41 = call { i64, i8* }* @parse__parse_fn_body_block(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t41, { i64, i8* }** %t42
  %t43 = getelementptr [10 x i8], [10 x i8]* @.str649, i32 0, i32 0
  %t44 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str649.c, i8* %t43, i64 9)
  %t45 = call { i64, i8* }* @nyx_array_new_ptr()
  %t46 = load %nyx_string*, %nyx_string** %t40
  %t47 = ptrtoint %nyx_string* %t46 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t45, i64 %t47, i64 2)
  %t48 = load { i64, i8* }*, { i64, i8* }** %t42
  %t49 = ptrtoint { i64, i8* }* %t48 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t45, i64 %t49, i64 5)
  %t50 = call { i64, i8* }* @make_astnode(%nyx_string* %t44, { i64, i8* }* %t45)
  ret { i64, i8* }* %t50
}

define internal { i64, i8* }* @parse__parse_static_var(%SharedEnv_parse* %env.param) {
  %t40 = alloca %Token
  %t43 = alloca %nyx_string*
  %t46 = alloca %nyx_string*
  %t56 = alloca { i64, i8* }*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = getelementptr [7 x i8], [7 x i8]* @.str650, i32 0, i32 0
  %t32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str650.c, i8* %t31, i64 6)
  %t33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t32)
  %t34 = getelementptr [4 x i8], [4 x i8]* @.str651, i32 0, i32 0
  %t35 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str651.c, i8* %t34, i64 3)
  %t36 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t35)
  %t37 = getelementptr [11 x i8], [11 x i8]* @.str652, i32 0, i32 0
  %t38 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str652.c, i8* %t37, i64 10)
  %t39 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t38)
  store %Token %t39, %Token* %t40
  %t41 = load %Token, %Token* %t40
  %t42 = call %nyx_string* @get_token_value(%Token %t41)
  store %nyx_string* %t42, %nyx_string** %t43
  %t44 = getelementptr [4 x i8], [4 x i8]* @.str653, i32 0, i32 0
  %t45 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str653.c, i8* %t44, i64 3)
  store %nyx_string* %t45, %nyx_string** %t46
  %t47 = getelementptr [6 x i8], [6 x i8]* @.str654, i32 0, i32 0
  %t48 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str654.c, i8* %t47, i64 5)
  %t49 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t48)
  br i1 %t49, label %then0, label %else1
then0:
  %t50 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t51 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %t51, %nyx_string** %t46
  br label %merge2
else1:
  br label %merge2
merge2:
  %t52 = getelementptr [7 x i8], [7 x i8]* @.str655, i32 0, i32 0
  %t53 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str655.c, i8* %t52, i64 6)
  %t54 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t53)
  %t55 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t55, { i64, i8* }** %t56
  %t57 = getelementptr [11 x i8], [11 x i8]* @.str656, i32 0, i32 0
  %t58 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str656.c, i8* %t57, i64 10)
  %t59 = call { i64, i8* }* @nyx_array_new_ptr()
  %t60 = load %nyx_string*, %nyx_string** %t43
  %t61 = ptrtoint %nyx_string* %t60 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t59, i64 %t61, i64 2)
  %t62 = load %nyx_string*, %nyx_string** %t46
  %t63 = ptrtoint %nyx_string* %t62 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t59, i64 %t63, i64 2)
  %t64 = load { i64, i8* }*, { i64, i8* }** %t56
  %t65 = ptrtoint { i64, i8* }* %t64 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t59, i64 %t65, i64 5)
  %t66 = call { i64, i8* }* @make_astnode(%nyx_string* %t58, { i64, i8* }* %t59)
  ret { i64, i8* }* %t66
}

define internal { i64, i8* }* @parse__parse_extern_fn(%SharedEnv_parse* %env.param) {
  %t37 = alloca %Token
  %t40 = alloca %nyx_string*
  %t47 = alloca %Token
  %t50 = alloca %nyx_string*
  %t55 = alloca { i64, i8* }*
  %t56 = alloca i1
  %t72 = alloca %Token
  %t75 = alloca %nyx_string*
  %t80 = alloca %nyx_string*
  %t90 = alloca %nyx_string*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = getelementptr [7 x i8], [7 x i8]* @.str657, i32 0, i32 0
  %t32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str657.c, i8* %t31, i64 6)
  %t33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t32)
  %t34 = getelementptr [7 x i8], [7 x i8]* @.str658, i32 0, i32 0
  %t35 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str658.c, i8* %t34, i64 6)
  %t36 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t35)
  store %Token %t36, %Token* %t37
  %t38 = load %Token, %Token* %t37
  %t39 = call %nyx_string* @get_token_value(%Token %t38)
  store %nyx_string* %t39, %nyx_string** %t40
  %t41 = getelementptr [3 x i8], [3 x i8]* @.str659, i32 0, i32 0
  %t42 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str659.c, i8* %t41, i64 2)
  %t43 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t42)
  %t44 = getelementptr [11 x i8], [11 x i8]* @.str660, i32 0, i32 0
  %t45 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str660.c, i8* %t44, i64 10)
  %t46 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t45)
  store %Token %t46, %Token* %t47
  %t48 = load %Token, %Token* %t47
  %t49 = call %nyx_string* @get_token_value(%Token %t48)
  store %nyx_string* %t49, %nyx_string** %t50
  %t51 = getelementptr [11 x i8], [11 x i8]* @.str661, i32 0, i32 0
  %t52 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str661.c, i8* %t51, i64 10)
  %t53 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t52)
  %t54 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t54, { i64, i8* }** %t55
  store i1 0, i1* %t56
  br label %while_cond0
while_cond0:
  %t57 = load i1, i1* %t56
  %t58 = xor i1 %t57, true
  br i1 %t58, label %while_body1, label %while_end2
while_body1:
  %t59 = getelementptr [12 x i8], [12 x i8]* @.str662, i32 0, i32 0
  %t60 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str662.c, i8* %t59, i64 11)
  %t61 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t60)
  br i1 %t61, label %then3, label %else4
then3:
  %t62 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %t56
  br label %merge5
else4:
  %t63 = load { i64, i8* }*, { i64, i8* }** %t55
  %t64 = call i64 @nyx_array_length({ i64, i8* }* %t63)
  %t65 = icmp sgt i64 %t64, 0
  br i1 %t65, label %then6, label %else7
then6:
  %t66 = getelementptr [6 x i8], [6 x i8]* @.str663, i32 0, i32 0
  %t67 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str663.c, i8* %t66, i64 5)
  %t68 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t67)
  br label %merge8
else7:
  br label %merge8
merge8:
  %t69 = getelementptr [11 x i8], [11 x i8]* @.str664, i32 0, i32 0
  %t70 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str664.c, i8* %t69, i64 10)
  %t71 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t70)
  store %Token %t71, %Token* %t72
  %t73 = load %Token, %Token* %t72
  %t74 = call %nyx_string* @get_token_value(%Token %t73)
  store %nyx_string* %t74, %nyx_string** %t75
  %t76 = getelementptr [6 x i8], [6 x i8]* @.str665, i32 0, i32 0
  %t77 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str665.c, i8* %t76, i64 5)
  %t78 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t77)
  %t79 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %t79, %nyx_string** %t80
  %t81 = load { i64, i8* }*, { i64, i8* }** %t55
  %t82 = call { i64, i8* }* @nyx_array_new_ptr()
  %t83 = load %nyx_string*, %nyx_string** %t75
  %t84 = ptrtoint %nyx_string* %t83 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t82, i64 %t84, i64 2)
  %t85 = load %nyx_string*, %nyx_string** %t80
  %t86 = ptrtoint %nyx_string* %t85 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t82, i64 %t86, i64 2)
  %t87 = ptrtoint { i64, i8* }* %t82 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t81, i64 %t87, i64 5)
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %t88 = getelementptr [5 x i8], [5 x i8]* @.str666, i32 0, i32 0
  %t89 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str666.c, i8* %t88, i64 4)
  store %nyx_string* %t89, %nyx_string** %t90
  %t91 = getelementptr [6 x i8], [6 x i8]* @.str667, i32 0, i32 0
  %t92 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str667.c, i8* %t91, i64 5)
  %t93 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t92)
  br i1 %t93, label %then9, label %else10
then9:
  %t94 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t95 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %t95, %nyx_string** %t90
  br label %merge11
else10:
  br label %merge11
merge11:
  %t96 = getelementptr [10 x i8], [10 x i8]* @.str668, i32 0, i32 0
  %t97 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str668.c, i8* %t96, i64 9)
  %t98 = call { i64, i8* }* @nyx_array_new_ptr()
  %t99 = load %nyx_string*, %nyx_string** %t50
  %t100 = ptrtoint %nyx_string* %t99 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t98, i64 %t100, i64 2)
  %t101 = load { i64, i8* }*, { i64, i8* }** %t55
  %t102 = ptrtoint { i64, i8* }* %t101 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t98, i64 %t102, i64 5)
  %t103 = load %nyx_string*, %nyx_string** %t90
  %t104 = ptrtoint %nyx_string* %t103 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t98, i64 %t104, i64 2)
  %t105 = load %nyx_string*, %nyx_string** %t40
  %t106 = ptrtoint %nyx_string* %t105 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t98, i64 %t106, i64 2)
  %t107 = call { i64, i8* }* @make_astnode(%nyx_string* %t97, { i64, i8* }* %t98)
  ret { i64, i8* }* %t107
}

define internal { i64, i8* }* @parse__parse_macro_def(%SharedEnv_parse* %env.param) {
  %t35 = alloca %Token
  %t38 = alloca %nyx_string*
  %t46 = alloca { i64, i8* }*
  %t47 = alloca i1
  %t63 = alloca %Token
  %t72 = alloca i64
  %t79 = alloca %nyx_string*
  %t80 = alloca i64
  %t95 = alloca %nyx_string*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t32 = getelementptr [11 x i8], [11 x i8]* @.str669, i32 0, i32 0
  %t33 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str669.c, i8* %t32, i64 10)
  %t34 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t33)
  store %Token %t34, %Token* %t35
  %t36 = load %Token, %Token* %t35
  %t37 = call %nyx_string* @get_token_value(%Token %t36)
  store %nyx_string* %t37, %nyx_string** %t38
  %t39 = getelementptr [11 x i8], [11 x i8]* @.str670, i32 0, i32 0
  %t40 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str670.c, i8* %t39, i64 10)
  %t41 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t40)
  %t42 = getelementptr [11 x i8], [11 x i8]* @.str671, i32 0, i32 0
  %t43 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str671.c, i8* %t42, i64 10)
  %t44 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t43)
  %t45 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t45, { i64, i8* }** %t46
  store i1 0, i1* %t47
  br label %while_cond0
while_cond0:
  %t48 = load i1, i1* %t47
  %t49 = xor i1 %t48, true
  br i1 %t49, label %while_body1, label %while_end2
while_body1:
  %t50 = getelementptr [12 x i8], [12 x i8]* @.str672, i32 0, i32 0
  %t51 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str672.c, i8* %t50, i64 11)
  %t52 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t51)
  br i1 %t52, label %then3, label %else4
then3:
  %t53 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %t47
  br label %merge5
else4:
  %t54 = load { i64, i8* }*, { i64, i8* }** %t46
  %t55 = call i64 @nyx_array_length({ i64, i8* }* %t54)
  %t56 = icmp sgt i64 %t55, 0
  br i1 %t56, label %then6, label %else7
then6:
  %t57 = getelementptr [6 x i8], [6 x i8]* @.str673, i32 0, i32 0
  %t58 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str673.c, i8* %t57, i64 5)
  %t59 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t58)
  br label %merge8
else7:
  br label %merge8
merge8:
  %t60 = getelementptr [11 x i8], [11 x i8]* @.str674, i32 0, i32 0
  %t61 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str674.c, i8* %t60, i64 10)
  %t62 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t61)
  store %Token %t62, %Token* %t63
  %t64 = load { i64, i8* }*, { i64, i8* }** %t46
  %t65 = load %Token, %Token* %t63
  %t66 = call %nyx_string* @get_token_value(%Token %t65)
  %t67 = ptrtoint %nyx_string* %t66 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t64, i64 %t67, i64 2)
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %t68 = getelementptr [12 x i8], [12 x i8]* @.str675, i32 0, i32 0
  %t69 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str675.c, i8* %t68, i64 11)
  %t70 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t69)
  %t71 = load i64, i64* %t4
  store i64 %t71, i64* %t72
  %t73 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  %t74 = getelementptr [12 x i8], [12 x i8]* @.str676, i32 0, i32 0
  %t75 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str676.c, i8* %t74, i64 11)
  %t76 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t75)
  %t77 = getelementptr [1 x i8], [1 x i8]* @.str677, i32 0, i32 0
  %t78 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str677.c, i8* %t77, i64 0)
  store %nyx_string* %t78, %nyx_string** %t79
  store i64 0, i64* %t80
  br label %while_cond9
while_cond9:
  %t81 = load i64, i64* %t80
  %t82 = load { i64, i8* }*, { i64, i8* }** %t46
  %t83 = call i64 @nyx_array_length({ i64, i8* }* %t82)
  %t84 = icmp slt i64 %t81, %t83
  br i1 %t84, label %while_body10, label %while_end11
while_body10:
  %t85 = load i64, i64* %t80
  %t86 = icmp sgt i64 %t85, 0
  br i1 %t86, label %then12, label %else13
then12:
  %t87 = load %nyx_string*, %nyx_string** %t79
  %t88 = getelementptr [2 x i8], [2 x i8]* @.str678, i32 0, i32 0
  %t89 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str678.c, i8* %t88, i64 1)
  %t90 = call %nyx_string* @nyx_string_concat(%nyx_string* %t87, %nyx_string* %t89)
  store %nyx_string* %t90, %nyx_string** %t79
  br label %merge14
else13:
  br label %merge14
merge14:
  %t91 = load { i64, i8* }*, { i64, i8* }** %t46
  %t92 = load i64, i64* %t80
  %t93 = call i64 @nyx_array_get_checked({ i64, i8* }* %t91, i64 %t92, i64 2)
  %t94 = inttoptr i64 %t93 to %nyx_string*
  store %nyx_string* %t94, %nyx_string** %t95
  %t96 = load %nyx_string*, %nyx_string** %t79
  %t97 = load %nyx_string*, %nyx_string** %t95
  %t98 = call %nyx_string* @nyx_string_concat(%nyx_string* %t96, %nyx_string* %t97)
  store %nyx_string* %t98, %nyx_string** %t79
  %t99 = load i64, i64* %t80
  %t100 = add i64 %t99, 1
  store i64 %t100, i64* %t80
  br label %while_cond9
while_end11:
  %t101 = load { i64, i8* }*, { i64, i8* }** %t14
  %t102 = load %nyx_string*, %nyx_string** %t38
  %t103 = ptrtoint %nyx_string* %t102 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t101, i64 %t103, i64 2)
  %t104 = load { i64, i8* }*, { i64, i8* }** %t15
  %t105 = load i64, i64* %t72
  call void @nyx_array_push({ i64, i8* }* %t104, i64 %t105)
  %t106 = load { i64, i8* }*, { i64, i8* }** %t16
  %t107 = load %nyx_string*, %nyx_string** %t79
  %t108 = ptrtoint %nyx_string* %t107 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t106, i64 %t108, i64 2)
  %t109 = getelementptr [10 x i8], [10 x i8]* @.str679, i32 0, i32 0
  %t110 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str679.c, i8* %t109, i64 9)
  %t111 = call { i64, i8* }* @nyx_array_new_ptr()
  %t112 = load %nyx_string*, %nyx_string** %t38
  %t113 = ptrtoint %nyx_string* %t112 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t111, i64 %t113, i64 2)
  %t114 = call { i64, i8* }* @make_astnode(%nyx_string* %t110, { i64, i8* }* %t111)
  ret { i64, i8* }* %t114
}

define internal { i64, i8* }* @parse__parse_macro_invocation(%SharedEnv_parse* %env.param, %nyx_string* %mac_name.param) {
  %t31 = alloca %nyx_string*
  %t39 = alloca { i64, i8* }*
  %t40 = alloca i1
  %t56 = alloca i64
  %t57 = alloca i64
  %t66 = alloca %nyx_string*
  %t77 = alloca %nyx_string*
  %t81 = alloca i64
  %t83 = alloca { i64, i8* }*
  %t94 = alloca i64
  %t99 = alloca { i64, i8* }*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  store %nyx_string* %mac_name.param, %nyx_string** %t31
  %t32 = getelementptr [4 x i8], [4 x i8]* @.str680, i32 0, i32 0
  %t33 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str680.c, i8* %t32, i64 3)
  %t34 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t33)
  %t35 = getelementptr [11 x i8], [11 x i8]* @.str681, i32 0, i32 0
  %t36 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str681.c, i8* %t35, i64 10)
  %t37 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t36)
  %t38 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t38, { i64, i8* }** %t39
  store i1 0, i1* %t40
  br label %while_cond0
while_cond0:
  %t41 = load i1, i1* %t40
  %t42 = xor i1 %t41, true
  br i1 %t42, label %while_body1, label %while_end2
while_body1:
  %t43 = getelementptr [12 x i8], [12 x i8]* @.str682, i32 0, i32 0
  %t44 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str682.c, i8* %t43, i64 11)
  %t45 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t44)
  br i1 %t45, label %then3, label %else4
then3:
  %t46 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %t40
  br label %merge5
else4:
  %t47 = load { i64, i8* }*, { i64, i8* }** %t39
  %t48 = call i64 @nyx_array_length({ i64, i8* }* %t47)
  %t49 = icmp sgt i64 %t48, 0
  br i1 %t49, label %then6, label %else7
then6:
  %t50 = getelementptr [6 x i8], [6 x i8]* @.str683, i32 0, i32 0
  %t51 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str683.c, i8* %t50, i64 5)
  %t52 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t51)
  br label %merge8
else7:
  br label %merge8
merge8:
  %t53 = load { i64, i8* }*, { i64, i8* }** %t39
  %t54 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  %t55 = ptrtoint { i64, i8* }* %t54 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t53, i64 %t55, i64 5)
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  store i64 0, i64* %t56
  store i64 0, i64* %t57
  br label %while_cond9
while_cond9:
  %t58 = load i64, i64* %t57
  %t59 = load { i64, i8* }*, { i64, i8* }** %t14
  %t60 = call i64 @nyx_array_length({ i64, i8* }* %t59)
  %t61 = icmp slt i64 %t58, %t60
  br i1 %t61, label %while_body10, label %while_end11
while_body10:
  %t62 = load { i64, i8* }*, { i64, i8* }** %t14
  %t63 = load i64, i64* %t57
  %t64 = call i64 @nyx_array_get_checked({ i64, i8* }* %t62, i64 %t63, i64 2)
  %t65 = inttoptr i64 %t64 to %nyx_string*
  store %nyx_string* %t65, %nyx_string** %t66
  %t67 = load %nyx_string*, %nyx_string** %t66
  %t68 = load %nyx_string*, %nyx_string** %t31
  %t69 = call i1 @nyx_string_equals(%nyx_string* %t67, %nyx_string* %t68)
  br i1 %t69, label %then12, label %else13
then12:
  %t70 = load i64, i64* %t57
  store i64 %t70, i64* %t56
  br label %merge14
else13:
  br label %merge14
merge14:
  %t71 = load i64, i64* %t57
  %t72 = add i64 %t71, 1
  store i64 %t72, i64* %t57
  br label %while_cond9
while_end11:
  %t73 = load { i64, i8* }*, { i64, i8* }** %t16
  %t74 = load i64, i64* %t56
  %t75 = call i64 @nyx_array_get_checked({ i64, i8* }* %t73, i64 %t74, i64 2)
  %t76 = inttoptr i64 %t75 to %nyx_string*
  store %nyx_string* %t76, %nyx_string** %t77
  %t78 = load { i64, i8* }*, { i64, i8* }** %t15
  %t79 = load i64, i64* %t56
  %t80 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %t78, i64 %t79)
  store i64 %t80, i64* %t81
  %t82 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t82, { i64, i8* }** %t83
  %t84 = load %nyx_string*, %nyx_string** %t77
  %t85 = getelementptr [1 x i8], [1 x i8]* @.str684, i32 0, i32 0
  %t86 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str684.c, i8* %t85, i64 0)
  %t87 = call i1 @nyx_string_equals(%nyx_string* %t84, %nyx_string* %t86)
  %t88 = xor i1 %t87, true
  br i1 %t88, label %then15, label %else16
then15:
  %t89 = load %nyx_string*, %nyx_string** %t77
  %t90 = getelementptr [2 x i8], [2 x i8]* @.str685, i32 0, i32 0
  %t91 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str685.c, i8* %t90, i64 1)
  %t92 = call { i64, i8* }* @nyx_string_split(%nyx_string* %t89, %nyx_string* %t91)
  store { i64, i8* }* %t92, { i64, i8* }** %t83
  br label %merge17
else16:
  br label %merge17
merge17:
  %t93 = load i64, i64* %t4
  store i64 %t93, i64* %t94
  %t95 = load { i64, i8* }*, { i64, i8* }** %t83
  store { i64, i8* }* %t95, { i64, i8* }** %t17
  %t96 = load { i64, i8* }*, { i64, i8* }** %t39
  store { i64, i8* }* %t96, { i64, i8* }** %t18
  %t97 = load i64, i64* %t81
  store i64 %t97, i64* %t4
  %t98 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t98, { i64, i8* }** %t99
  %t100 = load i64, i64* %t94
  store i64 %t100, i64* %t4
  %t101 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t101, { i64, i8* }** %t17
  %t102 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t102, { i64, i8* }** %t18
  %t103 = load { i64, i8* }*, { i64, i8* }** %t99
  ret { i64, i8* }* %t103
}

define internal { i64, i8* }* @parse__parse_type_alias(%SharedEnv_parse* %env.param) {
  %t35 = alloca %Token
  %t38 = alloca %nyx_string*
  %t43 = alloca %nyx_string*
  %t50 = alloca { i64, i8* }*
  %t59 = alloca { i64, i8* }*
  %t60 = alloca i64
  %t69 = alloca %nyx_string*
  %t73 = alloca { i64, i8* }*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t32 = getelementptr [11 x i8], [11 x i8]* @.str686, i32 0, i32 0
  %t33 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str686.c, i8* %t32, i64 10)
  %t34 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t33)
  store %Token %t34, %Token* %t35
  %t36 = load %Token, %Token* %t35
  %t37 = call %nyx_string* @get_token_value(%Token %t36)
  store %nyx_string* %t37, %nyx_string** %t38
  %t39 = getelementptr [7 x i8], [7 x i8]* @.str687, i32 0, i32 0
  %t40 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str687.c, i8* %t39, i64 6)
  %t41 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t40)
  %t42 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %t42, %nyx_string** %t43
  %t44 = getelementptr [5 x i8], [5 x i8]* @.str688, i32 0, i32 0
  %t45 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str688.c, i8* %t44, i64 4)
  %t46 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t45)
  br i1 %t46, label %then0, label %else1
then0:
  %t47 = call { i64, i8* }* @nyx_array_new_ptr()
  %t48 = load %nyx_string*, %nyx_string** %t43
  %t49 = ptrtoint %nyx_string* %t48 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t47, i64 %t49, i64 2)
  store { i64, i8* }* %t47, { i64, i8* }** %t50
  br label %while_cond3
while_cond3:
  %t51 = getelementptr [5 x i8], [5 x i8]* @.str689, i32 0, i32 0
  %t52 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str689.c, i8* %t51, i64 4)
  %t53 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t52)
  br i1 %t53, label %while_body4, label %while_end5
while_body4:
  %t54 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t55 = load { i64, i8* }*, { i64, i8* }** %t50
  %t56 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %t57 = ptrtoint %nyx_string* %t56 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t55, i64 %t57, i64 2)
  br label %while_cond3
while_end5:
  %t58 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t58, { i64, i8* }** %t59
  store i64 0, i64* %t60
  br label %while_cond6
while_cond6:
  %t61 = load i64, i64* %t60
  %t62 = load { i64, i8* }*, { i64, i8* }** %t50
  %t63 = call i64 @nyx_array_length({ i64, i8* }* %t62)
  %t64 = icmp slt i64 %t61, %t63
  br i1 %t64, label %while_body7, label %while_end8
while_body7:
  %t65 = load { i64, i8* }*, { i64, i8* }** %t50
  %t66 = load i64, i64* %t60
  %t67 = call i64 @nyx_array_get_checked({ i64, i8* }* %t65, i64 %t66, i64 2)
  %t68 = inttoptr i64 %t67 to %nyx_string*
  store %nyx_string* %t68, %nyx_string** %t69
  %t70 = call { i64, i8* }* @nyx_array_new_ptr()
  %t71 = load %nyx_string*, %nyx_string** %t69
  %t72 = ptrtoint %nyx_string* %t71 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t70, i64 %t72, i64 2)
  store { i64, i8* }* %t70, { i64, i8* }** %t73
  %t74 = load { i64, i8* }*, { i64, i8* }** %t59
  %t75 = call { i64, i8* }* @nyx_array_new_ptr()
  %t76 = load %nyx_string*, %nyx_string** %t69
  %t77 = ptrtoint %nyx_string* %t76 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t75, i64 %t77, i64 2)
  %t78 = load { i64, i8* }*, { i64, i8* }** %t73
  %t79 = ptrtoint { i64, i8* }* %t78 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t75, i64 %t79, i64 5)
  %t80 = ptrtoint { i64, i8* }* %t75 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t74, i64 %t80, i64 5)
  %t81 = load i64, i64* %t60
  %t82 = add i64 %t81, 1
  store i64 %t82, i64* %t60
  br label %while_cond6
while_end8:
  %t83 = getelementptr [9 x i8], [9 x i8]* @.str690, i32 0, i32 0
  %t84 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str690.c, i8* %t83, i64 8)
  %t85 = call { i64, i8* }* @nyx_array_new_ptr()
  %t86 = load %nyx_string*, %nyx_string** %t38
  %t87 = ptrtoint %nyx_string* %t86 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t85, i64 %t87, i64 2)
  %t88 = load { i64, i8* }*, { i64, i8* }** %t59
  %t89 = ptrtoint { i64, i8* }* %t88 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t85, i64 %t89, i64 5)
  %t90 = call { i64, i8* }* @nyx_array_new_ptr()
  %t91 = ptrtoint { i64, i8* }* %t90 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t85, i64 %t91, i64 5)
  %t92 = call { i64, i8* }* @make_astnode(%nyx_string* %t84, { i64, i8* }* %t85)
  ret { i64, i8* }* %t92
else1:
  br label %merge2
merge2:
  %t93 = getelementptr [11 x i8], [11 x i8]* @.str691, i32 0, i32 0
  %t94 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str691.c, i8* %t93, i64 10)
  %t95 = call { i64, i8* }* @nyx_array_new_ptr()
  %t96 = load %nyx_string*, %nyx_string** %t38
  %t97 = ptrtoint %nyx_string* %t96 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t95, i64 %t97, i64 2)
  %t98 = load %nyx_string*, %nyx_string** %t43
  %t99 = ptrtoint %nyx_string* %t98 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t95, i64 %t99, i64 2)
  %t100 = call { i64, i8* }* @make_astnode(%nyx_string* %t94, { i64, i8* }* %t95)
  ret { i64, i8* }* %t100
}

define internal %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param) {
  %t37 = alloca %nyx_string*
  %t70 = alloca %nyx_string*
  %t83 = alloca %Token
  %t86 = alloca %nyx_string*
  %t105 = alloca %Token
  %t108 = alloca %nyx_string*
  %t109 = alloca i1
  %t116 = alloca %nyx_string*
  %t130 = alloca %Token
  %t138 = alloca %nyx_string*
  %t145 = alloca %Token
  %t148 = alloca %nyx_string*
  %t171 = alloca %Token
  %t174 = alloca %nyx_string*
  %t186 = alloca %Token
  %t189 = alloca %nyx_string*
  %t197 = alloca %Token
  %t212 = alloca %Token
  %t215 = alloca %nyx_string*
  %t216 = alloca i1
  %t229 = alloca %Token
  %t236 = alloca i1
  %t248 = alloca %nyx_string*
  %t256 = alloca i1
  %t298 = alloca i1
  %t301 = alloca i1
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = getelementptr [11 x i8], [11 x i8]* @.str692, i32 0, i32 0
  %t32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str692.c, i8* %t31, i64 10)
  %t33 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t32)
  br i1 %t33, label %then0, label %else1
then0:
  %t34 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t35 = getelementptr [2 x i8], [2 x i8]* @.str693, i32 0, i32 0
  %t36 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str693.c, i8* %t35, i64 1)
  store %nyx_string* %t36, %nyx_string** %t37
  %t38 = load %nyx_string*, %nyx_string** %t37
  %t39 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %t40 = call %nyx_string* @nyx_string_concat(%nyx_string* %t38, %nyx_string* %t39)
  store %nyx_string* %t40, %nyx_string** %t37
  br label %while_cond3
while_cond3:
  %t41 = getelementptr [6 x i8], [6 x i8]* @.str694, i32 0, i32 0
  %t42 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str694.c, i8* %t41, i64 5)
  %t43 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t42)
  br i1 %t43, label %while_body4, label %while_end5
while_body4:
  %t44 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t45 = load %nyx_string*, %nyx_string** %t37
  %t46 = getelementptr [2 x i8], [2 x i8]* @.str695, i32 0, i32 0
  %t47 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str695.c, i8* %t46, i64 1)
  %t48 = call %nyx_string* @nyx_string_concat(%nyx_string* %t45, %nyx_string* %t47)
  %t49 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %t50 = call %nyx_string* @nyx_string_concat(%nyx_string* %t48, %nyx_string* %t49)
  store %nyx_string* %t50, %nyx_string** %t37
  br label %while_cond3
while_end5:
  %t51 = getelementptr [12 x i8], [12 x i8]* @.str696, i32 0, i32 0
  %t52 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str696.c, i8* %t51, i64 11)
  %t53 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t52)
  %t54 = load %nyx_string*, %nyx_string** %t37
  %t55 = getelementptr [2 x i8], [2 x i8]* @.str697, i32 0, i32 0
  %t56 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str697.c, i8* %t55, i64 1)
  %t57 = call %nyx_string* @nyx_string_concat(%nyx_string* %t54, %nyx_string* %t56)
  store %nyx_string* %t57, %nyx_string** %t37
  %t58 = load %nyx_string*, %nyx_string** %t37
  ret %nyx_string* %t58
else1:
  br label %merge2
merge2:
  %t59 = getelementptr [3 x i8], [3 x i8]* @.str698, i32 0, i32 0
  %t60 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str698.c, i8* %t59, i64 2)
  %t61 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t60)
  br i1 %t61, label %then6, label %else7
then6:
  %t62 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t63 = getelementptr [3 x i8], [3 x i8]* @.str699, i32 0, i32 0
  %t64 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str699.c, i8* %t63, i64 2)
  ret %nyx_string* %t64
else7:
  br label %merge8
merge8:
  %t65 = getelementptr [5 x i8], [5 x i8]* @.str700, i32 0, i32 0
  %t66 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str700.c, i8* %t65, i64 4)
  %t67 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t66)
  br i1 %t67, label %then9, label %else10
then9:
  %t68 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t69 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %t69, %nyx_string** %t70
  %t71 = getelementptr [2 x i8], [2 x i8]* @.str701, i32 0, i32 0
  %t72 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str701.c, i8* %t71, i64 1)
  %t73 = load %nyx_string*, %nyx_string** %t70
  %t74 = call %nyx_string* @nyx_string_concat(%nyx_string* %t72, %nyx_string* %t73)
  ret %nyx_string* %t74
else10:
  br label %merge11
merge11:
  %t75 = getelementptr [4 x i8], [4 x i8]* @.str702, i32 0, i32 0
  %t76 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str702.c, i8* %t75, i64 3)
  %t77 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t76)
  br i1 %t77, label %then12, label %else13
then12:
  %t78 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t79 = getelementptr [9 x i8], [9 x i8]* @.str703, i32 0, i32 0
  %t80 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str703.c, i8* %t79, i64 8)
  %t81 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t80)
  br i1 %t81, label %then15, label %else16
then15:
  %t82 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store %Token %t82, %Token* %t83
  %t84 = load %Token, %Token* %t83
  %t85 = call %nyx_string* @get_token_value(%Token %t84)
  store %nyx_string* %t85, %nyx_string** %t86
  %t87 = load %nyx_string*, %nyx_string** %t86
  %t88 = call i64 @nyx_string_byte_length(%nyx_string* %t87)
  %t89 = icmp sgt i64 %t88, 0
  br i1 %t89, label %then18, label %else19
then18:
  %t90 = load %nyx_string*, %nyx_string** %t86
  %t91 = call i8 @nyx_string_char_at(%nyx_string* %t90, i64 0)
  %t92 = zext i8 %t91 to i64
  %t93 = getelementptr [1 x i8], [1 x i8]* @.str704, i32 0, i32 0
  %t94 = load i8, i8* %t93
  %t95 = zext i8 %t94 to i64
  %t96 = icmp eq i64 %t92, %t95
  br i1 %t96, label %then21, label %else22
then21:
  %t97 = load %nyx_string*, %nyx_string** %t86
  %t98 = load %nyx_string*, %nyx_string** %t86
  %t99 = call i64 @nyx_string_byte_length(%nyx_string* %t98)
  %t100 = call %nyx_string* @nyx_string_substring(%nyx_string* %t97, i64 1, i64 %t99)
  store %nyx_string* %t100, %nyx_string** %t86
  br label %merge23
else22:
  br label %merge23
merge23:
  br label %merge20
else19:
  br label %merge20
merge20:
  %t101 = load { i64, i8* }*, { i64, i8* }** %t19
  %t102 = load %nyx_string*, %nyx_string** %t86
  %t103 = ptrtoint %nyx_string* %t102 to i64
  call void @nyx_array_set_tagged({ i64, i8* }* %t101, i64 0, i64 %t103, i64 2)
  br label %merge17
else16:
  br label %merge17
merge17:
  %t104 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  store %Token %t104, %Token* %t105
  %t106 = load %Token, %Token* %t105
  %t107 = call %nyx_string* @get_token_value(%Token %t106)
  store %nyx_string* %t107, %nyx_string** %t108
  store i1 0, i1* %t109
  %t110 = load %nyx_string*, %nyx_string** %t108
  %t111 = getelementptr [4 x i8], [4 x i8]* @.str705, i32 0, i32 0
  %t112 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str705.c, i8* %t111, i64 3)
  %t113 = call i1 @nyx_string_equals(%nyx_string* %t110, %nyx_string* %t112)
  br i1 %t113, label %then24, label %else25
then24:
  %t114 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %t109
  br label %merge26
else25:
  br label %merge26
merge26:
  %t115 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %t115, %nyx_string** %t116
  %t117 = load i1, i1* %t109
  br i1 %t117, label %then27, label %else28
then27:
  %t118 = getelementptr [6 x i8], [6 x i8]* @.str706, i32 0, i32 0
  %t119 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str706.c, i8* %t118, i64 5)
  %t120 = load %nyx_string*, %nyx_string** %t116
  %t121 = call %nyx_string* @nyx_string_concat(%nyx_string* %t119, %nyx_string* %t120)
  ret %nyx_string* %t121
else28:
  br label %merge29
merge29:
  %t122 = getelementptr [2 x i8], [2 x i8]* @.str707, i32 0, i32 0
  %t123 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str707.c, i8* %t122, i64 1)
  %t124 = load %nyx_string*, %nyx_string** %t116
  %t125 = call %nyx_string* @nyx_string_concat(%nyx_string* %t123, %nyx_string* %t124)
  ret %nyx_string* %t125
else13:
  br label %merge14
merge14:
  %t126 = getelementptr [9 x i8], [9 x i8]* @.str708, i32 0, i32 0
  %t127 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str708.c, i8* %t126, i64 8)
  %t128 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t127)
  br i1 %t128, label %then30, label %else31
then30:
  %t129 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store %Token %t129, %Token* %t130
  %t131 = load %Token, %Token* %t130
  %t132 = call %nyx_string* @get_token_value(%Token %t131)
  ret %nyx_string* %t132
else31:
  br label %merge32
merge32:
  %t133 = getelementptr [13 x i8], [13 x i8]* @.str709, i32 0, i32 0
  %t134 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str709.c, i8* %t133, i64 12)
  %t135 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t134)
  br i1 %t135, label %then33, label %else34
then33:
  %t136 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t137 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %t137, %nyx_string** %t138
  %t139 = getelementptr [6 x i8], [6 x i8]* @.str710, i32 0, i32 0
  %t140 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str710.c, i8* %t139, i64 5)
  %t141 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t140)
  %t142 = getelementptr [7 x i8], [7 x i8]* @.str711, i32 0, i32 0
  %t143 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str711.c, i8* %t142, i64 6)
  %t144 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t143)
  store %Token %t144, %Token* %t145
  %t146 = load %Token, %Token* %t145
  %t147 = call %nyx_string* @get_token_value(%Token %t146)
  store %nyx_string* %t147, %nyx_string** %t148
  %t149 = getelementptr [14 x i8], [14 x i8]* @.str712, i32 0, i32 0
  %t150 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str712.c, i8* %t149, i64 13)
  %t151 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t150)
  %t152 = getelementptr [2 x i8], [2 x i8]* @.str713, i32 0, i32 0
  %t153 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str713.c, i8* %t152, i64 1)
  %t154 = load %nyx_string*, %nyx_string** %t138
  %t155 = call %nyx_string* @nyx_string_concat(%nyx_string* %t153, %nyx_string* %t154)
  %t156 = getelementptr [2 x i8], [2 x i8]* @.str714, i32 0, i32 0
  %t157 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str714.c, i8* %t156, i64 1)
  %t158 = call %nyx_string* @nyx_string_concat(%nyx_string* %t155, %nyx_string* %t157)
  %t159 = load %nyx_string*, %nyx_string** %t148
  %t160 = call %nyx_string* @nyx_string_concat(%nyx_string* %t158, %nyx_string* %t159)
  %t161 = getelementptr [2 x i8], [2 x i8]* @.str715, i32 0, i32 0
  %t162 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str715.c, i8* %t161, i64 1)
  %t163 = call %nyx_string* @nyx_string_concat(%nyx_string* %t160, %nyx_string* %t162)
  ret %nyx_string* %t163
else34:
  br label %merge35
merge35:
  %t164 = getelementptr [4 x i8], [4 x i8]* @.str716, i32 0, i32 0
  %t165 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str716.c, i8* %t164, i64 3)
  %t166 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t165)
  br i1 %t166, label %then36, label %else37
then36:
  %t167 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t168 = getelementptr [11 x i8], [11 x i8]* @.str717, i32 0, i32 0
  %t169 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str717.c, i8* %t168, i64 10)
  %t170 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t169)
  store %Token %t170, %Token* %t171
  %t172 = load %Token, %Token* %t171
  %t173 = call %nyx_string* @get_token_value(%Token %t172)
  store %nyx_string* %t173, %nyx_string** %t174
  %t175 = getelementptr [5 x i8], [5 x i8]* @.str718, i32 0, i32 0
  %t176 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str718.c, i8* %t175, i64 4)
  %t177 = load %nyx_string*, %nyx_string** %t174
  %t178 = call %nyx_string* @nyx_string_concat(%nyx_string* %t176, %nyx_string* %t177)
  ret %nyx_string* %t178
else37:
  br label %merge38
merge38:
  %t179 = getelementptr [5 x i8], [5 x i8]* @.str719, i32 0, i32 0
  %t180 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str719.c, i8* %t179, i64 4)
  %t181 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t180)
  br i1 %t181, label %then39, label %else40
then39:
  %t182 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t183 = getelementptr [11 x i8], [11 x i8]* @.str720, i32 0, i32 0
  %t184 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str720.c, i8* %t183, i64 10)
  %t185 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t184)
  store %Token %t185, %Token* %t186
  %t187 = load %Token, %Token* %t186
  %t188 = call %nyx_string* @get_token_value(%Token %t187)
  store %nyx_string* %t188, %nyx_string** %t189
  br label %while_cond42
while_cond42:
  %t190 = getelementptr [5 x i8], [5 x i8]* @.str721, i32 0, i32 0
  %t191 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str721.c, i8* %t190, i64 4)
  %t192 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t191)
  br i1 %t192, label %while_body43, label %while_end44
while_body43:
  %t193 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t194 = getelementptr [11 x i8], [11 x i8]* @.str722, i32 0, i32 0
  %t195 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str722.c, i8* %t194, i64 10)
  %t196 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t195)
  store %Token %t196, %Token* %t197
  %t198 = load %nyx_string*, %nyx_string** %t189
  %t199 = getelementptr [2 x i8], [2 x i8]* @.str723, i32 0, i32 0
  %t200 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str723.c, i8* %t199, i64 1)
  %t201 = call %nyx_string* @nyx_string_concat(%nyx_string* %t198, %nyx_string* %t200)
  %t202 = load %Token, %Token* %t197
  %t203 = call %nyx_string* @get_token_value(%Token %t202)
  %t204 = call %nyx_string* @nyx_string_concat(%nyx_string* %t201, %nyx_string* %t203)
  store %nyx_string* %t204, %nyx_string** %t189
  br label %while_cond42
while_end44:
  %t205 = getelementptr [5 x i8], [5 x i8]* @.str724, i32 0, i32 0
  %t206 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str724.c, i8* %t205, i64 4)
  %t207 = load %nyx_string*, %nyx_string** %t189
  %t208 = call %nyx_string* @nyx_string_concat(%nyx_string* %t206, %nyx_string* %t207)
  ret %nyx_string* %t208
else40:
  br label %merge41
merge41:
  %t209 = getelementptr [11 x i8], [11 x i8]* @.str725, i32 0, i32 0
  %t210 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str725.c, i8* %t209, i64 10)
  %t211 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t210)
  store %Token %t211, %Token* %t212
  %t213 = load %Token, %Token* %t212
  %t214 = call %nyx_string* @get_token_value(%Token %t213)
  store %nyx_string* %t214, %nyx_string** %t215
  store i1 false, i1* %t216
  %t217 = load %nyx_string*, %nyx_string** %t215
  %t218 = getelementptr [5 x i8], [5 x i8]* @.str726, i32 0, i32 0
  %t219 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str726.c, i8* %t218, i64 4)
  %t220 = call i1 @nyx_string_equals(%nyx_string* %t217, %nyx_string* %t219)
  br i1 %t220, label %sc_and_rhs45, label %sc_and_end46
sc_and_rhs45:
  %t221 = getelementptr [4 x i8], [4 x i8]* @.str727, i32 0, i32 0
  %t222 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str727.c, i8* %t221, i64 3)
  %t223 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t222)
  store i1 %t223, i1* %t216
  br label %sc_and_end46
sc_and_end46:
  %t224 = load i1, i1* %t216
  br i1 %t224, label %then47, label %else48
then47:
  %t225 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t226 = getelementptr [11 x i8], [11 x i8]* @.str728, i32 0, i32 0
  %t227 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str728.c, i8* %t226, i64 10)
  %t228 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t227)
  store %Token %t228, %Token* %t229
  %t230 = getelementptr [6 x i8], [6 x i8]* @.str729, i32 0, i32 0
  %t231 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str729.c, i8* %t230, i64 5)
  %t232 = load %Token, %Token* %t229
  %t233 = call %nyx_string* @get_token_value(%Token %t232)
  %t234 = call %nyx_string* @nyx_string_concat(%nyx_string* %t231, %nyx_string* %t233)
  store %nyx_string* %t234, %nyx_string** %t215
  %t235 = load %nyx_string*, %nyx_string** %t215
  ret %nyx_string* %t235
else48:
  br label %merge49
merge49:
  store i1 false, i1* %t236
  %t237 = load %nyx_string*, %nyx_string** %t215
  %t238 = getelementptr [3 x i8], [3 x i8]* @.str730, i32 0, i32 0
  %t239 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str730.c, i8* %t238, i64 2)
  %t240 = call i1 @nyx_string_equals(%nyx_string* %t237, %nyx_string* %t239)
  br i1 %t240, label %sc_and_rhs50, label %sc_and_end51
sc_and_rhs50:
  %t241 = getelementptr [11 x i8], [11 x i8]* @.str731, i32 0, i32 0
  %t242 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str731.c, i8* %t241, i64 10)
  %t243 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t242)
  store i1 %t243, i1* %t236
  br label %sc_and_end51
sc_and_end51:
  %t244 = load i1, i1* %t236
  br i1 %t244, label %then52, label %else53
then52:
  %t245 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t246 = getelementptr [4 x i8], [4 x i8]* @.str732, i32 0, i32 0
  %t247 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str732.c, i8* %t246, i64 3)
  store %nyx_string* %t247, %nyx_string** %t248
  %t249 = getelementptr [12 x i8], [12 x i8]* @.str733, i32 0, i32 0
  %t250 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str733.c, i8* %t249, i64 11)
  %t251 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t250)
  %t252 = xor i1 %t251, true
  br i1 %t252, label %then55, label %else56
then55:
  %t253 = load %nyx_string*, %nyx_string** %t248
  %t254 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %t255 = call %nyx_string* @nyx_string_concat(%nyx_string* %t253, %nyx_string* %t254)
  store %nyx_string* %t255, %nyx_string** %t248
  store i1 0, i1* %t256
  br label %while_cond58
while_cond58:
  %t257 = load i1, i1* %t256
  %t258 = xor i1 %t257, true
  br i1 %t258, label %while_body59, label %while_end60
while_body59:
  %t259 = getelementptr [6 x i8], [6 x i8]* @.str734, i32 0, i32 0
  %t260 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str734.c, i8* %t259, i64 5)
  %t261 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t260)
  br i1 %t261, label %then61, label %else62
then61:
  %t262 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t263 = load %nyx_string*, %nyx_string** %t248
  %t264 = getelementptr [2 x i8], [2 x i8]* @.str735, i32 0, i32 0
  %t265 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str735.c, i8* %t264, i64 1)
  %t266 = call %nyx_string* @nyx_string_concat(%nyx_string* %t263, %nyx_string* %t265)
  %t267 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %t268 = call %nyx_string* @nyx_string_concat(%nyx_string* %t266, %nyx_string* %t267)
  store %nyx_string* %t268, %nyx_string** %t248
  br label %merge63
else62:
  store i1 1, i1* %t256
  br label %merge63
merge63:
  br label %while_cond58
while_end60:
  br label %merge57
else56:
  br label %merge57
merge57:
  %t269 = getelementptr [12 x i8], [12 x i8]* @.str736, i32 0, i32 0
  %t270 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str736.c, i8* %t269, i64 11)
  %t271 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t270)
  %t272 = load %nyx_string*, %nyx_string** %t248
  %t273 = getelementptr [2 x i8], [2 x i8]* @.str737, i32 0, i32 0
  %t274 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str737.c, i8* %t273, i64 1)
  %t275 = call %nyx_string* @nyx_string_concat(%nyx_string* %t272, %nyx_string* %t274)
  store %nyx_string* %t275, %nyx_string** %t248
  %t276 = getelementptr [6 x i8], [6 x i8]* @.str738, i32 0, i32 0
  %t277 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str738.c, i8* %t276, i64 5)
  %t278 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t277)
  br i1 %t278, label %then64, label %else65
then64:
  %t279 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t280 = load %nyx_string*, %nyx_string** %t248
  %t281 = getelementptr [3 x i8], [3 x i8]* @.str739, i32 0, i32 0
  %t282 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str739.c, i8* %t281, i64 2)
  %t283 = call %nyx_string* @nyx_string_concat(%nyx_string* %t280, %nyx_string* %t282)
  %t284 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %t285 = call %nyx_string* @nyx_string_concat(%nyx_string* %t283, %nyx_string* %t284)
  store %nyx_string* %t285, %nyx_string** %t248
  br label %merge66
else65:
  br label %merge66
merge66:
  %t286 = load %nyx_string*, %nyx_string** %t248
  ret %nyx_string* %t286
else53:
  br label %merge54
merge54:
  %t287 = getelementptr [5 x i8], [5 x i8]* @.str740, i32 0, i32 0
  %t288 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str740.c, i8* %t287, i64 4)
  %t289 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t288)
  br i1 %t289, label %then67, label %else68
then67:
  %t290 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t291 = load %nyx_string*, %nyx_string** %t215
  %t292 = getelementptr [2 x i8], [2 x i8]* @.str741, i32 0, i32 0
  %t293 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str741.c, i8* %t292, i64 1)
  %t294 = call %nyx_string* @nyx_string_concat(%nyx_string* %t291, %nyx_string* %t293)
  store %nyx_string* %t294, %nyx_string** %t215
  %t295 = load %nyx_string*, %nyx_string** %t215
  %t296 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %t297 = call %nyx_string* @nyx_string_concat(%nyx_string* %t295, %nyx_string* %t296)
  store %nyx_string* %t297, %nyx_string** %t215
  store i1 0, i1* %t298
  br label %while_cond70
while_cond70:
  %t299 = load i1, i1* %t298
  %t300 = xor i1 %t299, true
  br i1 %t300, label %while_body71, label %while_end72
while_body71:
  store i1 false, i1* %t301
  %t302 = load i64, i64* %t5
  %t303 = icmp eq i64 %t302, 0
  br i1 %t303, label %sc_and_rhs73, label %sc_and_end74
sc_and_rhs73:
  %t304 = getelementptr [6 x i8], [6 x i8]* @.str742, i32 0, i32 0
  %t305 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str742.c, i8* %t304, i64 5)
  %t306 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t305)
  store i1 %t306, i1* %t301
  br label %sc_and_end74
sc_and_end74:
  %t307 = load i1, i1* %t301
  br i1 %t307, label %then75, label %else76
then75:
  %t308 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t309 = load %nyx_string*, %nyx_string** %t215
  %t310 = getelementptr [2 x i8], [2 x i8]* @.str743, i32 0, i32 0
  %t311 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str743.c, i8* %t310, i64 1)
  %t312 = call %nyx_string* @nyx_string_concat(%nyx_string* %t309, %nyx_string* %t311)
  store %nyx_string* %t312, %nyx_string** %t215
  %t313 = load %nyx_string*, %nyx_string** %t215
  %t314 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  %t315 = call %nyx_string* @nyx_string_concat(%nyx_string* %t313, %nyx_string* %t314)
  store %nyx_string* %t315, %nyx_string** %t215
  br label %merge77
else76:
  store i1 1, i1* %t298
  br label %merge77
merge77:
  br label %while_cond70
while_end72:
  %t316 = load i64, i64* %t5
  %t317 = icmp sgt i64 %t316, 0
  br i1 %t317, label %then78, label %else79
then78:
  %t318 = load i64, i64* %t5
  %t319 = sub i64 %t318, 1
  store i64 %t319, i64* %t5
  br label %merge80
else79:
  %t320 = getelementptr [8 x i8], [8 x i8]* @.str744, i32 0, i32 0
  %t321 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str744.c, i8* %t320, i64 7)
  %t322 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t321)
  br i1 %t322, label %then81, label %else82
then81:
  %t323 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge83
else82:
  %t324 = getelementptr [12 x i8], [12 x i8]* @.str745, i32 0, i32 0
  %t325 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str745.c, i8* %t324, i64 11)
  %t326 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t325)
  br i1 %t326, label %then84, label %else85
then84:
  %t327 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t328 = load i64, i64* %t5
  %t329 = add i64 %t328, 1
  store i64 %t329, i64* %t5
  br label %merge86
else85:
  %t330 = getelementptr [8 x i8], [8 x i8]* @.str746, i32 0, i32 0
  %t331 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str746.c, i8* %t330, i64 7)
  %t332 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t331)
  br label %merge86
merge86:
  br label %merge83
merge83:
  br label %merge80
merge80:
  %t333 = load %nyx_string*, %nyx_string** %t215
  %t334 = getelementptr [2 x i8], [2 x i8]* @.str747, i32 0, i32 0
  %t335 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str747.c, i8* %t334, i64 1)
  %t336 = call %nyx_string* @nyx_string_concat(%nyx_string* %t333, %nyx_string* %t335)
  store %nyx_string* %t336, %nyx_string** %t215
  br label %merge69
else68:
  br label %merge69
merge69:
  %t337 = load %nyx_string*, %nyx_string** %t215
  ret %nyx_string* %t337
}

define internal { i64, i8* }* @parse__parse_let(%SharedEnv_parse* %env.param) {
  %t34 = alloca i1
  %t41 = alloca { i64, i8* }*
  %t45 = alloca %Token
  %t57 = alloca %Token
  %t69 = alloca { i64, i8* }*
  %t83 = alloca %Token
  %t86 = alloca %nyx_string*
  %t90 = alloca { i64, i8* }*
  %t93 = alloca %nyx_string*
  %t103 = alloca { i64, i8* }*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = getelementptr [4 x i8], [4 x i8]* @.str748, i32 0, i32 0
  %t32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str748.c, i8* %t31, i64 3)
  %t33 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t32)
  store i1 %t33, i1* %t34
  %t35 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t36 = getelementptr [11 x i8], [11 x i8]* @.str749, i32 0, i32 0
  %t37 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str749.c, i8* %t36, i64 10)
  %t38 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t37)
  br i1 %t38, label %then0, label %else1
then0:
  %t39 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t40 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t40, { i64, i8* }** %t41
  %t42 = getelementptr [11 x i8], [11 x i8]* @.str750, i32 0, i32 0
  %t43 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str750.c, i8* %t42, i64 10)
  %t44 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t43)
  store %Token %t44, %Token* %t45
  %t46 = load { i64, i8* }*, { i64, i8* }** %t41
  %t47 = load %Token, %Token* %t45
  %t48 = call %nyx_string* @get_token_value(%Token %t47)
  %t49 = ptrtoint %nyx_string* %t48 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t46, i64 %t49, i64 2)
  br label %while_cond3
while_cond3:
  %t50 = getelementptr [6 x i8], [6 x i8]* @.str751, i32 0, i32 0
  %t51 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str751.c, i8* %t50, i64 5)
  %t52 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t51)
  br i1 %t52, label %while_body4, label %while_end5
while_body4:
  %t53 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t54 = getelementptr [11 x i8], [11 x i8]* @.str752, i32 0, i32 0
  %t55 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str752.c, i8* %t54, i64 10)
  %t56 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t55)
  store %Token %t56, %Token* %t57
  %t58 = load { i64, i8* }*, { i64, i8* }** %t41
  %t59 = load %Token, %Token* %t57
  %t60 = call %nyx_string* @get_token_value(%Token %t59)
  %t61 = ptrtoint %nyx_string* %t60 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t58, i64 %t61, i64 2)
  br label %while_cond3
while_end5:
  %t62 = getelementptr [12 x i8], [12 x i8]* @.str753, i32 0, i32 0
  %t63 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str753.c, i8* %t62, i64 11)
  %t64 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t63)
  %t65 = getelementptr [7 x i8], [7 x i8]* @.str754, i32 0, i32 0
  %t66 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str754.c, i8* %t65, i64 6)
  %t67 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t66)
  %t68 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t68, { i64, i8* }** %t69
  %t70 = getelementptr [22 x i8], [22 x i8]* @.str755, i32 0, i32 0
  %t71 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str755.c, i8* %t70, i64 21)
  %t72 = call { i64, i8* }* @nyx_array_new_ptr()
  %t73 = load { i64, i8* }*, { i64, i8* }** %t41
  %t74 = ptrtoint { i64, i8* }* %t73 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t72, i64 %t74, i64 5)
  %t75 = load i1, i1* %t34
  %t76 = zext i1 %t75 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t72, i64 %t76, i64 4)
  %t77 = load { i64, i8* }*, { i64, i8* }** %t69
  %t78 = ptrtoint { i64, i8* }* %t77 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t72, i64 %t78, i64 5)
  %t79 = call { i64, i8* }* @make_astnode(%nyx_string* %t71, { i64, i8* }* %t72)
  ret { i64, i8* }* %t79
else1:
  br label %merge2
merge2:
  %t80 = getelementptr [11 x i8], [11 x i8]* @.str756, i32 0, i32 0
  %t81 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str756.c, i8* %t80, i64 10)
  %t82 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t81)
  store %Token %t82, %Token* %t83
  %t84 = load %Token, %Token* %t83
  %t85 = call %nyx_string* @get_token_value(%Token %t84)
  store %nyx_string* %t85, %nyx_string** %t86
  %t87 = load %nyx_string*, %nyx_string** %t86
  %t88 = call { i64, i8* }* @nyx_array_new_ptr()
  %t89 = call { i64, i8* }* @make_astnode(%nyx_string* %t87, { i64, i8* }* %t88)
  store { i64, i8* }* %t89, { i64, i8* }** %t90
  %t91 = getelementptr [1 x i8], [1 x i8]* @.str757, i32 0, i32 0
  %t92 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str757.c, i8* %t91, i64 0)
  store %nyx_string* %t92, %nyx_string** %t93
  %t94 = getelementptr [6 x i8], [6 x i8]* @.str758, i32 0, i32 0
  %t95 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str758.c, i8* %t94, i64 5)
  %t96 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t95)
  br i1 %t96, label %then6, label %else7
then6:
  %t97 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t98 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %t98, %nyx_string** %t93
  br label %merge8
else7:
  br label %merge8
merge8:
  %t99 = getelementptr [7 x i8], [7 x i8]* @.str759, i32 0, i32 0
  %t100 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str759.c, i8* %t99, i64 6)
  %t101 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t100)
  %t102 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t102, { i64, i8* }** %t103
  %t104 = getelementptr [4 x i8], [4 x i8]* @.str760, i32 0, i32 0
  %t105 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str760.c, i8* %t104, i64 3)
  %t106 = call { i64, i8* }* @nyx_array_new_ptr()
  %t107 = load { i64, i8* }*, { i64, i8* }** %t90
  %t108 = ptrtoint { i64, i8* }* %t107 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t106, i64 %t108, i64 5)
  %t109 = load i1, i1* %t34
  %t110 = zext i1 %t109 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t106, i64 %t110, i64 4)
  %t111 = load { i64, i8* }*, { i64, i8* }** %t103
  %t112 = ptrtoint { i64, i8* }* %t111 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t106, i64 %t112, i64 5)
  %t113 = load %nyx_string*, %nyx_string** %t93
  %t114 = ptrtoint %nyx_string* %t113 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t106, i64 %t114, i64 2)
  %t115 = call { i64, i8* }* @make_astnode(%nyx_string* %t105, { i64, i8* }* %t106)
  ret { i64, i8* }* %t115
}

define internal { i64, i8* }* @parse__parse_const(%SharedEnv_parse* %env.param) {
  %t37 = alloca %Token
  %t40 = alloca %nyx_string*
  %t50 = alloca { i64, i8* }*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = getelementptr [6 x i8], [6 x i8]* @.str761, i32 0, i32 0
  %t32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str761.c, i8* %t31, i64 5)
  %t33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t32)
  %t34 = getelementptr [11 x i8], [11 x i8]* @.str762, i32 0, i32 0
  %t35 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str762.c, i8* %t34, i64 10)
  %t36 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t35)
  store %Token %t36, %Token* %t37
  %t38 = getelementptr [1 x i8], [1 x i8]* @.str763, i32 0, i32 0
  %t39 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str763.c, i8* %t38, i64 0)
  store %nyx_string* %t39, %nyx_string** %t40
  %t41 = getelementptr [6 x i8], [6 x i8]* @.str764, i32 0, i32 0
  %t42 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str764.c, i8* %t41, i64 5)
  %t43 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t42)
  br i1 %t43, label %then0, label %else1
then0:
  %t44 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t45 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %t45, %nyx_string** %t40
  br label %merge2
else1:
  br label %merge2
merge2:
  %t46 = getelementptr [7 x i8], [7 x i8]* @.str765, i32 0, i32 0
  %t47 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str765.c, i8* %t46, i64 6)
  %t48 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t47)
  %t49 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t49, { i64, i8* }** %t50
  %t51 = getelementptr [6 x i8], [6 x i8]* @.str766, i32 0, i32 0
  %t52 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str766.c, i8* %t51, i64 5)
  %t53 = call { i64, i8* }* @nyx_array_new_ptr()
  %t54 = load %Token, %Token* %t37
  %t55 = call %nyx_string* @get_token_value(%Token %t54)
  %t56 = ptrtoint %nyx_string* %t55 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t53, i64 %t56, i64 2)
  %t57 = load { i64, i8* }*, { i64, i8* }** %t50
  %t58 = ptrtoint { i64, i8* }* %t57 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t53, i64 %t58, i64 5)
  %t59 = load %nyx_string*, %nyx_string** %t40
  %t60 = ptrtoint %nyx_string* %t59 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t53, i64 %t60, i64 2)
  %t61 = call { i64, i8* }* @make_astnode(%nyx_string* %t52, { i64, i8* }* %t53)
  ret { i64, i8* }* %t61
}

define internal { i64, i8* }* @parse__parse_async_function(%SharedEnv_parse* %env.param) {
  %t34 = alloca %Token
  %t37 = alloca i64
  %t41 = alloca %Token
  %t44 = alloca %nyx_string*
  %t49 = alloca { i64, i8* }*
  %t50 = alloca i1
  %t66 = alloca %Token
  %t69 = alloca %nyx_string*
  %t85 = alloca %nyx_string*
  %t92 = alloca { i64, i8* }*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = getelementptr [3 x i8], [3 x i8]* @.str767, i32 0, i32 0
  %t32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str767.c, i8* %t31, i64 2)
  %t33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t32)
  store %Token %t33, %Token* %t34
  %t35 = load %Token, %Token* %t34
  %t36 = call i64 @get_token_line(%Token %t35)
  store i64 %t36, i64* %t37
  %t38 = getelementptr [11 x i8], [11 x i8]* @.str768, i32 0, i32 0
  %t39 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str768.c, i8* %t38, i64 10)
  %t40 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t39)
  store %Token %t40, %Token* %t41
  %t42 = load %Token, %Token* %t41
  %t43 = call %nyx_string* @get_token_value(%Token %t42)
  store %nyx_string* %t43, %nyx_string** %t44
  %t45 = getelementptr [11 x i8], [11 x i8]* @.str769, i32 0, i32 0
  %t46 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str769.c, i8* %t45, i64 10)
  %t47 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t46)
  %t48 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t48, { i64, i8* }** %t49
  store i1 0, i1* %t50
  br label %while_cond0
while_cond0:
  %t51 = load i1, i1* %t50
  %t52 = xor i1 %t51, true
  br i1 %t52, label %while_body1, label %while_end2
while_body1:
  %t53 = getelementptr [12 x i8], [12 x i8]* @.str770, i32 0, i32 0
  %t54 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str770.c, i8* %t53, i64 11)
  %t55 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t54)
  br i1 %t55, label %then3, label %else4
then3:
  %t56 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %t50
  br label %merge5
else4:
  %t57 = load { i64, i8* }*, { i64, i8* }** %t49
  %t58 = call i64 @nyx_array_length({ i64, i8* }* %t57)
  %t59 = icmp sgt i64 %t58, 0
  br i1 %t59, label %then6, label %else7
then6:
  %t60 = getelementptr [6 x i8], [6 x i8]* @.str771, i32 0, i32 0
  %t61 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str771.c, i8* %t60, i64 5)
  %t62 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t61)
  br label %merge8
else7:
  br label %merge8
merge8:
  %t63 = getelementptr [11 x i8], [11 x i8]* @.str772, i32 0, i32 0
  %t64 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str772.c, i8* %t63, i64 10)
  %t65 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t64)
  store %Token %t65, %Token* %t66
  %t67 = getelementptr [1 x i8], [1 x i8]* @.str773, i32 0, i32 0
  %t68 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str773.c, i8* %t67, i64 0)
  store %nyx_string* %t68, %nyx_string** %t69
  %t70 = getelementptr [6 x i8], [6 x i8]* @.str774, i32 0, i32 0
  %t71 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str774.c, i8* %t70, i64 5)
  %t72 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t71)
  br i1 %t72, label %then9, label %else10
then9:
  %t73 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t74 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %t74, %nyx_string** %t69
  br label %merge11
else10:
  br label %merge11
merge11:
  %t75 = load { i64, i8* }*, { i64, i8* }** %t49
  %t76 = call { i64, i8* }* @nyx_array_new_ptr()
  %t77 = load %Token, %Token* %t66
  %t78 = call %nyx_string* @get_token_value(%Token %t77)
  %t79 = ptrtoint %nyx_string* %t78 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t76, i64 %t79, i64 2)
  %t80 = load %nyx_string*, %nyx_string** %t69
  %t81 = ptrtoint %nyx_string* %t80 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t76, i64 %t81, i64 2)
  %t82 = ptrtoint { i64, i8* }* %t76 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t75, i64 %t82, i64 5)
  br label %merge5
merge5:
  br label %while_cond0
while_end2:
  %t83 = getelementptr [1 x i8], [1 x i8]* @.str775, i32 0, i32 0
  %t84 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str775.c, i8* %t83, i64 0)
  store %nyx_string* %t84, %nyx_string** %t85
  %t86 = getelementptr [6 x i8], [6 x i8]* @.str776, i32 0, i32 0
  %t87 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str776.c, i8* %t86, i64 5)
  %t88 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t87)
  br i1 %t88, label %then12, label %else13
then12:
  %t89 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t90 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %t90, %nyx_string** %t85
  br label %merge14
else13:
  br label %merge14
merge14:
  %t91 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t91, { i64, i8* }** %t92
  %t93 = getelementptr [9 x i8], [9 x i8]* @.str777, i32 0, i32 0
  %t94 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str777.c, i8* %t93, i64 8)
  %t95 = call { i64, i8* }* @nyx_array_new_ptr()
  %t96 = load %nyx_string*, %nyx_string** %t44
  %t97 = ptrtoint %nyx_string* %t96 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t95, i64 %t97, i64 2)
  %t98 = load { i64, i8* }*, { i64, i8* }** %t49
  %t99 = ptrtoint { i64, i8* }* %t98 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t95, i64 %t99, i64 5)
  %t100 = load %nyx_string*, %nyx_string** %t85
  %t101 = ptrtoint %nyx_string* %t100 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t95, i64 %t101, i64 2)
  %t102 = load { i64, i8* }*, { i64, i8* }** %t92
  %t103 = ptrtoint { i64, i8* }* %t102 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t95, i64 %t103, i64 5)
  %t104 = call { i64, i8* }* @nyx_array_new_ptr()
  %t105 = ptrtoint { i64, i8* }* %t104 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t95, i64 %t105, i64 5)
  %t106 = getelementptr [1 x i8], [1 x i8]* @.str778, i32 0, i32 0
  %t107 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str778.c, i8* %t106, i64 0)
  %t108 = ptrtoint %nyx_string* %t107 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t95, i64 %t108, i64 2)
  %t109 = call { i64, i8* }* @nyx_array_new_ptr()
  %t110 = getelementptr [13 x i8], [13 x i8]* @.str779, i32 0, i32 0
  %t111 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str779.c, i8* %t110, i64 12)
  %t112 = ptrtoint %nyx_string* %t111 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t109, i64 %t112, i64 2)
  %t113 = load i64, i64* %t37
  call void @nyx_array_push_tagged({ i64, i8* }* %t109, i64 %t113, i64 1)
  %t114 = ptrtoint { i64, i8* }* %t109 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t95, i64 %t114, i64 5)
  %t115 = call { i64, i8* }* @make_astnode(%nyx_string* %t94, { i64, i8* }* %t95)
  ret { i64, i8* }* %t115
}

define internal { i64, i8* }* @parse__parse_function(%SharedEnv_parse* %env.param) {
  %t34 = alloca %Token
  %t37 = alloca i64
  %t41 = alloca %Token
  %t43 = alloca { i64, i8* }*
  %t52 = alloca %Token
  %t60 = alloca %Token
  %t63 = alloca %nyx_string*
  %t71 = alloca %Token
  %t74 = alloca %nyx_string*
  %t82 = alloca %Token
  %t99 = alloca i1
  %t110 = alloca %Token
  %t118 = alloca %Token
  %t121 = alloca %nyx_string*
  %t129 = alloca %Token
  %t132 = alloca %nyx_string*
  %t140 = alloca %Token
  %t164 = alloca { i64, i8* }*
  %t166 = alloca { i64, i8* }*
  %t167 = alloca i1
  %t187 = alloca %Token
  %t190 = alloca %nyx_string*
  %t193 = alloca %nyx_string*
  %t199 = alloca %nyx_string*
  %t223 = alloca i1
  %t238 = alloca %nyx_string*
  %t250 = alloca %Token
  %t266 = alloca %Token
  %t269 = alloca %nyx_string*
  %t282 = alloca %nyx_string*
  %t288 = alloca { i64, i8* }*
  %t312 = alloca %nyx_string*
  %t325 = alloca %nyx_string*
  %t330 = alloca i1
  %t336 = alloca %Token
  %t339 = alloca %nyx_string*
  %t346 = alloca %Token
  %t349 = alloca %nyx_string*
  %t357 = alloca %Token
  %t365 = alloca i1
  %t366 = alloca i64
  %t375 = alloca %nyx_string*
  %t377 = alloca %nyx_string*
  %t379 = alloca i64
  %t380 = alloca i64
  %t446 = alloca i64
  %t448 = alloca { i64, i8* }*
  %t456 = alloca { i64, i8* }*
  %t460 = alloca { i64, i8* }*
  %t462 = alloca { i64, i8* }*
  %t464 = alloca i64
  %t473 = alloca { i64, i8* }*
  %t477 = alloca %nyx_string*
  %t492 = alloca i64
  %t507 = alloca i64
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = getelementptr [3 x i8], [3 x i8]* @.str780, i32 0, i32 0
  %t32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str780.c, i8* %t31, i64 2)
  %t33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t32)
  store %Token %t33, %Token* %t34
  %t35 = load %Token, %Token* %t34
  %t36 = call i64 @get_token_line(%Token %t35)
  store i64 %t36, i64* %t37
  %t38 = getelementptr [11 x i8], [11 x i8]* @.str781, i32 0, i32 0
  %t39 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str781.c, i8* %t38, i64 10)
  %t40 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t39)
  store %Token %t40, %Token* %t41
  %t42 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t42, { i64, i8* }** %t43
  %t44 = getelementptr [5 x i8], [5 x i8]* @.str782, i32 0, i32 0
  %t45 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str782.c, i8* %t44, i64 4)
  %t46 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t45)
  br i1 %t46, label %then0, label %else1
then0:
  %t47 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t48 = getelementptr [9 x i8], [9 x i8]* @.str783, i32 0, i32 0
  %t49 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str783.c, i8* %t48, i64 8)
  %t50 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t49)
  br i1 %t50, label %then3, label %else4
then3:
  %t51 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store %Token %t51, %Token* %t52
  %t53 = load { i64, i8* }*, { i64, i8* }** %t43
  %t54 = load %Token, %Token* %t52
  %t55 = call %nyx_string* @get_token_value(%Token %t54)
  %t56 = ptrtoint %nyx_string* %t55 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t53, i64 %t56, i64 2)
  br label %merge5
else4:
  %t57 = getelementptr [11 x i8], [11 x i8]* @.str784, i32 0, i32 0
  %t58 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str784.c, i8* %t57, i64 10)
  %t59 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t58)
  store %Token %t59, %Token* %t60
  %t61 = load %Token, %Token* %t60
  %t62 = call %nyx_string* @get_token_value(%Token %t61)
  store %nyx_string* %t62, %nyx_string** %t63
  %t64 = getelementptr [6 x i8], [6 x i8]* @.str785, i32 0, i32 0
  %t65 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str785.c, i8* %t64, i64 5)
  %t66 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t65)
  br i1 %t66, label %then6, label %else7
then6:
  %t67 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t68 = getelementptr [11 x i8], [11 x i8]* @.str786, i32 0, i32 0
  %t69 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str786.c, i8* %t68, i64 10)
  %t70 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t69)
  store %Token %t70, %Token* %t71
  %t72 = load %Token, %Token* %t71
  %t73 = call %nyx_string* @get_token_value(%Token %t72)
  store %nyx_string* %t73, %nyx_string** %t74
  br label %while_cond9
while_cond9:
  %t75 = getelementptr [5 x i8], [5 x i8]* @.str787, i32 0, i32 0
  %t76 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str787.c, i8* %t75, i64 4)
  %t77 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t76)
  br i1 %t77, label %while_body10, label %while_end11
while_body10:
  %t78 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t79 = getelementptr [11 x i8], [11 x i8]* @.str788, i32 0, i32 0
  %t80 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str788.c, i8* %t79, i64 10)
  %t81 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t80)
  store %Token %t81, %Token* %t82
  %t83 = load %nyx_string*, %nyx_string** %t74
  %t84 = getelementptr [2 x i8], [2 x i8]* @.str789, i32 0, i32 0
  %t85 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str789.c, i8* %t84, i64 1)
  %t86 = call %nyx_string* @nyx_string_concat(%nyx_string* %t83, %nyx_string* %t85)
  %t87 = load %Token, %Token* %t82
  %t88 = call %nyx_string* @get_token_value(%Token %t87)
  %t89 = call %nyx_string* @nyx_string_concat(%nyx_string* %t86, %nyx_string* %t88)
  store %nyx_string* %t89, %nyx_string** %t74
  br label %while_cond9
while_end11:
  %t90 = load %nyx_string*, %nyx_string** %t63
  %t91 = getelementptr [2 x i8], [2 x i8]* @.str790, i32 0, i32 0
  %t92 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str790.c, i8* %t91, i64 1)
  %t93 = call %nyx_string* @nyx_string_concat(%nyx_string* %t90, %nyx_string* %t92)
  %t94 = load %nyx_string*, %nyx_string** %t74
  %t95 = call %nyx_string* @nyx_string_concat(%nyx_string* %t93, %nyx_string* %t94)
  store %nyx_string* %t95, %nyx_string** %t63
  br label %merge8
else7:
  br label %merge8
merge8:
  %t96 = load { i64, i8* }*, { i64, i8* }** %t43
  %t97 = load %nyx_string*, %nyx_string** %t63
  %t98 = ptrtoint %nyx_string* %t97 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t96, i64 %t98, i64 2)
  br label %merge5
merge5:
  store i1 0, i1* %t99
  br label %while_cond12
while_cond12:
  %t100 = load i1, i1* %t99
  %t101 = xor i1 %t100, true
  br i1 %t101, label %while_body13, label %while_end14
while_body13:
  %t102 = getelementptr [6 x i8], [6 x i8]* @.str791, i32 0, i32 0
  %t103 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str791.c, i8* %t102, i64 5)
  %t104 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t103)
  br i1 %t104, label %then15, label %else16
then15:
  %t105 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t106 = getelementptr [9 x i8], [9 x i8]* @.str792, i32 0, i32 0
  %t107 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str792.c, i8* %t106, i64 8)
  %t108 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t107)
  br i1 %t108, label %then18, label %else19
then18:
  %t109 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store %Token %t109, %Token* %t110
  %t111 = load { i64, i8* }*, { i64, i8* }** %t43
  %t112 = load %Token, %Token* %t110
  %t113 = call %nyx_string* @get_token_value(%Token %t112)
  %t114 = ptrtoint %nyx_string* %t113 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t111, i64 %t114, i64 2)
  br label %merge20
else19:
  %t115 = getelementptr [11 x i8], [11 x i8]* @.str793, i32 0, i32 0
  %t116 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str793.c, i8* %t115, i64 10)
  %t117 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t116)
  store %Token %t117, %Token* %t118
  %t119 = load %Token, %Token* %t118
  %t120 = call %nyx_string* @get_token_value(%Token %t119)
  store %nyx_string* %t120, %nyx_string** %t121
  %t122 = getelementptr [6 x i8], [6 x i8]* @.str794, i32 0, i32 0
  %t123 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str794.c, i8* %t122, i64 5)
  %t124 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t123)
  br i1 %t124, label %then21, label %else22
then21:
  %t125 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t126 = getelementptr [11 x i8], [11 x i8]* @.str795, i32 0, i32 0
  %t127 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str795.c, i8* %t126, i64 10)
  %t128 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t127)
  store %Token %t128, %Token* %t129
  %t130 = load %Token, %Token* %t129
  %t131 = call %nyx_string* @get_token_value(%Token %t130)
  store %nyx_string* %t131, %nyx_string** %t132
  br label %while_cond24
while_cond24:
  %t133 = getelementptr [5 x i8], [5 x i8]* @.str796, i32 0, i32 0
  %t134 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str796.c, i8* %t133, i64 4)
  %t135 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t134)
  br i1 %t135, label %while_body25, label %while_end26
while_body25:
  %t136 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t137 = getelementptr [11 x i8], [11 x i8]* @.str797, i32 0, i32 0
  %t138 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str797.c, i8* %t137, i64 10)
  %t139 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t138)
  store %Token %t139, %Token* %t140
  %t141 = load %nyx_string*, %nyx_string** %t132
  %t142 = getelementptr [2 x i8], [2 x i8]* @.str798, i32 0, i32 0
  %t143 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str798.c, i8* %t142, i64 1)
  %t144 = call %nyx_string* @nyx_string_concat(%nyx_string* %t141, %nyx_string* %t143)
  %t145 = load %Token, %Token* %t140
  %t146 = call %nyx_string* @get_token_value(%Token %t145)
  %t147 = call %nyx_string* @nyx_string_concat(%nyx_string* %t144, %nyx_string* %t146)
  store %nyx_string* %t147, %nyx_string** %t132
  br label %while_cond24
while_end26:
  %t148 = load %nyx_string*, %nyx_string** %t121
  %t149 = getelementptr [2 x i8], [2 x i8]* @.str799, i32 0, i32 0
  %t150 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str799.c, i8* %t149, i64 1)
  %t151 = call %nyx_string* @nyx_string_concat(%nyx_string* %t148, %nyx_string* %t150)
  %t152 = load %nyx_string*, %nyx_string** %t132
  %t153 = call %nyx_string* @nyx_string_concat(%nyx_string* %t151, %nyx_string* %t152)
  store %nyx_string* %t153, %nyx_string** %t121
  br label %merge23
else22:
  br label %merge23
merge23:
  %t154 = load { i64, i8* }*, { i64, i8* }** %t43
  %t155 = load %nyx_string*, %nyx_string** %t121
  %t156 = ptrtoint %nyx_string* %t155 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t154, i64 %t156, i64 2)
  br label %merge20
merge20:
  br label %merge17
else16:
  store i1 1, i1* %t99
  br label %merge17
merge17:
  br label %while_cond12
while_end14:
  %t157 = getelementptr [8 x i8], [8 x i8]* @.str800, i32 0, i32 0
  %t158 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str800.c, i8* %t157, i64 7)
  %t159 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t158)
  br label %merge2
else1:
  br label %merge2
merge2:
  %t160 = getelementptr [11 x i8], [11 x i8]* @.str801, i32 0, i32 0
  %t161 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str801.c, i8* %t160, i64 10)
  %t162 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t161)
  %t163 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t163, { i64, i8* }** %t164
  %t165 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t165, { i64, i8* }** %t166
  store i1 0, i1* %t167
  br label %while_cond27
while_cond27:
  %t168 = load i1, i1* %t167
  %t169 = xor i1 %t168, true
  br i1 %t169, label %while_body28, label %while_end29
while_body28:
  %t170 = getelementptr [12 x i8], [12 x i8]* @.str802, i32 0, i32 0
  %t171 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str802.c, i8* %t170, i64 11)
  %t172 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t171)
  br i1 %t172, label %then30, label %else31
then30:
  %t173 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %t167
  br label %merge32
else31:
  %t174 = load { i64, i8* }*, { i64, i8* }** %t164
  %t175 = call i64 @nyx_array_length({ i64, i8* }* %t174)
  %t176 = icmp sgt i64 %t175, 0
  br i1 %t176, label %then33, label %else34
then33:
  %t177 = getelementptr [6 x i8], [6 x i8]* @.str803, i32 0, i32 0
  %t178 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str803.c, i8* %t177, i64 5)
  %t179 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t178)
  br label %merge35
else34:
  br label %merge35
merge35:
  %t180 = getelementptr [9 x i8], [9 x i8]* @.str804, i32 0, i32 0
  %t181 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str804.c, i8* %t180, i64 8)
  %t182 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t181)
  br i1 %t182, label %then36, label %else37
then36:
  %t183 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t184 = getelementptr [11 x i8], [11 x i8]* @.str805, i32 0, i32 0
  %t185 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str805.c, i8* %t184, i64 10)
  %t186 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t185)
  store %Token %t186, %Token* %t187
  %t188 = load %Token, %Token* %t187
  %t189 = call %nyx_string* @get_token_value(%Token %t188)
  store %nyx_string* %t189, %nyx_string** %t190
  %t191 = getelementptr [10 x i8], [10 x i8]* @.str806, i32 0, i32 0
  %t192 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str806.c, i8* %t191, i64 9)
  store %nyx_string* %t192, %nyx_string** %t193
  %t194 = getelementptr [6 x i8], [6 x i8]* @.str807, i32 0, i32 0
  %t195 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str807.c, i8* %t194, i64 5)
  %t196 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t195)
  br i1 %t196, label %then39, label %else40
then39:
  %t197 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t198 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %t198, %nyx_string** %t199
  %t200 = getelementptr [4 x i8], [4 x i8]* @.str808, i32 0, i32 0
  %t201 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str808.c, i8* %t200, i64 3)
  %t202 = load %nyx_string*, %nyx_string** %t199
  %t203 = call %nyx_string* @nyx_string_concat(%nyx_string* %t201, %nyx_string* %t202)
  store %nyx_string* %t203, %nyx_string** %t193
  br label %merge41
else40:
  br label %merge41
merge41:
  %t204 = load { i64, i8* }*, { i64, i8* }** %t164
  %t205 = call { i64, i8* }* @nyx_array_new_ptr()
  %t206 = load %nyx_string*, %nyx_string** %t190
  %t207 = ptrtoint %nyx_string* %t206 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t205, i64 %t207, i64 2)
  %t208 = load %nyx_string*, %nyx_string** %t193
  %t209 = ptrtoint %nyx_string* %t208 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t205, i64 %t209, i64 2)
  %t210 = ptrtoint { i64, i8* }* %t205 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t204, i64 %t210, i64 5)
  %t211 = load { i64, i8* }*, { i64, i8* }** %t166
  %t212 = getelementptr [1 x i8], [1 x i8]* @.str809, i32 0, i32 0
  %t213 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str809.c, i8* %t212, i64 0)
  %t214 = ptrtoint %nyx_string* %t213 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t211, i64 %t214, i64 2)
  %t215 = getelementptr [6 x i8], [6 x i8]* @.str810, i32 0, i32 0
  %t216 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str810.c, i8* %t215, i64 5)
  %t217 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t216)
  br i1 %t217, label %then42, label %else43
then42:
  %t218 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge44
else43:
  br label %merge44
merge44:
  %t219 = getelementptr [12 x i8], [12 x i8]* @.str811, i32 0, i32 0
  %t220 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str811.c, i8* %t219, i64 11)
  %t221 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t220)
  br i1 %t221, label %then45, label %else46
then45:
  %t222 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge47
else46:
  br label %merge47
merge47:
  store i1 1, i1* %t167
  br label %merge38
else37:
  store i1 false, i1* %t223
  %t224 = getelementptr [4 x i8], [4 x i8]* @.str812, i32 0, i32 0
  %t225 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str812.c, i8* %t224, i64 3)
  %t226 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t225)
  br i1 %t226, label %sc_and_rhs48, label %sc_and_end49
sc_and_rhs48:
  %t227 = load { i64, i8* }*, { i64, i8* }** %t164
  %t228 = call i64 @nyx_array_length({ i64, i8* }* %t227)
  %t229 = icmp eq i64 %t228, 0
  store i1 %t229, i1* %t223
  br label %sc_and_end49
sc_and_end49:
  %t230 = load i1, i1* %t223
  br i1 %t230, label %then50, label %else51
then50:
  %t231 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t232 = getelementptr [9 x i8], [9 x i8]* @.str813, i32 0, i32 0
  %t233 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str813.c, i8* %t232, i64 8)
  %t234 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t233)
  br i1 %t234, label %then53, label %else54
then53:
  %t235 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge55
else54:
  br label %merge55
merge55:
  %t236 = getelementptr [2 x i8], [2 x i8]* @.str814, i32 0, i32 0
  %t237 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str814.c, i8* %t236, i64 1)
  store %nyx_string* %t237, %nyx_string** %t238
  %t239 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %t240 = call %nyx_string* @get_token_value(%Token %t239)
  %t241 = getelementptr [4 x i8], [4 x i8]* @.str815, i32 0, i32 0
  %t242 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str815.c, i8* %t241, i64 3)
  %t243 = call i1 @nyx_string_equals(%nyx_string* %t240, %nyx_string* %t242)
  br i1 %t243, label %then56, label %else57
then56:
  %t244 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t245 = getelementptr [5 x i8], [5 x i8]* @.str816, i32 0, i32 0
  %t246 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str816.c, i8* %t245, i64 4)
  store %nyx_string* %t246, %nyx_string** %t238
  br label %merge58
else57:
  br label %merge58
merge58:
  %t247 = getelementptr [11 x i8], [11 x i8]* @.str817, i32 0, i32 0
  %t248 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str817.c, i8* %t247, i64 10)
  %t249 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t248)
  store %Token %t249, %Token* %t250
  %t251 = load { i64, i8* }*, { i64, i8* }** %t164
  %t252 = call { i64, i8* }* @nyx_array_new_ptr()
  %t253 = load %Token, %Token* %t250
  %t254 = call %nyx_string* @get_token_value(%Token %t253)
  %t255 = ptrtoint %nyx_string* %t254 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t252, i64 %t255, i64 2)
  %t256 = load %nyx_string*, %nyx_string** %t238
  %t257 = ptrtoint %nyx_string* %t256 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t252, i64 %t257, i64 2)
  %t258 = ptrtoint { i64, i8* }* %t252 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t251, i64 %t258, i64 5)
  %t259 = load { i64, i8* }*, { i64, i8* }** %t166
  %t260 = getelementptr [1 x i8], [1 x i8]* @.str818, i32 0, i32 0
  %t261 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str818.c, i8* %t260, i64 0)
  %t262 = ptrtoint %nyx_string* %t261 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t259, i64 %t262, i64 2)
  br label %merge52
else51:
  %t263 = getelementptr [11 x i8], [11 x i8]* @.str819, i32 0, i32 0
  %t264 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str819.c, i8* %t263, i64 10)
  %t265 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t264)
  store %Token %t265, %Token* %t266
  %t267 = getelementptr [1 x i8], [1 x i8]* @.str820, i32 0, i32 0
  %t268 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str820.c, i8* %t267, i64 0)
  store %nyx_string* %t268, %nyx_string** %t269
  %t270 = load { i64, i8* }*, { i64, i8* }** %t19
  %t271 = getelementptr [1 x i8], [1 x i8]* @.str821, i32 0, i32 0
  %t272 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str821.c, i8* %t271, i64 0)
  %t273 = ptrtoint %nyx_string* %t272 to i64
  call void @nyx_array_set_tagged({ i64, i8* }* %t270, i64 0, i64 %t273, i64 2)
  %t274 = getelementptr [6 x i8], [6 x i8]* @.str822, i32 0, i32 0
  %t275 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str822.c, i8* %t274, i64 5)
  %t276 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t275)
  br i1 %t276, label %then59, label %else60
then59:
  %t277 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t278 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %t278, %nyx_string** %t269
  br label %merge61
else60:
  br label %merge61
merge61:
  %t279 = load { i64, i8* }*, { i64, i8* }** %t19
  %t280 = call i64 @nyx_array_get_checked({ i64, i8* }* %t279, i64 0, i64 2)
  %t281 = inttoptr i64 %t280 to %nyx_string*
  store %nyx_string* %t281, %nyx_string** %t282
  %t283 = getelementptr [7 x i8], [7 x i8]* @.str823, i32 0, i32 0
  %t284 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str823.c, i8* %t283, i64 6)
  %t285 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t284)
  br i1 %t285, label %then62, label %else63
then62:
  %t286 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t287 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t287, { i64, i8* }** %t288
  %t289 = load { i64, i8* }*, { i64, i8* }** %t164
  %t290 = call { i64, i8* }* @nyx_array_new_ptr()
  %t291 = load %Token, %Token* %t266
  %t292 = call %nyx_string* @get_token_value(%Token %t291)
  %t293 = ptrtoint %nyx_string* %t292 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t290, i64 %t293, i64 2)
  %t294 = load %nyx_string*, %nyx_string** %t269
  %t295 = ptrtoint %nyx_string* %t294 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t290, i64 %t295, i64 2)
  %t296 = load { i64, i8* }*, { i64, i8* }** %t288
  %t297 = ptrtoint { i64, i8* }* %t296 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t290, i64 %t297, i64 5)
  %t298 = ptrtoint { i64, i8* }* %t290 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t289, i64 %t298, i64 5)
  br label %merge64
else63:
  %t299 = load { i64, i8* }*, { i64, i8* }** %t164
  %t300 = call { i64, i8* }* @nyx_array_new_ptr()
  %t301 = load %Token, %Token* %t266
  %t302 = call %nyx_string* @get_token_value(%Token %t301)
  %t303 = ptrtoint %nyx_string* %t302 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t300, i64 %t303, i64 2)
  %t304 = load %nyx_string*, %nyx_string** %t269
  %t305 = ptrtoint %nyx_string* %t304 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t300, i64 %t305, i64 2)
  %t306 = ptrtoint { i64, i8* }* %t300 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t299, i64 %t306, i64 5)
  br label %merge64
merge64:
  %t307 = load { i64, i8* }*, { i64, i8* }** %t166
  %t308 = load %nyx_string*, %nyx_string** %t282
  %t309 = ptrtoint %nyx_string* %t308 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t307, i64 %t309, i64 2)
  br label %merge52
merge52:
  br label %merge38
merge38:
  br label %merge32
merge32:
  br label %while_cond27
while_end29:
  %t310 = getelementptr [1 x i8], [1 x i8]* @.str824, i32 0, i32 0
  %t311 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str824.c, i8* %t310, i64 0)
  store %nyx_string* %t311, %nyx_string** %t312
  %t313 = load { i64, i8* }*, { i64, i8* }** %t19
  %t314 = getelementptr [1 x i8], [1 x i8]* @.str825, i32 0, i32 0
  %t315 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str825.c, i8* %t314, i64 0)
  %t316 = ptrtoint %nyx_string* %t315 to i64
  call void @nyx_array_set_tagged({ i64, i8* }* %t313, i64 0, i64 %t316, i64 2)
  %t317 = getelementptr [6 x i8], [6 x i8]* @.str826, i32 0, i32 0
  %t318 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str826.c, i8* %t317, i64 5)
  %t319 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t318)
  br i1 %t319, label %then65, label %else66
then65:
  %t320 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t321 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %t321, %nyx_string** %t312
  br label %merge67
else66:
  br label %merge67
merge67:
  %t322 = load { i64, i8* }*, { i64, i8* }** %t19
  %t323 = call i64 @nyx_array_get_checked({ i64, i8* }* %t322, i64 0, i64 2)
  %t324 = inttoptr i64 %t323 to %nyx_string*
  store %nyx_string* %t324, %nyx_string** %t325
  %t326 = getelementptr [6 x i8], [6 x i8]* @.str827, i32 0, i32 0
  %t327 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str827.c, i8* %t326, i64 5)
  %t328 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t327)
  br i1 %t328, label %then68, label %else69
then68:
  %t329 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 0, i1* %t330
  br label %while_cond71
while_cond71:
  %t331 = load i1, i1* %t330
  %t332 = xor i1 %t331, true
  br i1 %t332, label %while_body72, label %while_end73
while_body72:
  %t333 = getelementptr [11 x i8], [11 x i8]* @.str828, i32 0, i32 0
  %t334 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str828.c, i8* %t333, i64 10)
  %t335 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t334)
  store %Token %t335, %Token* %t336
  %t337 = load %Token, %Token* %t336
  %t338 = call %nyx_string* @get_token_value(%Token %t337)
  store %nyx_string* %t338, %nyx_string** %t339
  %t340 = getelementptr [6 x i8], [6 x i8]* @.str829, i32 0, i32 0
  %t341 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str829.c, i8* %t340, i64 5)
  %t342 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t341)
  %t343 = getelementptr [11 x i8], [11 x i8]* @.str830, i32 0, i32 0
  %t344 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str830.c, i8* %t343, i64 10)
  %t345 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t344)
  store %Token %t345, %Token* %t346
  %t347 = load %Token, %Token* %t346
  %t348 = call %nyx_string* @get_token_value(%Token %t347)
  store %nyx_string* %t348, %nyx_string** %t349
  br label %while_cond74
while_cond74:
  %t350 = getelementptr [5 x i8], [5 x i8]* @.str831, i32 0, i32 0
  %t351 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str831.c, i8* %t350, i64 4)
  %t352 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t351)
  br i1 %t352, label %while_body75, label %while_end76
while_body75:
  %t353 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t354 = getelementptr [11 x i8], [11 x i8]* @.str832, i32 0, i32 0
  %t355 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str832.c, i8* %t354, i64 10)
  %t356 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t355)
  store %Token %t356, %Token* %t357
  %t358 = load %nyx_string*, %nyx_string** %t349
  %t359 = getelementptr [2 x i8], [2 x i8]* @.str833, i32 0, i32 0
  %t360 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str833.c, i8* %t359, i64 1)
  %t361 = call %nyx_string* @nyx_string_concat(%nyx_string* %t358, %nyx_string* %t360)
  %t362 = load %Token, %Token* %t357
  %t363 = call %nyx_string* @get_token_value(%Token %t362)
  %t364 = call %nyx_string* @nyx_string_concat(%nyx_string* %t361, %nyx_string* %t363)
  store %nyx_string* %t364, %nyx_string** %t349
  br label %while_cond74
while_end76:
  store i1 0, i1* %t365
  store i64 0, i64* %t366
  br label %while_cond77
while_cond77:
  %t367 = load i64, i64* %t366
  %t368 = load { i64, i8* }*, { i64, i8* }** %t43
  %t369 = call i64 @nyx_array_length({ i64, i8* }* %t368)
  %t370 = icmp slt i64 %t367, %t369
  br i1 %t370, label %while_body78, label %while_end79
while_body78:
  %t371 = load { i64, i8* }*, { i64, i8* }** %t43
  %t372 = load i64, i64* %t366
  %t373 = call i64 @nyx_array_get_checked({ i64, i8* }* %t371, i64 %t372, i64 2)
  %t374 = inttoptr i64 %t373 to %nyx_string*
  store %nyx_string* %t374, %nyx_string** %t375
  %t376 = load %nyx_string*, %nyx_string** %t375
  store %nyx_string* %t376, %nyx_string** %t377
  %t378 = sub i64 0, 1
  store i64 %t378, i64* %t379
  store i64 0, i64* %t380
  br label %while_cond80
while_cond80:
  %t381 = load i64, i64* %t380
  %t382 = load %nyx_string*, %nyx_string** %t375
  %t383 = call i64 @nyx_string_byte_length(%nyx_string* %t382)
  %t384 = icmp slt i64 %t381, %t383
  br i1 %t384, label %while_body81, label %while_end82
while_body81:
  %t385 = load %nyx_string*, %nyx_string** %t375
  %t386 = load i64, i64* %t380
  %t387 = call i8 @nyx_string_char_at(%nyx_string* %t385, i64 %t386)
  %t388 = zext i8 %t387 to i64
  %t389 = getelementptr [1 x i8], [1 x i8]* @.str834, i32 0, i32 0
  %t390 = load i8, i8* %t389
  %t391 = zext i8 %t390 to i64
  %t392 = icmp eq i64 %t388, %t391
  br i1 %t392, label %then83, label %else84
then83:
  %t393 = load i64, i64* %t380
  store i64 %t393, i64* %t379
  %t394 = load %nyx_string*, %nyx_string** %t375
  %t395 = call i64 @nyx_string_byte_length(%nyx_string* %t394)
  store i64 %t395, i64* %t380
  br label %merge85
else84:
  br label %merge85
merge85:
  %t396 = load i64, i64* %t380
  %t397 = add i64 %t396, 1
  store i64 %t397, i64* %t380
  br label %while_cond80
while_end82:
  %t398 = load i64, i64* %t379
  %t399 = icmp sge i64 %t398, 0
  br i1 %t399, label %then86, label %else87
then86:
  %t400 = load %nyx_string*, %nyx_string** %t375
  %t401 = load i64, i64* %t379
  %t402 = call %nyx_string* @nyx_string_substring(%nyx_string* %t400, i64 0, i64 %t401)
  store %nyx_string* %t402, %nyx_string** %t377
  br label %merge88
else87:
  br label %merge88
merge88:
  %t403 = load %nyx_string*, %nyx_string** %t377
  %t404 = load %nyx_string*, %nyx_string** %t339
  %t405 = call i1 @nyx_string_equals(%nyx_string* %t403, %nyx_string* %t404)
  br i1 %t405, label %then89, label %else90
then89:
  %t406 = load i64, i64* %t379
  %t407 = icmp sge i64 %t406, 0
  br i1 %t407, label %then92, label %else93
then92:
  %t408 = load { i64, i8* }*, { i64, i8* }** %t43
  %t409 = load i64, i64* %t366
  %t410 = load %nyx_string*, %nyx_string** %t375
  %t411 = getelementptr [2 x i8], [2 x i8]* @.str835, i32 0, i32 0
  %t412 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str835.c, i8* %t411, i64 1)
  %t413 = call %nyx_string* @nyx_string_concat(%nyx_string* %t410, %nyx_string* %t412)
  %t414 = load %nyx_string*, %nyx_string** %t349
  %t415 = call %nyx_string* @nyx_string_concat(%nyx_string* %t413, %nyx_string* %t414)
  %t416 = ptrtoint %nyx_string* %t415 to i64
  call void @nyx_array_set_tagged({ i64, i8* }* %t408, i64 %t409, i64 %t416, i64 2)
  br label %merge94
else93:
  %t417 = load { i64, i8* }*, { i64, i8* }** %t43
  %t418 = load i64, i64* %t366
  %t419 = load %nyx_string*, %nyx_string** %t375
  %t420 = getelementptr [2 x i8], [2 x i8]* @.str836, i32 0, i32 0
  %t421 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str836.c, i8* %t420, i64 1)
  %t422 = call %nyx_string* @nyx_string_concat(%nyx_string* %t419, %nyx_string* %t421)
  %t423 = load %nyx_string*, %nyx_string** %t349
  %t424 = call %nyx_string* @nyx_string_concat(%nyx_string* %t422, %nyx_string* %t423)
  %t425 = ptrtoint %nyx_string* %t424 to i64
  call void @nyx_array_set_tagged({ i64, i8* }* %t417, i64 %t418, i64 %t425, i64 2)
  br label %merge94
merge94:
  store i1 1, i1* %t365
  %t426 = load { i64, i8* }*, { i64, i8* }** %t43
  %t427 = call i64 @nyx_array_length({ i64, i8* }* %t426)
  store i64 %t427, i64* %t366
  br label %merge91
else90:
  br label %merge91
merge91:
  %t428 = load i64, i64* %t366
  %t429 = add i64 %t428, 1
  store i64 %t429, i64* %t366
  br label %while_cond77
while_end79:
  %t430 = load i1, i1* %t365
  %t431 = xor i1 %t430, true
  br i1 %t431, label %then95, label %else96
then95:
  %t432 = load { i64, i8* }*, { i64, i8* }** %t43
  %t433 = load %nyx_string*, %nyx_string** %t339
  %t434 = getelementptr [2 x i8], [2 x i8]* @.str837, i32 0, i32 0
  %t435 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str837.c, i8* %t434, i64 1)
  %t436 = call %nyx_string* @nyx_string_concat(%nyx_string* %t433, %nyx_string* %t435)
  %t437 = load %nyx_string*, %nyx_string** %t349
  %t438 = call %nyx_string* @nyx_string_concat(%nyx_string* %t436, %nyx_string* %t437)
  %t439 = ptrtoint %nyx_string* %t438 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t432, i64 %t439, i64 2)
  br label %merge97
else96:
  br label %merge97
merge97:
  %t440 = getelementptr [6 x i8], [6 x i8]* @.str838, i32 0, i32 0
  %t441 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str838.c, i8* %t440, i64 5)
  %t442 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t441)
  br i1 %t442, label %then98, label %else99
then98:
  %t443 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge100
else99:
  store i1 1, i1* %t330
  br label %merge100
merge100:
  br label %while_cond71
while_end73:
  br label %merge70
else69:
  br label %merge70
merge70:
  %t444 = load { i64, i8* }*, { i64, i8* }** %t12
  %t445 = call i64 @nyx_array_length({ i64, i8* }* %t444)
  store i64 %t445, i64* %t446
  %t447 = call { i64, i8* }* @parse__parse_fn_body_block(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t447, { i64, i8* }** %t448
  %t449 = load { i64, i8* }*, { i64, i8* }** %t12
  %t450 = call i64 @nyx_array_length({ i64, i8* }* %t449)
  %t451 = load i64, i64* %t446
  %t452 = icmp sgt i64 %t450, %t451
  br i1 %t452, label %then101, label %else102
then101:
  %t453 = load { i64, i8* }*, { i64, i8* }** %t448
  %t454 = call i64 @nyx_array_get({ i64, i8* }* %t453, i64 1)
  %t455 = inttoptr i64 %t454 to { i64, i8* }*
  store { i64, i8* }* %t455, { i64, i8* }** %t456
  %t457 = load { i64, i8* }*, { i64, i8* }** %t456
  %t458 = call i64 @nyx_array_get({ i64, i8* }* %t457, i64 0)
  %t459 = inttoptr i64 %t458 to { i64, i8* }*
  store { i64, i8* }* %t459, { i64, i8* }** %t460
  %t461 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t461, { i64, i8* }** %t462
  %t463 = load i64, i64* %t446
  store i64 %t463, i64* %t464
  br label %while_cond104
while_cond104:
  %t465 = load i64, i64* %t464
  %t466 = load { i64, i8* }*, { i64, i8* }** %t12
  %t467 = call i64 @nyx_array_length({ i64, i8* }* %t466)
  %t468 = icmp slt i64 %t465, %t467
  br i1 %t468, label %while_body105, label %while_end106
while_body105:
  %t469 = load { i64, i8* }*, { i64, i8* }** %t12
  %t470 = load i64, i64* %t464
  %t471 = call i64 @nyx_array_get({ i64, i8* }* %t469, i64 %t470)
  %t472 = inttoptr i64 %t471 to { i64, i8* }*
  store { i64, i8* }* %t472, { i64, i8* }** %t473
  %t474 = load { i64, i8* }*, { i64, i8* }** %t473
  %t475 = call i64 @nyx_array_get_checked({ i64, i8* }* %t474, i64 0, i64 2)
  %t476 = inttoptr i64 %t475 to %nyx_string*
  store %nyx_string* %t476, %nyx_string** %t477
  %t478 = load %nyx_string*, %nyx_string** %t477
  %t479 = getelementptr [10 x i8], [10 x i8]* @.str839, i32 0, i32 0
  %t480 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str839.c, i8* %t479, i64 9)
  %t481 = call i1 @nyx_string_equals(%nyx_string* %t478, %nyx_string* %t480)
  %t482 = xor i1 %t481, true
  br i1 %t482, label %then107, label %else108
then107:
  %t483 = load { i64, i8* }*, { i64, i8* }** %t462
  %t484 = load { i64, i8* }*, { i64, i8* }** %t12
  %t485 = load i64, i64* %t464
  %t486 = call i64 @nyx_array_get({ i64, i8* }* %t484, i64 %t485)
  %t487 = load { i64, i8* }*, { i64, i8* }** %t12
  %t488 = load i64, i64* %t464
  %t489 = call i64 @nyx_array_get_tag({ i64, i8* }* %t487, i64 %t488)
  call void @nyx_array_push_tagged({ i64, i8* }* %t483, i64 %t486, i64 %t489)
  br label %merge109
else108:
  br label %merge109
merge109:
  %t490 = load i64, i64* %t464
  %t491 = add i64 %t490, 1
  store i64 %t491, i64* %t464
  br label %while_cond104
while_end106:
  store i64 0, i64* %t492
  br label %while_cond110
while_cond110:
  %t493 = load i64, i64* %t492
  %t494 = load { i64, i8* }*, { i64, i8* }** %t460
  %t495 = call i64 @nyx_array_length({ i64, i8* }* %t494)
  %t496 = icmp slt i64 %t493, %t495
  br i1 %t496, label %while_body111, label %while_end112
while_body111:
  %t497 = load { i64, i8* }*, { i64, i8* }** %t462
  %t498 = load { i64, i8* }*, { i64, i8* }** %t460
  %t499 = load i64, i64* %t492
  %t500 = call i64 @nyx_array_get({ i64, i8* }* %t498, i64 %t499)
  %t501 = load { i64, i8* }*, { i64, i8* }** %t460
  %t502 = load i64, i64* %t492
  %t503 = call i64 @nyx_array_get_tag({ i64, i8* }* %t501, i64 %t502)
  call void @nyx_array_push_tagged({ i64, i8* }* %t497, i64 %t500, i64 %t503)
  %t504 = load i64, i64* %t492
  %t505 = add i64 %t504, 1
  store i64 %t505, i64* %t492
  br label %while_cond110
while_end112:
  %t506 = load i64, i64* %t446
  store i64 %t506, i64* %t507
  br label %while_cond113
while_cond113:
  %t508 = load i64, i64* %t507
  %t509 = load { i64, i8* }*, { i64, i8* }** %t12
  %t510 = call i64 @nyx_array_length({ i64, i8* }* %t509)
  %t511 = icmp slt i64 %t508, %t510
  br i1 %t511, label %while_body114, label %while_end115
while_body114:
  %t512 = load { i64, i8* }*, { i64, i8* }** %t12
  %t513 = load i64, i64* %t507
  %t514 = getelementptr [10 x i8], [10 x i8]* @.str840, i32 0, i32 0
  %t515 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str840.c, i8* %t514, i64 9)
  %t516 = call { i64, i8* }* @nyx_array_new_ptr()
  %t517 = call { i64, i8* }* @make_astnode(%nyx_string* %t515, { i64, i8* }* %t516)
  %t518 = ptrtoint { i64, i8* }* %t517 to i64
  call void @nyx_array_set_tagged({ i64, i8* }* %t512, i64 %t513, i64 %t518, i64 5)
  %t519 = load i64, i64* %t507
  %t520 = add i64 %t519, 1
  store i64 %t520, i64* %t507
  br label %while_cond113
while_end115:
  %t521 = getelementptr [9 x i8], [9 x i8]* @.str841, i32 0, i32 0
  %t522 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str841.c, i8* %t521, i64 8)
  %t523 = call { i64, i8* }* @nyx_array_new_ptr()
  %t524 = load %Token, %Token* %t41
  %t525 = call %nyx_string* @get_token_value(%Token %t524)
  %t526 = ptrtoint %nyx_string* %t525 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t523, i64 %t526, i64 2)
  %t527 = load { i64, i8* }*, { i64, i8* }** %t164
  %t528 = ptrtoint { i64, i8* }* %t527 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t523, i64 %t528, i64 5)
  %t529 = load %nyx_string*, %nyx_string** %t312
  %t530 = ptrtoint %nyx_string* %t529 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t523, i64 %t530, i64 2)
  %t531 = getelementptr [6 x i8], [6 x i8]* @.str842, i32 0, i32 0
  %t532 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str842.c, i8* %t531, i64 5)
  %t533 = call { i64, i8* }* @nyx_array_new_ptr()
  %t534 = load { i64, i8* }*, { i64, i8* }** %t462
  %t535 = ptrtoint { i64, i8* }* %t534 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t533, i64 %t535, i64 5)
  %t536 = call { i64, i8* }* @make_astnode(%nyx_string* %t532, { i64, i8* }* %t533)
  %t537 = ptrtoint { i64, i8* }* %t536 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t523, i64 %t537, i64 5)
  %t538 = load { i64, i8* }*, { i64, i8* }** %t43
  %t539 = ptrtoint { i64, i8* }* %t538 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t523, i64 %t539, i64 5)
  %t540 = getelementptr [1 x i8], [1 x i8]* @.str843, i32 0, i32 0
  %t541 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str843.c, i8* %t540, i64 0)
  %t542 = ptrtoint %nyx_string* %t541 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t523, i64 %t542, i64 2)
  %t543 = call { i64, i8* }* @nyx_array_new_ptr()
  %t544 = getelementptr [10 x i8], [10 x i8]* @.str844, i32 0, i32 0
  %t545 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str844.c, i8* %t544, i64 9)
  %t546 = ptrtoint %nyx_string* %t545 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t543, i64 %t546, i64 2)
  %t547 = load %nyx_string*, %nyx_string** %t325
  %t548 = ptrtoint %nyx_string* %t547 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t543, i64 %t548, i64 2)
  %t549 = ptrtoint { i64, i8* }* %t543 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t523, i64 %t549, i64 5)
  %t550 = call { i64, i8* }* @nyx_array_new_ptr()
  %t551 = getelementptr [12 x i8], [12 x i8]* @.str845, i32 0, i32 0
  %t552 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str845.c, i8* %t551, i64 11)
  %t553 = ptrtoint %nyx_string* %t552 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t550, i64 %t553, i64 2)
  %t554 = load { i64, i8* }*, { i64, i8* }** %t166
  %t555 = ptrtoint { i64, i8* }* %t554 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t550, i64 %t555, i64 5)
  %t556 = ptrtoint { i64, i8* }* %t550 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t523, i64 %t556, i64 5)
  %t557 = call { i64, i8* }* @nyx_array_new_ptr()
  %t558 = getelementptr [13 x i8], [13 x i8]* @.str846, i32 0, i32 0
  %t559 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str846.c, i8* %t558, i64 12)
  %t560 = ptrtoint %nyx_string* %t559 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t557, i64 %t560, i64 2)
  %t561 = load i64, i64* %t37
  call void @nyx_array_push_tagged({ i64, i8* }* %t557, i64 %t561, i64 1)
  %t562 = ptrtoint { i64, i8* }* %t557 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t523, i64 %t562, i64 5)
  %t563 = call { i64, i8* }* @make_astnode(%nyx_string* %t522, { i64, i8* }* %t523)
  ret { i64, i8* }* %t563
else102:
  br label %merge103
merge103:
  %t564 = getelementptr [9 x i8], [9 x i8]* @.str847, i32 0, i32 0
  %t565 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str847.c, i8* %t564, i64 8)
  %t566 = call { i64, i8* }* @nyx_array_new_ptr()
  %t567 = load %Token, %Token* %t41
  %t568 = call %nyx_string* @get_token_value(%Token %t567)
  %t569 = ptrtoint %nyx_string* %t568 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t566, i64 %t569, i64 2)
  %t570 = load { i64, i8* }*, { i64, i8* }** %t164
  %t571 = ptrtoint { i64, i8* }* %t570 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t566, i64 %t571, i64 5)
  %t572 = load %nyx_string*, %nyx_string** %t312
  %t573 = ptrtoint %nyx_string* %t572 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t566, i64 %t573, i64 2)
  %t574 = load { i64, i8* }*, { i64, i8* }** %t448
  %t575 = ptrtoint { i64, i8* }* %t574 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t566, i64 %t575, i64 5)
  %t576 = load { i64, i8* }*, { i64, i8* }** %t43
  %t577 = ptrtoint { i64, i8* }* %t576 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t566, i64 %t577, i64 5)
  %t578 = getelementptr [1 x i8], [1 x i8]* @.str848, i32 0, i32 0
  %t579 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str848.c, i8* %t578, i64 0)
  %t580 = ptrtoint %nyx_string* %t579 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t566, i64 %t580, i64 2)
  %t581 = call { i64, i8* }* @nyx_array_new_ptr()
  %t582 = getelementptr [10 x i8], [10 x i8]* @.str849, i32 0, i32 0
  %t583 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str849.c, i8* %t582, i64 9)
  %t584 = ptrtoint %nyx_string* %t583 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t581, i64 %t584, i64 2)
  %t585 = load %nyx_string*, %nyx_string** %t325
  %t586 = ptrtoint %nyx_string* %t585 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t581, i64 %t586, i64 2)
  %t587 = ptrtoint { i64, i8* }* %t581 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t566, i64 %t587, i64 5)
  %t588 = call { i64, i8* }* @nyx_array_new_ptr()
  %t589 = getelementptr [12 x i8], [12 x i8]* @.str850, i32 0, i32 0
  %t590 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str850.c, i8* %t589, i64 11)
  %t591 = ptrtoint %nyx_string* %t590 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t588, i64 %t591, i64 2)
  %t592 = load { i64, i8* }*, { i64, i8* }** %t166
  %t593 = ptrtoint { i64, i8* }* %t592 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t588, i64 %t593, i64 5)
  %t594 = ptrtoint { i64, i8* }* %t588 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t566, i64 %t594, i64 5)
  %t595 = call { i64, i8* }* @nyx_array_new_ptr()
  %t596 = getelementptr [13 x i8], [13 x i8]* @.str851, i32 0, i32 0
  %t597 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str851.c, i8* %t596, i64 12)
  %t598 = ptrtoint %nyx_string* %t597 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t595, i64 %t598, i64 2)
  %t599 = load i64, i64* %t37
  call void @nyx_array_push_tagged({ i64, i8* }* %t595, i64 %t599, i64 1)
  %t600 = ptrtoint { i64, i8* }* %t595 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t566, i64 %t600, i64 5)
  %t601 = call { i64, i8* }* @make_astnode(%nyx_string* %t565, { i64, i8* }* %t566)
  ret { i64, i8* }* %t601
}

define internal { i64, i8* }* @parse__parse_struct(%SharedEnv_parse* %env.param) {
  %t37 = alloca %Token
  %t39 = alloca { i64, i8* }*
  %t48 = alloca %Token
  %t56 = alloca %Token
  %t61 = alloca i1
  %t72 = alloca %Token
  %t80 = alloca %Token
  %t93 = alloca { i64, i8* }*
  %t94 = alloca i1
  %t98 = alloca %nyx_string*
  %t132 = alloca { i64, i8* }*
  %t141 = alloca { i64, i8* }*
  %t142 = alloca i1
  %t165 = alloca %Token
  %t170 = alloca %nyx_string*
  %t190 = alloca { i64, i8* }*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = getelementptr [7 x i8], [7 x i8]* @.str852, i32 0, i32 0
  %t32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str852.c, i8* %t31, i64 6)
  %t33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t32)
  %t34 = getelementptr [11 x i8], [11 x i8]* @.str853, i32 0, i32 0
  %t35 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str853.c, i8* %t34, i64 10)
  %t36 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t35)
  store %Token %t36, %Token* %t37
  %t38 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t38, { i64, i8* }** %t39
  %t40 = getelementptr [5 x i8], [5 x i8]* @.str854, i32 0, i32 0
  %t41 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str854.c, i8* %t40, i64 4)
  %t42 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t41)
  br i1 %t42, label %then0, label %else1
then0:
  %t43 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t44 = getelementptr [9 x i8], [9 x i8]* @.str855, i32 0, i32 0
  %t45 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str855.c, i8* %t44, i64 8)
  %t46 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t45)
  br i1 %t46, label %then3, label %else4
then3:
  %t47 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store %Token %t47, %Token* %t48
  %t49 = load { i64, i8* }*, { i64, i8* }** %t39
  %t50 = load %Token, %Token* %t48
  %t51 = call %nyx_string* @get_token_value(%Token %t50)
  %t52 = ptrtoint %nyx_string* %t51 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t49, i64 %t52, i64 2)
  br label %merge5
else4:
  %t53 = getelementptr [11 x i8], [11 x i8]* @.str856, i32 0, i32 0
  %t54 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str856.c, i8* %t53, i64 10)
  %t55 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t54)
  store %Token %t55, %Token* %t56
  %t57 = load { i64, i8* }*, { i64, i8* }** %t39
  %t58 = load %Token, %Token* %t56
  %t59 = call %nyx_string* @get_token_value(%Token %t58)
  %t60 = ptrtoint %nyx_string* %t59 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t57, i64 %t60, i64 2)
  br label %merge5
merge5:
  store i1 0, i1* %t61
  br label %while_cond6
while_cond6:
  %t62 = load i1, i1* %t61
  %t63 = xor i1 %t62, true
  br i1 %t63, label %while_body7, label %while_end8
while_body7:
  %t64 = getelementptr [6 x i8], [6 x i8]* @.str857, i32 0, i32 0
  %t65 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str857.c, i8* %t64, i64 5)
  %t66 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t65)
  br i1 %t66, label %then9, label %else10
then9:
  %t67 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t68 = getelementptr [9 x i8], [9 x i8]* @.str858, i32 0, i32 0
  %t69 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str858.c, i8* %t68, i64 8)
  %t70 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t69)
  br i1 %t70, label %then12, label %else13
then12:
  %t71 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store %Token %t71, %Token* %t72
  %t73 = load { i64, i8* }*, { i64, i8* }** %t39
  %t74 = load %Token, %Token* %t72
  %t75 = call %nyx_string* @get_token_value(%Token %t74)
  %t76 = ptrtoint %nyx_string* %t75 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t73, i64 %t76, i64 2)
  br label %merge14
else13:
  %t77 = getelementptr [11 x i8], [11 x i8]* @.str859, i32 0, i32 0
  %t78 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str859.c, i8* %t77, i64 10)
  %t79 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t78)
  store %Token %t79, %Token* %t80
  %t81 = load { i64, i8* }*, { i64, i8* }** %t39
  %t82 = load %Token, %Token* %t80
  %t83 = call %nyx_string* @get_token_value(%Token %t82)
  %t84 = ptrtoint %nyx_string* %t83 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t81, i64 %t84, i64 2)
  br label %merge14
merge14:
  br label %merge11
else10:
  store i1 1, i1* %t61
  br label %merge11
merge11:
  br label %while_cond6
while_end8:
  %t85 = getelementptr [8 x i8], [8 x i8]* @.str860, i32 0, i32 0
  %t86 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str860.c, i8* %t85, i64 7)
  %t87 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t86)
  br label %merge2
else1:
  br label %merge2
merge2:
  %t88 = getelementptr [11 x i8], [11 x i8]* @.str861, i32 0, i32 0
  %t89 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str861.c, i8* %t88, i64 10)
  %t90 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t89)
  br i1 %t90, label %then15, label %else16
then15:
  %t91 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t92 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t92, { i64, i8* }** %t93
  store i1 0, i1* %t94
  br label %while_cond18
while_cond18:
  %t95 = load i1, i1* %t94
  %t96 = xor i1 %t95, true
  br i1 %t96, label %while_body19, label %while_end20
while_body19:
  %t97 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %t97, %nyx_string** %t98
  %t99 = load { i64, i8* }*, { i64, i8* }** %t93
  %t100 = call { i64, i8* }* @nyx_array_new_ptr()
  %t101 = getelementptr [2 x i8], [2 x i8]* @.str862, i32 0, i32 0
  %t102 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str862.c, i8* %t101, i64 1)
  %t103 = load { i64, i8* }*, { i64, i8* }** %t93
  %t104 = call i64 @nyx_array_length({ i64, i8* }* %t103)
  %t105 = call %nyx_string* @nyx_string_from_int(i64 %t104)
  %t106 = call %nyx_string* @nyx_string_concat(%nyx_string* %t102, %nyx_string* %t105)
  %t107 = ptrtoint %nyx_string* %t106 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t100, i64 %t107, i64 2)
  %t108 = load %nyx_string*, %nyx_string** %t98
  %t109 = ptrtoint %nyx_string* %t108 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t100, i64 %t109, i64 2)
  %t110 = ptrtoint { i64, i8* }* %t100 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t99, i64 %t110, i64 5)
  %t111 = getelementptr [6 x i8], [6 x i8]* @.str863, i32 0, i32 0
  %t112 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str863.c, i8* %t111, i64 5)
  %t113 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t112)
  br i1 %t113, label %then21, label %else22
then21:
  %t114 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t115 = getelementptr [12 x i8], [12 x i8]* @.str864, i32 0, i32 0
  %t116 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str864.c, i8* %t115, i64 11)
  %t117 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t116)
  br i1 %t117, label %then24, label %else25
then24:
  store i1 1, i1* %t94
  br label %merge26
else25:
  br label %merge26
merge26:
  br label %merge23
else22:
  store i1 1, i1* %t94
  br label %merge23
merge23:
  br label %while_cond18
while_end20:
  %t118 = getelementptr [12 x i8], [12 x i8]* @.str865, i32 0, i32 0
  %t119 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str865.c, i8* %t118, i64 11)
  %t120 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t119)
  %t121 = getelementptr [7 x i8], [7 x i8]* @.str866, i32 0, i32 0
  %t122 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str866.c, i8* %t121, i64 6)
  %t123 = call { i64, i8* }* @nyx_array_new_ptr()
  %t124 = load %Token, %Token* %t37
  %t125 = call %nyx_string* @get_token_value(%Token %t124)
  %t126 = ptrtoint %nyx_string* %t125 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t123, i64 %t126, i64 2)
  %t127 = load { i64, i8* }*, { i64, i8* }** %t93
  %t128 = ptrtoint { i64, i8* }* %t127 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t123, i64 %t128, i64 5)
  %t129 = load { i64, i8* }*, { i64, i8* }** %t39
  %t130 = ptrtoint { i64, i8* }* %t129 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t123, i64 %t130, i64 5)
  %t131 = call { i64, i8* }* @make_astnode(%nyx_string* %t122, { i64, i8* }* %t123)
  store { i64, i8* }* %t131, { i64, i8* }** %t132
  %t133 = load { i64, i8* }*, { i64, i8* }** %t132
  %t134 = load %Token, %Token* %t37
  %t135 = call i64 @get_token_line(%Token %t134)
  call void @nyx_array_set({ i64, i8* }* %t133, i64 2, i64 %t135)
  %t136 = load { i64, i8* }*, { i64, i8* }** %t132
  ret { i64, i8* }* %t136
else16:
  br label %merge17
merge17:
  %t137 = getelementptr [11 x i8], [11 x i8]* @.str867, i32 0, i32 0
  %t138 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str867.c, i8* %t137, i64 10)
  %t139 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t138)
  %t140 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t140, { i64, i8* }** %t141
  store i1 0, i1* %t142
  br label %while_cond27
while_cond27:
  %t143 = load i1, i1* %t142
  %t144 = xor i1 %t143, true
  br i1 %t144, label %while_body28, label %while_end29
while_body28:
  %t145 = getelementptr [12 x i8], [12 x i8]* @.str868, i32 0, i32 0
  %t146 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str868.c, i8* %t145, i64 11)
  %t147 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t146)
  br i1 %t147, label %then30, label %else31
then30:
  %t148 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %t142
  br label %merge32
else31:
  %t149 = load { i64, i8* }*, { i64, i8* }** %t141
  %t150 = call i64 @nyx_array_length({ i64, i8* }* %t149)
  %t151 = icmp sgt i64 %t150, 0
  br i1 %t151, label %then33, label %else34
then33:
  %t152 = getelementptr [6 x i8], [6 x i8]* @.str869, i32 0, i32 0
  %t153 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str869.c, i8* %t152, i64 5)
  %t154 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t153)
  br i1 %t154, label %then36, label %else37
then36:
  %t155 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t156 = getelementptr [12 x i8], [12 x i8]* @.str870, i32 0, i32 0
  %t157 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str870.c, i8* %t156, i64 11)
  %t158 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t157)
  br i1 %t158, label %then39, label %else40
then39:
  %t159 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %t142
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
  %t160 = load i1, i1* %t142
  %t161 = xor i1 %t160, true
  br i1 %t161, label %then42, label %else43
then42:
  %t162 = getelementptr [11 x i8], [11 x i8]* @.str871, i32 0, i32 0
  %t163 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str871.c, i8* %t162, i64 10)
  %t164 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t163)
  store %Token %t164, %Token* %t165
  %t166 = getelementptr [6 x i8], [6 x i8]* @.str872, i32 0, i32 0
  %t167 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str872.c, i8* %t166, i64 5)
  %t168 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t167)
  %t169 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %t169, %nyx_string** %t170
  %t171 = load { i64, i8* }*, { i64, i8* }** %t141
  %t172 = call { i64, i8* }* @nyx_array_new_ptr()
  %t173 = load %Token, %Token* %t165
  %t174 = call %nyx_string* @get_token_value(%Token %t173)
  %t175 = ptrtoint %nyx_string* %t174 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t172, i64 %t175, i64 2)
  %t176 = load %nyx_string*, %nyx_string** %t170
  %t177 = ptrtoint %nyx_string* %t176 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t172, i64 %t177, i64 2)
  %t178 = ptrtoint { i64, i8* }* %t172 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t171, i64 %t178, i64 5)
  br label %merge44
else43:
  br label %merge44
merge44:
  br label %merge32
merge32:
  br label %while_cond27
while_end29:
  %t179 = getelementptr [7 x i8], [7 x i8]* @.str873, i32 0, i32 0
  %t180 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str873.c, i8* %t179, i64 6)
  %t181 = call { i64, i8* }* @nyx_array_new_ptr()
  %t182 = load %Token, %Token* %t37
  %t183 = call %nyx_string* @get_token_value(%Token %t182)
  %t184 = ptrtoint %nyx_string* %t183 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t181, i64 %t184, i64 2)
  %t185 = load { i64, i8* }*, { i64, i8* }** %t141
  %t186 = ptrtoint { i64, i8* }* %t185 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t181, i64 %t186, i64 5)
  %t187 = load { i64, i8* }*, { i64, i8* }** %t39
  %t188 = ptrtoint { i64, i8* }* %t187 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t181, i64 %t188, i64 5)
  %t189 = call { i64, i8* }* @make_astnode(%nyx_string* %t180, { i64, i8* }* %t181)
  store { i64, i8* }* %t189, { i64, i8* }** %t190
  %t191 = load { i64, i8* }*, { i64, i8* }** %t190
  %t192 = load %Token, %Token* %t37
  %t193 = call i64 @get_token_line(%Token %t192)
  call void @nyx_array_set({ i64, i8* }* %t191, i64 2, i64 %t193)
  %t194 = load { i64, i8* }*, { i64, i8* }** %t190
  ret { i64, i8* }* %t194
}

define internal { i64, i8* }* @parse__parse_if(%SharedEnv_parse* %env.param) {
  %t39 = alloca i64
  %t41 = alloca { i64, i8* }*
  %t44 = alloca { i64, i8* }*
  %t49 = alloca { i64, i8* }*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = getelementptr [3 x i8], [3 x i8]* @.str874, i32 0, i32 0
  %t32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str874.c, i8* %t31, i64 2)
  %t33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t32)
  %t34 = getelementptr [4 x i8], [4 x i8]* @.str875, i32 0, i32 0
  %t35 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str875.c, i8* %t34, i64 3)
  %t36 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t35)
  br i1 %t36, label %then0, label %else1
then0:
  %t37 = call { i64, i8* }* @parse__parse_if_let(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %t37
else1:
  br label %merge2
merge2:
  %t38 = load i64, i64* %t6
  store i64 %t38, i64* %t39
  store i64 1, i64* %t6
  %t40 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t40, { i64, i8* }** %t41
  %t42 = load i64, i64* %t39
  store i64 %t42, i64* %t6
  %t43 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t43, { i64, i8* }** %t44
  %t45 = getelementptr [6 x i8], [6 x i8]* @.str876, i32 0, i32 0
  %t46 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str876.c, i8* %t45, i64 5)
  %t47 = call { i64, i8* }* @nyx_array_new_ptr()
  %t48 = call { i64, i8* }* @make_astnode(%nyx_string* %t46, { i64, i8* }* %t47)
  store { i64, i8* }* %t48, { i64, i8* }** %t49
  %t50 = getelementptr [5 x i8], [5 x i8]* @.str877, i32 0, i32 0
  %t51 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str877.c, i8* %t50, i64 4)
  %t52 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t51)
  br i1 %t52, label %then3, label %else4
then3:
  %t53 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t54 = getelementptr [3 x i8], [3 x i8]* @.str878, i32 0, i32 0
  %t55 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str878.c, i8* %t54, i64 2)
  %t56 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t55)
  br i1 %t56, label %then6, label %else7
then6:
  %t57 = call { i64, i8* }* @parse__parse_if(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t57, { i64, i8* }** %t49
  br label %merge8
else7:
  %t58 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t58, { i64, i8* }** %t49
  br label %merge8
merge8:
  br label %merge5
else4:
  br label %merge5
merge5:
  %t59 = getelementptr [3 x i8], [3 x i8]* @.str879, i32 0, i32 0
  %t60 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str879.c, i8* %t59, i64 2)
  %t61 = call { i64, i8* }* @nyx_array_new_ptr()
  %t62 = load { i64, i8* }*, { i64, i8* }** %t41
  %t63 = ptrtoint { i64, i8* }* %t62 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t61, i64 %t63, i64 5)
  %t64 = load { i64, i8* }*, { i64, i8* }** %t44
  %t65 = ptrtoint { i64, i8* }* %t64 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t61, i64 %t65, i64 5)
  %t66 = load { i64, i8* }*, { i64, i8* }** %t49
  %t67 = ptrtoint { i64, i8* }* %t66 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t61, i64 %t67, i64 5)
  %t68 = call { i64, i8* }* @make_astnode(%nyx_string* %t60, { i64, i8* }* %t61)
  ret { i64, i8* }* %t68
}

define internal { i64, i8* }* @parse__parse_if_let(%SharedEnv_parse* %env.param) {
  %t35 = alloca { i64, i8* }*
  %t40 = alloca i64
  %t42 = alloca { i64, i8* }*
  %t45 = alloca { i64, i8* }*
  %t47 = alloca { i64, i8* }*
  %t54 = alloca { i64, i8* }*
  %t76 = alloca { i64, i8* }*
  %t81 = alloca { i64, i8* }*
  %t95 = alloca { i64, i8* }*
  %t97 = alloca { i64, i8* }*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = getelementptr [4 x i8], [4 x i8]* @.str880, i32 0, i32 0
  %t32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str880.c, i8* %t31, i64 3)
  %t33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t32)
  %t34 = call { i64, i8* }* @parse__parse_single_pattern(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t34, { i64, i8* }** %t35
  %t36 = getelementptr [7 x i8], [7 x i8]* @.str881, i32 0, i32 0
  %t37 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str881.c, i8* %t36, i64 6)
  %t38 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t37)
  %t39 = load i64, i64* %t6
  store i64 %t39, i64* %t40
  store i64 1, i64* %t6
  %t41 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t41, { i64, i8* }** %t42
  %t43 = load i64, i64* %t40
  store i64 %t43, i64* %t6
  %t44 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t44, { i64, i8* }** %t45
  %t46 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t46, { i64, i8* }** %t47
  %t48 = getelementptr [6 x i8], [6 x i8]* @.str882, i32 0, i32 0
  %t49 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str882.c, i8* %t48, i64 5)
  %t50 = call { i64, i8* }* @nyx_array_new_ptr()
  %t51 = load { i64, i8* }*, { i64, i8* }** %t47
  %t52 = ptrtoint { i64, i8* }* %t51 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t50, i64 %t52, i64 5)
  %t53 = call { i64, i8* }* @make_astnode(%nyx_string* %t49, { i64, i8* }* %t50)
  store { i64, i8* }* %t53, { i64, i8* }** %t54
  %t55 = getelementptr [5 x i8], [5 x i8]* @.str883, i32 0, i32 0
  %t56 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str883.c, i8* %t55, i64 4)
  %t57 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t56)
  br i1 %t57, label %then0, label %else1
then0:
  %t58 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t59 = getelementptr [11 x i8], [11 x i8]* @.str884, i32 0, i32 0
  %t60 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str884.c, i8* %t59, i64 10)
  %t61 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t60)
  br i1 %t61, label %then3, label %else4
then3:
  %t62 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t62, { i64, i8* }** %t54
  br label %merge5
else4:
  br label %merge5
merge5:
  br label %merge2
else1:
  br label %merge2
merge2:
  %t63 = getelementptr [10 x i8], [10 x i8]* @.str885, i32 0, i32 0
  %t64 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str885.c, i8* %t63, i64 9)
  %t65 = call { i64, i8* }* @nyx_array_new_ptr()
  %t66 = load { i64, i8* }*, { i64, i8* }** %t35
  %t67 = ptrtoint { i64, i8* }* %t66 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t65, i64 %t67, i64 5)
  %t68 = load { i64, i8* }*, { i64, i8* }** %t45
  %t69 = ptrtoint { i64, i8* }* %t68 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t65, i64 %t69, i64 5)
  %t70 = getelementptr [6 x i8], [6 x i8]* @.str886, i32 0, i32 0
  %t71 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str886.c, i8* %t70, i64 5)
  %t72 = call { i64, i8* }* @nyx_array_new_ptr()
  %t73 = call { i64, i8* }* @make_astnode(%nyx_string* %t71, { i64, i8* }* %t72)
  %t74 = ptrtoint { i64, i8* }* %t73 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t65, i64 %t74, i64 5)
  %t75 = call { i64, i8* }* @make_astnode(%nyx_string* %t64, { i64, i8* }* %t65)
  store { i64, i8* }* %t75, { i64, i8* }** %t76
  %t77 = getelementptr [9 x i8], [9 x i8]* @.str887, i32 0, i32 0
  %t78 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str887.c, i8* %t77, i64 8)
  %t79 = call { i64, i8* }* @nyx_array_new_ptr()
  %t80 = call { i64, i8* }* @make_astnode(%nyx_string* %t78, { i64, i8* }* %t79)
  store { i64, i8* }* %t80, { i64, i8* }** %t81
  %t82 = getelementptr [10 x i8], [10 x i8]* @.str888, i32 0, i32 0
  %t83 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str888.c, i8* %t82, i64 9)
  %t84 = call { i64, i8* }* @nyx_array_new_ptr()
  %t85 = load { i64, i8* }*, { i64, i8* }** %t81
  %t86 = ptrtoint { i64, i8* }* %t85 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t84, i64 %t86, i64 5)
  %t87 = load { i64, i8* }*, { i64, i8* }** %t54
  %t88 = ptrtoint { i64, i8* }* %t87 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t84, i64 %t88, i64 5)
  %t89 = getelementptr [6 x i8], [6 x i8]* @.str889, i32 0, i32 0
  %t90 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str889.c, i8* %t89, i64 5)
  %t91 = call { i64, i8* }* @nyx_array_new_ptr()
  %t92 = call { i64, i8* }* @make_astnode(%nyx_string* %t90, { i64, i8* }* %t91)
  %t93 = ptrtoint { i64, i8* }* %t92 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t84, i64 %t93, i64 5)
  %t94 = call { i64, i8* }* @make_astnode(%nyx_string* %t83, { i64, i8* }* %t84)
  store { i64, i8* }* %t94, { i64, i8* }** %t95
  %t96 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t96, { i64, i8* }** %t97
  %t98 = load { i64, i8* }*, { i64, i8* }** %t97
  %t99 = load { i64, i8* }*, { i64, i8* }** %t76
  %t100 = ptrtoint { i64, i8* }* %t99 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t98, i64 %t100, i64 5)
  %t101 = load { i64, i8* }*, { i64, i8* }** %t97
  %t102 = load { i64, i8* }*, { i64, i8* }** %t95
  %t103 = ptrtoint { i64, i8* }* %t102 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t101, i64 %t103, i64 5)
  %t104 = getelementptr [6 x i8], [6 x i8]* @.str890, i32 0, i32 0
  %t105 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str890.c, i8* %t104, i64 5)
  %t106 = call { i64, i8* }* @nyx_array_new_ptr()
  %t107 = load { i64, i8* }*, { i64, i8* }** %t42
  %t108 = ptrtoint { i64, i8* }* %t107 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t106, i64 %t108, i64 5)
  %t109 = load { i64, i8* }*, { i64, i8* }** %t97
  %t110 = ptrtoint { i64, i8* }* %t109 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t106, i64 %t110, i64 5)
  %t111 = call { i64, i8* }* @make_astnode(%nyx_string* %t105, { i64, i8* }* %t106)
  ret { i64, i8* }* %t111
}

define internal { i64, i8* }* @parse__parse_while(%SharedEnv_parse* %env.param) {
  %t39 = alloca i64
  %t41 = alloca { i64, i8* }*
  %t44 = alloca { i64, i8* }*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = getelementptr [6 x i8], [6 x i8]* @.str891, i32 0, i32 0
  %t32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str891.c, i8* %t31, i64 5)
  %t33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t32)
  %t34 = getelementptr [4 x i8], [4 x i8]* @.str892, i32 0, i32 0
  %t35 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str892.c, i8* %t34, i64 3)
  %t36 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t35)
  br i1 %t36, label %then0, label %else1
then0:
  %t37 = call { i64, i8* }* @parse__parse_while_let(%SharedEnv_parse* %env.param)
  ret { i64, i8* }* %t37
else1:
  br label %merge2
merge2:
  %t38 = load i64, i64* %t6
  store i64 %t38, i64* %t39
  store i64 1, i64* %t6
  %t40 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t40, { i64, i8* }** %t41
  %t42 = load i64, i64* %t39
  store i64 %t42, i64* %t6
  %t43 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t43, { i64, i8* }** %t44
  %t45 = getelementptr [6 x i8], [6 x i8]* @.str893, i32 0, i32 0
  %t46 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str893.c, i8* %t45, i64 5)
  %t47 = call { i64, i8* }* @nyx_array_new_ptr()
  %t48 = load { i64, i8* }*, { i64, i8* }** %t41
  %t49 = ptrtoint { i64, i8* }* %t48 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t47, i64 %t49, i64 5)
  %t50 = load { i64, i8* }*, { i64, i8* }** %t44
  %t51 = ptrtoint { i64, i8* }* %t50 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t47, i64 %t51, i64 5)
  %t52 = call { i64, i8* }* @make_astnode(%nyx_string* %t46, { i64, i8* }* %t47)
  ret { i64, i8* }* %t52
}

define internal { i64, i8* }* @parse__parse_while_let(%SharedEnv_parse* %env.param) {
  %t35 = alloca { i64, i8* }*
  %t40 = alloca i64
  %t42 = alloca { i64, i8* }*
  %t45 = alloca { i64, i8* }*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = getelementptr [4 x i8], [4 x i8]* @.str894, i32 0, i32 0
  %t32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str894.c, i8* %t31, i64 3)
  %t33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t32)
  %t34 = call { i64, i8* }* @parse__parse_single_pattern(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t34, { i64, i8* }** %t35
  %t36 = getelementptr [7 x i8], [7 x i8]* @.str895, i32 0, i32 0
  %t37 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str895.c, i8* %t36, i64 6)
  %t38 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t37)
  %t39 = load i64, i64* %t6
  store i64 %t39, i64* %t40
  store i64 1, i64* %t6
  %t41 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t41, { i64, i8* }** %t42
  %t43 = load i64, i64* %t40
  store i64 %t43, i64* %t6
  %t44 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t44, { i64, i8* }** %t45
  %t46 = getelementptr [10 x i8], [10 x i8]* @.str896, i32 0, i32 0
  %t47 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str896.c, i8* %t46, i64 9)
  %t48 = call { i64, i8* }* @nyx_array_new_ptr()
  %t49 = load { i64, i8* }*, { i64, i8* }** %t35
  %t50 = ptrtoint { i64, i8* }* %t49 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t48, i64 %t50, i64 5)
  %t51 = load { i64, i8* }*, { i64, i8* }** %t42
  %t52 = ptrtoint { i64, i8* }* %t51 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t48, i64 %t52, i64 5)
  %t53 = load { i64, i8* }*, { i64, i8* }** %t45
  %t54 = ptrtoint { i64, i8* }* %t53 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t48, i64 %t54, i64 5)
  %t55 = call { i64, i8* }* @make_astnode(%nyx_string* %t47, { i64, i8* }* %t48)
  ret { i64, i8* }* %t55
}

define internal { i64, i8* }* @parse__parse_for(%SharedEnv_parse* %env.param) {
  %t37 = alloca %Token
  %t40 = alloca %nyx_string*
  %t50 = alloca i64
  %t52 = alloca { i64, i8* }*
  %t55 = alloca { i64, i8* }*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = getelementptr [4 x i8], [4 x i8]* @.str897, i32 0, i32 0
  %t32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str897.c, i8* %t31, i64 3)
  %t33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t32)
  %t34 = getelementptr [11 x i8], [11 x i8]* @.str898, i32 0, i32 0
  %t35 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str898.c, i8* %t34, i64 10)
  %t36 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t35)
  store %Token %t36, %Token* %t37
  %t38 = getelementptr [1 x i8], [1 x i8]* @.str899, i32 0, i32 0
  %t39 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str899.c, i8* %t38, i64 0)
  store %nyx_string* %t39, %nyx_string** %t40
  %t41 = getelementptr [6 x i8], [6 x i8]* @.str900, i32 0, i32 0
  %t42 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str900.c, i8* %t41, i64 5)
  %t43 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t42)
  br i1 %t43, label %then0, label %else1
then0:
  %t44 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t45 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %t45, %nyx_string** %t40
  br label %merge2
else1:
  br label %merge2
merge2:
  %t46 = getelementptr [3 x i8], [3 x i8]* @.str901, i32 0, i32 0
  %t47 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str901.c, i8* %t46, i64 2)
  %t48 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t47)
  %t49 = load i64, i64* %t6
  store i64 %t49, i64* %t50
  store i64 1, i64* %t6
  %t51 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t51, { i64, i8* }** %t52
  %t53 = load i64, i64* %t50
  store i64 %t53, i64* %t6
  %t54 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t54, { i64, i8* }** %t55
  %t56 = getelementptr [4 x i8], [4 x i8]* @.str902, i32 0, i32 0
  %t57 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str902.c, i8* %t56, i64 3)
  %t58 = call { i64, i8* }* @nyx_array_new_ptr()
  %t59 = load %Token, %Token* %t37
  %t60 = call %nyx_string* @get_token_value(%Token %t59)
  %t61 = ptrtoint %nyx_string* %t60 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t58, i64 %t61, i64 2)
  %t62 = load { i64, i8* }*, { i64, i8* }** %t52
  %t63 = ptrtoint { i64, i8* }* %t62 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t58, i64 %t63, i64 5)
  %t64 = load { i64, i8* }*, { i64, i8* }** %t55
  %t65 = ptrtoint { i64, i8* }* %t64 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t58, i64 %t65, i64 5)
  %t66 = load %nyx_string*, %nyx_string** %t40
  %t67 = ptrtoint %nyx_string* %t66 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t58, i64 %t67, i64 2)
  %t68 = call { i64, i8* }* @make_astnode(%nyx_string* %t57, { i64, i8* }* %t58)
  ret { i64, i8* }* %t68
}

define internal { i64, i8* }* @parse__parse_return(%SharedEnv_parse* %env.param) {
  %t34 = alloca i1
  %t35 = alloca i1
  %t36 = alloca i1
  %t37 = alloca i1
  %t38 = alloca i1
  %t39 = alloca i1
  %t71 = alloca { i64, i8* }*
  %t79 = alloca { i64, i8* }*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = getelementptr [7 x i8], [7 x i8]* @.str903, i32 0, i32 0
  %t32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str903.c, i8* %t31, i64 6)
  %t33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t32)
  store i1 true, i1* %t34
  store i1 true, i1* %t35
  store i1 true, i1* %t36
  store i1 true, i1* %t37
  store i1 true, i1* %t38
  store i1 true, i1* %t39
  %t40 = getelementptr [12 x i8], [12 x i8]* @.str904, i32 0, i32 0
  %t41 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str904.c, i8* %t40, i64 11)
  %t42 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t41)
  br i1 %t42, label %sc_or_end1, label %sc_or_rhs0
sc_or_rhs0:
  %t43 = getelementptr [4 x i8], [4 x i8]* @.str905, i32 0, i32 0
  %t44 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str905.c, i8* %t43, i64 3)
  %t45 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t44)
  store i1 %t45, i1* %t39
  br label %sc_or_end1
sc_or_end1:
  %t46 = load i1, i1* %t39
  br i1 %t46, label %sc_or_end3, label %sc_or_rhs2
sc_or_rhs2:
  %t47 = getelementptr [4 x i8], [4 x i8]* @.str906, i32 0, i32 0
  %t48 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str906.c, i8* %t47, i64 3)
  %t49 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t48)
  store i1 %t49, i1* %t38
  br label %sc_or_end3
sc_or_end3:
  %t50 = load i1, i1* %t38
  br i1 %t50, label %sc_or_end5, label %sc_or_rhs4
sc_or_rhs4:
  %t51 = getelementptr [4 x i8], [4 x i8]* @.str907, i32 0, i32 0
  %t52 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str907.c, i8* %t51, i64 3)
  %t53 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t52)
  store i1 %t53, i1* %t37
  br label %sc_or_end5
sc_or_end5:
  %t54 = load i1, i1* %t37
  br i1 %t54, label %sc_or_end7, label %sc_or_rhs6
sc_or_rhs6:
  %t55 = getelementptr [6 x i8], [6 x i8]* @.str908, i32 0, i32 0
  %t56 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str908.c, i8* %t55, i64 5)
  %t57 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t56)
  store i1 %t57, i1* %t36
  br label %sc_or_end7
sc_or_end7:
  %t58 = load i1, i1* %t36
  br i1 %t58, label %sc_or_end9, label %sc_or_rhs8
sc_or_rhs8:
  %t59 = getelementptr [4 x i8], [4 x i8]* @.str909, i32 0, i32 0
  %t60 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str909.c, i8* %t59, i64 3)
  %t61 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t60)
  store i1 %t61, i1* %t35
  br label %sc_or_end9
sc_or_end9:
  %t62 = load i1, i1* %t35
  br i1 %t62, label %sc_or_end11, label %sc_or_rhs10
sc_or_rhs10:
  %t63 = getelementptr [7 x i8], [7 x i8]* @.str910, i32 0, i32 0
  %t64 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str910.c, i8* %t63, i64 6)
  %t65 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t64)
  store i1 %t65, i1* %t34
  br label %sc_or_end11
sc_or_end11:
  %t66 = load i1, i1* %t34
  br i1 %t66, label %then12, label %else13
then12:
  %t67 = getelementptr [8 x i8], [8 x i8]* @.str911, i32 0, i32 0
  %t68 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str911.c, i8* %t67, i64 7)
  %t69 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push_tagged({ i64, i8* }* %t69, i64 0, i64 1)
  %t70 = call { i64, i8* }* @make_astnode(%nyx_string* %t68, { i64, i8* }* %t69)
  store { i64, i8* }* %t70, { i64, i8* }** %t71
  %t72 = getelementptr [7 x i8], [7 x i8]* @.str912, i32 0, i32 0
  %t73 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str912.c, i8* %t72, i64 6)
  %t74 = call { i64, i8* }* @nyx_array_new_ptr()
  %t75 = load { i64, i8* }*, { i64, i8* }** %t71
  %t76 = ptrtoint { i64, i8* }* %t75 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t74, i64 %t76, i64 5)
  %t77 = call { i64, i8* }* @make_astnode(%nyx_string* %t73, { i64, i8* }* %t74)
  ret { i64, i8* }* %t77
else13:
  br label %merge14
merge14:
  %t78 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t78, { i64, i8* }** %t79
  %t80 = getelementptr [7 x i8], [7 x i8]* @.str913, i32 0, i32 0
  %t81 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str913.c, i8* %t80, i64 6)
  %t82 = call { i64, i8* }* @nyx_array_new_ptr()
  %t83 = load { i64, i8* }*, { i64, i8* }** %t79
  %t84 = ptrtoint { i64, i8* }* %t83 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t82, i64 %t84, i64 5)
  %t85 = call { i64, i8* }* @make_astnode(%nyx_string* %t81, { i64, i8* }* %t82)
  ret { i64, i8* }* %t85
}

define internal { i64, i8* }* @parse__parse_export(%SharedEnv_parse* %env.param) {
  %t38 = alloca { i64, i8* }*
  %t50 = alloca { i64, i8* }*
  %t61 = alloca { i64, i8* }*
  %t72 = alloca { i64, i8* }*
  %t83 = alloca { i64, i8* }*
  %t99 = alloca { i64, i8* }*
  %t107 = alloca %Token
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = getelementptr [7 x i8], [7 x i8]* @.str914, i32 0, i32 0
  %t32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str914.c, i8* %t31, i64 6)
  %t33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t32)
  %t34 = getelementptr [3 x i8], [3 x i8]* @.str915, i32 0, i32 0
  %t35 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str915.c, i8* %t34, i64 2)
  %t36 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t35)
  br i1 %t36, label %then0, label %else1
then0:
  %t37 = call { i64, i8* }* @parse__parse_function(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t37, { i64, i8* }** %t38
  %t39 = getelementptr [7 x i8], [7 x i8]* @.str916, i32 0, i32 0
  %t40 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str916.c, i8* %t39, i64 6)
  %t41 = call { i64, i8* }* @nyx_array_new_ptr()
  %t42 = load { i64, i8* }*, { i64, i8* }** %t38
  %t43 = ptrtoint { i64, i8* }* %t42 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t41, i64 %t43, i64 5)
  %t44 = call { i64, i8* }* @make_astnode(%nyx_string* %t40, { i64, i8* }* %t41)
  ret { i64, i8* }* %t44
else1:
  br label %merge2
merge2:
  %t45 = getelementptr [6 x i8], [6 x i8]* @.str917, i32 0, i32 0
  %t46 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str917.c, i8* %t45, i64 5)
  %t47 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t46)
  br i1 %t47, label %then3, label %else4
then3:
  %t48 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t49 = call { i64, i8* }* @parse__parse_async_function(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t49, { i64, i8* }** %t50
  %t51 = getelementptr [7 x i8], [7 x i8]* @.str918, i32 0, i32 0
  %t52 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str918.c, i8* %t51, i64 6)
  %t53 = call { i64, i8* }* @nyx_array_new_ptr()
  %t54 = load { i64, i8* }*, { i64, i8* }** %t50
  %t55 = ptrtoint { i64, i8* }* %t54 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t53, i64 %t55, i64 5)
  %t56 = call { i64, i8* }* @make_astnode(%nyx_string* %t52, { i64, i8* }* %t53)
  ret { i64, i8* }* %t56
else4:
  br label %merge5
merge5:
  %t57 = getelementptr [7 x i8], [7 x i8]* @.str919, i32 0, i32 0
  %t58 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str919.c, i8* %t57, i64 6)
  %t59 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t58)
  br i1 %t59, label %then6, label %else7
then6:
  %t60 = call { i64, i8* }* @parse__parse_struct(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t60, { i64, i8* }** %t61
  %t62 = getelementptr [7 x i8], [7 x i8]* @.str920, i32 0, i32 0
  %t63 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str920.c, i8* %t62, i64 6)
  %t64 = call { i64, i8* }* @nyx_array_new_ptr()
  %t65 = load { i64, i8* }*, { i64, i8* }** %t61
  %t66 = ptrtoint { i64, i8* }* %t65 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t64, i64 %t66, i64 5)
  %t67 = call { i64, i8* }* @make_astnode(%nyx_string* %t63, { i64, i8* }* %t64)
  ret { i64, i8* }* %t67
else7:
  br label %merge8
merge8:
  %t68 = getelementptr [5 x i8], [5 x i8]* @.str921, i32 0, i32 0
  %t69 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str921.c, i8* %t68, i64 4)
  %t70 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t69)
  br i1 %t70, label %then9, label %else10
then9:
  %t71 = call { i64, i8* }* @parse__parse_enum(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t71, { i64, i8* }** %t72
  %t73 = getelementptr [7 x i8], [7 x i8]* @.str922, i32 0, i32 0
  %t74 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str922.c, i8* %t73, i64 6)
  %t75 = call { i64, i8* }* @nyx_array_new_ptr()
  %t76 = load { i64, i8* }*, { i64, i8* }** %t72
  %t77 = ptrtoint { i64, i8* }* %t76 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t75, i64 %t77, i64 5)
  %t78 = call { i64, i8* }* @make_astnode(%nyx_string* %t74, { i64, i8* }* %t75)
  ret { i64, i8* }* %t78
else10:
  br label %merge11
merge11:
  %t79 = getelementptr [6 x i8], [6 x i8]* @.str923, i32 0, i32 0
  %t80 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str923.c, i8* %t79, i64 5)
  %t81 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t80)
  br i1 %t81, label %then12, label %else13
then12:
  %t82 = call { i64, i8* }* @parse__parse_trait(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t82, { i64, i8* }** %t83
  %t84 = getelementptr [7 x i8], [7 x i8]* @.str924, i32 0, i32 0
  %t85 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str924.c, i8* %t84, i64 6)
  %t86 = call { i64, i8* }* @nyx_array_new_ptr()
  %t87 = load { i64, i8* }*, { i64, i8* }** %t83
  %t88 = ptrtoint { i64, i8* }* %t87 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t86, i64 %t88, i64 5)
  %t89 = call { i64, i8* }* @make_astnode(%nyx_string* %t85, { i64, i8* }* %t86)
  ret { i64, i8* }* %t89
else13:
  br label %merge14
merge14:
  %t90 = getelementptr [11 x i8], [11 x i8]* @.str925, i32 0, i32 0
  %t91 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str925.c, i8* %t90, i64 10)
  %t92 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t91)
  br i1 %t92, label %then15, label %else16
then15:
  %t93 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %t94 = call %nyx_string* @get_token_value(%Token %t93)
  %t95 = getelementptr [5 x i8], [5 x i8]* @.str926, i32 0, i32 0
  %t96 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str926.c, i8* %t95, i64 4)
  %t97 = call i1 @nyx_string_equals(%nyx_string* %t94, %nyx_string* %t96)
  br i1 %t97, label %then18, label %else19
then18:
  %t98 = call { i64, i8* }* @parse__parse_type_alias(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t98, { i64, i8* }** %t99
  %t100 = getelementptr [7 x i8], [7 x i8]* @.str927, i32 0, i32 0
  %t101 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str927.c, i8* %t100, i64 6)
  %t102 = call { i64, i8* }* @nyx_array_new_ptr()
  %t103 = load { i64, i8* }*, { i64, i8* }** %t99
  %t104 = ptrtoint { i64, i8* }* %t103 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t102, i64 %t104, i64 5)
  %t105 = call { i64, i8* }* @make_astnode(%nyx_string* %t101, { i64, i8* }* %t102)
  ret { i64, i8* }* %t105
else19:
  br label %merge20
merge20:
  br label %merge17
else16:
  br label %merge17
merge17:
  %t106 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  store %Token %t106, %Token* %t107
  %t108 = getelementptr [8 x i8], [8 x i8]* @.str928, i32 0, i32 0
  %t109 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str928.c, i8* %t108, i64 7)
  %t110 = load %Token, %Token* %t107
  %t111 = call i64 @get_token_line(%Token %t110)
  %t112 = load %Token, %Token* %t107
  %t113 = call i64 @get_token_column(%Token %t112)
  %t114 = getelementptr [58 x i8], [58 x i8]* @.str929, i32 0, i32 0
  %t115 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str929.c, i8* %t114, i64 57)
  %t116 = getelementptr [56 x i8], [56 x i8]* @.str930, i32 0, i32 0
  %t117 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str930.c, i8* %t116, i64 55)
  %t118 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %t115, %nyx_string* %t117)
  %t119 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %t109, i64 %t111, i64 %t113, %nyx_string* %t118)
  %t120 = getelementptr [6 x i8], [6 x i8]* @.str931, i32 0, i32 0
  %t121 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str931.c, i8* %t120, i64 5)
  %t122 = call { i64, i8* }* @nyx_array_new_ptr()
  %t123 = call { i64, i8* }* @make_astnode(%nyx_string* %t121, { i64, i8* }* %t122)
  ret { i64, i8* }* %t123
}

define internal { i64, i8* }* @parse__parse_import(%SharedEnv_parse* %env.param) {
  %t40 = alloca %Token
  %t43 = alloca %nyx_string*
  %t46 = alloca %nyx_string*
  %t54 = alloca %Token
  %t69 = alloca { i64, i8* }*
  %t70 = alloca i1
  %t76 = alloca %Token
  %t79 = alloca %nyx_string*
  %t96 = alloca %Token
  %t99 = alloca %nyx_string*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = getelementptr [7 x i8], [7 x i8]* @.str932, i32 0, i32 0
  %t32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str932.c, i8* %t31, i64 6)
  %t33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t32)
  %t34 = getelementptr [7 x i8], [7 x i8]* @.str933, i32 0, i32 0
  %t35 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str933.c, i8* %t34, i64 6)
  %t36 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t35)
  br i1 %t36, label %then0, label %else1
then0:
  %t37 = getelementptr [7 x i8], [7 x i8]* @.str934, i32 0, i32 0
  %t38 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str934.c, i8* %t37, i64 6)
  %t39 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t38)
  store %Token %t39, %Token* %t40
  %t41 = load %Token, %Token* %t40
  %t42 = call %nyx_string* @get_token_value(%Token %t41)
  store %nyx_string* %t42, %nyx_string** %t43
  %t44 = getelementptr [1 x i8], [1 x i8]* @.str935, i32 0, i32 0
  %t45 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str935.c, i8* %t44, i64 0)
  store %nyx_string* %t45, %nyx_string** %t46
  %t47 = getelementptr [3 x i8], [3 x i8]* @.str936, i32 0, i32 0
  %t48 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str936.c, i8* %t47, i64 2)
  %t49 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t48)
  br i1 %t49, label %then3, label %else4
then3:
  %t50 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t51 = getelementptr [11 x i8], [11 x i8]* @.str937, i32 0, i32 0
  %t52 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str937.c, i8* %t51, i64 10)
  %t53 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t52)
  store %Token %t53, %Token* %t54
  %t55 = load %Token, %Token* %t54
  %t56 = call %nyx_string* @get_token_value(%Token %t55)
  store %nyx_string* %t56, %nyx_string** %t46
  br label %merge5
else4:
  br label %merge5
merge5:
  %t57 = getelementptr [14 x i8], [14 x i8]* @.str938, i32 0, i32 0
  %t58 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str938.c, i8* %t57, i64 13)
  %t59 = call { i64, i8* }* @nyx_array_new_ptr()
  %t60 = load %nyx_string*, %nyx_string** %t43
  %t61 = ptrtoint %nyx_string* %t60 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t59, i64 %t61, i64 2)
  %t62 = load %nyx_string*, %nyx_string** %t46
  %t63 = ptrtoint %nyx_string* %t62 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t59, i64 %t63, i64 2)
  %t64 = call { i64, i8* }* @make_astnode(%nyx_string* %t58, { i64, i8* }* %t59)
  ret { i64, i8* }* %t64
else1:
  br label %merge2
merge2:
  %t65 = getelementptr [11 x i8], [11 x i8]* @.str939, i32 0, i32 0
  %t66 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str939.c, i8* %t65, i64 10)
  %t67 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t66)
  %t68 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t68, { i64, i8* }** %t69
  store i1 0, i1* %t70
  br label %while_cond6
while_cond6:
  %t71 = load i1, i1* %t70
  %t72 = xor i1 %t71, true
  br i1 %t72, label %while_body7, label %while_end8
while_body7:
  %t73 = getelementptr [11 x i8], [11 x i8]* @.str940, i32 0, i32 0
  %t74 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str940.c, i8* %t73, i64 10)
  %t75 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t74)
  store %Token %t75, %Token* %t76
  %t77 = load %Token, %Token* %t76
  %t78 = call %nyx_string* @get_token_value(%Token %t77)
  store %nyx_string* %t78, %nyx_string** %t79
  %t80 = load { i64, i8* }*, { i64, i8* }** %t69
  %t81 = load %nyx_string*, %nyx_string** %t79
  %t82 = ptrtoint %nyx_string* %t81 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t80, i64 %t82, i64 2)
  %t83 = getelementptr [6 x i8], [6 x i8]* @.str941, i32 0, i32 0
  %t84 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str941.c, i8* %t83, i64 5)
  %t85 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t84)
  br i1 %t85, label %then9, label %else10
then9:
  %t86 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge11
else10:
  store i1 1, i1* %t70
  br label %merge11
merge11:
  br label %while_cond6
while_end8:
  %t87 = getelementptr [12 x i8], [12 x i8]* @.str942, i32 0, i32 0
  %t88 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str942.c, i8* %t87, i64 11)
  %t89 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t88)
  %t90 = getelementptr [5 x i8], [5 x i8]* @.str943, i32 0, i32 0
  %t91 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str943.c, i8* %t90, i64 4)
  %t92 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t91)
  %t93 = getelementptr [7 x i8], [7 x i8]* @.str944, i32 0, i32 0
  %t94 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str944.c, i8* %t93, i64 6)
  %t95 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t94)
  store %Token %t95, %Token* %t96
  %t97 = load %Token, %Token* %t96
  %t98 = call %nyx_string* @get_token_value(%Token %t97)
  store %nyx_string* %t98, %nyx_string** %t99
  %t100 = getelementptr [7 x i8], [7 x i8]* @.str945, i32 0, i32 0
  %t101 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str945.c, i8* %t100, i64 6)
  %t102 = call { i64, i8* }* @nyx_array_new_ptr()
  %t103 = load { i64, i8* }*, { i64, i8* }** %t69
  %t104 = ptrtoint { i64, i8* }* %t103 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t102, i64 %t104, i64 5)
  %t105 = load %nyx_string*, %nyx_string** %t99
  %t106 = ptrtoint %nyx_string* %t105 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t102, i64 %t106, i64 2)
  %t107 = call { i64, i8* }* @make_astnode(%nyx_string* %t101, { i64, i8* }* %t102)
  ret { i64, i8* }* %t107
}

define internal { i64, i8* }* @parse__parse_pub(%SharedEnv_parse* %env.param) {
  %t38 = alloca { i64, i8* }*
  %t50 = alloca { i64, i8* }*
  %t61 = alloca { i64, i8* }*
  %t72 = alloca { i64, i8* }*
  %t83 = alloca { i64, i8* }*
  %t99 = alloca { i64, i8* }*
  %t107 = alloca %Token
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = getelementptr [4 x i8], [4 x i8]* @.str946, i32 0, i32 0
  %t32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str946.c, i8* %t31, i64 3)
  %t33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t32)
  %t34 = getelementptr [3 x i8], [3 x i8]* @.str947, i32 0, i32 0
  %t35 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str947.c, i8* %t34, i64 2)
  %t36 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t35)
  br i1 %t36, label %then0, label %else1
then0:
  %t37 = call { i64, i8* }* @parse__parse_function(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t37, { i64, i8* }** %t38
  %t39 = getelementptr [7 x i8], [7 x i8]* @.str948, i32 0, i32 0
  %t40 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str948.c, i8* %t39, i64 6)
  %t41 = call { i64, i8* }* @nyx_array_new_ptr()
  %t42 = load { i64, i8* }*, { i64, i8* }** %t38
  %t43 = ptrtoint { i64, i8* }* %t42 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t41, i64 %t43, i64 5)
  %t44 = call { i64, i8* }* @make_astnode(%nyx_string* %t40, { i64, i8* }* %t41)
  ret { i64, i8* }* %t44
else1:
  br label %merge2
merge2:
  %t45 = getelementptr [6 x i8], [6 x i8]* @.str949, i32 0, i32 0
  %t46 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str949.c, i8* %t45, i64 5)
  %t47 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t46)
  br i1 %t47, label %then3, label %else4
then3:
  %t48 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t49 = call { i64, i8* }* @parse__parse_async_function(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t49, { i64, i8* }** %t50
  %t51 = getelementptr [7 x i8], [7 x i8]* @.str950, i32 0, i32 0
  %t52 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str950.c, i8* %t51, i64 6)
  %t53 = call { i64, i8* }* @nyx_array_new_ptr()
  %t54 = load { i64, i8* }*, { i64, i8* }** %t50
  %t55 = ptrtoint { i64, i8* }* %t54 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t53, i64 %t55, i64 5)
  %t56 = call { i64, i8* }* @make_astnode(%nyx_string* %t52, { i64, i8* }* %t53)
  ret { i64, i8* }* %t56
else4:
  br label %merge5
merge5:
  %t57 = getelementptr [7 x i8], [7 x i8]* @.str951, i32 0, i32 0
  %t58 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str951.c, i8* %t57, i64 6)
  %t59 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t58)
  br i1 %t59, label %then6, label %else7
then6:
  %t60 = call { i64, i8* }* @parse__parse_struct(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t60, { i64, i8* }** %t61
  %t62 = getelementptr [7 x i8], [7 x i8]* @.str952, i32 0, i32 0
  %t63 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str952.c, i8* %t62, i64 6)
  %t64 = call { i64, i8* }* @nyx_array_new_ptr()
  %t65 = load { i64, i8* }*, { i64, i8* }** %t61
  %t66 = ptrtoint { i64, i8* }* %t65 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t64, i64 %t66, i64 5)
  %t67 = call { i64, i8* }* @make_astnode(%nyx_string* %t63, { i64, i8* }* %t64)
  ret { i64, i8* }* %t67
else7:
  br label %merge8
merge8:
  %t68 = getelementptr [5 x i8], [5 x i8]* @.str953, i32 0, i32 0
  %t69 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str953.c, i8* %t68, i64 4)
  %t70 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t69)
  br i1 %t70, label %then9, label %else10
then9:
  %t71 = call { i64, i8* }* @parse__parse_enum(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t71, { i64, i8* }** %t72
  %t73 = getelementptr [7 x i8], [7 x i8]* @.str954, i32 0, i32 0
  %t74 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str954.c, i8* %t73, i64 6)
  %t75 = call { i64, i8* }* @nyx_array_new_ptr()
  %t76 = load { i64, i8* }*, { i64, i8* }** %t72
  %t77 = ptrtoint { i64, i8* }* %t76 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t75, i64 %t77, i64 5)
  %t78 = call { i64, i8* }* @make_astnode(%nyx_string* %t74, { i64, i8* }* %t75)
  ret { i64, i8* }* %t78
else10:
  br label %merge11
merge11:
  %t79 = getelementptr [6 x i8], [6 x i8]* @.str955, i32 0, i32 0
  %t80 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str955.c, i8* %t79, i64 5)
  %t81 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t80)
  br i1 %t81, label %then12, label %else13
then12:
  %t82 = call { i64, i8* }* @parse__parse_trait(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t82, { i64, i8* }** %t83
  %t84 = getelementptr [7 x i8], [7 x i8]* @.str956, i32 0, i32 0
  %t85 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str956.c, i8* %t84, i64 6)
  %t86 = call { i64, i8* }* @nyx_array_new_ptr()
  %t87 = load { i64, i8* }*, { i64, i8* }** %t83
  %t88 = ptrtoint { i64, i8* }* %t87 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t86, i64 %t88, i64 5)
  %t89 = call { i64, i8* }* @make_astnode(%nyx_string* %t85, { i64, i8* }* %t86)
  ret { i64, i8* }* %t89
else13:
  br label %merge14
merge14:
  %t90 = getelementptr [11 x i8], [11 x i8]* @.str957, i32 0, i32 0
  %t91 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str957.c, i8* %t90, i64 10)
  %t92 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t91)
  br i1 %t92, label %then15, label %else16
then15:
  %t93 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %t94 = call %nyx_string* @get_token_value(%Token %t93)
  %t95 = getelementptr [5 x i8], [5 x i8]* @.str958, i32 0, i32 0
  %t96 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str958.c, i8* %t95, i64 4)
  %t97 = call i1 @nyx_string_equals(%nyx_string* %t94, %nyx_string* %t96)
  br i1 %t97, label %then18, label %else19
then18:
  %t98 = call { i64, i8* }* @parse__parse_type_alias(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t98, { i64, i8* }** %t99
  %t100 = getelementptr [7 x i8], [7 x i8]* @.str959, i32 0, i32 0
  %t101 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str959.c, i8* %t100, i64 6)
  %t102 = call { i64, i8* }* @nyx_array_new_ptr()
  %t103 = load { i64, i8* }*, { i64, i8* }** %t99
  %t104 = ptrtoint { i64, i8* }* %t103 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t102, i64 %t104, i64 5)
  %t105 = call { i64, i8* }* @make_astnode(%nyx_string* %t101, { i64, i8* }* %t102)
  ret { i64, i8* }* %t105
else19:
  br label %merge20
merge20:
  br label %merge17
else16:
  br label %merge17
merge17:
  %t106 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  store %Token %t106, %Token* %t107
  %t108 = getelementptr [8 x i8], [8 x i8]* @.str960, i32 0, i32 0
  %t109 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str960.c, i8* %t108, i64 7)
  %t110 = load %Token, %Token* %t107
  %t111 = call i64 @get_token_line(%Token %t110)
  %t112 = load %Token, %Token* %t107
  %t113 = call i64 @get_token_column(%Token %t112)
  %t114 = getelementptr [55 x i8], [55 x i8]* @.str961, i32 0, i32 0
  %t115 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str961.c, i8* %t114, i64 54)
  %t116 = getelementptr [53 x i8], [53 x i8]* @.str962, i32 0, i32 0
  %t117 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str962.c, i8* %t116, i64 52)
  %t118 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %t115, %nyx_string* %t117)
  %t119 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %t109, i64 %t111, i64 %t113, %nyx_string* %t118)
  %t120 = getelementptr [6 x i8], [6 x i8]* @.str963, i32 0, i32 0
  %t121 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str963.c, i8* %t120, i64 5)
  %t122 = call { i64, i8* }* @nyx_array_new_ptr()
  %t123 = call { i64, i8* }* @make_astnode(%nyx_string* %t121, { i64, i8* }* %t122)
  ret { i64, i8* }* %t123
}

define internal { i64, i8* }* @parse__parse_module_decl(%SharedEnv_parse* %env.param) {
  %t37 = alloca %Token
  %t40 = alloca %nyx_string*
  %t46 = alloca %nyx_string*
  %t51 = alloca %Token
  %t58 = alloca { i64, i8* }*
  %t59 = alloca i1
  %t68 = alloca %Token
  %t71 = alloca %nyx_string*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = getelementptr [7 x i8], [7 x i8]* @.str964, i32 0, i32 0
  %t32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str964.c, i8* %t31, i64 6)
  %t33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t32)
  %t34 = getelementptr [11 x i8], [11 x i8]* @.str965, i32 0, i32 0
  %t35 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str965.c, i8* %t34, i64 10)
  %t36 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t35)
  store %Token %t36, %Token* %t37
  %t38 = load %Token, %Token* %t37
  %t39 = call %nyx_string* @get_token_value(%Token %t38)
  store %nyx_string* %t39, %nyx_string** %t40
  %t41 = getelementptr [7 x i8], [7 x i8]* @.str966, i32 0, i32 0
  %t42 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str966.c, i8* %t41, i64 6)
  %t43 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t42)
  %t44 = getelementptr [1 x i8], [1 x i8]* @.str967, i32 0, i32 0
  %t45 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str967.c, i8* %t44, i64 0)
  store %nyx_string* %t45, %nyx_string** %t46
  %t47 = getelementptr [7 x i8], [7 x i8]* @.str968, i32 0, i32 0
  %t48 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str968.c, i8* %t47, i64 6)
  %t49 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t48)
  br i1 %t49, label %then0, label %else1
then0:
  %t50 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store %Token %t50, %Token* %t51
  %t52 = load %Token, %Token* %t51
  %t53 = call %nyx_string* @get_token_value(%Token %t52)
  store %nyx_string* %t53, %nyx_string** %t46
  br label %merge2
else1:
  br label %merge2
merge2:
  %t54 = getelementptr [13 x i8], [13 x i8]* @.str969, i32 0, i32 0
  %t55 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str969.c, i8* %t54, i64 12)
  %t56 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t55)
  %t57 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t57, { i64, i8* }** %t58
  store i1 0, i1* %t59
  br label %while_cond3
while_cond3:
  %t60 = load i1, i1* %t59
  %t61 = xor i1 %t60, true
  br i1 %t61, label %while_body4, label %while_end5
while_body4:
  %t62 = getelementptr [14 x i8], [14 x i8]* @.str970, i32 0, i32 0
  %t63 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str970.c, i8* %t62, i64 13)
  %t64 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t63)
  br i1 %t64, label %then6, label %else7
then6:
  store i1 1, i1* %t59
  br label %merge8
else7:
  %t65 = getelementptr [11 x i8], [11 x i8]* @.str971, i32 0, i32 0
  %t66 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str971.c, i8* %t65, i64 10)
  %t67 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t66)
  store %Token %t67, %Token* %t68
  %t69 = load %Token, %Token* %t68
  %t70 = call %nyx_string* @get_token_value(%Token %t69)
  store %nyx_string* %t70, %nyx_string** %t71
  %t72 = load { i64, i8* }*, { i64, i8* }** %t58
  %t73 = load %nyx_string*, %nyx_string** %t71
  %t74 = ptrtoint %nyx_string* %t73 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t72, i64 %t74, i64 2)
  %t75 = getelementptr [6 x i8], [6 x i8]* @.str972, i32 0, i32 0
  %t76 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str972.c, i8* %t75, i64 5)
  %t77 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t76)
  br i1 %t77, label %then9, label %else10
then9:
  %t78 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge11
else10:
  br label %merge11
merge11:
  br label %merge8
merge8:
  br label %while_cond3
while_end5:
  %t79 = getelementptr [14 x i8], [14 x i8]* @.str973, i32 0, i32 0
  %t80 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str973.c, i8* %t79, i64 13)
  %t81 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t80)
  %t82 = getelementptr [12 x i8], [12 x i8]* @.str974, i32 0, i32 0
  %t83 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str974.c, i8* %t82, i64 11)
  %t84 = call { i64, i8* }* @nyx_array_new_ptr()
  %t85 = load %nyx_string*, %nyx_string** %t40
  %t86 = ptrtoint %nyx_string* %t85 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t84, i64 %t86, i64 2)
  %t87 = load { i64, i8* }*, { i64, i8* }** %t58
  %t88 = ptrtoint { i64, i8* }* %t87 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t84, i64 %t88, i64 5)
  %t89 = load %nyx_string*, %nyx_string** %t46
  %t90 = ptrtoint %nyx_string* %t89 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t84, i64 %t90, i64 2)
  %t91 = call { i64, i8* }* @make_astnode(%nyx_string* %t83, { i64, i8* }* %t84)
  ret { i64, i8* }* %t91
}

define internal { i64, i8* }* @parse__parse_trait(%SharedEnv_parse* %env.param) {
  %t37 = alloca %Token
  %t40 = alloca %nyx_string*
  %t45 = alloca i1
  %t70 = alloca { i64, i8* }*
  %t75 = alloca i1
  %t80 = alloca %Token
  %t83 = alloca %nyx_string*
  %t95 = alloca { i64, i8* }*
  %t96 = alloca i1
  %t103 = alloca i1
  %t108 = alloca %Token
  %t118 = alloca %Token
  %t121 = alloca %nyx_string*
  %t123 = alloca { i64, i8* }*
  %t128 = alloca i1
  %t139 = alloca %Token
  %t148 = alloca %Token
  %t176 = alloca %Token
  %t179 = alloca %nyx_string*
  %t184 = alloca i1
  %t196 = alloca { i64, i8* }*
  %t197 = alloca i1
  %t213 = alloca %Token
  %t216 = alloca %nyx_string*
  %t219 = alloca %nyx_string*
  %t234 = alloca %nyx_string*
  %t244 = alloca { i64, i8* }*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = getelementptr [6 x i8], [6 x i8]* @.str975, i32 0, i32 0
  %t32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str975.c, i8* %t31, i64 5)
  %t33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t32)
  %t34 = getelementptr [11 x i8], [11 x i8]* @.str976, i32 0, i32 0
  %t35 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str976.c, i8* %t34, i64 10)
  %t36 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t35)
  store %Token %t36, %Token* %t37
  %t38 = load %Token, %Token* %t37
  %t39 = call %nyx_string* @get_token_value(%Token %t38)
  store %nyx_string* %t39, %nyx_string** %t40
  %t41 = getelementptr [5 x i8], [5 x i8]* @.str977, i32 0, i32 0
  %t42 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str977.c, i8* %t41, i64 4)
  %t43 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t42)
  br i1 %t43, label %then0, label %else1
then0:
  %t44 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 0, i1* %t45
  br label %while_cond3
while_cond3:
  %t46 = load i1, i1* %t45
  %t47 = xor i1 %t46, true
  br i1 %t47, label %while_body4, label %while_end5
while_body4:
  %t48 = getelementptr [8 x i8], [8 x i8]* @.str978, i32 0, i32 0
  %t49 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str978.c, i8* %t48, i64 7)
  %t50 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t49)
  br i1 %t50, label %then6, label %else7
then6:
  %t51 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %t45
  br label %merge8
else7:
  %t52 = getelementptr [9 x i8], [9 x i8]* @.str979, i32 0, i32 0
  %t53 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str979.c, i8* %t52, i64 8)
  %t54 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t53)
  br i1 %t54, label %then9, label %else10
then9:
  %t55 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge11
else10:
  %t56 = getelementptr [11 x i8], [11 x i8]* @.str980, i32 0, i32 0
  %t57 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str980.c, i8* %t56, i64 10)
  %t58 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t57)
  br i1 %t58, label %then12, label %else13
then12:
  %t59 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge14
else13:
  %t60 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge14
merge14:
  br label %merge11
merge11:
  %t61 = getelementptr [6 x i8], [6 x i8]* @.str981, i32 0, i32 0
  %t62 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str981.c, i8* %t61, i64 5)
  %t63 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t62)
  br i1 %t63, label %then15, label %else16
then15:
  %t64 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge17
else16:
  %t65 = getelementptr [8 x i8], [8 x i8]* @.str982, i32 0, i32 0
  %t66 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str982.c, i8* %t65, i64 7)
  %t67 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t66)
  %t68 = xor i1 %t67, true
  br i1 %t68, label %then18, label %else19
then18:
  store i1 1, i1* %t45
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
  %t69 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t69, { i64, i8* }** %t70
  %t71 = getelementptr [6 x i8], [6 x i8]* @.str983, i32 0, i32 0
  %t72 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str983.c, i8* %t71, i64 5)
  %t73 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t72)
  br i1 %t73, label %then21, label %else22
then21:
  %t74 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %t75
  br label %while_cond24
while_cond24:
  %t76 = load i1, i1* %t75
  br i1 %t76, label %while_body25, label %while_end26
while_body25:
  %t77 = getelementptr [11 x i8], [11 x i8]* @.str984, i32 0, i32 0
  %t78 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str984.c, i8* %t77, i64 10)
  %t79 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t78)
  store %Token %t79, %Token* %t80
  %t81 = load %Token, %Token* %t80
  %t82 = call %nyx_string* @get_token_value(%Token %t81)
  store %nyx_string* %t82, %nyx_string** %t83
  %t84 = load { i64, i8* }*, { i64, i8* }** %t70
  %t85 = load %nyx_string*, %nyx_string** %t83
  %t86 = ptrtoint %nyx_string* %t85 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t84, i64 %t86, i64 2)
  %t87 = getelementptr [5 x i8], [5 x i8]* @.str985, i32 0, i32 0
  %t88 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str985.c, i8* %t87, i64 4)
  %t89 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t88)
  br i1 %t89, label %then27, label %else28
then27:
  %t90 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge29
else28:
  store i1 0, i1* %t75
  br label %merge29
merge29:
  br label %while_cond24
while_end26:
  br label %merge23
else22:
  br label %merge23
merge23:
  %t91 = getelementptr [11 x i8], [11 x i8]* @.str986, i32 0, i32 0
  %t92 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str986.c, i8* %t91, i64 10)
  %t93 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t92)
  %t94 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t94, { i64, i8* }** %t95
  store i1 0, i1* %t96
  br label %while_cond30
while_cond30:
  %t97 = load i1, i1* %t96
  %t98 = xor i1 %t97, true
  br i1 %t98, label %while_body31, label %while_end32
while_body31:
  %t99 = getelementptr [12 x i8], [12 x i8]* @.str987, i32 0, i32 0
  %t100 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str987.c, i8* %t99, i64 11)
  %t101 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t100)
  br i1 %t101, label %then33, label %else34
then33:
  %t102 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %t96
  br label %merge35
else34:
  store i1 0, i1* %t103
  %t104 = getelementptr [11 x i8], [11 x i8]* @.str988, i32 0, i32 0
  %t105 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str988.c, i8* %t104, i64 10)
  %t106 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t105)
  br i1 %t106, label %then36, label %else37
then36:
  %t107 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  store %Token %t107, %Token* %t108
  %t109 = load %Token, %Token* %t108
  %t110 = call %nyx_string* @get_token_value(%Token %t109)
  %t111 = getelementptr [5 x i8], [5 x i8]* @.str989, i32 0, i32 0
  %t112 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str989.c, i8* %t111, i64 4)
  %t113 = call i1 @nyx_string_equals(%nyx_string* %t110, %nyx_string* %t112)
  br i1 %t113, label %then39, label %else40
then39:
  %t114 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t115 = getelementptr [11 x i8], [11 x i8]* @.str990, i32 0, i32 0
  %t116 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str990.c, i8* %t115, i64 10)
  %t117 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t116)
  store %Token %t117, %Token* %t118
  %t119 = load %Token, %Token* %t118
  %t120 = call %nyx_string* @get_token_value(%Token %t119)
  store %nyx_string* %t120, %nyx_string** %t121
  %t122 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t122, { i64, i8* }** %t123
  %t124 = getelementptr [5 x i8], [5 x i8]* @.str991, i32 0, i32 0
  %t125 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str991.c, i8* %t124, i64 4)
  %t126 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t125)
  br i1 %t126, label %then42, label %else43
then42:
  %t127 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 0, i1* %t128
  br label %while_cond45
while_cond45:
  %t129 = load i1, i1* %t128
  %t130 = xor i1 %t129, true
  br i1 %t130, label %while_body46, label %while_end47
while_body46:
  %t131 = getelementptr [8 x i8], [8 x i8]* @.str992, i32 0, i32 0
  %t132 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str992.c, i8* %t131, i64 7)
  %t133 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t132)
  br i1 %t133, label %then48, label %else49
then48:
  %t134 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %t128
  br label %merge50
else49:
  %t135 = getelementptr [11 x i8], [11 x i8]* @.str993, i32 0, i32 0
  %t136 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str993.c, i8* %t135, i64 10)
  %t137 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t136)
  br i1 %t137, label %then51, label %else52
then51:
  %t138 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store %Token %t138, %Token* %t139
  %t140 = load { i64, i8* }*, { i64, i8* }** %t123
  %t141 = load %Token, %Token* %t139
  %t142 = call %nyx_string* @get_token_value(%Token %t141)
  %t143 = ptrtoint %nyx_string* %t142 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t140, i64 %t143, i64 2)
  br label %merge53
else52:
  %t144 = getelementptr [9 x i8], [9 x i8]* @.str994, i32 0, i32 0
  %t145 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str994.c, i8* %t144, i64 8)
  %t146 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t145)
  br i1 %t146, label %then54, label %else55
then54:
  %t147 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store %Token %t147, %Token* %t148
  %t149 = load { i64, i8* }*, { i64, i8* }** %t123
  %t150 = load %Token, %Token* %t148
  %t151 = call %nyx_string* @get_token_value(%Token %t150)
  %t152 = ptrtoint %nyx_string* %t151 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t149, i64 %t152, i64 2)
  br label %merge56
else55:
  %t153 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge56
merge56:
  br label %merge53
merge53:
  %t154 = getelementptr [6 x i8], [6 x i8]* @.str995, i32 0, i32 0
  %t155 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str995.c, i8* %t154, i64 5)
  %t156 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t155)
  br i1 %t156, label %then57, label %else58
then57:
  %t157 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
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
  %t158 = load { i64, i8* }*, { i64, i8* }** %t95
  %t159 = call { i64, i8* }* @nyx_array_new_ptr()
  %t160 = getelementptr [15 x i8], [15 x i8]* @.str996, i32 0, i32 0
  %t161 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str996.c, i8* %t160, i64 14)
  %t162 = ptrtoint %nyx_string* %t161 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t159, i64 %t162, i64 2)
  %t163 = load %nyx_string*, %nyx_string** %t121
  %t164 = ptrtoint %nyx_string* %t163 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t159, i64 %t164, i64 2)
  %t165 = load { i64, i8* }*, { i64, i8* }** %t123
  %t166 = ptrtoint { i64, i8* }* %t165 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t159, i64 %t166, i64 5)
  %t167 = ptrtoint { i64, i8* }* %t159 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t158, i64 %t167, i64 5)
  store i1 1, i1* %t103
  br label %merge41
else40:
  br label %merge41
merge41:
  br label %merge38
else37:
  br label %merge38
merge38:
  %t168 = load i1, i1* %t103
  %t169 = xor i1 %t168, true
  br i1 %t169, label %then60, label %else61
then60:
  %t170 = getelementptr [3 x i8], [3 x i8]* @.str997, i32 0, i32 0
  %t171 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str997.c, i8* %t170, i64 2)
  %t172 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t171)
  %t173 = getelementptr [11 x i8], [11 x i8]* @.str998, i32 0, i32 0
  %t174 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str998.c, i8* %t173, i64 10)
  %t175 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t174)
  store %Token %t175, %Token* %t176
  %t177 = load %Token, %Token* %t176
  %t178 = call %nyx_string* @get_token_value(%Token %t177)
  store %nyx_string* %t178, %nyx_string** %t179
  %t180 = getelementptr [5 x i8], [5 x i8]* @.str999, i32 0, i32 0
  %t181 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str999.c, i8* %t180, i64 4)
  %t182 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t181)
  br i1 %t182, label %then63, label %else64
then63:
  %t183 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 0, i1* %t184
  br label %while_cond66
while_cond66:
  %t185 = load i1, i1* %t184
  %t186 = xor i1 %t185, true
  br i1 %t186, label %while_body67, label %while_end68
while_body67:
  %t187 = getelementptr [8 x i8], [8 x i8]* @.str1000, i32 0, i32 0
  %t188 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1000.c, i8* %t187, i64 7)
  %t189 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t188)
  br i1 %t189, label %then69, label %else70
then69:
  %t190 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %t184
  br label %merge71
else70:
  %t191 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge71
merge71:
  br label %while_cond66
while_end68:
  br label %merge65
else64:
  br label %merge65
merge65:
  %t192 = getelementptr [11 x i8], [11 x i8]* @.str1001, i32 0, i32 0
  %t193 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1001.c, i8* %t192, i64 10)
  %t194 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t193)
  %t195 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t195, { i64, i8* }** %t196
  store i1 0, i1* %t197
  br label %while_cond72
while_cond72:
  %t198 = load i1, i1* %t197
  %t199 = xor i1 %t198, true
  br i1 %t199, label %while_body73, label %while_end74
while_body73:
  %t200 = getelementptr [12 x i8], [12 x i8]* @.str1002, i32 0, i32 0
  %t201 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1002.c, i8* %t200, i64 11)
  %t202 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t201)
  br i1 %t202, label %then75, label %else76
then75:
  %t203 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %t197
  br label %merge77
else76:
  %t204 = load { i64, i8* }*, { i64, i8* }** %t196
  %t205 = call i64 @nyx_array_length({ i64, i8* }* %t204)
  %t206 = icmp sgt i64 %t205, 0
  br i1 %t206, label %then78, label %else79
then78:
  %t207 = getelementptr [6 x i8], [6 x i8]* @.str1003, i32 0, i32 0
  %t208 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1003.c, i8* %t207, i64 5)
  %t209 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t208)
  br label %merge80
else79:
  br label %merge80
merge80:
  %t210 = getelementptr [11 x i8], [11 x i8]* @.str1004, i32 0, i32 0
  %t211 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1004.c, i8* %t210, i64 10)
  %t212 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t211)
  store %Token %t212, %Token* %t213
  %t214 = load %Token, %Token* %t213
  %t215 = call %nyx_string* @get_token_value(%Token %t214)
  store %nyx_string* %t215, %nyx_string** %t216
  %t217 = getelementptr [1 x i8], [1 x i8]* @.str1005, i32 0, i32 0
  %t218 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1005.c, i8* %t217, i64 0)
  store %nyx_string* %t218, %nyx_string** %t219
  %t220 = getelementptr [6 x i8], [6 x i8]* @.str1006, i32 0, i32 0
  %t221 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1006.c, i8* %t220, i64 5)
  %t222 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t221)
  br i1 %t222, label %then81, label %else82
then81:
  %t223 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t224 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %t224, %nyx_string** %t219
  br label %merge83
else82:
  br label %merge83
merge83:
  %t225 = load { i64, i8* }*, { i64, i8* }** %t196
  %t226 = call { i64, i8* }* @nyx_array_new_ptr()
  %t227 = load %nyx_string*, %nyx_string** %t216
  %t228 = ptrtoint %nyx_string* %t227 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t226, i64 %t228, i64 2)
  %t229 = load %nyx_string*, %nyx_string** %t219
  %t230 = ptrtoint %nyx_string* %t229 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t226, i64 %t230, i64 2)
  %t231 = ptrtoint { i64, i8* }* %t226 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t225, i64 %t231, i64 5)
  br label %merge77
merge77:
  br label %while_cond72
while_end74:
  %t232 = getelementptr [1 x i8], [1 x i8]* @.str1007, i32 0, i32 0
  %t233 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1007.c, i8* %t232, i64 0)
  store %nyx_string* %t233, %nyx_string** %t234
  %t235 = getelementptr [6 x i8], [6 x i8]* @.str1008, i32 0, i32 0
  %t236 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1008.c, i8* %t235, i64 5)
  %t237 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t236)
  br i1 %t237, label %then84, label %else85
then84:
  %t238 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t239 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %t239, %nyx_string** %t234
  br label %merge86
else85:
  br label %merge86
merge86:
  %t240 = getelementptr [11 x i8], [11 x i8]* @.str1009, i32 0, i32 0
  %t241 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1009.c, i8* %t240, i64 10)
  %t242 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t241)
  br i1 %t242, label %then87, label %else88
then87:
  %t243 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t243, { i64, i8* }** %t244
  %t245 = load { i64, i8* }*, { i64, i8* }** %t95
  %t246 = call { i64, i8* }* @nyx_array_new_ptr()
  %t247 = load %nyx_string*, %nyx_string** %t179
  %t248 = ptrtoint %nyx_string* %t247 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t246, i64 %t248, i64 2)
  %t249 = load { i64, i8* }*, { i64, i8* }** %t196
  %t250 = ptrtoint { i64, i8* }* %t249 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t246, i64 %t250, i64 5)
  %t251 = load %nyx_string*, %nyx_string** %t234
  %t252 = ptrtoint %nyx_string* %t251 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t246, i64 %t252, i64 2)
  %t253 = load { i64, i8* }*, { i64, i8* }** %t244
  %t254 = ptrtoint { i64, i8* }* %t253 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t246, i64 %t254, i64 5)
  %t255 = ptrtoint { i64, i8* }* %t246 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t245, i64 %t255, i64 5)
  br label %merge89
else88:
  %t256 = load { i64, i8* }*, { i64, i8* }** %t95
  %t257 = call { i64, i8* }* @nyx_array_new_ptr()
  %t258 = load %nyx_string*, %nyx_string** %t179
  %t259 = ptrtoint %nyx_string* %t258 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t257, i64 %t259, i64 2)
  %t260 = load { i64, i8* }*, { i64, i8* }** %t196
  %t261 = ptrtoint { i64, i8* }* %t260 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t257, i64 %t261, i64 5)
  %t262 = load %nyx_string*, %nyx_string** %t234
  %t263 = ptrtoint %nyx_string* %t262 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t257, i64 %t263, i64 2)
  %t264 = ptrtoint { i64, i8* }* %t257 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t256, i64 %t264, i64 5)
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
  %t265 = getelementptr [10 x i8], [10 x i8]* @.str1010, i32 0, i32 0
  %t266 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1010.c, i8* %t265, i64 9)
  %t267 = call { i64, i8* }* @nyx_array_new_ptr()
  %t268 = load %nyx_string*, %nyx_string** %t40
  %t269 = ptrtoint %nyx_string* %t268 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t267, i64 %t269, i64 2)
  %t270 = load { i64, i8* }*, { i64, i8* }** %t70
  %t271 = ptrtoint { i64, i8* }* %t270 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t267, i64 %t271, i64 5)
  %t272 = load { i64, i8* }*, { i64, i8* }** %t95
  %t273 = ptrtoint { i64, i8* }* %t272 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t267, i64 %t273, i64 5)
  %t274 = call { i64, i8* }* @make_astnode(%nyx_string* %t266, { i64, i8* }* %t267)
  ret { i64, i8* }* %t274
}

define internal { i64, i8* }* @parse__parse_impl(%SharedEnv_parse* %env.param) {
  %t35 = alloca { i64, i8* }*
  %t44 = alloca %Token
  %t52 = alloca %Token
  %t55 = alloca %nyx_string*
  %t63 = alloca %Token
  %t66 = alloca %nyx_string*
  %t74 = alloca %Token
  %t91 = alloca i1
  %t102 = alloca %Token
  %t110 = alloca %Token
  %t113 = alloca %nyx_string*
  %t121 = alloca %Token
  %t124 = alloca %nyx_string*
  %t132 = alloca %Token
  %t155 = alloca %Token
  %t158 = alloca %nyx_string*
  %t166 = alloca %Token
  %t169 = alloca %nyx_string*
  %t174 = alloca { i64, i8* }*
  %t176 = alloca { i64, i8* }*
  %t177 = alloca i1
  %t184 = alloca i1
  %t189 = alloca %Token
  %t199 = alloca %Token
  %t202 = alloca %nyx_string*
  %t207 = alloca i1
  %t219 = alloca %nyx_string*
  %t230 = alloca { i64, i8* }*
  %t251 = alloca { i64, i8* }*
  %t252 = alloca i1
  %t253 = alloca i1
  %t264 = alloca %Token
  %t274 = alloca i1
  %t275 = alloca i1
  %t285 = alloca i1
  %t286 = alloca i64
  %t295 = alloca %nyx_string*
  %t296 = alloca i1
  %t297 = alloca i1
  %t298 = alloca i1
  %t299 = alloca i1
  %t300 = alloca i1
  %t301 = alloca i1
  %t302 = alloca i1
  %t303 = alloca i1
  %t304 = alloca i1
  %t305 = alloca i1
  %t306 = alloca i1
  %t307 = alloca i1
  %t308 = alloca i1
  %t309 = alloca i1
  %t310 = alloca i1
  %t398 = alloca { i64, i8* }*
  %t399 = alloca i1
  %t407 = alloca { i64, i8* }*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = getelementptr [5 x i8], [5 x i8]* @.str1011, i32 0, i32 0
  %t32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1011.c, i8* %t31, i64 4)
  %t33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t32)
  %t34 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t34, { i64, i8* }** %t35
  %t36 = getelementptr [5 x i8], [5 x i8]* @.str1012, i32 0, i32 0
  %t37 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1012.c, i8* %t36, i64 4)
  %t38 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t37)
  br i1 %t38, label %then0, label %else1
then0:
  %t39 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t40 = getelementptr [9 x i8], [9 x i8]* @.str1013, i32 0, i32 0
  %t41 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1013.c, i8* %t40, i64 8)
  %t42 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t41)
  br i1 %t42, label %then3, label %else4
then3:
  %t43 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store %Token %t43, %Token* %t44
  %t45 = load { i64, i8* }*, { i64, i8* }** %t35
  %t46 = load %Token, %Token* %t44
  %t47 = call %nyx_string* @get_token_value(%Token %t46)
  %t48 = ptrtoint %nyx_string* %t47 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t45, i64 %t48, i64 2)
  br label %merge5
else4:
  %t49 = getelementptr [11 x i8], [11 x i8]* @.str1014, i32 0, i32 0
  %t50 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1014.c, i8* %t49, i64 10)
  %t51 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t50)
  store %Token %t51, %Token* %t52
  %t53 = load %Token, %Token* %t52
  %t54 = call %nyx_string* @get_token_value(%Token %t53)
  store %nyx_string* %t54, %nyx_string** %t55
  %t56 = getelementptr [6 x i8], [6 x i8]* @.str1015, i32 0, i32 0
  %t57 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1015.c, i8* %t56, i64 5)
  %t58 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t57)
  br i1 %t58, label %then6, label %else7
then6:
  %t59 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t60 = getelementptr [11 x i8], [11 x i8]* @.str1016, i32 0, i32 0
  %t61 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1016.c, i8* %t60, i64 10)
  %t62 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t61)
  store %Token %t62, %Token* %t63
  %t64 = load %Token, %Token* %t63
  %t65 = call %nyx_string* @get_token_value(%Token %t64)
  store %nyx_string* %t65, %nyx_string** %t66
  br label %while_cond9
while_cond9:
  %t67 = getelementptr [5 x i8], [5 x i8]* @.str1017, i32 0, i32 0
  %t68 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1017.c, i8* %t67, i64 4)
  %t69 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t68)
  br i1 %t69, label %while_body10, label %while_end11
while_body10:
  %t70 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t71 = getelementptr [11 x i8], [11 x i8]* @.str1018, i32 0, i32 0
  %t72 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1018.c, i8* %t71, i64 10)
  %t73 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t72)
  store %Token %t73, %Token* %t74
  %t75 = load %nyx_string*, %nyx_string** %t66
  %t76 = getelementptr [2 x i8], [2 x i8]* @.str1019, i32 0, i32 0
  %t77 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1019.c, i8* %t76, i64 1)
  %t78 = call %nyx_string* @nyx_string_concat(%nyx_string* %t75, %nyx_string* %t77)
  %t79 = load %Token, %Token* %t74
  %t80 = call %nyx_string* @get_token_value(%Token %t79)
  %t81 = call %nyx_string* @nyx_string_concat(%nyx_string* %t78, %nyx_string* %t80)
  store %nyx_string* %t81, %nyx_string** %t66
  br label %while_cond9
while_end11:
  %t82 = load %nyx_string*, %nyx_string** %t55
  %t83 = getelementptr [2 x i8], [2 x i8]* @.str1020, i32 0, i32 0
  %t84 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1020.c, i8* %t83, i64 1)
  %t85 = call %nyx_string* @nyx_string_concat(%nyx_string* %t82, %nyx_string* %t84)
  %t86 = load %nyx_string*, %nyx_string** %t66
  %t87 = call %nyx_string* @nyx_string_concat(%nyx_string* %t85, %nyx_string* %t86)
  store %nyx_string* %t87, %nyx_string** %t55
  br label %merge8
else7:
  br label %merge8
merge8:
  %t88 = load { i64, i8* }*, { i64, i8* }** %t35
  %t89 = load %nyx_string*, %nyx_string** %t55
  %t90 = ptrtoint %nyx_string* %t89 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t88, i64 %t90, i64 2)
  br label %merge5
merge5:
  store i1 0, i1* %t91
  br label %while_cond12
while_cond12:
  %t92 = load i1, i1* %t91
  %t93 = xor i1 %t92, true
  br i1 %t93, label %while_body13, label %while_end14
while_body13:
  %t94 = getelementptr [6 x i8], [6 x i8]* @.str1021, i32 0, i32 0
  %t95 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1021.c, i8* %t94, i64 5)
  %t96 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t95)
  br i1 %t96, label %then15, label %else16
then15:
  %t97 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t98 = getelementptr [9 x i8], [9 x i8]* @.str1022, i32 0, i32 0
  %t99 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1022.c, i8* %t98, i64 8)
  %t100 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t99)
  br i1 %t100, label %then18, label %else19
then18:
  %t101 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store %Token %t101, %Token* %t102
  %t103 = load { i64, i8* }*, { i64, i8* }** %t35
  %t104 = load %Token, %Token* %t102
  %t105 = call %nyx_string* @get_token_value(%Token %t104)
  %t106 = ptrtoint %nyx_string* %t105 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t103, i64 %t106, i64 2)
  br label %merge20
else19:
  %t107 = getelementptr [11 x i8], [11 x i8]* @.str1023, i32 0, i32 0
  %t108 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1023.c, i8* %t107, i64 10)
  %t109 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t108)
  store %Token %t109, %Token* %t110
  %t111 = load %Token, %Token* %t110
  %t112 = call %nyx_string* @get_token_value(%Token %t111)
  store %nyx_string* %t112, %nyx_string** %t113
  %t114 = getelementptr [6 x i8], [6 x i8]* @.str1024, i32 0, i32 0
  %t115 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1024.c, i8* %t114, i64 5)
  %t116 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t115)
  br i1 %t116, label %then21, label %else22
then21:
  %t117 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t118 = getelementptr [11 x i8], [11 x i8]* @.str1025, i32 0, i32 0
  %t119 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1025.c, i8* %t118, i64 10)
  %t120 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t119)
  store %Token %t120, %Token* %t121
  %t122 = load %Token, %Token* %t121
  %t123 = call %nyx_string* @get_token_value(%Token %t122)
  store %nyx_string* %t123, %nyx_string** %t124
  br label %while_cond24
while_cond24:
  %t125 = getelementptr [5 x i8], [5 x i8]* @.str1026, i32 0, i32 0
  %t126 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1026.c, i8* %t125, i64 4)
  %t127 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t126)
  br i1 %t127, label %while_body25, label %while_end26
while_body25:
  %t128 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t129 = getelementptr [11 x i8], [11 x i8]* @.str1027, i32 0, i32 0
  %t130 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1027.c, i8* %t129, i64 10)
  %t131 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t130)
  store %Token %t131, %Token* %t132
  %t133 = load %nyx_string*, %nyx_string** %t124
  %t134 = getelementptr [2 x i8], [2 x i8]* @.str1028, i32 0, i32 0
  %t135 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1028.c, i8* %t134, i64 1)
  %t136 = call %nyx_string* @nyx_string_concat(%nyx_string* %t133, %nyx_string* %t135)
  %t137 = load %Token, %Token* %t132
  %t138 = call %nyx_string* @get_token_value(%Token %t137)
  %t139 = call %nyx_string* @nyx_string_concat(%nyx_string* %t136, %nyx_string* %t138)
  store %nyx_string* %t139, %nyx_string** %t124
  br label %while_cond24
while_end26:
  %t140 = load %nyx_string*, %nyx_string** %t113
  %t141 = getelementptr [2 x i8], [2 x i8]* @.str1029, i32 0, i32 0
  %t142 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1029.c, i8* %t141, i64 1)
  %t143 = call %nyx_string* @nyx_string_concat(%nyx_string* %t140, %nyx_string* %t142)
  %t144 = load %nyx_string*, %nyx_string** %t124
  %t145 = call %nyx_string* @nyx_string_concat(%nyx_string* %t143, %nyx_string* %t144)
  store %nyx_string* %t145, %nyx_string** %t113
  br label %merge23
else22:
  br label %merge23
merge23:
  %t146 = load { i64, i8* }*, { i64, i8* }** %t35
  %t147 = load %nyx_string*, %nyx_string** %t113
  %t148 = ptrtoint %nyx_string* %t147 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t146, i64 %t148, i64 2)
  br label %merge20
merge20:
  br label %merge17
else16:
  store i1 1, i1* %t91
  br label %merge17
merge17:
  br label %while_cond12
while_end14:
  %t149 = getelementptr [8 x i8], [8 x i8]* @.str1030, i32 0, i32 0
  %t150 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1030.c, i8* %t149, i64 7)
  %t151 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t150)
  br label %merge2
else1:
  br label %merge2
merge2:
  %t152 = getelementptr [11 x i8], [11 x i8]* @.str1031, i32 0, i32 0
  %t153 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1031.c, i8* %t152, i64 10)
  %t154 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t153)
  store %Token %t154, %Token* %t155
  %t156 = load %Token, %Token* %t155
  %t157 = call %nyx_string* @get_token_value(%Token %t156)
  store %nyx_string* %t157, %nyx_string** %t158
  %t159 = getelementptr [4 x i8], [4 x i8]* @.str1032, i32 0, i32 0
  %t160 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1032.c, i8* %t159, i64 3)
  %t161 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t160)
  br i1 %t161, label %then27, label %else28
then27:
  %t162 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t163 = getelementptr [11 x i8], [11 x i8]* @.str1033, i32 0, i32 0
  %t164 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1033.c, i8* %t163, i64 10)
  %t165 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t164)
  store %Token %t165, %Token* %t166
  %t167 = load %Token, %Token* %t166
  %t168 = call %nyx_string* @get_token_value(%Token %t167)
  store %nyx_string* %t168, %nyx_string** %t169
  %t170 = getelementptr [11 x i8], [11 x i8]* @.str1034, i32 0, i32 0
  %t171 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1034.c, i8* %t170, i64 10)
  %t172 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t171)
  %t173 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t173, { i64, i8* }** %t174
  %t175 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t175, { i64, i8* }** %t176
  store i1 0, i1* %t177
  br label %while_cond30
while_cond30:
  %t178 = load i1, i1* %t177
  %t179 = xor i1 %t178, true
  br i1 %t179, label %while_body31, label %while_end32
while_body31:
  %t180 = getelementptr [12 x i8], [12 x i8]* @.str1035, i32 0, i32 0
  %t181 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1035.c, i8* %t180, i64 11)
  %t182 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t181)
  br i1 %t182, label %then33, label %else34
then33:
  %t183 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %t177
  br label %merge35
else34:
  store i1 0, i1* %t184
  %t185 = getelementptr [11 x i8], [11 x i8]* @.str1036, i32 0, i32 0
  %t186 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1036.c, i8* %t185, i64 10)
  %t187 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t186)
  br i1 %t187, label %then36, label %else37
then36:
  %t188 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  store %Token %t188, %Token* %t189
  %t190 = load %Token, %Token* %t189
  %t191 = call %nyx_string* @get_token_value(%Token %t190)
  %t192 = getelementptr [5 x i8], [5 x i8]* @.str1037, i32 0, i32 0
  %t193 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1037.c, i8* %t192, i64 4)
  %t194 = call i1 @nyx_string_equals(%nyx_string* %t191, %nyx_string* %t193)
  br i1 %t194, label %then39, label %else40
then39:
  %t195 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t196 = getelementptr [11 x i8], [11 x i8]* @.str1038, i32 0, i32 0
  %t197 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1038.c, i8* %t196, i64 10)
  %t198 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t197)
  store %Token %t198, %Token* %t199
  %t200 = load %Token, %Token* %t199
  %t201 = call %nyx_string* @get_token_value(%Token %t200)
  store %nyx_string* %t201, %nyx_string** %t202
  %t203 = getelementptr [5 x i8], [5 x i8]* @.str1039, i32 0, i32 0
  %t204 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1039.c, i8* %t203, i64 4)
  %t205 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t204)
  br i1 %t205, label %then42, label %else43
then42:
  %t206 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 0, i1* %t207
  br label %while_cond45
while_cond45:
  %t208 = load i1, i1* %t207
  %t209 = xor i1 %t208, true
  br i1 %t209, label %while_body46, label %while_end47
while_body46:
  %t210 = getelementptr [8 x i8], [8 x i8]* @.str1040, i32 0, i32 0
  %t211 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1040.c, i8* %t210, i64 7)
  %t212 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t211)
  br i1 %t212, label %then48, label %else49
then48:
  %t213 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %t207
  br label %merge50
else49:
  %t214 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge50
merge50:
  br label %while_cond45
while_end47:
  br label %merge44
else43:
  br label %merge44
merge44:
  %t215 = getelementptr [7 x i8], [7 x i8]* @.str1041, i32 0, i32 0
  %t216 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1041.c, i8* %t215, i64 6)
  %t217 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t216)
  %t218 = call %nyx_string* @parse__parse_type_annotation(%SharedEnv_parse* %env.param)
  store %nyx_string* %t218, %nyx_string** %t219
  %t220 = load { i64, i8* }*, { i64, i8* }** %t176
  %t221 = call { i64, i8* }* @nyx_array_new_ptr()
  %t222 = load %nyx_string*, %nyx_string** %t202
  %t223 = ptrtoint %nyx_string* %t222 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t221, i64 %t223, i64 2)
  %t224 = load %nyx_string*, %nyx_string** %t219
  %t225 = ptrtoint %nyx_string* %t224 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t221, i64 %t225, i64 2)
  %t226 = ptrtoint { i64, i8* }* %t221 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t220, i64 %t226, i64 5)
  store i1 1, i1* %t184
  br label %merge41
else40:
  br label %merge41
merge41:
  br label %merge38
else37:
  br label %merge38
merge38:
  %t227 = load i1, i1* %t184
  %t228 = xor i1 %t227, true
  br i1 %t228, label %then51, label %else52
then51:
  %t229 = call { i64, i8* }* @parse__parse_function(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t229, { i64, i8* }** %t230
  %t231 = load { i64, i8* }*, { i64, i8* }** %t174
  %t232 = load { i64, i8* }*, { i64, i8* }** %t230
  %t233 = ptrtoint { i64, i8* }* %t232 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t231, i64 %t233, i64 5)
  br label %merge53
else52:
  br label %merge53
merge53:
  br label %merge35
merge35:
  br label %while_cond30
while_end32:
  %t234 = getelementptr [11 x i8], [11 x i8]* @.str1042, i32 0, i32 0
  %t235 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1042.c, i8* %t234, i64 10)
  %t236 = call { i64, i8* }* @nyx_array_new_ptr()
  %t237 = load %nyx_string*, %nyx_string** %t158
  %t238 = ptrtoint %nyx_string* %t237 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t236, i64 %t238, i64 2)
  %t239 = load %nyx_string*, %nyx_string** %t169
  %t240 = ptrtoint %nyx_string* %t239 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t236, i64 %t240, i64 2)
  %t241 = load { i64, i8* }*, { i64, i8* }** %t174
  %t242 = ptrtoint { i64, i8* }* %t241 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t236, i64 %t242, i64 5)
  %t243 = load { i64, i8* }*, { i64, i8* }** %t176
  %t244 = ptrtoint { i64, i8* }* %t243 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t236, i64 %t244, i64 5)
  %t245 = call { i64, i8* }* @make_astnode(%nyx_string* %t235, { i64, i8* }* %t236)
  ret { i64, i8* }* %t245
else28:
  br label %merge29
merge29:
  %t246 = getelementptr [5 x i8], [5 x i8]* @.str1043, i32 0, i32 0
  %t247 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1043.c, i8* %t246, i64 4)
  %t248 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t247)
  br i1 %t248, label %then54, label %else55
then54:
  %t249 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t250 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t250, { i64, i8* }** %t251
  store i1 1, i1* %t252
  store i1 0, i1* %t253
  br label %while_cond57
while_cond57:
  %t254 = load i1, i1* %t253
  %t255 = xor i1 %t254, true
  br i1 %t255, label %while_body58, label %while_end59
while_body58:
  %t256 = getelementptr [8 x i8], [8 x i8]* @.str1044, i32 0, i32 0
  %t257 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1044.c, i8* %t256, i64 7)
  %t258 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t257)
  br i1 %t258, label %then60, label %else61
then60:
  %t259 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %t253
  br label %merge62
else61:
  %t260 = getelementptr [11 x i8], [11 x i8]* @.str1045, i32 0, i32 0
  %t261 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1045.c, i8* %t260, i64 10)
  %t262 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t261)
  br i1 %t262, label %then63, label %else64
then63:
  %t263 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store %Token %t263, %Token* %t264
  %t265 = load { i64, i8* }*, { i64, i8* }** %t251
  %t266 = load %Token, %Token* %t264
  %t267 = call %nyx_string* @get_token_value(%Token %t266)
  %t268 = ptrtoint %nyx_string* %t267 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t265, i64 %t268, i64 2)
  br label %merge65
else64:
  %t269 = getelementptr [6 x i8], [6 x i8]* @.str1046, i32 0, i32 0
  %t270 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1046.c, i8* %t269, i64 5)
  %t271 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t270)
  br i1 %t271, label %then66, label %else67
then66:
  %t272 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge68
else67:
  store i1 0, i1* %t252
  %t273 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge68
merge68:
  br label %merge65
merge65:
  br label %merge62
merge62:
  br label %while_cond57
while_end59:
  store i1 false, i1* %t274
  store i1 false, i1* %t275
  %t276 = load { i64, i8* }*, { i64, i8* }** %t35
  %t277 = call i64 @nyx_array_length({ i64, i8* }* %t276)
  %t278 = icmp eq i64 %t277, 0
  br i1 %t278, label %sc_and_rhs69, label %sc_and_end70
sc_and_rhs69:
  %t279 = load i1, i1* %t252
  store i1 %t279, i1* %t275
  br label %sc_and_end70
sc_and_end70:
  %t280 = load i1, i1* %t275
  br i1 %t280, label %sc_and_rhs71, label %sc_and_end72
sc_and_rhs71:
  %t281 = load { i64, i8* }*, { i64, i8* }** %t251
  %t282 = call i64 @nyx_array_length({ i64, i8* }* %t281)
  %t283 = icmp sgt i64 %t282, 0
  store i1 %t283, i1* %t274
  br label %sc_and_end72
sc_and_end72:
  %t284 = load i1, i1* %t274
  br i1 %t284, label %then73, label %else74
then73:
  store i1 1, i1* %t285
  store i64 0, i64* %t286
  br label %while_cond76
while_cond76:
  %t287 = load i64, i64* %t286
  %t288 = load { i64, i8* }*, { i64, i8* }** %t251
  %t289 = call i64 @nyx_array_length({ i64, i8* }* %t288)
  %t290 = icmp slt i64 %t287, %t289
  br i1 %t290, label %while_body77, label %while_end78
while_body77:
  %t291 = load { i64, i8* }*, { i64, i8* }** %t251
  %t292 = load i64, i64* %t286
  %t293 = call i64 @nyx_array_get_checked({ i64, i8* }* %t291, i64 %t292, i64 2)
  %t294 = inttoptr i64 %t293 to %nyx_string*
  store %nyx_string* %t294, %nyx_string** %t295
  store i1 true, i1* %t296
  store i1 true, i1* %t297
  store i1 true, i1* %t298
  store i1 true, i1* %t299
  store i1 true, i1* %t300
  store i1 true, i1* %t301
  store i1 true, i1* %t302
  store i1 true, i1* %t303
  store i1 true, i1* %t304
  store i1 true, i1* %t305
  store i1 true, i1* %t306
  store i1 true, i1* %t307
  store i1 true, i1* %t308
  store i1 true, i1* %t309
  store i1 true, i1* %t310
  %t311 = load %nyx_string*, %nyx_string** %t295
  %t312 = getelementptr [4 x i8], [4 x i8]* @.str1047, i32 0, i32 0
  %t313 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1047.c, i8* %t312, i64 3)
  %t314 = call i1 @nyx_string_equals(%nyx_string* %t311, %nyx_string* %t313)
  br i1 %t314, label %sc_or_end80, label %sc_or_rhs79
sc_or_rhs79:
  %t315 = load %nyx_string*, %nyx_string** %t295
  %t316 = getelementptr [6 x i8], [6 x i8]* @.str1048, i32 0, i32 0
  %t317 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1048.c, i8* %t316, i64 5)
  %t318 = call i1 @nyx_string_equals(%nyx_string* %t315, %nyx_string* %t317)
  store i1 %t318, i1* %t310
  br label %sc_or_end80
sc_or_end80:
  %t319 = load i1, i1* %t310
  br i1 %t319, label %sc_or_end82, label %sc_or_rhs81
sc_or_rhs81:
  %t320 = load %nyx_string*, %nyx_string** %t295
  %t321 = getelementptr [5 x i8], [5 x i8]* @.str1049, i32 0, i32 0
  %t322 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1049.c, i8* %t321, i64 4)
  %t323 = call i1 @nyx_string_equals(%nyx_string* %t320, %nyx_string* %t322)
  store i1 %t323, i1* %t309
  br label %sc_or_end82
sc_or_end82:
  %t324 = load i1, i1* %t309
  br i1 %t324, label %sc_or_end84, label %sc_or_rhs83
sc_or_rhs83:
  %t325 = load %nyx_string*, %nyx_string** %t295
  %t326 = getelementptr [7 x i8], [7 x i8]* @.str1050, i32 0, i32 0
  %t327 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1050.c, i8* %t326, i64 6)
  %t328 = call i1 @nyx_string_equals(%nyx_string* %t325, %nyx_string* %t327)
  store i1 %t328, i1* %t308
  br label %sc_or_end84
sc_or_end84:
  %t329 = load i1, i1* %t308
  br i1 %t329, label %sc_or_end86, label %sc_or_rhs85
sc_or_rhs85:
  %t330 = load %nyx_string*, %nyx_string** %t295
  %t331 = getelementptr [5 x i8], [5 x i8]* @.str1051, i32 0, i32 0
  %t332 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1051.c, i8* %t331, i64 4)
  %t333 = call i1 @nyx_string_equals(%nyx_string* %t330, %nyx_string* %t332)
  store i1 %t333, i1* %t307
  br label %sc_or_end86
sc_or_end86:
  %t334 = load i1, i1* %t307
  br i1 %t334, label %sc_or_end88, label %sc_or_rhs87
sc_or_rhs87:
  %t335 = load %nyx_string*, %nyx_string** %t295
  %t336 = getelementptr [3 x i8], [3 x i8]* @.str1052, i32 0, i32 0
  %t337 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1052.c, i8* %t336, i64 2)
  %t338 = call i1 @nyx_string_equals(%nyx_string* %t335, %nyx_string* %t337)
  store i1 %t338, i1* %t306
  br label %sc_or_end88
sc_or_end88:
  %t339 = load i1, i1* %t306
  br i1 %t339, label %sc_or_end90, label %sc_or_rhs89
sc_or_rhs89:
  %t340 = load %nyx_string*, %nyx_string** %t295
  %t341 = getelementptr [4 x i8], [4 x i8]* @.str1053, i32 0, i32 0
  %t342 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1053.c, i8* %t341, i64 3)
  %t343 = call i1 @nyx_string_equals(%nyx_string* %t340, %nyx_string* %t342)
  store i1 %t343, i1* %t305
  br label %sc_or_end90
sc_or_end90:
  %t344 = load i1, i1* %t305
  br i1 %t344, label %sc_or_end92, label %sc_or_rhs91
sc_or_rhs91:
  %t345 = load %nyx_string*, %nyx_string** %t295
  %t346 = getelementptr [4 x i8], [4 x i8]* @.str1054, i32 0, i32 0
  %t347 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1054.c, i8* %t346, i64 3)
  %t348 = call i1 @nyx_string_equals(%nyx_string* %t345, %nyx_string* %t347)
  store i1 %t348, i1* %t304
  br label %sc_or_end92
sc_or_end92:
  %t349 = load i1, i1* %t304
  br i1 %t349, label %sc_or_end94, label %sc_or_rhs93
sc_or_rhs93:
  %t350 = load %nyx_string*, %nyx_string** %t295
  %t351 = getelementptr [3 x i8], [3 x i8]* @.str1055, i32 0, i32 0
  %t352 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1055.c, i8* %t351, i64 2)
  %t353 = call i1 @nyx_string_equals(%nyx_string* %t350, %nyx_string* %t352)
  store i1 %t353, i1* %t303
  br label %sc_or_end94
sc_or_end94:
  %t354 = load i1, i1* %t303
  br i1 %t354, label %sc_or_end96, label %sc_or_rhs95
sc_or_rhs95:
  %t355 = load %nyx_string*, %nyx_string** %t295
  %t356 = getelementptr [4 x i8], [4 x i8]* @.str1056, i32 0, i32 0
  %t357 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1056.c, i8* %t356, i64 3)
  %t358 = call i1 @nyx_string_equals(%nyx_string* %t355, %nyx_string* %t357)
  store i1 %t358, i1* %t302
  br label %sc_or_end96
sc_or_end96:
  %t359 = load i1, i1* %t302
  br i1 %t359, label %sc_or_end98, label %sc_or_rhs97
sc_or_rhs97:
  %t360 = load %nyx_string*, %nyx_string** %t295
  %t361 = getelementptr [4 x i8], [4 x i8]* @.str1057, i32 0, i32 0
  %t362 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1057.c, i8* %t361, i64 3)
  %t363 = call i1 @nyx_string_equals(%nyx_string* %t360, %nyx_string* %t362)
  store i1 %t363, i1* %t301
  br label %sc_or_end98
sc_or_end98:
  %t364 = load i1, i1* %t301
  br i1 %t364, label %sc_or_end100, label %sc_or_rhs99
sc_or_rhs99:
  %t365 = load %nyx_string*, %nyx_string** %t295
  %t366 = getelementptr [4 x i8], [4 x i8]* @.str1058, i32 0, i32 0
  %t367 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1058.c, i8* %t366, i64 3)
  %t368 = call i1 @nyx_string_equals(%nyx_string* %t365, %nyx_string* %t367)
  store i1 %t368, i1* %t300
  br label %sc_or_end100
sc_or_end100:
  %t369 = load i1, i1* %t300
  br i1 %t369, label %sc_or_end102, label %sc_or_rhs101
sc_or_rhs101:
  %t370 = load %nyx_string*, %nyx_string** %t295
  %t371 = getelementptr [6 x i8], [6 x i8]* @.str1059, i32 0, i32 0
  %t372 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1059.c, i8* %t371, i64 5)
  %t373 = call i1 @nyx_string_equals(%nyx_string* %t370, %nyx_string* %t372)
  store i1 %t373, i1* %t299
  br label %sc_or_end102
sc_or_end102:
  %t374 = load i1, i1* %t299
  br i1 %t374, label %sc_or_end104, label %sc_or_rhs103
sc_or_rhs103:
  %t375 = load %nyx_string*, %nyx_string** %t295
  %t376 = getelementptr [4 x i8], [4 x i8]* @.str1060, i32 0, i32 0
  %t377 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1060.c, i8* %t376, i64 3)
  %t378 = call i1 @nyx_string_equals(%nyx_string* %t375, %nyx_string* %t377)
  store i1 %t378, i1* %t298
  br label %sc_or_end104
sc_or_end104:
  %t379 = load i1, i1* %t298
  br i1 %t379, label %sc_or_end106, label %sc_or_rhs105
sc_or_rhs105:
  %t380 = load %nyx_string*, %nyx_string** %t295
  %t381 = getelementptr [6 x i8], [6 x i8]* @.str1061, i32 0, i32 0
  %t382 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1061.c, i8* %t381, i64 5)
  %t383 = call i1 @nyx_string_equals(%nyx_string* %t380, %nyx_string* %t382)
  store i1 %t383, i1* %t297
  br label %sc_or_end106
sc_or_end106:
  %t384 = load i1, i1* %t297
  br i1 %t384, label %sc_or_end108, label %sc_or_rhs107
sc_or_rhs107:
  %t385 = load %nyx_string*, %nyx_string** %t295
  %t386 = getelementptr [4 x i8], [4 x i8]* @.str1062, i32 0, i32 0
  %t387 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1062.c, i8* %t386, i64 3)
  %t388 = call i1 @nyx_string_equals(%nyx_string* %t385, %nyx_string* %t387)
  store i1 %t388, i1* %t296
  br label %sc_or_end108
sc_or_end108:
  %t389 = load i1, i1* %t296
  br i1 %t389, label %then109, label %else110
then109:
  store i1 0, i1* %t285
  br label %merge111
else110:
  br label %merge111
merge111:
  %t390 = load i64, i64* %t286
  %t391 = add i64 %t390, 1
  store i64 %t391, i64* %t286
  br label %while_cond76
while_end78:
  %t392 = load i1, i1* %t285
  br i1 %t392, label %then112, label %else113
then112:
  %t393 = load { i64, i8* }*, { i64, i8* }** %t251
  store { i64, i8* }* %t393, { i64, i8* }** %t35
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
  %t394 = getelementptr [11 x i8], [11 x i8]* @.str1063, i32 0, i32 0
  %t395 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1063.c, i8* %t394, i64 10)
  %t396 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t395)
  %t397 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t397, { i64, i8* }** %t398
  store i1 0, i1* %t399
  br label %while_cond115
while_cond115:
  %t400 = load i1, i1* %t399
  %t401 = xor i1 %t400, true
  br i1 %t401, label %while_body116, label %while_end117
while_body116:
  %t402 = getelementptr [12 x i8], [12 x i8]* @.str1064, i32 0, i32 0
  %t403 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1064.c, i8* %t402, i64 11)
  %t404 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t403)
  br i1 %t404, label %then118, label %else119
then118:
  %t405 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %t399
  br label %merge120
else119:
  %t406 = call { i64, i8* }* @parse__parse_function(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t406, { i64, i8* }** %t407
  %t408 = load { i64, i8* }*, { i64, i8* }** %t398
  %t409 = load { i64, i8* }*, { i64, i8* }** %t407
  %t410 = ptrtoint { i64, i8* }* %t409 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t408, i64 %t410, i64 5)
  br label %merge120
merge120:
  br label %while_cond115
while_end117:
  %t411 = getelementptr [5 x i8], [5 x i8]* @.str1065, i32 0, i32 0
  %t412 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1065.c, i8* %t411, i64 4)
  %t413 = call { i64, i8* }* @nyx_array_new_ptr()
  %t414 = load %nyx_string*, %nyx_string** %t158
  %t415 = ptrtoint %nyx_string* %t414 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t413, i64 %t415, i64 2)
  %t416 = load { i64, i8* }*, { i64, i8* }** %t398
  %t417 = ptrtoint { i64, i8* }* %t416 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t413, i64 %t417, i64 5)
  %t418 = load { i64, i8* }*, { i64, i8* }** %t35
  %t419 = ptrtoint { i64, i8* }* %t418 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t413, i64 %t419, i64 5)
  %t420 = call { i64, i8* }* @make_astnode(%nyx_string* %t412, { i64, i8* }* %t413)
  ret { i64, i8* }* %t420
}

define internal { i64, i8* }* @parse__parse_try_catch(%SharedEnv_parse* %env.param) {
  %t33 = alloca { i64, i8* }*
  %t43 = alloca %Token
  %t46 = alloca %nyx_string*
  %t49 = alloca %nyx_string*
  %t60 = alloca %Token
  %t67 = alloca { i64, i8* }*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t32 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t32, { i64, i8* }** %t33
  %t34 = getelementptr [6 x i8], [6 x i8]* @.str1066, i32 0, i32 0
  %t35 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1066.c, i8* %t34, i64 5)
  %t36 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t35)
  %t37 = getelementptr [11 x i8], [11 x i8]* @.str1067, i32 0, i32 0
  %t38 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1067.c, i8* %t37, i64 10)
  %t39 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t38)
  %t40 = getelementptr [11 x i8], [11 x i8]* @.str1068, i32 0, i32 0
  %t41 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1068.c, i8* %t40, i64 10)
  %t42 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t41)
  store %Token %t42, %Token* %t43
  %t44 = load %Token, %Token* %t43
  %t45 = call %nyx_string* @get_token_value(%Token %t44)
  store %nyx_string* %t45, %nyx_string** %t46
  %t47 = getelementptr [1 x i8], [1 x i8]* @.str1069, i32 0, i32 0
  %t48 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1069.c, i8* %t47, i64 0)
  store %nyx_string* %t48, %nyx_string** %t49
  %t50 = getelementptr [6 x i8], [6 x i8]* @.str1070, i32 0, i32 0
  %t51 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1070.c, i8* %t50, i64 5)
  %t52 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t51)
  br i1 %t52, label %then0, label %else1
then0:
  %t53 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t54 = getelementptr [11 x i8], [11 x i8]* @.str1071, i32 0, i32 0
  %t55 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1071.c, i8* %t54, i64 10)
  %t56 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t55)
  br i1 %t56, label %then3, label %else4
then3:
  %t57 = getelementptr [11 x i8], [11 x i8]* @.str1072, i32 0, i32 0
  %t58 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1072.c, i8* %t57, i64 10)
  %t59 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t58)
  store %Token %t59, %Token* %t60
  %t61 = load %Token, %Token* %t60
  %t62 = call %nyx_string* @get_token_value(%Token %t61)
  store %nyx_string* %t62, %nyx_string** %t49
  br label %merge5
else4:
  br label %merge5
merge5:
  br label %merge2
else1:
  br label %merge2
merge2:
  %t63 = getelementptr [12 x i8], [12 x i8]* @.str1073, i32 0, i32 0
  %t64 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1073.c, i8* %t63, i64 11)
  %t65 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t64)
  %t66 = call { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t66, { i64, i8* }** %t67
  %t68 = getelementptr [10 x i8], [10 x i8]* @.str1074, i32 0, i32 0
  %t69 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1074.c, i8* %t68, i64 9)
  %t70 = call { i64, i8* }* @nyx_array_new_ptr()
  %t71 = load { i64, i8* }*, { i64, i8* }** %t33
  %t72 = ptrtoint { i64, i8* }* %t71 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t70, i64 %t72, i64 5)
  %t73 = load %nyx_string*, %nyx_string** %t46
  %t74 = ptrtoint %nyx_string* %t73 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t70, i64 %t74, i64 2)
  %t75 = load { i64, i8* }*, { i64, i8* }** %t67
  %t76 = ptrtoint { i64, i8* }* %t75 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t70, i64 %t76, i64 5)
  %t77 = load %nyx_string*, %nyx_string** %t49
  %t78 = ptrtoint %nyx_string* %t77 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t70, i64 %t78, i64 2)
  %t79 = call { i64, i8* }* @make_astnode(%nyx_string* %t69, { i64, i8* }* %t70)
  ret { i64, i8* }* %t79
}

define internal { i64, i8* }* @parse__parse_throw(%SharedEnv_parse* %env.param) {
  %t36 = alloca { i64, i8* }*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t32 = getelementptr [11 x i8], [11 x i8]* @.str1075, i32 0, i32 0
  %t33 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1075.c, i8* %t32, i64 10)
  %t34 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t33)
  %t35 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t35, { i64, i8* }** %t36
  %t37 = getelementptr [12 x i8], [12 x i8]* @.str1076, i32 0, i32 0
  %t38 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1076.c, i8* %t37, i64 11)
  %t39 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t38)
  %t40 = getelementptr [6 x i8], [6 x i8]* @.str1077, i32 0, i32 0
  %t41 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1077.c, i8* %t40, i64 5)
  %t42 = call { i64, i8* }* @nyx_array_new_ptr()
  %t43 = load { i64, i8* }*, { i64, i8* }** %t36
  %t44 = ptrtoint { i64, i8* }* %t43 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t42, i64 %t44, i64 5)
  %t45 = call { i64, i8* }* @make_astnode(%nyx_string* %t41, { i64, i8* }* %t42)
  ret { i64, i8* }* %t45
}

define internal { i64, i8* }* @parse__parse_block(%SharedEnv_parse* %env.param) {
  %t35 = alloca { i64, i8* }*
  %t36 = alloca i1
  %t59 = alloca i64
  %t62 = alloca i64
  %t64 = alloca { i64, i8* }*
  %t74 = alloca i64
  %t83 = alloca { i64, i8* }*
  %t87 = alloca %nyx_string*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = getelementptr [11 x i8], [11 x i8]* @.str1078, i32 0, i32 0
  %t32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1078.c, i8* %t31, i64 10)
  %t33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t32)
  %t34 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t34, { i64, i8* }** %t35
  store i1 0, i1* %t36
  br label %while_cond0
while_cond0:
  %t37 = load i1, i1* %t36
  %t38 = xor i1 %t37, true
  br i1 %t38, label %while_body1, label %while_end2
while_body1:
  %t39 = load i64, i64* %t8
  %t40 = icmp eq i64 %t39, 1
  br i1 %t40, label %then3, label %else4
then3:
  store i1 1, i1* %t36
  br label %merge5
else4:
  %t41 = getelementptr [4 x i8], [4 x i8]* @.str1079, i32 0, i32 0
  %t42 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1079.c, i8* %t41, i64 3)
  %t43 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t42)
  br i1 %t43, label %then6, label %else7
then6:
  %t44 = getelementptr [8 x i8], [8 x i8]* @.str1080, i32 0, i32 0
  %t45 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1080.c, i8* %t44, i64 7)
  %t46 = load i64, i64* @g_last_line
  %t47 = load i64, i64* @g_last_col
  %t48 = getelementptr [47 x i8], [47 x i8]* @.str1081, i32 0, i32 0
  %t49 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1081.c, i8* %t48, i64 46)
  %t50 = getelementptr [44 x i8], [44 x i8]* @.str1082, i32 0, i32 0
  %t51 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1082.c, i8* %t50, i64 43)
  %t52 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %t49, %nyx_string* %t51)
  %t53 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %t45, i64 %t46, i64 %t47, %nyx_string* %t52)
  store i1 1, i1* %t36
  br label %merge8
else7:
  %t54 = getelementptr [12 x i8], [12 x i8]* @.str1083, i32 0, i32 0
  %t55 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1083.c, i8* %t54, i64 11)
  %t56 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t55)
  br i1 %t56, label %then9, label %else10
then9:
  %t57 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %t36
  br label %merge11
else10:
  %t58 = load i64, i64* %t4
  store i64 %t58, i64* %t59
  %t60 = load { i64, i8* }*, { i64, i8* }** %t12
  %t61 = call i64 @nyx_array_length({ i64, i8* }* %t60)
  store i64 %t61, i64* %t62
  %t63 = call { i64, i8* }* @parse__parse_statement(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t63, { i64, i8* }** %t64
  %t65 = load i64, i64* %t4
  %t66 = load i64, i64* %t59
  %t67 = icmp eq i64 %t65, %t66
  br i1 %t67, label %then12, label %else13
then12:
  %t68 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge14
else13:
  %t69 = load { i64, i8* }*, { i64, i8* }** %t12
  %t70 = call i64 @nyx_array_length({ i64, i8* }* %t69)
  %t71 = load i64, i64* %t62
  %t72 = icmp sgt i64 %t70, %t71
  br i1 %t72, label %then15, label %else16
then15:
  %t73 = load i64, i64* %t62
  store i64 %t73, i64* %t74
  br label %while_cond18
while_cond18:
  %t75 = load i64, i64* %t74
  %t76 = load { i64, i8* }*, { i64, i8* }** %t12
  %t77 = call i64 @nyx_array_length({ i64, i8* }* %t76)
  %t78 = icmp slt i64 %t75, %t77
  br i1 %t78, label %while_body19, label %while_end20
while_body19:
  %t79 = load { i64, i8* }*, { i64, i8* }** %t12
  %t80 = load i64, i64* %t74
  %t81 = call i64 @nyx_array_get({ i64, i8* }* %t79, i64 %t80)
  %t82 = inttoptr i64 %t81 to { i64, i8* }*
  store { i64, i8* }* %t82, { i64, i8* }** %t83
  %t84 = load { i64, i8* }*, { i64, i8* }** %t83
  %t85 = call i64 @nyx_array_get_checked({ i64, i8* }* %t84, i64 0, i64 2)
  %t86 = inttoptr i64 %t85 to %nyx_string*
  store %nyx_string* %t86, %nyx_string** %t87
  %t88 = load %nyx_string*, %nyx_string** %t87
  %t89 = getelementptr [10 x i8], [10 x i8]* @.str1084, i32 0, i32 0
  %t90 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1084.c, i8* %t89, i64 9)
  %t91 = call i1 @nyx_string_equals(%nyx_string* %t88, %nyx_string* %t90)
  %t92 = xor i1 %t91, true
  br i1 %t92, label %then21, label %else22
then21:
  %t93 = load { i64, i8* }*, { i64, i8* }** %t35
  %t94 = load { i64, i8* }*, { i64, i8* }** %t12
  %t95 = load i64, i64* %t74
  %t96 = call i64 @nyx_array_get({ i64, i8* }* %t94, i64 %t95)
  %t97 = load { i64, i8* }*, { i64, i8* }** %t12
  %t98 = load i64, i64* %t74
  %t99 = call i64 @nyx_array_get_tag({ i64, i8* }* %t97, i64 %t98)
  call void @nyx_array_push_tagged({ i64, i8* }* %t93, i64 %t96, i64 %t99)
  %t100 = load { i64, i8* }*, { i64, i8* }** %t12
  %t101 = load i64, i64* %t74
  %t102 = getelementptr [10 x i8], [10 x i8]* @.str1085, i32 0, i32 0
  %t103 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1085.c, i8* %t102, i64 9)
  %t104 = call { i64, i8* }* @nyx_array_new_ptr()
  %t105 = call { i64, i8* }* @make_astnode(%nyx_string* %t103, { i64, i8* }* %t104)
  %t106 = ptrtoint { i64, i8* }* %t105 to i64
  call void @nyx_array_set_tagged({ i64, i8* }* %t100, i64 %t101, i64 %t106, i64 5)
  br label %merge23
else22:
  br label %merge23
merge23:
  %t107 = load i64, i64* %t74
  %t108 = add i64 %t107, 1
  store i64 %t108, i64* %t74
  br label %while_cond18
while_end20:
  br label %merge17
else16:
  br label %merge17
merge17:
  %t109 = load { i64, i8* }*, { i64, i8* }** %t35
  %t110 = load { i64, i8* }*, { i64, i8* }** %t64
  %t111 = ptrtoint { i64, i8* }* %t110 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t109, i64 %t111, i64 5)
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
  %t112 = getelementptr [6 x i8], [6 x i8]* @.str1086, i32 0, i32 0
  %t113 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1086.c, i8* %t112, i64 5)
  %t114 = call { i64, i8* }* @nyx_array_new_ptr()
  %t115 = load { i64, i8* }*, { i64, i8* }** %t35
  %t116 = ptrtoint { i64, i8* }* %t115 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t114, i64 %t116, i64 5)
  %t117 = call { i64, i8* }* @make_astnode(%nyx_string* %t113, { i64, i8* }* %t114)
  ret { i64, i8* }* %t117
}

define internal { i64, i8* }* @parse__parse_fn_body_block(%SharedEnv_parse* %env.param) {
  %t35 = alloca { i64, i8* }*
  %t36 = alloca i1
  %t59 = alloca i64
  %t62 = alloca i64
  %t64 = alloca { i64, i8* }*
  %t74 = alloca i64
  %t83 = alloca { i64, i8* }*
  %t87 = alloca %nyx_string*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = getelementptr [11 x i8], [11 x i8]* @.str1087, i32 0, i32 0
  %t32 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1087.c, i8* %t31, i64 10)
  %t33 = call %Token @parse__expect(%SharedEnv_parse* %env.param, %nyx_string* %t32)
  %t34 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t34, { i64, i8* }** %t35
  store i1 0, i1* %t36
  br label %while_cond0
while_cond0:
  %t37 = load i1, i1* %t36
  %t38 = xor i1 %t37, true
  br i1 %t38, label %while_body1, label %while_end2
while_body1:
  %t39 = load i64, i64* %t8
  %t40 = icmp eq i64 %t39, 1
  br i1 %t40, label %then3, label %else4
then3:
  store i1 1, i1* %t36
  br label %merge5
else4:
  %t41 = getelementptr [4 x i8], [4 x i8]* @.str1088, i32 0, i32 0
  %t42 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1088.c, i8* %t41, i64 3)
  %t43 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t42)
  br i1 %t43, label %then6, label %else7
then6:
  %t44 = getelementptr [8 x i8], [8 x i8]* @.str1089, i32 0, i32 0
  %t45 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1089.c, i8* %t44, i64 7)
  %t46 = load i64, i64* @g_last_line
  %t47 = load i64, i64* @g_last_col
  %t48 = getelementptr [47 x i8], [47 x i8]* @.str1090, i32 0, i32 0
  %t49 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1090.c, i8* %t48, i64 46)
  %t50 = getelementptr [44 x i8], [44 x i8]* @.str1091, i32 0, i32 0
  %t51 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1091.c, i8* %t50, i64 43)
  %t52 = call %nyx_string* @parse__p_msg(%SharedEnv_parse* %env.param, %nyx_string* %t49, %nyx_string* %t51)
  %t53 = call i64 @parse__p_diag(%SharedEnv_parse* %env.param, %nyx_string* %t45, i64 %t46, i64 %t47, %nyx_string* %t52)
  store i1 1, i1* %t36
  br label %merge8
else7:
  %t54 = getelementptr [12 x i8], [12 x i8]* @.str1092, i32 0, i32 0
  %t55 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1092.c, i8* %t54, i64 11)
  %t56 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t55)
  br i1 %t56, label %then9, label %else10
then9:
  %t57 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  store i1 1, i1* %t36
  br label %merge11
else10:
  %t58 = load i64, i64* %t4
  store i64 %t58, i64* %t59
  %t60 = load { i64, i8* }*, { i64, i8* }** %t12
  %t61 = call i64 @nyx_array_length({ i64, i8* }* %t60)
  store i64 %t61, i64* %t62
  %t63 = call { i64, i8* }* @parse__parse_statement(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t63, { i64, i8* }** %t64
  %t65 = load i64, i64* %t4
  %t66 = load i64, i64* %t59
  %t67 = icmp eq i64 %t65, %t66
  br i1 %t67, label %then12, label %else13
then12:
  %t68 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  br label %merge14
else13:
  %t69 = load { i64, i8* }*, { i64, i8* }** %t12
  %t70 = call i64 @nyx_array_length({ i64, i8* }* %t69)
  %t71 = load i64, i64* %t62
  %t72 = icmp sgt i64 %t70, %t71
  br i1 %t72, label %then15, label %else16
then15:
  %t73 = load i64, i64* %t62
  store i64 %t73, i64* %t74
  br label %while_cond18
while_cond18:
  %t75 = load i64, i64* %t74
  %t76 = load { i64, i8* }*, { i64, i8* }** %t12
  %t77 = call i64 @nyx_array_length({ i64, i8* }* %t76)
  %t78 = icmp slt i64 %t75, %t77
  br i1 %t78, label %while_body19, label %while_end20
while_body19:
  %t79 = load { i64, i8* }*, { i64, i8* }** %t12
  %t80 = load i64, i64* %t74
  %t81 = call i64 @nyx_array_get({ i64, i8* }* %t79, i64 %t80)
  %t82 = inttoptr i64 %t81 to { i64, i8* }*
  store { i64, i8* }* %t82, { i64, i8* }** %t83
  %t84 = load { i64, i8* }*, { i64, i8* }** %t83
  %t85 = call i64 @nyx_array_get_checked({ i64, i8* }* %t84, i64 0, i64 2)
  %t86 = inttoptr i64 %t85 to %nyx_string*
  store %nyx_string* %t86, %nyx_string** %t87
  %t88 = load %nyx_string*, %nyx_string** %t87
  %t89 = getelementptr [10 x i8], [10 x i8]* @.str1093, i32 0, i32 0
  %t90 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1093.c, i8* %t89, i64 9)
  %t91 = call i1 @nyx_string_equals(%nyx_string* %t88, %nyx_string* %t90)
  %t92 = xor i1 %t91, true
  br i1 %t92, label %then21, label %else22
then21:
  %t93 = load { i64, i8* }*, { i64, i8* }** %t35
  %t94 = load { i64, i8* }*, { i64, i8* }** %t12
  %t95 = load i64, i64* %t74
  %t96 = call i64 @nyx_array_get({ i64, i8* }* %t94, i64 %t95)
  %t97 = load { i64, i8* }*, { i64, i8* }** %t12
  %t98 = load i64, i64* %t74
  %t99 = call i64 @nyx_array_get_tag({ i64, i8* }* %t97, i64 %t98)
  call void @nyx_array_push_tagged({ i64, i8* }* %t93, i64 %t96, i64 %t99)
  %t100 = load { i64, i8* }*, { i64, i8* }** %t12
  %t101 = load i64, i64* %t74
  %t102 = getelementptr [10 x i8], [10 x i8]* @.str1094, i32 0, i32 0
  %t103 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1094.c, i8* %t102, i64 9)
  %t104 = call { i64, i8* }* @nyx_array_new_ptr()
  %t105 = call { i64, i8* }* @make_astnode(%nyx_string* %t103, { i64, i8* }* %t104)
  %t106 = ptrtoint { i64, i8* }* %t105 to i64
  call void @nyx_array_set_tagged({ i64, i8* }* %t100, i64 %t101, i64 %t106, i64 5)
  br label %merge23
else22:
  br label %merge23
merge23:
  %t107 = load i64, i64* %t74
  %t108 = add i64 %t107, 1
  store i64 %t108, i64* %t74
  br label %while_cond18
while_end20:
  br label %merge17
else16:
  br label %merge17
merge17:
  %t109 = load { i64, i8* }*, { i64, i8* }** %t35
  %t110 = load { i64, i8* }*, { i64, i8* }** %t64
  %t111 = ptrtoint { i64, i8* }* %t110 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t109, i64 %t111, i64 5)
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
  %t112 = getelementptr [6 x i8], [6 x i8]* @.str1095, i32 0, i32 0
  %t113 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1095.c, i8* %t112, i64 5)
  %t114 = call { i64, i8* }* @nyx_array_new_ptr()
  %t115 = load { i64, i8* }*, { i64, i8* }** %t35
  %t116 = ptrtoint { i64, i8* }* %t115 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t114, i64 %t116, i64 5)
  %t117 = call { i64, i8* }* @make_astnode(%nyx_string* %t113, { i64, i8* }* %t114)
  ret { i64, i8* }* %t117
}

define internal { i64, i8* }* @parse__parse_assignment_or_expr(%SharedEnv_parse* %env.param) {
  %t32 = alloca { i64, i8* }*
  %t35 = alloca %nyx_string*
  %t38 = alloca { i64, i8* }*
  %t48 = alloca { i64, i8* }*
  %t52 = alloca %nyx_string*
  %t56 = alloca { i64, i8* }*
  %t67 = alloca %nyx_string*
  %t125 = alloca { i64, i8* }*
  %t129 = alloca %nyx_string*
  %t133 = alloca { i64, i8* }*
  %t140 = alloca { i64, i8* }*
  %t151 = alloca { i64, i8* }*
  %t169 = alloca { i64, i8* }*
  %t173 = alloca { i64, i8* }*
  %t182 = alloca i1
  %t193 = alloca { i64, i8* }*
  %t204 = alloca i1
  %t215 = alloca { i64, i8* }*
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  %t31 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t31, { i64, i8* }** %t32
  %t33 = load { i64, i8* }*, { i64, i8* }** %t32
  %t34 = call %nyx_string* @astnode_get_type({ i64, i8* }* %t33)
  store %nyx_string* %t34, %nyx_string** %t35
  %t36 = load { i64, i8* }*, { i64, i8* }** %t32
  %t37 = call { i64, i8* }* @astnode_get_data({ i64, i8* }* %t36)
  store { i64, i8* }* %t37, { i64, i8* }** %t38
  %t39 = load %nyx_string*, %nyx_string** %t35
  %t40 = getelementptr [11 x i8], [11 x i8]* @.str1096, i32 0, i32 0
  %t41 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1096.c, i8* %t40, i64 10)
  %t42 = call i1 @nyx_string_equals(%nyx_string* %t39, %nyx_string* %t41)
  br i1 %t42, label %then0, label %else1
then0:
  %t43 = getelementptr [7 x i8], [7 x i8]* @.str1097, i32 0, i32 0
  %t44 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1097.c, i8* %t43, i64 6)
  %t45 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t44)
  br i1 %t45, label %then3, label %else4
then3:
  %t46 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t47 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t47, { i64, i8* }** %t48
  %t49 = load { i64, i8* }*, { i64, i8* }** %t38
  %t50 = call i64 @nyx_array_get_checked({ i64, i8* }* %t49, i64 0, i64 2)
  %t51 = inttoptr i64 %t50 to %nyx_string*
  store %nyx_string* %t51, %nyx_string** %t52
  %t53 = load %nyx_string*, %nyx_string** %t52
  %t54 = call { i64, i8* }* @nyx_array_new_ptr()
  %t55 = call { i64, i8* }* @make_astnode(%nyx_string* %t53, { i64, i8* }* %t54)
  store { i64, i8* }* %t55, { i64, i8* }** %t56
  %t57 = getelementptr [7 x i8], [7 x i8]* @.str1098, i32 0, i32 0
  %t58 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1098.c, i8* %t57, i64 6)
  %t59 = call { i64, i8* }* @nyx_array_new_ptr()
  %t60 = load { i64, i8* }*, { i64, i8* }** %t56
  %t61 = ptrtoint { i64, i8* }* %t60 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t59, i64 %t61, i64 5)
  %t62 = load { i64, i8* }*, { i64, i8* }** %t48
  %t63 = ptrtoint { i64, i8* }* %t62 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t59, i64 %t63, i64 5)
  %t64 = call { i64, i8* }* @make_astnode(%nyx_string* %t58, { i64, i8* }* %t59)
  ret { i64, i8* }* %t64
else4:
  br label %merge5
merge5:
  %t65 = getelementptr [1 x i8], [1 x i8]* @.str1099, i32 0, i32 0
  %t66 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1099.c, i8* %t65, i64 0)
  store %nyx_string* %t66, %nyx_string** %t67
  %t68 = getelementptr [12 x i8], [12 x i8]* @.str1100, i32 0, i32 0
  %t69 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1100.c, i8* %t68, i64 11)
  %t70 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t69)
  br i1 %t70, label %then6, label %else7
then6:
  %t71 = getelementptr [5 x i8], [5 x i8]* @.str1101, i32 0, i32 0
  %t72 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1101.c, i8* %t71, i64 4)
  store %nyx_string* %t72, %nyx_string** %t67
  br label %merge8
else7:
  br label %merge8
merge8:
  %t73 = getelementptr [13 x i8], [13 x i8]* @.str1102, i32 0, i32 0
  %t74 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1102.c, i8* %t73, i64 12)
  %t75 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t74)
  br i1 %t75, label %then9, label %else10
then9:
  %t76 = getelementptr [6 x i8], [6 x i8]* @.str1103, i32 0, i32 0
  %t77 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1103.c, i8* %t76, i64 5)
  store %nyx_string* %t77, %nyx_string** %t67
  br label %merge11
else10:
  br label %merge11
merge11:
  %t78 = getelementptr [12 x i8], [12 x i8]* @.str1104, i32 0, i32 0
  %t79 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1104.c, i8* %t78, i64 11)
  %t80 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t79)
  br i1 %t80, label %then12, label %else13
then12:
  %t81 = getelementptr [5 x i8], [5 x i8]* @.str1105, i32 0, i32 0
  %t82 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1105.c, i8* %t81, i64 4)
  store %nyx_string* %t82, %nyx_string** %t67
  br label %merge14
else13:
  br label %merge14
merge14:
  %t83 = getelementptr [13 x i8], [13 x i8]* @.str1106, i32 0, i32 0
  %t84 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1106.c, i8* %t83, i64 12)
  %t85 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t84)
  br i1 %t85, label %then15, label %else16
then15:
  %t86 = getelementptr [6 x i8], [6 x i8]* @.str1107, i32 0, i32 0
  %t87 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1107.c, i8* %t86, i64 5)
  store %nyx_string* %t87, %nyx_string** %t67
  br label %merge17
else16:
  br label %merge17
merge17:
  %t88 = getelementptr [15 x i8], [15 x i8]* @.str1108, i32 0, i32 0
  %t89 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1108.c, i8* %t88, i64 14)
  %t90 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t89)
  br i1 %t90, label %then18, label %else19
then18:
  %t91 = getelementptr [8 x i8], [8 x i8]* @.str1109, i32 0, i32 0
  %t92 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1109.c, i8* %t91, i64 7)
  store %nyx_string* %t92, %nyx_string** %t67
  br label %merge20
else19:
  br label %merge20
merge20:
  %t93 = getelementptr [11 x i8], [11 x i8]* @.str1110, i32 0, i32 0
  %t94 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1110.c, i8* %t93, i64 10)
  %t95 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t94)
  br i1 %t95, label %then21, label %else22
then21:
  %t96 = getelementptr [4 x i8], [4 x i8]* @.str1111, i32 0, i32 0
  %t97 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1111.c, i8* %t96, i64 3)
  store %nyx_string* %t97, %nyx_string** %t67
  br label %merge23
else22:
  br label %merge23
merge23:
  %t98 = getelementptr [12 x i8], [12 x i8]* @.str1112, i32 0, i32 0
  %t99 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1112.c, i8* %t98, i64 11)
  %t100 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t99)
  br i1 %t100, label %then24, label %else25
then24:
  %t101 = getelementptr [5 x i8], [5 x i8]* @.str1113, i32 0, i32 0
  %t102 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1113.c, i8* %t101, i64 4)
  store %nyx_string* %t102, %nyx_string** %t67
  br label %merge26
else25:
  br label %merge26
merge26:
  %t103 = getelementptr [13 x i8], [13 x i8]* @.str1114, i32 0, i32 0
  %t104 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1114.c, i8* %t103, i64 12)
  %t105 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t104)
  br i1 %t105, label %then27, label %else28
then27:
  %t106 = getelementptr [6 x i8], [6 x i8]* @.str1115, i32 0, i32 0
  %t107 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1115.c, i8* %t106, i64 5)
  store %nyx_string* %t107, %nyx_string** %t67
  br label %merge29
else28:
  br label %merge29
merge29:
  %t108 = getelementptr [18 x i8], [18 x i8]* @.str1116, i32 0, i32 0
  %t109 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1116.c, i8* %t108, i64 17)
  %t110 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t109)
  br i1 %t110, label %then30, label %else31
then30:
  %t111 = getelementptr [11 x i8], [11 x i8]* @.str1117, i32 0, i32 0
  %t112 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1117.c, i8* %t111, i64 10)
  store %nyx_string* %t112, %nyx_string** %t67
  br label %merge32
else31:
  br label %merge32
merge32:
  %t113 = getelementptr [19 x i8], [19 x i8]* @.str1118, i32 0, i32 0
  %t114 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1118.c, i8* %t113, i64 18)
  %t115 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t114)
  br i1 %t115, label %then33, label %else34
then33:
  %t116 = getelementptr [12 x i8], [12 x i8]* @.str1119, i32 0, i32 0
  %t117 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1119.c, i8* %t116, i64 11)
  store %nyx_string* %t117, %nyx_string** %t67
  br label %merge35
else34:
  br label %merge35
merge35:
  %t118 = load %nyx_string*, %nyx_string** %t67
  %t119 = getelementptr [1 x i8], [1 x i8]* @.str1120, i32 0, i32 0
  %t120 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1120.c, i8* %t119, i64 0)
  %t121 = call i1 @nyx_string_equals(%nyx_string* %t118, %nyx_string* %t120)
  %t122 = xor i1 %t121, true
  br i1 %t122, label %then36, label %else37
then36:
  %t123 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t124 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t124, { i64, i8* }** %t125
  %t126 = load { i64, i8* }*, { i64, i8* }** %t38
  %t127 = call i64 @nyx_array_get_checked({ i64, i8* }* %t126, i64 0, i64 2)
  %t128 = inttoptr i64 %t127 to %nyx_string*
  store %nyx_string* %t128, %nyx_string** %t129
  %t130 = load %nyx_string*, %nyx_string** %t129
  %t131 = call { i64, i8* }* @nyx_array_new_ptr()
  %t132 = call { i64, i8* }* @make_astnode(%nyx_string* %t130, { i64, i8* }* %t131)
  store { i64, i8* }* %t132, { i64, i8* }** %t133
  %t134 = getelementptr [11 x i8], [11 x i8]* @.str1121, i32 0, i32 0
  %t135 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1121.c, i8* %t134, i64 10)
  %t136 = call { i64, i8* }* @nyx_array_new_ptr()
  %t137 = load %nyx_string*, %nyx_string** %t129
  %t138 = ptrtoint %nyx_string* %t137 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t136, i64 %t138, i64 2)
  %t139 = call { i64, i8* }* @make_astnode(%nyx_string* %t135, { i64, i8* }* %t136)
  store { i64, i8* }* %t139, { i64, i8* }** %t140
  %t141 = getelementptr [6 x i8], [6 x i8]* @.str1122, i32 0, i32 0
  %t142 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1122.c, i8* %t141, i64 5)
  %t143 = call { i64, i8* }* @nyx_array_new_ptr()
  %t144 = load %nyx_string*, %nyx_string** %t67
  %t145 = ptrtoint %nyx_string* %t144 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t143, i64 %t145, i64 2)
  %t146 = load { i64, i8* }*, { i64, i8* }** %t140
  %t147 = ptrtoint { i64, i8* }* %t146 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t143, i64 %t147, i64 5)
  %t148 = load { i64, i8* }*, { i64, i8* }** %t125
  %t149 = ptrtoint { i64, i8* }* %t148 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t143, i64 %t149, i64 5)
  %t150 = call { i64, i8* }* @make_astnode(%nyx_string* %t142, { i64, i8* }* %t143)
  store { i64, i8* }* %t150, { i64, i8* }** %t151
  %t152 = getelementptr [7 x i8], [7 x i8]* @.str1123, i32 0, i32 0
  %t153 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1123.c, i8* %t152, i64 6)
  %t154 = call { i64, i8* }* @nyx_array_new_ptr()
  %t155 = load { i64, i8* }*, { i64, i8* }** %t133
  %t156 = ptrtoint { i64, i8* }* %t155 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t154, i64 %t156, i64 5)
  %t157 = load { i64, i8* }*, { i64, i8* }** %t151
  %t158 = ptrtoint { i64, i8* }* %t157 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t154, i64 %t158, i64 5)
  %t159 = call { i64, i8* }* @make_astnode(%nyx_string* %t153, { i64, i8* }* %t154)
  ret { i64, i8* }* %t159
else37:
  br label %merge38
merge38:
  br label %merge2
else1:
  br label %merge2
merge2:
  %t160 = load %nyx_string*, %nyx_string** %t35
  %t161 = getelementptr [6 x i8], [6 x i8]* @.str1124, i32 0, i32 0
  %t162 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1124.c, i8* %t161, i64 5)
  %t163 = call i1 @nyx_string_equals(%nyx_string* %t160, %nyx_string* %t162)
  br i1 %t163, label %then39, label %else40
then39:
  %t164 = getelementptr [7 x i8], [7 x i8]* @.str1125, i32 0, i32 0
  %t165 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1125.c, i8* %t164, i64 6)
  %t166 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t165)
  br i1 %t166, label %then42, label %else43
then42:
  %t167 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t168 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t168, { i64, i8* }** %t169
  %t170 = load { i64, i8* }*, { i64, i8* }** %t38
  %t171 = call i64 @nyx_array_get({ i64, i8* }* %t170, i64 0)
  %t172 = inttoptr i64 %t171 to { i64, i8* }*
  store { i64, i8* }* %t172, { i64, i8* }** %t173
  %t174 = getelementptr [13 x i8], [13 x i8]* @.str1126, i32 0, i32 0
  %t175 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1126.c, i8* %t174, i64 12)
  %t176 = call { i64, i8* }* @nyx_array_new_ptr()
  %t177 = load { i64, i8* }*, { i64, i8* }** %t173
  %t178 = ptrtoint { i64, i8* }* %t177 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t176, i64 %t178, i64 5)
  %t179 = load { i64, i8* }*, { i64, i8* }** %t169
  %t180 = ptrtoint { i64, i8* }* %t179 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t176, i64 %t180, i64 5)
  %t181 = call { i64, i8* }* @make_astnode(%nyx_string* %t175, { i64, i8* }* %t176)
  ret { i64, i8* }* %t181
else43:
  br label %merge44
merge44:
  br label %merge41
else40:
  br label %merge41
merge41:
  store i1 false, i1* %t182
  %t183 = load %nyx_string*, %nyx_string** %t35
  %t184 = getelementptr [6 x i8], [6 x i8]* @.str1127, i32 0, i32 0
  %t185 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1127.c, i8* %t184, i64 5)
  %t186 = call i1 @nyx_string_equals(%nyx_string* %t183, %nyx_string* %t185)
  br i1 %t186, label %sc_and_rhs45, label %sc_and_end46
sc_and_rhs45:
  %t187 = getelementptr [7 x i8], [7 x i8]* @.str1128, i32 0, i32 0
  %t188 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1128.c, i8* %t187, i64 6)
  %t189 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t188)
  store i1 %t189, i1* %t182
  br label %sc_and_end46
sc_and_end46:
  %t190 = load i1, i1* %t182
  br i1 %t190, label %then47, label %else48
then47:
  %t191 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t192 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t192, { i64, i8* }** %t193
  %t194 = getelementptr [13 x i8], [13 x i8]* @.str1129, i32 0, i32 0
  %t195 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1129.c, i8* %t194, i64 12)
  %t196 = call { i64, i8* }* @nyx_array_new_ptr()
  %t197 = load { i64, i8* }*, { i64, i8* }** %t38
  %t198 = call i64 @nyx_array_get({ i64, i8* }* %t197, i64 0)
  call void @nyx_array_push({ i64, i8* }* %t196, i64 %t198)
  %t199 = load { i64, i8* }*, { i64, i8* }** %t38
  %t200 = call i64 @nyx_array_get({ i64, i8* }* %t199, i64 1)
  call void @nyx_array_push({ i64, i8* }* %t196, i64 %t200)
  %t201 = load { i64, i8* }*, { i64, i8* }** %t193
  %t202 = ptrtoint { i64, i8* }* %t201 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t196, i64 %t202, i64 5)
  %t203 = call { i64, i8* }* @make_astnode(%nyx_string* %t195, { i64, i8* }* %t196)
  ret { i64, i8* }* %t203
else48:
  br label %merge49
merge49:
  store i1 false, i1* %t204
  %t205 = load %nyx_string*, %nyx_string** %t35
  %t206 = getelementptr [13 x i8], [13 x i8]* @.str1130, i32 0, i32 0
  %t207 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1130.c, i8* %t206, i64 12)
  %t208 = call i1 @nyx_string_equals(%nyx_string* %t205, %nyx_string* %t207)
  br i1 %t208, label %sc_and_rhs50, label %sc_and_end51
sc_and_rhs50:
  %t209 = getelementptr [7 x i8], [7 x i8]* @.str1131, i32 0, i32 0
  %t210 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1131.c, i8* %t209, i64 6)
  %t211 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t210)
  store i1 %t211, i1* %t204
  br label %sc_and_end51
sc_and_end51:
  %t212 = load i1, i1* %t204
  br i1 %t212, label %then52, label %else53
then52:
  %t213 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
  %t214 = call { i64, i8* }* @parse__parse_expression(%SharedEnv_parse* %env.param)
  store { i64, i8* }* %t214, { i64, i8* }** %t215
  %t216 = getelementptr [13 x i8], [13 x i8]* @.str1132, i32 0, i32 0
  %t217 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1132.c, i8* %t216, i64 12)
  %t218 = call { i64, i8* }* @nyx_array_new_ptr()
  %t219 = load { i64, i8* }*, { i64, i8* }** %t38
  %t220 = call i64 @nyx_array_get({ i64, i8* }* %t219, i64 0)
  call void @nyx_array_push({ i64, i8* }* %t218, i64 %t220)
  %t221 = load { i64, i8* }*, { i64, i8* }** %t38
  %t222 = call i64 @nyx_array_get({ i64, i8* }* %t221, i64 1)
  call void @nyx_array_push({ i64, i8* }* %t218, i64 %t222)
  %t223 = load { i64, i8* }*, { i64, i8* }** %t215
  %t224 = ptrtoint { i64, i8* }* %t223 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t218, i64 %t224, i64 5)
  %t225 = call { i64, i8* }* @make_astnode(%nyx_string* %t217, { i64, i8* }* %t218)
  ret { i64, i8* }* %t225
else53:
  br label %merge54
merge54:
  %t226 = load { i64, i8* }*, { i64, i8* }** %t32
  ret { i64, i8* }* %t226
}

define internal i64 @parse__synchronize(%SharedEnv_parse* %env.param) {
  %t31 = alloca i1
  %t39 = alloca %nyx_string*
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
  %t1 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 0
  %t2 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 1
  %t3 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 2
  %t4 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 3
  %t5 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 4
  %t6 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 5
  %t7 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 6
  %t8 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 7
  %t9 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 8
  %t10 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 9
  %t11 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 10
  %t12 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 11
  %t13 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 12
  %t14 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 13
  %t15 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 14
  %t16 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 15
  %t17 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 16
  %t18 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 17
  %t19 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 18
  %t20 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 19
  %t21 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 20
  %t22 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 21
  %t23 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 22
  %t24 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 23
  %t25 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 24
  %t26 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 25
  %t27 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 26
  %t28 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 27
  %t29 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 28
  %t30 = getelementptr %SharedEnv_parse, %SharedEnv_parse* %env.param, i32 0, i32 29
  store i1 0, i1* %t31
  br label %while_cond0
while_cond0:
  %t32 = load i1, i1* %t31
  %t33 = xor i1 %t32, true
  br i1 %t33, label %while_body1, label %while_end2
while_body1:
  %t34 = getelementptr [4 x i8], [4 x i8]* @.str1133, i32 0, i32 0
  %t35 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1133.c, i8* %t34, i64 3)
  %t36 = call i1 @parse__check(%SharedEnv_parse* %env.param, %nyx_string* %t35)
  br i1 %t36, label %then3, label %else4
then3:
  store i1 1, i1* %t31
  br label %merge5
else4:
  %t37 = call %Token @parse__peek(%SharedEnv_parse* %env.param)
  %t38 = call %nyx_string* @get_token_type(%Token %t37)
  store %nyx_string* %t38, %nyx_string** %t39
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
  %t54 = load %nyx_string*, %nyx_string** %t39
  %t55 = getelementptr [3 x i8], [3 x i8]* @.str1134, i32 0, i32 0
  %t56 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1134.c, i8* %t55, i64 2)
  %t57 = call i1 @nyx_string_equals(%nyx_string* %t54, %nyx_string* %t56)
  br i1 %t57, label %sc_or_end7, label %sc_or_rhs6
sc_or_rhs6:
  %t58 = load %nyx_string*, %nyx_string** %t39
  %t59 = getelementptr [4 x i8], [4 x i8]* @.str1135, i32 0, i32 0
  %t60 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1135.c, i8* %t59, i64 3)
  %t61 = call i1 @nyx_string_equals(%nyx_string* %t58, %nyx_string* %t60)
  store i1 %t61, i1* %t53
  br label %sc_or_end7
sc_or_end7:
  %t62 = load i1, i1* %t53
  br i1 %t62, label %sc_or_end9, label %sc_or_rhs8
sc_or_rhs8:
  %t63 = load %nyx_string*, %nyx_string** %t39
  %t64 = getelementptr [4 x i8], [4 x i8]* @.str1136, i32 0, i32 0
  %t65 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1136.c, i8* %t64, i64 3)
  %t66 = call i1 @nyx_string_equals(%nyx_string* %t63, %nyx_string* %t65)
  store i1 %t66, i1* %t52
  br label %sc_or_end9
sc_or_end9:
  %t67 = load i1, i1* %t52
  br i1 %t67, label %sc_or_end11, label %sc_or_rhs10
sc_or_rhs10:
  %t68 = load %nyx_string*, %nyx_string** %t39
  %t69 = getelementptr [6 x i8], [6 x i8]* @.str1137, i32 0, i32 0
  %t70 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1137.c, i8* %t69, i64 5)
  %t71 = call i1 @nyx_string_equals(%nyx_string* %t68, %nyx_string* %t70)
  store i1 %t71, i1* %t51
  br label %sc_or_end11
sc_or_end11:
  %t72 = load i1, i1* %t51
  br i1 %t72, label %sc_or_end13, label %sc_or_rhs12
sc_or_rhs12:
  %t73 = load %nyx_string*, %nyx_string** %t39
  %t74 = getelementptr [7 x i8], [7 x i8]* @.str1138, i32 0, i32 0
  %t75 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1138.c, i8* %t74, i64 6)
  %t76 = call i1 @nyx_string_equals(%nyx_string* %t73, %nyx_string* %t75)
  store i1 %t76, i1* %t50
  br label %sc_or_end13
sc_or_end13:
  %t77 = load i1, i1* %t50
  br i1 %t77, label %sc_or_end15, label %sc_or_rhs14
sc_or_rhs14:
  %t78 = load %nyx_string*, %nyx_string** %t39
  %t79 = getelementptr [5 x i8], [5 x i8]* @.str1139, i32 0, i32 0
  %t80 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1139.c, i8* %t79, i64 4)
  %t81 = call i1 @nyx_string_equals(%nyx_string* %t78, %nyx_string* %t80)
  store i1 %t81, i1* %t49
  br label %sc_or_end15
sc_or_end15:
  %t82 = load i1, i1* %t49
  br i1 %t82, label %sc_or_end17, label %sc_or_rhs16
sc_or_rhs16:
  %t83 = load %nyx_string*, %nyx_string** %t39
  %t84 = getelementptr [3 x i8], [3 x i8]* @.str1140, i32 0, i32 0
  %t85 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1140.c, i8* %t84, i64 2)
  %t86 = call i1 @nyx_string_equals(%nyx_string* %t83, %nyx_string* %t85)
  store i1 %t86, i1* %t48
  br label %sc_or_end17
sc_or_end17:
  %t87 = load i1, i1* %t48
  br i1 %t87, label %sc_or_end19, label %sc_or_rhs18
sc_or_rhs18:
  %t88 = load %nyx_string*, %nyx_string** %t39
  %t89 = getelementptr [6 x i8], [6 x i8]* @.str1141, i32 0, i32 0
  %t90 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1141.c, i8* %t89, i64 5)
  %t91 = call i1 @nyx_string_equals(%nyx_string* %t88, %nyx_string* %t90)
  store i1 %t91, i1* %t47
  br label %sc_or_end19
sc_or_end19:
  %t92 = load i1, i1* %t47
  br i1 %t92, label %sc_or_end21, label %sc_or_rhs20
sc_or_rhs20:
  %t93 = load %nyx_string*, %nyx_string** %t39
  %t94 = getelementptr [4 x i8], [4 x i8]* @.str1142, i32 0, i32 0
  %t95 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1142.c, i8* %t94, i64 3)
  %t96 = call i1 @nyx_string_equals(%nyx_string* %t93, %nyx_string* %t95)
  store i1 %t96, i1* %t46
  br label %sc_or_end21
sc_or_end21:
  %t97 = load i1, i1* %t46
  br i1 %t97, label %sc_or_end23, label %sc_or_rhs22
sc_or_rhs22:
  %t98 = load %nyx_string*, %nyx_string** %t39
  %t99 = getelementptr [7 x i8], [7 x i8]* @.str1143, i32 0, i32 0
  %t100 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1143.c, i8* %t99, i64 6)
  %t101 = call i1 @nyx_string_equals(%nyx_string* %t98, %nyx_string* %t100)
  store i1 %t101, i1* %t45
  br label %sc_or_end23
sc_or_end23:
  %t102 = load i1, i1* %t45
  br i1 %t102, label %sc_or_end25, label %sc_or_rhs24
sc_or_rhs24:
  %t103 = load %nyx_string*, %nyx_string** %t39
  %t104 = getelementptr [7 x i8], [7 x i8]* @.str1144, i32 0, i32 0
  %t105 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1144.c, i8* %t104, i64 6)
  %t106 = call i1 @nyx_string_equals(%nyx_string* %t103, %nyx_string* %t105)
  store i1 %t106, i1* %t44
  br label %sc_or_end25
sc_or_end25:
  %t107 = load i1, i1* %t44
  br i1 %t107, label %sc_or_end27, label %sc_or_rhs26
sc_or_rhs26:
  %t108 = load %nyx_string*, %nyx_string** %t39
  %t109 = getelementptr [7 x i8], [7 x i8]* @.str1145, i32 0, i32 0
  %t110 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1145.c, i8* %t109, i64 6)
  %t111 = call i1 @nyx_string_equals(%nyx_string* %t108, %nyx_string* %t110)
  store i1 %t111, i1* %t43
  br label %sc_or_end27
sc_or_end27:
  %t112 = load i1, i1* %t43
  br i1 %t112, label %sc_or_end29, label %sc_or_rhs28
sc_or_rhs28:
  %t113 = load %nyx_string*, %nyx_string** %t39
  %t114 = getelementptr [6 x i8], [6 x i8]* @.str1146, i32 0, i32 0
  %t115 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1146.c, i8* %t114, i64 5)
  %t116 = call i1 @nyx_string_equals(%nyx_string* %t113, %nyx_string* %t115)
  store i1 %t116, i1* %t42
  br label %sc_or_end29
sc_or_end29:
  %t117 = load i1, i1* %t42
  br i1 %t117, label %sc_or_end31, label %sc_or_rhs30
sc_or_rhs30:
  %t118 = load %nyx_string*, %nyx_string** %t39
  %t119 = getelementptr [5 x i8], [5 x i8]* @.str1147, i32 0, i32 0
  %t120 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1147.c, i8* %t119, i64 4)
  %t121 = call i1 @nyx_string_equals(%nyx_string* %t118, %nyx_string* %t120)
  store i1 %t121, i1* %t41
  br label %sc_or_end31
sc_or_end31:
  %t122 = load i1, i1* %t41
  br i1 %t122, label %sc_or_end33, label %sc_or_rhs32
sc_or_rhs32:
  %t123 = load %nyx_string*, %nyx_string** %t39
  %t124 = getelementptr [6 x i8], [6 x i8]* @.str1148, i32 0, i32 0
  %t125 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1148.c, i8* %t124, i64 5)
  %t126 = call i1 @nyx_string_equals(%nyx_string* %t123, %nyx_string* %t125)
  store i1 %t126, i1* %t40
  br label %sc_or_end33
sc_or_end33:
  %t127 = load i1, i1* %t40
  br i1 %t127, label %then34, label %else35
then34:
  store i1 1, i1* %t31
  br label %merge36
else35:
  %t128 = load %nyx_string*, %nyx_string** %t39
  %t129 = getelementptr [12 x i8], [12 x i8]* @.str1149, i32 0, i32 0
  %t130 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1149.c, i8* %t129, i64 11)
  %t131 = call i1 @nyx_string_equals(%nyx_string* %t128, %nyx_string* %t130)
  br i1 %t131, label %then37, label %else38
then37:
  store i1 1, i1* %t31
  br label %merge39
else38:
  %t132 = call %Token @parse__advance(%SharedEnv_parse* %env.param)
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

