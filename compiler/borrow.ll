source_filename = "script.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [7 x i8] c"String\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [6 x i8] c"Array\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [4 x i8] c"Map\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [7 x i8] c"Option\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [7 x i8] c"Result\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [14 x i8] c"StringBuilder\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [7 x i8] c"Array<\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [5 x i8] c"Map<\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [8 x i8] c"Option<\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [8 x i8] c"Result<\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [3 x i8] c"fn\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [2 x i8] c"<\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [19 x i8] c"identifier_pattern\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [14 x i8] c"match_pattern\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [15 x i8] c"struct_pattern\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [21 x i8] c"nested_match_pattern\00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [19 x i8] c"identifier_pattern\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [14 x i8] c"match_pattern\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [11 x i8] c"NYX_BORROW\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [6 x i8] c"error\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [5 x i8] c"warn\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [8 x i8] c"addr_of\00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [12 x i8] c"addr_of_mut\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [1 x i8] c"\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [1 x i8] c"\00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [5 x i8] c"self\00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [1 x i8] c"\00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [8 x i8] c"addr_of\00"
@.str28.c = internal global %nyx_string* null
@.str29 = private unnamed_addr constant [12 x i8] c"addr_of_mut\00"
@.str29.c = internal global %nyx_string* null
@.str30 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str30.c = internal global %nyx_string* null
@.str31 = private unnamed_addr constant [1 x i8] c"\00"
@.str31.c = internal global %nyx_string* null
@.str32 = private unnamed_addr constant [5 x i8] c"call\00"
@.str32.c = internal global %nyx_string* null
@.str33 = private unnamed_addr constant [1 x i8] c"\00"
@.str33.c = internal global %nyx_string* null
@.str34 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str34.c = internal global %nyx_string* null
@.str35 = private unnamed_addr constant [1 x i8] c"\00"
@.str35.c = internal global %nyx_string* null
@.str36 = private unnamed_addr constant [1 x i8] c"\00"
@.str36.c = internal global %nyx_string* null
@.str37 = private unnamed_addr constant [1 x i8] c"\00"
@.str37.c = internal global %nyx_string* null
@.str38 = private unnamed_addr constant [1 x i8] c"\00"
@.str38.c = internal global %nyx_string* null
@.str39 = private unnamed_addr constant [1 x i8] c"\00"
@.str39.c = internal global %nyx_string* null
@.str40 = private unnamed_addr constant [6 x i8] c"array\00"
@.str40.c = internal global %nyx_string* null
@.str41 = private unnamed_addr constant [10 x i8] c"tuple_lit\00"
@.str41.c = internal global %nyx_string* null
@.str42 = private unnamed_addr constant [1 x i8] c"\00"
@.str42.c = internal global %nyx_string* null
@.str43 = private unnamed_addr constant [1 x i8] c"\00"
@.str43.c = internal global %nyx_string* null
@.str44 = private unnamed_addr constant [12 x i8] c"struct_init\00"
@.str44.c = internal global %nyx_string* null
@.str45 = private unnamed_addr constant [1 x i8] c"\00"
@.str45.c = internal global %nyx_string* null
@.str46 = private unnamed_addr constant [1 x i8] c"\00"
@.str46.c = internal global %nyx_string* null
@.str47 = private unnamed_addr constant [7 x i8] c"number\00"
@.str47.c = internal global %nyx_string* null
@.str48 = private unnamed_addr constant [10 x i8] c"float_lit\00"
@.str48.c = internal global %nyx_string* null
@.str49 = private unnamed_addr constant [7 x i8] c"string\00"
@.str49.c = internal global %nyx_string* null
@.str50 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str50.c = internal global %nyx_string* null
@.str51 = private unnamed_addr constant [5 x i8] c"char\00"
@.str51.c = internal global %nyx_string* null
@.str52 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str52.c = internal global %nyx_string* null
@.str53 = private unnamed_addr constant [1 x i8] c"\00"
@.str53.c = internal global %nyx_string* null
@.str54 = private unnamed_addr constant [30 x i8] c"NYX1220: use of freed value '\00"
@.str54.c = internal global %nyx_string* null
@.str55 = private unnamed_addr constant [2 x i8] c"'\00"
@.str55.c = internal global %nyx_string* null
@.str56 = private unnamed_addr constant [8 x i8] c" (line \00"
@.str56.c = internal global %nyx_string* null
@.str57 = private unnamed_addr constant [2 x i8] c")\00"
@.str57.c = internal global %nyx_string* null
@.str58 = private unnamed_addr constant [8 x i8] c"NYX1201\00"
@.str58.c = internal global %nyx_string* null
@.str59 = private unnamed_addr constant [8 x i8] c"NYX1230\00"
@.str59.c = internal global %nyx_string* null
@.str60 = private unnamed_addr constant [23 x i8] c": use of moved value '\00"
@.str60.c = internal global %nyx_string* null
@.str61 = private unnamed_addr constant [2 x i8] c"'\00"
@.str61.c = internal global %nyx_string* null
@.str62 = private unnamed_addr constant [8 x i8] c" (line \00"
@.str62.c = internal global %nyx_string* null
@.str63 = private unnamed_addr constant [2 x i8] c")\00"
@.str63.c = internal global %nyx_string* null
@.str64 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str64.c = internal global %nyx_string* null
@.str65 = private unnamed_addr constant [6 x i8] c"error\00"
@.str65.c = internal global %nyx_string* null
@.str66 = private unnamed_addr constant [9 x i8] c"wildcard\00"
@.str66.c = internal global %nyx_string* null
@.str67 = private unnamed_addr constant [6 x i8] c"break\00"
@.str67.c = internal global %nyx_string* null
@.str68 = private unnamed_addr constant [9 x i8] c"continue\00"
@.str68.c = internal global %nyx_string* null
@.str69 = private unnamed_addr constant [11 x i8] c"await_expr\00"
@.str69.c = internal global %nyx_string* null
@.str70 = private unnamed_addr constant [7 x i8] c"struct\00"
@.str70.c = internal global %nyx_string* null
@.str71 = private unnamed_addr constant [9 x i8] c"enum_def\00"
@.str71.c = internal global %nyx_string* null
@.str72 = private unnamed_addr constant [10 x i8] c"trait_def\00"
@.str72.c = internal global %nyx_string* null
@.str73 = private unnamed_addr constant [7 x i8] c"import\00"
@.str73.c = internal global %nyx_string* null
@.str74 = private unnamed_addr constant [14 x i8] c"import_module\00"
@.str74.c = internal global %nyx_string* null
@.str75 = private unnamed_addr constant [12 x i8] c"module_decl\00"
@.str75.c = internal global %nyx_string* null
@.str76 = private unnamed_addr constant [11 x i8] c"type_alias\00"
@.str76.c = internal global %nyx_string* null
@.str77 = private unnamed_addr constant [10 x i8] c"extern_fn\00"
@.str77.c = internal global %nyx_string* null
@.str78 = private unnamed_addr constant [14 x i8] c"match_pattern\00"
@.str78.c = internal global %nyx_string* null
@.str79 = private unnamed_addr constant [13 x i8] c"enum_variant\00"
@.str79.c = internal global %nyx_string* null
@.str80 = private unnamed_addr constant [7 x i8] c"sizeof\00"
@.str80.c = internal global %nyx_string* null
@.str81 = private unnamed_addr constant [8 x i8] c"alignof\00"
@.str81.c = internal global %nyx_string* null
@.str82 = private unnamed_addr constant [11 x i8] c"inline_asm\00"
@.str82.c = internal global %nyx_string* null
@.str83 = private unnamed_addr constant [15 x i8] c"inline_asm_gcc\00"
@.str83.c = internal global %nyx_string* null
@.str84 = private unnamed_addr constant [13 x i8] c"generic_call\00"
@.str84.c = internal global %nyx_string* null
@.str85 = private unnamed_addr constant [10 x i8] c"tuple_lit\00"
@.str85.c = internal global %nyx_string* null
@.str86 = private unnamed_addr constant [12 x i8] c"tuple_index\00"
@.str86.c = internal global %nyx_string* null
@.str87 = private unnamed_addr constant [6 x i8] c"block\00"
@.str87.c = internal global %nyx_string* null
@.str88 = private unnamed_addr constant [3 x i8] c"if\00"
@.str88.c = internal global %nyx_string* null
@.str89 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str89.c = internal global %nyx_string* null
@.str90 = private unnamed_addr constant [6 x i8] c"while\00"
@.str90.c = internal global %nyx_string* null
@.str91 = private unnamed_addr constant [10 x i8] c"while_let\00"
@.str91.c = internal global %nyx_string* null
@.str92 = private unnamed_addr constant [4 x i8] c"for\00"
@.str92.c = internal global %nyx_string* null
@.str93 = private unnamed_addr constant [7 x i8] c"return\00"
@.str93.c = internal global %nyx_string* null
@.str94 = private unnamed_addr constant [1 x i8] c"\00"
@.str94.c = internal global %nyx_string* null
@.str95 = private unnamed_addr constant [30 x i8] c"NYX1223: reference to local '\00"
@.str95.c = internal global %nyx_string* null
@.str96 = private unnamed_addr constant [38 x i8] c"' may escape via a returning function\00"
@.str96.c = internal global %nyx_string* null
@.str97 = private unnamed_addr constant [8 x i8] c" (line \00"
@.str97.c = internal global %nyx_string* null
@.str98 = private unnamed_addr constant [2 x i8] c")\00"
@.str98.c = internal global %nyx_string* null
@.str99 = private unnamed_addr constant [30 x i8] c"NYX1222: reference to local '\00"
@.str99.c = internal global %nyx_string* null
@.str100 = private unnamed_addr constant [36 x i8] c"' escapes the function that owns it\00"
@.str100.c = internal global %nyx_string* null
@.str101 = private unnamed_addr constant [8 x i8] c" (line \00"
@.str101.c = internal global %nyx_string* null
@.str102 = private unnamed_addr constant [2 x i8] c")\00"
@.str102.c = internal global %nyx_string* null
@.str103 = private unnamed_addr constant [4 x i8] c"let\00"
@.str103.c = internal global %nyx_string* null
@.str104 = private unnamed_addr constant [1 x i8] c"\00"
@.str104.c = internal global %nyx_string* null
@.str105 = private unnamed_addr constant [6 x i8] c"const\00"
@.str105.c = internal global %nyx_string* null
@.str106 = private unnamed_addr constant [9 x i8] c"function\00"
@.str106.c = internal global %nyx_string* null
@.str107 = private unnamed_addr constant [9 x i8] c"async_fn\00"
@.str107.c = internal global %nyx_string* null
@.str108 = private unnamed_addr constant [5 x i8] c"impl\00"
@.str108.c = internal global %nyx_string* null
@.str109 = private unnamed_addr constant [11 x i8] c"impl_trait\00"
@.str109.c = internal global %nyx_string* null
@.str110 = private unnamed_addr constant [7 x i8] c"export\00"
@.str110.c = internal global %nyx_string* null
@.str111 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str111.c = internal global %nyx_string* null
@.str112 = private unnamed_addr constant [5 x i8] c"unop\00"
@.str112.c = internal global %nyx_string* null
@.str113 = private unnamed_addr constant [5 x i8] c"call\00"
@.str113.c = internal global %nyx_string* null
@.str114 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str114.c = internal global %nyx_string* null
@.str115 = private unnamed_addr constant [5 x i8] c"free\00"
@.str115.c = internal global %nyx_string* null
@.str116 = private unnamed_addr constant [1 x i8] c"\00"
@.str116.c = internal global %nyx_string* null
@.str117 = private unnamed_addr constant [26 x i8] c"NYX1221: double free of '\00"
@.str117.c = internal global %nyx_string* null
@.str118 = private unnamed_addr constant [2 x i8] c"'\00"
@.str118.c = internal global %nyx_string* null
@.str119 = private unnamed_addr constant [8 x i8] c" (line \00"
@.str119.c = internal global %nyx_string* null
@.str120 = private unnamed_addr constant [2 x i8] c")\00"
@.str120.c = internal global %nyx_string* null
@.str121 = private unnamed_addr constant [6 x i8] c"array\00"
@.str121.c = internal global %nyx_string* null
@.str122 = private unnamed_addr constant [12 x i8] c"map_literal\00"
@.str122.c = internal global %nyx_string* null
@.str123 = private unnamed_addr constant [6 x i8] c"index\00"
@.str123.c = internal global %nyx_string* null
@.str124 = private unnamed_addr constant [6 x i8] c"range\00"
@.str124.c = internal global %nyx_string* null
@.str125 = private unnamed_addr constant [7 x i8] c"assign\00"
@.str125.c = internal global %nyx_string* null
@.str126 = private unnamed_addr constant [1 x i8] c"\00"
@.str126.c = internal global %nyx_string* null
@.str127 = private unnamed_addr constant [1 x i8] c"\00"
@.str127.c = internal global %nyx_string* null
@.str128 = private unnamed_addr constant [30 x i8] c"NYX1223: reference to local '\00"
@.str128.c = internal global %nyx_string* null
@.str129 = private unnamed_addr constant [38 x i8] c"' may escape via a returning function\00"
@.str129.c = internal global %nyx_string* null
@.str130 = private unnamed_addr constant [8 x i8] c" (line \00"
@.str130.c = internal global %nyx_string* null
@.str131 = private unnamed_addr constant [2 x i8] c")\00"
@.str131.c = internal global %nyx_string* null
@.str132 = private unnamed_addr constant [30 x i8] c"NYX1222: reference to local '\00"
@.str132.c = internal global %nyx_string* null
@.str133 = private unnamed_addr constant [39 x i8] c"' escapes into a longer-lived location\00"
@.str133.c = internal global %nyx_string* null
@.str134 = private unnamed_addr constant [8 x i8] c" (line \00"
@.str134.c = internal global %nyx_string* null
@.str135 = private unnamed_addr constant [2 x i8] c")\00"
@.str135.c = internal global %nyx_string* null
@.str136 = private unnamed_addr constant [16 x i8] c"compound_assign\00"
@.str136.c = internal global %nyx_string* null
@.str137 = private unnamed_addr constant [13 x i8] c"index_assign\00"
@.str137.c = internal global %nyx_string* null
@.str138 = private unnamed_addr constant [1 x i8] c"\00"
@.str138.c = internal global %nyx_string* null
@.str139 = private unnamed_addr constant [1 x i8] c"\00"
@.str139.c = internal global %nyx_string* null
@.str140 = private unnamed_addr constant [30 x i8] c"NYX1223: reference to local '\00"
@.str140.c = internal global %nyx_string* null
@.str141 = private unnamed_addr constant [38 x i8] c"' may escape via a returning function\00"
@.str141.c = internal global %nyx_string* null
@.str142 = private unnamed_addr constant [8 x i8] c" (line \00"
@.str142.c = internal global %nyx_string* null
@.str143 = private unnamed_addr constant [2 x i8] c")\00"
@.str143.c = internal global %nyx_string* null
@.str144 = private unnamed_addr constant [30 x i8] c"NYX1222: reference to local '\00"
@.str144.c = internal global %nyx_string* null
@.str145 = private unnamed_addr constant [39 x i8] c"' escapes into a longer-lived location\00"
@.str145.c = internal global %nyx_string* null
@.str146 = private unnamed_addr constant [8 x i8] c" (line \00"
@.str146.c = internal global %nyx_string* null
@.str147 = private unnamed_addr constant [2 x i8] c")\00"
@.str147.c = internal global %nyx_string* null
@.str148 = private unnamed_addr constant [1 x i8] c"\00"
@.str148.c = internal global %nyx_string* null
@.str149 = private unnamed_addr constant [13 x i8] c"field_assign\00"
@.str149.c = internal global %nyx_string* null
@.str150 = private unnamed_addr constant [1 x i8] c"\00"
@.str150.c = internal global %nyx_string* null
@.str151 = private unnamed_addr constant [1 x i8] c"\00"
@.str151.c = internal global %nyx_string* null
@.str152 = private unnamed_addr constant [30 x i8] c"NYX1223: reference to local '\00"
@.str152.c = internal global %nyx_string* null
@.str153 = private unnamed_addr constant [38 x i8] c"' may escape via a returning function\00"
@.str153.c = internal global %nyx_string* null
@.str154 = private unnamed_addr constant [8 x i8] c" (line \00"
@.str154.c = internal global %nyx_string* null
@.str155 = private unnamed_addr constant [2 x i8] c")\00"
@.str155.c = internal global %nyx_string* null
@.str156 = private unnamed_addr constant [30 x i8] c"NYX1222: reference to local '\00"
@.str156.c = internal global %nyx_string* null
@.str157 = private unnamed_addr constant [39 x i8] c"' escapes into a longer-lived location\00"
@.str157.c = internal global %nyx_string* null
@.str158 = private unnamed_addr constant [8 x i8] c" (line \00"
@.str158.c = internal global %nyx_string* null
@.str159 = private unnamed_addr constant [2 x i8] c")\00"
@.str159.c = internal global %nyx_string* null
@.str160 = private unnamed_addr constant [1 x i8] c"\00"
@.str160.c = internal global %nyx_string* null
@.str161 = private unnamed_addr constant [12 x i8] c"struct_init\00"
@.str161.c = internal global %nyx_string* null
@.str162 = private unnamed_addr constant [13 x i8] c"field_access\00"
@.str162.c = internal global %nyx_string* null
@.str163 = private unnamed_addr constant [12 x i8] c"method_call\00"
@.str163.c = internal global %nyx_string* null
@.str164 = private unnamed_addr constant [6 x i8] c"match\00"
@.str164.c = internal global %nyx_string* null
@.str165 = private unnamed_addr constant [10 x i8] c"match_arm\00"
@.str165.c = internal global %nyx_string* null
@.str166 = private unnamed_addr constant [7 x i8] c"try_op\00"
@.str166.c = internal global %nyx_string* null
@.str167 = private unnamed_addr constant [5 x i8] c"cast\00"
@.str167.c = internal global %nyx_string* null
@.str168 = private unnamed_addr constant [13 x i8] c"unsafe_block\00"
@.str168.c = internal global %nyx_string* null
@.str169 = private unnamed_addr constant [8 x i8] c"addr_of\00"
@.str169.c = internal global %nyx_string* null
@.str170 = private unnamed_addr constant [1 x i8] c"\00"
@.str170.c = internal global %nyx_string* null
@.str171 = private unnamed_addr constant [25 x i8] c"NYX1211: cannot borrow '\00"
@.str171.c = internal global %nyx_string* null
@.str172 = private unnamed_addr constant [41 x i8] c"' as immutable while borrowed as mutable\00"
@.str172.c = internal global %nyx_string* null
@.str173 = private unnamed_addr constant [8 x i8] c" (line \00"
@.str173.c = internal global %nyx_string* null
@.str174 = private unnamed_addr constant [2 x i8] c")\00"
@.str174.c = internal global %nyx_string* null
@.str175 = private unnamed_addr constant [12 x i8] c"addr_of_mut\00"
@.str175.c = internal global %nyx_string* null
@.str176 = private unnamed_addr constant [1 x i8] c"\00"
@.str176.c = internal global %nyx_string* null
@.str177 = private unnamed_addr constant [25 x i8] c"NYX1210: cannot borrow '\00"
@.str177.c = internal global %nyx_string* null
@.str178 = private unnamed_addr constant [38 x i8] c"' as mutable more than once at a time\00"
@.str178.c = internal global %nyx_string* null
@.str179 = private unnamed_addr constant [8 x i8] c" (line \00"
@.str179.c = internal global %nyx_string* null
@.str180 = private unnamed_addr constant [2 x i8] c")\00"
@.str180.c = internal global %nyx_string* null
@.str181 = private unnamed_addr constant [25 x i8] c"NYX1210: cannot borrow '\00"
@.str181.c = internal global %nyx_string* null
@.str182 = private unnamed_addr constant [46 x i8] c"' as mutable while also borrowed as immutable\00"
@.str182.c = internal global %nyx_string* null
@.str183 = private unnamed_addr constant [8 x i8] c" (line \00"
@.str183.c = internal global %nyx_string* null
@.str184 = private unnamed_addr constant [2 x i8] c")\00"
@.str184.c = internal global %nyx_string* null
@.str185 = private unnamed_addr constant [6 x i8] c"deref\00"
@.str185.c = internal global %nyx_string* null
@.str186 = private unnamed_addr constant [13 x i8] c"deref_assign\00"
@.str186.c = internal global %nyx_string* null
@.str187 = private unnamed_addr constant [1 x i8] c"\00"
@.str187.c = internal global %nyx_string* null
@.str188 = private unnamed_addr constant [1 x i8] c"\00"
@.str188.c = internal global %nyx_string* null
@.str189 = private unnamed_addr constant [30 x i8] c"NYX1223: reference to local '\00"
@.str189.c = internal global %nyx_string* null
@.str190 = private unnamed_addr constant [38 x i8] c"' may escape via a returning function\00"
@.str190.c = internal global %nyx_string* null
@.str191 = private unnamed_addr constant [8 x i8] c" (line \00"
@.str191.c = internal global %nyx_string* null
@.str192 = private unnamed_addr constant [2 x i8] c")\00"
@.str192.c = internal global %nyx_string* null
@.str193 = private unnamed_addr constant [30 x i8] c"NYX1222: reference to local '\00"
@.str193.c = internal global %nyx_string* null
@.str194 = private unnamed_addr constant [39 x i8] c"' escapes into a longer-lived location\00"
@.str194.c = internal global %nyx_string* null
@.str195 = private unnamed_addr constant [8 x i8] c" (line \00"
@.str195.c = internal global %nyx_string* null
@.str196 = private unnamed_addr constant [2 x i8] c")\00"
@.str196.c = internal global %nyx_string* null
@.str197 = private unnamed_addr constant [6 x i8] c"defer\00"
@.str197.c = internal global %nyx_string* null
@.str198 = private unnamed_addr constant [10 x i8] c"try_catch\00"
@.str198.c = internal global %nyx_string* null
@.str199 = private unnamed_addr constant [6 x i8] c"throw\00"
@.str199.c = internal global %nyx_string* null
@.str200 = private unnamed_addr constant [22 x i8] c"let_destructure_tuple\00"
@.str200.c = internal global %nyx_string* null
@.str201 = private unnamed_addr constant [10 x i8] c"test_decl\00"
@.str201.c = internal global %nyx_string* null
@.str202 = private unnamed_addr constant [7 x i8] c"assert\00"
@.str202.c = internal global %nyx_string* null
@.str203 = private unnamed_addr constant [5 x i8] c"self\00"
@.str203.c = internal global %nyx_string* null
@.str204 = private unnamed_addr constant [2 x i8] c"*\00"
@.str204.c = internal global %nyx_string* null
@.str205 = private unnamed_addr constant [2 x i8] c"&\00"
@.str205.c = internal global %nyx_string* null
@.str206 = private unnamed_addr constant [5 x i8] c"&mut\00"
@.str206.c = internal global %nyx_string* null
@.str207 = private unnamed_addr constant [8 x i8] c"NYX1220\00"
@.str207.c = internal global %nyx_string* null
@.str208 = private unnamed_addr constant [8 x i8] c"NYX1221\00"
@.str208.c = internal global %nyx_string* null
@.str209 = private unnamed_addr constant [8 x i8] c"NYX1230\00"
@.str209.c = internal global %nyx_string* null
@.str210 = private unnamed_addr constant [8 x i8] c"NYX1222\00"
@.str210.c = internal global %nyx_string* null
@.str211 = private unnamed_addr constant [7 x i8] c"export\00"
@.str211.c = internal global %nyx_string* null
@.str212 = private unnamed_addr constant [7 x i8] c"struct\00"
@.str212.c = internal global %nyx_string* null
@.str213 = private unnamed_addr constant [5 x i8] c"enum\00"
@.str213.c = internal global %nyx_string* null
@.str214 = private unnamed_addr constant [7 x i8] c"affine\00"
@.str214.c = internal global %nyx_string* null
@.str215 = private unnamed_addr constant [7 x i8] c"export\00"
@.str215.c = internal global %nyx_string* null
@.str216 = private unnamed_addr constant [7 x i8] c"struct\00"
@.str216.c = internal global %nyx_string* null
@.str217 = private unnamed_addr constant [2 x i8] c"'\00"
@.str217.c = internal global %nyx_string* null
@.str218 = private unnamed_addr constant [2 x i8] c"'\00"
@.str218.c = internal global %nyx_string* null
@.str219 = private unnamed_addr constant [2 x i8] c",\00"
@.str219.c = internal global %nyx_string* null
@.str220 = private unnamed_addr constant [2 x i8] c">\00"
@.str220.c = internal global %nyx_string* null
@.str221 = private unnamed_addr constant [2 x i8] c"<\00"
@.str221.c = internal global %nyx_string* null
@.str222 = private unnamed_addr constant [2 x i8] c" \00"
@.str222.c = internal global %nyx_string* null
@.str223 = private unnamed_addr constant [2 x i8] c"&\00"
@.str223.c = internal global %nyx_string* null
@.str224 = private unnamed_addr constant [2 x i8] c"<\00"
@.str224.c = internal global %nyx_string* null
@.str225 = private unnamed_addr constant [7 x i8] c"export\00"
@.str225.c = internal global %nyx_string* null
@.str226 = private unnamed_addr constant [9 x i8] c"function\00"
@.str226.c = internal global %nyx_string* null
@.str227 = private unnamed_addr constant [9 x i8] c"async_fn\00"
@.str227.c = internal global %nyx_string* null
@.str228 = private unnamed_addr constant [5 x i8] c"self\00"
@.str228.c = internal global %nyx_string* null
@.str229 = private unnamed_addr constant [2 x i8] c"&\00"
@.str229.c = internal global %nyx_string* null
@.str230 = private unnamed_addr constant [1 x i8] c"\00"
@.str230.c = internal global %nyx_string* null
@.str231 = private unnamed_addr constant [10 x i8] c"__retlt__\00"
@.str231.c = internal global %nyx_string* null
@.str232 = private unnamed_addr constant [12 x i8] c"__paramlt__\00"
@.str232.c = internal global %nyx_string* null
@.str233 = private unnamed_addr constant [1 x i8] c"\00"
@.str233.c = internal global %nyx_string* null
@.str234 = private unnamed_addr constant [7 x i8] c"  ✗ \00"
@.str234.c = internal global %nyx_string* null
@.str235 = private unnamed_addr constant [15 x i8] c"  ⚠ borrow: \00"
@.str235.c = internal global %nyx_string* null
@.str236 = private unnamed_addr constant [9 x i8] c"TyString\00"
@.str236.c = internal global %nyx_string* null
@.str237 = private unnamed_addr constant [8 x i8] c"TyArray\00"
@.str237.c = internal global %nyx_string* null
@.str238 = private unnamed_addr constant [6 x i8] c"TyMap\00"
@.str238.c = internal global %nyx_string* null
@.str239 = private unnamed_addr constant [9 x i8] c"TyStruct\00"
@.str239.c = internal global %nyx_string* null
@.str240 = private unnamed_addr constant [7 x i8] c"TyEnum\00"
@.str240.c = internal global %nyx_string* null
@.str241 = private unnamed_addr constant [9 x i8] c"TyOption\00"
@.str241.c = internal global %nyx_string* null
@.str242 = private unnamed_addr constant [9 x i8] c"TyResult\00"
@.str242.c = internal global %nyx_string* null
@.str243 = private unnamed_addr constant [5 x i8] c"TyFn\00"
@.str243.c = internal global %nyx_string* null
@.str244 = private unnamed_addr constant [6 x i8] c"TyInt\00"
@.str244.c = internal global %nyx_string* null
@.str245 = private unnamed_addr constant [8 x i8] c"TyFloat\00"
@.str245.c = internal global %nyx_string* null
@.str246 = private unnamed_addr constant [7 x i8] c"TyBool\00"
@.str246.c = internal global %nyx_string* null
@.str247 = private unnamed_addr constant [7 x i8] c"TyChar\00"
@.str247.c = internal global %nyx_string* null
@.str248 = private unnamed_addr constant [7 x i8] c"TyUnit\00"
@.str248.c = internal global %nyx_string* null
@.str249 = private unnamed_addr constant [8 x i8] c"TySized\00"
@.str249.c = internal global %nyx_string* null
@.str250 = private unnamed_addr constant [6 x i8] c"TyRef\00"
@.str250.c = internal global %nyx_string* null
@.str251 = private unnamed_addr constant [9 x i8] c"TyRefMut\00"
@.str251.c = internal global %nyx_string* null
@.str252 = private unnamed_addr constant [6 x i8] c"TyPtr\00"
@.str252.c = internal global %nyx_string* null
@.str253 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str253.c = internal global %nyx_string* null
@.str254 = private unnamed_addr constant [1 x i8] c"\00"
@.str254.c = internal global %nyx_string* null
@.str255 = private unnamed_addr constant [13 x i8] c"field_access\00"
@.str255.c = internal global %nyx_string* null
@.str256 = private unnamed_addr constant [6 x i8] c"index\00"
@.str256.c = internal global %nyx_string* null
@.str257 = private unnamed_addr constant [6 x i8] c"deref\00"
@.str257.c = internal global %nyx_string* null
@.str258 = private unnamed_addr constant [8 x i8] c"addr_of\00"
@.str258.c = internal global %nyx_string* null
@.str259 = private unnamed_addr constant [12 x i8] c"addr_of_mut\00"
@.str259.c = internal global %nyx_string* null
@.str260 = private unnamed_addr constant [1 x i8] c"\00"
@.str260.c = internal global %nyx_string* null
@.str261 = private unnamed_addr constant [13 x i8] c"field_access\00"
@.str261.c = internal global %nyx_string* null
@.str262 = private unnamed_addr constant [1 x i8] c"\00"
@.str262.c = internal global %nyx_string* null
@.str263 = private unnamed_addr constant [1 x i8] c"\00"
@.str263.c = internal global %nyx_string* null
@.str264 = private unnamed_addr constant [2 x i8] c".\00"
@.str264.c = internal global %nyx_string* null
@.str265 = private unnamed_addr constant [1 x i8] c"\00"
@.str265.c = internal global %nyx_string* null
@.str266 = private unnamed_addr constant [1 x i8] c"\00"
@.str266.c = internal global %nyx_string* null
@.str267 = private unnamed_addr constant [2 x i8] c"?\00"
@.str267.c = internal global %nyx_string* null
@.str268 = private unnamed_addr constant [2 x i8] c"?\00"
@.str268.c = internal global %nyx_string* null
@.str269 = private unnamed_addr constant [1 x i8] c"\00"
@.str269.c = internal global %nyx_string* null
@.str270 = private unnamed_addr constant [1 x i8] c"\00"
@.str270.c = internal global %nyx_string* null
@.str271 = private unnamed_addr constant [1 x i8] c"\00"
@.str271.c = internal global %nyx_string* null
@.str272 = private unnamed_addr constant [1 x i8] c"\00"
@.str272.c = internal global %nyx_string* null
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


define internal %ASTNode @bc_node_at(
%ASTNode %node.param, i64 %index.param) {
  %node.ptr = alloca %ASTNode
  %index.ptr = alloca i64
  %t3 = alloca { i64, i8* }*
  %t14 = alloca %ASTNode
  %t20 = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  store i64 %index.param, i64* %index.ptr
  %t1 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %t2 = load { i64, i8* }*, { i64, i8* }** %t1
  store { i64, i8* }* %t2, { i64, i8* }** %t3
  %t4 = load { i64, i8* }*, { i64, i8* }** %t3
  %t5 = load i64, i64* %index.ptr
  %t6 = call i64 @nyx_array_get({ i64, i8* }* %t4, i64 %t5)
  %t7 = inttoptr i64 %t6 to { i64, i8* }*
  %t8 = call i64 @nyx_array_get({ i64, i8* }* %t7, i64 0)
  %t9 = call i64 @nyx_array_get({ i64, i8* }* %t7, i64 1)
  %t10 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t7, i64 2)
  %t11 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t7, i64 3)
  %t12 = inttoptr i64 %t8 to %nyx_string*
  %t13 = inttoptr i64 %t9 to { i64, i8* }*
  %t15 = getelementptr inbounds %ASTNode, %ASTNode* %t14, i32 0, i32 0
  store %nyx_string* %t12, %nyx_string** %t15
  %t16 = getelementptr inbounds %ASTNode, %ASTNode* %t14, i32 0, i32 1
  store { i64, i8* }* %t13, { i64, i8* }** %t16
  %t17 = getelementptr inbounds %ASTNode, %ASTNode* %t14, i32 0, i32 2
  store i64 %t10, i64* %t17
  %t18 = getelementptr inbounds %ASTNode, %ASTNode* %t14, i32 0, i32 3
  store i64 %t11, i64* %t18
  %t19 = load %ASTNode, %ASTNode* %t14
  store %ASTNode %t19, %ASTNode* %t20
  %t21 = load %ASTNode, %ASTNode* %t20
  ret %ASTNode %t21
}

define internal { i64, i8* }* @bc_array_at(
%ASTNode %node.param, i64 %index.param) {
  %node.ptr = alloca %ASTNode
  %index.ptr = alloca i64
  %t24 = alloca { i64, i8* }*
  %t29 = alloca { i64, i8* }*
  store %ASTNode %node.param, %ASTNode* %node.ptr
  store i64 %index.param, i64* %index.ptr
  %t22 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %t23 = load { i64, i8* }*, { i64, i8* }** %t22
  store { i64, i8* }* %t23, { i64, i8* }** %t24
  %t25 = load { i64, i8* }*, { i64, i8* }** %t24
  %t26 = load i64, i64* %index.ptr
  %t27 = call i64 @nyx_array_get({ i64, i8* }* %t25, i64 %t26)
  %t28 = inttoptr i64 %t27 to { i64, i8* }*
  store { i64, i8* }* %t28, { i64, i8* }** %t29
  %t30 = load { i64, i8* }*, { i64, i8* }** %t29
  ret { i64, i8* }* %t30
}

define internal %ASTNode @bc_root_of(
{ i64, i8* }* %arr.param) {
  %arr.ptr = alloca { i64, i8* }*
  %t34 = alloca { i64, i8* }*
  %t44 = alloca %ASTNode
  %t50 = alloca %ASTNode
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %t31 = call { i64, i8* }* @nyx_array_new_ptr()
  %t32 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %t33 = ptrtoint { i64, i8* }* %t32 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t31, i64 %t33, i64 5)
  store { i64, i8* }* %t31, { i64, i8* }** %t34
  %t35 = load { i64, i8* }*, { i64, i8* }** %t34
  %t36 = call i64 @nyx_array_get({ i64, i8* }* %t35, i64 0)
  %t37 = inttoptr i64 %t36 to { i64, i8* }*
  %t38 = call i64 @nyx_array_get({ i64, i8* }* %t37, i64 0)
  %t39 = call i64 @nyx_array_get({ i64, i8* }* %t37, i64 1)
  %t40 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t37, i64 2)
  %t41 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t37, i64 3)
  %t42 = inttoptr i64 %t38 to %nyx_string*
  %t43 = inttoptr i64 %t39 to { i64, i8* }*
  %t45 = getelementptr inbounds %ASTNode, %ASTNode* %t44, i32 0, i32 0
  store %nyx_string* %t42, %nyx_string** %t45
  %t46 = getelementptr inbounds %ASTNode, %ASTNode* %t44, i32 0, i32 1
  store { i64, i8* }* %t43, { i64, i8* }** %t46
  %t47 = getelementptr inbounds %ASTNode, %ASTNode* %t44, i32 0, i32 2
  store i64 %t40, i64* %t47
  %t48 = getelementptr inbounds %ASTNode, %ASTNode* %t44, i32 0, i32 3
  store i64 %t41, i64* %t48
  %t49 = load %ASTNode, %ASTNode* %t44
  store %ASTNode %t49, %ASTNode* %t50
  %t51 = load %ASTNode, %ASTNode* %t50
  ret %ASTNode %t51
}

define internal i1 @ann_is_move_type(
%nyx_string* %ann.param) {
  %ann.ptr = alloca %nyx_string*
  %t78 = alloca i64
  store %nyx_string* %ann.param, %nyx_string** %ann.ptr
  %t52 = load %nyx_string*, %nyx_string** %ann.ptr
  %t53 = getelementptr [7 x i8], [7 x i8]* @.str0, i32 0, i32 0
  %t54 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str0.c, i8* %t53, i64 6)
  %t55 = call i1 @nyx_string_equals(%nyx_string* %t52, %nyx_string* %t54)
  br i1 %t55, label %then0, label %else1
then0:
  ret i1 1
else1:
  br label %merge2
merge2:
  %t56 = load %nyx_string*, %nyx_string** %ann.ptr
  %t57 = getelementptr [6 x i8], [6 x i8]* @.str1, i32 0, i32 0
  %t58 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1.c, i8* %t57, i64 5)
  %t59 = call i1 @nyx_string_equals(%nyx_string* %t56, %nyx_string* %t58)
  br i1 %t59, label %then3, label %else4
then3:
  ret i1 1
else4:
  br label %merge5
merge5:
  %t60 = load %nyx_string*, %nyx_string** %ann.ptr
  %t61 = getelementptr [4 x i8], [4 x i8]* @.str2, i32 0, i32 0
  %t62 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str2.c, i8* %t61, i64 3)
  %t63 = call i1 @nyx_string_equals(%nyx_string* %t60, %nyx_string* %t62)
  br i1 %t63, label %then6, label %else7
then6:
  ret i1 1
else7:
  br label %merge8
merge8:
  %t64 = load %nyx_string*, %nyx_string** %ann.ptr
  %t65 = getelementptr [7 x i8], [7 x i8]* @.str3, i32 0, i32 0
  %t66 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str3.c, i8* %t65, i64 6)
  %t67 = call i1 @nyx_string_equals(%nyx_string* %t64, %nyx_string* %t66)
  br i1 %t67, label %then9, label %else10
then9:
  ret i1 1
else10:
  br label %merge11
merge11:
  %t68 = load %nyx_string*, %nyx_string** %ann.ptr
  %t69 = getelementptr [7 x i8], [7 x i8]* @.str4, i32 0, i32 0
  %t70 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str4.c, i8* %t69, i64 6)
  %t71 = call i1 @nyx_string_equals(%nyx_string* %t68, %nyx_string* %t70)
  br i1 %t71, label %then12, label %else13
then12:
  ret i1 1
else13:
  br label %merge14
merge14:
  %t72 = load %nyx_string*, %nyx_string** %ann.ptr
  %t73 = getelementptr [14 x i8], [14 x i8]* @.str5, i32 0, i32 0
  %t74 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str5.c, i8* %t73, i64 13)
  %t75 = call i1 @nyx_string_equals(%nyx_string* %t72, %nyx_string* %t74)
  br i1 %t75, label %then15, label %else16
then15:
  ret i1 1
else16:
  br label %merge17
merge17:
  %t76 = load %nyx_string*, %nyx_string** %ann.ptr
  %t77 = call i64 @nyx_string_byte_length(%nyx_string* %t76)
  store i64 %t77, i64* %t78
  %t79 = load i64, i64* %t78
  %t80 = icmp sge i64 %t79, 6
  br i1 %t80, label %then18, label %else19
then18:
  %t81 = load %nyx_string*, %nyx_string** %ann.ptr
  %t82 = call %nyx_string* @nyx_string_substring(%nyx_string* %t81, i64 0, i64 6)
  %t83 = getelementptr [7 x i8], [7 x i8]* @.str6, i32 0, i32 0
  %t84 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str6.c, i8* %t83, i64 6)
  %t85 = call i1 @nyx_string_equals(%nyx_string* %t82, %nyx_string* %t84)
  br i1 %t85, label %then21, label %else22
then21:
  ret i1 1
else22:
  br label %merge23
merge23:
  br label %merge20
else19:
  br label %merge20
merge20:
  %t86 = load i64, i64* %t78
  %t87 = icmp sge i64 %t86, 4
  br i1 %t87, label %then24, label %else25
then24:
  %t88 = load %nyx_string*, %nyx_string** %ann.ptr
  %t89 = call %nyx_string* @nyx_string_substring(%nyx_string* %t88, i64 0, i64 4)
  %t90 = getelementptr [5 x i8], [5 x i8]* @.str7, i32 0, i32 0
  %t91 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str7.c, i8* %t90, i64 4)
  %t92 = call i1 @nyx_string_equals(%nyx_string* %t89, %nyx_string* %t91)
  br i1 %t92, label %then27, label %else28
then27:
  ret i1 1
else28:
  br label %merge29
merge29:
  br label %merge26
else25:
  br label %merge26
merge26:
  %t93 = load i64, i64* %t78
  %t94 = icmp sge i64 %t93, 7
  br i1 %t94, label %then30, label %else31
then30:
  %t95 = load %nyx_string*, %nyx_string** %ann.ptr
  %t96 = call %nyx_string* @nyx_string_substring(%nyx_string* %t95, i64 0, i64 7)
  %t97 = getelementptr [8 x i8], [8 x i8]* @.str8, i32 0, i32 0
  %t98 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str8.c, i8* %t97, i64 7)
  %t99 = call i1 @nyx_string_equals(%nyx_string* %t96, %nyx_string* %t98)
  br i1 %t99, label %then33, label %else34
then33:
  ret i1 1
else34:
  br label %merge35
merge35:
  br label %merge32
else31:
  br label %merge32
merge32:
  %t100 = load i64, i64* %t78
  %t101 = icmp sge i64 %t100, 7
  br i1 %t101, label %then36, label %else37
then36:
  %t102 = load %nyx_string*, %nyx_string** %ann.ptr
  %t103 = call %nyx_string* @nyx_string_substring(%nyx_string* %t102, i64 0, i64 7)
  %t104 = getelementptr [8 x i8], [8 x i8]* @.str9, i32 0, i32 0
  %t105 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str9.c, i8* %t104, i64 7)
  %t106 = call i1 @nyx_string_equals(%nyx_string* %t103, %nyx_string* %t105)
  br i1 %t106, label %then39, label %else40
then39:
  ret i1 1
else40:
  br label %merge41
merge41:
  br label %merge38
else37:
  br label %merge38
merge38:
  ret i1 0
}

define internal { i64, i8* }* @tm_new(
{ i64, i8* }* %affine_names.param, i8* %sigs.param) {
  %affine_names.ptr = alloca { i64, i8* }*
  %sigs.ptr = alloca i8*
  store { i64, i8* }* %affine_names.param, { i64, i8* }** %affine_names.ptr
  store i8* %sigs.param, i8** %sigs.ptr
  %t107 = call { i64, i8* }* @nyx_array_new_ptr()
  %t108 = call { i64, i8* }* @nyx_array_new_ptr()
  %t109 = ptrtoint { i64, i8* }* %t108 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t107, i64 %t109, i64 5)
  %t110 = call { i64, i8* }* @nyx_array_new_ptr()
  %t111 = ptrtoint { i64, i8* }* %t110 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t107, i64 %t111, i64 5)
  %t112 = load { i64, i8* }*, { i64, i8* }** %affine_names.ptr
  %t113 = ptrtoint { i64, i8* }* %t112 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t107, i64 %t113, i64 5)
  %t114 = call { i64, i8* }* @nyx_array_new_ptr()
  %t115 = ptrtoint { i64, i8* }* %t114 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t107, i64 %t115, i64 5)
  %t116 = call { i64, i8* }* @nyx_array_new_ptr()
  %t117 = ptrtoint { i64, i8* }* %t116 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t107, i64 %t117, i64 5)
  %t118 = load i8*, i8** %sigs.ptr
  call void @nyx_array_push_ptr({ i64, i8* }* %t107, i8* %t118)
  %t119 = call { i64, i8* }* @nyx_array_new_ptr()
  %t120 = ptrtoint { i64, i8* }* %t119 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t107, i64 %t120, i64 5)
  %t121 = call { i64, i8* }* @nyx_array_new_ptr()
  %t122 = ptrtoint { i64, i8* }* %t121 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t107, i64 %t122, i64 5)
  ret { i64, i8* }* %t107
}

define internal i64 @tm_mark_fn(
{ i64, i8* }* %tmap.param) {
  %tmap.ptr = alloca { i64, i8* }*
  %t126 = alloca { i64, i8* }*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %t123 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t124 = call i64 @nyx_array_get({ i64, i8* }* %t123, i64 7)
  %t125 = inttoptr i64 %t124 to { i64, i8* }*
  store { i64, i8* }* %t125, { i64, i8* }** %t126
  %t127 = load { i64, i8* }*, { i64, i8* }** %t126
  %t128 = getelementptr [3 x i8], [3 x i8]* @.str10, i32 0, i32 0
  %t129 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str10.c, i8* %t128, i64 2)
  %t130 = ptrtoint %nyx_string* %t129 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t127, i64 %t130, i64 2)
  ret i64 0
}

define internal i1 @tm_is_fn_tmap(
{ i64, i8* }* %tmap.param) {
  %tmap.ptr = alloca { i64, i8* }*
  %t134 = alloca { i64, i8* }*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %t131 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t132 = call i64 @nyx_array_get({ i64, i8* }* %t131, i64 7)
  %t133 = inttoptr i64 %t132 to { i64, i8* }*
  store { i64, i8* }* %t133, { i64, i8* }** %t134
  %t135 = load { i64, i8* }*, { i64, i8* }** %t134
  %t136 = call i64 @nyx_array_length({ i64, i8* }* %t135)
  %t137 = icmp sgt i64 %t136, 0
  ret i1 %t137
}

define internal { i64, i8* }* @tm_affine_names(
{ i64, i8* }* %tmap.param) {
  %tmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %t138 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t139 = call i64 @nyx_array_get({ i64, i8* }* %t138, i64 2)
  %t140 = inttoptr i64 %t139 to { i64, i8* }*
  ret { i64, i8* }* %t140
}

define internal i8* @tm_sigs(
{ i64, i8* }* %tmap.param) {
  %tmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %t141 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t142 = call i64 @nyx_array_get({ i64, i8* }* %t141, i64 5)
  %t143 = inttoptr i64 %t142 to i8*
  ret i8* %t143
}

define internal i1 @tm_type_is_affine(
{ i64, i8* }* %tmap.param, %nyx_string* %ann.param) {
  %tmap.ptr = alloca { i64, i8* }*
  %ann.ptr = alloca %nyx_string*
  %t147 = alloca { i64, i8* }*
  %t149 = alloca %nyx_string*
  %t154 = alloca i64
  %t160 = alloca i64
  %t169 = alloca %nyx_string*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  store %nyx_string* %ann.param, %nyx_string** %ann.ptr
  %t144 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t145 = call i64 @nyx_array_get({ i64, i8* }* %t144, i64 2)
  %t146 = inttoptr i64 %t145 to { i64, i8* }*
  store { i64, i8* }* %t146, { i64, i8* }** %t147
  %t148 = load %nyx_string*, %nyx_string** %ann.ptr
  store %nyx_string* %t148, %nyx_string** %t149
  %t150 = load %nyx_string*, %nyx_string** %ann.ptr
  %t151 = getelementptr [2 x i8], [2 x i8]* @.str11, i32 0, i32 0
  %t152 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str11.c, i8* %t151, i64 1)
  %t153 = call i64 @nyx_string_index_of(%nyx_string* %t150, %nyx_string* %t152)
  store i64 %t153, i64* %t154
  %t155 = load i64, i64* %t154
  %t156 = icmp sge i64 %t155, 0
  br i1 %t156, label %then42, label %else43
then42:
  %t157 = load %nyx_string*, %nyx_string** %ann.ptr
  %t158 = load i64, i64* %t154
  %t159 = call %nyx_string* @nyx_string_substring(%nyx_string* %t157, i64 0, i64 %t158)
  store %nyx_string* %t159, %nyx_string** %t149
  br label %merge44
else43:
  br label %merge44
merge44:
  store i64 0, i64* %t160
  br label %while_cond45
while_cond45:
  %t161 = load i64, i64* %t160
  %t162 = load { i64, i8* }*, { i64, i8* }** %t147
  %t163 = call i64 @nyx_array_length({ i64, i8* }* %t162)
  %t164 = icmp slt i64 %t161, %t163
  br i1 %t164, label %while_body46, label %while_end47
while_body46:
  %t165 = load { i64, i8* }*, { i64, i8* }** %t147
  %t166 = load i64, i64* %t160
  %t167 = call i64 @nyx_array_get_checked({ i64, i8* }* %t165, i64 %t166, i64 2)
  %t168 = inttoptr i64 %t167 to %nyx_string*
  store %nyx_string* %t168, %nyx_string** %t169
  %t170 = load %nyx_string*, %nyx_string** %t169
  %t171 = load %nyx_string*, %nyx_string** %t149
  %t172 = call i1 @nyx_string_equals(%nyx_string* %t170, %nyx_string* %t171)
  br i1 %t172, label %then48, label %else49
then48:
  ret i1 1
else49:
  br label %merge50
merge50:
  %t173 = load i64, i64* %t160
  %t174 = add i64 %t173, 1
  store i64 %t174, i64* %t160
  br label %while_cond45
while_end47:
  ret i1 0
}

define internal i64 @move_kind_of(
{ i64, i8* }* %tmap.param, %nyx_string* %ann.param) {
  %tmap.ptr = alloca { i64, i8* }*
  %ann.ptr = alloca %nyx_string*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  store %nyx_string* %ann.param, %nyx_string** %ann.ptr
  %t175 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t176 = load %nyx_string*, %nyx_string** %ann.ptr
  %t177 = call i1 @tm_type_is_affine({ i64, i8* }* %t175, %nyx_string* %t176)
  br i1 %t177, label %then51, label %else52
then51:
  ret i64 2
else52:
  br label %merge53
merge53:
  %t178 = load %nyx_string*, %nyx_string** %ann.ptr
  %t179 = call i1 @ann_is_move_type(%nyx_string* %t178)
  br i1 %t179, label %then54, label %else55
then54:
  ret i64 1
else55:
  br label %merge56
merge56:
  ret i64 0
}

define internal i64 @tm_put(
{ i64, i8* }* %tmap.param, %nyx_string* %name.param, i64 %kind.param) {
  %tmap.ptr = alloca { i64, i8* }*
  %name.ptr = alloca %nyx_string*
  %kind.ptr = alloca i64
  %t183 = alloca { i64, i8* }*
  %t187 = alloca { i64, i8* }*
  %t188 = alloca i1
  %t189 = alloca i64
  %t198 = alloca %nyx_string*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  store i64 %kind.param, i64* %kind.ptr
  %t180 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t181 = call i64 @nyx_array_get({ i64, i8* }* %t180, i64 0)
  %t182 = inttoptr i64 %t181 to { i64, i8* }*
  store { i64, i8* }* %t182, { i64, i8* }** %t183
  %t184 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t185 = call i64 @nyx_array_get({ i64, i8* }* %t184, i64 1)
  %t186 = inttoptr i64 %t185 to { i64, i8* }*
  store { i64, i8* }* %t186, { i64, i8* }** %t187
  store i1 0, i1* %t188
  store i64 0, i64* %t189
  br label %while_cond57
while_cond57:
  %t190 = load i64, i64* %t189
  %t191 = load { i64, i8* }*, { i64, i8* }** %t183
  %t192 = call i64 @nyx_array_length({ i64, i8* }* %t191)
  %t193 = icmp slt i64 %t190, %t192
  br i1 %t193, label %while_body58, label %while_end59
while_body58:
  %t194 = load { i64, i8* }*, { i64, i8* }** %t183
  %t195 = load i64, i64* %t189
  %t196 = call i64 @nyx_array_get_checked({ i64, i8* }* %t194, i64 %t195, i64 2)
  %t197 = inttoptr i64 %t196 to %nyx_string*
  store %nyx_string* %t197, %nyx_string** %t198
  %t199 = load %nyx_string*, %nyx_string** %t198
  %t200 = load %nyx_string*, %nyx_string** %name.ptr
  %t201 = call i1 @nyx_string_equals(%nyx_string* %t199, %nyx_string* %t200)
  br i1 %t201, label %then60, label %else61
then60:
  %t202 = load { i64, i8* }*, { i64, i8* }** %t187
  %t203 = load i64, i64* %t189
  %t204 = load i64, i64* %kind.ptr
  call void @nyx_array_set({ i64, i8* }* %t202, i64 %t203, i64 %t204)
  store i1 1, i1* %t188
  br label %merge62
else61:
  br label %merge62
merge62:
  %t205 = load i64, i64* %t189
  %t206 = add i64 %t205, 1
  store i64 %t206, i64* %t189
  br label %while_cond57
while_end59:
  %t207 = load i1, i1* %t188
  %t208 = xor i1 %t207, true
  br i1 %t208, label %then63, label %else64
then63:
  %t209 = load { i64, i8* }*, { i64, i8* }** %t183
  %t210 = load %nyx_string*, %nyx_string** %name.ptr
  %t211 = ptrtoint %nyx_string* %t210 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t209, i64 %t211, i64 2)
  %t212 = load { i64, i8* }*, { i64, i8* }** %t187
  %t213 = load i64, i64* %kind.ptr
  call void @nyx_array_push_tagged({ i64, i8* }* %t212, i64 %t213, i64 1)
  br label %merge65
else64:
  br label %merge65
merge65:
  ret i64 0
}

define internal i64 @tm_move_kind(
{ i64, i8* }* %tmap.param, %nyx_string* %name.param) {
  %tmap.ptr = alloca { i64, i8* }*
  %name.ptr = alloca %nyx_string*
  %t217 = alloca { i64, i8* }*
  %t221 = alloca { i64, i8* }*
  %t222 = alloca i64
  %t231 = alloca %nyx_string*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %t214 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t215 = call i64 @nyx_array_get({ i64, i8* }* %t214, i64 0)
  %t216 = inttoptr i64 %t215 to { i64, i8* }*
  store { i64, i8* }* %t216, { i64, i8* }** %t217
  %t218 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t219 = call i64 @nyx_array_get({ i64, i8* }* %t218, i64 1)
  %t220 = inttoptr i64 %t219 to { i64, i8* }*
  store { i64, i8* }* %t220, { i64, i8* }** %t221
  store i64 0, i64* %t222
  br label %while_cond66
while_cond66:
  %t223 = load i64, i64* %t222
  %t224 = load { i64, i8* }*, { i64, i8* }** %t217
  %t225 = call i64 @nyx_array_length({ i64, i8* }* %t224)
  %t226 = icmp slt i64 %t223, %t225
  br i1 %t226, label %while_body67, label %while_end68
while_body67:
  %t227 = load { i64, i8* }*, { i64, i8* }** %t217
  %t228 = load i64, i64* %t222
  %t229 = call i64 @nyx_array_get_checked({ i64, i8* }* %t227, i64 %t228, i64 2)
  %t230 = inttoptr i64 %t229 to %nyx_string*
  store %nyx_string* %t230, %nyx_string** %t231
  %t232 = load %nyx_string*, %nyx_string** %t231
  %t233 = load %nyx_string*, %nyx_string** %name.ptr
  %t234 = call i1 @nyx_string_equals(%nyx_string* %t232, %nyx_string* %t233)
  br i1 %t234, label %then69, label %else70
then69:
  %t235 = load { i64, i8* }*, { i64, i8* }** %t221
  %t236 = load i64, i64* %t222
  %t237 = call i64 @nyx_array_get({ i64, i8* }* %t235, i64 %t236)
  ret i64 %t237
else70:
  br label %merge71
merge71:
  %t238 = load i64, i64* %t222
  %t239 = add i64 %t238, 1
  store i64 %t239, i64* %t222
  br label %while_cond66
while_end68:
  ret i64 0
}

define internal i1 @tm_is_move(
{ i64, i8* }* %tmap.param, %nyx_string* %name.param) {
  %tmap.ptr = alloca { i64, i8* }*
  %name.ptr = alloca %nyx_string*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %t240 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t241 = load %nyx_string*, %nyx_string** %name.ptr
  %t242 = call i64 @tm_move_kind({ i64, i8* }* %t240, %nyx_string* %t241)
  %t243 = icmp sgt i64 %t242, 0
  ret i1 %t243
}

define internal i64 @tm_add_local(
{ i64, i8* }* %tmap.param, %nyx_string* %name.param) {
  %tmap.ptr = alloca { i64, i8* }*
  %name.ptr = alloca %nyx_string*
  %t247 = alloca { i64, i8* }*
  %t248 = alloca i64
  %t257 = alloca %nyx_string*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %t244 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t245 = call i64 @nyx_array_get({ i64, i8* }* %t244, i64 3)
  %t246 = inttoptr i64 %t245 to { i64, i8* }*
  store { i64, i8* }* %t246, { i64, i8* }** %t247
  store i64 0, i64* %t248
  br label %while_cond72
while_cond72:
  %t249 = load i64, i64* %t248
  %t250 = load { i64, i8* }*, { i64, i8* }** %t247
  %t251 = call i64 @nyx_array_length({ i64, i8* }* %t250)
  %t252 = icmp slt i64 %t249, %t251
  br i1 %t252, label %while_body73, label %while_end74
while_body73:
  %t253 = load { i64, i8* }*, { i64, i8* }** %t247
  %t254 = load i64, i64* %t248
  %t255 = call i64 @nyx_array_get_checked({ i64, i8* }* %t253, i64 %t254, i64 2)
  %t256 = inttoptr i64 %t255 to %nyx_string*
  store %nyx_string* %t256, %nyx_string** %t257
  %t258 = load %nyx_string*, %nyx_string** %t257
  %t259 = load %nyx_string*, %nyx_string** %name.ptr
  %t260 = call i1 @nyx_string_equals(%nyx_string* %t258, %nyx_string* %t259)
  br i1 %t260, label %then75, label %else76
then75:
  ret i64 0
else76:
  br label %merge77
merge77:
  %t261 = load i64, i64* %t248
  %t262 = add i64 %t261, 1
  store i64 %t262, i64* %t248
  br label %while_cond72
while_end74:
  %t263 = load { i64, i8* }*, { i64, i8* }** %t247
  %t264 = load %nyx_string*, %nyx_string** %name.ptr
  %t265 = ptrtoint %nyx_string* %t264 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t263, i64 %t265, i64 2)
  ret i64 0
}

define internal i1 @tm_is_local(
{ i64, i8* }* %tmap.param, %nyx_string* %name.param) {
  %tmap.ptr = alloca { i64, i8* }*
  %name.ptr = alloca %nyx_string*
  %t269 = alloca { i64, i8* }*
  %t270 = alloca i64
  %t279 = alloca %nyx_string*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %t266 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t267 = call i64 @nyx_array_get({ i64, i8* }* %t266, i64 3)
  %t268 = inttoptr i64 %t267 to { i64, i8* }*
  store { i64, i8* }* %t268, { i64, i8* }** %t269
  store i64 0, i64* %t270
  br label %while_cond78
while_cond78:
  %t271 = load i64, i64* %t270
  %t272 = load { i64, i8* }*, { i64, i8* }** %t269
  %t273 = call i64 @nyx_array_length({ i64, i8* }* %t272)
  %t274 = icmp slt i64 %t271, %t273
  br i1 %t274, label %while_body79, label %while_end80
while_body79:
  %t275 = load { i64, i8* }*, { i64, i8* }** %t269
  %t276 = load i64, i64* %t270
  %t277 = call i64 @nyx_array_get_checked({ i64, i8* }* %t275, i64 %t276, i64 2)
  %t278 = inttoptr i64 %t277 to %nyx_string*
  store %nyx_string* %t278, %nyx_string** %t279
  %t280 = load %nyx_string*, %nyx_string** %t279
  %t281 = load %nyx_string*, %nyx_string** %name.ptr
  %t282 = call i1 @nyx_string_equals(%nyx_string* %t280, %nyx_string* %t281)
  br i1 %t282, label %then81, label %else82
then81:
  ret i1 1
else82:
  br label %merge83
merge83:
  %t283 = load i64, i64* %t270
  %t284 = add i64 %t283, 1
  store i64 %t284, i64* %t270
  br label %while_cond78
while_end80:
  ret i1 0
}

define internal i64 @tm_add_capture(
{ i64, i8* }* %tmap.param, %nyx_string* %name.param) {
  %tmap.ptr = alloca { i64, i8* }*
  %name.ptr = alloca %nyx_string*
  %t288 = alloca { i64, i8* }*
  %t289 = alloca i64
  %t298 = alloca %nyx_string*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %t285 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t286 = call i64 @nyx_array_get({ i64, i8* }* %t285, i64 6)
  %t287 = inttoptr i64 %t286 to { i64, i8* }*
  store { i64, i8* }* %t287, { i64, i8* }** %t288
  store i64 0, i64* %t289
  br label %while_cond84
while_cond84:
  %t290 = load i64, i64* %t289
  %t291 = load { i64, i8* }*, { i64, i8* }** %t288
  %t292 = call i64 @nyx_array_length({ i64, i8* }* %t291)
  %t293 = icmp slt i64 %t290, %t292
  br i1 %t293, label %while_body85, label %while_end86
while_body85:
  %t294 = load { i64, i8* }*, { i64, i8* }** %t288
  %t295 = load i64, i64* %t289
  %t296 = call i64 @nyx_array_get_checked({ i64, i8* }* %t294, i64 %t295, i64 2)
  %t297 = inttoptr i64 %t296 to %nyx_string*
  store %nyx_string* %t297, %nyx_string** %t298
  %t299 = load %nyx_string*, %nyx_string** %t298
  %t300 = load %nyx_string*, %nyx_string** %name.ptr
  %t301 = call i1 @nyx_string_equals(%nyx_string* %t299, %nyx_string* %t300)
  br i1 %t301, label %then87, label %else88
then87:
  ret i64 0
else88:
  br label %merge89
merge89:
  %t302 = load i64, i64* %t289
  %t303 = add i64 %t302, 1
  store i64 %t303, i64* %t289
  br label %while_cond84
while_end86:
  %t304 = load { i64, i8* }*, { i64, i8* }** %t288
  %t305 = load %nyx_string*, %nyx_string** %name.ptr
  %t306 = ptrtoint %nyx_string* %t305 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t304, i64 %t306, i64 2)
  ret i64 0
}

define internal i1 @tm_is_capture(
{ i64, i8* }* %tmap.param, %nyx_string* %name.param) {
  %tmap.ptr = alloca { i64, i8* }*
  %name.ptr = alloca %nyx_string*
  %t310 = alloca { i64, i8* }*
  %t311 = alloca i64
  %t320 = alloca %nyx_string*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %t307 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t308 = call i64 @nyx_array_get({ i64, i8* }* %t307, i64 6)
  %t309 = inttoptr i64 %t308 to { i64, i8* }*
  store { i64, i8* }* %t309, { i64, i8* }** %t310
  store i64 0, i64* %t311
  br label %while_cond90
while_cond90:
  %t312 = load i64, i64* %t311
  %t313 = load { i64, i8* }*, { i64, i8* }** %t310
  %t314 = call i64 @nyx_array_length({ i64, i8* }* %t313)
  %t315 = icmp slt i64 %t312, %t314
  br i1 %t315, label %while_body91, label %while_end92
while_body91:
  %t316 = load { i64, i8* }*, { i64, i8* }** %t310
  %t317 = load i64, i64* %t311
  %t318 = call i64 @nyx_array_get_checked({ i64, i8* }* %t316, i64 %t317, i64 2)
  %t319 = inttoptr i64 %t318 to %nyx_string*
  store %nyx_string* %t319, %nyx_string** %t320
  %t321 = load %nyx_string*, %nyx_string** %t320
  %t322 = load %nyx_string*, %nyx_string** %name.ptr
  %t323 = call i1 @nyx_string_equals(%nyx_string* %t321, %nyx_string* %t322)
  br i1 %t323, label %then93, label %else94
then93:
  ret i1 1
else94:
  br label %merge95
merge95:
  %t324 = load i64, i64* %t311
  %t325 = add i64 %t324, 1
  store i64 %t325, i64* %t311
  br label %while_cond90
while_end92:
  ret i1 0
}

define internal i64 @tm_add_ptr_param(
{ i64, i8* }* %tmap.param, %nyx_string* %name.param) {
  %tmap.ptr = alloca { i64, i8* }*
  %name.ptr = alloca %nyx_string*
  %t329 = alloca { i64, i8* }*
  %t330 = alloca i64
  %t339 = alloca %nyx_string*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %t326 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t327 = call i64 @nyx_array_get({ i64, i8* }* %t326, i64 4)
  %t328 = inttoptr i64 %t327 to { i64, i8* }*
  store { i64, i8* }* %t328, { i64, i8* }** %t329
  store i64 0, i64* %t330
  br label %while_cond96
while_cond96:
  %t331 = load i64, i64* %t330
  %t332 = load { i64, i8* }*, { i64, i8* }** %t329
  %t333 = call i64 @nyx_array_length({ i64, i8* }* %t332)
  %t334 = icmp slt i64 %t331, %t333
  br i1 %t334, label %while_body97, label %while_end98
while_body97:
  %t335 = load { i64, i8* }*, { i64, i8* }** %t329
  %t336 = load i64, i64* %t330
  %t337 = call i64 @nyx_array_get_checked({ i64, i8* }* %t335, i64 %t336, i64 2)
  %t338 = inttoptr i64 %t337 to %nyx_string*
  store %nyx_string* %t338, %nyx_string** %t339
  %t340 = load %nyx_string*, %nyx_string** %t339
  %t341 = load %nyx_string*, %nyx_string** %name.ptr
  %t342 = call i1 @nyx_string_equals(%nyx_string* %t340, %nyx_string* %t341)
  br i1 %t342, label %then99, label %else100
then99:
  ret i64 0
else100:
  br label %merge101
merge101:
  %t343 = load i64, i64* %t330
  %t344 = add i64 %t343, 1
  store i64 %t344, i64* %t330
  br label %while_cond96
while_end98:
  %t345 = load { i64, i8* }*, { i64, i8* }** %t329
  %t346 = load %nyx_string*, %nyx_string** %name.ptr
  %t347 = ptrtoint %nyx_string* %t346 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t345, i64 %t347, i64 2)
  ret i64 0
}

define internal i1 @tm_is_ptr_param(
{ i64, i8* }* %tmap.param, %nyx_string* %name.param) {
  %tmap.ptr = alloca { i64, i8* }*
  %name.ptr = alloca %nyx_string*
  %t351 = alloca { i64, i8* }*
  %t352 = alloca i64
  %t361 = alloca %nyx_string*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %t348 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t349 = call i64 @nyx_array_get({ i64, i8* }* %t348, i64 4)
  %t350 = inttoptr i64 %t349 to { i64, i8* }*
  store { i64, i8* }* %t350, { i64, i8* }** %t351
  store i64 0, i64* %t352
  br label %while_cond102
while_cond102:
  %t353 = load i64, i64* %t352
  %t354 = load { i64, i8* }*, { i64, i8* }** %t351
  %t355 = call i64 @nyx_array_length({ i64, i8* }* %t354)
  %t356 = icmp slt i64 %t353, %t355
  br i1 %t356, label %while_body103, label %while_end104
while_body103:
  %t357 = load { i64, i8* }*, { i64, i8* }** %t351
  %t358 = load i64, i64* %t352
  %t359 = call i64 @nyx_array_get_checked({ i64, i8* }* %t357, i64 %t358, i64 2)
  %t360 = inttoptr i64 %t359 to %nyx_string*
  store %nyx_string* %t360, %nyx_string** %t361
  %t362 = load %nyx_string*, %nyx_string** %t361
  %t363 = load %nyx_string*, %nyx_string** %name.ptr
  %t364 = call i1 @nyx_string_equals(%nyx_string* %t362, %nyx_string* %t363)
  br i1 %t364, label %then105, label %else106
then105:
  ret i1 1
else106:
  br label %merge107
merge107:
  %t365 = load i64, i64* %t352
  %t366 = add i64 %t365, 1
  store i64 %t366, i64* %t352
  br label %while_cond102
while_end104:
  ret i1 0
}

define internal i64 @bc_inherit_captures(
{ i64, i8* }* %outer.param, { i64, i8* }* %child.param) {
  %outer.ptr = alloca { i64, i8* }*
  %child.ptr = alloca { i64, i8* }*
  %t373 = alloca { i64, i8* }*
  %t374 = alloca i64
  %t383 = alloca %nyx_string*
  %t392 = alloca { i64, i8* }*
  %t393 = alloca i64
  %t402 = alloca %nyx_string*
  store { i64, i8* }* %outer.param, { i64, i8* }** %outer.ptr
  store { i64, i8* }* %child.param, { i64, i8* }** %child.ptr
  %t367 = load { i64, i8* }*, { i64, i8* }** %outer.ptr
  %t368 = call i1 @tm_is_fn_tmap({ i64, i8* }* %t367)
  %t369 = xor i1 %t368, true
  br i1 %t369, label %then108, label %else109
then108:
  ret i64 0
else109:
  br label %merge110
merge110:
  %t370 = load { i64, i8* }*, { i64, i8* }** %outer.ptr
  %t371 = call i64 @nyx_array_get({ i64, i8* }* %t370, i64 3)
  %t372 = inttoptr i64 %t371 to { i64, i8* }*
  store { i64, i8* }* %t372, { i64, i8* }** %t373
  store i64 0, i64* %t374
  br label %while_cond111
while_cond111:
  %t375 = load i64, i64* %t374
  %t376 = load { i64, i8* }*, { i64, i8* }** %t373
  %t377 = call i64 @nyx_array_length({ i64, i8* }* %t376)
  %t378 = icmp slt i64 %t375, %t377
  br i1 %t378, label %while_body112, label %while_end113
while_body112:
  %t379 = load { i64, i8* }*, { i64, i8* }** %t373
  %t380 = load i64, i64* %t374
  %t381 = call i64 @nyx_array_get_checked({ i64, i8* }* %t379, i64 %t380, i64 2)
  %t382 = inttoptr i64 %t381 to %nyx_string*
  store %nyx_string* %t382, %nyx_string** %t383
  %t384 = load { i64, i8* }*, { i64, i8* }** %child.ptr
  %t385 = load %nyx_string*, %nyx_string** %t383
  %t386 = call i64 @tm_add_capture({ i64, i8* }* %t384, %nyx_string* %t385)
  %t387 = load i64, i64* %t374
  %t388 = add i64 %t387, 1
  store i64 %t388, i64* %t374
  br label %while_cond111
while_end113:
  %t389 = load { i64, i8* }*, { i64, i8* }** %outer.ptr
  %t390 = call i64 @nyx_array_get({ i64, i8* }* %t389, i64 6)
  %t391 = inttoptr i64 %t390 to { i64, i8* }*
  store { i64, i8* }* %t391, { i64, i8* }** %t392
  store i64 0, i64* %t393
  br label %while_cond114
while_cond114:
  %t394 = load i64, i64* %t393
  %t395 = load { i64, i8* }*, { i64, i8* }** %t392
  %t396 = call i64 @nyx_array_length({ i64, i8* }* %t395)
  %t397 = icmp slt i64 %t394, %t396
  br i1 %t397, label %while_body115, label %while_end116
while_body115:
  %t398 = load { i64, i8* }*, { i64, i8* }** %t392
  %t399 = load i64, i64* %t393
  %t400 = call i64 @nyx_array_get_checked({ i64, i8* }* %t398, i64 %t399, i64 2)
  %t401 = inttoptr i64 %t400 to %nyx_string*
  store %nyx_string* %t401, %nyx_string** %t402
  %t403 = load { i64, i8* }*, { i64, i8* }** %child.ptr
  %t404 = load %nyx_string*, %nyx_string** %t402
  %t405 = call i64 @tm_add_capture({ i64, i8* }* %t403, %nyx_string* %t404)
  %t406 = load i64, i64* %t393
  %t407 = add i64 %t406, 1
  store i64 %t407, i64* %t393
  br label %while_cond114
while_end116:
  ret i64 0
}

define internal i1 @bc_dest_outlives(
%nyx_string* %root.param, { i64, i8* }* %tmap.param) {
  %root.ptr = alloca %nyx_string*
  %tmap.ptr = alloca { i64, i8* }*
  store %nyx_string* %root.param, %nyx_string** %root.ptr
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %t408 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t409 = load %nyx_string*, %nyx_string** %root.ptr
  %t410 = call i1 @tm_is_ptr_param({ i64, i8* }* %t408, %nyx_string* %t409)
  br i1 %t410, label %then117, label %else118
then117:
  ret i1 1
else118:
  br label %merge119
merge119:
  %t411 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t412 = load %nyx_string*, %nyx_string** %root.ptr
  %t413 = call i1 @tm_is_local({ i64, i8* }* %t411, %nyx_string* %t412)
  %t414 = xor i1 %t413, true
  br i1 %t414, label %then120, label %else121
then120:
  %t415 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t416 = load %nyx_string*, %nyx_string** %root.ptr
  %t417 = call i1 @tm_is_capture({ i64, i8* }* %t415, %nyx_string* %t416)
  br i1 %t417, label %then123, label %else124
then123:
  ret i1 0
else124:
  br label %merge125
merge125:
  ret i1 1
else121:
  br label %merge122
merge122:
  ret i1 0
}

define internal i64 @bc_register_pattern_bindings(
%ASTNode %pattern.param, { i64, i8* }* %tmap.param) {
  %pattern.ptr = alloca %ASTNode
  %tmap.ptr = alloca { i64, i8* }*
  %t420 = alloca %nyx_string*
  %t423 = alloca { i64, i8* }*
  %t431 = alloca %nyx_string*
  %t442 = alloca { i64, i8* }*
  %t443 = alloca i64
  %t452 = alloca %nyx_string*
  %t465 = alloca { i64, i8* }*
  %t466 = alloca i64
  %t475 = alloca { i64, i8* }*
  %t479 = alloca %nyx_string*
  %t492 = alloca { i64, i8* }*
  %t493 = alloca i64
  %t496 = alloca %nyx_string*
  %t499 = alloca %nyx_string*
  %t514 = alloca %ASTNode
  %t520 = alloca %ASTNode
  %t527 = alloca { i64, i8* }*
  %t531 = alloca %nyx_string*
  %t543 = alloca { i64, i8* }*
  %t544 = alloca i64
  %t553 = alloca %nyx_string*
  store %ASTNode %pattern.param, %ASTNode* %pattern.ptr
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %t418 = getelementptr %ASTNode, %ASTNode* %pattern.ptr, i32 0, i32 0
  %t419 = load %nyx_string*, %nyx_string** %t418
  store %nyx_string* %t419, %nyx_string** %t420
  %t421 = getelementptr %ASTNode, %ASTNode* %pattern.ptr, i32 0, i32 1
  %t422 = load { i64, i8* }*, { i64, i8* }** %t421
  store { i64, i8* }* %t422, { i64, i8* }** %t423
  %t424 = load %nyx_string*, %nyx_string** %t420
  %t425 = getelementptr [19 x i8], [19 x i8]* @.str12, i32 0, i32 0
  %t426 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str12.c, i8* %t425, i64 18)
  %t427 = call i1 @nyx_string_equals(%nyx_string* %t424, %nyx_string* %t426)
  br i1 %t427, label %then126, label %else127
then126:
  %t428 = load { i64, i8* }*, { i64, i8* }** %t423
  %t429 = call i64 @nyx_array_get_checked({ i64, i8* }* %t428, i64 0, i64 2)
  %t430 = inttoptr i64 %t429 to %nyx_string*
  store %nyx_string* %t430, %nyx_string** %t431
  %t432 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t433 = load %nyx_string*, %nyx_string** %t431
  %t434 = call i64 @tm_add_local({ i64, i8* }* %t432, %nyx_string* %t433)
  ret i64 0
else127:
  br label %merge128
merge128:
  %t435 = load %nyx_string*, %nyx_string** %t420
  %t436 = getelementptr [14 x i8], [14 x i8]* @.str13, i32 0, i32 0
  %t437 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str13.c, i8* %t436, i64 13)
  %t438 = call i1 @nyx_string_equals(%nyx_string* %t435, %nyx_string* %t437)
  br i1 %t438, label %then129, label %else130
then129:
  %t439 = load { i64, i8* }*, { i64, i8* }** %t423
  %t440 = call i64 @nyx_array_get({ i64, i8* }* %t439, i64 2)
  %t441 = inttoptr i64 %t440 to { i64, i8* }*
  store { i64, i8* }* %t441, { i64, i8* }** %t442
  store i64 0, i64* %t443
  br label %while_cond132
while_cond132:
  %t444 = load i64, i64* %t443
  %t445 = load { i64, i8* }*, { i64, i8* }** %t442
  %t446 = call i64 @nyx_array_length({ i64, i8* }* %t445)
  %t447 = icmp slt i64 %t444, %t446
  br i1 %t447, label %while_body133, label %while_end134
while_body133:
  %t448 = load { i64, i8* }*, { i64, i8* }** %t442
  %t449 = load i64, i64* %t443
  %t450 = call i64 @nyx_array_get_checked({ i64, i8* }* %t448, i64 %t449, i64 2)
  %t451 = inttoptr i64 %t450 to %nyx_string*
  store %nyx_string* %t451, %nyx_string** %t452
  %t453 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t454 = load %nyx_string*, %nyx_string** %t452
  %t455 = call i64 @tm_add_local({ i64, i8* }* %t453, %nyx_string* %t454)
  %t456 = load i64, i64* %t443
  %t457 = add i64 %t456, 1
  store i64 %t457, i64* %t443
  br label %while_cond132
while_end134:
  ret i64 0
else130:
  br label %merge131
merge131:
  %t458 = load %nyx_string*, %nyx_string** %t420
  %t459 = getelementptr [15 x i8], [15 x i8]* @.str14, i32 0, i32 0
  %t460 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str14.c, i8* %t459, i64 14)
  %t461 = call i1 @nyx_string_equals(%nyx_string* %t458, %nyx_string* %t460)
  br i1 %t461, label %then135, label %else136
then135:
  %t462 = load { i64, i8* }*, { i64, i8* }** %t423
  %t463 = call i64 @nyx_array_get({ i64, i8* }* %t462, i64 1)
  %t464 = inttoptr i64 %t463 to { i64, i8* }*
  store { i64, i8* }* %t464, { i64, i8* }** %t465
  store i64 0, i64* %t466
  br label %while_cond138
while_cond138:
  %t467 = load i64, i64* %t466
  %t468 = load { i64, i8* }*, { i64, i8* }** %t465
  %t469 = call i64 @nyx_array_length({ i64, i8* }* %t468)
  %t470 = icmp slt i64 %t467, %t469
  br i1 %t470, label %while_body139, label %while_end140
while_body139:
  %t471 = load { i64, i8* }*, { i64, i8* }** %t465
  %t472 = load i64, i64* %t466
  %t473 = call i64 @nyx_array_get({ i64, i8* }* %t471, i64 %t472)
  %t474 = inttoptr i64 %t473 to { i64, i8* }*
  store { i64, i8* }* %t474, { i64, i8* }** %t475
  %t476 = load { i64, i8* }*, { i64, i8* }** %t475
  %t477 = call i64 @nyx_array_get_checked({ i64, i8* }* %t476, i64 1, i64 2)
  %t478 = inttoptr i64 %t477 to %nyx_string*
  store %nyx_string* %t478, %nyx_string** %t479
  %t480 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t481 = load %nyx_string*, %nyx_string** %t479
  %t482 = call i64 @tm_add_local({ i64, i8* }* %t480, %nyx_string* %t481)
  %t483 = load i64, i64* %t466
  %t484 = add i64 %t483, 1
  store i64 %t484, i64* %t466
  br label %while_cond138
while_end140:
  ret i64 0
else136:
  br label %merge137
merge137:
  %t485 = load %nyx_string*, %nyx_string** %t420
  %t486 = getelementptr [21 x i8], [21 x i8]* @.str15, i32 0, i32 0
  %t487 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str15.c, i8* %t486, i64 20)
  %t488 = call i1 @nyx_string_equals(%nyx_string* %t485, %nyx_string* %t487)
  br i1 %t488, label %then141, label %else142
then141:
  %t489 = load { i64, i8* }*, { i64, i8* }** %t423
  %t490 = call i64 @nyx_array_get({ i64, i8* }* %t489, i64 2)
  %t491 = inttoptr i64 %t490 to { i64, i8* }*
  store { i64, i8* }* %t491, { i64, i8* }** %t492
  store i64 0, i64* %t493
  %t494 = getelementptr [19 x i8], [19 x i8]* @.str16, i32 0, i32 0
  %t495 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str16.c, i8* %t494, i64 18)
  store %nyx_string* %t495, %nyx_string** %t496
  %t497 = getelementptr [14 x i8], [14 x i8]* @.str17, i32 0, i32 0
  %t498 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str17.c, i8* %t497, i64 13)
  store %nyx_string* %t498, %nyx_string** %t499
  br label %while_cond144
while_cond144:
  %t500 = load i64, i64* %t493
  %t501 = load { i64, i8* }*, { i64, i8* }** %t492
  %t502 = call i64 @nyx_array_length({ i64, i8* }* %t501)
  %t503 = icmp slt i64 %t500, %t502
  br i1 %t503, label %while_body145, label %while_end146
while_body145:
  %t504 = load { i64, i8* }*, { i64, i8* }** %t492
  %t505 = load i64, i64* %t493
  %t506 = call i64 @nyx_array_get({ i64, i8* }* %t504, i64 %t505)
  %t507 = inttoptr i64 %t506 to { i64, i8* }*
  %t508 = call i64 @nyx_array_get({ i64, i8* }* %t507, i64 0)
  %t509 = call i64 @nyx_array_get({ i64, i8* }* %t507, i64 1)
  %t510 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t507, i64 2)
  %t511 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t507, i64 3)
  %t512 = inttoptr i64 %t508 to %nyx_string*
  %t513 = inttoptr i64 %t509 to { i64, i8* }*
  %t515 = getelementptr inbounds %ASTNode, %ASTNode* %t514, i32 0, i32 0
  store %nyx_string* %t512, %nyx_string** %t515
  %t516 = getelementptr inbounds %ASTNode, %ASTNode* %t514, i32 0, i32 1
  store { i64, i8* }* %t513, { i64, i8* }** %t516
  %t517 = getelementptr inbounds %ASTNode, %ASTNode* %t514, i32 0, i32 2
  store i64 %t510, i64* %t517
  %t518 = getelementptr inbounds %ASTNode, %ASTNode* %t514, i32 0, i32 3
  store i64 %t511, i64* %t518
  %t519 = load %ASTNode, %ASTNode* %t514
  store %ASTNode %t519, %ASTNode* %t520
  %t521 = getelementptr %ASTNode, %ASTNode* %t520, i32 0, i32 0
  %t522 = load %nyx_string*, %nyx_string** %t521
  %t523 = load %nyx_string*, %nyx_string** %t496
  %t524 = call i1 @nyx_string_equals(%nyx_string* %t522, %nyx_string* %t523)
  br i1 %t524, label %then147, label %else148
then147:
  %t525 = getelementptr %ASTNode, %ASTNode* %t520, i32 0, i32 1
  %t526 = load { i64, i8* }*, { i64, i8* }** %t525
  store { i64, i8* }* %t526, { i64, i8* }** %t527
  %t528 = load { i64, i8* }*, { i64, i8* }** %t527
  %t529 = call i64 @nyx_array_get_checked({ i64, i8* }* %t528, i64 0, i64 2)
  %t530 = inttoptr i64 %t529 to %nyx_string*
  store %nyx_string* %t530, %nyx_string** %t531
  %t532 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t533 = load %nyx_string*, %nyx_string** %t531
  %t534 = call i64 @tm_add_local({ i64, i8* }* %t532, %nyx_string* %t533)
  br label %merge149
else148:
  br label %merge149
merge149:
  %t535 = getelementptr %ASTNode, %ASTNode* %t520, i32 0, i32 0
  %t536 = load %nyx_string*, %nyx_string** %t535
  %t537 = load %nyx_string*, %nyx_string** %t499
  %t538 = call i1 @nyx_string_equals(%nyx_string* %t536, %nyx_string* %t537)
  br i1 %t538, label %then150, label %else151
then150:
  %t539 = getelementptr %ASTNode, %ASTNode* %t520, i32 0, i32 1
  %t540 = load { i64, i8* }*, { i64, i8* }** %t539
  %t541 = call i64 @nyx_array_get({ i64, i8* }* %t540, i64 2)
  %t542 = inttoptr i64 %t541 to { i64, i8* }*
  store { i64, i8* }* %t542, { i64, i8* }** %t543
  store i64 0, i64* %t544
  br label %while_cond153
while_cond153:
  %t545 = load i64, i64* %t544
  %t546 = load { i64, i8* }*, { i64, i8* }** %t543
  %t547 = call i64 @nyx_array_length({ i64, i8* }* %t546)
  %t548 = icmp slt i64 %t545, %t547
  br i1 %t548, label %while_body154, label %while_end155
while_body154:
  %t549 = load { i64, i8* }*, { i64, i8* }** %t543
  %t550 = load i64, i64* %t544
  %t551 = call i64 @nyx_array_get_checked({ i64, i8* }* %t549, i64 %t550, i64 2)
  %t552 = inttoptr i64 %t551 to %nyx_string*
  store %nyx_string* %t552, %nyx_string** %t553
  %t554 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t555 = load %nyx_string*, %nyx_string** %t553
  %t556 = call i64 @tm_add_local({ i64, i8* }* %t554, %nyx_string* %t555)
  %t557 = load i64, i64* %t544
  %t558 = add i64 %t557, 1
  store i64 %t558, i64* %t544
  br label %while_cond153
while_end155:
  br label %merge152
else151:
  br label %merge152
merge152:
  %t559 = load i64, i64* %t493
  %t560 = add i64 %t559, 1
  store i64 %t560, i64* %t493
  br label %while_cond144
while_end146:
  ret i64 0
else142:
  br label %merge143
merge143:
  ret i64 0
}

define internal i64 @bc_mode(
) {
  %t565 = alloca %nyx_string*
  %t561 = getelementptr [11 x i8], [11 x i8]* @.str18, i32 0, i32 0
  %t562 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str18.c, i8* %t561, i64 10)
  %t563 = call i8* @nyx_string_to_cstr(%nyx_string* %t562)
  %t564 = call %nyx_string* @nyx_getenv(i8* %t563)
  store %nyx_string* %t564, %nyx_string** %t565
  %t566 = load %nyx_string*, %nyx_string** %t565
  %t567 = getelementptr [6 x i8], [6 x i8]* @.str19, i32 0, i32 0
  %t568 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str19.c, i8* %t567, i64 5)
  %t569 = call i1 @nyx_string_equals(%nyx_string* %t566, %nyx_string* %t568)
  br i1 %t569, label %then156, label %else157
then156:
  ret i64 2
else157:
  br label %merge158
merge158:
  %t570 = load %nyx_string*, %nyx_string** %t565
  %t571 = getelementptr [5 x i8], [5 x i8]* @.str20, i32 0, i32 0
  %t572 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str20.c, i8* %t571, i64 4)
  %t573 = call i1 @nyx_string_equals(%nyx_string* %t570, %nyx_string* %t572)
  br i1 %t573, label %then159, label %else160
then159:
  ret i64 1
else160:
  br label %merge161
merge161:
  ret i64 0
}

define internal i64 @bc_maybe_move(
{ i64, i8* }* %state.param, { i64, i8* }* %tmap.param, %ASTNode %arg.param) {
  %state.ptr = alloca { i64, i8* }*
  %tmap.ptr = alloca { i64, i8* }*
  %arg.ptr = alloca %ASTNode
  %t576 = alloca %nyx_string*
  %t577 = alloca i1
  %t591 = alloca %nyx_string*
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  store %ASTNode %arg.param, %ASTNode* %arg.ptr
  %t574 = getelementptr %ASTNode, %ASTNode* %arg.ptr, i32 0, i32 0
  %t575 = load %nyx_string*, %nyx_string** %t574
  store %nyx_string* %t575, %nyx_string** %t576
  store i1 false, i1* %t577
  %t578 = load %nyx_string*, %nyx_string** %t576
  %t579 = getelementptr [8 x i8], [8 x i8]* @.str21, i32 0, i32 0
  %t580 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str21.c, i8* %t579, i64 7)
  %t581 = call i1 @nyx_string_equals(%nyx_string* %t578, %nyx_string* %t580)
  %t582 = xor i1 %t581, true
  br i1 %t582, label %sc_and_rhs162, label %sc_and_end163
sc_and_rhs162:
  %t583 = load %nyx_string*, %nyx_string** %t576
  %t584 = getelementptr [12 x i8], [12 x i8]* @.str22, i32 0, i32 0
  %t585 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str22.c, i8* %t584, i64 11)
  %t586 = call i1 @nyx_string_equals(%nyx_string* %t583, %nyx_string* %t585)
  %t587 = xor i1 %t586, true
  store i1 %t587, i1* %t577
  br label %sc_and_end163
sc_and_end163:
  %t588 = load i1, i1* %t577
  br i1 %t588, label %then164, label %else165
then164:
  %t589 = load %ASTNode, %ASTNode* %arg.ptr
  %t590 = call %nyx_string* @place_of(%ASTNode %t589)
  store %nyx_string* %t590, %nyx_string** %t591
  %t592 = load %nyx_string*, %nyx_string** %t591
  %t593 = getelementptr [1 x i8], [1 x i8]* @.str23, i32 0, i32 0
  %t594 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str23.c, i8* %t593, i64 0)
  %t595 = call i1 @nyx_string_equals(%nyx_string* %t592, %nyx_string* %t594)
  %t596 = xor i1 %t595, true
  br i1 %t596, label %then167, label %else168
then167:
  %t597 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t598 = load %nyx_string*, %nyx_string** %t591
  %t599 = call i1 @tm_is_move({ i64, i8* }* %t597, %nyx_string* %t598)
  br i1 %t599, label %then170, label %else171
then170:
  %t600 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t601 = load %nyx_string*, %nyx_string** %t591
  %t602 = call i64 @mark_moved({ i64, i8* }* %t600, %nyx_string* %t601)
  br label %merge172
else171:
  br label %merge172
merge172:
  br label %merge169
else168:
  br label %merge169
merge169:
  br label %merge166
else165:
  br label %merge166
merge166:
  ret i64 0
}

define internal %nyx_string* @bc_borrow_is_frame_bound(
%ASTNode %addr_node.param, { i64, i8* }* %tmap.param) {
  %addr_node.ptr = alloca %ASTNode
  %tmap.ptr = alloca { i64, i8* }*
  %t605 = alloca %ASTNode
  %t613 = alloca %nyx_string*
  store %ASTNode %addr_node.param, %ASTNode* %addr_node.ptr
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %t603 = load %ASTNode, %ASTNode* %addr_node.ptr
  %t604 = call %ASTNode @bc_node_at(%ASTNode %t603, i64 0)
  store %ASTNode %t604, %ASTNode* %t605
  %t606 = getelementptr %ASTNode, %ASTNode* %t605, i32 0, i32 0
  %t607 = load %nyx_string*, %nyx_string** %t606
  %t608 = getelementptr [11 x i8], [11 x i8]* @.str24, i32 0, i32 0
  %t609 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str24.c, i8* %t608, i64 10)
  %t610 = call i1 @nyx_string_equals(%nyx_string* %t607, %nyx_string* %t609)
  br i1 %t610, label %then173, label %else174
then173:
  %t611 = load %ASTNode, %ASTNode* %t605
  %t612 = call %nyx_string* @place_of(%ASTNode %t611)
  store %nyx_string* %t612, %nyx_string** %t613
  %t614 = load %nyx_string*, %nyx_string** %t613
  %t615 = getelementptr [1 x i8], [1 x i8]* @.str25, i32 0, i32 0
  %t616 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str25.c, i8* %t615, i64 0)
  %t617 = call i1 @nyx_string_equals(%nyx_string* %t614, %nyx_string* %t616)
  %t618 = xor i1 %t617, true
  br i1 %t618, label %then176, label %else177
then176:
  %t619 = load %nyx_string*, %nyx_string** %t613
  %t620 = getelementptr [5 x i8], [5 x i8]* @.str26, i32 0, i32 0
  %t621 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str26.c, i8* %t620, i64 4)
  %t622 = call i1 @nyx_string_equals(%nyx_string* %t619, %nyx_string* %t621)
  %t623 = xor i1 %t622, true
  br i1 %t623, label %then179, label %else180
then179:
  %t624 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t625 = load %nyx_string*, %nyx_string** %t613
  %t626 = call i1 @tm_is_local({ i64, i8* }* %t624, %nyx_string* %t625)
  br i1 %t626, label %then182, label %else183
then182:
  %t627 = load %nyx_string*, %nyx_string** %t613
  ret %nyx_string* %t627
else183:
  br label %merge184
merge184:
  br label %merge181
else180:
  br label %merge181
merge181:
  br label %merge178
else177:
  br label %merge178
merge178:
  br label %merge175
else174:
  br label %merge175
merge175:
  %t628 = getelementptr [1 x i8], [1 x i8]* @.str27, i32 0, i32 0
  %t629 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str27.c, i8* %t628, i64 0)
  ret %nyx_string* %t629
}

define internal %nyx_string* @bc_escaping_origin(
%ASTNode %expr.param, { i64, i8* }* %state.param, { i64, i8* }* %tmap.param) {
  %expr.ptr = alloca %ASTNode
  %state.ptr = alloca { i64, i8* }*
  %tmap.ptr = alloca { i64, i8* }*
  %t632 = alloca %nyx_string*
  %t653 = alloca %nyx_string*
  %t668 = alloca %ASTNode
  %t671 = alloca %nyx_string*
  %t693 = alloca { i64, i8* }*
  %t697 = alloca { i64, i8* }*
  %t700 = alloca i64
  %t703 = alloca { i64, i8* }*
  %t706 = alloca %nyx_string*
  %t707 = alloca i64
  %t710 = alloca %nyx_string*
  %t718 = alloca i64
  %t735 = alloca %ASTNode
  %t741 = alloca %ASTNode
  %t746 = alloca %nyx_string*
  %t753 = alloca %nyx_string*
  store %ASTNode %expr.param, %ASTNode* %expr.ptr
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %t630 = getelementptr %ASTNode, %ASTNode* %expr.ptr, i32 0, i32 0
  %t631 = load %nyx_string*, %nyx_string** %t630
  store %nyx_string* %t631, %nyx_string** %t632
  %t633 = load %nyx_string*, %nyx_string** %t632
  %t634 = getelementptr [8 x i8], [8 x i8]* @.str28, i32 0, i32 0
  %t635 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str28.c, i8* %t634, i64 7)
  %t636 = call i1 @nyx_string_equals(%nyx_string* %t633, %nyx_string* %t635)
  br i1 %t636, label %then185, label %else186
then185:
  %t637 = load %ASTNode, %ASTNode* %expr.ptr
  %t638 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t639 = call %nyx_string* @bc_borrow_is_frame_bound(%ASTNode %t637, { i64, i8* }* %t638)
  ret %nyx_string* %t639
else186:
  br label %merge187
merge187:
  %t640 = load %nyx_string*, %nyx_string** %t632
  %t641 = getelementptr [12 x i8], [12 x i8]* @.str29, i32 0, i32 0
  %t642 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str29.c, i8* %t641, i64 11)
  %t643 = call i1 @nyx_string_equals(%nyx_string* %t640, %nyx_string* %t642)
  br i1 %t643, label %then188, label %else189
then188:
  %t644 = load %ASTNode, %ASTNode* %expr.ptr
  %t645 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t646 = call %nyx_string* @bc_borrow_is_frame_bound(%ASTNode %t644, { i64, i8* }* %t645)
  ret %nyx_string* %t646
else189:
  br label %merge190
merge190:
  %t647 = load %nyx_string*, %nyx_string** %t632
  %t648 = getelementptr [11 x i8], [11 x i8]* @.str30, i32 0, i32 0
  %t649 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str30.c, i8* %t648, i64 10)
  %t650 = call i1 @nyx_string_equals(%nyx_string* %t647, %nyx_string* %t649)
  br i1 %t650, label %then191, label %else192
then191:
  %t651 = load %ASTNode, %ASTNode* %expr.ptr
  %t652 = call %nyx_string* @place_of(%ASTNode %t651)
  store %nyx_string* %t652, %nyx_string** %t653
  %t654 = load %nyx_string*, %nyx_string** %t653
  %t655 = getelementptr [1 x i8], [1 x i8]* @.str31, i32 0, i32 0
  %t656 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str31.c, i8* %t655, i64 0)
  %t657 = call i1 @nyx_string_equals(%nyx_string* %t654, %nyx_string* %t656)
  %t658 = xor i1 %t657, true
  br i1 %t658, label %then194, label %else195
then194:
  %t659 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t660 = load %nyx_string*, %nyx_string** %t653
  %t661 = call %nyx_string* @get_reforigin({ i64, i8* }* %t659, %nyx_string* %t660)
  ret %nyx_string* %t661
else195:
  br label %merge196
merge196:
  br label %merge193
else192:
  br label %merge193
merge193:
  %t662 = load %nyx_string*, %nyx_string** %t632
  %t663 = getelementptr [5 x i8], [5 x i8]* @.str32, i32 0, i32 0
  %t664 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str32.c, i8* %t663, i64 4)
  %t665 = call i1 @nyx_string_equals(%nyx_string* %t662, %nyx_string* %t664)
  br i1 %t665, label %then197, label %else198
then197:
  %t666 = load %ASTNode, %ASTNode* %expr.ptr
  %t667 = call %ASTNode @bc_node_at(%ASTNode %t666, i64 0)
  store %ASTNode %t667, %ASTNode* %t668
  %t669 = getelementptr [1 x i8], [1 x i8]* @.str33, i32 0, i32 0
  %t670 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str33.c, i8* %t669, i64 0)
  store %nyx_string* %t670, %nyx_string** %t671
  %t672 = getelementptr %ASTNode, %ASTNode* %t668, i32 0, i32 0
  %t673 = load %nyx_string*, %nyx_string** %t672
  %t674 = getelementptr [11 x i8], [11 x i8]* @.str34, i32 0, i32 0
  %t675 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str34.c, i8* %t674, i64 10)
  %t676 = call i1 @nyx_string_equals(%nyx_string* %t673, %nyx_string* %t675)
  br i1 %t676, label %then200, label %else201
then200:
  %t677 = load %ASTNode, %ASTNode* %t668
  %t678 = call %nyx_string* @place_of(%ASTNode %t677)
  store %nyx_string* %t678, %nyx_string** %t671
  br label %merge202
else201:
  br label %merge202
merge202:
  %t679 = load %nyx_string*, %nyx_string** %t671
  %t680 = getelementptr [1 x i8], [1 x i8]* @.str35, i32 0, i32 0
  %t681 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str35.c, i8* %t680, i64 0)
  %t682 = call i1 @nyx_string_equals(%nyx_string* %t679, %nyx_string* %t681)
  %t683 = xor i1 %t682, true
  br i1 %t683, label %then203, label %else204
then203:
  %t684 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t685 = load %nyx_string*, %nyx_string** %t671
  %t686 = call i1 @tm_is_local({ i64, i8* }* %t684, %nyx_string* %t685)
  br i1 %t686, label %then206, label %else207
then206:
  %t687 = getelementptr [1 x i8], [1 x i8]* @.str36, i32 0, i32 0
  %t688 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str36.c, i8* %t687, i64 0)
  store %nyx_string* %t688, %nyx_string** %t671
  br label %merge208
else207:
  br label %merge208
merge208:
  br label %merge205
else204:
  br label %merge205
merge205:
  %t689 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t690 = call i8* @tm_sigs({ i64, i8* }* %t689)
  %t691 = load %nyx_string*, %nyx_string** %t671
  %t692 = call { i64, i8* }* @sig_lookup(i8* %t690, %nyx_string* %t691)
  store { i64, i8* }* %t692, { i64, i8* }** %t693
  %t694 = load { i64, i8* }*, { i64, i8* }** %t693
  %t695 = call i64 @nyx_array_get({ i64, i8* }* %t694, i64 0)
  %t696 = inttoptr i64 %t695 to { i64, i8* }*
  store { i64, i8* }* %t696, { i64, i8* }** %t697
  %t698 = load { i64, i8* }*, { i64, i8* }** %t693
  %t699 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %t698, i64 1)
  store i64 %t699, i64* %t700
  %t701 = load %ASTNode, %ASTNode* %expr.ptr
  %t702 = call { i64, i8* }* @bc_array_at(%ASTNode %t701, i64 1)
  store { i64, i8* }* %t702, { i64, i8* }** %t703
  %t704 = getelementptr [1 x i8], [1 x i8]* @.str37, i32 0, i32 0
  %t705 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str37.c, i8* %t704, i64 0)
  store %nyx_string* %t705, %nyx_string** %t706
  store i64 0, i64* %t707
  %t708 = getelementptr [1 x i8], [1 x i8]* @.str38, i32 0, i32 0
  %t709 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str38.c, i8* %t708, i64 0)
  store %nyx_string* %t709, %nyx_string** %t710
  br label %while_cond209
while_cond209:
  %t711 = load i64, i64* %t707
  %t712 = load { i64, i8* }*, { i64, i8* }** %t697
  %t713 = call i64 @nyx_array_length({ i64, i8* }* %t712)
  %t714 = icmp slt i64 %t711, %t713
  br i1 %t714, label %while_body210, label %while_end211
while_body210:
  %t715 = load { i64, i8* }*, { i64, i8* }** %t697
  %t716 = load i64, i64* %t707
  %t717 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %t715, i64 %t716)
  store i64 %t717, i64* %t718
  %t719 = load i64, i64* %t718
  %t720 = icmp sge i64 %t719, 0
  br i1 %t720, label %then212, label %else213
then212:
  %t721 = load i64, i64* %t718
  %t722 = load { i64, i8* }*, { i64, i8* }** %t703
  %t723 = call i64 @nyx_array_length({ i64, i8* }* %t722)
  %t724 = icmp slt i64 %t721, %t723
  br i1 %t724, label %then215, label %else216
then215:
  %t725 = load { i64, i8* }*, { i64, i8* }** %t703
  %t726 = load i64, i64* %t718
  %t727 = call i64 @nyx_array_get({ i64, i8* }* %t725, i64 %t726)
  %t728 = inttoptr i64 %t727 to { i64, i8* }*
  %t729 = call i64 @nyx_array_get({ i64, i8* }* %t728, i64 0)
  %t730 = call i64 @nyx_array_get({ i64, i8* }* %t728, i64 1)
  %t731 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t728, i64 2)
  %t732 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t728, i64 3)
  %t733 = inttoptr i64 %t729 to %nyx_string*
  %t734 = inttoptr i64 %t730 to { i64, i8* }*
  %t736 = getelementptr inbounds %ASTNode, %ASTNode* %t735, i32 0, i32 0
  store %nyx_string* %t733, %nyx_string** %t736
  %t737 = getelementptr inbounds %ASTNode, %ASTNode* %t735, i32 0, i32 1
  store { i64, i8* }* %t734, { i64, i8* }** %t737
  %t738 = getelementptr inbounds %ASTNode, %ASTNode* %t735, i32 0, i32 2
  store i64 %t731, i64* %t738
  %t739 = getelementptr inbounds %ASTNode, %ASTNode* %t735, i32 0, i32 3
  store i64 %t732, i64* %t739
  %t740 = load %ASTNode, %ASTNode* %t735
  store %ASTNode %t740, %ASTNode* %t741
  %t742 = load %ASTNode, %ASTNode* %t741
  %t743 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t744 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t745 = call %nyx_string* @bc_escaping_origin(%ASTNode %t742, { i64, i8* }* %t743, { i64, i8* }* %t744)
  store %nyx_string* %t745, %nyx_string** %t746
  %t747 = load %nyx_string*, %nyx_string** %t746
  %t748 = load %nyx_string*, %nyx_string** %t710
  %t749 = call i1 @nyx_string_equals(%nyx_string* %t747, %nyx_string* %t748)
  %t750 = xor i1 %t749, true
  br i1 %t750, label %then218, label %else219
then218:
  %t751 = load %nyx_string*, %nyx_string** %t746
  %t752 = call %nyx_string* @reforigin_name(%nyx_string* %t751)
  store %nyx_string* %t752, %nyx_string** %t753
  %t754 = load i64, i64* %t700
  %t755 = icmp eq i64 %t754, 1
  br i1 %t755, label %then221, label %else222
then221:
  %t756 = load %nyx_string*, %nyx_string** %t746
  %t757 = call i1 @reforigin_is_soft(%nyx_string* %t756)
  br i1 %t757, label %then224, label %else225
then224:
  %t758 = load %nyx_string*, %nyx_string** %t706
  %t759 = load %nyx_string*, %nyx_string** %t710
  %t760 = call i1 @nyx_string_equals(%nyx_string* %t758, %nyx_string* %t759)
  br i1 %t760, label %then227, label %else228
then227:
  %t761 = load %nyx_string*, %nyx_string** %t753
  %t762 = call %nyx_string* @reforigin_mark_soft(%nyx_string* %t761)
  store %nyx_string* %t762, %nyx_string** %t706
  br label %merge229
else228:
  br label %merge229
merge229:
  br label %merge226
else225:
  %t763 = load %nyx_string*, %nyx_string** %t753
  ret %nyx_string* %t763
merge226:
  br label %merge223
else222:
  %t764 = load %nyx_string*, %nyx_string** %t706
  %t765 = load %nyx_string*, %nyx_string** %t710
  %t766 = call i1 @nyx_string_equals(%nyx_string* %t764, %nyx_string* %t765)
  br i1 %t766, label %then230, label %else231
then230:
  %t767 = load %nyx_string*, %nyx_string** %t753
  %t768 = call %nyx_string* @reforigin_mark_soft(%nyx_string* %t767)
  store %nyx_string* %t768, %nyx_string** %t706
  br label %merge232
else231:
  br label %merge232
merge232:
  br label %merge223
merge223:
  br label %merge220
else219:
  br label %merge220
merge220:
  br label %merge217
else216:
  br label %merge217
merge217:
  br label %merge214
else213:
  br label %merge214
merge214:
  %t769 = load i64, i64* %t707
  %t770 = add i64 %t769, 1
  store i64 %t770, i64* %t707
  br label %while_cond209
while_end211:
  %t771 = load %nyx_string*, %nyx_string** %t706
  ret %nyx_string* %t771
else198:
  br label %merge199
merge199:
  %t772 = getelementptr [1 x i8], [1 x i8]* @.str39, i32 0, i32 0
  %t773 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str39.c, i8* %t772, i64 0)
  ret %nyx_string* %t773
}

define internal %nyx_string* @bc_aggregate_escaping_origin(
%ASTNode %expr.param, { i64, i8* }* %state.param, { i64, i8* }* %tmap.param) {
  %expr.ptr = alloca %ASTNode
  %state.ptr = alloca { i64, i8* }*
  %tmap.ptr = alloca { i64, i8* }*
  %t776 = alloca %nyx_string*
  %t777 = alloca i1
  %t789 = alloca { i64, i8* }*
  %t790 = alloca i64
  %t793 = alloca %nyx_string*
  %t808 = alloca %ASTNode
  %t814 = alloca %ASTNode
  %t819 = alloca %nyx_string*
  %t835 = alloca { i64, i8* }*
  %t836 = alloca i64
  %t839 = alloca %nyx_string*
  %t848 = alloca { i64, i8* }*
  %t858 = alloca %ASTNode
  %t864 = alloca %ASTNode
  %t869 = alloca %nyx_string*
  store %ASTNode %expr.param, %ASTNode* %expr.ptr
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %t774 = getelementptr %ASTNode, %ASTNode* %expr.ptr, i32 0, i32 0
  %t775 = load %nyx_string*, %nyx_string** %t774
  store %nyx_string* %t775, %nyx_string** %t776
  store i1 true, i1* %t777
  %t778 = load %nyx_string*, %nyx_string** %t776
  %t779 = getelementptr [6 x i8], [6 x i8]* @.str40, i32 0, i32 0
  %t780 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str40.c, i8* %t779, i64 5)
  %t781 = call i1 @nyx_string_equals(%nyx_string* %t778, %nyx_string* %t780)
  br i1 %t781, label %sc_or_end234, label %sc_or_rhs233
sc_or_rhs233:
  %t782 = load %nyx_string*, %nyx_string** %t776
  %t783 = getelementptr [10 x i8], [10 x i8]* @.str41, i32 0, i32 0
  %t784 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str41.c, i8* %t783, i64 9)
  %t785 = call i1 @nyx_string_equals(%nyx_string* %t782, %nyx_string* %t784)
  store i1 %t785, i1* %t777
  br label %sc_or_end234
sc_or_end234:
  %t786 = load i1, i1* %t777
  br i1 %t786, label %then235, label %else236
then235:
  %t787 = load %ASTNode, %ASTNode* %expr.ptr
  %t788 = call { i64, i8* }* @bc_array_at(%ASTNode %t787, i64 0)
  store { i64, i8* }* %t788, { i64, i8* }** %t789
  store i64 0, i64* %t790
  %t791 = getelementptr [1 x i8], [1 x i8]* @.str42, i32 0, i32 0
  %t792 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str42.c, i8* %t791, i64 0)
  store %nyx_string* %t792, %nyx_string** %t793
  br label %while_cond238
while_cond238:
  %t794 = load i64, i64* %t790
  %t795 = load { i64, i8* }*, { i64, i8* }** %t789
  %t796 = call i64 @nyx_array_length({ i64, i8* }* %t795)
  %t797 = icmp slt i64 %t794, %t796
  br i1 %t797, label %while_body239, label %while_end240
while_body239:
  %t798 = load { i64, i8* }*, { i64, i8* }** %t789
  %t799 = load i64, i64* %t790
  %t800 = call i64 @nyx_array_get({ i64, i8* }* %t798, i64 %t799)
  %t801 = inttoptr i64 %t800 to { i64, i8* }*
  %t802 = call i64 @nyx_array_get({ i64, i8* }* %t801, i64 0)
  %t803 = call i64 @nyx_array_get({ i64, i8* }* %t801, i64 1)
  %t804 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t801, i64 2)
  %t805 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t801, i64 3)
  %t806 = inttoptr i64 %t802 to %nyx_string*
  %t807 = inttoptr i64 %t803 to { i64, i8* }*
  %t809 = getelementptr inbounds %ASTNode, %ASTNode* %t808, i32 0, i32 0
  store %nyx_string* %t806, %nyx_string** %t809
  %t810 = getelementptr inbounds %ASTNode, %ASTNode* %t808, i32 0, i32 1
  store { i64, i8* }* %t807, { i64, i8* }** %t810
  %t811 = getelementptr inbounds %ASTNode, %ASTNode* %t808, i32 0, i32 2
  store i64 %t804, i64* %t811
  %t812 = getelementptr inbounds %ASTNode, %ASTNode* %t808, i32 0, i32 3
  store i64 %t805, i64* %t812
  %t813 = load %ASTNode, %ASTNode* %t808
  store %ASTNode %t813, %ASTNode* %t814
  %t815 = load %ASTNode, %ASTNode* %t814
  %t816 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t817 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t818 = call %nyx_string* @bc_aggregate_escaping_origin(%ASTNode %t815, { i64, i8* }* %t816, { i64, i8* }* %t817)
  store %nyx_string* %t818, %nyx_string** %t819
  %t820 = load %nyx_string*, %nyx_string** %t819
  %t821 = load %nyx_string*, %nyx_string** %t793
  %t822 = call i1 @nyx_string_equals(%nyx_string* %t820, %nyx_string* %t821)
  %t823 = xor i1 %t822, true
  br i1 %t823, label %then241, label %else242
then241:
  %t824 = load %nyx_string*, %nyx_string** %t819
  ret %nyx_string* %t824
else242:
  br label %merge243
merge243:
  %t825 = load i64, i64* %t790
  %t826 = add i64 %t825, 1
  store i64 %t826, i64* %t790
  br label %while_cond238
while_end240:
  %t827 = getelementptr [1 x i8], [1 x i8]* @.str43, i32 0, i32 0
  %t828 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str43.c, i8* %t827, i64 0)
  ret %nyx_string* %t828
else236:
  br label %merge237
merge237:
  %t829 = load %nyx_string*, %nyx_string** %t776
  %t830 = getelementptr [12 x i8], [12 x i8]* @.str44, i32 0, i32 0
  %t831 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str44.c, i8* %t830, i64 11)
  %t832 = call i1 @nyx_string_equals(%nyx_string* %t829, %nyx_string* %t831)
  br i1 %t832, label %then244, label %else245
then244:
  %t833 = load %ASTNode, %ASTNode* %expr.ptr
  %t834 = call { i64, i8* }* @bc_array_at(%ASTNode %t833, i64 1)
  store { i64, i8* }* %t834, { i64, i8* }** %t835
  store i64 0, i64* %t836
  %t837 = getelementptr [1 x i8], [1 x i8]* @.str45, i32 0, i32 0
  %t838 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str45.c, i8* %t837, i64 0)
  store %nyx_string* %t838, %nyx_string** %t839
  br label %while_cond247
while_cond247:
  %t840 = load i64, i64* %t836
  %t841 = load { i64, i8* }*, { i64, i8* }** %t835
  %t842 = call i64 @nyx_array_length({ i64, i8* }* %t841)
  %t843 = icmp slt i64 %t840, %t842
  br i1 %t843, label %while_body248, label %while_end249
while_body248:
  %t844 = load { i64, i8* }*, { i64, i8* }** %t835
  %t845 = load i64, i64* %t836
  %t846 = call i64 @nyx_array_get({ i64, i8* }* %t844, i64 %t845)
  %t847 = inttoptr i64 %t846 to { i64, i8* }*
  store { i64, i8* }* %t847, { i64, i8* }** %t848
  %t849 = load { i64, i8* }*, { i64, i8* }** %t848
  %t850 = call i64 @nyx_array_get({ i64, i8* }* %t849, i64 1)
  %t851 = inttoptr i64 %t850 to { i64, i8* }*
  %t852 = call i64 @nyx_array_get({ i64, i8* }* %t851, i64 0)
  %t853 = call i64 @nyx_array_get({ i64, i8* }* %t851, i64 1)
  %t854 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t851, i64 2)
  %t855 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t851, i64 3)
  %t856 = inttoptr i64 %t852 to %nyx_string*
  %t857 = inttoptr i64 %t853 to { i64, i8* }*
  %t859 = getelementptr inbounds %ASTNode, %ASTNode* %t858, i32 0, i32 0
  store %nyx_string* %t856, %nyx_string** %t859
  %t860 = getelementptr inbounds %ASTNode, %ASTNode* %t858, i32 0, i32 1
  store { i64, i8* }* %t857, { i64, i8* }** %t860
  %t861 = getelementptr inbounds %ASTNode, %ASTNode* %t858, i32 0, i32 2
  store i64 %t854, i64* %t861
  %t862 = getelementptr inbounds %ASTNode, %ASTNode* %t858, i32 0, i32 3
  store i64 %t855, i64* %t862
  %t863 = load %ASTNode, %ASTNode* %t858
  store %ASTNode %t863, %ASTNode* %t864
  %t865 = load %ASTNode, %ASTNode* %t864
  %t866 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t867 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t868 = call %nyx_string* @bc_aggregate_escaping_origin(%ASTNode %t865, { i64, i8* }* %t866, { i64, i8* }* %t867)
  store %nyx_string* %t868, %nyx_string** %t869
  %t870 = load %nyx_string*, %nyx_string** %t869
  %t871 = load %nyx_string*, %nyx_string** %t839
  %t872 = call i1 @nyx_string_equals(%nyx_string* %t870, %nyx_string* %t871)
  %t873 = xor i1 %t872, true
  br i1 %t873, label %then250, label %else251
then250:
  %t874 = load %nyx_string*, %nyx_string** %t869
  ret %nyx_string* %t874
else251:
  br label %merge252
merge252:
  %t875 = load i64, i64* %t836
  %t876 = add i64 %t875, 1
  store i64 %t876, i64* %t836
  br label %while_cond247
while_end249:
  %t877 = getelementptr [1 x i8], [1 x i8]* @.str46, i32 0, i32 0
  %t878 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str46.c, i8* %t877, i64 0)
  ret %nyx_string* %t878
else245:
  br label %merge246
merge246:
  %t879 = load %ASTNode, %ASTNode* %expr.ptr
  %t880 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t881 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t882 = call %nyx_string* @bc_escaping_origin(%ASTNode %t879, { i64, i8* }* %t880, { i64, i8* }* %t881)
  ret %nyx_string* %t882
}

define internal i64 @bc_walk(
%ASTNode %node.param, { i64, i8* }* %state.param, { i64, i8* }* %tmap.param, { i64, i8* }* %diags.param) {
  %node.ptr = alloca %ASTNode
  %state.ptr = alloca { i64, i8* }*
  %tmap.ptr = alloca { i64, i8* }*
  %diags.ptr = alloca { i64, i8* }*
  %t885 = alloca %nyx_string*
  %t912 = alloca %nyx_string*
  %t928 = alloca %nyx_string*
  %t951 = alloca %nyx_string*
  %t967 = alloca %nyx_string*
  %t1083 = alloca { i64, i8* }*
  %t1084 = alloca i64
  %t1099 = alloca %ASTNode
  %t1105 = alloca %ASTNode
  %t1127 = alloca { i64, i8* }*
  %t1136 = alloca { i64, i8* }*
  %t1139 = alloca %ASTNode
  %t1154 = alloca { i64, i8* }*
  %t1170 = alloca { i64, i8* }*
  %t1179 = alloca { i64, i8* }*
  %t1183 = alloca { i64, i8* }*
  %t1203 = alloca { i64, i8* }*
  %t1212 = alloca { i64, i8* }*
  %t1216 = alloca { i64, i8* }*
  %t1226 = alloca { i64, i8* }*
  %t1230 = alloca %nyx_string*
  %t1242 = alloca { i64, i8* }*
  %t1251 = alloca { i64, i8* }*
  %t1255 = alloca { i64, i8* }*
  %t1265 = alloca %ASTNode
  %t1275 = alloca %nyx_string*
  %t1283 = alloca %nyx_string*
  %t1293 = alloca %nyx_string*
  %t1318 = alloca %nyx_string*
  %t1346 = alloca %ASTNode
  %t1358 = alloca %ASTNode
  %t1361 = alloca %nyx_string*
  %t1364 = alloca { i64, i8* }*
  %t1367 = alloca %nyx_string*
  %t1408 = alloca { i64, i8* }*
  %t1414 = alloca { i64, i8* }*
  %t1434 = alloca { i64, i8* }*
  %t1440 = alloca { i64, i8* }*
  %t1461 = alloca { i64, i8* }*
  %t1462 = alloca i64
  %t1477 = alloca %ASTNode
  %t1483 = alloca %ASTNode
  %t1497 = alloca { i64, i8* }*
  %t1498 = alloca i64
  %t1513 = alloca %ASTNode
  %t1519 = alloca %ASTNode
  %t1569 = alloca %ASTNode
  %t1572 = alloca { i64, i8* }*
  %t1595 = alloca %ASTNode
  %t1601 = alloca %ASTNode
  %t1604 = alloca %nyx_string*
  %t1620 = alloca %nyx_string*
  %t1641 = alloca i64
  %t1656 = alloca %ASTNode
  %t1662 = alloca %ASTNode
  %t1679 = alloca i64
  %t1694 = alloca %ASTNode
  %t1700 = alloca %ASTNode
  %t1718 = alloca { i64, i8* }*
  %t1719 = alloca i64
  %t1734 = alloca %ASTNode
  %t1740 = alloca %ASTNode
  %t1754 = alloca { i64, i8* }*
  %t1755 = alloca i64
  %t1770 = alloca %ASTNode
  %t1776 = alloca %ASTNode
  %t1822 = alloca %ASTNode
  %t1834 = alloca %ASTNode
  %t1837 = alloca %nyx_string*
  %t1861 = alloca %nyx_string*
  %t1869 = alloca %nyx_string*
  %t1879 = alloca %nyx_string*
  %t1904 = alloca %nyx_string*
  %t1928 = alloca %ASTNode
  %t1944 = alloca %ASTNode
  %t1958 = alloca %ASTNode
  %t1966 = alloca %nyx_string*
  %t1979 = alloca %nyx_string*
  %t1987 = alloca %nyx_string*
  %t1997 = alloca %nyx_string*
  %t2022 = alloca %nyx_string*
  %t2047 = alloca %nyx_string*
  %t2063 = alloca %ASTNode
  %t2066 = alloca %ASTNode
  %t2079 = alloca %nyx_string*
  %t2092 = alloca %nyx_string*
  %t2100 = alloca %nyx_string*
  %t2110 = alloca %nyx_string*
  %t2135 = alloca %nyx_string*
  %t2160 = alloca %nyx_string*
  %t2176 = alloca { i64, i8* }*
  %t2177 = alloca i64
  %t2186 = alloca { i64, i8* }*
  %t2196 = alloca %ASTNode
  %t2202 = alloca %ASTNode
  %t2232 = alloca { i64, i8* }*
  %t2233 = alloca i64
  %t2248 = alloca %ASTNode
  %t2254 = alloca %ASTNode
  %t2278 = alloca { i64, i8* }*
  %t2279 = alloca i64
  %t2282 = alloca { i64, i8* }*
  %t2283 = alloca i1
  %t2290 = alloca { i64, i8* }*
  %t2301 = alloca %ASTNode
  %t2307 = alloca %ASTNode
  %t2379 = alloca %nyx_string*
  %t2388 = alloca i64
  %t2398 = alloca %nyx_string*
  %t2433 = alloca %nyx_string*
  %t2442 = alloca i64
  %t2452 = alloca %nyx_string*
  %t2479 = alloca %nyx_string*
  %t2516 = alloca %ASTNode
  %t2519 = alloca %ASTNode
  %t2532 = alloca %nyx_string*
  %t2545 = alloca %nyx_string*
  %t2553 = alloca %nyx_string*
  %t2563 = alloca %nyx_string*
  %t2588 = alloca %nyx_string*
  %t2628 = alloca { i64, i8* }*
  %t2632 = alloca %nyx_string*
  %t2664 = alloca { i64, i8* }*
  %t2668 = alloca { i64, i8* }*
  %t2669 = alloca i64
  %t2678 = alloca %nyx_string*
  store %ASTNode %node.param, %ASTNode* %node.ptr
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  store { i64, i8* }* %diags.param, { i64, i8* }** %diags.ptr
  %t883 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 0
  %t884 = load %nyx_string*, %nyx_string** %t883
  store %nyx_string* %t884, %nyx_string** %t885
  %t886 = load %nyx_string*, %nyx_string** %t885
  %t887 = getelementptr [7 x i8], [7 x i8]* @.str47, i32 0, i32 0
  %t888 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str47.c, i8* %t887, i64 6)
  %t889 = call i1 @nyx_string_equals(%nyx_string* %t886, %nyx_string* %t888)
  br i1 %t889, label %then253, label %else254
then253:
  ret i64 0
else254:
  br label %merge255
merge255:
  %t890 = load %nyx_string*, %nyx_string** %t885
  %t891 = getelementptr [10 x i8], [10 x i8]* @.str48, i32 0, i32 0
  %t892 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str48.c, i8* %t891, i64 9)
  %t893 = call i1 @nyx_string_equals(%nyx_string* %t890, %nyx_string* %t892)
  br i1 %t893, label %then256, label %else257
then256:
  ret i64 0
else257:
  br label %merge258
merge258:
  %t894 = load %nyx_string*, %nyx_string** %t885
  %t895 = getelementptr [7 x i8], [7 x i8]* @.str49, i32 0, i32 0
  %t896 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str49.c, i8* %t895, i64 6)
  %t897 = call i1 @nyx_string_equals(%nyx_string* %t894, %nyx_string* %t896)
  br i1 %t897, label %then259, label %else260
then259:
  ret i64 0
else260:
  br label %merge261
merge261:
  %t898 = load %nyx_string*, %nyx_string** %t885
  %t899 = getelementptr [5 x i8], [5 x i8]* @.str50, i32 0, i32 0
  %t900 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str50.c, i8* %t899, i64 4)
  %t901 = call i1 @nyx_string_equals(%nyx_string* %t898, %nyx_string* %t900)
  br i1 %t901, label %then262, label %else263
then262:
  ret i64 0
else263:
  br label %merge264
merge264:
  %t902 = load %nyx_string*, %nyx_string** %t885
  %t903 = getelementptr [5 x i8], [5 x i8]* @.str51, i32 0, i32 0
  %t904 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str51.c, i8* %t903, i64 4)
  %t905 = call i1 @nyx_string_equals(%nyx_string* %t902, %nyx_string* %t904)
  br i1 %t905, label %then265, label %else266
then265:
  ret i64 0
else266:
  br label %merge267
merge267:
  %t906 = load %nyx_string*, %nyx_string** %t885
  %t907 = getelementptr [11 x i8], [11 x i8]* @.str52, i32 0, i32 0
  %t908 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str52.c, i8* %t907, i64 10)
  %t909 = call i1 @nyx_string_equals(%nyx_string* %t906, %nyx_string* %t908)
  br i1 %t909, label %then268, label %else269
then268:
  %t910 = load %ASTNode, %ASTNode* %node.ptr
  %t911 = call %nyx_string* @place_of(%ASTNode %t910)
  store %nyx_string* %t911, %nyx_string** %t912
  %t913 = load %nyx_string*, %nyx_string** %t912
  %t914 = getelementptr [1 x i8], [1 x i8]* @.str53, i32 0, i32 0
  %t915 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str53.c, i8* %t914, i64 0)
  %t916 = call i1 @nyx_string_equals(%nyx_string* %t913, %nyx_string* %t915)
  %t917 = xor i1 %t916, true
  br i1 %t917, label %then271, label %else272
then271:
  %t918 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t919 = load %nyx_string*, %nyx_string** %t912
  %t920 = call i1 @is_freed({ i64, i8* }* %t918, %nyx_string* %t919)
  br i1 %t920, label %then274, label %else275
then274:
  %t921 = getelementptr [30 x i8], [30 x i8]* @.str54, i32 0, i32 0
  %t922 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str54.c, i8* %t921, i64 29)
  %t923 = load %nyx_string*, %nyx_string** %t912
  %t924 = call %nyx_string* @nyx_string_concat(%nyx_string* %t922, %nyx_string* %t923)
  %t925 = getelementptr [2 x i8], [2 x i8]* @.str55, i32 0, i32 0
  %t926 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str55.c, i8* %t925, i64 1)
  %t927 = call %nyx_string* @nyx_string_concat(%nyx_string* %t924, %nyx_string* %t926)
  store %nyx_string* %t927, %nyx_string** %t928
  %t929 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %t930 = load i64, i64* %t929
  %t931 = icmp sgt i64 %t930, 0
  br i1 %t931, label %then277, label %else278
then277:
  %t932 = load %nyx_string*, %nyx_string** %t928
  %t933 = getelementptr [8 x i8], [8 x i8]* @.str56, i32 0, i32 0
  %t934 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str56.c, i8* %t933, i64 7)
  %t935 = call %nyx_string* @nyx_string_concat(%nyx_string* %t932, %nyx_string* %t934)
  %t936 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %t937 = load i64, i64* %t936
  %t938 = call %nyx_string* @nyx_string_from_int(i64 %t937)
  %t939 = call %nyx_string* @nyx_string_concat(%nyx_string* %t935, %nyx_string* %t938)
  %t940 = getelementptr [2 x i8], [2 x i8]* @.str57, i32 0, i32 0
  %t941 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str57.c, i8* %t940, i64 1)
  %t942 = call %nyx_string* @nyx_string_concat(%nyx_string* %t939, %nyx_string* %t941)
  store %nyx_string* %t942, %nyx_string** %t928
  br label %merge279
else278:
  br label %merge279
merge279:
  %t943 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t944 = load %nyx_string*, %nyx_string** %t928
  %t945 = ptrtoint %nyx_string* %t944 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t943, i64 %t945, i64 2)
  br label %merge276
else275:
  %t946 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t947 = load %nyx_string*, %nyx_string** %t912
  %t948 = call i1 @is_moved({ i64, i8* }* %t946, %nyx_string* %t947)
  br i1 %t948, label %then280, label %else281
then280:
  %t949 = getelementptr [8 x i8], [8 x i8]* @.str58, i32 0, i32 0
  %t950 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str58.c, i8* %t949, i64 7)
  store %nyx_string* %t950, %nyx_string** %t951
  %t952 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t953 = load %nyx_string*, %nyx_string** %t912
  %t954 = call i64 @tm_move_kind({ i64, i8* }* %t952, %nyx_string* %t953)
  %t955 = icmp eq i64 %t954, 2
  br i1 %t955, label %then283, label %else284
then283:
  %t956 = getelementptr [8 x i8], [8 x i8]* @.str59, i32 0, i32 0
  %t957 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str59.c, i8* %t956, i64 7)
  store %nyx_string* %t957, %nyx_string** %t951
  br label %merge285
else284:
  br label %merge285
merge285:
  %t958 = load %nyx_string*, %nyx_string** %t951
  %t959 = getelementptr [23 x i8], [23 x i8]* @.str60, i32 0, i32 0
  %t960 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str60.c, i8* %t959, i64 22)
  %t961 = call %nyx_string* @nyx_string_concat(%nyx_string* %t958, %nyx_string* %t960)
  %t962 = load %nyx_string*, %nyx_string** %t912
  %t963 = call %nyx_string* @nyx_string_concat(%nyx_string* %t961, %nyx_string* %t962)
  %t964 = getelementptr [2 x i8], [2 x i8]* @.str61, i32 0, i32 0
  %t965 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str61.c, i8* %t964, i64 1)
  %t966 = call %nyx_string* @nyx_string_concat(%nyx_string* %t963, %nyx_string* %t965)
  store %nyx_string* %t966, %nyx_string** %t967
  %t968 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %t969 = load i64, i64* %t968
  %t970 = icmp sgt i64 %t969, 0
  br i1 %t970, label %then286, label %else287
then286:
  %t971 = load %nyx_string*, %nyx_string** %t967
  %t972 = getelementptr [8 x i8], [8 x i8]* @.str62, i32 0, i32 0
  %t973 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str62.c, i8* %t972, i64 7)
  %t974 = call %nyx_string* @nyx_string_concat(%nyx_string* %t971, %nyx_string* %t973)
  %t975 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %t976 = load i64, i64* %t975
  %t977 = call %nyx_string* @nyx_string_from_int(i64 %t976)
  %t978 = call %nyx_string* @nyx_string_concat(%nyx_string* %t974, %nyx_string* %t977)
  %t979 = getelementptr [2 x i8], [2 x i8]* @.str63, i32 0, i32 0
  %t980 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str63.c, i8* %t979, i64 1)
  %t981 = call %nyx_string* @nyx_string_concat(%nyx_string* %t978, %nyx_string* %t980)
  store %nyx_string* %t981, %nyx_string** %t967
  br label %merge288
else287:
  br label %merge288
merge288:
  %t982 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t983 = load %nyx_string*, %nyx_string** %t967
  %t984 = ptrtoint %nyx_string* %t983 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t982, i64 %t984, i64 2)
  br label %merge282
else281:
  br label %merge282
merge282:
  br label %merge276
merge276:
  br label %merge273
else272:
  br label %merge273
merge273:
  ret i64 0
else269:
  br label %merge270
merge270:
  %t985 = load %nyx_string*, %nyx_string** %t885
  %t986 = getelementptr [6 x i8], [6 x i8]* @.str64, i32 0, i32 0
  %t987 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str64.c, i8* %t986, i64 5)
  %t988 = call i1 @nyx_string_equals(%nyx_string* %t985, %nyx_string* %t987)
  br i1 %t988, label %then289, label %else290
then289:
  ret i64 0
else290:
  br label %merge291
merge291:
  %t989 = load %nyx_string*, %nyx_string** %t885
  %t990 = getelementptr [6 x i8], [6 x i8]* @.str65, i32 0, i32 0
  %t991 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str65.c, i8* %t990, i64 5)
  %t992 = call i1 @nyx_string_equals(%nyx_string* %t989, %nyx_string* %t991)
  br i1 %t992, label %then292, label %else293
then292:
  ret i64 0
else293:
  br label %merge294
merge294:
  %t993 = load %nyx_string*, %nyx_string** %t885
  %t994 = getelementptr [9 x i8], [9 x i8]* @.str66, i32 0, i32 0
  %t995 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str66.c, i8* %t994, i64 8)
  %t996 = call i1 @nyx_string_equals(%nyx_string* %t993, %nyx_string* %t995)
  br i1 %t996, label %then295, label %else296
then295:
  ret i64 0
else296:
  br label %merge297
merge297:
  %t997 = load %nyx_string*, %nyx_string** %t885
  %t998 = getelementptr [6 x i8], [6 x i8]* @.str67, i32 0, i32 0
  %t999 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str67.c, i8* %t998, i64 5)
  %t1000 = call i1 @nyx_string_equals(%nyx_string* %t997, %nyx_string* %t999)
  br i1 %t1000, label %then298, label %else299
then298:
  ret i64 0
else299:
  br label %merge300
merge300:
  %t1001 = load %nyx_string*, %nyx_string** %t885
  %t1002 = getelementptr [9 x i8], [9 x i8]* @.str68, i32 0, i32 0
  %t1003 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str68.c, i8* %t1002, i64 8)
  %t1004 = call i1 @nyx_string_equals(%nyx_string* %t1001, %nyx_string* %t1003)
  br i1 %t1004, label %then301, label %else302
then301:
  ret i64 0
else302:
  br label %merge303
merge303:
  %t1005 = load %nyx_string*, %nyx_string** %t885
  %t1006 = getelementptr [11 x i8], [11 x i8]* @.str69, i32 0, i32 0
  %t1007 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str69.c, i8* %t1006, i64 10)
  %t1008 = call i1 @nyx_string_equals(%nyx_string* %t1005, %nyx_string* %t1007)
  br i1 %t1008, label %then304, label %else305
then304:
  ret i64 0
else305:
  br label %merge306
merge306:
  %t1009 = load %nyx_string*, %nyx_string** %t885
  %t1010 = getelementptr [7 x i8], [7 x i8]* @.str70, i32 0, i32 0
  %t1011 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str70.c, i8* %t1010, i64 6)
  %t1012 = call i1 @nyx_string_equals(%nyx_string* %t1009, %nyx_string* %t1011)
  br i1 %t1012, label %then307, label %else308
then307:
  ret i64 0
else308:
  br label %merge309
merge309:
  %t1013 = load %nyx_string*, %nyx_string** %t885
  %t1014 = getelementptr [9 x i8], [9 x i8]* @.str71, i32 0, i32 0
  %t1015 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str71.c, i8* %t1014, i64 8)
  %t1016 = call i1 @nyx_string_equals(%nyx_string* %t1013, %nyx_string* %t1015)
  br i1 %t1016, label %then310, label %else311
then310:
  ret i64 0
else311:
  br label %merge312
merge312:
  %t1017 = load %nyx_string*, %nyx_string** %t885
  %t1018 = getelementptr [10 x i8], [10 x i8]* @.str72, i32 0, i32 0
  %t1019 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str72.c, i8* %t1018, i64 9)
  %t1020 = call i1 @nyx_string_equals(%nyx_string* %t1017, %nyx_string* %t1019)
  br i1 %t1020, label %then313, label %else314
then313:
  ret i64 0
else314:
  br label %merge315
merge315:
  %t1021 = load %nyx_string*, %nyx_string** %t885
  %t1022 = getelementptr [7 x i8], [7 x i8]* @.str73, i32 0, i32 0
  %t1023 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str73.c, i8* %t1022, i64 6)
  %t1024 = call i1 @nyx_string_equals(%nyx_string* %t1021, %nyx_string* %t1023)
  br i1 %t1024, label %then316, label %else317
then316:
  ret i64 0
else317:
  br label %merge318
merge318:
  %t1025 = load %nyx_string*, %nyx_string** %t885
  %t1026 = getelementptr [14 x i8], [14 x i8]* @.str74, i32 0, i32 0
  %t1027 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str74.c, i8* %t1026, i64 13)
  %t1028 = call i1 @nyx_string_equals(%nyx_string* %t1025, %nyx_string* %t1027)
  br i1 %t1028, label %then319, label %else320
then319:
  ret i64 0
else320:
  br label %merge321
merge321:
  %t1029 = load %nyx_string*, %nyx_string** %t885
  %t1030 = getelementptr [12 x i8], [12 x i8]* @.str75, i32 0, i32 0
  %t1031 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str75.c, i8* %t1030, i64 11)
  %t1032 = call i1 @nyx_string_equals(%nyx_string* %t1029, %nyx_string* %t1031)
  br i1 %t1032, label %then322, label %else323
then322:
  ret i64 0
else323:
  br label %merge324
merge324:
  %t1033 = load %nyx_string*, %nyx_string** %t885
  %t1034 = getelementptr [11 x i8], [11 x i8]* @.str76, i32 0, i32 0
  %t1035 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str76.c, i8* %t1034, i64 10)
  %t1036 = call i1 @nyx_string_equals(%nyx_string* %t1033, %nyx_string* %t1035)
  br i1 %t1036, label %then325, label %else326
then325:
  ret i64 0
else326:
  br label %merge327
merge327:
  %t1037 = load %nyx_string*, %nyx_string** %t885
  %t1038 = getelementptr [10 x i8], [10 x i8]* @.str77, i32 0, i32 0
  %t1039 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str77.c, i8* %t1038, i64 9)
  %t1040 = call i1 @nyx_string_equals(%nyx_string* %t1037, %nyx_string* %t1039)
  br i1 %t1040, label %then328, label %else329
then328:
  ret i64 0
else329:
  br label %merge330
merge330:
  %t1041 = load %nyx_string*, %nyx_string** %t885
  %t1042 = getelementptr [14 x i8], [14 x i8]* @.str78, i32 0, i32 0
  %t1043 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str78.c, i8* %t1042, i64 13)
  %t1044 = call i1 @nyx_string_equals(%nyx_string* %t1041, %nyx_string* %t1043)
  br i1 %t1044, label %then331, label %else332
then331:
  ret i64 0
else332:
  br label %merge333
merge333:
  %t1045 = load %nyx_string*, %nyx_string** %t885
  %t1046 = getelementptr [13 x i8], [13 x i8]* @.str79, i32 0, i32 0
  %t1047 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str79.c, i8* %t1046, i64 12)
  %t1048 = call i1 @nyx_string_equals(%nyx_string* %t1045, %nyx_string* %t1047)
  br i1 %t1048, label %then334, label %else335
then334:
  ret i64 0
else335:
  br label %merge336
merge336:
  %t1049 = load %nyx_string*, %nyx_string** %t885
  %t1050 = getelementptr [7 x i8], [7 x i8]* @.str80, i32 0, i32 0
  %t1051 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str80.c, i8* %t1050, i64 6)
  %t1052 = call i1 @nyx_string_equals(%nyx_string* %t1049, %nyx_string* %t1051)
  br i1 %t1052, label %then337, label %else338
then337:
  ret i64 0
else338:
  br label %merge339
merge339:
  %t1053 = load %nyx_string*, %nyx_string** %t885
  %t1054 = getelementptr [8 x i8], [8 x i8]* @.str81, i32 0, i32 0
  %t1055 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str81.c, i8* %t1054, i64 7)
  %t1056 = call i1 @nyx_string_equals(%nyx_string* %t1053, %nyx_string* %t1055)
  br i1 %t1056, label %then340, label %else341
then340:
  ret i64 0
else341:
  br label %merge342
merge342:
  %t1057 = load %nyx_string*, %nyx_string** %t885
  %t1058 = getelementptr [11 x i8], [11 x i8]* @.str82, i32 0, i32 0
  %t1059 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str82.c, i8* %t1058, i64 10)
  %t1060 = call i1 @nyx_string_equals(%nyx_string* %t1057, %nyx_string* %t1059)
  br i1 %t1060, label %then343, label %else344
then343:
  ret i64 0
else344:
  br label %merge345
merge345:
  %t1061 = load %nyx_string*, %nyx_string** %t885
  %t1062 = getelementptr [15 x i8], [15 x i8]* @.str83, i32 0, i32 0
  %t1063 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str83.c, i8* %t1062, i64 14)
  %t1064 = call i1 @nyx_string_equals(%nyx_string* %t1061, %nyx_string* %t1063)
  br i1 %t1064, label %then346, label %else347
then346:
  ret i64 0
else347:
  br label %merge348
merge348:
  %t1065 = load %nyx_string*, %nyx_string** %t885
  %t1066 = getelementptr [13 x i8], [13 x i8]* @.str84, i32 0, i32 0
  %t1067 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str84.c, i8* %t1066, i64 12)
  %t1068 = call i1 @nyx_string_equals(%nyx_string* %t1065, %nyx_string* %t1067)
  br i1 %t1068, label %then349, label %else350
then349:
  ret i64 0
else350:
  br label %merge351
merge351:
  %t1069 = load %nyx_string*, %nyx_string** %t885
  %t1070 = getelementptr [10 x i8], [10 x i8]* @.str85, i32 0, i32 0
  %t1071 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str85.c, i8* %t1070, i64 9)
  %t1072 = call i1 @nyx_string_equals(%nyx_string* %t1069, %nyx_string* %t1071)
  br i1 %t1072, label %then352, label %else353
then352:
  ret i64 0
else353:
  br label %merge354
merge354:
  %t1073 = load %nyx_string*, %nyx_string** %t885
  %t1074 = getelementptr [12 x i8], [12 x i8]* @.str86, i32 0, i32 0
  %t1075 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str86.c, i8* %t1074, i64 11)
  %t1076 = call i1 @nyx_string_equals(%nyx_string* %t1073, %nyx_string* %t1075)
  br i1 %t1076, label %then355, label %else356
then355:
  ret i64 0
else356:
  br label %merge357
merge357:
  %t1077 = load %nyx_string*, %nyx_string** %t885
  %t1078 = getelementptr [6 x i8], [6 x i8]* @.str87, i32 0, i32 0
  %t1079 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str87.c, i8* %t1078, i64 5)
  %t1080 = call i1 @nyx_string_equals(%nyx_string* %t1077, %nyx_string* %t1079)
  br i1 %t1080, label %then358, label %else359
then358:
  %t1081 = load %ASTNode, %ASTNode* %node.ptr
  %t1082 = call { i64, i8* }* @bc_array_at(%ASTNode %t1081, i64 0)
  store { i64, i8* }* %t1082, { i64, i8* }** %t1083
  store i64 0, i64* %t1084
  br label %while_cond361
while_cond361:
  %t1085 = load i64, i64* %t1084
  %t1086 = load { i64, i8* }*, { i64, i8* }** %t1083
  %t1087 = call i64 @nyx_array_length({ i64, i8* }* %t1086)
  %t1088 = icmp slt i64 %t1085, %t1087
  br i1 %t1088, label %while_body362, label %while_end363
while_body362:
  %t1089 = load { i64, i8* }*, { i64, i8* }** %t1083
  %t1090 = load i64, i64* %t1084
  %t1091 = call i64 @nyx_array_get({ i64, i8* }* %t1089, i64 %t1090)
  %t1092 = inttoptr i64 %t1091 to { i64, i8* }*
  %t1093 = call i64 @nyx_array_get({ i64, i8* }* %t1092, i64 0)
  %t1094 = call i64 @nyx_array_get({ i64, i8* }* %t1092, i64 1)
  %t1095 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t1092, i64 2)
  %t1096 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t1092, i64 3)
  %t1097 = inttoptr i64 %t1093 to %nyx_string*
  %t1098 = inttoptr i64 %t1094 to { i64, i8* }*
  %t1100 = getelementptr inbounds %ASTNode, %ASTNode* %t1099, i32 0, i32 0
  store %nyx_string* %t1097, %nyx_string** %t1100
  %t1101 = getelementptr inbounds %ASTNode, %ASTNode* %t1099, i32 0, i32 1
  store { i64, i8* }* %t1098, { i64, i8* }** %t1101
  %t1102 = getelementptr inbounds %ASTNode, %ASTNode* %t1099, i32 0, i32 2
  store i64 %t1095, i64* %t1102
  %t1103 = getelementptr inbounds %ASTNode, %ASTNode* %t1099, i32 0, i32 3
  store i64 %t1096, i64* %t1103
  %t1104 = load %ASTNode, %ASTNode* %t1099
  store %ASTNode %t1104, %ASTNode* %t1105
  %t1106 = load %ASTNode, %ASTNode* %t1105
  %t1107 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1108 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1109 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t1110 = call i64 @bc_walk(%ASTNode %t1106, { i64, i8* }* %t1107, { i64, i8* }* %t1108, { i64, i8* }* %t1109)
  %t1111 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1112 = call i64 @clear_borrows({ i64, i8* }* %t1111)
  %t1113 = load i64, i64* %t1084
  %t1114 = add i64 %t1113, 1
  store i64 %t1114, i64* %t1084
  br label %while_cond361
while_end363:
  ret i64 0
else359:
  br label %merge360
merge360:
  %t1115 = load %nyx_string*, %nyx_string** %t885
  %t1116 = getelementptr [3 x i8], [3 x i8]* @.str88, i32 0, i32 0
  %t1117 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str88.c, i8* %t1116, i64 2)
  %t1118 = call i1 @nyx_string_equals(%nyx_string* %t1115, %nyx_string* %t1117)
  br i1 %t1118, label %then364, label %else365
then364:
  %t1119 = load %ASTNode, %ASTNode* %node.ptr
  %t1120 = call %ASTNode @bc_node_at(%ASTNode %t1119, i64 0)
  %t1121 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1122 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1123 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t1124 = call i64 @bc_walk(%ASTNode %t1120, { i64, i8* }* %t1121, { i64, i8* }* %t1122, { i64, i8* }* %t1123)
  %t1125 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1126 = call { i64, i8* }* @state_copy({ i64, i8* }* %t1125)
  store { i64, i8* }* %t1126, { i64, i8* }** %t1127
  %t1128 = load %ASTNode, %ASTNode* %node.ptr
  %t1129 = call %ASTNode @bc_node_at(%ASTNode %t1128, i64 1)
  %t1130 = load { i64, i8* }*, { i64, i8* }** %t1127
  %t1131 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1132 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t1133 = call i64 @bc_walk(%ASTNode %t1129, { i64, i8* }* %t1130, { i64, i8* }* %t1131, { i64, i8* }* %t1132)
  %t1134 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1135 = call { i64, i8* }* @state_copy({ i64, i8* }* %t1134)
  store { i64, i8* }* %t1135, { i64, i8* }** %t1136
  %t1137 = load %ASTNode, %ASTNode* %node.ptr
  %t1138 = call %ASTNode @bc_node_at(%ASTNode %t1137, i64 2)
  store %ASTNode %t1138, %ASTNode* %t1139
  %t1140 = getelementptr %ASTNode, %ASTNode* %t1139, i32 0, i32 0
  %t1141 = load %nyx_string*, %nyx_string** %t1140
  %t1142 = getelementptr [6 x i8], [6 x i8]* @.str89, i32 0, i32 0
  %t1143 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str89.c, i8* %t1142, i64 5)
  %t1144 = call i1 @nyx_string_equals(%nyx_string* %t1141, %nyx_string* %t1143)
  %t1145 = xor i1 %t1144, true
  br i1 %t1145, label %then367, label %else368
then367:
  %t1146 = load %ASTNode, %ASTNode* %t1139
  %t1147 = load { i64, i8* }*, { i64, i8* }** %t1136
  %t1148 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1149 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t1150 = call i64 @bc_walk(%ASTNode %t1146, { i64, i8* }* %t1147, { i64, i8* }* %t1148, { i64, i8* }* %t1149)
  br label %merge369
else368:
  br label %merge369
merge369:
  %t1151 = load { i64, i8* }*, { i64, i8* }** %t1127
  %t1152 = load { i64, i8* }*, { i64, i8* }** %t1136
  %t1153 = call { i64, i8* }* @state_join({ i64, i8* }* %t1151, { i64, i8* }* %t1152)
  store { i64, i8* }* %t1153, { i64, i8* }** %t1154
  %t1155 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1156 = load { i64, i8* }*, { i64, i8* }** %t1154
  %t1157 = call i64 @state_merge_from({ i64, i8* }* %t1155, { i64, i8* }* %t1156)
  ret i64 0
else365:
  br label %merge366
merge366:
  %t1158 = load %nyx_string*, %nyx_string** %t885
  %t1159 = getelementptr [6 x i8], [6 x i8]* @.str90, i32 0, i32 0
  %t1160 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str90.c, i8* %t1159, i64 5)
  %t1161 = call i1 @nyx_string_equals(%nyx_string* %t1158, %nyx_string* %t1160)
  br i1 %t1161, label %then370, label %else371
then370:
  %t1162 = load %ASTNode, %ASTNode* %node.ptr
  %t1163 = call %ASTNode @bc_node_at(%ASTNode %t1162, i64 0)
  %t1164 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1165 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1166 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t1167 = call i64 @bc_walk(%ASTNode %t1163, { i64, i8* }* %t1164, { i64, i8* }* %t1165, { i64, i8* }* %t1166)
  %t1168 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1169 = call { i64, i8* }* @state_copy({ i64, i8* }* %t1168)
  store { i64, i8* }* %t1169, { i64, i8* }** %t1170
  %t1171 = load %ASTNode, %ASTNode* %node.ptr
  %t1172 = call %ASTNode @bc_node_at(%ASTNode %t1171, i64 1)
  %t1173 = load { i64, i8* }*, { i64, i8* }** %t1170
  %t1174 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1175 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t1176 = call i64 @bc_walk(%ASTNode %t1172, { i64, i8* }* %t1173, { i64, i8* }* %t1174, { i64, i8* }* %t1175)
  %t1177 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1178 = call { i64, i8* }* @state_copy({ i64, i8* }* %t1177)
  store { i64, i8* }* %t1178, { i64, i8* }** %t1179
  %t1180 = load { i64, i8* }*, { i64, i8* }** %t1170
  %t1181 = load { i64, i8* }*, { i64, i8* }** %t1179
  %t1182 = call { i64, i8* }* @state_join({ i64, i8* }* %t1180, { i64, i8* }* %t1181)
  store { i64, i8* }* %t1182, { i64, i8* }** %t1183
  %t1184 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1185 = load { i64, i8* }*, { i64, i8* }** %t1183
  %t1186 = call i64 @state_merge_from({ i64, i8* }* %t1184, { i64, i8* }* %t1185)
  ret i64 0
else371:
  br label %merge372
merge372:
  %t1187 = load %nyx_string*, %nyx_string** %t885
  %t1188 = getelementptr [10 x i8], [10 x i8]* @.str91, i32 0, i32 0
  %t1189 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str91.c, i8* %t1188, i64 9)
  %t1190 = call i1 @nyx_string_equals(%nyx_string* %t1187, %nyx_string* %t1189)
  br i1 %t1190, label %then373, label %else374
then373:
  %t1191 = load %ASTNode, %ASTNode* %node.ptr
  %t1192 = call %ASTNode @bc_node_at(%ASTNode %t1191, i64 0)
  %t1193 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1194 = call i64 @bc_register_pattern_bindings(%ASTNode %t1192, { i64, i8* }* %t1193)
  %t1195 = load %ASTNode, %ASTNode* %node.ptr
  %t1196 = call %ASTNode @bc_node_at(%ASTNode %t1195, i64 1)
  %t1197 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1198 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1199 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t1200 = call i64 @bc_walk(%ASTNode %t1196, { i64, i8* }* %t1197, { i64, i8* }* %t1198, { i64, i8* }* %t1199)
  %t1201 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1202 = call { i64, i8* }* @state_copy({ i64, i8* }* %t1201)
  store { i64, i8* }* %t1202, { i64, i8* }** %t1203
  %t1204 = load %ASTNode, %ASTNode* %node.ptr
  %t1205 = call %ASTNode @bc_node_at(%ASTNode %t1204, i64 2)
  %t1206 = load { i64, i8* }*, { i64, i8* }** %t1203
  %t1207 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1208 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t1209 = call i64 @bc_walk(%ASTNode %t1205, { i64, i8* }* %t1206, { i64, i8* }* %t1207, { i64, i8* }* %t1208)
  %t1210 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1211 = call { i64, i8* }* @state_copy({ i64, i8* }* %t1210)
  store { i64, i8* }* %t1211, { i64, i8* }** %t1212
  %t1213 = load { i64, i8* }*, { i64, i8* }** %t1203
  %t1214 = load { i64, i8* }*, { i64, i8* }** %t1212
  %t1215 = call { i64, i8* }* @state_join({ i64, i8* }* %t1213, { i64, i8* }* %t1214)
  store { i64, i8* }* %t1215, { i64, i8* }** %t1216
  %t1217 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1218 = load { i64, i8* }*, { i64, i8* }** %t1216
  %t1219 = call i64 @state_merge_from({ i64, i8* }* %t1217, { i64, i8* }* %t1218)
  ret i64 0
else374:
  br label %merge375
merge375:
  %t1220 = load %nyx_string*, %nyx_string** %t885
  %t1221 = getelementptr [4 x i8], [4 x i8]* @.str92, i32 0, i32 0
  %t1222 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str92.c, i8* %t1221, i64 3)
  %t1223 = call i1 @nyx_string_equals(%nyx_string* %t1220, %nyx_string* %t1222)
  br i1 %t1223, label %then376, label %else377
then376:
  %t1224 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %t1225 = load { i64, i8* }*, { i64, i8* }** %t1224
  store { i64, i8* }* %t1225, { i64, i8* }** %t1226
  %t1227 = load { i64, i8* }*, { i64, i8* }** %t1226
  %t1228 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1227, i64 0, i64 2)
  %t1229 = inttoptr i64 %t1228 to %nyx_string*
  store %nyx_string* %t1229, %nyx_string** %t1230
  %t1231 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1232 = load %nyx_string*, %nyx_string** %t1230
  %t1233 = call i64 @tm_add_local({ i64, i8* }* %t1231, %nyx_string* %t1232)
  %t1234 = load %ASTNode, %ASTNode* %node.ptr
  %t1235 = call %ASTNode @bc_node_at(%ASTNode %t1234, i64 1)
  %t1236 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1237 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1238 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t1239 = call i64 @bc_walk(%ASTNode %t1235, { i64, i8* }* %t1236, { i64, i8* }* %t1237, { i64, i8* }* %t1238)
  %t1240 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1241 = call { i64, i8* }* @state_copy({ i64, i8* }* %t1240)
  store { i64, i8* }* %t1241, { i64, i8* }** %t1242
  %t1243 = load %ASTNode, %ASTNode* %node.ptr
  %t1244 = call %ASTNode @bc_node_at(%ASTNode %t1243, i64 2)
  %t1245 = load { i64, i8* }*, { i64, i8* }** %t1242
  %t1246 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1247 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t1248 = call i64 @bc_walk(%ASTNode %t1244, { i64, i8* }* %t1245, { i64, i8* }* %t1246, { i64, i8* }* %t1247)
  %t1249 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1250 = call { i64, i8* }* @state_copy({ i64, i8* }* %t1249)
  store { i64, i8* }* %t1250, { i64, i8* }** %t1251
  %t1252 = load { i64, i8* }*, { i64, i8* }** %t1242
  %t1253 = load { i64, i8* }*, { i64, i8* }** %t1251
  %t1254 = call { i64, i8* }* @state_join({ i64, i8* }* %t1252, { i64, i8* }* %t1253)
  store { i64, i8* }* %t1254, { i64, i8* }** %t1255
  %t1256 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1257 = load { i64, i8* }*, { i64, i8* }** %t1255
  %t1258 = call i64 @state_merge_from({ i64, i8* }* %t1256, { i64, i8* }* %t1257)
  ret i64 0
else377:
  br label %merge378
merge378:
  %t1259 = load %nyx_string*, %nyx_string** %t885
  %t1260 = getelementptr [7 x i8], [7 x i8]* @.str93, i32 0, i32 0
  %t1261 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str93.c, i8* %t1260, i64 6)
  %t1262 = call i1 @nyx_string_equals(%nyx_string* %t1259, %nyx_string* %t1261)
  br i1 %t1262, label %then379, label %else380
then379:
  %t1263 = load %ASTNode, %ASTNode* %node.ptr
  %t1264 = call %ASTNode @bc_node_at(%ASTNode %t1263, i64 0)
  store %ASTNode %t1264, %ASTNode* %t1265
  %t1266 = load %ASTNode, %ASTNode* %t1265
  %t1267 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1268 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1269 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t1270 = call i64 @bc_walk(%ASTNode %t1266, { i64, i8* }* %t1267, { i64, i8* }* %t1268, { i64, i8* }* %t1269)
  %t1271 = load %ASTNode, %ASTNode* %t1265
  %t1272 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1273 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1274 = call %nyx_string* @bc_aggregate_escaping_origin(%ASTNode %t1271, { i64, i8* }* %t1272, { i64, i8* }* %t1273)
  store %nyx_string* %t1274, %nyx_string** %t1275
  %t1276 = load %nyx_string*, %nyx_string** %t1275
  %t1277 = getelementptr [1 x i8], [1 x i8]* @.str94, i32 0, i32 0
  %t1278 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str94.c, i8* %t1277, i64 0)
  %t1279 = call i1 @nyx_string_equals(%nyx_string* %t1276, %nyx_string* %t1278)
  %t1280 = xor i1 %t1279, true
  br i1 %t1280, label %then382, label %else383
then382:
  %t1281 = load %nyx_string*, %nyx_string** %t1275
  %t1282 = call %nyx_string* @reforigin_name(%nyx_string* %t1281)
  store %nyx_string* %t1282, %nyx_string** %t1283
  %t1284 = load %nyx_string*, %nyx_string** %t1275
  %t1285 = call i1 @reforigin_is_soft(%nyx_string* %t1284)
  br i1 %t1285, label %then385, label %else386
then385:
  %t1286 = getelementptr [30 x i8], [30 x i8]* @.str95, i32 0, i32 0
  %t1287 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str95.c, i8* %t1286, i64 29)
  %t1288 = load %nyx_string*, %nyx_string** %t1283
  %t1289 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1287, %nyx_string* %t1288)
  %t1290 = getelementptr [38 x i8], [38 x i8]* @.str96, i32 0, i32 0
  %t1291 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str96.c, i8* %t1290, i64 37)
  %t1292 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1289, %nyx_string* %t1291)
  store %nyx_string* %t1292, %nyx_string** %t1293
  %t1294 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %t1295 = load i64, i64* %t1294
  %t1296 = icmp sgt i64 %t1295, 0
  br i1 %t1296, label %then388, label %else389
then388:
  %t1297 = load %nyx_string*, %nyx_string** %t1293
  %t1298 = getelementptr [8 x i8], [8 x i8]* @.str97, i32 0, i32 0
  %t1299 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str97.c, i8* %t1298, i64 7)
  %t1300 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1297, %nyx_string* %t1299)
  %t1301 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %t1302 = load i64, i64* %t1301
  %t1303 = call %nyx_string* @nyx_string_from_int(i64 %t1302)
  %t1304 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1300, %nyx_string* %t1303)
  %t1305 = getelementptr [2 x i8], [2 x i8]* @.str98, i32 0, i32 0
  %t1306 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str98.c, i8* %t1305, i64 1)
  %t1307 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1304, %nyx_string* %t1306)
  store %nyx_string* %t1307, %nyx_string** %t1293
  br label %merge390
else389:
  br label %merge390
merge390:
  %t1308 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t1309 = load %nyx_string*, %nyx_string** %t1293
  %t1310 = ptrtoint %nyx_string* %t1309 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1308, i64 %t1310, i64 2)
  br label %merge387
else386:
  %t1311 = getelementptr [30 x i8], [30 x i8]* @.str99, i32 0, i32 0
  %t1312 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str99.c, i8* %t1311, i64 29)
  %t1313 = load %nyx_string*, %nyx_string** %t1283
  %t1314 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1312, %nyx_string* %t1313)
  %t1315 = getelementptr [36 x i8], [36 x i8]* @.str100, i32 0, i32 0
  %t1316 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str100.c, i8* %t1315, i64 35)
  %t1317 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1314, %nyx_string* %t1316)
  store %nyx_string* %t1317, %nyx_string** %t1318
  %t1319 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %t1320 = load i64, i64* %t1319
  %t1321 = icmp sgt i64 %t1320, 0
  br i1 %t1321, label %then391, label %else392
then391:
  %t1322 = load %nyx_string*, %nyx_string** %t1318
  %t1323 = getelementptr [8 x i8], [8 x i8]* @.str101, i32 0, i32 0
  %t1324 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str101.c, i8* %t1323, i64 7)
  %t1325 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1322, %nyx_string* %t1324)
  %t1326 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %t1327 = load i64, i64* %t1326
  %t1328 = call %nyx_string* @nyx_string_from_int(i64 %t1327)
  %t1329 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1325, %nyx_string* %t1328)
  %t1330 = getelementptr [2 x i8], [2 x i8]* @.str102, i32 0, i32 0
  %t1331 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str102.c, i8* %t1330, i64 1)
  %t1332 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1329, %nyx_string* %t1331)
  store %nyx_string* %t1332, %nyx_string** %t1318
  br label %merge393
else392:
  br label %merge393
merge393:
  %t1333 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t1334 = load %nyx_string*, %nyx_string** %t1318
  %t1335 = ptrtoint %nyx_string* %t1334 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1333, i64 %t1335, i64 2)
  br label %merge387
merge387:
  br label %merge384
else383:
  br label %merge384
merge384:
  %t1336 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1337 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1338 = load %ASTNode, %ASTNode* %t1265
  %t1339 = call i64 @bc_maybe_move({ i64, i8* }* %t1336, { i64, i8* }* %t1337, %ASTNode %t1338)
  ret i64 0
else380:
  br label %merge381
merge381:
  %t1340 = load %nyx_string*, %nyx_string** %t885
  %t1341 = getelementptr [4 x i8], [4 x i8]* @.str103, i32 0, i32 0
  %t1342 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str103.c, i8* %t1341, i64 3)
  %t1343 = call i1 @nyx_string_equals(%nyx_string* %t1340, %nyx_string* %t1342)
  br i1 %t1343, label %then394, label %else395
then394:
  %t1344 = load %ASTNode, %ASTNode* %node.ptr
  %t1345 = call %ASTNode @bc_node_at(%ASTNode %t1344, i64 2)
  store %ASTNode %t1345, %ASTNode* %t1346
  %t1347 = load %ASTNode, %ASTNode* %t1346
  %t1348 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1349 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1350 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t1351 = call i64 @bc_walk(%ASTNode %t1347, { i64, i8* }* %t1348, { i64, i8* }* %t1349, { i64, i8* }* %t1350)
  %t1352 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1353 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1354 = load %ASTNode, %ASTNode* %t1346
  %t1355 = call i64 @bc_maybe_move({ i64, i8* }* %t1352, { i64, i8* }* %t1353, %ASTNode %t1354)
  %t1356 = load %ASTNode, %ASTNode* %node.ptr
  %t1357 = call %ASTNode @bc_node_at(%ASTNode %t1356, i64 0)
  store %ASTNode %t1357, %ASTNode* %t1358
  %t1359 = getelementptr %ASTNode, %ASTNode* %t1358, i32 0, i32 0
  %t1360 = load %nyx_string*, %nyx_string** %t1359
  store %nyx_string* %t1360, %nyx_string** %t1361
  %t1362 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %t1363 = load { i64, i8* }*, { i64, i8* }** %t1362
  store { i64, i8* }* %t1363, { i64, i8* }** %t1364
  %t1365 = getelementptr [1 x i8], [1 x i8]* @.str104, i32 0, i32 0
  %t1366 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str104.c, i8* %t1365, i64 0)
  store %nyx_string* %t1366, %nyx_string** %t1367
  %t1368 = load { i64, i8* }*, { i64, i8* }** %t1364
  %t1369 = call i64 @nyx_array_length({ i64, i8* }* %t1368)
  %t1370 = icmp sgt i64 %t1369, 3
  br i1 %t1370, label %then397, label %else398
then397:
  %t1371 = load { i64, i8* }*, { i64, i8* }** %t1364
  %t1372 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1371, i64 3, i64 2)
  %t1373 = inttoptr i64 %t1372 to %nyx_string*
  store %nyx_string* %t1373, %nyx_string** %t1367
  br label %merge399
else398:
  br label %merge399
merge399:
  %t1374 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1375 = load %nyx_string*, %nyx_string** %t1361
  %t1376 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1377 = load %nyx_string*, %nyx_string** %t1367
  %t1378 = call i64 @move_kind_of({ i64, i8* }* %t1376, %nyx_string* %t1377)
  %t1379 = call i64 @tm_put({ i64, i8* }* %t1374, %nyx_string* %t1375, i64 %t1378)
  %t1380 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1381 = load %nyx_string*, %nyx_string** %t1361
  %t1382 = call i64 @revive({ i64, i8* }* %t1380, %nyx_string* %t1381)
  %t1383 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1384 = load %nyx_string*, %nyx_string** %t1361
  %t1385 = call i64 @tm_add_local({ i64, i8* }* %t1383, %nyx_string* %t1384)
  %t1386 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1387 = load %nyx_string*, %nyx_string** %t1361
  %t1388 = load %ASTNode, %ASTNode* %t1346
  %t1389 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1390 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1391 = call %nyx_string* @bc_escaping_origin(%ASTNode %t1388, { i64, i8* }* %t1389, { i64, i8* }* %t1390)
  %t1392 = call i64 @set_reforigin({ i64, i8* }* %t1386, %nyx_string* %t1387, %nyx_string* %t1391)
  ret i64 0
else395:
  br label %merge396
merge396:
  %t1393 = load %nyx_string*, %nyx_string** %t885
  %t1394 = getelementptr [6 x i8], [6 x i8]* @.str105, i32 0, i32 0
  %t1395 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str105.c, i8* %t1394, i64 5)
  %t1396 = call i1 @nyx_string_equals(%nyx_string* %t1393, %nyx_string* %t1395)
  br i1 %t1396, label %then400, label %else401
then400:
  %t1397 = load %ASTNode, %ASTNode* %node.ptr
  %t1398 = call %ASTNode @bc_node_at(%ASTNode %t1397, i64 1)
  %t1399 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1400 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1401 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t1402 = call i64 @bc_walk(%ASTNode %t1398, { i64, i8* }* %t1399, { i64, i8* }* %t1400, { i64, i8* }* %t1401)
  ret i64 0
else401:
  br label %merge402
merge402:
  %t1403 = load %nyx_string*, %nyx_string** %t885
  %t1404 = getelementptr [9 x i8], [9 x i8]* @.str106, i32 0, i32 0
  %t1405 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str106.c, i8* %t1404, i64 8)
  %t1406 = call i1 @nyx_string_equals(%nyx_string* %t1403, %nyx_string* %t1405)
  br i1 %t1406, label %then403, label %else404
then403:
  %t1407 = call { i64, i8* }* @state_new()
  store { i64, i8* }* %t1407, { i64, i8* }** %t1408
  %t1409 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1410 = call { i64, i8* }* @tm_affine_names({ i64, i8* }* %t1409)
  %t1411 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1412 = call i8* @tm_sigs({ i64, i8* }* %t1411)
  %t1413 = call { i64, i8* }* @tm_new({ i64, i8* }* %t1410, i8* %t1412)
  store { i64, i8* }* %t1413, { i64, i8* }** %t1414
  %t1415 = load %ASTNode, %ASTNode* %node.ptr
  %t1416 = load { i64, i8* }*, { i64, i8* }** %t1414
  %t1417 = call i64 @bc_register_params(%ASTNode %t1415, { i64, i8* }* %t1416)
  %t1418 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1419 = load { i64, i8* }*, { i64, i8* }** %t1414
  %t1420 = call i64 @bc_inherit_captures({ i64, i8* }* %t1418, { i64, i8* }* %t1419)
  %t1421 = load { i64, i8* }*, { i64, i8* }** %t1414
  %t1422 = call i64 @tm_mark_fn({ i64, i8* }* %t1421)
  %t1423 = load %ASTNode, %ASTNode* %node.ptr
  %t1424 = call %ASTNode @bc_node_at(%ASTNode %t1423, i64 3)
  %t1425 = load { i64, i8* }*, { i64, i8* }** %t1408
  %t1426 = load { i64, i8* }*, { i64, i8* }** %t1414
  %t1427 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t1428 = call i64 @bc_walk(%ASTNode %t1424, { i64, i8* }* %t1425, { i64, i8* }* %t1426, { i64, i8* }* %t1427)
  ret i64 0
else404:
  br label %merge405
merge405:
  %t1429 = load %nyx_string*, %nyx_string** %t885
  %t1430 = getelementptr [9 x i8], [9 x i8]* @.str107, i32 0, i32 0
  %t1431 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str107.c, i8* %t1430, i64 8)
  %t1432 = call i1 @nyx_string_equals(%nyx_string* %t1429, %nyx_string* %t1431)
  br i1 %t1432, label %then406, label %else407
then406:
  %t1433 = call { i64, i8* }* @state_new()
  store { i64, i8* }* %t1433, { i64, i8* }** %t1434
  %t1435 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1436 = call { i64, i8* }* @tm_affine_names({ i64, i8* }* %t1435)
  %t1437 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1438 = call i8* @tm_sigs({ i64, i8* }* %t1437)
  %t1439 = call { i64, i8* }* @tm_new({ i64, i8* }* %t1436, i8* %t1438)
  store { i64, i8* }* %t1439, { i64, i8* }** %t1440
  %t1441 = load %ASTNode, %ASTNode* %node.ptr
  %t1442 = load { i64, i8* }*, { i64, i8* }** %t1440
  %t1443 = call i64 @bc_register_params(%ASTNode %t1441, { i64, i8* }* %t1442)
  %t1444 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1445 = load { i64, i8* }*, { i64, i8* }** %t1440
  %t1446 = call i64 @bc_inherit_captures({ i64, i8* }* %t1444, { i64, i8* }* %t1445)
  %t1447 = load { i64, i8* }*, { i64, i8* }** %t1440
  %t1448 = call i64 @tm_mark_fn({ i64, i8* }* %t1447)
  %t1449 = load %ASTNode, %ASTNode* %node.ptr
  %t1450 = call %ASTNode @bc_node_at(%ASTNode %t1449, i64 3)
  %t1451 = load { i64, i8* }*, { i64, i8* }** %t1434
  %t1452 = load { i64, i8* }*, { i64, i8* }** %t1440
  %t1453 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t1454 = call i64 @bc_walk(%ASTNode %t1450, { i64, i8* }* %t1451, { i64, i8* }* %t1452, { i64, i8* }* %t1453)
  ret i64 0
else407:
  br label %merge408
merge408:
  %t1455 = load %nyx_string*, %nyx_string** %t885
  %t1456 = getelementptr [5 x i8], [5 x i8]* @.str108, i32 0, i32 0
  %t1457 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str108.c, i8* %t1456, i64 4)
  %t1458 = call i1 @nyx_string_equals(%nyx_string* %t1455, %nyx_string* %t1457)
  br i1 %t1458, label %then409, label %else410
then409:
  %t1459 = load %ASTNode, %ASTNode* %node.ptr
  %t1460 = call { i64, i8* }* @bc_array_at(%ASTNode %t1459, i64 1)
  store { i64, i8* }* %t1460, { i64, i8* }** %t1461
  store i64 0, i64* %t1462
  br label %while_cond412
while_cond412:
  %t1463 = load i64, i64* %t1462
  %t1464 = load { i64, i8* }*, { i64, i8* }** %t1461
  %t1465 = call i64 @nyx_array_length({ i64, i8* }* %t1464)
  %t1466 = icmp slt i64 %t1463, %t1465
  br i1 %t1466, label %while_body413, label %while_end414
while_body413:
  %t1467 = load { i64, i8* }*, { i64, i8* }** %t1461
  %t1468 = load i64, i64* %t1462
  %t1469 = call i64 @nyx_array_get({ i64, i8* }* %t1467, i64 %t1468)
  %t1470 = inttoptr i64 %t1469 to { i64, i8* }*
  %t1471 = call i64 @nyx_array_get({ i64, i8* }* %t1470, i64 0)
  %t1472 = call i64 @nyx_array_get({ i64, i8* }* %t1470, i64 1)
  %t1473 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t1470, i64 2)
  %t1474 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t1470, i64 3)
  %t1475 = inttoptr i64 %t1471 to %nyx_string*
  %t1476 = inttoptr i64 %t1472 to { i64, i8* }*
  %t1478 = getelementptr inbounds %ASTNode, %ASTNode* %t1477, i32 0, i32 0
  store %nyx_string* %t1475, %nyx_string** %t1478
  %t1479 = getelementptr inbounds %ASTNode, %ASTNode* %t1477, i32 0, i32 1
  store { i64, i8* }* %t1476, { i64, i8* }** %t1479
  %t1480 = getelementptr inbounds %ASTNode, %ASTNode* %t1477, i32 0, i32 2
  store i64 %t1473, i64* %t1480
  %t1481 = getelementptr inbounds %ASTNode, %ASTNode* %t1477, i32 0, i32 3
  store i64 %t1474, i64* %t1481
  %t1482 = load %ASTNode, %ASTNode* %t1477
  store %ASTNode %t1482, %ASTNode* %t1483
  %t1484 = load %ASTNode, %ASTNode* %t1483
  %t1485 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1486 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1487 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t1488 = call i64 @bc_walk(%ASTNode %t1484, { i64, i8* }* %t1485, { i64, i8* }* %t1486, { i64, i8* }* %t1487)
  %t1489 = load i64, i64* %t1462
  %t1490 = add i64 %t1489, 1
  store i64 %t1490, i64* %t1462
  br label %while_cond412
while_end414:
  ret i64 0
else410:
  br label %merge411
merge411:
  %t1491 = load %nyx_string*, %nyx_string** %t885
  %t1492 = getelementptr [11 x i8], [11 x i8]* @.str109, i32 0, i32 0
  %t1493 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str109.c, i8* %t1492, i64 10)
  %t1494 = call i1 @nyx_string_equals(%nyx_string* %t1491, %nyx_string* %t1493)
  br i1 %t1494, label %then415, label %else416
then415:
  %t1495 = load %ASTNode, %ASTNode* %node.ptr
  %t1496 = call { i64, i8* }* @bc_array_at(%ASTNode %t1495, i64 2)
  store { i64, i8* }* %t1496, { i64, i8* }** %t1497
  store i64 0, i64* %t1498
  br label %while_cond418
while_cond418:
  %t1499 = load i64, i64* %t1498
  %t1500 = load { i64, i8* }*, { i64, i8* }** %t1497
  %t1501 = call i64 @nyx_array_length({ i64, i8* }* %t1500)
  %t1502 = icmp slt i64 %t1499, %t1501
  br i1 %t1502, label %while_body419, label %while_end420
while_body419:
  %t1503 = load { i64, i8* }*, { i64, i8* }** %t1497
  %t1504 = load i64, i64* %t1498
  %t1505 = call i64 @nyx_array_get({ i64, i8* }* %t1503, i64 %t1504)
  %t1506 = inttoptr i64 %t1505 to { i64, i8* }*
  %t1507 = call i64 @nyx_array_get({ i64, i8* }* %t1506, i64 0)
  %t1508 = call i64 @nyx_array_get({ i64, i8* }* %t1506, i64 1)
  %t1509 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t1506, i64 2)
  %t1510 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t1506, i64 3)
  %t1511 = inttoptr i64 %t1507 to %nyx_string*
  %t1512 = inttoptr i64 %t1508 to { i64, i8* }*
  %t1514 = getelementptr inbounds %ASTNode, %ASTNode* %t1513, i32 0, i32 0
  store %nyx_string* %t1511, %nyx_string** %t1514
  %t1515 = getelementptr inbounds %ASTNode, %ASTNode* %t1513, i32 0, i32 1
  store { i64, i8* }* %t1512, { i64, i8* }** %t1515
  %t1516 = getelementptr inbounds %ASTNode, %ASTNode* %t1513, i32 0, i32 2
  store i64 %t1509, i64* %t1516
  %t1517 = getelementptr inbounds %ASTNode, %ASTNode* %t1513, i32 0, i32 3
  store i64 %t1510, i64* %t1517
  %t1518 = load %ASTNode, %ASTNode* %t1513
  store %ASTNode %t1518, %ASTNode* %t1519
  %t1520 = load %ASTNode, %ASTNode* %t1519
  %t1521 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1522 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1523 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t1524 = call i64 @bc_walk(%ASTNode %t1520, { i64, i8* }* %t1521, { i64, i8* }* %t1522, { i64, i8* }* %t1523)
  %t1525 = load i64, i64* %t1498
  %t1526 = add i64 %t1525, 1
  store i64 %t1526, i64* %t1498
  br label %while_cond418
while_end420:
  ret i64 0
else416:
  br label %merge417
merge417:
  %t1527 = load %nyx_string*, %nyx_string** %t885
  %t1528 = getelementptr [7 x i8], [7 x i8]* @.str110, i32 0, i32 0
  %t1529 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str110.c, i8* %t1528, i64 6)
  %t1530 = call i1 @nyx_string_equals(%nyx_string* %t1527, %nyx_string* %t1529)
  br i1 %t1530, label %then421, label %else422
then421:
  %t1531 = load %ASTNode, %ASTNode* %node.ptr
  %t1532 = call %ASTNode @bc_node_at(%ASTNode %t1531, i64 0)
  %t1533 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1534 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1535 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t1536 = call i64 @bc_walk(%ASTNode %t1532, { i64, i8* }* %t1533, { i64, i8* }* %t1534, { i64, i8* }* %t1535)
  ret i64 0
else422:
  br label %merge423
merge423:
  %t1537 = load %nyx_string*, %nyx_string** %t885
  %t1538 = getelementptr [6 x i8], [6 x i8]* @.str111, i32 0, i32 0
  %t1539 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str111.c, i8* %t1538, i64 5)
  %t1540 = call i1 @nyx_string_equals(%nyx_string* %t1537, %nyx_string* %t1539)
  br i1 %t1540, label %then424, label %else425
then424:
  %t1541 = load %ASTNode, %ASTNode* %node.ptr
  %t1542 = call %ASTNode @bc_node_at(%ASTNode %t1541, i64 1)
  %t1543 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1544 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1545 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t1546 = call i64 @bc_walk(%ASTNode %t1542, { i64, i8* }* %t1543, { i64, i8* }* %t1544, { i64, i8* }* %t1545)
  %t1547 = load %ASTNode, %ASTNode* %node.ptr
  %t1548 = call %ASTNode @bc_node_at(%ASTNode %t1547, i64 2)
  %t1549 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1550 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1551 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t1552 = call i64 @bc_walk(%ASTNode %t1548, { i64, i8* }* %t1549, { i64, i8* }* %t1550, { i64, i8* }* %t1551)
  ret i64 0
else425:
  br label %merge426
merge426:
  %t1553 = load %nyx_string*, %nyx_string** %t885
  %t1554 = getelementptr [5 x i8], [5 x i8]* @.str112, i32 0, i32 0
  %t1555 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str112.c, i8* %t1554, i64 4)
  %t1556 = call i1 @nyx_string_equals(%nyx_string* %t1553, %nyx_string* %t1555)
  br i1 %t1556, label %then427, label %else428
then427:
  %t1557 = load %ASTNode, %ASTNode* %node.ptr
  %t1558 = call %ASTNode @bc_node_at(%ASTNode %t1557, i64 1)
  %t1559 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1560 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1561 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t1562 = call i64 @bc_walk(%ASTNode %t1558, { i64, i8* }* %t1559, { i64, i8* }* %t1560, { i64, i8* }* %t1561)
  ret i64 0
else428:
  br label %merge429
merge429:
  %t1563 = load %nyx_string*, %nyx_string** %t885
  %t1564 = getelementptr [5 x i8], [5 x i8]* @.str113, i32 0, i32 0
  %t1565 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str113.c, i8* %t1564, i64 4)
  %t1566 = call i1 @nyx_string_equals(%nyx_string* %t1563, %nyx_string* %t1565)
  br i1 %t1566, label %then430, label %else431
then430:
  %t1567 = load %ASTNode, %ASTNode* %node.ptr
  %t1568 = call %ASTNode @bc_node_at(%ASTNode %t1567, i64 0)
  store %ASTNode %t1568, %ASTNode* %t1569
  %t1570 = load %ASTNode, %ASTNode* %node.ptr
  %t1571 = call { i64, i8* }* @bc_array_at(%ASTNode %t1570, i64 1)
  store { i64, i8* }* %t1571, { i64, i8* }** %t1572
  %t1573 = getelementptr %ASTNode, %ASTNode* %t1569, i32 0, i32 0
  %t1574 = load %nyx_string*, %nyx_string** %t1573
  %t1575 = getelementptr [11 x i8], [11 x i8]* @.str114, i32 0, i32 0
  %t1576 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str114.c, i8* %t1575, i64 10)
  %t1577 = call i1 @nyx_string_equals(%nyx_string* %t1574, %nyx_string* %t1576)
  br i1 %t1577, label %then433, label %else434
then433:
  %t1578 = load %ASTNode, %ASTNode* %t1569
  %t1579 = call %nyx_string* @place_of(%ASTNode %t1578)
  %t1580 = getelementptr [5 x i8], [5 x i8]* @.str115, i32 0, i32 0
  %t1581 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str115.c, i8* %t1580, i64 4)
  %t1582 = call i1 @nyx_string_equals(%nyx_string* %t1579, %nyx_string* %t1581)
  br i1 %t1582, label %then436, label %else437
then436:
  %t1583 = load { i64, i8* }*, { i64, i8* }** %t1572
  %t1584 = call i64 @nyx_array_length({ i64, i8* }* %t1583)
  %t1585 = icmp sge i64 %t1584, 1
  br i1 %t1585, label %then439, label %else440
then439:
  %t1586 = load { i64, i8* }*, { i64, i8* }** %t1572
  %t1587 = call i64 @nyx_array_get({ i64, i8* }* %t1586, i64 0)
  %t1588 = inttoptr i64 %t1587 to { i64, i8* }*
  %t1589 = call i64 @nyx_array_get({ i64, i8* }* %t1588, i64 0)
  %t1590 = call i64 @nyx_array_get({ i64, i8* }* %t1588, i64 1)
  %t1591 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t1588, i64 2)
  %t1592 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t1588, i64 3)
  %t1593 = inttoptr i64 %t1589 to %nyx_string*
  %t1594 = inttoptr i64 %t1590 to { i64, i8* }*
  %t1596 = getelementptr inbounds %ASTNode, %ASTNode* %t1595, i32 0, i32 0
  store %nyx_string* %t1593, %nyx_string** %t1596
  %t1597 = getelementptr inbounds %ASTNode, %ASTNode* %t1595, i32 0, i32 1
  store { i64, i8* }* %t1594, { i64, i8* }** %t1597
  %t1598 = getelementptr inbounds %ASTNode, %ASTNode* %t1595, i32 0, i32 2
  store i64 %t1591, i64* %t1598
  %t1599 = getelementptr inbounds %ASTNode, %ASTNode* %t1595, i32 0, i32 3
  store i64 %t1592, i64* %t1599
  %t1600 = load %ASTNode, %ASTNode* %t1595
  store %ASTNode %t1600, %ASTNode* %t1601
  %t1602 = load %ASTNode, %ASTNode* %t1601
  %t1603 = call %nyx_string* @place_path(%ASTNode %t1602)
  store %nyx_string* %t1603, %nyx_string** %t1604
  %t1605 = load %nyx_string*, %nyx_string** %t1604
  %t1606 = getelementptr [1 x i8], [1 x i8]* @.str116, i32 0, i32 0
  %t1607 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str116.c, i8* %t1606, i64 0)
  %t1608 = call i1 @nyx_string_equals(%nyx_string* %t1605, %nyx_string* %t1607)
  %t1609 = xor i1 %t1608, true
  br i1 %t1609, label %then442, label %else443
then442:
  %t1610 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1611 = load %nyx_string*, %nyx_string** %t1604
  %t1612 = call i1 @is_freed({ i64, i8* }* %t1610, %nyx_string* %t1611)
  br i1 %t1612, label %then445, label %else446
then445:
  %t1613 = getelementptr [26 x i8], [26 x i8]* @.str117, i32 0, i32 0
  %t1614 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str117.c, i8* %t1613, i64 25)
  %t1615 = load %nyx_string*, %nyx_string** %t1604
  %t1616 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1614, %nyx_string* %t1615)
  %t1617 = getelementptr [2 x i8], [2 x i8]* @.str118, i32 0, i32 0
  %t1618 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str118.c, i8* %t1617, i64 1)
  %t1619 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1616, %nyx_string* %t1618)
  store %nyx_string* %t1619, %nyx_string** %t1620
  %t1621 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %t1622 = load i64, i64* %t1621
  %t1623 = icmp sgt i64 %t1622, 0
  br i1 %t1623, label %then448, label %else449
then448:
  %t1624 = load %nyx_string*, %nyx_string** %t1620
  %t1625 = getelementptr [8 x i8], [8 x i8]* @.str119, i32 0, i32 0
  %t1626 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str119.c, i8* %t1625, i64 7)
  %t1627 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1624, %nyx_string* %t1626)
  %t1628 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %t1629 = load i64, i64* %t1628
  %t1630 = call %nyx_string* @nyx_string_from_int(i64 %t1629)
  %t1631 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1627, %nyx_string* %t1630)
  %t1632 = getelementptr [2 x i8], [2 x i8]* @.str120, i32 0, i32 0
  %t1633 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str120.c, i8* %t1632, i64 1)
  %t1634 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1631, %nyx_string* %t1633)
  store %nyx_string* %t1634, %nyx_string** %t1620
  br label %merge450
else449:
  br label %merge450
merge450:
  %t1635 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t1636 = load %nyx_string*, %nyx_string** %t1620
  %t1637 = ptrtoint %nyx_string* %t1636 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1635, i64 %t1637, i64 2)
  br label %merge447
else446:
  %t1638 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1639 = load %nyx_string*, %nyx_string** %t1604
  %t1640 = call i64 @mark_freed({ i64, i8* }* %t1638, %nyx_string* %t1639)
  br label %merge447
merge447:
  store i64 1, i64* %t1641
  br label %while_cond451
while_cond451:
  %t1642 = load i64, i64* %t1641
  %t1643 = load { i64, i8* }*, { i64, i8* }** %t1572
  %t1644 = call i64 @nyx_array_length({ i64, i8* }* %t1643)
  %t1645 = icmp slt i64 %t1642, %t1644
  br i1 %t1645, label %while_body452, label %while_end453
while_body452:
  %t1646 = load { i64, i8* }*, { i64, i8* }** %t1572
  %t1647 = load i64, i64* %t1641
  %t1648 = call i64 @nyx_array_get({ i64, i8* }* %t1646, i64 %t1647)
  %t1649 = inttoptr i64 %t1648 to { i64, i8* }*
  %t1650 = call i64 @nyx_array_get({ i64, i8* }* %t1649, i64 0)
  %t1651 = call i64 @nyx_array_get({ i64, i8* }* %t1649, i64 1)
  %t1652 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t1649, i64 2)
  %t1653 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t1649, i64 3)
  %t1654 = inttoptr i64 %t1650 to %nyx_string*
  %t1655 = inttoptr i64 %t1651 to { i64, i8* }*
  %t1657 = getelementptr inbounds %ASTNode, %ASTNode* %t1656, i32 0, i32 0
  store %nyx_string* %t1654, %nyx_string** %t1657
  %t1658 = getelementptr inbounds %ASTNode, %ASTNode* %t1656, i32 0, i32 1
  store { i64, i8* }* %t1655, { i64, i8* }** %t1658
  %t1659 = getelementptr inbounds %ASTNode, %ASTNode* %t1656, i32 0, i32 2
  store i64 %t1652, i64* %t1659
  %t1660 = getelementptr inbounds %ASTNode, %ASTNode* %t1656, i32 0, i32 3
  store i64 %t1653, i64* %t1660
  %t1661 = load %ASTNode, %ASTNode* %t1656
  store %ASTNode %t1661, %ASTNode* %t1662
  %t1663 = load %ASTNode, %ASTNode* %t1662
  %t1664 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1665 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1666 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t1667 = call i64 @bc_walk(%ASTNode %t1663, { i64, i8* }* %t1664, { i64, i8* }* %t1665, { i64, i8* }* %t1666)
  %t1668 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1669 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1670 = load %ASTNode, %ASTNode* %t1662
  %t1671 = call i64 @bc_maybe_move({ i64, i8* }* %t1668, { i64, i8* }* %t1669, %ASTNode %t1670)
  %t1672 = load i64, i64* %t1641
  %t1673 = add i64 %t1672, 1
  store i64 %t1673, i64* %t1641
  br label %while_cond451
while_end453:
  ret i64 0
else443:
  br label %merge444
merge444:
  br label %merge441
else440:
  br label %merge441
merge441:
  br label %merge438
else437:
  br label %merge438
merge438:
  br label %merge435
else434:
  br label %merge435
merge435:
  %t1674 = load %ASTNode, %ASTNode* %t1569
  %t1675 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1676 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1677 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t1678 = call i64 @bc_walk(%ASTNode %t1674, { i64, i8* }* %t1675, { i64, i8* }* %t1676, { i64, i8* }* %t1677)
  store i64 0, i64* %t1679
  br label %while_cond454
while_cond454:
  %t1680 = load i64, i64* %t1679
  %t1681 = load { i64, i8* }*, { i64, i8* }** %t1572
  %t1682 = call i64 @nyx_array_length({ i64, i8* }* %t1681)
  %t1683 = icmp slt i64 %t1680, %t1682
  br i1 %t1683, label %while_body455, label %while_end456
while_body455:
  %t1684 = load { i64, i8* }*, { i64, i8* }** %t1572
  %t1685 = load i64, i64* %t1679
  %t1686 = call i64 @nyx_array_get({ i64, i8* }* %t1684, i64 %t1685)
  %t1687 = inttoptr i64 %t1686 to { i64, i8* }*
  %t1688 = call i64 @nyx_array_get({ i64, i8* }* %t1687, i64 0)
  %t1689 = call i64 @nyx_array_get({ i64, i8* }* %t1687, i64 1)
  %t1690 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t1687, i64 2)
  %t1691 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t1687, i64 3)
  %t1692 = inttoptr i64 %t1688 to %nyx_string*
  %t1693 = inttoptr i64 %t1689 to { i64, i8* }*
  %t1695 = getelementptr inbounds %ASTNode, %ASTNode* %t1694, i32 0, i32 0
  store %nyx_string* %t1692, %nyx_string** %t1695
  %t1696 = getelementptr inbounds %ASTNode, %ASTNode* %t1694, i32 0, i32 1
  store { i64, i8* }* %t1693, { i64, i8* }** %t1696
  %t1697 = getelementptr inbounds %ASTNode, %ASTNode* %t1694, i32 0, i32 2
  store i64 %t1690, i64* %t1697
  %t1698 = getelementptr inbounds %ASTNode, %ASTNode* %t1694, i32 0, i32 3
  store i64 %t1691, i64* %t1698
  %t1699 = load %ASTNode, %ASTNode* %t1694
  store %ASTNode %t1699, %ASTNode* %t1700
  %t1701 = load %ASTNode, %ASTNode* %t1700
  %t1702 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1703 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1704 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t1705 = call i64 @bc_walk(%ASTNode %t1701, { i64, i8* }* %t1702, { i64, i8* }* %t1703, { i64, i8* }* %t1704)
  %t1706 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1707 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1708 = load %ASTNode, %ASTNode* %t1700
  %t1709 = call i64 @bc_maybe_move({ i64, i8* }* %t1706, { i64, i8* }* %t1707, %ASTNode %t1708)
  %t1710 = load i64, i64* %t1679
  %t1711 = add i64 %t1710, 1
  store i64 %t1711, i64* %t1679
  br label %while_cond454
while_end456:
  ret i64 0
else431:
  br label %merge432
merge432:
  %t1712 = load %nyx_string*, %nyx_string** %t885
  %t1713 = getelementptr [6 x i8], [6 x i8]* @.str121, i32 0, i32 0
  %t1714 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str121.c, i8* %t1713, i64 5)
  %t1715 = call i1 @nyx_string_equals(%nyx_string* %t1712, %nyx_string* %t1714)
  br i1 %t1715, label %then457, label %else458
then457:
  %t1716 = load %ASTNode, %ASTNode* %node.ptr
  %t1717 = call { i64, i8* }* @bc_array_at(%ASTNode %t1716, i64 0)
  store { i64, i8* }* %t1717, { i64, i8* }** %t1718
  store i64 0, i64* %t1719
  br label %while_cond460
while_cond460:
  %t1720 = load i64, i64* %t1719
  %t1721 = load { i64, i8* }*, { i64, i8* }** %t1718
  %t1722 = call i64 @nyx_array_length({ i64, i8* }* %t1721)
  %t1723 = icmp slt i64 %t1720, %t1722
  br i1 %t1723, label %while_body461, label %while_end462
while_body461:
  %t1724 = load { i64, i8* }*, { i64, i8* }** %t1718
  %t1725 = load i64, i64* %t1719
  %t1726 = call i64 @nyx_array_get({ i64, i8* }* %t1724, i64 %t1725)
  %t1727 = inttoptr i64 %t1726 to { i64, i8* }*
  %t1728 = call i64 @nyx_array_get({ i64, i8* }* %t1727, i64 0)
  %t1729 = call i64 @nyx_array_get({ i64, i8* }* %t1727, i64 1)
  %t1730 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t1727, i64 2)
  %t1731 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t1727, i64 3)
  %t1732 = inttoptr i64 %t1728 to %nyx_string*
  %t1733 = inttoptr i64 %t1729 to { i64, i8* }*
  %t1735 = getelementptr inbounds %ASTNode, %ASTNode* %t1734, i32 0, i32 0
  store %nyx_string* %t1732, %nyx_string** %t1735
  %t1736 = getelementptr inbounds %ASTNode, %ASTNode* %t1734, i32 0, i32 1
  store { i64, i8* }* %t1733, { i64, i8* }** %t1736
  %t1737 = getelementptr inbounds %ASTNode, %ASTNode* %t1734, i32 0, i32 2
  store i64 %t1730, i64* %t1737
  %t1738 = getelementptr inbounds %ASTNode, %ASTNode* %t1734, i32 0, i32 3
  store i64 %t1731, i64* %t1738
  %t1739 = load %ASTNode, %ASTNode* %t1734
  store %ASTNode %t1739, %ASTNode* %t1740
  %t1741 = load %ASTNode, %ASTNode* %t1740
  %t1742 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1743 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1744 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t1745 = call i64 @bc_walk(%ASTNode %t1741, { i64, i8* }* %t1742, { i64, i8* }* %t1743, { i64, i8* }* %t1744)
  %t1746 = load i64, i64* %t1719
  %t1747 = add i64 %t1746, 1
  store i64 %t1747, i64* %t1719
  br label %while_cond460
while_end462:
  ret i64 0
else458:
  br label %merge459
merge459:
  %t1748 = load %nyx_string*, %nyx_string** %t885
  %t1749 = getelementptr [12 x i8], [12 x i8]* @.str122, i32 0, i32 0
  %t1750 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str122.c, i8* %t1749, i64 11)
  %t1751 = call i1 @nyx_string_equals(%nyx_string* %t1748, %nyx_string* %t1750)
  br i1 %t1751, label %then463, label %else464
then463:
  %t1752 = load %ASTNode, %ASTNode* %node.ptr
  %t1753 = call { i64, i8* }* @bc_array_at(%ASTNode %t1752, i64 1)
  store { i64, i8* }* %t1753, { i64, i8* }** %t1754
  store i64 0, i64* %t1755
  br label %while_cond466
while_cond466:
  %t1756 = load i64, i64* %t1755
  %t1757 = load { i64, i8* }*, { i64, i8* }** %t1754
  %t1758 = call i64 @nyx_array_length({ i64, i8* }* %t1757)
  %t1759 = icmp slt i64 %t1756, %t1758
  br i1 %t1759, label %while_body467, label %while_end468
while_body467:
  %t1760 = load { i64, i8* }*, { i64, i8* }** %t1754
  %t1761 = load i64, i64* %t1755
  %t1762 = call i64 @nyx_array_get({ i64, i8* }* %t1760, i64 %t1761)
  %t1763 = inttoptr i64 %t1762 to { i64, i8* }*
  %t1764 = call i64 @nyx_array_get({ i64, i8* }* %t1763, i64 0)
  %t1765 = call i64 @nyx_array_get({ i64, i8* }* %t1763, i64 1)
  %t1766 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t1763, i64 2)
  %t1767 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t1763, i64 3)
  %t1768 = inttoptr i64 %t1764 to %nyx_string*
  %t1769 = inttoptr i64 %t1765 to { i64, i8* }*
  %t1771 = getelementptr inbounds %ASTNode, %ASTNode* %t1770, i32 0, i32 0
  store %nyx_string* %t1768, %nyx_string** %t1771
  %t1772 = getelementptr inbounds %ASTNode, %ASTNode* %t1770, i32 0, i32 1
  store { i64, i8* }* %t1769, { i64, i8* }** %t1772
  %t1773 = getelementptr inbounds %ASTNode, %ASTNode* %t1770, i32 0, i32 2
  store i64 %t1766, i64* %t1773
  %t1774 = getelementptr inbounds %ASTNode, %ASTNode* %t1770, i32 0, i32 3
  store i64 %t1767, i64* %t1774
  %t1775 = load %ASTNode, %ASTNode* %t1770
  store %ASTNode %t1775, %ASTNode* %t1776
  %t1777 = load %ASTNode, %ASTNode* %t1776
  %t1778 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1779 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1780 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t1781 = call i64 @bc_walk(%ASTNode %t1777, { i64, i8* }* %t1778, { i64, i8* }* %t1779, { i64, i8* }* %t1780)
  %t1782 = load i64, i64* %t1755
  %t1783 = add i64 %t1782, 1
  store i64 %t1783, i64* %t1755
  br label %while_cond466
while_end468:
  ret i64 0
else464:
  br label %merge465
merge465:
  %t1784 = load %nyx_string*, %nyx_string** %t885
  %t1785 = getelementptr [6 x i8], [6 x i8]* @.str123, i32 0, i32 0
  %t1786 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str123.c, i8* %t1785, i64 5)
  %t1787 = call i1 @nyx_string_equals(%nyx_string* %t1784, %nyx_string* %t1786)
  br i1 %t1787, label %then469, label %else470
then469:
  %t1788 = load %ASTNode, %ASTNode* %node.ptr
  %t1789 = call %ASTNode @bc_node_at(%ASTNode %t1788, i64 0)
  %t1790 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1791 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1792 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t1793 = call i64 @bc_walk(%ASTNode %t1789, { i64, i8* }* %t1790, { i64, i8* }* %t1791, { i64, i8* }* %t1792)
  %t1794 = load %ASTNode, %ASTNode* %node.ptr
  %t1795 = call %ASTNode @bc_node_at(%ASTNode %t1794, i64 1)
  %t1796 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1797 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1798 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t1799 = call i64 @bc_walk(%ASTNode %t1795, { i64, i8* }* %t1796, { i64, i8* }* %t1797, { i64, i8* }* %t1798)
  ret i64 0
else470:
  br label %merge471
merge471:
  %t1800 = load %nyx_string*, %nyx_string** %t885
  %t1801 = getelementptr [6 x i8], [6 x i8]* @.str124, i32 0, i32 0
  %t1802 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str124.c, i8* %t1801, i64 5)
  %t1803 = call i1 @nyx_string_equals(%nyx_string* %t1800, %nyx_string* %t1802)
  br i1 %t1803, label %then472, label %else473
then472:
  %t1804 = load %ASTNode, %ASTNode* %node.ptr
  %t1805 = call %ASTNode @bc_node_at(%ASTNode %t1804, i64 0)
  %t1806 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1807 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1808 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t1809 = call i64 @bc_walk(%ASTNode %t1805, { i64, i8* }* %t1806, { i64, i8* }* %t1807, { i64, i8* }* %t1808)
  %t1810 = load %ASTNode, %ASTNode* %node.ptr
  %t1811 = call %ASTNode @bc_node_at(%ASTNode %t1810, i64 1)
  %t1812 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1813 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1814 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t1815 = call i64 @bc_walk(%ASTNode %t1811, { i64, i8* }* %t1812, { i64, i8* }* %t1813, { i64, i8* }* %t1814)
  ret i64 0
else473:
  br label %merge474
merge474:
  %t1816 = load %nyx_string*, %nyx_string** %t885
  %t1817 = getelementptr [7 x i8], [7 x i8]* @.str125, i32 0, i32 0
  %t1818 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str125.c, i8* %t1817, i64 6)
  %t1819 = call i1 @nyx_string_equals(%nyx_string* %t1816, %nyx_string* %t1818)
  br i1 %t1819, label %then475, label %else476
then475:
  %t1820 = load %ASTNode, %ASTNode* %node.ptr
  %t1821 = call %ASTNode @bc_node_at(%ASTNode %t1820, i64 1)
  store %ASTNode %t1821, %ASTNode* %t1822
  %t1823 = load %ASTNode, %ASTNode* %t1822
  %t1824 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1825 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1826 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t1827 = call i64 @bc_walk(%ASTNode %t1823, { i64, i8* }* %t1824, { i64, i8* }* %t1825, { i64, i8* }* %t1826)
  %t1828 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1829 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1830 = load %ASTNode, %ASTNode* %t1822
  %t1831 = call i64 @bc_maybe_move({ i64, i8* }* %t1828, { i64, i8* }* %t1829, %ASTNode %t1830)
  %t1832 = load %ASTNode, %ASTNode* %node.ptr
  %t1833 = call %ASTNode @bc_node_at(%ASTNode %t1832, i64 0)
  store %ASTNode %t1833, %ASTNode* %t1834
  %t1835 = getelementptr %ASTNode, %ASTNode* %t1834, i32 0, i32 0
  %t1836 = load %nyx_string*, %nyx_string** %t1835
  store %nyx_string* %t1836, %nyx_string** %t1837
  %t1838 = load %nyx_string*, %nyx_string** %t1837
  %t1839 = getelementptr [1 x i8], [1 x i8]* @.str126, i32 0, i32 0
  %t1840 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str126.c, i8* %t1839, i64 0)
  %t1841 = call i1 @nyx_string_equals(%nyx_string* %t1838, %nyx_string* %t1840)
  %t1842 = xor i1 %t1841, true
  br i1 %t1842, label %then478, label %else479
then478:
  %t1843 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1844 = load %nyx_string*, %nyx_string** %t1837
  %t1845 = call i64 @revive({ i64, i8* }* %t1843, %nyx_string* %t1844)
  %t1846 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1847 = load %nyx_string*, %nyx_string** %t1837
  %t1848 = load %ASTNode, %ASTNode* %t1822
  %t1849 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1850 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1851 = call %nyx_string* @bc_escaping_origin(%ASTNode %t1848, { i64, i8* }* %t1849, { i64, i8* }* %t1850)
  %t1852 = call i64 @set_reforigin({ i64, i8* }* %t1846, %nyx_string* %t1847, %nyx_string* %t1851)
  %t1853 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1854 = load %nyx_string*, %nyx_string** %t1837
  %t1855 = call i1 @tm_is_local({ i64, i8* }* %t1853, %nyx_string* %t1854)
  %t1856 = xor i1 %t1855, true
  br i1 %t1856, label %then481, label %else482
then481:
  %t1857 = load %ASTNode, %ASTNode* %t1822
  %t1858 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1859 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1860 = call %nyx_string* @bc_escaping_origin(%ASTNode %t1857, { i64, i8* }* %t1858, { i64, i8* }* %t1859)
  store %nyx_string* %t1860, %nyx_string** %t1861
  %t1862 = load %nyx_string*, %nyx_string** %t1861
  %t1863 = getelementptr [1 x i8], [1 x i8]* @.str127, i32 0, i32 0
  %t1864 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str127.c, i8* %t1863, i64 0)
  %t1865 = call i1 @nyx_string_equals(%nyx_string* %t1862, %nyx_string* %t1864)
  %t1866 = xor i1 %t1865, true
  br i1 %t1866, label %then484, label %else485
then484:
  %t1867 = load %nyx_string*, %nyx_string** %t1861
  %t1868 = call %nyx_string* @reforigin_name(%nyx_string* %t1867)
  store %nyx_string* %t1868, %nyx_string** %t1869
  %t1870 = load %nyx_string*, %nyx_string** %t1861
  %t1871 = call i1 @reforigin_is_soft(%nyx_string* %t1870)
  br i1 %t1871, label %then487, label %else488
then487:
  %t1872 = getelementptr [30 x i8], [30 x i8]* @.str128, i32 0, i32 0
  %t1873 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str128.c, i8* %t1872, i64 29)
  %t1874 = load %nyx_string*, %nyx_string** %t1869
  %t1875 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1873, %nyx_string* %t1874)
  %t1876 = getelementptr [38 x i8], [38 x i8]* @.str129, i32 0, i32 0
  %t1877 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str129.c, i8* %t1876, i64 37)
  %t1878 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1875, %nyx_string* %t1877)
  store %nyx_string* %t1878, %nyx_string** %t1879
  %t1880 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %t1881 = load i64, i64* %t1880
  %t1882 = icmp sgt i64 %t1881, 0
  br i1 %t1882, label %then490, label %else491
then490:
  %t1883 = load %nyx_string*, %nyx_string** %t1879
  %t1884 = getelementptr [8 x i8], [8 x i8]* @.str130, i32 0, i32 0
  %t1885 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str130.c, i8* %t1884, i64 7)
  %t1886 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1883, %nyx_string* %t1885)
  %t1887 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %t1888 = load i64, i64* %t1887
  %t1889 = call %nyx_string* @nyx_string_from_int(i64 %t1888)
  %t1890 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1886, %nyx_string* %t1889)
  %t1891 = getelementptr [2 x i8], [2 x i8]* @.str131, i32 0, i32 0
  %t1892 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str131.c, i8* %t1891, i64 1)
  %t1893 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1890, %nyx_string* %t1892)
  store %nyx_string* %t1893, %nyx_string** %t1879
  br label %merge492
else491:
  br label %merge492
merge492:
  %t1894 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t1895 = load %nyx_string*, %nyx_string** %t1879
  %t1896 = ptrtoint %nyx_string* %t1895 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1894, i64 %t1896, i64 2)
  br label %merge489
else488:
  %t1897 = getelementptr [30 x i8], [30 x i8]* @.str132, i32 0, i32 0
  %t1898 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str132.c, i8* %t1897, i64 29)
  %t1899 = load %nyx_string*, %nyx_string** %t1869
  %t1900 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1898, %nyx_string* %t1899)
  %t1901 = getelementptr [39 x i8], [39 x i8]* @.str133, i32 0, i32 0
  %t1902 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str133.c, i8* %t1901, i64 38)
  %t1903 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1900, %nyx_string* %t1902)
  store %nyx_string* %t1903, %nyx_string** %t1904
  %t1905 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %t1906 = load i64, i64* %t1905
  %t1907 = icmp sgt i64 %t1906, 0
  br i1 %t1907, label %then493, label %else494
then493:
  %t1908 = load %nyx_string*, %nyx_string** %t1904
  %t1909 = getelementptr [8 x i8], [8 x i8]* @.str134, i32 0, i32 0
  %t1910 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str134.c, i8* %t1909, i64 7)
  %t1911 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1908, %nyx_string* %t1910)
  %t1912 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %t1913 = load i64, i64* %t1912
  %t1914 = call %nyx_string* @nyx_string_from_int(i64 %t1913)
  %t1915 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1911, %nyx_string* %t1914)
  %t1916 = getelementptr [2 x i8], [2 x i8]* @.str135, i32 0, i32 0
  %t1917 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str135.c, i8* %t1916, i64 1)
  %t1918 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1915, %nyx_string* %t1917)
  store %nyx_string* %t1918, %nyx_string** %t1904
  br label %merge495
else494:
  br label %merge495
merge495:
  %t1919 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t1920 = load %nyx_string*, %nyx_string** %t1904
  %t1921 = ptrtoint %nyx_string* %t1920 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1919, i64 %t1921, i64 2)
  br label %merge489
merge489:
  br label %merge486
else485:
  br label %merge486
merge486:
  br label %merge483
else482:
  br label %merge483
merge483:
  br label %merge480
else479:
  br label %merge480
merge480:
  ret i64 0
else476:
  br label %merge477
merge477:
  %t1922 = load %nyx_string*, %nyx_string** %t885
  %t1923 = getelementptr [16 x i8], [16 x i8]* @.str136, i32 0, i32 0
  %t1924 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str136.c, i8* %t1923, i64 15)
  %t1925 = call i1 @nyx_string_equals(%nyx_string* %t1922, %nyx_string* %t1924)
  br i1 %t1925, label %then496, label %else497
then496:
  %t1926 = load %ASTNode, %ASTNode* %node.ptr
  %t1927 = call %ASTNode @bc_node_at(%ASTNode %t1926, i64 1)
  store %ASTNode %t1927, %ASTNode* %t1928
  %t1929 = load %ASTNode, %ASTNode* %t1928
  %t1930 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1931 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1932 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t1933 = call i64 @bc_walk(%ASTNode %t1929, { i64, i8* }* %t1930, { i64, i8* }* %t1931, { i64, i8* }* %t1932)
  %t1934 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1935 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1936 = load %ASTNode, %ASTNode* %t1928
  %t1937 = call i64 @bc_maybe_move({ i64, i8* }* %t1934, { i64, i8* }* %t1935, %ASTNode %t1936)
  ret i64 0
else497:
  br label %merge498
merge498:
  %t1938 = load %nyx_string*, %nyx_string** %t885
  %t1939 = getelementptr [13 x i8], [13 x i8]* @.str137, i32 0, i32 0
  %t1940 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str137.c, i8* %t1939, i64 12)
  %t1941 = call i1 @nyx_string_equals(%nyx_string* %t1938, %nyx_string* %t1940)
  br i1 %t1941, label %then499, label %else500
then499:
  %t1942 = load %ASTNode, %ASTNode* %node.ptr
  %t1943 = call %ASTNode @bc_node_at(%ASTNode %t1942, i64 0)
  store %ASTNode %t1943, %ASTNode* %t1944
  %t1945 = load %ASTNode, %ASTNode* %t1944
  %t1946 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1947 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1948 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t1949 = call i64 @bc_walk(%ASTNode %t1945, { i64, i8* }* %t1946, { i64, i8* }* %t1947, { i64, i8* }* %t1948)
  %t1950 = load %ASTNode, %ASTNode* %node.ptr
  %t1951 = call %ASTNode @bc_node_at(%ASTNode %t1950, i64 1)
  %t1952 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1953 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1954 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t1955 = call i64 @bc_walk(%ASTNode %t1951, { i64, i8* }* %t1952, { i64, i8* }* %t1953, { i64, i8* }* %t1954)
  %t1956 = load %ASTNode, %ASTNode* %node.ptr
  %t1957 = call %ASTNode @bc_node_at(%ASTNode %t1956, i64 2)
  store %ASTNode %t1957, %ASTNode* %t1958
  %t1959 = load %ASTNode, %ASTNode* %t1958
  %t1960 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1961 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1962 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t1963 = call i64 @bc_walk(%ASTNode %t1959, { i64, i8* }* %t1960, { i64, i8* }* %t1961, { i64, i8* }* %t1962)
  %t1964 = load %ASTNode, %ASTNode* %t1944
  %t1965 = call %nyx_string* @place_of(%ASTNode %t1964)
  store %nyx_string* %t1965, %nyx_string** %t1966
  %t1967 = load %nyx_string*, %nyx_string** %t1966
  %t1968 = getelementptr [1 x i8], [1 x i8]* @.str138, i32 0, i32 0
  %t1969 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str138.c, i8* %t1968, i64 0)
  %t1970 = call i1 @nyx_string_equals(%nyx_string* %t1967, %nyx_string* %t1969)
  %t1971 = xor i1 %t1970, true
  br i1 %t1971, label %then502, label %else503
then502:
  %t1972 = load %nyx_string*, %nyx_string** %t1966
  %t1973 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1974 = call i1 @bc_dest_outlives(%nyx_string* %t1972, { i64, i8* }* %t1973)
  br i1 %t1974, label %then505, label %else506
then505:
  %t1975 = load %ASTNode, %ASTNode* %t1958
  %t1976 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t1977 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t1978 = call %nyx_string* @bc_escaping_origin(%ASTNode %t1975, { i64, i8* }* %t1976, { i64, i8* }* %t1977)
  store %nyx_string* %t1978, %nyx_string** %t1979
  %t1980 = load %nyx_string*, %nyx_string** %t1979
  %t1981 = getelementptr [1 x i8], [1 x i8]* @.str139, i32 0, i32 0
  %t1982 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str139.c, i8* %t1981, i64 0)
  %t1983 = call i1 @nyx_string_equals(%nyx_string* %t1980, %nyx_string* %t1982)
  %t1984 = xor i1 %t1983, true
  br i1 %t1984, label %then508, label %else509
then508:
  %t1985 = load %nyx_string*, %nyx_string** %t1979
  %t1986 = call %nyx_string* @reforigin_name(%nyx_string* %t1985)
  store %nyx_string* %t1986, %nyx_string** %t1987
  %t1988 = load %nyx_string*, %nyx_string** %t1979
  %t1989 = call i1 @reforigin_is_soft(%nyx_string* %t1988)
  br i1 %t1989, label %then511, label %else512
then511:
  %t1990 = getelementptr [30 x i8], [30 x i8]* @.str140, i32 0, i32 0
  %t1991 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str140.c, i8* %t1990, i64 29)
  %t1992 = load %nyx_string*, %nyx_string** %t1987
  %t1993 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1991, %nyx_string* %t1992)
  %t1994 = getelementptr [38 x i8], [38 x i8]* @.str141, i32 0, i32 0
  %t1995 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str141.c, i8* %t1994, i64 37)
  %t1996 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1993, %nyx_string* %t1995)
  store %nyx_string* %t1996, %nyx_string** %t1997
  %t1998 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %t1999 = load i64, i64* %t1998
  %t2000 = icmp sgt i64 %t1999, 0
  br i1 %t2000, label %then514, label %else515
then514:
  %t2001 = load %nyx_string*, %nyx_string** %t1997
  %t2002 = getelementptr [8 x i8], [8 x i8]* @.str142, i32 0, i32 0
  %t2003 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str142.c, i8* %t2002, i64 7)
  %t2004 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2001, %nyx_string* %t2003)
  %t2005 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %t2006 = load i64, i64* %t2005
  %t2007 = call %nyx_string* @nyx_string_from_int(i64 %t2006)
  %t2008 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2004, %nyx_string* %t2007)
  %t2009 = getelementptr [2 x i8], [2 x i8]* @.str143, i32 0, i32 0
  %t2010 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str143.c, i8* %t2009, i64 1)
  %t2011 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2008, %nyx_string* %t2010)
  store %nyx_string* %t2011, %nyx_string** %t1997
  br label %merge516
else515:
  br label %merge516
merge516:
  %t2012 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t2013 = load %nyx_string*, %nyx_string** %t1997
  %t2014 = ptrtoint %nyx_string* %t2013 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2012, i64 %t2014, i64 2)
  br label %merge513
else512:
  %t2015 = getelementptr [30 x i8], [30 x i8]* @.str144, i32 0, i32 0
  %t2016 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str144.c, i8* %t2015, i64 29)
  %t2017 = load %nyx_string*, %nyx_string** %t1987
  %t2018 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2016, %nyx_string* %t2017)
  %t2019 = getelementptr [39 x i8], [39 x i8]* @.str145, i32 0, i32 0
  %t2020 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str145.c, i8* %t2019, i64 38)
  %t2021 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2018, %nyx_string* %t2020)
  store %nyx_string* %t2021, %nyx_string** %t2022
  %t2023 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %t2024 = load i64, i64* %t2023
  %t2025 = icmp sgt i64 %t2024, 0
  br i1 %t2025, label %then517, label %else518
then517:
  %t2026 = load %nyx_string*, %nyx_string** %t2022
  %t2027 = getelementptr [8 x i8], [8 x i8]* @.str146, i32 0, i32 0
  %t2028 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str146.c, i8* %t2027, i64 7)
  %t2029 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2026, %nyx_string* %t2028)
  %t2030 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %t2031 = load i64, i64* %t2030
  %t2032 = call %nyx_string* @nyx_string_from_int(i64 %t2031)
  %t2033 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2029, %nyx_string* %t2032)
  %t2034 = getelementptr [2 x i8], [2 x i8]* @.str147, i32 0, i32 0
  %t2035 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str147.c, i8* %t2034, i64 1)
  %t2036 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2033, %nyx_string* %t2035)
  store %nyx_string* %t2036, %nyx_string** %t2022
  br label %merge519
else518:
  br label %merge519
merge519:
  %t2037 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t2038 = load %nyx_string*, %nyx_string** %t2022
  %t2039 = ptrtoint %nyx_string* %t2038 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2037, i64 %t2039, i64 2)
  br label %merge513
merge513:
  br label %merge510
else509:
  br label %merge510
merge510:
  br label %merge507
else506:
  %t2040 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t2041 = load %nyx_string*, %nyx_string** %t1966
  %t2042 = call i1 @tm_is_local({ i64, i8* }* %t2040, %nyx_string* %t2041)
  br i1 %t2042, label %then520, label %else521
then520:
  %t2043 = load %ASTNode, %ASTNode* %t1958
  %t2044 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t2045 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t2046 = call %nyx_string* @bc_escaping_origin(%ASTNode %t2043, { i64, i8* }* %t2044, { i64, i8* }* %t2045)
  store %nyx_string* %t2046, %nyx_string** %t2047
  %t2048 = load %nyx_string*, %nyx_string** %t2047
  %t2049 = getelementptr [1 x i8], [1 x i8]* @.str148, i32 0, i32 0
  %t2050 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str148.c, i8* %t2049, i64 0)
  %t2051 = call i1 @nyx_string_equals(%nyx_string* %t2048, %nyx_string* %t2050)
  %t2052 = xor i1 %t2051, true
  br i1 %t2052, label %then523, label %else524
then523:
  %t2053 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t2054 = load %nyx_string*, %nyx_string** %t1966
  %t2055 = load %nyx_string*, %nyx_string** %t2047
  %t2056 = call i64 @set_reforigin({ i64, i8* }* %t2053, %nyx_string* %t2054, %nyx_string* %t2055)
  br label %merge525
else524:
  br label %merge525
merge525:
  br label %merge522
else521:
  br label %merge522
merge522:
  br label %merge507
merge507:
  br label %merge504
else503:
  br label %merge504
merge504:
  ret i64 0
else500:
  br label %merge501
merge501:
  %t2057 = load %nyx_string*, %nyx_string** %t885
  %t2058 = getelementptr [13 x i8], [13 x i8]* @.str149, i32 0, i32 0
  %t2059 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str149.c, i8* %t2058, i64 12)
  %t2060 = call i1 @nyx_string_equals(%nyx_string* %t2057, %nyx_string* %t2059)
  br i1 %t2060, label %then526, label %else527
then526:
  %t2061 = load %ASTNode, %ASTNode* %node.ptr
  %t2062 = call %ASTNode @bc_node_at(%ASTNode %t2061, i64 0)
  store %ASTNode %t2062, %ASTNode* %t2063
  %t2064 = load %ASTNode, %ASTNode* %node.ptr
  %t2065 = call %ASTNode @bc_node_at(%ASTNode %t2064, i64 2)
  store %ASTNode %t2065, %ASTNode* %t2066
  %t2067 = load %ASTNode, %ASTNode* %t2063
  %t2068 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t2069 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t2070 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t2071 = call i64 @bc_walk(%ASTNode %t2067, { i64, i8* }* %t2068, { i64, i8* }* %t2069, { i64, i8* }* %t2070)
  %t2072 = load %ASTNode, %ASTNode* %t2066
  %t2073 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t2074 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t2075 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t2076 = call i64 @bc_walk(%ASTNode %t2072, { i64, i8* }* %t2073, { i64, i8* }* %t2074, { i64, i8* }* %t2075)
  %t2077 = load %ASTNode, %ASTNode* %t2063
  %t2078 = call %nyx_string* @place_of(%ASTNode %t2077)
  store %nyx_string* %t2078, %nyx_string** %t2079
  %t2080 = load %nyx_string*, %nyx_string** %t2079
  %t2081 = getelementptr [1 x i8], [1 x i8]* @.str150, i32 0, i32 0
  %t2082 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str150.c, i8* %t2081, i64 0)
  %t2083 = call i1 @nyx_string_equals(%nyx_string* %t2080, %nyx_string* %t2082)
  %t2084 = xor i1 %t2083, true
  br i1 %t2084, label %then529, label %else530
then529:
  %t2085 = load %nyx_string*, %nyx_string** %t2079
  %t2086 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t2087 = call i1 @bc_dest_outlives(%nyx_string* %t2085, { i64, i8* }* %t2086)
  br i1 %t2087, label %then532, label %else533
then532:
  %t2088 = load %ASTNode, %ASTNode* %t2066
  %t2089 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t2090 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t2091 = call %nyx_string* @bc_escaping_origin(%ASTNode %t2088, { i64, i8* }* %t2089, { i64, i8* }* %t2090)
  store %nyx_string* %t2091, %nyx_string** %t2092
  %t2093 = load %nyx_string*, %nyx_string** %t2092
  %t2094 = getelementptr [1 x i8], [1 x i8]* @.str151, i32 0, i32 0
  %t2095 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str151.c, i8* %t2094, i64 0)
  %t2096 = call i1 @nyx_string_equals(%nyx_string* %t2093, %nyx_string* %t2095)
  %t2097 = xor i1 %t2096, true
  br i1 %t2097, label %then535, label %else536
then535:
  %t2098 = load %nyx_string*, %nyx_string** %t2092
  %t2099 = call %nyx_string* @reforigin_name(%nyx_string* %t2098)
  store %nyx_string* %t2099, %nyx_string** %t2100
  %t2101 = load %nyx_string*, %nyx_string** %t2092
  %t2102 = call i1 @reforigin_is_soft(%nyx_string* %t2101)
  br i1 %t2102, label %then538, label %else539
then538:
  %t2103 = getelementptr [30 x i8], [30 x i8]* @.str152, i32 0, i32 0
  %t2104 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str152.c, i8* %t2103, i64 29)
  %t2105 = load %nyx_string*, %nyx_string** %t2100
  %t2106 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2104, %nyx_string* %t2105)
  %t2107 = getelementptr [38 x i8], [38 x i8]* @.str153, i32 0, i32 0
  %t2108 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str153.c, i8* %t2107, i64 37)
  %t2109 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2106, %nyx_string* %t2108)
  store %nyx_string* %t2109, %nyx_string** %t2110
  %t2111 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %t2112 = load i64, i64* %t2111
  %t2113 = icmp sgt i64 %t2112, 0
  br i1 %t2113, label %then541, label %else542
then541:
  %t2114 = load %nyx_string*, %nyx_string** %t2110
  %t2115 = getelementptr [8 x i8], [8 x i8]* @.str154, i32 0, i32 0
  %t2116 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str154.c, i8* %t2115, i64 7)
  %t2117 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2114, %nyx_string* %t2116)
  %t2118 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %t2119 = load i64, i64* %t2118
  %t2120 = call %nyx_string* @nyx_string_from_int(i64 %t2119)
  %t2121 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2117, %nyx_string* %t2120)
  %t2122 = getelementptr [2 x i8], [2 x i8]* @.str155, i32 0, i32 0
  %t2123 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str155.c, i8* %t2122, i64 1)
  %t2124 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2121, %nyx_string* %t2123)
  store %nyx_string* %t2124, %nyx_string** %t2110
  br label %merge543
else542:
  br label %merge543
merge543:
  %t2125 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t2126 = load %nyx_string*, %nyx_string** %t2110
  %t2127 = ptrtoint %nyx_string* %t2126 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2125, i64 %t2127, i64 2)
  br label %merge540
else539:
  %t2128 = getelementptr [30 x i8], [30 x i8]* @.str156, i32 0, i32 0
  %t2129 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str156.c, i8* %t2128, i64 29)
  %t2130 = load %nyx_string*, %nyx_string** %t2100
  %t2131 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2129, %nyx_string* %t2130)
  %t2132 = getelementptr [39 x i8], [39 x i8]* @.str157, i32 0, i32 0
  %t2133 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str157.c, i8* %t2132, i64 38)
  %t2134 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2131, %nyx_string* %t2133)
  store %nyx_string* %t2134, %nyx_string** %t2135
  %t2136 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %t2137 = load i64, i64* %t2136
  %t2138 = icmp sgt i64 %t2137, 0
  br i1 %t2138, label %then544, label %else545
then544:
  %t2139 = load %nyx_string*, %nyx_string** %t2135
  %t2140 = getelementptr [8 x i8], [8 x i8]* @.str158, i32 0, i32 0
  %t2141 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str158.c, i8* %t2140, i64 7)
  %t2142 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2139, %nyx_string* %t2141)
  %t2143 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %t2144 = load i64, i64* %t2143
  %t2145 = call %nyx_string* @nyx_string_from_int(i64 %t2144)
  %t2146 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2142, %nyx_string* %t2145)
  %t2147 = getelementptr [2 x i8], [2 x i8]* @.str159, i32 0, i32 0
  %t2148 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str159.c, i8* %t2147, i64 1)
  %t2149 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2146, %nyx_string* %t2148)
  store %nyx_string* %t2149, %nyx_string** %t2135
  br label %merge546
else545:
  br label %merge546
merge546:
  %t2150 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t2151 = load %nyx_string*, %nyx_string** %t2135
  %t2152 = ptrtoint %nyx_string* %t2151 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2150, i64 %t2152, i64 2)
  br label %merge540
merge540:
  br label %merge537
else536:
  br label %merge537
merge537:
  br label %merge534
else533:
  %t2153 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t2154 = load %nyx_string*, %nyx_string** %t2079
  %t2155 = call i1 @tm_is_local({ i64, i8* }* %t2153, %nyx_string* %t2154)
  br i1 %t2155, label %then547, label %else548
then547:
  %t2156 = load %ASTNode, %ASTNode* %t2066
  %t2157 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t2158 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t2159 = call %nyx_string* @bc_escaping_origin(%ASTNode %t2156, { i64, i8* }* %t2157, { i64, i8* }* %t2158)
  store %nyx_string* %t2159, %nyx_string** %t2160
  %t2161 = load %nyx_string*, %nyx_string** %t2160
  %t2162 = getelementptr [1 x i8], [1 x i8]* @.str160, i32 0, i32 0
  %t2163 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str160.c, i8* %t2162, i64 0)
  %t2164 = call i1 @nyx_string_equals(%nyx_string* %t2161, %nyx_string* %t2163)
  %t2165 = xor i1 %t2164, true
  br i1 %t2165, label %then550, label %else551
then550:
  %t2166 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t2167 = load %nyx_string*, %nyx_string** %t2079
  %t2168 = load %nyx_string*, %nyx_string** %t2160
  %t2169 = call i64 @set_reforigin({ i64, i8* }* %t2166, %nyx_string* %t2167, %nyx_string* %t2168)
  br label %merge552
else551:
  br label %merge552
merge552:
  br label %merge549
else548:
  br label %merge549
merge549:
  br label %merge534
merge534:
  br label %merge531
else530:
  br label %merge531
merge531:
  ret i64 0
else527:
  br label %merge528
merge528:
  %t2170 = load %nyx_string*, %nyx_string** %t885
  %t2171 = getelementptr [12 x i8], [12 x i8]* @.str161, i32 0, i32 0
  %t2172 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str161.c, i8* %t2171, i64 11)
  %t2173 = call i1 @nyx_string_equals(%nyx_string* %t2170, %nyx_string* %t2172)
  br i1 %t2173, label %then553, label %else554
then553:
  %t2174 = load %ASTNode, %ASTNode* %node.ptr
  %t2175 = call { i64, i8* }* @bc_array_at(%ASTNode %t2174, i64 1)
  store { i64, i8* }* %t2175, { i64, i8* }** %t2176
  store i64 0, i64* %t2177
  br label %while_cond556
while_cond556:
  %t2178 = load i64, i64* %t2177
  %t2179 = load { i64, i8* }*, { i64, i8* }** %t2176
  %t2180 = call i64 @nyx_array_length({ i64, i8* }* %t2179)
  %t2181 = icmp slt i64 %t2178, %t2180
  br i1 %t2181, label %while_body557, label %while_end558
while_body557:
  %t2182 = load { i64, i8* }*, { i64, i8* }** %t2176
  %t2183 = load i64, i64* %t2177
  %t2184 = call i64 @nyx_array_get({ i64, i8* }* %t2182, i64 %t2183)
  %t2185 = inttoptr i64 %t2184 to { i64, i8* }*
  store { i64, i8* }* %t2185, { i64, i8* }** %t2186
  %t2187 = load { i64, i8* }*, { i64, i8* }** %t2186
  %t2188 = call i64 @nyx_array_get({ i64, i8* }* %t2187, i64 1)
  %t2189 = inttoptr i64 %t2188 to { i64, i8* }*
  %t2190 = call i64 @nyx_array_get({ i64, i8* }* %t2189, i64 0)
  %t2191 = call i64 @nyx_array_get({ i64, i8* }* %t2189, i64 1)
  %t2192 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t2189, i64 2)
  %t2193 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t2189, i64 3)
  %t2194 = inttoptr i64 %t2190 to %nyx_string*
  %t2195 = inttoptr i64 %t2191 to { i64, i8* }*
  %t2197 = getelementptr inbounds %ASTNode, %ASTNode* %t2196, i32 0, i32 0
  store %nyx_string* %t2194, %nyx_string** %t2197
  %t2198 = getelementptr inbounds %ASTNode, %ASTNode* %t2196, i32 0, i32 1
  store { i64, i8* }* %t2195, { i64, i8* }** %t2198
  %t2199 = getelementptr inbounds %ASTNode, %ASTNode* %t2196, i32 0, i32 2
  store i64 %t2192, i64* %t2199
  %t2200 = getelementptr inbounds %ASTNode, %ASTNode* %t2196, i32 0, i32 3
  store i64 %t2193, i64* %t2200
  %t2201 = load %ASTNode, %ASTNode* %t2196
  store %ASTNode %t2201, %ASTNode* %t2202
  %t2203 = load %ASTNode, %ASTNode* %t2202
  %t2204 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t2205 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t2206 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t2207 = call i64 @bc_walk(%ASTNode %t2203, { i64, i8* }* %t2204, { i64, i8* }* %t2205, { i64, i8* }* %t2206)
  %t2208 = load i64, i64* %t2177
  %t2209 = add i64 %t2208, 1
  store i64 %t2209, i64* %t2177
  br label %while_cond556
while_end558:
  ret i64 0
else554:
  br label %merge555
merge555:
  %t2210 = load %nyx_string*, %nyx_string** %t885
  %t2211 = getelementptr [13 x i8], [13 x i8]* @.str162, i32 0, i32 0
  %t2212 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str162.c, i8* %t2211, i64 12)
  %t2213 = call i1 @nyx_string_equals(%nyx_string* %t2210, %nyx_string* %t2212)
  br i1 %t2213, label %then559, label %else560
then559:
  %t2214 = load %ASTNode, %ASTNode* %node.ptr
  %t2215 = call %ASTNode @bc_node_at(%ASTNode %t2214, i64 0)
  %t2216 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t2217 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t2218 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t2219 = call i64 @bc_walk(%ASTNode %t2215, { i64, i8* }* %t2216, { i64, i8* }* %t2217, { i64, i8* }* %t2218)
  ret i64 0
else560:
  br label %merge561
merge561:
  %t2220 = load %nyx_string*, %nyx_string** %t885
  %t2221 = getelementptr [12 x i8], [12 x i8]* @.str163, i32 0, i32 0
  %t2222 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str163.c, i8* %t2221, i64 11)
  %t2223 = call i1 @nyx_string_equals(%nyx_string* %t2220, %nyx_string* %t2222)
  br i1 %t2223, label %then562, label %else563
then562:
  %t2224 = load %ASTNode, %ASTNode* %node.ptr
  %t2225 = call %ASTNode @bc_node_at(%ASTNode %t2224, i64 0)
  %t2226 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t2227 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t2228 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t2229 = call i64 @bc_walk(%ASTNode %t2225, { i64, i8* }* %t2226, { i64, i8* }* %t2227, { i64, i8* }* %t2228)
  %t2230 = load %ASTNode, %ASTNode* %node.ptr
  %t2231 = call { i64, i8* }* @bc_array_at(%ASTNode %t2230, i64 2)
  store { i64, i8* }* %t2231, { i64, i8* }** %t2232
  store i64 0, i64* %t2233
  br label %while_cond565
while_cond565:
  %t2234 = load i64, i64* %t2233
  %t2235 = load { i64, i8* }*, { i64, i8* }** %t2232
  %t2236 = call i64 @nyx_array_length({ i64, i8* }* %t2235)
  %t2237 = icmp slt i64 %t2234, %t2236
  br i1 %t2237, label %while_body566, label %while_end567
while_body566:
  %t2238 = load { i64, i8* }*, { i64, i8* }** %t2232
  %t2239 = load i64, i64* %t2233
  %t2240 = call i64 @nyx_array_get({ i64, i8* }* %t2238, i64 %t2239)
  %t2241 = inttoptr i64 %t2240 to { i64, i8* }*
  %t2242 = call i64 @nyx_array_get({ i64, i8* }* %t2241, i64 0)
  %t2243 = call i64 @nyx_array_get({ i64, i8* }* %t2241, i64 1)
  %t2244 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t2241, i64 2)
  %t2245 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t2241, i64 3)
  %t2246 = inttoptr i64 %t2242 to %nyx_string*
  %t2247 = inttoptr i64 %t2243 to { i64, i8* }*
  %t2249 = getelementptr inbounds %ASTNode, %ASTNode* %t2248, i32 0, i32 0
  store %nyx_string* %t2246, %nyx_string** %t2249
  %t2250 = getelementptr inbounds %ASTNode, %ASTNode* %t2248, i32 0, i32 1
  store { i64, i8* }* %t2247, { i64, i8* }** %t2250
  %t2251 = getelementptr inbounds %ASTNode, %ASTNode* %t2248, i32 0, i32 2
  store i64 %t2244, i64* %t2251
  %t2252 = getelementptr inbounds %ASTNode, %ASTNode* %t2248, i32 0, i32 3
  store i64 %t2245, i64* %t2252
  %t2253 = load %ASTNode, %ASTNode* %t2248
  store %ASTNode %t2253, %ASTNode* %t2254
  %t2255 = load %ASTNode, %ASTNode* %t2254
  %t2256 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t2257 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t2258 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t2259 = call i64 @bc_walk(%ASTNode %t2255, { i64, i8* }* %t2256, { i64, i8* }* %t2257, { i64, i8* }* %t2258)
  %t2260 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t2261 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t2262 = load %ASTNode, %ASTNode* %t2254
  %t2263 = call i64 @bc_maybe_move({ i64, i8* }* %t2260, { i64, i8* }* %t2261, %ASTNode %t2262)
  %t2264 = load i64, i64* %t2233
  %t2265 = add i64 %t2264, 1
  store i64 %t2265, i64* %t2233
  br label %while_cond565
while_end567:
  ret i64 0
else563:
  br label %merge564
merge564:
  %t2266 = load %nyx_string*, %nyx_string** %t885
  %t2267 = getelementptr [6 x i8], [6 x i8]* @.str164, i32 0, i32 0
  %t2268 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str164.c, i8* %t2267, i64 5)
  %t2269 = call i1 @nyx_string_equals(%nyx_string* %t2266, %nyx_string* %t2268)
  br i1 %t2269, label %then568, label %else569
then568:
  %t2270 = load %ASTNode, %ASTNode* %node.ptr
  %t2271 = call %ASTNode @bc_node_at(%ASTNode %t2270, i64 0)
  %t2272 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t2273 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t2274 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t2275 = call i64 @bc_walk(%ASTNode %t2271, { i64, i8* }* %t2272, { i64, i8* }* %t2273, { i64, i8* }* %t2274)
  %t2276 = load %ASTNode, %ASTNode* %node.ptr
  %t2277 = call { i64, i8* }* @bc_array_at(%ASTNode %t2276, i64 1)
  store { i64, i8* }* %t2277, { i64, i8* }** %t2278
  store i64 0, i64* %t2279
  %t2280 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t2281 = call { i64, i8* }* @state_copy({ i64, i8* }* %t2280)
  store { i64, i8* }* %t2281, { i64, i8* }** %t2282
  store i1 0, i1* %t2283
  br label %while_cond571
while_cond571:
  %t2284 = load i64, i64* %t2279
  %t2285 = load { i64, i8* }*, { i64, i8* }** %t2278
  %t2286 = call i64 @nyx_array_length({ i64, i8* }* %t2285)
  %t2287 = icmp slt i64 %t2284, %t2286
  br i1 %t2287, label %while_body572, label %while_end573
while_body572:
  %t2288 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t2289 = call { i64, i8* }* @state_copy({ i64, i8* }* %t2288)
  store { i64, i8* }* %t2289, { i64, i8* }** %t2290
  %t2291 = load { i64, i8* }*, { i64, i8* }** %t2278
  %t2292 = load i64, i64* %t2279
  %t2293 = call i64 @nyx_array_get({ i64, i8* }* %t2291, i64 %t2292)
  %t2294 = inttoptr i64 %t2293 to { i64, i8* }*
  %t2295 = call i64 @nyx_array_get({ i64, i8* }* %t2294, i64 0)
  %t2296 = call i64 @nyx_array_get({ i64, i8* }* %t2294, i64 1)
  %t2297 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t2294, i64 2)
  %t2298 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t2294, i64 3)
  %t2299 = inttoptr i64 %t2295 to %nyx_string*
  %t2300 = inttoptr i64 %t2296 to { i64, i8* }*
  %t2302 = getelementptr inbounds %ASTNode, %ASTNode* %t2301, i32 0, i32 0
  store %nyx_string* %t2299, %nyx_string** %t2302
  %t2303 = getelementptr inbounds %ASTNode, %ASTNode* %t2301, i32 0, i32 1
  store { i64, i8* }* %t2300, { i64, i8* }** %t2303
  %t2304 = getelementptr inbounds %ASTNode, %ASTNode* %t2301, i32 0, i32 2
  store i64 %t2297, i64* %t2304
  %t2305 = getelementptr inbounds %ASTNode, %ASTNode* %t2301, i32 0, i32 3
  store i64 %t2298, i64* %t2305
  %t2306 = load %ASTNode, %ASTNode* %t2301
  store %ASTNode %t2306, %ASTNode* %t2307
  %t2308 = load %ASTNode, %ASTNode* %t2307
  %t2309 = load { i64, i8* }*, { i64, i8* }** %t2290
  %t2310 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t2311 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t2312 = call i64 @bc_walk(%ASTNode %t2308, { i64, i8* }* %t2309, { i64, i8* }* %t2310, { i64, i8* }* %t2311)
  %t2313 = load i1, i1* %t2283
  br i1 %t2313, label %then574, label %else575
then574:
  %t2314 = load { i64, i8* }*, { i64, i8* }** %t2282
  %t2315 = load { i64, i8* }*, { i64, i8* }** %t2290
  %t2316 = call { i64, i8* }* @state_join({ i64, i8* }* %t2314, { i64, i8* }* %t2315)
  store { i64, i8* }* %t2316, { i64, i8* }** %t2282
  br label %merge576
else575:
  %t2317 = load { i64, i8* }*, { i64, i8* }** %t2290
  store { i64, i8* }* %t2317, { i64, i8* }** %t2282
  store i1 1, i1* %t2283
  br label %merge576
merge576:
  %t2318 = load i64, i64* %t2279
  %t2319 = add i64 %t2318, 1
  store i64 %t2319, i64* %t2279
  br label %while_cond571
while_end573:
  %t2320 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t2321 = load { i64, i8* }*, { i64, i8* }** %t2282
  %t2322 = call i64 @state_merge_from({ i64, i8* }* %t2320, { i64, i8* }* %t2321)
  ret i64 0
else569:
  br label %merge570
merge570:
  %t2323 = load %nyx_string*, %nyx_string** %t885
  %t2324 = getelementptr [10 x i8], [10 x i8]* @.str165, i32 0, i32 0
  %t2325 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str165.c, i8* %t2324, i64 9)
  %t2326 = call i1 @nyx_string_equals(%nyx_string* %t2323, %nyx_string* %t2325)
  br i1 %t2326, label %then577, label %else578
then577:
  %t2327 = load %ASTNode, %ASTNode* %node.ptr
  %t2328 = call %ASTNode @bc_node_at(%ASTNode %t2327, i64 0)
  %t2329 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t2330 = call i64 @bc_register_pattern_bindings(%ASTNode %t2328, { i64, i8* }* %t2329)
  %t2331 = load %ASTNode, %ASTNode* %node.ptr
  %t2332 = call %ASTNode @bc_node_at(%ASTNode %t2331, i64 1)
  %t2333 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t2334 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t2335 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t2336 = call i64 @bc_walk(%ASTNode %t2332, { i64, i8* }* %t2333, { i64, i8* }* %t2334, { i64, i8* }* %t2335)
  ret i64 0
else578:
  br label %merge579
merge579:
  %t2337 = load %nyx_string*, %nyx_string** %t885
  %t2338 = getelementptr [7 x i8], [7 x i8]* @.str166, i32 0, i32 0
  %t2339 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str166.c, i8* %t2338, i64 6)
  %t2340 = call i1 @nyx_string_equals(%nyx_string* %t2337, %nyx_string* %t2339)
  br i1 %t2340, label %then580, label %else581
then580:
  %t2341 = load %ASTNode, %ASTNode* %node.ptr
  %t2342 = call %ASTNode @bc_node_at(%ASTNode %t2341, i64 0)
  %t2343 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t2344 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t2345 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t2346 = call i64 @bc_walk(%ASTNode %t2342, { i64, i8* }* %t2343, { i64, i8* }* %t2344, { i64, i8* }* %t2345)
  ret i64 0
else581:
  br label %merge582
merge582:
  %t2347 = load %nyx_string*, %nyx_string** %t885
  %t2348 = getelementptr [5 x i8], [5 x i8]* @.str167, i32 0, i32 0
  %t2349 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str167.c, i8* %t2348, i64 4)
  %t2350 = call i1 @nyx_string_equals(%nyx_string* %t2347, %nyx_string* %t2349)
  br i1 %t2350, label %then583, label %else584
then583:
  %t2351 = load %ASTNode, %ASTNode* %node.ptr
  %t2352 = call %ASTNode @bc_node_at(%ASTNode %t2351, i64 0)
  %t2353 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t2354 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t2355 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t2356 = call i64 @bc_walk(%ASTNode %t2352, { i64, i8* }* %t2353, { i64, i8* }* %t2354, { i64, i8* }* %t2355)
  ret i64 0
else584:
  br label %merge585
merge585:
  %t2357 = load %nyx_string*, %nyx_string** %t885
  %t2358 = getelementptr [13 x i8], [13 x i8]* @.str168, i32 0, i32 0
  %t2359 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str168.c, i8* %t2358, i64 12)
  %t2360 = call i1 @nyx_string_equals(%nyx_string* %t2357, %nyx_string* %t2359)
  br i1 %t2360, label %then586, label %else587
then586:
  %t2361 = load %ASTNode, %ASTNode* %node.ptr
  %t2362 = call %ASTNode @bc_node_at(%ASTNode %t2361, i64 0)
  %t2363 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t2364 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t2365 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t2366 = call i64 @bc_walk(%ASTNode %t2362, { i64, i8* }* %t2363, { i64, i8* }* %t2364, { i64, i8* }* %t2365)
  ret i64 0
else587:
  br label %merge588
merge588:
  %t2367 = load %nyx_string*, %nyx_string** %t885
  %t2368 = getelementptr [8 x i8], [8 x i8]* @.str169, i32 0, i32 0
  %t2369 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str169.c, i8* %t2368, i64 7)
  %t2370 = call i1 @nyx_string_equals(%nyx_string* %t2367, %nyx_string* %t2369)
  br i1 %t2370, label %then589, label %else590
then589:
  %t2371 = load %ASTNode, %ASTNode* %node.ptr
  %t2372 = call %ASTNode @bc_node_at(%ASTNode %t2371, i64 0)
  %t2373 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t2374 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t2375 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t2376 = call i64 @bc_walk(%ASTNode %t2372, { i64, i8* }* %t2373, { i64, i8* }* %t2374, { i64, i8* }* %t2375)
  %t2377 = load %ASTNode, %ASTNode* %node.ptr
  %t2378 = call %nyx_string* @place_of(%ASTNode %t2377)
  store %nyx_string* %t2378, %nyx_string** %t2379
  %t2380 = load %nyx_string*, %nyx_string** %t2379
  %t2381 = getelementptr [1 x i8], [1 x i8]* @.str170, i32 0, i32 0
  %t2382 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str170.c, i8* %t2381, i64 0)
  %t2383 = call i1 @nyx_string_equals(%nyx_string* %t2380, %nyx_string* %t2382)
  %t2384 = xor i1 %t2383, true
  br i1 %t2384, label %then592, label %else593
then592:
  %t2385 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t2386 = load %nyx_string*, %nyx_string** %t2379
  %t2387 = call i64 @get_borrow({ i64, i8* }* %t2385, %nyx_string* %t2386)
  store i64 %t2387, i64* %t2388
  %t2389 = load i64, i64* %t2388
  %t2390 = icmp eq i64 %t2389, 2
  br i1 %t2390, label %then595, label %else596
then595:
  %t2391 = getelementptr [25 x i8], [25 x i8]* @.str171, i32 0, i32 0
  %t2392 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str171.c, i8* %t2391, i64 24)
  %t2393 = load %nyx_string*, %nyx_string** %t2379
  %t2394 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2392, %nyx_string* %t2393)
  %t2395 = getelementptr [41 x i8], [41 x i8]* @.str172, i32 0, i32 0
  %t2396 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str172.c, i8* %t2395, i64 40)
  %t2397 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2394, %nyx_string* %t2396)
  store %nyx_string* %t2397, %nyx_string** %t2398
  %t2399 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %t2400 = load i64, i64* %t2399
  %t2401 = icmp sgt i64 %t2400, 0
  br i1 %t2401, label %then598, label %else599
then598:
  %t2402 = load %nyx_string*, %nyx_string** %t2398
  %t2403 = getelementptr [8 x i8], [8 x i8]* @.str173, i32 0, i32 0
  %t2404 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str173.c, i8* %t2403, i64 7)
  %t2405 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2402, %nyx_string* %t2404)
  %t2406 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %t2407 = load i64, i64* %t2406
  %t2408 = call %nyx_string* @nyx_string_from_int(i64 %t2407)
  %t2409 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2405, %nyx_string* %t2408)
  %t2410 = getelementptr [2 x i8], [2 x i8]* @.str174, i32 0, i32 0
  %t2411 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str174.c, i8* %t2410, i64 1)
  %t2412 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2409, %nyx_string* %t2411)
  store %nyx_string* %t2412, %nyx_string** %t2398
  br label %merge600
else599:
  br label %merge600
merge600:
  %t2413 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t2414 = load %nyx_string*, %nyx_string** %t2398
  %t2415 = ptrtoint %nyx_string* %t2414 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2413, i64 %t2415, i64 2)
  br label %merge597
else596:
  br label %merge597
merge597:
  %t2416 = load i64, i64* %t2388
  %t2417 = icmp ne i64 %t2416, 2
  br i1 %t2417, label %then601, label %else602
then601:
  %t2418 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t2419 = load %nyx_string*, %nyx_string** %t2379
  %t2420 = call i64 @set_borrow({ i64, i8* }* %t2418, %nyx_string* %t2419, i64 1)
  br label %merge603
else602:
  br label %merge603
merge603:
  br label %merge594
else593:
  br label %merge594
merge594:
  ret i64 0
else590:
  br label %merge591
merge591:
  %t2421 = load %nyx_string*, %nyx_string** %t885
  %t2422 = getelementptr [12 x i8], [12 x i8]* @.str175, i32 0, i32 0
  %t2423 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str175.c, i8* %t2422, i64 11)
  %t2424 = call i1 @nyx_string_equals(%nyx_string* %t2421, %nyx_string* %t2423)
  br i1 %t2424, label %then604, label %else605
then604:
  %t2425 = load %ASTNode, %ASTNode* %node.ptr
  %t2426 = call %ASTNode @bc_node_at(%ASTNode %t2425, i64 0)
  %t2427 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t2428 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t2429 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t2430 = call i64 @bc_walk(%ASTNode %t2426, { i64, i8* }* %t2427, { i64, i8* }* %t2428, { i64, i8* }* %t2429)
  %t2431 = load %ASTNode, %ASTNode* %node.ptr
  %t2432 = call %nyx_string* @place_of(%ASTNode %t2431)
  store %nyx_string* %t2432, %nyx_string** %t2433
  %t2434 = load %nyx_string*, %nyx_string** %t2433
  %t2435 = getelementptr [1 x i8], [1 x i8]* @.str176, i32 0, i32 0
  %t2436 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str176.c, i8* %t2435, i64 0)
  %t2437 = call i1 @nyx_string_equals(%nyx_string* %t2434, %nyx_string* %t2436)
  %t2438 = xor i1 %t2437, true
  br i1 %t2438, label %then607, label %else608
then607:
  %t2439 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t2440 = load %nyx_string*, %nyx_string** %t2433
  %t2441 = call i64 @get_borrow({ i64, i8* }* %t2439, %nyx_string* %t2440)
  store i64 %t2441, i64* %t2442
  %t2443 = load i64, i64* %t2442
  %t2444 = icmp eq i64 %t2443, 2
  br i1 %t2444, label %then610, label %else611
then610:
  %t2445 = getelementptr [25 x i8], [25 x i8]* @.str177, i32 0, i32 0
  %t2446 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str177.c, i8* %t2445, i64 24)
  %t2447 = load %nyx_string*, %nyx_string** %t2433
  %t2448 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2446, %nyx_string* %t2447)
  %t2449 = getelementptr [38 x i8], [38 x i8]* @.str178, i32 0, i32 0
  %t2450 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str178.c, i8* %t2449, i64 37)
  %t2451 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2448, %nyx_string* %t2450)
  store %nyx_string* %t2451, %nyx_string** %t2452
  %t2453 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %t2454 = load i64, i64* %t2453
  %t2455 = icmp sgt i64 %t2454, 0
  br i1 %t2455, label %then613, label %else614
then613:
  %t2456 = load %nyx_string*, %nyx_string** %t2452
  %t2457 = getelementptr [8 x i8], [8 x i8]* @.str179, i32 0, i32 0
  %t2458 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str179.c, i8* %t2457, i64 7)
  %t2459 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2456, %nyx_string* %t2458)
  %t2460 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %t2461 = load i64, i64* %t2460
  %t2462 = call %nyx_string* @nyx_string_from_int(i64 %t2461)
  %t2463 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2459, %nyx_string* %t2462)
  %t2464 = getelementptr [2 x i8], [2 x i8]* @.str180, i32 0, i32 0
  %t2465 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str180.c, i8* %t2464, i64 1)
  %t2466 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2463, %nyx_string* %t2465)
  store %nyx_string* %t2466, %nyx_string** %t2452
  br label %merge615
else614:
  br label %merge615
merge615:
  %t2467 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t2468 = load %nyx_string*, %nyx_string** %t2452
  %t2469 = ptrtoint %nyx_string* %t2468 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2467, i64 %t2469, i64 2)
  br label %merge612
else611:
  br label %merge612
merge612:
  %t2470 = load i64, i64* %t2442
  %t2471 = icmp eq i64 %t2470, 1
  br i1 %t2471, label %then616, label %else617
then616:
  %t2472 = getelementptr [25 x i8], [25 x i8]* @.str181, i32 0, i32 0
  %t2473 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str181.c, i8* %t2472, i64 24)
  %t2474 = load %nyx_string*, %nyx_string** %t2433
  %t2475 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2473, %nyx_string* %t2474)
  %t2476 = getelementptr [46 x i8], [46 x i8]* @.str182, i32 0, i32 0
  %t2477 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str182.c, i8* %t2476, i64 45)
  %t2478 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2475, %nyx_string* %t2477)
  store %nyx_string* %t2478, %nyx_string** %t2479
  %t2480 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %t2481 = load i64, i64* %t2480
  %t2482 = icmp sgt i64 %t2481, 0
  br i1 %t2482, label %then619, label %else620
then619:
  %t2483 = load %nyx_string*, %nyx_string** %t2479
  %t2484 = getelementptr [8 x i8], [8 x i8]* @.str183, i32 0, i32 0
  %t2485 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str183.c, i8* %t2484, i64 7)
  %t2486 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2483, %nyx_string* %t2485)
  %t2487 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %t2488 = load i64, i64* %t2487
  %t2489 = call %nyx_string* @nyx_string_from_int(i64 %t2488)
  %t2490 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2486, %nyx_string* %t2489)
  %t2491 = getelementptr [2 x i8], [2 x i8]* @.str184, i32 0, i32 0
  %t2492 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str184.c, i8* %t2491, i64 1)
  %t2493 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2490, %nyx_string* %t2492)
  store %nyx_string* %t2493, %nyx_string** %t2479
  br label %merge621
else620:
  br label %merge621
merge621:
  %t2494 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t2495 = load %nyx_string*, %nyx_string** %t2479
  %t2496 = ptrtoint %nyx_string* %t2495 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2494, i64 %t2496, i64 2)
  br label %merge618
else617:
  br label %merge618
merge618:
  %t2497 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t2498 = load %nyx_string*, %nyx_string** %t2433
  %t2499 = call i64 @set_borrow({ i64, i8* }* %t2497, %nyx_string* %t2498, i64 2)
  br label %merge609
else608:
  br label %merge609
merge609:
  ret i64 0
else605:
  br label %merge606
merge606:
  %t2500 = load %nyx_string*, %nyx_string** %t885
  %t2501 = getelementptr [6 x i8], [6 x i8]* @.str185, i32 0, i32 0
  %t2502 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str185.c, i8* %t2501, i64 5)
  %t2503 = call i1 @nyx_string_equals(%nyx_string* %t2500, %nyx_string* %t2502)
  br i1 %t2503, label %then622, label %else623
then622:
  %t2504 = load %ASTNode, %ASTNode* %node.ptr
  %t2505 = call %ASTNode @bc_node_at(%ASTNode %t2504, i64 0)
  %t2506 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t2507 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t2508 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t2509 = call i64 @bc_walk(%ASTNode %t2505, { i64, i8* }* %t2506, { i64, i8* }* %t2507, { i64, i8* }* %t2508)
  ret i64 0
else623:
  br label %merge624
merge624:
  %t2510 = load %nyx_string*, %nyx_string** %t885
  %t2511 = getelementptr [13 x i8], [13 x i8]* @.str186, i32 0, i32 0
  %t2512 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str186.c, i8* %t2511, i64 12)
  %t2513 = call i1 @nyx_string_equals(%nyx_string* %t2510, %nyx_string* %t2512)
  br i1 %t2513, label %then625, label %else626
then625:
  %t2514 = load %ASTNode, %ASTNode* %node.ptr
  %t2515 = call %ASTNode @bc_node_at(%ASTNode %t2514, i64 0)
  store %ASTNode %t2515, %ASTNode* %t2516
  %t2517 = load %ASTNode, %ASTNode* %node.ptr
  %t2518 = call %ASTNode @bc_node_at(%ASTNode %t2517, i64 1)
  store %ASTNode %t2518, %ASTNode* %t2519
  %t2520 = load %ASTNode, %ASTNode* %t2516
  %t2521 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t2522 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t2523 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t2524 = call i64 @bc_walk(%ASTNode %t2520, { i64, i8* }* %t2521, { i64, i8* }* %t2522, { i64, i8* }* %t2523)
  %t2525 = load %ASTNode, %ASTNode* %t2519
  %t2526 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t2527 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t2528 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t2529 = call i64 @bc_walk(%ASTNode %t2525, { i64, i8* }* %t2526, { i64, i8* }* %t2527, { i64, i8* }* %t2528)
  %t2530 = load %ASTNode, %ASTNode* %t2516
  %t2531 = call %nyx_string* @place_of(%ASTNode %t2530)
  store %nyx_string* %t2531, %nyx_string** %t2532
  %t2533 = load %nyx_string*, %nyx_string** %t2532
  %t2534 = getelementptr [1 x i8], [1 x i8]* @.str187, i32 0, i32 0
  %t2535 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str187.c, i8* %t2534, i64 0)
  %t2536 = call i1 @nyx_string_equals(%nyx_string* %t2533, %nyx_string* %t2535)
  %t2537 = xor i1 %t2536, true
  br i1 %t2537, label %then628, label %else629
then628:
  %t2538 = load %nyx_string*, %nyx_string** %t2532
  %t2539 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t2540 = call i1 @bc_dest_outlives(%nyx_string* %t2538, { i64, i8* }* %t2539)
  br i1 %t2540, label %then631, label %else632
then631:
  %t2541 = load %ASTNode, %ASTNode* %t2519
  %t2542 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t2543 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t2544 = call %nyx_string* @bc_escaping_origin(%ASTNode %t2541, { i64, i8* }* %t2542, { i64, i8* }* %t2543)
  store %nyx_string* %t2544, %nyx_string** %t2545
  %t2546 = load %nyx_string*, %nyx_string** %t2545
  %t2547 = getelementptr [1 x i8], [1 x i8]* @.str188, i32 0, i32 0
  %t2548 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str188.c, i8* %t2547, i64 0)
  %t2549 = call i1 @nyx_string_equals(%nyx_string* %t2546, %nyx_string* %t2548)
  %t2550 = xor i1 %t2549, true
  br i1 %t2550, label %then634, label %else635
then634:
  %t2551 = load %nyx_string*, %nyx_string** %t2545
  %t2552 = call %nyx_string* @reforigin_name(%nyx_string* %t2551)
  store %nyx_string* %t2552, %nyx_string** %t2553
  %t2554 = load %nyx_string*, %nyx_string** %t2545
  %t2555 = call i1 @reforigin_is_soft(%nyx_string* %t2554)
  br i1 %t2555, label %then637, label %else638
then637:
  %t2556 = getelementptr [30 x i8], [30 x i8]* @.str189, i32 0, i32 0
  %t2557 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str189.c, i8* %t2556, i64 29)
  %t2558 = load %nyx_string*, %nyx_string** %t2553
  %t2559 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2557, %nyx_string* %t2558)
  %t2560 = getelementptr [38 x i8], [38 x i8]* @.str190, i32 0, i32 0
  %t2561 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str190.c, i8* %t2560, i64 37)
  %t2562 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2559, %nyx_string* %t2561)
  store %nyx_string* %t2562, %nyx_string** %t2563
  %t2564 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %t2565 = load i64, i64* %t2564
  %t2566 = icmp sgt i64 %t2565, 0
  br i1 %t2566, label %then640, label %else641
then640:
  %t2567 = load %nyx_string*, %nyx_string** %t2563
  %t2568 = getelementptr [8 x i8], [8 x i8]* @.str191, i32 0, i32 0
  %t2569 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str191.c, i8* %t2568, i64 7)
  %t2570 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2567, %nyx_string* %t2569)
  %t2571 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %t2572 = load i64, i64* %t2571
  %t2573 = call %nyx_string* @nyx_string_from_int(i64 %t2572)
  %t2574 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2570, %nyx_string* %t2573)
  %t2575 = getelementptr [2 x i8], [2 x i8]* @.str192, i32 0, i32 0
  %t2576 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str192.c, i8* %t2575, i64 1)
  %t2577 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2574, %nyx_string* %t2576)
  store %nyx_string* %t2577, %nyx_string** %t2563
  br label %merge642
else641:
  br label %merge642
merge642:
  %t2578 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t2579 = load %nyx_string*, %nyx_string** %t2563
  %t2580 = ptrtoint %nyx_string* %t2579 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2578, i64 %t2580, i64 2)
  br label %merge639
else638:
  %t2581 = getelementptr [30 x i8], [30 x i8]* @.str193, i32 0, i32 0
  %t2582 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str193.c, i8* %t2581, i64 29)
  %t2583 = load %nyx_string*, %nyx_string** %t2553
  %t2584 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2582, %nyx_string* %t2583)
  %t2585 = getelementptr [39 x i8], [39 x i8]* @.str194, i32 0, i32 0
  %t2586 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str194.c, i8* %t2585, i64 38)
  %t2587 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2584, %nyx_string* %t2586)
  store %nyx_string* %t2587, %nyx_string** %t2588
  %t2589 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %t2590 = load i64, i64* %t2589
  %t2591 = icmp sgt i64 %t2590, 0
  br i1 %t2591, label %then643, label %else644
then643:
  %t2592 = load %nyx_string*, %nyx_string** %t2588
  %t2593 = getelementptr [8 x i8], [8 x i8]* @.str195, i32 0, i32 0
  %t2594 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str195.c, i8* %t2593, i64 7)
  %t2595 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2592, %nyx_string* %t2594)
  %t2596 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %t2597 = load i64, i64* %t2596
  %t2598 = call %nyx_string* @nyx_string_from_int(i64 %t2597)
  %t2599 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2595, %nyx_string* %t2598)
  %t2600 = getelementptr [2 x i8], [2 x i8]* @.str196, i32 0, i32 0
  %t2601 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str196.c, i8* %t2600, i64 1)
  %t2602 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2599, %nyx_string* %t2601)
  store %nyx_string* %t2602, %nyx_string** %t2588
  br label %merge645
else644:
  br label %merge645
merge645:
  %t2603 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t2604 = load %nyx_string*, %nyx_string** %t2588
  %t2605 = ptrtoint %nyx_string* %t2604 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2603, i64 %t2605, i64 2)
  br label %merge639
merge639:
  br label %merge636
else635:
  br label %merge636
merge636:
  br label %merge633
else632:
  br label %merge633
merge633:
  br label %merge630
else629:
  br label %merge630
merge630:
  ret i64 0
else626:
  br label %merge627
merge627:
  %t2606 = load %nyx_string*, %nyx_string** %t885
  %t2607 = getelementptr [6 x i8], [6 x i8]* @.str197, i32 0, i32 0
  %t2608 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str197.c, i8* %t2607, i64 5)
  %t2609 = call i1 @nyx_string_equals(%nyx_string* %t2606, %nyx_string* %t2608)
  br i1 %t2609, label %then646, label %else647
then646:
  %t2610 = load %ASTNode, %ASTNode* %node.ptr
  %t2611 = call %ASTNode @bc_node_at(%ASTNode %t2610, i64 0)
  %t2612 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t2613 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t2614 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t2615 = call i64 @bc_walk(%ASTNode %t2611, { i64, i8* }* %t2612, { i64, i8* }* %t2613, { i64, i8* }* %t2614)
  ret i64 0
else647:
  br label %merge648
merge648:
  %t2616 = load %nyx_string*, %nyx_string** %t885
  %t2617 = getelementptr [10 x i8], [10 x i8]* @.str198, i32 0, i32 0
  %t2618 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str198.c, i8* %t2617, i64 9)
  %t2619 = call i1 @nyx_string_equals(%nyx_string* %t2616, %nyx_string* %t2618)
  br i1 %t2619, label %then649, label %else650
then649:
  %t2620 = load %ASTNode, %ASTNode* %node.ptr
  %t2621 = call %ASTNode @bc_node_at(%ASTNode %t2620, i64 0)
  %t2622 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t2623 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t2624 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t2625 = call i64 @bc_walk(%ASTNode %t2621, { i64, i8* }* %t2622, { i64, i8* }* %t2623, { i64, i8* }* %t2624)
  %t2626 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %t2627 = load { i64, i8* }*, { i64, i8* }** %t2626
  store { i64, i8* }* %t2627, { i64, i8* }** %t2628
  %t2629 = load { i64, i8* }*, { i64, i8* }** %t2628
  %t2630 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2629, i64 1, i64 2)
  %t2631 = inttoptr i64 %t2630 to %nyx_string*
  store %nyx_string* %t2631, %nyx_string** %t2632
  %t2633 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t2634 = load %nyx_string*, %nyx_string** %t2632
  %t2635 = call i64 @tm_add_local({ i64, i8* }* %t2633, %nyx_string* %t2634)
  %t2636 = load %ASTNode, %ASTNode* %node.ptr
  %t2637 = call %ASTNode @bc_node_at(%ASTNode %t2636, i64 2)
  %t2638 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t2639 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t2640 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t2641 = call i64 @bc_walk(%ASTNode %t2637, { i64, i8* }* %t2638, { i64, i8* }* %t2639, { i64, i8* }* %t2640)
  ret i64 0
else650:
  br label %merge651
merge651:
  %t2642 = load %nyx_string*, %nyx_string** %t885
  %t2643 = getelementptr [6 x i8], [6 x i8]* @.str199, i32 0, i32 0
  %t2644 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str199.c, i8* %t2643, i64 5)
  %t2645 = call i1 @nyx_string_equals(%nyx_string* %t2642, %nyx_string* %t2644)
  br i1 %t2645, label %then652, label %else653
then652:
  %t2646 = load %ASTNode, %ASTNode* %node.ptr
  %t2647 = call %ASTNode @bc_node_at(%ASTNode %t2646, i64 0)
  %t2648 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t2649 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t2650 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t2651 = call i64 @bc_walk(%ASTNode %t2647, { i64, i8* }* %t2648, { i64, i8* }* %t2649, { i64, i8* }* %t2650)
  ret i64 0
else653:
  br label %merge654
merge654:
  %t2652 = load %nyx_string*, %nyx_string** %t885
  %t2653 = getelementptr [22 x i8], [22 x i8]* @.str200, i32 0, i32 0
  %t2654 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str200.c, i8* %t2653, i64 21)
  %t2655 = call i1 @nyx_string_equals(%nyx_string* %t2652, %nyx_string* %t2654)
  br i1 %t2655, label %then655, label %else656
then655:
  %t2656 = load %ASTNode, %ASTNode* %node.ptr
  %t2657 = call %ASTNode @bc_node_at(%ASTNode %t2656, i64 2)
  %t2658 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t2659 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t2660 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t2661 = call i64 @bc_walk(%ASTNode %t2657, { i64, i8* }* %t2658, { i64, i8* }* %t2659, { i64, i8* }* %t2660)
  %t2662 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %t2663 = load { i64, i8* }*, { i64, i8* }** %t2662
  store { i64, i8* }* %t2663, { i64, i8* }** %t2664
  %t2665 = load { i64, i8* }*, { i64, i8* }** %t2664
  %t2666 = call i64 @nyx_array_get({ i64, i8* }* %t2665, i64 0)
  %t2667 = inttoptr i64 %t2666 to { i64, i8* }*
  store { i64, i8* }* %t2667, { i64, i8* }** %t2668
  store i64 0, i64* %t2669
  br label %while_cond658
while_cond658:
  %t2670 = load i64, i64* %t2669
  %t2671 = load { i64, i8* }*, { i64, i8* }** %t2668
  %t2672 = call i64 @nyx_array_length({ i64, i8* }* %t2671)
  %t2673 = icmp slt i64 %t2670, %t2672
  br i1 %t2673, label %while_body659, label %while_end660
while_body659:
  %t2674 = load { i64, i8* }*, { i64, i8* }** %t2668
  %t2675 = load i64, i64* %t2669
  %t2676 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2674, i64 %t2675, i64 2)
  %t2677 = inttoptr i64 %t2676 to %nyx_string*
  store %nyx_string* %t2677, %nyx_string** %t2678
  %t2679 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t2680 = load %nyx_string*, %nyx_string** %t2678
  %t2681 = call i64 @tm_add_local({ i64, i8* }* %t2679, %nyx_string* %t2680)
  %t2682 = load i64, i64* %t2669
  %t2683 = add i64 %t2682, 1
  store i64 %t2683, i64* %t2669
  br label %while_cond658
while_end660:
  ret i64 0
else656:
  br label %merge657
merge657:
  %t2684 = load %nyx_string*, %nyx_string** %t885
  %t2685 = getelementptr [10 x i8], [10 x i8]* @.str201, i32 0, i32 0
  %t2686 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str201.c, i8* %t2685, i64 9)
  %t2687 = call i1 @nyx_string_equals(%nyx_string* %t2684, %nyx_string* %t2686)
  br i1 %t2687, label %then661, label %else662
then661:
  %t2688 = load %ASTNode, %ASTNode* %node.ptr
  %t2689 = call %ASTNode @bc_node_at(%ASTNode %t2688, i64 1)
  %t2690 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t2691 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t2692 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t2693 = call i64 @bc_walk(%ASTNode %t2689, { i64, i8* }* %t2690, { i64, i8* }* %t2691, { i64, i8* }* %t2692)
  ret i64 0
else662:
  br label %merge663
merge663:
  %t2694 = load %nyx_string*, %nyx_string** %t885
  %t2695 = getelementptr [7 x i8], [7 x i8]* @.str202, i32 0, i32 0
  %t2696 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str202.c, i8* %t2695, i64 6)
  %t2697 = call i1 @nyx_string_equals(%nyx_string* %t2694, %nyx_string* %t2696)
  br i1 %t2697, label %then664, label %else665
then664:
  %t2698 = load %ASTNode, %ASTNode* %node.ptr
  %t2699 = call %ASTNode @bc_node_at(%ASTNode %t2698, i64 0)
  %t2700 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t2701 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t2702 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %t2703 = call i64 @bc_walk(%ASTNode %t2699, { i64, i8* }* %t2700, { i64, i8* }* %t2701, { i64, i8* }* %t2702)
  ret i64 0
else665:
  br label %merge666
merge666:
  ret i64 0
}

define internal i64 @bc_register_params(
%ASTNode %fn_node.param, { i64, i8* }* %tmap.param) {
  %fn_node.ptr = alloca %ASTNode
  %tmap.ptr = alloca { i64, i8* }*
  %t2706 = alloca { i64, i8* }*
  %t2707 = alloca i64
  %t2710 = alloca %nyx_string*
  %t2713 = alloca %nyx_string*
  %t2716 = alloca %nyx_string*
  %t2719 = alloca %nyx_string*
  %t2728 = alloca { i64, i8* }*
  %t2735 = alloca %nyx_string*
  %t2739 = alloca %nyx_string*
  %t2758 = alloca %nyx_string*
  %t2759 = alloca i1
  store %ASTNode %fn_node.param, %ASTNode* %fn_node.ptr
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %t2704 = load %ASTNode, %ASTNode* %fn_node.ptr
  %t2705 = call { i64, i8* }* @bc_array_at(%ASTNode %t2704, i64 1)
  store { i64, i8* }* %t2705, { i64, i8* }** %t2706
  store i64 0, i64* %t2707
  %t2708 = getelementptr [5 x i8], [5 x i8]* @.str203, i32 0, i32 0
  %t2709 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str203.c, i8* %t2708, i64 4)
  store %nyx_string* %t2709, %nyx_string** %t2710
  %t2711 = getelementptr [2 x i8], [2 x i8]* @.str204, i32 0, i32 0
  %t2712 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str204.c, i8* %t2711, i64 1)
  store %nyx_string* %t2712, %nyx_string** %t2713
  %t2714 = getelementptr [2 x i8], [2 x i8]* @.str205, i32 0, i32 0
  %t2715 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str205.c, i8* %t2714, i64 1)
  store %nyx_string* %t2715, %nyx_string** %t2716
  %t2717 = getelementptr [5 x i8], [5 x i8]* @.str206, i32 0, i32 0
  %t2718 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str206.c, i8* %t2717, i64 4)
  store %nyx_string* %t2718, %nyx_string** %t2719
  br label %while_cond667
while_cond667:
  %t2720 = load i64, i64* %t2707
  %t2721 = load { i64, i8* }*, { i64, i8* }** %t2706
  %t2722 = call i64 @nyx_array_length({ i64, i8* }* %t2721)
  %t2723 = icmp slt i64 %t2720, %t2722
  br i1 %t2723, label %while_body668, label %while_end669
while_body668:
  %t2724 = load { i64, i8* }*, { i64, i8* }** %t2706
  %t2725 = load i64, i64* %t2707
  %t2726 = call i64 @nyx_array_get({ i64, i8* }* %t2724, i64 %t2725)
  %t2727 = inttoptr i64 %t2726 to { i64, i8* }*
  store { i64, i8* }* %t2727, { i64, i8* }** %t2728
  %t2729 = load { i64, i8* }*, { i64, i8* }** %t2728
  %t2730 = call i64 @nyx_array_length({ i64, i8* }* %t2729)
  %t2731 = icmp sge i64 %t2730, 2
  br i1 %t2731, label %then670, label %else671
then670:
  %t2732 = load { i64, i8* }*, { i64, i8* }** %t2728
  %t2733 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2732, i64 0, i64 2)
  %t2734 = inttoptr i64 %t2733 to %nyx_string*
  store %nyx_string* %t2734, %nyx_string** %t2735
  %t2736 = load { i64, i8* }*, { i64, i8* }** %t2728
  %t2737 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2736, i64 1, i64 2)
  %t2738 = inttoptr i64 %t2737 to %nyx_string*
  store %nyx_string* %t2738, %nyx_string** %t2739
  %t2740 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t2741 = load %nyx_string*, %nyx_string** %t2735
  %t2742 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t2743 = load %nyx_string*, %nyx_string** %t2739
  %t2744 = call i64 @move_kind_of({ i64, i8* }* %t2742, %nyx_string* %t2743)
  %t2745 = call i64 @tm_put({ i64, i8* }* %t2740, %nyx_string* %t2741, i64 %t2744)
  %t2746 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t2747 = load %nyx_string*, %nyx_string** %t2735
  %t2748 = call i64 @tm_add_local({ i64, i8* }* %t2746, %nyx_string* %t2747)
  %t2749 = load %nyx_string*, %nyx_string** %t2735
  %t2750 = load %nyx_string*, %nyx_string** %t2710
  %t2751 = call i1 @nyx_string_equals(%nyx_string* %t2749, %nyx_string* %t2750)
  %t2752 = xor i1 %t2751, true
  br i1 %t2752, label %then673, label %else674
then673:
  %t2753 = load %nyx_string*, %nyx_string** %t2739
  %t2754 = call i64 @nyx_string_byte_length(%nyx_string* %t2753)
  %t2755 = icmp sgt i64 %t2754, 0
  br i1 %t2755, label %then676, label %else677
then676:
  %t2756 = load %nyx_string*, %nyx_string** %t2739
  %t2757 = call %nyx_string* @nyx_string_substring(%nyx_string* %t2756, i64 0, i64 1)
  store %nyx_string* %t2757, %nyx_string** %t2758
  store i1 true, i1* %t2759
  %t2760 = load %nyx_string*, %nyx_string** %t2758
  %t2761 = load %nyx_string*, %nyx_string** %t2713
  %t2762 = call i1 @nyx_string_equals(%nyx_string* %t2760, %nyx_string* %t2761)
  br i1 %t2762, label %sc_or_end680, label %sc_or_rhs679
sc_or_rhs679:
  %t2763 = load %nyx_string*, %nyx_string** %t2758
  %t2764 = load %nyx_string*, %nyx_string** %t2716
  %t2765 = call i1 @nyx_string_equals(%nyx_string* %t2763, %nyx_string* %t2764)
  store i1 %t2765, i1* %t2759
  br label %sc_or_end680
sc_or_end680:
  %t2766 = load i1, i1* %t2759
  br i1 %t2766, label %then681, label %else682
then681:
  %t2767 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t2768 = load %nyx_string*, %nyx_string** %t2735
  %t2769 = call i64 @tm_add_ptr_param({ i64, i8* }* %t2767, %nyx_string* %t2768)
  br label %merge683
else682:
  br label %merge683
merge683:
  br label %merge678
else677:
  br label %merge678
merge678:
  br label %merge675
else674:
  %t2770 = load %nyx_string*, %nyx_string** %t2739
  %t2771 = load %nyx_string*, %nyx_string** %t2719
  %t2772 = call i1 @nyx_string_equals(%nyx_string* %t2770, %nyx_string* %t2771)
  br i1 %t2772, label %then684, label %else685
then684:
  %t2773 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %t2774 = load %nyx_string*, %nyx_string** %t2735
  %t2775 = call i64 @tm_add_ptr_param({ i64, i8* }* %t2773, %nyx_string* %t2774)
  br label %merge686
else685:
  br label %merge686
merge686:
  br label %merge675
merge675:
  br label %merge672
else671:
  br label %merge672
merge672:
  %t2776 = load i64, i64* %t2707
  %t2777 = add i64 %t2776, 1
  store i64 %t2777, i64* %t2707
  br label %while_cond667
while_end669:
  ret i64 0
}

define internal i1 @diag_is_gating(
%nyx_string* %d.param) {
  %d.ptr = alloca %nyx_string*
  %t2783 = alloca %nyx_string*
  store %nyx_string* %d.param, %nyx_string** %d.ptr
  %t2778 = load %nyx_string*, %nyx_string** %d.ptr
  %t2779 = call i64 @nyx_string_byte_length(%nyx_string* %t2778)
  %t2780 = icmp slt i64 %t2779, 7
  br i1 %t2780, label %then687, label %else688
then687:
  ret i1 0
else688:
  br label %merge689
merge689:
  %t2781 = load %nyx_string*, %nyx_string** %d.ptr
  %t2782 = call %nyx_string* @nyx_string_substring(%nyx_string* %t2781, i64 0, i64 7)
  store %nyx_string* %t2782, %nyx_string** %t2783
  %t2784 = load %nyx_string*, %nyx_string** %t2783
  %t2785 = getelementptr [8 x i8], [8 x i8]* @.str207, i32 0, i32 0
  %t2786 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str207.c, i8* %t2785, i64 7)
  %t2787 = call i1 @nyx_string_equals(%nyx_string* %t2784, %nyx_string* %t2786)
  br i1 %t2787, label %then690, label %else691
then690:
  ret i1 1
else691:
  br label %merge692
merge692:
  %t2788 = load %nyx_string*, %nyx_string** %t2783
  %t2789 = getelementptr [8 x i8], [8 x i8]* @.str208, i32 0, i32 0
  %t2790 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str208.c, i8* %t2789, i64 7)
  %t2791 = call i1 @nyx_string_equals(%nyx_string* %t2788, %nyx_string* %t2790)
  br i1 %t2791, label %then693, label %else694
then693:
  ret i1 1
else694:
  br label %merge695
merge695:
  %t2792 = load %nyx_string*, %nyx_string** %t2783
  %t2793 = getelementptr [8 x i8], [8 x i8]* @.str209, i32 0, i32 0
  %t2794 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str209.c, i8* %t2793, i64 7)
  %t2795 = call i1 @nyx_string_equals(%nyx_string* %t2792, %nyx_string* %t2794)
  br i1 %t2795, label %then696, label %else697
then696:
  ret i1 1
else697:
  br label %merge698
merge698:
  %t2796 = load %nyx_string*, %nyx_string** %t2783
  %t2797 = getelementptr [8 x i8], [8 x i8]* @.str210, i32 0, i32 0
  %t2798 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str210.c, i8* %t2797, i64 7)
  %t2799 = call i1 @nyx_string_equals(%nyx_string* %t2796, %nyx_string* %t2798)
  br i1 %t2799, label %then699, label %else700
then699:
  ret i1 1
else700:
  br label %merge701
merge701:
  ret i1 0
}

define internal { i64, i8* }* @collect_affine_types(
%ASTNode %root.param) {
  %root.ptr = alloca %ASTNode
  %t2801 = alloca { i64, i8* }*
  %t2804 = alloca { i64, i8* }*
  %t2805 = alloca i64
  %t2808 = alloca %nyx_string*
  %t2811 = alloca %nyx_string*
  %t2814 = alloca %nyx_string*
  %t2817 = alloca %nyx_string*
  %t2832 = alloca %ASTNode
  %t2838 = alloca %ASTNode
  %t2840 = alloca %ASTNode
  %t2849 = alloca %nyx_string*
  %t2850 = alloca i1
  %t2860 = alloca { i64, i8* }*
  %t2867 = alloca %nyx_string*
  %t2874 = alloca %nyx_string*
  store %ASTNode %root.param, %ASTNode* %root.ptr
  %t2800 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t2800, { i64, i8* }** %t2801
  %t2802 = load %ASTNode, %ASTNode* %root.ptr
  %t2803 = call { i64, i8* }* @bc_array_at(%ASTNode %t2802, i64 0)
  store { i64, i8* }* %t2803, { i64, i8* }** %t2804
  store i64 0, i64* %t2805
  %t2806 = getelementptr [7 x i8], [7 x i8]* @.str211, i32 0, i32 0
  %t2807 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str211.c, i8* %t2806, i64 6)
  store %nyx_string* %t2807, %nyx_string** %t2808
  %t2809 = getelementptr [7 x i8], [7 x i8]* @.str212, i32 0, i32 0
  %t2810 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str212.c, i8* %t2809, i64 6)
  store %nyx_string* %t2810, %nyx_string** %t2811
  %t2812 = getelementptr [5 x i8], [5 x i8]* @.str213, i32 0, i32 0
  %t2813 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str213.c, i8* %t2812, i64 4)
  store %nyx_string* %t2813, %nyx_string** %t2814
  %t2815 = getelementptr [7 x i8], [7 x i8]* @.str214, i32 0, i32 0
  %t2816 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str214.c, i8* %t2815, i64 6)
  store %nyx_string* %t2816, %nyx_string** %t2817
  br label %while_cond702
while_cond702:
  %t2818 = load i64, i64* %t2805
  %t2819 = load { i64, i8* }*, { i64, i8* }** %t2804
  %t2820 = call i64 @nyx_array_length({ i64, i8* }* %t2819)
  %t2821 = icmp slt i64 %t2818, %t2820
  br i1 %t2821, label %while_body703, label %while_end704
while_body703:
  %t2822 = load { i64, i8* }*, { i64, i8* }** %t2804
  %t2823 = load i64, i64* %t2805
  %t2824 = call i64 @nyx_array_get({ i64, i8* }* %t2822, i64 %t2823)
  %t2825 = inttoptr i64 %t2824 to { i64, i8* }*
  %t2826 = call i64 @nyx_array_get({ i64, i8* }* %t2825, i64 0)
  %t2827 = call i64 @nyx_array_get({ i64, i8* }* %t2825, i64 1)
  %t2828 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t2825, i64 2)
  %t2829 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t2825, i64 3)
  %t2830 = inttoptr i64 %t2826 to %nyx_string*
  %t2831 = inttoptr i64 %t2827 to { i64, i8* }*
  %t2833 = getelementptr inbounds %ASTNode, %ASTNode* %t2832, i32 0, i32 0
  store %nyx_string* %t2830, %nyx_string** %t2833
  %t2834 = getelementptr inbounds %ASTNode, %ASTNode* %t2832, i32 0, i32 1
  store { i64, i8* }* %t2831, { i64, i8* }** %t2834
  %t2835 = getelementptr inbounds %ASTNode, %ASTNode* %t2832, i32 0, i32 2
  store i64 %t2828, i64* %t2835
  %t2836 = getelementptr inbounds %ASTNode, %ASTNode* %t2832, i32 0, i32 3
  store i64 %t2829, i64* %t2836
  %t2837 = load %ASTNode, %ASTNode* %t2832
  store %ASTNode %t2837, %ASTNode* %t2838
  %t2839 = load %ASTNode, %ASTNode* %t2838
  store %ASTNode %t2839, %ASTNode* %t2840
  %t2841 = getelementptr %ASTNode, %ASTNode* %t2838, i32 0, i32 0
  %t2842 = load %nyx_string*, %nyx_string** %t2841
  %t2843 = load %nyx_string*, %nyx_string** %t2808
  %t2844 = call i1 @nyx_string_equals(%nyx_string* %t2842, %nyx_string* %t2843)
  br i1 %t2844, label %then705, label %else706
then705:
  %t2845 = load %ASTNode, %ASTNode* %t2838
  %t2846 = call %ASTNode @bc_node_at(%ASTNode %t2845, i64 0)
  store %ASTNode %t2846, %ASTNode* %t2840
  br label %merge707
else706:
  br label %merge707
merge707:
  %t2847 = getelementptr %ASTNode, %ASTNode* %t2840, i32 0, i32 0
  %t2848 = load %nyx_string*, %nyx_string** %t2847
  store %nyx_string* %t2848, %nyx_string** %t2849
  store i1 true, i1* %t2850
  %t2851 = load %nyx_string*, %nyx_string** %t2849
  %t2852 = load %nyx_string*, %nyx_string** %t2811
  %t2853 = call i1 @nyx_string_equals(%nyx_string* %t2851, %nyx_string* %t2852)
  br i1 %t2853, label %sc_or_end709, label %sc_or_rhs708
sc_or_rhs708:
  %t2854 = load %nyx_string*, %nyx_string** %t2849
  %t2855 = load %nyx_string*, %nyx_string** %t2814
  %t2856 = call i1 @nyx_string_equals(%nyx_string* %t2854, %nyx_string* %t2855)
  store i1 %t2856, i1* %t2850
  br label %sc_or_end709
sc_or_end709:
  %t2857 = load i1, i1* %t2850
  br i1 %t2857, label %then710, label %else711
then710:
  %t2858 = getelementptr %ASTNode, %ASTNode* %t2840, i32 0, i32 1
  %t2859 = load { i64, i8* }*, { i64, i8* }** %t2858
  store { i64, i8* }* %t2859, { i64, i8* }** %t2860
  %t2861 = load { i64, i8* }*, { i64, i8* }** %t2860
  %t2862 = call i64 @nyx_array_length({ i64, i8* }* %t2861)
  %t2863 = icmp sgt i64 %t2862, 3
  br i1 %t2863, label %then713, label %else714
then713:
  %t2864 = load { i64, i8* }*, { i64, i8* }** %t2860
  %t2865 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2864, i64 3, i64 2)
  %t2866 = inttoptr i64 %t2865 to %nyx_string*
  store %nyx_string* %t2866, %nyx_string** %t2867
  %t2868 = load %nyx_string*, %nyx_string** %t2867
  %t2869 = load %nyx_string*, %nyx_string** %t2817
  %t2870 = call i1 @nyx_string_equals(%nyx_string* %t2868, %nyx_string* %t2869)
  br i1 %t2870, label %then716, label %else717
then716:
  %t2871 = load { i64, i8* }*, { i64, i8* }** %t2860
  %t2872 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2871, i64 0, i64 2)
  %t2873 = inttoptr i64 %t2872 to %nyx_string*
  store %nyx_string* %t2873, %nyx_string** %t2874
  %t2875 = load { i64, i8* }*, { i64, i8* }** %t2801
  %t2876 = load %nyx_string*, %nyx_string** %t2874
  %t2877 = ptrtoint %nyx_string* %t2876 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2875, i64 %t2877, i64 2)
  br label %merge718
else717:
  br label %merge718
merge718:
  br label %merge715
else714:
  br label %merge715
merge715:
  br label %merge712
else711:
  br label %merge712
merge712:
  %t2878 = load i64, i64* %t2805
  %t2879 = add i64 %t2878, 1
  store i64 %t2879, i64* %t2805
  br label %while_cond702
while_end704:
  %t2880 = load { i64, i8* }*, { i64, i8* }** %t2801
  ret { i64, i8* }* %t2880
}

define internal { i64, i8* }* @struct_lt_build(
%ASTNode %root.param) {
  %root.ptr = alloca %ASTNode
  %t2882 = alloca { i64, i8* }*
  %t2885 = alloca { i64, i8* }*
  %t2886 = alloca i64
  %t2889 = alloca %nyx_string*
  %t2892 = alloca %nyx_string*
  %t2895 = alloca %nyx_string*
  %t2910 = alloca %ASTNode
  %t2916 = alloca %ASTNode
  %t2929 = alloca { i64, i8* }*
  %t2936 = alloca { i64, i8* }*
  %t2937 = alloca i1
  %t2938 = alloca i64
  %t2947 = alloca %nyx_string*
  store %ASTNode %root.param, %ASTNode* %root.ptr
  %t2881 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t2881, { i64, i8* }** %t2882
  %t2883 = load %ASTNode, %ASTNode* %root.ptr
  %t2884 = call { i64, i8* }* @bc_array_at(%ASTNode %t2883, i64 0)
  store { i64, i8* }* %t2884, { i64, i8* }** %t2885
  store i64 0, i64* %t2886
  %t2887 = getelementptr [7 x i8], [7 x i8]* @.str215, i32 0, i32 0
  %t2888 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str215.c, i8* %t2887, i64 6)
  store %nyx_string* %t2888, %nyx_string** %t2889
  %t2890 = getelementptr [7 x i8], [7 x i8]* @.str216, i32 0, i32 0
  %t2891 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str216.c, i8* %t2890, i64 6)
  store %nyx_string* %t2891, %nyx_string** %t2892
  %t2893 = getelementptr [2 x i8], [2 x i8]* @.str217, i32 0, i32 0
  %t2894 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str217.c, i8* %t2893, i64 1)
  store %nyx_string* %t2894, %nyx_string** %t2895
  br label %while_cond719
while_cond719:
  %t2896 = load i64, i64* %t2886
  %t2897 = load { i64, i8* }*, { i64, i8* }** %t2885
  %t2898 = call i64 @nyx_array_length({ i64, i8* }* %t2897)
  %t2899 = icmp slt i64 %t2896, %t2898
  br i1 %t2899, label %while_body720, label %while_end721
while_body720:
  %t2900 = load { i64, i8* }*, { i64, i8* }** %t2885
  %t2901 = load i64, i64* %t2886
  %t2902 = call i64 @nyx_array_get({ i64, i8* }* %t2900, i64 %t2901)
  %t2903 = inttoptr i64 %t2902 to { i64, i8* }*
  %t2904 = call i64 @nyx_array_get({ i64, i8* }* %t2903, i64 0)
  %t2905 = call i64 @nyx_array_get({ i64, i8* }* %t2903, i64 1)
  %t2906 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t2903, i64 2)
  %t2907 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t2903, i64 3)
  %t2908 = inttoptr i64 %t2904 to %nyx_string*
  %t2909 = inttoptr i64 %t2905 to { i64, i8* }*
  %t2911 = getelementptr inbounds %ASTNode, %ASTNode* %t2910, i32 0, i32 0
  store %nyx_string* %t2908, %nyx_string** %t2911
  %t2912 = getelementptr inbounds %ASTNode, %ASTNode* %t2910, i32 0, i32 1
  store { i64, i8* }* %t2909, { i64, i8* }** %t2912
  %t2913 = getelementptr inbounds %ASTNode, %ASTNode* %t2910, i32 0, i32 2
  store i64 %t2906, i64* %t2913
  %t2914 = getelementptr inbounds %ASTNode, %ASTNode* %t2910, i32 0, i32 3
  store i64 %t2907, i64* %t2914
  %t2915 = load %ASTNode, %ASTNode* %t2910
  store %ASTNode %t2915, %ASTNode* %t2916
  %t2917 = getelementptr %ASTNode, %ASTNode* %t2916, i32 0, i32 0
  %t2918 = load %nyx_string*, %nyx_string** %t2917
  %t2919 = load %nyx_string*, %nyx_string** %t2889
  %t2920 = call i1 @nyx_string_equals(%nyx_string* %t2918, %nyx_string* %t2919)
  br i1 %t2920, label %then722, label %else723
then722:
  %t2921 = load %ASTNode, %ASTNode* %t2916
  %t2922 = call %ASTNode @bc_node_at(%ASTNode %t2921, i64 0)
  store %ASTNode %t2922, %ASTNode* %t2916
  br label %merge724
else723:
  br label %merge724
merge724:
  %t2923 = getelementptr %ASTNode, %ASTNode* %t2916, i32 0, i32 0
  %t2924 = load %nyx_string*, %nyx_string** %t2923
  %t2925 = load %nyx_string*, %nyx_string** %t2892
  %t2926 = call i1 @nyx_string_equals(%nyx_string* %t2924, %nyx_string* %t2925)
  br i1 %t2926, label %then725, label %else726
then725:
  %t2927 = getelementptr %ASTNode, %ASTNode* %t2916, i32 0, i32 1
  %t2928 = load { i64, i8* }*, { i64, i8* }** %t2927
  store { i64, i8* }* %t2928, { i64, i8* }** %t2929
  %t2930 = load { i64, i8* }*, { i64, i8* }** %t2929
  %t2931 = call i64 @nyx_array_length({ i64, i8* }* %t2930)
  %t2932 = icmp sge i64 %t2931, 3
  br i1 %t2932, label %then728, label %else729
then728:
  %t2933 = load { i64, i8* }*, { i64, i8* }** %t2929
  %t2934 = call i64 @nyx_array_get({ i64, i8* }* %t2933, i64 2)
  %t2935 = inttoptr i64 %t2934 to { i64, i8* }*
  store { i64, i8* }* %t2935, { i64, i8* }** %t2936
  store i1 0, i1* %t2937
  store i64 0, i64* %t2938
  br label %while_cond731
while_cond731:
  %t2939 = load i64, i64* %t2938
  %t2940 = load { i64, i8* }*, { i64, i8* }** %t2936
  %t2941 = call i64 @nyx_array_length({ i64, i8* }* %t2940)
  %t2942 = icmp slt i64 %t2939, %t2941
  br i1 %t2942, label %while_body732, label %while_end733
while_body732:
  %t2943 = load { i64, i8* }*, { i64, i8* }** %t2936
  %t2944 = load i64, i64* %t2938
  %t2945 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2943, i64 %t2944, i64 2)
  %t2946 = inttoptr i64 %t2945 to %nyx_string*
  store %nyx_string* %t2946, %nyx_string** %t2947
  %t2948 = load %nyx_string*, %nyx_string** %t2947
  %t2949 = call i64 @nyx_string_byte_length(%nyx_string* %t2948)
  %t2950 = icmp sgt i64 %t2949, 0
  br i1 %t2950, label %then734, label %else735
then734:
  %t2951 = load %nyx_string*, %nyx_string** %t2947
  %t2952 = call %nyx_string* @nyx_string_substring(%nyx_string* %t2951, i64 0, i64 1)
  %t2953 = load %nyx_string*, %nyx_string** %t2895
  %t2954 = call i1 @nyx_string_equals(%nyx_string* %t2952, %nyx_string* %t2953)
  br i1 %t2954, label %then737, label %else738
then737:
  store i1 1, i1* %t2937
  br label %merge739
else738:
  br label %merge739
merge739:
  br label %merge736
else735:
  br label %merge736
merge736:
  %t2955 = load i64, i64* %t2938
  %t2956 = add i64 %t2955, 1
  store i64 %t2956, i64* %t2938
  br label %while_cond731
while_end733:
  %t2957 = load i1, i1* %t2937
  br i1 %t2957, label %then740, label %else741
then740:
  %t2958 = load { i64, i8* }*, { i64, i8* }** %t2882
  %t2959 = load { i64, i8* }*, { i64, i8* }** %t2929
  %t2960 = call i64 @nyx_array_get({ i64, i8* }* %t2959, i64 0)
  %t2961 = load { i64, i8* }*, { i64, i8* }** %t2929
  %t2962 = call i64 @nyx_array_get_tag({ i64, i8* }* %t2961, i64 0)
  call void @nyx_array_push_tagged({ i64, i8* }* %t2958, i64 %t2960, i64 %t2962)
  br label %merge742
else741:
  br label %merge742
merge742:
  br label %merge730
else729:
  br label %merge730
merge730:
  br label %merge727
else726:
  br label %merge727
merge727:
  %t2963 = load i64, i64* %t2886
  %t2964 = add i64 %t2963, 1
  store i64 %t2964, i64* %t2886
  br label %while_cond719
while_end721:
  %t2965 = load { i64, i8* }*, { i64, i8* }** %t2882
  ret { i64, i8* }* %t2965
}

define internal { i64, i8* }* @extract_lifetimes(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  %t2967 = alloca { i64, i8* }*
  %t2968 = alloca i64
  %t2971 = alloca %nyx_string*
  %t2974 = alloca %nyx_string*
  %t2977 = alloca %nyx_string*
  %t2980 = alloca %nyx_string*
  %t2983 = alloca %nyx_string*
  %t2993 = alloca %nyx_string*
  %t2999 = alloca i64
  %t3000 = alloca i1
  %t3011 = alloca %nyx_string*
  %t3012 = alloca i1
  %t3013 = alloca i1
  %t3014 = alloca i1
  %t3037 = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %t2966 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t2966, { i64, i8* }** %t2967
  store i64 0, i64* %t2968
  %t2969 = getelementptr [2 x i8], [2 x i8]* @.str218, i32 0, i32 0
  %t2970 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str218.c, i8* %t2969, i64 1)
  store %nyx_string* %t2970, %nyx_string** %t2971
  %t2972 = getelementptr [2 x i8], [2 x i8]* @.str219, i32 0, i32 0
  %t2973 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str219.c, i8* %t2972, i64 1)
  store %nyx_string* %t2973, %nyx_string** %t2974
  %t2975 = getelementptr [2 x i8], [2 x i8]* @.str220, i32 0, i32 0
  %t2976 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str220.c, i8* %t2975, i64 1)
  store %nyx_string* %t2976, %nyx_string** %t2977
  %t2978 = getelementptr [2 x i8], [2 x i8]* @.str221, i32 0, i32 0
  %t2979 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str221.c, i8* %t2978, i64 1)
  store %nyx_string* %t2979, %nyx_string** %t2980
  %t2981 = getelementptr [2 x i8], [2 x i8]* @.str222, i32 0, i32 0
  %t2982 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str222.c, i8* %t2981, i64 1)
  store %nyx_string* %t2982, %nyx_string** %t2983
  br label %while_cond743
while_cond743:
  %t2984 = load i64, i64* %t2968
  %t2985 = load %nyx_string*, %nyx_string** %s.ptr
  %t2986 = call i64 @nyx_string_byte_length(%nyx_string* %t2985)
  %t2987 = icmp slt i64 %t2984, %t2986
  br i1 %t2987, label %while_body744, label %while_end745
while_body744:
  %t2988 = load %nyx_string*, %nyx_string** %s.ptr
  %t2989 = load i64, i64* %t2968
  %t2990 = load i64, i64* %t2968
  %t2991 = add i64 %t2990, 1
  %t2992 = call %nyx_string* @nyx_string_substring(%nyx_string* %t2988, i64 %t2989, i64 %t2991)
  store %nyx_string* %t2992, %nyx_string** %t2993
  %t2994 = load %nyx_string*, %nyx_string** %t2993
  %t2995 = load %nyx_string*, %nyx_string** %t2971
  %t2996 = call i1 @nyx_string_equals(%nyx_string* %t2994, %nyx_string* %t2995)
  br i1 %t2996, label %then746, label %else747
then746:
  %t2997 = load i64, i64* %t2968
  %t2998 = add i64 %t2997, 1
  store i64 %t2998, i64* %t2999
  store i1 1, i1* %t3000
  br label %while_cond749
while_cond749:
  %t3001 = load i1, i1* %t3000
  br i1 %t3001, label %while_body750, label %while_end751
while_body750:
  %t3002 = load i64, i64* %t2999
  %t3003 = load %nyx_string*, %nyx_string** %s.ptr
  %t3004 = call i64 @nyx_string_byte_length(%nyx_string* %t3003)
  %t3005 = icmp sge i64 %t3002, %t3004
  br i1 %t3005, label %then752, label %else753
then752:
  store i1 0, i1* %t3000
  br label %merge754
else753:
  %t3006 = load %nyx_string*, %nyx_string** %s.ptr
  %t3007 = load i64, i64* %t2999
  %t3008 = load i64, i64* %t2999
  %t3009 = add i64 %t3008, 1
  %t3010 = call %nyx_string* @nyx_string_substring(%nyx_string* %t3006, i64 %t3007, i64 %t3009)
  store %nyx_string* %t3010, %nyx_string** %t3011
  store i1 true, i1* %t3012
  store i1 true, i1* %t3013
  store i1 true, i1* %t3014
  %t3015 = load %nyx_string*, %nyx_string** %t3011
  %t3016 = load %nyx_string*, %nyx_string** %t2974
  %t3017 = call i1 @nyx_string_equals(%nyx_string* %t3015, %nyx_string* %t3016)
  br i1 %t3017, label %sc_or_end756, label %sc_or_rhs755
sc_or_rhs755:
  %t3018 = load %nyx_string*, %nyx_string** %t3011
  %t3019 = load %nyx_string*, %nyx_string** %t2977
  %t3020 = call i1 @nyx_string_equals(%nyx_string* %t3018, %nyx_string* %t3019)
  store i1 %t3020, i1* %t3014
  br label %sc_or_end756
sc_or_end756:
  %t3021 = load i1, i1* %t3014
  br i1 %t3021, label %sc_or_end758, label %sc_or_rhs757
sc_or_rhs757:
  %t3022 = load %nyx_string*, %nyx_string** %t3011
  %t3023 = load %nyx_string*, %nyx_string** %t2980
  %t3024 = call i1 @nyx_string_equals(%nyx_string* %t3022, %nyx_string* %t3023)
  store i1 %t3024, i1* %t3013
  br label %sc_or_end758
sc_or_end758:
  %t3025 = load i1, i1* %t3013
  br i1 %t3025, label %sc_or_end760, label %sc_or_rhs759
sc_or_rhs759:
  %t3026 = load %nyx_string*, %nyx_string** %t3011
  %t3027 = load %nyx_string*, %nyx_string** %t2983
  %t3028 = call i1 @nyx_string_equals(%nyx_string* %t3026, %nyx_string* %t3027)
  store i1 %t3028, i1* %t3012
  br label %sc_or_end760
sc_or_end760:
  %t3029 = load i1, i1* %t3012
  br i1 %t3029, label %then761, label %else762
then761:
  store i1 0, i1* %t3000
  br label %merge763
else762:
  %t3030 = load i64, i64* %t2999
  %t3031 = add i64 %t3030, 1
  store i64 %t3031, i64* %t2999
  br label %merge763
merge763:
  br label %merge754
merge754:
  br label %while_cond749
while_end751:
  %t3032 = load %nyx_string*, %nyx_string** %s.ptr
  %t3033 = load i64, i64* %t2968
  %t3034 = add i64 %t3033, 1
  %t3035 = load i64, i64* %t2999
  %t3036 = call %nyx_string* @nyx_string_substring(%nyx_string* %t3032, i64 %t3034, i64 %t3035)
  store %nyx_string* %t3036, %nyx_string** %t3037
  %t3038 = load %nyx_string*, %nyx_string** %t3037
  %t3039 = call i64 @nyx_string_byte_length(%nyx_string* %t3038)
  %t3040 = icmp sgt i64 %t3039, 0
  br i1 %t3040, label %then764, label %else765
then764:
  %t3041 = load { i64, i8* }*, { i64, i8* }** %t2967
  %t3042 = load %nyx_string*, %nyx_string** %t3037
  %t3043 = ptrtoint %nyx_string* %t3042 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3041, i64 %t3043, i64 2)
  br label %merge766
else765:
  br label %merge766
merge766:
  %t3044 = load i64, i64* %t2999
  store i64 %t3044, i64* %t2968
  br label %merge748
else747:
  %t3045 = load i64, i64* %t2968
  %t3046 = add i64 %t3045, 1
  store i64 %t3046, i64* %t2968
  br label %merge748
merge748:
  br label %while_cond743
while_end745:
  %t3047 = load { i64, i8* }*, { i64, i8* }** %t2967
  ret { i64, i8* }* %t3047
}

define internal i1 @lt_set_contains(
{ i64, i8* }* %set.param, %nyx_string* %name.param) {
  %set.ptr = alloca { i64, i8* }*
  %name.ptr = alloca %nyx_string*
  %t3048 = alloca i64
  %t3057 = alloca %nyx_string*
  store { i64, i8* }* %set.param, { i64, i8* }** %set.ptr
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  store i64 0, i64* %t3048
  br label %while_cond767
while_cond767:
  %t3049 = load i64, i64* %t3048
  %t3050 = load { i64, i8* }*, { i64, i8* }** %set.ptr
  %t3051 = call i64 @nyx_array_length({ i64, i8* }* %t3050)
  %t3052 = icmp slt i64 %t3049, %t3051
  br i1 %t3052, label %while_body768, label %while_end769
while_body768:
  %t3053 = load { i64, i8* }*, { i64, i8* }** %set.ptr
  %t3054 = load i64, i64* %t3048
  %t3055 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3053, i64 %t3054, i64 2)
  %t3056 = inttoptr i64 %t3055 to %nyx_string*
  store %nyx_string* %t3056, %nyx_string** %t3057
  %t3058 = load %nyx_string*, %nyx_string** %t3057
  %t3059 = load %nyx_string*, %nyx_string** %name.ptr
  %t3060 = call i1 @nyx_string_equals(%nyx_string* %t3058, %nyx_string* %t3059)
  br i1 %t3060, label %then770, label %else771
then770:
  ret i1 1
else771:
  br label %merge772
merge772:
  %t3061 = load i64, i64* %t3048
  %t3062 = add i64 %t3061, 1
  store i64 %t3062, i64* %t3048
  br label %while_cond767
while_end769:
  ret i1 0
}

define internal i1 @ret_is_reflike(
%nyx_string* %ret_ty.param, { i64, i8* }* %struct_lt_set.param) {
  %ret_ty.ptr = alloca %nyx_string*
  %struct_lt_set.ptr = alloca { i64, i8* }*
  %t3072 = alloca %nyx_string*
  %t3077 = alloca i64
  %t3083 = alloca i64
  %t3092 = alloca %nyx_string*
  store %nyx_string* %ret_ty.param, %nyx_string** %ret_ty.ptr
  store { i64, i8* }* %struct_lt_set.param, { i64, i8* }** %struct_lt_set.ptr
  %t3063 = load %nyx_string*, %nyx_string** %ret_ty.ptr
  %t3064 = call i64 @nyx_string_byte_length(%nyx_string* %t3063)
  %t3065 = icmp eq i64 %t3064, 0
  br i1 %t3065, label %then773, label %else774
then773:
  ret i1 0
else774:
  br label %merge775
merge775:
  %t3066 = load %nyx_string*, %nyx_string** %ret_ty.ptr
  %t3067 = call %nyx_string* @nyx_string_substring(%nyx_string* %t3066, i64 0, i64 1)
  %t3068 = getelementptr [2 x i8], [2 x i8]* @.str223, i32 0, i32 0
  %t3069 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str223.c, i8* %t3068, i64 1)
  %t3070 = call i1 @nyx_string_equals(%nyx_string* %t3067, %nyx_string* %t3069)
  br i1 %t3070, label %then776, label %else777
then776:
  ret i1 1
else777:
  br label %merge778
merge778:
  %t3071 = load %nyx_string*, %nyx_string** %ret_ty.ptr
  store %nyx_string* %t3071, %nyx_string** %t3072
  %t3073 = load %nyx_string*, %nyx_string** %ret_ty.ptr
  %t3074 = getelementptr [2 x i8], [2 x i8]* @.str224, i32 0, i32 0
  %t3075 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str224.c, i8* %t3074, i64 1)
  %t3076 = call i64 @nyx_string_index_of(%nyx_string* %t3073, %nyx_string* %t3075)
  store i64 %t3076, i64* %t3077
  %t3078 = load i64, i64* %t3077
  %t3079 = icmp sge i64 %t3078, 0
  br i1 %t3079, label %then779, label %else780
then779:
  %t3080 = load %nyx_string*, %nyx_string** %ret_ty.ptr
  %t3081 = load i64, i64* %t3077
  %t3082 = call %nyx_string* @nyx_string_substring(%nyx_string* %t3080, i64 0, i64 %t3081)
  store %nyx_string* %t3082, %nyx_string** %t3072
  br label %merge781
else780:
  br label %merge781
merge781:
  store i64 0, i64* %t3083
  br label %while_cond782
while_cond782:
  %t3084 = load i64, i64* %t3083
  %t3085 = load { i64, i8* }*, { i64, i8* }** %struct_lt_set.ptr
  %t3086 = call i64 @nyx_array_length({ i64, i8* }* %t3085)
  %t3087 = icmp slt i64 %t3084, %t3086
  br i1 %t3087, label %while_body783, label %while_end784
while_body783:
  %t3088 = load { i64, i8* }*, { i64, i8* }** %struct_lt_set.ptr
  %t3089 = load i64, i64* %t3083
  %t3090 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3088, i64 %t3089, i64 2)
  %t3091 = inttoptr i64 %t3090 to %nyx_string*
  store %nyx_string* %t3091, %nyx_string** %t3092
  %t3093 = load %nyx_string*, %nyx_string** %t3092
  %t3094 = load %nyx_string*, %nyx_string** %t3072
  %t3095 = call i1 @nyx_string_equals(%nyx_string* %t3093, %nyx_string* %t3094)
  br i1 %t3095, label %then785, label %else786
then785:
  ret i1 1
else786:
  br label %merge787
merge787:
  %t3096 = load i64, i64* %t3083
  %t3097 = add i64 %t3096, 1
  store i64 %t3097, i64* %t3083
  br label %while_cond782
while_end784:
  ret i1 0
}

define internal i8* @sig_build(
%ASTNode %root.param, { i64, i8* }* %struct_lt_set.param) {
  %root.ptr = alloca %ASTNode
  %struct_lt_set.ptr = alloca { i64, i8* }*
  %t3099 = alloca i8*
  %t3102 = alloca { i64, i8* }*
  %t3103 = alloca i64
  %t3106 = alloca %nyx_string*
  %t3109 = alloca %nyx_string*
  %t3112 = alloca %nyx_string*
  %t3115 = alloca %nyx_string*
  %t3118 = alloca %nyx_string*
  %t3121 = alloca %nyx_string*
  %t3124 = alloca %nyx_string*
  %t3127 = alloca %nyx_string*
  %t3142 = alloca %ASTNode
  %t3148 = alloca %ASTNode
  %t3157 = alloca %nyx_string*
  %t3158 = alloca i1
  %t3168 = alloca { i64, i8* }*
  %t3172 = alloca %nyx_string*
  %t3176 = alloca %nyx_string*
  %t3178 = alloca { i64, i8* }*
  %t3179 = alloca i64
  %t3186 = alloca { i64, i8* }*
  %t3187 = alloca i64
  %t3189 = alloca i64
  %t3190 = alloca i64
  %t3199 = alloca { i64, i8* }*
  %t3206 = alloca %nyx_string*
  %t3210 = alloca %nyx_string*
  %t3232 = alloca %nyx_string*
  %t3234 = alloca { i64, i8* }*
  %t3235 = alloca i64
  %t3244 = alloca { i64, i8* }*
  %t3251 = alloca %nyx_string*
  %t3267 = alloca { i64, i8* }*
  %t3279 = alloca { i64, i8* }*
  %t3280 = alloca i64
  %t3298 = alloca { i64, i8* }*
  %t3299 = alloca i64
  %t3308 = alloca %nyx_string*
  store %ASTNode %root.param, %ASTNode* %root.ptr
  store { i64, i8* }* %struct_lt_set.param, { i64, i8* }** %struct_lt_set.ptr
  %t3098 = call i8* @nyx_map_new(i32 0)
  store i8* %t3098, i8** %t3099
  %t3100 = load %ASTNode, %ASTNode* %root.ptr
  %t3101 = call { i64, i8* }* @bc_array_at(%ASTNode %t3100, i64 0)
  store { i64, i8* }* %t3101, { i64, i8* }** %t3102
  store i64 0, i64* %t3103
  %t3104 = getelementptr [7 x i8], [7 x i8]* @.str225, i32 0, i32 0
  %t3105 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str225.c, i8* %t3104, i64 6)
  store %nyx_string* %t3105, %nyx_string** %t3106
  %t3107 = getelementptr [9 x i8], [9 x i8]* @.str226, i32 0, i32 0
  %t3108 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str226.c, i8* %t3107, i64 8)
  store %nyx_string* %t3108, %nyx_string** %t3109
  %t3110 = getelementptr [9 x i8], [9 x i8]* @.str227, i32 0, i32 0
  %t3111 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str227.c, i8* %t3110, i64 8)
  store %nyx_string* %t3111, %nyx_string** %t3112
  %t3113 = getelementptr [5 x i8], [5 x i8]* @.str228, i32 0, i32 0
  %t3114 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str228.c, i8* %t3113, i64 4)
  store %nyx_string* %t3114, %nyx_string** %t3115
  %t3116 = getelementptr [2 x i8], [2 x i8]* @.str229, i32 0, i32 0
  %t3117 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str229.c, i8* %t3116, i64 1)
  store %nyx_string* %t3117, %nyx_string** %t3118
  %t3119 = getelementptr [1 x i8], [1 x i8]* @.str230, i32 0, i32 0
  %t3120 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str230.c, i8* %t3119, i64 0)
  store %nyx_string* %t3120, %nyx_string** %t3121
  %t3122 = getelementptr [10 x i8], [10 x i8]* @.str231, i32 0, i32 0
  %t3123 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str231.c, i8* %t3122, i64 9)
  store %nyx_string* %t3123, %nyx_string** %t3124
  %t3125 = getelementptr [12 x i8], [12 x i8]* @.str232, i32 0, i32 0
  %t3126 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str232.c, i8* %t3125, i64 11)
  store %nyx_string* %t3126, %nyx_string** %t3127
  br label %while_cond788
while_cond788:
  %t3128 = load i64, i64* %t3103
  %t3129 = load { i64, i8* }*, { i64, i8* }** %t3102
  %t3130 = call i64 @nyx_array_length({ i64, i8* }* %t3129)
  %t3131 = icmp slt i64 %t3128, %t3130
  br i1 %t3131, label %while_body789, label %while_end790
while_body789:
  %t3132 = load { i64, i8* }*, { i64, i8* }** %t3102
  %t3133 = load i64, i64* %t3103
  %t3134 = call i64 @nyx_array_get({ i64, i8* }* %t3132, i64 %t3133)
  %t3135 = inttoptr i64 %t3134 to { i64, i8* }*
  %t3136 = call i64 @nyx_array_get({ i64, i8* }* %t3135, i64 0)
  %t3137 = call i64 @nyx_array_get({ i64, i8* }* %t3135, i64 1)
  %t3138 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t3135, i64 2)
  %t3139 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t3135, i64 3)
  %t3140 = inttoptr i64 %t3136 to %nyx_string*
  %t3141 = inttoptr i64 %t3137 to { i64, i8* }*
  %t3143 = getelementptr inbounds %ASTNode, %ASTNode* %t3142, i32 0, i32 0
  store %nyx_string* %t3140, %nyx_string** %t3143
  %t3144 = getelementptr inbounds %ASTNode, %ASTNode* %t3142, i32 0, i32 1
  store { i64, i8* }* %t3141, { i64, i8* }** %t3144
  %t3145 = getelementptr inbounds %ASTNode, %ASTNode* %t3142, i32 0, i32 2
  store i64 %t3138, i64* %t3145
  %t3146 = getelementptr inbounds %ASTNode, %ASTNode* %t3142, i32 0, i32 3
  store i64 %t3139, i64* %t3146
  %t3147 = load %ASTNode, %ASTNode* %t3142
  store %ASTNode %t3147, %ASTNode* %t3148
  %t3149 = getelementptr %ASTNode, %ASTNode* %t3148, i32 0, i32 0
  %t3150 = load %nyx_string*, %nyx_string** %t3149
  %t3151 = load %nyx_string*, %nyx_string** %t3106
  %t3152 = call i1 @nyx_string_equals(%nyx_string* %t3150, %nyx_string* %t3151)
  br i1 %t3152, label %then791, label %else792
then791:
  %t3153 = load %ASTNode, %ASTNode* %t3148
  %t3154 = call %ASTNode @bc_node_at(%ASTNode %t3153, i64 0)
  store %ASTNode %t3154, %ASTNode* %t3148
  br label %merge793
else792:
  br label %merge793
merge793:
  %t3155 = getelementptr %ASTNode, %ASTNode* %t3148, i32 0, i32 0
  %t3156 = load %nyx_string*, %nyx_string** %t3155
  store %nyx_string* %t3156, %nyx_string** %t3157
  store i1 true, i1* %t3158
  %t3159 = load %nyx_string*, %nyx_string** %t3157
  %t3160 = load %nyx_string*, %nyx_string** %t3109
  %t3161 = call i1 @nyx_string_equals(%nyx_string* %t3159, %nyx_string* %t3160)
  br i1 %t3161, label %sc_or_end795, label %sc_or_rhs794
sc_or_rhs794:
  %t3162 = load %nyx_string*, %nyx_string** %t3157
  %t3163 = load %nyx_string*, %nyx_string** %t3112
  %t3164 = call i1 @nyx_string_equals(%nyx_string* %t3162, %nyx_string* %t3163)
  store i1 %t3164, i1* %t3158
  br label %sc_or_end795
sc_or_end795:
  %t3165 = load i1, i1* %t3158
  br i1 %t3165, label %then796, label %else797
then796:
  %t3166 = getelementptr %ASTNode, %ASTNode* %t3148, i32 0, i32 1
  %t3167 = load { i64, i8* }*, { i64, i8* }** %t3166
  store { i64, i8* }* %t3167, { i64, i8* }** %t3168
  %t3169 = load { i64, i8* }*, { i64, i8* }** %t3168
  %t3170 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3169, i64 0, i64 2)
  %t3171 = inttoptr i64 %t3170 to %nyx_string*
  store %nyx_string* %t3171, %nyx_string** %t3172
  %t3173 = load { i64, i8* }*, { i64, i8* }** %t3168
  %t3174 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3173, i64 2, i64 2)
  %t3175 = inttoptr i64 %t3174 to %nyx_string*
  store %nyx_string* %t3175, %nyx_string** %t3176
  %t3177 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t3177, { i64, i8* }** %t3178
  store i64 0, i64* %t3179
  %t3180 = load %nyx_string*, %nyx_string** %t3176
  %t3181 = load { i64, i8* }*, { i64, i8* }** %struct_lt_set.ptr
  %t3182 = call i1 @ret_is_reflike(%nyx_string* %t3180, { i64, i8* }* %t3181)
  br i1 %t3182, label %then799, label %else800
then799:
  %t3183 = load { i64, i8* }*, { i64, i8* }** %t3168
  %t3184 = call i64 @nyx_array_get({ i64, i8* }* %t3183, i64 1)
  %t3185 = inttoptr i64 %t3184 to { i64, i8* }*
  store { i64, i8* }* %t3185, { i64, i8* }** %t3186
  store i64 0, i64* %t3187
  %t3188 = sub i64 0, 1
  store i64 %t3188, i64* %t3189
  store i64 0, i64* %t3190
  br label %while_cond802
while_cond802:
  %t3191 = load i64, i64* %t3190
  %t3192 = load { i64, i8* }*, { i64, i8* }** %t3186
  %t3193 = call i64 @nyx_array_length({ i64, i8* }* %t3192)
  %t3194 = icmp slt i64 %t3191, %t3193
  br i1 %t3194, label %while_body803, label %while_end804
while_body803:
  %t3195 = load { i64, i8* }*, { i64, i8* }** %t3186
  %t3196 = load i64, i64* %t3190
  %t3197 = call i64 @nyx_array_get({ i64, i8* }* %t3195, i64 %t3196)
  %t3198 = inttoptr i64 %t3197 to { i64, i8* }*
  store { i64, i8* }* %t3198, { i64, i8* }** %t3199
  %t3200 = load { i64, i8* }*, { i64, i8* }** %t3199
  %t3201 = call i64 @nyx_array_length({ i64, i8* }* %t3200)
  %t3202 = icmp sge i64 %t3201, 2
  br i1 %t3202, label %then805, label %else806
then805:
  %t3203 = load { i64, i8* }*, { i64, i8* }** %t3199
  %t3204 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3203, i64 0, i64 2)
  %t3205 = inttoptr i64 %t3204 to %nyx_string*
  store %nyx_string* %t3205, %nyx_string** %t3206
  %t3207 = load { i64, i8* }*, { i64, i8* }** %t3199
  %t3208 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3207, i64 1, i64 2)
  %t3209 = inttoptr i64 %t3208 to %nyx_string*
  store %nyx_string* %t3209, %nyx_string** %t3210
  %t3211 = load %nyx_string*, %nyx_string** %t3206
  %t3212 = load %nyx_string*, %nyx_string** %t3115
  %t3213 = call i1 @nyx_string_equals(%nyx_string* %t3211, %nyx_string* %t3212)
  %t3214 = xor i1 %t3213, true
  br i1 %t3214, label %then808, label %else809
then808:
  %t3215 = load %nyx_string*, %nyx_string** %t3210
  %t3216 = call i64 @nyx_string_byte_length(%nyx_string* %t3215)
  %t3217 = icmp sgt i64 %t3216, 0
  br i1 %t3217, label %then811, label %else812
then811:
  %t3218 = load %nyx_string*, %nyx_string** %t3210
  %t3219 = call %nyx_string* @nyx_string_substring(%nyx_string* %t3218, i64 0, i64 1)
  %t3220 = load %nyx_string*, %nyx_string** %t3118
  %t3221 = call i1 @nyx_string_equals(%nyx_string* %t3219, %nyx_string* %t3220)
  br i1 %t3221, label %then814, label %else815
then814:
  %t3222 = load i64, i64* %t3187
  %t3223 = add i64 %t3222, 1
  store i64 %t3223, i64* %t3187
  %t3224 = load i64, i64* %t3190
  store i64 %t3224, i64* %t3189
  br label %merge816
else815:
  br label %merge816
merge816:
  br label %merge813
else812:
  br label %merge813
merge813:
  br label %merge810
else809:
  br label %merge810
merge810:
  br label %merge807
else806:
  br label %merge807
merge807:
  %t3225 = load i64, i64* %t3190
  %t3226 = add i64 %t3225, 1
  store i64 %t3226, i64* %t3190
  br label %while_cond802
while_end804:
  %t3227 = load i64, i64* %t3187
  %t3228 = icmp eq i64 %t3227, 1
  br i1 %t3228, label %then817, label %else818
then817:
  %t3229 = call { i64, i8* }* @nyx_array_new_ptr()
  %t3230 = load i64, i64* %t3189
  call void @nyx_array_push_tagged({ i64, i8* }* %t3229, i64 %t3230, i64 1)
  store { i64, i8* }* %t3229, { i64, i8* }** %t3178
  br label %merge819
else818:
  br label %merge819
merge819:
  br label %merge801
else800:
  br label %merge801
merge801:
  %t3231 = load %nyx_string*, %nyx_string** %t3121
  store %nyx_string* %t3231, %nyx_string** %t3232
  %t3233 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t3233, { i64, i8* }** %t3234
  store i64 6, i64* %t3235
  br label %while_cond820
while_cond820:
  %t3236 = load i64, i64* %t3235
  %t3237 = load { i64, i8* }*, { i64, i8* }** %t3168
  %t3238 = call i64 @nyx_array_length({ i64, i8* }* %t3237)
  %t3239 = icmp slt i64 %t3236, %t3238
  br i1 %t3239, label %while_body821, label %while_end822
while_body821:
  %t3240 = load { i64, i8* }*, { i64, i8* }** %t3168
  %t3241 = load i64, i64* %t3235
  %t3242 = call i64 @nyx_array_get({ i64, i8* }* %t3240, i64 %t3241)
  %t3243 = inttoptr i64 %t3242 to { i64, i8* }*
  store { i64, i8* }* %t3243, { i64, i8* }** %t3244
  %t3245 = load { i64, i8* }*, { i64, i8* }** %t3244
  %t3246 = call i64 @nyx_array_length({ i64, i8* }* %t3245)
  %t3247 = icmp sge i64 %t3246, 2
  br i1 %t3247, label %then823, label %else824
then823:
  %t3248 = load { i64, i8* }*, { i64, i8* }** %t3244
  %t3249 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3248, i64 0, i64 2)
  %t3250 = inttoptr i64 %t3249 to %nyx_string*
  store %nyx_string* %t3250, %nyx_string** %t3251
  %t3252 = load %nyx_string*, %nyx_string** %t3251
  %t3253 = load %nyx_string*, %nyx_string** %t3124
  %t3254 = call i1 @nyx_string_equals(%nyx_string* %t3252, %nyx_string* %t3253)
  br i1 %t3254, label %then826, label %else827
then826:
  %t3255 = load { i64, i8* }*, { i64, i8* }** %t3244
  %t3256 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3255, i64 1, i64 2)
  %t3257 = inttoptr i64 %t3256 to %nyx_string*
  store %nyx_string* %t3257, %nyx_string** %t3232
  br label %merge828
else827:
  br label %merge828
merge828:
  %t3258 = load %nyx_string*, %nyx_string** %t3251
  %t3259 = load %nyx_string*, %nyx_string** %t3127
  %t3260 = call i1 @nyx_string_equals(%nyx_string* %t3258, %nyx_string* %t3259)
  br i1 %t3260, label %then829, label %else830
then829:
  %t3261 = load { i64, i8* }*, { i64, i8* }** %t3244
  %t3262 = call i64 @nyx_array_get({ i64, i8* }* %t3261, i64 1)
  %t3263 = inttoptr i64 %t3262 to { i64, i8* }*
  store { i64, i8* }* %t3263, { i64, i8* }** %t3234
  br label %merge831
else830:
  br label %merge831
merge831:
  br label %merge825
else824:
  br label %merge825
merge825:
  %t3264 = load i64, i64* %t3235
  %t3265 = add i64 %t3264, 1
  store i64 %t3265, i64* %t3235
  br label %while_cond820
while_end822:
  %t3266 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t3266, { i64, i8* }** %t3267
  %t3268 = load %nyx_string*, %nyx_string** %t3232
  %t3269 = call i64 @nyx_string_byte_length(%nyx_string* %t3268)
  %t3270 = icmp sgt i64 %t3269, 0
  br i1 %t3270, label %then832, label %else833
then832:
  %t3271 = load { i64, i8* }*, { i64, i8* }** %t3267
  %t3272 = load %nyx_string*, %nyx_string** %t3232
  %t3273 = ptrtoint %nyx_string* %t3272 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3271, i64 %t3273, i64 2)
  br label %merge834
else833:
  br label %merge834
merge834:
  %t3274 = load %nyx_string*, %nyx_string** %t3176
  %t3275 = load { i64, i8* }*, { i64, i8* }** %struct_lt_set.ptr
  %t3276 = call i1 @ret_is_reflike(%nyx_string* %t3274, { i64, i8* }* %t3275)
  br i1 %t3276, label %then835, label %else836
then835:
  %t3277 = load %nyx_string*, %nyx_string** %t3176
  %t3278 = call { i64, i8* }* @extract_lifetimes(%nyx_string* %t3277)
  store { i64, i8* }* %t3278, { i64, i8* }** %t3279
  store i64 0, i64* %t3280
  br label %while_cond838
while_cond838:
  %t3281 = load i64, i64* %t3280
  %t3282 = load { i64, i8* }*, { i64, i8* }** %t3279
  %t3283 = call i64 @nyx_array_length({ i64, i8* }* %t3282)
  %t3284 = icmp slt i64 %t3281, %t3283
  br i1 %t3284, label %while_body839, label %while_end840
while_body839:
  %t3285 = load { i64, i8* }*, { i64, i8* }** %t3267
  %t3286 = load { i64, i8* }*, { i64, i8* }** %t3279
  %t3287 = load i64, i64* %t3280
  %t3288 = call i64 @nyx_array_get({ i64, i8* }* %t3286, i64 %t3287)
  %t3289 = load { i64, i8* }*, { i64, i8* }** %t3279
  %t3290 = load i64, i64* %t3280
  %t3291 = call i64 @nyx_array_get_tag({ i64, i8* }* %t3289, i64 %t3290)
  call void @nyx_array_push_tagged({ i64, i8* }* %t3285, i64 %t3288, i64 %t3291)
  %t3292 = load i64, i64* %t3280
  %t3293 = add i64 %t3292, 1
  store i64 %t3293, i64* %t3280
  br label %while_cond838
while_end840:
  br label %merge837
else836:
  br label %merge837
merge837:
  %t3294 = load { i64, i8* }*, { i64, i8* }** %t3267
  %t3295 = call i64 @nyx_array_length({ i64, i8* }* %t3294)
  %t3296 = icmp sgt i64 %t3295, 0
  br i1 %t3296, label %then841, label %else842
then841:
  %t3297 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t3297, { i64, i8* }** %t3298
  store i64 0, i64* %t3299
  br label %while_cond844
while_cond844:
  %t3300 = load i64, i64* %t3299
  %t3301 = load { i64, i8* }*, { i64, i8* }** %t3234
  %t3302 = call i64 @nyx_array_length({ i64, i8* }* %t3301)
  %t3303 = icmp slt i64 %t3300, %t3302
  br i1 %t3303, label %while_body845, label %while_end846
while_body845:
  %t3304 = load { i64, i8* }*, { i64, i8* }** %t3234
  %t3305 = load i64, i64* %t3299
  %t3306 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3304, i64 %t3305, i64 2)
  %t3307 = inttoptr i64 %t3306 to %nyx_string*
  store %nyx_string* %t3307, %nyx_string** %t3308
  %t3309 = load %nyx_string*, %nyx_string** %t3308
  %t3310 = call i64 @nyx_string_byte_length(%nyx_string* %t3309)
  %t3311 = icmp sgt i64 %t3310, 0
  br i1 %t3311, label %then847, label %else848
then847:
  %t3312 = load { i64, i8* }*, { i64, i8* }** %t3267
  %t3313 = load %nyx_string*, %nyx_string** %t3308
  %t3314 = call i1 @lt_set_contains({ i64, i8* }* %t3312, %nyx_string* %t3313)
  br i1 %t3314, label %then850, label %else851
then850:
  %t3315 = load { i64, i8* }*, { i64, i8* }** %t3298
  %t3316 = load i64, i64* %t3299
  call void @nyx_array_push_tagged({ i64, i8* }* %t3315, i64 %t3316, i64 1)
  br label %merge852
else851:
  br label %merge852
merge852:
  br label %merge849
else848:
  br label %merge849
merge849:
  %t3317 = load i64, i64* %t3299
  %t3318 = add i64 %t3317, 1
  store i64 %t3318, i64* %t3299
  br label %while_cond844
while_end846:
  %t3319 = load { i64, i8* }*, { i64, i8* }** %t3298
  %t3320 = call i64 @nyx_array_length({ i64, i8* }* %t3319)
  %t3321 = icmp sgt i64 %t3320, 0
  br i1 %t3321, label %then853, label %else854
then853:
  %t3322 = load { i64, i8* }*, { i64, i8* }** %t3298
  store { i64, i8* }* %t3322, { i64, i8* }** %t3178
  store i64 1, i64* %t3179
  br label %merge855
else854:
  br label %merge855
merge855:
  br label %merge843
else842:
  br label %merge843
merge843:
  %t3323 = load i8*, i8** %t3099
  %t3324 = load %nyx_string*, %nyx_string** %t3172
  %t3325 = call { i64, i8* }* @nyx_array_new_ptr()
  %t3326 = load { i64, i8* }*, { i64, i8* }** %t3178
  %t3327 = ptrtoint { i64, i8* }* %t3326 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3325, i64 %t3327, i64 5)
  %t3328 = load i64, i64* %t3179
  call void @nyx_array_push_tagged({ i64, i8* }* %t3325, i64 %t3328, i64 1)
  %t3329 = call i8* @nyx_string_to_cstr(%nyx_string* %t3324)
  %t3330 = ptrtoint { i64, i8* }* %t3325 to i64
  call void @nyx_map_insert_int(i8* %t3323, i8* %t3329, i64 %t3330)
  br label %merge798
else797:
  br label %merge798
merge798:
  %t3331 = load i64, i64* %t3103
  %t3332 = add i64 %t3331, 1
  store i64 %t3332, i64* %t3103
  br label %while_cond788
while_end790:
  %t3333 = load i8*, i8** %t3099
  ret i8* %t3333
}

define internal { i64, i8* }* @sig_lookup(
i8* %sigs.param, %nyx_string* %name.param) {
  %sigs.ptr = alloca i8*
  %name.ptr = alloca %nyx_string*
  %t3348 = alloca { i64, i8* }*
  store i8* %sigs.param, i8** %sigs.ptr
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %t3334 = load %nyx_string*, %nyx_string** %name.ptr
  %t3335 = getelementptr [1 x i8], [1 x i8]* @.str233, i32 0, i32 0
  %t3336 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str233.c, i8* %t3335, i64 0)
  %t3337 = call i1 @nyx_string_equals(%nyx_string* %t3334, %nyx_string* %t3336)
  %t3338 = xor i1 %t3337, true
  br i1 %t3338, label %then856, label %else857
then856:
  %t3339 = load i8*, i8** %sigs.ptr
  %t3340 = load %nyx_string*, %nyx_string** %name.ptr
  %t3341 = call i8* @nyx_string_to_cstr(%nyx_string* %t3340)
  %t3342 = call i1 @nyx_map_contains_str(i8* %t3339, i8* %t3341)
  br i1 %t3342, label %then859, label %else860
then859:
  %t3343 = load i8*, i8** %sigs.ptr
  %t3344 = load %nyx_string*, %nyx_string** %name.ptr
  %t3345 = call i8* @nyx_string_to_cstr(%nyx_string* %t3344)
  %t3346 = call i64 @nyx_map_get_int(i8* %t3343, i8* %t3345)
  %t3347 = inttoptr i64 %t3346 to { i64, i8* }*
  store { i64, i8* }* %t3347, { i64, i8* }** %t3348
  %t3349 = call { i64, i8* }* @nyx_array_new_ptr()
  %t3350 = load { i64, i8* }*, { i64, i8* }** %t3348
  %t3351 = call i64 @nyx_array_get({ i64, i8* }* %t3350, i64 0)
  call void @nyx_array_push({ i64, i8* }* %t3349, i64 %t3351)
  %t3352 = load { i64, i8* }*, { i64, i8* }** %t3348
  %t3353 = call i64 @nyx_array_get({ i64, i8* }* %t3352, i64 1)
  call void @nyx_array_push({ i64, i8* }* %t3349, i64 %t3353)
  ret { i64, i8* }* %t3349
else860:
  br label %merge861
merge861:
  br label %merge858
else857:
  br label %merge858
merge858:
  %t3354 = call { i64, i8* }* @nyx_array_new_ptr()
  %t3355 = call { i64, i8* }* @nyx_array_new_ptr()
  %t3356 = ptrtoint { i64, i8* }* %t3355 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3354, i64 %t3356, i64 5)
  call void @nyx_array_push_tagged({ i64, i8* }* %t3354, i64 0, i64 1)
  ret { i64, i8* }* %t3354
}

define i1 @borrow_check(
{ i64, i8* }* %ast.param) {
  %ast.ptr = alloca { i64, i8* }*
  %t3359 = alloca %ASTNode
  %t3362 = alloca { i64, i8* }*
  %t3365 = alloca { i64, i8* }*
  %t3369 = alloca i8*
  %t3371 = alloca { i64, i8* }*
  %t3375 = alloca { i64, i8* }*
  %t3377 = alloca { i64, i8* }*
  %t3384 = alloca i64
  %t3387 = alloca i64
  %t3388 = alloca i64
  %t3397 = alloca %nyx_string*
  store { i64, i8* }* %ast.param, { i64, i8* }** %ast.ptr
  %t3357 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  %t3358 = call %ASTNode @bc_root_of({ i64, i8* }* %t3357)
  store %ASTNode %t3358, %ASTNode* %t3359
  %t3360 = load %ASTNode, %ASTNode* %t3359
  %t3361 = call { i64, i8* }* @collect_affine_types(%ASTNode %t3360)
  store { i64, i8* }* %t3361, { i64, i8* }** %t3362
  %t3363 = load %ASTNode, %ASTNode* %t3359
  %t3364 = call { i64, i8* }* @struct_lt_build(%ASTNode %t3363)
  store { i64, i8* }* %t3364, { i64, i8* }** %t3365
  %t3366 = load %ASTNode, %ASTNode* %t3359
  %t3367 = load { i64, i8* }*, { i64, i8* }** %t3365
  %t3368 = call i8* @sig_build(%ASTNode %t3366, { i64, i8* }* %t3367)
  store i8* %t3368, i8** %t3369
  %t3370 = call { i64, i8* }* @state_new()
  store { i64, i8* }* %t3370, { i64, i8* }** %t3371
  %t3372 = load { i64, i8* }*, { i64, i8* }** %t3362
  %t3373 = load i8*, i8** %t3369
  %t3374 = call { i64, i8* }* @tm_new({ i64, i8* }* %t3372, i8* %t3373)
  store { i64, i8* }* %t3374, { i64, i8* }** %t3375
  %t3376 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t3376, { i64, i8* }** %t3377
  %t3378 = load %ASTNode, %ASTNode* %t3359
  %t3379 = load { i64, i8* }*, { i64, i8* }** %t3371
  %t3380 = load { i64, i8* }*, { i64, i8* }** %t3375
  %t3381 = load { i64, i8* }*, { i64, i8* }** %t3377
  %t3382 = call i64 @bc_walk(%ASTNode %t3378, { i64, i8* }* %t3379, { i64, i8* }* %t3380, { i64, i8* }* %t3381)
  %t3383 = call i64 @bc_mode()
  store i64 %t3383, i64* %t3384
  %t3385 = load i64, i64* %t3384
  %t3386 = icmp eq i64 %t3385, 0
  br i1 %t3386, label %then862, label %else863
then862:
  ret i1 1
else863:
  br label %merge864
merge864:
  store i64 0, i64* %t3387
  store i64 0, i64* %t3388
  br label %while_cond865
while_cond865:
  %t3389 = load i64, i64* %t3388
  %t3390 = load { i64, i8* }*, { i64, i8* }** %t3377
  %t3391 = call i64 @nyx_array_length({ i64, i8* }* %t3390)
  %t3392 = icmp slt i64 %t3389, %t3391
  br i1 %t3392, label %while_body866, label %while_end867
while_body866:
  %t3393 = load { i64, i8* }*, { i64, i8* }** %t3377
  %t3394 = load i64, i64* %t3388
  %t3395 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3393, i64 %t3394, i64 2)
  %t3396 = inttoptr i64 %t3395 to %nyx_string*
  store %nyx_string* %t3396, %nyx_string** %t3397
  %t3398 = load i64, i64* %t3384
  %t3399 = icmp eq i64 %t3398, 2
  br i1 %t3399, label %then868, label %else869
then868:
  %t3400 = load %nyx_string*, %nyx_string** %t3397
  %t3401 = call i1 @diag_is_gating(%nyx_string* %t3400)
  br i1 %t3401, label %then871, label %else872
then871:
  %t3402 = getelementptr [7 x i8], [7 x i8]* @.str234, i32 0, i32 0
  %t3403 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str234.c, i8* %t3402, i64 6)
  %t3404 = load %nyx_string*, %nyx_string** %t3397
  %t3405 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3403, %nyx_string* %t3404)
  %t3406 = call i8* @nyx_string_to_cstr(%nyx_string* %t3405)
  call void @nyx_print_string(i8* %t3406)
  %t3407 = load i64, i64* %t3387
  %t3408 = add i64 %t3407, 1
  store i64 %t3408, i64* %t3387
  br label %merge873
else872:
  br label %merge873
merge873:
  br label %merge870
else869:
  %t3409 = getelementptr [15 x i8], [15 x i8]* @.str235, i32 0, i32 0
  %t3410 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str235.c, i8* %t3409, i64 14)
  %t3411 = load %nyx_string*, %nyx_string** %t3397
  %t3412 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3410, %nyx_string* %t3411)
  %t3413 = call i8* @nyx_string_to_cstr(%nyx_string* %t3412)
  call void @nyx_print_string(i8* %t3413)
  br label %merge870
merge870:
  %t3414 = load i64, i64* %t3388
  %t3415 = add i64 %t3414, 1
  store i64 %t3415, i64* %t3388
  br label %while_cond865
while_end867:
  %t3416 = load i64, i64* %t3384
  %t3417 = icmp eq i64 %t3416, 2
  br i1 %t3417, label %then874, label %else875
then874:
  %t3418 = load i64, i64* %t3387
  %t3419 = icmp sgt i64 %t3418, 0
  br i1 %t3419, label %then877, label %else878
then877:
  call void @nyx_exit(i64 1)
  br label %merge879
else878:
  br label %merge879
merge879:
  br label %merge876
else875:
  br label %merge876
merge876:
  ret i1 1
}

define i1 @is_copy_type(
{ i64, i8* }* %ty.param) {
  %ty.ptr = alloca { i64, i8* }*
  %t3426 = alloca %nyx_string*
  store { i64, i8* }* %ty.param, { i64, i8* }** %ty.ptr
  %t3420 = load { i64, i8* }*, { i64, i8* }** %ty.ptr
  %t3421 = call i64 @nyx_array_length({ i64, i8* }* %t3420)
  %t3422 = icmp eq i64 %t3421, 0
  br i1 %t3422, label %then880, label %else881
then880:
  ret i1 1
else881:
  br label %merge882
merge882:
  %t3423 = load { i64, i8* }*, { i64, i8* }** %ty.ptr
  %t3424 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3423, i64 0, i64 2)
  %t3425 = inttoptr i64 %t3424 to %nyx_string*
  store %nyx_string* %t3425, %nyx_string** %t3426
  %t3427 = load %nyx_string*, %nyx_string** %t3426
  %t3428 = getelementptr [9 x i8], [9 x i8]* @.str236, i32 0, i32 0
  %t3429 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str236.c, i8* %t3428, i64 8)
  %t3430 = call i1 @nyx_string_equals(%nyx_string* %t3427, %nyx_string* %t3429)
  br i1 %t3430, label %then883, label %else884
then883:
  ret i1 0
else884:
  br label %merge885
merge885:
  %t3431 = load %nyx_string*, %nyx_string** %t3426
  %t3432 = getelementptr [8 x i8], [8 x i8]* @.str237, i32 0, i32 0
  %t3433 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str237.c, i8* %t3432, i64 7)
  %t3434 = call i1 @nyx_string_equals(%nyx_string* %t3431, %nyx_string* %t3433)
  br i1 %t3434, label %then886, label %else887
then886:
  ret i1 0
else887:
  br label %merge888
merge888:
  %t3435 = load %nyx_string*, %nyx_string** %t3426
  %t3436 = getelementptr [6 x i8], [6 x i8]* @.str238, i32 0, i32 0
  %t3437 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str238.c, i8* %t3436, i64 5)
  %t3438 = call i1 @nyx_string_equals(%nyx_string* %t3435, %nyx_string* %t3437)
  br i1 %t3438, label %then889, label %else890
then889:
  ret i1 0
else890:
  br label %merge891
merge891:
  %t3439 = load %nyx_string*, %nyx_string** %t3426
  %t3440 = getelementptr [9 x i8], [9 x i8]* @.str239, i32 0, i32 0
  %t3441 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str239.c, i8* %t3440, i64 8)
  %t3442 = call i1 @nyx_string_equals(%nyx_string* %t3439, %nyx_string* %t3441)
  br i1 %t3442, label %then892, label %else893
then892:
  ret i1 0
else893:
  br label %merge894
merge894:
  %t3443 = load %nyx_string*, %nyx_string** %t3426
  %t3444 = getelementptr [7 x i8], [7 x i8]* @.str240, i32 0, i32 0
  %t3445 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str240.c, i8* %t3444, i64 6)
  %t3446 = call i1 @nyx_string_equals(%nyx_string* %t3443, %nyx_string* %t3445)
  br i1 %t3446, label %then895, label %else896
then895:
  ret i1 0
else896:
  br label %merge897
merge897:
  %t3447 = load %nyx_string*, %nyx_string** %t3426
  %t3448 = getelementptr [9 x i8], [9 x i8]* @.str241, i32 0, i32 0
  %t3449 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str241.c, i8* %t3448, i64 8)
  %t3450 = call i1 @nyx_string_equals(%nyx_string* %t3447, %nyx_string* %t3449)
  br i1 %t3450, label %then898, label %else899
then898:
  ret i1 0
else899:
  br label %merge900
merge900:
  %t3451 = load %nyx_string*, %nyx_string** %t3426
  %t3452 = getelementptr [9 x i8], [9 x i8]* @.str242, i32 0, i32 0
  %t3453 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str242.c, i8* %t3452, i64 8)
  %t3454 = call i1 @nyx_string_equals(%nyx_string* %t3451, %nyx_string* %t3453)
  br i1 %t3454, label %then901, label %else902
then901:
  ret i1 0
else902:
  br label %merge903
merge903:
  %t3455 = load %nyx_string*, %nyx_string** %t3426
  %t3456 = getelementptr [5 x i8], [5 x i8]* @.str243, i32 0, i32 0
  %t3457 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str243.c, i8* %t3456, i64 4)
  %t3458 = call i1 @nyx_string_equals(%nyx_string* %t3455, %nyx_string* %t3457)
  br i1 %t3458, label %then904, label %else905
then904:
  ret i1 0
else905:
  br label %merge906
merge906:
  %t3459 = load %nyx_string*, %nyx_string** %t3426
  %t3460 = getelementptr [6 x i8], [6 x i8]* @.str244, i32 0, i32 0
  %t3461 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str244.c, i8* %t3460, i64 5)
  %t3462 = call i1 @nyx_string_equals(%nyx_string* %t3459, %nyx_string* %t3461)
  br i1 %t3462, label %then907, label %else908
then907:
  ret i1 1
else908:
  br label %merge909
merge909:
  %t3463 = load %nyx_string*, %nyx_string** %t3426
  %t3464 = getelementptr [8 x i8], [8 x i8]* @.str245, i32 0, i32 0
  %t3465 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str245.c, i8* %t3464, i64 7)
  %t3466 = call i1 @nyx_string_equals(%nyx_string* %t3463, %nyx_string* %t3465)
  br i1 %t3466, label %then910, label %else911
then910:
  ret i1 1
else911:
  br label %merge912
merge912:
  %t3467 = load %nyx_string*, %nyx_string** %t3426
  %t3468 = getelementptr [7 x i8], [7 x i8]* @.str246, i32 0, i32 0
  %t3469 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str246.c, i8* %t3468, i64 6)
  %t3470 = call i1 @nyx_string_equals(%nyx_string* %t3467, %nyx_string* %t3469)
  br i1 %t3470, label %then913, label %else914
then913:
  ret i1 1
else914:
  br label %merge915
merge915:
  %t3471 = load %nyx_string*, %nyx_string** %t3426
  %t3472 = getelementptr [7 x i8], [7 x i8]* @.str247, i32 0, i32 0
  %t3473 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str247.c, i8* %t3472, i64 6)
  %t3474 = call i1 @nyx_string_equals(%nyx_string* %t3471, %nyx_string* %t3473)
  br i1 %t3474, label %then916, label %else917
then916:
  ret i1 1
else917:
  br label %merge918
merge918:
  %t3475 = load %nyx_string*, %nyx_string** %t3426
  %t3476 = getelementptr [7 x i8], [7 x i8]* @.str248, i32 0, i32 0
  %t3477 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str248.c, i8* %t3476, i64 6)
  %t3478 = call i1 @nyx_string_equals(%nyx_string* %t3475, %nyx_string* %t3477)
  br i1 %t3478, label %then919, label %else920
then919:
  ret i1 1
else920:
  br label %merge921
merge921:
  %t3479 = load %nyx_string*, %nyx_string** %t3426
  %t3480 = getelementptr [8 x i8], [8 x i8]* @.str249, i32 0, i32 0
  %t3481 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str249.c, i8* %t3480, i64 7)
  %t3482 = call i1 @nyx_string_equals(%nyx_string* %t3479, %nyx_string* %t3481)
  br i1 %t3482, label %then922, label %else923
then922:
  ret i1 1
else923:
  br label %merge924
merge924:
  %t3483 = load %nyx_string*, %nyx_string** %t3426
  %t3484 = getelementptr [6 x i8], [6 x i8]* @.str250, i32 0, i32 0
  %t3485 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str250.c, i8* %t3484, i64 5)
  %t3486 = call i1 @nyx_string_equals(%nyx_string* %t3483, %nyx_string* %t3485)
  br i1 %t3486, label %then925, label %else926
then925:
  ret i1 1
else926:
  br label %merge927
merge927:
  %t3487 = load %nyx_string*, %nyx_string** %t3426
  %t3488 = getelementptr [9 x i8], [9 x i8]* @.str251, i32 0, i32 0
  %t3489 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str251.c, i8* %t3488, i64 8)
  %t3490 = call i1 @nyx_string_equals(%nyx_string* %t3487, %nyx_string* %t3489)
  br i1 %t3490, label %then928, label %else929
then928:
  ret i1 1
else929:
  br label %merge930
merge930:
  %t3491 = load %nyx_string*, %nyx_string** %t3426
  %t3492 = getelementptr [6 x i8], [6 x i8]* @.str252, i32 0, i32 0
  %t3493 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str252.c, i8* %t3492, i64 5)
  %t3494 = call i1 @nyx_string_equals(%nyx_string* %t3491, %nyx_string* %t3493)
  br i1 %t3494, label %then931, label %else932
then931:
  ret i1 1
else932:
  br label %merge933
merge933:
  ret i1 1
}

define %nyx_string* @place_of(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  %t3497 = alloca %nyx_string*
  %t3504 = alloca { i64, i8* }*
  %t3511 = alloca %nyx_string*
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %t3495 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 0
  %t3496 = load %nyx_string*, %nyx_string** %t3495
  store %nyx_string* %t3496, %nyx_string** %t3497
  %t3498 = load %nyx_string*, %nyx_string** %t3497
  %t3499 = getelementptr [11 x i8], [11 x i8]* @.str253, i32 0, i32 0
  %t3500 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str253.c, i8* %t3499, i64 10)
  %t3501 = call i1 @nyx_string_equals(%nyx_string* %t3498, %nyx_string* %t3500)
  br i1 %t3501, label %then934, label %else935
then934:
  %t3502 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %t3503 = load { i64, i8* }*, { i64, i8* }** %t3502
  store { i64, i8* }* %t3503, { i64, i8* }** %t3504
  %t3505 = load { i64, i8* }*, { i64, i8* }** %t3504
  %t3506 = call i64 @nyx_array_length({ i64, i8* }* %t3505)
  %t3507 = icmp sgt i64 %t3506, 0
  br i1 %t3507, label %then937, label %else938
then937:
  %t3508 = load { i64, i8* }*, { i64, i8* }** %t3504
  %t3509 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3508, i64 0, i64 2)
  %t3510 = inttoptr i64 %t3509 to %nyx_string*
  store %nyx_string* %t3510, %nyx_string** %t3511
  %t3512 = load %nyx_string*, %nyx_string** %t3511
  ret %nyx_string* %t3512
else938:
  br label %merge939
merge939:
  %t3513 = getelementptr [1 x i8], [1 x i8]* @.str254, i32 0, i32 0
  %t3514 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str254.c, i8* %t3513, i64 0)
  ret %nyx_string* %t3514
else935:
  br label %merge936
merge936:
  %t3515 = load %nyx_string*, %nyx_string** %t3497
  %t3516 = getelementptr [13 x i8], [13 x i8]* @.str255, i32 0, i32 0
  %t3517 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str255.c, i8* %t3516, i64 12)
  %t3518 = call i1 @nyx_string_equals(%nyx_string* %t3515, %nyx_string* %t3517)
  br i1 %t3518, label %then940, label %else941
then940:
  %t3519 = load %ASTNode, %ASTNode* %node.ptr
  %t3520 = call %ASTNode @bc_node_at(%ASTNode %t3519, i64 0)
  %t3521 = call %nyx_string* @place_of(%ASTNode %t3520)
  ret %nyx_string* %t3521
else941:
  br label %merge942
merge942:
  %t3522 = load %nyx_string*, %nyx_string** %t3497
  %t3523 = getelementptr [6 x i8], [6 x i8]* @.str256, i32 0, i32 0
  %t3524 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str256.c, i8* %t3523, i64 5)
  %t3525 = call i1 @nyx_string_equals(%nyx_string* %t3522, %nyx_string* %t3524)
  br i1 %t3525, label %then943, label %else944
then943:
  %t3526 = load %ASTNode, %ASTNode* %node.ptr
  %t3527 = call %ASTNode @bc_node_at(%ASTNode %t3526, i64 0)
  %t3528 = call %nyx_string* @place_of(%ASTNode %t3527)
  ret %nyx_string* %t3528
else944:
  br label %merge945
merge945:
  %t3529 = load %nyx_string*, %nyx_string** %t3497
  %t3530 = getelementptr [6 x i8], [6 x i8]* @.str257, i32 0, i32 0
  %t3531 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str257.c, i8* %t3530, i64 5)
  %t3532 = call i1 @nyx_string_equals(%nyx_string* %t3529, %nyx_string* %t3531)
  br i1 %t3532, label %then946, label %else947
then946:
  %t3533 = load %ASTNode, %ASTNode* %node.ptr
  %t3534 = call %ASTNode @bc_node_at(%ASTNode %t3533, i64 0)
  %t3535 = call %nyx_string* @place_of(%ASTNode %t3534)
  ret %nyx_string* %t3535
else947:
  br label %merge948
merge948:
  %t3536 = load %nyx_string*, %nyx_string** %t3497
  %t3537 = getelementptr [8 x i8], [8 x i8]* @.str258, i32 0, i32 0
  %t3538 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str258.c, i8* %t3537, i64 7)
  %t3539 = call i1 @nyx_string_equals(%nyx_string* %t3536, %nyx_string* %t3538)
  br i1 %t3539, label %then949, label %else950
then949:
  %t3540 = load %ASTNode, %ASTNode* %node.ptr
  %t3541 = call %ASTNode @bc_node_at(%ASTNode %t3540, i64 0)
  %t3542 = call %nyx_string* @place_of(%ASTNode %t3541)
  ret %nyx_string* %t3542
else950:
  br label %merge951
merge951:
  %t3543 = load %nyx_string*, %nyx_string** %t3497
  %t3544 = getelementptr [12 x i8], [12 x i8]* @.str259, i32 0, i32 0
  %t3545 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str259.c, i8* %t3544, i64 11)
  %t3546 = call i1 @nyx_string_equals(%nyx_string* %t3543, %nyx_string* %t3545)
  br i1 %t3546, label %then952, label %else953
then952:
  %t3547 = load %ASTNode, %ASTNode* %node.ptr
  %t3548 = call %ASTNode @bc_node_at(%ASTNode %t3547, i64 0)
  %t3549 = call %nyx_string* @place_of(%ASTNode %t3548)
  ret %nyx_string* %t3549
else953:
  br label %merge954
merge954:
  %t3550 = getelementptr [1 x i8], [1 x i8]* @.str260, i32 0, i32 0
  %t3551 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str260.c, i8* %t3550, i64 0)
  ret %nyx_string* %t3551
}

define %nyx_string* @place_path(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  %t3554 = alloca %nyx_string*
  %t3562 = alloca %nyx_string*
  %t3571 = alloca { i64, i8* }*
  %t3578 = alloca %nyx_string*
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %t3552 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 0
  %t3553 = load %nyx_string*, %nyx_string** %t3552
  store %nyx_string* %t3553, %nyx_string** %t3554
  %t3555 = load %nyx_string*, %nyx_string** %t3554
  %t3556 = getelementptr [13 x i8], [13 x i8]* @.str261, i32 0, i32 0
  %t3557 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str261.c, i8* %t3556, i64 12)
  %t3558 = call i1 @nyx_string_equals(%nyx_string* %t3555, %nyx_string* %t3557)
  br i1 %t3558, label %then955, label %else956
then955:
  %t3559 = load %ASTNode, %ASTNode* %node.ptr
  %t3560 = call %ASTNode @bc_node_at(%ASTNode %t3559, i64 0)
  %t3561 = call %nyx_string* @place_path(%ASTNode %t3560)
  store %nyx_string* %t3561, %nyx_string** %t3562
  %t3563 = load %nyx_string*, %nyx_string** %t3562
  %t3564 = getelementptr [1 x i8], [1 x i8]* @.str262, i32 0, i32 0
  %t3565 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str262.c, i8* %t3564, i64 0)
  %t3566 = call i1 @nyx_string_equals(%nyx_string* %t3563, %nyx_string* %t3565)
  br i1 %t3566, label %then958, label %else959
then958:
  %t3567 = getelementptr [1 x i8], [1 x i8]* @.str263, i32 0, i32 0
  %t3568 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str263.c, i8* %t3567, i64 0)
  ret %nyx_string* %t3568
else959:
  br label %merge960
merge960:
  %t3569 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %t3570 = load { i64, i8* }*, { i64, i8* }** %t3569
  store { i64, i8* }* %t3570, { i64, i8* }** %t3571
  %t3572 = load { i64, i8* }*, { i64, i8* }** %t3571
  %t3573 = call i64 @nyx_array_length({ i64, i8* }* %t3572)
  %t3574 = icmp sgt i64 %t3573, 1
  br i1 %t3574, label %then961, label %else962
then961:
  %t3575 = load { i64, i8* }*, { i64, i8* }** %t3571
  %t3576 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3575, i64 1, i64 2)
  %t3577 = inttoptr i64 %t3576 to %nyx_string*
  store %nyx_string* %t3577, %nyx_string** %t3578
  %t3579 = load %nyx_string*, %nyx_string** %t3562
  %t3580 = getelementptr [2 x i8], [2 x i8]* @.str264, i32 0, i32 0
  %t3581 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str264.c, i8* %t3580, i64 1)
  %t3582 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3579, %nyx_string* %t3581)
  %t3583 = load %nyx_string*, %nyx_string** %t3578
  %t3584 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3582, %nyx_string* %t3583)
  ret %nyx_string* %t3584
else962:
  br label %merge963
merge963:
  %t3585 = getelementptr [1 x i8], [1 x i8]* @.str265, i32 0, i32 0
  %t3586 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str265.c, i8* %t3585, i64 0)
  ret %nyx_string* %t3586
else956:
  br label %merge957
merge957:
  %t3587 = load %ASTNode, %ASTNode* %node.ptr
  %t3588 = call %nyx_string* @place_of(%ASTNode %t3587)
  ret %nyx_string* %t3588
}

define { i64, i8* }* @state_new(
) {
  %t3589 = call { i64, i8* }* @nyx_array_new_ptr()
  %t3590 = call { i64, i8* }* @nyx_array_new_ptr()
  %t3591 = ptrtoint { i64, i8* }* %t3590 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3589, i64 %t3591, i64 5)
  %t3592 = call { i64, i8* }* @nyx_array_new_ptr()
  %t3593 = ptrtoint { i64, i8* }* %t3592 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3589, i64 %t3593, i64 5)
  %t3594 = call { i64, i8* }* @nyx_array_new_ptr()
  %t3595 = ptrtoint { i64, i8* }* %t3594 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3589, i64 %t3595, i64 5)
  %t3596 = call { i64, i8* }* @nyx_array_new_ptr()
  %t3597 = ptrtoint { i64, i8* }* %t3596 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3589, i64 %t3597, i64 5)
  ret { i64, i8* }* %t3589
}

define internal i64 @place_index(
{ i64, i8* }* %state.param, %nyx_string* %name.param) {
  %state.ptr = alloca { i64, i8* }*
  %name.ptr = alloca %nyx_string*
  %t3601 = alloca { i64, i8* }*
  %t3602 = alloca i64
  %t3611 = alloca %nyx_string*
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %t3598 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t3599 = call i64 @nyx_array_get({ i64, i8* }* %t3598, i64 0)
  %t3600 = inttoptr i64 %t3599 to { i64, i8* }*
  store { i64, i8* }* %t3600, { i64, i8* }** %t3601
  store i64 0, i64* %t3602
  br label %while_cond964
while_cond964:
  %t3603 = load i64, i64* %t3602
  %t3604 = load { i64, i8* }*, { i64, i8* }** %t3601
  %t3605 = call i64 @nyx_array_length({ i64, i8* }* %t3604)
  %t3606 = icmp slt i64 %t3603, %t3605
  br i1 %t3606, label %while_body965, label %while_end966
while_body965:
  %t3607 = load { i64, i8* }*, { i64, i8* }** %t3601
  %t3608 = load i64, i64* %t3602
  %t3609 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3607, i64 %t3608, i64 2)
  %t3610 = inttoptr i64 %t3609 to %nyx_string*
  store %nyx_string* %t3610, %nyx_string** %t3611
  %t3612 = load %nyx_string*, %nyx_string** %t3611
  %t3613 = load %nyx_string*, %nyx_string** %name.ptr
  %t3614 = call i1 @nyx_string_equals(%nyx_string* %t3612, %nyx_string* %t3613)
  br i1 %t3614, label %then967, label %else968
then967:
  %t3615 = load i64, i64* %t3602
  ret i64 %t3615
else968:
  br label %merge969
merge969:
  %t3616 = load i64, i64* %t3602
  %t3617 = add i64 %t3616, 1
  store i64 %t3617, i64* %t3602
  br label %while_cond964
while_end966:
  %t3618 = sub i64 0, 1
  ret i64 %t3618
}

define i64 @place_ensure(
{ i64, i8* }* %state.param, %nyx_string* %name.param) {
  %state.ptr = alloca { i64, i8* }*
  %name.ptr = alloca %nyx_string*
  %t3622 = alloca i64
  %t3629 = alloca { i64, i8* }*
  %t3633 = alloca { i64, i8* }*
  %t3637 = alloca { i64, i8* }*
  %t3641 = alloca { i64, i8* }*
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %t3619 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t3620 = load %nyx_string*, %nyx_string** %name.ptr
  %t3621 = call i64 @place_index({ i64, i8* }* %t3619, %nyx_string* %t3620)
  store i64 %t3621, i64* %t3622
  %t3623 = load i64, i64* %t3622
  %t3624 = icmp sge i64 %t3623, 0
  br i1 %t3624, label %then970, label %else971
then970:
  %t3625 = load i64, i64* %t3622
  ret i64 %t3625
else971:
  br label %merge972
merge972:
  %t3626 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t3627 = call i64 @nyx_array_get({ i64, i8* }* %t3626, i64 0)
  %t3628 = inttoptr i64 %t3627 to { i64, i8* }*
  store { i64, i8* }* %t3628, { i64, i8* }** %t3629
  %t3630 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t3631 = call i64 @nyx_array_get({ i64, i8* }* %t3630, i64 1)
  %t3632 = inttoptr i64 %t3631 to { i64, i8* }*
  store { i64, i8* }* %t3632, { i64, i8* }** %t3633
  %t3634 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t3635 = call i64 @nyx_array_get({ i64, i8* }* %t3634, i64 2)
  %t3636 = inttoptr i64 %t3635 to { i64, i8* }*
  store { i64, i8* }* %t3636, { i64, i8* }** %t3637
  %t3638 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t3639 = call i64 @nyx_array_get({ i64, i8* }* %t3638, i64 3)
  %t3640 = inttoptr i64 %t3639 to { i64, i8* }*
  store { i64, i8* }* %t3640, { i64, i8* }** %t3641
  %t3642 = load { i64, i8* }*, { i64, i8* }** %t3629
  %t3643 = load %nyx_string*, %nyx_string** %name.ptr
  %t3644 = ptrtoint %nyx_string* %t3643 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3642, i64 %t3644, i64 2)
  %t3645 = load { i64, i8* }*, { i64, i8* }** %t3633
  call void @nyx_array_push_tagged({ i64, i8* }* %t3645, i64 0, i64 1)
  %t3646 = load { i64, i8* }*, { i64, i8* }** %t3637
  call void @nyx_array_push_tagged({ i64, i8* }* %t3646, i64 0, i64 1)
  %t3647 = load { i64, i8* }*, { i64, i8* }** %t3641
  %t3648 = getelementptr [1 x i8], [1 x i8]* @.str266, i32 0, i32 0
  %t3649 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str266.c, i8* %t3648, i64 0)
  %t3650 = ptrtoint %nyx_string* %t3649 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3647, i64 %t3650, i64 2)
  %t3651 = load { i64, i8* }*, { i64, i8* }** %t3629
  %t3652 = call i64 @nyx_array_length({ i64, i8* }* %t3651)
  %t3653 = sub i64 %t3652, 1
  ret i64 %t3653
}

define i64 @mark_moved(
{ i64, i8* }* %state.param, %nyx_string* %name.param) {
  %state.ptr = alloca { i64, i8* }*
  %name.ptr = alloca %nyx_string*
  %t3657 = alloca i64
  %t3661 = alloca { i64, i8* }*
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %t3654 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t3655 = load %nyx_string*, %nyx_string** %name.ptr
  %t3656 = call i64 @place_ensure({ i64, i8* }* %t3654, %nyx_string* %t3655)
  store i64 %t3656, i64* %t3657
  %t3658 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t3659 = call i64 @nyx_array_get({ i64, i8* }* %t3658, i64 1)
  %t3660 = inttoptr i64 %t3659 to { i64, i8* }*
  store { i64, i8* }* %t3660, { i64, i8* }** %t3661
  %t3662 = load { i64, i8* }*, { i64, i8* }** %t3661
  %t3663 = load i64, i64* %t3657
  call void @nyx_array_set_tagged({ i64, i8* }* %t3662, i64 %t3663, i64 1, i64 1)
  ret i64 0
}

define i1 @is_moved(
{ i64, i8* }* %state.param, %nyx_string* %name.param) {
  %state.ptr = alloca { i64, i8* }*
  %name.ptr = alloca %nyx_string*
  %t3667 = alloca i64
  %t3673 = alloca { i64, i8* }*
  %t3677 = alloca i64
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %t3664 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t3665 = load %nyx_string*, %nyx_string** %name.ptr
  %t3666 = call i64 @place_index({ i64, i8* }* %t3664, %nyx_string* %t3665)
  store i64 %t3666, i64* %t3667
  %t3668 = load i64, i64* %t3667
  %t3669 = icmp slt i64 %t3668, 0
  br i1 %t3669, label %then973, label %else974
then973:
  ret i1 0
else974:
  br label %merge975
merge975:
  %t3670 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t3671 = call i64 @nyx_array_get({ i64, i8* }* %t3670, i64 1)
  %t3672 = inttoptr i64 %t3671 to { i64, i8* }*
  store { i64, i8* }* %t3672, { i64, i8* }** %t3673
  %t3674 = load { i64, i8* }*, { i64, i8* }** %t3673
  %t3675 = load i64, i64* %t3667
  %t3676 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %t3674, i64 %t3675)
  store i64 %t3676, i64* %t3677
  %t3678 = load i64, i64* %t3677
  %t3679 = icmp eq i64 %t3678, 1
  ret i1 %t3679
}

define i64 @mark_freed(
{ i64, i8* }* %state.param, %nyx_string* %name.param) {
  %state.ptr = alloca { i64, i8* }*
  %name.ptr = alloca %nyx_string*
  %t3683 = alloca i64
  %t3687 = alloca { i64, i8* }*
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %t3680 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t3681 = load %nyx_string*, %nyx_string** %name.ptr
  %t3682 = call i64 @place_ensure({ i64, i8* }* %t3680, %nyx_string* %t3681)
  store i64 %t3682, i64* %t3683
  %t3684 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t3685 = call i64 @nyx_array_get({ i64, i8* }* %t3684, i64 1)
  %t3686 = inttoptr i64 %t3685 to { i64, i8* }*
  store { i64, i8* }* %t3686, { i64, i8* }** %t3687
  %t3688 = load { i64, i8* }*, { i64, i8* }** %t3687
  %t3689 = load i64, i64* %t3683
  call void @nyx_array_set_tagged({ i64, i8* }* %t3688, i64 %t3689, i64 2, i64 1)
  ret i64 0
}

define i1 @is_freed(
{ i64, i8* }* %state.param, %nyx_string* %name.param) {
  %state.ptr = alloca { i64, i8* }*
  %name.ptr = alloca %nyx_string*
  %t3693 = alloca i64
  %t3699 = alloca { i64, i8* }*
  %t3703 = alloca i64
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %t3690 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t3691 = load %nyx_string*, %nyx_string** %name.ptr
  %t3692 = call i64 @place_index({ i64, i8* }* %t3690, %nyx_string* %t3691)
  store i64 %t3692, i64* %t3693
  %t3694 = load i64, i64* %t3693
  %t3695 = icmp slt i64 %t3694, 0
  br i1 %t3695, label %then976, label %else977
then976:
  ret i1 0
else977:
  br label %merge978
merge978:
  %t3696 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t3697 = call i64 @nyx_array_get({ i64, i8* }* %t3696, i64 1)
  %t3698 = inttoptr i64 %t3697 to { i64, i8* }*
  store { i64, i8* }* %t3698, { i64, i8* }** %t3699
  %t3700 = load { i64, i8* }*, { i64, i8* }** %t3699
  %t3701 = load i64, i64* %t3693
  %t3702 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %t3700, i64 %t3701)
  store i64 %t3702, i64* %t3703
  %t3704 = load i64, i64* %t3703
  %t3705 = icmp eq i64 %t3704, 2
  ret i1 %t3705
}

define i64 @revive(
{ i64, i8* }* %state.param, %nyx_string* %name.param) {
  %state.ptr = alloca { i64, i8* }*
  %name.ptr = alloca %nyx_string*
  %t3709 = alloca i64
  %t3713 = alloca { i64, i8* }*
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %t3706 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t3707 = load %nyx_string*, %nyx_string** %name.ptr
  %t3708 = call i64 @place_ensure({ i64, i8* }* %t3706, %nyx_string* %t3707)
  store i64 %t3708, i64* %t3709
  %t3710 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t3711 = call i64 @nyx_array_get({ i64, i8* }* %t3710, i64 1)
  %t3712 = inttoptr i64 %t3711 to { i64, i8* }*
  store { i64, i8* }* %t3712, { i64, i8* }** %t3713
  %t3714 = load { i64, i8* }*, { i64, i8* }** %t3713
  %t3715 = load i64, i64* %t3709
  call void @nyx_array_set_tagged({ i64, i8* }* %t3714, i64 %t3715, i64 0, i64 1)
  ret i64 0
}

define i64 @set_borrow(
{ i64, i8* }* %state.param, %nyx_string* %name.param, i64 %kind.param) {
  %state.ptr = alloca { i64, i8* }*
  %name.ptr = alloca %nyx_string*
  %kind.ptr = alloca i64
  %t3719 = alloca i64
  %t3723 = alloca { i64, i8* }*
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  store i64 %kind.param, i64* %kind.ptr
  %t3716 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t3717 = load %nyx_string*, %nyx_string** %name.ptr
  %t3718 = call i64 @place_ensure({ i64, i8* }* %t3716, %nyx_string* %t3717)
  store i64 %t3718, i64* %t3719
  %t3720 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t3721 = call i64 @nyx_array_get({ i64, i8* }* %t3720, i64 2)
  %t3722 = inttoptr i64 %t3721 to { i64, i8* }*
  store { i64, i8* }* %t3722, { i64, i8* }** %t3723
  %t3724 = load { i64, i8* }*, { i64, i8* }** %t3723
  %t3725 = load i64, i64* %t3719
  %t3726 = load i64, i64* %kind.ptr
  call void @nyx_array_set({ i64, i8* }* %t3724, i64 %t3725, i64 %t3726)
  ret i64 0
}

define i64 @get_borrow(
{ i64, i8* }* %state.param, %nyx_string* %name.param) {
  %state.ptr = alloca { i64, i8* }*
  %name.ptr = alloca %nyx_string*
  %t3730 = alloca i64
  %t3736 = alloca { i64, i8* }*
  %t3740 = alloca i64
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %t3727 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t3728 = load %nyx_string*, %nyx_string** %name.ptr
  %t3729 = call i64 @place_index({ i64, i8* }* %t3727, %nyx_string* %t3728)
  store i64 %t3729, i64* %t3730
  %t3731 = load i64, i64* %t3730
  %t3732 = icmp slt i64 %t3731, 0
  br i1 %t3732, label %then979, label %else980
then979:
  ret i64 0
else980:
  br label %merge981
merge981:
  %t3733 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t3734 = call i64 @nyx_array_get({ i64, i8* }* %t3733, i64 2)
  %t3735 = inttoptr i64 %t3734 to { i64, i8* }*
  store { i64, i8* }* %t3735, { i64, i8* }** %t3736
  %t3737 = load { i64, i8* }*, { i64, i8* }** %t3736
  %t3738 = load i64, i64* %t3730
  %t3739 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %t3737, i64 %t3738)
  store i64 %t3739, i64* %t3740
  %t3741 = load i64, i64* %t3740
  ret i64 %t3741
}

define internal %nyx_string* @reforigin_mark_soft(
%nyx_string* %name.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %t3742 = getelementptr [2 x i8], [2 x i8]* @.str267, i32 0, i32 0
  %t3743 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str267.c, i8* %t3742, i64 1)
  %t3744 = load %nyx_string*, %nyx_string** %name.ptr
  %t3745 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3743, %nyx_string* %t3744)
  ret %nyx_string* %t3745
}

define internal i1 @reforigin_is_soft(
%nyx_string* %o.param) {
  %o.ptr = alloca %nyx_string*
  store %nyx_string* %o.param, %nyx_string** %o.ptr
  %t3746 = load %nyx_string*, %nyx_string** %o.ptr
  %t3747 = call i64 @nyx_string_byte_length(%nyx_string* %t3746)
  %t3748 = icmp eq i64 %t3747, 0
  br i1 %t3748, label %then982, label %else983
then982:
  ret i1 0
else983:
  br label %merge984
merge984:
  %t3749 = load %nyx_string*, %nyx_string** %o.ptr
  %t3750 = call %nyx_string* @nyx_string_substring(%nyx_string* %t3749, i64 0, i64 1)
  %t3751 = getelementptr [2 x i8], [2 x i8]* @.str268, i32 0, i32 0
  %t3752 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str268.c, i8* %t3751, i64 1)
  %t3753 = call i1 @nyx_string_equals(%nyx_string* %t3750, %nyx_string* %t3752)
  ret i1 %t3753
}

define internal %nyx_string* @reforigin_name(
%nyx_string* %o.param) {
  %o.ptr = alloca %nyx_string*
  store %nyx_string* %o.param, %nyx_string** %o.ptr
  %t3754 = load %nyx_string*, %nyx_string** %o.ptr
  %t3755 = call i1 @reforigin_is_soft(%nyx_string* %t3754)
  br i1 %t3755, label %then985, label %else986
then985:
  %t3756 = load %nyx_string*, %nyx_string** %o.ptr
  %t3757 = load %nyx_string*, %nyx_string** %o.ptr
  %t3758 = call i64 @nyx_string_byte_length(%nyx_string* %t3757)
  %t3759 = call %nyx_string* @nyx_string_substring(%nyx_string* %t3756, i64 1, i64 %t3758)
  ret %nyx_string* %t3759
else986:
  br label %merge987
merge987:
  %t3760 = load %nyx_string*, %nyx_string** %o.ptr
  ret %nyx_string* %t3760
}

define i64 @set_reforigin(
{ i64, i8* }* %state.param, %nyx_string* %name.param, %nyx_string* %origin.param) {
  %state.ptr = alloca { i64, i8* }*
  %name.ptr = alloca %nyx_string*
  %origin.ptr = alloca %nyx_string*
  %t3764 = alloca i64
  %t3768 = alloca { i64, i8* }*
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  store %nyx_string* %origin.param, %nyx_string** %origin.ptr
  %t3761 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t3762 = load %nyx_string*, %nyx_string** %name.ptr
  %t3763 = call i64 @place_ensure({ i64, i8* }* %t3761, %nyx_string* %t3762)
  store i64 %t3763, i64* %t3764
  %t3765 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t3766 = call i64 @nyx_array_get({ i64, i8* }* %t3765, i64 3)
  %t3767 = inttoptr i64 %t3766 to { i64, i8* }*
  store { i64, i8* }* %t3767, { i64, i8* }** %t3768
  %t3769 = load { i64, i8* }*, { i64, i8* }** %t3768
  %t3770 = load i64, i64* %t3764
  %t3771 = load %nyx_string*, %nyx_string** %origin.ptr
  %t3772 = ptrtoint %nyx_string* %t3771 to i64
  call void @nyx_array_set_tagged({ i64, i8* }* %t3769, i64 %t3770, i64 %t3772, i64 2)
  ret i64 0
}

define %nyx_string* @get_reforigin(
{ i64, i8* }* %state.param, %nyx_string* %name.param) {
  %state.ptr = alloca { i64, i8* }*
  %name.ptr = alloca %nyx_string*
  %t3776 = alloca i64
  %t3784 = alloca { i64, i8* }*
  %t3789 = alloca %nyx_string*
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %t3773 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t3774 = load %nyx_string*, %nyx_string** %name.ptr
  %t3775 = call i64 @place_index({ i64, i8* }* %t3773, %nyx_string* %t3774)
  store i64 %t3775, i64* %t3776
  %t3777 = load i64, i64* %t3776
  %t3778 = icmp slt i64 %t3777, 0
  br i1 %t3778, label %then988, label %else989
then988:
  %t3779 = getelementptr [1 x i8], [1 x i8]* @.str269, i32 0, i32 0
  %t3780 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str269.c, i8* %t3779, i64 0)
  ret %nyx_string* %t3780
else989:
  br label %merge990
merge990:
  %t3781 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t3782 = call i64 @nyx_array_get({ i64, i8* }* %t3781, i64 3)
  %t3783 = inttoptr i64 %t3782 to { i64, i8* }*
  store { i64, i8* }* %t3783, { i64, i8* }** %t3784
  %t3785 = load { i64, i8* }*, { i64, i8* }** %t3784
  %t3786 = load i64, i64* %t3776
  %t3787 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3785, i64 %t3786, i64 2)
  %t3788 = inttoptr i64 %t3787 to %nyx_string*
  store %nyx_string* %t3788, %nyx_string** %t3789
  %t3790 = load %nyx_string*, %nyx_string** %t3789
  ret %nyx_string* %t3790
}

define internal i64 @clear_borrows(
{ i64, i8* }* %state.param) {
  %state.ptr = alloca { i64, i8* }*
  %t3794 = alloca { i64, i8* }*
  %t3795 = alloca i64
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  %t3791 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t3792 = call i64 @nyx_array_get({ i64, i8* }* %t3791, i64 2)
  %t3793 = inttoptr i64 %t3792 to { i64, i8* }*
  store { i64, i8* }* %t3793, { i64, i8* }** %t3794
  store i64 0, i64* %t3795
  br label %while_cond991
while_cond991:
  %t3796 = load i64, i64* %t3795
  %t3797 = load { i64, i8* }*, { i64, i8* }** %t3794
  %t3798 = call i64 @nyx_array_length({ i64, i8* }* %t3797)
  %t3799 = icmp slt i64 %t3796, %t3798
  br i1 %t3799, label %while_body992, label %while_end993
while_body992:
  %t3800 = load { i64, i8* }*, { i64, i8* }** %t3794
  %t3801 = load i64, i64* %t3795
  call void @nyx_array_set_tagged({ i64, i8* }* %t3800, i64 %t3801, i64 0, i64 1)
  %t3802 = load i64, i64* %t3795
  %t3803 = add i64 %t3802, 1
  store i64 %t3803, i64* %t3795
  br label %while_cond991
while_end993:
  ret i64 0
}

define { i64, i8* }* @state_copy(
{ i64, i8* }* %state.param) {
  %state.ptr = alloca { i64, i8* }*
  %t3807 = alloca { i64, i8* }*
  %t3811 = alloca { i64, i8* }*
  %t3815 = alloca { i64, i8* }*
  %t3819 = alloca { i64, i8* }*
  %t3821 = alloca { i64, i8* }*
  %t3823 = alloca { i64, i8* }*
  %t3825 = alloca { i64, i8* }*
  %t3827 = alloca { i64, i8* }*
  %t3828 = alloca i64
  %t3837 = alloca %nyx_string*
  %t3841 = alloca i64
  %t3845 = alloca i64
  %t3850 = alloca %nyx_string*
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  %t3804 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t3805 = call i64 @nyx_array_get({ i64, i8* }* %t3804, i64 0)
  %t3806 = inttoptr i64 %t3805 to { i64, i8* }*
  store { i64, i8* }* %t3806, { i64, i8* }** %t3807
  %t3808 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t3809 = call i64 @nyx_array_get({ i64, i8* }* %t3808, i64 1)
  %t3810 = inttoptr i64 %t3809 to { i64, i8* }*
  store { i64, i8* }* %t3810, { i64, i8* }** %t3811
  %t3812 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t3813 = call i64 @nyx_array_get({ i64, i8* }* %t3812, i64 2)
  %t3814 = inttoptr i64 %t3813 to { i64, i8* }*
  store { i64, i8* }* %t3814, { i64, i8* }** %t3815
  %t3816 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %t3817 = call i64 @nyx_array_get({ i64, i8* }* %t3816, i64 3)
  %t3818 = inttoptr i64 %t3817 to { i64, i8* }*
  store { i64, i8* }* %t3818, { i64, i8* }** %t3819
  %t3820 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t3820, { i64, i8* }** %t3821
  %t3822 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t3822, { i64, i8* }** %t3823
  %t3824 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t3824, { i64, i8* }** %t3825
  %t3826 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t3826, { i64, i8* }** %t3827
  store i64 0, i64* %t3828
  br label %while_cond994
while_cond994:
  %t3829 = load i64, i64* %t3828
  %t3830 = load { i64, i8* }*, { i64, i8* }** %t3807
  %t3831 = call i64 @nyx_array_length({ i64, i8* }* %t3830)
  %t3832 = icmp slt i64 %t3829, %t3831
  br i1 %t3832, label %while_body995, label %while_end996
while_body995:
  %t3833 = load { i64, i8* }*, { i64, i8* }** %t3807
  %t3834 = load i64, i64* %t3828
  %t3835 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3833, i64 %t3834, i64 2)
  %t3836 = inttoptr i64 %t3835 to %nyx_string*
  store %nyx_string* %t3836, %nyx_string** %t3837
  %t3838 = load { i64, i8* }*, { i64, i8* }** %t3811
  %t3839 = load i64, i64* %t3828
  %t3840 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %t3838, i64 %t3839)
  store i64 %t3840, i64* %t3841
  %t3842 = load { i64, i8* }*, { i64, i8* }** %t3815
  %t3843 = load i64, i64* %t3828
  %t3844 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %t3842, i64 %t3843)
  store i64 %t3844, i64* %t3845
  %t3846 = load { i64, i8* }*, { i64, i8* }** %t3819
  %t3847 = load i64, i64* %t3828
  %t3848 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3846, i64 %t3847, i64 2)
  %t3849 = inttoptr i64 %t3848 to %nyx_string*
  store %nyx_string* %t3849, %nyx_string** %t3850
  %t3851 = load { i64, i8* }*, { i64, i8* }** %t3821
  %t3852 = load %nyx_string*, %nyx_string** %t3837
  %t3853 = ptrtoint %nyx_string* %t3852 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3851, i64 %t3853, i64 2)
  %t3854 = load { i64, i8* }*, { i64, i8* }** %t3823
  %t3855 = load i64, i64* %t3841
  call void @nyx_array_push_tagged({ i64, i8* }* %t3854, i64 %t3855, i64 1)
  %t3856 = load { i64, i8* }*, { i64, i8* }** %t3825
  %t3857 = load i64, i64* %t3845
  call void @nyx_array_push_tagged({ i64, i8* }* %t3856, i64 %t3857, i64 1)
  %t3858 = load { i64, i8* }*, { i64, i8* }** %t3827
  %t3859 = load %nyx_string*, %nyx_string** %t3850
  %t3860 = ptrtoint %nyx_string* %t3859 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3858, i64 %t3860, i64 2)
  %t3861 = load i64, i64* %t3828
  %t3862 = add i64 %t3861, 1
  store i64 %t3862, i64* %t3828
  br label %while_cond994
while_end996:
  %t3863 = call { i64, i8* }* @nyx_array_new_ptr()
  %t3864 = load { i64, i8* }*, { i64, i8* }** %t3821
  %t3865 = ptrtoint { i64, i8* }* %t3864 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3863, i64 %t3865, i64 5)
  %t3866 = load { i64, i8* }*, { i64, i8* }** %t3823
  %t3867 = ptrtoint { i64, i8* }* %t3866 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3863, i64 %t3867, i64 5)
  %t3868 = load { i64, i8* }*, { i64, i8* }** %t3825
  %t3869 = ptrtoint { i64, i8* }* %t3868 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3863, i64 %t3869, i64 5)
  %t3870 = load { i64, i8* }*, { i64, i8* }** %t3827
  %t3871 = ptrtoint { i64, i8* }* %t3870 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3863, i64 %t3871, i64 5)
  ret { i64, i8* }* %t3863
}

define { i64, i8* }* @state_join(
{ i64, i8* }* %a.param, { i64, i8* }* %b.param) {
  %a.ptr = alloca { i64, i8* }*
  %b.ptr = alloca { i64, i8* }*
  %t3874 = alloca { i64, i8* }*
  %t3878 = alloca { i64, i8* }*
  %t3882 = alloca { i64, i8* }*
  %t3886 = alloca { i64, i8* }*
  %t3887 = alloca i64
  %t3896 = alloca %nyx_string*
  %t3905 = alloca { i64, i8* }*
  %t3909 = alloca { i64, i8* }*
  %t3913 = alloca { i64, i8* }*
  %t3917 = alloca { i64, i8* }*
  %t3921 = alloca { i64, i8* }*
  %t3922 = alloca i64
  %t3931 = alloca %nyx_string*
  %t3935 = alloca i64
  %t3936 = alloca i64
  %t3937 = alloca i64
  %t3949 = alloca i64
  %t3962 = alloca i64
  %t3971 = alloca %nyx_string*
  %t3982 = alloca %nyx_string*
  store { i64, i8* }* %a.param, { i64, i8* }** %a.ptr
  store { i64, i8* }* %b.param, { i64, i8* }** %b.ptr
  %t3872 = load { i64, i8* }*, { i64, i8* }** %a.ptr
  %t3873 = call { i64, i8* }* @state_copy({ i64, i8* }* %t3872)
  store { i64, i8* }* %t3873, { i64, i8* }** %t3874
  %t3875 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %t3876 = call i64 @nyx_array_get({ i64, i8* }* %t3875, i64 0)
  %t3877 = inttoptr i64 %t3876 to { i64, i8* }*
  store { i64, i8* }* %t3877, { i64, i8* }** %t3878
  %t3879 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %t3880 = call i64 @nyx_array_get({ i64, i8* }* %t3879, i64 1)
  %t3881 = inttoptr i64 %t3880 to { i64, i8* }*
  store { i64, i8* }* %t3881, { i64, i8* }** %t3882
  %t3883 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %t3884 = call i64 @nyx_array_get({ i64, i8* }* %t3883, i64 2)
  %t3885 = inttoptr i64 %t3884 to { i64, i8* }*
  store { i64, i8* }* %t3885, { i64, i8* }** %t3886
  store i64 0, i64* %t3887
  br label %while_cond997
while_cond997:
  %t3888 = load i64, i64* %t3887
  %t3889 = load { i64, i8* }*, { i64, i8* }** %t3878
  %t3890 = call i64 @nyx_array_length({ i64, i8* }* %t3889)
  %t3891 = icmp slt i64 %t3888, %t3890
  br i1 %t3891, label %while_body998, label %while_end999
while_body998:
  %t3892 = load { i64, i8* }*, { i64, i8* }** %t3878
  %t3893 = load i64, i64* %t3887
  %t3894 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3892, i64 %t3893, i64 2)
  %t3895 = inttoptr i64 %t3894 to %nyx_string*
  store %nyx_string* %t3895, %nyx_string** %t3896
  %t3897 = load { i64, i8* }*, { i64, i8* }** %t3874
  %t3898 = load %nyx_string*, %nyx_string** %t3896
  %t3899 = call i64 @place_ensure({ i64, i8* }* %t3897, %nyx_string* %t3898)
  %t3900 = load i64, i64* %t3887
  %t3901 = add i64 %t3900, 1
  store i64 %t3901, i64* %t3887
  br label %while_cond997
while_end999:
  %t3902 = load { i64, i8* }*, { i64, i8* }** %t3874
  %t3903 = call i64 @nyx_array_get({ i64, i8* }* %t3902, i64 0)
  %t3904 = inttoptr i64 %t3903 to { i64, i8* }*
  store { i64, i8* }* %t3904, { i64, i8* }** %t3905
  %t3906 = load { i64, i8* }*, { i64, i8* }** %t3874
  %t3907 = call i64 @nyx_array_get({ i64, i8* }* %t3906, i64 1)
  %t3908 = inttoptr i64 %t3907 to { i64, i8* }*
  store { i64, i8* }* %t3908, { i64, i8* }** %t3909
  %t3910 = load { i64, i8* }*, { i64, i8* }** %t3874
  %t3911 = call i64 @nyx_array_get({ i64, i8* }* %t3910, i64 2)
  %t3912 = inttoptr i64 %t3911 to { i64, i8* }*
  store { i64, i8* }* %t3912, { i64, i8* }** %t3913
  %t3914 = load { i64, i8* }*, { i64, i8* }** %t3874
  %t3915 = call i64 @nyx_array_get({ i64, i8* }* %t3914, i64 3)
  %t3916 = inttoptr i64 %t3915 to { i64, i8* }*
  store { i64, i8* }* %t3916, { i64, i8* }** %t3917
  %t3918 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %t3919 = call i64 @nyx_array_get({ i64, i8* }* %t3918, i64 3)
  %t3920 = inttoptr i64 %t3919 to { i64, i8* }*
  store { i64, i8* }* %t3920, { i64, i8* }** %t3921
  store i64 0, i64* %t3922
  br label %while_cond1000
while_cond1000:
  %t3923 = load i64, i64* %t3922
  %t3924 = load { i64, i8* }*, { i64, i8* }** %t3905
  %t3925 = call i64 @nyx_array_length({ i64, i8* }* %t3924)
  %t3926 = icmp slt i64 %t3923, %t3925
  br i1 %t3926, label %while_body1001, label %while_end1002
while_body1001:
  %t3927 = load { i64, i8* }*, { i64, i8* }** %t3905
  %t3928 = load i64, i64* %t3922
  %t3929 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3927, i64 %t3928, i64 2)
  %t3930 = inttoptr i64 %t3929 to %nyx_string*
  store %nyx_string* %t3930, %nyx_string** %t3931
  %t3932 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %t3933 = load %nyx_string*, %nyx_string** %t3931
  %t3934 = call i64 @place_index({ i64, i8* }* %t3932, %nyx_string* %t3933)
  store i64 %t3934, i64* %t3935
  store i64 0, i64* %t3936
  store i64 0, i64* %t3937
  %t3938 = load i64, i64* %t3935
  %t3939 = icmp sge i64 %t3938, 0
  br i1 %t3939, label %then1003, label %else1004
then1003:
  %t3940 = load { i64, i8* }*, { i64, i8* }** %t3882
  %t3941 = load i64, i64* %t3935
  %t3942 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %t3940, i64 %t3941)
  store i64 %t3942, i64* %t3936
  %t3943 = load { i64, i8* }*, { i64, i8* }** %t3886
  %t3944 = load i64, i64* %t3935
  %t3945 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %t3943, i64 %t3944)
  store i64 %t3945, i64* %t3937
  br label %merge1005
else1004:
  br label %merge1005
merge1005:
  %t3946 = load { i64, i8* }*, { i64, i8* }** %t3909
  %t3947 = load i64, i64* %t3922
  %t3948 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %t3946, i64 %t3947)
  store i64 %t3948, i64* %t3949
  %t3950 = load i64, i64* %t3949
  %t3951 = load i64, i64* %t3936
  %t3952 = icmp sge i64 %t3950, %t3951
  br i1 %t3952, label %then1006, label %else1007
then1006:
  %t3953 = load { i64, i8* }*, { i64, i8* }** %t3909
  %t3954 = load i64, i64* %t3922
  %t3955 = load i64, i64* %t3949
  call void @nyx_array_set({ i64, i8* }* %t3953, i64 %t3954, i64 %t3955)
  br label %merge1008
else1007:
  %t3956 = load { i64, i8* }*, { i64, i8* }** %t3909
  %t3957 = load i64, i64* %t3922
  %t3958 = load i64, i64* %t3936
  call void @nyx_array_set({ i64, i8* }* %t3956, i64 %t3957, i64 %t3958)
  br label %merge1008
merge1008:
  %t3959 = load { i64, i8* }*, { i64, i8* }** %t3913
  %t3960 = load i64, i64* %t3922
  %t3961 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %t3959, i64 %t3960)
  store i64 %t3961, i64* %t3962
  %t3963 = load i64, i64* %t3937
  %t3964 = load i64, i64* %t3962
  %t3965 = icmp sgt i64 %t3963, %t3964
  br i1 %t3965, label %then1009, label %else1010
then1009:
  %t3966 = load { i64, i8* }*, { i64, i8* }** %t3913
  %t3967 = load i64, i64* %t3922
  %t3968 = load i64, i64* %t3937
  call void @nyx_array_set({ i64, i8* }* %t3966, i64 %t3967, i64 %t3968)
  br label %merge1011
else1010:
  br label %merge1011
merge1011:
  %t3969 = getelementptr [1 x i8], [1 x i8]* @.str270, i32 0, i32 0
  %t3970 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str270.c, i8* %t3969, i64 0)
  store %nyx_string* %t3970, %nyx_string** %t3971
  %t3972 = load i64, i64* %t3935
  %t3973 = icmp sge i64 %t3972, 0
  br i1 %t3973, label %then1012, label %else1013
then1012:
  %t3974 = load { i64, i8* }*, { i64, i8* }** %t3921
  %t3975 = load i64, i64* %t3935
  %t3976 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3974, i64 %t3975, i64 2)
  %t3977 = inttoptr i64 %t3976 to %nyx_string*
  store %nyx_string* %t3977, %nyx_string** %t3971
  br label %merge1014
else1013:
  br label %merge1014
merge1014:
  %t3978 = load { i64, i8* }*, { i64, i8* }** %t3917
  %t3979 = load i64, i64* %t3922
  %t3980 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3978, i64 %t3979, i64 2)
  %t3981 = inttoptr i64 %t3980 to %nyx_string*
  store %nyx_string* %t3981, %nyx_string** %t3982
  %t3983 = load %nyx_string*, %nyx_string** %t3982
  %t3984 = getelementptr [1 x i8], [1 x i8]* @.str271, i32 0, i32 0
  %t3985 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str271.c, i8* %t3984, i64 0)
  %t3986 = call i1 @nyx_string_equals(%nyx_string* %t3983, %nyx_string* %t3985)
  br i1 %t3986, label %then1015, label %else1016
then1015:
  %t3987 = load { i64, i8* }*, { i64, i8* }** %t3917
  %t3988 = load i64, i64* %t3922
  %t3989 = load %nyx_string*, %nyx_string** %t3971
  %t3990 = ptrtoint %nyx_string* %t3989 to i64
  call void @nyx_array_set_tagged({ i64, i8* }* %t3987, i64 %t3988, i64 %t3990, i64 2)
  br label %merge1017
else1016:
  %t3991 = load %nyx_string*, %nyx_string** %t3971
  %t3992 = getelementptr [1 x i8], [1 x i8]* @.str272, i32 0, i32 0
  %t3993 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str272.c, i8* %t3992, i64 0)
  %t3994 = call i1 @nyx_string_equals(%nyx_string* %t3991, %nyx_string* %t3993)
  %t3995 = xor i1 %t3994, true
  br i1 %t3995, label %then1018, label %else1019
then1018:
  %t3996 = load %nyx_string*, %nyx_string** %t3982
  %t3997 = call i1 @reforigin_is_soft(%nyx_string* %t3996)
  br i1 %t3997, label %then1021, label %else1022
then1021:
  %t3998 = load %nyx_string*, %nyx_string** %t3971
  %t3999 = call i1 @reforigin_is_soft(%nyx_string* %t3998)
  %t4000 = xor i1 %t3999, true
  br i1 %t4000, label %then1024, label %else1025
then1024:
  %t4001 = load { i64, i8* }*, { i64, i8* }** %t3917
  %t4002 = load i64, i64* %t3922
  %t4003 = load %nyx_string*, %nyx_string** %t3971
  %t4004 = ptrtoint %nyx_string* %t4003 to i64
  call void @nyx_array_set_tagged({ i64, i8* }* %t4001, i64 %t4002, i64 %t4004, i64 2)
  br label %merge1026
else1025:
  br label %merge1026
merge1026:
  br label %merge1023
else1022:
  br label %merge1023
merge1023:
  br label %merge1020
else1019:
  br label %merge1020
merge1020:
  br label %merge1017
merge1017:
  %t4005 = load i64, i64* %t3922
  %t4006 = add i64 %t4005, 1
  store i64 %t4006, i64* %t3922
  br label %while_cond1000
while_end1002:
  %t4007 = load { i64, i8* }*, { i64, i8* }** %t3874
  ret { i64, i8* }* %t4007
}

define internal i64 @state_merge_from(
{ i64, i8* }* %dst.param, { i64, i8* }* %src.param) {
  %dst.ptr = alloca { i64, i8* }*
  %src.ptr = alloca { i64, i8* }*
  %t4011 = alloca { i64, i8* }*
  %t4015 = alloca { i64, i8* }*
  %t4019 = alloca { i64, i8* }*
  %t4023 = alloca { i64, i8* }*
  %t4027 = alloca { i64, i8* }*
  %t4030 = alloca i64
  %t4031 = alloca i64
  store { i64, i8* }* %dst.param, { i64, i8* }** %dst.ptr
  store { i64, i8* }* %src.param, { i64, i8* }** %src.ptr
  %t4008 = load { i64, i8* }*, { i64, i8* }** %dst.ptr
  %t4009 = call i64 @nyx_array_get({ i64, i8* }* %t4008, i64 0)
  %t4010 = inttoptr i64 %t4009 to { i64, i8* }*
  store { i64, i8* }* %t4010, { i64, i8* }** %t4011
  %t4012 = load { i64, i8* }*, { i64, i8* }** %dst.ptr
  %t4013 = call i64 @nyx_array_get({ i64, i8* }* %t4012, i64 1)
  %t4014 = inttoptr i64 %t4013 to { i64, i8* }*
  store { i64, i8* }* %t4014, { i64, i8* }** %t4015
  %t4016 = load { i64, i8* }*, { i64, i8* }** %dst.ptr
  %t4017 = call i64 @nyx_array_get({ i64, i8* }* %t4016, i64 3)
  %t4018 = inttoptr i64 %t4017 to { i64, i8* }*
  store { i64, i8* }* %t4018, { i64, i8* }** %t4019
  %t4020 = load { i64, i8* }*, { i64, i8* }** %src.ptr
  %t4021 = call i64 @nyx_array_get({ i64, i8* }* %t4020, i64 1)
  %t4022 = inttoptr i64 %t4021 to { i64, i8* }*
  store { i64, i8* }* %t4022, { i64, i8* }** %t4023
  %t4024 = load { i64, i8* }*, { i64, i8* }** %src.ptr
  %t4025 = call i64 @nyx_array_get({ i64, i8* }* %t4024, i64 3)
  %t4026 = inttoptr i64 %t4025 to { i64, i8* }*
  store { i64, i8* }* %t4026, { i64, i8* }** %t4027
  %t4028 = load { i64, i8* }*, { i64, i8* }** %t4011
  %t4029 = call i64 @nyx_array_length({ i64, i8* }* %t4028)
  store i64 %t4029, i64* %t4030
  store i64 0, i64* %t4031
  br label %while_cond1027
while_cond1027:
  %t4032 = load i64, i64* %t4031
  %t4033 = load i64, i64* %t4030
  %t4034 = icmp slt i64 %t4032, %t4033
  br i1 %t4034, label %while_body1028, label %while_end1029
while_body1028:
  %t4035 = load { i64, i8* }*, { i64, i8* }** %t4015
  %t4036 = load i64, i64* %t4031
  %t4037 = load { i64, i8* }*, { i64, i8* }** %t4023
  %t4038 = load i64, i64* %t4031
  %t4039 = call i64 @nyx_array_get({ i64, i8* }* %t4037, i64 %t4038)
  %t4040 = load { i64, i8* }*, { i64, i8* }** %t4023
  %t4041 = load i64, i64* %t4031
  %t4042 = call i64 @nyx_array_get_tag({ i64, i8* }* %t4040, i64 %t4041)
  call void @nyx_array_set_tagged({ i64, i8* }* %t4035, i64 %t4036, i64 %t4039, i64 %t4042)
  %t4043 = load { i64, i8* }*, { i64, i8* }** %t4019
  %t4044 = load i64, i64* %t4031
  %t4045 = load { i64, i8* }*, { i64, i8* }** %t4027
  %t4046 = load i64, i64* %t4031
  %t4047 = call i64 @nyx_array_get({ i64, i8* }* %t4045, i64 %t4046)
  %t4048 = load { i64, i8* }*, { i64, i8* }** %t4027
  %t4049 = load i64, i64* %t4031
  %t4050 = call i64 @nyx_array_get_tag({ i64, i8* }* %t4048, i64 %t4049)
  call void @nyx_array_set_tagged({ i64, i8* }* %t4043, i64 %t4044, i64 %t4047, i64 %t4050)
  %t4051 = load i64, i64* %t4031
  %t4052 = add i64 %t4051, 1
  store i64 %t4052, i64* %t4031
  br label %while_cond1027
while_end1029:
  ret i64 0
}


attributes #0 = { returns_twice }

