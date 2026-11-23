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


define { i64, i8* }* @ty_int(
) {
  %t1 = call { i64, i8* }* @nyx_array_new_ptr()
  %t2 = getelementptr [6 x i8], [6 x i8]* @.str0, i32 0, i32 0
  %t3 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str0.c, i8* %t2, i64 5)
  %t4 = ptrtoint %nyx_string* %t3 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1, i64 %t4, i64 2)
  ret { i64, i8* }* %t1
}

define { i64, i8* }* @ty_float(
) {
  %t5 = call { i64, i8* }* @nyx_array_new_ptr()
  %t6 = getelementptr [8 x i8], [8 x i8]* @.str1, i32 0, i32 0
  %t7 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1.c, i8* %t6, i64 7)
  %t8 = ptrtoint %nyx_string* %t7 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t5, i64 %t8, i64 2)
  ret { i64, i8* }* %t5
}

define { i64, i8* }* @ty_bool(
) {
  %t9 = call { i64, i8* }* @nyx_array_new_ptr()
  %t10 = getelementptr [7 x i8], [7 x i8]* @.str2, i32 0, i32 0
  %t11 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str2.c, i8* %t10, i64 6)
  %t12 = ptrtoint %nyx_string* %t11 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t9, i64 %t12, i64 2)
  ret { i64, i8* }* %t9
}

define { i64, i8* }* @ty_string(
) {
  %t13 = call { i64, i8* }* @nyx_array_new_ptr()
  %t14 = getelementptr [9 x i8], [9 x i8]* @.str3, i32 0, i32 0
  %t15 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str3.c, i8* %t14, i64 8)
  %t16 = ptrtoint %nyx_string* %t15 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t13, i64 %t16, i64 2)
  ret { i64, i8* }* %t13
}

define { i64, i8* }* @ty_char(
) {
  %t17 = call { i64, i8* }* @nyx_array_new_ptr()
  %t18 = getelementptr [7 x i8], [7 x i8]* @.str4, i32 0, i32 0
  %t19 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str4.c, i8* %t18, i64 6)
  %t20 = ptrtoint %nyx_string* %t19 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t17, i64 %t20, i64 2)
  ret { i64, i8* }* %t17
}

define { i64, i8* }* @ty_unit(
) {
  %t21 = call { i64, i8* }* @nyx_array_new_ptr()
  %t22 = getelementptr [7 x i8], [7 x i8]* @.str5, i32 0, i32 0
  %t23 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str5.c, i8* %t22, i64 6)
  %t24 = ptrtoint %nyx_string* %t23 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t21, i64 %t24, i64 2)
  ret { i64, i8* }* %t21
}

define { i64, i8* }* @ty_unknown(
) {
  %t25 = call { i64, i8* }* @nyx_array_new_ptr()
  %t26 = getelementptr [10 x i8], [10 x i8]* @.str6, i32 0, i32 0
  %t27 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str6.c, i8* %t26, i64 9)
  %t28 = ptrtoint %nyx_string* %t27 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t25, i64 %t28, i64 2)
  ret { i64, i8* }* %t25
}

define { i64, i8* }* @ty_array(
{ i64, i8* }* %inner.param) {
  %inner.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %inner.param, { i64, i8* }** %inner.ptr
  %t29 = call { i64, i8* }* @nyx_array_new_ptr()
  %t30 = getelementptr [8 x i8], [8 x i8]* @.str7, i32 0, i32 0
  %t31 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str7.c, i8* %t30, i64 7)
  %t32 = ptrtoint %nyx_string* %t31 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t29, i64 %t32, i64 2)
  %t33 = load { i64, i8* }*, { i64, i8* }** %inner.ptr
  %t34 = ptrtoint { i64, i8* }* %t33 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t29, i64 %t34, i64 5)
  ret { i64, i8* }* %t29
}

define { i64, i8* }* @ty_option(
{ i64, i8* }* %inner.param) {
  %inner.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %inner.param, { i64, i8* }** %inner.ptr
  %t35 = call { i64, i8* }* @nyx_array_new_ptr()
  %t36 = getelementptr [9 x i8], [9 x i8]* @.str8, i32 0, i32 0
  %t37 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str8.c, i8* %t36, i64 8)
  %t38 = ptrtoint %nyx_string* %t37 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t35, i64 %t38, i64 2)
  %t39 = load { i64, i8* }*, { i64, i8* }** %inner.ptr
  %t40 = ptrtoint { i64, i8* }* %t39 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t35, i64 %t40, i64 5)
  ret { i64, i8* }* %t35
}

define { i64, i8* }* @ty_result(
{ i64, i8* }* %ok.param, { i64, i8* }* %err.param) {
  %ok.ptr = alloca { i64, i8* }*
  %err.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ok.param, { i64, i8* }** %ok.ptr
  store { i64, i8* }* %err.param, { i64, i8* }** %err.ptr
  %t41 = call { i64, i8* }* @nyx_array_new_ptr()
  %t42 = getelementptr [9 x i8], [9 x i8]* @.str9, i32 0, i32 0
  %t43 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str9.c, i8* %t42, i64 8)
  %t44 = ptrtoint %nyx_string* %t43 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t41, i64 %t44, i64 2)
  %t45 = load { i64, i8* }*, { i64, i8* }** %ok.ptr
  %t46 = ptrtoint { i64, i8* }* %t45 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t41, i64 %t46, i64 5)
  %t47 = load { i64, i8* }*, { i64, i8* }** %err.ptr
  %t48 = ptrtoint { i64, i8* }* %t47 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t41, i64 %t48, i64 5)
  ret { i64, i8* }* %t41
}

define { i64, i8* }* @ty_map(
{ i64, i8* }* %k.param, { i64, i8* }* %v.param) {
  %k.ptr = alloca { i64, i8* }*
  %v.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %k.param, { i64, i8* }** %k.ptr
  store { i64, i8* }* %v.param, { i64, i8* }** %v.ptr
  %t49 = call { i64, i8* }* @nyx_array_new_ptr()
  %t50 = getelementptr [6 x i8], [6 x i8]* @.str10, i32 0, i32 0
  %t51 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str10.c, i8* %t50, i64 5)
  %t52 = ptrtoint %nyx_string* %t51 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t49, i64 %t52, i64 2)
  %t53 = load { i64, i8* }*, { i64, i8* }** %k.ptr
  %t54 = ptrtoint { i64, i8* }* %t53 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t49, i64 %t54, i64 5)
  %t55 = load { i64, i8* }*, { i64, i8* }** %v.ptr
  %t56 = ptrtoint { i64, i8* }* %t55 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t49, i64 %t56, i64 5)
  ret { i64, i8* }* %t49
}

define { i64, i8* }* @ty_ptr(
{ i64, i8* }* %inner.param) {
  %inner.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %inner.param, { i64, i8* }** %inner.ptr
  %t57 = call { i64, i8* }* @nyx_array_new_ptr()
  %t58 = getelementptr [6 x i8], [6 x i8]* @.str11, i32 0, i32 0
  %t59 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str11.c, i8* %t58, i64 5)
  %t60 = ptrtoint %nyx_string* %t59 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t57, i64 %t60, i64 2)
  %t61 = load { i64, i8* }*, { i64, i8* }** %inner.ptr
  %t62 = ptrtoint { i64, i8* }* %t61 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t57, i64 %t62, i64 5)
  ret { i64, i8* }* %t57
}

define { i64, i8* }* @ty_ref(
{ i64, i8* }* %inner.param) {
  %inner.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %inner.param, { i64, i8* }** %inner.ptr
  %t63 = call { i64, i8* }* @nyx_array_new_ptr()
  %t64 = getelementptr [6 x i8], [6 x i8]* @.str12, i32 0, i32 0
  %t65 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str12.c, i8* %t64, i64 5)
  %t66 = ptrtoint %nyx_string* %t65 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t63, i64 %t66, i64 2)
  %t67 = load { i64, i8* }*, { i64, i8* }** %inner.ptr
  %t68 = ptrtoint { i64, i8* }* %t67 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t63, i64 %t68, i64 5)
  %t69 = getelementptr [1 x i8], [1 x i8]* @.str13, i32 0, i32 0
  %t70 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str13.c, i8* %t69, i64 0)
  %t71 = ptrtoint %nyx_string* %t70 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t63, i64 %t71, i64 2)
  ret { i64, i8* }* %t63
}

define { i64, i8* }* @ty_ref_mut(
{ i64, i8* }* %inner.param) {
  %inner.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %inner.param, { i64, i8* }** %inner.ptr
  %t72 = call { i64, i8* }* @nyx_array_new_ptr()
  %t73 = getelementptr [9 x i8], [9 x i8]* @.str14, i32 0, i32 0
  %t74 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str14.c, i8* %t73, i64 8)
  %t75 = ptrtoint %nyx_string* %t74 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t72, i64 %t75, i64 2)
  %t76 = load { i64, i8* }*, { i64, i8* }** %inner.ptr
  %t77 = ptrtoint { i64, i8* }* %t76 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t72, i64 %t77, i64 5)
  %t78 = getelementptr [1 x i8], [1 x i8]* @.str15, i32 0, i32 0
  %t79 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str15.c, i8* %t78, i64 0)
  %t80 = ptrtoint %nyx_string* %t79 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t72, i64 %t80, i64 2)
  ret { i64, i8* }* %t72
}

define { i64, i8* }* @ty_ref_r(
{ i64, i8* }* %inner.param, %nyx_string* %region.param) {
  %inner.ptr = alloca { i64, i8* }*
  %region.ptr = alloca %nyx_string*
  store { i64, i8* }* %inner.param, { i64, i8* }** %inner.ptr
  store %nyx_string* %region.param, %nyx_string** %region.ptr
  %t81 = call { i64, i8* }* @nyx_array_new_ptr()
  %t82 = getelementptr [6 x i8], [6 x i8]* @.str16, i32 0, i32 0
  %t83 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str16.c, i8* %t82, i64 5)
  %t84 = ptrtoint %nyx_string* %t83 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t81, i64 %t84, i64 2)
  %t85 = load { i64, i8* }*, { i64, i8* }** %inner.ptr
  %t86 = ptrtoint { i64, i8* }* %t85 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t81, i64 %t86, i64 5)
  %t87 = load %nyx_string*, %nyx_string** %region.ptr
  %t88 = ptrtoint %nyx_string* %t87 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t81, i64 %t88, i64 2)
  ret { i64, i8* }* %t81
}

define { i64, i8* }* @ty_ref_mut_r(
{ i64, i8* }* %inner.param, %nyx_string* %region.param) {
  %inner.ptr = alloca { i64, i8* }*
  %region.ptr = alloca %nyx_string*
  store { i64, i8* }* %inner.param, { i64, i8* }** %inner.ptr
  store %nyx_string* %region.param, %nyx_string** %region.ptr
  %t89 = call { i64, i8* }* @nyx_array_new_ptr()
  %t90 = getelementptr [9 x i8], [9 x i8]* @.str17, i32 0, i32 0
  %t91 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str17.c, i8* %t90, i64 8)
  %t92 = ptrtoint %nyx_string* %t91 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t89, i64 %t92, i64 2)
  %t93 = load { i64, i8* }*, { i64, i8* }** %inner.ptr
  %t94 = ptrtoint { i64, i8* }* %t93 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t89, i64 %t94, i64 5)
  %t95 = load %nyx_string*, %nyx_string** %region.ptr
  %t96 = ptrtoint %nyx_string* %t95 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t89, i64 %t96, i64 2)
  ret { i64, i8* }* %t89
}

define %nyx_string* @ty_ref_region(
{ i64, i8* }* %t.param) {
  %t.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %t.param, { i64, i8* }** %t.ptr
  %t97 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t98 = call i64 @nyx_array_length({ i64, i8* }* %t97)
  %t99 = icmp sgt i64 %t98, 2
  br i1 %t99, label %then0, label %else1
then0:
  %t100 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t101 = call i64 @nyx_array_get({ i64, i8* }* %t100, i64 2)
  %t102 = inttoptr i64 %t101 to %nyx_string*
  ret %nyx_string* %t102
else1:
  br label %merge2
merge2:
  %t103 = getelementptr [1 x i8], [1 x i8]* @.str18, i32 0, i32 0
  %t104 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str18.c, i8* %t103, i64 0)
  ret %nyx_string* %t104
}

define { i64, i8* }* @ty_fn(
{ i64, i8* }* %params.param, { i64, i8* }* %ret.param) {
  %params.ptr = alloca { i64, i8* }*
  %ret.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %params.param, { i64, i8* }** %params.ptr
  store { i64, i8* }* %ret.param, { i64, i8* }** %ret.ptr
  %t105 = call { i64, i8* }* @nyx_array_new_ptr()
  %t106 = getelementptr [5 x i8], [5 x i8]* @.str19, i32 0, i32 0
  %t107 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str19.c, i8* %t106, i64 4)
  %t108 = ptrtoint %nyx_string* %t107 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t105, i64 %t108, i64 2)
  %t109 = load { i64, i8* }*, { i64, i8* }** %params.ptr
  %t110 = ptrtoint { i64, i8* }* %t109 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t105, i64 %t110, i64 5)
  %t111 = load { i64, i8* }*, { i64, i8* }** %ret.ptr
  %t112 = ptrtoint { i64, i8* }* %t111 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t105, i64 %t112, i64 5)
  ret { i64, i8* }* %t105
}

define { i64, i8* }* @ty_dyn(
%nyx_string* %trait_name.param) {
  %trait_name.ptr = alloca %nyx_string*
  store %nyx_string* %trait_name.param, %nyx_string** %trait_name.ptr
  %t113 = call { i64, i8* }* @nyx_array_new_ptr()
  %t114 = getelementptr [6 x i8], [6 x i8]* @.str20, i32 0, i32 0
  %t115 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str20.c, i8* %t114, i64 5)
  %t116 = ptrtoint %nyx_string* %t115 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t113, i64 %t116, i64 2)
  %t117 = load %nyx_string*, %nyx_string** %trait_name.ptr
  %t118 = ptrtoint %nyx_string* %t117 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t113, i64 %t118, i64 2)
  ret { i64, i8* }* %t113
}

define { i64, i8* }* @ty_struct_ty(
%nyx_string* %name.param, { i64, i8* }* %args.param) {
  %name.ptr = alloca %nyx_string*
  %args.ptr = alloca { i64, i8* }*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  store { i64, i8* }* %args.param, { i64, i8* }** %args.ptr
  %t119 = call { i64, i8* }* @nyx_array_new_ptr()
  %t120 = getelementptr [9 x i8], [9 x i8]* @.str21, i32 0, i32 0
  %t121 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str21.c, i8* %t120, i64 8)
  %t122 = ptrtoint %nyx_string* %t121 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t119, i64 %t122, i64 2)
  %t123 = load %nyx_string*, %nyx_string** %name.ptr
  %t124 = ptrtoint %nyx_string* %t123 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t119, i64 %t124, i64 2)
  %t125 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %t126 = ptrtoint { i64, i8* }* %t125 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t119, i64 %t126, i64 5)
  ret { i64, i8* }* %t119
}

define { i64, i8* }* @ty_enum_ty(
%nyx_string* %name.param, { i64, i8* }* %args.param) {
  %name.ptr = alloca %nyx_string*
  %args.ptr = alloca { i64, i8* }*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  store { i64, i8* }* %args.param, { i64, i8* }** %args.ptr
  %t127 = call { i64, i8* }* @nyx_array_new_ptr()
  %t128 = getelementptr [7 x i8], [7 x i8]* @.str22, i32 0, i32 0
  %t129 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str22.c, i8* %t128, i64 6)
  %t130 = ptrtoint %nyx_string* %t129 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t127, i64 %t130, i64 2)
  %t131 = load %nyx_string*, %nyx_string** %name.ptr
  %t132 = ptrtoint %nyx_string* %t131 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t127, i64 %t132, i64 2)
  %t133 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %t134 = ptrtoint { i64, i8* }* %t133 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t127, i64 %t134, i64 5)
  ret { i64, i8* }* %t127
}

define { i64, i8* }* @ty_generic(
%nyx_string* %param_name.param) {
  %param_name.ptr = alloca %nyx_string*
  store %nyx_string* %param_name.param, %nyx_string** %param_name.ptr
  %t135 = call { i64, i8* }* @nyx_array_new_ptr()
  %t136 = getelementptr [10 x i8], [10 x i8]* @.str23, i32 0, i32 0
  %t137 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str23.c, i8* %t136, i64 9)
  %t138 = ptrtoint %nyx_string* %t137 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t135, i64 %t138, i64 2)
  %t139 = load %nyx_string*, %nyx_string** %param_name.ptr
  %t140 = ptrtoint %nyx_string* %t139 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t135, i64 %t140, i64 2)
  ret { i64, i8* }* %t135
}

define { i64, i8* }* @ty_sized(
%nyx_string* %name.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %t141 = call { i64, i8* }* @nyx_array_new_ptr()
  %t142 = getelementptr [8 x i8], [8 x i8]* @.str24, i32 0, i32 0
  %t143 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str24.c, i8* %t142, i64 7)
  %t144 = ptrtoint %nyx_string* %t143 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t141, i64 %t144, i64 2)
  %t145 = load %nyx_string*, %nyx_string** %name.ptr
  %t146 = ptrtoint %nyx_string* %t145 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t141, i64 %t146, i64 2)
  ret { i64, i8* }* %t141
}

define %nyx_string* @ty_kind(
{ i64, i8* }* %t.param) {
  %t.ptr = alloca { i64, i8* }*
  %t155 = alloca %nyx_string*
  store { i64, i8* }* %t.param, { i64, i8* }** %t.ptr
  %t147 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t148 = call i64 @nyx_array_length({ i64, i8* }* %t147)
  %t149 = icmp eq i64 %t148, 0
  br i1 %t149, label %then3, label %else4
then3:
  %t150 = getelementptr [10 x i8], [10 x i8]* @.str25, i32 0, i32 0
  %t151 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str25.c, i8* %t150, i64 9)
  ret %nyx_string* %t151
else4:
  br label %merge5
merge5:
  %t152 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t153 = call i64 @nyx_array_get_checked({ i64, i8* }* %t152, i64 0, i64 2)
  %t154 = inttoptr i64 %t153 to %nyx_string*
  store %nyx_string* %t154, %nyx_string** %t155
  %t156 = load %nyx_string*, %nyx_string** %t155
  ret %nyx_string* %t156
}

define i1 @ty_is_unknown(
{ i64, i8* }* %t.param) {
  %t.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %t.param, { i64, i8* }** %t.ptr
  %t157 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t158 = call %nyx_string* @ty_kind({ i64, i8* }* %t157)
  %t159 = getelementptr [10 x i8], [10 x i8]* @.str26, i32 0, i32 0
  %t160 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str26.c, i8* %t159, i64 9)
  %t161 = call i1 @nyx_string_equals(%nyx_string* %t158, %nyx_string* %t160)
  ret i1 %t161
}

define internal i1 @is_sized_name(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %t162 = load %nyx_string*, %nyx_string** %s.ptr
  %t163 = getelementptr [3 x i8], [3 x i8]* @.str27, i32 0, i32 0
  %t164 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str27.c, i8* %t163, i64 2)
  %t165 = call i1 @nyx_string_equals(%nyx_string* %t162, %nyx_string* %t164)
  br i1 %t165, label %then6, label %else7
then6:
  ret i1 1
else7:
  br label %merge8
merge8:
  %t166 = load %nyx_string*, %nyx_string** %s.ptr
  %t167 = getelementptr [4 x i8], [4 x i8]* @.str28, i32 0, i32 0
  %t168 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str28.c, i8* %t167, i64 3)
  %t169 = call i1 @nyx_string_equals(%nyx_string* %t166, %nyx_string* %t168)
  br i1 %t169, label %then9, label %else10
then9:
  ret i1 1
else10:
  br label %merge11
merge11:
  %t170 = load %nyx_string*, %nyx_string** %s.ptr
  %t171 = getelementptr [4 x i8], [4 x i8]* @.str29, i32 0, i32 0
  %t172 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str29.c, i8* %t171, i64 3)
  %t173 = call i1 @nyx_string_equals(%nyx_string* %t170, %nyx_string* %t172)
  br i1 %t173, label %then12, label %else13
then12:
  ret i1 1
else13:
  br label %merge14
merge14:
  %t174 = load %nyx_string*, %nyx_string** %s.ptr
  %t175 = getelementptr [4 x i8], [4 x i8]* @.str30, i32 0, i32 0
  %t176 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str30.c, i8* %t175, i64 3)
  %t177 = call i1 @nyx_string_equals(%nyx_string* %t174, %nyx_string* %t176)
  br i1 %t177, label %then15, label %else16
then15:
  ret i1 1
else16:
  br label %merge17
merge17:
  %t178 = load %nyx_string*, %nyx_string** %s.ptr
  %t179 = getelementptr [3 x i8], [3 x i8]* @.str31, i32 0, i32 0
  %t180 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str31.c, i8* %t179, i64 2)
  %t181 = call i1 @nyx_string_equals(%nyx_string* %t178, %nyx_string* %t180)
  br i1 %t181, label %then18, label %else19
then18:
  ret i1 1
else19:
  br label %merge20
merge20:
  %t182 = load %nyx_string*, %nyx_string** %s.ptr
  %t183 = getelementptr [4 x i8], [4 x i8]* @.str32, i32 0, i32 0
  %t184 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str32.c, i8* %t183, i64 3)
  %t185 = call i1 @nyx_string_equals(%nyx_string* %t182, %nyx_string* %t184)
  br i1 %t185, label %then21, label %else22
then21:
  ret i1 1
else22:
  br label %merge23
merge23:
  %t186 = load %nyx_string*, %nyx_string** %s.ptr
  %t187 = getelementptr [4 x i8], [4 x i8]* @.str33, i32 0, i32 0
  %t188 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str33.c, i8* %t187, i64 3)
  %t189 = call i1 @nyx_string_equals(%nyx_string* %t186, %nyx_string* %t188)
  br i1 %t189, label %then24, label %else25
then24:
  ret i1 1
else25:
  br label %merge26
merge26:
  %t190 = load %nyx_string*, %nyx_string** %s.ptr
  %t191 = getelementptr [4 x i8], [4 x i8]* @.str34, i32 0, i32 0
  %t192 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str34.c, i8* %t191, i64 3)
  %t193 = call i1 @nyx_string_equals(%nyx_string* %t190, %nyx_string* %t192)
  br i1 %t193, label %then27, label %else28
then27:
  ret i1 1
else28:
  br label %merge29
merge29:
  %t194 = load %nyx_string*, %nyx_string** %s.ptr
  %t195 = getelementptr [4 x i8], [4 x i8]* @.str35, i32 0, i32 0
  %t196 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str35.c, i8* %t195, i64 3)
  %t197 = call i1 @nyx_string_equals(%nyx_string* %t194, %nyx_string* %t196)
  br i1 %t197, label %then30, label %else31
then30:
  ret i1 1
else31:
  br label %merge32
merge32:
  %t198 = load %nyx_string*, %nyx_string** %s.ptr
  %t199 = getelementptr [6 x i8], [6 x i8]* @.str36, i32 0, i32 0
  %t200 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str36.c, i8* %t199, i64 5)
  %t201 = call i1 @nyx_string_equals(%nyx_string* %t198, %nyx_string* %t200)
  br i1 %t201, label %then33, label %else34
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
  %b.ptr = alloca { i64, i8* }*
  %t204 = alloca %nyx_string*
  %t207 = alloca %nyx_string*
  %t232 = alloca i1
  %t245 = alloca %nyx_string*
  %t253 = alloca i1
  %t266 = alloca %nyx_string*
  %t274 = alloca i1
  %t287 = alloca %nyx_string*
  %t292 = alloca i1
  %t305 = alloca %nyx_string*
  %t310 = alloca i1
  %t320 = alloca i1
  %t358 = alloca i1
  %t359 = alloca i1
  %t360 = alloca i1
  %t361 = alloca i1
  %t389 = alloca { i64, i8* }*
  %t393 = alloca { i64, i8* }*
  %t397 = alloca i1
  %t410 = alloca { i64, i8* }*
  %t414 = alloca { i64, i8* }*
  %t418 = alloca { i64, i8* }*
  %t422 = alloca { i64, i8* }*
  %t437 = alloca { i64, i8* }*
  %t441 = alloca { i64, i8* }*
  %t447 = alloca i64
  %t456 = alloca { i64, i8* }*
  %t461 = alloca { i64, i8* }*
  %t471 = alloca { i64, i8* }*
  %t475 = alloca { i64, i8* }*
  %t479 = alloca i1
  %t492 = alloca %nyx_string*
  %t496 = alloca %nyx_string*
  %t504 = alloca { i64, i8* }*
  %t508 = alloca { i64, i8* }*
  %t520 = alloca i64
  %t529 = alloca { i64, i8* }*
  %t534 = alloca { i64, i8* }*
  %t541 = alloca i1
  %t542 = alloca i1
  %t560 = alloca %nyx_string*
  %t564 = alloca %nyx_string*
  store { i64, i8* }* %a.param, { i64, i8* }** %a.ptr
  store { i64, i8* }* %b.param, { i64, i8* }** %b.ptr
  %t202 = load { i64, i8* }*, { i64, i8* }** %a.ptr
  %t203 = call %nyx_string* @ty_kind({ i64, i8* }* %t202)
  store %nyx_string* %t203, %nyx_string** %t204
  %t205 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %t206 = call %nyx_string* @ty_kind({ i64, i8* }* %t205)
  store %nyx_string* %t206, %nyx_string** %t207
  %t208 = load %nyx_string*, %nyx_string** %t204
  %t209 = getelementptr [10 x i8], [10 x i8]* @.str37, i32 0, i32 0
  %t210 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str37.c, i8* %t209, i64 9)
  %t211 = call i1 @nyx_string_equals(%nyx_string* %t208, %nyx_string* %t210)
  br i1 %t211, label %then36, label %else37
then36:
  ret i1 1
else37:
  br label %merge38
merge38:
  %t212 = load %nyx_string*, %nyx_string** %t207
  %t213 = getelementptr [10 x i8], [10 x i8]* @.str38, i32 0, i32 0
  %t214 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str38.c, i8* %t213, i64 9)
  %t215 = call i1 @nyx_string_equals(%nyx_string* %t212, %nyx_string* %t214)
  br i1 %t215, label %then39, label %else40
then39:
  ret i1 1
else40:
  br label %merge41
merge41:
  %t216 = load %nyx_string*, %nyx_string** %t204
  %t217 = getelementptr [6 x i8], [6 x i8]* @.str39, i32 0, i32 0
  %t218 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str39.c, i8* %t217, i64 5)
  %t219 = call i1 @nyx_string_equals(%nyx_string* %t216, %nyx_string* %t218)
  br i1 %t219, label %then42, label %else43
then42:
  ret i1 1
else43:
  br label %merge44
merge44:
  %t220 = load %nyx_string*, %nyx_string** %t207
  %t221 = getelementptr [6 x i8], [6 x i8]* @.str40, i32 0, i32 0
  %t222 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str40.c, i8* %t221, i64 5)
  %t223 = call i1 @nyx_string_equals(%nyx_string* %t220, %nyx_string* %t222)
  br i1 %t223, label %then45, label %else46
then45:
  ret i1 1
else46:
  br label %merge47
merge47:
  %t224 = load %nyx_string*, %nyx_string** %t204
  %t225 = getelementptr [10 x i8], [10 x i8]* @.str41, i32 0, i32 0
  %t226 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str41.c, i8* %t225, i64 9)
  %t227 = call i1 @nyx_string_equals(%nyx_string* %t224, %nyx_string* %t226)
  br i1 %t227, label %then48, label %else49
then48:
  ret i1 1
else49:
  br label %merge50
merge50:
  %t228 = load %nyx_string*, %nyx_string** %t207
  %t229 = getelementptr [10 x i8], [10 x i8]* @.str42, i32 0, i32 0
  %t230 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str42.c, i8* %t229, i64 9)
  %t231 = call i1 @nyx_string_equals(%nyx_string* %t228, %nyx_string* %t230)
  br i1 %t231, label %then51, label %else52
then51:
  ret i1 1
else52:
  br label %merge53
merge53:
  store i1 false, i1* %t232
  %t233 = load %nyx_string*, %nyx_string** %t204
  %t234 = getelementptr [6 x i8], [6 x i8]* @.str43, i32 0, i32 0
  %t235 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str43.c, i8* %t234, i64 5)
  %t236 = call i1 @nyx_string_equals(%nyx_string* %t233, %nyx_string* %t235)
  br i1 %t236, label %sc_and_rhs54, label %sc_and_end55
sc_and_rhs54:
  %t237 = load %nyx_string*, %nyx_string** %t207
  %t238 = getelementptr [8 x i8], [8 x i8]* @.str44, i32 0, i32 0
  %t239 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str44.c, i8* %t238, i64 7)
  %t240 = call i1 @nyx_string_equals(%nyx_string* %t237, %nyx_string* %t239)
  store i1 %t240, i1* %t232
  br label %sc_and_end55
sc_and_end55:
  %t241 = load i1, i1* %t232
  br i1 %t241, label %then56, label %else57
then56:
  %t242 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %t243 = call i64 @nyx_array_get_checked({ i64, i8* }* %t242, i64 1, i64 2)
  %t244 = inttoptr i64 %t243 to %nyx_string*
  store %nyx_string* %t244, %nyx_string** %t245
  %t246 = load %nyx_string*, %nyx_string** %t245
  %t247 = call i1 @is_sized_name(%nyx_string* %t246)
  br i1 %t247, label %then59, label %else60
then59:
  %t248 = load %nyx_string*, %nyx_string** %t245
  %t249 = getelementptr [4 x i8], [4 x i8]* @.str45, i32 0, i32 0
  %t250 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str45.c, i8* %t249, i64 3)
  %t251 = call i1 @nyx_string_equals(%nyx_string* %t248, %nyx_string* %t250)
  %t252 = xor i1 %t251, true
  br i1 %t252, label %then62, label %else63
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
  store i1 false, i1* %t253
  %t254 = load %nyx_string*, %nyx_string** %t207
  %t255 = getelementptr [6 x i8], [6 x i8]* @.str46, i32 0, i32 0
  %t256 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str46.c, i8* %t255, i64 5)
  %t257 = call i1 @nyx_string_equals(%nyx_string* %t254, %nyx_string* %t256)
  br i1 %t257, label %sc_and_rhs65, label %sc_and_end66
sc_and_rhs65:
  %t258 = load %nyx_string*, %nyx_string** %t204
  %t259 = getelementptr [8 x i8], [8 x i8]* @.str47, i32 0, i32 0
  %t260 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str47.c, i8* %t259, i64 7)
  %t261 = call i1 @nyx_string_equals(%nyx_string* %t258, %nyx_string* %t260)
  store i1 %t261, i1* %t253
  br label %sc_and_end66
sc_and_end66:
  %t262 = load i1, i1* %t253
  br i1 %t262, label %then67, label %else68
then67:
  %t263 = load { i64, i8* }*, { i64, i8* }** %a.ptr
  %t264 = call i64 @nyx_array_get_checked({ i64, i8* }* %t263, i64 1, i64 2)
  %t265 = inttoptr i64 %t264 to %nyx_string*
  store %nyx_string* %t265, %nyx_string** %t266
  %t267 = load %nyx_string*, %nyx_string** %t266
  %t268 = call i1 @is_sized_name(%nyx_string* %t267)
  br i1 %t268, label %then70, label %else71
then70:
  %t269 = load %nyx_string*, %nyx_string** %t266
  %t270 = getelementptr [4 x i8], [4 x i8]* @.str48, i32 0, i32 0
  %t271 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str48.c, i8* %t270, i64 3)
  %t272 = call i1 @nyx_string_equals(%nyx_string* %t269, %nyx_string* %t271)
  %t273 = xor i1 %t272, true
  br i1 %t273, label %then73, label %else74
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
  store i1 false, i1* %t274
  %t275 = load %nyx_string*, %nyx_string** %t204
  %t276 = getelementptr [8 x i8], [8 x i8]* @.str49, i32 0, i32 0
  %t277 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str49.c, i8* %t276, i64 7)
  %t278 = call i1 @nyx_string_equals(%nyx_string* %t275, %nyx_string* %t277)
  br i1 %t278, label %sc_and_rhs76, label %sc_and_end77
sc_and_rhs76:
  %t279 = load %nyx_string*, %nyx_string** %t207
  %t280 = getelementptr [8 x i8], [8 x i8]* @.str50, i32 0, i32 0
  %t281 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str50.c, i8* %t280, i64 7)
  %t282 = call i1 @nyx_string_equals(%nyx_string* %t279, %nyx_string* %t281)
  store i1 %t282, i1* %t274
  br label %sc_and_end77
sc_and_end77:
  %t283 = load i1, i1* %t274
  br i1 %t283, label %then78, label %else79
then78:
  %t284 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %t285 = call i64 @nyx_array_get_checked({ i64, i8* }* %t284, i64 1, i64 2)
  %t286 = inttoptr i64 %t285 to %nyx_string*
  store %nyx_string* %t286, %nyx_string** %t287
  %t288 = load %nyx_string*, %nyx_string** %t287
  %t289 = getelementptr [4 x i8], [4 x i8]* @.str51, i32 0, i32 0
  %t290 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str51.c, i8* %t289, i64 3)
  %t291 = call i1 @nyx_string_equals(%nyx_string* %t288, %nyx_string* %t290)
  br i1 %t291, label %then81, label %else82
then81:
  ret i1 1
else82:
  br label %merge83
merge83:
  ret i1 0
else79:
  br label %merge80
merge80:
  store i1 false, i1* %t292
  %t293 = load %nyx_string*, %nyx_string** %t207
  %t294 = getelementptr [8 x i8], [8 x i8]* @.str52, i32 0, i32 0
  %t295 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str52.c, i8* %t294, i64 7)
  %t296 = call i1 @nyx_string_equals(%nyx_string* %t293, %nyx_string* %t295)
  br i1 %t296, label %sc_and_rhs84, label %sc_and_end85
sc_and_rhs84:
  %t297 = load %nyx_string*, %nyx_string** %t204
  %t298 = getelementptr [8 x i8], [8 x i8]* @.str53, i32 0, i32 0
  %t299 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str53.c, i8* %t298, i64 7)
  %t300 = call i1 @nyx_string_equals(%nyx_string* %t297, %nyx_string* %t299)
  store i1 %t300, i1* %t292
  br label %sc_and_end85
sc_and_end85:
  %t301 = load i1, i1* %t292
  br i1 %t301, label %then86, label %else87
then86:
  %t302 = load { i64, i8* }*, { i64, i8* }** %a.ptr
  %t303 = call i64 @nyx_array_get_checked({ i64, i8* }* %t302, i64 1, i64 2)
  %t304 = inttoptr i64 %t303 to %nyx_string*
  store %nyx_string* %t304, %nyx_string** %t305
  %t306 = load %nyx_string*, %nyx_string** %t305
  %t307 = getelementptr [4 x i8], [4 x i8]* @.str54, i32 0, i32 0
  %t308 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str54.c, i8* %t307, i64 3)
  %t309 = call i1 @nyx_string_equals(%nyx_string* %t306, %nyx_string* %t308)
  br i1 %t309, label %then89, label %else90
then89:
  ret i1 1
else90:
  br label %merge91
merge91:
  ret i1 0
else87:
  br label %merge88
merge88:
  store i1 false, i1* %t310
  %t311 = load %nyx_string*, %nyx_string** %t204
  %t312 = getelementptr [6 x i8], [6 x i8]* @.str55, i32 0, i32 0
  %t313 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str55.c, i8* %t312, i64 5)
  %t314 = call i1 @nyx_string_equals(%nyx_string* %t311, %nyx_string* %t313)
  br i1 %t314, label %sc_and_rhs92, label %sc_and_end93
sc_and_rhs92:
  %t315 = load %nyx_string*, %nyx_string** %t207
  %t316 = getelementptr [7 x i8], [7 x i8]* @.str56, i32 0, i32 0
  %t317 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str56.c, i8* %t316, i64 6)
  %t318 = call i1 @nyx_string_equals(%nyx_string* %t315, %nyx_string* %t317)
  store i1 %t318, i1* %t310
  br label %sc_and_end93
sc_and_end93:
  %t319 = load i1, i1* %t310
  br i1 %t319, label %then94, label %else95
then94:
  ret i1 1
else95:
  br label %merge96
merge96:
  store i1 false, i1* %t320
  %t321 = load %nyx_string*, %nyx_string** %t204
  %t322 = getelementptr [7 x i8], [7 x i8]* @.str57, i32 0, i32 0
  %t323 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str57.c, i8* %t322, i64 6)
  %t324 = call i1 @nyx_string_equals(%nyx_string* %t321, %nyx_string* %t323)
  br i1 %t324, label %sc_and_rhs97, label %sc_and_end98
sc_and_rhs97:
  %t325 = load %nyx_string*, %nyx_string** %t207
  %t326 = getelementptr [6 x i8], [6 x i8]* @.str58, i32 0, i32 0
  %t327 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str58.c, i8* %t326, i64 5)
  %t328 = call i1 @nyx_string_equals(%nyx_string* %t325, %nyx_string* %t327)
  store i1 %t328, i1* %t320
  br label %sc_and_end98
sc_and_end98:
  %t329 = load i1, i1* %t320
  br i1 %t329, label %then99, label %else100
then99:
  ret i1 1
else100:
  br label %merge101
merge101:
  %t330 = load %nyx_string*, %nyx_string** %t204
  %t331 = load %nyx_string*, %nyx_string** %t207
  %t332 = call i1 @nyx_string_equals(%nyx_string* %t330, %nyx_string* %t331)
  %t333 = xor i1 %t332, true
  br i1 %t333, label %then102, label %else103
then102:
  ret i1 0
else103:
  br label %merge104
merge104:
  %t334 = load %nyx_string*, %nyx_string** %t204
  %t335 = getelementptr [6 x i8], [6 x i8]* @.str59, i32 0, i32 0
  %t336 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str59.c, i8* %t335, i64 5)
  %t337 = call i1 @nyx_string_equals(%nyx_string* %t334, %nyx_string* %t336)
  br i1 %t337, label %then105, label %else106
then105:
  ret i1 1
else106:
  br label %merge107
merge107:
  %t338 = load %nyx_string*, %nyx_string** %t204
  %t339 = getelementptr [8 x i8], [8 x i8]* @.str60, i32 0, i32 0
  %t340 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str60.c, i8* %t339, i64 7)
  %t341 = call i1 @nyx_string_equals(%nyx_string* %t338, %nyx_string* %t340)
  br i1 %t341, label %then108, label %else109
then108:
  ret i1 1
else109:
  br label %merge110
merge110:
  %t342 = load %nyx_string*, %nyx_string** %t204
  %t343 = getelementptr [7 x i8], [7 x i8]* @.str61, i32 0, i32 0
  %t344 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str61.c, i8* %t343, i64 6)
  %t345 = call i1 @nyx_string_equals(%nyx_string* %t342, %nyx_string* %t344)
  br i1 %t345, label %then111, label %else112
then111:
  ret i1 1
else112:
  br label %merge113
merge113:
  %t346 = load %nyx_string*, %nyx_string** %t204
  %t347 = getelementptr [9 x i8], [9 x i8]* @.str62, i32 0, i32 0
  %t348 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str62.c, i8* %t347, i64 8)
  %t349 = call i1 @nyx_string_equals(%nyx_string* %t346, %nyx_string* %t348)
  br i1 %t349, label %then114, label %else115
then114:
  ret i1 1
else115:
  br label %merge116
merge116:
  %t350 = load %nyx_string*, %nyx_string** %t204
  %t351 = getelementptr [7 x i8], [7 x i8]* @.str63, i32 0, i32 0
  %t352 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str63.c, i8* %t351, i64 6)
  %t353 = call i1 @nyx_string_equals(%nyx_string* %t350, %nyx_string* %t352)
  br i1 %t353, label %then117, label %else118
then117:
  ret i1 1
else118:
  br label %merge119
merge119:
  %t354 = load %nyx_string*, %nyx_string** %t204
  %t355 = getelementptr [7 x i8], [7 x i8]* @.str64, i32 0, i32 0
  %t356 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str64.c, i8* %t355, i64 6)
  %t357 = call i1 @nyx_string_equals(%nyx_string* %t354, %nyx_string* %t356)
  br i1 %t357, label %then120, label %else121
then120:
  ret i1 1
else121:
  br label %merge122
merge122:
  store i1 true, i1* %t358
  store i1 true, i1* %t359
  store i1 true, i1* %t360
  store i1 true, i1* %t361
  %t362 = load %nyx_string*, %nyx_string** %t204
  %t363 = getelementptr [8 x i8], [8 x i8]* @.str65, i32 0, i32 0
  %t364 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str65.c, i8* %t363, i64 7)
  %t365 = call i1 @nyx_string_equals(%nyx_string* %t362, %nyx_string* %t364)
  br i1 %t365, label %sc_or_end124, label %sc_or_rhs123
sc_or_rhs123:
  %t366 = load %nyx_string*, %nyx_string** %t204
  %t367 = getelementptr [9 x i8], [9 x i8]* @.str66, i32 0, i32 0
  %t368 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str66.c, i8* %t367, i64 8)
  %t369 = call i1 @nyx_string_equals(%nyx_string* %t366, %nyx_string* %t368)
  store i1 %t369, i1* %t361
  br label %sc_or_end124
sc_or_end124:
  %t370 = load i1, i1* %t361
  br i1 %t370, label %sc_or_end126, label %sc_or_rhs125
sc_or_rhs125:
  %t371 = load %nyx_string*, %nyx_string** %t204
  %t372 = getelementptr [6 x i8], [6 x i8]* @.str67, i32 0, i32 0
  %t373 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str67.c, i8* %t372, i64 5)
  %t374 = call i1 @nyx_string_equals(%nyx_string* %t371, %nyx_string* %t373)
  store i1 %t374, i1* %t360
  br label %sc_or_end126
sc_or_end126:
  %t375 = load i1, i1* %t360
  br i1 %t375, label %sc_or_end128, label %sc_or_rhs127
sc_or_rhs127:
  %t376 = load %nyx_string*, %nyx_string** %t204
  %t377 = getelementptr [6 x i8], [6 x i8]* @.str68, i32 0, i32 0
  %t378 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str68.c, i8* %t377, i64 5)
  %t379 = call i1 @nyx_string_equals(%nyx_string* %t376, %nyx_string* %t378)
  store i1 %t379, i1* %t359
  br label %sc_or_end128
sc_or_end128:
  %t380 = load i1, i1* %t359
  br i1 %t380, label %sc_or_end130, label %sc_or_rhs129
sc_or_rhs129:
  %t381 = load %nyx_string*, %nyx_string** %t204
  %t382 = getelementptr [9 x i8], [9 x i8]* @.str69, i32 0, i32 0
  %t383 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str69.c, i8* %t382, i64 8)
  %t384 = call i1 @nyx_string_equals(%nyx_string* %t381, %nyx_string* %t383)
  store i1 %t384, i1* %t358
  br label %sc_or_end130
sc_or_end130:
  %t385 = load i1, i1* %t358
  br i1 %t385, label %then131, label %else132
then131:
  %t386 = load { i64, i8* }*, { i64, i8* }** %a.ptr
  %t387 = call i64 @nyx_array_get({ i64, i8* }* %t386, i64 1)
  %t388 = inttoptr i64 %t387 to { i64, i8* }*
  store { i64, i8* }* %t388, { i64, i8* }** %t389
  %t390 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %t391 = call i64 @nyx_array_get({ i64, i8* }* %t390, i64 1)
  %t392 = inttoptr i64 %t391 to { i64, i8* }*
  store { i64, i8* }* %t392, { i64, i8* }** %t393
  %t394 = load { i64, i8* }*, { i64, i8* }** %t389
  %t395 = load { i64, i8* }*, { i64, i8* }** %t393
  %t396 = call i1 @ty_eq({ i64, i8* }* %t394, { i64, i8* }* %t395)
  ret i1 %t396
else132:
  br label %merge133
merge133:
  store i1 true, i1* %t397
  %t398 = load %nyx_string*, %nyx_string** %t204
  %t399 = getelementptr [9 x i8], [9 x i8]* @.str70, i32 0, i32 0
  %t400 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str70.c, i8* %t399, i64 8)
  %t401 = call i1 @nyx_string_equals(%nyx_string* %t398, %nyx_string* %t400)
  br i1 %t401, label %sc_or_end135, label %sc_or_rhs134
sc_or_rhs134:
  %t402 = load %nyx_string*, %nyx_string** %t204
  %t403 = getelementptr [6 x i8], [6 x i8]* @.str71, i32 0, i32 0
  %t404 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str71.c, i8* %t403, i64 5)
  %t405 = call i1 @nyx_string_equals(%nyx_string* %t402, %nyx_string* %t404)
  store i1 %t405, i1* %t397
  br label %sc_or_end135
sc_or_end135:
  %t406 = load i1, i1* %t397
  br i1 %t406, label %then136, label %else137
then136:
  %t407 = load { i64, i8* }*, { i64, i8* }** %a.ptr
  %t408 = call i64 @nyx_array_get({ i64, i8* }* %t407, i64 1)
  %t409 = inttoptr i64 %t408 to { i64, i8* }*
  store { i64, i8* }* %t409, { i64, i8* }** %t410
  %t411 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %t412 = call i64 @nyx_array_get({ i64, i8* }* %t411, i64 1)
  %t413 = inttoptr i64 %t412 to { i64, i8* }*
  store { i64, i8* }* %t413, { i64, i8* }** %t414
  %t415 = load { i64, i8* }*, { i64, i8* }** %a.ptr
  %t416 = call i64 @nyx_array_get({ i64, i8* }* %t415, i64 2)
  %t417 = inttoptr i64 %t416 to { i64, i8* }*
  store { i64, i8* }* %t417, { i64, i8* }** %t418
  %t419 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %t420 = call i64 @nyx_array_get({ i64, i8* }* %t419, i64 2)
  %t421 = inttoptr i64 %t420 to { i64, i8* }*
  store { i64, i8* }* %t421, { i64, i8* }** %t422
  %t423 = load { i64, i8* }*, { i64, i8* }** %t410
  %t424 = load { i64, i8* }*, { i64, i8* }** %t414
  %t425 = call i1 @ty_eq({ i64, i8* }* %t423, { i64, i8* }* %t424)
  %t426 = xor i1 %t425, true
  br i1 %t426, label %then139, label %else140
then139:
  ret i1 0
else140:
  br label %merge141
merge141:
  %t427 = load { i64, i8* }*, { i64, i8* }** %t418
  %t428 = load { i64, i8* }*, { i64, i8* }** %t422
  %t429 = call i1 @ty_eq({ i64, i8* }* %t427, { i64, i8* }* %t428)
  ret i1 %t429
else137:
  br label %merge138
merge138:
  %t430 = load %nyx_string*, %nyx_string** %t204
  %t431 = getelementptr [5 x i8], [5 x i8]* @.str72, i32 0, i32 0
  %t432 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str72.c, i8* %t431, i64 4)
  %t433 = call i1 @nyx_string_equals(%nyx_string* %t430, %nyx_string* %t432)
  br i1 %t433, label %then142, label %else143
then142:
  %t434 = load { i64, i8* }*, { i64, i8* }** %a.ptr
  %t435 = call i64 @nyx_array_get({ i64, i8* }* %t434, i64 1)
  %t436 = inttoptr i64 %t435 to { i64, i8* }*
  store { i64, i8* }* %t436, { i64, i8* }** %t437
  %t438 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %t439 = call i64 @nyx_array_get({ i64, i8* }* %t438, i64 1)
  %t440 = inttoptr i64 %t439 to { i64, i8* }*
  store { i64, i8* }* %t440, { i64, i8* }** %t441
  %t442 = load { i64, i8* }*, { i64, i8* }** %t437
  %t443 = call i64 @nyx_array_length({ i64, i8* }* %t442)
  %t444 = load { i64, i8* }*, { i64, i8* }** %t441
  %t445 = call i64 @nyx_array_length({ i64, i8* }* %t444)
  %t446 = icmp ne i64 %t443, %t445
  br i1 %t446, label %then145, label %else146
then145:
  ret i1 0
else146:
  br label %merge147
merge147:
  store i64 0, i64* %t447
  br label %while_cond148
while_cond148:
  %t448 = load i64, i64* %t447
  %t449 = load { i64, i8* }*, { i64, i8* }** %t437
  %t450 = call i64 @nyx_array_length({ i64, i8* }* %t449)
  %t451 = icmp slt i64 %t448, %t450
  br i1 %t451, label %while_body149, label %while_end150
while_body149:
  %t452 = load { i64, i8* }*, { i64, i8* }** %t437
  %t453 = load i64, i64* %t447
  %t454 = call i64 @nyx_array_get({ i64, i8* }* %t452, i64 %t453)
  %t455 = inttoptr i64 %t454 to { i64, i8* }*
  store { i64, i8* }* %t455, { i64, i8* }** %t456
  %t457 = load { i64, i8* }*, { i64, i8* }** %t441
  %t458 = load i64, i64* %t447
  %t459 = call i64 @nyx_array_get({ i64, i8* }* %t457, i64 %t458)
  %t460 = inttoptr i64 %t459 to { i64, i8* }*
  store { i64, i8* }* %t460, { i64, i8* }** %t461
  %t462 = load { i64, i8* }*, { i64, i8* }** %t456
  %t463 = load { i64, i8* }*, { i64, i8* }** %t461
  %t464 = call i1 @ty_eq({ i64, i8* }* %t462, { i64, i8* }* %t463)
  %t465 = xor i1 %t464, true
  br i1 %t465, label %then151, label %else152
then151:
  ret i1 0
else152:
  br label %merge153
merge153:
  %t466 = load i64, i64* %t447
  %t467 = add i64 %t466, 1
  store i64 %t467, i64* %t447
  br label %while_cond148
while_end150:
  %t468 = load { i64, i8* }*, { i64, i8* }** %a.ptr
  %t469 = call i64 @nyx_array_get({ i64, i8* }* %t468, i64 2)
  %t470 = inttoptr i64 %t469 to { i64, i8* }*
  store { i64, i8* }* %t470, { i64, i8* }** %t471
  %t472 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %t473 = call i64 @nyx_array_get({ i64, i8* }* %t472, i64 2)
  %t474 = inttoptr i64 %t473 to { i64, i8* }*
  store { i64, i8* }* %t474, { i64, i8* }** %t475
  %t476 = load { i64, i8* }*, { i64, i8* }** %t471
  %t477 = load { i64, i8* }*, { i64, i8* }** %t475
  %t478 = call i1 @ty_eq({ i64, i8* }* %t476, { i64, i8* }* %t477)
  ret i1 %t478
else143:
  br label %merge144
merge144:
  store i1 true, i1* %t479
  %t480 = load %nyx_string*, %nyx_string** %t204
  %t481 = getelementptr [9 x i8], [9 x i8]* @.str73, i32 0, i32 0
  %t482 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str73.c, i8* %t481, i64 8)
  %t483 = call i1 @nyx_string_equals(%nyx_string* %t480, %nyx_string* %t482)
  br i1 %t483, label %sc_or_end155, label %sc_or_rhs154
sc_or_rhs154:
  %t484 = load %nyx_string*, %nyx_string** %t204
  %t485 = getelementptr [7 x i8], [7 x i8]* @.str74, i32 0, i32 0
  %t486 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str74.c, i8* %t485, i64 6)
  %t487 = call i1 @nyx_string_equals(%nyx_string* %t484, %nyx_string* %t486)
  store i1 %t487, i1* %t479
  br label %sc_or_end155
sc_or_end155:
  %t488 = load i1, i1* %t479
  br i1 %t488, label %then156, label %else157
then156:
  %t489 = load { i64, i8* }*, { i64, i8* }** %a.ptr
  %t490 = call i64 @nyx_array_get_checked({ i64, i8* }* %t489, i64 1, i64 2)
  %t491 = inttoptr i64 %t490 to %nyx_string*
  store %nyx_string* %t491, %nyx_string** %t492
  %t493 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %t494 = call i64 @nyx_array_get_checked({ i64, i8* }* %t493, i64 1, i64 2)
  %t495 = inttoptr i64 %t494 to %nyx_string*
  store %nyx_string* %t495, %nyx_string** %t496
  %t497 = load %nyx_string*, %nyx_string** %t492
  %t498 = load %nyx_string*, %nyx_string** %t496
  %t499 = call i1 @nyx_string_equals(%nyx_string* %t497, %nyx_string* %t498)
  %t500 = xor i1 %t499, true
  br i1 %t500, label %then159, label %else160
then159:
  ret i1 0
else160:
  br label %merge161
merge161:
  %t501 = load { i64, i8* }*, { i64, i8* }** %a.ptr
  %t502 = call i64 @nyx_array_get({ i64, i8* }* %t501, i64 2)
  %t503 = inttoptr i64 %t502 to { i64, i8* }*
  store { i64, i8* }* %t503, { i64, i8* }** %t504
  %t505 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %t506 = call i64 @nyx_array_get({ i64, i8* }* %t505, i64 2)
  %t507 = inttoptr i64 %t506 to { i64, i8* }*
  store { i64, i8* }* %t507, { i64, i8* }** %t508
  %t509 = load { i64, i8* }*, { i64, i8* }** %t504
  %t510 = call i64 @nyx_array_length({ i64, i8* }* %t509)
  %t511 = icmp eq i64 %t510, 0
  br i1 %t511, label %then162, label %else163
then162:
  ret i1 1
else163:
  br label %merge164
merge164:
  %t512 = load { i64, i8* }*, { i64, i8* }** %t508
  %t513 = call i64 @nyx_array_length({ i64, i8* }* %t512)
  %t514 = icmp eq i64 %t513, 0
  br i1 %t514, label %then165, label %else166
then165:
  ret i1 1
else166:
  br label %merge167
merge167:
  %t515 = load { i64, i8* }*, { i64, i8* }** %t504
  %t516 = call i64 @nyx_array_length({ i64, i8* }* %t515)
  %t517 = load { i64, i8* }*, { i64, i8* }** %t508
  %t518 = call i64 @nyx_array_length({ i64, i8* }* %t517)
  %t519 = icmp ne i64 %t516, %t518
  br i1 %t519, label %then168, label %else169
then168:
  ret i1 0
else169:
  br label %merge170
merge170:
  store i64 0, i64* %t520
  br label %while_cond171
while_cond171:
  %t521 = load i64, i64* %t520
  %t522 = load { i64, i8* }*, { i64, i8* }** %t504
  %t523 = call i64 @nyx_array_length({ i64, i8* }* %t522)
  %t524 = icmp slt i64 %t521, %t523
  br i1 %t524, label %while_body172, label %while_end173
while_body172:
  %t525 = load { i64, i8* }*, { i64, i8* }** %t504
  %t526 = load i64, i64* %t520
  %t527 = call i64 @nyx_array_get({ i64, i8* }* %t525, i64 %t526)
  %t528 = inttoptr i64 %t527 to { i64, i8* }*
  store { i64, i8* }* %t528, { i64, i8* }** %t529
  %t530 = load { i64, i8* }*, { i64, i8* }** %t508
  %t531 = load i64, i64* %t520
  %t532 = call i64 @nyx_array_get({ i64, i8* }* %t530, i64 %t531)
  %t533 = inttoptr i64 %t532 to { i64, i8* }*
  store { i64, i8* }* %t533, { i64, i8* }** %t534
  %t535 = load { i64, i8* }*, { i64, i8* }** %t529
  %t536 = load { i64, i8* }*, { i64, i8* }** %t534
  %t537 = call i1 @ty_eq({ i64, i8* }* %t535, { i64, i8* }* %t536)
  %t538 = xor i1 %t537, true
  br i1 %t538, label %then174, label %else175
then174:
  ret i1 0
else175:
  br label %merge176
merge176:
  %t539 = load i64, i64* %t520
  %t540 = add i64 %t539, 1
  store i64 %t540, i64* %t520
  br label %while_cond171
while_end173:
  ret i1 1
else157:
  br label %merge158
merge158:
  store i1 true, i1* %t541
  store i1 true, i1* %t542
  %t543 = load %nyx_string*, %nyx_string** %t204
  %t544 = getelementptr [6 x i8], [6 x i8]* @.str75, i32 0, i32 0
  %t545 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str75.c, i8* %t544, i64 5)
  %t546 = call i1 @nyx_string_equals(%nyx_string* %t543, %nyx_string* %t545)
  br i1 %t546, label %sc_or_end178, label %sc_or_rhs177
sc_or_rhs177:
  %t547 = load %nyx_string*, %nyx_string** %t204
  %t548 = getelementptr [10 x i8], [10 x i8]* @.str76, i32 0, i32 0
  %t549 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str76.c, i8* %t548, i64 9)
  %t550 = call i1 @nyx_string_equals(%nyx_string* %t547, %nyx_string* %t549)
  store i1 %t550, i1* %t542
  br label %sc_or_end178
sc_or_end178:
  %t551 = load i1, i1* %t542
  br i1 %t551, label %sc_or_end180, label %sc_or_rhs179
sc_or_rhs179:
  %t552 = load %nyx_string*, %nyx_string** %t204
  %t553 = getelementptr [8 x i8], [8 x i8]* @.str77, i32 0, i32 0
  %t554 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str77.c, i8* %t553, i64 7)
  %t555 = call i1 @nyx_string_equals(%nyx_string* %t552, %nyx_string* %t554)
  store i1 %t555, i1* %t541
  br label %sc_or_end180
sc_or_end180:
  %t556 = load i1, i1* %t541
  br i1 %t556, label %then181, label %else182
then181:
  %t557 = load { i64, i8* }*, { i64, i8* }** %a.ptr
  %t558 = call i64 @nyx_array_get_checked({ i64, i8* }* %t557, i64 1, i64 2)
  %t559 = inttoptr i64 %t558 to %nyx_string*
  store %nyx_string* %t559, %nyx_string** %t560
  %t561 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %t562 = call i64 @nyx_array_get_checked({ i64, i8* }* %t561, i64 1, i64 2)
  %t563 = inttoptr i64 %t562 to %nyx_string*
  store %nyx_string* %t563, %nyx_string** %t564
  %t565 = load %nyx_string*, %nyx_string** %t560
  %t566 = load %nyx_string*, %nyx_string** %t564
  %t567 = call i1 @nyx_string_equals(%nyx_string* %t565, %nyx_string* %t566)
  ret i1 %t567
else182:
  br label %merge183
merge183:
  ret i1 0
}

define %nyx_string* @ty_to_str(
{ i64, i8* }* %t.param) {
  %t.ptr = alloca { i64, i8* }*
  %t570 = alloca %nyx_string*
  %t620 = alloca { i64, i8* }*
  %t636 = alloca { i64, i8* }*
  %t652 = alloca { i64, i8* }*
  %t656 = alloca { i64, i8* }*
  %t678 = alloca { i64, i8* }*
  %t682 = alloca { i64, i8* }*
  %t737 = alloca { i64, i8* }*
  %t741 = alloca { i64, i8* }*
  %t744 = alloca %nyx_string*
  %t745 = alloca i64
  %t760 = alloca { i64, i8* }*
  %t782 = alloca %nyx_string*
  %t787 = alloca i1
  %t800 = alloca %nyx_string*
  %t804 = alloca { i64, i8* }*
  %t813 = alloca %nyx_string*
  %t814 = alloca i64
  %t829 = alloca { i64, i8* }*
  %t848 = alloca %nyx_string*
  %t857 = alloca %nyx_string*
  store { i64, i8* }* %t.param, { i64, i8* }** %t.ptr
  %t568 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t569 = call %nyx_string* @ty_kind({ i64, i8* }* %t568)
  store %nyx_string* %t569, %nyx_string** %t570
  %t571 = load %nyx_string*, %nyx_string** %t570
  %t572 = getelementptr [6 x i8], [6 x i8]* @.str78, i32 0, i32 0
  %t573 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str78.c, i8* %t572, i64 5)
  %t574 = call i1 @nyx_string_equals(%nyx_string* %t571, %nyx_string* %t573)
  br i1 %t574, label %then184, label %else185
then184:
  %t575 = getelementptr [4 x i8], [4 x i8]* @.str79, i32 0, i32 0
  %t576 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str79.c, i8* %t575, i64 3)
  ret %nyx_string* %t576
else185:
  br label %merge186
merge186:
  %t577 = load %nyx_string*, %nyx_string** %t570
  %t578 = getelementptr [8 x i8], [8 x i8]* @.str80, i32 0, i32 0
  %t579 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str80.c, i8* %t578, i64 7)
  %t580 = call i1 @nyx_string_equals(%nyx_string* %t577, %nyx_string* %t579)
  br i1 %t580, label %then187, label %else188
then187:
  %t581 = getelementptr [6 x i8], [6 x i8]* @.str81, i32 0, i32 0
  %t582 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str81.c, i8* %t581, i64 5)
  ret %nyx_string* %t582
else188:
  br label %merge189
merge189:
  %t583 = load %nyx_string*, %nyx_string** %t570
  %t584 = getelementptr [7 x i8], [7 x i8]* @.str82, i32 0, i32 0
  %t585 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str82.c, i8* %t584, i64 6)
  %t586 = call i1 @nyx_string_equals(%nyx_string* %t583, %nyx_string* %t585)
  br i1 %t586, label %then190, label %else191
then190:
  %t587 = getelementptr [5 x i8], [5 x i8]* @.str83, i32 0, i32 0
  %t588 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str83.c, i8* %t587, i64 4)
  ret %nyx_string* %t588
else191:
  br label %merge192
merge192:
  %t589 = load %nyx_string*, %nyx_string** %t570
  %t590 = getelementptr [9 x i8], [9 x i8]* @.str84, i32 0, i32 0
  %t591 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str84.c, i8* %t590, i64 8)
  %t592 = call i1 @nyx_string_equals(%nyx_string* %t589, %nyx_string* %t591)
  br i1 %t592, label %then193, label %else194
then193:
  %t593 = getelementptr [7 x i8], [7 x i8]* @.str85, i32 0, i32 0
  %t594 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str85.c, i8* %t593, i64 6)
  ret %nyx_string* %t594
else194:
  br label %merge195
merge195:
  %t595 = load %nyx_string*, %nyx_string** %t570
  %t596 = getelementptr [7 x i8], [7 x i8]* @.str86, i32 0, i32 0
  %t597 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str86.c, i8* %t596, i64 6)
  %t598 = call i1 @nyx_string_equals(%nyx_string* %t595, %nyx_string* %t597)
  br i1 %t598, label %then196, label %else197
then196:
  %t599 = getelementptr [5 x i8], [5 x i8]* @.str87, i32 0, i32 0
  %t600 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str87.c, i8* %t599, i64 4)
  ret %nyx_string* %t600
else197:
  br label %merge198
merge198:
  %t601 = load %nyx_string*, %nyx_string** %t570
  %t602 = getelementptr [7 x i8], [7 x i8]* @.str88, i32 0, i32 0
  %t603 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str88.c, i8* %t602, i64 6)
  %t604 = call i1 @nyx_string_equals(%nyx_string* %t601, %nyx_string* %t603)
  br i1 %t604, label %then199, label %else200
then199:
  %t605 = getelementptr [3 x i8], [3 x i8]* @.str89, i32 0, i32 0
  %t606 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str89.c, i8* %t605, i64 2)
  ret %nyx_string* %t606
else200:
  br label %merge201
merge201:
  %t607 = load %nyx_string*, %nyx_string** %t570
  %t608 = getelementptr [10 x i8], [10 x i8]* @.str90, i32 0, i32 0
  %t609 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str90.c, i8* %t608, i64 9)
  %t610 = call i1 @nyx_string_equals(%nyx_string* %t607, %nyx_string* %t609)
  br i1 %t610, label %then202, label %else203
then202:
  %t611 = getelementptr [2 x i8], [2 x i8]* @.str91, i32 0, i32 0
  %t612 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str91.c, i8* %t611, i64 1)
  ret %nyx_string* %t612
else203:
  br label %merge204
merge204:
  %t613 = load %nyx_string*, %nyx_string** %t570
  %t614 = getelementptr [8 x i8], [8 x i8]* @.str92, i32 0, i32 0
  %t615 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str92.c, i8* %t614, i64 7)
  %t616 = call i1 @nyx_string_equals(%nyx_string* %t613, %nyx_string* %t615)
  br i1 %t616, label %then205, label %else206
then205:
  %t617 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t618 = call i64 @nyx_array_get({ i64, i8* }* %t617, i64 1)
  %t619 = inttoptr i64 %t618 to { i64, i8* }*
  store { i64, i8* }* %t619, { i64, i8* }** %t620
  %t621 = getelementptr [7 x i8], [7 x i8]* @.str93, i32 0, i32 0
  %t622 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str93.c, i8* %t621, i64 6)
  %t623 = load { i64, i8* }*, { i64, i8* }** %t620
  %t624 = call %nyx_string* @ty_to_str({ i64, i8* }* %t623)
  %t625 = call %nyx_string* @nyx_string_concat(%nyx_string* %t622, %nyx_string* %t624)
  %t626 = getelementptr [2 x i8], [2 x i8]* @.str94, i32 0, i32 0
  %t627 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str94.c, i8* %t626, i64 1)
  %t628 = call %nyx_string* @nyx_string_concat(%nyx_string* %t625, %nyx_string* %t627)
  ret %nyx_string* %t628
else206:
  br label %merge207
merge207:
  %t629 = load %nyx_string*, %nyx_string** %t570
  %t630 = getelementptr [9 x i8], [9 x i8]* @.str95, i32 0, i32 0
  %t631 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str95.c, i8* %t630, i64 8)
  %t632 = call i1 @nyx_string_equals(%nyx_string* %t629, %nyx_string* %t631)
  br i1 %t632, label %then208, label %else209
then208:
  %t633 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t634 = call i64 @nyx_array_get({ i64, i8* }* %t633, i64 1)
  %t635 = inttoptr i64 %t634 to { i64, i8* }*
  store { i64, i8* }* %t635, { i64, i8* }** %t636
  %t637 = getelementptr [8 x i8], [8 x i8]* @.str96, i32 0, i32 0
  %t638 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str96.c, i8* %t637, i64 7)
  %t639 = load { i64, i8* }*, { i64, i8* }** %t636
  %t640 = call %nyx_string* @ty_to_str({ i64, i8* }* %t639)
  %t641 = call %nyx_string* @nyx_string_concat(%nyx_string* %t638, %nyx_string* %t640)
  %t642 = getelementptr [2 x i8], [2 x i8]* @.str97, i32 0, i32 0
  %t643 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str97.c, i8* %t642, i64 1)
  %t644 = call %nyx_string* @nyx_string_concat(%nyx_string* %t641, %nyx_string* %t643)
  ret %nyx_string* %t644
else209:
  br label %merge210
merge210:
  %t645 = load %nyx_string*, %nyx_string** %t570
  %t646 = getelementptr [9 x i8], [9 x i8]* @.str98, i32 0, i32 0
  %t647 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str98.c, i8* %t646, i64 8)
  %t648 = call i1 @nyx_string_equals(%nyx_string* %t645, %nyx_string* %t647)
  br i1 %t648, label %then211, label %else212
then211:
  %t649 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t650 = call i64 @nyx_array_get({ i64, i8* }* %t649, i64 1)
  %t651 = inttoptr i64 %t650 to { i64, i8* }*
  store { i64, i8* }* %t651, { i64, i8* }** %t652
  %t653 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t654 = call i64 @nyx_array_get({ i64, i8* }* %t653, i64 2)
  %t655 = inttoptr i64 %t654 to { i64, i8* }*
  store { i64, i8* }* %t655, { i64, i8* }** %t656
  %t657 = getelementptr [8 x i8], [8 x i8]* @.str99, i32 0, i32 0
  %t658 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str99.c, i8* %t657, i64 7)
  %t659 = load { i64, i8* }*, { i64, i8* }** %t652
  %t660 = call %nyx_string* @ty_to_str({ i64, i8* }* %t659)
  %t661 = call %nyx_string* @nyx_string_concat(%nyx_string* %t658, %nyx_string* %t660)
  %t662 = getelementptr [2 x i8], [2 x i8]* @.str100, i32 0, i32 0
  %t663 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str100.c, i8* %t662, i64 1)
  %t664 = call %nyx_string* @nyx_string_concat(%nyx_string* %t661, %nyx_string* %t663)
  %t665 = load { i64, i8* }*, { i64, i8* }** %t656
  %t666 = call %nyx_string* @ty_to_str({ i64, i8* }* %t665)
  %t667 = call %nyx_string* @nyx_string_concat(%nyx_string* %t664, %nyx_string* %t666)
  %t668 = getelementptr [2 x i8], [2 x i8]* @.str101, i32 0, i32 0
  %t669 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str101.c, i8* %t668, i64 1)
  %t670 = call %nyx_string* @nyx_string_concat(%nyx_string* %t667, %nyx_string* %t669)
  ret %nyx_string* %t670
else212:
  br label %merge213
merge213:
  %t671 = load %nyx_string*, %nyx_string** %t570
  %t672 = getelementptr [6 x i8], [6 x i8]* @.str102, i32 0, i32 0
  %t673 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str102.c, i8* %t672, i64 5)
  %t674 = call i1 @nyx_string_equals(%nyx_string* %t671, %nyx_string* %t673)
  br i1 %t674, label %then214, label %else215
then214:
  %t675 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t676 = call i64 @nyx_array_get({ i64, i8* }* %t675, i64 1)
  %t677 = inttoptr i64 %t676 to { i64, i8* }*
  store { i64, i8* }* %t677, { i64, i8* }** %t678
  %t679 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t680 = call i64 @nyx_array_get({ i64, i8* }* %t679, i64 2)
  %t681 = inttoptr i64 %t680 to { i64, i8* }*
  store { i64, i8* }* %t681, { i64, i8* }** %t682
  %t683 = getelementptr [5 x i8], [5 x i8]* @.str103, i32 0, i32 0
  %t684 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str103.c, i8* %t683, i64 4)
  %t685 = load { i64, i8* }*, { i64, i8* }** %t678
  %t686 = call %nyx_string* @ty_to_str({ i64, i8* }* %t685)
  %t687 = call %nyx_string* @nyx_string_concat(%nyx_string* %t684, %nyx_string* %t686)
  %t688 = getelementptr [2 x i8], [2 x i8]* @.str104, i32 0, i32 0
  %t689 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str104.c, i8* %t688, i64 1)
  %t690 = call %nyx_string* @nyx_string_concat(%nyx_string* %t687, %nyx_string* %t689)
  %t691 = load { i64, i8* }*, { i64, i8* }** %t682
  %t692 = call %nyx_string* @ty_to_str({ i64, i8* }* %t691)
  %t693 = call %nyx_string* @nyx_string_concat(%nyx_string* %t690, %nyx_string* %t692)
  %t694 = getelementptr [2 x i8], [2 x i8]* @.str105, i32 0, i32 0
  %t695 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str105.c, i8* %t694, i64 1)
  %t696 = call %nyx_string* @nyx_string_concat(%nyx_string* %t693, %nyx_string* %t695)
  ret %nyx_string* %t696
else215:
  br label %merge216
merge216:
  %t697 = load %nyx_string*, %nyx_string** %t570
  %t698 = getelementptr [6 x i8], [6 x i8]* @.str106, i32 0, i32 0
  %t699 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str106.c, i8* %t698, i64 5)
  %t700 = call i1 @nyx_string_equals(%nyx_string* %t697, %nyx_string* %t699)
  br i1 %t700, label %then217, label %else218
then217:
  %t701 = getelementptr [2 x i8], [2 x i8]* @.str107, i32 0, i32 0
  %t702 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str107.c, i8* %t701, i64 1)
  %t703 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t704 = call i64 @nyx_array_get({ i64, i8* }* %t703, i64 1)
  %t705 = inttoptr i64 %t704 to { i64, i8* }*
  %t706 = call %nyx_string* @ty_to_str({ i64, i8* }* %t705)
  %t707 = call %nyx_string* @nyx_string_concat(%nyx_string* %t702, %nyx_string* %t706)
  ret %nyx_string* %t707
else218:
  br label %merge219
merge219:
  %t708 = load %nyx_string*, %nyx_string** %t570
  %t709 = getelementptr [6 x i8], [6 x i8]* @.str108, i32 0, i32 0
  %t710 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str108.c, i8* %t709, i64 5)
  %t711 = call i1 @nyx_string_equals(%nyx_string* %t708, %nyx_string* %t710)
  br i1 %t711, label %then220, label %else221
then220:
  %t712 = getelementptr [2 x i8], [2 x i8]* @.str109, i32 0, i32 0
  %t713 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str109.c, i8* %t712, i64 1)
  %t714 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t715 = call i64 @nyx_array_get({ i64, i8* }* %t714, i64 1)
  %t716 = inttoptr i64 %t715 to { i64, i8* }*
  %t717 = call %nyx_string* @ty_to_str({ i64, i8* }* %t716)
  %t718 = call %nyx_string* @nyx_string_concat(%nyx_string* %t713, %nyx_string* %t717)
  ret %nyx_string* %t718
else221:
  br label %merge222
merge222:
  %t719 = load %nyx_string*, %nyx_string** %t570
  %t720 = getelementptr [9 x i8], [9 x i8]* @.str110, i32 0, i32 0
  %t721 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str110.c, i8* %t720, i64 8)
  %t722 = call i1 @nyx_string_equals(%nyx_string* %t719, %nyx_string* %t721)
  br i1 %t722, label %then223, label %else224
then223:
  %t723 = getelementptr [6 x i8], [6 x i8]* @.str111, i32 0, i32 0
  %t724 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str111.c, i8* %t723, i64 5)
  %t725 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t726 = call i64 @nyx_array_get({ i64, i8* }* %t725, i64 1)
  %t727 = inttoptr i64 %t726 to { i64, i8* }*
  %t728 = call %nyx_string* @ty_to_str({ i64, i8* }* %t727)
  %t729 = call %nyx_string* @nyx_string_concat(%nyx_string* %t724, %nyx_string* %t728)
  ret %nyx_string* %t729
else224:
  br label %merge225
merge225:
  %t730 = load %nyx_string*, %nyx_string** %t570
  %t731 = getelementptr [5 x i8], [5 x i8]* @.str112, i32 0, i32 0
  %t732 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str112.c, i8* %t731, i64 4)
  %t733 = call i1 @nyx_string_equals(%nyx_string* %t730, %nyx_string* %t732)
  br i1 %t733, label %then226, label %else227
then226:
  %t734 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t735 = call i64 @nyx_array_get({ i64, i8* }* %t734, i64 1)
  %t736 = inttoptr i64 %t735 to { i64, i8* }*
  store { i64, i8* }* %t736, { i64, i8* }** %t737
  %t738 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t739 = call i64 @nyx_array_get({ i64, i8* }* %t738, i64 2)
  %t740 = inttoptr i64 %t739 to { i64, i8* }*
  store { i64, i8* }* %t740, { i64, i8* }** %t741
  %t742 = getelementptr [4 x i8], [4 x i8]* @.str113, i32 0, i32 0
  %t743 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str113.c, i8* %t742, i64 3)
  store %nyx_string* %t743, %nyx_string** %t744
  store i64 0, i64* %t745
  br label %while_cond229
while_cond229:
  %t746 = load i64, i64* %t745
  %t747 = load { i64, i8* }*, { i64, i8* }** %t737
  %t748 = call i64 @nyx_array_length({ i64, i8* }* %t747)
  %t749 = icmp slt i64 %t746, %t748
  br i1 %t749, label %while_body230, label %while_end231
while_body230:
  %t750 = load i64, i64* %t745
  %t751 = icmp sgt i64 %t750, 0
  br i1 %t751, label %then232, label %else233
then232:
  %t752 = load %nyx_string*, %nyx_string** %t744
  %t753 = getelementptr [2 x i8], [2 x i8]* @.str114, i32 0, i32 0
  %t754 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str114.c, i8* %t753, i64 1)
  %t755 = call %nyx_string* @nyx_string_concat(%nyx_string* %t752, %nyx_string* %t754)
  store %nyx_string* %t755, %nyx_string** %t744
  br label %merge234
else233:
  br label %merge234
merge234:
  %t756 = load { i64, i8* }*, { i64, i8* }** %t737
  %t757 = load i64, i64* %t745
  %t758 = call i64 @nyx_array_get({ i64, i8* }* %t756, i64 %t757)
  %t759 = inttoptr i64 %t758 to { i64, i8* }*
  store { i64, i8* }* %t759, { i64, i8* }** %t760
  %t761 = load %nyx_string*, %nyx_string** %t744
  %t762 = load { i64, i8* }*, { i64, i8* }** %t760
  %t763 = call %nyx_string* @ty_to_str({ i64, i8* }* %t762)
  %t764 = call %nyx_string* @nyx_string_concat(%nyx_string* %t761, %nyx_string* %t763)
  store %nyx_string* %t764, %nyx_string** %t744
  %t765 = load i64, i64* %t745
  %t766 = add i64 %t765, 1
  store i64 %t766, i64* %t745
  br label %while_cond229
while_end231:
  %t767 = load %nyx_string*, %nyx_string** %t744
  %t768 = getelementptr [4 x i8], [4 x i8]* @.str115, i32 0, i32 0
  %t769 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str115.c, i8* %t768, i64 3)
  %t770 = call %nyx_string* @nyx_string_concat(%nyx_string* %t767, %nyx_string* %t769)
  %t771 = load { i64, i8* }*, { i64, i8* }** %t741
  %t772 = call %nyx_string* @ty_to_str({ i64, i8* }* %t771)
  %t773 = call %nyx_string* @nyx_string_concat(%nyx_string* %t770, %nyx_string* %t772)
  store %nyx_string* %t773, %nyx_string** %t744
  %t774 = load %nyx_string*, %nyx_string** %t744
  ret %nyx_string* %t774
else227:
  br label %merge228
merge228:
  %t775 = load %nyx_string*, %nyx_string** %t570
  %t776 = getelementptr [6 x i8], [6 x i8]* @.str116, i32 0, i32 0
  %t777 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str116.c, i8* %t776, i64 5)
  %t778 = call i1 @nyx_string_equals(%nyx_string* %t775, %nyx_string* %t777)
  br i1 %t778, label %then235, label %else236
then235:
  %t779 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t780 = call i64 @nyx_array_get_checked({ i64, i8* }* %t779, i64 1, i64 2)
  %t781 = inttoptr i64 %t780 to %nyx_string*
  store %nyx_string* %t781, %nyx_string** %t782
  %t783 = getelementptr [5 x i8], [5 x i8]* @.str117, i32 0, i32 0
  %t784 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str117.c, i8* %t783, i64 4)
  %t785 = load %nyx_string*, %nyx_string** %t782
  %t786 = call %nyx_string* @nyx_string_concat(%nyx_string* %t784, %nyx_string* %t785)
  ret %nyx_string* %t786
else236:
  br label %merge237
merge237:
  store i1 true, i1* %t787
  %t788 = load %nyx_string*, %nyx_string** %t570
  %t789 = getelementptr [9 x i8], [9 x i8]* @.str118, i32 0, i32 0
  %t790 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str118.c, i8* %t789, i64 8)
  %t791 = call i1 @nyx_string_equals(%nyx_string* %t788, %nyx_string* %t790)
  br i1 %t791, label %sc_or_end239, label %sc_or_rhs238
sc_or_rhs238:
  %t792 = load %nyx_string*, %nyx_string** %t570
  %t793 = getelementptr [7 x i8], [7 x i8]* @.str119, i32 0, i32 0
  %t794 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str119.c, i8* %t793, i64 6)
  %t795 = call i1 @nyx_string_equals(%nyx_string* %t792, %nyx_string* %t794)
  store i1 %t795, i1* %t787
  br label %sc_or_end239
sc_or_end239:
  %t796 = load i1, i1* %t787
  br i1 %t796, label %then240, label %else241
then240:
  %t797 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t798 = call i64 @nyx_array_get_checked({ i64, i8* }* %t797, i64 1, i64 2)
  %t799 = inttoptr i64 %t798 to %nyx_string*
  store %nyx_string* %t799, %nyx_string** %t800
  %t801 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t802 = call i64 @nyx_array_get({ i64, i8* }* %t801, i64 2)
  %t803 = inttoptr i64 %t802 to { i64, i8* }*
  store { i64, i8* }* %t803, { i64, i8* }** %t804
  %t805 = load { i64, i8* }*, { i64, i8* }** %t804
  %t806 = call i64 @nyx_array_length({ i64, i8* }* %t805)
  %t807 = icmp eq i64 %t806, 0
  br i1 %t807, label %then243, label %else244
then243:
  %t808 = load %nyx_string*, %nyx_string** %t800
  ret %nyx_string* %t808
else244:
  br label %merge245
merge245:
  %t809 = load %nyx_string*, %nyx_string** %t800
  %t810 = getelementptr [2 x i8], [2 x i8]* @.str120, i32 0, i32 0
  %t811 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str120.c, i8* %t810, i64 1)
  %t812 = call %nyx_string* @nyx_string_concat(%nyx_string* %t809, %nyx_string* %t811)
  store %nyx_string* %t812, %nyx_string** %t813
  store i64 0, i64* %t814
  br label %while_cond246
while_cond246:
  %t815 = load i64, i64* %t814
  %t816 = load { i64, i8* }*, { i64, i8* }** %t804
  %t817 = call i64 @nyx_array_length({ i64, i8* }* %t816)
  %t818 = icmp slt i64 %t815, %t817
  br i1 %t818, label %while_body247, label %while_end248
while_body247:
  %t819 = load i64, i64* %t814
  %t820 = icmp sgt i64 %t819, 0
  br i1 %t820, label %then249, label %else250
then249:
  %t821 = load %nyx_string*, %nyx_string** %t813
  %t822 = getelementptr [2 x i8], [2 x i8]* @.str121, i32 0, i32 0
  %t823 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str121.c, i8* %t822, i64 1)
  %t824 = call %nyx_string* @nyx_string_concat(%nyx_string* %t821, %nyx_string* %t823)
  store %nyx_string* %t824, %nyx_string** %t813
  br label %merge251
else250:
  br label %merge251
merge251:
  %t825 = load { i64, i8* }*, { i64, i8* }** %t804
  %t826 = load i64, i64* %t814
  %t827 = call i64 @nyx_array_get({ i64, i8* }* %t825, i64 %t826)
  %t828 = inttoptr i64 %t827 to { i64, i8* }*
  store { i64, i8* }* %t828, { i64, i8* }** %t829
  %t830 = load %nyx_string*, %nyx_string** %t813
  %t831 = load { i64, i8* }*, { i64, i8* }** %t829
  %t832 = call %nyx_string* @ty_to_str({ i64, i8* }* %t831)
  %t833 = call %nyx_string* @nyx_string_concat(%nyx_string* %t830, %nyx_string* %t832)
  store %nyx_string* %t833, %nyx_string** %t813
  %t834 = load i64, i64* %t814
  %t835 = add i64 %t834, 1
  store i64 %t835, i64* %t814
  br label %while_cond246
while_end248:
  %t836 = load %nyx_string*, %nyx_string** %t813
  %t837 = getelementptr [2 x i8], [2 x i8]* @.str122, i32 0, i32 0
  %t838 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str122.c, i8* %t837, i64 1)
  %t839 = call %nyx_string* @nyx_string_concat(%nyx_string* %t836, %nyx_string* %t838)
  store %nyx_string* %t839, %nyx_string** %t813
  %t840 = load %nyx_string*, %nyx_string** %t813
  ret %nyx_string* %t840
else241:
  br label %merge242
merge242:
  %t841 = load %nyx_string*, %nyx_string** %t570
  %t842 = getelementptr [10 x i8], [10 x i8]* @.str123, i32 0, i32 0
  %t843 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str123.c, i8* %t842, i64 9)
  %t844 = call i1 @nyx_string_equals(%nyx_string* %t841, %nyx_string* %t843)
  br i1 %t844, label %then252, label %else253
then252:
  %t845 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t846 = call i64 @nyx_array_get_checked({ i64, i8* }* %t845, i64 1, i64 2)
  %t847 = inttoptr i64 %t846 to %nyx_string*
  store %nyx_string* %t847, %nyx_string** %t848
  %t849 = load %nyx_string*, %nyx_string** %t848
  ret %nyx_string* %t849
else253:
  br label %merge254
merge254:
  %t850 = load %nyx_string*, %nyx_string** %t570
  %t851 = getelementptr [8 x i8], [8 x i8]* @.str124, i32 0, i32 0
  %t852 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str124.c, i8* %t851, i64 7)
  %t853 = call i1 @nyx_string_equals(%nyx_string* %t850, %nyx_string* %t852)
  br i1 %t853, label %then255, label %else256
then255:
  %t854 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t855 = call i64 @nyx_array_get_checked({ i64, i8* }* %t854, i64 1, i64 2)
  %t856 = inttoptr i64 %t855 to %nyx_string*
  store %nyx_string* %t856, %nyx_string** %t857
  %t858 = load %nyx_string*, %nyx_string** %t857
  ret %nyx_string* %t858
else256:
  br label %merge257
merge257:
  %t859 = getelementptr [2 x i8], [2 x i8]* @.str125, i32 0, i32 0
  %t860 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str125.c, i8* %t859, i64 1)
  ret %nyx_string* %t860
}

define internal { i64, i8* }* @split_at_depth0(
%nyx_string* %s.param, i64 %sep_char.param) {
  %s.ptr = alloca %nyx_string*
  %sep_char.ptr = alloca i64
  %t862 = alloca { i64, i8* }*
  %t863 = alloca i64
  %t864 = alloca i64
  %t867 = alloca i64
  %t868 = alloca i64
  %t876 = alloca i64
  %t902 = alloca %nyx_string*
  %t918 = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  store i64 %sep_char.param, i64* %sep_char.ptr
  %t861 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t861, { i64, i8* }** %t862
  store i64 0, i64* %t863
  store i64 0, i64* %t864
  %t865 = load %nyx_string*, %nyx_string** %s.ptr
  %t866 = call i64 @nyx_string_byte_length(%nyx_string* %t865)
  store i64 %t866, i64* %t867
  store i64 0, i64* %t868
  br label %while_cond258
while_cond258:
  %t869 = load i64, i64* %t868
  %t870 = load i64, i64* %t867
  %t871 = icmp slt i64 %t869, %t870
  br i1 %t871, label %while_body259, label %while_end260
while_body259:
  %t872 = load %nyx_string*, %nyx_string** %s.ptr
  %t873 = load i64, i64* %t868
  %t874 = call i8 @nyx_string_char_at(%nyx_string* %t872, i64 %t873)
  %t875 = zext i8 %t874 to i64
  store i64 %t875, i64* %t876
  %t877 = load i64, i64* %t876
  %t878 = icmp eq i64 %t877, 60
  br i1 %t878, label %then261, label %else262
then261:
  %t879 = load i64, i64* %t863
  %t880 = add i64 %t879, 1
  store i64 %t880, i64* %t863
  br label %merge263
else262:
  %t881 = load i64, i64* %t876
  %t882 = icmp eq i64 %t881, 62
  br i1 %t882, label %then264, label %else265
then264:
  %t883 = load i64, i64* %t863
  %t884 = sub i64 %t883, 1
  store i64 %t884, i64* %t863
  br label %merge266
else265:
  %t885 = load i64, i64* %t876
  %t886 = icmp eq i64 %t885, 40
  br i1 %t886, label %then267, label %else268
then267:
  %t887 = load i64, i64* %t863
  %t888 = add i64 %t887, 1
  store i64 %t888, i64* %t863
  br label %merge269
else268:
  %t889 = load i64, i64* %t876
  %t890 = icmp eq i64 %t889, 41
  br i1 %t890, label %then270, label %else271
then270:
  %t891 = load i64, i64* %t863
  %t892 = sub i64 %t891, 1
  store i64 %t892, i64* %t863
  br label %merge272
else271:
  %t893 = load i64, i64* %t876
  %t894 = load i64, i64* %sep_char.ptr
  %t895 = icmp eq i64 %t893, %t894
  br i1 %t895, label %then273, label %else274
then273:
  %t896 = load i64, i64* %t863
  %t897 = icmp eq i64 %t896, 0
  br i1 %t897, label %then276, label %else277
then276:
  %t898 = load %nyx_string*, %nyx_string** %s.ptr
  %t899 = load i64, i64* %t864
  %t900 = load i64, i64* %t868
  %t901 = call %nyx_string* @nyx_string_substring(%nyx_string* %t898, i64 %t899, i64 %t900)
  store %nyx_string* %t901, %nyx_string** %t902
  %t903 = load { i64, i8* }*, { i64, i8* }** %t862
  %t904 = load %nyx_string*, %nyx_string** %t902
  %t905 = call %nyx_string* @nyx_string_trim(%nyx_string* %t904)
  %t906 = ptrtoint %nyx_string* %t905 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t903, i64 %t906, i64 2)
  %t907 = load i64, i64* %t868
  %t908 = add i64 %t907, 1
  store i64 %t908, i64* %t864
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
  %t909 = load i64, i64* %t868
  %t910 = add i64 %t909, 1
  store i64 %t910, i64* %t868
  br label %while_cond258
while_end260:
  %t911 = load i64, i64* %t864
  %t912 = load i64, i64* %t867
  %t913 = icmp sle i64 %t911, %t912
  br i1 %t913, label %then279, label %else280
then279:
  %t914 = load %nyx_string*, %nyx_string** %s.ptr
  %t915 = load i64, i64* %t864
  %t916 = load i64, i64* %t867
  %t917 = call %nyx_string* @nyx_string_substring(%nyx_string* %t914, i64 %t915, i64 %t916)
  store %nyx_string* %t917, %nyx_string** %t918
  %t919 = load { i64, i8* }*, { i64, i8* }** %t862
  %t920 = load %nyx_string*, %nyx_string** %t918
  %t921 = call %nyx_string* @nyx_string_trim(%nyx_string* %t920)
  %t922 = ptrtoint %nyx_string* %t921 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t919, i64 %t922, i64 2)
  br label %merge281
else280:
  br label %merge281
merge281:
  %t923 = load { i64, i8* }*, { i64, i8* }** %t862
  ret { i64, i8* }* %t923
}

define internal %nyx_string* @ty_extract_leading_lifetime(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  %t937 = alloca i64
  %t938 = alloca i1
  %t941 = alloca %nyx_string*
  %t952 = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %t924 = load %nyx_string*, %nyx_string** %s.ptr
  %t925 = call i64 @nyx_string_byte_length(%nyx_string* %t924)
  %t926 = icmp eq i64 %t925, 0
  br i1 %t926, label %then282, label %else283
then282:
  %t927 = getelementptr [1 x i8], [1 x i8]* @.str126, i32 0, i32 0
  %t928 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str126.c, i8* %t927, i64 0)
  ret %nyx_string* %t928
else283:
  br label %merge284
merge284:
  %t929 = load %nyx_string*, %nyx_string** %s.ptr
  %t930 = call %nyx_string* @nyx_string_substring(%nyx_string* %t929, i64 0, i64 1)
  %t931 = getelementptr [2 x i8], [2 x i8]* @.str127, i32 0, i32 0
  %t932 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str127.c, i8* %t931, i64 1)
  %t933 = call i1 @nyx_string_equals(%nyx_string* %t930, %nyx_string* %t932)
  %t934 = xor i1 %t933, true
  br i1 %t934, label %then285, label %else286
then285:
  %t935 = getelementptr [1 x i8], [1 x i8]* @.str128, i32 0, i32 0
  %t936 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str128.c, i8* %t935, i64 0)
  ret %nyx_string* %t936
else286:
  br label %merge287
merge287:
  store i64 1, i64* %t937
  store i1 1, i1* %t938
  %t939 = getelementptr [2 x i8], [2 x i8]* @.str129, i32 0, i32 0
  %t940 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str129.c, i8* %t939, i64 1)
  store %nyx_string* %t940, %nyx_string** %t941
  br label %while_cond288
while_cond288:
  %t942 = load i1, i1* %t938
  br i1 %t942, label %while_body289, label %while_end290
while_body289:
  %t943 = load i64, i64* %t937
  %t944 = load %nyx_string*, %nyx_string** %s.ptr
  %t945 = call i64 @nyx_string_byte_length(%nyx_string* %t944)
  %t946 = icmp sge i64 %t943, %t945
  br i1 %t946, label %then291, label %else292
then291:
  store i1 0, i1* %t938
  br label %merge293
else292:
  %t947 = load %nyx_string*, %nyx_string** %s.ptr
  %t948 = load i64, i64* %t937
  %t949 = load i64, i64* %t937
  %t950 = add i64 %t949, 1
  %t951 = call %nyx_string* @nyx_string_substring(%nyx_string* %t947, i64 %t948, i64 %t950)
  store %nyx_string* %t951, %nyx_string** %t952
  %t953 = load %nyx_string*, %nyx_string** %t952
  %t954 = load %nyx_string*, %nyx_string** %t941
  %t955 = call i1 @nyx_string_equals(%nyx_string* %t953, %nyx_string* %t954)
  br i1 %t955, label %then294, label %else295
then294:
  store i1 0, i1* %t938
  br label %merge296
else295:
  %t956 = load i64, i64* %t937
  %t957 = add i64 %t956, 1
  store i64 %t957, i64* %t937
  br label %merge296
merge296:
  br label %merge293
merge293:
  br label %while_cond288
while_end290:
  %t958 = load %nyx_string*, %nyx_string** %s.ptr
  %t959 = load i64, i64* %t937
  %t960 = call %nyx_string* @nyx_string_substring(%nyx_string* %t958, i64 1, i64 %t959)
  ret %nyx_string* %t960
}

define internal %nyx_string* @ty_strip_leading_lifetime(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  %t972 = alloca i64
  %t973 = alloca i1
  %t976 = alloca %nyx_string*
  %t987 = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %t961 = load %nyx_string*, %nyx_string** %s.ptr
  %t962 = call i64 @nyx_string_byte_length(%nyx_string* %t961)
  %t963 = icmp eq i64 %t962, 0
  br i1 %t963, label %then297, label %else298
then297:
  %t964 = load %nyx_string*, %nyx_string** %s.ptr
  ret %nyx_string* %t964
else298:
  br label %merge299
merge299:
  %t965 = load %nyx_string*, %nyx_string** %s.ptr
  %t966 = call %nyx_string* @nyx_string_substring(%nyx_string* %t965, i64 0, i64 1)
  %t967 = getelementptr [2 x i8], [2 x i8]* @.str130, i32 0, i32 0
  %t968 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str130.c, i8* %t967, i64 1)
  %t969 = call i1 @nyx_string_equals(%nyx_string* %t966, %nyx_string* %t968)
  %t970 = xor i1 %t969, true
  br i1 %t970, label %then300, label %else301
then300:
  %t971 = load %nyx_string*, %nyx_string** %s.ptr
  ret %nyx_string* %t971
else301:
  br label %merge302
merge302:
  store i64 1, i64* %t972
  store i1 1, i1* %t973
  %t974 = getelementptr [2 x i8], [2 x i8]* @.str131, i32 0, i32 0
  %t975 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str131.c, i8* %t974, i64 1)
  store %nyx_string* %t975, %nyx_string** %t976
  br label %while_cond303
while_cond303:
  %t977 = load i1, i1* %t973
  br i1 %t977, label %while_body304, label %while_end305
while_body304:
  %t978 = load i64, i64* %t972
  %t979 = load %nyx_string*, %nyx_string** %s.ptr
  %t980 = call i64 @nyx_string_byte_length(%nyx_string* %t979)
  %t981 = icmp sge i64 %t978, %t980
  br i1 %t981, label %then306, label %else307
then306:
  store i1 0, i1* %t973
  br label %merge308
else307:
  %t982 = load %nyx_string*, %nyx_string** %s.ptr
  %t983 = load i64, i64* %t972
  %t984 = load i64, i64* %t972
  %t985 = add i64 %t984, 1
  %t986 = call %nyx_string* @nyx_string_substring(%nyx_string* %t982, i64 %t983, i64 %t985)
  store %nyx_string* %t986, %nyx_string** %t987
  %t988 = load %nyx_string*, %nyx_string** %t987
  %t989 = load %nyx_string*, %nyx_string** %t976
  %t990 = call i1 @nyx_string_equals(%nyx_string* %t988, %nyx_string* %t989)
  br i1 %t990, label %then309, label %else310
then309:
  store i1 0, i1* %t973
  br label %merge311
else310:
  %t991 = load i64, i64* %t972
  %t992 = add i64 %t991, 1
  store i64 %t992, i64* %t972
  br label %merge311
merge311:
  br label %merge308
merge308:
  br label %while_cond303
while_end305:
  %t993 = load i64, i64* %t972
  %t994 = load %nyx_string*, %nyx_string** %s.ptr
  %t995 = call i64 @nyx_string_byte_length(%nyx_string* %t994)
  %t996 = icmp slt i64 %t993, %t995
  br i1 %t996, label %then312, label %else313
then312:
  %t997 = load %nyx_string*, %nyx_string** %s.ptr
  %t998 = load i64, i64* %t972
  %t999 = load i64, i64* %t972
  %t1000 = add i64 %t999, 1
  %t1001 = call %nyx_string* @nyx_string_substring(%nyx_string* %t997, i64 %t998, i64 %t1000)
  %t1002 = getelementptr [2 x i8], [2 x i8]* @.str132, i32 0, i32 0
  %t1003 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str132.c, i8* %t1002, i64 1)
  %t1004 = call i1 @nyx_string_equals(%nyx_string* %t1001, %nyx_string* %t1003)
  br i1 %t1004, label %then315, label %else316
then315:
  %t1005 = load i64, i64* %t972
  %t1006 = add i64 %t1005, 1
  store i64 %t1006, i64* %t972
  br label %merge317
else316:
  br label %merge317
merge317:
  br label %merge314
else313:
  br label %merge314
merge314:
  %t1007 = load %nyx_string*, %nyx_string** %s.ptr
  %t1008 = load i64, i64* %t972
  %t1009 = load %nyx_string*, %nyx_string** %s.ptr
  %t1010 = call i64 @nyx_string_byte_length(%nyx_string* %t1009)
  %t1011 = call %nyx_string* @nyx_string_substring(%nyx_string* %t1007, i64 %t1008, i64 %t1010)
  ret %nyx_string* %t1011
}

define { i64, i8* }* @ty_parse(
%nyx_string* %ann.param) {
  %ann.ptr = alloca %nyx_string*
  %t1014 = alloca %nyx_string*
  %t1072 = alloca %nyx_string*
  %t1075 = alloca { i64, i8* }*
  %t1086 = alloca %nyx_string*
  %t1089 = alloca %nyx_string*
  %t1097 = alloca { i64, i8* }*
  %t1109 = alloca %nyx_string*
  %t1112 = alloca %nyx_string*
  %t1120 = alloca { i64, i8* }*
  %t1132 = alloca %nyx_string*
  %t1142 = alloca i64
  %t1143 = alloca i64
  %t1145 = alloca i64
  %t1146 = alloca i64
  %t1154 = alloca i64
  %t1175 = alloca %nyx_string*
  %t1177 = alloca { i64, i8* }*
  %t1187 = alloca { i64, i8* }*
  %t1188 = alloca i64
  %t1197 = alloca %nyx_string*
  %t1200 = alloca { i64, i8* }*
  %t1207 = alloca { i64, i8* }*
  %t1218 = alloca %nyx_string*
  %t1227 = alloca %nyx_string*
  %t1241 = alloca i64
  %t1248 = alloca %nyx_string*
  %t1256 = alloca %nyx_string*
  %t1259 = alloca { i64, i8* }*
  %t1261 = alloca { i64, i8* }*
  %t1262 = alloca i64
  %t1271 = alloca %nyx_string*
  %t1274 = alloca { i64, i8* }*
  %t1373 = alloca i64
  %t1374 = alloca i1
  store %nyx_string* %ann.param, %nyx_string** %ann.ptr
  %t1012 = load %nyx_string*, %nyx_string** %ann.ptr
  %t1013 = call %nyx_string* @nyx_string_trim(%nyx_string* %t1012)
  store %nyx_string* %t1013, %nyx_string** %t1014
  %t1015 = load %nyx_string*, %nyx_string** %t1014
  %t1016 = getelementptr [1 x i8], [1 x i8]* @.str133, i32 0, i32 0
  %t1017 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str133.c, i8* %t1016, i64 0)
  %t1018 = call i1 @nyx_string_equals(%nyx_string* %t1015, %nyx_string* %t1017)
  br i1 %t1018, label %then318, label %else319
then318:
  %t1019 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %t1019
else319:
  br label %merge320
merge320:
  %t1020 = load %nyx_string*, %nyx_string** %t1014
  %t1021 = getelementptr [4 x i8], [4 x i8]* @.str134, i32 0, i32 0
  %t1022 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str134.c, i8* %t1021, i64 3)
  %t1023 = call i1 @nyx_string_equals(%nyx_string* %t1020, %nyx_string* %t1022)
  br i1 %t1023, label %then321, label %else322
then321:
  %t1024 = call { i64, i8* }* @ty_int()
  ret { i64, i8* }* %t1024
else322:
  br label %merge323
merge323:
  %t1025 = load %nyx_string*, %nyx_string** %t1014
  %t1026 = getelementptr [6 x i8], [6 x i8]* @.str135, i32 0, i32 0
  %t1027 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str135.c, i8* %t1026, i64 5)
  %t1028 = call i1 @nyx_string_equals(%nyx_string* %t1025, %nyx_string* %t1027)
  br i1 %t1028, label %then324, label %else325
then324:
  %t1029 = call { i64, i8* }* @ty_float()
  ret { i64, i8* }* %t1029
else325:
  br label %merge326
merge326:
  %t1030 = load %nyx_string*, %nyx_string** %t1014
  %t1031 = getelementptr [5 x i8], [5 x i8]* @.str136, i32 0, i32 0
  %t1032 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str136.c, i8* %t1031, i64 4)
  %t1033 = call i1 @nyx_string_equals(%nyx_string* %t1030, %nyx_string* %t1032)
  br i1 %t1033, label %then327, label %else328
then327:
  %t1034 = call { i64, i8* }* @ty_bool()
  ret { i64, i8* }* %t1034
else328:
  br label %merge329
merge329:
  %t1035 = load %nyx_string*, %nyx_string** %t1014
  %t1036 = getelementptr [7 x i8], [7 x i8]* @.str137, i32 0, i32 0
  %t1037 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str137.c, i8* %t1036, i64 6)
  %t1038 = call i1 @nyx_string_equals(%nyx_string* %t1035, %nyx_string* %t1037)
  br i1 %t1038, label %then330, label %else331
then330:
  %t1039 = call { i64, i8* }* @ty_string()
  ret { i64, i8* }* %t1039
else331:
  br label %merge332
merge332:
  %t1040 = load %nyx_string*, %nyx_string** %t1014
  %t1041 = getelementptr [5 x i8], [5 x i8]* @.str138, i32 0, i32 0
  %t1042 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str138.c, i8* %t1041, i64 4)
  %t1043 = call i1 @nyx_string_equals(%nyx_string* %t1040, %nyx_string* %t1042)
  br i1 %t1043, label %then333, label %else334
then333:
  %t1044 = call { i64, i8* }* @ty_char()
  ret { i64, i8* }* %t1044
else334:
  br label %merge335
merge335:
  %t1045 = load %nyx_string*, %nyx_string** %t1014
  %t1046 = getelementptr [5 x i8], [5 x i8]* @.str139, i32 0, i32 0
  %t1047 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str139.c, i8* %t1046, i64 4)
  %t1048 = call i1 @nyx_string_equals(%nyx_string* %t1045, %nyx_string* %t1047)
  br i1 %t1048, label %then336, label %else337
then336:
  %t1049 = call { i64, i8* }* @ty_unit()
  ret { i64, i8* }* %t1049
else337:
  br label %merge338
merge338:
  %t1050 = load %nyx_string*, %nyx_string** %t1014
  %t1051 = getelementptr [3 x i8], [3 x i8]* @.str140, i32 0, i32 0
  %t1052 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str140.c, i8* %t1051, i64 2)
  %t1053 = call i1 @nyx_string_equals(%nyx_string* %t1050, %nyx_string* %t1052)
  br i1 %t1053, label %then339, label %else340
then339:
  %t1054 = call { i64, i8* }* @ty_unit()
  ret { i64, i8* }* %t1054
else340:
  br label %merge341
merge341:
  %t1055 = load %nyx_string*, %nyx_string** %t1014
  %t1056 = getelementptr [5 x i8], [5 x i8]* @.str141, i32 0, i32 0
  %t1057 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str141.c, i8* %t1056, i64 4)
  %t1058 = call i1 @nyx_string_equals(%nyx_string* %t1055, %nyx_string* %t1057)
  br i1 %t1058, label %then342, label %else343
then342:
  %t1059 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %t1059
else343:
  br label %merge344
merge344:
  %t1060 = load %nyx_string*, %nyx_string** %t1014
  %t1061 = call i1 @is_sized_name(%nyx_string* %t1060)
  br i1 %t1061, label %then345, label %else346
then345:
  %t1062 = load %nyx_string*, %nyx_string** %t1014
  %t1063 = call { i64, i8* }* @ty_sized(%nyx_string* %t1062)
  ret { i64, i8* }* %t1063
else346:
  br label %merge347
merge347:
  %t1064 = load %nyx_string*, %nyx_string** %t1014
  %t1065 = getelementptr [2 x i8], [2 x i8]* @.str142, i32 0, i32 0
  %t1066 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str142.c, i8* %t1065, i64 1)
  %t1067 = call i1 @nyx_string_starts_with(%nyx_string* %t1064, %nyx_string* %t1066)
  br i1 %t1067, label %then348, label %else349
then348:
  %t1068 = load %nyx_string*, %nyx_string** %t1014
  %t1069 = load %nyx_string*, %nyx_string** %t1014
  %t1070 = call i64 @nyx_string_byte_length(%nyx_string* %t1069)
  %t1071 = call %nyx_string* @nyx_string_substring(%nyx_string* %t1068, i64 1, i64 %t1070)
  store %nyx_string* %t1071, %nyx_string** %t1072
  %t1073 = load %nyx_string*, %nyx_string** %t1072
  %t1074 = call { i64, i8* }* @ty_parse(%nyx_string* %t1073)
  store { i64, i8* }* %t1074, { i64, i8* }** %t1075
  %t1076 = load { i64, i8* }*, { i64, i8* }** %t1075
  %t1077 = call { i64, i8* }* @ty_ptr({ i64, i8* }* %t1076)
  ret { i64, i8* }* %t1077
else349:
  br label %merge350
merge350:
  %t1078 = load %nyx_string*, %nyx_string** %t1014
  %t1079 = getelementptr [6 x i8], [6 x i8]* @.str143, i32 0, i32 0
  %t1080 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str143.c, i8* %t1079, i64 5)
  %t1081 = call i1 @nyx_string_starts_with(%nyx_string* %t1078, %nyx_string* %t1080)
  br i1 %t1081, label %then351, label %else352
then351:
  %t1082 = load %nyx_string*, %nyx_string** %t1014
  %t1083 = load %nyx_string*, %nyx_string** %t1014
  %t1084 = call i64 @nyx_string_byte_length(%nyx_string* %t1083)
  %t1085 = call %nyx_string* @nyx_string_substring(%nyx_string* %t1082, i64 5, i64 %t1084)
  store %nyx_string* %t1085, %nyx_string** %t1086
  %t1087 = load %nyx_string*, %nyx_string** %t1086
  %t1088 = call %nyx_string* @ty_extract_leading_lifetime(%nyx_string* %t1087)
  store %nyx_string* %t1088, %nyx_string** %t1089
  %t1090 = load %nyx_string*, %nyx_string** %t1089
  %t1091 = call i64 @nyx_string_byte_length(%nyx_string* %t1090)
  %t1092 = icmp sgt i64 %t1091, 0
  br i1 %t1092, label %then354, label %else355
then354:
  %t1093 = load %nyx_string*, %nyx_string** %t1086
  %t1094 = call %nyx_string* @ty_strip_leading_lifetime(%nyx_string* %t1093)
  store %nyx_string* %t1094, %nyx_string** %t1086
  br label %merge356
else355:
  br label %merge356
merge356:
  %t1095 = load %nyx_string*, %nyx_string** %t1086
  %t1096 = call { i64, i8* }* @ty_parse(%nyx_string* %t1095)
  store { i64, i8* }* %t1096, { i64, i8* }** %t1097
  %t1098 = load { i64, i8* }*, { i64, i8* }** %t1097
  %t1099 = load %nyx_string*, %nyx_string** %t1089
  %t1100 = call { i64, i8* }* @ty_ref_mut_r({ i64, i8* }* %t1098, %nyx_string* %t1099)
  ret { i64, i8* }* %t1100
else352:
  br label %merge353
merge353:
  %t1101 = load %nyx_string*, %nyx_string** %t1014
  %t1102 = getelementptr [2 x i8], [2 x i8]* @.str144, i32 0, i32 0
  %t1103 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str144.c, i8* %t1102, i64 1)
  %t1104 = call i1 @nyx_string_starts_with(%nyx_string* %t1101, %nyx_string* %t1103)
  br i1 %t1104, label %then357, label %else358
then357:
  %t1105 = load %nyx_string*, %nyx_string** %t1014
  %t1106 = load %nyx_string*, %nyx_string** %t1014
  %t1107 = call i64 @nyx_string_byte_length(%nyx_string* %t1106)
  %t1108 = call %nyx_string* @nyx_string_substring(%nyx_string* %t1105, i64 1, i64 %t1107)
  store %nyx_string* %t1108, %nyx_string** %t1109
  %t1110 = load %nyx_string*, %nyx_string** %t1109
  %t1111 = call %nyx_string* @ty_extract_leading_lifetime(%nyx_string* %t1110)
  store %nyx_string* %t1111, %nyx_string** %t1112
  %t1113 = load %nyx_string*, %nyx_string** %t1112
  %t1114 = call i64 @nyx_string_byte_length(%nyx_string* %t1113)
  %t1115 = icmp sgt i64 %t1114, 0
  br i1 %t1115, label %then360, label %else361
then360:
  %t1116 = load %nyx_string*, %nyx_string** %t1109
  %t1117 = call %nyx_string* @ty_strip_leading_lifetime(%nyx_string* %t1116)
  store %nyx_string* %t1117, %nyx_string** %t1109
  br label %merge362
else361:
  br label %merge362
merge362:
  %t1118 = load %nyx_string*, %nyx_string** %t1109
  %t1119 = call { i64, i8* }* @ty_parse(%nyx_string* %t1118)
  store { i64, i8* }* %t1119, { i64, i8* }** %t1120
  %t1121 = load { i64, i8* }*, { i64, i8* }** %t1120
  %t1122 = load %nyx_string*, %nyx_string** %t1112
  %t1123 = call { i64, i8* }* @ty_ref_r({ i64, i8* }* %t1121, %nyx_string* %t1122)
  ret { i64, i8* }* %t1123
else358:
  br label %merge359
merge359:
  %t1124 = load %nyx_string*, %nyx_string** %t1014
  %t1125 = getelementptr [5 x i8], [5 x i8]* @.str145, i32 0, i32 0
  %t1126 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str145.c, i8* %t1125, i64 4)
  %t1127 = call i1 @nyx_string_starts_with(%nyx_string* %t1124, %nyx_string* %t1126)
  br i1 %t1127, label %then363, label %else364
then363:
  %t1128 = load %nyx_string*, %nyx_string** %t1014
  %t1129 = load %nyx_string*, %nyx_string** %t1014
  %t1130 = call i64 @nyx_string_byte_length(%nyx_string* %t1129)
  %t1131 = call %nyx_string* @nyx_string_substring(%nyx_string* %t1128, i64 4, i64 %t1130)
  store %nyx_string* %t1131, %nyx_string** %t1132
  %t1133 = load %nyx_string*, %nyx_string** %t1132
  %t1134 = call %nyx_string* @nyx_string_trim(%nyx_string* %t1133)
  %t1135 = call { i64, i8* }* @ty_dyn(%nyx_string* %t1134)
  ret { i64, i8* }* %t1135
else364:
  br label %merge365
merge365:
  %t1136 = load %nyx_string*, %nyx_string** %t1014
  %t1137 = getelementptr [4 x i8], [4 x i8]* @.str146, i32 0, i32 0
  %t1138 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str146.c, i8* %t1137, i64 3)
  %t1139 = call i1 @nyx_string_starts_with(%nyx_string* %t1136, %nyx_string* %t1138)
  br i1 %t1139, label %then366, label %else367
then366:
  %t1140 = load %nyx_string*, %nyx_string** %t1014
  %t1141 = call i64 @nyx_string_byte_length(%nyx_string* %t1140)
  store i64 %t1141, i64* %t1142
  store i64 0, i64* %t1143
  %t1144 = sub i64 0, 1
  store i64 %t1144, i64* %t1145
  store i64 0, i64* %t1146
  br label %while_cond369
while_cond369:
  %t1147 = load i64, i64* %t1146
  %t1148 = load i64, i64* %t1142
  %t1149 = icmp slt i64 %t1147, %t1148
  br i1 %t1149, label %while_body370, label %while_end371
while_body370:
  %t1150 = load %nyx_string*, %nyx_string** %t1014
  %t1151 = load i64, i64* %t1146
  %t1152 = call i8 @nyx_string_char_at(%nyx_string* %t1150, i64 %t1151)
  %t1153 = zext i8 %t1152 to i64
  store i64 %t1153, i64* %t1154
  %t1155 = load i64, i64* %t1154
  %t1156 = icmp eq i64 %t1155, 40
  br i1 %t1156, label %then372, label %else373
then372:
  %t1157 = load i64, i64* %t1143
  %t1158 = add i64 %t1157, 1
  store i64 %t1158, i64* %t1143
  br label %merge374
else373:
  %t1159 = load i64, i64* %t1154
  %t1160 = icmp eq i64 %t1159, 41
  br i1 %t1160, label %then375, label %else376
then375:
  %t1161 = load i64, i64* %t1143
  %t1162 = sub i64 %t1161, 1
  store i64 %t1162, i64* %t1143
  %t1163 = load i64, i64* %t1143
  %t1164 = icmp eq i64 %t1163, 0
  br i1 %t1164, label %then378, label %else379
then378:
  %t1165 = load i64, i64* %t1146
  store i64 %t1165, i64* %t1145
  %t1166 = load i64, i64* %t1142
  store i64 %t1166, i64* %t1146
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
  %t1167 = load i64, i64* %t1146
  %t1168 = add i64 %t1167, 1
  store i64 %t1168, i64* %t1146
  br label %while_cond369
while_end371:
  %t1169 = load i64, i64* %t1145
  %t1170 = icmp slt i64 %t1169, 0
  br i1 %t1170, label %then381, label %else382
then381:
  %t1171 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %t1171
else382:
  br label %merge383
merge383:
  %t1172 = load %nyx_string*, %nyx_string** %t1014
  %t1173 = load i64, i64* %t1145
  %t1174 = call %nyx_string* @nyx_string_substring(%nyx_string* %t1172, i64 3, i64 %t1173)
  store %nyx_string* %t1174, %nyx_string** %t1175
  %t1176 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t1176, { i64, i8* }** %t1177
  %t1178 = load %nyx_string*, %nyx_string** %t1175
  %t1179 = call %nyx_string* @nyx_string_trim(%nyx_string* %t1178)
  %t1180 = getelementptr [1 x i8], [1 x i8]* @.str147, i32 0, i32 0
  %t1181 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str147.c, i8* %t1180, i64 0)
  %t1182 = call i1 @nyx_string_equals(%nyx_string* %t1179, %nyx_string* %t1181)
  %t1183 = xor i1 %t1182, true
  br i1 %t1183, label %then384, label %else385
then384:
  %t1184 = load %nyx_string*, %nyx_string** %t1175
  %t1185 = call { i64, i8* }* @split_at_depth0(%nyx_string* %t1184, i64 44)
  store { i64, i8* }* %t1185, { i64, i8* }** %t1177
  br label %merge386
else385:
  br label %merge386
merge386:
  %t1186 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t1186, { i64, i8* }** %t1187
  store i64 0, i64* %t1188
  br label %while_cond387
while_cond387:
  %t1189 = load i64, i64* %t1188
  %t1190 = load { i64, i8* }*, { i64, i8* }** %t1177
  %t1191 = call i64 @nyx_array_length({ i64, i8* }* %t1190)
  %t1192 = icmp slt i64 %t1189, %t1191
  br i1 %t1192, label %while_body388, label %while_end389
while_body388:
  %t1193 = load { i64, i8* }*, { i64, i8* }** %t1177
  %t1194 = load i64, i64* %t1188
  %t1195 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1193, i64 %t1194, i64 2)
  %t1196 = inttoptr i64 %t1195 to %nyx_string*
  store %nyx_string* %t1196, %nyx_string** %t1197
  %t1198 = load %nyx_string*, %nyx_string** %t1197
  %t1199 = call { i64, i8* }* @ty_parse(%nyx_string* %t1198)
  store { i64, i8* }* %t1199, { i64, i8* }** %t1200
  %t1201 = load { i64, i8* }*, { i64, i8* }** %t1187
  %t1202 = load { i64, i8* }*, { i64, i8* }** %t1200
  %t1203 = ptrtoint { i64, i8* }* %t1202 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1201, i64 %t1203, i64 5)
  %t1204 = load i64, i64* %t1188
  %t1205 = add i64 %t1204, 1
  store i64 %t1205, i64* %t1188
  br label %while_cond387
while_end389:
  %t1206 = call { i64, i8* }* @ty_unit()
  store { i64, i8* }* %t1206, { i64, i8* }** %t1207
  %t1208 = load i64, i64* %t1145
  %t1209 = add i64 %t1208, 1
  %t1210 = load i64, i64* %t1142
  %t1211 = icmp slt i64 %t1209, %t1210
  br i1 %t1211, label %then390, label %else391
then390:
  %t1212 = load %nyx_string*, %nyx_string** %t1014
  %t1213 = load i64, i64* %t1145
  %t1214 = add i64 %t1213, 1
  %t1215 = load i64, i64* %t1142
  %t1216 = call %nyx_string* @nyx_string_substring(%nyx_string* %t1212, i64 %t1214, i64 %t1215)
  %t1217 = call %nyx_string* @nyx_string_trim(%nyx_string* %t1216)
  store %nyx_string* %t1217, %nyx_string** %t1218
  %t1219 = load %nyx_string*, %nyx_string** %t1218
  %t1220 = getelementptr [3 x i8], [3 x i8]* @.str148, i32 0, i32 0
  %t1221 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str148.c, i8* %t1220, i64 2)
  %t1222 = call i1 @nyx_string_starts_with(%nyx_string* %t1219, %nyx_string* %t1221)
  br i1 %t1222, label %then393, label %else394
then393:
  %t1223 = load %nyx_string*, %nyx_string** %t1218
  %t1224 = load %nyx_string*, %nyx_string** %t1218
  %t1225 = call i64 @nyx_string_byte_length(%nyx_string* %t1224)
  %t1226 = call %nyx_string* @nyx_string_substring(%nyx_string* %t1223, i64 2, i64 %t1225)
  store %nyx_string* %t1226, %nyx_string** %t1227
  %t1228 = load %nyx_string*, %nyx_string** %t1227
  %t1229 = call { i64, i8* }* @ty_parse(%nyx_string* %t1228)
  store { i64, i8* }* %t1229, { i64, i8* }** %t1207
  br label %merge395
else394:
  br label %merge395
merge395:
  br label %merge392
else391:
  br label %merge392
merge392:
  %t1230 = load { i64, i8* }*, { i64, i8* }** %t1187
  %t1231 = load { i64, i8* }*, { i64, i8* }** %t1207
  %t1232 = call { i64, i8* }* @ty_fn({ i64, i8* }* %t1230, { i64, i8* }* %t1231)
  ret { i64, i8* }* %t1232
else367:
  br label %merge368
merge368:
  %t1233 = load %nyx_string*, %nyx_string** %t1014
  %t1234 = getelementptr [2 x i8], [2 x i8]* @.str149, i32 0, i32 0
  %t1235 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str149.c, i8* %t1234, i64 1)
  %t1236 = call i1 @nyx_string_ends_with(%nyx_string* %t1233, %nyx_string* %t1235)
  br i1 %t1236, label %then396, label %else397
then396:
  %t1237 = load %nyx_string*, %nyx_string** %t1014
  %t1238 = getelementptr [2 x i8], [2 x i8]* @.str150, i32 0, i32 0
  %t1239 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str150.c, i8* %t1238, i64 1)
  %t1240 = call i64 @nyx_string_index_of(%nyx_string* %t1237, %nyx_string* %t1239)
  store i64 %t1240, i64* %t1241
  %t1242 = load i64, i64* %t1241
  %t1243 = icmp sgt i64 %t1242, 0
  br i1 %t1243, label %then399, label %else400
then399:
  %t1244 = load %nyx_string*, %nyx_string** %t1014
  %t1245 = load i64, i64* %t1241
  %t1246 = call %nyx_string* @nyx_string_substring(%nyx_string* %t1244, i64 0, i64 %t1245)
  %t1247 = call %nyx_string* @nyx_string_trim(%nyx_string* %t1246)
  store %nyx_string* %t1247, %nyx_string** %t1248
  %t1249 = load %nyx_string*, %nyx_string** %t1014
  %t1250 = load i64, i64* %t1241
  %t1251 = add i64 %t1250, 1
  %t1252 = load %nyx_string*, %nyx_string** %t1014
  %t1253 = call i64 @nyx_string_byte_length(%nyx_string* %t1252)
  %t1254 = sub i64 %t1253, 1
  %t1255 = call %nyx_string* @nyx_string_substring(%nyx_string* %t1249, i64 %t1251, i64 %t1254)
  store %nyx_string* %t1255, %nyx_string** %t1256
  %t1257 = load %nyx_string*, %nyx_string** %t1256
  %t1258 = call { i64, i8* }* @split_at_depth0(%nyx_string* %t1257, i64 44)
  store { i64, i8* }* %t1258, { i64, i8* }** %t1259
  %t1260 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t1260, { i64, i8* }** %t1261
  store i64 0, i64* %t1262
  br label %while_cond402
while_cond402:
  %t1263 = load i64, i64* %t1262
  %t1264 = load { i64, i8* }*, { i64, i8* }** %t1259
  %t1265 = call i64 @nyx_array_length({ i64, i8* }* %t1264)
  %t1266 = icmp slt i64 %t1263, %t1265
  br i1 %t1266, label %while_body403, label %while_end404
while_body403:
  %t1267 = load { i64, i8* }*, { i64, i8* }** %t1259
  %t1268 = load i64, i64* %t1262
  %t1269 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1267, i64 %t1268, i64 2)
  %t1270 = inttoptr i64 %t1269 to %nyx_string*
  store %nyx_string* %t1270, %nyx_string** %t1271
  %t1272 = load %nyx_string*, %nyx_string** %t1271
  %t1273 = call { i64, i8* }* @ty_parse(%nyx_string* %t1272)
  store { i64, i8* }* %t1273, { i64, i8* }** %t1274
  %t1275 = load { i64, i8* }*, { i64, i8* }** %t1261
  %t1276 = load { i64, i8* }*, { i64, i8* }** %t1274
  %t1277 = ptrtoint { i64, i8* }* %t1276 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1275, i64 %t1277, i64 5)
  %t1278 = load i64, i64* %t1262
  %t1279 = add i64 %t1278, 1
  store i64 %t1279, i64* %t1262
  br label %while_cond402
while_end404:
  %t1280 = load %nyx_string*, %nyx_string** %t1248
  %t1281 = getelementptr [6 x i8], [6 x i8]* @.str151, i32 0, i32 0
  %t1282 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str151.c, i8* %t1281, i64 5)
  %t1283 = call i1 @nyx_string_equals(%nyx_string* %t1280, %nyx_string* %t1282)
  br i1 %t1283, label %then405, label %else406
then405:
  %t1284 = load { i64, i8* }*, { i64, i8* }** %t1261
  %t1285 = call i64 @nyx_array_length({ i64, i8* }* %t1284)
  %t1286 = icmp eq i64 %t1285, 1
  br i1 %t1286, label %then408, label %else409
then408:
  %t1287 = load { i64, i8* }*, { i64, i8* }** %t1261
  %t1288 = call i64 @nyx_array_get({ i64, i8* }* %t1287, i64 0)
  %t1289 = inttoptr i64 %t1288 to { i64, i8* }*
  %t1290 = call { i64, i8* }* @ty_array({ i64, i8* }* %t1289)
  ret { i64, i8* }* %t1290
else409:
  br label %merge410
merge410:
  br label %merge407
else406:
  br label %merge407
merge407:
  %t1291 = load %nyx_string*, %nyx_string** %t1248
  %t1292 = getelementptr [7 x i8], [7 x i8]* @.str152, i32 0, i32 0
  %t1293 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str152.c, i8* %t1292, i64 6)
  %t1294 = call i1 @nyx_string_equals(%nyx_string* %t1291, %nyx_string* %t1293)
  br i1 %t1294, label %then411, label %else412
then411:
  %t1295 = load { i64, i8* }*, { i64, i8* }** %t1261
  %t1296 = call i64 @nyx_array_length({ i64, i8* }* %t1295)
  %t1297 = icmp eq i64 %t1296, 1
  br i1 %t1297, label %then414, label %else415
then414:
  %t1298 = load { i64, i8* }*, { i64, i8* }** %t1261
  %t1299 = call i64 @nyx_array_get({ i64, i8* }* %t1298, i64 0)
  %t1300 = inttoptr i64 %t1299 to { i64, i8* }*
  %t1301 = call { i64, i8* }* @ty_option({ i64, i8* }* %t1300)
  ret { i64, i8* }* %t1301
else415:
  br label %merge416
merge416:
  br label %merge413
else412:
  br label %merge413
merge413:
  %t1302 = load %nyx_string*, %nyx_string** %t1248
  %t1303 = getelementptr [7 x i8], [7 x i8]* @.str153, i32 0, i32 0
  %t1304 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str153.c, i8* %t1303, i64 6)
  %t1305 = call i1 @nyx_string_equals(%nyx_string* %t1302, %nyx_string* %t1304)
  br i1 %t1305, label %then417, label %else418
then417:
  %t1306 = load { i64, i8* }*, { i64, i8* }** %t1261
  %t1307 = call i64 @nyx_array_length({ i64, i8* }* %t1306)
  %t1308 = icmp eq i64 %t1307, 2
  br i1 %t1308, label %then420, label %else421
then420:
  %t1309 = load { i64, i8* }*, { i64, i8* }** %t1261
  %t1310 = call i64 @nyx_array_get({ i64, i8* }* %t1309, i64 0)
  %t1311 = inttoptr i64 %t1310 to { i64, i8* }*
  %t1312 = load { i64, i8* }*, { i64, i8* }** %t1261
  %t1313 = call i64 @nyx_array_get({ i64, i8* }* %t1312, i64 1)
  %t1314 = inttoptr i64 %t1313 to { i64, i8* }*
  %t1315 = call { i64, i8* }* @ty_result({ i64, i8* }* %t1311, { i64, i8* }* %t1314)
  ret { i64, i8* }* %t1315
else421:
  br label %merge422
merge422:
  br label %merge419
else418:
  br label %merge419
merge419:
  %t1316 = load %nyx_string*, %nyx_string** %t1248
  %t1317 = getelementptr [4 x i8], [4 x i8]* @.str154, i32 0, i32 0
  %t1318 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str154.c, i8* %t1317, i64 3)
  %t1319 = call i1 @nyx_string_equals(%nyx_string* %t1316, %nyx_string* %t1318)
  br i1 %t1319, label %then423, label %else424
then423:
  %t1320 = load { i64, i8* }*, { i64, i8* }** %t1261
  %t1321 = call i64 @nyx_array_length({ i64, i8* }* %t1320)
  %t1322 = icmp eq i64 %t1321, 2
  br i1 %t1322, label %then426, label %else427
then426:
  %t1323 = load { i64, i8* }*, { i64, i8* }** %t1261
  %t1324 = call i64 @nyx_array_get({ i64, i8* }* %t1323, i64 0)
  %t1325 = inttoptr i64 %t1324 to { i64, i8* }*
  %t1326 = load { i64, i8* }*, { i64, i8* }** %t1261
  %t1327 = call i64 @nyx_array_get({ i64, i8* }* %t1326, i64 1)
  %t1328 = inttoptr i64 %t1327 to { i64, i8* }*
  %t1329 = call { i64, i8* }* @ty_map({ i64, i8* }* %t1325, { i64, i8* }* %t1328)
  ret { i64, i8* }* %t1329
else427:
  br label %merge428
merge428:
  %t1330 = load { i64, i8* }*, { i64, i8* }** %t1261
  %t1331 = call i64 @nyx_array_length({ i64, i8* }* %t1330)
  %t1332 = icmp eq i64 %t1331, 1
  br i1 %t1332, label %then429, label %else430
then429:
  %t1333 = call { i64, i8* }* @ty_string()
  %t1334 = load { i64, i8* }*, { i64, i8* }** %t1261
  %t1335 = call i64 @nyx_array_get({ i64, i8* }* %t1334, i64 0)
  %t1336 = inttoptr i64 %t1335 to { i64, i8* }*
  %t1337 = call { i64, i8* }* @ty_map({ i64, i8* }* %t1333, { i64, i8* }* %t1336)
  ret { i64, i8* }* %t1337
else430:
  br label %merge431
merge431:
  br label %merge425
else424:
  br label %merge425
merge425:
  %t1338 = load %nyx_string*, %nyx_string** %t1248
  %t1339 = load { i64, i8* }*, { i64, i8* }** %t1261
  %t1340 = call { i64, i8* }* @ty_struct_ty(%nyx_string* %t1338, { i64, i8* }* %t1339)
  ret { i64, i8* }* %t1340
else400:
  br label %merge401
merge401:
  br label %merge398
else397:
  br label %merge398
merge398:
  %t1341 = load %nyx_string*, %nyx_string** %t1014
  %t1342 = getelementptr [6 x i8], [6 x i8]* @.str155, i32 0, i32 0
  %t1343 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str155.c, i8* %t1342, i64 5)
  %t1344 = call i1 @nyx_string_equals(%nyx_string* %t1341, %nyx_string* %t1343)
  br i1 %t1344, label %then432, label %else433
then432:
  %t1345 = call { i64, i8* }* @ty_unknown()
  %t1346 = call { i64, i8* }* @ty_array({ i64, i8* }* %t1345)
  ret { i64, i8* }* %t1346
else433:
  br label %merge434
merge434:
  %t1347 = load %nyx_string*, %nyx_string** %t1014
  %t1348 = getelementptr [7 x i8], [7 x i8]* @.str156, i32 0, i32 0
  %t1349 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str156.c, i8* %t1348, i64 6)
  %t1350 = call i1 @nyx_string_equals(%nyx_string* %t1347, %nyx_string* %t1349)
  br i1 %t1350, label %then435, label %else436
then435:
  %t1351 = call { i64, i8* }* @ty_unknown()
  %t1352 = call { i64, i8* }* @ty_option({ i64, i8* }* %t1351)
  ret { i64, i8* }* %t1352
else436:
  br label %merge437
merge437:
  %t1353 = load %nyx_string*, %nyx_string** %t1014
  %t1354 = getelementptr [7 x i8], [7 x i8]* @.str157, i32 0, i32 0
  %t1355 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str157.c, i8* %t1354, i64 6)
  %t1356 = call i1 @nyx_string_equals(%nyx_string* %t1353, %nyx_string* %t1355)
  br i1 %t1356, label %then438, label %else439
then438:
  %t1357 = call { i64, i8* }* @ty_unknown()
  %t1358 = call { i64, i8* }* @ty_unknown()
  %t1359 = call { i64, i8* }* @ty_result({ i64, i8* }* %t1357, { i64, i8* }* %t1358)
  ret { i64, i8* }* %t1359
else439:
  br label %merge440
merge440:
  %t1360 = load %nyx_string*, %nyx_string** %t1014
  %t1361 = getelementptr [4 x i8], [4 x i8]* @.str158, i32 0, i32 0
  %t1362 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str158.c, i8* %t1361, i64 3)
  %t1363 = call i1 @nyx_string_equals(%nyx_string* %t1360, %nyx_string* %t1362)
  br i1 %t1363, label %then441, label %else442
then441:
  %t1364 = call { i64, i8* }* @ty_unknown()
  %t1365 = call { i64, i8* }* @ty_unknown()
  %t1366 = call { i64, i8* }* @ty_map({ i64, i8* }* %t1364, { i64, i8* }* %t1365)
  ret { i64, i8* }* %t1366
else442:
  br label %merge443
merge443:
  %t1367 = load %nyx_string*, %nyx_string** %t1014
  %t1368 = call i64 @nyx_string_byte_length(%nyx_string* %t1367)
  %t1369 = icmp sle i64 %t1368, 2
  br i1 %t1369, label %then444, label %else445
then444:
  %t1370 = load %nyx_string*, %nyx_string** %t1014
  %t1371 = call i8 @nyx_string_char_at(%nyx_string* %t1370, i64 0)
  %t1372 = zext i8 %t1371 to i64
  store i64 %t1372, i64* %t1373
  store i1 false, i1* %t1374
  %t1375 = load i64, i64* %t1373
  %t1376 = icmp sge i64 %t1375, 65
  br i1 %t1376, label %sc_and_rhs447, label %sc_and_end448
sc_and_rhs447:
  %t1377 = load i64, i64* %t1373
  %t1378 = icmp sle i64 %t1377, 90
  store i1 %t1378, i1* %t1374
  br label %sc_and_end448
sc_and_end448:
  %t1379 = load i1, i1* %t1374
  br i1 %t1379, label %then449, label %else450
then449:
  %t1380 = load %nyx_string*, %nyx_string** %t1014
  %t1381 = call { i64, i8* }* @ty_generic(%nyx_string* %t1380)
  ret { i64, i8* }* %t1381
else450:
  br label %merge451
merge451:
  br label %merge446
else445:
  br label %merge446
merge446:
  %t1382 = load %nyx_string*, %nyx_string** %t1014
  %t1383 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1384 = call { i64, i8* }* @ty_struct_ty(%nyx_string* %t1382, { i64, i8* }* %t1383)
  ret { i64, i8* }* %t1384
}

define { i64, i8* }* @ty_of_literal(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  %t1387 = alloca %nyx_string*
  %t1394 = alloca { i64, i8* }*
  %t1401 = alloca %nyx_string*
  %t1430 = alloca { i64, i8* }*
  %t1437 = alloca { i64, i8* }*
  %t1450 = alloca %ASTNode
  %t1456 = alloca %ASTNode
  %t1459 = alloca { i64, i8* }*
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %t1385 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 0
  %t1386 = load %nyx_string*, %nyx_string** %t1385
  store %nyx_string* %t1386, %nyx_string** %t1387
  %t1388 = load %nyx_string*, %nyx_string** %t1387
  %t1389 = getelementptr [7 x i8], [7 x i8]* @.str159, i32 0, i32 0
  %t1390 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str159.c, i8* %t1389, i64 6)
  %t1391 = call i1 @nyx_string_equals(%nyx_string* %t1388, %nyx_string* %t1390)
  br i1 %t1391, label %then452, label %else453
then452:
  %t1392 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %t1393 = load { i64, i8* }*, { i64, i8* }** %t1392
  store { i64, i8* }* %t1393, { i64, i8* }** %t1394
  %t1395 = load { i64, i8* }*, { i64, i8* }** %t1394
  %t1396 = call i64 @nyx_array_length({ i64, i8* }* %t1395)
  %t1397 = icmp sgt i64 %t1396, 0
  br i1 %t1397, label %then455, label %else456
then455:
  %t1398 = load { i64, i8* }*, { i64, i8* }** %t1394
  %t1399 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1398, i64 0, i64 2)
  %t1400 = inttoptr i64 %t1399 to %nyx_string*
  store %nyx_string* %t1400, %nyx_string** %t1401
  %t1402 = load %nyx_string*, %nyx_string** %t1401
  %t1403 = getelementptr [2 x i8], [2 x i8]* @.str160, i32 0, i32 0
  %t1404 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str160.c, i8* %t1403, i64 1)
  %t1405 = call i64 @nyx_string_index_of(%nyx_string* %t1402, %nyx_string* %t1404)
  %t1406 = icmp sge i64 %t1405, 0
  br i1 %t1406, label %then458, label %else459
then458:
  %t1407 = call { i64, i8* }* @ty_float()
  ret { i64, i8* }* %t1407
else459:
  br label %merge460
merge460:
  br label %merge457
else456:
  br label %merge457
merge457:
  %t1408 = call { i64, i8* }* @ty_int()
  ret { i64, i8* }* %t1408
else453:
  br label %merge454
merge454:
  %t1409 = load %nyx_string*, %nyx_string** %t1387
  %t1410 = getelementptr [7 x i8], [7 x i8]* @.str161, i32 0, i32 0
  %t1411 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str161.c, i8* %t1410, i64 6)
  %t1412 = call i1 @nyx_string_equals(%nyx_string* %t1409, %nyx_string* %t1411)
  br i1 %t1412, label %then461, label %else462
then461:
  %t1413 = call { i64, i8* }* @ty_string()
  ret { i64, i8* }* %t1413
else462:
  br label %merge463
merge463:
  %t1414 = load %nyx_string*, %nyx_string** %t1387
  %t1415 = getelementptr [5 x i8], [5 x i8]* @.str162, i32 0, i32 0
  %t1416 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str162.c, i8* %t1415, i64 4)
  %t1417 = call i1 @nyx_string_equals(%nyx_string* %t1414, %nyx_string* %t1416)
  br i1 %t1417, label %then464, label %else465
then464:
  %t1418 = call { i64, i8* }* @ty_bool()
  ret { i64, i8* }* %t1418
else465:
  br label %merge466
merge466:
  %t1419 = load %nyx_string*, %nyx_string** %t1387
  %t1420 = getelementptr [5 x i8], [5 x i8]* @.str163, i32 0, i32 0
  %t1421 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str163.c, i8* %t1420, i64 4)
  %t1422 = call i1 @nyx_string_equals(%nyx_string* %t1419, %nyx_string* %t1421)
  br i1 %t1422, label %then467, label %else468
then467:
  %t1423 = call { i64, i8* }* @ty_char()
  ret { i64, i8* }* %t1423
else468:
  br label %merge469
merge469:
  %t1424 = load %nyx_string*, %nyx_string** %t1387
  %t1425 = getelementptr [6 x i8], [6 x i8]* @.str164, i32 0, i32 0
  %t1426 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str164.c, i8* %t1425, i64 5)
  %t1427 = call i1 @nyx_string_equals(%nyx_string* %t1424, %nyx_string* %t1426)
  br i1 %t1427, label %then470, label %else471
then470:
  %t1428 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %t1429 = load { i64, i8* }*, { i64, i8* }** %t1428
  store { i64, i8* }* %t1429, { i64, i8* }** %t1430
  %t1431 = load { i64, i8* }*, { i64, i8* }** %t1430
  %t1432 = call i64 @nyx_array_length({ i64, i8* }* %t1431)
  %t1433 = icmp sgt i64 %t1432, 0
  br i1 %t1433, label %then473, label %else474
then473:
  %t1434 = load { i64, i8* }*, { i64, i8* }** %t1430
  %t1435 = call i64 @nyx_array_get({ i64, i8* }* %t1434, i64 0)
  %t1436 = inttoptr i64 %t1435 to { i64, i8* }*
  store { i64, i8* }* %t1436, { i64, i8* }** %t1437
  %t1438 = load { i64, i8* }*, { i64, i8* }** %t1437
  %t1439 = call i64 @nyx_array_length({ i64, i8* }* %t1438)
  %t1440 = icmp sgt i64 %t1439, 0
  br i1 %t1440, label %then476, label %else477
then476:
  %t1441 = load { i64, i8* }*, { i64, i8* }** %t1437
  %t1442 = call i64 @nyx_array_get({ i64, i8* }* %t1441, i64 0)
  %t1443 = inttoptr i64 %t1442 to { i64, i8* }*
  %t1444 = call i64 @nyx_array_get({ i64, i8* }* %t1443, i64 0)
  %t1445 = call i64 @nyx_array_get({ i64, i8* }* %t1443, i64 1)
  %t1446 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t1443, i64 2)
  %t1447 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %t1443, i64 3)
  %t1448 = inttoptr i64 %t1444 to %nyx_string*
  %t1449 = inttoptr i64 %t1445 to { i64, i8* }*
  %t1451 = getelementptr inbounds %ASTNode, %ASTNode* %t1450, i32 0, i32 0
  store %nyx_string* %t1448, %nyx_string** %t1451
  %t1452 = getelementptr inbounds %ASTNode, %ASTNode* %t1450, i32 0, i32 1
  store { i64, i8* }* %t1449, { i64, i8* }** %t1452
  %t1453 = getelementptr inbounds %ASTNode, %ASTNode* %t1450, i32 0, i32 2
  store i64 %t1446, i64* %t1453
  %t1454 = getelementptr inbounds %ASTNode, %ASTNode* %t1450, i32 0, i32 3
  store i64 %t1447, i64* %t1454
  %t1455 = load %ASTNode, %ASTNode* %t1450
  store %ASTNode %t1455, %ASTNode* %t1456
  %t1457 = load %ASTNode, %ASTNode* %t1456
  %t1458 = call { i64, i8* }* @ty_of_literal(%ASTNode %t1457)
  store { i64, i8* }* %t1458, { i64, i8* }** %t1459
  %t1460 = load { i64, i8* }*, { i64, i8* }** %t1459
  %t1461 = call i1 @ty_is_unknown({ i64, i8* }* %t1460)
  %t1462 = xor i1 %t1461, true
  br i1 %t1462, label %then479, label %else480
then479:
  %t1463 = load { i64, i8* }*, { i64, i8* }** %t1459
  %t1464 = call { i64, i8* }* @ty_array({ i64, i8* }* %t1463)
  ret { i64, i8* }* %t1464
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
  %t1465 = call { i64, i8* }* @ty_unknown()
  %t1466 = call { i64, i8* }* @ty_array({ i64, i8* }* %t1465)
  ret { i64, i8* }* %t1466
else471:
  br label %merge472
merge472:
  %t1467 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %t1467
}

define i1 @is_integer_like(
{ i64, i8* }* %t.param) {
  %t.ptr = alloca { i64, i8* }*
  %t1470 = alloca %nyx_string*
  %t1482 = alloca %nyx_string*
  store { i64, i8* }* %t.param, { i64, i8* }** %t.ptr
  %t1468 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t1469 = call %nyx_string* @ty_kind({ i64, i8* }* %t1468)
  store %nyx_string* %t1469, %nyx_string** %t1470
  %t1471 = load %nyx_string*, %nyx_string** %t1470
  %t1472 = getelementptr [6 x i8], [6 x i8]* @.str165, i32 0, i32 0
  %t1473 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str165.c, i8* %t1472, i64 5)
  %t1474 = call i1 @nyx_string_equals(%nyx_string* %t1471, %nyx_string* %t1473)
  br i1 %t1474, label %then482, label %else483
then482:
  ret i1 1
else483:
  br label %merge484
merge484:
  %t1475 = load %nyx_string*, %nyx_string** %t1470
  %t1476 = getelementptr [8 x i8], [8 x i8]* @.str166, i32 0, i32 0
  %t1477 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str166.c, i8* %t1476, i64 7)
  %t1478 = call i1 @nyx_string_equals(%nyx_string* %t1475, %nyx_string* %t1477)
  br i1 %t1478, label %then485, label %else486
then485:
  %t1479 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t1480 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1479, i64 1, i64 2)
  %t1481 = inttoptr i64 %t1480 to %nyx_string*
  store %nyx_string* %t1481, %nyx_string** %t1482
  %t1483 = load %nyx_string*, %nyx_string** %t1482
  %t1484 = getelementptr [4 x i8], [4 x i8]* @.str167, i32 0, i32 0
  %t1485 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str167.c, i8* %t1484, i64 3)
  %t1486 = call i1 @nyx_string_equals(%nyx_string* %t1483, %nyx_string* %t1485)
  br i1 %t1486, label %then488, label %else489
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
  %t1489 = alloca %nyx_string*
  %t1501 = alloca %nyx_string*
  store { i64, i8* }* %t.param, { i64, i8* }** %t.ptr
  %t1487 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t1488 = call %nyx_string* @ty_kind({ i64, i8* }* %t1487)
  store %nyx_string* %t1488, %nyx_string** %t1489
  %t1490 = load %nyx_string*, %nyx_string** %t1489
  %t1491 = getelementptr [8 x i8], [8 x i8]* @.str168, i32 0, i32 0
  %t1492 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str168.c, i8* %t1491, i64 7)
  %t1493 = call i1 @nyx_string_equals(%nyx_string* %t1490, %nyx_string* %t1492)
  br i1 %t1493, label %then491, label %else492
then491:
  ret i1 1
else492:
  br label %merge493
merge493:
  %t1494 = load %nyx_string*, %nyx_string** %t1489
  %t1495 = getelementptr [8 x i8], [8 x i8]* @.str169, i32 0, i32 0
  %t1496 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str169.c, i8* %t1495, i64 7)
  %t1497 = call i1 @nyx_string_equals(%nyx_string* %t1494, %nyx_string* %t1496)
  br i1 %t1497, label %then494, label %else495
then494:
  %t1498 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t1499 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1498, i64 1, i64 2)
  %t1500 = inttoptr i64 %t1499 to %nyx_string*
  store %nyx_string* %t1500, %nyx_string** %t1501
  %t1502 = load %nyx_string*, %nyx_string** %t1501
  %t1503 = getelementptr [4 x i8], [4 x i8]* @.str170, i32 0, i32 0
  %t1504 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str170.c, i8* %t1503, i64 3)
  %t1505 = call i1 @nyx_string_equals(%nyx_string* %t1502, %nyx_string* %t1504)
  br i1 %t1505, label %then497, label %else498
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
  %t1506 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t1507 = call i1 @is_integer_like({ i64, i8* }* %t1506)
  br i1 %t1507, label %then500, label %else501
then500:
  ret i1 1
else501:
  br label %merge502
merge502:
  %t1508 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t1509 = call i1 @is_float_like({ i64, i8* }* %t1508)
  br i1 %t1509, label %then503, label %else504
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
  %t1512 = alloca %nyx_string*
  store { i64, i8* }* %t.param, { i64, i8* }** %t.ptr
  %t1510 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t1511 = call %nyx_string* @ty_kind({ i64, i8* }* %t1510)
  store %nyx_string* %t1511, %nyx_string** %t1512
  %t1513 = load %nyx_string*, %nyx_string** %t1512
  %t1514 = getelementptr [6 x i8], [6 x i8]* @.str171, i32 0, i32 0
  %t1515 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str171.c, i8* %t1514, i64 5)
  %t1516 = call i1 @nyx_string_equals(%nyx_string* %t1513, %nyx_string* %t1515)
  br i1 %t1516, label %then506, label %else507
then506:
  %t1517 = getelementptr [1 x i8], [1 x i8]* @.str172, i32 0, i32 0
  %t1518 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str172.c, i8* %t1517, i64 0)
  ret %nyx_string* %t1518
else507:
  br label %merge508
merge508:
  %t1519 = load %nyx_string*, %nyx_string** %t1512
  %t1520 = getelementptr [7 x i8], [7 x i8]* @.str173, i32 0, i32 0
  %t1521 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str173.c, i8* %t1520, i64 6)
  %t1522 = call i1 @nyx_string_equals(%nyx_string* %t1519, %nyx_string* %t1521)
  br i1 %t1522, label %then509, label %else510
then509:
  %t1523 = getelementptr [1 x i8], [1 x i8]* @.str174, i32 0, i32 0
  %t1524 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str174.c, i8* %t1523, i64 0)
  ret %nyx_string* %t1524
else510:
  br label %merge511
merge511:
  %t1525 = load %nyx_string*, %nyx_string** %t1512
  %t1526 = getelementptr [10 x i8], [10 x i8]* @.str175, i32 0, i32 0
  %t1527 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str175.c, i8* %t1526, i64 9)
  %t1528 = call i1 @nyx_string_equals(%nyx_string* %t1525, %nyx_string* %t1527)
  br i1 %t1528, label %then512, label %else513
then512:
  %t1529 = getelementptr [1 x i8], [1 x i8]* @.str176, i32 0, i32 0
  %t1530 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str176.c, i8* %t1529, i64 0)
  ret %nyx_string* %t1530
else513:
  br label %merge514
merge514:
  %t1531 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t1532 = call %nyx_string* @ty_to_str({ i64, i8* }* %t1531)
  ret %nyx_string* %t1532
}

define i1 @ty_is_concrete(
{ i64, i8* }* %t.param) {
  %t.ptr = alloca { i64, i8* }*
  %t1535 = alloca %nyx_string*
  %t1548 = alloca i1
  %t1549 = alloca i1
  %t1550 = alloca i1
  %t1551 = alloca i1
  %t1579 = alloca { i64, i8* }*
  %t1582 = alloca i1
  %t1595 = alloca { i64, i8* }*
  %t1599 = alloca { i64, i8* }*
  %t1612 = alloca { i64, i8* }*
  %t1613 = alloca i64
  %t1622 = alloca { i64, i8* }*
  %t1631 = alloca { i64, i8* }*
  %t1634 = alloca i1
  %t1647 = alloca { i64, i8* }*
  %t1648 = alloca i64
  %t1657 = alloca { i64, i8* }*
  store { i64, i8* }* %t.param, { i64, i8* }** %t.ptr
  %t1533 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t1534 = call %nyx_string* @ty_kind({ i64, i8* }* %t1533)
  store %nyx_string* %t1534, %nyx_string** %t1535
  %t1536 = load %nyx_string*, %nyx_string** %t1535
  %t1537 = getelementptr [10 x i8], [10 x i8]* @.str177, i32 0, i32 0
  %t1538 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str177.c, i8* %t1537, i64 9)
  %t1539 = call i1 @nyx_string_equals(%nyx_string* %t1536, %nyx_string* %t1538)
  br i1 %t1539, label %then515, label %else516
then515:
  ret i1 0
else516:
  br label %merge517
merge517:
  %t1540 = load %nyx_string*, %nyx_string** %t1535
  %t1541 = getelementptr [10 x i8], [10 x i8]* @.str178, i32 0, i32 0
  %t1542 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str178.c, i8* %t1541, i64 9)
  %t1543 = call i1 @nyx_string_equals(%nyx_string* %t1540, %nyx_string* %t1542)
  br i1 %t1543, label %then518, label %else519
then518:
  ret i1 0
else519:
  br label %merge520
merge520:
  %t1544 = load %nyx_string*, %nyx_string** %t1535
  %t1545 = getelementptr [6 x i8], [6 x i8]* @.str179, i32 0, i32 0
  %t1546 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str179.c, i8* %t1545, i64 5)
  %t1547 = call i1 @nyx_string_equals(%nyx_string* %t1544, %nyx_string* %t1546)
  br i1 %t1547, label %then521, label %else522
then521:
  ret i1 0
else522:
  br label %merge523
merge523:
  store i1 true, i1* %t1548
  store i1 true, i1* %t1549
  store i1 true, i1* %t1550
  store i1 true, i1* %t1551
  %t1552 = load %nyx_string*, %nyx_string** %t1535
  %t1553 = getelementptr [8 x i8], [8 x i8]* @.str180, i32 0, i32 0
  %t1554 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str180.c, i8* %t1553, i64 7)
  %t1555 = call i1 @nyx_string_equals(%nyx_string* %t1552, %nyx_string* %t1554)
  br i1 %t1555, label %sc_or_end525, label %sc_or_rhs524
sc_or_rhs524:
  %t1556 = load %nyx_string*, %nyx_string** %t1535
  %t1557 = getelementptr [9 x i8], [9 x i8]* @.str181, i32 0, i32 0
  %t1558 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str181.c, i8* %t1557, i64 8)
  %t1559 = call i1 @nyx_string_equals(%nyx_string* %t1556, %nyx_string* %t1558)
  store i1 %t1559, i1* %t1551
  br label %sc_or_end525
sc_or_end525:
  %t1560 = load i1, i1* %t1551
  br i1 %t1560, label %sc_or_end527, label %sc_or_rhs526
sc_or_rhs526:
  %t1561 = load %nyx_string*, %nyx_string** %t1535
  %t1562 = getelementptr [6 x i8], [6 x i8]* @.str182, i32 0, i32 0
  %t1563 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str182.c, i8* %t1562, i64 5)
  %t1564 = call i1 @nyx_string_equals(%nyx_string* %t1561, %nyx_string* %t1563)
  store i1 %t1564, i1* %t1550
  br label %sc_or_end527
sc_or_end527:
  %t1565 = load i1, i1* %t1550
  br i1 %t1565, label %sc_or_end529, label %sc_or_rhs528
sc_or_rhs528:
  %t1566 = load %nyx_string*, %nyx_string** %t1535
  %t1567 = getelementptr [6 x i8], [6 x i8]* @.str183, i32 0, i32 0
  %t1568 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str183.c, i8* %t1567, i64 5)
  %t1569 = call i1 @nyx_string_equals(%nyx_string* %t1566, %nyx_string* %t1568)
  store i1 %t1569, i1* %t1549
  br label %sc_or_end529
sc_or_end529:
  %t1570 = load i1, i1* %t1549
  br i1 %t1570, label %sc_or_end531, label %sc_or_rhs530
sc_or_rhs530:
  %t1571 = load %nyx_string*, %nyx_string** %t1535
  %t1572 = getelementptr [9 x i8], [9 x i8]* @.str184, i32 0, i32 0
  %t1573 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str184.c, i8* %t1572, i64 8)
  %t1574 = call i1 @nyx_string_equals(%nyx_string* %t1571, %nyx_string* %t1573)
  store i1 %t1574, i1* %t1548
  br label %sc_or_end531
sc_or_end531:
  %t1575 = load i1, i1* %t1548
  br i1 %t1575, label %then532, label %else533
then532:
  %t1576 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t1577 = call i64 @nyx_array_get({ i64, i8* }* %t1576, i64 1)
  %t1578 = inttoptr i64 %t1577 to { i64, i8* }*
  store { i64, i8* }* %t1578, { i64, i8* }** %t1579
  %t1580 = load { i64, i8* }*, { i64, i8* }** %t1579
  %t1581 = call i1 @ty_is_concrete({ i64, i8* }* %t1580)
  ret i1 %t1581
else533:
  br label %merge534
merge534:
  store i1 true, i1* %t1582
  %t1583 = load %nyx_string*, %nyx_string** %t1535
  %t1584 = getelementptr [9 x i8], [9 x i8]* @.str185, i32 0, i32 0
  %t1585 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str185.c, i8* %t1584, i64 8)
  %t1586 = call i1 @nyx_string_equals(%nyx_string* %t1583, %nyx_string* %t1585)
  br i1 %t1586, label %sc_or_end536, label %sc_or_rhs535
sc_or_rhs535:
  %t1587 = load %nyx_string*, %nyx_string** %t1535
  %t1588 = getelementptr [6 x i8], [6 x i8]* @.str186, i32 0, i32 0
  %t1589 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str186.c, i8* %t1588, i64 5)
  %t1590 = call i1 @nyx_string_equals(%nyx_string* %t1587, %nyx_string* %t1589)
  store i1 %t1590, i1* %t1582
  br label %sc_or_end536
sc_or_end536:
  %t1591 = load i1, i1* %t1582
  br i1 %t1591, label %then537, label %else538
then537:
  %t1592 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t1593 = call i64 @nyx_array_get({ i64, i8* }* %t1592, i64 1)
  %t1594 = inttoptr i64 %t1593 to { i64, i8* }*
  store { i64, i8* }* %t1594, { i64, i8* }** %t1595
  %t1596 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t1597 = call i64 @nyx_array_get({ i64, i8* }* %t1596, i64 2)
  %t1598 = inttoptr i64 %t1597 to { i64, i8* }*
  store { i64, i8* }* %t1598, { i64, i8* }** %t1599
  %t1600 = load { i64, i8* }*, { i64, i8* }** %t1595
  %t1601 = call i1 @ty_is_concrete({ i64, i8* }* %t1600)
  %t1602 = xor i1 %t1601, true
  br i1 %t1602, label %then540, label %else541
then540:
  ret i1 0
else541:
  br label %merge542
merge542:
  %t1603 = load { i64, i8* }*, { i64, i8* }** %t1599
  %t1604 = call i1 @ty_is_concrete({ i64, i8* }* %t1603)
  ret i1 %t1604
else538:
  br label %merge539
merge539:
  %t1605 = load %nyx_string*, %nyx_string** %t1535
  %t1606 = getelementptr [5 x i8], [5 x i8]* @.str187, i32 0, i32 0
  %t1607 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str187.c, i8* %t1606, i64 4)
  %t1608 = call i1 @nyx_string_equals(%nyx_string* %t1605, %nyx_string* %t1607)
  br i1 %t1608, label %then543, label %else544
then543:
  %t1609 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t1610 = call i64 @nyx_array_get({ i64, i8* }* %t1609, i64 1)
  %t1611 = inttoptr i64 %t1610 to { i64, i8* }*
  store { i64, i8* }* %t1611, { i64, i8* }** %t1612
  store i64 0, i64* %t1613
  br label %while_cond546
while_cond546:
  %t1614 = load i64, i64* %t1613
  %t1615 = load { i64, i8* }*, { i64, i8* }** %t1612
  %t1616 = call i64 @nyx_array_length({ i64, i8* }* %t1615)
  %t1617 = icmp slt i64 %t1614, %t1616
  br i1 %t1617, label %while_body547, label %while_end548
while_body547:
  %t1618 = load { i64, i8* }*, { i64, i8* }** %t1612
  %t1619 = load i64, i64* %t1613
  %t1620 = call i64 @nyx_array_get({ i64, i8* }* %t1618, i64 %t1619)
  %t1621 = inttoptr i64 %t1620 to { i64, i8* }*
  store { i64, i8* }* %t1621, { i64, i8* }** %t1622
  %t1623 = load { i64, i8* }*, { i64, i8* }** %t1622
  %t1624 = call i1 @ty_is_concrete({ i64, i8* }* %t1623)
  %t1625 = xor i1 %t1624, true
  br i1 %t1625, label %then549, label %else550
then549:
  ret i1 0
else550:
  br label %merge551
merge551:
  %t1626 = load i64, i64* %t1613
  %t1627 = add i64 %t1626, 1
  store i64 %t1627, i64* %t1613
  br label %while_cond546
while_end548:
  %t1628 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t1629 = call i64 @nyx_array_get({ i64, i8* }* %t1628, i64 2)
  %t1630 = inttoptr i64 %t1629 to { i64, i8* }*
  store { i64, i8* }* %t1630, { i64, i8* }** %t1631
  %t1632 = load { i64, i8* }*, { i64, i8* }** %t1631
  %t1633 = call i1 @ty_is_concrete({ i64, i8* }* %t1632)
  ret i1 %t1633
else544:
  br label %merge545
merge545:
  store i1 true, i1* %t1634
  %t1635 = load %nyx_string*, %nyx_string** %t1535
  %t1636 = getelementptr [9 x i8], [9 x i8]* @.str188, i32 0, i32 0
  %t1637 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str188.c, i8* %t1636, i64 8)
  %t1638 = call i1 @nyx_string_equals(%nyx_string* %t1635, %nyx_string* %t1637)
  br i1 %t1638, label %sc_or_end553, label %sc_or_rhs552
sc_or_rhs552:
  %t1639 = load %nyx_string*, %nyx_string** %t1535
  %t1640 = getelementptr [7 x i8], [7 x i8]* @.str189, i32 0, i32 0
  %t1641 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str189.c, i8* %t1640, i64 6)
  %t1642 = call i1 @nyx_string_equals(%nyx_string* %t1639, %nyx_string* %t1641)
  store i1 %t1642, i1* %t1634
  br label %sc_or_end553
sc_or_end553:
  %t1643 = load i1, i1* %t1634
  br i1 %t1643, label %then554, label %else555
then554:
  %t1644 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t1645 = call i64 @nyx_array_get({ i64, i8* }* %t1644, i64 2)
  %t1646 = inttoptr i64 %t1645 to { i64, i8* }*
  store { i64, i8* }* %t1646, { i64, i8* }** %t1647
  store i64 0, i64* %t1648
  br label %while_cond557
while_cond557:
  %t1649 = load i64, i64* %t1648
  %t1650 = load { i64, i8* }*, { i64, i8* }** %t1647
  %t1651 = call i64 @nyx_array_length({ i64, i8* }* %t1650)
  %t1652 = icmp slt i64 %t1649, %t1651
  br i1 %t1652, label %while_body558, label %while_end559
while_body558:
  %t1653 = load { i64, i8* }*, { i64, i8* }** %t1647
  %t1654 = load i64, i64* %t1648
  %t1655 = call i64 @nyx_array_get({ i64, i8* }* %t1653, i64 %t1654)
  %t1656 = inttoptr i64 %t1655 to { i64, i8* }*
  store { i64, i8* }* %t1656, { i64, i8* }** %t1657
  %t1658 = load { i64, i8* }*, { i64, i8* }** %t1657
  %t1659 = call i1 @ty_is_concrete({ i64, i8* }* %t1658)
  %t1660 = xor i1 %t1659, true
  br i1 %t1660, label %then560, label %else561
then560:
  ret i1 0
else561:
  br label %merge562
merge562:
  %t1661 = load i64, i64* %t1648
  %t1662 = add i64 %t1661, 1
  store i64 %t1662, i64* %t1648
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
  %subst.ptr = alloca { i64, i8* }*
  %t1666 = alloca { i64, i8* }*
  store { i64, i8* }* %t.param, { i64, i8* }** %t.ptr
  store { i64, i8* }* %subst.param, { i64, i8* }** %subst.ptr
  %t1663 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %t1664 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t1665 = call { i64, i8* }* @subst_resolve_deep({ i64, i8* }* %t1663, { i64, i8* }* %t1664)
  store { i64, i8* }* %t1665, { i64, i8* }** %t1666
  %t1667 = load { i64, i8* }*, { i64, i8* }** %t1666
  %t1668 = call i1 @ty_is_concrete({ i64, i8* }* %t1667)
  %t1669 = xor i1 %t1668, true
  br i1 %t1669, label %then563, label %else564
then563:
  %t1670 = getelementptr [1 x i8], [1 x i8]* @.str190, i32 0, i32 0
  %t1671 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str190.c, i8* %t1670, i64 0)
  ret %nyx_string* %t1671
else564:
  br label %merge565
merge565:
  %t1672 = load { i64, i8* }*, { i64, i8* }** %t1666
  %t1673 = call %nyx_string* @ty_to_str({ i64, i8* }* %t1672)
  ret %nyx_string* %t1673
}

define { i64, i8* }* @ty_of_binop(
%nyx_string* %op.param, { i64, i8* }* %lhs.param, { i64, i8* }* %rhs.param) {
  %op.ptr = alloca %nyx_string*
  %lhs.ptr = alloca { i64, i8* }*
  %rhs.ptr = alloca { i64, i8* }*
  %t1680 = alloca i1
  %t1681 = alloca i1
  %t1682 = alloca i1
  %t1704 = alloca %nyx_string*
  %t1707 = alloca %nyx_string*
  %t1718 = alloca i1
  %t1719 = alloca i1
  %t1720 = alloca i1
  %t1721 = alloca i1
  %t1722 = alloca i1
  %t1753 = alloca i1
  %t1754 = alloca i1
  %t1755 = alloca i1
  %t1756 = alloca i1
  %t1793 = alloca %nyx_string*
  %t1796 = alloca %nyx_string*
  %t1807 = alloca i1
  %t1808 = alloca i1
  %t1809 = alloca i1
  %t1810 = alloca i1
  %t1811 = alloca i1
  store %nyx_string* %op.param, %nyx_string** %op.ptr
  store { i64, i8* }* %lhs.param, { i64, i8* }** %lhs.ptr
  store { i64, i8* }* %rhs.param, { i64, i8* }** %rhs.ptr
  %t1674 = load { i64, i8* }*, { i64, i8* }** %lhs.ptr
  %t1675 = call i1 @ty_is_unknown({ i64, i8* }* %t1674)
  br i1 %t1675, label %then566, label %else567
then566:
  %t1676 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %t1676
else567:
  br label %merge568
merge568:
  %t1677 = load { i64, i8* }*, { i64, i8* }** %rhs.ptr
  %t1678 = call i1 @ty_is_unknown({ i64, i8* }* %t1677)
  br i1 %t1678, label %then569, label %else570
then569:
  %t1679 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %t1679
else570:
  br label %merge571
merge571:
  store i1 true, i1* %t1680
  store i1 true, i1* %t1681
  store i1 true, i1* %t1682
  %t1683 = load %nyx_string*, %nyx_string** %op.ptr
  %t1684 = getelementptr [8 x i8], [8 x i8]* @.str191, i32 0, i32 0
  %t1685 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str191.c, i8* %t1684, i64 7)
  %t1686 = call i1 @nyx_string_equals(%nyx_string* %t1683, %nyx_string* %t1685)
  br i1 %t1686, label %sc_or_end573, label %sc_or_rhs572
sc_or_rhs572:
  %t1687 = load %nyx_string*, %nyx_string** %op.ptr
  %t1688 = getelementptr [6 x i8], [6 x i8]* @.str192, i32 0, i32 0
  %t1689 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str192.c, i8* %t1688, i64 5)
  %t1690 = call i1 @nyx_string_equals(%nyx_string* %t1687, %nyx_string* %t1689)
  store i1 %t1690, i1* %t1682
  br label %sc_or_end573
sc_or_end573:
  %t1691 = load i1, i1* %t1682
  br i1 %t1691, label %sc_or_end575, label %sc_or_rhs574
sc_or_rhs574:
  %t1692 = load %nyx_string*, %nyx_string** %op.ptr
  %t1693 = getelementptr [4 x i8], [4 x i8]* @.str193, i32 0, i32 0
  %t1694 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str193.c, i8* %t1693, i64 3)
  %t1695 = call i1 @nyx_string_equals(%nyx_string* %t1692, %nyx_string* %t1694)
  store i1 %t1695, i1* %t1681
  br label %sc_or_end575
sc_or_end575:
  %t1696 = load i1, i1* %t1681
  br i1 %t1696, label %sc_or_end577, label %sc_or_rhs576
sc_or_rhs576:
  %t1697 = load %nyx_string*, %nyx_string** %op.ptr
  %t1698 = getelementptr [3 x i8], [3 x i8]* @.str194, i32 0, i32 0
  %t1699 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str194.c, i8* %t1698, i64 2)
  %t1700 = call i1 @nyx_string_equals(%nyx_string* %t1697, %nyx_string* %t1699)
  store i1 %t1700, i1* %t1680
  br label %sc_or_end577
sc_or_end577:
  %t1701 = load i1, i1* %t1680
  br i1 %t1701, label %then578, label %else579
then578:
  %t1702 = load { i64, i8* }*, { i64, i8* }** %lhs.ptr
  %t1703 = call %nyx_string* @ty_kind({ i64, i8* }* %t1702)
  store %nyx_string* %t1703, %nyx_string** %t1704
  %t1705 = load { i64, i8* }*, { i64, i8* }** %rhs.ptr
  %t1706 = call %nyx_string* @ty_kind({ i64, i8* }* %t1705)
  store %nyx_string* %t1706, %nyx_string** %t1707
  %t1708 = load %nyx_string*, %nyx_string** %t1704
  %t1709 = getelementptr [7 x i8], [7 x i8]* @.str195, i32 0, i32 0
  %t1710 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str195.c, i8* %t1709, i64 6)
  %t1711 = call i1 @nyx_string_equals(%nyx_string* %t1708, %nyx_string* %t1710)
  br i1 %t1711, label %then581, label %else582
then581:
  %t1712 = load %nyx_string*, %nyx_string** %t1707
  %t1713 = getelementptr [7 x i8], [7 x i8]* @.str196, i32 0, i32 0
  %t1714 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str196.c, i8* %t1713, i64 6)
  %t1715 = call i1 @nyx_string_equals(%nyx_string* %t1712, %nyx_string* %t1714)
  br i1 %t1715, label %then584, label %else585
then584:
  %t1716 = call { i64, i8* }* @ty_bool()
  ret { i64, i8* }* %t1716
else585:
  br label %merge586
merge586:
  br label %merge583
else582:
  br label %merge583
merge583:
  %t1717 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %t1717
else579:
  br label %merge580
merge580:
  store i1 true, i1* %t1718
  store i1 true, i1* %t1719
  store i1 true, i1* %t1720
  store i1 true, i1* %t1721
  store i1 true, i1* %t1722
  %t1723 = load %nyx_string*, %nyx_string** %op.ptr
  %t1724 = getelementptr [12 x i8], [12 x i8]* @.str197, i32 0, i32 0
  %t1725 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str197.c, i8* %t1724, i64 11)
  %t1726 = call i1 @nyx_string_equals(%nyx_string* %t1723, %nyx_string* %t1725)
  br i1 %t1726, label %sc_or_end588, label %sc_or_rhs587
sc_or_rhs587:
  %t1727 = load %nyx_string*, %nyx_string** %op.ptr
  %t1728 = getelementptr [10 x i8], [10 x i8]* @.str198, i32 0, i32 0
  %t1729 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str198.c, i8* %t1728, i64 9)
  %t1730 = call i1 @nyx_string_equals(%nyx_string* %t1727, %nyx_string* %t1729)
  store i1 %t1730, i1* %t1722
  br label %sc_or_end588
sc_or_end588:
  %t1731 = load i1, i1* %t1722
  br i1 %t1731, label %sc_or_end590, label %sc_or_rhs589
sc_or_rhs589:
  %t1732 = load %nyx_string*, %nyx_string** %op.ptr
  %t1733 = getelementptr [5 x i8], [5 x i8]* @.str199, i32 0, i32 0
  %t1734 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str199.c, i8* %t1733, i64 4)
  %t1735 = call i1 @nyx_string_equals(%nyx_string* %t1732, %nyx_string* %t1734)
  store i1 %t1735, i1* %t1721
  br label %sc_or_end590
sc_or_end590:
  %t1736 = load i1, i1* %t1721
  br i1 %t1736, label %sc_or_end592, label %sc_or_rhs591
sc_or_rhs591:
  %t1737 = load %nyx_string*, %nyx_string** %op.ptr
  %t1738 = getelementptr [8 x i8], [8 x i8]* @.str200, i32 0, i32 0
  %t1739 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str200.c, i8* %t1738, i64 7)
  %t1740 = call i1 @nyx_string_equals(%nyx_string* %t1737, %nyx_string* %t1739)
  store i1 %t1740, i1* %t1720
  br label %sc_or_end592
sc_or_end592:
  %t1741 = load i1, i1* %t1720
  br i1 %t1741, label %sc_or_end594, label %sc_or_rhs593
sc_or_rhs593:
  %t1742 = load %nyx_string*, %nyx_string** %op.ptr
  %t1743 = getelementptr [11 x i8], [11 x i8]* @.str201, i32 0, i32 0
  %t1744 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str201.c, i8* %t1743, i64 10)
  %t1745 = call i1 @nyx_string_equals(%nyx_string* %t1742, %nyx_string* %t1744)
  store i1 %t1745, i1* %t1719
  br label %sc_or_end594
sc_or_end594:
  %t1746 = load i1, i1* %t1719
  br i1 %t1746, label %sc_or_end596, label %sc_or_rhs595
sc_or_rhs595:
  %t1747 = load %nyx_string*, %nyx_string** %op.ptr
  %t1748 = getelementptr [14 x i8], [14 x i8]* @.str202, i32 0, i32 0
  %t1749 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str202.c, i8* %t1748, i64 13)
  %t1750 = call i1 @nyx_string_equals(%nyx_string* %t1747, %nyx_string* %t1749)
  store i1 %t1750, i1* %t1718
  br label %sc_or_end596
sc_or_end596:
  %t1751 = load i1, i1* %t1718
  br i1 %t1751, label %then597, label %else598
then597:
  %t1752 = call { i64, i8* }* @ty_bool()
  ret { i64, i8* }* %t1752
else598:
  br label %merge599
merge599:
  store i1 true, i1* %t1753
  store i1 true, i1* %t1754
  store i1 true, i1* %t1755
  store i1 true, i1* %t1756
  %t1757 = load %nyx_string*, %nyx_string** %op.ptr
  %t1758 = getelementptr [5 x i8], [5 x i8]* @.str203, i32 0, i32 0
  %t1759 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str203.c, i8* %t1758, i64 4)
  %t1760 = call i1 @nyx_string_equals(%nyx_string* %t1757, %nyx_string* %t1759)
  br i1 %t1760, label %sc_or_end601, label %sc_or_rhs600
sc_or_rhs600:
  %t1761 = load %nyx_string*, %nyx_string** %op.ptr
  %t1762 = getelementptr [4 x i8], [4 x i8]* @.str204, i32 0, i32 0
  %t1763 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str204.c, i8* %t1762, i64 3)
  %t1764 = call i1 @nyx_string_equals(%nyx_string* %t1761, %nyx_string* %t1763)
  store i1 %t1764, i1* %t1756
  br label %sc_or_end601
sc_or_end601:
  %t1765 = load i1, i1* %t1756
  br i1 %t1765, label %sc_or_end603, label %sc_or_rhs602
sc_or_rhs602:
  %t1766 = load %nyx_string*, %nyx_string** %op.ptr
  %t1767 = getelementptr [6 x i8], [6 x i8]* @.str205, i32 0, i32 0
  %t1768 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str205.c, i8* %t1767, i64 5)
  %t1769 = call i1 @nyx_string_equals(%nyx_string* %t1766, %nyx_string* %t1768)
  store i1 %t1769, i1* %t1755
  br label %sc_or_end603
sc_or_end603:
  %t1770 = load i1, i1* %t1755
  br i1 %t1770, label %sc_or_end605, label %sc_or_rhs604
sc_or_rhs604:
  %t1771 = load %nyx_string*, %nyx_string** %op.ptr
  %t1772 = getelementptr [11 x i8], [11 x i8]* @.str206, i32 0, i32 0
  %t1773 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str206.c, i8* %t1772, i64 10)
  %t1774 = call i1 @nyx_string_equals(%nyx_string* %t1771, %nyx_string* %t1773)
  store i1 %t1774, i1* %t1754
  br label %sc_or_end605
sc_or_end605:
  %t1775 = load i1, i1* %t1754
  br i1 %t1775, label %sc_or_end607, label %sc_or_rhs606
sc_or_rhs606:
  %t1776 = load %nyx_string*, %nyx_string** %op.ptr
  %t1777 = getelementptr [12 x i8], [12 x i8]* @.str207, i32 0, i32 0
  %t1778 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str207.c, i8* %t1777, i64 11)
  %t1779 = call i1 @nyx_string_equals(%nyx_string* %t1776, %nyx_string* %t1778)
  store i1 %t1779, i1* %t1753
  br label %sc_or_end607
sc_or_end607:
  %t1780 = load i1, i1* %t1753
  br i1 %t1780, label %then608, label %else609
then608:
  %t1781 = load { i64, i8* }*, { i64, i8* }** %lhs.ptr
  %t1782 = call i1 @is_integer_like({ i64, i8* }* %t1781)
  br i1 %t1782, label %then611, label %else612
then611:
  %t1783 = load { i64, i8* }*, { i64, i8* }** %rhs.ptr
  %t1784 = call i1 @is_integer_like({ i64, i8* }* %t1783)
  br i1 %t1784, label %then614, label %else615
then614:
  %t1785 = call { i64, i8* }* @ty_int()
  ret { i64, i8* }* %t1785
else615:
  br label %merge616
merge616:
  br label %merge613
else612:
  br label %merge613
merge613:
  %t1786 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %t1786
else609:
  br label %merge610
merge610:
  %t1787 = load %nyx_string*, %nyx_string** %op.ptr
  %t1788 = getelementptr [5 x i8], [5 x i8]* @.str208, i32 0, i32 0
  %t1789 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str208.c, i8* %t1788, i64 4)
  %t1790 = call i1 @nyx_string_equals(%nyx_string* %t1787, %nyx_string* %t1789)
  br i1 %t1790, label %then617, label %else618
then617:
  %t1791 = load { i64, i8* }*, { i64, i8* }** %lhs.ptr
  %t1792 = call %nyx_string* @ty_kind({ i64, i8* }* %t1791)
  store %nyx_string* %t1792, %nyx_string** %t1793
  %t1794 = load { i64, i8* }*, { i64, i8* }** %rhs.ptr
  %t1795 = call %nyx_string* @ty_kind({ i64, i8* }* %t1794)
  store %nyx_string* %t1795, %nyx_string** %t1796
  %t1797 = load %nyx_string*, %nyx_string** %t1793
  %t1798 = getelementptr [9 x i8], [9 x i8]* @.str209, i32 0, i32 0
  %t1799 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str209.c, i8* %t1798, i64 8)
  %t1800 = call i1 @nyx_string_equals(%nyx_string* %t1797, %nyx_string* %t1799)
  br i1 %t1800, label %then620, label %else621
then620:
  %t1801 = call { i64, i8* }* @ty_string()
  ret { i64, i8* }* %t1801
else621:
  br label %merge622
merge622:
  %t1802 = load %nyx_string*, %nyx_string** %t1796
  %t1803 = getelementptr [9 x i8], [9 x i8]* @.str210, i32 0, i32 0
  %t1804 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str210.c, i8* %t1803, i64 8)
  %t1805 = call i1 @nyx_string_equals(%nyx_string* %t1802, %nyx_string* %t1804)
  br i1 %t1805, label %then623, label %else624
then623:
  %t1806 = call { i64, i8* }* @ty_string()
  ret { i64, i8* }* %t1806
else624:
  br label %merge625
merge625:
  br label %merge619
else618:
  br label %merge619
merge619:
  store i1 true, i1* %t1807
  store i1 true, i1* %t1808
  store i1 true, i1* %t1809
  store i1 true, i1* %t1810
  store i1 true, i1* %t1811
  %t1812 = load %nyx_string*, %nyx_string** %op.ptr
  %t1813 = getelementptr [5 x i8], [5 x i8]* @.str211, i32 0, i32 0
  %t1814 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str211.c, i8* %t1813, i64 4)
  %t1815 = call i1 @nyx_string_equals(%nyx_string* %t1812, %nyx_string* %t1814)
  br i1 %t1815, label %sc_or_end627, label %sc_or_rhs626
sc_or_rhs626:
  %t1816 = load %nyx_string*, %nyx_string** %op.ptr
  %t1817 = getelementptr [6 x i8], [6 x i8]* @.str212, i32 0, i32 0
  %t1818 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str212.c, i8* %t1817, i64 5)
  %t1819 = call i1 @nyx_string_equals(%nyx_string* %t1816, %nyx_string* %t1818)
  store i1 %t1819, i1* %t1811
  br label %sc_or_end627
sc_or_end627:
  %t1820 = load i1, i1* %t1811
  br i1 %t1820, label %sc_or_end629, label %sc_or_rhs628
sc_or_rhs628:
  %t1821 = load %nyx_string*, %nyx_string** %op.ptr
  %t1822 = getelementptr [5 x i8], [5 x i8]* @.str213, i32 0, i32 0
  %t1823 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str213.c, i8* %t1822, i64 4)
  %t1824 = call i1 @nyx_string_equals(%nyx_string* %t1821, %nyx_string* %t1823)
  store i1 %t1824, i1* %t1810
  br label %sc_or_end629
sc_or_end629:
  %t1825 = load i1, i1* %t1810
  br i1 %t1825, label %sc_or_end631, label %sc_or_rhs630
sc_or_rhs630:
  %t1826 = load %nyx_string*, %nyx_string** %op.ptr
  %t1827 = getelementptr [6 x i8], [6 x i8]* @.str214, i32 0, i32 0
  %t1828 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str214.c, i8* %t1827, i64 5)
  %t1829 = call i1 @nyx_string_equals(%nyx_string* %t1826, %nyx_string* %t1828)
  store i1 %t1829, i1* %t1809
  br label %sc_or_end631
sc_or_end631:
  %t1830 = load i1, i1* %t1809
  br i1 %t1830, label %sc_or_end633, label %sc_or_rhs632
sc_or_rhs632:
  %t1831 = load %nyx_string*, %nyx_string** %op.ptr
  %t1832 = getelementptr [8 x i8], [8 x i8]* @.str215, i32 0, i32 0
  %t1833 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str215.c, i8* %t1832, i64 7)
  %t1834 = call i1 @nyx_string_equals(%nyx_string* %t1831, %nyx_string* %t1833)
  store i1 %t1834, i1* %t1808
  br label %sc_or_end633
sc_or_end633:
  %t1835 = load i1, i1* %t1808
  br i1 %t1835, label %sc_or_end635, label %sc_or_rhs634
sc_or_rhs634:
  %t1836 = load %nyx_string*, %nyx_string** %op.ptr
  %t1837 = getelementptr [6 x i8], [6 x i8]* @.str216, i32 0, i32 0
  %t1838 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str216.c, i8* %t1837, i64 5)
  %t1839 = call i1 @nyx_string_equals(%nyx_string* %t1836, %nyx_string* %t1838)
  store i1 %t1839, i1* %t1807
  br label %sc_or_end635
sc_or_end635:
  %t1840 = load i1, i1* %t1807
  br i1 %t1840, label %then636, label %else637
then636:
  %t1841 = load { i64, i8* }*, { i64, i8* }** %lhs.ptr
  %t1842 = call i1 @is_numeric_ty({ i64, i8* }* %t1841)
  br i1 %t1842, label %then639, label %else640
then639:
  %t1843 = load { i64, i8* }*, { i64, i8* }** %rhs.ptr
  %t1844 = call i1 @is_numeric_ty({ i64, i8* }* %t1843)
  br i1 %t1844, label %then642, label %else643
then642:
  %t1845 = load { i64, i8* }*, { i64, i8* }** %lhs.ptr
  %t1846 = call i1 @is_float_like({ i64, i8* }* %t1845)
  br i1 %t1846, label %then645, label %else646
then645:
  %t1847 = call { i64, i8* }* @ty_float()
  ret { i64, i8* }* %t1847
else646:
  br label %merge647
merge647:
  %t1848 = load { i64, i8* }*, { i64, i8* }** %rhs.ptr
  %t1849 = call i1 @is_float_like({ i64, i8* }* %t1848)
  br i1 %t1849, label %then648, label %else649
then648:
  %t1850 = call { i64, i8* }* @ty_float()
  ret { i64, i8* }* %t1850
else649:
  br label %merge650
merge650:
  %t1851 = call { i64, i8* }* @ty_int()
  ret { i64, i8* }* %t1851
else643:
  br label %merge644
merge644:
  br label %merge641
else640:
  br label %merge641
merge641:
  %t1852 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %t1852
else637:
  br label %merge638
merge638:
  %t1853 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %t1853
}

define internal i1 @is_in_param_names(
%nyx_string* %name.param, { i64, i8* }* %names.param) {
  %name.ptr = alloca %nyx_string*
  %names.ptr = alloca { i64, i8* }*
  %t1854 = alloca i64
  %t1863 = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  store { i64, i8* }* %names.param, { i64, i8* }** %names.ptr
  store i64 0, i64* %t1854
  br label %while_cond651
while_cond651:
  %t1855 = load i64, i64* %t1854
  %t1856 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %t1857 = call i64 @nyx_array_length({ i64, i8* }* %t1856)
  %t1858 = icmp slt i64 %t1855, %t1857
  br i1 %t1858, label %while_body652, label %while_end653
while_body652:
  %t1859 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %t1860 = load i64, i64* %t1854
  %t1861 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1859, i64 %t1860, i64 2)
  %t1862 = inttoptr i64 %t1861 to %nyx_string*
  store %nyx_string* %t1862, %nyx_string** %t1863
  %t1864 = load %nyx_string*, %nyx_string** %t1863
  %t1865 = load %nyx_string*, %nyx_string** %name.ptr
  %t1866 = call i1 @nyx_string_equals(%nyx_string* %t1864, %nyx_string* %t1865)
  br i1 %t1866, label %then654, label %else655
then654:
  ret i1 1
else655:
  br label %merge656
merge656:
  %t1867 = load i64, i64* %t1854
  %t1868 = add i64 %t1867, 1
  store i64 %t1868, i64* %t1854
  br label %while_cond651
while_end653:
  ret i1 0
}

define { i64, i8* }* @subst_apply(
{ i64, i8* }* %t.param, { i64, i8* }* %names.param, { i64, i8* }* %types.param) {
  %t.ptr = alloca { i64, i8* }*
  %names.ptr = alloca { i64, i8* }*
  %types.ptr = alloca { i64, i8* }*
  %t1871 = alloca %nyx_string*
  %t1879 = alloca %nyx_string*
  %t1880 = alloca i64
  %t1889 = alloca %nyx_string*
  %t1897 = alloca { i64, i8* }*
  %t2002 = alloca { i64, i8* }*
  %t2004 = alloca { i64, i8* }*
  %t2005 = alloca i64
  %t2014 = alloca { i64, i8* }*
  %t2026 = alloca { i64, i8* }*
  %t2040 = alloca %nyx_string*
  %t2044 = alloca { i64, i8* }*
  %t2046 = alloca { i64, i8* }*
  %t2047 = alloca i64
  %t2056 = alloca { i64, i8* }*
  %t2075 = alloca %nyx_string*
  %t2079 = alloca { i64, i8* }*
  %t2081 = alloca { i64, i8* }*
  %t2082 = alloca i64
  %t2091 = alloca { i64, i8* }*
  store { i64, i8* }* %t.param, { i64, i8* }** %t.ptr
  store { i64, i8* }* %names.param, { i64, i8* }** %names.ptr
  store { i64, i8* }* %types.param, { i64, i8* }** %types.ptr
  %t1869 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t1870 = call %nyx_string* @ty_kind({ i64, i8* }* %t1869)
  store %nyx_string* %t1870, %nyx_string** %t1871
  %t1872 = load %nyx_string*, %nyx_string** %t1871
  %t1873 = getelementptr [10 x i8], [10 x i8]* @.str217, i32 0, i32 0
  %t1874 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str217.c, i8* %t1873, i64 9)
  %t1875 = call i1 @nyx_string_equals(%nyx_string* %t1872, %nyx_string* %t1874)
  br i1 %t1875, label %then657, label %else658
then657:
  %t1876 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t1877 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1876, i64 1, i64 2)
  %t1878 = inttoptr i64 %t1877 to %nyx_string*
  store %nyx_string* %t1878, %nyx_string** %t1879
  store i64 0, i64* %t1880
  br label %while_cond660
while_cond660:
  %t1881 = load i64, i64* %t1880
  %t1882 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %t1883 = call i64 @nyx_array_length({ i64, i8* }* %t1882)
  %t1884 = icmp slt i64 %t1881, %t1883
  br i1 %t1884, label %while_body661, label %while_end662
while_body661:
  %t1885 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %t1886 = load i64, i64* %t1880
  %t1887 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1885, i64 %t1886, i64 2)
  %t1888 = inttoptr i64 %t1887 to %nyx_string*
  store %nyx_string* %t1888, %nyx_string** %t1889
  %t1890 = load %nyx_string*, %nyx_string** %t1889
  %t1891 = load %nyx_string*, %nyx_string** %t1879
  %t1892 = call i1 @nyx_string_equals(%nyx_string* %t1890, %nyx_string* %t1891)
  br i1 %t1892, label %then663, label %else664
then663:
  %t1893 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %t1894 = load i64, i64* %t1880
  %t1895 = call i64 @nyx_array_get({ i64, i8* }* %t1893, i64 %t1894)
  %t1896 = inttoptr i64 %t1895 to { i64, i8* }*
  store { i64, i8* }* %t1896, { i64, i8* }** %t1897
  %t1898 = load { i64, i8* }*, { i64, i8* }** %t1897
  ret { i64, i8* }* %t1898
else664:
  br label %merge665
merge665:
  %t1899 = load i64, i64* %t1880
  %t1900 = add i64 %t1899, 1
  store i64 %t1900, i64* %t1880
  br label %while_cond660
while_end662:
  %t1901 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  ret { i64, i8* }* %t1901
else658:
  br label %merge659
merge659:
  %t1902 = load %nyx_string*, %nyx_string** %t1871
  %t1903 = getelementptr [8 x i8], [8 x i8]* @.str218, i32 0, i32 0
  %t1904 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str218.c, i8* %t1903, i64 7)
  %t1905 = call i1 @nyx_string_equals(%nyx_string* %t1902, %nyx_string* %t1904)
  br i1 %t1905, label %then666, label %else667
then666:
  %t1906 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t1907 = call i64 @nyx_array_get({ i64, i8* }* %t1906, i64 1)
  %t1908 = inttoptr i64 %t1907 to { i64, i8* }*
  %t1909 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %t1910 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %t1911 = call { i64, i8* }* @subst_apply({ i64, i8* }* %t1908, { i64, i8* }* %t1909, { i64, i8* }* %t1910)
  %t1912 = call { i64, i8* }* @ty_array({ i64, i8* }* %t1911)
  ret { i64, i8* }* %t1912
else667:
  br label %merge668
merge668:
  %t1913 = load %nyx_string*, %nyx_string** %t1871
  %t1914 = getelementptr [9 x i8], [9 x i8]* @.str219, i32 0, i32 0
  %t1915 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str219.c, i8* %t1914, i64 8)
  %t1916 = call i1 @nyx_string_equals(%nyx_string* %t1913, %nyx_string* %t1915)
  br i1 %t1916, label %then669, label %else670
then669:
  %t1917 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t1918 = call i64 @nyx_array_get({ i64, i8* }* %t1917, i64 1)
  %t1919 = inttoptr i64 %t1918 to { i64, i8* }*
  %t1920 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %t1921 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %t1922 = call { i64, i8* }* @subst_apply({ i64, i8* }* %t1919, { i64, i8* }* %t1920, { i64, i8* }* %t1921)
  %t1923 = call { i64, i8* }* @ty_option({ i64, i8* }* %t1922)
  ret { i64, i8* }* %t1923
else670:
  br label %merge671
merge671:
  %t1924 = load %nyx_string*, %nyx_string** %t1871
  %t1925 = getelementptr [6 x i8], [6 x i8]* @.str220, i32 0, i32 0
  %t1926 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str220.c, i8* %t1925, i64 5)
  %t1927 = call i1 @nyx_string_equals(%nyx_string* %t1924, %nyx_string* %t1926)
  br i1 %t1927, label %then672, label %else673
then672:
  %t1928 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t1929 = call i64 @nyx_array_get({ i64, i8* }* %t1928, i64 1)
  %t1930 = inttoptr i64 %t1929 to { i64, i8* }*
  %t1931 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %t1932 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %t1933 = call { i64, i8* }* @subst_apply({ i64, i8* }* %t1930, { i64, i8* }* %t1931, { i64, i8* }* %t1932)
  %t1934 = call { i64, i8* }* @ty_ptr({ i64, i8* }* %t1933)
  ret { i64, i8* }* %t1934
else673:
  br label %merge674
merge674:
  %t1935 = load %nyx_string*, %nyx_string** %t1871
  %t1936 = getelementptr [6 x i8], [6 x i8]* @.str221, i32 0, i32 0
  %t1937 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str221.c, i8* %t1936, i64 5)
  %t1938 = call i1 @nyx_string_equals(%nyx_string* %t1935, %nyx_string* %t1937)
  br i1 %t1938, label %then675, label %else676
then675:
  %t1939 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t1940 = call i64 @nyx_array_get({ i64, i8* }* %t1939, i64 1)
  %t1941 = inttoptr i64 %t1940 to { i64, i8* }*
  %t1942 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %t1943 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %t1944 = call { i64, i8* }* @subst_apply({ i64, i8* }* %t1941, { i64, i8* }* %t1942, { i64, i8* }* %t1943)
  %t1945 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t1946 = call %nyx_string* @ty_ref_region({ i64, i8* }* %t1945)
  %t1947 = call { i64, i8* }* @ty_ref_r({ i64, i8* }* %t1944, %nyx_string* %t1946)
  ret { i64, i8* }* %t1947
else676:
  br label %merge677
merge677:
  %t1948 = load %nyx_string*, %nyx_string** %t1871
  %t1949 = getelementptr [9 x i8], [9 x i8]* @.str222, i32 0, i32 0
  %t1950 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str222.c, i8* %t1949, i64 8)
  %t1951 = call i1 @nyx_string_equals(%nyx_string* %t1948, %nyx_string* %t1950)
  br i1 %t1951, label %then678, label %else679
then678:
  %t1952 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t1953 = call i64 @nyx_array_get({ i64, i8* }* %t1952, i64 1)
  %t1954 = inttoptr i64 %t1953 to { i64, i8* }*
  %t1955 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %t1956 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %t1957 = call { i64, i8* }* @subst_apply({ i64, i8* }* %t1954, { i64, i8* }* %t1955, { i64, i8* }* %t1956)
  %t1958 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t1959 = call %nyx_string* @ty_ref_region({ i64, i8* }* %t1958)
  %t1960 = call { i64, i8* }* @ty_ref_mut_r({ i64, i8* }* %t1957, %nyx_string* %t1959)
  ret { i64, i8* }* %t1960
else679:
  br label %merge680
merge680:
  %t1961 = load %nyx_string*, %nyx_string** %t1871
  %t1962 = getelementptr [9 x i8], [9 x i8]* @.str223, i32 0, i32 0
  %t1963 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str223.c, i8* %t1962, i64 8)
  %t1964 = call i1 @nyx_string_equals(%nyx_string* %t1961, %nyx_string* %t1963)
  br i1 %t1964, label %then681, label %else682
then681:
  %t1965 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t1966 = call i64 @nyx_array_get({ i64, i8* }* %t1965, i64 1)
  %t1967 = inttoptr i64 %t1966 to { i64, i8* }*
  %t1968 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %t1969 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %t1970 = call { i64, i8* }* @subst_apply({ i64, i8* }* %t1967, { i64, i8* }* %t1968, { i64, i8* }* %t1969)
  %t1971 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t1972 = call i64 @nyx_array_get({ i64, i8* }* %t1971, i64 2)
  %t1973 = inttoptr i64 %t1972 to { i64, i8* }*
  %t1974 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %t1975 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %t1976 = call { i64, i8* }* @subst_apply({ i64, i8* }* %t1973, { i64, i8* }* %t1974, { i64, i8* }* %t1975)
  %t1977 = call { i64, i8* }* @ty_result({ i64, i8* }* %t1970, { i64, i8* }* %t1976)
  ret { i64, i8* }* %t1977
else682:
  br label %merge683
merge683:
  %t1978 = load %nyx_string*, %nyx_string** %t1871
  %t1979 = getelementptr [6 x i8], [6 x i8]* @.str224, i32 0, i32 0
  %t1980 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str224.c, i8* %t1979, i64 5)
  %t1981 = call i1 @nyx_string_equals(%nyx_string* %t1978, %nyx_string* %t1980)
  br i1 %t1981, label %then684, label %else685
then684:
  %t1982 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t1983 = call i64 @nyx_array_get({ i64, i8* }* %t1982, i64 1)
  %t1984 = inttoptr i64 %t1983 to { i64, i8* }*
  %t1985 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %t1986 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %t1987 = call { i64, i8* }* @subst_apply({ i64, i8* }* %t1984, { i64, i8* }* %t1985, { i64, i8* }* %t1986)
  %t1988 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t1989 = call i64 @nyx_array_get({ i64, i8* }* %t1988, i64 2)
  %t1990 = inttoptr i64 %t1989 to { i64, i8* }*
  %t1991 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %t1992 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %t1993 = call { i64, i8* }* @subst_apply({ i64, i8* }* %t1990, { i64, i8* }* %t1991, { i64, i8* }* %t1992)
  %t1994 = call { i64, i8* }* @ty_map({ i64, i8* }* %t1987, { i64, i8* }* %t1993)
  ret { i64, i8* }* %t1994
else685:
  br label %merge686
merge686:
  %t1995 = load %nyx_string*, %nyx_string** %t1871
  %t1996 = getelementptr [5 x i8], [5 x i8]* @.str225, i32 0, i32 0
  %t1997 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str225.c, i8* %t1996, i64 4)
  %t1998 = call i1 @nyx_string_equals(%nyx_string* %t1995, %nyx_string* %t1997)
  br i1 %t1998, label %then687, label %else688
then687:
  %t1999 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t2000 = call i64 @nyx_array_get({ i64, i8* }* %t1999, i64 1)
  %t2001 = inttoptr i64 %t2000 to { i64, i8* }*
  store { i64, i8* }* %t2001, { i64, i8* }** %t2002
  %t2003 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t2003, { i64, i8* }** %t2004
  store i64 0, i64* %t2005
  br label %while_cond690
while_cond690:
  %t2006 = load i64, i64* %t2005
  %t2007 = load { i64, i8* }*, { i64, i8* }** %t2002
  %t2008 = call i64 @nyx_array_length({ i64, i8* }* %t2007)
  %t2009 = icmp slt i64 %t2006, %t2008
  br i1 %t2009, label %while_body691, label %while_end692
while_body691:
  %t2010 = load { i64, i8* }*, { i64, i8* }** %t2002
  %t2011 = load i64, i64* %t2005
  %t2012 = call i64 @nyx_array_get({ i64, i8* }* %t2010, i64 %t2011)
  %t2013 = inttoptr i64 %t2012 to { i64, i8* }*
  store { i64, i8* }* %t2013, { i64, i8* }** %t2014
  %t2015 = load { i64, i8* }*, { i64, i8* }** %t2004
  %t2016 = load { i64, i8* }*, { i64, i8* }** %t2014
  %t2017 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %t2018 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %t2019 = call { i64, i8* }* @subst_apply({ i64, i8* }* %t2016, { i64, i8* }* %t2017, { i64, i8* }* %t2018)
  %t2020 = ptrtoint { i64, i8* }* %t2019 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2015, i64 %t2020, i64 5)
  %t2021 = load i64, i64* %t2005
  %t2022 = add i64 %t2021, 1
  store i64 %t2022, i64* %t2005
  br label %while_cond690
while_end692:
  %t2023 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t2024 = call i64 @nyx_array_get({ i64, i8* }* %t2023, i64 2)
  %t2025 = inttoptr i64 %t2024 to { i64, i8* }*
  store { i64, i8* }* %t2025, { i64, i8* }** %t2026
  %t2027 = load { i64, i8* }*, { i64, i8* }** %t2004
  %t2028 = load { i64, i8* }*, { i64, i8* }** %t2026
  %t2029 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %t2030 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %t2031 = call { i64, i8* }* @subst_apply({ i64, i8* }* %t2028, { i64, i8* }* %t2029, { i64, i8* }* %t2030)
  %t2032 = call { i64, i8* }* @ty_fn({ i64, i8* }* %t2027, { i64, i8* }* %t2031)
  ret { i64, i8* }* %t2032
else688:
  br label %merge689
merge689:
  %t2033 = load %nyx_string*, %nyx_string** %t1871
  %t2034 = getelementptr [9 x i8], [9 x i8]* @.str226, i32 0, i32 0
  %t2035 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str226.c, i8* %t2034, i64 8)
  %t2036 = call i1 @nyx_string_equals(%nyx_string* %t2033, %nyx_string* %t2035)
  br i1 %t2036, label %then693, label %else694
then693:
  %t2037 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t2038 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2037, i64 1, i64 2)
  %t2039 = inttoptr i64 %t2038 to %nyx_string*
  store %nyx_string* %t2039, %nyx_string** %t2040
  %t2041 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t2042 = call i64 @nyx_array_get({ i64, i8* }* %t2041, i64 2)
  %t2043 = inttoptr i64 %t2042 to { i64, i8* }*
  store { i64, i8* }* %t2043, { i64, i8* }** %t2044
  %t2045 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t2045, { i64, i8* }** %t2046
  store i64 0, i64* %t2047
  br label %while_cond696
while_cond696:
  %t2048 = load i64, i64* %t2047
  %t2049 = load { i64, i8* }*, { i64, i8* }** %t2044
  %t2050 = call i64 @nyx_array_length({ i64, i8* }* %t2049)
  %t2051 = icmp slt i64 %t2048, %t2050
  br i1 %t2051, label %while_body697, label %while_end698
while_body697:
  %t2052 = load { i64, i8* }*, { i64, i8* }** %t2044
  %t2053 = load i64, i64* %t2047
  %t2054 = call i64 @nyx_array_get({ i64, i8* }* %t2052, i64 %t2053)
  %t2055 = inttoptr i64 %t2054 to { i64, i8* }*
  store { i64, i8* }* %t2055, { i64, i8* }** %t2056
  %t2057 = load { i64, i8* }*, { i64, i8* }** %t2046
  %t2058 = load { i64, i8* }*, { i64, i8* }** %t2056
  %t2059 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %t2060 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %t2061 = call { i64, i8* }* @subst_apply({ i64, i8* }* %t2058, { i64, i8* }* %t2059, { i64, i8* }* %t2060)
  %t2062 = ptrtoint { i64, i8* }* %t2061 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2057, i64 %t2062, i64 5)
  %t2063 = load i64, i64* %t2047
  %t2064 = add i64 %t2063, 1
  store i64 %t2064, i64* %t2047
  br label %while_cond696
while_end698:
  %t2065 = load %nyx_string*, %nyx_string** %t2040
  %t2066 = load { i64, i8* }*, { i64, i8* }** %t2046
  %t2067 = call { i64, i8* }* @ty_struct_ty(%nyx_string* %t2065, { i64, i8* }* %t2066)
  ret { i64, i8* }* %t2067
else694:
  br label %merge695
merge695:
  %t2068 = load %nyx_string*, %nyx_string** %t1871
  %t2069 = getelementptr [7 x i8], [7 x i8]* @.str227, i32 0, i32 0
  %t2070 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str227.c, i8* %t2069, i64 6)
  %t2071 = call i1 @nyx_string_equals(%nyx_string* %t2068, %nyx_string* %t2070)
  br i1 %t2071, label %then699, label %else700
then699:
  %t2072 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t2073 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2072, i64 1, i64 2)
  %t2074 = inttoptr i64 %t2073 to %nyx_string*
  store %nyx_string* %t2074, %nyx_string** %t2075
  %t2076 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %t2077 = call i64 @nyx_array_get({ i64, i8* }* %t2076, i64 2)
  %t2078 = inttoptr i64 %t2077 to { i64, i8* }*
  store { i64, i8* }* %t2078, { i64, i8* }** %t2079
  %t2080 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t2080, { i64, i8* }** %t2081
  store i64 0, i64* %t2082
  br label %while_cond702
while_cond702:
  %t2083 = load i64, i64* %t2082
  %t2084 = load { i64, i8* }*, { i64, i8* }** %t2079
  %t2085 = call i64 @nyx_array_length({ i64, i8* }* %t2084)
  %t2086 = icmp slt i64 %t2083, %t2085
  br i1 %t2086, label %while_body703, label %while_end704
while_body703:
  %t2087 = load { i64, i8* }*, { i64, i8* }** %t2079
  %t2088 = load i64, i64* %t2082
  %t2089 = call i64 @nyx_array_get({ i64, i8* }* %t2087, i64 %t2088)
  %t2090 = inttoptr i64 %t2089 to { i64, i8* }*
  store { i64, i8* }* %t2090, { i64, i8* }** %t2091
  %t2092 = load { i64, i8* }*, { i64, i8* }** %t2081
  %t2093 = load { i64, i8* }*, { i64, i8* }** %t2091
  %t2094 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %t2095 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %t2096 = call { i64, i8* }* @subst_apply({ i64, i8* }* %t2093, { i64, i8* }* %t2094, { i64, i8* }* %t2095)
  %t2097 = ptrtoint { i64, i8* }* %t2096 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2092, i64 %t2097, i64 5)
  %t2098 = load i64, i64* %t2082
  %t2099 = add i64 %t2098, 1
  store i64 %t2099, i64* %t2082
  br label %while_cond702
while_end704:
  %t2100 = load %nyx_string*, %nyx_string** %t2075
  %t2101 = load { i64, i8* }*, { i64, i8* }** %t2081
  %t2102 = call { i64, i8* }* @ty_enum_ty(%nyx_string* %t2100, { i64, i8* }* %t2101)
  ret { i64, i8* }* %t2102
else700:
  br label %merge701
merge701:
  %t2103 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  ret { i64, i8* }* %t2103
}

define i1 @unify(
{ i64, i8* }* %param_ty.param, { i64, i8* }* %arg_ty.param, { i64, i8* }* %type_param_names.param, { i64, i8* }* %names_out.param, { i64, i8* }* %types_out.param) {
  %param_ty.ptr = alloca { i64, i8* }*
  %arg_ty.ptr = alloca { i64, i8* }*
  %type_param_names.ptr = alloca { i64, i8* }*
  %names_out.ptr = alloca { i64, i8* }*
  %types_out.ptr = alloca { i64, i8* }*
  %t2106 = alloca %nyx_string*
  %t2109 = alloca %nyx_string*
  %t2133 = alloca %nyx_string*
  %t2137 = alloca i64
  %t2146 = alloca %nyx_string*
  %t2154 = alloca { i64, i8* }*
  %t2173 = alloca i1
  %t2174 = alloca i1
  %t2175 = alloca i1
  %t2176 = alloca i1
  %t2204 = alloca { i64, i8* }*
  %t2208 = alloca { i64, i8* }*
  %t2215 = alloca i1
  %t2228 = alloca { i64, i8* }*
  %t2232 = alloca { i64, i8* }*
  %t2243 = alloca { i64, i8* }*
  %t2247 = alloca { i64, i8* }*
  %t2261 = alloca { i64, i8* }*
  %t2265 = alloca { i64, i8* }*
  %t2271 = alloca i64
  %t2280 = alloca { i64, i8* }*
  %t2285 = alloca { i64, i8* }*
  %t2298 = alloca { i64, i8* }*
  %t2302 = alloca { i64, i8* }*
  %t2309 = alloca i1
  %t2322 = alloca %nyx_string*
  %t2326 = alloca %nyx_string*
  %t2334 = alloca { i64, i8* }*
  %t2338 = alloca { i64, i8* }*
  %t2350 = alloca i64
  %t2359 = alloca { i64, i8* }*
  %t2364 = alloca { i64, i8* }*
  store { i64, i8* }* %param_ty.param, { i64, i8* }** %param_ty.ptr
  store { i64, i8* }* %arg_ty.param, { i64, i8* }** %arg_ty.ptr
  store { i64, i8* }* %type_param_names.param, { i64, i8* }** %type_param_names.ptr
  store { i64, i8* }* %names_out.param, { i64, i8* }** %names_out.ptr
  store { i64, i8* }* %types_out.param, { i64, i8* }** %types_out.ptr
  %t2104 = load { i64, i8* }*, { i64, i8* }** %param_ty.ptr
  %t2105 = call %nyx_string* @ty_kind({ i64, i8* }* %t2104)
  store %nyx_string* %t2105, %nyx_string** %t2106
  %t2107 = load { i64, i8* }*, { i64, i8* }** %arg_ty.ptr
  %t2108 = call %nyx_string* @ty_kind({ i64, i8* }* %t2107)
  store %nyx_string* %t2108, %nyx_string** %t2109
  %t2110 = load %nyx_string*, %nyx_string** %t2109
  %t2111 = getelementptr [10 x i8], [10 x i8]* @.str228, i32 0, i32 0
  %t2112 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str228.c, i8* %t2111, i64 9)
  %t2113 = call i1 @nyx_string_equals(%nyx_string* %t2110, %nyx_string* %t2112)
  br i1 %t2113, label %then705, label %else706
then705:
  ret i1 1
else706:
  br label %merge707
merge707:
  %t2114 = load %nyx_string*, %nyx_string** %t2106
  %t2115 = getelementptr [10 x i8], [10 x i8]* @.str229, i32 0, i32 0
  %t2116 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str229.c, i8* %t2115, i64 9)
  %t2117 = call i1 @nyx_string_equals(%nyx_string* %t2114, %nyx_string* %t2116)
  br i1 %t2117, label %then708, label %else709
then708:
  ret i1 1
else709:
  br label %merge710
merge710:
  %t2118 = load %nyx_string*, %nyx_string** %t2109
  %t2119 = getelementptr [6 x i8], [6 x i8]* @.str230, i32 0, i32 0
  %t2120 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str230.c, i8* %t2119, i64 5)
  %t2121 = call i1 @nyx_string_equals(%nyx_string* %t2118, %nyx_string* %t2120)
  br i1 %t2121, label %then711, label %else712
then711:
  ret i1 1
else712:
  br label %merge713
merge713:
  %t2122 = load %nyx_string*, %nyx_string** %t2106
  %t2123 = getelementptr [6 x i8], [6 x i8]* @.str231, i32 0, i32 0
  %t2124 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str231.c, i8* %t2123, i64 5)
  %t2125 = call i1 @nyx_string_equals(%nyx_string* %t2122, %nyx_string* %t2124)
  br i1 %t2125, label %then714, label %else715
then714:
  ret i1 1
else715:
  br label %merge716
merge716:
  %t2126 = load %nyx_string*, %nyx_string** %t2106
  %t2127 = getelementptr [10 x i8], [10 x i8]* @.str232, i32 0, i32 0
  %t2128 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str232.c, i8* %t2127, i64 9)
  %t2129 = call i1 @nyx_string_equals(%nyx_string* %t2126, %nyx_string* %t2128)
  br i1 %t2129, label %then717, label %else718
then717:
  %t2130 = load { i64, i8* }*, { i64, i8* }** %param_ty.ptr
  %t2131 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2130, i64 1, i64 2)
  %t2132 = inttoptr i64 %t2131 to %nyx_string*
  store %nyx_string* %t2132, %nyx_string** %t2133
  %t2134 = load %nyx_string*, %nyx_string** %t2133
  %t2135 = load { i64, i8* }*, { i64, i8* }** %type_param_names.ptr
  %t2136 = call i1 @is_in_param_names(%nyx_string* %t2134, { i64, i8* }* %t2135)
  br i1 %t2136, label %then720, label %else721
then720:
  store i64 0, i64* %t2137
  br label %while_cond723
while_cond723:
  %t2138 = load i64, i64* %t2137
  %t2139 = load { i64, i8* }*, { i64, i8* }** %names_out.ptr
  %t2140 = call i64 @nyx_array_length({ i64, i8* }* %t2139)
  %t2141 = icmp slt i64 %t2138, %t2140
  br i1 %t2141, label %while_body724, label %while_end725
while_body724:
  %t2142 = load { i64, i8* }*, { i64, i8* }** %names_out.ptr
  %t2143 = load i64, i64* %t2137
  %t2144 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2142, i64 %t2143, i64 2)
  %t2145 = inttoptr i64 %t2144 to %nyx_string*
  store %nyx_string* %t2145, %nyx_string** %t2146
  %t2147 = load %nyx_string*, %nyx_string** %t2146
  %t2148 = load %nyx_string*, %nyx_string** %t2133
  %t2149 = call i1 @nyx_string_equals(%nyx_string* %t2147, %nyx_string* %t2148)
  br i1 %t2149, label %then726, label %else727
then726:
  %t2150 = load { i64, i8* }*, { i64, i8* }** %types_out.ptr
  %t2151 = load i64, i64* %t2137
  %t2152 = call i64 @nyx_array_get({ i64, i8* }* %t2150, i64 %t2151)
  %t2153 = inttoptr i64 %t2152 to { i64, i8* }*
  store { i64, i8* }* %t2153, { i64, i8* }** %t2154
  %t2155 = load { i64, i8* }*, { i64, i8* }** %t2154
  %t2156 = load { i64, i8* }*, { i64, i8* }** %arg_ty.ptr
  %t2157 = call i1 @ty_eq({ i64, i8* }* %t2155, { i64, i8* }* %t2156)
  ret i1 %t2157
else727:
  br label %merge728
merge728:
  %t2158 = load i64, i64* %t2137
  %t2159 = add i64 %t2158, 1
  store i64 %t2159, i64* %t2137
  br label %while_cond723
while_end725:
  %t2160 = load { i64, i8* }*, { i64, i8* }** %names_out.ptr
  %t2161 = load %nyx_string*, %nyx_string** %t2133
  %t2162 = ptrtoint %nyx_string* %t2161 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2160, i64 %t2162, i64 2)
  %t2163 = load { i64, i8* }*, { i64, i8* }** %types_out.ptr
  %t2164 = load { i64, i8* }*, { i64, i8* }** %arg_ty.ptr
  %t2165 = ptrtoint { i64, i8* }* %t2164 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2163, i64 %t2165, i64 5)
  ret i1 1
else721:
  br label %merge722
merge722:
  ret i1 1
else718:
  br label %merge719
merge719:
  %t2166 = load %nyx_string*, %nyx_string** %t2109
  %t2167 = getelementptr [10 x i8], [10 x i8]* @.str233, i32 0, i32 0
  %t2168 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str233.c, i8* %t2167, i64 9)
  %t2169 = call i1 @nyx_string_equals(%nyx_string* %t2166, %nyx_string* %t2168)
  br i1 %t2169, label %then729, label %else730
then729:
  ret i1 1
else730:
  br label %merge731
merge731:
  %t2170 = load %nyx_string*, %nyx_string** %t2106
  %t2171 = load %nyx_string*, %nyx_string** %t2109
  %t2172 = call i1 @nyx_string_equals(%nyx_string* %t2170, %nyx_string* %t2171)
  br i1 %t2172, label %then732, label %else733
then732:
  store i1 true, i1* %t2173
  store i1 true, i1* %t2174
  store i1 true, i1* %t2175
  store i1 true, i1* %t2176
  %t2177 = load %nyx_string*, %nyx_string** %t2106
  %t2178 = getelementptr [8 x i8], [8 x i8]* @.str234, i32 0, i32 0
  %t2179 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str234.c, i8* %t2178, i64 7)
  %t2180 = call i1 @nyx_string_equals(%nyx_string* %t2177, %nyx_string* %t2179)
  br i1 %t2180, label %sc_or_end736, label %sc_or_rhs735
sc_or_rhs735:
  %t2181 = load %nyx_string*, %nyx_string** %t2106
  %t2182 = getelementptr [9 x i8], [9 x i8]* @.str235, i32 0, i32 0
  %t2183 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str235.c, i8* %t2182, i64 8)
  %t2184 = call i1 @nyx_string_equals(%nyx_string* %t2181, %nyx_string* %t2183)
  store i1 %t2184, i1* %t2176
  br label %sc_or_end736
sc_or_end736:
  %t2185 = load i1, i1* %t2176
  br i1 %t2185, label %sc_or_end738, label %sc_or_rhs737
sc_or_rhs737:
  %t2186 = load %nyx_string*, %nyx_string** %t2106
  %t2187 = getelementptr [6 x i8], [6 x i8]* @.str236, i32 0, i32 0
  %t2188 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str236.c, i8* %t2187, i64 5)
  %t2189 = call i1 @nyx_string_equals(%nyx_string* %t2186, %nyx_string* %t2188)
  store i1 %t2189, i1* %t2175
  br label %sc_or_end738
sc_or_end738:
  %t2190 = load i1, i1* %t2175
  br i1 %t2190, label %sc_or_end740, label %sc_or_rhs739
sc_or_rhs739:
  %t2191 = load %nyx_string*, %nyx_string** %t2106
  %t2192 = getelementptr [6 x i8], [6 x i8]* @.str237, i32 0, i32 0
  %t2193 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str237.c, i8* %t2192, i64 5)
  %t2194 = call i1 @nyx_string_equals(%nyx_string* %t2191, %nyx_string* %t2193)
  store i1 %t2194, i1* %t2174
  br label %sc_or_end740
sc_or_end740:
  %t2195 = load i1, i1* %t2174
  br i1 %t2195, label %sc_or_end742, label %sc_or_rhs741
sc_or_rhs741:
  %t2196 = load %nyx_string*, %nyx_string** %t2106
  %t2197 = getelementptr [9 x i8], [9 x i8]* @.str238, i32 0, i32 0
  %t2198 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str238.c, i8* %t2197, i64 8)
  %t2199 = call i1 @nyx_string_equals(%nyx_string* %t2196, %nyx_string* %t2198)
  store i1 %t2199, i1* %t2173
  br label %sc_or_end742
sc_or_end742:
  %t2200 = load i1, i1* %t2173
  br i1 %t2200, label %then743, label %else744
then743:
  %t2201 = load { i64, i8* }*, { i64, i8* }** %param_ty.ptr
  %t2202 = call i64 @nyx_array_get({ i64, i8* }* %t2201, i64 1)
  %t2203 = inttoptr i64 %t2202 to { i64, i8* }*
  store { i64, i8* }* %t2203, { i64, i8* }** %t2204
  %t2205 = load { i64, i8* }*, { i64, i8* }** %arg_ty.ptr
  %t2206 = call i64 @nyx_array_get({ i64, i8* }* %t2205, i64 1)
  %t2207 = inttoptr i64 %t2206 to { i64, i8* }*
  store { i64, i8* }* %t2207, { i64, i8* }** %t2208
  %t2209 = load { i64, i8* }*, { i64, i8* }** %t2204
  %t2210 = load { i64, i8* }*, { i64, i8* }** %t2208
  %t2211 = load { i64, i8* }*, { i64, i8* }** %type_param_names.ptr
  %t2212 = load { i64, i8* }*, { i64, i8* }** %names_out.ptr
  %t2213 = load { i64, i8* }*, { i64, i8* }** %types_out.ptr
  %t2214 = call i1 @unify({ i64, i8* }* %t2209, { i64, i8* }* %t2210, { i64, i8* }* %t2211, { i64, i8* }* %t2212, { i64, i8* }* %t2213)
  ret i1 %t2214
else744:
  br label %merge745
merge745:
  store i1 true, i1* %t2215
  %t2216 = load %nyx_string*, %nyx_string** %t2106
  %t2217 = getelementptr [9 x i8], [9 x i8]* @.str239, i32 0, i32 0
  %t2218 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str239.c, i8* %t2217, i64 8)
  %t2219 = call i1 @nyx_string_equals(%nyx_string* %t2216, %nyx_string* %t2218)
  br i1 %t2219, label %sc_or_end747, label %sc_or_rhs746
sc_or_rhs746:
  %t2220 = load %nyx_string*, %nyx_string** %t2106
  %t2221 = getelementptr [6 x i8], [6 x i8]* @.str240, i32 0, i32 0
  %t2222 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str240.c, i8* %t2221, i64 5)
  %t2223 = call i1 @nyx_string_equals(%nyx_string* %t2220, %nyx_string* %t2222)
  store i1 %t2223, i1* %t2215
  br label %sc_or_end747
sc_or_end747:
  %t2224 = load i1, i1* %t2215
  br i1 %t2224, label %then748, label %else749
then748:
  %t2225 = load { i64, i8* }*, { i64, i8* }** %param_ty.ptr
  %t2226 = call i64 @nyx_array_get({ i64, i8* }* %t2225, i64 1)
  %t2227 = inttoptr i64 %t2226 to { i64, i8* }*
  store { i64, i8* }* %t2227, { i64, i8* }** %t2228
  %t2229 = load { i64, i8* }*, { i64, i8* }** %arg_ty.ptr
  %t2230 = call i64 @nyx_array_get({ i64, i8* }* %t2229, i64 1)
  %t2231 = inttoptr i64 %t2230 to { i64, i8* }*
  store { i64, i8* }* %t2231, { i64, i8* }** %t2232
  %t2233 = load { i64, i8* }*, { i64, i8* }** %t2228
  %t2234 = load { i64, i8* }*, { i64, i8* }** %t2232
  %t2235 = load { i64, i8* }*, { i64, i8* }** %type_param_names.ptr
  %t2236 = load { i64, i8* }*, { i64, i8* }** %names_out.ptr
  %t2237 = load { i64, i8* }*, { i64, i8* }** %types_out.ptr
  %t2238 = call i1 @unify({ i64, i8* }* %t2233, { i64, i8* }* %t2234, { i64, i8* }* %t2235, { i64, i8* }* %t2236, { i64, i8* }* %t2237)
  %t2239 = xor i1 %t2238, true
  br i1 %t2239, label %then751, label %else752
then751:
  ret i1 0
else752:
  br label %merge753
merge753:
  %t2240 = load { i64, i8* }*, { i64, i8* }** %param_ty.ptr
  %t2241 = call i64 @nyx_array_get({ i64, i8* }* %t2240, i64 2)
  %t2242 = inttoptr i64 %t2241 to { i64, i8* }*
  store { i64, i8* }* %t2242, { i64, i8* }** %t2243
  %t2244 = load { i64, i8* }*, { i64, i8* }** %arg_ty.ptr
  %t2245 = call i64 @nyx_array_get({ i64, i8* }* %t2244, i64 2)
  %t2246 = inttoptr i64 %t2245 to { i64, i8* }*
  store { i64, i8* }* %t2246, { i64, i8* }** %t2247
  %t2248 = load { i64, i8* }*, { i64, i8* }** %t2243
  %t2249 = load { i64, i8* }*, { i64, i8* }** %t2247
  %t2250 = load { i64, i8* }*, { i64, i8* }** %type_param_names.ptr
  %t2251 = load { i64, i8* }*, { i64, i8* }** %names_out.ptr
  %t2252 = load { i64, i8* }*, { i64, i8* }** %types_out.ptr
  %t2253 = call i1 @unify({ i64, i8* }* %t2248, { i64, i8* }* %t2249, { i64, i8* }* %t2250, { i64, i8* }* %t2251, { i64, i8* }* %t2252)
  ret i1 %t2253
else749:
  br label %merge750
merge750:
  %t2254 = load %nyx_string*, %nyx_string** %t2106
  %t2255 = getelementptr [5 x i8], [5 x i8]* @.str241, i32 0, i32 0
  %t2256 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str241.c, i8* %t2255, i64 4)
  %t2257 = call i1 @nyx_string_equals(%nyx_string* %t2254, %nyx_string* %t2256)
  br i1 %t2257, label %then754, label %else755
then754:
  %t2258 = load { i64, i8* }*, { i64, i8* }** %param_ty.ptr
  %t2259 = call i64 @nyx_array_get({ i64, i8* }* %t2258, i64 1)
  %t2260 = inttoptr i64 %t2259 to { i64, i8* }*
  store { i64, i8* }* %t2260, { i64, i8* }** %t2261
  %t2262 = load { i64, i8* }*, { i64, i8* }** %arg_ty.ptr
  %t2263 = call i64 @nyx_array_get({ i64, i8* }* %t2262, i64 1)
  %t2264 = inttoptr i64 %t2263 to { i64, i8* }*
  store { i64, i8* }* %t2264, { i64, i8* }** %t2265
  %t2266 = load { i64, i8* }*, { i64, i8* }** %t2261
  %t2267 = call i64 @nyx_array_length({ i64, i8* }* %t2266)
  %t2268 = load { i64, i8* }*, { i64, i8* }** %t2265
  %t2269 = call i64 @nyx_array_length({ i64, i8* }* %t2268)
  %t2270 = icmp ne i64 %t2267, %t2269
  br i1 %t2270, label %then757, label %else758
then757:
  ret i1 0
else758:
  br label %merge759
merge759:
  store i64 0, i64* %t2271
  br label %while_cond760
while_cond760:
  %t2272 = load i64, i64* %t2271
  %t2273 = load { i64, i8* }*, { i64, i8* }** %t2261
  %t2274 = call i64 @nyx_array_length({ i64, i8* }* %t2273)
  %t2275 = icmp slt i64 %t2272, %t2274
  br i1 %t2275, label %while_body761, label %while_end762
while_body761:
  %t2276 = load { i64, i8* }*, { i64, i8* }** %t2261
  %t2277 = load i64, i64* %t2271
  %t2278 = call i64 @nyx_array_get({ i64, i8* }* %t2276, i64 %t2277)
  %t2279 = inttoptr i64 %t2278 to { i64, i8* }*
  store { i64, i8* }* %t2279, { i64, i8* }** %t2280
  %t2281 = load { i64, i8* }*, { i64, i8* }** %t2265
  %t2282 = load i64, i64* %t2271
  %t2283 = call i64 @nyx_array_get({ i64, i8* }* %t2281, i64 %t2282)
  %t2284 = inttoptr i64 %t2283 to { i64, i8* }*
  store { i64, i8* }* %t2284, { i64, i8* }** %t2285
  %t2286 = load { i64, i8* }*, { i64, i8* }** %t2280
  %t2287 = load { i64, i8* }*, { i64, i8* }** %t2285
  %t2288 = load { i64, i8* }*, { i64, i8* }** %type_param_names.ptr
  %t2289 = load { i64, i8* }*, { i64, i8* }** %names_out.ptr
  %t2290 = load { i64, i8* }*, { i64, i8* }** %types_out.ptr
  %t2291 = call i1 @unify({ i64, i8* }* %t2286, { i64, i8* }* %t2287, { i64, i8* }* %t2288, { i64, i8* }* %t2289, { i64, i8* }* %t2290)
  %t2292 = xor i1 %t2291, true
  br i1 %t2292, label %then763, label %else764
then763:
  ret i1 0
else764:
  br label %merge765
merge765:
  %t2293 = load i64, i64* %t2271
  %t2294 = add i64 %t2293, 1
  store i64 %t2294, i64* %t2271
  br label %while_cond760
while_end762:
  %t2295 = load { i64, i8* }*, { i64, i8* }** %param_ty.ptr
  %t2296 = call i64 @nyx_array_get({ i64, i8* }* %t2295, i64 2)
  %t2297 = inttoptr i64 %t2296 to { i64, i8* }*
  store { i64, i8* }* %t2297, { i64, i8* }** %t2298
  %t2299 = load { i64, i8* }*, { i64, i8* }** %arg_ty.ptr
  %t2300 = call i64 @nyx_array_get({ i64, i8* }* %t2299, i64 2)
  %t2301 = inttoptr i64 %t2300 to { i64, i8* }*
  store { i64, i8* }* %t2301, { i64, i8* }** %t2302
  %t2303 = load { i64, i8* }*, { i64, i8* }** %t2298
  %t2304 = load { i64, i8* }*, { i64, i8* }** %t2302
  %t2305 = load { i64, i8* }*, { i64, i8* }** %type_param_names.ptr
  %t2306 = load { i64, i8* }*, { i64, i8* }** %names_out.ptr
  %t2307 = load { i64, i8* }*, { i64, i8* }** %types_out.ptr
  %t2308 = call i1 @unify({ i64, i8* }* %t2303, { i64, i8* }* %t2304, { i64, i8* }* %t2305, { i64, i8* }* %t2306, { i64, i8* }* %t2307)
  ret i1 %t2308
else755:
  br label %merge756
merge756:
  store i1 true, i1* %t2309
  %t2310 = load %nyx_string*, %nyx_string** %t2106
  %t2311 = getelementptr [9 x i8], [9 x i8]* @.str242, i32 0, i32 0
  %t2312 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str242.c, i8* %t2311, i64 8)
  %t2313 = call i1 @nyx_string_equals(%nyx_string* %t2310, %nyx_string* %t2312)
  br i1 %t2313, label %sc_or_end767, label %sc_or_rhs766
sc_or_rhs766:
  %t2314 = load %nyx_string*, %nyx_string** %t2106
  %t2315 = getelementptr [7 x i8], [7 x i8]* @.str243, i32 0, i32 0
  %t2316 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str243.c, i8* %t2315, i64 6)
  %t2317 = call i1 @nyx_string_equals(%nyx_string* %t2314, %nyx_string* %t2316)
  store i1 %t2317, i1* %t2309
  br label %sc_or_end767
sc_or_end767:
  %t2318 = load i1, i1* %t2309
  br i1 %t2318, label %then768, label %else769
then768:
  %t2319 = load { i64, i8* }*, { i64, i8* }** %param_ty.ptr
  %t2320 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2319, i64 1, i64 2)
  %t2321 = inttoptr i64 %t2320 to %nyx_string*
  store %nyx_string* %t2321, %nyx_string** %t2322
  %t2323 = load { i64, i8* }*, { i64, i8* }** %arg_ty.ptr
  %t2324 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2323, i64 1, i64 2)
  %t2325 = inttoptr i64 %t2324 to %nyx_string*
  store %nyx_string* %t2325, %nyx_string** %t2326
  %t2327 = load %nyx_string*, %nyx_string** %t2322
  %t2328 = load %nyx_string*, %nyx_string** %t2326
  %t2329 = call i1 @nyx_string_equals(%nyx_string* %t2327, %nyx_string* %t2328)
  %t2330 = xor i1 %t2329, true
  br i1 %t2330, label %then771, label %else772
then771:
  ret i1 0
else772:
  br label %merge773
merge773:
  %t2331 = load { i64, i8* }*, { i64, i8* }** %param_ty.ptr
  %t2332 = call i64 @nyx_array_get({ i64, i8* }* %t2331, i64 2)
  %t2333 = inttoptr i64 %t2332 to { i64, i8* }*
  store { i64, i8* }* %t2333, { i64, i8* }** %t2334
  %t2335 = load { i64, i8* }*, { i64, i8* }** %arg_ty.ptr
  %t2336 = call i64 @nyx_array_get({ i64, i8* }* %t2335, i64 2)
  %t2337 = inttoptr i64 %t2336 to { i64, i8* }*
  store { i64, i8* }* %t2337, { i64, i8* }** %t2338
  %t2339 = load { i64, i8* }*, { i64, i8* }** %t2334
  %t2340 = call i64 @nyx_array_length({ i64, i8* }* %t2339)
  %t2341 = icmp eq i64 %t2340, 0
  br i1 %t2341, label %then774, label %else775
then774:
  ret i1 1
else775:
  br label %merge776
merge776:
  %t2342 = load { i64, i8* }*, { i64, i8* }** %t2338
  %t2343 = call i64 @nyx_array_length({ i64, i8* }* %t2342)
  %t2344 = icmp eq i64 %t2343, 0
  br i1 %t2344, label %then777, label %else778
then777:
  ret i1 1
else778:
  br label %merge779
merge779:
  %t2345 = load { i64, i8* }*, { i64, i8* }** %t2334
  %t2346 = call i64 @nyx_array_length({ i64, i8* }* %t2345)
  %t2347 = load { i64, i8* }*, { i64, i8* }** %t2338
  %t2348 = call i64 @nyx_array_length({ i64, i8* }* %t2347)
  %t2349 = icmp ne i64 %t2346, %t2348
  br i1 %t2349, label %then780, label %else781
then780:
  ret i1 0
else781:
  br label %merge782
merge782:
  store i64 0, i64* %t2350
  br label %while_cond783
while_cond783:
  %t2351 = load i64, i64* %t2350
  %t2352 = load { i64, i8* }*, { i64, i8* }** %t2334
  %t2353 = call i64 @nyx_array_length({ i64, i8* }* %t2352)
  %t2354 = icmp slt i64 %t2351, %t2353
  br i1 %t2354, label %while_body784, label %while_end785
while_body784:
  %t2355 = load { i64, i8* }*, { i64, i8* }** %t2334
  %t2356 = load i64, i64* %t2350
  %t2357 = call i64 @nyx_array_get({ i64, i8* }* %t2355, i64 %t2356)
  %t2358 = inttoptr i64 %t2357 to { i64, i8* }*
  store { i64, i8* }* %t2358, { i64, i8* }** %t2359
  %t2360 = load { i64, i8* }*, { i64, i8* }** %t2338
  %t2361 = load i64, i64* %t2350
  %t2362 = call i64 @nyx_array_get({ i64, i8* }* %t2360, i64 %t2361)
  %t2363 = inttoptr i64 %t2362 to { i64, i8* }*
  store { i64, i8* }* %t2363, { i64, i8* }** %t2364
  %t2365 = load { i64, i8* }*, { i64, i8* }** %t2359
  %t2366 = load { i64, i8* }*, { i64, i8* }** %t2364
  %t2367 = load { i64, i8* }*, { i64, i8* }** %type_param_names.ptr
  %t2368 = load { i64, i8* }*, { i64, i8* }** %names_out.ptr
  %t2369 = load { i64, i8* }*, { i64, i8* }** %types_out.ptr
  %t2370 = call i1 @unify({ i64, i8* }* %t2365, { i64, i8* }* %t2366, { i64, i8* }* %t2367, { i64, i8* }* %t2368, { i64, i8* }* %t2369)
  %t2371 = xor i1 %t2370, true
  br i1 %t2371, label %then786, label %else787
then786:
  ret i1 0
else787:
  br label %merge788
merge788:
  %t2372 = load i64, i64* %t2350
  %t2373 = add i64 %t2372, 1
  store i64 %t2373, i64* %t2350
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
  %t2374 = load { i64, i8* }*, { i64, i8* }** %param_ty.ptr
  %t2375 = load { i64, i8* }*, { i64, i8* }** %arg_ty.ptr
  %t2376 = call i1 @ty_eq({ i64, i8* }* %t2374, { i64, i8* }* %t2375)
  ret i1 %t2376
}

define { i64, i8* }* @ty_var(
i64 %id.param) {
  %id.ptr = alloca i64
  store i64 %id.param, i64* %id.ptr
  %t2377 = call { i64, i8* }* @nyx_array_new_ptr()
  %t2378 = getelementptr [6 x i8], [6 x i8]* @.str244, i32 0, i32 0
  %t2379 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str244.c, i8* %t2378, i64 5)
  %t2380 = ptrtoint %nyx_string* %t2379 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2377, i64 %t2380, i64 2)
  %t2381 = load i64, i64* %id.ptr
  call void @nyx_array_push_tagged({ i64, i8* }* %t2377, i64 %t2381, i64 1)
  ret { i64, i8* }* %t2377
}

define { i64, i8* }* @subst_new(
) {
  %t2382 = call { i64, i8* }* @nyx_array_new_ptr()
  %t2383 = call { i64, i8* }* @nyx_array_new_ptr()
  %t2384 = ptrtoint { i64, i8* }* %t2383 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2382, i64 %t2384, i64 5)
  %t2385 = call { i64, i8* }* @nyx_array_new_ptr()
  %t2386 = ptrtoint { i64, i8* }* %t2385 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2382, i64 %t2386, i64 5)
  ret { i64, i8* }* %t2382
}

define internal { i64, i8* }* @subst_lookup(
{ i64, i8* }* %subst.param, i64 %id.param) {
  %subst.ptr = alloca { i64, i8* }*
  %id.ptr = alloca i64
  %t2390 = alloca { i64, i8* }*
  %t2394 = alloca { i64, i8* }*
  %t2395 = alloca i64
  %t2403 = alloca i64
  %t2411 = alloca { i64, i8* }*
  store { i64, i8* }* %subst.param, { i64, i8* }** %subst.ptr
  store i64 %id.param, i64* %id.ptr
  %t2387 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %t2388 = call i64 @nyx_array_get({ i64, i8* }* %t2387, i64 0)
  %t2389 = inttoptr i64 %t2388 to { i64, i8* }*
  store { i64, i8* }* %t2389, { i64, i8* }** %t2390
  %t2391 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %t2392 = call i64 @nyx_array_get({ i64, i8* }* %t2391, i64 1)
  %t2393 = inttoptr i64 %t2392 to { i64, i8* }*
  store { i64, i8* }* %t2393, { i64, i8* }** %t2394
  store i64 0, i64* %t2395
  br label %while_cond789
while_cond789:
  %t2396 = load i64, i64* %t2395
  %t2397 = load { i64, i8* }*, { i64, i8* }** %t2390
  %t2398 = call i64 @nyx_array_length({ i64, i8* }* %t2397)
  %t2399 = icmp slt i64 %t2396, %t2398
  br i1 %t2399, label %while_body790, label %while_end791
while_body790:
  %t2400 = load { i64, i8* }*, { i64, i8* }** %t2390
  %t2401 = load i64, i64* %t2395
  %t2402 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %t2400, i64 %t2401)
  store i64 %t2402, i64* %t2403
  %t2404 = load i64, i64* %t2403
  %t2405 = load i64, i64* %id.ptr
  %t2406 = icmp eq i64 %t2404, %t2405
  br i1 %t2406, label %then792, label %else793
then792:
  %t2407 = load { i64, i8* }*, { i64, i8* }** %t2394
  %t2408 = load i64, i64* %t2395
  %t2409 = call i64 @nyx_array_get({ i64, i8* }* %t2407, i64 %t2408)
  %t2410 = inttoptr i64 %t2409 to { i64, i8* }*
  store { i64, i8* }* %t2410, { i64, i8* }** %t2411
  %t2412 = call { i64, i8* }* @nyx_array_new_ptr()
  %t2413 = zext i1 1 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2412, i64 %t2413, i64 4)
  %t2414 = load { i64, i8* }*, { i64, i8* }** %t2411
  %t2415 = ptrtoint { i64, i8* }* %t2414 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2412, i64 %t2415, i64 5)
  ret { i64, i8* }* %t2412
else793:
  br label %merge794
merge794:
  %t2416 = load i64, i64* %t2395
  %t2417 = add i64 %t2416, 1
  store i64 %t2417, i64* %t2395
  br label %while_cond789
while_end791:
  %t2418 = call { i64, i8* }* @nyx_array_new_ptr()
  %t2419 = zext i1 0 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2418, i64 %t2419, i64 4)
  %t2420 = call { i64, i8* }* @ty_unknown()
  %t2421 = ptrtoint { i64, i8* }* %t2420 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2418, i64 %t2421, i64 5)
  ret { i64, i8* }* %t2418
}

define internal i64 @subst_bind(
{ i64, i8* }* %subst.param, i64 %id.param, { i64, i8* }* %ty.param) {
  %subst.ptr = alloca { i64, i8* }*
  %id.ptr = alloca i64
  %ty.ptr = alloca { i64, i8* }*
  %t2425 = alloca { i64, i8* }*
  %t2429 = alloca { i64, i8* }*
  store { i64, i8* }* %subst.param, { i64, i8* }** %subst.ptr
  store i64 %id.param, i64* %id.ptr
  store { i64, i8* }* %ty.param, { i64, i8* }** %ty.ptr
  %t2422 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %t2423 = call i64 @nyx_array_get({ i64, i8* }* %t2422, i64 0)
  %t2424 = inttoptr i64 %t2423 to { i64, i8* }*
  store { i64, i8* }* %t2424, { i64, i8* }** %t2425
  %t2426 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %t2427 = call i64 @nyx_array_get({ i64, i8* }* %t2426, i64 1)
  %t2428 = inttoptr i64 %t2427 to { i64, i8* }*
  store { i64, i8* }* %t2428, { i64, i8* }** %t2429
  %t2430 = load { i64, i8* }*, { i64, i8* }** %t2425
  %t2431 = load i64, i64* %id.ptr
  call void @nyx_array_push_tagged({ i64, i8* }* %t2430, i64 %t2431, i64 1)
  %t2432 = load { i64, i8* }*, { i64, i8* }** %t2429
  %t2433 = load { i64, i8* }*, { i64, i8* }** %ty.ptr
  %t2434 = ptrtoint { i64, i8* }* %t2433 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2432, i64 %t2434, i64 5)
  ret i64 0
}

define { i64, i8* }* @subst_resolve(
{ i64, i8* }* %subst.param, { i64, i8* }* %ty.param) {
  %subst.ptr = alloca { i64, i8* }*
  %ty.ptr = alloca { i64, i8* }*
  %t2437 = alloca %nyx_string*
  %t2446 = alloca i64
  %t2450 = alloca { i64, i8* }*
  %t2454 = alloca i1
  %t2461 = alloca { i64, i8* }*
  store { i64, i8* }* %subst.param, { i64, i8* }** %subst.ptr
  store { i64, i8* }* %ty.param, { i64, i8* }** %ty.ptr
  %t2435 = load { i64, i8* }*, { i64, i8* }** %ty.ptr
  %t2436 = call %nyx_string* @ty_kind({ i64, i8* }* %t2435)
  store %nyx_string* %t2436, %nyx_string** %t2437
  %t2438 = load %nyx_string*, %nyx_string** %t2437
  %t2439 = getelementptr [6 x i8], [6 x i8]* @.str245, i32 0, i32 0
  %t2440 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str245.c, i8* %t2439, i64 5)
  %t2441 = call i1 @nyx_string_equals(%nyx_string* %t2438, %nyx_string* %t2440)
  %t2442 = xor i1 %t2441, true
  br i1 %t2442, label %then795, label %else796
then795:
  %t2443 = load { i64, i8* }*, { i64, i8* }** %ty.ptr
  ret { i64, i8* }* %t2443
else796:
  br label %merge797
merge797:
  %t2444 = load { i64, i8* }*, { i64, i8* }** %ty.ptr
  %t2445 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %t2444, i64 1)
  store i64 %t2445, i64* %t2446
  %t2447 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %t2448 = load i64, i64* %t2446
  %t2449 = call { i64, i8* }* @subst_lookup({ i64, i8* }* %t2447, i64 %t2448)
  store { i64, i8* }* %t2449, { i64, i8* }** %t2450
  %t2451 = load { i64, i8* }*, { i64, i8* }** %t2450
  %t2452 = call i64 @nyx_array_get({ i64, i8* }* %t2451, i64 0)
  %t2453 = trunc i64 %t2452 to i1
  store i1 %t2453, i1* %t2454
  %t2455 = load i1, i1* %t2454
  %t2456 = xor i1 %t2455, true
  br i1 %t2456, label %then798, label %else799
then798:
  %t2457 = load { i64, i8* }*, { i64, i8* }** %ty.ptr
  ret { i64, i8* }* %t2457
else799:
  br label %merge800
merge800:
  %t2458 = load { i64, i8* }*, { i64, i8* }** %t2450
  %t2459 = call i64 @nyx_array_get({ i64, i8* }* %t2458, i64 1)
  %t2460 = inttoptr i64 %t2459 to { i64, i8* }*
  store { i64, i8* }* %t2460, { i64, i8* }** %t2461
  %t2462 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %t2463 = load { i64, i8* }*, { i64, i8* }** %t2461
  %t2464 = call { i64, i8* }* @subst_resolve({ i64, i8* }* %t2462, { i64, i8* }* %t2463)
  ret { i64, i8* }* %t2464
}

define { i64, i8* }* @subst_resolve_deep(
{ i64, i8* }* %subst.param, { i64, i8* }* %ty.param) {
  %subst.ptr = alloca { i64, i8* }*
  %ty.ptr = alloca { i64, i8* }*
  %t2468 = alloca { i64, i8* }*
  %t2471 = alloca %nyx_string*
  %t2563 = alloca { i64, i8* }*
  %t2565 = alloca { i64, i8* }*
  %t2566 = alloca i64
  %t2595 = alloca { i64, i8* }*
  %t2597 = alloca { i64, i8* }*
  %t2598 = alloca i64
  %t2625 = alloca { i64, i8* }*
  %t2627 = alloca { i64, i8* }*
  %t2628 = alloca i64
  store { i64, i8* }* %subst.param, { i64, i8* }** %subst.ptr
  store { i64, i8* }* %ty.param, { i64, i8* }** %ty.ptr
  %t2465 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %t2466 = load { i64, i8* }*, { i64, i8* }** %ty.ptr
  %t2467 = call { i64, i8* }* @subst_resolve({ i64, i8* }* %t2465, { i64, i8* }* %t2466)
  store { i64, i8* }* %t2467, { i64, i8* }** %t2468
  %t2469 = load { i64, i8* }*, { i64, i8* }** %t2468
  %t2470 = call %nyx_string* @ty_kind({ i64, i8* }* %t2469)
  store %nyx_string* %t2470, %nyx_string** %t2471
  %t2472 = load %nyx_string*, %nyx_string** %t2471
  %t2473 = getelementptr [8 x i8], [8 x i8]* @.str246, i32 0, i32 0
  %t2474 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str246.c, i8* %t2473, i64 7)
  %t2475 = call i1 @nyx_string_equals(%nyx_string* %t2472, %nyx_string* %t2474)
  br i1 %t2475, label %then801, label %else802
then801:
  %t2476 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %t2477 = load { i64, i8* }*, { i64, i8* }** %t2468
  %t2478 = call i64 @nyx_array_get({ i64, i8* }* %t2477, i64 1)
  %t2479 = inttoptr i64 %t2478 to { i64, i8* }*
  %t2480 = call { i64, i8* }* @subst_resolve_deep({ i64, i8* }* %t2476, { i64, i8* }* %t2479)
  %t2481 = call { i64, i8* }* @ty_array({ i64, i8* }* %t2480)
  ret { i64, i8* }* %t2481
else802:
  br label %merge803
merge803:
  %t2482 = load %nyx_string*, %nyx_string** %t2471
  %t2483 = getelementptr [9 x i8], [9 x i8]* @.str247, i32 0, i32 0
  %t2484 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str247.c, i8* %t2483, i64 8)
  %t2485 = call i1 @nyx_string_equals(%nyx_string* %t2482, %nyx_string* %t2484)
  br i1 %t2485, label %then804, label %else805
then804:
  %t2486 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %t2487 = load { i64, i8* }*, { i64, i8* }** %t2468
  %t2488 = call i64 @nyx_array_get({ i64, i8* }* %t2487, i64 1)
  %t2489 = inttoptr i64 %t2488 to { i64, i8* }*
  %t2490 = call { i64, i8* }* @subst_resolve_deep({ i64, i8* }* %t2486, { i64, i8* }* %t2489)
  %t2491 = call { i64, i8* }* @ty_option({ i64, i8* }* %t2490)
  ret { i64, i8* }* %t2491
else805:
  br label %merge806
merge806:
  %t2492 = load %nyx_string*, %nyx_string** %t2471
  %t2493 = getelementptr [6 x i8], [6 x i8]* @.str248, i32 0, i32 0
  %t2494 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str248.c, i8* %t2493, i64 5)
  %t2495 = call i1 @nyx_string_equals(%nyx_string* %t2492, %nyx_string* %t2494)
  br i1 %t2495, label %then807, label %else808
then807:
  %t2496 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %t2497 = load { i64, i8* }*, { i64, i8* }** %t2468
  %t2498 = call i64 @nyx_array_get({ i64, i8* }* %t2497, i64 1)
  %t2499 = inttoptr i64 %t2498 to { i64, i8* }*
  %t2500 = call { i64, i8* }* @subst_resolve_deep({ i64, i8* }* %t2496, { i64, i8* }* %t2499)
  %t2501 = call { i64, i8* }* @ty_ptr({ i64, i8* }* %t2500)
  ret { i64, i8* }* %t2501
else808:
  br label %merge809
merge809:
  %t2502 = load %nyx_string*, %nyx_string** %t2471
  %t2503 = getelementptr [6 x i8], [6 x i8]* @.str249, i32 0, i32 0
  %t2504 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str249.c, i8* %t2503, i64 5)
  %t2505 = call i1 @nyx_string_equals(%nyx_string* %t2502, %nyx_string* %t2504)
  br i1 %t2505, label %then810, label %else811
then810:
  %t2506 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %t2507 = load { i64, i8* }*, { i64, i8* }** %t2468
  %t2508 = call i64 @nyx_array_get({ i64, i8* }* %t2507, i64 1)
  %t2509 = inttoptr i64 %t2508 to { i64, i8* }*
  %t2510 = call { i64, i8* }* @subst_resolve_deep({ i64, i8* }* %t2506, { i64, i8* }* %t2509)
  %t2511 = load { i64, i8* }*, { i64, i8* }** %t2468
  %t2512 = call %nyx_string* @ty_ref_region({ i64, i8* }* %t2511)
  %t2513 = call { i64, i8* }* @ty_ref_r({ i64, i8* }* %t2510, %nyx_string* %t2512)
  ret { i64, i8* }* %t2513
else811:
  br label %merge812
merge812:
  %t2514 = load %nyx_string*, %nyx_string** %t2471
  %t2515 = getelementptr [9 x i8], [9 x i8]* @.str250, i32 0, i32 0
  %t2516 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str250.c, i8* %t2515, i64 8)
  %t2517 = call i1 @nyx_string_equals(%nyx_string* %t2514, %nyx_string* %t2516)
  br i1 %t2517, label %then813, label %else814
then813:
  %t2518 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %t2519 = load { i64, i8* }*, { i64, i8* }** %t2468
  %t2520 = call i64 @nyx_array_get({ i64, i8* }* %t2519, i64 1)
  %t2521 = inttoptr i64 %t2520 to { i64, i8* }*
  %t2522 = call { i64, i8* }* @subst_resolve_deep({ i64, i8* }* %t2518, { i64, i8* }* %t2521)
  %t2523 = load { i64, i8* }*, { i64, i8* }** %t2468
  %t2524 = call %nyx_string* @ty_ref_region({ i64, i8* }* %t2523)
  %t2525 = call { i64, i8* }* @ty_ref_mut_r({ i64, i8* }* %t2522, %nyx_string* %t2524)
  ret { i64, i8* }* %t2525
else814:
  br label %merge815
merge815:
  %t2526 = load %nyx_string*, %nyx_string** %t2471
  %t2527 = getelementptr [9 x i8], [9 x i8]* @.str251, i32 0, i32 0
  %t2528 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str251.c, i8* %t2527, i64 8)
  %t2529 = call i1 @nyx_string_equals(%nyx_string* %t2526, %nyx_string* %t2528)
  br i1 %t2529, label %then816, label %else817
then816:
  %t2530 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %t2531 = load { i64, i8* }*, { i64, i8* }** %t2468
  %t2532 = call i64 @nyx_array_get({ i64, i8* }* %t2531, i64 1)
  %t2533 = inttoptr i64 %t2532 to { i64, i8* }*
  %t2534 = call { i64, i8* }* @subst_resolve_deep({ i64, i8* }* %t2530, { i64, i8* }* %t2533)
  %t2535 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %t2536 = load { i64, i8* }*, { i64, i8* }** %t2468
  %t2537 = call i64 @nyx_array_get({ i64, i8* }* %t2536, i64 2)
  %t2538 = inttoptr i64 %t2537 to { i64, i8* }*
  %t2539 = call { i64, i8* }* @subst_resolve_deep({ i64, i8* }* %t2535, { i64, i8* }* %t2538)
  %t2540 = call { i64, i8* }* @ty_result({ i64, i8* }* %t2534, { i64, i8* }* %t2539)
  ret { i64, i8* }* %t2540
else817:
  br label %merge818
merge818:
  %t2541 = load %nyx_string*, %nyx_string** %t2471
  %t2542 = getelementptr [6 x i8], [6 x i8]* @.str252, i32 0, i32 0
  %t2543 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str252.c, i8* %t2542, i64 5)
  %t2544 = call i1 @nyx_string_equals(%nyx_string* %t2541, %nyx_string* %t2543)
  br i1 %t2544, label %then819, label %else820
then819:
  %t2545 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %t2546 = load { i64, i8* }*, { i64, i8* }** %t2468
  %t2547 = call i64 @nyx_array_get({ i64, i8* }* %t2546, i64 1)
  %t2548 = inttoptr i64 %t2547 to { i64, i8* }*
  %t2549 = call { i64, i8* }* @subst_resolve_deep({ i64, i8* }* %t2545, { i64, i8* }* %t2548)
  %t2550 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %t2551 = load { i64, i8* }*, { i64, i8* }** %t2468
  %t2552 = call i64 @nyx_array_get({ i64, i8* }* %t2551, i64 2)
  %t2553 = inttoptr i64 %t2552 to { i64, i8* }*
  %t2554 = call { i64, i8* }* @subst_resolve_deep({ i64, i8* }* %t2550, { i64, i8* }* %t2553)
  %t2555 = call { i64, i8* }* @ty_map({ i64, i8* }* %t2549, { i64, i8* }* %t2554)
  ret { i64, i8* }* %t2555
else820:
  br label %merge821
merge821:
  %t2556 = load %nyx_string*, %nyx_string** %t2471
  %t2557 = getelementptr [5 x i8], [5 x i8]* @.str253, i32 0, i32 0
  %t2558 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str253.c, i8* %t2557, i64 4)
  %t2559 = call i1 @nyx_string_equals(%nyx_string* %t2556, %nyx_string* %t2558)
  br i1 %t2559, label %then822, label %else823
then822:
  %t2560 = load { i64, i8* }*, { i64, i8* }** %t2468
  %t2561 = call i64 @nyx_array_get({ i64, i8* }* %t2560, i64 1)
  %t2562 = inttoptr i64 %t2561 to { i64, i8* }*
  store { i64, i8* }* %t2562, { i64, i8* }** %t2563
  %t2564 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t2564, { i64, i8* }** %t2565
  store i64 0, i64* %t2566
  br label %while_cond825
while_cond825:
  %t2567 = load i64, i64* %t2566
  %t2568 = load { i64, i8* }*, { i64, i8* }** %t2563
  %t2569 = call i64 @nyx_array_length({ i64, i8* }* %t2568)
  %t2570 = icmp slt i64 %t2567, %t2569
  br i1 %t2570, label %while_body826, label %while_end827
while_body826:
  %t2571 = load { i64, i8* }*, { i64, i8* }** %t2565
  %t2572 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %t2573 = load { i64, i8* }*, { i64, i8* }** %t2563
  %t2574 = load i64, i64* %t2566
  %t2575 = call i64 @nyx_array_get({ i64, i8* }* %t2573, i64 %t2574)
  %t2576 = inttoptr i64 %t2575 to { i64, i8* }*
  %t2577 = call { i64, i8* }* @subst_resolve_deep({ i64, i8* }* %t2572, { i64, i8* }* %t2576)
  %t2578 = ptrtoint { i64, i8* }* %t2577 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2571, i64 %t2578, i64 5)
  %t2579 = load i64, i64* %t2566
  %t2580 = add i64 %t2579, 1
  store i64 %t2580, i64* %t2566
  br label %while_cond825
while_end827:
  %t2581 = load { i64, i8* }*, { i64, i8* }** %t2565
  %t2582 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %t2583 = load { i64, i8* }*, { i64, i8* }** %t2468
  %t2584 = call i64 @nyx_array_get({ i64, i8* }* %t2583, i64 2)
  %t2585 = inttoptr i64 %t2584 to { i64, i8* }*
  %t2586 = call { i64, i8* }* @subst_resolve_deep({ i64, i8* }* %t2582, { i64, i8* }* %t2585)
  %t2587 = call { i64, i8* }* @ty_fn({ i64, i8* }* %t2581, { i64, i8* }* %t2586)
  ret { i64, i8* }* %t2587
else823:
  br label %merge824
merge824:
  %t2588 = load %nyx_string*, %nyx_string** %t2471
  %t2589 = getelementptr [9 x i8], [9 x i8]* @.str254, i32 0, i32 0
  %t2590 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str254.c, i8* %t2589, i64 8)
  %t2591 = call i1 @nyx_string_equals(%nyx_string* %t2588, %nyx_string* %t2590)
  br i1 %t2591, label %then828, label %else829
then828:
  %t2592 = load { i64, i8* }*, { i64, i8* }** %t2468
  %t2593 = call i64 @nyx_array_get({ i64, i8* }* %t2592, i64 2)
  %t2594 = inttoptr i64 %t2593 to { i64, i8* }*
  store { i64, i8* }* %t2594, { i64, i8* }** %t2595
  %t2596 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t2596, { i64, i8* }** %t2597
  store i64 0, i64* %t2598
  br label %while_cond831
while_cond831:
  %t2599 = load i64, i64* %t2598
  %t2600 = load { i64, i8* }*, { i64, i8* }** %t2595
  %t2601 = call i64 @nyx_array_length({ i64, i8* }* %t2600)
  %t2602 = icmp slt i64 %t2599, %t2601
  br i1 %t2602, label %while_body832, label %while_end833
while_body832:
  %t2603 = load { i64, i8* }*, { i64, i8* }** %t2597
  %t2604 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %t2605 = load { i64, i8* }*, { i64, i8* }** %t2595
  %t2606 = load i64, i64* %t2598
  %t2607 = call i64 @nyx_array_get({ i64, i8* }* %t2605, i64 %t2606)
  %t2608 = inttoptr i64 %t2607 to { i64, i8* }*
  %t2609 = call { i64, i8* }* @subst_resolve_deep({ i64, i8* }* %t2604, { i64, i8* }* %t2608)
  %t2610 = ptrtoint { i64, i8* }* %t2609 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2603, i64 %t2610, i64 5)
  %t2611 = load i64, i64* %t2598
  %t2612 = add i64 %t2611, 1
  store i64 %t2612, i64* %t2598
  br label %while_cond831
while_end833:
  %t2613 = load { i64, i8* }*, { i64, i8* }** %t2468
  %t2614 = call i64 @nyx_array_get({ i64, i8* }* %t2613, i64 1)
  %t2615 = inttoptr i64 %t2614 to %nyx_string*
  %t2616 = load { i64, i8* }*, { i64, i8* }** %t2597
  %t2617 = call { i64, i8* }* @ty_struct_ty(%nyx_string* %t2615, { i64, i8* }* %t2616)
  ret { i64, i8* }* %t2617
else829:
  br label %merge830
merge830:
  %t2618 = load %nyx_string*, %nyx_string** %t2471
  %t2619 = getelementptr [7 x i8], [7 x i8]* @.str255, i32 0, i32 0
  %t2620 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str255.c, i8* %t2619, i64 6)
  %t2621 = call i1 @nyx_string_equals(%nyx_string* %t2618, %nyx_string* %t2620)
  br i1 %t2621, label %then834, label %else835
then834:
  %t2622 = load { i64, i8* }*, { i64, i8* }** %t2468
  %t2623 = call i64 @nyx_array_get({ i64, i8* }* %t2622, i64 2)
  %t2624 = inttoptr i64 %t2623 to { i64, i8* }*
  store { i64, i8* }* %t2624, { i64, i8* }** %t2625
  %t2626 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t2626, { i64, i8* }** %t2627
  store i64 0, i64* %t2628
  br label %while_cond837
while_cond837:
  %t2629 = load i64, i64* %t2628
  %t2630 = load { i64, i8* }*, { i64, i8* }** %t2625
  %t2631 = call i64 @nyx_array_length({ i64, i8* }* %t2630)
  %t2632 = icmp slt i64 %t2629, %t2631
  br i1 %t2632, label %while_body838, label %while_end839
while_body838:
  %t2633 = load { i64, i8* }*, { i64, i8* }** %t2627
  %t2634 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %t2635 = load { i64, i8* }*, { i64, i8* }** %t2625
  %t2636 = load i64, i64* %t2628
  %t2637 = call i64 @nyx_array_get({ i64, i8* }* %t2635, i64 %t2636)
  %t2638 = inttoptr i64 %t2637 to { i64, i8* }*
  %t2639 = call { i64, i8* }* @subst_resolve_deep({ i64, i8* }* %t2634, { i64, i8* }* %t2638)
  %t2640 = ptrtoint { i64, i8* }* %t2639 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t2633, i64 %t2640, i64 5)
  %t2641 = load i64, i64* %t2628
  %t2642 = add i64 %t2641, 1
  store i64 %t2642, i64* %t2628
  br label %while_cond837
while_end839:
  %t2643 = load { i64, i8* }*, { i64, i8* }** %t2468
  %t2644 = call i64 @nyx_array_get({ i64, i8* }* %t2643, i64 1)
  %t2645 = inttoptr i64 %t2644 to %nyx_string*
  %t2646 = load { i64, i8* }*, { i64, i8* }** %t2627
  %t2647 = call { i64, i8* }* @ty_enum_ty(%nyx_string* %t2645, { i64, i8* }* %t2646)
  ret { i64, i8* }* %t2647
else835:
  br label %merge836
merge836:
  %t2648 = load { i64, i8* }*, { i64, i8* }** %t2468
  ret { i64, i8* }* %t2648
}

define i1 @occurs_check(
i64 %id.param, { i64, i8* }* %ty.param, { i64, i8* }* %subst.param) {
  %id.ptr = alloca i64
  %ty.ptr = alloca { i64, i8* }*
  %subst.ptr = alloca { i64, i8* }*
  %t2652 = alloca { i64, i8* }*
  %t2655 = alloca %nyx_string*
  %t2662 = alloca i64
  %t2666 = alloca i1
  %t2667 = alloca i1
  %t2668 = alloca i1
  %t2669 = alloca i1
  %t2697 = alloca { i64, i8* }*
  %t2702 = alloca i1
  %t2715 = alloca { i64, i8* }*
  %t2723 = alloca { i64, i8* }*
  %t2735 = alloca { i64, i8* }*
  %t2736 = alloca i64
  %t2745 = alloca { i64, i8* }*
  %t2755 = alloca { i64, i8* }*
  %t2760 = alloca i1
  %t2773 = alloca { i64, i8* }*
  %t2774 = alloca i64
  %t2783 = alloca { i64, i8* }*
  store i64 %id.param, i64* %id.ptr
  store { i64, i8* }* %ty.param, { i64, i8* }** %ty.ptr
  store { i64, i8* }* %subst.param, { i64, i8* }** %subst.ptr
  %t2649 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %t2650 = load { i64, i8* }*, { i64, i8* }** %ty.ptr
  %t2651 = call { i64, i8* }* @subst_resolve({ i64, i8* }* %t2649, { i64, i8* }* %t2650)
  store { i64, i8* }* %t2651, { i64, i8* }** %t2652
  %t2653 = load { i64, i8* }*, { i64, i8* }** %t2652
  %t2654 = call %nyx_string* @ty_kind({ i64, i8* }* %t2653)
  store %nyx_string* %t2654, %nyx_string** %t2655
  %t2656 = load %nyx_string*, %nyx_string** %t2655
  %t2657 = getelementptr [6 x i8], [6 x i8]* @.str256, i32 0, i32 0
  %t2658 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str256.c, i8* %t2657, i64 5)
  %t2659 = call i1 @nyx_string_equals(%nyx_string* %t2656, %nyx_string* %t2658)
  br i1 %t2659, label %then840, label %else841
then840:
  %t2660 = load { i64, i8* }*, { i64, i8* }** %t2652
  %t2661 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %t2660, i64 1)
  store i64 %t2661, i64* %t2662
  %t2663 = load i64, i64* %t2662
  %t2664 = load i64, i64* %id.ptr
  %t2665 = icmp eq i64 %t2663, %t2664
  ret i1 %t2665
else841:
  br label %merge842
merge842:
  store i1 true, i1* %t2666
  store i1 true, i1* %t2667
  store i1 true, i1* %t2668
  store i1 true, i1* %t2669
  %t2670 = load %nyx_string*, %nyx_string** %t2655
  %t2671 = getelementptr [8 x i8], [8 x i8]* @.str257, i32 0, i32 0
  %t2672 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str257.c, i8* %t2671, i64 7)
  %t2673 = call i1 @nyx_string_equals(%nyx_string* %t2670, %nyx_string* %t2672)
  br i1 %t2673, label %sc_or_end844, label %sc_or_rhs843
sc_or_rhs843:
  %t2674 = load %nyx_string*, %nyx_string** %t2655
  %t2675 = getelementptr [9 x i8], [9 x i8]* @.str258, i32 0, i32 0
  %t2676 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str258.c, i8* %t2675, i64 8)
  %t2677 = call i1 @nyx_string_equals(%nyx_string* %t2674, %nyx_string* %t2676)
  store i1 %t2677, i1* %t2669
  br label %sc_or_end844
sc_or_end844:
  %t2678 = load i1, i1* %t2669
  br i1 %t2678, label %sc_or_end846, label %sc_or_rhs845
sc_or_rhs845:
  %t2679 = load %nyx_string*, %nyx_string** %t2655
  %t2680 = getelementptr [6 x i8], [6 x i8]* @.str259, i32 0, i32 0
  %t2681 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str259.c, i8* %t2680, i64 5)
  %t2682 = call i1 @nyx_string_equals(%nyx_string* %t2679, %nyx_string* %t2681)
  store i1 %t2682, i1* %t2668
  br label %sc_or_end846
sc_or_end846:
  %t2683 = load i1, i1* %t2668
  br i1 %t2683, label %sc_or_end848, label %sc_or_rhs847
sc_or_rhs847:
  %t2684 = load %nyx_string*, %nyx_string** %t2655
  %t2685 = getelementptr [6 x i8], [6 x i8]* @.str260, i32 0, i32 0
  %t2686 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str260.c, i8* %t2685, i64 5)
  %t2687 = call i1 @nyx_string_equals(%nyx_string* %t2684, %nyx_string* %t2686)
  store i1 %t2687, i1* %t2667
  br label %sc_or_end848
sc_or_end848:
  %t2688 = load i1, i1* %t2667
  br i1 %t2688, label %sc_or_end850, label %sc_or_rhs849
sc_or_rhs849:
  %t2689 = load %nyx_string*, %nyx_string** %t2655
  %t2690 = getelementptr [9 x i8], [9 x i8]* @.str261, i32 0, i32 0
  %t2691 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str261.c, i8* %t2690, i64 8)
  %t2692 = call i1 @nyx_string_equals(%nyx_string* %t2689, %nyx_string* %t2691)
  store i1 %t2692, i1* %t2666
  br label %sc_or_end850
sc_or_end850:
  %t2693 = load i1, i1* %t2666
  br i1 %t2693, label %then851, label %else852
then851:
  %t2694 = load { i64, i8* }*, { i64, i8* }** %t2652
  %t2695 = call i64 @nyx_array_get({ i64, i8* }* %t2694, i64 1)
  %t2696 = inttoptr i64 %t2695 to { i64, i8* }*
  store { i64, i8* }* %t2696, { i64, i8* }** %t2697
  %t2698 = load i64, i64* %id.ptr
  %t2699 = load { i64, i8* }*, { i64, i8* }** %t2697
  %t2700 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %t2701 = call i1 @occurs_check(i64 %t2698, { i64, i8* }* %t2699, { i64, i8* }* %t2700)
  ret i1 %t2701
else852:
  br label %merge853
merge853:
  store i1 true, i1* %t2702
  %t2703 = load %nyx_string*, %nyx_string** %t2655
  %t2704 = getelementptr [9 x i8], [9 x i8]* @.str262, i32 0, i32 0
  %t2705 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str262.c, i8* %t2704, i64 8)
  %t2706 = call i1 @nyx_string_equals(%nyx_string* %t2703, %nyx_string* %t2705)
  br i1 %t2706, label %sc_or_end855, label %sc_or_rhs854
sc_or_rhs854:
  %t2707 = load %nyx_string*, %nyx_string** %t2655
  %t2708 = getelementptr [6 x i8], [6 x i8]* @.str263, i32 0, i32 0
  %t2709 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str263.c, i8* %t2708, i64 5)
  %t2710 = call i1 @nyx_string_equals(%nyx_string* %t2707, %nyx_string* %t2709)
  store i1 %t2710, i1* %t2702
  br label %sc_or_end855
sc_or_end855:
  %t2711 = load i1, i1* %t2702
  br i1 %t2711, label %then856, label %else857
then856:
  %t2712 = load { i64, i8* }*, { i64, i8* }** %t2652
  %t2713 = call i64 @nyx_array_get({ i64, i8* }* %t2712, i64 1)
  %t2714 = inttoptr i64 %t2713 to { i64, i8* }*
  store { i64, i8* }* %t2714, { i64, i8* }** %t2715
  %t2716 = load i64, i64* %id.ptr
  %t2717 = load { i64, i8* }*, { i64, i8* }** %t2715
  %t2718 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %t2719 = call i1 @occurs_check(i64 %t2716, { i64, i8* }* %t2717, { i64, i8* }* %t2718)
  br i1 %t2719, label %then859, label %else860
then859:
  ret i1 1
else860:
  br label %merge861
merge861:
  %t2720 = load { i64, i8* }*, { i64, i8* }** %t2652
  %t2721 = call i64 @nyx_array_get({ i64, i8* }* %t2720, i64 2)
  %t2722 = inttoptr i64 %t2721 to { i64, i8* }*
  store { i64, i8* }* %t2722, { i64, i8* }** %t2723
  %t2724 = load i64, i64* %id.ptr
  %t2725 = load { i64, i8* }*, { i64, i8* }** %t2723
  %t2726 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %t2727 = call i1 @occurs_check(i64 %t2724, { i64, i8* }* %t2725, { i64, i8* }* %t2726)
  ret i1 %t2727
else857:
  br label %merge858
merge858:
  %t2728 = load %nyx_string*, %nyx_string** %t2655
  %t2729 = getelementptr [5 x i8], [5 x i8]* @.str264, i32 0, i32 0
  %t2730 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str264.c, i8* %t2729, i64 4)
  %t2731 = call i1 @nyx_string_equals(%nyx_string* %t2728, %nyx_string* %t2730)
  br i1 %t2731, label %then862, label %else863
then862:
  %t2732 = load { i64, i8* }*, { i64, i8* }** %t2652
  %t2733 = call i64 @nyx_array_get({ i64, i8* }* %t2732, i64 1)
  %t2734 = inttoptr i64 %t2733 to { i64, i8* }*
  store { i64, i8* }* %t2734, { i64, i8* }** %t2735
  store i64 0, i64* %t2736
  br label %while_cond865
while_cond865:
  %t2737 = load i64, i64* %t2736
  %t2738 = load { i64, i8* }*, { i64, i8* }** %t2735
  %t2739 = call i64 @nyx_array_length({ i64, i8* }* %t2738)
  %t2740 = icmp slt i64 %t2737, %t2739
  br i1 %t2740, label %while_body866, label %while_end867
while_body866:
  %t2741 = load { i64, i8* }*, { i64, i8* }** %t2735
  %t2742 = load i64, i64* %t2736
  %t2743 = call i64 @nyx_array_get({ i64, i8* }* %t2741, i64 %t2742)
  %t2744 = inttoptr i64 %t2743 to { i64, i8* }*
  store { i64, i8* }* %t2744, { i64, i8* }** %t2745
  %t2746 = load i64, i64* %id.ptr
  %t2747 = load { i64, i8* }*, { i64, i8* }** %t2745
  %t2748 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %t2749 = call i1 @occurs_check(i64 %t2746, { i64, i8* }* %t2747, { i64, i8* }* %t2748)
  br i1 %t2749, label %then868, label %else869
then868:
  ret i1 1
else869:
  br label %merge870
merge870:
  %t2750 = load i64, i64* %t2736
  %t2751 = add i64 %t2750, 1
  store i64 %t2751, i64* %t2736
  br label %while_cond865
while_end867:
  %t2752 = load { i64, i8* }*, { i64, i8* }** %t2652
  %t2753 = call i64 @nyx_array_get({ i64, i8* }* %t2752, i64 2)
  %t2754 = inttoptr i64 %t2753 to { i64, i8* }*
  store { i64, i8* }* %t2754, { i64, i8* }** %t2755
  %t2756 = load i64, i64* %id.ptr
  %t2757 = load { i64, i8* }*, { i64, i8* }** %t2755
  %t2758 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %t2759 = call i1 @occurs_check(i64 %t2756, { i64, i8* }* %t2757, { i64, i8* }* %t2758)
  ret i1 %t2759
else863:
  br label %merge864
merge864:
  store i1 true, i1* %t2760
  %t2761 = load %nyx_string*, %nyx_string** %t2655
  %t2762 = getelementptr [9 x i8], [9 x i8]* @.str265, i32 0, i32 0
  %t2763 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str265.c, i8* %t2762, i64 8)
  %t2764 = call i1 @nyx_string_equals(%nyx_string* %t2761, %nyx_string* %t2763)
  br i1 %t2764, label %sc_or_end872, label %sc_or_rhs871
sc_or_rhs871:
  %t2765 = load %nyx_string*, %nyx_string** %t2655
  %t2766 = getelementptr [7 x i8], [7 x i8]* @.str266, i32 0, i32 0
  %t2767 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str266.c, i8* %t2766, i64 6)
  %t2768 = call i1 @nyx_string_equals(%nyx_string* %t2765, %nyx_string* %t2767)
  store i1 %t2768, i1* %t2760
  br label %sc_or_end872
sc_or_end872:
  %t2769 = load i1, i1* %t2760
  br i1 %t2769, label %then873, label %else874
then873:
  %t2770 = load { i64, i8* }*, { i64, i8* }** %t2652
  %t2771 = call i64 @nyx_array_get({ i64, i8* }* %t2770, i64 2)
  %t2772 = inttoptr i64 %t2771 to { i64, i8* }*
  store { i64, i8* }* %t2772, { i64, i8* }** %t2773
  store i64 0, i64* %t2774
  br label %while_cond876
while_cond876:
  %t2775 = load i64, i64* %t2774
  %t2776 = load { i64, i8* }*, { i64, i8* }** %t2773
  %t2777 = call i64 @nyx_array_length({ i64, i8* }* %t2776)
  %t2778 = icmp slt i64 %t2775, %t2777
  br i1 %t2778, label %while_body877, label %while_end878
while_body877:
  %t2779 = load { i64, i8* }*, { i64, i8* }** %t2773
  %t2780 = load i64, i64* %t2774
  %t2781 = call i64 @nyx_array_get({ i64, i8* }* %t2779, i64 %t2780)
  %t2782 = inttoptr i64 %t2781 to { i64, i8* }*
  store { i64, i8* }* %t2782, { i64, i8* }** %t2783
  %t2784 = load i64, i64* %id.ptr
  %t2785 = load { i64, i8* }*, { i64, i8* }** %t2783
  %t2786 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %t2787 = call i1 @occurs_check(i64 %t2784, { i64, i8* }* %t2785, { i64, i8* }* %t2786)
  br i1 %t2787, label %then879, label %else880
then879:
  ret i1 1
else880:
  br label %merge881
merge881:
  %t2788 = load i64, i64* %t2774
  %t2789 = add i64 %t2788, 1
  store i64 %t2789, i64* %t2774
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
  %b.ptr = alloca { i64, i8* }*
  %subst.ptr = alloca { i64, i8* }*
  %t2793 = alloca { i64, i8* }*
  %t2797 = alloca { i64, i8* }*
  %t2800 = alloca %nyx_string*
  %t2803 = alloca %nyx_string*
  %t2834 = alloca i64
  %t2841 = alloca i64
  %t2863 = alloca i64
  %t2875 = alloca i1
  %t2876 = alloca i1
  %t2877 = alloca i1
  %t2878 = alloca i1
  %t2906 = alloca { i64, i8* }*
  %t2910 = alloca { i64, i8* }*
  %t2915 = alloca i1
  %t2928 = alloca { i64, i8* }*
  %t2932 = alloca { i64, i8* }*
  %t2941 = alloca { i64, i8* }*
  %t2945 = alloca { i64, i8* }*
  %t2957 = alloca { i64, i8* }*
  %t2961 = alloca { i64, i8* }*
  %t2967 = alloca i64
  %t2976 = alloca { i64, i8* }*
  %t2981 = alloca { i64, i8* }*
  %t2992 = alloca { i64, i8* }*
  %t2996 = alloca { i64, i8* }*
  %t3001 = alloca i1
  %t3014 = alloca %nyx_string*
  %t3018 = alloca %nyx_string*
  %t3026 = alloca { i64, i8* }*
  %t3030 = alloca { i64, i8* }*
  %t3042 = alloca i64
  %t3051 = alloca { i64, i8* }*
  %t3056 = alloca { i64, i8* }*
  store { i64, i8* }* %a.param, { i64, i8* }** %a.ptr
  store { i64, i8* }* %b.param, { i64, i8* }** %b.ptr
  store { i64, i8* }* %subst.param, { i64, i8* }** %subst.ptr
  %t2790 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %t2791 = load { i64, i8* }*, { i64, i8* }** %a.ptr
  %t2792 = call { i64, i8* }* @subst_resolve({ i64, i8* }* %t2790, { i64, i8* }* %t2791)
  store { i64, i8* }* %t2792, { i64, i8* }** %t2793
  %t2794 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %t2795 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %t2796 = call { i64, i8* }* @subst_resolve({ i64, i8* }* %t2794, { i64, i8* }* %t2795)
  store { i64, i8* }* %t2796, { i64, i8* }** %t2797
  %t2798 = load { i64, i8* }*, { i64, i8* }** %t2793
  %t2799 = call %nyx_string* @ty_kind({ i64, i8* }* %t2798)
  store %nyx_string* %t2799, %nyx_string** %t2800
  %t2801 = load { i64, i8* }*, { i64, i8* }** %t2797
  %t2802 = call %nyx_string* @ty_kind({ i64, i8* }* %t2801)
  store %nyx_string* %t2802, %nyx_string** %t2803
  %t2804 = load %nyx_string*, %nyx_string** %t2800
  %t2805 = getelementptr [10 x i8], [10 x i8]* @.str267, i32 0, i32 0
  %t2806 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str267.c, i8* %t2805, i64 9)
  %t2807 = call i1 @nyx_string_equals(%nyx_string* %t2804, %nyx_string* %t2806)
  br i1 %t2807, label %then882, label %else883
then882:
  ret i1 1
else883:
  br label %merge884
merge884:
  %t2808 = load %nyx_string*, %nyx_string** %t2803
  %t2809 = getelementptr [10 x i8], [10 x i8]* @.str268, i32 0, i32 0
  %t2810 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str268.c, i8* %t2809, i64 9)
  %t2811 = call i1 @nyx_string_equals(%nyx_string* %t2808, %nyx_string* %t2810)
  br i1 %t2811, label %then885, label %else886
then885:
  ret i1 1
else886:
  br label %merge887
merge887:
  %t2812 = load %nyx_string*, %nyx_string** %t2800
  %t2813 = getelementptr [6 x i8], [6 x i8]* @.str269, i32 0, i32 0
  %t2814 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str269.c, i8* %t2813, i64 5)
  %t2815 = call i1 @nyx_string_equals(%nyx_string* %t2812, %nyx_string* %t2814)
  br i1 %t2815, label %then888, label %else889
then888:
  ret i1 1
else889:
  br label %merge890
merge890:
  %t2816 = load %nyx_string*, %nyx_string** %t2803
  %t2817 = getelementptr [6 x i8], [6 x i8]* @.str270, i32 0, i32 0
  %t2818 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str270.c, i8* %t2817, i64 5)
  %t2819 = call i1 @nyx_string_equals(%nyx_string* %t2816, %nyx_string* %t2818)
  br i1 %t2819, label %then891, label %else892
then891:
  ret i1 1
else892:
  br label %merge893
merge893:
  %t2820 = load %nyx_string*, %nyx_string** %t2800
  %t2821 = getelementptr [10 x i8], [10 x i8]* @.str271, i32 0, i32 0
  %t2822 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str271.c, i8* %t2821, i64 9)
  %t2823 = call i1 @nyx_string_equals(%nyx_string* %t2820, %nyx_string* %t2822)
  br i1 %t2823, label %then894, label %else895
then894:
  ret i1 1
else895:
  br label %merge896
merge896:
  %t2824 = load %nyx_string*, %nyx_string** %t2803
  %t2825 = getelementptr [10 x i8], [10 x i8]* @.str272, i32 0, i32 0
  %t2826 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str272.c, i8* %t2825, i64 9)
  %t2827 = call i1 @nyx_string_equals(%nyx_string* %t2824, %nyx_string* %t2826)
  br i1 %t2827, label %then897, label %else898
then897:
  ret i1 1
else898:
  br label %merge899
merge899:
  %t2828 = load %nyx_string*, %nyx_string** %t2800
  %t2829 = getelementptr [6 x i8], [6 x i8]* @.str273, i32 0, i32 0
  %t2830 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str273.c, i8* %t2829, i64 5)
  %t2831 = call i1 @nyx_string_equals(%nyx_string* %t2828, %nyx_string* %t2830)
  br i1 %t2831, label %then900, label %else901
then900:
  %t2832 = load { i64, i8* }*, { i64, i8* }** %t2793
  %t2833 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %t2832, i64 1)
  store i64 %t2833, i64* %t2834
  %t2835 = load %nyx_string*, %nyx_string** %t2803
  %t2836 = getelementptr [6 x i8], [6 x i8]* @.str274, i32 0, i32 0
  %t2837 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str274.c, i8* %t2836, i64 5)
  %t2838 = call i1 @nyx_string_equals(%nyx_string* %t2835, %nyx_string* %t2837)
  br i1 %t2838, label %then903, label %else904
then903:
  %t2839 = load { i64, i8* }*, { i64, i8* }** %t2797
  %t2840 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %t2839, i64 1)
  store i64 %t2840, i64* %t2841
  %t2842 = load i64, i64* %t2834
  %t2843 = load i64, i64* %t2841
  %t2844 = icmp eq i64 %t2842, %t2843
  br i1 %t2844, label %then906, label %else907
then906:
  ret i1 1
else907:
  br label %merge908
merge908:
  %t2845 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %t2846 = load i64, i64* %t2834
  %t2847 = load { i64, i8* }*, { i64, i8* }** %t2797
  %t2848 = call i64 @subst_bind({ i64, i8* }* %t2845, i64 %t2846, { i64, i8* }* %t2847)
  ret i1 1
else904:
  br label %merge905
merge905:
  %t2849 = load i64, i64* %t2834
  %t2850 = load { i64, i8* }*, { i64, i8* }** %t2797
  %t2851 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %t2852 = call i1 @occurs_check(i64 %t2849, { i64, i8* }* %t2850, { i64, i8* }* %t2851)
  br i1 %t2852, label %then909, label %else910
then909:
  ret i1 0
else910:
  br label %merge911
merge911:
  %t2853 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %t2854 = load i64, i64* %t2834
  %t2855 = load { i64, i8* }*, { i64, i8* }** %t2797
  %t2856 = call i64 @subst_bind({ i64, i8* }* %t2853, i64 %t2854, { i64, i8* }* %t2855)
  ret i1 1
else901:
  br label %merge902
merge902:
  %t2857 = load %nyx_string*, %nyx_string** %t2803
  %t2858 = getelementptr [6 x i8], [6 x i8]* @.str275, i32 0, i32 0
  %t2859 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str275.c, i8* %t2858, i64 5)
  %t2860 = call i1 @nyx_string_equals(%nyx_string* %t2857, %nyx_string* %t2859)
  br i1 %t2860, label %then912, label %else913
then912:
  %t2861 = load { i64, i8* }*, { i64, i8* }** %t2797
  %t2862 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %t2861, i64 1)
  store i64 %t2862, i64* %t2863
  %t2864 = load i64, i64* %t2863
  %t2865 = load { i64, i8* }*, { i64, i8* }** %t2793
  %t2866 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %t2867 = call i1 @occurs_check(i64 %t2864, { i64, i8* }* %t2865, { i64, i8* }* %t2866)
  br i1 %t2867, label %then915, label %else916
then915:
  ret i1 0
else916:
  br label %merge917
merge917:
  %t2868 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %t2869 = load i64, i64* %t2863
  %t2870 = load { i64, i8* }*, { i64, i8* }** %t2793
  %t2871 = call i64 @subst_bind({ i64, i8* }* %t2868, i64 %t2869, { i64, i8* }* %t2870)
  ret i1 1
else913:
  br label %merge914
merge914:
  %t2872 = load %nyx_string*, %nyx_string** %t2800
  %t2873 = load %nyx_string*, %nyx_string** %t2803
  %t2874 = call i1 @nyx_string_equals(%nyx_string* %t2872, %nyx_string* %t2873)
  br i1 %t2874, label %then918, label %else919
then918:
  store i1 true, i1* %t2875
  store i1 true, i1* %t2876
  store i1 true, i1* %t2877
  store i1 true, i1* %t2878
  %t2879 = load %nyx_string*, %nyx_string** %t2800
  %t2880 = getelementptr [8 x i8], [8 x i8]* @.str276, i32 0, i32 0
  %t2881 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str276.c, i8* %t2880, i64 7)
  %t2882 = call i1 @nyx_string_equals(%nyx_string* %t2879, %nyx_string* %t2881)
  br i1 %t2882, label %sc_or_end922, label %sc_or_rhs921
sc_or_rhs921:
  %t2883 = load %nyx_string*, %nyx_string** %t2800
  %t2884 = getelementptr [9 x i8], [9 x i8]* @.str277, i32 0, i32 0
  %t2885 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str277.c, i8* %t2884, i64 8)
  %t2886 = call i1 @nyx_string_equals(%nyx_string* %t2883, %nyx_string* %t2885)
  store i1 %t2886, i1* %t2878
  br label %sc_or_end922
sc_or_end922:
  %t2887 = load i1, i1* %t2878
  br i1 %t2887, label %sc_or_end924, label %sc_or_rhs923
sc_or_rhs923:
  %t2888 = load %nyx_string*, %nyx_string** %t2800
  %t2889 = getelementptr [6 x i8], [6 x i8]* @.str278, i32 0, i32 0
  %t2890 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str278.c, i8* %t2889, i64 5)
  %t2891 = call i1 @nyx_string_equals(%nyx_string* %t2888, %nyx_string* %t2890)
  store i1 %t2891, i1* %t2877
  br label %sc_or_end924
sc_or_end924:
  %t2892 = load i1, i1* %t2877
  br i1 %t2892, label %sc_or_end926, label %sc_or_rhs925
sc_or_rhs925:
  %t2893 = load %nyx_string*, %nyx_string** %t2800
  %t2894 = getelementptr [6 x i8], [6 x i8]* @.str279, i32 0, i32 0
  %t2895 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str279.c, i8* %t2894, i64 5)
  %t2896 = call i1 @nyx_string_equals(%nyx_string* %t2893, %nyx_string* %t2895)
  store i1 %t2896, i1* %t2876
  br label %sc_or_end926
sc_or_end926:
  %t2897 = load i1, i1* %t2876
  br i1 %t2897, label %sc_or_end928, label %sc_or_rhs927
sc_or_rhs927:
  %t2898 = load %nyx_string*, %nyx_string** %t2800
  %t2899 = getelementptr [9 x i8], [9 x i8]* @.str280, i32 0, i32 0
  %t2900 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str280.c, i8* %t2899, i64 8)
  %t2901 = call i1 @nyx_string_equals(%nyx_string* %t2898, %nyx_string* %t2900)
  store i1 %t2901, i1* %t2875
  br label %sc_or_end928
sc_or_end928:
  %t2902 = load i1, i1* %t2875
  br i1 %t2902, label %then929, label %else930
then929:
  %t2903 = load { i64, i8* }*, { i64, i8* }** %t2793
  %t2904 = call i64 @nyx_array_get({ i64, i8* }* %t2903, i64 1)
  %t2905 = inttoptr i64 %t2904 to { i64, i8* }*
  store { i64, i8* }* %t2905, { i64, i8* }** %t2906
  %t2907 = load { i64, i8* }*, { i64, i8* }** %t2797
  %t2908 = call i64 @nyx_array_get({ i64, i8* }* %t2907, i64 1)
  %t2909 = inttoptr i64 %t2908 to { i64, i8* }*
  store { i64, i8* }* %t2909, { i64, i8* }** %t2910
  %t2911 = load { i64, i8* }*, { i64, i8* }** %t2906
  %t2912 = load { i64, i8* }*, { i64, i8* }** %t2910
  %t2913 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %t2914 = call i1 @unify_var({ i64, i8* }* %t2911, { i64, i8* }* %t2912, { i64, i8* }* %t2913)
  ret i1 %t2914
else930:
  br label %merge931
merge931:
  store i1 true, i1* %t2915
  %t2916 = load %nyx_string*, %nyx_string** %t2800
  %t2917 = getelementptr [9 x i8], [9 x i8]* @.str281, i32 0, i32 0
  %t2918 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str281.c, i8* %t2917, i64 8)
  %t2919 = call i1 @nyx_string_equals(%nyx_string* %t2916, %nyx_string* %t2918)
  br i1 %t2919, label %sc_or_end933, label %sc_or_rhs932
sc_or_rhs932:
  %t2920 = load %nyx_string*, %nyx_string** %t2800
  %t2921 = getelementptr [6 x i8], [6 x i8]* @.str282, i32 0, i32 0
  %t2922 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str282.c, i8* %t2921, i64 5)
  %t2923 = call i1 @nyx_string_equals(%nyx_string* %t2920, %nyx_string* %t2922)
  store i1 %t2923, i1* %t2915
  br label %sc_or_end933
sc_or_end933:
  %t2924 = load i1, i1* %t2915
  br i1 %t2924, label %then934, label %else935
then934:
  %t2925 = load { i64, i8* }*, { i64, i8* }** %t2793
  %t2926 = call i64 @nyx_array_get({ i64, i8* }* %t2925, i64 1)
  %t2927 = inttoptr i64 %t2926 to { i64, i8* }*
  store { i64, i8* }* %t2927, { i64, i8* }** %t2928
  %t2929 = load { i64, i8* }*, { i64, i8* }** %t2797
  %t2930 = call i64 @nyx_array_get({ i64, i8* }* %t2929, i64 1)
  %t2931 = inttoptr i64 %t2930 to { i64, i8* }*
  store { i64, i8* }* %t2931, { i64, i8* }** %t2932
  %t2933 = load { i64, i8* }*, { i64, i8* }** %t2928
  %t2934 = load { i64, i8* }*, { i64, i8* }** %t2932
  %t2935 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %t2936 = call i1 @unify_var({ i64, i8* }* %t2933, { i64, i8* }* %t2934, { i64, i8* }* %t2935)
  %t2937 = xor i1 %t2936, true
  br i1 %t2937, label %then937, label %else938
then937:
  ret i1 0
else938:
  br label %merge939
merge939:
  %t2938 = load { i64, i8* }*, { i64, i8* }** %t2793
  %t2939 = call i64 @nyx_array_get({ i64, i8* }* %t2938, i64 2)
  %t2940 = inttoptr i64 %t2939 to { i64, i8* }*
  store { i64, i8* }* %t2940, { i64, i8* }** %t2941
  %t2942 = load { i64, i8* }*, { i64, i8* }** %t2797
  %t2943 = call i64 @nyx_array_get({ i64, i8* }* %t2942, i64 2)
  %t2944 = inttoptr i64 %t2943 to { i64, i8* }*
  store { i64, i8* }* %t2944, { i64, i8* }** %t2945
  %t2946 = load { i64, i8* }*, { i64, i8* }** %t2941
  %t2947 = load { i64, i8* }*, { i64, i8* }** %t2945
  %t2948 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %t2949 = call i1 @unify_var({ i64, i8* }* %t2946, { i64, i8* }* %t2947, { i64, i8* }* %t2948)
  ret i1 %t2949
else935:
  br label %merge936
merge936:
  %t2950 = load %nyx_string*, %nyx_string** %t2800
  %t2951 = getelementptr [5 x i8], [5 x i8]* @.str283, i32 0, i32 0
  %t2952 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str283.c, i8* %t2951, i64 4)
  %t2953 = call i1 @nyx_string_equals(%nyx_string* %t2950, %nyx_string* %t2952)
  br i1 %t2953, label %then940, label %else941
then940:
  %t2954 = load { i64, i8* }*, { i64, i8* }** %t2793
  %t2955 = call i64 @nyx_array_get({ i64, i8* }* %t2954, i64 1)
  %t2956 = inttoptr i64 %t2955 to { i64, i8* }*
  store { i64, i8* }* %t2956, { i64, i8* }** %t2957
  %t2958 = load { i64, i8* }*, { i64, i8* }** %t2797
  %t2959 = call i64 @nyx_array_get({ i64, i8* }* %t2958, i64 1)
  %t2960 = inttoptr i64 %t2959 to { i64, i8* }*
  store { i64, i8* }* %t2960, { i64, i8* }** %t2961
  %t2962 = load { i64, i8* }*, { i64, i8* }** %t2957
  %t2963 = call i64 @nyx_array_length({ i64, i8* }* %t2962)
  %t2964 = load { i64, i8* }*, { i64, i8* }** %t2961
  %t2965 = call i64 @nyx_array_length({ i64, i8* }* %t2964)
  %t2966 = icmp ne i64 %t2963, %t2965
  br i1 %t2966, label %then943, label %else944
then943:
  ret i1 0
else944:
  br label %merge945
merge945:
  store i64 0, i64* %t2967
  br label %while_cond946
while_cond946:
  %t2968 = load i64, i64* %t2967
  %t2969 = load { i64, i8* }*, { i64, i8* }** %t2957
  %t2970 = call i64 @nyx_array_length({ i64, i8* }* %t2969)
  %t2971 = icmp slt i64 %t2968, %t2970
  br i1 %t2971, label %while_body947, label %while_end948
while_body947:
  %t2972 = load { i64, i8* }*, { i64, i8* }** %t2957
  %t2973 = load i64, i64* %t2967
  %t2974 = call i64 @nyx_array_get({ i64, i8* }* %t2972, i64 %t2973)
  %t2975 = inttoptr i64 %t2974 to { i64, i8* }*
  store { i64, i8* }* %t2975, { i64, i8* }** %t2976
  %t2977 = load { i64, i8* }*, { i64, i8* }** %t2961
  %t2978 = load i64, i64* %t2967
  %t2979 = call i64 @nyx_array_get({ i64, i8* }* %t2977, i64 %t2978)
  %t2980 = inttoptr i64 %t2979 to { i64, i8* }*
  store { i64, i8* }* %t2980, { i64, i8* }** %t2981
  %t2982 = load { i64, i8* }*, { i64, i8* }** %t2976
  %t2983 = load { i64, i8* }*, { i64, i8* }** %t2981
  %t2984 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %t2985 = call i1 @unify_var({ i64, i8* }* %t2982, { i64, i8* }* %t2983, { i64, i8* }* %t2984)
  %t2986 = xor i1 %t2985, true
  br i1 %t2986, label %then949, label %else950
then949:
  ret i1 0
else950:
  br label %merge951
merge951:
  %t2987 = load i64, i64* %t2967
  %t2988 = add i64 %t2987, 1
  store i64 %t2988, i64* %t2967
  br label %while_cond946
while_end948:
  %t2989 = load { i64, i8* }*, { i64, i8* }** %t2793
  %t2990 = call i64 @nyx_array_get({ i64, i8* }* %t2989, i64 2)
  %t2991 = inttoptr i64 %t2990 to { i64, i8* }*
  store { i64, i8* }* %t2991, { i64, i8* }** %t2992
  %t2993 = load { i64, i8* }*, { i64, i8* }** %t2797
  %t2994 = call i64 @nyx_array_get({ i64, i8* }* %t2993, i64 2)
  %t2995 = inttoptr i64 %t2994 to { i64, i8* }*
  store { i64, i8* }* %t2995, { i64, i8* }** %t2996
  %t2997 = load { i64, i8* }*, { i64, i8* }** %t2992
  %t2998 = load { i64, i8* }*, { i64, i8* }** %t2996
  %t2999 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %t3000 = call i1 @unify_var({ i64, i8* }* %t2997, { i64, i8* }* %t2998, { i64, i8* }* %t2999)
  ret i1 %t3000
else941:
  br label %merge942
merge942:
  store i1 true, i1* %t3001
  %t3002 = load %nyx_string*, %nyx_string** %t2800
  %t3003 = getelementptr [9 x i8], [9 x i8]* @.str284, i32 0, i32 0
  %t3004 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str284.c, i8* %t3003, i64 8)
  %t3005 = call i1 @nyx_string_equals(%nyx_string* %t3002, %nyx_string* %t3004)
  br i1 %t3005, label %sc_or_end953, label %sc_or_rhs952
sc_or_rhs952:
  %t3006 = load %nyx_string*, %nyx_string** %t2800
  %t3007 = getelementptr [7 x i8], [7 x i8]* @.str285, i32 0, i32 0
  %t3008 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str285.c, i8* %t3007, i64 6)
  %t3009 = call i1 @nyx_string_equals(%nyx_string* %t3006, %nyx_string* %t3008)
  store i1 %t3009, i1* %t3001
  br label %sc_or_end953
sc_or_end953:
  %t3010 = load i1, i1* %t3001
  br i1 %t3010, label %then954, label %else955
then954:
  %t3011 = load { i64, i8* }*, { i64, i8* }** %t2793
  %t3012 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3011, i64 1, i64 2)
  %t3013 = inttoptr i64 %t3012 to %nyx_string*
  store %nyx_string* %t3013, %nyx_string** %t3014
  %t3015 = load { i64, i8* }*, { i64, i8* }** %t2797
  %t3016 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3015, i64 1, i64 2)
  %t3017 = inttoptr i64 %t3016 to %nyx_string*
  store %nyx_string* %t3017, %nyx_string** %t3018
  %t3019 = load %nyx_string*, %nyx_string** %t3014
  %t3020 = load %nyx_string*, %nyx_string** %t3018
  %t3021 = call i1 @nyx_string_equals(%nyx_string* %t3019, %nyx_string* %t3020)
  %t3022 = xor i1 %t3021, true
  br i1 %t3022, label %then957, label %else958
then957:
  ret i1 0
else958:
  br label %merge959
merge959:
  %t3023 = load { i64, i8* }*, { i64, i8* }** %t2793
  %t3024 = call i64 @nyx_array_get({ i64, i8* }* %t3023, i64 2)
  %t3025 = inttoptr i64 %t3024 to { i64, i8* }*
  store { i64, i8* }* %t3025, { i64, i8* }** %t3026
  %t3027 = load { i64, i8* }*, { i64, i8* }** %t2797
  %t3028 = call i64 @nyx_array_get({ i64, i8* }* %t3027, i64 2)
  %t3029 = inttoptr i64 %t3028 to { i64, i8* }*
  store { i64, i8* }* %t3029, { i64, i8* }** %t3030
  %t3031 = load { i64, i8* }*, { i64, i8* }** %t3026
  %t3032 = call i64 @nyx_array_length({ i64, i8* }* %t3031)
  %t3033 = icmp eq i64 %t3032, 0
  br i1 %t3033, label %then960, label %else961
then960:
  ret i1 1
else961:
  br label %merge962
merge962:
  %t3034 = load { i64, i8* }*, { i64, i8* }** %t3030
  %t3035 = call i64 @nyx_array_length({ i64, i8* }* %t3034)
  %t3036 = icmp eq i64 %t3035, 0
  br i1 %t3036, label %then963, label %else964
then963:
  ret i1 1
else964:
  br label %merge965
merge965:
  %t3037 = load { i64, i8* }*, { i64, i8* }** %t3026
  %t3038 = call i64 @nyx_array_length({ i64, i8* }* %t3037)
  %t3039 = load { i64, i8* }*, { i64, i8* }** %t3030
  %t3040 = call i64 @nyx_array_length({ i64, i8* }* %t3039)
  %t3041 = icmp ne i64 %t3038, %t3040
  br i1 %t3041, label %then966, label %else967
then966:
  ret i1 0
else967:
  br label %merge968
merge968:
  store i64 0, i64* %t3042
  br label %while_cond969
while_cond969:
  %t3043 = load i64, i64* %t3042
  %t3044 = load { i64, i8* }*, { i64, i8* }** %t3026
  %t3045 = call i64 @nyx_array_length({ i64, i8* }* %t3044)
  %t3046 = icmp slt i64 %t3043, %t3045
  br i1 %t3046, label %while_body970, label %while_end971
while_body970:
  %t3047 = load { i64, i8* }*, { i64, i8* }** %t3026
  %t3048 = load i64, i64* %t3042
  %t3049 = call i64 @nyx_array_get({ i64, i8* }* %t3047, i64 %t3048)
  %t3050 = inttoptr i64 %t3049 to { i64, i8* }*
  store { i64, i8* }* %t3050, { i64, i8* }** %t3051
  %t3052 = load { i64, i8* }*, { i64, i8* }** %t3030
  %t3053 = load i64, i64* %t3042
  %t3054 = call i64 @nyx_array_get({ i64, i8* }* %t3052, i64 %t3053)
  %t3055 = inttoptr i64 %t3054 to { i64, i8* }*
  store { i64, i8* }* %t3055, { i64, i8* }** %t3056
  %t3057 = load { i64, i8* }*, { i64, i8* }** %t3051
  %t3058 = load { i64, i8* }*, { i64, i8* }** %t3056
  %t3059 = load { i64, i8* }*, { i64, i8* }** %subst.ptr
  %t3060 = call i1 @unify_var({ i64, i8* }* %t3057, { i64, i8* }* %t3058, { i64, i8* }* %t3059)
  %t3061 = xor i1 %t3060, true
  br i1 %t3061, label %then972, label %else973
then972:
  ret i1 0
else973:
  br label %merge974
merge974:
  %t3062 = load i64, i64* %t3042
  %t3063 = add i64 %t3062, 1
  store i64 %t3063, i64* %t3042
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
  %t3064 = load { i64, i8* }*, { i64, i8* }** %t2793
  %t3065 = load { i64, i8* }*, { i64, i8* }** %t2797
  %t3066 = call i1 @ty_eq({ i64, i8* }* %t3064, { i64, i8* }* %t3065)
  ret i1 %t3066
}

define { i64, i8* }* @freshen_params(
{ i64, i8* }* %param_names.param, { i64, i8* }* %id_counter.param) {
  %param_names.ptr = alloca { i64, i8* }*
  %id_counter.ptr = alloca { i64, i8* }*
  %t3068 = alloca { i64, i8* }*
  %t3070 = alloca { i64, i8* }*
  %t3071 = alloca i64
  %t3080 = alloca %nyx_string*
  %t3083 = alloca i64
  store { i64, i8* }* %param_names.param, { i64, i8* }** %param_names.ptr
  store { i64, i8* }* %id_counter.param, { i64, i8* }** %id_counter.ptr
  %t3067 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t3067, { i64, i8* }** %t3068
  %t3069 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t3069, { i64, i8* }** %t3070
  store i64 0, i64* %t3071
  br label %while_cond975
while_cond975:
  %t3072 = load i64, i64* %t3071
  %t3073 = load { i64, i8* }*, { i64, i8* }** %param_names.ptr
  %t3074 = call i64 @nyx_array_length({ i64, i8* }* %t3073)
  %t3075 = icmp slt i64 %t3072, %t3074
  br i1 %t3075, label %while_body976, label %while_end977
while_body976:
  %t3076 = load { i64, i8* }*, { i64, i8* }** %param_names.ptr
  %t3077 = load i64, i64* %t3071
  %t3078 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3076, i64 %t3077, i64 2)
  %t3079 = inttoptr i64 %t3078 to %nyx_string*
  store %nyx_string* %t3079, %nyx_string** %t3080
  %t3081 = load { i64, i8* }*, { i64, i8* }** %id_counter.ptr
  %t3082 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %t3081, i64 0)
  store i64 %t3082, i64* %t3083
  %t3084 = load { i64, i8* }*, { i64, i8* }** %t3068
  %t3085 = load %nyx_string*, %nyx_string** %t3080
  %t3086 = ptrtoint %nyx_string* %t3085 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3084, i64 %t3086, i64 2)
  %t3087 = load { i64, i8* }*, { i64, i8* }** %t3070
  %t3088 = load i64, i64* %t3083
  %t3089 = call { i64, i8* }* @ty_var(i64 %t3088)
  %t3090 = ptrtoint { i64, i8* }* %t3089 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3087, i64 %t3090, i64 5)
  %t3091 = load { i64, i8* }*, { i64, i8* }** %id_counter.ptr
  %t3092 = load i64, i64* %t3083
  %t3093 = add i64 %t3092, 1
  call void @nyx_array_set({ i64, i8* }* %t3091, i64 0, i64 %t3093)
  %t3094 = load i64, i64* %t3071
  %t3095 = add i64 %t3094, 1
  store i64 %t3095, i64* %t3071
  br label %while_cond975
while_end977:
  %t3096 = call { i64, i8* }* @nyx_array_new_ptr()
  %t3097 = load { i64, i8* }*, { i64, i8* }** %t3068
  %t3098 = ptrtoint { i64, i8* }* %t3097 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3096, i64 %t3098, i64 5)
  %t3099 = load { i64, i8* }*, { i64, i8* }** %t3070
  %t3100 = ptrtoint { i64, i8* }* %t3099 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3096, i64 %t3100, i64 5)
  ret { i64, i8* }* %t3096
}

define { i64, i8* }* @known_primitive_names(
) {
  %t3101 = call { i64, i8* }* @nyx_array_new_ptr()
  %t3102 = getelementptr [4 x i8], [4 x i8]* @.str286, i32 0, i32 0
  %t3103 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str286.c, i8* %t3102, i64 3)
  %t3104 = ptrtoint %nyx_string* %t3103 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3101, i64 %t3104, i64 2)
  %t3105 = getelementptr [6 x i8], [6 x i8]* @.str287, i32 0, i32 0
  %t3106 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str287.c, i8* %t3105, i64 5)
  %t3107 = ptrtoint %nyx_string* %t3106 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3101, i64 %t3107, i64 2)
  %t3108 = getelementptr [5 x i8], [5 x i8]* @.str288, i32 0, i32 0
  %t3109 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str288.c, i8* %t3108, i64 4)
  %t3110 = ptrtoint %nyx_string* %t3109 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3101, i64 %t3110, i64 2)
  %t3111 = getelementptr [7 x i8], [7 x i8]* @.str289, i32 0, i32 0
  %t3112 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str289.c, i8* %t3111, i64 6)
  %t3113 = ptrtoint %nyx_string* %t3112 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3101, i64 %t3113, i64 2)
  %t3114 = getelementptr [5 x i8], [5 x i8]* @.str290, i32 0, i32 0
  %t3115 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str290.c, i8* %t3114, i64 4)
  %t3116 = ptrtoint %nyx_string* %t3115 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3101, i64 %t3116, i64 2)
  %t3117 = getelementptr [5 x i8], [5 x i8]* @.str291, i32 0, i32 0
  %t3118 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str291.c, i8* %t3117, i64 4)
  %t3119 = ptrtoint %nyx_string* %t3118 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3101, i64 %t3119, i64 2)
  %t3120 = getelementptr [3 x i8], [3 x i8]* @.str292, i32 0, i32 0
  %t3121 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str292.c, i8* %t3120, i64 2)
  %t3122 = ptrtoint %nyx_string* %t3121 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3101, i64 %t3122, i64 2)
  %t3123 = getelementptr [4 x i8], [4 x i8]* @.str293, i32 0, i32 0
  %t3124 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str293.c, i8* %t3123, i64 3)
  %t3125 = ptrtoint %nyx_string* %t3124 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3101, i64 %t3125, i64 2)
  %t3126 = getelementptr [4 x i8], [4 x i8]* @.str294, i32 0, i32 0
  %t3127 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str294.c, i8* %t3126, i64 3)
  %t3128 = ptrtoint %nyx_string* %t3127 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3101, i64 %t3128, i64 2)
  %t3129 = getelementptr [4 x i8], [4 x i8]* @.str295, i32 0, i32 0
  %t3130 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str295.c, i8* %t3129, i64 3)
  %t3131 = ptrtoint %nyx_string* %t3130 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3101, i64 %t3131, i64 2)
  %t3132 = getelementptr [3 x i8], [3 x i8]* @.str296, i32 0, i32 0
  %t3133 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str296.c, i8* %t3132, i64 2)
  %t3134 = ptrtoint %nyx_string* %t3133 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3101, i64 %t3134, i64 2)
  %t3135 = getelementptr [4 x i8], [4 x i8]* @.str297, i32 0, i32 0
  %t3136 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str297.c, i8* %t3135, i64 3)
  %t3137 = ptrtoint %nyx_string* %t3136 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3101, i64 %t3137, i64 2)
  %t3138 = getelementptr [4 x i8], [4 x i8]* @.str298, i32 0, i32 0
  %t3139 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str298.c, i8* %t3138, i64 3)
  %t3140 = ptrtoint %nyx_string* %t3139 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3101, i64 %t3140, i64 2)
  %t3141 = getelementptr [4 x i8], [4 x i8]* @.str299, i32 0, i32 0
  %t3142 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str299.c, i8* %t3141, i64 3)
  %t3143 = ptrtoint %nyx_string* %t3142 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3101, i64 %t3143, i64 2)
  %t3144 = getelementptr [4 x i8], [4 x i8]* @.str300, i32 0, i32 0
  %t3145 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str300.c, i8* %t3144, i64 3)
  %t3146 = ptrtoint %nyx_string* %t3145 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3101, i64 %t3146, i64 2)
  %t3147 = getelementptr [6 x i8], [6 x i8]* @.str301, i32 0, i32 0
  %t3148 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str301.c, i8* %t3147, i64 5)
  %t3149 = ptrtoint %nyx_string* %t3148 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3101, i64 %t3149, i64 2)
  %t3150 = getelementptr [6 x i8], [6 x i8]* @.str302, i32 0, i32 0
  %t3151 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str302.c, i8* %t3150, i64 5)
  %t3152 = ptrtoint %nyx_string* %t3151 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3101, i64 %t3152, i64 2)
  %t3153 = getelementptr [7 x i8], [7 x i8]* @.str303, i32 0, i32 0
  %t3154 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str303.c, i8* %t3153, i64 6)
  %t3155 = ptrtoint %nyx_string* %t3154 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3101, i64 %t3155, i64 2)
  %t3156 = getelementptr [7 x i8], [7 x i8]* @.str304, i32 0, i32 0
  %t3157 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str304.c, i8* %t3156, i64 6)
  %t3158 = ptrtoint %nyx_string* %t3157 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3101, i64 %t3158, i64 2)
  %t3159 = getelementptr [4 x i8], [4 x i8]* @.str305, i32 0, i32 0
  %t3160 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str305.c, i8* %t3159, i64 3)
  %t3161 = ptrtoint %nyx_string* %t3160 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3101, i64 %t3161, i64 2)
  %t3162 = getelementptr [14 x i8], [14 x i8]* @.str306, i32 0, i32 0
  %t3163 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str306.c, i8* %t3162, i64 13)
  %t3164 = ptrtoint %nyx_string* %t3163 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3101, i64 %t3164, i64 2)
  %t3165 = getelementptr [9 x i8], [9 x i8]* @.str307, i32 0, i32 0
  %t3166 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str307.c, i8* %t3165, i64 8)
  %t3167 = ptrtoint %nyx_string* %t3166 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3101, i64 %t3167, i64 2)
  %t3168 = getelementptr [8 x i8], [8 x i8]* @.str308, i32 0, i32 0
  %t3169 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str308.c, i8* %t3168, i64 7)
  %t3170 = ptrtoint %nyx_string* %t3169 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3101, i64 %t3170, i64 2)
  %t3171 = getelementptr [5 x i8], [5 x i8]* @.str309, i32 0, i32 0
  %t3172 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str309.c, i8* %t3171, i64 4)
  %t3173 = ptrtoint %nyx_string* %t3172 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3101, i64 %t3173, i64 2)
  ret { i64, i8* }* %t3101
}


attributes #0 = { returns_twice }

