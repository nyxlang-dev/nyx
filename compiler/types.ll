source_filename = "script.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [6 x i8] c"TyInt\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [8 x i8] c"TyFloat\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [7 x i8] c"TyBool\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [9 x i8] c"TyString\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [7 x i8] c"TyChar\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [7 x i8] c"TyUnit\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [10 x i8] c"TyUnknown\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [8 x i8] c"TyArray\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [9 x i8] c"TyOption\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [9 x i8] c"TyResult\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [6 x i8] c"TyMap\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [6 x i8] c"TyPtr\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [6 x i8] c"TyRef\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [1 x i8] c"\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [9 x i8] c"TyRefMut\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [1 x i8] c"\00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [6 x i8] c"TyRef\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [9 x i8] c"TyRefMut\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [1 x i8] c"\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [5 x i8] c"TyFn\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [6 x i8] c"TyDyn\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [9 x i8] c"TyStruct\00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [7 x i8] c"TyEnum\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [10 x i8] c"TyGeneric\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [8 x i8] c"TySized\00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [10 x i8] c"TyUnknown\00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [10 x i8] c"TyUnknown\00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [3 x i8] c"i8\00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [4 x i8] c"i16\00"
@.str28.c = internal global %nyx_string* null
@.str29 = private unnamed_addr constant [4 x i8] c"i32\00"
@.str29.c = internal global %nyx_string* null
@.str30 = private unnamed_addr constant [4 x i8] c"i64\00"
@.str30.c = internal global %nyx_string* null
@.str31 = private unnamed_addr constant [3 x i8] c"u8\00"
@.str31.c = internal global %nyx_string* null
@.str32 = private unnamed_addr constant [4 x i8] c"u16\00"
@.str32.c = internal global %nyx_string* null
@.str33 = private unnamed_addr constant [4 x i8] c"u32\00"
@.str33.c = internal global %nyx_string* null
@.str34 = private unnamed_addr constant [4 x i8] c"u64\00"
@.str34.c = internal global %nyx_string* null
@.str35 = private unnamed_addr constant [4 x i8] c"f32\00"
@.str35.c = internal global %nyx_string* null
@.str36 = private unnamed_addr constant [6 x i8] c"usize\00"
@.str36.c = internal global %nyx_string* null
@.str37 = private unnamed_addr constant [10 x i8] c"TyUnknown\00"
@.str37.c = internal global %nyx_string* null
@.str38 = private unnamed_addr constant [10 x i8] c"TyUnknown\00"
@.str38.c = internal global %nyx_string* null
@.str39 = private unnamed_addr constant [6 x i8] c"TyDyn\00"
@.str39.c = internal global %nyx_string* null
@.str40 = private unnamed_addr constant [6 x i8] c"TyDyn\00"
@.str40.c = internal global %nyx_string* null
@.str41 = private unnamed_addr constant [10 x i8] c"TyGeneric\00"
@.str41.c = internal global %nyx_string* null
@.str42 = private unnamed_addr constant [10 x i8] c"TyGeneric\00"
@.str42.c = internal global %nyx_string* null
@.str43 = private unnamed_addr constant [6 x i8] c"TyInt\00"
@.str43.c = internal global %nyx_string* null
@.str44 = private unnamed_addr constant [8 x i8] c"TySized\00"
@.str44.c = internal global %nyx_string* null
@.str45 = private unnamed_addr constant [4 x i8] c"f32\00"
@.str45.c = internal global %nyx_string* null
@.str46 = private unnamed_addr constant [6 x i8] c"TyInt\00"
@.str46.c = internal global %nyx_string* null
@.str47 = private unnamed_addr constant [8 x i8] c"TySized\00"
@.str47.c = internal global %nyx_string* null
@.str48 = private unnamed_addr constant [4 x i8] c"f32\00"
@.str48.c = internal global %nyx_string* null
@.str49 = private unnamed_addr constant [8 x i8] c"TyFloat\00"
@.str49.c = internal global %nyx_string* null
@.str50 = private unnamed_addr constant [8 x i8] c"TySized\00"
@.str50.c = internal global %nyx_string* null
@.str51 = private unnamed_addr constant [4 x i8] c"f32\00"
@.str51.c = internal global %nyx_string* null
@.str52 = private unnamed_addr constant [8 x i8] c"TyFloat\00"
@.str52.c = internal global %nyx_string* null
@.str53 = private unnamed_addr constant [8 x i8] c"TySized\00"
@.str53.c = internal global %nyx_string* null
@.str54 = private unnamed_addr constant [4 x i8] c"f32\00"
@.str54.c = internal global %nyx_string* null
@.str55 = private unnamed_addr constant [6 x i8] c"TyInt\00"
@.str55.c = internal global %nyx_string* null
@.str56 = private unnamed_addr constant [7 x i8] c"TyChar\00"
@.str56.c = internal global %nyx_string* null
@.str57 = private unnamed_addr constant [7 x i8] c"TyChar\00"
@.str57.c = internal global %nyx_string* null
@.str58 = private unnamed_addr constant [6 x i8] c"TyInt\00"
@.str58.c = internal global %nyx_string* null
@.str59 = private unnamed_addr constant [6 x i8] c"TyInt\00"
@.str59.c = internal global %nyx_string* null
@.str60 = private unnamed_addr constant [8 x i8] c"TyFloat\00"
@.str60.c = internal global %nyx_string* null
@.str61 = private unnamed_addr constant [7 x i8] c"TyBool\00"
@.str61.c = internal global %nyx_string* null
@.str62 = private unnamed_addr constant [9 x i8] c"TyString\00"
@.str62.c = internal global %nyx_string* null
@.str63 = private unnamed_addr constant [7 x i8] c"TyChar\00"
@.str63.c = internal global %nyx_string* null
@.str64 = private unnamed_addr constant [7 x i8] c"TyUnit\00"
@.str64.c = internal global %nyx_string* null
@.str65 = private unnamed_addr constant [8 x i8] c"TyArray\00"
@.str65.c = internal global %nyx_string* null
@.str66 = private unnamed_addr constant [9 x i8] c"TyOption\00"
@.str66.c = internal global %nyx_string* null
@.str67 = private unnamed_addr constant [6 x i8] c"TyPtr\00"
@.str67.c = internal global %nyx_string* null
@.str68 = private unnamed_addr constant [6 x i8] c"TyRef\00"
@.str68.c = internal global %nyx_string* null
@.str69 = private unnamed_addr constant [9 x i8] c"TyRefMut\00"
@.str69.c = internal global %nyx_string* null
@.str70 = private unnamed_addr constant [9 x i8] c"TyResult\00"
@.str70.c = internal global %nyx_string* null
@.str71 = private unnamed_addr constant [6 x i8] c"TyMap\00"
@.str71.c = internal global %nyx_string* null
@.str72 = private unnamed_addr constant [5 x i8] c"TyFn\00"
@.str72.c = internal global %nyx_string* null
@.str73 = private unnamed_addr constant [9 x i8] c"TyStruct\00"
@.str73.c = internal global %nyx_string* null
@.str74 = private unnamed_addr constant [7 x i8] c"TyEnum\00"
@.str74.c = internal global %nyx_string* null
@.str75 = private unnamed_addr constant [6 x i8] c"TyDyn\00"
@.str75.c = internal global %nyx_string* null
@.str76 = private unnamed_addr constant [10 x i8] c"TyGeneric\00"
@.str76.c = internal global %nyx_string* null
@.str77 = private unnamed_addr constant [8 x i8] c"TySized\00"
@.str77.c = internal global %nyx_string* null
@.str78 = private unnamed_addr constant [6 x i8] c"TyInt\00"
@.str78.c = internal global %nyx_string* null
@.str79 = private unnamed_addr constant [4 x i8] c"int\00"
@.str79.c = internal global %nyx_string* null
@.str80 = private unnamed_addr constant [8 x i8] c"TyFloat\00"
@.str80.c = internal global %nyx_string* null
@.str81 = private unnamed_addr constant [6 x i8] c"float\00"
@.str81.c = internal global %nyx_string* null
@.str82 = private unnamed_addr constant [7 x i8] c"TyBool\00"
@.str82.c = internal global %nyx_string* null
@.str83 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str83.c = internal global %nyx_string* null
@.str84 = private unnamed_addr constant [9 x i8] c"TyString\00"
@.str84.c = internal global %nyx_string* null
@.str85 = private unnamed_addr constant [7 x i8] c"String\00"
@.str85.c = internal global %nyx_string* null
@.str86 = private unnamed_addr constant [7 x i8] c"TyChar\00"
@.str86.c = internal global %nyx_string* null
@.str87 = private unnamed_addr constant [5 x i8] c"char\00"
@.str87.c = internal global %nyx_string* null
@.str88 = private unnamed_addr constant [7 x i8] c"TyUnit\00"
@.str88.c = internal global %nyx_string* null
@.str89 = private unnamed_addr constant [3 x i8] c"()\00"
@.str89.c = internal global %nyx_string* null
@.str90 = private unnamed_addr constant [10 x i8] c"TyUnknown\00"
@.str90.c = internal global %nyx_string* null
@.str91 = private unnamed_addr constant [2 x i8] c"?\00"
@.str91.c = internal global %nyx_string* null
@.str92 = private unnamed_addr constant [8 x i8] c"TyArray\00"
@.str92.c = internal global %nyx_string* null
@.str93 = private unnamed_addr constant [7 x i8] c"Array<\00"
@.str93.c = internal global %nyx_string* null
@.str94 = private unnamed_addr constant [2 x i8] c">\00"
@.str94.c = internal global %nyx_string* null
@.str95 = private unnamed_addr constant [9 x i8] c"TyOption\00"
@.str95.c = internal global %nyx_string* null
@.str96 = private unnamed_addr constant [8 x i8] c"Option<\00"
@.str96.c = internal global %nyx_string* null
@.str97 = private unnamed_addr constant [2 x i8] c">\00"
@.str97.c = internal global %nyx_string* null
@.str98 = private unnamed_addr constant [9 x i8] c"TyResult\00"
@.str98.c = internal global %nyx_string* null
@.str99 = private unnamed_addr constant [8 x i8] c"Result<\00"
@.str99.c = internal global %nyx_string* null
@.str100 = private unnamed_addr constant [2 x i8] c",\00"
@.str100.c = internal global %nyx_string* null
@.str101 = private unnamed_addr constant [2 x i8] c">\00"
@.str101.c = internal global %nyx_string* null
@.str102 = private unnamed_addr constant [6 x i8] c"TyMap\00"
@.str102.c = internal global %nyx_string* null
@.str103 = private unnamed_addr constant [5 x i8] c"Map<\00"
@.str103.c = internal global %nyx_string* null
@.str104 = private unnamed_addr constant [2 x i8] c",\00"
@.str104.c = internal global %nyx_string* null
@.str105 = private unnamed_addr constant [2 x i8] c">\00"
@.str105.c = internal global %nyx_string* null
@.str106 = private unnamed_addr constant [6 x i8] c"TyPtr\00"
@.str106.c = internal global %nyx_string* null
@.str107 = private unnamed_addr constant [2 x i8] c"*\00"
@.str107.c = internal global %nyx_string* null
@.str108 = private unnamed_addr constant [6 x i8] c"TyRef\00"
@.str108.c = internal global %nyx_string* null
@.str109 = private unnamed_addr constant [2 x i8] c"&\00"
@.str109.c = internal global %nyx_string* null
@.str110 = private unnamed_addr constant [9 x i8] c"TyRefMut\00"
@.str110.c = internal global %nyx_string* null
@.str111 = private unnamed_addr constant [6 x i8] c"&mut \00"
@.str111.c = internal global %nyx_string* null
@.str112 = private unnamed_addr constant [5 x i8] c"TyFn\00"
@.str112.c = internal global %nyx_string* null
@.str113 = private unnamed_addr constant [4 x i8] c"Fn(\00"
@.str113.c = internal global %nyx_string* null
@.str114 = private unnamed_addr constant [2 x i8] c",\00"
@.str114.c = internal global %nyx_string* null
@.str115 = private unnamed_addr constant [4 x i8] c")->\00"
@.str115.c = internal global %nyx_string* null
@.str116 = private unnamed_addr constant [6 x i8] c"TyDyn\00"
@.str116.c = internal global %nyx_string* null
@.str117 = private unnamed_addr constant [5 x i8] c"dyn \00"
@.str117.c = internal global %nyx_string* null
@.str118 = private unnamed_addr constant [9 x i8] c"TyStruct\00"
@.str118.c = internal global %nyx_string* null
@.str119 = private unnamed_addr constant [7 x i8] c"TyEnum\00"
@.str119.c = internal global %nyx_string* null
@.str120 = private unnamed_addr constant [2 x i8] c"<\00"
@.str120.c = internal global %nyx_string* null
@.str121 = private unnamed_addr constant [2 x i8] c",\00"
@.str121.c = internal global %nyx_string* null
@.str122 = private unnamed_addr constant [2 x i8] c">\00"
@.str122.c = internal global %nyx_string* null
@.str123 = private unnamed_addr constant [10 x i8] c"TyGeneric\00"
@.str123.c = internal global %nyx_string* null
@.str124 = private unnamed_addr constant [8 x i8] c"TySized\00"
@.str124.c = internal global %nyx_string* null
@.str125 = private unnamed_addr constant [2 x i8] c"?\00"
@.str125.c = internal global %nyx_string* null
@.str126 = private unnamed_addr constant [1 x i8] c"\00"
@.str126.c = internal global %nyx_string* null
@.str127 = private unnamed_addr constant [2 x i8] c"'\00"
@.str127.c = internal global %nyx_string* null
@.str128 = private unnamed_addr constant [1 x i8] c"\00"
@.str128.c = internal global %nyx_string* null
@.str129 = private unnamed_addr constant [2 x i8] c" \00"
@.str129.c = internal global %nyx_string* null
@.str130 = private unnamed_addr constant [2 x i8] c"'\00"
@.str130.c = internal global %nyx_string* null
@.str131 = private unnamed_addr constant [2 x i8] c" \00"
@.str131.c = internal global %nyx_string* null
@.str132 = private unnamed_addr constant [2 x i8] c" \00"
@.str132.c = internal global %nyx_string* null
@.str133 = private unnamed_addr constant [1 x i8] c"\00"
@.str133.c = internal global %nyx_string* null
@.str134 = private unnamed_addr constant [4 x i8] c"int\00"
@.str134.c = internal global %nyx_string* null
@.str135 = private unnamed_addr constant [6 x i8] c"float\00"
@.str135.c = internal global %nyx_string* null
@.str136 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str136.c = internal global %nyx_string* null
@.str137 = private unnamed_addr constant [7 x i8] c"String\00"
@.str137.c = internal global %nyx_string* null
@.str138 = private unnamed_addr constant [5 x i8] c"char\00"
@.str138.c = internal global %nyx_string* null
@.str139 = private unnamed_addr constant [5 x i8] c"void\00"
@.str139.c = internal global %nyx_string* null
@.str140 = private unnamed_addr constant [3 x i8] c"()\00"
@.str140.c = internal global %nyx_string* null
@.str141 = private unnamed_addr constant [5 x i8] c"Self\00"
@.str141.c = internal global %nyx_string* null
@.str142 = private unnamed_addr constant [2 x i8] c"*\00"
@.str142.c = internal global %nyx_string* null
@.str143 = private unnamed_addr constant [6 x i8] c"&mut \00"
@.str143.c = internal global %nyx_string* null
@.str144 = private unnamed_addr constant [2 x i8] c"&\00"
@.str144.c = internal global %nyx_string* null
@.str145 = private unnamed_addr constant [5 x i8] c"dyn \00"
@.str145.c = internal global %nyx_string* null
@.str146 = private unnamed_addr constant [4 x i8] c"Fn(\00"
@.str146.c = internal global %nyx_string* null
@.str147 = private unnamed_addr constant [1 x i8] c"\00"
@.str147.c = internal global %nyx_string* null
@.str148 = private unnamed_addr constant [3 x i8] c"->\00"
@.str148.c = internal global %nyx_string* null
@.str149 = private unnamed_addr constant [2 x i8] c">\00"
@.str149.c = internal global %nyx_string* null
@.str150 = private unnamed_addr constant [2 x i8] c"<\00"
@.str150.c = internal global %nyx_string* null
@.str151 = private unnamed_addr constant [6 x i8] c"Array\00"
@.str151.c = internal global %nyx_string* null
@.str152 = private unnamed_addr constant [7 x i8] c"Option\00"
@.str152.c = internal global %nyx_string* null
@.str153 = private unnamed_addr constant [7 x i8] c"Result\00"
@.str153.c = internal global %nyx_string* null
@.str154 = private unnamed_addr constant [4 x i8] c"Map\00"
@.str154.c = internal global %nyx_string* null
@.str155 = private unnamed_addr constant [6 x i8] c"Array\00"
@.str155.c = internal global %nyx_string* null
@.str156 = private unnamed_addr constant [7 x i8] c"Option\00"
@.str156.c = internal global %nyx_string* null
@.str157 = private unnamed_addr constant [7 x i8] c"Result\00"
@.str157.c = internal global %nyx_string* null
@.str158 = private unnamed_addr constant [4 x i8] c"Map\00"
@.str158.c = internal global %nyx_string* null
@.str159 = private unnamed_addr constant [7 x i8] c"number\00"
@.str159.c = internal global %nyx_string* null
@.str160 = private unnamed_addr constant [2 x i8] c".\00"
@.str160.c = internal global %nyx_string* null
@.str161 = private unnamed_addr constant [7 x i8] c"string\00"
@.str161.c = internal global %nyx_string* null
@.str162 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str162.c = internal global %nyx_string* null
@.str163 = private unnamed_addr constant [5 x i8] c"char\00"
@.str163.c = internal global %nyx_string* null
@.str164 = private unnamed_addr constant [6 x i8] c"array\00"
@.str164.c = internal global %nyx_string* null
@.str165 = private unnamed_addr constant [6 x i8] c"TyInt\00"
@.str165.c = internal global %nyx_string* null
@.str166 = private unnamed_addr constant [8 x i8] c"TySized\00"
@.str166.c = internal global %nyx_string* null
@.str167 = private unnamed_addr constant [4 x i8] c"f32\00"
@.str167.c = internal global %nyx_string* null
@.str168 = private unnamed_addr constant [8 x i8] c"TyFloat\00"
@.str168.c = internal global %nyx_string* null
@.str169 = private unnamed_addr constant [8 x i8] c"TySized\00"
@.str169.c = internal global %nyx_string* null
@.str170 = private unnamed_addr constant [4 x i8] c"f32\00"
@.str170.c = internal global %nyx_string* null
@.str171 = private unnamed_addr constant [6 x i8] c"TyInt\00"
@.str171.c = internal global %nyx_string* null
@.str172 = private unnamed_addr constant [1 x i8] c"\00"
@.str172.c = internal global %nyx_string* null
@.str173 = private unnamed_addr constant [7 x i8] c"TyUnit\00"
@.str173.c = internal global %nyx_string* null
@.str174 = private unnamed_addr constant [1 x i8] c"\00"
@.str174.c = internal global %nyx_string* null
@.str175 = private unnamed_addr constant [10 x i8] c"TyUnknown\00"
@.str175.c = internal global %nyx_string* null
@.str176 = private unnamed_addr constant [1 x i8] c"\00"
@.str176.c = internal global %nyx_string* null
@.str177 = private unnamed_addr constant [10 x i8] c"TyUnknown\00"
@.str177.c = internal global %nyx_string* null
@.str178 = private unnamed_addr constant [10 x i8] c"TyGeneric\00"
@.str178.c = internal global %nyx_string* null
@.str179 = private unnamed_addr constant [6 x i8] c"TyVar\00"
@.str179.c = internal global %nyx_string* null
@.str180 = private unnamed_addr constant [8 x i8] c"TyArray\00"
@.str180.c = internal global %nyx_string* null
@.str181 = private unnamed_addr constant [9 x i8] c"TyOption\00"
@.str181.c = internal global %nyx_string* null
@.str182 = private unnamed_addr constant [6 x i8] c"TyPtr\00"
@.str182.c = internal global %nyx_string* null
@.str183 = private unnamed_addr constant [6 x i8] c"TyRef\00"
@.str183.c = internal global %nyx_string* null
@.str184 = private unnamed_addr constant [9 x i8] c"TyRefMut\00"
@.str184.c = internal global %nyx_string* null
@.str185 = private unnamed_addr constant [9 x i8] c"TyResult\00"
@.str185.c = internal global %nyx_string* null
@.str186 = private unnamed_addr constant [6 x i8] c"TyMap\00"
@.str186.c = internal global %nyx_string* null
@.str187 = private unnamed_addr constant [5 x i8] c"TyFn\00"
@.str187.c = internal global %nyx_string* null
@.str188 = private unnamed_addr constant [9 x i8] c"TyStruct\00"
@.str188.c = internal global %nyx_string* null
@.str189 = private unnamed_addr constant [7 x i8] c"TyEnum\00"
@.str189.c = internal global %nyx_string* null
@.str190 = private unnamed_addr constant [1 x i8] c"\00"
@.str190.c = internal global %nyx_string* null
@.str191 = private unnamed_addr constant [8 x i8] c"AND_AND\00"
@.str191.c = internal global %nyx_string* null
@.str192 = private unnamed_addr constant [6 x i8] c"OR_OR\00"
@.str192.c = internal global %nyx_string* null
@.str193 = private unnamed_addr constant [4 x i8] c"AND\00"
@.str193.c = internal global %nyx_string* null
@.str194 = private unnamed_addr constant [3 x i8] c"OR\00"
@.str194.c = internal global %nyx_string* null
@.str195 = private unnamed_addr constant [7 x i8] c"TyBool\00"
@.str195.c = internal global %nyx_string* null
@.str196 = private unnamed_addr constant [7 x i8] c"TyBool\00"
@.str196.c = internal global %nyx_string* null
@.str197 = private unnamed_addr constant [12 x i8] c"EQUAL_EQUAL\00"
@.str197.c = internal global %nyx_string* null
@.str198 = private unnamed_addr constant [10 x i8] c"NOT_EQUAL\00"
@.str198.c = internal global %nyx_string* null
@.str199 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str199.c = internal global %nyx_string* null
@.str200 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str200.c = internal global %nyx_string* null
@.str201 = private unnamed_addr constant [11 x i8] c"LESS_EQUAL\00"
@.str201.c = internal global %nyx_string* null
@.str202 = private unnamed_addr constant [14 x i8] c"GREATER_EQUAL\00"
@.str202.c = internal global %nyx_string* null
@.str203 = private unnamed_addr constant [5 x i8] c"PIPE\00"
@.str203.c = internal global %nyx_string* null
@.str204 = private unnamed_addr constant [4 x i8] c"AMP\00"
@.str204.c = internal global %nyx_string* null
@.str205 = private unnamed_addr constant [6 x i8] c"CARET\00"
@.str205.c = internal global %nyx_string* null
@.str206 = private unnamed_addr constant [11 x i8] c"SHIFT_LEFT\00"
@.str206.c = internal global %nyx_string* null
@.str207 = private unnamed_addr constant [12 x i8] c"SHIFT_RIGHT\00"
@.str207.c = internal global %nyx_string* null
@.str208 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str208.c = internal global %nyx_string* null
@.str209 = private unnamed_addr constant [9 x i8] c"TyString\00"
@.str209.c = internal global %nyx_string* null
@.str210 = private unnamed_addr constant [9 x i8] c"TyString\00"
@.str210.c = internal global %nyx_string* null
@.str211 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str211.c = internal global %nyx_string* null
@.str212 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str212.c = internal global %nyx_string* null
@.str213 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str213.c = internal global %nyx_string* null
@.str214 = private unnamed_addr constant [6 x i8] c"SLASH\00"
@.str214.c = internal global %nyx_string* null
@.str215 = private unnamed_addr constant [8 x i8] c"PERCENT\00"
@.str215.c = internal global %nyx_string* null
@.str216 = private unnamed_addr constant [6 x i8] c"POWER\00"
@.str216.c = internal global %nyx_string* null
@.str217 = private unnamed_addr constant [10 x i8] c"TyGeneric\00"
@.str217.c = internal global %nyx_string* null
@.str218 = private unnamed_addr constant [8 x i8] c"TyArray\00"
@.str218.c = internal global %nyx_string* null
@.str219 = private unnamed_addr constant [9 x i8] c"TyOption\00"
@.str219.c = internal global %nyx_string* null
@.str220 = private unnamed_addr constant [6 x i8] c"TyPtr\00"
@.str220.c = internal global %nyx_string* null
@.str221 = private unnamed_addr constant [6 x i8] c"TyRef\00"
@.str221.c = internal global %nyx_string* null
@.str222 = private unnamed_addr constant [9 x i8] c"TyRefMut\00"
@.str222.c = internal global %nyx_string* null
@.str223 = private unnamed_addr constant [9 x i8] c"TyResult\00"
@.str223.c = internal global %nyx_string* null
@.str224 = private unnamed_addr constant [6 x i8] c"TyMap\00"
@.str224.c = internal global %nyx_string* null
@.str225 = private unnamed_addr constant [5 x i8] c"TyFn\00"
@.str225.c = internal global %nyx_string* null
@.str226 = private unnamed_addr constant [9 x i8] c"TyStruct\00"
@.str226.c = internal global %nyx_string* null
@.str227 = private unnamed_addr constant [7 x i8] c"TyEnum\00"
@.str227.c = internal global %nyx_string* null
@.str228 = private unnamed_addr constant [10 x i8] c"TyUnknown\00"
@.str228.c = internal global %nyx_string* null
@.str229 = private unnamed_addr constant [10 x i8] c"TyUnknown\00"
@.str229.c = internal global %nyx_string* null
@.str230 = private unnamed_addr constant [6 x i8] c"TyDyn\00"
@.str230.c = internal global %nyx_string* null
@.str231 = private unnamed_addr constant [6 x i8] c"TyDyn\00"
@.str231.c = internal global %nyx_string* null
@.str232 = private unnamed_addr constant [10 x i8] c"TyGeneric\00"
@.str232.c = internal global %nyx_string* null
@.str233 = private unnamed_addr constant [10 x i8] c"TyGeneric\00"
@.str233.c = internal global %nyx_string* null
@.str234 = private unnamed_addr constant [8 x i8] c"TyArray\00"
@.str234.c = internal global %nyx_string* null
@.str235 = private unnamed_addr constant [9 x i8] c"TyOption\00"
@.str235.c = internal global %nyx_string* null
@.str236 = private unnamed_addr constant [6 x i8] c"TyPtr\00"
@.str236.c = internal global %nyx_string* null
@.str237 = private unnamed_addr constant [6 x i8] c"TyRef\00"
@.str237.c = internal global %nyx_string* null
@.str238 = private unnamed_addr constant [9 x i8] c"TyRefMut\00"
@.str238.c = internal global %nyx_string* null
@.str239 = private unnamed_addr constant [9 x i8] c"TyResult\00"
@.str239.c = internal global %nyx_string* null
@.str240 = private unnamed_addr constant [6 x i8] c"TyMap\00"
@.str240.c = internal global %nyx_string* null
@.str241 = private unnamed_addr constant [5 x i8] c"TyFn\00"
@.str241.c = internal global %nyx_string* null
@.str242 = private unnamed_addr constant [9 x i8] c"TyStruct\00"
@.str242.c = internal global %nyx_string* null
@.str243 = private unnamed_addr constant [7 x i8] c"TyEnum\00"
@.str243.c = internal global %nyx_string* null
@.str244 = private unnamed_addr constant [6 x i8] c"TyVar\00"
@.str244.c = internal global %nyx_string* null
@.str245 = private unnamed_addr constant [6 x i8] c"TyVar\00"
@.str245.c = internal global %nyx_string* null
@.str246 = private unnamed_addr constant [8 x i8] c"TyArray\00"
@.str246.c = internal global %nyx_string* null
@.str247 = private unnamed_addr constant [9 x i8] c"TyOption\00"
@.str247.c = internal global %nyx_string* null
@.str248 = private unnamed_addr constant [6 x i8] c"TyPtr\00"
@.str248.c = internal global %nyx_string* null
@.str249 = private unnamed_addr constant [6 x i8] c"TyRef\00"
@.str249.c = internal global %nyx_string* null
@.str250 = private unnamed_addr constant [9 x i8] c"TyRefMut\00"
@.str250.c = internal global %nyx_string* null
@.str251 = private unnamed_addr constant [9 x i8] c"TyResult\00"
@.str251.c = internal global %nyx_string* null
@.str252 = private unnamed_addr constant [6 x i8] c"TyMap\00"
@.str252.c = internal global %nyx_string* null
@.str253 = private unnamed_addr constant [5 x i8] c"TyFn\00"
@.str253.c = internal global %nyx_string* null
@.str254 = private unnamed_addr constant [9 x i8] c"TyStruct\00"
@.str254.c = internal global %nyx_string* null
@.str255 = private unnamed_addr constant [7 x i8] c"TyEnum\00"
@.str255.c = internal global %nyx_string* null
@.str256 = private unnamed_addr constant [6 x i8] c"TyVar\00"
@.str256.c = internal global %nyx_string* null
@.str257 = private unnamed_addr constant [8 x i8] c"TyArray\00"
@.str257.c = internal global %nyx_string* null
@.str258 = private unnamed_addr constant [9 x i8] c"TyOption\00"
@.str258.c = internal global %nyx_string* null
@.str259 = private unnamed_addr constant [6 x i8] c"TyPtr\00"
@.str259.c = internal global %nyx_string* null
@.str260 = private unnamed_addr constant [6 x i8] c"TyRef\00"
@.str260.c = internal global %nyx_string* null
@.str261 = private unnamed_addr constant [9 x i8] c"TyRefMut\00"
@.str261.c = internal global %nyx_string* null
@.str262 = private unnamed_addr constant [9 x i8] c"TyResult\00"
@.str262.c = internal global %nyx_string* null
@.str263 = private unnamed_addr constant [6 x i8] c"TyMap\00"
@.str263.c = internal global %nyx_string* null
@.str264 = private unnamed_addr constant [5 x i8] c"TyFn\00"
@.str264.c = internal global %nyx_string* null
@.str265 = private unnamed_addr constant [9 x i8] c"TyStruct\00"
@.str265.c = internal global %nyx_string* null
@.str266 = private unnamed_addr constant [7 x i8] c"TyEnum\00"
@.str266.c = internal global %nyx_string* null
@.str267 = private unnamed_addr constant [10 x i8] c"TyUnknown\00"
@.str267.c = internal global %nyx_string* null
@.str268 = private unnamed_addr constant [10 x i8] c"TyUnknown\00"
@.str268.c = internal global %nyx_string* null
@.str269 = private unnamed_addr constant [6 x i8] c"TyDyn\00"
@.str269.c = internal global %nyx_string* null
@.str270 = private unnamed_addr constant [6 x i8] c"TyDyn\00"
@.str270.c = internal global %nyx_string* null
@.str271 = private unnamed_addr constant [10 x i8] c"TyGeneric\00"
@.str271.c = internal global %nyx_string* null
@.str272 = private unnamed_addr constant [10 x i8] c"TyGeneric\00"
@.str272.c = internal global %nyx_string* null
@.str273 = private unnamed_addr constant [6 x i8] c"TyVar\00"
@.str273.c = internal global %nyx_string* null
@.str274 = private unnamed_addr constant [6 x i8] c"TyVar\00"
@.str274.c = internal global %nyx_string* null
@.str275 = private unnamed_addr constant [6 x i8] c"TyVar\00"
@.str275.c = internal global %nyx_string* null
@.str276 = private unnamed_addr constant [8 x i8] c"TyArray\00"
@.str276.c = internal global %nyx_string* null
@.str277 = private unnamed_addr constant [9 x i8] c"TyOption\00"
@.str277.c = internal global %nyx_string* null
@.str278 = private unnamed_addr constant [6 x i8] c"TyPtr\00"
@.str278.c = internal global %nyx_string* null
@.str279 = private unnamed_addr constant [6 x i8] c"TyRef\00"
@.str279.c = internal global %nyx_string* null
@.str280 = private unnamed_addr constant [9 x i8] c"TyRefMut\00"
@.str280.c = internal global %nyx_string* null
@.str281 = private unnamed_addr constant [9 x i8] c"TyResult\00"
@.str281.c = internal global %nyx_string* null
@.str282 = private unnamed_addr constant [6 x i8] c"TyMap\00"
@.str282.c = internal global %nyx_string* null
@.str283 = private unnamed_addr constant [5 x i8] c"TyFn\00"
@.str283.c = internal global %nyx_string* null
@.str284 = private unnamed_addr constant [9 x i8] c"TyStruct\00"
@.str284.c = internal global %nyx_string* null
@.str285 = private unnamed_addr constant [7 x i8] c"TyEnum\00"
@.str285.c = internal global %nyx_string* null
@.str286 = private unnamed_addr constant [4 x i8] c"int\00"
@.str286.c = internal global %nyx_string* null
@.str287 = private unnamed_addr constant [6 x i8] c"float\00"
@.str287.c = internal global %nyx_string* null
@.str288 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str288.c = internal global %nyx_string* null
@.str289 = private unnamed_addr constant [7 x i8] c"String\00"
@.str289.c = internal global %nyx_string* null
@.str290 = private unnamed_addr constant [5 x i8] c"char\00"
@.str290.c = internal global %nyx_string* null
@.str291 = private unnamed_addr constant [5 x i8] c"void\00"
@.str291.c = internal global %nyx_string* null
@.str292 = private unnamed_addr constant [3 x i8] c"i8\00"
@.str292.c = internal global %nyx_string* null
@.str293 = private unnamed_addr constant [4 x i8] c"i16\00"
@.str293.c = internal global %nyx_string* null
@.str294 = private unnamed_addr constant [4 x i8] c"i32\00"
@.str294.c = internal global %nyx_string* null
@.str295 = private unnamed_addr constant [4 x i8] c"i64\00"
@.str295.c = internal global %nyx_string* null
@.str296 = private unnamed_addr constant [3 x i8] c"u8\00"
@.str296.c = internal global %nyx_string* null
@.str297 = private unnamed_addr constant [4 x i8] c"u16\00"
@.str297.c = internal global %nyx_string* null
@.str298 = private unnamed_addr constant [4 x i8] c"u32\00"
@.str298.c = internal global %nyx_string* null
@.str299 = private unnamed_addr constant [4 x i8] c"u64\00"
@.str299.c = internal global %nyx_string* null
@.str300 = private unnamed_addr constant [4 x i8] c"f32\00"
@.str300.c = internal global %nyx_string* null
@.str301 = private unnamed_addr constant [6 x i8] c"usize\00"
@.str301.c = internal global %nyx_string* null
@.str302 = private unnamed_addr constant [6 x i8] c"Array\00"
@.str302.c = internal global %nyx_string* null
@.str303 = private unnamed_addr constant [7 x i8] c"Option\00"
@.str303.c = internal global %nyx_string* null
@.str304 = private unnamed_addr constant [7 x i8] c"Result\00"
@.str304.c = internal global %nyx_string* null
@.str305 = private unnamed_addr constant [4 x i8] c"Map\00"
@.str305.c = internal global %nyx_string* null
@.str306 = private unnamed_addr constant [14 x i8] c"StringBuilder\00"
@.str306.c = internal global %nyx_string* null
@.str307 = private unnamed_addr constant [9 x i8] c"Iterator\00"
@.str307.c = internal global %nyx_string* null
@.str308 = private unnamed_addr constant [8 x i8] c"Channel\00"
@.str308.c = internal global %nyx_string* null
@.str309 = private unnamed_addr constant [5 x i8] c"File\00"
@.str309.c = internal global %nyx_string* null
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


define { i64, i8* }* @ty_int(
) {
  %1 = call { i64, i8* }* @nyx_array_new_ptr()
  %2 = getelementptr [6 x i8], [6 x i8]* @.str0, i32 0, i32 0
  %3 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %2)
  %4 = ptrtoint %nyx_string* %3 to i64
  call void @nyx_array_push({ i64, i8* }* %1, i64 %4)
  ret { i64, i8* }* %1
}

define { i64, i8* }* @ty_float(
) {
  %5 = call { i64, i8* }* @nyx_array_new_ptr()
  %6 = getelementptr [8 x i8], [8 x i8]* @.str1, i32 0, i32 0
  %7 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %6)
  %8 = ptrtoint %nyx_string* %7 to i64
  call void @nyx_array_push({ i64, i8* }* %5, i64 %8)
  ret { i64, i8* }* %5
}

define { i64, i8* }* @ty_bool(
) {
  %9 = call { i64, i8* }* @nyx_array_new_ptr()
  %10 = getelementptr [7 x i8], [7 x i8]* @.str2, i32 0, i32 0
  %11 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %10)
  %12 = ptrtoint %nyx_string* %11 to i64
  call void @nyx_array_push({ i64, i8* }* %9, i64 %12)
  ret { i64, i8* }* %9
}

define { i64, i8* }* @ty_string(
) {
  %13 = call { i64, i8* }* @nyx_array_new_ptr()
  %14 = getelementptr [9 x i8], [9 x i8]* @.str3, i32 0, i32 0
  %15 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %14)
  %16 = ptrtoint %nyx_string* %15 to i64
  call void @nyx_array_push({ i64, i8* }* %13, i64 %16)
  ret { i64, i8* }* %13
}

define { i64, i8* }* @ty_char(
) {
  %17 = call { i64, i8* }* @nyx_array_new_ptr()
  %18 = getelementptr [7 x i8], [7 x i8]* @.str4, i32 0, i32 0
  %19 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %18)
  %20 = ptrtoint %nyx_string* %19 to i64
  call void @nyx_array_push({ i64, i8* }* %17, i64 %20)
  ret { i64, i8* }* %17
}

define { i64, i8* }* @ty_unit(
) {
  %21 = call { i64, i8* }* @nyx_array_new_ptr()
  %22 = getelementptr [7 x i8], [7 x i8]* @.str5, i32 0, i32 0
  %23 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %22)
  %24 = ptrtoint %nyx_string* %23 to i64
  call void @nyx_array_push({ i64, i8* }* %21, i64 %24)
  ret { i64, i8* }* %21
}

define { i64, i8* }* @ty_unknown(
) {
  %25 = call { i64, i8* }* @nyx_array_new_ptr()
  %26 = getelementptr [10 x i8], [10 x i8]* @.str6, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %26)
  %28 = ptrtoint %nyx_string* %27 to i64
  call void @nyx_array_push({ i64, i8* }* %25, i64 %28)
  ret { i64, i8* }* %25
}

define { i64, i8* }* @ty_array(
{ i64, i8* }* %inner.param) {
  %inner.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %inner.param, { i64, i8* }** %inner.ptr
  %29 = call { i64, i8* }* @nyx_array_new_ptr()
  %30 = getelementptr [8 x i8], [8 x i8]* @.str7, i32 0, i32 0
  %31 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %30)
  %32 = ptrtoint %nyx_string* %31 to i64
  call void @nyx_array_push({ i64, i8* }* %29, i64 %32)
  %33 = load { i64, i8* }*, { i64, i8* }** %inner.ptr
  %34 = bitcast { i64, i8* }* %33 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %29, i8* %34)
  ret { i64, i8* }* %29
}

define { i64, i8* }* @ty_option(
{ i64, i8* }* %inner.param) {
  %inner.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %inner.param, { i64, i8* }** %inner.ptr
  %35 = call { i64, i8* }* @nyx_array_new_ptr()
  %36 = getelementptr [9 x i8], [9 x i8]* @.str8, i32 0, i32 0
  %37 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %36)
  %38 = ptrtoint %nyx_string* %37 to i64
  call void @nyx_array_push({ i64, i8* }* %35, i64 %38)
  %39 = load { i64, i8* }*, { i64, i8* }** %inner.ptr
  %40 = bitcast { i64, i8* }* %39 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %35, i8* %40)
  ret { i64, i8* }* %35
}

define { i64, i8* }* @ty_result(
{ i64, i8* }* %ok.param, { i64, i8* }* %err.param) {
  %ok.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ok.param, { i64, i8* }** %ok.ptr
  %err.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %err.param, { i64, i8* }** %err.ptr
  %41 = call { i64, i8* }* @nyx_array_new_ptr()
  %42 = getelementptr [9 x i8], [9 x i8]* @.str9, i32 0, i32 0
  %43 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %42)
  %44 = ptrtoint %nyx_string* %43 to i64
  call void @nyx_array_push({ i64, i8* }* %41, i64 %44)
  %45 = load { i64, i8* }*, { i64, i8* }** %ok.ptr
  %46 = bitcast { i64, i8* }* %45 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %41, i8* %46)
  %47 = load { i64, i8* }*, { i64, i8* }** %err.ptr
  %48 = bitcast { i64, i8* }* %47 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %41, i8* %48)
  ret { i64, i8* }* %41
}

define { i64, i8* }* @ty_map(
{ i64, i8* }* %k.param, { i64, i8* }* %v.param) {
  %k.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %k.param, { i64, i8* }** %k.ptr
  %v.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %v.param, { i64, i8* }** %v.ptr
  %49 = call { i64, i8* }* @nyx_array_new_ptr()
  %50 = getelementptr [6 x i8], [6 x i8]* @.str10, i32 0, i32 0
  %51 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %50)
  %52 = ptrtoint %nyx_string* %51 to i64
  call void @nyx_array_push({ i64, i8* }* %49, i64 %52)
  %53 = load { i64, i8* }*, { i64, i8* }** %k.ptr
  %54 = bitcast { i64, i8* }* %53 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %49, i8* %54)
  %55 = load { i64, i8* }*, { i64, i8* }** %v.ptr
  %56 = bitcast { i64, i8* }* %55 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %49, i8* %56)
  ret { i64, i8* }* %49
}

define { i64, i8* }* @ty_ptr(
{ i64, i8* }* %inner.param) {
  %inner.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %inner.param, { i64, i8* }** %inner.ptr
  %57 = call { i64, i8* }* @nyx_array_new_ptr()
  %58 = getelementptr [6 x i8], [6 x i8]* @.str11, i32 0, i32 0
  %59 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %58)
  %60 = ptrtoint %nyx_string* %59 to i64
  call void @nyx_array_push({ i64, i8* }* %57, i64 %60)
  %61 = load { i64, i8* }*, { i64, i8* }** %inner.ptr
  %62 = bitcast { i64, i8* }* %61 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %57, i8* %62)
  ret { i64, i8* }* %57
}

define { i64, i8* }* @ty_ref(
{ i64, i8* }* %inner.param) {
  %inner.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %inner.param, { i64, i8* }** %inner.ptr
  %63 = call { i64, i8* }* @nyx_array_new_ptr()
  %64 = getelementptr [6 x i8], [6 x i8]* @.str12, i32 0, i32 0
  %65 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %64)
  %66 = ptrtoint %nyx_string* %65 to i64
  call void @nyx_array_push({ i64, i8* }* %63, i64 %66)
  %67 = load { i64, i8* }*, { i64, i8* }** %inner.ptr
  %68 = bitcast { i64, i8* }* %67 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %63, i8* %68)
  %69 = getelementptr [1 x i8], [1 x i8]* @.str13, i32 0, i32 0
  %70 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str13.c, i8* %69)
  %71 = ptrtoint %nyx_string* %70 to i64
  call void @nyx_array_push({ i64, i8* }* %63, i64 %71)
  ret { i64, i8* }* %63
}

define { i64, i8* }* @ty_ref_mut(
{ i64, i8* }* %inner.param) {
  %inner.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %inner.param, { i64, i8* }** %inner.ptr
  %72 = call { i64, i8* }* @nyx_array_new_ptr()
  %73 = getelementptr [9 x i8], [9 x i8]* @.str14, i32 0, i32 0
  %74 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str14.c, i8* %73)
  %75 = ptrtoint %nyx_string* %74 to i64
  call void @nyx_array_push({ i64, i8* }* %72, i64 %75)
  %76 = load { i64, i8* }*, { i64, i8* }** %inner.ptr
  %77 = bitcast { i64, i8* }* %76 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %72, i8* %77)
  %78 = getelementptr [1 x i8], [1 x i8]* @.str15, i32 0, i32 0
  %79 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str15.c, i8* %78)
  %80 = ptrtoint %nyx_string* %79 to i64
  call void @nyx_array_push({ i64, i8* }* %72, i64 %80)
  ret { i64, i8* }* %72
}

define { i64, i8* }* @ty_ref_r(
{ i64, i8* }* %inner.param, %nyx_string* %region.param) {
  %inner.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %inner.param, { i64, i8* }** %inner.ptr
  %region.ptr = alloca %nyx_string*
  store %nyx_string* %region.param, %nyx_string** %region.ptr
  %81 = call { i64, i8* }* @nyx_array_new_ptr()
  %82 = getelementptr [6 x i8], [6 x i8]* @.str16, i32 0, i32 0
  %83 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str16.c, i8* %82)
  %84 = ptrtoint %nyx_string* %83 to i64
  call void @nyx_array_push({ i64, i8* }* %81, i64 %84)
  %85 = load { i64, i8* }*, { i64, i8* }** %inner.ptr
  %86 = bitcast { i64, i8* }* %85 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %81, i8* %86)
  %87 = load %nyx_string*, %nyx_string** %region.ptr
  %88 = ptrtoint %nyx_string* %87 to i64
  call void @nyx_array_push({ i64, i8* }* %81, i64 %88)
  ret { i64, i8* }* %81
}

define { i64, i8* }* @ty_ref_mut_r(
{ i64, i8* }* %inner.param, %nyx_string* %region.param) {
  %inner.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %inner.param, { i64, i8* }** %inner.ptr
  %region.ptr = alloca %nyx_string*
  store %nyx_string* %region.param, %nyx_string** %region.ptr
  %89 = call { i64, i8* }* @nyx_array_new_ptr()
  %90 = getelementptr [9 x i8], [9 x i8]* @.str17, i32 0, i32 0
  %91 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str17.c, i8* %90)
  %92 = ptrtoint %nyx_string* %91 to i64
  call void @nyx_array_push({ i64, i8* }* %89, i64 %92)
  %93 = load { i64, i8* }*, { i64, i8* }** %inner.ptr
  %94 = bitcast { i64, i8* }* %93 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %89, i8* %94)
  %95 = load %nyx_string*, %nyx_string** %region.ptr
  %96 = ptrtoint %nyx_string* %95 to i64
  call void @nyx_array_push({ i64, i8* }* %89, i64 %96)
  ret { i64, i8* }* %89
}

define %nyx_string* @ty_ref_region(
{ i64, i8* }* %t.param) {
  %t.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %t.param, { i64, i8* }** %t.ptr
  %97 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %98 = call i64 @nyx_array_length({ i64, i8* }* %97)
  %99 = icmp sgt i64 %98, 2
  br i1 %99, label %then0, label %else1
then0:
  %100 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %101 = call i64 @nyx_array_get({ i64, i8* }* %100, i64 2)
  %102 = inttoptr i64 %101 to %nyx_string*
  ret %nyx_string* %102
else1:
  br label %merge2
merge2:
  %103 = getelementptr [1 x i8], [1 x i8]* @.str18, i32 0, i32 0
  %104 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str18.c, i8* %103)
  ret %nyx_string* %104
}

define { i64, i8* }* @ty_fn(
{ i64, i8* }* %params.param, { i64, i8* }* %ret.param) {
  %params.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %params.param, { i64, i8* }** %params.ptr
  %ret.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ret.param, { i64, i8* }** %ret.ptr
  %105 = call { i64, i8* }* @nyx_array_new_ptr()
  %106 = getelementptr [5 x i8], [5 x i8]* @.str19, i32 0, i32 0
  %107 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str19.c, i8* %106)
  %108 = ptrtoint %nyx_string* %107 to i64
  call void @nyx_array_push({ i64, i8* }* %105, i64 %108)
  %109 = load { i64, i8* }*, { i64, i8* }** %params.ptr
  %110 = bitcast { i64, i8* }* %109 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %105, i8* %110)
  %111 = load { i64, i8* }*, { i64, i8* }** %ret.ptr
  %112 = bitcast { i64, i8* }* %111 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %105, i8* %112)
  ret { i64, i8* }* %105
}

define { i64, i8* }* @ty_dyn(
%nyx_string* %trait_name.param) {
  %trait_name.ptr = alloca %nyx_string*
  store %nyx_string* %trait_name.param, %nyx_string** %trait_name.ptr
  %113 = call { i64, i8* }* @nyx_array_new_ptr()
  %114 = getelementptr [6 x i8], [6 x i8]* @.str20, i32 0, i32 0
  %115 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str20.c, i8* %114)
  %116 = ptrtoint %nyx_string* %115 to i64
  call void @nyx_array_push({ i64, i8* }* %113, i64 %116)
  %117 = load %nyx_string*, %nyx_string** %trait_name.ptr
  %118 = ptrtoint %nyx_string* %117 to i64
  call void @nyx_array_push({ i64, i8* }* %113, i64 %118)
  ret { i64, i8* }* %113
}

define { i64, i8* }* @ty_struct_ty(
%nyx_string* %name.param, { i64, i8* }* %args.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %args.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %args.param, { i64, i8* }** %args.ptr
  %119 = call { i64, i8* }* @nyx_array_new_ptr()
  %120 = getelementptr [9 x i8], [9 x i8]* @.str21, i32 0, i32 0
  %121 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str21.c, i8* %120)
  %122 = ptrtoint %nyx_string* %121 to i64
  call void @nyx_array_push({ i64, i8* }* %119, i64 %122)
  %123 = load %nyx_string*, %nyx_string** %name.ptr
  %124 = ptrtoint %nyx_string* %123 to i64
  call void @nyx_array_push({ i64, i8* }* %119, i64 %124)
  %125 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %126 = bitcast { i64, i8* }* %125 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %119, i8* %126)
  ret { i64, i8* }* %119
}

define { i64, i8* }* @ty_enum_ty(
%nyx_string* %name.param, { i64, i8* }* %args.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %args.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %args.param, { i64, i8* }** %args.ptr
  %127 = call { i64, i8* }* @nyx_array_new_ptr()
  %128 = getelementptr [7 x i8], [7 x i8]* @.str22, i32 0, i32 0
  %129 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str22.c, i8* %128)
  %130 = ptrtoint %nyx_string* %129 to i64
  call void @nyx_array_push({ i64, i8* }* %127, i64 %130)
  %131 = load %nyx_string*, %nyx_string** %name.ptr
  %132 = ptrtoint %nyx_string* %131 to i64
  call void @nyx_array_push({ i64, i8* }* %127, i64 %132)
  %133 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %134 = bitcast { i64, i8* }* %133 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %127, i8* %134)
  ret { i64, i8* }* %127
}

define { i64, i8* }* @ty_generic(
%nyx_string* %param_name.param) {
  %param_name.ptr = alloca %nyx_string*
  store %nyx_string* %param_name.param, %nyx_string** %param_name.ptr
  %135 = call { i64, i8* }* @nyx_array_new_ptr()
  %136 = getelementptr [10 x i8], [10 x i8]* @.str23, i32 0, i32 0
  %137 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str23.c, i8* %136)
  %138 = ptrtoint %nyx_string* %137 to i64
  call void @nyx_array_push({ i64, i8* }* %135, i64 %138)
  %139 = load %nyx_string*, %nyx_string** %param_name.ptr
  %140 = ptrtoint %nyx_string* %139 to i64
  call void @nyx_array_push({ i64, i8* }* %135, i64 %140)
  ret { i64, i8* }* %135
}

define { i64, i8* }* @ty_sized(
%nyx_string* %name.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %141 = call { i64, i8* }* @nyx_array_new_ptr()
  %142 = getelementptr [8 x i8], [8 x i8]* @.str24, i32 0, i32 0
  %143 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str24.c, i8* %142)
  %144 = ptrtoint %nyx_string* %143 to i64
  call void @nyx_array_push({ i64, i8* }* %141, i64 %144)
  %145 = load %nyx_string*, %nyx_string** %name.ptr
  %146 = ptrtoint %nyx_string* %145 to i64
  call void @nyx_array_push({ i64, i8* }* %141, i64 %146)
  ret { i64, i8* }* %141
}

define %nyx_string* @ty_kind(
{ i64, i8* }* %t.param) {
  %t.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %t.param, { i64, i8* }** %t.ptr
  %147 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %148 = call i64 @nyx_array_length({ i64, i8* }* %147)
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %then3, label %else4
then3:
  %150 = getelementptr [10 x i8], [10 x i8]* @.str25, i32 0, i32 0
  %151 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str25.c, i8* %150)
  ret %nyx_string* %151
else4:
  br label %merge5
merge5:
  %152 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %153 = call i64 @nyx_array_get({ i64, i8* }* %152, i64 0)
  %154 = inttoptr i64 %153 to %nyx_string*
  %155 = alloca %nyx_string*
  store %nyx_string* %154, %nyx_string** %155
  %156 = load %nyx_string*, %nyx_string** %155
  ret %nyx_string* %156
}

define i1 @ty_is_unknown(
{ i64, i8* }* %t.param) {
  %t.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %t.param, { i64, i8* }** %t.ptr
  %157 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %158 = call %nyx_string* @ty_kind({ i64, i8* }* %157)
  %159 = getelementptr [10 x i8], [10 x i8]* @.str26, i32 0, i32 0
  %160 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str26.c, i8* %159)
  %161 = call i1 @nyx_string_equals(%nyx_string* %158, %nyx_string* %160)
  ret i1 %161
}

define internal i1 @is_sized_name(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %162 = load %nyx_string*, %nyx_string** %s.ptr
  %163 = getelementptr [3 x i8], [3 x i8]* @.str27, i32 0, i32 0
  %164 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str27.c, i8* %163)
  %165 = call i1 @nyx_string_equals(%nyx_string* %162, %nyx_string* %164)
  br i1 %165, label %then6, label %else7
then6:
  ret i1 1
else7:
  br label %merge8
merge8:
  %166 = load %nyx_string*, %nyx_string** %s.ptr
  %167 = getelementptr [4 x i8], [4 x i8]* @.str28, i32 0, i32 0
  %168 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str28.c, i8* %167)
  %169 = call i1 @nyx_string_equals(%nyx_string* %166, %nyx_string* %168)
  br i1 %169, label %then9, label %else10
then9:
  ret i1 1
else10:
  br label %merge11
merge11:
  %170 = load %nyx_string*, %nyx_string** %s.ptr
  %171 = getelementptr [4 x i8], [4 x i8]* @.str29, i32 0, i32 0
  %172 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str29.c, i8* %171)
  %173 = call i1 @nyx_string_equals(%nyx_string* %170, %nyx_string* %172)
  br i1 %173, label %then12, label %else13
then12:
  ret i1 1
else13:
  br label %merge14
merge14:
  %174 = load %nyx_string*, %nyx_string** %s.ptr
  %175 = getelementptr [4 x i8], [4 x i8]* @.str30, i32 0, i32 0
  %176 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str30.c, i8* %175)
  %177 = call i1 @nyx_string_equals(%nyx_string* %174, %nyx_string* %176)
  br i1 %177, label %then15, label %else16
then15:
  ret i1 1
else16:
  br label %merge17
merge17:
  %178 = load %nyx_string*, %nyx_string** %s.ptr
  %179 = getelementptr [3 x i8], [3 x i8]* @.str31, i32 0, i32 0
  %180 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str31.c, i8* %179)
  %181 = call i1 @nyx_string_equals(%nyx_string* %178, %nyx_string* %180)
  br i1 %181, label %then18, label %else19
then18:
  ret i1 1
else19:
  br label %merge20
merge20:
  %182 = load %nyx_string*, %nyx_string** %s.ptr
  %183 = getelementptr [4 x i8], [4 x i8]* @.str32, i32 0, i32 0
  %184 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str32.c, i8* %183)
  %185 = call i1 @nyx_string_equals(%nyx_string* %182, %nyx_string* %184)
  br i1 %185, label %then21, label %else22
then21:
  ret i1 1
else22:
  br label %merge23
merge23:
  %186 = load %nyx_string*, %nyx_string** %s.ptr
  %187 = getelementptr [4 x i8], [4 x i8]* @.str33, i32 0, i32 0
  %188 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str33.c, i8* %187)
  %189 = call i1 @nyx_string_equals(%nyx_string* %186, %nyx_string* %188)
  br i1 %189, label %then24, label %else25
then24:
  ret i1 1
else25:
  br label %merge26
merge26:
  %190 = load %nyx_string*, %nyx_string** %s.ptr
  %191 = getelementptr [4 x i8], [4 x i8]* @.str34, i32 0, i32 0
  %192 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str34.c, i8* %191)
  %193 = call i1 @nyx_string_equals(%nyx_string* %190, %nyx_string* %192)
  br i1 %193, label %then27, label %else28
then27:
  ret i1 1
else28:
  br label %merge29
merge29:
  %194 = load %nyx_string*, %nyx_string** %s.ptr
  %195 = getelementptr [4 x i8], [4 x i8]* @.str35, i32 0, i32 0
  %196 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str35.c, i8* %195)
  %197 = call i1 @nyx_string_equals(%nyx_string* %194, %nyx_string* %196)
  br i1 %197, label %then30, label %else31
then30:
  ret i1 1
else31:
  br label %merge32
merge32:
  %198 = load %nyx_string*, %nyx_string** %s.ptr
  %199 = getelementptr [6 x i8], [6 x i8]* @.str36, i32 0, i32 0
  %200 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str36.c, i8* %199)
  %201 = call i1 @nyx_string_equals(%nyx_string* %198, %nyx_string* %200)
  br i1 %201, label %then33, label %else34
then33:
  ret i1 1
else34:
  br label %merge35
merge35:
  ret i1 0
}

define i1 @ty_eq(
{ i64, i8* }* %a.param, { i64, i8* }* %b.param) {
  %a.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %a.param, { i64, i8* }** %a.ptr
  %b.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %b.param, { i64, i8* }** %b.ptr
  %202 = load { i64, i8* }*, { i64, i8* }** %a.ptr
  %203 = call %nyx_string* @ty_kind({ i64, i8* }* %202)
  %204 = alloca %nyx_string*
  store %nyx_string* %203, %nyx_string** %204
  %205 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %206 = call %nyx_string* @ty_kind({ i64, i8* }* %205)
  %207 = alloca %nyx_string*
  store %nyx_string* %206, %nyx_string** %207
  %208 = load %nyx_string*, %nyx_string** %204
  %209 = getelementptr [10 x i8], [10 x i8]* @.str37, i32 0, i32 0
  %210 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str37.c, i8* %209)
  %211 = call i1 @nyx_string_equals(%nyx_string* %208, %nyx_string* %210)
  br i1 %211, label %then36, label %else37
then36:
  ret i1 1
else37:
  br label %merge38
merge38:
  %212 = load %nyx_string*, %nyx_string** %207
  %213 = getelementptr [10 x i8], [10 x i8]* @.str38, i32 0, i32 0
  %214 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str38.c, i8* %213)
  %215 = call i1 @nyx_string_equals(%nyx_string* %212, %nyx_string* %214)
  br i1 %215, label %then39, label %else40
then39:
  ret i1 1
else40:
  br label %merge41
merge41:
  %216 = load %nyx_string*, %nyx_string** %204
  %217 = getelementptr [6 x i8], [6 x i8]* @.str39, i32 0, i32 0
  %218 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str39.c, i8* %217)
  %219 = call i1 @nyx_string_equals(%nyx_string* %216, %nyx_string* %218)
  br i1 %219, label %then42, label %else43
then42:
  ret i1 1
else43:
  br label %merge44
merge44:
  %220 = load %nyx_string*, %nyx_string** %207
  %221 = getelementptr [6 x i8], [6 x i8]* @.str40, i32 0, i32 0
  %222 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str40.c, i8* %221)
  %223 = call i1 @nyx_string_equals(%nyx_string* %220, %nyx_string* %222)
  br i1 %223, label %then45, label %else46
then45:
  ret i1 1
else46:
  br label %merge47
merge47:
  %224 = load %nyx_string*, %nyx_string** %204
  %225 = getelementptr [10 x i8], [10 x i8]* @.str41, i32 0, i32 0
  %226 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str41.c, i8* %225)
  %227 = call i1 @nyx_string_equals(%nyx_string* %224, %nyx_string* %226)
  br i1 %227, label %then48, label %else49
then48:
  ret i1 1
else49:
  br label %merge50
merge50:
  %228 = load %nyx_string*, %nyx_string** %207
  %229 = getelementptr [10 x i8], [10 x i8]* @.str42, i32 0, i32 0
  %230 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str42.c, i8* %229)
  %231 = call i1 @nyx_string_equals(%nyx_string* %228, %nyx_string* %230)
  br i1 %231, label %then51, label %else52
then51:
  ret i1 1
else52:
  br label %merge53
merge53:
  %232 = alloca i1
  store i1 false, i1* %232
  %233 = load %nyx_string*, %nyx_string** %204
  %234 = getelementptr [6 x i8], [6 x i8]* @.str43, i32 0, i32 0
  %235 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str43.c, i8* %234)
  %236 = call i1 @nyx_string_equals(%nyx_string* %233, %nyx_string* %235)
  br i1 %236, label %sc_and_rhs54, label %sc_and_end55
sc_and_rhs54:
  %237 = load %nyx_string*, %nyx_string** %207
  %238 = getelementptr [8 x i8], [8 x i8]* @.str44, i32 0, i32 0
  %239 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str44.c, i8* %238)
  %240 = call i1 @nyx_string_equals(%nyx_string* %237, %nyx_string* %239)
  store i1 %240, i1* %232
  br label %sc_and_end55
sc_and_end55:
  %241 = load i1, i1* %232
  br i1 %241, label %then56, label %else57
then56:
  %242 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %243 = call i64 @nyx_array_get({ i64, i8* }* %242, i64 1)
  %244 = inttoptr i64 %243 to %nyx_string*
  %245 = alloca %nyx_string*
  store %nyx_string* %244, %nyx_string** %245
  %246 = load %nyx_string*, %nyx_string** %245
  %247 = call i1 @is_sized_name(%nyx_string* %246)
  br i1 %247, label %then59, label %else60
then59:
  %248 = load %nyx_string*, %nyx_string** %245
  %249 = getelementptr [4 x i8], [4 x i8]* @.str45, i32 0, i32 0
  %250 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str45.c, i8* %249)
  %251 = call i1 @nyx_string_equals(%nyx_string* %248, %nyx_string* %250)
  %252 = xor i1 %251, true
  br i1 %252, label %then62, label %else63
then62:
  ret i1 1
else63:
  br label %merge64
merge64:
  br label %merge61
else60:
  br label %merge61
merge61:
  ret i1 0
else57:
  br label %merge58
merge58:
  %253 = alloca i1
  store i1 false, i1* %253
  %254 = load %nyx_string*, %nyx_string** %207
  %255 = getelementptr [6 x i8], [6 x i8]* @.str46, i32 0, i32 0
  %256 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str46.c, i8* %255)
  %257 = call i1 @nyx_string_equals(%nyx_string* %254, %nyx_string* %256)
  br i1 %257, label %sc_and_rhs65, label %sc_and_end66
sc_and_rhs65:
  %258 = load %nyx_string*, %nyx_string** %204
  %259 = getelementptr [8 x i8], [8 x i8]* @.str47, i32 0, i32 0
  %260 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str47.c, i8* %259)
  %261 = call i1 @nyx_string_equals(%nyx_string* %258, %nyx_string* %260)
  store i1 %261, i1* %253
  br label %sc_and_end66
sc_and_end66:
  %262 = load i1, i1* %253
  br i1 %262, label %then67, label %else68
then67:
  %263 = load { i64, i8* }*, { i64, i8* }** %a.ptr
  %264 = call i64 @nyx_array_get({ i64, i8* }* %263, i64 1)
  %265 = inttoptr i64 %264 to %nyx_string*
  %266 = alloca %nyx_string*
  store %nyx_string* %265, %nyx_string** %266
  %267 = load %nyx_string*, %nyx_string** %266
  %268 = call i1 @is_sized_name(%nyx_string* %267)
  br i1 %268, label %then70, label %else71
then70:
  %269 = load %nyx_string*, %nyx_string** %266
  %270 = getelementptr [4 x i8], [4 x i8]* @.str48, i32 0, i32 0
  %271 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str48.c, i8* %270)
  %272 = call i1 @nyx_string_equals(%nyx_string* %269, %nyx_string* %271)
  %273 = xor i1 %272, true
  br i1 %273, label %then73, label %else74
then73:
  ret i1 1
else74:
  br label %merge75
merge75:
  br label %merge72
else71:
  br label %merge72
merge72:
  ret i1 0
else68:
  br label %merge69
merge69:
  %274 = alloca i1
  store i1 false, i1* %274
  %275 = load %nyx_string*, %nyx_string** %204
  %276 = getelementptr [8 x i8], [8 x i8]* @.str49, i32 0, i32 0
  %277 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str49.c, i8* %276)
  %278 = call i1 @nyx_string_equals(%nyx_string* %275, %nyx_string* %277)
  br i1 %278, label %sc_and_rhs76, label %sc_and_end77
sc_and_rhs76:
  %279 = load %nyx_string*, %nyx_string** %207
  %280 = getelementptr [8 x i8], [8 x i8]* @.str50, i32 0, i32 0
  %281 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str50.c, i8* %280)
  %282 = call i1 @nyx_string_equals(%nyx_string* %279, %nyx_string* %281)
  store i1 %282, i1* %274
  br label %sc_and_end77
sc_and_end77:
  %283 = load i1, i1* %274
  br i1 %283, label %then78, label %else79
then78:
  %284 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %285 = call i64 @nyx_array_get({ i64, i8* }* %284, i64 1)
  %286 = inttoptr i64 %285 to %nyx_string*
  %287 = alloca %nyx_string*
  store %nyx_string* %286, %nyx_string** %287
  %288 = load %nyx_string*, %nyx_string** %287
  %289 = getelementptr [4 x i8], [4 x i8]* @.str51, i32 0, i32 0
  %290 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str51.c, i8* %289)
  %291 = call i1 @nyx_string_equals(%nyx_string* %288, %nyx_string* %290)
  br i1 %291, label %then81, label %else82
then81:
  ret i1 1
else82:
  br label %merge83
merge83:
  ret i1 0
else79:
  br label %merge80
merge80:
  %292 = alloca i1
  store i1 false, i1* %292
  %293 = load %nyx_string*, %nyx_string** %207
  %294 = getelementptr [8 x i8], [8 x i8]* @.str52, i32 0, i32 0
  %295 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str52.c, i8* %294)
  %296 = call i1 @nyx_string_equals(%nyx_string* %293, %nyx_string* %295)
  br i1 %296, label %sc_and_rhs84, label %sc_and_end85
sc_and_rhs84:
  %297 = load %nyx_string*, %nyx_string** %204
  %298 = getelementptr [8 x i8], [8 x i8]* @.str53, i32 0, i32 0
  %299 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str53.c, i8* %298)
  %300 = call i1 @nyx_string_equals(%nyx_string* %297, %nyx_string* %299)
  store i1 %300, i1* %292
  br label %sc_and_end85
sc_and_end85:
  %301 = load i1, i1* %292
  br i1 %301, label %then86, label %else87
then86:
  %302 = load { i64, i8* }*, { i64, i8* }** %a.ptr
  %303 = call i64 @nyx_array_get({ i64, i8* }* %302, i64 1)
  %304 = inttoptr i64 %303 to %nyx_string*
  %305 = alloca %nyx_string*
  store %nyx_string* %304, %nyx_string** %305
  %306 = load %nyx_string*, %nyx_string** %305
  %307 = getelementptr [4 x i8], [4 x i8]* @.str54, i32 0, i32 0
  %308 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str54.c, i8* %307)
  %309 = call i1 @nyx_string_equals(%nyx_string* %306, %nyx_string* %308)
  br i1 %309, label %then89, label %else90
then89:
  ret i1 1
else90:
  br label %merge91
merge91:
  ret i1 0
else87:
  br label %merge88
merge88:
  %310 = alloca i1
  store i1 false, i1* %310
  %311 = load %nyx_string*, %nyx_string** %204
  %312 = getelementptr [6 x i8], [6 x i8]* @.str55, i32 0, i32 0
  %313 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str55.c, i8* %312)
  %314 = call i1 @nyx_string_equals(%nyx_string* %311, %nyx_string* %313)
  br i1 %314, label %sc_and_rhs92, label %sc_and_end93
sc_and_rhs92:
  %315 = load %nyx_string*, %nyx_string** %207
  %316 = getelementptr [7 x i8], [7 x i8]* @.str56, i32 0, i32 0
  %317 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str56.c, i8* %316)
  %318 = call i1 @nyx_string_equals(%nyx_string* %315, %nyx_string* %317)
  store i1 %318, i1* %310
  br label %sc_and_end93
sc_and_end93:
  %319 = load i1, i1* %310
  br i1 %319, label %then94, label %else95
then94:
  ret i1 1
else95:
  br label %merge96
merge96:
  %320 = alloca i1
  store i1 false, i1* %320
  %321 = load %nyx_string*, %nyx_string** %204
  %322 = getelementptr [7 x i8], [7 x i8]* @.str57, i32 0, i32 0
  %323 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str57.c, i8* %322)
  %324 = call i1 @nyx_string_equals(%nyx_string* %321, %nyx_string* %323)
  br i1 %324, label %sc_and_rhs97, label %sc_and_end98
sc_and_rhs97:
  %325 = load %nyx_string*, %nyx_string** %207
  %326 = getelementptr [6 x i8], [6 x i8]* @.str58, i32 0, i32 0
  %327 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str58.c, i8* %326)
  %328 = call i1 @nyx_string_equals(%nyx_string* %325, %nyx_string* %327)
  store i1 %328, i1* %320
  br label %sc_and_end98
sc_and_end98:
  %329 = load i1, i1* %320
  br i1 %329, label %then99, label %else100
then99:
  ret i1 1
else100:
  br label %merge101
merge101:
  %330 = load %nyx_string*, %nyx_string** %204
  %331 = load %nyx_string*, %nyx_string** %207
  %332 = call i1 @nyx_string_equals(%nyx_string* %330, %nyx_string* %331)
  %333 = xor i1 %332, true
  br i1 %333, label %then102, label %else103
then102:
  ret i1 0
else103:
  br label %merge104
merge104:
  %334 = load %nyx_string*, %nyx_string** %204
  %335 = getelementptr [6 x i8], [6 x i8]* @.str59, i32 0, i32 0
  %336 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str59.c, i8* %335)
  %337 = call i1 @nyx_string_equals(%nyx_string* %334, %nyx_string* %336)
  br i1 %337, label %then105, label %else106
then105:
  ret i1 1
else106:
  br label %merge107
merge107:
  %338 = load %nyx_string*, %nyx_string** %204
  %339 = getelementptr [8 x i8], [8 x i8]* @.str60, i32 0, i32 0
  %340 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str60.c, i8* %339)
  %341 = call i1 @nyx_string_equals(%nyx_string* %338, %nyx_string* %340)
  br i1 %341, label %then108, label %else109
then108:
  ret i1 1
else109:
  br label %merge110
merge110:
  %342 = load %nyx_string*, %nyx_string** %204
  %343 = getelementptr [7 x i8], [7 x i8]* @.str61, i32 0, i32 0
  %344 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str61.c, i8* %343)
  %345 = call i1 @nyx_string_equals(%nyx_string* %342, %nyx_string* %344)
  br i1 %345, label %then111, label %else112
then111:
  ret i1 1
else112:
  br label %merge113
merge113:
  %346 = load %nyx_string*, %nyx_string** %204
  %347 = getelementptr [9 x i8], [9 x i8]* @.str62, i32 0, i32 0
  %348 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str62.c, i8* %347)
  %349 = call i1 @nyx_string_equals(%nyx_string* %346, %nyx_string* %348)
  br i1 %349, label %then114, label %else115
then114:
  ret i1 1
else115:
  br label %merge116
merge116:
  %350 = load %nyx_string*, %nyx_string** %204
  %351 = getelementptr [7 x i8], [7 x i8]* @.str63, i32 0, i32 0
  %352 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str63.c, i8* %351)
  %353 = call i1 @nyx_string_equals(%nyx_string* %350, %nyx_string* %352)
  br i1 %353, label %then117, label %else118
then117:
  ret i1 1
else118:
  br label %merge119
merge119:
  %354 = load %nyx_string*, %nyx_string** %204
  %355 = getelementptr [7 x i8], [7 x i8]* @.str64, i32 0, i32 0
  %356 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str64.c, i8* %355)
  %357 = call i1 @nyx_string_equals(%nyx_string* %354, %nyx_string* %356)
  br i1 %357, label %then120, label %else121
then120:
  ret i1 1
else121:
  br label %merge122
merge122:
  %358 = alloca i1
  store i1 true, i1* %358
  %359 = alloca i1
  store i1 true, i1* %359
  %360 = alloca i1
  store i1 true, i1* %360
  %361 = alloca i1
  store i1 true, i1* %361
  %362 = load %nyx_string*, %nyx_string** %204
  %363 = getelementptr [8 x i8], [8 x i8]* @.str65, i32 0, i32 0
  %364 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str65.c, i8* %363)
  %365 = call i1 @nyx_string_equals(%nyx_string* %362, %nyx_string* %364)
  br i1 %365, label %sc_or_end124, label %sc_or_rhs123
sc_or_rhs123:
  %366 = load %nyx_string*, %nyx_string** %204
  %367 = getelementptr [9 x i8], [9 x i8]* @.str66, i32 0, i32 0
  %368 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str66.c, i8* %367)
  %369 = call i1 @nyx_string_equals(%nyx_string* %366, %nyx_string* %368)
  store i1 %369, i1* %361
  br label %sc_or_end124
sc_or_end124:
  %370 = load i1, i1* %361
  br i1 %370, label %sc_or_end126, label %sc_or_rhs125
sc_or_rhs125:
  %371 = load %nyx_string*, %nyx_string** %204
  %372 = getelementptr [6 x i8], [6 x i8]* @.str67, i32 0, i32 0
  %373 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str67.c, i8* %372)
  %374 = call i1 @nyx_string_equals(%nyx_string* %371, %nyx_string* %373)
  store i1 %374, i1* %360
  br label %sc_or_end126
sc_or_end126:
  %375 = load i1, i1* %360
  br i1 %375, label %sc_or_end128, label %sc_or_rhs127
sc_or_rhs127:
  %376 = load %nyx_string*, %nyx_string** %204
  %377 = getelementptr [6 x i8], [6 x i8]* @.str68, i32 0, i32 0
  %378 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str68.c, i8* %377)
  %379 = call i1 @nyx_string_equals(%nyx_string* %376, %nyx_string* %378)
  store i1 %379, i1* %359
  br label %sc_or_end128
sc_or_end128:
  %380 = load i1, i1* %359
  br i1 %380, label %sc_or_end130, label %sc_or_rhs129
sc_or_rhs129:
  %381 = load %nyx_string*, %nyx_string** %204
  %382 = getelementptr [9 x i8], [9 x i8]* @.str69, i32 0, i32 0
  %383 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str69.c, i8* %382)
  %384 = call i1 @nyx_string_equals(%nyx_string* %381, %nyx_string* %383)
  store i1 %384, i1* %358
  br label %sc_or_end130
sc_or_end130:
  %385 = load i1, i1* %358
  br i1 %385, label %then131, label %else132
then131:
  %386 = load { i64, i8* }*, { i64, i8* }** %a.ptr
  %387 = call i64 @nyx_array_get({ i64, i8* }* %386, i64 1)
  %388 = inttoptr i64 %387 to { i64, i8* }*
  %389 = alloca { i64, i8* }*
  store { i64, i8* }* %388, { i64, i8* }** %389
  %390 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %391 = call i64 @nyx_array_get({ i64, i8* }* %390, i64 1)
  %392 = inttoptr i64 %391 to { i64, i8* }*
  %393 = alloca { i64, i8* }*
  store { i64, i8* }* %392, { i64, i8* }** %393
  %394 = load { i64, i8* }*, { i64, i8* }** %389
  %395 = load { i64, i8* }*, { i64, i8* }** %393
  %396 = call i1 @ty_eq({ i64, i8* }* %394, { i64, i8* }* %395)
  ret i1 %396
else132:
  br label %merge133
merge133:
  %397 = alloca i1
  store i1 true, i1* %397
  %398 = load %nyx_string*, %nyx_string** %204
  %399 = getelementptr [9 x i8], [9 x i8]* @.str70, i32 0, i32 0
  %400 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str70.c, i8* %399)
  %401 = call i1 @nyx_string_equals(%nyx_string* %398, %nyx_string* %400)
  br i1 %401, label %sc_or_end135, label %sc_or_rhs134
sc_or_rhs134:
  %402 = load %nyx_string*, %nyx_string** %204
  %403 = getelementptr [6 x i8], [6 x i8]* @.str71, i32 0, i32 0
  %404 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str71.c, i8* %403)
  %405 = call i1 @nyx_string_equals(%nyx_string* %402, %nyx_string* %404)
  store i1 %405, i1* %397
  br label %sc_or_end135
sc_or_end135:
  %406 = load i1, i1* %397
  br i1 %406, label %then136, label %else137
then136:
  %407 = load { i64, i8* }*, { i64, i8* }** %a.ptr
  %408 = call i64 @nyx_array_get({ i64, i8* }* %407, i64 1)
  %409 = inttoptr i64 %408 to { i64, i8* }*
  %410 = alloca { i64, i8* }*
  store { i64, i8* }* %409, { i64, i8* }** %410
  %411 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %412 = call i64 @nyx_array_get({ i64, i8* }* %411, i64 1)
  %413 = inttoptr i64 %412 to { i64, i8* }*
  %414 = alloca { i64, i8* }*
  store { i64, i8* }* %413, { i64, i8* }** %414
  %415 = load { i64, i8* }*, { i64, i8* }** %a.ptr
  %416 = call i64 @nyx_array_get({ i64, i8* }* %415, i64 2)
  %417 = inttoptr i64 %416 to { i64, i8* }*
  %418 = alloca { i64, i8* }*
  store { i64, i8* }* %417, { i64, i8* }** %418
  %419 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %420 = call i64 @nyx_array_get({ i64, i8* }* %419, i64 2)
  %421 = inttoptr i64 %420 to { i64, i8* }*
  %422 = alloca { i64, i8* }*
  store { i64, i8* }* %421, { i64, i8* }** %422
  %423 = load { i64, i8* }*, { i64, i8* }** %410
  %424 = load { i64, i8* }*, { i64, i8* }** %414
  %425 = call i1 @ty_eq({ i64, i8* }* %423, { i64, i8* }* %424)
  %426 = xor i1 %425, true
  br i1 %426, label %then139, label %else140
then139:
  ret i1 0
else140:
  br label %merge141
merge141:
  %427 = load { i64, i8* }*, { i64, i8* }** %418
  %428 = load { i64, i8* }*, { i64, i8* }** %422
  %429 = call i1 @ty_eq({ i64, i8* }* %427, { i64, i8* }* %428)
  ret i1 %429
else137:
  br label %merge138
merge138:
  %430 = load %nyx_string*, %nyx_string** %204
  %431 = getelementptr [5 x i8], [5 x i8]* @.str72, i32 0, i32 0
  %432 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str72.c, i8* %431)
  %433 = call i1 @nyx_string_equals(%nyx_string* %430, %nyx_string* %432)
  br i1 %433, label %then142, label %else143
then142:
  %434 = load { i64, i8* }*, { i64, i8* }** %a.ptr
  %435 = call i64 @nyx_array_get({ i64, i8* }* %434, i64 1)
  %436 = inttoptr i64 %435 to { i64, i8* }*
  %437 = alloca { i64, i8* }*
  store { i64, i8* }* %436, { i64, i8* }** %437
  %438 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %439 = call i64 @nyx_array_get({ i64, i8* }* %438, i64 1)
  %440 = inttoptr i64 %439 to { i64, i8* }*
  %441 = alloca { i64, i8* }*
  store { i64, i8* }* %440, { i64, i8* }** %441
  %442 = load { i64, i8* }*, { i64, i8* }** %437
  %443 = call i64 @nyx_array_length({ i64, i8* }* %442)
  %444 = load { i64, i8* }*, { i64, i8* }** %441
  %445 = call i64 @nyx_array_length({ i64, i8* }* %444)
  %446 = icmp ne i64 %443, %445
  br i1 %446, label %then145, label %else146
then145:
  ret i1 0
else146:
  br label %merge147
merge147:
  %447 = alloca i64
  store i64 0, i64* %447
  br label %while_cond148
while_cond148:
  %448 = load i64, i64* %447
  %449 = load { i64, i8* }*, { i64, i8* }** %437
  %450 = call i64 @nyx_array_length({ i64, i8* }* %449)
  %451 = icmp slt i64 %448, %450
  br i1 %451, label %while_body149, label %while_end150
while_body149:
  %452 = load { i64, i8* }*, { i64, i8* }** %437
  %453 = load i64, i64* %447
  %454 = call i64 @nyx_array_get({ i64, i8* }* %452, i64 %453)
  %455 = inttoptr i64 %454 to { i64, i8* }*
  %456 = alloca { i64, i8* }*
  store { i64, i8* }* %455, { i64, i8* }** %456
  %457 = load { i64, i8* }*, { i64, i8* }** %441
  %458 = load i64, i64* %447
  %459 = call i64 @nyx_array_get({ i64, i8* }* %457, i64 %458)
  %460 = inttoptr i64 %459 to { i64, i8* }*
  %461 = alloca { i64, i8* }*
  store { i64, i8* }* %460, { i64, i8* }** %461
  %462 = load { i64, i8* }*, { i64, i8* }** %456
  %463 = load { i64, i8* }*, { i64, i8* }** %461
  %464 = call i1 @ty_eq({ i64, i8* }* %462, { i64, i8* }* %463)
  %465 = xor i1 %464, true
  br i1 %465, label %then151, label %else152
then151:
  ret i1 0
else152:
  br label %merge153
merge153:
  %466 = load i64, i64* %447
  %467 = add i64 %466, 1
  store i64 %467, i64* %447
  br label %while_cond148
while_end150:
  %468 = load { i64, i8* }*, { i64, i8* }** %a.ptr
  %469 = call i64 @nyx_array_get({ i64, i8* }* %468, i64 2)
  %470 = inttoptr i64 %469 to { i64, i8* }*
  %471 = alloca { i64, i8* }*
  store { i64, i8* }* %470, { i64, i8* }** %471
  %472 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %473 = call i64 @nyx_array_get({ i64, i8* }* %472, i64 2)
  %474 = inttoptr i64 %473 to { i64, i8* }*
  %475 = alloca { i64, i8* }*
  store { i64, i8* }* %474, { i64, i8* }** %475
  %476 = load { i64, i8* }*, { i64, i8* }** %471
  %477 = load { i64, i8* }*, { i64, i8* }** %475
  %478 = call i1 @ty_eq({ i64, i8* }* %476, { i64, i8* }* %477)
  ret i1 %478
else143:
  br label %merge144
merge144:
  %479 = alloca i1
  store i1 true, i1* %479
  %480 = load %nyx_string*, %nyx_string** %204
  %481 = getelementptr [9 x i8], [9 x i8]* @.str73, i32 0, i32 0
  %482 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str73.c, i8* %481)
  %483 = call i1 @nyx_string_equals(%nyx_string* %480, %nyx_string* %482)
  br i1 %483, label %sc_or_end155, label %sc_or_rhs154
sc_or_rhs154:
  %484 = load %nyx_string*, %nyx_string** %204
  %485 = getelementptr [7 x i8], [7 x i8]* @.str74, i32 0, i32 0
  %486 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str74.c, i8* %485)
  %487 = call i1 @nyx_string_equals(%nyx_string* %484, %nyx_string* %486)
  store i1 %487, i1* %479
  br label %sc_or_end155
sc_or_end155:
  %488 = load i1, i1* %479
  br i1 %488, label %then156, label %else157
then156:
  %489 = load { i64, i8* }*, { i64, i8* }** %a.ptr
  %490 = call i64 @nyx_array_get({ i64, i8* }* %489, i64 1)
  %491 = inttoptr i64 %490 to %nyx_string*
  %492 = alloca %nyx_string*
  store %nyx_string* %491, %nyx_string** %492
  %493 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %494 = call i64 @nyx_array_get({ i64, i8* }* %493, i64 1)
  %495 = inttoptr i64 %494 to %nyx_string*
  %496 = alloca %nyx_string*
  store %nyx_string* %495, %nyx_string** %496
  %497 = load %nyx_string*, %nyx_string** %492
  %498 = load %nyx_string*, %nyx_string** %496
  %499 = call i1 @nyx_string_equals(%nyx_string* %497, %nyx_string* %498)
  %500 = xor i1 %499, true
  br i1 %500, label %then159, label %else160
then159:
  ret i1 0
else160:
  br label %merge161
merge161:
  %501 = load { i64, i8* }*, { i64, i8* }** %a.ptr
  %502 = call i64 @nyx_array_get({ i64, i8* }* %501, i64 2)
  %503 = inttoptr i64 %502 to { i64, i8* }*
  %504 = alloca { i64, i8* }*
  store { i64, i8* }* %503, { i64, i8* }** %504
  %505 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %506 = call i64 @nyx_array_get({ i64, i8* }* %505, i64 2)
  %507 = inttoptr i64 %506 to { i64, i8* }*
  %508 = alloca { i64, i8* }*
  store { i64, i8* }* %507, { i64, i8* }** %508
  %509 = load { i64, i8* }*, { i64, i8* }** %504
  %510 = call i64 @nyx_array_length({ i64, i8* }* %509)
  %511 = icmp eq i64 %510, 0
  br i1 %511, label %then162, label %else163
then162:
  ret i1 1
else163:
  br label %merge164
merge164:
  %512 = load { i64, i8* }*, { i64, i8* }** %508
  %513 = call i64 @nyx_array_length({ i64, i8* }* %512)
  %514 = icmp eq i64 %513, 0
  br i1 %514, label %then165, label %else166
then165:
  ret i1 1
else166:
  br label %merge167
merge167:
  %515 = load { i64, i8* }*, { i64, i8* }** %504
  %516 = call i64 @nyx_array_length({ i64, i8* }* %515)
  %517 = load { i64, i8* }*, { i64, i8* }** %508
  %518 = call i64 @nyx_array_length({ i64, i8* }* %517)
  %519 = icmp ne i64 %516, %518
  br i1 %519, label %then168, label %else169
then168:
  ret i1 0
else169:
  br label %merge170
merge170:
  %520 = alloca i64
  store i64 0, i64* %520
  br label %while_cond171
while_cond171:
  %521 = load i64, i64* %520
  %522 = load { i64, i8* }*, { i64, i8* }** %504
  %523 = call i64 @nyx_array_length({ i64, i8* }* %522)
  %524 = icmp slt i64 %521, %523
  br i1 %524, label %while_body172, label %while_end173
while_body172:
  %525 = load { i64, i8* }*, { i64, i8* }** %504
  %526 = load i64, i64* %520
  %527 = call i64 @nyx_array_get({ i64, i8* }* %525, i64 %526)
  %528 = inttoptr i64 %527 to { i64, i8* }*
  %529 = alloca { i64, i8* }*
  store { i64, i8* }* %528, { i64, i8* }** %529
  %530 = load { i64, i8* }*, { i64, i8* }** %508
  %531 = load i64, i64* %520
  %532 = call i64 @nyx_array_get({ i64, i8* }* %530, i64 %531)
  %533 = inttoptr i64 %532 to { i64, i8* }*
  %534 = alloca { i64, i8* }*
  store { i64, i8* }* %533, { i64, i8* }** %534
  %535 = load { i64, i8* }*, { i64, i8* }** %529
  %536 = load { i64, i8* }*, { i64, i8* }** %534
  %537 = call i1 @ty_eq({ i64, i8* }* %535, { i64, i8* }* %536)
  %538 = xor i1 %537, true
  br i1 %538, label %then174, label %else175
then174:
  ret i1 0
else175:
  br label %merge176
merge176:
  %539 = load i64, i64* %520
  %540 = add i64 %539, 1
  store i64 %540, i64* %520
  br label %while_cond171
while_end173:
  ret i1 1
else157:
  br label %merge158
merge158:
  %541 = alloca i1
  store i1 true, i1* %541
  %542 = alloca i1
  store i1 true, i1* %542
  %543 = load %nyx_string*, %nyx_string** %204
  %544 = getelementptr [6 x i8], [6 x i8]* @.str75, i32 0, i32 0
  %545 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str75.c, i8* %544)
  %546 = call i1 @nyx_string_equals(%nyx_string* %543, %nyx_string* %545)
  br i1 %546, label %sc_or_end178, label %sc_or_rhs177
sc_or_rhs177:
  %547 = load %nyx_string*, %nyx_string** %204
  %548 = getelementptr [10 x i8], [10 x i8]* @.str76, i32 0, i32 0
  %549 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str76.c, i8* %548)
  %550 = call i1 @nyx_string_equals(%nyx_string* %547, %nyx_string* %549)
  store i1 %550, i1* %542
  br label %sc_or_end178
sc_or_end178:
  %551 = load i1, i1* %542
  br i1 %551, label %sc_or_end180, label %sc_or_rhs179
sc_or_rhs179:
  %552 = load %nyx_string*, %nyx_string** %204
  %553 = getelementptr [8 x i8], [8 x i8]* @.str77, i32 0, i32 0
  %554 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str77.c, i8* %553)
  %555 = call i1 @nyx_string_equals(%nyx_string* %552, %nyx_string* %554)
  store i1 %555, i1* %541
  br label %sc_or_end180
sc_or_end180:
  %556 = load i1, i1* %541
  br i1 %556, label %then181, label %else182
then181:
  %557 = load { i64, i8* }*, { i64, i8* }** %a.ptr
  %558 = call i64 @nyx_array_get({ i64, i8* }* %557, i64 1)
  %559 = inttoptr i64 %558 to %nyx_string*
  %560 = alloca %nyx_string*
  store %nyx_string* %559, %nyx_string** %560
  %561 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %562 = call i64 @nyx_array_get({ i64, i8* }* %561, i64 1)
  %563 = inttoptr i64 %562 to %nyx_string*
  %564 = alloca %nyx_string*
  store %nyx_string* %563, %nyx_string** %564
  %565 = load %nyx_string*, %nyx_string** %560
  %566 = load %nyx_string*, %nyx_string** %564
  %567 = call i1 @nyx_string_equals(%nyx_string* %565, %nyx_string* %566)
  ret i1 %567
else182:
  br label %merge183
merge183:
  ret i1 0
}

define %nyx_string* @ty_to_str(
{ i64, i8* }* %t.param) {
  %t.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %t.param, { i64, i8* }** %t.ptr
  %568 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %569 = call %nyx_string* @ty_kind({ i64, i8* }* %568)
  %570 = alloca %nyx_string*
  store %nyx_string* %569, %nyx_string** %570
  %571 = load %nyx_string*, %nyx_string** %570
  %572 = getelementptr [6 x i8], [6 x i8]* @.str78, i32 0, i32 0
  %573 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str78.c, i8* %572)
  %574 = call i1 @nyx_string_equals(%nyx_string* %571, %nyx_string* %573)
  br i1 %574, label %then184, label %else185
then184:
  %575 = getelementptr [4 x i8], [4 x i8]* @.str79, i32 0, i32 0
  %576 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str79.c, i8* %575)
  ret %nyx_string* %576
else185:
  br label %merge186
merge186:
  %577 = load %nyx_string*, %nyx_string** %570
  %578 = getelementptr [8 x i8], [8 x i8]* @.str80, i32 0, i32 0
  %579 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str80.c, i8* %578)
  %580 = call i1 @nyx_string_equals(%nyx_string* %577, %nyx_string* %579)
  br i1 %580, label %then187, label %else188
then187:
  %581 = getelementptr [6 x i8], [6 x i8]* @.str81, i32 0, i32 0
  %582 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str81.c, i8* %581)
  ret %nyx_string* %582
else188:
  br label %merge189
merge189:
  %583 = load %nyx_string*, %nyx_string** %570
  %584 = getelementptr [7 x i8], [7 x i8]* @.str82, i32 0, i32 0
  %585 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str82.c, i8* %584)
  %586 = call i1 @nyx_string_equals(%nyx_string* %583, %nyx_string* %585)
  br i1 %586, label %then190, label %else191
then190:
  %587 = getelementptr [5 x i8], [5 x i8]* @.str83, i32 0, i32 0
  %588 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str83.c, i8* %587)
  ret %nyx_string* %588
else191:
  br label %merge192
merge192:
  %589 = load %nyx_string*, %nyx_string** %570
  %590 = getelementptr [9 x i8], [9 x i8]* @.str84, i32 0, i32 0
  %591 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str84.c, i8* %590)
  %592 = call i1 @nyx_string_equals(%nyx_string* %589, %nyx_string* %591)
  br i1 %592, label %then193, label %else194
then193:
  %593 = getelementptr [7 x i8], [7 x i8]* @.str85, i32 0, i32 0
  %594 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str85.c, i8* %593)
  ret %nyx_string* %594
else194:
  br label %merge195
merge195:
  %595 = load %nyx_string*, %nyx_string** %570
  %596 = getelementptr [7 x i8], [7 x i8]* @.str86, i32 0, i32 0
  %597 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str86.c, i8* %596)
  %598 = call i1 @nyx_string_equals(%nyx_string* %595, %nyx_string* %597)
  br i1 %598, label %then196, label %else197
then196:
  %599 = getelementptr [5 x i8], [5 x i8]* @.str87, i32 0, i32 0
  %600 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str87.c, i8* %599)
  ret %nyx_string* %600
else197:
  br label %merge198
merge198:
  %601 = load %nyx_string*, %nyx_string** %570
  %602 = getelementptr [7 x i8], [7 x i8]* @.str88, i32 0, i32 0
  %603 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str88.c, i8* %602)
  %604 = call i1 @nyx_string_equals(%nyx_string* %601, %nyx_string* %603)
  br i1 %604, label %then199, label %else200
then199:
  %605 = getelementptr [3 x i8], [3 x i8]* @.str89, i32 0, i32 0
  %606 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str89.c, i8* %605)
  ret %nyx_string* %606
else200:
  br label %merge201
merge201:
  %607 = load %nyx_string*, %nyx_string** %570
  %608 = getelementptr [10 x i8], [10 x i8]* @.str90, i32 0, i32 0
  %609 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str90.c, i8* %608)
  %610 = call i1 @nyx_string_equals(%nyx_string* %607, %nyx_string* %609)
  br i1 %610, label %then202, label %else203
then202:
  %611 = getelementptr [2 x i8], [2 x i8]* @.str91, i32 0, i32 0
  %612 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str91.c, i8* %611)
  ret %nyx_string* %612
else203:
  br label %merge204
merge204:
  %613 = load %nyx_string*, %nyx_string** %570
  %614 = getelementptr [8 x i8], [8 x i8]* @.str92, i32 0, i32 0
  %615 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str92.c, i8* %614)
  %616 = call i1 @nyx_string_equals(%nyx_string* %613, %nyx_string* %615)
  br i1 %616, label %then205, label %else206
then205:
  %617 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %618 = call i64 @nyx_array_get({ i64, i8* }* %617, i64 1)
  %619 = inttoptr i64 %618 to { i64, i8* }*
  %620 = alloca { i64, i8* }*
  store { i64, i8* }* %619, { i64, i8* }** %620
  %621 = getelementptr [7 x i8], [7 x i8]* @.str93, i32 0, i32 0
  %622 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str93.c, i8* %621)
  %623 = load { i64, i8* }*, { i64, i8* }** %620
  %624 = call %nyx_string* @ty_to_str({ i64, i8* }* %623)
  %625 = call %nyx_string* @nyx_string_concat(%nyx_string* %622, %nyx_string* %624)
  %626 = getelementptr [2 x i8], [2 x i8]* @.str94, i32 0, i32 0
  %627 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str94.c, i8* %626)
  %628 = call %nyx_string* @nyx_string_concat(%nyx_string* %625, %nyx_string* %627)
  ret %nyx_string* %628
else206:
  br label %merge207
merge207:
  %629 = load %nyx_string*, %nyx_string** %570
  %630 = getelementptr [9 x i8], [9 x i8]* @.str95, i32 0, i32 0
  %631 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str95.c, i8* %630)
  %632 = call i1 @nyx_string_equals(%nyx_string* %629, %nyx_string* %631)
  br i1 %632, label %then208, label %else209
then208:
  %633 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %634 = call i64 @nyx_array_get({ i64, i8* }* %633, i64 1)
  %635 = inttoptr i64 %634 to { i64, i8* }*
  %636 = alloca { i64, i8* }*
  store { i64, i8* }* %635, { i64, i8* }** %636
  %637 = getelementptr [8 x i8], [8 x i8]* @.str96, i32 0, i32 0
  %638 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str96.c, i8* %637)
  %639 = load { i64, i8* }*, { i64, i8* }** %636
  %640 = call %nyx_string* @ty_to_str({ i64, i8* }* %639)
  %641 = call %nyx_string* @nyx_string_concat(%nyx_string* %638, %nyx_string* %640)
  %642 = getelementptr [2 x i8], [2 x i8]* @.str97, i32 0, i32 0
  %643 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str97.c, i8* %642)
  %644 = call %nyx_string* @nyx_string_concat(%nyx_string* %641, %nyx_string* %643)
  ret %nyx_string* %644
else209:
  br label %merge210
merge210:
  %645 = load %nyx_string*, %nyx_string** %570
  %646 = getelementptr [9 x i8], [9 x i8]* @.str98, i32 0, i32 0
  %647 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str98.c, i8* %646)
  %648 = call i1 @nyx_string_equals(%nyx_string* %645, %nyx_string* %647)
  br i1 %648, label %then211, label %else212
then211:
  %649 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %650 = call i64 @nyx_array_get({ i64, i8* }* %649, i64 1)
  %651 = inttoptr i64 %650 to { i64, i8* }*
  %652 = alloca { i64, i8* }*
  store { i64, i8* }* %651, { i64, i8* }** %652
  %653 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %654 = call i64 @nyx_array_get({ i64, i8* }* %653, i64 2)
  %655 = inttoptr i64 %654 to { i64, i8* }*
  %656 = alloca { i64, i8* }*
  store { i64, i8* }* %655, { i64, i8* }** %656
  %657 = getelementptr [8 x i8], [8 x i8]* @.str99, i32 0, i32 0
  %658 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str99.c, i8* %657)
  %659 = load { i64, i8* }*, { i64, i8* }** %652
  %660 = call %nyx_string* @ty_to_str({ i64, i8* }* %659)
  %661 = call %nyx_string* @nyx_string_concat(%nyx_string* %658, %nyx_string* %660)
  %662 = getelementptr [2 x i8], [2 x i8]* @.str100, i32 0, i32 0
  %663 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str100.c, i8* %662)
  %664 = call %nyx_string* @nyx_string_concat(%nyx_string* %661, %nyx_string* %663)
  %665 = load { i64, i8* }*, { i64, i8* }** %656
  %666 = call %nyx_string* @ty_to_str({ i64, i8* }* %665)
  %667 = call %nyx_string* @nyx_string_concat(%nyx_string* %664, %nyx_string* %666)
  %668 = getelementptr [2 x i8], [2 x i8]* @.str101, i32 0, i32 0
  %669 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str101.c, i8* %668)
  %670 = call %nyx_string* @nyx_string_concat(%nyx_string* %667, %nyx_string* %669)
  ret %nyx_string* %670
else212:
  br label %merge213
merge213:
  %671 = load %nyx_string*, %nyx_string** %570
  %672 = getelementptr [6 x i8], [6 x i8]* @.str102, i32 0, i32 0
  %673 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str102.c, i8* %672)
  %674 = call i1 @nyx_string_equals(%nyx_string* %671, %nyx_string* %673)
  br i1 %674, label %then214, label %else215
then214:
  %675 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %676 = call i64 @nyx_array_get({ i64, i8* }* %675, i64 1)
  %677 = inttoptr i64 %676 to { i64, i8* }*
  %678 = alloca { i64, i8* }*
  store { i64, i8* }* %677, { i64, i8* }** %678
  %679 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %680 = call i64 @nyx_array_get({ i64, i8* }* %679, i64 2)
  %681 = inttoptr i64 %680 to { i64, i8* }*
  %682 = alloca { i64, i8* }*
  store { i64, i8* }* %681, { i64, i8* }** %682
  %683 = getelementptr [5 x i8], [5 x i8]* @.str103, i32 0, i32 0
  %684 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str103.c, i8* %683)
  %685 = load { i64, i8* }*, { i64, i8* }** %678
  %686 = call %nyx_string* @ty_to_str({ i64, i8* }* %685)
  %687 = call %nyx_string* @nyx_string_concat(%nyx_string* %684, %nyx_string* %686)
  %688 = getelementptr [2 x i8], [2 x i8]* @.str104, i32 0, i32 0
  %689 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str104.c, i8* %688)
  %690 = call %nyx_string* @nyx_string_concat(%nyx_string* %687, %nyx_string* %689)
  %691 = load { i64, i8* }*, { i64, i8* }** %682
  %692 = call %nyx_string* @ty_to_str({ i64, i8* }* %691)
  %693 = call %nyx_string* @nyx_string_concat(%nyx_string* %690, %nyx_string* %692)
  %694 = getelementptr [2 x i8], [2 x i8]* @.str105, i32 0, i32 0
  %695 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str105.c, i8* %694)
  %696 = call %nyx_string* @nyx_string_concat(%nyx_string* %693, %nyx_string* %695)
  ret %nyx_string* %696
else215:
  br label %merge216
merge216:
  %697 = load %nyx_string*, %nyx_string** %570
  %698 = getelementptr [6 x i8], [6 x i8]* @.str106, i32 0, i32 0
  %699 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str106.c, i8* %698)
  %700 = call i1 @nyx_string_equals(%nyx_string* %697, %nyx_string* %699)
  br i1 %700, label %then217, label %else218
then217:
  %701 = getelementptr [2 x i8], [2 x i8]* @.str107, i32 0, i32 0
  %702 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str107.c, i8* %701)
  %703 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %704 = call i64 @nyx_array_get({ i64, i8* }* %703, i64 1)
  %705 = inttoptr i64 %704 to { i64, i8* }*
  %706 = call %nyx_string* @ty_to_str({ i64, i8* }* %705)
  %707 = call %nyx_string* @nyx_string_concat(%nyx_string* %702, %nyx_string* %706)
  ret %nyx_string* %707
else218:
  br label %merge219
merge219:
  %708 = load %nyx_string*, %nyx_string** %570
  %709 = getelementptr [6 x i8], [6 x i8]* @.str108, i32 0, i32 0
  %710 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str108.c, i8* %709)
  %711 = call i1 @nyx_string_equals(%nyx_string* %708, %nyx_string* %710)
  br i1 %711, label %then220, label %else221
then220:
  %712 = getelementptr [2 x i8], [2 x i8]* @.str109, i32 0, i32 0
  %713 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str109.c, i8* %712)
  %714 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %715 = call i64 @nyx_array_get({ i64, i8* }* %714, i64 1)
  %716 = inttoptr i64 %715 to { i64, i8* }*
  %717 = call %nyx_string* @ty_to_str({ i64, i8* }* %716)
  %718 = call %nyx_string* @nyx_string_concat(%nyx_string* %713, %nyx_string* %717)
  ret %nyx_string* %718
else221:
  br label %merge222
merge222:
  %719 = load %nyx_string*, %nyx_string** %570
  %720 = getelementptr [9 x i8], [9 x i8]* @.str110, i32 0, i32 0
  %721 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str110.c, i8* %720)
  %722 = call i1 @nyx_string_equals(%nyx_string* %719, %nyx_string* %721)
  br i1 %722, label %then223, label %else224
then223:
  %723 = getelementptr [6 x i8], [6 x i8]* @.str111, i32 0, i32 0
  %724 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str111.c, i8* %723)
  %725 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %726 = call i64 @nyx_array_get({ i64, i8* }* %725, i64 1)
  %727 = inttoptr i64 %726 to { i64, i8* }*
  %728 = call %nyx_string* @ty_to_str({ i64, i8* }* %727)
  %729 = call %nyx_string* @nyx_string_concat(%nyx_string* %724, %nyx_string* %728)
  ret %nyx_string* %729
else224:
  br label %merge225
merge225:
  %730 = load %nyx_string*, %nyx_string** %570
  %731 = getelementptr [5 x i8], [5 x i8]* @.str112, i32 0, i32 0
  %732 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str112.c, i8* %731)
  %733 = call i1 @nyx_string_equals(%nyx_string* %730, %nyx_string* %732)
  br i1 %733, label %then226, label %else227
then226:
  %734 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %735 = call i64 @nyx_array_get({ i64, i8* }* %734, i64 1)
  %736 = inttoptr i64 %735 to { i64, i8* }*
  %737 = alloca { i64, i8* }*
  store { i64, i8* }* %736, { i64, i8* }** %737
  %738 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %739 = call i64 @nyx_array_get({ i64, i8* }* %738, i64 2)
  %740 = inttoptr i64 %739 to { i64, i8* }*
  %741 = alloca { i64, i8* }*
  store { i64, i8* }* %740, { i64, i8* }** %741
  %742 = getelementptr [4 x i8], [4 x i8]* @.str113, i32 0, i32 0
  %743 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str113.c, i8* %742)
  %744 = alloca %nyx_string*
  store %nyx_string* %743, %nyx_string** %744
  %745 = alloca i64
  store i64 0, i64* %745
  br label %while_cond229
while_cond229:
  %746 = load i64, i64* %745
  %747 = load { i64, i8* }*, { i64, i8* }** %737
  %748 = call i64 @nyx_array_length({ i64, i8* }* %747)
  %749 = icmp slt i64 %746, %748
  br i1 %749, label %while_body230, label %while_end231
while_body230:
  %750 = load i64, i64* %745
  %751 = icmp sgt i64 %750, 0
  br i1 %751, label %then232, label %else233
then232:
  %752 = load %nyx_string*, %nyx_string** %744
  %753 = getelementptr [2 x i8], [2 x i8]* @.str114, i32 0, i32 0
  %754 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str114.c, i8* %753)
  %755 = call %nyx_string* @nyx_string_concat(%nyx_string* %752, %nyx_string* %754)
  store %nyx_string* %755, %nyx_string** %744
  br label %merge234
else233:
  br label %merge234
merge234:
  %756 = load { i64, i8* }*, { i64, i8* }** %737
  %757 = load i64, i64* %745
  %758 = call i64 @nyx_array_get({ i64, i8* }* %756, i64 %757)
  %759 = inttoptr i64 %758 to { i64, i8* }*
  %760 = alloca { i64, i8* }*
  store { i64, i8* }* %759, { i64, i8* }** %760
  %761 = load %nyx_string*, %nyx_string** %744
  %762 = load { i64, i8* }*, { i64, i8* }** %760
  %763 = call %nyx_string* @ty_to_str({ i64, i8* }* %762)
  %764 = call %nyx_string* @nyx_string_concat(%nyx_string* %761, %nyx_string* %763)
  store %nyx_string* %764, %nyx_string** %744
  %765 = load i64, i64* %745
  %766 = add i64 %765, 1
  store i64 %766, i64* %745
  br label %while_cond229
while_end231:
  %767 = load %nyx_string*, %nyx_string** %744
  %768 = getelementptr [4 x i8], [4 x i8]* @.str115, i32 0, i32 0
  %769 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str115.c, i8* %768)
  %770 = call %nyx_string* @nyx_string_concat(%nyx_string* %767, %nyx_string* %769)
  %771 = load { i64, i8* }*, { i64, i8* }** %741
  %772 = call %nyx_string* @ty_to_str({ i64, i8* }* %771)
  %773 = call %nyx_string* @nyx_string_concat(%nyx_string* %770, %nyx_string* %772)
  store %nyx_string* %773, %nyx_string** %744
  %774 = load %nyx_string*, %nyx_string** %744
  ret %nyx_string* %774
else227:
  br label %merge228
merge228:
  %775 = load %nyx_string*, %nyx_string** %570
  %776 = getelementptr [6 x i8], [6 x i8]* @.str116, i32 0, i32 0
  %777 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str116.c, i8* %776)
  %778 = call i1 @nyx_string_equals(%nyx_string* %775, %nyx_string* %777)
  br i1 %778, label %then235, label %else236
then235:
  %779 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %780 = call i64 @nyx_array_get({ i64, i8* }* %779, i64 1)
  %781 = inttoptr i64 %780 to %nyx_string*
  %782 = alloca %nyx_string*
  store %nyx_string* %781, %nyx_string** %782
  %783 = getelementptr [5 x i8], [5 x i8]* @.str117, i32 0, i32 0
  %784 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str117.c, i8* %783)
  %785 = load %nyx_string*, %nyx_string** %782
  %786 = call %nyx_string* @nyx_string_concat(%nyx_string* %784, %nyx_string* %785)
  ret %nyx_string* %786
else236:
  br label %merge237
merge237:
  %787 = alloca i1
  store i1 true, i1* %787
  %788 = load %nyx_string*, %nyx_string** %570
  %789 = getelementptr [9 x i8], [9 x i8]* @.str118, i32 0, i32 0
  %790 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str118.c, i8* %789)
  %791 = call i1 @nyx_string_equals(%nyx_string* %788, %nyx_string* %790)
  br i1 %791, label %sc_or_end239, label %sc_or_rhs238
sc_or_rhs238:
  %792 = load %nyx_string*, %nyx_string** %570
  %793 = getelementptr [7 x i8], [7 x i8]* @.str119, i32 0, i32 0
  %794 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str119.c, i8* %793)
  %795 = call i1 @nyx_string_equals(%nyx_string* %792, %nyx_string* %794)
  store i1 %795, i1* %787
  br label %sc_or_end239
sc_or_end239:
  %796 = load i1, i1* %787
  br i1 %796, label %then240, label %else241
then240:
  %797 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %798 = call i64 @nyx_array_get({ i64, i8* }* %797, i64 1)
  %799 = inttoptr i64 %798 to %nyx_string*
  %800 = alloca %nyx_string*
  store %nyx_string* %799, %nyx_string** %800
  %801 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %802 = call i64 @nyx_array_get({ i64, i8* }* %801, i64 2)
  %803 = inttoptr i64 %802 to { i64, i8* }*
  %804 = alloca { i64, i8* }*
  store { i64, i8* }* %803, { i64, i8* }** %804
  %805 = load { i64, i8* }*, { i64, i8* }** %804
  %806 = call i64 @nyx_array_length({ i64, i8* }* %805)
  %807 = icmp eq i64 %806, 0
  br i1 %807, label %then243, label %else244
then243:
  %808 = load %nyx_string*, %nyx_string** %800
  ret %nyx_string* %808
else244:
  br label %merge245
merge245:
  %809 = load %nyx_string*, %nyx_string** %800
  %810 = getelementptr [2 x i8], [2 x i8]* @.str120, i32 0, i32 0
  %811 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str120.c, i8* %810)
  %812 = call %nyx_string* @nyx_string_concat(%nyx_string* %809, %nyx_string* %811)
  %813 = alloca %nyx_string*
  store %nyx_string* %812, %nyx_string** %813
  %814 = alloca i64
  store i64 0, i64* %814
  br label %while_cond246
while_cond246:
  %815 = load i64, i64* %814
  %816 = load { i64, i8* }*, { i64, i8* }** %804
  %817 = call i64 @nyx_array_length({ i64, i8* }* %816)
  %818 = icmp slt i64 %815, %817
  br i1 %818, label %while_body247, label %while_end248
while_body247:
  %819 = load i64, i64* %814
  %820 = icmp sgt i64 %819, 0
  br i1 %820, label %then249, label %else250
then249:
  %821 = load %nyx_string*, %nyx_string** %813
  %822 = getelementptr [2 x i8], [2 x i8]* @.str121, i32 0, i32 0
  %823 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str121.c, i8* %822)
  %824 = call %nyx_string* @nyx_string_concat(%nyx_string* %821, %nyx_string* %823)
  store %nyx_string* %824, %nyx_string** %813
  br label %merge251
else250:
  br label %merge251
merge251:
  %825 = load { i64, i8* }*, { i64, i8* }** %804
  %826 = load i64, i64* %814
  %827 = call i64 @nyx_array_get({ i64, i8* }* %825, i64 %826)
  %828 = inttoptr i64 %827 to { i64, i8* }*
  %829 = alloca { i64, i8* }*
  store { i64, i8* }* %828, { i64, i8* }** %829
  %830 = load %nyx_string*, %nyx_string** %813
  %831 = load { i64, i8* }*, { i64, i8* }** %829
  %832 = call %nyx_string* @ty_to_str({ i64, i8* }* %831)
  %833 = call %nyx_string* @nyx_string_concat(%nyx_string* %830, %nyx_string* %832)
  store %nyx_string* %833, %nyx_string** %813
  %834 = load i64, i64* %814
  %835 = add i64 %834, 1
  store i64 %835, i64* %814
  br label %while_cond246
while_end248:
  %836 = load %nyx_string*, %nyx_string** %813
  %837 = getelementptr [2 x i8], [2 x i8]* @.str122, i32 0, i32 0
  %838 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str122.c, i8* %837)
  %839 = call %nyx_string* @nyx_string_concat(%nyx_string* %836, %nyx_string* %838)
  store %nyx_string* %839, %nyx_string** %813
  %840 = load %nyx_string*, %nyx_string** %813
  ret %nyx_string* %840
else241:
  br label %merge242
merge242:
  %841 = load %nyx_string*, %nyx_string** %570
  %842 = getelementptr [10 x i8], [10 x i8]* @.str123, i32 0, i32 0
  %843 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str123.c, i8* %842)
  %844 = call i1 @nyx_string_equals(%nyx_string* %841, %nyx_string* %843)
  br i1 %844, label %then252, label %else253
then252:
  %845 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %846 = call i64 @nyx_array_get({ i64, i8* }* %845, i64 1)
  %847 = inttoptr i64 %846 to %nyx_string*
  %848 = alloca %nyx_string*
  store %nyx_string* %847, %nyx_string** %848
  %849 = load %nyx_string*, %nyx_string** %848
  ret %nyx_string* %849
else253:
  br label %merge254
merge254:
  %850 = load %nyx_string*, %nyx_string** %570
  %851 = getelementptr [8 x i8], [8 x i8]* @.str124, i32 0, i32 0
  %852 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str124.c, i8* %851)
  %853 = call i1 @nyx_string_equals(%nyx_string* %850, %nyx_string* %852)
  br i1 %853, label %then255, label %else256
then255:
  %854 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %855 = call i64 @nyx_array_get({ i64, i8* }* %854, i64 1)
  %856 = inttoptr i64 %855 to %nyx_string*
  %857 = alloca %nyx_string*
  store %nyx_string* %856, %nyx_string** %857
  %858 = load %nyx_string*, %nyx_string** %857
  ret %nyx_string* %858
else256:
  br label %merge257
merge257:
  %859 = getelementptr [2 x i8], [2 x i8]* @.str125, i32 0, i32 0
  %860 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str125.c, i8* %859)
  ret %nyx_string* %860
}

define internal { i64, i8* }* @split_at_depth0(
%nyx_string* %s.param, i64 %sep_char.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %sep_char.ptr = alloca i64
  store i64 %sep_char.param, i64* %sep_char.ptr
  %861 = call { i64, i8* }* @nyx_array_new_ptr()
  %862 = alloca { i64, i8* }*
  store { i64, i8* }* %861, { i64, i8* }** %862
  %863 = alloca i64
  store i64 0, i64* %863
  %864 = alloca i64
  store i64 0, i64* %864
  %865 = load %nyx_string*, %nyx_string** %s.ptr
  %866 = call i64 @nyx_string_byte_length(%nyx_string* %865)
  %867 = alloca i64
  store i64 %866, i64* %867
  %868 = alloca i64
  store i64 0, i64* %868
  br label %while_cond258
while_cond258:
  %869 = load i64, i64* %868
  %870 = load i64, i64* %867
  %871 = icmp slt i64 %869, %870
  br i1 %871, label %while_body259, label %while_end260
while_body259:
  %872 = load %nyx_string*, %nyx_string** %s.ptr
  %873 = load i64, i64* %868
  %874 = call i8 @nyx_string_char_at(%nyx_string* %872, i64 %873)
  %875 = zext i8 %874 to i64
  %876 = alloca i64
  store i64 %875, i64* %876
  %877 = load i64, i64* %876
  %878 = icmp eq i64 %877, 60
  br i1 %878, label %then261, label %else262
then261:
  %879 = load i64, i64* %863
  %880 = add i64 %879, 1
  store i64 %880, i64* %863
  br label %merge263
else262:
  %881 = load i64, i64* %876
  %882 = icmp eq i64 %881, 62
  br i1 %882, label %then264, label %else265
then264:
  %883 = load i64, i64* %863
  %884 = sub i64 %883, 1
  store i64 %884, i64* %863
  br label %merge266
else265:
  %885 = load i64, i64* %876
  %886 = icmp eq i64 %885, 40
  br i1 %886, label %then267, label %else268
then267:
  %887 = load i64, i64* %863
  %888 = add i64 %887, 1
  store i64 %888, i64* %863
  br label %merge269
else268:
  %889 = load i64, i64* %876
  %890 = icmp eq i64 %889, 41
  br i1 %890, label %then270, label %else271
then270:
  %891 = load i64, i64* %863
  %892 = sub i64 %891, 1
  store i64 %892, i64* %863
  br label %merge272
else271:
  %893 = load i64, i64* %876
  %894 = load i64, i64* %sep_char.ptr
  %895 = icmp eq i64 %893, %894
  br i1 %895, label %then273, label %else274
then273:
  %896 = load i64, i64* %863
  %897 = icmp eq i64 %896, 0
  br i1 %897, label %then276, label %else277
then276:
  %898 = load %nyx_string*, %nyx_string** %s.ptr
  %899 = load i64, i64* %864
  %900 = load i64, i64* %868
  %901 = call %nyx_string* @nyx_string_substring(%nyx_string* %898, i64 %899, i64 %900)
  %902 = alloca %nyx_string*
  store %nyx_string* %901, %nyx_string** %902
  %903 = load { i64, i8* }*, { i64, i8* }** %862
  %904 = load %nyx_string*, %nyx_string** %902
  %905 = call %nyx_string* @nyx_string_trim(%nyx_string* %904)
  %906 = ptrtoint %nyx_string* %905 to i64
  call void @nyx_array_push({ i64, i8* }* %903, i64 %906)
  %907 = load i64, i64* %868
  %908 = add i64 %907, 1
  store i64 %908, i64* %864
  br label %merge278
else277:
  br label %merge278
merge278:
  br label %merge275
else274:
  br label %merge275
merge275:
  br label %merge272
merge272:
  br label %merge269
merge269:
  br label %merge266
merge266:
  br label %merge263
merge263:
  %909 = load i64, i64* %868
  %910 = add i64 %909, 1
  store i64 %910, i64* %868
  br label %while_cond258
while_end260:
  %911 = load i64, i64* %864
  %912 = load i64, i64* %867
  %913 = icmp sle i64 %911, %912
  br i1 %913, label %then279, label %else280
then279:
  %914 = load %nyx_string*, %nyx_string** %s.ptr
  %915 = load i64, i64* %864
  %916 = load i64, i64* %867
  %917 = call %nyx_string* @nyx_string_substring(%nyx_string* %914, i64 %915, i64 %916)
  %918 = alloca %nyx_string*
  store %nyx_string* %917, %nyx_string** %918
  %919 = load { i64, i8* }*, { i64, i8* }** %862
  %920 = load %nyx_string*, %nyx_string** %918
  %921 = call %nyx_string* @nyx_string_trim(%nyx_string* %920)
  %922 = ptrtoint %nyx_string* %921 to i64
  call void @nyx_array_push({ i64, i8* }* %919, i64 %922)
  br label %merge281
else280:
  br label %merge281
merge281:
  %923 = load { i64, i8* }*, { i64, i8* }** %862
  ret { i64, i8* }* %923
}

define internal %nyx_string* @ty_extract_leading_lifetime(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %924 = load %nyx_string*, %nyx_string** %s.ptr
  %925 = call i64 @nyx_string_byte_length(%nyx_string* %924)
  %926 = icmp eq i64 %925, 0
  br i1 %926, label %then282, label %else283
then282:
  %927 = getelementptr [1 x i8], [1 x i8]* @.str126, i32 0, i32 0
  %928 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str126.c, i8* %927)
  ret %nyx_string* %928
else283:
  br label %merge284
merge284:
  %929 = load %nyx_string*, %nyx_string** %s.ptr
  %930 = call %nyx_string* @nyx_string_substring(%nyx_string* %929, i64 0, i64 1)
  %931 = getelementptr [2 x i8], [2 x i8]* @.str127, i32 0, i32 0
  %932 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str127.c, i8* %931)
  %933 = call i1 @nyx_string_equals(%nyx_string* %930, %nyx_string* %932)
  %934 = xor i1 %933, true
  br i1 %934, label %then285, label %else286
then285:
  %935 = getelementptr [1 x i8], [1 x i8]* @.str128, i32 0, i32 0
  %936 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str128.c, i8* %935)
  ret %nyx_string* %936
else286:
  br label %merge287
merge287:
  %937 = alloca i64
  store i64 1, i64* %937
  %938 = alloca i1
  store i1 1, i1* %938
  %939 = getelementptr [2 x i8], [2 x i8]* @.str129, i32 0, i32 0
  %940 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str129.c, i8* %939)
  %941 = alloca %nyx_string*
  store %nyx_string* %940, %nyx_string** %941
  br label %while_cond288
while_cond288:
  %942 = load i1, i1* %938
  br i1 %942, label %while_body289, label %while_end290
while_body289:
  %943 = load i64, i64* %937
  %944 = load %nyx_string*, %nyx_string** %s.ptr
  %945 = call i64 @nyx_string_byte_length(%nyx_string* %944)
  %946 = icmp sge i64 %943, %945
  br i1 %946, label %then291, label %else292
then291:
  store i1 0, i1* %938
  br label %merge293
else292:
  %947 = load %nyx_string*, %nyx_string** %s.ptr
  %948 = load i64, i64* %937
  %949 = load i64, i64* %937
  %950 = add i64 %949, 1
  %951 = call %nyx_string* @nyx_string_substring(%nyx_string* %947, i64 %948, i64 %950)
  %952 = alloca %nyx_string*
  store %nyx_string* %951, %nyx_string** %952
  %953 = load %nyx_string*, %nyx_string** %952
  %954 = load %nyx_string*, %nyx_string** %941
  %955 = call i1 @nyx_string_equals(%nyx_string* %953, %nyx_string* %954)
  br i1 %955, label %then294, label %else295
then294:
  store i1 0, i1* %938
  br label %merge296
else295:
  %956 = load i64, i64* %937
  %957 = add i64 %956, 1
  store i64 %957, i64* %937
  br label %merge296
merge296:
  br label %merge293
merge293:
  br label %while_cond288
while_end290:
  %958 = load %nyx_string*, %nyx_string** %s.ptr
  %959 = load i64, i64* %937
  %960 = call %nyx_string* @nyx_string_substring(%nyx_string* %958, i64 1, i64 %959)
  ret %nyx_string* %960
}

define internal %nyx_string* @ty_strip_leading_lifetime(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %961 = load %nyx_string*, %nyx_string** %s.ptr
  %962 = call i64 @nyx_string_byte_length(%nyx_string* %961)
  %963 = icmp eq i64 %962, 0
  br i1 %963, label %then297, label %else298
then297:
  %964 = load %nyx_string*, %nyx_string** %s.ptr
  ret %nyx_string* %964
else298:
  br label %merge299
merge299:
  %965 = load %nyx_string*, %nyx_string** %s.ptr
  %966 = call %nyx_string* @nyx_string_substring(%nyx_string* %965, i64 0, i64 1)
  %967 = getelementptr [2 x i8], [2 x i8]* @.str130, i32 0, i32 0
  %968 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str130.c, i8* %967)
  %969 = call i1 @nyx_string_equals(%nyx_string* %966, %nyx_string* %968)
  %970 = xor i1 %969, true
  br i1 %970, label %then300, label %else301
then300:
  %971 = load %nyx_string*, %nyx_string** %s.ptr
  ret %nyx_string* %971
else301:
  br label %merge302
merge302:
  %972 = alloca i64
  store i64 1, i64* %972
  %973 = alloca i1
  store i1 1, i1* %973
  %974 = getelementptr [2 x i8], [2 x i8]* @.str131, i32 0, i32 0
  %975 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str131.c, i8* %974)
  %976 = alloca %nyx_string*
  store %nyx_string* %975, %nyx_string** %976
  br label %while_cond303
while_cond303:
  %977 = load i1, i1* %973
  br i1 %977, label %while_body304, label %while_end305
while_body304:
  %978 = load i64, i64* %972
  %979 = load %nyx_string*, %nyx_string** %s.ptr
  %980 = call i64 @nyx_string_byte_length(%nyx_string* %979)
  %981 = icmp sge i64 %978, %980
  br i1 %981, label %then306, label %else307
then306:
  store i1 0, i1* %973
  br label %merge308
else307:
  %982 = load %nyx_string*, %nyx_string** %s.ptr
  %983 = load i64, i64* %972
  %984 = load i64, i64* %972
  %985 = add i64 %984, 1
  %986 = call %nyx_string* @nyx_string_substring(%nyx_string* %982, i64 %983, i64 %985)
  %987 = alloca %nyx_string*
  store %nyx_string* %986, %nyx_string** %987
  %988 = load %nyx_string*, %nyx_string** %987
  %989 = load %nyx_string*, %nyx_string** %976
  %990 = call i1 @nyx_string_equals(%nyx_string* %988, %nyx_string* %989)
  br i1 %990, label %then309, label %else310
then309:
  store i1 0, i1* %973
  br label %merge311
else310:
  %991 = load i64, i64* %972
  %992 = add i64 %991, 1
  store i64 %992, i64* %972
  br label %merge311
merge311:
  br label %merge308
merge308:
  br label %while_cond303
while_end305:
  %993 = load i64, i64* %972
  %994 = load %nyx_string*, %nyx_string** %s.ptr
  %995 = call i64 @nyx_string_byte_length(%nyx_string* %994)
  %996 = icmp slt i64 %993, %995
  br i1 %996, label %then312, label %else313
then312:
  %997 = load %nyx_string*, %nyx_string** %s.ptr
  %998 = load i64, i64* %972
  %999 = load i64, i64* %972
  %1000 = add i64 %999, 1
  %1001 = call %nyx_string* @nyx_string_substring(%nyx_string* %997, i64 %998, i64 %1000)
  %1002 = getelementptr [2 x i8], [2 x i8]* @.str132, i32 0, i32 0
  %1003 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str132.c, i8* %1002)
  %1004 = call i1 @nyx_string_equals(%nyx_string* %1001, %nyx_string* %1003)
  br i1 %1004, label %then315, label %else316
then315:
  %1005 = load i64, i64* %972
  %1006 = add i64 %1005, 1
  store i64 %1006, i64* %972
  br label %merge317
else316:
  br label %merge317
merge317:
  br label %merge314
else313:
  br label %merge314
merge314:
  %1007 = load %nyx_string*, %nyx_string** %s.ptr
  %1008 = load i64, i64* %972
  %1009 = load %nyx_string*, %nyx_string** %s.ptr
  %1010 = call i64 @nyx_string_byte_length(%nyx_string* %1009)
  %1011 = call %nyx_string* @nyx_string_substring(%nyx_string* %1007, i64 %1008, i64 %1010)
  ret %nyx_string* %1011
}

define { i64, i8* }* @ty_parse(
%nyx_string* %ann.param) {
  %ann.ptr = alloca %nyx_string*
  store %nyx_string* %ann.param, %nyx_string** %ann.ptr
  %1012 = load %nyx_string*, %nyx_string** %ann.ptr
  %1013 = call %nyx_string* @nyx_string_trim(%nyx_string* %1012)
  %1014 = alloca %nyx_string*
  store %nyx_string* %1013, %nyx_string** %1014
  %1015 = load %nyx_string*, %nyx_string** %1014
  %1016 = getelementptr [1 x i8], [1 x i8]* @.str133, i32 0, i32 0
  %1017 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str133.c, i8* %1016)
  %1018 = call i1 @nyx_string_equals(%nyx_string* %1015, %nyx_string* %1017)
  br i1 %1018, label %then318, label %else319
then318:
  %1019 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1019
else319:
  br label %merge320
merge320:
  %1020 = load %nyx_string*, %nyx_string** %1014
  %1021 = getelementptr [4 x i8], [4 x i8]* @.str134, i32 0, i32 0
  %1022 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str134.c, i8* %1021)
  %1023 = call i1 @nyx_string_equals(%nyx_string* %1020, %nyx_string* %1022)
  br i1 %1023, label %then321, label %else322
then321:
  %1024 = call { i64, i8* }* @ty_int()
  ret { i64, i8* }* %1024
else322:
  br label %merge323
merge323:
  %1025 = load %nyx_string*, %nyx_string** %1014
  %1026 = getelementptr [6 x i8], [6 x i8]* @.str135, i32 0, i32 0
  %1027 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str135.c, i8* %1026)
  %1028 = call i1 @nyx_string_equals(%nyx_string* %1025, %nyx_string* %1027)
  br i1 %1028, label %then324, label %else325
then324:
  %1029 = call { i64, i8* }* @ty_float()
  ret { i64, i8* }* %1029
else325:
  br label %merge326
merge326:
  %1030 = load %nyx_string*, %nyx_string** %1014
  %1031 = getelementptr [5 x i8], [5 x i8]* @.str136, i32 0, i32 0
  %1032 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str136.c, i8* %1031)
  %1033 = call i1 @nyx_string_equals(%nyx_string* %1030, %nyx_string* %1032)
  br i1 %1033, label %then327, label %else328
then327:
  %1034 = call { i64, i8* }* @ty_bool()
  ret { i64, i8* }* %1034
else328:
  br label %merge329
merge329:
  %1035 = load %nyx_string*, %nyx_string** %1014
  %1036 = getelementptr [7 x i8], [7 x i8]* @.str137, i32 0, i32 0
  %1037 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str137.c, i8* %1036)
  %1038 = call i1 @nyx_string_equals(%nyx_string* %1035, %nyx_string* %1037)
  br i1 %1038, label %then330, label %else331
then330:
  %1039 = call { i64, i8* }* @ty_string()
  ret { i64, i8* }* %1039
else331:
  br label %merge332
merge332:
  %1040 = load %nyx_string*, %nyx_string** %1014
  %1041 = getelementptr [5 x i8], [5 x i8]* @.str138, i32 0, i32 0
  %1042 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str138.c, i8* %1041)
  %1043 = call i1 @nyx_string_equals(%nyx_string* %1040, %nyx_string* %1042)
  br i1 %1043, label %then333, label %else334
then333:
  %1044 = call { i64, i8* }* @ty_char()
  ret { i64, i8* }* %1044
else334:
  br label %merge335
merge335:
  %1045 = load %nyx_string*, %nyx_string** %1014
  %1046 = getelementptr [5 x i8], [5 x i8]* @.str139, i32 0, i32 0
  %1047 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str139.c, i8* %1046)
  %1048 = call i1 @nyx_string_equals(%nyx_string* %1045, %nyx_string* %1047)
  br i1 %1048, label %then336, label %else337
then336:
  %1049 = call { i64, i8* }* @ty_unit()
  ret { i64, i8* }* %1049
else337:
  br label %merge338
merge338:
  %1050 = load %nyx_string*, %nyx_string** %1014
  %1051 = getelementptr [3 x i8], [3 x i8]* @.str140, i32 0, i32 0
  %1052 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str140.c, i8* %1051)
  %1053 = call i1 @nyx_string_equals(%nyx_string* %1050, %nyx_string* %1052)
  br i1 %1053, label %then339, label %else340
then339:
  %1054 = call { i64, i8* }* @ty_unit()
  ret { i64, i8* }* %1054
else340:
  br label %merge341
merge341:
  %1055 = load %nyx_string*, %nyx_string** %1014
  %1056 = getelementptr [5 x i8], [5 x i8]* @.str141, i32 0, i32 0
  %1057 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str141.c, i8* %1056)
  %1058 = call i1 @nyx_string_equals(%nyx_string* %1055, %nyx_string* %1057)
  br i1 %1058, label %then342, label %else343
then342:
  %1059 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1059
else343:
  br label %merge344
merge344:
  %1060 = load %nyx_string*, %nyx_string** %1014
  %1061 = call i1 @is_sized_name(%nyx_string* %1060)
  br i1 %1061, label %then345, label %else346
then345:
  %1062 = load %nyx_string*, %nyx_string** %1014
  %1063 = call { i64, i8* }* @ty_sized(%nyx_string* %1062)
  ret { i64, i8* }* %1063
else346:
  br label %merge347
merge347:
  %1064 = load %nyx_string*, %nyx_string** %1014
  %1065 = getelementptr [2 x i8], [2 x i8]* @.str142, i32 0, i32 0
  %1066 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str142.c, i8* %1065)
  %1067 = call i1 @nyx_string_starts_with(%nyx_string* %1064, %nyx_string* %1066)
  br i1 %1067, label %then348, label %else349
then348:
  %1068 = load %nyx_string*, %nyx_string** %1014
  %1069 = load %nyx_string*, %nyx_string** %1014
  %1070 = call i64 @nyx_string_byte_length(%nyx_string* %1069)
  %1071 = call %nyx_string* @nyx_string_substring(%nyx_string* %1068, i64 1, i64 %1070)
  %1072 = alloca %nyx_string*
  store %nyx_string* %1071, %nyx_string** %1072
  %1073 = load %nyx_string*, %nyx_string** %1072
  %1074 = call { i64, i8* }* @ty_parse(%nyx_string* %1073)
  %1075 = alloca { i64, i8* }*
  store { i64, i8* }* %1074, { i64, i8* }** %1075
  %1076 = load { i64, i8* }*, { i64, i8* }** %1075
  %1077 = call { i64, i8* }* @ty_ptr({ i64, i8* }* %1076)
  ret { i64, i8* }* %1077
else349:
  br label %merge350
merge350:
  %1078 = load %nyx_string*, %nyx_string** %1014
  %1079 = getelementptr [6 x i8], [6 x i8]* @.str143, i32 0, i32 0
  %1080 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str143.c, i8* %1079)
  %1081 = call i1 @nyx_string_starts_with(%nyx_string* %1078, %nyx_string* %1080)
  br i1 %1081, label %then351, label %else352
then351:
  %1082 = load %nyx_string*, %nyx_string** %1014
  %1083 = load %nyx_string*, %nyx_string** %1014
  %1084 = call i64 @nyx_string_byte_length(%nyx_string* %1083)
  %1085 = call %nyx_string* @nyx_string_substring(%nyx_string* %1082, i64 5, i64 %1084)
  %1086 = alloca %nyx_string*
  store %nyx_string* %1085, %nyx_string** %1086
  %1087 = load %nyx_string*, %nyx_string** %1086
  %1088 = call %nyx_string* @ty_extract_leading_lifetime(%nyx_string* %1087)
  %1089 = alloca %nyx_string*
  store %nyx_string* %1088, %nyx_string** %1089
  %1090 = load %nyx_string*, %nyx_string** %1089
  %1091 = call i64 @nyx_string_byte_length(%nyx_string* %1090)
  %1092 = icmp sgt i64 %1091, 0
  br i1 %1092, label %then354, label %else355
then354:
  %1093 = load %nyx_string*, %nyx_string** %1086
  %1094 = call %nyx_string* @ty_strip_leading_lifetime(%nyx_string* %1093)
  store %nyx_string* %1094, %nyx_string** %1086
  br label %merge356
else355:
  br label %merge356
merge356:
  %1095 = load %nyx_string*, %nyx_string** %1086
  %1096 = call { i64, i8* }* @ty_parse(%nyx_string* %1095)
  %1097 = alloca { i64, i8* }*
  store { i64, i8* }* %1096, { i64, i8* }** %1097
  %1098 = load { i64, i8* }*, { i64, i8* }** %1097
  %1099 = load %nyx_string*, %nyx_string** %1089
  %1100 = call { i64, i8* }* @ty_ref_mut_r({ i64, i8* }* %1098, %nyx_string* %1099)
  ret { i64, i8* }* %1100
else352:
  br label %merge353
merge353:
  %1101 = load %nyx_string*, %nyx_string** %1014
  %1102 = getelementptr [2 x i8], [2 x i8]* @.str144, i32 0, i32 0
  %1103 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str144.c, i8* %1102)
  %1104 = call i1 @nyx_string_starts_with(%nyx_string* %1101, %nyx_string* %1103)
  br i1 %1104, label %then357, label %else358
then357:
  %1105 = load %nyx_string*, %nyx_string** %1014
  %1106 = load %nyx_string*, %nyx_string** %1014
  %1107 = call i64 @nyx_string_byte_length(%nyx_string* %1106)
  %1108 = call %nyx_string* @nyx_string_substring(%nyx_string* %1105, i64 1, i64 %1107)
  %1109 = alloca %nyx_string*
  store %nyx_string* %1108, %nyx_string** %1109
  %1110 = load %nyx_string*, %nyx_string** %1109
  %1111 = call %nyx_string* @ty_extract_leading_lifetime(%nyx_string* %1110)
  %1112 = alloca %nyx_string*
  store %nyx_string* %1111, %nyx_string** %1112
  %1113 = load %nyx_string*, %nyx_string** %1112
  %1114 = call i64 @nyx_string_byte_length(%nyx_string* %1113)
  %1115 = icmp sgt i64 %1114, 0
  br i1 %1115, label %then360, label %else361
then360:
  %1116 = load %nyx_string*, %nyx_string** %1109
  %1117 = call %nyx_string* @ty_strip_leading_lifetime(%nyx_string* %1116)
  store %nyx_string* %1117, %nyx_string** %1109
  br label %merge362
else361:
  br label %merge362
merge362:
  %1118 = load %nyx_string*, %nyx_string** %1109
  %1119 = call { i64, i8* }* @ty_parse(%nyx_string* %1118)
  %1120 = alloca { i64, i8* }*
  store { i64, i8* }* %1119, { i64, i8* }** %1120
  %1121 = load { i64, i8* }*, { i64, i8* }** %1120
  %1122 = load %nyx_string*, %nyx_string** %1112
  %1123 = call { i64, i8* }* @ty_ref_r({ i64, i8* }* %1121, %nyx_string* %1122)
  ret { i64, i8* }* %1123
else358:
  br label %merge359
merge359:
  %1124 = load %nyx_string*, %nyx_string** %1014
  %1125 = getelementptr [5 x i8], [5 x i8]* @.str145, i32 0, i32 0
  %1126 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str145.c, i8* %1125)
  %1127 = call i1 @nyx_string_starts_with(%nyx_string* %1124, %nyx_string* %1126)
  br i1 %1127, label %then363, label %else364
then363:
  %1128 = load %nyx_string*, %nyx_string** %1014
  %1129 = load %nyx_string*, %nyx_string** %1014
  %1130 = call i64 @nyx_string_byte_length(%nyx_string* %1129)
  %1131 = call %nyx_string* @nyx_string_substring(%nyx_string* %1128, i64 4, i64 %1130)
  %1132 = alloca %nyx_string*
  store %nyx_string* %1131, %nyx_string** %1132
  %1133 = load %nyx_string*, %nyx_string** %1132
  %1134 = call %nyx_string* @nyx_string_trim(%nyx_string* %1133)
  %1135 = call { i64, i8* }* @ty_dyn(%nyx_string* %1134)
  ret { i64, i8* }* %1135
else364:
  br label %merge365
merge365:
  %1136 = load %nyx_string*, %nyx_string** %1014
  %1137 = getelementptr [4 x i8], [4 x i8]* @.str146, i32 0, i32 0
  %1138 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str146.c, i8* %1137)
  %1139 = call i1 @nyx_string_starts_with(%nyx_string* %1136, %nyx_string* %1138)
  br i1 %1139, label %then366, label %else367
then366:
  %1140 = load %nyx_string*, %nyx_string** %1014
  %1141 = call i64 @nyx_string_byte_length(%nyx_string* %1140)
  %1142 = alloca i64
  store i64 %1141, i64* %1142
  %1143 = alloca i64
  store i64 0, i64* %1143
  %1144 = sub i64 0, 1
  %1145 = alloca i64
  store i64 %1144, i64* %1145
  %1146 = alloca i64
  store i64 0, i64* %1146
  br label %while_cond369
while_cond369:
  %1147 = load i64, i64* %1146
  %1148 = load i64, i64* %1142
  %1149 = icmp slt i64 %1147, %1148
  br i1 %1149, label %while_body370, label %while_end371
while_body370:
  %1150 = load %nyx_string*, %nyx_string** %1014
  %1151 = load i64, i64* %1146
  %1152 = call i8 @nyx_string_char_at(%nyx_string* %1150, i64 %1151)
  %1153 = zext i8 %1152 to i64
  %1154 = alloca i64
  store i64 %1153, i64* %1154
  %1155 = load i64, i64* %1154
  %1156 = icmp eq i64 %1155, 40
  br i1 %1156, label %then372, label %else373
then372:
  %1157 = load i64, i64* %1143
  %1158 = add i64 %1157, 1
  store i64 %1158, i64* %1143
  br label %merge374
else373:
  %1159 = load i64, i64* %1154
  %1160 = icmp eq i64 %1159, 41
  br i1 %1160, label %then375, label %else376
then375:
  %1161 = load i64, i64* %1143
  %1162 = sub i64 %1161, 1
  store i64 %1162, i64* %1143
  %1163 = load i64, i64* %1143
  %1164 = icmp eq i64 %1163, 0
  br i1 %1164, label %then378, label %else379
then378:
  %1165 = load i64, i64* %1146
  store i64 %1165, i64* %1145
  %1166 = load i64, i64* %1142
  store i64 %1166, i64* %1146
  br label %merge380
else379:
  br label %merge380
merge380:
  br label %merge377
else376:
  br label %merge377
merge377:
  br label %merge374
merge374:
  %1167 = load i64, i64* %1146
  %1168 = add i64 %1167, 1
  store i64 %1168, i64* %1146
  br label %while_cond369
while_end371:
  %1169 = load i64, i64* %1145
  %1170 = icmp slt i64 %1169, 0
  br i1 %1170, label %then381, label %else382
then381:
  %1171 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1171
else382:
  br label %merge383
merge383:
  %1172 = load %nyx_string*, %nyx_string** %1014
  %1173 = load i64, i64* %1145
  %1174 = call %nyx_string* @nyx_string_substring(%nyx_string* %1172, i64 3, i64 %1173)
  %1175 = alloca %nyx_string*
  store %nyx_string* %1174, %nyx_string** %1175
  %1176 = call { i64, i8* }* @nyx_array_new_ptr()
  %1177 = alloca { i64, i8* }*
  store { i64, i8* }* %1176, { i64, i8* }** %1177
  %1178 = load %nyx_string*, %nyx_string** %1175
  %1179 = call %nyx_string* @nyx_string_trim(%nyx_string* %1178)
  %1180 = getelementptr [1 x i8], [1 x i8]* @.str147, i32 0, i32 0
  %1181 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str147.c, i8* %1180)
  %1182 = call i1 @nyx_string_equals(%nyx_string* %1179, %nyx_string* %1181)
  %1183 = xor i1 %1182, true
  br i1 %1183, label %then384, label %else385
then384:
  %1184 = load %nyx_string*, %nyx_string** %1175
  %1185 = call { i64, i8* }* @split_at_depth0(%nyx_string* %1184, i64 44)
  store { i64, i8* }* %1185, { i64, i8* }** %1177
  br label %merge386
else385:
  br label %merge386
merge386:
  %1186 = call { i64, i8* }* @nyx_array_new_ptr()
  %1187 = alloca { i64, i8* }*
  store { i64, i8* }* %1186, { i64, i8* }** %1187
  %1188 = alloca i64
  store i64 0, i64* %1188
  br label %while_cond387
while_cond387:
  %1189 = load i64, i64* %1188
  %1190 = load { i64, i8* }*, { i64, i8* }** %1177
  %1191 = call i64 @nyx_array_length({ i64, i8* }* %1190)
  %1192 = icmp slt i64 %1189, %1191
  br i1 %1192, label %while_body388, label %while_end389
while_body388:
  %1193 = load { i64, i8* }*, { i64, i8* }** %1177
  %1194 = load i64, i64* %1188
  %1195 = call i64 @nyx_array_get({ i64, i8* }* %1193, i64 %1194)
  %1196 = inttoptr i64 %1195 to %nyx_string*
  %1197 = alloca %nyx_string*
  store %nyx_string* %1196, %nyx_string** %1197
  %1198 = load %nyx_string*, %nyx_string** %1197
  %1199 = call { i64, i8* }* @ty_parse(%nyx_string* %1198)
  %1200 = alloca { i64, i8* }*
  store { i64, i8* }* %1199, { i64, i8* }** %1200
  %1201 = load { i64, i8* }*, { i64, i8* }** %1187
  %1202 = load { i64, i8* }*, { i64, i8* }** %1200
  %1203 = ptrtoint { i64, i8* }* %1202 to i64
  call void @nyx_array_push({ i64, i8* }* %1201, i64 %1203)
  %1204 = load i64, i64* %1188
  %1205 = add i64 %1204, 1
  store i64 %1205, i64* %1188
  br label %while_cond387
while_end389:
  %1206 = call { i64, i8* }* @ty_unit()
  %1207 = alloca { i64, i8* }*
  store { i64, i8* }* %1206, { i64, i8* }** %1207
  %1208 = load i64, i64* %1145
  %1209 = add i64 %1208, 1
  %1210 = load i64, i64* %1142
  %1211 = icmp slt i64 %1209, %1210
  br i1 %1211, label %then390, label %else391
then390:
  %1212 = load %nyx_string*, %nyx_string** %1014
  %1213 = load i64, i64* %1145
  %1214 = add i64 %1213, 1
  %1215 = load i64, i64* %1142
  %1216 = call %nyx_string* @nyx_string_substring(%nyx_string* %1212, i64 %1214, i64 %1215)
  %1217 = call %nyx_string* @nyx_string_trim(%nyx_string* %1216)
  %1218 = alloca %nyx_string*
  store %nyx_string* %1217, %nyx_string** %1218
  %1219 = load %nyx_string*, %nyx_string** %1218
  %1220 = getelementptr [3 x i8], [3 x i8]* @.str148, i32 0, i32 0
  %1221 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str148.c, i8* %1220)
  %1222 = call i1 @nyx_string_starts_with(%nyx_string* %1219, %nyx_string* %1221)
  br i1 %1222, label %then393, label %else394
then393:
  %1223 = load %nyx_string*, %nyx_string** %1218
  %1224 = load %nyx_string*, %nyx_string** %1218
  %1225 = call i64 @nyx_string_byte_length(%nyx_string* %1224)
  %1226 = call %nyx_string* @nyx_string_substring(%nyx_string* %1223, i64 2, i64 %1225)
  %1227 = alloca %nyx_string*
  store %nyx_string* %1226, %nyx_string** %1227
  %1228 = load %nyx_string*, %nyx_string** %1227
  %1229 = call { i64, i8* }* @ty_parse(%nyx_string* %1228)
  store { i64, i8* }* %1229, { i64, i8* }** %1207
  br label %merge395
else394:
  br label %merge395
merge395:
  br label %merge392
else391:
  br label %merge392
merge392:
  %1230 = load { i64, i8* }*, { i64, i8* }** %1187
  %1231 = load { i64, i8* }*, { i64, i8* }** %1207
  %1232 = call { i64, i8* }* @ty_fn({ i64, i8* }* %1230, { i64, i8* }* %1231)
  ret { i64, i8* }* %1232
else367:
  br label %merge368
merge368:
  %1233 = load %nyx_string*, %nyx_string** %1014
  %1234 = getelementptr [2 x i8], [2 x i8]* @.str149, i32 0, i32 0
  %1235 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str149.c, i8* %1234)
  %1236 = call i1 @nyx_string_ends_with(%nyx_string* %1233, %nyx_string* %1235)
  br i1 %1236, label %then396, label %else397
then396:
  %1237 = load %nyx_string*, %nyx_string** %1014
  %1238 = getelementptr [2 x i8], [2 x i8]* @.str150, i32 0, i32 0
  %1239 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str150.c, i8* %1238)
  %1240 = call i64 @nyx_string_index_of(%nyx_string* %1237, %nyx_string* %1239)
  %1241 = alloca i64
  store i64 %1240, i64* %1241
  %1242 = load i64, i64* %1241
  %1243 = icmp sgt i64 %1242, 0
  br i1 %1243, label %then399, label %else400
then399:
  %1244 = load %nyx_string*, %nyx_string** %1014
  %1245 = load i64, i64* %1241
  %1246 = call %nyx_string* @nyx_string_substring(%nyx_string* %1244, i64 0, i64 %1245)
  %1247 = call %nyx_string* @nyx_string_trim(%nyx_string* %1246)
  %1248 = alloca %nyx_string*
  store %nyx_string* %1247, %nyx_string** %1248
  %1249 = load %nyx_string*, %nyx_string** %1014
  %1250 = load i64, i64* %1241
  %1251 = add i64 %1250, 1
  %1252 = load %nyx_string*, %nyx_string** %1014
  %1253 = call i64 @nyx_string_byte_length(%nyx_string* %1252)
  %1254 = sub i64 %1253, 1
  %1255 = call %nyx_string* @nyx_string_substring(%nyx_string* %1249, i64 %1251, i64 %1254)
  %1256 = alloca %nyx_string*
  store %nyx_string* %1255, %nyx_string** %1256
  %1257 = load %nyx_string*, %nyx_string** %1256
  %1258 = call { i64, i8* }* @split_at_depth0(%nyx_string* %1257, i64 44)
  %1259 = alloca { i64, i8* }*
  store { i64, i8* }* %1258, { i64, i8* }** %1259
  %1260 = call { i64, i8* }* @nyx_array_new_ptr()
  %1261 = alloca { i64, i8* }*
  store { i64, i8* }* %1260, { i64, i8* }** %1261
  %1262 = alloca i64
  store i64 0, i64* %1262
  br label %while_cond402
while_cond402:
  %1263 = load i64, i64* %1262
  %1264 = load { i64, i8* }*, { i64, i8* }** %1259
  %1265 = call i64 @nyx_array_length({ i64, i8* }* %1264)
  %1266 = icmp slt i64 %1263, %1265
  br i1 %1266, label %while_body403, label %while_end404
while_body403:
  %1267 = load { i64, i8* }*, { i64, i8* }** %1259
  %1268 = load i64, i64* %1262
  %1269 = call i64 @nyx_array_get({ i64, i8* }* %1267, i64 %1268)
  %1270 = inttoptr i64 %1269 to %nyx_string*
  %1271 = alloca %nyx_string*
  store %nyx_string* %1270, %nyx_string** %1271
  %1272 = load %nyx_string*, %nyx_string** %1271
  %1273 = call { i64, i8* }* @ty_parse(%nyx_string* %1272)
  %1274 = alloca { i64, i8* }*
  store { i64, i8* }* %1273, { i64, i8* }** %1274
  %1275 = load { i64, i8* }*, { i64, i8* }** %1261
  %1276 = load { i64, i8* }*, { i64, i8* }** %1274
  %1277 = ptrtoint { i64, i8* }* %1276 to i64
  call void @nyx_array_push({ i64, i8* }* %1275, i64 %1277)
  %1278 = load i64, i64* %1262
  %1279 = add i64 %1278, 1
  store i64 %1279, i64* %1262
  br label %while_cond402
while_end404:
  %1280 = load %nyx_string*, %nyx_string** %1248
  %1281 = getelementptr [6 x i8], [6 x i8]* @.str151, i32 0, i32 0
  %1282 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str151.c, i8* %1281)
  %1283 = call i1 @nyx_string_equals(%nyx_string* %1280, %nyx_string* %1282)
  br i1 %1283, label %then405, label %else406
then405:
  %1284 = load { i64, i8* }*, { i64, i8* }** %1261
  %1285 = call i64 @nyx_array_length({ i64, i8* }* %1284)
  %1286 = icmp eq i64 %1285, 1
  br i1 %1286, label %then408, label %else409
then408:
  %1287 = load { i64, i8* }*, { i64, i8* }** %1261
  %1288 = call i64 @nyx_array_get({ i64, i8* }* %1287, i64 0)
  %1289 = inttoptr i64 %1288 to { i64, i8* }*
  %1290 = call { i64, i8* }* @ty_array({ i64, i8* }* %1289)
  ret { i64, i8* }* %1290
else409:
  br label %merge410
merge410:
  br label %merge407
else406:
  br label %merge407
merge407:
  %1291 = load %nyx_string*, %nyx_string** %1248
  %1292 = getelementptr [7 x i8], [7 x i8]* @.str152, i32 0, i32 0
  %1293 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str152.c, i8* %1292)
  %1294 = call i1 @nyx_string_equals(%nyx_string* %1291, %nyx_string* %1293)
  br i1 %1294, label %then411, label %else412
then411:
  %1295 = load { i64, i8* }*, { i64, i8* }** %1261
  %1296 = call i64 @nyx_array_length({ i64, i8* }* %1295)
  %1297 = icmp eq i64 %1296, 1
  br i1 %1297, label %then414, label %else415
then414:
  %1298 = load { i64, i8* }*, { i64, i8* }** %1261
  %1299 = call i64 @nyx_array_get({ i64, i8* }* %1298, i64 0)
  %1300 = inttoptr i64 %1299 to { i64, i8* }*
  %1301 = call { i64, i8* }* @ty_option({ i64, i8* }* %1300)
  ret { i64, i8* }* %1301
else415:
  br label %merge416
merge416:
  br label %merge413
else412:
  br label %merge413
merge413:
  %1302 = load %nyx_string*, %nyx_string** %1248
  %1303 = getelementptr [7 x i8], [7 x i8]* @.str153, i32 0, i32 0
  %1304 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str153.c, i8* %1303)
  %1305 = call i1 @nyx_string_equals(%nyx_string* %1302, %nyx_string* %1304)
  br i1 %1305, label %then417, label %else418
then417:
  %1306 = load { i64, i8* }*, { i64, i8* }** %1261
  %1307 = call i64 @nyx_array_length({ i64, i8* }* %1306)
  %1308 = icmp eq i64 %1307, 2
  br i1 %1308, label %then420, label %else421
then420:
  %1309 = load { i64, i8* }*, { i64, i8* }** %1261
  %1310 = call i64 @nyx_array_get({ i64, i8* }* %1309, i64 0)
  %1311 = inttoptr i64 %1310 to { i64, i8* }*
  %1312 = load { i64, i8* }*, { i64, i8* }** %1261
  %1313 = call i64 @nyx_array_get({ i64, i8* }* %1312, i64 1)
  %1314 = inttoptr i64 %1313 to { i64, i8* }*
  %1315 = call { i64, i8* }* @ty_result({ i64, i8* }* %1311, { i64, i8* }* %1314)
  ret { i64, i8* }* %1315
else421:
  br label %merge422
merge422:
  br label %merge419
else418:
  br label %merge419
merge419:
  %1316 = load %nyx_string*, %nyx_string** %1248
  %1317 = getelementptr [4 x i8], [4 x i8]* @.str154, i32 0, i32 0
  %1318 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str154.c, i8* %1317)
  %1319 = call i1 @nyx_string_equals(%nyx_string* %1316, %nyx_string* %1318)
  br i1 %1319, label %then423, label %else424
then423:
  %1320 = load { i64, i8* }*, { i64, i8* }** %1261
  %1321 = call i64 @nyx_array_length({ i64, i8* }* %1320)
  %1322 = icmp eq i64 %1321, 2
  br i1 %1322, label %then426, label %else427
then426:
  %1323 = load { i64, i8* }*, { i64, i8* }** %1261
  %1324 = call i64 @nyx_array_get({ i64, i8* }* %1323, i64 0)
  %1325 = inttoptr i64 %1324 to { i64, i8* }*
  %1326 = load { i64, i8* }*, { i64, i8* }** %1261
  %1327 = call i64 @nyx_array_get({ i64, i8* }* %1326, i64 1)
  %1328 = inttoptr i64 %1327 to { i64, i8* }*
  %1329 = call { i64, i8* }* @ty_map({ i64, i8* }* %1325, { i64, i8* }* %1328)
  ret { i64, i8* }* %1329
else427:
  br label %merge428
merge428:
  %1330 = load { i64, i8* }*, { i64, i8* }** %1261
  %1331 = call i64 @nyx_array_length({ i64, i8* }* %1330)
  %1332 = icmp eq i64 %1331, 1
  br i1 %1332, label %then429, label %else430
then429:
  %1333 = call { i64, i8* }* @ty_string()
  %1334 = load { i64, i8* }*, { i64, i8* }** %1261
  %1335 = call i64 @nyx_array_get({ i64, i8* }* %1334, i64 0)
  %1336 = inttoptr i64 %1335 to { i64, i8* }*
  %1337 = call { i64, i8* }* @ty_map({ i64, i8* }* %1333, { i64, i8* }* %1336)
  ret { i64, i8* }* %1337
else430:
  br label %merge431
merge431:
  br label %merge425
else424:
  br label %merge425
merge425:
  %1338 = load %nyx_string*, %nyx_string** %1248
  %1339 = load { i64, i8* }*, { i64, i8* }** %1261
  %1340 = call { i64, i8* }* @ty_struct_ty(%nyx_string* %1338, { i64, i8* }* %1339)
  ret { i64, i8* }* %1340
else400:
  br label %merge401
merge401:
  br label %merge398
else397:
  br label %merge398
merge398:
  %1341 = load %nyx_string*, %nyx_string** %1014
  %1342 = getelementptr [6 x i8], [6 x i8]* @.str155, i32 0, i32 0
  %1343 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str155.c, i8* %1342)
  %1344 = call i1 @nyx_string_equals(%nyx_string* %1341, %nyx_string* %1343)
  br i1 %1344, label %then432, label %else433
then432:
  %1345 = call { i64, i8* }* @ty_unknown()
  %1346 = call { i64, i8* }* @ty_array({ i64, i8* }* %1345)
  ret { i64, i8* }* %1346
else433:
  br label %merge434
merge434:
  %1347 = load %nyx_string*, %nyx_string** %1014
  %1348 = getelementptr [7 x i8], [7 x i8]* @.str156, i32 0, i32 0
  %1349 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str156.c, i8* %1348)
  %1350 = call i1 @nyx_string_equals(%nyx_string* %1347, %nyx_string* %1349)
  br i1 %1350, label %then435, label %else436
then435:
  %1351 = call { i64, i8* }* @ty_unknown()
  %1352 = call { i64, i8* }* @ty_option({ i64, i8* }* %1351)
  ret { i64, i8* }* %1352
else436:
  br label %merge437
merge437:
  %1353 = load %nyx_string*, %nyx_string** %1014
  %1354 = getelementptr [7 x i8], [7 x i8]* @.str157, i32 0, i32 0
  %1355 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str157.c, i8* %1354)
  %1356 = call i1 @nyx_string_equals(%nyx_string* %1353, %nyx_string* %1355)
  br i1 %1356, label %then438, label %else439
then438:
  %1357 = call { i64, i8* }* @ty_unknown()
  %1358 = call { i64, i8* }* @ty_unknown()
  %1359 = call { i64, i8* }* @ty_result({ i64, i8* }* %1357, { i64, i8* }* %1358)
  ret { i64, i8* }* %1359
else439:
  br label %merge440
merge440:
  %1360 = load %nyx_string*, %nyx_string** %1014
  %1361 = getelementptr [4 x i8], [4 x i8]* @.str158, i32 0, i32 0
  %1362 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str158.c, i8* %1361)
  %1363 = call i1 @nyx_string_equals(%nyx_string* %1360, %nyx_string* %1362)
  br i1 %1363, label %then441, label %else442
then441:
  %1364 = call { i64, i8* }* @ty_unknown()
  %1365 = call { i64, i8* }* @ty_unknown()
  %1366 = call { i64, i8* }* @ty_map({ i64, i8* }* %1364, { i64, i8* }* %1365)
  ret { i64, i8* }* %1366
else442:
  br label %merge443
merge443:
  %1367 = load %nyx_string*, %nyx_string** %1014
  %1368 = call i64 @nyx_string_byte_length(%nyx_string* %1367)
  %1369 = icmp sle i64 %1368, 2
  br i1 %1369, label %then444, label %else445
then444:
  %1370 = load %nyx_string*, %nyx_string** %1014
  %1371 = call i8 @nyx_string_char_at(%nyx_string* %1370, i64 0)
  %1372 = zext i8 %1371 to i64
  %1373 = alloca i64
  store i64 %1372, i64* %1373
  %1374 = alloca i1
  store i1 false, i1* %1374
  %1375 = load i64, i64* %1373
  %1376 = icmp sge i64 %1375, 65
  br i1 %1376, label %sc_and_rhs447, label %sc_and_end448
sc_and_rhs447:
  %1377 = load i64, i64* %1373
  %1378 = icmp sle i64 %1377, 90
  store i1 %1378, i1* %1374
  br label %sc_and_end448
sc_and_end448:
  %1379 = load i1, i1* %1374
  br i1 %1379, label %then449, label %else450
then449:
  %1380 = load %nyx_string*, %nyx_string** %1014
  %1381 = call { i64, i8* }* @ty_generic(%nyx_string* %1380)
  ret { i64, i8* }* %1381
else450:
  br label %merge451
merge451:
  br label %merge446
else445:
  br label %merge446
merge446:
  %1382 = load %nyx_string*, %nyx_string** %1014
  %1383 = call { i64, i8* }* @nyx_array_new_ptr()
  %1384 = call { i64, i8* }* @ty_struct_ty(%nyx_string* %1382, { i64, i8* }* %1383)
  ret { i64, i8* }* %1384
}

define { i64, i8* }* @ty_of_literal(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %1385 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 0
  %1386 = load %nyx_string*, %nyx_string** %1385
  %1387 = alloca %nyx_string*
  store %nyx_string* %1386, %nyx_string** %1387
  %1388 = load %nyx_string*, %nyx_string** %1387
  %1389 = getelementptr [7 x i8], [7 x i8]* @.str159, i32 0, i32 0
  %1390 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str159.c, i8* %1389)
  %1391 = call i1 @nyx_string_equals(%nyx_string* %1388, %nyx_string* %1390)
  br i1 %1391, label %then452, label %else453
then452:
  %1392 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %1393 = load { i64, i8* }*, { i64, i8* }** %1392
  %1394 = alloca { i64, i8* }*
  store { i64, i8* }* %1393, { i64, i8* }** %1394
  %1395 = load { i64, i8* }*, { i64, i8* }** %1394
  %1396 = call i64 @nyx_array_length({ i64, i8* }* %1395)
  %1397 = icmp sgt i64 %1396, 0
  br i1 %1397, label %then455, label %else456
then455:
  %1398 = load { i64, i8* }*, { i64, i8* }** %1394
  %1399 = call i64 @nyx_array_get({ i64, i8* }* %1398, i64 0)
  %1400 = inttoptr i64 %1399 to %nyx_string*
  %1401 = alloca %nyx_string*
  store %nyx_string* %1400, %nyx_string** %1401
  %1402 = load %nyx_string*, %nyx_string** %1401
  %1403 = getelementptr [2 x i8], [2 x i8]* @.str160, i32 0, i32 0
  %1404 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str160.c, i8* %1403)
  %1405 = call i64 @nyx_string_index_of(%nyx_string* %1402, %nyx_string* %1404)
  %1406 = icmp sge i64 %1405, 0
  br i1 %1406, label %then458, label %else459
then458:
  %1407 = call { i64, i8* }* @ty_float()
  ret { i64, i8* }* %1407
else459:
  br label %merge460
merge460:
  br label %merge457
else456:
  br label %merge457
merge457:
  %1408 = call { i64, i8* }* @ty_int()
  ret { i64, i8* }* %1408
else453:
  br label %merge454
merge454:
  %1409 = load %nyx_string*, %nyx_string** %1387
  %1410 = getelementptr [7 x i8], [7 x i8]* @.str161, i32 0, i32 0
  %1411 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str161.c, i8* %1410)
  %1412 = call i1 @nyx_string_equals(%nyx_string* %1409, %nyx_string* %1411)
  br i1 %1412, label %then461, label %else462
then461:
  %1413 = call { i64, i8* }* @ty_string()
  ret { i64, i8* }* %1413
else462:
  br label %merge463
merge463:
  %1414 = load %nyx_string*, %nyx_string** %1387
  %1415 = getelementptr [5 x i8], [5 x i8]* @.str162, i32 0, i32 0
  %1416 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str162.c, i8* %1415)
  %1417 = call i1 @nyx_string_equals(%nyx_string* %1414, %nyx_string* %1416)
  br i1 %1417, label %then464, label %else465
then464:
  %1418 = call { i64, i8* }* @ty_bool()
  ret { i64, i8* }* %1418
else465:
  br label %merge466
merge466:
  %1419 = load %nyx_string*, %nyx_string** %1387
  %1420 = getelementptr [5 x i8], [5 x i8]* @.str163, i32 0, i32 0
  %1421 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str163.c, i8* %1420)
  %1422 = call i1 @nyx_string_equals(%nyx_string* %1419, %nyx_string* %1421)
  br i1 %1422, label %then467, label %else468
then467:
  %1423 = call { i64, i8* }* @ty_char()
  ret { i64, i8* }* %1423
else468:
  br label %merge469
merge469:
  %1424 = load %nyx_string*, %nyx_string** %1387
  %1425 = getelementptr [6 x i8], [6 x i8]* @.str164, i32 0, i32 0
  %1426 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str164.c, i8* %1425)
  %1427 = call i1 @nyx_string_equals(%nyx_string* %1424, %nyx_string* %1426)
  br i1 %1427, label %then470, label %else471
then470:
  %1428 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %1429 = load { i64, i8* }*, { i64, i8* }** %1428
  %1430 = alloca { i64, i8* }*
  store { i64, i8* }* %1429, { i64, i8* }** %1430
  %1431 = load { i64, i8* }*, { i64, i8* }** %1430
  %1432 = call i64 @nyx_array_length({ i64, i8* }* %1431)
  %1433 = icmp sgt i64 %1432, 0
  br i1 %1433, label %then473, label %else474
then473:
  %1434 = load { i64, i8* }*, { i64, i8* }** %1430
  %1435 = call i64 @nyx_array_get({ i64, i8* }* %1434, i64 0)
  %1436 = inttoptr i64 %1435 to { i64, i8* }*
  %1437 = alloca { i64, i8* }*
  store { i64, i8* }* %1436, { i64, i8* }** %1437
  %1438 = load { i64, i8* }*, { i64, i8* }** %1437
  %1439 = call i64 @nyx_array_length({ i64, i8* }* %1438)
  %1440 = icmp sgt i64 %1439, 0
  br i1 %1440, label %then476, label %else477
then476:
  %1441 = load { i64, i8* }*, { i64, i8* }** %1437
  %1442 = call i64 @nyx_array_get({ i64, i8* }* %1441, i64 0)
  %1443 = inttoptr i64 %1442 to { i64, i8* }*
  %1444 = call i64 @nyx_array_get({ i64, i8* }* %1443, i64 0)
  %1445 = call i64 @nyx_array_get({ i64, i8* }* %1443, i64 1)
  %1446 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %1443, i64 2)
  %1447 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %1443, i64 3)
  %1448 = inttoptr i64 %1444 to %nyx_string*
  %1449 = inttoptr i64 %1445 to { i64, i8* }*
  %1450 = alloca %ASTNode
  %1451 = getelementptr inbounds %ASTNode, %ASTNode* %1450, i32 0, i32 0
  store %nyx_string* %1448, %nyx_string** %1451
  %1452 = getelementptr inbounds %ASTNode, %ASTNode* %1450, i32 0, i32 1
  store { i64, i8* }* %1449, { i64, i8* }** %1452
  %1453 = getelementptr inbounds %ASTNode, %ASTNode* %1450, i32 0, i32 2
  store i64 %1446, i64* %1453
  %1454 = getelementptr inbounds %ASTNode, %ASTNode* %1450, i32 0, i32 3
  store i64 %1447, i64* %1454
  %1455 = load %ASTNode, %ASTNode* %1450
  %1456 = alloca %ASTNode
  store %ASTNode %1455, %ASTNode* %1456
  %1457 = load %ASTNode, %ASTNode* %1456
  %1458 = call { i64, i8* }* @ty_of_literal(%ASTNode %1457)
  %1459 = alloca { i64, i8* }*
  store { i64, i8* }* %1458, { i64, i8* }** %1459
  %1460 = load { i64, i8* }*, { i64, i8* }** %1459
  %1461 = call i1 @ty_is_unknown({ i64, i8* }* %1460)
  %1462 = xor i1 %1461, true
  br i1 %1462, label %then479, label %else480
then479:
  %1463 = load { i64, i8* }*, { i64, i8* }** %1459
  %1464 = call { i64, i8* }* @ty_array({ i64, i8* }* %1463)
  ret { i64, i8* }* %1464
else480:
  br label %merge481
merge481:
  br label %merge478
else477:
  br label %merge478
merge478:
  br label %merge475
else474:
  br label %merge475
merge475:
  %1465 = call { i64, i8* }* @ty_unknown()
  %1466 = call { i64, i8* }* @ty_array({ i64, i8* }* %1465)
  ret { i64, i8* }* %1466
else471:
  br label %merge472
merge472:
  %1467 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1467
}

define i1 @is_integer_like(
{ i64, i8* }* %t.param) {
  %t.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %t.param, { i64, i8* }** %t.ptr
  %1468 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1469 = call %nyx_string* @ty_kind({ i64, i8* }* %1468)
  %1470 = alloca %nyx_string*
  store %nyx_string* %1469, %nyx_string** %1470
  %1471 = load %nyx_string*, %nyx_string** %1470
  %1472 = getelementptr [6 x i8], [6 x i8]* @.str165, i32 0, i32 0
  %1473 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str165.c, i8* %1472)
  %1474 = call i1 @nyx_string_equals(%nyx_string* %1471, %nyx_string* %1473)
  br i1 %1474, label %then482, label %else483
then482:
  ret i1 1
else483:
  br label %merge484
merge484:
  %1475 = load %nyx_string*, %nyx_string** %1470
  %1476 = getelementptr [8 x i8], [8 x i8]* @.str166, i32 0, i32 0
  %1477 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str166.c, i8* %1476)
  %1478 = call i1 @nyx_string_equals(%nyx_string* %1475, %nyx_string* %1477)
  br i1 %1478, label %then485, label %else486
then485:
  %1479 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1480 = call i64 @nyx_array_get({ i64, i8* }* %1479, i64 1)
  %1481 = inttoptr i64 %1480 to %nyx_string*
  %1482 = alloca %nyx_string*
  store %nyx_string* %1481, %nyx_string** %1482
  %1483 = load %nyx_string*, %nyx_string** %1482
  %1484 = getelementptr [4 x i8], [4 x i8]* @.str167, i32 0, i32 0
  %1485 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str167.c, i8* %1484)
  %1486 = call i1 @nyx_string_equals(%nyx_string* %1483, %nyx_string* %1485)
  br i1 %1486, label %then488, label %else489
then488:
  ret i1 0
else489:
  br label %merge490
merge490:
  ret i1 1
else486:
  br label %merge487
merge487:
  ret i1 0
}

define i1 @is_float_like(
{ i64, i8* }* %t.param) {
  %t.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %t.param, { i64, i8* }** %t.ptr
  %1487 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1488 = call %nyx_string* @ty_kind({ i64, i8* }* %1487)
  %1489 = alloca %nyx_string*
  store %nyx_string* %1488, %nyx_string** %1489
  %1490 = load %nyx_string*, %nyx_string** %1489
  %1491 = getelementptr [8 x i8], [8 x i8]* @.str168, i32 0, i32 0
  %1492 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str168.c, i8* %1491)
  %1493 = call i1 @nyx_string_equals(%nyx_string* %1490, %nyx_string* %1492)
  br i1 %1493, label %then491, label %else492
then491:
  ret i1 1
else492:
  br label %merge493
merge493:
  %1494 = load %nyx_string*, %nyx_string** %1489
  %1495 = getelementptr [8 x i8], [8 x i8]* @.str169, i32 0, i32 0
  %1496 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str169.c, i8* %1495)
  %1497 = call i1 @nyx_string_equals(%nyx_string* %1494, %nyx_string* %1496)
  br i1 %1497, label %then494, label %else495
then494:
  %1498 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1499 = call i64 @nyx_array_get({ i64, i8* }* %1498, i64 1)
  %1500 = inttoptr i64 %1499 to %nyx_string*
  %1501 = alloca %nyx_string*
  store %nyx_string* %1500, %nyx_string** %1501
  %1502 = load %nyx_string*, %nyx_string** %1501
  %1503 = getelementptr [4 x i8], [4 x i8]* @.str170, i32 0, i32 0
  %1504 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str170.c, i8* %1503)
  %1505 = call i1 @nyx_string_equals(%nyx_string* %1502, %nyx_string* %1504)
  br i1 %1505, label %then497, label %else498
then497:
  ret i1 1
else498:
  br label %merge499
merge499:
  br label %merge496
else495:
  br label %merge496
merge496:
  ret i1 0
}

define i1 @is_numeric_ty(
{ i64, i8* }* %t.param) {
  %t.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %t.param, { i64, i8* }** %t.ptr
  %1506 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1507 = call i1 @is_integer_like({ i64, i8* }* %1506)
  br i1 %1507, label %then500, label %else501
then500:
  ret i1 1
else501:
  br label %merge502
merge502:
  %1508 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1509 = call i1 @is_float_like({ i64, i8* }* %1508)
  br i1 %1509, label %then503, label %else504
then503:
  ret i1 1
else504:
  br label %merge505
merge505:
  ret i1 0
}

define %nyx_string* @ty_to_type_ann(
{ i64, i8* }* %t.param) {
  %t.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %t.param, { i64, i8* }** %t.ptr
  %1510 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1511 = call %nyx_string* @ty_kind({ i64, i8* }* %1510)
  %1512 = alloca %nyx_string*
  store %nyx_string* %1511, %nyx_string** %1512
  %1513 = load %nyx_string*, %nyx_string** %1512
  %1514 = getelementptr [6 x i8], [6 x i8]* @.str171, i32 0, i32 0
  %1515 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str171.c, i8* %1514)
  %1516 = call i1 @nyx_string_equals(%nyx_string* %1513, %nyx_string* %1515)
  br i1 %1516, label %then506, label %else507
then506:
  %1517 = getelementptr [1 x i8], [1 x i8]* @.str172, i32 0, i32 0
  %1518 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str172.c, i8* %1517)
  ret %nyx_string* %1518
else507:
  br label %merge508
merge508:
  %1519 = load %nyx_string*, %nyx_string** %1512
  %1520 = getelementptr [7 x i8], [7 x i8]* @.str173, i32 0, i32 0
  %1521 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str173.c, i8* %1520)
  %1522 = call i1 @nyx_string_equals(%nyx_string* %1519, %nyx_string* %1521)
  br i1 %1522, label %then509, label %else510
then509:
  %1523 = getelementptr [1 x i8], [1 x i8]* @.str174, i32 0, i32 0
  %1524 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str174.c, i8* %1523)
  ret %nyx_string* %1524
else510:
  br label %merge511
merge511:
  %1525 = load %nyx_string*, %nyx_string** %1512
  %1526 = getelementptr [10 x i8], [10 x i8]* @.str175, i32 0, i32 0
  %1527 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str175.c, i8* %1526)
  %1528 = call i1 @nyx_string_equals(%nyx_string* %1525, %nyx_string* %1527)
  br i1 %1528, label %then512, label %else513
then512:
  %1529 = getelementptr [1 x i8], [1 x i8]* @.str176, i32 0, i32 0
  %1530 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str176.c, i8* %1529)
  ret %nyx_string* %1530
else513:
  br label %merge514
merge514:
  %1531 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1532 = call %nyx_string* @ty_to_str({ i64, i8* }* %1531)
  ret %nyx_string* %1532
}

define i1 @ty_is_concrete(
{ i64, i8* }* %t.param) {
  %t.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %t.param, { i64, i8* }** %t.ptr
  %1533 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1534 = call %nyx_string* @ty_kind({ i64, i8* }* %1533)
  %1535 = alloca %nyx_string*
  store %nyx_string* %1534, %nyx_string** %1535
  %1536 = load %nyx_string*, %nyx_string** %1535
  %1537 = getelementptr [10 x i8], [10 x i8]* @.str177, i32 0, i32 0
  %1538 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str177.c, i8* %1537)
  %1539 = call i1 @nyx_string_equals(%nyx_string* %1536, %nyx_string* %1538)
  br i1 %1539, label %then515, label %else516
then515:
  ret i1 0
else516:
  br label %merge517
merge517:
  %1540 = load %nyx_string*, %nyx_string** %1535
  %1541 = getelementptr [10 x i8], [10 x i8]* @.str178, i32 0, i32 0
  %1542 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str178.c, i8* %1541)
  %1543 = call i1 @nyx_string_equals(%nyx_string* %1540, %nyx_string* %1542)
  br i1 %1543, label %then518, label %else519
then518:
  ret i1 0
else519:
  br label %merge520
merge520:
  %1544 = load %nyx_string*, %nyx_string** %1535
  %1545 = getelementptr [6 x i8], [6 x i8]* @.str179, i32 0, i32 0
  %1546 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str179.c, i8* %1545)
  %1547 = call i1 @nyx_string_equals(%nyx_string* %1544, %nyx_string* %1546)
  br i1 %1547, label %then521, label %else522
then521:
  ret i1 0
else522:
  br label %merge523
merge523:
  %1548 = alloca i1
  store i1 true, i1* %1548
  %1549 = alloca i1
  store i1 true, i1* %1549
  %1550 = alloca i1
  store i1 true, i1* %1550
  %1551 = alloca i1
  store i1 true, i1* %1551
  %1552 = load %nyx_string*, %nyx_string** %1535
  %1553 = getelementptr [8 x i8], [8 x i8]* @.str180, i32 0, i32 0
  %1554 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str180.c, i8* %1553)
  %1555 = call i1 @nyx_string_equals(%nyx_string* %1552, %nyx_string* %1554)
  br i1 %1555, label %sc_or_end525, label %sc_or_rhs524
sc_or_rhs524:
  %1556 = load %nyx_string*, %nyx_string** %1535
  %1557 = getelementptr [9 x i8], [9 x i8]* @.str181, i32 0, i32 0
  %1558 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str181.c, i8* %1557)
  %1559 = call i1 @nyx_string_equals(%nyx_string* %1556, %nyx_string* %1558)
  store i1 %1559, i1* %1551
  br label %sc_or_end525
sc_or_end525:
  %1560 = load i1, i1* %1551
  br i1 %1560, label %sc_or_end527, label %sc_or_rhs526
sc_or_rhs526:
  %1561 = load %nyx_string*, %nyx_string** %1535
  %1562 = getelementptr [6 x i8], [6 x i8]* @.str182, i32 0, i32 0
  %1563 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str182.c, i8* %1562)
  %1564 = call i1 @nyx_string_equals(%nyx_string* %1561, %nyx_string* %1563)
  store i1 %1564, i1* %1550
  br label %sc_or_end527
sc_or_end527:
  %1565 = load i1, i1* %1550
  br i1 %1565, label %sc_or_end529, label %sc_or_rhs528
sc_or_rhs528:
  %1566 = load %nyx_string*, %nyx_string** %1535
  %1567 = getelementptr [6 x i8], [6 x i8]* @.str183, i32 0, i32 0
  %1568 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str183.c, i8* %1567)
  %1569 = call i1 @nyx_string_equals(%nyx_string* %1566, %nyx_string* %1568)
  store i1 %1569, i1* %1549
  br label %sc_or_end529
sc_or_end529:
  %1570 = load i1, i1* %1549
  br i1 %1570, label %sc_or_end531, label %sc_or_rhs530
sc_or_rhs530:
  %1571 = load %nyx_string*, %nyx_string** %1535
  %1572 = getelementptr [9 x i8], [9 x i8]* @.str184, i32 0, i32 0
  %1573 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str184.c, i8* %1572)
  %1574 = call i1 @nyx_string_equals(%nyx_string* %1571, %nyx_string* %1573)
  store i1 %1574, i1* %1548
  br label %sc_or_end531
sc_or_end531:
  %1575 = load i1, i1* %1548
  br i1 %1575, label %then532, label %else533
then532:
  %1576 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1577 = call i64 @nyx_array_get({ i64, i8* }* %1576, i64 1)
  %1578 = inttoptr i64 %1577 to { i64, i8* }*
  %1579 = alloca { i64, i8* }*
  store { i64, i8* }* %1578, { i64, i8* }** %1579
  %1580 = load { i64, i8* }*, { i64, i8* }** %1579
  %1581 = call i1 @ty_is_concrete({ i64, i8* }* %1580)
  ret i1 %1581
else533:
  br label %merge534
merge534:
  %1582 = alloca i1
  store i1 true, i1* %1582
  %1583 = load %nyx_string*, %nyx_string** %1535
  %1584 = getelementptr [9 x i8], [9 x i8]* @.str185, i32 0, i32 0
  %1585 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str185.c, i8* %1584)
  %1586 = call i1 @nyx_string_equals(%nyx_string* %1583, %nyx_string* %1585)
  br i1 %1586, label %sc_or_end536, label %sc_or_rhs535
sc_or_rhs535:
  %1587 = load %nyx_string*, %nyx_string** %1535
  %1588 = getelementptr [6 x i8], [6 x i8]* @.str186, i32 0, i32 0
  %1589 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str186.c, i8* %1588)
  %1590 = call i1 @nyx_string_equals(%nyx_string* %1587, %nyx_string* %1589)
  store i1 %1590, i1* %1582
  br label %sc_or_end536
sc_or_end536:
  %1591 = load i1, i1* %1582
  br i1 %1591, label %then537, label %else538
then537:
  %1592 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1593 = call i64 @nyx_array_get({ i64, i8* }* %1592, i64 1)
  %1594 = inttoptr i64 %1593 to { i64, i8* }*
  %1595 = alloca { i64, i8* }*
  store { i64, i8* }* %1594, { i64, i8* }** %1595
  %1596 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1597 = call i64 @nyx_array_get({ i64, i8* }* %1596, i64 2)
  %1598 = inttoptr i64 %1597 to { i64, i8* }*
  %1599 = alloca { i64, i8* }*
  store { i64, i8* }* %1598, { i64, i8* }** %1599
  %1600 = load { i64, i8* }*, { i64, i8* }** %1595
  %1601 = call i1 @ty_is_concrete({ i64, i8* }* %1600)
  %1602 = xor i1 %1601, true
  br i1 %1602, label %then540, label %else541
then540:
  ret i1 0
else541:
  br label %merge542
merge542:
  %1603 = load { i64, i8* }*, { i64, i8* }** %1599
  %1604 = call i1 @ty_is_concrete({ i64, i8* }* %1603)
  ret i1 %1604
else538:
  br label %merge539
merge539:
  %1605 = load %nyx_string*, %nyx_string** %1535
  %1606 = getelementptr [5 x i8], [5 x i8]* @.str187, i32 0, i32 0
  %1607 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str187.c, i8* %1606)
  %1608 = call i1 @nyx_string_equals(%nyx_string* %1605, %nyx_string* %1607)
  br i1 %1608, label %then543, label %else544
then543:
  %1609 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1610 = call i64 @nyx_array_get({ i64, i8* }* %1609, i64 1)
  %1611 = inttoptr i64 %1610 to { i64, i8* }*
  %1612 = alloca { i64, i8* }*
  store { i64, i8* }* %1611, { i64, i8* }** %1612
  %1613 = alloca i64
  store i64 0, i64* %1613
  br label %while_cond546
while_cond546:
  %1614 = load i64, i64* %1613
  %1615 = load { i64, i8* }*, { i64, i8* }** %1612
  %1616 = call i64 @nyx_array_length({ i64, i8* }* %1615)
  %1617 = icmp slt i64 %1614, %1616
  br i1 %1617, label %while_body547, label %while_end548
while_body547:
  %1618 = load { i64, i8* }*, { i64, i8* }** %1612
  %1619 = load i64, i64* %1613
  %1620 = call i64 @nyx_array_get({ i64, i8* }* %1618, i64 %1619)
  %1621 = inttoptr i64 %1620 to { i64, i8* }*
  %1622 = alloca { i64, i8* }*
  store { i64, i8* }* %1621, { i64, i8* }** %1622
  %1623 = load { i64, i8* }*, { i64, i8* }** %1622
  %1624 = call i1 @ty_is_concrete({ i64, i8* }* %1623)
  %1625 = xor i1 %1624, true
  br i1 %1625, label %then549, label %else550
then549:
  ret i1 0
else550:
  br label %merge551
merge551:
  %1626 = load i64, i64* %1613
  %1627 = add i64 %1626, 1
  store i64 %1627, i64* %1613
  br label %while_cond546
while_end548:
  %1628 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1629 = call i64 @nyx_array_get({ i64, i8* }* %1628, i64 2)
  %1630 = inttoptr i64 %1629 to { i64, i8* }*
  %1631 = alloca { i64, i8* }*
  store { i64, i8* }* %1630, { i64, i8* }** %1631
  %1632 = load { i64, i8* }*, { i64, i8* }** %1631
  %1633 = call i1 @ty_is_concrete({ i64, i8* }* %1632)
  ret i1 %1633
else544:
  br label %merge545
merge545:
  %1634 = alloca i1
  store i1 true, i1* %1634
  %1635 = load %nyx_string*, %nyx_string** %1535
  %1636 = getelementptr [9 x i8], [9 x i8]* @.str188, i32 0, i32 0
  %1637 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str188.c, i8* %1636)
  %1638 = call i1 @nyx_string_equals(%nyx_string* %1635, %nyx_string* %1637)
  br i1 %1638, label %sc_or_end553, label %sc_or_rhs552
sc_or_rhs552:
  %1639 = load %nyx_string*, %nyx_string** %1535
  %1640 = getelementptr [7 x i8], [7 x i8]* @.str189, i32 0, i32 0
  %1641 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str189.c, i8* %1640)
  %1642 = call i1 @nyx_string_equals(%nyx_string* %1639, %nyx_string* %1641)
  store i1 %1642, i1* %1634
  br label %sc_or_end553
sc_or_end553:
  %1643 = load i1, i1* %1634
  br i1 %1643, label %then554, label %else555
then554:
  %1644 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1645 = call i64 @nyx_array_get({ i64, i8* }* %1644, i64 2)
  %1646 = inttoptr i64 %1645 to { i64, i8* }*
  %1647 = alloca { i64, i8* }*
  store { i64, i8* }* %1646, { i64, i8* }** %1647
  %1648 = alloca i64
  store i64 0, i64* %1648
  br label %while_cond557
while_cond557:
  %1649 = load i64, i64* %1648
  %1650 = load { i64, i8* }*, { i64, i8* }** %1647
  %1651 = call i64 @nyx_array_length({ i64, i8* }* %1650)
  %1652 = icmp slt i64 %1649, %1651
  br i1 %1652, label %while_body558, label %while_end559
while_body558:
  %1653 = load { i64, i8* }*, { i64, i8* }** %1647
  %1654 = load i64, i64* %1648
  %1655 = call i64 @nyx_array_get({ i64, i8* }* %1653, i64 %1654)
  %1656 = inttoptr i64 %1655 to { i64, i8* }*
  %1657 = alloca { i64, i8* }*
  store { i64, i8* }* %1656, { i64, i8* }** %1657
  %1658 = load { i64, i8* }*, { i64, i8* }** %1657
  %1659 = call i1 @ty_is_concrete({ i64, i8* }* %1658)
  %1660 = xor i1 %1659, true
  br i1 %1660, label %then560, label %else561
then560:
  ret i1 0
else561:
  br label %merge562
merge562:
  %1661 = load i64, i64* %1648
  %1662 = add i64 %1661, 1
  store i64 %1662, i64* %1648
  br label %while_cond557
while_end559:
  ret i1 1
else555:
  br label %merge556
merge556:
  ret i1 1
}

define %nyx_string* @ty_to_call_ann(
{ i64, i8* }* %t.param, { i64, i8* }* %subst.param) {
  %t.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %t.param, { i64, i8* }** %t.ptr
  %subst.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %subst.param, { i64, i8* }** %subst.ptr
  %1663 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %1664 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1665 = call { i64, i8* }* @subst_resolve_deep({ i64, i8* }* %1663, { i64, i8* }* %1664)
  %1666 = alloca { i64, i8* }*
  store { i64, i8* }* %1665, { i64, i8* }** %1666
  %1667 = load { i64, i8* }*, { i64, i8* }** %1666
  %1668 = call i1 @ty_is_concrete({ i64, i8* }* %1667)
  %1669 = xor i1 %1668, true
  br i1 %1669, label %then563, label %else564
then563:
  %1670 = getelementptr [1 x i8], [1 x i8]* @.str190, i32 0, i32 0
  %1671 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str190.c, i8* %1670)
  ret %nyx_string* %1671
else564:
  br label %merge565
merge565:
  %1672 = load { i64, i8* }*, { i64, i8* }** %1666
  %1673 = call %nyx_string* @ty_to_str({ i64, i8* }* %1672)
  ret %nyx_string* %1673
}

define { i64, i8* }* @ty_of_binop(
%nyx_string* %op.param, { i64, i8* }* %lhs.param, { i64, i8* }* %rhs.param) {
  %op.ptr = alloca %nyx_string*
  store %nyx_string* %op.param, %nyx_string** %op.ptr
  %lhs.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %lhs.param, { i64, i8* }** %lhs.ptr
  %rhs.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %rhs.param, { i64, i8* }** %rhs.ptr
  %1674 = load { i64, i8* }*, { i64, i8* }** %lhs.ptr
  %1675 = call i1 @ty_is_unknown({ i64, i8* }* %1674)
  br i1 %1675, label %then566, label %else567
then566:
  %1676 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1676
else567:
  br label %merge568
merge568:
  %1677 = load { i64, i8* }*, { i64, i8* }** %rhs.ptr
  %1678 = call i1 @ty_is_unknown({ i64, i8* }* %1677)
  br i1 %1678, label %then569, label %else570
then569:
  %1679 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1679
else570:
  br label %merge571
merge571:
  %1680 = alloca i1
  store i1 true, i1* %1680
  %1681 = alloca i1
  store i1 true, i1* %1681
  %1682 = alloca i1
  store i1 true, i1* %1682
  %1683 = load %nyx_string*, %nyx_string** %op.ptr
  %1684 = getelementptr [8 x i8], [8 x i8]* @.str191, i32 0, i32 0
  %1685 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str191.c, i8* %1684)
  %1686 = call i1 @nyx_string_equals(%nyx_string* %1683, %nyx_string* %1685)
  br i1 %1686, label %sc_or_end573, label %sc_or_rhs572
sc_or_rhs572:
  %1687 = load %nyx_string*, %nyx_string** %op.ptr
  %1688 = getelementptr [6 x i8], [6 x i8]* @.str192, i32 0, i32 0
  %1689 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str192.c, i8* %1688)
  %1690 = call i1 @nyx_string_equals(%nyx_string* %1687, %nyx_string* %1689)
  store i1 %1690, i1* %1682
  br label %sc_or_end573
sc_or_end573:
  %1691 = load i1, i1* %1682
  br i1 %1691, label %sc_or_end575, label %sc_or_rhs574
sc_or_rhs574:
  %1692 = load %nyx_string*, %nyx_string** %op.ptr
  %1693 = getelementptr [4 x i8], [4 x i8]* @.str193, i32 0, i32 0
  %1694 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str193.c, i8* %1693)
  %1695 = call i1 @nyx_string_equals(%nyx_string* %1692, %nyx_string* %1694)
  store i1 %1695, i1* %1681
  br label %sc_or_end575
sc_or_end575:
  %1696 = load i1, i1* %1681
  br i1 %1696, label %sc_or_end577, label %sc_or_rhs576
sc_or_rhs576:
  %1697 = load %nyx_string*, %nyx_string** %op.ptr
  %1698 = getelementptr [3 x i8], [3 x i8]* @.str194, i32 0, i32 0
  %1699 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str194.c, i8* %1698)
  %1700 = call i1 @nyx_string_equals(%nyx_string* %1697, %nyx_string* %1699)
  store i1 %1700, i1* %1680
  br label %sc_or_end577
sc_or_end577:
  %1701 = load i1, i1* %1680
  br i1 %1701, label %then578, label %else579
then578:
  %1702 = load { i64, i8* }*, { i64, i8* }** %lhs.ptr
  %1703 = call %nyx_string* @ty_kind({ i64, i8* }* %1702)
  %1704 = alloca %nyx_string*
  store %nyx_string* %1703, %nyx_string** %1704
  %1705 = load { i64, i8* }*, { i64, i8* }** %rhs.ptr
  %1706 = call %nyx_string* @ty_kind({ i64, i8* }* %1705)
  %1707 = alloca %nyx_string*
  store %nyx_string* %1706, %nyx_string** %1707
  %1708 = load %nyx_string*, %nyx_string** %1704
  %1709 = getelementptr [7 x i8], [7 x i8]* @.str195, i32 0, i32 0
  %1710 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str195.c, i8* %1709)
  %1711 = call i1 @nyx_string_equals(%nyx_string* %1708, %nyx_string* %1710)
  br i1 %1711, label %then581, label %else582
then581:
  %1712 = load %nyx_string*, %nyx_string** %1707
  %1713 = getelementptr [7 x i8], [7 x i8]* @.str196, i32 0, i32 0
  %1714 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str196.c, i8* %1713)
  %1715 = call i1 @nyx_string_equals(%nyx_string* %1712, %nyx_string* %1714)
  br i1 %1715, label %then584, label %else585
then584:
  %1716 = call { i64, i8* }* @ty_bool()
  ret { i64, i8* }* %1716
else585:
  br label %merge586
merge586:
  br label %merge583
else582:
  br label %merge583
merge583:
  %1717 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1717
else579:
  br label %merge580
merge580:
  %1718 = alloca i1
  store i1 true, i1* %1718
  %1719 = alloca i1
  store i1 true, i1* %1719
  %1720 = alloca i1
  store i1 true, i1* %1720
  %1721 = alloca i1
  store i1 true, i1* %1721
  %1722 = alloca i1
  store i1 true, i1* %1722
  %1723 = load %nyx_string*, %nyx_string** %op.ptr
  %1724 = getelementptr [12 x i8], [12 x i8]* @.str197, i32 0, i32 0
  %1725 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str197.c, i8* %1724)
  %1726 = call i1 @nyx_string_equals(%nyx_string* %1723, %nyx_string* %1725)
  br i1 %1726, label %sc_or_end588, label %sc_or_rhs587
sc_or_rhs587:
  %1727 = load %nyx_string*, %nyx_string** %op.ptr
  %1728 = getelementptr [10 x i8], [10 x i8]* @.str198, i32 0, i32 0
  %1729 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str198.c, i8* %1728)
  %1730 = call i1 @nyx_string_equals(%nyx_string* %1727, %nyx_string* %1729)
  store i1 %1730, i1* %1722
  br label %sc_or_end588
sc_or_end588:
  %1731 = load i1, i1* %1722
  br i1 %1731, label %sc_or_end590, label %sc_or_rhs589
sc_or_rhs589:
  %1732 = load %nyx_string*, %nyx_string** %op.ptr
  %1733 = getelementptr [5 x i8], [5 x i8]* @.str199, i32 0, i32 0
  %1734 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str199.c, i8* %1733)
  %1735 = call i1 @nyx_string_equals(%nyx_string* %1732, %nyx_string* %1734)
  store i1 %1735, i1* %1721
  br label %sc_or_end590
sc_or_end590:
  %1736 = load i1, i1* %1721
  br i1 %1736, label %sc_or_end592, label %sc_or_rhs591
sc_or_rhs591:
  %1737 = load %nyx_string*, %nyx_string** %op.ptr
  %1738 = getelementptr [8 x i8], [8 x i8]* @.str200, i32 0, i32 0
  %1739 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str200.c, i8* %1738)
  %1740 = call i1 @nyx_string_equals(%nyx_string* %1737, %nyx_string* %1739)
  store i1 %1740, i1* %1720
  br label %sc_or_end592
sc_or_end592:
  %1741 = load i1, i1* %1720
  br i1 %1741, label %sc_or_end594, label %sc_or_rhs593
sc_or_rhs593:
  %1742 = load %nyx_string*, %nyx_string** %op.ptr
  %1743 = getelementptr [11 x i8], [11 x i8]* @.str201, i32 0, i32 0
  %1744 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str201.c, i8* %1743)
  %1745 = call i1 @nyx_string_equals(%nyx_string* %1742, %nyx_string* %1744)
  store i1 %1745, i1* %1719
  br label %sc_or_end594
sc_or_end594:
  %1746 = load i1, i1* %1719
  br i1 %1746, label %sc_or_end596, label %sc_or_rhs595
sc_or_rhs595:
  %1747 = load %nyx_string*, %nyx_string** %op.ptr
  %1748 = getelementptr [14 x i8], [14 x i8]* @.str202, i32 0, i32 0
  %1749 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str202.c, i8* %1748)
  %1750 = call i1 @nyx_string_equals(%nyx_string* %1747, %nyx_string* %1749)
  store i1 %1750, i1* %1718
  br label %sc_or_end596
sc_or_end596:
  %1751 = load i1, i1* %1718
  br i1 %1751, label %then597, label %else598
then597:
  %1752 = call { i64, i8* }* @ty_bool()
  ret { i64, i8* }* %1752
else598:
  br label %merge599
merge599:
  %1753 = alloca i1
  store i1 true, i1* %1753
  %1754 = alloca i1
  store i1 true, i1* %1754
  %1755 = alloca i1
  store i1 true, i1* %1755
  %1756 = alloca i1
  store i1 true, i1* %1756
  %1757 = load %nyx_string*, %nyx_string** %op.ptr
  %1758 = getelementptr [5 x i8], [5 x i8]* @.str203, i32 0, i32 0
  %1759 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str203.c, i8* %1758)
  %1760 = call i1 @nyx_string_equals(%nyx_string* %1757, %nyx_string* %1759)
  br i1 %1760, label %sc_or_end601, label %sc_or_rhs600
sc_or_rhs600:
  %1761 = load %nyx_string*, %nyx_string** %op.ptr
  %1762 = getelementptr [4 x i8], [4 x i8]* @.str204, i32 0, i32 0
  %1763 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str204.c, i8* %1762)
  %1764 = call i1 @nyx_string_equals(%nyx_string* %1761, %nyx_string* %1763)
  store i1 %1764, i1* %1756
  br label %sc_or_end601
sc_or_end601:
  %1765 = load i1, i1* %1756
  br i1 %1765, label %sc_or_end603, label %sc_or_rhs602
sc_or_rhs602:
  %1766 = load %nyx_string*, %nyx_string** %op.ptr
  %1767 = getelementptr [6 x i8], [6 x i8]* @.str205, i32 0, i32 0
  %1768 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str205.c, i8* %1767)
  %1769 = call i1 @nyx_string_equals(%nyx_string* %1766, %nyx_string* %1768)
  store i1 %1769, i1* %1755
  br label %sc_or_end603
sc_or_end603:
  %1770 = load i1, i1* %1755
  br i1 %1770, label %sc_or_end605, label %sc_or_rhs604
sc_or_rhs604:
  %1771 = load %nyx_string*, %nyx_string** %op.ptr
  %1772 = getelementptr [11 x i8], [11 x i8]* @.str206, i32 0, i32 0
  %1773 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str206.c, i8* %1772)
  %1774 = call i1 @nyx_string_equals(%nyx_string* %1771, %nyx_string* %1773)
  store i1 %1774, i1* %1754
  br label %sc_or_end605
sc_or_end605:
  %1775 = load i1, i1* %1754
  br i1 %1775, label %sc_or_end607, label %sc_or_rhs606
sc_or_rhs606:
  %1776 = load %nyx_string*, %nyx_string** %op.ptr
  %1777 = getelementptr [12 x i8], [12 x i8]* @.str207, i32 0, i32 0
  %1778 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str207.c, i8* %1777)
  %1779 = call i1 @nyx_string_equals(%nyx_string* %1776, %nyx_string* %1778)
  store i1 %1779, i1* %1753
  br label %sc_or_end607
sc_or_end607:
  %1780 = load i1, i1* %1753
  br i1 %1780, label %then608, label %else609
then608:
  %1781 = load { i64, i8* }*, { i64, i8* }** %lhs.ptr
  %1782 = call i1 @is_integer_like({ i64, i8* }* %1781)
  br i1 %1782, label %then611, label %else612
then611:
  %1783 = load { i64, i8* }*, { i64, i8* }** %rhs.ptr
  %1784 = call i1 @is_integer_like({ i64, i8* }* %1783)
  br i1 %1784, label %then614, label %else615
then614:
  %1785 = call { i64, i8* }* @ty_int()
  ret { i64, i8* }* %1785
else615:
  br label %merge616
merge616:
  br label %merge613
else612:
  br label %merge613
merge613:
  %1786 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1786
else609:
  br label %merge610
merge610:
  %1787 = load %nyx_string*, %nyx_string** %op.ptr
  %1788 = getelementptr [5 x i8], [5 x i8]* @.str208, i32 0, i32 0
  %1789 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str208.c, i8* %1788)
  %1790 = call i1 @nyx_string_equals(%nyx_string* %1787, %nyx_string* %1789)
  br i1 %1790, label %then617, label %else618
then617:
  %1791 = load { i64, i8* }*, { i64, i8* }** %lhs.ptr
  %1792 = call %nyx_string* @ty_kind({ i64, i8* }* %1791)
  %1793 = alloca %nyx_string*
  store %nyx_string* %1792, %nyx_string** %1793
  %1794 = load { i64, i8* }*, { i64, i8* }** %rhs.ptr
  %1795 = call %nyx_string* @ty_kind({ i64, i8* }* %1794)
  %1796 = alloca %nyx_string*
  store %nyx_string* %1795, %nyx_string** %1796
  %1797 = load %nyx_string*, %nyx_string** %1793
  %1798 = getelementptr [9 x i8], [9 x i8]* @.str209, i32 0, i32 0
  %1799 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str209.c, i8* %1798)
  %1800 = call i1 @nyx_string_equals(%nyx_string* %1797, %nyx_string* %1799)
  br i1 %1800, label %then620, label %else621
then620:
  %1801 = call { i64, i8* }* @ty_string()
  ret { i64, i8* }* %1801
else621:
  br label %merge622
merge622:
  %1802 = load %nyx_string*, %nyx_string** %1796
  %1803 = getelementptr [9 x i8], [9 x i8]* @.str210, i32 0, i32 0
  %1804 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str210.c, i8* %1803)
  %1805 = call i1 @nyx_string_equals(%nyx_string* %1802, %nyx_string* %1804)
  br i1 %1805, label %then623, label %else624
then623:
  %1806 = call { i64, i8* }* @ty_string()
  ret { i64, i8* }* %1806
else624:
  br label %merge625
merge625:
  br label %merge619
else618:
  br label %merge619
merge619:
  %1807 = alloca i1
  store i1 true, i1* %1807
  %1808 = alloca i1
  store i1 true, i1* %1808
  %1809 = alloca i1
  store i1 true, i1* %1809
  %1810 = alloca i1
  store i1 true, i1* %1810
  %1811 = alloca i1
  store i1 true, i1* %1811
  %1812 = load %nyx_string*, %nyx_string** %op.ptr
  %1813 = getelementptr [5 x i8], [5 x i8]* @.str211, i32 0, i32 0
  %1814 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str211.c, i8* %1813)
  %1815 = call i1 @nyx_string_equals(%nyx_string* %1812, %nyx_string* %1814)
  br i1 %1815, label %sc_or_end627, label %sc_or_rhs626
sc_or_rhs626:
  %1816 = load %nyx_string*, %nyx_string** %op.ptr
  %1817 = getelementptr [6 x i8], [6 x i8]* @.str212, i32 0, i32 0
  %1818 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str212.c, i8* %1817)
  %1819 = call i1 @nyx_string_equals(%nyx_string* %1816, %nyx_string* %1818)
  store i1 %1819, i1* %1811
  br label %sc_or_end627
sc_or_end627:
  %1820 = load i1, i1* %1811
  br i1 %1820, label %sc_or_end629, label %sc_or_rhs628
sc_or_rhs628:
  %1821 = load %nyx_string*, %nyx_string** %op.ptr
  %1822 = getelementptr [5 x i8], [5 x i8]* @.str213, i32 0, i32 0
  %1823 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str213.c, i8* %1822)
  %1824 = call i1 @nyx_string_equals(%nyx_string* %1821, %nyx_string* %1823)
  store i1 %1824, i1* %1810
  br label %sc_or_end629
sc_or_end629:
  %1825 = load i1, i1* %1810
  br i1 %1825, label %sc_or_end631, label %sc_or_rhs630
sc_or_rhs630:
  %1826 = load %nyx_string*, %nyx_string** %op.ptr
  %1827 = getelementptr [6 x i8], [6 x i8]* @.str214, i32 0, i32 0
  %1828 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str214.c, i8* %1827)
  %1829 = call i1 @nyx_string_equals(%nyx_string* %1826, %nyx_string* %1828)
  store i1 %1829, i1* %1809
  br label %sc_or_end631
sc_or_end631:
  %1830 = load i1, i1* %1809
  br i1 %1830, label %sc_or_end633, label %sc_or_rhs632
sc_or_rhs632:
  %1831 = load %nyx_string*, %nyx_string** %op.ptr
  %1832 = getelementptr [8 x i8], [8 x i8]* @.str215, i32 0, i32 0
  %1833 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str215.c, i8* %1832)
  %1834 = call i1 @nyx_string_equals(%nyx_string* %1831, %nyx_string* %1833)
  store i1 %1834, i1* %1808
  br label %sc_or_end633
sc_or_end633:
  %1835 = load i1, i1* %1808
  br i1 %1835, label %sc_or_end635, label %sc_or_rhs634
sc_or_rhs634:
  %1836 = load %nyx_string*, %nyx_string** %op.ptr
  %1837 = getelementptr [6 x i8], [6 x i8]* @.str216, i32 0, i32 0
  %1838 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str216.c, i8* %1837)
  %1839 = call i1 @nyx_string_equals(%nyx_string* %1836, %nyx_string* %1838)
  store i1 %1839, i1* %1807
  br label %sc_or_end635
sc_or_end635:
  %1840 = load i1, i1* %1807
  br i1 %1840, label %then636, label %else637
then636:
  %1841 = load { i64, i8* }*, { i64, i8* }** %lhs.ptr
  %1842 = call i1 @is_numeric_ty({ i64, i8* }* %1841)
  br i1 %1842, label %then639, label %else640
then639:
  %1843 = load { i64, i8* }*, { i64, i8* }** %rhs.ptr
  %1844 = call i1 @is_numeric_ty({ i64, i8* }* %1843)
  br i1 %1844, label %then642, label %else643
then642:
  %1845 = load { i64, i8* }*, { i64, i8* }** %lhs.ptr
  %1846 = call i1 @is_float_like({ i64, i8* }* %1845)
  br i1 %1846, label %then645, label %else646
then645:
  %1847 = call { i64, i8* }* @ty_float()
  ret { i64, i8* }* %1847
else646:
  br label %merge647
merge647:
  %1848 = load { i64, i8* }*, { i64, i8* }** %rhs.ptr
  %1849 = call i1 @is_float_like({ i64, i8* }* %1848)
  br i1 %1849, label %then648, label %else649
then648:
  %1850 = call { i64, i8* }* @ty_float()
  ret { i64, i8* }* %1850
else649:
  br label %merge650
merge650:
  %1851 = call { i64, i8* }* @ty_int()
  ret { i64, i8* }* %1851
else643:
  br label %merge644
merge644:
  br label %merge641
else640:
  br label %merge641
merge641:
  %1852 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1852
else637:
  br label %merge638
merge638:
  %1853 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1853
}

define internal i1 @is_in_param_names(
%nyx_string* %name.param, { i64, i8* }* %names.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %names.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %names.param, { i64, i8* }** %names.ptr
  %1854 = alloca i64
  store i64 0, i64* %1854
  br label %while_cond651
while_cond651:
  %1855 = load i64, i64* %1854
  %1856 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %1857 = call i64 @nyx_array_length({ i64, i8* }* %1856)
  %1858 = icmp slt i64 %1855, %1857
  br i1 %1858, label %while_body652, label %while_end653
while_body652:
  %1859 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %1860 = load i64, i64* %1854
  %1861 = call i64 @nyx_array_get({ i64, i8* }* %1859, i64 %1860)
  %1862 = inttoptr i64 %1861 to %nyx_string*
  %1863 = alloca %nyx_string*
  store %nyx_string* %1862, %nyx_string** %1863
  %1864 = load %nyx_string*, %nyx_string** %1863
  %1865 = load %nyx_string*, %nyx_string** %name.ptr
  %1866 = call i1 @nyx_string_equals(%nyx_string* %1864, %nyx_string* %1865)
  br i1 %1866, label %then654, label %else655
then654:
  ret i1 1
else655:
  br label %merge656
merge656:
  %1867 = load i64, i64* %1854
  %1868 = add i64 %1867, 1
  store i64 %1868, i64* %1854
  br label %while_cond651
while_end653:
  ret i1 0
}

define { i64, i8* }* @subst_apply(
{ i64, i8* }* %t.param, { i64, i8* }* %names.param, { i64, i8* }* %types.param) {
  %t.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %t.param, { i64, i8* }** %t.ptr
  %names.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %names.param, { i64, i8* }** %names.ptr
  %types.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %types.param, { i64, i8* }** %types.ptr
  %1869 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1870 = call %nyx_string* @ty_kind({ i64, i8* }* %1869)
  %1871 = alloca %nyx_string*
  store %nyx_string* %1870, %nyx_string** %1871
  %1872 = load %nyx_string*, %nyx_string** %1871
  %1873 = getelementptr [10 x i8], [10 x i8]* @.str217, i32 0, i32 0
  %1874 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str217.c, i8* %1873)
  %1875 = call i1 @nyx_string_equals(%nyx_string* %1872, %nyx_string* %1874)
  br i1 %1875, label %then657, label %else658
then657:
  %1876 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1877 = call i64 @nyx_array_get({ i64, i8* }* %1876, i64 1)
  %1878 = inttoptr i64 %1877 to %nyx_string*
  %1879 = alloca %nyx_string*
  store %nyx_string* %1878, %nyx_string** %1879
  %1880 = alloca i64
  store i64 0, i64* %1880
  br label %while_cond660
while_cond660:
  %1881 = load i64, i64* %1880
  %1882 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %1883 = call i64 @nyx_array_length({ i64, i8* }* %1882)
  %1884 = icmp slt i64 %1881, %1883
  br i1 %1884, label %while_body661, label %while_end662
while_body661:
  %1885 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %1886 = load i64, i64* %1880
  %1887 = call i64 @nyx_array_get({ i64, i8* }* %1885, i64 %1886)
  %1888 = inttoptr i64 %1887 to %nyx_string*
  %1889 = alloca %nyx_string*
  store %nyx_string* %1888, %nyx_string** %1889
  %1890 = load %nyx_string*, %nyx_string** %1889
  %1891 = load %nyx_string*, %nyx_string** %1879
  %1892 = call i1 @nyx_string_equals(%nyx_string* %1890, %nyx_string* %1891)
  br i1 %1892, label %then663, label %else664
then663:
  %1893 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %1894 = load i64, i64* %1880
  %1895 = call i64 @nyx_array_get({ i64, i8* }* %1893, i64 %1894)
  %1896 = inttoptr i64 %1895 to { i64, i8* }*
  %1897 = alloca { i64, i8* }*
  store { i64, i8* }* %1896, { i64, i8* }** %1897
  %1898 = load { i64, i8* }*, { i64, i8* }** %1897
  ret { i64, i8* }* %1898
else664:
  br label %merge665
merge665:
  %1899 = load i64, i64* %1880
  %1900 = add i64 %1899, 1
  store i64 %1900, i64* %1880
  br label %while_cond660
while_end662:
  %1901 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  ret { i64, i8* }* %1901
else658:
  br label %merge659
merge659:
  %1902 = load %nyx_string*, %nyx_string** %1871
  %1903 = getelementptr [8 x i8], [8 x i8]* @.str218, i32 0, i32 0
  %1904 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str218.c, i8* %1903)
  %1905 = call i1 @nyx_string_equals(%nyx_string* %1902, %nyx_string* %1904)
  br i1 %1905, label %then666, label %else667
then666:
  %1906 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1907 = call i64 @nyx_array_get({ i64, i8* }* %1906, i64 1)
  %1908 = inttoptr i64 %1907 to { i64, i8* }*
  %1909 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %1910 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %1911 = call { i64, i8* }* @subst_apply({ i64, i8* }* %1908, { i64, i8* }* %1909, { i64, i8* }* %1910)
  %1912 = call { i64, i8* }* @ty_array({ i64, i8* }* %1911)
  ret { i64, i8* }* %1912
else667:
  br label %merge668
merge668:
  %1913 = load %nyx_string*, %nyx_string** %1871
  %1914 = getelementptr [9 x i8], [9 x i8]* @.str219, i32 0, i32 0
  %1915 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str219.c, i8* %1914)
  %1916 = call i1 @nyx_string_equals(%nyx_string* %1913, %nyx_string* %1915)
  br i1 %1916, label %then669, label %else670
then669:
  %1917 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1918 = call i64 @nyx_array_get({ i64, i8* }* %1917, i64 1)
  %1919 = inttoptr i64 %1918 to { i64, i8* }*
  %1920 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %1921 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %1922 = call { i64, i8* }* @subst_apply({ i64, i8* }* %1919, { i64, i8* }* %1920, { i64, i8* }* %1921)
  %1923 = call { i64, i8* }* @ty_option({ i64, i8* }* %1922)
  ret { i64, i8* }* %1923
else670:
  br label %merge671
merge671:
  %1924 = load %nyx_string*, %nyx_string** %1871
  %1925 = getelementptr [6 x i8], [6 x i8]* @.str220, i32 0, i32 0
  %1926 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str220.c, i8* %1925)
  %1927 = call i1 @nyx_string_equals(%nyx_string* %1924, %nyx_string* %1926)
  br i1 %1927, label %then672, label %else673
then672:
  %1928 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1929 = call i64 @nyx_array_get({ i64, i8* }* %1928, i64 1)
  %1930 = inttoptr i64 %1929 to { i64, i8* }*
  %1931 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %1932 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %1933 = call { i64, i8* }* @subst_apply({ i64, i8* }* %1930, { i64, i8* }* %1931, { i64, i8* }* %1932)
  %1934 = call { i64, i8* }* @ty_ptr({ i64, i8* }* %1933)
  ret { i64, i8* }* %1934
else673:
  br label %merge674
merge674:
  %1935 = load %nyx_string*, %nyx_string** %1871
  %1936 = getelementptr [6 x i8], [6 x i8]* @.str221, i32 0, i32 0
  %1937 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str221.c, i8* %1936)
  %1938 = call i1 @nyx_string_equals(%nyx_string* %1935, %nyx_string* %1937)
  br i1 %1938, label %then675, label %else676
then675:
  %1939 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1940 = call i64 @nyx_array_get({ i64, i8* }* %1939, i64 1)
  %1941 = inttoptr i64 %1940 to { i64, i8* }*
  %1942 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %1943 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %1944 = call { i64, i8* }* @subst_apply({ i64, i8* }* %1941, { i64, i8* }* %1942, { i64, i8* }* %1943)
  %1945 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1946 = call %nyx_string* @ty_ref_region({ i64, i8* }* %1945)
  %1947 = call { i64, i8* }* @ty_ref_r({ i64, i8* }* %1944, %nyx_string* %1946)
  ret { i64, i8* }* %1947
else676:
  br label %merge677
merge677:
  %1948 = load %nyx_string*, %nyx_string** %1871
  %1949 = getelementptr [9 x i8], [9 x i8]* @.str222, i32 0, i32 0
  %1950 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str222.c, i8* %1949)
  %1951 = call i1 @nyx_string_equals(%nyx_string* %1948, %nyx_string* %1950)
  br i1 %1951, label %then678, label %else679
then678:
  %1952 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1953 = call i64 @nyx_array_get({ i64, i8* }* %1952, i64 1)
  %1954 = inttoptr i64 %1953 to { i64, i8* }*
  %1955 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %1956 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %1957 = call { i64, i8* }* @subst_apply({ i64, i8* }* %1954, { i64, i8* }* %1955, { i64, i8* }* %1956)
  %1958 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1959 = call %nyx_string* @ty_ref_region({ i64, i8* }* %1958)
  %1960 = call { i64, i8* }* @ty_ref_mut_r({ i64, i8* }* %1957, %nyx_string* %1959)
  ret { i64, i8* }* %1960
else679:
  br label %merge680
merge680:
  %1961 = load %nyx_string*, %nyx_string** %1871
  %1962 = getelementptr [9 x i8], [9 x i8]* @.str223, i32 0, i32 0
  %1963 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str223.c, i8* %1962)
  %1964 = call i1 @nyx_string_equals(%nyx_string* %1961, %nyx_string* %1963)
  br i1 %1964, label %then681, label %else682
then681:
  %1965 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1966 = call i64 @nyx_array_get({ i64, i8* }* %1965, i64 1)
  %1967 = inttoptr i64 %1966 to { i64, i8* }*
  %1968 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %1969 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %1970 = call { i64, i8* }* @subst_apply({ i64, i8* }* %1967, { i64, i8* }* %1968, { i64, i8* }* %1969)
  %1971 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1972 = call i64 @nyx_array_get({ i64, i8* }* %1971, i64 2)
  %1973 = inttoptr i64 %1972 to { i64, i8* }*
  %1974 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %1975 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %1976 = call { i64, i8* }* @subst_apply({ i64, i8* }* %1973, { i64, i8* }* %1974, { i64, i8* }* %1975)
  %1977 = call { i64, i8* }* @ty_result({ i64, i8* }* %1970, { i64, i8* }* %1976)
  ret { i64, i8* }* %1977
else682:
  br label %merge683
merge683:
  %1978 = load %nyx_string*, %nyx_string** %1871
  %1979 = getelementptr [6 x i8], [6 x i8]* @.str224, i32 0, i32 0
  %1980 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str224.c, i8* %1979)
  %1981 = call i1 @nyx_string_equals(%nyx_string* %1978, %nyx_string* %1980)
  br i1 %1981, label %then684, label %else685
then684:
  %1982 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1983 = call i64 @nyx_array_get({ i64, i8* }* %1982, i64 1)
  %1984 = inttoptr i64 %1983 to { i64, i8* }*
  %1985 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %1986 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %1987 = call { i64, i8* }* @subst_apply({ i64, i8* }* %1984, { i64, i8* }* %1985, { i64, i8* }* %1986)
  %1988 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1989 = call i64 @nyx_array_get({ i64, i8* }* %1988, i64 2)
  %1990 = inttoptr i64 %1989 to { i64, i8* }*
  %1991 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %1992 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %1993 = call { i64, i8* }* @subst_apply({ i64, i8* }* %1990, { i64, i8* }* %1991, { i64, i8* }* %1992)
  %1994 = call { i64, i8* }* @ty_map({ i64, i8* }* %1987, { i64, i8* }* %1993)
  ret { i64, i8* }* %1994
else685:
  br label %merge686
merge686:
  %1995 = load %nyx_string*, %nyx_string** %1871
  %1996 = getelementptr [5 x i8], [5 x i8]* @.str225, i32 0, i32 0
  %1997 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str225.c, i8* %1996)
  %1998 = call i1 @nyx_string_equals(%nyx_string* %1995, %nyx_string* %1997)
  br i1 %1998, label %then687, label %else688
then687:
  %1999 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %2000 = call i64 @nyx_array_get({ i64, i8* }* %1999, i64 1)
  %2001 = inttoptr i64 %2000 to { i64, i8* }*
  %2002 = alloca { i64, i8* }*
  store { i64, i8* }* %2001, { i64, i8* }** %2002
  %2003 = call { i64, i8* }* @nyx_array_new_ptr()
  %2004 = alloca { i64, i8* }*
  store { i64, i8* }* %2003, { i64, i8* }** %2004
  %2005 = alloca i64
  store i64 0, i64* %2005
  br label %while_cond690
while_cond690:
  %2006 = load i64, i64* %2005
  %2007 = load { i64, i8* }*, { i64, i8* }** %2002
  %2008 = call i64 @nyx_array_length({ i64, i8* }* %2007)
  %2009 = icmp slt i64 %2006, %2008
  br i1 %2009, label %while_body691, label %while_end692
while_body691:
  %2010 = load { i64, i8* }*, { i64, i8* }** %2002
  %2011 = load i64, i64* %2005
  %2012 = call i64 @nyx_array_get({ i64, i8* }* %2010, i64 %2011)
  %2013 = inttoptr i64 %2012 to { i64, i8* }*
  %2014 = alloca { i64, i8* }*
  store { i64, i8* }* %2013, { i64, i8* }** %2014
  %2015 = load { i64, i8* }*, { i64, i8* }** %2004
  %2016 = load { i64, i8* }*, { i64, i8* }** %2014
  %2017 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %2018 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %2019 = call { i64, i8* }* @subst_apply({ i64, i8* }* %2016, { i64, i8* }* %2017, { i64, i8* }* %2018)
  %2020 = ptrtoint { i64, i8* }* %2019 to i64
  call void @nyx_array_push({ i64, i8* }* %2015, i64 %2020)
  %2021 = load i64, i64* %2005
  %2022 = add i64 %2021, 1
  store i64 %2022, i64* %2005
  br label %while_cond690
while_end692:
  %2023 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %2024 = call i64 @nyx_array_get({ i64, i8* }* %2023, i64 2)
  %2025 = inttoptr i64 %2024 to { i64, i8* }*
  %2026 = alloca { i64, i8* }*
  store { i64, i8* }* %2025, { i64, i8* }** %2026
  %2027 = load { i64, i8* }*, { i64, i8* }** %2004
  %2028 = load { i64, i8* }*, { i64, i8* }** %2026
  %2029 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %2030 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %2031 = call { i64, i8* }* @subst_apply({ i64, i8* }* %2028, { i64, i8* }* %2029, { i64, i8* }* %2030)
  %2032 = call { i64, i8* }* @ty_fn({ i64, i8* }* %2027, { i64, i8* }* %2031)
  ret { i64, i8* }* %2032
else688:
  br label %merge689
merge689:
  %2033 = load %nyx_string*, %nyx_string** %1871
  %2034 = getelementptr [9 x i8], [9 x i8]* @.str226, i32 0, i32 0
  %2035 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str226.c, i8* %2034)
  %2036 = call i1 @nyx_string_equals(%nyx_string* %2033, %nyx_string* %2035)
  br i1 %2036, label %then693, label %else694
then693:
  %2037 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %2038 = call i64 @nyx_array_get({ i64, i8* }* %2037, i64 1)
  %2039 = inttoptr i64 %2038 to %nyx_string*
  %2040 = alloca %nyx_string*
  store %nyx_string* %2039, %nyx_string** %2040
  %2041 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %2042 = call i64 @nyx_array_get({ i64, i8* }* %2041, i64 2)
  %2043 = inttoptr i64 %2042 to { i64, i8* }*
  %2044 = alloca { i64, i8* }*
  store { i64, i8* }* %2043, { i64, i8* }** %2044
  %2045 = call { i64, i8* }* @nyx_array_new_ptr()
  %2046 = alloca { i64, i8* }*
  store { i64, i8* }* %2045, { i64, i8* }** %2046
  %2047 = alloca i64
  store i64 0, i64* %2047
  br label %while_cond696
while_cond696:
  %2048 = load i64, i64* %2047
  %2049 = load { i64, i8* }*, { i64, i8* }** %2044
  %2050 = call i64 @nyx_array_length({ i64, i8* }* %2049)
  %2051 = icmp slt i64 %2048, %2050
  br i1 %2051, label %while_body697, label %while_end698
while_body697:
  %2052 = load { i64, i8* }*, { i64, i8* }** %2044
  %2053 = load i64, i64* %2047
  %2054 = call i64 @nyx_array_get({ i64, i8* }* %2052, i64 %2053)
  %2055 = inttoptr i64 %2054 to { i64, i8* }*
  %2056 = alloca { i64, i8* }*
  store { i64, i8* }* %2055, { i64, i8* }** %2056
  %2057 = load { i64, i8* }*, { i64, i8* }** %2046
  %2058 = load { i64, i8* }*, { i64, i8* }** %2056
  %2059 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %2060 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %2061 = call { i64, i8* }* @subst_apply({ i64, i8* }* %2058, { i64, i8* }* %2059, { i64, i8* }* %2060)
  %2062 = ptrtoint { i64, i8* }* %2061 to i64
  call void @nyx_array_push({ i64, i8* }* %2057, i64 %2062)
  %2063 = load i64, i64* %2047
  %2064 = add i64 %2063, 1
  store i64 %2064, i64* %2047
  br label %while_cond696
while_end698:
  %2065 = load %nyx_string*, %nyx_string** %2040
  %2066 = load { i64, i8* }*, { i64, i8* }** %2046
  %2067 = call { i64, i8* }* @ty_struct_ty(%nyx_string* %2065, { i64, i8* }* %2066)
  ret { i64, i8* }* %2067
else694:
  br label %merge695
merge695:
  %2068 = load %nyx_string*, %nyx_string** %1871
  %2069 = getelementptr [7 x i8], [7 x i8]* @.str227, i32 0, i32 0
  %2070 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str227.c, i8* %2069)
  %2071 = call i1 @nyx_string_equals(%nyx_string* %2068, %nyx_string* %2070)
  br i1 %2071, label %then699, label %else700
then699:
  %2072 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %2073 = call i64 @nyx_array_get({ i64, i8* }* %2072, i64 1)
  %2074 = inttoptr i64 %2073 to %nyx_string*
  %2075 = alloca %nyx_string*
  store %nyx_string* %2074, %nyx_string** %2075
  %2076 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %2077 = call i64 @nyx_array_get({ i64, i8* }* %2076, i64 2)
  %2078 = inttoptr i64 %2077 to { i64, i8* }*
  %2079 = alloca { i64, i8* }*
  store { i64, i8* }* %2078, { i64, i8* }** %2079
  %2080 = call { i64, i8* }* @nyx_array_new_ptr()
  %2081 = alloca { i64, i8* }*
  store { i64, i8* }* %2080, { i64, i8* }** %2081
  %2082 = alloca i64
  store i64 0, i64* %2082
  br label %while_cond702
while_cond702:
  %2083 = load i64, i64* %2082
  %2084 = load { i64, i8* }*, { i64, i8* }** %2079
  %2085 = call i64 @nyx_array_length({ i64, i8* }* %2084)
  %2086 = icmp slt i64 %2083, %2085
  br i1 %2086, label %while_body703, label %while_end704
while_body703:
  %2087 = load { i64, i8* }*, { i64, i8* }** %2079
  %2088 = load i64, i64* %2082
  %2089 = call i64 @nyx_array_get({ i64, i8* }* %2087, i64 %2088)
  %2090 = inttoptr i64 %2089 to { i64, i8* }*
  %2091 = alloca { i64, i8* }*
  store { i64, i8* }* %2090, { i64, i8* }** %2091
  %2092 = load { i64, i8* }*, { i64, i8* }** %2081
  %2093 = load { i64, i8* }*, { i64, i8* }** %2091
  %2094 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %2095 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %2096 = call { i64, i8* }* @subst_apply({ i64, i8* }* %2093, { i64, i8* }* %2094, { i64, i8* }* %2095)
  %2097 = ptrtoint { i64, i8* }* %2096 to i64
  call void @nyx_array_push({ i64, i8* }* %2092, i64 %2097)
  %2098 = load i64, i64* %2082
  %2099 = add i64 %2098, 1
  store i64 %2099, i64* %2082
  br label %while_cond702
while_end704:
  %2100 = load %nyx_string*, %nyx_string** %2075
  %2101 = load { i64, i8* }*, { i64, i8* }** %2081
  %2102 = call { i64, i8* }* @ty_enum_ty(%nyx_string* %2100, { i64, i8* }* %2101)
  ret { i64, i8* }* %2102
else700:
  br label %merge701
merge701:
  %2103 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  ret { i64, i8* }* %2103
}

define i1 @unify(
{ i64, i8* }* %param_ty.param, { i64, i8* }* %arg_ty.param, { i64, i8* }* %type_param_names.param, { i64, i8* }* %names_out.param, { i64, i8* }* %types_out.param) {
  %param_ty.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %param_ty.param, { i64, i8* }** %param_ty.ptr
  %arg_ty.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arg_ty.param, { i64, i8* }** %arg_ty.ptr
  %type_param_names.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %type_param_names.param, { i64, i8* }** %type_param_names.ptr
  %names_out.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %names_out.param, { i64, i8* }** %names_out.ptr
  %types_out.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %types_out.param, { i64, i8* }** %types_out.ptr
  %2104 = load { i64, i8* }*, { i64, i8* }** %param_ty.ptr
  %2105 = call %nyx_string* @ty_kind({ i64, i8* }* %2104)
  %2106 = alloca %nyx_string*
  store %nyx_string* %2105, %nyx_string** %2106
  %2107 = load { i64, i8* }*, { i64, i8* }** %arg_ty.ptr
  %2108 = call %nyx_string* @ty_kind({ i64, i8* }* %2107)
  %2109 = alloca %nyx_string*
  store %nyx_string* %2108, %nyx_string** %2109
  %2110 = load %nyx_string*, %nyx_string** %2109
  %2111 = getelementptr [10 x i8], [10 x i8]* @.str228, i32 0, i32 0
  %2112 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str228.c, i8* %2111)
  %2113 = call i1 @nyx_string_equals(%nyx_string* %2110, %nyx_string* %2112)
  br i1 %2113, label %then705, label %else706
then705:
  ret i1 1
else706:
  br label %merge707
merge707:
  %2114 = load %nyx_string*, %nyx_string** %2106
  %2115 = getelementptr [10 x i8], [10 x i8]* @.str229, i32 0, i32 0
  %2116 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str229.c, i8* %2115)
  %2117 = call i1 @nyx_string_equals(%nyx_string* %2114, %nyx_string* %2116)
  br i1 %2117, label %then708, label %else709
then708:
  ret i1 1
else709:
  br label %merge710
merge710:
  %2118 = load %nyx_string*, %nyx_string** %2109
  %2119 = getelementptr [6 x i8], [6 x i8]* @.str230, i32 0, i32 0
  %2120 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str230.c, i8* %2119)
  %2121 = call i1 @nyx_string_equals(%nyx_string* %2118, %nyx_string* %2120)
  br i1 %2121, label %then711, label %else712
then711:
  ret i1 1
else712:
  br label %merge713
merge713:
  %2122 = load %nyx_string*, %nyx_string** %2106
  %2123 = getelementptr [6 x i8], [6 x i8]* @.str231, i32 0, i32 0
  %2124 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str231.c, i8* %2123)
  %2125 = call i1 @nyx_string_equals(%nyx_string* %2122, %nyx_string* %2124)
  br i1 %2125, label %then714, label %else715
then714:
  ret i1 1
else715:
  br label %merge716
merge716:
  %2126 = load %nyx_string*, %nyx_string** %2106
  %2127 = getelementptr [10 x i8], [10 x i8]* @.str232, i32 0, i32 0
  %2128 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str232.c, i8* %2127)
  %2129 = call i1 @nyx_string_equals(%nyx_string* %2126, %nyx_string* %2128)
  br i1 %2129, label %then717, label %else718
then717:
  %2130 = load { i64, i8* }*, { i64, i8* }** %param_ty.ptr
  %2131 = call i64 @nyx_array_get({ i64, i8* }* %2130, i64 1)
  %2132 = inttoptr i64 %2131 to %nyx_string*
  %2133 = alloca %nyx_string*
  store %nyx_string* %2132, %nyx_string** %2133
  %2134 = load %nyx_string*, %nyx_string** %2133
  %2135 = load { i64, i8* }*, { i64, i8* }** %type_param_names.ptr
  %2136 = call i1 @is_in_param_names(%nyx_string* %2134, { i64, i8* }* %2135)
  br i1 %2136, label %then720, label %else721
then720:
  %2137 = alloca i64
  store i64 0, i64* %2137
  br label %while_cond723
while_cond723:
  %2138 = load i64, i64* %2137
  %2139 = load { i64, i8* }*, { i64, i8* }** %names_out.ptr
  %2140 = call i64 @nyx_array_length({ i64, i8* }* %2139)
  %2141 = icmp slt i64 %2138, %2140
  br i1 %2141, label %while_body724, label %while_end725
while_body724:
  %2142 = load { i64, i8* }*, { i64, i8* }** %names_out.ptr
  %2143 = load i64, i64* %2137
  %2144 = call i64 @nyx_array_get({ i64, i8* }* %2142, i64 %2143)
  %2145 = inttoptr i64 %2144 to %nyx_string*
  %2146 = alloca %nyx_string*
  store %nyx_string* %2145, %nyx_string** %2146
  %2147 = load %nyx_string*, %nyx_string** %2146
  %2148 = load %nyx_string*, %nyx_string** %2133
  %2149 = call i1 @nyx_string_equals(%nyx_string* %2147, %nyx_string* %2148)
  br i1 %2149, label %then726, label %else727
then726:
  %2150 = load { i64, i8* }*, { i64, i8* }** %types_out.ptr
  %2151 = load i64, i64* %2137
  %2152 = call i64 @nyx_array_get({ i64, i8* }* %2150, i64 %2151)
  %2153 = inttoptr i64 %2152 to { i64, i8* }*
  %2154 = alloca { i64, i8* }*
  store { i64, i8* }* %2153, { i64, i8* }** %2154
  %2155 = load { i64, i8* }*, { i64, i8* }** %2154
  %2156 = load { i64, i8* }*, { i64, i8* }** %arg_ty.ptr
  %2157 = call i1 @ty_eq({ i64, i8* }* %2155, { i64, i8* }* %2156)
  ret i1 %2157
else727:
  br label %merge728
merge728:
  %2158 = load i64, i64* %2137
  %2159 = add i64 %2158, 1
  store i64 %2159, i64* %2137
  br label %while_cond723
while_end725:
  %2160 = load { i64, i8* }*, { i64, i8* }** %names_out.ptr
  %2161 = load %nyx_string*, %nyx_string** %2133
  %2162 = ptrtoint %nyx_string* %2161 to i64
  call void @nyx_array_push({ i64, i8* }* %2160, i64 %2162)
  %2163 = load { i64, i8* }*, { i64, i8* }** %types_out.ptr
  %2164 = load { i64, i8* }*, { i64, i8* }** %arg_ty.ptr
  %2165 = ptrtoint { i64, i8* }* %2164 to i64
  call void @nyx_array_push({ i64, i8* }* %2163, i64 %2165)
  ret i1 1
else721:
  br label %merge722
merge722:
  ret i1 1
else718:
  br label %merge719
merge719:
  %2166 = load %nyx_string*, %nyx_string** %2109
  %2167 = getelementptr [10 x i8], [10 x i8]* @.str233, i32 0, i32 0
  %2168 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str233.c, i8* %2167)
  %2169 = call i1 @nyx_string_equals(%nyx_string* %2166, %nyx_string* %2168)
  br i1 %2169, label %then729, label %else730
then729:
  ret i1 1
else730:
  br label %merge731
merge731:
  %2170 = load %nyx_string*, %nyx_string** %2106
  %2171 = load %nyx_string*, %nyx_string** %2109
  %2172 = call i1 @nyx_string_equals(%nyx_string* %2170, %nyx_string* %2171)
  br i1 %2172, label %then732, label %else733
then732:
  %2173 = alloca i1
  store i1 true, i1* %2173
  %2174 = alloca i1
  store i1 true, i1* %2174
  %2175 = alloca i1
  store i1 true, i1* %2175
  %2176 = alloca i1
  store i1 true, i1* %2176
  %2177 = load %nyx_string*, %nyx_string** %2106
  %2178 = getelementptr [8 x i8], [8 x i8]* @.str234, i32 0, i32 0
  %2179 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str234.c, i8* %2178)
  %2180 = call i1 @nyx_string_equals(%nyx_string* %2177, %nyx_string* %2179)
  br i1 %2180, label %sc_or_end736, label %sc_or_rhs735
sc_or_rhs735:
  %2181 = load %nyx_string*, %nyx_string** %2106
  %2182 = getelementptr [9 x i8], [9 x i8]* @.str235, i32 0, i32 0
  %2183 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str235.c, i8* %2182)
  %2184 = call i1 @nyx_string_equals(%nyx_string* %2181, %nyx_string* %2183)
  store i1 %2184, i1* %2176
  br label %sc_or_end736
sc_or_end736:
  %2185 = load i1, i1* %2176
  br i1 %2185, label %sc_or_end738, label %sc_or_rhs737
sc_or_rhs737:
  %2186 = load %nyx_string*, %nyx_string** %2106
  %2187 = getelementptr [6 x i8], [6 x i8]* @.str236, i32 0, i32 0
  %2188 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str236.c, i8* %2187)
  %2189 = call i1 @nyx_string_equals(%nyx_string* %2186, %nyx_string* %2188)
  store i1 %2189, i1* %2175
  br label %sc_or_end738
sc_or_end738:
  %2190 = load i1, i1* %2175
  br i1 %2190, label %sc_or_end740, label %sc_or_rhs739
sc_or_rhs739:
  %2191 = load %nyx_string*, %nyx_string** %2106
  %2192 = getelementptr [6 x i8], [6 x i8]* @.str237, i32 0, i32 0
  %2193 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str237.c, i8* %2192)
  %2194 = call i1 @nyx_string_equals(%nyx_string* %2191, %nyx_string* %2193)
  store i1 %2194, i1* %2174
  br label %sc_or_end740
sc_or_end740:
  %2195 = load i1, i1* %2174
  br i1 %2195, label %sc_or_end742, label %sc_or_rhs741
sc_or_rhs741:
  %2196 = load %nyx_string*, %nyx_string** %2106
  %2197 = getelementptr [9 x i8], [9 x i8]* @.str238, i32 0, i32 0
  %2198 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str238.c, i8* %2197)
  %2199 = call i1 @nyx_string_equals(%nyx_string* %2196, %nyx_string* %2198)
  store i1 %2199, i1* %2173
  br label %sc_or_end742
sc_or_end742:
  %2200 = load i1, i1* %2173
  br i1 %2200, label %then743, label %else744
then743:
  %2201 = load { i64, i8* }*, { i64, i8* }** %param_ty.ptr
  %2202 = call i64 @nyx_array_get({ i64, i8* }* %2201, i64 1)
  %2203 = inttoptr i64 %2202 to { i64, i8* }*
  %2204 = alloca { i64, i8* }*
  store { i64, i8* }* %2203, { i64, i8* }** %2204
  %2205 = load { i64, i8* }*, { i64, i8* }** %arg_ty.ptr
  %2206 = call i64 @nyx_array_get({ i64, i8* }* %2205, i64 1)
  %2207 = inttoptr i64 %2206 to { i64, i8* }*
  %2208 = alloca { i64, i8* }*
  store { i64, i8* }* %2207, { i64, i8* }** %2208
  %2209 = load { i64, i8* }*, { i64, i8* }** %2204
  %2210 = load { i64, i8* }*, { i64, i8* }** %2208
  %2211 = load { i64, i8* }*, { i64, i8* }** %type_param_names.ptr
  %2212 = load { i64, i8* }*, { i64, i8* }** %names_out.ptr
  %2213 = load { i64, i8* }*, { i64, i8* }** %types_out.ptr
  %2214 = call i1 @unify({ i64, i8* }* %2209, { i64, i8* }* %2210, { i64, i8* }* %2211, { i64, i8* }* %2212, { i64, i8* }* %2213)
  ret i1 %2214
else744:
  br label %merge745
merge745:
  %2215 = alloca i1
  store i1 true, i1* %2215
  %2216 = load %nyx_string*, %nyx_string** %2106
  %2217 = getelementptr [9 x i8], [9 x i8]* @.str239, i32 0, i32 0
  %2218 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str239.c, i8* %2217)
  %2219 = call i1 @nyx_string_equals(%nyx_string* %2216, %nyx_string* %2218)
  br i1 %2219, label %sc_or_end747, label %sc_or_rhs746
sc_or_rhs746:
  %2220 = load %nyx_string*, %nyx_string** %2106
  %2221 = getelementptr [6 x i8], [6 x i8]* @.str240, i32 0, i32 0
  %2222 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str240.c, i8* %2221)
  %2223 = call i1 @nyx_string_equals(%nyx_string* %2220, %nyx_string* %2222)
  store i1 %2223, i1* %2215
  br label %sc_or_end747
sc_or_end747:
  %2224 = load i1, i1* %2215
  br i1 %2224, label %then748, label %else749
then748:
  %2225 = load { i64, i8* }*, { i64, i8* }** %param_ty.ptr
  %2226 = call i64 @nyx_array_get({ i64, i8* }* %2225, i64 1)
  %2227 = inttoptr i64 %2226 to { i64, i8* }*
  %2228 = alloca { i64, i8* }*
  store { i64, i8* }* %2227, { i64, i8* }** %2228
  %2229 = load { i64, i8* }*, { i64, i8* }** %arg_ty.ptr
  %2230 = call i64 @nyx_array_get({ i64, i8* }* %2229, i64 1)
  %2231 = inttoptr i64 %2230 to { i64, i8* }*
  %2232 = alloca { i64, i8* }*
  store { i64, i8* }* %2231, { i64, i8* }** %2232
  %2233 = load { i64, i8* }*, { i64, i8* }** %2228
  %2234 = load { i64, i8* }*, { i64, i8* }** %2232
  %2235 = load { i64, i8* }*, { i64, i8* }** %type_param_names.ptr
  %2236 = load { i64, i8* }*, { i64, i8* }** %names_out.ptr
  %2237 = load { i64, i8* }*, { i64, i8* }** %types_out.ptr
  %2238 = call i1 @unify({ i64, i8* }* %2233, { i64, i8* }* %2234, { i64, i8* }* %2235, { i64, i8* }* %2236, { i64, i8* }* %2237)
  %2239 = xor i1 %2238, true
  br i1 %2239, label %then751, label %else752
then751:
  ret i1 0
else752:
  br label %merge753
merge753:
  %2240 = load { i64, i8* }*, { i64, i8* }** %param_ty.ptr
  %2241 = call i64 @nyx_array_get({ i64, i8* }* %2240, i64 2)
  %2242 = inttoptr i64 %2241 to { i64, i8* }*
  %2243 = alloca { i64, i8* }*
  store { i64, i8* }* %2242, { i64, i8* }** %2243
  %2244 = load { i64, i8* }*, { i64, i8* }** %arg_ty.ptr
  %2245 = call i64 @nyx_array_get({ i64, i8* }* %2244, i64 2)
  %2246 = inttoptr i64 %2245 to { i64, i8* }*
  %2247 = alloca { i64, i8* }*
  store { i64, i8* }* %2246, { i64, i8* }** %2247
  %2248 = load { i64, i8* }*, { i64, i8* }** %2243
  %2249 = load { i64, i8* }*, { i64, i8* }** %2247
  %2250 = load { i64, i8* }*, { i64, i8* }** %type_param_names.ptr
  %2251 = load { i64, i8* }*, { i64, i8* }** %names_out.ptr
  %2252 = load { i64, i8* }*, { i64, i8* }** %types_out.ptr
  %2253 = call i1 @unify({ i64, i8* }* %2248, { i64, i8* }* %2249, { i64, i8* }* %2250, { i64, i8* }* %2251, { i64, i8* }* %2252)
  ret i1 %2253
else749:
  br label %merge750
merge750:
  %2254 = load %nyx_string*, %nyx_string** %2106
  %2255 = getelementptr [5 x i8], [5 x i8]* @.str241, i32 0, i32 0
  %2256 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str241.c, i8* %2255)
  %2257 = call i1 @nyx_string_equals(%nyx_string* %2254, %nyx_string* %2256)
  br i1 %2257, label %then754, label %else755
then754:
  %2258 = load { i64, i8* }*, { i64, i8* }** %param_ty.ptr
  %2259 = call i64 @nyx_array_get({ i64, i8* }* %2258, i64 1)
  %2260 = inttoptr i64 %2259 to { i64, i8* }*
  %2261 = alloca { i64, i8* }*
  store { i64, i8* }* %2260, { i64, i8* }** %2261
  %2262 = load { i64, i8* }*, { i64, i8* }** %arg_ty.ptr
  %2263 = call i64 @nyx_array_get({ i64, i8* }* %2262, i64 1)
  %2264 = inttoptr i64 %2263 to { i64, i8* }*
  %2265 = alloca { i64, i8* }*
  store { i64, i8* }* %2264, { i64, i8* }** %2265
  %2266 = load { i64, i8* }*, { i64, i8* }** %2261
  %2267 = call i64 @nyx_array_length({ i64, i8* }* %2266)
  %2268 = load { i64, i8* }*, { i64, i8* }** %2265
  %2269 = call i64 @nyx_array_length({ i64, i8* }* %2268)
  %2270 = icmp ne i64 %2267, %2269
  br i1 %2270, label %then757, label %else758
then757:
  ret i1 0
else758:
  br label %merge759
merge759:
  %2271 = alloca i64
  store i64 0, i64* %2271
  br label %while_cond760
while_cond760:
  %2272 = load i64, i64* %2271
  %2273 = load { i64, i8* }*, { i64, i8* }** %2261
  %2274 = call i64 @nyx_array_length({ i64, i8* }* %2273)
  %2275 = icmp slt i64 %2272, %2274
  br i1 %2275, label %while_body761, label %while_end762
while_body761:
  %2276 = load { i64, i8* }*, { i64, i8* }** %2261
  %2277 = load i64, i64* %2271
  %2278 = call i64 @nyx_array_get({ i64, i8* }* %2276, i64 %2277)
  %2279 = inttoptr i64 %2278 to { i64, i8* }*
  %2280 = alloca { i64, i8* }*
  store { i64, i8* }* %2279, { i64, i8* }** %2280
  %2281 = load { i64, i8* }*, { i64, i8* }** %2265
  %2282 = load i64, i64* %2271
  %2283 = call i64 @nyx_array_get({ i64, i8* }* %2281, i64 %2282)
  %2284 = inttoptr i64 %2283 to { i64, i8* }*
  %2285 = alloca { i64, i8* }*
  store { i64, i8* }* %2284, { i64, i8* }** %2285
  %2286 = load { i64, i8* }*, { i64, i8* }** %2280
  %2287 = load { i64, i8* }*, { i64, i8* }** %2285
  %2288 = load { i64, i8* }*, { i64, i8* }** %type_param_names.ptr
  %2289 = load { i64, i8* }*, { i64, i8* }** %names_out.ptr
  %2290 = load { i64, i8* }*, { i64, i8* }** %types_out.ptr
  %2291 = call i1 @unify({ i64, i8* }* %2286, { i64, i8* }* %2287, { i64, i8* }* %2288, { i64, i8* }* %2289, { i64, i8* }* %2290)
  %2292 = xor i1 %2291, true
  br i1 %2292, label %then763, label %else764
then763:
  ret i1 0
else764:
  br label %merge765
merge765:
  %2293 = load i64, i64* %2271
  %2294 = add i64 %2293, 1
  store i64 %2294, i64* %2271
  br label %while_cond760
while_end762:
  %2295 = load { i64, i8* }*, { i64, i8* }** %param_ty.ptr
  %2296 = call i64 @nyx_array_get({ i64, i8* }* %2295, i64 2)
  %2297 = inttoptr i64 %2296 to { i64, i8* }*
  %2298 = alloca { i64, i8* }*
  store { i64, i8* }* %2297, { i64, i8* }** %2298
  %2299 = load { i64, i8* }*, { i64, i8* }** %arg_ty.ptr
  %2300 = call i64 @nyx_array_get({ i64, i8* }* %2299, i64 2)
  %2301 = inttoptr i64 %2300 to { i64, i8* }*
  %2302 = alloca { i64, i8* }*
  store { i64, i8* }* %2301, { i64, i8* }** %2302
  %2303 = load { i64, i8* }*, { i64, i8* }** %2298
  %2304 = load { i64, i8* }*, { i64, i8* }** %2302
  %2305 = load { i64, i8* }*, { i64, i8* }** %type_param_names.ptr
  %2306 = load { i64, i8* }*, { i64, i8* }** %names_out.ptr
  %2307 = load { i64, i8* }*, { i64, i8* }** %types_out.ptr
  %2308 = call i1 @unify({ i64, i8* }* %2303, { i64, i8* }* %2304, { i64, i8* }* %2305, { i64, i8* }* %2306, { i64, i8* }* %2307)
  ret i1 %2308
else755:
  br label %merge756
merge756:
  %2309 = alloca i1
  store i1 true, i1* %2309
  %2310 = load %nyx_string*, %nyx_string** %2106
  %2311 = getelementptr [9 x i8], [9 x i8]* @.str242, i32 0, i32 0
  %2312 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str242.c, i8* %2311)
  %2313 = call i1 @nyx_string_equals(%nyx_string* %2310, %nyx_string* %2312)
  br i1 %2313, label %sc_or_end767, label %sc_or_rhs766
sc_or_rhs766:
  %2314 = load %nyx_string*, %nyx_string** %2106
  %2315 = getelementptr [7 x i8], [7 x i8]* @.str243, i32 0, i32 0
  %2316 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str243.c, i8* %2315)
  %2317 = call i1 @nyx_string_equals(%nyx_string* %2314, %nyx_string* %2316)
  store i1 %2317, i1* %2309
  br label %sc_or_end767
sc_or_end767:
  %2318 = load i1, i1* %2309
  br i1 %2318, label %then768, label %else769
then768:
  %2319 = load { i64, i8* }*, { i64, i8* }** %param_ty.ptr
  %2320 = call i64 @nyx_array_get({ i64, i8* }* %2319, i64 1)
  %2321 = inttoptr i64 %2320 to %nyx_string*
  %2322 = alloca %nyx_string*
  store %nyx_string* %2321, %nyx_string** %2322
  %2323 = load { i64, i8* }*, { i64, i8* }** %arg_ty.ptr
  %2324 = call i64 @nyx_array_get({ i64, i8* }* %2323, i64 1)
  %2325 = inttoptr i64 %2324 to %nyx_string*
  %2326 = alloca %nyx_string*
  store %nyx_string* %2325, %nyx_string** %2326
  %2327 = load %nyx_string*, %nyx_string** %2322
  %2328 = load %nyx_string*, %nyx_string** %2326
  %2329 = call i1 @nyx_string_equals(%nyx_string* %2327, %nyx_string* %2328)
  %2330 = xor i1 %2329, true
  br i1 %2330, label %then771, label %else772
then771:
  ret i1 0
else772:
  br label %merge773
merge773:
  %2331 = load { i64, i8* }*, { i64, i8* }** %param_ty.ptr
  %2332 = call i64 @nyx_array_get({ i64, i8* }* %2331, i64 2)
  %2333 = inttoptr i64 %2332 to { i64, i8* }*
  %2334 = alloca { i64, i8* }*
  store { i64, i8* }* %2333, { i64, i8* }** %2334
  %2335 = load { i64, i8* }*, { i64, i8* }** %arg_ty.ptr
  %2336 = call i64 @nyx_array_get({ i64, i8* }* %2335, i64 2)
  %2337 = inttoptr i64 %2336 to { i64, i8* }*
  %2338 = alloca { i64, i8* }*
  store { i64, i8* }* %2337, { i64, i8* }** %2338
  %2339 = load { i64, i8* }*, { i64, i8* }** %2334
  %2340 = call i64 @nyx_array_length({ i64, i8* }* %2339)
  %2341 = icmp eq i64 %2340, 0
  br i1 %2341, label %then774, label %else775
then774:
  ret i1 1
else775:
  br label %merge776
merge776:
  %2342 = load { i64, i8* }*, { i64, i8* }** %2338
  %2343 = call i64 @nyx_array_length({ i64, i8* }* %2342)
  %2344 = icmp eq i64 %2343, 0
  br i1 %2344, label %then777, label %else778
then777:
  ret i1 1
else778:
  br label %merge779
merge779:
  %2345 = load { i64, i8* }*, { i64, i8* }** %2334
  %2346 = call i64 @nyx_array_length({ i64, i8* }* %2345)
  %2347 = load { i64, i8* }*, { i64, i8* }** %2338
  %2348 = call i64 @nyx_array_length({ i64, i8* }* %2347)
  %2349 = icmp ne i64 %2346, %2348
  br i1 %2349, label %then780, label %else781
then780:
  ret i1 0
else781:
  br label %merge782
merge782:
  %2350 = alloca i64
  store i64 0, i64* %2350
  br label %while_cond783
while_cond783:
  %2351 = load i64, i64* %2350
  %2352 = load { i64, i8* }*, { i64, i8* }** %2334
  %2353 = call i64 @nyx_array_length({ i64, i8* }* %2352)
  %2354 = icmp slt i64 %2351, %2353
  br i1 %2354, label %while_body784, label %while_end785
while_body784:
  %2355 = load { i64, i8* }*, { i64, i8* }** %2334
  %2356 = load i64, i64* %2350
  %2357 = call i64 @nyx_array_get({ i64, i8* }* %2355, i64 %2356)
  %2358 = inttoptr i64 %2357 to { i64, i8* }*
  %2359 = alloca { i64, i8* }*
  store { i64, i8* }* %2358, { i64, i8* }** %2359
  %2360 = load { i64, i8* }*, { i64, i8* }** %2338
  %2361 = load i64, i64* %2350
  %2362 = call i64 @nyx_array_get({ i64, i8* }* %2360, i64 %2361)
  %2363 = inttoptr i64 %2362 to { i64, i8* }*
  %2364 = alloca { i64, i8* }*
  store { i64, i8* }* %2363, { i64, i8* }** %2364
  %2365 = load { i64, i8* }*, { i64, i8* }** %2359
  %2366 = load { i64, i8* }*, { i64, i8* }** %2364
  %2367 = load { i64, i8* }*, { i64, i8* }** %type_param_names.ptr
  %2368 = load { i64, i8* }*, { i64, i8* }** %names_out.ptr
  %2369 = load { i64, i8* }*, { i64, i8* }** %types_out.ptr
  %2370 = call i1 @unify({ i64, i8* }* %2365, { i64, i8* }* %2366, { i64, i8* }* %2367, { i64, i8* }* %2368, { i64, i8* }* %2369)
  %2371 = xor i1 %2370, true
  br i1 %2371, label %then786, label %else787
then786:
  ret i1 0
else787:
  br label %merge788
merge788:
  %2372 = load i64, i64* %2350
  %2373 = add i64 %2372, 1
  store i64 %2373, i64* %2350
  br label %while_cond783
while_end785:
  ret i1 1
else769:
  br label %merge770
merge770:
  br label %merge734
else733:
  br label %merge734
merge734:
  %2374 = load { i64, i8* }*, { i64, i8* }** %param_ty.ptr
  %2375 = load { i64, i8* }*, { i64, i8* }** %arg_ty.ptr
  %2376 = call i1 @ty_eq({ i64, i8* }* %2374, { i64, i8* }* %2375)
  ret i1 %2376
}

define { i64, i8* }* @ty_var(
i64 %id.param) {
  %id.ptr = alloca i64
  store i64 %id.param, i64* %id.ptr
  %2377 = call { i64, i8* }* @nyx_array_new_ptr()
  %2378 = getelementptr [6 x i8], [6 x i8]* @.str244, i32 0, i32 0
  %2379 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str244.c, i8* %2378)
  %2380 = ptrtoint %nyx_string* %2379 to i64
  call void @nyx_array_push({ i64, i8* }* %2377, i64 %2380)
  %2381 = load i64, i64* %id.ptr
  call void @nyx_array_push({ i64, i8* }* %2377, i64 %2381)
  ret { i64, i8* }* %2377
}

define { i64, i8* }* @subst_new(
) {
  %2382 = call { i64, i8* }* @nyx_array_new_ptr()
  %2383 = call { i64, i8* }* @nyx_array_new_ptr()
  %2384 = bitcast { i64, i8* }* %2383 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %2382, i8* %2384)
  %2385 = call { i64, i8* }* @nyx_array_new_ptr()
  %2386 = bitcast { i64, i8* }* %2385 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %2382, i8* %2386)
  ret { i64, i8* }* %2382
}

define internal { i64, i8* }* @subst_lookup(
{ i64, i8* }* %subst.param, i64 %id.param) {
  %subst.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %subst.param, { i64, i8* }** %subst.ptr
  %id.ptr = alloca i64
  store i64 %id.param, i64* %id.ptr
  %2387 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2388 = call i64 @nyx_array_get({ i64, i8* }* %2387, i64 0)
  %2389 = inttoptr i64 %2388 to { i64, i8* }*
  %2390 = alloca { i64, i8* }*
  store { i64, i8* }* %2389, { i64, i8* }** %2390
  %2391 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2392 = call i64 @nyx_array_get({ i64, i8* }* %2391, i64 1)
  %2393 = inttoptr i64 %2392 to { i64, i8* }*
  %2394 = alloca { i64, i8* }*
  store { i64, i8* }* %2393, { i64, i8* }** %2394
  %2395 = alloca i64
  store i64 0, i64* %2395
  br label %while_cond789
while_cond789:
  %2396 = load i64, i64* %2395
  %2397 = load { i64, i8* }*, { i64, i8* }** %2390
  %2398 = call i64 @nyx_array_length({ i64, i8* }* %2397)
  %2399 = icmp slt i64 %2396, %2398
  br i1 %2399, label %while_body790, label %while_end791
while_body790:
  %2400 = load { i64, i8* }*, { i64, i8* }** %2390
  %2401 = load i64, i64* %2395
  %2402 = call i64 @nyx_array_get({ i64, i8* }* %2400, i64 %2401)
  %2403 = alloca i64
  store i64 %2402, i64* %2403
  %2404 = load i64, i64* %2403
  %2405 = load i64, i64* %id.ptr
  %2406 = icmp eq i64 %2404, %2405
  br i1 %2406, label %then792, label %else793
then792:
  %2407 = load { i64, i8* }*, { i64, i8* }** %2394
  %2408 = load i64, i64* %2395
  %2409 = call i64 @nyx_array_get({ i64, i8* }* %2407, i64 %2408)
  %2410 = inttoptr i64 %2409 to { i64, i8* }*
  %2411 = alloca { i64, i8* }*
  store { i64, i8* }* %2410, { i64, i8* }** %2411
  %2412 = call { i64, i8* }* @nyx_array_new_ptr()
  %2413 = zext i1 1 to i64
  call void @nyx_array_push({ i64, i8* }* %2412, i64 %2413)
  %2414 = load { i64, i8* }*, { i64, i8* }** %2411
  %2415 = bitcast { i64, i8* }* %2414 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %2412, i8* %2415)
  ret { i64, i8* }* %2412
else793:
  br label %merge794
merge794:
  %2416 = load i64, i64* %2395
  %2417 = add i64 %2416, 1
  store i64 %2417, i64* %2395
  br label %while_cond789
while_end791:
  %2418 = call { i64, i8* }* @nyx_array_new_ptr()
  %2419 = zext i1 0 to i64
  call void @nyx_array_push({ i64, i8* }* %2418, i64 %2419)
  %2420 = call { i64, i8* }* @ty_unknown()
  %2421 = bitcast { i64, i8* }* %2420 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %2418, i8* %2421)
  ret { i64, i8* }* %2418
}

define internal i64 @subst_bind(
{ i64, i8* }* %subst.param, i64 %id.param, { i64, i8* }* %ty.param) {
  %subst.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %subst.param, { i64, i8* }** %subst.ptr
  %id.ptr = alloca i64
  store i64 %id.param, i64* %id.ptr
  %ty.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ty.param, { i64, i8* }** %ty.ptr
  %2422 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2423 = call i64 @nyx_array_get({ i64, i8* }* %2422, i64 0)
  %2424 = inttoptr i64 %2423 to { i64, i8* }*
  %2425 = alloca { i64, i8* }*
  store { i64, i8* }* %2424, { i64, i8* }** %2425
  %2426 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2427 = call i64 @nyx_array_get({ i64, i8* }* %2426, i64 1)
  %2428 = inttoptr i64 %2427 to { i64, i8* }*
  %2429 = alloca { i64, i8* }*
  store { i64, i8* }* %2428, { i64, i8* }** %2429
  %2430 = load { i64, i8* }*, { i64, i8* }** %2425
  %2431 = load i64, i64* %id.ptr
  call void @nyx_array_push({ i64, i8* }* %2430, i64 %2431)
  %2432 = load { i64, i8* }*, { i64, i8* }** %2429
  %2433 = load { i64, i8* }*, { i64, i8* }** %ty.ptr
  %2434 = ptrtoint { i64, i8* }* %2433 to i64
  call void @nyx_array_push({ i64, i8* }* %2432, i64 %2434)
  ret i64 0
}

define { i64, i8* }* @subst_resolve(
{ i64, i8* }* %subst.param, { i64, i8* }* %ty.param) {
  %subst.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %subst.param, { i64, i8* }** %subst.ptr
  %ty.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ty.param, { i64, i8* }** %ty.ptr
  %2435 = load { i64, i8* }*, { i64, i8* }** %ty.ptr
  %2436 = call %nyx_string* @ty_kind({ i64, i8* }* %2435)
  %2437 = alloca %nyx_string*
  store %nyx_string* %2436, %nyx_string** %2437
  %2438 = load %nyx_string*, %nyx_string** %2437
  %2439 = getelementptr [6 x i8], [6 x i8]* @.str245, i32 0, i32 0
  %2440 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str245.c, i8* %2439)
  %2441 = call i1 @nyx_string_equals(%nyx_string* %2438, %nyx_string* %2440)
  %2442 = xor i1 %2441, true
  br i1 %2442, label %then795, label %else796
then795:
  %2443 = load { i64, i8* }*, { i64, i8* }** %ty.ptr
  ret { i64, i8* }* %2443
else796:
  br label %merge797
merge797:
  %2444 = load { i64, i8* }*, { i64, i8* }** %ty.ptr
  %2445 = call i64 @nyx_array_get({ i64, i8* }* %2444, i64 1)
  %2446 = alloca i64
  store i64 %2445, i64* %2446
  %2447 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2448 = load i64, i64* %2446
  %2449 = call { i64, i8* }* @subst_lookup({ i64, i8* }* %2447, i64 %2448)
  %2450 = alloca { i64, i8* }*
  store { i64, i8* }* %2449, { i64, i8* }** %2450
  %2451 = load { i64, i8* }*, { i64, i8* }** %2450
  %2452 = call i64 @nyx_array_get({ i64, i8* }* %2451, i64 0)
  %2453 = trunc i64 %2452 to i1
  %2454 = alloca i1
  store i1 %2453, i1* %2454
  %2455 = load i1, i1* %2454
  %2456 = xor i1 %2455, true
  br i1 %2456, label %then798, label %else799
then798:
  %2457 = load { i64, i8* }*, { i64, i8* }** %ty.ptr
  ret { i64, i8* }* %2457
else799:
  br label %merge800
merge800:
  %2458 = load { i64, i8* }*, { i64, i8* }** %2450
  %2459 = call i64 @nyx_array_get({ i64, i8* }* %2458, i64 1)
  %2460 = inttoptr i64 %2459 to { i64, i8* }*
  %2461 = alloca { i64, i8* }*
  store { i64, i8* }* %2460, { i64, i8* }** %2461
  %2462 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2463 = load { i64, i8* }*, { i64, i8* }** %2461
  %2464 = call { i64, i8* }* @subst_resolve({ i64, i8* }* %2462, { i64, i8* }* %2463)
  ret { i64, i8* }* %2464
}

define { i64, i8* }* @subst_resolve_deep(
{ i64, i8* }* %subst.param, { i64, i8* }* %ty.param) {
  %subst.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %subst.param, { i64, i8* }** %subst.ptr
  %ty.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ty.param, { i64, i8* }** %ty.ptr
  %2465 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2466 = load { i64, i8* }*, { i64, i8* }** %ty.ptr
  %2467 = call { i64, i8* }* @subst_resolve({ i64, i8* }* %2465, { i64, i8* }* %2466)
  %2468 = alloca { i64, i8* }*
  store { i64, i8* }* %2467, { i64, i8* }** %2468
  %2469 = load { i64, i8* }*, { i64, i8* }** %2468
  %2470 = call %nyx_string* @ty_kind({ i64, i8* }* %2469)
  %2471 = alloca %nyx_string*
  store %nyx_string* %2470, %nyx_string** %2471
  %2472 = load %nyx_string*, %nyx_string** %2471
  %2473 = getelementptr [8 x i8], [8 x i8]* @.str246, i32 0, i32 0
  %2474 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str246.c, i8* %2473)
  %2475 = call i1 @nyx_string_equals(%nyx_string* %2472, %nyx_string* %2474)
  br i1 %2475, label %then801, label %else802
then801:
  %2476 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2477 = load { i64, i8* }*, { i64, i8* }** %2468
  %2478 = call i64 @nyx_array_get({ i64, i8* }* %2477, i64 1)
  %2479 = inttoptr i64 %2478 to { i64, i8* }*
  %2480 = call { i64, i8* }* @subst_resolve_deep({ i64, i8* }* %2476, { i64, i8* }* %2479)
  %2481 = call { i64, i8* }* @ty_array({ i64, i8* }* %2480)
  ret { i64, i8* }* %2481
else802:
  br label %merge803
merge803:
  %2482 = load %nyx_string*, %nyx_string** %2471
  %2483 = getelementptr [9 x i8], [9 x i8]* @.str247, i32 0, i32 0
  %2484 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str247.c, i8* %2483)
  %2485 = call i1 @nyx_string_equals(%nyx_string* %2482, %nyx_string* %2484)
  br i1 %2485, label %then804, label %else805
then804:
  %2486 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2487 = load { i64, i8* }*, { i64, i8* }** %2468
  %2488 = call i64 @nyx_array_get({ i64, i8* }* %2487, i64 1)
  %2489 = inttoptr i64 %2488 to { i64, i8* }*
  %2490 = call { i64, i8* }* @subst_resolve_deep({ i64, i8* }* %2486, { i64, i8* }* %2489)
  %2491 = call { i64, i8* }* @ty_option({ i64, i8* }* %2490)
  ret { i64, i8* }* %2491
else805:
  br label %merge806
merge806:
  %2492 = load %nyx_string*, %nyx_string** %2471
  %2493 = getelementptr [6 x i8], [6 x i8]* @.str248, i32 0, i32 0
  %2494 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str248.c, i8* %2493)
  %2495 = call i1 @nyx_string_equals(%nyx_string* %2492, %nyx_string* %2494)
  br i1 %2495, label %then807, label %else808
then807:
  %2496 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2497 = load { i64, i8* }*, { i64, i8* }** %2468
  %2498 = call i64 @nyx_array_get({ i64, i8* }* %2497, i64 1)
  %2499 = inttoptr i64 %2498 to { i64, i8* }*
  %2500 = call { i64, i8* }* @subst_resolve_deep({ i64, i8* }* %2496, { i64, i8* }* %2499)
  %2501 = call { i64, i8* }* @ty_ptr({ i64, i8* }* %2500)
  ret { i64, i8* }* %2501
else808:
  br label %merge809
merge809:
  %2502 = load %nyx_string*, %nyx_string** %2471
  %2503 = getelementptr [6 x i8], [6 x i8]* @.str249, i32 0, i32 0
  %2504 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str249.c, i8* %2503)
  %2505 = call i1 @nyx_string_equals(%nyx_string* %2502, %nyx_string* %2504)
  br i1 %2505, label %then810, label %else811
then810:
  %2506 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2507 = load { i64, i8* }*, { i64, i8* }** %2468
  %2508 = call i64 @nyx_array_get({ i64, i8* }* %2507, i64 1)
  %2509 = inttoptr i64 %2508 to { i64, i8* }*
  %2510 = call { i64, i8* }* @subst_resolve_deep({ i64, i8* }* %2506, { i64, i8* }* %2509)
  %2511 = load { i64, i8* }*, { i64, i8* }** %2468
  %2512 = call %nyx_string* @ty_ref_region({ i64, i8* }* %2511)
  %2513 = call { i64, i8* }* @ty_ref_r({ i64, i8* }* %2510, %nyx_string* %2512)
  ret { i64, i8* }* %2513
else811:
  br label %merge812
merge812:
  %2514 = load %nyx_string*, %nyx_string** %2471
  %2515 = getelementptr [9 x i8], [9 x i8]* @.str250, i32 0, i32 0
  %2516 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str250.c, i8* %2515)
  %2517 = call i1 @nyx_string_equals(%nyx_string* %2514, %nyx_string* %2516)
  br i1 %2517, label %then813, label %else814
then813:
  %2518 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2519 = load { i64, i8* }*, { i64, i8* }** %2468
  %2520 = call i64 @nyx_array_get({ i64, i8* }* %2519, i64 1)
  %2521 = inttoptr i64 %2520 to { i64, i8* }*
  %2522 = call { i64, i8* }* @subst_resolve_deep({ i64, i8* }* %2518, { i64, i8* }* %2521)
  %2523 = load { i64, i8* }*, { i64, i8* }** %2468
  %2524 = call %nyx_string* @ty_ref_region({ i64, i8* }* %2523)
  %2525 = call { i64, i8* }* @ty_ref_mut_r({ i64, i8* }* %2522, %nyx_string* %2524)
  ret { i64, i8* }* %2525
else814:
  br label %merge815
merge815:
  %2526 = load %nyx_string*, %nyx_string** %2471
  %2527 = getelementptr [9 x i8], [9 x i8]* @.str251, i32 0, i32 0
  %2528 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str251.c, i8* %2527)
  %2529 = call i1 @nyx_string_equals(%nyx_string* %2526, %nyx_string* %2528)
  br i1 %2529, label %then816, label %else817
then816:
  %2530 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2531 = load { i64, i8* }*, { i64, i8* }** %2468
  %2532 = call i64 @nyx_array_get({ i64, i8* }* %2531, i64 1)
  %2533 = inttoptr i64 %2532 to { i64, i8* }*
  %2534 = call { i64, i8* }* @subst_resolve_deep({ i64, i8* }* %2530, { i64, i8* }* %2533)
  %2535 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2536 = load { i64, i8* }*, { i64, i8* }** %2468
  %2537 = call i64 @nyx_array_get({ i64, i8* }* %2536, i64 2)
  %2538 = inttoptr i64 %2537 to { i64, i8* }*
  %2539 = call { i64, i8* }* @subst_resolve_deep({ i64, i8* }* %2535, { i64, i8* }* %2538)
  %2540 = call { i64, i8* }* @ty_result({ i64, i8* }* %2534, { i64, i8* }* %2539)
  ret { i64, i8* }* %2540
else817:
  br label %merge818
merge818:
  %2541 = load %nyx_string*, %nyx_string** %2471
  %2542 = getelementptr [6 x i8], [6 x i8]* @.str252, i32 0, i32 0
  %2543 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str252.c, i8* %2542)
  %2544 = call i1 @nyx_string_equals(%nyx_string* %2541, %nyx_string* %2543)
  br i1 %2544, label %then819, label %else820
then819:
  %2545 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2546 = load { i64, i8* }*, { i64, i8* }** %2468
  %2547 = call i64 @nyx_array_get({ i64, i8* }* %2546, i64 1)
  %2548 = inttoptr i64 %2547 to { i64, i8* }*
  %2549 = call { i64, i8* }* @subst_resolve_deep({ i64, i8* }* %2545, { i64, i8* }* %2548)
  %2550 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2551 = load { i64, i8* }*, { i64, i8* }** %2468
  %2552 = call i64 @nyx_array_get({ i64, i8* }* %2551, i64 2)
  %2553 = inttoptr i64 %2552 to { i64, i8* }*
  %2554 = call { i64, i8* }* @subst_resolve_deep({ i64, i8* }* %2550, { i64, i8* }* %2553)
  %2555 = call { i64, i8* }* @ty_map({ i64, i8* }* %2549, { i64, i8* }* %2554)
  ret { i64, i8* }* %2555
else820:
  br label %merge821
merge821:
  %2556 = load %nyx_string*, %nyx_string** %2471
  %2557 = getelementptr [5 x i8], [5 x i8]* @.str253, i32 0, i32 0
  %2558 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str253.c, i8* %2557)
  %2559 = call i1 @nyx_string_equals(%nyx_string* %2556, %nyx_string* %2558)
  br i1 %2559, label %then822, label %else823
then822:
  %2560 = load { i64, i8* }*, { i64, i8* }** %2468
  %2561 = call i64 @nyx_array_get({ i64, i8* }* %2560, i64 1)
  %2562 = inttoptr i64 %2561 to { i64, i8* }*
  %2563 = alloca { i64, i8* }*
  store { i64, i8* }* %2562, { i64, i8* }** %2563
  %2564 = call { i64, i8* }* @nyx_array_new_ptr()
  %2565 = alloca { i64, i8* }*
  store { i64, i8* }* %2564, { i64, i8* }** %2565
  %2566 = alloca i64
  store i64 0, i64* %2566
  br label %while_cond825
while_cond825:
  %2567 = load i64, i64* %2566
  %2568 = load { i64, i8* }*, { i64, i8* }** %2563
  %2569 = call i64 @nyx_array_length({ i64, i8* }* %2568)
  %2570 = icmp slt i64 %2567, %2569
  br i1 %2570, label %while_body826, label %while_end827
while_body826:
  %2571 = load { i64, i8* }*, { i64, i8* }** %2565
  %2572 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2573 = load { i64, i8* }*, { i64, i8* }** %2563
  %2574 = load i64, i64* %2566
  %2575 = call i64 @nyx_array_get({ i64, i8* }* %2573, i64 %2574)
  %2576 = inttoptr i64 %2575 to { i64, i8* }*
  %2577 = call { i64, i8* }* @subst_resolve_deep({ i64, i8* }* %2572, { i64, i8* }* %2576)
  %2578 = ptrtoint { i64, i8* }* %2577 to i64
  call void @nyx_array_push({ i64, i8* }* %2571, i64 %2578)
  %2579 = load i64, i64* %2566
  %2580 = add i64 %2579, 1
  store i64 %2580, i64* %2566
  br label %while_cond825
while_end827:
  %2581 = load { i64, i8* }*, { i64, i8* }** %2565
  %2582 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2583 = load { i64, i8* }*, { i64, i8* }** %2468
  %2584 = call i64 @nyx_array_get({ i64, i8* }* %2583, i64 2)
  %2585 = inttoptr i64 %2584 to { i64, i8* }*
  %2586 = call { i64, i8* }* @subst_resolve_deep({ i64, i8* }* %2582, { i64, i8* }* %2585)
  %2587 = call { i64, i8* }* @ty_fn({ i64, i8* }* %2581, { i64, i8* }* %2586)
  ret { i64, i8* }* %2587
else823:
  br label %merge824
merge824:
  %2588 = load %nyx_string*, %nyx_string** %2471
  %2589 = getelementptr [9 x i8], [9 x i8]* @.str254, i32 0, i32 0
  %2590 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str254.c, i8* %2589)
  %2591 = call i1 @nyx_string_equals(%nyx_string* %2588, %nyx_string* %2590)
  br i1 %2591, label %then828, label %else829
then828:
  %2592 = load { i64, i8* }*, { i64, i8* }** %2468
  %2593 = call i64 @nyx_array_get({ i64, i8* }* %2592, i64 2)
  %2594 = inttoptr i64 %2593 to { i64, i8* }*
  %2595 = alloca { i64, i8* }*
  store { i64, i8* }* %2594, { i64, i8* }** %2595
  %2596 = call { i64, i8* }* @nyx_array_new_ptr()
  %2597 = alloca { i64, i8* }*
  store { i64, i8* }* %2596, { i64, i8* }** %2597
  %2598 = alloca i64
  store i64 0, i64* %2598
  br label %while_cond831
while_cond831:
  %2599 = load i64, i64* %2598
  %2600 = load { i64, i8* }*, { i64, i8* }** %2595
  %2601 = call i64 @nyx_array_length({ i64, i8* }* %2600)
  %2602 = icmp slt i64 %2599, %2601
  br i1 %2602, label %while_body832, label %while_end833
while_body832:
  %2603 = load { i64, i8* }*, { i64, i8* }** %2597
  %2604 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2605 = load { i64, i8* }*, { i64, i8* }** %2595
  %2606 = load i64, i64* %2598
  %2607 = call i64 @nyx_array_get({ i64, i8* }* %2605, i64 %2606)
  %2608 = inttoptr i64 %2607 to { i64, i8* }*
  %2609 = call { i64, i8* }* @subst_resolve_deep({ i64, i8* }* %2604, { i64, i8* }* %2608)
  %2610 = ptrtoint { i64, i8* }* %2609 to i64
  call void @nyx_array_push({ i64, i8* }* %2603, i64 %2610)
  %2611 = load i64, i64* %2598
  %2612 = add i64 %2611, 1
  store i64 %2612, i64* %2598
  br label %while_cond831
while_end833:
  %2613 = load { i64, i8* }*, { i64, i8* }** %2468
  %2614 = call i64 @nyx_array_get({ i64, i8* }* %2613, i64 1)
  %2615 = inttoptr i64 %2614 to %nyx_string*
  %2616 = load { i64, i8* }*, { i64, i8* }** %2597
  %2617 = call { i64, i8* }* @ty_struct_ty(%nyx_string* %2615, { i64, i8* }* %2616)
  ret { i64, i8* }* %2617
else829:
  br label %merge830
merge830:
  %2618 = load %nyx_string*, %nyx_string** %2471
  %2619 = getelementptr [7 x i8], [7 x i8]* @.str255, i32 0, i32 0
  %2620 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str255.c, i8* %2619)
  %2621 = call i1 @nyx_string_equals(%nyx_string* %2618, %nyx_string* %2620)
  br i1 %2621, label %then834, label %else835
then834:
  %2622 = load { i64, i8* }*, { i64, i8* }** %2468
  %2623 = call i64 @nyx_array_get({ i64, i8* }* %2622, i64 2)
  %2624 = inttoptr i64 %2623 to { i64, i8* }*
  %2625 = alloca { i64, i8* }*
  store { i64, i8* }* %2624, { i64, i8* }** %2625
  %2626 = call { i64, i8* }* @nyx_array_new_ptr()
  %2627 = alloca { i64, i8* }*
  store { i64, i8* }* %2626, { i64, i8* }** %2627
  %2628 = alloca i64
  store i64 0, i64* %2628
  br label %while_cond837
while_cond837:
  %2629 = load i64, i64* %2628
  %2630 = load { i64, i8* }*, { i64, i8* }** %2625
  %2631 = call i64 @nyx_array_length({ i64, i8* }* %2630)
  %2632 = icmp slt i64 %2629, %2631
  br i1 %2632, label %while_body838, label %while_end839
while_body838:
  %2633 = load { i64, i8* }*, { i64, i8* }** %2627
  %2634 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2635 = load { i64, i8* }*, { i64, i8* }** %2625
  %2636 = load i64, i64* %2628
  %2637 = call i64 @nyx_array_get({ i64, i8* }* %2635, i64 %2636)
  %2638 = inttoptr i64 %2637 to { i64, i8* }*
  %2639 = call { i64, i8* }* @subst_resolve_deep({ i64, i8* }* %2634, { i64, i8* }* %2638)
  %2640 = ptrtoint { i64, i8* }* %2639 to i64
  call void @nyx_array_push({ i64, i8* }* %2633, i64 %2640)
  %2641 = load i64, i64* %2628
  %2642 = add i64 %2641, 1
  store i64 %2642, i64* %2628
  br label %while_cond837
while_end839:
  %2643 = load { i64, i8* }*, { i64, i8* }** %2468
  %2644 = call i64 @nyx_array_get({ i64, i8* }* %2643, i64 1)
  %2645 = inttoptr i64 %2644 to %nyx_string*
  %2646 = load { i64, i8* }*, { i64, i8* }** %2627
  %2647 = call { i64, i8* }* @ty_enum_ty(%nyx_string* %2645, { i64, i8* }* %2646)
  ret { i64, i8* }* %2647
else835:
  br label %merge836
merge836:
  %2648 = load { i64, i8* }*, { i64, i8* }** %2468
  ret { i64, i8* }* %2648
}

define i1 @occurs_check(
i64 %id.param, { i64, i8* }* %ty.param, { i64, i8* }* %subst.param) {
  %id.ptr = alloca i64
  store i64 %id.param, i64* %id.ptr
  %ty.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ty.param, { i64, i8* }** %ty.ptr
  %subst.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %subst.param, { i64, i8* }** %subst.ptr
  %2649 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2650 = load { i64, i8* }*, { i64, i8* }** %ty.ptr
  %2651 = call { i64, i8* }* @subst_resolve({ i64, i8* }* %2649, { i64, i8* }* %2650)
  %2652 = alloca { i64, i8* }*
  store { i64, i8* }* %2651, { i64, i8* }** %2652
  %2653 = load { i64, i8* }*, { i64, i8* }** %2652
  %2654 = call %nyx_string* @ty_kind({ i64, i8* }* %2653)
  %2655 = alloca %nyx_string*
  store %nyx_string* %2654, %nyx_string** %2655
  %2656 = load %nyx_string*, %nyx_string** %2655
  %2657 = getelementptr [6 x i8], [6 x i8]* @.str256, i32 0, i32 0
  %2658 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str256.c, i8* %2657)
  %2659 = call i1 @nyx_string_equals(%nyx_string* %2656, %nyx_string* %2658)
  br i1 %2659, label %then840, label %else841
then840:
  %2660 = load { i64, i8* }*, { i64, i8* }** %2652
  %2661 = call i64 @nyx_array_get({ i64, i8* }* %2660, i64 1)
  %2662 = alloca i64
  store i64 %2661, i64* %2662
  %2663 = load i64, i64* %2662
  %2664 = load i64, i64* %id.ptr
  %2665 = icmp eq i64 %2663, %2664
  ret i1 %2665
else841:
  br label %merge842
merge842:
  %2666 = alloca i1
  store i1 true, i1* %2666
  %2667 = alloca i1
  store i1 true, i1* %2667
  %2668 = alloca i1
  store i1 true, i1* %2668
  %2669 = alloca i1
  store i1 true, i1* %2669
  %2670 = load %nyx_string*, %nyx_string** %2655
  %2671 = getelementptr [8 x i8], [8 x i8]* @.str257, i32 0, i32 0
  %2672 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str257.c, i8* %2671)
  %2673 = call i1 @nyx_string_equals(%nyx_string* %2670, %nyx_string* %2672)
  br i1 %2673, label %sc_or_end844, label %sc_or_rhs843
sc_or_rhs843:
  %2674 = load %nyx_string*, %nyx_string** %2655
  %2675 = getelementptr [9 x i8], [9 x i8]* @.str258, i32 0, i32 0
  %2676 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str258.c, i8* %2675)
  %2677 = call i1 @nyx_string_equals(%nyx_string* %2674, %nyx_string* %2676)
  store i1 %2677, i1* %2669
  br label %sc_or_end844
sc_or_end844:
  %2678 = load i1, i1* %2669
  br i1 %2678, label %sc_or_end846, label %sc_or_rhs845
sc_or_rhs845:
  %2679 = load %nyx_string*, %nyx_string** %2655
  %2680 = getelementptr [6 x i8], [6 x i8]* @.str259, i32 0, i32 0
  %2681 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str259.c, i8* %2680)
  %2682 = call i1 @nyx_string_equals(%nyx_string* %2679, %nyx_string* %2681)
  store i1 %2682, i1* %2668
  br label %sc_or_end846
sc_or_end846:
  %2683 = load i1, i1* %2668
  br i1 %2683, label %sc_or_end848, label %sc_or_rhs847
sc_or_rhs847:
  %2684 = load %nyx_string*, %nyx_string** %2655
  %2685 = getelementptr [6 x i8], [6 x i8]* @.str260, i32 0, i32 0
  %2686 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str260.c, i8* %2685)
  %2687 = call i1 @nyx_string_equals(%nyx_string* %2684, %nyx_string* %2686)
  store i1 %2687, i1* %2667
  br label %sc_or_end848
sc_or_end848:
  %2688 = load i1, i1* %2667
  br i1 %2688, label %sc_or_end850, label %sc_or_rhs849
sc_or_rhs849:
  %2689 = load %nyx_string*, %nyx_string** %2655
  %2690 = getelementptr [9 x i8], [9 x i8]* @.str261, i32 0, i32 0
  %2691 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str261.c, i8* %2690)
  %2692 = call i1 @nyx_string_equals(%nyx_string* %2689, %nyx_string* %2691)
  store i1 %2692, i1* %2666
  br label %sc_or_end850
sc_or_end850:
  %2693 = load i1, i1* %2666
  br i1 %2693, label %then851, label %else852
then851:
  %2694 = load { i64, i8* }*, { i64, i8* }** %2652
  %2695 = call i64 @nyx_array_get({ i64, i8* }* %2694, i64 1)
  %2696 = inttoptr i64 %2695 to { i64, i8* }*
  %2697 = alloca { i64, i8* }*
  store { i64, i8* }* %2696, { i64, i8* }** %2697
  %2698 = load i64, i64* %id.ptr
  %2699 = load { i64, i8* }*, { i64, i8* }** %2697
  %2700 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2701 = call i1 @occurs_check(i64 %2698, { i64, i8* }* %2699, { i64, i8* }* %2700)
  ret i1 %2701
else852:
  br label %merge853
merge853:
  %2702 = alloca i1
  store i1 true, i1* %2702
  %2703 = load %nyx_string*, %nyx_string** %2655
  %2704 = getelementptr [9 x i8], [9 x i8]* @.str262, i32 0, i32 0
  %2705 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str262.c, i8* %2704)
  %2706 = call i1 @nyx_string_equals(%nyx_string* %2703, %nyx_string* %2705)
  br i1 %2706, label %sc_or_end855, label %sc_or_rhs854
sc_or_rhs854:
  %2707 = load %nyx_string*, %nyx_string** %2655
  %2708 = getelementptr [6 x i8], [6 x i8]* @.str263, i32 0, i32 0
  %2709 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str263.c, i8* %2708)
  %2710 = call i1 @nyx_string_equals(%nyx_string* %2707, %nyx_string* %2709)
  store i1 %2710, i1* %2702
  br label %sc_or_end855
sc_or_end855:
  %2711 = load i1, i1* %2702
  br i1 %2711, label %then856, label %else857
then856:
  %2712 = load { i64, i8* }*, { i64, i8* }** %2652
  %2713 = call i64 @nyx_array_get({ i64, i8* }* %2712, i64 1)
  %2714 = inttoptr i64 %2713 to { i64, i8* }*
  %2715 = alloca { i64, i8* }*
  store { i64, i8* }* %2714, { i64, i8* }** %2715
  %2716 = load i64, i64* %id.ptr
  %2717 = load { i64, i8* }*, { i64, i8* }** %2715
  %2718 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2719 = call i1 @occurs_check(i64 %2716, { i64, i8* }* %2717, { i64, i8* }* %2718)
  br i1 %2719, label %then859, label %else860
then859:
  ret i1 1
else860:
  br label %merge861
merge861:
  %2720 = load { i64, i8* }*, { i64, i8* }** %2652
  %2721 = call i64 @nyx_array_get({ i64, i8* }* %2720, i64 2)
  %2722 = inttoptr i64 %2721 to { i64, i8* }*
  %2723 = alloca { i64, i8* }*
  store { i64, i8* }* %2722, { i64, i8* }** %2723
  %2724 = load i64, i64* %id.ptr
  %2725 = load { i64, i8* }*, { i64, i8* }** %2723
  %2726 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2727 = call i1 @occurs_check(i64 %2724, { i64, i8* }* %2725, { i64, i8* }* %2726)
  ret i1 %2727
else857:
  br label %merge858
merge858:
  %2728 = load %nyx_string*, %nyx_string** %2655
  %2729 = getelementptr [5 x i8], [5 x i8]* @.str264, i32 0, i32 0
  %2730 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str264.c, i8* %2729)
  %2731 = call i1 @nyx_string_equals(%nyx_string* %2728, %nyx_string* %2730)
  br i1 %2731, label %then862, label %else863
then862:
  %2732 = load { i64, i8* }*, { i64, i8* }** %2652
  %2733 = call i64 @nyx_array_get({ i64, i8* }* %2732, i64 1)
  %2734 = inttoptr i64 %2733 to { i64, i8* }*
  %2735 = alloca { i64, i8* }*
  store { i64, i8* }* %2734, { i64, i8* }** %2735
  %2736 = alloca i64
  store i64 0, i64* %2736
  br label %while_cond865
while_cond865:
  %2737 = load i64, i64* %2736
  %2738 = load { i64, i8* }*, { i64, i8* }** %2735
  %2739 = call i64 @nyx_array_length({ i64, i8* }* %2738)
  %2740 = icmp slt i64 %2737, %2739
  br i1 %2740, label %while_body866, label %while_end867
while_body866:
  %2741 = load { i64, i8* }*, { i64, i8* }** %2735
  %2742 = load i64, i64* %2736
  %2743 = call i64 @nyx_array_get({ i64, i8* }* %2741, i64 %2742)
  %2744 = inttoptr i64 %2743 to { i64, i8* }*
  %2745 = alloca { i64, i8* }*
  store { i64, i8* }* %2744, { i64, i8* }** %2745
  %2746 = load i64, i64* %id.ptr
  %2747 = load { i64, i8* }*, { i64, i8* }** %2745
  %2748 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2749 = call i1 @occurs_check(i64 %2746, { i64, i8* }* %2747, { i64, i8* }* %2748)
  br i1 %2749, label %then868, label %else869
then868:
  ret i1 1
else869:
  br label %merge870
merge870:
  %2750 = load i64, i64* %2736
  %2751 = add i64 %2750, 1
  store i64 %2751, i64* %2736
  br label %while_cond865
while_end867:
  %2752 = load { i64, i8* }*, { i64, i8* }** %2652
  %2753 = call i64 @nyx_array_get({ i64, i8* }* %2752, i64 2)
  %2754 = inttoptr i64 %2753 to { i64, i8* }*
  %2755 = alloca { i64, i8* }*
  store { i64, i8* }* %2754, { i64, i8* }** %2755
  %2756 = load i64, i64* %id.ptr
  %2757 = load { i64, i8* }*, { i64, i8* }** %2755
  %2758 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2759 = call i1 @occurs_check(i64 %2756, { i64, i8* }* %2757, { i64, i8* }* %2758)
  ret i1 %2759
else863:
  br label %merge864
merge864:
  %2760 = alloca i1
  store i1 true, i1* %2760
  %2761 = load %nyx_string*, %nyx_string** %2655
  %2762 = getelementptr [9 x i8], [9 x i8]* @.str265, i32 0, i32 0
  %2763 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str265.c, i8* %2762)
  %2764 = call i1 @nyx_string_equals(%nyx_string* %2761, %nyx_string* %2763)
  br i1 %2764, label %sc_or_end872, label %sc_or_rhs871
sc_or_rhs871:
  %2765 = load %nyx_string*, %nyx_string** %2655
  %2766 = getelementptr [7 x i8], [7 x i8]* @.str266, i32 0, i32 0
  %2767 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str266.c, i8* %2766)
  %2768 = call i1 @nyx_string_equals(%nyx_string* %2765, %nyx_string* %2767)
  store i1 %2768, i1* %2760
  br label %sc_or_end872
sc_or_end872:
  %2769 = load i1, i1* %2760
  br i1 %2769, label %then873, label %else874
then873:
  %2770 = load { i64, i8* }*, { i64, i8* }** %2652
  %2771 = call i64 @nyx_array_get({ i64, i8* }* %2770, i64 2)
  %2772 = inttoptr i64 %2771 to { i64, i8* }*
  %2773 = alloca { i64, i8* }*
  store { i64, i8* }* %2772, { i64, i8* }** %2773
  %2774 = alloca i64
  store i64 0, i64* %2774
  br label %while_cond876
while_cond876:
  %2775 = load i64, i64* %2774
  %2776 = load { i64, i8* }*, { i64, i8* }** %2773
  %2777 = call i64 @nyx_array_length({ i64, i8* }* %2776)
  %2778 = icmp slt i64 %2775, %2777
  br i1 %2778, label %while_body877, label %while_end878
while_body877:
  %2779 = load { i64, i8* }*, { i64, i8* }** %2773
  %2780 = load i64, i64* %2774
  %2781 = call i64 @nyx_array_get({ i64, i8* }* %2779, i64 %2780)
  %2782 = inttoptr i64 %2781 to { i64, i8* }*
  %2783 = alloca { i64, i8* }*
  store { i64, i8* }* %2782, { i64, i8* }** %2783
  %2784 = load i64, i64* %id.ptr
  %2785 = load { i64, i8* }*, { i64, i8* }** %2783
  %2786 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2787 = call i1 @occurs_check(i64 %2784, { i64, i8* }* %2785, { i64, i8* }* %2786)
  br i1 %2787, label %then879, label %else880
then879:
  ret i1 1
else880:
  br label %merge881
merge881:
  %2788 = load i64, i64* %2774
  %2789 = add i64 %2788, 1
  store i64 %2789, i64* %2774
  br label %while_cond876
while_end878:
  ret i1 0
else874:
  br label %merge875
merge875:
  ret i1 0
}

define i1 @unify_var(
{ i64, i8* }* %a.param, { i64, i8* }* %b.param, { i64, i8* }* %subst.param) {
  %a.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %a.param, { i64, i8* }** %a.ptr
  %b.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %b.param, { i64, i8* }** %b.ptr
  %subst.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %subst.param, { i64, i8* }** %subst.ptr
  %2790 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2791 = load { i64, i8* }*, { i64, i8* }** %a.ptr
  %2792 = call { i64, i8* }* @subst_resolve({ i64, i8* }* %2790, { i64, i8* }* %2791)
  %2793 = alloca { i64, i8* }*
  store { i64, i8* }* %2792, { i64, i8* }** %2793
  %2794 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2795 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %2796 = call { i64, i8* }* @subst_resolve({ i64, i8* }* %2794, { i64, i8* }* %2795)
  %2797 = alloca { i64, i8* }*
  store { i64, i8* }* %2796, { i64, i8* }** %2797
  %2798 = load { i64, i8* }*, { i64, i8* }** %2793
  %2799 = call %nyx_string* @ty_kind({ i64, i8* }* %2798)
  %2800 = alloca %nyx_string*
  store %nyx_string* %2799, %nyx_string** %2800
  %2801 = load { i64, i8* }*, { i64, i8* }** %2797
  %2802 = call %nyx_string* @ty_kind({ i64, i8* }* %2801)
  %2803 = alloca %nyx_string*
  store %nyx_string* %2802, %nyx_string** %2803
  %2804 = load %nyx_string*, %nyx_string** %2800
  %2805 = getelementptr [10 x i8], [10 x i8]* @.str267, i32 0, i32 0
  %2806 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str267.c, i8* %2805)
  %2807 = call i1 @nyx_string_equals(%nyx_string* %2804, %nyx_string* %2806)
  br i1 %2807, label %then882, label %else883
then882:
  ret i1 1
else883:
  br label %merge884
merge884:
  %2808 = load %nyx_string*, %nyx_string** %2803
  %2809 = getelementptr [10 x i8], [10 x i8]* @.str268, i32 0, i32 0
  %2810 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str268.c, i8* %2809)
  %2811 = call i1 @nyx_string_equals(%nyx_string* %2808, %nyx_string* %2810)
  br i1 %2811, label %then885, label %else886
then885:
  ret i1 1
else886:
  br label %merge887
merge887:
  %2812 = load %nyx_string*, %nyx_string** %2800
  %2813 = getelementptr [6 x i8], [6 x i8]* @.str269, i32 0, i32 0
  %2814 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str269.c, i8* %2813)
  %2815 = call i1 @nyx_string_equals(%nyx_string* %2812, %nyx_string* %2814)
  br i1 %2815, label %then888, label %else889
then888:
  ret i1 1
else889:
  br label %merge890
merge890:
  %2816 = load %nyx_string*, %nyx_string** %2803
  %2817 = getelementptr [6 x i8], [6 x i8]* @.str270, i32 0, i32 0
  %2818 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str270.c, i8* %2817)
  %2819 = call i1 @nyx_string_equals(%nyx_string* %2816, %nyx_string* %2818)
  br i1 %2819, label %then891, label %else892
then891:
  ret i1 1
else892:
  br label %merge893
merge893:
  %2820 = load %nyx_string*, %nyx_string** %2800
  %2821 = getelementptr [10 x i8], [10 x i8]* @.str271, i32 0, i32 0
  %2822 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str271.c, i8* %2821)
  %2823 = call i1 @nyx_string_equals(%nyx_string* %2820, %nyx_string* %2822)
  br i1 %2823, label %then894, label %else895
then894:
  ret i1 1
else895:
  br label %merge896
merge896:
  %2824 = load %nyx_string*, %nyx_string** %2803
  %2825 = getelementptr [10 x i8], [10 x i8]* @.str272, i32 0, i32 0
  %2826 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str272.c, i8* %2825)
  %2827 = call i1 @nyx_string_equals(%nyx_string* %2824, %nyx_string* %2826)
  br i1 %2827, label %then897, label %else898
then897:
  ret i1 1
else898:
  br label %merge899
merge899:
  %2828 = load %nyx_string*, %nyx_string** %2800
  %2829 = getelementptr [6 x i8], [6 x i8]* @.str273, i32 0, i32 0
  %2830 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str273.c, i8* %2829)
  %2831 = call i1 @nyx_string_equals(%nyx_string* %2828, %nyx_string* %2830)
  br i1 %2831, label %then900, label %else901
then900:
  %2832 = load { i64, i8* }*, { i64, i8* }** %2793
  %2833 = call i64 @nyx_array_get({ i64, i8* }* %2832, i64 1)
  %2834 = alloca i64
  store i64 %2833, i64* %2834
  %2835 = load %nyx_string*, %nyx_string** %2803
  %2836 = getelementptr [6 x i8], [6 x i8]* @.str274, i32 0, i32 0
  %2837 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str274.c, i8* %2836)
  %2838 = call i1 @nyx_string_equals(%nyx_string* %2835, %nyx_string* %2837)
  br i1 %2838, label %then903, label %else904
then903:
  %2839 = load { i64, i8* }*, { i64, i8* }** %2797
  %2840 = call i64 @nyx_array_get({ i64, i8* }* %2839, i64 1)
  %2841 = alloca i64
  store i64 %2840, i64* %2841
  %2842 = load i64, i64* %2834
  %2843 = load i64, i64* %2841
  %2844 = icmp eq i64 %2842, %2843
  br i1 %2844, label %then906, label %else907
then906:
  ret i1 1
else907:
  br label %merge908
merge908:
  %2845 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2846 = load i64, i64* %2834
  %2847 = load { i64, i8* }*, { i64, i8* }** %2797
  %2848 = call i64 @subst_bind({ i64, i8* }* %2845, i64 %2846, { i64, i8* }* %2847)
  ret i1 1
else904:
  br label %merge905
merge905:
  %2849 = load i64, i64* %2834
  %2850 = load { i64, i8* }*, { i64, i8* }** %2797
  %2851 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2852 = call i1 @occurs_check(i64 %2849, { i64, i8* }* %2850, { i64, i8* }* %2851)
  br i1 %2852, label %then909, label %else910
then909:
  ret i1 0
else910:
  br label %merge911
merge911:
  %2853 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2854 = load i64, i64* %2834
  %2855 = load { i64, i8* }*, { i64, i8* }** %2797
  %2856 = call i64 @subst_bind({ i64, i8* }* %2853, i64 %2854, { i64, i8* }* %2855)
  ret i1 1
else901:
  br label %merge902
merge902:
  %2857 = load %nyx_string*, %nyx_string** %2803
  %2858 = getelementptr [6 x i8], [6 x i8]* @.str275, i32 0, i32 0
  %2859 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str275.c, i8* %2858)
  %2860 = call i1 @nyx_string_equals(%nyx_string* %2857, %nyx_string* %2859)
  br i1 %2860, label %then912, label %else913
then912:
  %2861 = load { i64, i8* }*, { i64, i8* }** %2797
  %2862 = call i64 @nyx_array_get({ i64, i8* }* %2861, i64 1)
  %2863 = alloca i64
  store i64 %2862, i64* %2863
  %2864 = load i64, i64* %2863
  %2865 = load { i64, i8* }*, { i64, i8* }** %2793
  %2866 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2867 = call i1 @occurs_check(i64 %2864, { i64, i8* }* %2865, { i64, i8* }* %2866)
  br i1 %2867, label %then915, label %else916
then915:
  ret i1 0
else916:
  br label %merge917
merge917:
  %2868 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2869 = load i64, i64* %2863
  %2870 = load { i64, i8* }*, { i64, i8* }** %2793
  %2871 = call i64 @subst_bind({ i64, i8* }* %2868, i64 %2869, { i64, i8* }* %2870)
  ret i1 1
else913:
  br label %merge914
merge914:
  %2872 = load %nyx_string*, %nyx_string** %2800
  %2873 = load %nyx_string*, %nyx_string** %2803
  %2874 = call i1 @nyx_string_equals(%nyx_string* %2872, %nyx_string* %2873)
  br i1 %2874, label %then918, label %else919
then918:
  %2875 = alloca i1
  store i1 true, i1* %2875
  %2876 = alloca i1
  store i1 true, i1* %2876
  %2877 = alloca i1
  store i1 true, i1* %2877
  %2878 = alloca i1
  store i1 true, i1* %2878
  %2879 = load %nyx_string*, %nyx_string** %2800
  %2880 = getelementptr [8 x i8], [8 x i8]* @.str276, i32 0, i32 0
  %2881 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str276.c, i8* %2880)
  %2882 = call i1 @nyx_string_equals(%nyx_string* %2879, %nyx_string* %2881)
  br i1 %2882, label %sc_or_end922, label %sc_or_rhs921
sc_or_rhs921:
  %2883 = load %nyx_string*, %nyx_string** %2800
  %2884 = getelementptr [9 x i8], [9 x i8]* @.str277, i32 0, i32 0
  %2885 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str277.c, i8* %2884)
  %2886 = call i1 @nyx_string_equals(%nyx_string* %2883, %nyx_string* %2885)
  store i1 %2886, i1* %2878
  br label %sc_or_end922
sc_or_end922:
  %2887 = load i1, i1* %2878
  br i1 %2887, label %sc_or_end924, label %sc_or_rhs923
sc_or_rhs923:
  %2888 = load %nyx_string*, %nyx_string** %2800
  %2889 = getelementptr [6 x i8], [6 x i8]* @.str278, i32 0, i32 0
  %2890 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str278.c, i8* %2889)
  %2891 = call i1 @nyx_string_equals(%nyx_string* %2888, %nyx_string* %2890)
  store i1 %2891, i1* %2877
  br label %sc_or_end924
sc_or_end924:
  %2892 = load i1, i1* %2877
  br i1 %2892, label %sc_or_end926, label %sc_or_rhs925
sc_or_rhs925:
  %2893 = load %nyx_string*, %nyx_string** %2800
  %2894 = getelementptr [6 x i8], [6 x i8]* @.str279, i32 0, i32 0
  %2895 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str279.c, i8* %2894)
  %2896 = call i1 @nyx_string_equals(%nyx_string* %2893, %nyx_string* %2895)
  store i1 %2896, i1* %2876
  br label %sc_or_end926
sc_or_end926:
  %2897 = load i1, i1* %2876
  br i1 %2897, label %sc_or_end928, label %sc_or_rhs927
sc_or_rhs927:
  %2898 = load %nyx_string*, %nyx_string** %2800
  %2899 = getelementptr [9 x i8], [9 x i8]* @.str280, i32 0, i32 0
  %2900 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str280.c, i8* %2899)
  %2901 = call i1 @nyx_string_equals(%nyx_string* %2898, %nyx_string* %2900)
  store i1 %2901, i1* %2875
  br label %sc_or_end928
sc_or_end928:
  %2902 = load i1, i1* %2875
  br i1 %2902, label %then929, label %else930
then929:
  %2903 = load { i64, i8* }*, { i64, i8* }** %2793
  %2904 = call i64 @nyx_array_get({ i64, i8* }* %2903, i64 1)
  %2905 = inttoptr i64 %2904 to { i64, i8* }*
  %2906 = alloca { i64, i8* }*
  store { i64, i8* }* %2905, { i64, i8* }** %2906
  %2907 = load { i64, i8* }*, { i64, i8* }** %2797
  %2908 = call i64 @nyx_array_get({ i64, i8* }* %2907, i64 1)
  %2909 = inttoptr i64 %2908 to { i64, i8* }*
  %2910 = alloca { i64, i8* }*
  store { i64, i8* }* %2909, { i64, i8* }** %2910
  %2911 = load { i64, i8* }*, { i64, i8* }** %2906
  %2912 = load { i64, i8* }*, { i64, i8* }** %2910
  %2913 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2914 = call i1 @unify_var({ i64, i8* }* %2911, { i64, i8* }* %2912, { i64, i8* }* %2913)
  ret i1 %2914
else930:
  br label %merge931
merge931:
  %2915 = alloca i1
  store i1 true, i1* %2915
  %2916 = load %nyx_string*, %nyx_string** %2800
  %2917 = getelementptr [9 x i8], [9 x i8]* @.str281, i32 0, i32 0
  %2918 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str281.c, i8* %2917)
  %2919 = call i1 @nyx_string_equals(%nyx_string* %2916, %nyx_string* %2918)
  br i1 %2919, label %sc_or_end933, label %sc_or_rhs932
sc_or_rhs932:
  %2920 = load %nyx_string*, %nyx_string** %2800
  %2921 = getelementptr [6 x i8], [6 x i8]* @.str282, i32 0, i32 0
  %2922 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str282.c, i8* %2921)
  %2923 = call i1 @nyx_string_equals(%nyx_string* %2920, %nyx_string* %2922)
  store i1 %2923, i1* %2915
  br label %sc_or_end933
sc_or_end933:
  %2924 = load i1, i1* %2915
  br i1 %2924, label %then934, label %else935
then934:
  %2925 = load { i64, i8* }*, { i64, i8* }** %2793
  %2926 = call i64 @nyx_array_get({ i64, i8* }* %2925, i64 1)
  %2927 = inttoptr i64 %2926 to { i64, i8* }*
  %2928 = alloca { i64, i8* }*
  store { i64, i8* }* %2927, { i64, i8* }** %2928
  %2929 = load { i64, i8* }*, { i64, i8* }** %2797
  %2930 = call i64 @nyx_array_get({ i64, i8* }* %2929, i64 1)
  %2931 = inttoptr i64 %2930 to { i64, i8* }*
  %2932 = alloca { i64, i8* }*
  store { i64, i8* }* %2931, { i64, i8* }** %2932
  %2933 = load { i64, i8* }*, { i64, i8* }** %2928
  %2934 = load { i64, i8* }*, { i64, i8* }** %2932
  %2935 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2936 = call i1 @unify_var({ i64, i8* }* %2933, { i64, i8* }* %2934, { i64, i8* }* %2935)
  %2937 = xor i1 %2936, true
  br i1 %2937, label %then937, label %else938
then937:
  ret i1 0
else938:
  br label %merge939
merge939:
  %2938 = load { i64, i8* }*, { i64, i8* }** %2793
  %2939 = call i64 @nyx_array_get({ i64, i8* }* %2938, i64 2)
  %2940 = inttoptr i64 %2939 to { i64, i8* }*
  %2941 = alloca { i64, i8* }*
  store { i64, i8* }* %2940, { i64, i8* }** %2941
  %2942 = load { i64, i8* }*, { i64, i8* }** %2797
  %2943 = call i64 @nyx_array_get({ i64, i8* }* %2942, i64 2)
  %2944 = inttoptr i64 %2943 to { i64, i8* }*
  %2945 = alloca { i64, i8* }*
  store { i64, i8* }* %2944, { i64, i8* }** %2945
  %2946 = load { i64, i8* }*, { i64, i8* }** %2941
  %2947 = load { i64, i8* }*, { i64, i8* }** %2945
  %2948 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2949 = call i1 @unify_var({ i64, i8* }* %2946, { i64, i8* }* %2947, { i64, i8* }* %2948)
  ret i1 %2949
else935:
  br label %merge936
merge936:
  %2950 = load %nyx_string*, %nyx_string** %2800
  %2951 = getelementptr [5 x i8], [5 x i8]* @.str283, i32 0, i32 0
  %2952 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str283.c, i8* %2951)
  %2953 = call i1 @nyx_string_equals(%nyx_string* %2950, %nyx_string* %2952)
  br i1 %2953, label %then940, label %else941
then940:
  %2954 = load { i64, i8* }*, { i64, i8* }** %2793
  %2955 = call i64 @nyx_array_get({ i64, i8* }* %2954, i64 1)
  %2956 = inttoptr i64 %2955 to { i64, i8* }*
  %2957 = alloca { i64, i8* }*
  store { i64, i8* }* %2956, { i64, i8* }** %2957
  %2958 = load { i64, i8* }*, { i64, i8* }** %2797
  %2959 = call i64 @nyx_array_get({ i64, i8* }* %2958, i64 1)
  %2960 = inttoptr i64 %2959 to { i64, i8* }*
  %2961 = alloca { i64, i8* }*
  store { i64, i8* }* %2960, { i64, i8* }** %2961
  %2962 = load { i64, i8* }*, { i64, i8* }** %2957
  %2963 = call i64 @nyx_array_length({ i64, i8* }* %2962)
  %2964 = load { i64, i8* }*, { i64, i8* }** %2961
  %2965 = call i64 @nyx_array_length({ i64, i8* }* %2964)
  %2966 = icmp ne i64 %2963, %2965
  br i1 %2966, label %then943, label %else944
then943:
  ret i1 0
else944:
  br label %merge945
merge945:
  %2967 = alloca i64
  store i64 0, i64* %2967
  br label %while_cond946
while_cond946:
  %2968 = load i64, i64* %2967
  %2969 = load { i64, i8* }*, { i64, i8* }** %2957
  %2970 = call i64 @nyx_array_length({ i64, i8* }* %2969)
  %2971 = icmp slt i64 %2968, %2970
  br i1 %2971, label %while_body947, label %while_end948
while_body947:
  %2972 = load { i64, i8* }*, { i64, i8* }** %2957
  %2973 = load i64, i64* %2967
  %2974 = call i64 @nyx_array_get({ i64, i8* }* %2972, i64 %2973)
  %2975 = inttoptr i64 %2974 to { i64, i8* }*
  %2976 = alloca { i64, i8* }*
  store { i64, i8* }* %2975, { i64, i8* }** %2976
  %2977 = load { i64, i8* }*, { i64, i8* }** %2961
  %2978 = load i64, i64* %2967
  %2979 = call i64 @nyx_array_get({ i64, i8* }* %2977, i64 %2978)
  %2980 = inttoptr i64 %2979 to { i64, i8* }*
  %2981 = alloca { i64, i8* }*
  store { i64, i8* }* %2980, { i64, i8* }** %2981
  %2982 = load { i64, i8* }*, { i64, i8* }** %2976
  %2983 = load { i64, i8* }*, { i64, i8* }** %2981
  %2984 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2985 = call i1 @unify_var({ i64, i8* }* %2982, { i64, i8* }* %2983, { i64, i8* }* %2984)
  %2986 = xor i1 %2985, true
  br i1 %2986, label %then949, label %else950
then949:
  ret i1 0
else950:
  br label %merge951
merge951:
  %2987 = load i64, i64* %2967
  %2988 = add i64 %2987, 1
  store i64 %2988, i64* %2967
  br label %while_cond946
while_end948:
  %2989 = load { i64, i8* }*, { i64, i8* }** %2793
  %2990 = call i64 @nyx_array_get({ i64, i8* }* %2989, i64 2)
  %2991 = inttoptr i64 %2990 to { i64, i8* }*
  %2992 = alloca { i64, i8* }*
  store { i64, i8* }* %2991, { i64, i8* }** %2992
  %2993 = load { i64, i8* }*, { i64, i8* }** %2797
  %2994 = call i64 @nyx_array_get({ i64, i8* }* %2993, i64 2)
  %2995 = inttoptr i64 %2994 to { i64, i8* }*
  %2996 = alloca { i64, i8* }*
  store { i64, i8* }* %2995, { i64, i8* }** %2996
  %2997 = load { i64, i8* }*, { i64, i8* }** %2992
  %2998 = load { i64, i8* }*, { i64, i8* }** %2996
  %2999 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %3000 = call i1 @unify_var({ i64, i8* }* %2997, { i64, i8* }* %2998, { i64, i8* }* %2999)
  ret i1 %3000
else941:
  br label %merge942
merge942:
  %3001 = alloca i1
  store i1 true, i1* %3001
  %3002 = load %nyx_string*, %nyx_string** %2800
  %3003 = getelementptr [9 x i8], [9 x i8]* @.str284, i32 0, i32 0
  %3004 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str284.c, i8* %3003)
  %3005 = call i1 @nyx_string_equals(%nyx_string* %3002, %nyx_string* %3004)
  br i1 %3005, label %sc_or_end953, label %sc_or_rhs952
sc_or_rhs952:
  %3006 = load %nyx_string*, %nyx_string** %2800
  %3007 = getelementptr [7 x i8], [7 x i8]* @.str285, i32 0, i32 0
  %3008 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str285.c, i8* %3007)
  %3009 = call i1 @nyx_string_equals(%nyx_string* %3006, %nyx_string* %3008)
  store i1 %3009, i1* %3001
  br label %sc_or_end953
sc_or_end953:
  %3010 = load i1, i1* %3001
  br i1 %3010, label %then954, label %else955
then954:
  %3011 = load { i64, i8* }*, { i64, i8* }** %2793
  %3012 = call i64 @nyx_array_get({ i64, i8* }* %3011, i64 1)
  %3013 = inttoptr i64 %3012 to %nyx_string*
  %3014 = alloca %nyx_string*
  store %nyx_string* %3013, %nyx_string** %3014
  %3015 = load { i64, i8* }*, { i64, i8* }** %2797
  %3016 = call i64 @nyx_array_get({ i64, i8* }* %3015, i64 1)
  %3017 = inttoptr i64 %3016 to %nyx_string*
  %3018 = alloca %nyx_string*
  store %nyx_string* %3017, %nyx_string** %3018
  %3019 = load %nyx_string*, %nyx_string** %3014
  %3020 = load %nyx_string*, %nyx_string** %3018
  %3021 = call i1 @nyx_string_equals(%nyx_string* %3019, %nyx_string* %3020)
  %3022 = xor i1 %3021, true
  br i1 %3022, label %then957, label %else958
then957:
  ret i1 0
else958:
  br label %merge959
merge959:
  %3023 = load { i64, i8* }*, { i64, i8* }** %2793
  %3024 = call i64 @nyx_array_get({ i64, i8* }* %3023, i64 2)
  %3025 = inttoptr i64 %3024 to { i64, i8* }*
  %3026 = alloca { i64, i8* }*
  store { i64, i8* }* %3025, { i64, i8* }** %3026
  %3027 = load { i64, i8* }*, { i64, i8* }** %2797
  %3028 = call i64 @nyx_array_get({ i64, i8* }* %3027, i64 2)
  %3029 = inttoptr i64 %3028 to { i64, i8* }*
  %3030 = alloca { i64, i8* }*
  store { i64, i8* }* %3029, { i64, i8* }** %3030
  %3031 = load { i64, i8* }*, { i64, i8* }** %3026
  %3032 = call i64 @nyx_array_length({ i64, i8* }* %3031)
  %3033 = icmp eq i64 %3032, 0
  br i1 %3033, label %then960, label %else961
then960:
  ret i1 1
else961:
  br label %merge962
merge962:
  %3034 = load { i64, i8* }*, { i64, i8* }** %3030
  %3035 = call i64 @nyx_array_length({ i64, i8* }* %3034)
  %3036 = icmp eq i64 %3035, 0
  br i1 %3036, label %then963, label %else964
then963:
  ret i1 1
else964:
  br label %merge965
merge965:
  %3037 = load { i64, i8* }*, { i64, i8* }** %3026
  %3038 = call i64 @nyx_array_length({ i64, i8* }* %3037)
  %3039 = load { i64, i8* }*, { i64, i8* }** %3030
  %3040 = call i64 @nyx_array_length({ i64, i8* }* %3039)
  %3041 = icmp ne i64 %3038, %3040
  br i1 %3041, label %then966, label %else967
then966:
  ret i1 0
else967:
  br label %merge968
merge968:
  %3042 = alloca i64
  store i64 0, i64* %3042
  br label %while_cond969
while_cond969:
  %3043 = load i64, i64* %3042
  %3044 = load { i64, i8* }*, { i64, i8* }** %3026
  %3045 = call i64 @nyx_array_length({ i64, i8* }* %3044)
  %3046 = icmp slt i64 %3043, %3045
  br i1 %3046, label %while_body970, label %while_end971
while_body970:
  %3047 = load { i64, i8* }*, { i64, i8* }** %3026
  %3048 = load i64, i64* %3042
  %3049 = call i64 @nyx_array_get({ i64, i8* }* %3047, i64 %3048)
  %3050 = inttoptr i64 %3049 to { i64, i8* }*
  %3051 = alloca { i64, i8* }*
  store { i64, i8* }* %3050, { i64, i8* }** %3051
  %3052 = load { i64, i8* }*, { i64, i8* }** %3030
  %3053 = load i64, i64* %3042
  %3054 = call i64 @nyx_array_get({ i64, i8* }* %3052, i64 %3053)
  %3055 = inttoptr i64 %3054 to { i64, i8* }*
  %3056 = alloca { i64, i8* }*
  store { i64, i8* }* %3055, { i64, i8* }** %3056
  %3057 = load { i64, i8* }*, { i64, i8* }** %3051
  %3058 = load { i64, i8* }*, { i64, i8* }** %3056
  %3059 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %3060 = call i1 @unify_var({ i64, i8* }* %3057, { i64, i8* }* %3058, { i64, i8* }* %3059)
  %3061 = xor i1 %3060, true
  br i1 %3061, label %then972, label %else973
then972:
  ret i1 0
else973:
  br label %merge974
merge974:
  %3062 = load i64, i64* %3042
  %3063 = add i64 %3062, 1
  store i64 %3063, i64* %3042
  br label %while_cond969
while_end971:
  ret i1 1
else955:
  br label %merge956
merge956:
  br label %merge920
else919:
  br label %merge920
merge920:
  %3064 = load { i64, i8* }*, { i64, i8* }** %2793
  %3065 = load { i64, i8* }*, { i64, i8* }** %2797
  %3066 = call i1 @ty_eq({ i64, i8* }* %3064, { i64, i8* }* %3065)
  ret i1 %3066
}

define { i64, i8* }* @freshen_params(
{ i64, i8* }* %param_names.param, { i64, i8* }* %id_counter.param) {
  %param_names.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %param_names.param, { i64, i8* }** %param_names.ptr
  %id_counter.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %id_counter.param, { i64, i8* }** %id_counter.ptr
  %3067 = call { i64, i8* }* @nyx_array_new_ptr()
  %3068 = alloca { i64, i8* }*
  store { i64, i8* }* %3067, { i64, i8* }** %3068
  %3069 = call { i64, i8* }* @nyx_array_new_ptr()
  %3070 = alloca { i64, i8* }*
  store { i64, i8* }* %3069, { i64, i8* }** %3070
  %3071 = alloca i64
  store i64 0, i64* %3071
  br label %while_cond975
while_cond975:
  %3072 = load i64, i64* %3071
  %3073 = load { i64, i8* }*, { i64, i8* }** %param_names.ptr
  %3074 = call i64 @nyx_array_length({ i64, i8* }* %3073)
  %3075 = icmp slt i64 %3072, %3074
  br i1 %3075, label %while_body976, label %while_end977
while_body976:
  %3076 = load { i64, i8* }*, { i64, i8* }** %param_names.ptr
  %3077 = load i64, i64* %3071
  %3078 = call i64 @nyx_array_get({ i64, i8* }* %3076, i64 %3077)
  %3079 = inttoptr i64 %3078 to %nyx_string*
  %3080 = alloca %nyx_string*
  store %nyx_string* %3079, %nyx_string** %3080
  %3081 = load { i64, i8* }*, { i64, i8* }** %id_counter.ptr
  %3082 = call i64 @nyx_array_get({ i64, i8* }* %3081, i64 0)
  %3083 = alloca i64
  store i64 %3082, i64* %3083
  %3084 = load { i64, i8* }*, { i64, i8* }** %3068
  %3085 = load %nyx_string*, %nyx_string** %3080
  %3086 = ptrtoint %nyx_string* %3085 to i64
  call void @nyx_array_push({ i64, i8* }* %3084, i64 %3086)
  %3087 = load { i64, i8* }*, { i64, i8* }** %3070
  %3088 = load i64, i64* %3083
  %3089 = call { i64, i8* }* @ty_var(i64 %3088)
  %3090 = ptrtoint { i64, i8* }* %3089 to i64
  call void @nyx_array_push({ i64, i8* }* %3087, i64 %3090)
  %3091 = load { i64, i8* }*, { i64, i8* }** %id_counter.ptr
  %3092 = load i64, i64* %3083
  %3093 = add i64 %3092, 1
  call void @nyx_array_set({ i64, i8* }* %3091, i64 0, i64 %3093)
  %3094 = load i64, i64* %3071
  %3095 = add i64 %3094, 1
  store i64 %3095, i64* %3071
  br label %while_cond975
while_end977:
  %3096 = call { i64, i8* }* @nyx_array_new_ptr()
  %3097 = load { i64, i8* }*, { i64, i8* }** %3068
  %3098 = bitcast { i64, i8* }* %3097 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %3096, i8* %3098)
  %3099 = load { i64, i8* }*, { i64, i8* }** %3070
  %3100 = bitcast { i64, i8* }* %3099 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %3096, i8* %3100)
  ret { i64, i8* }* %3096
}

define { i64, i8* }* @known_primitive_names(
) {
  %3101 = call { i64, i8* }* @nyx_array_new_ptr()
  %3102 = getelementptr [4 x i8], [4 x i8]* @.str286, i32 0, i32 0
  %3103 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str286.c, i8* %3102)
  %3104 = ptrtoint %nyx_string* %3103 to i64
  call void @nyx_array_push({ i64, i8* }* %3101, i64 %3104)
  %3105 = getelementptr [6 x i8], [6 x i8]* @.str287, i32 0, i32 0
  %3106 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str287.c, i8* %3105)
  %3107 = ptrtoint %nyx_string* %3106 to i64
  call void @nyx_array_push({ i64, i8* }* %3101, i64 %3107)
  %3108 = getelementptr [5 x i8], [5 x i8]* @.str288, i32 0, i32 0
  %3109 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str288.c, i8* %3108)
  %3110 = ptrtoint %nyx_string* %3109 to i64
  call void @nyx_array_push({ i64, i8* }* %3101, i64 %3110)
  %3111 = getelementptr [7 x i8], [7 x i8]* @.str289, i32 0, i32 0
  %3112 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str289.c, i8* %3111)
  %3113 = ptrtoint %nyx_string* %3112 to i64
  call void @nyx_array_push({ i64, i8* }* %3101, i64 %3113)
  %3114 = getelementptr [5 x i8], [5 x i8]* @.str290, i32 0, i32 0
  %3115 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str290.c, i8* %3114)
  %3116 = ptrtoint %nyx_string* %3115 to i64
  call void @nyx_array_push({ i64, i8* }* %3101, i64 %3116)
  %3117 = getelementptr [5 x i8], [5 x i8]* @.str291, i32 0, i32 0
  %3118 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str291.c, i8* %3117)
  %3119 = ptrtoint %nyx_string* %3118 to i64
  call void @nyx_array_push({ i64, i8* }* %3101, i64 %3119)
  %3120 = getelementptr [3 x i8], [3 x i8]* @.str292, i32 0, i32 0
  %3121 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str292.c, i8* %3120)
  %3122 = ptrtoint %nyx_string* %3121 to i64
  call void @nyx_array_push({ i64, i8* }* %3101, i64 %3122)
  %3123 = getelementptr [4 x i8], [4 x i8]* @.str293, i32 0, i32 0
  %3124 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str293.c, i8* %3123)
  %3125 = ptrtoint %nyx_string* %3124 to i64
  call void @nyx_array_push({ i64, i8* }* %3101, i64 %3125)
  %3126 = getelementptr [4 x i8], [4 x i8]* @.str294, i32 0, i32 0
  %3127 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str294.c, i8* %3126)
  %3128 = ptrtoint %nyx_string* %3127 to i64
  call void @nyx_array_push({ i64, i8* }* %3101, i64 %3128)
  %3129 = getelementptr [4 x i8], [4 x i8]* @.str295, i32 0, i32 0
  %3130 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str295.c, i8* %3129)
  %3131 = ptrtoint %nyx_string* %3130 to i64
  call void @nyx_array_push({ i64, i8* }* %3101, i64 %3131)
  %3132 = getelementptr [3 x i8], [3 x i8]* @.str296, i32 0, i32 0
  %3133 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str296.c, i8* %3132)
  %3134 = ptrtoint %nyx_string* %3133 to i64
  call void @nyx_array_push({ i64, i8* }* %3101, i64 %3134)
  %3135 = getelementptr [4 x i8], [4 x i8]* @.str297, i32 0, i32 0
  %3136 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str297.c, i8* %3135)
  %3137 = ptrtoint %nyx_string* %3136 to i64
  call void @nyx_array_push({ i64, i8* }* %3101, i64 %3137)
  %3138 = getelementptr [4 x i8], [4 x i8]* @.str298, i32 0, i32 0
  %3139 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str298.c, i8* %3138)
  %3140 = ptrtoint %nyx_string* %3139 to i64
  call void @nyx_array_push({ i64, i8* }* %3101, i64 %3140)
  %3141 = getelementptr [4 x i8], [4 x i8]* @.str299, i32 0, i32 0
  %3142 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str299.c, i8* %3141)
  %3143 = ptrtoint %nyx_string* %3142 to i64
  call void @nyx_array_push({ i64, i8* }* %3101, i64 %3143)
  %3144 = getelementptr [4 x i8], [4 x i8]* @.str300, i32 0, i32 0
  %3145 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str300.c, i8* %3144)
  %3146 = ptrtoint %nyx_string* %3145 to i64
  call void @nyx_array_push({ i64, i8* }* %3101, i64 %3146)
  %3147 = getelementptr [6 x i8], [6 x i8]* @.str301, i32 0, i32 0
  %3148 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str301.c, i8* %3147)
  %3149 = ptrtoint %nyx_string* %3148 to i64
  call void @nyx_array_push({ i64, i8* }* %3101, i64 %3149)
  %3150 = getelementptr [6 x i8], [6 x i8]* @.str302, i32 0, i32 0
  %3151 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str302.c, i8* %3150)
  %3152 = ptrtoint %nyx_string* %3151 to i64
  call void @nyx_array_push({ i64, i8* }* %3101, i64 %3152)
  %3153 = getelementptr [7 x i8], [7 x i8]* @.str303, i32 0, i32 0
  %3154 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str303.c, i8* %3153)
  %3155 = ptrtoint %nyx_string* %3154 to i64
  call void @nyx_array_push({ i64, i8* }* %3101, i64 %3155)
  %3156 = getelementptr [7 x i8], [7 x i8]* @.str304, i32 0, i32 0
  %3157 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str304.c, i8* %3156)
  %3158 = ptrtoint %nyx_string* %3157 to i64
  call void @nyx_array_push({ i64, i8* }* %3101, i64 %3158)
  %3159 = getelementptr [4 x i8], [4 x i8]* @.str305, i32 0, i32 0
  %3160 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str305.c, i8* %3159)
  %3161 = ptrtoint %nyx_string* %3160 to i64
  call void @nyx_array_push({ i64, i8* }* %3101, i64 %3161)
  %3162 = getelementptr [14 x i8], [14 x i8]* @.str306, i32 0, i32 0
  %3163 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str306.c, i8* %3162)
  %3164 = ptrtoint %nyx_string* %3163 to i64
  call void @nyx_array_push({ i64, i8* }* %3101, i64 %3164)
  %3165 = getelementptr [9 x i8], [9 x i8]* @.str307, i32 0, i32 0
  %3166 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str307.c, i8* %3165)
  %3167 = ptrtoint %nyx_string* %3166 to i64
  call void @nyx_array_push({ i64, i8* }* %3101, i64 %3167)
  %3168 = getelementptr [8 x i8], [8 x i8]* @.str308, i32 0, i32 0
  %3169 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str308.c, i8* %3168)
  %3170 = ptrtoint %nyx_string* %3169 to i64
  call void @nyx_array_push({ i64, i8* }* %3101, i64 %3170)
  %3171 = getelementptr [5 x i8], [5 x i8]* @.str309, i32 0, i32 0
  %3172 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str309.c, i8* %3171)
  %3173 = ptrtoint %nyx_string* %3172 to i64
  call void @nyx_array_push({ i64, i8* }* %3101, i64 %3173)
  ret { i64, i8* }* %3101
}


attributes #0 = { returns_twice }

