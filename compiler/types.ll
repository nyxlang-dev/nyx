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
declare i64 @nyx_array_contains({ i64, i8* }*, i64)
declare void @nyx_array_push_tagged({ i64, i8* }*, i64, i64)
declare void @nyx_array_set_tagged({ i64, i8* }*, i64, i64, i64)
declare i64 @nyx_array_contains_tagged({ i64, i8* }*, i64, i64)
declare i64 @nyx_array_index_of_tagged({ i64, i8* }*, i64, i64)
declare i64 @nyx_array_get_checked({ i64, i8* }*, i64, i64)
declare double @nyx_slot_as_float_checked({ i64, i8* }*, i64)
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
  call void @nyx_array_push_tagged({ i64, i8* }* %1, i64 %4, i64 2)
  ret { i64, i8* }* %1
}

define { i64, i8* }* @ty_float(
) {
  %5 = call { i64, i8* }* @nyx_array_new_ptr()
  %6 = getelementptr [8 x i8], [8 x i8]* @.str1, i32 0, i32 0
  %7 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %6)
  %8 = ptrtoint %nyx_string* %7 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %5, i64 %8, i64 2)
  ret { i64, i8* }* %5
}

define { i64, i8* }* @ty_bool(
) {
  %9 = call { i64, i8* }* @nyx_array_new_ptr()
  %10 = getelementptr [7 x i8], [7 x i8]* @.str2, i32 0, i32 0
  %11 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %10)
  %12 = ptrtoint %nyx_string* %11 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %9, i64 %12, i64 2)
  ret { i64, i8* }* %9
}

define { i64, i8* }* @ty_string(
) {
  %13 = call { i64, i8* }* @nyx_array_new_ptr()
  %14 = getelementptr [9 x i8], [9 x i8]* @.str3, i32 0, i32 0
  %15 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %14)
  %16 = ptrtoint %nyx_string* %15 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %13, i64 %16, i64 2)
  ret { i64, i8* }* %13
}

define { i64, i8* }* @ty_char(
) {
  %17 = call { i64, i8* }* @nyx_array_new_ptr()
  %18 = getelementptr [7 x i8], [7 x i8]* @.str4, i32 0, i32 0
  %19 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %18)
  %20 = ptrtoint %nyx_string* %19 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %17, i64 %20, i64 2)
  ret { i64, i8* }* %17
}

define { i64, i8* }* @ty_unit(
) {
  %21 = call { i64, i8* }* @nyx_array_new_ptr()
  %22 = getelementptr [7 x i8], [7 x i8]* @.str5, i32 0, i32 0
  %23 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %22)
  %24 = ptrtoint %nyx_string* %23 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %21, i64 %24, i64 2)
  ret { i64, i8* }* %21
}

define { i64, i8* }* @ty_unknown(
) {
  %25 = call { i64, i8* }* @nyx_array_new_ptr()
  %26 = getelementptr [10 x i8], [10 x i8]* @.str6, i32 0, i32 0
  %27 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %26)
  %28 = ptrtoint %nyx_string* %27 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %25, i64 %28, i64 2)
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
  call void @nyx_array_push_tagged({ i64, i8* }* %29, i64 %32, i64 2)
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
  call void @nyx_array_push_tagged({ i64, i8* }* %35, i64 %38, i64 2)
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
  call void @nyx_array_push_tagged({ i64, i8* }* %41, i64 %44, i64 2)
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
  call void @nyx_array_push_tagged({ i64, i8* }* %49, i64 %52, i64 2)
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
  call void @nyx_array_push_tagged({ i64, i8* }* %57, i64 %60, i64 2)
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
  call void @nyx_array_push_tagged({ i64, i8* }* %63, i64 %66, i64 2)
  %67 = load { i64, i8* }*, { i64, i8* }** %inner.ptr
  %68 = bitcast { i64, i8* }* %67 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %63, i8* %68)
  %69 = getelementptr [1 x i8], [1 x i8]* @.str13, i32 0, i32 0
  %70 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str13.c, i8* %69)
  %71 = ptrtoint %nyx_string* %70 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %63, i64 %71, i64 2)
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
  call void @nyx_array_push_tagged({ i64, i8* }* %72, i64 %75, i64 2)
  %76 = load { i64, i8* }*, { i64, i8* }** %inner.ptr
  %77 = bitcast { i64, i8* }* %76 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %72, i8* %77)
  %78 = getelementptr [1 x i8], [1 x i8]* @.str15, i32 0, i32 0
  %79 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str15.c, i8* %78)
  %80 = ptrtoint %nyx_string* %79 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %72, i64 %80, i64 2)
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
  call void @nyx_array_push_tagged({ i64, i8* }* %81, i64 %84, i64 2)
  %85 = load { i64, i8* }*, { i64, i8* }** %inner.ptr
  %86 = bitcast { i64, i8* }* %85 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %81, i8* %86)
  %87 = load %nyx_string*, %nyx_string** %region.ptr
  %88 = ptrtoint %nyx_string* %87 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %81, i64 %88, i64 2)
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
  call void @nyx_array_push_tagged({ i64, i8* }* %89, i64 %92, i64 2)
  %93 = load { i64, i8* }*, { i64, i8* }** %inner.ptr
  %94 = bitcast { i64, i8* }* %93 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %89, i8* %94)
  %95 = load %nyx_string*, %nyx_string** %region.ptr
  %96 = ptrtoint %nyx_string* %95 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %89, i64 %96, i64 2)
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
  call void @nyx_array_push_tagged({ i64, i8* }* %105, i64 %108, i64 2)
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
  call void @nyx_array_push_tagged({ i64, i8* }* %113, i64 %116, i64 2)
  %117 = load %nyx_string*, %nyx_string** %trait_name.ptr
  %118 = ptrtoint %nyx_string* %117 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %113, i64 %118, i64 2)
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
  call void @nyx_array_push_tagged({ i64, i8* }* %119, i64 %122, i64 2)
  %123 = load %nyx_string*, %nyx_string** %name.ptr
  %124 = ptrtoint %nyx_string* %123 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %119, i64 %124, i64 2)
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
  call void @nyx_array_push_tagged({ i64, i8* }* %127, i64 %130, i64 2)
  %131 = load %nyx_string*, %nyx_string** %name.ptr
  %132 = ptrtoint %nyx_string* %131 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %127, i64 %132, i64 2)
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
  call void @nyx_array_push_tagged({ i64, i8* }* %135, i64 %138, i64 2)
  %139 = load %nyx_string*, %nyx_string** %param_name.ptr
  %140 = ptrtoint %nyx_string* %139 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %135, i64 %140, i64 2)
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
  call void @nyx_array_push_tagged({ i64, i8* }* %141, i64 %144, i64 2)
  %145 = load %nyx_string*, %nyx_string** %name.ptr
  %146 = ptrtoint %nyx_string* %145 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %141, i64 %146, i64 2)
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
  %153 = call i64 @nyx_array_get_checked({ i64, i8* }* %152, i64 0, i64 2)
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
  %243 = call i64 @nyx_array_get_checked({ i64, i8* }* %242, i64 1, i64 2)
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
  %264 = call i64 @nyx_array_get_checked({ i64, i8* }* %263, i64 1, i64 2)
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
  %285 = call i64 @nyx_array_get_checked({ i64, i8* }* %284, i64 1, i64 2)
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
  %303 = call i64 @nyx_array_get_checked({ i64, i8* }* %302, i64 1, i64 2)
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
  %448 = call i8* @llvm.stacksave()
  br label %while_cond148
while_cond148:
  %449 = load i64, i64* %447
  %450 = load { i64, i8* }*, { i64, i8* }** %437
  %451 = call i64 @nyx_array_length({ i64, i8* }* %450)
  %452 = icmp slt i64 %449, %451
  br i1 %452, label %while_body149, label %while_end150
while_body149:
  call void @llvm.stackrestore(i8* %448)
  %453 = load { i64, i8* }*, { i64, i8* }** %437
  %454 = load i64, i64* %447
  %455 = call i64 @nyx_array_get({ i64, i8* }* %453, i64 %454)
  %456 = inttoptr i64 %455 to { i64, i8* }*
  %457 = alloca { i64, i8* }*
  store { i64, i8* }* %456, { i64, i8* }** %457
  %458 = load { i64, i8* }*, { i64, i8* }** %441
  %459 = load i64, i64* %447
  %460 = call i64 @nyx_array_get({ i64, i8* }* %458, i64 %459)
  %461 = inttoptr i64 %460 to { i64, i8* }*
  %462 = alloca { i64, i8* }*
  store { i64, i8* }* %461, { i64, i8* }** %462
  %463 = load { i64, i8* }*, { i64, i8* }** %457
  %464 = load { i64, i8* }*, { i64, i8* }** %462
  %465 = call i1 @ty_eq({ i64, i8* }* %463, { i64, i8* }* %464)
  %466 = xor i1 %465, true
  br i1 %466, label %then151, label %else152
then151:
  ret i1 0
else152:
  br label %merge153
merge153:
  %467 = load i64, i64* %447
  %468 = add i64 %467, 1
  store i64 %468, i64* %447
  br label %while_cond148
while_end150:
  %469 = load { i64, i8* }*, { i64, i8* }** %a.ptr
  %470 = call i64 @nyx_array_get({ i64, i8* }* %469, i64 2)
  %471 = inttoptr i64 %470 to { i64, i8* }*
  %472 = alloca { i64, i8* }*
  store { i64, i8* }* %471, { i64, i8* }** %472
  %473 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %474 = call i64 @nyx_array_get({ i64, i8* }* %473, i64 2)
  %475 = inttoptr i64 %474 to { i64, i8* }*
  %476 = alloca { i64, i8* }*
  store { i64, i8* }* %475, { i64, i8* }** %476
  %477 = load { i64, i8* }*, { i64, i8* }** %472
  %478 = load { i64, i8* }*, { i64, i8* }** %476
  %479 = call i1 @ty_eq({ i64, i8* }* %477, { i64, i8* }* %478)
  ret i1 %479
else143:
  br label %merge144
merge144:
  %480 = alloca i1
  store i1 true, i1* %480
  %481 = load %nyx_string*, %nyx_string** %204
  %482 = getelementptr [9 x i8], [9 x i8]* @.str73, i32 0, i32 0
  %483 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str73.c, i8* %482)
  %484 = call i1 @nyx_string_equals(%nyx_string* %481, %nyx_string* %483)
  br i1 %484, label %sc_or_end155, label %sc_or_rhs154
sc_or_rhs154:
  %485 = load %nyx_string*, %nyx_string** %204
  %486 = getelementptr [7 x i8], [7 x i8]* @.str74, i32 0, i32 0
  %487 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str74.c, i8* %486)
  %488 = call i1 @nyx_string_equals(%nyx_string* %485, %nyx_string* %487)
  store i1 %488, i1* %480
  br label %sc_or_end155
sc_or_end155:
  %489 = load i1, i1* %480
  br i1 %489, label %then156, label %else157
then156:
  %490 = load { i64, i8* }*, { i64, i8* }** %a.ptr
  %491 = call i64 @nyx_array_get_checked({ i64, i8* }* %490, i64 1, i64 2)
  %492 = inttoptr i64 %491 to %nyx_string*
  %493 = alloca %nyx_string*
  store %nyx_string* %492, %nyx_string** %493
  %494 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %495 = call i64 @nyx_array_get_checked({ i64, i8* }* %494, i64 1, i64 2)
  %496 = inttoptr i64 %495 to %nyx_string*
  %497 = alloca %nyx_string*
  store %nyx_string* %496, %nyx_string** %497
  %498 = load %nyx_string*, %nyx_string** %493
  %499 = load %nyx_string*, %nyx_string** %497
  %500 = call i1 @nyx_string_equals(%nyx_string* %498, %nyx_string* %499)
  %501 = xor i1 %500, true
  br i1 %501, label %then159, label %else160
then159:
  ret i1 0
else160:
  br label %merge161
merge161:
  %502 = load { i64, i8* }*, { i64, i8* }** %a.ptr
  %503 = call i64 @nyx_array_get({ i64, i8* }* %502, i64 2)
  %504 = inttoptr i64 %503 to { i64, i8* }*
  %505 = alloca { i64, i8* }*
  store { i64, i8* }* %504, { i64, i8* }** %505
  %506 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %507 = call i64 @nyx_array_get({ i64, i8* }* %506, i64 2)
  %508 = inttoptr i64 %507 to { i64, i8* }*
  %509 = alloca { i64, i8* }*
  store { i64, i8* }* %508, { i64, i8* }** %509
  %510 = load { i64, i8* }*, { i64, i8* }** %505
  %511 = call i64 @nyx_array_length({ i64, i8* }* %510)
  %512 = icmp eq i64 %511, 0
  br i1 %512, label %then162, label %else163
then162:
  ret i1 1
else163:
  br label %merge164
merge164:
  %513 = load { i64, i8* }*, { i64, i8* }** %509
  %514 = call i64 @nyx_array_length({ i64, i8* }* %513)
  %515 = icmp eq i64 %514, 0
  br i1 %515, label %then165, label %else166
then165:
  ret i1 1
else166:
  br label %merge167
merge167:
  %516 = load { i64, i8* }*, { i64, i8* }** %505
  %517 = call i64 @nyx_array_length({ i64, i8* }* %516)
  %518 = load { i64, i8* }*, { i64, i8* }** %509
  %519 = call i64 @nyx_array_length({ i64, i8* }* %518)
  %520 = icmp ne i64 %517, %519
  br i1 %520, label %then168, label %else169
then168:
  ret i1 0
else169:
  br label %merge170
merge170:
  %521 = alloca i64
  store i64 0, i64* %521
  %522 = call i8* @llvm.stacksave()
  br label %while_cond171
while_cond171:
  %523 = load i64, i64* %521
  %524 = load { i64, i8* }*, { i64, i8* }** %505
  %525 = call i64 @nyx_array_length({ i64, i8* }* %524)
  %526 = icmp slt i64 %523, %525
  br i1 %526, label %while_body172, label %while_end173
while_body172:
  call void @llvm.stackrestore(i8* %522)
  %527 = load { i64, i8* }*, { i64, i8* }** %505
  %528 = load i64, i64* %521
  %529 = call i64 @nyx_array_get({ i64, i8* }* %527, i64 %528)
  %530 = inttoptr i64 %529 to { i64, i8* }*
  %531 = alloca { i64, i8* }*
  store { i64, i8* }* %530, { i64, i8* }** %531
  %532 = load { i64, i8* }*, { i64, i8* }** %509
  %533 = load i64, i64* %521
  %534 = call i64 @nyx_array_get({ i64, i8* }* %532, i64 %533)
  %535 = inttoptr i64 %534 to { i64, i8* }*
  %536 = alloca { i64, i8* }*
  store { i64, i8* }* %535, { i64, i8* }** %536
  %537 = load { i64, i8* }*, { i64, i8* }** %531
  %538 = load { i64, i8* }*, { i64, i8* }** %536
  %539 = call i1 @ty_eq({ i64, i8* }* %537, { i64, i8* }* %538)
  %540 = xor i1 %539, true
  br i1 %540, label %then174, label %else175
then174:
  ret i1 0
else175:
  br label %merge176
merge176:
  %541 = load i64, i64* %521
  %542 = add i64 %541, 1
  store i64 %542, i64* %521
  br label %while_cond171
while_end173:
  ret i1 1
else157:
  br label %merge158
merge158:
  %543 = alloca i1
  store i1 true, i1* %543
  %544 = alloca i1
  store i1 true, i1* %544
  %545 = load %nyx_string*, %nyx_string** %204
  %546 = getelementptr [6 x i8], [6 x i8]* @.str75, i32 0, i32 0
  %547 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str75.c, i8* %546)
  %548 = call i1 @nyx_string_equals(%nyx_string* %545, %nyx_string* %547)
  br i1 %548, label %sc_or_end178, label %sc_or_rhs177
sc_or_rhs177:
  %549 = load %nyx_string*, %nyx_string** %204
  %550 = getelementptr [10 x i8], [10 x i8]* @.str76, i32 0, i32 0
  %551 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str76.c, i8* %550)
  %552 = call i1 @nyx_string_equals(%nyx_string* %549, %nyx_string* %551)
  store i1 %552, i1* %544
  br label %sc_or_end178
sc_or_end178:
  %553 = load i1, i1* %544
  br i1 %553, label %sc_or_end180, label %sc_or_rhs179
sc_or_rhs179:
  %554 = load %nyx_string*, %nyx_string** %204
  %555 = getelementptr [8 x i8], [8 x i8]* @.str77, i32 0, i32 0
  %556 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str77.c, i8* %555)
  %557 = call i1 @nyx_string_equals(%nyx_string* %554, %nyx_string* %556)
  store i1 %557, i1* %543
  br label %sc_or_end180
sc_or_end180:
  %558 = load i1, i1* %543
  br i1 %558, label %then181, label %else182
then181:
  %559 = load { i64, i8* }*, { i64, i8* }** %a.ptr
  %560 = call i64 @nyx_array_get_checked({ i64, i8* }* %559, i64 1, i64 2)
  %561 = inttoptr i64 %560 to %nyx_string*
  %562 = alloca %nyx_string*
  store %nyx_string* %561, %nyx_string** %562
  %563 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %564 = call i64 @nyx_array_get_checked({ i64, i8* }* %563, i64 1, i64 2)
  %565 = inttoptr i64 %564 to %nyx_string*
  %566 = alloca %nyx_string*
  store %nyx_string* %565, %nyx_string** %566
  %567 = load %nyx_string*, %nyx_string** %562
  %568 = load %nyx_string*, %nyx_string** %566
  %569 = call i1 @nyx_string_equals(%nyx_string* %567, %nyx_string* %568)
  ret i1 %569
else182:
  br label %merge183
merge183:
  ret i1 0
}

define %nyx_string* @ty_to_str(
{ i64, i8* }* %t.param) {
  %t.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %t.param, { i64, i8* }** %t.ptr
  %570 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %571 = call %nyx_string* @ty_kind({ i64, i8* }* %570)
  %572 = alloca %nyx_string*
  store %nyx_string* %571, %nyx_string** %572
  %573 = load %nyx_string*, %nyx_string** %572
  %574 = getelementptr [6 x i8], [6 x i8]* @.str78, i32 0, i32 0
  %575 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str78.c, i8* %574)
  %576 = call i1 @nyx_string_equals(%nyx_string* %573, %nyx_string* %575)
  br i1 %576, label %then184, label %else185
then184:
  %577 = getelementptr [4 x i8], [4 x i8]* @.str79, i32 0, i32 0
  %578 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str79.c, i8* %577)
  ret %nyx_string* %578
else185:
  br label %merge186
merge186:
  %579 = load %nyx_string*, %nyx_string** %572
  %580 = getelementptr [8 x i8], [8 x i8]* @.str80, i32 0, i32 0
  %581 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str80.c, i8* %580)
  %582 = call i1 @nyx_string_equals(%nyx_string* %579, %nyx_string* %581)
  br i1 %582, label %then187, label %else188
then187:
  %583 = getelementptr [6 x i8], [6 x i8]* @.str81, i32 0, i32 0
  %584 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str81.c, i8* %583)
  ret %nyx_string* %584
else188:
  br label %merge189
merge189:
  %585 = load %nyx_string*, %nyx_string** %572
  %586 = getelementptr [7 x i8], [7 x i8]* @.str82, i32 0, i32 0
  %587 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str82.c, i8* %586)
  %588 = call i1 @nyx_string_equals(%nyx_string* %585, %nyx_string* %587)
  br i1 %588, label %then190, label %else191
then190:
  %589 = getelementptr [5 x i8], [5 x i8]* @.str83, i32 0, i32 0
  %590 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str83.c, i8* %589)
  ret %nyx_string* %590
else191:
  br label %merge192
merge192:
  %591 = load %nyx_string*, %nyx_string** %572
  %592 = getelementptr [9 x i8], [9 x i8]* @.str84, i32 0, i32 0
  %593 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str84.c, i8* %592)
  %594 = call i1 @nyx_string_equals(%nyx_string* %591, %nyx_string* %593)
  br i1 %594, label %then193, label %else194
then193:
  %595 = getelementptr [7 x i8], [7 x i8]* @.str85, i32 0, i32 0
  %596 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str85.c, i8* %595)
  ret %nyx_string* %596
else194:
  br label %merge195
merge195:
  %597 = load %nyx_string*, %nyx_string** %572
  %598 = getelementptr [7 x i8], [7 x i8]* @.str86, i32 0, i32 0
  %599 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str86.c, i8* %598)
  %600 = call i1 @nyx_string_equals(%nyx_string* %597, %nyx_string* %599)
  br i1 %600, label %then196, label %else197
then196:
  %601 = getelementptr [5 x i8], [5 x i8]* @.str87, i32 0, i32 0
  %602 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str87.c, i8* %601)
  ret %nyx_string* %602
else197:
  br label %merge198
merge198:
  %603 = load %nyx_string*, %nyx_string** %572
  %604 = getelementptr [7 x i8], [7 x i8]* @.str88, i32 0, i32 0
  %605 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str88.c, i8* %604)
  %606 = call i1 @nyx_string_equals(%nyx_string* %603, %nyx_string* %605)
  br i1 %606, label %then199, label %else200
then199:
  %607 = getelementptr [3 x i8], [3 x i8]* @.str89, i32 0, i32 0
  %608 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str89.c, i8* %607)
  ret %nyx_string* %608
else200:
  br label %merge201
merge201:
  %609 = load %nyx_string*, %nyx_string** %572
  %610 = getelementptr [10 x i8], [10 x i8]* @.str90, i32 0, i32 0
  %611 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str90.c, i8* %610)
  %612 = call i1 @nyx_string_equals(%nyx_string* %609, %nyx_string* %611)
  br i1 %612, label %then202, label %else203
then202:
  %613 = getelementptr [2 x i8], [2 x i8]* @.str91, i32 0, i32 0
  %614 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str91.c, i8* %613)
  ret %nyx_string* %614
else203:
  br label %merge204
merge204:
  %615 = load %nyx_string*, %nyx_string** %572
  %616 = getelementptr [8 x i8], [8 x i8]* @.str92, i32 0, i32 0
  %617 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str92.c, i8* %616)
  %618 = call i1 @nyx_string_equals(%nyx_string* %615, %nyx_string* %617)
  br i1 %618, label %then205, label %else206
then205:
  %619 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %620 = call i64 @nyx_array_get({ i64, i8* }* %619, i64 1)
  %621 = inttoptr i64 %620 to { i64, i8* }*
  %622 = alloca { i64, i8* }*
  store { i64, i8* }* %621, { i64, i8* }** %622
  %623 = getelementptr [7 x i8], [7 x i8]* @.str93, i32 0, i32 0
  %624 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str93.c, i8* %623)
  %625 = load { i64, i8* }*, { i64, i8* }** %622
  %626 = call %nyx_string* @ty_to_str({ i64, i8* }* %625)
  %627 = call %nyx_string* @nyx_string_concat(%nyx_string* %624, %nyx_string* %626)
  %628 = getelementptr [2 x i8], [2 x i8]* @.str94, i32 0, i32 0
  %629 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str94.c, i8* %628)
  %630 = call %nyx_string* @nyx_string_concat(%nyx_string* %627, %nyx_string* %629)
  ret %nyx_string* %630
else206:
  br label %merge207
merge207:
  %631 = load %nyx_string*, %nyx_string** %572
  %632 = getelementptr [9 x i8], [9 x i8]* @.str95, i32 0, i32 0
  %633 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str95.c, i8* %632)
  %634 = call i1 @nyx_string_equals(%nyx_string* %631, %nyx_string* %633)
  br i1 %634, label %then208, label %else209
then208:
  %635 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %636 = call i64 @nyx_array_get({ i64, i8* }* %635, i64 1)
  %637 = inttoptr i64 %636 to { i64, i8* }*
  %638 = alloca { i64, i8* }*
  store { i64, i8* }* %637, { i64, i8* }** %638
  %639 = getelementptr [8 x i8], [8 x i8]* @.str96, i32 0, i32 0
  %640 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str96.c, i8* %639)
  %641 = load { i64, i8* }*, { i64, i8* }** %638
  %642 = call %nyx_string* @ty_to_str({ i64, i8* }* %641)
  %643 = call %nyx_string* @nyx_string_concat(%nyx_string* %640, %nyx_string* %642)
  %644 = getelementptr [2 x i8], [2 x i8]* @.str97, i32 0, i32 0
  %645 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str97.c, i8* %644)
  %646 = call %nyx_string* @nyx_string_concat(%nyx_string* %643, %nyx_string* %645)
  ret %nyx_string* %646
else209:
  br label %merge210
merge210:
  %647 = load %nyx_string*, %nyx_string** %572
  %648 = getelementptr [9 x i8], [9 x i8]* @.str98, i32 0, i32 0
  %649 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str98.c, i8* %648)
  %650 = call i1 @nyx_string_equals(%nyx_string* %647, %nyx_string* %649)
  br i1 %650, label %then211, label %else212
then211:
  %651 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %652 = call i64 @nyx_array_get({ i64, i8* }* %651, i64 1)
  %653 = inttoptr i64 %652 to { i64, i8* }*
  %654 = alloca { i64, i8* }*
  store { i64, i8* }* %653, { i64, i8* }** %654
  %655 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %656 = call i64 @nyx_array_get({ i64, i8* }* %655, i64 2)
  %657 = inttoptr i64 %656 to { i64, i8* }*
  %658 = alloca { i64, i8* }*
  store { i64, i8* }* %657, { i64, i8* }** %658
  %659 = getelementptr [8 x i8], [8 x i8]* @.str99, i32 0, i32 0
  %660 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str99.c, i8* %659)
  %661 = load { i64, i8* }*, { i64, i8* }** %654
  %662 = call %nyx_string* @ty_to_str({ i64, i8* }* %661)
  %663 = call %nyx_string* @nyx_string_concat(%nyx_string* %660, %nyx_string* %662)
  %664 = getelementptr [2 x i8], [2 x i8]* @.str100, i32 0, i32 0
  %665 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str100.c, i8* %664)
  %666 = call %nyx_string* @nyx_string_concat(%nyx_string* %663, %nyx_string* %665)
  %667 = load { i64, i8* }*, { i64, i8* }** %658
  %668 = call %nyx_string* @ty_to_str({ i64, i8* }* %667)
  %669 = call %nyx_string* @nyx_string_concat(%nyx_string* %666, %nyx_string* %668)
  %670 = getelementptr [2 x i8], [2 x i8]* @.str101, i32 0, i32 0
  %671 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str101.c, i8* %670)
  %672 = call %nyx_string* @nyx_string_concat(%nyx_string* %669, %nyx_string* %671)
  ret %nyx_string* %672
else212:
  br label %merge213
merge213:
  %673 = load %nyx_string*, %nyx_string** %572
  %674 = getelementptr [6 x i8], [6 x i8]* @.str102, i32 0, i32 0
  %675 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str102.c, i8* %674)
  %676 = call i1 @nyx_string_equals(%nyx_string* %673, %nyx_string* %675)
  br i1 %676, label %then214, label %else215
then214:
  %677 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %678 = call i64 @nyx_array_get({ i64, i8* }* %677, i64 1)
  %679 = inttoptr i64 %678 to { i64, i8* }*
  %680 = alloca { i64, i8* }*
  store { i64, i8* }* %679, { i64, i8* }** %680
  %681 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %682 = call i64 @nyx_array_get({ i64, i8* }* %681, i64 2)
  %683 = inttoptr i64 %682 to { i64, i8* }*
  %684 = alloca { i64, i8* }*
  store { i64, i8* }* %683, { i64, i8* }** %684
  %685 = getelementptr [5 x i8], [5 x i8]* @.str103, i32 0, i32 0
  %686 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str103.c, i8* %685)
  %687 = load { i64, i8* }*, { i64, i8* }** %680
  %688 = call %nyx_string* @ty_to_str({ i64, i8* }* %687)
  %689 = call %nyx_string* @nyx_string_concat(%nyx_string* %686, %nyx_string* %688)
  %690 = getelementptr [2 x i8], [2 x i8]* @.str104, i32 0, i32 0
  %691 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str104.c, i8* %690)
  %692 = call %nyx_string* @nyx_string_concat(%nyx_string* %689, %nyx_string* %691)
  %693 = load { i64, i8* }*, { i64, i8* }** %684
  %694 = call %nyx_string* @ty_to_str({ i64, i8* }* %693)
  %695 = call %nyx_string* @nyx_string_concat(%nyx_string* %692, %nyx_string* %694)
  %696 = getelementptr [2 x i8], [2 x i8]* @.str105, i32 0, i32 0
  %697 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str105.c, i8* %696)
  %698 = call %nyx_string* @nyx_string_concat(%nyx_string* %695, %nyx_string* %697)
  ret %nyx_string* %698
else215:
  br label %merge216
merge216:
  %699 = load %nyx_string*, %nyx_string** %572
  %700 = getelementptr [6 x i8], [6 x i8]* @.str106, i32 0, i32 0
  %701 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str106.c, i8* %700)
  %702 = call i1 @nyx_string_equals(%nyx_string* %699, %nyx_string* %701)
  br i1 %702, label %then217, label %else218
then217:
  %703 = getelementptr [2 x i8], [2 x i8]* @.str107, i32 0, i32 0
  %704 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str107.c, i8* %703)
  %705 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %706 = call i64 @nyx_array_get({ i64, i8* }* %705, i64 1)
  %707 = inttoptr i64 %706 to { i64, i8* }*
  %708 = call %nyx_string* @ty_to_str({ i64, i8* }* %707)
  %709 = call %nyx_string* @nyx_string_concat(%nyx_string* %704, %nyx_string* %708)
  ret %nyx_string* %709
else218:
  br label %merge219
merge219:
  %710 = load %nyx_string*, %nyx_string** %572
  %711 = getelementptr [6 x i8], [6 x i8]* @.str108, i32 0, i32 0
  %712 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str108.c, i8* %711)
  %713 = call i1 @nyx_string_equals(%nyx_string* %710, %nyx_string* %712)
  br i1 %713, label %then220, label %else221
then220:
  %714 = getelementptr [2 x i8], [2 x i8]* @.str109, i32 0, i32 0
  %715 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str109.c, i8* %714)
  %716 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %717 = call i64 @nyx_array_get({ i64, i8* }* %716, i64 1)
  %718 = inttoptr i64 %717 to { i64, i8* }*
  %719 = call %nyx_string* @ty_to_str({ i64, i8* }* %718)
  %720 = call %nyx_string* @nyx_string_concat(%nyx_string* %715, %nyx_string* %719)
  ret %nyx_string* %720
else221:
  br label %merge222
merge222:
  %721 = load %nyx_string*, %nyx_string** %572
  %722 = getelementptr [9 x i8], [9 x i8]* @.str110, i32 0, i32 0
  %723 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str110.c, i8* %722)
  %724 = call i1 @nyx_string_equals(%nyx_string* %721, %nyx_string* %723)
  br i1 %724, label %then223, label %else224
then223:
  %725 = getelementptr [6 x i8], [6 x i8]* @.str111, i32 0, i32 0
  %726 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str111.c, i8* %725)
  %727 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %728 = call i64 @nyx_array_get({ i64, i8* }* %727, i64 1)
  %729 = inttoptr i64 %728 to { i64, i8* }*
  %730 = call %nyx_string* @ty_to_str({ i64, i8* }* %729)
  %731 = call %nyx_string* @nyx_string_concat(%nyx_string* %726, %nyx_string* %730)
  ret %nyx_string* %731
else224:
  br label %merge225
merge225:
  %732 = load %nyx_string*, %nyx_string** %572
  %733 = getelementptr [5 x i8], [5 x i8]* @.str112, i32 0, i32 0
  %734 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str112.c, i8* %733)
  %735 = call i1 @nyx_string_equals(%nyx_string* %732, %nyx_string* %734)
  br i1 %735, label %then226, label %else227
then226:
  %736 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %737 = call i64 @nyx_array_get({ i64, i8* }* %736, i64 1)
  %738 = inttoptr i64 %737 to { i64, i8* }*
  %739 = alloca { i64, i8* }*
  store { i64, i8* }* %738, { i64, i8* }** %739
  %740 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %741 = call i64 @nyx_array_get({ i64, i8* }* %740, i64 2)
  %742 = inttoptr i64 %741 to { i64, i8* }*
  %743 = alloca { i64, i8* }*
  store { i64, i8* }* %742, { i64, i8* }** %743
  %744 = getelementptr [4 x i8], [4 x i8]* @.str113, i32 0, i32 0
  %745 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str113.c, i8* %744)
  %746 = alloca %nyx_string*
  store %nyx_string* %745, %nyx_string** %746
  %747 = alloca i64
  store i64 0, i64* %747
  %748 = call i8* @llvm.stacksave()
  br label %while_cond229
while_cond229:
  %749 = load i64, i64* %747
  %750 = load { i64, i8* }*, { i64, i8* }** %739
  %751 = call i64 @nyx_array_length({ i64, i8* }* %750)
  %752 = icmp slt i64 %749, %751
  br i1 %752, label %while_body230, label %while_end231
while_body230:
  call void @llvm.stackrestore(i8* %748)
  %753 = load i64, i64* %747
  %754 = icmp sgt i64 %753, 0
  br i1 %754, label %then232, label %else233
then232:
  %755 = load %nyx_string*, %nyx_string** %746
  %756 = getelementptr [2 x i8], [2 x i8]* @.str114, i32 0, i32 0
  %757 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str114.c, i8* %756)
  %758 = call %nyx_string* @nyx_string_concat(%nyx_string* %755, %nyx_string* %757)
  store %nyx_string* %758, %nyx_string** %746
  br label %merge234
else233:
  br label %merge234
merge234:
  %759 = load { i64, i8* }*, { i64, i8* }** %739
  %760 = load i64, i64* %747
  %761 = call i64 @nyx_array_get({ i64, i8* }* %759, i64 %760)
  %762 = inttoptr i64 %761 to { i64, i8* }*
  %763 = alloca { i64, i8* }*
  store { i64, i8* }* %762, { i64, i8* }** %763
  %764 = load %nyx_string*, %nyx_string** %746
  %765 = load { i64, i8* }*, { i64, i8* }** %763
  %766 = call %nyx_string* @ty_to_str({ i64, i8* }* %765)
  %767 = call %nyx_string* @nyx_string_concat(%nyx_string* %764, %nyx_string* %766)
  store %nyx_string* %767, %nyx_string** %746
  %768 = load i64, i64* %747
  %769 = add i64 %768, 1
  store i64 %769, i64* %747
  br label %while_cond229
while_end231:
  %770 = load %nyx_string*, %nyx_string** %746
  %771 = getelementptr [4 x i8], [4 x i8]* @.str115, i32 0, i32 0
  %772 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str115.c, i8* %771)
  %773 = call %nyx_string* @nyx_string_concat(%nyx_string* %770, %nyx_string* %772)
  %774 = load { i64, i8* }*, { i64, i8* }** %743
  %775 = call %nyx_string* @ty_to_str({ i64, i8* }* %774)
  %776 = call %nyx_string* @nyx_string_concat(%nyx_string* %773, %nyx_string* %775)
  store %nyx_string* %776, %nyx_string** %746
  %777 = load %nyx_string*, %nyx_string** %746
  ret %nyx_string* %777
else227:
  br label %merge228
merge228:
  %778 = load %nyx_string*, %nyx_string** %572
  %779 = getelementptr [6 x i8], [6 x i8]* @.str116, i32 0, i32 0
  %780 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str116.c, i8* %779)
  %781 = call i1 @nyx_string_equals(%nyx_string* %778, %nyx_string* %780)
  br i1 %781, label %then235, label %else236
then235:
  %782 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %783 = call i64 @nyx_array_get_checked({ i64, i8* }* %782, i64 1, i64 2)
  %784 = inttoptr i64 %783 to %nyx_string*
  %785 = alloca %nyx_string*
  store %nyx_string* %784, %nyx_string** %785
  %786 = getelementptr [5 x i8], [5 x i8]* @.str117, i32 0, i32 0
  %787 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str117.c, i8* %786)
  %788 = load %nyx_string*, %nyx_string** %785
  %789 = call %nyx_string* @nyx_string_concat(%nyx_string* %787, %nyx_string* %788)
  ret %nyx_string* %789
else236:
  br label %merge237
merge237:
  %790 = alloca i1
  store i1 true, i1* %790
  %791 = load %nyx_string*, %nyx_string** %572
  %792 = getelementptr [9 x i8], [9 x i8]* @.str118, i32 0, i32 0
  %793 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str118.c, i8* %792)
  %794 = call i1 @nyx_string_equals(%nyx_string* %791, %nyx_string* %793)
  br i1 %794, label %sc_or_end239, label %sc_or_rhs238
sc_or_rhs238:
  %795 = load %nyx_string*, %nyx_string** %572
  %796 = getelementptr [7 x i8], [7 x i8]* @.str119, i32 0, i32 0
  %797 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str119.c, i8* %796)
  %798 = call i1 @nyx_string_equals(%nyx_string* %795, %nyx_string* %797)
  store i1 %798, i1* %790
  br label %sc_or_end239
sc_or_end239:
  %799 = load i1, i1* %790
  br i1 %799, label %then240, label %else241
then240:
  %800 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %801 = call i64 @nyx_array_get_checked({ i64, i8* }* %800, i64 1, i64 2)
  %802 = inttoptr i64 %801 to %nyx_string*
  %803 = alloca %nyx_string*
  store %nyx_string* %802, %nyx_string** %803
  %804 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %805 = call i64 @nyx_array_get({ i64, i8* }* %804, i64 2)
  %806 = inttoptr i64 %805 to { i64, i8* }*
  %807 = alloca { i64, i8* }*
  store { i64, i8* }* %806, { i64, i8* }** %807
  %808 = load { i64, i8* }*, { i64, i8* }** %807
  %809 = call i64 @nyx_array_length({ i64, i8* }* %808)
  %810 = icmp eq i64 %809, 0
  br i1 %810, label %then243, label %else244
then243:
  %811 = load %nyx_string*, %nyx_string** %803
  ret %nyx_string* %811
else244:
  br label %merge245
merge245:
  %812 = load %nyx_string*, %nyx_string** %803
  %813 = getelementptr [2 x i8], [2 x i8]* @.str120, i32 0, i32 0
  %814 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str120.c, i8* %813)
  %815 = call %nyx_string* @nyx_string_concat(%nyx_string* %812, %nyx_string* %814)
  %816 = alloca %nyx_string*
  store %nyx_string* %815, %nyx_string** %816
  %817 = alloca i64
  store i64 0, i64* %817
  %818 = call i8* @llvm.stacksave()
  br label %while_cond246
while_cond246:
  %819 = load i64, i64* %817
  %820 = load { i64, i8* }*, { i64, i8* }** %807
  %821 = call i64 @nyx_array_length({ i64, i8* }* %820)
  %822 = icmp slt i64 %819, %821
  br i1 %822, label %while_body247, label %while_end248
while_body247:
  call void @llvm.stackrestore(i8* %818)
  %823 = load i64, i64* %817
  %824 = icmp sgt i64 %823, 0
  br i1 %824, label %then249, label %else250
then249:
  %825 = load %nyx_string*, %nyx_string** %816
  %826 = getelementptr [2 x i8], [2 x i8]* @.str121, i32 0, i32 0
  %827 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str121.c, i8* %826)
  %828 = call %nyx_string* @nyx_string_concat(%nyx_string* %825, %nyx_string* %827)
  store %nyx_string* %828, %nyx_string** %816
  br label %merge251
else250:
  br label %merge251
merge251:
  %829 = load { i64, i8* }*, { i64, i8* }** %807
  %830 = load i64, i64* %817
  %831 = call i64 @nyx_array_get({ i64, i8* }* %829, i64 %830)
  %832 = inttoptr i64 %831 to { i64, i8* }*
  %833 = alloca { i64, i8* }*
  store { i64, i8* }* %832, { i64, i8* }** %833
  %834 = load %nyx_string*, %nyx_string** %816
  %835 = load { i64, i8* }*, { i64, i8* }** %833
  %836 = call %nyx_string* @ty_to_str({ i64, i8* }* %835)
  %837 = call %nyx_string* @nyx_string_concat(%nyx_string* %834, %nyx_string* %836)
  store %nyx_string* %837, %nyx_string** %816
  %838 = load i64, i64* %817
  %839 = add i64 %838, 1
  store i64 %839, i64* %817
  br label %while_cond246
while_end248:
  %840 = load %nyx_string*, %nyx_string** %816
  %841 = getelementptr [2 x i8], [2 x i8]* @.str122, i32 0, i32 0
  %842 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str122.c, i8* %841)
  %843 = call %nyx_string* @nyx_string_concat(%nyx_string* %840, %nyx_string* %842)
  store %nyx_string* %843, %nyx_string** %816
  %844 = load %nyx_string*, %nyx_string** %816
  ret %nyx_string* %844
else241:
  br label %merge242
merge242:
  %845 = load %nyx_string*, %nyx_string** %572
  %846 = getelementptr [10 x i8], [10 x i8]* @.str123, i32 0, i32 0
  %847 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str123.c, i8* %846)
  %848 = call i1 @nyx_string_equals(%nyx_string* %845, %nyx_string* %847)
  br i1 %848, label %then252, label %else253
then252:
  %849 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %850 = call i64 @nyx_array_get_checked({ i64, i8* }* %849, i64 1, i64 2)
  %851 = inttoptr i64 %850 to %nyx_string*
  %852 = alloca %nyx_string*
  store %nyx_string* %851, %nyx_string** %852
  %853 = load %nyx_string*, %nyx_string** %852
  ret %nyx_string* %853
else253:
  br label %merge254
merge254:
  %854 = load %nyx_string*, %nyx_string** %572
  %855 = getelementptr [8 x i8], [8 x i8]* @.str124, i32 0, i32 0
  %856 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str124.c, i8* %855)
  %857 = call i1 @nyx_string_equals(%nyx_string* %854, %nyx_string* %856)
  br i1 %857, label %then255, label %else256
then255:
  %858 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %859 = call i64 @nyx_array_get_checked({ i64, i8* }* %858, i64 1, i64 2)
  %860 = inttoptr i64 %859 to %nyx_string*
  %861 = alloca %nyx_string*
  store %nyx_string* %860, %nyx_string** %861
  %862 = load %nyx_string*, %nyx_string** %861
  ret %nyx_string* %862
else256:
  br label %merge257
merge257:
  %863 = getelementptr [2 x i8], [2 x i8]* @.str125, i32 0, i32 0
  %864 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str125.c, i8* %863)
  ret %nyx_string* %864
}

define internal { i64, i8* }* @split_at_depth0(
%nyx_string* %s.param, i64 %sep_char.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %sep_char.ptr = alloca i64
  store i64 %sep_char.param, i64* %sep_char.ptr
  %865 = call { i64, i8* }* @nyx_array_new_ptr()
  %866 = alloca { i64, i8* }*
  store { i64, i8* }* %865, { i64, i8* }** %866
  %867 = alloca i64
  store i64 0, i64* %867
  %868 = alloca i64
  store i64 0, i64* %868
  %869 = load %nyx_string*, %nyx_string** %s.ptr
  %870 = call i64 @nyx_string_byte_length(%nyx_string* %869)
  %871 = alloca i64
  store i64 %870, i64* %871
  %872 = alloca i64
  store i64 0, i64* %872
  %873 = call i8* @llvm.stacksave()
  br label %while_cond258
while_cond258:
  %874 = load i64, i64* %872
  %875 = load i64, i64* %871
  %876 = icmp slt i64 %874, %875
  br i1 %876, label %while_body259, label %while_end260
while_body259:
  call void @llvm.stackrestore(i8* %873)
  %877 = load %nyx_string*, %nyx_string** %s.ptr
  %878 = load i64, i64* %872
  %879 = call i8 @nyx_string_char_at(%nyx_string* %877, i64 %878)
  %880 = zext i8 %879 to i64
  %881 = alloca i64
  store i64 %880, i64* %881
  %882 = load i64, i64* %881
  %883 = icmp eq i64 %882, 60
  br i1 %883, label %then261, label %else262
then261:
  %884 = load i64, i64* %867
  %885 = add i64 %884, 1
  store i64 %885, i64* %867
  br label %merge263
else262:
  %886 = load i64, i64* %881
  %887 = icmp eq i64 %886, 62
  br i1 %887, label %then264, label %else265
then264:
  %888 = load i64, i64* %867
  %889 = sub i64 %888, 1
  store i64 %889, i64* %867
  br label %merge266
else265:
  %890 = load i64, i64* %881
  %891 = icmp eq i64 %890, 40
  br i1 %891, label %then267, label %else268
then267:
  %892 = load i64, i64* %867
  %893 = add i64 %892, 1
  store i64 %893, i64* %867
  br label %merge269
else268:
  %894 = load i64, i64* %881
  %895 = icmp eq i64 %894, 41
  br i1 %895, label %then270, label %else271
then270:
  %896 = load i64, i64* %867
  %897 = sub i64 %896, 1
  store i64 %897, i64* %867
  br label %merge272
else271:
  %898 = load i64, i64* %881
  %899 = load i64, i64* %sep_char.ptr
  %900 = icmp eq i64 %898, %899
  br i1 %900, label %then273, label %else274
then273:
  %901 = load i64, i64* %867
  %902 = icmp eq i64 %901, 0
  br i1 %902, label %then276, label %else277
then276:
  %903 = load %nyx_string*, %nyx_string** %s.ptr
  %904 = load i64, i64* %868
  %905 = load i64, i64* %872
  %906 = call %nyx_string* @nyx_string_substring(%nyx_string* %903, i64 %904, i64 %905)
  %907 = alloca %nyx_string*
  store %nyx_string* %906, %nyx_string** %907
  %908 = load { i64, i8* }*, { i64, i8* }** %866
  %909 = load %nyx_string*, %nyx_string** %907
  %910 = call %nyx_string* @nyx_string_trim(%nyx_string* %909)
  %911 = ptrtoint %nyx_string* %910 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %908, i64 %911, i64 2)
  %912 = load i64, i64* %872
  %913 = add i64 %912, 1
  store i64 %913, i64* %868
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
  %914 = load i64, i64* %872
  %915 = add i64 %914, 1
  store i64 %915, i64* %872
  br label %while_cond258
while_end260:
  %916 = load i64, i64* %868
  %917 = load i64, i64* %871
  %918 = icmp sle i64 %916, %917
  br i1 %918, label %then279, label %else280
then279:
  %919 = load %nyx_string*, %nyx_string** %s.ptr
  %920 = load i64, i64* %868
  %921 = load i64, i64* %871
  %922 = call %nyx_string* @nyx_string_substring(%nyx_string* %919, i64 %920, i64 %921)
  %923 = alloca %nyx_string*
  store %nyx_string* %922, %nyx_string** %923
  %924 = load { i64, i8* }*, { i64, i8* }** %866
  %925 = load %nyx_string*, %nyx_string** %923
  %926 = call %nyx_string* @nyx_string_trim(%nyx_string* %925)
  %927 = ptrtoint %nyx_string* %926 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %924, i64 %927, i64 2)
  br label %merge281
else280:
  br label %merge281
merge281:
  %928 = load { i64, i8* }*, { i64, i8* }** %866
  ret { i64, i8* }* %928
}

define internal %nyx_string* @ty_extract_leading_lifetime(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %929 = load %nyx_string*, %nyx_string** %s.ptr
  %930 = call i64 @nyx_string_byte_length(%nyx_string* %929)
  %931 = icmp eq i64 %930, 0
  br i1 %931, label %then282, label %else283
then282:
  %932 = getelementptr [1 x i8], [1 x i8]* @.str126, i32 0, i32 0
  %933 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str126.c, i8* %932)
  ret %nyx_string* %933
else283:
  br label %merge284
merge284:
  %934 = load %nyx_string*, %nyx_string** %s.ptr
  %935 = call %nyx_string* @nyx_string_substring(%nyx_string* %934, i64 0, i64 1)
  %936 = getelementptr [2 x i8], [2 x i8]* @.str127, i32 0, i32 0
  %937 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str127.c, i8* %936)
  %938 = call i1 @nyx_string_equals(%nyx_string* %935, %nyx_string* %937)
  %939 = xor i1 %938, true
  br i1 %939, label %then285, label %else286
then285:
  %940 = getelementptr [1 x i8], [1 x i8]* @.str128, i32 0, i32 0
  %941 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str128.c, i8* %940)
  ret %nyx_string* %941
else286:
  br label %merge287
merge287:
  %942 = alloca i64
  store i64 1, i64* %942
  %943 = alloca i1
  store i1 1, i1* %943
  %944 = getelementptr [2 x i8], [2 x i8]* @.str129, i32 0, i32 0
  %945 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str129.c, i8* %944)
  %946 = alloca %nyx_string*
  store %nyx_string* %945, %nyx_string** %946
  %947 = call i8* @llvm.stacksave()
  br label %while_cond288
while_cond288:
  %948 = load i1, i1* %943
  br i1 %948, label %while_body289, label %while_end290
while_body289:
  call void @llvm.stackrestore(i8* %947)
  %949 = load i64, i64* %942
  %950 = load %nyx_string*, %nyx_string** %s.ptr
  %951 = call i64 @nyx_string_byte_length(%nyx_string* %950)
  %952 = icmp sge i64 %949, %951
  br i1 %952, label %then291, label %else292
then291:
  store i1 0, i1* %943
  br label %merge293
else292:
  %953 = load %nyx_string*, %nyx_string** %s.ptr
  %954 = load i64, i64* %942
  %955 = load i64, i64* %942
  %956 = add i64 %955, 1
  %957 = call %nyx_string* @nyx_string_substring(%nyx_string* %953, i64 %954, i64 %956)
  %958 = alloca %nyx_string*
  store %nyx_string* %957, %nyx_string** %958
  %959 = load %nyx_string*, %nyx_string** %958
  %960 = load %nyx_string*, %nyx_string** %946
  %961 = call i1 @nyx_string_equals(%nyx_string* %959, %nyx_string* %960)
  br i1 %961, label %then294, label %else295
then294:
  store i1 0, i1* %943
  br label %merge296
else295:
  %962 = load i64, i64* %942
  %963 = add i64 %962, 1
  store i64 %963, i64* %942
  br label %merge296
merge296:
  br label %merge293
merge293:
  br label %while_cond288
while_end290:
  %964 = load %nyx_string*, %nyx_string** %s.ptr
  %965 = load i64, i64* %942
  %966 = call %nyx_string* @nyx_string_substring(%nyx_string* %964, i64 1, i64 %965)
  ret %nyx_string* %966
}

define internal %nyx_string* @ty_strip_leading_lifetime(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %967 = load %nyx_string*, %nyx_string** %s.ptr
  %968 = call i64 @nyx_string_byte_length(%nyx_string* %967)
  %969 = icmp eq i64 %968, 0
  br i1 %969, label %then297, label %else298
then297:
  %970 = load %nyx_string*, %nyx_string** %s.ptr
  ret %nyx_string* %970
else298:
  br label %merge299
merge299:
  %971 = load %nyx_string*, %nyx_string** %s.ptr
  %972 = call %nyx_string* @nyx_string_substring(%nyx_string* %971, i64 0, i64 1)
  %973 = getelementptr [2 x i8], [2 x i8]* @.str130, i32 0, i32 0
  %974 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str130.c, i8* %973)
  %975 = call i1 @nyx_string_equals(%nyx_string* %972, %nyx_string* %974)
  %976 = xor i1 %975, true
  br i1 %976, label %then300, label %else301
then300:
  %977 = load %nyx_string*, %nyx_string** %s.ptr
  ret %nyx_string* %977
else301:
  br label %merge302
merge302:
  %978 = alloca i64
  store i64 1, i64* %978
  %979 = alloca i1
  store i1 1, i1* %979
  %980 = getelementptr [2 x i8], [2 x i8]* @.str131, i32 0, i32 0
  %981 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str131.c, i8* %980)
  %982 = alloca %nyx_string*
  store %nyx_string* %981, %nyx_string** %982
  %983 = call i8* @llvm.stacksave()
  br label %while_cond303
while_cond303:
  %984 = load i1, i1* %979
  br i1 %984, label %while_body304, label %while_end305
while_body304:
  call void @llvm.stackrestore(i8* %983)
  %985 = load i64, i64* %978
  %986 = load %nyx_string*, %nyx_string** %s.ptr
  %987 = call i64 @nyx_string_byte_length(%nyx_string* %986)
  %988 = icmp sge i64 %985, %987
  br i1 %988, label %then306, label %else307
then306:
  store i1 0, i1* %979
  br label %merge308
else307:
  %989 = load %nyx_string*, %nyx_string** %s.ptr
  %990 = load i64, i64* %978
  %991 = load i64, i64* %978
  %992 = add i64 %991, 1
  %993 = call %nyx_string* @nyx_string_substring(%nyx_string* %989, i64 %990, i64 %992)
  %994 = alloca %nyx_string*
  store %nyx_string* %993, %nyx_string** %994
  %995 = load %nyx_string*, %nyx_string** %994
  %996 = load %nyx_string*, %nyx_string** %982
  %997 = call i1 @nyx_string_equals(%nyx_string* %995, %nyx_string* %996)
  br i1 %997, label %then309, label %else310
then309:
  store i1 0, i1* %979
  br label %merge311
else310:
  %998 = load i64, i64* %978
  %999 = add i64 %998, 1
  store i64 %999, i64* %978
  br label %merge311
merge311:
  br label %merge308
merge308:
  br label %while_cond303
while_end305:
  %1000 = load i64, i64* %978
  %1001 = load %nyx_string*, %nyx_string** %s.ptr
  %1002 = call i64 @nyx_string_byte_length(%nyx_string* %1001)
  %1003 = icmp slt i64 %1000, %1002
  br i1 %1003, label %then312, label %else313
then312:
  %1004 = load %nyx_string*, %nyx_string** %s.ptr
  %1005 = load i64, i64* %978
  %1006 = load i64, i64* %978
  %1007 = add i64 %1006, 1
  %1008 = call %nyx_string* @nyx_string_substring(%nyx_string* %1004, i64 %1005, i64 %1007)
  %1009 = getelementptr [2 x i8], [2 x i8]* @.str132, i32 0, i32 0
  %1010 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str132.c, i8* %1009)
  %1011 = call i1 @nyx_string_equals(%nyx_string* %1008, %nyx_string* %1010)
  br i1 %1011, label %then315, label %else316
then315:
  %1012 = load i64, i64* %978
  %1013 = add i64 %1012, 1
  store i64 %1013, i64* %978
  br label %merge317
else316:
  br label %merge317
merge317:
  br label %merge314
else313:
  br label %merge314
merge314:
  %1014 = load %nyx_string*, %nyx_string** %s.ptr
  %1015 = load i64, i64* %978
  %1016 = load %nyx_string*, %nyx_string** %s.ptr
  %1017 = call i64 @nyx_string_byte_length(%nyx_string* %1016)
  %1018 = call %nyx_string* @nyx_string_substring(%nyx_string* %1014, i64 %1015, i64 %1017)
  ret %nyx_string* %1018
}

define { i64, i8* }* @ty_parse(
%nyx_string* %ann.param) {
  %ann.ptr = alloca %nyx_string*
  store %nyx_string* %ann.param, %nyx_string** %ann.ptr
  %1019 = load %nyx_string*, %nyx_string** %ann.ptr
  %1020 = call %nyx_string* @nyx_string_trim(%nyx_string* %1019)
  %1021 = alloca %nyx_string*
  store %nyx_string* %1020, %nyx_string** %1021
  %1022 = load %nyx_string*, %nyx_string** %1021
  %1023 = getelementptr [1 x i8], [1 x i8]* @.str133, i32 0, i32 0
  %1024 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str133.c, i8* %1023)
  %1025 = call i1 @nyx_string_equals(%nyx_string* %1022, %nyx_string* %1024)
  br i1 %1025, label %then318, label %else319
then318:
  %1026 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1026
else319:
  br label %merge320
merge320:
  %1027 = load %nyx_string*, %nyx_string** %1021
  %1028 = getelementptr [4 x i8], [4 x i8]* @.str134, i32 0, i32 0
  %1029 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str134.c, i8* %1028)
  %1030 = call i1 @nyx_string_equals(%nyx_string* %1027, %nyx_string* %1029)
  br i1 %1030, label %then321, label %else322
then321:
  %1031 = call { i64, i8* }* @ty_int()
  ret { i64, i8* }* %1031
else322:
  br label %merge323
merge323:
  %1032 = load %nyx_string*, %nyx_string** %1021
  %1033 = getelementptr [6 x i8], [6 x i8]* @.str135, i32 0, i32 0
  %1034 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str135.c, i8* %1033)
  %1035 = call i1 @nyx_string_equals(%nyx_string* %1032, %nyx_string* %1034)
  br i1 %1035, label %then324, label %else325
then324:
  %1036 = call { i64, i8* }* @ty_float()
  ret { i64, i8* }* %1036
else325:
  br label %merge326
merge326:
  %1037 = load %nyx_string*, %nyx_string** %1021
  %1038 = getelementptr [5 x i8], [5 x i8]* @.str136, i32 0, i32 0
  %1039 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str136.c, i8* %1038)
  %1040 = call i1 @nyx_string_equals(%nyx_string* %1037, %nyx_string* %1039)
  br i1 %1040, label %then327, label %else328
then327:
  %1041 = call { i64, i8* }* @ty_bool()
  ret { i64, i8* }* %1041
else328:
  br label %merge329
merge329:
  %1042 = load %nyx_string*, %nyx_string** %1021
  %1043 = getelementptr [7 x i8], [7 x i8]* @.str137, i32 0, i32 0
  %1044 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str137.c, i8* %1043)
  %1045 = call i1 @nyx_string_equals(%nyx_string* %1042, %nyx_string* %1044)
  br i1 %1045, label %then330, label %else331
then330:
  %1046 = call { i64, i8* }* @ty_string()
  ret { i64, i8* }* %1046
else331:
  br label %merge332
merge332:
  %1047 = load %nyx_string*, %nyx_string** %1021
  %1048 = getelementptr [5 x i8], [5 x i8]* @.str138, i32 0, i32 0
  %1049 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str138.c, i8* %1048)
  %1050 = call i1 @nyx_string_equals(%nyx_string* %1047, %nyx_string* %1049)
  br i1 %1050, label %then333, label %else334
then333:
  %1051 = call { i64, i8* }* @ty_char()
  ret { i64, i8* }* %1051
else334:
  br label %merge335
merge335:
  %1052 = load %nyx_string*, %nyx_string** %1021
  %1053 = getelementptr [5 x i8], [5 x i8]* @.str139, i32 0, i32 0
  %1054 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str139.c, i8* %1053)
  %1055 = call i1 @nyx_string_equals(%nyx_string* %1052, %nyx_string* %1054)
  br i1 %1055, label %then336, label %else337
then336:
  %1056 = call { i64, i8* }* @ty_unit()
  ret { i64, i8* }* %1056
else337:
  br label %merge338
merge338:
  %1057 = load %nyx_string*, %nyx_string** %1021
  %1058 = getelementptr [3 x i8], [3 x i8]* @.str140, i32 0, i32 0
  %1059 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str140.c, i8* %1058)
  %1060 = call i1 @nyx_string_equals(%nyx_string* %1057, %nyx_string* %1059)
  br i1 %1060, label %then339, label %else340
then339:
  %1061 = call { i64, i8* }* @ty_unit()
  ret { i64, i8* }* %1061
else340:
  br label %merge341
merge341:
  %1062 = load %nyx_string*, %nyx_string** %1021
  %1063 = getelementptr [5 x i8], [5 x i8]* @.str141, i32 0, i32 0
  %1064 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str141.c, i8* %1063)
  %1065 = call i1 @nyx_string_equals(%nyx_string* %1062, %nyx_string* %1064)
  br i1 %1065, label %then342, label %else343
then342:
  %1066 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1066
else343:
  br label %merge344
merge344:
  %1067 = load %nyx_string*, %nyx_string** %1021
  %1068 = call i1 @is_sized_name(%nyx_string* %1067)
  br i1 %1068, label %then345, label %else346
then345:
  %1069 = load %nyx_string*, %nyx_string** %1021
  %1070 = call { i64, i8* }* @ty_sized(%nyx_string* %1069)
  ret { i64, i8* }* %1070
else346:
  br label %merge347
merge347:
  %1071 = load %nyx_string*, %nyx_string** %1021
  %1072 = getelementptr [2 x i8], [2 x i8]* @.str142, i32 0, i32 0
  %1073 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str142.c, i8* %1072)
  %1074 = call i1 @nyx_string_starts_with(%nyx_string* %1071, %nyx_string* %1073)
  br i1 %1074, label %then348, label %else349
then348:
  %1075 = load %nyx_string*, %nyx_string** %1021
  %1076 = load %nyx_string*, %nyx_string** %1021
  %1077 = call i64 @nyx_string_byte_length(%nyx_string* %1076)
  %1078 = call %nyx_string* @nyx_string_substring(%nyx_string* %1075, i64 1, i64 %1077)
  %1079 = alloca %nyx_string*
  store %nyx_string* %1078, %nyx_string** %1079
  %1080 = load %nyx_string*, %nyx_string** %1079
  %1081 = call { i64, i8* }* @ty_parse(%nyx_string* %1080)
  %1082 = alloca { i64, i8* }*
  store { i64, i8* }* %1081, { i64, i8* }** %1082
  %1083 = load { i64, i8* }*, { i64, i8* }** %1082
  %1084 = call { i64, i8* }* @ty_ptr({ i64, i8* }* %1083)
  ret { i64, i8* }* %1084
else349:
  br label %merge350
merge350:
  %1085 = load %nyx_string*, %nyx_string** %1021
  %1086 = getelementptr [6 x i8], [6 x i8]* @.str143, i32 0, i32 0
  %1087 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str143.c, i8* %1086)
  %1088 = call i1 @nyx_string_starts_with(%nyx_string* %1085, %nyx_string* %1087)
  br i1 %1088, label %then351, label %else352
then351:
  %1089 = load %nyx_string*, %nyx_string** %1021
  %1090 = load %nyx_string*, %nyx_string** %1021
  %1091 = call i64 @nyx_string_byte_length(%nyx_string* %1090)
  %1092 = call %nyx_string* @nyx_string_substring(%nyx_string* %1089, i64 5, i64 %1091)
  %1093 = alloca %nyx_string*
  store %nyx_string* %1092, %nyx_string** %1093
  %1094 = load %nyx_string*, %nyx_string** %1093
  %1095 = call %nyx_string* @ty_extract_leading_lifetime(%nyx_string* %1094)
  %1096 = alloca %nyx_string*
  store %nyx_string* %1095, %nyx_string** %1096
  %1097 = load %nyx_string*, %nyx_string** %1096
  %1098 = call i64 @nyx_string_byte_length(%nyx_string* %1097)
  %1099 = icmp sgt i64 %1098, 0
  br i1 %1099, label %then354, label %else355
then354:
  %1100 = load %nyx_string*, %nyx_string** %1093
  %1101 = call %nyx_string* @ty_strip_leading_lifetime(%nyx_string* %1100)
  store %nyx_string* %1101, %nyx_string** %1093
  br label %merge356
else355:
  br label %merge356
merge356:
  %1102 = load %nyx_string*, %nyx_string** %1093
  %1103 = call { i64, i8* }* @ty_parse(%nyx_string* %1102)
  %1104 = alloca { i64, i8* }*
  store { i64, i8* }* %1103, { i64, i8* }** %1104
  %1105 = load { i64, i8* }*, { i64, i8* }** %1104
  %1106 = load %nyx_string*, %nyx_string** %1096
  %1107 = call { i64, i8* }* @ty_ref_mut_r({ i64, i8* }* %1105, %nyx_string* %1106)
  ret { i64, i8* }* %1107
else352:
  br label %merge353
merge353:
  %1108 = load %nyx_string*, %nyx_string** %1021
  %1109 = getelementptr [2 x i8], [2 x i8]* @.str144, i32 0, i32 0
  %1110 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str144.c, i8* %1109)
  %1111 = call i1 @nyx_string_starts_with(%nyx_string* %1108, %nyx_string* %1110)
  br i1 %1111, label %then357, label %else358
then357:
  %1112 = load %nyx_string*, %nyx_string** %1021
  %1113 = load %nyx_string*, %nyx_string** %1021
  %1114 = call i64 @nyx_string_byte_length(%nyx_string* %1113)
  %1115 = call %nyx_string* @nyx_string_substring(%nyx_string* %1112, i64 1, i64 %1114)
  %1116 = alloca %nyx_string*
  store %nyx_string* %1115, %nyx_string** %1116
  %1117 = load %nyx_string*, %nyx_string** %1116
  %1118 = call %nyx_string* @ty_extract_leading_lifetime(%nyx_string* %1117)
  %1119 = alloca %nyx_string*
  store %nyx_string* %1118, %nyx_string** %1119
  %1120 = load %nyx_string*, %nyx_string** %1119
  %1121 = call i64 @nyx_string_byte_length(%nyx_string* %1120)
  %1122 = icmp sgt i64 %1121, 0
  br i1 %1122, label %then360, label %else361
then360:
  %1123 = load %nyx_string*, %nyx_string** %1116
  %1124 = call %nyx_string* @ty_strip_leading_lifetime(%nyx_string* %1123)
  store %nyx_string* %1124, %nyx_string** %1116
  br label %merge362
else361:
  br label %merge362
merge362:
  %1125 = load %nyx_string*, %nyx_string** %1116
  %1126 = call { i64, i8* }* @ty_parse(%nyx_string* %1125)
  %1127 = alloca { i64, i8* }*
  store { i64, i8* }* %1126, { i64, i8* }** %1127
  %1128 = load { i64, i8* }*, { i64, i8* }** %1127
  %1129 = load %nyx_string*, %nyx_string** %1119
  %1130 = call { i64, i8* }* @ty_ref_r({ i64, i8* }* %1128, %nyx_string* %1129)
  ret { i64, i8* }* %1130
else358:
  br label %merge359
merge359:
  %1131 = load %nyx_string*, %nyx_string** %1021
  %1132 = getelementptr [5 x i8], [5 x i8]* @.str145, i32 0, i32 0
  %1133 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str145.c, i8* %1132)
  %1134 = call i1 @nyx_string_starts_with(%nyx_string* %1131, %nyx_string* %1133)
  br i1 %1134, label %then363, label %else364
then363:
  %1135 = load %nyx_string*, %nyx_string** %1021
  %1136 = load %nyx_string*, %nyx_string** %1021
  %1137 = call i64 @nyx_string_byte_length(%nyx_string* %1136)
  %1138 = call %nyx_string* @nyx_string_substring(%nyx_string* %1135, i64 4, i64 %1137)
  %1139 = alloca %nyx_string*
  store %nyx_string* %1138, %nyx_string** %1139
  %1140 = load %nyx_string*, %nyx_string** %1139
  %1141 = call %nyx_string* @nyx_string_trim(%nyx_string* %1140)
  %1142 = call { i64, i8* }* @ty_dyn(%nyx_string* %1141)
  ret { i64, i8* }* %1142
else364:
  br label %merge365
merge365:
  %1143 = load %nyx_string*, %nyx_string** %1021
  %1144 = getelementptr [4 x i8], [4 x i8]* @.str146, i32 0, i32 0
  %1145 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str146.c, i8* %1144)
  %1146 = call i1 @nyx_string_starts_with(%nyx_string* %1143, %nyx_string* %1145)
  br i1 %1146, label %then366, label %else367
then366:
  %1147 = load %nyx_string*, %nyx_string** %1021
  %1148 = call i64 @nyx_string_byte_length(%nyx_string* %1147)
  %1149 = alloca i64
  store i64 %1148, i64* %1149
  %1150 = alloca i64
  store i64 0, i64* %1150
  %1151 = sub i64 0, 1
  %1152 = alloca i64
  store i64 %1151, i64* %1152
  %1153 = alloca i64
  store i64 0, i64* %1153
  %1154 = call i8* @llvm.stacksave()
  br label %while_cond369
while_cond369:
  %1155 = load i64, i64* %1153
  %1156 = load i64, i64* %1149
  %1157 = icmp slt i64 %1155, %1156
  br i1 %1157, label %while_body370, label %while_end371
while_body370:
  call void @llvm.stackrestore(i8* %1154)
  %1158 = load %nyx_string*, %nyx_string** %1021
  %1159 = load i64, i64* %1153
  %1160 = call i8 @nyx_string_char_at(%nyx_string* %1158, i64 %1159)
  %1161 = zext i8 %1160 to i64
  %1162 = alloca i64
  store i64 %1161, i64* %1162
  %1163 = load i64, i64* %1162
  %1164 = icmp eq i64 %1163, 40
  br i1 %1164, label %then372, label %else373
then372:
  %1165 = load i64, i64* %1150
  %1166 = add i64 %1165, 1
  store i64 %1166, i64* %1150
  br label %merge374
else373:
  %1167 = load i64, i64* %1162
  %1168 = icmp eq i64 %1167, 41
  br i1 %1168, label %then375, label %else376
then375:
  %1169 = load i64, i64* %1150
  %1170 = sub i64 %1169, 1
  store i64 %1170, i64* %1150
  %1171 = load i64, i64* %1150
  %1172 = icmp eq i64 %1171, 0
  br i1 %1172, label %then378, label %else379
then378:
  %1173 = load i64, i64* %1153
  store i64 %1173, i64* %1152
  %1174 = load i64, i64* %1149
  store i64 %1174, i64* %1153
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
  %1175 = load i64, i64* %1153
  %1176 = add i64 %1175, 1
  store i64 %1176, i64* %1153
  br label %while_cond369
while_end371:
  %1177 = load i64, i64* %1152
  %1178 = icmp slt i64 %1177, 0
  br i1 %1178, label %then381, label %else382
then381:
  %1179 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1179
else382:
  br label %merge383
merge383:
  %1180 = load %nyx_string*, %nyx_string** %1021
  %1181 = load i64, i64* %1152
  %1182 = call %nyx_string* @nyx_string_substring(%nyx_string* %1180, i64 3, i64 %1181)
  %1183 = alloca %nyx_string*
  store %nyx_string* %1182, %nyx_string** %1183
  %1184 = call { i64, i8* }* @nyx_array_new_ptr()
  %1185 = alloca { i64, i8* }*
  store { i64, i8* }* %1184, { i64, i8* }** %1185
  %1186 = load %nyx_string*, %nyx_string** %1183
  %1187 = call %nyx_string* @nyx_string_trim(%nyx_string* %1186)
  %1188 = getelementptr [1 x i8], [1 x i8]* @.str147, i32 0, i32 0
  %1189 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str147.c, i8* %1188)
  %1190 = call i1 @nyx_string_equals(%nyx_string* %1187, %nyx_string* %1189)
  %1191 = xor i1 %1190, true
  br i1 %1191, label %then384, label %else385
then384:
  %1192 = load %nyx_string*, %nyx_string** %1183
  %1193 = call { i64, i8* }* @split_at_depth0(%nyx_string* %1192, i64 44)
  store { i64, i8* }* %1193, { i64, i8* }** %1185
  br label %merge386
else385:
  br label %merge386
merge386:
  %1194 = call { i64, i8* }* @nyx_array_new_ptr()
  %1195 = alloca { i64, i8* }*
  store { i64, i8* }* %1194, { i64, i8* }** %1195
  %1196 = alloca i64
  store i64 0, i64* %1196
  %1197 = call i8* @llvm.stacksave()
  br label %while_cond387
while_cond387:
  %1198 = load i64, i64* %1196
  %1199 = load { i64, i8* }*, { i64, i8* }** %1185
  %1200 = call i64 @nyx_array_length({ i64, i8* }* %1199)
  %1201 = icmp slt i64 %1198, %1200
  br i1 %1201, label %while_body388, label %while_end389
while_body388:
  call void @llvm.stackrestore(i8* %1197)
  %1202 = load { i64, i8* }*, { i64, i8* }** %1185
  %1203 = load i64, i64* %1196
  %1204 = call i64 @nyx_array_get_checked({ i64, i8* }* %1202, i64 %1203, i64 2)
  %1205 = inttoptr i64 %1204 to %nyx_string*
  %1206 = alloca %nyx_string*
  store %nyx_string* %1205, %nyx_string** %1206
  %1207 = load %nyx_string*, %nyx_string** %1206
  %1208 = call { i64, i8* }* @ty_parse(%nyx_string* %1207)
  %1209 = alloca { i64, i8* }*
  store { i64, i8* }* %1208, { i64, i8* }** %1209
  %1210 = load { i64, i8* }*, { i64, i8* }** %1195
  %1211 = load { i64, i8* }*, { i64, i8* }** %1209
  %1212 = ptrtoint { i64, i8* }* %1211 to i64
  call void @nyx_array_push({ i64, i8* }* %1210, i64 %1212)
  %1213 = load i64, i64* %1196
  %1214 = add i64 %1213, 1
  store i64 %1214, i64* %1196
  br label %while_cond387
while_end389:
  %1215 = call { i64, i8* }* @ty_unit()
  %1216 = alloca { i64, i8* }*
  store { i64, i8* }* %1215, { i64, i8* }** %1216
  %1217 = load i64, i64* %1152
  %1218 = add i64 %1217, 1
  %1219 = load i64, i64* %1149
  %1220 = icmp slt i64 %1218, %1219
  br i1 %1220, label %then390, label %else391
then390:
  %1221 = load %nyx_string*, %nyx_string** %1021
  %1222 = load i64, i64* %1152
  %1223 = add i64 %1222, 1
  %1224 = load i64, i64* %1149
  %1225 = call %nyx_string* @nyx_string_substring(%nyx_string* %1221, i64 %1223, i64 %1224)
  %1226 = call %nyx_string* @nyx_string_trim(%nyx_string* %1225)
  %1227 = alloca %nyx_string*
  store %nyx_string* %1226, %nyx_string** %1227
  %1228 = load %nyx_string*, %nyx_string** %1227
  %1229 = getelementptr [3 x i8], [3 x i8]* @.str148, i32 0, i32 0
  %1230 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str148.c, i8* %1229)
  %1231 = call i1 @nyx_string_starts_with(%nyx_string* %1228, %nyx_string* %1230)
  br i1 %1231, label %then393, label %else394
then393:
  %1232 = load %nyx_string*, %nyx_string** %1227
  %1233 = load %nyx_string*, %nyx_string** %1227
  %1234 = call i64 @nyx_string_byte_length(%nyx_string* %1233)
  %1235 = call %nyx_string* @nyx_string_substring(%nyx_string* %1232, i64 2, i64 %1234)
  %1236 = alloca %nyx_string*
  store %nyx_string* %1235, %nyx_string** %1236
  %1237 = load %nyx_string*, %nyx_string** %1236
  %1238 = call { i64, i8* }* @ty_parse(%nyx_string* %1237)
  store { i64, i8* }* %1238, { i64, i8* }** %1216
  br label %merge395
else394:
  br label %merge395
merge395:
  br label %merge392
else391:
  br label %merge392
merge392:
  %1239 = load { i64, i8* }*, { i64, i8* }** %1195
  %1240 = load { i64, i8* }*, { i64, i8* }** %1216
  %1241 = call { i64, i8* }* @ty_fn({ i64, i8* }* %1239, { i64, i8* }* %1240)
  ret { i64, i8* }* %1241
else367:
  br label %merge368
merge368:
  %1242 = load %nyx_string*, %nyx_string** %1021
  %1243 = getelementptr [2 x i8], [2 x i8]* @.str149, i32 0, i32 0
  %1244 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str149.c, i8* %1243)
  %1245 = call i1 @nyx_string_ends_with(%nyx_string* %1242, %nyx_string* %1244)
  br i1 %1245, label %then396, label %else397
then396:
  %1246 = load %nyx_string*, %nyx_string** %1021
  %1247 = getelementptr [2 x i8], [2 x i8]* @.str150, i32 0, i32 0
  %1248 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str150.c, i8* %1247)
  %1249 = call i64 @nyx_string_index_of(%nyx_string* %1246, %nyx_string* %1248)
  %1250 = alloca i64
  store i64 %1249, i64* %1250
  %1251 = load i64, i64* %1250
  %1252 = icmp sgt i64 %1251, 0
  br i1 %1252, label %then399, label %else400
then399:
  %1253 = load %nyx_string*, %nyx_string** %1021
  %1254 = load i64, i64* %1250
  %1255 = call %nyx_string* @nyx_string_substring(%nyx_string* %1253, i64 0, i64 %1254)
  %1256 = call %nyx_string* @nyx_string_trim(%nyx_string* %1255)
  %1257 = alloca %nyx_string*
  store %nyx_string* %1256, %nyx_string** %1257
  %1258 = load %nyx_string*, %nyx_string** %1021
  %1259 = load i64, i64* %1250
  %1260 = add i64 %1259, 1
  %1261 = load %nyx_string*, %nyx_string** %1021
  %1262 = call i64 @nyx_string_byte_length(%nyx_string* %1261)
  %1263 = sub i64 %1262, 1
  %1264 = call %nyx_string* @nyx_string_substring(%nyx_string* %1258, i64 %1260, i64 %1263)
  %1265 = alloca %nyx_string*
  store %nyx_string* %1264, %nyx_string** %1265
  %1266 = load %nyx_string*, %nyx_string** %1265
  %1267 = call { i64, i8* }* @split_at_depth0(%nyx_string* %1266, i64 44)
  %1268 = alloca { i64, i8* }*
  store { i64, i8* }* %1267, { i64, i8* }** %1268
  %1269 = call { i64, i8* }* @nyx_array_new_ptr()
  %1270 = alloca { i64, i8* }*
  store { i64, i8* }* %1269, { i64, i8* }** %1270
  %1271 = alloca i64
  store i64 0, i64* %1271
  %1272 = call i8* @llvm.stacksave()
  br label %while_cond402
while_cond402:
  %1273 = load i64, i64* %1271
  %1274 = load { i64, i8* }*, { i64, i8* }** %1268
  %1275 = call i64 @nyx_array_length({ i64, i8* }* %1274)
  %1276 = icmp slt i64 %1273, %1275
  br i1 %1276, label %while_body403, label %while_end404
while_body403:
  call void @llvm.stackrestore(i8* %1272)
  %1277 = load { i64, i8* }*, { i64, i8* }** %1268
  %1278 = load i64, i64* %1271
  %1279 = call i64 @nyx_array_get_checked({ i64, i8* }* %1277, i64 %1278, i64 2)
  %1280 = inttoptr i64 %1279 to %nyx_string*
  %1281 = alloca %nyx_string*
  store %nyx_string* %1280, %nyx_string** %1281
  %1282 = load %nyx_string*, %nyx_string** %1281
  %1283 = call { i64, i8* }* @ty_parse(%nyx_string* %1282)
  %1284 = alloca { i64, i8* }*
  store { i64, i8* }* %1283, { i64, i8* }** %1284
  %1285 = load { i64, i8* }*, { i64, i8* }** %1270
  %1286 = load { i64, i8* }*, { i64, i8* }** %1284
  %1287 = ptrtoint { i64, i8* }* %1286 to i64
  call void @nyx_array_push({ i64, i8* }* %1285, i64 %1287)
  %1288 = load i64, i64* %1271
  %1289 = add i64 %1288, 1
  store i64 %1289, i64* %1271
  br label %while_cond402
while_end404:
  %1290 = load %nyx_string*, %nyx_string** %1257
  %1291 = getelementptr [6 x i8], [6 x i8]* @.str151, i32 0, i32 0
  %1292 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str151.c, i8* %1291)
  %1293 = call i1 @nyx_string_equals(%nyx_string* %1290, %nyx_string* %1292)
  br i1 %1293, label %then405, label %else406
then405:
  %1294 = load { i64, i8* }*, { i64, i8* }** %1270
  %1295 = call i64 @nyx_array_length({ i64, i8* }* %1294)
  %1296 = icmp eq i64 %1295, 1
  br i1 %1296, label %then408, label %else409
then408:
  %1297 = load { i64, i8* }*, { i64, i8* }** %1270
  %1298 = call i64 @nyx_array_get({ i64, i8* }* %1297, i64 0)
  %1299 = inttoptr i64 %1298 to { i64, i8* }*
  %1300 = call { i64, i8* }* @ty_array({ i64, i8* }* %1299)
  ret { i64, i8* }* %1300
else409:
  br label %merge410
merge410:
  br label %merge407
else406:
  br label %merge407
merge407:
  %1301 = load %nyx_string*, %nyx_string** %1257
  %1302 = getelementptr [7 x i8], [7 x i8]* @.str152, i32 0, i32 0
  %1303 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str152.c, i8* %1302)
  %1304 = call i1 @nyx_string_equals(%nyx_string* %1301, %nyx_string* %1303)
  br i1 %1304, label %then411, label %else412
then411:
  %1305 = load { i64, i8* }*, { i64, i8* }** %1270
  %1306 = call i64 @nyx_array_length({ i64, i8* }* %1305)
  %1307 = icmp eq i64 %1306, 1
  br i1 %1307, label %then414, label %else415
then414:
  %1308 = load { i64, i8* }*, { i64, i8* }** %1270
  %1309 = call i64 @nyx_array_get({ i64, i8* }* %1308, i64 0)
  %1310 = inttoptr i64 %1309 to { i64, i8* }*
  %1311 = call { i64, i8* }* @ty_option({ i64, i8* }* %1310)
  ret { i64, i8* }* %1311
else415:
  br label %merge416
merge416:
  br label %merge413
else412:
  br label %merge413
merge413:
  %1312 = load %nyx_string*, %nyx_string** %1257
  %1313 = getelementptr [7 x i8], [7 x i8]* @.str153, i32 0, i32 0
  %1314 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str153.c, i8* %1313)
  %1315 = call i1 @nyx_string_equals(%nyx_string* %1312, %nyx_string* %1314)
  br i1 %1315, label %then417, label %else418
then417:
  %1316 = load { i64, i8* }*, { i64, i8* }** %1270
  %1317 = call i64 @nyx_array_length({ i64, i8* }* %1316)
  %1318 = icmp eq i64 %1317, 2
  br i1 %1318, label %then420, label %else421
then420:
  %1319 = load { i64, i8* }*, { i64, i8* }** %1270
  %1320 = call i64 @nyx_array_get({ i64, i8* }* %1319, i64 0)
  %1321 = inttoptr i64 %1320 to { i64, i8* }*
  %1322 = load { i64, i8* }*, { i64, i8* }** %1270
  %1323 = call i64 @nyx_array_get({ i64, i8* }* %1322, i64 1)
  %1324 = inttoptr i64 %1323 to { i64, i8* }*
  %1325 = call { i64, i8* }* @ty_result({ i64, i8* }* %1321, { i64, i8* }* %1324)
  ret { i64, i8* }* %1325
else421:
  br label %merge422
merge422:
  br label %merge419
else418:
  br label %merge419
merge419:
  %1326 = load %nyx_string*, %nyx_string** %1257
  %1327 = getelementptr [4 x i8], [4 x i8]* @.str154, i32 0, i32 0
  %1328 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str154.c, i8* %1327)
  %1329 = call i1 @nyx_string_equals(%nyx_string* %1326, %nyx_string* %1328)
  br i1 %1329, label %then423, label %else424
then423:
  %1330 = load { i64, i8* }*, { i64, i8* }** %1270
  %1331 = call i64 @nyx_array_length({ i64, i8* }* %1330)
  %1332 = icmp eq i64 %1331, 2
  br i1 %1332, label %then426, label %else427
then426:
  %1333 = load { i64, i8* }*, { i64, i8* }** %1270
  %1334 = call i64 @nyx_array_get({ i64, i8* }* %1333, i64 0)
  %1335 = inttoptr i64 %1334 to { i64, i8* }*
  %1336 = load { i64, i8* }*, { i64, i8* }** %1270
  %1337 = call i64 @nyx_array_get({ i64, i8* }* %1336, i64 1)
  %1338 = inttoptr i64 %1337 to { i64, i8* }*
  %1339 = call { i64, i8* }* @ty_map({ i64, i8* }* %1335, { i64, i8* }* %1338)
  ret { i64, i8* }* %1339
else427:
  br label %merge428
merge428:
  %1340 = load { i64, i8* }*, { i64, i8* }** %1270
  %1341 = call i64 @nyx_array_length({ i64, i8* }* %1340)
  %1342 = icmp eq i64 %1341, 1
  br i1 %1342, label %then429, label %else430
then429:
  %1343 = call { i64, i8* }* @ty_string()
  %1344 = load { i64, i8* }*, { i64, i8* }** %1270
  %1345 = call i64 @nyx_array_get({ i64, i8* }* %1344, i64 0)
  %1346 = inttoptr i64 %1345 to { i64, i8* }*
  %1347 = call { i64, i8* }* @ty_map({ i64, i8* }* %1343, { i64, i8* }* %1346)
  ret { i64, i8* }* %1347
else430:
  br label %merge431
merge431:
  br label %merge425
else424:
  br label %merge425
merge425:
  %1348 = load %nyx_string*, %nyx_string** %1257
  %1349 = load { i64, i8* }*, { i64, i8* }** %1270
  %1350 = call { i64, i8* }* @ty_struct_ty(%nyx_string* %1348, { i64, i8* }* %1349)
  ret { i64, i8* }* %1350
else400:
  br label %merge401
merge401:
  br label %merge398
else397:
  br label %merge398
merge398:
  %1351 = load %nyx_string*, %nyx_string** %1021
  %1352 = getelementptr [6 x i8], [6 x i8]* @.str155, i32 0, i32 0
  %1353 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str155.c, i8* %1352)
  %1354 = call i1 @nyx_string_equals(%nyx_string* %1351, %nyx_string* %1353)
  br i1 %1354, label %then432, label %else433
then432:
  %1355 = call { i64, i8* }* @ty_unknown()
  %1356 = call { i64, i8* }* @ty_array({ i64, i8* }* %1355)
  ret { i64, i8* }* %1356
else433:
  br label %merge434
merge434:
  %1357 = load %nyx_string*, %nyx_string** %1021
  %1358 = getelementptr [7 x i8], [7 x i8]* @.str156, i32 0, i32 0
  %1359 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str156.c, i8* %1358)
  %1360 = call i1 @nyx_string_equals(%nyx_string* %1357, %nyx_string* %1359)
  br i1 %1360, label %then435, label %else436
then435:
  %1361 = call { i64, i8* }* @ty_unknown()
  %1362 = call { i64, i8* }* @ty_option({ i64, i8* }* %1361)
  ret { i64, i8* }* %1362
else436:
  br label %merge437
merge437:
  %1363 = load %nyx_string*, %nyx_string** %1021
  %1364 = getelementptr [7 x i8], [7 x i8]* @.str157, i32 0, i32 0
  %1365 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str157.c, i8* %1364)
  %1366 = call i1 @nyx_string_equals(%nyx_string* %1363, %nyx_string* %1365)
  br i1 %1366, label %then438, label %else439
then438:
  %1367 = call { i64, i8* }* @ty_unknown()
  %1368 = call { i64, i8* }* @ty_unknown()
  %1369 = call { i64, i8* }* @ty_result({ i64, i8* }* %1367, { i64, i8* }* %1368)
  ret { i64, i8* }* %1369
else439:
  br label %merge440
merge440:
  %1370 = load %nyx_string*, %nyx_string** %1021
  %1371 = getelementptr [4 x i8], [4 x i8]* @.str158, i32 0, i32 0
  %1372 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str158.c, i8* %1371)
  %1373 = call i1 @nyx_string_equals(%nyx_string* %1370, %nyx_string* %1372)
  br i1 %1373, label %then441, label %else442
then441:
  %1374 = call { i64, i8* }* @ty_unknown()
  %1375 = call { i64, i8* }* @ty_unknown()
  %1376 = call { i64, i8* }* @ty_map({ i64, i8* }* %1374, { i64, i8* }* %1375)
  ret { i64, i8* }* %1376
else442:
  br label %merge443
merge443:
  %1377 = load %nyx_string*, %nyx_string** %1021
  %1378 = call i64 @nyx_string_byte_length(%nyx_string* %1377)
  %1379 = icmp sle i64 %1378, 2
  br i1 %1379, label %then444, label %else445
then444:
  %1380 = load %nyx_string*, %nyx_string** %1021
  %1381 = call i8 @nyx_string_char_at(%nyx_string* %1380, i64 0)
  %1382 = zext i8 %1381 to i64
  %1383 = alloca i64
  store i64 %1382, i64* %1383
  %1384 = alloca i1
  store i1 false, i1* %1384
  %1385 = load i64, i64* %1383
  %1386 = icmp sge i64 %1385, 65
  br i1 %1386, label %sc_and_rhs447, label %sc_and_end448
sc_and_rhs447:
  %1387 = load i64, i64* %1383
  %1388 = icmp sle i64 %1387, 90
  store i1 %1388, i1* %1384
  br label %sc_and_end448
sc_and_end448:
  %1389 = load i1, i1* %1384
  br i1 %1389, label %then449, label %else450
then449:
  %1390 = load %nyx_string*, %nyx_string** %1021
  %1391 = call { i64, i8* }* @ty_generic(%nyx_string* %1390)
  ret { i64, i8* }* %1391
else450:
  br label %merge451
merge451:
  br label %merge446
else445:
  br label %merge446
merge446:
  %1392 = load %nyx_string*, %nyx_string** %1021
  %1393 = call { i64, i8* }* @nyx_array_new_ptr()
  %1394 = call { i64, i8* }* @ty_struct_ty(%nyx_string* %1392, { i64, i8* }* %1393)
  ret { i64, i8* }* %1394
}

define { i64, i8* }* @ty_of_literal(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %1395 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 0
  %1396 = load %nyx_string*, %nyx_string** %1395
  %1397 = alloca %nyx_string*
  store %nyx_string* %1396, %nyx_string** %1397
  %1398 = load %nyx_string*, %nyx_string** %1397
  %1399 = getelementptr [7 x i8], [7 x i8]* @.str159, i32 0, i32 0
  %1400 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str159.c, i8* %1399)
  %1401 = call i1 @nyx_string_equals(%nyx_string* %1398, %nyx_string* %1400)
  br i1 %1401, label %then452, label %else453
then452:
  %1402 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %1403 = load { i64, i8* }*, { i64, i8* }** %1402
  %1404 = alloca { i64, i8* }*
  store { i64, i8* }* %1403, { i64, i8* }** %1404
  %1405 = load { i64, i8* }*, { i64, i8* }** %1404
  %1406 = call i64 @nyx_array_length({ i64, i8* }* %1405)
  %1407 = icmp sgt i64 %1406, 0
  br i1 %1407, label %then455, label %else456
then455:
  %1408 = load { i64, i8* }*, { i64, i8* }** %1404
  %1409 = call i64 @nyx_array_get_checked({ i64, i8* }* %1408, i64 0, i64 2)
  %1410 = inttoptr i64 %1409 to %nyx_string*
  %1411 = alloca %nyx_string*
  store %nyx_string* %1410, %nyx_string** %1411
  %1412 = load %nyx_string*, %nyx_string** %1411
  %1413 = getelementptr [2 x i8], [2 x i8]* @.str160, i32 0, i32 0
  %1414 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str160.c, i8* %1413)
  %1415 = call i64 @nyx_string_index_of(%nyx_string* %1412, %nyx_string* %1414)
  %1416 = icmp sge i64 %1415, 0
  br i1 %1416, label %then458, label %else459
then458:
  %1417 = call { i64, i8* }* @ty_float()
  ret { i64, i8* }* %1417
else459:
  br label %merge460
merge460:
  br label %merge457
else456:
  br label %merge457
merge457:
  %1418 = call { i64, i8* }* @ty_int()
  ret { i64, i8* }* %1418
else453:
  br label %merge454
merge454:
  %1419 = load %nyx_string*, %nyx_string** %1397
  %1420 = getelementptr [7 x i8], [7 x i8]* @.str161, i32 0, i32 0
  %1421 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str161.c, i8* %1420)
  %1422 = call i1 @nyx_string_equals(%nyx_string* %1419, %nyx_string* %1421)
  br i1 %1422, label %then461, label %else462
then461:
  %1423 = call { i64, i8* }* @ty_string()
  ret { i64, i8* }* %1423
else462:
  br label %merge463
merge463:
  %1424 = load %nyx_string*, %nyx_string** %1397
  %1425 = getelementptr [5 x i8], [5 x i8]* @.str162, i32 0, i32 0
  %1426 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str162.c, i8* %1425)
  %1427 = call i1 @nyx_string_equals(%nyx_string* %1424, %nyx_string* %1426)
  br i1 %1427, label %then464, label %else465
then464:
  %1428 = call { i64, i8* }* @ty_bool()
  ret { i64, i8* }* %1428
else465:
  br label %merge466
merge466:
  %1429 = load %nyx_string*, %nyx_string** %1397
  %1430 = getelementptr [5 x i8], [5 x i8]* @.str163, i32 0, i32 0
  %1431 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str163.c, i8* %1430)
  %1432 = call i1 @nyx_string_equals(%nyx_string* %1429, %nyx_string* %1431)
  br i1 %1432, label %then467, label %else468
then467:
  %1433 = call { i64, i8* }* @ty_char()
  ret { i64, i8* }* %1433
else468:
  br label %merge469
merge469:
  %1434 = load %nyx_string*, %nyx_string** %1397
  %1435 = getelementptr [6 x i8], [6 x i8]* @.str164, i32 0, i32 0
  %1436 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str164.c, i8* %1435)
  %1437 = call i1 @nyx_string_equals(%nyx_string* %1434, %nyx_string* %1436)
  br i1 %1437, label %then470, label %else471
then470:
  %1438 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %1439 = load { i64, i8* }*, { i64, i8* }** %1438
  %1440 = alloca { i64, i8* }*
  store { i64, i8* }* %1439, { i64, i8* }** %1440
  %1441 = load { i64, i8* }*, { i64, i8* }** %1440
  %1442 = call i64 @nyx_array_length({ i64, i8* }* %1441)
  %1443 = icmp sgt i64 %1442, 0
  br i1 %1443, label %then473, label %else474
then473:
  %1444 = load { i64, i8* }*, { i64, i8* }** %1440
  %1445 = call i64 @nyx_array_get({ i64, i8* }* %1444, i64 0)
  %1446 = inttoptr i64 %1445 to { i64, i8* }*
  %1447 = alloca { i64, i8* }*
  store { i64, i8* }* %1446, { i64, i8* }** %1447
  %1448 = load { i64, i8* }*, { i64, i8* }** %1447
  %1449 = call i64 @nyx_array_length({ i64, i8* }* %1448)
  %1450 = icmp sgt i64 %1449, 0
  br i1 %1450, label %then476, label %else477
then476:
  %1451 = load { i64, i8* }*, { i64, i8* }** %1447
  %1452 = call i64 @nyx_array_get({ i64, i8* }* %1451, i64 0)
  %1453 = inttoptr i64 %1452 to { i64, i8* }*
  %1454 = call i64 @nyx_array_get({ i64, i8* }* %1453, i64 0)
  %1455 = call i64 @nyx_array_get({ i64, i8* }* %1453, i64 1)
  %1456 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %1453, i64 2)
  %1457 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %1453, i64 3)
  %1458 = inttoptr i64 %1454 to %nyx_string*
  %1459 = inttoptr i64 %1455 to { i64, i8* }*
  %1460 = alloca %ASTNode
  %1461 = getelementptr inbounds %ASTNode, %ASTNode* %1460, i32 0, i32 0
  store %nyx_string* %1458, %nyx_string** %1461
  %1462 = getelementptr inbounds %ASTNode, %ASTNode* %1460, i32 0, i32 1
  store { i64, i8* }* %1459, { i64, i8* }** %1462
  %1463 = getelementptr inbounds %ASTNode, %ASTNode* %1460, i32 0, i32 2
  store i64 %1456, i64* %1463
  %1464 = getelementptr inbounds %ASTNode, %ASTNode* %1460, i32 0, i32 3
  store i64 %1457, i64* %1464
  %1465 = load %ASTNode, %ASTNode* %1460
  %1466 = alloca %ASTNode
  store %ASTNode %1465, %ASTNode* %1466
  %1467 = load %ASTNode, %ASTNode* %1466
  %1468 = call { i64, i8* }* @ty_of_literal(%ASTNode %1467)
  %1469 = alloca { i64, i8* }*
  store { i64, i8* }* %1468, { i64, i8* }** %1469
  %1470 = load { i64, i8* }*, { i64, i8* }** %1469
  %1471 = call i1 @ty_is_unknown({ i64, i8* }* %1470)
  %1472 = xor i1 %1471, true
  br i1 %1472, label %then479, label %else480
then479:
  %1473 = load { i64, i8* }*, { i64, i8* }** %1469
  %1474 = call { i64, i8* }* @ty_array({ i64, i8* }* %1473)
  ret { i64, i8* }* %1474
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
  %1475 = call { i64, i8* }* @ty_unknown()
  %1476 = call { i64, i8* }* @ty_array({ i64, i8* }* %1475)
  ret { i64, i8* }* %1476
else471:
  br label %merge472
merge472:
  %1477 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1477
}

define i1 @is_integer_like(
{ i64, i8* }* %t.param) {
  %t.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %t.param, { i64, i8* }** %t.ptr
  %1478 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1479 = call %nyx_string* @ty_kind({ i64, i8* }* %1478)
  %1480 = alloca %nyx_string*
  store %nyx_string* %1479, %nyx_string** %1480
  %1481 = load %nyx_string*, %nyx_string** %1480
  %1482 = getelementptr [6 x i8], [6 x i8]* @.str165, i32 0, i32 0
  %1483 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str165.c, i8* %1482)
  %1484 = call i1 @nyx_string_equals(%nyx_string* %1481, %nyx_string* %1483)
  br i1 %1484, label %then482, label %else483
then482:
  ret i1 1
else483:
  br label %merge484
merge484:
  %1485 = load %nyx_string*, %nyx_string** %1480
  %1486 = getelementptr [8 x i8], [8 x i8]* @.str166, i32 0, i32 0
  %1487 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str166.c, i8* %1486)
  %1488 = call i1 @nyx_string_equals(%nyx_string* %1485, %nyx_string* %1487)
  br i1 %1488, label %then485, label %else486
then485:
  %1489 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1490 = call i64 @nyx_array_get_checked({ i64, i8* }* %1489, i64 1, i64 2)
  %1491 = inttoptr i64 %1490 to %nyx_string*
  %1492 = alloca %nyx_string*
  store %nyx_string* %1491, %nyx_string** %1492
  %1493 = load %nyx_string*, %nyx_string** %1492
  %1494 = getelementptr [4 x i8], [4 x i8]* @.str167, i32 0, i32 0
  %1495 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str167.c, i8* %1494)
  %1496 = call i1 @nyx_string_equals(%nyx_string* %1493, %nyx_string* %1495)
  br i1 %1496, label %then488, label %else489
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
  %1497 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1498 = call %nyx_string* @ty_kind({ i64, i8* }* %1497)
  %1499 = alloca %nyx_string*
  store %nyx_string* %1498, %nyx_string** %1499
  %1500 = load %nyx_string*, %nyx_string** %1499
  %1501 = getelementptr [8 x i8], [8 x i8]* @.str168, i32 0, i32 0
  %1502 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str168.c, i8* %1501)
  %1503 = call i1 @nyx_string_equals(%nyx_string* %1500, %nyx_string* %1502)
  br i1 %1503, label %then491, label %else492
then491:
  ret i1 1
else492:
  br label %merge493
merge493:
  %1504 = load %nyx_string*, %nyx_string** %1499
  %1505 = getelementptr [8 x i8], [8 x i8]* @.str169, i32 0, i32 0
  %1506 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str169.c, i8* %1505)
  %1507 = call i1 @nyx_string_equals(%nyx_string* %1504, %nyx_string* %1506)
  br i1 %1507, label %then494, label %else495
then494:
  %1508 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1509 = call i64 @nyx_array_get_checked({ i64, i8* }* %1508, i64 1, i64 2)
  %1510 = inttoptr i64 %1509 to %nyx_string*
  %1511 = alloca %nyx_string*
  store %nyx_string* %1510, %nyx_string** %1511
  %1512 = load %nyx_string*, %nyx_string** %1511
  %1513 = getelementptr [4 x i8], [4 x i8]* @.str170, i32 0, i32 0
  %1514 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str170.c, i8* %1513)
  %1515 = call i1 @nyx_string_equals(%nyx_string* %1512, %nyx_string* %1514)
  br i1 %1515, label %then497, label %else498
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
  %1516 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1517 = call i1 @is_integer_like({ i64, i8* }* %1516)
  br i1 %1517, label %then500, label %else501
then500:
  ret i1 1
else501:
  br label %merge502
merge502:
  %1518 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1519 = call i1 @is_float_like({ i64, i8* }* %1518)
  br i1 %1519, label %then503, label %else504
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
  %1520 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1521 = call %nyx_string* @ty_kind({ i64, i8* }* %1520)
  %1522 = alloca %nyx_string*
  store %nyx_string* %1521, %nyx_string** %1522
  %1523 = load %nyx_string*, %nyx_string** %1522
  %1524 = getelementptr [6 x i8], [6 x i8]* @.str171, i32 0, i32 0
  %1525 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str171.c, i8* %1524)
  %1526 = call i1 @nyx_string_equals(%nyx_string* %1523, %nyx_string* %1525)
  br i1 %1526, label %then506, label %else507
then506:
  %1527 = getelementptr [1 x i8], [1 x i8]* @.str172, i32 0, i32 0
  %1528 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str172.c, i8* %1527)
  ret %nyx_string* %1528
else507:
  br label %merge508
merge508:
  %1529 = load %nyx_string*, %nyx_string** %1522
  %1530 = getelementptr [7 x i8], [7 x i8]* @.str173, i32 0, i32 0
  %1531 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str173.c, i8* %1530)
  %1532 = call i1 @nyx_string_equals(%nyx_string* %1529, %nyx_string* %1531)
  br i1 %1532, label %then509, label %else510
then509:
  %1533 = getelementptr [1 x i8], [1 x i8]* @.str174, i32 0, i32 0
  %1534 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str174.c, i8* %1533)
  ret %nyx_string* %1534
else510:
  br label %merge511
merge511:
  %1535 = load %nyx_string*, %nyx_string** %1522
  %1536 = getelementptr [10 x i8], [10 x i8]* @.str175, i32 0, i32 0
  %1537 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str175.c, i8* %1536)
  %1538 = call i1 @nyx_string_equals(%nyx_string* %1535, %nyx_string* %1537)
  br i1 %1538, label %then512, label %else513
then512:
  %1539 = getelementptr [1 x i8], [1 x i8]* @.str176, i32 0, i32 0
  %1540 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str176.c, i8* %1539)
  ret %nyx_string* %1540
else513:
  br label %merge514
merge514:
  %1541 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1542 = call %nyx_string* @ty_to_str({ i64, i8* }* %1541)
  ret %nyx_string* %1542
}

define i1 @ty_is_concrete(
{ i64, i8* }* %t.param) {
  %t.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %t.param, { i64, i8* }** %t.ptr
  %1543 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1544 = call %nyx_string* @ty_kind({ i64, i8* }* %1543)
  %1545 = alloca %nyx_string*
  store %nyx_string* %1544, %nyx_string** %1545
  %1546 = load %nyx_string*, %nyx_string** %1545
  %1547 = getelementptr [10 x i8], [10 x i8]* @.str177, i32 0, i32 0
  %1548 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str177.c, i8* %1547)
  %1549 = call i1 @nyx_string_equals(%nyx_string* %1546, %nyx_string* %1548)
  br i1 %1549, label %then515, label %else516
then515:
  ret i1 0
else516:
  br label %merge517
merge517:
  %1550 = load %nyx_string*, %nyx_string** %1545
  %1551 = getelementptr [10 x i8], [10 x i8]* @.str178, i32 0, i32 0
  %1552 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str178.c, i8* %1551)
  %1553 = call i1 @nyx_string_equals(%nyx_string* %1550, %nyx_string* %1552)
  br i1 %1553, label %then518, label %else519
then518:
  ret i1 0
else519:
  br label %merge520
merge520:
  %1554 = load %nyx_string*, %nyx_string** %1545
  %1555 = getelementptr [6 x i8], [6 x i8]* @.str179, i32 0, i32 0
  %1556 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str179.c, i8* %1555)
  %1557 = call i1 @nyx_string_equals(%nyx_string* %1554, %nyx_string* %1556)
  br i1 %1557, label %then521, label %else522
then521:
  ret i1 0
else522:
  br label %merge523
merge523:
  %1558 = alloca i1
  store i1 true, i1* %1558
  %1559 = alloca i1
  store i1 true, i1* %1559
  %1560 = alloca i1
  store i1 true, i1* %1560
  %1561 = alloca i1
  store i1 true, i1* %1561
  %1562 = load %nyx_string*, %nyx_string** %1545
  %1563 = getelementptr [8 x i8], [8 x i8]* @.str180, i32 0, i32 0
  %1564 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str180.c, i8* %1563)
  %1565 = call i1 @nyx_string_equals(%nyx_string* %1562, %nyx_string* %1564)
  br i1 %1565, label %sc_or_end525, label %sc_or_rhs524
sc_or_rhs524:
  %1566 = load %nyx_string*, %nyx_string** %1545
  %1567 = getelementptr [9 x i8], [9 x i8]* @.str181, i32 0, i32 0
  %1568 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str181.c, i8* %1567)
  %1569 = call i1 @nyx_string_equals(%nyx_string* %1566, %nyx_string* %1568)
  store i1 %1569, i1* %1561
  br label %sc_or_end525
sc_or_end525:
  %1570 = load i1, i1* %1561
  br i1 %1570, label %sc_or_end527, label %sc_or_rhs526
sc_or_rhs526:
  %1571 = load %nyx_string*, %nyx_string** %1545
  %1572 = getelementptr [6 x i8], [6 x i8]* @.str182, i32 0, i32 0
  %1573 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str182.c, i8* %1572)
  %1574 = call i1 @nyx_string_equals(%nyx_string* %1571, %nyx_string* %1573)
  store i1 %1574, i1* %1560
  br label %sc_or_end527
sc_or_end527:
  %1575 = load i1, i1* %1560
  br i1 %1575, label %sc_or_end529, label %sc_or_rhs528
sc_or_rhs528:
  %1576 = load %nyx_string*, %nyx_string** %1545
  %1577 = getelementptr [6 x i8], [6 x i8]* @.str183, i32 0, i32 0
  %1578 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str183.c, i8* %1577)
  %1579 = call i1 @nyx_string_equals(%nyx_string* %1576, %nyx_string* %1578)
  store i1 %1579, i1* %1559
  br label %sc_or_end529
sc_or_end529:
  %1580 = load i1, i1* %1559
  br i1 %1580, label %sc_or_end531, label %sc_or_rhs530
sc_or_rhs530:
  %1581 = load %nyx_string*, %nyx_string** %1545
  %1582 = getelementptr [9 x i8], [9 x i8]* @.str184, i32 0, i32 0
  %1583 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str184.c, i8* %1582)
  %1584 = call i1 @nyx_string_equals(%nyx_string* %1581, %nyx_string* %1583)
  store i1 %1584, i1* %1558
  br label %sc_or_end531
sc_or_end531:
  %1585 = load i1, i1* %1558
  br i1 %1585, label %then532, label %else533
then532:
  %1586 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1587 = call i64 @nyx_array_get({ i64, i8* }* %1586, i64 1)
  %1588 = inttoptr i64 %1587 to { i64, i8* }*
  %1589 = alloca { i64, i8* }*
  store { i64, i8* }* %1588, { i64, i8* }** %1589
  %1590 = load { i64, i8* }*, { i64, i8* }** %1589
  %1591 = call i1 @ty_is_concrete({ i64, i8* }* %1590)
  ret i1 %1591
else533:
  br label %merge534
merge534:
  %1592 = alloca i1
  store i1 true, i1* %1592
  %1593 = load %nyx_string*, %nyx_string** %1545
  %1594 = getelementptr [9 x i8], [9 x i8]* @.str185, i32 0, i32 0
  %1595 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str185.c, i8* %1594)
  %1596 = call i1 @nyx_string_equals(%nyx_string* %1593, %nyx_string* %1595)
  br i1 %1596, label %sc_or_end536, label %sc_or_rhs535
sc_or_rhs535:
  %1597 = load %nyx_string*, %nyx_string** %1545
  %1598 = getelementptr [6 x i8], [6 x i8]* @.str186, i32 0, i32 0
  %1599 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str186.c, i8* %1598)
  %1600 = call i1 @nyx_string_equals(%nyx_string* %1597, %nyx_string* %1599)
  store i1 %1600, i1* %1592
  br label %sc_or_end536
sc_or_end536:
  %1601 = load i1, i1* %1592
  br i1 %1601, label %then537, label %else538
then537:
  %1602 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1603 = call i64 @nyx_array_get({ i64, i8* }* %1602, i64 1)
  %1604 = inttoptr i64 %1603 to { i64, i8* }*
  %1605 = alloca { i64, i8* }*
  store { i64, i8* }* %1604, { i64, i8* }** %1605
  %1606 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1607 = call i64 @nyx_array_get({ i64, i8* }* %1606, i64 2)
  %1608 = inttoptr i64 %1607 to { i64, i8* }*
  %1609 = alloca { i64, i8* }*
  store { i64, i8* }* %1608, { i64, i8* }** %1609
  %1610 = load { i64, i8* }*, { i64, i8* }** %1605
  %1611 = call i1 @ty_is_concrete({ i64, i8* }* %1610)
  %1612 = xor i1 %1611, true
  br i1 %1612, label %then540, label %else541
then540:
  ret i1 0
else541:
  br label %merge542
merge542:
  %1613 = load { i64, i8* }*, { i64, i8* }** %1609
  %1614 = call i1 @ty_is_concrete({ i64, i8* }* %1613)
  ret i1 %1614
else538:
  br label %merge539
merge539:
  %1615 = load %nyx_string*, %nyx_string** %1545
  %1616 = getelementptr [5 x i8], [5 x i8]* @.str187, i32 0, i32 0
  %1617 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str187.c, i8* %1616)
  %1618 = call i1 @nyx_string_equals(%nyx_string* %1615, %nyx_string* %1617)
  br i1 %1618, label %then543, label %else544
then543:
  %1619 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1620 = call i64 @nyx_array_get({ i64, i8* }* %1619, i64 1)
  %1621 = inttoptr i64 %1620 to { i64, i8* }*
  %1622 = alloca { i64, i8* }*
  store { i64, i8* }* %1621, { i64, i8* }** %1622
  %1623 = alloca i64
  store i64 0, i64* %1623
  %1624 = call i8* @llvm.stacksave()
  br label %while_cond546
while_cond546:
  %1625 = load i64, i64* %1623
  %1626 = load { i64, i8* }*, { i64, i8* }** %1622
  %1627 = call i64 @nyx_array_length({ i64, i8* }* %1626)
  %1628 = icmp slt i64 %1625, %1627
  br i1 %1628, label %while_body547, label %while_end548
while_body547:
  call void @llvm.stackrestore(i8* %1624)
  %1629 = load { i64, i8* }*, { i64, i8* }** %1622
  %1630 = load i64, i64* %1623
  %1631 = call i64 @nyx_array_get({ i64, i8* }* %1629, i64 %1630)
  %1632 = inttoptr i64 %1631 to { i64, i8* }*
  %1633 = alloca { i64, i8* }*
  store { i64, i8* }* %1632, { i64, i8* }** %1633
  %1634 = load { i64, i8* }*, { i64, i8* }** %1633
  %1635 = call i1 @ty_is_concrete({ i64, i8* }* %1634)
  %1636 = xor i1 %1635, true
  br i1 %1636, label %then549, label %else550
then549:
  ret i1 0
else550:
  br label %merge551
merge551:
  %1637 = load i64, i64* %1623
  %1638 = add i64 %1637, 1
  store i64 %1638, i64* %1623
  br label %while_cond546
while_end548:
  %1639 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1640 = call i64 @nyx_array_get({ i64, i8* }* %1639, i64 2)
  %1641 = inttoptr i64 %1640 to { i64, i8* }*
  %1642 = alloca { i64, i8* }*
  store { i64, i8* }* %1641, { i64, i8* }** %1642
  %1643 = load { i64, i8* }*, { i64, i8* }** %1642
  %1644 = call i1 @ty_is_concrete({ i64, i8* }* %1643)
  ret i1 %1644
else544:
  br label %merge545
merge545:
  %1645 = alloca i1
  store i1 true, i1* %1645
  %1646 = load %nyx_string*, %nyx_string** %1545
  %1647 = getelementptr [9 x i8], [9 x i8]* @.str188, i32 0, i32 0
  %1648 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str188.c, i8* %1647)
  %1649 = call i1 @nyx_string_equals(%nyx_string* %1646, %nyx_string* %1648)
  br i1 %1649, label %sc_or_end553, label %sc_or_rhs552
sc_or_rhs552:
  %1650 = load %nyx_string*, %nyx_string** %1545
  %1651 = getelementptr [7 x i8], [7 x i8]* @.str189, i32 0, i32 0
  %1652 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str189.c, i8* %1651)
  %1653 = call i1 @nyx_string_equals(%nyx_string* %1650, %nyx_string* %1652)
  store i1 %1653, i1* %1645
  br label %sc_or_end553
sc_or_end553:
  %1654 = load i1, i1* %1645
  br i1 %1654, label %then554, label %else555
then554:
  %1655 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1656 = call i64 @nyx_array_get({ i64, i8* }* %1655, i64 2)
  %1657 = inttoptr i64 %1656 to { i64, i8* }*
  %1658 = alloca { i64, i8* }*
  store { i64, i8* }* %1657, { i64, i8* }** %1658
  %1659 = alloca i64
  store i64 0, i64* %1659
  %1660 = call i8* @llvm.stacksave()
  br label %while_cond557
while_cond557:
  %1661 = load i64, i64* %1659
  %1662 = load { i64, i8* }*, { i64, i8* }** %1658
  %1663 = call i64 @nyx_array_length({ i64, i8* }* %1662)
  %1664 = icmp slt i64 %1661, %1663
  br i1 %1664, label %while_body558, label %while_end559
while_body558:
  call void @llvm.stackrestore(i8* %1660)
  %1665 = load { i64, i8* }*, { i64, i8* }** %1658
  %1666 = load i64, i64* %1659
  %1667 = call i64 @nyx_array_get({ i64, i8* }* %1665, i64 %1666)
  %1668 = inttoptr i64 %1667 to { i64, i8* }*
  %1669 = alloca { i64, i8* }*
  store { i64, i8* }* %1668, { i64, i8* }** %1669
  %1670 = load { i64, i8* }*, { i64, i8* }** %1669
  %1671 = call i1 @ty_is_concrete({ i64, i8* }* %1670)
  %1672 = xor i1 %1671, true
  br i1 %1672, label %then560, label %else561
then560:
  ret i1 0
else561:
  br label %merge562
merge562:
  %1673 = load i64, i64* %1659
  %1674 = add i64 %1673, 1
  store i64 %1674, i64* %1659
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
  %1675 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %1676 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1677 = call { i64, i8* }* @subst_resolve_deep({ i64, i8* }* %1675, { i64, i8* }* %1676)
  %1678 = alloca { i64, i8* }*
  store { i64, i8* }* %1677, { i64, i8* }** %1678
  %1679 = load { i64, i8* }*, { i64, i8* }** %1678
  %1680 = call i1 @ty_is_concrete({ i64, i8* }* %1679)
  %1681 = xor i1 %1680, true
  br i1 %1681, label %then563, label %else564
then563:
  %1682 = getelementptr [1 x i8], [1 x i8]* @.str190, i32 0, i32 0
  %1683 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str190.c, i8* %1682)
  ret %nyx_string* %1683
else564:
  br label %merge565
merge565:
  %1684 = load { i64, i8* }*, { i64, i8* }** %1678
  %1685 = call %nyx_string* @ty_to_str({ i64, i8* }* %1684)
  ret %nyx_string* %1685
}

define { i64, i8* }* @ty_of_binop(
%nyx_string* %op.param, { i64, i8* }* %lhs.param, { i64, i8* }* %rhs.param) {
  %op.ptr = alloca %nyx_string*
  store %nyx_string* %op.param, %nyx_string** %op.ptr
  %lhs.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %lhs.param, { i64, i8* }** %lhs.ptr
  %rhs.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %rhs.param, { i64, i8* }** %rhs.ptr
  %1686 = load { i64, i8* }*, { i64, i8* }** %lhs.ptr
  %1687 = call i1 @ty_is_unknown({ i64, i8* }* %1686)
  br i1 %1687, label %then566, label %else567
then566:
  %1688 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1688
else567:
  br label %merge568
merge568:
  %1689 = load { i64, i8* }*, { i64, i8* }** %rhs.ptr
  %1690 = call i1 @ty_is_unknown({ i64, i8* }* %1689)
  br i1 %1690, label %then569, label %else570
then569:
  %1691 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1691
else570:
  br label %merge571
merge571:
  %1692 = alloca i1
  store i1 true, i1* %1692
  %1693 = alloca i1
  store i1 true, i1* %1693
  %1694 = alloca i1
  store i1 true, i1* %1694
  %1695 = load %nyx_string*, %nyx_string** %op.ptr
  %1696 = getelementptr [8 x i8], [8 x i8]* @.str191, i32 0, i32 0
  %1697 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str191.c, i8* %1696)
  %1698 = call i1 @nyx_string_equals(%nyx_string* %1695, %nyx_string* %1697)
  br i1 %1698, label %sc_or_end573, label %sc_or_rhs572
sc_or_rhs572:
  %1699 = load %nyx_string*, %nyx_string** %op.ptr
  %1700 = getelementptr [6 x i8], [6 x i8]* @.str192, i32 0, i32 0
  %1701 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str192.c, i8* %1700)
  %1702 = call i1 @nyx_string_equals(%nyx_string* %1699, %nyx_string* %1701)
  store i1 %1702, i1* %1694
  br label %sc_or_end573
sc_or_end573:
  %1703 = load i1, i1* %1694
  br i1 %1703, label %sc_or_end575, label %sc_or_rhs574
sc_or_rhs574:
  %1704 = load %nyx_string*, %nyx_string** %op.ptr
  %1705 = getelementptr [4 x i8], [4 x i8]* @.str193, i32 0, i32 0
  %1706 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str193.c, i8* %1705)
  %1707 = call i1 @nyx_string_equals(%nyx_string* %1704, %nyx_string* %1706)
  store i1 %1707, i1* %1693
  br label %sc_or_end575
sc_or_end575:
  %1708 = load i1, i1* %1693
  br i1 %1708, label %sc_or_end577, label %sc_or_rhs576
sc_or_rhs576:
  %1709 = load %nyx_string*, %nyx_string** %op.ptr
  %1710 = getelementptr [3 x i8], [3 x i8]* @.str194, i32 0, i32 0
  %1711 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str194.c, i8* %1710)
  %1712 = call i1 @nyx_string_equals(%nyx_string* %1709, %nyx_string* %1711)
  store i1 %1712, i1* %1692
  br label %sc_or_end577
sc_or_end577:
  %1713 = load i1, i1* %1692
  br i1 %1713, label %then578, label %else579
then578:
  %1714 = load { i64, i8* }*, { i64, i8* }** %lhs.ptr
  %1715 = call %nyx_string* @ty_kind({ i64, i8* }* %1714)
  %1716 = alloca %nyx_string*
  store %nyx_string* %1715, %nyx_string** %1716
  %1717 = load { i64, i8* }*, { i64, i8* }** %rhs.ptr
  %1718 = call %nyx_string* @ty_kind({ i64, i8* }* %1717)
  %1719 = alloca %nyx_string*
  store %nyx_string* %1718, %nyx_string** %1719
  %1720 = load %nyx_string*, %nyx_string** %1716
  %1721 = getelementptr [7 x i8], [7 x i8]* @.str195, i32 0, i32 0
  %1722 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str195.c, i8* %1721)
  %1723 = call i1 @nyx_string_equals(%nyx_string* %1720, %nyx_string* %1722)
  br i1 %1723, label %then581, label %else582
then581:
  %1724 = load %nyx_string*, %nyx_string** %1719
  %1725 = getelementptr [7 x i8], [7 x i8]* @.str196, i32 0, i32 0
  %1726 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str196.c, i8* %1725)
  %1727 = call i1 @nyx_string_equals(%nyx_string* %1724, %nyx_string* %1726)
  br i1 %1727, label %then584, label %else585
then584:
  %1728 = call { i64, i8* }* @ty_bool()
  ret { i64, i8* }* %1728
else585:
  br label %merge586
merge586:
  br label %merge583
else582:
  br label %merge583
merge583:
  %1729 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1729
else579:
  br label %merge580
merge580:
  %1730 = alloca i1
  store i1 true, i1* %1730
  %1731 = alloca i1
  store i1 true, i1* %1731
  %1732 = alloca i1
  store i1 true, i1* %1732
  %1733 = alloca i1
  store i1 true, i1* %1733
  %1734 = alloca i1
  store i1 true, i1* %1734
  %1735 = load %nyx_string*, %nyx_string** %op.ptr
  %1736 = getelementptr [12 x i8], [12 x i8]* @.str197, i32 0, i32 0
  %1737 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str197.c, i8* %1736)
  %1738 = call i1 @nyx_string_equals(%nyx_string* %1735, %nyx_string* %1737)
  br i1 %1738, label %sc_or_end588, label %sc_or_rhs587
sc_or_rhs587:
  %1739 = load %nyx_string*, %nyx_string** %op.ptr
  %1740 = getelementptr [10 x i8], [10 x i8]* @.str198, i32 0, i32 0
  %1741 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str198.c, i8* %1740)
  %1742 = call i1 @nyx_string_equals(%nyx_string* %1739, %nyx_string* %1741)
  store i1 %1742, i1* %1734
  br label %sc_or_end588
sc_or_end588:
  %1743 = load i1, i1* %1734
  br i1 %1743, label %sc_or_end590, label %sc_or_rhs589
sc_or_rhs589:
  %1744 = load %nyx_string*, %nyx_string** %op.ptr
  %1745 = getelementptr [5 x i8], [5 x i8]* @.str199, i32 0, i32 0
  %1746 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str199.c, i8* %1745)
  %1747 = call i1 @nyx_string_equals(%nyx_string* %1744, %nyx_string* %1746)
  store i1 %1747, i1* %1733
  br label %sc_or_end590
sc_or_end590:
  %1748 = load i1, i1* %1733
  br i1 %1748, label %sc_or_end592, label %sc_or_rhs591
sc_or_rhs591:
  %1749 = load %nyx_string*, %nyx_string** %op.ptr
  %1750 = getelementptr [8 x i8], [8 x i8]* @.str200, i32 0, i32 0
  %1751 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str200.c, i8* %1750)
  %1752 = call i1 @nyx_string_equals(%nyx_string* %1749, %nyx_string* %1751)
  store i1 %1752, i1* %1732
  br label %sc_or_end592
sc_or_end592:
  %1753 = load i1, i1* %1732
  br i1 %1753, label %sc_or_end594, label %sc_or_rhs593
sc_or_rhs593:
  %1754 = load %nyx_string*, %nyx_string** %op.ptr
  %1755 = getelementptr [11 x i8], [11 x i8]* @.str201, i32 0, i32 0
  %1756 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str201.c, i8* %1755)
  %1757 = call i1 @nyx_string_equals(%nyx_string* %1754, %nyx_string* %1756)
  store i1 %1757, i1* %1731
  br label %sc_or_end594
sc_or_end594:
  %1758 = load i1, i1* %1731
  br i1 %1758, label %sc_or_end596, label %sc_or_rhs595
sc_or_rhs595:
  %1759 = load %nyx_string*, %nyx_string** %op.ptr
  %1760 = getelementptr [14 x i8], [14 x i8]* @.str202, i32 0, i32 0
  %1761 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str202.c, i8* %1760)
  %1762 = call i1 @nyx_string_equals(%nyx_string* %1759, %nyx_string* %1761)
  store i1 %1762, i1* %1730
  br label %sc_or_end596
sc_or_end596:
  %1763 = load i1, i1* %1730
  br i1 %1763, label %then597, label %else598
then597:
  %1764 = call { i64, i8* }* @ty_bool()
  ret { i64, i8* }* %1764
else598:
  br label %merge599
merge599:
  %1765 = alloca i1
  store i1 true, i1* %1765
  %1766 = alloca i1
  store i1 true, i1* %1766
  %1767 = alloca i1
  store i1 true, i1* %1767
  %1768 = alloca i1
  store i1 true, i1* %1768
  %1769 = load %nyx_string*, %nyx_string** %op.ptr
  %1770 = getelementptr [5 x i8], [5 x i8]* @.str203, i32 0, i32 0
  %1771 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str203.c, i8* %1770)
  %1772 = call i1 @nyx_string_equals(%nyx_string* %1769, %nyx_string* %1771)
  br i1 %1772, label %sc_or_end601, label %sc_or_rhs600
sc_or_rhs600:
  %1773 = load %nyx_string*, %nyx_string** %op.ptr
  %1774 = getelementptr [4 x i8], [4 x i8]* @.str204, i32 0, i32 0
  %1775 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str204.c, i8* %1774)
  %1776 = call i1 @nyx_string_equals(%nyx_string* %1773, %nyx_string* %1775)
  store i1 %1776, i1* %1768
  br label %sc_or_end601
sc_or_end601:
  %1777 = load i1, i1* %1768
  br i1 %1777, label %sc_or_end603, label %sc_or_rhs602
sc_or_rhs602:
  %1778 = load %nyx_string*, %nyx_string** %op.ptr
  %1779 = getelementptr [6 x i8], [6 x i8]* @.str205, i32 0, i32 0
  %1780 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str205.c, i8* %1779)
  %1781 = call i1 @nyx_string_equals(%nyx_string* %1778, %nyx_string* %1780)
  store i1 %1781, i1* %1767
  br label %sc_or_end603
sc_or_end603:
  %1782 = load i1, i1* %1767
  br i1 %1782, label %sc_or_end605, label %sc_or_rhs604
sc_or_rhs604:
  %1783 = load %nyx_string*, %nyx_string** %op.ptr
  %1784 = getelementptr [11 x i8], [11 x i8]* @.str206, i32 0, i32 0
  %1785 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str206.c, i8* %1784)
  %1786 = call i1 @nyx_string_equals(%nyx_string* %1783, %nyx_string* %1785)
  store i1 %1786, i1* %1766
  br label %sc_or_end605
sc_or_end605:
  %1787 = load i1, i1* %1766
  br i1 %1787, label %sc_or_end607, label %sc_or_rhs606
sc_or_rhs606:
  %1788 = load %nyx_string*, %nyx_string** %op.ptr
  %1789 = getelementptr [12 x i8], [12 x i8]* @.str207, i32 0, i32 0
  %1790 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str207.c, i8* %1789)
  %1791 = call i1 @nyx_string_equals(%nyx_string* %1788, %nyx_string* %1790)
  store i1 %1791, i1* %1765
  br label %sc_or_end607
sc_or_end607:
  %1792 = load i1, i1* %1765
  br i1 %1792, label %then608, label %else609
then608:
  %1793 = load { i64, i8* }*, { i64, i8* }** %lhs.ptr
  %1794 = call i1 @is_integer_like({ i64, i8* }* %1793)
  br i1 %1794, label %then611, label %else612
then611:
  %1795 = load { i64, i8* }*, { i64, i8* }** %rhs.ptr
  %1796 = call i1 @is_integer_like({ i64, i8* }* %1795)
  br i1 %1796, label %then614, label %else615
then614:
  %1797 = call { i64, i8* }* @ty_int()
  ret { i64, i8* }* %1797
else615:
  br label %merge616
merge616:
  br label %merge613
else612:
  br label %merge613
merge613:
  %1798 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1798
else609:
  br label %merge610
merge610:
  %1799 = load %nyx_string*, %nyx_string** %op.ptr
  %1800 = getelementptr [5 x i8], [5 x i8]* @.str208, i32 0, i32 0
  %1801 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str208.c, i8* %1800)
  %1802 = call i1 @nyx_string_equals(%nyx_string* %1799, %nyx_string* %1801)
  br i1 %1802, label %then617, label %else618
then617:
  %1803 = load { i64, i8* }*, { i64, i8* }** %lhs.ptr
  %1804 = call %nyx_string* @ty_kind({ i64, i8* }* %1803)
  %1805 = alloca %nyx_string*
  store %nyx_string* %1804, %nyx_string** %1805
  %1806 = load { i64, i8* }*, { i64, i8* }** %rhs.ptr
  %1807 = call %nyx_string* @ty_kind({ i64, i8* }* %1806)
  %1808 = alloca %nyx_string*
  store %nyx_string* %1807, %nyx_string** %1808
  %1809 = load %nyx_string*, %nyx_string** %1805
  %1810 = getelementptr [9 x i8], [9 x i8]* @.str209, i32 0, i32 0
  %1811 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str209.c, i8* %1810)
  %1812 = call i1 @nyx_string_equals(%nyx_string* %1809, %nyx_string* %1811)
  br i1 %1812, label %then620, label %else621
then620:
  %1813 = call { i64, i8* }* @ty_string()
  ret { i64, i8* }* %1813
else621:
  br label %merge622
merge622:
  %1814 = load %nyx_string*, %nyx_string** %1808
  %1815 = getelementptr [9 x i8], [9 x i8]* @.str210, i32 0, i32 0
  %1816 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str210.c, i8* %1815)
  %1817 = call i1 @nyx_string_equals(%nyx_string* %1814, %nyx_string* %1816)
  br i1 %1817, label %then623, label %else624
then623:
  %1818 = call { i64, i8* }* @ty_string()
  ret { i64, i8* }* %1818
else624:
  br label %merge625
merge625:
  br label %merge619
else618:
  br label %merge619
merge619:
  %1819 = alloca i1
  store i1 true, i1* %1819
  %1820 = alloca i1
  store i1 true, i1* %1820
  %1821 = alloca i1
  store i1 true, i1* %1821
  %1822 = alloca i1
  store i1 true, i1* %1822
  %1823 = alloca i1
  store i1 true, i1* %1823
  %1824 = load %nyx_string*, %nyx_string** %op.ptr
  %1825 = getelementptr [5 x i8], [5 x i8]* @.str211, i32 0, i32 0
  %1826 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str211.c, i8* %1825)
  %1827 = call i1 @nyx_string_equals(%nyx_string* %1824, %nyx_string* %1826)
  br i1 %1827, label %sc_or_end627, label %sc_or_rhs626
sc_or_rhs626:
  %1828 = load %nyx_string*, %nyx_string** %op.ptr
  %1829 = getelementptr [6 x i8], [6 x i8]* @.str212, i32 0, i32 0
  %1830 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str212.c, i8* %1829)
  %1831 = call i1 @nyx_string_equals(%nyx_string* %1828, %nyx_string* %1830)
  store i1 %1831, i1* %1823
  br label %sc_or_end627
sc_or_end627:
  %1832 = load i1, i1* %1823
  br i1 %1832, label %sc_or_end629, label %sc_or_rhs628
sc_or_rhs628:
  %1833 = load %nyx_string*, %nyx_string** %op.ptr
  %1834 = getelementptr [5 x i8], [5 x i8]* @.str213, i32 0, i32 0
  %1835 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str213.c, i8* %1834)
  %1836 = call i1 @nyx_string_equals(%nyx_string* %1833, %nyx_string* %1835)
  store i1 %1836, i1* %1822
  br label %sc_or_end629
sc_or_end629:
  %1837 = load i1, i1* %1822
  br i1 %1837, label %sc_or_end631, label %sc_or_rhs630
sc_or_rhs630:
  %1838 = load %nyx_string*, %nyx_string** %op.ptr
  %1839 = getelementptr [6 x i8], [6 x i8]* @.str214, i32 0, i32 0
  %1840 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str214.c, i8* %1839)
  %1841 = call i1 @nyx_string_equals(%nyx_string* %1838, %nyx_string* %1840)
  store i1 %1841, i1* %1821
  br label %sc_or_end631
sc_or_end631:
  %1842 = load i1, i1* %1821
  br i1 %1842, label %sc_or_end633, label %sc_or_rhs632
sc_or_rhs632:
  %1843 = load %nyx_string*, %nyx_string** %op.ptr
  %1844 = getelementptr [8 x i8], [8 x i8]* @.str215, i32 0, i32 0
  %1845 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str215.c, i8* %1844)
  %1846 = call i1 @nyx_string_equals(%nyx_string* %1843, %nyx_string* %1845)
  store i1 %1846, i1* %1820
  br label %sc_or_end633
sc_or_end633:
  %1847 = load i1, i1* %1820
  br i1 %1847, label %sc_or_end635, label %sc_or_rhs634
sc_or_rhs634:
  %1848 = load %nyx_string*, %nyx_string** %op.ptr
  %1849 = getelementptr [6 x i8], [6 x i8]* @.str216, i32 0, i32 0
  %1850 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str216.c, i8* %1849)
  %1851 = call i1 @nyx_string_equals(%nyx_string* %1848, %nyx_string* %1850)
  store i1 %1851, i1* %1819
  br label %sc_or_end635
sc_or_end635:
  %1852 = load i1, i1* %1819
  br i1 %1852, label %then636, label %else637
then636:
  %1853 = load { i64, i8* }*, { i64, i8* }** %lhs.ptr
  %1854 = call i1 @is_numeric_ty({ i64, i8* }* %1853)
  br i1 %1854, label %then639, label %else640
then639:
  %1855 = load { i64, i8* }*, { i64, i8* }** %rhs.ptr
  %1856 = call i1 @is_numeric_ty({ i64, i8* }* %1855)
  br i1 %1856, label %then642, label %else643
then642:
  %1857 = load { i64, i8* }*, { i64, i8* }** %lhs.ptr
  %1858 = call i1 @is_float_like({ i64, i8* }* %1857)
  br i1 %1858, label %then645, label %else646
then645:
  %1859 = call { i64, i8* }* @ty_float()
  ret { i64, i8* }* %1859
else646:
  br label %merge647
merge647:
  %1860 = load { i64, i8* }*, { i64, i8* }** %rhs.ptr
  %1861 = call i1 @is_float_like({ i64, i8* }* %1860)
  br i1 %1861, label %then648, label %else649
then648:
  %1862 = call { i64, i8* }* @ty_float()
  ret { i64, i8* }* %1862
else649:
  br label %merge650
merge650:
  %1863 = call { i64, i8* }* @ty_int()
  ret { i64, i8* }* %1863
else643:
  br label %merge644
merge644:
  br label %merge641
else640:
  br label %merge641
merge641:
  %1864 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1864
else637:
  br label %merge638
merge638:
  %1865 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1865
}

define internal i1 @is_in_param_names(
%nyx_string* %name.param, { i64, i8* }* %names.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %names.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %names.param, { i64, i8* }** %names.ptr
  %1866 = alloca i64
  store i64 0, i64* %1866
  %1867 = call i8* @llvm.stacksave()
  br label %while_cond651
while_cond651:
  %1868 = load i64, i64* %1866
  %1869 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %1870 = call i64 @nyx_array_length({ i64, i8* }* %1869)
  %1871 = icmp slt i64 %1868, %1870
  br i1 %1871, label %while_body652, label %while_end653
while_body652:
  call void @llvm.stackrestore(i8* %1867)
  %1872 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %1873 = load i64, i64* %1866
  %1874 = call i64 @nyx_array_get_checked({ i64, i8* }* %1872, i64 %1873, i64 2)
  %1875 = inttoptr i64 %1874 to %nyx_string*
  %1876 = alloca %nyx_string*
  store %nyx_string* %1875, %nyx_string** %1876
  %1877 = load %nyx_string*, %nyx_string** %1876
  %1878 = load %nyx_string*, %nyx_string** %name.ptr
  %1879 = call i1 @nyx_string_equals(%nyx_string* %1877, %nyx_string* %1878)
  br i1 %1879, label %then654, label %else655
then654:
  ret i1 1
else655:
  br label %merge656
merge656:
  %1880 = load i64, i64* %1866
  %1881 = add i64 %1880, 1
  store i64 %1881, i64* %1866
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
  %1882 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1883 = call %nyx_string* @ty_kind({ i64, i8* }* %1882)
  %1884 = alloca %nyx_string*
  store %nyx_string* %1883, %nyx_string** %1884
  %1885 = load %nyx_string*, %nyx_string** %1884
  %1886 = getelementptr [10 x i8], [10 x i8]* @.str217, i32 0, i32 0
  %1887 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str217.c, i8* %1886)
  %1888 = call i1 @nyx_string_equals(%nyx_string* %1885, %nyx_string* %1887)
  br i1 %1888, label %then657, label %else658
then657:
  %1889 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1890 = call i64 @nyx_array_get_checked({ i64, i8* }* %1889, i64 1, i64 2)
  %1891 = inttoptr i64 %1890 to %nyx_string*
  %1892 = alloca %nyx_string*
  store %nyx_string* %1891, %nyx_string** %1892
  %1893 = alloca i64
  store i64 0, i64* %1893
  %1894 = call i8* @llvm.stacksave()
  br label %while_cond660
while_cond660:
  %1895 = load i64, i64* %1893
  %1896 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %1897 = call i64 @nyx_array_length({ i64, i8* }* %1896)
  %1898 = icmp slt i64 %1895, %1897
  br i1 %1898, label %while_body661, label %while_end662
while_body661:
  call void @llvm.stackrestore(i8* %1894)
  %1899 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %1900 = load i64, i64* %1893
  %1901 = call i64 @nyx_array_get_checked({ i64, i8* }* %1899, i64 %1900, i64 2)
  %1902 = inttoptr i64 %1901 to %nyx_string*
  %1903 = alloca %nyx_string*
  store %nyx_string* %1902, %nyx_string** %1903
  %1904 = load %nyx_string*, %nyx_string** %1903
  %1905 = load %nyx_string*, %nyx_string** %1892
  %1906 = call i1 @nyx_string_equals(%nyx_string* %1904, %nyx_string* %1905)
  br i1 %1906, label %then663, label %else664
then663:
  %1907 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %1908 = load i64, i64* %1893
  %1909 = call i64 @nyx_array_get({ i64, i8* }* %1907, i64 %1908)
  %1910 = inttoptr i64 %1909 to { i64, i8* }*
  %1911 = alloca { i64, i8* }*
  store { i64, i8* }* %1910, { i64, i8* }** %1911
  %1912 = load { i64, i8* }*, { i64, i8* }** %1911
  ret { i64, i8* }* %1912
else664:
  br label %merge665
merge665:
  %1913 = load i64, i64* %1893
  %1914 = add i64 %1913, 1
  store i64 %1914, i64* %1893
  br label %while_cond660
while_end662:
  %1915 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  ret { i64, i8* }* %1915
else658:
  br label %merge659
merge659:
  %1916 = load %nyx_string*, %nyx_string** %1884
  %1917 = getelementptr [8 x i8], [8 x i8]* @.str218, i32 0, i32 0
  %1918 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str218.c, i8* %1917)
  %1919 = call i1 @nyx_string_equals(%nyx_string* %1916, %nyx_string* %1918)
  br i1 %1919, label %then666, label %else667
then666:
  %1920 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1921 = call i64 @nyx_array_get({ i64, i8* }* %1920, i64 1)
  %1922 = inttoptr i64 %1921 to { i64, i8* }*
  %1923 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %1924 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %1925 = call { i64, i8* }* @subst_apply({ i64, i8* }* %1922, { i64, i8* }* %1923, { i64, i8* }* %1924)
  %1926 = call { i64, i8* }* @ty_array({ i64, i8* }* %1925)
  ret { i64, i8* }* %1926
else667:
  br label %merge668
merge668:
  %1927 = load %nyx_string*, %nyx_string** %1884
  %1928 = getelementptr [9 x i8], [9 x i8]* @.str219, i32 0, i32 0
  %1929 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str219.c, i8* %1928)
  %1930 = call i1 @nyx_string_equals(%nyx_string* %1927, %nyx_string* %1929)
  br i1 %1930, label %then669, label %else670
then669:
  %1931 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1932 = call i64 @nyx_array_get({ i64, i8* }* %1931, i64 1)
  %1933 = inttoptr i64 %1932 to { i64, i8* }*
  %1934 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %1935 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %1936 = call { i64, i8* }* @subst_apply({ i64, i8* }* %1933, { i64, i8* }* %1934, { i64, i8* }* %1935)
  %1937 = call { i64, i8* }* @ty_option({ i64, i8* }* %1936)
  ret { i64, i8* }* %1937
else670:
  br label %merge671
merge671:
  %1938 = load %nyx_string*, %nyx_string** %1884
  %1939 = getelementptr [6 x i8], [6 x i8]* @.str220, i32 0, i32 0
  %1940 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str220.c, i8* %1939)
  %1941 = call i1 @nyx_string_equals(%nyx_string* %1938, %nyx_string* %1940)
  br i1 %1941, label %then672, label %else673
then672:
  %1942 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1943 = call i64 @nyx_array_get({ i64, i8* }* %1942, i64 1)
  %1944 = inttoptr i64 %1943 to { i64, i8* }*
  %1945 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %1946 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %1947 = call { i64, i8* }* @subst_apply({ i64, i8* }* %1944, { i64, i8* }* %1945, { i64, i8* }* %1946)
  %1948 = call { i64, i8* }* @ty_ptr({ i64, i8* }* %1947)
  ret { i64, i8* }* %1948
else673:
  br label %merge674
merge674:
  %1949 = load %nyx_string*, %nyx_string** %1884
  %1950 = getelementptr [6 x i8], [6 x i8]* @.str221, i32 0, i32 0
  %1951 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str221.c, i8* %1950)
  %1952 = call i1 @nyx_string_equals(%nyx_string* %1949, %nyx_string* %1951)
  br i1 %1952, label %then675, label %else676
then675:
  %1953 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1954 = call i64 @nyx_array_get({ i64, i8* }* %1953, i64 1)
  %1955 = inttoptr i64 %1954 to { i64, i8* }*
  %1956 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %1957 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %1958 = call { i64, i8* }* @subst_apply({ i64, i8* }* %1955, { i64, i8* }* %1956, { i64, i8* }* %1957)
  %1959 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1960 = call %nyx_string* @ty_ref_region({ i64, i8* }* %1959)
  %1961 = call { i64, i8* }* @ty_ref_r({ i64, i8* }* %1958, %nyx_string* %1960)
  ret { i64, i8* }* %1961
else676:
  br label %merge677
merge677:
  %1962 = load %nyx_string*, %nyx_string** %1884
  %1963 = getelementptr [9 x i8], [9 x i8]* @.str222, i32 0, i32 0
  %1964 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str222.c, i8* %1963)
  %1965 = call i1 @nyx_string_equals(%nyx_string* %1962, %nyx_string* %1964)
  br i1 %1965, label %then678, label %else679
then678:
  %1966 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1967 = call i64 @nyx_array_get({ i64, i8* }* %1966, i64 1)
  %1968 = inttoptr i64 %1967 to { i64, i8* }*
  %1969 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %1970 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %1971 = call { i64, i8* }* @subst_apply({ i64, i8* }* %1968, { i64, i8* }* %1969, { i64, i8* }* %1970)
  %1972 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1973 = call %nyx_string* @ty_ref_region({ i64, i8* }* %1972)
  %1974 = call { i64, i8* }* @ty_ref_mut_r({ i64, i8* }* %1971, %nyx_string* %1973)
  ret { i64, i8* }* %1974
else679:
  br label %merge680
merge680:
  %1975 = load %nyx_string*, %nyx_string** %1884
  %1976 = getelementptr [9 x i8], [9 x i8]* @.str223, i32 0, i32 0
  %1977 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str223.c, i8* %1976)
  %1978 = call i1 @nyx_string_equals(%nyx_string* %1975, %nyx_string* %1977)
  br i1 %1978, label %then681, label %else682
then681:
  %1979 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1980 = call i64 @nyx_array_get({ i64, i8* }* %1979, i64 1)
  %1981 = inttoptr i64 %1980 to { i64, i8* }*
  %1982 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %1983 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %1984 = call { i64, i8* }* @subst_apply({ i64, i8* }* %1981, { i64, i8* }* %1982, { i64, i8* }* %1983)
  %1985 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1986 = call i64 @nyx_array_get({ i64, i8* }* %1985, i64 2)
  %1987 = inttoptr i64 %1986 to { i64, i8* }*
  %1988 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %1989 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %1990 = call { i64, i8* }* @subst_apply({ i64, i8* }* %1987, { i64, i8* }* %1988, { i64, i8* }* %1989)
  %1991 = call { i64, i8* }* @ty_result({ i64, i8* }* %1984, { i64, i8* }* %1990)
  ret { i64, i8* }* %1991
else682:
  br label %merge683
merge683:
  %1992 = load %nyx_string*, %nyx_string** %1884
  %1993 = getelementptr [6 x i8], [6 x i8]* @.str224, i32 0, i32 0
  %1994 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str224.c, i8* %1993)
  %1995 = call i1 @nyx_string_equals(%nyx_string* %1992, %nyx_string* %1994)
  br i1 %1995, label %then684, label %else685
then684:
  %1996 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1997 = call i64 @nyx_array_get({ i64, i8* }* %1996, i64 1)
  %1998 = inttoptr i64 %1997 to { i64, i8* }*
  %1999 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %2000 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %2001 = call { i64, i8* }* @subst_apply({ i64, i8* }* %1998, { i64, i8* }* %1999, { i64, i8* }* %2000)
  %2002 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %2003 = call i64 @nyx_array_get({ i64, i8* }* %2002, i64 2)
  %2004 = inttoptr i64 %2003 to { i64, i8* }*
  %2005 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %2006 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %2007 = call { i64, i8* }* @subst_apply({ i64, i8* }* %2004, { i64, i8* }* %2005, { i64, i8* }* %2006)
  %2008 = call { i64, i8* }* @ty_map({ i64, i8* }* %2001, { i64, i8* }* %2007)
  ret { i64, i8* }* %2008
else685:
  br label %merge686
merge686:
  %2009 = load %nyx_string*, %nyx_string** %1884
  %2010 = getelementptr [5 x i8], [5 x i8]* @.str225, i32 0, i32 0
  %2011 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str225.c, i8* %2010)
  %2012 = call i1 @nyx_string_equals(%nyx_string* %2009, %nyx_string* %2011)
  br i1 %2012, label %then687, label %else688
then687:
  %2013 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %2014 = call i64 @nyx_array_get({ i64, i8* }* %2013, i64 1)
  %2015 = inttoptr i64 %2014 to { i64, i8* }*
  %2016 = alloca { i64, i8* }*
  store { i64, i8* }* %2015, { i64, i8* }** %2016
  %2017 = call { i64, i8* }* @nyx_array_new_ptr()
  %2018 = alloca { i64, i8* }*
  store { i64, i8* }* %2017, { i64, i8* }** %2018
  %2019 = alloca i64
  store i64 0, i64* %2019
  %2020 = call i8* @llvm.stacksave()
  br label %while_cond690
while_cond690:
  %2021 = load i64, i64* %2019
  %2022 = load { i64, i8* }*, { i64, i8* }** %2016
  %2023 = call i64 @nyx_array_length({ i64, i8* }* %2022)
  %2024 = icmp slt i64 %2021, %2023
  br i1 %2024, label %while_body691, label %while_end692
while_body691:
  call void @llvm.stackrestore(i8* %2020)
  %2025 = load { i64, i8* }*, { i64, i8* }** %2016
  %2026 = load i64, i64* %2019
  %2027 = call i64 @nyx_array_get({ i64, i8* }* %2025, i64 %2026)
  %2028 = inttoptr i64 %2027 to { i64, i8* }*
  %2029 = alloca { i64, i8* }*
  store { i64, i8* }* %2028, { i64, i8* }** %2029
  %2030 = load { i64, i8* }*, { i64, i8* }** %2018
  %2031 = load { i64, i8* }*, { i64, i8* }** %2029
  %2032 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %2033 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %2034 = call { i64, i8* }* @subst_apply({ i64, i8* }* %2031, { i64, i8* }* %2032, { i64, i8* }* %2033)
  %2035 = ptrtoint { i64, i8* }* %2034 to i64
  call void @nyx_array_push({ i64, i8* }* %2030, i64 %2035)
  %2036 = load i64, i64* %2019
  %2037 = add i64 %2036, 1
  store i64 %2037, i64* %2019
  br label %while_cond690
while_end692:
  %2038 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %2039 = call i64 @nyx_array_get({ i64, i8* }* %2038, i64 2)
  %2040 = inttoptr i64 %2039 to { i64, i8* }*
  %2041 = alloca { i64, i8* }*
  store { i64, i8* }* %2040, { i64, i8* }** %2041
  %2042 = load { i64, i8* }*, { i64, i8* }** %2018
  %2043 = load { i64, i8* }*, { i64, i8* }** %2041
  %2044 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %2045 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %2046 = call { i64, i8* }* @subst_apply({ i64, i8* }* %2043, { i64, i8* }* %2044, { i64, i8* }* %2045)
  %2047 = call { i64, i8* }* @ty_fn({ i64, i8* }* %2042, { i64, i8* }* %2046)
  ret { i64, i8* }* %2047
else688:
  br label %merge689
merge689:
  %2048 = load %nyx_string*, %nyx_string** %1884
  %2049 = getelementptr [9 x i8], [9 x i8]* @.str226, i32 0, i32 0
  %2050 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str226.c, i8* %2049)
  %2051 = call i1 @nyx_string_equals(%nyx_string* %2048, %nyx_string* %2050)
  br i1 %2051, label %then693, label %else694
then693:
  %2052 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %2053 = call i64 @nyx_array_get_checked({ i64, i8* }* %2052, i64 1, i64 2)
  %2054 = inttoptr i64 %2053 to %nyx_string*
  %2055 = alloca %nyx_string*
  store %nyx_string* %2054, %nyx_string** %2055
  %2056 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %2057 = call i64 @nyx_array_get({ i64, i8* }* %2056, i64 2)
  %2058 = inttoptr i64 %2057 to { i64, i8* }*
  %2059 = alloca { i64, i8* }*
  store { i64, i8* }* %2058, { i64, i8* }** %2059
  %2060 = call { i64, i8* }* @nyx_array_new_ptr()
  %2061 = alloca { i64, i8* }*
  store { i64, i8* }* %2060, { i64, i8* }** %2061
  %2062 = alloca i64
  store i64 0, i64* %2062
  %2063 = call i8* @llvm.stacksave()
  br label %while_cond696
while_cond696:
  %2064 = load i64, i64* %2062
  %2065 = load { i64, i8* }*, { i64, i8* }** %2059
  %2066 = call i64 @nyx_array_length({ i64, i8* }* %2065)
  %2067 = icmp slt i64 %2064, %2066
  br i1 %2067, label %while_body697, label %while_end698
while_body697:
  call void @llvm.stackrestore(i8* %2063)
  %2068 = load { i64, i8* }*, { i64, i8* }** %2059
  %2069 = load i64, i64* %2062
  %2070 = call i64 @nyx_array_get({ i64, i8* }* %2068, i64 %2069)
  %2071 = inttoptr i64 %2070 to { i64, i8* }*
  %2072 = alloca { i64, i8* }*
  store { i64, i8* }* %2071, { i64, i8* }** %2072
  %2073 = load { i64, i8* }*, { i64, i8* }** %2061
  %2074 = load { i64, i8* }*, { i64, i8* }** %2072
  %2075 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %2076 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %2077 = call { i64, i8* }* @subst_apply({ i64, i8* }* %2074, { i64, i8* }* %2075, { i64, i8* }* %2076)
  %2078 = ptrtoint { i64, i8* }* %2077 to i64
  call void @nyx_array_push({ i64, i8* }* %2073, i64 %2078)
  %2079 = load i64, i64* %2062
  %2080 = add i64 %2079, 1
  store i64 %2080, i64* %2062
  br label %while_cond696
while_end698:
  %2081 = load %nyx_string*, %nyx_string** %2055
  %2082 = load { i64, i8* }*, { i64, i8* }** %2061
  %2083 = call { i64, i8* }* @ty_struct_ty(%nyx_string* %2081, { i64, i8* }* %2082)
  ret { i64, i8* }* %2083
else694:
  br label %merge695
merge695:
  %2084 = load %nyx_string*, %nyx_string** %1884
  %2085 = getelementptr [7 x i8], [7 x i8]* @.str227, i32 0, i32 0
  %2086 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str227.c, i8* %2085)
  %2087 = call i1 @nyx_string_equals(%nyx_string* %2084, %nyx_string* %2086)
  br i1 %2087, label %then699, label %else700
then699:
  %2088 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %2089 = call i64 @nyx_array_get_checked({ i64, i8* }* %2088, i64 1, i64 2)
  %2090 = inttoptr i64 %2089 to %nyx_string*
  %2091 = alloca %nyx_string*
  store %nyx_string* %2090, %nyx_string** %2091
  %2092 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %2093 = call i64 @nyx_array_get({ i64, i8* }* %2092, i64 2)
  %2094 = inttoptr i64 %2093 to { i64, i8* }*
  %2095 = alloca { i64, i8* }*
  store { i64, i8* }* %2094, { i64, i8* }** %2095
  %2096 = call { i64, i8* }* @nyx_array_new_ptr()
  %2097 = alloca { i64, i8* }*
  store { i64, i8* }* %2096, { i64, i8* }** %2097
  %2098 = alloca i64
  store i64 0, i64* %2098
  %2099 = call i8* @llvm.stacksave()
  br label %while_cond702
while_cond702:
  %2100 = load i64, i64* %2098
  %2101 = load { i64, i8* }*, { i64, i8* }** %2095
  %2102 = call i64 @nyx_array_length({ i64, i8* }* %2101)
  %2103 = icmp slt i64 %2100, %2102
  br i1 %2103, label %while_body703, label %while_end704
while_body703:
  call void @llvm.stackrestore(i8* %2099)
  %2104 = load { i64, i8* }*, { i64, i8* }** %2095
  %2105 = load i64, i64* %2098
  %2106 = call i64 @nyx_array_get({ i64, i8* }* %2104, i64 %2105)
  %2107 = inttoptr i64 %2106 to { i64, i8* }*
  %2108 = alloca { i64, i8* }*
  store { i64, i8* }* %2107, { i64, i8* }** %2108
  %2109 = load { i64, i8* }*, { i64, i8* }** %2097
  %2110 = load { i64, i8* }*, { i64, i8* }** %2108
  %2111 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %2112 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %2113 = call { i64, i8* }* @subst_apply({ i64, i8* }* %2110, { i64, i8* }* %2111, { i64, i8* }* %2112)
  %2114 = ptrtoint { i64, i8* }* %2113 to i64
  call void @nyx_array_push({ i64, i8* }* %2109, i64 %2114)
  %2115 = load i64, i64* %2098
  %2116 = add i64 %2115, 1
  store i64 %2116, i64* %2098
  br label %while_cond702
while_end704:
  %2117 = load %nyx_string*, %nyx_string** %2091
  %2118 = load { i64, i8* }*, { i64, i8* }** %2097
  %2119 = call { i64, i8* }* @ty_enum_ty(%nyx_string* %2117, { i64, i8* }* %2118)
  ret { i64, i8* }* %2119
else700:
  br label %merge701
merge701:
  %2120 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  ret { i64, i8* }* %2120
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
  %2121 = load { i64, i8* }*, { i64, i8* }** %param_ty.ptr
  %2122 = call %nyx_string* @ty_kind({ i64, i8* }* %2121)
  %2123 = alloca %nyx_string*
  store %nyx_string* %2122, %nyx_string** %2123
  %2124 = load { i64, i8* }*, { i64, i8* }** %arg_ty.ptr
  %2125 = call %nyx_string* @ty_kind({ i64, i8* }* %2124)
  %2126 = alloca %nyx_string*
  store %nyx_string* %2125, %nyx_string** %2126
  %2127 = load %nyx_string*, %nyx_string** %2126
  %2128 = getelementptr [10 x i8], [10 x i8]* @.str228, i32 0, i32 0
  %2129 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str228.c, i8* %2128)
  %2130 = call i1 @nyx_string_equals(%nyx_string* %2127, %nyx_string* %2129)
  br i1 %2130, label %then705, label %else706
then705:
  ret i1 1
else706:
  br label %merge707
merge707:
  %2131 = load %nyx_string*, %nyx_string** %2123
  %2132 = getelementptr [10 x i8], [10 x i8]* @.str229, i32 0, i32 0
  %2133 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str229.c, i8* %2132)
  %2134 = call i1 @nyx_string_equals(%nyx_string* %2131, %nyx_string* %2133)
  br i1 %2134, label %then708, label %else709
then708:
  ret i1 1
else709:
  br label %merge710
merge710:
  %2135 = load %nyx_string*, %nyx_string** %2126
  %2136 = getelementptr [6 x i8], [6 x i8]* @.str230, i32 0, i32 0
  %2137 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str230.c, i8* %2136)
  %2138 = call i1 @nyx_string_equals(%nyx_string* %2135, %nyx_string* %2137)
  br i1 %2138, label %then711, label %else712
then711:
  ret i1 1
else712:
  br label %merge713
merge713:
  %2139 = load %nyx_string*, %nyx_string** %2123
  %2140 = getelementptr [6 x i8], [6 x i8]* @.str231, i32 0, i32 0
  %2141 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str231.c, i8* %2140)
  %2142 = call i1 @nyx_string_equals(%nyx_string* %2139, %nyx_string* %2141)
  br i1 %2142, label %then714, label %else715
then714:
  ret i1 1
else715:
  br label %merge716
merge716:
  %2143 = load %nyx_string*, %nyx_string** %2123
  %2144 = getelementptr [10 x i8], [10 x i8]* @.str232, i32 0, i32 0
  %2145 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str232.c, i8* %2144)
  %2146 = call i1 @nyx_string_equals(%nyx_string* %2143, %nyx_string* %2145)
  br i1 %2146, label %then717, label %else718
then717:
  %2147 = load { i64, i8* }*, { i64, i8* }** %param_ty.ptr
  %2148 = call i64 @nyx_array_get_checked({ i64, i8* }* %2147, i64 1, i64 2)
  %2149 = inttoptr i64 %2148 to %nyx_string*
  %2150 = alloca %nyx_string*
  store %nyx_string* %2149, %nyx_string** %2150
  %2151 = load %nyx_string*, %nyx_string** %2150
  %2152 = load { i64, i8* }*, { i64, i8* }** %type_param_names.ptr
  %2153 = call i1 @is_in_param_names(%nyx_string* %2151, { i64, i8* }* %2152)
  br i1 %2153, label %then720, label %else721
then720:
  %2154 = alloca i64
  store i64 0, i64* %2154
  %2155 = call i8* @llvm.stacksave()
  br label %while_cond723
while_cond723:
  %2156 = load i64, i64* %2154
  %2157 = load { i64, i8* }*, { i64, i8* }** %names_out.ptr
  %2158 = call i64 @nyx_array_length({ i64, i8* }* %2157)
  %2159 = icmp slt i64 %2156, %2158
  br i1 %2159, label %while_body724, label %while_end725
while_body724:
  call void @llvm.stackrestore(i8* %2155)
  %2160 = load { i64, i8* }*, { i64, i8* }** %names_out.ptr
  %2161 = load i64, i64* %2154
  %2162 = call i64 @nyx_array_get_checked({ i64, i8* }* %2160, i64 %2161, i64 2)
  %2163 = inttoptr i64 %2162 to %nyx_string*
  %2164 = alloca %nyx_string*
  store %nyx_string* %2163, %nyx_string** %2164
  %2165 = load %nyx_string*, %nyx_string** %2164
  %2166 = load %nyx_string*, %nyx_string** %2150
  %2167 = call i1 @nyx_string_equals(%nyx_string* %2165, %nyx_string* %2166)
  br i1 %2167, label %then726, label %else727
then726:
  %2168 = load { i64, i8* }*, { i64, i8* }** %types_out.ptr
  %2169 = load i64, i64* %2154
  %2170 = call i64 @nyx_array_get({ i64, i8* }* %2168, i64 %2169)
  %2171 = inttoptr i64 %2170 to { i64, i8* }*
  %2172 = alloca { i64, i8* }*
  store { i64, i8* }* %2171, { i64, i8* }** %2172
  %2173 = load { i64, i8* }*, { i64, i8* }** %2172
  %2174 = load { i64, i8* }*, { i64, i8* }** %arg_ty.ptr
  %2175 = call i1 @ty_eq({ i64, i8* }* %2173, { i64, i8* }* %2174)
  ret i1 %2175
else727:
  br label %merge728
merge728:
  %2176 = load i64, i64* %2154
  %2177 = add i64 %2176, 1
  store i64 %2177, i64* %2154
  br label %while_cond723
while_end725:
  %2178 = load { i64, i8* }*, { i64, i8* }** %names_out.ptr
  %2179 = load %nyx_string*, %nyx_string** %2150
  %2180 = ptrtoint %nyx_string* %2179 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2178, i64 %2180, i64 2)
  %2181 = load { i64, i8* }*, { i64, i8* }** %types_out.ptr
  %2182 = load { i64, i8* }*, { i64, i8* }** %arg_ty.ptr
  %2183 = ptrtoint { i64, i8* }* %2182 to i64
  call void @nyx_array_push({ i64, i8* }* %2181, i64 %2183)
  ret i1 1
else721:
  br label %merge722
merge722:
  ret i1 1
else718:
  br label %merge719
merge719:
  %2184 = load %nyx_string*, %nyx_string** %2126
  %2185 = getelementptr [10 x i8], [10 x i8]* @.str233, i32 0, i32 0
  %2186 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str233.c, i8* %2185)
  %2187 = call i1 @nyx_string_equals(%nyx_string* %2184, %nyx_string* %2186)
  br i1 %2187, label %then729, label %else730
then729:
  ret i1 1
else730:
  br label %merge731
merge731:
  %2188 = load %nyx_string*, %nyx_string** %2123
  %2189 = load %nyx_string*, %nyx_string** %2126
  %2190 = call i1 @nyx_string_equals(%nyx_string* %2188, %nyx_string* %2189)
  br i1 %2190, label %then732, label %else733
then732:
  %2191 = alloca i1
  store i1 true, i1* %2191
  %2192 = alloca i1
  store i1 true, i1* %2192
  %2193 = alloca i1
  store i1 true, i1* %2193
  %2194 = alloca i1
  store i1 true, i1* %2194
  %2195 = load %nyx_string*, %nyx_string** %2123
  %2196 = getelementptr [8 x i8], [8 x i8]* @.str234, i32 0, i32 0
  %2197 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str234.c, i8* %2196)
  %2198 = call i1 @nyx_string_equals(%nyx_string* %2195, %nyx_string* %2197)
  br i1 %2198, label %sc_or_end736, label %sc_or_rhs735
sc_or_rhs735:
  %2199 = load %nyx_string*, %nyx_string** %2123
  %2200 = getelementptr [9 x i8], [9 x i8]* @.str235, i32 0, i32 0
  %2201 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str235.c, i8* %2200)
  %2202 = call i1 @nyx_string_equals(%nyx_string* %2199, %nyx_string* %2201)
  store i1 %2202, i1* %2194
  br label %sc_or_end736
sc_or_end736:
  %2203 = load i1, i1* %2194
  br i1 %2203, label %sc_or_end738, label %sc_or_rhs737
sc_or_rhs737:
  %2204 = load %nyx_string*, %nyx_string** %2123
  %2205 = getelementptr [6 x i8], [6 x i8]* @.str236, i32 0, i32 0
  %2206 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str236.c, i8* %2205)
  %2207 = call i1 @nyx_string_equals(%nyx_string* %2204, %nyx_string* %2206)
  store i1 %2207, i1* %2193
  br label %sc_or_end738
sc_or_end738:
  %2208 = load i1, i1* %2193
  br i1 %2208, label %sc_or_end740, label %sc_or_rhs739
sc_or_rhs739:
  %2209 = load %nyx_string*, %nyx_string** %2123
  %2210 = getelementptr [6 x i8], [6 x i8]* @.str237, i32 0, i32 0
  %2211 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str237.c, i8* %2210)
  %2212 = call i1 @nyx_string_equals(%nyx_string* %2209, %nyx_string* %2211)
  store i1 %2212, i1* %2192
  br label %sc_or_end740
sc_or_end740:
  %2213 = load i1, i1* %2192
  br i1 %2213, label %sc_or_end742, label %sc_or_rhs741
sc_or_rhs741:
  %2214 = load %nyx_string*, %nyx_string** %2123
  %2215 = getelementptr [9 x i8], [9 x i8]* @.str238, i32 0, i32 0
  %2216 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str238.c, i8* %2215)
  %2217 = call i1 @nyx_string_equals(%nyx_string* %2214, %nyx_string* %2216)
  store i1 %2217, i1* %2191
  br label %sc_or_end742
sc_or_end742:
  %2218 = load i1, i1* %2191
  br i1 %2218, label %then743, label %else744
then743:
  %2219 = load { i64, i8* }*, { i64, i8* }** %param_ty.ptr
  %2220 = call i64 @nyx_array_get({ i64, i8* }* %2219, i64 1)
  %2221 = inttoptr i64 %2220 to { i64, i8* }*
  %2222 = alloca { i64, i8* }*
  store { i64, i8* }* %2221, { i64, i8* }** %2222
  %2223 = load { i64, i8* }*, { i64, i8* }** %arg_ty.ptr
  %2224 = call i64 @nyx_array_get({ i64, i8* }* %2223, i64 1)
  %2225 = inttoptr i64 %2224 to { i64, i8* }*
  %2226 = alloca { i64, i8* }*
  store { i64, i8* }* %2225, { i64, i8* }** %2226
  %2227 = load { i64, i8* }*, { i64, i8* }** %2222
  %2228 = load { i64, i8* }*, { i64, i8* }** %2226
  %2229 = load { i64, i8* }*, { i64, i8* }** %type_param_names.ptr
  %2230 = load { i64, i8* }*, { i64, i8* }** %names_out.ptr
  %2231 = load { i64, i8* }*, { i64, i8* }** %types_out.ptr
  %2232 = call i1 @unify({ i64, i8* }* %2227, { i64, i8* }* %2228, { i64, i8* }* %2229, { i64, i8* }* %2230, { i64, i8* }* %2231)
  ret i1 %2232
else744:
  br label %merge745
merge745:
  %2233 = alloca i1
  store i1 true, i1* %2233
  %2234 = load %nyx_string*, %nyx_string** %2123
  %2235 = getelementptr [9 x i8], [9 x i8]* @.str239, i32 0, i32 0
  %2236 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str239.c, i8* %2235)
  %2237 = call i1 @nyx_string_equals(%nyx_string* %2234, %nyx_string* %2236)
  br i1 %2237, label %sc_or_end747, label %sc_or_rhs746
sc_or_rhs746:
  %2238 = load %nyx_string*, %nyx_string** %2123
  %2239 = getelementptr [6 x i8], [6 x i8]* @.str240, i32 0, i32 0
  %2240 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str240.c, i8* %2239)
  %2241 = call i1 @nyx_string_equals(%nyx_string* %2238, %nyx_string* %2240)
  store i1 %2241, i1* %2233
  br label %sc_or_end747
sc_or_end747:
  %2242 = load i1, i1* %2233
  br i1 %2242, label %then748, label %else749
then748:
  %2243 = load { i64, i8* }*, { i64, i8* }** %param_ty.ptr
  %2244 = call i64 @nyx_array_get({ i64, i8* }* %2243, i64 1)
  %2245 = inttoptr i64 %2244 to { i64, i8* }*
  %2246 = alloca { i64, i8* }*
  store { i64, i8* }* %2245, { i64, i8* }** %2246
  %2247 = load { i64, i8* }*, { i64, i8* }** %arg_ty.ptr
  %2248 = call i64 @nyx_array_get({ i64, i8* }* %2247, i64 1)
  %2249 = inttoptr i64 %2248 to { i64, i8* }*
  %2250 = alloca { i64, i8* }*
  store { i64, i8* }* %2249, { i64, i8* }** %2250
  %2251 = load { i64, i8* }*, { i64, i8* }** %2246
  %2252 = load { i64, i8* }*, { i64, i8* }** %2250
  %2253 = load { i64, i8* }*, { i64, i8* }** %type_param_names.ptr
  %2254 = load { i64, i8* }*, { i64, i8* }** %names_out.ptr
  %2255 = load { i64, i8* }*, { i64, i8* }** %types_out.ptr
  %2256 = call i1 @unify({ i64, i8* }* %2251, { i64, i8* }* %2252, { i64, i8* }* %2253, { i64, i8* }* %2254, { i64, i8* }* %2255)
  %2257 = xor i1 %2256, true
  br i1 %2257, label %then751, label %else752
then751:
  ret i1 0
else752:
  br label %merge753
merge753:
  %2258 = load { i64, i8* }*, { i64, i8* }** %param_ty.ptr
  %2259 = call i64 @nyx_array_get({ i64, i8* }* %2258, i64 2)
  %2260 = inttoptr i64 %2259 to { i64, i8* }*
  %2261 = alloca { i64, i8* }*
  store { i64, i8* }* %2260, { i64, i8* }** %2261
  %2262 = load { i64, i8* }*, { i64, i8* }** %arg_ty.ptr
  %2263 = call i64 @nyx_array_get({ i64, i8* }* %2262, i64 2)
  %2264 = inttoptr i64 %2263 to { i64, i8* }*
  %2265 = alloca { i64, i8* }*
  store { i64, i8* }* %2264, { i64, i8* }** %2265
  %2266 = load { i64, i8* }*, { i64, i8* }** %2261
  %2267 = load { i64, i8* }*, { i64, i8* }** %2265
  %2268 = load { i64, i8* }*, { i64, i8* }** %type_param_names.ptr
  %2269 = load { i64, i8* }*, { i64, i8* }** %names_out.ptr
  %2270 = load { i64, i8* }*, { i64, i8* }** %types_out.ptr
  %2271 = call i1 @unify({ i64, i8* }* %2266, { i64, i8* }* %2267, { i64, i8* }* %2268, { i64, i8* }* %2269, { i64, i8* }* %2270)
  ret i1 %2271
else749:
  br label %merge750
merge750:
  %2272 = load %nyx_string*, %nyx_string** %2123
  %2273 = getelementptr [5 x i8], [5 x i8]* @.str241, i32 0, i32 0
  %2274 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str241.c, i8* %2273)
  %2275 = call i1 @nyx_string_equals(%nyx_string* %2272, %nyx_string* %2274)
  br i1 %2275, label %then754, label %else755
then754:
  %2276 = load { i64, i8* }*, { i64, i8* }** %param_ty.ptr
  %2277 = call i64 @nyx_array_get({ i64, i8* }* %2276, i64 1)
  %2278 = inttoptr i64 %2277 to { i64, i8* }*
  %2279 = alloca { i64, i8* }*
  store { i64, i8* }* %2278, { i64, i8* }** %2279
  %2280 = load { i64, i8* }*, { i64, i8* }** %arg_ty.ptr
  %2281 = call i64 @nyx_array_get({ i64, i8* }* %2280, i64 1)
  %2282 = inttoptr i64 %2281 to { i64, i8* }*
  %2283 = alloca { i64, i8* }*
  store { i64, i8* }* %2282, { i64, i8* }** %2283
  %2284 = load { i64, i8* }*, { i64, i8* }** %2279
  %2285 = call i64 @nyx_array_length({ i64, i8* }* %2284)
  %2286 = load { i64, i8* }*, { i64, i8* }** %2283
  %2287 = call i64 @nyx_array_length({ i64, i8* }* %2286)
  %2288 = icmp ne i64 %2285, %2287
  br i1 %2288, label %then757, label %else758
then757:
  ret i1 0
else758:
  br label %merge759
merge759:
  %2289 = alloca i64
  store i64 0, i64* %2289
  %2290 = call i8* @llvm.stacksave()
  br label %while_cond760
while_cond760:
  %2291 = load i64, i64* %2289
  %2292 = load { i64, i8* }*, { i64, i8* }** %2279
  %2293 = call i64 @nyx_array_length({ i64, i8* }* %2292)
  %2294 = icmp slt i64 %2291, %2293
  br i1 %2294, label %while_body761, label %while_end762
while_body761:
  call void @llvm.stackrestore(i8* %2290)
  %2295 = load { i64, i8* }*, { i64, i8* }** %2279
  %2296 = load i64, i64* %2289
  %2297 = call i64 @nyx_array_get({ i64, i8* }* %2295, i64 %2296)
  %2298 = inttoptr i64 %2297 to { i64, i8* }*
  %2299 = alloca { i64, i8* }*
  store { i64, i8* }* %2298, { i64, i8* }** %2299
  %2300 = load { i64, i8* }*, { i64, i8* }** %2283
  %2301 = load i64, i64* %2289
  %2302 = call i64 @nyx_array_get({ i64, i8* }* %2300, i64 %2301)
  %2303 = inttoptr i64 %2302 to { i64, i8* }*
  %2304 = alloca { i64, i8* }*
  store { i64, i8* }* %2303, { i64, i8* }** %2304
  %2305 = load { i64, i8* }*, { i64, i8* }** %2299
  %2306 = load { i64, i8* }*, { i64, i8* }** %2304
  %2307 = load { i64, i8* }*, { i64, i8* }** %type_param_names.ptr
  %2308 = load { i64, i8* }*, { i64, i8* }** %names_out.ptr
  %2309 = load { i64, i8* }*, { i64, i8* }** %types_out.ptr
  %2310 = call i1 @unify({ i64, i8* }* %2305, { i64, i8* }* %2306, { i64, i8* }* %2307, { i64, i8* }* %2308, { i64, i8* }* %2309)
  %2311 = xor i1 %2310, true
  br i1 %2311, label %then763, label %else764
then763:
  ret i1 0
else764:
  br label %merge765
merge765:
  %2312 = load i64, i64* %2289
  %2313 = add i64 %2312, 1
  store i64 %2313, i64* %2289
  br label %while_cond760
while_end762:
  %2314 = load { i64, i8* }*, { i64, i8* }** %param_ty.ptr
  %2315 = call i64 @nyx_array_get({ i64, i8* }* %2314, i64 2)
  %2316 = inttoptr i64 %2315 to { i64, i8* }*
  %2317 = alloca { i64, i8* }*
  store { i64, i8* }* %2316, { i64, i8* }** %2317
  %2318 = load { i64, i8* }*, { i64, i8* }** %arg_ty.ptr
  %2319 = call i64 @nyx_array_get({ i64, i8* }* %2318, i64 2)
  %2320 = inttoptr i64 %2319 to { i64, i8* }*
  %2321 = alloca { i64, i8* }*
  store { i64, i8* }* %2320, { i64, i8* }** %2321
  %2322 = load { i64, i8* }*, { i64, i8* }** %2317
  %2323 = load { i64, i8* }*, { i64, i8* }** %2321
  %2324 = load { i64, i8* }*, { i64, i8* }** %type_param_names.ptr
  %2325 = load { i64, i8* }*, { i64, i8* }** %names_out.ptr
  %2326 = load { i64, i8* }*, { i64, i8* }** %types_out.ptr
  %2327 = call i1 @unify({ i64, i8* }* %2322, { i64, i8* }* %2323, { i64, i8* }* %2324, { i64, i8* }* %2325, { i64, i8* }* %2326)
  ret i1 %2327
else755:
  br label %merge756
merge756:
  %2328 = alloca i1
  store i1 true, i1* %2328
  %2329 = load %nyx_string*, %nyx_string** %2123
  %2330 = getelementptr [9 x i8], [9 x i8]* @.str242, i32 0, i32 0
  %2331 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str242.c, i8* %2330)
  %2332 = call i1 @nyx_string_equals(%nyx_string* %2329, %nyx_string* %2331)
  br i1 %2332, label %sc_or_end767, label %sc_or_rhs766
sc_or_rhs766:
  %2333 = load %nyx_string*, %nyx_string** %2123
  %2334 = getelementptr [7 x i8], [7 x i8]* @.str243, i32 0, i32 0
  %2335 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str243.c, i8* %2334)
  %2336 = call i1 @nyx_string_equals(%nyx_string* %2333, %nyx_string* %2335)
  store i1 %2336, i1* %2328
  br label %sc_or_end767
sc_or_end767:
  %2337 = load i1, i1* %2328
  br i1 %2337, label %then768, label %else769
then768:
  %2338 = load { i64, i8* }*, { i64, i8* }** %param_ty.ptr
  %2339 = call i64 @nyx_array_get_checked({ i64, i8* }* %2338, i64 1, i64 2)
  %2340 = inttoptr i64 %2339 to %nyx_string*
  %2341 = alloca %nyx_string*
  store %nyx_string* %2340, %nyx_string** %2341
  %2342 = load { i64, i8* }*, { i64, i8* }** %arg_ty.ptr
  %2343 = call i64 @nyx_array_get_checked({ i64, i8* }* %2342, i64 1, i64 2)
  %2344 = inttoptr i64 %2343 to %nyx_string*
  %2345 = alloca %nyx_string*
  store %nyx_string* %2344, %nyx_string** %2345
  %2346 = load %nyx_string*, %nyx_string** %2341
  %2347 = load %nyx_string*, %nyx_string** %2345
  %2348 = call i1 @nyx_string_equals(%nyx_string* %2346, %nyx_string* %2347)
  %2349 = xor i1 %2348, true
  br i1 %2349, label %then771, label %else772
then771:
  ret i1 0
else772:
  br label %merge773
merge773:
  %2350 = load { i64, i8* }*, { i64, i8* }** %param_ty.ptr
  %2351 = call i64 @nyx_array_get({ i64, i8* }* %2350, i64 2)
  %2352 = inttoptr i64 %2351 to { i64, i8* }*
  %2353 = alloca { i64, i8* }*
  store { i64, i8* }* %2352, { i64, i8* }** %2353
  %2354 = load { i64, i8* }*, { i64, i8* }** %arg_ty.ptr
  %2355 = call i64 @nyx_array_get({ i64, i8* }* %2354, i64 2)
  %2356 = inttoptr i64 %2355 to { i64, i8* }*
  %2357 = alloca { i64, i8* }*
  store { i64, i8* }* %2356, { i64, i8* }** %2357
  %2358 = load { i64, i8* }*, { i64, i8* }** %2353
  %2359 = call i64 @nyx_array_length({ i64, i8* }* %2358)
  %2360 = icmp eq i64 %2359, 0
  br i1 %2360, label %then774, label %else775
then774:
  ret i1 1
else775:
  br label %merge776
merge776:
  %2361 = load { i64, i8* }*, { i64, i8* }** %2357
  %2362 = call i64 @nyx_array_length({ i64, i8* }* %2361)
  %2363 = icmp eq i64 %2362, 0
  br i1 %2363, label %then777, label %else778
then777:
  ret i1 1
else778:
  br label %merge779
merge779:
  %2364 = load { i64, i8* }*, { i64, i8* }** %2353
  %2365 = call i64 @nyx_array_length({ i64, i8* }* %2364)
  %2366 = load { i64, i8* }*, { i64, i8* }** %2357
  %2367 = call i64 @nyx_array_length({ i64, i8* }* %2366)
  %2368 = icmp ne i64 %2365, %2367
  br i1 %2368, label %then780, label %else781
then780:
  ret i1 0
else781:
  br label %merge782
merge782:
  %2369 = alloca i64
  store i64 0, i64* %2369
  %2370 = call i8* @llvm.stacksave()
  br label %while_cond783
while_cond783:
  %2371 = load i64, i64* %2369
  %2372 = load { i64, i8* }*, { i64, i8* }** %2353
  %2373 = call i64 @nyx_array_length({ i64, i8* }* %2372)
  %2374 = icmp slt i64 %2371, %2373
  br i1 %2374, label %while_body784, label %while_end785
while_body784:
  call void @llvm.stackrestore(i8* %2370)
  %2375 = load { i64, i8* }*, { i64, i8* }** %2353
  %2376 = load i64, i64* %2369
  %2377 = call i64 @nyx_array_get({ i64, i8* }* %2375, i64 %2376)
  %2378 = inttoptr i64 %2377 to { i64, i8* }*
  %2379 = alloca { i64, i8* }*
  store { i64, i8* }* %2378, { i64, i8* }** %2379
  %2380 = load { i64, i8* }*, { i64, i8* }** %2357
  %2381 = load i64, i64* %2369
  %2382 = call i64 @nyx_array_get({ i64, i8* }* %2380, i64 %2381)
  %2383 = inttoptr i64 %2382 to { i64, i8* }*
  %2384 = alloca { i64, i8* }*
  store { i64, i8* }* %2383, { i64, i8* }** %2384
  %2385 = load { i64, i8* }*, { i64, i8* }** %2379
  %2386 = load { i64, i8* }*, { i64, i8* }** %2384
  %2387 = load { i64, i8* }*, { i64, i8* }** %type_param_names.ptr
  %2388 = load { i64, i8* }*, { i64, i8* }** %names_out.ptr
  %2389 = load { i64, i8* }*, { i64, i8* }** %types_out.ptr
  %2390 = call i1 @unify({ i64, i8* }* %2385, { i64, i8* }* %2386, { i64, i8* }* %2387, { i64, i8* }* %2388, { i64, i8* }* %2389)
  %2391 = xor i1 %2390, true
  br i1 %2391, label %then786, label %else787
then786:
  ret i1 0
else787:
  br label %merge788
merge788:
  %2392 = load i64, i64* %2369
  %2393 = add i64 %2392, 1
  store i64 %2393, i64* %2369
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
  %2394 = load { i64, i8* }*, { i64, i8* }** %param_ty.ptr
  %2395 = load { i64, i8* }*, { i64, i8* }** %arg_ty.ptr
  %2396 = call i1 @ty_eq({ i64, i8* }* %2394, { i64, i8* }* %2395)
  ret i1 %2396
}

define { i64, i8* }* @ty_var(
i64 %id.param) {
  %id.ptr = alloca i64
  store i64 %id.param, i64* %id.ptr
  %2397 = call { i64, i8* }* @nyx_array_new_ptr()
  %2398 = getelementptr [6 x i8], [6 x i8]* @.str244, i32 0, i32 0
  %2399 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str244.c, i8* %2398)
  %2400 = ptrtoint %nyx_string* %2399 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2397, i64 %2400, i64 2)
  %2401 = load i64, i64* %id.ptr
  call void @nyx_array_push({ i64, i8* }* %2397, i64 %2401)
  ret { i64, i8* }* %2397
}

define { i64, i8* }* @subst_new(
) {
  %2402 = call { i64, i8* }* @nyx_array_new_ptr()
  %2403 = call { i64, i8* }* @nyx_array_new_ptr()
  %2404 = bitcast { i64, i8* }* %2403 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %2402, i8* %2404)
  %2405 = call { i64, i8* }* @nyx_array_new_ptr()
  %2406 = bitcast { i64, i8* }* %2405 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %2402, i8* %2406)
  ret { i64, i8* }* %2402
}

define internal { i64, i8* }* @subst_lookup(
{ i64, i8* }* %subst.param, i64 %id.param) {
  %subst.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %subst.param, { i64, i8* }** %subst.ptr
  %id.ptr = alloca i64
  store i64 %id.param, i64* %id.ptr
  %2407 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2408 = call i64 @nyx_array_get({ i64, i8* }* %2407, i64 0)
  %2409 = inttoptr i64 %2408 to { i64, i8* }*
  %2410 = alloca { i64, i8* }*
  store { i64, i8* }* %2409, { i64, i8* }** %2410
  %2411 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2412 = call i64 @nyx_array_get({ i64, i8* }* %2411, i64 1)
  %2413 = inttoptr i64 %2412 to { i64, i8* }*
  %2414 = alloca { i64, i8* }*
  store { i64, i8* }* %2413, { i64, i8* }** %2414
  %2415 = alloca i64
  store i64 0, i64* %2415
  %2416 = call i8* @llvm.stacksave()
  br label %while_cond789
while_cond789:
  %2417 = load i64, i64* %2415
  %2418 = load { i64, i8* }*, { i64, i8* }** %2410
  %2419 = call i64 @nyx_array_length({ i64, i8* }* %2418)
  %2420 = icmp slt i64 %2417, %2419
  br i1 %2420, label %while_body790, label %while_end791
while_body790:
  call void @llvm.stackrestore(i8* %2416)
  %2421 = load { i64, i8* }*, { i64, i8* }** %2410
  %2422 = load i64, i64* %2415
  %2423 = call i64 @nyx_array_get({ i64, i8* }* %2421, i64 %2422)
  %2424 = alloca i64
  store i64 %2423, i64* %2424
  %2425 = load i64, i64* %2424
  %2426 = load i64, i64* %id.ptr
  %2427 = icmp eq i64 %2425, %2426
  br i1 %2427, label %then792, label %else793
then792:
  %2428 = load { i64, i8* }*, { i64, i8* }** %2414
  %2429 = load i64, i64* %2415
  %2430 = call i64 @nyx_array_get({ i64, i8* }* %2428, i64 %2429)
  %2431 = inttoptr i64 %2430 to { i64, i8* }*
  %2432 = alloca { i64, i8* }*
  store { i64, i8* }* %2431, { i64, i8* }** %2432
  %2433 = call { i64, i8* }* @nyx_array_new_ptr()
  %2434 = zext i1 1 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2433, i64 %2434, i64 4)
  %2435 = load { i64, i8* }*, { i64, i8* }** %2432
  %2436 = bitcast { i64, i8* }* %2435 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %2433, i8* %2436)
  ret { i64, i8* }* %2433
else793:
  br label %merge794
merge794:
  %2437 = load i64, i64* %2415
  %2438 = add i64 %2437, 1
  store i64 %2438, i64* %2415
  br label %while_cond789
while_end791:
  %2439 = call { i64, i8* }* @nyx_array_new_ptr()
  %2440 = zext i1 0 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2439, i64 %2440, i64 4)
  %2441 = call { i64, i8* }* @ty_unknown()
  %2442 = bitcast { i64, i8* }* %2441 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %2439, i8* %2442)
  ret { i64, i8* }* %2439
}

define internal i64 @subst_bind(
{ i64, i8* }* %subst.param, i64 %id.param, { i64, i8* }* %ty.param) {
  %subst.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %subst.param, { i64, i8* }** %subst.ptr
  %id.ptr = alloca i64
  store i64 %id.param, i64* %id.ptr
  %ty.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ty.param, { i64, i8* }** %ty.ptr
  %2443 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2444 = call i64 @nyx_array_get({ i64, i8* }* %2443, i64 0)
  %2445 = inttoptr i64 %2444 to { i64, i8* }*
  %2446 = alloca { i64, i8* }*
  store { i64, i8* }* %2445, { i64, i8* }** %2446
  %2447 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2448 = call i64 @nyx_array_get({ i64, i8* }* %2447, i64 1)
  %2449 = inttoptr i64 %2448 to { i64, i8* }*
  %2450 = alloca { i64, i8* }*
  store { i64, i8* }* %2449, { i64, i8* }** %2450
  %2451 = load { i64, i8* }*, { i64, i8* }** %2446
  %2452 = load i64, i64* %id.ptr
  call void @nyx_array_push({ i64, i8* }* %2451, i64 %2452)
  %2453 = load { i64, i8* }*, { i64, i8* }** %2450
  %2454 = load { i64, i8* }*, { i64, i8* }** %ty.ptr
  %2455 = ptrtoint { i64, i8* }* %2454 to i64
  call void @nyx_array_push({ i64, i8* }* %2453, i64 %2455)
  ret i64 0
}

define { i64, i8* }* @subst_resolve(
{ i64, i8* }* %subst.param, { i64, i8* }* %ty.param) {
  %subst.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %subst.param, { i64, i8* }** %subst.ptr
  %ty.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ty.param, { i64, i8* }** %ty.ptr
  %2456 = load { i64, i8* }*, { i64, i8* }** %ty.ptr
  %2457 = call %nyx_string* @ty_kind({ i64, i8* }* %2456)
  %2458 = alloca %nyx_string*
  store %nyx_string* %2457, %nyx_string** %2458
  %2459 = load %nyx_string*, %nyx_string** %2458
  %2460 = getelementptr [6 x i8], [6 x i8]* @.str245, i32 0, i32 0
  %2461 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str245.c, i8* %2460)
  %2462 = call i1 @nyx_string_equals(%nyx_string* %2459, %nyx_string* %2461)
  %2463 = xor i1 %2462, true
  br i1 %2463, label %then795, label %else796
then795:
  %2464 = load { i64, i8* }*, { i64, i8* }** %ty.ptr
  ret { i64, i8* }* %2464
else796:
  br label %merge797
merge797:
  %2465 = load { i64, i8* }*, { i64, i8* }** %ty.ptr
  %2466 = call i64 @nyx_array_get({ i64, i8* }* %2465, i64 1)
  %2467 = alloca i64
  store i64 %2466, i64* %2467
  %2468 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2469 = load i64, i64* %2467
  %2470 = call { i64, i8* }* @subst_lookup({ i64, i8* }* %2468, i64 %2469)
  %2471 = alloca { i64, i8* }*
  store { i64, i8* }* %2470, { i64, i8* }** %2471
  %2472 = load { i64, i8* }*, { i64, i8* }** %2471
  %2473 = call i64 @nyx_array_get({ i64, i8* }* %2472, i64 0)
  %2474 = trunc i64 %2473 to i1
  %2475 = alloca i1
  store i1 %2474, i1* %2475
  %2476 = load i1, i1* %2475
  %2477 = xor i1 %2476, true
  br i1 %2477, label %then798, label %else799
then798:
  %2478 = load { i64, i8* }*, { i64, i8* }** %ty.ptr
  ret { i64, i8* }* %2478
else799:
  br label %merge800
merge800:
  %2479 = load { i64, i8* }*, { i64, i8* }** %2471
  %2480 = call i64 @nyx_array_get({ i64, i8* }* %2479, i64 1)
  %2481 = inttoptr i64 %2480 to { i64, i8* }*
  %2482 = alloca { i64, i8* }*
  store { i64, i8* }* %2481, { i64, i8* }** %2482
  %2483 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2484 = load { i64, i8* }*, { i64, i8* }** %2482
  %2485 = call { i64, i8* }* @subst_resolve({ i64, i8* }* %2483, { i64, i8* }* %2484)
  ret { i64, i8* }* %2485
}

define { i64, i8* }* @subst_resolve_deep(
{ i64, i8* }* %subst.param, { i64, i8* }* %ty.param) {
  %subst.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %subst.param, { i64, i8* }** %subst.ptr
  %ty.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ty.param, { i64, i8* }** %ty.ptr
  %2486 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2487 = load { i64, i8* }*, { i64, i8* }** %ty.ptr
  %2488 = call { i64, i8* }* @subst_resolve({ i64, i8* }* %2486, { i64, i8* }* %2487)
  %2489 = alloca { i64, i8* }*
  store { i64, i8* }* %2488, { i64, i8* }** %2489
  %2490 = load { i64, i8* }*, { i64, i8* }** %2489
  %2491 = call %nyx_string* @ty_kind({ i64, i8* }* %2490)
  %2492 = alloca %nyx_string*
  store %nyx_string* %2491, %nyx_string** %2492
  %2493 = load %nyx_string*, %nyx_string** %2492
  %2494 = getelementptr [8 x i8], [8 x i8]* @.str246, i32 0, i32 0
  %2495 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str246.c, i8* %2494)
  %2496 = call i1 @nyx_string_equals(%nyx_string* %2493, %nyx_string* %2495)
  br i1 %2496, label %then801, label %else802
then801:
  %2497 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2498 = load { i64, i8* }*, { i64, i8* }** %2489
  %2499 = call i64 @nyx_array_get({ i64, i8* }* %2498, i64 1)
  %2500 = inttoptr i64 %2499 to { i64, i8* }*
  %2501 = call { i64, i8* }* @subst_resolve_deep({ i64, i8* }* %2497, { i64, i8* }* %2500)
  %2502 = call { i64, i8* }* @ty_array({ i64, i8* }* %2501)
  ret { i64, i8* }* %2502
else802:
  br label %merge803
merge803:
  %2503 = load %nyx_string*, %nyx_string** %2492
  %2504 = getelementptr [9 x i8], [9 x i8]* @.str247, i32 0, i32 0
  %2505 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str247.c, i8* %2504)
  %2506 = call i1 @nyx_string_equals(%nyx_string* %2503, %nyx_string* %2505)
  br i1 %2506, label %then804, label %else805
then804:
  %2507 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2508 = load { i64, i8* }*, { i64, i8* }** %2489
  %2509 = call i64 @nyx_array_get({ i64, i8* }* %2508, i64 1)
  %2510 = inttoptr i64 %2509 to { i64, i8* }*
  %2511 = call { i64, i8* }* @subst_resolve_deep({ i64, i8* }* %2507, { i64, i8* }* %2510)
  %2512 = call { i64, i8* }* @ty_option({ i64, i8* }* %2511)
  ret { i64, i8* }* %2512
else805:
  br label %merge806
merge806:
  %2513 = load %nyx_string*, %nyx_string** %2492
  %2514 = getelementptr [6 x i8], [6 x i8]* @.str248, i32 0, i32 0
  %2515 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str248.c, i8* %2514)
  %2516 = call i1 @nyx_string_equals(%nyx_string* %2513, %nyx_string* %2515)
  br i1 %2516, label %then807, label %else808
then807:
  %2517 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2518 = load { i64, i8* }*, { i64, i8* }** %2489
  %2519 = call i64 @nyx_array_get({ i64, i8* }* %2518, i64 1)
  %2520 = inttoptr i64 %2519 to { i64, i8* }*
  %2521 = call { i64, i8* }* @subst_resolve_deep({ i64, i8* }* %2517, { i64, i8* }* %2520)
  %2522 = call { i64, i8* }* @ty_ptr({ i64, i8* }* %2521)
  ret { i64, i8* }* %2522
else808:
  br label %merge809
merge809:
  %2523 = load %nyx_string*, %nyx_string** %2492
  %2524 = getelementptr [6 x i8], [6 x i8]* @.str249, i32 0, i32 0
  %2525 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str249.c, i8* %2524)
  %2526 = call i1 @nyx_string_equals(%nyx_string* %2523, %nyx_string* %2525)
  br i1 %2526, label %then810, label %else811
then810:
  %2527 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2528 = load { i64, i8* }*, { i64, i8* }** %2489
  %2529 = call i64 @nyx_array_get({ i64, i8* }* %2528, i64 1)
  %2530 = inttoptr i64 %2529 to { i64, i8* }*
  %2531 = call { i64, i8* }* @subst_resolve_deep({ i64, i8* }* %2527, { i64, i8* }* %2530)
  %2532 = load { i64, i8* }*, { i64, i8* }** %2489
  %2533 = call %nyx_string* @ty_ref_region({ i64, i8* }* %2532)
  %2534 = call { i64, i8* }* @ty_ref_r({ i64, i8* }* %2531, %nyx_string* %2533)
  ret { i64, i8* }* %2534
else811:
  br label %merge812
merge812:
  %2535 = load %nyx_string*, %nyx_string** %2492
  %2536 = getelementptr [9 x i8], [9 x i8]* @.str250, i32 0, i32 0
  %2537 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str250.c, i8* %2536)
  %2538 = call i1 @nyx_string_equals(%nyx_string* %2535, %nyx_string* %2537)
  br i1 %2538, label %then813, label %else814
then813:
  %2539 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2540 = load { i64, i8* }*, { i64, i8* }** %2489
  %2541 = call i64 @nyx_array_get({ i64, i8* }* %2540, i64 1)
  %2542 = inttoptr i64 %2541 to { i64, i8* }*
  %2543 = call { i64, i8* }* @subst_resolve_deep({ i64, i8* }* %2539, { i64, i8* }* %2542)
  %2544 = load { i64, i8* }*, { i64, i8* }** %2489
  %2545 = call %nyx_string* @ty_ref_region({ i64, i8* }* %2544)
  %2546 = call { i64, i8* }* @ty_ref_mut_r({ i64, i8* }* %2543, %nyx_string* %2545)
  ret { i64, i8* }* %2546
else814:
  br label %merge815
merge815:
  %2547 = load %nyx_string*, %nyx_string** %2492
  %2548 = getelementptr [9 x i8], [9 x i8]* @.str251, i32 0, i32 0
  %2549 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str251.c, i8* %2548)
  %2550 = call i1 @nyx_string_equals(%nyx_string* %2547, %nyx_string* %2549)
  br i1 %2550, label %then816, label %else817
then816:
  %2551 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2552 = load { i64, i8* }*, { i64, i8* }** %2489
  %2553 = call i64 @nyx_array_get({ i64, i8* }* %2552, i64 1)
  %2554 = inttoptr i64 %2553 to { i64, i8* }*
  %2555 = call { i64, i8* }* @subst_resolve_deep({ i64, i8* }* %2551, { i64, i8* }* %2554)
  %2556 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2557 = load { i64, i8* }*, { i64, i8* }** %2489
  %2558 = call i64 @nyx_array_get({ i64, i8* }* %2557, i64 2)
  %2559 = inttoptr i64 %2558 to { i64, i8* }*
  %2560 = call { i64, i8* }* @subst_resolve_deep({ i64, i8* }* %2556, { i64, i8* }* %2559)
  %2561 = call { i64, i8* }* @ty_result({ i64, i8* }* %2555, { i64, i8* }* %2560)
  ret { i64, i8* }* %2561
else817:
  br label %merge818
merge818:
  %2562 = load %nyx_string*, %nyx_string** %2492
  %2563 = getelementptr [6 x i8], [6 x i8]* @.str252, i32 0, i32 0
  %2564 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str252.c, i8* %2563)
  %2565 = call i1 @nyx_string_equals(%nyx_string* %2562, %nyx_string* %2564)
  br i1 %2565, label %then819, label %else820
then819:
  %2566 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2567 = load { i64, i8* }*, { i64, i8* }** %2489
  %2568 = call i64 @nyx_array_get({ i64, i8* }* %2567, i64 1)
  %2569 = inttoptr i64 %2568 to { i64, i8* }*
  %2570 = call { i64, i8* }* @subst_resolve_deep({ i64, i8* }* %2566, { i64, i8* }* %2569)
  %2571 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2572 = load { i64, i8* }*, { i64, i8* }** %2489
  %2573 = call i64 @nyx_array_get({ i64, i8* }* %2572, i64 2)
  %2574 = inttoptr i64 %2573 to { i64, i8* }*
  %2575 = call { i64, i8* }* @subst_resolve_deep({ i64, i8* }* %2571, { i64, i8* }* %2574)
  %2576 = call { i64, i8* }* @ty_map({ i64, i8* }* %2570, { i64, i8* }* %2575)
  ret { i64, i8* }* %2576
else820:
  br label %merge821
merge821:
  %2577 = load %nyx_string*, %nyx_string** %2492
  %2578 = getelementptr [5 x i8], [5 x i8]* @.str253, i32 0, i32 0
  %2579 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str253.c, i8* %2578)
  %2580 = call i1 @nyx_string_equals(%nyx_string* %2577, %nyx_string* %2579)
  br i1 %2580, label %then822, label %else823
then822:
  %2581 = load { i64, i8* }*, { i64, i8* }** %2489
  %2582 = call i64 @nyx_array_get({ i64, i8* }* %2581, i64 1)
  %2583 = inttoptr i64 %2582 to { i64, i8* }*
  %2584 = alloca { i64, i8* }*
  store { i64, i8* }* %2583, { i64, i8* }** %2584
  %2585 = call { i64, i8* }* @nyx_array_new_ptr()
  %2586 = alloca { i64, i8* }*
  store { i64, i8* }* %2585, { i64, i8* }** %2586
  %2587 = alloca i64
  store i64 0, i64* %2587
  %2588 = call i8* @llvm.stacksave()
  br label %while_cond825
while_cond825:
  %2589 = load i64, i64* %2587
  %2590 = load { i64, i8* }*, { i64, i8* }** %2584
  %2591 = call i64 @nyx_array_length({ i64, i8* }* %2590)
  %2592 = icmp slt i64 %2589, %2591
  br i1 %2592, label %while_body826, label %while_end827
while_body826:
  call void @llvm.stackrestore(i8* %2588)
  %2593 = load { i64, i8* }*, { i64, i8* }** %2586
  %2594 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2595 = load { i64, i8* }*, { i64, i8* }** %2584
  %2596 = load i64, i64* %2587
  %2597 = call i64 @nyx_array_get({ i64, i8* }* %2595, i64 %2596)
  %2598 = inttoptr i64 %2597 to { i64, i8* }*
  %2599 = call { i64, i8* }* @subst_resolve_deep({ i64, i8* }* %2594, { i64, i8* }* %2598)
  %2600 = ptrtoint { i64, i8* }* %2599 to i64
  call void @nyx_array_push({ i64, i8* }* %2593, i64 %2600)
  %2601 = load i64, i64* %2587
  %2602 = add i64 %2601, 1
  store i64 %2602, i64* %2587
  br label %while_cond825
while_end827:
  %2603 = load { i64, i8* }*, { i64, i8* }** %2586
  %2604 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2605 = load { i64, i8* }*, { i64, i8* }** %2489
  %2606 = call i64 @nyx_array_get({ i64, i8* }* %2605, i64 2)
  %2607 = inttoptr i64 %2606 to { i64, i8* }*
  %2608 = call { i64, i8* }* @subst_resolve_deep({ i64, i8* }* %2604, { i64, i8* }* %2607)
  %2609 = call { i64, i8* }* @ty_fn({ i64, i8* }* %2603, { i64, i8* }* %2608)
  ret { i64, i8* }* %2609
else823:
  br label %merge824
merge824:
  %2610 = load %nyx_string*, %nyx_string** %2492
  %2611 = getelementptr [9 x i8], [9 x i8]* @.str254, i32 0, i32 0
  %2612 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str254.c, i8* %2611)
  %2613 = call i1 @nyx_string_equals(%nyx_string* %2610, %nyx_string* %2612)
  br i1 %2613, label %then828, label %else829
then828:
  %2614 = load { i64, i8* }*, { i64, i8* }** %2489
  %2615 = call i64 @nyx_array_get({ i64, i8* }* %2614, i64 2)
  %2616 = inttoptr i64 %2615 to { i64, i8* }*
  %2617 = alloca { i64, i8* }*
  store { i64, i8* }* %2616, { i64, i8* }** %2617
  %2618 = call { i64, i8* }* @nyx_array_new_ptr()
  %2619 = alloca { i64, i8* }*
  store { i64, i8* }* %2618, { i64, i8* }** %2619
  %2620 = alloca i64
  store i64 0, i64* %2620
  %2621 = call i8* @llvm.stacksave()
  br label %while_cond831
while_cond831:
  %2622 = load i64, i64* %2620
  %2623 = load { i64, i8* }*, { i64, i8* }** %2617
  %2624 = call i64 @nyx_array_length({ i64, i8* }* %2623)
  %2625 = icmp slt i64 %2622, %2624
  br i1 %2625, label %while_body832, label %while_end833
while_body832:
  call void @llvm.stackrestore(i8* %2621)
  %2626 = load { i64, i8* }*, { i64, i8* }** %2619
  %2627 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2628 = load { i64, i8* }*, { i64, i8* }** %2617
  %2629 = load i64, i64* %2620
  %2630 = call i64 @nyx_array_get({ i64, i8* }* %2628, i64 %2629)
  %2631 = inttoptr i64 %2630 to { i64, i8* }*
  %2632 = call { i64, i8* }* @subst_resolve_deep({ i64, i8* }* %2627, { i64, i8* }* %2631)
  %2633 = ptrtoint { i64, i8* }* %2632 to i64
  call void @nyx_array_push({ i64, i8* }* %2626, i64 %2633)
  %2634 = load i64, i64* %2620
  %2635 = add i64 %2634, 1
  store i64 %2635, i64* %2620
  br label %while_cond831
while_end833:
  %2636 = load { i64, i8* }*, { i64, i8* }** %2489
  %2637 = call i64 @nyx_array_get({ i64, i8* }* %2636, i64 1)
  %2638 = inttoptr i64 %2637 to %nyx_string*
  %2639 = load { i64, i8* }*, { i64, i8* }** %2619
  %2640 = call { i64, i8* }* @ty_struct_ty(%nyx_string* %2638, { i64, i8* }* %2639)
  ret { i64, i8* }* %2640
else829:
  br label %merge830
merge830:
  %2641 = load %nyx_string*, %nyx_string** %2492
  %2642 = getelementptr [7 x i8], [7 x i8]* @.str255, i32 0, i32 0
  %2643 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str255.c, i8* %2642)
  %2644 = call i1 @nyx_string_equals(%nyx_string* %2641, %nyx_string* %2643)
  br i1 %2644, label %then834, label %else835
then834:
  %2645 = load { i64, i8* }*, { i64, i8* }** %2489
  %2646 = call i64 @nyx_array_get({ i64, i8* }* %2645, i64 2)
  %2647 = inttoptr i64 %2646 to { i64, i8* }*
  %2648 = alloca { i64, i8* }*
  store { i64, i8* }* %2647, { i64, i8* }** %2648
  %2649 = call { i64, i8* }* @nyx_array_new_ptr()
  %2650 = alloca { i64, i8* }*
  store { i64, i8* }* %2649, { i64, i8* }** %2650
  %2651 = alloca i64
  store i64 0, i64* %2651
  %2652 = call i8* @llvm.stacksave()
  br label %while_cond837
while_cond837:
  %2653 = load i64, i64* %2651
  %2654 = load { i64, i8* }*, { i64, i8* }** %2648
  %2655 = call i64 @nyx_array_length({ i64, i8* }* %2654)
  %2656 = icmp slt i64 %2653, %2655
  br i1 %2656, label %while_body838, label %while_end839
while_body838:
  call void @llvm.stackrestore(i8* %2652)
  %2657 = load { i64, i8* }*, { i64, i8* }** %2650
  %2658 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2659 = load { i64, i8* }*, { i64, i8* }** %2648
  %2660 = load i64, i64* %2651
  %2661 = call i64 @nyx_array_get({ i64, i8* }* %2659, i64 %2660)
  %2662 = inttoptr i64 %2661 to { i64, i8* }*
  %2663 = call { i64, i8* }* @subst_resolve_deep({ i64, i8* }* %2658, { i64, i8* }* %2662)
  %2664 = ptrtoint { i64, i8* }* %2663 to i64
  call void @nyx_array_push({ i64, i8* }* %2657, i64 %2664)
  %2665 = load i64, i64* %2651
  %2666 = add i64 %2665, 1
  store i64 %2666, i64* %2651
  br label %while_cond837
while_end839:
  %2667 = load { i64, i8* }*, { i64, i8* }** %2489
  %2668 = call i64 @nyx_array_get({ i64, i8* }* %2667, i64 1)
  %2669 = inttoptr i64 %2668 to %nyx_string*
  %2670 = load { i64, i8* }*, { i64, i8* }** %2650
  %2671 = call { i64, i8* }* @ty_enum_ty(%nyx_string* %2669, { i64, i8* }* %2670)
  ret { i64, i8* }* %2671
else835:
  br label %merge836
merge836:
  %2672 = load { i64, i8* }*, { i64, i8* }** %2489
  ret { i64, i8* }* %2672
}

define i1 @occurs_check(
i64 %id.param, { i64, i8* }* %ty.param, { i64, i8* }* %subst.param) {
  %id.ptr = alloca i64
  store i64 %id.param, i64* %id.ptr
  %ty.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ty.param, { i64, i8* }** %ty.ptr
  %subst.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %subst.param, { i64, i8* }** %subst.ptr
  %2673 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2674 = load { i64, i8* }*, { i64, i8* }** %ty.ptr
  %2675 = call { i64, i8* }* @subst_resolve({ i64, i8* }* %2673, { i64, i8* }* %2674)
  %2676 = alloca { i64, i8* }*
  store { i64, i8* }* %2675, { i64, i8* }** %2676
  %2677 = load { i64, i8* }*, { i64, i8* }** %2676
  %2678 = call %nyx_string* @ty_kind({ i64, i8* }* %2677)
  %2679 = alloca %nyx_string*
  store %nyx_string* %2678, %nyx_string** %2679
  %2680 = load %nyx_string*, %nyx_string** %2679
  %2681 = getelementptr [6 x i8], [6 x i8]* @.str256, i32 0, i32 0
  %2682 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str256.c, i8* %2681)
  %2683 = call i1 @nyx_string_equals(%nyx_string* %2680, %nyx_string* %2682)
  br i1 %2683, label %then840, label %else841
then840:
  %2684 = load { i64, i8* }*, { i64, i8* }** %2676
  %2685 = call i64 @nyx_array_get({ i64, i8* }* %2684, i64 1)
  %2686 = alloca i64
  store i64 %2685, i64* %2686
  %2687 = load i64, i64* %2686
  %2688 = load i64, i64* %id.ptr
  %2689 = icmp eq i64 %2687, %2688
  ret i1 %2689
else841:
  br label %merge842
merge842:
  %2690 = alloca i1
  store i1 true, i1* %2690
  %2691 = alloca i1
  store i1 true, i1* %2691
  %2692 = alloca i1
  store i1 true, i1* %2692
  %2693 = alloca i1
  store i1 true, i1* %2693
  %2694 = load %nyx_string*, %nyx_string** %2679
  %2695 = getelementptr [8 x i8], [8 x i8]* @.str257, i32 0, i32 0
  %2696 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str257.c, i8* %2695)
  %2697 = call i1 @nyx_string_equals(%nyx_string* %2694, %nyx_string* %2696)
  br i1 %2697, label %sc_or_end844, label %sc_or_rhs843
sc_or_rhs843:
  %2698 = load %nyx_string*, %nyx_string** %2679
  %2699 = getelementptr [9 x i8], [9 x i8]* @.str258, i32 0, i32 0
  %2700 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str258.c, i8* %2699)
  %2701 = call i1 @nyx_string_equals(%nyx_string* %2698, %nyx_string* %2700)
  store i1 %2701, i1* %2693
  br label %sc_or_end844
sc_or_end844:
  %2702 = load i1, i1* %2693
  br i1 %2702, label %sc_or_end846, label %sc_or_rhs845
sc_or_rhs845:
  %2703 = load %nyx_string*, %nyx_string** %2679
  %2704 = getelementptr [6 x i8], [6 x i8]* @.str259, i32 0, i32 0
  %2705 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str259.c, i8* %2704)
  %2706 = call i1 @nyx_string_equals(%nyx_string* %2703, %nyx_string* %2705)
  store i1 %2706, i1* %2692
  br label %sc_or_end846
sc_or_end846:
  %2707 = load i1, i1* %2692
  br i1 %2707, label %sc_or_end848, label %sc_or_rhs847
sc_or_rhs847:
  %2708 = load %nyx_string*, %nyx_string** %2679
  %2709 = getelementptr [6 x i8], [6 x i8]* @.str260, i32 0, i32 0
  %2710 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str260.c, i8* %2709)
  %2711 = call i1 @nyx_string_equals(%nyx_string* %2708, %nyx_string* %2710)
  store i1 %2711, i1* %2691
  br label %sc_or_end848
sc_or_end848:
  %2712 = load i1, i1* %2691
  br i1 %2712, label %sc_or_end850, label %sc_or_rhs849
sc_or_rhs849:
  %2713 = load %nyx_string*, %nyx_string** %2679
  %2714 = getelementptr [9 x i8], [9 x i8]* @.str261, i32 0, i32 0
  %2715 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str261.c, i8* %2714)
  %2716 = call i1 @nyx_string_equals(%nyx_string* %2713, %nyx_string* %2715)
  store i1 %2716, i1* %2690
  br label %sc_or_end850
sc_or_end850:
  %2717 = load i1, i1* %2690
  br i1 %2717, label %then851, label %else852
then851:
  %2718 = load { i64, i8* }*, { i64, i8* }** %2676
  %2719 = call i64 @nyx_array_get({ i64, i8* }* %2718, i64 1)
  %2720 = inttoptr i64 %2719 to { i64, i8* }*
  %2721 = alloca { i64, i8* }*
  store { i64, i8* }* %2720, { i64, i8* }** %2721
  %2722 = load i64, i64* %id.ptr
  %2723 = load { i64, i8* }*, { i64, i8* }** %2721
  %2724 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2725 = call i1 @occurs_check(i64 %2722, { i64, i8* }* %2723, { i64, i8* }* %2724)
  ret i1 %2725
else852:
  br label %merge853
merge853:
  %2726 = alloca i1
  store i1 true, i1* %2726
  %2727 = load %nyx_string*, %nyx_string** %2679
  %2728 = getelementptr [9 x i8], [9 x i8]* @.str262, i32 0, i32 0
  %2729 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str262.c, i8* %2728)
  %2730 = call i1 @nyx_string_equals(%nyx_string* %2727, %nyx_string* %2729)
  br i1 %2730, label %sc_or_end855, label %sc_or_rhs854
sc_or_rhs854:
  %2731 = load %nyx_string*, %nyx_string** %2679
  %2732 = getelementptr [6 x i8], [6 x i8]* @.str263, i32 0, i32 0
  %2733 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str263.c, i8* %2732)
  %2734 = call i1 @nyx_string_equals(%nyx_string* %2731, %nyx_string* %2733)
  store i1 %2734, i1* %2726
  br label %sc_or_end855
sc_or_end855:
  %2735 = load i1, i1* %2726
  br i1 %2735, label %then856, label %else857
then856:
  %2736 = load { i64, i8* }*, { i64, i8* }** %2676
  %2737 = call i64 @nyx_array_get({ i64, i8* }* %2736, i64 1)
  %2738 = inttoptr i64 %2737 to { i64, i8* }*
  %2739 = alloca { i64, i8* }*
  store { i64, i8* }* %2738, { i64, i8* }** %2739
  %2740 = load i64, i64* %id.ptr
  %2741 = load { i64, i8* }*, { i64, i8* }** %2739
  %2742 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2743 = call i1 @occurs_check(i64 %2740, { i64, i8* }* %2741, { i64, i8* }* %2742)
  br i1 %2743, label %then859, label %else860
then859:
  ret i1 1
else860:
  br label %merge861
merge861:
  %2744 = load { i64, i8* }*, { i64, i8* }** %2676
  %2745 = call i64 @nyx_array_get({ i64, i8* }* %2744, i64 2)
  %2746 = inttoptr i64 %2745 to { i64, i8* }*
  %2747 = alloca { i64, i8* }*
  store { i64, i8* }* %2746, { i64, i8* }** %2747
  %2748 = load i64, i64* %id.ptr
  %2749 = load { i64, i8* }*, { i64, i8* }** %2747
  %2750 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2751 = call i1 @occurs_check(i64 %2748, { i64, i8* }* %2749, { i64, i8* }* %2750)
  ret i1 %2751
else857:
  br label %merge858
merge858:
  %2752 = load %nyx_string*, %nyx_string** %2679
  %2753 = getelementptr [5 x i8], [5 x i8]* @.str264, i32 0, i32 0
  %2754 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str264.c, i8* %2753)
  %2755 = call i1 @nyx_string_equals(%nyx_string* %2752, %nyx_string* %2754)
  br i1 %2755, label %then862, label %else863
then862:
  %2756 = load { i64, i8* }*, { i64, i8* }** %2676
  %2757 = call i64 @nyx_array_get({ i64, i8* }* %2756, i64 1)
  %2758 = inttoptr i64 %2757 to { i64, i8* }*
  %2759 = alloca { i64, i8* }*
  store { i64, i8* }* %2758, { i64, i8* }** %2759
  %2760 = alloca i64
  store i64 0, i64* %2760
  %2761 = call i8* @llvm.stacksave()
  br label %while_cond865
while_cond865:
  %2762 = load i64, i64* %2760
  %2763 = load { i64, i8* }*, { i64, i8* }** %2759
  %2764 = call i64 @nyx_array_length({ i64, i8* }* %2763)
  %2765 = icmp slt i64 %2762, %2764
  br i1 %2765, label %while_body866, label %while_end867
while_body866:
  call void @llvm.stackrestore(i8* %2761)
  %2766 = load { i64, i8* }*, { i64, i8* }** %2759
  %2767 = load i64, i64* %2760
  %2768 = call i64 @nyx_array_get({ i64, i8* }* %2766, i64 %2767)
  %2769 = inttoptr i64 %2768 to { i64, i8* }*
  %2770 = alloca { i64, i8* }*
  store { i64, i8* }* %2769, { i64, i8* }** %2770
  %2771 = load i64, i64* %id.ptr
  %2772 = load { i64, i8* }*, { i64, i8* }** %2770
  %2773 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2774 = call i1 @occurs_check(i64 %2771, { i64, i8* }* %2772, { i64, i8* }* %2773)
  br i1 %2774, label %then868, label %else869
then868:
  ret i1 1
else869:
  br label %merge870
merge870:
  %2775 = load i64, i64* %2760
  %2776 = add i64 %2775, 1
  store i64 %2776, i64* %2760
  br label %while_cond865
while_end867:
  %2777 = load { i64, i8* }*, { i64, i8* }** %2676
  %2778 = call i64 @nyx_array_get({ i64, i8* }* %2777, i64 2)
  %2779 = inttoptr i64 %2778 to { i64, i8* }*
  %2780 = alloca { i64, i8* }*
  store { i64, i8* }* %2779, { i64, i8* }** %2780
  %2781 = load i64, i64* %id.ptr
  %2782 = load { i64, i8* }*, { i64, i8* }** %2780
  %2783 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2784 = call i1 @occurs_check(i64 %2781, { i64, i8* }* %2782, { i64, i8* }* %2783)
  ret i1 %2784
else863:
  br label %merge864
merge864:
  %2785 = alloca i1
  store i1 true, i1* %2785
  %2786 = load %nyx_string*, %nyx_string** %2679
  %2787 = getelementptr [9 x i8], [9 x i8]* @.str265, i32 0, i32 0
  %2788 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str265.c, i8* %2787)
  %2789 = call i1 @nyx_string_equals(%nyx_string* %2786, %nyx_string* %2788)
  br i1 %2789, label %sc_or_end872, label %sc_or_rhs871
sc_or_rhs871:
  %2790 = load %nyx_string*, %nyx_string** %2679
  %2791 = getelementptr [7 x i8], [7 x i8]* @.str266, i32 0, i32 0
  %2792 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str266.c, i8* %2791)
  %2793 = call i1 @nyx_string_equals(%nyx_string* %2790, %nyx_string* %2792)
  store i1 %2793, i1* %2785
  br label %sc_or_end872
sc_or_end872:
  %2794 = load i1, i1* %2785
  br i1 %2794, label %then873, label %else874
then873:
  %2795 = load { i64, i8* }*, { i64, i8* }** %2676
  %2796 = call i64 @nyx_array_get({ i64, i8* }* %2795, i64 2)
  %2797 = inttoptr i64 %2796 to { i64, i8* }*
  %2798 = alloca { i64, i8* }*
  store { i64, i8* }* %2797, { i64, i8* }** %2798
  %2799 = alloca i64
  store i64 0, i64* %2799
  %2800 = call i8* @llvm.stacksave()
  br label %while_cond876
while_cond876:
  %2801 = load i64, i64* %2799
  %2802 = load { i64, i8* }*, { i64, i8* }** %2798
  %2803 = call i64 @nyx_array_length({ i64, i8* }* %2802)
  %2804 = icmp slt i64 %2801, %2803
  br i1 %2804, label %while_body877, label %while_end878
while_body877:
  call void @llvm.stackrestore(i8* %2800)
  %2805 = load { i64, i8* }*, { i64, i8* }** %2798
  %2806 = load i64, i64* %2799
  %2807 = call i64 @nyx_array_get({ i64, i8* }* %2805, i64 %2806)
  %2808 = inttoptr i64 %2807 to { i64, i8* }*
  %2809 = alloca { i64, i8* }*
  store { i64, i8* }* %2808, { i64, i8* }** %2809
  %2810 = load i64, i64* %id.ptr
  %2811 = load { i64, i8* }*, { i64, i8* }** %2809
  %2812 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2813 = call i1 @occurs_check(i64 %2810, { i64, i8* }* %2811, { i64, i8* }* %2812)
  br i1 %2813, label %then879, label %else880
then879:
  ret i1 1
else880:
  br label %merge881
merge881:
  %2814 = load i64, i64* %2799
  %2815 = add i64 %2814, 1
  store i64 %2815, i64* %2799
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
  %2816 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2817 = load { i64, i8* }*, { i64, i8* }** %a.ptr
  %2818 = call { i64, i8* }* @subst_resolve({ i64, i8* }* %2816, { i64, i8* }* %2817)
  %2819 = alloca { i64, i8* }*
  store { i64, i8* }* %2818, { i64, i8* }** %2819
  %2820 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2821 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %2822 = call { i64, i8* }* @subst_resolve({ i64, i8* }* %2820, { i64, i8* }* %2821)
  %2823 = alloca { i64, i8* }*
  store { i64, i8* }* %2822, { i64, i8* }** %2823
  %2824 = load { i64, i8* }*, { i64, i8* }** %2819
  %2825 = call %nyx_string* @ty_kind({ i64, i8* }* %2824)
  %2826 = alloca %nyx_string*
  store %nyx_string* %2825, %nyx_string** %2826
  %2827 = load { i64, i8* }*, { i64, i8* }** %2823
  %2828 = call %nyx_string* @ty_kind({ i64, i8* }* %2827)
  %2829 = alloca %nyx_string*
  store %nyx_string* %2828, %nyx_string** %2829
  %2830 = load %nyx_string*, %nyx_string** %2826
  %2831 = getelementptr [10 x i8], [10 x i8]* @.str267, i32 0, i32 0
  %2832 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str267.c, i8* %2831)
  %2833 = call i1 @nyx_string_equals(%nyx_string* %2830, %nyx_string* %2832)
  br i1 %2833, label %then882, label %else883
then882:
  ret i1 1
else883:
  br label %merge884
merge884:
  %2834 = load %nyx_string*, %nyx_string** %2829
  %2835 = getelementptr [10 x i8], [10 x i8]* @.str268, i32 0, i32 0
  %2836 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str268.c, i8* %2835)
  %2837 = call i1 @nyx_string_equals(%nyx_string* %2834, %nyx_string* %2836)
  br i1 %2837, label %then885, label %else886
then885:
  ret i1 1
else886:
  br label %merge887
merge887:
  %2838 = load %nyx_string*, %nyx_string** %2826
  %2839 = getelementptr [6 x i8], [6 x i8]* @.str269, i32 0, i32 0
  %2840 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str269.c, i8* %2839)
  %2841 = call i1 @nyx_string_equals(%nyx_string* %2838, %nyx_string* %2840)
  br i1 %2841, label %then888, label %else889
then888:
  ret i1 1
else889:
  br label %merge890
merge890:
  %2842 = load %nyx_string*, %nyx_string** %2829
  %2843 = getelementptr [6 x i8], [6 x i8]* @.str270, i32 0, i32 0
  %2844 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str270.c, i8* %2843)
  %2845 = call i1 @nyx_string_equals(%nyx_string* %2842, %nyx_string* %2844)
  br i1 %2845, label %then891, label %else892
then891:
  ret i1 1
else892:
  br label %merge893
merge893:
  %2846 = load %nyx_string*, %nyx_string** %2826
  %2847 = getelementptr [10 x i8], [10 x i8]* @.str271, i32 0, i32 0
  %2848 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str271.c, i8* %2847)
  %2849 = call i1 @nyx_string_equals(%nyx_string* %2846, %nyx_string* %2848)
  br i1 %2849, label %then894, label %else895
then894:
  ret i1 1
else895:
  br label %merge896
merge896:
  %2850 = load %nyx_string*, %nyx_string** %2829
  %2851 = getelementptr [10 x i8], [10 x i8]* @.str272, i32 0, i32 0
  %2852 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str272.c, i8* %2851)
  %2853 = call i1 @nyx_string_equals(%nyx_string* %2850, %nyx_string* %2852)
  br i1 %2853, label %then897, label %else898
then897:
  ret i1 1
else898:
  br label %merge899
merge899:
  %2854 = load %nyx_string*, %nyx_string** %2826
  %2855 = getelementptr [6 x i8], [6 x i8]* @.str273, i32 0, i32 0
  %2856 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str273.c, i8* %2855)
  %2857 = call i1 @nyx_string_equals(%nyx_string* %2854, %nyx_string* %2856)
  br i1 %2857, label %then900, label %else901
then900:
  %2858 = load { i64, i8* }*, { i64, i8* }** %2819
  %2859 = call i64 @nyx_array_get({ i64, i8* }* %2858, i64 1)
  %2860 = alloca i64
  store i64 %2859, i64* %2860
  %2861 = load %nyx_string*, %nyx_string** %2829
  %2862 = getelementptr [6 x i8], [6 x i8]* @.str274, i32 0, i32 0
  %2863 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str274.c, i8* %2862)
  %2864 = call i1 @nyx_string_equals(%nyx_string* %2861, %nyx_string* %2863)
  br i1 %2864, label %then903, label %else904
then903:
  %2865 = load { i64, i8* }*, { i64, i8* }** %2823
  %2866 = call i64 @nyx_array_get({ i64, i8* }* %2865, i64 1)
  %2867 = alloca i64
  store i64 %2866, i64* %2867
  %2868 = load i64, i64* %2860
  %2869 = load i64, i64* %2867
  %2870 = icmp eq i64 %2868, %2869
  br i1 %2870, label %then906, label %else907
then906:
  ret i1 1
else907:
  br label %merge908
merge908:
  %2871 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2872 = load i64, i64* %2860
  %2873 = load { i64, i8* }*, { i64, i8* }** %2823
  %2874 = call i64 @subst_bind({ i64, i8* }* %2871, i64 %2872, { i64, i8* }* %2873)
  ret i1 1
else904:
  br label %merge905
merge905:
  %2875 = load i64, i64* %2860
  %2876 = load { i64, i8* }*, { i64, i8* }** %2823
  %2877 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2878 = call i1 @occurs_check(i64 %2875, { i64, i8* }* %2876, { i64, i8* }* %2877)
  br i1 %2878, label %then909, label %else910
then909:
  ret i1 0
else910:
  br label %merge911
merge911:
  %2879 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2880 = load i64, i64* %2860
  %2881 = load { i64, i8* }*, { i64, i8* }** %2823
  %2882 = call i64 @subst_bind({ i64, i8* }* %2879, i64 %2880, { i64, i8* }* %2881)
  ret i1 1
else901:
  br label %merge902
merge902:
  %2883 = load %nyx_string*, %nyx_string** %2829
  %2884 = getelementptr [6 x i8], [6 x i8]* @.str275, i32 0, i32 0
  %2885 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str275.c, i8* %2884)
  %2886 = call i1 @nyx_string_equals(%nyx_string* %2883, %nyx_string* %2885)
  br i1 %2886, label %then912, label %else913
then912:
  %2887 = load { i64, i8* }*, { i64, i8* }** %2823
  %2888 = call i64 @nyx_array_get({ i64, i8* }* %2887, i64 1)
  %2889 = alloca i64
  store i64 %2888, i64* %2889
  %2890 = load i64, i64* %2889
  %2891 = load { i64, i8* }*, { i64, i8* }** %2819
  %2892 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2893 = call i1 @occurs_check(i64 %2890, { i64, i8* }* %2891, { i64, i8* }* %2892)
  br i1 %2893, label %then915, label %else916
then915:
  ret i1 0
else916:
  br label %merge917
merge917:
  %2894 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2895 = load i64, i64* %2889
  %2896 = load { i64, i8* }*, { i64, i8* }** %2819
  %2897 = call i64 @subst_bind({ i64, i8* }* %2894, i64 %2895, { i64, i8* }* %2896)
  ret i1 1
else913:
  br label %merge914
merge914:
  %2898 = load %nyx_string*, %nyx_string** %2826
  %2899 = load %nyx_string*, %nyx_string** %2829
  %2900 = call i1 @nyx_string_equals(%nyx_string* %2898, %nyx_string* %2899)
  br i1 %2900, label %then918, label %else919
then918:
  %2901 = alloca i1
  store i1 true, i1* %2901
  %2902 = alloca i1
  store i1 true, i1* %2902
  %2903 = alloca i1
  store i1 true, i1* %2903
  %2904 = alloca i1
  store i1 true, i1* %2904
  %2905 = load %nyx_string*, %nyx_string** %2826
  %2906 = getelementptr [8 x i8], [8 x i8]* @.str276, i32 0, i32 0
  %2907 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str276.c, i8* %2906)
  %2908 = call i1 @nyx_string_equals(%nyx_string* %2905, %nyx_string* %2907)
  br i1 %2908, label %sc_or_end922, label %sc_or_rhs921
sc_or_rhs921:
  %2909 = load %nyx_string*, %nyx_string** %2826
  %2910 = getelementptr [9 x i8], [9 x i8]* @.str277, i32 0, i32 0
  %2911 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str277.c, i8* %2910)
  %2912 = call i1 @nyx_string_equals(%nyx_string* %2909, %nyx_string* %2911)
  store i1 %2912, i1* %2904
  br label %sc_or_end922
sc_or_end922:
  %2913 = load i1, i1* %2904
  br i1 %2913, label %sc_or_end924, label %sc_or_rhs923
sc_or_rhs923:
  %2914 = load %nyx_string*, %nyx_string** %2826
  %2915 = getelementptr [6 x i8], [6 x i8]* @.str278, i32 0, i32 0
  %2916 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str278.c, i8* %2915)
  %2917 = call i1 @nyx_string_equals(%nyx_string* %2914, %nyx_string* %2916)
  store i1 %2917, i1* %2903
  br label %sc_or_end924
sc_or_end924:
  %2918 = load i1, i1* %2903
  br i1 %2918, label %sc_or_end926, label %sc_or_rhs925
sc_or_rhs925:
  %2919 = load %nyx_string*, %nyx_string** %2826
  %2920 = getelementptr [6 x i8], [6 x i8]* @.str279, i32 0, i32 0
  %2921 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str279.c, i8* %2920)
  %2922 = call i1 @nyx_string_equals(%nyx_string* %2919, %nyx_string* %2921)
  store i1 %2922, i1* %2902
  br label %sc_or_end926
sc_or_end926:
  %2923 = load i1, i1* %2902
  br i1 %2923, label %sc_or_end928, label %sc_or_rhs927
sc_or_rhs927:
  %2924 = load %nyx_string*, %nyx_string** %2826
  %2925 = getelementptr [9 x i8], [9 x i8]* @.str280, i32 0, i32 0
  %2926 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str280.c, i8* %2925)
  %2927 = call i1 @nyx_string_equals(%nyx_string* %2924, %nyx_string* %2926)
  store i1 %2927, i1* %2901
  br label %sc_or_end928
sc_or_end928:
  %2928 = load i1, i1* %2901
  br i1 %2928, label %then929, label %else930
then929:
  %2929 = load { i64, i8* }*, { i64, i8* }** %2819
  %2930 = call i64 @nyx_array_get({ i64, i8* }* %2929, i64 1)
  %2931 = inttoptr i64 %2930 to { i64, i8* }*
  %2932 = alloca { i64, i8* }*
  store { i64, i8* }* %2931, { i64, i8* }** %2932
  %2933 = load { i64, i8* }*, { i64, i8* }** %2823
  %2934 = call i64 @nyx_array_get({ i64, i8* }* %2933, i64 1)
  %2935 = inttoptr i64 %2934 to { i64, i8* }*
  %2936 = alloca { i64, i8* }*
  store { i64, i8* }* %2935, { i64, i8* }** %2936
  %2937 = load { i64, i8* }*, { i64, i8* }** %2932
  %2938 = load { i64, i8* }*, { i64, i8* }** %2936
  %2939 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2940 = call i1 @unify_var({ i64, i8* }* %2937, { i64, i8* }* %2938, { i64, i8* }* %2939)
  ret i1 %2940
else930:
  br label %merge931
merge931:
  %2941 = alloca i1
  store i1 true, i1* %2941
  %2942 = load %nyx_string*, %nyx_string** %2826
  %2943 = getelementptr [9 x i8], [9 x i8]* @.str281, i32 0, i32 0
  %2944 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str281.c, i8* %2943)
  %2945 = call i1 @nyx_string_equals(%nyx_string* %2942, %nyx_string* %2944)
  br i1 %2945, label %sc_or_end933, label %sc_or_rhs932
sc_or_rhs932:
  %2946 = load %nyx_string*, %nyx_string** %2826
  %2947 = getelementptr [6 x i8], [6 x i8]* @.str282, i32 0, i32 0
  %2948 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str282.c, i8* %2947)
  %2949 = call i1 @nyx_string_equals(%nyx_string* %2946, %nyx_string* %2948)
  store i1 %2949, i1* %2941
  br label %sc_or_end933
sc_or_end933:
  %2950 = load i1, i1* %2941
  br i1 %2950, label %then934, label %else935
then934:
  %2951 = load { i64, i8* }*, { i64, i8* }** %2819
  %2952 = call i64 @nyx_array_get({ i64, i8* }* %2951, i64 1)
  %2953 = inttoptr i64 %2952 to { i64, i8* }*
  %2954 = alloca { i64, i8* }*
  store { i64, i8* }* %2953, { i64, i8* }** %2954
  %2955 = load { i64, i8* }*, { i64, i8* }** %2823
  %2956 = call i64 @nyx_array_get({ i64, i8* }* %2955, i64 1)
  %2957 = inttoptr i64 %2956 to { i64, i8* }*
  %2958 = alloca { i64, i8* }*
  store { i64, i8* }* %2957, { i64, i8* }** %2958
  %2959 = load { i64, i8* }*, { i64, i8* }** %2954
  %2960 = load { i64, i8* }*, { i64, i8* }** %2958
  %2961 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2962 = call i1 @unify_var({ i64, i8* }* %2959, { i64, i8* }* %2960, { i64, i8* }* %2961)
  %2963 = xor i1 %2962, true
  br i1 %2963, label %then937, label %else938
then937:
  ret i1 0
else938:
  br label %merge939
merge939:
  %2964 = load { i64, i8* }*, { i64, i8* }** %2819
  %2965 = call i64 @nyx_array_get({ i64, i8* }* %2964, i64 2)
  %2966 = inttoptr i64 %2965 to { i64, i8* }*
  %2967 = alloca { i64, i8* }*
  store { i64, i8* }* %2966, { i64, i8* }** %2967
  %2968 = load { i64, i8* }*, { i64, i8* }** %2823
  %2969 = call i64 @nyx_array_get({ i64, i8* }* %2968, i64 2)
  %2970 = inttoptr i64 %2969 to { i64, i8* }*
  %2971 = alloca { i64, i8* }*
  store { i64, i8* }* %2970, { i64, i8* }** %2971
  %2972 = load { i64, i8* }*, { i64, i8* }** %2967
  %2973 = load { i64, i8* }*, { i64, i8* }** %2971
  %2974 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %2975 = call i1 @unify_var({ i64, i8* }* %2972, { i64, i8* }* %2973, { i64, i8* }* %2974)
  ret i1 %2975
else935:
  br label %merge936
merge936:
  %2976 = load %nyx_string*, %nyx_string** %2826
  %2977 = getelementptr [5 x i8], [5 x i8]* @.str283, i32 0, i32 0
  %2978 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str283.c, i8* %2977)
  %2979 = call i1 @nyx_string_equals(%nyx_string* %2976, %nyx_string* %2978)
  br i1 %2979, label %then940, label %else941
then940:
  %2980 = load { i64, i8* }*, { i64, i8* }** %2819
  %2981 = call i64 @nyx_array_get({ i64, i8* }* %2980, i64 1)
  %2982 = inttoptr i64 %2981 to { i64, i8* }*
  %2983 = alloca { i64, i8* }*
  store { i64, i8* }* %2982, { i64, i8* }** %2983
  %2984 = load { i64, i8* }*, { i64, i8* }** %2823
  %2985 = call i64 @nyx_array_get({ i64, i8* }* %2984, i64 1)
  %2986 = inttoptr i64 %2985 to { i64, i8* }*
  %2987 = alloca { i64, i8* }*
  store { i64, i8* }* %2986, { i64, i8* }** %2987
  %2988 = load { i64, i8* }*, { i64, i8* }** %2983
  %2989 = call i64 @nyx_array_length({ i64, i8* }* %2988)
  %2990 = load { i64, i8* }*, { i64, i8* }** %2987
  %2991 = call i64 @nyx_array_length({ i64, i8* }* %2990)
  %2992 = icmp ne i64 %2989, %2991
  br i1 %2992, label %then943, label %else944
then943:
  ret i1 0
else944:
  br label %merge945
merge945:
  %2993 = alloca i64
  store i64 0, i64* %2993
  %2994 = call i8* @llvm.stacksave()
  br label %while_cond946
while_cond946:
  %2995 = load i64, i64* %2993
  %2996 = load { i64, i8* }*, { i64, i8* }** %2983
  %2997 = call i64 @nyx_array_length({ i64, i8* }* %2996)
  %2998 = icmp slt i64 %2995, %2997
  br i1 %2998, label %while_body947, label %while_end948
while_body947:
  call void @llvm.stackrestore(i8* %2994)
  %2999 = load { i64, i8* }*, { i64, i8* }** %2983
  %3000 = load i64, i64* %2993
  %3001 = call i64 @nyx_array_get({ i64, i8* }* %2999, i64 %3000)
  %3002 = inttoptr i64 %3001 to { i64, i8* }*
  %3003 = alloca { i64, i8* }*
  store { i64, i8* }* %3002, { i64, i8* }** %3003
  %3004 = load { i64, i8* }*, { i64, i8* }** %2987
  %3005 = load i64, i64* %2993
  %3006 = call i64 @nyx_array_get({ i64, i8* }* %3004, i64 %3005)
  %3007 = inttoptr i64 %3006 to { i64, i8* }*
  %3008 = alloca { i64, i8* }*
  store { i64, i8* }* %3007, { i64, i8* }** %3008
  %3009 = load { i64, i8* }*, { i64, i8* }** %3003
  %3010 = load { i64, i8* }*, { i64, i8* }** %3008
  %3011 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %3012 = call i1 @unify_var({ i64, i8* }* %3009, { i64, i8* }* %3010, { i64, i8* }* %3011)
  %3013 = xor i1 %3012, true
  br i1 %3013, label %then949, label %else950
then949:
  ret i1 0
else950:
  br label %merge951
merge951:
  %3014 = load i64, i64* %2993
  %3015 = add i64 %3014, 1
  store i64 %3015, i64* %2993
  br label %while_cond946
while_end948:
  %3016 = load { i64, i8* }*, { i64, i8* }** %2819
  %3017 = call i64 @nyx_array_get({ i64, i8* }* %3016, i64 2)
  %3018 = inttoptr i64 %3017 to { i64, i8* }*
  %3019 = alloca { i64, i8* }*
  store { i64, i8* }* %3018, { i64, i8* }** %3019
  %3020 = load { i64, i8* }*, { i64, i8* }** %2823
  %3021 = call i64 @nyx_array_get({ i64, i8* }* %3020, i64 2)
  %3022 = inttoptr i64 %3021 to { i64, i8* }*
  %3023 = alloca { i64, i8* }*
  store { i64, i8* }* %3022, { i64, i8* }** %3023
  %3024 = load { i64, i8* }*, { i64, i8* }** %3019
  %3025 = load { i64, i8* }*, { i64, i8* }** %3023
  %3026 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %3027 = call i1 @unify_var({ i64, i8* }* %3024, { i64, i8* }* %3025, { i64, i8* }* %3026)
  ret i1 %3027
else941:
  br label %merge942
merge942:
  %3028 = alloca i1
  store i1 true, i1* %3028
  %3029 = load %nyx_string*, %nyx_string** %2826
  %3030 = getelementptr [9 x i8], [9 x i8]* @.str284, i32 0, i32 0
  %3031 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str284.c, i8* %3030)
  %3032 = call i1 @nyx_string_equals(%nyx_string* %3029, %nyx_string* %3031)
  br i1 %3032, label %sc_or_end953, label %sc_or_rhs952
sc_or_rhs952:
  %3033 = load %nyx_string*, %nyx_string** %2826
  %3034 = getelementptr [7 x i8], [7 x i8]* @.str285, i32 0, i32 0
  %3035 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str285.c, i8* %3034)
  %3036 = call i1 @nyx_string_equals(%nyx_string* %3033, %nyx_string* %3035)
  store i1 %3036, i1* %3028
  br label %sc_or_end953
sc_or_end953:
  %3037 = load i1, i1* %3028
  br i1 %3037, label %then954, label %else955
then954:
  %3038 = load { i64, i8* }*, { i64, i8* }** %2819
  %3039 = call i64 @nyx_array_get_checked({ i64, i8* }* %3038, i64 1, i64 2)
  %3040 = inttoptr i64 %3039 to %nyx_string*
  %3041 = alloca %nyx_string*
  store %nyx_string* %3040, %nyx_string** %3041
  %3042 = load { i64, i8* }*, { i64, i8* }** %2823
  %3043 = call i64 @nyx_array_get_checked({ i64, i8* }* %3042, i64 1, i64 2)
  %3044 = inttoptr i64 %3043 to %nyx_string*
  %3045 = alloca %nyx_string*
  store %nyx_string* %3044, %nyx_string** %3045
  %3046 = load %nyx_string*, %nyx_string** %3041
  %3047 = load %nyx_string*, %nyx_string** %3045
  %3048 = call i1 @nyx_string_equals(%nyx_string* %3046, %nyx_string* %3047)
  %3049 = xor i1 %3048, true
  br i1 %3049, label %then957, label %else958
then957:
  ret i1 0
else958:
  br label %merge959
merge959:
  %3050 = load { i64, i8* }*, { i64, i8* }** %2819
  %3051 = call i64 @nyx_array_get({ i64, i8* }* %3050, i64 2)
  %3052 = inttoptr i64 %3051 to { i64, i8* }*
  %3053 = alloca { i64, i8* }*
  store { i64, i8* }* %3052, { i64, i8* }** %3053
  %3054 = load { i64, i8* }*, { i64, i8* }** %2823
  %3055 = call i64 @nyx_array_get({ i64, i8* }* %3054, i64 2)
  %3056 = inttoptr i64 %3055 to { i64, i8* }*
  %3057 = alloca { i64, i8* }*
  store { i64, i8* }* %3056, { i64, i8* }** %3057
  %3058 = load { i64, i8* }*, { i64, i8* }** %3053
  %3059 = call i64 @nyx_array_length({ i64, i8* }* %3058)
  %3060 = icmp eq i64 %3059, 0
  br i1 %3060, label %then960, label %else961
then960:
  ret i1 1
else961:
  br label %merge962
merge962:
  %3061 = load { i64, i8* }*, { i64, i8* }** %3057
  %3062 = call i64 @nyx_array_length({ i64, i8* }* %3061)
  %3063 = icmp eq i64 %3062, 0
  br i1 %3063, label %then963, label %else964
then963:
  ret i1 1
else964:
  br label %merge965
merge965:
  %3064 = load { i64, i8* }*, { i64, i8* }** %3053
  %3065 = call i64 @nyx_array_length({ i64, i8* }* %3064)
  %3066 = load { i64, i8* }*, { i64, i8* }** %3057
  %3067 = call i64 @nyx_array_length({ i64, i8* }* %3066)
  %3068 = icmp ne i64 %3065, %3067
  br i1 %3068, label %then966, label %else967
then966:
  ret i1 0
else967:
  br label %merge968
merge968:
  %3069 = alloca i64
  store i64 0, i64* %3069
  %3070 = call i8* @llvm.stacksave()
  br label %while_cond969
while_cond969:
  %3071 = load i64, i64* %3069
  %3072 = load { i64, i8* }*, { i64, i8* }** %3053
  %3073 = call i64 @nyx_array_length({ i64, i8* }* %3072)
  %3074 = icmp slt i64 %3071, %3073
  br i1 %3074, label %while_body970, label %while_end971
while_body970:
  call void @llvm.stackrestore(i8* %3070)
  %3075 = load { i64, i8* }*, { i64, i8* }** %3053
  %3076 = load i64, i64* %3069
  %3077 = call i64 @nyx_array_get({ i64, i8* }* %3075, i64 %3076)
  %3078 = inttoptr i64 %3077 to { i64, i8* }*
  %3079 = alloca { i64, i8* }*
  store { i64, i8* }* %3078, { i64, i8* }** %3079
  %3080 = load { i64, i8* }*, { i64, i8* }** %3057
  %3081 = load i64, i64* %3069
  %3082 = call i64 @nyx_array_get({ i64, i8* }* %3080, i64 %3081)
  %3083 = inttoptr i64 %3082 to { i64, i8* }*
  %3084 = alloca { i64, i8* }*
  store { i64, i8* }* %3083, { i64, i8* }** %3084
  %3085 = load { i64, i8* }*, { i64, i8* }** %3079
  %3086 = load { i64, i8* }*, { i64, i8* }** %3084
  %3087 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %3088 = call i1 @unify_var({ i64, i8* }* %3085, { i64, i8* }* %3086, { i64, i8* }* %3087)
  %3089 = xor i1 %3088, true
  br i1 %3089, label %then972, label %else973
then972:
  ret i1 0
else973:
  br label %merge974
merge974:
  %3090 = load i64, i64* %3069
  %3091 = add i64 %3090, 1
  store i64 %3091, i64* %3069
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
  %3092 = load { i64, i8* }*, { i64, i8* }** %2819
  %3093 = load { i64, i8* }*, { i64, i8* }** %2823
  %3094 = call i1 @ty_eq({ i64, i8* }* %3092, { i64, i8* }* %3093)
  ret i1 %3094
}

define { i64, i8* }* @freshen_params(
{ i64, i8* }* %param_names.param, { i64, i8* }* %id_counter.param) {
  %param_names.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %param_names.param, { i64, i8* }** %param_names.ptr
  %id_counter.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %id_counter.param, { i64, i8* }** %id_counter.ptr
  %3095 = call { i64, i8* }* @nyx_array_new_ptr()
  %3096 = alloca { i64, i8* }*
  store { i64, i8* }* %3095, { i64, i8* }** %3096
  %3097 = call { i64, i8* }* @nyx_array_new_ptr()
  %3098 = alloca { i64, i8* }*
  store { i64, i8* }* %3097, { i64, i8* }** %3098
  %3099 = alloca i64
  store i64 0, i64* %3099
  %3100 = call i8* @llvm.stacksave()
  br label %while_cond975
while_cond975:
  %3101 = load i64, i64* %3099
  %3102 = load { i64, i8* }*, { i64, i8* }** %param_names.ptr
  %3103 = call i64 @nyx_array_length({ i64, i8* }* %3102)
  %3104 = icmp slt i64 %3101, %3103
  br i1 %3104, label %while_body976, label %while_end977
while_body976:
  call void @llvm.stackrestore(i8* %3100)
  %3105 = load { i64, i8* }*, { i64, i8* }** %param_names.ptr
  %3106 = load i64, i64* %3099
  %3107 = call i64 @nyx_array_get_checked({ i64, i8* }* %3105, i64 %3106, i64 2)
  %3108 = inttoptr i64 %3107 to %nyx_string*
  %3109 = alloca %nyx_string*
  store %nyx_string* %3108, %nyx_string** %3109
  %3110 = load { i64, i8* }*, { i64, i8* }** %id_counter.ptr
  %3111 = call i64 @nyx_array_get({ i64, i8* }* %3110, i64 0)
  %3112 = alloca i64
  store i64 %3111, i64* %3112
  %3113 = load { i64, i8* }*, { i64, i8* }** %3096
  %3114 = load %nyx_string*, %nyx_string** %3109
  %3115 = ptrtoint %nyx_string* %3114 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3113, i64 %3115, i64 2)
  %3116 = load { i64, i8* }*, { i64, i8* }** %3098
  %3117 = load i64, i64* %3112
  %3118 = call { i64, i8* }* @ty_var(i64 %3117)
  %3119 = ptrtoint { i64, i8* }* %3118 to i64
  call void @nyx_array_push({ i64, i8* }* %3116, i64 %3119)
  %3120 = load { i64, i8* }*, { i64, i8* }** %id_counter.ptr
  %3121 = load i64, i64* %3112
  %3122 = add i64 %3121, 1
  call void @nyx_array_set({ i64, i8* }* %3120, i64 0, i64 %3122)
  %3123 = load i64, i64* %3099
  %3124 = add i64 %3123, 1
  store i64 %3124, i64* %3099
  br label %while_cond975
while_end977:
  %3125 = call { i64, i8* }* @nyx_array_new_ptr()
  %3126 = load { i64, i8* }*, { i64, i8* }** %3096
  %3127 = bitcast { i64, i8* }* %3126 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %3125, i8* %3127)
  %3128 = load { i64, i8* }*, { i64, i8* }** %3098
  %3129 = bitcast { i64, i8* }* %3128 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %3125, i8* %3129)
  ret { i64, i8* }* %3125
}

define { i64, i8* }* @known_primitive_names(
) {
  %3130 = call { i64, i8* }* @nyx_array_new_ptr()
  %3131 = getelementptr [4 x i8], [4 x i8]* @.str286, i32 0, i32 0
  %3132 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str286.c, i8* %3131)
  %3133 = ptrtoint %nyx_string* %3132 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3130, i64 %3133, i64 2)
  %3134 = getelementptr [6 x i8], [6 x i8]* @.str287, i32 0, i32 0
  %3135 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str287.c, i8* %3134)
  %3136 = ptrtoint %nyx_string* %3135 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3130, i64 %3136, i64 2)
  %3137 = getelementptr [5 x i8], [5 x i8]* @.str288, i32 0, i32 0
  %3138 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str288.c, i8* %3137)
  %3139 = ptrtoint %nyx_string* %3138 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3130, i64 %3139, i64 2)
  %3140 = getelementptr [7 x i8], [7 x i8]* @.str289, i32 0, i32 0
  %3141 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str289.c, i8* %3140)
  %3142 = ptrtoint %nyx_string* %3141 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3130, i64 %3142, i64 2)
  %3143 = getelementptr [5 x i8], [5 x i8]* @.str290, i32 0, i32 0
  %3144 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str290.c, i8* %3143)
  %3145 = ptrtoint %nyx_string* %3144 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3130, i64 %3145, i64 2)
  %3146 = getelementptr [5 x i8], [5 x i8]* @.str291, i32 0, i32 0
  %3147 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str291.c, i8* %3146)
  %3148 = ptrtoint %nyx_string* %3147 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3130, i64 %3148, i64 2)
  %3149 = getelementptr [3 x i8], [3 x i8]* @.str292, i32 0, i32 0
  %3150 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str292.c, i8* %3149)
  %3151 = ptrtoint %nyx_string* %3150 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3130, i64 %3151, i64 2)
  %3152 = getelementptr [4 x i8], [4 x i8]* @.str293, i32 0, i32 0
  %3153 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str293.c, i8* %3152)
  %3154 = ptrtoint %nyx_string* %3153 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3130, i64 %3154, i64 2)
  %3155 = getelementptr [4 x i8], [4 x i8]* @.str294, i32 0, i32 0
  %3156 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str294.c, i8* %3155)
  %3157 = ptrtoint %nyx_string* %3156 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3130, i64 %3157, i64 2)
  %3158 = getelementptr [4 x i8], [4 x i8]* @.str295, i32 0, i32 0
  %3159 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str295.c, i8* %3158)
  %3160 = ptrtoint %nyx_string* %3159 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3130, i64 %3160, i64 2)
  %3161 = getelementptr [3 x i8], [3 x i8]* @.str296, i32 0, i32 0
  %3162 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str296.c, i8* %3161)
  %3163 = ptrtoint %nyx_string* %3162 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3130, i64 %3163, i64 2)
  %3164 = getelementptr [4 x i8], [4 x i8]* @.str297, i32 0, i32 0
  %3165 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str297.c, i8* %3164)
  %3166 = ptrtoint %nyx_string* %3165 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3130, i64 %3166, i64 2)
  %3167 = getelementptr [4 x i8], [4 x i8]* @.str298, i32 0, i32 0
  %3168 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str298.c, i8* %3167)
  %3169 = ptrtoint %nyx_string* %3168 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3130, i64 %3169, i64 2)
  %3170 = getelementptr [4 x i8], [4 x i8]* @.str299, i32 0, i32 0
  %3171 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str299.c, i8* %3170)
  %3172 = ptrtoint %nyx_string* %3171 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3130, i64 %3172, i64 2)
  %3173 = getelementptr [4 x i8], [4 x i8]* @.str300, i32 0, i32 0
  %3174 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str300.c, i8* %3173)
  %3175 = ptrtoint %nyx_string* %3174 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3130, i64 %3175, i64 2)
  %3176 = getelementptr [6 x i8], [6 x i8]* @.str301, i32 0, i32 0
  %3177 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str301.c, i8* %3176)
  %3178 = ptrtoint %nyx_string* %3177 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3130, i64 %3178, i64 2)
  %3179 = getelementptr [6 x i8], [6 x i8]* @.str302, i32 0, i32 0
  %3180 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str302.c, i8* %3179)
  %3181 = ptrtoint %nyx_string* %3180 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3130, i64 %3181, i64 2)
  %3182 = getelementptr [7 x i8], [7 x i8]* @.str303, i32 0, i32 0
  %3183 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str303.c, i8* %3182)
  %3184 = ptrtoint %nyx_string* %3183 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3130, i64 %3184, i64 2)
  %3185 = getelementptr [7 x i8], [7 x i8]* @.str304, i32 0, i32 0
  %3186 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str304.c, i8* %3185)
  %3187 = ptrtoint %nyx_string* %3186 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3130, i64 %3187, i64 2)
  %3188 = getelementptr [4 x i8], [4 x i8]* @.str305, i32 0, i32 0
  %3189 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str305.c, i8* %3188)
  %3190 = ptrtoint %nyx_string* %3189 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3130, i64 %3190, i64 2)
  %3191 = getelementptr [14 x i8], [14 x i8]* @.str306, i32 0, i32 0
  %3192 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str306.c, i8* %3191)
  %3193 = ptrtoint %nyx_string* %3192 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3130, i64 %3193, i64 2)
  %3194 = getelementptr [9 x i8], [9 x i8]* @.str307, i32 0, i32 0
  %3195 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str307.c, i8* %3194)
  %3196 = ptrtoint %nyx_string* %3195 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3130, i64 %3196, i64 2)
  %3197 = getelementptr [8 x i8], [8 x i8]* @.str308, i32 0, i32 0
  %3198 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str308.c, i8* %3197)
  %3199 = ptrtoint %nyx_string* %3198 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3130, i64 %3199, i64 2)
  %3200 = getelementptr [5 x i8], [5 x i8]* @.str309, i32 0, i32 0
  %3201 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str309.c, i8* %3200)
  %3202 = ptrtoint %nyx_string* %3201 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3130, i64 %3202, i64 2)
  ret { i64, i8* }* %3130
}


attributes #0 = { returns_twice }

