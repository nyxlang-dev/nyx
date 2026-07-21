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
@.str10 = private unnamed_addr constant [2 x i8] c"<\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [19 x i8] c"identifier_pattern\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [14 x i8] c"match_pattern\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [15 x i8] c"struct_pattern\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [21 x i8] c"nested_match_pattern\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [19 x i8] c"identifier_pattern\00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [14 x i8] c"match_pattern\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [11 x i8] c"NYX_BORROW\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [6 x i8] c"error\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [5 x i8] c"warn\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [8 x i8] c"addr_of\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [12 x i8] c"addr_of_mut\00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [1 x i8] c"\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [1 x i8] c"\00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [5 x i8] c"self\00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [1 x i8] c"\00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [8 x i8] c"addr_of\00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [12 x i8] c"addr_of_mut\00"
@.str28.c = internal global %nyx_string* null
@.str29 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str29.c = internal global %nyx_string* null
@.str30 = private unnamed_addr constant [1 x i8] c"\00"
@.str30.c = internal global %nyx_string* null
@.str31 = private unnamed_addr constant [5 x i8] c"call\00"
@.str31.c = internal global %nyx_string* null
@.str32 = private unnamed_addr constant [1 x i8] c"\00"
@.str32.c = internal global %nyx_string* null
@.str33 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str33.c = internal global %nyx_string* null
@.str34 = private unnamed_addr constant [1 x i8] c"\00"
@.str34.c = internal global %nyx_string* null
@.str35 = private unnamed_addr constant [1 x i8] c"\00"
@.str35.c = internal global %nyx_string* null
@.str36 = private unnamed_addr constant [1 x i8] c"\00"
@.str36.c = internal global %nyx_string* null
@.str37 = private unnamed_addr constant [1 x i8] c"\00"
@.str37.c = internal global %nyx_string* null
@.str38 = private unnamed_addr constant [1 x i8] c"\00"
@.str38.c = internal global %nyx_string* null
@.str39 = private unnamed_addr constant [6 x i8] c"array\00"
@.str39.c = internal global %nyx_string* null
@.str40 = private unnamed_addr constant [10 x i8] c"tuple_lit\00"
@.str40.c = internal global %nyx_string* null
@.str41 = private unnamed_addr constant [1 x i8] c"\00"
@.str41.c = internal global %nyx_string* null
@.str42 = private unnamed_addr constant [1 x i8] c"\00"
@.str42.c = internal global %nyx_string* null
@.str43 = private unnamed_addr constant [12 x i8] c"struct_init\00"
@.str43.c = internal global %nyx_string* null
@.str44 = private unnamed_addr constant [1 x i8] c"\00"
@.str44.c = internal global %nyx_string* null
@.str45 = private unnamed_addr constant [1 x i8] c"\00"
@.str45.c = internal global %nyx_string* null
@.str46 = private unnamed_addr constant [7 x i8] c"number\00"
@.str46.c = internal global %nyx_string* null
@.str47 = private unnamed_addr constant [10 x i8] c"float_lit\00"
@.str47.c = internal global %nyx_string* null
@.str48 = private unnamed_addr constant [7 x i8] c"string\00"
@.str48.c = internal global %nyx_string* null
@.str49 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str49.c = internal global %nyx_string* null
@.str50 = private unnamed_addr constant [5 x i8] c"char\00"
@.str50.c = internal global %nyx_string* null
@.str51 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str51.c = internal global %nyx_string* null
@.str52 = private unnamed_addr constant [1 x i8] c"\00"
@.str52.c = internal global %nyx_string* null
@.str53 = private unnamed_addr constant [30 x i8] c"NYX1220: use of freed value '\00"
@.str53.c = internal global %nyx_string* null
@.str54 = private unnamed_addr constant [2 x i8] c"'\00"
@.str54.c = internal global %nyx_string* null
@.str55 = private unnamed_addr constant [8 x i8] c" (line \00"
@.str55.c = internal global %nyx_string* null
@.str56 = private unnamed_addr constant [2 x i8] c")\00"
@.str56.c = internal global %nyx_string* null
@.str57 = private unnamed_addr constant [8 x i8] c"NYX1201\00"
@.str57.c = internal global %nyx_string* null
@.str58 = private unnamed_addr constant [8 x i8] c"NYX1230\00"
@.str58.c = internal global %nyx_string* null
@.str59 = private unnamed_addr constant [23 x i8] c": use of moved value '\00"
@.str59.c = internal global %nyx_string* null
@.str60 = private unnamed_addr constant [2 x i8] c"'\00"
@.str60.c = internal global %nyx_string* null
@.str61 = private unnamed_addr constant [8 x i8] c" (line \00"
@.str61.c = internal global %nyx_string* null
@.str62 = private unnamed_addr constant [2 x i8] c")\00"
@.str62.c = internal global %nyx_string* null
@.str63 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str63.c = internal global %nyx_string* null
@.str64 = private unnamed_addr constant [6 x i8] c"error\00"
@.str64.c = internal global %nyx_string* null
@.str65 = private unnamed_addr constant [9 x i8] c"wildcard\00"
@.str65.c = internal global %nyx_string* null
@.str66 = private unnamed_addr constant [6 x i8] c"break\00"
@.str66.c = internal global %nyx_string* null
@.str67 = private unnamed_addr constant [9 x i8] c"continue\00"
@.str67.c = internal global %nyx_string* null
@.str68 = private unnamed_addr constant [11 x i8] c"await_expr\00"
@.str68.c = internal global %nyx_string* null
@.str69 = private unnamed_addr constant [7 x i8] c"struct\00"
@.str69.c = internal global %nyx_string* null
@.str70 = private unnamed_addr constant [9 x i8] c"enum_def\00"
@.str70.c = internal global %nyx_string* null
@.str71 = private unnamed_addr constant [10 x i8] c"trait_def\00"
@.str71.c = internal global %nyx_string* null
@.str72 = private unnamed_addr constant [7 x i8] c"import\00"
@.str72.c = internal global %nyx_string* null
@.str73 = private unnamed_addr constant [14 x i8] c"import_module\00"
@.str73.c = internal global %nyx_string* null
@.str74 = private unnamed_addr constant [12 x i8] c"module_decl\00"
@.str74.c = internal global %nyx_string* null
@.str75 = private unnamed_addr constant [11 x i8] c"type_alias\00"
@.str75.c = internal global %nyx_string* null
@.str76 = private unnamed_addr constant [10 x i8] c"extern_fn\00"
@.str76.c = internal global %nyx_string* null
@.str77 = private unnamed_addr constant [14 x i8] c"match_pattern\00"
@.str77.c = internal global %nyx_string* null
@.str78 = private unnamed_addr constant [13 x i8] c"enum_variant\00"
@.str78.c = internal global %nyx_string* null
@.str79 = private unnamed_addr constant [7 x i8] c"sizeof\00"
@.str79.c = internal global %nyx_string* null
@.str80 = private unnamed_addr constant [8 x i8] c"alignof\00"
@.str80.c = internal global %nyx_string* null
@.str81 = private unnamed_addr constant [11 x i8] c"inline_asm\00"
@.str81.c = internal global %nyx_string* null
@.str82 = private unnamed_addr constant [15 x i8] c"inline_asm_gcc\00"
@.str82.c = internal global %nyx_string* null
@.str83 = private unnamed_addr constant [13 x i8] c"generic_call\00"
@.str83.c = internal global %nyx_string* null
@.str84 = private unnamed_addr constant [10 x i8] c"tuple_lit\00"
@.str84.c = internal global %nyx_string* null
@.str85 = private unnamed_addr constant [12 x i8] c"tuple_index\00"
@.str85.c = internal global %nyx_string* null
@.str86 = private unnamed_addr constant [6 x i8] c"block\00"
@.str86.c = internal global %nyx_string* null
@.str87 = private unnamed_addr constant [3 x i8] c"if\00"
@.str87.c = internal global %nyx_string* null
@.str88 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str88.c = internal global %nyx_string* null
@.str89 = private unnamed_addr constant [6 x i8] c"while\00"
@.str89.c = internal global %nyx_string* null
@.str90 = private unnamed_addr constant [4 x i8] c"for\00"
@.str90.c = internal global %nyx_string* null
@.str91 = private unnamed_addr constant [7 x i8] c"return\00"
@.str91.c = internal global %nyx_string* null
@.str92 = private unnamed_addr constant [1 x i8] c"\00"
@.str92.c = internal global %nyx_string* null
@.str93 = private unnamed_addr constant [30 x i8] c"NYX1223: reference to local '\00"
@.str93.c = internal global %nyx_string* null
@.str94 = private unnamed_addr constant [38 x i8] c"' may escape via a returning function\00"
@.str94.c = internal global %nyx_string* null
@.str95 = private unnamed_addr constant [8 x i8] c" (line \00"
@.str95.c = internal global %nyx_string* null
@.str96 = private unnamed_addr constant [2 x i8] c")\00"
@.str96.c = internal global %nyx_string* null
@.str97 = private unnamed_addr constant [30 x i8] c"NYX1222: reference to local '\00"
@.str97.c = internal global %nyx_string* null
@.str98 = private unnamed_addr constant [36 x i8] c"' escapes the function that owns it\00"
@.str98.c = internal global %nyx_string* null
@.str99 = private unnamed_addr constant [8 x i8] c" (line \00"
@.str99.c = internal global %nyx_string* null
@.str100 = private unnamed_addr constant [2 x i8] c")\00"
@.str100.c = internal global %nyx_string* null
@.str101 = private unnamed_addr constant [4 x i8] c"let\00"
@.str101.c = internal global %nyx_string* null
@.str102 = private unnamed_addr constant [1 x i8] c"\00"
@.str102.c = internal global %nyx_string* null
@.str103 = private unnamed_addr constant [6 x i8] c"const\00"
@.str103.c = internal global %nyx_string* null
@.str104 = private unnamed_addr constant [9 x i8] c"function\00"
@.str104.c = internal global %nyx_string* null
@.str105 = private unnamed_addr constant [9 x i8] c"async_fn\00"
@.str105.c = internal global %nyx_string* null
@.str106 = private unnamed_addr constant [5 x i8] c"impl\00"
@.str106.c = internal global %nyx_string* null
@.str107 = private unnamed_addr constant [11 x i8] c"impl_trait\00"
@.str107.c = internal global %nyx_string* null
@.str108 = private unnamed_addr constant [7 x i8] c"export\00"
@.str108.c = internal global %nyx_string* null
@.str109 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str109.c = internal global %nyx_string* null
@.str110 = private unnamed_addr constant [5 x i8] c"unop\00"
@.str110.c = internal global %nyx_string* null
@.str111 = private unnamed_addr constant [5 x i8] c"call\00"
@.str111.c = internal global %nyx_string* null
@.str112 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str112.c = internal global %nyx_string* null
@.str113 = private unnamed_addr constant [5 x i8] c"free\00"
@.str113.c = internal global %nyx_string* null
@.str114 = private unnamed_addr constant [1 x i8] c"\00"
@.str114.c = internal global %nyx_string* null
@.str115 = private unnamed_addr constant [26 x i8] c"NYX1221: double free of '\00"
@.str115.c = internal global %nyx_string* null
@.str116 = private unnamed_addr constant [2 x i8] c"'\00"
@.str116.c = internal global %nyx_string* null
@.str117 = private unnamed_addr constant [8 x i8] c" (line \00"
@.str117.c = internal global %nyx_string* null
@.str118 = private unnamed_addr constant [2 x i8] c")\00"
@.str118.c = internal global %nyx_string* null
@.str119 = private unnamed_addr constant [6 x i8] c"array\00"
@.str119.c = internal global %nyx_string* null
@.str120 = private unnamed_addr constant [12 x i8] c"map_literal\00"
@.str120.c = internal global %nyx_string* null
@.str121 = private unnamed_addr constant [6 x i8] c"index\00"
@.str121.c = internal global %nyx_string* null
@.str122 = private unnamed_addr constant [6 x i8] c"range\00"
@.str122.c = internal global %nyx_string* null
@.str123 = private unnamed_addr constant [7 x i8] c"assign\00"
@.str123.c = internal global %nyx_string* null
@.str124 = private unnamed_addr constant [1 x i8] c"\00"
@.str124.c = internal global %nyx_string* null
@.str125 = private unnamed_addr constant [1 x i8] c"\00"
@.str125.c = internal global %nyx_string* null
@.str126 = private unnamed_addr constant [30 x i8] c"NYX1223: reference to local '\00"
@.str126.c = internal global %nyx_string* null
@.str127 = private unnamed_addr constant [38 x i8] c"' may escape via a returning function\00"
@.str127.c = internal global %nyx_string* null
@.str128 = private unnamed_addr constant [8 x i8] c" (line \00"
@.str128.c = internal global %nyx_string* null
@.str129 = private unnamed_addr constant [2 x i8] c")\00"
@.str129.c = internal global %nyx_string* null
@.str130 = private unnamed_addr constant [30 x i8] c"NYX1222: reference to local '\00"
@.str130.c = internal global %nyx_string* null
@.str131 = private unnamed_addr constant [39 x i8] c"' escapes into a longer-lived location\00"
@.str131.c = internal global %nyx_string* null
@.str132 = private unnamed_addr constant [8 x i8] c" (line \00"
@.str132.c = internal global %nyx_string* null
@.str133 = private unnamed_addr constant [2 x i8] c")\00"
@.str133.c = internal global %nyx_string* null
@.str134 = private unnamed_addr constant [16 x i8] c"compound_assign\00"
@.str134.c = internal global %nyx_string* null
@.str135 = private unnamed_addr constant [13 x i8] c"index_assign\00"
@.str135.c = internal global %nyx_string* null
@.str136 = private unnamed_addr constant [1 x i8] c"\00"
@.str136.c = internal global %nyx_string* null
@.str137 = private unnamed_addr constant [1 x i8] c"\00"
@.str137.c = internal global %nyx_string* null
@.str138 = private unnamed_addr constant [30 x i8] c"NYX1223: reference to local '\00"
@.str138.c = internal global %nyx_string* null
@.str139 = private unnamed_addr constant [38 x i8] c"' may escape via a returning function\00"
@.str139.c = internal global %nyx_string* null
@.str140 = private unnamed_addr constant [8 x i8] c" (line \00"
@.str140.c = internal global %nyx_string* null
@.str141 = private unnamed_addr constant [2 x i8] c")\00"
@.str141.c = internal global %nyx_string* null
@.str142 = private unnamed_addr constant [30 x i8] c"NYX1222: reference to local '\00"
@.str142.c = internal global %nyx_string* null
@.str143 = private unnamed_addr constant [39 x i8] c"' escapes into a longer-lived location\00"
@.str143.c = internal global %nyx_string* null
@.str144 = private unnamed_addr constant [8 x i8] c" (line \00"
@.str144.c = internal global %nyx_string* null
@.str145 = private unnamed_addr constant [2 x i8] c")\00"
@.str145.c = internal global %nyx_string* null
@.str146 = private unnamed_addr constant [1 x i8] c"\00"
@.str146.c = internal global %nyx_string* null
@.str147 = private unnamed_addr constant [13 x i8] c"field_assign\00"
@.str147.c = internal global %nyx_string* null
@.str148 = private unnamed_addr constant [1 x i8] c"\00"
@.str148.c = internal global %nyx_string* null
@.str149 = private unnamed_addr constant [1 x i8] c"\00"
@.str149.c = internal global %nyx_string* null
@.str150 = private unnamed_addr constant [30 x i8] c"NYX1223: reference to local '\00"
@.str150.c = internal global %nyx_string* null
@.str151 = private unnamed_addr constant [38 x i8] c"' may escape via a returning function\00"
@.str151.c = internal global %nyx_string* null
@.str152 = private unnamed_addr constant [8 x i8] c" (line \00"
@.str152.c = internal global %nyx_string* null
@.str153 = private unnamed_addr constant [2 x i8] c")\00"
@.str153.c = internal global %nyx_string* null
@.str154 = private unnamed_addr constant [30 x i8] c"NYX1222: reference to local '\00"
@.str154.c = internal global %nyx_string* null
@.str155 = private unnamed_addr constant [39 x i8] c"' escapes into a longer-lived location\00"
@.str155.c = internal global %nyx_string* null
@.str156 = private unnamed_addr constant [8 x i8] c" (line \00"
@.str156.c = internal global %nyx_string* null
@.str157 = private unnamed_addr constant [2 x i8] c")\00"
@.str157.c = internal global %nyx_string* null
@.str158 = private unnamed_addr constant [1 x i8] c"\00"
@.str158.c = internal global %nyx_string* null
@.str159 = private unnamed_addr constant [12 x i8] c"struct_init\00"
@.str159.c = internal global %nyx_string* null
@.str160 = private unnamed_addr constant [13 x i8] c"field_access\00"
@.str160.c = internal global %nyx_string* null
@.str161 = private unnamed_addr constant [12 x i8] c"method_call\00"
@.str161.c = internal global %nyx_string* null
@.str162 = private unnamed_addr constant [6 x i8] c"match\00"
@.str162.c = internal global %nyx_string* null
@.str163 = private unnamed_addr constant [10 x i8] c"match_arm\00"
@.str163.c = internal global %nyx_string* null
@.str164 = private unnamed_addr constant [7 x i8] c"try_op\00"
@.str164.c = internal global %nyx_string* null
@.str165 = private unnamed_addr constant [5 x i8] c"cast\00"
@.str165.c = internal global %nyx_string* null
@.str166 = private unnamed_addr constant [13 x i8] c"unsafe_block\00"
@.str166.c = internal global %nyx_string* null
@.str167 = private unnamed_addr constant [8 x i8] c"addr_of\00"
@.str167.c = internal global %nyx_string* null
@.str168 = private unnamed_addr constant [1 x i8] c"\00"
@.str168.c = internal global %nyx_string* null
@.str169 = private unnamed_addr constant [25 x i8] c"NYX1211: cannot borrow '\00"
@.str169.c = internal global %nyx_string* null
@.str170 = private unnamed_addr constant [41 x i8] c"' as immutable while borrowed as mutable\00"
@.str170.c = internal global %nyx_string* null
@.str171 = private unnamed_addr constant [8 x i8] c" (line \00"
@.str171.c = internal global %nyx_string* null
@.str172 = private unnamed_addr constant [2 x i8] c")\00"
@.str172.c = internal global %nyx_string* null
@.str173 = private unnamed_addr constant [12 x i8] c"addr_of_mut\00"
@.str173.c = internal global %nyx_string* null
@.str174 = private unnamed_addr constant [1 x i8] c"\00"
@.str174.c = internal global %nyx_string* null
@.str175 = private unnamed_addr constant [25 x i8] c"NYX1210: cannot borrow '\00"
@.str175.c = internal global %nyx_string* null
@.str176 = private unnamed_addr constant [38 x i8] c"' as mutable more than once at a time\00"
@.str176.c = internal global %nyx_string* null
@.str177 = private unnamed_addr constant [8 x i8] c" (line \00"
@.str177.c = internal global %nyx_string* null
@.str178 = private unnamed_addr constant [2 x i8] c")\00"
@.str178.c = internal global %nyx_string* null
@.str179 = private unnamed_addr constant [25 x i8] c"NYX1210: cannot borrow '\00"
@.str179.c = internal global %nyx_string* null
@.str180 = private unnamed_addr constant [46 x i8] c"' as mutable while also borrowed as immutable\00"
@.str180.c = internal global %nyx_string* null
@.str181 = private unnamed_addr constant [8 x i8] c" (line \00"
@.str181.c = internal global %nyx_string* null
@.str182 = private unnamed_addr constant [2 x i8] c")\00"
@.str182.c = internal global %nyx_string* null
@.str183 = private unnamed_addr constant [6 x i8] c"deref\00"
@.str183.c = internal global %nyx_string* null
@.str184 = private unnamed_addr constant [13 x i8] c"deref_assign\00"
@.str184.c = internal global %nyx_string* null
@.str185 = private unnamed_addr constant [6 x i8] c"defer\00"
@.str185.c = internal global %nyx_string* null
@.str186 = private unnamed_addr constant [10 x i8] c"try_catch\00"
@.str186.c = internal global %nyx_string* null
@.str187 = private unnamed_addr constant [6 x i8] c"throw\00"
@.str187.c = internal global %nyx_string* null
@.str188 = private unnamed_addr constant [22 x i8] c"let_destructure_tuple\00"
@.str188.c = internal global %nyx_string* null
@.str189 = private unnamed_addr constant [10 x i8] c"test_decl\00"
@.str189.c = internal global %nyx_string* null
@.str190 = private unnamed_addr constant [7 x i8] c"assert\00"
@.str190.c = internal global %nyx_string* null
@.str191 = private unnamed_addr constant [5 x i8] c"self\00"
@.str191.c = internal global %nyx_string* null
@.str192 = private unnamed_addr constant [2 x i8] c"*\00"
@.str192.c = internal global %nyx_string* null
@.str193 = private unnamed_addr constant [2 x i8] c"&\00"
@.str193.c = internal global %nyx_string* null
@.str194 = private unnamed_addr constant [8 x i8] c"NYX1220\00"
@.str194.c = internal global %nyx_string* null
@.str195 = private unnamed_addr constant [8 x i8] c"NYX1221\00"
@.str195.c = internal global %nyx_string* null
@.str196 = private unnamed_addr constant [8 x i8] c"NYX1230\00"
@.str196.c = internal global %nyx_string* null
@.str197 = private unnamed_addr constant [8 x i8] c"NYX1222\00"
@.str197.c = internal global %nyx_string* null
@.str198 = private unnamed_addr constant [7 x i8] c"export\00"
@.str198.c = internal global %nyx_string* null
@.str199 = private unnamed_addr constant [7 x i8] c"struct\00"
@.str199.c = internal global %nyx_string* null
@.str200 = private unnamed_addr constant [5 x i8] c"enum\00"
@.str200.c = internal global %nyx_string* null
@.str201 = private unnamed_addr constant [7 x i8] c"affine\00"
@.str201.c = internal global %nyx_string* null
@.str202 = private unnamed_addr constant [7 x i8] c"export\00"
@.str202.c = internal global %nyx_string* null
@.str203 = private unnamed_addr constant [7 x i8] c"struct\00"
@.str203.c = internal global %nyx_string* null
@.str204 = private unnamed_addr constant [2 x i8] c"'\00"
@.str204.c = internal global %nyx_string* null
@.str205 = private unnamed_addr constant [2 x i8] c"'\00"
@.str205.c = internal global %nyx_string* null
@.str206 = private unnamed_addr constant [2 x i8] c",\00"
@.str206.c = internal global %nyx_string* null
@.str207 = private unnamed_addr constant [2 x i8] c">\00"
@.str207.c = internal global %nyx_string* null
@.str208 = private unnamed_addr constant [2 x i8] c"<\00"
@.str208.c = internal global %nyx_string* null
@.str209 = private unnamed_addr constant [2 x i8] c" \00"
@.str209.c = internal global %nyx_string* null
@.str210 = private unnamed_addr constant [2 x i8] c"&\00"
@.str210.c = internal global %nyx_string* null
@.str211 = private unnamed_addr constant [2 x i8] c"<\00"
@.str211.c = internal global %nyx_string* null
@.str212 = private unnamed_addr constant [7 x i8] c"export\00"
@.str212.c = internal global %nyx_string* null
@.str213 = private unnamed_addr constant [9 x i8] c"function\00"
@.str213.c = internal global %nyx_string* null
@.str214 = private unnamed_addr constant [9 x i8] c"async_fn\00"
@.str214.c = internal global %nyx_string* null
@.str215 = private unnamed_addr constant [5 x i8] c"self\00"
@.str215.c = internal global %nyx_string* null
@.str216 = private unnamed_addr constant [2 x i8] c"&\00"
@.str216.c = internal global %nyx_string* null
@.str217 = private unnamed_addr constant [1 x i8] c"\00"
@.str217.c = internal global %nyx_string* null
@.str218 = private unnamed_addr constant [10 x i8] c"__retlt__\00"
@.str218.c = internal global %nyx_string* null
@.str219 = private unnamed_addr constant [12 x i8] c"__paramlt__\00"
@.str219.c = internal global %nyx_string* null
@.str220 = private unnamed_addr constant [7 x i8] c"  ✗ \00"
@.str220.c = internal global %nyx_string* null
@.str221 = private unnamed_addr constant [15 x i8] c"  ⚠ borrow: \00"
@.str221.c = internal global %nyx_string* null
@.str222 = private unnamed_addr constant [9 x i8] c"TyString\00"
@.str222.c = internal global %nyx_string* null
@.str223 = private unnamed_addr constant [8 x i8] c"TyArray\00"
@.str223.c = internal global %nyx_string* null
@.str224 = private unnamed_addr constant [6 x i8] c"TyMap\00"
@.str224.c = internal global %nyx_string* null
@.str225 = private unnamed_addr constant [9 x i8] c"TyStruct\00"
@.str225.c = internal global %nyx_string* null
@.str226 = private unnamed_addr constant [7 x i8] c"TyEnum\00"
@.str226.c = internal global %nyx_string* null
@.str227 = private unnamed_addr constant [9 x i8] c"TyOption\00"
@.str227.c = internal global %nyx_string* null
@.str228 = private unnamed_addr constant [9 x i8] c"TyResult\00"
@.str228.c = internal global %nyx_string* null
@.str229 = private unnamed_addr constant [5 x i8] c"TyFn\00"
@.str229.c = internal global %nyx_string* null
@.str230 = private unnamed_addr constant [6 x i8] c"TyInt\00"
@.str230.c = internal global %nyx_string* null
@.str231 = private unnamed_addr constant [8 x i8] c"TyFloat\00"
@.str231.c = internal global %nyx_string* null
@.str232 = private unnamed_addr constant [7 x i8] c"TyBool\00"
@.str232.c = internal global %nyx_string* null
@.str233 = private unnamed_addr constant [7 x i8] c"TyChar\00"
@.str233.c = internal global %nyx_string* null
@.str234 = private unnamed_addr constant [7 x i8] c"TyUnit\00"
@.str234.c = internal global %nyx_string* null
@.str235 = private unnamed_addr constant [8 x i8] c"TySized\00"
@.str235.c = internal global %nyx_string* null
@.str236 = private unnamed_addr constant [6 x i8] c"TyRef\00"
@.str236.c = internal global %nyx_string* null
@.str237 = private unnamed_addr constant [9 x i8] c"TyRefMut\00"
@.str237.c = internal global %nyx_string* null
@.str238 = private unnamed_addr constant [6 x i8] c"TyPtr\00"
@.str238.c = internal global %nyx_string* null
@.str239 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str239.c = internal global %nyx_string* null
@.str240 = private unnamed_addr constant [1 x i8] c"\00"
@.str240.c = internal global %nyx_string* null
@.str241 = private unnamed_addr constant [13 x i8] c"field_access\00"
@.str241.c = internal global %nyx_string* null
@.str242 = private unnamed_addr constant [6 x i8] c"index\00"
@.str242.c = internal global %nyx_string* null
@.str243 = private unnamed_addr constant [6 x i8] c"deref\00"
@.str243.c = internal global %nyx_string* null
@.str244 = private unnamed_addr constant [8 x i8] c"addr_of\00"
@.str244.c = internal global %nyx_string* null
@.str245 = private unnamed_addr constant [12 x i8] c"addr_of_mut\00"
@.str245.c = internal global %nyx_string* null
@.str246 = private unnamed_addr constant [1 x i8] c"\00"
@.str246.c = internal global %nyx_string* null
@.str247 = private unnamed_addr constant [13 x i8] c"field_access\00"
@.str247.c = internal global %nyx_string* null
@.str248 = private unnamed_addr constant [1 x i8] c"\00"
@.str248.c = internal global %nyx_string* null
@.str249 = private unnamed_addr constant [1 x i8] c"\00"
@.str249.c = internal global %nyx_string* null
@.str250 = private unnamed_addr constant [2 x i8] c".\00"
@.str250.c = internal global %nyx_string* null
@.str251 = private unnamed_addr constant [1 x i8] c"\00"
@.str251.c = internal global %nyx_string* null
@.str252 = private unnamed_addr constant [1 x i8] c"\00"
@.str252.c = internal global %nyx_string* null
@.str253 = private unnamed_addr constant [2 x i8] c"?\00"
@.str253.c = internal global %nyx_string* null
@.str254 = private unnamed_addr constant [2 x i8] c"?\00"
@.str254.c = internal global %nyx_string* null
@.str255 = private unnamed_addr constant [1 x i8] c"\00"
@.str255.c = internal global %nyx_string* null
@.str256 = private unnamed_addr constant [1 x i8] c"\00"
@.str256.c = internal global %nyx_string* null
@.str257 = private unnamed_addr constant [1 x i8] c"\00"
@.str257.c = internal global %nyx_string* null
@.str258 = private unnamed_addr constant [1 x i8] c"\00"
@.str258.c = internal global %nyx_string* null
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


define internal %ASTNode @bc_node_at(
%ASTNode %node.param, i64 %index.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %index.ptr = alloca i64
  store i64 %index.param, i64* %index.ptr
  %1 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %2 = load { i64, i8* }*, { i64, i8* }** %1
  %3 = alloca { i64, i8* }*
  store { i64, i8* }* %2, { i64, i8* }** %3
  %4 = load { i64, i8* }*, { i64, i8* }** %3
  %5 = load i64, i64* %index.ptr
  %6 = call i64 @nyx_array_get({ i64, i8* }* %4, i64 %5)
  %7 = inttoptr i64 %6 to { i64, i8* }*
  %8 = call i64 @nyx_array_get({ i64, i8* }* %7, i64 0)
  %9 = call i64 @nyx_array_get({ i64, i8* }* %7, i64 1)
  %10 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %7, i64 2)
  %11 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %7, i64 3)
  %12 = inttoptr i64 %8 to %nyx_string*
  %13 = inttoptr i64 %9 to { i64, i8* }*
  %14 = alloca %ASTNode
  %15 = getelementptr inbounds %ASTNode, %ASTNode* %14, i32 0, i32 0
  store %nyx_string* %12, %nyx_string** %15
  %16 = getelementptr inbounds %ASTNode, %ASTNode* %14, i32 0, i32 1
  store { i64, i8* }* %13, { i64, i8* }** %16
  %17 = getelementptr inbounds %ASTNode, %ASTNode* %14, i32 0, i32 2
  store i64 %10, i64* %17
  %18 = getelementptr inbounds %ASTNode, %ASTNode* %14, i32 0, i32 3
  store i64 %11, i64* %18
  %19 = load %ASTNode, %ASTNode* %14
  %20 = alloca %ASTNode
  store %ASTNode %19, %ASTNode* %20
  %21 = load %ASTNode, %ASTNode* %20
  ret %ASTNode %21
}

define internal { i64, i8* }* @bc_array_at(
%ASTNode %node.param, i64 %index.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %index.ptr = alloca i64
  store i64 %index.param, i64* %index.ptr
  %22 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %23 = load { i64, i8* }*, { i64, i8* }** %22
  %24 = alloca { i64, i8* }*
  store { i64, i8* }* %23, { i64, i8* }** %24
  %25 = load { i64, i8* }*, { i64, i8* }** %24
  %26 = load i64, i64* %index.ptr
  %27 = call i64 @nyx_array_get({ i64, i8* }* %25, i64 %26)
  %28 = inttoptr i64 %27 to { i64, i8* }*
  %29 = alloca { i64, i8* }*
  store { i64, i8* }* %28, { i64, i8* }** %29
  %30 = load { i64, i8* }*, { i64, i8* }** %29
  ret { i64, i8* }* %30
}

define internal %ASTNode @bc_root_of(
{ i64, i8* }* %arr.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %31 = call { i64, i8* }* @nyx_array_new_ptr()
  %32 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %33 = bitcast { i64, i8* }* %32 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %31, i8* %33)
  %34 = alloca { i64, i8* }*
  store { i64, i8* }* %31, { i64, i8* }** %34
  %35 = load { i64, i8* }*, { i64, i8* }** %34
  %36 = call i64 @nyx_array_get({ i64, i8* }* %35, i64 0)
  %37 = inttoptr i64 %36 to { i64, i8* }*
  %38 = call i64 @nyx_array_get({ i64, i8* }* %37, i64 0)
  %39 = call i64 @nyx_array_get({ i64, i8* }* %37, i64 1)
  %40 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %37, i64 2)
  %41 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %37, i64 3)
  %42 = inttoptr i64 %38 to %nyx_string*
  %43 = inttoptr i64 %39 to { i64, i8* }*
  %44 = alloca %ASTNode
  %45 = getelementptr inbounds %ASTNode, %ASTNode* %44, i32 0, i32 0
  store %nyx_string* %42, %nyx_string** %45
  %46 = getelementptr inbounds %ASTNode, %ASTNode* %44, i32 0, i32 1
  store { i64, i8* }* %43, { i64, i8* }** %46
  %47 = getelementptr inbounds %ASTNode, %ASTNode* %44, i32 0, i32 2
  store i64 %40, i64* %47
  %48 = getelementptr inbounds %ASTNode, %ASTNode* %44, i32 0, i32 3
  store i64 %41, i64* %48
  %49 = load %ASTNode, %ASTNode* %44
  %50 = alloca %ASTNode
  store %ASTNode %49, %ASTNode* %50
  %51 = load %ASTNode, %ASTNode* %50
  ret %ASTNode %51
}

define internal i1 @ann_is_move_type(
%nyx_string* %ann.param) {
  %ann.ptr = alloca %nyx_string*
  store %nyx_string* %ann.param, %nyx_string** %ann.ptr
  %52 = load %nyx_string*, %nyx_string** %ann.ptr
  %53 = getelementptr [7 x i8], [7 x i8]* @.str0, i32 0, i32 0
  %54 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %53)
  %55 = call i1 @nyx_string_equals(%nyx_string* %52, %nyx_string* %54)
  br i1 %55, label %then0, label %else1
then0:
  ret i1 1
else1:
  br label %merge2
merge2:
  %56 = load %nyx_string*, %nyx_string** %ann.ptr
  %57 = getelementptr [6 x i8], [6 x i8]* @.str1, i32 0, i32 0
  %58 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %57)
  %59 = call i1 @nyx_string_equals(%nyx_string* %56, %nyx_string* %58)
  br i1 %59, label %then3, label %else4
then3:
  ret i1 1
else4:
  br label %merge5
merge5:
  %60 = load %nyx_string*, %nyx_string** %ann.ptr
  %61 = getelementptr [4 x i8], [4 x i8]* @.str2, i32 0, i32 0
  %62 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %61)
  %63 = call i1 @nyx_string_equals(%nyx_string* %60, %nyx_string* %62)
  br i1 %63, label %then6, label %else7
then6:
  ret i1 1
else7:
  br label %merge8
merge8:
  %64 = load %nyx_string*, %nyx_string** %ann.ptr
  %65 = getelementptr [7 x i8], [7 x i8]* @.str3, i32 0, i32 0
  %66 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %65)
  %67 = call i1 @nyx_string_equals(%nyx_string* %64, %nyx_string* %66)
  br i1 %67, label %then9, label %else10
then9:
  ret i1 1
else10:
  br label %merge11
merge11:
  %68 = load %nyx_string*, %nyx_string** %ann.ptr
  %69 = getelementptr [7 x i8], [7 x i8]* @.str4, i32 0, i32 0
  %70 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %69)
  %71 = call i1 @nyx_string_equals(%nyx_string* %68, %nyx_string* %70)
  br i1 %71, label %then12, label %else13
then12:
  ret i1 1
else13:
  br label %merge14
merge14:
  %72 = load %nyx_string*, %nyx_string** %ann.ptr
  %73 = getelementptr [14 x i8], [14 x i8]* @.str5, i32 0, i32 0
  %74 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %73)
  %75 = call i1 @nyx_string_equals(%nyx_string* %72, %nyx_string* %74)
  br i1 %75, label %then15, label %else16
then15:
  ret i1 1
else16:
  br label %merge17
merge17:
  %76 = load %nyx_string*, %nyx_string** %ann.ptr
  %77 = call i64 @nyx_string_byte_length(%nyx_string* %76)
  %78 = alloca i64
  store i64 %77, i64* %78
  %79 = load i64, i64* %78
  %80 = icmp sge i64 %79, 6
  br i1 %80, label %then18, label %else19
then18:
  %81 = load %nyx_string*, %nyx_string** %ann.ptr
  %82 = call %nyx_string* @nyx_string_substring(%nyx_string* %81, i64 0, i64 6)
  %83 = getelementptr [7 x i8], [7 x i8]* @.str6, i32 0, i32 0
  %84 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %83)
  %85 = call i1 @nyx_string_equals(%nyx_string* %82, %nyx_string* %84)
  br i1 %85, label %then21, label %else22
then21:
  ret i1 1
else22:
  br label %merge23
merge23:
  br label %merge20
else19:
  br label %merge20
merge20:
  %86 = load i64, i64* %78
  %87 = icmp sge i64 %86, 4
  br i1 %87, label %then24, label %else25
then24:
  %88 = load %nyx_string*, %nyx_string** %ann.ptr
  %89 = call %nyx_string* @nyx_string_substring(%nyx_string* %88, i64 0, i64 4)
  %90 = getelementptr [5 x i8], [5 x i8]* @.str7, i32 0, i32 0
  %91 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %90)
  %92 = call i1 @nyx_string_equals(%nyx_string* %89, %nyx_string* %91)
  br i1 %92, label %then27, label %else28
then27:
  ret i1 1
else28:
  br label %merge29
merge29:
  br label %merge26
else25:
  br label %merge26
merge26:
  %93 = load i64, i64* %78
  %94 = icmp sge i64 %93, 7
  br i1 %94, label %then30, label %else31
then30:
  %95 = load %nyx_string*, %nyx_string** %ann.ptr
  %96 = call %nyx_string* @nyx_string_substring(%nyx_string* %95, i64 0, i64 7)
  %97 = getelementptr [8 x i8], [8 x i8]* @.str8, i32 0, i32 0
  %98 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %97)
  %99 = call i1 @nyx_string_equals(%nyx_string* %96, %nyx_string* %98)
  br i1 %99, label %then33, label %else34
then33:
  ret i1 1
else34:
  br label %merge35
merge35:
  br label %merge32
else31:
  br label %merge32
merge32:
  %100 = load i64, i64* %78
  %101 = icmp sge i64 %100, 7
  br i1 %101, label %then36, label %else37
then36:
  %102 = load %nyx_string*, %nyx_string** %ann.ptr
  %103 = call %nyx_string* @nyx_string_substring(%nyx_string* %102, i64 0, i64 7)
  %104 = getelementptr [8 x i8], [8 x i8]* @.str9, i32 0, i32 0
  %105 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %104)
  %106 = call i1 @nyx_string_equals(%nyx_string* %103, %nyx_string* %105)
  br i1 %106, label %then39, label %else40
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
{ i64, i8* }* %affine_names.param, { i64, i8* }* %sigs.param) {
  %affine_names.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %affine_names.param, { i64, i8* }** %affine_names.ptr
  %sigs.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %sigs.param, { i64, i8* }** %sigs.ptr
  %107 = call { i64, i8* }* @nyx_array_new_ptr()
  %108 = call { i64, i8* }* @nyx_array_new_ptr()
  %109 = bitcast { i64, i8* }* %108 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %107, i8* %109)
  %110 = call { i64, i8* }* @nyx_array_new_ptr()
  %111 = bitcast { i64, i8* }* %110 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %107, i8* %111)
  %112 = load { i64, i8* }*, { i64, i8* }** %affine_names.ptr
  %113 = bitcast { i64, i8* }* %112 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %107, i8* %113)
  %114 = call { i64, i8* }* @nyx_array_new_ptr()
  %115 = bitcast { i64, i8* }* %114 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %107, i8* %115)
  %116 = call { i64, i8* }* @nyx_array_new_ptr()
  %117 = bitcast { i64, i8* }* %116 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %107, i8* %117)
  %118 = load { i64, i8* }*, { i64, i8* }** %sigs.ptr
  %119 = bitcast { i64, i8* }* %118 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %107, i8* %119)
  ret { i64, i8* }* %107
}

define internal { i64, i8* }* @tm_affine_names(
{ i64, i8* }* %tmap.param) {
  %tmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %120 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %121 = call i64 @nyx_array_get({ i64, i8* }* %120, i64 2)
  %122 = inttoptr i64 %121 to { i64, i8* }*
  ret { i64, i8* }* %122
}

define internal { i64, i8* }* @tm_sigs(
{ i64, i8* }* %tmap.param) {
  %tmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %123 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %124 = call i64 @nyx_array_get({ i64, i8* }* %123, i64 5)
  %125 = inttoptr i64 %124 to { i64, i8* }*
  ret { i64, i8* }* %125
}

define internal i1 @tm_type_is_affine(
{ i64, i8* }* %tmap.param, %nyx_string* %ann.param) {
  %tmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %ann.ptr = alloca %nyx_string*
  store %nyx_string* %ann.param, %nyx_string** %ann.ptr
  %126 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %127 = call i64 @nyx_array_get({ i64, i8* }* %126, i64 2)
  %128 = inttoptr i64 %127 to { i64, i8* }*
  %129 = alloca { i64, i8* }*
  store { i64, i8* }* %128, { i64, i8* }** %129
  %130 = load %nyx_string*, %nyx_string** %ann.ptr
  %131 = alloca %nyx_string*
  store %nyx_string* %130, %nyx_string** %131
  %132 = load %nyx_string*, %nyx_string** %ann.ptr
  %133 = getelementptr [2 x i8], [2 x i8]* @.str10, i32 0, i32 0
  %134 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %133)
  %135 = call i64 @nyx_string_index_of(%nyx_string* %132, %nyx_string* %134)
  %136 = alloca i64
  store i64 %135, i64* %136
  %137 = load i64, i64* %136
  %138 = icmp sge i64 %137, 0
  br i1 %138, label %then42, label %else43
then42:
  %139 = load %nyx_string*, %nyx_string** %ann.ptr
  %140 = load i64, i64* %136
  %141 = call %nyx_string* @nyx_string_substring(%nyx_string* %139, i64 0, i64 %140)
  store %nyx_string* %141, %nyx_string** %131
  br label %merge44
else43:
  br label %merge44
merge44:
  %142 = alloca i64
  store i64 0, i64* %142
  br label %while_cond45
while_cond45:
  %143 = load i64, i64* %142
  %144 = load { i64, i8* }*, { i64, i8* }** %129
  %145 = call i64 @nyx_array_length({ i64, i8* }* %144)
  %146 = icmp slt i64 %143, %145
  br i1 %146, label %while_body46, label %while_end47
while_body46:
  %147 = load { i64, i8* }*, { i64, i8* }** %129
  %148 = load i64, i64* %142
  %149 = call i64 @nyx_array_get({ i64, i8* }* %147, i64 %148)
  %150 = inttoptr i64 %149 to %nyx_string*
  %151 = alloca %nyx_string*
  store %nyx_string* %150, %nyx_string** %151
  %152 = load %nyx_string*, %nyx_string** %151
  %153 = load %nyx_string*, %nyx_string** %131
  %154 = call i1 @nyx_string_equals(%nyx_string* %152, %nyx_string* %153)
  br i1 %154, label %then48, label %else49
then48:
  ret i1 1
else49:
  br label %merge50
merge50:
  %155 = load i64, i64* %142
  %156 = add i64 %155, 1
  store i64 %156, i64* %142
  br label %while_cond45
while_end47:
  ret i1 0
}

define internal i64 @move_kind_of(
{ i64, i8* }* %tmap.param, %nyx_string* %ann.param) {
  %tmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %ann.ptr = alloca %nyx_string*
  store %nyx_string* %ann.param, %nyx_string** %ann.ptr
  %157 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %158 = load %nyx_string*, %nyx_string** %ann.ptr
  %159 = call i1 @tm_type_is_affine({ i64, i8* }* %157, %nyx_string* %158)
  br i1 %159, label %then51, label %else52
then51:
  ret i64 2
else52:
  br label %merge53
merge53:
  %160 = load %nyx_string*, %nyx_string** %ann.ptr
  %161 = call i1 @ann_is_move_type(%nyx_string* %160)
  br i1 %161, label %then54, label %else55
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
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %kind.ptr = alloca i64
  store i64 %kind.param, i64* %kind.ptr
  %162 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %163 = call i64 @nyx_array_get({ i64, i8* }* %162, i64 0)
  %164 = inttoptr i64 %163 to { i64, i8* }*
  %165 = alloca { i64, i8* }*
  store { i64, i8* }* %164, { i64, i8* }** %165
  %166 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %167 = call i64 @nyx_array_get({ i64, i8* }* %166, i64 1)
  %168 = inttoptr i64 %167 to { i64, i8* }*
  %169 = alloca { i64, i8* }*
  store { i64, i8* }* %168, { i64, i8* }** %169
  %170 = alloca i1
  store i1 0, i1* %170
  %171 = alloca i64
  store i64 0, i64* %171
  br label %while_cond57
while_cond57:
  %172 = load i64, i64* %171
  %173 = load { i64, i8* }*, { i64, i8* }** %165
  %174 = call i64 @nyx_array_length({ i64, i8* }* %173)
  %175 = icmp slt i64 %172, %174
  br i1 %175, label %while_body58, label %while_end59
while_body58:
  %176 = load { i64, i8* }*, { i64, i8* }** %165
  %177 = load i64, i64* %171
  %178 = call i64 @nyx_array_get({ i64, i8* }* %176, i64 %177)
  %179 = inttoptr i64 %178 to %nyx_string*
  %180 = alloca %nyx_string*
  store %nyx_string* %179, %nyx_string** %180
  %181 = load %nyx_string*, %nyx_string** %180
  %182 = load %nyx_string*, %nyx_string** %name.ptr
  %183 = call i1 @nyx_string_equals(%nyx_string* %181, %nyx_string* %182)
  br i1 %183, label %then60, label %else61
then60:
  %184 = load { i64, i8* }*, { i64, i8* }** %169
  %185 = load i64, i64* %171
  %186 = load i64, i64* %kind.ptr
  call void @nyx_array_set({ i64, i8* }* %184, i64 %185, i64 %186)
  store i1 1, i1* %170
  br label %merge62
else61:
  br label %merge62
merge62:
  %187 = load i64, i64* %171
  %188 = add i64 %187, 1
  store i64 %188, i64* %171
  br label %while_cond57
while_end59:
  %189 = load i1, i1* %170
  %190 = xor i1 %189, true
  br i1 %190, label %then63, label %else64
then63:
  %191 = load { i64, i8* }*, { i64, i8* }** %165
  %192 = load %nyx_string*, %nyx_string** %name.ptr
  %193 = ptrtoint %nyx_string* %192 to i64
  call void @nyx_array_push({ i64, i8* }* %191, i64 %193)
  %194 = load { i64, i8* }*, { i64, i8* }** %169
  %195 = load i64, i64* %kind.ptr
  call void @nyx_array_push({ i64, i8* }* %194, i64 %195)
  br label %merge65
else64:
  br label %merge65
merge65:
  ret i64 0
}

define internal i64 @tm_move_kind(
{ i64, i8* }* %tmap.param, %nyx_string* %name.param) {
  %tmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %196 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %197 = call i64 @nyx_array_get({ i64, i8* }* %196, i64 0)
  %198 = inttoptr i64 %197 to { i64, i8* }*
  %199 = alloca { i64, i8* }*
  store { i64, i8* }* %198, { i64, i8* }** %199
  %200 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %201 = call i64 @nyx_array_get({ i64, i8* }* %200, i64 1)
  %202 = inttoptr i64 %201 to { i64, i8* }*
  %203 = alloca { i64, i8* }*
  store { i64, i8* }* %202, { i64, i8* }** %203
  %204 = alloca i64
  store i64 0, i64* %204
  br label %while_cond66
while_cond66:
  %205 = load i64, i64* %204
  %206 = load { i64, i8* }*, { i64, i8* }** %199
  %207 = call i64 @nyx_array_length({ i64, i8* }* %206)
  %208 = icmp slt i64 %205, %207
  br i1 %208, label %while_body67, label %while_end68
while_body67:
  %209 = load { i64, i8* }*, { i64, i8* }** %199
  %210 = load i64, i64* %204
  %211 = call i64 @nyx_array_get({ i64, i8* }* %209, i64 %210)
  %212 = inttoptr i64 %211 to %nyx_string*
  %213 = alloca %nyx_string*
  store %nyx_string* %212, %nyx_string** %213
  %214 = load %nyx_string*, %nyx_string** %213
  %215 = load %nyx_string*, %nyx_string** %name.ptr
  %216 = call i1 @nyx_string_equals(%nyx_string* %214, %nyx_string* %215)
  br i1 %216, label %then69, label %else70
then69:
  %217 = load { i64, i8* }*, { i64, i8* }** %203
  %218 = load i64, i64* %204
  %219 = call i64 @nyx_array_get({ i64, i8* }* %217, i64 %218)
  ret i64 %219
else70:
  br label %merge71
merge71:
  %220 = load i64, i64* %204
  %221 = add i64 %220, 1
  store i64 %221, i64* %204
  br label %while_cond66
while_end68:
  ret i64 0
}

define internal i1 @tm_is_move(
{ i64, i8* }* %tmap.param, %nyx_string* %name.param) {
  %tmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %222 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %223 = load %nyx_string*, %nyx_string** %name.ptr
  %224 = call i64 @tm_move_kind({ i64, i8* }* %222, %nyx_string* %223)
  %225 = icmp sgt i64 %224, 0
  ret i1 %225
}

define internal i64 @tm_add_local(
{ i64, i8* }* %tmap.param, %nyx_string* %name.param) {
  %tmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %226 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %227 = call i64 @nyx_array_get({ i64, i8* }* %226, i64 3)
  %228 = inttoptr i64 %227 to { i64, i8* }*
  %229 = alloca { i64, i8* }*
  store { i64, i8* }* %228, { i64, i8* }** %229
  %230 = alloca i64
  store i64 0, i64* %230
  br label %while_cond72
while_cond72:
  %231 = load i64, i64* %230
  %232 = load { i64, i8* }*, { i64, i8* }** %229
  %233 = call i64 @nyx_array_length({ i64, i8* }* %232)
  %234 = icmp slt i64 %231, %233
  br i1 %234, label %while_body73, label %while_end74
while_body73:
  %235 = load { i64, i8* }*, { i64, i8* }** %229
  %236 = load i64, i64* %230
  %237 = call i64 @nyx_array_get({ i64, i8* }* %235, i64 %236)
  %238 = inttoptr i64 %237 to %nyx_string*
  %239 = alloca %nyx_string*
  store %nyx_string* %238, %nyx_string** %239
  %240 = load %nyx_string*, %nyx_string** %239
  %241 = load %nyx_string*, %nyx_string** %name.ptr
  %242 = call i1 @nyx_string_equals(%nyx_string* %240, %nyx_string* %241)
  br i1 %242, label %then75, label %else76
then75:
  ret i64 0
else76:
  br label %merge77
merge77:
  %243 = load i64, i64* %230
  %244 = add i64 %243, 1
  store i64 %244, i64* %230
  br label %while_cond72
while_end74:
  %245 = load { i64, i8* }*, { i64, i8* }** %229
  %246 = load %nyx_string*, %nyx_string** %name.ptr
  %247 = ptrtoint %nyx_string* %246 to i64
  call void @nyx_array_push({ i64, i8* }* %245, i64 %247)
  ret i64 0
}

define internal i1 @tm_is_local(
{ i64, i8* }* %tmap.param, %nyx_string* %name.param) {
  %tmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %248 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %249 = call i64 @nyx_array_get({ i64, i8* }* %248, i64 3)
  %250 = inttoptr i64 %249 to { i64, i8* }*
  %251 = alloca { i64, i8* }*
  store { i64, i8* }* %250, { i64, i8* }** %251
  %252 = alloca i64
  store i64 0, i64* %252
  br label %while_cond78
while_cond78:
  %253 = load i64, i64* %252
  %254 = load { i64, i8* }*, { i64, i8* }** %251
  %255 = call i64 @nyx_array_length({ i64, i8* }* %254)
  %256 = icmp slt i64 %253, %255
  br i1 %256, label %while_body79, label %while_end80
while_body79:
  %257 = load { i64, i8* }*, { i64, i8* }** %251
  %258 = load i64, i64* %252
  %259 = call i64 @nyx_array_get({ i64, i8* }* %257, i64 %258)
  %260 = inttoptr i64 %259 to %nyx_string*
  %261 = alloca %nyx_string*
  store %nyx_string* %260, %nyx_string** %261
  %262 = load %nyx_string*, %nyx_string** %261
  %263 = load %nyx_string*, %nyx_string** %name.ptr
  %264 = call i1 @nyx_string_equals(%nyx_string* %262, %nyx_string* %263)
  br i1 %264, label %then81, label %else82
then81:
  ret i1 1
else82:
  br label %merge83
merge83:
  %265 = load i64, i64* %252
  %266 = add i64 %265, 1
  store i64 %266, i64* %252
  br label %while_cond78
while_end80:
  ret i1 0
}

define internal i64 @tm_add_ptr_param(
{ i64, i8* }* %tmap.param, %nyx_string* %name.param) {
  %tmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %267 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %268 = call i64 @nyx_array_get({ i64, i8* }* %267, i64 4)
  %269 = inttoptr i64 %268 to { i64, i8* }*
  %270 = alloca { i64, i8* }*
  store { i64, i8* }* %269, { i64, i8* }** %270
  %271 = alloca i64
  store i64 0, i64* %271
  br label %while_cond84
while_cond84:
  %272 = load i64, i64* %271
  %273 = load { i64, i8* }*, { i64, i8* }** %270
  %274 = call i64 @nyx_array_length({ i64, i8* }* %273)
  %275 = icmp slt i64 %272, %274
  br i1 %275, label %while_body85, label %while_end86
while_body85:
  %276 = load { i64, i8* }*, { i64, i8* }** %270
  %277 = load i64, i64* %271
  %278 = call i64 @nyx_array_get({ i64, i8* }* %276, i64 %277)
  %279 = inttoptr i64 %278 to %nyx_string*
  %280 = alloca %nyx_string*
  store %nyx_string* %279, %nyx_string** %280
  %281 = load %nyx_string*, %nyx_string** %280
  %282 = load %nyx_string*, %nyx_string** %name.ptr
  %283 = call i1 @nyx_string_equals(%nyx_string* %281, %nyx_string* %282)
  br i1 %283, label %then87, label %else88
then87:
  ret i64 0
else88:
  br label %merge89
merge89:
  %284 = load i64, i64* %271
  %285 = add i64 %284, 1
  store i64 %285, i64* %271
  br label %while_cond84
while_end86:
  %286 = load { i64, i8* }*, { i64, i8* }** %270
  %287 = load %nyx_string*, %nyx_string** %name.ptr
  %288 = ptrtoint %nyx_string* %287 to i64
  call void @nyx_array_push({ i64, i8* }* %286, i64 %288)
  ret i64 0
}

define internal i1 @tm_is_ptr_param(
{ i64, i8* }* %tmap.param, %nyx_string* %name.param) {
  %tmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %289 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %290 = call i64 @nyx_array_get({ i64, i8* }* %289, i64 4)
  %291 = inttoptr i64 %290 to { i64, i8* }*
  %292 = alloca { i64, i8* }*
  store { i64, i8* }* %291, { i64, i8* }** %292
  %293 = alloca i64
  store i64 0, i64* %293
  br label %while_cond90
while_cond90:
  %294 = load i64, i64* %293
  %295 = load { i64, i8* }*, { i64, i8* }** %292
  %296 = call i64 @nyx_array_length({ i64, i8* }* %295)
  %297 = icmp slt i64 %294, %296
  br i1 %297, label %while_body91, label %while_end92
while_body91:
  %298 = load { i64, i8* }*, { i64, i8* }** %292
  %299 = load i64, i64* %293
  %300 = call i64 @nyx_array_get({ i64, i8* }* %298, i64 %299)
  %301 = inttoptr i64 %300 to %nyx_string*
  %302 = alloca %nyx_string*
  store %nyx_string* %301, %nyx_string** %302
  %303 = load %nyx_string*, %nyx_string** %302
  %304 = load %nyx_string*, %nyx_string** %name.ptr
  %305 = call i1 @nyx_string_equals(%nyx_string* %303, %nyx_string* %304)
  br i1 %305, label %then93, label %else94
then93:
  ret i1 1
else94:
  br label %merge95
merge95:
  %306 = load i64, i64* %293
  %307 = add i64 %306, 1
  store i64 %307, i64* %293
  br label %while_cond90
while_end92:
  ret i1 0
}

define internal i1 @bc_dest_outlives(
%nyx_string* %root.param, { i64, i8* }* %tmap.param) {
  %root.ptr = alloca %nyx_string*
  store %nyx_string* %root.param, %nyx_string** %root.ptr
  %tmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %308 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %309 = load %nyx_string*, %nyx_string** %root.ptr
  %310 = call i1 @tm_is_ptr_param({ i64, i8* }* %308, %nyx_string* %309)
  br i1 %310, label %then96, label %else97
then96:
  ret i1 1
else97:
  br label %merge98
merge98:
  %311 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %312 = load %nyx_string*, %nyx_string** %root.ptr
  %313 = call i1 @tm_is_local({ i64, i8* }* %311, %nyx_string* %312)
  %314 = xor i1 %313, true
  br i1 %314, label %then99, label %else100
then99:
  ret i1 1
else100:
  br label %merge101
merge101:
  ret i1 0
}

define internal i64 @bc_register_pattern_bindings(
%ASTNode %pattern.param, { i64, i8* }* %tmap.param) {
  %pattern.ptr = alloca %ASTNode
  store %ASTNode %pattern.param, %ASTNode* %pattern.ptr
  %tmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %315 = getelementptr %ASTNode, %ASTNode* %pattern.ptr, i32 0, i32 0
  %316 = load %nyx_string*, %nyx_string** %315
  %317 = alloca %nyx_string*
  store %nyx_string* %316, %nyx_string** %317
  %318 = getelementptr %ASTNode, %ASTNode* %pattern.ptr, i32 0, i32 1
  %319 = load { i64, i8* }*, { i64, i8* }** %318
  %320 = alloca { i64, i8* }*
  store { i64, i8* }* %319, { i64, i8* }** %320
  %321 = load %nyx_string*, %nyx_string** %317
  %322 = getelementptr [19 x i8], [19 x i8]* @.str11, i32 0, i32 0
  %323 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %322)
  %324 = call i1 @nyx_string_equals(%nyx_string* %321, %nyx_string* %323)
  br i1 %324, label %then102, label %else103
then102:
  %325 = load { i64, i8* }*, { i64, i8* }** %320
  %326 = call i64 @nyx_array_get({ i64, i8* }* %325, i64 0)
  %327 = inttoptr i64 %326 to %nyx_string*
  %328 = alloca %nyx_string*
  store %nyx_string* %327, %nyx_string** %328
  %329 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %330 = load %nyx_string*, %nyx_string** %328
  %331 = call i64 @tm_add_local({ i64, i8* }* %329, %nyx_string* %330)
  ret i64 0
else103:
  br label %merge104
merge104:
  %332 = load %nyx_string*, %nyx_string** %317
  %333 = getelementptr [14 x i8], [14 x i8]* @.str12, i32 0, i32 0
  %334 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %333)
  %335 = call i1 @nyx_string_equals(%nyx_string* %332, %nyx_string* %334)
  br i1 %335, label %then105, label %else106
then105:
  %336 = load { i64, i8* }*, { i64, i8* }** %320
  %337 = call i64 @nyx_array_get({ i64, i8* }* %336, i64 2)
  %338 = inttoptr i64 %337 to { i64, i8* }*
  %339 = alloca { i64, i8* }*
  store { i64, i8* }* %338, { i64, i8* }** %339
  %340 = alloca i64
  store i64 0, i64* %340
  br label %while_cond108
while_cond108:
  %341 = load i64, i64* %340
  %342 = load { i64, i8* }*, { i64, i8* }** %339
  %343 = call i64 @nyx_array_length({ i64, i8* }* %342)
  %344 = icmp slt i64 %341, %343
  br i1 %344, label %while_body109, label %while_end110
while_body109:
  %345 = load { i64, i8* }*, { i64, i8* }** %339
  %346 = load i64, i64* %340
  %347 = call i64 @nyx_array_get({ i64, i8* }* %345, i64 %346)
  %348 = inttoptr i64 %347 to %nyx_string*
  %349 = alloca %nyx_string*
  store %nyx_string* %348, %nyx_string** %349
  %350 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %351 = load %nyx_string*, %nyx_string** %349
  %352 = call i64 @tm_add_local({ i64, i8* }* %350, %nyx_string* %351)
  %353 = load i64, i64* %340
  %354 = add i64 %353, 1
  store i64 %354, i64* %340
  br label %while_cond108
while_end110:
  ret i64 0
else106:
  br label %merge107
merge107:
  %355 = load %nyx_string*, %nyx_string** %317
  %356 = getelementptr [15 x i8], [15 x i8]* @.str13, i32 0, i32 0
  %357 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str13.c, i8* %356)
  %358 = call i1 @nyx_string_equals(%nyx_string* %355, %nyx_string* %357)
  br i1 %358, label %then111, label %else112
then111:
  %359 = load { i64, i8* }*, { i64, i8* }** %320
  %360 = call i64 @nyx_array_get({ i64, i8* }* %359, i64 1)
  %361 = inttoptr i64 %360 to { i64, i8* }*
  %362 = alloca { i64, i8* }*
  store { i64, i8* }* %361, { i64, i8* }** %362
  %363 = alloca i64
  store i64 0, i64* %363
  br label %while_cond114
while_cond114:
  %364 = load i64, i64* %363
  %365 = load { i64, i8* }*, { i64, i8* }** %362
  %366 = call i64 @nyx_array_length({ i64, i8* }* %365)
  %367 = icmp slt i64 %364, %366
  br i1 %367, label %while_body115, label %while_end116
while_body115:
  %368 = load { i64, i8* }*, { i64, i8* }** %362
  %369 = load i64, i64* %363
  %370 = call i64 @nyx_array_get({ i64, i8* }* %368, i64 %369)
  %371 = inttoptr i64 %370 to { i64, i8* }*
  %372 = alloca { i64, i8* }*
  store { i64, i8* }* %371, { i64, i8* }** %372
  %373 = load { i64, i8* }*, { i64, i8* }** %372
  %374 = call i64 @nyx_array_get({ i64, i8* }* %373, i64 1)
  %375 = inttoptr i64 %374 to %nyx_string*
  %376 = alloca %nyx_string*
  store %nyx_string* %375, %nyx_string** %376
  %377 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %378 = load %nyx_string*, %nyx_string** %376
  %379 = call i64 @tm_add_local({ i64, i8* }* %377, %nyx_string* %378)
  %380 = load i64, i64* %363
  %381 = add i64 %380, 1
  store i64 %381, i64* %363
  br label %while_cond114
while_end116:
  ret i64 0
else112:
  br label %merge113
merge113:
  %382 = load %nyx_string*, %nyx_string** %317
  %383 = getelementptr [21 x i8], [21 x i8]* @.str14, i32 0, i32 0
  %384 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str14.c, i8* %383)
  %385 = call i1 @nyx_string_equals(%nyx_string* %382, %nyx_string* %384)
  br i1 %385, label %then117, label %else118
then117:
  %386 = load { i64, i8* }*, { i64, i8* }** %320
  %387 = call i64 @nyx_array_get({ i64, i8* }* %386, i64 2)
  %388 = inttoptr i64 %387 to { i64, i8* }*
  %389 = alloca { i64, i8* }*
  store { i64, i8* }* %388, { i64, i8* }** %389
  %390 = alloca i64
  store i64 0, i64* %390
  %391 = getelementptr [19 x i8], [19 x i8]* @.str15, i32 0, i32 0
  %392 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str15.c, i8* %391)
  %393 = alloca %nyx_string*
  store %nyx_string* %392, %nyx_string** %393
  %394 = getelementptr [14 x i8], [14 x i8]* @.str16, i32 0, i32 0
  %395 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str16.c, i8* %394)
  %396 = alloca %nyx_string*
  store %nyx_string* %395, %nyx_string** %396
  br label %while_cond120
while_cond120:
  %397 = load i64, i64* %390
  %398 = load { i64, i8* }*, { i64, i8* }** %389
  %399 = call i64 @nyx_array_length({ i64, i8* }* %398)
  %400 = icmp slt i64 %397, %399
  br i1 %400, label %while_body121, label %while_end122
while_body121:
  %401 = load { i64, i8* }*, { i64, i8* }** %389
  %402 = load i64, i64* %390
  %403 = call i64 @nyx_array_get({ i64, i8* }* %401, i64 %402)
  %404 = inttoptr i64 %403 to { i64, i8* }*
  %405 = call i64 @nyx_array_get({ i64, i8* }* %404, i64 0)
  %406 = call i64 @nyx_array_get({ i64, i8* }* %404, i64 1)
  %407 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %404, i64 2)
  %408 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %404, i64 3)
  %409 = inttoptr i64 %405 to %nyx_string*
  %410 = inttoptr i64 %406 to { i64, i8* }*
  %411 = alloca %ASTNode
  %412 = getelementptr inbounds %ASTNode, %ASTNode* %411, i32 0, i32 0
  store %nyx_string* %409, %nyx_string** %412
  %413 = getelementptr inbounds %ASTNode, %ASTNode* %411, i32 0, i32 1
  store { i64, i8* }* %410, { i64, i8* }** %413
  %414 = getelementptr inbounds %ASTNode, %ASTNode* %411, i32 0, i32 2
  store i64 %407, i64* %414
  %415 = getelementptr inbounds %ASTNode, %ASTNode* %411, i32 0, i32 3
  store i64 %408, i64* %415
  %416 = load %ASTNode, %ASTNode* %411
  %417 = alloca %ASTNode
  store %ASTNode %416, %ASTNode* %417
  %418 = getelementptr %ASTNode, %ASTNode* %417, i32 0, i32 0
  %419 = load %nyx_string*, %nyx_string** %418
  %420 = load %nyx_string*, %nyx_string** %393
  %421 = call i1 @nyx_string_equals(%nyx_string* %419, %nyx_string* %420)
  br i1 %421, label %then123, label %else124
then123:
  %422 = getelementptr %ASTNode, %ASTNode* %417, i32 0, i32 1
  %423 = load { i64, i8* }*, { i64, i8* }** %422
  %424 = alloca { i64, i8* }*
  store { i64, i8* }* %423, { i64, i8* }** %424
  %425 = load { i64, i8* }*, { i64, i8* }** %424
  %426 = call i64 @nyx_array_get({ i64, i8* }* %425, i64 0)
  %427 = inttoptr i64 %426 to %nyx_string*
  %428 = alloca %nyx_string*
  store %nyx_string* %427, %nyx_string** %428
  %429 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %430 = load %nyx_string*, %nyx_string** %428
  %431 = call i64 @tm_add_local({ i64, i8* }* %429, %nyx_string* %430)
  br label %merge125
else124:
  br label %merge125
merge125:
  %432 = getelementptr %ASTNode, %ASTNode* %417, i32 0, i32 0
  %433 = load %nyx_string*, %nyx_string** %432
  %434 = load %nyx_string*, %nyx_string** %396
  %435 = call i1 @nyx_string_equals(%nyx_string* %433, %nyx_string* %434)
  br i1 %435, label %then126, label %else127
then126:
  %436 = getelementptr %ASTNode, %ASTNode* %417, i32 0, i32 1
  %437 = load { i64, i8* }*, { i64, i8* }** %436
  %438 = call i64 @nyx_array_get({ i64, i8* }* %437, i64 2)
  %439 = inttoptr i64 %438 to { i64, i8* }*
  %440 = alloca { i64, i8* }*
  store { i64, i8* }* %439, { i64, i8* }** %440
  %441 = alloca i64
  store i64 0, i64* %441
  br label %while_cond129
while_cond129:
  %442 = load i64, i64* %441
  %443 = load { i64, i8* }*, { i64, i8* }** %440
  %444 = call i64 @nyx_array_length({ i64, i8* }* %443)
  %445 = icmp slt i64 %442, %444
  br i1 %445, label %while_body130, label %while_end131
while_body130:
  %446 = load { i64, i8* }*, { i64, i8* }** %440
  %447 = load i64, i64* %441
  %448 = call i64 @nyx_array_get({ i64, i8* }* %446, i64 %447)
  %449 = inttoptr i64 %448 to %nyx_string*
  %450 = alloca %nyx_string*
  store %nyx_string* %449, %nyx_string** %450
  %451 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %452 = load %nyx_string*, %nyx_string** %450
  %453 = call i64 @tm_add_local({ i64, i8* }* %451, %nyx_string* %452)
  %454 = load i64, i64* %441
  %455 = add i64 %454, 1
  store i64 %455, i64* %441
  br label %while_cond129
while_end131:
  br label %merge128
else127:
  br label %merge128
merge128:
  %456 = load i64, i64* %390
  %457 = add i64 %456, 1
  store i64 %457, i64* %390
  br label %while_cond120
while_end122:
  ret i64 0
else118:
  br label %merge119
merge119:
  ret i64 0
}

define internal i64 @bc_mode(
) {
  %458 = getelementptr [11 x i8], [11 x i8]* @.str17, i32 0, i32 0
  %459 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str17.c, i8* %458)
  %460 = call i8* @nyx_string_to_cstr(%nyx_string* %459)
  %461 = call %nyx_string* @nyx_getenv(i8* %460)
  %462 = alloca %nyx_string*
  store %nyx_string* %461, %nyx_string** %462
  %463 = load %nyx_string*, %nyx_string** %462
  %464 = getelementptr [6 x i8], [6 x i8]* @.str18, i32 0, i32 0
  %465 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str18.c, i8* %464)
  %466 = call i1 @nyx_string_equals(%nyx_string* %463, %nyx_string* %465)
  br i1 %466, label %then132, label %else133
then132:
  ret i64 2
else133:
  br label %merge134
merge134:
  %467 = load %nyx_string*, %nyx_string** %462
  %468 = getelementptr [5 x i8], [5 x i8]* @.str19, i32 0, i32 0
  %469 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str19.c, i8* %468)
  %470 = call i1 @nyx_string_equals(%nyx_string* %467, %nyx_string* %469)
  br i1 %470, label %then135, label %else136
then135:
  ret i64 1
else136:
  br label %merge137
merge137:
  ret i64 0
}

define internal i64 @bc_maybe_move(
{ i64, i8* }* %state.param, { i64, i8* }* %tmap.param, %ASTNode %arg.param) {
  %state.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  %tmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %arg.ptr = alloca %ASTNode
  store %ASTNode %arg.param, %ASTNode* %arg.ptr
  %471 = getelementptr %ASTNode, %ASTNode* %arg.ptr, i32 0, i32 0
  %472 = load %nyx_string*, %nyx_string** %471
  %473 = alloca %nyx_string*
  store %nyx_string* %472, %nyx_string** %473
  %474 = alloca i1
  store i1 false, i1* %474
  %475 = load %nyx_string*, %nyx_string** %473
  %476 = getelementptr [8 x i8], [8 x i8]* @.str20, i32 0, i32 0
  %477 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str20.c, i8* %476)
  %478 = call i1 @nyx_string_equals(%nyx_string* %475, %nyx_string* %477)
  %479 = xor i1 %478, true
  br i1 %479, label %sc_and_rhs138, label %sc_and_end139
sc_and_rhs138:
  %480 = load %nyx_string*, %nyx_string** %473
  %481 = getelementptr [12 x i8], [12 x i8]* @.str21, i32 0, i32 0
  %482 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str21.c, i8* %481)
  %483 = call i1 @nyx_string_equals(%nyx_string* %480, %nyx_string* %482)
  %484 = xor i1 %483, true
  store i1 %484, i1* %474
  br label %sc_and_end139
sc_and_end139:
  %485 = load i1, i1* %474
  br i1 %485, label %then140, label %else141
then140:
  %486 = load %ASTNode, %ASTNode* %arg.ptr
  %487 = call %nyx_string* @place_of(%ASTNode %486)
  %488 = alloca %nyx_string*
  store %nyx_string* %487, %nyx_string** %488
  %489 = load %nyx_string*, %nyx_string** %488
  %490 = getelementptr [1 x i8], [1 x i8]* @.str22, i32 0, i32 0
  %491 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str22.c, i8* %490)
  %492 = call i1 @nyx_string_equals(%nyx_string* %489, %nyx_string* %491)
  %493 = xor i1 %492, true
  br i1 %493, label %then143, label %else144
then143:
  %494 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %495 = load %nyx_string*, %nyx_string** %488
  %496 = call i1 @tm_is_move({ i64, i8* }* %494, %nyx_string* %495)
  br i1 %496, label %then146, label %else147
then146:
  %497 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %498 = load %nyx_string*, %nyx_string** %488
  %499 = call i64 @mark_moved({ i64, i8* }* %497, %nyx_string* %498)
  br label %merge148
else147:
  br label %merge148
merge148:
  br label %merge145
else144:
  br label %merge145
merge145:
  br label %merge142
else141:
  br label %merge142
merge142:
  ret i64 0
}

define internal %nyx_string* @bc_borrow_is_frame_bound(
%ASTNode %addr_node.param, { i64, i8* }* %tmap.param) {
  %addr_node.ptr = alloca %ASTNode
  store %ASTNode %addr_node.param, %ASTNode* %addr_node.ptr
  %tmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %500 = load %ASTNode, %ASTNode* %addr_node.ptr
  %501 = call %ASTNode @bc_node_at(%ASTNode %500, i64 0)
  %502 = alloca %ASTNode
  store %ASTNode %501, %ASTNode* %502
  %503 = getelementptr %ASTNode, %ASTNode* %502, i32 0, i32 0
  %504 = load %nyx_string*, %nyx_string** %503
  %505 = getelementptr [11 x i8], [11 x i8]* @.str23, i32 0, i32 0
  %506 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str23.c, i8* %505)
  %507 = call i1 @nyx_string_equals(%nyx_string* %504, %nyx_string* %506)
  br i1 %507, label %then149, label %else150
then149:
  %508 = load %ASTNode, %ASTNode* %502
  %509 = call %nyx_string* @place_of(%ASTNode %508)
  %510 = alloca %nyx_string*
  store %nyx_string* %509, %nyx_string** %510
  %511 = load %nyx_string*, %nyx_string** %510
  %512 = getelementptr [1 x i8], [1 x i8]* @.str24, i32 0, i32 0
  %513 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str24.c, i8* %512)
  %514 = call i1 @nyx_string_equals(%nyx_string* %511, %nyx_string* %513)
  %515 = xor i1 %514, true
  br i1 %515, label %then152, label %else153
then152:
  %516 = load %nyx_string*, %nyx_string** %510
  %517 = getelementptr [5 x i8], [5 x i8]* @.str25, i32 0, i32 0
  %518 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str25.c, i8* %517)
  %519 = call i1 @nyx_string_equals(%nyx_string* %516, %nyx_string* %518)
  %520 = xor i1 %519, true
  br i1 %520, label %then155, label %else156
then155:
  %521 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %522 = load %nyx_string*, %nyx_string** %510
  %523 = call i1 @tm_is_local({ i64, i8* }* %521, %nyx_string* %522)
  br i1 %523, label %then158, label %else159
then158:
  %524 = load %nyx_string*, %nyx_string** %510
  ret %nyx_string* %524
else159:
  br label %merge160
merge160:
  br label %merge157
else156:
  br label %merge157
merge157:
  br label %merge154
else153:
  br label %merge154
merge154:
  br label %merge151
else150:
  br label %merge151
merge151:
  %525 = getelementptr [1 x i8], [1 x i8]* @.str26, i32 0, i32 0
  %526 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str26.c, i8* %525)
  ret %nyx_string* %526
}

define internal %nyx_string* @bc_escaping_origin(
%ASTNode %expr.param, { i64, i8* }* %state.param, { i64, i8* }* %tmap.param) {
  %expr.ptr = alloca %ASTNode
  store %ASTNode %expr.param, %ASTNode* %expr.ptr
  %state.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  %tmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %527 = getelementptr %ASTNode, %ASTNode* %expr.ptr, i32 0, i32 0
  %528 = load %nyx_string*, %nyx_string** %527
  %529 = alloca %nyx_string*
  store %nyx_string* %528, %nyx_string** %529
  %530 = load %nyx_string*, %nyx_string** %529
  %531 = getelementptr [8 x i8], [8 x i8]* @.str27, i32 0, i32 0
  %532 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str27.c, i8* %531)
  %533 = call i1 @nyx_string_equals(%nyx_string* %530, %nyx_string* %532)
  br i1 %533, label %then161, label %else162
then161:
  %534 = load %ASTNode, %ASTNode* %expr.ptr
  %535 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %536 = call %nyx_string* @bc_borrow_is_frame_bound(%ASTNode %534, { i64, i8* }* %535)
  ret %nyx_string* %536
else162:
  br label %merge163
merge163:
  %537 = load %nyx_string*, %nyx_string** %529
  %538 = getelementptr [12 x i8], [12 x i8]* @.str28, i32 0, i32 0
  %539 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str28.c, i8* %538)
  %540 = call i1 @nyx_string_equals(%nyx_string* %537, %nyx_string* %539)
  br i1 %540, label %then164, label %else165
then164:
  %541 = load %ASTNode, %ASTNode* %expr.ptr
  %542 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %543 = call %nyx_string* @bc_borrow_is_frame_bound(%ASTNode %541, { i64, i8* }* %542)
  ret %nyx_string* %543
else165:
  br label %merge166
merge166:
  %544 = load %nyx_string*, %nyx_string** %529
  %545 = getelementptr [11 x i8], [11 x i8]* @.str29, i32 0, i32 0
  %546 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str29.c, i8* %545)
  %547 = call i1 @nyx_string_equals(%nyx_string* %544, %nyx_string* %546)
  br i1 %547, label %then167, label %else168
then167:
  %548 = load %ASTNode, %ASTNode* %expr.ptr
  %549 = call %nyx_string* @place_of(%ASTNode %548)
  %550 = alloca %nyx_string*
  store %nyx_string* %549, %nyx_string** %550
  %551 = load %nyx_string*, %nyx_string** %550
  %552 = getelementptr [1 x i8], [1 x i8]* @.str30, i32 0, i32 0
  %553 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str30.c, i8* %552)
  %554 = call i1 @nyx_string_equals(%nyx_string* %551, %nyx_string* %553)
  %555 = xor i1 %554, true
  br i1 %555, label %then170, label %else171
then170:
  %556 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %557 = load %nyx_string*, %nyx_string** %550
  %558 = call %nyx_string* @get_reforigin({ i64, i8* }* %556, %nyx_string* %557)
  ret %nyx_string* %558
else171:
  br label %merge172
merge172:
  br label %merge169
else168:
  br label %merge169
merge169:
  %559 = load %nyx_string*, %nyx_string** %529
  %560 = getelementptr [5 x i8], [5 x i8]* @.str31, i32 0, i32 0
  %561 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str31.c, i8* %560)
  %562 = call i1 @nyx_string_equals(%nyx_string* %559, %nyx_string* %561)
  br i1 %562, label %then173, label %else174
then173:
  %563 = load %ASTNode, %ASTNode* %expr.ptr
  %564 = call %ASTNode @bc_node_at(%ASTNode %563, i64 0)
  %565 = alloca %ASTNode
  store %ASTNode %564, %ASTNode* %565
  %566 = getelementptr [1 x i8], [1 x i8]* @.str32, i32 0, i32 0
  %567 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str32.c, i8* %566)
  %568 = alloca %nyx_string*
  store %nyx_string* %567, %nyx_string** %568
  %569 = getelementptr %ASTNode, %ASTNode* %565, i32 0, i32 0
  %570 = load %nyx_string*, %nyx_string** %569
  %571 = getelementptr [11 x i8], [11 x i8]* @.str33, i32 0, i32 0
  %572 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str33.c, i8* %571)
  %573 = call i1 @nyx_string_equals(%nyx_string* %570, %nyx_string* %572)
  br i1 %573, label %then176, label %else177
then176:
  %574 = load %ASTNode, %ASTNode* %565
  %575 = call %nyx_string* @place_of(%ASTNode %574)
  store %nyx_string* %575, %nyx_string** %568
  br label %merge178
else177:
  br label %merge178
merge178:
  %576 = load %nyx_string*, %nyx_string** %568
  %577 = getelementptr [1 x i8], [1 x i8]* @.str34, i32 0, i32 0
  %578 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str34.c, i8* %577)
  %579 = call i1 @nyx_string_equals(%nyx_string* %576, %nyx_string* %578)
  %580 = xor i1 %579, true
  br i1 %580, label %then179, label %else180
then179:
  %581 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %582 = load %nyx_string*, %nyx_string** %568
  %583 = call i1 @tm_is_local({ i64, i8* }* %581, %nyx_string* %582)
  br i1 %583, label %then182, label %else183
then182:
  %584 = getelementptr [1 x i8], [1 x i8]* @.str35, i32 0, i32 0
  %585 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str35.c, i8* %584)
  store %nyx_string* %585, %nyx_string** %568
  br label %merge184
else183:
  br label %merge184
merge184:
  br label %merge181
else180:
  br label %merge181
merge181:
  %586 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %587 = call { i64, i8* }* @tm_sigs({ i64, i8* }* %586)
  %588 = load %nyx_string*, %nyx_string** %568
  %589 = call { i64, i8* }* @sig_lookup({ i64, i8* }* %587, %nyx_string* %588)
  %590 = alloca { i64, i8* }*
  store { i64, i8* }* %589, { i64, i8* }** %590
  %591 = load { i64, i8* }*, { i64, i8* }** %590
  %592 = call i64 @nyx_array_get({ i64, i8* }* %591, i64 0)
  %593 = inttoptr i64 %592 to { i64, i8* }*
  %594 = alloca { i64, i8* }*
  store { i64, i8* }* %593, { i64, i8* }** %594
  %595 = load { i64, i8* }*, { i64, i8* }** %590
  %596 = call i64 @nyx_array_get({ i64, i8* }* %595, i64 1)
  %597 = alloca i64
  store i64 %596, i64* %597
  %598 = load %ASTNode, %ASTNode* %expr.ptr
  %599 = call { i64, i8* }* @bc_array_at(%ASTNode %598, i64 1)
  %600 = alloca { i64, i8* }*
  store { i64, i8* }* %599, { i64, i8* }** %600
  %601 = getelementptr [1 x i8], [1 x i8]* @.str36, i32 0, i32 0
  %602 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str36.c, i8* %601)
  %603 = alloca %nyx_string*
  store %nyx_string* %602, %nyx_string** %603
  %604 = alloca i64
  store i64 0, i64* %604
  %605 = getelementptr [1 x i8], [1 x i8]* @.str37, i32 0, i32 0
  %606 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str37.c, i8* %605)
  %607 = alloca %nyx_string*
  store %nyx_string* %606, %nyx_string** %607
  br label %while_cond185
while_cond185:
  %608 = load i64, i64* %604
  %609 = load { i64, i8* }*, { i64, i8* }** %594
  %610 = call i64 @nyx_array_length({ i64, i8* }* %609)
  %611 = icmp slt i64 %608, %610
  br i1 %611, label %while_body186, label %while_end187
while_body186:
  %612 = load { i64, i8* }*, { i64, i8* }** %594
  %613 = load i64, i64* %604
  %614 = call i64 @nyx_array_get({ i64, i8* }* %612, i64 %613)
  %615 = alloca i64
  store i64 %614, i64* %615
  %616 = load i64, i64* %615
  %617 = icmp sge i64 %616, 0
  br i1 %617, label %then188, label %else189
then188:
  %618 = load i64, i64* %615
  %619 = load { i64, i8* }*, { i64, i8* }** %600
  %620 = call i64 @nyx_array_length({ i64, i8* }* %619)
  %621 = icmp slt i64 %618, %620
  br i1 %621, label %then191, label %else192
then191:
  %622 = load { i64, i8* }*, { i64, i8* }** %600
  %623 = load i64, i64* %615
  %624 = call i64 @nyx_array_get({ i64, i8* }* %622, i64 %623)
  %625 = inttoptr i64 %624 to { i64, i8* }*
  %626 = call i64 @nyx_array_get({ i64, i8* }* %625, i64 0)
  %627 = call i64 @nyx_array_get({ i64, i8* }* %625, i64 1)
  %628 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %625, i64 2)
  %629 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %625, i64 3)
  %630 = inttoptr i64 %626 to %nyx_string*
  %631 = inttoptr i64 %627 to { i64, i8* }*
  %632 = alloca %ASTNode
  %633 = getelementptr inbounds %ASTNode, %ASTNode* %632, i32 0, i32 0
  store %nyx_string* %630, %nyx_string** %633
  %634 = getelementptr inbounds %ASTNode, %ASTNode* %632, i32 0, i32 1
  store { i64, i8* }* %631, { i64, i8* }** %634
  %635 = getelementptr inbounds %ASTNode, %ASTNode* %632, i32 0, i32 2
  store i64 %628, i64* %635
  %636 = getelementptr inbounds %ASTNode, %ASTNode* %632, i32 0, i32 3
  store i64 %629, i64* %636
  %637 = load %ASTNode, %ASTNode* %632
  %638 = alloca %ASTNode
  store %ASTNode %637, %ASTNode* %638
  %639 = load %ASTNode, %ASTNode* %638
  %640 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %641 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %642 = call %nyx_string* @bc_escaping_origin(%ASTNode %639, { i64, i8* }* %640, { i64, i8* }* %641)
  %643 = alloca %nyx_string*
  store %nyx_string* %642, %nyx_string** %643
  %644 = load %nyx_string*, %nyx_string** %643
  %645 = load %nyx_string*, %nyx_string** %607
  %646 = call i1 @nyx_string_equals(%nyx_string* %644, %nyx_string* %645)
  %647 = xor i1 %646, true
  br i1 %647, label %then194, label %else195
then194:
  %648 = load %nyx_string*, %nyx_string** %643
  %649 = call %nyx_string* @reforigin_name(%nyx_string* %648)
  %650 = alloca %nyx_string*
  store %nyx_string* %649, %nyx_string** %650
  %651 = load i64, i64* %597
  %652 = icmp eq i64 %651, 1
  br i1 %652, label %then197, label %else198
then197:
  %653 = load %nyx_string*, %nyx_string** %643
  %654 = call i1 @reforigin_is_soft(%nyx_string* %653)
  br i1 %654, label %then200, label %else201
then200:
  %655 = load %nyx_string*, %nyx_string** %603
  %656 = load %nyx_string*, %nyx_string** %607
  %657 = call i1 @nyx_string_equals(%nyx_string* %655, %nyx_string* %656)
  br i1 %657, label %then203, label %else204
then203:
  %658 = load %nyx_string*, %nyx_string** %650
  %659 = call %nyx_string* @reforigin_mark_soft(%nyx_string* %658)
  store %nyx_string* %659, %nyx_string** %603
  br label %merge205
else204:
  br label %merge205
merge205:
  br label %merge202
else201:
  %660 = load %nyx_string*, %nyx_string** %650
  ret %nyx_string* %660
merge202:
  br label %merge199
else198:
  %661 = load %nyx_string*, %nyx_string** %603
  %662 = load %nyx_string*, %nyx_string** %607
  %663 = call i1 @nyx_string_equals(%nyx_string* %661, %nyx_string* %662)
  br i1 %663, label %then206, label %else207
then206:
  %664 = load %nyx_string*, %nyx_string** %650
  %665 = call %nyx_string* @reforigin_mark_soft(%nyx_string* %664)
  store %nyx_string* %665, %nyx_string** %603
  br label %merge208
else207:
  br label %merge208
merge208:
  br label %merge199
merge199:
  br label %merge196
else195:
  br label %merge196
merge196:
  br label %merge193
else192:
  br label %merge193
merge193:
  br label %merge190
else189:
  br label %merge190
merge190:
  %666 = load i64, i64* %604
  %667 = add i64 %666, 1
  store i64 %667, i64* %604
  br label %while_cond185
while_end187:
  %668 = load %nyx_string*, %nyx_string** %603
  ret %nyx_string* %668
else174:
  br label %merge175
merge175:
  %669 = getelementptr [1 x i8], [1 x i8]* @.str38, i32 0, i32 0
  %670 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str38.c, i8* %669)
  ret %nyx_string* %670
}

define internal %nyx_string* @bc_aggregate_escaping_origin(
%ASTNode %expr.param, { i64, i8* }* %state.param, { i64, i8* }* %tmap.param) {
  %expr.ptr = alloca %ASTNode
  store %ASTNode %expr.param, %ASTNode* %expr.ptr
  %state.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  %tmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %671 = getelementptr %ASTNode, %ASTNode* %expr.ptr, i32 0, i32 0
  %672 = load %nyx_string*, %nyx_string** %671
  %673 = alloca %nyx_string*
  store %nyx_string* %672, %nyx_string** %673
  %674 = alloca i1
  store i1 true, i1* %674
  %675 = load %nyx_string*, %nyx_string** %673
  %676 = getelementptr [6 x i8], [6 x i8]* @.str39, i32 0, i32 0
  %677 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str39.c, i8* %676)
  %678 = call i1 @nyx_string_equals(%nyx_string* %675, %nyx_string* %677)
  br i1 %678, label %sc_or_end210, label %sc_or_rhs209
sc_or_rhs209:
  %679 = load %nyx_string*, %nyx_string** %673
  %680 = getelementptr [10 x i8], [10 x i8]* @.str40, i32 0, i32 0
  %681 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str40.c, i8* %680)
  %682 = call i1 @nyx_string_equals(%nyx_string* %679, %nyx_string* %681)
  store i1 %682, i1* %674
  br label %sc_or_end210
sc_or_end210:
  %683 = load i1, i1* %674
  br i1 %683, label %then211, label %else212
then211:
  %684 = load %ASTNode, %ASTNode* %expr.ptr
  %685 = call { i64, i8* }* @bc_array_at(%ASTNode %684, i64 0)
  %686 = alloca { i64, i8* }*
  store { i64, i8* }* %685, { i64, i8* }** %686
  %687 = alloca i64
  store i64 0, i64* %687
  %688 = getelementptr [1 x i8], [1 x i8]* @.str41, i32 0, i32 0
  %689 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str41.c, i8* %688)
  %690 = alloca %nyx_string*
  store %nyx_string* %689, %nyx_string** %690
  br label %while_cond214
while_cond214:
  %691 = load i64, i64* %687
  %692 = load { i64, i8* }*, { i64, i8* }** %686
  %693 = call i64 @nyx_array_length({ i64, i8* }* %692)
  %694 = icmp slt i64 %691, %693
  br i1 %694, label %while_body215, label %while_end216
while_body215:
  %695 = load { i64, i8* }*, { i64, i8* }** %686
  %696 = load i64, i64* %687
  %697 = call i64 @nyx_array_get({ i64, i8* }* %695, i64 %696)
  %698 = inttoptr i64 %697 to { i64, i8* }*
  %699 = call i64 @nyx_array_get({ i64, i8* }* %698, i64 0)
  %700 = call i64 @nyx_array_get({ i64, i8* }* %698, i64 1)
  %701 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %698, i64 2)
  %702 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %698, i64 3)
  %703 = inttoptr i64 %699 to %nyx_string*
  %704 = inttoptr i64 %700 to { i64, i8* }*
  %705 = alloca %ASTNode
  %706 = getelementptr inbounds %ASTNode, %ASTNode* %705, i32 0, i32 0
  store %nyx_string* %703, %nyx_string** %706
  %707 = getelementptr inbounds %ASTNode, %ASTNode* %705, i32 0, i32 1
  store { i64, i8* }* %704, { i64, i8* }** %707
  %708 = getelementptr inbounds %ASTNode, %ASTNode* %705, i32 0, i32 2
  store i64 %701, i64* %708
  %709 = getelementptr inbounds %ASTNode, %ASTNode* %705, i32 0, i32 3
  store i64 %702, i64* %709
  %710 = load %ASTNode, %ASTNode* %705
  %711 = alloca %ASTNode
  store %ASTNode %710, %ASTNode* %711
  %712 = load %ASTNode, %ASTNode* %711
  %713 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %714 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %715 = call %nyx_string* @bc_aggregate_escaping_origin(%ASTNode %712, { i64, i8* }* %713, { i64, i8* }* %714)
  %716 = alloca %nyx_string*
  store %nyx_string* %715, %nyx_string** %716
  %717 = load %nyx_string*, %nyx_string** %716
  %718 = load %nyx_string*, %nyx_string** %690
  %719 = call i1 @nyx_string_equals(%nyx_string* %717, %nyx_string* %718)
  %720 = xor i1 %719, true
  br i1 %720, label %then217, label %else218
then217:
  %721 = load %nyx_string*, %nyx_string** %716
  ret %nyx_string* %721
else218:
  br label %merge219
merge219:
  %722 = load i64, i64* %687
  %723 = add i64 %722, 1
  store i64 %723, i64* %687
  br label %while_cond214
while_end216:
  %724 = getelementptr [1 x i8], [1 x i8]* @.str42, i32 0, i32 0
  %725 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str42.c, i8* %724)
  ret %nyx_string* %725
else212:
  br label %merge213
merge213:
  %726 = load %nyx_string*, %nyx_string** %673
  %727 = getelementptr [12 x i8], [12 x i8]* @.str43, i32 0, i32 0
  %728 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str43.c, i8* %727)
  %729 = call i1 @nyx_string_equals(%nyx_string* %726, %nyx_string* %728)
  br i1 %729, label %then220, label %else221
then220:
  %730 = load %ASTNode, %ASTNode* %expr.ptr
  %731 = call { i64, i8* }* @bc_array_at(%ASTNode %730, i64 1)
  %732 = alloca { i64, i8* }*
  store { i64, i8* }* %731, { i64, i8* }** %732
  %733 = alloca i64
  store i64 0, i64* %733
  %734 = getelementptr [1 x i8], [1 x i8]* @.str44, i32 0, i32 0
  %735 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str44.c, i8* %734)
  %736 = alloca %nyx_string*
  store %nyx_string* %735, %nyx_string** %736
  br label %while_cond223
while_cond223:
  %737 = load i64, i64* %733
  %738 = load { i64, i8* }*, { i64, i8* }** %732
  %739 = call i64 @nyx_array_length({ i64, i8* }* %738)
  %740 = icmp slt i64 %737, %739
  br i1 %740, label %while_body224, label %while_end225
while_body224:
  %741 = load { i64, i8* }*, { i64, i8* }** %732
  %742 = load i64, i64* %733
  %743 = call i64 @nyx_array_get({ i64, i8* }* %741, i64 %742)
  %744 = inttoptr i64 %743 to { i64, i8* }*
  %745 = alloca { i64, i8* }*
  store { i64, i8* }* %744, { i64, i8* }** %745
  %746 = load { i64, i8* }*, { i64, i8* }** %745
  %747 = call i64 @nyx_array_get({ i64, i8* }* %746, i64 1)
  %748 = inttoptr i64 %747 to { i64, i8* }*
  %749 = call i64 @nyx_array_get({ i64, i8* }* %748, i64 0)
  %750 = call i64 @nyx_array_get({ i64, i8* }* %748, i64 1)
  %751 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %748, i64 2)
  %752 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %748, i64 3)
  %753 = inttoptr i64 %749 to %nyx_string*
  %754 = inttoptr i64 %750 to { i64, i8* }*
  %755 = alloca %ASTNode
  %756 = getelementptr inbounds %ASTNode, %ASTNode* %755, i32 0, i32 0
  store %nyx_string* %753, %nyx_string** %756
  %757 = getelementptr inbounds %ASTNode, %ASTNode* %755, i32 0, i32 1
  store { i64, i8* }* %754, { i64, i8* }** %757
  %758 = getelementptr inbounds %ASTNode, %ASTNode* %755, i32 0, i32 2
  store i64 %751, i64* %758
  %759 = getelementptr inbounds %ASTNode, %ASTNode* %755, i32 0, i32 3
  store i64 %752, i64* %759
  %760 = load %ASTNode, %ASTNode* %755
  %761 = alloca %ASTNode
  store %ASTNode %760, %ASTNode* %761
  %762 = load %ASTNode, %ASTNode* %761
  %763 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %764 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %765 = call %nyx_string* @bc_aggregate_escaping_origin(%ASTNode %762, { i64, i8* }* %763, { i64, i8* }* %764)
  %766 = alloca %nyx_string*
  store %nyx_string* %765, %nyx_string** %766
  %767 = load %nyx_string*, %nyx_string** %766
  %768 = load %nyx_string*, %nyx_string** %736
  %769 = call i1 @nyx_string_equals(%nyx_string* %767, %nyx_string* %768)
  %770 = xor i1 %769, true
  br i1 %770, label %then226, label %else227
then226:
  %771 = load %nyx_string*, %nyx_string** %766
  ret %nyx_string* %771
else227:
  br label %merge228
merge228:
  %772 = load i64, i64* %733
  %773 = add i64 %772, 1
  store i64 %773, i64* %733
  br label %while_cond223
while_end225:
  %774 = getelementptr [1 x i8], [1 x i8]* @.str45, i32 0, i32 0
  %775 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str45.c, i8* %774)
  ret %nyx_string* %775
else221:
  br label %merge222
merge222:
  %776 = load %ASTNode, %ASTNode* %expr.ptr
  %777 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %778 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %779 = call %nyx_string* @bc_escaping_origin(%ASTNode %776, { i64, i8* }* %777, { i64, i8* }* %778)
  ret %nyx_string* %779
}

define internal i64 @bc_walk(
%ASTNode %node.param, { i64, i8* }* %state.param, { i64, i8* }* %tmap.param, { i64, i8* }* %diags.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %state.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  %tmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %diags.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %diags.param, { i64, i8* }** %diags.ptr
  %780 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 0
  %781 = load %nyx_string*, %nyx_string** %780
  %782 = alloca %nyx_string*
  store %nyx_string* %781, %nyx_string** %782
  %783 = load %nyx_string*, %nyx_string** %782
  %784 = getelementptr [7 x i8], [7 x i8]* @.str46, i32 0, i32 0
  %785 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str46.c, i8* %784)
  %786 = call i1 @nyx_string_equals(%nyx_string* %783, %nyx_string* %785)
  br i1 %786, label %then229, label %else230
then229:
  ret i64 0
else230:
  br label %merge231
merge231:
  %787 = load %nyx_string*, %nyx_string** %782
  %788 = getelementptr [10 x i8], [10 x i8]* @.str47, i32 0, i32 0
  %789 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str47.c, i8* %788)
  %790 = call i1 @nyx_string_equals(%nyx_string* %787, %nyx_string* %789)
  br i1 %790, label %then232, label %else233
then232:
  ret i64 0
else233:
  br label %merge234
merge234:
  %791 = load %nyx_string*, %nyx_string** %782
  %792 = getelementptr [7 x i8], [7 x i8]* @.str48, i32 0, i32 0
  %793 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str48.c, i8* %792)
  %794 = call i1 @nyx_string_equals(%nyx_string* %791, %nyx_string* %793)
  br i1 %794, label %then235, label %else236
then235:
  ret i64 0
else236:
  br label %merge237
merge237:
  %795 = load %nyx_string*, %nyx_string** %782
  %796 = getelementptr [5 x i8], [5 x i8]* @.str49, i32 0, i32 0
  %797 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str49.c, i8* %796)
  %798 = call i1 @nyx_string_equals(%nyx_string* %795, %nyx_string* %797)
  br i1 %798, label %then238, label %else239
then238:
  ret i64 0
else239:
  br label %merge240
merge240:
  %799 = load %nyx_string*, %nyx_string** %782
  %800 = getelementptr [5 x i8], [5 x i8]* @.str50, i32 0, i32 0
  %801 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str50.c, i8* %800)
  %802 = call i1 @nyx_string_equals(%nyx_string* %799, %nyx_string* %801)
  br i1 %802, label %then241, label %else242
then241:
  ret i64 0
else242:
  br label %merge243
merge243:
  %803 = load %nyx_string*, %nyx_string** %782
  %804 = getelementptr [11 x i8], [11 x i8]* @.str51, i32 0, i32 0
  %805 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str51.c, i8* %804)
  %806 = call i1 @nyx_string_equals(%nyx_string* %803, %nyx_string* %805)
  br i1 %806, label %then244, label %else245
then244:
  %807 = load %ASTNode, %ASTNode* %node.ptr
  %808 = call %nyx_string* @place_of(%ASTNode %807)
  %809 = alloca %nyx_string*
  store %nyx_string* %808, %nyx_string** %809
  %810 = load %nyx_string*, %nyx_string** %809
  %811 = getelementptr [1 x i8], [1 x i8]* @.str52, i32 0, i32 0
  %812 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str52.c, i8* %811)
  %813 = call i1 @nyx_string_equals(%nyx_string* %810, %nyx_string* %812)
  %814 = xor i1 %813, true
  br i1 %814, label %then247, label %else248
then247:
  %815 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %816 = load %nyx_string*, %nyx_string** %809
  %817 = call i1 @is_freed({ i64, i8* }* %815, %nyx_string* %816)
  br i1 %817, label %then250, label %else251
then250:
  %818 = getelementptr [30 x i8], [30 x i8]* @.str53, i32 0, i32 0
  %819 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str53.c, i8* %818)
  %820 = load %nyx_string*, %nyx_string** %809
  %821 = call %nyx_string* @nyx_string_concat(%nyx_string* %819, %nyx_string* %820)
  %822 = getelementptr [2 x i8], [2 x i8]* @.str54, i32 0, i32 0
  %823 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str54.c, i8* %822)
  %824 = call %nyx_string* @nyx_string_concat(%nyx_string* %821, %nyx_string* %823)
  %825 = alloca %nyx_string*
  store %nyx_string* %824, %nyx_string** %825
  %826 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %827 = load i64, i64* %826
  %828 = icmp sgt i64 %827, 0
  br i1 %828, label %then253, label %else254
then253:
  %829 = load %nyx_string*, %nyx_string** %825
  %830 = getelementptr [8 x i8], [8 x i8]* @.str55, i32 0, i32 0
  %831 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str55.c, i8* %830)
  %832 = call %nyx_string* @nyx_string_concat(%nyx_string* %829, %nyx_string* %831)
  %833 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %834 = load i64, i64* %833
  %835 = call %nyx_string* @nyx_string_from_int(i64 %834)
  %836 = call %nyx_string* @nyx_string_concat(%nyx_string* %832, %nyx_string* %835)
  %837 = getelementptr [2 x i8], [2 x i8]* @.str56, i32 0, i32 0
  %838 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str56.c, i8* %837)
  %839 = call %nyx_string* @nyx_string_concat(%nyx_string* %836, %nyx_string* %838)
  store %nyx_string* %839, %nyx_string** %825
  br label %merge255
else254:
  br label %merge255
merge255:
  %840 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %841 = load %nyx_string*, %nyx_string** %825
  %842 = ptrtoint %nyx_string* %841 to i64
  call void @nyx_array_push({ i64, i8* }* %840, i64 %842)
  br label %merge252
else251:
  %843 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %844 = load %nyx_string*, %nyx_string** %809
  %845 = call i1 @is_moved({ i64, i8* }* %843, %nyx_string* %844)
  br i1 %845, label %then256, label %else257
then256:
  %846 = getelementptr [8 x i8], [8 x i8]* @.str57, i32 0, i32 0
  %847 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str57.c, i8* %846)
  %848 = alloca %nyx_string*
  store %nyx_string* %847, %nyx_string** %848
  %849 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %850 = load %nyx_string*, %nyx_string** %809
  %851 = call i64 @tm_move_kind({ i64, i8* }* %849, %nyx_string* %850)
  %852 = icmp eq i64 %851, 2
  br i1 %852, label %then259, label %else260
then259:
  %853 = getelementptr [8 x i8], [8 x i8]* @.str58, i32 0, i32 0
  %854 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str58.c, i8* %853)
  store %nyx_string* %854, %nyx_string** %848
  br label %merge261
else260:
  br label %merge261
merge261:
  %855 = load %nyx_string*, %nyx_string** %848
  %856 = getelementptr [23 x i8], [23 x i8]* @.str59, i32 0, i32 0
  %857 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str59.c, i8* %856)
  %858 = call %nyx_string* @nyx_string_concat(%nyx_string* %855, %nyx_string* %857)
  %859 = load %nyx_string*, %nyx_string** %809
  %860 = call %nyx_string* @nyx_string_concat(%nyx_string* %858, %nyx_string* %859)
  %861 = getelementptr [2 x i8], [2 x i8]* @.str60, i32 0, i32 0
  %862 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str60.c, i8* %861)
  %863 = call %nyx_string* @nyx_string_concat(%nyx_string* %860, %nyx_string* %862)
  %864 = alloca %nyx_string*
  store %nyx_string* %863, %nyx_string** %864
  %865 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %866 = load i64, i64* %865
  %867 = icmp sgt i64 %866, 0
  br i1 %867, label %then262, label %else263
then262:
  %868 = load %nyx_string*, %nyx_string** %864
  %869 = getelementptr [8 x i8], [8 x i8]* @.str61, i32 0, i32 0
  %870 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str61.c, i8* %869)
  %871 = call %nyx_string* @nyx_string_concat(%nyx_string* %868, %nyx_string* %870)
  %872 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %873 = load i64, i64* %872
  %874 = call %nyx_string* @nyx_string_from_int(i64 %873)
  %875 = call %nyx_string* @nyx_string_concat(%nyx_string* %871, %nyx_string* %874)
  %876 = getelementptr [2 x i8], [2 x i8]* @.str62, i32 0, i32 0
  %877 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str62.c, i8* %876)
  %878 = call %nyx_string* @nyx_string_concat(%nyx_string* %875, %nyx_string* %877)
  store %nyx_string* %878, %nyx_string** %864
  br label %merge264
else263:
  br label %merge264
merge264:
  %879 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %880 = load %nyx_string*, %nyx_string** %864
  %881 = ptrtoint %nyx_string* %880 to i64
  call void @nyx_array_push({ i64, i8* }* %879, i64 %881)
  br label %merge258
else257:
  br label %merge258
merge258:
  br label %merge252
merge252:
  br label %merge249
else248:
  br label %merge249
merge249:
  ret i64 0
else245:
  br label %merge246
merge246:
  %882 = load %nyx_string*, %nyx_string** %782
  %883 = getelementptr [6 x i8], [6 x i8]* @.str63, i32 0, i32 0
  %884 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str63.c, i8* %883)
  %885 = call i1 @nyx_string_equals(%nyx_string* %882, %nyx_string* %884)
  br i1 %885, label %then265, label %else266
then265:
  ret i64 0
else266:
  br label %merge267
merge267:
  %886 = load %nyx_string*, %nyx_string** %782
  %887 = getelementptr [6 x i8], [6 x i8]* @.str64, i32 0, i32 0
  %888 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str64.c, i8* %887)
  %889 = call i1 @nyx_string_equals(%nyx_string* %886, %nyx_string* %888)
  br i1 %889, label %then268, label %else269
then268:
  ret i64 0
else269:
  br label %merge270
merge270:
  %890 = load %nyx_string*, %nyx_string** %782
  %891 = getelementptr [9 x i8], [9 x i8]* @.str65, i32 0, i32 0
  %892 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str65.c, i8* %891)
  %893 = call i1 @nyx_string_equals(%nyx_string* %890, %nyx_string* %892)
  br i1 %893, label %then271, label %else272
then271:
  ret i64 0
else272:
  br label %merge273
merge273:
  %894 = load %nyx_string*, %nyx_string** %782
  %895 = getelementptr [6 x i8], [6 x i8]* @.str66, i32 0, i32 0
  %896 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str66.c, i8* %895)
  %897 = call i1 @nyx_string_equals(%nyx_string* %894, %nyx_string* %896)
  br i1 %897, label %then274, label %else275
then274:
  ret i64 0
else275:
  br label %merge276
merge276:
  %898 = load %nyx_string*, %nyx_string** %782
  %899 = getelementptr [9 x i8], [9 x i8]* @.str67, i32 0, i32 0
  %900 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str67.c, i8* %899)
  %901 = call i1 @nyx_string_equals(%nyx_string* %898, %nyx_string* %900)
  br i1 %901, label %then277, label %else278
then277:
  ret i64 0
else278:
  br label %merge279
merge279:
  %902 = load %nyx_string*, %nyx_string** %782
  %903 = getelementptr [11 x i8], [11 x i8]* @.str68, i32 0, i32 0
  %904 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str68.c, i8* %903)
  %905 = call i1 @nyx_string_equals(%nyx_string* %902, %nyx_string* %904)
  br i1 %905, label %then280, label %else281
then280:
  ret i64 0
else281:
  br label %merge282
merge282:
  %906 = load %nyx_string*, %nyx_string** %782
  %907 = getelementptr [7 x i8], [7 x i8]* @.str69, i32 0, i32 0
  %908 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str69.c, i8* %907)
  %909 = call i1 @nyx_string_equals(%nyx_string* %906, %nyx_string* %908)
  br i1 %909, label %then283, label %else284
then283:
  ret i64 0
else284:
  br label %merge285
merge285:
  %910 = load %nyx_string*, %nyx_string** %782
  %911 = getelementptr [9 x i8], [9 x i8]* @.str70, i32 0, i32 0
  %912 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str70.c, i8* %911)
  %913 = call i1 @nyx_string_equals(%nyx_string* %910, %nyx_string* %912)
  br i1 %913, label %then286, label %else287
then286:
  ret i64 0
else287:
  br label %merge288
merge288:
  %914 = load %nyx_string*, %nyx_string** %782
  %915 = getelementptr [10 x i8], [10 x i8]* @.str71, i32 0, i32 0
  %916 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str71.c, i8* %915)
  %917 = call i1 @nyx_string_equals(%nyx_string* %914, %nyx_string* %916)
  br i1 %917, label %then289, label %else290
then289:
  ret i64 0
else290:
  br label %merge291
merge291:
  %918 = load %nyx_string*, %nyx_string** %782
  %919 = getelementptr [7 x i8], [7 x i8]* @.str72, i32 0, i32 0
  %920 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str72.c, i8* %919)
  %921 = call i1 @nyx_string_equals(%nyx_string* %918, %nyx_string* %920)
  br i1 %921, label %then292, label %else293
then292:
  ret i64 0
else293:
  br label %merge294
merge294:
  %922 = load %nyx_string*, %nyx_string** %782
  %923 = getelementptr [14 x i8], [14 x i8]* @.str73, i32 0, i32 0
  %924 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str73.c, i8* %923)
  %925 = call i1 @nyx_string_equals(%nyx_string* %922, %nyx_string* %924)
  br i1 %925, label %then295, label %else296
then295:
  ret i64 0
else296:
  br label %merge297
merge297:
  %926 = load %nyx_string*, %nyx_string** %782
  %927 = getelementptr [12 x i8], [12 x i8]* @.str74, i32 0, i32 0
  %928 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str74.c, i8* %927)
  %929 = call i1 @nyx_string_equals(%nyx_string* %926, %nyx_string* %928)
  br i1 %929, label %then298, label %else299
then298:
  ret i64 0
else299:
  br label %merge300
merge300:
  %930 = load %nyx_string*, %nyx_string** %782
  %931 = getelementptr [11 x i8], [11 x i8]* @.str75, i32 0, i32 0
  %932 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str75.c, i8* %931)
  %933 = call i1 @nyx_string_equals(%nyx_string* %930, %nyx_string* %932)
  br i1 %933, label %then301, label %else302
then301:
  ret i64 0
else302:
  br label %merge303
merge303:
  %934 = load %nyx_string*, %nyx_string** %782
  %935 = getelementptr [10 x i8], [10 x i8]* @.str76, i32 0, i32 0
  %936 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str76.c, i8* %935)
  %937 = call i1 @nyx_string_equals(%nyx_string* %934, %nyx_string* %936)
  br i1 %937, label %then304, label %else305
then304:
  ret i64 0
else305:
  br label %merge306
merge306:
  %938 = load %nyx_string*, %nyx_string** %782
  %939 = getelementptr [14 x i8], [14 x i8]* @.str77, i32 0, i32 0
  %940 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str77.c, i8* %939)
  %941 = call i1 @nyx_string_equals(%nyx_string* %938, %nyx_string* %940)
  br i1 %941, label %then307, label %else308
then307:
  ret i64 0
else308:
  br label %merge309
merge309:
  %942 = load %nyx_string*, %nyx_string** %782
  %943 = getelementptr [13 x i8], [13 x i8]* @.str78, i32 0, i32 0
  %944 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str78.c, i8* %943)
  %945 = call i1 @nyx_string_equals(%nyx_string* %942, %nyx_string* %944)
  br i1 %945, label %then310, label %else311
then310:
  ret i64 0
else311:
  br label %merge312
merge312:
  %946 = load %nyx_string*, %nyx_string** %782
  %947 = getelementptr [7 x i8], [7 x i8]* @.str79, i32 0, i32 0
  %948 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str79.c, i8* %947)
  %949 = call i1 @nyx_string_equals(%nyx_string* %946, %nyx_string* %948)
  br i1 %949, label %then313, label %else314
then313:
  ret i64 0
else314:
  br label %merge315
merge315:
  %950 = load %nyx_string*, %nyx_string** %782
  %951 = getelementptr [8 x i8], [8 x i8]* @.str80, i32 0, i32 0
  %952 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str80.c, i8* %951)
  %953 = call i1 @nyx_string_equals(%nyx_string* %950, %nyx_string* %952)
  br i1 %953, label %then316, label %else317
then316:
  ret i64 0
else317:
  br label %merge318
merge318:
  %954 = load %nyx_string*, %nyx_string** %782
  %955 = getelementptr [11 x i8], [11 x i8]* @.str81, i32 0, i32 0
  %956 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str81.c, i8* %955)
  %957 = call i1 @nyx_string_equals(%nyx_string* %954, %nyx_string* %956)
  br i1 %957, label %then319, label %else320
then319:
  ret i64 0
else320:
  br label %merge321
merge321:
  %958 = load %nyx_string*, %nyx_string** %782
  %959 = getelementptr [15 x i8], [15 x i8]* @.str82, i32 0, i32 0
  %960 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str82.c, i8* %959)
  %961 = call i1 @nyx_string_equals(%nyx_string* %958, %nyx_string* %960)
  br i1 %961, label %then322, label %else323
then322:
  ret i64 0
else323:
  br label %merge324
merge324:
  %962 = load %nyx_string*, %nyx_string** %782
  %963 = getelementptr [13 x i8], [13 x i8]* @.str83, i32 0, i32 0
  %964 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str83.c, i8* %963)
  %965 = call i1 @nyx_string_equals(%nyx_string* %962, %nyx_string* %964)
  br i1 %965, label %then325, label %else326
then325:
  ret i64 0
else326:
  br label %merge327
merge327:
  %966 = load %nyx_string*, %nyx_string** %782
  %967 = getelementptr [10 x i8], [10 x i8]* @.str84, i32 0, i32 0
  %968 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str84.c, i8* %967)
  %969 = call i1 @nyx_string_equals(%nyx_string* %966, %nyx_string* %968)
  br i1 %969, label %then328, label %else329
then328:
  ret i64 0
else329:
  br label %merge330
merge330:
  %970 = load %nyx_string*, %nyx_string** %782
  %971 = getelementptr [12 x i8], [12 x i8]* @.str85, i32 0, i32 0
  %972 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str85.c, i8* %971)
  %973 = call i1 @nyx_string_equals(%nyx_string* %970, %nyx_string* %972)
  br i1 %973, label %then331, label %else332
then331:
  ret i64 0
else332:
  br label %merge333
merge333:
  %974 = load %nyx_string*, %nyx_string** %782
  %975 = getelementptr [6 x i8], [6 x i8]* @.str86, i32 0, i32 0
  %976 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str86.c, i8* %975)
  %977 = call i1 @nyx_string_equals(%nyx_string* %974, %nyx_string* %976)
  br i1 %977, label %then334, label %else335
then334:
  %978 = load %ASTNode, %ASTNode* %node.ptr
  %979 = call { i64, i8* }* @bc_array_at(%ASTNode %978, i64 0)
  %980 = alloca { i64, i8* }*
  store { i64, i8* }* %979, { i64, i8* }** %980
  %981 = alloca i64
  store i64 0, i64* %981
  br label %while_cond337
while_cond337:
  %982 = load i64, i64* %981
  %983 = load { i64, i8* }*, { i64, i8* }** %980
  %984 = call i64 @nyx_array_length({ i64, i8* }* %983)
  %985 = icmp slt i64 %982, %984
  br i1 %985, label %while_body338, label %while_end339
while_body338:
  %986 = load { i64, i8* }*, { i64, i8* }** %980
  %987 = load i64, i64* %981
  %988 = call i64 @nyx_array_get({ i64, i8* }* %986, i64 %987)
  %989 = inttoptr i64 %988 to { i64, i8* }*
  %990 = call i64 @nyx_array_get({ i64, i8* }* %989, i64 0)
  %991 = call i64 @nyx_array_get({ i64, i8* }* %989, i64 1)
  %992 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %989, i64 2)
  %993 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %989, i64 3)
  %994 = inttoptr i64 %990 to %nyx_string*
  %995 = inttoptr i64 %991 to { i64, i8* }*
  %996 = alloca %ASTNode
  %997 = getelementptr inbounds %ASTNode, %ASTNode* %996, i32 0, i32 0
  store %nyx_string* %994, %nyx_string** %997
  %998 = getelementptr inbounds %ASTNode, %ASTNode* %996, i32 0, i32 1
  store { i64, i8* }* %995, { i64, i8* }** %998
  %999 = getelementptr inbounds %ASTNode, %ASTNode* %996, i32 0, i32 2
  store i64 %992, i64* %999
  %1000 = getelementptr inbounds %ASTNode, %ASTNode* %996, i32 0, i32 3
  store i64 %993, i64* %1000
  %1001 = load %ASTNode, %ASTNode* %996
  %1002 = alloca %ASTNode
  store %ASTNode %1001, %ASTNode* %1002
  %1003 = load %ASTNode, %ASTNode* %1002
  %1004 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1005 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1006 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1007 = call i64 @bc_walk(%ASTNode %1003, { i64, i8* }* %1004, { i64, i8* }* %1005, { i64, i8* }* %1006)
  %1008 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1009 = call i64 @clear_borrows({ i64, i8* }* %1008)
  %1010 = load i64, i64* %981
  %1011 = add i64 %1010, 1
  store i64 %1011, i64* %981
  br label %while_cond337
while_end339:
  ret i64 0
else335:
  br label %merge336
merge336:
  %1012 = load %nyx_string*, %nyx_string** %782
  %1013 = getelementptr [3 x i8], [3 x i8]* @.str87, i32 0, i32 0
  %1014 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str87.c, i8* %1013)
  %1015 = call i1 @nyx_string_equals(%nyx_string* %1012, %nyx_string* %1014)
  br i1 %1015, label %then340, label %else341
then340:
  %1016 = load %ASTNode, %ASTNode* %node.ptr
  %1017 = call %ASTNode @bc_node_at(%ASTNode %1016, i64 0)
  %1018 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1019 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1020 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1021 = call i64 @bc_walk(%ASTNode %1017, { i64, i8* }* %1018, { i64, i8* }* %1019, { i64, i8* }* %1020)
  %1022 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1023 = call { i64, i8* }* @state_copy({ i64, i8* }* %1022)
  %1024 = alloca { i64, i8* }*
  store { i64, i8* }* %1023, { i64, i8* }** %1024
  %1025 = load %ASTNode, %ASTNode* %node.ptr
  %1026 = call %ASTNode @bc_node_at(%ASTNode %1025, i64 1)
  %1027 = load { i64, i8* }*, { i64, i8* }** %1024
  %1028 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1029 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1030 = call i64 @bc_walk(%ASTNode %1026, { i64, i8* }* %1027, { i64, i8* }* %1028, { i64, i8* }* %1029)
  %1031 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1032 = call { i64, i8* }* @state_copy({ i64, i8* }* %1031)
  %1033 = alloca { i64, i8* }*
  store { i64, i8* }* %1032, { i64, i8* }** %1033
  %1034 = load %ASTNode, %ASTNode* %node.ptr
  %1035 = call %ASTNode @bc_node_at(%ASTNode %1034, i64 2)
  %1036 = alloca %ASTNode
  store %ASTNode %1035, %ASTNode* %1036
  %1037 = getelementptr %ASTNode, %ASTNode* %1036, i32 0, i32 0
  %1038 = load %nyx_string*, %nyx_string** %1037
  %1039 = getelementptr [6 x i8], [6 x i8]* @.str88, i32 0, i32 0
  %1040 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str88.c, i8* %1039)
  %1041 = call i1 @nyx_string_equals(%nyx_string* %1038, %nyx_string* %1040)
  %1042 = xor i1 %1041, true
  br i1 %1042, label %then343, label %else344
then343:
  %1043 = load %ASTNode, %ASTNode* %1036
  %1044 = load { i64, i8* }*, { i64, i8* }** %1033
  %1045 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1046 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1047 = call i64 @bc_walk(%ASTNode %1043, { i64, i8* }* %1044, { i64, i8* }* %1045, { i64, i8* }* %1046)
  br label %merge345
else344:
  br label %merge345
merge345:
  %1048 = load { i64, i8* }*, { i64, i8* }** %1024
  %1049 = load { i64, i8* }*, { i64, i8* }** %1033
  %1050 = call { i64, i8* }* @state_join({ i64, i8* }* %1048, { i64, i8* }* %1049)
  %1051 = alloca { i64, i8* }*
  store { i64, i8* }* %1050, { i64, i8* }** %1051
  %1052 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1053 = load { i64, i8* }*, { i64, i8* }** %1051
  %1054 = call i64 @state_merge_from({ i64, i8* }* %1052, { i64, i8* }* %1053)
  ret i64 0
else341:
  br label %merge342
merge342:
  %1055 = load %nyx_string*, %nyx_string** %782
  %1056 = getelementptr [6 x i8], [6 x i8]* @.str89, i32 0, i32 0
  %1057 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str89.c, i8* %1056)
  %1058 = call i1 @nyx_string_equals(%nyx_string* %1055, %nyx_string* %1057)
  br i1 %1058, label %then346, label %else347
then346:
  %1059 = load %ASTNode, %ASTNode* %node.ptr
  %1060 = call %ASTNode @bc_node_at(%ASTNode %1059, i64 0)
  %1061 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1062 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1063 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1064 = call i64 @bc_walk(%ASTNode %1060, { i64, i8* }* %1061, { i64, i8* }* %1062, { i64, i8* }* %1063)
  %1065 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1066 = call { i64, i8* }* @state_copy({ i64, i8* }* %1065)
  %1067 = alloca { i64, i8* }*
  store { i64, i8* }* %1066, { i64, i8* }** %1067
  %1068 = load %ASTNode, %ASTNode* %node.ptr
  %1069 = call %ASTNode @bc_node_at(%ASTNode %1068, i64 1)
  %1070 = load { i64, i8* }*, { i64, i8* }** %1067
  %1071 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1072 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1073 = call i64 @bc_walk(%ASTNode %1069, { i64, i8* }* %1070, { i64, i8* }* %1071, { i64, i8* }* %1072)
  %1074 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1075 = call { i64, i8* }* @state_copy({ i64, i8* }* %1074)
  %1076 = alloca { i64, i8* }*
  store { i64, i8* }* %1075, { i64, i8* }** %1076
  %1077 = load { i64, i8* }*, { i64, i8* }** %1067
  %1078 = load { i64, i8* }*, { i64, i8* }** %1076
  %1079 = call { i64, i8* }* @state_join({ i64, i8* }* %1077, { i64, i8* }* %1078)
  %1080 = alloca { i64, i8* }*
  store { i64, i8* }* %1079, { i64, i8* }** %1080
  %1081 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1082 = load { i64, i8* }*, { i64, i8* }** %1080
  %1083 = call i64 @state_merge_from({ i64, i8* }* %1081, { i64, i8* }* %1082)
  ret i64 0
else347:
  br label %merge348
merge348:
  %1084 = load %nyx_string*, %nyx_string** %782
  %1085 = getelementptr [4 x i8], [4 x i8]* @.str90, i32 0, i32 0
  %1086 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str90.c, i8* %1085)
  %1087 = call i1 @nyx_string_equals(%nyx_string* %1084, %nyx_string* %1086)
  br i1 %1087, label %then349, label %else350
then349:
  %1088 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %1089 = load { i64, i8* }*, { i64, i8* }** %1088
  %1090 = alloca { i64, i8* }*
  store { i64, i8* }* %1089, { i64, i8* }** %1090
  %1091 = load { i64, i8* }*, { i64, i8* }** %1090
  %1092 = call i64 @nyx_array_get({ i64, i8* }* %1091, i64 0)
  %1093 = inttoptr i64 %1092 to %nyx_string*
  %1094 = alloca %nyx_string*
  store %nyx_string* %1093, %nyx_string** %1094
  %1095 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1096 = load %nyx_string*, %nyx_string** %1094
  %1097 = call i64 @tm_add_local({ i64, i8* }* %1095, %nyx_string* %1096)
  %1098 = load %ASTNode, %ASTNode* %node.ptr
  %1099 = call %ASTNode @bc_node_at(%ASTNode %1098, i64 1)
  %1100 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1101 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1102 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1103 = call i64 @bc_walk(%ASTNode %1099, { i64, i8* }* %1100, { i64, i8* }* %1101, { i64, i8* }* %1102)
  %1104 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1105 = call { i64, i8* }* @state_copy({ i64, i8* }* %1104)
  %1106 = alloca { i64, i8* }*
  store { i64, i8* }* %1105, { i64, i8* }** %1106
  %1107 = load %ASTNode, %ASTNode* %node.ptr
  %1108 = call %ASTNode @bc_node_at(%ASTNode %1107, i64 2)
  %1109 = load { i64, i8* }*, { i64, i8* }** %1106
  %1110 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1111 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1112 = call i64 @bc_walk(%ASTNode %1108, { i64, i8* }* %1109, { i64, i8* }* %1110, { i64, i8* }* %1111)
  %1113 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1114 = call { i64, i8* }* @state_copy({ i64, i8* }* %1113)
  %1115 = alloca { i64, i8* }*
  store { i64, i8* }* %1114, { i64, i8* }** %1115
  %1116 = load { i64, i8* }*, { i64, i8* }** %1106
  %1117 = load { i64, i8* }*, { i64, i8* }** %1115
  %1118 = call { i64, i8* }* @state_join({ i64, i8* }* %1116, { i64, i8* }* %1117)
  %1119 = alloca { i64, i8* }*
  store { i64, i8* }* %1118, { i64, i8* }** %1119
  %1120 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1121 = load { i64, i8* }*, { i64, i8* }** %1119
  %1122 = call i64 @state_merge_from({ i64, i8* }* %1120, { i64, i8* }* %1121)
  ret i64 0
else350:
  br label %merge351
merge351:
  %1123 = load %nyx_string*, %nyx_string** %782
  %1124 = getelementptr [7 x i8], [7 x i8]* @.str91, i32 0, i32 0
  %1125 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str91.c, i8* %1124)
  %1126 = call i1 @nyx_string_equals(%nyx_string* %1123, %nyx_string* %1125)
  br i1 %1126, label %then352, label %else353
then352:
  %1127 = load %ASTNode, %ASTNode* %node.ptr
  %1128 = call %ASTNode @bc_node_at(%ASTNode %1127, i64 0)
  %1129 = alloca %ASTNode
  store %ASTNode %1128, %ASTNode* %1129
  %1130 = load %ASTNode, %ASTNode* %1129
  %1131 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1132 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1133 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1134 = call i64 @bc_walk(%ASTNode %1130, { i64, i8* }* %1131, { i64, i8* }* %1132, { i64, i8* }* %1133)
  %1135 = load %ASTNode, %ASTNode* %1129
  %1136 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1137 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1138 = call %nyx_string* @bc_aggregate_escaping_origin(%ASTNode %1135, { i64, i8* }* %1136, { i64, i8* }* %1137)
  %1139 = alloca %nyx_string*
  store %nyx_string* %1138, %nyx_string** %1139
  %1140 = load %nyx_string*, %nyx_string** %1139
  %1141 = getelementptr [1 x i8], [1 x i8]* @.str92, i32 0, i32 0
  %1142 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str92.c, i8* %1141)
  %1143 = call i1 @nyx_string_equals(%nyx_string* %1140, %nyx_string* %1142)
  %1144 = xor i1 %1143, true
  br i1 %1144, label %then355, label %else356
then355:
  %1145 = load %nyx_string*, %nyx_string** %1139
  %1146 = call %nyx_string* @reforigin_name(%nyx_string* %1145)
  %1147 = alloca %nyx_string*
  store %nyx_string* %1146, %nyx_string** %1147
  %1148 = load %nyx_string*, %nyx_string** %1139
  %1149 = call i1 @reforigin_is_soft(%nyx_string* %1148)
  br i1 %1149, label %then358, label %else359
then358:
  %1150 = getelementptr [30 x i8], [30 x i8]* @.str93, i32 0, i32 0
  %1151 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str93.c, i8* %1150)
  %1152 = load %nyx_string*, %nyx_string** %1147
  %1153 = call %nyx_string* @nyx_string_concat(%nyx_string* %1151, %nyx_string* %1152)
  %1154 = getelementptr [38 x i8], [38 x i8]* @.str94, i32 0, i32 0
  %1155 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str94.c, i8* %1154)
  %1156 = call %nyx_string* @nyx_string_concat(%nyx_string* %1153, %nyx_string* %1155)
  %1157 = alloca %nyx_string*
  store %nyx_string* %1156, %nyx_string** %1157
  %1158 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %1159 = load i64, i64* %1158
  %1160 = icmp sgt i64 %1159, 0
  br i1 %1160, label %then361, label %else362
then361:
  %1161 = load %nyx_string*, %nyx_string** %1157
  %1162 = getelementptr [8 x i8], [8 x i8]* @.str95, i32 0, i32 0
  %1163 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str95.c, i8* %1162)
  %1164 = call %nyx_string* @nyx_string_concat(%nyx_string* %1161, %nyx_string* %1163)
  %1165 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %1166 = load i64, i64* %1165
  %1167 = call %nyx_string* @nyx_string_from_int(i64 %1166)
  %1168 = call %nyx_string* @nyx_string_concat(%nyx_string* %1164, %nyx_string* %1167)
  %1169 = getelementptr [2 x i8], [2 x i8]* @.str96, i32 0, i32 0
  %1170 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str96.c, i8* %1169)
  %1171 = call %nyx_string* @nyx_string_concat(%nyx_string* %1168, %nyx_string* %1170)
  store %nyx_string* %1171, %nyx_string** %1157
  br label %merge363
else362:
  br label %merge363
merge363:
  %1172 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1173 = load %nyx_string*, %nyx_string** %1157
  %1174 = ptrtoint %nyx_string* %1173 to i64
  call void @nyx_array_push({ i64, i8* }* %1172, i64 %1174)
  br label %merge360
else359:
  %1175 = getelementptr [30 x i8], [30 x i8]* @.str97, i32 0, i32 0
  %1176 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str97.c, i8* %1175)
  %1177 = load %nyx_string*, %nyx_string** %1147
  %1178 = call %nyx_string* @nyx_string_concat(%nyx_string* %1176, %nyx_string* %1177)
  %1179 = getelementptr [36 x i8], [36 x i8]* @.str98, i32 0, i32 0
  %1180 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str98.c, i8* %1179)
  %1181 = call %nyx_string* @nyx_string_concat(%nyx_string* %1178, %nyx_string* %1180)
  %1182 = alloca %nyx_string*
  store %nyx_string* %1181, %nyx_string** %1182
  %1183 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %1184 = load i64, i64* %1183
  %1185 = icmp sgt i64 %1184, 0
  br i1 %1185, label %then364, label %else365
then364:
  %1186 = load %nyx_string*, %nyx_string** %1182
  %1187 = getelementptr [8 x i8], [8 x i8]* @.str99, i32 0, i32 0
  %1188 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str99.c, i8* %1187)
  %1189 = call %nyx_string* @nyx_string_concat(%nyx_string* %1186, %nyx_string* %1188)
  %1190 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %1191 = load i64, i64* %1190
  %1192 = call %nyx_string* @nyx_string_from_int(i64 %1191)
  %1193 = call %nyx_string* @nyx_string_concat(%nyx_string* %1189, %nyx_string* %1192)
  %1194 = getelementptr [2 x i8], [2 x i8]* @.str100, i32 0, i32 0
  %1195 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str100.c, i8* %1194)
  %1196 = call %nyx_string* @nyx_string_concat(%nyx_string* %1193, %nyx_string* %1195)
  store %nyx_string* %1196, %nyx_string** %1182
  br label %merge366
else365:
  br label %merge366
merge366:
  %1197 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1198 = load %nyx_string*, %nyx_string** %1182
  %1199 = ptrtoint %nyx_string* %1198 to i64
  call void @nyx_array_push({ i64, i8* }* %1197, i64 %1199)
  br label %merge360
merge360:
  br label %merge357
else356:
  br label %merge357
merge357:
  %1200 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1201 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1202 = load %ASTNode, %ASTNode* %1129
  %1203 = call i64 @bc_maybe_move({ i64, i8* }* %1200, { i64, i8* }* %1201, %ASTNode %1202)
  ret i64 0
else353:
  br label %merge354
merge354:
  %1204 = load %nyx_string*, %nyx_string** %782
  %1205 = getelementptr [4 x i8], [4 x i8]* @.str101, i32 0, i32 0
  %1206 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str101.c, i8* %1205)
  %1207 = call i1 @nyx_string_equals(%nyx_string* %1204, %nyx_string* %1206)
  br i1 %1207, label %then367, label %else368
then367:
  %1208 = load %ASTNode, %ASTNode* %node.ptr
  %1209 = call %ASTNode @bc_node_at(%ASTNode %1208, i64 2)
  %1210 = alloca %ASTNode
  store %ASTNode %1209, %ASTNode* %1210
  %1211 = load %ASTNode, %ASTNode* %1210
  %1212 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1213 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1214 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1215 = call i64 @bc_walk(%ASTNode %1211, { i64, i8* }* %1212, { i64, i8* }* %1213, { i64, i8* }* %1214)
  %1216 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1217 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1218 = load %ASTNode, %ASTNode* %1210
  %1219 = call i64 @bc_maybe_move({ i64, i8* }* %1216, { i64, i8* }* %1217, %ASTNode %1218)
  %1220 = load %ASTNode, %ASTNode* %node.ptr
  %1221 = call %ASTNode @bc_node_at(%ASTNode %1220, i64 0)
  %1222 = alloca %ASTNode
  store %ASTNode %1221, %ASTNode* %1222
  %1223 = getelementptr %ASTNode, %ASTNode* %1222, i32 0, i32 0
  %1224 = load %nyx_string*, %nyx_string** %1223
  %1225 = alloca %nyx_string*
  store %nyx_string* %1224, %nyx_string** %1225
  %1226 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %1227 = load { i64, i8* }*, { i64, i8* }** %1226
  %1228 = alloca { i64, i8* }*
  store { i64, i8* }* %1227, { i64, i8* }** %1228
  %1229 = getelementptr [1 x i8], [1 x i8]* @.str102, i32 0, i32 0
  %1230 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str102.c, i8* %1229)
  %1231 = alloca %nyx_string*
  store %nyx_string* %1230, %nyx_string** %1231
  %1232 = load { i64, i8* }*, { i64, i8* }** %1228
  %1233 = call i64 @nyx_array_length({ i64, i8* }* %1232)
  %1234 = icmp sgt i64 %1233, 3
  br i1 %1234, label %then370, label %else371
then370:
  %1235 = load { i64, i8* }*, { i64, i8* }** %1228
  %1236 = call i64 @nyx_array_get({ i64, i8* }* %1235, i64 3)
  %1237 = inttoptr i64 %1236 to %nyx_string*
  store %nyx_string* %1237, %nyx_string** %1231
  br label %merge372
else371:
  br label %merge372
merge372:
  %1238 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1239 = load %nyx_string*, %nyx_string** %1225
  %1240 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1241 = load %nyx_string*, %nyx_string** %1231
  %1242 = call i64 @move_kind_of({ i64, i8* }* %1240, %nyx_string* %1241)
  %1243 = call i64 @tm_put({ i64, i8* }* %1238, %nyx_string* %1239, i64 %1242)
  %1244 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1245 = load %nyx_string*, %nyx_string** %1225
  %1246 = call i64 @revive({ i64, i8* }* %1244, %nyx_string* %1245)
  %1247 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1248 = load %nyx_string*, %nyx_string** %1225
  %1249 = call i64 @tm_add_local({ i64, i8* }* %1247, %nyx_string* %1248)
  %1250 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1251 = load %nyx_string*, %nyx_string** %1225
  %1252 = load %ASTNode, %ASTNode* %1210
  %1253 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1254 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1255 = call %nyx_string* @bc_escaping_origin(%ASTNode %1252, { i64, i8* }* %1253, { i64, i8* }* %1254)
  %1256 = call i64 @set_reforigin({ i64, i8* }* %1250, %nyx_string* %1251, %nyx_string* %1255)
  ret i64 0
else368:
  br label %merge369
merge369:
  %1257 = load %nyx_string*, %nyx_string** %782
  %1258 = getelementptr [6 x i8], [6 x i8]* @.str103, i32 0, i32 0
  %1259 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str103.c, i8* %1258)
  %1260 = call i1 @nyx_string_equals(%nyx_string* %1257, %nyx_string* %1259)
  br i1 %1260, label %then373, label %else374
then373:
  %1261 = load %ASTNode, %ASTNode* %node.ptr
  %1262 = call %ASTNode @bc_node_at(%ASTNode %1261, i64 1)
  %1263 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1264 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1265 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1266 = call i64 @bc_walk(%ASTNode %1262, { i64, i8* }* %1263, { i64, i8* }* %1264, { i64, i8* }* %1265)
  ret i64 0
else374:
  br label %merge375
merge375:
  %1267 = load %nyx_string*, %nyx_string** %782
  %1268 = getelementptr [9 x i8], [9 x i8]* @.str104, i32 0, i32 0
  %1269 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str104.c, i8* %1268)
  %1270 = call i1 @nyx_string_equals(%nyx_string* %1267, %nyx_string* %1269)
  br i1 %1270, label %then376, label %else377
then376:
  %1271 = call { i64, i8* }* @state_new()
  %1272 = alloca { i64, i8* }*
  store { i64, i8* }* %1271, { i64, i8* }** %1272
  %1273 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1274 = call { i64, i8* }* @tm_affine_names({ i64, i8* }* %1273)
  %1275 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1276 = call { i64, i8* }* @tm_sigs({ i64, i8* }* %1275)
  %1277 = call { i64, i8* }* @tm_new({ i64, i8* }* %1274, { i64, i8* }* %1276)
  %1278 = alloca { i64, i8* }*
  store { i64, i8* }* %1277, { i64, i8* }** %1278
  %1279 = load %ASTNode, %ASTNode* %node.ptr
  %1280 = load { i64, i8* }*, { i64, i8* }** %1278
  %1281 = call i64 @bc_register_params(%ASTNode %1279, { i64, i8* }* %1280)
  %1282 = load %ASTNode, %ASTNode* %node.ptr
  %1283 = call %ASTNode @bc_node_at(%ASTNode %1282, i64 3)
  %1284 = load { i64, i8* }*, { i64, i8* }** %1272
  %1285 = load { i64, i8* }*, { i64, i8* }** %1278
  %1286 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1287 = call i64 @bc_walk(%ASTNode %1283, { i64, i8* }* %1284, { i64, i8* }* %1285, { i64, i8* }* %1286)
  ret i64 0
else377:
  br label %merge378
merge378:
  %1288 = load %nyx_string*, %nyx_string** %782
  %1289 = getelementptr [9 x i8], [9 x i8]* @.str105, i32 0, i32 0
  %1290 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str105.c, i8* %1289)
  %1291 = call i1 @nyx_string_equals(%nyx_string* %1288, %nyx_string* %1290)
  br i1 %1291, label %then379, label %else380
then379:
  %1292 = call { i64, i8* }* @state_new()
  %1293 = alloca { i64, i8* }*
  store { i64, i8* }* %1292, { i64, i8* }** %1293
  %1294 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1295 = call { i64, i8* }* @tm_affine_names({ i64, i8* }* %1294)
  %1296 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1297 = call { i64, i8* }* @tm_sigs({ i64, i8* }* %1296)
  %1298 = call { i64, i8* }* @tm_new({ i64, i8* }* %1295, { i64, i8* }* %1297)
  %1299 = alloca { i64, i8* }*
  store { i64, i8* }* %1298, { i64, i8* }** %1299
  %1300 = load %ASTNode, %ASTNode* %node.ptr
  %1301 = load { i64, i8* }*, { i64, i8* }** %1299
  %1302 = call i64 @bc_register_params(%ASTNode %1300, { i64, i8* }* %1301)
  %1303 = load %ASTNode, %ASTNode* %node.ptr
  %1304 = call %ASTNode @bc_node_at(%ASTNode %1303, i64 3)
  %1305 = load { i64, i8* }*, { i64, i8* }** %1293
  %1306 = load { i64, i8* }*, { i64, i8* }** %1299
  %1307 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1308 = call i64 @bc_walk(%ASTNode %1304, { i64, i8* }* %1305, { i64, i8* }* %1306, { i64, i8* }* %1307)
  ret i64 0
else380:
  br label %merge381
merge381:
  %1309 = load %nyx_string*, %nyx_string** %782
  %1310 = getelementptr [5 x i8], [5 x i8]* @.str106, i32 0, i32 0
  %1311 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str106.c, i8* %1310)
  %1312 = call i1 @nyx_string_equals(%nyx_string* %1309, %nyx_string* %1311)
  br i1 %1312, label %then382, label %else383
then382:
  %1313 = load %ASTNode, %ASTNode* %node.ptr
  %1314 = call { i64, i8* }* @bc_array_at(%ASTNode %1313, i64 1)
  %1315 = alloca { i64, i8* }*
  store { i64, i8* }* %1314, { i64, i8* }** %1315
  %1316 = alloca i64
  store i64 0, i64* %1316
  br label %while_cond385
while_cond385:
  %1317 = load i64, i64* %1316
  %1318 = load { i64, i8* }*, { i64, i8* }** %1315
  %1319 = call i64 @nyx_array_length({ i64, i8* }* %1318)
  %1320 = icmp slt i64 %1317, %1319
  br i1 %1320, label %while_body386, label %while_end387
while_body386:
  %1321 = load { i64, i8* }*, { i64, i8* }** %1315
  %1322 = load i64, i64* %1316
  %1323 = call i64 @nyx_array_get({ i64, i8* }* %1321, i64 %1322)
  %1324 = inttoptr i64 %1323 to { i64, i8* }*
  %1325 = call i64 @nyx_array_get({ i64, i8* }* %1324, i64 0)
  %1326 = call i64 @nyx_array_get({ i64, i8* }* %1324, i64 1)
  %1327 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %1324, i64 2)
  %1328 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %1324, i64 3)
  %1329 = inttoptr i64 %1325 to %nyx_string*
  %1330 = inttoptr i64 %1326 to { i64, i8* }*
  %1331 = alloca %ASTNode
  %1332 = getelementptr inbounds %ASTNode, %ASTNode* %1331, i32 0, i32 0
  store %nyx_string* %1329, %nyx_string** %1332
  %1333 = getelementptr inbounds %ASTNode, %ASTNode* %1331, i32 0, i32 1
  store { i64, i8* }* %1330, { i64, i8* }** %1333
  %1334 = getelementptr inbounds %ASTNode, %ASTNode* %1331, i32 0, i32 2
  store i64 %1327, i64* %1334
  %1335 = getelementptr inbounds %ASTNode, %ASTNode* %1331, i32 0, i32 3
  store i64 %1328, i64* %1335
  %1336 = load %ASTNode, %ASTNode* %1331
  %1337 = alloca %ASTNode
  store %ASTNode %1336, %ASTNode* %1337
  %1338 = load %ASTNode, %ASTNode* %1337
  %1339 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1340 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1341 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1342 = call i64 @bc_walk(%ASTNode %1338, { i64, i8* }* %1339, { i64, i8* }* %1340, { i64, i8* }* %1341)
  %1343 = load i64, i64* %1316
  %1344 = add i64 %1343, 1
  store i64 %1344, i64* %1316
  br label %while_cond385
while_end387:
  ret i64 0
else383:
  br label %merge384
merge384:
  %1345 = load %nyx_string*, %nyx_string** %782
  %1346 = getelementptr [11 x i8], [11 x i8]* @.str107, i32 0, i32 0
  %1347 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str107.c, i8* %1346)
  %1348 = call i1 @nyx_string_equals(%nyx_string* %1345, %nyx_string* %1347)
  br i1 %1348, label %then388, label %else389
then388:
  %1349 = load %ASTNode, %ASTNode* %node.ptr
  %1350 = call { i64, i8* }* @bc_array_at(%ASTNode %1349, i64 2)
  %1351 = alloca { i64, i8* }*
  store { i64, i8* }* %1350, { i64, i8* }** %1351
  %1352 = alloca i64
  store i64 0, i64* %1352
  br label %while_cond391
while_cond391:
  %1353 = load i64, i64* %1352
  %1354 = load { i64, i8* }*, { i64, i8* }** %1351
  %1355 = call i64 @nyx_array_length({ i64, i8* }* %1354)
  %1356 = icmp slt i64 %1353, %1355
  br i1 %1356, label %while_body392, label %while_end393
while_body392:
  %1357 = load { i64, i8* }*, { i64, i8* }** %1351
  %1358 = load i64, i64* %1352
  %1359 = call i64 @nyx_array_get({ i64, i8* }* %1357, i64 %1358)
  %1360 = inttoptr i64 %1359 to { i64, i8* }*
  %1361 = call i64 @nyx_array_get({ i64, i8* }* %1360, i64 0)
  %1362 = call i64 @nyx_array_get({ i64, i8* }* %1360, i64 1)
  %1363 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %1360, i64 2)
  %1364 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %1360, i64 3)
  %1365 = inttoptr i64 %1361 to %nyx_string*
  %1366 = inttoptr i64 %1362 to { i64, i8* }*
  %1367 = alloca %ASTNode
  %1368 = getelementptr inbounds %ASTNode, %ASTNode* %1367, i32 0, i32 0
  store %nyx_string* %1365, %nyx_string** %1368
  %1369 = getelementptr inbounds %ASTNode, %ASTNode* %1367, i32 0, i32 1
  store { i64, i8* }* %1366, { i64, i8* }** %1369
  %1370 = getelementptr inbounds %ASTNode, %ASTNode* %1367, i32 0, i32 2
  store i64 %1363, i64* %1370
  %1371 = getelementptr inbounds %ASTNode, %ASTNode* %1367, i32 0, i32 3
  store i64 %1364, i64* %1371
  %1372 = load %ASTNode, %ASTNode* %1367
  %1373 = alloca %ASTNode
  store %ASTNode %1372, %ASTNode* %1373
  %1374 = load %ASTNode, %ASTNode* %1373
  %1375 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1376 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1377 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1378 = call i64 @bc_walk(%ASTNode %1374, { i64, i8* }* %1375, { i64, i8* }* %1376, { i64, i8* }* %1377)
  %1379 = load i64, i64* %1352
  %1380 = add i64 %1379, 1
  store i64 %1380, i64* %1352
  br label %while_cond391
while_end393:
  ret i64 0
else389:
  br label %merge390
merge390:
  %1381 = load %nyx_string*, %nyx_string** %782
  %1382 = getelementptr [7 x i8], [7 x i8]* @.str108, i32 0, i32 0
  %1383 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str108.c, i8* %1382)
  %1384 = call i1 @nyx_string_equals(%nyx_string* %1381, %nyx_string* %1383)
  br i1 %1384, label %then394, label %else395
then394:
  %1385 = load %ASTNode, %ASTNode* %node.ptr
  %1386 = call %ASTNode @bc_node_at(%ASTNode %1385, i64 0)
  %1387 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1388 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1389 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1390 = call i64 @bc_walk(%ASTNode %1386, { i64, i8* }* %1387, { i64, i8* }* %1388, { i64, i8* }* %1389)
  ret i64 0
else395:
  br label %merge396
merge396:
  %1391 = load %nyx_string*, %nyx_string** %782
  %1392 = getelementptr [6 x i8], [6 x i8]* @.str109, i32 0, i32 0
  %1393 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str109.c, i8* %1392)
  %1394 = call i1 @nyx_string_equals(%nyx_string* %1391, %nyx_string* %1393)
  br i1 %1394, label %then397, label %else398
then397:
  %1395 = load %ASTNode, %ASTNode* %node.ptr
  %1396 = call %ASTNode @bc_node_at(%ASTNode %1395, i64 1)
  %1397 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1398 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1399 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1400 = call i64 @bc_walk(%ASTNode %1396, { i64, i8* }* %1397, { i64, i8* }* %1398, { i64, i8* }* %1399)
  %1401 = load %ASTNode, %ASTNode* %node.ptr
  %1402 = call %ASTNode @bc_node_at(%ASTNode %1401, i64 2)
  %1403 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1404 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1405 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1406 = call i64 @bc_walk(%ASTNode %1402, { i64, i8* }* %1403, { i64, i8* }* %1404, { i64, i8* }* %1405)
  ret i64 0
else398:
  br label %merge399
merge399:
  %1407 = load %nyx_string*, %nyx_string** %782
  %1408 = getelementptr [5 x i8], [5 x i8]* @.str110, i32 0, i32 0
  %1409 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str110.c, i8* %1408)
  %1410 = call i1 @nyx_string_equals(%nyx_string* %1407, %nyx_string* %1409)
  br i1 %1410, label %then400, label %else401
then400:
  %1411 = load %ASTNode, %ASTNode* %node.ptr
  %1412 = call %ASTNode @bc_node_at(%ASTNode %1411, i64 1)
  %1413 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1414 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1415 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1416 = call i64 @bc_walk(%ASTNode %1412, { i64, i8* }* %1413, { i64, i8* }* %1414, { i64, i8* }* %1415)
  ret i64 0
else401:
  br label %merge402
merge402:
  %1417 = load %nyx_string*, %nyx_string** %782
  %1418 = getelementptr [5 x i8], [5 x i8]* @.str111, i32 0, i32 0
  %1419 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str111.c, i8* %1418)
  %1420 = call i1 @nyx_string_equals(%nyx_string* %1417, %nyx_string* %1419)
  br i1 %1420, label %then403, label %else404
then403:
  %1421 = load %ASTNode, %ASTNode* %node.ptr
  %1422 = call %ASTNode @bc_node_at(%ASTNode %1421, i64 0)
  %1423 = alloca %ASTNode
  store %ASTNode %1422, %ASTNode* %1423
  %1424 = load %ASTNode, %ASTNode* %node.ptr
  %1425 = call { i64, i8* }* @bc_array_at(%ASTNode %1424, i64 1)
  %1426 = alloca { i64, i8* }*
  store { i64, i8* }* %1425, { i64, i8* }** %1426
  %1427 = getelementptr %ASTNode, %ASTNode* %1423, i32 0, i32 0
  %1428 = load %nyx_string*, %nyx_string** %1427
  %1429 = getelementptr [11 x i8], [11 x i8]* @.str112, i32 0, i32 0
  %1430 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str112.c, i8* %1429)
  %1431 = call i1 @nyx_string_equals(%nyx_string* %1428, %nyx_string* %1430)
  br i1 %1431, label %then406, label %else407
then406:
  %1432 = load %ASTNode, %ASTNode* %1423
  %1433 = call %nyx_string* @place_of(%ASTNode %1432)
  %1434 = getelementptr [5 x i8], [5 x i8]* @.str113, i32 0, i32 0
  %1435 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str113.c, i8* %1434)
  %1436 = call i1 @nyx_string_equals(%nyx_string* %1433, %nyx_string* %1435)
  br i1 %1436, label %then409, label %else410
then409:
  %1437 = load { i64, i8* }*, { i64, i8* }** %1426
  %1438 = call i64 @nyx_array_length({ i64, i8* }* %1437)
  %1439 = icmp sge i64 %1438, 1
  br i1 %1439, label %then412, label %else413
then412:
  %1440 = load { i64, i8* }*, { i64, i8* }** %1426
  %1441 = call i64 @nyx_array_get({ i64, i8* }* %1440, i64 0)
  %1442 = inttoptr i64 %1441 to { i64, i8* }*
  %1443 = call i64 @nyx_array_get({ i64, i8* }* %1442, i64 0)
  %1444 = call i64 @nyx_array_get({ i64, i8* }* %1442, i64 1)
  %1445 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %1442, i64 2)
  %1446 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %1442, i64 3)
  %1447 = inttoptr i64 %1443 to %nyx_string*
  %1448 = inttoptr i64 %1444 to { i64, i8* }*
  %1449 = alloca %ASTNode
  %1450 = getelementptr inbounds %ASTNode, %ASTNode* %1449, i32 0, i32 0
  store %nyx_string* %1447, %nyx_string** %1450
  %1451 = getelementptr inbounds %ASTNode, %ASTNode* %1449, i32 0, i32 1
  store { i64, i8* }* %1448, { i64, i8* }** %1451
  %1452 = getelementptr inbounds %ASTNode, %ASTNode* %1449, i32 0, i32 2
  store i64 %1445, i64* %1452
  %1453 = getelementptr inbounds %ASTNode, %ASTNode* %1449, i32 0, i32 3
  store i64 %1446, i64* %1453
  %1454 = load %ASTNode, %ASTNode* %1449
  %1455 = alloca %ASTNode
  store %ASTNode %1454, %ASTNode* %1455
  %1456 = load %ASTNode, %ASTNode* %1455
  %1457 = call %nyx_string* @place_path(%ASTNode %1456)
  %1458 = alloca %nyx_string*
  store %nyx_string* %1457, %nyx_string** %1458
  %1459 = load %nyx_string*, %nyx_string** %1458
  %1460 = getelementptr [1 x i8], [1 x i8]* @.str114, i32 0, i32 0
  %1461 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str114.c, i8* %1460)
  %1462 = call i1 @nyx_string_equals(%nyx_string* %1459, %nyx_string* %1461)
  %1463 = xor i1 %1462, true
  br i1 %1463, label %then415, label %else416
then415:
  %1464 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1465 = load %nyx_string*, %nyx_string** %1458
  %1466 = call i1 @is_freed({ i64, i8* }* %1464, %nyx_string* %1465)
  br i1 %1466, label %then418, label %else419
then418:
  %1467 = getelementptr [26 x i8], [26 x i8]* @.str115, i32 0, i32 0
  %1468 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str115.c, i8* %1467)
  %1469 = load %nyx_string*, %nyx_string** %1458
  %1470 = call %nyx_string* @nyx_string_concat(%nyx_string* %1468, %nyx_string* %1469)
  %1471 = getelementptr [2 x i8], [2 x i8]* @.str116, i32 0, i32 0
  %1472 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str116.c, i8* %1471)
  %1473 = call %nyx_string* @nyx_string_concat(%nyx_string* %1470, %nyx_string* %1472)
  %1474 = alloca %nyx_string*
  store %nyx_string* %1473, %nyx_string** %1474
  %1475 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %1476 = load i64, i64* %1475
  %1477 = icmp sgt i64 %1476, 0
  br i1 %1477, label %then421, label %else422
then421:
  %1478 = load %nyx_string*, %nyx_string** %1474
  %1479 = getelementptr [8 x i8], [8 x i8]* @.str117, i32 0, i32 0
  %1480 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str117.c, i8* %1479)
  %1481 = call %nyx_string* @nyx_string_concat(%nyx_string* %1478, %nyx_string* %1480)
  %1482 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %1483 = load i64, i64* %1482
  %1484 = call %nyx_string* @nyx_string_from_int(i64 %1483)
  %1485 = call %nyx_string* @nyx_string_concat(%nyx_string* %1481, %nyx_string* %1484)
  %1486 = getelementptr [2 x i8], [2 x i8]* @.str118, i32 0, i32 0
  %1487 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str118.c, i8* %1486)
  %1488 = call %nyx_string* @nyx_string_concat(%nyx_string* %1485, %nyx_string* %1487)
  store %nyx_string* %1488, %nyx_string** %1474
  br label %merge423
else422:
  br label %merge423
merge423:
  %1489 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1490 = load %nyx_string*, %nyx_string** %1474
  %1491 = ptrtoint %nyx_string* %1490 to i64
  call void @nyx_array_push({ i64, i8* }* %1489, i64 %1491)
  br label %merge420
else419:
  %1492 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1493 = load %nyx_string*, %nyx_string** %1458
  %1494 = call i64 @mark_freed({ i64, i8* }* %1492, %nyx_string* %1493)
  br label %merge420
merge420:
  %1495 = alloca i64
  store i64 1, i64* %1495
  br label %while_cond424
while_cond424:
  %1496 = load i64, i64* %1495
  %1497 = load { i64, i8* }*, { i64, i8* }** %1426
  %1498 = call i64 @nyx_array_length({ i64, i8* }* %1497)
  %1499 = icmp slt i64 %1496, %1498
  br i1 %1499, label %while_body425, label %while_end426
while_body425:
  %1500 = load { i64, i8* }*, { i64, i8* }** %1426
  %1501 = load i64, i64* %1495
  %1502 = call i64 @nyx_array_get({ i64, i8* }* %1500, i64 %1501)
  %1503 = inttoptr i64 %1502 to { i64, i8* }*
  %1504 = call i64 @nyx_array_get({ i64, i8* }* %1503, i64 0)
  %1505 = call i64 @nyx_array_get({ i64, i8* }* %1503, i64 1)
  %1506 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %1503, i64 2)
  %1507 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %1503, i64 3)
  %1508 = inttoptr i64 %1504 to %nyx_string*
  %1509 = inttoptr i64 %1505 to { i64, i8* }*
  %1510 = alloca %ASTNode
  %1511 = getelementptr inbounds %ASTNode, %ASTNode* %1510, i32 0, i32 0
  store %nyx_string* %1508, %nyx_string** %1511
  %1512 = getelementptr inbounds %ASTNode, %ASTNode* %1510, i32 0, i32 1
  store { i64, i8* }* %1509, { i64, i8* }** %1512
  %1513 = getelementptr inbounds %ASTNode, %ASTNode* %1510, i32 0, i32 2
  store i64 %1506, i64* %1513
  %1514 = getelementptr inbounds %ASTNode, %ASTNode* %1510, i32 0, i32 3
  store i64 %1507, i64* %1514
  %1515 = load %ASTNode, %ASTNode* %1510
  %1516 = alloca %ASTNode
  store %ASTNode %1515, %ASTNode* %1516
  %1517 = load %ASTNode, %ASTNode* %1516
  %1518 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1519 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1520 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1521 = call i64 @bc_walk(%ASTNode %1517, { i64, i8* }* %1518, { i64, i8* }* %1519, { i64, i8* }* %1520)
  %1522 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1523 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1524 = load %ASTNode, %ASTNode* %1516
  %1525 = call i64 @bc_maybe_move({ i64, i8* }* %1522, { i64, i8* }* %1523, %ASTNode %1524)
  %1526 = load i64, i64* %1495
  %1527 = add i64 %1526, 1
  store i64 %1527, i64* %1495
  br label %while_cond424
while_end426:
  ret i64 0
else416:
  br label %merge417
merge417:
  br label %merge414
else413:
  br label %merge414
merge414:
  br label %merge411
else410:
  br label %merge411
merge411:
  br label %merge408
else407:
  br label %merge408
merge408:
  %1528 = load %ASTNode, %ASTNode* %1423
  %1529 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1530 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1531 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1532 = call i64 @bc_walk(%ASTNode %1528, { i64, i8* }* %1529, { i64, i8* }* %1530, { i64, i8* }* %1531)
  %1533 = alloca i64
  store i64 0, i64* %1533
  br label %while_cond427
while_cond427:
  %1534 = load i64, i64* %1533
  %1535 = load { i64, i8* }*, { i64, i8* }** %1426
  %1536 = call i64 @nyx_array_length({ i64, i8* }* %1535)
  %1537 = icmp slt i64 %1534, %1536
  br i1 %1537, label %while_body428, label %while_end429
while_body428:
  %1538 = load { i64, i8* }*, { i64, i8* }** %1426
  %1539 = load i64, i64* %1533
  %1540 = call i64 @nyx_array_get({ i64, i8* }* %1538, i64 %1539)
  %1541 = inttoptr i64 %1540 to { i64, i8* }*
  %1542 = call i64 @nyx_array_get({ i64, i8* }* %1541, i64 0)
  %1543 = call i64 @nyx_array_get({ i64, i8* }* %1541, i64 1)
  %1544 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %1541, i64 2)
  %1545 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %1541, i64 3)
  %1546 = inttoptr i64 %1542 to %nyx_string*
  %1547 = inttoptr i64 %1543 to { i64, i8* }*
  %1548 = alloca %ASTNode
  %1549 = getelementptr inbounds %ASTNode, %ASTNode* %1548, i32 0, i32 0
  store %nyx_string* %1546, %nyx_string** %1549
  %1550 = getelementptr inbounds %ASTNode, %ASTNode* %1548, i32 0, i32 1
  store { i64, i8* }* %1547, { i64, i8* }** %1550
  %1551 = getelementptr inbounds %ASTNode, %ASTNode* %1548, i32 0, i32 2
  store i64 %1544, i64* %1551
  %1552 = getelementptr inbounds %ASTNode, %ASTNode* %1548, i32 0, i32 3
  store i64 %1545, i64* %1552
  %1553 = load %ASTNode, %ASTNode* %1548
  %1554 = alloca %ASTNode
  store %ASTNode %1553, %ASTNode* %1554
  %1555 = load %ASTNode, %ASTNode* %1554
  %1556 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1557 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1558 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1559 = call i64 @bc_walk(%ASTNode %1555, { i64, i8* }* %1556, { i64, i8* }* %1557, { i64, i8* }* %1558)
  %1560 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1561 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1562 = load %ASTNode, %ASTNode* %1554
  %1563 = call i64 @bc_maybe_move({ i64, i8* }* %1560, { i64, i8* }* %1561, %ASTNode %1562)
  %1564 = load i64, i64* %1533
  %1565 = add i64 %1564, 1
  store i64 %1565, i64* %1533
  br label %while_cond427
while_end429:
  ret i64 0
else404:
  br label %merge405
merge405:
  %1566 = load %nyx_string*, %nyx_string** %782
  %1567 = getelementptr [6 x i8], [6 x i8]* @.str119, i32 0, i32 0
  %1568 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str119.c, i8* %1567)
  %1569 = call i1 @nyx_string_equals(%nyx_string* %1566, %nyx_string* %1568)
  br i1 %1569, label %then430, label %else431
then430:
  %1570 = load %ASTNode, %ASTNode* %node.ptr
  %1571 = call { i64, i8* }* @bc_array_at(%ASTNode %1570, i64 0)
  %1572 = alloca { i64, i8* }*
  store { i64, i8* }* %1571, { i64, i8* }** %1572
  %1573 = alloca i64
  store i64 0, i64* %1573
  br label %while_cond433
while_cond433:
  %1574 = load i64, i64* %1573
  %1575 = load { i64, i8* }*, { i64, i8* }** %1572
  %1576 = call i64 @nyx_array_length({ i64, i8* }* %1575)
  %1577 = icmp slt i64 %1574, %1576
  br i1 %1577, label %while_body434, label %while_end435
while_body434:
  %1578 = load { i64, i8* }*, { i64, i8* }** %1572
  %1579 = load i64, i64* %1573
  %1580 = call i64 @nyx_array_get({ i64, i8* }* %1578, i64 %1579)
  %1581 = inttoptr i64 %1580 to { i64, i8* }*
  %1582 = call i64 @nyx_array_get({ i64, i8* }* %1581, i64 0)
  %1583 = call i64 @nyx_array_get({ i64, i8* }* %1581, i64 1)
  %1584 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %1581, i64 2)
  %1585 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %1581, i64 3)
  %1586 = inttoptr i64 %1582 to %nyx_string*
  %1587 = inttoptr i64 %1583 to { i64, i8* }*
  %1588 = alloca %ASTNode
  %1589 = getelementptr inbounds %ASTNode, %ASTNode* %1588, i32 0, i32 0
  store %nyx_string* %1586, %nyx_string** %1589
  %1590 = getelementptr inbounds %ASTNode, %ASTNode* %1588, i32 0, i32 1
  store { i64, i8* }* %1587, { i64, i8* }** %1590
  %1591 = getelementptr inbounds %ASTNode, %ASTNode* %1588, i32 0, i32 2
  store i64 %1584, i64* %1591
  %1592 = getelementptr inbounds %ASTNode, %ASTNode* %1588, i32 0, i32 3
  store i64 %1585, i64* %1592
  %1593 = load %ASTNode, %ASTNode* %1588
  %1594 = alloca %ASTNode
  store %ASTNode %1593, %ASTNode* %1594
  %1595 = load %ASTNode, %ASTNode* %1594
  %1596 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1597 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1598 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1599 = call i64 @bc_walk(%ASTNode %1595, { i64, i8* }* %1596, { i64, i8* }* %1597, { i64, i8* }* %1598)
  %1600 = load i64, i64* %1573
  %1601 = add i64 %1600, 1
  store i64 %1601, i64* %1573
  br label %while_cond433
while_end435:
  ret i64 0
else431:
  br label %merge432
merge432:
  %1602 = load %nyx_string*, %nyx_string** %782
  %1603 = getelementptr [12 x i8], [12 x i8]* @.str120, i32 0, i32 0
  %1604 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str120.c, i8* %1603)
  %1605 = call i1 @nyx_string_equals(%nyx_string* %1602, %nyx_string* %1604)
  br i1 %1605, label %then436, label %else437
then436:
  %1606 = load %ASTNode, %ASTNode* %node.ptr
  %1607 = call { i64, i8* }* @bc_array_at(%ASTNode %1606, i64 1)
  %1608 = alloca { i64, i8* }*
  store { i64, i8* }* %1607, { i64, i8* }** %1608
  %1609 = alloca i64
  store i64 0, i64* %1609
  br label %while_cond439
while_cond439:
  %1610 = load i64, i64* %1609
  %1611 = load { i64, i8* }*, { i64, i8* }** %1608
  %1612 = call i64 @nyx_array_length({ i64, i8* }* %1611)
  %1613 = icmp slt i64 %1610, %1612
  br i1 %1613, label %while_body440, label %while_end441
while_body440:
  %1614 = load { i64, i8* }*, { i64, i8* }** %1608
  %1615 = load i64, i64* %1609
  %1616 = call i64 @nyx_array_get({ i64, i8* }* %1614, i64 %1615)
  %1617 = inttoptr i64 %1616 to { i64, i8* }*
  %1618 = call i64 @nyx_array_get({ i64, i8* }* %1617, i64 0)
  %1619 = call i64 @nyx_array_get({ i64, i8* }* %1617, i64 1)
  %1620 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %1617, i64 2)
  %1621 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %1617, i64 3)
  %1622 = inttoptr i64 %1618 to %nyx_string*
  %1623 = inttoptr i64 %1619 to { i64, i8* }*
  %1624 = alloca %ASTNode
  %1625 = getelementptr inbounds %ASTNode, %ASTNode* %1624, i32 0, i32 0
  store %nyx_string* %1622, %nyx_string** %1625
  %1626 = getelementptr inbounds %ASTNode, %ASTNode* %1624, i32 0, i32 1
  store { i64, i8* }* %1623, { i64, i8* }** %1626
  %1627 = getelementptr inbounds %ASTNode, %ASTNode* %1624, i32 0, i32 2
  store i64 %1620, i64* %1627
  %1628 = getelementptr inbounds %ASTNode, %ASTNode* %1624, i32 0, i32 3
  store i64 %1621, i64* %1628
  %1629 = load %ASTNode, %ASTNode* %1624
  %1630 = alloca %ASTNode
  store %ASTNode %1629, %ASTNode* %1630
  %1631 = load %ASTNode, %ASTNode* %1630
  %1632 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1633 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1634 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1635 = call i64 @bc_walk(%ASTNode %1631, { i64, i8* }* %1632, { i64, i8* }* %1633, { i64, i8* }* %1634)
  %1636 = load i64, i64* %1609
  %1637 = add i64 %1636, 1
  store i64 %1637, i64* %1609
  br label %while_cond439
while_end441:
  ret i64 0
else437:
  br label %merge438
merge438:
  %1638 = load %nyx_string*, %nyx_string** %782
  %1639 = getelementptr [6 x i8], [6 x i8]* @.str121, i32 0, i32 0
  %1640 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str121.c, i8* %1639)
  %1641 = call i1 @nyx_string_equals(%nyx_string* %1638, %nyx_string* %1640)
  br i1 %1641, label %then442, label %else443
then442:
  %1642 = load %ASTNode, %ASTNode* %node.ptr
  %1643 = call %ASTNode @bc_node_at(%ASTNode %1642, i64 0)
  %1644 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1645 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1646 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1647 = call i64 @bc_walk(%ASTNode %1643, { i64, i8* }* %1644, { i64, i8* }* %1645, { i64, i8* }* %1646)
  %1648 = load %ASTNode, %ASTNode* %node.ptr
  %1649 = call %ASTNode @bc_node_at(%ASTNode %1648, i64 1)
  %1650 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1651 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1652 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1653 = call i64 @bc_walk(%ASTNode %1649, { i64, i8* }* %1650, { i64, i8* }* %1651, { i64, i8* }* %1652)
  ret i64 0
else443:
  br label %merge444
merge444:
  %1654 = load %nyx_string*, %nyx_string** %782
  %1655 = getelementptr [6 x i8], [6 x i8]* @.str122, i32 0, i32 0
  %1656 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str122.c, i8* %1655)
  %1657 = call i1 @nyx_string_equals(%nyx_string* %1654, %nyx_string* %1656)
  br i1 %1657, label %then445, label %else446
then445:
  %1658 = load %ASTNode, %ASTNode* %node.ptr
  %1659 = call %ASTNode @bc_node_at(%ASTNode %1658, i64 0)
  %1660 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1661 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1662 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1663 = call i64 @bc_walk(%ASTNode %1659, { i64, i8* }* %1660, { i64, i8* }* %1661, { i64, i8* }* %1662)
  %1664 = load %ASTNode, %ASTNode* %node.ptr
  %1665 = call %ASTNode @bc_node_at(%ASTNode %1664, i64 1)
  %1666 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1667 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1668 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1669 = call i64 @bc_walk(%ASTNode %1665, { i64, i8* }* %1666, { i64, i8* }* %1667, { i64, i8* }* %1668)
  ret i64 0
else446:
  br label %merge447
merge447:
  %1670 = load %nyx_string*, %nyx_string** %782
  %1671 = getelementptr [7 x i8], [7 x i8]* @.str123, i32 0, i32 0
  %1672 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str123.c, i8* %1671)
  %1673 = call i1 @nyx_string_equals(%nyx_string* %1670, %nyx_string* %1672)
  br i1 %1673, label %then448, label %else449
then448:
  %1674 = load %ASTNode, %ASTNode* %node.ptr
  %1675 = call %ASTNode @bc_node_at(%ASTNode %1674, i64 1)
  %1676 = alloca %ASTNode
  store %ASTNode %1675, %ASTNode* %1676
  %1677 = load %ASTNode, %ASTNode* %1676
  %1678 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1679 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1680 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1681 = call i64 @bc_walk(%ASTNode %1677, { i64, i8* }* %1678, { i64, i8* }* %1679, { i64, i8* }* %1680)
  %1682 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1683 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1684 = load %ASTNode, %ASTNode* %1676
  %1685 = call i64 @bc_maybe_move({ i64, i8* }* %1682, { i64, i8* }* %1683, %ASTNode %1684)
  %1686 = load %ASTNode, %ASTNode* %node.ptr
  %1687 = call %ASTNode @bc_node_at(%ASTNode %1686, i64 0)
  %1688 = alloca %ASTNode
  store %ASTNode %1687, %ASTNode* %1688
  %1689 = getelementptr %ASTNode, %ASTNode* %1688, i32 0, i32 0
  %1690 = load %nyx_string*, %nyx_string** %1689
  %1691 = alloca %nyx_string*
  store %nyx_string* %1690, %nyx_string** %1691
  %1692 = load %nyx_string*, %nyx_string** %1691
  %1693 = getelementptr [1 x i8], [1 x i8]* @.str124, i32 0, i32 0
  %1694 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str124.c, i8* %1693)
  %1695 = call i1 @nyx_string_equals(%nyx_string* %1692, %nyx_string* %1694)
  %1696 = xor i1 %1695, true
  br i1 %1696, label %then451, label %else452
then451:
  %1697 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1698 = load %nyx_string*, %nyx_string** %1691
  %1699 = call i64 @revive({ i64, i8* }* %1697, %nyx_string* %1698)
  %1700 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1701 = load %nyx_string*, %nyx_string** %1691
  %1702 = load %ASTNode, %ASTNode* %1676
  %1703 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1704 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1705 = call %nyx_string* @bc_escaping_origin(%ASTNode %1702, { i64, i8* }* %1703, { i64, i8* }* %1704)
  %1706 = call i64 @set_reforigin({ i64, i8* }* %1700, %nyx_string* %1701, %nyx_string* %1705)
  %1707 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1708 = load %nyx_string*, %nyx_string** %1691
  %1709 = call i1 @tm_is_local({ i64, i8* }* %1707, %nyx_string* %1708)
  %1710 = xor i1 %1709, true
  br i1 %1710, label %then454, label %else455
then454:
  %1711 = load %ASTNode, %ASTNode* %1676
  %1712 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1713 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1714 = call %nyx_string* @bc_escaping_origin(%ASTNode %1711, { i64, i8* }* %1712, { i64, i8* }* %1713)
  %1715 = alloca %nyx_string*
  store %nyx_string* %1714, %nyx_string** %1715
  %1716 = load %nyx_string*, %nyx_string** %1715
  %1717 = getelementptr [1 x i8], [1 x i8]* @.str125, i32 0, i32 0
  %1718 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str125.c, i8* %1717)
  %1719 = call i1 @nyx_string_equals(%nyx_string* %1716, %nyx_string* %1718)
  %1720 = xor i1 %1719, true
  br i1 %1720, label %then457, label %else458
then457:
  %1721 = load %nyx_string*, %nyx_string** %1715
  %1722 = call %nyx_string* @reforigin_name(%nyx_string* %1721)
  %1723 = alloca %nyx_string*
  store %nyx_string* %1722, %nyx_string** %1723
  %1724 = load %nyx_string*, %nyx_string** %1715
  %1725 = call i1 @reforigin_is_soft(%nyx_string* %1724)
  br i1 %1725, label %then460, label %else461
then460:
  %1726 = getelementptr [30 x i8], [30 x i8]* @.str126, i32 0, i32 0
  %1727 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str126.c, i8* %1726)
  %1728 = load %nyx_string*, %nyx_string** %1723
  %1729 = call %nyx_string* @nyx_string_concat(%nyx_string* %1727, %nyx_string* %1728)
  %1730 = getelementptr [38 x i8], [38 x i8]* @.str127, i32 0, i32 0
  %1731 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str127.c, i8* %1730)
  %1732 = call %nyx_string* @nyx_string_concat(%nyx_string* %1729, %nyx_string* %1731)
  %1733 = alloca %nyx_string*
  store %nyx_string* %1732, %nyx_string** %1733
  %1734 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %1735 = load i64, i64* %1734
  %1736 = icmp sgt i64 %1735, 0
  br i1 %1736, label %then463, label %else464
then463:
  %1737 = load %nyx_string*, %nyx_string** %1733
  %1738 = getelementptr [8 x i8], [8 x i8]* @.str128, i32 0, i32 0
  %1739 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str128.c, i8* %1738)
  %1740 = call %nyx_string* @nyx_string_concat(%nyx_string* %1737, %nyx_string* %1739)
  %1741 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %1742 = load i64, i64* %1741
  %1743 = call %nyx_string* @nyx_string_from_int(i64 %1742)
  %1744 = call %nyx_string* @nyx_string_concat(%nyx_string* %1740, %nyx_string* %1743)
  %1745 = getelementptr [2 x i8], [2 x i8]* @.str129, i32 0, i32 0
  %1746 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str129.c, i8* %1745)
  %1747 = call %nyx_string* @nyx_string_concat(%nyx_string* %1744, %nyx_string* %1746)
  store %nyx_string* %1747, %nyx_string** %1733
  br label %merge465
else464:
  br label %merge465
merge465:
  %1748 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1749 = load %nyx_string*, %nyx_string** %1733
  %1750 = ptrtoint %nyx_string* %1749 to i64
  call void @nyx_array_push({ i64, i8* }* %1748, i64 %1750)
  br label %merge462
else461:
  %1751 = getelementptr [30 x i8], [30 x i8]* @.str130, i32 0, i32 0
  %1752 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str130.c, i8* %1751)
  %1753 = load %nyx_string*, %nyx_string** %1723
  %1754 = call %nyx_string* @nyx_string_concat(%nyx_string* %1752, %nyx_string* %1753)
  %1755 = getelementptr [39 x i8], [39 x i8]* @.str131, i32 0, i32 0
  %1756 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str131.c, i8* %1755)
  %1757 = call %nyx_string* @nyx_string_concat(%nyx_string* %1754, %nyx_string* %1756)
  %1758 = alloca %nyx_string*
  store %nyx_string* %1757, %nyx_string** %1758
  %1759 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %1760 = load i64, i64* %1759
  %1761 = icmp sgt i64 %1760, 0
  br i1 %1761, label %then466, label %else467
then466:
  %1762 = load %nyx_string*, %nyx_string** %1758
  %1763 = getelementptr [8 x i8], [8 x i8]* @.str132, i32 0, i32 0
  %1764 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str132.c, i8* %1763)
  %1765 = call %nyx_string* @nyx_string_concat(%nyx_string* %1762, %nyx_string* %1764)
  %1766 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %1767 = load i64, i64* %1766
  %1768 = call %nyx_string* @nyx_string_from_int(i64 %1767)
  %1769 = call %nyx_string* @nyx_string_concat(%nyx_string* %1765, %nyx_string* %1768)
  %1770 = getelementptr [2 x i8], [2 x i8]* @.str133, i32 0, i32 0
  %1771 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str133.c, i8* %1770)
  %1772 = call %nyx_string* @nyx_string_concat(%nyx_string* %1769, %nyx_string* %1771)
  store %nyx_string* %1772, %nyx_string** %1758
  br label %merge468
else467:
  br label %merge468
merge468:
  %1773 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1774 = load %nyx_string*, %nyx_string** %1758
  %1775 = ptrtoint %nyx_string* %1774 to i64
  call void @nyx_array_push({ i64, i8* }* %1773, i64 %1775)
  br label %merge462
merge462:
  br label %merge459
else458:
  br label %merge459
merge459:
  br label %merge456
else455:
  br label %merge456
merge456:
  br label %merge453
else452:
  br label %merge453
merge453:
  ret i64 0
else449:
  br label %merge450
merge450:
  %1776 = load %nyx_string*, %nyx_string** %782
  %1777 = getelementptr [16 x i8], [16 x i8]* @.str134, i32 0, i32 0
  %1778 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str134.c, i8* %1777)
  %1779 = call i1 @nyx_string_equals(%nyx_string* %1776, %nyx_string* %1778)
  br i1 %1779, label %then469, label %else470
then469:
  %1780 = load %ASTNode, %ASTNode* %node.ptr
  %1781 = call %ASTNode @bc_node_at(%ASTNode %1780, i64 1)
  %1782 = alloca %ASTNode
  store %ASTNode %1781, %ASTNode* %1782
  %1783 = load %ASTNode, %ASTNode* %1782
  %1784 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1785 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1786 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1787 = call i64 @bc_walk(%ASTNode %1783, { i64, i8* }* %1784, { i64, i8* }* %1785, { i64, i8* }* %1786)
  %1788 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1789 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1790 = load %ASTNode, %ASTNode* %1782
  %1791 = call i64 @bc_maybe_move({ i64, i8* }* %1788, { i64, i8* }* %1789, %ASTNode %1790)
  ret i64 0
else470:
  br label %merge471
merge471:
  %1792 = load %nyx_string*, %nyx_string** %782
  %1793 = getelementptr [13 x i8], [13 x i8]* @.str135, i32 0, i32 0
  %1794 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str135.c, i8* %1793)
  %1795 = call i1 @nyx_string_equals(%nyx_string* %1792, %nyx_string* %1794)
  br i1 %1795, label %then472, label %else473
then472:
  %1796 = load %ASTNode, %ASTNode* %node.ptr
  %1797 = call %ASTNode @bc_node_at(%ASTNode %1796, i64 0)
  %1798 = alloca %ASTNode
  store %ASTNode %1797, %ASTNode* %1798
  %1799 = load %ASTNode, %ASTNode* %1798
  %1800 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1801 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1802 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1803 = call i64 @bc_walk(%ASTNode %1799, { i64, i8* }* %1800, { i64, i8* }* %1801, { i64, i8* }* %1802)
  %1804 = load %ASTNode, %ASTNode* %node.ptr
  %1805 = call %ASTNode @bc_node_at(%ASTNode %1804, i64 1)
  %1806 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1807 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1808 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1809 = call i64 @bc_walk(%ASTNode %1805, { i64, i8* }* %1806, { i64, i8* }* %1807, { i64, i8* }* %1808)
  %1810 = load %ASTNode, %ASTNode* %node.ptr
  %1811 = call %ASTNode @bc_node_at(%ASTNode %1810, i64 2)
  %1812 = alloca %ASTNode
  store %ASTNode %1811, %ASTNode* %1812
  %1813 = load %ASTNode, %ASTNode* %1812
  %1814 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1815 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1816 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1817 = call i64 @bc_walk(%ASTNode %1813, { i64, i8* }* %1814, { i64, i8* }* %1815, { i64, i8* }* %1816)
  %1818 = load %ASTNode, %ASTNode* %1798
  %1819 = call %nyx_string* @place_of(%ASTNode %1818)
  %1820 = alloca %nyx_string*
  store %nyx_string* %1819, %nyx_string** %1820
  %1821 = load %nyx_string*, %nyx_string** %1820
  %1822 = getelementptr [1 x i8], [1 x i8]* @.str136, i32 0, i32 0
  %1823 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str136.c, i8* %1822)
  %1824 = call i1 @nyx_string_equals(%nyx_string* %1821, %nyx_string* %1823)
  %1825 = xor i1 %1824, true
  br i1 %1825, label %then475, label %else476
then475:
  %1826 = load %nyx_string*, %nyx_string** %1820
  %1827 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1828 = call i1 @bc_dest_outlives(%nyx_string* %1826, { i64, i8* }* %1827)
  br i1 %1828, label %then478, label %else479
then478:
  %1829 = load %ASTNode, %ASTNode* %1812
  %1830 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1831 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1832 = call %nyx_string* @bc_escaping_origin(%ASTNode %1829, { i64, i8* }* %1830, { i64, i8* }* %1831)
  %1833 = alloca %nyx_string*
  store %nyx_string* %1832, %nyx_string** %1833
  %1834 = load %nyx_string*, %nyx_string** %1833
  %1835 = getelementptr [1 x i8], [1 x i8]* @.str137, i32 0, i32 0
  %1836 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str137.c, i8* %1835)
  %1837 = call i1 @nyx_string_equals(%nyx_string* %1834, %nyx_string* %1836)
  %1838 = xor i1 %1837, true
  br i1 %1838, label %then481, label %else482
then481:
  %1839 = load %nyx_string*, %nyx_string** %1833
  %1840 = call %nyx_string* @reforigin_name(%nyx_string* %1839)
  %1841 = alloca %nyx_string*
  store %nyx_string* %1840, %nyx_string** %1841
  %1842 = load %nyx_string*, %nyx_string** %1833
  %1843 = call i1 @reforigin_is_soft(%nyx_string* %1842)
  br i1 %1843, label %then484, label %else485
then484:
  %1844 = getelementptr [30 x i8], [30 x i8]* @.str138, i32 0, i32 0
  %1845 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str138.c, i8* %1844)
  %1846 = load %nyx_string*, %nyx_string** %1841
  %1847 = call %nyx_string* @nyx_string_concat(%nyx_string* %1845, %nyx_string* %1846)
  %1848 = getelementptr [38 x i8], [38 x i8]* @.str139, i32 0, i32 0
  %1849 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str139.c, i8* %1848)
  %1850 = call %nyx_string* @nyx_string_concat(%nyx_string* %1847, %nyx_string* %1849)
  %1851 = alloca %nyx_string*
  store %nyx_string* %1850, %nyx_string** %1851
  %1852 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %1853 = load i64, i64* %1852
  %1854 = icmp sgt i64 %1853, 0
  br i1 %1854, label %then487, label %else488
then487:
  %1855 = load %nyx_string*, %nyx_string** %1851
  %1856 = getelementptr [8 x i8], [8 x i8]* @.str140, i32 0, i32 0
  %1857 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str140.c, i8* %1856)
  %1858 = call %nyx_string* @nyx_string_concat(%nyx_string* %1855, %nyx_string* %1857)
  %1859 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %1860 = load i64, i64* %1859
  %1861 = call %nyx_string* @nyx_string_from_int(i64 %1860)
  %1862 = call %nyx_string* @nyx_string_concat(%nyx_string* %1858, %nyx_string* %1861)
  %1863 = getelementptr [2 x i8], [2 x i8]* @.str141, i32 0, i32 0
  %1864 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str141.c, i8* %1863)
  %1865 = call %nyx_string* @nyx_string_concat(%nyx_string* %1862, %nyx_string* %1864)
  store %nyx_string* %1865, %nyx_string** %1851
  br label %merge489
else488:
  br label %merge489
merge489:
  %1866 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1867 = load %nyx_string*, %nyx_string** %1851
  %1868 = ptrtoint %nyx_string* %1867 to i64
  call void @nyx_array_push({ i64, i8* }* %1866, i64 %1868)
  br label %merge486
else485:
  %1869 = getelementptr [30 x i8], [30 x i8]* @.str142, i32 0, i32 0
  %1870 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str142.c, i8* %1869)
  %1871 = load %nyx_string*, %nyx_string** %1841
  %1872 = call %nyx_string* @nyx_string_concat(%nyx_string* %1870, %nyx_string* %1871)
  %1873 = getelementptr [39 x i8], [39 x i8]* @.str143, i32 0, i32 0
  %1874 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str143.c, i8* %1873)
  %1875 = call %nyx_string* @nyx_string_concat(%nyx_string* %1872, %nyx_string* %1874)
  %1876 = alloca %nyx_string*
  store %nyx_string* %1875, %nyx_string** %1876
  %1877 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %1878 = load i64, i64* %1877
  %1879 = icmp sgt i64 %1878, 0
  br i1 %1879, label %then490, label %else491
then490:
  %1880 = load %nyx_string*, %nyx_string** %1876
  %1881 = getelementptr [8 x i8], [8 x i8]* @.str144, i32 0, i32 0
  %1882 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str144.c, i8* %1881)
  %1883 = call %nyx_string* @nyx_string_concat(%nyx_string* %1880, %nyx_string* %1882)
  %1884 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %1885 = load i64, i64* %1884
  %1886 = call %nyx_string* @nyx_string_from_int(i64 %1885)
  %1887 = call %nyx_string* @nyx_string_concat(%nyx_string* %1883, %nyx_string* %1886)
  %1888 = getelementptr [2 x i8], [2 x i8]* @.str145, i32 0, i32 0
  %1889 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str145.c, i8* %1888)
  %1890 = call %nyx_string* @nyx_string_concat(%nyx_string* %1887, %nyx_string* %1889)
  store %nyx_string* %1890, %nyx_string** %1876
  br label %merge492
else491:
  br label %merge492
merge492:
  %1891 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1892 = load %nyx_string*, %nyx_string** %1876
  %1893 = ptrtoint %nyx_string* %1892 to i64
  call void @nyx_array_push({ i64, i8* }* %1891, i64 %1893)
  br label %merge486
merge486:
  br label %merge483
else482:
  br label %merge483
merge483:
  br label %merge480
else479:
  %1894 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1895 = load %nyx_string*, %nyx_string** %1820
  %1896 = call i1 @tm_is_local({ i64, i8* }* %1894, %nyx_string* %1895)
  br i1 %1896, label %then493, label %else494
then493:
  %1897 = load %ASTNode, %ASTNode* %1812
  %1898 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1899 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1900 = call %nyx_string* @bc_escaping_origin(%ASTNode %1897, { i64, i8* }* %1898, { i64, i8* }* %1899)
  %1901 = alloca %nyx_string*
  store %nyx_string* %1900, %nyx_string** %1901
  %1902 = load %nyx_string*, %nyx_string** %1901
  %1903 = getelementptr [1 x i8], [1 x i8]* @.str146, i32 0, i32 0
  %1904 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str146.c, i8* %1903)
  %1905 = call i1 @nyx_string_equals(%nyx_string* %1902, %nyx_string* %1904)
  %1906 = xor i1 %1905, true
  br i1 %1906, label %then496, label %else497
then496:
  %1907 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1908 = load %nyx_string*, %nyx_string** %1820
  %1909 = load %nyx_string*, %nyx_string** %1901
  %1910 = call i64 @set_reforigin({ i64, i8* }* %1907, %nyx_string* %1908, %nyx_string* %1909)
  br label %merge498
else497:
  br label %merge498
merge498:
  br label %merge495
else494:
  br label %merge495
merge495:
  br label %merge480
merge480:
  br label %merge477
else476:
  br label %merge477
merge477:
  ret i64 0
else473:
  br label %merge474
merge474:
  %1911 = load %nyx_string*, %nyx_string** %782
  %1912 = getelementptr [13 x i8], [13 x i8]* @.str147, i32 0, i32 0
  %1913 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str147.c, i8* %1912)
  %1914 = call i1 @nyx_string_equals(%nyx_string* %1911, %nyx_string* %1913)
  br i1 %1914, label %then499, label %else500
then499:
  %1915 = load %ASTNode, %ASTNode* %node.ptr
  %1916 = call %ASTNode @bc_node_at(%ASTNode %1915, i64 0)
  %1917 = alloca %ASTNode
  store %ASTNode %1916, %ASTNode* %1917
  %1918 = load %ASTNode, %ASTNode* %node.ptr
  %1919 = call %ASTNode @bc_node_at(%ASTNode %1918, i64 2)
  %1920 = alloca %ASTNode
  store %ASTNode %1919, %ASTNode* %1920
  %1921 = load %ASTNode, %ASTNode* %1917
  %1922 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1923 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1924 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1925 = call i64 @bc_walk(%ASTNode %1921, { i64, i8* }* %1922, { i64, i8* }* %1923, { i64, i8* }* %1924)
  %1926 = load %ASTNode, %ASTNode* %1920
  %1927 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1928 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1929 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1930 = call i64 @bc_walk(%ASTNode %1926, { i64, i8* }* %1927, { i64, i8* }* %1928, { i64, i8* }* %1929)
  %1931 = load %ASTNode, %ASTNode* %1917
  %1932 = call %nyx_string* @place_of(%ASTNode %1931)
  %1933 = alloca %nyx_string*
  store %nyx_string* %1932, %nyx_string** %1933
  %1934 = load %nyx_string*, %nyx_string** %1933
  %1935 = getelementptr [1 x i8], [1 x i8]* @.str148, i32 0, i32 0
  %1936 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str148.c, i8* %1935)
  %1937 = call i1 @nyx_string_equals(%nyx_string* %1934, %nyx_string* %1936)
  %1938 = xor i1 %1937, true
  br i1 %1938, label %then502, label %else503
then502:
  %1939 = load %nyx_string*, %nyx_string** %1933
  %1940 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1941 = call i1 @bc_dest_outlives(%nyx_string* %1939, { i64, i8* }* %1940)
  br i1 %1941, label %then505, label %else506
then505:
  %1942 = load %ASTNode, %ASTNode* %1920
  %1943 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1944 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1945 = call %nyx_string* @bc_escaping_origin(%ASTNode %1942, { i64, i8* }* %1943, { i64, i8* }* %1944)
  %1946 = alloca %nyx_string*
  store %nyx_string* %1945, %nyx_string** %1946
  %1947 = load %nyx_string*, %nyx_string** %1946
  %1948 = getelementptr [1 x i8], [1 x i8]* @.str149, i32 0, i32 0
  %1949 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str149.c, i8* %1948)
  %1950 = call i1 @nyx_string_equals(%nyx_string* %1947, %nyx_string* %1949)
  %1951 = xor i1 %1950, true
  br i1 %1951, label %then508, label %else509
then508:
  %1952 = load %nyx_string*, %nyx_string** %1946
  %1953 = call %nyx_string* @reforigin_name(%nyx_string* %1952)
  %1954 = alloca %nyx_string*
  store %nyx_string* %1953, %nyx_string** %1954
  %1955 = load %nyx_string*, %nyx_string** %1946
  %1956 = call i1 @reforigin_is_soft(%nyx_string* %1955)
  br i1 %1956, label %then511, label %else512
then511:
  %1957 = getelementptr [30 x i8], [30 x i8]* @.str150, i32 0, i32 0
  %1958 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str150.c, i8* %1957)
  %1959 = load %nyx_string*, %nyx_string** %1954
  %1960 = call %nyx_string* @nyx_string_concat(%nyx_string* %1958, %nyx_string* %1959)
  %1961 = getelementptr [38 x i8], [38 x i8]* @.str151, i32 0, i32 0
  %1962 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str151.c, i8* %1961)
  %1963 = call %nyx_string* @nyx_string_concat(%nyx_string* %1960, %nyx_string* %1962)
  %1964 = alloca %nyx_string*
  store %nyx_string* %1963, %nyx_string** %1964
  %1965 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %1966 = load i64, i64* %1965
  %1967 = icmp sgt i64 %1966, 0
  br i1 %1967, label %then514, label %else515
then514:
  %1968 = load %nyx_string*, %nyx_string** %1964
  %1969 = getelementptr [8 x i8], [8 x i8]* @.str152, i32 0, i32 0
  %1970 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str152.c, i8* %1969)
  %1971 = call %nyx_string* @nyx_string_concat(%nyx_string* %1968, %nyx_string* %1970)
  %1972 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %1973 = load i64, i64* %1972
  %1974 = call %nyx_string* @nyx_string_from_int(i64 %1973)
  %1975 = call %nyx_string* @nyx_string_concat(%nyx_string* %1971, %nyx_string* %1974)
  %1976 = getelementptr [2 x i8], [2 x i8]* @.str153, i32 0, i32 0
  %1977 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str153.c, i8* %1976)
  %1978 = call %nyx_string* @nyx_string_concat(%nyx_string* %1975, %nyx_string* %1977)
  store %nyx_string* %1978, %nyx_string** %1964
  br label %merge516
else515:
  br label %merge516
merge516:
  %1979 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1980 = load %nyx_string*, %nyx_string** %1964
  %1981 = ptrtoint %nyx_string* %1980 to i64
  call void @nyx_array_push({ i64, i8* }* %1979, i64 %1981)
  br label %merge513
else512:
  %1982 = getelementptr [30 x i8], [30 x i8]* @.str154, i32 0, i32 0
  %1983 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str154.c, i8* %1982)
  %1984 = load %nyx_string*, %nyx_string** %1954
  %1985 = call %nyx_string* @nyx_string_concat(%nyx_string* %1983, %nyx_string* %1984)
  %1986 = getelementptr [39 x i8], [39 x i8]* @.str155, i32 0, i32 0
  %1987 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str155.c, i8* %1986)
  %1988 = call %nyx_string* @nyx_string_concat(%nyx_string* %1985, %nyx_string* %1987)
  %1989 = alloca %nyx_string*
  store %nyx_string* %1988, %nyx_string** %1989
  %1990 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %1991 = load i64, i64* %1990
  %1992 = icmp sgt i64 %1991, 0
  br i1 %1992, label %then517, label %else518
then517:
  %1993 = load %nyx_string*, %nyx_string** %1989
  %1994 = getelementptr [8 x i8], [8 x i8]* @.str156, i32 0, i32 0
  %1995 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str156.c, i8* %1994)
  %1996 = call %nyx_string* @nyx_string_concat(%nyx_string* %1993, %nyx_string* %1995)
  %1997 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %1998 = load i64, i64* %1997
  %1999 = call %nyx_string* @nyx_string_from_int(i64 %1998)
  %2000 = call %nyx_string* @nyx_string_concat(%nyx_string* %1996, %nyx_string* %1999)
  %2001 = getelementptr [2 x i8], [2 x i8]* @.str157, i32 0, i32 0
  %2002 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str157.c, i8* %2001)
  %2003 = call %nyx_string* @nyx_string_concat(%nyx_string* %2000, %nyx_string* %2002)
  store %nyx_string* %2003, %nyx_string** %1989
  br label %merge519
else518:
  br label %merge519
merge519:
  %2004 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2005 = load %nyx_string*, %nyx_string** %1989
  %2006 = ptrtoint %nyx_string* %2005 to i64
  call void @nyx_array_push({ i64, i8* }* %2004, i64 %2006)
  br label %merge513
merge513:
  br label %merge510
else509:
  br label %merge510
merge510:
  br label %merge507
else506:
  %2007 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2008 = load %nyx_string*, %nyx_string** %1933
  %2009 = call i1 @tm_is_local({ i64, i8* }* %2007, %nyx_string* %2008)
  br i1 %2009, label %then520, label %else521
then520:
  %2010 = load %ASTNode, %ASTNode* %1920
  %2011 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2012 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2013 = call %nyx_string* @bc_escaping_origin(%ASTNode %2010, { i64, i8* }* %2011, { i64, i8* }* %2012)
  %2014 = alloca %nyx_string*
  store %nyx_string* %2013, %nyx_string** %2014
  %2015 = load %nyx_string*, %nyx_string** %2014
  %2016 = getelementptr [1 x i8], [1 x i8]* @.str158, i32 0, i32 0
  %2017 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str158.c, i8* %2016)
  %2018 = call i1 @nyx_string_equals(%nyx_string* %2015, %nyx_string* %2017)
  %2019 = xor i1 %2018, true
  br i1 %2019, label %then523, label %else524
then523:
  %2020 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2021 = load %nyx_string*, %nyx_string** %1933
  %2022 = load %nyx_string*, %nyx_string** %2014
  %2023 = call i64 @set_reforigin({ i64, i8* }* %2020, %nyx_string* %2021, %nyx_string* %2022)
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
  %2024 = load %nyx_string*, %nyx_string** %782
  %2025 = getelementptr [12 x i8], [12 x i8]* @.str159, i32 0, i32 0
  %2026 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str159.c, i8* %2025)
  %2027 = call i1 @nyx_string_equals(%nyx_string* %2024, %nyx_string* %2026)
  br i1 %2027, label %then526, label %else527
then526:
  %2028 = load %ASTNode, %ASTNode* %node.ptr
  %2029 = call { i64, i8* }* @bc_array_at(%ASTNode %2028, i64 1)
  %2030 = alloca { i64, i8* }*
  store { i64, i8* }* %2029, { i64, i8* }** %2030
  %2031 = alloca i64
  store i64 0, i64* %2031
  br label %while_cond529
while_cond529:
  %2032 = load i64, i64* %2031
  %2033 = load { i64, i8* }*, { i64, i8* }** %2030
  %2034 = call i64 @nyx_array_length({ i64, i8* }* %2033)
  %2035 = icmp slt i64 %2032, %2034
  br i1 %2035, label %while_body530, label %while_end531
while_body530:
  %2036 = load { i64, i8* }*, { i64, i8* }** %2030
  %2037 = load i64, i64* %2031
  %2038 = call i64 @nyx_array_get({ i64, i8* }* %2036, i64 %2037)
  %2039 = inttoptr i64 %2038 to { i64, i8* }*
  %2040 = alloca { i64, i8* }*
  store { i64, i8* }* %2039, { i64, i8* }** %2040
  %2041 = load { i64, i8* }*, { i64, i8* }** %2040
  %2042 = call i64 @nyx_array_get({ i64, i8* }* %2041, i64 1)
  %2043 = inttoptr i64 %2042 to { i64, i8* }*
  %2044 = call i64 @nyx_array_get({ i64, i8* }* %2043, i64 0)
  %2045 = call i64 @nyx_array_get({ i64, i8* }* %2043, i64 1)
  %2046 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %2043, i64 2)
  %2047 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %2043, i64 3)
  %2048 = inttoptr i64 %2044 to %nyx_string*
  %2049 = inttoptr i64 %2045 to { i64, i8* }*
  %2050 = alloca %ASTNode
  %2051 = getelementptr inbounds %ASTNode, %ASTNode* %2050, i32 0, i32 0
  store %nyx_string* %2048, %nyx_string** %2051
  %2052 = getelementptr inbounds %ASTNode, %ASTNode* %2050, i32 0, i32 1
  store { i64, i8* }* %2049, { i64, i8* }** %2052
  %2053 = getelementptr inbounds %ASTNode, %ASTNode* %2050, i32 0, i32 2
  store i64 %2046, i64* %2053
  %2054 = getelementptr inbounds %ASTNode, %ASTNode* %2050, i32 0, i32 3
  store i64 %2047, i64* %2054
  %2055 = load %ASTNode, %ASTNode* %2050
  %2056 = alloca %ASTNode
  store %ASTNode %2055, %ASTNode* %2056
  %2057 = load %ASTNode, %ASTNode* %2056
  %2058 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2059 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2060 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2061 = call i64 @bc_walk(%ASTNode %2057, { i64, i8* }* %2058, { i64, i8* }* %2059, { i64, i8* }* %2060)
  %2062 = load i64, i64* %2031
  %2063 = add i64 %2062, 1
  store i64 %2063, i64* %2031
  br label %while_cond529
while_end531:
  ret i64 0
else527:
  br label %merge528
merge528:
  %2064 = load %nyx_string*, %nyx_string** %782
  %2065 = getelementptr [13 x i8], [13 x i8]* @.str160, i32 0, i32 0
  %2066 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str160.c, i8* %2065)
  %2067 = call i1 @nyx_string_equals(%nyx_string* %2064, %nyx_string* %2066)
  br i1 %2067, label %then532, label %else533
then532:
  %2068 = load %ASTNode, %ASTNode* %node.ptr
  %2069 = call %ASTNode @bc_node_at(%ASTNode %2068, i64 0)
  %2070 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2071 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2072 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2073 = call i64 @bc_walk(%ASTNode %2069, { i64, i8* }* %2070, { i64, i8* }* %2071, { i64, i8* }* %2072)
  ret i64 0
else533:
  br label %merge534
merge534:
  %2074 = load %nyx_string*, %nyx_string** %782
  %2075 = getelementptr [12 x i8], [12 x i8]* @.str161, i32 0, i32 0
  %2076 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str161.c, i8* %2075)
  %2077 = call i1 @nyx_string_equals(%nyx_string* %2074, %nyx_string* %2076)
  br i1 %2077, label %then535, label %else536
then535:
  %2078 = load %ASTNode, %ASTNode* %node.ptr
  %2079 = call %ASTNode @bc_node_at(%ASTNode %2078, i64 0)
  %2080 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2081 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2082 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2083 = call i64 @bc_walk(%ASTNode %2079, { i64, i8* }* %2080, { i64, i8* }* %2081, { i64, i8* }* %2082)
  %2084 = load %ASTNode, %ASTNode* %node.ptr
  %2085 = call { i64, i8* }* @bc_array_at(%ASTNode %2084, i64 2)
  %2086 = alloca { i64, i8* }*
  store { i64, i8* }* %2085, { i64, i8* }** %2086
  %2087 = alloca i64
  store i64 0, i64* %2087
  br label %while_cond538
while_cond538:
  %2088 = load i64, i64* %2087
  %2089 = load { i64, i8* }*, { i64, i8* }** %2086
  %2090 = call i64 @nyx_array_length({ i64, i8* }* %2089)
  %2091 = icmp slt i64 %2088, %2090
  br i1 %2091, label %while_body539, label %while_end540
while_body539:
  %2092 = load { i64, i8* }*, { i64, i8* }** %2086
  %2093 = load i64, i64* %2087
  %2094 = call i64 @nyx_array_get({ i64, i8* }* %2092, i64 %2093)
  %2095 = inttoptr i64 %2094 to { i64, i8* }*
  %2096 = call i64 @nyx_array_get({ i64, i8* }* %2095, i64 0)
  %2097 = call i64 @nyx_array_get({ i64, i8* }* %2095, i64 1)
  %2098 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %2095, i64 2)
  %2099 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %2095, i64 3)
  %2100 = inttoptr i64 %2096 to %nyx_string*
  %2101 = inttoptr i64 %2097 to { i64, i8* }*
  %2102 = alloca %ASTNode
  %2103 = getelementptr inbounds %ASTNode, %ASTNode* %2102, i32 0, i32 0
  store %nyx_string* %2100, %nyx_string** %2103
  %2104 = getelementptr inbounds %ASTNode, %ASTNode* %2102, i32 0, i32 1
  store { i64, i8* }* %2101, { i64, i8* }** %2104
  %2105 = getelementptr inbounds %ASTNode, %ASTNode* %2102, i32 0, i32 2
  store i64 %2098, i64* %2105
  %2106 = getelementptr inbounds %ASTNode, %ASTNode* %2102, i32 0, i32 3
  store i64 %2099, i64* %2106
  %2107 = load %ASTNode, %ASTNode* %2102
  %2108 = alloca %ASTNode
  store %ASTNode %2107, %ASTNode* %2108
  %2109 = load %ASTNode, %ASTNode* %2108
  %2110 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2111 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2112 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2113 = call i64 @bc_walk(%ASTNode %2109, { i64, i8* }* %2110, { i64, i8* }* %2111, { i64, i8* }* %2112)
  %2114 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2115 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2116 = load %ASTNode, %ASTNode* %2108
  %2117 = call i64 @bc_maybe_move({ i64, i8* }* %2114, { i64, i8* }* %2115, %ASTNode %2116)
  %2118 = load i64, i64* %2087
  %2119 = add i64 %2118, 1
  store i64 %2119, i64* %2087
  br label %while_cond538
while_end540:
  ret i64 0
else536:
  br label %merge537
merge537:
  %2120 = load %nyx_string*, %nyx_string** %782
  %2121 = getelementptr [6 x i8], [6 x i8]* @.str162, i32 0, i32 0
  %2122 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str162.c, i8* %2121)
  %2123 = call i1 @nyx_string_equals(%nyx_string* %2120, %nyx_string* %2122)
  br i1 %2123, label %then541, label %else542
then541:
  %2124 = load %ASTNode, %ASTNode* %node.ptr
  %2125 = call %ASTNode @bc_node_at(%ASTNode %2124, i64 0)
  %2126 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2127 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2128 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2129 = call i64 @bc_walk(%ASTNode %2125, { i64, i8* }* %2126, { i64, i8* }* %2127, { i64, i8* }* %2128)
  %2130 = load %ASTNode, %ASTNode* %node.ptr
  %2131 = call { i64, i8* }* @bc_array_at(%ASTNode %2130, i64 1)
  %2132 = alloca { i64, i8* }*
  store { i64, i8* }* %2131, { i64, i8* }** %2132
  %2133 = alloca i64
  store i64 0, i64* %2133
  %2134 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2135 = call { i64, i8* }* @state_copy({ i64, i8* }* %2134)
  %2136 = alloca { i64, i8* }*
  store { i64, i8* }* %2135, { i64, i8* }** %2136
  %2137 = alloca i1
  store i1 0, i1* %2137
  br label %while_cond544
while_cond544:
  %2138 = load i64, i64* %2133
  %2139 = load { i64, i8* }*, { i64, i8* }** %2132
  %2140 = call i64 @nyx_array_length({ i64, i8* }* %2139)
  %2141 = icmp slt i64 %2138, %2140
  br i1 %2141, label %while_body545, label %while_end546
while_body545:
  %2142 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2143 = call { i64, i8* }* @state_copy({ i64, i8* }* %2142)
  %2144 = alloca { i64, i8* }*
  store { i64, i8* }* %2143, { i64, i8* }** %2144
  %2145 = load { i64, i8* }*, { i64, i8* }** %2132
  %2146 = load i64, i64* %2133
  %2147 = call i64 @nyx_array_get({ i64, i8* }* %2145, i64 %2146)
  %2148 = inttoptr i64 %2147 to { i64, i8* }*
  %2149 = call i64 @nyx_array_get({ i64, i8* }* %2148, i64 0)
  %2150 = call i64 @nyx_array_get({ i64, i8* }* %2148, i64 1)
  %2151 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %2148, i64 2)
  %2152 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %2148, i64 3)
  %2153 = inttoptr i64 %2149 to %nyx_string*
  %2154 = inttoptr i64 %2150 to { i64, i8* }*
  %2155 = alloca %ASTNode
  %2156 = getelementptr inbounds %ASTNode, %ASTNode* %2155, i32 0, i32 0
  store %nyx_string* %2153, %nyx_string** %2156
  %2157 = getelementptr inbounds %ASTNode, %ASTNode* %2155, i32 0, i32 1
  store { i64, i8* }* %2154, { i64, i8* }** %2157
  %2158 = getelementptr inbounds %ASTNode, %ASTNode* %2155, i32 0, i32 2
  store i64 %2151, i64* %2158
  %2159 = getelementptr inbounds %ASTNode, %ASTNode* %2155, i32 0, i32 3
  store i64 %2152, i64* %2159
  %2160 = load %ASTNode, %ASTNode* %2155
  %2161 = alloca %ASTNode
  store %ASTNode %2160, %ASTNode* %2161
  %2162 = load %ASTNode, %ASTNode* %2161
  %2163 = load { i64, i8* }*, { i64, i8* }** %2144
  %2164 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2165 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2166 = call i64 @bc_walk(%ASTNode %2162, { i64, i8* }* %2163, { i64, i8* }* %2164, { i64, i8* }* %2165)
  %2167 = load i1, i1* %2137
  br i1 %2167, label %then547, label %else548
then547:
  %2168 = load { i64, i8* }*, { i64, i8* }** %2136
  %2169 = load { i64, i8* }*, { i64, i8* }** %2144
  %2170 = call { i64, i8* }* @state_join({ i64, i8* }* %2168, { i64, i8* }* %2169)
  store { i64, i8* }* %2170, { i64, i8* }** %2136
  br label %merge549
else548:
  %2171 = load { i64, i8* }*, { i64, i8* }** %2144
  store { i64, i8* }* %2171, { i64, i8* }** %2136
  store i1 1, i1* %2137
  br label %merge549
merge549:
  %2172 = load i64, i64* %2133
  %2173 = add i64 %2172, 1
  store i64 %2173, i64* %2133
  br label %while_cond544
while_end546:
  %2174 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2175 = load { i64, i8* }*, { i64, i8* }** %2136
  %2176 = call i64 @state_merge_from({ i64, i8* }* %2174, { i64, i8* }* %2175)
  ret i64 0
else542:
  br label %merge543
merge543:
  %2177 = load %nyx_string*, %nyx_string** %782
  %2178 = getelementptr [10 x i8], [10 x i8]* @.str163, i32 0, i32 0
  %2179 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str163.c, i8* %2178)
  %2180 = call i1 @nyx_string_equals(%nyx_string* %2177, %nyx_string* %2179)
  br i1 %2180, label %then550, label %else551
then550:
  %2181 = load %ASTNode, %ASTNode* %node.ptr
  %2182 = call %ASTNode @bc_node_at(%ASTNode %2181, i64 0)
  %2183 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2184 = call i64 @bc_register_pattern_bindings(%ASTNode %2182, { i64, i8* }* %2183)
  %2185 = load %ASTNode, %ASTNode* %node.ptr
  %2186 = call %ASTNode @bc_node_at(%ASTNode %2185, i64 1)
  %2187 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2188 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2189 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2190 = call i64 @bc_walk(%ASTNode %2186, { i64, i8* }* %2187, { i64, i8* }* %2188, { i64, i8* }* %2189)
  ret i64 0
else551:
  br label %merge552
merge552:
  %2191 = load %nyx_string*, %nyx_string** %782
  %2192 = getelementptr [7 x i8], [7 x i8]* @.str164, i32 0, i32 0
  %2193 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str164.c, i8* %2192)
  %2194 = call i1 @nyx_string_equals(%nyx_string* %2191, %nyx_string* %2193)
  br i1 %2194, label %then553, label %else554
then553:
  %2195 = load %ASTNode, %ASTNode* %node.ptr
  %2196 = call %ASTNode @bc_node_at(%ASTNode %2195, i64 0)
  %2197 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2198 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2199 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2200 = call i64 @bc_walk(%ASTNode %2196, { i64, i8* }* %2197, { i64, i8* }* %2198, { i64, i8* }* %2199)
  ret i64 0
else554:
  br label %merge555
merge555:
  %2201 = load %nyx_string*, %nyx_string** %782
  %2202 = getelementptr [5 x i8], [5 x i8]* @.str165, i32 0, i32 0
  %2203 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str165.c, i8* %2202)
  %2204 = call i1 @nyx_string_equals(%nyx_string* %2201, %nyx_string* %2203)
  br i1 %2204, label %then556, label %else557
then556:
  %2205 = load %ASTNode, %ASTNode* %node.ptr
  %2206 = call %ASTNode @bc_node_at(%ASTNode %2205, i64 0)
  %2207 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2208 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2209 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2210 = call i64 @bc_walk(%ASTNode %2206, { i64, i8* }* %2207, { i64, i8* }* %2208, { i64, i8* }* %2209)
  ret i64 0
else557:
  br label %merge558
merge558:
  %2211 = load %nyx_string*, %nyx_string** %782
  %2212 = getelementptr [13 x i8], [13 x i8]* @.str166, i32 0, i32 0
  %2213 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str166.c, i8* %2212)
  %2214 = call i1 @nyx_string_equals(%nyx_string* %2211, %nyx_string* %2213)
  br i1 %2214, label %then559, label %else560
then559:
  %2215 = load %ASTNode, %ASTNode* %node.ptr
  %2216 = call %ASTNode @bc_node_at(%ASTNode %2215, i64 0)
  %2217 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2218 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2219 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2220 = call i64 @bc_walk(%ASTNode %2216, { i64, i8* }* %2217, { i64, i8* }* %2218, { i64, i8* }* %2219)
  ret i64 0
else560:
  br label %merge561
merge561:
  %2221 = load %nyx_string*, %nyx_string** %782
  %2222 = getelementptr [8 x i8], [8 x i8]* @.str167, i32 0, i32 0
  %2223 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str167.c, i8* %2222)
  %2224 = call i1 @nyx_string_equals(%nyx_string* %2221, %nyx_string* %2223)
  br i1 %2224, label %then562, label %else563
then562:
  %2225 = load %ASTNode, %ASTNode* %node.ptr
  %2226 = call %ASTNode @bc_node_at(%ASTNode %2225, i64 0)
  %2227 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2228 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2229 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2230 = call i64 @bc_walk(%ASTNode %2226, { i64, i8* }* %2227, { i64, i8* }* %2228, { i64, i8* }* %2229)
  %2231 = load %ASTNode, %ASTNode* %node.ptr
  %2232 = call %nyx_string* @place_of(%ASTNode %2231)
  %2233 = alloca %nyx_string*
  store %nyx_string* %2232, %nyx_string** %2233
  %2234 = load %nyx_string*, %nyx_string** %2233
  %2235 = getelementptr [1 x i8], [1 x i8]* @.str168, i32 0, i32 0
  %2236 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str168.c, i8* %2235)
  %2237 = call i1 @nyx_string_equals(%nyx_string* %2234, %nyx_string* %2236)
  %2238 = xor i1 %2237, true
  br i1 %2238, label %then565, label %else566
then565:
  %2239 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2240 = load %nyx_string*, %nyx_string** %2233
  %2241 = call i64 @get_borrow({ i64, i8* }* %2239, %nyx_string* %2240)
  %2242 = alloca i64
  store i64 %2241, i64* %2242
  %2243 = load i64, i64* %2242
  %2244 = icmp eq i64 %2243, 2
  br i1 %2244, label %then568, label %else569
then568:
  %2245 = getelementptr [25 x i8], [25 x i8]* @.str169, i32 0, i32 0
  %2246 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str169.c, i8* %2245)
  %2247 = load %nyx_string*, %nyx_string** %2233
  %2248 = call %nyx_string* @nyx_string_concat(%nyx_string* %2246, %nyx_string* %2247)
  %2249 = getelementptr [41 x i8], [41 x i8]* @.str170, i32 0, i32 0
  %2250 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str170.c, i8* %2249)
  %2251 = call %nyx_string* @nyx_string_concat(%nyx_string* %2248, %nyx_string* %2250)
  %2252 = alloca %nyx_string*
  store %nyx_string* %2251, %nyx_string** %2252
  %2253 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %2254 = load i64, i64* %2253
  %2255 = icmp sgt i64 %2254, 0
  br i1 %2255, label %then571, label %else572
then571:
  %2256 = load %nyx_string*, %nyx_string** %2252
  %2257 = getelementptr [8 x i8], [8 x i8]* @.str171, i32 0, i32 0
  %2258 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str171.c, i8* %2257)
  %2259 = call %nyx_string* @nyx_string_concat(%nyx_string* %2256, %nyx_string* %2258)
  %2260 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %2261 = load i64, i64* %2260
  %2262 = call %nyx_string* @nyx_string_from_int(i64 %2261)
  %2263 = call %nyx_string* @nyx_string_concat(%nyx_string* %2259, %nyx_string* %2262)
  %2264 = getelementptr [2 x i8], [2 x i8]* @.str172, i32 0, i32 0
  %2265 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str172.c, i8* %2264)
  %2266 = call %nyx_string* @nyx_string_concat(%nyx_string* %2263, %nyx_string* %2265)
  store %nyx_string* %2266, %nyx_string** %2252
  br label %merge573
else572:
  br label %merge573
merge573:
  %2267 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2268 = load %nyx_string*, %nyx_string** %2252
  %2269 = ptrtoint %nyx_string* %2268 to i64
  call void @nyx_array_push({ i64, i8* }* %2267, i64 %2269)
  br label %merge570
else569:
  br label %merge570
merge570:
  %2270 = load i64, i64* %2242
  %2271 = icmp ne i64 %2270, 2
  br i1 %2271, label %then574, label %else575
then574:
  %2272 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2273 = load %nyx_string*, %nyx_string** %2233
  %2274 = call i64 @set_borrow({ i64, i8* }* %2272, %nyx_string* %2273, i64 1)
  br label %merge576
else575:
  br label %merge576
merge576:
  br label %merge567
else566:
  br label %merge567
merge567:
  ret i64 0
else563:
  br label %merge564
merge564:
  %2275 = load %nyx_string*, %nyx_string** %782
  %2276 = getelementptr [12 x i8], [12 x i8]* @.str173, i32 0, i32 0
  %2277 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str173.c, i8* %2276)
  %2278 = call i1 @nyx_string_equals(%nyx_string* %2275, %nyx_string* %2277)
  br i1 %2278, label %then577, label %else578
then577:
  %2279 = load %ASTNode, %ASTNode* %node.ptr
  %2280 = call %ASTNode @bc_node_at(%ASTNode %2279, i64 0)
  %2281 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2282 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2283 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2284 = call i64 @bc_walk(%ASTNode %2280, { i64, i8* }* %2281, { i64, i8* }* %2282, { i64, i8* }* %2283)
  %2285 = load %ASTNode, %ASTNode* %node.ptr
  %2286 = call %nyx_string* @place_of(%ASTNode %2285)
  %2287 = alloca %nyx_string*
  store %nyx_string* %2286, %nyx_string** %2287
  %2288 = load %nyx_string*, %nyx_string** %2287
  %2289 = getelementptr [1 x i8], [1 x i8]* @.str174, i32 0, i32 0
  %2290 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str174.c, i8* %2289)
  %2291 = call i1 @nyx_string_equals(%nyx_string* %2288, %nyx_string* %2290)
  %2292 = xor i1 %2291, true
  br i1 %2292, label %then580, label %else581
then580:
  %2293 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2294 = load %nyx_string*, %nyx_string** %2287
  %2295 = call i64 @get_borrow({ i64, i8* }* %2293, %nyx_string* %2294)
  %2296 = alloca i64
  store i64 %2295, i64* %2296
  %2297 = load i64, i64* %2296
  %2298 = icmp eq i64 %2297, 2
  br i1 %2298, label %then583, label %else584
then583:
  %2299 = getelementptr [25 x i8], [25 x i8]* @.str175, i32 0, i32 0
  %2300 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str175.c, i8* %2299)
  %2301 = load %nyx_string*, %nyx_string** %2287
  %2302 = call %nyx_string* @nyx_string_concat(%nyx_string* %2300, %nyx_string* %2301)
  %2303 = getelementptr [38 x i8], [38 x i8]* @.str176, i32 0, i32 0
  %2304 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str176.c, i8* %2303)
  %2305 = call %nyx_string* @nyx_string_concat(%nyx_string* %2302, %nyx_string* %2304)
  %2306 = alloca %nyx_string*
  store %nyx_string* %2305, %nyx_string** %2306
  %2307 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %2308 = load i64, i64* %2307
  %2309 = icmp sgt i64 %2308, 0
  br i1 %2309, label %then586, label %else587
then586:
  %2310 = load %nyx_string*, %nyx_string** %2306
  %2311 = getelementptr [8 x i8], [8 x i8]* @.str177, i32 0, i32 0
  %2312 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str177.c, i8* %2311)
  %2313 = call %nyx_string* @nyx_string_concat(%nyx_string* %2310, %nyx_string* %2312)
  %2314 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %2315 = load i64, i64* %2314
  %2316 = call %nyx_string* @nyx_string_from_int(i64 %2315)
  %2317 = call %nyx_string* @nyx_string_concat(%nyx_string* %2313, %nyx_string* %2316)
  %2318 = getelementptr [2 x i8], [2 x i8]* @.str178, i32 0, i32 0
  %2319 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str178.c, i8* %2318)
  %2320 = call %nyx_string* @nyx_string_concat(%nyx_string* %2317, %nyx_string* %2319)
  store %nyx_string* %2320, %nyx_string** %2306
  br label %merge588
else587:
  br label %merge588
merge588:
  %2321 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2322 = load %nyx_string*, %nyx_string** %2306
  %2323 = ptrtoint %nyx_string* %2322 to i64
  call void @nyx_array_push({ i64, i8* }* %2321, i64 %2323)
  br label %merge585
else584:
  br label %merge585
merge585:
  %2324 = load i64, i64* %2296
  %2325 = icmp eq i64 %2324, 1
  br i1 %2325, label %then589, label %else590
then589:
  %2326 = getelementptr [25 x i8], [25 x i8]* @.str179, i32 0, i32 0
  %2327 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str179.c, i8* %2326)
  %2328 = load %nyx_string*, %nyx_string** %2287
  %2329 = call %nyx_string* @nyx_string_concat(%nyx_string* %2327, %nyx_string* %2328)
  %2330 = getelementptr [46 x i8], [46 x i8]* @.str180, i32 0, i32 0
  %2331 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str180.c, i8* %2330)
  %2332 = call %nyx_string* @nyx_string_concat(%nyx_string* %2329, %nyx_string* %2331)
  %2333 = alloca %nyx_string*
  store %nyx_string* %2332, %nyx_string** %2333
  %2334 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %2335 = load i64, i64* %2334
  %2336 = icmp sgt i64 %2335, 0
  br i1 %2336, label %then592, label %else593
then592:
  %2337 = load %nyx_string*, %nyx_string** %2333
  %2338 = getelementptr [8 x i8], [8 x i8]* @.str181, i32 0, i32 0
  %2339 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str181.c, i8* %2338)
  %2340 = call %nyx_string* @nyx_string_concat(%nyx_string* %2337, %nyx_string* %2339)
  %2341 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %2342 = load i64, i64* %2341
  %2343 = call %nyx_string* @nyx_string_from_int(i64 %2342)
  %2344 = call %nyx_string* @nyx_string_concat(%nyx_string* %2340, %nyx_string* %2343)
  %2345 = getelementptr [2 x i8], [2 x i8]* @.str182, i32 0, i32 0
  %2346 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str182.c, i8* %2345)
  %2347 = call %nyx_string* @nyx_string_concat(%nyx_string* %2344, %nyx_string* %2346)
  store %nyx_string* %2347, %nyx_string** %2333
  br label %merge594
else593:
  br label %merge594
merge594:
  %2348 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2349 = load %nyx_string*, %nyx_string** %2333
  %2350 = ptrtoint %nyx_string* %2349 to i64
  call void @nyx_array_push({ i64, i8* }* %2348, i64 %2350)
  br label %merge591
else590:
  br label %merge591
merge591:
  %2351 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2352 = load %nyx_string*, %nyx_string** %2287
  %2353 = call i64 @set_borrow({ i64, i8* }* %2351, %nyx_string* %2352, i64 2)
  br label %merge582
else581:
  br label %merge582
merge582:
  ret i64 0
else578:
  br label %merge579
merge579:
  %2354 = load %nyx_string*, %nyx_string** %782
  %2355 = getelementptr [6 x i8], [6 x i8]* @.str183, i32 0, i32 0
  %2356 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str183.c, i8* %2355)
  %2357 = call i1 @nyx_string_equals(%nyx_string* %2354, %nyx_string* %2356)
  br i1 %2357, label %then595, label %else596
then595:
  %2358 = load %ASTNode, %ASTNode* %node.ptr
  %2359 = call %ASTNode @bc_node_at(%ASTNode %2358, i64 0)
  %2360 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2361 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2362 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2363 = call i64 @bc_walk(%ASTNode %2359, { i64, i8* }* %2360, { i64, i8* }* %2361, { i64, i8* }* %2362)
  ret i64 0
else596:
  br label %merge597
merge597:
  %2364 = load %nyx_string*, %nyx_string** %782
  %2365 = getelementptr [13 x i8], [13 x i8]* @.str184, i32 0, i32 0
  %2366 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str184.c, i8* %2365)
  %2367 = call i1 @nyx_string_equals(%nyx_string* %2364, %nyx_string* %2366)
  br i1 %2367, label %then598, label %else599
then598:
  %2368 = load %ASTNode, %ASTNode* %node.ptr
  %2369 = call %ASTNode @bc_node_at(%ASTNode %2368, i64 0)
  %2370 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2371 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2372 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2373 = call i64 @bc_walk(%ASTNode %2369, { i64, i8* }* %2370, { i64, i8* }* %2371, { i64, i8* }* %2372)
  %2374 = load %ASTNode, %ASTNode* %node.ptr
  %2375 = call %ASTNode @bc_node_at(%ASTNode %2374, i64 1)
  %2376 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2377 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2378 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2379 = call i64 @bc_walk(%ASTNode %2375, { i64, i8* }* %2376, { i64, i8* }* %2377, { i64, i8* }* %2378)
  ret i64 0
else599:
  br label %merge600
merge600:
  %2380 = load %nyx_string*, %nyx_string** %782
  %2381 = getelementptr [6 x i8], [6 x i8]* @.str185, i32 0, i32 0
  %2382 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str185.c, i8* %2381)
  %2383 = call i1 @nyx_string_equals(%nyx_string* %2380, %nyx_string* %2382)
  br i1 %2383, label %then601, label %else602
then601:
  %2384 = load %ASTNode, %ASTNode* %node.ptr
  %2385 = call %ASTNode @bc_node_at(%ASTNode %2384, i64 0)
  %2386 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2387 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2388 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2389 = call i64 @bc_walk(%ASTNode %2385, { i64, i8* }* %2386, { i64, i8* }* %2387, { i64, i8* }* %2388)
  ret i64 0
else602:
  br label %merge603
merge603:
  %2390 = load %nyx_string*, %nyx_string** %782
  %2391 = getelementptr [10 x i8], [10 x i8]* @.str186, i32 0, i32 0
  %2392 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str186.c, i8* %2391)
  %2393 = call i1 @nyx_string_equals(%nyx_string* %2390, %nyx_string* %2392)
  br i1 %2393, label %then604, label %else605
then604:
  %2394 = load %ASTNode, %ASTNode* %node.ptr
  %2395 = call %ASTNode @bc_node_at(%ASTNode %2394, i64 0)
  %2396 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2397 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2398 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2399 = call i64 @bc_walk(%ASTNode %2395, { i64, i8* }* %2396, { i64, i8* }* %2397, { i64, i8* }* %2398)
  %2400 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %2401 = load { i64, i8* }*, { i64, i8* }** %2400
  %2402 = alloca { i64, i8* }*
  store { i64, i8* }* %2401, { i64, i8* }** %2402
  %2403 = load { i64, i8* }*, { i64, i8* }** %2402
  %2404 = call i64 @nyx_array_get({ i64, i8* }* %2403, i64 1)
  %2405 = inttoptr i64 %2404 to %nyx_string*
  %2406 = alloca %nyx_string*
  store %nyx_string* %2405, %nyx_string** %2406
  %2407 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2408 = load %nyx_string*, %nyx_string** %2406
  %2409 = call i64 @tm_add_local({ i64, i8* }* %2407, %nyx_string* %2408)
  %2410 = load %ASTNode, %ASTNode* %node.ptr
  %2411 = call %ASTNode @bc_node_at(%ASTNode %2410, i64 2)
  %2412 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2413 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2414 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2415 = call i64 @bc_walk(%ASTNode %2411, { i64, i8* }* %2412, { i64, i8* }* %2413, { i64, i8* }* %2414)
  ret i64 0
else605:
  br label %merge606
merge606:
  %2416 = load %nyx_string*, %nyx_string** %782
  %2417 = getelementptr [6 x i8], [6 x i8]* @.str187, i32 0, i32 0
  %2418 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str187.c, i8* %2417)
  %2419 = call i1 @nyx_string_equals(%nyx_string* %2416, %nyx_string* %2418)
  br i1 %2419, label %then607, label %else608
then607:
  %2420 = load %ASTNode, %ASTNode* %node.ptr
  %2421 = call %ASTNode @bc_node_at(%ASTNode %2420, i64 0)
  %2422 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2423 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2424 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2425 = call i64 @bc_walk(%ASTNode %2421, { i64, i8* }* %2422, { i64, i8* }* %2423, { i64, i8* }* %2424)
  ret i64 0
else608:
  br label %merge609
merge609:
  %2426 = load %nyx_string*, %nyx_string** %782
  %2427 = getelementptr [22 x i8], [22 x i8]* @.str188, i32 0, i32 0
  %2428 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str188.c, i8* %2427)
  %2429 = call i1 @nyx_string_equals(%nyx_string* %2426, %nyx_string* %2428)
  br i1 %2429, label %then610, label %else611
then610:
  %2430 = load %ASTNode, %ASTNode* %node.ptr
  %2431 = call %ASTNode @bc_node_at(%ASTNode %2430, i64 2)
  %2432 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2433 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2434 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2435 = call i64 @bc_walk(%ASTNode %2431, { i64, i8* }* %2432, { i64, i8* }* %2433, { i64, i8* }* %2434)
  %2436 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %2437 = load { i64, i8* }*, { i64, i8* }** %2436
  %2438 = alloca { i64, i8* }*
  store { i64, i8* }* %2437, { i64, i8* }** %2438
  %2439 = load { i64, i8* }*, { i64, i8* }** %2438
  %2440 = call i64 @nyx_array_get({ i64, i8* }* %2439, i64 0)
  %2441 = inttoptr i64 %2440 to { i64, i8* }*
  %2442 = alloca { i64, i8* }*
  store { i64, i8* }* %2441, { i64, i8* }** %2442
  %2443 = alloca i64
  store i64 0, i64* %2443
  br label %while_cond613
while_cond613:
  %2444 = load i64, i64* %2443
  %2445 = load { i64, i8* }*, { i64, i8* }** %2442
  %2446 = call i64 @nyx_array_length({ i64, i8* }* %2445)
  %2447 = icmp slt i64 %2444, %2446
  br i1 %2447, label %while_body614, label %while_end615
while_body614:
  %2448 = load { i64, i8* }*, { i64, i8* }** %2442
  %2449 = load i64, i64* %2443
  %2450 = call i64 @nyx_array_get({ i64, i8* }* %2448, i64 %2449)
  %2451 = inttoptr i64 %2450 to %nyx_string*
  %2452 = alloca %nyx_string*
  store %nyx_string* %2451, %nyx_string** %2452
  %2453 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2454 = load %nyx_string*, %nyx_string** %2452
  %2455 = call i64 @tm_add_local({ i64, i8* }* %2453, %nyx_string* %2454)
  %2456 = load i64, i64* %2443
  %2457 = add i64 %2456, 1
  store i64 %2457, i64* %2443
  br label %while_cond613
while_end615:
  ret i64 0
else611:
  br label %merge612
merge612:
  %2458 = load %nyx_string*, %nyx_string** %782
  %2459 = getelementptr [10 x i8], [10 x i8]* @.str189, i32 0, i32 0
  %2460 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str189.c, i8* %2459)
  %2461 = call i1 @nyx_string_equals(%nyx_string* %2458, %nyx_string* %2460)
  br i1 %2461, label %then616, label %else617
then616:
  %2462 = load %ASTNode, %ASTNode* %node.ptr
  %2463 = call %ASTNode @bc_node_at(%ASTNode %2462, i64 1)
  %2464 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2465 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2466 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2467 = call i64 @bc_walk(%ASTNode %2463, { i64, i8* }* %2464, { i64, i8* }* %2465, { i64, i8* }* %2466)
  ret i64 0
else617:
  br label %merge618
merge618:
  %2468 = load %nyx_string*, %nyx_string** %782
  %2469 = getelementptr [7 x i8], [7 x i8]* @.str190, i32 0, i32 0
  %2470 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str190.c, i8* %2469)
  %2471 = call i1 @nyx_string_equals(%nyx_string* %2468, %nyx_string* %2470)
  br i1 %2471, label %then619, label %else620
then619:
  %2472 = load %ASTNode, %ASTNode* %node.ptr
  %2473 = call %ASTNode @bc_node_at(%ASTNode %2472, i64 0)
  %2474 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2475 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2476 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2477 = call i64 @bc_walk(%ASTNode %2473, { i64, i8* }* %2474, { i64, i8* }* %2475, { i64, i8* }* %2476)
  ret i64 0
else620:
  br label %merge621
merge621:
  ret i64 0
}

define internal i64 @bc_register_params(
%ASTNode %fn_node.param, { i64, i8* }* %tmap.param) {
  %fn_node.ptr = alloca %ASTNode
  store %ASTNode %fn_node.param, %ASTNode* %fn_node.ptr
  %tmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %2478 = load %ASTNode, %ASTNode* %fn_node.ptr
  %2479 = call { i64, i8* }* @bc_array_at(%ASTNode %2478, i64 1)
  %2480 = alloca { i64, i8* }*
  store { i64, i8* }* %2479, { i64, i8* }** %2480
  %2481 = alloca i64
  store i64 0, i64* %2481
  %2482 = getelementptr [5 x i8], [5 x i8]* @.str191, i32 0, i32 0
  %2483 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str191.c, i8* %2482)
  %2484 = alloca %nyx_string*
  store %nyx_string* %2483, %nyx_string** %2484
  %2485 = getelementptr [2 x i8], [2 x i8]* @.str192, i32 0, i32 0
  %2486 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str192.c, i8* %2485)
  %2487 = alloca %nyx_string*
  store %nyx_string* %2486, %nyx_string** %2487
  %2488 = getelementptr [2 x i8], [2 x i8]* @.str193, i32 0, i32 0
  %2489 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str193.c, i8* %2488)
  %2490 = alloca %nyx_string*
  store %nyx_string* %2489, %nyx_string** %2490
  br label %while_cond622
while_cond622:
  %2491 = load i64, i64* %2481
  %2492 = load { i64, i8* }*, { i64, i8* }** %2480
  %2493 = call i64 @nyx_array_length({ i64, i8* }* %2492)
  %2494 = icmp slt i64 %2491, %2493
  br i1 %2494, label %while_body623, label %while_end624
while_body623:
  %2495 = load { i64, i8* }*, { i64, i8* }** %2480
  %2496 = load i64, i64* %2481
  %2497 = call i64 @nyx_array_get({ i64, i8* }* %2495, i64 %2496)
  %2498 = inttoptr i64 %2497 to { i64, i8* }*
  %2499 = alloca { i64, i8* }*
  store { i64, i8* }* %2498, { i64, i8* }** %2499
  %2500 = load { i64, i8* }*, { i64, i8* }** %2499
  %2501 = call i64 @nyx_array_length({ i64, i8* }* %2500)
  %2502 = icmp sge i64 %2501, 2
  br i1 %2502, label %then625, label %else626
then625:
  %2503 = load { i64, i8* }*, { i64, i8* }** %2499
  %2504 = call i64 @nyx_array_get({ i64, i8* }* %2503, i64 0)
  %2505 = inttoptr i64 %2504 to %nyx_string*
  %2506 = alloca %nyx_string*
  store %nyx_string* %2505, %nyx_string** %2506
  %2507 = load { i64, i8* }*, { i64, i8* }** %2499
  %2508 = call i64 @nyx_array_get({ i64, i8* }* %2507, i64 1)
  %2509 = inttoptr i64 %2508 to %nyx_string*
  %2510 = alloca %nyx_string*
  store %nyx_string* %2509, %nyx_string** %2510
  %2511 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2512 = load %nyx_string*, %nyx_string** %2506
  %2513 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2514 = load %nyx_string*, %nyx_string** %2510
  %2515 = call i64 @move_kind_of({ i64, i8* }* %2513, %nyx_string* %2514)
  %2516 = call i64 @tm_put({ i64, i8* }* %2511, %nyx_string* %2512, i64 %2515)
  %2517 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2518 = load %nyx_string*, %nyx_string** %2506
  %2519 = call i64 @tm_add_local({ i64, i8* }* %2517, %nyx_string* %2518)
  %2520 = load %nyx_string*, %nyx_string** %2506
  %2521 = load %nyx_string*, %nyx_string** %2484
  %2522 = call i1 @nyx_string_equals(%nyx_string* %2520, %nyx_string* %2521)
  %2523 = xor i1 %2522, true
  br i1 %2523, label %then628, label %else629
then628:
  %2524 = load %nyx_string*, %nyx_string** %2510
  %2525 = call i64 @nyx_string_byte_length(%nyx_string* %2524)
  %2526 = icmp sgt i64 %2525, 0
  br i1 %2526, label %then631, label %else632
then631:
  %2527 = load %nyx_string*, %nyx_string** %2510
  %2528 = call %nyx_string* @nyx_string_substring(%nyx_string* %2527, i64 0, i64 1)
  %2529 = alloca %nyx_string*
  store %nyx_string* %2528, %nyx_string** %2529
  %2530 = alloca i1
  store i1 true, i1* %2530
  %2531 = load %nyx_string*, %nyx_string** %2529
  %2532 = load %nyx_string*, %nyx_string** %2487
  %2533 = call i1 @nyx_string_equals(%nyx_string* %2531, %nyx_string* %2532)
  br i1 %2533, label %sc_or_end635, label %sc_or_rhs634
sc_or_rhs634:
  %2534 = load %nyx_string*, %nyx_string** %2529
  %2535 = load %nyx_string*, %nyx_string** %2490
  %2536 = call i1 @nyx_string_equals(%nyx_string* %2534, %nyx_string* %2535)
  store i1 %2536, i1* %2530
  br label %sc_or_end635
sc_or_end635:
  %2537 = load i1, i1* %2530
  br i1 %2537, label %then636, label %else637
then636:
  %2538 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2539 = load %nyx_string*, %nyx_string** %2506
  %2540 = call i64 @tm_add_ptr_param({ i64, i8* }* %2538, %nyx_string* %2539)
  br label %merge638
else637:
  br label %merge638
merge638:
  br label %merge633
else632:
  br label %merge633
merge633:
  br label %merge630
else629:
  br label %merge630
merge630:
  br label %merge627
else626:
  br label %merge627
merge627:
  %2541 = load i64, i64* %2481
  %2542 = add i64 %2541, 1
  store i64 %2542, i64* %2481
  br label %while_cond622
while_end624:
  ret i64 0
}

define internal i1 @diag_is_gating(
%nyx_string* %d.param) {
  %d.ptr = alloca %nyx_string*
  store %nyx_string* %d.param, %nyx_string** %d.ptr
  %2543 = load %nyx_string*, %nyx_string** %d.ptr
  %2544 = call i64 @nyx_string_byte_length(%nyx_string* %2543)
  %2545 = icmp slt i64 %2544, 7
  br i1 %2545, label %then639, label %else640
then639:
  ret i1 0
else640:
  br label %merge641
merge641:
  %2546 = load %nyx_string*, %nyx_string** %d.ptr
  %2547 = call %nyx_string* @nyx_string_substring(%nyx_string* %2546, i64 0, i64 7)
  %2548 = alloca %nyx_string*
  store %nyx_string* %2547, %nyx_string** %2548
  %2549 = load %nyx_string*, %nyx_string** %2548
  %2550 = getelementptr [8 x i8], [8 x i8]* @.str194, i32 0, i32 0
  %2551 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str194.c, i8* %2550)
  %2552 = call i1 @nyx_string_equals(%nyx_string* %2549, %nyx_string* %2551)
  br i1 %2552, label %then642, label %else643
then642:
  ret i1 1
else643:
  br label %merge644
merge644:
  %2553 = load %nyx_string*, %nyx_string** %2548
  %2554 = getelementptr [8 x i8], [8 x i8]* @.str195, i32 0, i32 0
  %2555 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str195.c, i8* %2554)
  %2556 = call i1 @nyx_string_equals(%nyx_string* %2553, %nyx_string* %2555)
  br i1 %2556, label %then645, label %else646
then645:
  ret i1 1
else646:
  br label %merge647
merge647:
  %2557 = load %nyx_string*, %nyx_string** %2548
  %2558 = getelementptr [8 x i8], [8 x i8]* @.str196, i32 0, i32 0
  %2559 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str196.c, i8* %2558)
  %2560 = call i1 @nyx_string_equals(%nyx_string* %2557, %nyx_string* %2559)
  br i1 %2560, label %then648, label %else649
then648:
  ret i1 1
else649:
  br label %merge650
merge650:
  %2561 = load %nyx_string*, %nyx_string** %2548
  %2562 = getelementptr [8 x i8], [8 x i8]* @.str197, i32 0, i32 0
  %2563 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str197.c, i8* %2562)
  %2564 = call i1 @nyx_string_equals(%nyx_string* %2561, %nyx_string* %2563)
  br i1 %2564, label %then651, label %else652
then651:
  ret i1 1
else652:
  br label %merge653
merge653:
  ret i1 0
}

define internal { i64, i8* }* @collect_affine_types(
%ASTNode %root.param) {
  %root.ptr = alloca %ASTNode
  store %ASTNode %root.param, %ASTNode* %root.ptr
  %2565 = call { i64, i8* }* @nyx_array_new_ptr()
  %2566 = alloca { i64, i8* }*
  store { i64, i8* }* %2565, { i64, i8* }** %2566
  %2567 = load %ASTNode, %ASTNode* %root.ptr
  %2568 = call { i64, i8* }* @bc_array_at(%ASTNode %2567, i64 0)
  %2569 = alloca { i64, i8* }*
  store { i64, i8* }* %2568, { i64, i8* }** %2569
  %2570 = alloca i64
  store i64 0, i64* %2570
  %2571 = getelementptr [7 x i8], [7 x i8]* @.str198, i32 0, i32 0
  %2572 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str198.c, i8* %2571)
  %2573 = alloca %nyx_string*
  store %nyx_string* %2572, %nyx_string** %2573
  %2574 = getelementptr [7 x i8], [7 x i8]* @.str199, i32 0, i32 0
  %2575 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str199.c, i8* %2574)
  %2576 = alloca %nyx_string*
  store %nyx_string* %2575, %nyx_string** %2576
  %2577 = getelementptr [5 x i8], [5 x i8]* @.str200, i32 0, i32 0
  %2578 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str200.c, i8* %2577)
  %2579 = alloca %nyx_string*
  store %nyx_string* %2578, %nyx_string** %2579
  %2580 = getelementptr [7 x i8], [7 x i8]* @.str201, i32 0, i32 0
  %2581 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str201.c, i8* %2580)
  %2582 = alloca %nyx_string*
  store %nyx_string* %2581, %nyx_string** %2582
  br label %while_cond654
while_cond654:
  %2583 = load i64, i64* %2570
  %2584 = load { i64, i8* }*, { i64, i8* }** %2569
  %2585 = call i64 @nyx_array_length({ i64, i8* }* %2584)
  %2586 = icmp slt i64 %2583, %2585
  br i1 %2586, label %while_body655, label %while_end656
while_body655:
  %2587 = load { i64, i8* }*, { i64, i8* }** %2569
  %2588 = load i64, i64* %2570
  %2589 = call i64 @nyx_array_get({ i64, i8* }* %2587, i64 %2588)
  %2590 = inttoptr i64 %2589 to { i64, i8* }*
  %2591 = call i64 @nyx_array_get({ i64, i8* }* %2590, i64 0)
  %2592 = call i64 @nyx_array_get({ i64, i8* }* %2590, i64 1)
  %2593 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %2590, i64 2)
  %2594 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %2590, i64 3)
  %2595 = inttoptr i64 %2591 to %nyx_string*
  %2596 = inttoptr i64 %2592 to { i64, i8* }*
  %2597 = alloca %ASTNode
  %2598 = getelementptr inbounds %ASTNode, %ASTNode* %2597, i32 0, i32 0
  store %nyx_string* %2595, %nyx_string** %2598
  %2599 = getelementptr inbounds %ASTNode, %ASTNode* %2597, i32 0, i32 1
  store { i64, i8* }* %2596, { i64, i8* }** %2599
  %2600 = getelementptr inbounds %ASTNode, %ASTNode* %2597, i32 0, i32 2
  store i64 %2593, i64* %2600
  %2601 = getelementptr inbounds %ASTNode, %ASTNode* %2597, i32 0, i32 3
  store i64 %2594, i64* %2601
  %2602 = load %ASTNode, %ASTNode* %2597
  %2603 = alloca %ASTNode
  store %ASTNode %2602, %ASTNode* %2603
  %2604 = load %ASTNode, %ASTNode* %2603
  %2605 = alloca %ASTNode
  store %ASTNode %2604, %ASTNode* %2605
  %2606 = getelementptr %ASTNode, %ASTNode* %2603, i32 0, i32 0
  %2607 = load %nyx_string*, %nyx_string** %2606
  %2608 = load %nyx_string*, %nyx_string** %2573
  %2609 = call i1 @nyx_string_equals(%nyx_string* %2607, %nyx_string* %2608)
  br i1 %2609, label %then657, label %else658
then657:
  %2610 = load %ASTNode, %ASTNode* %2603
  %2611 = call %ASTNode @bc_node_at(%ASTNode %2610, i64 0)
  store %ASTNode %2611, %ASTNode* %2605
  br label %merge659
else658:
  br label %merge659
merge659:
  %2612 = getelementptr %ASTNode, %ASTNode* %2605, i32 0, i32 0
  %2613 = load %nyx_string*, %nyx_string** %2612
  %2614 = alloca %nyx_string*
  store %nyx_string* %2613, %nyx_string** %2614
  %2615 = alloca i1
  store i1 true, i1* %2615
  %2616 = load %nyx_string*, %nyx_string** %2614
  %2617 = load %nyx_string*, %nyx_string** %2576
  %2618 = call i1 @nyx_string_equals(%nyx_string* %2616, %nyx_string* %2617)
  br i1 %2618, label %sc_or_end661, label %sc_or_rhs660
sc_or_rhs660:
  %2619 = load %nyx_string*, %nyx_string** %2614
  %2620 = load %nyx_string*, %nyx_string** %2579
  %2621 = call i1 @nyx_string_equals(%nyx_string* %2619, %nyx_string* %2620)
  store i1 %2621, i1* %2615
  br label %sc_or_end661
sc_or_end661:
  %2622 = load i1, i1* %2615
  br i1 %2622, label %then662, label %else663
then662:
  %2623 = getelementptr %ASTNode, %ASTNode* %2605, i32 0, i32 1
  %2624 = load { i64, i8* }*, { i64, i8* }** %2623
  %2625 = alloca { i64, i8* }*
  store { i64, i8* }* %2624, { i64, i8* }** %2625
  %2626 = load { i64, i8* }*, { i64, i8* }** %2625
  %2627 = call i64 @nyx_array_length({ i64, i8* }* %2626)
  %2628 = icmp sgt i64 %2627, 3
  br i1 %2628, label %then665, label %else666
then665:
  %2629 = load { i64, i8* }*, { i64, i8* }** %2625
  %2630 = call i64 @nyx_array_get({ i64, i8* }* %2629, i64 3)
  %2631 = inttoptr i64 %2630 to %nyx_string*
  %2632 = alloca %nyx_string*
  store %nyx_string* %2631, %nyx_string** %2632
  %2633 = load %nyx_string*, %nyx_string** %2632
  %2634 = load %nyx_string*, %nyx_string** %2582
  %2635 = call i1 @nyx_string_equals(%nyx_string* %2633, %nyx_string* %2634)
  br i1 %2635, label %then668, label %else669
then668:
  %2636 = load { i64, i8* }*, { i64, i8* }** %2625
  %2637 = call i64 @nyx_array_get({ i64, i8* }* %2636, i64 0)
  %2638 = inttoptr i64 %2637 to %nyx_string*
  %2639 = alloca %nyx_string*
  store %nyx_string* %2638, %nyx_string** %2639
  %2640 = load { i64, i8* }*, { i64, i8* }** %2566
  %2641 = load %nyx_string*, %nyx_string** %2639
  %2642 = ptrtoint %nyx_string* %2641 to i64
  call void @nyx_array_push({ i64, i8* }* %2640, i64 %2642)
  br label %merge670
else669:
  br label %merge670
merge670:
  br label %merge667
else666:
  br label %merge667
merge667:
  br label %merge664
else663:
  br label %merge664
merge664:
  %2643 = load i64, i64* %2570
  %2644 = add i64 %2643, 1
  store i64 %2644, i64* %2570
  br label %while_cond654
while_end656:
  %2645 = load { i64, i8* }*, { i64, i8* }** %2566
  ret { i64, i8* }* %2645
}

define internal { i64, i8* }* @struct_lt_build(
%ASTNode %root.param) {
  %root.ptr = alloca %ASTNode
  store %ASTNode %root.param, %ASTNode* %root.ptr
  %2646 = call { i64, i8* }* @nyx_array_new_ptr()
  %2647 = alloca { i64, i8* }*
  store { i64, i8* }* %2646, { i64, i8* }** %2647
  %2648 = load %ASTNode, %ASTNode* %root.ptr
  %2649 = call { i64, i8* }* @bc_array_at(%ASTNode %2648, i64 0)
  %2650 = alloca { i64, i8* }*
  store { i64, i8* }* %2649, { i64, i8* }** %2650
  %2651 = alloca i64
  store i64 0, i64* %2651
  %2652 = getelementptr [7 x i8], [7 x i8]* @.str202, i32 0, i32 0
  %2653 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str202.c, i8* %2652)
  %2654 = alloca %nyx_string*
  store %nyx_string* %2653, %nyx_string** %2654
  %2655 = getelementptr [7 x i8], [7 x i8]* @.str203, i32 0, i32 0
  %2656 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str203.c, i8* %2655)
  %2657 = alloca %nyx_string*
  store %nyx_string* %2656, %nyx_string** %2657
  %2658 = getelementptr [2 x i8], [2 x i8]* @.str204, i32 0, i32 0
  %2659 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str204.c, i8* %2658)
  %2660 = alloca %nyx_string*
  store %nyx_string* %2659, %nyx_string** %2660
  br label %while_cond671
while_cond671:
  %2661 = load i64, i64* %2651
  %2662 = load { i64, i8* }*, { i64, i8* }** %2650
  %2663 = call i64 @nyx_array_length({ i64, i8* }* %2662)
  %2664 = icmp slt i64 %2661, %2663
  br i1 %2664, label %while_body672, label %while_end673
while_body672:
  %2665 = load { i64, i8* }*, { i64, i8* }** %2650
  %2666 = load i64, i64* %2651
  %2667 = call i64 @nyx_array_get({ i64, i8* }* %2665, i64 %2666)
  %2668 = inttoptr i64 %2667 to { i64, i8* }*
  %2669 = call i64 @nyx_array_get({ i64, i8* }* %2668, i64 0)
  %2670 = call i64 @nyx_array_get({ i64, i8* }* %2668, i64 1)
  %2671 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %2668, i64 2)
  %2672 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %2668, i64 3)
  %2673 = inttoptr i64 %2669 to %nyx_string*
  %2674 = inttoptr i64 %2670 to { i64, i8* }*
  %2675 = alloca %ASTNode
  %2676 = getelementptr inbounds %ASTNode, %ASTNode* %2675, i32 0, i32 0
  store %nyx_string* %2673, %nyx_string** %2676
  %2677 = getelementptr inbounds %ASTNode, %ASTNode* %2675, i32 0, i32 1
  store { i64, i8* }* %2674, { i64, i8* }** %2677
  %2678 = getelementptr inbounds %ASTNode, %ASTNode* %2675, i32 0, i32 2
  store i64 %2671, i64* %2678
  %2679 = getelementptr inbounds %ASTNode, %ASTNode* %2675, i32 0, i32 3
  store i64 %2672, i64* %2679
  %2680 = load %ASTNode, %ASTNode* %2675
  %2681 = alloca %ASTNode
  store %ASTNode %2680, %ASTNode* %2681
  %2682 = getelementptr %ASTNode, %ASTNode* %2681, i32 0, i32 0
  %2683 = load %nyx_string*, %nyx_string** %2682
  %2684 = load %nyx_string*, %nyx_string** %2654
  %2685 = call i1 @nyx_string_equals(%nyx_string* %2683, %nyx_string* %2684)
  br i1 %2685, label %then674, label %else675
then674:
  %2686 = load %ASTNode, %ASTNode* %2681
  %2687 = call %ASTNode @bc_node_at(%ASTNode %2686, i64 0)
  store %ASTNode %2687, %ASTNode* %2681
  br label %merge676
else675:
  br label %merge676
merge676:
  %2688 = getelementptr %ASTNode, %ASTNode* %2681, i32 0, i32 0
  %2689 = load %nyx_string*, %nyx_string** %2688
  %2690 = load %nyx_string*, %nyx_string** %2657
  %2691 = call i1 @nyx_string_equals(%nyx_string* %2689, %nyx_string* %2690)
  br i1 %2691, label %then677, label %else678
then677:
  %2692 = getelementptr %ASTNode, %ASTNode* %2681, i32 0, i32 1
  %2693 = load { i64, i8* }*, { i64, i8* }** %2692
  %2694 = alloca { i64, i8* }*
  store { i64, i8* }* %2693, { i64, i8* }** %2694
  %2695 = load { i64, i8* }*, { i64, i8* }** %2694
  %2696 = call i64 @nyx_array_length({ i64, i8* }* %2695)
  %2697 = icmp sge i64 %2696, 3
  br i1 %2697, label %then680, label %else681
then680:
  %2698 = load { i64, i8* }*, { i64, i8* }** %2694
  %2699 = call i64 @nyx_array_get({ i64, i8* }* %2698, i64 2)
  %2700 = inttoptr i64 %2699 to { i64, i8* }*
  %2701 = alloca { i64, i8* }*
  store { i64, i8* }* %2700, { i64, i8* }** %2701
  %2702 = alloca i1
  store i1 0, i1* %2702
  %2703 = alloca i64
  store i64 0, i64* %2703
  br label %while_cond683
while_cond683:
  %2704 = load i64, i64* %2703
  %2705 = load { i64, i8* }*, { i64, i8* }** %2701
  %2706 = call i64 @nyx_array_length({ i64, i8* }* %2705)
  %2707 = icmp slt i64 %2704, %2706
  br i1 %2707, label %while_body684, label %while_end685
while_body684:
  %2708 = load { i64, i8* }*, { i64, i8* }** %2701
  %2709 = load i64, i64* %2703
  %2710 = call i64 @nyx_array_get({ i64, i8* }* %2708, i64 %2709)
  %2711 = inttoptr i64 %2710 to %nyx_string*
  %2712 = alloca %nyx_string*
  store %nyx_string* %2711, %nyx_string** %2712
  %2713 = load %nyx_string*, %nyx_string** %2712
  %2714 = call i64 @nyx_string_byte_length(%nyx_string* %2713)
  %2715 = icmp sgt i64 %2714, 0
  br i1 %2715, label %then686, label %else687
then686:
  %2716 = load %nyx_string*, %nyx_string** %2712
  %2717 = call %nyx_string* @nyx_string_substring(%nyx_string* %2716, i64 0, i64 1)
  %2718 = load %nyx_string*, %nyx_string** %2660
  %2719 = call i1 @nyx_string_equals(%nyx_string* %2717, %nyx_string* %2718)
  br i1 %2719, label %then689, label %else690
then689:
  store i1 1, i1* %2702
  br label %merge691
else690:
  br label %merge691
merge691:
  br label %merge688
else687:
  br label %merge688
merge688:
  %2720 = load i64, i64* %2703
  %2721 = add i64 %2720, 1
  store i64 %2721, i64* %2703
  br label %while_cond683
while_end685:
  %2722 = load i1, i1* %2702
  br i1 %2722, label %then692, label %else693
then692:
  %2723 = load { i64, i8* }*, { i64, i8* }** %2647
  %2724 = load { i64, i8* }*, { i64, i8* }** %2694
  %2725 = call i64 @nyx_array_get({ i64, i8* }* %2724, i64 0)
  call void @nyx_array_push({ i64, i8* }* %2723, i64 %2725)
  br label %merge694
else693:
  br label %merge694
merge694:
  br label %merge682
else681:
  br label %merge682
merge682:
  br label %merge679
else678:
  br label %merge679
merge679:
  %2726 = load i64, i64* %2651
  %2727 = add i64 %2726, 1
  store i64 %2727, i64* %2651
  br label %while_cond671
while_end673:
  %2728 = load { i64, i8* }*, { i64, i8* }** %2647
  ret { i64, i8* }* %2728
}

define internal { i64, i8* }* @extract_lifetimes(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %2729 = call { i64, i8* }* @nyx_array_new_ptr()
  %2730 = alloca { i64, i8* }*
  store { i64, i8* }* %2729, { i64, i8* }** %2730
  %2731 = alloca i64
  store i64 0, i64* %2731
  %2732 = getelementptr [2 x i8], [2 x i8]* @.str205, i32 0, i32 0
  %2733 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str205.c, i8* %2732)
  %2734 = alloca %nyx_string*
  store %nyx_string* %2733, %nyx_string** %2734
  %2735 = getelementptr [2 x i8], [2 x i8]* @.str206, i32 0, i32 0
  %2736 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str206.c, i8* %2735)
  %2737 = alloca %nyx_string*
  store %nyx_string* %2736, %nyx_string** %2737
  %2738 = getelementptr [2 x i8], [2 x i8]* @.str207, i32 0, i32 0
  %2739 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str207.c, i8* %2738)
  %2740 = alloca %nyx_string*
  store %nyx_string* %2739, %nyx_string** %2740
  %2741 = getelementptr [2 x i8], [2 x i8]* @.str208, i32 0, i32 0
  %2742 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str208.c, i8* %2741)
  %2743 = alloca %nyx_string*
  store %nyx_string* %2742, %nyx_string** %2743
  %2744 = getelementptr [2 x i8], [2 x i8]* @.str209, i32 0, i32 0
  %2745 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str209.c, i8* %2744)
  %2746 = alloca %nyx_string*
  store %nyx_string* %2745, %nyx_string** %2746
  br label %while_cond695
while_cond695:
  %2747 = load i64, i64* %2731
  %2748 = load %nyx_string*, %nyx_string** %s.ptr
  %2749 = call i64 @nyx_string_byte_length(%nyx_string* %2748)
  %2750 = icmp slt i64 %2747, %2749
  br i1 %2750, label %while_body696, label %while_end697
while_body696:
  %2751 = load %nyx_string*, %nyx_string** %s.ptr
  %2752 = load i64, i64* %2731
  %2753 = load i64, i64* %2731
  %2754 = add i64 %2753, 1
  %2755 = call %nyx_string* @nyx_string_substring(%nyx_string* %2751, i64 %2752, i64 %2754)
  %2756 = alloca %nyx_string*
  store %nyx_string* %2755, %nyx_string** %2756
  %2757 = load %nyx_string*, %nyx_string** %2756
  %2758 = load %nyx_string*, %nyx_string** %2734
  %2759 = call i1 @nyx_string_equals(%nyx_string* %2757, %nyx_string* %2758)
  br i1 %2759, label %then698, label %else699
then698:
  %2760 = load i64, i64* %2731
  %2761 = add i64 %2760, 1
  %2762 = alloca i64
  store i64 %2761, i64* %2762
  %2763 = alloca i1
  store i1 1, i1* %2763
  br label %while_cond701
while_cond701:
  %2764 = load i1, i1* %2763
  br i1 %2764, label %while_body702, label %while_end703
while_body702:
  %2765 = load i64, i64* %2762
  %2766 = load %nyx_string*, %nyx_string** %s.ptr
  %2767 = call i64 @nyx_string_byte_length(%nyx_string* %2766)
  %2768 = icmp sge i64 %2765, %2767
  br i1 %2768, label %then704, label %else705
then704:
  store i1 0, i1* %2763
  br label %merge706
else705:
  %2769 = load %nyx_string*, %nyx_string** %s.ptr
  %2770 = load i64, i64* %2762
  %2771 = load i64, i64* %2762
  %2772 = add i64 %2771, 1
  %2773 = call %nyx_string* @nyx_string_substring(%nyx_string* %2769, i64 %2770, i64 %2772)
  %2774 = alloca %nyx_string*
  store %nyx_string* %2773, %nyx_string** %2774
  %2775 = alloca i1
  store i1 true, i1* %2775
  %2776 = alloca i1
  store i1 true, i1* %2776
  %2777 = alloca i1
  store i1 true, i1* %2777
  %2778 = load %nyx_string*, %nyx_string** %2774
  %2779 = load %nyx_string*, %nyx_string** %2737
  %2780 = call i1 @nyx_string_equals(%nyx_string* %2778, %nyx_string* %2779)
  br i1 %2780, label %sc_or_end708, label %sc_or_rhs707
sc_or_rhs707:
  %2781 = load %nyx_string*, %nyx_string** %2774
  %2782 = load %nyx_string*, %nyx_string** %2740
  %2783 = call i1 @nyx_string_equals(%nyx_string* %2781, %nyx_string* %2782)
  store i1 %2783, i1* %2777
  br label %sc_or_end708
sc_or_end708:
  %2784 = load i1, i1* %2777
  br i1 %2784, label %sc_or_end710, label %sc_or_rhs709
sc_or_rhs709:
  %2785 = load %nyx_string*, %nyx_string** %2774
  %2786 = load %nyx_string*, %nyx_string** %2743
  %2787 = call i1 @nyx_string_equals(%nyx_string* %2785, %nyx_string* %2786)
  store i1 %2787, i1* %2776
  br label %sc_or_end710
sc_or_end710:
  %2788 = load i1, i1* %2776
  br i1 %2788, label %sc_or_end712, label %sc_or_rhs711
sc_or_rhs711:
  %2789 = load %nyx_string*, %nyx_string** %2774
  %2790 = load %nyx_string*, %nyx_string** %2746
  %2791 = call i1 @nyx_string_equals(%nyx_string* %2789, %nyx_string* %2790)
  store i1 %2791, i1* %2775
  br label %sc_or_end712
sc_or_end712:
  %2792 = load i1, i1* %2775
  br i1 %2792, label %then713, label %else714
then713:
  store i1 0, i1* %2763
  br label %merge715
else714:
  %2793 = load i64, i64* %2762
  %2794 = add i64 %2793, 1
  store i64 %2794, i64* %2762
  br label %merge715
merge715:
  br label %merge706
merge706:
  br label %while_cond701
while_end703:
  %2795 = load %nyx_string*, %nyx_string** %s.ptr
  %2796 = load i64, i64* %2731
  %2797 = add i64 %2796, 1
  %2798 = load i64, i64* %2762
  %2799 = call %nyx_string* @nyx_string_substring(%nyx_string* %2795, i64 %2797, i64 %2798)
  %2800 = alloca %nyx_string*
  store %nyx_string* %2799, %nyx_string** %2800
  %2801 = load %nyx_string*, %nyx_string** %2800
  %2802 = call i64 @nyx_string_byte_length(%nyx_string* %2801)
  %2803 = icmp sgt i64 %2802, 0
  br i1 %2803, label %then716, label %else717
then716:
  %2804 = load { i64, i8* }*, { i64, i8* }** %2730
  %2805 = load %nyx_string*, %nyx_string** %2800
  %2806 = ptrtoint %nyx_string* %2805 to i64
  call void @nyx_array_push({ i64, i8* }* %2804, i64 %2806)
  br label %merge718
else717:
  br label %merge718
merge718:
  %2807 = load i64, i64* %2762
  store i64 %2807, i64* %2731
  br label %merge700
else699:
  %2808 = load i64, i64* %2731
  %2809 = add i64 %2808, 1
  store i64 %2809, i64* %2731
  br label %merge700
merge700:
  br label %while_cond695
while_end697:
  %2810 = load { i64, i8* }*, { i64, i8* }** %2730
  ret { i64, i8* }* %2810
}

define internal i1 @lt_set_contains(
{ i64, i8* }* %set.param, %nyx_string* %name.param) {
  %set.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %set.param, { i64, i8* }** %set.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %2811 = alloca i64
  store i64 0, i64* %2811
  br label %while_cond719
while_cond719:
  %2812 = load i64, i64* %2811
  %2813 = load { i64, i8* }*, { i64, i8* }** %set.ptr
  %2814 = call i64 @nyx_array_length({ i64, i8* }* %2813)
  %2815 = icmp slt i64 %2812, %2814
  br i1 %2815, label %while_body720, label %while_end721
while_body720:
  %2816 = load { i64, i8* }*, { i64, i8* }** %set.ptr
  %2817 = load i64, i64* %2811
  %2818 = call i64 @nyx_array_get({ i64, i8* }* %2816, i64 %2817)
  %2819 = inttoptr i64 %2818 to %nyx_string*
  %2820 = alloca %nyx_string*
  store %nyx_string* %2819, %nyx_string** %2820
  %2821 = load %nyx_string*, %nyx_string** %2820
  %2822 = load %nyx_string*, %nyx_string** %name.ptr
  %2823 = call i1 @nyx_string_equals(%nyx_string* %2821, %nyx_string* %2822)
  br i1 %2823, label %then722, label %else723
then722:
  ret i1 1
else723:
  br label %merge724
merge724:
  %2824 = load i64, i64* %2811
  %2825 = add i64 %2824, 1
  store i64 %2825, i64* %2811
  br label %while_cond719
while_end721:
  ret i1 0
}

define internal i1 @ret_is_reflike(
%nyx_string* %ret_ty.param, { i64, i8* }* %struct_lt_set.param) {
  %ret_ty.ptr = alloca %nyx_string*
  store %nyx_string* %ret_ty.param, %nyx_string** %ret_ty.ptr
  %struct_lt_set.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %struct_lt_set.param, { i64, i8* }** %struct_lt_set.ptr
  %2826 = load %nyx_string*, %nyx_string** %ret_ty.ptr
  %2827 = call i64 @nyx_string_byte_length(%nyx_string* %2826)
  %2828 = icmp eq i64 %2827, 0
  br i1 %2828, label %then725, label %else726
then725:
  ret i1 0
else726:
  br label %merge727
merge727:
  %2829 = load %nyx_string*, %nyx_string** %ret_ty.ptr
  %2830 = call %nyx_string* @nyx_string_substring(%nyx_string* %2829, i64 0, i64 1)
  %2831 = getelementptr [2 x i8], [2 x i8]* @.str210, i32 0, i32 0
  %2832 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str210.c, i8* %2831)
  %2833 = call i1 @nyx_string_equals(%nyx_string* %2830, %nyx_string* %2832)
  br i1 %2833, label %then728, label %else729
then728:
  ret i1 1
else729:
  br label %merge730
merge730:
  %2834 = load %nyx_string*, %nyx_string** %ret_ty.ptr
  %2835 = alloca %nyx_string*
  store %nyx_string* %2834, %nyx_string** %2835
  %2836 = load %nyx_string*, %nyx_string** %ret_ty.ptr
  %2837 = getelementptr [2 x i8], [2 x i8]* @.str211, i32 0, i32 0
  %2838 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str211.c, i8* %2837)
  %2839 = call i64 @nyx_string_index_of(%nyx_string* %2836, %nyx_string* %2838)
  %2840 = alloca i64
  store i64 %2839, i64* %2840
  %2841 = load i64, i64* %2840
  %2842 = icmp sge i64 %2841, 0
  br i1 %2842, label %then731, label %else732
then731:
  %2843 = load %nyx_string*, %nyx_string** %ret_ty.ptr
  %2844 = load i64, i64* %2840
  %2845 = call %nyx_string* @nyx_string_substring(%nyx_string* %2843, i64 0, i64 %2844)
  store %nyx_string* %2845, %nyx_string** %2835
  br label %merge733
else732:
  br label %merge733
merge733:
  %2846 = alloca i64
  store i64 0, i64* %2846
  br label %while_cond734
while_cond734:
  %2847 = load i64, i64* %2846
  %2848 = load { i64, i8* }*, { i64, i8* }** %struct_lt_set.ptr
  %2849 = call i64 @nyx_array_length({ i64, i8* }* %2848)
  %2850 = icmp slt i64 %2847, %2849
  br i1 %2850, label %while_body735, label %while_end736
while_body735:
  %2851 = load { i64, i8* }*, { i64, i8* }** %struct_lt_set.ptr
  %2852 = load i64, i64* %2846
  %2853 = call i64 @nyx_array_get({ i64, i8* }* %2851, i64 %2852)
  %2854 = inttoptr i64 %2853 to %nyx_string*
  %2855 = alloca %nyx_string*
  store %nyx_string* %2854, %nyx_string** %2855
  %2856 = load %nyx_string*, %nyx_string** %2855
  %2857 = load %nyx_string*, %nyx_string** %2835
  %2858 = call i1 @nyx_string_equals(%nyx_string* %2856, %nyx_string* %2857)
  br i1 %2858, label %then737, label %else738
then737:
  ret i1 1
else738:
  br label %merge739
merge739:
  %2859 = load i64, i64* %2846
  %2860 = add i64 %2859, 1
  store i64 %2860, i64* %2846
  br label %while_cond734
while_end736:
  ret i1 0
}

define internal { i64, i8* }* @sig_build(
%ASTNode %root.param, { i64, i8* }* %struct_lt_set.param) {
  %root.ptr = alloca %ASTNode
  store %ASTNode %root.param, %ASTNode* %root.ptr
  %struct_lt_set.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %struct_lt_set.param, { i64, i8* }** %struct_lt_set.ptr
  %2861 = call { i64, i8* }* @nyx_array_new_ptr()
  %2862 = alloca { i64, i8* }*
  store { i64, i8* }* %2861, { i64, i8* }** %2862
  %2863 = load %ASTNode, %ASTNode* %root.ptr
  %2864 = call { i64, i8* }* @bc_array_at(%ASTNode %2863, i64 0)
  %2865 = alloca { i64, i8* }*
  store { i64, i8* }* %2864, { i64, i8* }** %2865
  %2866 = alloca i64
  store i64 0, i64* %2866
  %2867 = getelementptr [7 x i8], [7 x i8]* @.str212, i32 0, i32 0
  %2868 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str212.c, i8* %2867)
  %2869 = alloca %nyx_string*
  store %nyx_string* %2868, %nyx_string** %2869
  %2870 = getelementptr [9 x i8], [9 x i8]* @.str213, i32 0, i32 0
  %2871 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str213.c, i8* %2870)
  %2872 = alloca %nyx_string*
  store %nyx_string* %2871, %nyx_string** %2872
  %2873 = getelementptr [9 x i8], [9 x i8]* @.str214, i32 0, i32 0
  %2874 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str214.c, i8* %2873)
  %2875 = alloca %nyx_string*
  store %nyx_string* %2874, %nyx_string** %2875
  %2876 = getelementptr [5 x i8], [5 x i8]* @.str215, i32 0, i32 0
  %2877 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str215.c, i8* %2876)
  %2878 = alloca %nyx_string*
  store %nyx_string* %2877, %nyx_string** %2878
  %2879 = getelementptr [2 x i8], [2 x i8]* @.str216, i32 0, i32 0
  %2880 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str216.c, i8* %2879)
  %2881 = alloca %nyx_string*
  store %nyx_string* %2880, %nyx_string** %2881
  %2882 = getelementptr [1 x i8], [1 x i8]* @.str217, i32 0, i32 0
  %2883 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str217.c, i8* %2882)
  %2884 = alloca %nyx_string*
  store %nyx_string* %2883, %nyx_string** %2884
  %2885 = getelementptr [10 x i8], [10 x i8]* @.str218, i32 0, i32 0
  %2886 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str218.c, i8* %2885)
  %2887 = alloca %nyx_string*
  store %nyx_string* %2886, %nyx_string** %2887
  %2888 = getelementptr [12 x i8], [12 x i8]* @.str219, i32 0, i32 0
  %2889 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str219.c, i8* %2888)
  %2890 = alloca %nyx_string*
  store %nyx_string* %2889, %nyx_string** %2890
  br label %while_cond740
while_cond740:
  %2891 = load i64, i64* %2866
  %2892 = load { i64, i8* }*, { i64, i8* }** %2865
  %2893 = call i64 @nyx_array_length({ i64, i8* }* %2892)
  %2894 = icmp slt i64 %2891, %2893
  br i1 %2894, label %while_body741, label %while_end742
while_body741:
  %2895 = load { i64, i8* }*, { i64, i8* }** %2865
  %2896 = load i64, i64* %2866
  %2897 = call i64 @nyx_array_get({ i64, i8* }* %2895, i64 %2896)
  %2898 = inttoptr i64 %2897 to { i64, i8* }*
  %2899 = call i64 @nyx_array_get({ i64, i8* }* %2898, i64 0)
  %2900 = call i64 @nyx_array_get({ i64, i8* }* %2898, i64 1)
  %2901 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %2898, i64 2)
  %2902 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %2898, i64 3)
  %2903 = inttoptr i64 %2899 to %nyx_string*
  %2904 = inttoptr i64 %2900 to { i64, i8* }*
  %2905 = alloca %ASTNode
  %2906 = getelementptr inbounds %ASTNode, %ASTNode* %2905, i32 0, i32 0
  store %nyx_string* %2903, %nyx_string** %2906
  %2907 = getelementptr inbounds %ASTNode, %ASTNode* %2905, i32 0, i32 1
  store { i64, i8* }* %2904, { i64, i8* }** %2907
  %2908 = getelementptr inbounds %ASTNode, %ASTNode* %2905, i32 0, i32 2
  store i64 %2901, i64* %2908
  %2909 = getelementptr inbounds %ASTNode, %ASTNode* %2905, i32 0, i32 3
  store i64 %2902, i64* %2909
  %2910 = load %ASTNode, %ASTNode* %2905
  %2911 = alloca %ASTNode
  store %ASTNode %2910, %ASTNode* %2911
  %2912 = getelementptr %ASTNode, %ASTNode* %2911, i32 0, i32 0
  %2913 = load %nyx_string*, %nyx_string** %2912
  %2914 = load %nyx_string*, %nyx_string** %2869
  %2915 = call i1 @nyx_string_equals(%nyx_string* %2913, %nyx_string* %2914)
  br i1 %2915, label %then743, label %else744
then743:
  %2916 = load %ASTNode, %ASTNode* %2911
  %2917 = call %ASTNode @bc_node_at(%ASTNode %2916, i64 0)
  store %ASTNode %2917, %ASTNode* %2911
  br label %merge745
else744:
  br label %merge745
merge745:
  %2918 = getelementptr %ASTNode, %ASTNode* %2911, i32 0, i32 0
  %2919 = load %nyx_string*, %nyx_string** %2918
  %2920 = alloca %nyx_string*
  store %nyx_string* %2919, %nyx_string** %2920
  %2921 = alloca i1
  store i1 true, i1* %2921
  %2922 = load %nyx_string*, %nyx_string** %2920
  %2923 = load %nyx_string*, %nyx_string** %2872
  %2924 = call i1 @nyx_string_equals(%nyx_string* %2922, %nyx_string* %2923)
  br i1 %2924, label %sc_or_end747, label %sc_or_rhs746
sc_or_rhs746:
  %2925 = load %nyx_string*, %nyx_string** %2920
  %2926 = load %nyx_string*, %nyx_string** %2875
  %2927 = call i1 @nyx_string_equals(%nyx_string* %2925, %nyx_string* %2926)
  store i1 %2927, i1* %2921
  br label %sc_or_end747
sc_or_end747:
  %2928 = load i1, i1* %2921
  br i1 %2928, label %then748, label %else749
then748:
  %2929 = getelementptr %ASTNode, %ASTNode* %2911, i32 0, i32 1
  %2930 = load { i64, i8* }*, { i64, i8* }** %2929
  %2931 = alloca { i64, i8* }*
  store { i64, i8* }* %2930, { i64, i8* }** %2931
  %2932 = load { i64, i8* }*, { i64, i8* }** %2931
  %2933 = call i64 @nyx_array_get({ i64, i8* }* %2932, i64 0)
  %2934 = inttoptr i64 %2933 to %nyx_string*
  %2935 = alloca %nyx_string*
  store %nyx_string* %2934, %nyx_string** %2935
  %2936 = load { i64, i8* }*, { i64, i8* }** %2931
  %2937 = call i64 @nyx_array_get({ i64, i8* }* %2936, i64 2)
  %2938 = inttoptr i64 %2937 to %nyx_string*
  %2939 = alloca %nyx_string*
  store %nyx_string* %2938, %nyx_string** %2939
  %2940 = call { i64, i8* }* @nyx_array_new_ptr()
  %2941 = alloca { i64, i8* }*
  store { i64, i8* }* %2940, { i64, i8* }** %2941
  %2942 = alloca i64
  store i64 0, i64* %2942
  %2943 = load %nyx_string*, %nyx_string** %2939
  %2944 = load { i64, i8* }*, { i64, i8* }** %struct_lt_set.ptr
  %2945 = call i1 @ret_is_reflike(%nyx_string* %2943, { i64, i8* }* %2944)
  br i1 %2945, label %then751, label %else752
then751:
  %2946 = load { i64, i8* }*, { i64, i8* }** %2931
  %2947 = call i64 @nyx_array_get({ i64, i8* }* %2946, i64 1)
  %2948 = inttoptr i64 %2947 to { i64, i8* }*
  %2949 = alloca { i64, i8* }*
  store { i64, i8* }* %2948, { i64, i8* }** %2949
  %2950 = alloca i64
  store i64 0, i64* %2950
  %2951 = sub i64 0, 1
  %2952 = alloca i64
  store i64 %2951, i64* %2952
  %2953 = alloca i64
  store i64 0, i64* %2953
  br label %while_cond754
while_cond754:
  %2954 = load i64, i64* %2953
  %2955 = load { i64, i8* }*, { i64, i8* }** %2949
  %2956 = call i64 @nyx_array_length({ i64, i8* }* %2955)
  %2957 = icmp slt i64 %2954, %2956
  br i1 %2957, label %while_body755, label %while_end756
while_body755:
  %2958 = load { i64, i8* }*, { i64, i8* }** %2949
  %2959 = load i64, i64* %2953
  %2960 = call i64 @nyx_array_get({ i64, i8* }* %2958, i64 %2959)
  %2961 = inttoptr i64 %2960 to { i64, i8* }*
  %2962 = alloca { i64, i8* }*
  store { i64, i8* }* %2961, { i64, i8* }** %2962
  %2963 = load { i64, i8* }*, { i64, i8* }** %2962
  %2964 = call i64 @nyx_array_length({ i64, i8* }* %2963)
  %2965 = icmp sge i64 %2964, 2
  br i1 %2965, label %then757, label %else758
then757:
  %2966 = load { i64, i8* }*, { i64, i8* }** %2962
  %2967 = call i64 @nyx_array_get({ i64, i8* }* %2966, i64 0)
  %2968 = inttoptr i64 %2967 to %nyx_string*
  %2969 = alloca %nyx_string*
  store %nyx_string* %2968, %nyx_string** %2969
  %2970 = load { i64, i8* }*, { i64, i8* }** %2962
  %2971 = call i64 @nyx_array_get({ i64, i8* }* %2970, i64 1)
  %2972 = inttoptr i64 %2971 to %nyx_string*
  %2973 = alloca %nyx_string*
  store %nyx_string* %2972, %nyx_string** %2973
  %2974 = load %nyx_string*, %nyx_string** %2969
  %2975 = load %nyx_string*, %nyx_string** %2878
  %2976 = call i1 @nyx_string_equals(%nyx_string* %2974, %nyx_string* %2975)
  %2977 = xor i1 %2976, true
  br i1 %2977, label %then760, label %else761
then760:
  %2978 = load %nyx_string*, %nyx_string** %2973
  %2979 = call i64 @nyx_string_byte_length(%nyx_string* %2978)
  %2980 = icmp sgt i64 %2979, 0
  br i1 %2980, label %then763, label %else764
then763:
  %2981 = load %nyx_string*, %nyx_string** %2973
  %2982 = call %nyx_string* @nyx_string_substring(%nyx_string* %2981, i64 0, i64 1)
  %2983 = load %nyx_string*, %nyx_string** %2881
  %2984 = call i1 @nyx_string_equals(%nyx_string* %2982, %nyx_string* %2983)
  br i1 %2984, label %then766, label %else767
then766:
  %2985 = load i64, i64* %2950
  %2986 = add i64 %2985, 1
  store i64 %2986, i64* %2950
  %2987 = load i64, i64* %2953
  store i64 %2987, i64* %2952
  br label %merge768
else767:
  br label %merge768
merge768:
  br label %merge765
else764:
  br label %merge765
merge765:
  br label %merge762
else761:
  br label %merge762
merge762:
  br label %merge759
else758:
  br label %merge759
merge759:
  %2988 = load i64, i64* %2953
  %2989 = add i64 %2988, 1
  store i64 %2989, i64* %2953
  br label %while_cond754
while_end756:
  %2990 = load i64, i64* %2950
  %2991 = icmp eq i64 %2990, 1
  br i1 %2991, label %then769, label %else770
then769:
  %2992 = call { i64, i8* }* @nyx_array_new_ptr()
  %2993 = load i64, i64* %2952
  call void @nyx_array_push({ i64, i8* }* %2992, i64 %2993)
  store { i64, i8* }* %2992, { i64, i8* }** %2941
  br label %merge771
else770:
  br label %merge771
merge771:
  br label %merge753
else752:
  br label %merge753
merge753:
  %2994 = load %nyx_string*, %nyx_string** %2884
  %2995 = alloca %nyx_string*
  store %nyx_string* %2994, %nyx_string** %2995
  %2996 = call { i64, i8* }* @nyx_array_new_ptr()
  %2997 = alloca { i64, i8* }*
  store { i64, i8* }* %2996, { i64, i8* }** %2997
  %2998 = alloca i64
  store i64 6, i64* %2998
  br label %while_cond772
while_cond772:
  %2999 = load i64, i64* %2998
  %3000 = load { i64, i8* }*, { i64, i8* }** %2931
  %3001 = call i64 @nyx_array_length({ i64, i8* }* %3000)
  %3002 = icmp slt i64 %2999, %3001
  br i1 %3002, label %while_body773, label %while_end774
while_body773:
  %3003 = load { i64, i8* }*, { i64, i8* }** %2931
  %3004 = load i64, i64* %2998
  %3005 = call i64 @nyx_array_get({ i64, i8* }* %3003, i64 %3004)
  %3006 = inttoptr i64 %3005 to { i64, i8* }*
  %3007 = alloca { i64, i8* }*
  store { i64, i8* }* %3006, { i64, i8* }** %3007
  %3008 = load { i64, i8* }*, { i64, i8* }** %3007
  %3009 = call i64 @nyx_array_length({ i64, i8* }* %3008)
  %3010 = icmp sge i64 %3009, 2
  br i1 %3010, label %then775, label %else776
then775:
  %3011 = load { i64, i8* }*, { i64, i8* }** %3007
  %3012 = call i64 @nyx_array_get({ i64, i8* }* %3011, i64 0)
  %3013 = inttoptr i64 %3012 to %nyx_string*
  %3014 = alloca %nyx_string*
  store %nyx_string* %3013, %nyx_string** %3014
  %3015 = load %nyx_string*, %nyx_string** %3014
  %3016 = load %nyx_string*, %nyx_string** %2887
  %3017 = call i1 @nyx_string_equals(%nyx_string* %3015, %nyx_string* %3016)
  br i1 %3017, label %then778, label %else779
then778:
  %3018 = load { i64, i8* }*, { i64, i8* }** %3007
  %3019 = call i64 @nyx_array_get({ i64, i8* }* %3018, i64 1)
  %3020 = inttoptr i64 %3019 to %nyx_string*
  store %nyx_string* %3020, %nyx_string** %2995
  br label %merge780
else779:
  br label %merge780
merge780:
  %3021 = load %nyx_string*, %nyx_string** %3014
  %3022 = load %nyx_string*, %nyx_string** %2890
  %3023 = call i1 @nyx_string_equals(%nyx_string* %3021, %nyx_string* %3022)
  br i1 %3023, label %then781, label %else782
then781:
  %3024 = load { i64, i8* }*, { i64, i8* }** %3007
  %3025 = call i64 @nyx_array_get({ i64, i8* }* %3024, i64 1)
  %3026 = inttoptr i64 %3025 to { i64, i8* }*
  store { i64, i8* }* %3026, { i64, i8* }** %2997
  br label %merge783
else782:
  br label %merge783
merge783:
  br label %merge777
else776:
  br label %merge777
merge777:
  %3027 = load i64, i64* %2998
  %3028 = add i64 %3027, 1
  store i64 %3028, i64* %2998
  br label %while_cond772
while_end774:
  %3029 = call { i64, i8* }* @nyx_array_new_ptr()
  %3030 = alloca { i64, i8* }*
  store { i64, i8* }* %3029, { i64, i8* }** %3030
  %3031 = load %nyx_string*, %nyx_string** %2995
  %3032 = call i64 @nyx_string_byte_length(%nyx_string* %3031)
  %3033 = icmp sgt i64 %3032, 0
  br i1 %3033, label %then784, label %else785
then784:
  %3034 = load { i64, i8* }*, { i64, i8* }** %3030
  %3035 = load %nyx_string*, %nyx_string** %2995
  %3036 = ptrtoint %nyx_string* %3035 to i64
  call void @nyx_array_push({ i64, i8* }* %3034, i64 %3036)
  br label %merge786
else785:
  br label %merge786
merge786:
  %3037 = load %nyx_string*, %nyx_string** %2939
  %3038 = load { i64, i8* }*, { i64, i8* }** %struct_lt_set.ptr
  %3039 = call i1 @ret_is_reflike(%nyx_string* %3037, { i64, i8* }* %3038)
  br i1 %3039, label %then787, label %else788
then787:
  %3040 = load %nyx_string*, %nyx_string** %2939
  %3041 = call { i64, i8* }* @extract_lifetimes(%nyx_string* %3040)
  %3042 = alloca { i64, i8* }*
  store { i64, i8* }* %3041, { i64, i8* }** %3042
  %3043 = alloca i64
  store i64 0, i64* %3043
  br label %while_cond790
while_cond790:
  %3044 = load i64, i64* %3043
  %3045 = load { i64, i8* }*, { i64, i8* }** %3042
  %3046 = call i64 @nyx_array_length({ i64, i8* }* %3045)
  %3047 = icmp slt i64 %3044, %3046
  br i1 %3047, label %while_body791, label %while_end792
while_body791:
  %3048 = load { i64, i8* }*, { i64, i8* }** %3030
  %3049 = load { i64, i8* }*, { i64, i8* }** %3042
  %3050 = load i64, i64* %3043
  %3051 = call i64 @nyx_array_get({ i64, i8* }* %3049, i64 %3050)
  call void @nyx_array_push({ i64, i8* }* %3048, i64 %3051)
  %3052 = load i64, i64* %3043
  %3053 = add i64 %3052, 1
  store i64 %3053, i64* %3043
  br label %while_cond790
while_end792:
  br label %merge789
else788:
  br label %merge789
merge789:
  %3054 = load { i64, i8* }*, { i64, i8* }** %3030
  %3055 = call i64 @nyx_array_length({ i64, i8* }* %3054)
  %3056 = icmp sgt i64 %3055, 0
  br i1 %3056, label %then793, label %else794
then793:
  %3057 = call { i64, i8* }* @nyx_array_new_ptr()
  %3058 = alloca { i64, i8* }*
  store { i64, i8* }* %3057, { i64, i8* }** %3058
  %3059 = alloca i64
  store i64 0, i64* %3059
  br label %while_cond796
while_cond796:
  %3060 = load i64, i64* %3059
  %3061 = load { i64, i8* }*, { i64, i8* }** %2997
  %3062 = call i64 @nyx_array_length({ i64, i8* }* %3061)
  %3063 = icmp slt i64 %3060, %3062
  br i1 %3063, label %while_body797, label %while_end798
while_body797:
  %3064 = load { i64, i8* }*, { i64, i8* }** %2997
  %3065 = load i64, i64* %3059
  %3066 = call i64 @nyx_array_get({ i64, i8* }* %3064, i64 %3065)
  %3067 = inttoptr i64 %3066 to %nyx_string*
  %3068 = alloca %nyx_string*
  store %nyx_string* %3067, %nyx_string** %3068
  %3069 = load %nyx_string*, %nyx_string** %3068
  %3070 = call i64 @nyx_string_byte_length(%nyx_string* %3069)
  %3071 = icmp sgt i64 %3070, 0
  br i1 %3071, label %then799, label %else800
then799:
  %3072 = load { i64, i8* }*, { i64, i8* }** %3030
  %3073 = load %nyx_string*, %nyx_string** %3068
  %3074 = call i1 @lt_set_contains({ i64, i8* }* %3072, %nyx_string* %3073)
  br i1 %3074, label %then802, label %else803
then802:
  %3075 = load { i64, i8* }*, { i64, i8* }** %3058
  %3076 = load i64, i64* %3059
  call void @nyx_array_push({ i64, i8* }* %3075, i64 %3076)
  br label %merge804
else803:
  br label %merge804
merge804:
  br label %merge801
else800:
  br label %merge801
merge801:
  %3077 = load i64, i64* %3059
  %3078 = add i64 %3077, 1
  store i64 %3078, i64* %3059
  br label %while_cond796
while_end798:
  %3079 = load { i64, i8* }*, { i64, i8* }** %3058
  %3080 = call i64 @nyx_array_length({ i64, i8* }* %3079)
  %3081 = icmp sgt i64 %3080, 0
  br i1 %3081, label %then805, label %else806
then805:
  %3082 = load { i64, i8* }*, { i64, i8* }** %3058
  store { i64, i8* }* %3082, { i64, i8* }** %2941
  store i64 1, i64* %2942
  br label %merge807
else806:
  br label %merge807
merge807:
  br label %merge795
else794:
  br label %merge795
merge795:
  %3083 = load { i64, i8* }*, { i64, i8* }** %2862
  %3084 = call { i64, i8* }* @nyx_array_new_ptr()
  %3085 = load %nyx_string*, %nyx_string** %2935
  %3086 = ptrtoint %nyx_string* %3085 to i64
  call void @nyx_array_push({ i64, i8* }* %3084, i64 %3086)
  %3087 = load { i64, i8* }*, { i64, i8* }** %2941
  %3088 = bitcast { i64, i8* }* %3087 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %3084, i8* %3088)
  %3089 = load i64, i64* %2942
  call void @nyx_array_push({ i64, i8* }* %3084, i64 %3089)
  %3090 = ptrtoint { i64, i8* }* %3084 to i64
  call void @nyx_array_push({ i64, i8* }* %3083, i64 %3090)
  br label %merge750
else749:
  br label %merge750
merge750:
  %3091 = load i64, i64* %2866
  %3092 = add i64 %3091, 1
  store i64 %3092, i64* %2866
  br label %while_cond740
while_end742:
  %3093 = load { i64, i8* }*, { i64, i8* }** %2862
  ret { i64, i8* }* %3093
}

define internal { i64, i8* }* @sig_lookup(
{ i64, i8* }* %sigs.param, %nyx_string* %name.param) {
  %sigs.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %sigs.param, { i64, i8* }** %sigs.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %3094 = alloca i64
  store i64 0, i64* %3094
  br label %while_cond808
while_cond808:
  %3095 = load i64, i64* %3094
  %3096 = load { i64, i8* }*, { i64, i8* }** %sigs.ptr
  %3097 = call i64 @nyx_array_length({ i64, i8* }* %3096)
  %3098 = icmp slt i64 %3095, %3097
  br i1 %3098, label %while_body809, label %while_end810
while_body809:
  %3099 = load { i64, i8* }*, { i64, i8* }** %sigs.ptr
  %3100 = load i64, i64* %3094
  %3101 = call i64 @nyx_array_get({ i64, i8* }* %3099, i64 %3100)
  %3102 = inttoptr i64 %3101 to { i64, i8* }*
  %3103 = alloca { i64, i8* }*
  store { i64, i8* }* %3102, { i64, i8* }** %3103
  %3104 = load { i64, i8* }*, { i64, i8* }** %3103
  %3105 = call i64 @nyx_array_get({ i64, i8* }* %3104, i64 0)
  %3106 = inttoptr i64 %3105 to %nyx_string*
  %3107 = alloca %nyx_string*
  store %nyx_string* %3106, %nyx_string** %3107
  %3108 = load %nyx_string*, %nyx_string** %3107
  %3109 = load %nyx_string*, %nyx_string** %name.ptr
  %3110 = call i1 @nyx_string_equals(%nyx_string* %3108, %nyx_string* %3109)
  br i1 %3110, label %then811, label %else812
then811:
  %3111 = call { i64, i8* }* @nyx_array_new_ptr()
  %3112 = load { i64, i8* }*, { i64, i8* }** %3103
  %3113 = call i64 @nyx_array_get({ i64, i8* }* %3112, i64 1)
  call void @nyx_array_push({ i64, i8* }* %3111, i64 %3113)
  %3114 = load { i64, i8* }*, { i64, i8* }** %3103
  %3115 = call i64 @nyx_array_get({ i64, i8* }* %3114, i64 2)
  call void @nyx_array_push({ i64, i8* }* %3111, i64 %3115)
  ret { i64, i8* }* %3111
else812:
  br label %merge813
merge813:
  %3116 = load i64, i64* %3094
  %3117 = add i64 %3116, 1
  store i64 %3117, i64* %3094
  br label %while_cond808
while_end810:
  %3118 = call { i64, i8* }* @nyx_array_new_ptr()
  %3119 = call { i64, i8* }* @nyx_array_new_ptr()
  %3120 = bitcast { i64, i8* }* %3119 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %3118, i8* %3120)
  call void @nyx_array_push({ i64, i8* }* %3118, i64 0)
  ret { i64, i8* }* %3118
}

define i1 @borrow_check(
{ i64, i8* }* %ast.param) {
  %ast.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ast.param, { i64, i8* }** %ast.ptr
  %3121 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  %3122 = call %ASTNode @bc_root_of({ i64, i8* }* %3121)
  %3123 = alloca %ASTNode
  store %ASTNode %3122, %ASTNode* %3123
  %3124 = load %ASTNode, %ASTNode* %3123
  %3125 = call { i64, i8* }* @collect_affine_types(%ASTNode %3124)
  %3126 = alloca { i64, i8* }*
  store { i64, i8* }* %3125, { i64, i8* }** %3126
  %3127 = load %ASTNode, %ASTNode* %3123
  %3128 = call { i64, i8* }* @struct_lt_build(%ASTNode %3127)
  %3129 = alloca { i64, i8* }*
  store { i64, i8* }* %3128, { i64, i8* }** %3129
  %3130 = load %ASTNode, %ASTNode* %3123
  %3131 = load { i64, i8* }*, { i64, i8* }** %3129
  %3132 = call { i64, i8* }* @sig_build(%ASTNode %3130, { i64, i8* }* %3131)
  %3133 = alloca { i64, i8* }*
  store { i64, i8* }* %3132, { i64, i8* }** %3133
  %3134 = call { i64, i8* }* @state_new()
  %3135 = alloca { i64, i8* }*
  store { i64, i8* }* %3134, { i64, i8* }** %3135
  %3136 = load { i64, i8* }*, { i64, i8* }** %3126
  %3137 = load { i64, i8* }*, { i64, i8* }** %3133
  %3138 = call { i64, i8* }* @tm_new({ i64, i8* }* %3136, { i64, i8* }* %3137)
  %3139 = alloca { i64, i8* }*
  store { i64, i8* }* %3138, { i64, i8* }** %3139
  %3140 = call { i64, i8* }* @nyx_array_new_ptr()
  %3141 = alloca { i64, i8* }*
  store { i64, i8* }* %3140, { i64, i8* }** %3141
  %3142 = load %ASTNode, %ASTNode* %3123
  %3143 = load { i64, i8* }*, { i64, i8* }** %3135
  %3144 = load { i64, i8* }*, { i64, i8* }** %3139
  %3145 = load { i64, i8* }*, { i64, i8* }** %3141
  %3146 = call i64 @bc_walk(%ASTNode %3142, { i64, i8* }* %3143, { i64, i8* }* %3144, { i64, i8* }* %3145)
  %3147 = call i64 @bc_mode()
  %3148 = alloca i64
  store i64 %3147, i64* %3148
  %3149 = load i64, i64* %3148
  %3150 = icmp eq i64 %3149, 0
  br i1 %3150, label %then814, label %else815
then814:
  ret i1 1
else815:
  br label %merge816
merge816:
  %3151 = alloca i64
  store i64 0, i64* %3151
  %3152 = alloca i64
  store i64 0, i64* %3152
  br label %while_cond817
while_cond817:
  %3153 = load i64, i64* %3152
  %3154 = load { i64, i8* }*, { i64, i8* }** %3141
  %3155 = call i64 @nyx_array_length({ i64, i8* }* %3154)
  %3156 = icmp slt i64 %3153, %3155
  br i1 %3156, label %while_body818, label %while_end819
while_body818:
  %3157 = load { i64, i8* }*, { i64, i8* }** %3141
  %3158 = load i64, i64* %3152
  %3159 = call i64 @nyx_array_get({ i64, i8* }* %3157, i64 %3158)
  %3160 = inttoptr i64 %3159 to %nyx_string*
  %3161 = alloca %nyx_string*
  store %nyx_string* %3160, %nyx_string** %3161
  %3162 = load i64, i64* %3148
  %3163 = icmp eq i64 %3162, 2
  br i1 %3163, label %then820, label %else821
then820:
  %3164 = load %nyx_string*, %nyx_string** %3161
  %3165 = call i1 @diag_is_gating(%nyx_string* %3164)
  br i1 %3165, label %then823, label %else824
then823:
  %3166 = getelementptr [7 x i8], [7 x i8]* @.str220, i32 0, i32 0
  %3167 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str220.c, i8* %3166)
  %3168 = load %nyx_string*, %nyx_string** %3161
  %3169 = call %nyx_string* @nyx_string_concat(%nyx_string* %3167, %nyx_string* %3168)
  %3170 = call i8* @nyx_string_to_cstr(%nyx_string* %3169)
  call void @nyx_print_string(i8* %3170)
  %3171 = load i64, i64* %3151
  %3172 = add i64 %3171, 1
  store i64 %3172, i64* %3151
  br label %merge825
else824:
  br label %merge825
merge825:
  br label %merge822
else821:
  %3173 = getelementptr [15 x i8], [15 x i8]* @.str221, i32 0, i32 0
  %3174 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str221.c, i8* %3173)
  %3175 = load %nyx_string*, %nyx_string** %3161
  %3176 = call %nyx_string* @nyx_string_concat(%nyx_string* %3174, %nyx_string* %3175)
  %3177 = call i8* @nyx_string_to_cstr(%nyx_string* %3176)
  call void @nyx_print_string(i8* %3177)
  br label %merge822
merge822:
  %3178 = load i64, i64* %3152
  %3179 = add i64 %3178, 1
  store i64 %3179, i64* %3152
  br label %while_cond817
while_end819:
  %3180 = load i64, i64* %3148
  %3181 = icmp eq i64 %3180, 2
  br i1 %3181, label %then826, label %else827
then826:
  %3182 = load i64, i64* %3151
  %3183 = icmp sgt i64 %3182, 0
  br i1 %3183, label %then829, label %else830
then829:
  call void @nyx_exit(i64 1)
  br label %merge831
else830:
  br label %merge831
merge831:
  br label %merge828
else827:
  br label %merge828
merge828:
  ret i1 1
}

define i1 @is_copy_type(
{ i64, i8* }* %ty.param) {
  %ty.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ty.param, { i64, i8* }** %ty.ptr
  %3184 = load { i64, i8* }*, { i64, i8* }** %ty.ptr
  %3185 = call i64 @nyx_array_length({ i64, i8* }* %3184)
  %3186 = icmp eq i64 %3185, 0
  br i1 %3186, label %then832, label %else833
then832:
  ret i1 1
else833:
  br label %merge834
merge834:
  %3187 = load { i64, i8* }*, { i64, i8* }** %ty.ptr
  %3188 = call i64 @nyx_array_get({ i64, i8* }* %3187, i64 0)
  %3189 = inttoptr i64 %3188 to %nyx_string*
  %3190 = alloca %nyx_string*
  store %nyx_string* %3189, %nyx_string** %3190
  %3191 = load %nyx_string*, %nyx_string** %3190
  %3192 = getelementptr [9 x i8], [9 x i8]* @.str222, i32 0, i32 0
  %3193 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str222.c, i8* %3192)
  %3194 = call i1 @nyx_string_equals(%nyx_string* %3191, %nyx_string* %3193)
  br i1 %3194, label %then835, label %else836
then835:
  ret i1 0
else836:
  br label %merge837
merge837:
  %3195 = load %nyx_string*, %nyx_string** %3190
  %3196 = getelementptr [8 x i8], [8 x i8]* @.str223, i32 0, i32 0
  %3197 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str223.c, i8* %3196)
  %3198 = call i1 @nyx_string_equals(%nyx_string* %3195, %nyx_string* %3197)
  br i1 %3198, label %then838, label %else839
then838:
  ret i1 0
else839:
  br label %merge840
merge840:
  %3199 = load %nyx_string*, %nyx_string** %3190
  %3200 = getelementptr [6 x i8], [6 x i8]* @.str224, i32 0, i32 0
  %3201 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str224.c, i8* %3200)
  %3202 = call i1 @nyx_string_equals(%nyx_string* %3199, %nyx_string* %3201)
  br i1 %3202, label %then841, label %else842
then841:
  ret i1 0
else842:
  br label %merge843
merge843:
  %3203 = load %nyx_string*, %nyx_string** %3190
  %3204 = getelementptr [9 x i8], [9 x i8]* @.str225, i32 0, i32 0
  %3205 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str225.c, i8* %3204)
  %3206 = call i1 @nyx_string_equals(%nyx_string* %3203, %nyx_string* %3205)
  br i1 %3206, label %then844, label %else845
then844:
  ret i1 0
else845:
  br label %merge846
merge846:
  %3207 = load %nyx_string*, %nyx_string** %3190
  %3208 = getelementptr [7 x i8], [7 x i8]* @.str226, i32 0, i32 0
  %3209 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str226.c, i8* %3208)
  %3210 = call i1 @nyx_string_equals(%nyx_string* %3207, %nyx_string* %3209)
  br i1 %3210, label %then847, label %else848
then847:
  ret i1 0
else848:
  br label %merge849
merge849:
  %3211 = load %nyx_string*, %nyx_string** %3190
  %3212 = getelementptr [9 x i8], [9 x i8]* @.str227, i32 0, i32 0
  %3213 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str227.c, i8* %3212)
  %3214 = call i1 @nyx_string_equals(%nyx_string* %3211, %nyx_string* %3213)
  br i1 %3214, label %then850, label %else851
then850:
  ret i1 0
else851:
  br label %merge852
merge852:
  %3215 = load %nyx_string*, %nyx_string** %3190
  %3216 = getelementptr [9 x i8], [9 x i8]* @.str228, i32 0, i32 0
  %3217 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str228.c, i8* %3216)
  %3218 = call i1 @nyx_string_equals(%nyx_string* %3215, %nyx_string* %3217)
  br i1 %3218, label %then853, label %else854
then853:
  ret i1 0
else854:
  br label %merge855
merge855:
  %3219 = load %nyx_string*, %nyx_string** %3190
  %3220 = getelementptr [5 x i8], [5 x i8]* @.str229, i32 0, i32 0
  %3221 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str229.c, i8* %3220)
  %3222 = call i1 @nyx_string_equals(%nyx_string* %3219, %nyx_string* %3221)
  br i1 %3222, label %then856, label %else857
then856:
  ret i1 0
else857:
  br label %merge858
merge858:
  %3223 = load %nyx_string*, %nyx_string** %3190
  %3224 = getelementptr [6 x i8], [6 x i8]* @.str230, i32 0, i32 0
  %3225 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str230.c, i8* %3224)
  %3226 = call i1 @nyx_string_equals(%nyx_string* %3223, %nyx_string* %3225)
  br i1 %3226, label %then859, label %else860
then859:
  ret i1 1
else860:
  br label %merge861
merge861:
  %3227 = load %nyx_string*, %nyx_string** %3190
  %3228 = getelementptr [8 x i8], [8 x i8]* @.str231, i32 0, i32 0
  %3229 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str231.c, i8* %3228)
  %3230 = call i1 @nyx_string_equals(%nyx_string* %3227, %nyx_string* %3229)
  br i1 %3230, label %then862, label %else863
then862:
  ret i1 1
else863:
  br label %merge864
merge864:
  %3231 = load %nyx_string*, %nyx_string** %3190
  %3232 = getelementptr [7 x i8], [7 x i8]* @.str232, i32 0, i32 0
  %3233 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str232.c, i8* %3232)
  %3234 = call i1 @nyx_string_equals(%nyx_string* %3231, %nyx_string* %3233)
  br i1 %3234, label %then865, label %else866
then865:
  ret i1 1
else866:
  br label %merge867
merge867:
  %3235 = load %nyx_string*, %nyx_string** %3190
  %3236 = getelementptr [7 x i8], [7 x i8]* @.str233, i32 0, i32 0
  %3237 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str233.c, i8* %3236)
  %3238 = call i1 @nyx_string_equals(%nyx_string* %3235, %nyx_string* %3237)
  br i1 %3238, label %then868, label %else869
then868:
  ret i1 1
else869:
  br label %merge870
merge870:
  %3239 = load %nyx_string*, %nyx_string** %3190
  %3240 = getelementptr [7 x i8], [7 x i8]* @.str234, i32 0, i32 0
  %3241 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str234.c, i8* %3240)
  %3242 = call i1 @nyx_string_equals(%nyx_string* %3239, %nyx_string* %3241)
  br i1 %3242, label %then871, label %else872
then871:
  ret i1 1
else872:
  br label %merge873
merge873:
  %3243 = load %nyx_string*, %nyx_string** %3190
  %3244 = getelementptr [8 x i8], [8 x i8]* @.str235, i32 0, i32 0
  %3245 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str235.c, i8* %3244)
  %3246 = call i1 @nyx_string_equals(%nyx_string* %3243, %nyx_string* %3245)
  br i1 %3246, label %then874, label %else875
then874:
  ret i1 1
else875:
  br label %merge876
merge876:
  %3247 = load %nyx_string*, %nyx_string** %3190
  %3248 = getelementptr [6 x i8], [6 x i8]* @.str236, i32 0, i32 0
  %3249 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str236.c, i8* %3248)
  %3250 = call i1 @nyx_string_equals(%nyx_string* %3247, %nyx_string* %3249)
  br i1 %3250, label %then877, label %else878
then877:
  ret i1 1
else878:
  br label %merge879
merge879:
  %3251 = load %nyx_string*, %nyx_string** %3190
  %3252 = getelementptr [9 x i8], [9 x i8]* @.str237, i32 0, i32 0
  %3253 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str237.c, i8* %3252)
  %3254 = call i1 @nyx_string_equals(%nyx_string* %3251, %nyx_string* %3253)
  br i1 %3254, label %then880, label %else881
then880:
  ret i1 1
else881:
  br label %merge882
merge882:
  %3255 = load %nyx_string*, %nyx_string** %3190
  %3256 = getelementptr [6 x i8], [6 x i8]* @.str238, i32 0, i32 0
  %3257 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str238.c, i8* %3256)
  %3258 = call i1 @nyx_string_equals(%nyx_string* %3255, %nyx_string* %3257)
  br i1 %3258, label %then883, label %else884
then883:
  ret i1 1
else884:
  br label %merge885
merge885:
  ret i1 1
}

define %nyx_string* @place_of(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %3259 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 0
  %3260 = load %nyx_string*, %nyx_string** %3259
  %3261 = alloca %nyx_string*
  store %nyx_string* %3260, %nyx_string** %3261
  %3262 = load %nyx_string*, %nyx_string** %3261
  %3263 = getelementptr [11 x i8], [11 x i8]* @.str239, i32 0, i32 0
  %3264 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str239.c, i8* %3263)
  %3265 = call i1 @nyx_string_equals(%nyx_string* %3262, %nyx_string* %3264)
  br i1 %3265, label %then886, label %else887
then886:
  %3266 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %3267 = load { i64, i8* }*, { i64, i8* }** %3266
  %3268 = alloca { i64, i8* }*
  store { i64, i8* }* %3267, { i64, i8* }** %3268
  %3269 = load { i64, i8* }*, { i64, i8* }** %3268
  %3270 = call i64 @nyx_array_length({ i64, i8* }* %3269)
  %3271 = icmp sgt i64 %3270, 0
  br i1 %3271, label %then889, label %else890
then889:
  %3272 = load { i64, i8* }*, { i64, i8* }** %3268
  %3273 = call i64 @nyx_array_get({ i64, i8* }* %3272, i64 0)
  %3274 = inttoptr i64 %3273 to %nyx_string*
  %3275 = alloca %nyx_string*
  store %nyx_string* %3274, %nyx_string** %3275
  %3276 = load %nyx_string*, %nyx_string** %3275
  ret %nyx_string* %3276
else890:
  br label %merge891
merge891:
  %3277 = getelementptr [1 x i8], [1 x i8]* @.str240, i32 0, i32 0
  %3278 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str240.c, i8* %3277)
  ret %nyx_string* %3278
else887:
  br label %merge888
merge888:
  %3279 = load %nyx_string*, %nyx_string** %3261
  %3280 = getelementptr [13 x i8], [13 x i8]* @.str241, i32 0, i32 0
  %3281 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str241.c, i8* %3280)
  %3282 = call i1 @nyx_string_equals(%nyx_string* %3279, %nyx_string* %3281)
  br i1 %3282, label %then892, label %else893
then892:
  %3283 = load %ASTNode, %ASTNode* %node.ptr
  %3284 = call %ASTNode @bc_node_at(%ASTNode %3283, i64 0)
  %3285 = call %nyx_string* @place_of(%ASTNode %3284)
  ret %nyx_string* %3285
else893:
  br label %merge894
merge894:
  %3286 = load %nyx_string*, %nyx_string** %3261
  %3287 = getelementptr [6 x i8], [6 x i8]* @.str242, i32 0, i32 0
  %3288 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str242.c, i8* %3287)
  %3289 = call i1 @nyx_string_equals(%nyx_string* %3286, %nyx_string* %3288)
  br i1 %3289, label %then895, label %else896
then895:
  %3290 = load %ASTNode, %ASTNode* %node.ptr
  %3291 = call %ASTNode @bc_node_at(%ASTNode %3290, i64 0)
  %3292 = call %nyx_string* @place_of(%ASTNode %3291)
  ret %nyx_string* %3292
else896:
  br label %merge897
merge897:
  %3293 = load %nyx_string*, %nyx_string** %3261
  %3294 = getelementptr [6 x i8], [6 x i8]* @.str243, i32 0, i32 0
  %3295 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str243.c, i8* %3294)
  %3296 = call i1 @nyx_string_equals(%nyx_string* %3293, %nyx_string* %3295)
  br i1 %3296, label %then898, label %else899
then898:
  %3297 = load %ASTNode, %ASTNode* %node.ptr
  %3298 = call %ASTNode @bc_node_at(%ASTNode %3297, i64 0)
  %3299 = call %nyx_string* @place_of(%ASTNode %3298)
  ret %nyx_string* %3299
else899:
  br label %merge900
merge900:
  %3300 = load %nyx_string*, %nyx_string** %3261
  %3301 = getelementptr [8 x i8], [8 x i8]* @.str244, i32 0, i32 0
  %3302 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str244.c, i8* %3301)
  %3303 = call i1 @nyx_string_equals(%nyx_string* %3300, %nyx_string* %3302)
  br i1 %3303, label %then901, label %else902
then901:
  %3304 = load %ASTNode, %ASTNode* %node.ptr
  %3305 = call %ASTNode @bc_node_at(%ASTNode %3304, i64 0)
  %3306 = call %nyx_string* @place_of(%ASTNode %3305)
  ret %nyx_string* %3306
else902:
  br label %merge903
merge903:
  %3307 = load %nyx_string*, %nyx_string** %3261
  %3308 = getelementptr [12 x i8], [12 x i8]* @.str245, i32 0, i32 0
  %3309 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str245.c, i8* %3308)
  %3310 = call i1 @nyx_string_equals(%nyx_string* %3307, %nyx_string* %3309)
  br i1 %3310, label %then904, label %else905
then904:
  %3311 = load %ASTNode, %ASTNode* %node.ptr
  %3312 = call %ASTNode @bc_node_at(%ASTNode %3311, i64 0)
  %3313 = call %nyx_string* @place_of(%ASTNode %3312)
  ret %nyx_string* %3313
else905:
  br label %merge906
merge906:
  %3314 = getelementptr [1 x i8], [1 x i8]* @.str246, i32 0, i32 0
  %3315 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str246.c, i8* %3314)
  ret %nyx_string* %3315
}

define %nyx_string* @place_path(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %3316 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 0
  %3317 = load %nyx_string*, %nyx_string** %3316
  %3318 = alloca %nyx_string*
  store %nyx_string* %3317, %nyx_string** %3318
  %3319 = load %nyx_string*, %nyx_string** %3318
  %3320 = getelementptr [13 x i8], [13 x i8]* @.str247, i32 0, i32 0
  %3321 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str247.c, i8* %3320)
  %3322 = call i1 @nyx_string_equals(%nyx_string* %3319, %nyx_string* %3321)
  br i1 %3322, label %then907, label %else908
then907:
  %3323 = load %ASTNode, %ASTNode* %node.ptr
  %3324 = call %ASTNode @bc_node_at(%ASTNode %3323, i64 0)
  %3325 = call %nyx_string* @place_path(%ASTNode %3324)
  %3326 = alloca %nyx_string*
  store %nyx_string* %3325, %nyx_string** %3326
  %3327 = load %nyx_string*, %nyx_string** %3326
  %3328 = getelementptr [1 x i8], [1 x i8]* @.str248, i32 0, i32 0
  %3329 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str248.c, i8* %3328)
  %3330 = call i1 @nyx_string_equals(%nyx_string* %3327, %nyx_string* %3329)
  br i1 %3330, label %then910, label %else911
then910:
  %3331 = getelementptr [1 x i8], [1 x i8]* @.str249, i32 0, i32 0
  %3332 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str249.c, i8* %3331)
  ret %nyx_string* %3332
else911:
  br label %merge912
merge912:
  %3333 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %3334 = load { i64, i8* }*, { i64, i8* }** %3333
  %3335 = alloca { i64, i8* }*
  store { i64, i8* }* %3334, { i64, i8* }** %3335
  %3336 = load { i64, i8* }*, { i64, i8* }** %3335
  %3337 = call i64 @nyx_array_length({ i64, i8* }* %3336)
  %3338 = icmp sgt i64 %3337, 1
  br i1 %3338, label %then913, label %else914
then913:
  %3339 = load { i64, i8* }*, { i64, i8* }** %3335
  %3340 = call i64 @nyx_array_get({ i64, i8* }* %3339, i64 1)
  %3341 = inttoptr i64 %3340 to %nyx_string*
  %3342 = alloca %nyx_string*
  store %nyx_string* %3341, %nyx_string** %3342
  %3343 = load %nyx_string*, %nyx_string** %3326
  %3344 = getelementptr [2 x i8], [2 x i8]* @.str250, i32 0, i32 0
  %3345 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str250.c, i8* %3344)
  %3346 = call %nyx_string* @nyx_string_concat(%nyx_string* %3343, %nyx_string* %3345)
  %3347 = load %nyx_string*, %nyx_string** %3342
  %3348 = call %nyx_string* @nyx_string_concat(%nyx_string* %3346, %nyx_string* %3347)
  ret %nyx_string* %3348
else914:
  br label %merge915
merge915:
  %3349 = getelementptr [1 x i8], [1 x i8]* @.str251, i32 0, i32 0
  %3350 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str251.c, i8* %3349)
  ret %nyx_string* %3350
else908:
  br label %merge909
merge909:
  %3351 = load %ASTNode, %ASTNode* %node.ptr
  %3352 = call %nyx_string* @place_of(%ASTNode %3351)
  ret %nyx_string* %3352
}

define { i64, i8* }* @state_new(
) {
  %3353 = call { i64, i8* }* @nyx_array_new_ptr()
  %3354 = call { i64, i8* }* @nyx_array_new_ptr()
  %3355 = bitcast { i64, i8* }* %3354 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %3353, i8* %3355)
  %3356 = call { i64, i8* }* @nyx_array_new_ptr()
  %3357 = bitcast { i64, i8* }* %3356 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %3353, i8* %3357)
  %3358 = call { i64, i8* }* @nyx_array_new_ptr()
  %3359 = bitcast { i64, i8* }* %3358 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %3353, i8* %3359)
  %3360 = call { i64, i8* }* @nyx_array_new_ptr()
  %3361 = bitcast { i64, i8* }* %3360 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %3353, i8* %3361)
  ret { i64, i8* }* %3353
}

define internal i64 @place_index(
{ i64, i8* }* %state.param, %nyx_string* %name.param) {
  %state.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %3362 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3363 = call i64 @nyx_array_get({ i64, i8* }* %3362, i64 0)
  %3364 = inttoptr i64 %3363 to { i64, i8* }*
  %3365 = alloca { i64, i8* }*
  store { i64, i8* }* %3364, { i64, i8* }** %3365
  %3366 = alloca i64
  store i64 0, i64* %3366
  br label %while_cond916
while_cond916:
  %3367 = load i64, i64* %3366
  %3368 = load { i64, i8* }*, { i64, i8* }** %3365
  %3369 = call i64 @nyx_array_length({ i64, i8* }* %3368)
  %3370 = icmp slt i64 %3367, %3369
  br i1 %3370, label %while_body917, label %while_end918
while_body917:
  %3371 = load { i64, i8* }*, { i64, i8* }** %3365
  %3372 = load i64, i64* %3366
  %3373 = call i64 @nyx_array_get({ i64, i8* }* %3371, i64 %3372)
  %3374 = inttoptr i64 %3373 to %nyx_string*
  %3375 = alloca %nyx_string*
  store %nyx_string* %3374, %nyx_string** %3375
  %3376 = load %nyx_string*, %nyx_string** %3375
  %3377 = load %nyx_string*, %nyx_string** %name.ptr
  %3378 = call i1 @nyx_string_equals(%nyx_string* %3376, %nyx_string* %3377)
  br i1 %3378, label %then919, label %else920
then919:
  %3379 = load i64, i64* %3366
  ret i64 %3379
else920:
  br label %merge921
merge921:
  %3380 = load i64, i64* %3366
  %3381 = add i64 %3380, 1
  store i64 %3381, i64* %3366
  br label %while_cond916
while_end918:
  %3382 = sub i64 0, 1
  ret i64 %3382
}

define i64 @place_ensure(
{ i64, i8* }* %state.param, %nyx_string* %name.param) {
  %state.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %3383 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3384 = load %nyx_string*, %nyx_string** %name.ptr
  %3385 = call i64 @place_index({ i64, i8* }* %3383, %nyx_string* %3384)
  %3386 = alloca i64
  store i64 %3385, i64* %3386
  %3387 = load i64, i64* %3386
  %3388 = icmp sge i64 %3387, 0
  br i1 %3388, label %then922, label %else923
then922:
  %3389 = load i64, i64* %3386
  ret i64 %3389
else923:
  br label %merge924
merge924:
  %3390 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3391 = call i64 @nyx_array_get({ i64, i8* }* %3390, i64 0)
  %3392 = inttoptr i64 %3391 to { i64, i8* }*
  %3393 = alloca { i64, i8* }*
  store { i64, i8* }* %3392, { i64, i8* }** %3393
  %3394 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3395 = call i64 @nyx_array_get({ i64, i8* }* %3394, i64 1)
  %3396 = inttoptr i64 %3395 to { i64, i8* }*
  %3397 = alloca { i64, i8* }*
  store { i64, i8* }* %3396, { i64, i8* }** %3397
  %3398 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3399 = call i64 @nyx_array_get({ i64, i8* }* %3398, i64 2)
  %3400 = inttoptr i64 %3399 to { i64, i8* }*
  %3401 = alloca { i64, i8* }*
  store { i64, i8* }* %3400, { i64, i8* }** %3401
  %3402 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3403 = call i64 @nyx_array_get({ i64, i8* }* %3402, i64 3)
  %3404 = inttoptr i64 %3403 to { i64, i8* }*
  %3405 = alloca { i64, i8* }*
  store { i64, i8* }* %3404, { i64, i8* }** %3405
  %3406 = load { i64, i8* }*, { i64, i8* }** %3393
  %3407 = load %nyx_string*, %nyx_string** %name.ptr
  %3408 = ptrtoint %nyx_string* %3407 to i64
  call void @nyx_array_push({ i64, i8* }* %3406, i64 %3408)
  %3409 = load { i64, i8* }*, { i64, i8* }** %3397
  call void @nyx_array_push({ i64, i8* }* %3409, i64 0)
  %3410 = load { i64, i8* }*, { i64, i8* }** %3401
  call void @nyx_array_push({ i64, i8* }* %3410, i64 0)
  %3411 = load { i64, i8* }*, { i64, i8* }** %3405
  %3412 = getelementptr [1 x i8], [1 x i8]* @.str252, i32 0, i32 0
  %3413 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str252.c, i8* %3412)
  %3414 = ptrtoint %nyx_string* %3413 to i64
  call void @nyx_array_push({ i64, i8* }* %3411, i64 %3414)
  %3415 = load { i64, i8* }*, { i64, i8* }** %3393
  %3416 = call i64 @nyx_array_length({ i64, i8* }* %3415)
  %3417 = sub i64 %3416, 1
  ret i64 %3417
}

define i64 @mark_moved(
{ i64, i8* }* %state.param, %nyx_string* %name.param) {
  %state.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %3418 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3419 = load %nyx_string*, %nyx_string** %name.ptr
  %3420 = call i64 @place_ensure({ i64, i8* }* %3418, %nyx_string* %3419)
  %3421 = alloca i64
  store i64 %3420, i64* %3421
  %3422 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3423 = call i64 @nyx_array_get({ i64, i8* }* %3422, i64 1)
  %3424 = inttoptr i64 %3423 to { i64, i8* }*
  %3425 = alloca { i64, i8* }*
  store { i64, i8* }* %3424, { i64, i8* }** %3425
  %3426 = load { i64, i8* }*, { i64, i8* }** %3425
  %3427 = load i64, i64* %3421
  call void @nyx_array_set({ i64, i8* }* %3426, i64 %3427, i64 1)
  ret i64 0
}

define i1 @is_moved(
{ i64, i8* }* %state.param, %nyx_string* %name.param) {
  %state.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %3428 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3429 = load %nyx_string*, %nyx_string** %name.ptr
  %3430 = call i64 @place_index({ i64, i8* }* %3428, %nyx_string* %3429)
  %3431 = alloca i64
  store i64 %3430, i64* %3431
  %3432 = load i64, i64* %3431
  %3433 = icmp slt i64 %3432, 0
  br i1 %3433, label %then925, label %else926
then925:
  ret i1 0
else926:
  br label %merge927
merge927:
  %3434 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3435 = call i64 @nyx_array_get({ i64, i8* }* %3434, i64 1)
  %3436 = inttoptr i64 %3435 to { i64, i8* }*
  %3437 = alloca { i64, i8* }*
  store { i64, i8* }* %3436, { i64, i8* }** %3437
  %3438 = load { i64, i8* }*, { i64, i8* }** %3437
  %3439 = load i64, i64* %3431
  %3440 = call i64 @nyx_array_get({ i64, i8* }* %3438, i64 %3439)
  %3441 = alloca i64
  store i64 %3440, i64* %3441
  %3442 = load i64, i64* %3441
  %3443 = icmp eq i64 %3442, 1
  ret i1 %3443
}

define i64 @mark_freed(
{ i64, i8* }* %state.param, %nyx_string* %name.param) {
  %state.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %3444 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3445 = load %nyx_string*, %nyx_string** %name.ptr
  %3446 = call i64 @place_ensure({ i64, i8* }* %3444, %nyx_string* %3445)
  %3447 = alloca i64
  store i64 %3446, i64* %3447
  %3448 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3449 = call i64 @nyx_array_get({ i64, i8* }* %3448, i64 1)
  %3450 = inttoptr i64 %3449 to { i64, i8* }*
  %3451 = alloca { i64, i8* }*
  store { i64, i8* }* %3450, { i64, i8* }** %3451
  %3452 = load { i64, i8* }*, { i64, i8* }** %3451
  %3453 = load i64, i64* %3447
  call void @nyx_array_set({ i64, i8* }* %3452, i64 %3453, i64 2)
  ret i64 0
}

define i1 @is_freed(
{ i64, i8* }* %state.param, %nyx_string* %name.param) {
  %state.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %3454 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3455 = load %nyx_string*, %nyx_string** %name.ptr
  %3456 = call i64 @place_index({ i64, i8* }* %3454, %nyx_string* %3455)
  %3457 = alloca i64
  store i64 %3456, i64* %3457
  %3458 = load i64, i64* %3457
  %3459 = icmp slt i64 %3458, 0
  br i1 %3459, label %then928, label %else929
then928:
  ret i1 0
else929:
  br label %merge930
merge930:
  %3460 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3461 = call i64 @nyx_array_get({ i64, i8* }* %3460, i64 1)
  %3462 = inttoptr i64 %3461 to { i64, i8* }*
  %3463 = alloca { i64, i8* }*
  store { i64, i8* }* %3462, { i64, i8* }** %3463
  %3464 = load { i64, i8* }*, { i64, i8* }** %3463
  %3465 = load i64, i64* %3457
  %3466 = call i64 @nyx_array_get({ i64, i8* }* %3464, i64 %3465)
  %3467 = alloca i64
  store i64 %3466, i64* %3467
  %3468 = load i64, i64* %3467
  %3469 = icmp eq i64 %3468, 2
  ret i1 %3469
}

define i64 @revive(
{ i64, i8* }* %state.param, %nyx_string* %name.param) {
  %state.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %3470 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3471 = load %nyx_string*, %nyx_string** %name.ptr
  %3472 = call i64 @place_ensure({ i64, i8* }* %3470, %nyx_string* %3471)
  %3473 = alloca i64
  store i64 %3472, i64* %3473
  %3474 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3475 = call i64 @nyx_array_get({ i64, i8* }* %3474, i64 1)
  %3476 = inttoptr i64 %3475 to { i64, i8* }*
  %3477 = alloca { i64, i8* }*
  store { i64, i8* }* %3476, { i64, i8* }** %3477
  %3478 = load { i64, i8* }*, { i64, i8* }** %3477
  %3479 = load i64, i64* %3473
  call void @nyx_array_set({ i64, i8* }* %3478, i64 %3479, i64 0)
  ret i64 0
}

define i64 @set_borrow(
{ i64, i8* }* %state.param, %nyx_string* %name.param, i64 %kind.param) {
  %state.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %kind.ptr = alloca i64
  store i64 %kind.param, i64* %kind.ptr
  %3480 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3481 = load %nyx_string*, %nyx_string** %name.ptr
  %3482 = call i64 @place_ensure({ i64, i8* }* %3480, %nyx_string* %3481)
  %3483 = alloca i64
  store i64 %3482, i64* %3483
  %3484 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3485 = call i64 @nyx_array_get({ i64, i8* }* %3484, i64 2)
  %3486 = inttoptr i64 %3485 to { i64, i8* }*
  %3487 = alloca { i64, i8* }*
  store { i64, i8* }* %3486, { i64, i8* }** %3487
  %3488 = load { i64, i8* }*, { i64, i8* }** %3487
  %3489 = load i64, i64* %3483
  %3490 = load i64, i64* %kind.ptr
  call void @nyx_array_set({ i64, i8* }* %3488, i64 %3489, i64 %3490)
  ret i64 0
}

define i64 @get_borrow(
{ i64, i8* }* %state.param, %nyx_string* %name.param) {
  %state.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %3491 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3492 = load %nyx_string*, %nyx_string** %name.ptr
  %3493 = call i64 @place_index({ i64, i8* }* %3491, %nyx_string* %3492)
  %3494 = alloca i64
  store i64 %3493, i64* %3494
  %3495 = load i64, i64* %3494
  %3496 = icmp slt i64 %3495, 0
  br i1 %3496, label %then931, label %else932
then931:
  ret i64 0
else932:
  br label %merge933
merge933:
  %3497 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3498 = call i64 @nyx_array_get({ i64, i8* }* %3497, i64 2)
  %3499 = inttoptr i64 %3498 to { i64, i8* }*
  %3500 = alloca { i64, i8* }*
  store { i64, i8* }* %3499, { i64, i8* }** %3500
  %3501 = load { i64, i8* }*, { i64, i8* }** %3500
  %3502 = load i64, i64* %3494
  %3503 = call i64 @nyx_array_get({ i64, i8* }* %3501, i64 %3502)
  %3504 = alloca i64
  store i64 %3503, i64* %3504
  %3505 = load i64, i64* %3504
  ret i64 %3505
}

define internal %nyx_string* @reforigin_mark_soft(
%nyx_string* %name.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %3506 = getelementptr [2 x i8], [2 x i8]* @.str253, i32 0, i32 0
  %3507 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str253.c, i8* %3506)
  %3508 = load %nyx_string*, %nyx_string** %name.ptr
  %3509 = call %nyx_string* @nyx_string_concat(%nyx_string* %3507, %nyx_string* %3508)
  ret %nyx_string* %3509
}

define internal i1 @reforigin_is_soft(
%nyx_string* %o.param) {
  %o.ptr = alloca %nyx_string*
  store %nyx_string* %o.param, %nyx_string** %o.ptr
  %3510 = load %nyx_string*, %nyx_string** %o.ptr
  %3511 = call i64 @nyx_string_byte_length(%nyx_string* %3510)
  %3512 = icmp eq i64 %3511, 0
  br i1 %3512, label %then934, label %else935
then934:
  ret i1 0
else935:
  br label %merge936
merge936:
  %3513 = load %nyx_string*, %nyx_string** %o.ptr
  %3514 = call %nyx_string* @nyx_string_substring(%nyx_string* %3513, i64 0, i64 1)
  %3515 = getelementptr [2 x i8], [2 x i8]* @.str254, i32 0, i32 0
  %3516 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str254.c, i8* %3515)
  %3517 = call i1 @nyx_string_equals(%nyx_string* %3514, %nyx_string* %3516)
  ret i1 %3517
}

define internal %nyx_string* @reforigin_name(
%nyx_string* %o.param) {
  %o.ptr = alloca %nyx_string*
  store %nyx_string* %o.param, %nyx_string** %o.ptr
  %3518 = load %nyx_string*, %nyx_string** %o.ptr
  %3519 = call i1 @reforigin_is_soft(%nyx_string* %3518)
  br i1 %3519, label %then937, label %else938
then937:
  %3520 = load %nyx_string*, %nyx_string** %o.ptr
  %3521 = load %nyx_string*, %nyx_string** %o.ptr
  %3522 = call i64 @nyx_string_byte_length(%nyx_string* %3521)
  %3523 = call %nyx_string* @nyx_string_substring(%nyx_string* %3520, i64 1, i64 %3522)
  ret %nyx_string* %3523
else938:
  br label %merge939
merge939:
  %3524 = load %nyx_string*, %nyx_string** %o.ptr
  ret %nyx_string* %3524
}

define i64 @set_reforigin(
{ i64, i8* }* %state.param, %nyx_string* %name.param, %nyx_string* %origin.param) {
  %state.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %origin.ptr = alloca %nyx_string*
  store %nyx_string* %origin.param, %nyx_string** %origin.ptr
  %3525 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3526 = load %nyx_string*, %nyx_string** %name.ptr
  %3527 = call i64 @place_ensure({ i64, i8* }* %3525, %nyx_string* %3526)
  %3528 = alloca i64
  store i64 %3527, i64* %3528
  %3529 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3530 = call i64 @nyx_array_get({ i64, i8* }* %3529, i64 3)
  %3531 = inttoptr i64 %3530 to { i64, i8* }*
  %3532 = alloca { i64, i8* }*
  store { i64, i8* }* %3531, { i64, i8* }** %3532
  %3533 = load { i64, i8* }*, { i64, i8* }** %3532
  %3534 = load i64, i64* %3528
  %3535 = load %nyx_string*, %nyx_string** %origin.ptr
  %3536 = ptrtoint %nyx_string* %3535 to i64
  call void @nyx_array_set({ i64, i8* }* %3533, i64 %3534, i64 %3536)
  ret i64 0
}

define %nyx_string* @get_reforigin(
{ i64, i8* }* %state.param, %nyx_string* %name.param) {
  %state.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %3537 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3538 = load %nyx_string*, %nyx_string** %name.ptr
  %3539 = call i64 @place_index({ i64, i8* }* %3537, %nyx_string* %3538)
  %3540 = alloca i64
  store i64 %3539, i64* %3540
  %3541 = load i64, i64* %3540
  %3542 = icmp slt i64 %3541, 0
  br i1 %3542, label %then940, label %else941
then940:
  %3543 = getelementptr [1 x i8], [1 x i8]* @.str255, i32 0, i32 0
  %3544 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str255.c, i8* %3543)
  ret %nyx_string* %3544
else941:
  br label %merge942
merge942:
  %3545 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3546 = call i64 @nyx_array_get({ i64, i8* }* %3545, i64 3)
  %3547 = inttoptr i64 %3546 to { i64, i8* }*
  %3548 = alloca { i64, i8* }*
  store { i64, i8* }* %3547, { i64, i8* }** %3548
  %3549 = load { i64, i8* }*, { i64, i8* }** %3548
  %3550 = load i64, i64* %3540
  %3551 = call i64 @nyx_array_get({ i64, i8* }* %3549, i64 %3550)
  %3552 = inttoptr i64 %3551 to %nyx_string*
  %3553 = alloca %nyx_string*
  store %nyx_string* %3552, %nyx_string** %3553
  %3554 = load %nyx_string*, %nyx_string** %3553
  ret %nyx_string* %3554
}

define internal i64 @clear_borrows(
{ i64, i8* }* %state.param) {
  %state.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  %3555 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3556 = call i64 @nyx_array_get({ i64, i8* }* %3555, i64 2)
  %3557 = inttoptr i64 %3556 to { i64, i8* }*
  %3558 = alloca { i64, i8* }*
  store { i64, i8* }* %3557, { i64, i8* }** %3558
  %3559 = alloca i64
  store i64 0, i64* %3559
  br label %while_cond943
while_cond943:
  %3560 = load i64, i64* %3559
  %3561 = load { i64, i8* }*, { i64, i8* }** %3558
  %3562 = call i64 @nyx_array_length({ i64, i8* }* %3561)
  %3563 = icmp slt i64 %3560, %3562
  br i1 %3563, label %while_body944, label %while_end945
while_body944:
  %3564 = load { i64, i8* }*, { i64, i8* }** %3558
  %3565 = load i64, i64* %3559
  call void @nyx_array_set({ i64, i8* }* %3564, i64 %3565, i64 0)
  %3566 = load i64, i64* %3559
  %3567 = add i64 %3566, 1
  store i64 %3567, i64* %3559
  br label %while_cond943
while_end945:
  ret i64 0
}

define { i64, i8* }* @state_copy(
{ i64, i8* }* %state.param) {
  %state.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  %3568 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3569 = call i64 @nyx_array_get({ i64, i8* }* %3568, i64 0)
  %3570 = inttoptr i64 %3569 to { i64, i8* }*
  %3571 = alloca { i64, i8* }*
  store { i64, i8* }* %3570, { i64, i8* }** %3571
  %3572 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3573 = call i64 @nyx_array_get({ i64, i8* }* %3572, i64 1)
  %3574 = inttoptr i64 %3573 to { i64, i8* }*
  %3575 = alloca { i64, i8* }*
  store { i64, i8* }* %3574, { i64, i8* }** %3575
  %3576 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3577 = call i64 @nyx_array_get({ i64, i8* }* %3576, i64 2)
  %3578 = inttoptr i64 %3577 to { i64, i8* }*
  %3579 = alloca { i64, i8* }*
  store { i64, i8* }* %3578, { i64, i8* }** %3579
  %3580 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3581 = call i64 @nyx_array_get({ i64, i8* }* %3580, i64 3)
  %3582 = inttoptr i64 %3581 to { i64, i8* }*
  %3583 = alloca { i64, i8* }*
  store { i64, i8* }* %3582, { i64, i8* }** %3583
  %3584 = call { i64, i8* }* @nyx_array_new_ptr()
  %3585 = alloca { i64, i8* }*
  store { i64, i8* }* %3584, { i64, i8* }** %3585
  %3586 = call { i64, i8* }* @nyx_array_new_ptr()
  %3587 = alloca { i64, i8* }*
  store { i64, i8* }* %3586, { i64, i8* }** %3587
  %3588 = call { i64, i8* }* @nyx_array_new_ptr()
  %3589 = alloca { i64, i8* }*
  store { i64, i8* }* %3588, { i64, i8* }** %3589
  %3590 = call { i64, i8* }* @nyx_array_new_ptr()
  %3591 = alloca { i64, i8* }*
  store { i64, i8* }* %3590, { i64, i8* }** %3591
  %3592 = alloca i64
  store i64 0, i64* %3592
  br label %while_cond946
while_cond946:
  %3593 = load i64, i64* %3592
  %3594 = load { i64, i8* }*, { i64, i8* }** %3571
  %3595 = call i64 @nyx_array_length({ i64, i8* }* %3594)
  %3596 = icmp slt i64 %3593, %3595
  br i1 %3596, label %while_body947, label %while_end948
while_body947:
  %3597 = load { i64, i8* }*, { i64, i8* }** %3571
  %3598 = load i64, i64* %3592
  %3599 = call i64 @nyx_array_get({ i64, i8* }* %3597, i64 %3598)
  %3600 = inttoptr i64 %3599 to %nyx_string*
  %3601 = alloca %nyx_string*
  store %nyx_string* %3600, %nyx_string** %3601
  %3602 = load { i64, i8* }*, { i64, i8* }** %3575
  %3603 = load i64, i64* %3592
  %3604 = call i64 @nyx_array_get({ i64, i8* }* %3602, i64 %3603)
  %3605 = alloca i64
  store i64 %3604, i64* %3605
  %3606 = load { i64, i8* }*, { i64, i8* }** %3579
  %3607 = load i64, i64* %3592
  %3608 = call i64 @nyx_array_get({ i64, i8* }* %3606, i64 %3607)
  %3609 = alloca i64
  store i64 %3608, i64* %3609
  %3610 = load { i64, i8* }*, { i64, i8* }** %3583
  %3611 = load i64, i64* %3592
  %3612 = call i64 @nyx_array_get({ i64, i8* }* %3610, i64 %3611)
  %3613 = inttoptr i64 %3612 to %nyx_string*
  %3614 = alloca %nyx_string*
  store %nyx_string* %3613, %nyx_string** %3614
  %3615 = load { i64, i8* }*, { i64, i8* }** %3585
  %3616 = load %nyx_string*, %nyx_string** %3601
  %3617 = ptrtoint %nyx_string* %3616 to i64
  call void @nyx_array_push({ i64, i8* }* %3615, i64 %3617)
  %3618 = load { i64, i8* }*, { i64, i8* }** %3587
  %3619 = load i64, i64* %3605
  call void @nyx_array_push({ i64, i8* }* %3618, i64 %3619)
  %3620 = load { i64, i8* }*, { i64, i8* }** %3589
  %3621 = load i64, i64* %3609
  call void @nyx_array_push({ i64, i8* }* %3620, i64 %3621)
  %3622 = load { i64, i8* }*, { i64, i8* }** %3591
  %3623 = load %nyx_string*, %nyx_string** %3614
  %3624 = ptrtoint %nyx_string* %3623 to i64
  call void @nyx_array_push({ i64, i8* }* %3622, i64 %3624)
  %3625 = load i64, i64* %3592
  %3626 = add i64 %3625, 1
  store i64 %3626, i64* %3592
  br label %while_cond946
while_end948:
  %3627 = call { i64, i8* }* @nyx_array_new_ptr()
  %3628 = load { i64, i8* }*, { i64, i8* }** %3585
  %3629 = bitcast { i64, i8* }* %3628 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %3627, i8* %3629)
  %3630 = load { i64, i8* }*, { i64, i8* }** %3587
  %3631 = bitcast { i64, i8* }* %3630 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %3627, i8* %3631)
  %3632 = load { i64, i8* }*, { i64, i8* }** %3589
  %3633 = bitcast { i64, i8* }* %3632 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %3627, i8* %3633)
  %3634 = load { i64, i8* }*, { i64, i8* }** %3591
  %3635 = bitcast { i64, i8* }* %3634 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %3627, i8* %3635)
  ret { i64, i8* }* %3627
}

define { i64, i8* }* @state_join(
{ i64, i8* }* %a.param, { i64, i8* }* %b.param) {
  %a.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %a.param, { i64, i8* }** %a.ptr
  %b.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %b.param, { i64, i8* }** %b.ptr
  %3636 = load { i64, i8* }*, { i64, i8* }** %a.ptr
  %3637 = call { i64, i8* }* @state_copy({ i64, i8* }* %3636)
  %3638 = alloca { i64, i8* }*
  store { i64, i8* }* %3637, { i64, i8* }** %3638
  %3639 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %3640 = call i64 @nyx_array_get({ i64, i8* }* %3639, i64 0)
  %3641 = inttoptr i64 %3640 to { i64, i8* }*
  %3642 = alloca { i64, i8* }*
  store { i64, i8* }* %3641, { i64, i8* }** %3642
  %3643 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %3644 = call i64 @nyx_array_get({ i64, i8* }* %3643, i64 1)
  %3645 = inttoptr i64 %3644 to { i64, i8* }*
  %3646 = alloca { i64, i8* }*
  store { i64, i8* }* %3645, { i64, i8* }** %3646
  %3647 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %3648 = call i64 @nyx_array_get({ i64, i8* }* %3647, i64 2)
  %3649 = inttoptr i64 %3648 to { i64, i8* }*
  %3650 = alloca { i64, i8* }*
  store { i64, i8* }* %3649, { i64, i8* }** %3650
  %3651 = alloca i64
  store i64 0, i64* %3651
  br label %while_cond949
while_cond949:
  %3652 = load i64, i64* %3651
  %3653 = load { i64, i8* }*, { i64, i8* }** %3642
  %3654 = call i64 @nyx_array_length({ i64, i8* }* %3653)
  %3655 = icmp slt i64 %3652, %3654
  br i1 %3655, label %while_body950, label %while_end951
while_body950:
  %3656 = load { i64, i8* }*, { i64, i8* }** %3642
  %3657 = load i64, i64* %3651
  %3658 = call i64 @nyx_array_get({ i64, i8* }* %3656, i64 %3657)
  %3659 = inttoptr i64 %3658 to %nyx_string*
  %3660 = alloca %nyx_string*
  store %nyx_string* %3659, %nyx_string** %3660
  %3661 = load { i64, i8* }*, { i64, i8* }** %3638
  %3662 = load %nyx_string*, %nyx_string** %3660
  %3663 = call i64 @place_ensure({ i64, i8* }* %3661, %nyx_string* %3662)
  %3664 = load i64, i64* %3651
  %3665 = add i64 %3664, 1
  store i64 %3665, i64* %3651
  br label %while_cond949
while_end951:
  %3666 = load { i64, i8* }*, { i64, i8* }** %3638
  %3667 = call i64 @nyx_array_get({ i64, i8* }* %3666, i64 0)
  %3668 = inttoptr i64 %3667 to { i64, i8* }*
  %3669 = alloca { i64, i8* }*
  store { i64, i8* }* %3668, { i64, i8* }** %3669
  %3670 = load { i64, i8* }*, { i64, i8* }** %3638
  %3671 = call i64 @nyx_array_get({ i64, i8* }* %3670, i64 1)
  %3672 = inttoptr i64 %3671 to { i64, i8* }*
  %3673 = alloca { i64, i8* }*
  store { i64, i8* }* %3672, { i64, i8* }** %3673
  %3674 = load { i64, i8* }*, { i64, i8* }** %3638
  %3675 = call i64 @nyx_array_get({ i64, i8* }* %3674, i64 2)
  %3676 = inttoptr i64 %3675 to { i64, i8* }*
  %3677 = alloca { i64, i8* }*
  store { i64, i8* }* %3676, { i64, i8* }** %3677
  %3678 = load { i64, i8* }*, { i64, i8* }** %3638
  %3679 = call i64 @nyx_array_get({ i64, i8* }* %3678, i64 3)
  %3680 = inttoptr i64 %3679 to { i64, i8* }*
  %3681 = alloca { i64, i8* }*
  store { i64, i8* }* %3680, { i64, i8* }** %3681
  %3682 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %3683 = call i64 @nyx_array_get({ i64, i8* }* %3682, i64 3)
  %3684 = inttoptr i64 %3683 to { i64, i8* }*
  %3685 = alloca { i64, i8* }*
  store { i64, i8* }* %3684, { i64, i8* }** %3685
  %3686 = alloca i64
  store i64 0, i64* %3686
  br label %while_cond952
while_cond952:
  %3687 = load i64, i64* %3686
  %3688 = load { i64, i8* }*, { i64, i8* }** %3669
  %3689 = call i64 @nyx_array_length({ i64, i8* }* %3688)
  %3690 = icmp slt i64 %3687, %3689
  br i1 %3690, label %while_body953, label %while_end954
while_body953:
  %3691 = load { i64, i8* }*, { i64, i8* }** %3669
  %3692 = load i64, i64* %3686
  %3693 = call i64 @nyx_array_get({ i64, i8* }* %3691, i64 %3692)
  %3694 = inttoptr i64 %3693 to %nyx_string*
  %3695 = alloca %nyx_string*
  store %nyx_string* %3694, %nyx_string** %3695
  %3696 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %3697 = load %nyx_string*, %nyx_string** %3695
  %3698 = call i64 @place_index({ i64, i8* }* %3696, %nyx_string* %3697)
  %3699 = alloca i64
  store i64 %3698, i64* %3699
  %3700 = alloca i64
  store i64 0, i64* %3700
  %3701 = alloca i64
  store i64 0, i64* %3701
  %3702 = load i64, i64* %3699
  %3703 = icmp sge i64 %3702, 0
  br i1 %3703, label %then955, label %else956
then955:
  %3704 = load { i64, i8* }*, { i64, i8* }** %3646
  %3705 = load i64, i64* %3699
  %3706 = call i64 @nyx_array_get({ i64, i8* }* %3704, i64 %3705)
  store i64 %3706, i64* %3700
  %3707 = load { i64, i8* }*, { i64, i8* }** %3650
  %3708 = load i64, i64* %3699
  %3709 = call i64 @nyx_array_get({ i64, i8* }* %3707, i64 %3708)
  store i64 %3709, i64* %3701
  br label %merge957
else956:
  br label %merge957
merge957:
  %3710 = load { i64, i8* }*, { i64, i8* }** %3673
  %3711 = load i64, i64* %3686
  %3712 = call i64 @nyx_array_get({ i64, i8* }* %3710, i64 %3711)
  %3713 = alloca i64
  store i64 %3712, i64* %3713
  %3714 = load i64, i64* %3713
  %3715 = load i64, i64* %3700
  %3716 = icmp sge i64 %3714, %3715
  br i1 %3716, label %then958, label %else959
then958:
  %3717 = load { i64, i8* }*, { i64, i8* }** %3673
  %3718 = load i64, i64* %3686
  %3719 = load i64, i64* %3713
  call void @nyx_array_set({ i64, i8* }* %3717, i64 %3718, i64 %3719)
  br label %merge960
else959:
  %3720 = load { i64, i8* }*, { i64, i8* }** %3673
  %3721 = load i64, i64* %3686
  %3722 = load i64, i64* %3700
  call void @nyx_array_set({ i64, i8* }* %3720, i64 %3721, i64 %3722)
  br label %merge960
merge960:
  %3723 = load { i64, i8* }*, { i64, i8* }** %3677
  %3724 = load i64, i64* %3686
  %3725 = call i64 @nyx_array_get({ i64, i8* }* %3723, i64 %3724)
  %3726 = alloca i64
  store i64 %3725, i64* %3726
  %3727 = load i64, i64* %3701
  %3728 = load i64, i64* %3726
  %3729 = icmp sgt i64 %3727, %3728
  br i1 %3729, label %then961, label %else962
then961:
  %3730 = load { i64, i8* }*, { i64, i8* }** %3677
  %3731 = load i64, i64* %3686
  %3732 = load i64, i64* %3701
  call void @nyx_array_set({ i64, i8* }* %3730, i64 %3731, i64 %3732)
  br label %merge963
else962:
  br label %merge963
merge963:
  %3733 = getelementptr [1 x i8], [1 x i8]* @.str256, i32 0, i32 0
  %3734 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str256.c, i8* %3733)
  %3735 = alloca %nyx_string*
  store %nyx_string* %3734, %nyx_string** %3735
  %3736 = load i64, i64* %3699
  %3737 = icmp sge i64 %3736, 0
  br i1 %3737, label %then964, label %else965
then964:
  %3738 = load { i64, i8* }*, { i64, i8* }** %3685
  %3739 = load i64, i64* %3699
  %3740 = call i64 @nyx_array_get({ i64, i8* }* %3738, i64 %3739)
  %3741 = inttoptr i64 %3740 to %nyx_string*
  store %nyx_string* %3741, %nyx_string** %3735
  br label %merge966
else965:
  br label %merge966
merge966:
  %3742 = load { i64, i8* }*, { i64, i8* }** %3681
  %3743 = load i64, i64* %3686
  %3744 = call i64 @nyx_array_get({ i64, i8* }* %3742, i64 %3743)
  %3745 = inttoptr i64 %3744 to %nyx_string*
  %3746 = alloca %nyx_string*
  store %nyx_string* %3745, %nyx_string** %3746
  %3747 = load %nyx_string*, %nyx_string** %3746
  %3748 = getelementptr [1 x i8], [1 x i8]* @.str257, i32 0, i32 0
  %3749 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str257.c, i8* %3748)
  %3750 = call i1 @nyx_string_equals(%nyx_string* %3747, %nyx_string* %3749)
  br i1 %3750, label %then967, label %else968
then967:
  %3751 = load { i64, i8* }*, { i64, i8* }** %3681
  %3752 = load i64, i64* %3686
  %3753 = load %nyx_string*, %nyx_string** %3735
  %3754 = ptrtoint %nyx_string* %3753 to i64
  call void @nyx_array_set({ i64, i8* }* %3751, i64 %3752, i64 %3754)
  br label %merge969
else968:
  %3755 = load %nyx_string*, %nyx_string** %3735
  %3756 = getelementptr [1 x i8], [1 x i8]* @.str258, i32 0, i32 0
  %3757 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str258.c, i8* %3756)
  %3758 = call i1 @nyx_string_equals(%nyx_string* %3755, %nyx_string* %3757)
  %3759 = xor i1 %3758, true
  br i1 %3759, label %then970, label %else971
then970:
  %3760 = load %nyx_string*, %nyx_string** %3746
  %3761 = call i1 @reforigin_is_soft(%nyx_string* %3760)
  br i1 %3761, label %then973, label %else974
then973:
  %3762 = load %nyx_string*, %nyx_string** %3735
  %3763 = call i1 @reforigin_is_soft(%nyx_string* %3762)
  %3764 = xor i1 %3763, true
  br i1 %3764, label %then976, label %else977
then976:
  %3765 = load { i64, i8* }*, { i64, i8* }** %3681
  %3766 = load i64, i64* %3686
  %3767 = load %nyx_string*, %nyx_string** %3735
  %3768 = ptrtoint %nyx_string* %3767 to i64
  call void @nyx_array_set({ i64, i8* }* %3765, i64 %3766, i64 %3768)
  br label %merge978
else977:
  br label %merge978
merge978:
  br label %merge975
else974:
  br label %merge975
merge975:
  br label %merge972
else971:
  br label %merge972
merge972:
  br label %merge969
merge969:
  %3769 = load i64, i64* %3686
  %3770 = add i64 %3769, 1
  store i64 %3770, i64* %3686
  br label %while_cond952
while_end954:
  %3771 = load { i64, i8* }*, { i64, i8* }** %3638
  ret { i64, i8* }* %3771
}

define internal i64 @state_merge_from(
{ i64, i8* }* %dst.param, { i64, i8* }* %src.param) {
  %dst.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %dst.param, { i64, i8* }** %dst.ptr
  %src.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %src.param, { i64, i8* }** %src.ptr
  %3772 = load { i64, i8* }*, { i64, i8* }** %dst.ptr
  %3773 = call i64 @nyx_array_get({ i64, i8* }* %3772, i64 0)
  %3774 = inttoptr i64 %3773 to { i64, i8* }*
  %3775 = alloca { i64, i8* }*
  store { i64, i8* }* %3774, { i64, i8* }** %3775
  %3776 = load { i64, i8* }*, { i64, i8* }** %dst.ptr
  %3777 = call i64 @nyx_array_get({ i64, i8* }* %3776, i64 1)
  %3778 = inttoptr i64 %3777 to { i64, i8* }*
  %3779 = alloca { i64, i8* }*
  store { i64, i8* }* %3778, { i64, i8* }** %3779
  %3780 = load { i64, i8* }*, { i64, i8* }** %dst.ptr
  %3781 = call i64 @nyx_array_get({ i64, i8* }* %3780, i64 3)
  %3782 = inttoptr i64 %3781 to { i64, i8* }*
  %3783 = alloca { i64, i8* }*
  store { i64, i8* }* %3782, { i64, i8* }** %3783
  %3784 = load { i64, i8* }*, { i64, i8* }** %src.ptr
  %3785 = call i64 @nyx_array_get({ i64, i8* }* %3784, i64 1)
  %3786 = inttoptr i64 %3785 to { i64, i8* }*
  %3787 = alloca { i64, i8* }*
  store { i64, i8* }* %3786, { i64, i8* }** %3787
  %3788 = load { i64, i8* }*, { i64, i8* }** %src.ptr
  %3789 = call i64 @nyx_array_get({ i64, i8* }* %3788, i64 3)
  %3790 = inttoptr i64 %3789 to { i64, i8* }*
  %3791 = alloca { i64, i8* }*
  store { i64, i8* }* %3790, { i64, i8* }** %3791
  %3792 = load { i64, i8* }*, { i64, i8* }** %3775
  %3793 = call i64 @nyx_array_length({ i64, i8* }* %3792)
  %3794 = alloca i64
  store i64 %3793, i64* %3794
  %3795 = alloca i64
  store i64 0, i64* %3795
  br label %while_cond979
while_cond979:
  %3796 = load i64, i64* %3795
  %3797 = load i64, i64* %3794
  %3798 = icmp slt i64 %3796, %3797
  br i1 %3798, label %while_body980, label %while_end981
while_body980:
  %3799 = load { i64, i8* }*, { i64, i8* }** %3779
  %3800 = load i64, i64* %3795
  %3801 = load { i64, i8* }*, { i64, i8* }** %3787
  %3802 = load i64, i64* %3795
  %3803 = call i64 @nyx_array_get({ i64, i8* }* %3801, i64 %3802)
  call void @nyx_array_set({ i64, i8* }* %3799, i64 %3800, i64 %3803)
  %3804 = load { i64, i8* }*, { i64, i8* }** %3783
  %3805 = load i64, i64* %3795
  %3806 = load { i64, i8* }*, { i64, i8* }** %3791
  %3807 = load i64, i64* %3795
  %3808 = call i64 @nyx_array_get({ i64, i8* }* %3806, i64 %3807)
  call void @nyx_array_set({ i64, i8* }* %3804, i64 %3805, i64 %3808)
  %3809 = load i64, i64* %3795
  %3810 = add i64 %3809, 1
  store i64 %3810, i64* %3795
  br label %while_cond979
while_end981:
  ret i64 0
}


attributes #0 = { returns_twice }

