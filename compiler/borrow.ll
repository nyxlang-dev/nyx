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
  %54 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str0.c, i8* %53, i64 6)
  %55 = call i1 @nyx_string_equals(%nyx_string* %52, %nyx_string* %54)
  br i1 %55, label %then0, label %else1
then0:
  ret i1 1
else1:
  br label %merge2
merge2:
  %56 = load %nyx_string*, %nyx_string** %ann.ptr
  %57 = getelementptr [6 x i8], [6 x i8]* @.str1, i32 0, i32 0
  %58 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1.c, i8* %57, i64 5)
  %59 = call i1 @nyx_string_equals(%nyx_string* %56, %nyx_string* %58)
  br i1 %59, label %then3, label %else4
then3:
  ret i1 1
else4:
  br label %merge5
merge5:
  %60 = load %nyx_string*, %nyx_string** %ann.ptr
  %61 = getelementptr [4 x i8], [4 x i8]* @.str2, i32 0, i32 0
  %62 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str2.c, i8* %61, i64 3)
  %63 = call i1 @nyx_string_equals(%nyx_string* %60, %nyx_string* %62)
  br i1 %63, label %then6, label %else7
then6:
  ret i1 1
else7:
  br label %merge8
merge8:
  %64 = load %nyx_string*, %nyx_string** %ann.ptr
  %65 = getelementptr [7 x i8], [7 x i8]* @.str3, i32 0, i32 0
  %66 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str3.c, i8* %65, i64 6)
  %67 = call i1 @nyx_string_equals(%nyx_string* %64, %nyx_string* %66)
  br i1 %67, label %then9, label %else10
then9:
  ret i1 1
else10:
  br label %merge11
merge11:
  %68 = load %nyx_string*, %nyx_string** %ann.ptr
  %69 = getelementptr [7 x i8], [7 x i8]* @.str4, i32 0, i32 0
  %70 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str4.c, i8* %69, i64 6)
  %71 = call i1 @nyx_string_equals(%nyx_string* %68, %nyx_string* %70)
  br i1 %71, label %then12, label %else13
then12:
  ret i1 1
else13:
  br label %merge14
merge14:
  %72 = load %nyx_string*, %nyx_string** %ann.ptr
  %73 = getelementptr [14 x i8], [14 x i8]* @.str5, i32 0, i32 0
  %74 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str5.c, i8* %73, i64 13)
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
  %84 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str6.c, i8* %83, i64 6)
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
  %91 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str7.c, i8* %90, i64 4)
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
  %98 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str8.c, i8* %97, i64 7)
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
  %105 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str9.c, i8* %104, i64 7)
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
{ i64, i8* }* %affine_names.param, i8* %sigs.param) {
  %affine_names.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %affine_names.param, { i64, i8* }** %affine_names.ptr
  %sigs.ptr = alloca i8*
  store i8* %sigs.param, i8** %sigs.ptr
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
  %118 = load i8*, i8** %sigs.ptr
  call void @nyx_array_push_ptr({ i64, i8* }* %107, i8* %118)
  %119 = call { i64, i8* }* @nyx_array_new_ptr()
  %120 = bitcast { i64, i8* }* %119 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %107, i8* %120)
  %121 = call { i64, i8* }* @nyx_array_new_ptr()
  %122 = bitcast { i64, i8* }* %121 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %107, i8* %122)
  ret { i64, i8* }* %107
}

define internal i64 @tm_mark_fn(
{ i64, i8* }* %tmap.param) {
  %tmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %123 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %124 = call i64 @nyx_array_get({ i64, i8* }* %123, i64 7)
  %125 = inttoptr i64 %124 to { i64, i8* }*
  %126 = alloca { i64, i8* }*
  store { i64, i8* }* %125, { i64, i8* }** %126
  %127 = load { i64, i8* }*, { i64, i8* }** %126
  %128 = getelementptr [3 x i8], [3 x i8]* @.str10, i32 0, i32 0
  %129 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str10.c, i8* %128, i64 2)
  %130 = ptrtoint %nyx_string* %129 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %127, i64 %130, i64 2)
  ret i64 0
}

define internal i1 @tm_is_fn_tmap(
{ i64, i8* }* %tmap.param) {
  %tmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %131 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %132 = call i64 @nyx_array_get({ i64, i8* }* %131, i64 7)
  %133 = inttoptr i64 %132 to { i64, i8* }*
  %134 = alloca { i64, i8* }*
  store { i64, i8* }* %133, { i64, i8* }** %134
  %135 = load { i64, i8* }*, { i64, i8* }** %134
  %136 = call i64 @nyx_array_length({ i64, i8* }* %135)
  %137 = icmp sgt i64 %136, 0
  ret i1 %137
}

define internal { i64, i8* }* @tm_affine_names(
{ i64, i8* }* %tmap.param) {
  %tmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %138 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %139 = call i64 @nyx_array_get({ i64, i8* }* %138, i64 2)
  %140 = inttoptr i64 %139 to { i64, i8* }*
  ret { i64, i8* }* %140
}

define internal i8* @tm_sigs(
{ i64, i8* }* %tmap.param) {
  %tmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %141 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %142 = call i64 @nyx_array_get({ i64, i8* }* %141, i64 5)
  %143 = inttoptr i64 %142 to i8*
  ret i8* %143
}

define internal i1 @tm_type_is_affine(
{ i64, i8* }* %tmap.param, %nyx_string* %ann.param) {
  %tmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %ann.ptr = alloca %nyx_string*
  store %nyx_string* %ann.param, %nyx_string** %ann.ptr
  %144 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %145 = call i64 @nyx_array_get({ i64, i8* }* %144, i64 2)
  %146 = inttoptr i64 %145 to { i64, i8* }*
  %147 = alloca { i64, i8* }*
  store { i64, i8* }* %146, { i64, i8* }** %147
  %148 = load %nyx_string*, %nyx_string** %ann.ptr
  %149 = alloca %nyx_string*
  store %nyx_string* %148, %nyx_string** %149
  %150 = load %nyx_string*, %nyx_string** %ann.ptr
  %151 = getelementptr [2 x i8], [2 x i8]* @.str11, i32 0, i32 0
  %152 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str11.c, i8* %151, i64 1)
  %153 = call i64 @nyx_string_index_of(%nyx_string* %150, %nyx_string* %152)
  %154 = alloca i64
  store i64 %153, i64* %154
  %155 = load i64, i64* %154
  %156 = icmp sge i64 %155, 0
  br i1 %156, label %then42, label %else43
then42:
  %157 = load %nyx_string*, %nyx_string** %ann.ptr
  %158 = load i64, i64* %154
  %159 = call %nyx_string* @nyx_string_substring(%nyx_string* %157, i64 0, i64 %158)
  store %nyx_string* %159, %nyx_string** %149
  br label %merge44
else43:
  br label %merge44
merge44:
  %160 = alloca i64
  store i64 0, i64* %160
  %161 = call i8* @llvm.stacksave()
  br label %while_cond45
while_cond45:
  %162 = load i64, i64* %160
  %163 = load { i64, i8* }*, { i64, i8* }** %147
  %164 = call i64 @nyx_array_length({ i64, i8* }* %163)
  %165 = icmp slt i64 %162, %164
  br i1 %165, label %while_body46, label %while_end47
while_body46:
  call void @llvm.stackrestore(i8* %161)
  %166 = load { i64, i8* }*, { i64, i8* }** %147
  %167 = load i64, i64* %160
  %168 = call i64 @nyx_array_get_checked({ i64, i8* }* %166, i64 %167, i64 2)
  %169 = inttoptr i64 %168 to %nyx_string*
  %170 = alloca %nyx_string*
  store %nyx_string* %169, %nyx_string** %170
  %171 = load %nyx_string*, %nyx_string** %170
  %172 = load %nyx_string*, %nyx_string** %149
  %173 = call i1 @nyx_string_equals(%nyx_string* %171, %nyx_string* %172)
  br i1 %173, label %then48, label %else49
then48:
  ret i1 1
else49:
  br label %merge50
merge50:
  %174 = load i64, i64* %160
  %175 = add i64 %174, 1
  store i64 %175, i64* %160
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
  %176 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %177 = load %nyx_string*, %nyx_string** %ann.ptr
  %178 = call i1 @tm_type_is_affine({ i64, i8* }* %176, %nyx_string* %177)
  br i1 %178, label %then51, label %else52
then51:
  ret i64 2
else52:
  br label %merge53
merge53:
  %179 = load %nyx_string*, %nyx_string** %ann.ptr
  %180 = call i1 @ann_is_move_type(%nyx_string* %179)
  br i1 %180, label %then54, label %else55
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
  %181 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %182 = call i64 @nyx_array_get({ i64, i8* }* %181, i64 0)
  %183 = inttoptr i64 %182 to { i64, i8* }*
  %184 = alloca { i64, i8* }*
  store { i64, i8* }* %183, { i64, i8* }** %184
  %185 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %186 = call i64 @nyx_array_get({ i64, i8* }* %185, i64 1)
  %187 = inttoptr i64 %186 to { i64, i8* }*
  %188 = alloca { i64, i8* }*
  store { i64, i8* }* %187, { i64, i8* }** %188
  %189 = alloca i1
  store i1 0, i1* %189
  %190 = alloca i64
  store i64 0, i64* %190
  %191 = call i8* @llvm.stacksave()
  br label %while_cond57
while_cond57:
  %192 = load i64, i64* %190
  %193 = load { i64, i8* }*, { i64, i8* }** %184
  %194 = call i64 @nyx_array_length({ i64, i8* }* %193)
  %195 = icmp slt i64 %192, %194
  br i1 %195, label %while_body58, label %while_end59
while_body58:
  call void @llvm.stackrestore(i8* %191)
  %196 = load { i64, i8* }*, { i64, i8* }** %184
  %197 = load i64, i64* %190
  %198 = call i64 @nyx_array_get_checked({ i64, i8* }* %196, i64 %197, i64 2)
  %199 = inttoptr i64 %198 to %nyx_string*
  %200 = alloca %nyx_string*
  store %nyx_string* %199, %nyx_string** %200
  %201 = load %nyx_string*, %nyx_string** %200
  %202 = load %nyx_string*, %nyx_string** %name.ptr
  %203 = call i1 @nyx_string_equals(%nyx_string* %201, %nyx_string* %202)
  br i1 %203, label %then60, label %else61
then60:
  %204 = load { i64, i8* }*, { i64, i8* }** %188
  %205 = load i64, i64* %190
  %206 = load i64, i64* %kind.ptr
  call void @nyx_array_set({ i64, i8* }* %204, i64 %205, i64 %206)
  store i1 1, i1* %189
  br label %merge62
else61:
  br label %merge62
merge62:
  %207 = load i64, i64* %190
  %208 = add i64 %207, 1
  store i64 %208, i64* %190
  br label %while_cond57
while_end59:
  %209 = load i1, i1* %189
  %210 = xor i1 %209, true
  br i1 %210, label %then63, label %else64
then63:
  %211 = load { i64, i8* }*, { i64, i8* }** %184
  %212 = load %nyx_string*, %nyx_string** %name.ptr
  %213 = ptrtoint %nyx_string* %212 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %211, i64 %213, i64 2)
  %214 = load { i64, i8* }*, { i64, i8* }** %188
  %215 = load i64, i64* %kind.ptr
  call void @nyx_array_push({ i64, i8* }* %214, i64 %215)
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
  %216 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %217 = call i64 @nyx_array_get({ i64, i8* }* %216, i64 0)
  %218 = inttoptr i64 %217 to { i64, i8* }*
  %219 = alloca { i64, i8* }*
  store { i64, i8* }* %218, { i64, i8* }** %219
  %220 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %221 = call i64 @nyx_array_get({ i64, i8* }* %220, i64 1)
  %222 = inttoptr i64 %221 to { i64, i8* }*
  %223 = alloca { i64, i8* }*
  store { i64, i8* }* %222, { i64, i8* }** %223
  %224 = alloca i64
  store i64 0, i64* %224
  %225 = call i8* @llvm.stacksave()
  br label %while_cond66
while_cond66:
  %226 = load i64, i64* %224
  %227 = load { i64, i8* }*, { i64, i8* }** %219
  %228 = call i64 @nyx_array_length({ i64, i8* }* %227)
  %229 = icmp slt i64 %226, %228
  br i1 %229, label %while_body67, label %while_end68
while_body67:
  call void @llvm.stackrestore(i8* %225)
  %230 = load { i64, i8* }*, { i64, i8* }** %219
  %231 = load i64, i64* %224
  %232 = call i64 @nyx_array_get_checked({ i64, i8* }* %230, i64 %231, i64 2)
  %233 = inttoptr i64 %232 to %nyx_string*
  %234 = alloca %nyx_string*
  store %nyx_string* %233, %nyx_string** %234
  %235 = load %nyx_string*, %nyx_string** %234
  %236 = load %nyx_string*, %nyx_string** %name.ptr
  %237 = call i1 @nyx_string_equals(%nyx_string* %235, %nyx_string* %236)
  br i1 %237, label %then69, label %else70
then69:
  %238 = load { i64, i8* }*, { i64, i8* }** %223
  %239 = load i64, i64* %224
  %240 = call i64 @nyx_array_get({ i64, i8* }* %238, i64 %239)
  ret i64 %240
else70:
  br label %merge71
merge71:
  %241 = load i64, i64* %224
  %242 = add i64 %241, 1
  store i64 %242, i64* %224
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
  %243 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %244 = load %nyx_string*, %nyx_string** %name.ptr
  %245 = call i64 @tm_move_kind({ i64, i8* }* %243, %nyx_string* %244)
  %246 = icmp sgt i64 %245, 0
  ret i1 %246
}

define internal i64 @tm_add_local(
{ i64, i8* }* %tmap.param, %nyx_string* %name.param) {
  %tmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %247 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %248 = call i64 @nyx_array_get({ i64, i8* }* %247, i64 3)
  %249 = inttoptr i64 %248 to { i64, i8* }*
  %250 = alloca { i64, i8* }*
  store { i64, i8* }* %249, { i64, i8* }** %250
  %251 = alloca i64
  store i64 0, i64* %251
  %252 = call i8* @llvm.stacksave()
  br label %while_cond72
while_cond72:
  %253 = load i64, i64* %251
  %254 = load { i64, i8* }*, { i64, i8* }** %250
  %255 = call i64 @nyx_array_length({ i64, i8* }* %254)
  %256 = icmp slt i64 %253, %255
  br i1 %256, label %while_body73, label %while_end74
while_body73:
  call void @llvm.stackrestore(i8* %252)
  %257 = load { i64, i8* }*, { i64, i8* }** %250
  %258 = load i64, i64* %251
  %259 = call i64 @nyx_array_get_checked({ i64, i8* }* %257, i64 %258, i64 2)
  %260 = inttoptr i64 %259 to %nyx_string*
  %261 = alloca %nyx_string*
  store %nyx_string* %260, %nyx_string** %261
  %262 = load %nyx_string*, %nyx_string** %261
  %263 = load %nyx_string*, %nyx_string** %name.ptr
  %264 = call i1 @nyx_string_equals(%nyx_string* %262, %nyx_string* %263)
  br i1 %264, label %then75, label %else76
then75:
  ret i64 0
else76:
  br label %merge77
merge77:
  %265 = load i64, i64* %251
  %266 = add i64 %265, 1
  store i64 %266, i64* %251
  br label %while_cond72
while_end74:
  %267 = load { i64, i8* }*, { i64, i8* }** %250
  %268 = load %nyx_string*, %nyx_string** %name.ptr
  %269 = ptrtoint %nyx_string* %268 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %267, i64 %269, i64 2)
  ret i64 0
}

define internal i1 @tm_is_local(
{ i64, i8* }* %tmap.param, %nyx_string* %name.param) {
  %tmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %270 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %271 = call i64 @nyx_array_get({ i64, i8* }* %270, i64 3)
  %272 = inttoptr i64 %271 to { i64, i8* }*
  %273 = alloca { i64, i8* }*
  store { i64, i8* }* %272, { i64, i8* }** %273
  %274 = alloca i64
  store i64 0, i64* %274
  %275 = call i8* @llvm.stacksave()
  br label %while_cond78
while_cond78:
  %276 = load i64, i64* %274
  %277 = load { i64, i8* }*, { i64, i8* }** %273
  %278 = call i64 @nyx_array_length({ i64, i8* }* %277)
  %279 = icmp slt i64 %276, %278
  br i1 %279, label %while_body79, label %while_end80
while_body79:
  call void @llvm.stackrestore(i8* %275)
  %280 = load { i64, i8* }*, { i64, i8* }** %273
  %281 = load i64, i64* %274
  %282 = call i64 @nyx_array_get_checked({ i64, i8* }* %280, i64 %281, i64 2)
  %283 = inttoptr i64 %282 to %nyx_string*
  %284 = alloca %nyx_string*
  store %nyx_string* %283, %nyx_string** %284
  %285 = load %nyx_string*, %nyx_string** %284
  %286 = load %nyx_string*, %nyx_string** %name.ptr
  %287 = call i1 @nyx_string_equals(%nyx_string* %285, %nyx_string* %286)
  br i1 %287, label %then81, label %else82
then81:
  ret i1 1
else82:
  br label %merge83
merge83:
  %288 = load i64, i64* %274
  %289 = add i64 %288, 1
  store i64 %289, i64* %274
  br label %while_cond78
while_end80:
  ret i1 0
}

define internal i64 @tm_add_capture(
{ i64, i8* }* %tmap.param, %nyx_string* %name.param) {
  %tmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %290 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %291 = call i64 @nyx_array_get({ i64, i8* }* %290, i64 6)
  %292 = inttoptr i64 %291 to { i64, i8* }*
  %293 = alloca { i64, i8* }*
  store { i64, i8* }* %292, { i64, i8* }** %293
  %294 = alloca i64
  store i64 0, i64* %294
  %295 = call i8* @llvm.stacksave()
  br label %while_cond84
while_cond84:
  %296 = load i64, i64* %294
  %297 = load { i64, i8* }*, { i64, i8* }** %293
  %298 = call i64 @nyx_array_length({ i64, i8* }* %297)
  %299 = icmp slt i64 %296, %298
  br i1 %299, label %while_body85, label %while_end86
while_body85:
  call void @llvm.stackrestore(i8* %295)
  %300 = load { i64, i8* }*, { i64, i8* }** %293
  %301 = load i64, i64* %294
  %302 = call i64 @nyx_array_get_checked({ i64, i8* }* %300, i64 %301, i64 2)
  %303 = inttoptr i64 %302 to %nyx_string*
  %304 = alloca %nyx_string*
  store %nyx_string* %303, %nyx_string** %304
  %305 = load %nyx_string*, %nyx_string** %304
  %306 = load %nyx_string*, %nyx_string** %name.ptr
  %307 = call i1 @nyx_string_equals(%nyx_string* %305, %nyx_string* %306)
  br i1 %307, label %then87, label %else88
then87:
  ret i64 0
else88:
  br label %merge89
merge89:
  %308 = load i64, i64* %294
  %309 = add i64 %308, 1
  store i64 %309, i64* %294
  br label %while_cond84
while_end86:
  %310 = load { i64, i8* }*, { i64, i8* }** %293
  %311 = load %nyx_string*, %nyx_string** %name.ptr
  %312 = ptrtoint %nyx_string* %311 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %310, i64 %312, i64 2)
  ret i64 0
}

define internal i1 @tm_is_capture(
{ i64, i8* }* %tmap.param, %nyx_string* %name.param) {
  %tmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %313 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %314 = call i64 @nyx_array_get({ i64, i8* }* %313, i64 6)
  %315 = inttoptr i64 %314 to { i64, i8* }*
  %316 = alloca { i64, i8* }*
  store { i64, i8* }* %315, { i64, i8* }** %316
  %317 = alloca i64
  store i64 0, i64* %317
  %318 = call i8* @llvm.stacksave()
  br label %while_cond90
while_cond90:
  %319 = load i64, i64* %317
  %320 = load { i64, i8* }*, { i64, i8* }** %316
  %321 = call i64 @nyx_array_length({ i64, i8* }* %320)
  %322 = icmp slt i64 %319, %321
  br i1 %322, label %while_body91, label %while_end92
while_body91:
  call void @llvm.stackrestore(i8* %318)
  %323 = load { i64, i8* }*, { i64, i8* }** %316
  %324 = load i64, i64* %317
  %325 = call i64 @nyx_array_get_checked({ i64, i8* }* %323, i64 %324, i64 2)
  %326 = inttoptr i64 %325 to %nyx_string*
  %327 = alloca %nyx_string*
  store %nyx_string* %326, %nyx_string** %327
  %328 = load %nyx_string*, %nyx_string** %327
  %329 = load %nyx_string*, %nyx_string** %name.ptr
  %330 = call i1 @nyx_string_equals(%nyx_string* %328, %nyx_string* %329)
  br i1 %330, label %then93, label %else94
then93:
  ret i1 1
else94:
  br label %merge95
merge95:
  %331 = load i64, i64* %317
  %332 = add i64 %331, 1
  store i64 %332, i64* %317
  br label %while_cond90
while_end92:
  ret i1 0
}

define internal i64 @tm_add_ptr_param(
{ i64, i8* }* %tmap.param, %nyx_string* %name.param) {
  %tmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %333 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %334 = call i64 @nyx_array_get({ i64, i8* }* %333, i64 4)
  %335 = inttoptr i64 %334 to { i64, i8* }*
  %336 = alloca { i64, i8* }*
  store { i64, i8* }* %335, { i64, i8* }** %336
  %337 = alloca i64
  store i64 0, i64* %337
  %338 = call i8* @llvm.stacksave()
  br label %while_cond96
while_cond96:
  %339 = load i64, i64* %337
  %340 = load { i64, i8* }*, { i64, i8* }** %336
  %341 = call i64 @nyx_array_length({ i64, i8* }* %340)
  %342 = icmp slt i64 %339, %341
  br i1 %342, label %while_body97, label %while_end98
while_body97:
  call void @llvm.stackrestore(i8* %338)
  %343 = load { i64, i8* }*, { i64, i8* }** %336
  %344 = load i64, i64* %337
  %345 = call i64 @nyx_array_get_checked({ i64, i8* }* %343, i64 %344, i64 2)
  %346 = inttoptr i64 %345 to %nyx_string*
  %347 = alloca %nyx_string*
  store %nyx_string* %346, %nyx_string** %347
  %348 = load %nyx_string*, %nyx_string** %347
  %349 = load %nyx_string*, %nyx_string** %name.ptr
  %350 = call i1 @nyx_string_equals(%nyx_string* %348, %nyx_string* %349)
  br i1 %350, label %then99, label %else100
then99:
  ret i64 0
else100:
  br label %merge101
merge101:
  %351 = load i64, i64* %337
  %352 = add i64 %351, 1
  store i64 %352, i64* %337
  br label %while_cond96
while_end98:
  %353 = load { i64, i8* }*, { i64, i8* }** %336
  %354 = load %nyx_string*, %nyx_string** %name.ptr
  %355 = ptrtoint %nyx_string* %354 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %353, i64 %355, i64 2)
  ret i64 0
}

define internal i1 @tm_is_ptr_param(
{ i64, i8* }* %tmap.param, %nyx_string* %name.param) {
  %tmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %356 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %357 = call i64 @nyx_array_get({ i64, i8* }* %356, i64 4)
  %358 = inttoptr i64 %357 to { i64, i8* }*
  %359 = alloca { i64, i8* }*
  store { i64, i8* }* %358, { i64, i8* }** %359
  %360 = alloca i64
  store i64 0, i64* %360
  %361 = call i8* @llvm.stacksave()
  br label %while_cond102
while_cond102:
  %362 = load i64, i64* %360
  %363 = load { i64, i8* }*, { i64, i8* }** %359
  %364 = call i64 @nyx_array_length({ i64, i8* }* %363)
  %365 = icmp slt i64 %362, %364
  br i1 %365, label %while_body103, label %while_end104
while_body103:
  call void @llvm.stackrestore(i8* %361)
  %366 = load { i64, i8* }*, { i64, i8* }** %359
  %367 = load i64, i64* %360
  %368 = call i64 @nyx_array_get_checked({ i64, i8* }* %366, i64 %367, i64 2)
  %369 = inttoptr i64 %368 to %nyx_string*
  %370 = alloca %nyx_string*
  store %nyx_string* %369, %nyx_string** %370
  %371 = load %nyx_string*, %nyx_string** %370
  %372 = load %nyx_string*, %nyx_string** %name.ptr
  %373 = call i1 @nyx_string_equals(%nyx_string* %371, %nyx_string* %372)
  br i1 %373, label %then105, label %else106
then105:
  ret i1 1
else106:
  br label %merge107
merge107:
  %374 = load i64, i64* %360
  %375 = add i64 %374, 1
  store i64 %375, i64* %360
  br label %while_cond102
while_end104:
  ret i1 0
}

define internal i64 @bc_inherit_captures(
{ i64, i8* }* %outer.param, { i64, i8* }* %child.param) {
  %outer.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %outer.param, { i64, i8* }** %outer.ptr
  %child.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %child.param, { i64, i8* }** %child.ptr
  %376 = load { i64, i8* }*, { i64, i8* }** %outer.ptr
  %377 = call i1 @tm_is_fn_tmap({ i64, i8* }* %376)
  %378 = xor i1 %377, true
  br i1 %378, label %then108, label %else109
then108:
  ret i64 0
else109:
  br label %merge110
merge110:
  %379 = load { i64, i8* }*, { i64, i8* }** %outer.ptr
  %380 = call i64 @nyx_array_get({ i64, i8* }* %379, i64 3)
  %381 = inttoptr i64 %380 to { i64, i8* }*
  %382 = alloca { i64, i8* }*
  store { i64, i8* }* %381, { i64, i8* }** %382
  %383 = alloca i64
  store i64 0, i64* %383
  %384 = call i8* @llvm.stacksave()
  br label %while_cond111
while_cond111:
  %385 = load i64, i64* %383
  %386 = load { i64, i8* }*, { i64, i8* }** %382
  %387 = call i64 @nyx_array_length({ i64, i8* }* %386)
  %388 = icmp slt i64 %385, %387
  br i1 %388, label %while_body112, label %while_end113
while_body112:
  call void @llvm.stackrestore(i8* %384)
  %389 = load { i64, i8* }*, { i64, i8* }** %382
  %390 = load i64, i64* %383
  %391 = call i64 @nyx_array_get_checked({ i64, i8* }* %389, i64 %390, i64 2)
  %392 = inttoptr i64 %391 to %nyx_string*
  %393 = alloca %nyx_string*
  store %nyx_string* %392, %nyx_string** %393
  %394 = load { i64, i8* }*, { i64, i8* }** %child.ptr
  %395 = load %nyx_string*, %nyx_string** %393
  %396 = call i64 @tm_add_capture({ i64, i8* }* %394, %nyx_string* %395)
  %397 = load i64, i64* %383
  %398 = add i64 %397, 1
  store i64 %398, i64* %383
  br label %while_cond111
while_end113:
  %399 = load { i64, i8* }*, { i64, i8* }** %outer.ptr
  %400 = call i64 @nyx_array_get({ i64, i8* }* %399, i64 6)
  %401 = inttoptr i64 %400 to { i64, i8* }*
  %402 = alloca { i64, i8* }*
  store { i64, i8* }* %401, { i64, i8* }** %402
  %403 = alloca i64
  store i64 0, i64* %403
  %404 = call i8* @llvm.stacksave()
  br label %while_cond114
while_cond114:
  %405 = load i64, i64* %403
  %406 = load { i64, i8* }*, { i64, i8* }** %402
  %407 = call i64 @nyx_array_length({ i64, i8* }* %406)
  %408 = icmp slt i64 %405, %407
  br i1 %408, label %while_body115, label %while_end116
while_body115:
  call void @llvm.stackrestore(i8* %404)
  %409 = load { i64, i8* }*, { i64, i8* }** %402
  %410 = load i64, i64* %403
  %411 = call i64 @nyx_array_get_checked({ i64, i8* }* %409, i64 %410, i64 2)
  %412 = inttoptr i64 %411 to %nyx_string*
  %413 = alloca %nyx_string*
  store %nyx_string* %412, %nyx_string** %413
  %414 = load { i64, i8* }*, { i64, i8* }** %child.ptr
  %415 = load %nyx_string*, %nyx_string** %413
  %416 = call i64 @tm_add_capture({ i64, i8* }* %414, %nyx_string* %415)
  %417 = load i64, i64* %403
  %418 = add i64 %417, 1
  store i64 %418, i64* %403
  br label %while_cond114
while_end116:
  ret i64 0
}

define internal i1 @bc_dest_outlives(
%nyx_string* %root.param, { i64, i8* }* %tmap.param) {
  %root.ptr = alloca %nyx_string*
  store %nyx_string* %root.param, %nyx_string** %root.ptr
  %tmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %419 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %420 = load %nyx_string*, %nyx_string** %root.ptr
  %421 = call i1 @tm_is_ptr_param({ i64, i8* }* %419, %nyx_string* %420)
  br i1 %421, label %then117, label %else118
then117:
  ret i1 1
else118:
  br label %merge119
merge119:
  %422 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %423 = load %nyx_string*, %nyx_string** %root.ptr
  %424 = call i1 @tm_is_local({ i64, i8* }* %422, %nyx_string* %423)
  %425 = xor i1 %424, true
  br i1 %425, label %then120, label %else121
then120:
  %426 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %427 = load %nyx_string*, %nyx_string** %root.ptr
  %428 = call i1 @tm_is_capture({ i64, i8* }* %426, %nyx_string* %427)
  br i1 %428, label %then123, label %else124
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
  store %ASTNode %pattern.param, %ASTNode* %pattern.ptr
  %tmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %429 = getelementptr %ASTNode, %ASTNode* %pattern.ptr, i32 0, i32 0
  %430 = load %nyx_string*, %nyx_string** %429
  %431 = alloca %nyx_string*
  store %nyx_string* %430, %nyx_string** %431
  %432 = getelementptr %ASTNode, %ASTNode* %pattern.ptr, i32 0, i32 1
  %433 = load { i64, i8* }*, { i64, i8* }** %432
  %434 = alloca { i64, i8* }*
  store { i64, i8* }* %433, { i64, i8* }** %434
  %435 = load %nyx_string*, %nyx_string** %431
  %436 = getelementptr [19 x i8], [19 x i8]* @.str12, i32 0, i32 0
  %437 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str12.c, i8* %436, i64 18)
  %438 = call i1 @nyx_string_equals(%nyx_string* %435, %nyx_string* %437)
  br i1 %438, label %then126, label %else127
then126:
  %439 = load { i64, i8* }*, { i64, i8* }** %434
  %440 = call i64 @nyx_array_get_checked({ i64, i8* }* %439, i64 0, i64 2)
  %441 = inttoptr i64 %440 to %nyx_string*
  %442 = alloca %nyx_string*
  store %nyx_string* %441, %nyx_string** %442
  %443 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %444 = load %nyx_string*, %nyx_string** %442
  %445 = call i64 @tm_add_local({ i64, i8* }* %443, %nyx_string* %444)
  ret i64 0
else127:
  br label %merge128
merge128:
  %446 = load %nyx_string*, %nyx_string** %431
  %447 = getelementptr [14 x i8], [14 x i8]* @.str13, i32 0, i32 0
  %448 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str13.c, i8* %447, i64 13)
  %449 = call i1 @nyx_string_equals(%nyx_string* %446, %nyx_string* %448)
  br i1 %449, label %then129, label %else130
then129:
  %450 = load { i64, i8* }*, { i64, i8* }** %434
  %451 = call i64 @nyx_array_get({ i64, i8* }* %450, i64 2)
  %452 = inttoptr i64 %451 to { i64, i8* }*
  %453 = alloca { i64, i8* }*
  store { i64, i8* }* %452, { i64, i8* }** %453
  %454 = alloca i64
  store i64 0, i64* %454
  %455 = call i8* @llvm.stacksave()
  br label %while_cond132
while_cond132:
  %456 = load i64, i64* %454
  %457 = load { i64, i8* }*, { i64, i8* }** %453
  %458 = call i64 @nyx_array_length({ i64, i8* }* %457)
  %459 = icmp slt i64 %456, %458
  br i1 %459, label %while_body133, label %while_end134
while_body133:
  call void @llvm.stackrestore(i8* %455)
  %460 = load { i64, i8* }*, { i64, i8* }** %453
  %461 = load i64, i64* %454
  %462 = call i64 @nyx_array_get_checked({ i64, i8* }* %460, i64 %461, i64 2)
  %463 = inttoptr i64 %462 to %nyx_string*
  %464 = alloca %nyx_string*
  store %nyx_string* %463, %nyx_string** %464
  %465 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %466 = load %nyx_string*, %nyx_string** %464
  %467 = call i64 @tm_add_local({ i64, i8* }* %465, %nyx_string* %466)
  %468 = load i64, i64* %454
  %469 = add i64 %468, 1
  store i64 %469, i64* %454
  br label %while_cond132
while_end134:
  ret i64 0
else130:
  br label %merge131
merge131:
  %470 = load %nyx_string*, %nyx_string** %431
  %471 = getelementptr [15 x i8], [15 x i8]* @.str14, i32 0, i32 0
  %472 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str14.c, i8* %471, i64 14)
  %473 = call i1 @nyx_string_equals(%nyx_string* %470, %nyx_string* %472)
  br i1 %473, label %then135, label %else136
then135:
  %474 = load { i64, i8* }*, { i64, i8* }** %434
  %475 = call i64 @nyx_array_get({ i64, i8* }* %474, i64 1)
  %476 = inttoptr i64 %475 to { i64, i8* }*
  %477 = alloca { i64, i8* }*
  store { i64, i8* }* %476, { i64, i8* }** %477
  %478 = alloca i64
  store i64 0, i64* %478
  %479 = call i8* @llvm.stacksave()
  br label %while_cond138
while_cond138:
  %480 = load i64, i64* %478
  %481 = load { i64, i8* }*, { i64, i8* }** %477
  %482 = call i64 @nyx_array_length({ i64, i8* }* %481)
  %483 = icmp slt i64 %480, %482
  br i1 %483, label %while_body139, label %while_end140
while_body139:
  call void @llvm.stackrestore(i8* %479)
  %484 = load { i64, i8* }*, { i64, i8* }** %477
  %485 = load i64, i64* %478
  %486 = call i64 @nyx_array_get({ i64, i8* }* %484, i64 %485)
  %487 = inttoptr i64 %486 to { i64, i8* }*
  %488 = alloca { i64, i8* }*
  store { i64, i8* }* %487, { i64, i8* }** %488
  %489 = load { i64, i8* }*, { i64, i8* }** %488
  %490 = call i64 @nyx_array_get_checked({ i64, i8* }* %489, i64 1, i64 2)
  %491 = inttoptr i64 %490 to %nyx_string*
  %492 = alloca %nyx_string*
  store %nyx_string* %491, %nyx_string** %492
  %493 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %494 = load %nyx_string*, %nyx_string** %492
  %495 = call i64 @tm_add_local({ i64, i8* }* %493, %nyx_string* %494)
  %496 = load i64, i64* %478
  %497 = add i64 %496, 1
  store i64 %497, i64* %478
  br label %while_cond138
while_end140:
  ret i64 0
else136:
  br label %merge137
merge137:
  %498 = load %nyx_string*, %nyx_string** %431
  %499 = getelementptr [21 x i8], [21 x i8]* @.str15, i32 0, i32 0
  %500 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str15.c, i8* %499, i64 20)
  %501 = call i1 @nyx_string_equals(%nyx_string* %498, %nyx_string* %500)
  br i1 %501, label %then141, label %else142
then141:
  %502 = load { i64, i8* }*, { i64, i8* }** %434
  %503 = call i64 @nyx_array_get({ i64, i8* }* %502, i64 2)
  %504 = inttoptr i64 %503 to { i64, i8* }*
  %505 = alloca { i64, i8* }*
  store { i64, i8* }* %504, { i64, i8* }** %505
  %506 = alloca i64
  store i64 0, i64* %506
  %507 = getelementptr [19 x i8], [19 x i8]* @.str16, i32 0, i32 0
  %508 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str16.c, i8* %507, i64 18)
  %509 = alloca %nyx_string*
  store %nyx_string* %508, %nyx_string** %509
  %510 = getelementptr [14 x i8], [14 x i8]* @.str17, i32 0, i32 0
  %511 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str17.c, i8* %510, i64 13)
  %512 = alloca %nyx_string*
  store %nyx_string* %511, %nyx_string** %512
  %513 = call i8* @llvm.stacksave()
  br label %while_cond144
while_cond144:
  %514 = load i64, i64* %506
  %515 = load { i64, i8* }*, { i64, i8* }** %505
  %516 = call i64 @nyx_array_length({ i64, i8* }* %515)
  %517 = icmp slt i64 %514, %516
  br i1 %517, label %while_body145, label %while_end146
while_body145:
  call void @llvm.stackrestore(i8* %513)
  %518 = load { i64, i8* }*, { i64, i8* }** %505
  %519 = load i64, i64* %506
  %520 = call i64 @nyx_array_get({ i64, i8* }* %518, i64 %519)
  %521 = inttoptr i64 %520 to { i64, i8* }*
  %522 = call i64 @nyx_array_get({ i64, i8* }* %521, i64 0)
  %523 = call i64 @nyx_array_get({ i64, i8* }* %521, i64 1)
  %524 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %521, i64 2)
  %525 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %521, i64 3)
  %526 = inttoptr i64 %522 to %nyx_string*
  %527 = inttoptr i64 %523 to { i64, i8* }*
  %528 = alloca %ASTNode
  %529 = getelementptr inbounds %ASTNode, %ASTNode* %528, i32 0, i32 0
  store %nyx_string* %526, %nyx_string** %529
  %530 = getelementptr inbounds %ASTNode, %ASTNode* %528, i32 0, i32 1
  store { i64, i8* }* %527, { i64, i8* }** %530
  %531 = getelementptr inbounds %ASTNode, %ASTNode* %528, i32 0, i32 2
  store i64 %524, i64* %531
  %532 = getelementptr inbounds %ASTNode, %ASTNode* %528, i32 0, i32 3
  store i64 %525, i64* %532
  %533 = load %ASTNode, %ASTNode* %528
  %534 = alloca %ASTNode
  store %ASTNode %533, %ASTNode* %534
  %535 = getelementptr %ASTNode, %ASTNode* %534, i32 0, i32 0
  %536 = load %nyx_string*, %nyx_string** %535
  %537 = load %nyx_string*, %nyx_string** %509
  %538 = call i1 @nyx_string_equals(%nyx_string* %536, %nyx_string* %537)
  br i1 %538, label %then147, label %else148
then147:
  %539 = getelementptr %ASTNode, %ASTNode* %534, i32 0, i32 1
  %540 = load { i64, i8* }*, { i64, i8* }** %539
  %541 = alloca { i64, i8* }*
  store { i64, i8* }* %540, { i64, i8* }** %541
  %542 = load { i64, i8* }*, { i64, i8* }** %541
  %543 = call i64 @nyx_array_get_checked({ i64, i8* }* %542, i64 0, i64 2)
  %544 = inttoptr i64 %543 to %nyx_string*
  %545 = alloca %nyx_string*
  store %nyx_string* %544, %nyx_string** %545
  %546 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %547 = load %nyx_string*, %nyx_string** %545
  %548 = call i64 @tm_add_local({ i64, i8* }* %546, %nyx_string* %547)
  br label %merge149
else148:
  br label %merge149
merge149:
  %549 = getelementptr %ASTNode, %ASTNode* %534, i32 0, i32 0
  %550 = load %nyx_string*, %nyx_string** %549
  %551 = load %nyx_string*, %nyx_string** %512
  %552 = call i1 @nyx_string_equals(%nyx_string* %550, %nyx_string* %551)
  br i1 %552, label %then150, label %else151
then150:
  %553 = getelementptr %ASTNode, %ASTNode* %534, i32 0, i32 1
  %554 = load { i64, i8* }*, { i64, i8* }** %553
  %555 = call i64 @nyx_array_get({ i64, i8* }* %554, i64 2)
  %556 = inttoptr i64 %555 to { i64, i8* }*
  %557 = alloca { i64, i8* }*
  store { i64, i8* }* %556, { i64, i8* }** %557
  %558 = alloca i64
  store i64 0, i64* %558
  %559 = call i8* @llvm.stacksave()
  br label %while_cond153
while_cond153:
  %560 = load i64, i64* %558
  %561 = load { i64, i8* }*, { i64, i8* }** %557
  %562 = call i64 @nyx_array_length({ i64, i8* }* %561)
  %563 = icmp slt i64 %560, %562
  br i1 %563, label %while_body154, label %while_end155
while_body154:
  call void @llvm.stackrestore(i8* %559)
  %564 = load { i64, i8* }*, { i64, i8* }** %557
  %565 = load i64, i64* %558
  %566 = call i64 @nyx_array_get_checked({ i64, i8* }* %564, i64 %565, i64 2)
  %567 = inttoptr i64 %566 to %nyx_string*
  %568 = alloca %nyx_string*
  store %nyx_string* %567, %nyx_string** %568
  %569 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %570 = load %nyx_string*, %nyx_string** %568
  %571 = call i64 @tm_add_local({ i64, i8* }* %569, %nyx_string* %570)
  %572 = load i64, i64* %558
  %573 = add i64 %572, 1
  store i64 %573, i64* %558
  br label %while_cond153
while_end155:
  br label %merge152
else151:
  br label %merge152
merge152:
  %574 = load i64, i64* %506
  %575 = add i64 %574, 1
  store i64 %575, i64* %506
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
  %576 = getelementptr [11 x i8], [11 x i8]* @.str18, i32 0, i32 0
  %577 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str18.c, i8* %576, i64 10)
  %578 = call i8* @nyx_string_to_cstr(%nyx_string* %577)
  %579 = call %nyx_string* @nyx_getenv(i8* %578)
  %580 = alloca %nyx_string*
  store %nyx_string* %579, %nyx_string** %580
  %581 = load %nyx_string*, %nyx_string** %580
  %582 = getelementptr [6 x i8], [6 x i8]* @.str19, i32 0, i32 0
  %583 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str19.c, i8* %582, i64 5)
  %584 = call i1 @nyx_string_equals(%nyx_string* %581, %nyx_string* %583)
  br i1 %584, label %then156, label %else157
then156:
  ret i64 2
else157:
  br label %merge158
merge158:
  %585 = load %nyx_string*, %nyx_string** %580
  %586 = getelementptr [5 x i8], [5 x i8]* @.str20, i32 0, i32 0
  %587 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str20.c, i8* %586, i64 4)
  %588 = call i1 @nyx_string_equals(%nyx_string* %585, %nyx_string* %587)
  br i1 %588, label %then159, label %else160
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
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  %tmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %arg.ptr = alloca %ASTNode
  store %ASTNode %arg.param, %ASTNode* %arg.ptr
  %589 = getelementptr %ASTNode, %ASTNode* %arg.ptr, i32 0, i32 0
  %590 = load %nyx_string*, %nyx_string** %589
  %591 = alloca %nyx_string*
  store %nyx_string* %590, %nyx_string** %591
  %592 = alloca i1
  store i1 false, i1* %592
  %593 = load %nyx_string*, %nyx_string** %591
  %594 = getelementptr [8 x i8], [8 x i8]* @.str21, i32 0, i32 0
  %595 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str21.c, i8* %594, i64 7)
  %596 = call i1 @nyx_string_equals(%nyx_string* %593, %nyx_string* %595)
  %597 = xor i1 %596, true
  br i1 %597, label %sc_and_rhs162, label %sc_and_end163
sc_and_rhs162:
  %598 = load %nyx_string*, %nyx_string** %591
  %599 = getelementptr [12 x i8], [12 x i8]* @.str22, i32 0, i32 0
  %600 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str22.c, i8* %599, i64 11)
  %601 = call i1 @nyx_string_equals(%nyx_string* %598, %nyx_string* %600)
  %602 = xor i1 %601, true
  store i1 %602, i1* %592
  br label %sc_and_end163
sc_and_end163:
  %603 = load i1, i1* %592
  br i1 %603, label %then164, label %else165
then164:
  %604 = load %ASTNode, %ASTNode* %arg.ptr
  %605 = call %nyx_string* @place_of(%ASTNode %604)
  %606 = alloca %nyx_string*
  store %nyx_string* %605, %nyx_string** %606
  %607 = load %nyx_string*, %nyx_string** %606
  %608 = getelementptr [1 x i8], [1 x i8]* @.str23, i32 0, i32 0
  %609 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str23.c, i8* %608, i64 0)
  %610 = call i1 @nyx_string_equals(%nyx_string* %607, %nyx_string* %609)
  %611 = xor i1 %610, true
  br i1 %611, label %then167, label %else168
then167:
  %612 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %613 = load %nyx_string*, %nyx_string** %606
  %614 = call i1 @tm_is_move({ i64, i8* }* %612, %nyx_string* %613)
  br i1 %614, label %then170, label %else171
then170:
  %615 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %616 = load %nyx_string*, %nyx_string** %606
  %617 = call i64 @mark_moved({ i64, i8* }* %615, %nyx_string* %616)
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
  store %ASTNode %addr_node.param, %ASTNode* %addr_node.ptr
  %tmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %618 = load %ASTNode, %ASTNode* %addr_node.ptr
  %619 = call %ASTNode @bc_node_at(%ASTNode %618, i64 0)
  %620 = alloca %ASTNode
  store %ASTNode %619, %ASTNode* %620
  %621 = getelementptr %ASTNode, %ASTNode* %620, i32 0, i32 0
  %622 = load %nyx_string*, %nyx_string** %621
  %623 = getelementptr [11 x i8], [11 x i8]* @.str24, i32 0, i32 0
  %624 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str24.c, i8* %623, i64 10)
  %625 = call i1 @nyx_string_equals(%nyx_string* %622, %nyx_string* %624)
  br i1 %625, label %then173, label %else174
then173:
  %626 = load %ASTNode, %ASTNode* %620
  %627 = call %nyx_string* @place_of(%ASTNode %626)
  %628 = alloca %nyx_string*
  store %nyx_string* %627, %nyx_string** %628
  %629 = load %nyx_string*, %nyx_string** %628
  %630 = getelementptr [1 x i8], [1 x i8]* @.str25, i32 0, i32 0
  %631 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str25.c, i8* %630, i64 0)
  %632 = call i1 @nyx_string_equals(%nyx_string* %629, %nyx_string* %631)
  %633 = xor i1 %632, true
  br i1 %633, label %then176, label %else177
then176:
  %634 = load %nyx_string*, %nyx_string** %628
  %635 = getelementptr [5 x i8], [5 x i8]* @.str26, i32 0, i32 0
  %636 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str26.c, i8* %635, i64 4)
  %637 = call i1 @nyx_string_equals(%nyx_string* %634, %nyx_string* %636)
  %638 = xor i1 %637, true
  br i1 %638, label %then179, label %else180
then179:
  %639 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %640 = load %nyx_string*, %nyx_string** %628
  %641 = call i1 @tm_is_local({ i64, i8* }* %639, %nyx_string* %640)
  br i1 %641, label %then182, label %else183
then182:
  %642 = load %nyx_string*, %nyx_string** %628
  ret %nyx_string* %642
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
  %643 = getelementptr [1 x i8], [1 x i8]* @.str27, i32 0, i32 0
  %644 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str27.c, i8* %643, i64 0)
  ret %nyx_string* %644
}

define internal %nyx_string* @bc_escaping_origin(
%ASTNode %expr.param, { i64, i8* }* %state.param, { i64, i8* }* %tmap.param) {
  %expr.ptr = alloca %ASTNode
  store %ASTNode %expr.param, %ASTNode* %expr.ptr
  %state.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  %tmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %645 = getelementptr %ASTNode, %ASTNode* %expr.ptr, i32 0, i32 0
  %646 = load %nyx_string*, %nyx_string** %645
  %647 = alloca %nyx_string*
  store %nyx_string* %646, %nyx_string** %647
  %648 = load %nyx_string*, %nyx_string** %647
  %649 = getelementptr [8 x i8], [8 x i8]* @.str28, i32 0, i32 0
  %650 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str28.c, i8* %649, i64 7)
  %651 = call i1 @nyx_string_equals(%nyx_string* %648, %nyx_string* %650)
  br i1 %651, label %then185, label %else186
then185:
  %652 = load %ASTNode, %ASTNode* %expr.ptr
  %653 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %654 = call %nyx_string* @bc_borrow_is_frame_bound(%ASTNode %652, { i64, i8* }* %653)
  ret %nyx_string* %654
else186:
  br label %merge187
merge187:
  %655 = load %nyx_string*, %nyx_string** %647
  %656 = getelementptr [12 x i8], [12 x i8]* @.str29, i32 0, i32 0
  %657 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str29.c, i8* %656, i64 11)
  %658 = call i1 @nyx_string_equals(%nyx_string* %655, %nyx_string* %657)
  br i1 %658, label %then188, label %else189
then188:
  %659 = load %ASTNode, %ASTNode* %expr.ptr
  %660 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %661 = call %nyx_string* @bc_borrow_is_frame_bound(%ASTNode %659, { i64, i8* }* %660)
  ret %nyx_string* %661
else189:
  br label %merge190
merge190:
  %662 = load %nyx_string*, %nyx_string** %647
  %663 = getelementptr [11 x i8], [11 x i8]* @.str30, i32 0, i32 0
  %664 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str30.c, i8* %663, i64 10)
  %665 = call i1 @nyx_string_equals(%nyx_string* %662, %nyx_string* %664)
  br i1 %665, label %then191, label %else192
then191:
  %666 = load %ASTNode, %ASTNode* %expr.ptr
  %667 = call %nyx_string* @place_of(%ASTNode %666)
  %668 = alloca %nyx_string*
  store %nyx_string* %667, %nyx_string** %668
  %669 = load %nyx_string*, %nyx_string** %668
  %670 = getelementptr [1 x i8], [1 x i8]* @.str31, i32 0, i32 0
  %671 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str31.c, i8* %670, i64 0)
  %672 = call i1 @nyx_string_equals(%nyx_string* %669, %nyx_string* %671)
  %673 = xor i1 %672, true
  br i1 %673, label %then194, label %else195
then194:
  %674 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %675 = load %nyx_string*, %nyx_string** %668
  %676 = call %nyx_string* @get_reforigin({ i64, i8* }* %674, %nyx_string* %675)
  ret %nyx_string* %676
else195:
  br label %merge196
merge196:
  br label %merge193
else192:
  br label %merge193
merge193:
  %677 = load %nyx_string*, %nyx_string** %647
  %678 = getelementptr [5 x i8], [5 x i8]* @.str32, i32 0, i32 0
  %679 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str32.c, i8* %678, i64 4)
  %680 = call i1 @nyx_string_equals(%nyx_string* %677, %nyx_string* %679)
  br i1 %680, label %then197, label %else198
then197:
  %681 = load %ASTNode, %ASTNode* %expr.ptr
  %682 = call %ASTNode @bc_node_at(%ASTNode %681, i64 0)
  %683 = alloca %ASTNode
  store %ASTNode %682, %ASTNode* %683
  %684 = getelementptr [1 x i8], [1 x i8]* @.str33, i32 0, i32 0
  %685 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str33.c, i8* %684, i64 0)
  %686 = alloca %nyx_string*
  store %nyx_string* %685, %nyx_string** %686
  %687 = getelementptr %ASTNode, %ASTNode* %683, i32 0, i32 0
  %688 = load %nyx_string*, %nyx_string** %687
  %689 = getelementptr [11 x i8], [11 x i8]* @.str34, i32 0, i32 0
  %690 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str34.c, i8* %689, i64 10)
  %691 = call i1 @nyx_string_equals(%nyx_string* %688, %nyx_string* %690)
  br i1 %691, label %then200, label %else201
then200:
  %692 = load %ASTNode, %ASTNode* %683
  %693 = call %nyx_string* @place_of(%ASTNode %692)
  store %nyx_string* %693, %nyx_string** %686
  br label %merge202
else201:
  br label %merge202
merge202:
  %694 = load %nyx_string*, %nyx_string** %686
  %695 = getelementptr [1 x i8], [1 x i8]* @.str35, i32 0, i32 0
  %696 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str35.c, i8* %695, i64 0)
  %697 = call i1 @nyx_string_equals(%nyx_string* %694, %nyx_string* %696)
  %698 = xor i1 %697, true
  br i1 %698, label %then203, label %else204
then203:
  %699 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %700 = load %nyx_string*, %nyx_string** %686
  %701 = call i1 @tm_is_local({ i64, i8* }* %699, %nyx_string* %700)
  br i1 %701, label %then206, label %else207
then206:
  %702 = getelementptr [1 x i8], [1 x i8]* @.str36, i32 0, i32 0
  %703 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str36.c, i8* %702, i64 0)
  store %nyx_string* %703, %nyx_string** %686
  br label %merge208
else207:
  br label %merge208
merge208:
  br label %merge205
else204:
  br label %merge205
merge205:
  %704 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %705 = call i8* @tm_sigs({ i64, i8* }* %704)
  %706 = load %nyx_string*, %nyx_string** %686
  %707 = call { i64, i8* }* @sig_lookup(i8* %705, %nyx_string* %706)
  %708 = alloca { i64, i8* }*
  store { i64, i8* }* %707, { i64, i8* }** %708
  %709 = load { i64, i8* }*, { i64, i8* }** %708
  %710 = call i64 @nyx_array_get({ i64, i8* }* %709, i64 0)
  %711 = inttoptr i64 %710 to { i64, i8* }*
  %712 = alloca { i64, i8* }*
  store { i64, i8* }* %711, { i64, i8* }** %712
  %713 = load { i64, i8* }*, { i64, i8* }** %708
  %714 = call i64 @nyx_array_get({ i64, i8* }* %713, i64 1)
  %715 = alloca i64
  store i64 %714, i64* %715
  %716 = load %ASTNode, %ASTNode* %expr.ptr
  %717 = call { i64, i8* }* @bc_array_at(%ASTNode %716, i64 1)
  %718 = alloca { i64, i8* }*
  store { i64, i8* }* %717, { i64, i8* }** %718
  %719 = getelementptr [1 x i8], [1 x i8]* @.str37, i32 0, i32 0
  %720 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str37.c, i8* %719, i64 0)
  %721 = alloca %nyx_string*
  store %nyx_string* %720, %nyx_string** %721
  %722 = alloca i64
  store i64 0, i64* %722
  %723 = getelementptr [1 x i8], [1 x i8]* @.str38, i32 0, i32 0
  %724 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str38.c, i8* %723, i64 0)
  %725 = alloca %nyx_string*
  store %nyx_string* %724, %nyx_string** %725
  %726 = call i8* @llvm.stacksave()
  br label %while_cond209
while_cond209:
  %727 = load i64, i64* %722
  %728 = load { i64, i8* }*, { i64, i8* }** %712
  %729 = call i64 @nyx_array_length({ i64, i8* }* %728)
  %730 = icmp slt i64 %727, %729
  br i1 %730, label %while_body210, label %while_end211
while_body210:
  call void @llvm.stackrestore(i8* %726)
  %731 = load { i64, i8* }*, { i64, i8* }** %712
  %732 = load i64, i64* %722
  %733 = call i64 @nyx_array_get({ i64, i8* }* %731, i64 %732)
  %734 = alloca i64
  store i64 %733, i64* %734
  %735 = load i64, i64* %734
  %736 = icmp sge i64 %735, 0
  br i1 %736, label %then212, label %else213
then212:
  %737 = load i64, i64* %734
  %738 = load { i64, i8* }*, { i64, i8* }** %718
  %739 = call i64 @nyx_array_length({ i64, i8* }* %738)
  %740 = icmp slt i64 %737, %739
  br i1 %740, label %then215, label %else216
then215:
  %741 = load { i64, i8* }*, { i64, i8* }** %718
  %742 = load i64, i64* %734
  %743 = call i64 @nyx_array_get({ i64, i8* }* %741, i64 %742)
  %744 = inttoptr i64 %743 to { i64, i8* }*
  %745 = call i64 @nyx_array_get({ i64, i8* }* %744, i64 0)
  %746 = call i64 @nyx_array_get({ i64, i8* }* %744, i64 1)
  %747 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %744, i64 2)
  %748 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %744, i64 3)
  %749 = inttoptr i64 %745 to %nyx_string*
  %750 = inttoptr i64 %746 to { i64, i8* }*
  %751 = alloca %ASTNode
  %752 = getelementptr inbounds %ASTNode, %ASTNode* %751, i32 0, i32 0
  store %nyx_string* %749, %nyx_string** %752
  %753 = getelementptr inbounds %ASTNode, %ASTNode* %751, i32 0, i32 1
  store { i64, i8* }* %750, { i64, i8* }** %753
  %754 = getelementptr inbounds %ASTNode, %ASTNode* %751, i32 0, i32 2
  store i64 %747, i64* %754
  %755 = getelementptr inbounds %ASTNode, %ASTNode* %751, i32 0, i32 3
  store i64 %748, i64* %755
  %756 = load %ASTNode, %ASTNode* %751
  %757 = alloca %ASTNode
  store %ASTNode %756, %ASTNode* %757
  %758 = load %ASTNode, %ASTNode* %757
  %759 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %760 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %761 = call %nyx_string* @bc_escaping_origin(%ASTNode %758, { i64, i8* }* %759, { i64, i8* }* %760)
  %762 = alloca %nyx_string*
  store %nyx_string* %761, %nyx_string** %762
  %763 = load %nyx_string*, %nyx_string** %762
  %764 = load %nyx_string*, %nyx_string** %725
  %765 = call i1 @nyx_string_equals(%nyx_string* %763, %nyx_string* %764)
  %766 = xor i1 %765, true
  br i1 %766, label %then218, label %else219
then218:
  %767 = load %nyx_string*, %nyx_string** %762
  %768 = call %nyx_string* @reforigin_name(%nyx_string* %767)
  %769 = alloca %nyx_string*
  store %nyx_string* %768, %nyx_string** %769
  %770 = load i64, i64* %715
  %771 = icmp eq i64 %770, 1
  br i1 %771, label %then221, label %else222
then221:
  %772 = load %nyx_string*, %nyx_string** %762
  %773 = call i1 @reforigin_is_soft(%nyx_string* %772)
  br i1 %773, label %then224, label %else225
then224:
  %774 = load %nyx_string*, %nyx_string** %721
  %775 = load %nyx_string*, %nyx_string** %725
  %776 = call i1 @nyx_string_equals(%nyx_string* %774, %nyx_string* %775)
  br i1 %776, label %then227, label %else228
then227:
  %777 = load %nyx_string*, %nyx_string** %769
  %778 = call %nyx_string* @reforigin_mark_soft(%nyx_string* %777)
  store %nyx_string* %778, %nyx_string** %721
  br label %merge229
else228:
  br label %merge229
merge229:
  br label %merge226
else225:
  %779 = load %nyx_string*, %nyx_string** %769
  ret %nyx_string* %779
merge226:
  br label %merge223
else222:
  %780 = load %nyx_string*, %nyx_string** %721
  %781 = load %nyx_string*, %nyx_string** %725
  %782 = call i1 @nyx_string_equals(%nyx_string* %780, %nyx_string* %781)
  br i1 %782, label %then230, label %else231
then230:
  %783 = load %nyx_string*, %nyx_string** %769
  %784 = call %nyx_string* @reforigin_mark_soft(%nyx_string* %783)
  store %nyx_string* %784, %nyx_string** %721
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
  %785 = load i64, i64* %722
  %786 = add i64 %785, 1
  store i64 %786, i64* %722
  br label %while_cond209
while_end211:
  %787 = load %nyx_string*, %nyx_string** %721
  ret %nyx_string* %787
else198:
  br label %merge199
merge199:
  %788 = getelementptr [1 x i8], [1 x i8]* @.str39, i32 0, i32 0
  %789 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str39.c, i8* %788, i64 0)
  ret %nyx_string* %789
}

define internal %nyx_string* @bc_aggregate_escaping_origin(
%ASTNode %expr.param, { i64, i8* }* %state.param, { i64, i8* }* %tmap.param) {
  %expr.ptr = alloca %ASTNode
  store %ASTNode %expr.param, %ASTNode* %expr.ptr
  %state.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  %tmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %790 = getelementptr %ASTNode, %ASTNode* %expr.ptr, i32 0, i32 0
  %791 = load %nyx_string*, %nyx_string** %790
  %792 = alloca %nyx_string*
  store %nyx_string* %791, %nyx_string** %792
  %793 = alloca i1
  store i1 true, i1* %793
  %794 = load %nyx_string*, %nyx_string** %792
  %795 = getelementptr [6 x i8], [6 x i8]* @.str40, i32 0, i32 0
  %796 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str40.c, i8* %795, i64 5)
  %797 = call i1 @nyx_string_equals(%nyx_string* %794, %nyx_string* %796)
  br i1 %797, label %sc_or_end234, label %sc_or_rhs233
sc_or_rhs233:
  %798 = load %nyx_string*, %nyx_string** %792
  %799 = getelementptr [10 x i8], [10 x i8]* @.str41, i32 0, i32 0
  %800 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str41.c, i8* %799, i64 9)
  %801 = call i1 @nyx_string_equals(%nyx_string* %798, %nyx_string* %800)
  store i1 %801, i1* %793
  br label %sc_or_end234
sc_or_end234:
  %802 = load i1, i1* %793
  br i1 %802, label %then235, label %else236
then235:
  %803 = load %ASTNode, %ASTNode* %expr.ptr
  %804 = call { i64, i8* }* @bc_array_at(%ASTNode %803, i64 0)
  %805 = alloca { i64, i8* }*
  store { i64, i8* }* %804, { i64, i8* }** %805
  %806 = alloca i64
  store i64 0, i64* %806
  %807 = getelementptr [1 x i8], [1 x i8]* @.str42, i32 0, i32 0
  %808 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str42.c, i8* %807, i64 0)
  %809 = alloca %nyx_string*
  store %nyx_string* %808, %nyx_string** %809
  %810 = call i8* @llvm.stacksave()
  br label %while_cond238
while_cond238:
  %811 = load i64, i64* %806
  %812 = load { i64, i8* }*, { i64, i8* }** %805
  %813 = call i64 @nyx_array_length({ i64, i8* }* %812)
  %814 = icmp slt i64 %811, %813
  br i1 %814, label %while_body239, label %while_end240
while_body239:
  call void @llvm.stackrestore(i8* %810)
  %815 = load { i64, i8* }*, { i64, i8* }** %805
  %816 = load i64, i64* %806
  %817 = call i64 @nyx_array_get({ i64, i8* }* %815, i64 %816)
  %818 = inttoptr i64 %817 to { i64, i8* }*
  %819 = call i64 @nyx_array_get({ i64, i8* }* %818, i64 0)
  %820 = call i64 @nyx_array_get({ i64, i8* }* %818, i64 1)
  %821 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %818, i64 2)
  %822 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %818, i64 3)
  %823 = inttoptr i64 %819 to %nyx_string*
  %824 = inttoptr i64 %820 to { i64, i8* }*
  %825 = alloca %ASTNode
  %826 = getelementptr inbounds %ASTNode, %ASTNode* %825, i32 0, i32 0
  store %nyx_string* %823, %nyx_string** %826
  %827 = getelementptr inbounds %ASTNode, %ASTNode* %825, i32 0, i32 1
  store { i64, i8* }* %824, { i64, i8* }** %827
  %828 = getelementptr inbounds %ASTNode, %ASTNode* %825, i32 0, i32 2
  store i64 %821, i64* %828
  %829 = getelementptr inbounds %ASTNode, %ASTNode* %825, i32 0, i32 3
  store i64 %822, i64* %829
  %830 = load %ASTNode, %ASTNode* %825
  %831 = alloca %ASTNode
  store %ASTNode %830, %ASTNode* %831
  %832 = load %ASTNode, %ASTNode* %831
  %833 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %834 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %835 = call %nyx_string* @bc_aggregate_escaping_origin(%ASTNode %832, { i64, i8* }* %833, { i64, i8* }* %834)
  %836 = alloca %nyx_string*
  store %nyx_string* %835, %nyx_string** %836
  %837 = load %nyx_string*, %nyx_string** %836
  %838 = load %nyx_string*, %nyx_string** %809
  %839 = call i1 @nyx_string_equals(%nyx_string* %837, %nyx_string* %838)
  %840 = xor i1 %839, true
  br i1 %840, label %then241, label %else242
then241:
  %841 = load %nyx_string*, %nyx_string** %836
  ret %nyx_string* %841
else242:
  br label %merge243
merge243:
  %842 = load i64, i64* %806
  %843 = add i64 %842, 1
  store i64 %843, i64* %806
  br label %while_cond238
while_end240:
  %844 = getelementptr [1 x i8], [1 x i8]* @.str43, i32 0, i32 0
  %845 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str43.c, i8* %844, i64 0)
  ret %nyx_string* %845
else236:
  br label %merge237
merge237:
  %846 = load %nyx_string*, %nyx_string** %792
  %847 = getelementptr [12 x i8], [12 x i8]* @.str44, i32 0, i32 0
  %848 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str44.c, i8* %847, i64 11)
  %849 = call i1 @nyx_string_equals(%nyx_string* %846, %nyx_string* %848)
  br i1 %849, label %then244, label %else245
then244:
  %850 = load %ASTNode, %ASTNode* %expr.ptr
  %851 = call { i64, i8* }* @bc_array_at(%ASTNode %850, i64 1)
  %852 = alloca { i64, i8* }*
  store { i64, i8* }* %851, { i64, i8* }** %852
  %853 = alloca i64
  store i64 0, i64* %853
  %854 = getelementptr [1 x i8], [1 x i8]* @.str45, i32 0, i32 0
  %855 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str45.c, i8* %854, i64 0)
  %856 = alloca %nyx_string*
  store %nyx_string* %855, %nyx_string** %856
  %857 = call i8* @llvm.stacksave()
  br label %while_cond247
while_cond247:
  %858 = load i64, i64* %853
  %859 = load { i64, i8* }*, { i64, i8* }** %852
  %860 = call i64 @nyx_array_length({ i64, i8* }* %859)
  %861 = icmp slt i64 %858, %860
  br i1 %861, label %while_body248, label %while_end249
while_body248:
  call void @llvm.stackrestore(i8* %857)
  %862 = load { i64, i8* }*, { i64, i8* }** %852
  %863 = load i64, i64* %853
  %864 = call i64 @nyx_array_get({ i64, i8* }* %862, i64 %863)
  %865 = inttoptr i64 %864 to { i64, i8* }*
  %866 = alloca { i64, i8* }*
  store { i64, i8* }* %865, { i64, i8* }** %866
  %867 = load { i64, i8* }*, { i64, i8* }** %866
  %868 = call i64 @nyx_array_get({ i64, i8* }* %867, i64 1)
  %869 = inttoptr i64 %868 to { i64, i8* }*
  %870 = call i64 @nyx_array_get({ i64, i8* }* %869, i64 0)
  %871 = call i64 @nyx_array_get({ i64, i8* }* %869, i64 1)
  %872 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %869, i64 2)
  %873 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %869, i64 3)
  %874 = inttoptr i64 %870 to %nyx_string*
  %875 = inttoptr i64 %871 to { i64, i8* }*
  %876 = alloca %ASTNode
  %877 = getelementptr inbounds %ASTNode, %ASTNode* %876, i32 0, i32 0
  store %nyx_string* %874, %nyx_string** %877
  %878 = getelementptr inbounds %ASTNode, %ASTNode* %876, i32 0, i32 1
  store { i64, i8* }* %875, { i64, i8* }** %878
  %879 = getelementptr inbounds %ASTNode, %ASTNode* %876, i32 0, i32 2
  store i64 %872, i64* %879
  %880 = getelementptr inbounds %ASTNode, %ASTNode* %876, i32 0, i32 3
  store i64 %873, i64* %880
  %881 = load %ASTNode, %ASTNode* %876
  %882 = alloca %ASTNode
  store %ASTNode %881, %ASTNode* %882
  %883 = load %ASTNode, %ASTNode* %882
  %884 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %885 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %886 = call %nyx_string* @bc_aggregate_escaping_origin(%ASTNode %883, { i64, i8* }* %884, { i64, i8* }* %885)
  %887 = alloca %nyx_string*
  store %nyx_string* %886, %nyx_string** %887
  %888 = load %nyx_string*, %nyx_string** %887
  %889 = load %nyx_string*, %nyx_string** %856
  %890 = call i1 @nyx_string_equals(%nyx_string* %888, %nyx_string* %889)
  %891 = xor i1 %890, true
  br i1 %891, label %then250, label %else251
then250:
  %892 = load %nyx_string*, %nyx_string** %887
  ret %nyx_string* %892
else251:
  br label %merge252
merge252:
  %893 = load i64, i64* %853
  %894 = add i64 %893, 1
  store i64 %894, i64* %853
  br label %while_cond247
while_end249:
  %895 = getelementptr [1 x i8], [1 x i8]* @.str46, i32 0, i32 0
  %896 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str46.c, i8* %895, i64 0)
  ret %nyx_string* %896
else245:
  br label %merge246
merge246:
  %897 = load %ASTNode, %ASTNode* %expr.ptr
  %898 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %899 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %900 = call %nyx_string* @bc_escaping_origin(%ASTNode %897, { i64, i8* }* %898, { i64, i8* }* %899)
  ret %nyx_string* %900
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
  %901 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 0
  %902 = load %nyx_string*, %nyx_string** %901
  %903 = alloca %nyx_string*
  store %nyx_string* %902, %nyx_string** %903
  %904 = load %nyx_string*, %nyx_string** %903
  %905 = getelementptr [7 x i8], [7 x i8]* @.str47, i32 0, i32 0
  %906 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str47.c, i8* %905, i64 6)
  %907 = call i1 @nyx_string_equals(%nyx_string* %904, %nyx_string* %906)
  br i1 %907, label %then253, label %else254
then253:
  ret i64 0
else254:
  br label %merge255
merge255:
  %908 = load %nyx_string*, %nyx_string** %903
  %909 = getelementptr [10 x i8], [10 x i8]* @.str48, i32 0, i32 0
  %910 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str48.c, i8* %909, i64 9)
  %911 = call i1 @nyx_string_equals(%nyx_string* %908, %nyx_string* %910)
  br i1 %911, label %then256, label %else257
then256:
  ret i64 0
else257:
  br label %merge258
merge258:
  %912 = load %nyx_string*, %nyx_string** %903
  %913 = getelementptr [7 x i8], [7 x i8]* @.str49, i32 0, i32 0
  %914 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str49.c, i8* %913, i64 6)
  %915 = call i1 @nyx_string_equals(%nyx_string* %912, %nyx_string* %914)
  br i1 %915, label %then259, label %else260
then259:
  ret i64 0
else260:
  br label %merge261
merge261:
  %916 = load %nyx_string*, %nyx_string** %903
  %917 = getelementptr [5 x i8], [5 x i8]* @.str50, i32 0, i32 0
  %918 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str50.c, i8* %917, i64 4)
  %919 = call i1 @nyx_string_equals(%nyx_string* %916, %nyx_string* %918)
  br i1 %919, label %then262, label %else263
then262:
  ret i64 0
else263:
  br label %merge264
merge264:
  %920 = load %nyx_string*, %nyx_string** %903
  %921 = getelementptr [5 x i8], [5 x i8]* @.str51, i32 0, i32 0
  %922 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str51.c, i8* %921, i64 4)
  %923 = call i1 @nyx_string_equals(%nyx_string* %920, %nyx_string* %922)
  br i1 %923, label %then265, label %else266
then265:
  ret i64 0
else266:
  br label %merge267
merge267:
  %924 = load %nyx_string*, %nyx_string** %903
  %925 = getelementptr [11 x i8], [11 x i8]* @.str52, i32 0, i32 0
  %926 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str52.c, i8* %925, i64 10)
  %927 = call i1 @nyx_string_equals(%nyx_string* %924, %nyx_string* %926)
  br i1 %927, label %then268, label %else269
then268:
  %928 = load %ASTNode, %ASTNode* %node.ptr
  %929 = call %nyx_string* @place_of(%ASTNode %928)
  %930 = alloca %nyx_string*
  store %nyx_string* %929, %nyx_string** %930
  %931 = load %nyx_string*, %nyx_string** %930
  %932 = getelementptr [1 x i8], [1 x i8]* @.str53, i32 0, i32 0
  %933 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str53.c, i8* %932, i64 0)
  %934 = call i1 @nyx_string_equals(%nyx_string* %931, %nyx_string* %933)
  %935 = xor i1 %934, true
  br i1 %935, label %then271, label %else272
then271:
  %936 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %937 = load %nyx_string*, %nyx_string** %930
  %938 = call i1 @is_freed({ i64, i8* }* %936, %nyx_string* %937)
  br i1 %938, label %then274, label %else275
then274:
  %939 = getelementptr [30 x i8], [30 x i8]* @.str54, i32 0, i32 0
  %940 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str54.c, i8* %939, i64 29)
  %941 = load %nyx_string*, %nyx_string** %930
  %942 = call %nyx_string* @nyx_string_concat(%nyx_string* %940, %nyx_string* %941)
  %943 = getelementptr [2 x i8], [2 x i8]* @.str55, i32 0, i32 0
  %944 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str55.c, i8* %943, i64 1)
  %945 = call %nyx_string* @nyx_string_concat(%nyx_string* %942, %nyx_string* %944)
  %946 = alloca %nyx_string*
  store %nyx_string* %945, %nyx_string** %946
  %947 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %948 = load i64, i64* %947
  %949 = icmp sgt i64 %948, 0
  br i1 %949, label %then277, label %else278
then277:
  %950 = load %nyx_string*, %nyx_string** %946
  %951 = getelementptr [8 x i8], [8 x i8]* @.str56, i32 0, i32 0
  %952 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str56.c, i8* %951, i64 7)
  %953 = call %nyx_string* @nyx_string_concat(%nyx_string* %950, %nyx_string* %952)
  %954 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %955 = load i64, i64* %954
  %956 = call %nyx_string* @nyx_string_from_int(i64 %955)
  %957 = call %nyx_string* @nyx_string_concat(%nyx_string* %953, %nyx_string* %956)
  %958 = getelementptr [2 x i8], [2 x i8]* @.str57, i32 0, i32 0
  %959 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str57.c, i8* %958, i64 1)
  %960 = call %nyx_string* @nyx_string_concat(%nyx_string* %957, %nyx_string* %959)
  store %nyx_string* %960, %nyx_string** %946
  br label %merge279
else278:
  br label %merge279
merge279:
  %961 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %962 = load %nyx_string*, %nyx_string** %946
  %963 = ptrtoint %nyx_string* %962 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %961, i64 %963, i64 2)
  br label %merge276
else275:
  %964 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %965 = load %nyx_string*, %nyx_string** %930
  %966 = call i1 @is_moved({ i64, i8* }* %964, %nyx_string* %965)
  br i1 %966, label %then280, label %else281
then280:
  %967 = getelementptr [8 x i8], [8 x i8]* @.str58, i32 0, i32 0
  %968 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str58.c, i8* %967, i64 7)
  %969 = alloca %nyx_string*
  store %nyx_string* %968, %nyx_string** %969
  %970 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %971 = load %nyx_string*, %nyx_string** %930
  %972 = call i64 @tm_move_kind({ i64, i8* }* %970, %nyx_string* %971)
  %973 = icmp eq i64 %972, 2
  br i1 %973, label %then283, label %else284
then283:
  %974 = getelementptr [8 x i8], [8 x i8]* @.str59, i32 0, i32 0
  %975 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str59.c, i8* %974, i64 7)
  store %nyx_string* %975, %nyx_string** %969
  br label %merge285
else284:
  br label %merge285
merge285:
  %976 = load %nyx_string*, %nyx_string** %969
  %977 = getelementptr [23 x i8], [23 x i8]* @.str60, i32 0, i32 0
  %978 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str60.c, i8* %977, i64 22)
  %979 = call %nyx_string* @nyx_string_concat(%nyx_string* %976, %nyx_string* %978)
  %980 = load %nyx_string*, %nyx_string** %930
  %981 = call %nyx_string* @nyx_string_concat(%nyx_string* %979, %nyx_string* %980)
  %982 = getelementptr [2 x i8], [2 x i8]* @.str61, i32 0, i32 0
  %983 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str61.c, i8* %982, i64 1)
  %984 = call %nyx_string* @nyx_string_concat(%nyx_string* %981, %nyx_string* %983)
  %985 = alloca %nyx_string*
  store %nyx_string* %984, %nyx_string** %985
  %986 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %987 = load i64, i64* %986
  %988 = icmp sgt i64 %987, 0
  br i1 %988, label %then286, label %else287
then286:
  %989 = load %nyx_string*, %nyx_string** %985
  %990 = getelementptr [8 x i8], [8 x i8]* @.str62, i32 0, i32 0
  %991 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str62.c, i8* %990, i64 7)
  %992 = call %nyx_string* @nyx_string_concat(%nyx_string* %989, %nyx_string* %991)
  %993 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %994 = load i64, i64* %993
  %995 = call %nyx_string* @nyx_string_from_int(i64 %994)
  %996 = call %nyx_string* @nyx_string_concat(%nyx_string* %992, %nyx_string* %995)
  %997 = getelementptr [2 x i8], [2 x i8]* @.str63, i32 0, i32 0
  %998 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str63.c, i8* %997, i64 1)
  %999 = call %nyx_string* @nyx_string_concat(%nyx_string* %996, %nyx_string* %998)
  store %nyx_string* %999, %nyx_string** %985
  br label %merge288
else287:
  br label %merge288
merge288:
  %1000 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1001 = load %nyx_string*, %nyx_string** %985
  %1002 = ptrtoint %nyx_string* %1001 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1000, i64 %1002, i64 2)
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
  %1003 = load %nyx_string*, %nyx_string** %903
  %1004 = getelementptr [6 x i8], [6 x i8]* @.str64, i32 0, i32 0
  %1005 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str64.c, i8* %1004, i64 5)
  %1006 = call i1 @nyx_string_equals(%nyx_string* %1003, %nyx_string* %1005)
  br i1 %1006, label %then289, label %else290
then289:
  ret i64 0
else290:
  br label %merge291
merge291:
  %1007 = load %nyx_string*, %nyx_string** %903
  %1008 = getelementptr [6 x i8], [6 x i8]* @.str65, i32 0, i32 0
  %1009 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str65.c, i8* %1008, i64 5)
  %1010 = call i1 @nyx_string_equals(%nyx_string* %1007, %nyx_string* %1009)
  br i1 %1010, label %then292, label %else293
then292:
  ret i64 0
else293:
  br label %merge294
merge294:
  %1011 = load %nyx_string*, %nyx_string** %903
  %1012 = getelementptr [9 x i8], [9 x i8]* @.str66, i32 0, i32 0
  %1013 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str66.c, i8* %1012, i64 8)
  %1014 = call i1 @nyx_string_equals(%nyx_string* %1011, %nyx_string* %1013)
  br i1 %1014, label %then295, label %else296
then295:
  ret i64 0
else296:
  br label %merge297
merge297:
  %1015 = load %nyx_string*, %nyx_string** %903
  %1016 = getelementptr [6 x i8], [6 x i8]* @.str67, i32 0, i32 0
  %1017 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str67.c, i8* %1016, i64 5)
  %1018 = call i1 @nyx_string_equals(%nyx_string* %1015, %nyx_string* %1017)
  br i1 %1018, label %then298, label %else299
then298:
  ret i64 0
else299:
  br label %merge300
merge300:
  %1019 = load %nyx_string*, %nyx_string** %903
  %1020 = getelementptr [9 x i8], [9 x i8]* @.str68, i32 0, i32 0
  %1021 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str68.c, i8* %1020, i64 8)
  %1022 = call i1 @nyx_string_equals(%nyx_string* %1019, %nyx_string* %1021)
  br i1 %1022, label %then301, label %else302
then301:
  ret i64 0
else302:
  br label %merge303
merge303:
  %1023 = load %nyx_string*, %nyx_string** %903
  %1024 = getelementptr [11 x i8], [11 x i8]* @.str69, i32 0, i32 0
  %1025 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str69.c, i8* %1024, i64 10)
  %1026 = call i1 @nyx_string_equals(%nyx_string* %1023, %nyx_string* %1025)
  br i1 %1026, label %then304, label %else305
then304:
  ret i64 0
else305:
  br label %merge306
merge306:
  %1027 = load %nyx_string*, %nyx_string** %903
  %1028 = getelementptr [7 x i8], [7 x i8]* @.str70, i32 0, i32 0
  %1029 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str70.c, i8* %1028, i64 6)
  %1030 = call i1 @nyx_string_equals(%nyx_string* %1027, %nyx_string* %1029)
  br i1 %1030, label %then307, label %else308
then307:
  ret i64 0
else308:
  br label %merge309
merge309:
  %1031 = load %nyx_string*, %nyx_string** %903
  %1032 = getelementptr [9 x i8], [9 x i8]* @.str71, i32 0, i32 0
  %1033 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str71.c, i8* %1032, i64 8)
  %1034 = call i1 @nyx_string_equals(%nyx_string* %1031, %nyx_string* %1033)
  br i1 %1034, label %then310, label %else311
then310:
  ret i64 0
else311:
  br label %merge312
merge312:
  %1035 = load %nyx_string*, %nyx_string** %903
  %1036 = getelementptr [10 x i8], [10 x i8]* @.str72, i32 0, i32 0
  %1037 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str72.c, i8* %1036, i64 9)
  %1038 = call i1 @nyx_string_equals(%nyx_string* %1035, %nyx_string* %1037)
  br i1 %1038, label %then313, label %else314
then313:
  ret i64 0
else314:
  br label %merge315
merge315:
  %1039 = load %nyx_string*, %nyx_string** %903
  %1040 = getelementptr [7 x i8], [7 x i8]* @.str73, i32 0, i32 0
  %1041 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str73.c, i8* %1040, i64 6)
  %1042 = call i1 @nyx_string_equals(%nyx_string* %1039, %nyx_string* %1041)
  br i1 %1042, label %then316, label %else317
then316:
  ret i64 0
else317:
  br label %merge318
merge318:
  %1043 = load %nyx_string*, %nyx_string** %903
  %1044 = getelementptr [14 x i8], [14 x i8]* @.str74, i32 0, i32 0
  %1045 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str74.c, i8* %1044, i64 13)
  %1046 = call i1 @nyx_string_equals(%nyx_string* %1043, %nyx_string* %1045)
  br i1 %1046, label %then319, label %else320
then319:
  ret i64 0
else320:
  br label %merge321
merge321:
  %1047 = load %nyx_string*, %nyx_string** %903
  %1048 = getelementptr [12 x i8], [12 x i8]* @.str75, i32 0, i32 0
  %1049 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str75.c, i8* %1048, i64 11)
  %1050 = call i1 @nyx_string_equals(%nyx_string* %1047, %nyx_string* %1049)
  br i1 %1050, label %then322, label %else323
then322:
  ret i64 0
else323:
  br label %merge324
merge324:
  %1051 = load %nyx_string*, %nyx_string** %903
  %1052 = getelementptr [11 x i8], [11 x i8]* @.str76, i32 0, i32 0
  %1053 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str76.c, i8* %1052, i64 10)
  %1054 = call i1 @nyx_string_equals(%nyx_string* %1051, %nyx_string* %1053)
  br i1 %1054, label %then325, label %else326
then325:
  ret i64 0
else326:
  br label %merge327
merge327:
  %1055 = load %nyx_string*, %nyx_string** %903
  %1056 = getelementptr [10 x i8], [10 x i8]* @.str77, i32 0, i32 0
  %1057 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str77.c, i8* %1056, i64 9)
  %1058 = call i1 @nyx_string_equals(%nyx_string* %1055, %nyx_string* %1057)
  br i1 %1058, label %then328, label %else329
then328:
  ret i64 0
else329:
  br label %merge330
merge330:
  %1059 = load %nyx_string*, %nyx_string** %903
  %1060 = getelementptr [14 x i8], [14 x i8]* @.str78, i32 0, i32 0
  %1061 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str78.c, i8* %1060, i64 13)
  %1062 = call i1 @nyx_string_equals(%nyx_string* %1059, %nyx_string* %1061)
  br i1 %1062, label %then331, label %else332
then331:
  ret i64 0
else332:
  br label %merge333
merge333:
  %1063 = load %nyx_string*, %nyx_string** %903
  %1064 = getelementptr [13 x i8], [13 x i8]* @.str79, i32 0, i32 0
  %1065 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str79.c, i8* %1064, i64 12)
  %1066 = call i1 @nyx_string_equals(%nyx_string* %1063, %nyx_string* %1065)
  br i1 %1066, label %then334, label %else335
then334:
  ret i64 0
else335:
  br label %merge336
merge336:
  %1067 = load %nyx_string*, %nyx_string** %903
  %1068 = getelementptr [7 x i8], [7 x i8]* @.str80, i32 0, i32 0
  %1069 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str80.c, i8* %1068, i64 6)
  %1070 = call i1 @nyx_string_equals(%nyx_string* %1067, %nyx_string* %1069)
  br i1 %1070, label %then337, label %else338
then337:
  ret i64 0
else338:
  br label %merge339
merge339:
  %1071 = load %nyx_string*, %nyx_string** %903
  %1072 = getelementptr [8 x i8], [8 x i8]* @.str81, i32 0, i32 0
  %1073 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str81.c, i8* %1072, i64 7)
  %1074 = call i1 @nyx_string_equals(%nyx_string* %1071, %nyx_string* %1073)
  br i1 %1074, label %then340, label %else341
then340:
  ret i64 0
else341:
  br label %merge342
merge342:
  %1075 = load %nyx_string*, %nyx_string** %903
  %1076 = getelementptr [11 x i8], [11 x i8]* @.str82, i32 0, i32 0
  %1077 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str82.c, i8* %1076, i64 10)
  %1078 = call i1 @nyx_string_equals(%nyx_string* %1075, %nyx_string* %1077)
  br i1 %1078, label %then343, label %else344
then343:
  ret i64 0
else344:
  br label %merge345
merge345:
  %1079 = load %nyx_string*, %nyx_string** %903
  %1080 = getelementptr [15 x i8], [15 x i8]* @.str83, i32 0, i32 0
  %1081 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str83.c, i8* %1080, i64 14)
  %1082 = call i1 @nyx_string_equals(%nyx_string* %1079, %nyx_string* %1081)
  br i1 %1082, label %then346, label %else347
then346:
  ret i64 0
else347:
  br label %merge348
merge348:
  %1083 = load %nyx_string*, %nyx_string** %903
  %1084 = getelementptr [13 x i8], [13 x i8]* @.str84, i32 0, i32 0
  %1085 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str84.c, i8* %1084, i64 12)
  %1086 = call i1 @nyx_string_equals(%nyx_string* %1083, %nyx_string* %1085)
  br i1 %1086, label %then349, label %else350
then349:
  ret i64 0
else350:
  br label %merge351
merge351:
  %1087 = load %nyx_string*, %nyx_string** %903
  %1088 = getelementptr [10 x i8], [10 x i8]* @.str85, i32 0, i32 0
  %1089 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str85.c, i8* %1088, i64 9)
  %1090 = call i1 @nyx_string_equals(%nyx_string* %1087, %nyx_string* %1089)
  br i1 %1090, label %then352, label %else353
then352:
  ret i64 0
else353:
  br label %merge354
merge354:
  %1091 = load %nyx_string*, %nyx_string** %903
  %1092 = getelementptr [12 x i8], [12 x i8]* @.str86, i32 0, i32 0
  %1093 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str86.c, i8* %1092, i64 11)
  %1094 = call i1 @nyx_string_equals(%nyx_string* %1091, %nyx_string* %1093)
  br i1 %1094, label %then355, label %else356
then355:
  ret i64 0
else356:
  br label %merge357
merge357:
  %1095 = load %nyx_string*, %nyx_string** %903
  %1096 = getelementptr [6 x i8], [6 x i8]* @.str87, i32 0, i32 0
  %1097 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str87.c, i8* %1096, i64 5)
  %1098 = call i1 @nyx_string_equals(%nyx_string* %1095, %nyx_string* %1097)
  br i1 %1098, label %then358, label %else359
then358:
  %1099 = load %ASTNode, %ASTNode* %node.ptr
  %1100 = call { i64, i8* }* @bc_array_at(%ASTNode %1099, i64 0)
  %1101 = alloca { i64, i8* }*
  store { i64, i8* }* %1100, { i64, i8* }** %1101
  %1102 = alloca i64
  store i64 0, i64* %1102
  %1103 = call i8* @llvm.stacksave()
  br label %while_cond361
while_cond361:
  %1104 = load i64, i64* %1102
  %1105 = load { i64, i8* }*, { i64, i8* }** %1101
  %1106 = call i64 @nyx_array_length({ i64, i8* }* %1105)
  %1107 = icmp slt i64 %1104, %1106
  br i1 %1107, label %while_body362, label %while_end363
while_body362:
  call void @llvm.stackrestore(i8* %1103)
  %1108 = load { i64, i8* }*, { i64, i8* }** %1101
  %1109 = load i64, i64* %1102
  %1110 = call i64 @nyx_array_get({ i64, i8* }* %1108, i64 %1109)
  %1111 = inttoptr i64 %1110 to { i64, i8* }*
  %1112 = call i64 @nyx_array_get({ i64, i8* }* %1111, i64 0)
  %1113 = call i64 @nyx_array_get({ i64, i8* }* %1111, i64 1)
  %1114 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %1111, i64 2)
  %1115 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %1111, i64 3)
  %1116 = inttoptr i64 %1112 to %nyx_string*
  %1117 = inttoptr i64 %1113 to { i64, i8* }*
  %1118 = alloca %ASTNode
  %1119 = getelementptr inbounds %ASTNode, %ASTNode* %1118, i32 0, i32 0
  store %nyx_string* %1116, %nyx_string** %1119
  %1120 = getelementptr inbounds %ASTNode, %ASTNode* %1118, i32 0, i32 1
  store { i64, i8* }* %1117, { i64, i8* }** %1120
  %1121 = getelementptr inbounds %ASTNode, %ASTNode* %1118, i32 0, i32 2
  store i64 %1114, i64* %1121
  %1122 = getelementptr inbounds %ASTNode, %ASTNode* %1118, i32 0, i32 3
  store i64 %1115, i64* %1122
  %1123 = load %ASTNode, %ASTNode* %1118
  %1124 = alloca %ASTNode
  store %ASTNode %1123, %ASTNode* %1124
  %1125 = load %ASTNode, %ASTNode* %1124
  %1126 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1127 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1128 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1129 = call i64 @bc_walk(%ASTNode %1125, { i64, i8* }* %1126, { i64, i8* }* %1127, { i64, i8* }* %1128)
  %1130 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1131 = call i64 @clear_borrows({ i64, i8* }* %1130)
  %1132 = load i64, i64* %1102
  %1133 = add i64 %1132, 1
  store i64 %1133, i64* %1102
  br label %while_cond361
while_end363:
  ret i64 0
else359:
  br label %merge360
merge360:
  %1134 = load %nyx_string*, %nyx_string** %903
  %1135 = getelementptr [3 x i8], [3 x i8]* @.str88, i32 0, i32 0
  %1136 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str88.c, i8* %1135, i64 2)
  %1137 = call i1 @nyx_string_equals(%nyx_string* %1134, %nyx_string* %1136)
  br i1 %1137, label %then364, label %else365
then364:
  %1138 = load %ASTNode, %ASTNode* %node.ptr
  %1139 = call %ASTNode @bc_node_at(%ASTNode %1138, i64 0)
  %1140 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1141 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1142 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1143 = call i64 @bc_walk(%ASTNode %1139, { i64, i8* }* %1140, { i64, i8* }* %1141, { i64, i8* }* %1142)
  %1144 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1145 = call { i64, i8* }* @state_copy({ i64, i8* }* %1144)
  %1146 = alloca { i64, i8* }*
  store { i64, i8* }* %1145, { i64, i8* }** %1146
  %1147 = load %ASTNode, %ASTNode* %node.ptr
  %1148 = call %ASTNode @bc_node_at(%ASTNode %1147, i64 1)
  %1149 = load { i64, i8* }*, { i64, i8* }** %1146
  %1150 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1151 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1152 = call i64 @bc_walk(%ASTNode %1148, { i64, i8* }* %1149, { i64, i8* }* %1150, { i64, i8* }* %1151)
  %1153 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1154 = call { i64, i8* }* @state_copy({ i64, i8* }* %1153)
  %1155 = alloca { i64, i8* }*
  store { i64, i8* }* %1154, { i64, i8* }** %1155
  %1156 = load %ASTNode, %ASTNode* %node.ptr
  %1157 = call %ASTNode @bc_node_at(%ASTNode %1156, i64 2)
  %1158 = alloca %ASTNode
  store %ASTNode %1157, %ASTNode* %1158
  %1159 = getelementptr %ASTNode, %ASTNode* %1158, i32 0, i32 0
  %1160 = load %nyx_string*, %nyx_string** %1159
  %1161 = getelementptr [6 x i8], [6 x i8]* @.str89, i32 0, i32 0
  %1162 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str89.c, i8* %1161, i64 5)
  %1163 = call i1 @nyx_string_equals(%nyx_string* %1160, %nyx_string* %1162)
  %1164 = xor i1 %1163, true
  br i1 %1164, label %then367, label %else368
then367:
  %1165 = load %ASTNode, %ASTNode* %1158
  %1166 = load { i64, i8* }*, { i64, i8* }** %1155
  %1167 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1168 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1169 = call i64 @bc_walk(%ASTNode %1165, { i64, i8* }* %1166, { i64, i8* }* %1167, { i64, i8* }* %1168)
  br label %merge369
else368:
  br label %merge369
merge369:
  %1170 = load { i64, i8* }*, { i64, i8* }** %1146
  %1171 = load { i64, i8* }*, { i64, i8* }** %1155
  %1172 = call { i64, i8* }* @state_join({ i64, i8* }* %1170, { i64, i8* }* %1171)
  %1173 = alloca { i64, i8* }*
  store { i64, i8* }* %1172, { i64, i8* }** %1173
  %1174 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1175 = load { i64, i8* }*, { i64, i8* }** %1173
  %1176 = call i64 @state_merge_from({ i64, i8* }* %1174, { i64, i8* }* %1175)
  ret i64 0
else365:
  br label %merge366
merge366:
  %1177 = load %nyx_string*, %nyx_string** %903
  %1178 = getelementptr [6 x i8], [6 x i8]* @.str90, i32 0, i32 0
  %1179 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str90.c, i8* %1178, i64 5)
  %1180 = call i1 @nyx_string_equals(%nyx_string* %1177, %nyx_string* %1179)
  br i1 %1180, label %then370, label %else371
then370:
  %1181 = load %ASTNode, %ASTNode* %node.ptr
  %1182 = call %ASTNode @bc_node_at(%ASTNode %1181, i64 0)
  %1183 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1184 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1185 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1186 = call i64 @bc_walk(%ASTNode %1182, { i64, i8* }* %1183, { i64, i8* }* %1184, { i64, i8* }* %1185)
  %1187 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1188 = call { i64, i8* }* @state_copy({ i64, i8* }* %1187)
  %1189 = alloca { i64, i8* }*
  store { i64, i8* }* %1188, { i64, i8* }** %1189
  %1190 = load %ASTNode, %ASTNode* %node.ptr
  %1191 = call %ASTNode @bc_node_at(%ASTNode %1190, i64 1)
  %1192 = load { i64, i8* }*, { i64, i8* }** %1189
  %1193 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1194 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1195 = call i64 @bc_walk(%ASTNode %1191, { i64, i8* }* %1192, { i64, i8* }* %1193, { i64, i8* }* %1194)
  %1196 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1197 = call { i64, i8* }* @state_copy({ i64, i8* }* %1196)
  %1198 = alloca { i64, i8* }*
  store { i64, i8* }* %1197, { i64, i8* }** %1198
  %1199 = load { i64, i8* }*, { i64, i8* }** %1189
  %1200 = load { i64, i8* }*, { i64, i8* }** %1198
  %1201 = call { i64, i8* }* @state_join({ i64, i8* }* %1199, { i64, i8* }* %1200)
  %1202 = alloca { i64, i8* }*
  store { i64, i8* }* %1201, { i64, i8* }** %1202
  %1203 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1204 = load { i64, i8* }*, { i64, i8* }** %1202
  %1205 = call i64 @state_merge_from({ i64, i8* }* %1203, { i64, i8* }* %1204)
  ret i64 0
else371:
  br label %merge372
merge372:
  %1206 = load %nyx_string*, %nyx_string** %903
  %1207 = getelementptr [10 x i8], [10 x i8]* @.str91, i32 0, i32 0
  %1208 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str91.c, i8* %1207, i64 9)
  %1209 = call i1 @nyx_string_equals(%nyx_string* %1206, %nyx_string* %1208)
  br i1 %1209, label %then373, label %else374
then373:
  %1210 = load %ASTNode, %ASTNode* %node.ptr
  %1211 = call %ASTNode @bc_node_at(%ASTNode %1210, i64 0)
  %1212 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1213 = call i64 @bc_register_pattern_bindings(%ASTNode %1211, { i64, i8* }* %1212)
  %1214 = load %ASTNode, %ASTNode* %node.ptr
  %1215 = call %ASTNode @bc_node_at(%ASTNode %1214, i64 1)
  %1216 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1217 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1218 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1219 = call i64 @bc_walk(%ASTNode %1215, { i64, i8* }* %1216, { i64, i8* }* %1217, { i64, i8* }* %1218)
  %1220 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1221 = call { i64, i8* }* @state_copy({ i64, i8* }* %1220)
  %1222 = alloca { i64, i8* }*
  store { i64, i8* }* %1221, { i64, i8* }** %1222
  %1223 = load %ASTNode, %ASTNode* %node.ptr
  %1224 = call %ASTNode @bc_node_at(%ASTNode %1223, i64 2)
  %1225 = load { i64, i8* }*, { i64, i8* }** %1222
  %1226 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1227 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1228 = call i64 @bc_walk(%ASTNode %1224, { i64, i8* }* %1225, { i64, i8* }* %1226, { i64, i8* }* %1227)
  %1229 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1230 = call { i64, i8* }* @state_copy({ i64, i8* }* %1229)
  %1231 = alloca { i64, i8* }*
  store { i64, i8* }* %1230, { i64, i8* }** %1231
  %1232 = load { i64, i8* }*, { i64, i8* }** %1222
  %1233 = load { i64, i8* }*, { i64, i8* }** %1231
  %1234 = call { i64, i8* }* @state_join({ i64, i8* }* %1232, { i64, i8* }* %1233)
  %1235 = alloca { i64, i8* }*
  store { i64, i8* }* %1234, { i64, i8* }** %1235
  %1236 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1237 = load { i64, i8* }*, { i64, i8* }** %1235
  %1238 = call i64 @state_merge_from({ i64, i8* }* %1236, { i64, i8* }* %1237)
  ret i64 0
else374:
  br label %merge375
merge375:
  %1239 = load %nyx_string*, %nyx_string** %903
  %1240 = getelementptr [4 x i8], [4 x i8]* @.str92, i32 0, i32 0
  %1241 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str92.c, i8* %1240, i64 3)
  %1242 = call i1 @nyx_string_equals(%nyx_string* %1239, %nyx_string* %1241)
  br i1 %1242, label %then376, label %else377
then376:
  %1243 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %1244 = load { i64, i8* }*, { i64, i8* }** %1243
  %1245 = alloca { i64, i8* }*
  store { i64, i8* }* %1244, { i64, i8* }** %1245
  %1246 = load { i64, i8* }*, { i64, i8* }** %1245
  %1247 = call i64 @nyx_array_get_checked({ i64, i8* }* %1246, i64 0, i64 2)
  %1248 = inttoptr i64 %1247 to %nyx_string*
  %1249 = alloca %nyx_string*
  store %nyx_string* %1248, %nyx_string** %1249
  %1250 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1251 = load %nyx_string*, %nyx_string** %1249
  %1252 = call i64 @tm_add_local({ i64, i8* }* %1250, %nyx_string* %1251)
  %1253 = load %ASTNode, %ASTNode* %node.ptr
  %1254 = call %ASTNode @bc_node_at(%ASTNode %1253, i64 1)
  %1255 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1256 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1257 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1258 = call i64 @bc_walk(%ASTNode %1254, { i64, i8* }* %1255, { i64, i8* }* %1256, { i64, i8* }* %1257)
  %1259 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1260 = call { i64, i8* }* @state_copy({ i64, i8* }* %1259)
  %1261 = alloca { i64, i8* }*
  store { i64, i8* }* %1260, { i64, i8* }** %1261
  %1262 = load %ASTNode, %ASTNode* %node.ptr
  %1263 = call %ASTNode @bc_node_at(%ASTNode %1262, i64 2)
  %1264 = load { i64, i8* }*, { i64, i8* }** %1261
  %1265 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1266 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1267 = call i64 @bc_walk(%ASTNode %1263, { i64, i8* }* %1264, { i64, i8* }* %1265, { i64, i8* }* %1266)
  %1268 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1269 = call { i64, i8* }* @state_copy({ i64, i8* }* %1268)
  %1270 = alloca { i64, i8* }*
  store { i64, i8* }* %1269, { i64, i8* }** %1270
  %1271 = load { i64, i8* }*, { i64, i8* }** %1261
  %1272 = load { i64, i8* }*, { i64, i8* }** %1270
  %1273 = call { i64, i8* }* @state_join({ i64, i8* }* %1271, { i64, i8* }* %1272)
  %1274 = alloca { i64, i8* }*
  store { i64, i8* }* %1273, { i64, i8* }** %1274
  %1275 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1276 = load { i64, i8* }*, { i64, i8* }** %1274
  %1277 = call i64 @state_merge_from({ i64, i8* }* %1275, { i64, i8* }* %1276)
  ret i64 0
else377:
  br label %merge378
merge378:
  %1278 = load %nyx_string*, %nyx_string** %903
  %1279 = getelementptr [7 x i8], [7 x i8]* @.str93, i32 0, i32 0
  %1280 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str93.c, i8* %1279, i64 6)
  %1281 = call i1 @nyx_string_equals(%nyx_string* %1278, %nyx_string* %1280)
  br i1 %1281, label %then379, label %else380
then379:
  %1282 = load %ASTNode, %ASTNode* %node.ptr
  %1283 = call %ASTNode @bc_node_at(%ASTNode %1282, i64 0)
  %1284 = alloca %ASTNode
  store %ASTNode %1283, %ASTNode* %1284
  %1285 = load %ASTNode, %ASTNode* %1284
  %1286 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1287 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1288 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1289 = call i64 @bc_walk(%ASTNode %1285, { i64, i8* }* %1286, { i64, i8* }* %1287, { i64, i8* }* %1288)
  %1290 = load %ASTNode, %ASTNode* %1284
  %1291 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1292 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1293 = call %nyx_string* @bc_aggregate_escaping_origin(%ASTNode %1290, { i64, i8* }* %1291, { i64, i8* }* %1292)
  %1294 = alloca %nyx_string*
  store %nyx_string* %1293, %nyx_string** %1294
  %1295 = load %nyx_string*, %nyx_string** %1294
  %1296 = getelementptr [1 x i8], [1 x i8]* @.str94, i32 0, i32 0
  %1297 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str94.c, i8* %1296, i64 0)
  %1298 = call i1 @nyx_string_equals(%nyx_string* %1295, %nyx_string* %1297)
  %1299 = xor i1 %1298, true
  br i1 %1299, label %then382, label %else383
then382:
  %1300 = load %nyx_string*, %nyx_string** %1294
  %1301 = call %nyx_string* @reforigin_name(%nyx_string* %1300)
  %1302 = alloca %nyx_string*
  store %nyx_string* %1301, %nyx_string** %1302
  %1303 = load %nyx_string*, %nyx_string** %1294
  %1304 = call i1 @reforigin_is_soft(%nyx_string* %1303)
  br i1 %1304, label %then385, label %else386
then385:
  %1305 = getelementptr [30 x i8], [30 x i8]* @.str95, i32 0, i32 0
  %1306 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str95.c, i8* %1305, i64 29)
  %1307 = load %nyx_string*, %nyx_string** %1302
  %1308 = call %nyx_string* @nyx_string_concat(%nyx_string* %1306, %nyx_string* %1307)
  %1309 = getelementptr [38 x i8], [38 x i8]* @.str96, i32 0, i32 0
  %1310 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str96.c, i8* %1309, i64 37)
  %1311 = call %nyx_string* @nyx_string_concat(%nyx_string* %1308, %nyx_string* %1310)
  %1312 = alloca %nyx_string*
  store %nyx_string* %1311, %nyx_string** %1312
  %1313 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %1314 = load i64, i64* %1313
  %1315 = icmp sgt i64 %1314, 0
  br i1 %1315, label %then388, label %else389
then388:
  %1316 = load %nyx_string*, %nyx_string** %1312
  %1317 = getelementptr [8 x i8], [8 x i8]* @.str97, i32 0, i32 0
  %1318 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str97.c, i8* %1317, i64 7)
  %1319 = call %nyx_string* @nyx_string_concat(%nyx_string* %1316, %nyx_string* %1318)
  %1320 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %1321 = load i64, i64* %1320
  %1322 = call %nyx_string* @nyx_string_from_int(i64 %1321)
  %1323 = call %nyx_string* @nyx_string_concat(%nyx_string* %1319, %nyx_string* %1322)
  %1324 = getelementptr [2 x i8], [2 x i8]* @.str98, i32 0, i32 0
  %1325 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str98.c, i8* %1324, i64 1)
  %1326 = call %nyx_string* @nyx_string_concat(%nyx_string* %1323, %nyx_string* %1325)
  store %nyx_string* %1326, %nyx_string** %1312
  br label %merge390
else389:
  br label %merge390
merge390:
  %1327 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1328 = load %nyx_string*, %nyx_string** %1312
  %1329 = ptrtoint %nyx_string* %1328 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1327, i64 %1329, i64 2)
  br label %merge387
else386:
  %1330 = getelementptr [30 x i8], [30 x i8]* @.str99, i32 0, i32 0
  %1331 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str99.c, i8* %1330, i64 29)
  %1332 = load %nyx_string*, %nyx_string** %1302
  %1333 = call %nyx_string* @nyx_string_concat(%nyx_string* %1331, %nyx_string* %1332)
  %1334 = getelementptr [36 x i8], [36 x i8]* @.str100, i32 0, i32 0
  %1335 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str100.c, i8* %1334, i64 35)
  %1336 = call %nyx_string* @nyx_string_concat(%nyx_string* %1333, %nyx_string* %1335)
  %1337 = alloca %nyx_string*
  store %nyx_string* %1336, %nyx_string** %1337
  %1338 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %1339 = load i64, i64* %1338
  %1340 = icmp sgt i64 %1339, 0
  br i1 %1340, label %then391, label %else392
then391:
  %1341 = load %nyx_string*, %nyx_string** %1337
  %1342 = getelementptr [8 x i8], [8 x i8]* @.str101, i32 0, i32 0
  %1343 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str101.c, i8* %1342, i64 7)
  %1344 = call %nyx_string* @nyx_string_concat(%nyx_string* %1341, %nyx_string* %1343)
  %1345 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %1346 = load i64, i64* %1345
  %1347 = call %nyx_string* @nyx_string_from_int(i64 %1346)
  %1348 = call %nyx_string* @nyx_string_concat(%nyx_string* %1344, %nyx_string* %1347)
  %1349 = getelementptr [2 x i8], [2 x i8]* @.str102, i32 0, i32 0
  %1350 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str102.c, i8* %1349, i64 1)
  %1351 = call %nyx_string* @nyx_string_concat(%nyx_string* %1348, %nyx_string* %1350)
  store %nyx_string* %1351, %nyx_string** %1337
  br label %merge393
else392:
  br label %merge393
merge393:
  %1352 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1353 = load %nyx_string*, %nyx_string** %1337
  %1354 = ptrtoint %nyx_string* %1353 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1352, i64 %1354, i64 2)
  br label %merge387
merge387:
  br label %merge384
else383:
  br label %merge384
merge384:
  %1355 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1356 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1357 = load %ASTNode, %ASTNode* %1284
  %1358 = call i64 @bc_maybe_move({ i64, i8* }* %1355, { i64, i8* }* %1356, %ASTNode %1357)
  ret i64 0
else380:
  br label %merge381
merge381:
  %1359 = load %nyx_string*, %nyx_string** %903
  %1360 = getelementptr [4 x i8], [4 x i8]* @.str103, i32 0, i32 0
  %1361 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str103.c, i8* %1360, i64 3)
  %1362 = call i1 @nyx_string_equals(%nyx_string* %1359, %nyx_string* %1361)
  br i1 %1362, label %then394, label %else395
then394:
  %1363 = load %ASTNode, %ASTNode* %node.ptr
  %1364 = call %ASTNode @bc_node_at(%ASTNode %1363, i64 2)
  %1365 = alloca %ASTNode
  store %ASTNode %1364, %ASTNode* %1365
  %1366 = load %ASTNode, %ASTNode* %1365
  %1367 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1368 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1369 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1370 = call i64 @bc_walk(%ASTNode %1366, { i64, i8* }* %1367, { i64, i8* }* %1368, { i64, i8* }* %1369)
  %1371 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1372 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1373 = load %ASTNode, %ASTNode* %1365
  %1374 = call i64 @bc_maybe_move({ i64, i8* }* %1371, { i64, i8* }* %1372, %ASTNode %1373)
  %1375 = load %ASTNode, %ASTNode* %node.ptr
  %1376 = call %ASTNode @bc_node_at(%ASTNode %1375, i64 0)
  %1377 = alloca %ASTNode
  store %ASTNode %1376, %ASTNode* %1377
  %1378 = getelementptr %ASTNode, %ASTNode* %1377, i32 0, i32 0
  %1379 = load %nyx_string*, %nyx_string** %1378
  %1380 = alloca %nyx_string*
  store %nyx_string* %1379, %nyx_string** %1380
  %1381 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %1382 = load { i64, i8* }*, { i64, i8* }** %1381
  %1383 = alloca { i64, i8* }*
  store { i64, i8* }* %1382, { i64, i8* }** %1383
  %1384 = getelementptr [1 x i8], [1 x i8]* @.str104, i32 0, i32 0
  %1385 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str104.c, i8* %1384, i64 0)
  %1386 = alloca %nyx_string*
  store %nyx_string* %1385, %nyx_string** %1386
  %1387 = load { i64, i8* }*, { i64, i8* }** %1383
  %1388 = call i64 @nyx_array_length({ i64, i8* }* %1387)
  %1389 = icmp sgt i64 %1388, 3
  br i1 %1389, label %then397, label %else398
then397:
  %1390 = load { i64, i8* }*, { i64, i8* }** %1383
  %1391 = call i64 @nyx_array_get({ i64, i8* }* %1390, i64 3)
  %1392 = inttoptr i64 %1391 to %nyx_string*
  store %nyx_string* %1392, %nyx_string** %1386
  br label %merge399
else398:
  br label %merge399
merge399:
  %1393 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1394 = load %nyx_string*, %nyx_string** %1380
  %1395 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1396 = load %nyx_string*, %nyx_string** %1386
  %1397 = call i64 @move_kind_of({ i64, i8* }* %1395, %nyx_string* %1396)
  %1398 = call i64 @tm_put({ i64, i8* }* %1393, %nyx_string* %1394, i64 %1397)
  %1399 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1400 = load %nyx_string*, %nyx_string** %1380
  %1401 = call i64 @revive({ i64, i8* }* %1399, %nyx_string* %1400)
  %1402 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1403 = load %nyx_string*, %nyx_string** %1380
  %1404 = call i64 @tm_add_local({ i64, i8* }* %1402, %nyx_string* %1403)
  %1405 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1406 = load %nyx_string*, %nyx_string** %1380
  %1407 = load %ASTNode, %ASTNode* %1365
  %1408 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1409 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1410 = call %nyx_string* @bc_escaping_origin(%ASTNode %1407, { i64, i8* }* %1408, { i64, i8* }* %1409)
  %1411 = call i64 @set_reforigin({ i64, i8* }* %1405, %nyx_string* %1406, %nyx_string* %1410)
  ret i64 0
else395:
  br label %merge396
merge396:
  %1412 = load %nyx_string*, %nyx_string** %903
  %1413 = getelementptr [6 x i8], [6 x i8]* @.str105, i32 0, i32 0
  %1414 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str105.c, i8* %1413, i64 5)
  %1415 = call i1 @nyx_string_equals(%nyx_string* %1412, %nyx_string* %1414)
  br i1 %1415, label %then400, label %else401
then400:
  %1416 = load %ASTNode, %ASTNode* %node.ptr
  %1417 = call %ASTNode @bc_node_at(%ASTNode %1416, i64 1)
  %1418 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1419 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1420 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1421 = call i64 @bc_walk(%ASTNode %1417, { i64, i8* }* %1418, { i64, i8* }* %1419, { i64, i8* }* %1420)
  ret i64 0
else401:
  br label %merge402
merge402:
  %1422 = load %nyx_string*, %nyx_string** %903
  %1423 = getelementptr [9 x i8], [9 x i8]* @.str106, i32 0, i32 0
  %1424 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str106.c, i8* %1423, i64 8)
  %1425 = call i1 @nyx_string_equals(%nyx_string* %1422, %nyx_string* %1424)
  br i1 %1425, label %then403, label %else404
then403:
  %1426 = call { i64, i8* }* @state_new()
  %1427 = alloca { i64, i8* }*
  store { i64, i8* }* %1426, { i64, i8* }** %1427
  %1428 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1429 = call { i64, i8* }* @tm_affine_names({ i64, i8* }* %1428)
  %1430 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1431 = call i8* @tm_sigs({ i64, i8* }* %1430)
  %1432 = call { i64, i8* }* @tm_new({ i64, i8* }* %1429, i8* %1431)
  %1433 = alloca { i64, i8* }*
  store { i64, i8* }* %1432, { i64, i8* }** %1433
  %1434 = load %ASTNode, %ASTNode* %node.ptr
  %1435 = load { i64, i8* }*, { i64, i8* }** %1433
  %1436 = call i64 @bc_register_params(%ASTNode %1434, { i64, i8* }* %1435)
  %1437 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1438 = load { i64, i8* }*, { i64, i8* }** %1433
  %1439 = call i64 @bc_inherit_captures({ i64, i8* }* %1437, { i64, i8* }* %1438)
  %1440 = load { i64, i8* }*, { i64, i8* }** %1433
  %1441 = call i64 @tm_mark_fn({ i64, i8* }* %1440)
  %1442 = load %ASTNode, %ASTNode* %node.ptr
  %1443 = call %ASTNode @bc_node_at(%ASTNode %1442, i64 3)
  %1444 = load { i64, i8* }*, { i64, i8* }** %1427
  %1445 = load { i64, i8* }*, { i64, i8* }** %1433
  %1446 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1447 = call i64 @bc_walk(%ASTNode %1443, { i64, i8* }* %1444, { i64, i8* }* %1445, { i64, i8* }* %1446)
  ret i64 0
else404:
  br label %merge405
merge405:
  %1448 = load %nyx_string*, %nyx_string** %903
  %1449 = getelementptr [9 x i8], [9 x i8]* @.str107, i32 0, i32 0
  %1450 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str107.c, i8* %1449, i64 8)
  %1451 = call i1 @nyx_string_equals(%nyx_string* %1448, %nyx_string* %1450)
  br i1 %1451, label %then406, label %else407
then406:
  %1452 = call { i64, i8* }* @state_new()
  %1453 = alloca { i64, i8* }*
  store { i64, i8* }* %1452, { i64, i8* }** %1453
  %1454 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1455 = call { i64, i8* }* @tm_affine_names({ i64, i8* }* %1454)
  %1456 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1457 = call i8* @tm_sigs({ i64, i8* }* %1456)
  %1458 = call { i64, i8* }* @tm_new({ i64, i8* }* %1455, i8* %1457)
  %1459 = alloca { i64, i8* }*
  store { i64, i8* }* %1458, { i64, i8* }** %1459
  %1460 = load %ASTNode, %ASTNode* %node.ptr
  %1461 = load { i64, i8* }*, { i64, i8* }** %1459
  %1462 = call i64 @bc_register_params(%ASTNode %1460, { i64, i8* }* %1461)
  %1463 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1464 = load { i64, i8* }*, { i64, i8* }** %1459
  %1465 = call i64 @bc_inherit_captures({ i64, i8* }* %1463, { i64, i8* }* %1464)
  %1466 = load { i64, i8* }*, { i64, i8* }** %1459
  %1467 = call i64 @tm_mark_fn({ i64, i8* }* %1466)
  %1468 = load %ASTNode, %ASTNode* %node.ptr
  %1469 = call %ASTNode @bc_node_at(%ASTNode %1468, i64 3)
  %1470 = load { i64, i8* }*, { i64, i8* }** %1453
  %1471 = load { i64, i8* }*, { i64, i8* }** %1459
  %1472 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1473 = call i64 @bc_walk(%ASTNode %1469, { i64, i8* }* %1470, { i64, i8* }* %1471, { i64, i8* }* %1472)
  ret i64 0
else407:
  br label %merge408
merge408:
  %1474 = load %nyx_string*, %nyx_string** %903
  %1475 = getelementptr [5 x i8], [5 x i8]* @.str108, i32 0, i32 0
  %1476 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str108.c, i8* %1475, i64 4)
  %1477 = call i1 @nyx_string_equals(%nyx_string* %1474, %nyx_string* %1476)
  br i1 %1477, label %then409, label %else410
then409:
  %1478 = load %ASTNode, %ASTNode* %node.ptr
  %1479 = call { i64, i8* }* @bc_array_at(%ASTNode %1478, i64 1)
  %1480 = alloca { i64, i8* }*
  store { i64, i8* }* %1479, { i64, i8* }** %1480
  %1481 = alloca i64
  store i64 0, i64* %1481
  %1482 = call i8* @llvm.stacksave()
  br label %while_cond412
while_cond412:
  %1483 = load i64, i64* %1481
  %1484 = load { i64, i8* }*, { i64, i8* }** %1480
  %1485 = call i64 @nyx_array_length({ i64, i8* }* %1484)
  %1486 = icmp slt i64 %1483, %1485
  br i1 %1486, label %while_body413, label %while_end414
while_body413:
  call void @llvm.stackrestore(i8* %1482)
  %1487 = load { i64, i8* }*, { i64, i8* }** %1480
  %1488 = load i64, i64* %1481
  %1489 = call i64 @nyx_array_get({ i64, i8* }* %1487, i64 %1488)
  %1490 = inttoptr i64 %1489 to { i64, i8* }*
  %1491 = call i64 @nyx_array_get({ i64, i8* }* %1490, i64 0)
  %1492 = call i64 @nyx_array_get({ i64, i8* }* %1490, i64 1)
  %1493 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %1490, i64 2)
  %1494 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %1490, i64 3)
  %1495 = inttoptr i64 %1491 to %nyx_string*
  %1496 = inttoptr i64 %1492 to { i64, i8* }*
  %1497 = alloca %ASTNode
  %1498 = getelementptr inbounds %ASTNode, %ASTNode* %1497, i32 0, i32 0
  store %nyx_string* %1495, %nyx_string** %1498
  %1499 = getelementptr inbounds %ASTNode, %ASTNode* %1497, i32 0, i32 1
  store { i64, i8* }* %1496, { i64, i8* }** %1499
  %1500 = getelementptr inbounds %ASTNode, %ASTNode* %1497, i32 0, i32 2
  store i64 %1493, i64* %1500
  %1501 = getelementptr inbounds %ASTNode, %ASTNode* %1497, i32 0, i32 3
  store i64 %1494, i64* %1501
  %1502 = load %ASTNode, %ASTNode* %1497
  %1503 = alloca %ASTNode
  store %ASTNode %1502, %ASTNode* %1503
  %1504 = load %ASTNode, %ASTNode* %1503
  %1505 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1506 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1507 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1508 = call i64 @bc_walk(%ASTNode %1504, { i64, i8* }* %1505, { i64, i8* }* %1506, { i64, i8* }* %1507)
  %1509 = load i64, i64* %1481
  %1510 = add i64 %1509, 1
  store i64 %1510, i64* %1481
  br label %while_cond412
while_end414:
  ret i64 0
else410:
  br label %merge411
merge411:
  %1511 = load %nyx_string*, %nyx_string** %903
  %1512 = getelementptr [11 x i8], [11 x i8]* @.str109, i32 0, i32 0
  %1513 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str109.c, i8* %1512, i64 10)
  %1514 = call i1 @nyx_string_equals(%nyx_string* %1511, %nyx_string* %1513)
  br i1 %1514, label %then415, label %else416
then415:
  %1515 = load %ASTNode, %ASTNode* %node.ptr
  %1516 = call { i64, i8* }* @bc_array_at(%ASTNode %1515, i64 2)
  %1517 = alloca { i64, i8* }*
  store { i64, i8* }* %1516, { i64, i8* }** %1517
  %1518 = alloca i64
  store i64 0, i64* %1518
  %1519 = call i8* @llvm.stacksave()
  br label %while_cond418
while_cond418:
  %1520 = load i64, i64* %1518
  %1521 = load { i64, i8* }*, { i64, i8* }** %1517
  %1522 = call i64 @nyx_array_length({ i64, i8* }* %1521)
  %1523 = icmp slt i64 %1520, %1522
  br i1 %1523, label %while_body419, label %while_end420
while_body419:
  call void @llvm.stackrestore(i8* %1519)
  %1524 = load { i64, i8* }*, { i64, i8* }** %1517
  %1525 = load i64, i64* %1518
  %1526 = call i64 @nyx_array_get({ i64, i8* }* %1524, i64 %1525)
  %1527 = inttoptr i64 %1526 to { i64, i8* }*
  %1528 = call i64 @nyx_array_get({ i64, i8* }* %1527, i64 0)
  %1529 = call i64 @nyx_array_get({ i64, i8* }* %1527, i64 1)
  %1530 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %1527, i64 2)
  %1531 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %1527, i64 3)
  %1532 = inttoptr i64 %1528 to %nyx_string*
  %1533 = inttoptr i64 %1529 to { i64, i8* }*
  %1534 = alloca %ASTNode
  %1535 = getelementptr inbounds %ASTNode, %ASTNode* %1534, i32 0, i32 0
  store %nyx_string* %1532, %nyx_string** %1535
  %1536 = getelementptr inbounds %ASTNode, %ASTNode* %1534, i32 0, i32 1
  store { i64, i8* }* %1533, { i64, i8* }** %1536
  %1537 = getelementptr inbounds %ASTNode, %ASTNode* %1534, i32 0, i32 2
  store i64 %1530, i64* %1537
  %1538 = getelementptr inbounds %ASTNode, %ASTNode* %1534, i32 0, i32 3
  store i64 %1531, i64* %1538
  %1539 = load %ASTNode, %ASTNode* %1534
  %1540 = alloca %ASTNode
  store %ASTNode %1539, %ASTNode* %1540
  %1541 = load %ASTNode, %ASTNode* %1540
  %1542 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1543 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1544 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1545 = call i64 @bc_walk(%ASTNode %1541, { i64, i8* }* %1542, { i64, i8* }* %1543, { i64, i8* }* %1544)
  %1546 = load i64, i64* %1518
  %1547 = add i64 %1546, 1
  store i64 %1547, i64* %1518
  br label %while_cond418
while_end420:
  ret i64 0
else416:
  br label %merge417
merge417:
  %1548 = load %nyx_string*, %nyx_string** %903
  %1549 = getelementptr [7 x i8], [7 x i8]* @.str110, i32 0, i32 0
  %1550 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str110.c, i8* %1549, i64 6)
  %1551 = call i1 @nyx_string_equals(%nyx_string* %1548, %nyx_string* %1550)
  br i1 %1551, label %then421, label %else422
then421:
  %1552 = load %ASTNode, %ASTNode* %node.ptr
  %1553 = call %ASTNode @bc_node_at(%ASTNode %1552, i64 0)
  %1554 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1555 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1556 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1557 = call i64 @bc_walk(%ASTNode %1553, { i64, i8* }* %1554, { i64, i8* }* %1555, { i64, i8* }* %1556)
  ret i64 0
else422:
  br label %merge423
merge423:
  %1558 = load %nyx_string*, %nyx_string** %903
  %1559 = getelementptr [6 x i8], [6 x i8]* @.str111, i32 0, i32 0
  %1560 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str111.c, i8* %1559, i64 5)
  %1561 = call i1 @nyx_string_equals(%nyx_string* %1558, %nyx_string* %1560)
  br i1 %1561, label %then424, label %else425
then424:
  %1562 = load %ASTNode, %ASTNode* %node.ptr
  %1563 = call %ASTNode @bc_node_at(%ASTNode %1562, i64 1)
  %1564 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1565 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1566 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1567 = call i64 @bc_walk(%ASTNode %1563, { i64, i8* }* %1564, { i64, i8* }* %1565, { i64, i8* }* %1566)
  %1568 = load %ASTNode, %ASTNode* %node.ptr
  %1569 = call %ASTNode @bc_node_at(%ASTNode %1568, i64 2)
  %1570 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1571 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1572 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1573 = call i64 @bc_walk(%ASTNode %1569, { i64, i8* }* %1570, { i64, i8* }* %1571, { i64, i8* }* %1572)
  ret i64 0
else425:
  br label %merge426
merge426:
  %1574 = load %nyx_string*, %nyx_string** %903
  %1575 = getelementptr [5 x i8], [5 x i8]* @.str112, i32 0, i32 0
  %1576 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str112.c, i8* %1575, i64 4)
  %1577 = call i1 @nyx_string_equals(%nyx_string* %1574, %nyx_string* %1576)
  br i1 %1577, label %then427, label %else428
then427:
  %1578 = load %ASTNode, %ASTNode* %node.ptr
  %1579 = call %ASTNode @bc_node_at(%ASTNode %1578, i64 1)
  %1580 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1581 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1582 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1583 = call i64 @bc_walk(%ASTNode %1579, { i64, i8* }* %1580, { i64, i8* }* %1581, { i64, i8* }* %1582)
  ret i64 0
else428:
  br label %merge429
merge429:
  %1584 = load %nyx_string*, %nyx_string** %903
  %1585 = getelementptr [5 x i8], [5 x i8]* @.str113, i32 0, i32 0
  %1586 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str113.c, i8* %1585, i64 4)
  %1587 = call i1 @nyx_string_equals(%nyx_string* %1584, %nyx_string* %1586)
  br i1 %1587, label %then430, label %else431
then430:
  %1588 = load %ASTNode, %ASTNode* %node.ptr
  %1589 = call %ASTNode @bc_node_at(%ASTNode %1588, i64 0)
  %1590 = alloca %ASTNode
  store %ASTNode %1589, %ASTNode* %1590
  %1591 = load %ASTNode, %ASTNode* %node.ptr
  %1592 = call { i64, i8* }* @bc_array_at(%ASTNode %1591, i64 1)
  %1593 = alloca { i64, i8* }*
  store { i64, i8* }* %1592, { i64, i8* }** %1593
  %1594 = getelementptr %ASTNode, %ASTNode* %1590, i32 0, i32 0
  %1595 = load %nyx_string*, %nyx_string** %1594
  %1596 = getelementptr [11 x i8], [11 x i8]* @.str114, i32 0, i32 0
  %1597 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str114.c, i8* %1596, i64 10)
  %1598 = call i1 @nyx_string_equals(%nyx_string* %1595, %nyx_string* %1597)
  br i1 %1598, label %then433, label %else434
then433:
  %1599 = load %ASTNode, %ASTNode* %1590
  %1600 = call %nyx_string* @place_of(%ASTNode %1599)
  %1601 = getelementptr [5 x i8], [5 x i8]* @.str115, i32 0, i32 0
  %1602 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str115.c, i8* %1601, i64 4)
  %1603 = call i1 @nyx_string_equals(%nyx_string* %1600, %nyx_string* %1602)
  br i1 %1603, label %then436, label %else437
then436:
  %1604 = load { i64, i8* }*, { i64, i8* }** %1593
  %1605 = call i64 @nyx_array_length({ i64, i8* }* %1604)
  %1606 = icmp sge i64 %1605, 1
  br i1 %1606, label %then439, label %else440
then439:
  %1607 = load { i64, i8* }*, { i64, i8* }** %1593
  %1608 = call i64 @nyx_array_get({ i64, i8* }* %1607, i64 0)
  %1609 = inttoptr i64 %1608 to { i64, i8* }*
  %1610 = call i64 @nyx_array_get({ i64, i8* }* %1609, i64 0)
  %1611 = call i64 @nyx_array_get({ i64, i8* }* %1609, i64 1)
  %1612 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %1609, i64 2)
  %1613 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %1609, i64 3)
  %1614 = inttoptr i64 %1610 to %nyx_string*
  %1615 = inttoptr i64 %1611 to { i64, i8* }*
  %1616 = alloca %ASTNode
  %1617 = getelementptr inbounds %ASTNode, %ASTNode* %1616, i32 0, i32 0
  store %nyx_string* %1614, %nyx_string** %1617
  %1618 = getelementptr inbounds %ASTNode, %ASTNode* %1616, i32 0, i32 1
  store { i64, i8* }* %1615, { i64, i8* }** %1618
  %1619 = getelementptr inbounds %ASTNode, %ASTNode* %1616, i32 0, i32 2
  store i64 %1612, i64* %1619
  %1620 = getelementptr inbounds %ASTNode, %ASTNode* %1616, i32 0, i32 3
  store i64 %1613, i64* %1620
  %1621 = load %ASTNode, %ASTNode* %1616
  %1622 = alloca %ASTNode
  store %ASTNode %1621, %ASTNode* %1622
  %1623 = load %ASTNode, %ASTNode* %1622
  %1624 = call %nyx_string* @place_path(%ASTNode %1623)
  %1625 = alloca %nyx_string*
  store %nyx_string* %1624, %nyx_string** %1625
  %1626 = load %nyx_string*, %nyx_string** %1625
  %1627 = getelementptr [1 x i8], [1 x i8]* @.str116, i32 0, i32 0
  %1628 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str116.c, i8* %1627, i64 0)
  %1629 = call i1 @nyx_string_equals(%nyx_string* %1626, %nyx_string* %1628)
  %1630 = xor i1 %1629, true
  br i1 %1630, label %then442, label %else443
then442:
  %1631 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1632 = load %nyx_string*, %nyx_string** %1625
  %1633 = call i1 @is_freed({ i64, i8* }* %1631, %nyx_string* %1632)
  br i1 %1633, label %then445, label %else446
then445:
  %1634 = getelementptr [26 x i8], [26 x i8]* @.str117, i32 0, i32 0
  %1635 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str117.c, i8* %1634, i64 25)
  %1636 = load %nyx_string*, %nyx_string** %1625
  %1637 = call %nyx_string* @nyx_string_concat(%nyx_string* %1635, %nyx_string* %1636)
  %1638 = getelementptr [2 x i8], [2 x i8]* @.str118, i32 0, i32 0
  %1639 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str118.c, i8* %1638, i64 1)
  %1640 = call %nyx_string* @nyx_string_concat(%nyx_string* %1637, %nyx_string* %1639)
  %1641 = alloca %nyx_string*
  store %nyx_string* %1640, %nyx_string** %1641
  %1642 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %1643 = load i64, i64* %1642
  %1644 = icmp sgt i64 %1643, 0
  br i1 %1644, label %then448, label %else449
then448:
  %1645 = load %nyx_string*, %nyx_string** %1641
  %1646 = getelementptr [8 x i8], [8 x i8]* @.str119, i32 0, i32 0
  %1647 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str119.c, i8* %1646, i64 7)
  %1648 = call %nyx_string* @nyx_string_concat(%nyx_string* %1645, %nyx_string* %1647)
  %1649 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %1650 = load i64, i64* %1649
  %1651 = call %nyx_string* @nyx_string_from_int(i64 %1650)
  %1652 = call %nyx_string* @nyx_string_concat(%nyx_string* %1648, %nyx_string* %1651)
  %1653 = getelementptr [2 x i8], [2 x i8]* @.str120, i32 0, i32 0
  %1654 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str120.c, i8* %1653, i64 1)
  %1655 = call %nyx_string* @nyx_string_concat(%nyx_string* %1652, %nyx_string* %1654)
  store %nyx_string* %1655, %nyx_string** %1641
  br label %merge450
else449:
  br label %merge450
merge450:
  %1656 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1657 = load %nyx_string*, %nyx_string** %1641
  %1658 = ptrtoint %nyx_string* %1657 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1656, i64 %1658, i64 2)
  br label %merge447
else446:
  %1659 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1660 = load %nyx_string*, %nyx_string** %1625
  %1661 = call i64 @mark_freed({ i64, i8* }* %1659, %nyx_string* %1660)
  br label %merge447
merge447:
  %1662 = alloca i64
  store i64 1, i64* %1662
  %1663 = call i8* @llvm.stacksave()
  br label %while_cond451
while_cond451:
  %1664 = load i64, i64* %1662
  %1665 = load { i64, i8* }*, { i64, i8* }** %1593
  %1666 = call i64 @nyx_array_length({ i64, i8* }* %1665)
  %1667 = icmp slt i64 %1664, %1666
  br i1 %1667, label %while_body452, label %while_end453
while_body452:
  call void @llvm.stackrestore(i8* %1663)
  %1668 = load { i64, i8* }*, { i64, i8* }** %1593
  %1669 = load i64, i64* %1662
  %1670 = call i64 @nyx_array_get({ i64, i8* }* %1668, i64 %1669)
  %1671 = inttoptr i64 %1670 to { i64, i8* }*
  %1672 = call i64 @nyx_array_get({ i64, i8* }* %1671, i64 0)
  %1673 = call i64 @nyx_array_get({ i64, i8* }* %1671, i64 1)
  %1674 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %1671, i64 2)
  %1675 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %1671, i64 3)
  %1676 = inttoptr i64 %1672 to %nyx_string*
  %1677 = inttoptr i64 %1673 to { i64, i8* }*
  %1678 = alloca %ASTNode
  %1679 = getelementptr inbounds %ASTNode, %ASTNode* %1678, i32 0, i32 0
  store %nyx_string* %1676, %nyx_string** %1679
  %1680 = getelementptr inbounds %ASTNode, %ASTNode* %1678, i32 0, i32 1
  store { i64, i8* }* %1677, { i64, i8* }** %1680
  %1681 = getelementptr inbounds %ASTNode, %ASTNode* %1678, i32 0, i32 2
  store i64 %1674, i64* %1681
  %1682 = getelementptr inbounds %ASTNode, %ASTNode* %1678, i32 0, i32 3
  store i64 %1675, i64* %1682
  %1683 = load %ASTNode, %ASTNode* %1678
  %1684 = alloca %ASTNode
  store %ASTNode %1683, %ASTNode* %1684
  %1685 = load %ASTNode, %ASTNode* %1684
  %1686 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1687 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1688 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1689 = call i64 @bc_walk(%ASTNode %1685, { i64, i8* }* %1686, { i64, i8* }* %1687, { i64, i8* }* %1688)
  %1690 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1691 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1692 = load %ASTNode, %ASTNode* %1684
  %1693 = call i64 @bc_maybe_move({ i64, i8* }* %1690, { i64, i8* }* %1691, %ASTNode %1692)
  %1694 = load i64, i64* %1662
  %1695 = add i64 %1694, 1
  store i64 %1695, i64* %1662
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
  %1696 = load %ASTNode, %ASTNode* %1590
  %1697 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1698 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1699 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1700 = call i64 @bc_walk(%ASTNode %1696, { i64, i8* }* %1697, { i64, i8* }* %1698, { i64, i8* }* %1699)
  %1701 = alloca i64
  store i64 0, i64* %1701
  %1702 = call i8* @llvm.stacksave()
  br label %while_cond454
while_cond454:
  %1703 = load i64, i64* %1701
  %1704 = load { i64, i8* }*, { i64, i8* }** %1593
  %1705 = call i64 @nyx_array_length({ i64, i8* }* %1704)
  %1706 = icmp slt i64 %1703, %1705
  br i1 %1706, label %while_body455, label %while_end456
while_body455:
  call void @llvm.stackrestore(i8* %1702)
  %1707 = load { i64, i8* }*, { i64, i8* }** %1593
  %1708 = load i64, i64* %1701
  %1709 = call i64 @nyx_array_get({ i64, i8* }* %1707, i64 %1708)
  %1710 = inttoptr i64 %1709 to { i64, i8* }*
  %1711 = call i64 @nyx_array_get({ i64, i8* }* %1710, i64 0)
  %1712 = call i64 @nyx_array_get({ i64, i8* }* %1710, i64 1)
  %1713 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %1710, i64 2)
  %1714 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %1710, i64 3)
  %1715 = inttoptr i64 %1711 to %nyx_string*
  %1716 = inttoptr i64 %1712 to { i64, i8* }*
  %1717 = alloca %ASTNode
  %1718 = getelementptr inbounds %ASTNode, %ASTNode* %1717, i32 0, i32 0
  store %nyx_string* %1715, %nyx_string** %1718
  %1719 = getelementptr inbounds %ASTNode, %ASTNode* %1717, i32 0, i32 1
  store { i64, i8* }* %1716, { i64, i8* }** %1719
  %1720 = getelementptr inbounds %ASTNode, %ASTNode* %1717, i32 0, i32 2
  store i64 %1713, i64* %1720
  %1721 = getelementptr inbounds %ASTNode, %ASTNode* %1717, i32 0, i32 3
  store i64 %1714, i64* %1721
  %1722 = load %ASTNode, %ASTNode* %1717
  %1723 = alloca %ASTNode
  store %ASTNode %1722, %ASTNode* %1723
  %1724 = load %ASTNode, %ASTNode* %1723
  %1725 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1726 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1727 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1728 = call i64 @bc_walk(%ASTNode %1724, { i64, i8* }* %1725, { i64, i8* }* %1726, { i64, i8* }* %1727)
  %1729 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1730 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1731 = load %ASTNode, %ASTNode* %1723
  %1732 = call i64 @bc_maybe_move({ i64, i8* }* %1729, { i64, i8* }* %1730, %ASTNode %1731)
  %1733 = load i64, i64* %1701
  %1734 = add i64 %1733, 1
  store i64 %1734, i64* %1701
  br label %while_cond454
while_end456:
  ret i64 0
else431:
  br label %merge432
merge432:
  %1735 = load %nyx_string*, %nyx_string** %903
  %1736 = getelementptr [6 x i8], [6 x i8]* @.str121, i32 0, i32 0
  %1737 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str121.c, i8* %1736, i64 5)
  %1738 = call i1 @nyx_string_equals(%nyx_string* %1735, %nyx_string* %1737)
  br i1 %1738, label %then457, label %else458
then457:
  %1739 = load %ASTNode, %ASTNode* %node.ptr
  %1740 = call { i64, i8* }* @bc_array_at(%ASTNode %1739, i64 0)
  %1741 = alloca { i64, i8* }*
  store { i64, i8* }* %1740, { i64, i8* }** %1741
  %1742 = alloca i64
  store i64 0, i64* %1742
  %1743 = call i8* @llvm.stacksave()
  br label %while_cond460
while_cond460:
  %1744 = load i64, i64* %1742
  %1745 = load { i64, i8* }*, { i64, i8* }** %1741
  %1746 = call i64 @nyx_array_length({ i64, i8* }* %1745)
  %1747 = icmp slt i64 %1744, %1746
  br i1 %1747, label %while_body461, label %while_end462
while_body461:
  call void @llvm.stackrestore(i8* %1743)
  %1748 = load { i64, i8* }*, { i64, i8* }** %1741
  %1749 = load i64, i64* %1742
  %1750 = call i64 @nyx_array_get({ i64, i8* }* %1748, i64 %1749)
  %1751 = inttoptr i64 %1750 to { i64, i8* }*
  %1752 = call i64 @nyx_array_get({ i64, i8* }* %1751, i64 0)
  %1753 = call i64 @nyx_array_get({ i64, i8* }* %1751, i64 1)
  %1754 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %1751, i64 2)
  %1755 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %1751, i64 3)
  %1756 = inttoptr i64 %1752 to %nyx_string*
  %1757 = inttoptr i64 %1753 to { i64, i8* }*
  %1758 = alloca %ASTNode
  %1759 = getelementptr inbounds %ASTNode, %ASTNode* %1758, i32 0, i32 0
  store %nyx_string* %1756, %nyx_string** %1759
  %1760 = getelementptr inbounds %ASTNode, %ASTNode* %1758, i32 0, i32 1
  store { i64, i8* }* %1757, { i64, i8* }** %1760
  %1761 = getelementptr inbounds %ASTNode, %ASTNode* %1758, i32 0, i32 2
  store i64 %1754, i64* %1761
  %1762 = getelementptr inbounds %ASTNode, %ASTNode* %1758, i32 0, i32 3
  store i64 %1755, i64* %1762
  %1763 = load %ASTNode, %ASTNode* %1758
  %1764 = alloca %ASTNode
  store %ASTNode %1763, %ASTNode* %1764
  %1765 = load %ASTNode, %ASTNode* %1764
  %1766 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1767 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1768 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1769 = call i64 @bc_walk(%ASTNode %1765, { i64, i8* }* %1766, { i64, i8* }* %1767, { i64, i8* }* %1768)
  %1770 = load i64, i64* %1742
  %1771 = add i64 %1770, 1
  store i64 %1771, i64* %1742
  br label %while_cond460
while_end462:
  ret i64 0
else458:
  br label %merge459
merge459:
  %1772 = load %nyx_string*, %nyx_string** %903
  %1773 = getelementptr [12 x i8], [12 x i8]* @.str122, i32 0, i32 0
  %1774 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str122.c, i8* %1773, i64 11)
  %1775 = call i1 @nyx_string_equals(%nyx_string* %1772, %nyx_string* %1774)
  br i1 %1775, label %then463, label %else464
then463:
  %1776 = load %ASTNode, %ASTNode* %node.ptr
  %1777 = call { i64, i8* }* @bc_array_at(%ASTNode %1776, i64 1)
  %1778 = alloca { i64, i8* }*
  store { i64, i8* }* %1777, { i64, i8* }** %1778
  %1779 = alloca i64
  store i64 0, i64* %1779
  %1780 = call i8* @llvm.stacksave()
  br label %while_cond466
while_cond466:
  %1781 = load i64, i64* %1779
  %1782 = load { i64, i8* }*, { i64, i8* }** %1778
  %1783 = call i64 @nyx_array_length({ i64, i8* }* %1782)
  %1784 = icmp slt i64 %1781, %1783
  br i1 %1784, label %while_body467, label %while_end468
while_body467:
  call void @llvm.stackrestore(i8* %1780)
  %1785 = load { i64, i8* }*, { i64, i8* }** %1778
  %1786 = load i64, i64* %1779
  %1787 = call i64 @nyx_array_get({ i64, i8* }* %1785, i64 %1786)
  %1788 = inttoptr i64 %1787 to { i64, i8* }*
  %1789 = call i64 @nyx_array_get({ i64, i8* }* %1788, i64 0)
  %1790 = call i64 @nyx_array_get({ i64, i8* }* %1788, i64 1)
  %1791 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %1788, i64 2)
  %1792 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %1788, i64 3)
  %1793 = inttoptr i64 %1789 to %nyx_string*
  %1794 = inttoptr i64 %1790 to { i64, i8* }*
  %1795 = alloca %ASTNode
  %1796 = getelementptr inbounds %ASTNode, %ASTNode* %1795, i32 0, i32 0
  store %nyx_string* %1793, %nyx_string** %1796
  %1797 = getelementptr inbounds %ASTNode, %ASTNode* %1795, i32 0, i32 1
  store { i64, i8* }* %1794, { i64, i8* }** %1797
  %1798 = getelementptr inbounds %ASTNode, %ASTNode* %1795, i32 0, i32 2
  store i64 %1791, i64* %1798
  %1799 = getelementptr inbounds %ASTNode, %ASTNode* %1795, i32 0, i32 3
  store i64 %1792, i64* %1799
  %1800 = load %ASTNode, %ASTNode* %1795
  %1801 = alloca %ASTNode
  store %ASTNode %1800, %ASTNode* %1801
  %1802 = load %ASTNode, %ASTNode* %1801
  %1803 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1804 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1805 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1806 = call i64 @bc_walk(%ASTNode %1802, { i64, i8* }* %1803, { i64, i8* }* %1804, { i64, i8* }* %1805)
  %1807 = load i64, i64* %1779
  %1808 = add i64 %1807, 1
  store i64 %1808, i64* %1779
  br label %while_cond466
while_end468:
  ret i64 0
else464:
  br label %merge465
merge465:
  %1809 = load %nyx_string*, %nyx_string** %903
  %1810 = getelementptr [6 x i8], [6 x i8]* @.str123, i32 0, i32 0
  %1811 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str123.c, i8* %1810, i64 5)
  %1812 = call i1 @nyx_string_equals(%nyx_string* %1809, %nyx_string* %1811)
  br i1 %1812, label %then469, label %else470
then469:
  %1813 = load %ASTNode, %ASTNode* %node.ptr
  %1814 = call %ASTNode @bc_node_at(%ASTNode %1813, i64 0)
  %1815 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1816 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1817 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1818 = call i64 @bc_walk(%ASTNode %1814, { i64, i8* }* %1815, { i64, i8* }* %1816, { i64, i8* }* %1817)
  %1819 = load %ASTNode, %ASTNode* %node.ptr
  %1820 = call %ASTNode @bc_node_at(%ASTNode %1819, i64 1)
  %1821 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1822 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1823 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1824 = call i64 @bc_walk(%ASTNode %1820, { i64, i8* }* %1821, { i64, i8* }* %1822, { i64, i8* }* %1823)
  ret i64 0
else470:
  br label %merge471
merge471:
  %1825 = load %nyx_string*, %nyx_string** %903
  %1826 = getelementptr [6 x i8], [6 x i8]* @.str124, i32 0, i32 0
  %1827 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str124.c, i8* %1826, i64 5)
  %1828 = call i1 @nyx_string_equals(%nyx_string* %1825, %nyx_string* %1827)
  br i1 %1828, label %then472, label %else473
then472:
  %1829 = load %ASTNode, %ASTNode* %node.ptr
  %1830 = call %ASTNode @bc_node_at(%ASTNode %1829, i64 0)
  %1831 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1832 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1833 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1834 = call i64 @bc_walk(%ASTNode %1830, { i64, i8* }* %1831, { i64, i8* }* %1832, { i64, i8* }* %1833)
  %1835 = load %ASTNode, %ASTNode* %node.ptr
  %1836 = call %ASTNode @bc_node_at(%ASTNode %1835, i64 1)
  %1837 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1838 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1839 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1840 = call i64 @bc_walk(%ASTNode %1836, { i64, i8* }* %1837, { i64, i8* }* %1838, { i64, i8* }* %1839)
  ret i64 0
else473:
  br label %merge474
merge474:
  %1841 = load %nyx_string*, %nyx_string** %903
  %1842 = getelementptr [7 x i8], [7 x i8]* @.str125, i32 0, i32 0
  %1843 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str125.c, i8* %1842, i64 6)
  %1844 = call i1 @nyx_string_equals(%nyx_string* %1841, %nyx_string* %1843)
  br i1 %1844, label %then475, label %else476
then475:
  %1845 = load %ASTNode, %ASTNode* %node.ptr
  %1846 = call %ASTNode @bc_node_at(%ASTNode %1845, i64 1)
  %1847 = alloca %ASTNode
  store %ASTNode %1846, %ASTNode* %1847
  %1848 = load %ASTNode, %ASTNode* %1847
  %1849 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1850 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1851 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1852 = call i64 @bc_walk(%ASTNode %1848, { i64, i8* }* %1849, { i64, i8* }* %1850, { i64, i8* }* %1851)
  %1853 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1854 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1855 = load %ASTNode, %ASTNode* %1847
  %1856 = call i64 @bc_maybe_move({ i64, i8* }* %1853, { i64, i8* }* %1854, %ASTNode %1855)
  %1857 = load %ASTNode, %ASTNode* %node.ptr
  %1858 = call %ASTNode @bc_node_at(%ASTNode %1857, i64 0)
  %1859 = alloca %ASTNode
  store %ASTNode %1858, %ASTNode* %1859
  %1860 = getelementptr %ASTNode, %ASTNode* %1859, i32 0, i32 0
  %1861 = load %nyx_string*, %nyx_string** %1860
  %1862 = alloca %nyx_string*
  store %nyx_string* %1861, %nyx_string** %1862
  %1863 = load %nyx_string*, %nyx_string** %1862
  %1864 = getelementptr [1 x i8], [1 x i8]* @.str126, i32 0, i32 0
  %1865 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str126.c, i8* %1864, i64 0)
  %1866 = call i1 @nyx_string_equals(%nyx_string* %1863, %nyx_string* %1865)
  %1867 = xor i1 %1866, true
  br i1 %1867, label %then478, label %else479
then478:
  %1868 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1869 = load %nyx_string*, %nyx_string** %1862
  %1870 = call i64 @revive({ i64, i8* }* %1868, %nyx_string* %1869)
  %1871 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1872 = load %nyx_string*, %nyx_string** %1862
  %1873 = load %ASTNode, %ASTNode* %1847
  %1874 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1875 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1876 = call %nyx_string* @bc_escaping_origin(%ASTNode %1873, { i64, i8* }* %1874, { i64, i8* }* %1875)
  %1877 = call i64 @set_reforigin({ i64, i8* }* %1871, %nyx_string* %1872, %nyx_string* %1876)
  %1878 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1879 = load %nyx_string*, %nyx_string** %1862
  %1880 = call i1 @tm_is_local({ i64, i8* }* %1878, %nyx_string* %1879)
  %1881 = xor i1 %1880, true
  br i1 %1881, label %then481, label %else482
then481:
  %1882 = load %ASTNode, %ASTNode* %1847
  %1883 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1884 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1885 = call %nyx_string* @bc_escaping_origin(%ASTNode %1882, { i64, i8* }* %1883, { i64, i8* }* %1884)
  %1886 = alloca %nyx_string*
  store %nyx_string* %1885, %nyx_string** %1886
  %1887 = load %nyx_string*, %nyx_string** %1886
  %1888 = getelementptr [1 x i8], [1 x i8]* @.str127, i32 0, i32 0
  %1889 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str127.c, i8* %1888, i64 0)
  %1890 = call i1 @nyx_string_equals(%nyx_string* %1887, %nyx_string* %1889)
  %1891 = xor i1 %1890, true
  br i1 %1891, label %then484, label %else485
then484:
  %1892 = load %nyx_string*, %nyx_string** %1886
  %1893 = call %nyx_string* @reforigin_name(%nyx_string* %1892)
  %1894 = alloca %nyx_string*
  store %nyx_string* %1893, %nyx_string** %1894
  %1895 = load %nyx_string*, %nyx_string** %1886
  %1896 = call i1 @reforigin_is_soft(%nyx_string* %1895)
  br i1 %1896, label %then487, label %else488
then487:
  %1897 = getelementptr [30 x i8], [30 x i8]* @.str128, i32 0, i32 0
  %1898 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str128.c, i8* %1897, i64 29)
  %1899 = load %nyx_string*, %nyx_string** %1894
  %1900 = call %nyx_string* @nyx_string_concat(%nyx_string* %1898, %nyx_string* %1899)
  %1901 = getelementptr [38 x i8], [38 x i8]* @.str129, i32 0, i32 0
  %1902 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str129.c, i8* %1901, i64 37)
  %1903 = call %nyx_string* @nyx_string_concat(%nyx_string* %1900, %nyx_string* %1902)
  %1904 = alloca %nyx_string*
  store %nyx_string* %1903, %nyx_string** %1904
  %1905 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %1906 = load i64, i64* %1905
  %1907 = icmp sgt i64 %1906, 0
  br i1 %1907, label %then490, label %else491
then490:
  %1908 = load %nyx_string*, %nyx_string** %1904
  %1909 = getelementptr [8 x i8], [8 x i8]* @.str130, i32 0, i32 0
  %1910 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str130.c, i8* %1909, i64 7)
  %1911 = call %nyx_string* @nyx_string_concat(%nyx_string* %1908, %nyx_string* %1910)
  %1912 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %1913 = load i64, i64* %1912
  %1914 = call %nyx_string* @nyx_string_from_int(i64 %1913)
  %1915 = call %nyx_string* @nyx_string_concat(%nyx_string* %1911, %nyx_string* %1914)
  %1916 = getelementptr [2 x i8], [2 x i8]* @.str131, i32 0, i32 0
  %1917 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str131.c, i8* %1916, i64 1)
  %1918 = call %nyx_string* @nyx_string_concat(%nyx_string* %1915, %nyx_string* %1917)
  store %nyx_string* %1918, %nyx_string** %1904
  br label %merge492
else491:
  br label %merge492
merge492:
  %1919 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1920 = load %nyx_string*, %nyx_string** %1904
  %1921 = ptrtoint %nyx_string* %1920 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1919, i64 %1921, i64 2)
  br label %merge489
else488:
  %1922 = getelementptr [30 x i8], [30 x i8]* @.str132, i32 0, i32 0
  %1923 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str132.c, i8* %1922, i64 29)
  %1924 = load %nyx_string*, %nyx_string** %1894
  %1925 = call %nyx_string* @nyx_string_concat(%nyx_string* %1923, %nyx_string* %1924)
  %1926 = getelementptr [39 x i8], [39 x i8]* @.str133, i32 0, i32 0
  %1927 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str133.c, i8* %1926, i64 38)
  %1928 = call %nyx_string* @nyx_string_concat(%nyx_string* %1925, %nyx_string* %1927)
  %1929 = alloca %nyx_string*
  store %nyx_string* %1928, %nyx_string** %1929
  %1930 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %1931 = load i64, i64* %1930
  %1932 = icmp sgt i64 %1931, 0
  br i1 %1932, label %then493, label %else494
then493:
  %1933 = load %nyx_string*, %nyx_string** %1929
  %1934 = getelementptr [8 x i8], [8 x i8]* @.str134, i32 0, i32 0
  %1935 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str134.c, i8* %1934, i64 7)
  %1936 = call %nyx_string* @nyx_string_concat(%nyx_string* %1933, %nyx_string* %1935)
  %1937 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %1938 = load i64, i64* %1937
  %1939 = call %nyx_string* @nyx_string_from_int(i64 %1938)
  %1940 = call %nyx_string* @nyx_string_concat(%nyx_string* %1936, %nyx_string* %1939)
  %1941 = getelementptr [2 x i8], [2 x i8]* @.str135, i32 0, i32 0
  %1942 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str135.c, i8* %1941, i64 1)
  %1943 = call %nyx_string* @nyx_string_concat(%nyx_string* %1940, %nyx_string* %1942)
  store %nyx_string* %1943, %nyx_string** %1929
  br label %merge495
else494:
  br label %merge495
merge495:
  %1944 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1945 = load %nyx_string*, %nyx_string** %1929
  %1946 = ptrtoint %nyx_string* %1945 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1944, i64 %1946, i64 2)
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
  %1947 = load %nyx_string*, %nyx_string** %903
  %1948 = getelementptr [16 x i8], [16 x i8]* @.str136, i32 0, i32 0
  %1949 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str136.c, i8* %1948, i64 15)
  %1950 = call i1 @nyx_string_equals(%nyx_string* %1947, %nyx_string* %1949)
  br i1 %1950, label %then496, label %else497
then496:
  %1951 = load %ASTNode, %ASTNode* %node.ptr
  %1952 = call %ASTNode @bc_node_at(%ASTNode %1951, i64 1)
  %1953 = alloca %ASTNode
  store %ASTNode %1952, %ASTNode* %1953
  %1954 = load %ASTNode, %ASTNode* %1953
  %1955 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1956 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1957 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1958 = call i64 @bc_walk(%ASTNode %1954, { i64, i8* }* %1955, { i64, i8* }* %1956, { i64, i8* }* %1957)
  %1959 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1960 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1961 = load %ASTNode, %ASTNode* %1953
  %1962 = call i64 @bc_maybe_move({ i64, i8* }* %1959, { i64, i8* }* %1960, %ASTNode %1961)
  ret i64 0
else497:
  br label %merge498
merge498:
  %1963 = load %nyx_string*, %nyx_string** %903
  %1964 = getelementptr [13 x i8], [13 x i8]* @.str137, i32 0, i32 0
  %1965 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str137.c, i8* %1964, i64 12)
  %1966 = call i1 @nyx_string_equals(%nyx_string* %1963, %nyx_string* %1965)
  br i1 %1966, label %then499, label %else500
then499:
  %1967 = load %ASTNode, %ASTNode* %node.ptr
  %1968 = call %ASTNode @bc_node_at(%ASTNode %1967, i64 0)
  %1969 = alloca %ASTNode
  store %ASTNode %1968, %ASTNode* %1969
  %1970 = load %ASTNode, %ASTNode* %1969
  %1971 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1972 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1973 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1974 = call i64 @bc_walk(%ASTNode %1970, { i64, i8* }* %1971, { i64, i8* }* %1972, { i64, i8* }* %1973)
  %1975 = load %ASTNode, %ASTNode* %node.ptr
  %1976 = call %ASTNode @bc_node_at(%ASTNode %1975, i64 1)
  %1977 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1978 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1979 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1980 = call i64 @bc_walk(%ASTNode %1976, { i64, i8* }* %1977, { i64, i8* }* %1978, { i64, i8* }* %1979)
  %1981 = load %ASTNode, %ASTNode* %node.ptr
  %1982 = call %ASTNode @bc_node_at(%ASTNode %1981, i64 2)
  %1983 = alloca %ASTNode
  store %ASTNode %1982, %ASTNode* %1983
  %1984 = load %ASTNode, %ASTNode* %1983
  %1985 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %1986 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1987 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %1988 = call i64 @bc_walk(%ASTNode %1984, { i64, i8* }* %1985, { i64, i8* }* %1986, { i64, i8* }* %1987)
  %1989 = load %ASTNode, %ASTNode* %1969
  %1990 = call %nyx_string* @place_of(%ASTNode %1989)
  %1991 = alloca %nyx_string*
  store %nyx_string* %1990, %nyx_string** %1991
  %1992 = load %nyx_string*, %nyx_string** %1991
  %1993 = getelementptr [1 x i8], [1 x i8]* @.str138, i32 0, i32 0
  %1994 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str138.c, i8* %1993, i64 0)
  %1995 = call i1 @nyx_string_equals(%nyx_string* %1992, %nyx_string* %1994)
  %1996 = xor i1 %1995, true
  br i1 %1996, label %then502, label %else503
then502:
  %1997 = load %nyx_string*, %nyx_string** %1991
  %1998 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %1999 = call i1 @bc_dest_outlives(%nyx_string* %1997, { i64, i8* }* %1998)
  br i1 %1999, label %then505, label %else506
then505:
  %2000 = load %ASTNode, %ASTNode* %1983
  %2001 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2002 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2003 = call %nyx_string* @bc_escaping_origin(%ASTNode %2000, { i64, i8* }* %2001, { i64, i8* }* %2002)
  %2004 = alloca %nyx_string*
  store %nyx_string* %2003, %nyx_string** %2004
  %2005 = load %nyx_string*, %nyx_string** %2004
  %2006 = getelementptr [1 x i8], [1 x i8]* @.str139, i32 0, i32 0
  %2007 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str139.c, i8* %2006, i64 0)
  %2008 = call i1 @nyx_string_equals(%nyx_string* %2005, %nyx_string* %2007)
  %2009 = xor i1 %2008, true
  br i1 %2009, label %then508, label %else509
then508:
  %2010 = load %nyx_string*, %nyx_string** %2004
  %2011 = call %nyx_string* @reforigin_name(%nyx_string* %2010)
  %2012 = alloca %nyx_string*
  store %nyx_string* %2011, %nyx_string** %2012
  %2013 = load %nyx_string*, %nyx_string** %2004
  %2014 = call i1 @reforigin_is_soft(%nyx_string* %2013)
  br i1 %2014, label %then511, label %else512
then511:
  %2015 = getelementptr [30 x i8], [30 x i8]* @.str140, i32 0, i32 0
  %2016 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str140.c, i8* %2015, i64 29)
  %2017 = load %nyx_string*, %nyx_string** %2012
  %2018 = call %nyx_string* @nyx_string_concat(%nyx_string* %2016, %nyx_string* %2017)
  %2019 = getelementptr [38 x i8], [38 x i8]* @.str141, i32 0, i32 0
  %2020 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str141.c, i8* %2019, i64 37)
  %2021 = call %nyx_string* @nyx_string_concat(%nyx_string* %2018, %nyx_string* %2020)
  %2022 = alloca %nyx_string*
  store %nyx_string* %2021, %nyx_string** %2022
  %2023 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %2024 = load i64, i64* %2023
  %2025 = icmp sgt i64 %2024, 0
  br i1 %2025, label %then514, label %else515
then514:
  %2026 = load %nyx_string*, %nyx_string** %2022
  %2027 = getelementptr [8 x i8], [8 x i8]* @.str142, i32 0, i32 0
  %2028 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str142.c, i8* %2027, i64 7)
  %2029 = call %nyx_string* @nyx_string_concat(%nyx_string* %2026, %nyx_string* %2028)
  %2030 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %2031 = load i64, i64* %2030
  %2032 = call %nyx_string* @nyx_string_from_int(i64 %2031)
  %2033 = call %nyx_string* @nyx_string_concat(%nyx_string* %2029, %nyx_string* %2032)
  %2034 = getelementptr [2 x i8], [2 x i8]* @.str143, i32 0, i32 0
  %2035 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str143.c, i8* %2034, i64 1)
  %2036 = call %nyx_string* @nyx_string_concat(%nyx_string* %2033, %nyx_string* %2035)
  store %nyx_string* %2036, %nyx_string** %2022
  br label %merge516
else515:
  br label %merge516
merge516:
  %2037 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2038 = load %nyx_string*, %nyx_string** %2022
  %2039 = ptrtoint %nyx_string* %2038 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2037, i64 %2039, i64 2)
  br label %merge513
else512:
  %2040 = getelementptr [30 x i8], [30 x i8]* @.str144, i32 0, i32 0
  %2041 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str144.c, i8* %2040, i64 29)
  %2042 = load %nyx_string*, %nyx_string** %2012
  %2043 = call %nyx_string* @nyx_string_concat(%nyx_string* %2041, %nyx_string* %2042)
  %2044 = getelementptr [39 x i8], [39 x i8]* @.str145, i32 0, i32 0
  %2045 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str145.c, i8* %2044, i64 38)
  %2046 = call %nyx_string* @nyx_string_concat(%nyx_string* %2043, %nyx_string* %2045)
  %2047 = alloca %nyx_string*
  store %nyx_string* %2046, %nyx_string** %2047
  %2048 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %2049 = load i64, i64* %2048
  %2050 = icmp sgt i64 %2049, 0
  br i1 %2050, label %then517, label %else518
then517:
  %2051 = load %nyx_string*, %nyx_string** %2047
  %2052 = getelementptr [8 x i8], [8 x i8]* @.str146, i32 0, i32 0
  %2053 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str146.c, i8* %2052, i64 7)
  %2054 = call %nyx_string* @nyx_string_concat(%nyx_string* %2051, %nyx_string* %2053)
  %2055 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %2056 = load i64, i64* %2055
  %2057 = call %nyx_string* @nyx_string_from_int(i64 %2056)
  %2058 = call %nyx_string* @nyx_string_concat(%nyx_string* %2054, %nyx_string* %2057)
  %2059 = getelementptr [2 x i8], [2 x i8]* @.str147, i32 0, i32 0
  %2060 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str147.c, i8* %2059, i64 1)
  %2061 = call %nyx_string* @nyx_string_concat(%nyx_string* %2058, %nyx_string* %2060)
  store %nyx_string* %2061, %nyx_string** %2047
  br label %merge519
else518:
  br label %merge519
merge519:
  %2062 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2063 = load %nyx_string*, %nyx_string** %2047
  %2064 = ptrtoint %nyx_string* %2063 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2062, i64 %2064, i64 2)
  br label %merge513
merge513:
  br label %merge510
else509:
  br label %merge510
merge510:
  br label %merge507
else506:
  %2065 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2066 = load %nyx_string*, %nyx_string** %1991
  %2067 = call i1 @tm_is_local({ i64, i8* }* %2065, %nyx_string* %2066)
  br i1 %2067, label %then520, label %else521
then520:
  %2068 = load %ASTNode, %ASTNode* %1983
  %2069 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2070 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2071 = call %nyx_string* @bc_escaping_origin(%ASTNode %2068, { i64, i8* }* %2069, { i64, i8* }* %2070)
  %2072 = alloca %nyx_string*
  store %nyx_string* %2071, %nyx_string** %2072
  %2073 = load %nyx_string*, %nyx_string** %2072
  %2074 = getelementptr [1 x i8], [1 x i8]* @.str148, i32 0, i32 0
  %2075 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str148.c, i8* %2074, i64 0)
  %2076 = call i1 @nyx_string_equals(%nyx_string* %2073, %nyx_string* %2075)
  %2077 = xor i1 %2076, true
  br i1 %2077, label %then523, label %else524
then523:
  %2078 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2079 = load %nyx_string*, %nyx_string** %1991
  %2080 = load %nyx_string*, %nyx_string** %2072
  %2081 = call i64 @set_reforigin({ i64, i8* }* %2078, %nyx_string* %2079, %nyx_string* %2080)
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
  %2082 = load %nyx_string*, %nyx_string** %903
  %2083 = getelementptr [13 x i8], [13 x i8]* @.str149, i32 0, i32 0
  %2084 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str149.c, i8* %2083, i64 12)
  %2085 = call i1 @nyx_string_equals(%nyx_string* %2082, %nyx_string* %2084)
  br i1 %2085, label %then526, label %else527
then526:
  %2086 = load %ASTNode, %ASTNode* %node.ptr
  %2087 = call %ASTNode @bc_node_at(%ASTNode %2086, i64 0)
  %2088 = alloca %ASTNode
  store %ASTNode %2087, %ASTNode* %2088
  %2089 = load %ASTNode, %ASTNode* %node.ptr
  %2090 = call %ASTNode @bc_node_at(%ASTNode %2089, i64 2)
  %2091 = alloca %ASTNode
  store %ASTNode %2090, %ASTNode* %2091
  %2092 = load %ASTNode, %ASTNode* %2088
  %2093 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2094 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2095 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2096 = call i64 @bc_walk(%ASTNode %2092, { i64, i8* }* %2093, { i64, i8* }* %2094, { i64, i8* }* %2095)
  %2097 = load %ASTNode, %ASTNode* %2091
  %2098 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2099 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2100 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2101 = call i64 @bc_walk(%ASTNode %2097, { i64, i8* }* %2098, { i64, i8* }* %2099, { i64, i8* }* %2100)
  %2102 = load %ASTNode, %ASTNode* %2088
  %2103 = call %nyx_string* @place_of(%ASTNode %2102)
  %2104 = alloca %nyx_string*
  store %nyx_string* %2103, %nyx_string** %2104
  %2105 = load %nyx_string*, %nyx_string** %2104
  %2106 = getelementptr [1 x i8], [1 x i8]* @.str150, i32 0, i32 0
  %2107 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str150.c, i8* %2106, i64 0)
  %2108 = call i1 @nyx_string_equals(%nyx_string* %2105, %nyx_string* %2107)
  %2109 = xor i1 %2108, true
  br i1 %2109, label %then529, label %else530
then529:
  %2110 = load %nyx_string*, %nyx_string** %2104
  %2111 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2112 = call i1 @bc_dest_outlives(%nyx_string* %2110, { i64, i8* }* %2111)
  br i1 %2112, label %then532, label %else533
then532:
  %2113 = load %ASTNode, %ASTNode* %2091
  %2114 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2115 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2116 = call %nyx_string* @bc_escaping_origin(%ASTNode %2113, { i64, i8* }* %2114, { i64, i8* }* %2115)
  %2117 = alloca %nyx_string*
  store %nyx_string* %2116, %nyx_string** %2117
  %2118 = load %nyx_string*, %nyx_string** %2117
  %2119 = getelementptr [1 x i8], [1 x i8]* @.str151, i32 0, i32 0
  %2120 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str151.c, i8* %2119, i64 0)
  %2121 = call i1 @nyx_string_equals(%nyx_string* %2118, %nyx_string* %2120)
  %2122 = xor i1 %2121, true
  br i1 %2122, label %then535, label %else536
then535:
  %2123 = load %nyx_string*, %nyx_string** %2117
  %2124 = call %nyx_string* @reforigin_name(%nyx_string* %2123)
  %2125 = alloca %nyx_string*
  store %nyx_string* %2124, %nyx_string** %2125
  %2126 = load %nyx_string*, %nyx_string** %2117
  %2127 = call i1 @reforigin_is_soft(%nyx_string* %2126)
  br i1 %2127, label %then538, label %else539
then538:
  %2128 = getelementptr [30 x i8], [30 x i8]* @.str152, i32 0, i32 0
  %2129 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str152.c, i8* %2128, i64 29)
  %2130 = load %nyx_string*, %nyx_string** %2125
  %2131 = call %nyx_string* @nyx_string_concat(%nyx_string* %2129, %nyx_string* %2130)
  %2132 = getelementptr [38 x i8], [38 x i8]* @.str153, i32 0, i32 0
  %2133 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str153.c, i8* %2132, i64 37)
  %2134 = call %nyx_string* @nyx_string_concat(%nyx_string* %2131, %nyx_string* %2133)
  %2135 = alloca %nyx_string*
  store %nyx_string* %2134, %nyx_string** %2135
  %2136 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %2137 = load i64, i64* %2136
  %2138 = icmp sgt i64 %2137, 0
  br i1 %2138, label %then541, label %else542
then541:
  %2139 = load %nyx_string*, %nyx_string** %2135
  %2140 = getelementptr [8 x i8], [8 x i8]* @.str154, i32 0, i32 0
  %2141 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str154.c, i8* %2140, i64 7)
  %2142 = call %nyx_string* @nyx_string_concat(%nyx_string* %2139, %nyx_string* %2141)
  %2143 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %2144 = load i64, i64* %2143
  %2145 = call %nyx_string* @nyx_string_from_int(i64 %2144)
  %2146 = call %nyx_string* @nyx_string_concat(%nyx_string* %2142, %nyx_string* %2145)
  %2147 = getelementptr [2 x i8], [2 x i8]* @.str155, i32 0, i32 0
  %2148 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str155.c, i8* %2147, i64 1)
  %2149 = call %nyx_string* @nyx_string_concat(%nyx_string* %2146, %nyx_string* %2148)
  store %nyx_string* %2149, %nyx_string** %2135
  br label %merge543
else542:
  br label %merge543
merge543:
  %2150 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2151 = load %nyx_string*, %nyx_string** %2135
  %2152 = ptrtoint %nyx_string* %2151 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2150, i64 %2152, i64 2)
  br label %merge540
else539:
  %2153 = getelementptr [30 x i8], [30 x i8]* @.str156, i32 0, i32 0
  %2154 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str156.c, i8* %2153, i64 29)
  %2155 = load %nyx_string*, %nyx_string** %2125
  %2156 = call %nyx_string* @nyx_string_concat(%nyx_string* %2154, %nyx_string* %2155)
  %2157 = getelementptr [39 x i8], [39 x i8]* @.str157, i32 0, i32 0
  %2158 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str157.c, i8* %2157, i64 38)
  %2159 = call %nyx_string* @nyx_string_concat(%nyx_string* %2156, %nyx_string* %2158)
  %2160 = alloca %nyx_string*
  store %nyx_string* %2159, %nyx_string** %2160
  %2161 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %2162 = load i64, i64* %2161
  %2163 = icmp sgt i64 %2162, 0
  br i1 %2163, label %then544, label %else545
then544:
  %2164 = load %nyx_string*, %nyx_string** %2160
  %2165 = getelementptr [8 x i8], [8 x i8]* @.str158, i32 0, i32 0
  %2166 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str158.c, i8* %2165, i64 7)
  %2167 = call %nyx_string* @nyx_string_concat(%nyx_string* %2164, %nyx_string* %2166)
  %2168 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %2169 = load i64, i64* %2168
  %2170 = call %nyx_string* @nyx_string_from_int(i64 %2169)
  %2171 = call %nyx_string* @nyx_string_concat(%nyx_string* %2167, %nyx_string* %2170)
  %2172 = getelementptr [2 x i8], [2 x i8]* @.str159, i32 0, i32 0
  %2173 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str159.c, i8* %2172, i64 1)
  %2174 = call %nyx_string* @nyx_string_concat(%nyx_string* %2171, %nyx_string* %2173)
  store %nyx_string* %2174, %nyx_string** %2160
  br label %merge546
else545:
  br label %merge546
merge546:
  %2175 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2176 = load %nyx_string*, %nyx_string** %2160
  %2177 = ptrtoint %nyx_string* %2176 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2175, i64 %2177, i64 2)
  br label %merge540
merge540:
  br label %merge537
else536:
  br label %merge537
merge537:
  br label %merge534
else533:
  %2178 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2179 = load %nyx_string*, %nyx_string** %2104
  %2180 = call i1 @tm_is_local({ i64, i8* }* %2178, %nyx_string* %2179)
  br i1 %2180, label %then547, label %else548
then547:
  %2181 = load %ASTNode, %ASTNode* %2091
  %2182 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2183 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2184 = call %nyx_string* @bc_escaping_origin(%ASTNode %2181, { i64, i8* }* %2182, { i64, i8* }* %2183)
  %2185 = alloca %nyx_string*
  store %nyx_string* %2184, %nyx_string** %2185
  %2186 = load %nyx_string*, %nyx_string** %2185
  %2187 = getelementptr [1 x i8], [1 x i8]* @.str160, i32 0, i32 0
  %2188 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str160.c, i8* %2187, i64 0)
  %2189 = call i1 @nyx_string_equals(%nyx_string* %2186, %nyx_string* %2188)
  %2190 = xor i1 %2189, true
  br i1 %2190, label %then550, label %else551
then550:
  %2191 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2192 = load %nyx_string*, %nyx_string** %2104
  %2193 = load %nyx_string*, %nyx_string** %2185
  %2194 = call i64 @set_reforigin({ i64, i8* }* %2191, %nyx_string* %2192, %nyx_string* %2193)
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
  %2195 = load %nyx_string*, %nyx_string** %903
  %2196 = getelementptr [12 x i8], [12 x i8]* @.str161, i32 0, i32 0
  %2197 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str161.c, i8* %2196, i64 11)
  %2198 = call i1 @nyx_string_equals(%nyx_string* %2195, %nyx_string* %2197)
  br i1 %2198, label %then553, label %else554
then553:
  %2199 = load %ASTNode, %ASTNode* %node.ptr
  %2200 = call { i64, i8* }* @bc_array_at(%ASTNode %2199, i64 1)
  %2201 = alloca { i64, i8* }*
  store { i64, i8* }* %2200, { i64, i8* }** %2201
  %2202 = alloca i64
  store i64 0, i64* %2202
  %2203 = call i8* @llvm.stacksave()
  br label %while_cond556
while_cond556:
  %2204 = load i64, i64* %2202
  %2205 = load { i64, i8* }*, { i64, i8* }** %2201
  %2206 = call i64 @nyx_array_length({ i64, i8* }* %2205)
  %2207 = icmp slt i64 %2204, %2206
  br i1 %2207, label %while_body557, label %while_end558
while_body557:
  call void @llvm.stackrestore(i8* %2203)
  %2208 = load { i64, i8* }*, { i64, i8* }** %2201
  %2209 = load i64, i64* %2202
  %2210 = call i64 @nyx_array_get({ i64, i8* }* %2208, i64 %2209)
  %2211 = inttoptr i64 %2210 to { i64, i8* }*
  %2212 = alloca { i64, i8* }*
  store { i64, i8* }* %2211, { i64, i8* }** %2212
  %2213 = load { i64, i8* }*, { i64, i8* }** %2212
  %2214 = call i64 @nyx_array_get({ i64, i8* }* %2213, i64 1)
  %2215 = inttoptr i64 %2214 to { i64, i8* }*
  %2216 = call i64 @nyx_array_get({ i64, i8* }* %2215, i64 0)
  %2217 = call i64 @nyx_array_get({ i64, i8* }* %2215, i64 1)
  %2218 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %2215, i64 2)
  %2219 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %2215, i64 3)
  %2220 = inttoptr i64 %2216 to %nyx_string*
  %2221 = inttoptr i64 %2217 to { i64, i8* }*
  %2222 = alloca %ASTNode
  %2223 = getelementptr inbounds %ASTNode, %ASTNode* %2222, i32 0, i32 0
  store %nyx_string* %2220, %nyx_string** %2223
  %2224 = getelementptr inbounds %ASTNode, %ASTNode* %2222, i32 0, i32 1
  store { i64, i8* }* %2221, { i64, i8* }** %2224
  %2225 = getelementptr inbounds %ASTNode, %ASTNode* %2222, i32 0, i32 2
  store i64 %2218, i64* %2225
  %2226 = getelementptr inbounds %ASTNode, %ASTNode* %2222, i32 0, i32 3
  store i64 %2219, i64* %2226
  %2227 = load %ASTNode, %ASTNode* %2222
  %2228 = alloca %ASTNode
  store %ASTNode %2227, %ASTNode* %2228
  %2229 = load %ASTNode, %ASTNode* %2228
  %2230 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2231 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2232 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2233 = call i64 @bc_walk(%ASTNode %2229, { i64, i8* }* %2230, { i64, i8* }* %2231, { i64, i8* }* %2232)
  %2234 = load i64, i64* %2202
  %2235 = add i64 %2234, 1
  store i64 %2235, i64* %2202
  br label %while_cond556
while_end558:
  ret i64 0
else554:
  br label %merge555
merge555:
  %2236 = load %nyx_string*, %nyx_string** %903
  %2237 = getelementptr [13 x i8], [13 x i8]* @.str162, i32 0, i32 0
  %2238 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str162.c, i8* %2237, i64 12)
  %2239 = call i1 @nyx_string_equals(%nyx_string* %2236, %nyx_string* %2238)
  br i1 %2239, label %then559, label %else560
then559:
  %2240 = load %ASTNode, %ASTNode* %node.ptr
  %2241 = call %ASTNode @bc_node_at(%ASTNode %2240, i64 0)
  %2242 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2243 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2244 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2245 = call i64 @bc_walk(%ASTNode %2241, { i64, i8* }* %2242, { i64, i8* }* %2243, { i64, i8* }* %2244)
  ret i64 0
else560:
  br label %merge561
merge561:
  %2246 = load %nyx_string*, %nyx_string** %903
  %2247 = getelementptr [12 x i8], [12 x i8]* @.str163, i32 0, i32 0
  %2248 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str163.c, i8* %2247, i64 11)
  %2249 = call i1 @nyx_string_equals(%nyx_string* %2246, %nyx_string* %2248)
  br i1 %2249, label %then562, label %else563
then562:
  %2250 = load %ASTNode, %ASTNode* %node.ptr
  %2251 = call %ASTNode @bc_node_at(%ASTNode %2250, i64 0)
  %2252 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2253 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2254 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2255 = call i64 @bc_walk(%ASTNode %2251, { i64, i8* }* %2252, { i64, i8* }* %2253, { i64, i8* }* %2254)
  %2256 = load %ASTNode, %ASTNode* %node.ptr
  %2257 = call { i64, i8* }* @bc_array_at(%ASTNode %2256, i64 2)
  %2258 = alloca { i64, i8* }*
  store { i64, i8* }* %2257, { i64, i8* }** %2258
  %2259 = alloca i64
  store i64 0, i64* %2259
  %2260 = call i8* @llvm.stacksave()
  br label %while_cond565
while_cond565:
  %2261 = load i64, i64* %2259
  %2262 = load { i64, i8* }*, { i64, i8* }** %2258
  %2263 = call i64 @nyx_array_length({ i64, i8* }* %2262)
  %2264 = icmp slt i64 %2261, %2263
  br i1 %2264, label %while_body566, label %while_end567
while_body566:
  call void @llvm.stackrestore(i8* %2260)
  %2265 = load { i64, i8* }*, { i64, i8* }** %2258
  %2266 = load i64, i64* %2259
  %2267 = call i64 @nyx_array_get({ i64, i8* }* %2265, i64 %2266)
  %2268 = inttoptr i64 %2267 to { i64, i8* }*
  %2269 = call i64 @nyx_array_get({ i64, i8* }* %2268, i64 0)
  %2270 = call i64 @nyx_array_get({ i64, i8* }* %2268, i64 1)
  %2271 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %2268, i64 2)
  %2272 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %2268, i64 3)
  %2273 = inttoptr i64 %2269 to %nyx_string*
  %2274 = inttoptr i64 %2270 to { i64, i8* }*
  %2275 = alloca %ASTNode
  %2276 = getelementptr inbounds %ASTNode, %ASTNode* %2275, i32 0, i32 0
  store %nyx_string* %2273, %nyx_string** %2276
  %2277 = getelementptr inbounds %ASTNode, %ASTNode* %2275, i32 0, i32 1
  store { i64, i8* }* %2274, { i64, i8* }** %2277
  %2278 = getelementptr inbounds %ASTNode, %ASTNode* %2275, i32 0, i32 2
  store i64 %2271, i64* %2278
  %2279 = getelementptr inbounds %ASTNode, %ASTNode* %2275, i32 0, i32 3
  store i64 %2272, i64* %2279
  %2280 = load %ASTNode, %ASTNode* %2275
  %2281 = alloca %ASTNode
  store %ASTNode %2280, %ASTNode* %2281
  %2282 = load %ASTNode, %ASTNode* %2281
  %2283 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2284 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2285 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2286 = call i64 @bc_walk(%ASTNode %2282, { i64, i8* }* %2283, { i64, i8* }* %2284, { i64, i8* }* %2285)
  %2287 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2288 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2289 = load %ASTNode, %ASTNode* %2281
  %2290 = call i64 @bc_maybe_move({ i64, i8* }* %2287, { i64, i8* }* %2288, %ASTNode %2289)
  %2291 = load i64, i64* %2259
  %2292 = add i64 %2291, 1
  store i64 %2292, i64* %2259
  br label %while_cond565
while_end567:
  ret i64 0
else563:
  br label %merge564
merge564:
  %2293 = load %nyx_string*, %nyx_string** %903
  %2294 = getelementptr [6 x i8], [6 x i8]* @.str164, i32 0, i32 0
  %2295 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str164.c, i8* %2294, i64 5)
  %2296 = call i1 @nyx_string_equals(%nyx_string* %2293, %nyx_string* %2295)
  br i1 %2296, label %then568, label %else569
then568:
  %2297 = load %ASTNode, %ASTNode* %node.ptr
  %2298 = call %ASTNode @bc_node_at(%ASTNode %2297, i64 0)
  %2299 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2300 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2301 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2302 = call i64 @bc_walk(%ASTNode %2298, { i64, i8* }* %2299, { i64, i8* }* %2300, { i64, i8* }* %2301)
  %2303 = load %ASTNode, %ASTNode* %node.ptr
  %2304 = call { i64, i8* }* @bc_array_at(%ASTNode %2303, i64 1)
  %2305 = alloca { i64, i8* }*
  store { i64, i8* }* %2304, { i64, i8* }** %2305
  %2306 = alloca i64
  store i64 0, i64* %2306
  %2307 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2308 = call { i64, i8* }* @state_copy({ i64, i8* }* %2307)
  %2309 = alloca { i64, i8* }*
  store { i64, i8* }* %2308, { i64, i8* }** %2309
  %2310 = alloca i1
  store i1 0, i1* %2310
  %2311 = call i8* @llvm.stacksave()
  br label %while_cond571
while_cond571:
  %2312 = load i64, i64* %2306
  %2313 = load { i64, i8* }*, { i64, i8* }** %2305
  %2314 = call i64 @nyx_array_length({ i64, i8* }* %2313)
  %2315 = icmp slt i64 %2312, %2314
  br i1 %2315, label %while_body572, label %while_end573
while_body572:
  call void @llvm.stackrestore(i8* %2311)
  %2316 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2317 = call { i64, i8* }* @state_copy({ i64, i8* }* %2316)
  %2318 = alloca { i64, i8* }*
  store { i64, i8* }* %2317, { i64, i8* }** %2318
  %2319 = load { i64, i8* }*, { i64, i8* }** %2305
  %2320 = load i64, i64* %2306
  %2321 = call i64 @nyx_array_get({ i64, i8* }* %2319, i64 %2320)
  %2322 = inttoptr i64 %2321 to { i64, i8* }*
  %2323 = call i64 @nyx_array_get({ i64, i8* }* %2322, i64 0)
  %2324 = call i64 @nyx_array_get({ i64, i8* }* %2322, i64 1)
  %2325 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %2322, i64 2)
  %2326 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %2322, i64 3)
  %2327 = inttoptr i64 %2323 to %nyx_string*
  %2328 = inttoptr i64 %2324 to { i64, i8* }*
  %2329 = alloca %ASTNode
  %2330 = getelementptr inbounds %ASTNode, %ASTNode* %2329, i32 0, i32 0
  store %nyx_string* %2327, %nyx_string** %2330
  %2331 = getelementptr inbounds %ASTNode, %ASTNode* %2329, i32 0, i32 1
  store { i64, i8* }* %2328, { i64, i8* }** %2331
  %2332 = getelementptr inbounds %ASTNode, %ASTNode* %2329, i32 0, i32 2
  store i64 %2325, i64* %2332
  %2333 = getelementptr inbounds %ASTNode, %ASTNode* %2329, i32 0, i32 3
  store i64 %2326, i64* %2333
  %2334 = load %ASTNode, %ASTNode* %2329
  %2335 = alloca %ASTNode
  store %ASTNode %2334, %ASTNode* %2335
  %2336 = load %ASTNode, %ASTNode* %2335
  %2337 = load { i64, i8* }*, { i64, i8* }** %2318
  %2338 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2339 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2340 = call i64 @bc_walk(%ASTNode %2336, { i64, i8* }* %2337, { i64, i8* }* %2338, { i64, i8* }* %2339)
  %2341 = load i1, i1* %2310
  br i1 %2341, label %then574, label %else575
then574:
  %2342 = load { i64, i8* }*, { i64, i8* }** %2309
  %2343 = load { i64, i8* }*, { i64, i8* }** %2318
  %2344 = call { i64, i8* }* @state_join({ i64, i8* }* %2342, { i64, i8* }* %2343)
  store { i64, i8* }* %2344, { i64, i8* }** %2309
  br label %merge576
else575:
  %2345 = load { i64, i8* }*, { i64, i8* }** %2318
  store { i64, i8* }* %2345, { i64, i8* }** %2309
  store i1 1, i1* %2310
  br label %merge576
merge576:
  %2346 = load i64, i64* %2306
  %2347 = add i64 %2346, 1
  store i64 %2347, i64* %2306
  br label %while_cond571
while_end573:
  %2348 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2349 = load { i64, i8* }*, { i64, i8* }** %2309
  %2350 = call i64 @state_merge_from({ i64, i8* }* %2348, { i64, i8* }* %2349)
  ret i64 0
else569:
  br label %merge570
merge570:
  %2351 = load %nyx_string*, %nyx_string** %903
  %2352 = getelementptr [10 x i8], [10 x i8]* @.str165, i32 0, i32 0
  %2353 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str165.c, i8* %2352, i64 9)
  %2354 = call i1 @nyx_string_equals(%nyx_string* %2351, %nyx_string* %2353)
  br i1 %2354, label %then577, label %else578
then577:
  %2355 = load %ASTNode, %ASTNode* %node.ptr
  %2356 = call %ASTNode @bc_node_at(%ASTNode %2355, i64 0)
  %2357 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2358 = call i64 @bc_register_pattern_bindings(%ASTNode %2356, { i64, i8* }* %2357)
  %2359 = load %ASTNode, %ASTNode* %node.ptr
  %2360 = call %ASTNode @bc_node_at(%ASTNode %2359, i64 1)
  %2361 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2362 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2363 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2364 = call i64 @bc_walk(%ASTNode %2360, { i64, i8* }* %2361, { i64, i8* }* %2362, { i64, i8* }* %2363)
  ret i64 0
else578:
  br label %merge579
merge579:
  %2365 = load %nyx_string*, %nyx_string** %903
  %2366 = getelementptr [7 x i8], [7 x i8]* @.str166, i32 0, i32 0
  %2367 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str166.c, i8* %2366, i64 6)
  %2368 = call i1 @nyx_string_equals(%nyx_string* %2365, %nyx_string* %2367)
  br i1 %2368, label %then580, label %else581
then580:
  %2369 = load %ASTNode, %ASTNode* %node.ptr
  %2370 = call %ASTNode @bc_node_at(%ASTNode %2369, i64 0)
  %2371 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2372 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2373 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2374 = call i64 @bc_walk(%ASTNode %2370, { i64, i8* }* %2371, { i64, i8* }* %2372, { i64, i8* }* %2373)
  ret i64 0
else581:
  br label %merge582
merge582:
  %2375 = load %nyx_string*, %nyx_string** %903
  %2376 = getelementptr [5 x i8], [5 x i8]* @.str167, i32 0, i32 0
  %2377 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str167.c, i8* %2376, i64 4)
  %2378 = call i1 @nyx_string_equals(%nyx_string* %2375, %nyx_string* %2377)
  br i1 %2378, label %then583, label %else584
then583:
  %2379 = load %ASTNode, %ASTNode* %node.ptr
  %2380 = call %ASTNode @bc_node_at(%ASTNode %2379, i64 0)
  %2381 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2382 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2383 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2384 = call i64 @bc_walk(%ASTNode %2380, { i64, i8* }* %2381, { i64, i8* }* %2382, { i64, i8* }* %2383)
  ret i64 0
else584:
  br label %merge585
merge585:
  %2385 = load %nyx_string*, %nyx_string** %903
  %2386 = getelementptr [13 x i8], [13 x i8]* @.str168, i32 0, i32 0
  %2387 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str168.c, i8* %2386, i64 12)
  %2388 = call i1 @nyx_string_equals(%nyx_string* %2385, %nyx_string* %2387)
  br i1 %2388, label %then586, label %else587
then586:
  %2389 = load %ASTNode, %ASTNode* %node.ptr
  %2390 = call %ASTNode @bc_node_at(%ASTNode %2389, i64 0)
  %2391 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2392 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2393 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2394 = call i64 @bc_walk(%ASTNode %2390, { i64, i8* }* %2391, { i64, i8* }* %2392, { i64, i8* }* %2393)
  ret i64 0
else587:
  br label %merge588
merge588:
  %2395 = load %nyx_string*, %nyx_string** %903
  %2396 = getelementptr [8 x i8], [8 x i8]* @.str169, i32 0, i32 0
  %2397 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str169.c, i8* %2396, i64 7)
  %2398 = call i1 @nyx_string_equals(%nyx_string* %2395, %nyx_string* %2397)
  br i1 %2398, label %then589, label %else590
then589:
  %2399 = load %ASTNode, %ASTNode* %node.ptr
  %2400 = call %ASTNode @bc_node_at(%ASTNode %2399, i64 0)
  %2401 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2402 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2403 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2404 = call i64 @bc_walk(%ASTNode %2400, { i64, i8* }* %2401, { i64, i8* }* %2402, { i64, i8* }* %2403)
  %2405 = load %ASTNode, %ASTNode* %node.ptr
  %2406 = call %nyx_string* @place_of(%ASTNode %2405)
  %2407 = alloca %nyx_string*
  store %nyx_string* %2406, %nyx_string** %2407
  %2408 = load %nyx_string*, %nyx_string** %2407
  %2409 = getelementptr [1 x i8], [1 x i8]* @.str170, i32 0, i32 0
  %2410 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str170.c, i8* %2409, i64 0)
  %2411 = call i1 @nyx_string_equals(%nyx_string* %2408, %nyx_string* %2410)
  %2412 = xor i1 %2411, true
  br i1 %2412, label %then592, label %else593
then592:
  %2413 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2414 = load %nyx_string*, %nyx_string** %2407
  %2415 = call i64 @get_borrow({ i64, i8* }* %2413, %nyx_string* %2414)
  %2416 = alloca i64
  store i64 %2415, i64* %2416
  %2417 = load i64, i64* %2416
  %2418 = icmp eq i64 %2417, 2
  br i1 %2418, label %then595, label %else596
then595:
  %2419 = getelementptr [25 x i8], [25 x i8]* @.str171, i32 0, i32 0
  %2420 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str171.c, i8* %2419, i64 24)
  %2421 = load %nyx_string*, %nyx_string** %2407
  %2422 = call %nyx_string* @nyx_string_concat(%nyx_string* %2420, %nyx_string* %2421)
  %2423 = getelementptr [41 x i8], [41 x i8]* @.str172, i32 0, i32 0
  %2424 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str172.c, i8* %2423, i64 40)
  %2425 = call %nyx_string* @nyx_string_concat(%nyx_string* %2422, %nyx_string* %2424)
  %2426 = alloca %nyx_string*
  store %nyx_string* %2425, %nyx_string** %2426
  %2427 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %2428 = load i64, i64* %2427
  %2429 = icmp sgt i64 %2428, 0
  br i1 %2429, label %then598, label %else599
then598:
  %2430 = load %nyx_string*, %nyx_string** %2426
  %2431 = getelementptr [8 x i8], [8 x i8]* @.str173, i32 0, i32 0
  %2432 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str173.c, i8* %2431, i64 7)
  %2433 = call %nyx_string* @nyx_string_concat(%nyx_string* %2430, %nyx_string* %2432)
  %2434 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %2435 = load i64, i64* %2434
  %2436 = call %nyx_string* @nyx_string_from_int(i64 %2435)
  %2437 = call %nyx_string* @nyx_string_concat(%nyx_string* %2433, %nyx_string* %2436)
  %2438 = getelementptr [2 x i8], [2 x i8]* @.str174, i32 0, i32 0
  %2439 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str174.c, i8* %2438, i64 1)
  %2440 = call %nyx_string* @nyx_string_concat(%nyx_string* %2437, %nyx_string* %2439)
  store %nyx_string* %2440, %nyx_string** %2426
  br label %merge600
else599:
  br label %merge600
merge600:
  %2441 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2442 = load %nyx_string*, %nyx_string** %2426
  %2443 = ptrtoint %nyx_string* %2442 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2441, i64 %2443, i64 2)
  br label %merge597
else596:
  br label %merge597
merge597:
  %2444 = load i64, i64* %2416
  %2445 = icmp ne i64 %2444, 2
  br i1 %2445, label %then601, label %else602
then601:
  %2446 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2447 = load %nyx_string*, %nyx_string** %2407
  %2448 = call i64 @set_borrow({ i64, i8* }* %2446, %nyx_string* %2447, i64 1)
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
  %2449 = load %nyx_string*, %nyx_string** %903
  %2450 = getelementptr [12 x i8], [12 x i8]* @.str175, i32 0, i32 0
  %2451 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str175.c, i8* %2450, i64 11)
  %2452 = call i1 @nyx_string_equals(%nyx_string* %2449, %nyx_string* %2451)
  br i1 %2452, label %then604, label %else605
then604:
  %2453 = load %ASTNode, %ASTNode* %node.ptr
  %2454 = call %ASTNode @bc_node_at(%ASTNode %2453, i64 0)
  %2455 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2456 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2457 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2458 = call i64 @bc_walk(%ASTNode %2454, { i64, i8* }* %2455, { i64, i8* }* %2456, { i64, i8* }* %2457)
  %2459 = load %ASTNode, %ASTNode* %node.ptr
  %2460 = call %nyx_string* @place_of(%ASTNode %2459)
  %2461 = alloca %nyx_string*
  store %nyx_string* %2460, %nyx_string** %2461
  %2462 = load %nyx_string*, %nyx_string** %2461
  %2463 = getelementptr [1 x i8], [1 x i8]* @.str176, i32 0, i32 0
  %2464 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str176.c, i8* %2463, i64 0)
  %2465 = call i1 @nyx_string_equals(%nyx_string* %2462, %nyx_string* %2464)
  %2466 = xor i1 %2465, true
  br i1 %2466, label %then607, label %else608
then607:
  %2467 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2468 = load %nyx_string*, %nyx_string** %2461
  %2469 = call i64 @get_borrow({ i64, i8* }* %2467, %nyx_string* %2468)
  %2470 = alloca i64
  store i64 %2469, i64* %2470
  %2471 = load i64, i64* %2470
  %2472 = icmp eq i64 %2471, 2
  br i1 %2472, label %then610, label %else611
then610:
  %2473 = getelementptr [25 x i8], [25 x i8]* @.str177, i32 0, i32 0
  %2474 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str177.c, i8* %2473, i64 24)
  %2475 = load %nyx_string*, %nyx_string** %2461
  %2476 = call %nyx_string* @nyx_string_concat(%nyx_string* %2474, %nyx_string* %2475)
  %2477 = getelementptr [38 x i8], [38 x i8]* @.str178, i32 0, i32 0
  %2478 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str178.c, i8* %2477, i64 37)
  %2479 = call %nyx_string* @nyx_string_concat(%nyx_string* %2476, %nyx_string* %2478)
  %2480 = alloca %nyx_string*
  store %nyx_string* %2479, %nyx_string** %2480
  %2481 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %2482 = load i64, i64* %2481
  %2483 = icmp sgt i64 %2482, 0
  br i1 %2483, label %then613, label %else614
then613:
  %2484 = load %nyx_string*, %nyx_string** %2480
  %2485 = getelementptr [8 x i8], [8 x i8]* @.str179, i32 0, i32 0
  %2486 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str179.c, i8* %2485, i64 7)
  %2487 = call %nyx_string* @nyx_string_concat(%nyx_string* %2484, %nyx_string* %2486)
  %2488 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %2489 = load i64, i64* %2488
  %2490 = call %nyx_string* @nyx_string_from_int(i64 %2489)
  %2491 = call %nyx_string* @nyx_string_concat(%nyx_string* %2487, %nyx_string* %2490)
  %2492 = getelementptr [2 x i8], [2 x i8]* @.str180, i32 0, i32 0
  %2493 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str180.c, i8* %2492, i64 1)
  %2494 = call %nyx_string* @nyx_string_concat(%nyx_string* %2491, %nyx_string* %2493)
  store %nyx_string* %2494, %nyx_string** %2480
  br label %merge615
else614:
  br label %merge615
merge615:
  %2495 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2496 = load %nyx_string*, %nyx_string** %2480
  %2497 = ptrtoint %nyx_string* %2496 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2495, i64 %2497, i64 2)
  br label %merge612
else611:
  br label %merge612
merge612:
  %2498 = load i64, i64* %2470
  %2499 = icmp eq i64 %2498, 1
  br i1 %2499, label %then616, label %else617
then616:
  %2500 = getelementptr [25 x i8], [25 x i8]* @.str181, i32 0, i32 0
  %2501 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str181.c, i8* %2500, i64 24)
  %2502 = load %nyx_string*, %nyx_string** %2461
  %2503 = call %nyx_string* @nyx_string_concat(%nyx_string* %2501, %nyx_string* %2502)
  %2504 = getelementptr [46 x i8], [46 x i8]* @.str182, i32 0, i32 0
  %2505 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str182.c, i8* %2504, i64 45)
  %2506 = call %nyx_string* @nyx_string_concat(%nyx_string* %2503, %nyx_string* %2505)
  %2507 = alloca %nyx_string*
  store %nyx_string* %2506, %nyx_string** %2507
  %2508 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %2509 = load i64, i64* %2508
  %2510 = icmp sgt i64 %2509, 0
  br i1 %2510, label %then619, label %else620
then619:
  %2511 = load %nyx_string*, %nyx_string** %2507
  %2512 = getelementptr [8 x i8], [8 x i8]* @.str183, i32 0, i32 0
  %2513 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str183.c, i8* %2512, i64 7)
  %2514 = call %nyx_string* @nyx_string_concat(%nyx_string* %2511, %nyx_string* %2513)
  %2515 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %2516 = load i64, i64* %2515
  %2517 = call %nyx_string* @nyx_string_from_int(i64 %2516)
  %2518 = call %nyx_string* @nyx_string_concat(%nyx_string* %2514, %nyx_string* %2517)
  %2519 = getelementptr [2 x i8], [2 x i8]* @.str184, i32 0, i32 0
  %2520 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str184.c, i8* %2519, i64 1)
  %2521 = call %nyx_string* @nyx_string_concat(%nyx_string* %2518, %nyx_string* %2520)
  store %nyx_string* %2521, %nyx_string** %2507
  br label %merge621
else620:
  br label %merge621
merge621:
  %2522 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2523 = load %nyx_string*, %nyx_string** %2507
  %2524 = ptrtoint %nyx_string* %2523 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2522, i64 %2524, i64 2)
  br label %merge618
else617:
  br label %merge618
merge618:
  %2525 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2526 = load %nyx_string*, %nyx_string** %2461
  %2527 = call i64 @set_borrow({ i64, i8* }* %2525, %nyx_string* %2526, i64 2)
  br label %merge609
else608:
  br label %merge609
merge609:
  ret i64 0
else605:
  br label %merge606
merge606:
  %2528 = load %nyx_string*, %nyx_string** %903
  %2529 = getelementptr [6 x i8], [6 x i8]* @.str185, i32 0, i32 0
  %2530 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str185.c, i8* %2529, i64 5)
  %2531 = call i1 @nyx_string_equals(%nyx_string* %2528, %nyx_string* %2530)
  br i1 %2531, label %then622, label %else623
then622:
  %2532 = load %ASTNode, %ASTNode* %node.ptr
  %2533 = call %ASTNode @bc_node_at(%ASTNode %2532, i64 0)
  %2534 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2535 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2536 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2537 = call i64 @bc_walk(%ASTNode %2533, { i64, i8* }* %2534, { i64, i8* }* %2535, { i64, i8* }* %2536)
  ret i64 0
else623:
  br label %merge624
merge624:
  %2538 = load %nyx_string*, %nyx_string** %903
  %2539 = getelementptr [13 x i8], [13 x i8]* @.str186, i32 0, i32 0
  %2540 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str186.c, i8* %2539, i64 12)
  %2541 = call i1 @nyx_string_equals(%nyx_string* %2538, %nyx_string* %2540)
  br i1 %2541, label %then625, label %else626
then625:
  %2542 = load %ASTNode, %ASTNode* %node.ptr
  %2543 = call %ASTNode @bc_node_at(%ASTNode %2542, i64 0)
  %2544 = alloca %ASTNode
  store %ASTNode %2543, %ASTNode* %2544
  %2545 = load %ASTNode, %ASTNode* %node.ptr
  %2546 = call %ASTNode @bc_node_at(%ASTNode %2545, i64 1)
  %2547 = alloca %ASTNode
  store %ASTNode %2546, %ASTNode* %2547
  %2548 = load %ASTNode, %ASTNode* %2544
  %2549 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2550 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2551 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2552 = call i64 @bc_walk(%ASTNode %2548, { i64, i8* }* %2549, { i64, i8* }* %2550, { i64, i8* }* %2551)
  %2553 = load %ASTNode, %ASTNode* %2547
  %2554 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2555 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2556 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2557 = call i64 @bc_walk(%ASTNode %2553, { i64, i8* }* %2554, { i64, i8* }* %2555, { i64, i8* }* %2556)
  %2558 = load %ASTNode, %ASTNode* %2544
  %2559 = call %nyx_string* @place_of(%ASTNode %2558)
  %2560 = alloca %nyx_string*
  store %nyx_string* %2559, %nyx_string** %2560
  %2561 = load %nyx_string*, %nyx_string** %2560
  %2562 = getelementptr [1 x i8], [1 x i8]* @.str187, i32 0, i32 0
  %2563 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str187.c, i8* %2562, i64 0)
  %2564 = call i1 @nyx_string_equals(%nyx_string* %2561, %nyx_string* %2563)
  %2565 = xor i1 %2564, true
  br i1 %2565, label %then628, label %else629
then628:
  %2566 = load %nyx_string*, %nyx_string** %2560
  %2567 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2568 = call i1 @bc_dest_outlives(%nyx_string* %2566, { i64, i8* }* %2567)
  br i1 %2568, label %then631, label %else632
then631:
  %2569 = load %ASTNode, %ASTNode* %2547
  %2570 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2571 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2572 = call %nyx_string* @bc_escaping_origin(%ASTNode %2569, { i64, i8* }* %2570, { i64, i8* }* %2571)
  %2573 = alloca %nyx_string*
  store %nyx_string* %2572, %nyx_string** %2573
  %2574 = load %nyx_string*, %nyx_string** %2573
  %2575 = getelementptr [1 x i8], [1 x i8]* @.str188, i32 0, i32 0
  %2576 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str188.c, i8* %2575, i64 0)
  %2577 = call i1 @nyx_string_equals(%nyx_string* %2574, %nyx_string* %2576)
  %2578 = xor i1 %2577, true
  br i1 %2578, label %then634, label %else635
then634:
  %2579 = load %nyx_string*, %nyx_string** %2573
  %2580 = call %nyx_string* @reforigin_name(%nyx_string* %2579)
  %2581 = alloca %nyx_string*
  store %nyx_string* %2580, %nyx_string** %2581
  %2582 = load %nyx_string*, %nyx_string** %2573
  %2583 = call i1 @reforigin_is_soft(%nyx_string* %2582)
  br i1 %2583, label %then637, label %else638
then637:
  %2584 = getelementptr [30 x i8], [30 x i8]* @.str189, i32 0, i32 0
  %2585 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str189.c, i8* %2584, i64 29)
  %2586 = load %nyx_string*, %nyx_string** %2581
  %2587 = call %nyx_string* @nyx_string_concat(%nyx_string* %2585, %nyx_string* %2586)
  %2588 = getelementptr [38 x i8], [38 x i8]* @.str190, i32 0, i32 0
  %2589 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str190.c, i8* %2588, i64 37)
  %2590 = call %nyx_string* @nyx_string_concat(%nyx_string* %2587, %nyx_string* %2589)
  %2591 = alloca %nyx_string*
  store %nyx_string* %2590, %nyx_string** %2591
  %2592 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %2593 = load i64, i64* %2592
  %2594 = icmp sgt i64 %2593, 0
  br i1 %2594, label %then640, label %else641
then640:
  %2595 = load %nyx_string*, %nyx_string** %2591
  %2596 = getelementptr [8 x i8], [8 x i8]* @.str191, i32 0, i32 0
  %2597 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str191.c, i8* %2596, i64 7)
  %2598 = call %nyx_string* @nyx_string_concat(%nyx_string* %2595, %nyx_string* %2597)
  %2599 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %2600 = load i64, i64* %2599
  %2601 = call %nyx_string* @nyx_string_from_int(i64 %2600)
  %2602 = call %nyx_string* @nyx_string_concat(%nyx_string* %2598, %nyx_string* %2601)
  %2603 = getelementptr [2 x i8], [2 x i8]* @.str192, i32 0, i32 0
  %2604 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str192.c, i8* %2603, i64 1)
  %2605 = call %nyx_string* @nyx_string_concat(%nyx_string* %2602, %nyx_string* %2604)
  store %nyx_string* %2605, %nyx_string** %2591
  br label %merge642
else641:
  br label %merge642
merge642:
  %2606 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2607 = load %nyx_string*, %nyx_string** %2591
  %2608 = ptrtoint %nyx_string* %2607 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2606, i64 %2608, i64 2)
  br label %merge639
else638:
  %2609 = getelementptr [30 x i8], [30 x i8]* @.str193, i32 0, i32 0
  %2610 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str193.c, i8* %2609, i64 29)
  %2611 = load %nyx_string*, %nyx_string** %2581
  %2612 = call %nyx_string* @nyx_string_concat(%nyx_string* %2610, %nyx_string* %2611)
  %2613 = getelementptr [39 x i8], [39 x i8]* @.str194, i32 0, i32 0
  %2614 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str194.c, i8* %2613, i64 38)
  %2615 = call %nyx_string* @nyx_string_concat(%nyx_string* %2612, %nyx_string* %2614)
  %2616 = alloca %nyx_string*
  store %nyx_string* %2615, %nyx_string** %2616
  %2617 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %2618 = load i64, i64* %2617
  %2619 = icmp sgt i64 %2618, 0
  br i1 %2619, label %then643, label %else644
then643:
  %2620 = load %nyx_string*, %nyx_string** %2616
  %2621 = getelementptr [8 x i8], [8 x i8]* @.str195, i32 0, i32 0
  %2622 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str195.c, i8* %2621, i64 7)
  %2623 = call %nyx_string* @nyx_string_concat(%nyx_string* %2620, %nyx_string* %2622)
  %2624 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %2625 = load i64, i64* %2624
  %2626 = call %nyx_string* @nyx_string_from_int(i64 %2625)
  %2627 = call %nyx_string* @nyx_string_concat(%nyx_string* %2623, %nyx_string* %2626)
  %2628 = getelementptr [2 x i8], [2 x i8]* @.str196, i32 0, i32 0
  %2629 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str196.c, i8* %2628, i64 1)
  %2630 = call %nyx_string* @nyx_string_concat(%nyx_string* %2627, %nyx_string* %2629)
  store %nyx_string* %2630, %nyx_string** %2616
  br label %merge645
else644:
  br label %merge645
merge645:
  %2631 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2632 = load %nyx_string*, %nyx_string** %2616
  %2633 = ptrtoint %nyx_string* %2632 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2631, i64 %2633, i64 2)
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
  %2634 = load %nyx_string*, %nyx_string** %903
  %2635 = getelementptr [6 x i8], [6 x i8]* @.str197, i32 0, i32 0
  %2636 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str197.c, i8* %2635, i64 5)
  %2637 = call i1 @nyx_string_equals(%nyx_string* %2634, %nyx_string* %2636)
  br i1 %2637, label %then646, label %else647
then646:
  %2638 = load %ASTNode, %ASTNode* %node.ptr
  %2639 = call %ASTNode @bc_node_at(%ASTNode %2638, i64 0)
  %2640 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2641 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2642 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2643 = call i64 @bc_walk(%ASTNode %2639, { i64, i8* }* %2640, { i64, i8* }* %2641, { i64, i8* }* %2642)
  ret i64 0
else647:
  br label %merge648
merge648:
  %2644 = load %nyx_string*, %nyx_string** %903
  %2645 = getelementptr [10 x i8], [10 x i8]* @.str198, i32 0, i32 0
  %2646 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str198.c, i8* %2645, i64 9)
  %2647 = call i1 @nyx_string_equals(%nyx_string* %2644, %nyx_string* %2646)
  br i1 %2647, label %then649, label %else650
then649:
  %2648 = load %ASTNode, %ASTNode* %node.ptr
  %2649 = call %ASTNode @bc_node_at(%ASTNode %2648, i64 0)
  %2650 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2651 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2652 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2653 = call i64 @bc_walk(%ASTNode %2649, { i64, i8* }* %2650, { i64, i8* }* %2651, { i64, i8* }* %2652)
  %2654 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %2655 = load { i64, i8* }*, { i64, i8* }** %2654
  %2656 = alloca { i64, i8* }*
  store { i64, i8* }* %2655, { i64, i8* }** %2656
  %2657 = load { i64, i8* }*, { i64, i8* }** %2656
  %2658 = call i64 @nyx_array_get_checked({ i64, i8* }* %2657, i64 1, i64 2)
  %2659 = inttoptr i64 %2658 to %nyx_string*
  %2660 = alloca %nyx_string*
  store %nyx_string* %2659, %nyx_string** %2660
  %2661 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2662 = load %nyx_string*, %nyx_string** %2660
  %2663 = call i64 @tm_add_local({ i64, i8* }* %2661, %nyx_string* %2662)
  %2664 = load %ASTNode, %ASTNode* %node.ptr
  %2665 = call %ASTNode @bc_node_at(%ASTNode %2664, i64 2)
  %2666 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2667 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2668 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2669 = call i64 @bc_walk(%ASTNode %2665, { i64, i8* }* %2666, { i64, i8* }* %2667, { i64, i8* }* %2668)
  ret i64 0
else650:
  br label %merge651
merge651:
  %2670 = load %nyx_string*, %nyx_string** %903
  %2671 = getelementptr [6 x i8], [6 x i8]* @.str199, i32 0, i32 0
  %2672 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str199.c, i8* %2671, i64 5)
  %2673 = call i1 @nyx_string_equals(%nyx_string* %2670, %nyx_string* %2672)
  br i1 %2673, label %then652, label %else653
then652:
  %2674 = load %ASTNode, %ASTNode* %node.ptr
  %2675 = call %ASTNode @bc_node_at(%ASTNode %2674, i64 0)
  %2676 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2677 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2678 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2679 = call i64 @bc_walk(%ASTNode %2675, { i64, i8* }* %2676, { i64, i8* }* %2677, { i64, i8* }* %2678)
  ret i64 0
else653:
  br label %merge654
merge654:
  %2680 = load %nyx_string*, %nyx_string** %903
  %2681 = getelementptr [22 x i8], [22 x i8]* @.str200, i32 0, i32 0
  %2682 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str200.c, i8* %2681, i64 21)
  %2683 = call i1 @nyx_string_equals(%nyx_string* %2680, %nyx_string* %2682)
  br i1 %2683, label %then655, label %else656
then655:
  %2684 = load %ASTNode, %ASTNode* %node.ptr
  %2685 = call %ASTNode @bc_node_at(%ASTNode %2684, i64 2)
  %2686 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2687 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2688 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2689 = call i64 @bc_walk(%ASTNode %2685, { i64, i8* }* %2686, { i64, i8* }* %2687, { i64, i8* }* %2688)
  %2690 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %2691 = load { i64, i8* }*, { i64, i8* }** %2690
  %2692 = alloca { i64, i8* }*
  store { i64, i8* }* %2691, { i64, i8* }** %2692
  %2693 = load { i64, i8* }*, { i64, i8* }** %2692
  %2694 = call i64 @nyx_array_get({ i64, i8* }* %2693, i64 0)
  %2695 = inttoptr i64 %2694 to { i64, i8* }*
  %2696 = alloca { i64, i8* }*
  store { i64, i8* }* %2695, { i64, i8* }** %2696
  %2697 = alloca i64
  store i64 0, i64* %2697
  %2698 = call i8* @llvm.stacksave()
  br label %while_cond658
while_cond658:
  %2699 = load i64, i64* %2697
  %2700 = load { i64, i8* }*, { i64, i8* }** %2696
  %2701 = call i64 @nyx_array_length({ i64, i8* }* %2700)
  %2702 = icmp slt i64 %2699, %2701
  br i1 %2702, label %while_body659, label %while_end660
while_body659:
  call void @llvm.stackrestore(i8* %2698)
  %2703 = load { i64, i8* }*, { i64, i8* }** %2696
  %2704 = load i64, i64* %2697
  %2705 = call i64 @nyx_array_get_checked({ i64, i8* }* %2703, i64 %2704, i64 2)
  %2706 = inttoptr i64 %2705 to %nyx_string*
  %2707 = alloca %nyx_string*
  store %nyx_string* %2706, %nyx_string** %2707
  %2708 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2709 = load %nyx_string*, %nyx_string** %2707
  %2710 = call i64 @tm_add_local({ i64, i8* }* %2708, %nyx_string* %2709)
  %2711 = load i64, i64* %2697
  %2712 = add i64 %2711, 1
  store i64 %2712, i64* %2697
  br label %while_cond658
while_end660:
  ret i64 0
else656:
  br label %merge657
merge657:
  %2713 = load %nyx_string*, %nyx_string** %903
  %2714 = getelementptr [10 x i8], [10 x i8]* @.str201, i32 0, i32 0
  %2715 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str201.c, i8* %2714, i64 9)
  %2716 = call i1 @nyx_string_equals(%nyx_string* %2713, %nyx_string* %2715)
  br i1 %2716, label %then661, label %else662
then661:
  %2717 = load %ASTNode, %ASTNode* %node.ptr
  %2718 = call %ASTNode @bc_node_at(%ASTNode %2717, i64 1)
  %2719 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2720 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2721 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2722 = call i64 @bc_walk(%ASTNode %2718, { i64, i8* }* %2719, { i64, i8* }* %2720, { i64, i8* }* %2721)
  ret i64 0
else662:
  br label %merge663
merge663:
  %2723 = load %nyx_string*, %nyx_string** %903
  %2724 = getelementptr [7 x i8], [7 x i8]* @.str202, i32 0, i32 0
  %2725 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str202.c, i8* %2724, i64 6)
  %2726 = call i1 @nyx_string_equals(%nyx_string* %2723, %nyx_string* %2725)
  br i1 %2726, label %then664, label %else665
then664:
  %2727 = load %ASTNode, %ASTNode* %node.ptr
  %2728 = call %ASTNode @bc_node_at(%ASTNode %2727, i64 0)
  %2729 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %2730 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2731 = load { i64, i8* }*, { i64, i8* }** %diags.ptr
  %2732 = call i64 @bc_walk(%ASTNode %2728, { i64, i8* }* %2729, { i64, i8* }* %2730, { i64, i8* }* %2731)
  ret i64 0
else665:
  br label %merge666
merge666:
  ret i64 0
}

define internal i64 @bc_register_params(
%ASTNode %fn_node.param, { i64, i8* }* %tmap.param) {
  %fn_node.ptr = alloca %ASTNode
  store %ASTNode %fn_node.param, %ASTNode* %fn_node.ptr
  %tmap.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %tmap.param, { i64, i8* }** %tmap.ptr
  %2733 = load %ASTNode, %ASTNode* %fn_node.ptr
  %2734 = call { i64, i8* }* @bc_array_at(%ASTNode %2733, i64 1)
  %2735 = alloca { i64, i8* }*
  store { i64, i8* }* %2734, { i64, i8* }** %2735
  %2736 = alloca i64
  store i64 0, i64* %2736
  %2737 = getelementptr [5 x i8], [5 x i8]* @.str203, i32 0, i32 0
  %2738 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str203.c, i8* %2737, i64 4)
  %2739 = alloca %nyx_string*
  store %nyx_string* %2738, %nyx_string** %2739
  %2740 = getelementptr [2 x i8], [2 x i8]* @.str204, i32 0, i32 0
  %2741 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str204.c, i8* %2740, i64 1)
  %2742 = alloca %nyx_string*
  store %nyx_string* %2741, %nyx_string** %2742
  %2743 = getelementptr [2 x i8], [2 x i8]* @.str205, i32 0, i32 0
  %2744 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str205.c, i8* %2743, i64 1)
  %2745 = alloca %nyx_string*
  store %nyx_string* %2744, %nyx_string** %2745
  %2746 = getelementptr [5 x i8], [5 x i8]* @.str206, i32 0, i32 0
  %2747 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str206.c, i8* %2746, i64 4)
  %2748 = alloca %nyx_string*
  store %nyx_string* %2747, %nyx_string** %2748
  %2749 = call i8* @llvm.stacksave()
  br label %while_cond667
while_cond667:
  %2750 = load i64, i64* %2736
  %2751 = load { i64, i8* }*, { i64, i8* }** %2735
  %2752 = call i64 @nyx_array_length({ i64, i8* }* %2751)
  %2753 = icmp slt i64 %2750, %2752
  br i1 %2753, label %while_body668, label %while_end669
while_body668:
  call void @llvm.stackrestore(i8* %2749)
  %2754 = load { i64, i8* }*, { i64, i8* }** %2735
  %2755 = load i64, i64* %2736
  %2756 = call i64 @nyx_array_get({ i64, i8* }* %2754, i64 %2755)
  %2757 = inttoptr i64 %2756 to { i64, i8* }*
  %2758 = alloca { i64, i8* }*
  store { i64, i8* }* %2757, { i64, i8* }** %2758
  %2759 = load { i64, i8* }*, { i64, i8* }** %2758
  %2760 = call i64 @nyx_array_length({ i64, i8* }* %2759)
  %2761 = icmp sge i64 %2760, 2
  br i1 %2761, label %then670, label %else671
then670:
  %2762 = load { i64, i8* }*, { i64, i8* }** %2758
  %2763 = call i64 @nyx_array_get_checked({ i64, i8* }* %2762, i64 0, i64 2)
  %2764 = inttoptr i64 %2763 to %nyx_string*
  %2765 = alloca %nyx_string*
  store %nyx_string* %2764, %nyx_string** %2765
  %2766 = load { i64, i8* }*, { i64, i8* }** %2758
  %2767 = call i64 @nyx_array_get_checked({ i64, i8* }* %2766, i64 1, i64 2)
  %2768 = inttoptr i64 %2767 to %nyx_string*
  %2769 = alloca %nyx_string*
  store %nyx_string* %2768, %nyx_string** %2769
  %2770 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2771 = load %nyx_string*, %nyx_string** %2765
  %2772 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2773 = load %nyx_string*, %nyx_string** %2769
  %2774 = call i64 @move_kind_of({ i64, i8* }* %2772, %nyx_string* %2773)
  %2775 = call i64 @tm_put({ i64, i8* }* %2770, %nyx_string* %2771, i64 %2774)
  %2776 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2777 = load %nyx_string*, %nyx_string** %2765
  %2778 = call i64 @tm_add_local({ i64, i8* }* %2776, %nyx_string* %2777)
  %2779 = load %nyx_string*, %nyx_string** %2765
  %2780 = load %nyx_string*, %nyx_string** %2739
  %2781 = call i1 @nyx_string_equals(%nyx_string* %2779, %nyx_string* %2780)
  %2782 = xor i1 %2781, true
  br i1 %2782, label %then673, label %else674
then673:
  %2783 = load %nyx_string*, %nyx_string** %2769
  %2784 = call i64 @nyx_string_byte_length(%nyx_string* %2783)
  %2785 = icmp sgt i64 %2784, 0
  br i1 %2785, label %then676, label %else677
then676:
  %2786 = load %nyx_string*, %nyx_string** %2769
  %2787 = call %nyx_string* @nyx_string_substring(%nyx_string* %2786, i64 0, i64 1)
  %2788 = alloca %nyx_string*
  store %nyx_string* %2787, %nyx_string** %2788
  %2789 = alloca i1
  store i1 true, i1* %2789
  %2790 = load %nyx_string*, %nyx_string** %2788
  %2791 = load %nyx_string*, %nyx_string** %2742
  %2792 = call i1 @nyx_string_equals(%nyx_string* %2790, %nyx_string* %2791)
  br i1 %2792, label %sc_or_end680, label %sc_or_rhs679
sc_or_rhs679:
  %2793 = load %nyx_string*, %nyx_string** %2788
  %2794 = load %nyx_string*, %nyx_string** %2745
  %2795 = call i1 @nyx_string_equals(%nyx_string* %2793, %nyx_string* %2794)
  store i1 %2795, i1* %2789
  br label %sc_or_end680
sc_or_end680:
  %2796 = load i1, i1* %2789
  br i1 %2796, label %then681, label %else682
then681:
  %2797 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2798 = load %nyx_string*, %nyx_string** %2765
  %2799 = call i64 @tm_add_ptr_param({ i64, i8* }* %2797, %nyx_string* %2798)
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
  %2800 = load %nyx_string*, %nyx_string** %2769
  %2801 = load %nyx_string*, %nyx_string** %2748
  %2802 = call i1 @nyx_string_equals(%nyx_string* %2800, %nyx_string* %2801)
  br i1 %2802, label %then684, label %else685
then684:
  %2803 = load { i64, i8* }*, { i64, i8* }** %tmap.ptr
  %2804 = load %nyx_string*, %nyx_string** %2765
  %2805 = call i64 @tm_add_ptr_param({ i64, i8* }* %2803, %nyx_string* %2804)
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
  %2806 = load i64, i64* %2736
  %2807 = add i64 %2806, 1
  store i64 %2807, i64* %2736
  br label %while_cond667
while_end669:
  ret i64 0
}

define internal i1 @diag_is_gating(
%nyx_string* %d.param) {
  %d.ptr = alloca %nyx_string*
  store %nyx_string* %d.param, %nyx_string** %d.ptr
  %2808 = load %nyx_string*, %nyx_string** %d.ptr
  %2809 = call i64 @nyx_string_byte_length(%nyx_string* %2808)
  %2810 = icmp slt i64 %2809, 7
  br i1 %2810, label %then687, label %else688
then687:
  ret i1 0
else688:
  br label %merge689
merge689:
  %2811 = load %nyx_string*, %nyx_string** %d.ptr
  %2812 = call %nyx_string* @nyx_string_substring(%nyx_string* %2811, i64 0, i64 7)
  %2813 = alloca %nyx_string*
  store %nyx_string* %2812, %nyx_string** %2813
  %2814 = load %nyx_string*, %nyx_string** %2813
  %2815 = getelementptr [8 x i8], [8 x i8]* @.str207, i32 0, i32 0
  %2816 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str207.c, i8* %2815, i64 7)
  %2817 = call i1 @nyx_string_equals(%nyx_string* %2814, %nyx_string* %2816)
  br i1 %2817, label %then690, label %else691
then690:
  ret i1 1
else691:
  br label %merge692
merge692:
  %2818 = load %nyx_string*, %nyx_string** %2813
  %2819 = getelementptr [8 x i8], [8 x i8]* @.str208, i32 0, i32 0
  %2820 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str208.c, i8* %2819, i64 7)
  %2821 = call i1 @nyx_string_equals(%nyx_string* %2818, %nyx_string* %2820)
  br i1 %2821, label %then693, label %else694
then693:
  ret i1 1
else694:
  br label %merge695
merge695:
  %2822 = load %nyx_string*, %nyx_string** %2813
  %2823 = getelementptr [8 x i8], [8 x i8]* @.str209, i32 0, i32 0
  %2824 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str209.c, i8* %2823, i64 7)
  %2825 = call i1 @nyx_string_equals(%nyx_string* %2822, %nyx_string* %2824)
  br i1 %2825, label %then696, label %else697
then696:
  ret i1 1
else697:
  br label %merge698
merge698:
  %2826 = load %nyx_string*, %nyx_string** %2813
  %2827 = getelementptr [8 x i8], [8 x i8]* @.str210, i32 0, i32 0
  %2828 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str210.c, i8* %2827, i64 7)
  %2829 = call i1 @nyx_string_equals(%nyx_string* %2826, %nyx_string* %2828)
  br i1 %2829, label %then699, label %else700
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
  store %ASTNode %root.param, %ASTNode* %root.ptr
  %2830 = call { i64, i8* }* @nyx_array_new_ptr()
  %2831 = alloca { i64, i8* }*
  store { i64, i8* }* %2830, { i64, i8* }** %2831
  %2832 = load %ASTNode, %ASTNode* %root.ptr
  %2833 = call { i64, i8* }* @bc_array_at(%ASTNode %2832, i64 0)
  %2834 = alloca { i64, i8* }*
  store { i64, i8* }* %2833, { i64, i8* }** %2834
  %2835 = alloca i64
  store i64 0, i64* %2835
  %2836 = getelementptr [7 x i8], [7 x i8]* @.str211, i32 0, i32 0
  %2837 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str211.c, i8* %2836, i64 6)
  %2838 = alloca %nyx_string*
  store %nyx_string* %2837, %nyx_string** %2838
  %2839 = getelementptr [7 x i8], [7 x i8]* @.str212, i32 0, i32 0
  %2840 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str212.c, i8* %2839, i64 6)
  %2841 = alloca %nyx_string*
  store %nyx_string* %2840, %nyx_string** %2841
  %2842 = getelementptr [5 x i8], [5 x i8]* @.str213, i32 0, i32 0
  %2843 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str213.c, i8* %2842, i64 4)
  %2844 = alloca %nyx_string*
  store %nyx_string* %2843, %nyx_string** %2844
  %2845 = getelementptr [7 x i8], [7 x i8]* @.str214, i32 0, i32 0
  %2846 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str214.c, i8* %2845, i64 6)
  %2847 = alloca %nyx_string*
  store %nyx_string* %2846, %nyx_string** %2847
  %2848 = call i8* @llvm.stacksave()
  br label %while_cond702
while_cond702:
  %2849 = load i64, i64* %2835
  %2850 = load { i64, i8* }*, { i64, i8* }** %2834
  %2851 = call i64 @nyx_array_length({ i64, i8* }* %2850)
  %2852 = icmp slt i64 %2849, %2851
  br i1 %2852, label %while_body703, label %while_end704
while_body703:
  call void @llvm.stackrestore(i8* %2848)
  %2853 = load { i64, i8* }*, { i64, i8* }** %2834
  %2854 = load i64, i64* %2835
  %2855 = call i64 @nyx_array_get({ i64, i8* }* %2853, i64 %2854)
  %2856 = inttoptr i64 %2855 to { i64, i8* }*
  %2857 = call i64 @nyx_array_get({ i64, i8* }* %2856, i64 0)
  %2858 = call i64 @nyx_array_get({ i64, i8* }* %2856, i64 1)
  %2859 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %2856, i64 2)
  %2860 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %2856, i64 3)
  %2861 = inttoptr i64 %2857 to %nyx_string*
  %2862 = inttoptr i64 %2858 to { i64, i8* }*
  %2863 = alloca %ASTNode
  %2864 = getelementptr inbounds %ASTNode, %ASTNode* %2863, i32 0, i32 0
  store %nyx_string* %2861, %nyx_string** %2864
  %2865 = getelementptr inbounds %ASTNode, %ASTNode* %2863, i32 0, i32 1
  store { i64, i8* }* %2862, { i64, i8* }** %2865
  %2866 = getelementptr inbounds %ASTNode, %ASTNode* %2863, i32 0, i32 2
  store i64 %2859, i64* %2866
  %2867 = getelementptr inbounds %ASTNode, %ASTNode* %2863, i32 0, i32 3
  store i64 %2860, i64* %2867
  %2868 = load %ASTNode, %ASTNode* %2863
  %2869 = alloca %ASTNode
  store %ASTNode %2868, %ASTNode* %2869
  %2870 = load %ASTNode, %ASTNode* %2869
  %2871 = alloca %ASTNode
  store %ASTNode %2870, %ASTNode* %2871
  %2872 = getelementptr %ASTNode, %ASTNode* %2869, i32 0, i32 0
  %2873 = load %nyx_string*, %nyx_string** %2872
  %2874 = load %nyx_string*, %nyx_string** %2838
  %2875 = call i1 @nyx_string_equals(%nyx_string* %2873, %nyx_string* %2874)
  br i1 %2875, label %then705, label %else706
then705:
  %2876 = load %ASTNode, %ASTNode* %2869
  %2877 = call %ASTNode @bc_node_at(%ASTNode %2876, i64 0)
  store %ASTNode %2877, %ASTNode* %2871
  br label %merge707
else706:
  br label %merge707
merge707:
  %2878 = getelementptr %ASTNode, %ASTNode* %2871, i32 0, i32 0
  %2879 = load %nyx_string*, %nyx_string** %2878
  %2880 = alloca %nyx_string*
  store %nyx_string* %2879, %nyx_string** %2880
  %2881 = alloca i1
  store i1 true, i1* %2881
  %2882 = load %nyx_string*, %nyx_string** %2880
  %2883 = load %nyx_string*, %nyx_string** %2841
  %2884 = call i1 @nyx_string_equals(%nyx_string* %2882, %nyx_string* %2883)
  br i1 %2884, label %sc_or_end709, label %sc_or_rhs708
sc_or_rhs708:
  %2885 = load %nyx_string*, %nyx_string** %2880
  %2886 = load %nyx_string*, %nyx_string** %2844
  %2887 = call i1 @nyx_string_equals(%nyx_string* %2885, %nyx_string* %2886)
  store i1 %2887, i1* %2881
  br label %sc_or_end709
sc_or_end709:
  %2888 = load i1, i1* %2881
  br i1 %2888, label %then710, label %else711
then710:
  %2889 = getelementptr %ASTNode, %ASTNode* %2871, i32 0, i32 1
  %2890 = load { i64, i8* }*, { i64, i8* }** %2889
  %2891 = alloca { i64, i8* }*
  store { i64, i8* }* %2890, { i64, i8* }** %2891
  %2892 = load { i64, i8* }*, { i64, i8* }** %2891
  %2893 = call i64 @nyx_array_length({ i64, i8* }* %2892)
  %2894 = icmp sgt i64 %2893, 3
  br i1 %2894, label %then713, label %else714
then713:
  %2895 = load { i64, i8* }*, { i64, i8* }** %2891
  %2896 = call i64 @nyx_array_get_checked({ i64, i8* }* %2895, i64 3, i64 2)
  %2897 = inttoptr i64 %2896 to %nyx_string*
  %2898 = alloca %nyx_string*
  store %nyx_string* %2897, %nyx_string** %2898
  %2899 = load %nyx_string*, %nyx_string** %2898
  %2900 = load %nyx_string*, %nyx_string** %2847
  %2901 = call i1 @nyx_string_equals(%nyx_string* %2899, %nyx_string* %2900)
  br i1 %2901, label %then716, label %else717
then716:
  %2902 = load { i64, i8* }*, { i64, i8* }** %2891
  %2903 = call i64 @nyx_array_get_checked({ i64, i8* }* %2902, i64 0, i64 2)
  %2904 = inttoptr i64 %2903 to %nyx_string*
  %2905 = alloca %nyx_string*
  store %nyx_string* %2904, %nyx_string** %2905
  %2906 = load { i64, i8* }*, { i64, i8* }** %2831
  %2907 = load %nyx_string*, %nyx_string** %2905
  %2908 = ptrtoint %nyx_string* %2907 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2906, i64 %2908, i64 2)
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
  %2909 = load i64, i64* %2835
  %2910 = add i64 %2909, 1
  store i64 %2910, i64* %2835
  br label %while_cond702
while_end704:
  %2911 = load { i64, i8* }*, { i64, i8* }** %2831
  ret { i64, i8* }* %2911
}

define internal { i64, i8* }* @struct_lt_build(
%ASTNode %root.param) {
  %root.ptr = alloca %ASTNode
  store %ASTNode %root.param, %ASTNode* %root.ptr
  %2912 = call { i64, i8* }* @nyx_array_new_ptr()
  %2913 = alloca { i64, i8* }*
  store { i64, i8* }* %2912, { i64, i8* }** %2913
  %2914 = load %ASTNode, %ASTNode* %root.ptr
  %2915 = call { i64, i8* }* @bc_array_at(%ASTNode %2914, i64 0)
  %2916 = alloca { i64, i8* }*
  store { i64, i8* }* %2915, { i64, i8* }** %2916
  %2917 = alloca i64
  store i64 0, i64* %2917
  %2918 = getelementptr [7 x i8], [7 x i8]* @.str215, i32 0, i32 0
  %2919 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str215.c, i8* %2918, i64 6)
  %2920 = alloca %nyx_string*
  store %nyx_string* %2919, %nyx_string** %2920
  %2921 = getelementptr [7 x i8], [7 x i8]* @.str216, i32 0, i32 0
  %2922 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str216.c, i8* %2921, i64 6)
  %2923 = alloca %nyx_string*
  store %nyx_string* %2922, %nyx_string** %2923
  %2924 = getelementptr [2 x i8], [2 x i8]* @.str217, i32 0, i32 0
  %2925 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str217.c, i8* %2924, i64 1)
  %2926 = alloca %nyx_string*
  store %nyx_string* %2925, %nyx_string** %2926
  %2927 = call i8* @llvm.stacksave()
  br label %while_cond719
while_cond719:
  %2928 = load i64, i64* %2917
  %2929 = load { i64, i8* }*, { i64, i8* }** %2916
  %2930 = call i64 @nyx_array_length({ i64, i8* }* %2929)
  %2931 = icmp slt i64 %2928, %2930
  br i1 %2931, label %while_body720, label %while_end721
while_body720:
  call void @llvm.stackrestore(i8* %2927)
  %2932 = load { i64, i8* }*, { i64, i8* }** %2916
  %2933 = load i64, i64* %2917
  %2934 = call i64 @nyx_array_get({ i64, i8* }* %2932, i64 %2933)
  %2935 = inttoptr i64 %2934 to { i64, i8* }*
  %2936 = call i64 @nyx_array_get({ i64, i8* }* %2935, i64 0)
  %2937 = call i64 @nyx_array_get({ i64, i8* }* %2935, i64 1)
  %2938 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %2935, i64 2)
  %2939 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %2935, i64 3)
  %2940 = inttoptr i64 %2936 to %nyx_string*
  %2941 = inttoptr i64 %2937 to { i64, i8* }*
  %2942 = alloca %ASTNode
  %2943 = getelementptr inbounds %ASTNode, %ASTNode* %2942, i32 0, i32 0
  store %nyx_string* %2940, %nyx_string** %2943
  %2944 = getelementptr inbounds %ASTNode, %ASTNode* %2942, i32 0, i32 1
  store { i64, i8* }* %2941, { i64, i8* }** %2944
  %2945 = getelementptr inbounds %ASTNode, %ASTNode* %2942, i32 0, i32 2
  store i64 %2938, i64* %2945
  %2946 = getelementptr inbounds %ASTNode, %ASTNode* %2942, i32 0, i32 3
  store i64 %2939, i64* %2946
  %2947 = load %ASTNode, %ASTNode* %2942
  %2948 = alloca %ASTNode
  store %ASTNode %2947, %ASTNode* %2948
  %2949 = getelementptr %ASTNode, %ASTNode* %2948, i32 0, i32 0
  %2950 = load %nyx_string*, %nyx_string** %2949
  %2951 = load %nyx_string*, %nyx_string** %2920
  %2952 = call i1 @nyx_string_equals(%nyx_string* %2950, %nyx_string* %2951)
  br i1 %2952, label %then722, label %else723
then722:
  %2953 = load %ASTNode, %ASTNode* %2948
  %2954 = call %ASTNode @bc_node_at(%ASTNode %2953, i64 0)
  store %ASTNode %2954, %ASTNode* %2948
  br label %merge724
else723:
  br label %merge724
merge724:
  %2955 = getelementptr %ASTNode, %ASTNode* %2948, i32 0, i32 0
  %2956 = load %nyx_string*, %nyx_string** %2955
  %2957 = load %nyx_string*, %nyx_string** %2923
  %2958 = call i1 @nyx_string_equals(%nyx_string* %2956, %nyx_string* %2957)
  br i1 %2958, label %then725, label %else726
then725:
  %2959 = getelementptr %ASTNode, %ASTNode* %2948, i32 0, i32 1
  %2960 = load { i64, i8* }*, { i64, i8* }** %2959
  %2961 = alloca { i64, i8* }*
  store { i64, i8* }* %2960, { i64, i8* }** %2961
  %2962 = load { i64, i8* }*, { i64, i8* }** %2961
  %2963 = call i64 @nyx_array_length({ i64, i8* }* %2962)
  %2964 = icmp sge i64 %2963, 3
  br i1 %2964, label %then728, label %else729
then728:
  %2965 = load { i64, i8* }*, { i64, i8* }** %2961
  %2966 = call i64 @nyx_array_get({ i64, i8* }* %2965, i64 2)
  %2967 = inttoptr i64 %2966 to { i64, i8* }*
  %2968 = alloca { i64, i8* }*
  store { i64, i8* }* %2967, { i64, i8* }** %2968
  %2969 = alloca i1
  store i1 0, i1* %2969
  %2970 = alloca i64
  store i64 0, i64* %2970
  %2971 = call i8* @llvm.stacksave()
  br label %while_cond731
while_cond731:
  %2972 = load i64, i64* %2970
  %2973 = load { i64, i8* }*, { i64, i8* }** %2968
  %2974 = call i64 @nyx_array_length({ i64, i8* }* %2973)
  %2975 = icmp slt i64 %2972, %2974
  br i1 %2975, label %while_body732, label %while_end733
while_body732:
  call void @llvm.stackrestore(i8* %2971)
  %2976 = load { i64, i8* }*, { i64, i8* }** %2968
  %2977 = load i64, i64* %2970
  %2978 = call i64 @nyx_array_get_checked({ i64, i8* }* %2976, i64 %2977, i64 2)
  %2979 = inttoptr i64 %2978 to %nyx_string*
  %2980 = alloca %nyx_string*
  store %nyx_string* %2979, %nyx_string** %2980
  %2981 = load %nyx_string*, %nyx_string** %2980
  %2982 = call i64 @nyx_string_byte_length(%nyx_string* %2981)
  %2983 = icmp sgt i64 %2982, 0
  br i1 %2983, label %then734, label %else735
then734:
  %2984 = load %nyx_string*, %nyx_string** %2980
  %2985 = call %nyx_string* @nyx_string_substring(%nyx_string* %2984, i64 0, i64 1)
  %2986 = load %nyx_string*, %nyx_string** %2926
  %2987 = call i1 @nyx_string_equals(%nyx_string* %2985, %nyx_string* %2986)
  br i1 %2987, label %then737, label %else738
then737:
  store i1 1, i1* %2969
  br label %merge739
else738:
  br label %merge739
merge739:
  br label %merge736
else735:
  br label %merge736
merge736:
  %2988 = load i64, i64* %2970
  %2989 = add i64 %2988, 1
  store i64 %2989, i64* %2970
  br label %while_cond731
while_end733:
  %2990 = load i1, i1* %2969
  br i1 %2990, label %then740, label %else741
then740:
  %2991 = load { i64, i8* }*, { i64, i8* }** %2913
  %2992 = load { i64, i8* }*, { i64, i8* }** %2961
  %2993 = call i64 @nyx_array_get({ i64, i8* }* %2992, i64 0)
  %2994 = load { i64, i8* }*, { i64, i8* }** %2961
  %2995 = call i64 @nyx_array_get_tag({ i64, i8* }* %2994, i64 0)
  call void @nyx_array_push_tagged({ i64, i8* }* %2991, i64 %2993, i64 %2995)
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
  %2996 = load i64, i64* %2917
  %2997 = add i64 %2996, 1
  store i64 %2997, i64* %2917
  br label %while_cond719
while_end721:
  %2998 = load { i64, i8* }*, { i64, i8* }** %2913
  ret { i64, i8* }* %2998
}

define internal { i64, i8* }* @extract_lifetimes(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %2999 = call { i64, i8* }* @nyx_array_new_ptr()
  %3000 = alloca { i64, i8* }*
  store { i64, i8* }* %2999, { i64, i8* }** %3000
  %3001 = alloca i64
  store i64 0, i64* %3001
  %3002 = getelementptr [2 x i8], [2 x i8]* @.str218, i32 0, i32 0
  %3003 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str218.c, i8* %3002, i64 1)
  %3004 = alloca %nyx_string*
  store %nyx_string* %3003, %nyx_string** %3004
  %3005 = getelementptr [2 x i8], [2 x i8]* @.str219, i32 0, i32 0
  %3006 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str219.c, i8* %3005, i64 1)
  %3007 = alloca %nyx_string*
  store %nyx_string* %3006, %nyx_string** %3007
  %3008 = getelementptr [2 x i8], [2 x i8]* @.str220, i32 0, i32 0
  %3009 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str220.c, i8* %3008, i64 1)
  %3010 = alloca %nyx_string*
  store %nyx_string* %3009, %nyx_string** %3010
  %3011 = getelementptr [2 x i8], [2 x i8]* @.str221, i32 0, i32 0
  %3012 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str221.c, i8* %3011, i64 1)
  %3013 = alloca %nyx_string*
  store %nyx_string* %3012, %nyx_string** %3013
  %3014 = getelementptr [2 x i8], [2 x i8]* @.str222, i32 0, i32 0
  %3015 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str222.c, i8* %3014, i64 1)
  %3016 = alloca %nyx_string*
  store %nyx_string* %3015, %nyx_string** %3016
  %3017 = call i8* @llvm.stacksave()
  br label %while_cond743
while_cond743:
  %3018 = load i64, i64* %3001
  %3019 = load %nyx_string*, %nyx_string** %s.ptr
  %3020 = call i64 @nyx_string_byte_length(%nyx_string* %3019)
  %3021 = icmp slt i64 %3018, %3020
  br i1 %3021, label %while_body744, label %while_end745
while_body744:
  call void @llvm.stackrestore(i8* %3017)
  %3022 = load %nyx_string*, %nyx_string** %s.ptr
  %3023 = load i64, i64* %3001
  %3024 = load i64, i64* %3001
  %3025 = add i64 %3024, 1
  %3026 = call %nyx_string* @nyx_string_substring(%nyx_string* %3022, i64 %3023, i64 %3025)
  %3027 = alloca %nyx_string*
  store %nyx_string* %3026, %nyx_string** %3027
  %3028 = load %nyx_string*, %nyx_string** %3027
  %3029 = load %nyx_string*, %nyx_string** %3004
  %3030 = call i1 @nyx_string_equals(%nyx_string* %3028, %nyx_string* %3029)
  br i1 %3030, label %then746, label %else747
then746:
  %3031 = load i64, i64* %3001
  %3032 = add i64 %3031, 1
  %3033 = alloca i64
  store i64 %3032, i64* %3033
  %3034 = alloca i1
  store i1 1, i1* %3034
  %3035 = call i8* @llvm.stacksave()
  br label %while_cond749
while_cond749:
  %3036 = load i1, i1* %3034
  br i1 %3036, label %while_body750, label %while_end751
while_body750:
  call void @llvm.stackrestore(i8* %3035)
  %3037 = load i64, i64* %3033
  %3038 = load %nyx_string*, %nyx_string** %s.ptr
  %3039 = call i64 @nyx_string_byte_length(%nyx_string* %3038)
  %3040 = icmp sge i64 %3037, %3039
  br i1 %3040, label %then752, label %else753
then752:
  store i1 0, i1* %3034
  br label %merge754
else753:
  %3041 = load %nyx_string*, %nyx_string** %s.ptr
  %3042 = load i64, i64* %3033
  %3043 = load i64, i64* %3033
  %3044 = add i64 %3043, 1
  %3045 = call %nyx_string* @nyx_string_substring(%nyx_string* %3041, i64 %3042, i64 %3044)
  %3046 = alloca %nyx_string*
  store %nyx_string* %3045, %nyx_string** %3046
  %3047 = alloca i1
  store i1 true, i1* %3047
  %3048 = alloca i1
  store i1 true, i1* %3048
  %3049 = alloca i1
  store i1 true, i1* %3049
  %3050 = load %nyx_string*, %nyx_string** %3046
  %3051 = load %nyx_string*, %nyx_string** %3007
  %3052 = call i1 @nyx_string_equals(%nyx_string* %3050, %nyx_string* %3051)
  br i1 %3052, label %sc_or_end756, label %sc_or_rhs755
sc_or_rhs755:
  %3053 = load %nyx_string*, %nyx_string** %3046
  %3054 = load %nyx_string*, %nyx_string** %3010
  %3055 = call i1 @nyx_string_equals(%nyx_string* %3053, %nyx_string* %3054)
  store i1 %3055, i1* %3049
  br label %sc_or_end756
sc_or_end756:
  %3056 = load i1, i1* %3049
  br i1 %3056, label %sc_or_end758, label %sc_or_rhs757
sc_or_rhs757:
  %3057 = load %nyx_string*, %nyx_string** %3046
  %3058 = load %nyx_string*, %nyx_string** %3013
  %3059 = call i1 @nyx_string_equals(%nyx_string* %3057, %nyx_string* %3058)
  store i1 %3059, i1* %3048
  br label %sc_or_end758
sc_or_end758:
  %3060 = load i1, i1* %3048
  br i1 %3060, label %sc_or_end760, label %sc_or_rhs759
sc_or_rhs759:
  %3061 = load %nyx_string*, %nyx_string** %3046
  %3062 = load %nyx_string*, %nyx_string** %3016
  %3063 = call i1 @nyx_string_equals(%nyx_string* %3061, %nyx_string* %3062)
  store i1 %3063, i1* %3047
  br label %sc_or_end760
sc_or_end760:
  %3064 = load i1, i1* %3047
  br i1 %3064, label %then761, label %else762
then761:
  store i1 0, i1* %3034
  br label %merge763
else762:
  %3065 = load i64, i64* %3033
  %3066 = add i64 %3065, 1
  store i64 %3066, i64* %3033
  br label %merge763
merge763:
  br label %merge754
merge754:
  br label %while_cond749
while_end751:
  %3067 = load %nyx_string*, %nyx_string** %s.ptr
  %3068 = load i64, i64* %3001
  %3069 = add i64 %3068, 1
  %3070 = load i64, i64* %3033
  %3071 = call %nyx_string* @nyx_string_substring(%nyx_string* %3067, i64 %3069, i64 %3070)
  %3072 = alloca %nyx_string*
  store %nyx_string* %3071, %nyx_string** %3072
  %3073 = load %nyx_string*, %nyx_string** %3072
  %3074 = call i64 @nyx_string_byte_length(%nyx_string* %3073)
  %3075 = icmp sgt i64 %3074, 0
  br i1 %3075, label %then764, label %else765
then764:
  %3076 = load { i64, i8* }*, { i64, i8* }** %3000
  %3077 = load %nyx_string*, %nyx_string** %3072
  %3078 = ptrtoint %nyx_string* %3077 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3076, i64 %3078, i64 2)
  br label %merge766
else765:
  br label %merge766
merge766:
  %3079 = load i64, i64* %3033
  store i64 %3079, i64* %3001
  br label %merge748
else747:
  %3080 = load i64, i64* %3001
  %3081 = add i64 %3080, 1
  store i64 %3081, i64* %3001
  br label %merge748
merge748:
  br label %while_cond743
while_end745:
  %3082 = load { i64, i8* }*, { i64, i8* }** %3000
  ret { i64, i8* }* %3082
}

define internal i1 @lt_set_contains(
{ i64, i8* }* %set.param, %nyx_string* %name.param) {
  %set.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %set.param, { i64, i8* }** %set.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %3083 = alloca i64
  store i64 0, i64* %3083
  %3084 = call i8* @llvm.stacksave()
  br label %while_cond767
while_cond767:
  %3085 = load i64, i64* %3083
  %3086 = load { i64, i8* }*, { i64, i8* }** %set.ptr
  %3087 = call i64 @nyx_array_length({ i64, i8* }* %3086)
  %3088 = icmp slt i64 %3085, %3087
  br i1 %3088, label %while_body768, label %while_end769
while_body768:
  call void @llvm.stackrestore(i8* %3084)
  %3089 = load { i64, i8* }*, { i64, i8* }** %set.ptr
  %3090 = load i64, i64* %3083
  %3091 = call i64 @nyx_array_get_checked({ i64, i8* }* %3089, i64 %3090, i64 2)
  %3092 = inttoptr i64 %3091 to %nyx_string*
  %3093 = alloca %nyx_string*
  store %nyx_string* %3092, %nyx_string** %3093
  %3094 = load %nyx_string*, %nyx_string** %3093
  %3095 = load %nyx_string*, %nyx_string** %name.ptr
  %3096 = call i1 @nyx_string_equals(%nyx_string* %3094, %nyx_string* %3095)
  br i1 %3096, label %then770, label %else771
then770:
  ret i1 1
else771:
  br label %merge772
merge772:
  %3097 = load i64, i64* %3083
  %3098 = add i64 %3097, 1
  store i64 %3098, i64* %3083
  br label %while_cond767
while_end769:
  ret i1 0
}

define internal i1 @ret_is_reflike(
%nyx_string* %ret_ty.param, { i64, i8* }* %struct_lt_set.param) {
  %ret_ty.ptr = alloca %nyx_string*
  store %nyx_string* %ret_ty.param, %nyx_string** %ret_ty.ptr
  %struct_lt_set.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %struct_lt_set.param, { i64, i8* }** %struct_lt_set.ptr
  %3099 = load %nyx_string*, %nyx_string** %ret_ty.ptr
  %3100 = call i64 @nyx_string_byte_length(%nyx_string* %3099)
  %3101 = icmp eq i64 %3100, 0
  br i1 %3101, label %then773, label %else774
then773:
  ret i1 0
else774:
  br label %merge775
merge775:
  %3102 = load %nyx_string*, %nyx_string** %ret_ty.ptr
  %3103 = call %nyx_string* @nyx_string_substring(%nyx_string* %3102, i64 0, i64 1)
  %3104 = getelementptr [2 x i8], [2 x i8]* @.str223, i32 0, i32 0
  %3105 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str223.c, i8* %3104, i64 1)
  %3106 = call i1 @nyx_string_equals(%nyx_string* %3103, %nyx_string* %3105)
  br i1 %3106, label %then776, label %else777
then776:
  ret i1 1
else777:
  br label %merge778
merge778:
  %3107 = load %nyx_string*, %nyx_string** %ret_ty.ptr
  %3108 = alloca %nyx_string*
  store %nyx_string* %3107, %nyx_string** %3108
  %3109 = load %nyx_string*, %nyx_string** %ret_ty.ptr
  %3110 = getelementptr [2 x i8], [2 x i8]* @.str224, i32 0, i32 0
  %3111 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str224.c, i8* %3110, i64 1)
  %3112 = call i64 @nyx_string_index_of(%nyx_string* %3109, %nyx_string* %3111)
  %3113 = alloca i64
  store i64 %3112, i64* %3113
  %3114 = load i64, i64* %3113
  %3115 = icmp sge i64 %3114, 0
  br i1 %3115, label %then779, label %else780
then779:
  %3116 = load %nyx_string*, %nyx_string** %ret_ty.ptr
  %3117 = load i64, i64* %3113
  %3118 = call %nyx_string* @nyx_string_substring(%nyx_string* %3116, i64 0, i64 %3117)
  store %nyx_string* %3118, %nyx_string** %3108
  br label %merge781
else780:
  br label %merge781
merge781:
  %3119 = alloca i64
  store i64 0, i64* %3119
  %3120 = call i8* @llvm.stacksave()
  br label %while_cond782
while_cond782:
  %3121 = load i64, i64* %3119
  %3122 = load { i64, i8* }*, { i64, i8* }** %struct_lt_set.ptr
  %3123 = call i64 @nyx_array_length({ i64, i8* }* %3122)
  %3124 = icmp slt i64 %3121, %3123
  br i1 %3124, label %while_body783, label %while_end784
while_body783:
  call void @llvm.stackrestore(i8* %3120)
  %3125 = load { i64, i8* }*, { i64, i8* }** %struct_lt_set.ptr
  %3126 = load i64, i64* %3119
  %3127 = call i64 @nyx_array_get_checked({ i64, i8* }* %3125, i64 %3126, i64 2)
  %3128 = inttoptr i64 %3127 to %nyx_string*
  %3129 = alloca %nyx_string*
  store %nyx_string* %3128, %nyx_string** %3129
  %3130 = load %nyx_string*, %nyx_string** %3129
  %3131 = load %nyx_string*, %nyx_string** %3108
  %3132 = call i1 @nyx_string_equals(%nyx_string* %3130, %nyx_string* %3131)
  br i1 %3132, label %then785, label %else786
then785:
  ret i1 1
else786:
  br label %merge787
merge787:
  %3133 = load i64, i64* %3119
  %3134 = add i64 %3133, 1
  store i64 %3134, i64* %3119
  br label %while_cond782
while_end784:
  ret i1 0
}

define internal i8* @sig_build(
%ASTNode %root.param, { i64, i8* }* %struct_lt_set.param) {
  %root.ptr = alloca %ASTNode
  store %ASTNode %root.param, %ASTNode* %root.ptr
  %struct_lt_set.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %struct_lt_set.param, { i64, i8* }** %struct_lt_set.ptr
  %3135 = call i8* @nyx_map_new(i32 0)
  %3136 = alloca i8*
  store i8* %3135, i8** %3136
  %3137 = load %ASTNode, %ASTNode* %root.ptr
  %3138 = call { i64, i8* }* @bc_array_at(%ASTNode %3137, i64 0)
  %3139 = alloca { i64, i8* }*
  store { i64, i8* }* %3138, { i64, i8* }** %3139
  %3140 = alloca i64
  store i64 0, i64* %3140
  %3141 = getelementptr [7 x i8], [7 x i8]* @.str225, i32 0, i32 0
  %3142 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str225.c, i8* %3141, i64 6)
  %3143 = alloca %nyx_string*
  store %nyx_string* %3142, %nyx_string** %3143
  %3144 = getelementptr [9 x i8], [9 x i8]* @.str226, i32 0, i32 0
  %3145 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str226.c, i8* %3144, i64 8)
  %3146 = alloca %nyx_string*
  store %nyx_string* %3145, %nyx_string** %3146
  %3147 = getelementptr [9 x i8], [9 x i8]* @.str227, i32 0, i32 0
  %3148 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str227.c, i8* %3147, i64 8)
  %3149 = alloca %nyx_string*
  store %nyx_string* %3148, %nyx_string** %3149
  %3150 = getelementptr [5 x i8], [5 x i8]* @.str228, i32 0, i32 0
  %3151 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str228.c, i8* %3150, i64 4)
  %3152 = alloca %nyx_string*
  store %nyx_string* %3151, %nyx_string** %3152
  %3153 = getelementptr [2 x i8], [2 x i8]* @.str229, i32 0, i32 0
  %3154 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str229.c, i8* %3153, i64 1)
  %3155 = alloca %nyx_string*
  store %nyx_string* %3154, %nyx_string** %3155
  %3156 = getelementptr [1 x i8], [1 x i8]* @.str230, i32 0, i32 0
  %3157 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str230.c, i8* %3156, i64 0)
  %3158 = alloca %nyx_string*
  store %nyx_string* %3157, %nyx_string** %3158
  %3159 = getelementptr [10 x i8], [10 x i8]* @.str231, i32 0, i32 0
  %3160 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str231.c, i8* %3159, i64 9)
  %3161 = alloca %nyx_string*
  store %nyx_string* %3160, %nyx_string** %3161
  %3162 = getelementptr [12 x i8], [12 x i8]* @.str232, i32 0, i32 0
  %3163 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str232.c, i8* %3162, i64 11)
  %3164 = alloca %nyx_string*
  store %nyx_string* %3163, %nyx_string** %3164
  %3165 = call i8* @llvm.stacksave()
  br label %while_cond788
while_cond788:
  %3166 = load i64, i64* %3140
  %3167 = load { i64, i8* }*, { i64, i8* }** %3139
  %3168 = call i64 @nyx_array_length({ i64, i8* }* %3167)
  %3169 = icmp slt i64 %3166, %3168
  br i1 %3169, label %while_body789, label %while_end790
while_body789:
  call void @llvm.stackrestore(i8* %3165)
  %3170 = load { i64, i8* }*, { i64, i8* }** %3139
  %3171 = load i64, i64* %3140
  %3172 = call i64 @nyx_array_get({ i64, i8* }* %3170, i64 %3171)
  %3173 = inttoptr i64 %3172 to { i64, i8* }*
  %3174 = call i64 @nyx_array_get({ i64, i8* }* %3173, i64 0)
  %3175 = call i64 @nyx_array_get({ i64, i8* }* %3173, i64 1)
  %3176 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %3173, i64 2)
  %3177 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %3173, i64 3)
  %3178 = inttoptr i64 %3174 to %nyx_string*
  %3179 = inttoptr i64 %3175 to { i64, i8* }*
  %3180 = alloca %ASTNode
  %3181 = getelementptr inbounds %ASTNode, %ASTNode* %3180, i32 0, i32 0
  store %nyx_string* %3178, %nyx_string** %3181
  %3182 = getelementptr inbounds %ASTNode, %ASTNode* %3180, i32 0, i32 1
  store { i64, i8* }* %3179, { i64, i8* }** %3182
  %3183 = getelementptr inbounds %ASTNode, %ASTNode* %3180, i32 0, i32 2
  store i64 %3176, i64* %3183
  %3184 = getelementptr inbounds %ASTNode, %ASTNode* %3180, i32 0, i32 3
  store i64 %3177, i64* %3184
  %3185 = load %ASTNode, %ASTNode* %3180
  %3186 = alloca %ASTNode
  store %ASTNode %3185, %ASTNode* %3186
  %3187 = getelementptr %ASTNode, %ASTNode* %3186, i32 0, i32 0
  %3188 = load %nyx_string*, %nyx_string** %3187
  %3189 = load %nyx_string*, %nyx_string** %3143
  %3190 = call i1 @nyx_string_equals(%nyx_string* %3188, %nyx_string* %3189)
  br i1 %3190, label %then791, label %else792
then791:
  %3191 = load %ASTNode, %ASTNode* %3186
  %3192 = call %ASTNode @bc_node_at(%ASTNode %3191, i64 0)
  store %ASTNode %3192, %ASTNode* %3186
  br label %merge793
else792:
  br label %merge793
merge793:
  %3193 = getelementptr %ASTNode, %ASTNode* %3186, i32 0, i32 0
  %3194 = load %nyx_string*, %nyx_string** %3193
  %3195 = alloca %nyx_string*
  store %nyx_string* %3194, %nyx_string** %3195
  %3196 = alloca i1
  store i1 true, i1* %3196
  %3197 = load %nyx_string*, %nyx_string** %3195
  %3198 = load %nyx_string*, %nyx_string** %3146
  %3199 = call i1 @nyx_string_equals(%nyx_string* %3197, %nyx_string* %3198)
  br i1 %3199, label %sc_or_end795, label %sc_or_rhs794
sc_or_rhs794:
  %3200 = load %nyx_string*, %nyx_string** %3195
  %3201 = load %nyx_string*, %nyx_string** %3149
  %3202 = call i1 @nyx_string_equals(%nyx_string* %3200, %nyx_string* %3201)
  store i1 %3202, i1* %3196
  br label %sc_or_end795
sc_or_end795:
  %3203 = load i1, i1* %3196
  br i1 %3203, label %then796, label %else797
then796:
  %3204 = getelementptr %ASTNode, %ASTNode* %3186, i32 0, i32 1
  %3205 = load { i64, i8* }*, { i64, i8* }** %3204
  %3206 = alloca { i64, i8* }*
  store { i64, i8* }* %3205, { i64, i8* }** %3206
  %3207 = load { i64, i8* }*, { i64, i8* }** %3206
  %3208 = call i64 @nyx_array_get_checked({ i64, i8* }* %3207, i64 0, i64 2)
  %3209 = inttoptr i64 %3208 to %nyx_string*
  %3210 = alloca %nyx_string*
  store %nyx_string* %3209, %nyx_string** %3210
  %3211 = load { i64, i8* }*, { i64, i8* }** %3206
  %3212 = call i64 @nyx_array_get_checked({ i64, i8* }* %3211, i64 2, i64 2)
  %3213 = inttoptr i64 %3212 to %nyx_string*
  %3214 = alloca %nyx_string*
  store %nyx_string* %3213, %nyx_string** %3214
  %3215 = call { i64, i8* }* @nyx_array_new_ptr()
  %3216 = alloca { i64, i8* }*
  store { i64, i8* }* %3215, { i64, i8* }** %3216
  %3217 = alloca i64
  store i64 0, i64* %3217
  %3218 = load %nyx_string*, %nyx_string** %3214
  %3219 = load { i64, i8* }*, { i64, i8* }** %struct_lt_set.ptr
  %3220 = call i1 @ret_is_reflike(%nyx_string* %3218, { i64, i8* }* %3219)
  br i1 %3220, label %then799, label %else800
then799:
  %3221 = load { i64, i8* }*, { i64, i8* }** %3206
  %3222 = call i64 @nyx_array_get({ i64, i8* }* %3221, i64 1)
  %3223 = inttoptr i64 %3222 to { i64, i8* }*
  %3224 = alloca { i64, i8* }*
  store { i64, i8* }* %3223, { i64, i8* }** %3224
  %3225 = alloca i64
  store i64 0, i64* %3225
  %3226 = sub i64 0, 1
  %3227 = alloca i64
  store i64 %3226, i64* %3227
  %3228 = alloca i64
  store i64 0, i64* %3228
  %3229 = call i8* @llvm.stacksave()
  br label %while_cond802
while_cond802:
  %3230 = load i64, i64* %3228
  %3231 = load { i64, i8* }*, { i64, i8* }** %3224
  %3232 = call i64 @nyx_array_length({ i64, i8* }* %3231)
  %3233 = icmp slt i64 %3230, %3232
  br i1 %3233, label %while_body803, label %while_end804
while_body803:
  call void @llvm.stackrestore(i8* %3229)
  %3234 = load { i64, i8* }*, { i64, i8* }** %3224
  %3235 = load i64, i64* %3228
  %3236 = call i64 @nyx_array_get({ i64, i8* }* %3234, i64 %3235)
  %3237 = inttoptr i64 %3236 to { i64, i8* }*
  %3238 = alloca { i64, i8* }*
  store { i64, i8* }* %3237, { i64, i8* }** %3238
  %3239 = load { i64, i8* }*, { i64, i8* }** %3238
  %3240 = call i64 @nyx_array_length({ i64, i8* }* %3239)
  %3241 = icmp sge i64 %3240, 2
  br i1 %3241, label %then805, label %else806
then805:
  %3242 = load { i64, i8* }*, { i64, i8* }** %3238
  %3243 = call i64 @nyx_array_get_checked({ i64, i8* }* %3242, i64 0, i64 2)
  %3244 = inttoptr i64 %3243 to %nyx_string*
  %3245 = alloca %nyx_string*
  store %nyx_string* %3244, %nyx_string** %3245
  %3246 = load { i64, i8* }*, { i64, i8* }** %3238
  %3247 = call i64 @nyx_array_get_checked({ i64, i8* }* %3246, i64 1, i64 2)
  %3248 = inttoptr i64 %3247 to %nyx_string*
  %3249 = alloca %nyx_string*
  store %nyx_string* %3248, %nyx_string** %3249
  %3250 = load %nyx_string*, %nyx_string** %3245
  %3251 = load %nyx_string*, %nyx_string** %3152
  %3252 = call i1 @nyx_string_equals(%nyx_string* %3250, %nyx_string* %3251)
  %3253 = xor i1 %3252, true
  br i1 %3253, label %then808, label %else809
then808:
  %3254 = load %nyx_string*, %nyx_string** %3249
  %3255 = call i64 @nyx_string_byte_length(%nyx_string* %3254)
  %3256 = icmp sgt i64 %3255, 0
  br i1 %3256, label %then811, label %else812
then811:
  %3257 = load %nyx_string*, %nyx_string** %3249
  %3258 = call %nyx_string* @nyx_string_substring(%nyx_string* %3257, i64 0, i64 1)
  %3259 = load %nyx_string*, %nyx_string** %3155
  %3260 = call i1 @nyx_string_equals(%nyx_string* %3258, %nyx_string* %3259)
  br i1 %3260, label %then814, label %else815
then814:
  %3261 = load i64, i64* %3225
  %3262 = add i64 %3261, 1
  store i64 %3262, i64* %3225
  %3263 = load i64, i64* %3228
  store i64 %3263, i64* %3227
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
  %3264 = load i64, i64* %3228
  %3265 = add i64 %3264, 1
  store i64 %3265, i64* %3228
  br label %while_cond802
while_end804:
  %3266 = load i64, i64* %3225
  %3267 = icmp eq i64 %3266, 1
  br i1 %3267, label %then817, label %else818
then817:
  %3268 = call { i64, i8* }* @nyx_array_new_ptr()
  %3269 = load i64, i64* %3227
  call void @nyx_array_push({ i64, i8* }* %3268, i64 %3269)
  store { i64, i8* }* %3268, { i64, i8* }** %3216
  br label %merge819
else818:
  br label %merge819
merge819:
  br label %merge801
else800:
  br label %merge801
merge801:
  %3270 = load %nyx_string*, %nyx_string** %3158
  %3271 = alloca %nyx_string*
  store %nyx_string* %3270, %nyx_string** %3271
  %3272 = call { i64, i8* }* @nyx_array_new_ptr()
  %3273 = alloca { i64, i8* }*
  store { i64, i8* }* %3272, { i64, i8* }** %3273
  %3274 = alloca i64
  store i64 6, i64* %3274
  %3275 = call i8* @llvm.stacksave()
  br label %while_cond820
while_cond820:
  %3276 = load i64, i64* %3274
  %3277 = load { i64, i8* }*, { i64, i8* }** %3206
  %3278 = call i64 @nyx_array_length({ i64, i8* }* %3277)
  %3279 = icmp slt i64 %3276, %3278
  br i1 %3279, label %while_body821, label %while_end822
while_body821:
  call void @llvm.stackrestore(i8* %3275)
  %3280 = load { i64, i8* }*, { i64, i8* }** %3206
  %3281 = load i64, i64* %3274
  %3282 = call i64 @nyx_array_get({ i64, i8* }* %3280, i64 %3281)
  %3283 = inttoptr i64 %3282 to { i64, i8* }*
  %3284 = alloca { i64, i8* }*
  store { i64, i8* }* %3283, { i64, i8* }** %3284
  %3285 = load { i64, i8* }*, { i64, i8* }** %3284
  %3286 = call i64 @nyx_array_length({ i64, i8* }* %3285)
  %3287 = icmp sge i64 %3286, 2
  br i1 %3287, label %then823, label %else824
then823:
  %3288 = load { i64, i8* }*, { i64, i8* }** %3284
  %3289 = call i64 @nyx_array_get_checked({ i64, i8* }* %3288, i64 0, i64 2)
  %3290 = inttoptr i64 %3289 to %nyx_string*
  %3291 = alloca %nyx_string*
  store %nyx_string* %3290, %nyx_string** %3291
  %3292 = load %nyx_string*, %nyx_string** %3291
  %3293 = load %nyx_string*, %nyx_string** %3161
  %3294 = call i1 @nyx_string_equals(%nyx_string* %3292, %nyx_string* %3293)
  br i1 %3294, label %then826, label %else827
then826:
  %3295 = load { i64, i8* }*, { i64, i8* }** %3284
  %3296 = call i64 @nyx_array_get({ i64, i8* }* %3295, i64 1)
  %3297 = inttoptr i64 %3296 to %nyx_string*
  store %nyx_string* %3297, %nyx_string** %3271
  br label %merge828
else827:
  br label %merge828
merge828:
  %3298 = load %nyx_string*, %nyx_string** %3291
  %3299 = load %nyx_string*, %nyx_string** %3164
  %3300 = call i1 @nyx_string_equals(%nyx_string* %3298, %nyx_string* %3299)
  br i1 %3300, label %then829, label %else830
then829:
  %3301 = load { i64, i8* }*, { i64, i8* }** %3284
  %3302 = call i64 @nyx_array_get({ i64, i8* }* %3301, i64 1)
  %3303 = inttoptr i64 %3302 to { i64, i8* }*
  store { i64, i8* }* %3303, { i64, i8* }** %3273
  br label %merge831
else830:
  br label %merge831
merge831:
  br label %merge825
else824:
  br label %merge825
merge825:
  %3304 = load i64, i64* %3274
  %3305 = add i64 %3304, 1
  store i64 %3305, i64* %3274
  br label %while_cond820
while_end822:
  %3306 = call { i64, i8* }* @nyx_array_new_ptr()
  %3307 = alloca { i64, i8* }*
  store { i64, i8* }* %3306, { i64, i8* }** %3307
  %3308 = load %nyx_string*, %nyx_string** %3271
  %3309 = call i64 @nyx_string_byte_length(%nyx_string* %3308)
  %3310 = icmp sgt i64 %3309, 0
  br i1 %3310, label %then832, label %else833
then832:
  %3311 = load { i64, i8* }*, { i64, i8* }** %3307
  %3312 = load %nyx_string*, %nyx_string** %3271
  %3313 = ptrtoint %nyx_string* %3312 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3311, i64 %3313, i64 2)
  br label %merge834
else833:
  br label %merge834
merge834:
  %3314 = load %nyx_string*, %nyx_string** %3214
  %3315 = load { i64, i8* }*, { i64, i8* }** %struct_lt_set.ptr
  %3316 = call i1 @ret_is_reflike(%nyx_string* %3314, { i64, i8* }* %3315)
  br i1 %3316, label %then835, label %else836
then835:
  %3317 = load %nyx_string*, %nyx_string** %3214
  %3318 = call { i64, i8* }* @extract_lifetimes(%nyx_string* %3317)
  %3319 = alloca { i64, i8* }*
  store { i64, i8* }* %3318, { i64, i8* }** %3319
  %3320 = alloca i64
  store i64 0, i64* %3320
  %3321 = call i8* @llvm.stacksave()
  br label %while_cond838
while_cond838:
  %3322 = load i64, i64* %3320
  %3323 = load { i64, i8* }*, { i64, i8* }** %3319
  %3324 = call i64 @nyx_array_length({ i64, i8* }* %3323)
  %3325 = icmp slt i64 %3322, %3324
  br i1 %3325, label %while_body839, label %while_end840
while_body839:
  call void @llvm.stackrestore(i8* %3321)
  %3326 = load { i64, i8* }*, { i64, i8* }** %3307
  %3327 = load { i64, i8* }*, { i64, i8* }** %3319
  %3328 = load i64, i64* %3320
  %3329 = call i64 @nyx_array_get({ i64, i8* }* %3327, i64 %3328)
  %3330 = load { i64, i8* }*, { i64, i8* }** %3319
  %3331 = load i64, i64* %3320
  %3332 = call i64 @nyx_array_get_tag({ i64, i8* }* %3330, i64 %3331)
  call void @nyx_array_push_tagged({ i64, i8* }* %3326, i64 %3329, i64 %3332)
  %3333 = load i64, i64* %3320
  %3334 = add i64 %3333, 1
  store i64 %3334, i64* %3320
  br label %while_cond838
while_end840:
  br label %merge837
else836:
  br label %merge837
merge837:
  %3335 = load { i64, i8* }*, { i64, i8* }** %3307
  %3336 = call i64 @nyx_array_length({ i64, i8* }* %3335)
  %3337 = icmp sgt i64 %3336, 0
  br i1 %3337, label %then841, label %else842
then841:
  %3338 = call { i64, i8* }* @nyx_array_new_ptr()
  %3339 = alloca { i64, i8* }*
  store { i64, i8* }* %3338, { i64, i8* }** %3339
  %3340 = alloca i64
  store i64 0, i64* %3340
  %3341 = call i8* @llvm.stacksave()
  br label %while_cond844
while_cond844:
  %3342 = load i64, i64* %3340
  %3343 = load { i64, i8* }*, { i64, i8* }** %3273
  %3344 = call i64 @nyx_array_length({ i64, i8* }* %3343)
  %3345 = icmp slt i64 %3342, %3344
  br i1 %3345, label %while_body845, label %while_end846
while_body845:
  call void @llvm.stackrestore(i8* %3341)
  %3346 = load { i64, i8* }*, { i64, i8* }** %3273
  %3347 = load i64, i64* %3340
  %3348 = call i64 @nyx_array_get_checked({ i64, i8* }* %3346, i64 %3347, i64 2)
  %3349 = inttoptr i64 %3348 to %nyx_string*
  %3350 = alloca %nyx_string*
  store %nyx_string* %3349, %nyx_string** %3350
  %3351 = load %nyx_string*, %nyx_string** %3350
  %3352 = call i64 @nyx_string_byte_length(%nyx_string* %3351)
  %3353 = icmp sgt i64 %3352, 0
  br i1 %3353, label %then847, label %else848
then847:
  %3354 = load { i64, i8* }*, { i64, i8* }** %3307
  %3355 = load %nyx_string*, %nyx_string** %3350
  %3356 = call i1 @lt_set_contains({ i64, i8* }* %3354, %nyx_string* %3355)
  br i1 %3356, label %then850, label %else851
then850:
  %3357 = load { i64, i8* }*, { i64, i8* }** %3339
  %3358 = load i64, i64* %3340
  call void @nyx_array_push({ i64, i8* }* %3357, i64 %3358)
  br label %merge852
else851:
  br label %merge852
merge852:
  br label %merge849
else848:
  br label %merge849
merge849:
  %3359 = load i64, i64* %3340
  %3360 = add i64 %3359, 1
  store i64 %3360, i64* %3340
  br label %while_cond844
while_end846:
  %3361 = load { i64, i8* }*, { i64, i8* }** %3339
  %3362 = call i64 @nyx_array_length({ i64, i8* }* %3361)
  %3363 = icmp sgt i64 %3362, 0
  br i1 %3363, label %then853, label %else854
then853:
  %3364 = load { i64, i8* }*, { i64, i8* }** %3339
  store { i64, i8* }* %3364, { i64, i8* }** %3216
  store i64 1, i64* %3217
  br label %merge855
else854:
  br label %merge855
merge855:
  br label %merge843
else842:
  br label %merge843
merge843:
  %3365 = load i8*, i8** %3136
  %3366 = load %nyx_string*, %nyx_string** %3210
  %3367 = call { i64, i8* }* @nyx_array_new_ptr()
  %3368 = load { i64, i8* }*, { i64, i8* }** %3216
  %3369 = bitcast { i64, i8* }* %3368 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %3367, i8* %3369)
  %3370 = load i64, i64* %3217
  call void @nyx_array_push({ i64, i8* }* %3367, i64 %3370)
  %3371 = call i8* @nyx_string_to_cstr(%nyx_string* %3366)
  %3372 = ptrtoint { i64, i8* }* %3367 to i64
  call void @nyx_map_insert_int(i8* %3365, i8* %3371, i64 %3372)
  br label %merge798
else797:
  br label %merge798
merge798:
  %3373 = load i64, i64* %3140
  %3374 = add i64 %3373, 1
  store i64 %3374, i64* %3140
  br label %while_cond788
while_end790:
  %3375 = load i8*, i8** %3136
  ret i8* %3375
}

define internal { i64, i8* }* @sig_lookup(
i8* %sigs.param, %nyx_string* %name.param) {
  %sigs.ptr = alloca i8*
  store i8* %sigs.param, i8** %sigs.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %3376 = load %nyx_string*, %nyx_string** %name.ptr
  %3377 = getelementptr [1 x i8], [1 x i8]* @.str233, i32 0, i32 0
  %3378 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str233.c, i8* %3377, i64 0)
  %3379 = call i1 @nyx_string_equals(%nyx_string* %3376, %nyx_string* %3378)
  %3380 = xor i1 %3379, true
  br i1 %3380, label %then856, label %else857
then856:
  %3381 = load i8*, i8** %sigs.ptr
  %3382 = load %nyx_string*, %nyx_string** %name.ptr
  %3383 = call i8* @nyx_string_to_cstr(%nyx_string* %3382)
  %3384 = call i1 @nyx_map_contains_str(i8* %3381, i8* %3383)
  br i1 %3384, label %then859, label %else860
then859:
  %3385 = load i8*, i8** %sigs.ptr
  %3386 = load %nyx_string*, %nyx_string** %name.ptr
  %3387 = call i8* @nyx_string_to_cstr(%nyx_string* %3386)
  %3388 = call i64 @nyx_map_get_int(i8* %3385, i8* %3387)
  %3389 = inttoptr i64 %3388 to { i64, i8* }*
  %3390 = alloca { i64, i8* }*
  store { i64, i8* }* %3389, { i64, i8* }** %3390
  %3391 = call { i64, i8* }* @nyx_array_new_ptr()
  %3392 = load { i64, i8* }*, { i64, i8* }** %3390
  %3393 = call i64 @nyx_array_get({ i64, i8* }* %3392, i64 0)
  call void @nyx_array_push({ i64, i8* }* %3391, i64 %3393)
  %3394 = load { i64, i8* }*, { i64, i8* }** %3390
  %3395 = call i64 @nyx_array_get({ i64, i8* }* %3394, i64 1)
  call void @nyx_array_push({ i64, i8* }* %3391, i64 %3395)
  ret { i64, i8* }* %3391
else860:
  br label %merge861
merge861:
  br label %merge858
else857:
  br label %merge858
merge858:
  %3396 = call { i64, i8* }* @nyx_array_new_ptr()
  %3397 = call { i64, i8* }* @nyx_array_new_ptr()
  %3398 = bitcast { i64, i8* }* %3397 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %3396, i8* %3398)
  call void @nyx_array_push_tagged({ i64, i8* }* %3396, i64 0, i64 1)
  ret { i64, i8* }* %3396
}

define i1 @borrow_check(
{ i64, i8* }* %ast.param) {
  %ast.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ast.param, { i64, i8* }** %ast.ptr
  %3399 = load { i64, i8* }*, { i64, i8* }** %ast.ptr
  %3400 = call %ASTNode @bc_root_of({ i64, i8* }* %3399)
  %3401 = alloca %ASTNode
  store %ASTNode %3400, %ASTNode* %3401
  %3402 = load %ASTNode, %ASTNode* %3401
  %3403 = call { i64, i8* }* @collect_affine_types(%ASTNode %3402)
  %3404 = alloca { i64, i8* }*
  store { i64, i8* }* %3403, { i64, i8* }** %3404
  %3405 = load %ASTNode, %ASTNode* %3401
  %3406 = call { i64, i8* }* @struct_lt_build(%ASTNode %3405)
  %3407 = alloca { i64, i8* }*
  store { i64, i8* }* %3406, { i64, i8* }** %3407
  %3408 = load %ASTNode, %ASTNode* %3401
  %3409 = load { i64, i8* }*, { i64, i8* }** %3407
  %3410 = call i8* @sig_build(%ASTNode %3408, { i64, i8* }* %3409)
  %3411 = alloca i8*
  store i8* %3410, i8** %3411
  %3412 = call { i64, i8* }* @state_new()
  %3413 = alloca { i64, i8* }*
  store { i64, i8* }* %3412, { i64, i8* }** %3413
  %3414 = load { i64, i8* }*, { i64, i8* }** %3404
  %3415 = load i8*, i8** %3411
  %3416 = call { i64, i8* }* @tm_new({ i64, i8* }* %3414, i8* %3415)
  %3417 = alloca { i64, i8* }*
  store { i64, i8* }* %3416, { i64, i8* }** %3417
  %3418 = call { i64, i8* }* @nyx_array_new_ptr()
  %3419 = alloca { i64, i8* }*
  store { i64, i8* }* %3418, { i64, i8* }** %3419
  %3420 = load %ASTNode, %ASTNode* %3401
  %3421 = load { i64, i8* }*, { i64, i8* }** %3413
  %3422 = load { i64, i8* }*, { i64, i8* }** %3417
  %3423 = load { i64, i8* }*, { i64, i8* }** %3419
  %3424 = call i64 @bc_walk(%ASTNode %3420, { i64, i8* }* %3421, { i64, i8* }* %3422, { i64, i8* }* %3423)
  %3425 = call i64 @bc_mode()
  %3426 = alloca i64
  store i64 %3425, i64* %3426
  %3427 = load i64, i64* %3426
  %3428 = icmp eq i64 %3427, 0
  br i1 %3428, label %then862, label %else863
then862:
  ret i1 1
else863:
  br label %merge864
merge864:
  %3429 = alloca i64
  store i64 0, i64* %3429
  %3430 = alloca i64
  store i64 0, i64* %3430
  %3431 = call i8* @llvm.stacksave()
  br label %while_cond865
while_cond865:
  %3432 = load i64, i64* %3430
  %3433 = load { i64, i8* }*, { i64, i8* }** %3419
  %3434 = call i64 @nyx_array_length({ i64, i8* }* %3433)
  %3435 = icmp slt i64 %3432, %3434
  br i1 %3435, label %while_body866, label %while_end867
while_body866:
  call void @llvm.stackrestore(i8* %3431)
  %3436 = load { i64, i8* }*, { i64, i8* }** %3419
  %3437 = load i64, i64* %3430
  %3438 = call i64 @nyx_array_get_checked({ i64, i8* }* %3436, i64 %3437, i64 2)
  %3439 = inttoptr i64 %3438 to %nyx_string*
  %3440 = alloca %nyx_string*
  store %nyx_string* %3439, %nyx_string** %3440
  %3441 = load i64, i64* %3426
  %3442 = icmp eq i64 %3441, 2
  br i1 %3442, label %then868, label %else869
then868:
  %3443 = load %nyx_string*, %nyx_string** %3440
  %3444 = call i1 @diag_is_gating(%nyx_string* %3443)
  br i1 %3444, label %then871, label %else872
then871:
  %3445 = getelementptr [7 x i8], [7 x i8]* @.str234, i32 0, i32 0
  %3446 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str234.c, i8* %3445, i64 6)
  %3447 = load %nyx_string*, %nyx_string** %3440
  %3448 = call %nyx_string* @nyx_string_concat(%nyx_string* %3446, %nyx_string* %3447)
  %3449 = call i8* @nyx_string_to_cstr(%nyx_string* %3448)
  call void @nyx_print_string(i8* %3449)
  %3450 = load i64, i64* %3429
  %3451 = add i64 %3450, 1
  store i64 %3451, i64* %3429
  br label %merge873
else872:
  br label %merge873
merge873:
  br label %merge870
else869:
  %3452 = getelementptr [15 x i8], [15 x i8]* @.str235, i32 0, i32 0
  %3453 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str235.c, i8* %3452, i64 14)
  %3454 = load %nyx_string*, %nyx_string** %3440
  %3455 = call %nyx_string* @nyx_string_concat(%nyx_string* %3453, %nyx_string* %3454)
  %3456 = call i8* @nyx_string_to_cstr(%nyx_string* %3455)
  call void @nyx_print_string(i8* %3456)
  br label %merge870
merge870:
  %3457 = load i64, i64* %3430
  %3458 = add i64 %3457, 1
  store i64 %3458, i64* %3430
  br label %while_cond865
while_end867:
  %3459 = load i64, i64* %3426
  %3460 = icmp eq i64 %3459, 2
  br i1 %3460, label %then874, label %else875
then874:
  %3461 = load i64, i64* %3429
  %3462 = icmp sgt i64 %3461, 0
  br i1 %3462, label %then877, label %else878
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
  store { i64, i8* }* %ty.param, { i64, i8* }** %ty.ptr
  %3463 = load { i64, i8* }*, { i64, i8* }** %ty.ptr
  %3464 = call i64 @nyx_array_length({ i64, i8* }* %3463)
  %3465 = icmp eq i64 %3464, 0
  br i1 %3465, label %then880, label %else881
then880:
  ret i1 1
else881:
  br label %merge882
merge882:
  %3466 = load { i64, i8* }*, { i64, i8* }** %ty.ptr
  %3467 = call i64 @nyx_array_get_checked({ i64, i8* }* %3466, i64 0, i64 2)
  %3468 = inttoptr i64 %3467 to %nyx_string*
  %3469 = alloca %nyx_string*
  store %nyx_string* %3468, %nyx_string** %3469
  %3470 = load %nyx_string*, %nyx_string** %3469
  %3471 = getelementptr [9 x i8], [9 x i8]* @.str236, i32 0, i32 0
  %3472 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str236.c, i8* %3471, i64 8)
  %3473 = call i1 @nyx_string_equals(%nyx_string* %3470, %nyx_string* %3472)
  br i1 %3473, label %then883, label %else884
then883:
  ret i1 0
else884:
  br label %merge885
merge885:
  %3474 = load %nyx_string*, %nyx_string** %3469
  %3475 = getelementptr [8 x i8], [8 x i8]* @.str237, i32 0, i32 0
  %3476 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str237.c, i8* %3475, i64 7)
  %3477 = call i1 @nyx_string_equals(%nyx_string* %3474, %nyx_string* %3476)
  br i1 %3477, label %then886, label %else887
then886:
  ret i1 0
else887:
  br label %merge888
merge888:
  %3478 = load %nyx_string*, %nyx_string** %3469
  %3479 = getelementptr [6 x i8], [6 x i8]* @.str238, i32 0, i32 0
  %3480 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str238.c, i8* %3479, i64 5)
  %3481 = call i1 @nyx_string_equals(%nyx_string* %3478, %nyx_string* %3480)
  br i1 %3481, label %then889, label %else890
then889:
  ret i1 0
else890:
  br label %merge891
merge891:
  %3482 = load %nyx_string*, %nyx_string** %3469
  %3483 = getelementptr [9 x i8], [9 x i8]* @.str239, i32 0, i32 0
  %3484 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str239.c, i8* %3483, i64 8)
  %3485 = call i1 @nyx_string_equals(%nyx_string* %3482, %nyx_string* %3484)
  br i1 %3485, label %then892, label %else893
then892:
  ret i1 0
else893:
  br label %merge894
merge894:
  %3486 = load %nyx_string*, %nyx_string** %3469
  %3487 = getelementptr [7 x i8], [7 x i8]* @.str240, i32 0, i32 0
  %3488 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str240.c, i8* %3487, i64 6)
  %3489 = call i1 @nyx_string_equals(%nyx_string* %3486, %nyx_string* %3488)
  br i1 %3489, label %then895, label %else896
then895:
  ret i1 0
else896:
  br label %merge897
merge897:
  %3490 = load %nyx_string*, %nyx_string** %3469
  %3491 = getelementptr [9 x i8], [9 x i8]* @.str241, i32 0, i32 0
  %3492 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str241.c, i8* %3491, i64 8)
  %3493 = call i1 @nyx_string_equals(%nyx_string* %3490, %nyx_string* %3492)
  br i1 %3493, label %then898, label %else899
then898:
  ret i1 0
else899:
  br label %merge900
merge900:
  %3494 = load %nyx_string*, %nyx_string** %3469
  %3495 = getelementptr [9 x i8], [9 x i8]* @.str242, i32 0, i32 0
  %3496 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str242.c, i8* %3495, i64 8)
  %3497 = call i1 @nyx_string_equals(%nyx_string* %3494, %nyx_string* %3496)
  br i1 %3497, label %then901, label %else902
then901:
  ret i1 0
else902:
  br label %merge903
merge903:
  %3498 = load %nyx_string*, %nyx_string** %3469
  %3499 = getelementptr [5 x i8], [5 x i8]* @.str243, i32 0, i32 0
  %3500 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str243.c, i8* %3499, i64 4)
  %3501 = call i1 @nyx_string_equals(%nyx_string* %3498, %nyx_string* %3500)
  br i1 %3501, label %then904, label %else905
then904:
  ret i1 0
else905:
  br label %merge906
merge906:
  %3502 = load %nyx_string*, %nyx_string** %3469
  %3503 = getelementptr [6 x i8], [6 x i8]* @.str244, i32 0, i32 0
  %3504 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str244.c, i8* %3503, i64 5)
  %3505 = call i1 @nyx_string_equals(%nyx_string* %3502, %nyx_string* %3504)
  br i1 %3505, label %then907, label %else908
then907:
  ret i1 1
else908:
  br label %merge909
merge909:
  %3506 = load %nyx_string*, %nyx_string** %3469
  %3507 = getelementptr [8 x i8], [8 x i8]* @.str245, i32 0, i32 0
  %3508 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str245.c, i8* %3507, i64 7)
  %3509 = call i1 @nyx_string_equals(%nyx_string* %3506, %nyx_string* %3508)
  br i1 %3509, label %then910, label %else911
then910:
  ret i1 1
else911:
  br label %merge912
merge912:
  %3510 = load %nyx_string*, %nyx_string** %3469
  %3511 = getelementptr [7 x i8], [7 x i8]* @.str246, i32 0, i32 0
  %3512 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str246.c, i8* %3511, i64 6)
  %3513 = call i1 @nyx_string_equals(%nyx_string* %3510, %nyx_string* %3512)
  br i1 %3513, label %then913, label %else914
then913:
  ret i1 1
else914:
  br label %merge915
merge915:
  %3514 = load %nyx_string*, %nyx_string** %3469
  %3515 = getelementptr [7 x i8], [7 x i8]* @.str247, i32 0, i32 0
  %3516 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str247.c, i8* %3515, i64 6)
  %3517 = call i1 @nyx_string_equals(%nyx_string* %3514, %nyx_string* %3516)
  br i1 %3517, label %then916, label %else917
then916:
  ret i1 1
else917:
  br label %merge918
merge918:
  %3518 = load %nyx_string*, %nyx_string** %3469
  %3519 = getelementptr [7 x i8], [7 x i8]* @.str248, i32 0, i32 0
  %3520 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str248.c, i8* %3519, i64 6)
  %3521 = call i1 @nyx_string_equals(%nyx_string* %3518, %nyx_string* %3520)
  br i1 %3521, label %then919, label %else920
then919:
  ret i1 1
else920:
  br label %merge921
merge921:
  %3522 = load %nyx_string*, %nyx_string** %3469
  %3523 = getelementptr [8 x i8], [8 x i8]* @.str249, i32 0, i32 0
  %3524 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str249.c, i8* %3523, i64 7)
  %3525 = call i1 @nyx_string_equals(%nyx_string* %3522, %nyx_string* %3524)
  br i1 %3525, label %then922, label %else923
then922:
  ret i1 1
else923:
  br label %merge924
merge924:
  %3526 = load %nyx_string*, %nyx_string** %3469
  %3527 = getelementptr [6 x i8], [6 x i8]* @.str250, i32 0, i32 0
  %3528 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str250.c, i8* %3527, i64 5)
  %3529 = call i1 @nyx_string_equals(%nyx_string* %3526, %nyx_string* %3528)
  br i1 %3529, label %then925, label %else926
then925:
  ret i1 1
else926:
  br label %merge927
merge927:
  %3530 = load %nyx_string*, %nyx_string** %3469
  %3531 = getelementptr [9 x i8], [9 x i8]* @.str251, i32 0, i32 0
  %3532 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str251.c, i8* %3531, i64 8)
  %3533 = call i1 @nyx_string_equals(%nyx_string* %3530, %nyx_string* %3532)
  br i1 %3533, label %then928, label %else929
then928:
  ret i1 1
else929:
  br label %merge930
merge930:
  %3534 = load %nyx_string*, %nyx_string** %3469
  %3535 = getelementptr [6 x i8], [6 x i8]* @.str252, i32 0, i32 0
  %3536 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str252.c, i8* %3535, i64 5)
  %3537 = call i1 @nyx_string_equals(%nyx_string* %3534, %nyx_string* %3536)
  br i1 %3537, label %then931, label %else932
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
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %3538 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 0
  %3539 = load %nyx_string*, %nyx_string** %3538
  %3540 = alloca %nyx_string*
  store %nyx_string* %3539, %nyx_string** %3540
  %3541 = load %nyx_string*, %nyx_string** %3540
  %3542 = getelementptr [11 x i8], [11 x i8]* @.str253, i32 0, i32 0
  %3543 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str253.c, i8* %3542, i64 10)
  %3544 = call i1 @nyx_string_equals(%nyx_string* %3541, %nyx_string* %3543)
  br i1 %3544, label %then934, label %else935
then934:
  %3545 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %3546 = load { i64, i8* }*, { i64, i8* }** %3545
  %3547 = alloca { i64, i8* }*
  store { i64, i8* }* %3546, { i64, i8* }** %3547
  %3548 = load { i64, i8* }*, { i64, i8* }** %3547
  %3549 = call i64 @nyx_array_length({ i64, i8* }* %3548)
  %3550 = icmp sgt i64 %3549, 0
  br i1 %3550, label %then937, label %else938
then937:
  %3551 = load { i64, i8* }*, { i64, i8* }** %3547
  %3552 = call i64 @nyx_array_get_checked({ i64, i8* }* %3551, i64 0, i64 2)
  %3553 = inttoptr i64 %3552 to %nyx_string*
  %3554 = alloca %nyx_string*
  store %nyx_string* %3553, %nyx_string** %3554
  %3555 = load %nyx_string*, %nyx_string** %3554
  ret %nyx_string* %3555
else938:
  br label %merge939
merge939:
  %3556 = getelementptr [1 x i8], [1 x i8]* @.str254, i32 0, i32 0
  %3557 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str254.c, i8* %3556, i64 0)
  ret %nyx_string* %3557
else935:
  br label %merge936
merge936:
  %3558 = load %nyx_string*, %nyx_string** %3540
  %3559 = getelementptr [13 x i8], [13 x i8]* @.str255, i32 0, i32 0
  %3560 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str255.c, i8* %3559, i64 12)
  %3561 = call i1 @nyx_string_equals(%nyx_string* %3558, %nyx_string* %3560)
  br i1 %3561, label %then940, label %else941
then940:
  %3562 = load %ASTNode, %ASTNode* %node.ptr
  %3563 = call %ASTNode @bc_node_at(%ASTNode %3562, i64 0)
  %3564 = call %nyx_string* @place_of(%ASTNode %3563)
  ret %nyx_string* %3564
else941:
  br label %merge942
merge942:
  %3565 = load %nyx_string*, %nyx_string** %3540
  %3566 = getelementptr [6 x i8], [6 x i8]* @.str256, i32 0, i32 0
  %3567 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str256.c, i8* %3566, i64 5)
  %3568 = call i1 @nyx_string_equals(%nyx_string* %3565, %nyx_string* %3567)
  br i1 %3568, label %then943, label %else944
then943:
  %3569 = load %ASTNode, %ASTNode* %node.ptr
  %3570 = call %ASTNode @bc_node_at(%ASTNode %3569, i64 0)
  %3571 = call %nyx_string* @place_of(%ASTNode %3570)
  ret %nyx_string* %3571
else944:
  br label %merge945
merge945:
  %3572 = load %nyx_string*, %nyx_string** %3540
  %3573 = getelementptr [6 x i8], [6 x i8]* @.str257, i32 0, i32 0
  %3574 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str257.c, i8* %3573, i64 5)
  %3575 = call i1 @nyx_string_equals(%nyx_string* %3572, %nyx_string* %3574)
  br i1 %3575, label %then946, label %else947
then946:
  %3576 = load %ASTNode, %ASTNode* %node.ptr
  %3577 = call %ASTNode @bc_node_at(%ASTNode %3576, i64 0)
  %3578 = call %nyx_string* @place_of(%ASTNode %3577)
  ret %nyx_string* %3578
else947:
  br label %merge948
merge948:
  %3579 = load %nyx_string*, %nyx_string** %3540
  %3580 = getelementptr [8 x i8], [8 x i8]* @.str258, i32 0, i32 0
  %3581 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str258.c, i8* %3580, i64 7)
  %3582 = call i1 @nyx_string_equals(%nyx_string* %3579, %nyx_string* %3581)
  br i1 %3582, label %then949, label %else950
then949:
  %3583 = load %ASTNode, %ASTNode* %node.ptr
  %3584 = call %ASTNode @bc_node_at(%ASTNode %3583, i64 0)
  %3585 = call %nyx_string* @place_of(%ASTNode %3584)
  ret %nyx_string* %3585
else950:
  br label %merge951
merge951:
  %3586 = load %nyx_string*, %nyx_string** %3540
  %3587 = getelementptr [12 x i8], [12 x i8]* @.str259, i32 0, i32 0
  %3588 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str259.c, i8* %3587, i64 11)
  %3589 = call i1 @nyx_string_equals(%nyx_string* %3586, %nyx_string* %3588)
  br i1 %3589, label %then952, label %else953
then952:
  %3590 = load %ASTNode, %ASTNode* %node.ptr
  %3591 = call %ASTNode @bc_node_at(%ASTNode %3590, i64 0)
  %3592 = call %nyx_string* @place_of(%ASTNode %3591)
  ret %nyx_string* %3592
else953:
  br label %merge954
merge954:
  %3593 = getelementptr [1 x i8], [1 x i8]* @.str260, i32 0, i32 0
  %3594 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str260.c, i8* %3593, i64 0)
  ret %nyx_string* %3594
}

define %nyx_string* @place_path(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %3595 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 0
  %3596 = load %nyx_string*, %nyx_string** %3595
  %3597 = alloca %nyx_string*
  store %nyx_string* %3596, %nyx_string** %3597
  %3598 = load %nyx_string*, %nyx_string** %3597
  %3599 = getelementptr [13 x i8], [13 x i8]* @.str261, i32 0, i32 0
  %3600 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str261.c, i8* %3599, i64 12)
  %3601 = call i1 @nyx_string_equals(%nyx_string* %3598, %nyx_string* %3600)
  br i1 %3601, label %then955, label %else956
then955:
  %3602 = load %ASTNode, %ASTNode* %node.ptr
  %3603 = call %ASTNode @bc_node_at(%ASTNode %3602, i64 0)
  %3604 = call %nyx_string* @place_path(%ASTNode %3603)
  %3605 = alloca %nyx_string*
  store %nyx_string* %3604, %nyx_string** %3605
  %3606 = load %nyx_string*, %nyx_string** %3605
  %3607 = getelementptr [1 x i8], [1 x i8]* @.str262, i32 0, i32 0
  %3608 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str262.c, i8* %3607, i64 0)
  %3609 = call i1 @nyx_string_equals(%nyx_string* %3606, %nyx_string* %3608)
  br i1 %3609, label %then958, label %else959
then958:
  %3610 = getelementptr [1 x i8], [1 x i8]* @.str263, i32 0, i32 0
  %3611 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str263.c, i8* %3610, i64 0)
  ret %nyx_string* %3611
else959:
  br label %merge960
merge960:
  %3612 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %3613 = load { i64, i8* }*, { i64, i8* }** %3612
  %3614 = alloca { i64, i8* }*
  store { i64, i8* }* %3613, { i64, i8* }** %3614
  %3615 = load { i64, i8* }*, { i64, i8* }** %3614
  %3616 = call i64 @nyx_array_length({ i64, i8* }* %3615)
  %3617 = icmp sgt i64 %3616, 1
  br i1 %3617, label %then961, label %else962
then961:
  %3618 = load { i64, i8* }*, { i64, i8* }** %3614
  %3619 = call i64 @nyx_array_get_checked({ i64, i8* }* %3618, i64 1, i64 2)
  %3620 = inttoptr i64 %3619 to %nyx_string*
  %3621 = alloca %nyx_string*
  store %nyx_string* %3620, %nyx_string** %3621
  %3622 = load %nyx_string*, %nyx_string** %3605
  %3623 = getelementptr [2 x i8], [2 x i8]* @.str264, i32 0, i32 0
  %3624 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str264.c, i8* %3623, i64 1)
  %3625 = call %nyx_string* @nyx_string_concat(%nyx_string* %3622, %nyx_string* %3624)
  %3626 = load %nyx_string*, %nyx_string** %3621
  %3627 = call %nyx_string* @nyx_string_concat(%nyx_string* %3625, %nyx_string* %3626)
  ret %nyx_string* %3627
else962:
  br label %merge963
merge963:
  %3628 = getelementptr [1 x i8], [1 x i8]* @.str265, i32 0, i32 0
  %3629 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str265.c, i8* %3628, i64 0)
  ret %nyx_string* %3629
else956:
  br label %merge957
merge957:
  %3630 = load %ASTNode, %ASTNode* %node.ptr
  %3631 = call %nyx_string* @place_of(%ASTNode %3630)
  ret %nyx_string* %3631
}

define { i64, i8* }* @state_new(
) {
  %3632 = call { i64, i8* }* @nyx_array_new_ptr()
  %3633 = call { i64, i8* }* @nyx_array_new_ptr()
  %3634 = bitcast { i64, i8* }* %3633 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %3632, i8* %3634)
  %3635 = call { i64, i8* }* @nyx_array_new_ptr()
  %3636 = bitcast { i64, i8* }* %3635 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %3632, i8* %3636)
  %3637 = call { i64, i8* }* @nyx_array_new_ptr()
  %3638 = bitcast { i64, i8* }* %3637 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %3632, i8* %3638)
  %3639 = call { i64, i8* }* @nyx_array_new_ptr()
  %3640 = bitcast { i64, i8* }* %3639 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %3632, i8* %3640)
  ret { i64, i8* }* %3632
}

define internal i64 @place_index(
{ i64, i8* }* %state.param, %nyx_string* %name.param) {
  %state.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %3641 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3642 = call i64 @nyx_array_get({ i64, i8* }* %3641, i64 0)
  %3643 = inttoptr i64 %3642 to { i64, i8* }*
  %3644 = alloca { i64, i8* }*
  store { i64, i8* }* %3643, { i64, i8* }** %3644
  %3645 = alloca i64
  store i64 0, i64* %3645
  %3646 = call i8* @llvm.stacksave()
  br label %while_cond964
while_cond964:
  %3647 = load i64, i64* %3645
  %3648 = load { i64, i8* }*, { i64, i8* }** %3644
  %3649 = call i64 @nyx_array_length({ i64, i8* }* %3648)
  %3650 = icmp slt i64 %3647, %3649
  br i1 %3650, label %while_body965, label %while_end966
while_body965:
  call void @llvm.stackrestore(i8* %3646)
  %3651 = load { i64, i8* }*, { i64, i8* }** %3644
  %3652 = load i64, i64* %3645
  %3653 = call i64 @nyx_array_get_checked({ i64, i8* }* %3651, i64 %3652, i64 2)
  %3654 = inttoptr i64 %3653 to %nyx_string*
  %3655 = alloca %nyx_string*
  store %nyx_string* %3654, %nyx_string** %3655
  %3656 = load %nyx_string*, %nyx_string** %3655
  %3657 = load %nyx_string*, %nyx_string** %name.ptr
  %3658 = call i1 @nyx_string_equals(%nyx_string* %3656, %nyx_string* %3657)
  br i1 %3658, label %then967, label %else968
then967:
  %3659 = load i64, i64* %3645
  ret i64 %3659
else968:
  br label %merge969
merge969:
  %3660 = load i64, i64* %3645
  %3661 = add i64 %3660, 1
  store i64 %3661, i64* %3645
  br label %while_cond964
while_end966:
  %3662 = sub i64 0, 1
  ret i64 %3662
}

define i64 @place_ensure(
{ i64, i8* }* %state.param, %nyx_string* %name.param) {
  %state.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %3663 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3664 = load %nyx_string*, %nyx_string** %name.ptr
  %3665 = call i64 @place_index({ i64, i8* }* %3663, %nyx_string* %3664)
  %3666 = alloca i64
  store i64 %3665, i64* %3666
  %3667 = load i64, i64* %3666
  %3668 = icmp sge i64 %3667, 0
  br i1 %3668, label %then970, label %else971
then970:
  %3669 = load i64, i64* %3666
  ret i64 %3669
else971:
  br label %merge972
merge972:
  %3670 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3671 = call i64 @nyx_array_get({ i64, i8* }* %3670, i64 0)
  %3672 = inttoptr i64 %3671 to { i64, i8* }*
  %3673 = alloca { i64, i8* }*
  store { i64, i8* }* %3672, { i64, i8* }** %3673
  %3674 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3675 = call i64 @nyx_array_get({ i64, i8* }* %3674, i64 1)
  %3676 = inttoptr i64 %3675 to { i64, i8* }*
  %3677 = alloca { i64, i8* }*
  store { i64, i8* }* %3676, { i64, i8* }** %3677
  %3678 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3679 = call i64 @nyx_array_get({ i64, i8* }* %3678, i64 2)
  %3680 = inttoptr i64 %3679 to { i64, i8* }*
  %3681 = alloca { i64, i8* }*
  store { i64, i8* }* %3680, { i64, i8* }** %3681
  %3682 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3683 = call i64 @nyx_array_get({ i64, i8* }* %3682, i64 3)
  %3684 = inttoptr i64 %3683 to { i64, i8* }*
  %3685 = alloca { i64, i8* }*
  store { i64, i8* }* %3684, { i64, i8* }** %3685
  %3686 = load { i64, i8* }*, { i64, i8* }** %3673
  %3687 = load %nyx_string*, %nyx_string** %name.ptr
  %3688 = ptrtoint %nyx_string* %3687 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3686, i64 %3688, i64 2)
  %3689 = load { i64, i8* }*, { i64, i8* }** %3677
  call void @nyx_array_push_tagged({ i64, i8* }* %3689, i64 0, i64 1)
  %3690 = load { i64, i8* }*, { i64, i8* }** %3681
  call void @nyx_array_push_tagged({ i64, i8* }* %3690, i64 0, i64 1)
  %3691 = load { i64, i8* }*, { i64, i8* }** %3685
  %3692 = getelementptr [1 x i8], [1 x i8]* @.str266, i32 0, i32 0
  %3693 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str266.c, i8* %3692, i64 0)
  %3694 = ptrtoint %nyx_string* %3693 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3691, i64 %3694, i64 2)
  %3695 = load { i64, i8* }*, { i64, i8* }** %3673
  %3696 = call i64 @nyx_array_length({ i64, i8* }* %3695)
  %3697 = sub i64 %3696, 1
  ret i64 %3697
}

define i64 @mark_moved(
{ i64, i8* }* %state.param, %nyx_string* %name.param) {
  %state.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %3698 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3699 = load %nyx_string*, %nyx_string** %name.ptr
  %3700 = call i64 @place_ensure({ i64, i8* }* %3698, %nyx_string* %3699)
  %3701 = alloca i64
  store i64 %3700, i64* %3701
  %3702 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3703 = call i64 @nyx_array_get({ i64, i8* }* %3702, i64 1)
  %3704 = inttoptr i64 %3703 to { i64, i8* }*
  %3705 = alloca { i64, i8* }*
  store { i64, i8* }* %3704, { i64, i8* }** %3705
  %3706 = load { i64, i8* }*, { i64, i8* }** %3705
  %3707 = load i64, i64* %3701
  call void @nyx_array_set_tagged({ i64, i8* }* %3706, i64 %3707, i64 1, i64 1)
  ret i64 0
}

define i1 @is_moved(
{ i64, i8* }* %state.param, %nyx_string* %name.param) {
  %state.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %3708 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3709 = load %nyx_string*, %nyx_string** %name.ptr
  %3710 = call i64 @place_index({ i64, i8* }* %3708, %nyx_string* %3709)
  %3711 = alloca i64
  store i64 %3710, i64* %3711
  %3712 = load i64, i64* %3711
  %3713 = icmp slt i64 %3712, 0
  br i1 %3713, label %then973, label %else974
then973:
  ret i1 0
else974:
  br label %merge975
merge975:
  %3714 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3715 = call i64 @nyx_array_get({ i64, i8* }* %3714, i64 1)
  %3716 = inttoptr i64 %3715 to { i64, i8* }*
  %3717 = alloca { i64, i8* }*
  store { i64, i8* }* %3716, { i64, i8* }** %3717
  %3718 = load { i64, i8* }*, { i64, i8* }** %3717
  %3719 = load i64, i64* %3711
  %3720 = call i64 @nyx_array_get({ i64, i8* }* %3718, i64 %3719)
  %3721 = alloca i64
  store i64 %3720, i64* %3721
  %3722 = load i64, i64* %3721
  %3723 = icmp eq i64 %3722, 1
  ret i1 %3723
}

define i64 @mark_freed(
{ i64, i8* }* %state.param, %nyx_string* %name.param) {
  %state.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %3724 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3725 = load %nyx_string*, %nyx_string** %name.ptr
  %3726 = call i64 @place_ensure({ i64, i8* }* %3724, %nyx_string* %3725)
  %3727 = alloca i64
  store i64 %3726, i64* %3727
  %3728 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3729 = call i64 @nyx_array_get({ i64, i8* }* %3728, i64 1)
  %3730 = inttoptr i64 %3729 to { i64, i8* }*
  %3731 = alloca { i64, i8* }*
  store { i64, i8* }* %3730, { i64, i8* }** %3731
  %3732 = load { i64, i8* }*, { i64, i8* }** %3731
  %3733 = load i64, i64* %3727
  call void @nyx_array_set_tagged({ i64, i8* }* %3732, i64 %3733, i64 2, i64 1)
  ret i64 0
}

define i1 @is_freed(
{ i64, i8* }* %state.param, %nyx_string* %name.param) {
  %state.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %3734 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3735 = load %nyx_string*, %nyx_string** %name.ptr
  %3736 = call i64 @place_index({ i64, i8* }* %3734, %nyx_string* %3735)
  %3737 = alloca i64
  store i64 %3736, i64* %3737
  %3738 = load i64, i64* %3737
  %3739 = icmp slt i64 %3738, 0
  br i1 %3739, label %then976, label %else977
then976:
  ret i1 0
else977:
  br label %merge978
merge978:
  %3740 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3741 = call i64 @nyx_array_get({ i64, i8* }* %3740, i64 1)
  %3742 = inttoptr i64 %3741 to { i64, i8* }*
  %3743 = alloca { i64, i8* }*
  store { i64, i8* }* %3742, { i64, i8* }** %3743
  %3744 = load { i64, i8* }*, { i64, i8* }** %3743
  %3745 = load i64, i64* %3737
  %3746 = call i64 @nyx_array_get({ i64, i8* }* %3744, i64 %3745)
  %3747 = alloca i64
  store i64 %3746, i64* %3747
  %3748 = load i64, i64* %3747
  %3749 = icmp eq i64 %3748, 2
  ret i1 %3749
}

define i64 @revive(
{ i64, i8* }* %state.param, %nyx_string* %name.param) {
  %state.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %3750 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3751 = load %nyx_string*, %nyx_string** %name.ptr
  %3752 = call i64 @place_ensure({ i64, i8* }* %3750, %nyx_string* %3751)
  %3753 = alloca i64
  store i64 %3752, i64* %3753
  %3754 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3755 = call i64 @nyx_array_get({ i64, i8* }* %3754, i64 1)
  %3756 = inttoptr i64 %3755 to { i64, i8* }*
  %3757 = alloca { i64, i8* }*
  store { i64, i8* }* %3756, { i64, i8* }** %3757
  %3758 = load { i64, i8* }*, { i64, i8* }** %3757
  %3759 = load i64, i64* %3753
  call void @nyx_array_set_tagged({ i64, i8* }* %3758, i64 %3759, i64 0, i64 1)
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
  %3760 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3761 = load %nyx_string*, %nyx_string** %name.ptr
  %3762 = call i64 @place_ensure({ i64, i8* }* %3760, %nyx_string* %3761)
  %3763 = alloca i64
  store i64 %3762, i64* %3763
  %3764 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3765 = call i64 @nyx_array_get({ i64, i8* }* %3764, i64 2)
  %3766 = inttoptr i64 %3765 to { i64, i8* }*
  %3767 = alloca { i64, i8* }*
  store { i64, i8* }* %3766, { i64, i8* }** %3767
  %3768 = load { i64, i8* }*, { i64, i8* }** %3767
  %3769 = load i64, i64* %3763
  %3770 = load i64, i64* %kind.ptr
  call void @nyx_array_set({ i64, i8* }* %3768, i64 %3769, i64 %3770)
  ret i64 0
}

define i64 @get_borrow(
{ i64, i8* }* %state.param, %nyx_string* %name.param) {
  %state.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %3771 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3772 = load %nyx_string*, %nyx_string** %name.ptr
  %3773 = call i64 @place_index({ i64, i8* }* %3771, %nyx_string* %3772)
  %3774 = alloca i64
  store i64 %3773, i64* %3774
  %3775 = load i64, i64* %3774
  %3776 = icmp slt i64 %3775, 0
  br i1 %3776, label %then979, label %else980
then979:
  ret i64 0
else980:
  br label %merge981
merge981:
  %3777 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3778 = call i64 @nyx_array_get({ i64, i8* }* %3777, i64 2)
  %3779 = inttoptr i64 %3778 to { i64, i8* }*
  %3780 = alloca { i64, i8* }*
  store { i64, i8* }* %3779, { i64, i8* }** %3780
  %3781 = load { i64, i8* }*, { i64, i8* }** %3780
  %3782 = load i64, i64* %3774
  %3783 = call i64 @nyx_array_get({ i64, i8* }* %3781, i64 %3782)
  %3784 = alloca i64
  store i64 %3783, i64* %3784
  %3785 = load i64, i64* %3784
  ret i64 %3785
}

define internal %nyx_string* @reforigin_mark_soft(
%nyx_string* %name.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %3786 = getelementptr [2 x i8], [2 x i8]* @.str267, i32 0, i32 0
  %3787 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str267.c, i8* %3786, i64 1)
  %3788 = load %nyx_string*, %nyx_string** %name.ptr
  %3789 = call %nyx_string* @nyx_string_concat(%nyx_string* %3787, %nyx_string* %3788)
  ret %nyx_string* %3789
}

define internal i1 @reforigin_is_soft(
%nyx_string* %o.param) {
  %o.ptr = alloca %nyx_string*
  store %nyx_string* %o.param, %nyx_string** %o.ptr
  %3790 = load %nyx_string*, %nyx_string** %o.ptr
  %3791 = call i64 @nyx_string_byte_length(%nyx_string* %3790)
  %3792 = icmp eq i64 %3791, 0
  br i1 %3792, label %then982, label %else983
then982:
  ret i1 0
else983:
  br label %merge984
merge984:
  %3793 = load %nyx_string*, %nyx_string** %o.ptr
  %3794 = call %nyx_string* @nyx_string_substring(%nyx_string* %3793, i64 0, i64 1)
  %3795 = getelementptr [2 x i8], [2 x i8]* @.str268, i32 0, i32 0
  %3796 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str268.c, i8* %3795, i64 1)
  %3797 = call i1 @nyx_string_equals(%nyx_string* %3794, %nyx_string* %3796)
  ret i1 %3797
}

define internal %nyx_string* @reforigin_name(
%nyx_string* %o.param) {
  %o.ptr = alloca %nyx_string*
  store %nyx_string* %o.param, %nyx_string** %o.ptr
  %3798 = load %nyx_string*, %nyx_string** %o.ptr
  %3799 = call i1 @reforigin_is_soft(%nyx_string* %3798)
  br i1 %3799, label %then985, label %else986
then985:
  %3800 = load %nyx_string*, %nyx_string** %o.ptr
  %3801 = load %nyx_string*, %nyx_string** %o.ptr
  %3802 = call i64 @nyx_string_byte_length(%nyx_string* %3801)
  %3803 = call %nyx_string* @nyx_string_substring(%nyx_string* %3800, i64 1, i64 %3802)
  ret %nyx_string* %3803
else986:
  br label %merge987
merge987:
  %3804 = load %nyx_string*, %nyx_string** %o.ptr
  ret %nyx_string* %3804
}

define i64 @set_reforigin(
{ i64, i8* }* %state.param, %nyx_string* %name.param, %nyx_string* %origin.param) {
  %state.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %origin.ptr = alloca %nyx_string*
  store %nyx_string* %origin.param, %nyx_string** %origin.ptr
  %3805 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3806 = load %nyx_string*, %nyx_string** %name.ptr
  %3807 = call i64 @place_ensure({ i64, i8* }* %3805, %nyx_string* %3806)
  %3808 = alloca i64
  store i64 %3807, i64* %3808
  %3809 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3810 = call i64 @nyx_array_get({ i64, i8* }* %3809, i64 3)
  %3811 = inttoptr i64 %3810 to { i64, i8* }*
  %3812 = alloca { i64, i8* }*
  store { i64, i8* }* %3811, { i64, i8* }** %3812
  %3813 = load { i64, i8* }*, { i64, i8* }** %3812
  %3814 = load i64, i64* %3808
  %3815 = load %nyx_string*, %nyx_string** %origin.ptr
  %3816 = ptrtoint %nyx_string* %3815 to i64
  call void @nyx_array_set_tagged({ i64, i8* }* %3813, i64 %3814, i64 %3816, i64 2)
  ret i64 0
}

define %nyx_string* @get_reforigin(
{ i64, i8* }* %state.param, %nyx_string* %name.param) {
  %state.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %3817 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3818 = load %nyx_string*, %nyx_string** %name.ptr
  %3819 = call i64 @place_index({ i64, i8* }* %3817, %nyx_string* %3818)
  %3820 = alloca i64
  store i64 %3819, i64* %3820
  %3821 = load i64, i64* %3820
  %3822 = icmp slt i64 %3821, 0
  br i1 %3822, label %then988, label %else989
then988:
  %3823 = getelementptr [1 x i8], [1 x i8]* @.str269, i32 0, i32 0
  %3824 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str269.c, i8* %3823, i64 0)
  ret %nyx_string* %3824
else989:
  br label %merge990
merge990:
  %3825 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3826 = call i64 @nyx_array_get({ i64, i8* }* %3825, i64 3)
  %3827 = inttoptr i64 %3826 to { i64, i8* }*
  %3828 = alloca { i64, i8* }*
  store { i64, i8* }* %3827, { i64, i8* }** %3828
  %3829 = load { i64, i8* }*, { i64, i8* }** %3828
  %3830 = load i64, i64* %3820
  %3831 = call i64 @nyx_array_get_checked({ i64, i8* }* %3829, i64 %3830, i64 2)
  %3832 = inttoptr i64 %3831 to %nyx_string*
  %3833 = alloca %nyx_string*
  store %nyx_string* %3832, %nyx_string** %3833
  %3834 = load %nyx_string*, %nyx_string** %3833
  ret %nyx_string* %3834
}

define internal i64 @clear_borrows(
{ i64, i8* }* %state.param) {
  %state.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  %3835 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3836 = call i64 @nyx_array_get({ i64, i8* }* %3835, i64 2)
  %3837 = inttoptr i64 %3836 to { i64, i8* }*
  %3838 = alloca { i64, i8* }*
  store { i64, i8* }* %3837, { i64, i8* }** %3838
  %3839 = alloca i64
  store i64 0, i64* %3839
  %3840 = call i8* @llvm.stacksave()
  br label %while_cond991
while_cond991:
  %3841 = load i64, i64* %3839
  %3842 = load { i64, i8* }*, { i64, i8* }** %3838
  %3843 = call i64 @nyx_array_length({ i64, i8* }* %3842)
  %3844 = icmp slt i64 %3841, %3843
  br i1 %3844, label %while_body992, label %while_end993
while_body992:
  call void @llvm.stackrestore(i8* %3840)
  %3845 = load { i64, i8* }*, { i64, i8* }** %3838
  %3846 = load i64, i64* %3839
  call void @nyx_array_set_tagged({ i64, i8* }* %3845, i64 %3846, i64 0, i64 1)
  %3847 = load i64, i64* %3839
  %3848 = add i64 %3847, 1
  store i64 %3848, i64* %3839
  br label %while_cond991
while_end993:
  ret i64 0
}

define { i64, i8* }* @state_copy(
{ i64, i8* }* %state.param) {
  %state.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %state.param, { i64, i8* }** %state.ptr
  %3849 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3850 = call i64 @nyx_array_get({ i64, i8* }* %3849, i64 0)
  %3851 = inttoptr i64 %3850 to { i64, i8* }*
  %3852 = alloca { i64, i8* }*
  store { i64, i8* }* %3851, { i64, i8* }** %3852
  %3853 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3854 = call i64 @nyx_array_get({ i64, i8* }* %3853, i64 1)
  %3855 = inttoptr i64 %3854 to { i64, i8* }*
  %3856 = alloca { i64, i8* }*
  store { i64, i8* }* %3855, { i64, i8* }** %3856
  %3857 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3858 = call i64 @nyx_array_get({ i64, i8* }* %3857, i64 2)
  %3859 = inttoptr i64 %3858 to { i64, i8* }*
  %3860 = alloca { i64, i8* }*
  store { i64, i8* }* %3859, { i64, i8* }** %3860
  %3861 = load { i64, i8* }*, { i64, i8* }** %state.ptr
  %3862 = call i64 @nyx_array_get({ i64, i8* }* %3861, i64 3)
  %3863 = inttoptr i64 %3862 to { i64, i8* }*
  %3864 = alloca { i64, i8* }*
  store { i64, i8* }* %3863, { i64, i8* }** %3864
  %3865 = call { i64, i8* }* @nyx_array_new_ptr()
  %3866 = alloca { i64, i8* }*
  store { i64, i8* }* %3865, { i64, i8* }** %3866
  %3867 = call { i64, i8* }* @nyx_array_new_ptr()
  %3868 = alloca { i64, i8* }*
  store { i64, i8* }* %3867, { i64, i8* }** %3868
  %3869 = call { i64, i8* }* @nyx_array_new_ptr()
  %3870 = alloca { i64, i8* }*
  store { i64, i8* }* %3869, { i64, i8* }** %3870
  %3871 = call { i64, i8* }* @nyx_array_new_ptr()
  %3872 = alloca { i64, i8* }*
  store { i64, i8* }* %3871, { i64, i8* }** %3872
  %3873 = alloca i64
  store i64 0, i64* %3873
  %3874 = call i8* @llvm.stacksave()
  br label %while_cond994
while_cond994:
  %3875 = load i64, i64* %3873
  %3876 = load { i64, i8* }*, { i64, i8* }** %3852
  %3877 = call i64 @nyx_array_length({ i64, i8* }* %3876)
  %3878 = icmp slt i64 %3875, %3877
  br i1 %3878, label %while_body995, label %while_end996
while_body995:
  call void @llvm.stackrestore(i8* %3874)
  %3879 = load { i64, i8* }*, { i64, i8* }** %3852
  %3880 = load i64, i64* %3873
  %3881 = call i64 @nyx_array_get_checked({ i64, i8* }* %3879, i64 %3880, i64 2)
  %3882 = inttoptr i64 %3881 to %nyx_string*
  %3883 = alloca %nyx_string*
  store %nyx_string* %3882, %nyx_string** %3883
  %3884 = load { i64, i8* }*, { i64, i8* }** %3856
  %3885 = load i64, i64* %3873
  %3886 = call i64 @nyx_array_get({ i64, i8* }* %3884, i64 %3885)
  %3887 = alloca i64
  store i64 %3886, i64* %3887
  %3888 = load { i64, i8* }*, { i64, i8* }** %3860
  %3889 = load i64, i64* %3873
  %3890 = call i64 @nyx_array_get({ i64, i8* }* %3888, i64 %3889)
  %3891 = alloca i64
  store i64 %3890, i64* %3891
  %3892 = load { i64, i8* }*, { i64, i8* }** %3864
  %3893 = load i64, i64* %3873
  %3894 = call i64 @nyx_array_get_checked({ i64, i8* }* %3892, i64 %3893, i64 2)
  %3895 = inttoptr i64 %3894 to %nyx_string*
  %3896 = alloca %nyx_string*
  store %nyx_string* %3895, %nyx_string** %3896
  %3897 = load { i64, i8* }*, { i64, i8* }** %3866
  %3898 = load %nyx_string*, %nyx_string** %3883
  %3899 = ptrtoint %nyx_string* %3898 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3897, i64 %3899, i64 2)
  %3900 = load { i64, i8* }*, { i64, i8* }** %3868
  %3901 = load i64, i64* %3887
  call void @nyx_array_push({ i64, i8* }* %3900, i64 %3901)
  %3902 = load { i64, i8* }*, { i64, i8* }** %3870
  %3903 = load i64, i64* %3891
  call void @nyx_array_push({ i64, i8* }* %3902, i64 %3903)
  %3904 = load { i64, i8* }*, { i64, i8* }** %3872
  %3905 = load %nyx_string*, %nyx_string** %3896
  %3906 = ptrtoint %nyx_string* %3905 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3904, i64 %3906, i64 2)
  %3907 = load i64, i64* %3873
  %3908 = add i64 %3907, 1
  store i64 %3908, i64* %3873
  br label %while_cond994
while_end996:
  %3909 = call { i64, i8* }* @nyx_array_new_ptr()
  %3910 = load { i64, i8* }*, { i64, i8* }** %3866
  %3911 = bitcast { i64, i8* }* %3910 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %3909, i8* %3911)
  %3912 = load { i64, i8* }*, { i64, i8* }** %3868
  %3913 = bitcast { i64, i8* }* %3912 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %3909, i8* %3913)
  %3914 = load { i64, i8* }*, { i64, i8* }** %3870
  %3915 = bitcast { i64, i8* }* %3914 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %3909, i8* %3915)
  %3916 = load { i64, i8* }*, { i64, i8* }** %3872
  %3917 = bitcast { i64, i8* }* %3916 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %3909, i8* %3917)
  ret { i64, i8* }* %3909
}

define { i64, i8* }* @state_join(
{ i64, i8* }* %a.param, { i64, i8* }* %b.param) {
  %a.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %a.param, { i64, i8* }** %a.ptr
  %b.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %b.param, { i64, i8* }** %b.ptr
  %3918 = load { i64, i8* }*, { i64, i8* }** %a.ptr
  %3919 = call { i64, i8* }* @state_copy({ i64, i8* }* %3918)
  %3920 = alloca { i64, i8* }*
  store { i64, i8* }* %3919, { i64, i8* }** %3920
  %3921 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %3922 = call i64 @nyx_array_get({ i64, i8* }* %3921, i64 0)
  %3923 = inttoptr i64 %3922 to { i64, i8* }*
  %3924 = alloca { i64, i8* }*
  store { i64, i8* }* %3923, { i64, i8* }** %3924
  %3925 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %3926 = call i64 @nyx_array_get({ i64, i8* }* %3925, i64 1)
  %3927 = inttoptr i64 %3926 to { i64, i8* }*
  %3928 = alloca { i64, i8* }*
  store { i64, i8* }* %3927, { i64, i8* }** %3928
  %3929 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %3930 = call i64 @nyx_array_get({ i64, i8* }* %3929, i64 2)
  %3931 = inttoptr i64 %3930 to { i64, i8* }*
  %3932 = alloca { i64, i8* }*
  store { i64, i8* }* %3931, { i64, i8* }** %3932
  %3933 = alloca i64
  store i64 0, i64* %3933
  %3934 = call i8* @llvm.stacksave()
  br label %while_cond997
while_cond997:
  %3935 = load i64, i64* %3933
  %3936 = load { i64, i8* }*, { i64, i8* }** %3924
  %3937 = call i64 @nyx_array_length({ i64, i8* }* %3936)
  %3938 = icmp slt i64 %3935, %3937
  br i1 %3938, label %while_body998, label %while_end999
while_body998:
  call void @llvm.stackrestore(i8* %3934)
  %3939 = load { i64, i8* }*, { i64, i8* }** %3924
  %3940 = load i64, i64* %3933
  %3941 = call i64 @nyx_array_get_checked({ i64, i8* }* %3939, i64 %3940, i64 2)
  %3942 = inttoptr i64 %3941 to %nyx_string*
  %3943 = alloca %nyx_string*
  store %nyx_string* %3942, %nyx_string** %3943
  %3944 = load { i64, i8* }*, { i64, i8* }** %3920
  %3945 = load %nyx_string*, %nyx_string** %3943
  %3946 = call i64 @place_ensure({ i64, i8* }* %3944, %nyx_string* %3945)
  %3947 = load i64, i64* %3933
  %3948 = add i64 %3947, 1
  store i64 %3948, i64* %3933
  br label %while_cond997
while_end999:
  %3949 = load { i64, i8* }*, { i64, i8* }** %3920
  %3950 = call i64 @nyx_array_get({ i64, i8* }* %3949, i64 0)
  %3951 = inttoptr i64 %3950 to { i64, i8* }*
  %3952 = alloca { i64, i8* }*
  store { i64, i8* }* %3951, { i64, i8* }** %3952
  %3953 = load { i64, i8* }*, { i64, i8* }** %3920
  %3954 = call i64 @nyx_array_get({ i64, i8* }* %3953, i64 1)
  %3955 = inttoptr i64 %3954 to { i64, i8* }*
  %3956 = alloca { i64, i8* }*
  store { i64, i8* }* %3955, { i64, i8* }** %3956
  %3957 = load { i64, i8* }*, { i64, i8* }** %3920
  %3958 = call i64 @nyx_array_get({ i64, i8* }* %3957, i64 2)
  %3959 = inttoptr i64 %3958 to { i64, i8* }*
  %3960 = alloca { i64, i8* }*
  store { i64, i8* }* %3959, { i64, i8* }** %3960
  %3961 = load { i64, i8* }*, { i64, i8* }** %3920
  %3962 = call i64 @nyx_array_get({ i64, i8* }* %3961, i64 3)
  %3963 = inttoptr i64 %3962 to { i64, i8* }*
  %3964 = alloca { i64, i8* }*
  store { i64, i8* }* %3963, { i64, i8* }** %3964
  %3965 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %3966 = call i64 @nyx_array_get({ i64, i8* }* %3965, i64 3)
  %3967 = inttoptr i64 %3966 to { i64, i8* }*
  %3968 = alloca { i64, i8* }*
  store { i64, i8* }* %3967, { i64, i8* }** %3968
  %3969 = alloca i64
  store i64 0, i64* %3969
  %3970 = call i8* @llvm.stacksave()
  br label %while_cond1000
while_cond1000:
  %3971 = load i64, i64* %3969
  %3972 = load { i64, i8* }*, { i64, i8* }** %3952
  %3973 = call i64 @nyx_array_length({ i64, i8* }* %3972)
  %3974 = icmp slt i64 %3971, %3973
  br i1 %3974, label %while_body1001, label %while_end1002
while_body1001:
  call void @llvm.stackrestore(i8* %3970)
  %3975 = load { i64, i8* }*, { i64, i8* }** %3952
  %3976 = load i64, i64* %3969
  %3977 = call i64 @nyx_array_get_checked({ i64, i8* }* %3975, i64 %3976, i64 2)
  %3978 = inttoptr i64 %3977 to %nyx_string*
  %3979 = alloca %nyx_string*
  store %nyx_string* %3978, %nyx_string** %3979
  %3980 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %3981 = load %nyx_string*, %nyx_string** %3979
  %3982 = call i64 @place_index({ i64, i8* }* %3980, %nyx_string* %3981)
  %3983 = alloca i64
  store i64 %3982, i64* %3983
  %3984 = alloca i64
  store i64 0, i64* %3984
  %3985 = alloca i64
  store i64 0, i64* %3985
  %3986 = load i64, i64* %3983
  %3987 = icmp sge i64 %3986, 0
  br i1 %3987, label %then1003, label %else1004
then1003:
  %3988 = load { i64, i8* }*, { i64, i8* }** %3928
  %3989 = load i64, i64* %3983
  %3990 = call i64 @nyx_array_get({ i64, i8* }* %3988, i64 %3989)
  store i64 %3990, i64* %3984
  %3991 = load { i64, i8* }*, { i64, i8* }** %3932
  %3992 = load i64, i64* %3983
  %3993 = call i64 @nyx_array_get({ i64, i8* }* %3991, i64 %3992)
  store i64 %3993, i64* %3985
  br label %merge1005
else1004:
  br label %merge1005
merge1005:
  %3994 = load { i64, i8* }*, { i64, i8* }** %3956
  %3995 = load i64, i64* %3969
  %3996 = call i64 @nyx_array_get({ i64, i8* }* %3994, i64 %3995)
  %3997 = alloca i64
  store i64 %3996, i64* %3997
  %3998 = load i64, i64* %3997
  %3999 = load i64, i64* %3984
  %4000 = icmp sge i64 %3998, %3999
  br i1 %4000, label %then1006, label %else1007
then1006:
  %4001 = load { i64, i8* }*, { i64, i8* }** %3956
  %4002 = load i64, i64* %3969
  %4003 = load i64, i64* %3997
  call void @nyx_array_set({ i64, i8* }* %4001, i64 %4002, i64 %4003)
  br label %merge1008
else1007:
  %4004 = load { i64, i8* }*, { i64, i8* }** %3956
  %4005 = load i64, i64* %3969
  %4006 = load i64, i64* %3984
  call void @nyx_array_set({ i64, i8* }* %4004, i64 %4005, i64 %4006)
  br label %merge1008
merge1008:
  %4007 = load { i64, i8* }*, { i64, i8* }** %3960
  %4008 = load i64, i64* %3969
  %4009 = call i64 @nyx_array_get({ i64, i8* }* %4007, i64 %4008)
  %4010 = alloca i64
  store i64 %4009, i64* %4010
  %4011 = load i64, i64* %3985
  %4012 = load i64, i64* %4010
  %4013 = icmp sgt i64 %4011, %4012
  br i1 %4013, label %then1009, label %else1010
then1009:
  %4014 = load { i64, i8* }*, { i64, i8* }** %3960
  %4015 = load i64, i64* %3969
  %4016 = load i64, i64* %3985
  call void @nyx_array_set({ i64, i8* }* %4014, i64 %4015, i64 %4016)
  br label %merge1011
else1010:
  br label %merge1011
merge1011:
  %4017 = getelementptr [1 x i8], [1 x i8]* @.str270, i32 0, i32 0
  %4018 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str270.c, i8* %4017, i64 0)
  %4019 = alloca %nyx_string*
  store %nyx_string* %4018, %nyx_string** %4019
  %4020 = load i64, i64* %3983
  %4021 = icmp sge i64 %4020, 0
  br i1 %4021, label %then1012, label %else1013
then1012:
  %4022 = load { i64, i8* }*, { i64, i8* }** %3968
  %4023 = load i64, i64* %3983
  %4024 = call i64 @nyx_array_get({ i64, i8* }* %4022, i64 %4023)
  %4025 = inttoptr i64 %4024 to %nyx_string*
  store %nyx_string* %4025, %nyx_string** %4019
  br label %merge1014
else1013:
  br label %merge1014
merge1014:
  %4026 = load { i64, i8* }*, { i64, i8* }** %3964
  %4027 = load i64, i64* %3969
  %4028 = call i64 @nyx_array_get_checked({ i64, i8* }* %4026, i64 %4027, i64 2)
  %4029 = inttoptr i64 %4028 to %nyx_string*
  %4030 = alloca %nyx_string*
  store %nyx_string* %4029, %nyx_string** %4030
  %4031 = load %nyx_string*, %nyx_string** %4030
  %4032 = getelementptr [1 x i8], [1 x i8]* @.str271, i32 0, i32 0
  %4033 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str271.c, i8* %4032, i64 0)
  %4034 = call i1 @nyx_string_equals(%nyx_string* %4031, %nyx_string* %4033)
  br i1 %4034, label %then1015, label %else1016
then1015:
  %4035 = load { i64, i8* }*, { i64, i8* }** %3964
  %4036 = load i64, i64* %3969
  %4037 = load %nyx_string*, %nyx_string** %4019
  %4038 = ptrtoint %nyx_string* %4037 to i64
  call void @nyx_array_set_tagged({ i64, i8* }* %4035, i64 %4036, i64 %4038, i64 2)
  br label %merge1017
else1016:
  %4039 = load %nyx_string*, %nyx_string** %4019
  %4040 = getelementptr [1 x i8], [1 x i8]* @.str272, i32 0, i32 0
  %4041 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str272.c, i8* %4040, i64 0)
  %4042 = call i1 @nyx_string_equals(%nyx_string* %4039, %nyx_string* %4041)
  %4043 = xor i1 %4042, true
  br i1 %4043, label %then1018, label %else1019
then1018:
  %4044 = load %nyx_string*, %nyx_string** %4030
  %4045 = call i1 @reforigin_is_soft(%nyx_string* %4044)
  br i1 %4045, label %then1021, label %else1022
then1021:
  %4046 = load %nyx_string*, %nyx_string** %4019
  %4047 = call i1 @reforigin_is_soft(%nyx_string* %4046)
  %4048 = xor i1 %4047, true
  br i1 %4048, label %then1024, label %else1025
then1024:
  %4049 = load { i64, i8* }*, { i64, i8* }** %3964
  %4050 = load i64, i64* %3969
  %4051 = load %nyx_string*, %nyx_string** %4019
  %4052 = ptrtoint %nyx_string* %4051 to i64
  call void @nyx_array_set_tagged({ i64, i8* }* %4049, i64 %4050, i64 %4052, i64 2)
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
  %4053 = load i64, i64* %3969
  %4054 = add i64 %4053, 1
  store i64 %4054, i64* %3969
  br label %while_cond1000
while_end1002:
  %4055 = load { i64, i8* }*, { i64, i8* }** %3920
  ret { i64, i8* }* %4055
}

define internal i64 @state_merge_from(
{ i64, i8* }* %dst.param, { i64, i8* }* %src.param) {
  %dst.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %dst.param, { i64, i8* }** %dst.ptr
  %src.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %src.param, { i64, i8* }** %src.ptr
  %4056 = load { i64, i8* }*, { i64, i8* }** %dst.ptr
  %4057 = call i64 @nyx_array_get({ i64, i8* }* %4056, i64 0)
  %4058 = inttoptr i64 %4057 to { i64, i8* }*
  %4059 = alloca { i64, i8* }*
  store { i64, i8* }* %4058, { i64, i8* }** %4059
  %4060 = load { i64, i8* }*, { i64, i8* }** %dst.ptr
  %4061 = call i64 @nyx_array_get({ i64, i8* }* %4060, i64 1)
  %4062 = inttoptr i64 %4061 to { i64, i8* }*
  %4063 = alloca { i64, i8* }*
  store { i64, i8* }* %4062, { i64, i8* }** %4063
  %4064 = load { i64, i8* }*, { i64, i8* }** %dst.ptr
  %4065 = call i64 @nyx_array_get({ i64, i8* }* %4064, i64 3)
  %4066 = inttoptr i64 %4065 to { i64, i8* }*
  %4067 = alloca { i64, i8* }*
  store { i64, i8* }* %4066, { i64, i8* }** %4067
  %4068 = load { i64, i8* }*, { i64, i8* }** %src.ptr
  %4069 = call i64 @nyx_array_get({ i64, i8* }* %4068, i64 1)
  %4070 = inttoptr i64 %4069 to { i64, i8* }*
  %4071 = alloca { i64, i8* }*
  store { i64, i8* }* %4070, { i64, i8* }** %4071
  %4072 = load { i64, i8* }*, { i64, i8* }** %src.ptr
  %4073 = call i64 @nyx_array_get({ i64, i8* }* %4072, i64 3)
  %4074 = inttoptr i64 %4073 to { i64, i8* }*
  %4075 = alloca { i64, i8* }*
  store { i64, i8* }* %4074, { i64, i8* }** %4075
  %4076 = load { i64, i8* }*, { i64, i8* }** %4059
  %4077 = call i64 @nyx_array_length({ i64, i8* }* %4076)
  %4078 = alloca i64
  store i64 %4077, i64* %4078
  %4079 = alloca i64
  store i64 0, i64* %4079
  %4080 = call i8* @llvm.stacksave()
  br label %while_cond1027
while_cond1027:
  %4081 = load i64, i64* %4079
  %4082 = load i64, i64* %4078
  %4083 = icmp slt i64 %4081, %4082
  br i1 %4083, label %while_body1028, label %while_end1029
while_body1028:
  call void @llvm.stackrestore(i8* %4080)
  %4084 = load { i64, i8* }*, { i64, i8* }** %4063
  %4085 = load i64, i64* %4079
  %4086 = load { i64, i8* }*, { i64, i8* }** %4071
  %4087 = load i64, i64* %4079
  %4088 = call i64 @nyx_array_get({ i64, i8* }* %4086, i64 %4087)
  call void @nyx_array_set({ i64, i8* }* %4084, i64 %4085, i64 %4088)
  %4089 = load { i64, i8* }*, { i64, i8* }** %4067
  %4090 = load i64, i64* %4079
  %4091 = load { i64, i8* }*, { i64, i8* }** %4075
  %4092 = load i64, i64* %4079
  %4093 = call i64 @nyx_array_get({ i64, i8* }* %4091, i64 %4092)
  call void @nyx_array_set({ i64, i8* }* %4089, i64 %4090, i64 %4093)
  %4094 = load i64, i64* %4079
  %4095 = add i64 %4094, 1
  store i64 %4095, i64* %4079
  br label %while_cond1027
while_end1029:
  ret i64 0
}


attributes #0 = { returns_twice }

