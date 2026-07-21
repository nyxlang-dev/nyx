source_filename = "script.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [9 x i8] c"NYX_LANG\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [3 x i8] c"es\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [1 x i8] c"\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [3 x i8] c" (\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [7 x i8] c"línea\00"
@.str4.c = internal global %nyx_string* null
@.str5 = private unnamed_addr constant [5 x i8] c"line\00"
@.str5.c = internal global %nyx_string* null
@.str6 = private unnamed_addr constant [2 x i8] c" \00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [2 x i8] c")\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [1 x i8] c"\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [6 x i8] c"error\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [3 x i8] c": \00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [9 x i8] c"error en\00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [9 x i8] c"error in\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [3 x i8] c" '\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [2 x i8] c"'\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [3 x i8] c": \00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [8 x i8] c"NYX0000\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [1 x i8] c"\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [1 x i8] c"\00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [1 x i8] c"\00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [3 x i8] c"\5c\22\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [3 x i8] c"\5c\5c\00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [3 x i8] c"\5cn\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [3 x i8] c"\5cr\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [3 x i8] c"\5ct\00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [10 x i8] c"{\22code\22:\22\00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [20 x i8] c",\22severity\22:\22error\22\00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [20 x i8] c",\22phase\22:\22semantic\22\00"
@.str28.c = internal global %nyx_string* null
@.str29 = private unnamed_addr constant [9 x i8] c",\22line\22:\00"
@.str29.c = internal global %nyx_string* null
@.str30 = private unnamed_addr constant [11 x i8] c",\22column\22:\00"
@.str30.c = internal global %nyx_string* null
@.str31 = private unnamed_addr constant [1 x i8] c"\00"
@.str31.c = internal global %nyx_string* null
@.str32 = private unnamed_addr constant [14 x i8] c",\22function\22:\22\00"
@.str32.c = internal global %nyx_string* null
@.str33 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str33.c = internal global %nyx_string* null
@.str34 = private unnamed_addr constant [13 x i8] c",\22message\22:\22\00"
@.str34.c = internal global %nyx_string* null
@.str35 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str35.c = internal global %nyx_string* null
@.str36 = private unnamed_addr constant [1 x i8] c"\00"
@.str36.c = internal global %nyx_string* null
@.str37 = private unnamed_addr constant [16 x i8] c",\22suggestion\22:\22\00"
@.str37.c = internal global %nyx_string* null
@.str38 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str38.c = internal global %nyx_string* null
@.str39 = private unnamed_addr constant [2 x i8] c"}\00"
@.str39.c = internal global %nyx_string* null
@.str40 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str40.c = internal global %nyx_string* null
@.str41 = private unnamed_addr constant [12 x i8] c"map_literal\00"
@.str41.c = internal global %nyx_string* null
@.str42 = private unnamed_addr constant [5 x i8] c"call\00"
@.str42.c = internal global %nyx_string* null
@.str43 = private unnamed_addr constant [13 x i8] c"generic_call\00"
@.str43.c = internal global %nyx_string* null
@.str44 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str44.c = internal global %nyx_string* null
@.str45 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str45.c = internal global %nyx_string* null
@.str46 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str46.c = internal global %nyx_string* null
@.str47 = private unnamed_addr constant [12 x i8] c"method_call\00"
@.str47.c = internal global %nyx_string* null
@.str48 = private unnamed_addr constant [9 x i8] c"TyStruct\00"
@.str48.c = internal global %nyx_string* null
@.str49 = private unnamed_addr constant [7 x i8] c"TyEnum\00"
@.str49.c = internal global %nyx_string* null
@.str50 = private unnamed_addr constant [7 x i8] c"length\00"
@.str50.c = internal global %nyx_string* null
@.str51 = private unnamed_addr constant [12 x i8] c"byte_length\00"
@.str51.c = internal global %nyx_string* null
@.str52 = private unnamed_addr constant [12 x i8] c"char_length\00"
@.str52.c = internal global %nyx_string* null
@.str53 = private unnamed_addr constant [5 x i8] c"size\00"
@.str53.c = internal global %nyx_string* null
@.str54 = private unnamed_addr constant [6 x i8] c"count\00"
@.str54.c = internal global %nyx_string* null
@.str55 = private unnamed_addr constant [8 x i8] c"indexOf\00"
@.str55.c = internal global %nyx_string* null
@.str56 = private unnamed_addr constant [7 x i8] c"charAt\00"
@.str56.c = internal global %nyx_string* null
@.str57 = private unnamed_addr constant [8 x i8] c"is_some\00"
@.str57.c = internal global %nyx_string* null
@.str58 = private unnamed_addr constant [8 x i8] c"is_none\00"
@.str58.c = internal global %nyx_string* null
@.str59 = private unnamed_addr constant [6 x i8] c"is_ok\00"
@.str59.c = internal global %nyx_string* null
@.str60 = private unnamed_addr constant [7 x i8] c"is_err\00"
@.str60.c = internal global %nyx_string* null
@.str61 = private unnamed_addr constant [9 x i8] c"contains\00"
@.str61.c = internal global %nyx_string* null
@.str62 = private unnamed_addr constant [4 x i8] c"has\00"
@.str62.c = internal global %nyx_string* null
@.str63 = private unnamed_addr constant [11 x i8] c"startsWith\00"
@.str63.c = internal global %nyx_string* null
@.str64 = private unnamed_addr constant [9 x i8] c"endsWith\00"
@.str64.c = internal global %nyx_string* null
@.str65 = private unnamed_addr constant [12 x i8] c"starts_with\00"
@.str65.c = internal global %nyx_string* null
@.str66 = private unnamed_addr constant [10 x i8] c"ends_with\00"
@.str66.c = internal global %nyx_string* null
@.str67 = private unnamed_addr constant [4 x i8] c"any\00"
@.str67.c = internal global %nyx_string* null
@.str68 = private unnamed_addr constant [4 x i8] c"all\00"
@.str68.c = internal global %nyx_string* null
@.str69 = private unnamed_addr constant [8 x i8] c"toUpper\00"
@.str69.c = internal global %nyx_string* null
@.str70 = private unnamed_addr constant [8 x i8] c"toLower\00"
@.str70.c = internal global %nyx_string* null
@.str71 = private unnamed_addr constant [9 x i8] c"to_upper\00"
@.str71.c = internal global %nyx_string* null
@.str72 = private unnamed_addr constant [9 x i8] c"to_lower\00"
@.str72.c = internal global %nyx_string* null
@.str73 = private unnamed_addr constant [5 x i8] c"trim\00"
@.str73.c = internal global %nyx_string* null
@.str74 = private unnamed_addr constant [10 x i8] c"substring\00"
@.str74.c = internal global %nyx_string* null
@.str75 = private unnamed_addr constant [8 x i8] c"replace\00"
@.str75.c = internal global %nyx_string* null
@.str76 = private unnamed_addr constant [7 x i8] c"repeat\00"
@.str76.c = internal global %nyx_string* null
@.str77 = private unnamed_addr constant [10 x i8] c"to_string\00"
@.str77.c = internal global %nyx_string* null
@.str78 = private unnamed_addr constant [5 x i8] c"join\00"
@.str78.c = internal global %nyx_string* null
@.str79 = private unnamed_addr constant [10 x i8] c"debug_str\00"
@.str79.c = internal global %nyx_string* null
@.str80 = private unnamed_addr constant [5 x i8] c"unop\00"
@.str80.c = internal global %nyx_string* null
@.str81 = private unnamed_addr constant [4 x i8] c"NOT\00"
@.str81.c = internal global %nyx_string* null
@.str82 = private unnamed_addr constant [6 x i8] c"TILDE\00"
@.str82.c = internal global %nyx_string* null
@.str83 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str83.c = internal global %nyx_string* null
@.str84 = private unnamed_addr constant [12 x i8] c"struct_init\00"
@.str84.c = internal global %nyx_string* null
@.str85 = private unnamed_addr constant [13 x i8] c"field_access\00"
@.str85.c = internal global %nyx_string* null
@.str86 = private unnamed_addr constant [9 x i8] c"TyStruct\00"
@.str86.c = internal global %nyx_string* null
@.str87 = private unnamed_addr constant [6 x i8] c"index\00"
@.str87.c = internal global %nyx_string* null
@.str88 = private unnamed_addr constant [8 x i8] c"TyArray\00"
@.str88.c = internal global %nyx_string* null
@.str89 = private unnamed_addr constant [6 x i8] c"TyMap\00"
@.str89.c = internal global %nyx_string* null
@.str90 = private unnamed_addr constant [9 x i8] c"TyString\00"
@.str90.c = internal global %nyx_string* null
@.str91 = private unnamed_addr constant [1 x i8] c"\00"
@.str91.c = internal global %nyx_string* null
@.str92 = private unnamed_addr constant [9 x i8] c"TyStruct\00"
@.str92.c = internal global %nyx_string* null
@.str93 = private unnamed_addr constant [8 x i8] c"NYX1001\00"
@.str93.c = internal global %nyx_string* null
@.str94 = private unnamed_addr constant [19 x i8] c"tipo desconocido '\00"
@.str94.c = internal global %nyx_string* null
@.str95 = private unnamed_addr constant [2 x i8] c"'\00"
@.str95.c = internal global %nyx_string* null
@.str96 = private unnamed_addr constant [15 x i8] c"unknown type '\00"
@.str96.c = internal global %nyx_string* null
@.str97 = private unnamed_addr constant [2 x i8] c"'\00"
@.str97.c = internal global %nyx_string* null
@.str98 = private unnamed_addr constant [2 x i8] c":\00"
@.str98.c = internal global %nyx_string* null
@.str99 = private unnamed_addr constant [2 x i8] c"+\00"
@.str99.c = internal global %nyx_string* null
@.str100 = private unnamed_addr constant [2 x i8] c":\00"
@.str100.c = internal global %nyx_string* null
@.str101 = private unnamed_addr constant [2 x i8] c"+\00"
@.str101.c = internal global %nyx_string* null
@.str102 = private unnamed_addr constant [9 x i8] c"TyStruct\00"
@.str102.c = internal global %nyx_string* null
@.str103 = private unnamed_addr constant [9 x i8] c"TyStruct\00"
@.str103.c = internal global %nyx_string* null
@.str104 = private unnamed_addr constant [8 x i8] c"TyArray\00"
@.str104.c = internal global %nyx_string* null
@.str105 = private unnamed_addr constant [8 x i8] c"TyArray\00"
@.str105.c = internal global %nyx_string* null
@.str106 = private unnamed_addr constant [9 x i8] c"TyOption\00"
@.str106.c = internal global %nyx_string* null
@.str107 = private unnamed_addr constant [9 x i8] c"TyOption\00"
@.str107.c = internal global %nyx_string* null
@.str108 = private unnamed_addr constant [6 x i8] c"TyPtr\00"
@.str108.c = internal global %nyx_string* null
@.str109 = private unnamed_addr constant [6 x i8] c"TyPtr\00"
@.str109.c = internal global %nyx_string* null
@.str110 = private unnamed_addr constant [6 x i8] c"TyRef\00"
@.str110.c = internal global %nyx_string* null
@.str111 = private unnamed_addr constant [1 x i8] c"\00"
@.str111.c = internal global %nyx_string* null
@.str112 = private unnamed_addr constant [6 x i8] c"TyRef\00"
@.str112.c = internal global %nyx_string* null
@.str113 = private unnamed_addr constant [9 x i8] c"TyRefMut\00"
@.str113.c = internal global %nyx_string* null
@.str114 = private unnamed_addr constant [1 x i8] c"\00"
@.str114.c = internal global %nyx_string* null
@.str115 = private unnamed_addr constant [9 x i8] c"TyRefMut\00"
@.str115.c = internal global %nyx_string* null
@.str116 = private unnamed_addr constant [9 x i8] c"TyResult\00"
@.str116.c = internal global %nyx_string* null
@.str117 = private unnamed_addr constant [9 x i8] c"TyResult\00"
@.str117.c = internal global %nyx_string* null
@.str118 = private unnamed_addr constant [6 x i8] c"TyMap\00"
@.str118.c = internal global %nyx_string* null
@.str119 = private unnamed_addr constant [6 x i8] c"TyMap\00"
@.str119.c = internal global %nyx_string* null
@.str120 = private unnamed_addr constant [5 x i8] c"TyFn\00"
@.str120.c = internal global %nyx_string* null
@.str121 = private unnamed_addr constant [5 x i8] c"TyFn\00"
@.str121.c = internal global %nyx_string* null
@.str122 = private unnamed_addr constant [2 x i8] c"<\00"
@.str122.c = internal global %nyx_string* null
@.str123 = private unnamed_addr constant [6 x i8] c"TyDyn\00"
@.str123.c = internal global %nyx_string* null
@.str124 = private unnamed_addr constant [9 x i8] c"TyStruct\00"
@.str124.c = internal global %nyx_string* null
@.str125 = private unnamed_addr constant [7 x i8] c"TyEnum\00"
@.str125.c = internal global %nyx_string* null
@.str126 = private unnamed_addr constant [8 x i8] c"NYX1012\00"
@.str126.c = internal global %nyx_string* null
@.str127 = private unnamed_addr constant [2 x i8] c"'\00"
@.str127.c = internal global %nyx_string* null
@.str128 = private unnamed_addr constant [22 x i8] c"' no implementa 'dyn \00"
@.str128.c = internal global %nyx_string* null
@.str129 = private unnamed_addr constant [17 x i8] c"' requerido en '\00"
@.str129.c = internal global %nyx_string* null
@.str130 = private unnamed_addr constant [2 x i8] c"'\00"
@.str130.c = internal global %nyx_string* null
@.str131 = private unnamed_addr constant [2 x i8] c"'\00"
@.str131.c = internal global %nyx_string* null
@.str132 = private unnamed_addr constant [27 x i8] c"' does not implement 'dyn \00"
@.str132.c = internal global %nyx_string* null
@.str133 = private unnamed_addr constant [16 x i8] c"' required by '\00"
@.str133.c = internal global %nyx_string* null
@.str134 = private unnamed_addr constant [2 x i8] c"'\00"
@.str134.c = internal global %nyx_string* null
@.str135 = private unnamed_addr constant [1 x i8] c"\00"
@.str135.c = internal global %nyx_string* null
@.str136 = private unnamed_addr constant [5 x i8] c"self\00"
@.str136.c = internal global %nyx_string* null
@.str137 = private unnamed_addr constant [6 x i8] c"&self\00"
@.str137.c = internal global %nyx_string* null
@.str138 = private unnamed_addr constant [10 x i8] c"&mut self\00"
@.str138.c = internal global %nyx_string* null
@.str139 = private unnamed_addr constant [1 x i8] c"\00"
@.str139.c = internal global %nyx_string* null
@.str140 = private unnamed_addr constant [4 x i8] c"...\00"
@.str140.c = internal global %nyx_string* null
@.str141 = private unnamed_addr constant [1 x i8] c"\00"
@.str141.c = internal global %nyx_string* null
@.str142 = private unnamed_addr constant [4 x i8] c"...\00"
@.str142.c = internal global %nyx_string* null
@.str143 = private unnamed_addr constant [1 x i8] c"\00"
@.str143.c = internal global %nyx_string* null
@.str144 = private unnamed_addr constant [6 x i8] c"print\00"
@.str144.c = internal global %nyx_string* null
@.str145 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str145.c = internal global %nyx_string* null
@.str146 = private unnamed_addr constant [14 x i8] c"int_to_string\00"
@.str146.c = internal global %nyx_string* null
@.str147 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str147.c = internal global %nyx_string* null
@.str148 = private unnamed_addr constant [16 x i8] c"float_to_string\00"
@.str148.c = internal global %nyx_string* null
@.str149 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str149.c = internal global %nyx_string* null
@.str150 = private unnamed_addr constant [15 x i8] c"char_to_string\00"
@.str150.c = internal global %nyx_string* null
@.str151 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str151.c = internal global %nyx_string* null
@.str152 = private unnamed_addr constant [13 x i8] c"int_to_float\00"
@.str152.c = internal global %nyx_string* null
@.str153 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str153.c = internal global %nyx_string* null
@.str154 = private unnamed_addr constant [13 x i8] c"float_to_int\00"
@.str154.c = internal global %nyx_string* null
@.str155 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str155.c = internal global %nyx_string* null
@.str156 = private unnamed_addr constant [10 x i8] c"read_file\00"
@.str156.c = internal global %nyx_string* null
@.str157 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str157.c = internal global %nyx_string* null
@.str158 = private unnamed_addr constant [11 x i8] c"write_file\00"
@.str158.c = internal global %nyx_string* null
@.str159 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str159.c = internal global %nyx_string* null
@.str160 = private unnamed_addr constant [12 x i8] c"file_exists\00"
@.str160.c = internal global %nyx_string* null
@.str161 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str161.c = internal global %nyx_string* null
@.str162 = private unnamed_addr constant [10 x i8] c"file_open\00"
@.str162.c = internal global %nyx_string* null
@.str163 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str163.c = internal global %nyx_string* null
@.str164 = private unnamed_addr constant [11 x i8] c"file_close\00"
@.str164.c = internal global %nyx_string* null
@.str165 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str165.c = internal global %nyx_string* null
@.str166 = private unnamed_addr constant [15 x i8] c"file_read_line\00"
@.str166.c = internal global %nyx_string* null
@.str167 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str167.c = internal global %nyx_string* null
@.str168 = private unnamed_addr constant [16 x i8] c"file_read_bytes\00"
@.str168.c = internal global %nyx_string* null
@.str169 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str169.c = internal global %nyx_string* null
@.str170 = private unnamed_addr constant [18 x i8] c"file_write_string\00"
@.str170.c = internal global %nyx_string* null
@.str171 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str171.c = internal global %nyx_string* null
@.str172 = private unnamed_addr constant [17 x i8] c"file_write_bytes\00"
@.str172.c = internal global %nyx_string* null
@.str173 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str173.c = internal global %nyx_string* null
@.str174 = private unnamed_addr constant [10 x i8] c"file_seek\00"
@.str174.c = internal global %nyx_string* null
@.str175 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str175.c = internal global %nyx_string* null
@.str176 = private unnamed_addr constant [10 x i8] c"file_tell\00"
@.str176.c = internal global %nyx_string* null
@.str177 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str177.c = internal global %nyx_string* null
@.str178 = private unnamed_addr constant [11 x i8] c"file_flush\00"
@.str178.c = internal global %nyx_string* null
@.str179 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str179.c = internal global %nyx_string* null
@.str180 = private unnamed_addr constant [6 x i8] c"mkdir\00"
@.str180.c = internal global %nyx_string* null
@.str181 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str181.c = internal global %nyx_string* null
@.str182 = private unnamed_addr constant [8 x i8] c"readdir\00"
@.str182.c = internal global %nyx_string* null
@.str183 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str183.c = internal global %nyx_string* null
@.str184 = private unnamed_addr constant [12 x i8] c"remove_file\00"
@.str184.c = internal global %nyx_string* null
@.str185 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str185.c = internal global %nyx_string* null
@.str186 = private unnamed_addr constant [12 x i8] c"rename_file\00"
@.str186.c = internal global %nyx_string* null
@.str187 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str187.c = internal global %nyx_string* null
@.str188 = private unnamed_addr constant [12 x i8] c"crc32_bytes\00"
@.str188.c = internal global %nyx_string* null
@.str189 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str189.c = internal global %nyx_string* null
@.str190 = private unnamed_addr constant [18 x i8] c"string_from_bytes\00"
@.str190.c = internal global %nyx_string* null
@.str191 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str191.c = internal global %nyx_string* null
@.str192 = private unnamed_addr constant [9 x i8] c"c_fn_ptr\00"
@.str192.c = internal global %nyx_string* null
@.str193 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str193.c = internal global %nyx_string* null
@.str194 = private unnamed_addr constant [17 x i8] c"string_from_cstr\00"
@.str194.c = internal global %nyx_string* null
@.str195 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str195.c = internal global %nyx_string* null
@.str196 = private unnamed_addr constant [23 x i8] c"setup_shutdown_handler\00"
@.str196.c = internal global %nyx_string* null
@.str197 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str197.c = internal global %nyx_string* null
@.str198 = private unnamed_addr constant [11 x i8] c"tcp_listen\00"
@.str198.c = internal global %nyx_string* null
@.str199 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str199.c = internal global %nyx_string* null
@.str200 = private unnamed_addr constant [11 x i8] c"tcp_accept\00"
@.str200.c = internal global %nyx_string* null
@.str201 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str201.c = internal global %nyx_string* null
@.str202 = private unnamed_addr constant [12 x i8] c"tcp_connect\00"
@.str202.c = internal global %nyx_string* null
@.str203 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str203.c = internal global %nyx_string* null
@.str204 = private unnamed_addr constant [16 x i8] c"tcp_set_timeout\00"
@.str204.c = internal global %nyx_string* null
@.str205 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str205.c = internal global %nyx_string* null
@.str206 = private unnamed_addr constant [9 x i8] c"tcp_read\00"
@.str206.c = internal global %nyx_string* null
@.str207 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str207.c = internal global %nyx_string* null
@.str208 = private unnamed_addr constant [17 x i8] c"tcp_read_partial\00"
@.str208.c = internal global %nyx_string* null
@.str209 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str209.c = internal global %nyx_string* null
@.str210 = private unnamed_addr constant [15 x i8] c"tcp_read_exact\00"
@.str210.c = internal global %nyx_string* null
@.str211 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str211.c = internal global %nyx_string* null
@.str212 = private unnamed_addr constant [14 x i8] c"tcp_read_line\00"
@.str212.c = internal global %nyx_string* null
@.str213 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str213.c = internal global %nyx_string* null
@.str214 = private unnamed_addr constant [10 x i8] c"tcp_write\00"
@.str214.c = internal global %nyx_string* null
@.str215 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str215.c = internal global %nyx_string* null
@.str216 = private unnamed_addr constant [10 x i8] c"tcp_close\00"
@.str216.c = internal global %nyx_string* null
@.str217 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str217.c = internal global %nyx_string* null
@.str218 = private unnamed_addr constant [13 x i8] c"tcp_shutdown\00"
@.str218.c = internal global %nyx_string* null
@.str219 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str219.c = internal global %nyx_string* null
@.str220 = private unnamed_addr constant [24 x i8] c"http_parse_request_fast\00"
@.str220.c = internal global %nyx_string* null
@.str221 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str221.c = internal global %nyx_string* null
@.str222 = private unnamed_addr constant [9 x i8] c"udp_bind\00"
@.str222.c = internal global %nyx_string* null
@.str223 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str223.c = internal global %nyx_string* null
@.str224 = private unnamed_addr constant [11 x i8] c"udp_sendto\00"
@.str224.c = internal global %nyx_string* null
@.str225 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str225.c = internal global %nyx_string* null
@.str226 = private unnamed_addr constant [13 x i8] c"udp_recvfrom\00"
@.str226.c = internal global %nyx_string* null
@.str227 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str227.c = internal global %nyx_string* null
@.str228 = private unnamed_addr constant [8 x i8] c"resolve\00"
@.str228.c = internal global %nyx_string* null
@.str229 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str229.c = internal global %nyx_string* null
@.str230 = private unnamed_addr constant [16 x i8] c"resp_write_bulk\00"
@.str230.c = internal global %nyx_string* null
@.str231 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str231.c = internal global %nyx_string* null
@.str232 = private unnamed_addr constant [23 x i8] c"resp_read_command_fast\00"
@.str232.c = internal global %nyx_string* null
@.str233 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str233.c = internal global %nyx_string* null
@.str234 = private unnamed_addr constant [12 x i8] c"getpeername\00"
@.str234.c = internal global %nyx_string* null
@.str235 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str235.c = internal global %nyx_string* null
@.str236 = private unnamed_addr constant [11 x i8] c"__go_spawn\00"
@.str236.c = internal global %nyx_string* null
@.str237 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str237.c = internal global %nyx_string* null
@.str238 = private unnamed_addr constant [13 x i8] c"thread_spawn\00"
@.str238.c = internal global %nyx_string* null
@.str239 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str239.c = internal global %nyx_string* null
@.str240 = private unnamed_addr constant [12 x i8] c"thread_join\00"
@.str240.c = internal global %nyx_string* null
@.str241 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str241.c = internal global %nyx_string* null
@.str242 = private unnamed_addr constant [11 x i8] c"spawn_task\00"
@.str242.c = internal global %nyx_string* null
@.str243 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str243.c = internal global %nyx_string* null
@.str244 = private unnamed_addr constant [11 x i8] c"task_await\00"
@.str244.c = internal global %nyx_string* null
@.str245 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str245.c = internal global %nyx_string* null
@.str246 = private unnamed_addr constant [12 x i8] c"task_cancel\00"
@.str246.c = internal global %nyx_string* null
@.str247 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str247.c = internal global %nyx_string* null
@.str248 = private unnamed_addr constant [10 x i8] c"task_race\00"
@.str248.c = internal global %nyx_string* null
@.str249 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str249.c = internal global %nyx_string* null
@.str250 = private unnamed_addr constant [10 x i8] c"mutex_new\00"
@.str250.c = internal global %nyx_string* null
@.str251 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str251.c = internal global %nyx_string* null
@.str252 = private unnamed_addr constant [11 x i8] c"mutex_lock\00"
@.str252.c = internal global %nyx_string* null
@.str253 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str253.c = internal global %nyx_string* null
@.str254 = private unnamed_addr constant [13 x i8] c"mutex_unlock\00"
@.str254.c = internal global %nyx_string* null
@.str255 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str255.c = internal global %nyx_string* null
@.str256 = private unnamed_addr constant [14 x i8] c"mutex_destroy\00"
@.str256.c = internal global %nyx_string* null
@.str257 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str257.c = internal global %nyx_string* null
@.str258 = private unnamed_addr constant [12 x i8] c"condvar_new\00"
@.str258.c = internal global %nyx_string* null
@.str259 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str259.c = internal global %nyx_string* null
@.str260 = private unnamed_addr constant [13 x i8] c"condvar_wait\00"
@.str260.c = internal global %nyx_string* null
@.str261 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str261.c = internal global %nyx_string* null
@.str262 = private unnamed_addr constant [15 x i8] c"condvar_signal\00"
@.str262.c = internal global %nyx_string* null
@.str263 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str263.c = internal global %nyx_string* null
@.str264 = private unnamed_addr constant [18 x i8] c"condvar_broadcast\00"
@.str264.c = internal global %nyx_string* null
@.str265 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str265.c = internal global %nyx_string* null
@.str266 = private unnamed_addr constant [18 x i8] c"condvar_timedwait\00"
@.str266.c = internal global %nyx_string* null
@.str267 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str267.c = internal global %nyx_string* null
@.str268 = private unnamed_addr constant [11 x i8] c"rwlock_new\00"
@.str268.c = internal global %nyx_string* null
@.str269 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str269.c = internal global %nyx_string* null
@.str270 = private unnamed_addr constant [14 x i8] c"rwlock_rdlock\00"
@.str270.c = internal global %nyx_string* null
@.str271 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str271.c = internal global %nyx_string* null
@.str272 = private unnamed_addr constant [14 x i8] c"rwlock_wrlock\00"
@.str272.c = internal global %nyx_string* null
@.str273 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str273.c = internal global %nyx_string* null
@.str274 = private unnamed_addr constant [17 x i8] c"rwlock_tryrdlock\00"
@.str274.c = internal global %nyx_string* null
@.str275 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str275.c = internal global %nyx_string* null
@.str276 = private unnamed_addr constant [17 x i8] c"rwlock_trywrlock\00"
@.str276.c = internal global %nyx_string* null
@.str277 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str277.c = internal global %nyx_string* null
@.str278 = private unnamed_addr constant [14 x i8] c"rwlock_unlock\00"
@.str278.c = internal global %nyx_string* null
@.str279 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str279.c = internal global %nyx_string* null
@.str280 = private unnamed_addr constant [15 x i8] c"rwlock_destroy\00"
@.str280.c = internal global %nyx_string* null
@.str281 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str281.c = internal global %nyx_string* null
@.str282 = private unnamed_addr constant [12 x i8] c"channel_new\00"
@.str282.c = internal global %nyx_string* null
@.str283 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str283.c = internal global %nyx_string* null
@.str284 = private unnamed_addr constant [13 x i8] c"channel_send\00"
@.str284.c = internal global %nyx_string* null
@.str285 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str285.c = internal global %nyx_string* null
@.str286 = private unnamed_addr constant [13 x i8] c"channel_recv\00"
@.str286.c = internal global %nyx_string* null
@.str287 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str287.c = internal global %nyx_string* null
@.str288 = private unnamed_addr constant [16 x i8] c"channel_destroy\00"
@.str288.c = internal global %nyx_string* null
@.str289 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str289.c = internal global %nyx_string* null
@.str290 = private unnamed_addr constant [5 x i8] c"exec\00"
@.str290.c = internal global %nyx_string* null
@.str291 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str291.c = internal global %nyx_string* null
@.str292 = private unnamed_addr constant [7 x i8] c"getenv\00"
@.str292.c = internal global %nyx_string* null
@.str293 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str293.c = internal global %nyx_string* null
@.str294 = private unnamed_addr constant [15 x i8] c"getenv_default\00"
@.str294.c = internal global %nyx_string* null
@.str295 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str295.c = internal global %nyx_string* null
@.str296 = private unnamed_addr constant [7 x i8] c"setenv\00"
@.str296.c = internal global %nyx_string* null
@.str297 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str297.c = internal global %nyx_string* null
@.str298 = private unnamed_addr constant [5 x i8] c"exit\00"
@.str298.c = internal global %nyx_string* null
@.str299 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str299.c = internal global %nyx_string* null
@.str300 = private unnamed_addr constant [9 x i8] c"get_args\00"
@.str300.c = internal global %nyx_string* null
@.str301 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str301.c = internal global %nyx_string* null
@.str302 = private unnamed_addr constant [5 x i8] c"fork\00"
@.str302.c = internal global %nyx_string* null
@.str303 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str303.c = internal global %nyx_string* null
@.str304 = private unnamed_addr constant [7 x i8] c"execvp\00"
@.str304.c = internal global %nyx_string* null
@.str305 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str305.c = internal global %nyx_string* null
@.str306 = private unnamed_addr constant [8 x i8] c"waitpid\00"
@.str306.c = internal global %nyx_string* null
@.str307 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str307.c = internal global %nyx_string* null
@.str308 = private unnamed_addr constant [5 x i8] c"dup2\00"
@.str308.c = internal global %nyx_string* null
@.str309 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str309.c = internal global %nyx_string* null
@.str310 = private unnamed_addr constant [6 x i8] c"chdir\00"
@.str310.c = internal global %nyx_string* null
@.str311 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str311.c = internal global %nyx_string* null
@.str312 = private unnamed_addr constant [7 x i8] c"getcwd\00"
@.str312.c = internal global %nyx_string* null
@.str313 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str313.c = internal global %nyx_string* null
@.str314 = private unnamed_addr constant [5 x i8] c"stat\00"
@.str314.c = internal global %nyx_string* null
@.str315 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str315.c = internal global %nyx_string* null
@.str316 = private unnamed_addr constant [7 x i8] c"isatty\00"
@.str316.c = internal global %nyx_string* null
@.str317 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str317.c = internal global %nyx_string* null
@.str318 = private unnamed_addr constant [9 x i8] c"close_fd\00"
@.str318.c = internal global %nyx_string* null
@.str319 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str319.c = internal global %nyx_string* null
@.str320 = private unnamed_addr constant [9 x i8] c"pipe_new\00"
@.str320.c = internal global %nyx_string* null
@.str321 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str321.c = internal global %nyx_string* null
@.str322 = private unnamed_addr constant [7 x i8] c"getpid\00"
@.str322.c = internal global %nyx_string* null
@.str323 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str323.c = internal global %nyx_string* null
@.str324 = private unnamed_addr constant [13 x i8] c"kill_process\00"
@.str324.c = internal global %nyx_string* null
@.str325 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str325.c = internal global %nyx_string* null
@.str326 = private unnamed_addr constant [8 x i8] c"open_fd\00"
@.str326.c = internal global %nyx_string* null
@.str327 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str327.c = internal global %nyx_string* null
@.str328 = private unnamed_addr constant [6 x i8] c"fsync\00"
@.str328.c = internal global %nyx_string* null
@.str329 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str329.c = internal global %nyx_string* null
@.str330 = private unnamed_addr constant [10 x i8] c"fdatasync\00"
@.str330.c = internal global %nyx_string* null
@.str331 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str331.c = internal global %nyx_string* null
@.str332 = private unnamed_addr constant [6 x i8] c"sleep\00"
@.str332.c = internal global %nyx_string* null
@.str333 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str333.c = internal global %nyx_string* null
@.str334 = private unnamed_addr constant [9 x i8] c"go_sleep\00"
@.str334.c = internal global %nyx_string* null
@.str335 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str335.c = internal global %nyx_string* null
@.str336 = private unnamed_addr constant [5 x i8] c"time\00"
@.str336.c = internal global %nyx_string* null
@.str337 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str337.c = internal global %nyx_string* null
@.str338 = private unnamed_addr constant [8 x i8] c"time_ms\00"
@.str338.c = internal global %nyx_string* null
@.str339 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str339.c = internal global %nyx_string* null
@.str340 = private unnamed_addr constant [8 x i8] c"time_us\00"
@.str340.c = internal global %nyx_string* null
@.str341 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str341.c = internal global %nyx_string* null
@.str342 = private unnamed_addr constant [9 x i8] c"math_log\00"
@.str342.c = internal global %nyx_string* null
@.str343 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str343.c = internal global %nyx_string* null
@.str344 = private unnamed_addr constant [10 x i8] c"math_log2\00"
@.str344.c = internal global %nyx_string* null
@.str345 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str345.c = internal global %nyx_string* null
@.str346 = private unnamed_addr constant [11 x i8] c"math_log10\00"
@.str346.c = internal global %nyx_string* null
@.str347 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str347.c = internal global %nyx_string* null
@.str348 = private unnamed_addr constant [9 x i8] c"math_exp\00"
@.str348.c = internal global %nyx_string* null
@.str349 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str349.c = internal global %nyx_string* null
@.str350 = private unnamed_addr constant [9 x i8] c"math_sin\00"
@.str350.c = internal global %nyx_string* null
@.str351 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str351.c = internal global %nyx_string* null
@.str352 = private unnamed_addr constant [9 x i8] c"math_cos\00"
@.str352.c = internal global %nyx_string* null
@.str353 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str353.c = internal global %nyx_string* null
@.str354 = private unnamed_addr constant [9 x i8] c"math_tan\00"
@.str354.c = internal global %nyx_string* null
@.str355 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str355.c = internal global %nyx_string* null
@.str356 = private unnamed_addr constant [10 x i8] c"math_asin\00"
@.str356.c = internal global %nyx_string* null
@.str357 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str357.c = internal global %nyx_string* null
@.str358 = private unnamed_addr constant [10 x i8] c"math_acos\00"
@.str358.c = internal global %nyx_string* null
@.str359 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str359.c = internal global %nyx_string* null
@.str360 = private unnamed_addr constant [10 x i8] c"math_atan\00"
@.str360.c = internal global %nyx_string* null
@.str361 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str361.c = internal global %nyx_string* null
@.str362 = private unnamed_addr constant [11 x i8] c"math_atan2\00"
@.str362.c = internal global %nyx_string* null
@.str363 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str363.c = internal global %nyx_string* null
@.str364 = private unnamed_addr constant [10 x i8] c"math_sqrt\00"
@.str364.c = internal global %nyx_string* null
@.str365 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str365.c = internal global %nyx_string* null
@.str366 = private unnamed_addr constant [10 x i8] c"math_ceil\00"
@.str366.c = internal global %nyx_string* null
@.str367 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str367.c = internal global %nyx_string* null
@.str368 = private unnamed_addr constant [11 x i8] c"math_floor\00"
@.str368.c = internal global %nyx_string* null
@.str369 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str369.c = internal global %nyx_string* null
@.str370 = private unnamed_addr constant [11 x i8] c"math_round\00"
@.str370.c = internal global %nyx_string* null
@.str371 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str371.c = internal global %nyx_string* null
@.str372 = private unnamed_addr constant [10 x i8] c"math_fabs\00"
@.str372.c = internal global %nyx_string* null
@.str373 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str373.c = internal global %nyx_string* null
@.str374 = private unnamed_addr constant [10 x i8] c"math_fmod\00"
@.str374.c = internal global %nyx_string* null
@.str375 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str375.c = internal global %nyx_string* null
@.str376 = private unnamed_addr constant [14 x i8] c"signal_handle\00"
@.str376.c = internal global %nyx_string* null
@.str377 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str377.c = internal global %nyx_string* null
@.str378 = private unnamed_addr constant [13 x i8] c"signal_reset\00"
@.str378.c = internal global %nyx_string* null
@.str379 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str379.c = internal global %nyx_string* null
@.str380 = private unnamed_addr constant [14 x i8] c"signal_ignore\00"
@.str380.c = internal global %nyx_string* null
@.str381 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str381.c = internal global %nyx_string* null
@.str382 = private unnamed_addr constant [12 x i8] c"regex_match\00"
@.str382.c = internal global %nyx_string* null
@.str383 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str383.c = internal global %nyx_string* null
@.str384 = private unnamed_addr constant [15 x i8] c"regex_is_match\00"
@.str384.c = internal global %nyx_string* null
@.str385 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str385.c = internal global %nyx_string* null
@.str386 = private unnamed_addr constant [14 x i8] c"regex_replace\00"
@.str386.c = internal global %nyx_string* null
@.str387 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str387.c = internal global %nyx_string* null
@.str388 = private unnamed_addr constant [18 x i8] c"regex_replace_all\00"
@.str388.c = internal global %nyx_string* null
@.str389 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str389.c = internal global %nyx_string* null
@.str390 = private unnamed_addr constant [13 x i8] c"datetime_now\00"
@.str390.c = internal global %nyx_string* null
@.str391 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str391.c = internal global %nyx_string* null
@.str392 = private unnamed_addr constant [16 x i8] c"datetime_format\00"
@.str392.c = internal global %nyx_string* null
@.str393 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str393.c = internal global %nyx_string* null
@.str394 = private unnamed_addr constant [11 x i8] c"time_epoch\00"
@.str394.c = internal global %nyx_string* null
@.str395 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str395.c = internal global %nyx_string* null
@.str396 = private unnamed_addr constant [20 x i8] c"datetime_from_epoch\00"
@.str396.c = internal global %nyx_string* null
@.str397 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str397.c = internal global %nyx_string* null
@.str398 = private unnamed_addr constant [15 x i8] c"datetime_parse\00"
@.str398.c = internal global %nyx_string* null
@.str399 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str399.c = internal global %nyx_string* null
@.str400 = private unnamed_addr constant [14 x i8] c"datetime_year\00"
@.str400.c = internal global %nyx_string* null
@.str401 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str401.c = internal global %nyx_string* null
@.str402 = private unnamed_addr constant [15 x i8] c"datetime_month\00"
@.str402.c = internal global %nyx_string* null
@.str403 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str403.c = internal global %nyx_string* null
@.str404 = private unnamed_addr constant [13 x i8] c"datetime_day\00"
@.str404.c = internal global %nyx_string* null
@.str405 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str405.c = internal global %nyx_string* null
@.str406 = private unnamed_addr constant [14 x i8] c"datetime_hour\00"
@.str406.c = internal global %nyx_string* null
@.str407 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str407.c = internal global %nyx_string* null
@.str408 = private unnamed_addr constant [16 x i8] c"datetime_minute\00"
@.str408.c = internal global %nyx_string* null
@.str409 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str409.c = internal global %nyx_string* null
@.str410 = private unnamed_addr constant [16 x i8] c"datetime_second\00"
@.str410.c = internal global %nyx_string* null
@.str411 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str411.c = internal global %nyx_string* null
@.str412 = private unnamed_addr constant [17 x i8] c"datetime_weekday\00"
@.str412.c = internal global %nyx_string* null
@.str413 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str413.c = internal global %nyx_string* null
@.str414 = private unnamed_addr constant [7 x i8] c"sha256\00"
@.str414.c = internal global %nyx_string* null
@.str415 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str415.c = internal global %nyx_string* null
@.str416 = private unnamed_addr constant [4 x i8] c"md5\00"
@.str416.c = internal global %nyx_string* null
@.str417 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str417.c = internal global %nyx_string* null
@.str418 = private unnamed_addr constant [12 x i8] c"hmac_sha256\00"
@.str418.c = internal global %nyx_string* null
@.str419 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str419.c = internal global %nyx_string* null
@.str420 = private unnamed_addr constant [10 x i8] c"https_get\00"
@.str420.c = internal global %nyx_string* null
@.str421 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str421.c = internal global %nyx_string* null
@.str422 = private unnamed_addr constant [11 x i8] c"https_post\00"
@.str422.c = internal global %nyx_string* null
@.str423 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str423.c = internal global %nyx_string* null
@.str424 = private unnamed_addr constant [12 x i8] c"tls_connect\00"
@.str424.c = internal global %nyx_string* null
@.str425 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str425.c = internal global %nyx_string* null
@.str426 = private unnamed_addr constant [9 x i8] c"tls_read\00"
@.str426.c = internal global %nyx_string* null
@.str427 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str427.c = internal global %nyx_string* null
@.str428 = private unnamed_addr constant [17 x i8] c"tls_read_partial\00"
@.str428.c = internal global %nyx_string* null
@.str429 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str429.c = internal global %nyx_string* null
@.str430 = private unnamed_addr constant [18 x i8] c"tls_wait_readable\00"
@.str430.c = internal global %nyx_string* null
@.str431 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str431.c = internal global %nyx_string* null
@.str432 = private unnamed_addr constant [18 x i8] c"tls_read_nonblock\00"
@.str432.c = internal global %nyx_string* null
@.str433 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str433.c = internal global %nyx_string* null
@.str434 = private unnamed_addr constant [10 x i8] c"tls_write\00"
@.str434.c = internal global %nyx_string* null
@.str435 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str435.c = internal global %nyx_string* null
@.str436 = private unnamed_addr constant [10 x i8] c"tls_close\00"
@.str436.c = internal global %nyx_string* null
@.str437 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str437.c = internal global %nyx_string* null
@.str438 = private unnamed_addr constant [16 x i8] c"tls_server_init\00"
@.str438.c = internal global %nyx_string* null
@.str439 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str439.c = internal global %nyx_string* null
@.str440 = private unnamed_addr constant [20 x i8] c"tls_server_add_cert\00"
@.str440.c = internal global %nyx_string* null
@.str441 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str441.c = internal global %nyx_string* null
@.str442 = private unnamed_addr constant [11 x i8] c"tls_accept\00"
@.str442.c = internal global %nyx_string* null
@.str443 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str443.c = internal global %nyx_string* null
@.str444 = private unnamed_addr constant [14 x i8] c"tls_read_line\00"
@.str444.c = internal global %nyx_string* null
@.str445 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str445.c = internal global %nyx_string* null
@.str446 = private unnamed_addr constant [15 x i8] c"tls_write_conn\00"
@.str446.c = internal global %nyx_string* null
@.str447 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str447.c = internal global %nyx_string* null
@.str448 = private unnamed_addr constant [15 x i8] c"tls_close_conn\00"
@.str448.c = internal global %nyx_string* null
@.str449 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str449.c = internal global %nyx_string* null
@.str450 = private unnamed_addr constant [10 x i8] c"read_line\00"
@.str450.c = internal global %nyx_string* null
@.str451 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str451.c = internal global %nyx_string* null
@.str452 = private unnamed_addr constant [17 x i8] c"print_no_newline\00"
@.str452.c = internal global %nyx_string* null
@.str453 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str453.c = internal global %nyx_string* null
@.str454 = private unnamed_addr constant [14 x i8] c"string_to_int\00"
@.str454.c = internal global %nyx_string* null
@.str455 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str455.c = internal global %nyx_string* null
@.str456 = private unnamed_addr constant [16 x i8] c"string_to_float\00"
@.str456.c = internal global %nyx_string* null
@.str457 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str457.c = internal global %nyx_string* null
@.str458 = private unnamed_addr constant [17 x i8] c"string_to_int_or\00"
@.str458.c = internal global %nyx_string* null
@.str459 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str459.c = internal global %nyx_string* null
@.str460 = private unnamed_addr constant [19 x i8] c"string_to_float_or\00"
@.str460.c = internal global %nyx_string* null
@.str461 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str461.c = internal global %nyx_string* null
@.str462 = private unnamed_addr constant [16 x i8] c"str_byte_length\00"
@.str462.c = internal global %nyx_string* null
@.str463 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str463.c = internal global %nyx_string* null
@.str464 = private unnamed_addr constant [5 x i8] c"free\00"
@.str464.c = internal global %nyx_string* null
@.str465 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str465.c = internal global %nyx_string* null
@.str466 = private unnamed_addr constant [6 x i8] c"alloc\00"
@.str466.c = internal global %nyx_string* null
@.str467 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str467.c = internal global %nyx_string* null
@.str468 = private unnamed_addr constant [6 x i8] c"panic\00"
@.str468.c = internal global %nyx_string* null
@.str469 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str469.c = internal global %nyx_string* null
@.str470 = private unnamed_addr constant [4 x i8] c"run\00"
@.str470.c = internal global %nyx_string* null
@.str471 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str471.c = internal global %nyx_string* null
@.str472 = private unnamed_addr constant [7 x i8] c"format\00"
@.str472.c = internal global %nyx_string* null
@.str473 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str473.c = internal global %nyx_string* null
@.str474 = private unnamed_addr constant [14 x i8] c"volatile_load\00"
@.str474.c = internal global %nyx_string* null
@.str475 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str475.c = internal global %nyx_string* null
@.str476 = private unnamed_addr constant [15 x i8] c"volatile_store\00"
@.str476.c = internal global %nyx_string* null
@.str477 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str477.c = internal global %nyx_string* null
@.str478 = private unnamed_addr constant [11 x i8] c"atomic_add\00"
@.str478.c = internal global %nyx_string* null
@.str479 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str479.c = internal global %nyx_string* null
@.str480 = private unnamed_addr constant [11 x i8] c"atomic_sub\00"
@.str480.c = internal global %nyx_string* null
@.str481 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str481.c = internal global %nyx_string* null
@.str482 = private unnamed_addr constant [11 x i8] c"atomic_cas\00"
@.str482.c = internal global %nyx_string* null
@.str483 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str483.c = internal global %nyx_string* null
@.str484 = private unnamed_addr constant [15 x i8] c"raw_mode_enter\00"
@.str484.c = internal global %nyx_string* null
@.str485 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str485.c = internal global %nyx_string* null
@.str486 = private unnamed_addr constant [14 x i8] c"raw_mode_exit\00"
@.str486.c = internal global %nyx_string* null
@.str487 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str487.c = internal global %nyx_string* null
@.str488 = private unnamed_addr constant [10 x i8] c"read_byte\00"
@.str488.c = internal global %nyx_string* null
@.str489 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str489.c = internal global %nyx_string* null
@.str490 = private unnamed_addr constant [18 x i8] c"read_byte_timeout\00"
@.str490.c = internal global %nyx_string* null
@.str491 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str491.c = internal global %nyx_string* null
@.str492 = private unnamed_addr constant [10 x i8] c"term_cols\00"
@.str492.c = internal global %nyx_string* null
@.str493 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str493.c = internal global %nyx_string* null
@.str494 = private unnamed_addr constant [10 x i8] c"term_rows\00"
@.str494.c = internal global %nyx_string* null
@.str495 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str495.c = internal global %nyx_string* null
@.str496 = private unnamed_addr constant [11 x i8] c"term_write\00"
@.str496.c = internal global %nyx_string* null
@.str497 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str497.c = internal global %nyx_string* null
@.str498 = private unnamed_addr constant [11 x i8] c"term_flush\00"
@.str498.c = internal global %nyx_string* null
@.str499 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str499.c = internal global %nyx_string* null
@.str500 = private unnamed_addr constant [4 x i8] c"chr\00"
@.str500.c = internal global %nyx_string* null
@.str501 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str501.c = internal global %nyx_string* null
@.str502 = private unnamed_addr constant [4 x i8] c"Map\00"
@.str502.c = internal global %nyx_string* null
@.str503 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str503.c = internal global %nyx_string* null
@.str504 = private unnamed_addr constant [14 x i8] c"StringBuilder\00"
@.str504.c = internal global %nyx_string* null
@.str505 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str505.c = internal global %nyx_string* null
@.str506 = private unnamed_addr constant [11 x i8] c"type_alias\00"
@.str506.c = internal global %nyx_string* null
@.str507 = private unnamed_addr constant [4 x i8] c"let\00"
@.str507.c = internal global %nyx_string* null
@.str508 = private unnamed_addr constant [4 x i8] c"var\00"
@.str508.c = internal global %nyx_string* null
@.str509 = private unnamed_addr constant [9 x i8] c"function\00"
@.str509.c = internal global %nyx_string* null
@.str510 = private unnamed_addr constant [4 x i8] c"...\00"
@.str510.c = internal global %nyx_string* null
@.str511 = private unnamed_addr constant [3 x i8] c"fn\00"
@.str511.c = internal global %nyx_string* null
@.str512 = private unnamed_addr constant [1 x i8] c"\00"
@.str512.c = internal global %nyx_string* null
@.str513 = private unnamed_addr constant [5 x i8] c"void\00"
@.str513.c = internal global %nyx_string* null
@.str514 = private unnamed_addr constant [9 x i8] c"async_fn\00"
@.str514.c = internal global %nyx_string* null
@.str515 = private unnamed_addr constant [6 x i8] c"float\00"
@.str515.c = internal global %nyx_string* null
@.str516 = private unnamed_addr constant [4 x i8] c"f32\00"
@.str516.c = internal global %nyx_string* null
@.str517 = private unnamed_addr constant [7 x i8] c"double\00"
@.str517.c = internal global %nyx_string* null
@.str518 = private unnamed_addr constant [8 x i8] c"NYX1021\00"
@.str518.c = internal global %nyx_string* null
@.str519 = private unnamed_addr constant [2 x i8] c"'\00"
@.str519.c = internal global %nyx_string* null
@.str520 = private unnamed_addr constant [4 x i8] c"': \00"
@.str520.c = internal global %nyx_string* null
@.str521 = private unnamed_addr constant [45 x i8] c"async fn con retorno float aún no soportado\00"
@.str521.c = internal global %nyx_string* null
@.str522 = private unnamed_addr constant [50 x i8] c"async fn with float return type not yet supported\00"
@.str522.c = internal global %nyx_string* null
@.str523 = private unnamed_addr constant [7 x i8] c"struct\00"
@.str523.c = internal global %nyx_string* null
@.str524 = private unnamed_addr constant [8 x i8] c"derive(\00"
@.str524.c = internal global %nyx_string* null
@.str525 = private unnamed_addr constant [8 x i8] c"Default\00"
@.str525.c = internal global %nyx_string* null
@.str526 = private unnamed_addr constant [9 x i8] c"_default\00"
@.str526.c = internal global %nyx_string* null
@.str527 = private unnamed_addr constant [6 x i8] c"Clone\00"
@.str527.c = internal global %nyx_string* null
@.str528 = private unnamed_addr constant [7 x i8] c"_clone\00"
@.str528.c = internal global %nyx_string* null
@.str529 = private unnamed_addr constant [10 x i8] c"PartialEq\00"
@.str529.c = internal global %nyx_string* null
@.str530 = private unnamed_addr constant [4 x i8] c"_eq\00"
@.str530.c = internal global %nyx_string* null
@.str531 = private unnamed_addr constant [6 x i8] c"Debug\00"
@.str531.c = internal global %nyx_string* null
@.str532 = private unnamed_addr constant [11 x i8] c"_debug_str\00"
@.str532.c = internal global %nyx_string* null
@.str533 = private unnamed_addr constant [8 x i8] c"Display\00"
@.str533.c = internal global %nyx_string* null
@.str534 = private unnamed_addr constant [11 x i8] c"_to_string\00"
@.str534.c = internal global %nyx_string* null
@.str535 = private unnamed_addr constant [9 x i8] c"enum_def\00"
@.str535.c = internal global %nyx_string* null
@.str536 = private unnamed_addr constant [5 x i8] c"enum\00"
@.str536.c = internal global %nyx_string* null
@.str537 = private unnamed_addr constant [7 x i8] c"export\00"
@.str537.c = internal global %nyx_string* null
@.str538 = private unnamed_addr constant [7 x i8] c"import\00"
@.str538.c = internal global %nyx_string* null
@.str539 = private unnamed_addr constant [10 x i8] c"extern_fn\00"
@.str539.c = internal global %nyx_string* null
@.str540 = private unnamed_addr constant [12 x i8] c"module_decl\00"
@.str540.c = internal global %nyx_string* null
@.str541 = private unnamed_addr constant [7 x i8] c"module\00"
@.str541.c = internal global %nyx_string* null
@.str542 = private unnamed_addr constant [14 x i8] c"import_module\00"
@.str542.c = internal global %nyx_string* null
@.str543 = private unnamed_addr constant [5 x i8] c"impl\00"
@.str543.c = internal global %nyx_string* null
@.str544 = private unnamed_addr constant [2 x i8] c"_\00"
@.str544.c = internal global %nyx_string* null
@.str545 = private unnamed_addr constant [10 x i8] c"trait_def\00"
@.str545.c = internal global %nyx_string* null
@.str546 = private unnamed_addr constant [6 x i8] c"trait\00"
@.str546.c = internal global %nyx_string* null
@.str547 = private unnamed_addr constant [15 x i8] c"__assoc_type__\00"
@.str547.c = internal global %nyx_string* null
@.str548 = private unnamed_addr constant [11 x i8] c"impl_trait\00"
@.str548.c = internal global %nyx_string* null
@.str549 = private unnamed_addr constant [1 x i8] c"\00"
@.str549.c = internal global %nyx_string* null
@.str550 = private unnamed_addr constant [8 x i8] c"NYX1002\00"
@.str550.c = internal global %nyx_string* null
@.str551 = private unnamed_addr constant [2 x i8] c"'\00"
@.str551.c = internal global %nyx_string* null
@.str552 = private unnamed_addr constant [3 x i8] c"' \00"
@.str552.c = internal global %nyx_string* null
@.str553 = private unnamed_addr constant [13 x i8] c"no declarado\00"
@.str553.c = internal global %nyx_string* null
@.str554 = private unnamed_addr constant [13 x i8] c"not declared\00"
@.str554.c = internal global %nyx_string* null
@.str555 = private unnamed_addr constant [8 x i8] c"AND_AND\00"
@.str555.c = internal global %nyx_string* null
@.str556 = private unnamed_addr constant [6 x i8] c"OR_OR\00"
@.str556.c = internal global %nyx_string* null
@.str557 = private unnamed_addr constant [4 x i8] c"AND\00"
@.str557.c = internal global %nyx_string* null
@.str558 = private unnamed_addr constant [3 x i8] c"OR\00"
@.str558.c = internal global %nyx_string* null
@.str559 = private unnamed_addr constant [7 x i8] c"TyBool\00"
@.str559.c = internal global %nyx_string* null
@.str560 = private unnamed_addr constant [8 x i8] c"NYX1010\00"
@.str560.c = internal global %nyx_string* null
@.str561 = private unnamed_addr constant [24 x i8] c"operando izquierdo de '\00"
@.str561.c = internal global %nyx_string* null
@.str562 = private unnamed_addr constant [28 x i8] c"' debe ser bool, se obtuvo \00"
@.str562.c = internal global %nyx_string* null
@.str563 = private unnamed_addr constant [18 x i8] c"left operand of '\00"
@.str563.c = internal global %nyx_string* null
@.str564 = private unnamed_addr constant [21 x i8] c"' must be bool, got \00"
@.str564.c = internal global %nyx_string* null
@.str565 = private unnamed_addr constant [1 x i8] c"\00"
@.str565.c = internal global %nyx_string* null
@.str566 = private unnamed_addr constant [7 x i8] c"TyBool\00"
@.str566.c = internal global %nyx_string* null
@.str567 = private unnamed_addr constant [8 x i8] c"NYX1010\00"
@.str567.c = internal global %nyx_string* null
@.str568 = private unnamed_addr constant [22 x i8] c"operando derecho de '\00"
@.str568.c = internal global %nyx_string* null
@.str569 = private unnamed_addr constant [28 x i8] c"' debe ser bool, se obtuvo \00"
@.str569.c = internal global %nyx_string* null
@.str570 = private unnamed_addr constant [19 x i8] c"right operand of '\00"
@.str570.c = internal global %nyx_string* null
@.str571 = private unnamed_addr constant [21 x i8] c"' must be bool, got \00"
@.str571.c = internal global %nyx_string* null
@.str572 = private unnamed_addr constant [1 x i8] c"\00"
@.str572.c = internal global %nyx_string* null
@.str573 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str573.c = internal global %nyx_string* null
@.str574 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str574.c = internal global %nyx_string* null
@.str575 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str575.c = internal global %nyx_string* null
@.str576 = private unnamed_addr constant [6 x i8] c"SLASH\00"
@.str576.c = internal global %nyx_string* null
@.str577 = private unnamed_addr constant [8 x i8] c"PERCENT\00"
@.str577.c = internal global %nyx_string* null
@.str578 = private unnamed_addr constant [1 x i8] c"\00"
@.str578.c = internal global %nyx_string* null
@.str579 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str579.c = internal global %nyx_string* null
@.str580 = private unnamed_addr constant [4 x i8] c"Add\00"
@.str580.c = internal global %nyx_string* null
@.str581 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str581.c = internal global %nyx_string* null
@.str582 = private unnamed_addr constant [4 x i8] c"Sub\00"
@.str582.c = internal global %nyx_string* null
@.str583 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str583.c = internal global %nyx_string* null
@.str584 = private unnamed_addr constant [4 x i8] c"Mul\00"
@.str584.c = internal global %nyx_string* null
@.str585 = private unnamed_addr constant [6 x i8] c"SLASH\00"
@.str585.c = internal global %nyx_string* null
@.str586 = private unnamed_addr constant [4 x i8] c"Div\00"
@.str586.c = internal global %nyx_string* null
@.str587 = private unnamed_addr constant [8 x i8] c"PERCENT\00"
@.str587.c = internal global %nyx_string* null
@.str588 = private unnamed_addr constant [4 x i8] c"Rem\00"
@.str588.c = internal global %nyx_string* null
@.str589 = private unnamed_addr constant [9 x i8] c"TyStruct\00"
@.str589.c = internal global %nyx_string* null
@.str590 = private unnamed_addr constant [7 x i8] c"TyEnum\00"
@.str590.c = internal global %nyx_string* null
@.str591 = private unnamed_addr constant [8 x i8] c"NYX1011\00"
@.str591.c = internal global %nyx_string* null
@.str592 = private unnamed_addr constant [27 x i8] c"el operando izquierdo de '\00"
@.str592.c = internal global %nyx_string* null
@.str593 = private unnamed_addr constant [21 x i8] c"' debe implementar '\00"
@.str593.c = internal global %nyx_string* null
@.str594 = private unnamed_addr constant [10 x i8] c"', pero '\00"
@.str594.c = internal global %nyx_string* null
@.str595 = private unnamed_addr constant [13 x i8] c"' no lo hace\00"
@.str595.c = internal global %nyx_string* null
@.str596 = private unnamed_addr constant [18 x i8] c"left operand of '\00"
@.str596.c = internal global %nyx_string* null
@.str597 = private unnamed_addr constant [19 x i8] c"' must implement '\00"
@.str597.c = internal global %nyx_string* null
@.str598 = private unnamed_addr constant [9 x i8] c"', but '\00"
@.str598.c = internal global %nyx_string* null
@.str599 = private unnamed_addr constant [11 x i8] c"' does not\00"
@.str599.c = internal global %nyx_string* null
@.str600 = private unnamed_addr constant [1 x i8] c"\00"
@.str600.c = internal global %nyx_string* null
@.str601 = private unnamed_addr constant [9 x i8] c"TyStruct\00"
@.str601.c = internal global %nyx_string* null
@.str602 = private unnamed_addr constant [7 x i8] c"TyEnum\00"
@.str602.c = internal global %nyx_string* null
@.str603 = private unnamed_addr constant [8 x i8] c"NYX1011\00"
@.str603.c = internal global %nyx_string* null
@.str604 = private unnamed_addr constant [25 x i8] c"el operando derecho de '\00"
@.str604.c = internal global %nyx_string* null
@.str605 = private unnamed_addr constant [21 x i8] c"' debe implementar '\00"
@.str605.c = internal global %nyx_string* null
@.str606 = private unnamed_addr constant [10 x i8] c"', pero '\00"
@.str606.c = internal global %nyx_string* null
@.str607 = private unnamed_addr constant [13 x i8] c"' no lo hace\00"
@.str607.c = internal global %nyx_string* null
@.str608 = private unnamed_addr constant [19 x i8] c"right operand of '\00"
@.str608.c = internal global %nyx_string* null
@.str609 = private unnamed_addr constant [19 x i8] c"' must implement '\00"
@.str609.c = internal global %nyx_string* null
@.str610 = private unnamed_addr constant [9 x i8] c"', but '\00"
@.str610.c = internal global %nyx_string* null
@.str611 = private unnamed_addr constant [11 x i8] c"' does not\00"
@.str611.c = internal global %nyx_string* null
@.str612 = private unnamed_addr constant [1 x i8] c"\00"
@.str612.c = internal global %nyx_string* null
@.str613 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str613.c = internal global %nyx_string* null
@.str614 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str614.c = internal global %nyx_string* null
@.str615 = private unnamed_addr constant [11 x i8] c"LESS_EQUAL\00"
@.str615.c = internal global %nyx_string* null
@.str616 = private unnamed_addr constant [14 x i8] c"GREATER_EQUAL\00"
@.str616.c = internal global %nyx_string* null
@.str617 = private unnamed_addr constant [9 x i8] c"TyStruct\00"
@.str617.c = internal global %nyx_string* null
@.str618 = private unnamed_addr constant [7 x i8] c"TyEnum\00"
@.str618.c = internal global %nyx_string* null
@.str619 = private unnamed_addr constant [11 x i8] c"PartialOrd\00"
@.str619.c = internal global %nyx_string* null
@.str620 = private unnamed_addr constant [8 x i8] c"NYX1011\00"
@.str620.c = internal global %nyx_string* null
@.str621 = private unnamed_addr constant [27 x i8] c"el operando izquierdo de '\00"
@.str621.c = internal global %nyx_string* null
@.str622 = private unnamed_addr constant [40 x i8] c"' debe implementar 'PartialOrd', pero '\00"
@.str622.c = internal global %nyx_string* null
@.str623 = private unnamed_addr constant [13 x i8] c"' no lo hace\00"
@.str623.c = internal global %nyx_string* null
@.str624 = private unnamed_addr constant [18 x i8] c"left operand of '\00"
@.str624.c = internal global %nyx_string* null
@.str625 = private unnamed_addr constant [37 x i8] c"' must implement 'PartialOrd', but '\00"
@.str625.c = internal global %nyx_string* null
@.str626 = private unnamed_addr constant [11 x i8] c"' does not\00"
@.str626.c = internal global %nyx_string* null
@.str627 = private unnamed_addr constant [1 x i8] c"\00"
@.str627.c = internal global %nyx_string* null
@.str628 = private unnamed_addr constant [9 x i8] c"TyStruct\00"
@.str628.c = internal global %nyx_string* null
@.str629 = private unnamed_addr constant [7 x i8] c"TyEnum\00"
@.str629.c = internal global %nyx_string* null
@.str630 = private unnamed_addr constant [11 x i8] c"PartialOrd\00"
@.str630.c = internal global %nyx_string* null
@.str631 = private unnamed_addr constant [8 x i8] c"NYX1011\00"
@.str631.c = internal global %nyx_string* null
@.str632 = private unnamed_addr constant [25 x i8] c"el operando derecho de '\00"
@.str632.c = internal global %nyx_string* null
@.str633 = private unnamed_addr constant [40 x i8] c"' debe implementar 'PartialOrd', pero '\00"
@.str633.c = internal global %nyx_string* null
@.str634 = private unnamed_addr constant [13 x i8] c"' no lo hace\00"
@.str634.c = internal global %nyx_string* null
@.str635 = private unnamed_addr constant [19 x i8] c"right operand of '\00"
@.str635.c = internal global %nyx_string* null
@.str636 = private unnamed_addr constant [37 x i8] c"' must implement 'PartialOrd', but '\00"
@.str636.c = internal global %nyx_string* null
@.str637 = private unnamed_addr constant [11 x i8] c"' does not\00"
@.str637.c = internal global %nyx_string* null
@.str638 = private unnamed_addr constant [1 x i8] c"\00"
@.str638.c = internal global %nyx_string* null
@.str639 = private unnamed_addr constant [5 x i8] c"PIPE\00"
@.str639.c = internal global %nyx_string* null
@.str640 = private unnamed_addr constant [4 x i8] c"AMP\00"
@.str640.c = internal global %nyx_string* null
@.str641 = private unnamed_addr constant [6 x i8] c"CARET\00"
@.str641.c = internal global %nyx_string* null
@.str642 = private unnamed_addr constant [11 x i8] c"SHIFT_LEFT\00"
@.str642.c = internal global %nyx_string* null
@.str643 = private unnamed_addr constant [12 x i8] c"SHIFT_RIGHT\00"
@.str643.c = internal global %nyx_string* null
@.str644 = private unnamed_addr constant [8 x i8] c"NYX1010\00"
@.str644.c = internal global %nyx_string* null
@.str645 = private unnamed_addr constant [24 x i8] c"operando izquierdo de '\00"
@.str645.c = internal global %nyx_string* null
@.str646 = private unnamed_addr constant [30 x i8] c"' debe ser entero, se obtuvo \00"
@.str646.c = internal global %nyx_string* null
@.str647 = private unnamed_addr constant [18 x i8] c"left operand of '\00"
@.str647.c = internal global %nyx_string* null
@.str648 = private unnamed_addr constant [27 x i8] c"' must be an integer, got \00"
@.str648.c = internal global %nyx_string* null
@.str649 = private unnamed_addr constant [1 x i8] c"\00"
@.str649.c = internal global %nyx_string* null
@.str650 = private unnamed_addr constant [8 x i8] c"NYX1010\00"
@.str650.c = internal global %nyx_string* null
@.str651 = private unnamed_addr constant [22 x i8] c"operando derecho de '\00"
@.str651.c = internal global %nyx_string* null
@.str652 = private unnamed_addr constant [30 x i8] c"' debe ser entero, se obtuvo \00"
@.str652.c = internal global %nyx_string* null
@.str653 = private unnamed_addr constant [19 x i8] c"right operand of '\00"
@.str653.c = internal global %nyx_string* null
@.str654 = private unnamed_addr constant [27 x i8] c"' must be an integer, got \00"
@.str654.c = internal global %nyx_string* null
@.str655 = private unnamed_addr constant [1 x i8] c"\00"
@.str655.c = internal global %nyx_string* null
@.str656 = private unnamed_addr constant [8 x i8] c"AND_AND\00"
@.str656.c = internal global %nyx_string* null
@.str657 = private unnamed_addr constant [3 x i8] c"&&\00"
@.str657.c = internal global %nyx_string* null
@.str658 = private unnamed_addr constant [6 x i8] c"OR_OR\00"
@.str658.c = internal global %nyx_string* null
@.str659 = private unnamed_addr constant [3 x i8] c"||\00"
@.str659.c = internal global %nyx_string* null
@.str660 = private unnamed_addr constant [4 x i8] c"AND\00"
@.str660.c = internal global %nyx_string* null
@.str661 = private unnamed_addr constant [4 x i8] c"and\00"
@.str661.c = internal global %nyx_string* null
@.str662 = private unnamed_addr constant [3 x i8] c"OR\00"
@.str662.c = internal global %nyx_string* null
@.str663 = private unnamed_addr constant [3 x i8] c"or\00"
@.str663.c = internal global %nyx_string* null
@.str664 = private unnamed_addr constant [5 x i8] c"PIPE\00"
@.str664.c = internal global %nyx_string* null
@.str665 = private unnamed_addr constant [2 x i8] c"|\00"
@.str665.c = internal global %nyx_string* null
@.str666 = private unnamed_addr constant [4 x i8] c"AMP\00"
@.str666.c = internal global %nyx_string* null
@.str667 = private unnamed_addr constant [2 x i8] c"&\00"
@.str667.c = internal global %nyx_string* null
@.str668 = private unnamed_addr constant [6 x i8] c"CARET\00"
@.str668.c = internal global %nyx_string* null
@.str669 = private unnamed_addr constant [2 x i8] c"^\00"
@.str669.c = internal global %nyx_string* null
@.str670 = private unnamed_addr constant [11 x i8] c"SHIFT_LEFT\00"
@.str670.c = internal global %nyx_string* null
@.str671 = private unnamed_addr constant [3 x i8] c"<<\00"
@.str671.c = internal global %nyx_string* null
@.str672 = private unnamed_addr constant [12 x i8] c"SHIFT_RIGHT\00"
@.str672.c = internal global %nyx_string* null
@.str673 = private unnamed_addr constant [3 x i8] c">>\00"
@.str673.c = internal global %nyx_string* null
@.str674 = private unnamed_addr constant [4 x i8] c"NOT\00"
@.str674.c = internal global %nyx_string* null
@.str675 = private unnamed_addr constant [2 x i8] c"!\00"
@.str675.c = internal global %nyx_string* null
@.str676 = private unnamed_addr constant [6 x i8] c"TILDE\00"
@.str676.c = internal global %nyx_string* null
@.str677 = private unnamed_addr constant [2 x i8] c"~\00"
@.str677.c = internal global %nyx_string* null
@.str678 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str678.c = internal global %nyx_string* null
@.str679 = private unnamed_addr constant [2 x i8] c"-\00"
@.str679.c = internal global %nyx_string* null
@.str680 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str680.c = internal global %nyx_string* null
@.str681 = private unnamed_addr constant [2 x i8] c"+\00"
@.str681.c = internal global %nyx_string* null
@.str682 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str682.c = internal global %nyx_string* null
@.str683 = private unnamed_addr constant [2 x i8] c"*\00"
@.str683.c = internal global %nyx_string* null
@.str684 = private unnamed_addr constant [6 x i8] c"SLASH\00"
@.str684.c = internal global %nyx_string* null
@.str685 = private unnamed_addr constant [2 x i8] c"/\00"
@.str685.c = internal global %nyx_string* null
@.str686 = private unnamed_addr constant [8 x i8] c"PERCENT\00"
@.str686.c = internal global %nyx_string* null
@.str687 = private unnamed_addr constant [2 x i8] c"%\00"
@.str687.c = internal global %nyx_string* null
@.str688 = private unnamed_addr constant [6 x i8] c"POWER\00"
@.str688.c = internal global %nyx_string* null
@.str689 = private unnamed_addr constant [3 x i8] c"**\00"
@.str689.c = internal global %nyx_string* null
@.str690 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str690.c = internal global %nyx_string* null
@.str691 = private unnamed_addr constant [2 x i8] c"<\00"
@.str691.c = internal global %nyx_string* null
@.str692 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str692.c = internal global %nyx_string* null
@.str693 = private unnamed_addr constant [2 x i8] c">\00"
@.str693.c = internal global %nyx_string* null
@.str694 = private unnamed_addr constant [11 x i8] c"LESS_EQUAL\00"
@.str694.c = internal global %nyx_string* null
@.str695 = private unnamed_addr constant [3 x i8] c"<=\00"
@.str695.c = internal global %nyx_string* null
@.str696 = private unnamed_addr constant [14 x i8] c"GREATER_EQUAL\00"
@.str696.c = internal global %nyx_string* null
@.str697 = private unnamed_addr constant [3 x i8] c">=\00"
@.str697.c = internal global %nyx_string* null
@.str698 = private unnamed_addr constant [9 x i8] c"TyStruct\00"
@.str698.c = internal global %nyx_string* null
@.str699 = private unnamed_addr constant [7 x i8] c"TyEnum\00"
@.str699.c = internal global %nyx_string* null
@.str700 = private unnamed_addr constant [1 x i8] c"\00"
@.str700.c = internal global %nyx_string* null
@.str701 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str701.c = internal global %nyx_string* null
@.str702 = private unnamed_addr constant [4 x i8] c"Neg\00"
@.str702.c = internal global %nyx_string* null
@.str703 = private unnamed_addr constant [4 x i8] c"NOT\00"
@.str703.c = internal global %nyx_string* null
@.str704 = private unnamed_addr constant [4 x i8] c"Not\00"
@.str704.c = internal global %nyx_string* null
@.str705 = private unnamed_addr constant [6 x i8] c"TILDE\00"
@.str705.c = internal global %nyx_string* null
@.str706 = private unnamed_addr constant [7 x i8] c"BitNot\00"
@.str706.c = internal global %nyx_string* null
@.str707 = private unnamed_addr constant [1 x i8] c"\00"
@.str707.c = internal global %nyx_string* null
@.str708 = private unnamed_addr constant [8 x i8] c"NYX1011\00"
@.str708.c = internal global %nyx_string* null
@.str709 = private unnamed_addr constant [17 x i8] c"el operando de '\00"
@.str709.c = internal global %nyx_string* null
@.str710 = private unnamed_addr constant [21 x i8] c"' debe implementar '\00"
@.str710.c = internal global %nyx_string* null
@.str711 = private unnamed_addr constant [10 x i8] c"', pero '\00"
@.str711.c = internal global %nyx_string* null
@.str712 = private unnamed_addr constant [13 x i8] c"' no lo hace\00"
@.str712.c = internal global %nyx_string* null
@.str713 = private unnamed_addr constant [13 x i8] c"operand of '\00"
@.str713.c = internal global %nyx_string* null
@.str714 = private unnamed_addr constant [19 x i8] c"' must implement '\00"
@.str714.c = internal global %nyx_string* null
@.str715 = private unnamed_addr constant [9 x i8] c"', but '\00"
@.str715.c = internal global %nyx_string* null
@.str716 = private unnamed_addr constant [11 x i8] c"' does not\00"
@.str716.c = internal global %nyx_string* null
@.str717 = private unnamed_addr constant [1 x i8] c"\00"
@.str717.c = internal global %nyx_string* null
@.str718 = private unnamed_addr constant [4 x i8] c"NOT\00"
@.str718.c = internal global %nyx_string* null
@.str719 = private unnamed_addr constant [7 x i8] c"TyBool\00"
@.str719.c = internal global %nyx_string* null
@.str720 = private unnamed_addr constant [8 x i8] c"NYX1010\00"
@.str720.c = internal global %nyx_string* null
@.str721 = private unnamed_addr constant [42 x i8] c"operando de '!' debe ser bool, se obtuvo \00"
@.str721.c = internal global %nyx_string* null
@.str722 = private unnamed_addr constant [34 x i8] c"operand of '!' must be bool, got \00"
@.str722.c = internal global %nyx_string* null
@.str723 = private unnamed_addr constant [1 x i8] c"\00"
@.str723.c = internal global %nyx_string* null
@.str724 = private unnamed_addr constant [6 x i8] c"TILDE\00"
@.str724.c = internal global %nyx_string* null
@.str725 = private unnamed_addr constant [8 x i8] c"NYX1010\00"
@.str725.c = internal global %nyx_string* null
@.str726 = private unnamed_addr constant [44 x i8] c"operando de '~' debe ser entero, se obtuvo \00"
@.str726.c = internal global %nyx_string* null
@.str727 = private unnamed_addr constant [40 x i8] c"operand of '~' must be an integer, got \00"
@.str727.c = internal global %nyx_string* null
@.str728 = private unnamed_addr constant [1 x i8] c"\00"
@.str728.c = internal global %nyx_string* null
@.str729 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str729.c = internal global %nyx_string* null
@.str730 = private unnamed_addr constant [8 x i8] c"NYX1010\00"
@.str730.c = internal global %nyx_string* null
@.str731 = private unnamed_addr constant [55 x i8] c"operando de '-' (unario) debe ser numerico, se obtuvo \00"
@.str731.c = internal global %nyx_string* null
@.str732 = private unnamed_addr constant [43 x i8] c"operand of unary '-' must be numeric, got \00"
@.str732.c = internal global %nyx_string* null
@.str733 = private unnamed_addr constant [1 x i8] c"\00"
@.str733.c = internal global %nyx_string* null
@.str734 = private unnamed_addr constant [3 x i8] c"fn\00"
@.str734.c = internal global %nyx_string* null
@.str735 = private unnamed_addr constant [8 x i8] c"addr_of\00"
@.str735.c = internal global %nyx_string* null
@.str736 = private unnamed_addr constant [6 x i8] c"TyRef\00"
@.str736.c = internal global %nyx_string* null
@.str737 = private unnamed_addr constant [1 x i8] c"\00"
@.str737.c = internal global %nyx_string* null
@.str738 = private unnamed_addr constant [12 x i8] c"addr_of_mut\00"
@.str738.c = internal global %nyx_string* null
@.str739 = private unnamed_addr constant [9 x i8] c"TyRefMut\00"
@.str739.c = internal global %nyx_string* null
@.str740 = private unnamed_addr constant [1 x i8] c"\00"
@.str740.c = internal global %nyx_string* null
@.str741 = private unnamed_addr constant [9 x i8] c"inferred\00"
@.str741.c = internal global %nyx_string* null
@.str742 = private unnamed_addr constant [13 x i8] c"generic_call\00"
@.str742.c = internal global %nyx_string* null
@.str743 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str743.c = internal global %nyx_string* null
@.str744 = private unnamed_addr constant [4 x i8] c"let\00"
@.str744.c = internal global %nyx_string* null
@.str745 = private unnamed_addr constant [4 x i8] c"var\00"
@.str745.c = internal global %nyx_string* null
@.str746 = private unnamed_addr constant [6 x i8] c"param\00"
@.str746.c = internal global %nyx_string* null
@.str747 = private unnamed_addr constant [8 x i8] c"for_var\00"
@.str747.c = internal global %nyx_string* null
@.str748 = private unnamed_addr constant [5 x i8] c"TyFn\00"
@.str748.c = internal global %nyx_string* null
@.str749 = private unnamed_addr constant [10 x i8] c"TyGeneric\00"
@.str749.c = internal global %nyx_string* null
@.str750 = private unnamed_addr constant [6 x i8] c"TyPtr\00"
@.str750.c = internal global %nyx_string* null
@.str751 = private unnamed_addr constant [9 x i8] c"TyStruct\00"
@.str751.c = internal global %nyx_string* null
@.str752 = private unnamed_addr constant [3 x i8] c"Fn\00"
@.str752.c = internal global %nyx_string* null
@.str753 = private unnamed_addr constant [8 x i8] c"NYX1007\00"
@.str753.c = internal global %nyx_string* null
@.str754 = private unnamed_addr constant [2 x i8] c"'\00"
@.str754.c = internal global %nyx_string* null
@.str755 = private unnamed_addr constant [29 x i8] c"' no es una función (tipo: \00"
@.str755.c = internal global %nyx_string* null
@.str756 = private unnamed_addr constant [2 x i8] c")\00"
@.str756.c = internal global %nyx_string* null
@.str757 = private unnamed_addr constant [2 x i8] c"'\00"
@.str757.c = internal global %nyx_string* null
@.str758 = private unnamed_addr constant [26 x i8] c"' is not callable (type: \00"
@.str758.c = internal global %nyx_string* null
@.str759 = private unnamed_addr constant [2 x i8] c")\00"
@.str759.c = internal global %nyx_string* null
@.str760 = private unnamed_addr constant [1 x i8] c"\00"
@.str760.c = internal global %nyx_string* null
@.str761 = private unnamed_addr constant [8 x i8] c"NYX1006\00"
@.str761.c = internal global %nyx_string* null
@.str762 = private unnamed_addr constant [2 x i8] c"'\00"
@.str762.c = internal global %nyx_string* null
@.str763 = private unnamed_addr constant [3 x i8] c"' \00"
@.str763.c = internal global %nyx_string* null
@.str764 = private unnamed_addr constant [8 x i8] c"espera \00"
@.str764.c = internal global %nyx_string* null
@.str765 = private unnamed_addr constant [23 x i8] c" argumentos, recibió \00"
@.str765.c = internal global %nyx_string* null
@.str766 = private unnamed_addr constant [9 x i8] c"expects \00"
@.str766.c = internal global %nyx_string* null
@.str767 = private unnamed_addr constant [17 x i8] c" arguments, got \00"
@.str767.c = internal global %nyx_string* null
@.str768 = private unnamed_addr constant [1 x i8] c"\00"
@.str768.c = internal global %nyx_string* null
@.str769 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str769.c = internal global %nyx_string* null
@.str770 = private unnamed_addr constant [8 x i8] c"NYX1005\00"
@.str770.c = internal global %nyx_string* null
@.str771 = private unnamed_addr constant [11 x i8] c"argumento \00"
@.str771.c = internal global %nyx_string* null
@.str772 = private unnamed_addr constant [6 x i8] c" de '\00"
@.str772.c = internal global %nyx_string* null
@.str773 = private unnamed_addr constant [16 x i8] c"': se esperaba \00"
@.str773.c = internal global %nyx_string* null
@.str774 = private unnamed_addr constant [13 x i8] c", se obtuvo \00"
@.str774.c = internal global %nyx_string* null
@.str775 = private unnamed_addr constant [10 x i8] c"argument \00"
@.str775.c = internal global %nyx_string* null
@.str776 = private unnamed_addr constant [6 x i8] c" of '\00"
@.str776.c = internal global %nyx_string* null
@.str777 = private unnamed_addr constant [13 x i8] c"': expected \00"
@.str777.c = internal global %nyx_string* null
@.str778 = private unnamed_addr constant [7 x i8] c", got \00"
@.str778.c = internal global %nyx_string* null
@.str779 = private unnamed_addr constant [1 x i8] c"\00"
@.str779.c = internal global %nyx_string* null
@.str780 = private unnamed_addr constant [6 x i8] c"(arg \00"
@.str780.c = internal global %nyx_string* null
@.str781 = private unnamed_addr constant [2 x i8] c")\00"
@.str781.c = internal global %nyx_string* null
@.str782 = private unnamed_addr constant [9 x i8] c"TyStruct\00"
@.str782.c = internal global %nyx_string* null
@.str783 = private unnamed_addr constant [7 x i8] c"TyEnum\00"
@.str783.c = internal global %nyx_string* null
@.str784 = private unnamed_addr constant [8 x i8] c"NYX1020\00"
@.str784.c = internal global %nyx_string* null
@.str785 = private unnamed_addr constant [2 x i8] c"'\00"
@.str785.c = internal global %nyx_string* null
@.str786 = private unnamed_addr constant [26 x i8] c"' no satisface el bound '\00"
@.str786.c = internal global %nyx_string* null
@.str787 = private unnamed_addr constant [40 x i8] c"' requerido por el parámetro de tipo '\00"
@.str787.c = internal global %nyx_string* null
@.str788 = private unnamed_addr constant [7 x i8] c"' de '\00"
@.str788.c = internal global %nyx_string* null
@.str789 = private unnamed_addr constant [27 x i8] c"' does not satisfy bound '\00"
@.str789.c = internal global %nyx_string* null
@.str790 = private unnamed_addr constant [31 x i8] c"' required by type parameter '\00"
@.str790.c = internal global %nyx_string* null
@.str791 = private unnamed_addr constant [7 x i8] c"' of '\00"
@.str791.c = internal global %nyx_string* null
@.str792 = private unnamed_addr constant [1 x i8] c"\00"
@.str792.c = internal global %nyx_string* null
@.str793 = private unnamed_addr constant [1 x i8] c"\00"
@.str793.c = internal global %nyx_string* null
@.str794 = private unnamed_addr constant [8 x i8] c"NYX1003\00"
@.str794.c = internal global %nyx_string* null
@.str795 = private unnamed_addr constant [23 x i8] c"tipo incompatible en '\00"
@.str795.c = internal global %nyx_string* null
@.str796 = private unnamed_addr constant [16 x i8] c"': se esperaba \00"
@.str796.c = internal global %nyx_string* null
@.str797 = private unnamed_addr constant [13 x i8] c", se obtuvo \00"
@.str797.c = internal global %nyx_string* null
@.str798 = private unnamed_addr constant [19 x i8] c"type mismatch in '\00"
@.str798.c = internal global %nyx_string* null
@.str799 = private unnamed_addr constant [13 x i8] c"': expected \00"
@.str799.c = internal global %nyx_string* null
@.str800 = private unnamed_addr constant [7 x i8] c", got \00"
@.str800.c = internal global %nyx_string* null
@.str801 = private unnamed_addr constant [1 x i8] c"\00"
@.str801.c = internal global %nyx_string* null
@.str802 = private unnamed_addr constant [4 x i8] c"var\00"
@.str802.c = internal global %nyx_string* null
@.str803 = private unnamed_addr constant [4 x i8] c"let\00"
@.str803.c = internal global %nyx_string* null
@.str804 = private unnamed_addr constant [8 x i8] c"NYX1013\00"
@.str804.c = internal global %nyx_string* null
@.str805 = private unnamed_addr constant [2 x i8] c"'\00"
@.str805.c = internal global %nyx_string* null
@.str806 = private unnamed_addr constant [3 x i8] c"' \00"
@.str806.c = internal global %nyx_string* null
@.str807 = private unnamed_addr constant [27 x i8] c"ya declarada en este scope\00"
@.str807.c = internal global %nyx_string* null
@.str808 = private unnamed_addr constant [31 x i8] c"already declared in this scope\00"
@.str808.c = internal global %nyx_string* null
@.str809 = private unnamed_addr constant [1 x i8] c"\00"
@.str809.c = internal global %nyx_string* null
@.str810 = private unnamed_addr constant [6 x i8] c"const\00"
@.str810.c = internal global %nyx_string* null
@.str811 = private unnamed_addr constant [1 x i8] c"\00"
@.str811.c = internal global %nyx_string* null
@.str812 = private unnamed_addr constant [8 x i8] c"NYX1002\00"
@.str812.c = internal global %nyx_string* null
@.str813 = private unnamed_addr constant [9 x i8] c"variable\00"
@.str813.c = internal global %nyx_string* null
@.str814 = private unnamed_addr constant [9 x i8] c"variable\00"
@.str814.c = internal global %nyx_string* null
@.str815 = private unnamed_addr constant [3 x i8] c" '\00"
@.str815.c = internal global %nyx_string* null
@.str816 = private unnamed_addr constant [3 x i8] c"' \00"
@.str816.c = internal global %nyx_string* null
@.str817 = private unnamed_addr constant [13 x i8] c"no declarada\00"
@.str817.c = internal global %nyx_string* null
@.str818 = private unnamed_addr constant [13 x i8] c"not declared\00"
@.str818.c = internal global %nyx_string* null
@.str819 = private unnamed_addr constant [1 x i8] c"\00"
@.str819.c = internal global %nyx_string* null
@.str820 = private unnamed_addr constant [4 x i8] c"let\00"
@.str820.c = internal global %nyx_string* null
@.str821 = private unnamed_addr constant [8 x i8] c"NYX1014\00"
@.str821.c = internal global %nyx_string* null
@.str822 = private unnamed_addr constant [2 x i8] c"'\00"
@.str822.c = internal global %nyx_string* null
@.str823 = private unnamed_addr constant [3 x i8] c"' \00"
@.str823.c = internal global %nyx_string* null
@.str824 = private unnamed_addr constant [33 x i8] c"es inmutable (declarada con let)\00"
@.str824.c = internal global %nyx_string* null
@.str825 = private unnamed_addr constant [33 x i8] c"is immutable (declared with let)\00"
@.str825.c = internal global %nyx_string* null
@.str826 = private unnamed_addr constant [1 x i8] c"\00"
@.str826.c = internal global %nyx_string* null
@.str827 = private unnamed_addr constant [6 x i8] c"const\00"
@.str827.c = internal global %nyx_string* null
@.str828 = private unnamed_addr constant [8 x i8] c"NYX1014\00"
@.str828.c = internal global %nyx_string* null
@.str829 = private unnamed_addr constant [2 x i8] c"'\00"
@.str829.c = internal global %nyx_string* null
@.str830 = private unnamed_addr constant [3 x i8] c"' \00"
@.str830.c = internal global %nyx_string* null
@.str831 = private unnamed_addr constant [35 x i8] c"es constante (declarada con const)\00"
@.str831.c = internal global %nyx_string* null
@.str832 = private unnamed_addr constant [34 x i8] c"is constant (declared with const)\00"
@.str832.c = internal global %nyx_string* null
@.str833 = private unnamed_addr constant [1 x i8] c"\00"
@.str833.c = internal global %nyx_string* null
@.str834 = private unnamed_addr constant [6 x i8] c"block\00"
@.str834.c = internal global %nyx_string* null
@.str835 = private unnamed_addr constant [7 x i8] c"return\00"
@.str835.c = internal global %nyx_string* null
@.str836 = private unnamed_addr constant [3 x i8] c"if\00"
@.str836.c = internal global %nyx_string* null
@.str837 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str837.c = internal global %nyx_string* null
@.str838 = private unnamed_addr constant [6 x i8] c"match\00"
@.str838.c = internal global %nyx_string* null
@.str839 = private unnamed_addr constant [7 x i8] c"return\00"
@.str839.c = internal global %nyx_string* null
@.str840 = private unnamed_addr constant [9 x i8] c"function\00"
@.str840.c = internal global %nyx_string* null
@.str841 = private unnamed_addr constant [9 x i8] c"async_fn\00"
@.str841.c = internal global %nyx_string* null
@.str842 = private unnamed_addr constant [7 x i8] c"return\00"
@.str842.c = internal global %nyx_string* null
@.str843 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str843.c = internal global %nyx_string* null
@.str844 = private unnamed_addr constant [6 x i8] c"block\00"
@.str844.c = internal global %nyx_string* null
@.str845 = private unnamed_addr constant [3 x i8] c"if\00"
@.str845.c = internal global %nyx_string* null
@.str846 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str846.c = internal global %nyx_string* null
@.str847 = private unnamed_addr constant [6 x i8] c"while\00"
@.str847.c = internal global %nyx_string* null
@.str848 = private unnamed_addr constant [4 x i8] c"for\00"
@.str848.c = internal global %nyx_string* null
@.str849 = private unnamed_addr constant [6 x i8] c"match\00"
@.str849.c = internal global %nyx_string* null
@.str850 = private unnamed_addr constant [10 x i8] c"match_arm\00"
@.str850.c = internal global %nyx_string* null
@.str851 = private unnamed_addr constant [10 x i8] c"try_catch\00"
@.str851.c = internal global %nyx_string* null
@.str852 = private unnamed_addr constant [13 x i8] c"unsafe_block\00"
@.str852.c = internal global %nyx_string* null
@.str853 = private unnamed_addr constant [6 x i8] c"defer\00"
@.str853.c = internal global %nyx_string* null
@.str854 = private unnamed_addr constant [10 x i8] c"test_decl\00"
@.str854.c = internal global %nyx_string* null
@.str855 = private unnamed_addr constant [8 x i8] c"NYX1009\00"
@.str855.c = internal global %nyx_string* null
@.str856 = private unnamed_addr constant [44 x i8] c"no se puede inferir el tipo de retorno de '\00"
@.str856.c = internal global %nyx_string* null
@.str857 = private unnamed_addr constant [26 x i8] c"': retornos en conflicto \00"
@.str857.c = internal global %nyx_string* null
@.str858 = private unnamed_addr constant [4 x i8] c" y \00"
@.str858.c = internal global %nyx_string* null
@.str859 = private unnamed_addr constant [30 x i8] c"cannot infer return type of '\00"
@.str859.c = internal global %nyx_string* null
@.str860 = private unnamed_addr constant [24 x i8] c"': conflicting returns \00"
@.str860.c = internal global %nyx_string* null
@.str861 = private unnamed_addr constant [6 x i8] c" and \00"
@.str861.c = internal global %nyx_string* null
@.str862 = private unnamed_addr constant [1 x i8] c"\00"
@.str862.c = internal global %nyx_string* null
@.str863 = private unnamed_addr constant [1 x i8] c"\00"
@.str863.c = internal global %nyx_string* null
@.str864 = private unnamed_addr constant [5 x i8] c"void\00"
@.str864.c = internal global %nyx_string* null
@.str865 = private unnamed_addr constant [6 x i8] c"param\00"
@.str865.c = internal global %nyx_string* null
@.str866 = private unnamed_addr constant [1 x i8] c"\00"
@.str866.c = internal global %nyx_string* null
@.str867 = private unnamed_addr constant [4 x i8] c"...\00"
@.str867.c = internal global %nyx_string* null
@.str868 = private unnamed_addr constant [1 x i8] c"\00"
@.str868.c = internal global %nyx_string* null
@.str869 = private unnamed_addr constant [5 x i8] c"void\00"
@.str869.c = internal global %nyx_string* null
@.str870 = private unnamed_addr constant [8 x i8] c"NYX1008\00"
@.str870.c = internal global %nyx_string* null
@.str871 = private unnamed_addr constant [11 x i8] c"función '\00"
@.str871.c = internal global %nyx_string* null
@.str872 = private unnamed_addr constant [20 x i8] c"' declara retorno '\00"
@.str872.c = internal global %nyx_string* null
@.str873 = private unnamed_addr constant [46 x i8] c"' pero no todos los caminos retornan un valor\00"
@.str873.c = internal global %nyx_string* null
@.str874 = private unnamed_addr constant [11 x i8] c"function '\00"
@.str874.c = internal global %nyx_string* null
@.str875 = private unnamed_addr constant [25 x i8] c"' declares return type '\00"
@.str875.c = internal global %nyx_string* null
@.str876 = private unnamed_addr constant [35 x i8] c"' but not all paths return a value\00"
@.str876.c = internal global %nyx_string* null
@.str877 = private unnamed_addr constant [1 x i8] c"\00"
@.str877.c = internal global %nyx_string* null
@.str878 = private unnamed_addr constant [1 x i8] c"\00"
@.str878.c = internal global %nyx_string* null
@.str879 = private unnamed_addr constant [1 x i8] c"\00"
@.str879.c = internal global %nyx_string* null
@.str880 = private unnamed_addr constant [8 x i8] c"NYX1008\00"
@.str880.c = internal global %nyx_string* null
@.str881 = private unnamed_addr constant [11 x i8] c"función '\00"
@.str881.c = internal global %nyx_string* null
@.str882 = private unnamed_addr constant [20 x i8] c"' infiere retorno '\00"
@.str882.c = internal global %nyx_string* null
@.str883 = private unnamed_addr constant [46 x i8] c"' pero no todos los caminos retornan un valor\00"
@.str883.c = internal global %nyx_string* null
@.str884 = private unnamed_addr constant [11 x i8] c"function '\00"
@.str884.c = internal global %nyx_string* null
@.str885 = private unnamed_addr constant [23 x i8] c"' infers return type '\00"
@.str885.c = internal global %nyx_string* null
@.str886 = private unnamed_addr constant [35 x i8] c"' but not all paths return a value\00"
@.str886.c = internal global %nyx_string* null
@.str887 = private unnamed_addr constant [1 x i8] c"\00"
@.str887.c = internal global %nyx_string* null
@.str888 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str888.c = internal global %nyx_string* null
@.str889 = private unnamed_addr constant [8 x i8] c"for_var\00"
@.str889.c = internal global %nyx_string* null
@.str890 = private unnamed_addr constant [8 x i8] c"TyArray\00"
@.str890.c = internal global %nyx_string* null
@.str891 = private unnamed_addr constant [6 x i8] c"TyMap\00"
@.str891.c = internal global %nyx_string* null
@.str892 = private unnamed_addr constant [9 x i8] c"TyString\00"
@.str892.c = internal global %nyx_string* null
@.str893 = private unnamed_addr constant [8 x i8] c"NYX1015\00"
@.str893.c = internal global %nyx_string* null
@.str894 = private unnamed_addr constant [27 x i8] c"'return' fuera de función\00"
@.str894.c = internal global %nyx_string* null
@.str895 = private unnamed_addr constant [29 x i8] c"'return' outside of function\00"
@.str895.c = internal global %nyx_string* null
@.str896 = private unnamed_addr constant [1 x i8] c"\00"
@.str896.c = internal global %nyx_string* null
@.str897 = private unnamed_addr constant [8 x i8] c"NYX1004\00"
@.str897.c = internal global %nyx_string* null
@.str898 = private unnamed_addr constant [34 x i8] c"tipo de retorno incompatible en '\00"
@.str898.c = internal global %nyx_string* null
@.str899 = private unnamed_addr constant [16 x i8] c"': se esperaba \00"
@.str899.c = internal global %nyx_string* null
@.str900 = private unnamed_addr constant [13 x i8] c", se obtuvo \00"
@.str900.c = internal global %nyx_string* null
@.str901 = private unnamed_addr constant [26 x i8] c"return type mismatch in '\00"
@.str901.c = internal global %nyx_string* null
@.str902 = private unnamed_addr constant [13 x i8] c"': expected \00"
@.str902.c = internal global %nyx_string* null
@.str903 = private unnamed_addr constant [7 x i8] c", got \00"
@.str903.c = internal global %nyx_string* null
@.str904 = private unnamed_addr constant [1 x i8] c"\00"
@.str904.c = internal global %nyx_string* null
@.str905 = private unnamed_addr constant [9 x i8] c"(return)\00"
@.str905.c = internal global %nyx_string* null
@.str906 = private unnamed_addr constant [8 x i8] c"NYX1015\00"
@.str906.c = internal global %nyx_string* null
@.str907 = private unnamed_addr constant [22 x i8] c"'break' fuera de loop\00"
@.str907.c = internal global %nyx_string* null
@.str908 = private unnamed_addr constant [24 x i8] c"'break' outside of loop\00"
@.str908.c = internal global %nyx_string* null
@.str909 = private unnamed_addr constant [1 x i8] c"\00"
@.str909.c = internal global %nyx_string* null
@.str910 = private unnamed_addr constant [8 x i8] c"NYX1015\00"
@.str910.c = internal global %nyx_string* null
@.str911 = private unnamed_addr constant [25 x i8] c"'continue' fuera de loop\00"
@.str911.c = internal global %nyx_string* null
@.str912 = private unnamed_addr constant [27 x i8] c"'continue' outside of loop\00"
@.str912.c = internal global %nyx_string* null
@.str913 = private unnamed_addr constant [1 x i8] c"\00"
@.str913.c = internal global %nyx_string* null
@.str914 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str914.c = internal global %nyx_string* null
@.str915 = private unnamed_addr constant [5 x i8] c"std/\00"
@.str915.c = internal global %nyx_string* null
@.str916 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str916.c = internal global %nyx_string* null
@.str917 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str917.c = internal global %nyx_string* null
@.str918 = private unnamed_addr constant [5 x i8] c"pub \00"
@.str918.c = internal global %nyx_string* null
@.str919 = private unnamed_addr constant [8 x i8] c"struct \00"
@.str919.c = internal global %nyx_string* null
@.str920 = private unnamed_addr constant [1 x i8] c"\00"
@.str920.c = internal global %nyx_string* null
@.str921 = private unnamed_addr constant [3 x i8] c"//\00"
@.str921.c = internal global %nyx_string* null
@.str922 = private unnamed_addr constant [2 x i8] c":\00"
@.str922.c = internal global %nyx_string* null
@.str923 = private unnamed_addr constant [6 x i8] c"enum \00"
@.str923.c = internal global %nyx_string* null
@.str924 = private unnamed_addr constant [2 x i8] c"(\00"
@.str924.c = internal global %nyx_string* null
@.str925 = private unnamed_addr constant [2 x i8] c")\00"
@.str925.c = internal global %nyx_string* null
@.str926 = private unnamed_addr constant [2 x i8] c",\00"
@.str926.c = internal global %nyx_string* null
@.str927 = private unnamed_addr constant [6 x i8] c"impl \00"
@.str927.c = internal global %nyx_string* null
@.str928 = private unnamed_addr constant [6 x i8] c" for \00"
@.str928.c = internal global %nyx_string* null
@.str929 = private unnamed_addr constant [6 x i8] c"type \00"
@.str929.c = internal global %nyx_string* null
@.str930 = private unnamed_addr constant [2 x i8] c"=\00"
@.str930.c = internal global %nyx_string* null
@.str931 = private unnamed_addr constant [1 x i8] c"\00"
@.str931.c = internal global %nyx_string* null
@.str932 = private unnamed_addr constant [7 x i8] c"length\00"
@.str932.c = internal global %nyx_string* null
@.str933 = private unnamed_addr constant [5 x i8] c"push\00"
@.str933.c = internal global %nyx_string* null
@.str934 = private unnamed_addr constant [4 x i8] c"pop\00"
@.str934.c = internal global %nyx_string* null
@.str935 = private unnamed_addr constant [8 x i8] c"unshift\00"
@.str935.c = internal global %nyx_string* null
@.str936 = private unnamed_addr constant [6 x i8] c"shift\00"
@.str936.c = internal global %nyx_string* null
@.str937 = private unnamed_addr constant [7 x i8] c"insert\00"
@.str937.c = internal global %nyx_string* null
@.str938 = private unnamed_addr constant [7 x i8] c"remove\00"
@.str938.c = internal global %nyx_string* null
@.str939 = private unnamed_addr constant [6 x i8] c"slice\00"
@.str939.c = internal global %nyx_string* null
@.str940 = private unnamed_addr constant [8 x i8] c"reverse\00"
@.str940.c = internal global %nyx_string* null
@.str941 = private unnamed_addr constant [8 x i8] c"indexOf\00"
@.str941.c = internal global %nyx_string* null
@.str942 = private unnamed_addr constant [5 x i8] c"join\00"
@.str942.c = internal global %nyx_string* null
@.str943 = private unnamed_addr constant [5 x i8] c"iter\00"
@.str943.c = internal global %nyx_string* null
@.str944 = private unnamed_addr constant [12 x i8] c"byte_length\00"
@.str944.c = internal global %nyx_string* null
@.str945 = private unnamed_addr constant [12 x i8] c"char_length\00"
@.str945.c = internal global %nyx_string* null
@.str946 = private unnamed_addr constant [9 x i8] c"contains\00"
@.str946.c = internal global %nyx_string* null
@.str947 = private unnamed_addr constant [6 x i8] c"split\00"
@.str947.c = internal global %nyx_string* null
@.str948 = private unnamed_addr constant [7 x i8] c"charAt\00"
@.str948.c = internal global %nyx_string* null
@.str949 = private unnamed_addr constant [10 x i8] c"substring\00"
@.str949.c = internal global %nyx_string* null
@.str950 = private unnamed_addr constant [5 x i8] c"trim\00"
@.str950.c = internal global %nyx_string* null
@.str951 = private unnamed_addr constant [8 x i8] c"toUpper\00"
@.str951.c = internal global %nyx_string* null
@.str952 = private unnamed_addr constant [8 x i8] c"toLower\00"
@.str952.c = internal global %nyx_string* null
@.str953 = private unnamed_addr constant [9 x i8] c"to_upper\00"
@.str953.c = internal global %nyx_string* null
@.str954 = private unnamed_addr constant [9 x i8] c"to_lower\00"
@.str954.c = internal global %nyx_string* null
@.str955 = private unnamed_addr constant [8 x i8] c"replace\00"
@.str955.c = internal global %nyx_string* null
@.str956 = private unnamed_addr constant [7 x i8] c"repeat\00"
@.str956.c = internal global %nyx_string* null
@.str957 = private unnamed_addr constant [11 x i8] c"startsWith\00"
@.str957.c = internal global %nyx_string* null
@.str958 = private unnamed_addr constant [9 x i8] c"endsWith\00"
@.str958.c = internal global %nyx_string* null
@.str959 = private unnamed_addr constant [12 x i8] c"starts_with\00"
@.str959.c = internal global %nyx_string* null
@.str960 = private unnamed_addr constant [10 x i8] c"ends_with\00"
@.str960.c = internal global %nyx_string* null
@.str961 = private unnamed_addr constant [4 x i8] c"get\00"
@.str961.c = internal global %nyx_string* null
@.str962 = private unnamed_addr constant [4 x i8] c"put\00"
@.str962.c = internal global %nyx_string* null
@.str963 = private unnamed_addr constant [4 x i8] c"has\00"
@.str963.c = internal global %nyx_string* null
@.str964 = private unnamed_addr constant [5 x i8] c"keys\00"
@.str964.c = internal global %nyx_string* null
@.str965 = private unnamed_addr constant [7 x i8] c"values\00"
@.str965.c = internal global %nyx_string* null
@.str966 = private unnamed_addr constant [5 x i8] c"size\00"
@.str966.c = internal global %nyx_string* null
@.str967 = private unnamed_addr constant [6 x i8] c"clear\00"
@.str967.c = internal global %nyx_string* null
@.str968 = private unnamed_addr constant [8 x i8] c"entries\00"
@.str968.c = internal global %nyx_string* null
@.str969 = private unnamed_addr constant [7 x i8] c"delete\00"
@.str969.c = internal global %nyx_string* null
@.str970 = private unnamed_addr constant [7 x i8] c"append\00"
@.str970.c = internal global %nyx_string* null
@.str971 = private unnamed_addr constant [11 x i8] c"append_int\00"
@.str971.c = internal global %nyx_string* null
@.str972 = private unnamed_addr constant [10 x i8] c"to_string\00"
@.str972.c = internal global %nyx_string* null
@.str973 = private unnamed_addr constant [5 x i8] c"next\00"
@.str973.c = internal global %nyx_string* null
@.str974 = private unnamed_addr constant [4 x i8] c"map\00"
@.str974.c = internal global %nyx_string* null
@.str975 = private unnamed_addr constant [7 x i8] c"filter\00"
@.str975.c = internal global %nyx_string* null
@.str976 = private unnamed_addr constant [5 x i8] c"take\00"
@.str976.c = internal global %nyx_string* null
@.str977 = private unnamed_addr constant [5 x i8] c"skip\00"
@.str977.c = internal global %nyx_string* null
@.str978 = private unnamed_addr constant [10 x i8] c"enumerate\00"
@.str978.c = internal global %nyx_string* null
@.str979 = private unnamed_addr constant [6 x i8] c"chain\00"
@.str979.c = internal global %nyx_string* null
@.str980 = private unnamed_addr constant [8 x i8] c"collect\00"
@.str980.c = internal global %nyx_string* null
@.str981 = private unnamed_addr constant [5 x i8] c"fold\00"
@.str981.c = internal global %nyx_string* null
@.str982 = private unnamed_addr constant [4 x i8] c"sum\00"
@.str982.c = internal global %nyx_string* null
@.str983 = private unnamed_addr constant [6 x i8] c"count\00"
@.str983.c = internal global %nyx_string* null
@.str984 = private unnamed_addr constant [4 x i8] c"any\00"
@.str984.c = internal global %nyx_string* null
@.str985 = private unnamed_addr constant [4 x i8] c"all\00"
@.str985.c = internal global %nyx_string* null
@.str986 = private unnamed_addr constant [6 x i8] c"is_ok\00"
@.str986.c = internal global %nyx_string* null
@.str987 = private unnamed_addr constant [8 x i8] c"is_some\00"
@.str987.c = internal global %nyx_string* null
@.str988 = private unnamed_addr constant [7 x i8] c"is_err\00"
@.str988.c = internal global %nyx_string* null
@.str989 = private unnamed_addr constant [8 x i8] c"is_none\00"
@.str989.c = internal global %nyx_string* null
@.str990 = private unnamed_addr constant [7 x i8] c"unwrap\00"
@.str990.c = internal global %nyx_string* null
@.str991 = private unnamed_addr constant [10 x i8] c"unwrap_or\00"
@.str991.c = internal global %nyx_string* null
@.str992 = private unnamed_addr constant [11 x i8] c"unwrap_err\00"
@.str992.c = internal global %nyx_string* null
@.str993 = private unnamed_addr constant [8 x i8] c"map_err\00"
@.str993.c = internal global %nyx_string* null
@.str994 = private unnamed_addr constant [9 x i8] c"and_then\00"
@.str994.c = internal global %nyx_string* null
@.str995 = private unnamed_addr constant [6 x i8] c"clone\00"
@.str995.c = internal global %nyx_string* null
@.str996 = private unnamed_addr constant [3 x i8] c"eq\00"
@.str996.c = internal global %nyx_string* null
@.str997 = private unnamed_addr constant [10 x i8] c"debug_str\00"
@.str997.c = internal global %nyx_string* null
@.str998 = private unnamed_addr constant [2 x i8] c"_\00"
@.str998.c = internal global %nyx_string* null
@.str999 = private unnamed_addr constant [1 x i8] c"\00"
@.str999.c = internal global %nyx_string* null
@.str1000 = private unnamed_addr constant [1 x i8] c"\00"
@.str1000.c = internal global %nyx_string* null
@.str1001 = private unnamed_addr constant [1 x i8] c"\00"
@.str1001.c = internal global %nyx_string* null
@.str1002 = private unnamed_addr constant [1 x i8] c"\00"
@.str1002.c = internal global %nyx_string* null
@.str1003 = private unnamed_addr constant [21 x i8] c" (¿quisiste decir '\00"
@.str1003.c = internal global %nyx_string* null
@.str1004 = private unnamed_addr constant [4 x i8] c"'?)\00"
@.str1004.c = internal global %nyx_string* null
@.str1005 = private unnamed_addr constant [17 x i8] c" (did you mean '\00"
@.str1005.c = internal global %nyx_string* null
@.str1006 = private unnamed_addr constant [4 x i8] c"'?)\00"
@.str1006.c = internal global %nyx_string* null
@.str1007 = private unnamed_addr constant [8 x i8] c"NYX1006\00"
@.str1007.c = internal global %nyx_string* null
@.str1008 = private unnamed_addr constant [2 x i8] c"'\00"
@.str1008.c = internal global %nyx_string* null
@.str1009 = private unnamed_addr constant [2 x i8] c".\00"
@.str1009.c = internal global %nyx_string* null
@.str1010 = private unnamed_addr constant [3 x i8] c"' \00"
@.str1010.c = internal global %nyx_string* null
@.str1011 = private unnamed_addr constant [8 x i8] c"espera \00"
@.str1011.c = internal global %nyx_string* null
@.str1012 = private unnamed_addr constant [23 x i8] c" argumentos, recibió \00"
@.str1012.c = internal global %nyx_string* null
@.str1013 = private unnamed_addr constant [9 x i8] c"expects \00"
@.str1013.c = internal global %nyx_string* null
@.str1014 = private unnamed_addr constant [17 x i8] c" arguments, got \00"
@.str1014.c = internal global %nyx_string* null
@.str1015 = private unnamed_addr constant [1 x i8] c"\00"
@.str1015.c = internal global %nyx_string* null
@.str1016 = private unnamed_addr constant [10 x i8] c"TyGeneric\00"
@.str1016.c = internal global %nyx_string* null
@.str1017 = private unnamed_addr constant [8 x i8] c"NYX1005\00"
@.str1017.c = internal global %nyx_string* null
@.str1018 = private unnamed_addr constant [11 x i8] c"argumento \00"
@.str1018.c = internal global %nyx_string* null
@.str1019 = private unnamed_addr constant [6 x i8] c" de '\00"
@.str1019.c = internal global %nyx_string* null
@.str1020 = private unnamed_addr constant [2 x i8] c".\00"
@.str1020.c = internal global %nyx_string* null
@.str1021 = private unnamed_addr constant [16 x i8] c"': se esperaba \00"
@.str1021.c = internal global %nyx_string* null
@.str1022 = private unnamed_addr constant [13 x i8] c", se obtuvo \00"
@.str1022.c = internal global %nyx_string* null
@.str1023 = private unnamed_addr constant [10 x i8] c"argument \00"
@.str1023.c = internal global %nyx_string* null
@.str1024 = private unnamed_addr constant [6 x i8] c" of '\00"
@.str1024.c = internal global %nyx_string* null
@.str1025 = private unnamed_addr constant [13 x i8] c"': expected \00"
@.str1025.c = internal global %nyx_string* null
@.str1026 = private unnamed_addr constant [7 x i8] c", got \00"
@.str1026.c = internal global %nyx_string* null
@.str1027 = private unnamed_addr constant [1 x i8] c"\00"
@.str1027.c = internal global %nyx_string* null
@.str1028 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str1028.c = internal global %nyx_string* null
@.str1029 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str1029.c = internal global %nyx_string* null
@.str1030 = private unnamed_addr constant [4 x i8] c"var\00"
@.str1030.c = internal global %nyx_string* null
@.str1031 = private unnamed_addr constant [4 x i8] c"let\00"
@.str1031.c = internal global %nyx_string* null
@.str1032 = private unnamed_addr constant [6 x i8] c"param\00"
@.str1032.c = internal global %nyx_string* null
@.str1033 = private unnamed_addr constant [8 x i8] c"for_var\00"
@.str1033.c = internal global %nyx_string* null
@.str1034 = private unnamed_addr constant [8 x i8] c"NYX1016\00"
@.str1034.c = internal global %nyx_string* null
@.str1035 = private unnamed_addr constant [10 x i8] c"método '\00"
@.str1035.c = internal global %nyx_string* null
@.str1036 = private unnamed_addr constant [26 x i8] c"' no reconocido (¿typo?)\00"
@.str1036.c = internal global %nyx_string* null
@.str1037 = private unnamed_addr constant [9 x i8] c"method '\00"
@.str1037.c = internal global %nyx_string* null
@.str1038 = private unnamed_addr constant [25 x i8] c"' not recognized (typo?)\00"
@.str1038.c = internal global %nyx_string* null
@.str1039 = private unnamed_addr constant [9 x i8] c"TyStruct\00"
@.str1039.c = internal global %nyx_string* null
@.str1040 = private unnamed_addr constant [7 x i8] c"TyEnum\00"
@.str1040.c = internal global %nyx_string* null
@.str1041 = private unnamed_addr constant [9 x i8] c"TyString\00"
@.str1041.c = internal global %nyx_string* null
@.str1042 = private unnamed_addr constant [9 x i8] c"contains\00"
@.str1042.c = internal global %nyx_string* null
@.str1043 = private unnamed_addr constant [7 x i8] c"String\00"
@.str1043.c = internal global %nyx_string* null
@.str1044 = private unnamed_addr constant [11 x i8] c"startsWith\00"
@.str1044.c = internal global %nyx_string* null
@.str1045 = private unnamed_addr constant [7 x i8] c"String\00"
@.str1045.c = internal global %nyx_string* null
@.str1046 = private unnamed_addr constant [9 x i8] c"endsWith\00"
@.str1046.c = internal global %nyx_string* null
@.str1047 = private unnamed_addr constant [7 x i8] c"String\00"
@.str1047.c = internal global %nyx_string* null
@.str1048 = private unnamed_addr constant [12 x i8] c"starts_with\00"
@.str1048.c = internal global %nyx_string* null
@.str1049 = private unnamed_addr constant [7 x i8] c"String\00"
@.str1049.c = internal global %nyx_string* null
@.str1050 = private unnamed_addr constant [10 x i8] c"ends_with\00"
@.str1050.c = internal global %nyx_string* null
@.str1051 = private unnamed_addr constant [7 x i8] c"String\00"
@.str1051.c = internal global %nyx_string* null
@.str1052 = private unnamed_addr constant [8 x i8] c"indexOf\00"
@.str1052.c = internal global %nyx_string* null
@.str1053 = private unnamed_addr constant [7 x i8] c"String\00"
@.str1053.c = internal global %nyx_string* null
@.str1054 = private unnamed_addr constant [4 x i8] c"int\00"
@.str1054.c = internal global %nyx_string* null
@.str1055 = private unnamed_addr constant [6 x i8] c"split\00"
@.str1055.c = internal global %nyx_string* null
@.str1056 = private unnamed_addr constant [7 x i8] c"String\00"
@.str1056.c = internal global %nyx_string* null
@.str1057 = private unnamed_addr constant [7 x i8] c"repeat\00"
@.str1057.c = internal global %nyx_string* null
@.str1058 = private unnamed_addr constant [4 x i8] c"int\00"
@.str1058.c = internal global %nyx_string* null
@.str1059 = private unnamed_addr constant [7 x i8] c"charAt\00"
@.str1059.c = internal global %nyx_string* null
@.str1060 = private unnamed_addr constant [4 x i8] c"int\00"
@.str1060.c = internal global %nyx_string* null
@.str1061 = private unnamed_addr constant [10 x i8] c"substring\00"
@.str1061.c = internal global %nyx_string* null
@.str1062 = private unnamed_addr constant [4 x i8] c"int\00"
@.str1062.c = internal global %nyx_string* null
@.str1063 = private unnamed_addr constant [4 x i8] c"int\00"
@.str1063.c = internal global %nyx_string* null
@.str1064 = private unnamed_addr constant [8 x i8] c"replace\00"
@.str1064.c = internal global %nyx_string* null
@.str1065 = private unnamed_addr constant [7 x i8] c"String\00"
@.str1065.c = internal global %nyx_string* null
@.str1066 = private unnamed_addr constant [7 x i8] c"String\00"
@.str1066.c = internal global %nyx_string* null
@.str1067 = private unnamed_addr constant [8 x i8] c"TyArray\00"
@.str1067.c = internal global %nyx_string* null
@.str1068 = private unnamed_addr constant [5 x i8] c"push\00"
@.str1068.c = internal global %nyx_string* null
@.str1069 = private unnamed_addr constant [9 x i8] c"contains\00"
@.str1069.c = internal global %nyx_string* null
@.str1070 = private unnamed_addr constant [8 x i8] c"indexOf\00"
@.str1070.c = internal global %nyx_string* null
@.str1071 = private unnamed_addr constant [7 x i8] c"insert\00"
@.str1071.c = internal global %nyx_string* null
@.str1072 = private unnamed_addr constant [4 x i8] c"int\00"
@.str1072.c = internal global %nyx_string* null
@.str1073 = private unnamed_addr constant [7 x i8] c"remove\00"
@.str1073.c = internal global %nyx_string* null
@.str1074 = private unnamed_addr constant [4 x i8] c"int\00"
@.str1074.c = internal global %nyx_string* null
@.str1075 = private unnamed_addr constant [6 x i8] c"slice\00"
@.str1075.c = internal global %nyx_string* null
@.str1076 = private unnamed_addr constant [4 x i8] c"int\00"
@.str1076.c = internal global %nyx_string* null
@.str1077 = private unnamed_addr constant [4 x i8] c"int\00"
@.str1077.c = internal global %nyx_string* null
@.str1078 = private unnamed_addr constant [5 x i8] c"join\00"
@.str1078.c = internal global %nyx_string* null
@.str1079 = private unnamed_addr constant [7 x i8] c"String\00"
@.str1079.c = internal global %nyx_string* null
@.str1080 = private unnamed_addr constant [6 x i8] c"TyMap\00"
@.str1080.c = internal global %nyx_string* null
@.str1081 = private unnamed_addr constant [4 x i8] c"get\00"
@.str1081.c = internal global %nyx_string* null
@.str1082 = private unnamed_addr constant [4 x i8] c"has\00"
@.str1082.c = internal global %nyx_string* null
@.str1083 = private unnamed_addr constant [7 x i8] c"delete\00"
@.str1083.c = internal global %nyx_string* null
@.str1084 = private unnamed_addr constant [4 x i8] c"put\00"
@.str1084.c = internal global %nyx_string* null
@.str1085 = private unnamed_addr constant [9 x i8] c"TyOption\00"
@.str1085.c = internal global %nyx_string* null
@.str1086 = private unnamed_addr constant [10 x i8] c"unwrap_or\00"
@.str1086.c = internal global %nyx_string* null
@.str1087 = private unnamed_addr constant [9 x i8] c"TyResult\00"
@.str1087.c = internal global %nyx_string* null
@.str1088 = private unnamed_addr constant [10 x i8] c"unwrap_or\00"
@.str1088.c = internal global %nyx_string* null
@.str1089 = private unnamed_addr constant [8 x i8] c"NYX1005\00"
@.str1089.c = internal global %nyx_string* null
@.str1090 = private unnamed_addr constant [11 x i8] c"argumento \00"
@.str1090.c = internal global %nyx_string* null
@.str1091 = private unnamed_addr constant [6 x i8] c" de '\00"
@.str1091.c = internal global %nyx_string* null
@.str1092 = private unnamed_addr constant [16 x i8] c"': se esperaba \00"
@.str1092.c = internal global %nyx_string* null
@.str1093 = private unnamed_addr constant [13 x i8] c", se obtuvo \00"
@.str1093.c = internal global %nyx_string* null
@.str1094 = private unnamed_addr constant [10 x i8] c"argument \00"
@.str1094.c = internal global %nyx_string* null
@.str1095 = private unnamed_addr constant [6 x i8] c" of '\00"
@.str1095.c = internal global %nyx_string* null
@.str1096 = private unnamed_addr constant [13 x i8] c"': expected \00"
@.str1096.c = internal global %nyx_string* null
@.str1097 = private unnamed_addr constant [7 x i8] c", got \00"
@.str1097.c = internal global %nyx_string* null
@.str1098 = private unnamed_addr constant [1 x i8] c"\00"
@.str1098.c = internal global %nyx_string* null
@.str1099 = private unnamed_addr constant [8 x i8] c"NYX1005\00"
@.str1099.c = internal global %nyx_string* null
@.str1100 = private unnamed_addr constant [11 x i8] c"argumento \00"
@.str1100.c = internal global %nyx_string* null
@.str1101 = private unnamed_addr constant [6 x i8] c" de '\00"
@.str1101.c = internal global %nyx_string* null
@.str1102 = private unnamed_addr constant [2 x i8] c".\00"
@.str1102.c = internal global %nyx_string* null
@.str1103 = private unnamed_addr constant [16 x i8] c"': se esperaba \00"
@.str1103.c = internal global %nyx_string* null
@.str1104 = private unnamed_addr constant [13 x i8] c", se obtuvo \00"
@.str1104.c = internal global %nyx_string* null
@.str1105 = private unnamed_addr constant [10 x i8] c"argument \00"
@.str1105.c = internal global %nyx_string* null
@.str1106 = private unnamed_addr constant [6 x i8] c" of '\00"
@.str1106.c = internal global %nyx_string* null
@.str1107 = private unnamed_addr constant [13 x i8] c"': expected \00"
@.str1107.c = internal global %nyx_string* null
@.str1108 = private unnamed_addr constant [7 x i8] c", got \00"
@.str1108.c = internal global %nyx_string* null
@.str1109 = private unnamed_addr constant [1 x i8] c"\00"
@.str1109.c = internal global %nyx_string* null
@.str1110 = private unnamed_addr constant [9 x i8] c"TyStruct\00"
@.str1110.c = internal global %nyx_string* null
@.str1111 = private unnamed_addr constant [7 x i8] c"TyEnum\00"
@.str1111.c = internal global %nyx_string* null
@.str1112 = private unnamed_addr constant [8 x i8] c"NYX1020\00"
@.str1112.c = internal global %nyx_string* null
@.str1113 = private unnamed_addr constant [2 x i8] c"'\00"
@.str1113.c = internal global %nyx_string* null
@.str1114 = private unnamed_addr constant [26 x i8] c"' no satisface el bound '\00"
@.str1114.c = internal global %nyx_string* null
@.str1115 = private unnamed_addr constant [40 x i8] c"' requerido por el parámetro de tipo '\00"
@.str1115.c = internal global %nyx_string* null
@.str1116 = private unnamed_addr constant [7 x i8] c"' de '\00"
@.str1116.c = internal global %nyx_string* null
@.str1117 = private unnamed_addr constant [2 x i8] c".\00"
@.str1117.c = internal global %nyx_string* null
@.str1118 = private unnamed_addr constant [27 x i8] c"' does not satisfy bound '\00"
@.str1118.c = internal global %nyx_string* null
@.str1119 = private unnamed_addr constant [31 x i8] c"' required by type parameter '\00"
@.str1119.c = internal global %nyx_string* null
@.str1120 = private unnamed_addr constant [7 x i8] c"' of '\00"
@.str1120.c = internal global %nyx_string* null
@.str1121 = private unnamed_addr constant [1 x i8] c"\00"
@.str1121.c = internal global %nyx_string* null
@.str1122 = private unnamed_addr constant [10 x i8] c"TyGeneric\00"
@.str1122.c = internal global %nyx_string* null
@.str1123 = private unnamed_addr constant [8 x i8] c"NYX1005\00"
@.str1123.c = internal global %nyx_string* null
@.str1124 = private unnamed_addr constant [11 x i8] c"argumento \00"
@.str1124.c = internal global %nyx_string* null
@.str1125 = private unnamed_addr constant [6 x i8] c" de '\00"
@.str1125.c = internal global %nyx_string* null
@.str1126 = private unnamed_addr constant [2 x i8] c".\00"
@.str1126.c = internal global %nyx_string* null
@.str1127 = private unnamed_addr constant [16 x i8] c"': se esperaba \00"
@.str1127.c = internal global %nyx_string* null
@.str1128 = private unnamed_addr constant [13 x i8] c", se obtuvo \00"
@.str1128.c = internal global %nyx_string* null
@.str1129 = private unnamed_addr constant [10 x i8] c"argument \00"
@.str1129.c = internal global %nyx_string* null
@.str1130 = private unnamed_addr constant [6 x i8] c" of '\00"
@.str1130.c = internal global %nyx_string* null
@.str1131 = private unnamed_addr constant [13 x i8] c"': expected \00"
@.str1131.c = internal global %nyx_string* null
@.str1132 = private unnamed_addr constant [7 x i8] c", got \00"
@.str1132.c = internal global %nyx_string* null
@.str1133 = private unnamed_addr constant [1 x i8] c"\00"
@.str1133.c = internal global %nyx_string* null
@.str1134 = private unnamed_addr constant [8 x i8] c"NYX1017\00"
@.str1134.c = internal global %nyx_string* null
@.str1135 = private unnamed_addr constant [8 x i8] c"campo '\00"
@.str1135.c = internal global %nyx_string* null
@.str1136 = private unnamed_addr constant [24 x i8] c"' no existe en struct '\00"
@.str1136.c = internal global %nyx_string* null
@.str1137 = private unnamed_addr constant [2 x i8] c"'\00"
@.str1137.c = internal global %nyx_string* null
@.str1138 = private unnamed_addr constant [8 x i8] c"field '\00"
@.str1138.c = internal global %nyx_string* null
@.str1139 = private unnamed_addr constant [29 x i8] c"' does not exist in struct '\00"
@.str1139.c = internal global %nyx_string* null
@.str1140 = private unnamed_addr constant [8 x i8] c"NYX1018\00"
@.str1140.c = internal global %nyx_string* null
@.str1141 = private unnamed_addr constant [29 x i8] c"tipo incompatible en campo '\00"
@.str1141.c = internal global %nyx_string* null
@.str1142 = private unnamed_addr constant [2 x i8] c".\00"
@.str1142.c = internal global %nyx_string* null
@.str1143 = private unnamed_addr constant [16 x i8] c"': se esperaba \00"
@.str1143.c = internal global %nyx_string* null
@.str1144 = private unnamed_addr constant [13 x i8] c", se obtuvo \00"
@.str1144.c = internal global %nyx_string* null
@.str1145 = private unnamed_addr constant [25 x i8] c"type mismatch in field '\00"
@.str1145.c = internal global %nyx_string* null
@.str1146 = private unnamed_addr constant [13 x i8] c"': expected \00"
@.str1146.c = internal global %nyx_string* null
@.str1147 = private unnamed_addr constant [7 x i8] c", got \00"
@.str1147.c = internal global %nyx_string* null
@.str1148 = private unnamed_addr constant [1 x i8] c"\00"
@.str1148.c = internal global %nyx_string* null
@.str1149 = private unnamed_addr constant [1 x i8] c"\00"
@.str1149.c = internal global %nyx_string* null
@.str1150 = private unnamed_addr constant [9 x i8] c"wildcard\00"
@.str1150.c = internal global %nyx_string* null
@.str1151 = private unnamed_addr constant [19 x i8] c"identifier_pattern\00"
@.str1151.c = internal global %nyx_string* null
@.str1152 = private unnamed_addr constant [15 x i8] c"struct_pattern\00"
@.str1152.c = internal global %nyx_string* null
@.str1153 = private unnamed_addr constant [21 x i8] c"nested_match_pattern\00"
@.str1153.c = internal global %nyx_string* null
@.str1154 = private unnamed_addr constant [14 x i8] c"match_pattern\00"
@.str1154.c = internal global %nyx_string* null
@.str1155 = private unnamed_addr constant [1 x i8] c"\00"
@.str1155.c = internal global %nyx_string* null
@.str1156 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str1156.c = internal global %nyx_string* null
@.str1157 = private unnamed_addr constant [11 x i8] c"or_pattern\00"
@.str1157.c = internal global %nyx_string* null
@.str1158 = private unnamed_addr constant [1 x i8] c"\00"
@.str1158.c = internal global %nyx_string* null
@.str1159 = private unnamed_addr constant [28 x i8] c"match no exhaustivo sobre '\00"
@.str1159.c = internal global %nyx_string* null
@.str1160 = private unnamed_addr constant [4 x i8] c"': \00"
@.str1160.c = internal global %nyx_string* null
@.str1161 = private unnamed_addr constant [26 x i8] c"non-exhaustive match on '\00"
@.str1161.c = internal global %nyx_string* null
@.str1162 = private unnamed_addr constant [4 x i8] c"': \00"
@.str1162.c = internal global %nyx_string* null
@.str1163 = private unnamed_addr constant [6 x i8] c"falta\00"
@.str1163.c = internal global %nyx_string* null
@.str1164 = private unnamed_addr constant [8 x i8] c"missing\00"
@.str1164.c = internal global %nyx_string* null
@.str1165 = private unnamed_addr constant [7 x i8] c"faltan\00"
@.str1165.c = internal global %nyx_string* null
@.str1166 = private unnamed_addr constant [8 x i8] c"missing\00"
@.str1166.c = internal global %nyx_string* null
@.str1167 = private unnamed_addr constant [2 x i8] c",\00"
@.str1167.c = internal global %nyx_string* null
@.str1168 = private unnamed_addr constant [2 x i8] c" \00"
@.str1168.c = internal global %nyx_string* null
@.str1169 = private unnamed_addr constant [2 x i8] c".\00"
@.str1169.c = internal global %nyx_string* null
@.str1170 = private unnamed_addr constant [8 x i8] c"NYX1019\00"
@.str1170.c = internal global %nyx_string* null
@.str1171 = private unnamed_addr constant [1 x i8] c"\00"
@.str1171.c = internal global %nyx_string* null
@.str1172 = private unnamed_addr constant [14 x i8] c"match_pattern\00"
@.str1172.c = internal global %nyx_string* null
@.str1173 = private unnamed_addr constant [4 x i8] c"let\00"
@.str1173.c = internal global %nyx_string* null
@.str1174 = private unnamed_addr constant [19 x i8] c"identifier_pattern\00"
@.str1174.c = internal global %nyx_string* null
@.str1175 = private unnamed_addr constant [4 x i8] c"let\00"
@.str1175.c = internal global %nyx_string* null
@.str1176 = private unnamed_addr constant [15 x i8] c"struct_pattern\00"
@.str1176.c = internal global %nyx_string* null
@.str1177 = private unnamed_addr constant [4 x i8] c"let\00"
@.str1177.c = internal global %nyx_string* null
@.str1178 = private unnamed_addr constant [21 x i8] c"nested_match_pattern\00"
@.str1178.c = internal global %nyx_string* null
@.str1179 = private unnamed_addr constant [19 x i8] c"identifier_pattern\00"
@.str1179.c = internal global %nyx_string* null
@.str1180 = private unnamed_addr constant [4 x i8] c"let\00"
@.str1180.c = internal global %nyx_string* null
@.str1181 = private unnamed_addr constant [14 x i8] c"match_pattern\00"
@.str1181.c = internal global %nyx_string* null
@.str1182 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str1182.c = internal global %nyx_string* null
@.str1183 = private unnamed_addr constant [7 x i8] c"number\00"
@.str1183.c = internal global %nyx_string* null
@.str1184 = private unnamed_addr constant [10 x i8] c"float_lit\00"
@.str1184.c = internal global %nyx_string* null
@.str1185 = private unnamed_addr constant [7 x i8] c"string\00"
@.str1185.c = internal global %nyx_string* null
@.str1186 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str1186.c = internal global %nyx_string* null
@.str1187 = private unnamed_addr constant [5 x i8] c"char\00"
@.str1187.c = internal global %nyx_string* null
@.str1188 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str1188.c = internal global %nyx_string* null
@.str1189 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str1189.c = internal global %nyx_string* null
@.str1190 = private unnamed_addr constant [6 x i8] c"error\00"
@.str1190.c = internal global %nyx_string* null
@.str1191 = private unnamed_addr constant [9 x i8] c"wildcard\00"
@.str1191.c = internal global %nyx_string* null
@.str1192 = private unnamed_addr constant [6 x i8] c"block\00"
@.str1192.c = internal global %nyx_string* null
@.str1193 = private unnamed_addr constant [3 x i8] c"if\00"
@.str1193.c = internal global %nyx_string* null
@.str1194 = private unnamed_addr constant [6 x i8] c"while\00"
@.str1194.c = internal global %nyx_string* null
@.str1195 = private unnamed_addr constant [4 x i8] c"for\00"
@.str1195.c = internal global %nyx_string* null
@.str1196 = private unnamed_addr constant [7 x i8] c"return\00"
@.str1196.c = internal global %nyx_string* null
@.str1197 = private unnamed_addr constant [6 x i8] c"break\00"
@.str1197.c = internal global %nyx_string* null
@.str1198 = private unnamed_addr constant [9 x i8] c"continue\00"
@.str1198.c = internal global %nyx_string* null
@.str1199 = private unnamed_addr constant [4 x i8] c"let\00"
@.str1199.c = internal global %nyx_string* null
@.str1200 = private unnamed_addr constant [6 x i8] c"const\00"
@.str1200.c = internal global %nyx_string* null
@.str1201 = private unnamed_addr constant [9 x i8] c"function\00"
@.str1201.c = internal global %nyx_string* null
@.str1202 = private unnamed_addr constant [9 x i8] c"async_fn\00"
@.str1202.c = internal global %nyx_string* null
@.str1203 = private unnamed_addr constant [11 x i8] c"await_expr\00"
@.str1203.c = internal global %nyx_string* null
@.str1204 = private unnamed_addr constant [7 x i8] c"struct\00"
@.str1204.c = internal global %nyx_string* null
@.str1205 = private unnamed_addr constant [9 x i8] c"enum_def\00"
@.str1205.c = internal global %nyx_string* null
@.str1206 = private unnamed_addr constant [5 x i8] c"impl\00"
@.str1206.c = internal global %nyx_string* null
@.str1207 = private unnamed_addr constant [10 x i8] c"trait_def\00"
@.str1207.c = internal global %nyx_string* null
@.str1208 = private unnamed_addr constant [11 x i8] c"impl_trait\00"
@.str1208.c = internal global %nyx_string* null
@.str1209 = private unnamed_addr constant [7 x i8] c"export\00"
@.str1209.c = internal global %nyx_string* null
@.str1210 = private unnamed_addr constant [7 x i8] c"import\00"
@.str1210.c = internal global %nyx_string* null
@.str1211 = private unnamed_addr constant [14 x i8] c"import_module\00"
@.str1211.c = internal global %nyx_string* null
@.str1212 = private unnamed_addr constant [12 x i8] c"module_decl\00"
@.str1212.c = internal global %nyx_string* null
@.str1213 = private unnamed_addr constant [11 x i8] c"type_alias\00"
@.str1213.c = internal global %nyx_string* null
@.str1214 = private unnamed_addr constant [10 x i8] c"extern_fn\00"
@.str1214.c = internal global %nyx_string* null
@.str1215 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str1215.c = internal global %nyx_string* null
@.str1216 = private unnamed_addr constant [5 x i8] c"unop\00"
@.str1216.c = internal global %nyx_string* null
@.str1217 = private unnamed_addr constant [5 x i8] c"call\00"
@.str1217.c = internal global %nyx_string* null
@.str1218 = private unnamed_addr constant [6 x i8] c"array\00"
@.str1218.c = internal global %nyx_string* null
@.str1219 = private unnamed_addr constant [12 x i8] c"map_literal\00"
@.str1219.c = internal global %nyx_string* null
@.str1220 = private unnamed_addr constant [6 x i8] c"index\00"
@.str1220.c = internal global %nyx_string* null
@.str1221 = private unnamed_addr constant [6 x i8] c"range\00"
@.str1221.c = internal global %nyx_string* null
@.str1222 = private unnamed_addr constant [7 x i8] c"assign\00"
@.str1222.c = internal global %nyx_string* null
@.str1223 = private unnamed_addr constant [16 x i8] c"compound_assign\00"
@.str1223.c = internal global %nyx_string* null
@.str1224 = private unnamed_addr constant [13 x i8] c"index_assign\00"
@.str1224.c = internal global %nyx_string* null
@.str1225 = private unnamed_addr constant [13 x i8] c"field_assign\00"
@.str1225.c = internal global %nyx_string* null
@.str1226 = private unnamed_addr constant [12 x i8] c"struct_init\00"
@.str1226.c = internal global %nyx_string* null
@.str1227 = private unnamed_addr constant [13 x i8] c"field_access\00"
@.str1227.c = internal global %nyx_string* null
@.str1228 = private unnamed_addr constant [12 x i8] c"method_call\00"
@.str1228.c = internal global %nyx_string* null
@.str1229 = private unnamed_addr constant [6 x i8] c"match\00"
@.str1229.c = internal global %nyx_string* null
@.str1230 = private unnamed_addr constant [10 x i8] c"match_arm\00"
@.str1230.c = internal global %nyx_string* null
@.str1231 = private unnamed_addr constant [14 x i8] c"match_pattern\00"
@.str1231.c = internal global %nyx_string* null
@.str1232 = private unnamed_addr constant [13 x i8] c"enum_variant\00"
@.str1232.c = internal global %nyx_string* null
@.str1233 = private unnamed_addr constant [7 x i8] c"try_op\00"
@.str1233.c = internal global %nyx_string* null
@.str1234 = private unnamed_addr constant [5 x i8] c"cast\00"
@.str1234.c = internal global %nyx_string* null
@.str1235 = private unnamed_addr constant [7 x i8] c"sizeof\00"
@.str1235.c = internal global %nyx_string* null
@.str1236 = private unnamed_addr constant [8 x i8] c"alignof\00"
@.str1236.c = internal global %nyx_string* null
@.str1237 = private unnamed_addr constant [13 x i8] c"unsafe_block\00"
@.str1237.c = internal global %nyx_string* null
@.str1238 = private unnamed_addr constant [8 x i8] c"addr_of\00"
@.str1238.c = internal global %nyx_string* null
@.str1239 = private unnamed_addr constant [12 x i8] c"addr_of_mut\00"
@.str1239.c = internal global %nyx_string* null
@.str1240 = private unnamed_addr constant [6 x i8] c"deref\00"
@.str1240.c = internal global %nyx_string* null
@.str1241 = private unnamed_addr constant [13 x i8] c"deref_assign\00"
@.str1241.c = internal global %nyx_string* null
@.str1242 = private unnamed_addr constant [11 x i8] c"static_var\00"
@.str1242.c = internal global %nyx_string* null
@.str1243 = private unnamed_addr constant [4 x i8] c"var\00"
@.str1243.c = internal global %nyx_string* null
@.str1244 = private unnamed_addr constant [6 x i8] c"defer\00"
@.str1244.c = internal global %nyx_string* null
@.str1245 = private unnamed_addr constant [10 x i8] c"try_catch\00"
@.str1245.c = internal global %nyx_string* null
@.str1246 = private unnamed_addr constant [4 x i8] c"var\00"
@.str1246.c = internal global %nyx_string* null
@.str1247 = private unnamed_addr constant [6 x i8] c"throw\00"
@.str1247.c = internal global %nyx_string* null
@.str1248 = private unnamed_addr constant [11 x i8] c"inline_asm\00"
@.str1248.c = internal global %nyx_string* null
@.str1249 = private unnamed_addr constant [15 x i8] c"inline_asm_gcc\00"
@.str1249.c = internal global %nyx_string* null
@.str1250 = private unnamed_addr constant [13 x i8] c"generic_call\00"
@.str1250.c = internal global %nyx_string* null
@.str1251 = private unnamed_addr constant [10 x i8] c"tuple_lit\00"
@.str1251.c = internal global %nyx_string* null
@.str1252 = private unnamed_addr constant [12 x i8] c"tuple_index\00"
@.str1252.c = internal global %nyx_string* null
@.str1253 = private unnamed_addr constant [22 x i8] c"let_destructure_tuple\00"
@.str1253.c = internal global %nyx_string* null
@.str1254 = private unnamed_addr constant [4 x i8] c"let\00"
@.str1254.c = internal global %nyx_string* null
@.str1255 = private unnamed_addr constant [10 x i8] c"test_decl\00"
@.str1255.c = internal global %nyx_string* null
@.str1256 = private unnamed_addr constant [7 x i8] c"assert\00"
@.str1256.c = internal global %nyx_string* null
@.str1257 = private unnamed_addr constant [12 x i8] c"NYX_VERBOSE\00"
@.str1257.c = internal global %nyx_string* null
@.str1258 = private unnamed_addr constant [2 x i8] c"1\00"
@.str1258.c = internal global %nyx_string* null
@.str1259 = private unnamed_addr constant [7 x i8] c"  → \00"
@.str1259.c = internal global %nyx_string* null
@.str1260 = private unnamed_addr constant [30 x i8] c"Análisis semántico iniciado\00"
@.str1260.c = internal global %nyx_string* null
@.str1261 = private unnamed_addr constant [26 x i8] c"Semantic analysis started\00"
@.str1261.c = internal global %nyx_string* null
@.str1262 = private unnamed_addr constant [9 x i8] c"NYX_DIAG\00"
@.str1262.c = internal global %nyx_string* null
@.str1263 = private unnamed_addr constant [5 x i8] c"json\00"
@.str1263.c = internal global %nyx_string* null
@.str1264 = private unnamed_addr constant [7 x i8] c"  ✗ \00"
@.str1264.c = internal global %nyx_string* null
@.str1265 = private unnamed_addr constant [2 x i8] c"1\00"
@.str1265.c = internal global %nyx_string* null
@.str1266 = private unnamed_addr constant [7 x i8] c"  → \00"
@.str1266.c = internal global %nyx_string* null
@.str1267 = private unnamed_addr constant [25 x i8] c"Análisis completado: OK\00"
@.str1267.c = internal global %nyx_string* null
@.str1268 = private unnamed_addr constant [22 x i8] c"Analysis complete: OK\00"
@.str1268.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
@.str.init.0 = private unnamed_addr constant [1 x i8] c"\00"
@.str.init.1 = private unnamed_addr constant [1 x i8] c"\00"
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

@g_errors = global { i64, i8* }* null
@g_diag_codes = global { i64, i8* }* null
@g_diag_msgs = global { i64, i8* }* null
@g_diag_fns = global { i64, i8* }* null
@g_diag_hints = global { i64, i8* }* null
@g_diag_lines = global { i64, i8* }* null
@g_diag_cols = global { i64, i8* }* null
@g_cur_line = global i64 0
@g_cur_col = global i64 0
@g_sym_names = global { i64, i8* }* null
@g_sym_kinds = global { i64, i8* }* null
@g_sym_arities = global { i64, i8* }* null
@g_sym_count = global i64 0
@g_scope_marks = global { i64, i8* }* null
@g_marks_count = global i64 0
@g_in_function = global i64 0
@g_in_loop = global i64 0
@g_current_fn = global %nyx_string* null
@g_enum_reg_names = global { i64, i8* }* null
@g_enum_reg_variants = global { i64, i8* }* null
@g_enum_reg_variant_payloads = global { i64, i8* }* null
@g_enum_reg_count = global i64 0
@g_struct_reg_names = global { i64, i8* }* null
@g_struct_reg_fields = global { i64, i8* }* null
@g_struct_reg_field_types = global { i64, i8* }* null
@g_struct_reg_count = global i64 0
@g_var_types = global { i64, i8* }* null
@g_fn_sig_names = global { i64, i8* }* null
@g_fn_sig_params = global { i64, i8* }* null
@g_fn_sig_returns = global { i64, i8* }* null
@g_fn_sig_type_params = global { i64, i8* }* null
@g_fn_sig_type_bounds = global { i64, i8* }* null
@g_fn_sig_count = global i64 0
@g_current_fn_ret_type = global { i64, i8* }* null
@g_alias_names = global { i64, i8* }* null
@g_alias_targets = global { i64, i8* }* null
@g_alias_count = global i64 0
@g_impl_method_types = global { i64, i8* }* null
@g_impl_method_names = global { i64, i8* }* null
@g_impl_method_params = global { i64, i8* }* null
@g_impl_method_returns = global { i64, i8* }* null
@g_impl_method_type_params = global { i64, i8* }* null
@g_impl_method_type_bounds = global { i64, i8* }* null
@g_impl_method_count = global i64 0
@g_trait_impl_types = global { i64, i8* }* null
@g_trait_impl_traits = global { i64, i8* }* null
@g_trait_impl_count = global i64 0
@g_known_methods = global { i64, i8* }* null
@g_known_methods_ready = global i64 0
@g_has_imports = global i1 0
@g_lang = global %nyx_string* null
@g_lang_ready = global i64 0

declare { i64, i8* }* @ty_unknown()
declare i1 @ty_is_unknown({ i64, i8* }*)
declare %nyx_string* @ty_kind({ i64, i8* }*)
declare i1 @ty_eq({ i64, i8* }*, { i64, i8* }*)
declare %nyx_string* @ty_to_str({ i64, i8* }*)
declare { i64, i8* }* @ty_parse(%nyx_string*)
declare { i64, i8* }* @ty_of_literal(%ASTNode)
declare { i64, i8* }* @known_primitive_names()
declare { i64, i8* }* @ty_of_binop(...)
declare i1 @is_integer_like(...)
declare i1 @is_numeric_ty(...)
declare { i64, i8* }* @ty_int(...)
declare { i64, i8* }* @ty_bool(...)
declare { i64, i8* }* @ty_string(...)
declare { i64, i8* }* @ty_struct_ty(...)
declare { i64, i8* }* @ty_char(...)
declare { i64, i8* }* @ty_unit(...)
declare %nyx_string* @ty_to_type_ann(...)
declare %nyx_string* @ty_to_call_ann(...)
declare { i64, i8* }* @ty_map(...)
declare { i64, i8* }* @subst_apply(...)
declare i1 @unify(...)
declare { i64, i8* }* @freshen_params(...)
declare i1 @unify_var(...)
declare { i64, i8* }* @subst_new(...)

define internal i64 @init_lang(
) {
  %1 = load i64, i64* @g_lang_ready
  %2 = icmp eq i64 %1, 1
  br i1 %2, label %then0, label %else1
then0:
  ret i64 0
else1:
  br label %merge2
merge2:
  %3 = getelementptr [9 x i8], [9 x i8]* @.str0, i32 0, i32 0
  %4 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str0.c, i8* %3)
  %5 = call i8* @nyx_string_to_cstr(%nyx_string* %4)
  %6 = call %nyx_string* @nyx_getenv(i8* %5)
  store %nyx_string* %6, %nyx_string** @g_lang
  store i64 1, i64* @g_lang_ready
  ret i64 0
}

define internal %nyx_string* @msg(
%nyx_string* %es.param, %nyx_string* %en.param) {
  %es.ptr = alloca %nyx_string*
  store %nyx_string* %es.param, %nyx_string** %es.ptr
  %en.ptr = alloca %nyx_string*
  store %nyx_string* %en.param, %nyx_string** %en.ptr
  %7 = call i64 @init_lang()
  %8 = load %nyx_string*, %nyx_string** @g_lang
  %9 = getelementptr [3 x i8], [3 x i8]* @.str1, i32 0, i32 0
  %10 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1.c, i8* %9)
  %11 = call i1 @nyx_string_equals(%nyx_string* %8, %nyx_string* %10)
  br i1 %11, label %then3, label %else4
then3:
  %12 = load %nyx_string*, %nyx_string** %es.ptr
  ret %nyx_string* %12
else4:
  br label %merge5
merge5:
  %13 = load %nyx_string*, %nyx_string** %en.ptr
  ret %nyx_string* %13
}

define internal i64 @sem_diag(
%nyx_string* %code.param, %nyx_string* %err_msg.param, %nyx_string* %hint.param) {
  %code.ptr = alloca %nyx_string*
  store %nyx_string* %code.param, %nyx_string** %code.ptr
  %err_msg.ptr = alloca %nyx_string*
  store %nyx_string* %err_msg.param, %nyx_string** %err_msg.ptr
  %hint.ptr = alloca %nyx_string*
  store %nyx_string* %hint.param, %nyx_string** %hint.ptr
  %14 = getelementptr [1 x i8], [1 x i8]* @.str2, i32 0, i32 0
  %15 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str2.c, i8* %14)
  %16 = alloca %nyx_string*
  store %nyx_string* %15, %nyx_string** %16
  %17 = load i64, i64* @g_cur_line
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %then6, label %else7
then6:
  %19 = getelementptr [3 x i8], [3 x i8]* @.str3, i32 0, i32 0
  %20 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str3.c, i8* %19)
  %21 = getelementptr [7 x i8], [7 x i8]* @.str4, i32 0, i32 0
  %22 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str4.c, i8* %21)
  %23 = getelementptr [5 x i8], [5 x i8]* @.str5, i32 0, i32 0
  %24 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str5.c, i8* %23)
  %25 = call %nyx_string* @msg(%nyx_string* %22, %nyx_string* %24)
  %26 = call %nyx_string* @nyx_string_concat(%nyx_string* %20, %nyx_string* %25)
  %27 = getelementptr [2 x i8], [2 x i8]* @.str6, i32 0, i32 0
  %28 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str6.c, i8* %27)
  %29 = call %nyx_string* @nyx_string_concat(%nyx_string* %26, %nyx_string* %28)
  %30 = load i64, i64* @g_cur_line
  %31 = call %nyx_string* @nyx_string_from_int(i64 %30)
  %32 = call %nyx_string* @nyx_string_concat(%nyx_string* %29, %nyx_string* %31)
  %33 = getelementptr [2 x i8], [2 x i8]* @.str7, i32 0, i32 0
  %34 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str7.c, i8* %33)
  %35 = call %nyx_string* @nyx_string_concat(%nyx_string* %32, %nyx_string* %34)
  store %nyx_string* %35, %nyx_string** %16
  br label %merge8
else7:
  br label %merge8
merge8:
  %36 = load %nyx_string*, %nyx_string** @g_current_fn
  %37 = getelementptr [1 x i8], [1 x i8]* @.str8, i32 0, i32 0
  %38 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str8.c, i8* %37)
  %39 = call i1 @nyx_string_equals(%nyx_string* %36, %nyx_string* %38)
  br i1 %39, label %then9, label %else10
then9:
  %40 = load { i64, i8* }*, { i64, i8* }** @g_errors
  %41 = getelementptr [6 x i8], [6 x i8]* @.str9, i32 0, i32 0
  %42 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str9.c, i8* %41)
  %43 = load %nyx_string*, %nyx_string** %16
  %44 = call %nyx_string* @nyx_string_concat(%nyx_string* %42, %nyx_string* %43)
  %45 = getelementptr [3 x i8], [3 x i8]* @.str10, i32 0, i32 0
  %46 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str10.c, i8* %45)
  %47 = call %nyx_string* @nyx_string_concat(%nyx_string* %44, %nyx_string* %46)
  %48 = load %nyx_string*, %nyx_string** %err_msg.ptr
  %49 = call %nyx_string* @nyx_string_concat(%nyx_string* %47, %nyx_string* %48)
  %50 = ptrtoint %nyx_string* %49 to i64
  call void @nyx_array_push({ i64, i8* }* %40, i64 %50)
  br label %merge11
else10:
  %51 = load { i64, i8* }*, { i64, i8* }** @g_errors
  %52 = getelementptr [9 x i8], [9 x i8]* @.str11, i32 0, i32 0
  %53 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str11.c, i8* %52)
  %54 = getelementptr [9 x i8], [9 x i8]* @.str12, i32 0, i32 0
  %55 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str12.c, i8* %54)
  %56 = call %nyx_string* @msg(%nyx_string* %53, %nyx_string* %55)
  %57 = getelementptr [3 x i8], [3 x i8]* @.str13, i32 0, i32 0
  %58 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str13.c, i8* %57)
  %59 = call %nyx_string* @nyx_string_concat(%nyx_string* %56, %nyx_string* %58)
  %60 = load %nyx_string*, %nyx_string** @g_current_fn
  %61 = call %nyx_string* @nyx_string_concat(%nyx_string* %59, %nyx_string* %60)
  %62 = getelementptr [2 x i8], [2 x i8]* @.str14, i32 0, i32 0
  %63 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str14.c, i8* %62)
  %64 = call %nyx_string* @nyx_string_concat(%nyx_string* %61, %nyx_string* %63)
  %65 = load %nyx_string*, %nyx_string** %16
  %66 = call %nyx_string* @nyx_string_concat(%nyx_string* %64, %nyx_string* %65)
  %67 = getelementptr [3 x i8], [3 x i8]* @.str15, i32 0, i32 0
  %68 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str15.c, i8* %67)
  %69 = call %nyx_string* @nyx_string_concat(%nyx_string* %66, %nyx_string* %68)
  %70 = load %nyx_string*, %nyx_string** %err_msg.ptr
  %71 = call %nyx_string* @nyx_string_concat(%nyx_string* %69, %nyx_string* %70)
  %72 = ptrtoint %nyx_string* %71 to i64
  call void @nyx_array_push({ i64, i8* }* %51, i64 %72)
  br label %merge11
merge11:
  %73 = load { i64, i8* }*, { i64, i8* }** @g_diag_codes
  %74 = load %nyx_string*, %nyx_string** %code.ptr
  %75 = ptrtoint %nyx_string* %74 to i64
  call void @nyx_array_push({ i64, i8* }* %73, i64 %75)
  %76 = load { i64, i8* }*, { i64, i8* }** @g_diag_msgs
  %77 = load %nyx_string*, %nyx_string** %err_msg.ptr
  %78 = ptrtoint %nyx_string* %77 to i64
  call void @nyx_array_push({ i64, i8* }* %76, i64 %78)
  %79 = load { i64, i8* }*, { i64, i8* }** @g_diag_fns
  %80 = load %nyx_string*, %nyx_string** @g_current_fn
  %81 = ptrtoint %nyx_string* %80 to i64
  call void @nyx_array_push({ i64, i8* }* %79, i64 %81)
  %82 = load { i64, i8* }*, { i64, i8* }** @g_diag_hints
  %83 = load %nyx_string*, %nyx_string** %hint.ptr
  %84 = ptrtoint %nyx_string* %83 to i64
  call void @nyx_array_push({ i64, i8* }* %82, i64 %84)
  %85 = load { i64, i8* }*, { i64, i8* }** @g_diag_lines
  %86 = load i64, i64* @g_cur_line
  call void @nyx_array_push({ i64, i8* }* %85, i64 %86)
  %87 = load { i64, i8* }*, { i64, i8* }** @g_diag_cols
  %88 = load i64, i64* @g_cur_col
  call void @nyx_array_push({ i64, i8* }* %87, i64 %88)
  ret i64 0
}

define internal i64 @sem_error(
%nyx_string* %err_msg.param) {
  %err_msg.ptr = alloca %nyx_string*
  store %nyx_string* %err_msg.param, %nyx_string** %err_msg.ptr
  %89 = getelementptr [8 x i8], [8 x i8]* @.str16, i32 0, i32 0
  %90 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str16.c, i8* %89)
  %91 = load %nyx_string*, %nyx_string** %err_msg.ptr
  %92 = getelementptr [1 x i8], [1 x i8]* @.str17, i32 0, i32 0
  %93 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str17.c, i8* %92)
  %94 = call i64 @sem_diag(%nyx_string* %90, %nyx_string* %91, %nyx_string* %93)
  ret i64 %94
}

define internal %nyx_string* @diag_json_escape(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %95 = getelementptr [1 x i8], [1 x i8]* @.str18, i32 0, i32 0
  %96 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str18.c, i8* %95)
  %97 = alloca %nyx_string*
  store %nyx_string* %96, %nyx_string** %97
  %98 = alloca i64
  store i64 0, i64* %98
  %99 = alloca i64
  store i64 0, i64* %99
  %100 = load %nyx_string*, %nyx_string** %s.ptr
  %101 = call i64 @nyx_string_byte_length(%nyx_string* %100)
  %102 = alloca i64
  store i64 %101, i64* %102
  %103 = getelementptr [1 x i8], [1 x i8]* @.str19, i32 0, i32 0
  %104 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str19.c, i8* %103)
  %105 = alloca %nyx_string*
  store %nyx_string* %104, %nyx_string** %105
  %106 = getelementptr [3 x i8], [3 x i8]* @.str20, i32 0, i32 0
  %107 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str20.c, i8* %106)
  %108 = alloca %nyx_string*
  store %nyx_string* %107, %nyx_string** %108
  %109 = getelementptr [3 x i8], [3 x i8]* @.str21, i32 0, i32 0
  %110 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str21.c, i8* %109)
  %111 = alloca %nyx_string*
  store %nyx_string* %110, %nyx_string** %111
  %112 = getelementptr [3 x i8], [3 x i8]* @.str22, i32 0, i32 0
  %113 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str22.c, i8* %112)
  %114 = alloca %nyx_string*
  store %nyx_string* %113, %nyx_string** %114
  %115 = getelementptr [3 x i8], [3 x i8]* @.str23, i32 0, i32 0
  %116 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str23.c, i8* %115)
  %117 = alloca %nyx_string*
  store %nyx_string* %116, %nyx_string** %117
  %118 = getelementptr [3 x i8], [3 x i8]* @.str24, i32 0, i32 0
  %119 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str24.c, i8* %118)
  %120 = alloca %nyx_string*
  store %nyx_string* %119, %nyx_string** %120
  br label %while_cond12
while_cond12:
  %121 = load i64, i64* %99
  %122 = load i64, i64* %102
  %123 = icmp slt i64 %121, %122
  br i1 %123, label %while_body13, label %while_end14
while_body13:
  %124 = load %nyx_string*, %nyx_string** %s.ptr
  %125 = load i64, i64* %99
  %126 = call i8 @nyx_string_char_at(%nyx_string* %124, i64 %125)
  %127 = zext i8 %126 to i64
  %128 = alloca i64
  store i64 %127, i64* %128
  %129 = load %nyx_string*, %nyx_string** %105
  %130 = alloca %nyx_string*
  store %nyx_string* %129, %nyx_string** %130
  %131 = load i64, i64* %128
  %132 = icmp eq i64 %131, 34
  br i1 %132, label %then15, label %else16
then15:
  %133 = load %nyx_string*, %nyx_string** %108
  store %nyx_string* %133, %nyx_string** %130
  br label %merge17
else16:
  br label %merge17
merge17:
  %134 = load i64, i64* %128
  %135 = icmp eq i64 %134, 92
  br i1 %135, label %then18, label %else19
then18:
  %136 = load %nyx_string*, %nyx_string** %111
  store %nyx_string* %136, %nyx_string** %130
  br label %merge20
else19:
  br label %merge20
merge20:
  %137 = load i64, i64* %128
  %138 = icmp eq i64 %137, 10
  br i1 %138, label %then21, label %else22
then21:
  %139 = load %nyx_string*, %nyx_string** %114
  store %nyx_string* %139, %nyx_string** %130
  br label %merge23
else22:
  br label %merge23
merge23:
  %140 = load i64, i64* %128
  %141 = icmp eq i64 %140, 13
  br i1 %141, label %then24, label %else25
then24:
  %142 = load %nyx_string*, %nyx_string** %117
  store %nyx_string* %142, %nyx_string** %130
  br label %merge26
else25:
  br label %merge26
merge26:
  %143 = load i64, i64* %128
  %144 = icmp eq i64 %143, 9
  br i1 %144, label %then27, label %else28
then27:
  %145 = load %nyx_string*, %nyx_string** %120
  store %nyx_string* %145, %nyx_string** %130
  br label %merge29
else28:
  br label %merge29
merge29:
  %146 = load %nyx_string*, %nyx_string** %130
  %147 = load %nyx_string*, %nyx_string** %105
  %148 = call i1 @nyx_string_equals(%nyx_string* %146, %nyx_string* %147)
  %149 = xor i1 %148, true
  br i1 %149, label %then30, label %else31
then30:
  %150 = load %nyx_string*, %nyx_string** %97
  %151 = load %nyx_string*, %nyx_string** %s.ptr
  %152 = load i64, i64* %98
  %153 = load i64, i64* %99
  %154 = call %nyx_string* @nyx_string_substring(%nyx_string* %151, i64 %152, i64 %153)
  %155 = call %nyx_string* @nyx_string_concat(%nyx_string* %150, %nyx_string* %154)
  %156 = load %nyx_string*, %nyx_string** %130
  %157 = call %nyx_string* @nyx_string_concat(%nyx_string* %155, %nyx_string* %156)
  store %nyx_string* %157, %nyx_string** %97
  %158 = load i64, i64* %99
  %159 = add i64 %158, 1
  store i64 %159, i64* %98
  br label %merge32
else31:
  br label %merge32
merge32:
  %160 = load i64, i64* %99
  %161 = add i64 %160, 1
  store i64 %161, i64* %99
  br label %while_cond12
while_end14:
  %162 = load i64, i64* %98
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %then33, label %else34
then33:
  %164 = load %nyx_string*, %nyx_string** %s.ptr
  ret %nyx_string* %164
else34:
  br label %merge35
merge35:
  %165 = load %nyx_string*, %nyx_string** %97
  %166 = load %nyx_string*, %nyx_string** %s.ptr
  %167 = load i64, i64* %98
  %168 = load i64, i64* %102
  %169 = call %nyx_string* @nyx_string_substring(%nyx_string* %166, i64 %167, i64 %168)
  %170 = call %nyx_string* @nyx_string_concat(%nyx_string* %165, %nyx_string* %169)
  ret %nyx_string* %170
}

define internal %nyx_string* @diag_to_json(
i64 %i.param) {
  %i.ptr = alloca i64
  store i64 %i.param, i64* %i.ptr
  %171 = load { i64, i8* }*, { i64, i8* }** @g_diag_codes
  %172 = load i64, i64* %i.ptr
  %173 = call i64 @nyx_array_get({ i64, i8* }* %171, i64 %172)
  %174 = inttoptr i64 %173 to %nyx_string*
  %175 = alloca %nyx_string*
  store %nyx_string* %174, %nyx_string** %175
  %176 = load { i64, i8* }*, { i64, i8* }** @g_diag_msgs
  %177 = load i64, i64* %i.ptr
  %178 = call i64 @nyx_array_get({ i64, i8* }* %176, i64 %177)
  %179 = inttoptr i64 %178 to %nyx_string*
  %180 = alloca %nyx_string*
  store %nyx_string* %179, %nyx_string** %180
  %181 = load { i64, i8* }*, { i64, i8* }** @g_diag_fns
  %182 = load i64, i64* %i.ptr
  %183 = call i64 @nyx_array_get({ i64, i8* }* %181, i64 %182)
  %184 = inttoptr i64 %183 to %nyx_string*
  %185 = alloca %nyx_string*
  store %nyx_string* %184, %nyx_string** %185
  %186 = load { i64, i8* }*, { i64, i8* }** @g_diag_hints
  %187 = load i64, i64* %i.ptr
  %188 = call i64 @nyx_array_get({ i64, i8* }* %186, i64 %187)
  %189 = inttoptr i64 %188 to %nyx_string*
  %190 = alloca %nyx_string*
  store %nyx_string* %189, %nyx_string** %190
  %191 = load { i64, i8* }*, { i64, i8* }** @g_diag_lines
  %192 = load i64, i64* %i.ptr
  %193 = call i64 @nyx_array_get({ i64, i8* }* %191, i64 %192)
  %194 = alloca i64
  store i64 %193, i64* %194
  %195 = load { i64, i8* }*, { i64, i8* }** @g_diag_cols
  %196 = load i64, i64* %i.ptr
  %197 = call i64 @nyx_array_get({ i64, i8* }* %195, i64 %196)
  %198 = alloca i64
  store i64 %197, i64* %198
  %199 = getelementptr [10 x i8], [10 x i8]* @.str25, i32 0, i32 0
  %200 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str25.c, i8* %199)
  %201 = load %nyx_string*, %nyx_string** %175
  %202 = call %nyx_string* @diag_json_escape(%nyx_string* %201)
  %203 = call %nyx_string* @nyx_string_concat(%nyx_string* %200, %nyx_string* %202)
  %204 = getelementptr [2 x i8], [2 x i8]* @.str26, i32 0, i32 0
  %205 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str26.c, i8* %204)
  %206 = call %nyx_string* @nyx_string_concat(%nyx_string* %203, %nyx_string* %205)
  %207 = alloca %nyx_string*
  store %nyx_string* %206, %nyx_string** %207
  %208 = load %nyx_string*, %nyx_string** %207
  %209 = getelementptr [20 x i8], [20 x i8]* @.str27, i32 0, i32 0
  %210 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str27.c, i8* %209)
  %211 = call %nyx_string* @nyx_string_concat(%nyx_string* %208, %nyx_string* %210)
  store %nyx_string* %211, %nyx_string** %207
  %212 = load %nyx_string*, %nyx_string** %207
  %213 = getelementptr [20 x i8], [20 x i8]* @.str28, i32 0, i32 0
  %214 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str28.c, i8* %213)
  %215 = call %nyx_string* @nyx_string_concat(%nyx_string* %212, %nyx_string* %214)
  store %nyx_string* %215, %nyx_string** %207
  %216 = load i64, i64* %194
  %217 = icmp sgt i64 %216, 0
  br i1 %217, label %then36, label %else37
then36:
  %218 = load %nyx_string*, %nyx_string** %207
  %219 = getelementptr [9 x i8], [9 x i8]* @.str29, i32 0, i32 0
  %220 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str29.c, i8* %219)
  %221 = call %nyx_string* @nyx_string_concat(%nyx_string* %218, %nyx_string* %220)
  %222 = load i64, i64* %194
  %223 = call %nyx_string* @nyx_string_from_int(i64 %222)
  %224 = call %nyx_string* @nyx_string_concat(%nyx_string* %221, %nyx_string* %223)
  store %nyx_string* %224, %nyx_string** %207
  %225 = load %nyx_string*, %nyx_string** %207
  %226 = getelementptr [11 x i8], [11 x i8]* @.str30, i32 0, i32 0
  %227 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str30.c, i8* %226)
  %228 = call %nyx_string* @nyx_string_concat(%nyx_string* %225, %nyx_string* %227)
  %229 = load i64, i64* %198
  %230 = call %nyx_string* @nyx_string_from_int(i64 %229)
  %231 = call %nyx_string* @nyx_string_concat(%nyx_string* %228, %nyx_string* %230)
  store %nyx_string* %231, %nyx_string** %207
  br label %merge38
else37:
  br label %merge38
merge38:
  %232 = load %nyx_string*, %nyx_string** %185
  %233 = getelementptr [1 x i8], [1 x i8]* @.str31, i32 0, i32 0
  %234 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str31.c, i8* %233)
  %235 = call i1 @nyx_string_equals(%nyx_string* %232, %nyx_string* %234)
  %236 = xor i1 %235, true
  br i1 %236, label %then39, label %else40
then39:
  %237 = load %nyx_string*, %nyx_string** %207
  %238 = getelementptr [14 x i8], [14 x i8]* @.str32, i32 0, i32 0
  %239 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str32.c, i8* %238)
  %240 = call %nyx_string* @nyx_string_concat(%nyx_string* %237, %nyx_string* %239)
  %241 = load %nyx_string*, %nyx_string** %185
  %242 = call %nyx_string* @diag_json_escape(%nyx_string* %241)
  %243 = call %nyx_string* @nyx_string_concat(%nyx_string* %240, %nyx_string* %242)
  %244 = getelementptr [2 x i8], [2 x i8]* @.str33, i32 0, i32 0
  %245 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str33.c, i8* %244)
  %246 = call %nyx_string* @nyx_string_concat(%nyx_string* %243, %nyx_string* %245)
  store %nyx_string* %246, %nyx_string** %207
  br label %merge41
else40:
  br label %merge41
merge41:
  %247 = load %nyx_string*, %nyx_string** %207
  %248 = getelementptr [13 x i8], [13 x i8]* @.str34, i32 0, i32 0
  %249 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str34.c, i8* %248)
  %250 = call %nyx_string* @nyx_string_concat(%nyx_string* %247, %nyx_string* %249)
  %251 = load %nyx_string*, %nyx_string** %180
  %252 = call %nyx_string* @diag_json_escape(%nyx_string* %251)
  %253 = call %nyx_string* @nyx_string_concat(%nyx_string* %250, %nyx_string* %252)
  %254 = getelementptr [2 x i8], [2 x i8]* @.str35, i32 0, i32 0
  %255 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str35.c, i8* %254)
  %256 = call %nyx_string* @nyx_string_concat(%nyx_string* %253, %nyx_string* %255)
  store %nyx_string* %256, %nyx_string** %207
  %257 = load %nyx_string*, %nyx_string** %190
  %258 = getelementptr [1 x i8], [1 x i8]* @.str36, i32 0, i32 0
  %259 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str36.c, i8* %258)
  %260 = call i1 @nyx_string_equals(%nyx_string* %257, %nyx_string* %259)
  %261 = xor i1 %260, true
  br i1 %261, label %then42, label %else43
then42:
  %262 = load %nyx_string*, %nyx_string** %207
  %263 = getelementptr [16 x i8], [16 x i8]* @.str37, i32 0, i32 0
  %264 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str37.c, i8* %263)
  %265 = call %nyx_string* @nyx_string_concat(%nyx_string* %262, %nyx_string* %264)
  %266 = load %nyx_string*, %nyx_string** %190
  %267 = call %nyx_string* @diag_json_escape(%nyx_string* %266)
  %268 = call %nyx_string* @nyx_string_concat(%nyx_string* %265, %nyx_string* %267)
  %269 = getelementptr [2 x i8], [2 x i8]* @.str38, i32 0, i32 0
  %270 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str38.c, i8* %269)
  %271 = call %nyx_string* @nyx_string_concat(%nyx_string* %268, %nyx_string* %270)
  store %nyx_string* %271, %nyx_string** %207
  br label %merge44
else43:
  br label %merge44
merge44:
  %272 = load %nyx_string*, %nyx_string** %207
  %273 = getelementptr [2 x i8], [2 x i8]* @.str39, i32 0, i32 0
  %274 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str39.c, i8* %273)
  %275 = call %nyx_string* @nyx_string_concat(%nyx_string* %272, %nyx_string* %274)
  ret %nyx_string* %275
}

define internal %ASTNode @get_node_at(
%ASTNode %node.param, i64 %index.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %index.ptr = alloca i64
  store i64 %index.param, i64* %index.ptr
  %276 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %277 = load { i64, i8* }*, { i64, i8* }** %276
  %278 = alloca { i64, i8* }*
  store { i64, i8* }* %277, { i64, i8* }** %278
  %279 = load { i64, i8* }*, { i64, i8* }** %278
  %280 = load i64, i64* %index.ptr
  %281 = call i64 @nyx_array_get({ i64, i8* }* %279, i64 %280)
  %282 = inttoptr i64 %281 to { i64, i8* }*
  %283 = call i64 @nyx_array_get({ i64, i8* }* %282, i64 0)
  %284 = call i64 @nyx_array_get({ i64, i8* }* %282, i64 1)
  %285 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %282, i64 2)
  %286 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %282, i64 3)
  %287 = inttoptr i64 %283 to %nyx_string*
  %288 = inttoptr i64 %284 to { i64, i8* }*
  %289 = alloca %ASTNode
  %290 = getelementptr inbounds %ASTNode, %ASTNode* %289, i32 0, i32 0
  store %nyx_string* %287, %nyx_string** %290
  %291 = getelementptr inbounds %ASTNode, %ASTNode* %289, i32 0, i32 1
  store { i64, i8* }* %288, { i64, i8* }** %291
  %292 = getelementptr inbounds %ASTNode, %ASTNode* %289, i32 0, i32 2
  store i64 %285, i64* %292
  %293 = getelementptr inbounds %ASTNode, %ASTNode* %289, i32 0, i32 3
  store i64 %286, i64* %293
  %294 = load %ASTNode, %ASTNode* %289
  %295 = alloca %ASTNode
  store %ASTNode %294, %ASTNode* %295
  %296 = load %ASTNode, %ASTNode* %295
  ret %ASTNode %296
}

define internal %nyx_string* @get_string_at(
%ASTNode %node.param, i64 %index.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %index.ptr = alloca i64
  store i64 %index.param, i64* %index.ptr
  %297 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %298 = load { i64, i8* }*, { i64, i8* }** %297
  %299 = alloca { i64, i8* }*
  store { i64, i8* }* %298, { i64, i8* }** %299
  %300 = load { i64, i8* }*, { i64, i8* }** %299
  %301 = load i64, i64* %index.ptr
  %302 = call i64 @nyx_array_get({ i64, i8* }* %300, i64 %301)
  %303 = inttoptr i64 %302 to %nyx_string*
  %304 = alloca %nyx_string*
  store %nyx_string* %303, %nyx_string** %304
  %305 = load %nyx_string*, %nyx_string** %304
  ret %nyx_string* %305
}

define internal { i64, i8* }* @get_array_at(
%ASTNode %node.param, i64 %index.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %index.ptr = alloca i64
  store i64 %index.param, i64* %index.ptr
  %306 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %307 = load { i64, i8* }*, { i64, i8* }** %306
  %308 = alloca { i64, i8* }*
  store { i64, i8* }* %307, { i64, i8* }** %308
  %309 = load { i64, i8* }*, { i64, i8* }** %308
  %310 = load i64, i64* %index.ptr
  %311 = call i64 @nyx_array_get({ i64, i8* }* %309, i64 %310)
  %312 = inttoptr i64 %311 to { i64, i8* }*
  %313 = alloca { i64, i8* }*
  store { i64, i8* }* %312, { i64, i8* }** %313
  %314 = load { i64, i8* }*, { i64, i8* }** %313
  ret { i64, i8* }* %314
}

define internal i1 @get_bool_at(
%ASTNode %node.param, i64 %index.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %index.ptr = alloca i64
  store i64 %index.param, i64* %index.ptr
  %315 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %316 = load { i64, i8* }*, { i64, i8* }** %315
  %317 = alloca { i64, i8* }*
  store { i64, i8* }* %316, { i64, i8* }** %317
  %318 = load { i64, i8* }*, { i64, i8* }** %317
  %319 = load i64, i64* %index.ptr
  %320 = call i64 @nyx_array_get({ i64, i8* }* %318, i64 %319)
  %321 = trunc i64 %320 to i1
  %322 = alloca i1
  store i1 %321, i1* %322
  %323 = load i1, i1* %322
  ret i1 %323
}

define internal i64 @scope_push(
) {
  %324 = load i64, i64* @g_marks_count
  %325 = load { i64, i8* }*, { i64, i8* }** @g_scope_marks
  %326 = call i64 @nyx_array_length({ i64, i8* }* %325)
  %327 = icmp slt i64 %324, %326
  br i1 %327, label %then45, label %else46
then45:
  %328 = load { i64, i8* }*, { i64, i8* }** @g_scope_marks
  %329 = load i64, i64* @g_marks_count
  %330 = load i64, i64* @g_sym_count
  call void @nyx_array_set({ i64, i8* }* %328, i64 %329, i64 %330)
  br label %merge47
else46:
  %331 = load { i64, i8* }*, { i64, i8* }** @g_scope_marks
  %332 = load i64, i64* @g_sym_count
  call void @nyx_array_push({ i64, i8* }* %331, i64 %332)
  br label %merge47
merge47:
  %333 = load i64, i64* @g_marks_count
  %334 = add i64 %333, 1
  store i64 %334, i64* @g_marks_count
  ret i64 0
}

define internal i64 @scope_pop(
) {
  %335 = load i64, i64* @g_marks_count
  %336 = sub i64 %335, 1
  store i64 %336, i64* @g_marks_count
  %337 = load { i64, i8* }*, { i64, i8* }** @g_scope_marks
  %338 = load i64, i64* @g_marks_count
  %339 = call i64 @nyx_array_get({ i64, i8* }* %337, i64 %338)
  %340 = alloca i64
  store i64 %339, i64* %340
  %341 = load i64, i64* %340
  store i64 %341, i64* @g_sym_count
  ret i64 0
}

define internal i64 @scope_current_start(
) {
  %342 = load i64, i64* @g_marks_count
  %343 = icmp sgt i64 %342, 0
  br i1 %343, label %then48, label %else49
then48:
  %344 = load i64, i64* @g_marks_count
  %345 = sub i64 %344, 1
  %346 = alloca i64
  store i64 %345, i64* %346
  %347 = load { i64, i8* }*, { i64, i8* }** @g_scope_marks
  %348 = load i64, i64* %346
  %349 = call i64 @nyx_array_get({ i64, i8* }* %347, i64 %348)
  %350 = alloca i64
  store i64 %349, i64* %350
  %351 = load i64, i64* %350
  ret i64 %351
else49:
  br label %merge50
merge50:
  ret i64 0
}

define internal i1 @scope_has_in_current(
%nyx_string* %name.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %352 = call i64 @scope_current_start()
  %353 = alloca i64
  store i64 %352, i64* %353
  %354 = load i64, i64* %353
  %355 = alloca i64
  store i64 %354, i64* %355
  br label %while_cond51
while_cond51:
  %356 = load i64, i64* %355
  %357 = load i64, i64* @g_sym_count
  %358 = icmp slt i64 %356, %357
  br i1 %358, label %while_body52, label %while_end53
while_body52:
  %359 = load { i64, i8* }*, { i64, i8* }** @g_sym_names
  %360 = load i64, i64* %355
  %361 = call i64 @nyx_array_get({ i64, i8* }* %359, i64 %360)
  %362 = inttoptr i64 %361 to %nyx_string*
  %363 = alloca %nyx_string*
  store %nyx_string* %362, %nyx_string** %363
  %364 = load %nyx_string*, %nyx_string** %363
  %365 = load %nyx_string*, %nyx_string** %name.ptr
  %366 = call i1 @nyx_string_equals(%nyx_string* %364, %nyx_string* %365)
  br i1 %366, label %then54, label %else55
then54:
  ret i1 1
else55:
  br label %merge56
merge56:
  %367 = load i64, i64* %355
  %368 = add i64 %367, 1
  store i64 %368, i64* %355
  br label %while_cond51
while_end53:
  ret i1 0
}

define internal i64 @scope_declare(
%nyx_string* %name.param, %nyx_string* %kind.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %kind.ptr = alloca %nyx_string*
  store %nyx_string* %kind.param, %nyx_string** %kind.ptr
  %369 = load i64, i64* @g_sym_count
  %370 = load { i64, i8* }*, { i64, i8* }** @g_sym_names
  %371 = call i64 @nyx_array_length({ i64, i8* }* %370)
  %372 = icmp slt i64 %369, %371
  br i1 %372, label %then57, label %else58
then57:
  %373 = load { i64, i8* }*, { i64, i8* }** @g_sym_names
  %374 = load i64, i64* @g_sym_count
  %375 = load %nyx_string*, %nyx_string** %name.ptr
  %376 = ptrtoint %nyx_string* %375 to i64
  call void @nyx_array_set({ i64, i8* }* %373, i64 %374, i64 %376)
  %377 = load { i64, i8* }*, { i64, i8* }** @g_sym_kinds
  %378 = load i64, i64* @g_sym_count
  %379 = load %nyx_string*, %nyx_string** %kind.ptr
  %380 = ptrtoint %nyx_string* %379 to i64
  call void @nyx_array_set({ i64, i8* }* %377, i64 %378, i64 %380)
  %381 = load { i64, i8* }*, { i64, i8* }** @g_sym_arities
  %382 = load i64, i64* @g_sym_count
  %383 = sub i64 0, 1
  call void @nyx_array_set({ i64, i8* }* %381, i64 %382, i64 %383)
  %384 = load { i64, i8* }*, { i64, i8* }** @g_var_types
  %385 = load i64, i64* @g_sym_count
  %386 = call { i64, i8* }* @ty_unknown()
  %387 = ptrtoint { i64, i8* }* %386 to i64
  call void @nyx_array_set({ i64, i8* }* %384, i64 %385, i64 %387)
  br label %merge59
else58:
  %388 = load { i64, i8* }*, { i64, i8* }** @g_sym_names
  %389 = load %nyx_string*, %nyx_string** %name.ptr
  %390 = ptrtoint %nyx_string* %389 to i64
  call void @nyx_array_push({ i64, i8* }* %388, i64 %390)
  %391 = load { i64, i8* }*, { i64, i8* }** @g_sym_kinds
  %392 = load %nyx_string*, %nyx_string** %kind.ptr
  %393 = ptrtoint %nyx_string* %392 to i64
  call void @nyx_array_push({ i64, i8* }* %391, i64 %393)
  %394 = load { i64, i8* }*, { i64, i8* }** @g_sym_arities
  %395 = sub i64 0, 1
  call void @nyx_array_push({ i64, i8* }* %394, i64 %395)
  %396 = load { i64, i8* }*, { i64, i8* }** @g_var_types
  %397 = call { i64, i8* }* @ty_unknown()
  %398 = ptrtoint { i64, i8* }* %397 to i64
  call void @nyx_array_push({ i64, i8* }* %396, i64 %398)
  br label %merge59
merge59:
  %399 = load i64, i64* @g_sym_count
  %400 = add i64 %399, 1
  store i64 %400, i64* @g_sym_count
  ret i64 0
}

define internal i64 @scope_declare_fn(
%nyx_string* %name.param, %nyx_string* %kind.param, i64 %arity.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %kind.ptr = alloca %nyx_string*
  store %nyx_string* %kind.param, %nyx_string** %kind.ptr
  %arity.ptr = alloca i64
  store i64 %arity.param, i64* %arity.ptr
  %401 = load i64, i64* @g_sym_count
  %402 = load { i64, i8* }*, { i64, i8* }** @g_sym_names
  %403 = call i64 @nyx_array_length({ i64, i8* }* %402)
  %404 = icmp slt i64 %401, %403
  br i1 %404, label %then60, label %else61
then60:
  %405 = load { i64, i8* }*, { i64, i8* }** @g_sym_names
  %406 = load i64, i64* @g_sym_count
  %407 = load %nyx_string*, %nyx_string** %name.ptr
  %408 = ptrtoint %nyx_string* %407 to i64
  call void @nyx_array_set({ i64, i8* }* %405, i64 %406, i64 %408)
  %409 = load { i64, i8* }*, { i64, i8* }** @g_sym_kinds
  %410 = load i64, i64* @g_sym_count
  %411 = load %nyx_string*, %nyx_string** %kind.ptr
  %412 = ptrtoint %nyx_string* %411 to i64
  call void @nyx_array_set({ i64, i8* }* %409, i64 %410, i64 %412)
  %413 = load { i64, i8* }*, { i64, i8* }** @g_sym_arities
  %414 = load i64, i64* @g_sym_count
  %415 = load i64, i64* %arity.ptr
  call void @nyx_array_set({ i64, i8* }* %413, i64 %414, i64 %415)
  %416 = load { i64, i8* }*, { i64, i8* }** @g_var_types
  %417 = load i64, i64* @g_sym_count
  %418 = call { i64, i8* }* @ty_unknown()
  %419 = ptrtoint { i64, i8* }* %418 to i64
  call void @nyx_array_set({ i64, i8* }* %416, i64 %417, i64 %419)
  br label %merge62
else61:
  %420 = load { i64, i8* }*, { i64, i8* }** @g_sym_names
  %421 = load %nyx_string*, %nyx_string** %name.ptr
  %422 = ptrtoint %nyx_string* %421 to i64
  call void @nyx_array_push({ i64, i8* }* %420, i64 %422)
  %423 = load { i64, i8* }*, { i64, i8* }** @g_sym_kinds
  %424 = load %nyx_string*, %nyx_string** %kind.ptr
  %425 = ptrtoint %nyx_string* %424 to i64
  call void @nyx_array_push({ i64, i8* }* %423, i64 %425)
  %426 = load { i64, i8* }*, { i64, i8* }** @g_sym_arities
  %427 = load i64, i64* %arity.ptr
  call void @nyx_array_push({ i64, i8* }* %426, i64 %427)
  %428 = load { i64, i8* }*, { i64, i8* }** @g_var_types
  %429 = call { i64, i8* }* @ty_unknown()
  %430 = ptrtoint { i64, i8* }* %429 to i64
  call void @nyx_array_push({ i64, i8* }* %428, i64 %430)
  br label %merge62
merge62:
  %431 = load i64, i64* @g_sym_count
  %432 = add i64 %431, 1
  store i64 %432, i64* @g_sym_count
  ret i64 0
}

define internal i64 @set_last_var_type(
{ i64, i8* }* %t.param) {
  %t.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %t.param, { i64, i8* }** %t.ptr
  %433 = load i64, i64* @g_sym_count
  %434 = sub i64 %433, 1
  %435 = alloca i64
  store i64 %434, i64* %435
  %436 = load i64, i64* %435
  %437 = icmp sge i64 %436, 0
  br i1 %437, label %then63, label %else64
then63:
  %438 = load i64, i64* %435
  %439 = load { i64, i8* }*, { i64, i8* }** @g_var_types
  %440 = call i64 @nyx_array_length({ i64, i8* }* %439)
  %441 = icmp slt i64 %438, %440
  br i1 %441, label %then66, label %else67
then66:
  %442 = load { i64, i8* }*, { i64, i8* }** @g_var_types
  %443 = load i64, i64* %435
  %444 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %445 = ptrtoint { i64, i8* }* %444 to i64
  call void @nyx_array_set({ i64, i8* }* %442, i64 %443, i64 %445)
  br label %merge68
else67:
  br label %merge68
merge68:
  br label %merge65
else64:
  br label %merge65
merge65:
  ret i64 0
}

define internal { i64, i8* }* @lookup_var_type(
%nyx_string* %name.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %446 = load i64, i64* @g_sym_count
  %447 = sub i64 %446, 1
  %448 = alloca i64
  store i64 %447, i64* %448
  br label %while_cond69
while_cond69:
  %449 = load i64, i64* %448
  %450 = icmp sge i64 %449, 0
  br i1 %450, label %while_body70, label %while_end71
while_body70:
  %451 = load { i64, i8* }*, { i64, i8* }** @g_sym_names
  %452 = load i64, i64* %448
  %453 = call i64 @nyx_array_get({ i64, i8* }* %451, i64 %452)
  %454 = inttoptr i64 %453 to %nyx_string*
  %455 = alloca %nyx_string*
  store %nyx_string* %454, %nyx_string** %455
  %456 = load %nyx_string*, %nyx_string** %455
  %457 = load %nyx_string*, %nyx_string** %name.ptr
  %458 = call i1 @nyx_string_equals(%nyx_string* %456, %nyx_string* %457)
  br i1 %458, label %then72, label %else73
then72:
  %459 = load i64, i64* %448
  %460 = load { i64, i8* }*, { i64, i8* }** @g_var_types
  %461 = call i64 @nyx_array_length({ i64, i8* }* %460)
  %462 = icmp slt i64 %459, %461
  br i1 %462, label %then75, label %else76
then75:
  %463 = load { i64, i8* }*, { i64, i8* }** @g_var_types
  %464 = load i64, i64* %448
  %465 = call i64 @nyx_array_get({ i64, i8* }* %463, i64 %464)
  %466 = inttoptr i64 %465 to { i64, i8* }*
  %467 = alloca { i64, i8* }*
  store { i64, i8* }* %466, { i64, i8* }** %467
  %468 = load { i64, i8* }*, { i64, i8* }** %467
  ret { i64, i8* }* %468
else76:
  br label %merge77
merge77:
  %469 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %469
else73:
  br label %merge74
merge74:
  %470 = load i64, i64* %448
  %471 = sub i64 %470, 1
  store i64 %471, i64* %448
  br label %while_cond69
while_end71:
  %472 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %472
}

define internal { i64, i8* }* @ty_of_expr(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %473 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 0
  %474 = load %nyx_string*, %nyx_string** %473
  %475 = alloca %nyx_string*
  store %nyx_string* %474, %nyx_string** %475
  %476 = load %nyx_string*, %nyx_string** %475
  %477 = getelementptr [11 x i8], [11 x i8]* @.str40, i32 0, i32 0
  %478 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str40.c, i8* %477)
  %479 = call i1 @nyx_string_equals(%nyx_string* %476, %nyx_string* %478)
  br i1 %479, label %then78, label %else79
then78:
  %480 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %481 = load { i64, i8* }*, { i64, i8* }** %480
  %482 = alloca { i64, i8* }*
  store { i64, i8* }* %481, { i64, i8* }** %482
  %483 = load { i64, i8* }*, { i64, i8* }** %482
  %484 = call i64 @nyx_array_length({ i64, i8* }* %483)
  %485 = icmp sgt i64 %484, 0
  br i1 %485, label %then81, label %else82
then81:
  %486 = load { i64, i8* }*, { i64, i8* }** %482
  %487 = call i64 @nyx_array_get({ i64, i8* }* %486, i64 0)
  %488 = inttoptr i64 %487 to %nyx_string*
  %489 = alloca %nyx_string*
  store %nyx_string* %488, %nyx_string** %489
  %490 = load %nyx_string*, %nyx_string** %489
  %491 = call { i64, i8* }* @lookup_var_type(%nyx_string* %490)
  ret { i64, i8* }* %491
else82:
  br label %merge83
merge83:
  %492 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %492
else79:
  br label %merge80
merge80:
  %493 = load %nyx_string*, %nyx_string** %475
  %494 = getelementptr [12 x i8], [12 x i8]* @.str41, i32 0, i32 0
  %495 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str41.c, i8* %494)
  %496 = call i1 @nyx_string_equals(%nyx_string* %493, %nyx_string* %495)
  br i1 %496, label %then84, label %else85
then84:
  %497 = load %ASTNode, %ASTNode* %node.ptr
  %498 = call { i64, i8* }* @get_array_at(%ASTNode %497, i64 1)
  %499 = alloca { i64, i8* }*
  store { i64, i8* }* %498, { i64, i8* }** %499
  %500 = call { i64, i8* }* @ty_unknown()
  %501 = alloca { i64, i8* }*
  store { i64, i8* }* %500, { i64, i8* }** %501
  %502 = load { i64, i8* }*, { i64, i8* }** %499
  %503 = call i64 @nyx_array_length({ i64, i8* }* %502)
  %504 = icmp sgt i64 %503, 0
  br i1 %504, label %then87, label %else88
then87:
  %505 = load { i64, i8* }*, { i64, i8* }** %499
  %506 = call i64 @nyx_array_get({ i64, i8* }* %505, i64 0)
  %507 = inttoptr i64 %506 to { i64, i8* }*
  %508 = call i64 @nyx_array_get({ i64, i8* }* %507, i64 0)
  %509 = call i64 @nyx_array_get({ i64, i8* }* %507, i64 1)
  %510 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %507, i64 2)
  %511 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %507, i64 3)
  %512 = inttoptr i64 %508 to %nyx_string*
  %513 = inttoptr i64 %509 to { i64, i8* }*
  %514 = alloca %ASTNode
  %515 = getelementptr inbounds %ASTNode, %ASTNode* %514, i32 0, i32 0
  store %nyx_string* %512, %nyx_string** %515
  %516 = getelementptr inbounds %ASTNode, %ASTNode* %514, i32 0, i32 1
  store { i64, i8* }* %513, { i64, i8* }** %516
  %517 = getelementptr inbounds %ASTNode, %ASTNode* %514, i32 0, i32 2
  store i64 %510, i64* %517
  %518 = getelementptr inbounds %ASTNode, %ASTNode* %514, i32 0, i32 3
  store i64 %511, i64* %518
  %519 = load %ASTNode, %ASTNode* %514
  %520 = alloca %ASTNode
  store %ASTNode %519, %ASTNode* %520
  %521 = load %ASTNode, %ASTNode* %520
  %522 = call { i64, i8* }* @ty_of_expr(%ASTNode %521)
  store { i64, i8* }* %522, { i64, i8* }** %501
  br label %merge89
else88:
  br label %merge89
merge89:
  %523 = call { i64, i8* }* @ty_string()
  %524 = load { i64, i8* }*, { i64, i8* }** %501
  %525 = call { i64, i8* }* @ty_map({ i64, i8* }* %523, { i64, i8* }* %524)
  ret { i64, i8* }* %525
else85:
  br label %merge86
merge86:
  %526 = load %nyx_string*, %nyx_string** %475
  %527 = getelementptr [5 x i8], [5 x i8]* @.str42, i32 0, i32 0
  %528 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str42.c, i8* %527)
  %529 = call i1 @nyx_string_equals(%nyx_string* %526, %nyx_string* %528)
  br i1 %529, label %then90, label %else91
then90:
  %530 = load %ASTNode, %ASTNode* %node.ptr
  %531 = call %ASTNode @get_node_at(%ASTNode %530, i64 0)
  %532 = alloca %ASTNode
  store %ASTNode %531, %ASTNode* %532
  %533 = getelementptr %ASTNode, %ASTNode* %532, i32 0, i32 0
  %534 = load %nyx_string*, %nyx_string** %533
  %535 = getelementptr [13 x i8], [13 x i8]* @.str43, i32 0, i32 0
  %536 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str43.c, i8* %535)
  %537 = call i1 @nyx_string_equals(%nyx_string* %534, %nyx_string* %536)
  br i1 %537, label %then93, label %else94
then93:
  %538 = getelementptr %ASTNode, %ASTNode* %532, i32 0, i32 1
  %539 = load { i64, i8* }*, { i64, i8* }** %538
  %540 = alloca { i64, i8* }*
  store { i64, i8* }* %539, { i64, i8* }** %540
  %541 = load { i64, i8* }*, { i64, i8* }** %540
  %542 = call i64 @nyx_array_length({ i64, i8* }* %541)
  %543 = icmp sgt i64 %542, 2
  br i1 %543, label %then96, label %else97
then96:
  %544 = load { i64, i8* }*, { i64, i8* }** %540
  %545 = call i64 @nyx_array_get({ i64, i8* }* %544, i64 0)
  %546 = inttoptr i64 %545 to { i64, i8* }*
  %547 = alloca { i64, i8* }*
  store { i64, i8* }* %546, { i64, i8* }** %547
  %548 = load { i64, i8* }*, { i64, i8* }** %547
  %549 = call i64 @nyx_array_length({ i64, i8* }* %548)
  %550 = icmp sgt i64 %549, 1
  br i1 %550, label %then99, label %else100
then99:
  %551 = load { i64, i8* }*, { i64, i8* }** %547
  %552 = call i64 @nyx_array_get({ i64, i8* }* %551, i64 0)
  %553 = inttoptr i64 %552 to %nyx_string*
  %554 = alloca %nyx_string*
  store %nyx_string* %553, %nyx_string** %554
  %555 = load %nyx_string*, %nyx_string** %554
  %556 = getelementptr [11 x i8], [11 x i8]* @.str44, i32 0, i32 0
  %557 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str44.c, i8* %556)
  %558 = call i1 @nyx_string_equals(%nyx_string* %555, %nyx_string* %557)
  br i1 %558, label %then102, label %else103
then102:
  %559 = load { i64, i8* }*, { i64, i8* }** %547
  %560 = call i64 @nyx_array_get({ i64, i8* }* %559, i64 1)
  %561 = inttoptr i64 %560 to { i64, i8* }*
  %562 = alloca { i64, i8* }*
  store { i64, i8* }* %561, { i64, i8* }** %562
  %563 = load { i64, i8* }*, { i64, i8* }** %562
  %564 = call i64 @nyx_array_get({ i64, i8* }* %563, i64 0)
  %565 = inttoptr i64 %564 to %nyx_string*
  %566 = alloca %nyx_string*
  store %nyx_string* %565, %nyx_string** %566
  %567 = load %nyx_string*, %nyx_string** %566
  %568 = call { i64, i8* }* @lookup_fn_sig(%nyx_string* %567)
  %569 = alloca { i64, i8* }*
  store { i64, i8* }* %568, { i64, i8* }** %569
  %570 = load { i64, i8* }*, { i64, i8* }** %569
  %571 = call i64 @nyx_array_length({ i64, i8* }* %570)
  %572 = icmp eq i64 %571, 3
  br i1 %572, label %then105, label %else106
then105:
  %573 = load { i64, i8* }*, { i64, i8* }** %569
  %574 = call i64 @nyx_array_get({ i64, i8* }* %573, i64 1)
  %575 = inttoptr i64 %574 to { i64, i8* }*
  %576 = alloca { i64, i8* }*
  store { i64, i8* }* %575, { i64, i8* }** %576
  %577 = load { i64, i8* }*, { i64, i8* }** %569
  %578 = call i64 @nyx_array_get({ i64, i8* }* %577, i64 2)
  %579 = inttoptr i64 %578 to { i64, i8* }*
  %580 = alloca { i64, i8* }*
  store { i64, i8* }* %579, { i64, i8* }** %580
  %581 = load { i64, i8* }*, { i64, i8* }** %540
  %582 = call i64 @nyx_array_get({ i64, i8* }* %581, i64 1)
  %583 = inttoptr i64 %582 to { i64, i8* }*
  %584 = alloca { i64, i8* }*
  store { i64, i8* }* %583, { i64, i8* }** %584
  %585 = call { i64, i8* }* @nyx_array_new_ptr()
  %586 = alloca { i64, i8* }*
  store { i64, i8* }* %585, { i64, i8* }** %586
  %587 = alloca i64
  store i64 0, i64* %587
  br label %while_cond108
while_cond108:
  %588 = load i64, i64* %587
  %589 = load { i64, i8* }*, { i64, i8* }** %584
  %590 = call i64 @nyx_array_length({ i64, i8* }* %589)
  %591 = icmp slt i64 %588, %590
  br i1 %591, label %while_body109, label %while_end110
while_body109:
  %592 = load { i64, i8* }*, { i64, i8* }** %584
  %593 = load i64, i64* %587
  %594 = call i64 @nyx_array_get({ i64, i8* }* %592, i64 %593)
  %595 = inttoptr i64 %594 to %nyx_string*
  %596 = alloca %nyx_string*
  store %nyx_string* %595, %nyx_string** %596
  %597 = load { i64, i8* }*, { i64, i8* }** %586
  %598 = load %nyx_string*, %nyx_string** %596
  %599 = call { i64, i8* }* @ty_parse(%nyx_string* %598)
  %600 = call { i64, i8* }* @resolve_type({ i64, i8* }* %599)
  %601 = ptrtoint { i64, i8* }* %600 to i64
  call void @nyx_array_push({ i64, i8* }* %597, i64 %601)
  %602 = load i64, i64* %587
  %603 = add i64 %602, 1
  store i64 %603, i64* %587
  br label %while_cond108
while_end110:
  %604 = load { i64, i8* }*, { i64, i8* }** %576
  %605 = load { i64, i8* }*, { i64, i8* }** %580
  %606 = load { i64, i8* }*, { i64, i8* }** %586
  %607 = call { i64, i8* }* @subst_apply({ i64, i8* }* %604, { i64, i8* }* %605, { i64, i8* }* %606)
  ret { i64, i8* }* %607
else106:
  br label %merge107
merge107:
  br label %merge104
else103:
  br label %merge104
merge104:
  br label %merge101
else100:
  br label %merge101
merge101:
  br label %merge98
else97:
  br label %merge98
merge98:
  %608 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %608
else94:
  br label %merge95
merge95:
  %609 = getelementptr %ASTNode, %ASTNode* %532, i32 0, i32 0
  %610 = load %nyx_string*, %nyx_string** %609
  %611 = getelementptr [11 x i8], [11 x i8]* @.str45, i32 0, i32 0
  %612 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str45.c, i8* %611)
  %613 = call i1 @nyx_string_equals(%nyx_string* %610, %nyx_string* %612)
  br i1 %613, label %then111, label %else112
then111:
  %614 = load %ASTNode, %ASTNode* %532
  %615 = call %nyx_string* @get_string_at(%ASTNode %614, i64 0)
  %616 = alloca %nyx_string*
  store %nyx_string* %615, %nyx_string** %616
  %617 = load %nyx_string*, %nyx_string** %616
  %618 = call { i64, i8* }* @lookup_fn_sig(%nyx_string* %617)
  %619 = alloca { i64, i8* }*
  store { i64, i8* }* %618, { i64, i8* }** %619
  %620 = load { i64, i8* }*, { i64, i8* }** %619
  %621 = call i64 @nyx_array_length({ i64, i8* }* %620)
  %622 = icmp eq i64 %621, 3
  br i1 %622, label %then114, label %else115
then114:
  %623 = load { i64, i8* }*, { i64, i8* }** %619
  %624 = call i64 @nyx_array_get({ i64, i8* }* %623, i64 0)
  %625 = inttoptr i64 %624 to { i64, i8* }*
  %626 = alloca { i64, i8* }*
  store { i64, i8* }* %625, { i64, i8* }** %626
  %627 = load { i64, i8* }*, { i64, i8* }** %619
  %628 = call i64 @nyx_array_get({ i64, i8* }* %627, i64 1)
  %629 = inttoptr i64 %628 to { i64, i8* }*
  %630 = alloca { i64, i8* }*
  store { i64, i8* }* %629, { i64, i8* }** %630
  %631 = load { i64, i8* }*, { i64, i8* }** %619
  %632 = call i64 @nyx_array_get({ i64, i8* }* %631, i64 2)
  %633 = inttoptr i64 %632 to { i64, i8* }*
  %634 = alloca { i64, i8* }*
  store { i64, i8* }* %633, { i64, i8* }** %634
  %635 = load { i64, i8* }*, { i64, i8* }** %634
  %636 = call i64 @nyx_array_length({ i64, i8* }* %635)
  %637 = icmp sgt i64 %636, 0
  br i1 %637, label %then117, label %else118
then117:
  %638 = load %ASTNode, %ASTNode* %node.ptr
  %639 = call { i64, i8* }* @get_array_at(%ASTNode %638, i64 1)
  %640 = alloca { i64, i8* }*
  store { i64, i8* }* %639, { i64, i8* }** %640
  %641 = call { i64, i8* }* @nyx_array_new_ptr()
  %642 = alloca { i64, i8* }*
  store { i64, i8* }* %641, { i64, i8* }** %642
  %643 = call { i64, i8* }* @nyx_array_new_ptr()
  %644 = alloca { i64, i8* }*
  store { i64, i8* }* %643, { i64, i8* }** %644
  %645 = alloca i64
  store i64 0, i64* %645
  br label %while_cond120
while_cond120:
  %646 = load i64, i64* %645
  %647 = load { i64, i8* }*, { i64, i8* }** %640
  %648 = call i64 @nyx_array_length({ i64, i8* }* %647)
  %649 = icmp slt i64 %646, %648
  br i1 %649, label %while_body121, label %while_end122
while_body121:
  %650 = load i64, i64* %645
  %651 = load { i64, i8* }*, { i64, i8* }** %626
  %652 = call i64 @nyx_array_length({ i64, i8* }* %651)
  %653 = icmp slt i64 %650, %652
  br i1 %653, label %then123, label %else124
then123:
  %654 = load { i64, i8* }*, { i64, i8* }** %640
  %655 = load i64, i64* %645
  %656 = call i64 @nyx_array_get({ i64, i8* }* %654, i64 %655)
  %657 = inttoptr i64 %656 to { i64, i8* }*
  %658 = call i64 @nyx_array_get({ i64, i8* }* %657, i64 0)
  %659 = call i64 @nyx_array_get({ i64, i8* }* %657, i64 1)
  %660 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %657, i64 2)
  %661 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %657, i64 3)
  %662 = inttoptr i64 %658 to %nyx_string*
  %663 = inttoptr i64 %659 to { i64, i8* }*
  %664 = alloca %ASTNode
  %665 = getelementptr inbounds %ASTNode, %ASTNode* %664, i32 0, i32 0
  store %nyx_string* %662, %nyx_string** %665
  %666 = getelementptr inbounds %ASTNode, %ASTNode* %664, i32 0, i32 1
  store { i64, i8* }* %663, { i64, i8* }** %666
  %667 = getelementptr inbounds %ASTNode, %ASTNode* %664, i32 0, i32 2
  store i64 %660, i64* %667
  %668 = getelementptr inbounds %ASTNode, %ASTNode* %664, i32 0, i32 3
  store i64 %661, i64* %668
  %669 = load %ASTNode, %ASTNode* %664
  %670 = alloca %ASTNode
  store %ASTNode %669, %ASTNode* %670
  %671 = load { i64, i8* }*, { i64, i8* }** %626
  %672 = load i64, i64* %645
  %673 = call i64 @nyx_array_get({ i64, i8* }* %671, i64 %672)
  %674 = inttoptr i64 %673 to { i64, i8* }*
  %675 = alloca { i64, i8* }*
  store { i64, i8* }* %674, { i64, i8* }** %675
  %676 = load { i64, i8* }*, { i64, i8* }** %675
  %677 = call i1 @ty_is_unknown({ i64, i8* }* %676)
  %678 = xor i1 %677, true
  br i1 %678, label %then126, label %else127
then126:
  %679 = load %ASTNode, %ASTNode* %670
  %680 = call { i64, i8* }* @ty_of_expr(%ASTNode %679)
  %681 = alloca { i64, i8* }*
  store { i64, i8* }* %680, { i64, i8* }** %681
  %682 = load { i64, i8* }*, { i64, i8* }** %681
  %683 = call i1 @ty_is_unknown({ i64, i8* }* %682)
  %684 = xor i1 %683, true
  br i1 %684, label %then129, label %else130
then129:
  %685 = load { i64, i8* }*, { i64, i8* }** %675
  %686 = load { i64, i8* }*, { i64, i8* }** %681
  %687 = load { i64, i8* }*, { i64, i8* }** %634
  %688 = load { i64, i8* }*, { i64, i8* }** %642
  %689 = load { i64, i8* }*, { i64, i8* }** %644
  %690 = call i1 @unify({ i64, i8* }* %685, { i64, i8* }* %686, { i64, i8* }* %687, { i64, i8* }* %688, { i64, i8* }* %689)
  br label %merge131
else130:
  br label %merge131
merge131:
  br label %merge128
else127:
  br label %merge128
merge128:
  br label %merge125
else124:
  br label %merge125
merge125:
  %691 = load i64, i64* %645
  %692 = add i64 %691, 1
  store i64 %692, i64* %645
  br label %while_cond120
while_end122:
  %693 = load { i64, i8* }*, { i64, i8* }** %630
  %694 = load { i64, i8* }*, { i64, i8* }** %642
  %695 = load { i64, i8* }*, { i64, i8* }** %644
  %696 = call { i64, i8* }* @subst_apply({ i64, i8* }* %693, { i64, i8* }* %694, { i64, i8* }* %695)
  ret { i64, i8* }* %696
else118:
  br label %merge119
merge119:
  %697 = load { i64, i8* }*, { i64, i8* }** %630
  ret { i64, i8* }* %697
else115:
  br label %merge116
merge116:
  br label %merge113
else112:
  br label %merge113
merge113:
  %698 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %698
else91:
  br label %merge92
merge92:
  %699 = load %nyx_string*, %nyx_string** %475
  %700 = getelementptr [6 x i8], [6 x i8]* @.str46, i32 0, i32 0
  %701 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str46.c, i8* %700)
  %702 = call i1 @nyx_string_equals(%nyx_string* %699, %nyx_string* %701)
  br i1 %702, label %then132, label %else133
then132:
  %703 = load %ASTNode, %ASTNode* %node.ptr
  %704 = call %nyx_string* @get_string_at(%ASTNode %703, i64 0)
  %705 = alloca %nyx_string*
  store %nyx_string* %704, %nyx_string** %705
  %706 = load %ASTNode, %ASTNode* %node.ptr
  %707 = call %ASTNode @get_node_at(%ASTNode %706, i64 1)
  %708 = alloca %ASTNode
  store %ASTNode %707, %ASTNode* %708
  %709 = load %ASTNode, %ASTNode* %node.ptr
  %710 = call %ASTNode @get_node_at(%ASTNode %709, i64 2)
  %711 = alloca %ASTNode
  store %ASTNode %710, %ASTNode* %711
  %712 = load %ASTNode, %ASTNode* %708
  %713 = call { i64, i8* }* @ty_of_expr(%ASTNode %712)
  %714 = alloca { i64, i8* }*
  store { i64, i8* }* %713, { i64, i8* }** %714
  %715 = load %ASTNode, %ASTNode* %711
  %716 = call { i64, i8* }* @ty_of_expr(%ASTNode %715)
  %717 = alloca { i64, i8* }*
  store { i64, i8* }* %716, { i64, i8* }** %717
  %718 = load %nyx_string*, %nyx_string** %705
  %719 = load { i64, i8* }*, { i64, i8* }** %714
  %720 = load { i64, i8* }*, { i64, i8* }** %717
  %721 = call { i64, i8* }* @ty_of_binop(%nyx_string* %718, { i64, i8* }* %719, { i64, i8* }* %720)
  ret { i64, i8* }* %721
else133:
  br label %merge134
merge134:
  %722 = load %nyx_string*, %nyx_string** %475
  %723 = getelementptr [12 x i8], [12 x i8]* @.str47, i32 0, i32 0
  %724 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str47.c, i8* %723)
  %725 = call i1 @nyx_string_equals(%nyx_string* %722, %nyx_string* %724)
  br i1 %725, label %then135, label %else136
then135:
  %726 = load %ASTNode, %ASTNode* %node.ptr
  %727 = call %nyx_string* @get_string_at(%ASTNode %726, i64 1)
  %728 = alloca %nyx_string*
  store %nyx_string* %727, %nyx_string** %728
  %729 = load %ASTNode, %ASTNode* %node.ptr
  %730 = call %ASTNode @get_node_at(%ASTNode %729, i64 0)
  %731 = alloca %ASTNode
  store %ASTNode %730, %ASTNode* %731
  %732 = load %ASTNode, %ASTNode* %731
  %733 = call { i64, i8* }* @ty_of_expr(%ASTNode %732)
  %734 = alloca { i64, i8* }*
  store { i64, i8* }* %733, { i64, i8* }** %734
  %735 = load { i64, i8* }*, { i64, i8* }** %734
  %736 = call i1 @ty_is_unknown({ i64, i8* }* %735)
  %737 = xor i1 %736, true
  br i1 %737, label %then138, label %else139
then138:
  %738 = load { i64, i8* }*, { i64, i8* }** %734
  %739 = call %nyx_string* @ty_kind({ i64, i8* }* %738)
  %740 = alloca %nyx_string*
  store %nyx_string* %739, %nyx_string** %740
  %741 = load %nyx_string*, %nyx_string** %740
  %742 = getelementptr [9 x i8], [9 x i8]* @.str48, i32 0, i32 0
  %743 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str48.c, i8* %742)
  %744 = call i1 @nyx_string_equals(%nyx_string* %741, %nyx_string* %743)
  br i1 %744, label %then141, label %else142
then141:
  %745 = load { i64, i8* }*, { i64, i8* }** %734
  %746 = call i64 @nyx_array_get({ i64, i8* }* %745, i64 1)
  %747 = inttoptr i64 %746 to %nyx_string*
  %748 = alloca %nyx_string*
  store %nyx_string* %747, %nyx_string** %748
  %749 = load %nyx_string*, %nyx_string** %748
  %750 = load %nyx_string*, %nyx_string** %728
  %751 = call { i64, i8* }* @lookup_impl_method(%nyx_string* %749, %nyx_string* %750)
  %752 = alloca { i64, i8* }*
  store { i64, i8* }* %751, { i64, i8* }** %752
  %753 = load { i64, i8* }*, { i64, i8* }** %752
  %754 = call i64 @nyx_array_length({ i64, i8* }* %753)
  %755 = icmp eq i64 %754, 3
  br i1 %755, label %then144, label %else145
then144:
  %756 = load { i64, i8* }*, { i64, i8* }** %752
  %757 = call i64 @nyx_array_get({ i64, i8* }* %756, i64 0)
  %758 = inttoptr i64 %757 to { i64, i8* }*
  %759 = alloca { i64, i8* }*
  store { i64, i8* }* %758, { i64, i8* }** %759
  %760 = load { i64, i8* }*, { i64, i8* }** %752
  %761 = call i64 @nyx_array_get({ i64, i8* }* %760, i64 1)
  %762 = inttoptr i64 %761 to { i64, i8* }*
  %763 = alloca { i64, i8* }*
  store { i64, i8* }* %762, { i64, i8* }** %763
  %764 = load { i64, i8* }*, { i64, i8* }** %752
  %765 = call i64 @nyx_array_get({ i64, i8* }* %764, i64 2)
  %766 = inttoptr i64 %765 to { i64, i8* }*
  %767 = alloca { i64, i8* }*
  store { i64, i8* }* %766, { i64, i8* }** %767
  %768 = load { i64, i8* }*, { i64, i8* }** %767
  %769 = call i64 @nyx_array_length({ i64, i8* }* %768)
  %770 = icmp sgt i64 %769, 0
  br i1 %770, label %then147, label %else148
then147:
  %771 = load %ASTNode, %ASTNode* %node.ptr
  %772 = call { i64, i8* }* @get_array_at(%ASTNode %771, i64 1)
  %773 = alloca { i64, i8* }*
  store { i64, i8* }* %772, { i64, i8* }** %773
  %774 = call { i64, i8* }* @nyx_array_new_ptr()
  %775 = alloca { i64, i8* }*
  store { i64, i8* }* %774, { i64, i8* }** %775
  %776 = call { i64, i8* }* @nyx_array_new_ptr()
  %777 = alloca { i64, i8* }*
  store { i64, i8* }* %776, { i64, i8* }** %777
  %778 = alloca i64
  store i64 0, i64* %778
  br label %while_cond150
while_cond150:
  %779 = load i64, i64* %778
  %780 = load { i64, i8* }*, { i64, i8* }** %773
  %781 = call i64 @nyx_array_length({ i64, i8* }* %780)
  %782 = icmp slt i64 %779, %781
  br i1 %782, label %while_body151, label %while_end152
while_body151:
  %783 = load i64, i64* %778
  %784 = load { i64, i8* }*, { i64, i8* }** %759
  %785 = call i64 @nyx_array_length({ i64, i8* }* %784)
  %786 = icmp slt i64 %783, %785
  br i1 %786, label %then153, label %else154
then153:
  %787 = load { i64, i8* }*, { i64, i8* }** %759
  %788 = load i64, i64* %778
  %789 = call i64 @nyx_array_get({ i64, i8* }* %787, i64 %788)
  %790 = inttoptr i64 %789 to { i64, i8* }*
  %791 = alloca { i64, i8* }*
  store { i64, i8* }* %790, { i64, i8* }** %791
  %792 = load { i64, i8* }*, { i64, i8* }** %791
  %793 = call i1 @ty_is_unknown({ i64, i8* }* %792)
  %794 = xor i1 %793, true
  br i1 %794, label %then156, label %else157
then156:
  %795 = load { i64, i8* }*, { i64, i8* }** %773
  %796 = load i64, i64* %778
  %797 = call i64 @nyx_array_get({ i64, i8* }* %795, i64 %796)
  %798 = inttoptr i64 %797 to { i64, i8* }*
  %799 = call i64 @nyx_array_get({ i64, i8* }* %798, i64 0)
  %800 = call i64 @nyx_array_get({ i64, i8* }* %798, i64 1)
  %801 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %798, i64 2)
  %802 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %798, i64 3)
  %803 = inttoptr i64 %799 to %nyx_string*
  %804 = inttoptr i64 %800 to { i64, i8* }*
  %805 = alloca %ASTNode
  %806 = getelementptr inbounds %ASTNode, %ASTNode* %805, i32 0, i32 0
  store %nyx_string* %803, %nyx_string** %806
  %807 = getelementptr inbounds %ASTNode, %ASTNode* %805, i32 0, i32 1
  store { i64, i8* }* %804, { i64, i8* }** %807
  %808 = getelementptr inbounds %ASTNode, %ASTNode* %805, i32 0, i32 2
  store i64 %801, i64* %808
  %809 = getelementptr inbounds %ASTNode, %ASTNode* %805, i32 0, i32 3
  store i64 %802, i64* %809
  %810 = load %ASTNode, %ASTNode* %805
  %811 = alloca %ASTNode
  store %ASTNode %810, %ASTNode* %811
  %812 = load %ASTNode, %ASTNode* %811
  %813 = call { i64, i8* }* @ty_of_expr(%ASTNode %812)
  %814 = alloca { i64, i8* }*
  store { i64, i8* }* %813, { i64, i8* }** %814
  %815 = load { i64, i8* }*, { i64, i8* }** %814
  %816 = call i1 @ty_is_unknown({ i64, i8* }* %815)
  %817 = xor i1 %816, true
  br i1 %817, label %then159, label %else160
then159:
  %818 = load { i64, i8* }*, { i64, i8* }** %791
  %819 = load { i64, i8* }*, { i64, i8* }** %814
  %820 = load { i64, i8* }*, { i64, i8* }** %767
  %821 = load { i64, i8* }*, { i64, i8* }** %775
  %822 = load { i64, i8* }*, { i64, i8* }** %777
  %823 = call i1 @unify({ i64, i8* }* %818, { i64, i8* }* %819, { i64, i8* }* %820, { i64, i8* }* %821, { i64, i8* }* %822)
  br label %merge161
else160:
  br label %merge161
merge161:
  br label %merge158
else157:
  br label %merge158
merge158:
  br label %merge155
else154:
  br label %merge155
merge155:
  %824 = load i64, i64* %778
  %825 = add i64 %824, 1
  store i64 %825, i64* %778
  br label %while_cond150
while_end152:
  %826 = load { i64, i8* }*, { i64, i8* }** %763
  %827 = load { i64, i8* }*, { i64, i8* }** %775
  %828 = load { i64, i8* }*, { i64, i8* }** %777
  %829 = call { i64, i8* }* @subst_apply({ i64, i8* }* %826, { i64, i8* }* %827, { i64, i8* }* %828)
  ret { i64, i8* }* %829
else148:
  br label %merge149
merge149:
  %830 = load { i64, i8* }*, { i64, i8* }** %763
  ret { i64, i8* }* %830
else145:
  br label %merge146
merge146:
  br label %merge143
else142:
  br label %merge143
merge143:
  %831 = load %nyx_string*, %nyx_string** %740
  %832 = getelementptr [7 x i8], [7 x i8]* @.str49, i32 0, i32 0
  %833 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str49.c, i8* %832)
  %834 = call i1 @nyx_string_equals(%nyx_string* %831, %nyx_string* %833)
  br i1 %834, label %then162, label %else163
then162:
  %835 = load { i64, i8* }*, { i64, i8* }** %734
  %836 = call i64 @nyx_array_get({ i64, i8* }* %835, i64 1)
  %837 = inttoptr i64 %836 to %nyx_string*
  %838 = alloca %nyx_string*
  store %nyx_string* %837, %nyx_string** %838
  %839 = load %nyx_string*, %nyx_string** %838
  %840 = load %nyx_string*, %nyx_string** %728
  %841 = call { i64, i8* }* @lookup_impl_method(%nyx_string* %839, %nyx_string* %840)
  %842 = alloca { i64, i8* }*
  store { i64, i8* }* %841, { i64, i8* }** %842
  %843 = load { i64, i8* }*, { i64, i8* }** %842
  %844 = call i64 @nyx_array_length({ i64, i8* }* %843)
  %845 = icmp eq i64 %844, 3
  br i1 %845, label %then165, label %else166
then165:
  %846 = load { i64, i8* }*, { i64, i8* }** %842
  %847 = call i64 @nyx_array_get({ i64, i8* }* %846, i64 0)
  %848 = inttoptr i64 %847 to { i64, i8* }*
  %849 = alloca { i64, i8* }*
  store { i64, i8* }* %848, { i64, i8* }** %849
  %850 = load { i64, i8* }*, { i64, i8* }** %842
  %851 = call i64 @nyx_array_get({ i64, i8* }* %850, i64 1)
  %852 = inttoptr i64 %851 to { i64, i8* }*
  %853 = alloca { i64, i8* }*
  store { i64, i8* }* %852, { i64, i8* }** %853
  %854 = load { i64, i8* }*, { i64, i8* }** %842
  %855 = call i64 @nyx_array_get({ i64, i8* }* %854, i64 2)
  %856 = inttoptr i64 %855 to { i64, i8* }*
  %857 = alloca { i64, i8* }*
  store { i64, i8* }* %856, { i64, i8* }** %857
  %858 = load { i64, i8* }*, { i64, i8* }** %857
  %859 = call i64 @nyx_array_length({ i64, i8* }* %858)
  %860 = icmp sgt i64 %859, 0
  br i1 %860, label %then168, label %else169
then168:
  %861 = load %ASTNode, %ASTNode* %node.ptr
  %862 = call { i64, i8* }* @get_array_at(%ASTNode %861, i64 1)
  %863 = alloca { i64, i8* }*
  store { i64, i8* }* %862, { i64, i8* }** %863
  %864 = call { i64, i8* }* @nyx_array_new_ptr()
  %865 = alloca { i64, i8* }*
  store { i64, i8* }* %864, { i64, i8* }** %865
  %866 = call { i64, i8* }* @nyx_array_new_ptr()
  %867 = alloca { i64, i8* }*
  store { i64, i8* }* %866, { i64, i8* }** %867
  %868 = alloca i64
  store i64 0, i64* %868
  br label %while_cond171
while_cond171:
  %869 = load i64, i64* %868
  %870 = load { i64, i8* }*, { i64, i8* }** %863
  %871 = call i64 @nyx_array_length({ i64, i8* }* %870)
  %872 = icmp slt i64 %869, %871
  br i1 %872, label %while_body172, label %while_end173
while_body172:
  %873 = load i64, i64* %868
  %874 = load { i64, i8* }*, { i64, i8* }** %849
  %875 = call i64 @nyx_array_length({ i64, i8* }* %874)
  %876 = icmp slt i64 %873, %875
  br i1 %876, label %then174, label %else175
then174:
  %877 = load { i64, i8* }*, { i64, i8* }** %849
  %878 = load i64, i64* %868
  %879 = call i64 @nyx_array_get({ i64, i8* }* %877, i64 %878)
  %880 = inttoptr i64 %879 to { i64, i8* }*
  %881 = alloca { i64, i8* }*
  store { i64, i8* }* %880, { i64, i8* }** %881
  %882 = load { i64, i8* }*, { i64, i8* }** %881
  %883 = call i1 @ty_is_unknown({ i64, i8* }* %882)
  %884 = xor i1 %883, true
  br i1 %884, label %then177, label %else178
then177:
  %885 = load { i64, i8* }*, { i64, i8* }** %863
  %886 = load i64, i64* %868
  %887 = call i64 @nyx_array_get({ i64, i8* }* %885, i64 %886)
  %888 = inttoptr i64 %887 to { i64, i8* }*
  %889 = call i64 @nyx_array_get({ i64, i8* }* %888, i64 0)
  %890 = call i64 @nyx_array_get({ i64, i8* }* %888, i64 1)
  %891 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %888, i64 2)
  %892 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %888, i64 3)
  %893 = inttoptr i64 %889 to %nyx_string*
  %894 = inttoptr i64 %890 to { i64, i8* }*
  %895 = alloca %ASTNode
  %896 = getelementptr inbounds %ASTNode, %ASTNode* %895, i32 0, i32 0
  store %nyx_string* %893, %nyx_string** %896
  %897 = getelementptr inbounds %ASTNode, %ASTNode* %895, i32 0, i32 1
  store { i64, i8* }* %894, { i64, i8* }** %897
  %898 = getelementptr inbounds %ASTNode, %ASTNode* %895, i32 0, i32 2
  store i64 %891, i64* %898
  %899 = getelementptr inbounds %ASTNode, %ASTNode* %895, i32 0, i32 3
  store i64 %892, i64* %899
  %900 = load %ASTNode, %ASTNode* %895
  %901 = alloca %ASTNode
  store %ASTNode %900, %ASTNode* %901
  %902 = load %ASTNode, %ASTNode* %901
  %903 = call { i64, i8* }* @ty_of_expr(%ASTNode %902)
  %904 = alloca { i64, i8* }*
  store { i64, i8* }* %903, { i64, i8* }** %904
  %905 = load { i64, i8* }*, { i64, i8* }** %904
  %906 = call i1 @ty_is_unknown({ i64, i8* }* %905)
  %907 = xor i1 %906, true
  br i1 %907, label %then180, label %else181
then180:
  %908 = load { i64, i8* }*, { i64, i8* }** %881
  %909 = load { i64, i8* }*, { i64, i8* }** %904
  %910 = load { i64, i8* }*, { i64, i8* }** %857
  %911 = load { i64, i8* }*, { i64, i8* }** %865
  %912 = load { i64, i8* }*, { i64, i8* }** %867
  %913 = call i1 @unify({ i64, i8* }* %908, { i64, i8* }* %909, { i64, i8* }* %910, { i64, i8* }* %911, { i64, i8* }* %912)
  br label %merge182
else181:
  br label %merge182
merge182:
  br label %merge179
else178:
  br label %merge179
merge179:
  br label %merge176
else175:
  br label %merge176
merge176:
  %914 = load i64, i64* %868
  %915 = add i64 %914, 1
  store i64 %915, i64* %868
  br label %while_cond171
while_end173:
  %916 = load { i64, i8* }*, { i64, i8* }** %853
  %917 = load { i64, i8* }*, { i64, i8* }** %865
  %918 = load { i64, i8* }*, { i64, i8* }** %867
  %919 = call { i64, i8* }* @subst_apply({ i64, i8* }* %916, { i64, i8* }* %917, { i64, i8* }* %918)
  ret { i64, i8* }* %919
else169:
  br label %merge170
merge170:
  %920 = load { i64, i8* }*, { i64, i8* }** %853
  ret { i64, i8* }* %920
else166:
  br label %merge167
merge167:
  br label %merge164
else163:
  br label %merge164
merge164:
  br label %merge140
else139:
  br label %merge140
merge140:
  %921 = load %nyx_string*, %nyx_string** %728
  %922 = getelementptr [7 x i8], [7 x i8]* @.str50, i32 0, i32 0
  %923 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str50.c, i8* %922)
  %924 = call i1 @nyx_string_equals(%nyx_string* %921, %nyx_string* %923)
  br i1 %924, label %then183, label %else184
then183:
  %925 = call { i64, i8* }* @ty_int()
  ret { i64, i8* }* %925
else184:
  br label %merge185
merge185:
  %926 = load %nyx_string*, %nyx_string** %728
  %927 = getelementptr [12 x i8], [12 x i8]* @.str51, i32 0, i32 0
  %928 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str51.c, i8* %927)
  %929 = call i1 @nyx_string_equals(%nyx_string* %926, %nyx_string* %928)
  br i1 %929, label %then186, label %else187
then186:
  %930 = call { i64, i8* }* @ty_int()
  ret { i64, i8* }* %930
else187:
  br label %merge188
merge188:
  %931 = load %nyx_string*, %nyx_string** %728
  %932 = getelementptr [12 x i8], [12 x i8]* @.str52, i32 0, i32 0
  %933 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str52.c, i8* %932)
  %934 = call i1 @nyx_string_equals(%nyx_string* %931, %nyx_string* %933)
  br i1 %934, label %then189, label %else190
then189:
  %935 = call { i64, i8* }* @ty_int()
  ret { i64, i8* }* %935
else190:
  br label %merge191
merge191:
  %936 = load %nyx_string*, %nyx_string** %728
  %937 = getelementptr [5 x i8], [5 x i8]* @.str53, i32 0, i32 0
  %938 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str53.c, i8* %937)
  %939 = call i1 @nyx_string_equals(%nyx_string* %936, %nyx_string* %938)
  br i1 %939, label %then192, label %else193
then192:
  %940 = call { i64, i8* }* @ty_int()
  ret { i64, i8* }* %940
else193:
  br label %merge194
merge194:
  %941 = load %nyx_string*, %nyx_string** %728
  %942 = getelementptr [6 x i8], [6 x i8]* @.str54, i32 0, i32 0
  %943 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str54.c, i8* %942)
  %944 = call i1 @nyx_string_equals(%nyx_string* %941, %nyx_string* %943)
  br i1 %944, label %then195, label %else196
then195:
  %945 = call { i64, i8* }* @ty_int()
  ret { i64, i8* }* %945
else196:
  br label %merge197
merge197:
  %946 = load %nyx_string*, %nyx_string** %728
  %947 = getelementptr [8 x i8], [8 x i8]* @.str55, i32 0, i32 0
  %948 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str55.c, i8* %947)
  %949 = call i1 @nyx_string_equals(%nyx_string* %946, %nyx_string* %948)
  br i1 %949, label %then198, label %else199
then198:
  %950 = call { i64, i8* }* @ty_int()
  ret { i64, i8* }* %950
else199:
  br label %merge200
merge200:
  %951 = load %nyx_string*, %nyx_string** %728
  %952 = getelementptr [7 x i8], [7 x i8]* @.str56, i32 0, i32 0
  %953 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str56.c, i8* %952)
  %954 = call i1 @nyx_string_equals(%nyx_string* %951, %nyx_string* %953)
  br i1 %954, label %then201, label %else202
then201:
  %955 = call { i64, i8* }* @ty_int()
  ret { i64, i8* }* %955
else202:
  br label %merge203
merge203:
  %956 = load %nyx_string*, %nyx_string** %728
  %957 = getelementptr [8 x i8], [8 x i8]* @.str57, i32 0, i32 0
  %958 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str57.c, i8* %957)
  %959 = call i1 @nyx_string_equals(%nyx_string* %956, %nyx_string* %958)
  br i1 %959, label %then204, label %else205
then204:
  %960 = call { i64, i8* }* @ty_bool()
  ret { i64, i8* }* %960
else205:
  br label %merge206
merge206:
  %961 = load %nyx_string*, %nyx_string** %728
  %962 = getelementptr [8 x i8], [8 x i8]* @.str58, i32 0, i32 0
  %963 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str58.c, i8* %962)
  %964 = call i1 @nyx_string_equals(%nyx_string* %961, %nyx_string* %963)
  br i1 %964, label %then207, label %else208
then207:
  %965 = call { i64, i8* }* @ty_bool()
  ret { i64, i8* }* %965
else208:
  br label %merge209
merge209:
  %966 = load %nyx_string*, %nyx_string** %728
  %967 = getelementptr [6 x i8], [6 x i8]* @.str59, i32 0, i32 0
  %968 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str59.c, i8* %967)
  %969 = call i1 @nyx_string_equals(%nyx_string* %966, %nyx_string* %968)
  br i1 %969, label %then210, label %else211
then210:
  %970 = call { i64, i8* }* @ty_bool()
  ret { i64, i8* }* %970
else211:
  br label %merge212
merge212:
  %971 = load %nyx_string*, %nyx_string** %728
  %972 = getelementptr [7 x i8], [7 x i8]* @.str60, i32 0, i32 0
  %973 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str60.c, i8* %972)
  %974 = call i1 @nyx_string_equals(%nyx_string* %971, %nyx_string* %973)
  br i1 %974, label %then213, label %else214
then213:
  %975 = call { i64, i8* }* @ty_bool()
  ret { i64, i8* }* %975
else214:
  br label %merge215
merge215:
  %976 = load %nyx_string*, %nyx_string** %728
  %977 = getelementptr [9 x i8], [9 x i8]* @.str61, i32 0, i32 0
  %978 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str61.c, i8* %977)
  %979 = call i1 @nyx_string_equals(%nyx_string* %976, %nyx_string* %978)
  br i1 %979, label %then216, label %else217
then216:
  %980 = call { i64, i8* }* @ty_bool()
  ret { i64, i8* }* %980
else217:
  br label %merge218
merge218:
  %981 = load %nyx_string*, %nyx_string** %728
  %982 = getelementptr [4 x i8], [4 x i8]* @.str62, i32 0, i32 0
  %983 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str62.c, i8* %982)
  %984 = call i1 @nyx_string_equals(%nyx_string* %981, %nyx_string* %983)
  br i1 %984, label %then219, label %else220
then219:
  %985 = call { i64, i8* }* @ty_bool()
  ret { i64, i8* }* %985
else220:
  br label %merge221
merge221:
  %986 = load %nyx_string*, %nyx_string** %728
  %987 = getelementptr [11 x i8], [11 x i8]* @.str63, i32 0, i32 0
  %988 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str63.c, i8* %987)
  %989 = call i1 @nyx_string_equals(%nyx_string* %986, %nyx_string* %988)
  br i1 %989, label %then222, label %else223
then222:
  %990 = call { i64, i8* }* @ty_bool()
  ret { i64, i8* }* %990
else223:
  br label %merge224
merge224:
  %991 = load %nyx_string*, %nyx_string** %728
  %992 = getelementptr [9 x i8], [9 x i8]* @.str64, i32 0, i32 0
  %993 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str64.c, i8* %992)
  %994 = call i1 @nyx_string_equals(%nyx_string* %991, %nyx_string* %993)
  br i1 %994, label %then225, label %else226
then225:
  %995 = call { i64, i8* }* @ty_bool()
  ret { i64, i8* }* %995
else226:
  br label %merge227
merge227:
  %996 = load %nyx_string*, %nyx_string** %728
  %997 = getelementptr [12 x i8], [12 x i8]* @.str65, i32 0, i32 0
  %998 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str65.c, i8* %997)
  %999 = call i1 @nyx_string_equals(%nyx_string* %996, %nyx_string* %998)
  br i1 %999, label %then228, label %else229
then228:
  %1000 = call { i64, i8* }* @ty_bool()
  ret { i64, i8* }* %1000
else229:
  br label %merge230
merge230:
  %1001 = load %nyx_string*, %nyx_string** %728
  %1002 = getelementptr [10 x i8], [10 x i8]* @.str66, i32 0, i32 0
  %1003 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str66.c, i8* %1002)
  %1004 = call i1 @nyx_string_equals(%nyx_string* %1001, %nyx_string* %1003)
  br i1 %1004, label %then231, label %else232
then231:
  %1005 = call { i64, i8* }* @ty_bool()
  ret { i64, i8* }* %1005
else232:
  br label %merge233
merge233:
  %1006 = load %nyx_string*, %nyx_string** %728
  %1007 = getelementptr [4 x i8], [4 x i8]* @.str67, i32 0, i32 0
  %1008 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str67.c, i8* %1007)
  %1009 = call i1 @nyx_string_equals(%nyx_string* %1006, %nyx_string* %1008)
  br i1 %1009, label %then234, label %else235
then234:
  %1010 = call { i64, i8* }* @ty_bool()
  ret { i64, i8* }* %1010
else235:
  br label %merge236
merge236:
  %1011 = load %nyx_string*, %nyx_string** %728
  %1012 = getelementptr [4 x i8], [4 x i8]* @.str68, i32 0, i32 0
  %1013 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str68.c, i8* %1012)
  %1014 = call i1 @nyx_string_equals(%nyx_string* %1011, %nyx_string* %1013)
  br i1 %1014, label %then237, label %else238
then237:
  %1015 = call { i64, i8* }* @ty_bool()
  ret { i64, i8* }* %1015
else238:
  br label %merge239
merge239:
  %1016 = load %nyx_string*, %nyx_string** %728
  %1017 = getelementptr [8 x i8], [8 x i8]* @.str69, i32 0, i32 0
  %1018 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str69.c, i8* %1017)
  %1019 = call i1 @nyx_string_equals(%nyx_string* %1016, %nyx_string* %1018)
  br i1 %1019, label %then240, label %else241
then240:
  %1020 = call { i64, i8* }* @ty_string()
  ret { i64, i8* }* %1020
else241:
  br label %merge242
merge242:
  %1021 = load %nyx_string*, %nyx_string** %728
  %1022 = getelementptr [8 x i8], [8 x i8]* @.str70, i32 0, i32 0
  %1023 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str70.c, i8* %1022)
  %1024 = call i1 @nyx_string_equals(%nyx_string* %1021, %nyx_string* %1023)
  br i1 %1024, label %then243, label %else244
then243:
  %1025 = call { i64, i8* }* @ty_string()
  ret { i64, i8* }* %1025
else244:
  br label %merge245
merge245:
  %1026 = load %nyx_string*, %nyx_string** %728
  %1027 = getelementptr [9 x i8], [9 x i8]* @.str71, i32 0, i32 0
  %1028 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str71.c, i8* %1027)
  %1029 = call i1 @nyx_string_equals(%nyx_string* %1026, %nyx_string* %1028)
  br i1 %1029, label %then246, label %else247
then246:
  %1030 = call { i64, i8* }* @ty_string()
  ret { i64, i8* }* %1030
else247:
  br label %merge248
merge248:
  %1031 = load %nyx_string*, %nyx_string** %728
  %1032 = getelementptr [9 x i8], [9 x i8]* @.str72, i32 0, i32 0
  %1033 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str72.c, i8* %1032)
  %1034 = call i1 @nyx_string_equals(%nyx_string* %1031, %nyx_string* %1033)
  br i1 %1034, label %then249, label %else250
then249:
  %1035 = call { i64, i8* }* @ty_string()
  ret { i64, i8* }* %1035
else250:
  br label %merge251
merge251:
  %1036 = load %nyx_string*, %nyx_string** %728
  %1037 = getelementptr [5 x i8], [5 x i8]* @.str73, i32 0, i32 0
  %1038 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str73.c, i8* %1037)
  %1039 = call i1 @nyx_string_equals(%nyx_string* %1036, %nyx_string* %1038)
  br i1 %1039, label %then252, label %else253
then252:
  %1040 = call { i64, i8* }* @ty_string()
  ret { i64, i8* }* %1040
else253:
  br label %merge254
merge254:
  %1041 = load %nyx_string*, %nyx_string** %728
  %1042 = getelementptr [10 x i8], [10 x i8]* @.str74, i32 0, i32 0
  %1043 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str74.c, i8* %1042)
  %1044 = call i1 @nyx_string_equals(%nyx_string* %1041, %nyx_string* %1043)
  br i1 %1044, label %then255, label %else256
then255:
  %1045 = call { i64, i8* }* @ty_string()
  ret { i64, i8* }* %1045
else256:
  br label %merge257
merge257:
  %1046 = load %nyx_string*, %nyx_string** %728
  %1047 = getelementptr [8 x i8], [8 x i8]* @.str75, i32 0, i32 0
  %1048 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str75.c, i8* %1047)
  %1049 = call i1 @nyx_string_equals(%nyx_string* %1046, %nyx_string* %1048)
  br i1 %1049, label %then258, label %else259
then258:
  %1050 = call { i64, i8* }* @ty_string()
  ret { i64, i8* }* %1050
else259:
  br label %merge260
merge260:
  %1051 = load %nyx_string*, %nyx_string** %728
  %1052 = getelementptr [7 x i8], [7 x i8]* @.str76, i32 0, i32 0
  %1053 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str76.c, i8* %1052)
  %1054 = call i1 @nyx_string_equals(%nyx_string* %1051, %nyx_string* %1053)
  br i1 %1054, label %then261, label %else262
then261:
  %1055 = call { i64, i8* }* @ty_string()
  ret { i64, i8* }* %1055
else262:
  br label %merge263
merge263:
  %1056 = load %nyx_string*, %nyx_string** %728
  %1057 = getelementptr [10 x i8], [10 x i8]* @.str77, i32 0, i32 0
  %1058 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str77.c, i8* %1057)
  %1059 = call i1 @nyx_string_equals(%nyx_string* %1056, %nyx_string* %1058)
  br i1 %1059, label %then264, label %else265
then264:
  %1060 = call { i64, i8* }* @ty_string()
  ret { i64, i8* }* %1060
else265:
  br label %merge266
merge266:
  %1061 = load %nyx_string*, %nyx_string** %728
  %1062 = getelementptr [5 x i8], [5 x i8]* @.str78, i32 0, i32 0
  %1063 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str78.c, i8* %1062)
  %1064 = call i1 @nyx_string_equals(%nyx_string* %1061, %nyx_string* %1063)
  br i1 %1064, label %then267, label %else268
then267:
  %1065 = call { i64, i8* }* @ty_string()
  ret { i64, i8* }* %1065
else268:
  br label %merge269
merge269:
  %1066 = load %nyx_string*, %nyx_string** %728
  %1067 = getelementptr [10 x i8], [10 x i8]* @.str79, i32 0, i32 0
  %1068 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str79.c, i8* %1067)
  %1069 = call i1 @nyx_string_equals(%nyx_string* %1066, %nyx_string* %1068)
  br i1 %1069, label %then270, label %else271
then270:
  %1070 = call { i64, i8* }* @ty_string()
  ret { i64, i8* }* %1070
else271:
  br label %merge272
merge272:
  %1071 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1071
else136:
  br label %merge137
merge137:
  %1072 = load %nyx_string*, %nyx_string** %475
  %1073 = getelementptr [5 x i8], [5 x i8]* @.str80, i32 0, i32 0
  %1074 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str80.c, i8* %1073)
  %1075 = call i1 @nyx_string_equals(%nyx_string* %1072, %nyx_string* %1074)
  br i1 %1075, label %then273, label %else274
then273:
  %1076 = load %ASTNode, %ASTNode* %node.ptr
  %1077 = call %nyx_string* @get_string_at(%ASTNode %1076, i64 0)
  %1078 = alloca %nyx_string*
  store %nyx_string* %1077, %nyx_string** %1078
  %1079 = load %ASTNode, %ASTNode* %node.ptr
  %1080 = call %ASTNode @get_node_at(%ASTNode %1079, i64 1)
  %1081 = alloca %ASTNode
  store %ASTNode %1080, %ASTNode* %1081
  %1082 = load %ASTNode, %ASTNode* %1081
  %1083 = call { i64, i8* }* @ty_of_expr(%ASTNode %1082)
  %1084 = alloca { i64, i8* }*
  store { i64, i8* }* %1083, { i64, i8* }** %1084
  %1085 = load %nyx_string*, %nyx_string** %1078
  %1086 = getelementptr [4 x i8], [4 x i8]* @.str81, i32 0, i32 0
  %1087 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str81.c, i8* %1086)
  %1088 = call i1 @nyx_string_equals(%nyx_string* %1085, %nyx_string* %1087)
  br i1 %1088, label %then276, label %else277
then276:
  %1089 = call { i64, i8* }* @ty_bool()
  ret { i64, i8* }* %1089
else277:
  br label %merge278
merge278:
  %1090 = load %nyx_string*, %nyx_string** %1078
  %1091 = getelementptr [6 x i8], [6 x i8]* @.str82, i32 0, i32 0
  %1092 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str82.c, i8* %1091)
  %1093 = call i1 @nyx_string_equals(%nyx_string* %1090, %nyx_string* %1092)
  br i1 %1093, label %then279, label %else280
then279:
  %1094 = call { i64, i8* }* @ty_int()
  ret { i64, i8* }* %1094
else280:
  br label %merge281
merge281:
  %1095 = load %nyx_string*, %nyx_string** %1078
  %1096 = getelementptr [6 x i8], [6 x i8]* @.str83, i32 0, i32 0
  %1097 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str83.c, i8* %1096)
  %1098 = call i1 @nyx_string_equals(%nyx_string* %1095, %nyx_string* %1097)
  br i1 %1098, label %then282, label %else283
then282:
  %1099 = load { i64, i8* }*, { i64, i8* }** %1084
  %1100 = call i1 @ty_is_unknown({ i64, i8* }* %1099)
  br i1 %1100, label %then285, label %else286
then285:
  %1101 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1101
else286:
  br label %merge287
merge287:
  %1102 = load { i64, i8* }*, { i64, i8* }** %1084
  %1103 = call i1 @is_numeric_ty({ i64, i8* }* %1102)
  br i1 %1103, label %then288, label %else289
then288:
  %1104 = load { i64, i8* }*, { i64, i8* }** %1084
  ret { i64, i8* }* %1104
else289:
  br label %merge290
merge290:
  %1105 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1105
else283:
  br label %merge284
merge284:
  %1106 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1106
else274:
  br label %merge275
merge275:
  %1107 = load %nyx_string*, %nyx_string** %475
  %1108 = getelementptr [12 x i8], [12 x i8]* @.str84, i32 0, i32 0
  %1109 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str84.c, i8* %1108)
  %1110 = call i1 @nyx_string_equals(%nyx_string* %1107, %nyx_string* %1109)
  br i1 %1110, label %then291, label %else292
then291:
  %1111 = load %ASTNode, %ASTNode* %node.ptr
  %1112 = call %nyx_string* @get_string_at(%ASTNode %1111, i64 0)
  %1113 = alloca %nyx_string*
  store %nyx_string* %1112, %nyx_string** %1113
  %1114 = load %nyx_string*, %nyx_string** %1113
  %1115 = call { i64, i8* }* @nyx_array_new_ptr()
  %1116 = call { i64, i8* }* @ty_struct_ty(%nyx_string* %1114, { i64, i8* }* %1115)
  ret { i64, i8* }* %1116
else292:
  br label %merge293
merge293:
  %1117 = load %nyx_string*, %nyx_string** %475
  %1118 = getelementptr [13 x i8], [13 x i8]* @.str85, i32 0, i32 0
  %1119 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str85.c, i8* %1118)
  %1120 = call i1 @nyx_string_equals(%nyx_string* %1117, %nyx_string* %1119)
  br i1 %1120, label %then294, label %else295
then294:
  %1121 = load %ASTNode, %ASTNode* %node.ptr
  %1122 = call %ASTNode @get_node_at(%ASTNode %1121, i64 0)
  %1123 = alloca %ASTNode
  store %ASTNode %1122, %ASTNode* %1123
  %1124 = load %ASTNode, %ASTNode* %node.ptr
  %1125 = call %nyx_string* @get_string_at(%ASTNode %1124, i64 1)
  %1126 = alloca %nyx_string*
  store %nyx_string* %1125, %nyx_string** %1126
  %1127 = load %ASTNode, %ASTNode* %1123
  %1128 = call { i64, i8* }* @ty_of_expr(%ASTNode %1127)
  %1129 = alloca { i64, i8* }*
  store { i64, i8* }* %1128, { i64, i8* }** %1129
  %1130 = load { i64, i8* }*, { i64, i8* }** %1129
  %1131 = call %nyx_string* @ty_kind({ i64, i8* }* %1130)
  %1132 = getelementptr [9 x i8], [9 x i8]* @.str86, i32 0, i32 0
  %1133 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str86.c, i8* %1132)
  %1134 = call i1 @nyx_string_equals(%nyx_string* %1131, %nyx_string* %1133)
  br i1 %1134, label %then297, label %else298
then297:
  %1135 = load { i64, i8* }*, { i64, i8* }** %1129
  %1136 = call i64 @nyx_array_get({ i64, i8* }* %1135, i64 1)
  %1137 = inttoptr i64 %1136 to %nyx_string*
  %1138 = alloca %nyx_string*
  store %nyx_string* %1137, %nyx_string** %1138
  %1139 = load %nyx_string*, %nyx_string** %1138
  %1140 = load %nyx_string*, %nyx_string** %1126
  %1141 = call { i64, i8* }* @lookup_struct_field_type(%nyx_string* %1139, %nyx_string* %1140)
  ret { i64, i8* }* %1141
else298:
  br label %merge299
merge299:
  %1142 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1142
else295:
  br label %merge296
merge296:
  %1143 = load %nyx_string*, %nyx_string** %475
  %1144 = getelementptr [6 x i8], [6 x i8]* @.str87, i32 0, i32 0
  %1145 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str87.c, i8* %1144)
  %1146 = call i1 @nyx_string_equals(%nyx_string* %1143, %nyx_string* %1145)
  br i1 %1146, label %then300, label %else301
then300:
  %1147 = load %ASTNode, %ASTNode* %node.ptr
  %1148 = call %ASTNode @get_node_at(%ASTNode %1147, i64 0)
  %1149 = alloca %ASTNode
  store %ASTNode %1148, %ASTNode* %1149
  %1150 = load %ASTNode, %ASTNode* %1149
  %1151 = call { i64, i8* }* @ty_of_expr(%ASTNode %1150)
  %1152 = alloca { i64, i8* }*
  store { i64, i8* }* %1151, { i64, i8* }** %1152
  %1153 = load { i64, i8* }*, { i64, i8* }** %1152
  %1154 = call %nyx_string* @ty_kind({ i64, i8* }* %1153)
  %1155 = alloca %nyx_string*
  store %nyx_string* %1154, %nyx_string** %1155
  %1156 = load %nyx_string*, %nyx_string** %1155
  %1157 = getelementptr [8 x i8], [8 x i8]* @.str88, i32 0, i32 0
  %1158 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str88.c, i8* %1157)
  %1159 = call i1 @nyx_string_equals(%nyx_string* %1156, %nyx_string* %1158)
  br i1 %1159, label %then303, label %else304
then303:
  %1160 = load { i64, i8* }*, { i64, i8* }** %1152
  %1161 = call i64 @nyx_array_get({ i64, i8* }* %1160, i64 1)
  %1162 = inttoptr i64 %1161 to { i64, i8* }*
  ret { i64, i8* }* %1162
else304:
  br label %merge305
merge305:
  %1163 = load %nyx_string*, %nyx_string** %1155
  %1164 = getelementptr [6 x i8], [6 x i8]* @.str89, i32 0, i32 0
  %1165 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str89.c, i8* %1164)
  %1166 = call i1 @nyx_string_equals(%nyx_string* %1163, %nyx_string* %1165)
  br i1 %1166, label %then306, label %else307
then306:
  %1167 = load { i64, i8* }*, { i64, i8* }** %1152
  %1168 = call i64 @nyx_array_get({ i64, i8* }* %1167, i64 2)
  %1169 = inttoptr i64 %1168 to { i64, i8* }*
  ret { i64, i8* }* %1169
else307:
  br label %merge308
merge308:
  %1170 = load %nyx_string*, %nyx_string** %1155
  %1171 = getelementptr [9 x i8], [9 x i8]* @.str90, i32 0, i32 0
  %1172 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str90.c, i8* %1171)
  %1173 = call i1 @nyx_string_equals(%nyx_string* %1170, %nyx_string* %1172)
  br i1 %1173, label %then309, label %else310
then309:
  %1174 = call { i64, i8* }* @ty_char()
  ret { i64, i8* }* %1174
else310:
  br label %merge311
merge311:
  %1175 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1175
else301:
  br label %merge302
merge302:
  %1176 = load %ASTNode, %ASTNode* %node.ptr
  %1177 = call { i64, i8* }* @ty_of_literal(%ASTNode %1176)
  ret { i64, i8* }* %1177
}

define internal i1 @is_known_type_name(
%nyx_string* %name.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %1178 = call { i64, i8* }* @known_primitive_names()
  %1179 = alloca { i64, i8* }*
  store { i64, i8* }* %1178, { i64, i8* }** %1179
  %1180 = alloca i64
  store i64 0, i64* %1180
  br label %while_cond312
while_cond312:
  %1181 = load i64, i64* %1180
  %1182 = load { i64, i8* }*, { i64, i8* }** %1179
  %1183 = call i64 @nyx_array_length({ i64, i8* }* %1182)
  %1184 = icmp slt i64 %1181, %1183
  br i1 %1184, label %while_body313, label %while_end314
while_body313:
  %1185 = load { i64, i8* }*, { i64, i8* }** %1179
  %1186 = load i64, i64* %1180
  %1187 = call i64 @nyx_array_get({ i64, i8* }* %1185, i64 %1186)
  %1188 = inttoptr i64 %1187 to %nyx_string*
  %1189 = alloca %nyx_string*
  store %nyx_string* %1188, %nyx_string** %1189
  %1190 = load %nyx_string*, %nyx_string** %1189
  %1191 = load %nyx_string*, %nyx_string** %name.ptr
  %1192 = call i1 @nyx_string_equals(%nyx_string* %1190, %nyx_string* %1191)
  br i1 %1192, label %then315, label %else316
then315:
  ret i1 1
else316:
  br label %merge317
merge317:
  %1193 = load i64, i64* %1180
  %1194 = add i64 %1193, 1
  store i64 %1194, i64* %1180
  br label %while_cond312
while_end314:
  store i64 0, i64* %1180
  br label %while_cond318
while_cond318:
  %1195 = load i64, i64* %1180
  %1196 = load i64, i64* @g_struct_reg_count
  %1197 = icmp slt i64 %1195, %1196
  br i1 %1197, label %while_body319, label %while_end320
while_body319:
  %1198 = load { i64, i8* }*, { i64, i8* }** @g_struct_reg_names
  %1199 = load i64, i64* %1180
  %1200 = call i64 @nyx_array_get({ i64, i8* }* %1198, i64 %1199)
  %1201 = inttoptr i64 %1200 to %nyx_string*
  %1202 = alloca %nyx_string*
  store %nyx_string* %1201, %nyx_string** %1202
  %1203 = load %nyx_string*, %nyx_string** %1202
  %1204 = load %nyx_string*, %nyx_string** %name.ptr
  %1205 = call i1 @nyx_string_equals(%nyx_string* %1203, %nyx_string* %1204)
  br i1 %1205, label %then321, label %else322
then321:
  ret i1 1
else322:
  br label %merge323
merge323:
  %1206 = load i64, i64* %1180
  %1207 = add i64 %1206, 1
  store i64 %1207, i64* %1180
  br label %while_cond318
while_end320:
  store i64 0, i64* %1180
  br label %while_cond324
while_cond324:
  %1208 = load i64, i64* %1180
  %1209 = load i64, i64* @g_enum_reg_count
  %1210 = icmp slt i64 %1208, %1209
  br i1 %1210, label %while_body325, label %while_end326
while_body325:
  %1211 = load { i64, i8* }*, { i64, i8* }** @g_enum_reg_names
  %1212 = load i64, i64* %1180
  %1213 = call i64 @nyx_array_get({ i64, i8* }* %1211, i64 %1212)
  %1214 = inttoptr i64 %1213 to %nyx_string*
  %1215 = alloca %nyx_string*
  store %nyx_string* %1214, %nyx_string** %1215
  %1216 = load %nyx_string*, %nyx_string** %1215
  %1217 = load %nyx_string*, %nyx_string** %name.ptr
  %1218 = call i1 @nyx_string_equals(%nyx_string* %1216, %nyx_string* %1217)
  br i1 %1218, label %then327, label %else328
then327:
  ret i1 1
else328:
  br label %merge329
merge329:
  %1219 = load i64, i64* %1180
  %1220 = add i64 %1219, 1
  store i64 %1220, i64* %1180
  br label %while_cond324
while_end326:
  store i64 0, i64* %1180
  br label %while_cond330
while_cond330:
  %1221 = load i64, i64* %1180
  %1222 = load i64, i64* @g_alias_count
  %1223 = icmp slt i64 %1221, %1222
  br i1 %1223, label %while_body331, label %while_end332
while_body331:
  %1224 = load { i64, i8* }*, { i64, i8* }** @g_alias_names
  %1225 = load i64, i64* %1180
  %1226 = call i64 @nyx_array_get({ i64, i8* }* %1224, i64 %1225)
  %1227 = inttoptr i64 %1226 to %nyx_string*
  %1228 = alloca %nyx_string*
  store %nyx_string* %1227, %nyx_string** %1228
  %1229 = load %nyx_string*, %nyx_string** %1228
  %1230 = load %nyx_string*, %nyx_string** %name.ptr
  %1231 = call i1 @nyx_string_equals(%nyx_string* %1229, %nyx_string* %1230)
  br i1 %1231, label %then333, label %else334
then333:
  ret i1 1
else334:
  br label %merge335
merge335:
  %1232 = load i64, i64* %1180
  %1233 = add i64 %1232, 1
  store i64 %1233, i64* %1180
  br label %while_cond330
while_end332:
  ret i1 0
}

define internal { i64, i8* }* @known_type_names(
) {
  %1234 = call { i64, i8* }* @known_primitive_names()
  %1235 = alloca { i64, i8* }*
  store { i64, i8* }* %1234, { i64, i8* }** %1235
  %1236 = alloca i64
  store i64 0, i64* %1236
  br label %while_cond336
while_cond336:
  %1237 = load i64, i64* %1236
  %1238 = load i64, i64* @g_struct_reg_count
  %1239 = icmp slt i64 %1237, %1238
  br i1 %1239, label %while_body337, label %while_end338
while_body337:
  %1240 = load { i64, i8* }*, { i64, i8* }** @g_struct_reg_names
  %1241 = load i64, i64* %1236
  %1242 = call i64 @nyx_array_get({ i64, i8* }* %1240, i64 %1241)
  %1243 = inttoptr i64 %1242 to %nyx_string*
  %1244 = alloca %nyx_string*
  store %nyx_string* %1243, %nyx_string** %1244
  %1245 = load { i64, i8* }*, { i64, i8* }** %1235
  %1246 = load %nyx_string*, %nyx_string** %1244
  %1247 = ptrtoint %nyx_string* %1246 to i64
  call void @nyx_array_push({ i64, i8* }* %1245, i64 %1247)
  %1248 = load i64, i64* %1236
  %1249 = add i64 %1248, 1
  store i64 %1249, i64* %1236
  br label %while_cond336
while_end338:
  store i64 0, i64* %1236
  br label %while_cond339
while_cond339:
  %1250 = load i64, i64* %1236
  %1251 = load i64, i64* @g_enum_reg_count
  %1252 = icmp slt i64 %1250, %1251
  br i1 %1252, label %while_body340, label %while_end341
while_body340:
  %1253 = load { i64, i8* }*, { i64, i8* }** @g_enum_reg_names
  %1254 = load i64, i64* %1236
  %1255 = call i64 @nyx_array_get({ i64, i8* }* %1253, i64 %1254)
  %1256 = inttoptr i64 %1255 to %nyx_string*
  %1257 = alloca %nyx_string*
  store %nyx_string* %1256, %nyx_string** %1257
  %1258 = load { i64, i8* }*, { i64, i8* }** %1235
  %1259 = load %nyx_string*, %nyx_string** %1257
  %1260 = ptrtoint %nyx_string* %1259 to i64
  call void @nyx_array_push({ i64, i8* }* %1258, i64 %1260)
  %1261 = load i64, i64* %1236
  %1262 = add i64 %1261, 1
  store i64 %1262, i64* %1236
  br label %while_cond339
while_end341:
  store i64 0, i64* %1236
  br label %while_cond342
while_cond342:
  %1263 = load i64, i64* %1236
  %1264 = load i64, i64* @g_alias_count
  %1265 = icmp slt i64 %1263, %1264
  br i1 %1265, label %while_body343, label %while_end344
while_body343:
  %1266 = load { i64, i8* }*, { i64, i8* }** @g_alias_names
  %1267 = load i64, i64* %1236
  %1268 = call i64 @nyx_array_get({ i64, i8* }* %1266, i64 %1267)
  %1269 = inttoptr i64 %1268 to %nyx_string*
  %1270 = alloca %nyx_string*
  store %nyx_string* %1269, %nyx_string** %1270
  %1271 = load { i64, i8* }*, { i64, i8* }** %1235
  %1272 = load %nyx_string*, %nyx_string** %1270
  %1273 = ptrtoint %nyx_string* %1272 to i64
  call void @nyx_array_push({ i64, i8* }* %1271, i64 %1273)
  %1274 = load i64, i64* %1236
  %1275 = add i64 %1274, 1
  store i64 %1275, i64* %1236
  br label %while_cond342
while_end344:
  %1276 = load { i64, i8* }*, { i64, i8* }** %1235
  ret { i64, i8* }* %1276
}

define internal { i64, i8* }* @validate_type_ann(
%nyx_string* %ann.param) {
  %ann.ptr = alloca %nyx_string*
  store %nyx_string* %ann.param, %nyx_string** %ann.ptr
  %1277 = load %nyx_string*, %nyx_string** %ann.ptr
  %1278 = getelementptr [1 x i8], [1 x i8]* @.str91, i32 0, i32 0
  %1279 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str91.c, i8* %1278)
  %1280 = call i1 @nyx_string_equals(%nyx_string* %1277, %nyx_string* %1279)
  br i1 %1280, label %then345, label %else346
then345:
  %1281 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1281
else346:
  br label %merge347
merge347:
  %1282 = load %nyx_string*, %nyx_string** %ann.ptr
  %1283 = call i64 @nyx_string_byte_length(%nyx_string* %1282)
  %1284 = icmp sgt i64 %1283, 0
  br i1 %1284, label %then348, label %else349
then348:
  %1285 = load %nyx_string*, %nyx_string** %ann.ptr
  %1286 = call i8 @nyx_string_char_at(%nyx_string* %1285, i64 0)
  %1287 = zext i8 %1286 to i64
  %1288 = alloca i64
  store i64 %1287, i64* %1288
  %1289 = load i64, i64* %1288
  %1290 = icmp eq i64 %1289, 40
  br i1 %1290, label %then351, label %else352
then351:
  %1291 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1291
else352:
  br label %merge353
merge353:
  %1292 = load i64, i64* %1288
  %1293 = icmp eq i64 %1292, 91
  br i1 %1293, label %then354, label %else355
then354:
  %1294 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1294
else355:
  br label %merge356
merge356:
  br label %merge350
else349:
  br label %merge350
merge350:
  %1295 = load %nyx_string*, %nyx_string** %ann.ptr
  %1296 = call { i64, i8* }* @ty_parse(%nyx_string* %1295)
  %1297 = alloca { i64, i8* }*
  store { i64, i8* }* %1296, { i64, i8* }** %1297
  %1298 = load { i64, i8* }*, { i64, i8* }** %1297
  %1299 = call %nyx_string* @ty_kind({ i64, i8* }* %1298)
  %1300 = alloca %nyx_string*
  store %nyx_string* %1299, %nyx_string** %1300
  %1301 = load %nyx_string*, %nyx_string** %1300
  %1302 = getelementptr [9 x i8], [9 x i8]* @.str92, i32 0, i32 0
  %1303 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str92.c, i8* %1302)
  %1304 = call i1 @nyx_string_equals(%nyx_string* %1301, %nyx_string* %1303)
  br i1 %1304, label %then357, label %else358
then357:
  %1305 = load { i64, i8* }*, { i64, i8* }** %1297
  %1306 = call i64 @nyx_array_get({ i64, i8* }* %1305, i64 1)
  %1307 = inttoptr i64 %1306 to %nyx_string*
  %1308 = alloca %nyx_string*
  store %nyx_string* %1307, %nyx_string** %1308
  %1309 = load { i64, i8* }*, { i64, i8* }** %1297
  %1310 = call i64 @nyx_array_get({ i64, i8* }* %1309, i64 2)
  %1311 = inttoptr i64 %1310 to { i64, i8* }*
  %1312 = alloca { i64, i8* }*
  store { i64, i8* }* %1311, { i64, i8* }** %1312
  %1313 = load { i64, i8* }*, { i64, i8* }** %1312
  %1314 = call i64 @nyx_array_length({ i64, i8* }* %1313)
  %1315 = icmp eq i64 %1314, 0
  br i1 %1315, label %then360, label %else361
then360:
  %1316 = load %nyx_string*, %nyx_string** %1308
  %1317 = call i1 @is_known_type_name(%nyx_string* %1316)
  %1318 = xor i1 %1317, true
  br i1 %1318, label %then363, label %else364
then363:
  %1319 = load i1, i1* @g_has_imports
  br i1 %1319, label %then366, label %else367
then366:
  %1320 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1320
else367:
  br label %merge368
merge368:
  %1321 = load %nyx_string*, %nyx_string** %1308
  %1322 = call { i64, i8* }* @known_type_names()
  %1323 = call %nyx_string* @suggest_similar_name(%nyx_string* %1321, { i64, i8* }* %1322)
  %1324 = alloca %nyx_string*
  store %nyx_string* %1323, %nyx_string** %1324
  %1325 = getelementptr [8 x i8], [8 x i8]* @.str93, i32 0, i32 0
  %1326 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str93.c, i8* %1325)
  %1327 = getelementptr [19 x i8], [19 x i8]* @.str94, i32 0, i32 0
  %1328 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str94.c, i8* %1327)
  %1329 = load %nyx_string*, %nyx_string** %1308
  %1330 = call %nyx_string* @nyx_string_concat(%nyx_string* %1328, %nyx_string* %1329)
  %1331 = getelementptr [2 x i8], [2 x i8]* @.str95, i32 0, i32 0
  %1332 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str95.c, i8* %1331)
  %1333 = call %nyx_string* @nyx_string_concat(%nyx_string* %1330, %nyx_string* %1332)
  %1334 = getelementptr [15 x i8], [15 x i8]* @.str96, i32 0, i32 0
  %1335 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str96.c, i8* %1334)
  %1336 = load %nyx_string*, %nyx_string** %1308
  %1337 = call %nyx_string* @nyx_string_concat(%nyx_string* %1335, %nyx_string* %1336)
  %1338 = getelementptr [2 x i8], [2 x i8]* @.str97, i32 0, i32 0
  %1339 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str97.c, i8* %1338)
  %1340 = call %nyx_string* @nyx_string_concat(%nyx_string* %1337, %nyx_string* %1339)
  %1341 = call %nyx_string* @msg(%nyx_string* %1333, %nyx_string* %1340)
  %1342 = load %nyx_string*, %nyx_string** %1324
  %1343 = call %nyx_string* @suggest_phrase(%nyx_string* %1342)
  %1344 = call %nyx_string* @nyx_string_concat(%nyx_string* %1341, %nyx_string* %1343)
  %1345 = load %nyx_string*, %nyx_string** %1324
  %1346 = call i64 @sem_diag(%nyx_string* %1326, %nyx_string* %1344, %nyx_string* %1345)
  %1347 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1347
else364:
  br label %merge365
merge365:
  br label %merge362
else361:
  br label %merge362
merge362:
  br label %merge359
else358:
  br label %merge359
merge359:
  %1348 = load { i64, i8* }*, { i64, i8* }** %1297
  %1349 = call { i64, i8* }* @resolve_type({ i64, i8* }* %1348)
  ret { i64, i8* }* %1349
}

define internal i64 @register_fn_sig(
%nyx_string* %name.param, { i64, i8* }* %params.param, { i64, i8* }* %ret.param, { i64, i8* }* %type_params.param, { i64, i8* }* %type_bounds.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %params.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %params.param, { i64, i8* }** %params.ptr
  %ret.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ret.param, { i64, i8* }** %ret.ptr
  %type_params.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %type_params.param, { i64, i8* }** %type_params.ptr
  %type_bounds.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %type_bounds.param, { i64, i8* }** %type_bounds.ptr
  %1350 = load { i64, i8* }*, { i64, i8* }** @g_fn_sig_names
  %1351 = load %nyx_string*, %nyx_string** %name.ptr
  %1352 = ptrtoint %nyx_string* %1351 to i64
  call void @nyx_array_push({ i64, i8* }* %1350, i64 %1352)
  %1353 = load { i64, i8* }*, { i64, i8* }** @g_fn_sig_params
  %1354 = load { i64, i8* }*, { i64, i8* }** %params.ptr
  %1355 = ptrtoint { i64, i8* }* %1354 to i64
  call void @nyx_array_push({ i64, i8* }* %1353, i64 %1355)
  %1356 = load { i64, i8* }*, { i64, i8* }** @g_fn_sig_returns
  %1357 = load { i64, i8* }*, { i64, i8* }** %ret.ptr
  %1358 = ptrtoint { i64, i8* }* %1357 to i64
  call void @nyx_array_push({ i64, i8* }* %1356, i64 %1358)
  %1359 = load { i64, i8* }*, { i64, i8* }** @g_fn_sig_type_params
  %1360 = load { i64, i8* }*, { i64, i8* }** %type_params.ptr
  %1361 = ptrtoint { i64, i8* }* %1360 to i64
  call void @nyx_array_push({ i64, i8* }* %1359, i64 %1361)
  %1362 = load { i64, i8* }*, { i64, i8* }** @g_fn_sig_type_bounds
  %1363 = load { i64, i8* }*, { i64, i8* }** %type_bounds.ptr
  %1364 = ptrtoint { i64, i8* }* %1363 to i64
  call void @nyx_array_push({ i64, i8* }* %1362, i64 %1364)
  %1365 = load i64, i64* @g_fn_sig_count
  %1366 = add i64 %1365, 1
  store i64 %1366, i64* @g_fn_sig_count
  ret i64 0
}

define internal { i64, i8* }* @lookup_fn_sig(
%nyx_string* %name.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %1367 = alloca i64
  store i64 0, i64* %1367
  br label %while_cond369
while_cond369:
  %1368 = load i64, i64* %1367
  %1369 = load i64, i64* @g_fn_sig_count
  %1370 = icmp slt i64 %1368, %1369
  br i1 %1370, label %while_body370, label %while_end371
while_body370:
  %1371 = load { i64, i8* }*, { i64, i8* }** @g_fn_sig_names
  %1372 = load i64, i64* %1367
  %1373 = call i64 @nyx_array_get({ i64, i8* }* %1371, i64 %1372)
  %1374 = inttoptr i64 %1373 to %nyx_string*
  %1375 = alloca %nyx_string*
  store %nyx_string* %1374, %nyx_string** %1375
  %1376 = load %nyx_string*, %nyx_string** %1375
  %1377 = load %nyx_string*, %nyx_string** %name.ptr
  %1378 = call i1 @nyx_string_equals(%nyx_string* %1376, %nyx_string* %1377)
  br i1 %1378, label %then372, label %else373
then372:
  %1379 = load { i64, i8* }*, { i64, i8* }** @g_fn_sig_params
  %1380 = load i64, i64* %1367
  %1381 = call i64 @nyx_array_get({ i64, i8* }* %1379, i64 %1380)
  %1382 = inttoptr i64 %1381 to { i64, i8* }*
  %1383 = alloca { i64, i8* }*
  store { i64, i8* }* %1382, { i64, i8* }** %1383
  %1384 = load { i64, i8* }*, { i64, i8* }** @g_fn_sig_returns
  %1385 = load i64, i64* %1367
  %1386 = call i64 @nyx_array_get({ i64, i8* }* %1384, i64 %1385)
  %1387 = inttoptr i64 %1386 to { i64, i8* }*
  %1388 = alloca { i64, i8* }*
  store { i64, i8* }* %1387, { i64, i8* }** %1388
  %1389 = load { i64, i8* }*, { i64, i8* }** @g_fn_sig_type_params
  %1390 = load i64, i64* %1367
  %1391 = call i64 @nyx_array_get({ i64, i8* }* %1389, i64 %1390)
  %1392 = inttoptr i64 %1391 to { i64, i8* }*
  %1393 = alloca { i64, i8* }*
  store { i64, i8* }* %1392, { i64, i8* }** %1393
  %1394 = call { i64, i8* }* @nyx_array_new_ptr()
  %1395 = load { i64, i8* }*, { i64, i8* }** %1383
  %1396 = bitcast { i64, i8* }* %1395 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1394, i8* %1396)
  %1397 = load { i64, i8* }*, { i64, i8* }** %1388
  %1398 = bitcast { i64, i8* }* %1397 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1394, i8* %1398)
  %1399 = load { i64, i8* }*, { i64, i8* }** %1393
  %1400 = bitcast { i64, i8* }* %1399 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1394, i8* %1400)
  ret { i64, i8* }* %1394
else373:
  br label %merge374
merge374:
  %1401 = load i64, i64* %1367
  %1402 = add i64 %1401, 1
  store i64 %1402, i64* %1367
  br label %while_cond369
while_end371:
  %1403 = call { i64, i8* }* @nyx_array_new_ptr()
  ret { i64, i8* }* %1403
}

define internal { i64, i8* }* @lookup_fn_sig_bounds(
%nyx_string* %name.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %1404 = alloca i64
  store i64 0, i64* %1404
  br label %while_cond375
while_cond375:
  %1405 = load i64, i64* %1404
  %1406 = load i64, i64* @g_fn_sig_count
  %1407 = icmp slt i64 %1405, %1406
  br i1 %1407, label %while_body376, label %while_end377
while_body376:
  %1408 = load { i64, i8* }*, { i64, i8* }** @g_fn_sig_names
  %1409 = load i64, i64* %1404
  %1410 = call i64 @nyx_array_get({ i64, i8* }* %1408, i64 %1409)
  %1411 = inttoptr i64 %1410 to %nyx_string*
  %1412 = alloca %nyx_string*
  store %nyx_string* %1411, %nyx_string** %1412
  %1413 = load %nyx_string*, %nyx_string** %1412
  %1414 = load %nyx_string*, %nyx_string** %name.ptr
  %1415 = call i1 @nyx_string_equals(%nyx_string* %1413, %nyx_string* %1414)
  br i1 %1415, label %then378, label %else379
then378:
  %1416 = load { i64, i8* }*, { i64, i8* }** @g_fn_sig_type_bounds
  %1417 = load i64, i64* %1404
  %1418 = call i64 @nyx_array_get({ i64, i8* }* %1416, i64 %1417)
  %1419 = inttoptr i64 %1418 to { i64, i8* }*
  %1420 = alloca { i64, i8* }*
  store { i64, i8* }* %1419, { i64, i8* }** %1420
  %1421 = load { i64, i8* }*, { i64, i8* }** %1420
  ret { i64, i8* }* %1421
else379:
  br label %merge380
merge380:
  %1422 = load i64, i64* %1404
  %1423 = add i64 %1422, 1
  store i64 %1423, i64* %1404
  br label %while_cond375
while_end377:
  %1424 = call { i64, i8* }* @nyx_array_new_ptr()
  ret { i64, i8* }* %1424
}

define internal { i64, i8* }* @extract_type_param_names(
{ i64, i8* }* %raw.param) {
  %raw.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %raw.param, { i64, i8* }** %raw.ptr
  %1425 = call { i64, i8* }* @nyx_array_new_ptr()
  %1426 = alloca { i64, i8* }*
  store { i64, i8* }* %1425, { i64, i8* }** %1426
  %1427 = alloca i64
  store i64 0, i64* %1427
  %1428 = getelementptr [2 x i8], [2 x i8]* @.str98, i32 0, i32 0
  %1429 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str98.c, i8* %1428)
  %1430 = alloca %nyx_string*
  store %nyx_string* %1429, %nyx_string** %1430
  %1431 = getelementptr [2 x i8], [2 x i8]* @.str99, i32 0, i32 0
  %1432 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str99.c, i8* %1431)
  %1433 = alloca %nyx_string*
  store %nyx_string* %1432, %nyx_string** %1433
  br label %while_cond381
while_cond381:
  %1434 = load i64, i64* %1427
  %1435 = load { i64, i8* }*, { i64, i8* }** %raw.ptr
  %1436 = call i64 @nyx_array_length({ i64, i8* }* %1435)
  %1437 = icmp slt i64 %1434, %1436
  br i1 %1437, label %while_body382, label %while_end383
while_body382:
  %1438 = load { i64, i8* }*, { i64, i8* }** %raw.ptr
  %1439 = load i64, i64* %1427
  %1440 = call i64 @nyx_array_get({ i64, i8* }* %1438, i64 %1439)
  %1441 = inttoptr i64 %1440 to %nyx_string*
  %1442 = alloca %nyx_string*
  store %nyx_string* %1441, %nyx_string** %1442
  %1443 = load %nyx_string*, %nyx_string** %1442
  %1444 = call %nyx_string* @nyx_string_trim(%nyx_string* %1443)
  %1445 = alloca %nyx_string*
  store %nyx_string* %1444, %nyx_string** %1445
  %1446 = load %nyx_string*, %nyx_string** %1445
  %1447 = call i64 @nyx_string_byte_length(%nyx_string* %1446)
  %1448 = icmp sgt i64 %1447, 0
  br i1 %1448, label %then384, label %else385
then384:
  %1449 = load %nyx_string*, %nyx_string** %1445
  %1450 = call i8 @nyx_string_char_at(%nyx_string* %1449, i64 0)
  %1451 = zext i8 %1450 to i64
  %1452 = alloca i64
  store i64 %1451, i64* %1452
  %1453 = load i64, i64* %1452
  %1454 = icmp ne i64 %1453, 39
  br i1 %1454, label %then387, label %else388
then387:
  %1455 = load %nyx_string*, %nyx_string** %1445
  %1456 = alloca %nyx_string*
  store %nyx_string* %1455, %nyx_string** %1456
  %1457 = load %nyx_string*, %nyx_string** %1456
  %1458 = load %nyx_string*, %nyx_string** %1430
  %1459 = call i64 @nyx_string_index_of(%nyx_string* %1457, %nyx_string* %1458)
  %1460 = alloca i64
  store i64 %1459, i64* %1460
  %1461 = load i64, i64* %1460
  %1462 = icmp sgt i64 %1461, 0
  br i1 %1462, label %then390, label %else391
then390:
  %1463 = load %nyx_string*, %nyx_string** %1456
  %1464 = load i64, i64* %1460
  %1465 = call %nyx_string* @nyx_string_substring(%nyx_string* %1463, i64 0, i64 %1464)
  %1466 = call %nyx_string* @nyx_string_trim(%nyx_string* %1465)
  store %nyx_string* %1466, %nyx_string** %1456
  br label %merge392
else391:
  br label %merge392
merge392:
  %1467 = load %nyx_string*, %nyx_string** %1456
  %1468 = load %nyx_string*, %nyx_string** %1433
  %1469 = call i64 @nyx_string_index_of(%nyx_string* %1467, %nyx_string* %1468)
  %1470 = alloca i64
  store i64 %1469, i64* %1470
  %1471 = load i64, i64* %1470
  %1472 = icmp sgt i64 %1471, 0
  br i1 %1472, label %then393, label %else394
then393:
  %1473 = load %nyx_string*, %nyx_string** %1456
  %1474 = load i64, i64* %1470
  %1475 = call %nyx_string* @nyx_string_substring(%nyx_string* %1473, i64 0, i64 %1474)
  %1476 = call %nyx_string* @nyx_string_trim(%nyx_string* %1475)
  store %nyx_string* %1476, %nyx_string** %1456
  br label %merge395
else394:
  br label %merge395
merge395:
  %1477 = load %nyx_string*, %nyx_string** %1456
  %1478 = call i64 @nyx_string_byte_length(%nyx_string* %1477)
  %1479 = icmp sgt i64 %1478, 0
  br i1 %1479, label %then396, label %else397
then396:
  %1480 = load { i64, i8* }*, { i64, i8* }** %1426
  %1481 = load %nyx_string*, %nyx_string** %1456
  %1482 = ptrtoint %nyx_string* %1481 to i64
  call void @nyx_array_push({ i64, i8* }* %1480, i64 %1482)
  br label %merge398
else397:
  br label %merge398
merge398:
  br label %merge389
else388:
  br label %merge389
merge389:
  br label %merge386
else385:
  br label %merge386
merge386:
  %1483 = load i64, i64* %1427
  %1484 = add i64 %1483, 1
  store i64 %1484, i64* %1427
  br label %while_cond381
while_end383:
  %1485 = load { i64, i8* }*, { i64, i8* }** %1426
  ret { i64, i8* }* %1485
}

define internal { i64, i8* }* @extract_type_param_bounds(
{ i64, i8* }* %raw.param) {
  %raw.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %raw.param, { i64, i8* }** %raw.ptr
  %1486 = call { i64, i8* }* @nyx_array_new_ptr()
  %1487 = alloca { i64, i8* }*
  store { i64, i8* }* %1486, { i64, i8* }** %1487
  %1488 = alloca i64
  store i64 0, i64* %1488
  %1489 = getelementptr [2 x i8], [2 x i8]* @.str100, i32 0, i32 0
  %1490 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str100.c, i8* %1489)
  %1491 = alloca %nyx_string*
  store %nyx_string* %1490, %nyx_string** %1491
  %1492 = getelementptr [2 x i8], [2 x i8]* @.str101, i32 0, i32 0
  %1493 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str101.c, i8* %1492)
  %1494 = alloca %nyx_string*
  store %nyx_string* %1493, %nyx_string** %1494
  br label %while_cond399
while_cond399:
  %1495 = load i64, i64* %1488
  %1496 = load { i64, i8* }*, { i64, i8* }** %raw.ptr
  %1497 = call i64 @nyx_array_length({ i64, i8* }* %1496)
  %1498 = icmp slt i64 %1495, %1497
  br i1 %1498, label %while_body400, label %while_end401
while_body400:
  %1499 = load { i64, i8* }*, { i64, i8* }** %raw.ptr
  %1500 = load i64, i64* %1488
  %1501 = call i64 @nyx_array_get({ i64, i8* }* %1499, i64 %1500)
  %1502 = inttoptr i64 %1501 to %nyx_string*
  %1503 = alloca %nyx_string*
  store %nyx_string* %1502, %nyx_string** %1503
  %1504 = load %nyx_string*, %nyx_string** %1503
  %1505 = call %nyx_string* @nyx_string_trim(%nyx_string* %1504)
  %1506 = alloca %nyx_string*
  store %nyx_string* %1505, %nyx_string** %1506
  %1507 = load %nyx_string*, %nyx_string** %1506
  %1508 = call i64 @nyx_string_byte_length(%nyx_string* %1507)
  %1509 = icmp sgt i64 %1508, 0
  br i1 %1509, label %then402, label %else403
then402:
  %1510 = load %nyx_string*, %nyx_string** %1506
  %1511 = call i8 @nyx_string_char_at(%nyx_string* %1510, i64 0)
  %1512 = zext i8 %1511 to i64
  %1513 = alloca i64
  store i64 %1512, i64* %1513
  %1514 = load i64, i64* %1513
  %1515 = icmp ne i64 %1514, 39
  br i1 %1515, label %then405, label %else406
then405:
  %1516 = load %nyx_string*, %nyx_string** %1506
  %1517 = alloca %nyx_string*
  store %nyx_string* %1516, %nyx_string** %1517
  %1518 = load %nyx_string*, %nyx_string** %1517
  %1519 = load %nyx_string*, %nyx_string** %1491
  %1520 = call i64 @nyx_string_index_of(%nyx_string* %1518, %nyx_string* %1519)
  %1521 = alloca i64
  store i64 %1520, i64* %1521
  %1522 = load i64, i64* %1521
  %1523 = icmp sgt i64 %1522, 0
  br i1 %1523, label %then408, label %else409
then408:
  %1524 = load %nyx_string*, %nyx_string** %1517
  %1525 = load i64, i64* %1521
  %1526 = call %nyx_string* @nyx_string_substring(%nyx_string* %1524, i64 0, i64 %1525)
  %1527 = call %nyx_string* @nyx_string_trim(%nyx_string* %1526)
  store %nyx_string* %1527, %nyx_string** %1517
  br label %merge410
else409:
  br label %merge410
merge410:
  %1528 = load %nyx_string*, %nyx_string** %1517
  %1529 = load %nyx_string*, %nyx_string** %1494
  %1530 = call i64 @nyx_string_index_of(%nyx_string* %1528, %nyx_string* %1529)
  %1531 = alloca i64
  store i64 %1530, i64* %1531
  %1532 = load i64, i64* %1531
  %1533 = icmp sgt i64 %1532, 0
  br i1 %1533, label %then411, label %else412
then411:
  %1534 = load %nyx_string*, %nyx_string** %1517
  %1535 = load i64, i64* %1531
  %1536 = call %nyx_string* @nyx_string_substring(%nyx_string* %1534, i64 0, i64 %1535)
  %1537 = call %nyx_string* @nyx_string_trim(%nyx_string* %1536)
  store %nyx_string* %1537, %nyx_string** %1517
  br label %merge413
else412:
  br label %merge413
merge413:
  %1538 = load %nyx_string*, %nyx_string** %1517
  %1539 = call i64 @nyx_string_byte_length(%nyx_string* %1538)
  %1540 = icmp sgt i64 %1539, 0
  br i1 %1540, label %then414, label %else415
then414:
  %1541 = call { i64, i8* }* @nyx_array_new_ptr()
  %1542 = alloca { i64, i8* }*
  store { i64, i8* }* %1541, { i64, i8* }** %1542
  %1543 = load i64, i64* %1521
  %1544 = icmp sgt i64 %1543, 0
  br i1 %1544, label %then417, label %else418
then417:
  %1545 = load %nyx_string*, %nyx_string** %1506
  %1546 = load i64, i64* %1521
  %1547 = add i64 %1546, 1
  %1548 = load %nyx_string*, %nyx_string** %1506
  %1549 = call i64 @nyx_string_byte_length(%nyx_string* %1548)
  %1550 = call %nyx_string* @nyx_string_substring(%nyx_string* %1545, i64 %1547, i64 %1549)
  %1551 = alloca %nyx_string*
  store %nyx_string* %1550, %nyx_string** %1551
  %1552 = alloca i1
  store i1 0, i1* %1552
  br label %while_cond420
while_cond420:
  %1553 = load i1, i1* %1552
  %1554 = xor i1 %1553, true
  br i1 %1554, label %while_body421, label %while_end422
while_body421:
  %1555 = load %nyx_string*, %nyx_string** %1551
  %1556 = load %nyx_string*, %nyx_string** %1494
  %1557 = call i64 @nyx_string_index_of(%nyx_string* %1555, %nyx_string* %1556)
  %1558 = alloca i64
  store i64 %1557, i64* %1558
  %1559 = load %nyx_string*, %nyx_string** %1551
  %1560 = alloca %nyx_string*
  store %nyx_string* %1559, %nyx_string** %1560
  %1561 = load i64, i64* %1558
  %1562 = icmp sge i64 %1561, 0
  br i1 %1562, label %then423, label %else424
then423:
  %1563 = load %nyx_string*, %nyx_string** %1551
  %1564 = load i64, i64* %1558
  %1565 = call %nyx_string* @nyx_string_substring(%nyx_string* %1563, i64 0, i64 %1564)
  store %nyx_string* %1565, %nyx_string** %1560
  %1566 = load %nyx_string*, %nyx_string** %1551
  %1567 = load i64, i64* %1558
  %1568 = add i64 %1567, 1
  %1569 = load %nyx_string*, %nyx_string** %1551
  %1570 = call i64 @nyx_string_byte_length(%nyx_string* %1569)
  %1571 = call %nyx_string* @nyx_string_substring(%nyx_string* %1566, i64 %1568, i64 %1570)
  store %nyx_string* %1571, %nyx_string** %1551
  br label %merge425
else424:
  store i1 1, i1* %1552
  br label %merge425
merge425:
  %1572 = load %nyx_string*, %nyx_string** %1560
  %1573 = call %nyx_string* @nyx_string_trim(%nyx_string* %1572)
  %1574 = alloca %nyx_string*
  store %nyx_string* %1573, %nyx_string** %1574
  %1575 = load %nyx_string*, %nyx_string** %1574
  %1576 = call i64 @nyx_string_byte_length(%nyx_string* %1575)
  %1577 = icmp sgt i64 %1576, 0
  br i1 %1577, label %then426, label %else427
then426:
  %1578 = load { i64, i8* }*, { i64, i8* }** %1542
  %1579 = load %nyx_string*, %nyx_string** %1574
  %1580 = ptrtoint %nyx_string* %1579 to i64
  call void @nyx_array_push({ i64, i8* }* %1578, i64 %1580)
  br label %merge428
else427:
  br label %merge428
merge428:
  br label %while_cond420
while_end422:
  br label %merge419
else418:
  br label %merge419
merge419:
  %1581 = load { i64, i8* }*, { i64, i8* }** %1487
  %1582 = load { i64, i8* }*, { i64, i8* }** %1542
  %1583 = ptrtoint { i64, i8* }* %1582 to i64
  call void @nyx_array_push({ i64, i8* }* %1581, i64 %1583)
  br label %merge416
else415:
  br label %merge416
merge416:
  br label %merge407
else406:
  br label %merge407
merge407:
  br label %merge404
else403:
  br label %merge404
merge404:
  %1584 = load i64, i64* %1488
  %1585 = add i64 %1584, 1
  store i64 %1585, i64* %1488
  br label %while_cond399
while_end401:
  %1586 = load { i64, i8* }*, { i64, i8* }** %1487
  ret { i64, i8* }* %1586
}

define internal i64 @register_type_alias(
%nyx_string* %name.param, { i64, i8* }* %target.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %target.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %target.param, { i64, i8* }** %target.ptr
  %1587 = load { i64, i8* }*, { i64, i8* }** @g_alias_names
  %1588 = load %nyx_string*, %nyx_string** %name.ptr
  %1589 = ptrtoint %nyx_string* %1588 to i64
  call void @nyx_array_push({ i64, i8* }* %1587, i64 %1589)
  %1590 = load { i64, i8* }*, { i64, i8* }** @g_alias_targets
  %1591 = load { i64, i8* }*, { i64, i8* }** %target.ptr
  %1592 = ptrtoint { i64, i8* }* %1591 to i64
  call void @nyx_array_push({ i64, i8* }* %1590, i64 %1592)
  %1593 = load i64, i64* @g_alias_count
  %1594 = add i64 %1593, 1
  store i64 %1594, i64* @g_alias_count
  ret i64 0
}

define internal { i64, i8* }* @lookup_type_alias(
%nyx_string* %name.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %1595 = alloca i64
  store i64 0, i64* %1595
  br label %while_cond429
while_cond429:
  %1596 = load i64, i64* %1595
  %1597 = load i64, i64* @g_alias_count
  %1598 = icmp slt i64 %1596, %1597
  br i1 %1598, label %while_body430, label %while_end431
while_body430:
  %1599 = load { i64, i8* }*, { i64, i8* }** @g_alias_names
  %1600 = load i64, i64* %1595
  %1601 = call i64 @nyx_array_get({ i64, i8* }* %1599, i64 %1600)
  %1602 = inttoptr i64 %1601 to %nyx_string*
  %1603 = alloca %nyx_string*
  store %nyx_string* %1602, %nyx_string** %1603
  %1604 = load %nyx_string*, %nyx_string** %1603
  %1605 = load %nyx_string*, %nyx_string** %name.ptr
  %1606 = call i1 @nyx_string_equals(%nyx_string* %1604, %nyx_string* %1605)
  br i1 %1606, label %then432, label %else433
then432:
  %1607 = load { i64, i8* }*, { i64, i8* }** @g_alias_targets
  %1608 = load i64, i64* %1595
  %1609 = call i64 @nyx_array_get({ i64, i8* }* %1607, i64 %1608)
  %1610 = inttoptr i64 %1609 to { i64, i8* }*
  %1611 = alloca { i64, i8* }*
  store { i64, i8* }* %1610, { i64, i8* }** %1611
  %1612 = load { i64, i8* }*, { i64, i8* }** %1611
  ret { i64, i8* }* %1612
else433:
  br label %merge434
merge434:
  %1613 = load i64, i64* %1595
  %1614 = add i64 %1613, 1
  store i64 %1614, i64* %1595
  br label %while_cond429
while_end431:
  %1615 = call { i64, i8* }* @nyx_array_new_ptr()
  ret { i64, i8* }* %1615
}

define internal i1 @is_type_alias(
%nyx_string* %name.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %1616 = alloca i64
  store i64 0, i64* %1616
  br label %while_cond435
while_cond435:
  %1617 = load i64, i64* %1616
  %1618 = load i64, i64* @g_alias_count
  %1619 = icmp slt i64 %1617, %1618
  br i1 %1619, label %while_body436, label %while_end437
while_body436:
  %1620 = load { i64, i8* }*, { i64, i8* }** @g_alias_names
  %1621 = load i64, i64* %1616
  %1622 = call i64 @nyx_array_get({ i64, i8* }* %1620, i64 %1621)
  %1623 = inttoptr i64 %1622 to %nyx_string*
  %1624 = alloca %nyx_string*
  store %nyx_string* %1623, %nyx_string** %1624
  %1625 = load %nyx_string*, %nyx_string** %1624
  %1626 = load %nyx_string*, %nyx_string** %name.ptr
  %1627 = call i1 @nyx_string_equals(%nyx_string* %1625, %nyx_string* %1626)
  br i1 %1627, label %then438, label %else439
then438:
  ret i1 1
else439:
  br label %merge440
merge440:
  %1628 = load i64, i64* %1616
  %1629 = add i64 %1628, 1
  store i64 %1629, i64* %1616
  br label %while_cond435
while_end437:
  ret i1 0
}

define internal { i64, i8* }* @resolve_type(
{ i64, i8* }* %t.param) {
  %t.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %t.param, { i64, i8* }** %t.ptr
  %1630 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1631 = call %nyx_string* @ty_kind({ i64, i8* }* %1630)
  %1632 = alloca %nyx_string*
  store %nyx_string* %1631, %nyx_string** %1632
  %1633 = load %nyx_string*, %nyx_string** %1632
  %1634 = getelementptr [9 x i8], [9 x i8]* @.str102, i32 0, i32 0
  %1635 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str102.c, i8* %1634)
  %1636 = call i1 @nyx_string_equals(%nyx_string* %1633, %nyx_string* %1635)
  br i1 %1636, label %then441, label %else442
then441:
  %1637 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1638 = call i64 @nyx_array_get({ i64, i8* }* %1637, i64 1)
  %1639 = inttoptr i64 %1638 to %nyx_string*
  %1640 = alloca %nyx_string*
  store %nyx_string* %1639, %nyx_string** %1640
  %1641 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1642 = call i64 @nyx_array_get({ i64, i8* }* %1641, i64 2)
  %1643 = inttoptr i64 %1642 to { i64, i8* }*
  %1644 = alloca { i64, i8* }*
  store { i64, i8* }* %1643, { i64, i8* }** %1644
  %1645 = load { i64, i8* }*, { i64, i8* }** %1644
  %1646 = call i64 @nyx_array_length({ i64, i8* }* %1645)
  %1647 = icmp eq i64 %1646, 0
  br i1 %1647, label %then444, label %else445
then444:
  %1648 = load %nyx_string*, %nyx_string** %1640
  %1649 = call { i64, i8* }* @lookup_type_alias(%nyx_string* %1648)
  %1650 = alloca { i64, i8* }*
  store { i64, i8* }* %1649, { i64, i8* }** %1650
  %1651 = load { i64, i8* }*, { i64, i8* }** %1650
  %1652 = call i64 @nyx_array_length({ i64, i8* }* %1651)
  %1653 = icmp sgt i64 %1652, 0
  br i1 %1653, label %then447, label %else448
then447:
  %1654 = load { i64, i8* }*, { i64, i8* }** %1650
  %1655 = call { i64, i8* }* @resolve_type({ i64, i8* }* %1654)
  ret { i64, i8* }* %1655
else448:
  br label %merge449
merge449:
  br label %merge446
else445:
  br label %merge446
merge446:
  %1656 = call { i64, i8* }* @nyx_array_new_ptr()
  %1657 = alloca { i64, i8* }*
  store { i64, i8* }* %1656, { i64, i8* }** %1657
  %1658 = alloca i64
  store i64 0, i64* %1658
  br label %while_cond450
while_cond450:
  %1659 = load i64, i64* %1658
  %1660 = load { i64, i8* }*, { i64, i8* }** %1644
  %1661 = call i64 @nyx_array_length({ i64, i8* }* %1660)
  %1662 = icmp slt i64 %1659, %1661
  br i1 %1662, label %while_body451, label %while_end452
while_body451:
  %1663 = load { i64, i8* }*, { i64, i8* }** %1644
  %1664 = load i64, i64* %1658
  %1665 = call i64 @nyx_array_get({ i64, i8* }* %1663, i64 %1664)
  %1666 = inttoptr i64 %1665 to { i64, i8* }*
  %1667 = alloca { i64, i8* }*
  store { i64, i8* }* %1666, { i64, i8* }** %1667
  %1668 = load { i64, i8* }*, { i64, i8* }** %1657
  %1669 = load { i64, i8* }*, { i64, i8* }** %1667
  %1670 = call { i64, i8* }* @resolve_type({ i64, i8* }* %1669)
  %1671 = ptrtoint { i64, i8* }* %1670 to i64
  call void @nyx_array_push({ i64, i8* }* %1668, i64 %1671)
  %1672 = load i64, i64* %1658
  %1673 = add i64 %1672, 1
  store i64 %1673, i64* %1658
  br label %while_cond450
while_end452:
  %1674 = call { i64, i8* }* @nyx_array_new_ptr()
  %1675 = getelementptr [9 x i8], [9 x i8]* @.str103, i32 0, i32 0
  %1676 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str103.c, i8* %1675)
  %1677 = ptrtoint %nyx_string* %1676 to i64
  call void @nyx_array_push({ i64, i8* }* %1674, i64 %1677)
  %1678 = load %nyx_string*, %nyx_string** %1640
  %1679 = ptrtoint %nyx_string* %1678 to i64
  call void @nyx_array_push({ i64, i8* }* %1674, i64 %1679)
  %1680 = load { i64, i8* }*, { i64, i8* }** %1657
  %1681 = bitcast { i64, i8* }* %1680 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1674, i8* %1681)
  ret { i64, i8* }* %1674
else442:
  br label %merge443
merge443:
  %1682 = load %nyx_string*, %nyx_string** %1632
  %1683 = getelementptr [8 x i8], [8 x i8]* @.str104, i32 0, i32 0
  %1684 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str104.c, i8* %1683)
  %1685 = call i1 @nyx_string_equals(%nyx_string* %1682, %nyx_string* %1684)
  br i1 %1685, label %then453, label %else454
then453:
  %1686 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1687 = call i64 @nyx_array_get({ i64, i8* }* %1686, i64 1)
  %1688 = inttoptr i64 %1687 to { i64, i8* }*
  %1689 = alloca { i64, i8* }*
  store { i64, i8* }* %1688, { i64, i8* }** %1689
  %1690 = call { i64, i8* }* @nyx_array_new_ptr()
  %1691 = getelementptr [8 x i8], [8 x i8]* @.str105, i32 0, i32 0
  %1692 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str105.c, i8* %1691)
  %1693 = ptrtoint %nyx_string* %1692 to i64
  call void @nyx_array_push({ i64, i8* }* %1690, i64 %1693)
  %1694 = load { i64, i8* }*, { i64, i8* }** %1689
  %1695 = call { i64, i8* }* @resolve_type({ i64, i8* }* %1694)
  %1696 = bitcast { i64, i8* }* %1695 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1690, i8* %1696)
  ret { i64, i8* }* %1690
else454:
  br label %merge455
merge455:
  %1697 = load %nyx_string*, %nyx_string** %1632
  %1698 = getelementptr [9 x i8], [9 x i8]* @.str106, i32 0, i32 0
  %1699 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str106.c, i8* %1698)
  %1700 = call i1 @nyx_string_equals(%nyx_string* %1697, %nyx_string* %1699)
  br i1 %1700, label %then456, label %else457
then456:
  %1701 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1702 = call i64 @nyx_array_get({ i64, i8* }* %1701, i64 1)
  %1703 = inttoptr i64 %1702 to { i64, i8* }*
  %1704 = alloca { i64, i8* }*
  store { i64, i8* }* %1703, { i64, i8* }** %1704
  %1705 = call { i64, i8* }* @nyx_array_new_ptr()
  %1706 = getelementptr [9 x i8], [9 x i8]* @.str107, i32 0, i32 0
  %1707 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str107.c, i8* %1706)
  %1708 = ptrtoint %nyx_string* %1707 to i64
  call void @nyx_array_push({ i64, i8* }* %1705, i64 %1708)
  %1709 = load { i64, i8* }*, { i64, i8* }** %1704
  %1710 = call { i64, i8* }* @resolve_type({ i64, i8* }* %1709)
  %1711 = bitcast { i64, i8* }* %1710 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1705, i8* %1711)
  ret { i64, i8* }* %1705
else457:
  br label %merge458
merge458:
  %1712 = load %nyx_string*, %nyx_string** %1632
  %1713 = getelementptr [6 x i8], [6 x i8]* @.str108, i32 0, i32 0
  %1714 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str108.c, i8* %1713)
  %1715 = call i1 @nyx_string_equals(%nyx_string* %1712, %nyx_string* %1714)
  br i1 %1715, label %then459, label %else460
then459:
  %1716 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1717 = call i64 @nyx_array_get({ i64, i8* }* %1716, i64 1)
  %1718 = inttoptr i64 %1717 to { i64, i8* }*
  %1719 = alloca { i64, i8* }*
  store { i64, i8* }* %1718, { i64, i8* }** %1719
  %1720 = call { i64, i8* }* @nyx_array_new_ptr()
  %1721 = getelementptr [6 x i8], [6 x i8]* @.str109, i32 0, i32 0
  %1722 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str109.c, i8* %1721)
  %1723 = ptrtoint %nyx_string* %1722 to i64
  call void @nyx_array_push({ i64, i8* }* %1720, i64 %1723)
  %1724 = load { i64, i8* }*, { i64, i8* }** %1719
  %1725 = call { i64, i8* }* @resolve_type({ i64, i8* }* %1724)
  %1726 = bitcast { i64, i8* }* %1725 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1720, i8* %1726)
  ret { i64, i8* }* %1720
else460:
  br label %merge461
merge461:
  %1727 = load %nyx_string*, %nyx_string** %1632
  %1728 = getelementptr [6 x i8], [6 x i8]* @.str110, i32 0, i32 0
  %1729 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str110.c, i8* %1728)
  %1730 = call i1 @nyx_string_equals(%nyx_string* %1727, %nyx_string* %1729)
  br i1 %1730, label %then462, label %else463
then462:
  %1731 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1732 = call i64 @nyx_array_get({ i64, i8* }* %1731, i64 1)
  %1733 = inttoptr i64 %1732 to { i64, i8* }*
  %1734 = alloca { i64, i8* }*
  store { i64, i8* }* %1733, { i64, i8* }** %1734
  %1735 = getelementptr [1 x i8], [1 x i8]* @.str111, i32 0, i32 0
  %1736 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str111.c, i8* %1735)
  %1737 = alloca %nyx_string*
  store %nyx_string* %1736, %nyx_string** %1737
  %1738 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1739 = call i64 @nyx_array_length({ i64, i8* }* %1738)
  %1740 = icmp sgt i64 %1739, 2
  br i1 %1740, label %then465, label %else466
then465:
  %1741 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1742 = call i64 @nyx_array_get({ i64, i8* }* %1741, i64 2)
  %1743 = inttoptr i64 %1742 to %nyx_string*
  store %nyx_string* %1743, %nyx_string** %1737
  br label %merge467
else466:
  br label %merge467
merge467:
  %1744 = call { i64, i8* }* @nyx_array_new_ptr()
  %1745 = getelementptr [6 x i8], [6 x i8]* @.str112, i32 0, i32 0
  %1746 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str112.c, i8* %1745)
  %1747 = ptrtoint %nyx_string* %1746 to i64
  call void @nyx_array_push({ i64, i8* }* %1744, i64 %1747)
  %1748 = load { i64, i8* }*, { i64, i8* }** %1734
  %1749 = call { i64, i8* }* @resolve_type({ i64, i8* }* %1748)
  %1750 = bitcast { i64, i8* }* %1749 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1744, i8* %1750)
  %1751 = load %nyx_string*, %nyx_string** %1737
  %1752 = ptrtoint %nyx_string* %1751 to i64
  call void @nyx_array_push({ i64, i8* }* %1744, i64 %1752)
  ret { i64, i8* }* %1744
else463:
  br label %merge464
merge464:
  %1753 = load %nyx_string*, %nyx_string** %1632
  %1754 = getelementptr [9 x i8], [9 x i8]* @.str113, i32 0, i32 0
  %1755 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str113.c, i8* %1754)
  %1756 = call i1 @nyx_string_equals(%nyx_string* %1753, %nyx_string* %1755)
  br i1 %1756, label %then468, label %else469
then468:
  %1757 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1758 = call i64 @nyx_array_get({ i64, i8* }* %1757, i64 1)
  %1759 = inttoptr i64 %1758 to { i64, i8* }*
  %1760 = alloca { i64, i8* }*
  store { i64, i8* }* %1759, { i64, i8* }** %1760
  %1761 = getelementptr [1 x i8], [1 x i8]* @.str114, i32 0, i32 0
  %1762 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str114.c, i8* %1761)
  %1763 = alloca %nyx_string*
  store %nyx_string* %1762, %nyx_string** %1763
  %1764 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1765 = call i64 @nyx_array_length({ i64, i8* }* %1764)
  %1766 = icmp sgt i64 %1765, 2
  br i1 %1766, label %then471, label %else472
then471:
  %1767 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1768 = call i64 @nyx_array_get({ i64, i8* }* %1767, i64 2)
  %1769 = inttoptr i64 %1768 to %nyx_string*
  store %nyx_string* %1769, %nyx_string** %1763
  br label %merge473
else472:
  br label %merge473
merge473:
  %1770 = call { i64, i8* }* @nyx_array_new_ptr()
  %1771 = getelementptr [9 x i8], [9 x i8]* @.str115, i32 0, i32 0
  %1772 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str115.c, i8* %1771)
  %1773 = ptrtoint %nyx_string* %1772 to i64
  call void @nyx_array_push({ i64, i8* }* %1770, i64 %1773)
  %1774 = load { i64, i8* }*, { i64, i8* }** %1760
  %1775 = call { i64, i8* }* @resolve_type({ i64, i8* }* %1774)
  %1776 = bitcast { i64, i8* }* %1775 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1770, i8* %1776)
  %1777 = load %nyx_string*, %nyx_string** %1763
  %1778 = ptrtoint %nyx_string* %1777 to i64
  call void @nyx_array_push({ i64, i8* }* %1770, i64 %1778)
  ret { i64, i8* }* %1770
else469:
  br label %merge470
merge470:
  %1779 = load %nyx_string*, %nyx_string** %1632
  %1780 = getelementptr [9 x i8], [9 x i8]* @.str116, i32 0, i32 0
  %1781 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str116.c, i8* %1780)
  %1782 = call i1 @nyx_string_equals(%nyx_string* %1779, %nyx_string* %1781)
  br i1 %1782, label %then474, label %else475
then474:
  %1783 = call { i64, i8* }* @nyx_array_new_ptr()
  %1784 = getelementptr [9 x i8], [9 x i8]* @.str117, i32 0, i32 0
  %1785 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str117.c, i8* %1784)
  %1786 = ptrtoint %nyx_string* %1785 to i64
  call void @nyx_array_push({ i64, i8* }* %1783, i64 %1786)
  %1787 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1788 = call i64 @nyx_array_get({ i64, i8* }* %1787, i64 1)
  %1789 = inttoptr i64 %1788 to { i64, i8* }*
  %1790 = call { i64, i8* }* @resolve_type({ i64, i8* }* %1789)
  %1791 = bitcast { i64, i8* }* %1790 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1783, i8* %1791)
  %1792 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1793 = call i64 @nyx_array_get({ i64, i8* }* %1792, i64 2)
  %1794 = inttoptr i64 %1793 to { i64, i8* }*
  %1795 = call { i64, i8* }* @resolve_type({ i64, i8* }* %1794)
  %1796 = bitcast { i64, i8* }* %1795 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1783, i8* %1796)
  ret { i64, i8* }* %1783
else475:
  br label %merge476
merge476:
  %1797 = load %nyx_string*, %nyx_string** %1632
  %1798 = getelementptr [6 x i8], [6 x i8]* @.str118, i32 0, i32 0
  %1799 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str118.c, i8* %1798)
  %1800 = call i1 @nyx_string_equals(%nyx_string* %1797, %nyx_string* %1799)
  br i1 %1800, label %then477, label %else478
then477:
  %1801 = call { i64, i8* }* @nyx_array_new_ptr()
  %1802 = getelementptr [6 x i8], [6 x i8]* @.str119, i32 0, i32 0
  %1803 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str119.c, i8* %1802)
  %1804 = ptrtoint %nyx_string* %1803 to i64
  call void @nyx_array_push({ i64, i8* }* %1801, i64 %1804)
  %1805 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1806 = call i64 @nyx_array_get({ i64, i8* }* %1805, i64 1)
  %1807 = inttoptr i64 %1806 to { i64, i8* }*
  %1808 = call { i64, i8* }* @resolve_type({ i64, i8* }* %1807)
  %1809 = bitcast { i64, i8* }* %1808 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1801, i8* %1809)
  %1810 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1811 = call i64 @nyx_array_get({ i64, i8* }* %1810, i64 2)
  %1812 = inttoptr i64 %1811 to { i64, i8* }*
  %1813 = call { i64, i8* }* @resolve_type({ i64, i8* }* %1812)
  %1814 = bitcast { i64, i8* }* %1813 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1801, i8* %1814)
  ret { i64, i8* }* %1801
else478:
  br label %merge479
merge479:
  %1815 = load %nyx_string*, %nyx_string** %1632
  %1816 = getelementptr [5 x i8], [5 x i8]* @.str120, i32 0, i32 0
  %1817 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str120.c, i8* %1816)
  %1818 = call i1 @nyx_string_equals(%nyx_string* %1815, %nyx_string* %1817)
  br i1 %1818, label %then480, label %else481
then480:
  %1819 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1820 = call i64 @nyx_array_get({ i64, i8* }* %1819, i64 1)
  %1821 = inttoptr i64 %1820 to { i64, i8* }*
  %1822 = alloca { i64, i8* }*
  store { i64, i8* }* %1821, { i64, i8* }** %1822
  %1823 = call { i64, i8* }* @nyx_array_new_ptr()
  %1824 = alloca { i64, i8* }*
  store { i64, i8* }* %1823, { i64, i8* }** %1824
  %1825 = alloca i64
  store i64 0, i64* %1825
  br label %while_cond483
while_cond483:
  %1826 = load i64, i64* %1825
  %1827 = load { i64, i8* }*, { i64, i8* }** %1822
  %1828 = call i64 @nyx_array_length({ i64, i8* }* %1827)
  %1829 = icmp slt i64 %1826, %1828
  br i1 %1829, label %while_body484, label %while_end485
while_body484:
  %1830 = load { i64, i8* }*, { i64, i8* }** %1822
  %1831 = load i64, i64* %1825
  %1832 = call i64 @nyx_array_get({ i64, i8* }* %1830, i64 %1831)
  %1833 = inttoptr i64 %1832 to { i64, i8* }*
  %1834 = alloca { i64, i8* }*
  store { i64, i8* }* %1833, { i64, i8* }** %1834
  %1835 = load { i64, i8* }*, { i64, i8* }** %1824
  %1836 = load { i64, i8* }*, { i64, i8* }** %1834
  %1837 = call { i64, i8* }* @resolve_type({ i64, i8* }* %1836)
  %1838 = ptrtoint { i64, i8* }* %1837 to i64
  call void @nyx_array_push({ i64, i8* }* %1835, i64 %1838)
  %1839 = load i64, i64* %1825
  %1840 = add i64 %1839, 1
  store i64 %1840, i64* %1825
  br label %while_cond483
while_end485:
  %1841 = call { i64, i8* }* @nyx_array_new_ptr()
  %1842 = getelementptr [5 x i8], [5 x i8]* @.str121, i32 0, i32 0
  %1843 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str121.c, i8* %1842)
  %1844 = ptrtoint %nyx_string* %1843 to i64
  call void @nyx_array_push({ i64, i8* }* %1841, i64 %1844)
  %1845 = load { i64, i8* }*, { i64, i8* }** %1824
  %1846 = bitcast { i64, i8* }* %1845 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1841, i8* %1846)
  %1847 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1848 = call i64 @nyx_array_get({ i64, i8* }* %1847, i64 2)
  %1849 = inttoptr i64 %1848 to { i64, i8* }*
  %1850 = call { i64, i8* }* @resolve_type({ i64, i8* }* %1849)
  %1851 = bitcast { i64, i8* }* %1850 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1841, i8* %1851)
  ret { i64, i8* }* %1841
else481:
  br label %merge482
merge482:
  %1852 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  ret { i64, i8* }* %1852
}

define internal i64 @register_impl_method(
%nyx_string* %type_name.param, %nyx_string* %method.param, { i64, i8* }* %params.param, { i64, i8* }* %ret.param, { i64, i8* }* %type_params.param, { i64, i8* }* %type_bounds.param) {
  %type_name.ptr = alloca %nyx_string*
  store %nyx_string* %type_name.param, %nyx_string** %type_name.ptr
  %method.ptr = alloca %nyx_string*
  store %nyx_string* %method.param, %nyx_string** %method.ptr
  %params.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %params.param, { i64, i8* }** %params.ptr
  %ret.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ret.param, { i64, i8* }** %ret.ptr
  %type_params.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %type_params.param, { i64, i8* }** %type_params.ptr
  %type_bounds.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %type_bounds.param, { i64, i8* }** %type_bounds.ptr
  %1853 = load { i64, i8* }*, { i64, i8* }** @g_impl_method_types
  %1854 = load %nyx_string*, %nyx_string** %type_name.ptr
  %1855 = ptrtoint %nyx_string* %1854 to i64
  call void @nyx_array_push({ i64, i8* }* %1853, i64 %1855)
  %1856 = load { i64, i8* }*, { i64, i8* }** @g_impl_method_names
  %1857 = load %nyx_string*, %nyx_string** %method.ptr
  %1858 = ptrtoint %nyx_string* %1857 to i64
  call void @nyx_array_push({ i64, i8* }* %1856, i64 %1858)
  %1859 = load { i64, i8* }*, { i64, i8* }** @g_impl_method_params
  %1860 = load { i64, i8* }*, { i64, i8* }** %params.ptr
  %1861 = ptrtoint { i64, i8* }* %1860 to i64
  call void @nyx_array_push({ i64, i8* }* %1859, i64 %1861)
  %1862 = load { i64, i8* }*, { i64, i8* }** @g_impl_method_returns
  %1863 = load { i64, i8* }*, { i64, i8* }** %ret.ptr
  %1864 = ptrtoint { i64, i8* }* %1863 to i64
  call void @nyx_array_push({ i64, i8* }* %1862, i64 %1864)
  %1865 = load { i64, i8* }*, { i64, i8* }** @g_impl_method_type_params
  %1866 = load { i64, i8* }*, { i64, i8* }** %type_params.ptr
  %1867 = ptrtoint { i64, i8* }* %1866 to i64
  call void @nyx_array_push({ i64, i8* }* %1865, i64 %1867)
  %1868 = load { i64, i8* }*, { i64, i8* }** @g_impl_method_type_bounds
  %1869 = load { i64, i8* }*, { i64, i8* }** %type_bounds.ptr
  %1870 = ptrtoint { i64, i8* }* %1869 to i64
  call void @nyx_array_push({ i64, i8* }* %1868, i64 %1870)
  %1871 = load i64, i64* @g_impl_method_count
  %1872 = add i64 %1871, 1
  store i64 %1872, i64* @g_impl_method_count
  ret i64 0
}

define internal { i64, i8* }* @lookup_impl_method(
%nyx_string* %type_name.param, %nyx_string* %method.param) {
  %type_name.ptr = alloca %nyx_string*
  store %nyx_string* %type_name.param, %nyx_string** %type_name.ptr
  %method.ptr = alloca %nyx_string*
  store %nyx_string* %method.param, %nyx_string** %method.ptr
  %1873 = alloca i64
  store i64 0, i64* %1873
  br label %while_cond486
while_cond486:
  %1874 = load i64, i64* %1873
  %1875 = load i64, i64* @g_impl_method_count
  %1876 = icmp slt i64 %1874, %1875
  br i1 %1876, label %while_body487, label %while_end488
while_body487:
  %1877 = load { i64, i8* }*, { i64, i8* }** @g_impl_method_types
  %1878 = load i64, i64* %1873
  %1879 = call i64 @nyx_array_get({ i64, i8* }* %1877, i64 %1878)
  %1880 = inttoptr i64 %1879 to %nyx_string*
  %1881 = alloca %nyx_string*
  store %nyx_string* %1880, %nyx_string** %1881
  %1882 = load %nyx_string*, %nyx_string** %1881
  %1883 = load %nyx_string*, %nyx_string** %type_name.ptr
  %1884 = call i1 @nyx_string_equals(%nyx_string* %1882, %nyx_string* %1883)
  br i1 %1884, label %then489, label %else490
then489:
  %1885 = load { i64, i8* }*, { i64, i8* }** @g_impl_method_names
  %1886 = load i64, i64* %1873
  %1887 = call i64 @nyx_array_get({ i64, i8* }* %1885, i64 %1886)
  %1888 = inttoptr i64 %1887 to %nyx_string*
  %1889 = alloca %nyx_string*
  store %nyx_string* %1888, %nyx_string** %1889
  %1890 = load %nyx_string*, %nyx_string** %1889
  %1891 = load %nyx_string*, %nyx_string** %method.ptr
  %1892 = call i1 @nyx_string_equals(%nyx_string* %1890, %nyx_string* %1891)
  br i1 %1892, label %then492, label %else493
then492:
  %1893 = load { i64, i8* }*, { i64, i8* }** @g_impl_method_params
  %1894 = load i64, i64* %1873
  %1895 = call i64 @nyx_array_get({ i64, i8* }* %1893, i64 %1894)
  %1896 = inttoptr i64 %1895 to { i64, i8* }*
  %1897 = alloca { i64, i8* }*
  store { i64, i8* }* %1896, { i64, i8* }** %1897
  %1898 = load { i64, i8* }*, { i64, i8* }** @g_impl_method_returns
  %1899 = load i64, i64* %1873
  %1900 = call i64 @nyx_array_get({ i64, i8* }* %1898, i64 %1899)
  %1901 = inttoptr i64 %1900 to { i64, i8* }*
  %1902 = alloca { i64, i8* }*
  store { i64, i8* }* %1901, { i64, i8* }** %1902
  %1903 = load { i64, i8* }*, { i64, i8* }** @g_impl_method_type_params
  %1904 = load i64, i64* %1873
  %1905 = call i64 @nyx_array_get({ i64, i8* }* %1903, i64 %1904)
  %1906 = inttoptr i64 %1905 to { i64, i8* }*
  %1907 = alloca { i64, i8* }*
  store { i64, i8* }* %1906, { i64, i8* }** %1907
  %1908 = call { i64, i8* }* @nyx_array_new_ptr()
  %1909 = load { i64, i8* }*, { i64, i8* }** %1897
  %1910 = bitcast { i64, i8* }* %1909 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1908, i8* %1910)
  %1911 = load { i64, i8* }*, { i64, i8* }** %1902
  %1912 = bitcast { i64, i8* }* %1911 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1908, i8* %1912)
  %1913 = load { i64, i8* }*, { i64, i8* }** %1907
  %1914 = bitcast { i64, i8* }* %1913 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1908, i8* %1914)
  ret { i64, i8* }* %1908
else493:
  br label %merge494
merge494:
  br label %merge491
else490:
  br label %merge491
merge491:
  %1915 = load i64, i64* %1873
  %1916 = add i64 %1915, 1
  store i64 %1916, i64* %1873
  br label %while_cond486
while_end488:
  %1917 = call { i64, i8* }* @nyx_array_new_ptr()
  ret { i64, i8* }* %1917
}

define internal { i64, i8* }* @lookup_impl_method_bounds(
%nyx_string* %type_name.param, %nyx_string* %method.param) {
  %type_name.ptr = alloca %nyx_string*
  store %nyx_string* %type_name.param, %nyx_string** %type_name.ptr
  %method.ptr = alloca %nyx_string*
  store %nyx_string* %method.param, %nyx_string** %method.ptr
  %1918 = alloca i64
  store i64 0, i64* %1918
  br label %while_cond495
while_cond495:
  %1919 = load i64, i64* %1918
  %1920 = load i64, i64* @g_impl_method_count
  %1921 = icmp slt i64 %1919, %1920
  br i1 %1921, label %while_body496, label %while_end497
while_body496:
  %1922 = load { i64, i8* }*, { i64, i8* }** @g_impl_method_types
  %1923 = load i64, i64* %1918
  %1924 = call i64 @nyx_array_get({ i64, i8* }* %1922, i64 %1923)
  %1925 = inttoptr i64 %1924 to %nyx_string*
  %1926 = alloca %nyx_string*
  store %nyx_string* %1925, %nyx_string** %1926
  %1927 = load %nyx_string*, %nyx_string** %1926
  %1928 = load %nyx_string*, %nyx_string** %type_name.ptr
  %1929 = call i1 @nyx_string_equals(%nyx_string* %1927, %nyx_string* %1928)
  br i1 %1929, label %then498, label %else499
then498:
  %1930 = load { i64, i8* }*, { i64, i8* }** @g_impl_method_names
  %1931 = load i64, i64* %1918
  %1932 = call i64 @nyx_array_get({ i64, i8* }* %1930, i64 %1931)
  %1933 = inttoptr i64 %1932 to %nyx_string*
  %1934 = alloca %nyx_string*
  store %nyx_string* %1933, %nyx_string** %1934
  %1935 = load %nyx_string*, %nyx_string** %1934
  %1936 = load %nyx_string*, %nyx_string** %method.ptr
  %1937 = call i1 @nyx_string_equals(%nyx_string* %1935, %nyx_string* %1936)
  br i1 %1937, label %then501, label %else502
then501:
  %1938 = load { i64, i8* }*, { i64, i8* }** @g_impl_method_type_bounds
  %1939 = load i64, i64* %1918
  %1940 = call i64 @nyx_array_get({ i64, i8* }* %1938, i64 %1939)
  %1941 = inttoptr i64 %1940 to { i64, i8* }*
  %1942 = alloca { i64, i8* }*
  store { i64, i8* }* %1941, { i64, i8* }** %1942
  %1943 = load { i64, i8* }*, { i64, i8* }** %1942
  ret { i64, i8* }* %1943
else502:
  br label %merge503
merge503:
  br label %merge500
else499:
  br label %merge500
merge500:
  %1944 = load i64, i64* %1918
  %1945 = add i64 %1944, 1
  store i64 %1945, i64* %1918
  br label %while_cond495
while_end497:
  %1946 = call { i64, i8* }* @nyx_array_new_ptr()
  ret { i64, i8* }* %1946
}

define internal %nyx_string* @strip_generic_args(
%nyx_string* %name.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %1947 = load %nyx_string*, %nyx_string** %name.ptr
  %1948 = getelementptr [2 x i8], [2 x i8]* @.str122, i32 0, i32 0
  %1949 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str122.c, i8* %1948)
  %1950 = call i64 @nyx_string_index_of(%nyx_string* %1947, %nyx_string* %1949)
  %1951 = alloca i64
  store i64 %1950, i64* %1951
  %1952 = load i64, i64* %1951
  %1953 = icmp sgt i64 %1952, 0
  br i1 %1953, label %then504, label %else505
then504:
  %1954 = load %nyx_string*, %nyx_string** %name.ptr
  %1955 = load i64, i64* %1951
  %1956 = call %nyx_string* @nyx_string_substring(%nyx_string* %1954, i64 0, i64 %1955)
  %1957 = call %nyx_string* @nyx_string_trim(%nyx_string* %1956)
  ret %nyx_string* %1957
else505:
  br label %merge506
merge506:
  %1958 = load %nyx_string*, %nyx_string** %name.ptr
  ret %nyx_string* %1958
}

define internal i1 @type_implements_trait(
%nyx_string* %type_name.param, %nyx_string* %trait_name.param) {
  %type_name.ptr = alloca %nyx_string*
  store %nyx_string* %type_name.param, %nyx_string** %type_name.ptr
  %trait_name.ptr = alloca %nyx_string*
  store %nyx_string* %trait_name.param, %nyx_string** %trait_name.ptr
  %1959 = alloca i64
  store i64 0, i64* %1959
  br label %while_cond507
while_cond507:
  %1960 = load i64, i64* %1959
  %1961 = load i64, i64* @g_trait_impl_count
  %1962 = icmp slt i64 %1960, %1961
  br i1 %1962, label %while_body508, label %while_end509
while_body508:
  %1963 = load { i64, i8* }*, { i64, i8* }** @g_trait_impl_types
  %1964 = load i64, i64* %1959
  %1965 = call i64 @nyx_array_get({ i64, i8* }* %1963, i64 %1964)
  %1966 = inttoptr i64 %1965 to %nyx_string*
  %1967 = alloca %nyx_string*
  store %nyx_string* %1966, %nyx_string** %1967
  %1968 = load %nyx_string*, %nyx_string** %1967
  %1969 = load %nyx_string*, %nyx_string** %type_name.ptr
  %1970 = call i1 @nyx_string_equals(%nyx_string* %1968, %nyx_string* %1969)
  br i1 %1970, label %then510, label %else511
then510:
  %1971 = load { i64, i8* }*, { i64, i8* }** @g_trait_impl_traits
  %1972 = load i64, i64* %1959
  %1973 = call i64 @nyx_array_get({ i64, i8* }* %1971, i64 %1972)
  %1974 = inttoptr i64 %1973 to %nyx_string*
  %1975 = alloca %nyx_string*
  store %nyx_string* %1974, %nyx_string** %1975
  %1976 = load %nyx_string*, %nyx_string** %1975
  %1977 = load %nyx_string*, %nyx_string** %trait_name.ptr
  %1978 = call i1 @nyx_string_equals(%nyx_string* %1976, %nyx_string* %1977)
  br i1 %1978, label %then513, label %else514
then513:
  ret i1 1
else514:
  br label %merge515
merge515:
  br label %merge512
else511:
  br label %merge512
merge512:
  %1979 = load i64, i64* %1959
  %1980 = add i64 %1979, 1
  store i64 %1980, i64* %1959
  br label %while_cond507
while_end509:
  ret i1 0
}

define internal i64 @register_struct(
%nyx_string* %name.param, { i64, i8* }* %fields.param, { i64, i8* }* %field_types.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %fields.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %fields.param, { i64, i8* }** %fields.ptr
  %field_types.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %field_types.param, { i64, i8* }** %field_types.ptr
  %1981 = load { i64, i8* }*, { i64, i8* }** @g_struct_reg_names
  %1982 = load %nyx_string*, %nyx_string** %name.ptr
  %1983 = ptrtoint %nyx_string* %1982 to i64
  call void @nyx_array_push({ i64, i8* }* %1981, i64 %1983)
  %1984 = load { i64, i8* }*, { i64, i8* }** @g_struct_reg_fields
  %1985 = load { i64, i8* }*, { i64, i8* }** %fields.ptr
  %1986 = ptrtoint { i64, i8* }* %1985 to i64
  call void @nyx_array_push({ i64, i8* }* %1984, i64 %1986)
  %1987 = load { i64, i8* }*, { i64, i8* }** @g_struct_reg_field_types
  %1988 = load { i64, i8* }*, { i64, i8* }** %field_types.ptr
  %1989 = ptrtoint { i64, i8* }* %1988 to i64
  call void @nyx_array_push({ i64, i8* }* %1987, i64 %1989)
  %1990 = load i64, i64* @g_struct_reg_count
  %1991 = add i64 %1990, 1
  store i64 %1991, i64* @g_struct_reg_count
  ret i64 0
}

define internal i64 @register_enum(
%nyx_string* %name.param, { i64, i8* }* %variants.param, { i64, i8* }* %payloads.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %variants.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %variants.param, { i64, i8* }** %variants.ptr
  %payloads.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %payloads.param, { i64, i8* }** %payloads.ptr
  %1992 = load { i64, i8* }*, { i64, i8* }** @g_enum_reg_names
  %1993 = load %nyx_string*, %nyx_string** %name.ptr
  %1994 = ptrtoint %nyx_string* %1993 to i64
  call void @nyx_array_push({ i64, i8* }* %1992, i64 %1994)
  %1995 = load { i64, i8* }*, { i64, i8* }** @g_enum_reg_variants
  %1996 = load { i64, i8* }*, { i64, i8* }** %variants.ptr
  %1997 = ptrtoint { i64, i8* }* %1996 to i64
  call void @nyx_array_push({ i64, i8* }* %1995, i64 %1997)
  %1998 = load { i64, i8* }*, { i64, i8* }** @g_enum_reg_variant_payloads
  %1999 = load { i64, i8* }*, { i64, i8* }** %payloads.ptr
  %2000 = ptrtoint { i64, i8* }* %1999 to i64
  call void @nyx_array_push({ i64, i8* }* %1998, i64 %2000)
  %2001 = load i64, i64* @g_enum_reg_count
  %2002 = add i64 %2001, 1
  store i64 %2002, i64* @g_enum_reg_count
  ret i64 0
}

define internal i64 @register_trait_impl(
%nyx_string* %type_name.param, %nyx_string* %trait_name.param) {
  %type_name.ptr = alloca %nyx_string*
  store %nyx_string* %type_name.param, %nyx_string** %type_name.ptr
  %trait_name.ptr = alloca %nyx_string*
  store %nyx_string* %trait_name.param, %nyx_string** %trait_name.ptr
  %2003 = load %nyx_string*, %nyx_string** %type_name.ptr
  %2004 = load %nyx_string*, %nyx_string** %trait_name.ptr
  %2005 = call i1 @type_implements_trait(%nyx_string* %2003, %nyx_string* %2004)
  br i1 %2005, label %then516, label %else517
then516:
  ret i64 0
else517:
  br label %merge518
merge518:
  %2006 = load { i64, i8* }*, { i64, i8* }** @g_trait_impl_types
  %2007 = load %nyx_string*, %nyx_string** %type_name.ptr
  %2008 = ptrtoint %nyx_string* %2007 to i64
  call void @nyx_array_push({ i64, i8* }* %2006, i64 %2008)
  %2009 = load { i64, i8* }*, { i64, i8* }** @g_trait_impl_traits
  %2010 = load %nyx_string*, %nyx_string** %trait_name.ptr
  %2011 = ptrtoint %nyx_string* %2010 to i64
  call void @nyx_array_push({ i64, i8* }* %2009, i64 %2011)
  %2012 = load i64, i64* @g_trait_impl_count
  %2013 = add i64 %2012, 1
  store i64 %2013, i64* @g_trait_impl_count
  ret i64 0
}

define internal i1 @ty_check_dyn_compat(
{ i64, i8* }* %declared.param, { i64, i8* }* %actual.param, %nyx_string* %context_name.param) {
  %declared.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %declared.param, { i64, i8* }** %declared.ptr
  %actual.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %actual.param, { i64, i8* }** %actual.ptr
  %context_name.ptr = alloca %nyx_string*
  store %nyx_string* %context_name.param, %nyx_string** %context_name.ptr
  %2014 = load { i64, i8* }*, { i64, i8* }** %declared.ptr
  %2015 = call %nyx_string* @ty_kind({ i64, i8* }* %2014)
  %2016 = alloca %nyx_string*
  store %nyx_string* %2015, %nyx_string** %2016
  %2017 = load %nyx_string*, %nyx_string** %2016
  %2018 = getelementptr [6 x i8], [6 x i8]* @.str123, i32 0, i32 0
  %2019 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str123.c, i8* %2018)
  %2020 = call i1 @nyx_string_equals(%nyx_string* %2017, %nyx_string* %2019)
  %2021 = xor i1 %2020, true
  br i1 %2021, label %then519, label %else520
then519:
  ret i1 1
else520:
  br label %merge521
merge521:
  %2022 = load { i64, i8* }*, { i64, i8* }** %actual.ptr
  %2023 = call i1 @ty_is_unknown({ i64, i8* }* %2022)
  br i1 %2023, label %then522, label %else523
then522:
  ret i1 1
else523:
  br label %merge524
merge524:
  %2024 = load { i64, i8* }*, { i64, i8* }** %actual.ptr
  %2025 = call %nyx_string* @ty_kind({ i64, i8* }* %2024)
  %2026 = alloca %nyx_string*
  store %nyx_string* %2025, %nyx_string** %2026
  %2027 = load %nyx_string*, %nyx_string** %2026
  %2028 = getelementptr [9 x i8], [9 x i8]* @.str124, i32 0, i32 0
  %2029 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str124.c, i8* %2028)
  %2030 = call i1 @nyx_string_equals(%nyx_string* %2027, %nyx_string* %2029)
  %2031 = xor i1 %2030, true
  br i1 %2031, label %then525, label %else526
then525:
  %2032 = load %nyx_string*, %nyx_string** %2026
  %2033 = getelementptr [7 x i8], [7 x i8]* @.str125, i32 0, i32 0
  %2034 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str125.c, i8* %2033)
  %2035 = call i1 @nyx_string_equals(%nyx_string* %2032, %nyx_string* %2034)
  %2036 = xor i1 %2035, true
  br i1 %2036, label %then528, label %else529
then528:
  ret i1 1
else529:
  br label %merge530
merge530:
  br label %merge527
else526:
  br label %merge527
merge527:
  %2037 = load { i64, i8* }*, { i64, i8* }** %declared.ptr
  %2038 = call i64 @nyx_array_get({ i64, i8* }* %2037, i64 1)
  %2039 = inttoptr i64 %2038 to %nyx_string*
  %2040 = alloca %nyx_string*
  store %nyx_string* %2039, %nyx_string** %2040
  %2041 = load { i64, i8* }*, { i64, i8* }** %actual.ptr
  %2042 = call i64 @nyx_array_get({ i64, i8* }* %2041, i64 1)
  %2043 = inttoptr i64 %2042 to %nyx_string*
  %2044 = alloca %nyx_string*
  store %nyx_string* %2043, %nyx_string** %2044
  %2045 = load %nyx_string*, %nyx_string** %2044
  %2046 = load %nyx_string*, %nyx_string** %2040
  %2047 = call i1 @type_implements_trait(%nyx_string* %2045, %nyx_string* %2046)
  br i1 %2047, label %then531, label %else532
then531:
  ret i1 1
else532:
  br label %merge533
merge533:
  %2048 = load %nyx_string*, %nyx_string** %2044
  %2049 = call i1 @type_has_any_local_impl(%nyx_string* %2048)
  br i1 %2049, label %then534, label %else535
then534:
  %2050 = getelementptr [8 x i8], [8 x i8]* @.str126, i32 0, i32 0
  %2051 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str126.c, i8* %2050)
  %2052 = getelementptr [2 x i8], [2 x i8]* @.str127, i32 0, i32 0
  %2053 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str127.c, i8* %2052)
  %2054 = load %nyx_string*, %nyx_string** %2044
  %2055 = call %nyx_string* @nyx_string_concat(%nyx_string* %2053, %nyx_string* %2054)
  %2056 = getelementptr [22 x i8], [22 x i8]* @.str128, i32 0, i32 0
  %2057 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str128.c, i8* %2056)
  %2058 = call %nyx_string* @nyx_string_concat(%nyx_string* %2055, %nyx_string* %2057)
  %2059 = load %nyx_string*, %nyx_string** %2040
  %2060 = call %nyx_string* @nyx_string_concat(%nyx_string* %2058, %nyx_string* %2059)
  %2061 = getelementptr [17 x i8], [17 x i8]* @.str129, i32 0, i32 0
  %2062 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str129.c, i8* %2061)
  %2063 = call %nyx_string* @nyx_string_concat(%nyx_string* %2060, %nyx_string* %2062)
  %2064 = load %nyx_string*, %nyx_string** %context_name.ptr
  %2065 = call %nyx_string* @nyx_string_concat(%nyx_string* %2063, %nyx_string* %2064)
  %2066 = getelementptr [2 x i8], [2 x i8]* @.str130, i32 0, i32 0
  %2067 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str130.c, i8* %2066)
  %2068 = call %nyx_string* @nyx_string_concat(%nyx_string* %2065, %nyx_string* %2067)
  %2069 = getelementptr [2 x i8], [2 x i8]* @.str131, i32 0, i32 0
  %2070 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str131.c, i8* %2069)
  %2071 = load %nyx_string*, %nyx_string** %2044
  %2072 = call %nyx_string* @nyx_string_concat(%nyx_string* %2070, %nyx_string* %2071)
  %2073 = getelementptr [27 x i8], [27 x i8]* @.str132, i32 0, i32 0
  %2074 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str132.c, i8* %2073)
  %2075 = call %nyx_string* @nyx_string_concat(%nyx_string* %2072, %nyx_string* %2074)
  %2076 = load %nyx_string*, %nyx_string** %2040
  %2077 = call %nyx_string* @nyx_string_concat(%nyx_string* %2075, %nyx_string* %2076)
  %2078 = getelementptr [16 x i8], [16 x i8]* @.str133, i32 0, i32 0
  %2079 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str133.c, i8* %2078)
  %2080 = call %nyx_string* @nyx_string_concat(%nyx_string* %2077, %nyx_string* %2079)
  %2081 = load %nyx_string*, %nyx_string** %context_name.ptr
  %2082 = call %nyx_string* @nyx_string_concat(%nyx_string* %2080, %nyx_string* %2081)
  %2083 = getelementptr [2 x i8], [2 x i8]* @.str134, i32 0, i32 0
  %2084 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str134.c, i8* %2083)
  %2085 = call %nyx_string* @nyx_string_concat(%nyx_string* %2082, %nyx_string* %2084)
  %2086 = call %nyx_string* @msg(%nyx_string* %2068, %nyx_string* %2085)
  %2087 = getelementptr [1 x i8], [1 x i8]* @.str135, i32 0, i32 0
  %2088 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str135.c, i8* %2087)
  %2089 = call i64 @sem_diag(%nyx_string* %2051, %nyx_string* %2086, %nyx_string* %2088)
  ret i1 0
else535:
  br label %merge536
merge536:
  ret i1 1
}

define internal i1 @type_has_any_local_impl(
%nyx_string* %type_name.param) {
  %type_name.ptr = alloca %nyx_string*
  store %nyx_string* %type_name.param, %nyx_string** %type_name.ptr
  %2090 = alloca i64
  store i64 0, i64* %2090
  br label %while_cond537
while_cond537:
  %2091 = load i64, i64* %2090
  %2092 = load i64, i64* @g_trait_impl_count
  %2093 = icmp slt i64 %2091, %2092
  br i1 %2093, label %while_body538, label %while_end539
while_body538:
  %2094 = load { i64, i8* }*, { i64, i8* }** @g_trait_impl_types
  %2095 = load i64, i64* %2090
  %2096 = call i64 @nyx_array_get({ i64, i8* }* %2094, i64 %2095)
  %2097 = inttoptr i64 %2096 to %nyx_string*
  %2098 = alloca %nyx_string*
  store %nyx_string* %2097, %nyx_string** %2098
  %2099 = load %nyx_string*, %nyx_string** %2098
  %2100 = load %nyx_string*, %nyx_string** %type_name.ptr
  %2101 = call i1 @nyx_string_equals(%nyx_string* %2099, %nyx_string* %2100)
  br i1 %2101, label %then540, label %else541
then540:
  ret i1 1
else541:
  br label %merge542
merge542:
  %2102 = load i64, i64* %2090
  %2103 = add i64 %2102, 1
  store i64 %2103, i64* %2090
  br label %while_cond537
while_end539:
  ret i1 0
}

define internal { i64, i8* }* @impl_params_to_types(
{ i64, i8* }* %params.param) {
  %params.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %params.param, { i64, i8* }** %params.ptr
  %2104 = alloca i64
  store i64 0, i64* %2104
  %2105 = load { i64, i8* }*, { i64, i8* }** %params.ptr
  %2106 = call i64 @nyx_array_length({ i64, i8* }* %2105)
  %2107 = icmp sgt i64 %2106, 0
  br i1 %2107, label %then543, label %else544
then543:
  %2108 = load { i64, i8* }*, { i64, i8* }** %params.ptr
  %2109 = call i64 @nyx_array_get({ i64, i8* }* %2108, i64 0)
  %2110 = inttoptr i64 %2109 to { i64, i8* }*
  %2111 = alloca { i64, i8* }*
  store { i64, i8* }* %2110, { i64, i8* }** %2111
  %2112 = load { i64, i8* }*, { i64, i8* }** %2111
  %2113 = call i64 @nyx_array_get({ i64, i8* }* %2112, i64 0)
  %2114 = inttoptr i64 %2113 to %nyx_string*
  %2115 = alloca %nyx_string*
  store %nyx_string* %2114, %nyx_string** %2115
  %2116 = load %nyx_string*, %nyx_string** %2115
  %2117 = getelementptr [5 x i8], [5 x i8]* @.str136, i32 0, i32 0
  %2118 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str136.c, i8* %2117)
  %2119 = call i1 @nyx_string_equals(%nyx_string* %2116, %nyx_string* %2118)
  br i1 %2119, label %then546, label %else547
then546:
  store i64 1, i64* %2104
  br label %merge548
else547:
  br label %merge548
merge548:
  %2120 = load %nyx_string*, %nyx_string** %2115
  %2121 = getelementptr [6 x i8], [6 x i8]* @.str137, i32 0, i32 0
  %2122 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str137.c, i8* %2121)
  %2123 = call i1 @nyx_string_equals(%nyx_string* %2120, %nyx_string* %2122)
  br i1 %2123, label %then549, label %else550
then549:
  store i64 1, i64* %2104
  br label %merge551
else550:
  br label %merge551
merge551:
  %2124 = load %nyx_string*, %nyx_string** %2115
  %2125 = getelementptr [10 x i8], [10 x i8]* @.str138, i32 0, i32 0
  %2126 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str138.c, i8* %2125)
  %2127 = call i1 @nyx_string_equals(%nyx_string* %2124, %nyx_string* %2126)
  br i1 %2127, label %then552, label %else553
then552:
  store i64 1, i64* %2104
  br label %merge554
else553:
  br label %merge554
merge554:
  br label %merge545
else544:
  br label %merge545
merge545:
  %2128 = call { i64, i8* }* @nyx_array_new_ptr()
  %2129 = alloca { i64, i8* }*
  store { i64, i8* }* %2128, { i64, i8* }** %2129
  %2130 = load i64, i64* %2104
  %2131 = alloca i64
  store i64 %2130, i64* %2131
  %2132 = getelementptr [1 x i8], [1 x i8]* @.str139, i32 0, i32 0
  %2133 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str139.c, i8* %2132)
  %2134 = alloca %nyx_string*
  store %nyx_string* %2133, %nyx_string** %2134
  %2135 = getelementptr [4 x i8], [4 x i8]* @.str140, i32 0, i32 0
  %2136 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str140.c, i8* %2135)
  %2137 = alloca %nyx_string*
  store %nyx_string* %2136, %nyx_string** %2137
  br label %while_cond555
while_cond555:
  %2138 = load i64, i64* %2131
  %2139 = load { i64, i8* }*, { i64, i8* }** %params.ptr
  %2140 = call i64 @nyx_array_length({ i64, i8* }* %2139)
  %2141 = icmp slt i64 %2138, %2140
  br i1 %2141, label %while_body556, label %while_end557
while_body556:
  %2142 = load { i64, i8* }*, { i64, i8* }** %params.ptr
  %2143 = load i64, i64* %2131
  %2144 = call i64 @nyx_array_get({ i64, i8* }* %2142, i64 %2143)
  %2145 = inttoptr i64 %2144 to { i64, i8* }*
  %2146 = alloca { i64, i8* }*
  store { i64, i8* }* %2145, { i64, i8* }** %2146
  %2147 = load { i64, i8* }*, { i64, i8* }** %2146
  %2148 = call i64 @nyx_array_get({ i64, i8* }* %2147, i64 1)
  %2149 = inttoptr i64 %2148 to %nyx_string*
  %2150 = alloca %nyx_string*
  store %nyx_string* %2149, %nyx_string** %2150
  %2151 = call { i64, i8* }* @ty_unknown()
  %2152 = alloca { i64, i8* }*
  store { i64, i8* }* %2151, { i64, i8* }** %2152
  %2153 = load %nyx_string*, %nyx_string** %2150
  %2154 = load %nyx_string*, %nyx_string** %2134
  %2155 = call i1 @nyx_string_equals(%nyx_string* %2153, %nyx_string* %2154)
  %2156 = xor i1 %2155, true
  br i1 %2156, label %then558, label %else559
then558:
  %2157 = alloca i1
  store i1 0, i1* %2157
  %2158 = load %nyx_string*, %nyx_string** %2150
  %2159 = call i64 @nyx_string_byte_length(%nyx_string* %2158)
  %2160 = icmp sge i64 %2159, 3
  br i1 %2160, label %then561, label %else562
then561:
  %2161 = load %nyx_string*, %nyx_string** %2150
  %2162 = call %nyx_string* @nyx_string_substring(%nyx_string* %2161, i64 0, i64 3)
  %2163 = load %nyx_string*, %nyx_string** %2137
  %2164 = call i1 @nyx_string_equals(%nyx_string* %2162, %nyx_string* %2163)
  br i1 %2164, label %then564, label %else565
then564:
  store i1 1, i1* %2157
  br label %merge566
else565:
  br label %merge566
merge566:
  br label %merge563
else562:
  br label %merge563
merge563:
  %2165 = load i1, i1* %2157
  %2166 = xor i1 %2165, true
  br i1 %2166, label %then567, label %else568
then567:
  %2167 = load %nyx_string*, %nyx_string** %2150
  %2168 = call { i64, i8* }* @ty_parse(%nyx_string* %2167)
  %2169 = call { i64, i8* }* @resolve_type({ i64, i8* }* %2168)
  store { i64, i8* }* %2169, { i64, i8* }** %2152
  br label %merge569
else568:
  br label %merge569
merge569:
  br label %merge560
else559:
  br label %merge560
merge560:
  %2170 = load { i64, i8* }*, { i64, i8* }** %2129
  %2171 = load { i64, i8* }*, { i64, i8* }** %2152
  %2172 = ptrtoint { i64, i8* }* %2171 to i64
  call void @nyx_array_push({ i64, i8* }* %2170, i64 %2172)
  %2173 = load i64, i64* %2131
  %2174 = add i64 %2173, 1
  store i64 %2174, i64* %2131
  br label %while_cond555
while_end557:
  %2175 = load { i64, i8* }*, { i64, i8* }** %2129
  ret { i64, i8* }* %2175
}

define internal { i64, i8* }* @params_to_types(
{ i64, i8* }* %params.param) {
  %params.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %params.param, { i64, i8* }** %params.ptr
  %2176 = call { i64, i8* }* @nyx_array_new_ptr()
  %2177 = alloca { i64, i8* }*
  store { i64, i8* }* %2176, { i64, i8* }** %2177
  %2178 = alloca i64
  store i64 0, i64* %2178
  %2179 = getelementptr [1 x i8], [1 x i8]* @.str141, i32 0, i32 0
  %2180 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str141.c, i8* %2179)
  %2181 = alloca %nyx_string*
  store %nyx_string* %2180, %nyx_string** %2181
  %2182 = getelementptr [4 x i8], [4 x i8]* @.str142, i32 0, i32 0
  %2183 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str142.c, i8* %2182)
  %2184 = alloca %nyx_string*
  store %nyx_string* %2183, %nyx_string** %2184
  br label %while_cond570
while_cond570:
  %2185 = load i64, i64* %2178
  %2186 = load { i64, i8* }*, { i64, i8* }** %params.ptr
  %2187 = call i64 @nyx_array_length({ i64, i8* }* %2186)
  %2188 = icmp slt i64 %2185, %2187
  br i1 %2188, label %while_body571, label %while_end572
while_body571:
  %2189 = load { i64, i8* }*, { i64, i8* }** %params.ptr
  %2190 = load i64, i64* %2178
  %2191 = call i64 @nyx_array_get({ i64, i8* }* %2189, i64 %2190)
  %2192 = inttoptr i64 %2191 to { i64, i8* }*
  %2193 = alloca { i64, i8* }*
  store { i64, i8* }* %2192, { i64, i8* }** %2193
  %2194 = load { i64, i8* }*, { i64, i8* }** %2193
  %2195 = call i64 @nyx_array_get({ i64, i8* }* %2194, i64 1)
  %2196 = inttoptr i64 %2195 to %nyx_string*
  %2197 = alloca %nyx_string*
  store %nyx_string* %2196, %nyx_string** %2197
  %2198 = call { i64, i8* }* @ty_unknown()
  %2199 = alloca { i64, i8* }*
  store { i64, i8* }* %2198, { i64, i8* }** %2199
  %2200 = load %nyx_string*, %nyx_string** %2197
  %2201 = load %nyx_string*, %nyx_string** %2181
  %2202 = call i1 @nyx_string_equals(%nyx_string* %2200, %nyx_string* %2201)
  %2203 = xor i1 %2202, true
  br i1 %2203, label %then573, label %else574
then573:
  %2204 = alloca i1
  store i1 0, i1* %2204
  %2205 = load %nyx_string*, %nyx_string** %2197
  %2206 = call i64 @nyx_string_byte_length(%nyx_string* %2205)
  %2207 = icmp sge i64 %2206, 3
  br i1 %2207, label %then576, label %else577
then576:
  %2208 = load %nyx_string*, %nyx_string** %2197
  %2209 = call %nyx_string* @nyx_string_substring(%nyx_string* %2208, i64 0, i64 3)
  %2210 = load %nyx_string*, %nyx_string** %2184
  %2211 = call i1 @nyx_string_equals(%nyx_string* %2209, %nyx_string* %2210)
  br i1 %2211, label %then579, label %else580
then579:
  store i1 1, i1* %2204
  br label %merge581
else580:
  br label %merge581
merge581:
  br label %merge578
else577:
  br label %merge578
merge578:
  %2212 = load i1, i1* %2204
  %2213 = xor i1 %2212, true
  br i1 %2213, label %then582, label %else583
then582:
  %2214 = load %nyx_string*, %nyx_string** %2197
  %2215 = call { i64, i8* }* @ty_parse(%nyx_string* %2214)
  %2216 = call { i64, i8* }* @resolve_type({ i64, i8* }* %2215)
  store { i64, i8* }* %2216, { i64, i8* }** %2199
  br label %merge584
else583:
  br label %merge584
merge584:
  br label %merge575
else574:
  br label %merge575
merge575:
  %2217 = load { i64, i8* }*, { i64, i8* }** %2177
  %2218 = load { i64, i8* }*, { i64, i8* }** %2199
  %2219 = ptrtoint { i64, i8* }* %2218 to i64
  call void @nyx_array_push({ i64, i8* }* %2217, i64 %2219)
  %2220 = load i64, i64* %2178
  %2221 = add i64 %2220, 1
  store i64 %2221, i64* %2178
  br label %while_cond570
while_end572:
  %2222 = load { i64, i8* }*, { i64, i8* }** %2177
  ret { i64, i8* }* %2222
}

define internal %nyx_string* @scope_lookup(
%nyx_string* %name.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %2223 = load i64, i64* @g_sym_count
  %2224 = sub i64 %2223, 1
  %2225 = alloca i64
  store i64 %2224, i64* %2225
  br label %while_cond585
while_cond585:
  %2226 = load i64, i64* %2225
  %2227 = icmp sge i64 %2226, 0
  br i1 %2227, label %while_body586, label %while_end587
while_body586:
  %2228 = load { i64, i8* }*, { i64, i8* }** @g_sym_names
  %2229 = load i64, i64* %2225
  %2230 = call i64 @nyx_array_get({ i64, i8* }* %2228, i64 %2229)
  %2231 = inttoptr i64 %2230 to %nyx_string*
  %2232 = alloca %nyx_string*
  store %nyx_string* %2231, %nyx_string** %2232
  %2233 = load %nyx_string*, %nyx_string** %2232
  %2234 = load %nyx_string*, %nyx_string** %name.ptr
  %2235 = call i1 @nyx_string_equals(%nyx_string* %2233, %nyx_string* %2234)
  br i1 %2235, label %then588, label %else589
then588:
  %2236 = load { i64, i8* }*, { i64, i8* }** @g_sym_kinds
  %2237 = load i64, i64* %2225
  %2238 = call i64 @nyx_array_get({ i64, i8* }* %2236, i64 %2237)
  %2239 = inttoptr i64 %2238 to %nyx_string*
  %2240 = alloca %nyx_string*
  store %nyx_string* %2239, %nyx_string** %2240
  %2241 = load %nyx_string*, %nyx_string** %2240
  ret %nyx_string* %2241
else589:
  br label %merge590
merge590:
  %2242 = load i64, i64* %2225
  %2243 = sub i64 %2242, 1
  store i64 %2243, i64* %2225
  br label %while_cond585
while_end587:
  %2244 = getelementptr [1 x i8], [1 x i8]* @.str143, i32 0, i32 0
  %2245 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str143.c, i8* %2244)
  ret %nyx_string* %2245
}

define internal i64 @scope_get_arity(
%nyx_string* %name.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %2246 = load i64, i64* @g_sym_count
  %2247 = sub i64 %2246, 1
  %2248 = alloca i64
  store i64 %2247, i64* %2248
  br label %while_cond591
while_cond591:
  %2249 = load i64, i64* %2248
  %2250 = icmp sge i64 %2249, 0
  br i1 %2250, label %while_body592, label %while_end593
while_body592:
  %2251 = load { i64, i8* }*, { i64, i8* }** @g_sym_names
  %2252 = load i64, i64* %2248
  %2253 = call i64 @nyx_array_get({ i64, i8* }* %2251, i64 %2252)
  %2254 = inttoptr i64 %2253 to %nyx_string*
  %2255 = alloca %nyx_string*
  store %nyx_string* %2254, %nyx_string** %2255
  %2256 = load %nyx_string*, %nyx_string** %2255
  %2257 = load %nyx_string*, %nyx_string** %name.ptr
  %2258 = call i1 @nyx_string_equals(%nyx_string* %2256, %nyx_string* %2257)
  br i1 %2258, label %then594, label %else595
then594:
  %2259 = load { i64, i8* }*, { i64, i8* }** @g_sym_arities
  %2260 = load i64, i64* %2248
  %2261 = call i64 @nyx_array_get({ i64, i8* }* %2259, i64 %2260)
  %2262 = alloca i64
  store i64 %2261, i64* %2262
  %2263 = load i64, i64* %2262
  ret i64 %2263
else595:
  br label %merge596
merge596:
  %2264 = load i64, i64* %2248
  %2265 = sub i64 %2264, 1
  store i64 %2265, i64* %2248
  br label %while_cond591
while_end593:
  %2266 = sub i64 0, 1
  ret i64 %2266
}

define internal i64 @register_builtins(
) {
  %2267 = getelementptr [6 x i8], [6 x i8]* @.str144, i32 0, i32 0
  %2268 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str144.c, i8* %2267)
  %2269 = getelementptr [8 x i8], [8 x i8]* @.str145, i32 0, i32 0
  %2270 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str145.c, i8* %2269)
  %2271 = call i64 @scope_declare_fn(%nyx_string* %2268, %nyx_string* %2270, i64 1)
  %2272 = getelementptr [14 x i8], [14 x i8]* @.str146, i32 0, i32 0
  %2273 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str146.c, i8* %2272)
  %2274 = getelementptr [8 x i8], [8 x i8]* @.str147, i32 0, i32 0
  %2275 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str147.c, i8* %2274)
  %2276 = call i64 @scope_declare_fn(%nyx_string* %2273, %nyx_string* %2275, i64 1)
  %2277 = getelementptr [16 x i8], [16 x i8]* @.str148, i32 0, i32 0
  %2278 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str148.c, i8* %2277)
  %2279 = getelementptr [8 x i8], [8 x i8]* @.str149, i32 0, i32 0
  %2280 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str149.c, i8* %2279)
  %2281 = call i64 @scope_declare_fn(%nyx_string* %2278, %nyx_string* %2280, i64 1)
  %2282 = getelementptr [15 x i8], [15 x i8]* @.str150, i32 0, i32 0
  %2283 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str150.c, i8* %2282)
  %2284 = getelementptr [8 x i8], [8 x i8]* @.str151, i32 0, i32 0
  %2285 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str151.c, i8* %2284)
  %2286 = call i64 @scope_declare_fn(%nyx_string* %2283, %nyx_string* %2285, i64 1)
  %2287 = getelementptr [13 x i8], [13 x i8]* @.str152, i32 0, i32 0
  %2288 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str152.c, i8* %2287)
  %2289 = getelementptr [8 x i8], [8 x i8]* @.str153, i32 0, i32 0
  %2290 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str153.c, i8* %2289)
  %2291 = call i64 @scope_declare_fn(%nyx_string* %2288, %nyx_string* %2290, i64 1)
  %2292 = getelementptr [13 x i8], [13 x i8]* @.str154, i32 0, i32 0
  %2293 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str154.c, i8* %2292)
  %2294 = getelementptr [8 x i8], [8 x i8]* @.str155, i32 0, i32 0
  %2295 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str155.c, i8* %2294)
  %2296 = call i64 @scope_declare_fn(%nyx_string* %2293, %nyx_string* %2295, i64 1)
  %2297 = getelementptr [10 x i8], [10 x i8]* @.str156, i32 0, i32 0
  %2298 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str156.c, i8* %2297)
  %2299 = getelementptr [8 x i8], [8 x i8]* @.str157, i32 0, i32 0
  %2300 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str157.c, i8* %2299)
  %2301 = call i64 @scope_declare_fn(%nyx_string* %2298, %nyx_string* %2300, i64 1)
  %2302 = getelementptr [11 x i8], [11 x i8]* @.str158, i32 0, i32 0
  %2303 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str158.c, i8* %2302)
  %2304 = getelementptr [8 x i8], [8 x i8]* @.str159, i32 0, i32 0
  %2305 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str159.c, i8* %2304)
  %2306 = call i64 @scope_declare_fn(%nyx_string* %2303, %nyx_string* %2305, i64 2)
  %2307 = getelementptr [12 x i8], [12 x i8]* @.str160, i32 0, i32 0
  %2308 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str160.c, i8* %2307)
  %2309 = getelementptr [8 x i8], [8 x i8]* @.str161, i32 0, i32 0
  %2310 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str161.c, i8* %2309)
  %2311 = call i64 @scope_declare_fn(%nyx_string* %2308, %nyx_string* %2310, i64 1)
  %2312 = getelementptr [10 x i8], [10 x i8]* @.str162, i32 0, i32 0
  %2313 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str162.c, i8* %2312)
  %2314 = getelementptr [8 x i8], [8 x i8]* @.str163, i32 0, i32 0
  %2315 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str163.c, i8* %2314)
  %2316 = call i64 @scope_declare_fn(%nyx_string* %2313, %nyx_string* %2315, i64 2)
  %2317 = getelementptr [11 x i8], [11 x i8]* @.str164, i32 0, i32 0
  %2318 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str164.c, i8* %2317)
  %2319 = getelementptr [8 x i8], [8 x i8]* @.str165, i32 0, i32 0
  %2320 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str165.c, i8* %2319)
  %2321 = call i64 @scope_declare_fn(%nyx_string* %2318, %nyx_string* %2320, i64 1)
  %2322 = getelementptr [15 x i8], [15 x i8]* @.str166, i32 0, i32 0
  %2323 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str166.c, i8* %2322)
  %2324 = getelementptr [8 x i8], [8 x i8]* @.str167, i32 0, i32 0
  %2325 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str167.c, i8* %2324)
  %2326 = call i64 @scope_declare_fn(%nyx_string* %2323, %nyx_string* %2325, i64 1)
  %2327 = getelementptr [16 x i8], [16 x i8]* @.str168, i32 0, i32 0
  %2328 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str168.c, i8* %2327)
  %2329 = getelementptr [8 x i8], [8 x i8]* @.str169, i32 0, i32 0
  %2330 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str169.c, i8* %2329)
  %2331 = call i64 @scope_declare_fn(%nyx_string* %2328, %nyx_string* %2330, i64 2)
  %2332 = getelementptr [18 x i8], [18 x i8]* @.str170, i32 0, i32 0
  %2333 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str170.c, i8* %2332)
  %2334 = getelementptr [8 x i8], [8 x i8]* @.str171, i32 0, i32 0
  %2335 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str171.c, i8* %2334)
  %2336 = call i64 @scope_declare_fn(%nyx_string* %2333, %nyx_string* %2335, i64 2)
  %2337 = getelementptr [17 x i8], [17 x i8]* @.str172, i32 0, i32 0
  %2338 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str172.c, i8* %2337)
  %2339 = getelementptr [8 x i8], [8 x i8]* @.str173, i32 0, i32 0
  %2340 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str173.c, i8* %2339)
  %2341 = call i64 @scope_declare_fn(%nyx_string* %2338, %nyx_string* %2340, i64 2)
  %2342 = getelementptr [10 x i8], [10 x i8]* @.str174, i32 0, i32 0
  %2343 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str174.c, i8* %2342)
  %2344 = getelementptr [8 x i8], [8 x i8]* @.str175, i32 0, i32 0
  %2345 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str175.c, i8* %2344)
  %2346 = call i64 @scope_declare_fn(%nyx_string* %2343, %nyx_string* %2345, i64 3)
  %2347 = getelementptr [10 x i8], [10 x i8]* @.str176, i32 0, i32 0
  %2348 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str176.c, i8* %2347)
  %2349 = getelementptr [8 x i8], [8 x i8]* @.str177, i32 0, i32 0
  %2350 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str177.c, i8* %2349)
  %2351 = call i64 @scope_declare_fn(%nyx_string* %2348, %nyx_string* %2350, i64 1)
  %2352 = getelementptr [11 x i8], [11 x i8]* @.str178, i32 0, i32 0
  %2353 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str178.c, i8* %2352)
  %2354 = getelementptr [8 x i8], [8 x i8]* @.str179, i32 0, i32 0
  %2355 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str179.c, i8* %2354)
  %2356 = call i64 @scope_declare_fn(%nyx_string* %2353, %nyx_string* %2355, i64 1)
  %2357 = getelementptr [6 x i8], [6 x i8]* @.str180, i32 0, i32 0
  %2358 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str180.c, i8* %2357)
  %2359 = getelementptr [8 x i8], [8 x i8]* @.str181, i32 0, i32 0
  %2360 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str181.c, i8* %2359)
  %2361 = call i64 @scope_declare_fn(%nyx_string* %2358, %nyx_string* %2360, i64 1)
  %2362 = getelementptr [8 x i8], [8 x i8]* @.str182, i32 0, i32 0
  %2363 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str182.c, i8* %2362)
  %2364 = getelementptr [8 x i8], [8 x i8]* @.str183, i32 0, i32 0
  %2365 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str183.c, i8* %2364)
  %2366 = call i64 @scope_declare_fn(%nyx_string* %2363, %nyx_string* %2365, i64 1)
  %2367 = getelementptr [12 x i8], [12 x i8]* @.str184, i32 0, i32 0
  %2368 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str184.c, i8* %2367)
  %2369 = getelementptr [8 x i8], [8 x i8]* @.str185, i32 0, i32 0
  %2370 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str185.c, i8* %2369)
  %2371 = call i64 @scope_declare_fn(%nyx_string* %2368, %nyx_string* %2370, i64 1)
  %2372 = getelementptr [12 x i8], [12 x i8]* @.str186, i32 0, i32 0
  %2373 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str186.c, i8* %2372)
  %2374 = getelementptr [8 x i8], [8 x i8]* @.str187, i32 0, i32 0
  %2375 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str187.c, i8* %2374)
  %2376 = call i64 @scope_declare_fn(%nyx_string* %2373, %nyx_string* %2375, i64 2)
  %2377 = getelementptr [12 x i8], [12 x i8]* @.str188, i32 0, i32 0
  %2378 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str188.c, i8* %2377)
  %2379 = getelementptr [8 x i8], [8 x i8]* @.str189, i32 0, i32 0
  %2380 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str189.c, i8* %2379)
  %2381 = call i64 @scope_declare_fn(%nyx_string* %2378, %nyx_string* %2380, i64 1)
  %2382 = getelementptr [18 x i8], [18 x i8]* @.str190, i32 0, i32 0
  %2383 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str190.c, i8* %2382)
  %2384 = getelementptr [8 x i8], [8 x i8]* @.str191, i32 0, i32 0
  %2385 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str191.c, i8* %2384)
  %2386 = call i64 @scope_declare_fn(%nyx_string* %2383, %nyx_string* %2385, i64 3)
  %2387 = getelementptr [9 x i8], [9 x i8]* @.str192, i32 0, i32 0
  %2388 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str192.c, i8* %2387)
  %2389 = getelementptr [8 x i8], [8 x i8]* @.str193, i32 0, i32 0
  %2390 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str193.c, i8* %2389)
  %2391 = call i64 @scope_declare_fn(%nyx_string* %2388, %nyx_string* %2390, i64 1)
  %2392 = getelementptr [17 x i8], [17 x i8]* @.str194, i32 0, i32 0
  %2393 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str194.c, i8* %2392)
  %2394 = getelementptr [8 x i8], [8 x i8]* @.str195, i32 0, i32 0
  %2395 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str195.c, i8* %2394)
  %2396 = call i64 @scope_declare_fn(%nyx_string* %2393, %nyx_string* %2395, i64 1)
  %2397 = getelementptr [23 x i8], [23 x i8]* @.str196, i32 0, i32 0
  %2398 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str196.c, i8* %2397)
  %2399 = getelementptr [8 x i8], [8 x i8]* @.str197, i32 0, i32 0
  %2400 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str197.c, i8* %2399)
  %2401 = call i64 @scope_declare_fn(%nyx_string* %2398, %nyx_string* %2400, i64 1)
  %2402 = getelementptr [11 x i8], [11 x i8]* @.str198, i32 0, i32 0
  %2403 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str198.c, i8* %2402)
  %2404 = getelementptr [8 x i8], [8 x i8]* @.str199, i32 0, i32 0
  %2405 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str199.c, i8* %2404)
  %2406 = call i64 @scope_declare_fn(%nyx_string* %2403, %nyx_string* %2405, i64 2)
  %2407 = getelementptr [11 x i8], [11 x i8]* @.str200, i32 0, i32 0
  %2408 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str200.c, i8* %2407)
  %2409 = getelementptr [8 x i8], [8 x i8]* @.str201, i32 0, i32 0
  %2410 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str201.c, i8* %2409)
  %2411 = call i64 @scope_declare_fn(%nyx_string* %2408, %nyx_string* %2410, i64 1)
  %2412 = getelementptr [12 x i8], [12 x i8]* @.str202, i32 0, i32 0
  %2413 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str202.c, i8* %2412)
  %2414 = getelementptr [8 x i8], [8 x i8]* @.str203, i32 0, i32 0
  %2415 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str203.c, i8* %2414)
  %2416 = call i64 @scope_declare_fn(%nyx_string* %2413, %nyx_string* %2415, i64 2)
  %2417 = getelementptr [16 x i8], [16 x i8]* @.str204, i32 0, i32 0
  %2418 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str204.c, i8* %2417)
  %2419 = getelementptr [8 x i8], [8 x i8]* @.str205, i32 0, i32 0
  %2420 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str205.c, i8* %2419)
  %2421 = call i64 @scope_declare_fn(%nyx_string* %2418, %nyx_string* %2420, i64 2)
  %2422 = getelementptr [9 x i8], [9 x i8]* @.str206, i32 0, i32 0
  %2423 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str206.c, i8* %2422)
  %2424 = getelementptr [8 x i8], [8 x i8]* @.str207, i32 0, i32 0
  %2425 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str207.c, i8* %2424)
  %2426 = call i64 @scope_declare_fn(%nyx_string* %2423, %nyx_string* %2425, i64 2)
  %2427 = getelementptr [17 x i8], [17 x i8]* @.str208, i32 0, i32 0
  %2428 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str208.c, i8* %2427)
  %2429 = getelementptr [8 x i8], [8 x i8]* @.str209, i32 0, i32 0
  %2430 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str209.c, i8* %2429)
  %2431 = call i64 @scope_declare_fn(%nyx_string* %2428, %nyx_string* %2430, i64 2)
  %2432 = getelementptr [15 x i8], [15 x i8]* @.str210, i32 0, i32 0
  %2433 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str210.c, i8* %2432)
  %2434 = getelementptr [8 x i8], [8 x i8]* @.str211, i32 0, i32 0
  %2435 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str211.c, i8* %2434)
  %2436 = call i64 @scope_declare_fn(%nyx_string* %2433, %nyx_string* %2435, i64 2)
  %2437 = getelementptr [14 x i8], [14 x i8]* @.str212, i32 0, i32 0
  %2438 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str212.c, i8* %2437)
  %2439 = getelementptr [8 x i8], [8 x i8]* @.str213, i32 0, i32 0
  %2440 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str213.c, i8* %2439)
  %2441 = call i64 @scope_declare_fn(%nyx_string* %2438, %nyx_string* %2440, i64 1)
  %2442 = getelementptr [10 x i8], [10 x i8]* @.str214, i32 0, i32 0
  %2443 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str214.c, i8* %2442)
  %2444 = getelementptr [8 x i8], [8 x i8]* @.str215, i32 0, i32 0
  %2445 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str215.c, i8* %2444)
  %2446 = call i64 @scope_declare_fn(%nyx_string* %2443, %nyx_string* %2445, i64 2)
  %2447 = getelementptr [10 x i8], [10 x i8]* @.str216, i32 0, i32 0
  %2448 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str216.c, i8* %2447)
  %2449 = getelementptr [8 x i8], [8 x i8]* @.str217, i32 0, i32 0
  %2450 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str217.c, i8* %2449)
  %2451 = call i64 @scope_declare_fn(%nyx_string* %2448, %nyx_string* %2450, i64 1)
  %2452 = getelementptr [13 x i8], [13 x i8]* @.str218, i32 0, i32 0
  %2453 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str218.c, i8* %2452)
  %2454 = getelementptr [8 x i8], [8 x i8]* @.str219, i32 0, i32 0
  %2455 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str219.c, i8* %2454)
  %2456 = call i64 @scope_declare_fn(%nyx_string* %2453, %nyx_string* %2455, i64 2)
  %2457 = getelementptr [24 x i8], [24 x i8]* @.str220, i32 0, i32 0
  %2458 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str220.c, i8* %2457)
  %2459 = getelementptr [8 x i8], [8 x i8]* @.str221, i32 0, i32 0
  %2460 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str221.c, i8* %2459)
  %2461 = call i64 @scope_declare_fn(%nyx_string* %2458, %nyx_string* %2460, i64 1)
  %2462 = getelementptr [9 x i8], [9 x i8]* @.str222, i32 0, i32 0
  %2463 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str222.c, i8* %2462)
  %2464 = getelementptr [8 x i8], [8 x i8]* @.str223, i32 0, i32 0
  %2465 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str223.c, i8* %2464)
  %2466 = call i64 @scope_declare_fn(%nyx_string* %2463, %nyx_string* %2465, i64 2)
  %2467 = getelementptr [11 x i8], [11 x i8]* @.str224, i32 0, i32 0
  %2468 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str224.c, i8* %2467)
  %2469 = getelementptr [8 x i8], [8 x i8]* @.str225, i32 0, i32 0
  %2470 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str225.c, i8* %2469)
  %2471 = call i64 @scope_declare_fn(%nyx_string* %2468, %nyx_string* %2470, i64 4)
  %2472 = getelementptr [13 x i8], [13 x i8]* @.str226, i32 0, i32 0
  %2473 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str226.c, i8* %2472)
  %2474 = getelementptr [8 x i8], [8 x i8]* @.str227, i32 0, i32 0
  %2475 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str227.c, i8* %2474)
  %2476 = call i64 @scope_declare_fn(%nyx_string* %2473, %nyx_string* %2475, i64 2)
  %2477 = getelementptr [8 x i8], [8 x i8]* @.str228, i32 0, i32 0
  %2478 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str228.c, i8* %2477)
  %2479 = getelementptr [8 x i8], [8 x i8]* @.str229, i32 0, i32 0
  %2480 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str229.c, i8* %2479)
  %2481 = call i64 @scope_declare_fn(%nyx_string* %2478, %nyx_string* %2480, i64 1)
  %2482 = getelementptr [16 x i8], [16 x i8]* @.str230, i32 0, i32 0
  %2483 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str230.c, i8* %2482)
  %2484 = getelementptr [8 x i8], [8 x i8]* @.str231, i32 0, i32 0
  %2485 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str231.c, i8* %2484)
  %2486 = call i64 @scope_declare_fn(%nyx_string* %2483, %nyx_string* %2485, i64 2)
  %2487 = getelementptr [23 x i8], [23 x i8]* @.str232, i32 0, i32 0
  %2488 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str232.c, i8* %2487)
  %2489 = getelementptr [8 x i8], [8 x i8]* @.str233, i32 0, i32 0
  %2490 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str233.c, i8* %2489)
  %2491 = call i64 @scope_declare_fn(%nyx_string* %2488, %nyx_string* %2490, i64 1)
  %2492 = getelementptr [12 x i8], [12 x i8]* @.str234, i32 0, i32 0
  %2493 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str234.c, i8* %2492)
  %2494 = getelementptr [8 x i8], [8 x i8]* @.str235, i32 0, i32 0
  %2495 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str235.c, i8* %2494)
  %2496 = call i64 @scope_declare_fn(%nyx_string* %2493, %nyx_string* %2495, i64 1)
  %2497 = getelementptr [11 x i8], [11 x i8]* @.str236, i32 0, i32 0
  %2498 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str236.c, i8* %2497)
  %2499 = getelementptr [8 x i8], [8 x i8]* @.str237, i32 0, i32 0
  %2500 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str237.c, i8* %2499)
  %2501 = call i64 @scope_declare_fn(%nyx_string* %2498, %nyx_string* %2500, i64 1)
  %2502 = getelementptr [13 x i8], [13 x i8]* @.str238, i32 0, i32 0
  %2503 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str238.c, i8* %2502)
  %2504 = getelementptr [8 x i8], [8 x i8]* @.str239, i32 0, i32 0
  %2505 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str239.c, i8* %2504)
  %2506 = call i64 @scope_declare_fn(%nyx_string* %2503, %nyx_string* %2505, i64 1)
  %2507 = getelementptr [12 x i8], [12 x i8]* @.str240, i32 0, i32 0
  %2508 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str240.c, i8* %2507)
  %2509 = getelementptr [8 x i8], [8 x i8]* @.str241, i32 0, i32 0
  %2510 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str241.c, i8* %2509)
  %2511 = call i64 @scope_declare_fn(%nyx_string* %2508, %nyx_string* %2510, i64 1)
  %2512 = getelementptr [11 x i8], [11 x i8]* @.str242, i32 0, i32 0
  %2513 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str242.c, i8* %2512)
  %2514 = getelementptr [8 x i8], [8 x i8]* @.str243, i32 0, i32 0
  %2515 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str243.c, i8* %2514)
  %2516 = call i64 @scope_declare_fn(%nyx_string* %2513, %nyx_string* %2515, i64 1)
  %2517 = getelementptr [11 x i8], [11 x i8]* @.str244, i32 0, i32 0
  %2518 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str244.c, i8* %2517)
  %2519 = getelementptr [8 x i8], [8 x i8]* @.str245, i32 0, i32 0
  %2520 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str245.c, i8* %2519)
  %2521 = call i64 @scope_declare_fn(%nyx_string* %2518, %nyx_string* %2520, i64 1)
  %2522 = getelementptr [12 x i8], [12 x i8]* @.str246, i32 0, i32 0
  %2523 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str246.c, i8* %2522)
  %2524 = getelementptr [8 x i8], [8 x i8]* @.str247, i32 0, i32 0
  %2525 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str247.c, i8* %2524)
  %2526 = call i64 @scope_declare_fn(%nyx_string* %2523, %nyx_string* %2525, i64 1)
  %2527 = getelementptr [10 x i8], [10 x i8]* @.str248, i32 0, i32 0
  %2528 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str248.c, i8* %2527)
  %2529 = getelementptr [8 x i8], [8 x i8]* @.str249, i32 0, i32 0
  %2530 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str249.c, i8* %2529)
  %2531 = call i64 @scope_declare_fn(%nyx_string* %2528, %nyx_string* %2530, i64 2)
  %2532 = getelementptr [10 x i8], [10 x i8]* @.str250, i32 0, i32 0
  %2533 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str250.c, i8* %2532)
  %2534 = getelementptr [8 x i8], [8 x i8]* @.str251, i32 0, i32 0
  %2535 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str251.c, i8* %2534)
  %2536 = call i64 @scope_declare_fn(%nyx_string* %2533, %nyx_string* %2535, i64 0)
  %2537 = getelementptr [11 x i8], [11 x i8]* @.str252, i32 0, i32 0
  %2538 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str252.c, i8* %2537)
  %2539 = getelementptr [8 x i8], [8 x i8]* @.str253, i32 0, i32 0
  %2540 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str253.c, i8* %2539)
  %2541 = call i64 @scope_declare_fn(%nyx_string* %2538, %nyx_string* %2540, i64 1)
  %2542 = getelementptr [13 x i8], [13 x i8]* @.str254, i32 0, i32 0
  %2543 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str254.c, i8* %2542)
  %2544 = getelementptr [8 x i8], [8 x i8]* @.str255, i32 0, i32 0
  %2545 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str255.c, i8* %2544)
  %2546 = call i64 @scope_declare_fn(%nyx_string* %2543, %nyx_string* %2545, i64 1)
  %2547 = getelementptr [14 x i8], [14 x i8]* @.str256, i32 0, i32 0
  %2548 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str256.c, i8* %2547)
  %2549 = getelementptr [8 x i8], [8 x i8]* @.str257, i32 0, i32 0
  %2550 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str257.c, i8* %2549)
  %2551 = call i64 @scope_declare_fn(%nyx_string* %2548, %nyx_string* %2550, i64 1)
  %2552 = getelementptr [12 x i8], [12 x i8]* @.str258, i32 0, i32 0
  %2553 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str258.c, i8* %2552)
  %2554 = getelementptr [8 x i8], [8 x i8]* @.str259, i32 0, i32 0
  %2555 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str259.c, i8* %2554)
  %2556 = call i64 @scope_declare_fn(%nyx_string* %2553, %nyx_string* %2555, i64 0)
  %2557 = getelementptr [13 x i8], [13 x i8]* @.str260, i32 0, i32 0
  %2558 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str260.c, i8* %2557)
  %2559 = getelementptr [8 x i8], [8 x i8]* @.str261, i32 0, i32 0
  %2560 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str261.c, i8* %2559)
  %2561 = call i64 @scope_declare_fn(%nyx_string* %2558, %nyx_string* %2560, i64 2)
  %2562 = getelementptr [15 x i8], [15 x i8]* @.str262, i32 0, i32 0
  %2563 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str262.c, i8* %2562)
  %2564 = getelementptr [8 x i8], [8 x i8]* @.str263, i32 0, i32 0
  %2565 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str263.c, i8* %2564)
  %2566 = call i64 @scope_declare_fn(%nyx_string* %2563, %nyx_string* %2565, i64 1)
  %2567 = getelementptr [18 x i8], [18 x i8]* @.str264, i32 0, i32 0
  %2568 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str264.c, i8* %2567)
  %2569 = getelementptr [8 x i8], [8 x i8]* @.str265, i32 0, i32 0
  %2570 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str265.c, i8* %2569)
  %2571 = call i64 @scope_declare_fn(%nyx_string* %2568, %nyx_string* %2570, i64 1)
  %2572 = getelementptr [18 x i8], [18 x i8]* @.str266, i32 0, i32 0
  %2573 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str266.c, i8* %2572)
  %2574 = getelementptr [8 x i8], [8 x i8]* @.str267, i32 0, i32 0
  %2575 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str267.c, i8* %2574)
  %2576 = call i64 @scope_declare_fn(%nyx_string* %2573, %nyx_string* %2575, i64 3)
  %2577 = getelementptr [11 x i8], [11 x i8]* @.str268, i32 0, i32 0
  %2578 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str268.c, i8* %2577)
  %2579 = getelementptr [8 x i8], [8 x i8]* @.str269, i32 0, i32 0
  %2580 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str269.c, i8* %2579)
  %2581 = call i64 @scope_declare_fn(%nyx_string* %2578, %nyx_string* %2580, i64 0)
  %2582 = getelementptr [14 x i8], [14 x i8]* @.str270, i32 0, i32 0
  %2583 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str270.c, i8* %2582)
  %2584 = getelementptr [8 x i8], [8 x i8]* @.str271, i32 0, i32 0
  %2585 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str271.c, i8* %2584)
  %2586 = call i64 @scope_declare_fn(%nyx_string* %2583, %nyx_string* %2585, i64 1)
  %2587 = getelementptr [14 x i8], [14 x i8]* @.str272, i32 0, i32 0
  %2588 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str272.c, i8* %2587)
  %2589 = getelementptr [8 x i8], [8 x i8]* @.str273, i32 0, i32 0
  %2590 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str273.c, i8* %2589)
  %2591 = call i64 @scope_declare_fn(%nyx_string* %2588, %nyx_string* %2590, i64 1)
  %2592 = getelementptr [17 x i8], [17 x i8]* @.str274, i32 0, i32 0
  %2593 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str274.c, i8* %2592)
  %2594 = getelementptr [8 x i8], [8 x i8]* @.str275, i32 0, i32 0
  %2595 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str275.c, i8* %2594)
  %2596 = call i64 @scope_declare_fn(%nyx_string* %2593, %nyx_string* %2595, i64 1)
  %2597 = getelementptr [17 x i8], [17 x i8]* @.str276, i32 0, i32 0
  %2598 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str276.c, i8* %2597)
  %2599 = getelementptr [8 x i8], [8 x i8]* @.str277, i32 0, i32 0
  %2600 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str277.c, i8* %2599)
  %2601 = call i64 @scope_declare_fn(%nyx_string* %2598, %nyx_string* %2600, i64 1)
  %2602 = getelementptr [14 x i8], [14 x i8]* @.str278, i32 0, i32 0
  %2603 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str278.c, i8* %2602)
  %2604 = getelementptr [8 x i8], [8 x i8]* @.str279, i32 0, i32 0
  %2605 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str279.c, i8* %2604)
  %2606 = call i64 @scope_declare_fn(%nyx_string* %2603, %nyx_string* %2605, i64 1)
  %2607 = getelementptr [15 x i8], [15 x i8]* @.str280, i32 0, i32 0
  %2608 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str280.c, i8* %2607)
  %2609 = getelementptr [8 x i8], [8 x i8]* @.str281, i32 0, i32 0
  %2610 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str281.c, i8* %2609)
  %2611 = call i64 @scope_declare_fn(%nyx_string* %2608, %nyx_string* %2610, i64 1)
  %2612 = getelementptr [12 x i8], [12 x i8]* @.str282, i32 0, i32 0
  %2613 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str282.c, i8* %2612)
  %2614 = getelementptr [8 x i8], [8 x i8]* @.str283, i32 0, i32 0
  %2615 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str283.c, i8* %2614)
  %2616 = call i64 @scope_declare_fn(%nyx_string* %2613, %nyx_string* %2615, i64 1)
  %2617 = getelementptr [13 x i8], [13 x i8]* @.str284, i32 0, i32 0
  %2618 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str284.c, i8* %2617)
  %2619 = getelementptr [8 x i8], [8 x i8]* @.str285, i32 0, i32 0
  %2620 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str285.c, i8* %2619)
  %2621 = call i64 @scope_declare_fn(%nyx_string* %2618, %nyx_string* %2620, i64 2)
  %2622 = getelementptr [13 x i8], [13 x i8]* @.str286, i32 0, i32 0
  %2623 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str286.c, i8* %2622)
  %2624 = getelementptr [8 x i8], [8 x i8]* @.str287, i32 0, i32 0
  %2625 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str287.c, i8* %2624)
  %2626 = call i64 @scope_declare_fn(%nyx_string* %2623, %nyx_string* %2625, i64 1)
  %2627 = getelementptr [16 x i8], [16 x i8]* @.str288, i32 0, i32 0
  %2628 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str288.c, i8* %2627)
  %2629 = getelementptr [8 x i8], [8 x i8]* @.str289, i32 0, i32 0
  %2630 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str289.c, i8* %2629)
  %2631 = call i64 @scope_declare_fn(%nyx_string* %2628, %nyx_string* %2630, i64 1)
  %2632 = getelementptr [5 x i8], [5 x i8]* @.str290, i32 0, i32 0
  %2633 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str290.c, i8* %2632)
  %2634 = getelementptr [8 x i8], [8 x i8]* @.str291, i32 0, i32 0
  %2635 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str291.c, i8* %2634)
  %2636 = call i64 @scope_declare_fn(%nyx_string* %2633, %nyx_string* %2635, i64 1)
  %2637 = getelementptr [7 x i8], [7 x i8]* @.str292, i32 0, i32 0
  %2638 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str292.c, i8* %2637)
  %2639 = getelementptr [8 x i8], [8 x i8]* @.str293, i32 0, i32 0
  %2640 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str293.c, i8* %2639)
  %2641 = call i64 @scope_declare_fn(%nyx_string* %2638, %nyx_string* %2640, i64 1)
  %2642 = getelementptr [15 x i8], [15 x i8]* @.str294, i32 0, i32 0
  %2643 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str294.c, i8* %2642)
  %2644 = getelementptr [8 x i8], [8 x i8]* @.str295, i32 0, i32 0
  %2645 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str295.c, i8* %2644)
  %2646 = call i64 @scope_declare_fn(%nyx_string* %2643, %nyx_string* %2645, i64 2)
  %2647 = getelementptr [7 x i8], [7 x i8]* @.str296, i32 0, i32 0
  %2648 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str296.c, i8* %2647)
  %2649 = getelementptr [8 x i8], [8 x i8]* @.str297, i32 0, i32 0
  %2650 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str297.c, i8* %2649)
  %2651 = call i64 @scope_declare_fn(%nyx_string* %2648, %nyx_string* %2650, i64 2)
  %2652 = getelementptr [5 x i8], [5 x i8]* @.str298, i32 0, i32 0
  %2653 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str298.c, i8* %2652)
  %2654 = getelementptr [8 x i8], [8 x i8]* @.str299, i32 0, i32 0
  %2655 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str299.c, i8* %2654)
  %2656 = call i64 @scope_declare_fn(%nyx_string* %2653, %nyx_string* %2655, i64 1)
  %2657 = getelementptr [9 x i8], [9 x i8]* @.str300, i32 0, i32 0
  %2658 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str300.c, i8* %2657)
  %2659 = getelementptr [8 x i8], [8 x i8]* @.str301, i32 0, i32 0
  %2660 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str301.c, i8* %2659)
  %2661 = call i64 @scope_declare_fn(%nyx_string* %2658, %nyx_string* %2660, i64 0)
  %2662 = getelementptr [5 x i8], [5 x i8]* @.str302, i32 0, i32 0
  %2663 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str302.c, i8* %2662)
  %2664 = getelementptr [8 x i8], [8 x i8]* @.str303, i32 0, i32 0
  %2665 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str303.c, i8* %2664)
  %2666 = call i64 @scope_declare_fn(%nyx_string* %2663, %nyx_string* %2665, i64 0)
  %2667 = getelementptr [7 x i8], [7 x i8]* @.str304, i32 0, i32 0
  %2668 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str304.c, i8* %2667)
  %2669 = getelementptr [8 x i8], [8 x i8]* @.str305, i32 0, i32 0
  %2670 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str305.c, i8* %2669)
  %2671 = call i64 @scope_declare_fn(%nyx_string* %2668, %nyx_string* %2670, i64 2)
  %2672 = getelementptr [8 x i8], [8 x i8]* @.str306, i32 0, i32 0
  %2673 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str306.c, i8* %2672)
  %2674 = getelementptr [8 x i8], [8 x i8]* @.str307, i32 0, i32 0
  %2675 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str307.c, i8* %2674)
  %2676 = call i64 @scope_declare_fn(%nyx_string* %2673, %nyx_string* %2675, i64 2)
  %2677 = getelementptr [5 x i8], [5 x i8]* @.str308, i32 0, i32 0
  %2678 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str308.c, i8* %2677)
  %2679 = getelementptr [8 x i8], [8 x i8]* @.str309, i32 0, i32 0
  %2680 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str309.c, i8* %2679)
  %2681 = call i64 @scope_declare_fn(%nyx_string* %2678, %nyx_string* %2680, i64 2)
  %2682 = getelementptr [6 x i8], [6 x i8]* @.str310, i32 0, i32 0
  %2683 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str310.c, i8* %2682)
  %2684 = getelementptr [8 x i8], [8 x i8]* @.str311, i32 0, i32 0
  %2685 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str311.c, i8* %2684)
  %2686 = call i64 @scope_declare_fn(%nyx_string* %2683, %nyx_string* %2685, i64 1)
  %2687 = getelementptr [7 x i8], [7 x i8]* @.str312, i32 0, i32 0
  %2688 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str312.c, i8* %2687)
  %2689 = getelementptr [8 x i8], [8 x i8]* @.str313, i32 0, i32 0
  %2690 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str313.c, i8* %2689)
  %2691 = call i64 @scope_declare_fn(%nyx_string* %2688, %nyx_string* %2690, i64 0)
  %2692 = getelementptr [5 x i8], [5 x i8]* @.str314, i32 0, i32 0
  %2693 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str314.c, i8* %2692)
  %2694 = getelementptr [8 x i8], [8 x i8]* @.str315, i32 0, i32 0
  %2695 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str315.c, i8* %2694)
  %2696 = call i64 @scope_declare_fn(%nyx_string* %2693, %nyx_string* %2695, i64 1)
  %2697 = getelementptr [7 x i8], [7 x i8]* @.str316, i32 0, i32 0
  %2698 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str316.c, i8* %2697)
  %2699 = getelementptr [8 x i8], [8 x i8]* @.str317, i32 0, i32 0
  %2700 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str317.c, i8* %2699)
  %2701 = call i64 @scope_declare_fn(%nyx_string* %2698, %nyx_string* %2700, i64 1)
  %2702 = getelementptr [9 x i8], [9 x i8]* @.str318, i32 0, i32 0
  %2703 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str318.c, i8* %2702)
  %2704 = getelementptr [8 x i8], [8 x i8]* @.str319, i32 0, i32 0
  %2705 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str319.c, i8* %2704)
  %2706 = call i64 @scope_declare_fn(%nyx_string* %2703, %nyx_string* %2705, i64 1)
  %2707 = getelementptr [9 x i8], [9 x i8]* @.str320, i32 0, i32 0
  %2708 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str320.c, i8* %2707)
  %2709 = getelementptr [8 x i8], [8 x i8]* @.str321, i32 0, i32 0
  %2710 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str321.c, i8* %2709)
  %2711 = call i64 @scope_declare_fn(%nyx_string* %2708, %nyx_string* %2710, i64 0)
  %2712 = getelementptr [7 x i8], [7 x i8]* @.str322, i32 0, i32 0
  %2713 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str322.c, i8* %2712)
  %2714 = getelementptr [8 x i8], [8 x i8]* @.str323, i32 0, i32 0
  %2715 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str323.c, i8* %2714)
  %2716 = call i64 @scope_declare_fn(%nyx_string* %2713, %nyx_string* %2715, i64 0)
  %2717 = getelementptr [13 x i8], [13 x i8]* @.str324, i32 0, i32 0
  %2718 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str324.c, i8* %2717)
  %2719 = getelementptr [8 x i8], [8 x i8]* @.str325, i32 0, i32 0
  %2720 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str325.c, i8* %2719)
  %2721 = call i64 @scope_declare_fn(%nyx_string* %2718, %nyx_string* %2720, i64 2)
  %2722 = getelementptr [8 x i8], [8 x i8]* @.str326, i32 0, i32 0
  %2723 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str326.c, i8* %2722)
  %2724 = getelementptr [8 x i8], [8 x i8]* @.str327, i32 0, i32 0
  %2725 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str327.c, i8* %2724)
  %2726 = call i64 @scope_declare_fn(%nyx_string* %2723, %nyx_string* %2725, i64 2)
  %2727 = getelementptr [6 x i8], [6 x i8]* @.str328, i32 0, i32 0
  %2728 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str328.c, i8* %2727)
  %2729 = getelementptr [8 x i8], [8 x i8]* @.str329, i32 0, i32 0
  %2730 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str329.c, i8* %2729)
  %2731 = call i64 @scope_declare_fn(%nyx_string* %2728, %nyx_string* %2730, i64 1)
  %2732 = getelementptr [10 x i8], [10 x i8]* @.str330, i32 0, i32 0
  %2733 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str330.c, i8* %2732)
  %2734 = getelementptr [8 x i8], [8 x i8]* @.str331, i32 0, i32 0
  %2735 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str331.c, i8* %2734)
  %2736 = call i64 @scope_declare_fn(%nyx_string* %2733, %nyx_string* %2735, i64 1)
  %2737 = getelementptr [6 x i8], [6 x i8]* @.str332, i32 0, i32 0
  %2738 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str332.c, i8* %2737)
  %2739 = getelementptr [8 x i8], [8 x i8]* @.str333, i32 0, i32 0
  %2740 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str333.c, i8* %2739)
  %2741 = call i64 @scope_declare_fn(%nyx_string* %2738, %nyx_string* %2740, i64 1)
  %2742 = getelementptr [9 x i8], [9 x i8]* @.str334, i32 0, i32 0
  %2743 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str334.c, i8* %2742)
  %2744 = getelementptr [8 x i8], [8 x i8]* @.str335, i32 0, i32 0
  %2745 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str335.c, i8* %2744)
  %2746 = call i64 @scope_declare_fn(%nyx_string* %2743, %nyx_string* %2745, i64 1)
  %2747 = getelementptr [5 x i8], [5 x i8]* @.str336, i32 0, i32 0
  %2748 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str336.c, i8* %2747)
  %2749 = getelementptr [8 x i8], [8 x i8]* @.str337, i32 0, i32 0
  %2750 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str337.c, i8* %2749)
  %2751 = call i64 @scope_declare_fn(%nyx_string* %2748, %nyx_string* %2750, i64 0)
  %2752 = getelementptr [8 x i8], [8 x i8]* @.str338, i32 0, i32 0
  %2753 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str338.c, i8* %2752)
  %2754 = getelementptr [8 x i8], [8 x i8]* @.str339, i32 0, i32 0
  %2755 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str339.c, i8* %2754)
  %2756 = call i64 @scope_declare_fn(%nyx_string* %2753, %nyx_string* %2755, i64 0)
  %2757 = getelementptr [8 x i8], [8 x i8]* @.str340, i32 0, i32 0
  %2758 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str340.c, i8* %2757)
  %2759 = getelementptr [8 x i8], [8 x i8]* @.str341, i32 0, i32 0
  %2760 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str341.c, i8* %2759)
  %2761 = call i64 @scope_declare_fn(%nyx_string* %2758, %nyx_string* %2760, i64 0)
  %2762 = getelementptr [9 x i8], [9 x i8]* @.str342, i32 0, i32 0
  %2763 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str342.c, i8* %2762)
  %2764 = getelementptr [8 x i8], [8 x i8]* @.str343, i32 0, i32 0
  %2765 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str343.c, i8* %2764)
  %2766 = call i64 @scope_declare_fn(%nyx_string* %2763, %nyx_string* %2765, i64 1)
  %2767 = getelementptr [10 x i8], [10 x i8]* @.str344, i32 0, i32 0
  %2768 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str344.c, i8* %2767)
  %2769 = getelementptr [8 x i8], [8 x i8]* @.str345, i32 0, i32 0
  %2770 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str345.c, i8* %2769)
  %2771 = call i64 @scope_declare_fn(%nyx_string* %2768, %nyx_string* %2770, i64 1)
  %2772 = getelementptr [11 x i8], [11 x i8]* @.str346, i32 0, i32 0
  %2773 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str346.c, i8* %2772)
  %2774 = getelementptr [8 x i8], [8 x i8]* @.str347, i32 0, i32 0
  %2775 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str347.c, i8* %2774)
  %2776 = call i64 @scope_declare_fn(%nyx_string* %2773, %nyx_string* %2775, i64 1)
  %2777 = getelementptr [9 x i8], [9 x i8]* @.str348, i32 0, i32 0
  %2778 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str348.c, i8* %2777)
  %2779 = getelementptr [8 x i8], [8 x i8]* @.str349, i32 0, i32 0
  %2780 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str349.c, i8* %2779)
  %2781 = call i64 @scope_declare_fn(%nyx_string* %2778, %nyx_string* %2780, i64 1)
  %2782 = getelementptr [9 x i8], [9 x i8]* @.str350, i32 0, i32 0
  %2783 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str350.c, i8* %2782)
  %2784 = getelementptr [8 x i8], [8 x i8]* @.str351, i32 0, i32 0
  %2785 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str351.c, i8* %2784)
  %2786 = call i64 @scope_declare_fn(%nyx_string* %2783, %nyx_string* %2785, i64 1)
  %2787 = getelementptr [9 x i8], [9 x i8]* @.str352, i32 0, i32 0
  %2788 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str352.c, i8* %2787)
  %2789 = getelementptr [8 x i8], [8 x i8]* @.str353, i32 0, i32 0
  %2790 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str353.c, i8* %2789)
  %2791 = call i64 @scope_declare_fn(%nyx_string* %2788, %nyx_string* %2790, i64 1)
  %2792 = getelementptr [9 x i8], [9 x i8]* @.str354, i32 0, i32 0
  %2793 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str354.c, i8* %2792)
  %2794 = getelementptr [8 x i8], [8 x i8]* @.str355, i32 0, i32 0
  %2795 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str355.c, i8* %2794)
  %2796 = call i64 @scope_declare_fn(%nyx_string* %2793, %nyx_string* %2795, i64 1)
  %2797 = getelementptr [10 x i8], [10 x i8]* @.str356, i32 0, i32 0
  %2798 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str356.c, i8* %2797)
  %2799 = getelementptr [8 x i8], [8 x i8]* @.str357, i32 0, i32 0
  %2800 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str357.c, i8* %2799)
  %2801 = call i64 @scope_declare_fn(%nyx_string* %2798, %nyx_string* %2800, i64 1)
  %2802 = getelementptr [10 x i8], [10 x i8]* @.str358, i32 0, i32 0
  %2803 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str358.c, i8* %2802)
  %2804 = getelementptr [8 x i8], [8 x i8]* @.str359, i32 0, i32 0
  %2805 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str359.c, i8* %2804)
  %2806 = call i64 @scope_declare_fn(%nyx_string* %2803, %nyx_string* %2805, i64 1)
  %2807 = getelementptr [10 x i8], [10 x i8]* @.str360, i32 0, i32 0
  %2808 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str360.c, i8* %2807)
  %2809 = getelementptr [8 x i8], [8 x i8]* @.str361, i32 0, i32 0
  %2810 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str361.c, i8* %2809)
  %2811 = call i64 @scope_declare_fn(%nyx_string* %2808, %nyx_string* %2810, i64 1)
  %2812 = getelementptr [11 x i8], [11 x i8]* @.str362, i32 0, i32 0
  %2813 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str362.c, i8* %2812)
  %2814 = getelementptr [8 x i8], [8 x i8]* @.str363, i32 0, i32 0
  %2815 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str363.c, i8* %2814)
  %2816 = call i64 @scope_declare_fn(%nyx_string* %2813, %nyx_string* %2815, i64 2)
  %2817 = getelementptr [10 x i8], [10 x i8]* @.str364, i32 0, i32 0
  %2818 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str364.c, i8* %2817)
  %2819 = getelementptr [8 x i8], [8 x i8]* @.str365, i32 0, i32 0
  %2820 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str365.c, i8* %2819)
  %2821 = call i64 @scope_declare_fn(%nyx_string* %2818, %nyx_string* %2820, i64 1)
  %2822 = getelementptr [10 x i8], [10 x i8]* @.str366, i32 0, i32 0
  %2823 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str366.c, i8* %2822)
  %2824 = getelementptr [8 x i8], [8 x i8]* @.str367, i32 0, i32 0
  %2825 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str367.c, i8* %2824)
  %2826 = call i64 @scope_declare_fn(%nyx_string* %2823, %nyx_string* %2825, i64 1)
  %2827 = getelementptr [11 x i8], [11 x i8]* @.str368, i32 0, i32 0
  %2828 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str368.c, i8* %2827)
  %2829 = getelementptr [8 x i8], [8 x i8]* @.str369, i32 0, i32 0
  %2830 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str369.c, i8* %2829)
  %2831 = call i64 @scope_declare_fn(%nyx_string* %2828, %nyx_string* %2830, i64 1)
  %2832 = getelementptr [11 x i8], [11 x i8]* @.str370, i32 0, i32 0
  %2833 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str370.c, i8* %2832)
  %2834 = getelementptr [8 x i8], [8 x i8]* @.str371, i32 0, i32 0
  %2835 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str371.c, i8* %2834)
  %2836 = call i64 @scope_declare_fn(%nyx_string* %2833, %nyx_string* %2835, i64 1)
  %2837 = getelementptr [10 x i8], [10 x i8]* @.str372, i32 0, i32 0
  %2838 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str372.c, i8* %2837)
  %2839 = getelementptr [8 x i8], [8 x i8]* @.str373, i32 0, i32 0
  %2840 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str373.c, i8* %2839)
  %2841 = call i64 @scope_declare_fn(%nyx_string* %2838, %nyx_string* %2840, i64 1)
  %2842 = getelementptr [10 x i8], [10 x i8]* @.str374, i32 0, i32 0
  %2843 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str374.c, i8* %2842)
  %2844 = getelementptr [8 x i8], [8 x i8]* @.str375, i32 0, i32 0
  %2845 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str375.c, i8* %2844)
  %2846 = call i64 @scope_declare_fn(%nyx_string* %2843, %nyx_string* %2845, i64 2)
  %2847 = getelementptr [14 x i8], [14 x i8]* @.str376, i32 0, i32 0
  %2848 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str376.c, i8* %2847)
  %2849 = getelementptr [8 x i8], [8 x i8]* @.str377, i32 0, i32 0
  %2850 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str377.c, i8* %2849)
  %2851 = call i64 @scope_declare_fn(%nyx_string* %2848, %nyx_string* %2850, i64 2)
  %2852 = getelementptr [13 x i8], [13 x i8]* @.str378, i32 0, i32 0
  %2853 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str378.c, i8* %2852)
  %2854 = getelementptr [8 x i8], [8 x i8]* @.str379, i32 0, i32 0
  %2855 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str379.c, i8* %2854)
  %2856 = call i64 @scope_declare_fn(%nyx_string* %2853, %nyx_string* %2855, i64 1)
  %2857 = getelementptr [14 x i8], [14 x i8]* @.str380, i32 0, i32 0
  %2858 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str380.c, i8* %2857)
  %2859 = getelementptr [8 x i8], [8 x i8]* @.str381, i32 0, i32 0
  %2860 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str381.c, i8* %2859)
  %2861 = call i64 @scope_declare_fn(%nyx_string* %2858, %nyx_string* %2860, i64 1)
  %2862 = getelementptr [12 x i8], [12 x i8]* @.str382, i32 0, i32 0
  %2863 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str382.c, i8* %2862)
  %2864 = getelementptr [8 x i8], [8 x i8]* @.str383, i32 0, i32 0
  %2865 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str383.c, i8* %2864)
  %2866 = call i64 @scope_declare_fn(%nyx_string* %2863, %nyx_string* %2865, i64 2)
  %2867 = getelementptr [15 x i8], [15 x i8]* @.str384, i32 0, i32 0
  %2868 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str384.c, i8* %2867)
  %2869 = getelementptr [8 x i8], [8 x i8]* @.str385, i32 0, i32 0
  %2870 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str385.c, i8* %2869)
  %2871 = call i64 @scope_declare_fn(%nyx_string* %2868, %nyx_string* %2870, i64 2)
  %2872 = getelementptr [14 x i8], [14 x i8]* @.str386, i32 0, i32 0
  %2873 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str386.c, i8* %2872)
  %2874 = getelementptr [8 x i8], [8 x i8]* @.str387, i32 0, i32 0
  %2875 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str387.c, i8* %2874)
  %2876 = call i64 @scope_declare_fn(%nyx_string* %2873, %nyx_string* %2875, i64 3)
  %2877 = getelementptr [18 x i8], [18 x i8]* @.str388, i32 0, i32 0
  %2878 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str388.c, i8* %2877)
  %2879 = getelementptr [8 x i8], [8 x i8]* @.str389, i32 0, i32 0
  %2880 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str389.c, i8* %2879)
  %2881 = call i64 @scope_declare_fn(%nyx_string* %2878, %nyx_string* %2880, i64 3)
  %2882 = getelementptr [13 x i8], [13 x i8]* @.str390, i32 0, i32 0
  %2883 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str390.c, i8* %2882)
  %2884 = getelementptr [8 x i8], [8 x i8]* @.str391, i32 0, i32 0
  %2885 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str391.c, i8* %2884)
  %2886 = call i64 @scope_declare_fn(%nyx_string* %2883, %nyx_string* %2885, i64 0)
  %2887 = getelementptr [16 x i8], [16 x i8]* @.str392, i32 0, i32 0
  %2888 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str392.c, i8* %2887)
  %2889 = getelementptr [8 x i8], [8 x i8]* @.str393, i32 0, i32 0
  %2890 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str393.c, i8* %2889)
  %2891 = call i64 @scope_declare_fn(%nyx_string* %2888, %nyx_string* %2890, i64 1)
  %2892 = getelementptr [11 x i8], [11 x i8]* @.str394, i32 0, i32 0
  %2893 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str394.c, i8* %2892)
  %2894 = getelementptr [8 x i8], [8 x i8]* @.str395, i32 0, i32 0
  %2895 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str395.c, i8* %2894)
  %2896 = call i64 @scope_declare_fn(%nyx_string* %2893, %nyx_string* %2895, i64 0)
  %2897 = getelementptr [20 x i8], [20 x i8]* @.str396, i32 0, i32 0
  %2898 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str396.c, i8* %2897)
  %2899 = getelementptr [8 x i8], [8 x i8]* @.str397, i32 0, i32 0
  %2900 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str397.c, i8* %2899)
  %2901 = call i64 @scope_declare_fn(%nyx_string* %2898, %nyx_string* %2900, i64 1)
  %2902 = getelementptr [15 x i8], [15 x i8]* @.str398, i32 0, i32 0
  %2903 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str398.c, i8* %2902)
  %2904 = getelementptr [8 x i8], [8 x i8]* @.str399, i32 0, i32 0
  %2905 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str399.c, i8* %2904)
  %2906 = call i64 @scope_declare_fn(%nyx_string* %2903, %nyx_string* %2905, i64 2)
  %2907 = getelementptr [14 x i8], [14 x i8]* @.str400, i32 0, i32 0
  %2908 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str400.c, i8* %2907)
  %2909 = getelementptr [8 x i8], [8 x i8]* @.str401, i32 0, i32 0
  %2910 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str401.c, i8* %2909)
  %2911 = call i64 @scope_declare_fn(%nyx_string* %2908, %nyx_string* %2910, i64 1)
  %2912 = getelementptr [15 x i8], [15 x i8]* @.str402, i32 0, i32 0
  %2913 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str402.c, i8* %2912)
  %2914 = getelementptr [8 x i8], [8 x i8]* @.str403, i32 0, i32 0
  %2915 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str403.c, i8* %2914)
  %2916 = call i64 @scope_declare_fn(%nyx_string* %2913, %nyx_string* %2915, i64 1)
  %2917 = getelementptr [13 x i8], [13 x i8]* @.str404, i32 0, i32 0
  %2918 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str404.c, i8* %2917)
  %2919 = getelementptr [8 x i8], [8 x i8]* @.str405, i32 0, i32 0
  %2920 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str405.c, i8* %2919)
  %2921 = call i64 @scope_declare_fn(%nyx_string* %2918, %nyx_string* %2920, i64 1)
  %2922 = getelementptr [14 x i8], [14 x i8]* @.str406, i32 0, i32 0
  %2923 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str406.c, i8* %2922)
  %2924 = getelementptr [8 x i8], [8 x i8]* @.str407, i32 0, i32 0
  %2925 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str407.c, i8* %2924)
  %2926 = call i64 @scope_declare_fn(%nyx_string* %2923, %nyx_string* %2925, i64 1)
  %2927 = getelementptr [16 x i8], [16 x i8]* @.str408, i32 0, i32 0
  %2928 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str408.c, i8* %2927)
  %2929 = getelementptr [8 x i8], [8 x i8]* @.str409, i32 0, i32 0
  %2930 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str409.c, i8* %2929)
  %2931 = call i64 @scope_declare_fn(%nyx_string* %2928, %nyx_string* %2930, i64 1)
  %2932 = getelementptr [16 x i8], [16 x i8]* @.str410, i32 0, i32 0
  %2933 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str410.c, i8* %2932)
  %2934 = getelementptr [8 x i8], [8 x i8]* @.str411, i32 0, i32 0
  %2935 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str411.c, i8* %2934)
  %2936 = call i64 @scope_declare_fn(%nyx_string* %2933, %nyx_string* %2935, i64 1)
  %2937 = getelementptr [17 x i8], [17 x i8]* @.str412, i32 0, i32 0
  %2938 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str412.c, i8* %2937)
  %2939 = getelementptr [8 x i8], [8 x i8]* @.str413, i32 0, i32 0
  %2940 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str413.c, i8* %2939)
  %2941 = call i64 @scope_declare_fn(%nyx_string* %2938, %nyx_string* %2940, i64 1)
  %2942 = getelementptr [7 x i8], [7 x i8]* @.str414, i32 0, i32 0
  %2943 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str414.c, i8* %2942)
  %2944 = getelementptr [8 x i8], [8 x i8]* @.str415, i32 0, i32 0
  %2945 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str415.c, i8* %2944)
  %2946 = call i64 @scope_declare_fn(%nyx_string* %2943, %nyx_string* %2945, i64 1)
  %2947 = getelementptr [4 x i8], [4 x i8]* @.str416, i32 0, i32 0
  %2948 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str416.c, i8* %2947)
  %2949 = getelementptr [8 x i8], [8 x i8]* @.str417, i32 0, i32 0
  %2950 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str417.c, i8* %2949)
  %2951 = call i64 @scope_declare_fn(%nyx_string* %2948, %nyx_string* %2950, i64 1)
  %2952 = getelementptr [12 x i8], [12 x i8]* @.str418, i32 0, i32 0
  %2953 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str418.c, i8* %2952)
  %2954 = getelementptr [8 x i8], [8 x i8]* @.str419, i32 0, i32 0
  %2955 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str419.c, i8* %2954)
  %2956 = call i64 @scope_declare_fn(%nyx_string* %2953, %nyx_string* %2955, i64 2)
  %2957 = getelementptr [10 x i8], [10 x i8]* @.str420, i32 0, i32 0
  %2958 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str420.c, i8* %2957)
  %2959 = getelementptr [8 x i8], [8 x i8]* @.str421, i32 0, i32 0
  %2960 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str421.c, i8* %2959)
  %2961 = call i64 @scope_declare_fn(%nyx_string* %2958, %nyx_string* %2960, i64 1)
  %2962 = getelementptr [11 x i8], [11 x i8]* @.str422, i32 0, i32 0
  %2963 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str422.c, i8* %2962)
  %2964 = getelementptr [8 x i8], [8 x i8]* @.str423, i32 0, i32 0
  %2965 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str423.c, i8* %2964)
  %2966 = call i64 @scope_declare_fn(%nyx_string* %2963, %nyx_string* %2965, i64 3)
  %2967 = getelementptr [12 x i8], [12 x i8]* @.str424, i32 0, i32 0
  %2968 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str424.c, i8* %2967)
  %2969 = getelementptr [8 x i8], [8 x i8]* @.str425, i32 0, i32 0
  %2970 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str425.c, i8* %2969)
  %2971 = call i64 @scope_declare_fn(%nyx_string* %2968, %nyx_string* %2970, i64 2)
  %2972 = getelementptr [9 x i8], [9 x i8]* @.str426, i32 0, i32 0
  %2973 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str426.c, i8* %2972)
  %2974 = getelementptr [8 x i8], [8 x i8]* @.str427, i32 0, i32 0
  %2975 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str427.c, i8* %2974)
  %2976 = call i64 @scope_declare_fn(%nyx_string* %2973, %nyx_string* %2975, i64 2)
  %2977 = getelementptr [17 x i8], [17 x i8]* @.str428, i32 0, i32 0
  %2978 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str428.c, i8* %2977)
  %2979 = getelementptr [8 x i8], [8 x i8]* @.str429, i32 0, i32 0
  %2980 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str429.c, i8* %2979)
  %2981 = call i64 @scope_declare_fn(%nyx_string* %2978, %nyx_string* %2980, i64 2)
  %2982 = getelementptr [18 x i8], [18 x i8]* @.str430, i32 0, i32 0
  %2983 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str430.c, i8* %2982)
  %2984 = getelementptr [8 x i8], [8 x i8]* @.str431, i32 0, i32 0
  %2985 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str431.c, i8* %2984)
  %2986 = call i64 @scope_declare_fn(%nyx_string* %2983, %nyx_string* %2985, i64 2)
  %2987 = getelementptr [18 x i8], [18 x i8]* @.str432, i32 0, i32 0
  %2988 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str432.c, i8* %2987)
  %2989 = getelementptr [8 x i8], [8 x i8]* @.str433, i32 0, i32 0
  %2990 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str433.c, i8* %2989)
  %2991 = call i64 @scope_declare_fn(%nyx_string* %2988, %nyx_string* %2990, i64 2)
  %2992 = getelementptr [10 x i8], [10 x i8]* @.str434, i32 0, i32 0
  %2993 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str434.c, i8* %2992)
  %2994 = getelementptr [8 x i8], [8 x i8]* @.str435, i32 0, i32 0
  %2995 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str435.c, i8* %2994)
  %2996 = call i64 @scope_declare_fn(%nyx_string* %2993, %nyx_string* %2995, i64 2)
  %2997 = getelementptr [10 x i8], [10 x i8]* @.str436, i32 0, i32 0
  %2998 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str436.c, i8* %2997)
  %2999 = getelementptr [8 x i8], [8 x i8]* @.str437, i32 0, i32 0
  %3000 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str437.c, i8* %2999)
  %3001 = call i64 @scope_declare_fn(%nyx_string* %2998, %nyx_string* %3000, i64 1)
  %3002 = getelementptr [16 x i8], [16 x i8]* @.str438, i32 0, i32 0
  %3003 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str438.c, i8* %3002)
  %3004 = getelementptr [8 x i8], [8 x i8]* @.str439, i32 0, i32 0
  %3005 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str439.c, i8* %3004)
  %3006 = call i64 @scope_declare_fn(%nyx_string* %3003, %nyx_string* %3005, i64 2)
  %3007 = getelementptr [20 x i8], [20 x i8]* @.str440, i32 0, i32 0
  %3008 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str440.c, i8* %3007)
  %3009 = getelementptr [8 x i8], [8 x i8]* @.str441, i32 0, i32 0
  %3010 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str441.c, i8* %3009)
  %3011 = call i64 @scope_declare_fn(%nyx_string* %3008, %nyx_string* %3010, i64 3)
  %3012 = getelementptr [11 x i8], [11 x i8]* @.str442, i32 0, i32 0
  %3013 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str442.c, i8* %3012)
  %3014 = getelementptr [8 x i8], [8 x i8]* @.str443, i32 0, i32 0
  %3015 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str443.c, i8* %3014)
  %3016 = call i64 @scope_declare_fn(%nyx_string* %3013, %nyx_string* %3015, i64 1)
  %3017 = getelementptr [14 x i8], [14 x i8]* @.str444, i32 0, i32 0
  %3018 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str444.c, i8* %3017)
  %3019 = getelementptr [8 x i8], [8 x i8]* @.str445, i32 0, i32 0
  %3020 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str445.c, i8* %3019)
  %3021 = call i64 @scope_declare_fn(%nyx_string* %3018, %nyx_string* %3020, i64 1)
  %3022 = getelementptr [15 x i8], [15 x i8]* @.str446, i32 0, i32 0
  %3023 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str446.c, i8* %3022)
  %3024 = getelementptr [8 x i8], [8 x i8]* @.str447, i32 0, i32 0
  %3025 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str447.c, i8* %3024)
  %3026 = call i64 @scope_declare_fn(%nyx_string* %3023, %nyx_string* %3025, i64 2)
  %3027 = getelementptr [15 x i8], [15 x i8]* @.str448, i32 0, i32 0
  %3028 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str448.c, i8* %3027)
  %3029 = getelementptr [8 x i8], [8 x i8]* @.str449, i32 0, i32 0
  %3030 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str449.c, i8* %3029)
  %3031 = call i64 @scope_declare_fn(%nyx_string* %3028, %nyx_string* %3030, i64 1)
  %3032 = getelementptr [10 x i8], [10 x i8]* @.str450, i32 0, i32 0
  %3033 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str450.c, i8* %3032)
  %3034 = getelementptr [8 x i8], [8 x i8]* @.str451, i32 0, i32 0
  %3035 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str451.c, i8* %3034)
  %3036 = call i64 @scope_declare_fn(%nyx_string* %3033, %nyx_string* %3035, i64 0)
  %3037 = getelementptr [17 x i8], [17 x i8]* @.str452, i32 0, i32 0
  %3038 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str452.c, i8* %3037)
  %3039 = getelementptr [8 x i8], [8 x i8]* @.str453, i32 0, i32 0
  %3040 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str453.c, i8* %3039)
  %3041 = call i64 @scope_declare_fn(%nyx_string* %3038, %nyx_string* %3040, i64 1)
  %3042 = getelementptr [14 x i8], [14 x i8]* @.str454, i32 0, i32 0
  %3043 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str454.c, i8* %3042)
  %3044 = getelementptr [8 x i8], [8 x i8]* @.str455, i32 0, i32 0
  %3045 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str455.c, i8* %3044)
  %3046 = call i64 @scope_declare_fn(%nyx_string* %3043, %nyx_string* %3045, i64 1)
  %3047 = getelementptr [16 x i8], [16 x i8]* @.str456, i32 0, i32 0
  %3048 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str456.c, i8* %3047)
  %3049 = getelementptr [8 x i8], [8 x i8]* @.str457, i32 0, i32 0
  %3050 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str457.c, i8* %3049)
  %3051 = call i64 @scope_declare_fn(%nyx_string* %3048, %nyx_string* %3050, i64 1)
  %3052 = getelementptr [17 x i8], [17 x i8]* @.str458, i32 0, i32 0
  %3053 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str458.c, i8* %3052)
  %3054 = getelementptr [8 x i8], [8 x i8]* @.str459, i32 0, i32 0
  %3055 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str459.c, i8* %3054)
  %3056 = call i64 @scope_declare_fn(%nyx_string* %3053, %nyx_string* %3055, i64 2)
  %3057 = getelementptr [19 x i8], [19 x i8]* @.str460, i32 0, i32 0
  %3058 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str460.c, i8* %3057)
  %3059 = getelementptr [8 x i8], [8 x i8]* @.str461, i32 0, i32 0
  %3060 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str461.c, i8* %3059)
  %3061 = call i64 @scope_declare_fn(%nyx_string* %3058, %nyx_string* %3060, i64 2)
  %3062 = getelementptr [16 x i8], [16 x i8]* @.str462, i32 0, i32 0
  %3063 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str462.c, i8* %3062)
  %3064 = getelementptr [8 x i8], [8 x i8]* @.str463, i32 0, i32 0
  %3065 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str463.c, i8* %3064)
  %3066 = call i64 @scope_declare_fn(%nyx_string* %3063, %nyx_string* %3065, i64 1)
  %3067 = getelementptr [5 x i8], [5 x i8]* @.str464, i32 0, i32 0
  %3068 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str464.c, i8* %3067)
  %3069 = getelementptr [8 x i8], [8 x i8]* @.str465, i32 0, i32 0
  %3070 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str465.c, i8* %3069)
  %3071 = call i64 @scope_declare_fn(%nyx_string* %3068, %nyx_string* %3070, i64 1)
  %3072 = getelementptr [6 x i8], [6 x i8]* @.str466, i32 0, i32 0
  %3073 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str466.c, i8* %3072)
  %3074 = getelementptr [8 x i8], [8 x i8]* @.str467, i32 0, i32 0
  %3075 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str467.c, i8* %3074)
  %3076 = call i64 @scope_declare_fn(%nyx_string* %3073, %nyx_string* %3075, i64 1)
  %3077 = getelementptr [6 x i8], [6 x i8]* @.str468, i32 0, i32 0
  %3078 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str468.c, i8* %3077)
  %3079 = getelementptr [8 x i8], [8 x i8]* @.str469, i32 0, i32 0
  %3080 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str469.c, i8* %3079)
  %3081 = call i64 @scope_declare_fn(%nyx_string* %3078, %nyx_string* %3080, i64 1)
  %3082 = getelementptr [4 x i8], [4 x i8]* @.str470, i32 0, i32 0
  %3083 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str470.c, i8* %3082)
  %3084 = getelementptr [8 x i8], [8 x i8]* @.str471, i32 0, i32 0
  %3085 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str471.c, i8* %3084)
  %3086 = call i64 @scope_declare_fn(%nyx_string* %3083, %nyx_string* %3085, i64 1)
  %3087 = getelementptr [7 x i8], [7 x i8]* @.str472, i32 0, i32 0
  %3088 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str472.c, i8* %3087)
  %3089 = getelementptr [8 x i8], [8 x i8]* @.str473, i32 0, i32 0
  %3090 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str473.c, i8* %3089)
  %3091 = sub i64 0, 1
  %3092 = call i64 @scope_declare_fn(%nyx_string* %3088, %nyx_string* %3090, i64 %3091)
  %3093 = getelementptr [14 x i8], [14 x i8]* @.str474, i32 0, i32 0
  %3094 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str474.c, i8* %3093)
  %3095 = getelementptr [8 x i8], [8 x i8]* @.str475, i32 0, i32 0
  %3096 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str475.c, i8* %3095)
  %3097 = call i64 @scope_declare_fn(%nyx_string* %3094, %nyx_string* %3096, i64 1)
  %3098 = getelementptr [15 x i8], [15 x i8]* @.str476, i32 0, i32 0
  %3099 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str476.c, i8* %3098)
  %3100 = getelementptr [8 x i8], [8 x i8]* @.str477, i32 0, i32 0
  %3101 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str477.c, i8* %3100)
  %3102 = call i64 @scope_declare_fn(%nyx_string* %3099, %nyx_string* %3101, i64 2)
  %3103 = getelementptr [11 x i8], [11 x i8]* @.str478, i32 0, i32 0
  %3104 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str478.c, i8* %3103)
  %3105 = getelementptr [8 x i8], [8 x i8]* @.str479, i32 0, i32 0
  %3106 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str479.c, i8* %3105)
  %3107 = call i64 @scope_declare_fn(%nyx_string* %3104, %nyx_string* %3106, i64 2)
  %3108 = getelementptr [11 x i8], [11 x i8]* @.str480, i32 0, i32 0
  %3109 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str480.c, i8* %3108)
  %3110 = getelementptr [8 x i8], [8 x i8]* @.str481, i32 0, i32 0
  %3111 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str481.c, i8* %3110)
  %3112 = call i64 @scope_declare_fn(%nyx_string* %3109, %nyx_string* %3111, i64 2)
  %3113 = getelementptr [11 x i8], [11 x i8]* @.str482, i32 0, i32 0
  %3114 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str482.c, i8* %3113)
  %3115 = getelementptr [8 x i8], [8 x i8]* @.str483, i32 0, i32 0
  %3116 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str483.c, i8* %3115)
  %3117 = call i64 @scope_declare_fn(%nyx_string* %3114, %nyx_string* %3116, i64 3)
  %3118 = getelementptr [15 x i8], [15 x i8]* @.str484, i32 0, i32 0
  %3119 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str484.c, i8* %3118)
  %3120 = getelementptr [8 x i8], [8 x i8]* @.str485, i32 0, i32 0
  %3121 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str485.c, i8* %3120)
  %3122 = call i64 @scope_declare_fn(%nyx_string* %3119, %nyx_string* %3121, i64 0)
  %3123 = getelementptr [14 x i8], [14 x i8]* @.str486, i32 0, i32 0
  %3124 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str486.c, i8* %3123)
  %3125 = getelementptr [8 x i8], [8 x i8]* @.str487, i32 0, i32 0
  %3126 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str487.c, i8* %3125)
  %3127 = call i64 @scope_declare_fn(%nyx_string* %3124, %nyx_string* %3126, i64 0)
  %3128 = getelementptr [10 x i8], [10 x i8]* @.str488, i32 0, i32 0
  %3129 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str488.c, i8* %3128)
  %3130 = getelementptr [8 x i8], [8 x i8]* @.str489, i32 0, i32 0
  %3131 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str489.c, i8* %3130)
  %3132 = call i64 @scope_declare_fn(%nyx_string* %3129, %nyx_string* %3131, i64 0)
  %3133 = getelementptr [18 x i8], [18 x i8]* @.str490, i32 0, i32 0
  %3134 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str490.c, i8* %3133)
  %3135 = getelementptr [8 x i8], [8 x i8]* @.str491, i32 0, i32 0
  %3136 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str491.c, i8* %3135)
  %3137 = call i64 @scope_declare_fn(%nyx_string* %3134, %nyx_string* %3136, i64 1)
  %3138 = getelementptr [10 x i8], [10 x i8]* @.str492, i32 0, i32 0
  %3139 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str492.c, i8* %3138)
  %3140 = getelementptr [8 x i8], [8 x i8]* @.str493, i32 0, i32 0
  %3141 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str493.c, i8* %3140)
  %3142 = call i64 @scope_declare_fn(%nyx_string* %3139, %nyx_string* %3141, i64 0)
  %3143 = getelementptr [10 x i8], [10 x i8]* @.str494, i32 0, i32 0
  %3144 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str494.c, i8* %3143)
  %3145 = getelementptr [8 x i8], [8 x i8]* @.str495, i32 0, i32 0
  %3146 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str495.c, i8* %3145)
  %3147 = call i64 @scope_declare_fn(%nyx_string* %3144, %nyx_string* %3146, i64 0)
  %3148 = getelementptr [11 x i8], [11 x i8]* @.str496, i32 0, i32 0
  %3149 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str496.c, i8* %3148)
  %3150 = getelementptr [8 x i8], [8 x i8]* @.str497, i32 0, i32 0
  %3151 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str497.c, i8* %3150)
  %3152 = call i64 @scope_declare_fn(%nyx_string* %3149, %nyx_string* %3151, i64 1)
  %3153 = getelementptr [11 x i8], [11 x i8]* @.str498, i32 0, i32 0
  %3154 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str498.c, i8* %3153)
  %3155 = getelementptr [8 x i8], [8 x i8]* @.str499, i32 0, i32 0
  %3156 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str499.c, i8* %3155)
  %3157 = call i64 @scope_declare_fn(%nyx_string* %3154, %nyx_string* %3156, i64 0)
  %3158 = getelementptr [4 x i8], [4 x i8]* @.str500, i32 0, i32 0
  %3159 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str500.c, i8* %3158)
  %3160 = getelementptr [8 x i8], [8 x i8]* @.str501, i32 0, i32 0
  %3161 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str501.c, i8* %3160)
  %3162 = call i64 @scope_declare_fn(%nyx_string* %3159, %nyx_string* %3161, i64 1)
  %3163 = getelementptr [4 x i8], [4 x i8]* @.str502, i32 0, i32 0
  %3164 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str502.c, i8* %3163)
  %3165 = getelementptr [8 x i8], [8 x i8]* @.str503, i32 0, i32 0
  %3166 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str503.c, i8* %3165)
  %3167 = call i64 @scope_declare(%nyx_string* %3164, %nyx_string* %3166)
  %3168 = getelementptr [14 x i8], [14 x i8]* @.str504, i32 0, i32 0
  %3169 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str504.c, i8* %3168)
  %3170 = getelementptr [8 x i8], [8 x i8]* @.str505, i32 0, i32 0
  %3171 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str505.c, i8* %3170)
  %3172 = call i64 @scope_declare(%nyx_string* %3169, %nyx_string* %3171)
  ret i64 0
}

define internal i64 @register_declarations(
{ i64, i8* }* %stmts.param) {
  %stmts.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %stmts.param, { i64, i8* }** %stmts.ptr
  %3173 = alloca i64
  store i64 0, i64* %3173
  %3174 = getelementptr [11 x i8], [11 x i8]* @.str506, i32 0, i32 0
  %3175 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str506.c, i8* %3174)
  %3176 = alloca %nyx_string*
  store %nyx_string* %3175, %nyx_string** %3176
  %3177 = getelementptr [4 x i8], [4 x i8]* @.str507, i32 0, i32 0
  %3178 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str507.c, i8* %3177)
  %3179 = alloca %nyx_string*
  store %nyx_string* %3178, %nyx_string** %3179
  %3180 = getelementptr [4 x i8], [4 x i8]* @.str508, i32 0, i32 0
  %3181 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str508.c, i8* %3180)
  %3182 = alloca %nyx_string*
  store %nyx_string* %3181, %nyx_string** %3182
  br label %while_cond597
while_cond597:
  %3183 = load i64, i64* %3173
  %3184 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %3185 = call i64 @nyx_array_length({ i64, i8* }* %3184)
  %3186 = icmp slt i64 %3183, %3185
  br i1 %3186, label %while_body598, label %while_end599
while_body598:
  %3187 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %3188 = load i64, i64* %3173
  %3189 = call i64 @nyx_array_get({ i64, i8* }* %3187, i64 %3188)
  %3190 = inttoptr i64 %3189 to { i64, i8* }*
  %3191 = call i64 @nyx_array_get({ i64, i8* }* %3190, i64 0)
  %3192 = call i64 @nyx_array_get({ i64, i8* }* %3190, i64 1)
  %3193 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %3190, i64 2)
  %3194 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %3190, i64 3)
  %3195 = inttoptr i64 %3191 to %nyx_string*
  %3196 = inttoptr i64 %3192 to { i64, i8* }*
  %3197 = alloca %ASTNode
  %3198 = getelementptr inbounds %ASTNode, %ASTNode* %3197, i32 0, i32 0
  store %nyx_string* %3195, %nyx_string** %3198
  %3199 = getelementptr inbounds %ASTNode, %ASTNode* %3197, i32 0, i32 1
  store { i64, i8* }* %3196, { i64, i8* }** %3199
  %3200 = getelementptr inbounds %ASTNode, %ASTNode* %3197, i32 0, i32 2
  store i64 %3193, i64* %3200
  %3201 = getelementptr inbounds %ASTNode, %ASTNode* %3197, i32 0, i32 3
  store i64 %3194, i64* %3201
  %3202 = load %ASTNode, %ASTNode* %3197
  %3203 = alloca %ASTNode
  store %ASTNode %3202, %ASTNode* %3203
  %3204 = getelementptr %ASTNode, %ASTNode* %3203, i32 0, i32 0
  %3205 = load %nyx_string*, %nyx_string** %3204
  %3206 = load %nyx_string*, %nyx_string** %3176
  %3207 = call i1 @nyx_string_equals(%nyx_string* %3205, %nyx_string* %3206)
  br i1 %3207, label %then600, label %else601
then600:
  %3208 = load %ASTNode, %ASTNode* %3203
  %3209 = call %nyx_string* @get_string_at(%ASTNode %3208, i64 0)
  %3210 = alloca %nyx_string*
  store %nyx_string* %3209, %nyx_string** %3210
  %3211 = load %ASTNode, %ASTNode* %3203
  %3212 = call %nyx_string* @get_string_at(%ASTNode %3211, i64 1)
  %3213 = alloca %nyx_string*
  store %nyx_string* %3212, %nyx_string** %3213
  %3214 = load %nyx_string*, %nyx_string** %3210
  %3215 = call i1 @is_type_alias(%nyx_string* %3214)
  %3216 = xor i1 %3215, true
  br i1 %3216, label %then603, label %else604
then603:
  %3217 = load %nyx_string*, %nyx_string** %3213
  %3218 = call { i64, i8* }* @ty_parse(%nyx_string* %3217)
  %3219 = alloca { i64, i8* }*
  store { i64, i8* }* %3218, { i64, i8* }** %3219
  %3220 = load %nyx_string*, %nyx_string** %3210
  %3221 = load { i64, i8* }*, { i64, i8* }** %3219
  %3222 = call i64 @register_type_alias(%nyx_string* %3220, { i64, i8* }* %3221)
  br label %merge605
else604:
  br label %merge605
merge605:
  br label %merge602
else601:
  br label %merge602
merge602:
  %3223 = getelementptr %ASTNode, %ASTNode* %3203, i32 0, i32 0
  %3224 = load %nyx_string*, %nyx_string** %3223
  %3225 = load %nyx_string*, %nyx_string** %3179
  %3226 = call i1 @nyx_string_equals(%nyx_string* %3224, %nyx_string* %3225)
  br i1 %3226, label %then606, label %else607
then606:
  %3227 = load %ASTNode, %ASTNode* %3203
  %3228 = call %ASTNode @get_node_at(%ASTNode %3227, i64 0)
  %3229 = alloca %ASTNode
  store %ASTNode %3228, %ASTNode* %3229
  %3230 = getelementptr %ASTNode, %ASTNode* %3229, i32 0, i32 0
  %3231 = load %nyx_string*, %nyx_string** %3230
  %3232 = alloca %nyx_string*
  store %nyx_string* %3231, %nyx_string** %3232
  %3233 = load %ASTNode, %ASTNode* %3203
  %3234 = call i1 @get_bool_at(%ASTNode %3233, i64 1)
  br i1 %3234, label %then609, label %else610
then609:
  %3235 = load %nyx_string*, %nyx_string** %3232
  %3236 = load %nyx_string*, %nyx_string** %3182
  %3237 = call i64 @scope_declare(%nyx_string* %3235, %nyx_string* %3236)
  br label %merge611
else610:
  %3238 = load %nyx_string*, %nyx_string** %3232
  %3239 = load %nyx_string*, %nyx_string** %3179
  %3240 = call i64 @scope_declare(%nyx_string* %3238, %nyx_string* %3239)
  br label %merge611
merge611:
  br label %merge608
else607:
  br label %merge608
merge608:
  %3241 = load i64, i64* %3173
  %3242 = add i64 %3241, 1
  store i64 %3242, i64* %3173
  br label %while_cond597
while_end599:
  %3243 = alloca i64
  store i64 0, i64* %3243
  %3244 = getelementptr [9 x i8], [9 x i8]* @.str509, i32 0, i32 0
  %3245 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str509.c, i8* %3244)
  %3246 = alloca %nyx_string*
  store %nyx_string* %3245, %nyx_string** %3246
  %3247 = getelementptr [4 x i8], [4 x i8]* @.str510, i32 0, i32 0
  %3248 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str510.c, i8* %3247)
  %3249 = alloca %nyx_string*
  store %nyx_string* %3248, %nyx_string** %3249
  %3250 = getelementptr [3 x i8], [3 x i8]* @.str511, i32 0, i32 0
  %3251 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str511.c, i8* %3250)
  %3252 = alloca %nyx_string*
  store %nyx_string* %3251, %nyx_string** %3252
  %3253 = getelementptr [1 x i8], [1 x i8]* @.str512, i32 0, i32 0
  %3254 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str512.c, i8* %3253)
  %3255 = alloca %nyx_string*
  store %nyx_string* %3254, %nyx_string** %3255
  %3256 = getelementptr [5 x i8], [5 x i8]* @.str513, i32 0, i32 0
  %3257 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str513.c, i8* %3256)
  %3258 = alloca %nyx_string*
  store %nyx_string* %3257, %nyx_string** %3258
  %3259 = getelementptr [9 x i8], [9 x i8]* @.str514, i32 0, i32 0
  %3260 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str514.c, i8* %3259)
  %3261 = alloca %nyx_string*
  store %nyx_string* %3260, %nyx_string** %3261
  %3262 = getelementptr [6 x i8], [6 x i8]* @.str515, i32 0, i32 0
  %3263 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str515.c, i8* %3262)
  %3264 = alloca %nyx_string*
  store %nyx_string* %3263, %nyx_string** %3264
  %3265 = getelementptr [4 x i8], [4 x i8]* @.str516, i32 0, i32 0
  %3266 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str516.c, i8* %3265)
  %3267 = alloca %nyx_string*
  store %nyx_string* %3266, %nyx_string** %3267
  %3268 = getelementptr [7 x i8], [7 x i8]* @.str517, i32 0, i32 0
  %3269 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str517.c, i8* %3268)
  %3270 = alloca %nyx_string*
  store %nyx_string* %3269, %nyx_string** %3270
  %3271 = getelementptr [8 x i8], [8 x i8]* @.str518, i32 0, i32 0
  %3272 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str518.c, i8* %3271)
  %3273 = alloca %nyx_string*
  store %nyx_string* %3272, %nyx_string** %3273
  %3274 = getelementptr [2 x i8], [2 x i8]* @.str519, i32 0, i32 0
  %3275 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str519.c, i8* %3274)
  %3276 = alloca %nyx_string*
  store %nyx_string* %3275, %nyx_string** %3276
  %3277 = getelementptr [4 x i8], [4 x i8]* @.str520, i32 0, i32 0
  %3278 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str520.c, i8* %3277)
  %3279 = alloca %nyx_string*
  store %nyx_string* %3278, %nyx_string** %3279
  %3280 = getelementptr [45 x i8], [45 x i8]* @.str521, i32 0, i32 0
  %3281 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str521.c, i8* %3280)
  %3282 = alloca %nyx_string*
  store %nyx_string* %3281, %nyx_string** %3282
  %3283 = getelementptr [50 x i8], [50 x i8]* @.str522, i32 0, i32 0
  %3284 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str522.c, i8* %3283)
  %3285 = alloca %nyx_string*
  store %nyx_string* %3284, %nyx_string** %3285
  %3286 = getelementptr [7 x i8], [7 x i8]* @.str523, i32 0, i32 0
  %3287 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str523.c, i8* %3286)
  %3288 = alloca %nyx_string*
  store %nyx_string* %3287, %nyx_string** %3288
  %3289 = getelementptr [8 x i8], [8 x i8]* @.str524, i32 0, i32 0
  %3290 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str524.c, i8* %3289)
  %3291 = alloca %nyx_string*
  store %nyx_string* %3290, %nyx_string** %3291
  %3292 = getelementptr [8 x i8], [8 x i8]* @.str525, i32 0, i32 0
  %3293 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str525.c, i8* %3292)
  %3294 = alloca %nyx_string*
  store %nyx_string* %3293, %nyx_string** %3294
  %3295 = getelementptr [9 x i8], [9 x i8]* @.str526, i32 0, i32 0
  %3296 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str526.c, i8* %3295)
  %3297 = alloca %nyx_string*
  store %nyx_string* %3296, %nyx_string** %3297
  %3298 = getelementptr [6 x i8], [6 x i8]* @.str527, i32 0, i32 0
  %3299 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str527.c, i8* %3298)
  %3300 = alloca %nyx_string*
  store %nyx_string* %3299, %nyx_string** %3300
  %3301 = getelementptr [7 x i8], [7 x i8]* @.str528, i32 0, i32 0
  %3302 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str528.c, i8* %3301)
  %3303 = alloca %nyx_string*
  store %nyx_string* %3302, %nyx_string** %3303
  %3304 = getelementptr [10 x i8], [10 x i8]* @.str529, i32 0, i32 0
  %3305 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str529.c, i8* %3304)
  %3306 = alloca %nyx_string*
  store %nyx_string* %3305, %nyx_string** %3306
  %3307 = getelementptr [4 x i8], [4 x i8]* @.str530, i32 0, i32 0
  %3308 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str530.c, i8* %3307)
  %3309 = alloca %nyx_string*
  store %nyx_string* %3308, %nyx_string** %3309
  %3310 = getelementptr [6 x i8], [6 x i8]* @.str531, i32 0, i32 0
  %3311 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str531.c, i8* %3310)
  %3312 = alloca %nyx_string*
  store %nyx_string* %3311, %nyx_string** %3312
  %3313 = getelementptr [11 x i8], [11 x i8]* @.str532, i32 0, i32 0
  %3314 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str532.c, i8* %3313)
  %3315 = alloca %nyx_string*
  store %nyx_string* %3314, %nyx_string** %3315
  %3316 = getelementptr [8 x i8], [8 x i8]* @.str533, i32 0, i32 0
  %3317 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str533.c, i8* %3316)
  %3318 = alloca %nyx_string*
  store %nyx_string* %3317, %nyx_string** %3318
  %3319 = getelementptr [11 x i8], [11 x i8]* @.str534, i32 0, i32 0
  %3320 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str534.c, i8* %3319)
  %3321 = alloca %nyx_string*
  store %nyx_string* %3320, %nyx_string** %3321
  %3322 = getelementptr [9 x i8], [9 x i8]* @.str535, i32 0, i32 0
  %3323 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str535.c, i8* %3322)
  %3324 = alloca %nyx_string*
  store %nyx_string* %3323, %nyx_string** %3324
  %3325 = getelementptr [5 x i8], [5 x i8]* @.str536, i32 0, i32 0
  %3326 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str536.c, i8* %3325)
  %3327 = alloca %nyx_string*
  store %nyx_string* %3326, %nyx_string** %3327
  %3328 = getelementptr [7 x i8], [7 x i8]* @.str537, i32 0, i32 0
  %3329 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str537.c, i8* %3328)
  %3330 = alloca %nyx_string*
  store %nyx_string* %3329, %nyx_string** %3330
  %3331 = getelementptr [7 x i8], [7 x i8]* @.str538, i32 0, i32 0
  %3332 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str538.c, i8* %3331)
  %3333 = alloca %nyx_string*
  store %nyx_string* %3332, %nyx_string** %3333
  %3334 = getelementptr [10 x i8], [10 x i8]* @.str539, i32 0, i32 0
  %3335 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str539.c, i8* %3334)
  %3336 = alloca %nyx_string*
  store %nyx_string* %3335, %nyx_string** %3336
  %3337 = getelementptr [12 x i8], [12 x i8]* @.str540, i32 0, i32 0
  %3338 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str540.c, i8* %3337)
  %3339 = alloca %nyx_string*
  store %nyx_string* %3338, %nyx_string** %3339
  %3340 = getelementptr [7 x i8], [7 x i8]* @.str541, i32 0, i32 0
  %3341 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str541.c, i8* %3340)
  %3342 = alloca %nyx_string*
  store %nyx_string* %3341, %nyx_string** %3342
  %3343 = getelementptr [14 x i8], [14 x i8]* @.str542, i32 0, i32 0
  %3344 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str542.c, i8* %3343)
  %3345 = alloca %nyx_string*
  store %nyx_string* %3344, %nyx_string** %3345
  %3346 = getelementptr [5 x i8], [5 x i8]* @.str543, i32 0, i32 0
  %3347 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str543.c, i8* %3346)
  %3348 = alloca %nyx_string*
  store %nyx_string* %3347, %nyx_string** %3348
  %3349 = getelementptr [2 x i8], [2 x i8]* @.str544, i32 0, i32 0
  %3350 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str544.c, i8* %3349)
  %3351 = alloca %nyx_string*
  store %nyx_string* %3350, %nyx_string** %3351
  %3352 = getelementptr [10 x i8], [10 x i8]* @.str545, i32 0, i32 0
  %3353 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str545.c, i8* %3352)
  %3354 = alloca %nyx_string*
  store %nyx_string* %3353, %nyx_string** %3354
  %3355 = getelementptr [6 x i8], [6 x i8]* @.str546, i32 0, i32 0
  %3356 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str546.c, i8* %3355)
  %3357 = alloca %nyx_string*
  store %nyx_string* %3356, %nyx_string** %3357
  %3358 = getelementptr [15 x i8], [15 x i8]* @.str547, i32 0, i32 0
  %3359 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str547.c, i8* %3358)
  %3360 = alloca %nyx_string*
  store %nyx_string* %3359, %nyx_string** %3360
  %3361 = getelementptr [11 x i8], [11 x i8]* @.str548, i32 0, i32 0
  %3362 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str548.c, i8* %3361)
  %3363 = alloca %nyx_string*
  store %nyx_string* %3362, %nyx_string** %3363
  br label %while_cond612
while_cond612:
  %3364 = load i64, i64* %3243
  %3365 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %3366 = call i64 @nyx_array_length({ i64, i8* }* %3365)
  %3367 = icmp slt i64 %3364, %3366
  br i1 %3367, label %while_body613, label %while_end614
while_body613:
  %3368 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %3369 = load i64, i64* %3243
  %3370 = call i64 @nyx_array_get({ i64, i8* }* %3368, i64 %3369)
  %3371 = inttoptr i64 %3370 to { i64, i8* }*
  %3372 = call i64 @nyx_array_get({ i64, i8* }* %3371, i64 0)
  %3373 = call i64 @nyx_array_get({ i64, i8* }* %3371, i64 1)
  %3374 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %3371, i64 2)
  %3375 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %3371, i64 3)
  %3376 = inttoptr i64 %3372 to %nyx_string*
  %3377 = inttoptr i64 %3373 to { i64, i8* }*
  %3378 = alloca %ASTNode
  %3379 = getelementptr inbounds %ASTNode, %ASTNode* %3378, i32 0, i32 0
  store %nyx_string* %3376, %nyx_string** %3379
  %3380 = getelementptr inbounds %ASTNode, %ASTNode* %3378, i32 0, i32 1
  store { i64, i8* }* %3377, { i64, i8* }** %3380
  %3381 = getelementptr inbounds %ASTNode, %ASTNode* %3378, i32 0, i32 2
  store i64 %3374, i64* %3381
  %3382 = getelementptr inbounds %ASTNode, %ASTNode* %3378, i32 0, i32 3
  store i64 %3375, i64* %3382
  %3383 = load %ASTNode, %ASTNode* %3378
  %3384 = alloca %ASTNode
  store %ASTNode %3383, %ASTNode* %3384
  %3385 = getelementptr %ASTNode, %ASTNode* %3384, i32 0, i32 0
  %3386 = load %nyx_string*, %nyx_string** %3385
  %3387 = alloca %nyx_string*
  store %nyx_string* %3386, %nyx_string** %3387
  %3388 = load %nyx_string*, %nyx_string** %3387
  %3389 = load %nyx_string*, %nyx_string** %3246
  %3390 = call i1 @nyx_string_equals(%nyx_string* %3388, %nyx_string* %3389)
  br i1 %3390, label %then615, label %else616
then615:
  %3391 = load %ASTNode, %ASTNode* %3384
  %3392 = call %nyx_string* @get_string_at(%ASTNode %3391, i64 0)
  %3393 = alloca %nyx_string*
  store %nyx_string* %3392, %nyx_string** %3393
  %3394 = load %ASTNode, %ASTNode* %3384
  %3395 = call { i64, i8* }* @get_array_at(%ASTNode %3394, i64 1)
  %3396 = alloca { i64, i8* }*
  store { i64, i8* }* %3395, { i64, i8* }** %3396
  %3397 = load { i64, i8* }*, { i64, i8* }** %3396
  %3398 = call i64 @nyx_array_length({ i64, i8* }* %3397)
  %3399 = alloca i64
  store i64 %3398, i64* %3399
  %3400 = alloca i64
  store i64 0, i64* %3400
  %3401 = alloca i1
  store i1 0, i1* %3401
  br label %while_cond618
while_cond618:
  %3402 = load i64, i64* %3400
  %3403 = load { i64, i8* }*, { i64, i8* }** %3396
  %3404 = call i64 @nyx_array_length({ i64, i8* }* %3403)
  %3405 = icmp slt i64 %3402, %3404
  br i1 %3405, label %while_body619, label %while_end620
while_body619:
  %3406 = load { i64, i8* }*, { i64, i8* }** %3396
  %3407 = load i64, i64* %3400
  %3408 = call i64 @nyx_array_get({ i64, i8* }* %3406, i64 %3407)
  %3409 = inttoptr i64 %3408 to { i64, i8* }*
  %3410 = alloca { i64, i8* }*
  store { i64, i8* }* %3409, { i64, i8* }** %3410
  %3411 = load { i64, i8* }*, { i64, i8* }** %3410
  %3412 = call i64 @nyx_array_get({ i64, i8* }* %3411, i64 1)
  %3413 = inttoptr i64 %3412 to %nyx_string*
  %3414 = alloca %nyx_string*
  store %nyx_string* %3413, %nyx_string** %3414
  %3415 = load %nyx_string*, %nyx_string** %3414
  %3416 = call i64 @nyx_string_byte_length(%nyx_string* %3415)
  %3417 = icmp sge i64 %3416, 3
  br i1 %3417, label %then621, label %else622
then621:
  %3418 = load %nyx_string*, %nyx_string** %3414
  %3419 = call %nyx_string* @nyx_string_substring(%nyx_string* %3418, i64 0, i64 3)
  %3420 = load %nyx_string*, %nyx_string** %3249
  %3421 = call i1 @nyx_string_equals(%nyx_string* %3419, %nyx_string* %3420)
  br i1 %3421, label %then624, label %else625
then624:
  %3422 = sub i64 0, 1
  store i64 %3422, i64* %3399
  br label %merge626
else625:
  br label %merge626
merge626:
  br label %merge623
else622:
  br label %merge623
merge623:
  %3423 = load { i64, i8* }*, { i64, i8* }** %3410
  %3424 = call i64 @nyx_array_length({ i64, i8* }* %3423)
  %3425 = icmp sgt i64 %3424, 2
  br i1 %3425, label %then627, label %else628
then627:
  %3426 = sub i64 0, 1
  store i64 %3426, i64* %3399
  store i1 1, i1* %3401
  br label %merge629
else628:
  br label %merge629
merge629:
  %3427 = load i64, i64* %3400
  %3428 = add i64 %3427, 1
  store i64 %3428, i64* %3400
  br label %while_cond618
while_end620:
  %3429 = load %nyx_string*, %nyx_string** %3393
  %3430 = load %nyx_string*, %nyx_string** %3252
  %3431 = load i64, i64* %3399
  %3432 = call i64 @scope_declare_fn(%nyx_string* %3429, %nyx_string* %3430, i64 %3431)
  %3433 = load i1, i1* %3401
  %3434 = xor i1 %3433, true
  br i1 %3434, label %then630, label %else631
then630:
  %3435 = load %ASTNode, %ASTNode* %3384
  %3436 = call %nyx_string* @get_string_at(%ASTNode %3435, i64 2)
  %3437 = alloca %nyx_string*
  store %nyx_string* %3436, %nyx_string** %3437
  %3438 = call { i64, i8* }* @ty_unknown()
  %3439 = alloca { i64, i8* }*
  store { i64, i8* }* %3438, { i64, i8* }** %3439
  %3440 = load %nyx_string*, %nyx_string** %3437
  %3441 = load %nyx_string*, %nyx_string** %3255
  %3442 = call i1 @nyx_string_equals(%nyx_string* %3440, %nyx_string* %3441)
  %3443 = xor i1 %3442, true
  br i1 %3443, label %then633, label %else634
then633:
  %3444 = load %nyx_string*, %nyx_string** %3437
  %3445 = load %nyx_string*, %nyx_string** %3258
  %3446 = call i1 @nyx_string_equals(%nyx_string* %3444, %nyx_string* %3445)
  %3447 = xor i1 %3446, true
  br i1 %3447, label %then636, label %else637
then636:
  %3448 = load %nyx_string*, %nyx_string** %3437
  %3449 = call { i64, i8* }* @ty_parse(%nyx_string* %3448)
  %3450 = call { i64, i8* }* @resolve_type({ i64, i8* }* %3449)
  store { i64, i8* }* %3450, { i64, i8* }** %3439
  br label %merge638
else637:
  br label %merge638
merge638:
  br label %merge635
else634:
  br label %merge635
merge635:
  %3451 = call { i64, i8* }* @nyx_array_new_ptr()
  %3452 = alloca { i64, i8* }*
  store { i64, i8* }* %3451, { i64, i8* }** %3452
  %3453 = call { i64, i8* }* @nyx_array_new_ptr()
  %3454 = alloca { i64, i8* }*
  store { i64, i8* }* %3453, { i64, i8* }** %3454
  %3455 = getelementptr %ASTNode, %ASTNode* %3384, i32 0, i32 1
  %3456 = load { i64, i8* }*, { i64, i8* }** %3455
  %3457 = alloca { i64, i8* }*
  store { i64, i8* }* %3456, { i64, i8* }** %3457
  %3458 = load { i64, i8* }*, { i64, i8* }** %3457
  %3459 = call i64 @nyx_array_length({ i64, i8* }* %3458)
  %3460 = icmp sgt i64 %3459, 4
  br i1 %3460, label %then639, label %else640
then639:
  %3461 = load { i64, i8* }*, { i64, i8* }** %3457
  %3462 = call i64 @nyx_array_get({ i64, i8* }* %3461, i64 4)
  %3463 = inttoptr i64 %3462 to { i64, i8* }*
  %3464 = alloca { i64, i8* }*
  store { i64, i8* }* %3463, { i64, i8* }** %3464
  %3465 = load { i64, i8* }*, { i64, i8* }** %3464
  %3466 = call { i64, i8* }* @extract_type_param_names({ i64, i8* }* %3465)
  store { i64, i8* }* %3466, { i64, i8* }** %3452
  %3467 = load { i64, i8* }*, { i64, i8* }** %3464
  %3468 = call { i64, i8* }* @extract_type_param_bounds({ i64, i8* }* %3467)
  store { i64, i8* }* %3468, { i64, i8* }** %3454
  br label %merge641
else640:
  br label %merge641
merge641:
  %3469 = load %nyx_string*, %nyx_string** %3393
  %3470 = load { i64, i8* }*, { i64, i8* }** %3396
  %3471 = call { i64, i8* }* @params_to_types({ i64, i8* }* %3470)
  %3472 = load { i64, i8* }*, { i64, i8* }** %3439
  %3473 = load { i64, i8* }*, { i64, i8* }** %3452
  %3474 = load { i64, i8* }*, { i64, i8* }** %3454
  %3475 = call i64 @register_fn_sig(%nyx_string* %3469, { i64, i8* }* %3471, { i64, i8* }* %3472, { i64, i8* }* %3473, { i64, i8* }* %3474)
  br label %merge632
else631:
  br label %merge632
merge632:
  br label %merge617
else616:
  br label %merge617
merge617:
  %3476 = load %nyx_string*, %nyx_string** %3387
  %3477 = load %nyx_string*, %nyx_string** %3261
  %3478 = call i1 @nyx_string_equals(%nyx_string* %3476, %nyx_string* %3477)
  br i1 %3478, label %then642, label %else643
then642:
  %3479 = load %ASTNode, %ASTNode* %3384
  %3480 = call %nyx_string* @get_string_at(%ASTNode %3479, i64 0)
  %3481 = alloca %nyx_string*
  store %nyx_string* %3480, %nyx_string** %3481
  %3482 = load %ASTNode, %ASTNode* %3384
  %3483 = call { i64, i8* }* @get_array_at(%ASTNode %3482, i64 1)
  %3484 = alloca { i64, i8* }*
  store { i64, i8* }* %3483, { i64, i8* }** %3484
  %3485 = load %nyx_string*, %nyx_string** %3481
  %3486 = load %nyx_string*, %nyx_string** %3252
  %3487 = load { i64, i8* }*, { i64, i8* }** %3484
  %3488 = call i64 @nyx_array_length({ i64, i8* }* %3487)
  %3489 = call i64 @scope_declare_fn(%nyx_string* %3485, %nyx_string* %3486, i64 %3488)
  %3490 = load %ASTNode, %ASTNode* %3384
  %3491 = call %nyx_string* @get_string_at(%ASTNode %3490, i64 2)
  %3492 = alloca %nyx_string*
  store %nyx_string* %3491, %nyx_string** %3492
  %3493 = call { i64, i8* }* @ty_unknown()
  %3494 = alloca { i64, i8* }*
  store { i64, i8* }* %3493, { i64, i8* }** %3494
  %3495 = load %nyx_string*, %nyx_string** %3492
  %3496 = load %nyx_string*, %nyx_string** %3255
  %3497 = call i1 @nyx_string_equals(%nyx_string* %3495, %nyx_string* %3496)
  %3498 = xor i1 %3497, true
  br i1 %3498, label %then645, label %else646
then645:
  %3499 = load %nyx_string*, %nyx_string** %3492
  %3500 = load %nyx_string*, %nyx_string** %3258
  %3501 = call i1 @nyx_string_equals(%nyx_string* %3499, %nyx_string* %3500)
  %3502 = xor i1 %3501, true
  br i1 %3502, label %then648, label %else649
then648:
  %3503 = load %nyx_string*, %nyx_string** %3492
  %3504 = call { i64, i8* }* @ty_parse(%nyx_string* %3503)
  %3505 = call { i64, i8* }* @resolve_type({ i64, i8* }* %3504)
  store { i64, i8* }* %3505, { i64, i8* }** %3494
  br label %merge650
else649:
  br label %merge650
merge650:
  br label %merge647
else646:
  br label %merge647
merge647:
  %3506 = alloca i1
  store i1 true, i1* %3506
  %3507 = alloca i1
  store i1 true, i1* %3507
  %3508 = load %nyx_string*, %nyx_string** %3492
  %3509 = load %nyx_string*, %nyx_string** %3264
  %3510 = call i1 @nyx_string_equals(%nyx_string* %3508, %nyx_string* %3509)
  br i1 %3510, label %sc_or_end652, label %sc_or_rhs651
sc_or_rhs651:
  %3511 = load %nyx_string*, %nyx_string** %3492
  %3512 = load %nyx_string*, %nyx_string** %3267
  %3513 = call i1 @nyx_string_equals(%nyx_string* %3511, %nyx_string* %3512)
  store i1 %3513, i1* %3507
  br label %sc_or_end652
sc_or_end652:
  %3514 = load i1, i1* %3507
  br i1 %3514, label %sc_or_end654, label %sc_or_rhs653
sc_or_rhs653:
  %3515 = load %nyx_string*, %nyx_string** %3492
  %3516 = load %nyx_string*, %nyx_string** %3270
  %3517 = call i1 @nyx_string_equals(%nyx_string* %3515, %nyx_string* %3516)
  store i1 %3517, i1* %3506
  br label %sc_or_end654
sc_or_end654:
  %3518 = load i1, i1* %3506
  br i1 %3518, label %then655, label %else656
then655:
  %3519 = load %nyx_string*, %nyx_string** %3273
  %3520 = load %nyx_string*, %nyx_string** %3276
  %3521 = load %nyx_string*, %nyx_string** %3481
  %3522 = call %nyx_string* @nyx_string_concat(%nyx_string* %3520, %nyx_string* %3521)
  %3523 = load %nyx_string*, %nyx_string** %3279
  %3524 = call %nyx_string* @nyx_string_concat(%nyx_string* %3522, %nyx_string* %3523)
  %3525 = load %nyx_string*, %nyx_string** %3282
  %3526 = load %nyx_string*, %nyx_string** %3285
  %3527 = call %nyx_string* @msg(%nyx_string* %3525, %nyx_string* %3526)
  %3528 = call %nyx_string* @nyx_string_concat(%nyx_string* %3524, %nyx_string* %3527)
  %3529 = load %nyx_string*, %nyx_string** %3255
  %3530 = call i64 @sem_diag(%nyx_string* %3519, %nyx_string* %3528, %nyx_string* %3529)
  br label %merge657
else656:
  br label %merge657
merge657:
  %3531 = call { i64, i8* }* @nyx_array_new_ptr()
  %3532 = alloca { i64, i8* }*
  store { i64, i8* }* %3531, { i64, i8* }** %3532
  %3533 = call { i64, i8* }* @nyx_array_new_ptr()
  %3534 = alloca { i64, i8* }*
  store { i64, i8* }* %3533, { i64, i8* }** %3534
  %3535 = getelementptr %ASTNode, %ASTNode* %3384, i32 0, i32 1
  %3536 = load { i64, i8* }*, { i64, i8* }** %3535
  %3537 = alloca { i64, i8* }*
  store { i64, i8* }* %3536, { i64, i8* }** %3537
  %3538 = load { i64, i8* }*, { i64, i8* }** %3537
  %3539 = call i64 @nyx_array_length({ i64, i8* }* %3538)
  %3540 = icmp sgt i64 %3539, 4
  br i1 %3540, label %then658, label %else659
then658:
  %3541 = load { i64, i8* }*, { i64, i8* }** %3537
  %3542 = call i64 @nyx_array_get({ i64, i8* }* %3541, i64 4)
  %3543 = inttoptr i64 %3542 to { i64, i8* }*
  %3544 = alloca { i64, i8* }*
  store { i64, i8* }* %3543, { i64, i8* }** %3544
  %3545 = load { i64, i8* }*, { i64, i8* }** %3544
  %3546 = call { i64, i8* }* @extract_type_param_names({ i64, i8* }* %3545)
  store { i64, i8* }* %3546, { i64, i8* }** %3532
  %3547 = load { i64, i8* }*, { i64, i8* }** %3544
  %3548 = call { i64, i8* }* @extract_type_param_bounds({ i64, i8* }* %3547)
  store { i64, i8* }* %3548, { i64, i8* }** %3534
  br label %merge660
else659:
  br label %merge660
merge660:
  %3549 = load %nyx_string*, %nyx_string** %3481
  %3550 = load { i64, i8* }*, { i64, i8* }** %3484
  %3551 = call { i64, i8* }* @params_to_types({ i64, i8* }* %3550)
  %3552 = load { i64, i8* }*, { i64, i8* }** %3494
  %3553 = load { i64, i8* }*, { i64, i8* }** %3532
  %3554 = load { i64, i8* }*, { i64, i8* }** %3534
  %3555 = call i64 @register_fn_sig(%nyx_string* %3549, { i64, i8* }* %3551, { i64, i8* }* %3552, { i64, i8* }* %3553, { i64, i8* }* %3554)
  br label %merge644
else643:
  br label %merge644
merge644:
  %3556 = load %nyx_string*, %nyx_string** %3387
  %3557 = load %nyx_string*, %nyx_string** %3288
  %3558 = call i1 @nyx_string_equals(%nyx_string* %3556, %nyx_string* %3557)
  br i1 %3558, label %then661, label %else662
then661:
  %3559 = load %ASTNode, %ASTNode* %3384
  %3560 = call %nyx_string* @get_string_at(%ASTNode %3559, i64 0)
  %3561 = alloca %nyx_string*
  store %nyx_string* %3560, %nyx_string** %3561
  %3562 = load %nyx_string*, %nyx_string** %3561
  %3563 = load %nyx_string*, %nyx_string** %3288
  %3564 = call i64 @scope_declare(%nyx_string* %3562, %nyx_string* %3563)
  %3565 = load %ASTNode, %ASTNode* %3384
  %3566 = call { i64, i8* }* @get_array_at(%ASTNode %3565, i64 1)
  %3567 = alloca { i64, i8* }*
  store { i64, i8* }* %3566, { i64, i8* }** %3567
  %3568 = call { i64, i8* }* @nyx_array_new_ptr()
  %3569 = alloca { i64, i8* }*
  store { i64, i8* }* %3568, { i64, i8* }** %3569
  %3570 = call { i64, i8* }* @nyx_array_new_ptr()
  %3571 = alloca { i64, i8* }*
  store { i64, i8* }* %3570, { i64, i8* }** %3571
  %3572 = alloca i64
  store i64 0, i64* %3572
  br label %while_cond664
while_cond664:
  %3573 = load i64, i64* %3572
  %3574 = load { i64, i8* }*, { i64, i8* }** %3567
  %3575 = call i64 @nyx_array_length({ i64, i8* }* %3574)
  %3576 = icmp slt i64 %3573, %3575
  br i1 %3576, label %while_body665, label %while_end666
while_body665:
  %3577 = load { i64, i8* }*, { i64, i8* }** %3567
  %3578 = load i64, i64* %3572
  %3579 = call i64 @nyx_array_get({ i64, i8* }* %3577, i64 %3578)
  %3580 = inttoptr i64 %3579 to { i64, i8* }*
  %3581 = alloca { i64, i8* }*
  store { i64, i8* }* %3580, { i64, i8* }** %3581
  %3582 = load { i64, i8* }*, { i64, i8* }** %3581
  %3583 = call i64 @nyx_array_get({ i64, i8* }* %3582, i64 0)
  %3584 = inttoptr i64 %3583 to %nyx_string*
  %3585 = alloca %nyx_string*
  store %nyx_string* %3584, %nyx_string** %3585
  %3586 = load { i64, i8* }*, { i64, i8* }** %3569
  %3587 = load %nyx_string*, %nyx_string** %3585
  %3588 = ptrtoint %nyx_string* %3587 to i64
  call void @nyx_array_push({ i64, i8* }* %3586, i64 %3588)
  %3589 = load { i64, i8* }*, { i64, i8* }** %3581
  %3590 = call i64 @nyx_array_get({ i64, i8* }* %3589, i64 1)
  %3591 = inttoptr i64 %3590 to %nyx_string*
  %3592 = alloca %nyx_string*
  store %nyx_string* %3591, %nyx_string** %3592
  %3593 = load %nyx_string*, %nyx_string** %3592
  %3594 = call { i64, i8* }* @ty_parse(%nyx_string* %3593)
  %3595 = call { i64, i8* }* @resolve_type({ i64, i8* }* %3594)
  %3596 = alloca { i64, i8* }*
  store { i64, i8* }* %3595, { i64, i8* }** %3596
  %3597 = load { i64, i8* }*, { i64, i8* }** %3571
  %3598 = load { i64, i8* }*, { i64, i8* }** %3596
  %3599 = ptrtoint { i64, i8* }* %3598 to i64
  call void @nyx_array_push({ i64, i8* }* %3597, i64 %3599)
  %3600 = load i64, i64* %3572
  %3601 = add i64 %3600, 1
  store i64 %3601, i64* %3572
  br label %while_cond664
while_end666:
  %3602 = load %nyx_string*, %nyx_string** %3561
  %3603 = load { i64, i8* }*, { i64, i8* }** %3569
  %3604 = load { i64, i8* }*, { i64, i8* }** %3571
  %3605 = call i64 @register_struct(%nyx_string* %3602, { i64, i8* }* %3603, { i64, i8* }* %3604)
  %3606 = getelementptr %ASTNode, %ASTNode* %3384, i32 0, i32 1
  %3607 = load { i64, i8* }*, { i64, i8* }** %3606
  %3608 = alloca { i64, i8* }*
  store { i64, i8* }* %3607, { i64, i8* }** %3608
  %3609 = load { i64, i8* }*, { i64, i8* }** %3608
  %3610 = call i64 @nyx_array_length({ i64, i8* }* %3609)
  %3611 = icmp sgt i64 %3610, 3
  br i1 %3611, label %then667, label %else668
then667:
  %3612 = load { i64, i8* }*, { i64, i8* }** %3608
  %3613 = call i64 @nyx_array_get({ i64, i8* }* %3612, i64 3)
  %3614 = inttoptr i64 %3613 to %nyx_string*
  %3615 = alloca %nyx_string*
  store %nyx_string* %3614, %nyx_string** %3615
  %3616 = load %nyx_string*, %nyx_string** %3615
  %3617 = call i64 @nyx_string_byte_length(%nyx_string* %3616)
  %3618 = icmp sgt i64 %3617, 7
  br i1 %3618, label %then670, label %else671
then670:
  %3619 = load %nyx_string*, %nyx_string** %3615
  %3620 = call %nyx_string* @nyx_string_substring(%nyx_string* %3619, i64 0, i64 7)
  %3621 = load %nyx_string*, %nyx_string** %3291
  %3622 = call i1 @nyx_string_equals(%nyx_string* %3620, %nyx_string* %3621)
  br i1 %3622, label %then673, label %else674
then673:
  %3623 = load %nyx_string*, %nyx_string** %3615
  %3624 = load %nyx_string*, %nyx_string** %3615
  %3625 = call i64 @nyx_string_byte_length(%nyx_string* %3624)
  %3626 = sub i64 %3625, 1
  %3627 = call %nyx_string* @nyx_string_substring(%nyx_string* %3623, i64 7, i64 %3626)
  %3628 = alloca %nyx_string*
  store %nyx_string* %3627, %nyx_string** %3628
  %3629 = load %nyx_string*, %nyx_string** %3628
  %3630 = load %nyx_string*, %nyx_string** %3294
  %3631 = call i64 @nyx_string_index_of(%nyx_string* %3629, %nyx_string* %3630)
  %3632 = icmp sge i64 %3631, 0
  br i1 %3632, label %then676, label %else677
then676:
  %3633 = load %nyx_string*, %nyx_string** %3561
  %3634 = load %nyx_string*, %nyx_string** %3297
  %3635 = call %nyx_string* @nyx_string_concat(%nyx_string* %3633, %nyx_string* %3634)
  %3636 = load %nyx_string*, %nyx_string** %3252
  %3637 = call i64 @scope_declare_fn(%nyx_string* %3635, %nyx_string* %3636, i64 0)
  br label %merge678
else677:
  br label %merge678
merge678:
  %3638 = load %nyx_string*, %nyx_string** %3628
  %3639 = load %nyx_string*, %nyx_string** %3300
  %3640 = call i64 @nyx_string_index_of(%nyx_string* %3638, %nyx_string* %3639)
  %3641 = icmp sge i64 %3640, 0
  br i1 %3641, label %then679, label %else680
then679:
  %3642 = load %nyx_string*, %nyx_string** %3561
  %3643 = load %nyx_string*, %nyx_string** %3303
  %3644 = call %nyx_string* @nyx_string_concat(%nyx_string* %3642, %nyx_string* %3643)
  %3645 = load %nyx_string*, %nyx_string** %3252
  %3646 = call i64 @scope_declare_fn(%nyx_string* %3644, %nyx_string* %3645, i64 1)
  br label %merge681
else680:
  br label %merge681
merge681:
  %3647 = load %nyx_string*, %nyx_string** %3628
  %3648 = load %nyx_string*, %nyx_string** %3306
  %3649 = call i64 @nyx_string_index_of(%nyx_string* %3647, %nyx_string* %3648)
  %3650 = icmp sge i64 %3649, 0
  br i1 %3650, label %then682, label %else683
then682:
  %3651 = load %nyx_string*, %nyx_string** %3561
  %3652 = load %nyx_string*, %nyx_string** %3309
  %3653 = call %nyx_string* @nyx_string_concat(%nyx_string* %3651, %nyx_string* %3652)
  %3654 = load %nyx_string*, %nyx_string** %3252
  %3655 = call i64 @scope_declare_fn(%nyx_string* %3653, %nyx_string* %3654, i64 2)
  br label %merge684
else683:
  br label %merge684
merge684:
  %3656 = load %nyx_string*, %nyx_string** %3628
  %3657 = load %nyx_string*, %nyx_string** %3312
  %3658 = call i64 @nyx_string_index_of(%nyx_string* %3656, %nyx_string* %3657)
  %3659 = icmp sge i64 %3658, 0
  br i1 %3659, label %then685, label %else686
then685:
  %3660 = load %nyx_string*, %nyx_string** %3561
  %3661 = load %nyx_string*, %nyx_string** %3315
  %3662 = call %nyx_string* @nyx_string_concat(%nyx_string* %3660, %nyx_string* %3661)
  %3663 = load %nyx_string*, %nyx_string** %3252
  %3664 = call i64 @scope_declare_fn(%nyx_string* %3662, %nyx_string* %3663, i64 1)
  br label %merge687
else686:
  br label %merge687
merge687:
  %3665 = load %nyx_string*, %nyx_string** %3628
  %3666 = load %nyx_string*, %nyx_string** %3318
  %3667 = call i64 @nyx_string_index_of(%nyx_string* %3665, %nyx_string* %3666)
  %3668 = icmp sge i64 %3667, 0
  br i1 %3668, label %then688, label %else689
then688:
  %3669 = load %nyx_string*, %nyx_string** %3561
  %3670 = load %nyx_string*, %nyx_string** %3321
  %3671 = call %nyx_string* @nyx_string_concat(%nyx_string* %3669, %nyx_string* %3670)
  %3672 = load %nyx_string*, %nyx_string** %3252
  %3673 = call i64 @scope_declare_fn(%nyx_string* %3671, %nyx_string* %3672, i64 1)
  br label %merge690
else689:
  br label %merge690
merge690:
  br label %merge675
else674:
  br label %merge675
merge675:
  br label %merge672
else671:
  br label %merge672
merge672:
  br label %merge669
else668:
  br label %merge669
merge669:
  br label %merge663
else662:
  br label %merge663
merge663:
  %3674 = load %nyx_string*, %nyx_string** %3387
  %3675 = load %nyx_string*, %nyx_string** %3324
  %3676 = call i1 @nyx_string_equals(%nyx_string* %3674, %nyx_string* %3675)
  br i1 %3676, label %then691, label %else692
then691:
  %3677 = load %ASTNode, %ASTNode* %3384
  %3678 = call %nyx_string* @get_string_at(%ASTNode %3677, i64 0)
  %3679 = alloca %nyx_string*
  store %nyx_string* %3678, %nyx_string** %3679
  %3680 = load %nyx_string*, %nyx_string** %3679
  %3681 = load %nyx_string*, %nyx_string** %3327
  %3682 = call i64 @scope_declare(%nyx_string* %3680, %nyx_string* %3681)
  %3683 = load %ASTNode, %ASTNode* %3384
  %3684 = call { i64, i8* }* @get_array_at(%ASTNode %3683, i64 1)
  %3685 = alloca { i64, i8* }*
  store { i64, i8* }* %3684, { i64, i8* }** %3685
  %3686 = call { i64, i8* }* @nyx_array_new_ptr()
  %3687 = alloca { i64, i8* }*
  store { i64, i8* }* %3686, { i64, i8* }** %3687
  %3688 = call { i64, i8* }* @nyx_array_new_ptr()
  %3689 = alloca { i64, i8* }*
  store { i64, i8* }* %3688, { i64, i8* }** %3689
  %3690 = alloca i64
  store i64 0, i64* %3690
  br label %while_cond694
while_cond694:
  %3691 = load i64, i64* %3690
  %3692 = load { i64, i8* }*, { i64, i8* }** %3685
  %3693 = call i64 @nyx_array_length({ i64, i8* }* %3692)
  %3694 = icmp slt i64 %3691, %3693
  br i1 %3694, label %while_body695, label %while_end696
while_body695:
  %3695 = load { i64, i8* }*, { i64, i8* }** %3685
  %3696 = load i64, i64* %3690
  %3697 = call i64 @nyx_array_get({ i64, i8* }* %3695, i64 %3696)
  %3698 = inttoptr i64 %3697 to { i64, i8* }*
  %3699 = alloca { i64, i8* }*
  store { i64, i8* }* %3698, { i64, i8* }** %3699
  %3700 = load { i64, i8* }*, { i64, i8* }** %3699
  %3701 = call i64 @nyx_array_get({ i64, i8* }* %3700, i64 0)
  %3702 = inttoptr i64 %3701 to %nyx_string*
  %3703 = alloca %nyx_string*
  store %nyx_string* %3702, %nyx_string** %3703
  %3704 = load { i64, i8* }*, { i64, i8* }** %3687
  %3705 = load %nyx_string*, %nyx_string** %3703
  %3706 = ptrtoint %nyx_string* %3705 to i64
  call void @nyx_array_push({ i64, i8* }* %3704, i64 %3706)
  %3707 = call { i64, i8* }* @nyx_array_new_ptr()
  %3708 = alloca { i64, i8* }*
  store { i64, i8* }* %3707, { i64, i8* }** %3708
  %3709 = load { i64, i8* }*, { i64, i8* }** %3699
  %3710 = call i64 @nyx_array_length({ i64, i8* }* %3709)
  %3711 = icmp sgt i64 %3710, 1
  br i1 %3711, label %then697, label %else698
then697:
  %3712 = load { i64, i8* }*, { i64, i8* }** %3699
  %3713 = call i64 @nyx_array_get({ i64, i8* }* %3712, i64 1)
  %3714 = inttoptr i64 %3713 to { i64, i8* }*
  %3715 = alloca { i64, i8* }*
  store { i64, i8* }* %3714, { i64, i8* }** %3715
  %3716 = alloca i64
  store i64 0, i64* %3716
  br label %while_cond700
while_cond700:
  %3717 = load i64, i64* %3716
  %3718 = load { i64, i8* }*, { i64, i8* }** %3715
  %3719 = call i64 @nyx_array_length({ i64, i8* }* %3718)
  %3720 = icmp slt i64 %3717, %3719
  br i1 %3720, label %while_body701, label %while_end702
while_body701:
  %3721 = load { i64, i8* }*, { i64, i8* }** %3715
  %3722 = load i64, i64* %3716
  %3723 = call i64 @nyx_array_get({ i64, i8* }* %3721, i64 %3722)
  %3724 = inttoptr i64 %3723 to %nyx_string*
  %3725 = alloca %nyx_string*
  store %nyx_string* %3724, %nyx_string** %3725
  %3726 = load { i64, i8* }*, { i64, i8* }** %3708
  %3727 = load %nyx_string*, %nyx_string** %3725
  %3728 = call { i64, i8* }* @ty_parse(%nyx_string* %3727)
  %3729 = call { i64, i8* }* @resolve_type({ i64, i8* }* %3728)
  %3730 = ptrtoint { i64, i8* }* %3729 to i64
  call void @nyx_array_push({ i64, i8* }* %3726, i64 %3730)
  %3731 = load i64, i64* %3716
  %3732 = add i64 %3731, 1
  store i64 %3732, i64* %3716
  br label %while_cond700
while_end702:
  br label %merge699
else698:
  br label %merge699
merge699:
  %3733 = load { i64, i8* }*, { i64, i8* }** %3689
  %3734 = load { i64, i8* }*, { i64, i8* }** %3708
  %3735 = ptrtoint { i64, i8* }* %3734 to i64
  call void @nyx_array_push({ i64, i8* }* %3733, i64 %3735)
  %3736 = load i64, i64* %3690
  %3737 = add i64 %3736, 1
  store i64 %3737, i64* %3690
  br label %while_cond694
while_end696:
  %3738 = load %nyx_string*, %nyx_string** %3679
  %3739 = load { i64, i8* }*, { i64, i8* }** %3687
  %3740 = load { i64, i8* }*, { i64, i8* }** %3689
  %3741 = call i64 @register_enum(%nyx_string* %3738, { i64, i8* }* %3739, { i64, i8* }* %3740)
  br label %merge693
else692:
  br label %merge693
merge693:
  %3742 = load %nyx_string*, %nyx_string** %3387
  %3743 = load %nyx_string*, %nyx_string** %3330
  %3744 = call i1 @nyx_string_equals(%nyx_string* %3742, %nyx_string* %3743)
  br i1 %3744, label %then703, label %else704
then703:
  %3745 = load %ASTNode, %ASTNode* %3384
  %3746 = call %ASTNode @get_node_at(%ASTNode %3745, i64 0)
  %3747 = alloca %ASTNode
  store %ASTNode %3746, %ASTNode* %3747
  %3748 = getelementptr %ASTNode, %ASTNode* %3747, i32 0, i32 0
  %3749 = load %nyx_string*, %nyx_string** %3748
  %3750 = alloca %nyx_string*
  store %nyx_string* %3749, %nyx_string** %3750
  %3751 = load %nyx_string*, %nyx_string** %3750
  %3752 = load %nyx_string*, %nyx_string** %3246
  %3753 = call i1 @nyx_string_equals(%nyx_string* %3751, %nyx_string* %3752)
  br i1 %3753, label %then706, label %else707
then706:
  %3754 = load %ASTNode, %ASTNode* %3747
  %3755 = call %nyx_string* @get_string_at(%ASTNode %3754, i64 0)
  %3756 = alloca %nyx_string*
  store %nyx_string* %3755, %nyx_string** %3756
  %3757 = load %ASTNode, %ASTNode* %3747
  %3758 = call { i64, i8* }* @get_array_at(%ASTNode %3757, i64 1)
  %3759 = alloca { i64, i8* }*
  store { i64, i8* }* %3758, { i64, i8* }** %3759
  %3760 = load { i64, i8* }*, { i64, i8* }** %3759
  %3761 = call i64 @nyx_array_length({ i64, i8* }* %3760)
  %3762 = alloca i64
  store i64 %3761, i64* %3762
  %3763 = alloca i64
  store i64 0, i64* %3763
  %3764 = alloca i1
  store i1 0, i1* %3764
  br label %while_cond709
while_cond709:
  %3765 = load i64, i64* %3763
  %3766 = load { i64, i8* }*, { i64, i8* }** %3759
  %3767 = call i64 @nyx_array_length({ i64, i8* }* %3766)
  %3768 = icmp slt i64 %3765, %3767
  br i1 %3768, label %while_body710, label %while_end711
while_body710:
  %3769 = load { i64, i8* }*, { i64, i8* }** %3759
  %3770 = load i64, i64* %3763
  %3771 = call i64 @nyx_array_get({ i64, i8* }* %3769, i64 %3770)
  %3772 = inttoptr i64 %3771 to { i64, i8* }*
  %3773 = alloca { i64, i8* }*
  store { i64, i8* }* %3772, { i64, i8* }** %3773
  %3774 = load { i64, i8* }*, { i64, i8* }** %3773
  %3775 = call i64 @nyx_array_get({ i64, i8* }* %3774, i64 1)
  %3776 = inttoptr i64 %3775 to %nyx_string*
  %3777 = alloca %nyx_string*
  store %nyx_string* %3776, %nyx_string** %3777
  %3778 = load %nyx_string*, %nyx_string** %3777
  %3779 = call i64 @nyx_string_byte_length(%nyx_string* %3778)
  %3780 = icmp sge i64 %3779, 3
  br i1 %3780, label %then712, label %else713
then712:
  %3781 = load %nyx_string*, %nyx_string** %3777
  %3782 = call %nyx_string* @nyx_string_substring(%nyx_string* %3781, i64 0, i64 3)
  %3783 = load %nyx_string*, %nyx_string** %3249
  %3784 = call i1 @nyx_string_equals(%nyx_string* %3782, %nyx_string* %3783)
  br i1 %3784, label %then715, label %else716
then715:
  %3785 = sub i64 0, 1
  store i64 %3785, i64* %3762
  br label %merge717
else716:
  br label %merge717
merge717:
  br label %merge714
else713:
  br label %merge714
merge714:
  %3786 = load { i64, i8* }*, { i64, i8* }** %3773
  %3787 = call i64 @nyx_array_length({ i64, i8* }* %3786)
  %3788 = icmp sgt i64 %3787, 2
  br i1 %3788, label %then718, label %else719
then718:
  %3789 = sub i64 0, 1
  store i64 %3789, i64* %3762
  store i1 1, i1* %3764
  br label %merge720
else719:
  br label %merge720
merge720:
  %3790 = load i64, i64* %3763
  %3791 = add i64 %3790, 1
  store i64 %3791, i64* %3763
  br label %while_cond709
while_end711:
  %3792 = load %nyx_string*, %nyx_string** %3756
  %3793 = load %nyx_string*, %nyx_string** %3252
  %3794 = load i64, i64* %3762
  %3795 = call i64 @scope_declare_fn(%nyx_string* %3792, %nyx_string* %3793, i64 %3794)
  %3796 = load i1, i1* %3764
  %3797 = xor i1 %3796, true
  br i1 %3797, label %then721, label %else722
then721:
  %3798 = load %ASTNode, %ASTNode* %3747
  %3799 = call %nyx_string* @get_string_at(%ASTNode %3798, i64 2)
  %3800 = alloca %nyx_string*
  store %nyx_string* %3799, %nyx_string** %3800
  %3801 = call { i64, i8* }* @ty_unknown()
  %3802 = alloca { i64, i8* }*
  store { i64, i8* }* %3801, { i64, i8* }** %3802
  %3803 = load %nyx_string*, %nyx_string** %3800
  %3804 = load %nyx_string*, %nyx_string** %3255
  %3805 = call i1 @nyx_string_equals(%nyx_string* %3803, %nyx_string* %3804)
  %3806 = xor i1 %3805, true
  br i1 %3806, label %then724, label %else725
then724:
  %3807 = load %nyx_string*, %nyx_string** %3800
  %3808 = load %nyx_string*, %nyx_string** %3258
  %3809 = call i1 @nyx_string_equals(%nyx_string* %3807, %nyx_string* %3808)
  %3810 = xor i1 %3809, true
  br i1 %3810, label %then727, label %else728
then727:
  %3811 = load %nyx_string*, %nyx_string** %3800
  %3812 = call { i64, i8* }* @ty_parse(%nyx_string* %3811)
  %3813 = call { i64, i8* }* @resolve_type({ i64, i8* }* %3812)
  store { i64, i8* }* %3813, { i64, i8* }** %3802
  br label %merge729
else728:
  br label %merge729
merge729:
  br label %merge726
else725:
  br label %merge726
merge726:
  %3814 = call { i64, i8* }* @nyx_array_new_ptr()
  %3815 = alloca { i64, i8* }*
  store { i64, i8* }* %3814, { i64, i8* }** %3815
  %3816 = call { i64, i8* }* @nyx_array_new_ptr()
  %3817 = alloca { i64, i8* }*
  store { i64, i8* }* %3816, { i64, i8* }** %3817
  %3818 = getelementptr %ASTNode, %ASTNode* %3747, i32 0, i32 1
  %3819 = load { i64, i8* }*, { i64, i8* }** %3818
  %3820 = alloca { i64, i8* }*
  store { i64, i8* }* %3819, { i64, i8* }** %3820
  %3821 = load { i64, i8* }*, { i64, i8* }** %3820
  %3822 = call i64 @nyx_array_length({ i64, i8* }* %3821)
  %3823 = icmp sgt i64 %3822, 4
  br i1 %3823, label %then730, label %else731
then730:
  %3824 = load { i64, i8* }*, { i64, i8* }** %3820
  %3825 = call i64 @nyx_array_get({ i64, i8* }* %3824, i64 4)
  %3826 = inttoptr i64 %3825 to { i64, i8* }*
  %3827 = alloca { i64, i8* }*
  store { i64, i8* }* %3826, { i64, i8* }** %3827
  %3828 = load { i64, i8* }*, { i64, i8* }** %3827
  %3829 = call { i64, i8* }* @extract_type_param_names({ i64, i8* }* %3828)
  store { i64, i8* }* %3829, { i64, i8* }** %3815
  %3830 = load { i64, i8* }*, { i64, i8* }** %3827
  %3831 = call { i64, i8* }* @extract_type_param_bounds({ i64, i8* }* %3830)
  store { i64, i8* }* %3831, { i64, i8* }** %3817
  br label %merge732
else731:
  br label %merge732
merge732:
  %3832 = load %nyx_string*, %nyx_string** %3756
  %3833 = load { i64, i8* }*, { i64, i8* }** %3759
  %3834 = call { i64, i8* }* @params_to_types({ i64, i8* }* %3833)
  %3835 = load { i64, i8* }*, { i64, i8* }** %3802
  %3836 = load { i64, i8* }*, { i64, i8* }** %3815
  %3837 = load { i64, i8* }*, { i64, i8* }** %3817
  %3838 = call i64 @register_fn_sig(%nyx_string* %3832, { i64, i8* }* %3834, { i64, i8* }* %3835, { i64, i8* }* %3836, { i64, i8* }* %3837)
  br label %merge723
else722:
  br label %merge723
merge723:
  br label %merge708
else707:
  br label %merge708
merge708:
  %3839 = load %nyx_string*, %nyx_string** %3750
  %3840 = load %nyx_string*, %nyx_string** %3288
  %3841 = call i1 @nyx_string_equals(%nyx_string* %3839, %nyx_string* %3840)
  br i1 %3841, label %then733, label %else734
then733:
  %3842 = load %ASTNode, %ASTNode* %3747
  %3843 = call %nyx_string* @get_string_at(%ASTNode %3842, i64 0)
  %3844 = alloca %nyx_string*
  store %nyx_string* %3843, %nyx_string** %3844
  %3845 = load %nyx_string*, %nyx_string** %3844
  %3846 = load %nyx_string*, %nyx_string** %3288
  %3847 = call i64 @scope_declare(%nyx_string* %3845, %nyx_string* %3846)
  %3848 = getelementptr %ASTNode, %ASTNode* %3747, i32 0, i32 1
  %3849 = load { i64, i8* }*, { i64, i8* }** %3848
  %3850 = alloca { i64, i8* }*
  store { i64, i8* }* %3849, { i64, i8* }** %3850
  %3851 = load { i64, i8* }*, { i64, i8* }** %3850
  %3852 = call i64 @nyx_array_length({ i64, i8* }* %3851)
  %3853 = icmp sgt i64 %3852, 3
  br i1 %3853, label %then736, label %else737
then736:
  %3854 = load { i64, i8* }*, { i64, i8* }** %3850
  %3855 = call i64 @nyx_array_get({ i64, i8* }* %3854, i64 3)
  %3856 = inttoptr i64 %3855 to %nyx_string*
  %3857 = alloca %nyx_string*
  store %nyx_string* %3856, %nyx_string** %3857
  %3858 = load %nyx_string*, %nyx_string** %3857
  %3859 = call i64 @nyx_string_byte_length(%nyx_string* %3858)
  %3860 = icmp sgt i64 %3859, 7
  br i1 %3860, label %then739, label %else740
then739:
  %3861 = load %nyx_string*, %nyx_string** %3857
  %3862 = call %nyx_string* @nyx_string_substring(%nyx_string* %3861, i64 0, i64 7)
  %3863 = load %nyx_string*, %nyx_string** %3291
  %3864 = call i1 @nyx_string_equals(%nyx_string* %3862, %nyx_string* %3863)
  br i1 %3864, label %then742, label %else743
then742:
  %3865 = load %nyx_string*, %nyx_string** %3857
  %3866 = load %nyx_string*, %nyx_string** %3857
  %3867 = call i64 @nyx_string_byte_length(%nyx_string* %3866)
  %3868 = sub i64 %3867, 1
  %3869 = call %nyx_string* @nyx_string_substring(%nyx_string* %3865, i64 7, i64 %3868)
  %3870 = alloca %nyx_string*
  store %nyx_string* %3869, %nyx_string** %3870
  %3871 = load %nyx_string*, %nyx_string** %3870
  %3872 = load %nyx_string*, %nyx_string** %3294
  %3873 = call i64 @nyx_string_index_of(%nyx_string* %3871, %nyx_string* %3872)
  %3874 = icmp sge i64 %3873, 0
  br i1 %3874, label %then745, label %else746
then745:
  %3875 = load %nyx_string*, %nyx_string** %3844
  %3876 = load %nyx_string*, %nyx_string** %3297
  %3877 = call %nyx_string* @nyx_string_concat(%nyx_string* %3875, %nyx_string* %3876)
  %3878 = load %nyx_string*, %nyx_string** %3252
  %3879 = call i64 @scope_declare_fn(%nyx_string* %3877, %nyx_string* %3878, i64 0)
  br label %merge747
else746:
  br label %merge747
merge747:
  %3880 = load %nyx_string*, %nyx_string** %3870
  %3881 = load %nyx_string*, %nyx_string** %3300
  %3882 = call i64 @nyx_string_index_of(%nyx_string* %3880, %nyx_string* %3881)
  %3883 = icmp sge i64 %3882, 0
  br i1 %3883, label %then748, label %else749
then748:
  %3884 = load %nyx_string*, %nyx_string** %3844
  %3885 = load %nyx_string*, %nyx_string** %3303
  %3886 = call %nyx_string* @nyx_string_concat(%nyx_string* %3884, %nyx_string* %3885)
  %3887 = load %nyx_string*, %nyx_string** %3252
  %3888 = call i64 @scope_declare_fn(%nyx_string* %3886, %nyx_string* %3887, i64 1)
  br label %merge750
else749:
  br label %merge750
merge750:
  %3889 = load %nyx_string*, %nyx_string** %3870
  %3890 = load %nyx_string*, %nyx_string** %3306
  %3891 = call i64 @nyx_string_index_of(%nyx_string* %3889, %nyx_string* %3890)
  %3892 = icmp sge i64 %3891, 0
  br i1 %3892, label %then751, label %else752
then751:
  %3893 = load %nyx_string*, %nyx_string** %3844
  %3894 = load %nyx_string*, %nyx_string** %3309
  %3895 = call %nyx_string* @nyx_string_concat(%nyx_string* %3893, %nyx_string* %3894)
  %3896 = load %nyx_string*, %nyx_string** %3252
  %3897 = call i64 @scope_declare_fn(%nyx_string* %3895, %nyx_string* %3896, i64 2)
  br label %merge753
else752:
  br label %merge753
merge753:
  %3898 = load %nyx_string*, %nyx_string** %3870
  %3899 = load %nyx_string*, %nyx_string** %3312
  %3900 = call i64 @nyx_string_index_of(%nyx_string* %3898, %nyx_string* %3899)
  %3901 = icmp sge i64 %3900, 0
  br i1 %3901, label %then754, label %else755
then754:
  %3902 = load %nyx_string*, %nyx_string** %3844
  %3903 = load %nyx_string*, %nyx_string** %3315
  %3904 = call %nyx_string* @nyx_string_concat(%nyx_string* %3902, %nyx_string* %3903)
  %3905 = load %nyx_string*, %nyx_string** %3252
  %3906 = call i64 @scope_declare_fn(%nyx_string* %3904, %nyx_string* %3905, i64 1)
  br label %merge756
else755:
  br label %merge756
merge756:
  %3907 = load %nyx_string*, %nyx_string** %3870
  %3908 = load %nyx_string*, %nyx_string** %3318
  %3909 = call i64 @nyx_string_index_of(%nyx_string* %3907, %nyx_string* %3908)
  %3910 = icmp sge i64 %3909, 0
  br i1 %3910, label %then757, label %else758
then757:
  %3911 = load %nyx_string*, %nyx_string** %3844
  %3912 = load %nyx_string*, %nyx_string** %3321
  %3913 = call %nyx_string* @nyx_string_concat(%nyx_string* %3911, %nyx_string* %3912)
  %3914 = load %nyx_string*, %nyx_string** %3252
  %3915 = call i64 @scope_declare_fn(%nyx_string* %3913, %nyx_string* %3914, i64 1)
  br label %merge759
else758:
  br label %merge759
merge759:
  br label %merge744
else743:
  br label %merge744
merge744:
  br label %merge741
else740:
  br label %merge741
merge741:
  br label %merge738
else737:
  br label %merge738
merge738:
  br label %merge735
else734:
  br label %merge735
merge735:
  %3916 = load %nyx_string*, %nyx_string** %3750
  %3917 = load %nyx_string*, %nyx_string** %3324
  %3918 = call i1 @nyx_string_equals(%nyx_string* %3916, %nyx_string* %3917)
  br i1 %3918, label %then760, label %else761
then760:
  %3919 = load %ASTNode, %ASTNode* %3747
  %3920 = call %nyx_string* @get_string_at(%ASTNode %3919, i64 0)
  %3921 = alloca %nyx_string*
  store %nyx_string* %3920, %nyx_string** %3921
  %3922 = load %nyx_string*, %nyx_string** %3921
  %3923 = load %nyx_string*, %nyx_string** %3327
  %3924 = call i64 @scope_declare(%nyx_string* %3922, %nyx_string* %3923)
  %3925 = load %ASTNode, %ASTNode* %3747
  %3926 = call { i64, i8* }* @get_array_at(%ASTNode %3925, i64 1)
  %3927 = alloca { i64, i8* }*
  store { i64, i8* }* %3926, { i64, i8* }** %3927
  %3928 = call { i64, i8* }* @nyx_array_new_ptr()
  %3929 = alloca { i64, i8* }*
  store { i64, i8* }* %3928, { i64, i8* }** %3929
  %3930 = call { i64, i8* }* @nyx_array_new_ptr()
  %3931 = alloca { i64, i8* }*
  store { i64, i8* }* %3930, { i64, i8* }** %3931
  %3932 = alloca i64
  store i64 0, i64* %3932
  br label %while_cond763
while_cond763:
  %3933 = load i64, i64* %3932
  %3934 = load { i64, i8* }*, { i64, i8* }** %3927
  %3935 = call i64 @nyx_array_length({ i64, i8* }* %3934)
  %3936 = icmp slt i64 %3933, %3935
  br i1 %3936, label %while_body764, label %while_end765
while_body764:
  %3937 = load { i64, i8* }*, { i64, i8* }** %3927
  %3938 = load i64, i64* %3932
  %3939 = call i64 @nyx_array_get({ i64, i8* }* %3937, i64 %3938)
  %3940 = inttoptr i64 %3939 to { i64, i8* }*
  %3941 = alloca { i64, i8* }*
  store { i64, i8* }* %3940, { i64, i8* }** %3941
  %3942 = load { i64, i8* }*, { i64, i8* }** %3941
  %3943 = call i64 @nyx_array_get({ i64, i8* }* %3942, i64 0)
  %3944 = inttoptr i64 %3943 to %nyx_string*
  %3945 = alloca %nyx_string*
  store %nyx_string* %3944, %nyx_string** %3945
  %3946 = load { i64, i8* }*, { i64, i8* }** %3929
  %3947 = load %nyx_string*, %nyx_string** %3945
  %3948 = ptrtoint %nyx_string* %3947 to i64
  call void @nyx_array_push({ i64, i8* }* %3946, i64 %3948)
  %3949 = call { i64, i8* }* @nyx_array_new_ptr()
  %3950 = alloca { i64, i8* }*
  store { i64, i8* }* %3949, { i64, i8* }** %3950
  %3951 = load { i64, i8* }*, { i64, i8* }** %3941
  %3952 = call i64 @nyx_array_length({ i64, i8* }* %3951)
  %3953 = icmp sgt i64 %3952, 1
  br i1 %3953, label %then766, label %else767
then766:
  %3954 = load { i64, i8* }*, { i64, i8* }** %3941
  %3955 = call i64 @nyx_array_get({ i64, i8* }* %3954, i64 1)
  %3956 = inttoptr i64 %3955 to { i64, i8* }*
  %3957 = alloca { i64, i8* }*
  store { i64, i8* }* %3956, { i64, i8* }** %3957
  %3958 = alloca i64
  store i64 0, i64* %3958
  br label %while_cond769
while_cond769:
  %3959 = load i64, i64* %3958
  %3960 = load { i64, i8* }*, { i64, i8* }** %3957
  %3961 = call i64 @nyx_array_length({ i64, i8* }* %3960)
  %3962 = icmp slt i64 %3959, %3961
  br i1 %3962, label %while_body770, label %while_end771
while_body770:
  %3963 = load { i64, i8* }*, { i64, i8* }** %3957
  %3964 = load i64, i64* %3958
  %3965 = call i64 @nyx_array_get({ i64, i8* }* %3963, i64 %3964)
  %3966 = inttoptr i64 %3965 to %nyx_string*
  %3967 = alloca %nyx_string*
  store %nyx_string* %3966, %nyx_string** %3967
  %3968 = load { i64, i8* }*, { i64, i8* }** %3950
  %3969 = load %nyx_string*, %nyx_string** %3967
  %3970 = call { i64, i8* }* @ty_parse(%nyx_string* %3969)
  %3971 = call { i64, i8* }* @resolve_type({ i64, i8* }* %3970)
  %3972 = ptrtoint { i64, i8* }* %3971 to i64
  call void @nyx_array_push({ i64, i8* }* %3968, i64 %3972)
  %3973 = load i64, i64* %3958
  %3974 = add i64 %3973, 1
  store i64 %3974, i64* %3958
  br label %while_cond769
while_end771:
  br label %merge768
else767:
  br label %merge768
merge768:
  %3975 = load { i64, i8* }*, { i64, i8* }** %3931
  %3976 = load { i64, i8* }*, { i64, i8* }** %3950
  %3977 = ptrtoint { i64, i8* }* %3976 to i64
  call void @nyx_array_push({ i64, i8* }* %3975, i64 %3977)
  %3978 = load i64, i64* %3932
  %3979 = add i64 %3978, 1
  store i64 %3979, i64* %3932
  br label %while_cond763
while_end765:
  %3980 = load %nyx_string*, %nyx_string** %3921
  %3981 = load { i64, i8* }*, { i64, i8* }** %3929
  %3982 = load { i64, i8* }*, { i64, i8* }** %3931
  %3983 = call i64 @register_enum(%nyx_string* %3980, { i64, i8* }* %3981, { i64, i8* }* %3982)
  br label %merge762
else761:
  br label %merge762
merge762:
  br label %merge705
else704:
  br label %merge705
merge705:
  %3984 = load %nyx_string*, %nyx_string** %3387
  %3985 = load %nyx_string*, %nyx_string** %3333
  %3986 = call i1 @nyx_string_equals(%nyx_string* %3984, %nyx_string* %3985)
  br i1 %3986, label %then772, label %else773
then772:
  store i1 1, i1* @g_has_imports
  %3987 = load %ASTNode, %ASTNode* %3384
  %3988 = call { i64, i8* }* @get_array_at(%ASTNode %3987, i64 0)
  %3989 = alloca { i64, i8* }*
  store { i64, i8* }* %3988, { i64, i8* }** %3989
  %3990 = alloca i64
  store i64 0, i64* %3990
  br label %while_cond775
while_cond775:
  %3991 = load i64, i64* %3990
  %3992 = load { i64, i8* }*, { i64, i8* }** %3989
  %3993 = call i64 @nyx_array_length({ i64, i8* }* %3992)
  %3994 = icmp slt i64 %3991, %3993
  br i1 %3994, label %while_body776, label %while_end777
while_body776:
  %3995 = load { i64, i8* }*, { i64, i8* }** %3989
  %3996 = load i64, i64* %3990
  %3997 = call i64 @nyx_array_get({ i64, i8* }* %3995, i64 %3996)
  %3998 = inttoptr i64 %3997 to %nyx_string*
  %3999 = alloca %nyx_string*
  store %nyx_string* %3998, %nyx_string** %3999
  %4000 = load %nyx_string*, %nyx_string** %3999
  %4001 = load %nyx_string*, %nyx_string** %3333
  %4002 = call i64 @scope_declare(%nyx_string* %4000, %nyx_string* %4001)
  %4003 = load i64, i64* %3990
  %4004 = add i64 %4003, 1
  store i64 %4004, i64* %3990
  br label %while_cond775
while_end777:
  br label %merge774
else773:
  br label %merge774
merge774:
  %4005 = load %nyx_string*, %nyx_string** %3387
  %4006 = load %nyx_string*, %nyx_string** %3336
  %4007 = call i1 @nyx_string_equals(%nyx_string* %4005, %nyx_string* %4006)
  br i1 %4007, label %then778, label %else779
then778:
  %4008 = load %ASTNode, %ASTNode* %3384
  %4009 = call %nyx_string* @get_string_at(%ASTNode %4008, i64 0)
  %4010 = alloca %nyx_string*
  store %nyx_string* %4009, %nyx_string** %4010
  %4011 = load %ASTNode, %ASTNode* %3384
  %4012 = call { i64, i8* }* @get_array_at(%ASTNode %4011, i64 1)
  %4013 = alloca { i64, i8* }*
  store { i64, i8* }* %4012, { i64, i8* }** %4013
  %4014 = load %nyx_string*, %nyx_string** %4010
  %4015 = load %nyx_string*, %nyx_string** %3252
  %4016 = load { i64, i8* }*, { i64, i8* }** %4013
  %4017 = call i64 @nyx_array_length({ i64, i8* }* %4016)
  %4018 = call i64 @scope_declare_fn(%nyx_string* %4014, %nyx_string* %4015, i64 %4017)
  br label %merge780
else779:
  br label %merge780
merge780:
  %4019 = load %nyx_string*, %nyx_string** %3387
  %4020 = load %nyx_string*, %nyx_string** %3339
  %4021 = call i1 @nyx_string_equals(%nyx_string* %4019, %nyx_string* %4020)
  br i1 %4021, label %then781, label %else782
then781:
  %4022 = load %ASTNode, %ASTNode* %3384
  %4023 = call %nyx_string* @get_string_at(%ASTNode %4022, i64 0)
  %4024 = alloca %nyx_string*
  store %nyx_string* %4023, %nyx_string** %4024
  %4025 = load %nyx_string*, %nyx_string** %4024
  %4026 = load %nyx_string*, %nyx_string** %3342
  %4027 = call i64 @scope_declare(%nyx_string* %4025, %nyx_string* %4026)
  br label %merge783
else782:
  br label %merge783
merge783:
  %4028 = load %nyx_string*, %nyx_string** %3387
  %4029 = load %nyx_string*, %nyx_string** %3345
  %4030 = call i1 @nyx_string_equals(%nyx_string* %4028, %nyx_string* %4029)
  br i1 %4030, label %then784, label %else785
then784:
  store i1 1, i1* @g_has_imports
  %4031 = load %ASTNode, %ASTNode* %3384
  %4032 = call %nyx_string* @get_string_at(%ASTNode %4031, i64 0)
  %4033 = alloca %nyx_string*
  store %nyx_string* %4032, %nyx_string** %4033
  %4034 = load %ASTNode, %ASTNode* %3384
  %4035 = call %nyx_string* @get_string_at(%ASTNode %4034, i64 1)
  %4036 = alloca %nyx_string*
  store %nyx_string* %4035, %nyx_string** %4036
  %4037 = load %nyx_string*, %nyx_string** %4036
  %4038 = load %nyx_string*, %nyx_string** %3255
  %4039 = call i1 @nyx_string_equals(%nyx_string* %4037, %nyx_string* %4038)
  %4040 = xor i1 %4039, true
  br i1 %4040, label %then787, label %else788
then787:
  %4041 = load %nyx_string*, %nyx_string** %4036
  %4042 = load %nyx_string*, %nyx_string** %3342
  %4043 = call i64 @scope_declare(%nyx_string* %4041, %nyx_string* %4042)
  br label %merge789
else788:
  br label %merge789
merge789:
  %4044 = load %nyx_string*, %nyx_string** %4033
  %4045 = call i64 @scan_module_types(%nyx_string* %4044)
  br label %merge786
else785:
  br label %merge786
merge786:
  %4046 = load %nyx_string*, %nyx_string** %3387
  %4047 = load %nyx_string*, %nyx_string** %3348
  %4048 = call i1 @nyx_string_equals(%nyx_string* %4046, %nyx_string* %4047)
  br i1 %4048, label %then790, label %else791
then790:
  %4049 = load %ASTNode, %ASTNode* %3384
  %4050 = call %nyx_string* @get_string_at(%ASTNode %4049, i64 0)
  %4051 = call %nyx_string* @strip_generic_args(%nyx_string* %4050)
  %4052 = alloca %nyx_string*
  store %nyx_string* %4051, %nyx_string** %4052
  %4053 = load %ASTNode, %ASTNode* %3384
  %4054 = call { i64, i8* }* @get_array_at(%ASTNode %4053, i64 1)
  %4055 = alloca { i64, i8* }*
  store { i64, i8* }* %4054, { i64, i8* }** %4055
  %4056 = call { i64, i8* }* @nyx_array_new_ptr()
  %4057 = alloca { i64, i8* }*
  store { i64, i8* }* %4056, { i64, i8* }** %4057
  %4058 = call { i64, i8* }* @nyx_array_new_ptr()
  %4059 = alloca { i64, i8* }*
  store { i64, i8* }* %4058, { i64, i8* }** %4059
  %4060 = getelementptr %ASTNode, %ASTNode* %3384, i32 0, i32 1
  %4061 = load { i64, i8* }*, { i64, i8* }** %4060
  %4062 = alloca { i64, i8* }*
  store { i64, i8* }* %4061, { i64, i8* }** %4062
  %4063 = load { i64, i8* }*, { i64, i8* }** %4062
  %4064 = call i64 @nyx_array_length({ i64, i8* }* %4063)
  %4065 = icmp sgt i64 %4064, 2
  br i1 %4065, label %then793, label %else794
then793:
  %4066 = load { i64, i8* }*, { i64, i8* }** %4062
  %4067 = call i64 @nyx_array_get({ i64, i8* }* %4066, i64 2)
  %4068 = inttoptr i64 %4067 to { i64, i8* }*
  %4069 = alloca { i64, i8* }*
  store { i64, i8* }* %4068, { i64, i8* }** %4069
  %4070 = load { i64, i8* }*, { i64, i8* }** %4069
  %4071 = call i64 @nyx_array_length({ i64, i8* }* %4070)
  %4072 = icmp sgt i64 %4071, 0
  br i1 %4072, label %then796, label %else797
then796:
  %4073 = load { i64, i8* }*, { i64, i8* }** %4069
  %4074 = call { i64, i8* }* @extract_type_param_names({ i64, i8* }* %4073)
  store { i64, i8* }* %4074, { i64, i8* }** %4057
  %4075 = load { i64, i8* }*, { i64, i8* }** %4069
  %4076 = call { i64, i8* }* @extract_type_param_bounds({ i64, i8* }* %4075)
  store { i64, i8* }* %4076, { i64, i8* }** %4059
  br label %merge798
else797:
  br label %merge798
merge798:
  br label %merge795
else794:
  br label %merge795
merge795:
  %4077 = alloca i64
  store i64 0, i64* %4077
  br label %while_cond799
while_cond799:
  %4078 = load i64, i64* %4077
  %4079 = load { i64, i8* }*, { i64, i8* }** %4055
  %4080 = call i64 @nyx_array_length({ i64, i8* }* %4079)
  %4081 = icmp slt i64 %4078, %4080
  br i1 %4081, label %while_body800, label %while_end801
while_body800:
  %4082 = load { i64, i8* }*, { i64, i8* }** %4055
  %4083 = load i64, i64* %4077
  %4084 = call i64 @nyx_array_get({ i64, i8* }* %4082, i64 %4083)
  %4085 = inttoptr i64 %4084 to { i64, i8* }*
  %4086 = call i64 @nyx_array_get({ i64, i8* }* %4085, i64 0)
  %4087 = call i64 @nyx_array_get({ i64, i8* }* %4085, i64 1)
  %4088 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %4085, i64 2)
  %4089 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %4085, i64 3)
  %4090 = inttoptr i64 %4086 to %nyx_string*
  %4091 = inttoptr i64 %4087 to { i64, i8* }*
  %4092 = alloca %ASTNode
  %4093 = getelementptr inbounds %ASTNode, %ASTNode* %4092, i32 0, i32 0
  store %nyx_string* %4090, %nyx_string** %4093
  %4094 = getelementptr inbounds %ASTNode, %ASTNode* %4092, i32 0, i32 1
  store { i64, i8* }* %4091, { i64, i8* }** %4094
  %4095 = getelementptr inbounds %ASTNode, %ASTNode* %4092, i32 0, i32 2
  store i64 %4088, i64* %4095
  %4096 = getelementptr inbounds %ASTNode, %ASTNode* %4092, i32 0, i32 3
  store i64 %4089, i64* %4096
  %4097 = load %ASTNode, %ASTNode* %4092
  %4098 = alloca %ASTNode
  store %ASTNode %4097, %ASTNode* %4098
  %4099 = load %ASTNode, %ASTNode* %4098
  %4100 = call %nyx_string* @get_string_at(%ASTNode %4099, i64 0)
  %4101 = alloca %nyx_string*
  store %nyx_string* %4100, %nyx_string** %4101
  %4102 = load %ASTNode, %ASTNode* %4098
  %4103 = call { i64, i8* }* @get_array_at(%ASTNode %4102, i64 1)
  %4104 = alloca { i64, i8* }*
  store { i64, i8* }* %4103, { i64, i8* }** %4104
  %4105 = load %nyx_string*, %nyx_string** %4052
  %4106 = load %nyx_string*, %nyx_string** %3351
  %4107 = call %nyx_string* @nyx_string_concat(%nyx_string* %4105, %nyx_string* %4106)
  %4108 = load %nyx_string*, %nyx_string** %4101
  %4109 = call %nyx_string* @nyx_string_concat(%nyx_string* %4107, %nyx_string* %4108)
  %4110 = alloca %nyx_string*
  store %nyx_string* %4109, %nyx_string** %4110
  %4111 = load %nyx_string*, %nyx_string** %4110
  %4112 = load %nyx_string*, %nyx_string** %3252
  %4113 = load { i64, i8* }*, { i64, i8* }** %4104
  %4114 = call i64 @nyx_array_length({ i64, i8* }* %4113)
  %4115 = call i64 @scope_declare_fn(%nyx_string* %4111, %nyx_string* %4112, i64 %4114)
  %4116 = alloca i1
  store i1 0, i1* %4116
  %4117 = alloca i64
  store i64 0, i64* %4117
  br label %while_cond802
while_cond802:
  %4118 = load i64, i64* %4117
  %4119 = load { i64, i8* }*, { i64, i8* }** %4104
  %4120 = call i64 @nyx_array_length({ i64, i8* }* %4119)
  %4121 = icmp slt i64 %4118, %4120
  br i1 %4121, label %while_body803, label %while_end804
while_body803:
  %4122 = load { i64, i8* }*, { i64, i8* }** %4104
  %4123 = load i64, i64* %4117
  %4124 = call i64 @nyx_array_get({ i64, i8* }* %4122, i64 %4123)
  %4125 = inttoptr i64 %4124 to { i64, i8* }*
  %4126 = alloca { i64, i8* }*
  store { i64, i8* }* %4125, { i64, i8* }** %4126
  %4127 = load { i64, i8* }*, { i64, i8* }** %4126
  %4128 = call i64 @nyx_array_length({ i64, i8* }* %4127)
  %4129 = icmp sgt i64 %4128, 2
  br i1 %4129, label %then805, label %else806
then805:
  store i1 1, i1* %4116
  br label %merge807
else806:
  br label %merge807
merge807:
  %4130 = load i64, i64* %4117
  %4131 = add i64 %4130, 1
  store i64 %4131, i64* %4117
  br label %while_cond802
while_end804:
  %4132 = load i1, i1* %4116
  %4133 = xor i1 %4132, true
  br i1 %4133, label %then808, label %else809
then808:
  %4134 = load %ASTNode, %ASTNode* %4098
  %4135 = call %nyx_string* @get_string_at(%ASTNode %4134, i64 2)
  %4136 = alloca %nyx_string*
  store %nyx_string* %4135, %nyx_string** %4136
  %4137 = call { i64, i8* }* @ty_unknown()
  %4138 = alloca { i64, i8* }*
  store { i64, i8* }* %4137, { i64, i8* }** %4138
  %4139 = load %nyx_string*, %nyx_string** %4136
  %4140 = load %nyx_string*, %nyx_string** %3255
  %4141 = call i1 @nyx_string_equals(%nyx_string* %4139, %nyx_string* %4140)
  %4142 = xor i1 %4141, true
  br i1 %4142, label %then811, label %else812
then811:
  %4143 = load %nyx_string*, %nyx_string** %4136
  %4144 = load %nyx_string*, %nyx_string** %3258
  %4145 = call i1 @nyx_string_equals(%nyx_string* %4143, %nyx_string* %4144)
  %4146 = xor i1 %4145, true
  br i1 %4146, label %then814, label %else815
then814:
  %4147 = load %nyx_string*, %nyx_string** %4136
  %4148 = call { i64, i8* }* @ty_parse(%nyx_string* %4147)
  %4149 = call { i64, i8* }* @resolve_type({ i64, i8* }* %4148)
  store { i64, i8* }* %4149, { i64, i8* }** %4138
  br label %merge816
else815:
  br label %merge816
merge816:
  br label %merge813
else812:
  br label %merge813
merge813:
  %4150 = call { i64, i8* }* @nyx_array_new_ptr()
  %4151 = alloca { i64, i8* }*
  store { i64, i8* }* %4150, { i64, i8* }** %4151
  %4152 = call { i64, i8* }* @nyx_array_new_ptr()
  %4153 = alloca { i64, i8* }*
  store { i64, i8* }* %4152, { i64, i8* }** %4153
  %4154 = getelementptr %ASTNode, %ASTNode* %4098, i32 0, i32 1
  %4155 = load { i64, i8* }*, { i64, i8* }** %4154
  %4156 = alloca { i64, i8* }*
  store { i64, i8* }* %4155, { i64, i8* }** %4156
  %4157 = load { i64, i8* }*, { i64, i8* }** %4156
  %4158 = call i64 @nyx_array_length({ i64, i8* }* %4157)
  %4159 = icmp sgt i64 %4158, 4
  br i1 %4159, label %then817, label %else818
then817:
  %4160 = load { i64, i8* }*, { i64, i8* }** %4156
  %4161 = call i64 @nyx_array_get({ i64, i8* }* %4160, i64 4)
  %4162 = inttoptr i64 %4161 to { i64, i8* }*
  %4163 = alloca { i64, i8* }*
  store { i64, i8* }* %4162, { i64, i8* }** %4163
  %4164 = load { i64, i8* }*, { i64, i8* }** %4163
  %4165 = call { i64, i8* }* @extract_type_param_names({ i64, i8* }* %4164)
  store { i64, i8* }* %4165, { i64, i8* }** %4151
  %4166 = load { i64, i8* }*, { i64, i8* }** %4163
  %4167 = call { i64, i8* }* @extract_type_param_bounds({ i64, i8* }* %4166)
  store { i64, i8* }* %4167, { i64, i8* }** %4153
  br label %merge819
else818:
  br label %merge819
merge819:
  %4168 = load { i64, i8* }*, { i64, i8* }** %4057
  %4169 = call i64 @nyx_array_length({ i64, i8* }* %4168)
  %4170 = icmp sgt i64 %4169, 0
  br i1 %4170, label %then820, label %else821
then820:
  %4171 = call { i64, i8* }* @nyx_array_new_ptr()
  %4172 = alloca { i64, i8* }*
  store { i64, i8* }* %4171, { i64, i8* }** %4172
  %4173 = call { i64, i8* }* @nyx_array_new_ptr()
  %4174 = alloca { i64, i8* }*
  store { i64, i8* }* %4173, { i64, i8* }** %4174
  %4175 = alloca i64
  store i64 0, i64* %4175
  br label %while_cond823
while_cond823:
  %4176 = load i64, i64* %4175
  %4177 = load { i64, i8* }*, { i64, i8* }** %4057
  %4178 = call i64 @nyx_array_length({ i64, i8* }* %4177)
  %4179 = icmp slt i64 %4176, %4178
  br i1 %4179, label %while_body824, label %while_end825
while_body824:
  %4180 = load { i64, i8* }*, { i64, i8* }** %4172
  %4181 = load { i64, i8* }*, { i64, i8* }** %4057
  %4182 = load i64, i64* %4175
  %4183 = call i64 @nyx_array_get({ i64, i8* }* %4181, i64 %4182)
  call void @nyx_array_push({ i64, i8* }* %4180, i64 %4183)
  %4184 = load { i64, i8* }*, { i64, i8* }** %4174
  %4185 = load { i64, i8* }*, { i64, i8* }** %4059
  %4186 = load i64, i64* %4175
  %4187 = call i64 @nyx_array_get({ i64, i8* }* %4185, i64 %4186)
  call void @nyx_array_push({ i64, i8* }* %4184, i64 %4187)
  %4188 = load i64, i64* %4175
  %4189 = add i64 %4188, 1
  store i64 %4189, i64* %4175
  br label %while_cond823
while_end825:
  %4190 = alloca i64
  store i64 0, i64* %4190
  br label %while_cond826
while_cond826:
  %4191 = load i64, i64* %4190
  %4192 = load { i64, i8* }*, { i64, i8* }** %4151
  %4193 = call i64 @nyx_array_length({ i64, i8* }* %4192)
  %4194 = icmp slt i64 %4191, %4193
  br i1 %4194, label %while_body827, label %while_end828
while_body827:
  %4195 = load { i64, i8* }*, { i64, i8* }** %4172
  %4196 = load { i64, i8* }*, { i64, i8* }** %4151
  %4197 = load i64, i64* %4190
  %4198 = call i64 @nyx_array_get({ i64, i8* }* %4196, i64 %4197)
  call void @nyx_array_push({ i64, i8* }* %4195, i64 %4198)
  %4199 = load { i64, i8* }*, { i64, i8* }** %4174
  %4200 = load { i64, i8* }*, { i64, i8* }** %4153
  %4201 = load i64, i64* %4190
  %4202 = call i64 @nyx_array_get({ i64, i8* }* %4200, i64 %4201)
  call void @nyx_array_push({ i64, i8* }* %4199, i64 %4202)
  %4203 = load i64, i64* %4190
  %4204 = add i64 %4203, 1
  store i64 %4204, i64* %4190
  br label %while_cond826
while_end828:
  %4205 = load { i64, i8* }*, { i64, i8* }** %4172
  store { i64, i8* }* %4205, { i64, i8* }** %4151
  %4206 = load { i64, i8* }*, { i64, i8* }** %4174
  store { i64, i8* }* %4206, { i64, i8* }** %4153
  br label %merge822
else821:
  br label %merge822
merge822:
  %4207 = load %nyx_string*, %nyx_string** %4052
  %4208 = load %nyx_string*, %nyx_string** %4101
  %4209 = load { i64, i8* }*, { i64, i8* }** %4104
  %4210 = call { i64, i8* }* @impl_params_to_types({ i64, i8* }* %4209)
  %4211 = load { i64, i8* }*, { i64, i8* }** %4138
  %4212 = load { i64, i8* }*, { i64, i8* }** %4151
  %4213 = load { i64, i8* }*, { i64, i8* }** %4153
  %4214 = call i64 @register_impl_method(%nyx_string* %4207, %nyx_string* %4208, { i64, i8* }* %4210, { i64, i8* }* %4211, { i64, i8* }* %4212, { i64, i8* }* %4213)
  br label %merge810
else809:
  br label %merge810
merge810:
  %4215 = load i64, i64* %4077
  %4216 = add i64 %4215, 1
  store i64 %4216, i64* %4077
  br label %while_cond799
while_end801:
  br label %merge792
else791:
  br label %merge792
merge792:
  %4217 = load %nyx_string*, %nyx_string** %3387
  %4218 = load %nyx_string*, %nyx_string** %3354
  %4219 = call i1 @nyx_string_equals(%nyx_string* %4217, %nyx_string* %4218)
  br i1 %4219, label %then829, label %else830
then829:
  %4220 = load %ASTNode, %ASTNode* %3384
  %4221 = call %nyx_string* @get_string_at(%ASTNode %4220, i64 0)
  %4222 = alloca %nyx_string*
  store %nyx_string* %4221, %nyx_string** %4222
  %4223 = load %nyx_string*, %nyx_string** %4222
  %4224 = load %nyx_string*, %nyx_string** %3357
  %4225 = call i64 @scope_declare(%nyx_string* %4223, %nyx_string* %4224)
  %4226 = getelementptr %ASTNode, %ASTNode* %3384, i32 0, i32 1
  %4227 = load { i64, i8* }*, { i64, i8* }** %4226
  %4228 = alloca { i64, i8* }*
  store { i64, i8* }* %4227, { i64, i8* }** %4228
  %4229 = load { i64, i8* }*, { i64, i8* }** %4228
  %4230 = call i64 @nyx_array_length({ i64, i8* }* %4229)
  %4231 = icmp sgt i64 %4230, 2
  br i1 %4231, label %then832, label %else833
then832:
  %4232 = load { i64, i8* }*, { i64, i8* }** %4228
  %4233 = call i64 @nyx_array_get({ i64, i8* }* %4232, i64 2)
  %4234 = inttoptr i64 %4233 to { i64, i8* }*
  %4235 = alloca { i64, i8* }*
  store { i64, i8* }* %4234, { i64, i8* }** %4235
  %4236 = call i64 @init_known_methods()
  %4237 = alloca i64
  store i64 0, i64* %4237
  br label %while_cond835
while_cond835:
  %4238 = load i64, i64* %4237
  %4239 = load { i64, i8* }*, { i64, i8* }** %4235
  %4240 = call i64 @nyx_array_length({ i64, i8* }* %4239)
  %4241 = icmp slt i64 %4238, %4240
  br i1 %4241, label %while_body836, label %while_end837
while_body836:
  %4242 = load { i64, i8* }*, { i64, i8* }** %4235
  %4243 = load i64, i64* %4237
  %4244 = call i64 @nyx_array_get({ i64, i8* }* %4242, i64 %4243)
  %4245 = inttoptr i64 %4244 to { i64, i8* }*
  %4246 = alloca { i64, i8* }*
  store { i64, i8* }* %4245, { i64, i8* }** %4246
  %4247 = load { i64, i8* }*, { i64, i8* }** %4246
  %4248 = call i64 @nyx_array_get({ i64, i8* }* %4247, i64 0)
  %4249 = inttoptr i64 %4248 to %nyx_string*
  %4250 = alloca %nyx_string*
  store %nyx_string* %4249, %nyx_string** %4250
  %4251 = load %nyx_string*, %nyx_string** %4250
  %4252 = load %nyx_string*, %nyx_string** %3360
  %4253 = call i1 @nyx_string_equals(%nyx_string* %4251, %nyx_string* %4252)
  %4254 = xor i1 %4253, true
  br i1 %4254, label %then838, label %else839
then838:
  %4255 = load %nyx_string*, %nyx_string** %4250
  %4256 = call i1 @is_known_method(%nyx_string* %4255)
  %4257 = xor i1 %4256, true
  br i1 %4257, label %then841, label %else842
then841:
  %4258 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %4259 = load %nyx_string*, %nyx_string** %4250
  %4260 = ptrtoint %nyx_string* %4259 to i64
  call void @nyx_array_push({ i64, i8* }* %4258, i64 %4260)
  br label %merge843
else842:
  br label %merge843
merge843:
  br label %merge840
else839:
  br label %merge840
merge840:
  %4261 = load i64, i64* %4237
  %4262 = add i64 %4261, 1
  store i64 %4262, i64* %4237
  br label %while_cond835
while_end837:
  br label %merge834
else833:
  br label %merge834
merge834:
  br label %merge831
else830:
  br label %merge831
merge831:
  %4263 = load %nyx_string*, %nyx_string** %3387
  %4264 = load %nyx_string*, %nyx_string** %3363
  %4265 = call i1 @nyx_string_equals(%nyx_string* %4263, %nyx_string* %4264)
  br i1 %4265, label %then844, label %else845
then844:
  %4266 = load %ASTNode, %ASTNode* %3384
  %4267 = call %nyx_string* @get_string_at(%ASTNode %4266, i64 0)
  %4268 = call %nyx_string* @strip_generic_args(%nyx_string* %4267)
  %4269 = alloca %nyx_string*
  store %nyx_string* %4268, %nyx_string** %4269
  %4270 = load %ASTNode, %ASTNode* %3384
  %4271 = call %nyx_string* @get_string_at(%ASTNode %4270, i64 1)
  %4272 = call %nyx_string* @strip_generic_args(%nyx_string* %4271)
  %4273 = alloca %nyx_string*
  store %nyx_string* %4272, %nyx_string** %4273
  %4274 = load %ASTNode, %ASTNode* %3384
  %4275 = call { i64, i8* }* @get_array_at(%ASTNode %4274, i64 2)
  %4276 = alloca { i64, i8* }*
  store { i64, i8* }* %4275, { i64, i8* }** %4276
  %4277 = load %nyx_string*, %nyx_string** %4273
  %4278 = load %nyx_string*, %nyx_string** %4269
  %4279 = call i64 @register_trait_impl(%nyx_string* %4277, %nyx_string* %4278)
  %4280 = alloca i64
  store i64 0, i64* %4280
  br label %while_cond847
while_cond847:
  %4281 = load i64, i64* %4280
  %4282 = load { i64, i8* }*, { i64, i8* }** %4276
  %4283 = call i64 @nyx_array_length({ i64, i8* }* %4282)
  %4284 = icmp slt i64 %4281, %4283
  br i1 %4284, label %while_body848, label %while_end849
while_body848:
  %4285 = load { i64, i8* }*, { i64, i8* }** %4276
  %4286 = load i64, i64* %4280
  %4287 = call i64 @nyx_array_get({ i64, i8* }* %4285, i64 %4286)
  %4288 = inttoptr i64 %4287 to { i64, i8* }*
  %4289 = call i64 @nyx_array_get({ i64, i8* }* %4288, i64 0)
  %4290 = call i64 @nyx_array_get({ i64, i8* }* %4288, i64 1)
  %4291 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %4288, i64 2)
  %4292 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %4288, i64 3)
  %4293 = inttoptr i64 %4289 to %nyx_string*
  %4294 = inttoptr i64 %4290 to { i64, i8* }*
  %4295 = alloca %ASTNode
  %4296 = getelementptr inbounds %ASTNode, %ASTNode* %4295, i32 0, i32 0
  store %nyx_string* %4293, %nyx_string** %4296
  %4297 = getelementptr inbounds %ASTNode, %ASTNode* %4295, i32 0, i32 1
  store { i64, i8* }* %4294, { i64, i8* }** %4297
  %4298 = getelementptr inbounds %ASTNode, %ASTNode* %4295, i32 0, i32 2
  store i64 %4291, i64* %4298
  %4299 = getelementptr inbounds %ASTNode, %ASTNode* %4295, i32 0, i32 3
  store i64 %4292, i64* %4299
  %4300 = load %ASTNode, %ASTNode* %4295
  %4301 = alloca %ASTNode
  store %ASTNode %4300, %ASTNode* %4301
  %4302 = load %ASTNode, %ASTNode* %4301
  %4303 = call %nyx_string* @get_string_at(%ASTNode %4302, i64 0)
  %4304 = alloca %nyx_string*
  store %nyx_string* %4303, %nyx_string** %4304
  %4305 = load %ASTNode, %ASTNode* %4301
  %4306 = call { i64, i8* }* @get_array_at(%ASTNode %4305, i64 1)
  %4307 = alloca { i64, i8* }*
  store { i64, i8* }* %4306, { i64, i8* }** %4307
  %4308 = load %nyx_string*, %nyx_string** %4273
  %4309 = load %nyx_string*, %nyx_string** %3351
  %4310 = call %nyx_string* @nyx_string_concat(%nyx_string* %4308, %nyx_string* %4309)
  %4311 = load %nyx_string*, %nyx_string** %4304
  %4312 = call %nyx_string* @nyx_string_concat(%nyx_string* %4310, %nyx_string* %4311)
  %4313 = alloca %nyx_string*
  store %nyx_string* %4312, %nyx_string** %4313
  %4314 = load %nyx_string*, %nyx_string** %4313
  %4315 = load %nyx_string*, %nyx_string** %3252
  %4316 = load { i64, i8* }*, { i64, i8* }** %4307
  %4317 = call i64 @nyx_array_length({ i64, i8* }* %4316)
  %4318 = call i64 @scope_declare_fn(%nyx_string* %4314, %nyx_string* %4315, i64 %4317)
  %4319 = alloca i1
  store i1 0, i1* %4319
  %4320 = alloca i64
  store i64 0, i64* %4320
  br label %while_cond850
while_cond850:
  %4321 = load i64, i64* %4320
  %4322 = load { i64, i8* }*, { i64, i8* }** %4307
  %4323 = call i64 @nyx_array_length({ i64, i8* }* %4322)
  %4324 = icmp slt i64 %4321, %4323
  br i1 %4324, label %while_body851, label %while_end852
while_body851:
  %4325 = load { i64, i8* }*, { i64, i8* }** %4307
  %4326 = load i64, i64* %4320
  %4327 = call i64 @nyx_array_get({ i64, i8* }* %4325, i64 %4326)
  %4328 = inttoptr i64 %4327 to { i64, i8* }*
  %4329 = alloca { i64, i8* }*
  store { i64, i8* }* %4328, { i64, i8* }** %4329
  %4330 = load { i64, i8* }*, { i64, i8* }** %4329
  %4331 = call i64 @nyx_array_length({ i64, i8* }* %4330)
  %4332 = icmp sgt i64 %4331, 2
  br i1 %4332, label %then853, label %else854
then853:
  store i1 1, i1* %4319
  br label %merge855
else854:
  br label %merge855
merge855:
  %4333 = load i64, i64* %4320
  %4334 = add i64 %4333, 1
  store i64 %4334, i64* %4320
  br label %while_cond850
while_end852:
  %4335 = load i1, i1* %4319
  %4336 = xor i1 %4335, true
  br i1 %4336, label %then856, label %else857
then856:
  %4337 = load %ASTNode, %ASTNode* %4301
  %4338 = call %nyx_string* @get_string_at(%ASTNode %4337, i64 2)
  %4339 = alloca %nyx_string*
  store %nyx_string* %4338, %nyx_string** %4339
  %4340 = call { i64, i8* }* @ty_unknown()
  %4341 = alloca { i64, i8* }*
  store { i64, i8* }* %4340, { i64, i8* }** %4341
  %4342 = load %nyx_string*, %nyx_string** %4339
  %4343 = load %nyx_string*, %nyx_string** %3255
  %4344 = call i1 @nyx_string_equals(%nyx_string* %4342, %nyx_string* %4343)
  %4345 = xor i1 %4344, true
  br i1 %4345, label %then859, label %else860
then859:
  %4346 = load %nyx_string*, %nyx_string** %4339
  %4347 = load %nyx_string*, %nyx_string** %3258
  %4348 = call i1 @nyx_string_equals(%nyx_string* %4346, %nyx_string* %4347)
  %4349 = xor i1 %4348, true
  br i1 %4349, label %then862, label %else863
then862:
  %4350 = load %nyx_string*, %nyx_string** %4339
  %4351 = call { i64, i8* }* @ty_parse(%nyx_string* %4350)
  %4352 = call { i64, i8* }* @resolve_type({ i64, i8* }* %4351)
  store { i64, i8* }* %4352, { i64, i8* }** %4341
  br label %merge864
else863:
  br label %merge864
merge864:
  br label %merge861
else860:
  br label %merge861
merge861:
  %4353 = call { i64, i8* }* @nyx_array_new_ptr()
  %4354 = alloca { i64, i8* }*
  store { i64, i8* }* %4353, { i64, i8* }** %4354
  %4355 = call { i64, i8* }* @nyx_array_new_ptr()
  %4356 = alloca { i64, i8* }*
  store { i64, i8* }* %4355, { i64, i8* }** %4356
  %4357 = getelementptr %ASTNode, %ASTNode* %4301, i32 0, i32 1
  %4358 = load { i64, i8* }*, { i64, i8* }** %4357
  %4359 = alloca { i64, i8* }*
  store { i64, i8* }* %4358, { i64, i8* }** %4359
  %4360 = load { i64, i8* }*, { i64, i8* }** %4359
  %4361 = call i64 @nyx_array_length({ i64, i8* }* %4360)
  %4362 = icmp sgt i64 %4361, 4
  br i1 %4362, label %then865, label %else866
then865:
  %4363 = load { i64, i8* }*, { i64, i8* }** %4359
  %4364 = call i64 @nyx_array_get({ i64, i8* }* %4363, i64 4)
  %4365 = inttoptr i64 %4364 to { i64, i8* }*
  %4366 = alloca { i64, i8* }*
  store { i64, i8* }* %4365, { i64, i8* }** %4366
  %4367 = load { i64, i8* }*, { i64, i8* }** %4366
  %4368 = call { i64, i8* }* @extract_type_param_names({ i64, i8* }* %4367)
  store { i64, i8* }* %4368, { i64, i8* }** %4354
  %4369 = load { i64, i8* }*, { i64, i8* }** %4366
  %4370 = call { i64, i8* }* @extract_type_param_bounds({ i64, i8* }* %4369)
  store { i64, i8* }* %4370, { i64, i8* }** %4356
  br label %merge867
else866:
  br label %merge867
merge867:
  %4371 = load %nyx_string*, %nyx_string** %4273
  %4372 = load %nyx_string*, %nyx_string** %4304
  %4373 = load { i64, i8* }*, { i64, i8* }** %4307
  %4374 = call { i64, i8* }* @impl_params_to_types({ i64, i8* }* %4373)
  %4375 = load { i64, i8* }*, { i64, i8* }** %4341
  %4376 = load { i64, i8* }*, { i64, i8* }** %4354
  %4377 = load { i64, i8* }*, { i64, i8* }** %4356
  %4378 = call i64 @register_impl_method(%nyx_string* %4371, %nyx_string* %4372, { i64, i8* }* %4374, { i64, i8* }* %4375, { i64, i8* }* %4376, { i64, i8* }* %4377)
  br label %merge858
else857:
  br label %merge858
merge858:
  %4379 = load i64, i64* %4280
  %4380 = add i64 %4379, 1
  store i64 %4380, i64* %4280
  br label %while_cond847
while_end849:
  br label %merge846
else845:
  br label %merge846
merge846:
  %4381 = load i64, i64* %3243
  %4382 = add i64 %4381, 1
  store i64 %4382, i64* %3243
  br label %while_cond612
while_end614:
  ret i64 0
}

define internal i1 @validate_block(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %4383 = load %ASTNode, %ASTNode* %node.ptr
  %4384 = call { i64, i8* }* @get_array_at(%ASTNode %4383, i64 0)
  %4385 = alloca { i64, i8* }*
  store { i64, i8* }* %4384, { i64, i8* }** %4385
  %4386 = load { i64, i8* }*, { i64, i8* }** %4385
  %4387 = call i64 @register_declarations({ i64, i8* }* %4386)
  %4388 = alloca i1
  store i1 1, i1* %4388
  %4389 = alloca i64
  store i64 0, i64* %4389
  br label %while_cond868
while_cond868:
  %4390 = load i64, i64* %4389
  %4391 = load { i64, i8* }*, { i64, i8* }** %4385
  %4392 = call i64 @nyx_array_length({ i64, i8* }* %4391)
  %4393 = icmp slt i64 %4390, %4392
  br i1 %4393, label %while_body869, label %while_end870
while_body869:
  %4394 = load { i64, i8* }*, { i64, i8* }** %4385
  %4395 = load i64, i64* %4389
  %4396 = call i64 @nyx_array_get({ i64, i8* }* %4394, i64 %4395)
  %4397 = inttoptr i64 %4396 to { i64, i8* }*
  %4398 = call i64 @nyx_array_get({ i64, i8* }* %4397, i64 0)
  %4399 = call i64 @nyx_array_get({ i64, i8* }* %4397, i64 1)
  %4400 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %4397, i64 2)
  %4401 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %4397, i64 3)
  %4402 = inttoptr i64 %4398 to %nyx_string*
  %4403 = inttoptr i64 %4399 to { i64, i8* }*
  %4404 = alloca %ASTNode
  %4405 = getelementptr inbounds %ASTNode, %ASTNode* %4404, i32 0, i32 0
  store %nyx_string* %4402, %nyx_string** %4405
  %4406 = getelementptr inbounds %ASTNode, %ASTNode* %4404, i32 0, i32 1
  store { i64, i8* }* %4403, { i64, i8* }** %4406
  %4407 = getelementptr inbounds %ASTNode, %ASTNode* %4404, i32 0, i32 2
  store i64 %4400, i64* %4407
  %4408 = getelementptr inbounds %ASTNode, %ASTNode* %4404, i32 0, i32 3
  store i64 %4401, i64* %4408
  %4409 = load %ASTNode, %ASTNode* %4404
  %4410 = alloca %ASTNode
  store %ASTNode %4409, %ASTNode* %4410
  %4411 = load %ASTNode, %ASTNode* %4410
  %4412 = call i1 @validate_node(%ASTNode %4411)
  %4413 = xor i1 %4412, true
  br i1 %4413, label %then871, label %else872
then871:
  store i1 0, i1* %4388
  br label %merge873
else872:
  br label %merge873
merge873:
  %4414 = load i64, i64* %4389
  %4415 = add i64 %4414, 1
  store i64 %4415, i64* %4389
  br label %while_cond868
while_end870:
  %4416 = load i1, i1* %4388
  ret i1 %4416
}

define internal i1 @validate_identifier(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %4417 = load %ASTNode, %ASTNode* %node.ptr
  %4418 = call %nyx_string* @get_string_at(%ASTNode %4417, i64 0)
  %4419 = alloca %nyx_string*
  store %nyx_string* %4418, %nyx_string** %4419
  %4420 = load %nyx_string*, %nyx_string** %4419
  %4421 = call %nyx_string* @scope_lookup(%nyx_string* %4420)
  %4422 = alloca %nyx_string*
  store %nyx_string* %4421, %nyx_string** %4422
  %4423 = load %nyx_string*, %nyx_string** %4422
  %4424 = getelementptr [1 x i8], [1 x i8]* @.str549, i32 0, i32 0
  %4425 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str549.c, i8* %4424)
  %4426 = call i1 @nyx_string_equals(%nyx_string* %4423, %nyx_string* %4425)
  br i1 %4426, label %then874, label %else875
then874:
  %4427 = call { i64, i8* }* @nyx_array_new_ptr()
  %4428 = alloca { i64, i8* }*
  store { i64, i8* }* %4427, { i64, i8* }** %4428
  %4429 = alloca i64
  store i64 0, i64* %4429
  br label %while_cond877
while_cond877:
  %4430 = load i64, i64* %4429
  %4431 = load i64, i64* @g_sym_count
  %4432 = icmp slt i64 %4430, %4431
  br i1 %4432, label %while_body878, label %while_end879
while_body878:
  %4433 = load { i64, i8* }*, { i64, i8* }** @g_sym_names
  %4434 = load i64, i64* %4429
  %4435 = call i64 @nyx_array_get({ i64, i8* }* %4433, i64 %4434)
  %4436 = inttoptr i64 %4435 to %nyx_string*
  %4437 = alloca %nyx_string*
  store %nyx_string* %4436, %nyx_string** %4437
  %4438 = load { i64, i8* }*, { i64, i8* }** %4428
  %4439 = load %nyx_string*, %nyx_string** %4437
  %4440 = ptrtoint %nyx_string* %4439 to i64
  call void @nyx_array_push({ i64, i8* }* %4438, i64 %4440)
  %4441 = load i64, i64* %4429
  %4442 = add i64 %4441, 1
  store i64 %4442, i64* %4429
  br label %while_cond877
while_end879:
  %4443 = load %nyx_string*, %nyx_string** %4419
  %4444 = load { i64, i8* }*, { i64, i8* }** %4428
  %4445 = call %nyx_string* @suggest_similar_name(%nyx_string* %4443, { i64, i8* }* %4444)
  %4446 = alloca %nyx_string*
  store %nyx_string* %4445, %nyx_string** %4446
  %4447 = getelementptr [8 x i8], [8 x i8]* @.str550, i32 0, i32 0
  %4448 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str550.c, i8* %4447)
  %4449 = getelementptr [2 x i8], [2 x i8]* @.str551, i32 0, i32 0
  %4450 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str551.c, i8* %4449)
  %4451 = load %nyx_string*, %nyx_string** %4419
  %4452 = call %nyx_string* @nyx_string_concat(%nyx_string* %4450, %nyx_string* %4451)
  %4453 = getelementptr [3 x i8], [3 x i8]* @.str552, i32 0, i32 0
  %4454 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str552.c, i8* %4453)
  %4455 = call %nyx_string* @nyx_string_concat(%nyx_string* %4452, %nyx_string* %4454)
  %4456 = getelementptr [13 x i8], [13 x i8]* @.str553, i32 0, i32 0
  %4457 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str553.c, i8* %4456)
  %4458 = getelementptr [13 x i8], [13 x i8]* @.str554, i32 0, i32 0
  %4459 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str554.c, i8* %4458)
  %4460 = call %nyx_string* @msg(%nyx_string* %4457, %nyx_string* %4459)
  %4461 = call %nyx_string* @nyx_string_concat(%nyx_string* %4455, %nyx_string* %4460)
  %4462 = load %nyx_string*, %nyx_string** %4446
  %4463 = call %nyx_string* @suggest_phrase(%nyx_string* %4462)
  %4464 = call %nyx_string* @nyx_string_concat(%nyx_string* %4461, %nyx_string* %4463)
  %4465 = load %nyx_string*, %nyx_string** %4446
  %4466 = call i64 @sem_diag(%nyx_string* %4448, %nyx_string* %4464, %nyx_string* %4465)
  ret i1 0
else875:
  br label %merge876
merge876:
  ret i1 1
}

define internal i1 @validate_binop(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %4467 = load %ASTNode, %ASTNode* %node.ptr
  %4468 = call %nyx_string* @get_string_at(%ASTNode %4467, i64 0)
  %4469 = alloca %nyx_string*
  store %nyx_string* %4468, %nyx_string** %4469
  %4470 = load %ASTNode, %ASTNode* %node.ptr
  %4471 = call %ASTNode @get_node_at(%ASTNode %4470, i64 1)
  %4472 = alloca %ASTNode
  store %ASTNode %4471, %ASTNode* %4472
  %4473 = load %ASTNode, %ASTNode* %node.ptr
  %4474 = call %ASTNode @get_node_at(%ASTNode %4473, i64 2)
  %4475 = alloca %ASTNode
  store %ASTNode %4474, %ASTNode* %4475
  %4476 = load %ASTNode, %ASTNode* %4472
  %4477 = call i1 @validate_node(%ASTNode %4476)
  %4478 = xor i1 %4477, true
  br i1 %4478, label %then880, label %else881
then880:
  ret i1 0
else881:
  br label %merge882
merge882:
  %4479 = load %ASTNode, %ASTNode* %4475
  %4480 = call i1 @validate_node(%ASTNode %4479)
  %4481 = xor i1 %4480, true
  br i1 %4481, label %then883, label %else884
then883:
  ret i1 0
else884:
  br label %merge885
merge885:
  %4482 = load %ASTNode, %ASTNode* %4472
  %4483 = call { i64, i8* }* @ty_of_expr(%ASTNode %4482)
  %4484 = alloca { i64, i8* }*
  store { i64, i8* }* %4483, { i64, i8* }** %4484
  %4485 = load %ASTNode, %ASTNode* %4475
  %4486 = call { i64, i8* }* @ty_of_expr(%ASTNode %4485)
  %4487 = alloca { i64, i8* }*
  store { i64, i8* }* %4486, { i64, i8* }** %4487
  %4488 = alloca i1
  store i1 true, i1* %4488
  %4489 = alloca i1
  store i1 true, i1* %4489
  %4490 = alloca i1
  store i1 true, i1* %4490
  %4491 = load %nyx_string*, %nyx_string** %4469
  %4492 = getelementptr [8 x i8], [8 x i8]* @.str555, i32 0, i32 0
  %4493 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str555.c, i8* %4492)
  %4494 = call i1 @nyx_string_equals(%nyx_string* %4491, %nyx_string* %4493)
  br i1 %4494, label %sc_or_end887, label %sc_or_rhs886
sc_or_rhs886:
  %4495 = load %nyx_string*, %nyx_string** %4469
  %4496 = getelementptr [6 x i8], [6 x i8]* @.str556, i32 0, i32 0
  %4497 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str556.c, i8* %4496)
  %4498 = call i1 @nyx_string_equals(%nyx_string* %4495, %nyx_string* %4497)
  store i1 %4498, i1* %4490
  br label %sc_or_end887
sc_or_end887:
  %4499 = load i1, i1* %4490
  br i1 %4499, label %sc_or_end889, label %sc_or_rhs888
sc_or_rhs888:
  %4500 = load %nyx_string*, %nyx_string** %4469
  %4501 = getelementptr [4 x i8], [4 x i8]* @.str557, i32 0, i32 0
  %4502 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str557.c, i8* %4501)
  %4503 = call i1 @nyx_string_equals(%nyx_string* %4500, %nyx_string* %4502)
  store i1 %4503, i1* %4489
  br label %sc_or_end889
sc_or_end889:
  %4504 = load i1, i1* %4489
  br i1 %4504, label %sc_or_end891, label %sc_or_rhs890
sc_or_rhs890:
  %4505 = load %nyx_string*, %nyx_string** %4469
  %4506 = getelementptr [3 x i8], [3 x i8]* @.str558, i32 0, i32 0
  %4507 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str558.c, i8* %4506)
  %4508 = call i1 @nyx_string_equals(%nyx_string* %4505, %nyx_string* %4507)
  store i1 %4508, i1* %4488
  br label %sc_or_end891
sc_or_end891:
  %4509 = load i1, i1* %4488
  br i1 %4509, label %then892, label %else893
then892:
  %4510 = load { i64, i8* }*, { i64, i8* }** %4484
  %4511 = call i1 @ty_is_unknown({ i64, i8* }* %4510)
  %4512 = xor i1 %4511, true
  br i1 %4512, label %then895, label %else896
then895:
  %4513 = load { i64, i8* }*, { i64, i8* }** %4484
  %4514 = call %nyx_string* @ty_kind({ i64, i8* }* %4513)
  %4515 = alloca %nyx_string*
  store %nyx_string* %4514, %nyx_string** %4515
  %4516 = load %nyx_string*, %nyx_string** %4515
  %4517 = getelementptr [7 x i8], [7 x i8]* @.str559, i32 0, i32 0
  %4518 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str559.c, i8* %4517)
  %4519 = call i1 @nyx_string_equals(%nyx_string* %4516, %nyx_string* %4518)
  %4520 = xor i1 %4519, true
  br i1 %4520, label %then898, label %else899
then898:
  %4521 = getelementptr [8 x i8], [8 x i8]* @.str560, i32 0, i32 0
  %4522 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str560.c, i8* %4521)
  %4523 = getelementptr [24 x i8], [24 x i8]* @.str561, i32 0, i32 0
  %4524 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str561.c, i8* %4523)
  %4525 = load %nyx_string*, %nyx_string** %4469
  %4526 = call %nyx_string* @op_symbol(%nyx_string* %4525)
  %4527 = call %nyx_string* @nyx_string_concat(%nyx_string* %4524, %nyx_string* %4526)
  %4528 = getelementptr [28 x i8], [28 x i8]* @.str562, i32 0, i32 0
  %4529 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str562.c, i8* %4528)
  %4530 = call %nyx_string* @nyx_string_concat(%nyx_string* %4527, %nyx_string* %4529)
  %4531 = load { i64, i8* }*, { i64, i8* }** %4484
  %4532 = call %nyx_string* @ty_to_str({ i64, i8* }* %4531)
  %4533 = call %nyx_string* @nyx_string_concat(%nyx_string* %4530, %nyx_string* %4532)
  %4534 = getelementptr [18 x i8], [18 x i8]* @.str563, i32 0, i32 0
  %4535 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str563.c, i8* %4534)
  %4536 = load %nyx_string*, %nyx_string** %4469
  %4537 = call %nyx_string* @op_symbol(%nyx_string* %4536)
  %4538 = call %nyx_string* @nyx_string_concat(%nyx_string* %4535, %nyx_string* %4537)
  %4539 = getelementptr [21 x i8], [21 x i8]* @.str564, i32 0, i32 0
  %4540 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str564.c, i8* %4539)
  %4541 = call %nyx_string* @nyx_string_concat(%nyx_string* %4538, %nyx_string* %4540)
  %4542 = load { i64, i8* }*, { i64, i8* }** %4484
  %4543 = call %nyx_string* @ty_to_str({ i64, i8* }* %4542)
  %4544 = call %nyx_string* @nyx_string_concat(%nyx_string* %4541, %nyx_string* %4543)
  %4545 = call %nyx_string* @msg(%nyx_string* %4533, %nyx_string* %4544)
  %4546 = getelementptr [1 x i8], [1 x i8]* @.str565, i32 0, i32 0
  %4547 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str565.c, i8* %4546)
  %4548 = call i64 @sem_diag(%nyx_string* %4522, %nyx_string* %4545, %nyx_string* %4547)
  ret i1 0
else899:
  br label %merge900
merge900:
  br label %merge897
else896:
  br label %merge897
merge897:
  %4549 = load { i64, i8* }*, { i64, i8* }** %4487
  %4550 = call i1 @ty_is_unknown({ i64, i8* }* %4549)
  %4551 = xor i1 %4550, true
  br i1 %4551, label %then901, label %else902
then901:
  %4552 = load { i64, i8* }*, { i64, i8* }** %4487
  %4553 = call %nyx_string* @ty_kind({ i64, i8* }* %4552)
  %4554 = alloca %nyx_string*
  store %nyx_string* %4553, %nyx_string** %4554
  %4555 = load %nyx_string*, %nyx_string** %4554
  %4556 = getelementptr [7 x i8], [7 x i8]* @.str566, i32 0, i32 0
  %4557 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str566.c, i8* %4556)
  %4558 = call i1 @nyx_string_equals(%nyx_string* %4555, %nyx_string* %4557)
  %4559 = xor i1 %4558, true
  br i1 %4559, label %then904, label %else905
then904:
  %4560 = getelementptr [8 x i8], [8 x i8]* @.str567, i32 0, i32 0
  %4561 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str567.c, i8* %4560)
  %4562 = getelementptr [22 x i8], [22 x i8]* @.str568, i32 0, i32 0
  %4563 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str568.c, i8* %4562)
  %4564 = load %nyx_string*, %nyx_string** %4469
  %4565 = call %nyx_string* @op_symbol(%nyx_string* %4564)
  %4566 = call %nyx_string* @nyx_string_concat(%nyx_string* %4563, %nyx_string* %4565)
  %4567 = getelementptr [28 x i8], [28 x i8]* @.str569, i32 0, i32 0
  %4568 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str569.c, i8* %4567)
  %4569 = call %nyx_string* @nyx_string_concat(%nyx_string* %4566, %nyx_string* %4568)
  %4570 = load { i64, i8* }*, { i64, i8* }** %4487
  %4571 = call %nyx_string* @ty_to_str({ i64, i8* }* %4570)
  %4572 = call %nyx_string* @nyx_string_concat(%nyx_string* %4569, %nyx_string* %4571)
  %4573 = getelementptr [19 x i8], [19 x i8]* @.str570, i32 0, i32 0
  %4574 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str570.c, i8* %4573)
  %4575 = load %nyx_string*, %nyx_string** %4469
  %4576 = call %nyx_string* @op_symbol(%nyx_string* %4575)
  %4577 = call %nyx_string* @nyx_string_concat(%nyx_string* %4574, %nyx_string* %4576)
  %4578 = getelementptr [21 x i8], [21 x i8]* @.str571, i32 0, i32 0
  %4579 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str571.c, i8* %4578)
  %4580 = call %nyx_string* @nyx_string_concat(%nyx_string* %4577, %nyx_string* %4579)
  %4581 = load { i64, i8* }*, { i64, i8* }** %4487
  %4582 = call %nyx_string* @ty_to_str({ i64, i8* }* %4581)
  %4583 = call %nyx_string* @nyx_string_concat(%nyx_string* %4580, %nyx_string* %4582)
  %4584 = call %nyx_string* @msg(%nyx_string* %4572, %nyx_string* %4583)
  %4585 = getelementptr [1 x i8], [1 x i8]* @.str572, i32 0, i32 0
  %4586 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str572.c, i8* %4585)
  %4587 = call i64 @sem_diag(%nyx_string* %4561, %nyx_string* %4584, %nyx_string* %4586)
  ret i1 0
else905:
  br label %merge906
merge906:
  br label %merge903
else902:
  br label %merge903
merge903:
  br label %merge894
else893:
  br label %merge894
merge894:
  %4588 = alloca i1
  store i1 true, i1* %4588
  %4589 = alloca i1
  store i1 true, i1* %4589
  %4590 = alloca i1
  store i1 true, i1* %4590
  %4591 = alloca i1
  store i1 true, i1* %4591
  %4592 = load %nyx_string*, %nyx_string** %4469
  %4593 = getelementptr [5 x i8], [5 x i8]* @.str573, i32 0, i32 0
  %4594 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str573.c, i8* %4593)
  %4595 = call i1 @nyx_string_equals(%nyx_string* %4592, %nyx_string* %4594)
  br i1 %4595, label %sc_or_end908, label %sc_or_rhs907
sc_or_rhs907:
  %4596 = load %nyx_string*, %nyx_string** %4469
  %4597 = getelementptr [6 x i8], [6 x i8]* @.str574, i32 0, i32 0
  %4598 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str574.c, i8* %4597)
  %4599 = call i1 @nyx_string_equals(%nyx_string* %4596, %nyx_string* %4598)
  store i1 %4599, i1* %4591
  br label %sc_or_end908
sc_or_end908:
  %4600 = load i1, i1* %4591
  br i1 %4600, label %sc_or_end910, label %sc_or_rhs909
sc_or_rhs909:
  %4601 = load %nyx_string*, %nyx_string** %4469
  %4602 = getelementptr [5 x i8], [5 x i8]* @.str575, i32 0, i32 0
  %4603 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str575.c, i8* %4602)
  %4604 = call i1 @nyx_string_equals(%nyx_string* %4601, %nyx_string* %4603)
  store i1 %4604, i1* %4590
  br label %sc_or_end910
sc_or_end910:
  %4605 = load i1, i1* %4590
  br i1 %4605, label %sc_or_end912, label %sc_or_rhs911
sc_or_rhs911:
  %4606 = load %nyx_string*, %nyx_string** %4469
  %4607 = getelementptr [6 x i8], [6 x i8]* @.str576, i32 0, i32 0
  %4608 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str576.c, i8* %4607)
  %4609 = call i1 @nyx_string_equals(%nyx_string* %4606, %nyx_string* %4608)
  store i1 %4609, i1* %4589
  br label %sc_or_end912
sc_or_end912:
  %4610 = load i1, i1* %4589
  br i1 %4610, label %sc_or_end914, label %sc_or_rhs913
sc_or_rhs913:
  %4611 = load %nyx_string*, %nyx_string** %4469
  %4612 = getelementptr [8 x i8], [8 x i8]* @.str577, i32 0, i32 0
  %4613 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str577.c, i8* %4612)
  %4614 = call i1 @nyx_string_equals(%nyx_string* %4611, %nyx_string* %4613)
  store i1 %4614, i1* %4588
  br label %sc_or_end914
sc_or_end914:
  %4615 = load i1, i1* %4588
  br i1 %4615, label %then915, label %else916
then915:
  %4616 = getelementptr [1 x i8], [1 x i8]* @.str578, i32 0, i32 0
  %4617 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str578.c, i8* %4616)
  %4618 = alloca %nyx_string*
  store %nyx_string* %4617, %nyx_string** %4618
  %4619 = load %nyx_string*, %nyx_string** %4469
  %4620 = getelementptr [5 x i8], [5 x i8]* @.str579, i32 0, i32 0
  %4621 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str579.c, i8* %4620)
  %4622 = call i1 @nyx_string_equals(%nyx_string* %4619, %nyx_string* %4621)
  br i1 %4622, label %then918, label %else919
then918:
  %4623 = getelementptr [4 x i8], [4 x i8]* @.str580, i32 0, i32 0
  %4624 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str580.c, i8* %4623)
  store %nyx_string* %4624, %nyx_string** %4618
  br label %merge920
else919:
  br label %merge920
merge920:
  %4625 = load %nyx_string*, %nyx_string** %4469
  %4626 = getelementptr [6 x i8], [6 x i8]* @.str581, i32 0, i32 0
  %4627 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str581.c, i8* %4626)
  %4628 = call i1 @nyx_string_equals(%nyx_string* %4625, %nyx_string* %4627)
  br i1 %4628, label %then921, label %else922
then921:
  %4629 = getelementptr [4 x i8], [4 x i8]* @.str582, i32 0, i32 0
  %4630 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str582.c, i8* %4629)
  store %nyx_string* %4630, %nyx_string** %4618
  br label %merge923
else922:
  br label %merge923
merge923:
  %4631 = load %nyx_string*, %nyx_string** %4469
  %4632 = getelementptr [5 x i8], [5 x i8]* @.str583, i32 0, i32 0
  %4633 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str583.c, i8* %4632)
  %4634 = call i1 @nyx_string_equals(%nyx_string* %4631, %nyx_string* %4633)
  br i1 %4634, label %then924, label %else925
then924:
  %4635 = getelementptr [4 x i8], [4 x i8]* @.str584, i32 0, i32 0
  %4636 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str584.c, i8* %4635)
  store %nyx_string* %4636, %nyx_string** %4618
  br label %merge926
else925:
  br label %merge926
merge926:
  %4637 = load %nyx_string*, %nyx_string** %4469
  %4638 = getelementptr [6 x i8], [6 x i8]* @.str585, i32 0, i32 0
  %4639 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str585.c, i8* %4638)
  %4640 = call i1 @nyx_string_equals(%nyx_string* %4637, %nyx_string* %4639)
  br i1 %4640, label %then927, label %else928
then927:
  %4641 = getelementptr [4 x i8], [4 x i8]* @.str586, i32 0, i32 0
  %4642 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str586.c, i8* %4641)
  store %nyx_string* %4642, %nyx_string** %4618
  br label %merge929
else928:
  br label %merge929
merge929:
  %4643 = load %nyx_string*, %nyx_string** %4469
  %4644 = getelementptr [8 x i8], [8 x i8]* @.str587, i32 0, i32 0
  %4645 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str587.c, i8* %4644)
  %4646 = call i1 @nyx_string_equals(%nyx_string* %4643, %nyx_string* %4645)
  br i1 %4646, label %then930, label %else931
then930:
  %4647 = getelementptr [4 x i8], [4 x i8]* @.str588, i32 0, i32 0
  %4648 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str588.c, i8* %4647)
  store %nyx_string* %4648, %nyx_string** %4618
  br label %merge932
else931:
  br label %merge932
merge932:
  %4649 = load { i64, i8* }*, { i64, i8* }** %4484
  %4650 = call i1 @ty_is_unknown({ i64, i8* }* %4649)
  %4651 = xor i1 %4650, true
  br i1 %4651, label %then933, label %else934
then933:
  %4652 = load { i64, i8* }*, { i64, i8* }** %4484
  %4653 = call %nyx_string* @ty_kind({ i64, i8* }* %4652)
  %4654 = alloca %nyx_string*
  store %nyx_string* %4653, %nyx_string** %4654
  %4655 = alloca i1
  store i1 true, i1* %4655
  %4656 = load %nyx_string*, %nyx_string** %4654
  %4657 = getelementptr [9 x i8], [9 x i8]* @.str589, i32 0, i32 0
  %4658 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str589.c, i8* %4657)
  %4659 = call i1 @nyx_string_equals(%nyx_string* %4656, %nyx_string* %4658)
  br i1 %4659, label %sc_or_end937, label %sc_or_rhs936
sc_or_rhs936:
  %4660 = load %nyx_string*, %nyx_string** %4654
  %4661 = getelementptr [7 x i8], [7 x i8]* @.str590, i32 0, i32 0
  %4662 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str590.c, i8* %4661)
  %4663 = call i1 @nyx_string_equals(%nyx_string* %4660, %nyx_string* %4662)
  store i1 %4663, i1* %4655
  br label %sc_or_end937
sc_or_end937:
  %4664 = load i1, i1* %4655
  br i1 %4664, label %then938, label %else939
then938:
  %4665 = load { i64, i8* }*, { i64, i8* }** %4484
  %4666 = call i64 @nyx_array_get({ i64, i8* }* %4665, i64 1)
  %4667 = inttoptr i64 %4666 to %nyx_string*
  %4668 = alloca %nyx_string*
  store %nyx_string* %4667, %nyx_string** %4668
  %4669 = load %nyx_string*, %nyx_string** %4668
  %4670 = load %nyx_string*, %nyx_string** %4618
  %4671 = call i1 @type_implements_trait(%nyx_string* %4669, %nyx_string* %4670)
  %4672 = xor i1 %4671, true
  br i1 %4672, label %then941, label %else942
then941:
  %4673 = load %nyx_string*, %nyx_string** %4668
  %4674 = call i1 @type_has_any_local_impl(%nyx_string* %4673)
  br i1 %4674, label %then944, label %else945
then944:
  %4675 = getelementptr [8 x i8], [8 x i8]* @.str591, i32 0, i32 0
  %4676 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str591.c, i8* %4675)
  %4677 = getelementptr [27 x i8], [27 x i8]* @.str592, i32 0, i32 0
  %4678 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str592.c, i8* %4677)
  %4679 = load %nyx_string*, %nyx_string** %4469
  %4680 = call %nyx_string* @op_symbol(%nyx_string* %4679)
  %4681 = call %nyx_string* @nyx_string_concat(%nyx_string* %4678, %nyx_string* %4680)
  %4682 = getelementptr [21 x i8], [21 x i8]* @.str593, i32 0, i32 0
  %4683 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str593.c, i8* %4682)
  %4684 = call %nyx_string* @nyx_string_concat(%nyx_string* %4681, %nyx_string* %4683)
  %4685 = load %nyx_string*, %nyx_string** %4618
  %4686 = call %nyx_string* @nyx_string_concat(%nyx_string* %4684, %nyx_string* %4685)
  %4687 = getelementptr [10 x i8], [10 x i8]* @.str594, i32 0, i32 0
  %4688 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str594.c, i8* %4687)
  %4689 = call %nyx_string* @nyx_string_concat(%nyx_string* %4686, %nyx_string* %4688)
  %4690 = load %nyx_string*, %nyx_string** %4668
  %4691 = call %nyx_string* @nyx_string_concat(%nyx_string* %4689, %nyx_string* %4690)
  %4692 = getelementptr [13 x i8], [13 x i8]* @.str595, i32 0, i32 0
  %4693 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str595.c, i8* %4692)
  %4694 = call %nyx_string* @nyx_string_concat(%nyx_string* %4691, %nyx_string* %4693)
  %4695 = getelementptr [18 x i8], [18 x i8]* @.str596, i32 0, i32 0
  %4696 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str596.c, i8* %4695)
  %4697 = load %nyx_string*, %nyx_string** %4469
  %4698 = call %nyx_string* @op_symbol(%nyx_string* %4697)
  %4699 = call %nyx_string* @nyx_string_concat(%nyx_string* %4696, %nyx_string* %4698)
  %4700 = getelementptr [19 x i8], [19 x i8]* @.str597, i32 0, i32 0
  %4701 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str597.c, i8* %4700)
  %4702 = call %nyx_string* @nyx_string_concat(%nyx_string* %4699, %nyx_string* %4701)
  %4703 = load %nyx_string*, %nyx_string** %4618
  %4704 = call %nyx_string* @nyx_string_concat(%nyx_string* %4702, %nyx_string* %4703)
  %4705 = getelementptr [9 x i8], [9 x i8]* @.str598, i32 0, i32 0
  %4706 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str598.c, i8* %4705)
  %4707 = call %nyx_string* @nyx_string_concat(%nyx_string* %4704, %nyx_string* %4706)
  %4708 = load %nyx_string*, %nyx_string** %4668
  %4709 = call %nyx_string* @nyx_string_concat(%nyx_string* %4707, %nyx_string* %4708)
  %4710 = getelementptr [11 x i8], [11 x i8]* @.str599, i32 0, i32 0
  %4711 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str599.c, i8* %4710)
  %4712 = call %nyx_string* @nyx_string_concat(%nyx_string* %4709, %nyx_string* %4711)
  %4713 = call %nyx_string* @msg(%nyx_string* %4694, %nyx_string* %4712)
  %4714 = getelementptr [1 x i8], [1 x i8]* @.str600, i32 0, i32 0
  %4715 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str600.c, i8* %4714)
  %4716 = call i64 @sem_diag(%nyx_string* %4676, %nyx_string* %4713, %nyx_string* %4715)
  ret i1 0
else945:
  br label %merge946
merge946:
  br label %merge943
else942:
  br label %merge943
merge943:
  br label %merge940
else939:
  br label %merge940
merge940:
  br label %merge935
else934:
  br label %merge935
merge935:
  %4717 = load { i64, i8* }*, { i64, i8* }** %4487
  %4718 = call i1 @ty_is_unknown({ i64, i8* }* %4717)
  %4719 = xor i1 %4718, true
  br i1 %4719, label %then947, label %else948
then947:
  %4720 = load { i64, i8* }*, { i64, i8* }** %4487
  %4721 = call %nyx_string* @ty_kind({ i64, i8* }* %4720)
  %4722 = alloca %nyx_string*
  store %nyx_string* %4721, %nyx_string** %4722
  %4723 = alloca i1
  store i1 true, i1* %4723
  %4724 = load %nyx_string*, %nyx_string** %4722
  %4725 = getelementptr [9 x i8], [9 x i8]* @.str601, i32 0, i32 0
  %4726 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str601.c, i8* %4725)
  %4727 = call i1 @nyx_string_equals(%nyx_string* %4724, %nyx_string* %4726)
  br i1 %4727, label %sc_or_end951, label %sc_or_rhs950
sc_or_rhs950:
  %4728 = load %nyx_string*, %nyx_string** %4722
  %4729 = getelementptr [7 x i8], [7 x i8]* @.str602, i32 0, i32 0
  %4730 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str602.c, i8* %4729)
  %4731 = call i1 @nyx_string_equals(%nyx_string* %4728, %nyx_string* %4730)
  store i1 %4731, i1* %4723
  br label %sc_or_end951
sc_or_end951:
  %4732 = load i1, i1* %4723
  br i1 %4732, label %then952, label %else953
then952:
  %4733 = load { i64, i8* }*, { i64, i8* }** %4487
  %4734 = call i64 @nyx_array_get({ i64, i8* }* %4733, i64 1)
  %4735 = inttoptr i64 %4734 to %nyx_string*
  %4736 = alloca %nyx_string*
  store %nyx_string* %4735, %nyx_string** %4736
  %4737 = load %nyx_string*, %nyx_string** %4736
  %4738 = load %nyx_string*, %nyx_string** %4618
  %4739 = call i1 @type_implements_trait(%nyx_string* %4737, %nyx_string* %4738)
  %4740 = xor i1 %4739, true
  br i1 %4740, label %then955, label %else956
then955:
  %4741 = load %nyx_string*, %nyx_string** %4736
  %4742 = call i1 @type_has_any_local_impl(%nyx_string* %4741)
  br i1 %4742, label %then958, label %else959
then958:
  %4743 = getelementptr [8 x i8], [8 x i8]* @.str603, i32 0, i32 0
  %4744 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str603.c, i8* %4743)
  %4745 = getelementptr [25 x i8], [25 x i8]* @.str604, i32 0, i32 0
  %4746 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str604.c, i8* %4745)
  %4747 = load %nyx_string*, %nyx_string** %4469
  %4748 = call %nyx_string* @op_symbol(%nyx_string* %4747)
  %4749 = call %nyx_string* @nyx_string_concat(%nyx_string* %4746, %nyx_string* %4748)
  %4750 = getelementptr [21 x i8], [21 x i8]* @.str605, i32 0, i32 0
  %4751 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str605.c, i8* %4750)
  %4752 = call %nyx_string* @nyx_string_concat(%nyx_string* %4749, %nyx_string* %4751)
  %4753 = load %nyx_string*, %nyx_string** %4618
  %4754 = call %nyx_string* @nyx_string_concat(%nyx_string* %4752, %nyx_string* %4753)
  %4755 = getelementptr [10 x i8], [10 x i8]* @.str606, i32 0, i32 0
  %4756 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str606.c, i8* %4755)
  %4757 = call %nyx_string* @nyx_string_concat(%nyx_string* %4754, %nyx_string* %4756)
  %4758 = load %nyx_string*, %nyx_string** %4736
  %4759 = call %nyx_string* @nyx_string_concat(%nyx_string* %4757, %nyx_string* %4758)
  %4760 = getelementptr [13 x i8], [13 x i8]* @.str607, i32 0, i32 0
  %4761 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str607.c, i8* %4760)
  %4762 = call %nyx_string* @nyx_string_concat(%nyx_string* %4759, %nyx_string* %4761)
  %4763 = getelementptr [19 x i8], [19 x i8]* @.str608, i32 0, i32 0
  %4764 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str608.c, i8* %4763)
  %4765 = load %nyx_string*, %nyx_string** %4469
  %4766 = call %nyx_string* @op_symbol(%nyx_string* %4765)
  %4767 = call %nyx_string* @nyx_string_concat(%nyx_string* %4764, %nyx_string* %4766)
  %4768 = getelementptr [19 x i8], [19 x i8]* @.str609, i32 0, i32 0
  %4769 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str609.c, i8* %4768)
  %4770 = call %nyx_string* @nyx_string_concat(%nyx_string* %4767, %nyx_string* %4769)
  %4771 = load %nyx_string*, %nyx_string** %4618
  %4772 = call %nyx_string* @nyx_string_concat(%nyx_string* %4770, %nyx_string* %4771)
  %4773 = getelementptr [9 x i8], [9 x i8]* @.str610, i32 0, i32 0
  %4774 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str610.c, i8* %4773)
  %4775 = call %nyx_string* @nyx_string_concat(%nyx_string* %4772, %nyx_string* %4774)
  %4776 = load %nyx_string*, %nyx_string** %4736
  %4777 = call %nyx_string* @nyx_string_concat(%nyx_string* %4775, %nyx_string* %4776)
  %4778 = getelementptr [11 x i8], [11 x i8]* @.str611, i32 0, i32 0
  %4779 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str611.c, i8* %4778)
  %4780 = call %nyx_string* @nyx_string_concat(%nyx_string* %4777, %nyx_string* %4779)
  %4781 = call %nyx_string* @msg(%nyx_string* %4762, %nyx_string* %4780)
  %4782 = getelementptr [1 x i8], [1 x i8]* @.str612, i32 0, i32 0
  %4783 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str612.c, i8* %4782)
  %4784 = call i64 @sem_diag(%nyx_string* %4744, %nyx_string* %4781, %nyx_string* %4783)
  ret i1 0
else959:
  br label %merge960
merge960:
  br label %merge957
else956:
  br label %merge957
merge957:
  br label %merge954
else953:
  br label %merge954
merge954:
  br label %merge949
else948:
  br label %merge949
merge949:
  br label %merge917
else916:
  br label %merge917
merge917:
  %4785 = alloca i1
  store i1 true, i1* %4785
  %4786 = alloca i1
  store i1 true, i1* %4786
  %4787 = alloca i1
  store i1 true, i1* %4787
  %4788 = load %nyx_string*, %nyx_string** %4469
  %4789 = getelementptr [5 x i8], [5 x i8]* @.str613, i32 0, i32 0
  %4790 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str613.c, i8* %4789)
  %4791 = call i1 @nyx_string_equals(%nyx_string* %4788, %nyx_string* %4790)
  br i1 %4791, label %sc_or_end962, label %sc_or_rhs961
sc_or_rhs961:
  %4792 = load %nyx_string*, %nyx_string** %4469
  %4793 = getelementptr [8 x i8], [8 x i8]* @.str614, i32 0, i32 0
  %4794 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str614.c, i8* %4793)
  %4795 = call i1 @nyx_string_equals(%nyx_string* %4792, %nyx_string* %4794)
  store i1 %4795, i1* %4787
  br label %sc_or_end962
sc_or_end962:
  %4796 = load i1, i1* %4787
  br i1 %4796, label %sc_or_end964, label %sc_or_rhs963
sc_or_rhs963:
  %4797 = load %nyx_string*, %nyx_string** %4469
  %4798 = getelementptr [11 x i8], [11 x i8]* @.str615, i32 0, i32 0
  %4799 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str615.c, i8* %4798)
  %4800 = call i1 @nyx_string_equals(%nyx_string* %4797, %nyx_string* %4799)
  store i1 %4800, i1* %4786
  br label %sc_or_end964
sc_or_end964:
  %4801 = load i1, i1* %4786
  br i1 %4801, label %sc_or_end966, label %sc_or_rhs965
sc_or_rhs965:
  %4802 = load %nyx_string*, %nyx_string** %4469
  %4803 = getelementptr [14 x i8], [14 x i8]* @.str616, i32 0, i32 0
  %4804 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str616.c, i8* %4803)
  %4805 = call i1 @nyx_string_equals(%nyx_string* %4802, %nyx_string* %4804)
  store i1 %4805, i1* %4785
  br label %sc_or_end966
sc_or_end966:
  %4806 = load i1, i1* %4785
  br i1 %4806, label %then967, label %else968
then967:
  %4807 = load { i64, i8* }*, { i64, i8* }** %4484
  %4808 = call i1 @ty_is_unknown({ i64, i8* }* %4807)
  %4809 = xor i1 %4808, true
  br i1 %4809, label %then970, label %else971
then970:
  %4810 = load { i64, i8* }*, { i64, i8* }** %4484
  %4811 = call %nyx_string* @ty_kind({ i64, i8* }* %4810)
  %4812 = alloca %nyx_string*
  store %nyx_string* %4811, %nyx_string** %4812
  %4813 = alloca i1
  store i1 true, i1* %4813
  %4814 = load %nyx_string*, %nyx_string** %4812
  %4815 = getelementptr [9 x i8], [9 x i8]* @.str617, i32 0, i32 0
  %4816 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str617.c, i8* %4815)
  %4817 = call i1 @nyx_string_equals(%nyx_string* %4814, %nyx_string* %4816)
  br i1 %4817, label %sc_or_end974, label %sc_or_rhs973
sc_or_rhs973:
  %4818 = load %nyx_string*, %nyx_string** %4812
  %4819 = getelementptr [7 x i8], [7 x i8]* @.str618, i32 0, i32 0
  %4820 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str618.c, i8* %4819)
  %4821 = call i1 @nyx_string_equals(%nyx_string* %4818, %nyx_string* %4820)
  store i1 %4821, i1* %4813
  br label %sc_or_end974
sc_or_end974:
  %4822 = load i1, i1* %4813
  br i1 %4822, label %then975, label %else976
then975:
  %4823 = load { i64, i8* }*, { i64, i8* }** %4484
  %4824 = call i64 @nyx_array_get({ i64, i8* }* %4823, i64 1)
  %4825 = inttoptr i64 %4824 to %nyx_string*
  %4826 = alloca %nyx_string*
  store %nyx_string* %4825, %nyx_string** %4826
  %4827 = load %nyx_string*, %nyx_string** %4826
  %4828 = getelementptr [11 x i8], [11 x i8]* @.str619, i32 0, i32 0
  %4829 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str619.c, i8* %4828)
  %4830 = call i1 @type_implements_trait(%nyx_string* %4827, %nyx_string* %4829)
  %4831 = xor i1 %4830, true
  br i1 %4831, label %then978, label %else979
then978:
  %4832 = load %nyx_string*, %nyx_string** %4826
  %4833 = call i1 @type_has_any_local_impl(%nyx_string* %4832)
  br i1 %4833, label %then981, label %else982
then981:
  %4834 = getelementptr [8 x i8], [8 x i8]* @.str620, i32 0, i32 0
  %4835 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str620.c, i8* %4834)
  %4836 = getelementptr [27 x i8], [27 x i8]* @.str621, i32 0, i32 0
  %4837 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str621.c, i8* %4836)
  %4838 = load %nyx_string*, %nyx_string** %4469
  %4839 = call %nyx_string* @op_symbol(%nyx_string* %4838)
  %4840 = call %nyx_string* @nyx_string_concat(%nyx_string* %4837, %nyx_string* %4839)
  %4841 = getelementptr [40 x i8], [40 x i8]* @.str622, i32 0, i32 0
  %4842 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str622.c, i8* %4841)
  %4843 = call %nyx_string* @nyx_string_concat(%nyx_string* %4840, %nyx_string* %4842)
  %4844 = load %nyx_string*, %nyx_string** %4826
  %4845 = call %nyx_string* @nyx_string_concat(%nyx_string* %4843, %nyx_string* %4844)
  %4846 = getelementptr [13 x i8], [13 x i8]* @.str623, i32 0, i32 0
  %4847 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str623.c, i8* %4846)
  %4848 = call %nyx_string* @nyx_string_concat(%nyx_string* %4845, %nyx_string* %4847)
  %4849 = getelementptr [18 x i8], [18 x i8]* @.str624, i32 0, i32 0
  %4850 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str624.c, i8* %4849)
  %4851 = load %nyx_string*, %nyx_string** %4469
  %4852 = call %nyx_string* @op_symbol(%nyx_string* %4851)
  %4853 = call %nyx_string* @nyx_string_concat(%nyx_string* %4850, %nyx_string* %4852)
  %4854 = getelementptr [37 x i8], [37 x i8]* @.str625, i32 0, i32 0
  %4855 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str625.c, i8* %4854)
  %4856 = call %nyx_string* @nyx_string_concat(%nyx_string* %4853, %nyx_string* %4855)
  %4857 = load %nyx_string*, %nyx_string** %4826
  %4858 = call %nyx_string* @nyx_string_concat(%nyx_string* %4856, %nyx_string* %4857)
  %4859 = getelementptr [11 x i8], [11 x i8]* @.str626, i32 0, i32 0
  %4860 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str626.c, i8* %4859)
  %4861 = call %nyx_string* @nyx_string_concat(%nyx_string* %4858, %nyx_string* %4860)
  %4862 = call %nyx_string* @msg(%nyx_string* %4848, %nyx_string* %4861)
  %4863 = getelementptr [1 x i8], [1 x i8]* @.str627, i32 0, i32 0
  %4864 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str627.c, i8* %4863)
  %4865 = call i64 @sem_diag(%nyx_string* %4835, %nyx_string* %4862, %nyx_string* %4864)
  ret i1 0
else982:
  br label %merge983
merge983:
  br label %merge980
else979:
  br label %merge980
merge980:
  br label %merge977
else976:
  br label %merge977
merge977:
  br label %merge972
else971:
  br label %merge972
merge972:
  %4866 = load { i64, i8* }*, { i64, i8* }** %4487
  %4867 = call i1 @ty_is_unknown({ i64, i8* }* %4866)
  %4868 = xor i1 %4867, true
  br i1 %4868, label %then984, label %else985
then984:
  %4869 = load { i64, i8* }*, { i64, i8* }** %4487
  %4870 = call %nyx_string* @ty_kind({ i64, i8* }* %4869)
  %4871 = alloca %nyx_string*
  store %nyx_string* %4870, %nyx_string** %4871
  %4872 = alloca i1
  store i1 true, i1* %4872
  %4873 = load %nyx_string*, %nyx_string** %4871
  %4874 = getelementptr [9 x i8], [9 x i8]* @.str628, i32 0, i32 0
  %4875 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str628.c, i8* %4874)
  %4876 = call i1 @nyx_string_equals(%nyx_string* %4873, %nyx_string* %4875)
  br i1 %4876, label %sc_or_end988, label %sc_or_rhs987
sc_or_rhs987:
  %4877 = load %nyx_string*, %nyx_string** %4871
  %4878 = getelementptr [7 x i8], [7 x i8]* @.str629, i32 0, i32 0
  %4879 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str629.c, i8* %4878)
  %4880 = call i1 @nyx_string_equals(%nyx_string* %4877, %nyx_string* %4879)
  store i1 %4880, i1* %4872
  br label %sc_or_end988
sc_or_end988:
  %4881 = load i1, i1* %4872
  br i1 %4881, label %then989, label %else990
then989:
  %4882 = load { i64, i8* }*, { i64, i8* }** %4487
  %4883 = call i64 @nyx_array_get({ i64, i8* }* %4882, i64 1)
  %4884 = inttoptr i64 %4883 to %nyx_string*
  %4885 = alloca %nyx_string*
  store %nyx_string* %4884, %nyx_string** %4885
  %4886 = load %nyx_string*, %nyx_string** %4885
  %4887 = getelementptr [11 x i8], [11 x i8]* @.str630, i32 0, i32 0
  %4888 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str630.c, i8* %4887)
  %4889 = call i1 @type_implements_trait(%nyx_string* %4886, %nyx_string* %4888)
  %4890 = xor i1 %4889, true
  br i1 %4890, label %then992, label %else993
then992:
  %4891 = load %nyx_string*, %nyx_string** %4885
  %4892 = call i1 @type_has_any_local_impl(%nyx_string* %4891)
  br i1 %4892, label %then995, label %else996
then995:
  %4893 = getelementptr [8 x i8], [8 x i8]* @.str631, i32 0, i32 0
  %4894 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str631.c, i8* %4893)
  %4895 = getelementptr [25 x i8], [25 x i8]* @.str632, i32 0, i32 0
  %4896 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str632.c, i8* %4895)
  %4897 = load %nyx_string*, %nyx_string** %4469
  %4898 = call %nyx_string* @op_symbol(%nyx_string* %4897)
  %4899 = call %nyx_string* @nyx_string_concat(%nyx_string* %4896, %nyx_string* %4898)
  %4900 = getelementptr [40 x i8], [40 x i8]* @.str633, i32 0, i32 0
  %4901 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str633.c, i8* %4900)
  %4902 = call %nyx_string* @nyx_string_concat(%nyx_string* %4899, %nyx_string* %4901)
  %4903 = load %nyx_string*, %nyx_string** %4885
  %4904 = call %nyx_string* @nyx_string_concat(%nyx_string* %4902, %nyx_string* %4903)
  %4905 = getelementptr [13 x i8], [13 x i8]* @.str634, i32 0, i32 0
  %4906 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str634.c, i8* %4905)
  %4907 = call %nyx_string* @nyx_string_concat(%nyx_string* %4904, %nyx_string* %4906)
  %4908 = getelementptr [19 x i8], [19 x i8]* @.str635, i32 0, i32 0
  %4909 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str635.c, i8* %4908)
  %4910 = load %nyx_string*, %nyx_string** %4469
  %4911 = call %nyx_string* @op_symbol(%nyx_string* %4910)
  %4912 = call %nyx_string* @nyx_string_concat(%nyx_string* %4909, %nyx_string* %4911)
  %4913 = getelementptr [37 x i8], [37 x i8]* @.str636, i32 0, i32 0
  %4914 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str636.c, i8* %4913)
  %4915 = call %nyx_string* @nyx_string_concat(%nyx_string* %4912, %nyx_string* %4914)
  %4916 = load %nyx_string*, %nyx_string** %4885
  %4917 = call %nyx_string* @nyx_string_concat(%nyx_string* %4915, %nyx_string* %4916)
  %4918 = getelementptr [11 x i8], [11 x i8]* @.str637, i32 0, i32 0
  %4919 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str637.c, i8* %4918)
  %4920 = call %nyx_string* @nyx_string_concat(%nyx_string* %4917, %nyx_string* %4919)
  %4921 = call %nyx_string* @msg(%nyx_string* %4907, %nyx_string* %4920)
  %4922 = getelementptr [1 x i8], [1 x i8]* @.str638, i32 0, i32 0
  %4923 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str638.c, i8* %4922)
  %4924 = call i64 @sem_diag(%nyx_string* %4894, %nyx_string* %4921, %nyx_string* %4923)
  ret i1 0
else996:
  br label %merge997
merge997:
  br label %merge994
else993:
  br label %merge994
merge994:
  br label %merge991
else990:
  br label %merge991
merge991:
  br label %merge986
else985:
  br label %merge986
merge986:
  br label %merge969
else968:
  br label %merge969
merge969:
  %4925 = alloca i1
  store i1 true, i1* %4925
  %4926 = alloca i1
  store i1 true, i1* %4926
  %4927 = alloca i1
  store i1 true, i1* %4927
  %4928 = alloca i1
  store i1 true, i1* %4928
  %4929 = load %nyx_string*, %nyx_string** %4469
  %4930 = getelementptr [5 x i8], [5 x i8]* @.str639, i32 0, i32 0
  %4931 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str639.c, i8* %4930)
  %4932 = call i1 @nyx_string_equals(%nyx_string* %4929, %nyx_string* %4931)
  br i1 %4932, label %sc_or_end999, label %sc_or_rhs998
sc_or_rhs998:
  %4933 = load %nyx_string*, %nyx_string** %4469
  %4934 = getelementptr [4 x i8], [4 x i8]* @.str640, i32 0, i32 0
  %4935 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str640.c, i8* %4934)
  %4936 = call i1 @nyx_string_equals(%nyx_string* %4933, %nyx_string* %4935)
  store i1 %4936, i1* %4928
  br label %sc_or_end999
sc_or_end999:
  %4937 = load i1, i1* %4928
  br i1 %4937, label %sc_or_end1001, label %sc_or_rhs1000
sc_or_rhs1000:
  %4938 = load %nyx_string*, %nyx_string** %4469
  %4939 = getelementptr [6 x i8], [6 x i8]* @.str641, i32 0, i32 0
  %4940 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str641.c, i8* %4939)
  %4941 = call i1 @nyx_string_equals(%nyx_string* %4938, %nyx_string* %4940)
  store i1 %4941, i1* %4927
  br label %sc_or_end1001
sc_or_end1001:
  %4942 = load i1, i1* %4927
  br i1 %4942, label %sc_or_end1003, label %sc_or_rhs1002
sc_or_rhs1002:
  %4943 = load %nyx_string*, %nyx_string** %4469
  %4944 = getelementptr [11 x i8], [11 x i8]* @.str642, i32 0, i32 0
  %4945 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str642.c, i8* %4944)
  %4946 = call i1 @nyx_string_equals(%nyx_string* %4943, %nyx_string* %4945)
  store i1 %4946, i1* %4926
  br label %sc_or_end1003
sc_or_end1003:
  %4947 = load i1, i1* %4926
  br i1 %4947, label %sc_or_end1005, label %sc_or_rhs1004
sc_or_rhs1004:
  %4948 = load %nyx_string*, %nyx_string** %4469
  %4949 = getelementptr [12 x i8], [12 x i8]* @.str643, i32 0, i32 0
  %4950 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str643.c, i8* %4949)
  %4951 = call i1 @nyx_string_equals(%nyx_string* %4948, %nyx_string* %4950)
  store i1 %4951, i1* %4925
  br label %sc_or_end1005
sc_or_end1005:
  %4952 = load i1, i1* %4925
  br i1 %4952, label %then1006, label %else1007
then1006:
  %4953 = load { i64, i8* }*, { i64, i8* }** %4484
  %4954 = call i1 @ty_is_unknown({ i64, i8* }* %4953)
  %4955 = xor i1 %4954, true
  br i1 %4955, label %then1009, label %else1010
then1009:
  %4956 = load { i64, i8* }*, { i64, i8* }** %4484
  %4957 = call i1 @is_integer_like({ i64, i8* }* %4956)
  %4958 = xor i1 %4957, true
  br i1 %4958, label %then1012, label %else1013
then1012:
  %4959 = getelementptr [8 x i8], [8 x i8]* @.str644, i32 0, i32 0
  %4960 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str644.c, i8* %4959)
  %4961 = getelementptr [24 x i8], [24 x i8]* @.str645, i32 0, i32 0
  %4962 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str645.c, i8* %4961)
  %4963 = load %nyx_string*, %nyx_string** %4469
  %4964 = call %nyx_string* @op_symbol(%nyx_string* %4963)
  %4965 = call %nyx_string* @nyx_string_concat(%nyx_string* %4962, %nyx_string* %4964)
  %4966 = getelementptr [30 x i8], [30 x i8]* @.str646, i32 0, i32 0
  %4967 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str646.c, i8* %4966)
  %4968 = call %nyx_string* @nyx_string_concat(%nyx_string* %4965, %nyx_string* %4967)
  %4969 = load { i64, i8* }*, { i64, i8* }** %4484
  %4970 = call %nyx_string* @ty_to_str({ i64, i8* }* %4969)
  %4971 = call %nyx_string* @nyx_string_concat(%nyx_string* %4968, %nyx_string* %4970)
  %4972 = getelementptr [18 x i8], [18 x i8]* @.str647, i32 0, i32 0
  %4973 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str647.c, i8* %4972)
  %4974 = load %nyx_string*, %nyx_string** %4469
  %4975 = call %nyx_string* @op_symbol(%nyx_string* %4974)
  %4976 = call %nyx_string* @nyx_string_concat(%nyx_string* %4973, %nyx_string* %4975)
  %4977 = getelementptr [27 x i8], [27 x i8]* @.str648, i32 0, i32 0
  %4978 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str648.c, i8* %4977)
  %4979 = call %nyx_string* @nyx_string_concat(%nyx_string* %4976, %nyx_string* %4978)
  %4980 = load { i64, i8* }*, { i64, i8* }** %4484
  %4981 = call %nyx_string* @ty_to_str({ i64, i8* }* %4980)
  %4982 = call %nyx_string* @nyx_string_concat(%nyx_string* %4979, %nyx_string* %4981)
  %4983 = call %nyx_string* @msg(%nyx_string* %4971, %nyx_string* %4982)
  %4984 = getelementptr [1 x i8], [1 x i8]* @.str649, i32 0, i32 0
  %4985 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str649.c, i8* %4984)
  %4986 = call i64 @sem_diag(%nyx_string* %4960, %nyx_string* %4983, %nyx_string* %4985)
  ret i1 0
else1013:
  br label %merge1014
merge1014:
  br label %merge1011
else1010:
  br label %merge1011
merge1011:
  %4987 = load { i64, i8* }*, { i64, i8* }** %4487
  %4988 = call i1 @ty_is_unknown({ i64, i8* }* %4987)
  %4989 = xor i1 %4988, true
  br i1 %4989, label %then1015, label %else1016
then1015:
  %4990 = load { i64, i8* }*, { i64, i8* }** %4487
  %4991 = call i1 @is_integer_like({ i64, i8* }* %4990)
  %4992 = xor i1 %4991, true
  br i1 %4992, label %then1018, label %else1019
then1018:
  %4993 = getelementptr [8 x i8], [8 x i8]* @.str650, i32 0, i32 0
  %4994 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str650.c, i8* %4993)
  %4995 = getelementptr [22 x i8], [22 x i8]* @.str651, i32 0, i32 0
  %4996 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str651.c, i8* %4995)
  %4997 = load %nyx_string*, %nyx_string** %4469
  %4998 = call %nyx_string* @op_symbol(%nyx_string* %4997)
  %4999 = call %nyx_string* @nyx_string_concat(%nyx_string* %4996, %nyx_string* %4998)
  %5000 = getelementptr [30 x i8], [30 x i8]* @.str652, i32 0, i32 0
  %5001 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str652.c, i8* %5000)
  %5002 = call %nyx_string* @nyx_string_concat(%nyx_string* %4999, %nyx_string* %5001)
  %5003 = load { i64, i8* }*, { i64, i8* }** %4487
  %5004 = call %nyx_string* @ty_to_str({ i64, i8* }* %5003)
  %5005 = call %nyx_string* @nyx_string_concat(%nyx_string* %5002, %nyx_string* %5004)
  %5006 = getelementptr [19 x i8], [19 x i8]* @.str653, i32 0, i32 0
  %5007 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str653.c, i8* %5006)
  %5008 = load %nyx_string*, %nyx_string** %4469
  %5009 = call %nyx_string* @op_symbol(%nyx_string* %5008)
  %5010 = call %nyx_string* @nyx_string_concat(%nyx_string* %5007, %nyx_string* %5009)
  %5011 = getelementptr [27 x i8], [27 x i8]* @.str654, i32 0, i32 0
  %5012 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str654.c, i8* %5011)
  %5013 = call %nyx_string* @nyx_string_concat(%nyx_string* %5010, %nyx_string* %5012)
  %5014 = load { i64, i8* }*, { i64, i8* }** %4487
  %5015 = call %nyx_string* @ty_to_str({ i64, i8* }* %5014)
  %5016 = call %nyx_string* @nyx_string_concat(%nyx_string* %5013, %nyx_string* %5015)
  %5017 = call %nyx_string* @msg(%nyx_string* %5005, %nyx_string* %5016)
  %5018 = getelementptr [1 x i8], [1 x i8]* @.str655, i32 0, i32 0
  %5019 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str655.c, i8* %5018)
  %5020 = call i64 @sem_diag(%nyx_string* %4994, %nyx_string* %5017, %nyx_string* %5019)
  ret i1 0
else1019:
  br label %merge1020
merge1020:
  br label %merge1017
else1016:
  br label %merge1017
merge1017:
  br label %merge1008
else1007:
  br label %merge1008
merge1008:
  ret i1 1
}

define internal %nyx_string* @op_symbol(
%nyx_string* %op.param) {
  %op.ptr = alloca %nyx_string*
  store %nyx_string* %op.param, %nyx_string** %op.ptr
  %5021 = load %nyx_string*, %nyx_string** %op.ptr
  %5022 = getelementptr [8 x i8], [8 x i8]* @.str656, i32 0, i32 0
  %5023 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str656.c, i8* %5022)
  %5024 = call i1 @nyx_string_equals(%nyx_string* %5021, %nyx_string* %5023)
  br i1 %5024, label %then1021, label %else1022
then1021:
  %5025 = getelementptr [3 x i8], [3 x i8]* @.str657, i32 0, i32 0
  %5026 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str657.c, i8* %5025)
  ret %nyx_string* %5026
else1022:
  br label %merge1023
merge1023:
  %5027 = load %nyx_string*, %nyx_string** %op.ptr
  %5028 = getelementptr [6 x i8], [6 x i8]* @.str658, i32 0, i32 0
  %5029 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str658.c, i8* %5028)
  %5030 = call i1 @nyx_string_equals(%nyx_string* %5027, %nyx_string* %5029)
  br i1 %5030, label %then1024, label %else1025
then1024:
  %5031 = getelementptr [3 x i8], [3 x i8]* @.str659, i32 0, i32 0
  %5032 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str659.c, i8* %5031)
  ret %nyx_string* %5032
else1025:
  br label %merge1026
merge1026:
  %5033 = load %nyx_string*, %nyx_string** %op.ptr
  %5034 = getelementptr [4 x i8], [4 x i8]* @.str660, i32 0, i32 0
  %5035 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str660.c, i8* %5034)
  %5036 = call i1 @nyx_string_equals(%nyx_string* %5033, %nyx_string* %5035)
  br i1 %5036, label %then1027, label %else1028
then1027:
  %5037 = getelementptr [4 x i8], [4 x i8]* @.str661, i32 0, i32 0
  %5038 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str661.c, i8* %5037)
  ret %nyx_string* %5038
else1028:
  br label %merge1029
merge1029:
  %5039 = load %nyx_string*, %nyx_string** %op.ptr
  %5040 = getelementptr [3 x i8], [3 x i8]* @.str662, i32 0, i32 0
  %5041 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str662.c, i8* %5040)
  %5042 = call i1 @nyx_string_equals(%nyx_string* %5039, %nyx_string* %5041)
  br i1 %5042, label %then1030, label %else1031
then1030:
  %5043 = getelementptr [3 x i8], [3 x i8]* @.str663, i32 0, i32 0
  %5044 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str663.c, i8* %5043)
  ret %nyx_string* %5044
else1031:
  br label %merge1032
merge1032:
  %5045 = load %nyx_string*, %nyx_string** %op.ptr
  %5046 = getelementptr [5 x i8], [5 x i8]* @.str664, i32 0, i32 0
  %5047 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str664.c, i8* %5046)
  %5048 = call i1 @nyx_string_equals(%nyx_string* %5045, %nyx_string* %5047)
  br i1 %5048, label %then1033, label %else1034
then1033:
  %5049 = getelementptr [2 x i8], [2 x i8]* @.str665, i32 0, i32 0
  %5050 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str665.c, i8* %5049)
  ret %nyx_string* %5050
else1034:
  br label %merge1035
merge1035:
  %5051 = load %nyx_string*, %nyx_string** %op.ptr
  %5052 = getelementptr [4 x i8], [4 x i8]* @.str666, i32 0, i32 0
  %5053 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str666.c, i8* %5052)
  %5054 = call i1 @nyx_string_equals(%nyx_string* %5051, %nyx_string* %5053)
  br i1 %5054, label %then1036, label %else1037
then1036:
  %5055 = getelementptr [2 x i8], [2 x i8]* @.str667, i32 0, i32 0
  %5056 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str667.c, i8* %5055)
  ret %nyx_string* %5056
else1037:
  br label %merge1038
merge1038:
  %5057 = load %nyx_string*, %nyx_string** %op.ptr
  %5058 = getelementptr [6 x i8], [6 x i8]* @.str668, i32 0, i32 0
  %5059 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str668.c, i8* %5058)
  %5060 = call i1 @nyx_string_equals(%nyx_string* %5057, %nyx_string* %5059)
  br i1 %5060, label %then1039, label %else1040
then1039:
  %5061 = getelementptr [2 x i8], [2 x i8]* @.str669, i32 0, i32 0
  %5062 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str669.c, i8* %5061)
  ret %nyx_string* %5062
else1040:
  br label %merge1041
merge1041:
  %5063 = load %nyx_string*, %nyx_string** %op.ptr
  %5064 = getelementptr [11 x i8], [11 x i8]* @.str670, i32 0, i32 0
  %5065 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str670.c, i8* %5064)
  %5066 = call i1 @nyx_string_equals(%nyx_string* %5063, %nyx_string* %5065)
  br i1 %5066, label %then1042, label %else1043
then1042:
  %5067 = getelementptr [3 x i8], [3 x i8]* @.str671, i32 0, i32 0
  %5068 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str671.c, i8* %5067)
  ret %nyx_string* %5068
else1043:
  br label %merge1044
merge1044:
  %5069 = load %nyx_string*, %nyx_string** %op.ptr
  %5070 = getelementptr [12 x i8], [12 x i8]* @.str672, i32 0, i32 0
  %5071 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str672.c, i8* %5070)
  %5072 = call i1 @nyx_string_equals(%nyx_string* %5069, %nyx_string* %5071)
  br i1 %5072, label %then1045, label %else1046
then1045:
  %5073 = getelementptr [3 x i8], [3 x i8]* @.str673, i32 0, i32 0
  %5074 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str673.c, i8* %5073)
  ret %nyx_string* %5074
else1046:
  br label %merge1047
merge1047:
  %5075 = load %nyx_string*, %nyx_string** %op.ptr
  %5076 = getelementptr [4 x i8], [4 x i8]* @.str674, i32 0, i32 0
  %5077 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str674.c, i8* %5076)
  %5078 = call i1 @nyx_string_equals(%nyx_string* %5075, %nyx_string* %5077)
  br i1 %5078, label %then1048, label %else1049
then1048:
  %5079 = getelementptr [2 x i8], [2 x i8]* @.str675, i32 0, i32 0
  %5080 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str675.c, i8* %5079)
  ret %nyx_string* %5080
else1049:
  br label %merge1050
merge1050:
  %5081 = load %nyx_string*, %nyx_string** %op.ptr
  %5082 = getelementptr [6 x i8], [6 x i8]* @.str676, i32 0, i32 0
  %5083 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str676.c, i8* %5082)
  %5084 = call i1 @nyx_string_equals(%nyx_string* %5081, %nyx_string* %5083)
  br i1 %5084, label %then1051, label %else1052
then1051:
  %5085 = getelementptr [2 x i8], [2 x i8]* @.str677, i32 0, i32 0
  %5086 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str677.c, i8* %5085)
  ret %nyx_string* %5086
else1052:
  br label %merge1053
merge1053:
  %5087 = load %nyx_string*, %nyx_string** %op.ptr
  %5088 = getelementptr [6 x i8], [6 x i8]* @.str678, i32 0, i32 0
  %5089 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str678.c, i8* %5088)
  %5090 = call i1 @nyx_string_equals(%nyx_string* %5087, %nyx_string* %5089)
  br i1 %5090, label %then1054, label %else1055
then1054:
  %5091 = getelementptr [2 x i8], [2 x i8]* @.str679, i32 0, i32 0
  %5092 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str679.c, i8* %5091)
  ret %nyx_string* %5092
else1055:
  br label %merge1056
merge1056:
  %5093 = load %nyx_string*, %nyx_string** %op.ptr
  %5094 = getelementptr [5 x i8], [5 x i8]* @.str680, i32 0, i32 0
  %5095 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str680.c, i8* %5094)
  %5096 = call i1 @nyx_string_equals(%nyx_string* %5093, %nyx_string* %5095)
  br i1 %5096, label %then1057, label %else1058
then1057:
  %5097 = getelementptr [2 x i8], [2 x i8]* @.str681, i32 0, i32 0
  %5098 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str681.c, i8* %5097)
  ret %nyx_string* %5098
else1058:
  br label %merge1059
merge1059:
  %5099 = load %nyx_string*, %nyx_string** %op.ptr
  %5100 = getelementptr [5 x i8], [5 x i8]* @.str682, i32 0, i32 0
  %5101 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str682.c, i8* %5100)
  %5102 = call i1 @nyx_string_equals(%nyx_string* %5099, %nyx_string* %5101)
  br i1 %5102, label %then1060, label %else1061
then1060:
  %5103 = getelementptr [2 x i8], [2 x i8]* @.str683, i32 0, i32 0
  %5104 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str683.c, i8* %5103)
  ret %nyx_string* %5104
else1061:
  br label %merge1062
merge1062:
  %5105 = load %nyx_string*, %nyx_string** %op.ptr
  %5106 = getelementptr [6 x i8], [6 x i8]* @.str684, i32 0, i32 0
  %5107 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str684.c, i8* %5106)
  %5108 = call i1 @nyx_string_equals(%nyx_string* %5105, %nyx_string* %5107)
  br i1 %5108, label %then1063, label %else1064
then1063:
  %5109 = getelementptr [2 x i8], [2 x i8]* @.str685, i32 0, i32 0
  %5110 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str685.c, i8* %5109)
  ret %nyx_string* %5110
else1064:
  br label %merge1065
merge1065:
  %5111 = load %nyx_string*, %nyx_string** %op.ptr
  %5112 = getelementptr [8 x i8], [8 x i8]* @.str686, i32 0, i32 0
  %5113 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str686.c, i8* %5112)
  %5114 = call i1 @nyx_string_equals(%nyx_string* %5111, %nyx_string* %5113)
  br i1 %5114, label %then1066, label %else1067
then1066:
  %5115 = getelementptr [2 x i8], [2 x i8]* @.str687, i32 0, i32 0
  %5116 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str687.c, i8* %5115)
  ret %nyx_string* %5116
else1067:
  br label %merge1068
merge1068:
  %5117 = load %nyx_string*, %nyx_string** %op.ptr
  %5118 = getelementptr [6 x i8], [6 x i8]* @.str688, i32 0, i32 0
  %5119 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str688.c, i8* %5118)
  %5120 = call i1 @nyx_string_equals(%nyx_string* %5117, %nyx_string* %5119)
  br i1 %5120, label %then1069, label %else1070
then1069:
  %5121 = getelementptr [3 x i8], [3 x i8]* @.str689, i32 0, i32 0
  %5122 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str689.c, i8* %5121)
  ret %nyx_string* %5122
else1070:
  br label %merge1071
merge1071:
  %5123 = load %nyx_string*, %nyx_string** %op.ptr
  %5124 = getelementptr [5 x i8], [5 x i8]* @.str690, i32 0, i32 0
  %5125 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str690.c, i8* %5124)
  %5126 = call i1 @nyx_string_equals(%nyx_string* %5123, %nyx_string* %5125)
  br i1 %5126, label %then1072, label %else1073
then1072:
  %5127 = getelementptr [2 x i8], [2 x i8]* @.str691, i32 0, i32 0
  %5128 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str691.c, i8* %5127)
  ret %nyx_string* %5128
else1073:
  br label %merge1074
merge1074:
  %5129 = load %nyx_string*, %nyx_string** %op.ptr
  %5130 = getelementptr [8 x i8], [8 x i8]* @.str692, i32 0, i32 0
  %5131 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str692.c, i8* %5130)
  %5132 = call i1 @nyx_string_equals(%nyx_string* %5129, %nyx_string* %5131)
  br i1 %5132, label %then1075, label %else1076
then1075:
  %5133 = getelementptr [2 x i8], [2 x i8]* @.str693, i32 0, i32 0
  %5134 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str693.c, i8* %5133)
  ret %nyx_string* %5134
else1076:
  br label %merge1077
merge1077:
  %5135 = load %nyx_string*, %nyx_string** %op.ptr
  %5136 = getelementptr [11 x i8], [11 x i8]* @.str694, i32 0, i32 0
  %5137 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str694.c, i8* %5136)
  %5138 = call i1 @nyx_string_equals(%nyx_string* %5135, %nyx_string* %5137)
  br i1 %5138, label %then1078, label %else1079
then1078:
  %5139 = getelementptr [3 x i8], [3 x i8]* @.str695, i32 0, i32 0
  %5140 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str695.c, i8* %5139)
  ret %nyx_string* %5140
else1079:
  br label %merge1080
merge1080:
  %5141 = load %nyx_string*, %nyx_string** %op.ptr
  %5142 = getelementptr [14 x i8], [14 x i8]* @.str696, i32 0, i32 0
  %5143 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str696.c, i8* %5142)
  %5144 = call i1 @nyx_string_equals(%nyx_string* %5141, %nyx_string* %5143)
  br i1 %5144, label %then1081, label %else1082
then1081:
  %5145 = getelementptr [3 x i8], [3 x i8]* @.str697, i32 0, i32 0
  %5146 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str697.c, i8* %5145)
  ret %nyx_string* %5146
else1082:
  br label %merge1083
merge1083:
  %5147 = load %nyx_string*, %nyx_string** %op.ptr
  ret %nyx_string* %5147
}

define internal i1 @validate_unop(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %5148 = load %ASTNode, %ASTNode* %node.ptr
  %5149 = call %nyx_string* @get_string_at(%ASTNode %5148, i64 0)
  %5150 = alloca %nyx_string*
  store %nyx_string* %5149, %nyx_string** %5150
  %5151 = load %ASTNode, %ASTNode* %node.ptr
  %5152 = call %ASTNode @get_node_at(%ASTNode %5151, i64 1)
  %5153 = alloca %ASTNode
  store %ASTNode %5152, %ASTNode* %5153
  %5154 = load %ASTNode, %ASTNode* %5153
  %5155 = call i1 @validate_node(%ASTNode %5154)
  %5156 = xor i1 %5155, true
  br i1 %5156, label %then1084, label %else1085
then1084:
  ret i1 0
else1085:
  br label %merge1086
merge1086:
  %5157 = load %ASTNode, %ASTNode* %5153
  %5158 = call { i64, i8* }* @ty_of_expr(%ASTNode %5157)
  %5159 = alloca { i64, i8* }*
  store { i64, i8* }* %5158, { i64, i8* }** %5159
  %5160 = load { i64, i8* }*, { i64, i8* }** %5159
  %5161 = call i1 @ty_is_unknown({ i64, i8* }* %5160)
  br i1 %5161, label %then1087, label %else1088
then1087:
  ret i1 1
else1088:
  br label %merge1089
merge1089:
  %5162 = load { i64, i8* }*, { i64, i8* }** %5159
  %5163 = call %nyx_string* @ty_kind({ i64, i8* }* %5162)
  %5164 = alloca %nyx_string*
  store %nyx_string* %5163, %nyx_string** %5164
  %5165 = alloca i1
  store i1 true, i1* %5165
  %5166 = load %nyx_string*, %nyx_string** %5164
  %5167 = getelementptr [9 x i8], [9 x i8]* @.str698, i32 0, i32 0
  %5168 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str698.c, i8* %5167)
  %5169 = call i1 @nyx_string_equals(%nyx_string* %5166, %nyx_string* %5168)
  br i1 %5169, label %sc_or_end1091, label %sc_or_rhs1090
sc_or_rhs1090:
  %5170 = load %nyx_string*, %nyx_string** %5164
  %5171 = getelementptr [7 x i8], [7 x i8]* @.str699, i32 0, i32 0
  %5172 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str699.c, i8* %5171)
  %5173 = call i1 @nyx_string_equals(%nyx_string* %5170, %nyx_string* %5172)
  store i1 %5173, i1* %5165
  br label %sc_or_end1091
sc_or_end1091:
  %5174 = load i1, i1* %5165
  br i1 %5174, label %then1092, label %else1093
then1092:
  %5175 = load { i64, i8* }*, { i64, i8* }** %5159
  %5176 = call i64 @nyx_array_get({ i64, i8* }* %5175, i64 1)
  %5177 = inttoptr i64 %5176 to %nyx_string*
  %5178 = alloca %nyx_string*
  store %nyx_string* %5177, %nyx_string** %5178
  %5179 = getelementptr [1 x i8], [1 x i8]* @.str700, i32 0, i32 0
  %5180 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str700.c, i8* %5179)
  %5181 = alloca %nyx_string*
  store %nyx_string* %5180, %nyx_string** %5181
  %5182 = load %nyx_string*, %nyx_string** %5150
  %5183 = getelementptr [6 x i8], [6 x i8]* @.str701, i32 0, i32 0
  %5184 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str701.c, i8* %5183)
  %5185 = call i1 @nyx_string_equals(%nyx_string* %5182, %nyx_string* %5184)
  br i1 %5185, label %then1095, label %else1096
then1095:
  %5186 = getelementptr [4 x i8], [4 x i8]* @.str702, i32 0, i32 0
  %5187 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str702.c, i8* %5186)
  store %nyx_string* %5187, %nyx_string** %5181
  br label %merge1097
else1096:
  br label %merge1097
merge1097:
  %5188 = load %nyx_string*, %nyx_string** %5150
  %5189 = getelementptr [4 x i8], [4 x i8]* @.str703, i32 0, i32 0
  %5190 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str703.c, i8* %5189)
  %5191 = call i1 @nyx_string_equals(%nyx_string* %5188, %nyx_string* %5190)
  br i1 %5191, label %then1098, label %else1099
then1098:
  %5192 = getelementptr [4 x i8], [4 x i8]* @.str704, i32 0, i32 0
  %5193 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str704.c, i8* %5192)
  store %nyx_string* %5193, %nyx_string** %5181
  br label %merge1100
else1099:
  br label %merge1100
merge1100:
  %5194 = load %nyx_string*, %nyx_string** %5150
  %5195 = getelementptr [6 x i8], [6 x i8]* @.str705, i32 0, i32 0
  %5196 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str705.c, i8* %5195)
  %5197 = call i1 @nyx_string_equals(%nyx_string* %5194, %nyx_string* %5196)
  br i1 %5197, label %then1101, label %else1102
then1101:
  %5198 = getelementptr [7 x i8], [7 x i8]* @.str706, i32 0, i32 0
  %5199 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str706.c, i8* %5198)
  store %nyx_string* %5199, %nyx_string** %5181
  br label %merge1103
else1102:
  br label %merge1103
merge1103:
  %5200 = load %nyx_string*, %nyx_string** %5181
  %5201 = getelementptr [1 x i8], [1 x i8]* @.str707, i32 0, i32 0
  %5202 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str707.c, i8* %5201)
  %5203 = call i1 @nyx_string_equals(%nyx_string* %5200, %nyx_string* %5202)
  %5204 = xor i1 %5203, true
  br i1 %5204, label %then1104, label %else1105
then1104:
  %5205 = load %nyx_string*, %nyx_string** %5178
  %5206 = load %nyx_string*, %nyx_string** %5181
  %5207 = call i1 @type_implements_trait(%nyx_string* %5205, %nyx_string* %5206)
  br i1 %5207, label %then1107, label %else1108
then1107:
  ret i1 1
else1108:
  br label %merge1109
merge1109:
  %5208 = load %nyx_string*, %nyx_string** %5178
  %5209 = call i1 @type_has_any_local_impl(%nyx_string* %5208)
  br i1 %5209, label %then1110, label %else1111
then1110:
  %5210 = getelementptr [8 x i8], [8 x i8]* @.str708, i32 0, i32 0
  %5211 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str708.c, i8* %5210)
  %5212 = getelementptr [17 x i8], [17 x i8]* @.str709, i32 0, i32 0
  %5213 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str709.c, i8* %5212)
  %5214 = load %nyx_string*, %nyx_string** %5150
  %5215 = call %nyx_string* @op_symbol(%nyx_string* %5214)
  %5216 = call %nyx_string* @nyx_string_concat(%nyx_string* %5213, %nyx_string* %5215)
  %5217 = getelementptr [21 x i8], [21 x i8]* @.str710, i32 0, i32 0
  %5218 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str710.c, i8* %5217)
  %5219 = call %nyx_string* @nyx_string_concat(%nyx_string* %5216, %nyx_string* %5218)
  %5220 = load %nyx_string*, %nyx_string** %5181
  %5221 = call %nyx_string* @nyx_string_concat(%nyx_string* %5219, %nyx_string* %5220)
  %5222 = getelementptr [10 x i8], [10 x i8]* @.str711, i32 0, i32 0
  %5223 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str711.c, i8* %5222)
  %5224 = call %nyx_string* @nyx_string_concat(%nyx_string* %5221, %nyx_string* %5223)
  %5225 = load %nyx_string*, %nyx_string** %5178
  %5226 = call %nyx_string* @nyx_string_concat(%nyx_string* %5224, %nyx_string* %5225)
  %5227 = getelementptr [13 x i8], [13 x i8]* @.str712, i32 0, i32 0
  %5228 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str712.c, i8* %5227)
  %5229 = call %nyx_string* @nyx_string_concat(%nyx_string* %5226, %nyx_string* %5228)
  %5230 = getelementptr [13 x i8], [13 x i8]* @.str713, i32 0, i32 0
  %5231 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str713.c, i8* %5230)
  %5232 = load %nyx_string*, %nyx_string** %5150
  %5233 = call %nyx_string* @op_symbol(%nyx_string* %5232)
  %5234 = call %nyx_string* @nyx_string_concat(%nyx_string* %5231, %nyx_string* %5233)
  %5235 = getelementptr [19 x i8], [19 x i8]* @.str714, i32 0, i32 0
  %5236 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str714.c, i8* %5235)
  %5237 = call %nyx_string* @nyx_string_concat(%nyx_string* %5234, %nyx_string* %5236)
  %5238 = load %nyx_string*, %nyx_string** %5181
  %5239 = call %nyx_string* @nyx_string_concat(%nyx_string* %5237, %nyx_string* %5238)
  %5240 = getelementptr [9 x i8], [9 x i8]* @.str715, i32 0, i32 0
  %5241 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str715.c, i8* %5240)
  %5242 = call %nyx_string* @nyx_string_concat(%nyx_string* %5239, %nyx_string* %5241)
  %5243 = load %nyx_string*, %nyx_string** %5178
  %5244 = call %nyx_string* @nyx_string_concat(%nyx_string* %5242, %nyx_string* %5243)
  %5245 = getelementptr [11 x i8], [11 x i8]* @.str716, i32 0, i32 0
  %5246 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str716.c, i8* %5245)
  %5247 = call %nyx_string* @nyx_string_concat(%nyx_string* %5244, %nyx_string* %5246)
  %5248 = call %nyx_string* @msg(%nyx_string* %5229, %nyx_string* %5247)
  %5249 = getelementptr [1 x i8], [1 x i8]* @.str717, i32 0, i32 0
  %5250 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str717.c, i8* %5249)
  %5251 = call i64 @sem_diag(%nyx_string* %5211, %nyx_string* %5248, %nyx_string* %5250)
  ret i1 0
else1111:
  br label %merge1112
merge1112:
  br label %merge1106
else1105:
  br label %merge1106
merge1106:
  ret i1 1
else1093:
  br label %merge1094
merge1094:
  %5252 = load %nyx_string*, %nyx_string** %5150
  %5253 = getelementptr [4 x i8], [4 x i8]* @.str718, i32 0, i32 0
  %5254 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str718.c, i8* %5253)
  %5255 = call i1 @nyx_string_equals(%nyx_string* %5252, %nyx_string* %5254)
  br i1 %5255, label %then1113, label %else1114
then1113:
  %5256 = load { i64, i8* }*, { i64, i8* }** %5159
  %5257 = call %nyx_string* @ty_kind({ i64, i8* }* %5256)
  %5258 = alloca %nyx_string*
  store %nyx_string* %5257, %nyx_string** %5258
  %5259 = load %nyx_string*, %nyx_string** %5258
  %5260 = getelementptr [7 x i8], [7 x i8]* @.str719, i32 0, i32 0
  %5261 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str719.c, i8* %5260)
  %5262 = call i1 @nyx_string_equals(%nyx_string* %5259, %nyx_string* %5261)
  %5263 = xor i1 %5262, true
  br i1 %5263, label %then1116, label %else1117
then1116:
  %5264 = getelementptr [8 x i8], [8 x i8]* @.str720, i32 0, i32 0
  %5265 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str720.c, i8* %5264)
  %5266 = getelementptr [42 x i8], [42 x i8]* @.str721, i32 0, i32 0
  %5267 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str721.c, i8* %5266)
  %5268 = load { i64, i8* }*, { i64, i8* }** %5159
  %5269 = call %nyx_string* @ty_to_str({ i64, i8* }* %5268)
  %5270 = call %nyx_string* @nyx_string_concat(%nyx_string* %5267, %nyx_string* %5269)
  %5271 = getelementptr [34 x i8], [34 x i8]* @.str722, i32 0, i32 0
  %5272 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str722.c, i8* %5271)
  %5273 = load { i64, i8* }*, { i64, i8* }** %5159
  %5274 = call %nyx_string* @ty_to_str({ i64, i8* }* %5273)
  %5275 = call %nyx_string* @nyx_string_concat(%nyx_string* %5272, %nyx_string* %5274)
  %5276 = call %nyx_string* @msg(%nyx_string* %5270, %nyx_string* %5275)
  %5277 = getelementptr [1 x i8], [1 x i8]* @.str723, i32 0, i32 0
  %5278 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str723.c, i8* %5277)
  %5279 = call i64 @sem_diag(%nyx_string* %5265, %nyx_string* %5276, %nyx_string* %5278)
  ret i1 0
else1117:
  br label %merge1118
merge1118:
  br label %merge1115
else1114:
  br label %merge1115
merge1115:
  %5280 = load %nyx_string*, %nyx_string** %5150
  %5281 = getelementptr [6 x i8], [6 x i8]* @.str724, i32 0, i32 0
  %5282 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str724.c, i8* %5281)
  %5283 = call i1 @nyx_string_equals(%nyx_string* %5280, %nyx_string* %5282)
  br i1 %5283, label %then1119, label %else1120
then1119:
  %5284 = load { i64, i8* }*, { i64, i8* }** %5159
  %5285 = call i1 @is_integer_like({ i64, i8* }* %5284)
  %5286 = xor i1 %5285, true
  br i1 %5286, label %then1122, label %else1123
then1122:
  %5287 = getelementptr [8 x i8], [8 x i8]* @.str725, i32 0, i32 0
  %5288 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str725.c, i8* %5287)
  %5289 = getelementptr [44 x i8], [44 x i8]* @.str726, i32 0, i32 0
  %5290 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str726.c, i8* %5289)
  %5291 = load { i64, i8* }*, { i64, i8* }** %5159
  %5292 = call %nyx_string* @ty_to_str({ i64, i8* }* %5291)
  %5293 = call %nyx_string* @nyx_string_concat(%nyx_string* %5290, %nyx_string* %5292)
  %5294 = getelementptr [40 x i8], [40 x i8]* @.str727, i32 0, i32 0
  %5295 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str727.c, i8* %5294)
  %5296 = load { i64, i8* }*, { i64, i8* }** %5159
  %5297 = call %nyx_string* @ty_to_str({ i64, i8* }* %5296)
  %5298 = call %nyx_string* @nyx_string_concat(%nyx_string* %5295, %nyx_string* %5297)
  %5299 = call %nyx_string* @msg(%nyx_string* %5293, %nyx_string* %5298)
  %5300 = getelementptr [1 x i8], [1 x i8]* @.str728, i32 0, i32 0
  %5301 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str728.c, i8* %5300)
  %5302 = call i64 @sem_diag(%nyx_string* %5288, %nyx_string* %5299, %nyx_string* %5301)
  ret i1 0
else1123:
  br label %merge1124
merge1124:
  br label %merge1121
else1120:
  br label %merge1121
merge1121:
  %5303 = load %nyx_string*, %nyx_string** %5150
  %5304 = getelementptr [6 x i8], [6 x i8]* @.str729, i32 0, i32 0
  %5305 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str729.c, i8* %5304)
  %5306 = call i1 @nyx_string_equals(%nyx_string* %5303, %nyx_string* %5305)
  br i1 %5306, label %then1125, label %else1126
then1125:
  %5307 = load { i64, i8* }*, { i64, i8* }** %5159
  %5308 = call i1 @is_numeric_ty({ i64, i8* }* %5307)
  %5309 = xor i1 %5308, true
  br i1 %5309, label %then1128, label %else1129
then1128:
  %5310 = getelementptr [8 x i8], [8 x i8]* @.str730, i32 0, i32 0
  %5311 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str730.c, i8* %5310)
  %5312 = getelementptr [55 x i8], [55 x i8]* @.str731, i32 0, i32 0
  %5313 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str731.c, i8* %5312)
  %5314 = load { i64, i8* }*, { i64, i8* }** %5159
  %5315 = call %nyx_string* @ty_to_str({ i64, i8* }* %5314)
  %5316 = call %nyx_string* @nyx_string_concat(%nyx_string* %5313, %nyx_string* %5315)
  %5317 = getelementptr [43 x i8], [43 x i8]* @.str732, i32 0, i32 0
  %5318 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str732.c, i8* %5317)
  %5319 = load { i64, i8* }*, { i64, i8* }** %5159
  %5320 = call %nyx_string* @ty_to_str({ i64, i8* }* %5319)
  %5321 = call %nyx_string* @nyx_string_concat(%nyx_string* %5318, %nyx_string* %5320)
  %5322 = call %nyx_string* @msg(%nyx_string* %5316, %nyx_string* %5321)
  %5323 = getelementptr [1 x i8], [1 x i8]* @.str733, i32 0, i32 0
  %5324 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str733.c, i8* %5323)
  %5325 = call i64 @sem_diag(%nyx_string* %5311, %nyx_string* %5322, %nyx_string* %5324)
  ret i1 0
else1129:
  br label %merge1130
merge1130:
  br label %merge1127
else1126:
  br label %merge1127
merge1127:
  ret i1 1
}

define internal i64 @try_promote_implicit_generic_call(
%ASTNode %node.param, %nyx_string* %cname.param, { i64, i8* }* %sig_type_params.param, { i64, i8* }* %sig_params.param, { i64, i8* }* %args.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %cname.ptr = alloca %nyx_string*
  store %nyx_string* %cname.param, %nyx_string** %cname.ptr
  %sig_type_params.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %sig_type_params.param, { i64, i8* }** %sig_type_params.ptr
  %sig_params.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %sig_params.param, { i64, i8* }** %sig_params.ptr
  %args.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %args.param, { i64, i8* }** %args.ptr
  %5326 = load %nyx_string*, %nyx_string** %cname.ptr
  %5327 = call %nyx_string* @scope_lookup(%nyx_string* %5326)
  %5328 = getelementptr [3 x i8], [3 x i8]* @.str734, i32 0, i32 0
  %5329 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str734.c, i8* %5328)
  %5330 = call i1 @nyx_string_equals(%nyx_string* %5327, %nyx_string* %5329)
  %5331 = xor i1 %5330, true
  br i1 %5331, label %then1131, label %else1132
then1131:
  ret i64 0
else1132:
  br label %merge1133
merge1133:
  %5332 = call { i64, i8* }* @nyx_array_new_ptr()
  call void @nyx_array_push({ i64, i8* }* %5332, i64 0)
  %5333 = alloca { i64, i8* }*
  store { i64, i8* }* %5332, { i64, i8* }** %5333
  %5334 = load { i64, i8* }*, { i64, i8* }** %sig_type_params.ptr
  %5335 = load { i64, i8* }*, { i64, i8* }** %5333
  %5336 = call { i64, i8* }* @freshen_params({ i64, i8* }* %5334, { i64, i8* }* %5335)
  %5337 = alloca { i64, i8* }*
  store { i64, i8* }* %5336, { i64, i8* }** %5337
  %5338 = load { i64, i8* }*, { i64, i8* }** %5337
  %5339 = call i64 @nyx_array_get({ i64, i8* }* %5338, i64 0)
  %5340 = inttoptr i64 %5339 to { i64, i8* }*
  %5341 = alloca { i64, i8* }*
  store { i64, i8* }* %5340, { i64, i8* }** %5341
  %5342 = load { i64, i8* }*, { i64, i8* }** %5337
  %5343 = call i64 @nyx_array_get({ i64, i8* }* %5342, i64 1)
  %5344 = inttoptr i64 %5343 to { i64, i8* }*
  %5345 = alloca { i64, i8* }*
  store { i64, i8* }* %5344, { i64, i8* }** %5345
  %5346 = call { i64, i8* }* @subst_new()
  %5347 = alloca { i64, i8* }*
  store { i64, i8* }* %5346, { i64, i8* }** %5347
  %5348 = alloca i64
  store i64 0, i64* %5348
  %5349 = getelementptr [8 x i8], [8 x i8]* @.str735, i32 0, i32 0
  %5350 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str735.c, i8* %5349)
  %5351 = alloca %nyx_string*
  store %nyx_string* %5350, %nyx_string** %5351
  %5352 = getelementptr [6 x i8], [6 x i8]* @.str736, i32 0, i32 0
  %5353 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str736.c, i8* %5352)
  %5354 = alloca %nyx_string*
  store %nyx_string* %5353, %nyx_string** %5354
  %5355 = getelementptr [1 x i8], [1 x i8]* @.str737, i32 0, i32 0
  %5356 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str737.c, i8* %5355)
  %5357 = alloca %nyx_string*
  store %nyx_string* %5356, %nyx_string** %5357
  %5358 = getelementptr [12 x i8], [12 x i8]* @.str738, i32 0, i32 0
  %5359 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str738.c, i8* %5358)
  %5360 = alloca %nyx_string*
  store %nyx_string* %5359, %nyx_string** %5360
  %5361 = getelementptr [9 x i8], [9 x i8]* @.str739, i32 0, i32 0
  %5362 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str739.c, i8* %5361)
  %5363 = alloca %nyx_string*
  store %nyx_string* %5362, %nyx_string** %5363
  br label %while_cond1134
while_cond1134:
  %5364 = load i64, i64* %5348
  %5365 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %5366 = call i64 @nyx_array_length({ i64, i8* }* %5365)
  %5367 = icmp slt i64 %5364, %5366
  br i1 %5367, label %while_body1135, label %while_end1136
while_body1135:
  %5368 = load i64, i64* %5348
  %5369 = load { i64, i8* }*, { i64, i8* }** %sig_params.ptr
  %5370 = call i64 @nyx_array_length({ i64, i8* }* %5369)
  %5371 = icmp slt i64 %5368, %5370
  br i1 %5371, label %then1137, label %else1138
then1137:
  %5372 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %5373 = load i64, i64* %5348
  %5374 = call i64 @nyx_array_get({ i64, i8* }* %5372, i64 %5373)
  %5375 = inttoptr i64 %5374 to { i64, i8* }*
  %5376 = call i64 @nyx_array_get({ i64, i8* }* %5375, i64 0)
  %5377 = call i64 @nyx_array_get({ i64, i8* }* %5375, i64 1)
  %5378 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %5375, i64 2)
  %5379 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %5375, i64 3)
  %5380 = inttoptr i64 %5376 to %nyx_string*
  %5381 = inttoptr i64 %5377 to { i64, i8* }*
  %5382 = alloca %ASTNode
  %5383 = getelementptr inbounds %ASTNode, %ASTNode* %5382, i32 0, i32 0
  store %nyx_string* %5380, %nyx_string** %5383
  %5384 = getelementptr inbounds %ASTNode, %ASTNode* %5382, i32 0, i32 1
  store { i64, i8* }* %5381, { i64, i8* }** %5384
  %5385 = getelementptr inbounds %ASTNode, %ASTNode* %5382, i32 0, i32 2
  store i64 %5378, i64* %5385
  %5386 = getelementptr inbounds %ASTNode, %ASTNode* %5382, i32 0, i32 3
  store i64 %5379, i64* %5386
  %5387 = load %ASTNode, %ASTNode* %5382
  %5388 = alloca %ASTNode
  store %ASTNode %5387, %ASTNode* %5388
  %5389 = load { i64, i8* }*, { i64, i8* }** %sig_params.ptr
  %5390 = load i64, i64* %5348
  %5391 = call i64 @nyx_array_get({ i64, i8* }* %5389, i64 %5390)
  %5392 = inttoptr i64 %5391 to { i64, i8* }*
  %5393 = alloca { i64, i8* }*
  store { i64, i8* }* %5392, { i64, i8* }** %5393
  %5394 = load { i64, i8* }*, { i64, i8* }** %5393
  %5395 = call i1 @ty_is_unknown({ i64, i8* }* %5394)
  %5396 = xor i1 %5395, true
  br i1 %5396, label %then1140, label %else1141
then1140:
  %5397 = load %ASTNode, %ASTNode* %5388
  %5398 = call { i64, i8* }* @ty_of_expr(%ASTNode %5397)
  %5399 = alloca { i64, i8* }*
  store { i64, i8* }* %5398, { i64, i8* }** %5399
  %5400 = getelementptr %ASTNode, %ASTNode* %5388, i32 0, i32 0
  %5401 = load %nyx_string*, %nyx_string** %5400
  %5402 = alloca %nyx_string*
  store %nyx_string* %5401, %nyx_string** %5402
  %5403 = load %nyx_string*, %nyx_string** %5402
  %5404 = load %nyx_string*, %nyx_string** %5351
  %5405 = call i1 @nyx_string_equals(%nyx_string* %5403, %nyx_string* %5404)
  br i1 %5405, label %then1143, label %else1144
then1143:
  %5406 = load %ASTNode, %ASTNode* %5388
  %5407 = call %ASTNode @get_node_at(%ASTNode %5406, i64 0)
  %5408 = alloca %ASTNode
  store %ASTNode %5407, %ASTNode* %5408
  %5409 = call { i64, i8* }* @nyx_array_new_ptr()
  %5410 = load %nyx_string*, %nyx_string** %5354
  %5411 = ptrtoint %nyx_string* %5410 to i64
  call void @nyx_array_push({ i64, i8* }* %5409, i64 %5411)
  %5412 = load %ASTNode, %ASTNode* %5408
  %5413 = call { i64, i8* }* @ty_of_expr(%ASTNode %5412)
  %5414 = bitcast { i64, i8* }* %5413 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %5409, i8* %5414)
  %5415 = load %nyx_string*, %nyx_string** %5357
  %5416 = ptrtoint %nyx_string* %5415 to i64
  call void @nyx_array_push({ i64, i8* }* %5409, i64 %5416)
  store { i64, i8* }* %5409, { i64, i8* }** %5399
  br label %merge1145
else1144:
  %5417 = load %nyx_string*, %nyx_string** %5402
  %5418 = load %nyx_string*, %nyx_string** %5360
  %5419 = call i1 @nyx_string_equals(%nyx_string* %5417, %nyx_string* %5418)
  br i1 %5419, label %then1146, label %else1147
then1146:
  %5420 = load %ASTNode, %ASTNode* %5388
  %5421 = call %ASTNode @get_node_at(%ASTNode %5420, i64 0)
  %5422 = alloca %ASTNode
  store %ASTNode %5421, %ASTNode* %5422
  %5423 = call { i64, i8* }* @nyx_array_new_ptr()
  %5424 = load %nyx_string*, %nyx_string** %5363
  %5425 = ptrtoint %nyx_string* %5424 to i64
  call void @nyx_array_push({ i64, i8* }* %5423, i64 %5425)
  %5426 = load %ASTNode, %ASTNode* %5422
  %5427 = call { i64, i8* }* @ty_of_expr(%ASTNode %5426)
  %5428 = bitcast { i64, i8* }* %5427 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %5423, i8* %5428)
  %5429 = load %nyx_string*, %nyx_string** %5357
  %5430 = ptrtoint %nyx_string* %5429 to i64
  call void @nyx_array_push({ i64, i8* }* %5423, i64 %5430)
  store { i64, i8* }* %5423, { i64, i8* }** %5399
  br label %merge1148
else1147:
  br label %merge1148
merge1148:
  br label %merge1145
merge1145:
  %5431 = load { i64, i8* }*, { i64, i8* }** %5399
  %5432 = call i1 @ty_is_unknown({ i64, i8* }* %5431)
  %5433 = xor i1 %5432, true
  br i1 %5433, label %then1149, label %else1150
then1149:
  %5434 = load { i64, i8* }*, { i64, i8* }** %5393
  %5435 = load { i64, i8* }*, { i64, i8* }** %5341
  %5436 = load { i64, i8* }*, { i64, i8* }** %5345
  %5437 = call { i64, i8* }* @subst_apply({ i64, i8* }* %5434, { i64, i8* }* %5435, { i64, i8* }* %5436)
  %5438 = alloca { i64, i8* }*
  store { i64, i8* }* %5437, { i64, i8* }** %5438
  %5439 = load { i64, i8* }*, { i64, i8* }** %5438
  %5440 = load { i64, i8* }*, { i64, i8* }** %5399
  %5441 = load { i64, i8* }*, { i64, i8* }** %5347
  %5442 = call i1 @unify_var({ i64, i8* }* %5439, { i64, i8* }* %5440, { i64, i8* }* %5441)
  br label %merge1151
else1150:
  br label %merge1151
merge1151:
  br label %merge1142
else1141:
  br label %merge1142
merge1142:
  br label %merge1139
else1138:
  br label %merge1139
merge1139:
  %5443 = load i64, i64* %5348
  %5444 = add i64 %5443, 1
  store i64 %5444, i64* %5348
  br label %while_cond1134
while_end1136:
  %5445 = call { i64, i8* }* @nyx_array_new_ptr()
  %5446 = alloca { i64, i8* }*
  store { i64, i8* }* %5445, { i64, i8* }** %5446
  %5447 = alloca i64
  store i64 0, i64* %5447
  %5448 = getelementptr [1 x i8], [1 x i8]* @.str740, i32 0, i32 0
  %5449 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str740.c, i8* %5448)
  %5450 = alloca %nyx_string*
  store %nyx_string* %5449, %nyx_string** %5450
  br label %while_cond1152
while_cond1152:
  %5451 = load i64, i64* %5447
  %5452 = load { i64, i8* }*, { i64, i8* }** %sig_type_params.ptr
  %5453 = call i64 @nyx_array_length({ i64, i8* }* %5452)
  %5454 = icmp slt i64 %5451, %5453
  br i1 %5454, label %while_body1153, label %while_end1154
while_body1153:
  %5455 = load { i64, i8* }*, { i64, i8* }** %5345
  %5456 = load i64, i64* %5447
  %5457 = call i64 @nyx_array_get({ i64, i8* }* %5455, i64 %5456)
  %5458 = load { i64, i8* }*, { i64, i8* }** %5347
  %5459 = call %nyx_string* @ty_to_call_ann(i64 %5457, { i64, i8* }* %5458)
  %5460 = alloca %nyx_string*
  store %nyx_string* %5459, %nyx_string** %5460
  %5461 = load %nyx_string*, %nyx_string** %5460
  %5462 = load %nyx_string*, %nyx_string** %5450
  %5463 = call i1 @nyx_string_equals(%nyx_string* %5461, %nyx_string* %5462)
  br i1 %5463, label %then1155, label %else1156
then1155:
  ret i64 0
else1156:
  br label %merge1157
merge1157:
  %5464 = load { i64, i8* }*, { i64, i8* }** %5446
  %5465 = load %nyx_string*, %nyx_string** %5460
  %5466 = ptrtoint %nyx_string* %5465 to i64
  call void @nyx_array_push({ i64, i8* }* %5464, i64 %5466)
  %5467 = load i64, i64* %5447
  %5468 = add i64 %5467, 1
  store i64 %5468, i64* %5447
  br label %while_cond1152
while_end1154:
  %5469 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %5470 = load { i64, i8* }*, { i64, i8* }** %5469
  %5471 = alloca { i64, i8* }*
  store { i64, i8* }* %5470, { i64, i8* }** %5471
  %5472 = load { i64, i8* }*, { i64, i8* }** %5471
  %5473 = call i64 @nyx_array_get({ i64, i8* }* %5472, i64 0)
  %5474 = inttoptr i64 %5473 to { i64, i8* }*
  %5475 = alloca { i64, i8* }*
  store { i64, i8* }* %5474, { i64, i8* }** %5475
  %5476 = alloca i64
  store i64 0, i64* %5476
  %5477 = alloca i64
  store i64 0, i64* %5477
  %5478 = load { i64, i8* }*, { i64, i8* }** %5475
  %5479 = call i64 @nyx_array_length({ i64, i8* }* %5478)
  %5480 = icmp sgt i64 %5479, 3
  br i1 %5480, label %then1158, label %else1159
then1158:
  %5481 = load { i64, i8* }*, { i64, i8* }** %5475
  %5482 = call i64 @nyx_array_get({ i64, i8* }* %5481, i64 2)
  store i64 %5482, i64* %5476
  %5483 = load { i64, i8* }*, { i64, i8* }** %5475
  %5484 = call i64 @nyx_array_get({ i64, i8* }* %5483, i64 3)
  store i64 %5484, i64* %5477
  br label %merge1160
else1159:
  br label %merge1160
merge1160:
  %5485 = call { i64, i8* }* @nyx_array_new_ptr()
  %5486 = alloca { i64, i8* }*
  store { i64, i8* }* %5485, { i64, i8* }** %5486
  %5487 = load { i64, i8* }*, { i64, i8* }** %5486
  %5488 = load { i64, i8* }*, { i64, i8* }** %5475
  %5489 = ptrtoint { i64, i8* }* %5488 to i64
  call void @nyx_array_push({ i64, i8* }* %5487, i64 %5489)
  %5490 = load { i64, i8* }*, { i64, i8* }** %5486
  %5491 = load { i64, i8* }*, { i64, i8* }** %5446
  %5492 = ptrtoint { i64, i8* }* %5491 to i64
  call void @nyx_array_push({ i64, i8* }* %5490, i64 %5492)
  %5493 = load { i64, i8* }*, { i64, i8* }** %5486
  %5494 = getelementptr [9 x i8], [9 x i8]* @.str741, i32 0, i32 0
  %5495 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str741.c, i8* %5494)
  %5496 = ptrtoint %nyx_string* %5495 to i64
  call void @nyx_array_push({ i64, i8* }* %5493, i64 %5496)
  %5497 = call { i64, i8* }* @nyx_array_new_ptr()
  %5498 = alloca { i64, i8* }*
  store { i64, i8* }* %5497, { i64, i8* }** %5498
  %5499 = load { i64, i8* }*, { i64, i8* }** %5498
  %5500 = getelementptr [13 x i8], [13 x i8]* @.str742, i32 0, i32 0
  %5501 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str742.c, i8* %5500)
  %5502 = ptrtoint %nyx_string* %5501 to i64
  call void @nyx_array_push({ i64, i8* }* %5499, i64 %5502)
  %5503 = load { i64, i8* }*, { i64, i8* }** %5498
  %5504 = load { i64, i8* }*, { i64, i8* }** %5486
  %5505 = ptrtoint { i64, i8* }* %5504 to i64
  call void @nyx_array_push({ i64, i8* }* %5503, i64 %5505)
  %5506 = load { i64, i8* }*, { i64, i8* }** %5498
  %5507 = load i64, i64* %5476
  call void @nyx_array_push({ i64, i8* }* %5506, i64 %5507)
  %5508 = load { i64, i8* }*, { i64, i8* }** %5498
  %5509 = load i64, i64* %5477
  call void @nyx_array_push({ i64, i8* }* %5508, i64 %5509)
  %5510 = load { i64, i8* }*, { i64, i8* }** %5471
  %5511 = load { i64, i8* }*, { i64, i8* }** %5498
  %5512 = ptrtoint { i64, i8* }* %5511 to i64
  call void @nyx_array_set({ i64, i8* }* %5510, i64 0, i64 %5512)
  ret i64 1
}

define internal i1 @validate_call(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %5513 = load %ASTNode, %ASTNode* %node.ptr
  %5514 = call %ASTNode @get_node_at(%ASTNode %5513, i64 0)
  %5515 = alloca %ASTNode
  store %ASTNode %5514, %ASTNode* %5515
  %5516 = load %ASTNode, %ASTNode* %node.ptr
  %5517 = call { i64, i8* }* @get_array_at(%ASTNode %5516, i64 1)
  %5518 = alloca { i64, i8* }*
  store { i64, i8* }* %5517, { i64, i8* }** %5518
  %5519 = load %ASTNode, %ASTNode* %5515
  %5520 = call i1 @validate_node(%ASTNode %5519)
  %5521 = xor i1 %5520, true
  br i1 %5521, label %then1161, label %else1162
then1161:
  ret i1 0
else1162:
  br label %merge1163
merge1163:
  %5522 = getelementptr %ASTNode, %ASTNode* %5515, i32 0, i32 0
  %5523 = load %nyx_string*, %nyx_string** %5522
  %5524 = getelementptr [11 x i8], [11 x i8]* @.str743, i32 0, i32 0
  %5525 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str743.c, i8* %5524)
  %5526 = call i1 @nyx_string_equals(%nyx_string* %5523, %nyx_string* %5525)
  br i1 %5526, label %then1164, label %else1165
then1164:
  %5527 = load %ASTNode, %ASTNode* %5515
  %5528 = call %nyx_string* @get_string_at(%ASTNode %5527, i64 0)
  %5529 = alloca %nyx_string*
  store %nyx_string* %5528, %nyx_string** %5529
  %5530 = load %nyx_string*, %nyx_string** %5529
  %5531 = call %nyx_string* @scope_lookup(%nyx_string* %5530)
  %5532 = alloca %nyx_string*
  store %nyx_string* %5531, %nyx_string** %5532
  %5533 = alloca i1
  store i1 true, i1* %5533
  %5534 = alloca i1
  store i1 true, i1* %5534
  %5535 = alloca i1
  store i1 true, i1* %5535
  %5536 = load %nyx_string*, %nyx_string** %5532
  %5537 = getelementptr [4 x i8], [4 x i8]* @.str744, i32 0, i32 0
  %5538 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str744.c, i8* %5537)
  %5539 = call i1 @nyx_string_equals(%nyx_string* %5536, %nyx_string* %5538)
  br i1 %5539, label %sc_or_end1168, label %sc_or_rhs1167
sc_or_rhs1167:
  %5540 = load %nyx_string*, %nyx_string** %5532
  %5541 = getelementptr [4 x i8], [4 x i8]* @.str745, i32 0, i32 0
  %5542 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str745.c, i8* %5541)
  %5543 = call i1 @nyx_string_equals(%nyx_string* %5540, %nyx_string* %5542)
  store i1 %5543, i1* %5535
  br label %sc_or_end1168
sc_or_end1168:
  %5544 = load i1, i1* %5535
  br i1 %5544, label %sc_or_end1170, label %sc_or_rhs1169
sc_or_rhs1169:
  %5545 = load %nyx_string*, %nyx_string** %5532
  %5546 = getelementptr [6 x i8], [6 x i8]* @.str746, i32 0, i32 0
  %5547 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str746.c, i8* %5546)
  %5548 = call i1 @nyx_string_equals(%nyx_string* %5545, %nyx_string* %5547)
  store i1 %5548, i1* %5534
  br label %sc_or_end1170
sc_or_end1170:
  %5549 = load i1, i1* %5534
  br i1 %5549, label %sc_or_end1172, label %sc_or_rhs1171
sc_or_rhs1171:
  %5550 = load %nyx_string*, %nyx_string** %5532
  %5551 = getelementptr [8 x i8], [8 x i8]* @.str747, i32 0, i32 0
  %5552 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str747.c, i8* %5551)
  %5553 = call i1 @nyx_string_equals(%nyx_string* %5550, %nyx_string* %5552)
  store i1 %5553, i1* %5533
  br label %sc_or_end1172
sc_or_end1172:
  %5554 = load i1, i1* %5533
  br i1 %5554, label %then1173, label %else1174
then1173:
  %5555 = load %nyx_string*, %nyx_string** %5529
  %5556 = call { i64, i8* }* @lookup_var_type(%nyx_string* %5555)
  %5557 = alloca { i64, i8* }*
  store { i64, i8* }* %5556, { i64, i8* }** %5557
  %5558 = load { i64, i8* }*, { i64, i8* }** %5557
  %5559 = call i1 @ty_is_unknown({ i64, i8* }* %5558)
  %5560 = xor i1 %5559, true
  br i1 %5560, label %then1176, label %else1177
then1176:
  %5561 = load { i64, i8* }*, { i64, i8* }** %5557
  %5562 = call %nyx_string* @ty_kind({ i64, i8* }* %5561)
  %5563 = alloca %nyx_string*
  store %nyx_string* %5562, %nyx_string** %5563
  %5564 = alloca i1
  store i1 0, i1* %5564
  %5565 = load %nyx_string*, %nyx_string** %5563
  %5566 = getelementptr [5 x i8], [5 x i8]* @.str748, i32 0, i32 0
  %5567 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str748.c, i8* %5566)
  %5568 = call i1 @nyx_string_equals(%nyx_string* %5565, %nyx_string* %5567)
  br i1 %5568, label %then1179, label %else1180
then1179:
  store i1 1, i1* %5564
  br label %merge1181
else1180:
  br label %merge1181
merge1181:
  %5569 = load %nyx_string*, %nyx_string** %5563
  %5570 = getelementptr [10 x i8], [10 x i8]* @.str749, i32 0, i32 0
  %5571 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str749.c, i8* %5570)
  %5572 = call i1 @nyx_string_equals(%nyx_string* %5569, %nyx_string* %5571)
  br i1 %5572, label %then1182, label %else1183
then1182:
  store i1 1, i1* %5564
  br label %merge1184
else1183:
  br label %merge1184
merge1184:
  %5573 = load %nyx_string*, %nyx_string** %5563
  %5574 = getelementptr [6 x i8], [6 x i8]* @.str750, i32 0, i32 0
  %5575 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str750.c, i8* %5574)
  %5576 = call i1 @nyx_string_equals(%nyx_string* %5573, %nyx_string* %5575)
  br i1 %5576, label %then1185, label %else1186
then1185:
  store i1 1, i1* %5564
  br label %merge1187
else1186:
  br label %merge1187
merge1187:
  %5577 = load %nyx_string*, %nyx_string** %5563
  %5578 = getelementptr [9 x i8], [9 x i8]* @.str751, i32 0, i32 0
  %5579 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str751.c, i8* %5578)
  %5580 = call i1 @nyx_string_equals(%nyx_string* %5577, %nyx_string* %5579)
  br i1 %5580, label %then1188, label %else1189
then1188:
  %5581 = load { i64, i8* }*, { i64, i8* }** %5557
  %5582 = call i64 @nyx_array_get({ i64, i8* }* %5581, i64 1)
  %5583 = inttoptr i64 %5582 to %nyx_string*
  %5584 = alloca %nyx_string*
  store %nyx_string* %5583, %nyx_string** %5584
  %5585 = load %nyx_string*, %nyx_string** %5584
  %5586 = getelementptr [3 x i8], [3 x i8]* @.str752, i32 0, i32 0
  %5587 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str752.c, i8* %5586)
  %5588 = call i1 @nyx_string_equals(%nyx_string* %5585, %nyx_string* %5587)
  br i1 %5588, label %then1191, label %else1192
then1191:
  store i1 1, i1* %5564
  br label %merge1193
else1192:
  br label %merge1193
merge1193:
  br label %merge1190
else1189:
  br label %merge1190
merge1190:
  %5589 = load i1, i1* %5564
  %5590 = xor i1 %5589, true
  br i1 %5590, label %then1194, label %else1195
then1194:
  %5591 = getelementptr [8 x i8], [8 x i8]* @.str753, i32 0, i32 0
  %5592 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str753.c, i8* %5591)
  %5593 = getelementptr [2 x i8], [2 x i8]* @.str754, i32 0, i32 0
  %5594 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str754.c, i8* %5593)
  %5595 = load %nyx_string*, %nyx_string** %5529
  %5596 = call %nyx_string* @nyx_string_concat(%nyx_string* %5594, %nyx_string* %5595)
  %5597 = getelementptr [29 x i8], [29 x i8]* @.str755, i32 0, i32 0
  %5598 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str755.c, i8* %5597)
  %5599 = call %nyx_string* @nyx_string_concat(%nyx_string* %5596, %nyx_string* %5598)
  %5600 = load { i64, i8* }*, { i64, i8* }** %5557
  %5601 = call %nyx_string* @ty_to_str({ i64, i8* }* %5600)
  %5602 = call %nyx_string* @nyx_string_concat(%nyx_string* %5599, %nyx_string* %5601)
  %5603 = getelementptr [2 x i8], [2 x i8]* @.str756, i32 0, i32 0
  %5604 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str756.c, i8* %5603)
  %5605 = call %nyx_string* @nyx_string_concat(%nyx_string* %5602, %nyx_string* %5604)
  %5606 = getelementptr [2 x i8], [2 x i8]* @.str757, i32 0, i32 0
  %5607 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str757.c, i8* %5606)
  %5608 = load %nyx_string*, %nyx_string** %5529
  %5609 = call %nyx_string* @nyx_string_concat(%nyx_string* %5607, %nyx_string* %5608)
  %5610 = getelementptr [26 x i8], [26 x i8]* @.str758, i32 0, i32 0
  %5611 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str758.c, i8* %5610)
  %5612 = call %nyx_string* @nyx_string_concat(%nyx_string* %5609, %nyx_string* %5611)
  %5613 = load { i64, i8* }*, { i64, i8* }** %5557
  %5614 = call %nyx_string* @ty_to_str({ i64, i8* }* %5613)
  %5615 = call %nyx_string* @nyx_string_concat(%nyx_string* %5612, %nyx_string* %5614)
  %5616 = getelementptr [2 x i8], [2 x i8]* @.str759, i32 0, i32 0
  %5617 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str759.c, i8* %5616)
  %5618 = call %nyx_string* @nyx_string_concat(%nyx_string* %5615, %nyx_string* %5617)
  %5619 = call %nyx_string* @msg(%nyx_string* %5605, %nyx_string* %5618)
  %5620 = getelementptr [1 x i8], [1 x i8]* @.str760, i32 0, i32 0
  %5621 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str760.c, i8* %5620)
  %5622 = call i64 @sem_diag(%nyx_string* %5592, %nyx_string* %5619, %nyx_string* %5621)
  ret i1 0
else1195:
  br label %merge1196
merge1196:
  br label %merge1178
else1177:
  br label %merge1178
merge1178:
  br label %merge1175
else1174:
  br label %merge1175
merge1175:
  %5623 = load %nyx_string*, %nyx_string** %5529
  %5624 = call i64 @scope_get_arity(%nyx_string* %5623)
  %5625 = alloca i64
  store i64 %5624, i64* %5625
  %5626 = load i64, i64* %5625
  %5627 = icmp sge i64 %5626, 0
  br i1 %5627, label %then1197, label %else1198
then1197:
  %5628 = load { i64, i8* }*, { i64, i8* }** %5518
  %5629 = call i64 @nyx_array_length({ i64, i8* }* %5628)
  %5630 = alloca i64
  store i64 %5629, i64* %5630
  %5631 = load i64, i64* %5630
  %5632 = load i64, i64* %5625
  %5633 = icmp ne i64 %5631, %5632
  br i1 %5633, label %then1200, label %else1201
then1200:
  %5634 = getelementptr [8 x i8], [8 x i8]* @.str761, i32 0, i32 0
  %5635 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str761.c, i8* %5634)
  %5636 = getelementptr [2 x i8], [2 x i8]* @.str762, i32 0, i32 0
  %5637 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str762.c, i8* %5636)
  %5638 = load %nyx_string*, %nyx_string** %5529
  %5639 = call %nyx_string* @nyx_string_concat(%nyx_string* %5637, %nyx_string* %5638)
  %5640 = getelementptr [3 x i8], [3 x i8]* @.str763, i32 0, i32 0
  %5641 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str763.c, i8* %5640)
  %5642 = call %nyx_string* @nyx_string_concat(%nyx_string* %5639, %nyx_string* %5641)
  %5643 = getelementptr [8 x i8], [8 x i8]* @.str764, i32 0, i32 0
  %5644 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str764.c, i8* %5643)
  %5645 = load i64, i64* %5625
  %5646 = call %nyx_string* @nyx_string_from_int(i64 %5645)
  %5647 = call %nyx_string* @nyx_string_concat(%nyx_string* %5644, %nyx_string* %5646)
  %5648 = getelementptr [23 x i8], [23 x i8]* @.str765, i32 0, i32 0
  %5649 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str765.c, i8* %5648)
  %5650 = call %nyx_string* @nyx_string_concat(%nyx_string* %5647, %nyx_string* %5649)
  %5651 = load i64, i64* %5630
  %5652 = call %nyx_string* @nyx_string_from_int(i64 %5651)
  %5653 = call %nyx_string* @nyx_string_concat(%nyx_string* %5650, %nyx_string* %5652)
  %5654 = getelementptr [9 x i8], [9 x i8]* @.str766, i32 0, i32 0
  %5655 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str766.c, i8* %5654)
  %5656 = load i64, i64* %5625
  %5657 = call %nyx_string* @nyx_string_from_int(i64 %5656)
  %5658 = call %nyx_string* @nyx_string_concat(%nyx_string* %5655, %nyx_string* %5657)
  %5659 = getelementptr [17 x i8], [17 x i8]* @.str767, i32 0, i32 0
  %5660 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str767.c, i8* %5659)
  %5661 = call %nyx_string* @nyx_string_concat(%nyx_string* %5658, %nyx_string* %5660)
  %5662 = load i64, i64* %5630
  %5663 = call %nyx_string* @nyx_string_from_int(i64 %5662)
  %5664 = call %nyx_string* @nyx_string_concat(%nyx_string* %5661, %nyx_string* %5663)
  %5665 = call %nyx_string* @msg(%nyx_string* %5653, %nyx_string* %5664)
  %5666 = call %nyx_string* @nyx_string_concat(%nyx_string* %5642, %nyx_string* %5665)
  %5667 = getelementptr [1 x i8], [1 x i8]* @.str768, i32 0, i32 0
  %5668 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str768.c, i8* %5667)
  %5669 = call i64 @sem_diag(%nyx_string* %5635, %nyx_string* %5666, %nyx_string* %5668)
  ret i1 0
else1201:
  br label %merge1202
merge1202:
  br label %merge1199
else1198:
  br label %merge1199
merge1199:
  br label %merge1166
else1165:
  br label %merge1166
merge1166:
  %5670 = alloca i64
  store i64 0, i64* %5670
  br label %while_cond1203
while_cond1203:
  %5671 = load i64, i64* %5670
  %5672 = load { i64, i8* }*, { i64, i8* }** %5518
  %5673 = call i64 @nyx_array_length({ i64, i8* }* %5672)
  %5674 = icmp slt i64 %5671, %5673
  br i1 %5674, label %while_body1204, label %while_end1205
while_body1204:
  %5675 = load { i64, i8* }*, { i64, i8* }** %5518
  %5676 = load i64, i64* %5670
  %5677 = call i64 @nyx_array_get({ i64, i8* }* %5675, i64 %5676)
  %5678 = inttoptr i64 %5677 to { i64, i8* }*
  %5679 = call i64 @nyx_array_get({ i64, i8* }* %5678, i64 0)
  %5680 = call i64 @nyx_array_get({ i64, i8* }* %5678, i64 1)
  %5681 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %5678, i64 2)
  %5682 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %5678, i64 3)
  %5683 = inttoptr i64 %5679 to %nyx_string*
  %5684 = inttoptr i64 %5680 to { i64, i8* }*
  %5685 = alloca %ASTNode
  %5686 = getelementptr inbounds %ASTNode, %ASTNode* %5685, i32 0, i32 0
  store %nyx_string* %5683, %nyx_string** %5686
  %5687 = getelementptr inbounds %ASTNode, %ASTNode* %5685, i32 0, i32 1
  store { i64, i8* }* %5684, { i64, i8* }** %5687
  %5688 = getelementptr inbounds %ASTNode, %ASTNode* %5685, i32 0, i32 2
  store i64 %5681, i64* %5688
  %5689 = getelementptr inbounds %ASTNode, %ASTNode* %5685, i32 0, i32 3
  store i64 %5682, i64* %5689
  %5690 = load %ASTNode, %ASTNode* %5685
  %5691 = alloca %ASTNode
  store %ASTNode %5690, %ASTNode* %5691
  %5692 = load %ASTNode, %ASTNode* %5691
  %5693 = call i1 @validate_node(%ASTNode %5692)
  %5694 = xor i1 %5693, true
  br i1 %5694, label %then1206, label %else1207
then1206:
  ret i1 0
else1207:
  br label %merge1208
merge1208:
  %5695 = load i64, i64* %5670
  %5696 = add i64 %5695, 1
  store i64 %5696, i64* %5670
  br label %while_cond1203
while_end1205:
  %5697 = getelementptr %ASTNode, %ASTNode* %5515, i32 0, i32 0
  %5698 = load %nyx_string*, %nyx_string** %5697
  %5699 = getelementptr [11 x i8], [11 x i8]* @.str769, i32 0, i32 0
  %5700 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str769.c, i8* %5699)
  %5701 = call i1 @nyx_string_equals(%nyx_string* %5698, %nyx_string* %5700)
  br i1 %5701, label %then1209, label %else1210
then1209:
  %5702 = load %ASTNode, %ASTNode* %5515
  %5703 = call %nyx_string* @get_string_at(%ASTNode %5702, i64 0)
  %5704 = alloca %nyx_string*
  store %nyx_string* %5703, %nyx_string** %5704
  %5705 = load %nyx_string*, %nyx_string** %5704
  %5706 = call { i64, i8* }* @lookup_fn_sig(%nyx_string* %5705)
  %5707 = alloca { i64, i8* }*
  store { i64, i8* }* %5706, { i64, i8* }** %5707
  %5708 = load { i64, i8* }*, { i64, i8* }** %5707
  %5709 = call i64 @nyx_array_length({ i64, i8* }* %5708)
  %5710 = icmp eq i64 %5709, 3
  br i1 %5710, label %then1212, label %else1213
then1212:
  %5711 = load { i64, i8* }*, { i64, i8* }** %5707
  %5712 = call i64 @nyx_array_get({ i64, i8* }* %5711, i64 0)
  %5713 = inttoptr i64 %5712 to { i64, i8* }*
  %5714 = alloca { i64, i8* }*
  store { i64, i8* }* %5713, { i64, i8* }** %5714
  %5715 = load { i64, i8* }*, { i64, i8* }** %5707
  %5716 = call i64 @nyx_array_get({ i64, i8* }* %5715, i64 2)
  %5717 = inttoptr i64 %5716 to { i64, i8* }*
  %5718 = alloca { i64, i8* }*
  store { i64, i8* }* %5717, { i64, i8* }** %5718
  %5719 = load { i64, i8* }*, { i64, i8* }** %5718
  %5720 = call i64 @nyx_array_length({ i64, i8* }* %5719)
  %5721 = icmp sgt i64 %5720, 0
  %5722 = alloca i1
  store i1 %5721, i1* %5722
  %5723 = call { i64, i8* }* @nyx_array_new_ptr()
  %5724 = alloca { i64, i8* }*
  store { i64, i8* }* %5723, { i64, i8* }** %5724
  %5725 = call { i64, i8* }* @nyx_array_new_ptr()
  %5726 = alloca { i64, i8* }*
  store { i64, i8* }* %5725, { i64, i8* }** %5726
  %5727 = alloca i64
  store i64 0, i64* %5727
  %5728 = getelementptr [8 x i8], [8 x i8]* @.str770, i32 0, i32 0
  %5729 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str770.c, i8* %5728)
  %5730 = alloca %nyx_string*
  store %nyx_string* %5729, %nyx_string** %5730
  %5731 = getelementptr [11 x i8], [11 x i8]* @.str771, i32 0, i32 0
  %5732 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str771.c, i8* %5731)
  %5733 = alloca %nyx_string*
  store %nyx_string* %5732, %nyx_string** %5733
  %5734 = getelementptr [6 x i8], [6 x i8]* @.str772, i32 0, i32 0
  %5735 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str772.c, i8* %5734)
  %5736 = alloca %nyx_string*
  store %nyx_string* %5735, %nyx_string** %5736
  %5737 = getelementptr [16 x i8], [16 x i8]* @.str773, i32 0, i32 0
  %5738 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str773.c, i8* %5737)
  %5739 = alloca %nyx_string*
  store %nyx_string* %5738, %nyx_string** %5739
  %5740 = getelementptr [13 x i8], [13 x i8]* @.str774, i32 0, i32 0
  %5741 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str774.c, i8* %5740)
  %5742 = alloca %nyx_string*
  store %nyx_string* %5741, %nyx_string** %5742
  %5743 = getelementptr [10 x i8], [10 x i8]* @.str775, i32 0, i32 0
  %5744 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str775.c, i8* %5743)
  %5745 = alloca %nyx_string*
  store %nyx_string* %5744, %nyx_string** %5745
  %5746 = getelementptr [6 x i8], [6 x i8]* @.str776, i32 0, i32 0
  %5747 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str776.c, i8* %5746)
  %5748 = alloca %nyx_string*
  store %nyx_string* %5747, %nyx_string** %5748
  %5749 = getelementptr [13 x i8], [13 x i8]* @.str777, i32 0, i32 0
  %5750 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str777.c, i8* %5749)
  %5751 = alloca %nyx_string*
  store %nyx_string* %5750, %nyx_string** %5751
  %5752 = getelementptr [7 x i8], [7 x i8]* @.str778, i32 0, i32 0
  %5753 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str778.c, i8* %5752)
  %5754 = alloca %nyx_string*
  store %nyx_string* %5753, %nyx_string** %5754
  %5755 = getelementptr [1 x i8], [1 x i8]* @.str779, i32 0, i32 0
  %5756 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str779.c, i8* %5755)
  %5757 = alloca %nyx_string*
  store %nyx_string* %5756, %nyx_string** %5757
  %5758 = getelementptr [6 x i8], [6 x i8]* @.str780, i32 0, i32 0
  %5759 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str780.c, i8* %5758)
  %5760 = alloca %nyx_string*
  store %nyx_string* %5759, %nyx_string** %5760
  %5761 = getelementptr [2 x i8], [2 x i8]* @.str781, i32 0, i32 0
  %5762 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str781.c, i8* %5761)
  %5763 = alloca %nyx_string*
  store %nyx_string* %5762, %nyx_string** %5763
  br label %while_cond1215
while_cond1215:
  %5764 = load i64, i64* %5727
  %5765 = load { i64, i8* }*, { i64, i8* }** %5518
  %5766 = call i64 @nyx_array_length({ i64, i8* }* %5765)
  %5767 = icmp slt i64 %5764, %5766
  br i1 %5767, label %while_body1216, label %while_end1217
while_body1216:
  %5768 = load i64, i64* %5727
  %5769 = load { i64, i8* }*, { i64, i8* }** %5714
  %5770 = call i64 @nyx_array_length({ i64, i8* }* %5769)
  %5771 = icmp slt i64 %5768, %5770
  br i1 %5771, label %then1218, label %else1219
then1218:
  %5772 = load { i64, i8* }*, { i64, i8* }** %5518
  %5773 = load i64, i64* %5727
  %5774 = call i64 @nyx_array_get({ i64, i8* }* %5772, i64 %5773)
  %5775 = inttoptr i64 %5774 to { i64, i8* }*
  %5776 = call i64 @nyx_array_get({ i64, i8* }* %5775, i64 0)
  %5777 = call i64 @nyx_array_get({ i64, i8* }* %5775, i64 1)
  %5778 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %5775, i64 2)
  %5779 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %5775, i64 3)
  %5780 = inttoptr i64 %5776 to %nyx_string*
  %5781 = inttoptr i64 %5777 to { i64, i8* }*
  %5782 = alloca %ASTNode
  %5783 = getelementptr inbounds %ASTNode, %ASTNode* %5782, i32 0, i32 0
  store %nyx_string* %5780, %nyx_string** %5783
  %5784 = getelementptr inbounds %ASTNode, %ASTNode* %5782, i32 0, i32 1
  store { i64, i8* }* %5781, { i64, i8* }** %5784
  %5785 = getelementptr inbounds %ASTNode, %ASTNode* %5782, i32 0, i32 2
  store i64 %5778, i64* %5785
  %5786 = getelementptr inbounds %ASTNode, %ASTNode* %5782, i32 0, i32 3
  store i64 %5779, i64* %5786
  %5787 = load %ASTNode, %ASTNode* %5782
  %5788 = alloca %ASTNode
  store %ASTNode %5787, %ASTNode* %5788
  %5789 = load { i64, i8* }*, { i64, i8* }** %5714
  %5790 = load i64, i64* %5727
  %5791 = call i64 @nyx_array_get({ i64, i8* }* %5789, i64 %5790)
  %5792 = inttoptr i64 %5791 to { i64, i8* }*
  %5793 = alloca { i64, i8* }*
  store { i64, i8* }* %5792, { i64, i8* }** %5793
  %5794 = load { i64, i8* }*, { i64, i8* }** %5793
  %5795 = call i1 @ty_is_unknown({ i64, i8* }* %5794)
  %5796 = xor i1 %5795, true
  br i1 %5796, label %then1221, label %else1222
then1221:
  %5797 = load %ASTNode, %ASTNode* %5788
  %5798 = call { i64, i8* }* @ty_of_expr(%ASTNode %5797)
  %5799 = alloca { i64, i8* }*
  store { i64, i8* }* %5798, { i64, i8* }** %5799
  %5800 = load { i64, i8* }*, { i64, i8* }** %5799
  %5801 = call i1 @ty_is_unknown({ i64, i8* }* %5800)
  %5802 = xor i1 %5801, true
  br i1 %5802, label %then1224, label %else1225
then1224:
  %5803 = alloca i1
  store i1 1, i1* %5803
  %5804 = load i1, i1* %5722
  br i1 %5804, label %then1227, label %else1228
then1227:
  %5805 = load { i64, i8* }*, { i64, i8* }** %5793
  %5806 = load { i64, i8* }*, { i64, i8* }** %5799
  %5807 = load { i64, i8* }*, { i64, i8* }** %5718
  %5808 = load { i64, i8* }*, { i64, i8* }** %5724
  %5809 = load { i64, i8* }*, { i64, i8* }** %5726
  %5810 = call i1 @unify({ i64, i8* }* %5805, { i64, i8* }* %5806, { i64, i8* }* %5807, { i64, i8* }* %5808, { i64, i8* }* %5809)
  store i1 %5810, i1* %5803
  br label %merge1229
else1228:
  %5811 = load { i64, i8* }*, { i64, i8* }** %5793
  %5812 = load { i64, i8* }*, { i64, i8* }** %5799
  %5813 = call i1 @ty_eq({ i64, i8* }* %5811, { i64, i8* }* %5812)
  store i1 %5813, i1* %5803
  br label %merge1229
merge1229:
  %5814 = load i1, i1* %5803
  %5815 = xor i1 %5814, true
  br i1 %5815, label %then1230, label %else1231
then1230:
  %5816 = load { i64, i8* }*, { i64, i8* }** %5793
  %5817 = alloca { i64, i8* }*
  store { i64, i8* }* %5816, { i64, i8* }** %5817
  %5818 = load i1, i1* %5722
  br i1 %5818, label %then1233, label %else1234
then1233:
  %5819 = load { i64, i8* }*, { i64, i8* }** %5793
  %5820 = load { i64, i8* }*, { i64, i8* }** %5724
  %5821 = load { i64, i8* }*, { i64, i8* }** %5726
  %5822 = call { i64, i8* }* @subst_apply({ i64, i8* }* %5819, { i64, i8* }* %5820, { i64, i8* }* %5821)
  store { i64, i8* }* %5822, { i64, i8* }** %5817
  br label %merge1235
else1234:
  br label %merge1235
merge1235:
  %5823 = load %nyx_string*, %nyx_string** %5730
  %5824 = load %nyx_string*, %nyx_string** %5733
  %5825 = load i64, i64* %5727
  %5826 = add i64 %5825, 1
  %5827 = call %nyx_string* @nyx_string_from_int(i64 %5826)
  %5828 = call %nyx_string* @nyx_string_concat(%nyx_string* %5824, %nyx_string* %5827)
  %5829 = load %nyx_string*, %nyx_string** %5736
  %5830 = call %nyx_string* @nyx_string_concat(%nyx_string* %5828, %nyx_string* %5829)
  %5831 = load %nyx_string*, %nyx_string** %5704
  %5832 = call %nyx_string* @nyx_string_concat(%nyx_string* %5830, %nyx_string* %5831)
  %5833 = load %nyx_string*, %nyx_string** %5739
  %5834 = call %nyx_string* @nyx_string_concat(%nyx_string* %5832, %nyx_string* %5833)
  %5835 = load { i64, i8* }*, { i64, i8* }** %5817
  %5836 = call %nyx_string* @ty_to_str({ i64, i8* }* %5835)
  %5837 = call %nyx_string* @nyx_string_concat(%nyx_string* %5834, %nyx_string* %5836)
  %5838 = load %nyx_string*, %nyx_string** %5742
  %5839 = call %nyx_string* @nyx_string_concat(%nyx_string* %5837, %nyx_string* %5838)
  %5840 = load { i64, i8* }*, { i64, i8* }** %5799
  %5841 = call %nyx_string* @ty_to_str({ i64, i8* }* %5840)
  %5842 = call %nyx_string* @nyx_string_concat(%nyx_string* %5839, %nyx_string* %5841)
  %5843 = load %nyx_string*, %nyx_string** %5745
  %5844 = load i64, i64* %5727
  %5845 = add i64 %5844, 1
  %5846 = call %nyx_string* @nyx_string_from_int(i64 %5845)
  %5847 = call %nyx_string* @nyx_string_concat(%nyx_string* %5843, %nyx_string* %5846)
  %5848 = load %nyx_string*, %nyx_string** %5748
  %5849 = call %nyx_string* @nyx_string_concat(%nyx_string* %5847, %nyx_string* %5848)
  %5850 = load %nyx_string*, %nyx_string** %5704
  %5851 = call %nyx_string* @nyx_string_concat(%nyx_string* %5849, %nyx_string* %5850)
  %5852 = load %nyx_string*, %nyx_string** %5751
  %5853 = call %nyx_string* @nyx_string_concat(%nyx_string* %5851, %nyx_string* %5852)
  %5854 = load { i64, i8* }*, { i64, i8* }** %5817
  %5855 = call %nyx_string* @ty_to_str({ i64, i8* }* %5854)
  %5856 = call %nyx_string* @nyx_string_concat(%nyx_string* %5853, %nyx_string* %5855)
  %5857 = load %nyx_string*, %nyx_string** %5754
  %5858 = call %nyx_string* @nyx_string_concat(%nyx_string* %5856, %nyx_string* %5857)
  %5859 = load { i64, i8* }*, { i64, i8* }** %5799
  %5860 = call %nyx_string* @ty_to_str({ i64, i8* }* %5859)
  %5861 = call %nyx_string* @nyx_string_concat(%nyx_string* %5858, %nyx_string* %5860)
  %5862 = call %nyx_string* @msg(%nyx_string* %5842, %nyx_string* %5861)
  %5863 = load %nyx_string*, %nyx_string** %5757
  %5864 = call i64 @sem_diag(%nyx_string* %5823, %nyx_string* %5862, %nyx_string* %5863)
  ret i1 0
else1231:
  br label %merge1232
merge1232:
  %5865 = load %nyx_string*, %nyx_string** %5704
  %5866 = load %nyx_string*, %nyx_string** %5760
  %5867 = call %nyx_string* @nyx_string_concat(%nyx_string* %5865, %nyx_string* %5866)
  %5868 = load i64, i64* %5727
  %5869 = add i64 %5868, 1
  %5870 = call %nyx_string* @nyx_string_from_int(i64 %5869)
  %5871 = call %nyx_string* @nyx_string_concat(%nyx_string* %5867, %nyx_string* %5870)
  %5872 = load %nyx_string*, %nyx_string** %5763
  %5873 = call %nyx_string* @nyx_string_concat(%nyx_string* %5871, %nyx_string* %5872)
  %5874 = alloca %nyx_string*
  store %nyx_string* %5873, %nyx_string** %5874
  %5875 = load { i64, i8* }*, { i64, i8* }** %5793
  %5876 = load { i64, i8* }*, { i64, i8* }** %5799
  %5877 = load %nyx_string*, %nyx_string** %5874
  %5878 = call i1 @ty_check_dyn_compat({ i64, i8* }* %5875, { i64, i8* }* %5876, %nyx_string* %5877)
  %5879 = xor i1 %5878, true
  br i1 %5879, label %then1236, label %else1237
then1236:
  ret i1 0
else1237:
  br label %merge1238
merge1238:
  br label %merge1226
else1225:
  br label %merge1226
merge1226:
  br label %merge1223
else1222:
  br label %merge1223
merge1223:
  br label %merge1220
else1219:
  br label %merge1220
merge1220:
  %5880 = load i64, i64* %5727
  %5881 = add i64 %5880, 1
  store i64 %5881, i64* %5727
  br label %while_cond1215
while_end1217:
  %5882 = load i1, i1* %5722
  br i1 %5882, label %then1239, label %else1240
then1239:
  %5883 = load %nyx_string*, %nyx_string** %5704
  %5884 = call { i64, i8* }* @lookup_fn_sig_bounds(%nyx_string* %5883)
  %5885 = alloca { i64, i8* }*
  store { i64, i8* }* %5884, { i64, i8* }** %5885
  %5886 = alloca i64
  store i64 0, i64* %5886
  %5887 = getelementptr [9 x i8], [9 x i8]* @.str782, i32 0, i32 0
  %5888 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str782.c, i8* %5887)
  %5889 = alloca %nyx_string*
  store %nyx_string* %5888, %nyx_string** %5889
  %5890 = getelementptr [7 x i8], [7 x i8]* @.str783, i32 0, i32 0
  %5891 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str783.c, i8* %5890)
  %5892 = alloca %nyx_string*
  store %nyx_string* %5891, %nyx_string** %5892
  %5893 = getelementptr [8 x i8], [8 x i8]* @.str784, i32 0, i32 0
  %5894 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str784.c, i8* %5893)
  %5895 = alloca %nyx_string*
  store %nyx_string* %5894, %nyx_string** %5895
  %5896 = getelementptr [2 x i8], [2 x i8]* @.str785, i32 0, i32 0
  %5897 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str785.c, i8* %5896)
  %5898 = alloca %nyx_string*
  store %nyx_string* %5897, %nyx_string** %5898
  %5899 = getelementptr [26 x i8], [26 x i8]* @.str786, i32 0, i32 0
  %5900 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str786.c, i8* %5899)
  %5901 = alloca %nyx_string*
  store %nyx_string* %5900, %nyx_string** %5901
  %5902 = getelementptr [40 x i8], [40 x i8]* @.str787, i32 0, i32 0
  %5903 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str787.c, i8* %5902)
  %5904 = alloca %nyx_string*
  store %nyx_string* %5903, %nyx_string** %5904
  %5905 = getelementptr [7 x i8], [7 x i8]* @.str788, i32 0, i32 0
  %5906 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str788.c, i8* %5905)
  %5907 = alloca %nyx_string*
  store %nyx_string* %5906, %nyx_string** %5907
  %5908 = getelementptr [27 x i8], [27 x i8]* @.str789, i32 0, i32 0
  %5909 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str789.c, i8* %5908)
  %5910 = alloca %nyx_string*
  store %nyx_string* %5909, %nyx_string** %5910
  %5911 = getelementptr [31 x i8], [31 x i8]* @.str790, i32 0, i32 0
  %5912 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str790.c, i8* %5911)
  %5913 = alloca %nyx_string*
  store %nyx_string* %5912, %nyx_string** %5913
  %5914 = getelementptr [7 x i8], [7 x i8]* @.str791, i32 0, i32 0
  %5915 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str791.c, i8* %5914)
  %5916 = alloca %nyx_string*
  store %nyx_string* %5915, %nyx_string** %5916
  %5917 = getelementptr [1 x i8], [1 x i8]* @.str792, i32 0, i32 0
  %5918 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str792.c, i8* %5917)
  %5919 = alloca %nyx_string*
  store %nyx_string* %5918, %nyx_string** %5919
  br label %while_cond1242
while_cond1242:
  %5920 = load i64, i64* %5886
  %5921 = load { i64, i8* }*, { i64, i8* }** %5724
  %5922 = call i64 @nyx_array_length({ i64, i8* }* %5921)
  %5923 = icmp slt i64 %5920, %5922
  br i1 %5923, label %while_body1243, label %while_end1244
while_body1243:
  %5924 = load { i64, i8* }*, { i64, i8* }** %5724
  %5925 = load i64, i64* %5886
  %5926 = call i64 @nyx_array_get({ i64, i8* }* %5924, i64 %5925)
  %5927 = inttoptr i64 %5926 to %nyx_string*
  %5928 = alloca %nyx_string*
  store %nyx_string* %5927, %nyx_string** %5928
  %5929 = load { i64, i8* }*, { i64, i8* }** %5726
  %5930 = load i64, i64* %5886
  %5931 = call i64 @nyx_array_get({ i64, i8* }* %5929, i64 %5930)
  %5932 = inttoptr i64 %5931 to { i64, i8* }*
  %5933 = alloca { i64, i8* }*
  store { i64, i8* }* %5932, { i64, i8* }** %5933
  %5934 = load { i64, i8* }*, { i64, i8* }** %5933
  %5935 = call %nyx_string* @ty_kind({ i64, i8* }* %5934)
  %5936 = alloca %nyx_string*
  store %nyx_string* %5935, %nyx_string** %5936
  %5937 = alloca i1
  store i1 true, i1* %5937
  %5938 = load %nyx_string*, %nyx_string** %5936
  %5939 = load %nyx_string*, %nyx_string** %5889
  %5940 = call i1 @nyx_string_equals(%nyx_string* %5938, %nyx_string* %5939)
  br i1 %5940, label %sc_or_end1246, label %sc_or_rhs1245
sc_or_rhs1245:
  %5941 = load %nyx_string*, %nyx_string** %5936
  %5942 = load %nyx_string*, %nyx_string** %5892
  %5943 = call i1 @nyx_string_equals(%nyx_string* %5941, %nyx_string* %5942)
  store i1 %5943, i1* %5937
  br label %sc_or_end1246
sc_or_end1246:
  %5944 = load i1, i1* %5937
  br i1 %5944, label %then1247, label %else1248
then1247:
  %5945 = load { i64, i8* }*, { i64, i8* }** %5933
  %5946 = call i64 @nyx_array_get({ i64, i8* }* %5945, i64 1)
  %5947 = inttoptr i64 %5946 to %nyx_string*
  %5948 = alloca %nyx_string*
  store %nyx_string* %5947, %nyx_string** %5948
  %5949 = alloca i64
  store i64 0, i64* %5949
  br label %while_cond1250
while_cond1250:
  %5950 = load i64, i64* %5949
  %5951 = load { i64, i8* }*, { i64, i8* }** %5718
  %5952 = call i64 @nyx_array_length({ i64, i8* }* %5951)
  %5953 = icmp slt i64 %5950, %5952
  br i1 %5953, label %while_body1251, label %while_end1252
while_body1251:
  %5954 = load { i64, i8* }*, { i64, i8* }** %5718
  %5955 = load i64, i64* %5949
  %5956 = call i64 @nyx_array_get({ i64, i8* }* %5954, i64 %5955)
  %5957 = inttoptr i64 %5956 to %nyx_string*
  %5958 = alloca %nyx_string*
  store %nyx_string* %5957, %nyx_string** %5958
  %5959 = load %nyx_string*, %nyx_string** %5958
  %5960 = load %nyx_string*, %nyx_string** %5928
  %5961 = call i1 @nyx_string_equals(%nyx_string* %5959, %nyx_string* %5960)
  br i1 %5961, label %then1253, label %else1254
then1253:
  %5962 = load i64, i64* %5949
  %5963 = load { i64, i8* }*, { i64, i8* }** %5885
  %5964 = call i64 @nyx_array_length({ i64, i8* }* %5963)
  %5965 = icmp slt i64 %5962, %5964
  br i1 %5965, label %then1256, label %else1257
then1256:
  %5966 = load { i64, i8* }*, { i64, i8* }** %5885
  %5967 = load i64, i64* %5949
  %5968 = call i64 @nyx_array_get({ i64, i8* }* %5966, i64 %5967)
  %5969 = inttoptr i64 %5968 to { i64, i8* }*
  %5970 = alloca { i64, i8* }*
  store { i64, i8* }* %5969, { i64, i8* }** %5970
  %5971 = alloca i64
  store i64 0, i64* %5971
  br label %while_cond1259
while_cond1259:
  %5972 = load i64, i64* %5971
  %5973 = load { i64, i8* }*, { i64, i8* }** %5970
  %5974 = call i64 @nyx_array_length({ i64, i8* }* %5973)
  %5975 = icmp slt i64 %5972, %5974
  br i1 %5975, label %while_body1260, label %while_end1261
while_body1260:
  %5976 = load { i64, i8* }*, { i64, i8* }** %5970
  %5977 = load i64, i64* %5971
  %5978 = call i64 @nyx_array_get({ i64, i8* }* %5976, i64 %5977)
  %5979 = inttoptr i64 %5978 to %nyx_string*
  %5980 = alloca %nyx_string*
  store %nyx_string* %5979, %nyx_string** %5980
  %5981 = load %nyx_string*, %nyx_string** %5948
  %5982 = load %nyx_string*, %nyx_string** %5980
  %5983 = call i1 @type_implements_trait(%nyx_string* %5981, %nyx_string* %5982)
  %5984 = xor i1 %5983, true
  br i1 %5984, label %then1262, label %else1263
then1262:
  %5985 = load %nyx_string*, %nyx_string** %5948
  %5986 = call i1 @type_has_any_local_impl(%nyx_string* %5985)
  br i1 %5986, label %then1265, label %else1266
then1265:
  %5987 = load %nyx_string*, %nyx_string** %5895
  %5988 = load %nyx_string*, %nyx_string** %5898
  %5989 = load %nyx_string*, %nyx_string** %5948
  %5990 = call %nyx_string* @nyx_string_concat(%nyx_string* %5988, %nyx_string* %5989)
  %5991 = load %nyx_string*, %nyx_string** %5901
  %5992 = call %nyx_string* @nyx_string_concat(%nyx_string* %5990, %nyx_string* %5991)
  %5993 = load %nyx_string*, %nyx_string** %5980
  %5994 = call %nyx_string* @nyx_string_concat(%nyx_string* %5992, %nyx_string* %5993)
  %5995 = load %nyx_string*, %nyx_string** %5904
  %5996 = call %nyx_string* @nyx_string_concat(%nyx_string* %5994, %nyx_string* %5995)
  %5997 = load %nyx_string*, %nyx_string** %5928
  %5998 = call %nyx_string* @nyx_string_concat(%nyx_string* %5996, %nyx_string* %5997)
  %5999 = load %nyx_string*, %nyx_string** %5907
  %6000 = call %nyx_string* @nyx_string_concat(%nyx_string* %5998, %nyx_string* %5999)
  %6001 = load %nyx_string*, %nyx_string** %5704
  %6002 = call %nyx_string* @nyx_string_concat(%nyx_string* %6000, %nyx_string* %6001)
  %6003 = load %nyx_string*, %nyx_string** %5898
  %6004 = call %nyx_string* @nyx_string_concat(%nyx_string* %6002, %nyx_string* %6003)
  %6005 = load %nyx_string*, %nyx_string** %5898
  %6006 = load %nyx_string*, %nyx_string** %5948
  %6007 = call %nyx_string* @nyx_string_concat(%nyx_string* %6005, %nyx_string* %6006)
  %6008 = load %nyx_string*, %nyx_string** %5910
  %6009 = call %nyx_string* @nyx_string_concat(%nyx_string* %6007, %nyx_string* %6008)
  %6010 = load %nyx_string*, %nyx_string** %5980
  %6011 = call %nyx_string* @nyx_string_concat(%nyx_string* %6009, %nyx_string* %6010)
  %6012 = load %nyx_string*, %nyx_string** %5913
  %6013 = call %nyx_string* @nyx_string_concat(%nyx_string* %6011, %nyx_string* %6012)
  %6014 = load %nyx_string*, %nyx_string** %5928
  %6015 = call %nyx_string* @nyx_string_concat(%nyx_string* %6013, %nyx_string* %6014)
  %6016 = load %nyx_string*, %nyx_string** %5916
  %6017 = call %nyx_string* @nyx_string_concat(%nyx_string* %6015, %nyx_string* %6016)
  %6018 = load %nyx_string*, %nyx_string** %5704
  %6019 = call %nyx_string* @nyx_string_concat(%nyx_string* %6017, %nyx_string* %6018)
  %6020 = load %nyx_string*, %nyx_string** %5898
  %6021 = call %nyx_string* @nyx_string_concat(%nyx_string* %6019, %nyx_string* %6020)
  %6022 = call %nyx_string* @msg(%nyx_string* %6004, %nyx_string* %6021)
  %6023 = load %nyx_string*, %nyx_string** %5919
  %6024 = call i64 @sem_diag(%nyx_string* %5987, %nyx_string* %6022, %nyx_string* %6023)
  ret i1 0
else1266:
  br label %merge1267
merge1267:
  br label %merge1264
else1263:
  br label %merge1264
merge1264:
  %6025 = load i64, i64* %5971
  %6026 = add i64 %6025, 1
  store i64 %6026, i64* %5971
  br label %while_cond1259
while_end1261:
  br label %merge1258
else1257:
  br label %merge1258
merge1258:
  br label %merge1255
else1254:
  br label %merge1255
merge1255:
  %6027 = load i64, i64* %5949
  %6028 = add i64 %6027, 1
  store i64 %6028, i64* %5949
  br label %while_cond1250
while_end1252:
  br label %merge1249
else1248:
  br label %merge1249
merge1249:
  %6029 = load i64, i64* %5886
  %6030 = add i64 %6029, 1
  store i64 %6030, i64* %5886
  br label %while_cond1242
while_end1244:
  %6031 = load %ASTNode, %ASTNode* %node.ptr
  %6032 = load %nyx_string*, %nyx_string** %5704
  %6033 = load { i64, i8* }*, { i64, i8* }** %5718
  %6034 = load { i64, i8* }*, { i64, i8* }** %5714
  %6035 = load { i64, i8* }*, { i64, i8* }** %5518
  %6036 = call i64 @try_promote_implicit_generic_call(%ASTNode %6031, %nyx_string* %6032, { i64, i8* }* %6033, { i64, i8* }* %6034, { i64, i8* }* %6035)
  br label %merge1241
else1240:
  br label %merge1241
merge1241:
  br label %merge1214
else1213:
  br label %merge1214
merge1214:
  br label %merge1211
else1210:
  br label %merge1211
merge1211:
  ret i1 1
}

define internal i1 @validate_let(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %6037 = load %ASTNode, %ASTNode* %node.ptr
  %6038 = call %ASTNode @get_node_at(%ASTNode %6037, i64 0)
  %6039 = alloca %ASTNode
  store %ASTNode %6038, %ASTNode* %6039
  %6040 = getelementptr %ASTNode, %ASTNode* %6039, i32 0, i32 0
  %6041 = load %nyx_string*, %nyx_string** %6040
  %6042 = alloca %nyx_string*
  store %nyx_string* %6041, %nyx_string** %6042
  %6043 = load %ASTNode, %ASTNode* %node.ptr
  %6044 = call %ASTNode @get_node_at(%ASTNode %6043, i64 2)
  %6045 = alloca %ASTNode
  store %ASTNode %6044, %ASTNode* %6045
  %6046 = load %ASTNode, %ASTNode* %6045
  %6047 = call i1 @validate_node(%ASTNode %6046)
  %6048 = xor i1 %6047, true
  br i1 %6048, label %then1268, label %else1269
then1268:
  ret i1 0
else1269:
  br label %merge1270
merge1270:
  %6049 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %6050 = load { i64, i8* }*, { i64, i8* }** %6049
  %6051 = alloca { i64, i8* }*
  store { i64, i8* }* %6050, { i64, i8* }** %6051
  %6052 = call { i64, i8* }* @ty_unknown()
  %6053 = alloca { i64, i8* }*
  store { i64, i8* }* %6052, { i64, i8* }** %6053
  %6054 = load { i64, i8* }*, { i64, i8* }** %6051
  %6055 = call i64 @nyx_array_length({ i64, i8* }* %6054)
  %6056 = icmp sgt i64 %6055, 3
  br i1 %6056, label %then1271, label %else1272
then1271:
  %6057 = load { i64, i8* }*, { i64, i8* }** %6051
  %6058 = call i64 @nyx_array_get({ i64, i8* }* %6057, i64 3)
  %6059 = inttoptr i64 %6058 to %nyx_string*
  %6060 = alloca %nyx_string*
  store %nyx_string* %6059, %nyx_string** %6060
  %6061 = load %nyx_string*, %nyx_string** %6060
  %6062 = getelementptr [1 x i8], [1 x i8]* @.str793, i32 0, i32 0
  %6063 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str793.c, i8* %6062)
  %6064 = call i1 @nyx_string_equals(%nyx_string* %6061, %nyx_string* %6063)
  %6065 = xor i1 %6064, true
  br i1 %6065, label %then1274, label %else1275
then1274:
  %6066 = load %nyx_string*, %nyx_string** %6060
  %6067 = call { i64, i8* }* @validate_type_ann(%nyx_string* %6066)
  store { i64, i8* }* %6067, { i64, i8* }** %6053
  %6068 = load { i64, i8* }*, { i64, i8* }** %6053
  %6069 = call i1 @ty_is_unknown({ i64, i8* }* %6068)
  %6070 = xor i1 %6069, true
  br i1 %6070, label %then1277, label %else1278
then1277:
  %6071 = load %ASTNode, %ASTNode* %6045
  %6072 = call { i64, i8* }* @ty_of_expr(%ASTNode %6071)
  %6073 = alloca { i64, i8* }*
  store { i64, i8* }* %6072, { i64, i8* }** %6073
  %6074 = load { i64, i8* }*, { i64, i8* }** %6073
  %6075 = call i1 @ty_is_unknown({ i64, i8* }* %6074)
  %6076 = xor i1 %6075, true
  br i1 %6076, label %then1280, label %else1281
then1280:
  %6077 = load { i64, i8* }*, { i64, i8* }** %6053
  %6078 = load { i64, i8* }*, { i64, i8* }** %6073
  %6079 = call i1 @ty_eq({ i64, i8* }* %6077, { i64, i8* }* %6078)
  %6080 = xor i1 %6079, true
  br i1 %6080, label %then1283, label %else1284
then1283:
  %6081 = getelementptr [8 x i8], [8 x i8]* @.str794, i32 0, i32 0
  %6082 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str794.c, i8* %6081)
  %6083 = getelementptr [23 x i8], [23 x i8]* @.str795, i32 0, i32 0
  %6084 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str795.c, i8* %6083)
  %6085 = load %nyx_string*, %nyx_string** %6042
  %6086 = call %nyx_string* @nyx_string_concat(%nyx_string* %6084, %nyx_string* %6085)
  %6087 = getelementptr [16 x i8], [16 x i8]* @.str796, i32 0, i32 0
  %6088 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str796.c, i8* %6087)
  %6089 = call %nyx_string* @nyx_string_concat(%nyx_string* %6086, %nyx_string* %6088)
  %6090 = load { i64, i8* }*, { i64, i8* }** %6053
  %6091 = call %nyx_string* @ty_to_str({ i64, i8* }* %6090)
  %6092 = call %nyx_string* @nyx_string_concat(%nyx_string* %6089, %nyx_string* %6091)
  %6093 = getelementptr [13 x i8], [13 x i8]* @.str797, i32 0, i32 0
  %6094 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str797.c, i8* %6093)
  %6095 = call %nyx_string* @nyx_string_concat(%nyx_string* %6092, %nyx_string* %6094)
  %6096 = load { i64, i8* }*, { i64, i8* }** %6073
  %6097 = call %nyx_string* @ty_to_str({ i64, i8* }* %6096)
  %6098 = call %nyx_string* @nyx_string_concat(%nyx_string* %6095, %nyx_string* %6097)
  %6099 = getelementptr [19 x i8], [19 x i8]* @.str798, i32 0, i32 0
  %6100 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str798.c, i8* %6099)
  %6101 = load %nyx_string*, %nyx_string** %6042
  %6102 = call %nyx_string* @nyx_string_concat(%nyx_string* %6100, %nyx_string* %6101)
  %6103 = getelementptr [13 x i8], [13 x i8]* @.str799, i32 0, i32 0
  %6104 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str799.c, i8* %6103)
  %6105 = call %nyx_string* @nyx_string_concat(%nyx_string* %6102, %nyx_string* %6104)
  %6106 = load { i64, i8* }*, { i64, i8* }** %6053
  %6107 = call %nyx_string* @ty_to_str({ i64, i8* }* %6106)
  %6108 = call %nyx_string* @nyx_string_concat(%nyx_string* %6105, %nyx_string* %6107)
  %6109 = getelementptr [7 x i8], [7 x i8]* @.str800, i32 0, i32 0
  %6110 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str800.c, i8* %6109)
  %6111 = call %nyx_string* @nyx_string_concat(%nyx_string* %6108, %nyx_string* %6110)
  %6112 = load { i64, i8* }*, { i64, i8* }** %6073
  %6113 = call %nyx_string* @ty_to_str({ i64, i8* }* %6112)
  %6114 = call %nyx_string* @nyx_string_concat(%nyx_string* %6111, %nyx_string* %6113)
  %6115 = call %nyx_string* @msg(%nyx_string* %6098, %nyx_string* %6114)
  %6116 = getelementptr [1 x i8], [1 x i8]* @.str801, i32 0, i32 0
  %6117 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str801.c, i8* %6116)
  %6118 = call i64 @sem_diag(%nyx_string* %6082, %nyx_string* %6115, %nyx_string* %6117)
  ret i1 0
else1284:
  br label %merge1285
merge1285:
  %6119 = load { i64, i8* }*, { i64, i8* }** %6053
  %6120 = load { i64, i8* }*, { i64, i8* }** %6073
  %6121 = load %nyx_string*, %nyx_string** %6042
  %6122 = call i1 @ty_check_dyn_compat({ i64, i8* }* %6119, { i64, i8* }* %6120, %nyx_string* %6121)
  %6123 = xor i1 %6122, true
  br i1 %6123, label %then1286, label %else1287
then1286:
  ret i1 0
else1287:
  br label %merge1288
merge1288:
  br label %merge1282
else1281:
  br label %merge1282
merge1282:
  br label %merge1279
else1278:
  br label %merge1279
merge1279:
  br label %merge1276
else1275:
  br label %merge1276
merge1276:
  br label %merge1273
else1272:
  br label %merge1273
merge1273:
  %6124 = load %ASTNode, %ASTNode* %node.ptr
  %6125 = call i1 @get_bool_at(%ASTNode %6124, i64 1)
  %6126 = alloca i1
  store i1 %6125, i1* %6126
  %6127 = load i1, i1* %6126
  br i1 %6127, label %then1289, label %else1290
then1289:
  %6128 = load %nyx_string*, %nyx_string** %6042
  %6129 = getelementptr [4 x i8], [4 x i8]* @.str802, i32 0, i32 0
  %6130 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str802.c, i8* %6129)
  %6131 = call i64 @scope_declare(%nyx_string* %6128, %nyx_string* %6130)
  br label %merge1291
else1290:
  %6132 = load %nyx_string*, %nyx_string** %6042
  %6133 = getelementptr [4 x i8], [4 x i8]* @.str803, i32 0, i32 0
  %6134 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str803.c, i8* %6133)
  %6135 = call i64 @scope_declare(%nyx_string* %6132, %nyx_string* %6134)
  br label %merge1291
merge1291:
  %6136 = load { i64, i8* }*, { i64, i8* }** %6053
  %6137 = call i1 @ty_is_unknown({ i64, i8* }* %6136)
  %6138 = xor i1 %6137, true
  br i1 %6138, label %then1292, label %else1293
then1292:
  %6139 = load { i64, i8* }*, { i64, i8* }** %6053
  %6140 = call i64 @set_last_var_type({ i64, i8* }* %6139)
  br label %merge1294
else1293:
  %6141 = load %ASTNode, %ASTNode* %6045
  %6142 = call { i64, i8* }* @ty_of_expr(%ASTNode %6141)
  %6143 = alloca { i64, i8* }*
  store { i64, i8* }* %6142, { i64, i8* }** %6143
  %6144 = load { i64, i8* }*, { i64, i8* }** %6143
  %6145 = call i64 @set_last_var_type({ i64, i8* }* %6144)
  br label %merge1294
merge1294:
  ret i1 1
}

define internal i1 @validate_const(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %6146 = load %ASTNode, %ASTNode* %node.ptr
  %6147 = call %nyx_string* @get_string_at(%ASTNode %6146, i64 0)
  %6148 = alloca %nyx_string*
  store %nyx_string* %6147, %nyx_string** %6148
  %6149 = load %nyx_string*, %nyx_string** %6148
  %6150 = call i1 @scope_has_in_current(%nyx_string* %6149)
  br i1 %6150, label %then1295, label %else1296
then1295:
  %6151 = getelementptr [8 x i8], [8 x i8]* @.str804, i32 0, i32 0
  %6152 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str804.c, i8* %6151)
  %6153 = getelementptr [2 x i8], [2 x i8]* @.str805, i32 0, i32 0
  %6154 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str805.c, i8* %6153)
  %6155 = load %nyx_string*, %nyx_string** %6148
  %6156 = call %nyx_string* @nyx_string_concat(%nyx_string* %6154, %nyx_string* %6155)
  %6157 = getelementptr [3 x i8], [3 x i8]* @.str806, i32 0, i32 0
  %6158 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str806.c, i8* %6157)
  %6159 = call %nyx_string* @nyx_string_concat(%nyx_string* %6156, %nyx_string* %6158)
  %6160 = getelementptr [27 x i8], [27 x i8]* @.str807, i32 0, i32 0
  %6161 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str807.c, i8* %6160)
  %6162 = getelementptr [31 x i8], [31 x i8]* @.str808, i32 0, i32 0
  %6163 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str808.c, i8* %6162)
  %6164 = call %nyx_string* @msg(%nyx_string* %6161, %nyx_string* %6163)
  %6165 = call %nyx_string* @nyx_string_concat(%nyx_string* %6159, %nyx_string* %6164)
  %6166 = getelementptr [1 x i8], [1 x i8]* @.str809, i32 0, i32 0
  %6167 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str809.c, i8* %6166)
  %6168 = call i64 @sem_diag(%nyx_string* %6152, %nyx_string* %6165, %nyx_string* %6167)
  ret i1 0
else1296:
  br label %merge1297
merge1297:
  %6169 = load %ASTNode, %ASTNode* %node.ptr
  %6170 = call %ASTNode @get_node_at(%ASTNode %6169, i64 1)
  %6171 = alloca %ASTNode
  store %ASTNode %6170, %ASTNode* %6171
  %6172 = load %ASTNode, %ASTNode* %6171
  %6173 = call i1 @validate_node(%ASTNode %6172)
  %6174 = xor i1 %6173, true
  br i1 %6174, label %then1298, label %else1299
then1298:
  ret i1 0
else1299:
  br label %merge1300
merge1300:
  %6175 = load %nyx_string*, %nyx_string** %6148
  %6176 = getelementptr [6 x i8], [6 x i8]* @.str810, i32 0, i32 0
  %6177 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str810.c, i8* %6176)
  %6178 = call i64 @scope_declare(%nyx_string* %6175, %nyx_string* %6177)
  ret i1 1
}

define internal i1 @validate_assign(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %6179 = load %ASTNode, %ASTNode* %node.ptr
  %6180 = call %ASTNode @get_node_at(%ASTNode %6179, i64 0)
  %6181 = alloca %ASTNode
  store %ASTNode %6180, %ASTNode* %6181
  %6182 = getelementptr %ASTNode, %ASTNode* %6181, i32 0, i32 0
  %6183 = load %nyx_string*, %nyx_string** %6182
  %6184 = alloca %nyx_string*
  store %nyx_string* %6183, %nyx_string** %6184
  %6185 = load %nyx_string*, %nyx_string** %6184
  %6186 = call %nyx_string* @scope_lookup(%nyx_string* %6185)
  %6187 = alloca %nyx_string*
  store %nyx_string* %6186, %nyx_string** %6187
  %6188 = load %nyx_string*, %nyx_string** %6187
  %6189 = getelementptr [1 x i8], [1 x i8]* @.str811, i32 0, i32 0
  %6190 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str811.c, i8* %6189)
  %6191 = call i1 @nyx_string_equals(%nyx_string* %6188, %nyx_string* %6190)
  br i1 %6191, label %then1301, label %else1302
then1301:
  %6192 = getelementptr [8 x i8], [8 x i8]* @.str812, i32 0, i32 0
  %6193 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str812.c, i8* %6192)
  %6194 = getelementptr [9 x i8], [9 x i8]* @.str813, i32 0, i32 0
  %6195 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str813.c, i8* %6194)
  %6196 = getelementptr [9 x i8], [9 x i8]* @.str814, i32 0, i32 0
  %6197 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str814.c, i8* %6196)
  %6198 = call %nyx_string* @msg(%nyx_string* %6195, %nyx_string* %6197)
  %6199 = getelementptr [3 x i8], [3 x i8]* @.str815, i32 0, i32 0
  %6200 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str815.c, i8* %6199)
  %6201 = call %nyx_string* @nyx_string_concat(%nyx_string* %6198, %nyx_string* %6200)
  %6202 = load %nyx_string*, %nyx_string** %6184
  %6203 = call %nyx_string* @nyx_string_concat(%nyx_string* %6201, %nyx_string* %6202)
  %6204 = getelementptr [3 x i8], [3 x i8]* @.str816, i32 0, i32 0
  %6205 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str816.c, i8* %6204)
  %6206 = call %nyx_string* @nyx_string_concat(%nyx_string* %6203, %nyx_string* %6205)
  %6207 = getelementptr [13 x i8], [13 x i8]* @.str817, i32 0, i32 0
  %6208 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str817.c, i8* %6207)
  %6209 = getelementptr [13 x i8], [13 x i8]* @.str818, i32 0, i32 0
  %6210 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str818.c, i8* %6209)
  %6211 = call %nyx_string* @msg(%nyx_string* %6208, %nyx_string* %6210)
  %6212 = call %nyx_string* @nyx_string_concat(%nyx_string* %6206, %nyx_string* %6211)
  %6213 = getelementptr [1 x i8], [1 x i8]* @.str819, i32 0, i32 0
  %6214 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str819.c, i8* %6213)
  %6215 = call i64 @sem_diag(%nyx_string* %6193, %nyx_string* %6212, %nyx_string* %6214)
  ret i1 0
else1302:
  br label %merge1303
merge1303:
  %6216 = load %nyx_string*, %nyx_string** %6187
  %6217 = getelementptr [4 x i8], [4 x i8]* @.str820, i32 0, i32 0
  %6218 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str820.c, i8* %6217)
  %6219 = call i1 @nyx_string_equals(%nyx_string* %6216, %nyx_string* %6218)
  br i1 %6219, label %then1304, label %else1305
then1304:
  %6220 = getelementptr [8 x i8], [8 x i8]* @.str821, i32 0, i32 0
  %6221 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str821.c, i8* %6220)
  %6222 = getelementptr [2 x i8], [2 x i8]* @.str822, i32 0, i32 0
  %6223 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str822.c, i8* %6222)
  %6224 = load %nyx_string*, %nyx_string** %6184
  %6225 = call %nyx_string* @nyx_string_concat(%nyx_string* %6223, %nyx_string* %6224)
  %6226 = getelementptr [3 x i8], [3 x i8]* @.str823, i32 0, i32 0
  %6227 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str823.c, i8* %6226)
  %6228 = call %nyx_string* @nyx_string_concat(%nyx_string* %6225, %nyx_string* %6227)
  %6229 = getelementptr [33 x i8], [33 x i8]* @.str824, i32 0, i32 0
  %6230 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str824.c, i8* %6229)
  %6231 = getelementptr [33 x i8], [33 x i8]* @.str825, i32 0, i32 0
  %6232 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str825.c, i8* %6231)
  %6233 = call %nyx_string* @msg(%nyx_string* %6230, %nyx_string* %6232)
  %6234 = call %nyx_string* @nyx_string_concat(%nyx_string* %6228, %nyx_string* %6233)
  %6235 = getelementptr [1 x i8], [1 x i8]* @.str826, i32 0, i32 0
  %6236 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str826.c, i8* %6235)
  %6237 = call i64 @sem_diag(%nyx_string* %6221, %nyx_string* %6234, %nyx_string* %6236)
  ret i1 0
else1305:
  br label %merge1306
merge1306:
  %6238 = load %nyx_string*, %nyx_string** %6187
  %6239 = getelementptr [6 x i8], [6 x i8]* @.str827, i32 0, i32 0
  %6240 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str827.c, i8* %6239)
  %6241 = call i1 @nyx_string_equals(%nyx_string* %6238, %nyx_string* %6240)
  br i1 %6241, label %then1307, label %else1308
then1307:
  %6242 = getelementptr [8 x i8], [8 x i8]* @.str828, i32 0, i32 0
  %6243 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str828.c, i8* %6242)
  %6244 = getelementptr [2 x i8], [2 x i8]* @.str829, i32 0, i32 0
  %6245 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str829.c, i8* %6244)
  %6246 = load %nyx_string*, %nyx_string** %6184
  %6247 = call %nyx_string* @nyx_string_concat(%nyx_string* %6245, %nyx_string* %6246)
  %6248 = getelementptr [3 x i8], [3 x i8]* @.str830, i32 0, i32 0
  %6249 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str830.c, i8* %6248)
  %6250 = call %nyx_string* @nyx_string_concat(%nyx_string* %6247, %nyx_string* %6249)
  %6251 = getelementptr [35 x i8], [35 x i8]* @.str831, i32 0, i32 0
  %6252 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str831.c, i8* %6251)
  %6253 = getelementptr [34 x i8], [34 x i8]* @.str832, i32 0, i32 0
  %6254 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str832.c, i8* %6253)
  %6255 = call %nyx_string* @msg(%nyx_string* %6252, %nyx_string* %6254)
  %6256 = call %nyx_string* @nyx_string_concat(%nyx_string* %6250, %nyx_string* %6255)
  %6257 = getelementptr [1 x i8], [1 x i8]* @.str833, i32 0, i32 0
  %6258 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str833.c, i8* %6257)
  %6259 = call i64 @sem_diag(%nyx_string* %6243, %nyx_string* %6256, %nyx_string* %6258)
  ret i1 0
else1308:
  br label %merge1309
merge1309:
  %6260 = load %ASTNode, %ASTNode* %node.ptr
  %6261 = call %ASTNode @get_node_at(%ASTNode %6260, i64 1)
  %6262 = alloca %ASTNode
  store %ASTNode %6261, %ASTNode* %6262
  %6263 = load %ASTNode, %ASTNode* %6262
  %6264 = call i1 @validate_node(%ASTNode %6263)
  ret i1 %6264
}

define internal i1 @block_ends_with_return(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %6265 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 0
  %6266 = load %nyx_string*, %nyx_string** %6265
  %6267 = getelementptr [6 x i8], [6 x i8]* @.str834, i32 0, i32 0
  %6268 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str834.c, i8* %6267)
  %6269 = call i1 @nyx_string_equals(%nyx_string* %6266, %nyx_string* %6268)
  %6270 = xor i1 %6269, true
  br i1 %6270, label %then1310, label %else1311
then1310:
  ret i1 0
else1311:
  br label %merge1312
merge1312:
  %6271 = load %ASTNode, %ASTNode* %node.ptr
  %6272 = call { i64, i8* }* @get_array_at(%ASTNode %6271, i64 0)
  %6273 = alloca { i64, i8* }*
  store { i64, i8* }* %6272, { i64, i8* }** %6273
  %6274 = load { i64, i8* }*, { i64, i8* }** %6273
  %6275 = call i64 @nyx_array_length({ i64, i8* }* %6274)
  %6276 = icmp eq i64 %6275, 0
  br i1 %6276, label %then1313, label %else1314
then1313:
  ret i1 0
else1314:
  br label %merge1315
merge1315:
  %6277 = load { i64, i8* }*, { i64, i8* }** %6273
  %6278 = load { i64, i8* }*, { i64, i8* }** %6273
  %6279 = call i64 @nyx_array_length({ i64, i8* }* %6278)
  %6280 = sub i64 %6279, 1
  %6281 = call i64 @nyx_array_get({ i64, i8* }* %6277, i64 %6280)
  %6282 = inttoptr i64 %6281 to { i64, i8* }*
  %6283 = call i64 @nyx_array_get({ i64, i8* }* %6282, i64 0)
  %6284 = call i64 @nyx_array_get({ i64, i8* }* %6282, i64 1)
  %6285 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %6282, i64 2)
  %6286 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %6282, i64 3)
  %6287 = inttoptr i64 %6283 to %nyx_string*
  %6288 = inttoptr i64 %6284 to { i64, i8* }*
  %6289 = alloca %ASTNode
  %6290 = getelementptr inbounds %ASTNode, %ASTNode* %6289, i32 0, i32 0
  store %nyx_string* %6287, %nyx_string** %6290
  %6291 = getelementptr inbounds %ASTNode, %ASTNode* %6289, i32 0, i32 1
  store { i64, i8* }* %6288, { i64, i8* }** %6291
  %6292 = getelementptr inbounds %ASTNode, %ASTNode* %6289, i32 0, i32 2
  store i64 %6285, i64* %6292
  %6293 = getelementptr inbounds %ASTNode, %ASTNode* %6289, i32 0, i32 3
  store i64 %6286, i64* %6293
  %6294 = load %ASTNode, %ASTNode* %6289
  %6295 = alloca %ASTNode
  store %ASTNode %6294, %ASTNode* %6295
  %6296 = getelementptr %ASTNode, %ASTNode* %6295, i32 0, i32 0
  %6297 = load %nyx_string*, %nyx_string** %6296
  %6298 = getelementptr [7 x i8], [7 x i8]* @.str835, i32 0, i32 0
  %6299 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str835.c, i8* %6298)
  %6300 = call i1 @nyx_string_equals(%nyx_string* %6297, %nyx_string* %6299)
  br i1 %6300, label %then1316, label %else1317
then1316:
  ret i1 1
else1317:
  br label %merge1318
merge1318:
  %6301 = getelementptr %ASTNode, %ASTNode* %6295, i32 0, i32 0
  %6302 = load %nyx_string*, %nyx_string** %6301
  %6303 = getelementptr [3 x i8], [3 x i8]* @.str836, i32 0, i32 0
  %6304 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str836.c, i8* %6303)
  %6305 = call i1 @nyx_string_equals(%nyx_string* %6302, %nyx_string* %6304)
  br i1 %6305, label %then1319, label %else1320
then1319:
  %6306 = load %ASTNode, %ASTNode* %6295
  %6307 = call %ASTNode @get_node_at(%ASTNode %6306, i64 1)
  %6308 = alloca %ASTNode
  store %ASTNode %6307, %ASTNode* %6308
  %6309 = load %ASTNode, %ASTNode* %6295
  %6310 = call %ASTNode @get_node_at(%ASTNode %6309, i64 2)
  %6311 = alloca %ASTNode
  store %ASTNode %6310, %ASTNode* %6311
  %6312 = getelementptr %ASTNode, %ASTNode* %6311, i32 0, i32 0
  %6313 = load %nyx_string*, %nyx_string** %6312
  %6314 = getelementptr [6 x i8], [6 x i8]* @.str837, i32 0, i32 0
  %6315 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str837.c, i8* %6314)
  %6316 = call i1 @nyx_string_equals(%nyx_string* %6313, %nyx_string* %6315)
  br i1 %6316, label %then1322, label %else1323
then1322:
  ret i1 0
else1323:
  br label %merge1324
merge1324:
  %6317 = alloca i1
  store i1 false, i1* %6317
  %6318 = load %ASTNode, %ASTNode* %6308
  %6319 = call i1 @block_ends_with_return(%ASTNode %6318)
  br i1 %6319, label %sc_and_rhs1325, label %sc_and_end1326
sc_and_rhs1325:
  %6320 = load %ASTNode, %ASTNode* %6311
  %6321 = call i1 @block_ends_with_return(%ASTNode %6320)
  store i1 %6321, i1* %6317
  br label %sc_and_end1326
sc_and_end1326:
  %6322 = load i1, i1* %6317
  ret i1 %6322
else1320:
  br label %merge1321
merge1321:
  %6323 = getelementptr %ASTNode, %ASTNode* %6295, i32 0, i32 0
  %6324 = load %nyx_string*, %nyx_string** %6323
  %6325 = getelementptr [6 x i8], [6 x i8]* @.str838, i32 0, i32 0
  %6326 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str838.c, i8* %6325)
  %6327 = call i1 @nyx_string_equals(%nyx_string* %6324, %nyx_string* %6326)
  br i1 %6327, label %then1327, label %else1328
then1327:
  %6328 = load %ASTNode, %ASTNode* %6295
  %6329 = call { i64, i8* }* @get_array_at(%ASTNode %6328, i64 1)
  %6330 = alloca { i64, i8* }*
  store { i64, i8* }* %6329, { i64, i8* }** %6330
  %6331 = load { i64, i8* }*, { i64, i8* }** %6330
  %6332 = call i64 @nyx_array_length({ i64, i8* }* %6331)
  %6333 = icmp eq i64 %6332, 0
  br i1 %6333, label %then1330, label %else1331
then1330:
  ret i1 0
else1331:
  br label %merge1332
merge1332:
  %6334 = alloca i1
  store i1 1, i1* %6334
  %6335 = alloca i64
  store i64 0, i64* %6335
  %6336 = getelementptr [7 x i8], [7 x i8]* @.str839, i32 0, i32 0
  %6337 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str839.c, i8* %6336)
  %6338 = alloca %nyx_string*
  store %nyx_string* %6337, %nyx_string** %6338
  br label %while_cond1333
while_cond1333:
  %6339 = load i64, i64* %6335
  %6340 = load { i64, i8* }*, { i64, i8* }** %6330
  %6341 = call i64 @nyx_array_length({ i64, i8* }* %6340)
  %6342 = icmp slt i64 %6339, %6341
  br i1 %6342, label %while_body1334, label %while_end1335
while_body1334:
  %6343 = load { i64, i8* }*, { i64, i8* }** %6330
  %6344 = load i64, i64* %6335
  %6345 = call i64 @nyx_array_get({ i64, i8* }* %6343, i64 %6344)
  %6346 = inttoptr i64 %6345 to { i64, i8* }*
  %6347 = call i64 @nyx_array_get({ i64, i8* }* %6346, i64 0)
  %6348 = call i64 @nyx_array_get({ i64, i8* }* %6346, i64 1)
  %6349 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %6346, i64 2)
  %6350 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %6346, i64 3)
  %6351 = inttoptr i64 %6347 to %nyx_string*
  %6352 = inttoptr i64 %6348 to { i64, i8* }*
  %6353 = alloca %ASTNode
  %6354 = getelementptr inbounds %ASTNode, %ASTNode* %6353, i32 0, i32 0
  store %nyx_string* %6351, %nyx_string** %6354
  %6355 = getelementptr inbounds %ASTNode, %ASTNode* %6353, i32 0, i32 1
  store { i64, i8* }* %6352, { i64, i8* }** %6355
  %6356 = getelementptr inbounds %ASTNode, %ASTNode* %6353, i32 0, i32 2
  store i64 %6349, i64* %6356
  %6357 = getelementptr inbounds %ASTNode, %ASTNode* %6353, i32 0, i32 3
  store i64 %6350, i64* %6357
  %6358 = load %ASTNode, %ASTNode* %6353
  %6359 = alloca %ASTNode
  store %ASTNode %6358, %ASTNode* %6359
  %6360 = load %ASTNode, %ASTNode* %6359
  %6361 = call %ASTNode @get_node_at(%ASTNode %6360, i64 1)
  %6362 = alloca %ASTNode
  store %ASTNode %6361, %ASTNode* %6362
  %6363 = load %ASTNode, %ASTNode* %6362
  %6364 = call i1 @block_ends_with_return(%ASTNode %6363)
  %6365 = xor i1 %6364, true
  br i1 %6365, label %then1336, label %else1337
then1336:
  %6366 = getelementptr %ASTNode, %ASTNode* %6362, i32 0, i32 0
  %6367 = load %nyx_string*, %nyx_string** %6366
  %6368 = load %nyx_string*, %nyx_string** %6338
  %6369 = call i1 @nyx_string_equals(%nyx_string* %6367, %nyx_string* %6368)
  %6370 = xor i1 %6369, true
  br i1 %6370, label %then1339, label %else1340
then1339:
  store i1 0, i1* %6334
  br label %merge1341
else1340:
  br label %merge1341
merge1341:
  br label %merge1338
else1337:
  br label %merge1338
merge1338:
  %6371 = load i64, i64* %6335
  %6372 = add i64 %6371, 1
  store i64 %6372, i64* %6335
  br label %while_cond1333
while_end1335:
  %6373 = load i1, i1* %6334
  ret i1 %6373
else1328:
  br label %merge1329
merge1329:
  ret i1 0
}

define internal i64 @collect_return_types(
%ASTNode %node.param, { i64, i8* }* %out.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %out.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %out.param, { i64, i8* }** %out.ptr
  %6374 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 0
  %6375 = load %nyx_string*, %nyx_string** %6374
  %6376 = alloca %nyx_string*
  store %nyx_string* %6375, %nyx_string** %6376
  %6377 = load %nyx_string*, %nyx_string** %6376
  %6378 = getelementptr [9 x i8], [9 x i8]* @.str840, i32 0, i32 0
  %6379 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str840.c, i8* %6378)
  %6380 = call i1 @nyx_string_equals(%nyx_string* %6377, %nyx_string* %6379)
  br i1 %6380, label %then1342, label %else1343
then1342:
  ret i64 0
else1343:
  br label %merge1344
merge1344:
  %6381 = load %nyx_string*, %nyx_string** %6376
  %6382 = getelementptr [9 x i8], [9 x i8]* @.str841, i32 0, i32 0
  %6383 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str841.c, i8* %6382)
  %6384 = call i1 @nyx_string_equals(%nyx_string* %6381, %nyx_string* %6383)
  br i1 %6384, label %then1345, label %else1346
then1345:
  ret i64 0
else1346:
  br label %merge1347
merge1347:
  %6385 = load %nyx_string*, %nyx_string** %6376
  %6386 = getelementptr [7 x i8], [7 x i8]* @.str842, i32 0, i32 0
  %6387 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str842.c, i8* %6386)
  %6388 = call i1 @nyx_string_equals(%nyx_string* %6385, %nyx_string* %6387)
  br i1 %6388, label %then1348, label %else1349
then1348:
  %6389 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %6390 = load { i64, i8* }*, { i64, i8* }** %6389
  %6391 = alloca { i64, i8* }*
  store { i64, i8* }* %6390, { i64, i8* }** %6391
  %6392 = load { i64, i8* }*, { i64, i8* }** %6391
  %6393 = call i64 @nyx_array_length({ i64, i8* }* %6392)
  %6394 = icmp sgt i64 %6393, 0
  br i1 %6394, label %then1351, label %else1352
then1351:
  %6395 = load { i64, i8* }*, { i64, i8* }** %6391
  %6396 = call i64 @nyx_array_get({ i64, i8* }* %6395, i64 0)
  %6397 = inttoptr i64 %6396 to { i64, i8* }*
  %6398 = call i64 @nyx_array_get({ i64, i8* }* %6397, i64 0)
  %6399 = call i64 @nyx_array_get({ i64, i8* }* %6397, i64 1)
  %6400 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %6397, i64 2)
  %6401 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %6397, i64 3)
  %6402 = inttoptr i64 %6398 to %nyx_string*
  %6403 = inttoptr i64 %6399 to { i64, i8* }*
  %6404 = alloca %ASTNode
  %6405 = getelementptr inbounds %ASTNode, %ASTNode* %6404, i32 0, i32 0
  store %nyx_string* %6402, %nyx_string** %6405
  %6406 = getelementptr inbounds %ASTNode, %ASTNode* %6404, i32 0, i32 1
  store { i64, i8* }* %6403, { i64, i8* }** %6406
  %6407 = getelementptr inbounds %ASTNode, %ASTNode* %6404, i32 0, i32 2
  store i64 %6400, i64* %6407
  %6408 = getelementptr inbounds %ASTNode, %ASTNode* %6404, i32 0, i32 3
  store i64 %6401, i64* %6408
  %6409 = load %ASTNode, %ASTNode* %6404
  %6410 = alloca %ASTNode
  store %ASTNode %6409, %ASTNode* %6410
  %6411 = getelementptr %ASTNode, %ASTNode* %6410, i32 0, i32 0
  %6412 = load %nyx_string*, %nyx_string** %6411
  %6413 = getelementptr [6 x i8], [6 x i8]* @.str843, i32 0, i32 0
  %6414 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str843.c, i8* %6413)
  %6415 = call i1 @nyx_string_equals(%nyx_string* %6412, %nyx_string* %6414)
  br i1 %6415, label %then1354, label %else1355
then1354:
  %6416 = load { i64, i8* }*, { i64, i8* }** %out.ptr
  %6417 = call { i64, i8* }* @ty_unit()
  %6418 = ptrtoint { i64, i8* }* %6417 to i64
  call void @nyx_array_push({ i64, i8* }* %6416, i64 %6418)
  br label %merge1356
else1355:
  %6419 = load { i64, i8* }*, { i64, i8* }** %out.ptr
  %6420 = load %ASTNode, %ASTNode* %6410
  %6421 = call { i64, i8* }* @ty_of_expr(%ASTNode %6420)
  %6422 = ptrtoint { i64, i8* }* %6421 to i64
  call void @nyx_array_push({ i64, i8* }* %6419, i64 %6422)
  br label %merge1356
merge1356:
  br label %merge1353
else1352:
  %6423 = load { i64, i8* }*, { i64, i8* }** %out.ptr
  %6424 = call { i64, i8* }* @ty_unit()
  %6425 = ptrtoint { i64, i8* }* %6424 to i64
  call void @nyx_array_push({ i64, i8* }* %6423, i64 %6425)
  br label %merge1353
merge1353:
  ret i64 0
else1349:
  br label %merge1350
merge1350:
  %6426 = load %nyx_string*, %nyx_string** %6376
  %6427 = getelementptr [6 x i8], [6 x i8]* @.str844, i32 0, i32 0
  %6428 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str844.c, i8* %6427)
  %6429 = call i1 @nyx_string_equals(%nyx_string* %6426, %nyx_string* %6428)
  br i1 %6429, label %then1357, label %else1358
then1357:
  %6430 = load %ASTNode, %ASTNode* %node.ptr
  %6431 = call { i64, i8* }* @get_array_at(%ASTNode %6430, i64 0)
  %6432 = alloca { i64, i8* }*
  store { i64, i8* }* %6431, { i64, i8* }** %6432
  %6433 = alloca i64
  store i64 0, i64* %6433
  br label %while_cond1360
while_cond1360:
  %6434 = load i64, i64* %6433
  %6435 = load { i64, i8* }*, { i64, i8* }** %6432
  %6436 = call i64 @nyx_array_length({ i64, i8* }* %6435)
  %6437 = icmp slt i64 %6434, %6436
  br i1 %6437, label %while_body1361, label %while_end1362
while_body1361:
  %6438 = load { i64, i8* }*, { i64, i8* }** %6432
  %6439 = load i64, i64* %6433
  %6440 = call i64 @nyx_array_get({ i64, i8* }* %6438, i64 %6439)
  %6441 = inttoptr i64 %6440 to { i64, i8* }*
  %6442 = call i64 @nyx_array_get({ i64, i8* }* %6441, i64 0)
  %6443 = call i64 @nyx_array_get({ i64, i8* }* %6441, i64 1)
  %6444 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %6441, i64 2)
  %6445 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %6441, i64 3)
  %6446 = inttoptr i64 %6442 to %nyx_string*
  %6447 = inttoptr i64 %6443 to { i64, i8* }*
  %6448 = alloca %ASTNode
  %6449 = getelementptr inbounds %ASTNode, %ASTNode* %6448, i32 0, i32 0
  store %nyx_string* %6446, %nyx_string** %6449
  %6450 = getelementptr inbounds %ASTNode, %ASTNode* %6448, i32 0, i32 1
  store { i64, i8* }* %6447, { i64, i8* }** %6450
  %6451 = getelementptr inbounds %ASTNode, %ASTNode* %6448, i32 0, i32 2
  store i64 %6444, i64* %6451
  %6452 = getelementptr inbounds %ASTNode, %ASTNode* %6448, i32 0, i32 3
  store i64 %6445, i64* %6452
  %6453 = load %ASTNode, %ASTNode* %6448
  %6454 = alloca %ASTNode
  store %ASTNode %6453, %ASTNode* %6454
  %6455 = load %ASTNode, %ASTNode* %6454
  %6456 = load { i64, i8* }*, { i64, i8* }** %out.ptr
  %6457 = call i64 @collect_return_types(%ASTNode %6455, { i64, i8* }* %6456)
  %6458 = load i64, i64* %6433
  %6459 = add i64 %6458, 1
  store i64 %6459, i64* %6433
  br label %while_cond1360
while_end1362:
  ret i64 0
else1358:
  br label %merge1359
merge1359:
  %6460 = load %nyx_string*, %nyx_string** %6376
  %6461 = getelementptr [3 x i8], [3 x i8]* @.str845, i32 0, i32 0
  %6462 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str845.c, i8* %6461)
  %6463 = call i1 @nyx_string_equals(%nyx_string* %6460, %nyx_string* %6462)
  br i1 %6463, label %then1363, label %else1364
then1363:
  %6464 = load %ASTNode, %ASTNode* %node.ptr
  %6465 = call %ASTNode @get_node_at(%ASTNode %6464, i64 1)
  %6466 = alloca %ASTNode
  store %ASTNode %6465, %ASTNode* %6466
  %6467 = load %ASTNode, %ASTNode* %node.ptr
  %6468 = call %ASTNode @get_node_at(%ASTNode %6467, i64 2)
  %6469 = alloca %ASTNode
  store %ASTNode %6468, %ASTNode* %6469
  %6470 = load %ASTNode, %ASTNode* %6466
  %6471 = load { i64, i8* }*, { i64, i8* }** %out.ptr
  %6472 = call i64 @collect_return_types(%ASTNode %6470, { i64, i8* }* %6471)
  %6473 = getelementptr %ASTNode, %ASTNode* %6469, i32 0, i32 0
  %6474 = load %nyx_string*, %nyx_string** %6473
  %6475 = getelementptr [6 x i8], [6 x i8]* @.str846, i32 0, i32 0
  %6476 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str846.c, i8* %6475)
  %6477 = call i1 @nyx_string_equals(%nyx_string* %6474, %nyx_string* %6476)
  %6478 = xor i1 %6477, true
  br i1 %6478, label %then1366, label %else1367
then1366:
  %6479 = load %ASTNode, %ASTNode* %6469
  %6480 = load { i64, i8* }*, { i64, i8* }** %out.ptr
  %6481 = call i64 @collect_return_types(%ASTNode %6479, { i64, i8* }* %6480)
  br label %merge1368
else1367:
  br label %merge1368
merge1368:
  ret i64 0
else1364:
  br label %merge1365
merge1365:
  %6482 = load %nyx_string*, %nyx_string** %6376
  %6483 = getelementptr [6 x i8], [6 x i8]* @.str847, i32 0, i32 0
  %6484 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str847.c, i8* %6483)
  %6485 = call i1 @nyx_string_equals(%nyx_string* %6482, %nyx_string* %6484)
  br i1 %6485, label %then1369, label %else1370
then1369:
  %6486 = load %ASTNode, %ASTNode* %node.ptr
  %6487 = call %ASTNode @get_node_at(%ASTNode %6486, i64 1)
  %6488 = alloca %ASTNode
  store %ASTNode %6487, %ASTNode* %6488
  %6489 = load %ASTNode, %ASTNode* %6488
  %6490 = load { i64, i8* }*, { i64, i8* }** %out.ptr
  %6491 = call i64 @collect_return_types(%ASTNode %6489, { i64, i8* }* %6490)
  ret i64 0
else1370:
  br label %merge1371
merge1371:
  %6492 = load %nyx_string*, %nyx_string** %6376
  %6493 = getelementptr [4 x i8], [4 x i8]* @.str848, i32 0, i32 0
  %6494 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str848.c, i8* %6493)
  %6495 = call i1 @nyx_string_equals(%nyx_string* %6492, %nyx_string* %6494)
  br i1 %6495, label %then1372, label %else1373
then1372:
  %6496 = load %ASTNode, %ASTNode* %node.ptr
  %6497 = call %ASTNode @get_node_at(%ASTNode %6496, i64 2)
  %6498 = alloca %ASTNode
  store %ASTNode %6497, %ASTNode* %6498
  %6499 = load %ASTNode, %ASTNode* %6498
  %6500 = load { i64, i8* }*, { i64, i8* }** %out.ptr
  %6501 = call i64 @collect_return_types(%ASTNode %6499, { i64, i8* }* %6500)
  ret i64 0
else1373:
  br label %merge1374
merge1374:
  %6502 = load %nyx_string*, %nyx_string** %6376
  %6503 = getelementptr [6 x i8], [6 x i8]* @.str849, i32 0, i32 0
  %6504 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str849.c, i8* %6503)
  %6505 = call i1 @nyx_string_equals(%nyx_string* %6502, %nyx_string* %6504)
  br i1 %6505, label %then1375, label %else1376
then1375:
  %6506 = load %ASTNode, %ASTNode* %node.ptr
  %6507 = call { i64, i8* }* @get_array_at(%ASTNode %6506, i64 1)
  %6508 = alloca { i64, i8* }*
  store { i64, i8* }* %6507, { i64, i8* }** %6508
  %6509 = alloca i64
  store i64 0, i64* %6509
  br label %while_cond1378
while_cond1378:
  %6510 = load i64, i64* %6509
  %6511 = load { i64, i8* }*, { i64, i8* }** %6508
  %6512 = call i64 @nyx_array_length({ i64, i8* }* %6511)
  %6513 = icmp slt i64 %6510, %6512
  br i1 %6513, label %while_body1379, label %while_end1380
while_body1379:
  %6514 = load { i64, i8* }*, { i64, i8* }** %6508
  %6515 = load i64, i64* %6509
  %6516 = call i64 @nyx_array_get({ i64, i8* }* %6514, i64 %6515)
  %6517 = inttoptr i64 %6516 to { i64, i8* }*
  %6518 = call i64 @nyx_array_get({ i64, i8* }* %6517, i64 0)
  %6519 = call i64 @nyx_array_get({ i64, i8* }* %6517, i64 1)
  %6520 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %6517, i64 2)
  %6521 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %6517, i64 3)
  %6522 = inttoptr i64 %6518 to %nyx_string*
  %6523 = inttoptr i64 %6519 to { i64, i8* }*
  %6524 = alloca %ASTNode
  %6525 = getelementptr inbounds %ASTNode, %ASTNode* %6524, i32 0, i32 0
  store %nyx_string* %6522, %nyx_string** %6525
  %6526 = getelementptr inbounds %ASTNode, %ASTNode* %6524, i32 0, i32 1
  store { i64, i8* }* %6523, { i64, i8* }** %6526
  %6527 = getelementptr inbounds %ASTNode, %ASTNode* %6524, i32 0, i32 2
  store i64 %6520, i64* %6527
  %6528 = getelementptr inbounds %ASTNode, %ASTNode* %6524, i32 0, i32 3
  store i64 %6521, i64* %6528
  %6529 = load %ASTNode, %ASTNode* %6524
  %6530 = alloca %ASTNode
  store %ASTNode %6529, %ASTNode* %6530
  %6531 = load %ASTNode, %ASTNode* %6530
  %6532 = load { i64, i8* }*, { i64, i8* }** %out.ptr
  %6533 = call i64 @collect_return_types(%ASTNode %6531, { i64, i8* }* %6532)
  %6534 = load i64, i64* %6509
  %6535 = add i64 %6534, 1
  store i64 %6535, i64* %6509
  br label %while_cond1378
while_end1380:
  ret i64 0
else1376:
  br label %merge1377
merge1377:
  %6536 = load %nyx_string*, %nyx_string** %6376
  %6537 = getelementptr [10 x i8], [10 x i8]* @.str850, i32 0, i32 0
  %6538 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str850.c, i8* %6537)
  %6539 = call i1 @nyx_string_equals(%nyx_string* %6536, %nyx_string* %6538)
  br i1 %6539, label %then1381, label %else1382
then1381:
  %6540 = load %ASTNode, %ASTNode* %node.ptr
  %6541 = call %ASTNode @get_node_at(%ASTNode %6540, i64 1)
  %6542 = alloca %ASTNode
  store %ASTNode %6541, %ASTNode* %6542
  %6543 = load %ASTNode, %ASTNode* %6542
  %6544 = load { i64, i8* }*, { i64, i8* }** %out.ptr
  %6545 = call i64 @collect_return_types(%ASTNode %6543, { i64, i8* }* %6544)
  ret i64 0
else1382:
  br label %merge1383
merge1383:
  %6546 = load %nyx_string*, %nyx_string** %6376
  %6547 = getelementptr [10 x i8], [10 x i8]* @.str851, i32 0, i32 0
  %6548 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str851.c, i8* %6547)
  %6549 = call i1 @nyx_string_equals(%nyx_string* %6546, %nyx_string* %6548)
  br i1 %6549, label %then1384, label %else1385
then1384:
  %6550 = load %ASTNode, %ASTNode* %node.ptr
  %6551 = call %ASTNode @get_node_at(%ASTNode %6550, i64 0)
  %6552 = alloca %ASTNode
  store %ASTNode %6551, %ASTNode* %6552
  %6553 = load %ASTNode, %ASTNode* %node.ptr
  %6554 = call %ASTNode @get_node_at(%ASTNode %6553, i64 2)
  %6555 = alloca %ASTNode
  store %ASTNode %6554, %ASTNode* %6555
  %6556 = load %ASTNode, %ASTNode* %6552
  %6557 = load { i64, i8* }*, { i64, i8* }** %out.ptr
  %6558 = call i64 @collect_return_types(%ASTNode %6556, { i64, i8* }* %6557)
  %6559 = load %ASTNode, %ASTNode* %6555
  %6560 = load { i64, i8* }*, { i64, i8* }** %out.ptr
  %6561 = call i64 @collect_return_types(%ASTNode %6559, { i64, i8* }* %6560)
  ret i64 0
else1385:
  br label %merge1386
merge1386:
  %6562 = load %nyx_string*, %nyx_string** %6376
  %6563 = getelementptr [13 x i8], [13 x i8]* @.str852, i32 0, i32 0
  %6564 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str852.c, i8* %6563)
  %6565 = call i1 @nyx_string_equals(%nyx_string* %6562, %nyx_string* %6564)
  br i1 %6565, label %then1387, label %else1388
then1387:
  %6566 = load %ASTNode, %ASTNode* %node.ptr
  %6567 = call %ASTNode @get_node_at(%ASTNode %6566, i64 0)
  %6568 = alloca %ASTNode
  store %ASTNode %6567, %ASTNode* %6568
  %6569 = load %ASTNode, %ASTNode* %6568
  %6570 = load { i64, i8* }*, { i64, i8* }** %out.ptr
  %6571 = call i64 @collect_return_types(%ASTNode %6569, { i64, i8* }* %6570)
  ret i64 0
else1388:
  br label %merge1389
merge1389:
  %6572 = load %nyx_string*, %nyx_string** %6376
  %6573 = getelementptr [6 x i8], [6 x i8]* @.str853, i32 0, i32 0
  %6574 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str853.c, i8* %6573)
  %6575 = call i1 @nyx_string_equals(%nyx_string* %6572, %nyx_string* %6574)
  br i1 %6575, label %then1390, label %else1391
then1390:
  %6576 = load %ASTNode, %ASTNode* %node.ptr
  %6577 = call %ASTNode @get_node_at(%ASTNode %6576, i64 0)
  %6578 = alloca %ASTNode
  store %ASTNode %6577, %ASTNode* %6578
  %6579 = load %ASTNode, %ASTNode* %6578
  %6580 = load { i64, i8* }*, { i64, i8* }** %out.ptr
  %6581 = call i64 @collect_return_types(%ASTNode %6579, { i64, i8* }* %6580)
  ret i64 0
else1391:
  br label %merge1392
merge1392:
  %6582 = load %nyx_string*, %nyx_string** %6376
  %6583 = getelementptr [10 x i8], [10 x i8]* @.str854, i32 0, i32 0
  %6584 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str854.c, i8* %6583)
  %6585 = call i1 @nyx_string_equals(%nyx_string* %6582, %nyx_string* %6584)
  br i1 %6585, label %then1393, label %else1394
then1393:
  %6586 = load %ASTNode, %ASTNode* %node.ptr
  %6587 = call %ASTNode @get_node_at(%ASTNode %6586, i64 1)
  %6588 = alloca %ASTNode
  store %ASTNode %6587, %ASTNode* %6588
  %6589 = load %ASTNode, %ASTNode* %6588
  %6590 = load { i64, i8* }*, { i64, i8* }** %out.ptr
  %6591 = call i64 @collect_return_types(%ASTNode %6589, { i64, i8* }* %6590)
  ret i64 0
else1394:
  br label %merge1395
merge1395:
  ret i64 0
}

define internal { i64, i8* }* @infer_fn_return_type(
{ i64, i8* }* %types.param, %nyx_string* %fn_name.param) {
  %types.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %types.param, { i64, i8* }** %types.ptr
  %fn_name.ptr = alloca %nyx_string*
  store %nyx_string* %fn_name.param, %nyx_string** %fn_name.ptr
  %6592 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %6593 = call i64 @nyx_array_length({ i64, i8* }* %6592)
  %6594 = icmp eq i64 %6593, 0
  br i1 %6594, label %then1396, label %else1397
then1396:
  %6595 = call { i64, i8* }* @ty_unit()
  ret { i64, i8* }* %6595
else1397:
  br label %merge1398
merge1398:
  %6596 = call { i64, i8* }* @ty_unknown()
  %6597 = alloca { i64, i8* }*
  store { i64, i8* }* %6596, { i64, i8* }** %6597
  %6598 = alloca i1
  store i1 0, i1* %6598
  %6599 = alloca i64
  store i64 0, i64* %6599
  %6600 = getelementptr [8 x i8], [8 x i8]* @.str855, i32 0, i32 0
  %6601 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str855.c, i8* %6600)
  %6602 = alloca %nyx_string*
  store %nyx_string* %6601, %nyx_string** %6602
  %6603 = getelementptr [44 x i8], [44 x i8]* @.str856, i32 0, i32 0
  %6604 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str856.c, i8* %6603)
  %6605 = alloca %nyx_string*
  store %nyx_string* %6604, %nyx_string** %6605
  %6606 = getelementptr [26 x i8], [26 x i8]* @.str857, i32 0, i32 0
  %6607 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str857.c, i8* %6606)
  %6608 = alloca %nyx_string*
  store %nyx_string* %6607, %nyx_string** %6608
  %6609 = getelementptr [4 x i8], [4 x i8]* @.str858, i32 0, i32 0
  %6610 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str858.c, i8* %6609)
  %6611 = alloca %nyx_string*
  store %nyx_string* %6610, %nyx_string** %6611
  %6612 = getelementptr [30 x i8], [30 x i8]* @.str859, i32 0, i32 0
  %6613 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str859.c, i8* %6612)
  %6614 = alloca %nyx_string*
  store %nyx_string* %6613, %nyx_string** %6614
  %6615 = getelementptr [24 x i8], [24 x i8]* @.str860, i32 0, i32 0
  %6616 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str860.c, i8* %6615)
  %6617 = alloca %nyx_string*
  store %nyx_string* %6616, %nyx_string** %6617
  %6618 = getelementptr [6 x i8], [6 x i8]* @.str861, i32 0, i32 0
  %6619 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str861.c, i8* %6618)
  %6620 = alloca %nyx_string*
  store %nyx_string* %6619, %nyx_string** %6620
  %6621 = getelementptr [1 x i8], [1 x i8]* @.str862, i32 0, i32 0
  %6622 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str862.c, i8* %6621)
  %6623 = alloca %nyx_string*
  store %nyx_string* %6622, %nyx_string** %6623
  br label %while_cond1399
while_cond1399:
  %6624 = load i64, i64* %6599
  %6625 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %6626 = call i64 @nyx_array_length({ i64, i8* }* %6625)
  %6627 = icmp slt i64 %6624, %6626
  br i1 %6627, label %while_body1400, label %while_end1401
while_body1400:
  %6628 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %6629 = load i64, i64* %6599
  %6630 = call i64 @nyx_array_get({ i64, i8* }* %6628, i64 %6629)
  %6631 = inttoptr i64 %6630 to { i64, i8* }*
  %6632 = alloca { i64, i8* }*
  store { i64, i8* }* %6631, { i64, i8* }** %6632
  %6633 = load { i64, i8* }*, { i64, i8* }** %6632
  %6634 = call i1 @ty_is_unknown({ i64, i8* }* %6633)
  %6635 = xor i1 %6634, true
  br i1 %6635, label %then1402, label %else1403
then1402:
  %6636 = load i1, i1* %6598
  %6637 = xor i1 %6636, true
  br i1 %6637, label %then1405, label %else1406
then1405:
  %6638 = load { i64, i8* }*, { i64, i8* }** %6632
  store { i64, i8* }* %6638, { i64, i8* }** %6597
  store i1 1, i1* %6598
  br label %merge1407
else1406:
  %6639 = load { i64, i8* }*, { i64, i8* }** %6597
  %6640 = load { i64, i8* }*, { i64, i8* }** %6632
  %6641 = call i1 @ty_eq({ i64, i8* }* %6639, { i64, i8* }* %6640)
  %6642 = xor i1 %6641, true
  br i1 %6642, label %then1408, label %else1409
then1408:
  %6643 = load %nyx_string*, %nyx_string** %6602
  %6644 = load %nyx_string*, %nyx_string** %6605
  %6645 = load %nyx_string*, %nyx_string** %fn_name.ptr
  %6646 = call %nyx_string* @nyx_string_concat(%nyx_string* %6644, %nyx_string* %6645)
  %6647 = load %nyx_string*, %nyx_string** %6608
  %6648 = call %nyx_string* @nyx_string_concat(%nyx_string* %6646, %nyx_string* %6647)
  %6649 = load { i64, i8* }*, { i64, i8* }** %6597
  %6650 = call %nyx_string* @ty_to_str({ i64, i8* }* %6649)
  %6651 = call %nyx_string* @nyx_string_concat(%nyx_string* %6648, %nyx_string* %6650)
  %6652 = load %nyx_string*, %nyx_string** %6611
  %6653 = call %nyx_string* @nyx_string_concat(%nyx_string* %6651, %nyx_string* %6652)
  %6654 = load { i64, i8* }*, { i64, i8* }** %6632
  %6655 = call %nyx_string* @ty_to_str({ i64, i8* }* %6654)
  %6656 = call %nyx_string* @nyx_string_concat(%nyx_string* %6653, %nyx_string* %6655)
  %6657 = load %nyx_string*, %nyx_string** %6614
  %6658 = load %nyx_string*, %nyx_string** %fn_name.ptr
  %6659 = call %nyx_string* @nyx_string_concat(%nyx_string* %6657, %nyx_string* %6658)
  %6660 = load %nyx_string*, %nyx_string** %6617
  %6661 = call %nyx_string* @nyx_string_concat(%nyx_string* %6659, %nyx_string* %6660)
  %6662 = load { i64, i8* }*, { i64, i8* }** %6597
  %6663 = call %nyx_string* @ty_to_str({ i64, i8* }* %6662)
  %6664 = call %nyx_string* @nyx_string_concat(%nyx_string* %6661, %nyx_string* %6663)
  %6665 = load %nyx_string*, %nyx_string** %6620
  %6666 = call %nyx_string* @nyx_string_concat(%nyx_string* %6664, %nyx_string* %6665)
  %6667 = load { i64, i8* }*, { i64, i8* }** %6632
  %6668 = call %nyx_string* @ty_to_str({ i64, i8* }* %6667)
  %6669 = call %nyx_string* @nyx_string_concat(%nyx_string* %6666, %nyx_string* %6668)
  %6670 = call %nyx_string* @msg(%nyx_string* %6656, %nyx_string* %6669)
  %6671 = load %nyx_string*, %nyx_string** %6623
  %6672 = call i64 @sem_diag(%nyx_string* %6643, %nyx_string* %6670, %nyx_string* %6671)
  %6673 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %6673
else1409:
  br label %merge1410
merge1410:
  br label %merge1407
merge1407:
  br label %merge1404
else1403:
  br label %merge1404
merge1404:
  %6674 = load i64, i64* %6599
  %6675 = add i64 %6674, 1
  store i64 %6675, i64* %6599
  br label %while_cond1399
while_end1401:
  %6676 = load i1, i1* %6598
  br i1 %6676, label %then1411, label %else1412
then1411:
  %6677 = load { i64, i8* }*, { i64, i8* }** %6597
  ret { i64, i8* }* %6677
else1412:
  br label %merge1413
merge1413:
  %6678 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %6678
}

define internal i64 @update_fn_sig_return_by_name(
%nyx_string* %name.param, { i64, i8* }* %ret.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %ret.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ret.param, { i64, i8* }** %ret.ptr
  %6679 = alloca i64
  store i64 0, i64* %6679
  br label %while_cond1414
while_cond1414:
  %6680 = load i64, i64* %6679
  %6681 = load i64, i64* @g_fn_sig_count
  %6682 = icmp slt i64 %6680, %6681
  br i1 %6682, label %while_body1415, label %while_end1416
while_body1415:
  %6683 = load { i64, i8* }*, { i64, i8* }** @g_fn_sig_names
  %6684 = load i64, i64* %6679
  %6685 = call i64 @nyx_array_get({ i64, i8* }* %6683, i64 %6684)
  %6686 = inttoptr i64 %6685 to %nyx_string*
  %6687 = alloca %nyx_string*
  store %nyx_string* %6686, %nyx_string** %6687
  %6688 = load %nyx_string*, %nyx_string** %6687
  %6689 = load %nyx_string*, %nyx_string** %name.ptr
  %6690 = call i1 @nyx_string_equals(%nyx_string* %6688, %nyx_string* %6689)
  br i1 %6690, label %then1417, label %else1418
then1417:
  %6691 = load { i64, i8* }*, { i64, i8* }** @g_fn_sig_returns
  %6692 = load i64, i64* %6679
  %6693 = call i64 @nyx_array_get({ i64, i8* }* %6691, i64 %6692)
  %6694 = inttoptr i64 %6693 to { i64, i8* }*
  %6695 = alloca { i64, i8* }*
  store { i64, i8* }* %6694, { i64, i8* }** %6695
  %6696 = load { i64, i8* }*, { i64, i8* }** %6695
  %6697 = call i1 @ty_is_unknown({ i64, i8* }* %6696)
  br i1 %6697, label %then1420, label %else1421
then1420:
  %6698 = load { i64, i8* }*, { i64, i8* }** @g_fn_sig_returns
  %6699 = load i64, i64* %6679
  %6700 = load { i64, i8* }*, { i64, i8* }** %ret.ptr
  %6701 = ptrtoint { i64, i8* }* %6700 to i64
  call void @nyx_array_set({ i64, i8* }* %6698, i64 %6699, i64 %6701)
  ret i64 0
else1421:
  br label %merge1422
merge1422:
  br label %merge1419
else1418:
  br label %merge1419
merge1419:
  %6702 = load i64, i64* %6679
  %6703 = add i64 %6702, 1
  store i64 %6703, i64* %6679
  br label %while_cond1414
while_end1416:
  ret i64 0
}

define internal i1 @validate_function(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %6704 = load %ASTNode, %ASTNode* %node.ptr
  %6705 = call %nyx_string* @get_string_at(%ASTNode %6704, i64 0)
  %6706 = alloca %nyx_string*
  store %nyx_string* %6705, %nyx_string** %6706
  %6707 = load %ASTNode, %ASTNode* %node.ptr
  %6708 = call { i64, i8* }* @get_array_at(%ASTNode %6707, i64 1)
  %6709 = alloca { i64, i8* }*
  store { i64, i8* }* %6708, { i64, i8* }** %6709
  %6710 = load %ASTNode, %ASTNode* %node.ptr
  %6711 = call %nyx_string* @get_string_at(%ASTNode %6710, i64 2)
  %6712 = alloca %nyx_string*
  store %nyx_string* %6711, %nyx_string** %6712
  %6713 = load %ASTNode, %ASTNode* %node.ptr
  %6714 = call %ASTNode @get_node_at(%ASTNode %6713, i64 3)
  %6715 = alloca %ASTNode
  store %ASTNode %6714, %ASTNode* %6715
  %6716 = load i64, i64* @g_in_function
  %6717 = alloca i64
  store i64 %6716, i64* %6717
  %6718 = load i64, i64* @g_in_loop
  %6719 = alloca i64
  store i64 %6718, i64* %6719
  %6720 = load %nyx_string*, %nyx_string** @g_current_fn
  %6721 = alloca %nyx_string*
  store %nyx_string* %6720, %nyx_string** %6721
  %6722 = load { i64, i8* }*, { i64, i8* }** @g_current_fn_ret_type
  %6723 = alloca { i64, i8* }*
  store { i64, i8* }* %6722, { i64, i8* }** %6723
  store i64 1, i64* @g_in_function
  store i64 0, i64* @g_in_loop
  %6724 = load %nyx_string*, %nyx_string** %6706
  store %nyx_string* %6724, %nyx_string** @g_current_fn
  %6725 = call { i64, i8* }* @ty_unknown()
  %6726 = alloca { i64, i8* }*
  store { i64, i8* }* %6725, { i64, i8* }** %6726
  %6727 = load %nyx_string*, %nyx_string** %6712
  %6728 = getelementptr [1 x i8], [1 x i8]* @.str863, i32 0, i32 0
  %6729 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str863.c, i8* %6728)
  %6730 = call i1 @nyx_string_equals(%nyx_string* %6727, %nyx_string* %6729)
  %6731 = xor i1 %6730, true
  br i1 %6731, label %then1423, label %else1424
then1423:
  %6732 = load %nyx_string*, %nyx_string** %6712
  %6733 = getelementptr [5 x i8], [5 x i8]* @.str864, i32 0, i32 0
  %6734 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str864.c, i8* %6733)
  %6735 = call i1 @nyx_string_equals(%nyx_string* %6732, %nyx_string* %6734)
  %6736 = xor i1 %6735, true
  br i1 %6736, label %then1426, label %else1427
then1426:
  %6737 = load %nyx_string*, %nyx_string** %6712
  %6738 = call { i64, i8* }* @validate_type_ann(%nyx_string* %6737)
  store { i64, i8* }* %6738, { i64, i8* }** %6726
  br label %merge1428
else1427:
  br label %merge1428
merge1428:
  br label %merge1425
else1424:
  br label %merge1425
merge1425:
  %6739 = load { i64, i8* }*, { i64, i8* }** %6726
  store { i64, i8* }* %6739, { i64, i8* }** @g_current_fn_ret_type
  %6740 = call i64 @scope_push()
  %6741 = alloca i64
  store i64 0, i64* %6741
  %6742 = getelementptr [6 x i8], [6 x i8]* @.str865, i32 0, i32 0
  %6743 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str865.c, i8* %6742)
  %6744 = alloca %nyx_string*
  store %nyx_string* %6743, %nyx_string** %6744
  %6745 = getelementptr [1 x i8], [1 x i8]* @.str866, i32 0, i32 0
  %6746 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str866.c, i8* %6745)
  %6747 = alloca %nyx_string*
  store %nyx_string* %6746, %nyx_string** %6747
  %6748 = getelementptr [4 x i8], [4 x i8]* @.str867, i32 0, i32 0
  %6749 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str867.c, i8* %6748)
  %6750 = alloca %nyx_string*
  store %nyx_string* %6749, %nyx_string** %6750
  br label %while_cond1429
while_cond1429:
  %6751 = load i64, i64* %6741
  %6752 = load { i64, i8* }*, { i64, i8* }** %6709
  %6753 = call i64 @nyx_array_length({ i64, i8* }* %6752)
  %6754 = icmp slt i64 %6751, %6753
  br i1 %6754, label %while_body1430, label %while_end1431
while_body1430:
  %6755 = load { i64, i8* }*, { i64, i8* }** %6709
  %6756 = load i64, i64* %6741
  %6757 = call i64 @nyx_array_get({ i64, i8* }* %6755, i64 %6756)
  %6758 = inttoptr i64 %6757 to { i64, i8* }*
  %6759 = alloca { i64, i8* }*
  store { i64, i8* }* %6758, { i64, i8* }** %6759
  %6760 = load { i64, i8* }*, { i64, i8* }** %6759
  %6761 = call i64 @nyx_array_get({ i64, i8* }* %6760, i64 0)
  %6762 = inttoptr i64 %6761 to %nyx_string*
  %6763 = alloca %nyx_string*
  store %nyx_string* %6762, %nyx_string** %6763
  %6764 = load %nyx_string*, %nyx_string** %6763
  %6765 = load %nyx_string*, %nyx_string** %6744
  %6766 = call i64 @scope_declare(%nyx_string* %6764, %nyx_string* %6765)
  %6767 = load { i64, i8* }*, { i64, i8* }** %6759
  %6768 = call i64 @nyx_array_get({ i64, i8* }* %6767, i64 1)
  %6769 = inttoptr i64 %6768 to %nyx_string*
  %6770 = alloca %nyx_string*
  store %nyx_string* %6769, %nyx_string** %6770
  %6771 = load %nyx_string*, %nyx_string** %6770
  %6772 = load %nyx_string*, %nyx_string** %6747
  %6773 = call i1 @nyx_string_equals(%nyx_string* %6771, %nyx_string* %6772)
  %6774 = xor i1 %6773, true
  br i1 %6774, label %then1432, label %else1433
then1432:
  %6775 = alloca i1
  store i1 0, i1* %6775
  %6776 = load %nyx_string*, %nyx_string** %6770
  %6777 = call i64 @nyx_string_byte_length(%nyx_string* %6776)
  %6778 = icmp sge i64 %6777, 3
  br i1 %6778, label %then1435, label %else1436
then1435:
  %6779 = load %nyx_string*, %nyx_string** %6770
  %6780 = call %nyx_string* @nyx_string_substring(%nyx_string* %6779, i64 0, i64 3)
  %6781 = load %nyx_string*, %nyx_string** %6750
  %6782 = call i1 @nyx_string_equals(%nyx_string* %6780, %nyx_string* %6781)
  br i1 %6782, label %then1438, label %else1439
then1438:
  store i1 1, i1* %6775
  br label %merge1440
else1439:
  br label %merge1440
merge1440:
  br label %merge1437
else1436:
  br label %merge1437
merge1437:
  %6783 = load i1, i1* %6775
  %6784 = xor i1 %6783, true
  br i1 %6784, label %then1441, label %else1442
then1441:
  %6785 = load %nyx_string*, %nyx_string** %6770
  %6786 = call { i64, i8* }* @validate_type_ann(%nyx_string* %6785)
  %6787 = alloca { i64, i8* }*
  store { i64, i8* }* %6786, { i64, i8* }** %6787
  %6788 = load { i64, i8* }*, { i64, i8* }** %6787
  %6789 = call i64 @set_last_var_type({ i64, i8* }* %6788)
  br label %merge1443
else1442:
  br label %merge1443
merge1443:
  br label %merge1434
else1433:
  br label %merge1434
merge1434:
  %6790 = load i64, i64* %6741
  %6791 = add i64 %6790, 1
  store i64 %6791, i64* %6741
  br label %while_cond1429
while_end1431:
  %6792 = load %ASTNode, %ASTNode* %6715
  %6793 = call i1 @validate_node(%ASTNode %6792)
  %6794 = alloca i1
  store i1 %6793, i1* %6794
  %6795 = call i64 @scope_pop()
  %6796 = alloca i1
  store i1 false, i1* %6796
  %6797 = alloca i1
  store i1 false, i1* %6797
  %6798 = load i1, i1* %6794
  br i1 %6798, label %sc_and_rhs1444, label %sc_and_end1445
sc_and_rhs1444:
  %6799 = load %nyx_string*, %nyx_string** %6712
  %6800 = getelementptr [1 x i8], [1 x i8]* @.str868, i32 0, i32 0
  %6801 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str868.c, i8* %6800)
  %6802 = call i1 @nyx_string_equals(%nyx_string* %6799, %nyx_string* %6801)
  %6803 = xor i1 %6802, true
  store i1 %6803, i1* %6797
  br label %sc_and_end1445
sc_and_end1445:
  %6804 = load i1, i1* %6797
  br i1 %6804, label %sc_and_rhs1446, label %sc_and_end1447
sc_and_rhs1446:
  %6805 = load %nyx_string*, %nyx_string** %6712
  %6806 = getelementptr [5 x i8], [5 x i8]* @.str869, i32 0, i32 0
  %6807 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str869.c, i8* %6806)
  %6808 = call i1 @nyx_string_equals(%nyx_string* %6805, %nyx_string* %6807)
  %6809 = xor i1 %6808, true
  store i1 %6809, i1* %6796
  br label %sc_and_end1447
sc_and_end1447:
  %6810 = load i1, i1* %6796
  br i1 %6810, label %then1448, label %else1449
then1448:
  %6811 = load %ASTNode, %ASTNode* %6715
  %6812 = call i1 @block_ends_with_return(%ASTNode %6811)
  %6813 = xor i1 %6812, true
  br i1 %6813, label %then1451, label %else1452
then1451:
  %6814 = getelementptr [8 x i8], [8 x i8]* @.str870, i32 0, i32 0
  %6815 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str870.c, i8* %6814)
  %6816 = getelementptr [11 x i8], [11 x i8]* @.str871, i32 0, i32 0
  %6817 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str871.c, i8* %6816)
  %6818 = load %nyx_string*, %nyx_string** %6706
  %6819 = call %nyx_string* @nyx_string_concat(%nyx_string* %6817, %nyx_string* %6818)
  %6820 = getelementptr [20 x i8], [20 x i8]* @.str872, i32 0, i32 0
  %6821 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str872.c, i8* %6820)
  %6822 = call %nyx_string* @nyx_string_concat(%nyx_string* %6819, %nyx_string* %6821)
  %6823 = load %nyx_string*, %nyx_string** %6712
  %6824 = call %nyx_string* @nyx_string_concat(%nyx_string* %6822, %nyx_string* %6823)
  %6825 = getelementptr [46 x i8], [46 x i8]* @.str873, i32 0, i32 0
  %6826 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str873.c, i8* %6825)
  %6827 = call %nyx_string* @nyx_string_concat(%nyx_string* %6824, %nyx_string* %6826)
  %6828 = getelementptr [11 x i8], [11 x i8]* @.str874, i32 0, i32 0
  %6829 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str874.c, i8* %6828)
  %6830 = load %nyx_string*, %nyx_string** %6706
  %6831 = call %nyx_string* @nyx_string_concat(%nyx_string* %6829, %nyx_string* %6830)
  %6832 = getelementptr [25 x i8], [25 x i8]* @.str875, i32 0, i32 0
  %6833 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str875.c, i8* %6832)
  %6834 = call %nyx_string* @nyx_string_concat(%nyx_string* %6831, %nyx_string* %6833)
  %6835 = load %nyx_string*, %nyx_string** %6712
  %6836 = call %nyx_string* @nyx_string_concat(%nyx_string* %6834, %nyx_string* %6835)
  %6837 = getelementptr [35 x i8], [35 x i8]* @.str876, i32 0, i32 0
  %6838 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str876.c, i8* %6837)
  %6839 = call %nyx_string* @nyx_string_concat(%nyx_string* %6836, %nyx_string* %6838)
  %6840 = call %nyx_string* @msg(%nyx_string* %6827, %nyx_string* %6839)
  %6841 = getelementptr [1 x i8], [1 x i8]* @.str877, i32 0, i32 0
  %6842 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str877.c, i8* %6841)
  %6843 = call i64 @sem_diag(%nyx_string* %6815, %nyx_string* %6840, %nyx_string* %6842)
  store i1 0, i1* %6794
  br label %merge1453
else1452:
  br label %merge1453
merge1453:
  br label %merge1450
else1449:
  br label %merge1450
merge1450:
  %6844 = load i1, i1* %6794
  br i1 %6844, label %then1454, label %else1455
then1454:
  %6845 = load %nyx_string*, %nyx_string** %6712
  %6846 = getelementptr [1 x i8], [1 x i8]* @.str878, i32 0, i32 0
  %6847 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str878.c, i8* %6846)
  %6848 = call i1 @nyx_string_equals(%nyx_string* %6845, %nyx_string* %6847)
  br i1 %6848, label %then1457, label %else1458
then1457:
  %6849 = call { i64, i8* }* @nyx_array_new_ptr()
  %6850 = alloca { i64, i8* }*
  store { i64, i8* }* %6849, { i64, i8* }** %6850
  %6851 = load %ASTNode, %ASTNode* %6715
  %6852 = load { i64, i8* }*, { i64, i8* }** %6850
  %6853 = call i64 @collect_return_types(%ASTNode %6851, { i64, i8* }* %6852)
  %6854 = load { i64, i8* }*, { i64, i8* }** %6850
  %6855 = load %nyx_string*, %nyx_string** %6706
  %6856 = call { i64, i8* }* @infer_fn_return_type({ i64, i8* }* %6854, %nyx_string* %6855)
  %6857 = alloca { i64, i8* }*
  store { i64, i8* }* %6856, { i64, i8* }** %6857
  %6858 = load { i64, i8* }*, { i64, i8* }** %6857
  %6859 = call i1 @ty_is_unknown({ i64, i8* }* %6858)
  %6860 = xor i1 %6859, true
  br i1 %6860, label %then1460, label %else1461
then1460:
  %6861 = load %nyx_string*, %nyx_string** %6706
  %6862 = load { i64, i8* }*, { i64, i8* }** %6857
  %6863 = call i64 @update_fn_sig_return_by_name(%nyx_string* %6861, { i64, i8* }* %6862)
  %6864 = load { i64, i8* }*, { i64, i8* }** %6857
  %6865 = call %nyx_string* @ty_to_type_ann({ i64, i8* }* %6864)
  %6866 = alloca %nyx_string*
  store %nyx_string* %6865, %nyx_string** %6866
  %6867 = load %nyx_string*, %nyx_string** %6866
  %6868 = getelementptr [1 x i8], [1 x i8]* @.str879, i32 0, i32 0
  %6869 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str879.c, i8* %6868)
  %6870 = call i1 @nyx_string_equals(%nyx_string* %6867, %nyx_string* %6869)
  %6871 = xor i1 %6870, true
  br i1 %6871, label %then1463, label %else1464
then1463:
  %6872 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %6873 = load { i64, i8* }*, { i64, i8* }** %6872
  %6874 = alloca { i64, i8* }*
  store { i64, i8* }* %6873, { i64, i8* }** %6874
  %6875 = load { i64, i8* }*, { i64, i8* }** %6874
  %6876 = load %nyx_string*, %nyx_string** %6866
  %6877 = ptrtoint %nyx_string* %6876 to i64
  call void @nyx_array_set({ i64, i8* }* %6875, i64 2, i64 %6877)
  br label %merge1465
else1464:
  br label %merge1465
merge1465:
  %6878 = load { i64, i8* }*, { i64, i8* }** %6857
  %6879 = call { i64, i8* }* @ty_unit()
  %6880 = call i1 @ty_eq({ i64, i8* }* %6878, { i64, i8* }* %6879)
  %6881 = xor i1 %6880, true
  br i1 %6881, label %then1466, label %else1467
then1466:
  %6882 = load %ASTNode, %ASTNode* %6715
  %6883 = call i1 @block_ends_with_return(%ASTNode %6882)
  %6884 = xor i1 %6883, true
  br i1 %6884, label %then1469, label %else1470
then1469:
  %6885 = getelementptr [8 x i8], [8 x i8]* @.str880, i32 0, i32 0
  %6886 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str880.c, i8* %6885)
  %6887 = getelementptr [11 x i8], [11 x i8]* @.str881, i32 0, i32 0
  %6888 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str881.c, i8* %6887)
  %6889 = load %nyx_string*, %nyx_string** %6706
  %6890 = call %nyx_string* @nyx_string_concat(%nyx_string* %6888, %nyx_string* %6889)
  %6891 = getelementptr [20 x i8], [20 x i8]* @.str882, i32 0, i32 0
  %6892 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str882.c, i8* %6891)
  %6893 = call %nyx_string* @nyx_string_concat(%nyx_string* %6890, %nyx_string* %6892)
  %6894 = load { i64, i8* }*, { i64, i8* }** %6857
  %6895 = call %nyx_string* @ty_to_str({ i64, i8* }* %6894)
  %6896 = call %nyx_string* @nyx_string_concat(%nyx_string* %6893, %nyx_string* %6895)
  %6897 = getelementptr [46 x i8], [46 x i8]* @.str883, i32 0, i32 0
  %6898 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str883.c, i8* %6897)
  %6899 = call %nyx_string* @nyx_string_concat(%nyx_string* %6896, %nyx_string* %6898)
  %6900 = getelementptr [11 x i8], [11 x i8]* @.str884, i32 0, i32 0
  %6901 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str884.c, i8* %6900)
  %6902 = load %nyx_string*, %nyx_string** %6706
  %6903 = call %nyx_string* @nyx_string_concat(%nyx_string* %6901, %nyx_string* %6902)
  %6904 = getelementptr [23 x i8], [23 x i8]* @.str885, i32 0, i32 0
  %6905 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str885.c, i8* %6904)
  %6906 = call %nyx_string* @nyx_string_concat(%nyx_string* %6903, %nyx_string* %6905)
  %6907 = load { i64, i8* }*, { i64, i8* }** %6857
  %6908 = call %nyx_string* @ty_to_str({ i64, i8* }* %6907)
  %6909 = call %nyx_string* @nyx_string_concat(%nyx_string* %6906, %nyx_string* %6908)
  %6910 = getelementptr [35 x i8], [35 x i8]* @.str886, i32 0, i32 0
  %6911 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str886.c, i8* %6910)
  %6912 = call %nyx_string* @nyx_string_concat(%nyx_string* %6909, %nyx_string* %6911)
  %6913 = call %nyx_string* @msg(%nyx_string* %6899, %nyx_string* %6912)
  %6914 = getelementptr [1 x i8], [1 x i8]* @.str887, i32 0, i32 0
  %6915 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str887.c, i8* %6914)
  %6916 = call i64 @sem_diag(%nyx_string* %6886, %nyx_string* %6913, %nyx_string* %6915)
  store i1 0, i1* %6794
  br label %merge1471
else1470:
  br label %merge1471
merge1471:
  br label %merge1468
else1467:
  br label %merge1468
merge1468:
  br label %merge1462
else1461:
  br label %merge1462
merge1462:
  br label %merge1459
else1458:
  br label %merge1459
merge1459:
  br label %merge1456
else1455:
  br label %merge1456
merge1456:
  %6917 = load i64, i64* %6717
  store i64 %6917, i64* @g_in_function
  %6918 = load i64, i64* %6719
  store i64 %6918, i64* @g_in_loop
  %6919 = load %nyx_string*, %nyx_string** %6721
  store %nyx_string* %6919, %nyx_string** @g_current_fn
  %6920 = load { i64, i8* }*, { i64, i8* }** %6723
  store { i64, i8* }* %6920, { i64, i8* }** @g_current_fn_ret_type
  %6921 = load i1, i1* %6794
  ret i1 %6921
}

define internal i1 @validate_if(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %6922 = load %ASTNode, %ASTNode* %node.ptr
  %6923 = call %ASTNode @get_node_at(%ASTNode %6922, i64 0)
  %6924 = alloca %ASTNode
  store %ASTNode %6923, %ASTNode* %6924
  %6925 = load %ASTNode, %ASTNode* %node.ptr
  %6926 = call %ASTNode @get_node_at(%ASTNode %6925, i64 1)
  %6927 = alloca %ASTNode
  store %ASTNode %6926, %ASTNode* %6927
  %6928 = load %ASTNode, %ASTNode* %node.ptr
  %6929 = call %ASTNode @get_node_at(%ASTNode %6928, i64 2)
  %6930 = alloca %ASTNode
  store %ASTNode %6929, %ASTNode* %6930
  %6931 = load %ASTNode, %ASTNode* %6924
  %6932 = call i1 @validate_node(%ASTNode %6931)
  %6933 = xor i1 %6932, true
  br i1 %6933, label %then1472, label %else1473
then1472:
  ret i1 0
else1473:
  br label %merge1474
merge1474:
  %6934 = call i64 @scope_push()
  %6935 = load %ASTNode, %ASTNode* %6927
  %6936 = call i1 @validate_node(%ASTNode %6935)
  %6937 = xor i1 %6936, true
  br i1 %6937, label %then1475, label %else1476
then1475:
  %6938 = call i64 @scope_pop()
  ret i1 0
else1476:
  br label %merge1477
merge1477:
  %6939 = call i64 @scope_pop()
  %6940 = getelementptr %ASTNode, %ASTNode* %6930, i32 0, i32 0
  %6941 = load %nyx_string*, %nyx_string** %6940
  %6942 = getelementptr [6 x i8], [6 x i8]* @.str888, i32 0, i32 0
  %6943 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str888.c, i8* %6942)
  %6944 = call i1 @nyx_string_equals(%nyx_string* %6941, %nyx_string* %6943)
  %6945 = xor i1 %6944, true
  br i1 %6945, label %then1478, label %else1479
then1478:
  %6946 = call i64 @scope_push()
  %6947 = load %ASTNode, %ASTNode* %6930
  %6948 = call i1 @validate_node(%ASTNode %6947)
  %6949 = xor i1 %6948, true
  br i1 %6949, label %then1481, label %else1482
then1481:
  %6950 = call i64 @scope_pop()
  ret i1 0
else1482:
  br label %merge1483
merge1483:
  %6951 = call i64 @scope_pop()
  br label %merge1480
else1479:
  br label %merge1480
merge1480:
  ret i1 1
}

define internal i1 @validate_while(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %6952 = load %ASTNode, %ASTNode* %node.ptr
  %6953 = call %ASTNode @get_node_at(%ASTNode %6952, i64 0)
  %6954 = alloca %ASTNode
  store %ASTNode %6953, %ASTNode* %6954
  %6955 = load %ASTNode, %ASTNode* %node.ptr
  %6956 = call %ASTNode @get_node_at(%ASTNode %6955, i64 1)
  %6957 = alloca %ASTNode
  store %ASTNode %6956, %ASTNode* %6957
  %6958 = load %ASTNode, %ASTNode* %6954
  %6959 = call i1 @validate_node(%ASTNode %6958)
  %6960 = xor i1 %6959, true
  br i1 %6960, label %then1484, label %else1485
then1484:
  ret i1 0
else1485:
  br label %merge1486
merge1486:
  %6961 = load i64, i64* @g_in_loop
  %6962 = alloca i64
  store i64 %6961, i64* %6962
  store i64 1, i64* @g_in_loop
  %6963 = call i64 @scope_push()
  %6964 = load %ASTNode, %ASTNode* %6957
  %6965 = call i1 @validate_node(%ASTNode %6964)
  %6966 = alloca i1
  store i1 %6965, i1* %6966
  %6967 = call i64 @scope_pop()
  %6968 = load i64, i64* %6962
  store i64 %6968, i64* @g_in_loop
  %6969 = load i1, i1* %6966
  ret i1 %6969
}

define internal i1 @validate_for(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %6970 = load %ASTNode, %ASTNode* %node.ptr
  %6971 = call %nyx_string* @get_string_at(%ASTNode %6970, i64 0)
  %6972 = alloca %nyx_string*
  store %nyx_string* %6971, %nyx_string** %6972
  %6973 = load %ASTNode, %ASTNode* %node.ptr
  %6974 = call %ASTNode @get_node_at(%ASTNode %6973, i64 1)
  %6975 = alloca %ASTNode
  store %ASTNode %6974, %ASTNode* %6975
  %6976 = load %ASTNode, %ASTNode* %node.ptr
  %6977 = call %ASTNode @get_node_at(%ASTNode %6976, i64 2)
  %6978 = alloca %ASTNode
  store %ASTNode %6977, %ASTNode* %6978
  %6979 = load %ASTNode, %ASTNode* %6975
  %6980 = call i1 @validate_node(%ASTNode %6979)
  %6981 = xor i1 %6980, true
  br i1 %6981, label %then1487, label %else1488
then1487:
  ret i1 0
else1488:
  br label %merge1489
merge1489:
  %6982 = load i64, i64* @g_in_loop
  %6983 = alloca i64
  store i64 %6982, i64* %6983
  store i64 1, i64* @g_in_loop
  %6984 = call i64 @scope_push()
  %6985 = load %nyx_string*, %nyx_string** %6972
  %6986 = getelementptr [8 x i8], [8 x i8]* @.str889, i32 0, i32 0
  %6987 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str889.c, i8* %6986)
  %6988 = call i64 @scope_declare(%nyx_string* %6985, %nyx_string* %6987)
  %6989 = load %ASTNode, %ASTNode* %6975
  %6990 = call { i64, i8* }* @ty_of_expr(%ASTNode %6989)
  %6991 = alloca { i64, i8* }*
  store { i64, i8* }* %6990, { i64, i8* }** %6991
  %6992 = load { i64, i8* }*, { i64, i8* }** %6991
  %6993 = call %nyx_string* @ty_kind({ i64, i8* }* %6992)
  %6994 = alloca %nyx_string*
  store %nyx_string* %6993, %nyx_string** %6994
  %6995 = load %nyx_string*, %nyx_string** %6994
  %6996 = getelementptr [8 x i8], [8 x i8]* @.str890, i32 0, i32 0
  %6997 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str890.c, i8* %6996)
  %6998 = call i1 @nyx_string_equals(%nyx_string* %6995, %nyx_string* %6997)
  br i1 %6998, label %then1490, label %else1491
then1490:
  %6999 = load { i64, i8* }*, { i64, i8* }** %6991
  %7000 = call i64 @nyx_array_get({ i64, i8* }* %6999, i64 1)
  %7001 = inttoptr i64 %7000 to { i64, i8* }*
  %7002 = alloca { i64, i8* }*
  store { i64, i8* }* %7001, { i64, i8* }** %7002
  %7003 = load { i64, i8* }*, { i64, i8* }** %7002
  %7004 = call i64 @set_last_var_type({ i64, i8* }* %7003)
  br label %merge1492
else1491:
  br label %merge1492
merge1492:
  %7005 = load %nyx_string*, %nyx_string** %6994
  %7006 = getelementptr [6 x i8], [6 x i8]* @.str891, i32 0, i32 0
  %7007 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str891.c, i8* %7006)
  %7008 = call i1 @nyx_string_equals(%nyx_string* %7005, %nyx_string* %7007)
  br i1 %7008, label %then1493, label %else1494
then1493:
  %7009 = load { i64, i8* }*, { i64, i8* }** %6991
  %7010 = call i64 @nyx_array_get({ i64, i8* }* %7009, i64 1)
  %7011 = inttoptr i64 %7010 to { i64, i8* }*
  %7012 = alloca { i64, i8* }*
  store { i64, i8* }* %7011, { i64, i8* }** %7012
  %7013 = load { i64, i8* }*, { i64, i8* }** %7012
  %7014 = call i64 @set_last_var_type({ i64, i8* }* %7013)
  br label %merge1495
else1494:
  br label %merge1495
merge1495:
  %7015 = load %nyx_string*, %nyx_string** %6994
  %7016 = getelementptr [9 x i8], [9 x i8]* @.str892, i32 0, i32 0
  %7017 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str892.c, i8* %7016)
  %7018 = call i1 @nyx_string_equals(%nyx_string* %7015, %nyx_string* %7017)
  br i1 %7018, label %then1496, label %else1497
then1496:
  %7019 = call { i64, i8* }* @ty_char()
  %7020 = call i64 @set_last_var_type({ i64, i8* }* %7019)
  br label %merge1498
else1497:
  br label %merge1498
merge1498:
  %7021 = load %ASTNode, %ASTNode* %6978
  %7022 = call i1 @validate_node(%ASTNode %7021)
  %7023 = alloca i1
  store i1 %7022, i1* %7023
  %7024 = call i64 @scope_pop()
  %7025 = load i64, i64* %6983
  store i64 %7025, i64* @g_in_loop
  %7026 = load i1, i1* %7023
  ret i1 %7026
}

define internal i1 @validate_return(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %7027 = load i64, i64* @g_in_function
  %7028 = icmp eq i64 %7027, 0
  br i1 %7028, label %then1499, label %else1500
then1499:
  %7029 = getelementptr [8 x i8], [8 x i8]* @.str893, i32 0, i32 0
  %7030 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str893.c, i8* %7029)
  %7031 = getelementptr [27 x i8], [27 x i8]* @.str894, i32 0, i32 0
  %7032 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str894.c, i8* %7031)
  %7033 = getelementptr [29 x i8], [29 x i8]* @.str895, i32 0, i32 0
  %7034 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str895.c, i8* %7033)
  %7035 = call %nyx_string* @msg(%nyx_string* %7032, %nyx_string* %7034)
  %7036 = getelementptr [1 x i8], [1 x i8]* @.str896, i32 0, i32 0
  %7037 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str896.c, i8* %7036)
  %7038 = call i64 @sem_diag(%nyx_string* %7030, %nyx_string* %7035, %nyx_string* %7037)
  ret i1 0
else1500:
  br label %merge1501
merge1501:
  %7039 = load %ASTNode, %ASTNode* %node.ptr
  %7040 = call %ASTNode @get_node_at(%ASTNode %7039, i64 0)
  %7041 = alloca %ASTNode
  store %ASTNode %7040, %ASTNode* %7041
  %7042 = load %ASTNode, %ASTNode* %7041
  %7043 = call i1 @validate_node(%ASTNode %7042)
  %7044 = xor i1 %7043, true
  br i1 %7044, label %then1502, label %else1503
then1502:
  ret i1 0
else1503:
  br label %merge1504
merge1504:
  %7045 = load { i64, i8* }*, { i64, i8* }** @g_current_fn_ret_type
  %7046 = call i1 @ty_is_unknown({ i64, i8* }* %7045)
  %7047 = xor i1 %7046, true
  br i1 %7047, label %then1505, label %else1506
then1505:
  %7048 = load %ASTNode, %ASTNode* %7041
  %7049 = call { i64, i8* }* @ty_of_expr(%ASTNode %7048)
  %7050 = alloca { i64, i8* }*
  store { i64, i8* }* %7049, { i64, i8* }** %7050
  %7051 = load { i64, i8* }*, { i64, i8* }** %7050
  %7052 = call i1 @ty_is_unknown({ i64, i8* }* %7051)
  %7053 = xor i1 %7052, true
  br i1 %7053, label %then1508, label %else1509
then1508:
  %7054 = load { i64, i8* }*, { i64, i8* }** @g_current_fn_ret_type
  %7055 = load { i64, i8* }*, { i64, i8* }** %7050
  %7056 = call i1 @ty_eq({ i64, i8* }* %7054, { i64, i8* }* %7055)
  %7057 = xor i1 %7056, true
  br i1 %7057, label %then1511, label %else1512
then1511:
  %7058 = getelementptr [8 x i8], [8 x i8]* @.str897, i32 0, i32 0
  %7059 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str897.c, i8* %7058)
  %7060 = getelementptr [34 x i8], [34 x i8]* @.str898, i32 0, i32 0
  %7061 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str898.c, i8* %7060)
  %7062 = load %nyx_string*, %nyx_string** @g_current_fn
  %7063 = call %nyx_string* @nyx_string_concat(%nyx_string* %7061, %nyx_string* %7062)
  %7064 = getelementptr [16 x i8], [16 x i8]* @.str899, i32 0, i32 0
  %7065 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str899.c, i8* %7064)
  %7066 = call %nyx_string* @nyx_string_concat(%nyx_string* %7063, %nyx_string* %7065)
  %7067 = load { i64, i8* }*, { i64, i8* }** @g_current_fn_ret_type
  %7068 = call %nyx_string* @ty_to_str({ i64, i8* }* %7067)
  %7069 = call %nyx_string* @nyx_string_concat(%nyx_string* %7066, %nyx_string* %7068)
  %7070 = getelementptr [13 x i8], [13 x i8]* @.str900, i32 0, i32 0
  %7071 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str900.c, i8* %7070)
  %7072 = call %nyx_string* @nyx_string_concat(%nyx_string* %7069, %nyx_string* %7071)
  %7073 = load { i64, i8* }*, { i64, i8* }** %7050
  %7074 = call %nyx_string* @ty_to_str({ i64, i8* }* %7073)
  %7075 = call %nyx_string* @nyx_string_concat(%nyx_string* %7072, %nyx_string* %7074)
  %7076 = getelementptr [26 x i8], [26 x i8]* @.str901, i32 0, i32 0
  %7077 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str901.c, i8* %7076)
  %7078 = load %nyx_string*, %nyx_string** @g_current_fn
  %7079 = call %nyx_string* @nyx_string_concat(%nyx_string* %7077, %nyx_string* %7078)
  %7080 = getelementptr [13 x i8], [13 x i8]* @.str902, i32 0, i32 0
  %7081 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str902.c, i8* %7080)
  %7082 = call %nyx_string* @nyx_string_concat(%nyx_string* %7079, %nyx_string* %7081)
  %7083 = load { i64, i8* }*, { i64, i8* }** @g_current_fn_ret_type
  %7084 = call %nyx_string* @ty_to_str({ i64, i8* }* %7083)
  %7085 = call %nyx_string* @nyx_string_concat(%nyx_string* %7082, %nyx_string* %7084)
  %7086 = getelementptr [7 x i8], [7 x i8]* @.str903, i32 0, i32 0
  %7087 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str903.c, i8* %7086)
  %7088 = call %nyx_string* @nyx_string_concat(%nyx_string* %7085, %nyx_string* %7087)
  %7089 = load { i64, i8* }*, { i64, i8* }** %7050
  %7090 = call %nyx_string* @ty_to_str({ i64, i8* }* %7089)
  %7091 = call %nyx_string* @nyx_string_concat(%nyx_string* %7088, %nyx_string* %7090)
  %7092 = call %nyx_string* @msg(%nyx_string* %7075, %nyx_string* %7091)
  %7093 = getelementptr [1 x i8], [1 x i8]* @.str904, i32 0, i32 0
  %7094 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str904.c, i8* %7093)
  %7095 = call i64 @sem_diag(%nyx_string* %7059, %nyx_string* %7092, %nyx_string* %7094)
  ret i1 0
else1512:
  br label %merge1513
merge1513:
  %7096 = load { i64, i8* }*, { i64, i8* }** @g_current_fn_ret_type
  %7097 = load { i64, i8* }*, { i64, i8* }** %7050
  %7098 = load %nyx_string*, %nyx_string** @g_current_fn
  %7099 = getelementptr [9 x i8], [9 x i8]* @.str905, i32 0, i32 0
  %7100 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str905.c, i8* %7099)
  %7101 = call %nyx_string* @nyx_string_concat(%nyx_string* %7098, %nyx_string* %7100)
  %7102 = call i1 @ty_check_dyn_compat({ i64, i8* }* %7096, { i64, i8* }* %7097, %nyx_string* %7101)
  %7103 = xor i1 %7102, true
  br i1 %7103, label %then1514, label %else1515
then1514:
  ret i1 0
else1515:
  br label %merge1516
merge1516:
  br label %merge1510
else1509:
  br label %merge1510
merge1510:
  br label %merge1507
else1506:
  br label %merge1507
merge1507:
  ret i1 1
}

define internal i1 @validate_break(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %7104 = load i64, i64* @g_in_loop
  %7105 = icmp eq i64 %7104, 0
  br i1 %7105, label %then1517, label %else1518
then1517:
  %7106 = getelementptr [8 x i8], [8 x i8]* @.str906, i32 0, i32 0
  %7107 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str906.c, i8* %7106)
  %7108 = getelementptr [22 x i8], [22 x i8]* @.str907, i32 0, i32 0
  %7109 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str907.c, i8* %7108)
  %7110 = getelementptr [24 x i8], [24 x i8]* @.str908, i32 0, i32 0
  %7111 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str908.c, i8* %7110)
  %7112 = call %nyx_string* @msg(%nyx_string* %7109, %nyx_string* %7111)
  %7113 = getelementptr [1 x i8], [1 x i8]* @.str909, i32 0, i32 0
  %7114 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str909.c, i8* %7113)
  %7115 = call i64 @sem_diag(%nyx_string* %7107, %nyx_string* %7112, %nyx_string* %7114)
  ret i1 0
else1518:
  br label %merge1519
merge1519:
  ret i1 1
}

define internal i1 @validate_continue(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %7116 = load i64, i64* @g_in_loop
  %7117 = icmp eq i64 %7116, 0
  br i1 %7117, label %then1520, label %else1521
then1520:
  %7118 = getelementptr [8 x i8], [8 x i8]* @.str910, i32 0, i32 0
  %7119 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str910.c, i8* %7118)
  %7120 = getelementptr [25 x i8], [25 x i8]* @.str911, i32 0, i32 0
  %7121 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str911.c, i8* %7120)
  %7122 = getelementptr [27 x i8], [27 x i8]* @.str912, i32 0, i32 0
  %7123 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str912.c, i8* %7122)
  %7124 = call %nyx_string* @msg(%nyx_string* %7121, %nyx_string* %7123)
  %7125 = getelementptr [1 x i8], [1 x i8]* @.str913, i32 0, i32 0
  %7126 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str913.c, i8* %7125)
  %7127 = call i64 @sem_diag(%nyx_string* %7119, %nyx_string* %7124, %nyx_string* %7126)
  ret i1 0
else1521:
  br label %merge1522
merge1522:
  ret i1 1
}

define internal i1 @validate_array(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %7128 = load %ASTNode, %ASTNode* %node.ptr
  %7129 = call { i64, i8* }* @get_array_at(%ASTNode %7128, i64 0)
  %7130 = alloca { i64, i8* }*
  store { i64, i8* }* %7129, { i64, i8* }** %7130
  %7131 = alloca i64
  store i64 0, i64* %7131
  br label %while_cond1523
while_cond1523:
  %7132 = load i64, i64* %7131
  %7133 = load { i64, i8* }*, { i64, i8* }** %7130
  %7134 = call i64 @nyx_array_length({ i64, i8* }* %7133)
  %7135 = icmp slt i64 %7132, %7134
  br i1 %7135, label %while_body1524, label %while_end1525
while_body1524:
  %7136 = load { i64, i8* }*, { i64, i8* }** %7130
  %7137 = load i64, i64* %7131
  %7138 = call i64 @nyx_array_get({ i64, i8* }* %7136, i64 %7137)
  %7139 = inttoptr i64 %7138 to { i64, i8* }*
  %7140 = call i64 @nyx_array_get({ i64, i8* }* %7139, i64 0)
  %7141 = call i64 @nyx_array_get({ i64, i8* }* %7139, i64 1)
  %7142 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %7139, i64 2)
  %7143 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %7139, i64 3)
  %7144 = inttoptr i64 %7140 to %nyx_string*
  %7145 = inttoptr i64 %7141 to { i64, i8* }*
  %7146 = alloca %ASTNode
  %7147 = getelementptr inbounds %ASTNode, %ASTNode* %7146, i32 0, i32 0
  store %nyx_string* %7144, %nyx_string** %7147
  %7148 = getelementptr inbounds %ASTNode, %ASTNode* %7146, i32 0, i32 1
  store { i64, i8* }* %7145, { i64, i8* }** %7148
  %7149 = getelementptr inbounds %ASTNode, %ASTNode* %7146, i32 0, i32 2
  store i64 %7142, i64* %7149
  %7150 = getelementptr inbounds %ASTNode, %ASTNode* %7146, i32 0, i32 3
  store i64 %7143, i64* %7150
  %7151 = load %ASTNode, %ASTNode* %7146
  %7152 = alloca %ASTNode
  store %ASTNode %7151, %ASTNode* %7152
  %7153 = load %ASTNode, %ASTNode* %7152
  %7154 = call i1 @validate_node(%ASTNode %7153)
  %7155 = xor i1 %7154, true
  br i1 %7155, label %then1526, label %else1527
then1526:
  ret i1 0
else1527:
  br label %merge1528
merge1528:
  %7156 = load i64, i64* %7131
  %7157 = add i64 %7156, 1
  store i64 %7157, i64* %7131
  br label %while_cond1523
while_end1525:
  ret i1 1
}

define internal i1 @validate_map_literal(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %7158 = load %ASTNode, %ASTNode* %node.ptr
  %7159 = call { i64, i8* }* @get_array_at(%ASTNode %7158, i64 1)
  %7160 = alloca { i64, i8* }*
  store { i64, i8* }* %7159, { i64, i8* }** %7160
  %7161 = alloca i64
  store i64 0, i64* %7161
  br label %while_cond1529
while_cond1529:
  %7162 = load i64, i64* %7161
  %7163 = load { i64, i8* }*, { i64, i8* }** %7160
  %7164 = call i64 @nyx_array_length({ i64, i8* }* %7163)
  %7165 = icmp slt i64 %7162, %7164
  br i1 %7165, label %while_body1530, label %while_end1531
while_body1530:
  %7166 = load { i64, i8* }*, { i64, i8* }** %7160
  %7167 = load i64, i64* %7161
  %7168 = call i64 @nyx_array_get({ i64, i8* }* %7166, i64 %7167)
  %7169 = inttoptr i64 %7168 to { i64, i8* }*
  %7170 = call i64 @nyx_array_get({ i64, i8* }* %7169, i64 0)
  %7171 = call i64 @nyx_array_get({ i64, i8* }* %7169, i64 1)
  %7172 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %7169, i64 2)
  %7173 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %7169, i64 3)
  %7174 = inttoptr i64 %7170 to %nyx_string*
  %7175 = inttoptr i64 %7171 to { i64, i8* }*
  %7176 = alloca %ASTNode
  %7177 = getelementptr inbounds %ASTNode, %ASTNode* %7176, i32 0, i32 0
  store %nyx_string* %7174, %nyx_string** %7177
  %7178 = getelementptr inbounds %ASTNode, %ASTNode* %7176, i32 0, i32 1
  store { i64, i8* }* %7175, { i64, i8* }** %7178
  %7179 = getelementptr inbounds %ASTNode, %ASTNode* %7176, i32 0, i32 2
  store i64 %7172, i64* %7179
  %7180 = getelementptr inbounds %ASTNode, %ASTNode* %7176, i32 0, i32 3
  store i64 %7173, i64* %7180
  %7181 = load %ASTNode, %ASTNode* %7176
  %7182 = alloca %ASTNode
  store %ASTNode %7181, %ASTNode* %7182
  %7183 = load %ASTNode, %ASTNode* %7182
  %7184 = call i1 @validate_node(%ASTNode %7183)
  %7185 = xor i1 %7184, true
  br i1 %7185, label %then1532, label %else1533
then1532:
  ret i1 0
else1533:
  br label %merge1534
merge1534:
  %7186 = load i64, i64* %7161
  %7187 = add i64 %7186, 1
  store i64 %7187, i64* %7161
  br label %while_cond1529
while_end1531:
  ret i1 1
}

define internal i1 @validate_index(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %7188 = load %ASTNode, %ASTNode* %node.ptr
  %7189 = call %ASTNode @get_node_at(%ASTNode %7188, i64 0)
  %7190 = alloca %ASTNode
  store %ASTNode %7189, %ASTNode* %7190
  %7191 = load %ASTNode, %ASTNode* %node.ptr
  %7192 = call %ASTNode @get_node_at(%ASTNode %7191, i64 1)
  %7193 = alloca %ASTNode
  store %ASTNode %7192, %ASTNode* %7193
  %7194 = load %ASTNode, %ASTNode* %7190
  %7195 = call i1 @validate_node(%ASTNode %7194)
  %7196 = xor i1 %7195, true
  br i1 %7196, label %then1535, label %else1536
then1535:
  ret i1 0
else1536:
  br label %merge1537
merge1537:
  %7197 = load %ASTNode, %ASTNode* %7193
  %7198 = call i1 @validate_node(%ASTNode %7197)
  ret i1 %7198
}

define internal i1 @validate_index_assign(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %7199 = load %ASTNode, %ASTNode* %node.ptr
  %7200 = call %ASTNode @get_node_at(%ASTNode %7199, i64 0)
  %7201 = alloca %ASTNode
  store %ASTNode %7200, %ASTNode* %7201
  %7202 = load %ASTNode, %ASTNode* %node.ptr
  %7203 = call %ASTNode @get_node_at(%ASTNode %7202, i64 1)
  %7204 = alloca %ASTNode
  store %ASTNode %7203, %ASTNode* %7204
  %7205 = load %ASTNode, %ASTNode* %node.ptr
  %7206 = call %ASTNode @get_node_at(%ASTNode %7205, i64 2)
  %7207 = alloca %ASTNode
  store %ASTNode %7206, %ASTNode* %7207
  %7208 = load %ASTNode, %ASTNode* %7201
  %7209 = call i1 @validate_node(%ASTNode %7208)
  %7210 = xor i1 %7209, true
  br i1 %7210, label %then1538, label %else1539
then1538:
  ret i1 0
else1539:
  br label %merge1540
merge1540:
  %7211 = load %ASTNode, %ASTNode* %7204
  %7212 = call i1 @validate_node(%ASTNode %7211)
  %7213 = xor i1 %7212, true
  br i1 %7213, label %then1541, label %else1542
then1541:
  ret i1 0
else1542:
  br label %merge1543
merge1543:
  %7214 = load %ASTNode, %ASTNode* %7207
  %7215 = call i1 @validate_node(%ASTNode %7214)
  ret i1 %7215
}

define internal i64 @scan_module_types(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %7216 = load %nyx_string*, %nyx_string** %path.ptr
  %7217 = getelementptr [4 x i8], [4 x i8]* @.str914, i32 0, i32 0
  %7218 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str914.c, i8* %7217)
  %7219 = call %nyx_string* @nyx_string_concat(%nyx_string* %7216, %nyx_string* %7218)
  %7220 = alloca %nyx_string*
  store %nyx_string* %7219, %nyx_string** %7220
  %7221 = load %nyx_string*, %nyx_string** %7220
  %7222 = call i8* @nyx_string_to_cstr(%nyx_string* %7221)
  %7223 = call i1 @nyx_file_exists(i8* %7222)
  %7224 = xor i1 %7223, true
  br i1 %7224, label %then1544, label %else1545
then1544:
  %7225 = getelementptr [5 x i8], [5 x i8]* @.str915, i32 0, i32 0
  %7226 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str915.c, i8* %7225)
  %7227 = load %nyx_string*, %nyx_string** %path.ptr
  %7228 = call %nyx_string* @nyx_string_concat(%nyx_string* %7226, %nyx_string* %7227)
  %7229 = getelementptr [4 x i8], [4 x i8]* @.str916, i32 0, i32 0
  %7230 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str916.c, i8* %7229)
  %7231 = call %nyx_string* @nyx_string_concat(%nyx_string* %7228, %nyx_string* %7230)
  %7232 = alloca %nyx_string*
  store %nyx_string* %7231, %nyx_string** %7232
  %7233 = load %nyx_string*, %nyx_string** %7232
  %7234 = call i8* @nyx_string_to_cstr(%nyx_string* %7233)
  %7235 = call i1 @nyx_file_exists(i8* %7234)
  %7236 = xor i1 %7235, true
  br i1 %7236, label %then1547, label %else1548
then1547:
  ret i64 0
else1548:
  br label %merge1549
merge1549:
  %7237 = load %nyx_string*, %nyx_string** %7232
  store %nyx_string* %7237, %nyx_string** %7220
  br label %merge1546
else1545:
  br label %merge1546
merge1546:
  %7238 = load %nyx_string*, %nyx_string** %7220
  %7239 = call i8* @nyx_string_to_cstr(%nyx_string* %7238)
  %7240 = call %nyx_string* @nyx_read_file(i8* %7239)
  %7241 = alloca %nyx_string*
  store %nyx_string* %7240, %nyx_string** %7241
  %7242 = load %nyx_string*, %nyx_string** %7241
  %7243 = getelementptr [2 x i8], [2 x i8]* @.str917, i32 0, i32 0
  %7244 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str917.c, i8* %7243)
  %7245 = call { i64, i8* }* @nyx_string_split(%nyx_string* %7242, %nyx_string* %7244)
  %7246 = alloca { i64, i8* }*
  store { i64, i8* }* %7245, { i64, i8* }** %7246
  %7247 = alloca i64
  store i64 0, i64* %7247
  %7248 = getelementptr [5 x i8], [5 x i8]* @.str918, i32 0, i32 0
  %7249 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str918.c, i8* %7248)
  %7250 = alloca %nyx_string*
  store %nyx_string* %7249, %nyx_string** %7250
  %7251 = getelementptr [8 x i8], [8 x i8]* @.str919, i32 0, i32 0
  %7252 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str919.c, i8* %7251)
  %7253 = alloca %nyx_string*
  store %nyx_string* %7252, %nyx_string** %7253
  %7254 = getelementptr [1 x i8], [1 x i8]* @.str920, i32 0, i32 0
  %7255 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str920.c, i8* %7254)
  %7256 = alloca %nyx_string*
  store %nyx_string* %7255, %nyx_string** %7256
  %7257 = getelementptr [3 x i8], [3 x i8]* @.str921, i32 0, i32 0
  %7258 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str921.c, i8* %7257)
  %7259 = alloca %nyx_string*
  store %nyx_string* %7258, %nyx_string** %7259
  %7260 = getelementptr [2 x i8], [2 x i8]* @.str922, i32 0, i32 0
  %7261 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str922.c, i8* %7260)
  %7262 = alloca %nyx_string*
  store %nyx_string* %7261, %nyx_string** %7262
  %7263 = getelementptr [6 x i8], [6 x i8]* @.str923, i32 0, i32 0
  %7264 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str923.c, i8* %7263)
  %7265 = alloca %nyx_string*
  store %nyx_string* %7264, %nyx_string** %7265
  %7266 = getelementptr [2 x i8], [2 x i8]* @.str924, i32 0, i32 0
  %7267 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str924.c, i8* %7266)
  %7268 = alloca %nyx_string*
  store %nyx_string* %7267, %nyx_string** %7268
  %7269 = getelementptr [2 x i8], [2 x i8]* @.str925, i32 0, i32 0
  %7270 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str925.c, i8* %7269)
  %7271 = alloca %nyx_string*
  store %nyx_string* %7270, %nyx_string** %7271
  %7272 = getelementptr [2 x i8], [2 x i8]* @.str926, i32 0, i32 0
  %7273 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str926.c, i8* %7272)
  %7274 = alloca %nyx_string*
  store %nyx_string* %7273, %nyx_string** %7274
  %7275 = getelementptr [6 x i8], [6 x i8]* @.str927, i32 0, i32 0
  %7276 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str927.c, i8* %7275)
  %7277 = alloca %nyx_string*
  store %nyx_string* %7276, %nyx_string** %7277
  %7278 = getelementptr [6 x i8], [6 x i8]* @.str928, i32 0, i32 0
  %7279 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str928.c, i8* %7278)
  %7280 = alloca %nyx_string*
  store %nyx_string* %7279, %nyx_string** %7280
  %7281 = getelementptr [6 x i8], [6 x i8]* @.str929, i32 0, i32 0
  %7282 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str929.c, i8* %7281)
  %7283 = alloca %nyx_string*
  store %nyx_string* %7282, %nyx_string** %7283
  %7284 = getelementptr [2 x i8], [2 x i8]* @.str930, i32 0, i32 0
  %7285 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str930.c, i8* %7284)
  %7286 = alloca %nyx_string*
  store %nyx_string* %7285, %nyx_string** %7286
  br label %while_cond1550
while_cond1550:
  %7287 = load i64, i64* %7247
  %7288 = load { i64, i8* }*, { i64, i8* }** %7246
  %7289 = call i64 @nyx_array_length({ i64, i8* }* %7288)
  %7290 = icmp slt i64 %7287, %7289
  br i1 %7290, label %while_body1551, label %while_end1552
while_body1551:
  %7291 = load { i64, i8* }*, { i64, i8* }** %7246
  %7292 = load i64, i64* %7247
  %7293 = call i64 @nyx_array_get({ i64, i8* }* %7291, i64 %7292)
  %7294 = inttoptr i64 %7293 to %nyx_string*
  %7295 = alloca %nyx_string*
  store %nyx_string* %7294, %nyx_string** %7295
  %7296 = load %nyx_string*, %nyx_string** %7295
  %7297 = call %nyx_string* @nyx_string_trim(%nyx_string* %7296)
  %7298 = alloca %nyx_string*
  store %nyx_string* %7297, %nyx_string** %7298
  %7299 = load %nyx_string*, %nyx_string** %7298
  %7300 = call i64 @nyx_string_byte_length(%nyx_string* %7299)
  %7301 = icmp sge i64 %7300, 4
  br i1 %7301, label %then1553, label %else1554
then1553:
  %7302 = load %nyx_string*, %nyx_string** %7298
  %7303 = call %nyx_string* @nyx_string_substring(%nyx_string* %7302, i64 0, i64 4)
  %7304 = load %nyx_string*, %nyx_string** %7250
  %7305 = call i1 @nyx_string_equals(%nyx_string* %7303, %nyx_string* %7304)
  br i1 %7305, label %then1556, label %else1557
then1556:
  %7306 = load %nyx_string*, %nyx_string** %7298
  %7307 = load %nyx_string*, %nyx_string** %7298
  %7308 = call i64 @nyx_string_byte_length(%nyx_string* %7307)
  %7309 = call %nyx_string* @nyx_string_substring(%nyx_string* %7306, i64 4, i64 %7308)
  %7310 = call %nyx_string* @nyx_string_trim(%nyx_string* %7309)
  store %nyx_string* %7310, %nyx_string** %7298
  br label %merge1558
else1557:
  br label %merge1558
merge1558:
  br label %merge1555
else1554:
  br label %merge1555
merge1555:
  %7311 = load %nyx_string*, %nyx_string** %7298
  %7312 = call i64 @nyx_string_byte_length(%nyx_string* %7311)
  %7313 = icmp sge i64 %7312, 8
  br i1 %7313, label %then1559, label %else1560
then1559:
  %7314 = load %nyx_string*, %nyx_string** %7298
  %7315 = call %nyx_string* @nyx_string_substring(%nyx_string* %7314, i64 0, i64 7)
  %7316 = load %nyx_string*, %nyx_string** %7253
  %7317 = call i1 @nyx_string_equals(%nyx_string* %7315, %nyx_string* %7316)
  br i1 %7317, label %then1562, label %else1563
then1562:
  %7318 = load %nyx_string*, %nyx_string** %7298
  %7319 = load %nyx_string*, %nyx_string** %7298
  %7320 = call i64 @nyx_string_byte_length(%nyx_string* %7319)
  %7321 = call %nyx_string* @nyx_string_substring(%nyx_string* %7318, i64 7, i64 %7320)
  %7322 = call %nyx_string* @nyx_string_trim(%nyx_string* %7321)
  %7323 = alloca %nyx_string*
  store %nyx_string* %7322, %nyx_string** %7323
  %7324 = load %nyx_string*, %nyx_string** %7323
  %7325 = call %nyx_string* @scan_extract_name(%nyx_string* %7324)
  %7326 = alloca %nyx_string*
  store %nyx_string* %7325, %nyx_string** %7326
  %7327 = load %nyx_string*, %nyx_string** %7326
  %7328 = load %nyx_string*, %nyx_string** %7256
  %7329 = call i1 @nyx_string_equals(%nyx_string* %7327, %nyx_string* %7328)
  %7330 = xor i1 %7329, true
  br i1 %7330, label %then1565, label %else1566
then1565:
  %7331 = load %nyx_string*, %nyx_string** %7326
  %7332 = call i1 @is_known_type_name(%nyx_string* %7331)
  %7333 = xor i1 %7332, true
  br i1 %7333, label %then1568, label %else1569
then1568:
  %7334 = call { i64, i8* }* @nyx_array_new_ptr()
  %7335 = alloca { i64, i8* }*
  store { i64, i8* }* %7334, { i64, i8* }** %7335
  %7336 = call { i64, i8* }* @nyx_array_new_ptr()
  %7337 = alloca { i64, i8* }*
  store { i64, i8* }* %7336, { i64, i8* }** %7337
  %7338 = load i64, i64* %7247
  %7339 = add i64 %7338, 1
  %7340 = alloca i64
  store i64 %7339, i64* %7340
  br label %while_cond1571
while_cond1571:
  %7341 = load i64, i64* %7340
  %7342 = load { i64, i8* }*, { i64, i8* }** %7246
  %7343 = call i64 @nyx_array_length({ i64, i8* }* %7342)
  %7344 = icmp slt i64 %7341, %7343
  br i1 %7344, label %while_body1572, label %while_end1573
while_body1572:
  %7345 = load { i64, i8* }*, { i64, i8* }** %7246
  %7346 = load i64, i64* %7340
  %7347 = call i64 @nyx_array_get({ i64, i8* }* %7345, i64 %7346)
  %7348 = inttoptr i64 %7347 to %nyx_string*
  %7349 = alloca %nyx_string*
  store %nyx_string* %7348, %nyx_string** %7349
  %7350 = load %nyx_string*, %nyx_string** %7349
  %7351 = call %nyx_string* @nyx_string_trim(%nyx_string* %7350)
  %7352 = alloca %nyx_string*
  store %nyx_string* %7351, %nyx_string** %7352
  %7353 = load %nyx_string*, %nyx_string** %7352
  %7354 = call i64 @nyx_string_byte_length(%nyx_string* %7353)
  %7355 = icmp sgt i64 %7354, 0
  br i1 %7355, label %then1574, label %else1575
then1574:
  %7356 = load %nyx_string*, %nyx_string** %7352
  %7357 = call i8 @nyx_string_char_at(%nyx_string* %7356, i64 0)
  %7358 = zext i8 %7357 to i64
  %7359 = alloca i64
  store i64 %7358, i64* %7359
  %7360 = load i64, i64* %7359
  %7361 = icmp eq i64 %7360, 125
  br i1 %7361, label %then1577, label %else1578
then1577:
  %7362 = load { i64, i8* }*, { i64, i8* }** %7246
  %7363 = call i64 @nyx_array_length({ i64, i8* }* %7362)
  store i64 %7363, i64* %7340
  br label %merge1579
else1578:
  %7364 = alloca i1
  store i1 0, i1* %7364
  %7365 = load %nyx_string*, %nyx_string** %7352
  %7366 = call i64 @nyx_string_byte_length(%nyx_string* %7365)
  %7367 = icmp sge i64 %7366, 2
  br i1 %7367, label %then1580, label %else1581
then1580:
  %7368 = load %nyx_string*, %nyx_string** %7352
  %7369 = call %nyx_string* @nyx_string_substring(%nyx_string* %7368, i64 0, i64 2)
  %7370 = load %nyx_string*, %nyx_string** %7259
  %7371 = call i1 @nyx_string_equals(%nyx_string* %7369, %nyx_string* %7370)
  br i1 %7371, label %then1583, label %else1584
then1583:
  store i1 1, i1* %7364
  br label %merge1585
else1584:
  br label %merge1585
merge1585:
  br label %merge1582
else1581:
  br label %merge1582
merge1582:
  %7372 = load i1, i1* %7364
  %7373 = xor i1 %7372, true
  br i1 %7373, label %then1586, label %else1587
then1586:
  %7374 = load %nyx_string*, %nyx_string** %7352
  %7375 = load %nyx_string*, %nyx_string** %7262
  %7376 = call i64 @nyx_string_index_of(%nyx_string* %7374, %nyx_string* %7375)
  %7377 = alloca i64
  store i64 %7376, i64* %7377
  %7378 = load i64, i64* %7377
  %7379 = icmp sgt i64 %7378, 0
  br i1 %7379, label %then1589, label %else1590
then1589:
  %7380 = load %nyx_string*, %nyx_string** %7352
  %7381 = load i64, i64* %7377
  %7382 = call %nyx_string* @nyx_string_substring(%nyx_string* %7380, i64 0, i64 %7381)
  %7383 = call %nyx_string* @nyx_string_trim(%nyx_string* %7382)
  %7384 = alloca %nyx_string*
  store %nyx_string* %7383, %nyx_string** %7384
  %7385 = load %nyx_string*, %nyx_string** %7384
  %7386 = call %nyx_string* @scan_extract_name(%nyx_string* %7385)
  %7387 = alloca %nyx_string*
  store %nyx_string* %7386, %nyx_string** %7387
  %7388 = load %nyx_string*, %nyx_string** %7387
  %7389 = load %nyx_string*, %nyx_string** %7256
  %7390 = call i1 @nyx_string_equals(%nyx_string* %7388, %nyx_string* %7389)
  %7391 = xor i1 %7390, true
  br i1 %7391, label %then1592, label %else1593
then1592:
  %7392 = load { i64, i8* }*, { i64, i8* }** %7335
  %7393 = load %nyx_string*, %nyx_string** %7387
  %7394 = ptrtoint %nyx_string* %7393 to i64
  call void @nyx_array_push({ i64, i8* }* %7392, i64 %7394)
  %7395 = load %nyx_string*, %nyx_string** %7352
  %7396 = load i64, i64* %7377
  %7397 = add i64 %7396, 1
  %7398 = load %nyx_string*, %nyx_string** %7352
  %7399 = call i64 @nyx_string_byte_length(%nyx_string* %7398)
  %7400 = call %nyx_string* @nyx_string_substring(%nyx_string* %7395, i64 %7397, i64 %7399)
  %7401 = call %nyx_string* @nyx_string_trim(%nyx_string* %7400)
  %7402 = alloca %nyx_string*
  store %nyx_string* %7401, %nyx_string** %7402
  %7403 = load %nyx_string*, %nyx_string** %7402
  %7404 = load %nyx_string*, %nyx_string** %7259
  %7405 = call i64 @nyx_string_index_of(%nyx_string* %7403, %nyx_string* %7404)
  %7406 = alloca i64
  store i64 %7405, i64* %7406
  %7407 = load i64, i64* %7406
  %7408 = icmp sge i64 %7407, 0
  br i1 %7408, label %then1595, label %else1596
then1595:
  %7409 = load %nyx_string*, %nyx_string** %7402
  %7410 = load i64, i64* %7406
  %7411 = call %nyx_string* @nyx_string_substring(%nyx_string* %7409, i64 0, i64 %7410)
  %7412 = call %nyx_string* @nyx_string_trim(%nyx_string* %7411)
  store %nyx_string* %7412, %nyx_string** %7402
  br label %merge1597
else1596:
  br label %merge1597
merge1597:
  %7413 = load %nyx_string*, %nyx_string** %7402
  %7414 = call i64 @nyx_string_byte_length(%nyx_string* %7413)
  %7415 = icmp sgt i64 %7414, 0
  br i1 %7415, label %then1598, label %else1599
then1598:
  %7416 = load %nyx_string*, %nyx_string** %7402
  %7417 = load %nyx_string*, %nyx_string** %7402
  %7418 = call i64 @nyx_string_byte_length(%nyx_string* %7417)
  %7419 = sub i64 %7418, 1
  %7420 = call i8 @nyx_string_char_at(%nyx_string* %7416, i64 %7419)
  %7421 = zext i8 %7420 to i64
  %7422 = alloca i64
  store i64 %7421, i64* %7422
  %7423 = load i64, i64* %7422
  %7424 = icmp eq i64 %7423, 44
  br i1 %7424, label %then1601, label %else1602
then1601:
  %7425 = load %nyx_string*, %nyx_string** %7402
  %7426 = load %nyx_string*, %nyx_string** %7402
  %7427 = call i64 @nyx_string_byte_length(%nyx_string* %7426)
  %7428 = sub i64 %7427, 1
  %7429 = call %nyx_string* @nyx_string_substring(%nyx_string* %7425, i64 0, i64 %7428)
  %7430 = call %nyx_string* @nyx_string_trim(%nyx_string* %7429)
  store %nyx_string* %7430, %nyx_string** %7402
  br label %merge1603
else1602:
  br label %merge1603
merge1603:
  br label %merge1600
else1599:
  br label %merge1600
merge1600:
  %7431 = load %nyx_string*, %nyx_string** %7402
  %7432 = call i64 @nyx_string_byte_length(%nyx_string* %7431)
  %7433 = icmp sgt i64 %7432, 0
  br i1 %7433, label %then1604, label %else1605
then1604:
  %7434 = load { i64, i8* }*, { i64, i8* }** %7337
  %7435 = load %nyx_string*, %nyx_string** %7402
  %7436 = call { i64, i8* }* @ty_parse(%nyx_string* %7435)
  %7437 = call { i64, i8* }* @resolve_type({ i64, i8* }* %7436)
  %7438 = ptrtoint { i64, i8* }* %7437 to i64
  call void @nyx_array_push({ i64, i8* }* %7434, i64 %7438)
  br label %merge1606
else1605:
  %7439 = load { i64, i8* }*, { i64, i8* }** %7337
  %7440 = call { i64, i8* }* @ty_unknown()
  %7441 = ptrtoint { i64, i8* }* %7440 to i64
  call void @nyx_array_push({ i64, i8* }* %7439, i64 %7441)
  br label %merge1606
merge1606:
  br label %merge1594
else1593:
  br label %merge1594
merge1594:
  br label %merge1591
else1590:
  br label %merge1591
merge1591:
  br label %merge1588
else1587:
  br label %merge1588
merge1588:
  %7442 = load i64, i64* %7340
  %7443 = add i64 %7442, 1
  store i64 %7443, i64* %7340
  br label %merge1579
merge1579:
  br label %merge1576
else1575:
  %7444 = load i64, i64* %7340
  %7445 = add i64 %7444, 1
  store i64 %7445, i64* %7340
  br label %merge1576
merge1576:
  br label %while_cond1571
while_end1573:
  %7446 = load %nyx_string*, %nyx_string** %7326
  %7447 = load { i64, i8* }*, { i64, i8* }** %7335
  %7448 = load { i64, i8* }*, { i64, i8* }** %7337
  %7449 = call i64 @register_struct(%nyx_string* %7446, { i64, i8* }* %7447, { i64, i8* }* %7448)
  br label %merge1570
else1569:
  br label %merge1570
merge1570:
  br label %merge1567
else1566:
  br label %merge1567
merge1567:
  br label %merge1564
else1563:
  br label %merge1564
merge1564:
  br label %merge1561
else1560:
  br label %merge1561
merge1561:
  %7450 = load %nyx_string*, %nyx_string** %7298
  %7451 = call i64 @nyx_string_byte_length(%nyx_string* %7450)
  %7452 = icmp sge i64 %7451, 6
  br i1 %7452, label %then1607, label %else1608
then1607:
  %7453 = load %nyx_string*, %nyx_string** %7298
  %7454 = call %nyx_string* @nyx_string_substring(%nyx_string* %7453, i64 0, i64 5)
  %7455 = load %nyx_string*, %nyx_string** %7265
  %7456 = call i1 @nyx_string_equals(%nyx_string* %7454, %nyx_string* %7455)
  br i1 %7456, label %then1610, label %else1611
then1610:
  %7457 = load %nyx_string*, %nyx_string** %7298
  %7458 = load %nyx_string*, %nyx_string** %7298
  %7459 = call i64 @nyx_string_byte_length(%nyx_string* %7458)
  %7460 = call %nyx_string* @nyx_string_substring(%nyx_string* %7457, i64 5, i64 %7459)
  %7461 = call %nyx_string* @nyx_string_trim(%nyx_string* %7460)
  %7462 = alloca %nyx_string*
  store %nyx_string* %7461, %nyx_string** %7462
  %7463 = load %nyx_string*, %nyx_string** %7462
  %7464 = call %nyx_string* @scan_extract_name(%nyx_string* %7463)
  %7465 = alloca %nyx_string*
  store %nyx_string* %7464, %nyx_string** %7465
  %7466 = load %nyx_string*, %nyx_string** %7465
  %7467 = load %nyx_string*, %nyx_string** %7256
  %7468 = call i1 @nyx_string_equals(%nyx_string* %7466, %nyx_string* %7467)
  %7469 = xor i1 %7468, true
  br i1 %7469, label %then1613, label %else1614
then1613:
  %7470 = load %nyx_string*, %nyx_string** %7465
  %7471 = call i1 @is_known_type_name(%nyx_string* %7470)
  %7472 = xor i1 %7471, true
  br i1 %7472, label %then1616, label %else1617
then1616:
  %7473 = call { i64, i8* }* @nyx_array_new_ptr()
  %7474 = alloca { i64, i8* }*
  store { i64, i8* }* %7473, { i64, i8* }** %7474
  %7475 = call { i64, i8* }* @nyx_array_new_ptr()
  %7476 = alloca { i64, i8* }*
  store { i64, i8* }* %7475, { i64, i8* }** %7476
  %7477 = load i64, i64* %7247
  %7478 = add i64 %7477, 1
  %7479 = alloca i64
  store i64 %7478, i64* %7479
  br label %while_cond1619
while_cond1619:
  %7480 = load i64, i64* %7479
  %7481 = load { i64, i8* }*, { i64, i8* }** %7246
  %7482 = call i64 @nyx_array_length({ i64, i8* }* %7481)
  %7483 = icmp slt i64 %7480, %7482
  br i1 %7483, label %while_body1620, label %while_end1621
while_body1620:
  %7484 = load { i64, i8* }*, { i64, i8* }** %7246
  %7485 = load i64, i64* %7479
  %7486 = call i64 @nyx_array_get({ i64, i8* }* %7484, i64 %7485)
  %7487 = inttoptr i64 %7486 to %nyx_string*
  %7488 = alloca %nyx_string*
  store %nyx_string* %7487, %nyx_string** %7488
  %7489 = load %nyx_string*, %nyx_string** %7488
  %7490 = call %nyx_string* @nyx_string_trim(%nyx_string* %7489)
  %7491 = alloca %nyx_string*
  store %nyx_string* %7490, %nyx_string** %7491
  %7492 = load %nyx_string*, %nyx_string** %7491
  %7493 = call i64 @nyx_string_byte_length(%nyx_string* %7492)
  %7494 = icmp sgt i64 %7493, 0
  br i1 %7494, label %then1622, label %else1623
then1622:
  %7495 = load %nyx_string*, %nyx_string** %7491
  %7496 = call i8 @nyx_string_char_at(%nyx_string* %7495, i64 0)
  %7497 = zext i8 %7496 to i64
  %7498 = alloca i64
  store i64 %7497, i64* %7498
  %7499 = load i64, i64* %7498
  %7500 = icmp eq i64 %7499, 125
  br i1 %7500, label %then1625, label %else1626
then1625:
  %7501 = load { i64, i8* }*, { i64, i8* }** %7246
  %7502 = call i64 @nyx_array_length({ i64, i8* }* %7501)
  store i64 %7502, i64* %7479
  br label %merge1627
else1626:
  %7503 = alloca i1
  store i1 0, i1* %7503
  %7504 = load %nyx_string*, %nyx_string** %7491
  %7505 = call i64 @nyx_string_byte_length(%nyx_string* %7504)
  %7506 = icmp sge i64 %7505, 2
  br i1 %7506, label %then1628, label %else1629
then1628:
  %7507 = load %nyx_string*, %nyx_string** %7491
  %7508 = call %nyx_string* @nyx_string_substring(%nyx_string* %7507, i64 0, i64 2)
  %7509 = load %nyx_string*, %nyx_string** %7259
  %7510 = call i1 @nyx_string_equals(%nyx_string* %7508, %nyx_string* %7509)
  br i1 %7510, label %then1631, label %else1632
then1631:
  store i1 1, i1* %7503
  br label %merge1633
else1632:
  br label %merge1633
merge1633:
  br label %merge1630
else1629:
  br label %merge1630
merge1630:
  %7511 = load i1, i1* %7503
  %7512 = xor i1 %7511, true
  br i1 %7512, label %then1634, label %else1635
then1634:
  %7513 = load %nyx_string*, %nyx_string** %7491
  %7514 = call %nyx_string* @scan_extract_name(%nyx_string* %7513)
  %7515 = alloca %nyx_string*
  store %nyx_string* %7514, %nyx_string** %7515
  %7516 = load %nyx_string*, %nyx_string** %7515
  %7517 = load %nyx_string*, %nyx_string** %7256
  %7518 = call i1 @nyx_string_equals(%nyx_string* %7516, %nyx_string* %7517)
  %7519 = xor i1 %7518, true
  br i1 %7519, label %then1637, label %else1638
then1637:
  %7520 = load { i64, i8* }*, { i64, i8* }** %7474
  %7521 = load %nyx_string*, %nyx_string** %7515
  %7522 = ptrtoint %nyx_string* %7521 to i64
  call void @nyx_array_push({ i64, i8* }* %7520, i64 %7522)
  %7523 = call { i64, i8* }* @nyx_array_new_ptr()
  %7524 = alloca { i64, i8* }*
  store { i64, i8* }* %7523, { i64, i8* }** %7524
  %7525 = load %nyx_string*, %nyx_string** %7491
  %7526 = load %nyx_string*, %nyx_string** %7268
  %7527 = call i64 @nyx_string_index_of(%nyx_string* %7525, %nyx_string* %7526)
  %7528 = alloca i64
  store i64 %7527, i64* %7528
  %7529 = load i64, i64* %7528
  %7530 = icmp sge i64 %7529, 0
  br i1 %7530, label %then1640, label %else1641
then1640:
  %7531 = load %nyx_string*, %nyx_string** %7491
  %7532 = load %nyx_string*, %nyx_string** %7271
  %7533 = call i64 @nyx_string_index_of(%nyx_string* %7531, %nyx_string* %7532)
  %7534 = alloca i64
  store i64 %7533, i64* %7534
  %7535 = load i64, i64* %7534
  %7536 = load i64, i64* %7528
  %7537 = add i64 %7536, 1
  %7538 = icmp sgt i64 %7535, %7537
  br i1 %7538, label %then1643, label %else1644
then1643:
  %7539 = load %nyx_string*, %nyx_string** %7491
  %7540 = load i64, i64* %7528
  %7541 = add i64 %7540, 1
  %7542 = load i64, i64* %7534
  %7543 = call %nyx_string* @nyx_string_substring(%nyx_string* %7539, i64 %7541, i64 %7542)
  %7544 = alloca %nyx_string*
  store %nyx_string* %7543, %nyx_string** %7544
  %7545 = alloca i1
  store i1 0, i1* %7545
  br label %while_cond1646
while_cond1646:
  %7546 = load i1, i1* %7545
  %7547 = xor i1 %7546, true
  br i1 %7547, label %while_body1647, label %while_end1648
while_body1647:
  %7548 = load %nyx_string*, %nyx_string** %7544
  %7549 = load %nyx_string*, %nyx_string** %7274
  %7550 = call i64 @nyx_string_index_of(%nyx_string* %7548, %nyx_string* %7549)
  %7551 = alloca i64
  store i64 %7550, i64* %7551
  %7552 = load %nyx_string*, %nyx_string** %7544
  %7553 = alloca %nyx_string*
  store %nyx_string* %7552, %nyx_string** %7553
  %7554 = load i64, i64* %7551
  %7555 = icmp sge i64 %7554, 0
  br i1 %7555, label %then1649, label %else1650
then1649:
  %7556 = load %nyx_string*, %nyx_string** %7544
  %7557 = load i64, i64* %7551
  %7558 = call %nyx_string* @nyx_string_substring(%nyx_string* %7556, i64 0, i64 %7557)
  store %nyx_string* %7558, %nyx_string** %7553
  %7559 = load %nyx_string*, %nyx_string** %7544
  %7560 = load i64, i64* %7551
  %7561 = add i64 %7560, 1
  %7562 = load %nyx_string*, %nyx_string** %7544
  %7563 = call i64 @nyx_string_byte_length(%nyx_string* %7562)
  %7564 = call %nyx_string* @nyx_string_substring(%nyx_string* %7559, i64 %7561, i64 %7563)
  store %nyx_string* %7564, %nyx_string** %7544
  br label %merge1651
else1650:
  store i1 1, i1* %7545
  br label %merge1651
merge1651:
  %7565 = load %nyx_string*, %nyx_string** %7553
  %7566 = call %nyx_string* @nyx_string_trim(%nyx_string* %7565)
  %7567 = alloca %nyx_string*
  store %nyx_string* %7566, %nyx_string** %7567
  %7568 = load %nyx_string*, %nyx_string** %7567
  %7569 = call i64 @nyx_string_byte_length(%nyx_string* %7568)
  %7570 = icmp sgt i64 %7569, 0
  br i1 %7570, label %then1652, label %else1653
then1652:
  %7571 = load { i64, i8* }*, { i64, i8* }** %7524
  %7572 = load %nyx_string*, %nyx_string** %7567
  %7573 = call { i64, i8* }* @ty_parse(%nyx_string* %7572)
  %7574 = call { i64, i8* }* @resolve_type({ i64, i8* }* %7573)
  %7575 = ptrtoint { i64, i8* }* %7574 to i64
  call void @nyx_array_push({ i64, i8* }* %7571, i64 %7575)
  br label %merge1654
else1653:
  br label %merge1654
merge1654:
  br label %while_cond1646
while_end1648:
  br label %merge1645
else1644:
  br label %merge1645
merge1645:
  br label %merge1642
else1641:
  br label %merge1642
merge1642:
  %7576 = load { i64, i8* }*, { i64, i8* }** %7476
  %7577 = load { i64, i8* }*, { i64, i8* }** %7524
  %7578 = ptrtoint { i64, i8* }* %7577 to i64
  call void @nyx_array_push({ i64, i8* }* %7576, i64 %7578)
  br label %merge1639
else1638:
  br label %merge1639
merge1639:
  br label %merge1636
else1635:
  br label %merge1636
merge1636:
  %7579 = load i64, i64* %7479
  %7580 = add i64 %7579, 1
  store i64 %7580, i64* %7479
  br label %merge1627
merge1627:
  br label %merge1624
else1623:
  %7581 = load i64, i64* %7479
  %7582 = add i64 %7581, 1
  store i64 %7582, i64* %7479
  br label %merge1624
merge1624:
  br label %while_cond1619
while_end1621:
  %7583 = load %nyx_string*, %nyx_string** %7465
  %7584 = load { i64, i8* }*, { i64, i8* }** %7474
  %7585 = load { i64, i8* }*, { i64, i8* }** %7476
  %7586 = call i64 @register_enum(%nyx_string* %7583, { i64, i8* }* %7584, { i64, i8* }* %7585)
  br label %merge1618
else1617:
  br label %merge1618
merge1618:
  br label %merge1615
else1614:
  br label %merge1615
merge1615:
  br label %merge1612
else1611:
  br label %merge1612
merge1612:
  br label %merge1609
else1608:
  br label %merge1609
merge1609:
  %7587 = load %nyx_string*, %nyx_string** %7298
  %7588 = call i64 @nyx_string_byte_length(%nyx_string* %7587)
  %7589 = icmp sge i64 %7588, 10
  br i1 %7589, label %then1655, label %else1656
then1655:
  %7590 = load %nyx_string*, %nyx_string** %7298
  %7591 = call %nyx_string* @nyx_string_substring(%nyx_string* %7590, i64 0, i64 5)
  %7592 = load %nyx_string*, %nyx_string** %7277
  %7593 = call i1 @nyx_string_equals(%nyx_string* %7591, %nyx_string* %7592)
  br i1 %7593, label %then1658, label %else1659
then1658:
  %7594 = load %nyx_string*, %nyx_string** %7298
  %7595 = load %nyx_string*, %nyx_string** %7298
  %7596 = call i64 @nyx_string_byte_length(%nyx_string* %7595)
  %7597 = call %nyx_string* @nyx_string_substring(%nyx_string* %7594, i64 5, i64 %7596)
  %7598 = call %nyx_string* @nyx_string_trim(%nyx_string* %7597)
  %7599 = alloca %nyx_string*
  store %nyx_string* %7598, %nyx_string** %7599
  %7600 = load %nyx_string*, %nyx_string** %7599
  %7601 = load %nyx_string*, %nyx_string** %7280
  %7602 = call i64 @nyx_string_index_of(%nyx_string* %7600, %nyx_string* %7601)
  %7603 = alloca i64
  store i64 %7602, i64* %7603
  %7604 = load i64, i64* %7603
  %7605 = icmp sgt i64 %7604, 0
  br i1 %7605, label %then1661, label %else1662
then1661:
  %7606 = load %nyx_string*, %nyx_string** %7599
  %7607 = load i64, i64* %7603
  %7608 = call %nyx_string* @nyx_string_substring(%nyx_string* %7606, i64 0, i64 %7607)
  %7609 = call %nyx_string* @nyx_string_trim(%nyx_string* %7608)
  %7610 = alloca %nyx_string*
  store %nyx_string* %7609, %nyx_string** %7610
  %7611 = load %nyx_string*, %nyx_string** %7610
  %7612 = call %nyx_string* @scan_extract_name(%nyx_string* %7611)
  %7613 = alloca %nyx_string*
  store %nyx_string* %7612, %nyx_string** %7613
  %7614 = load %nyx_string*, %nyx_string** %7599
  %7615 = load i64, i64* %7603
  %7616 = add i64 %7615, 5
  %7617 = load %nyx_string*, %nyx_string** %7599
  %7618 = call i64 @nyx_string_byte_length(%nyx_string* %7617)
  %7619 = call %nyx_string* @nyx_string_substring(%nyx_string* %7614, i64 %7616, i64 %7618)
  %7620 = call %nyx_string* @nyx_string_trim(%nyx_string* %7619)
  %7621 = alloca %nyx_string*
  store %nyx_string* %7620, %nyx_string** %7621
  %7622 = load %nyx_string*, %nyx_string** %7621
  %7623 = call %nyx_string* @scan_extract_name(%nyx_string* %7622)
  %7624 = alloca %nyx_string*
  store %nyx_string* %7623, %nyx_string** %7624
  %7625 = load %nyx_string*, %nyx_string** %7613
  %7626 = load %nyx_string*, %nyx_string** %7256
  %7627 = call i1 @nyx_string_equals(%nyx_string* %7625, %nyx_string* %7626)
  %7628 = xor i1 %7627, true
  br i1 %7628, label %then1664, label %else1665
then1664:
  %7629 = load %nyx_string*, %nyx_string** %7624
  %7630 = load %nyx_string*, %nyx_string** %7256
  %7631 = call i1 @nyx_string_equals(%nyx_string* %7629, %nyx_string* %7630)
  %7632 = xor i1 %7631, true
  br i1 %7632, label %then1667, label %else1668
then1667:
  %7633 = load %nyx_string*, %nyx_string** %7624
  %7634 = load %nyx_string*, %nyx_string** %7613
  %7635 = call i64 @register_trait_impl(%nyx_string* %7633, %nyx_string* %7634)
  br label %merge1669
else1668:
  br label %merge1669
merge1669:
  br label %merge1666
else1665:
  br label %merge1666
merge1666:
  br label %merge1663
else1662:
  br label %merge1663
merge1663:
  br label %merge1660
else1659:
  br label %merge1660
merge1660:
  br label %merge1657
else1656:
  br label %merge1657
merge1657:
  %7636 = load %nyx_string*, %nyx_string** %7298
  %7637 = call i64 @nyx_string_byte_length(%nyx_string* %7636)
  %7638 = icmp sge i64 %7637, 6
  br i1 %7638, label %then1670, label %else1671
then1670:
  %7639 = load %nyx_string*, %nyx_string** %7298
  %7640 = call %nyx_string* @nyx_string_substring(%nyx_string* %7639, i64 0, i64 5)
  %7641 = load %nyx_string*, %nyx_string** %7283
  %7642 = call i1 @nyx_string_equals(%nyx_string* %7640, %nyx_string* %7641)
  br i1 %7642, label %then1673, label %else1674
then1673:
  %7643 = load %nyx_string*, %nyx_string** %7298
  %7644 = load %nyx_string*, %nyx_string** %7298
  %7645 = call i64 @nyx_string_byte_length(%nyx_string* %7644)
  %7646 = call %nyx_string* @nyx_string_substring(%nyx_string* %7643, i64 5, i64 %7645)
  %7647 = call %nyx_string* @nyx_string_trim(%nyx_string* %7646)
  %7648 = alloca %nyx_string*
  store %nyx_string* %7647, %nyx_string** %7648
  %7649 = load %nyx_string*, %nyx_string** %7648
  %7650 = call %nyx_string* @scan_extract_name(%nyx_string* %7649)
  %7651 = alloca %nyx_string*
  store %nyx_string* %7650, %nyx_string** %7651
  %7652 = load %nyx_string*, %nyx_string** %7651
  %7653 = load %nyx_string*, %nyx_string** %7256
  %7654 = call i1 @nyx_string_equals(%nyx_string* %7652, %nyx_string* %7653)
  %7655 = xor i1 %7654, true
  br i1 %7655, label %then1676, label %else1677
then1676:
  %7656 = load %nyx_string*, %nyx_string** %7651
  %7657 = call i1 @is_known_type_name(%nyx_string* %7656)
  %7658 = xor i1 %7657, true
  br i1 %7658, label %then1679, label %else1680
then1679:
  %7659 = call { i64, i8* }* @ty_unknown()
  %7660 = alloca { i64, i8* }*
  store { i64, i8* }* %7659, { i64, i8* }** %7660
  %7661 = load %nyx_string*, %nyx_string** %7648
  %7662 = load %nyx_string*, %nyx_string** %7286
  %7663 = call i64 @nyx_string_index_of(%nyx_string* %7661, %nyx_string* %7662)
  %7664 = alloca i64
  store i64 %7663, i64* %7664
  %7665 = load i64, i64* %7664
  %7666 = icmp sgt i64 %7665, 0
  br i1 %7666, label %then1682, label %else1683
then1682:
  %7667 = load %nyx_string*, %nyx_string** %7648
  %7668 = load i64, i64* %7664
  %7669 = add i64 %7668, 1
  %7670 = load %nyx_string*, %nyx_string** %7648
  %7671 = call i64 @nyx_string_byte_length(%nyx_string* %7670)
  %7672 = call %nyx_string* @nyx_string_substring(%nyx_string* %7667, i64 %7669, i64 %7671)
  %7673 = call %nyx_string* @nyx_string_trim(%nyx_string* %7672)
  %7674 = alloca %nyx_string*
  store %nyx_string* %7673, %nyx_string** %7674
  %7675 = load %nyx_string*, %nyx_string** %7674
  %7676 = load %nyx_string*, %nyx_string** %7259
  %7677 = call i64 @nyx_string_index_of(%nyx_string* %7675, %nyx_string* %7676)
  %7678 = alloca i64
  store i64 %7677, i64* %7678
  %7679 = load i64, i64* %7678
  %7680 = icmp sge i64 %7679, 0
  br i1 %7680, label %then1685, label %else1686
then1685:
  %7681 = load %nyx_string*, %nyx_string** %7674
  %7682 = load i64, i64* %7678
  %7683 = call %nyx_string* @nyx_string_substring(%nyx_string* %7681, i64 0, i64 %7682)
  %7684 = call %nyx_string* @nyx_string_trim(%nyx_string* %7683)
  store %nyx_string* %7684, %nyx_string** %7674
  br label %merge1687
else1686:
  br label %merge1687
merge1687:
  %7685 = load %nyx_string*, %nyx_string** %7674
  %7686 = call i64 @nyx_string_byte_length(%nyx_string* %7685)
  %7687 = icmp sgt i64 %7686, 0
  br i1 %7687, label %then1688, label %else1689
then1688:
  %7688 = load %nyx_string*, %nyx_string** %7674
  %7689 = call { i64, i8* }* @ty_parse(%nyx_string* %7688)
  %7690 = call { i64, i8* }* @resolve_type({ i64, i8* }* %7689)
  store { i64, i8* }* %7690, { i64, i8* }** %7660
  br label %merge1690
else1689:
  br label %merge1690
merge1690:
  br label %merge1684
else1683:
  br label %merge1684
merge1684:
  %7691 = load { i64, i8* }*, { i64, i8* }** @g_alias_names
  %7692 = load %nyx_string*, %nyx_string** %7651
  %7693 = ptrtoint %nyx_string* %7692 to i64
  call void @nyx_array_push({ i64, i8* }* %7691, i64 %7693)
  %7694 = load { i64, i8* }*, { i64, i8* }** @g_alias_targets
  %7695 = load { i64, i8* }*, { i64, i8* }** %7660
  %7696 = ptrtoint { i64, i8* }* %7695 to i64
  call void @nyx_array_push({ i64, i8* }* %7694, i64 %7696)
  %7697 = load i64, i64* @g_alias_count
  %7698 = add i64 %7697, 1
  store i64 %7698, i64* @g_alias_count
  br label %merge1681
else1680:
  br label %merge1681
merge1681:
  br label %merge1678
else1677:
  br label %merge1678
merge1678:
  br label %merge1675
else1674:
  br label %merge1675
merge1675:
  br label %merge1672
else1671:
  br label %merge1672
merge1672:
  %7699 = load i64, i64* %7247
  %7700 = add i64 %7699, 1
  store i64 %7700, i64* %7247
  br label %while_cond1550
while_end1552:
  ret i64 0
}

define internal %nyx_string* @scan_extract_name(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %7701 = alloca i64
  store i64 0, i64* %7701
  %7702 = getelementptr [1 x i8], [1 x i8]* @.str931, i32 0, i32 0
  %7703 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str931.c, i8* %7702)
  %7704 = alloca %nyx_string*
  store %nyx_string* %7703, %nyx_string** %7704
  br label %while_cond1691
while_cond1691:
  %7705 = load i64, i64* %7701
  %7706 = load %nyx_string*, %nyx_string** %s.ptr
  %7707 = call i64 @nyx_string_byte_length(%nyx_string* %7706)
  %7708 = icmp slt i64 %7705, %7707
  br i1 %7708, label %while_body1692, label %while_end1693
while_body1692:
  %7709 = load %nyx_string*, %nyx_string** %s.ptr
  %7710 = load i64, i64* %7701
  %7711 = call i8 @nyx_string_char_at(%nyx_string* %7709, i64 %7710)
  %7712 = zext i8 %7711 to i64
  %7713 = alloca i64
  store i64 %7712, i64* %7713
  %7714 = alloca i1
  store i1 0, i1* %7714
  %7715 = load i64, i64* %7713
  %7716 = icmp sge i64 %7715, 65
  br i1 %7716, label %then1694, label %else1695
then1694:
  %7717 = load i64, i64* %7713
  %7718 = icmp sle i64 %7717, 90
  br i1 %7718, label %then1697, label %else1698
then1697:
  store i1 1, i1* %7714
  br label %merge1699
else1698:
  br label %merge1699
merge1699:
  br label %merge1696
else1695:
  br label %merge1696
merge1696:
  %7719 = load i64, i64* %7713
  %7720 = icmp sge i64 %7719, 97
  br i1 %7720, label %then1700, label %else1701
then1700:
  %7721 = load i64, i64* %7713
  %7722 = icmp sle i64 %7721, 122
  br i1 %7722, label %then1703, label %else1704
then1703:
  store i1 1, i1* %7714
  br label %merge1705
else1704:
  br label %merge1705
merge1705:
  br label %merge1702
else1701:
  br label %merge1702
merge1702:
  %7723 = alloca i1
  store i1 0, i1* %7723
  %7724 = load i64, i64* %7713
  %7725 = icmp sge i64 %7724, 48
  br i1 %7725, label %then1706, label %else1707
then1706:
  %7726 = load i64, i64* %7713
  %7727 = icmp sle i64 %7726, 57
  br i1 %7727, label %then1709, label %else1710
then1709:
  store i1 1, i1* %7723
  br label %merge1711
else1710:
  br label %merge1711
merge1711:
  br label %merge1708
else1707:
  br label %merge1708
merge1708:
  %7728 = load i64, i64* %7713
  %7729 = icmp eq i64 %7728, 95
  %7730 = alloca i1
  store i1 %7729, i1* %7730
  %7731 = load i64, i64* %7701
  %7732 = icmp eq i64 %7731, 0
  br i1 %7732, label %then1712, label %else1713
then1712:
  %7733 = load i1, i1* %7714
  %7734 = xor i1 %7733, true
  br i1 %7734, label %then1715, label %else1716
then1715:
  %7735 = load i1, i1* %7730
  %7736 = xor i1 %7735, true
  br i1 %7736, label %then1718, label %else1719
then1718:
  %7737 = load %nyx_string*, %nyx_string** %7704
  ret %nyx_string* %7737
else1719:
  br label %merge1720
merge1720:
  br label %merge1717
else1716:
  br label %merge1717
merge1717:
  br label %merge1714
else1713:
  %7738 = load i1, i1* %7714
  %7739 = xor i1 %7738, true
  br i1 %7739, label %then1721, label %else1722
then1721:
  %7740 = load i1, i1* %7723
  %7741 = xor i1 %7740, true
  br i1 %7741, label %then1724, label %else1725
then1724:
  %7742 = load i1, i1* %7730
  %7743 = xor i1 %7742, true
  br i1 %7743, label %then1727, label %else1728
then1727:
  %7744 = load %nyx_string*, %nyx_string** %s.ptr
  %7745 = load i64, i64* %7701
  %7746 = call %nyx_string* @nyx_string_substring(%nyx_string* %7744, i64 0, i64 %7745)
  ret %nyx_string* %7746
else1728:
  br label %merge1729
merge1729:
  br label %merge1726
else1725:
  br label %merge1726
merge1726:
  br label %merge1723
else1722:
  br label %merge1723
merge1723:
  br label %merge1714
merge1714:
  %7747 = load i64, i64* %7701
  %7748 = add i64 %7747, 1
  store i64 %7748, i64* %7701
  br label %while_cond1691
while_end1693:
  %7749 = load %nyx_string*, %nyx_string** %s.ptr
  ret %nyx_string* %7749
}

define internal i64 @init_known_methods(
) {
  %7750 = load i64, i64* @g_known_methods_ready
  %7751 = icmp eq i64 %7750, 1
  br i1 %7751, label %then1730, label %else1731
then1730:
  ret i64 0
else1731:
  br label %merge1732
merge1732:
  %7752 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7753 = getelementptr [7 x i8], [7 x i8]* @.str932, i32 0, i32 0
  %7754 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str932.c, i8* %7753)
  %7755 = ptrtoint %nyx_string* %7754 to i64
  call void @nyx_array_push({ i64, i8* }* %7752, i64 %7755)
  %7756 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7757 = getelementptr [5 x i8], [5 x i8]* @.str933, i32 0, i32 0
  %7758 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str933.c, i8* %7757)
  %7759 = ptrtoint %nyx_string* %7758 to i64
  call void @nyx_array_push({ i64, i8* }* %7756, i64 %7759)
  %7760 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7761 = getelementptr [4 x i8], [4 x i8]* @.str934, i32 0, i32 0
  %7762 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str934.c, i8* %7761)
  %7763 = ptrtoint %nyx_string* %7762 to i64
  call void @nyx_array_push({ i64, i8* }* %7760, i64 %7763)
  %7764 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7765 = getelementptr [8 x i8], [8 x i8]* @.str935, i32 0, i32 0
  %7766 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str935.c, i8* %7765)
  %7767 = ptrtoint %nyx_string* %7766 to i64
  call void @nyx_array_push({ i64, i8* }* %7764, i64 %7767)
  %7768 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7769 = getelementptr [6 x i8], [6 x i8]* @.str936, i32 0, i32 0
  %7770 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str936.c, i8* %7769)
  %7771 = ptrtoint %nyx_string* %7770 to i64
  call void @nyx_array_push({ i64, i8* }* %7768, i64 %7771)
  %7772 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7773 = getelementptr [7 x i8], [7 x i8]* @.str937, i32 0, i32 0
  %7774 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str937.c, i8* %7773)
  %7775 = ptrtoint %nyx_string* %7774 to i64
  call void @nyx_array_push({ i64, i8* }* %7772, i64 %7775)
  %7776 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7777 = getelementptr [7 x i8], [7 x i8]* @.str938, i32 0, i32 0
  %7778 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str938.c, i8* %7777)
  %7779 = ptrtoint %nyx_string* %7778 to i64
  call void @nyx_array_push({ i64, i8* }* %7776, i64 %7779)
  %7780 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7781 = getelementptr [6 x i8], [6 x i8]* @.str939, i32 0, i32 0
  %7782 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str939.c, i8* %7781)
  %7783 = ptrtoint %nyx_string* %7782 to i64
  call void @nyx_array_push({ i64, i8* }* %7780, i64 %7783)
  %7784 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7785 = getelementptr [8 x i8], [8 x i8]* @.str940, i32 0, i32 0
  %7786 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str940.c, i8* %7785)
  %7787 = ptrtoint %nyx_string* %7786 to i64
  call void @nyx_array_push({ i64, i8* }* %7784, i64 %7787)
  %7788 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7789 = getelementptr [8 x i8], [8 x i8]* @.str941, i32 0, i32 0
  %7790 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str941.c, i8* %7789)
  %7791 = ptrtoint %nyx_string* %7790 to i64
  call void @nyx_array_push({ i64, i8* }* %7788, i64 %7791)
  %7792 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7793 = getelementptr [5 x i8], [5 x i8]* @.str942, i32 0, i32 0
  %7794 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str942.c, i8* %7793)
  %7795 = ptrtoint %nyx_string* %7794 to i64
  call void @nyx_array_push({ i64, i8* }* %7792, i64 %7795)
  %7796 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7797 = getelementptr [5 x i8], [5 x i8]* @.str943, i32 0, i32 0
  %7798 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str943.c, i8* %7797)
  %7799 = ptrtoint %nyx_string* %7798 to i64
  call void @nyx_array_push({ i64, i8* }* %7796, i64 %7799)
  %7800 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7801 = getelementptr [12 x i8], [12 x i8]* @.str944, i32 0, i32 0
  %7802 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str944.c, i8* %7801)
  %7803 = ptrtoint %nyx_string* %7802 to i64
  call void @nyx_array_push({ i64, i8* }* %7800, i64 %7803)
  %7804 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7805 = getelementptr [12 x i8], [12 x i8]* @.str945, i32 0, i32 0
  %7806 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str945.c, i8* %7805)
  %7807 = ptrtoint %nyx_string* %7806 to i64
  call void @nyx_array_push({ i64, i8* }* %7804, i64 %7807)
  %7808 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7809 = getelementptr [9 x i8], [9 x i8]* @.str946, i32 0, i32 0
  %7810 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str946.c, i8* %7809)
  %7811 = ptrtoint %nyx_string* %7810 to i64
  call void @nyx_array_push({ i64, i8* }* %7808, i64 %7811)
  %7812 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7813 = getelementptr [6 x i8], [6 x i8]* @.str947, i32 0, i32 0
  %7814 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str947.c, i8* %7813)
  %7815 = ptrtoint %nyx_string* %7814 to i64
  call void @nyx_array_push({ i64, i8* }* %7812, i64 %7815)
  %7816 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7817 = getelementptr [7 x i8], [7 x i8]* @.str948, i32 0, i32 0
  %7818 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str948.c, i8* %7817)
  %7819 = ptrtoint %nyx_string* %7818 to i64
  call void @nyx_array_push({ i64, i8* }* %7816, i64 %7819)
  %7820 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7821 = getelementptr [10 x i8], [10 x i8]* @.str949, i32 0, i32 0
  %7822 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str949.c, i8* %7821)
  %7823 = ptrtoint %nyx_string* %7822 to i64
  call void @nyx_array_push({ i64, i8* }* %7820, i64 %7823)
  %7824 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7825 = getelementptr [5 x i8], [5 x i8]* @.str950, i32 0, i32 0
  %7826 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str950.c, i8* %7825)
  %7827 = ptrtoint %nyx_string* %7826 to i64
  call void @nyx_array_push({ i64, i8* }* %7824, i64 %7827)
  %7828 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7829 = getelementptr [8 x i8], [8 x i8]* @.str951, i32 0, i32 0
  %7830 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str951.c, i8* %7829)
  %7831 = ptrtoint %nyx_string* %7830 to i64
  call void @nyx_array_push({ i64, i8* }* %7828, i64 %7831)
  %7832 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7833 = getelementptr [8 x i8], [8 x i8]* @.str952, i32 0, i32 0
  %7834 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str952.c, i8* %7833)
  %7835 = ptrtoint %nyx_string* %7834 to i64
  call void @nyx_array_push({ i64, i8* }* %7832, i64 %7835)
  %7836 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7837 = getelementptr [9 x i8], [9 x i8]* @.str953, i32 0, i32 0
  %7838 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str953.c, i8* %7837)
  %7839 = ptrtoint %nyx_string* %7838 to i64
  call void @nyx_array_push({ i64, i8* }* %7836, i64 %7839)
  %7840 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7841 = getelementptr [9 x i8], [9 x i8]* @.str954, i32 0, i32 0
  %7842 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str954.c, i8* %7841)
  %7843 = ptrtoint %nyx_string* %7842 to i64
  call void @nyx_array_push({ i64, i8* }* %7840, i64 %7843)
  %7844 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7845 = getelementptr [8 x i8], [8 x i8]* @.str955, i32 0, i32 0
  %7846 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str955.c, i8* %7845)
  %7847 = ptrtoint %nyx_string* %7846 to i64
  call void @nyx_array_push({ i64, i8* }* %7844, i64 %7847)
  %7848 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7849 = getelementptr [7 x i8], [7 x i8]* @.str956, i32 0, i32 0
  %7850 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str956.c, i8* %7849)
  %7851 = ptrtoint %nyx_string* %7850 to i64
  call void @nyx_array_push({ i64, i8* }* %7848, i64 %7851)
  %7852 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7853 = getelementptr [11 x i8], [11 x i8]* @.str957, i32 0, i32 0
  %7854 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str957.c, i8* %7853)
  %7855 = ptrtoint %nyx_string* %7854 to i64
  call void @nyx_array_push({ i64, i8* }* %7852, i64 %7855)
  %7856 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7857 = getelementptr [9 x i8], [9 x i8]* @.str958, i32 0, i32 0
  %7858 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str958.c, i8* %7857)
  %7859 = ptrtoint %nyx_string* %7858 to i64
  call void @nyx_array_push({ i64, i8* }* %7856, i64 %7859)
  %7860 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7861 = getelementptr [12 x i8], [12 x i8]* @.str959, i32 0, i32 0
  %7862 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str959.c, i8* %7861)
  %7863 = ptrtoint %nyx_string* %7862 to i64
  call void @nyx_array_push({ i64, i8* }* %7860, i64 %7863)
  %7864 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7865 = getelementptr [10 x i8], [10 x i8]* @.str960, i32 0, i32 0
  %7866 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str960.c, i8* %7865)
  %7867 = ptrtoint %nyx_string* %7866 to i64
  call void @nyx_array_push({ i64, i8* }* %7864, i64 %7867)
  %7868 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7869 = getelementptr [4 x i8], [4 x i8]* @.str961, i32 0, i32 0
  %7870 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str961.c, i8* %7869)
  %7871 = ptrtoint %nyx_string* %7870 to i64
  call void @nyx_array_push({ i64, i8* }* %7868, i64 %7871)
  %7872 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7873 = getelementptr [4 x i8], [4 x i8]* @.str962, i32 0, i32 0
  %7874 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str962.c, i8* %7873)
  %7875 = ptrtoint %nyx_string* %7874 to i64
  call void @nyx_array_push({ i64, i8* }* %7872, i64 %7875)
  %7876 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7877 = getelementptr [4 x i8], [4 x i8]* @.str963, i32 0, i32 0
  %7878 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str963.c, i8* %7877)
  %7879 = ptrtoint %nyx_string* %7878 to i64
  call void @nyx_array_push({ i64, i8* }* %7876, i64 %7879)
  %7880 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7881 = getelementptr [5 x i8], [5 x i8]* @.str964, i32 0, i32 0
  %7882 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str964.c, i8* %7881)
  %7883 = ptrtoint %nyx_string* %7882 to i64
  call void @nyx_array_push({ i64, i8* }* %7880, i64 %7883)
  %7884 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7885 = getelementptr [7 x i8], [7 x i8]* @.str965, i32 0, i32 0
  %7886 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str965.c, i8* %7885)
  %7887 = ptrtoint %nyx_string* %7886 to i64
  call void @nyx_array_push({ i64, i8* }* %7884, i64 %7887)
  %7888 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7889 = getelementptr [5 x i8], [5 x i8]* @.str966, i32 0, i32 0
  %7890 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str966.c, i8* %7889)
  %7891 = ptrtoint %nyx_string* %7890 to i64
  call void @nyx_array_push({ i64, i8* }* %7888, i64 %7891)
  %7892 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7893 = getelementptr [6 x i8], [6 x i8]* @.str967, i32 0, i32 0
  %7894 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str967.c, i8* %7893)
  %7895 = ptrtoint %nyx_string* %7894 to i64
  call void @nyx_array_push({ i64, i8* }* %7892, i64 %7895)
  %7896 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7897 = getelementptr [8 x i8], [8 x i8]* @.str968, i32 0, i32 0
  %7898 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str968.c, i8* %7897)
  %7899 = ptrtoint %nyx_string* %7898 to i64
  call void @nyx_array_push({ i64, i8* }* %7896, i64 %7899)
  %7900 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7901 = getelementptr [7 x i8], [7 x i8]* @.str969, i32 0, i32 0
  %7902 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str969.c, i8* %7901)
  %7903 = ptrtoint %nyx_string* %7902 to i64
  call void @nyx_array_push({ i64, i8* }* %7900, i64 %7903)
  %7904 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7905 = getelementptr [7 x i8], [7 x i8]* @.str970, i32 0, i32 0
  %7906 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str970.c, i8* %7905)
  %7907 = ptrtoint %nyx_string* %7906 to i64
  call void @nyx_array_push({ i64, i8* }* %7904, i64 %7907)
  %7908 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7909 = getelementptr [11 x i8], [11 x i8]* @.str971, i32 0, i32 0
  %7910 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str971.c, i8* %7909)
  %7911 = ptrtoint %nyx_string* %7910 to i64
  call void @nyx_array_push({ i64, i8* }* %7908, i64 %7911)
  %7912 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7913 = getelementptr [10 x i8], [10 x i8]* @.str972, i32 0, i32 0
  %7914 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str972.c, i8* %7913)
  %7915 = ptrtoint %nyx_string* %7914 to i64
  call void @nyx_array_push({ i64, i8* }* %7912, i64 %7915)
  %7916 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7917 = getelementptr [5 x i8], [5 x i8]* @.str973, i32 0, i32 0
  %7918 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str973.c, i8* %7917)
  %7919 = ptrtoint %nyx_string* %7918 to i64
  call void @nyx_array_push({ i64, i8* }* %7916, i64 %7919)
  %7920 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7921 = getelementptr [4 x i8], [4 x i8]* @.str974, i32 0, i32 0
  %7922 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str974.c, i8* %7921)
  %7923 = ptrtoint %nyx_string* %7922 to i64
  call void @nyx_array_push({ i64, i8* }* %7920, i64 %7923)
  %7924 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7925 = getelementptr [7 x i8], [7 x i8]* @.str975, i32 0, i32 0
  %7926 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str975.c, i8* %7925)
  %7927 = ptrtoint %nyx_string* %7926 to i64
  call void @nyx_array_push({ i64, i8* }* %7924, i64 %7927)
  %7928 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7929 = getelementptr [5 x i8], [5 x i8]* @.str976, i32 0, i32 0
  %7930 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str976.c, i8* %7929)
  %7931 = ptrtoint %nyx_string* %7930 to i64
  call void @nyx_array_push({ i64, i8* }* %7928, i64 %7931)
  %7932 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7933 = getelementptr [5 x i8], [5 x i8]* @.str977, i32 0, i32 0
  %7934 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str977.c, i8* %7933)
  %7935 = ptrtoint %nyx_string* %7934 to i64
  call void @nyx_array_push({ i64, i8* }* %7932, i64 %7935)
  %7936 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7937 = getelementptr [10 x i8], [10 x i8]* @.str978, i32 0, i32 0
  %7938 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str978.c, i8* %7937)
  %7939 = ptrtoint %nyx_string* %7938 to i64
  call void @nyx_array_push({ i64, i8* }* %7936, i64 %7939)
  %7940 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7941 = getelementptr [6 x i8], [6 x i8]* @.str979, i32 0, i32 0
  %7942 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str979.c, i8* %7941)
  %7943 = ptrtoint %nyx_string* %7942 to i64
  call void @nyx_array_push({ i64, i8* }* %7940, i64 %7943)
  %7944 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7945 = getelementptr [8 x i8], [8 x i8]* @.str980, i32 0, i32 0
  %7946 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str980.c, i8* %7945)
  %7947 = ptrtoint %nyx_string* %7946 to i64
  call void @nyx_array_push({ i64, i8* }* %7944, i64 %7947)
  %7948 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7949 = getelementptr [5 x i8], [5 x i8]* @.str981, i32 0, i32 0
  %7950 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str981.c, i8* %7949)
  %7951 = ptrtoint %nyx_string* %7950 to i64
  call void @nyx_array_push({ i64, i8* }* %7948, i64 %7951)
  %7952 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7953 = getelementptr [4 x i8], [4 x i8]* @.str982, i32 0, i32 0
  %7954 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str982.c, i8* %7953)
  %7955 = ptrtoint %nyx_string* %7954 to i64
  call void @nyx_array_push({ i64, i8* }* %7952, i64 %7955)
  %7956 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7957 = getelementptr [6 x i8], [6 x i8]* @.str983, i32 0, i32 0
  %7958 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str983.c, i8* %7957)
  %7959 = ptrtoint %nyx_string* %7958 to i64
  call void @nyx_array_push({ i64, i8* }* %7956, i64 %7959)
  %7960 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7961 = getelementptr [4 x i8], [4 x i8]* @.str984, i32 0, i32 0
  %7962 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str984.c, i8* %7961)
  %7963 = ptrtoint %nyx_string* %7962 to i64
  call void @nyx_array_push({ i64, i8* }* %7960, i64 %7963)
  %7964 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7965 = getelementptr [4 x i8], [4 x i8]* @.str985, i32 0, i32 0
  %7966 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str985.c, i8* %7965)
  %7967 = ptrtoint %nyx_string* %7966 to i64
  call void @nyx_array_push({ i64, i8* }* %7964, i64 %7967)
  %7968 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7969 = getelementptr [6 x i8], [6 x i8]* @.str986, i32 0, i32 0
  %7970 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str986.c, i8* %7969)
  %7971 = ptrtoint %nyx_string* %7970 to i64
  call void @nyx_array_push({ i64, i8* }* %7968, i64 %7971)
  %7972 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7973 = getelementptr [8 x i8], [8 x i8]* @.str987, i32 0, i32 0
  %7974 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str987.c, i8* %7973)
  %7975 = ptrtoint %nyx_string* %7974 to i64
  call void @nyx_array_push({ i64, i8* }* %7972, i64 %7975)
  %7976 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7977 = getelementptr [7 x i8], [7 x i8]* @.str988, i32 0, i32 0
  %7978 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str988.c, i8* %7977)
  %7979 = ptrtoint %nyx_string* %7978 to i64
  call void @nyx_array_push({ i64, i8* }* %7976, i64 %7979)
  %7980 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7981 = getelementptr [8 x i8], [8 x i8]* @.str989, i32 0, i32 0
  %7982 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str989.c, i8* %7981)
  %7983 = ptrtoint %nyx_string* %7982 to i64
  call void @nyx_array_push({ i64, i8* }* %7980, i64 %7983)
  %7984 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7985 = getelementptr [7 x i8], [7 x i8]* @.str990, i32 0, i32 0
  %7986 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str990.c, i8* %7985)
  %7987 = ptrtoint %nyx_string* %7986 to i64
  call void @nyx_array_push({ i64, i8* }* %7984, i64 %7987)
  %7988 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7989 = getelementptr [10 x i8], [10 x i8]* @.str991, i32 0, i32 0
  %7990 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str991.c, i8* %7989)
  %7991 = ptrtoint %nyx_string* %7990 to i64
  call void @nyx_array_push({ i64, i8* }* %7988, i64 %7991)
  %7992 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7993 = getelementptr [11 x i8], [11 x i8]* @.str992, i32 0, i32 0
  %7994 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str992.c, i8* %7993)
  %7995 = ptrtoint %nyx_string* %7994 to i64
  call void @nyx_array_push({ i64, i8* }* %7992, i64 %7995)
  %7996 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7997 = getelementptr [8 x i8], [8 x i8]* @.str993, i32 0, i32 0
  %7998 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str993.c, i8* %7997)
  %7999 = ptrtoint %nyx_string* %7998 to i64
  call void @nyx_array_push({ i64, i8* }* %7996, i64 %7999)
  %8000 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %8001 = getelementptr [9 x i8], [9 x i8]* @.str994, i32 0, i32 0
  %8002 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str994.c, i8* %8001)
  %8003 = ptrtoint %nyx_string* %8002 to i64
  call void @nyx_array_push({ i64, i8* }* %8000, i64 %8003)
  %8004 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %8005 = getelementptr [6 x i8], [6 x i8]* @.str995, i32 0, i32 0
  %8006 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str995.c, i8* %8005)
  %8007 = ptrtoint %nyx_string* %8006 to i64
  call void @nyx_array_push({ i64, i8* }* %8004, i64 %8007)
  %8008 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %8009 = getelementptr [3 x i8], [3 x i8]* @.str996, i32 0, i32 0
  %8010 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str996.c, i8* %8009)
  %8011 = ptrtoint %nyx_string* %8010 to i64
  call void @nyx_array_push({ i64, i8* }* %8008, i64 %8011)
  %8012 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %8013 = getelementptr [10 x i8], [10 x i8]* @.str997, i32 0, i32 0
  %8014 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str997.c, i8* %8013)
  %8015 = ptrtoint %nyx_string* %8014 to i64
  call void @nyx_array_push({ i64, i8* }* %8012, i64 %8015)
  store i64 1, i64* @g_known_methods_ready
  ret i64 0
}

define internal i1 @is_known_method(
%nyx_string* %name.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %8016 = alloca i64
  store i64 0, i64* %8016
  br label %while_cond1733
while_cond1733:
  %8017 = load i64, i64* %8016
  %8018 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %8019 = call i64 @nyx_array_length({ i64, i8* }* %8018)
  %8020 = icmp slt i64 %8017, %8019
  br i1 %8020, label %while_body1734, label %while_end1735
while_body1734:
  %8021 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %8022 = load i64, i64* %8016
  %8023 = call i64 @nyx_array_get({ i64, i8* }* %8021, i64 %8022)
  %8024 = inttoptr i64 %8023 to %nyx_string*
  %8025 = alloca %nyx_string*
  store %nyx_string* %8024, %nyx_string** %8025
  %8026 = load %nyx_string*, %nyx_string** %8025
  %8027 = load %nyx_string*, %nyx_string** %name.ptr
  %8028 = call i1 @nyx_string_equals(%nyx_string* %8026, %nyx_string* %8027)
  br i1 %8028, label %then1736, label %else1737
then1736:
  ret i1 1
else1737:
  br label %merge1738
merge1738:
  %8029 = load i64, i64* %8016
  %8030 = add i64 %8029, 1
  store i64 %8030, i64* %8016
  br label %while_cond1733
while_end1735:
  ret i1 0
}

define internal i1 @is_impl_method(
%nyx_string* %name.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %8031 = load i64, i64* @g_sym_count
  %8032 = sub i64 %8031, 1
  %8033 = alloca i64
  store i64 %8032, i64* %8033
  %8034 = getelementptr [2 x i8], [2 x i8]* @.str998, i32 0, i32 0
  %8035 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str998.c, i8* %8034)
  %8036 = alloca %nyx_string*
  store %nyx_string* %8035, %nyx_string** %8036
  br label %while_cond1739
while_cond1739:
  %8037 = load i64, i64* %8033
  %8038 = icmp sge i64 %8037, 0
  br i1 %8038, label %while_body1740, label %while_end1741
while_body1740:
  %8039 = load { i64, i8* }*, { i64, i8* }** @g_sym_names
  %8040 = load i64, i64* %8033
  %8041 = call i64 @nyx_array_get({ i64, i8* }* %8039, i64 %8040)
  %8042 = inttoptr i64 %8041 to %nyx_string*
  %8043 = alloca %nyx_string*
  store %nyx_string* %8042, %nyx_string** %8043
  %8044 = load %nyx_string*, %nyx_string** %8036
  %8045 = load %nyx_string*, %nyx_string** %name.ptr
  %8046 = call %nyx_string* @nyx_string_concat(%nyx_string* %8044, %nyx_string* %8045)
  %8047 = alloca %nyx_string*
  store %nyx_string* %8046, %nyx_string** %8047
  %8048 = load %nyx_string*, %nyx_string** %8047
  %8049 = call i64 @nyx_string_byte_length(%nyx_string* %8048)
  %8050 = alloca i64
  store i64 %8049, i64* %8050
  %8051 = load %nyx_string*, %nyx_string** %8043
  %8052 = call i64 @nyx_string_byte_length(%nyx_string* %8051)
  %8053 = load i64, i64* %8050
  %8054 = icmp sgt i64 %8052, %8053
  br i1 %8054, label %then1742, label %else1743
then1742:
  %8055 = load %nyx_string*, %nyx_string** %8043
  %8056 = load %nyx_string*, %nyx_string** %8043
  %8057 = call i64 @nyx_string_byte_length(%nyx_string* %8056)
  %8058 = load i64, i64* %8050
  %8059 = sub i64 %8057, %8058
  %8060 = load %nyx_string*, %nyx_string** %8043
  %8061 = call i64 @nyx_string_byte_length(%nyx_string* %8060)
  %8062 = call %nyx_string* @nyx_string_substring(%nyx_string* %8055, i64 %8059, i64 %8061)
  %8063 = load %nyx_string*, %nyx_string** %8047
  %8064 = call i1 @nyx_string_equals(%nyx_string* %8062, %nyx_string* %8063)
  br i1 %8064, label %then1745, label %else1746
then1745:
  ret i1 1
else1746:
  br label %merge1747
merge1747:
  br label %merge1744
else1743:
  br label %merge1744
merge1744:
  %8065 = load i64, i64* %8033
  %8066 = sub i64 %8065, 1
  store i64 %8066, i64* %8033
  br label %while_cond1739
while_end1741:
  ret i1 0
}

define internal %nyx_string* @suggest_similar_name(
%nyx_string* %target.param, { i64, i8* }* %candidates.param) {
  %target.ptr = alloca %nyx_string*
  store %nyx_string* %target.param, %nyx_string** %target.ptr
  %candidates.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %candidates.param, { i64, i8* }** %candidates.ptr
  %8067 = load %nyx_string*, %nyx_string** %target.ptr
  %8068 = call i64 @nyx_string_byte_length(%nyx_string* %8067)
  %8069 = alloca i64
  store i64 %8068, i64* %8069
  %8070 = load i64, i64* %8069
  %8071 = icmp eq i64 %8070, 0
  br i1 %8071, label %then1748, label %else1749
then1748:
  %8072 = getelementptr [1 x i8], [1 x i8]* @.str999, i32 0, i32 0
  %8073 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str999.c, i8* %8072)
  ret %nyx_string* %8073
else1749:
  br label %merge1750
merge1750:
  %8074 = getelementptr [1 x i8], [1 x i8]* @.str1000, i32 0, i32 0
  %8075 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1000.c, i8* %8074)
  %8076 = alloca %nyx_string*
  store %nyx_string* %8075, %nyx_string** %8076
  %8077 = alloca i64
  store i64 999, i64* %8077
  %8078 = alloca i64
  store i64 0, i64* %8078
  br label %while_cond1751
while_cond1751:
  %8079 = load i64, i64* %8078
  %8080 = load { i64, i8* }*, { i64, i8* }** %candidates.ptr
  %8081 = call i64 @nyx_array_length({ i64, i8* }* %8080)
  %8082 = icmp slt i64 %8079, %8081
  br i1 %8082, label %while_body1752, label %while_end1753
while_body1752:
  %8083 = load { i64, i8* }*, { i64, i8* }** %candidates.ptr
  %8084 = load i64, i64* %8078
  %8085 = call i64 @nyx_array_get({ i64, i8* }* %8083, i64 %8084)
  %8086 = inttoptr i64 %8085 to %nyx_string*
  %8087 = alloca %nyx_string*
  store %nyx_string* %8086, %nyx_string** %8087
  %8088 = load %nyx_string*, %nyx_string** %8087
  %8089 = call i64 @nyx_string_byte_length(%nyx_string* %8088)
  %8090 = alloca i64
  store i64 %8089, i64* %8090
  %8091 = call { i64, i8* }* @nyx_array_new_ptr()
  %8092 = alloca { i64, i8* }*
  store { i64, i8* }* %8091, { i64, i8* }** %8092
  %8093 = alloca i64
  store i64 0, i64* %8093
  br label %while_cond1754
while_cond1754:
  %8094 = load i64, i64* %8093
  %8095 = load i64, i64* %8090
  %8096 = icmp sle i64 %8094, %8095
  br i1 %8096, label %while_body1755, label %while_end1756
while_body1755:
  %8097 = load { i64, i8* }*, { i64, i8* }** %8092
  %8098 = load i64, i64* %8093
  call void @nyx_array_push({ i64, i8* }* %8097, i64 %8098)
  %8099 = load i64, i64* %8093
  %8100 = add i64 %8099, 1
  store i64 %8100, i64* %8093
  br label %while_cond1754
while_end1756:
  %8101 = alloca i64
  store i64 1, i64* %8101
  br label %while_cond1757
while_cond1757:
  %8102 = load i64, i64* %8101
  %8103 = load i64, i64* %8069
  %8104 = icmp sle i64 %8102, %8103
  br i1 %8104, label %while_body1758, label %while_end1759
while_body1758:
  %8105 = call { i64, i8* }* @nyx_array_new_ptr()
  %8106 = alloca { i64, i8* }*
  store { i64, i8* }* %8105, { i64, i8* }** %8106
  %8107 = load { i64, i8* }*, { i64, i8* }** %8106
  %8108 = load i64, i64* %8101
  call void @nyx_array_push({ i64, i8* }* %8107, i64 %8108)
  %8109 = load %nyx_string*, %nyx_string** %target.ptr
  %8110 = load i64, i64* %8101
  %8111 = sub i64 %8110, 1
  %8112 = call i8 @nyx_string_char_at(%nyx_string* %8109, i64 %8111)
  %8113 = zext i8 %8112 to i64
  %8114 = alloca i64
  store i64 %8113, i64* %8114
  store i64 1, i64* %8093
  br label %while_cond1760
while_cond1760:
  %8115 = load i64, i64* %8093
  %8116 = load i64, i64* %8090
  %8117 = icmp sle i64 %8115, %8116
  br i1 %8117, label %while_body1761, label %while_end1762
while_body1761:
  %8118 = load %nyx_string*, %nyx_string** %8087
  %8119 = load i64, i64* %8093
  %8120 = sub i64 %8119, 1
  %8121 = call i8 @nyx_string_char_at(%nyx_string* %8118, i64 %8120)
  %8122 = zext i8 %8121 to i64
  %8123 = alloca i64
  store i64 %8122, i64* %8123
  %8124 = alloca i64
  store i64 1, i64* %8124
  %8125 = load i64, i64* %8114
  %8126 = load i64, i64* %8123
  %8127 = icmp eq i64 %8125, %8126
  br i1 %8127, label %then1763, label %else1764
then1763:
  store i64 0, i64* %8124
  br label %merge1765
else1764:
  br label %merge1765
merge1765:
  %8128 = load { i64, i8* }*, { i64, i8* }** %8106
  %8129 = load i64, i64* %8093
  %8130 = sub i64 %8129, 1
  %8131 = call i64 @nyx_array_get({ i64, i8* }* %8128, i64 %8130)
  %8132 = add i64 %8131, 1
  %8133 = alloca i64
  store i64 %8132, i64* %8133
  %8134 = load { i64, i8* }*, { i64, i8* }** %8092
  %8135 = load i64, i64* %8093
  %8136 = call i64 @nyx_array_get({ i64, i8* }* %8134, i64 %8135)
  %8137 = add i64 %8136, 1
  %8138 = alloca i64
  store i64 %8137, i64* %8138
  %8139 = load { i64, i8* }*, { i64, i8* }** %8092
  %8140 = load i64, i64* %8093
  %8141 = sub i64 %8140, 1
  %8142 = call i64 @nyx_array_get({ i64, i8* }* %8139, i64 %8141)
  %8143 = load i64, i64* %8124
  %8144 = add i64 %8142, %8143
  %8145 = alloca i64
  store i64 %8144, i64* %8145
  %8146 = load i64, i64* %8133
  %8147 = alloca i64
  store i64 %8146, i64* %8147
  %8148 = load i64, i64* %8138
  %8149 = load i64, i64* %8147
  %8150 = icmp slt i64 %8148, %8149
  br i1 %8150, label %then1766, label %else1767
then1766:
  %8151 = load i64, i64* %8138
  store i64 %8151, i64* %8147
  br label %merge1768
else1767:
  br label %merge1768
merge1768:
  %8152 = load i64, i64* %8145
  %8153 = load i64, i64* %8147
  %8154 = icmp slt i64 %8152, %8153
  br i1 %8154, label %then1769, label %else1770
then1769:
  %8155 = load i64, i64* %8145
  store i64 %8155, i64* %8147
  br label %merge1771
else1770:
  br label %merge1771
merge1771:
  %8156 = load { i64, i8* }*, { i64, i8* }** %8106
  %8157 = load i64, i64* %8147
  call void @nyx_array_push({ i64, i8* }* %8156, i64 %8157)
  %8158 = load i64, i64* %8093
  %8159 = add i64 %8158, 1
  store i64 %8159, i64* %8093
  br label %while_cond1760
while_end1762:
  %8160 = load { i64, i8* }*, { i64, i8* }** %8106
  store { i64, i8* }* %8160, { i64, i8* }** %8092
  %8161 = load i64, i64* %8101
  %8162 = add i64 %8161, 1
  store i64 %8162, i64* %8101
  br label %while_cond1757
while_end1759:
  %8163 = load { i64, i8* }*, { i64, i8* }** %8092
  %8164 = load i64, i64* %8090
  %8165 = call i64 @nyx_array_get({ i64, i8* }* %8163, i64 %8164)
  %8166 = alloca i64
  store i64 %8165, i64* %8166
  %8167 = alloca i64
  store i64 3, i64* %8167
  %8168 = load i64, i64* %8069
  %8169 = sdiv i64 %8168, 2
  %8170 = alloca i64
  store i64 %8169, i64* %8170
  %8171 = load i64, i64* %8170
  %8172 = load i64, i64* %8167
  %8173 = icmp slt i64 %8171, %8172
  br i1 %8173, label %then1772, label %else1773
then1772:
  %8174 = load i64, i64* %8170
  store i64 %8174, i64* %8167
  br label %merge1774
else1773:
  br label %merge1774
merge1774:
  %8175 = load i64, i64* %8167
  %8176 = icmp slt i64 %8175, 1
  br i1 %8176, label %then1775, label %else1776
then1775:
  store i64 1, i64* %8167
  br label %merge1777
else1776:
  br label %merge1777
merge1777:
  %8177 = load i64, i64* %8166
  %8178 = load i64, i64* %8167
  %8179 = icmp sle i64 %8177, %8178
  br i1 %8179, label %then1778, label %else1779
then1778:
  %8180 = load i64, i64* %8166
  %8181 = load i64, i64* %8077
  %8182 = icmp slt i64 %8180, %8181
  br i1 %8182, label %then1781, label %else1782
then1781:
  %8183 = load i64, i64* %8166
  store i64 %8183, i64* %8077
  %8184 = load %nyx_string*, %nyx_string** %8087
  store %nyx_string* %8184, %nyx_string** %8076
  br label %merge1783
else1782:
  br label %merge1783
merge1783:
  br label %merge1780
else1779:
  br label %merge1780
merge1780:
  %8185 = load i64, i64* %8078
  %8186 = add i64 %8185, 1
  store i64 %8186, i64* %8078
  br label %while_cond1751
while_end1753:
  %8187 = load %nyx_string*, %nyx_string** %8076
  ret %nyx_string* %8187
}

define internal %nyx_string* @suggest_phrase(
%nyx_string* %best.param) {
  %best.ptr = alloca %nyx_string*
  store %nyx_string* %best.param, %nyx_string** %best.ptr
  %8188 = load %nyx_string*, %nyx_string** %best.ptr
  %8189 = getelementptr [1 x i8], [1 x i8]* @.str1001, i32 0, i32 0
  %8190 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1001.c, i8* %8189)
  %8191 = call i1 @nyx_string_equals(%nyx_string* %8188, %nyx_string* %8190)
  br i1 %8191, label %then1784, label %else1785
then1784:
  %8192 = getelementptr [1 x i8], [1 x i8]* @.str1002, i32 0, i32 0
  %8193 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1002.c, i8* %8192)
  ret %nyx_string* %8193
else1785:
  br label %merge1786
merge1786:
  %8194 = getelementptr [21 x i8], [21 x i8]* @.str1003, i32 0, i32 0
  %8195 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1003.c, i8* %8194)
  %8196 = load %nyx_string*, %nyx_string** %best.ptr
  %8197 = call %nyx_string* @nyx_string_concat(%nyx_string* %8195, %nyx_string* %8196)
  %8198 = getelementptr [4 x i8], [4 x i8]* @.str1004, i32 0, i32 0
  %8199 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1004.c, i8* %8198)
  %8200 = call %nyx_string* @nyx_string_concat(%nyx_string* %8197, %nyx_string* %8199)
  %8201 = getelementptr [17 x i8], [17 x i8]* @.str1005, i32 0, i32 0
  %8202 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1005.c, i8* %8201)
  %8203 = load %nyx_string*, %nyx_string** %best.ptr
  %8204 = call %nyx_string* @nyx_string_concat(%nyx_string* %8202, %nyx_string* %8203)
  %8205 = getelementptr [4 x i8], [4 x i8]* @.str1006, i32 0, i32 0
  %8206 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1006.c, i8* %8205)
  %8207 = call %nyx_string* @nyx_string_concat(%nyx_string* %8204, %nyx_string* %8206)
  %8208 = call %nyx_string* @msg(%nyx_string* %8200, %nyx_string* %8207)
  ret %nyx_string* %8208
}

define internal i1 @check_enum_variant_payload(
%nyx_string* %ename.param, %nyx_string* %vname.param, { i64, i8* }* %args.param) {
  %ename.ptr = alloca %nyx_string*
  store %nyx_string* %ename.param, %nyx_string** %ename.ptr
  %vname.ptr = alloca %nyx_string*
  store %nyx_string* %vname.param, %nyx_string** %vname.ptr
  %args.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %args.param, { i64, i8* }** %args.ptr
  %8209 = sub i64 0, 1
  %8210 = alloca i64
  store i64 %8209, i64* %8210
  %8211 = alloca i64
  store i64 0, i64* %8211
  br label %while_cond1787
while_cond1787:
  %8212 = load i64, i64* %8211
  %8213 = load i64, i64* @g_enum_reg_count
  %8214 = icmp slt i64 %8212, %8213
  br i1 %8214, label %while_body1788, label %while_end1789
while_body1788:
  %8215 = load { i64, i8* }*, { i64, i8* }** @g_enum_reg_names
  %8216 = load i64, i64* %8211
  %8217 = call i64 @nyx_array_get({ i64, i8* }* %8215, i64 %8216)
  %8218 = inttoptr i64 %8217 to %nyx_string*
  %8219 = alloca %nyx_string*
  store %nyx_string* %8218, %nyx_string** %8219
  %8220 = load %nyx_string*, %nyx_string** %8219
  %8221 = load %nyx_string*, %nyx_string** %ename.ptr
  %8222 = call i1 @nyx_string_equals(%nyx_string* %8220, %nyx_string* %8221)
  br i1 %8222, label %then1790, label %else1791
then1790:
  %8223 = load i64, i64* %8211
  store i64 %8223, i64* %8210
  %8224 = load i64, i64* @g_enum_reg_count
  store i64 %8224, i64* %8211
  br label %merge1792
else1791:
  %8225 = load i64, i64* %8211
  %8226 = add i64 %8225, 1
  store i64 %8226, i64* %8211
  br label %merge1792
merge1792:
  br label %while_cond1787
while_end1789:
  %8227 = load i64, i64* %8210
  %8228 = icmp slt i64 %8227, 0
  br i1 %8228, label %then1793, label %else1794
then1793:
  ret i1 1
else1794:
  br label %merge1795
merge1795:
  %8229 = load { i64, i8* }*, { i64, i8* }** @g_enum_reg_variants
  %8230 = load i64, i64* %8210
  %8231 = call i64 @nyx_array_get({ i64, i8* }* %8229, i64 %8230)
  %8232 = inttoptr i64 %8231 to { i64, i8* }*
  %8233 = alloca { i64, i8* }*
  store { i64, i8* }* %8232, { i64, i8* }** %8233
  %8234 = load { i64, i8* }*, { i64, i8* }** @g_enum_reg_variant_payloads
  %8235 = load i64, i64* %8210
  %8236 = call i64 @nyx_array_get({ i64, i8* }* %8234, i64 %8235)
  %8237 = inttoptr i64 %8236 to { i64, i8* }*
  %8238 = alloca { i64, i8* }*
  store { i64, i8* }* %8237, { i64, i8* }** %8238
  %8239 = sub i64 0, 1
  %8240 = alloca i64
  store i64 %8239, i64* %8240
  %8241 = alloca i64
  store i64 0, i64* %8241
  br label %while_cond1796
while_cond1796:
  %8242 = load i64, i64* %8241
  %8243 = load { i64, i8* }*, { i64, i8* }** %8233
  %8244 = call i64 @nyx_array_length({ i64, i8* }* %8243)
  %8245 = icmp slt i64 %8242, %8244
  br i1 %8245, label %while_body1797, label %while_end1798
while_body1797:
  %8246 = load { i64, i8* }*, { i64, i8* }** %8233
  %8247 = load i64, i64* %8241
  %8248 = call i64 @nyx_array_get({ i64, i8* }* %8246, i64 %8247)
  %8249 = inttoptr i64 %8248 to %nyx_string*
  %8250 = alloca %nyx_string*
  store %nyx_string* %8249, %nyx_string** %8250
  %8251 = load %nyx_string*, %nyx_string** %8250
  %8252 = load %nyx_string*, %nyx_string** %vname.ptr
  %8253 = call i1 @nyx_string_equals(%nyx_string* %8251, %nyx_string* %8252)
  br i1 %8253, label %then1799, label %else1800
then1799:
  %8254 = load i64, i64* %8241
  store i64 %8254, i64* %8240
  %8255 = load { i64, i8* }*, { i64, i8* }** %8233
  %8256 = call i64 @nyx_array_length({ i64, i8* }* %8255)
  store i64 %8256, i64* %8241
  br label %merge1801
else1800:
  %8257 = load i64, i64* %8241
  %8258 = add i64 %8257, 1
  store i64 %8258, i64* %8241
  br label %merge1801
merge1801:
  br label %while_cond1796
while_end1798:
  %8259 = load i64, i64* %8240
  %8260 = icmp slt i64 %8259, 0
  br i1 %8260, label %then1802, label %else1803
then1802:
  ret i1 1
else1803:
  br label %merge1804
merge1804:
  %8261 = load i64, i64* %8240
  %8262 = load { i64, i8* }*, { i64, i8* }** %8238
  %8263 = call i64 @nyx_array_length({ i64, i8* }* %8262)
  %8264 = icmp sge i64 %8261, %8263
  br i1 %8264, label %then1805, label %else1806
then1805:
  ret i1 1
else1806:
  br label %merge1807
merge1807:
  %8265 = load { i64, i8* }*, { i64, i8* }** %8238
  %8266 = load i64, i64* %8240
  %8267 = call i64 @nyx_array_get({ i64, i8* }* %8265, i64 %8266)
  %8268 = inttoptr i64 %8267 to { i64, i8* }*
  %8269 = alloca { i64, i8* }*
  store { i64, i8* }* %8268, { i64, i8* }** %8269
  %8270 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %8271 = call i64 @nyx_array_length({ i64, i8* }* %8270)
  %8272 = load { i64, i8* }*, { i64, i8* }** %8269
  %8273 = call i64 @nyx_array_length({ i64, i8* }* %8272)
  %8274 = icmp ne i64 %8271, %8273
  br i1 %8274, label %then1808, label %else1809
then1808:
  %8275 = getelementptr [8 x i8], [8 x i8]* @.str1007, i32 0, i32 0
  %8276 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1007.c, i8* %8275)
  %8277 = getelementptr [2 x i8], [2 x i8]* @.str1008, i32 0, i32 0
  %8278 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1008.c, i8* %8277)
  %8279 = load %nyx_string*, %nyx_string** %ename.ptr
  %8280 = call %nyx_string* @nyx_string_concat(%nyx_string* %8278, %nyx_string* %8279)
  %8281 = getelementptr [2 x i8], [2 x i8]* @.str1009, i32 0, i32 0
  %8282 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1009.c, i8* %8281)
  %8283 = call %nyx_string* @nyx_string_concat(%nyx_string* %8280, %nyx_string* %8282)
  %8284 = load %nyx_string*, %nyx_string** %vname.ptr
  %8285 = call %nyx_string* @nyx_string_concat(%nyx_string* %8283, %nyx_string* %8284)
  %8286 = getelementptr [3 x i8], [3 x i8]* @.str1010, i32 0, i32 0
  %8287 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1010.c, i8* %8286)
  %8288 = call %nyx_string* @nyx_string_concat(%nyx_string* %8285, %nyx_string* %8287)
  %8289 = getelementptr [8 x i8], [8 x i8]* @.str1011, i32 0, i32 0
  %8290 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1011.c, i8* %8289)
  %8291 = load { i64, i8* }*, { i64, i8* }** %8269
  %8292 = call i64 @nyx_array_length({ i64, i8* }* %8291)
  %8293 = call %nyx_string* @nyx_string_from_int(i64 %8292)
  %8294 = call %nyx_string* @nyx_string_concat(%nyx_string* %8290, %nyx_string* %8293)
  %8295 = getelementptr [23 x i8], [23 x i8]* @.str1012, i32 0, i32 0
  %8296 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1012.c, i8* %8295)
  %8297 = call %nyx_string* @nyx_string_concat(%nyx_string* %8294, %nyx_string* %8296)
  %8298 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %8299 = call i64 @nyx_array_length({ i64, i8* }* %8298)
  %8300 = call %nyx_string* @nyx_string_from_int(i64 %8299)
  %8301 = call %nyx_string* @nyx_string_concat(%nyx_string* %8297, %nyx_string* %8300)
  %8302 = getelementptr [9 x i8], [9 x i8]* @.str1013, i32 0, i32 0
  %8303 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1013.c, i8* %8302)
  %8304 = load { i64, i8* }*, { i64, i8* }** %8269
  %8305 = call i64 @nyx_array_length({ i64, i8* }* %8304)
  %8306 = call %nyx_string* @nyx_string_from_int(i64 %8305)
  %8307 = call %nyx_string* @nyx_string_concat(%nyx_string* %8303, %nyx_string* %8306)
  %8308 = getelementptr [17 x i8], [17 x i8]* @.str1014, i32 0, i32 0
  %8309 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1014.c, i8* %8308)
  %8310 = call %nyx_string* @nyx_string_concat(%nyx_string* %8307, %nyx_string* %8309)
  %8311 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %8312 = call i64 @nyx_array_length({ i64, i8* }* %8311)
  %8313 = call %nyx_string* @nyx_string_from_int(i64 %8312)
  %8314 = call %nyx_string* @nyx_string_concat(%nyx_string* %8310, %nyx_string* %8313)
  %8315 = call %nyx_string* @msg(%nyx_string* %8301, %nyx_string* %8314)
  %8316 = call %nyx_string* @nyx_string_concat(%nyx_string* %8288, %nyx_string* %8315)
  %8317 = getelementptr [1 x i8], [1 x i8]* @.str1015, i32 0, i32 0
  %8318 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1015.c, i8* %8317)
  %8319 = call i64 @sem_diag(%nyx_string* %8276, %nyx_string* %8316, %nyx_string* %8318)
  ret i1 0
else1809:
  br label %merge1810
merge1810:
  %8320 = alloca i64
  store i64 0, i64* %8320
  %8321 = getelementptr [10 x i8], [10 x i8]* @.str1016, i32 0, i32 0
  %8322 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1016.c, i8* %8321)
  %8323 = alloca %nyx_string*
  store %nyx_string* %8322, %nyx_string** %8323
  %8324 = getelementptr [8 x i8], [8 x i8]* @.str1017, i32 0, i32 0
  %8325 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1017.c, i8* %8324)
  %8326 = alloca %nyx_string*
  store %nyx_string* %8325, %nyx_string** %8326
  %8327 = getelementptr [11 x i8], [11 x i8]* @.str1018, i32 0, i32 0
  %8328 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1018.c, i8* %8327)
  %8329 = alloca %nyx_string*
  store %nyx_string* %8328, %nyx_string** %8329
  %8330 = getelementptr [6 x i8], [6 x i8]* @.str1019, i32 0, i32 0
  %8331 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1019.c, i8* %8330)
  %8332 = alloca %nyx_string*
  store %nyx_string* %8331, %nyx_string** %8332
  %8333 = getelementptr [2 x i8], [2 x i8]* @.str1020, i32 0, i32 0
  %8334 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1020.c, i8* %8333)
  %8335 = alloca %nyx_string*
  store %nyx_string* %8334, %nyx_string** %8335
  %8336 = getelementptr [16 x i8], [16 x i8]* @.str1021, i32 0, i32 0
  %8337 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1021.c, i8* %8336)
  %8338 = alloca %nyx_string*
  store %nyx_string* %8337, %nyx_string** %8338
  %8339 = getelementptr [13 x i8], [13 x i8]* @.str1022, i32 0, i32 0
  %8340 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1022.c, i8* %8339)
  %8341 = alloca %nyx_string*
  store %nyx_string* %8340, %nyx_string** %8341
  %8342 = getelementptr [10 x i8], [10 x i8]* @.str1023, i32 0, i32 0
  %8343 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1023.c, i8* %8342)
  %8344 = alloca %nyx_string*
  store %nyx_string* %8343, %nyx_string** %8344
  %8345 = getelementptr [6 x i8], [6 x i8]* @.str1024, i32 0, i32 0
  %8346 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1024.c, i8* %8345)
  %8347 = alloca %nyx_string*
  store %nyx_string* %8346, %nyx_string** %8347
  %8348 = getelementptr [13 x i8], [13 x i8]* @.str1025, i32 0, i32 0
  %8349 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1025.c, i8* %8348)
  %8350 = alloca %nyx_string*
  store %nyx_string* %8349, %nyx_string** %8350
  %8351 = getelementptr [7 x i8], [7 x i8]* @.str1026, i32 0, i32 0
  %8352 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1026.c, i8* %8351)
  %8353 = alloca %nyx_string*
  store %nyx_string* %8352, %nyx_string** %8353
  %8354 = getelementptr [1 x i8], [1 x i8]* @.str1027, i32 0, i32 0
  %8355 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1027.c, i8* %8354)
  %8356 = alloca %nyx_string*
  store %nyx_string* %8355, %nyx_string** %8356
  br label %while_cond1811
while_cond1811:
  %8357 = load i64, i64* %8320
  %8358 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %8359 = call i64 @nyx_array_length({ i64, i8* }* %8358)
  %8360 = icmp slt i64 %8357, %8359
  br i1 %8360, label %while_body1812, label %while_end1813
while_body1812:
  %8361 = load { i64, i8* }*, { i64, i8* }** %8269
  %8362 = load i64, i64* %8320
  %8363 = call i64 @nyx_array_get({ i64, i8* }* %8361, i64 %8362)
  %8364 = inttoptr i64 %8363 to { i64, i8* }*
  %8365 = alloca { i64, i8* }*
  store { i64, i8* }* %8364, { i64, i8* }** %8365
  %8366 = load { i64, i8* }*, { i64, i8* }** %8365
  %8367 = call i1 @ty_is_unknown({ i64, i8* }* %8366)
  %8368 = xor i1 %8367, true
  br i1 %8368, label %then1814, label %else1815
then1814:
  %8369 = load { i64, i8* }*, { i64, i8* }** %8365
  %8370 = call %nyx_string* @ty_kind({ i64, i8* }* %8369)
  %8371 = alloca %nyx_string*
  store %nyx_string* %8370, %nyx_string** %8371
  %8372 = load %nyx_string*, %nyx_string** %8371
  %8373 = load %nyx_string*, %nyx_string** %8323
  %8374 = call i1 @nyx_string_equals(%nyx_string* %8372, %nyx_string* %8373)
  %8375 = xor i1 %8374, true
  br i1 %8375, label %then1817, label %else1818
then1817:
  %8376 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %8377 = load i64, i64* %8320
  %8378 = call i64 @nyx_array_get({ i64, i8* }* %8376, i64 %8377)
  %8379 = inttoptr i64 %8378 to { i64, i8* }*
  %8380 = call i64 @nyx_array_get({ i64, i8* }* %8379, i64 0)
  %8381 = call i64 @nyx_array_get({ i64, i8* }* %8379, i64 1)
  %8382 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %8379, i64 2)
  %8383 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %8379, i64 3)
  %8384 = inttoptr i64 %8380 to %nyx_string*
  %8385 = inttoptr i64 %8381 to { i64, i8* }*
  %8386 = alloca %ASTNode
  %8387 = getelementptr inbounds %ASTNode, %ASTNode* %8386, i32 0, i32 0
  store %nyx_string* %8384, %nyx_string** %8387
  %8388 = getelementptr inbounds %ASTNode, %ASTNode* %8386, i32 0, i32 1
  store { i64, i8* }* %8385, { i64, i8* }** %8388
  %8389 = getelementptr inbounds %ASTNode, %ASTNode* %8386, i32 0, i32 2
  store i64 %8382, i64* %8389
  %8390 = getelementptr inbounds %ASTNode, %ASTNode* %8386, i32 0, i32 3
  store i64 %8383, i64* %8390
  %8391 = load %ASTNode, %ASTNode* %8386
  %8392 = alloca %ASTNode
  store %ASTNode %8391, %ASTNode* %8392
  %8393 = load %ASTNode, %ASTNode* %8392
  %8394 = call { i64, i8* }* @ty_of_expr(%ASTNode %8393)
  %8395 = alloca { i64, i8* }*
  store { i64, i8* }* %8394, { i64, i8* }** %8395
  %8396 = load { i64, i8* }*, { i64, i8* }** %8395
  %8397 = call i1 @ty_is_unknown({ i64, i8* }* %8396)
  %8398 = xor i1 %8397, true
  br i1 %8398, label %then1820, label %else1821
then1820:
  %8399 = load { i64, i8* }*, { i64, i8* }** %8365
  %8400 = load { i64, i8* }*, { i64, i8* }** %8395
  %8401 = call i1 @ty_eq({ i64, i8* }* %8399, { i64, i8* }* %8400)
  %8402 = xor i1 %8401, true
  br i1 %8402, label %then1823, label %else1824
then1823:
  %8403 = load %nyx_string*, %nyx_string** %8326
  %8404 = load %nyx_string*, %nyx_string** %8329
  %8405 = load i64, i64* %8320
  %8406 = add i64 %8405, 1
  %8407 = call %nyx_string* @nyx_string_from_int(i64 %8406)
  %8408 = call %nyx_string* @nyx_string_concat(%nyx_string* %8404, %nyx_string* %8407)
  %8409 = load %nyx_string*, %nyx_string** %8332
  %8410 = call %nyx_string* @nyx_string_concat(%nyx_string* %8408, %nyx_string* %8409)
  %8411 = load %nyx_string*, %nyx_string** %ename.ptr
  %8412 = call %nyx_string* @nyx_string_concat(%nyx_string* %8410, %nyx_string* %8411)
  %8413 = load %nyx_string*, %nyx_string** %8335
  %8414 = call %nyx_string* @nyx_string_concat(%nyx_string* %8412, %nyx_string* %8413)
  %8415 = load %nyx_string*, %nyx_string** %vname.ptr
  %8416 = call %nyx_string* @nyx_string_concat(%nyx_string* %8414, %nyx_string* %8415)
  %8417 = load %nyx_string*, %nyx_string** %8338
  %8418 = call %nyx_string* @nyx_string_concat(%nyx_string* %8416, %nyx_string* %8417)
  %8419 = load { i64, i8* }*, { i64, i8* }** %8365
  %8420 = call %nyx_string* @ty_to_str({ i64, i8* }* %8419)
  %8421 = call %nyx_string* @nyx_string_concat(%nyx_string* %8418, %nyx_string* %8420)
  %8422 = load %nyx_string*, %nyx_string** %8341
  %8423 = call %nyx_string* @nyx_string_concat(%nyx_string* %8421, %nyx_string* %8422)
  %8424 = load { i64, i8* }*, { i64, i8* }** %8395
  %8425 = call %nyx_string* @ty_to_str({ i64, i8* }* %8424)
  %8426 = call %nyx_string* @nyx_string_concat(%nyx_string* %8423, %nyx_string* %8425)
  %8427 = load %nyx_string*, %nyx_string** %8344
  %8428 = load i64, i64* %8320
  %8429 = add i64 %8428, 1
  %8430 = call %nyx_string* @nyx_string_from_int(i64 %8429)
  %8431 = call %nyx_string* @nyx_string_concat(%nyx_string* %8427, %nyx_string* %8430)
  %8432 = load %nyx_string*, %nyx_string** %8347
  %8433 = call %nyx_string* @nyx_string_concat(%nyx_string* %8431, %nyx_string* %8432)
  %8434 = load %nyx_string*, %nyx_string** %ename.ptr
  %8435 = call %nyx_string* @nyx_string_concat(%nyx_string* %8433, %nyx_string* %8434)
  %8436 = load %nyx_string*, %nyx_string** %8335
  %8437 = call %nyx_string* @nyx_string_concat(%nyx_string* %8435, %nyx_string* %8436)
  %8438 = load %nyx_string*, %nyx_string** %vname.ptr
  %8439 = call %nyx_string* @nyx_string_concat(%nyx_string* %8437, %nyx_string* %8438)
  %8440 = load %nyx_string*, %nyx_string** %8350
  %8441 = call %nyx_string* @nyx_string_concat(%nyx_string* %8439, %nyx_string* %8440)
  %8442 = load { i64, i8* }*, { i64, i8* }** %8365
  %8443 = call %nyx_string* @ty_to_str({ i64, i8* }* %8442)
  %8444 = call %nyx_string* @nyx_string_concat(%nyx_string* %8441, %nyx_string* %8443)
  %8445 = load %nyx_string*, %nyx_string** %8353
  %8446 = call %nyx_string* @nyx_string_concat(%nyx_string* %8444, %nyx_string* %8445)
  %8447 = load { i64, i8* }*, { i64, i8* }** %8395
  %8448 = call %nyx_string* @ty_to_str({ i64, i8* }* %8447)
  %8449 = call %nyx_string* @nyx_string_concat(%nyx_string* %8446, %nyx_string* %8448)
  %8450 = call %nyx_string* @msg(%nyx_string* %8426, %nyx_string* %8449)
  %8451 = load %nyx_string*, %nyx_string** %8356
  %8452 = call i64 @sem_diag(%nyx_string* %8403, %nyx_string* %8450, %nyx_string* %8451)
  ret i1 0
else1824:
  br label %merge1825
merge1825:
  br label %merge1822
else1821:
  br label %merge1822
merge1822:
  br label %merge1819
else1818:
  br label %merge1819
merge1819:
  br label %merge1816
else1815:
  br label %merge1816
merge1816:
  %8453 = load i64, i64* %8320
  %8454 = add i64 %8453, 1
  store i64 %8454, i64* %8320
  br label %while_cond1811
while_end1813:
  ret i1 1
}

define internal i1 @validate_method_call(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %8455 = call i64 @init_known_methods()
  %8456 = load %ASTNode, %ASTNode* %node.ptr
  %8457 = call %ASTNode @get_node_at(%ASTNode %8456, i64 0)
  %8458 = alloca %ASTNode
  store %ASTNode %8457, %ASTNode* %8458
  %8459 = load %ASTNode, %ASTNode* %node.ptr
  %8460 = call %nyx_string* @get_string_at(%ASTNode %8459, i64 1)
  %8461 = alloca %nyx_string*
  store %nyx_string* %8460, %nyx_string** %8461
  %8462 = load %ASTNode, %ASTNode* %node.ptr
  %8463 = call { i64, i8* }* @get_array_at(%ASTNode %8462, i64 2)
  %8464 = alloca { i64, i8* }*
  store { i64, i8* }* %8463, { i64, i8* }** %8464
  %8465 = load %ASTNode, %ASTNode* %8458
  %8466 = call i1 @validate_node(%ASTNode %8465)
  %8467 = xor i1 %8466, true
  br i1 %8467, label %then1826, label %else1827
then1826:
  ret i1 0
else1827:
  br label %merge1828
merge1828:
  %8468 = alloca i64
  store i64 0, i64* %8468
  br label %while_cond1829
while_cond1829:
  %8469 = load i64, i64* %8468
  %8470 = load { i64, i8* }*, { i64, i8* }** %8464
  %8471 = call i64 @nyx_array_length({ i64, i8* }* %8470)
  %8472 = icmp slt i64 %8469, %8471
  br i1 %8472, label %while_body1830, label %while_end1831
while_body1830:
  %8473 = load { i64, i8* }*, { i64, i8* }** %8464
  %8474 = load i64, i64* %8468
  %8475 = call i64 @nyx_array_get({ i64, i8* }* %8473, i64 %8474)
  %8476 = inttoptr i64 %8475 to { i64, i8* }*
  %8477 = call i64 @nyx_array_get({ i64, i8* }* %8476, i64 0)
  %8478 = call i64 @nyx_array_get({ i64, i8* }* %8476, i64 1)
  %8479 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %8476, i64 2)
  %8480 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %8476, i64 3)
  %8481 = inttoptr i64 %8477 to %nyx_string*
  %8482 = inttoptr i64 %8478 to { i64, i8* }*
  %8483 = alloca %ASTNode
  %8484 = getelementptr inbounds %ASTNode, %ASTNode* %8483, i32 0, i32 0
  store %nyx_string* %8481, %nyx_string** %8484
  %8485 = getelementptr inbounds %ASTNode, %ASTNode* %8483, i32 0, i32 1
  store { i64, i8* }* %8482, { i64, i8* }** %8485
  %8486 = getelementptr inbounds %ASTNode, %ASTNode* %8483, i32 0, i32 2
  store i64 %8479, i64* %8486
  %8487 = getelementptr inbounds %ASTNode, %ASTNode* %8483, i32 0, i32 3
  store i64 %8480, i64* %8487
  %8488 = load %ASTNode, %ASTNode* %8483
  %8489 = alloca %ASTNode
  store %ASTNode %8488, %ASTNode* %8489
  %8490 = load %ASTNode, %ASTNode* %8489
  %8491 = call i1 @validate_node(%ASTNode %8490)
  %8492 = xor i1 %8491, true
  br i1 %8492, label %then1832, label %else1833
then1832:
  ret i1 0
else1833:
  br label %merge1834
merge1834:
  %8493 = load i64, i64* %8468
  %8494 = add i64 %8493, 1
  store i64 %8494, i64* %8468
  br label %while_cond1829
while_end1831:
  %8495 = getelementptr %ASTNode, %ASTNode* %8458, i32 0, i32 0
  %8496 = load %nyx_string*, %nyx_string** %8495
  %8497 = getelementptr [11 x i8], [11 x i8]* @.str1028, i32 0, i32 0
  %8498 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1028.c, i8* %8497)
  %8499 = call i1 @nyx_string_equals(%nyx_string* %8496, %nyx_string* %8498)
  br i1 %8499, label %then1835, label %else1836
then1835:
  %8500 = load %ASTNode, %ASTNode* %8458
  %8501 = call %nyx_string* @get_string_at(%ASTNode %8500, i64 0)
  %8502 = alloca %nyx_string*
  store %nyx_string* %8501, %nyx_string** %8502
  %8503 = load %nyx_string*, %nyx_string** %8502
  %8504 = load %nyx_string*, %nyx_string** %8461
  %8505 = load { i64, i8* }*, { i64, i8* }** %8464
  %8506 = call i1 @check_enum_variant_payload(%nyx_string* %8503, %nyx_string* %8504, { i64, i8* }* %8505)
  %8507 = xor i1 %8506, true
  br i1 %8507, label %then1838, label %else1839
then1838:
  ret i1 0
else1839:
  br label %merge1840
merge1840:
  br label %merge1837
else1836:
  br label %merge1837
merge1837:
  %8508 = getelementptr %ASTNode, %ASTNode* %8458, i32 0, i32 0
  %8509 = load %nyx_string*, %nyx_string** %8508
  %8510 = getelementptr [11 x i8], [11 x i8]* @.str1029, i32 0, i32 0
  %8511 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1029.c, i8* %8510)
  %8512 = call i1 @nyx_string_equals(%nyx_string* %8509, %nyx_string* %8511)
  br i1 %8512, label %then1841, label %else1842
then1841:
  %8513 = load %ASTNode, %ASTNode* %8458
  %8514 = call %nyx_string* @get_string_at(%ASTNode %8513, i64 0)
  %8515 = alloca %nyx_string*
  store %nyx_string* %8514, %nyx_string** %8515
  %8516 = load %nyx_string*, %nyx_string** %8515
  %8517 = call %nyx_string* @scope_lookup(%nyx_string* %8516)
  %8518 = alloca %nyx_string*
  store %nyx_string* %8517, %nyx_string** %8518
  %8519 = alloca i1
  store i1 true, i1* %8519
  %8520 = alloca i1
  store i1 true, i1* %8520
  %8521 = alloca i1
  store i1 true, i1* %8521
  %8522 = load %nyx_string*, %nyx_string** %8518
  %8523 = getelementptr [4 x i8], [4 x i8]* @.str1030, i32 0, i32 0
  %8524 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1030.c, i8* %8523)
  %8525 = call i1 @nyx_string_equals(%nyx_string* %8522, %nyx_string* %8524)
  br i1 %8525, label %sc_or_end1845, label %sc_or_rhs1844
sc_or_rhs1844:
  %8526 = load %nyx_string*, %nyx_string** %8518
  %8527 = getelementptr [4 x i8], [4 x i8]* @.str1031, i32 0, i32 0
  %8528 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1031.c, i8* %8527)
  %8529 = call i1 @nyx_string_equals(%nyx_string* %8526, %nyx_string* %8528)
  store i1 %8529, i1* %8521
  br label %sc_or_end1845
sc_or_end1845:
  %8530 = load i1, i1* %8521
  br i1 %8530, label %sc_or_end1847, label %sc_or_rhs1846
sc_or_rhs1846:
  %8531 = load %nyx_string*, %nyx_string** %8518
  %8532 = getelementptr [6 x i8], [6 x i8]* @.str1032, i32 0, i32 0
  %8533 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1032.c, i8* %8532)
  %8534 = call i1 @nyx_string_equals(%nyx_string* %8531, %nyx_string* %8533)
  store i1 %8534, i1* %8520
  br label %sc_or_end1847
sc_or_end1847:
  %8535 = load i1, i1* %8520
  br i1 %8535, label %sc_or_end1849, label %sc_or_rhs1848
sc_or_rhs1848:
  %8536 = load %nyx_string*, %nyx_string** %8518
  %8537 = getelementptr [8 x i8], [8 x i8]* @.str1033, i32 0, i32 0
  %8538 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1033.c, i8* %8537)
  %8539 = call i1 @nyx_string_equals(%nyx_string* %8536, %nyx_string* %8538)
  store i1 %8539, i1* %8519
  br label %sc_or_end1849
sc_or_end1849:
  %8540 = load i1, i1* %8519
  br i1 %8540, label %then1850, label %else1851
then1850:
  %8541 = alloca i1
  store i1 false, i1* %8541
  %8542 = load %nyx_string*, %nyx_string** %8461
  %8543 = call i1 @is_known_method(%nyx_string* %8542)
  %8544 = xor i1 %8543, true
  br i1 %8544, label %sc_and_rhs1853, label %sc_and_end1854
sc_and_rhs1853:
  %8545 = load %nyx_string*, %nyx_string** %8461
  %8546 = call i1 @is_impl_method(%nyx_string* %8545)
  %8547 = xor i1 %8546, true
  store i1 %8547, i1* %8541
  br label %sc_and_end1854
sc_and_end1854:
  %8548 = load i1, i1* %8541
  br i1 %8548, label %then1855, label %else1856
then1855:
  %8549 = load %nyx_string*, %nyx_string** %8461
  %8550 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %8551 = call %nyx_string* @suggest_similar_name(%nyx_string* %8549, { i64, i8* }* %8550)
  %8552 = alloca %nyx_string*
  store %nyx_string* %8551, %nyx_string** %8552
  %8553 = getelementptr [8 x i8], [8 x i8]* @.str1034, i32 0, i32 0
  %8554 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1034.c, i8* %8553)
  %8555 = getelementptr [10 x i8], [10 x i8]* @.str1035, i32 0, i32 0
  %8556 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1035.c, i8* %8555)
  %8557 = load %nyx_string*, %nyx_string** %8461
  %8558 = call %nyx_string* @nyx_string_concat(%nyx_string* %8556, %nyx_string* %8557)
  %8559 = getelementptr [26 x i8], [26 x i8]* @.str1036, i32 0, i32 0
  %8560 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1036.c, i8* %8559)
  %8561 = call %nyx_string* @nyx_string_concat(%nyx_string* %8558, %nyx_string* %8560)
  %8562 = getelementptr [9 x i8], [9 x i8]* @.str1037, i32 0, i32 0
  %8563 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1037.c, i8* %8562)
  %8564 = load %nyx_string*, %nyx_string** %8461
  %8565 = call %nyx_string* @nyx_string_concat(%nyx_string* %8563, %nyx_string* %8564)
  %8566 = getelementptr [25 x i8], [25 x i8]* @.str1038, i32 0, i32 0
  %8567 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1038.c, i8* %8566)
  %8568 = call %nyx_string* @nyx_string_concat(%nyx_string* %8565, %nyx_string* %8567)
  %8569 = call %nyx_string* @msg(%nyx_string* %8561, %nyx_string* %8568)
  %8570 = load %nyx_string*, %nyx_string** %8552
  %8571 = call %nyx_string* @suggest_phrase(%nyx_string* %8570)
  %8572 = call %nyx_string* @nyx_string_concat(%nyx_string* %8569, %nyx_string* %8571)
  %8573 = load %nyx_string*, %nyx_string** %8552
  %8574 = call i64 @sem_diag(%nyx_string* %8554, %nyx_string* %8572, %nyx_string* %8573)
  ret i1 0
else1856:
  br label %merge1857
merge1857:
  br label %merge1852
else1851:
  br label %merge1852
merge1852:
  br label %merge1843
else1842:
  br label %merge1843
merge1843:
  %8575 = load %ASTNode, %ASTNode* %8458
  %8576 = call { i64, i8* }* @ty_of_expr(%ASTNode %8575)
  %8577 = alloca { i64, i8* }*
  store { i64, i8* }* %8576, { i64, i8* }** %8577
  %8578 = load { i64, i8* }*, { i64, i8* }** %8577
  %8579 = call i1 @ty_is_unknown({ i64, i8* }* %8578)
  %8580 = xor i1 %8579, true
  br i1 %8580, label %then1858, label %else1859
then1858:
  %8581 = load { i64, i8* }*, { i64, i8* }** %8577
  %8582 = call %nyx_string* @ty_kind({ i64, i8* }* %8581)
  %8583 = alloca %nyx_string*
  store %nyx_string* %8582, %nyx_string** %8583
  %8584 = load %nyx_string*, %nyx_string** %8583
  %8585 = getelementptr [9 x i8], [9 x i8]* @.str1039, i32 0, i32 0
  %8586 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1039.c, i8* %8585)
  %8587 = call i1 @nyx_string_equals(%nyx_string* %8584, %nyx_string* %8586)
  br i1 %8587, label %then1861, label %else1862
then1861:
  %8588 = load { i64, i8* }*, { i64, i8* }** %8577
  %8589 = call i64 @nyx_array_get({ i64, i8* }* %8588, i64 1)
  %8590 = inttoptr i64 %8589 to %nyx_string*
  %8591 = alloca %nyx_string*
  store %nyx_string* %8590, %nyx_string** %8591
  %8592 = load %nyx_string*, %nyx_string** %8591
  %8593 = load %nyx_string*, %nyx_string** %8461
  %8594 = load { i64, i8* }*, { i64, i8* }** %8464
  %8595 = call i1 @check_impl_method_args(%nyx_string* %8592, %nyx_string* %8593, { i64, i8* }* %8594)
  %8596 = xor i1 %8595, true
  br i1 %8596, label %then1864, label %else1865
then1864:
  ret i1 0
else1865:
  br label %merge1866
merge1866:
  br label %merge1863
else1862:
  br label %merge1863
merge1863:
  %8597 = load %nyx_string*, %nyx_string** %8583
  %8598 = getelementptr [7 x i8], [7 x i8]* @.str1040, i32 0, i32 0
  %8599 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1040.c, i8* %8598)
  %8600 = call i1 @nyx_string_equals(%nyx_string* %8597, %nyx_string* %8599)
  br i1 %8600, label %then1867, label %else1868
then1867:
  %8601 = load { i64, i8* }*, { i64, i8* }** %8577
  %8602 = call i64 @nyx_array_get({ i64, i8* }* %8601, i64 1)
  %8603 = inttoptr i64 %8602 to %nyx_string*
  %8604 = alloca %nyx_string*
  store %nyx_string* %8603, %nyx_string** %8604
  %8605 = load %nyx_string*, %nyx_string** %8604
  %8606 = load %nyx_string*, %nyx_string** %8461
  %8607 = load { i64, i8* }*, { i64, i8* }** %8464
  %8608 = call i1 @check_impl_method_args(%nyx_string* %8605, %nyx_string* %8606, { i64, i8* }* %8607)
  %8609 = xor i1 %8608, true
  br i1 %8609, label %then1870, label %else1871
then1870:
  ret i1 0
else1871:
  br label %merge1872
merge1872:
  br label %merge1869
else1868:
  br label %merge1869
merge1869:
  %8610 = load { i64, i8* }*, { i64, i8* }** %8577
  %8611 = load %nyx_string*, %nyx_string** %8461
  %8612 = load { i64, i8* }*, { i64, i8* }** %8464
  %8613 = call i1 @check_builtin_method_args({ i64, i8* }* %8610, %nyx_string* %8611, { i64, i8* }* %8612)
  %8614 = xor i1 %8613, true
  br i1 %8614, label %then1873, label %else1874
then1873:
  ret i1 0
else1874:
  br label %merge1875
merge1875:
  br label %merge1860
else1859:
  br label %merge1860
merge1860:
  ret i1 1
}

define internal i1 @check_builtin_method_args(
{ i64, i8* }* %recv_ty.param, %nyx_string* %method.param, { i64, i8* }* %args.param) {
  %recv_ty.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %recv_ty.param, { i64, i8* }** %recv_ty.ptr
  %method.ptr = alloca %nyx_string*
  store %nyx_string* %method.param, %nyx_string** %method.ptr
  %args.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %args.param, { i64, i8* }** %args.ptr
  %8615 = load { i64, i8* }*, { i64, i8* }** %recv_ty.ptr
  %8616 = call %nyx_string* @ty_kind({ i64, i8* }* %8615)
  %8617 = alloca %nyx_string*
  store %nyx_string* %8616, %nyx_string** %8617
  %8618 = load %nyx_string*, %nyx_string** %8617
  %8619 = getelementptr [9 x i8], [9 x i8]* @.str1041, i32 0, i32 0
  %8620 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1041.c, i8* %8619)
  %8621 = call i1 @nyx_string_equals(%nyx_string* %8618, %nyx_string* %8620)
  br i1 %8621, label %then1876, label %else1877
then1876:
  %8622 = load %nyx_string*, %nyx_string** %method.ptr
  %8623 = getelementptr [9 x i8], [9 x i8]* @.str1042, i32 0, i32 0
  %8624 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1042.c, i8* %8623)
  %8625 = call i1 @nyx_string_equals(%nyx_string* %8622, %nyx_string* %8624)
  br i1 %8625, label %then1879, label %else1880
then1879:
  %8626 = load %nyx_string*, %nyx_string** %method.ptr
  %8627 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %8628 = call { i64, i8* }* @ty_string()
  %8629 = getelementptr [7 x i8], [7 x i8]* @.str1043, i32 0, i32 0
  %8630 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1043.c, i8* %8629)
  %8631 = call i1 @check_single_arg_type(%nyx_string* %8626, { i64, i8* }* %8627, i64 0, { i64, i8* }* %8628, %nyx_string* %8630)
  ret i1 %8631
else1880:
  br label %merge1881
merge1881:
  %8632 = load %nyx_string*, %nyx_string** %method.ptr
  %8633 = getelementptr [11 x i8], [11 x i8]* @.str1044, i32 0, i32 0
  %8634 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1044.c, i8* %8633)
  %8635 = call i1 @nyx_string_equals(%nyx_string* %8632, %nyx_string* %8634)
  br i1 %8635, label %then1882, label %else1883
then1882:
  %8636 = load %nyx_string*, %nyx_string** %method.ptr
  %8637 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %8638 = call { i64, i8* }* @ty_string()
  %8639 = getelementptr [7 x i8], [7 x i8]* @.str1045, i32 0, i32 0
  %8640 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1045.c, i8* %8639)
  %8641 = call i1 @check_single_arg_type(%nyx_string* %8636, { i64, i8* }* %8637, i64 0, { i64, i8* }* %8638, %nyx_string* %8640)
  ret i1 %8641
else1883:
  br label %merge1884
merge1884:
  %8642 = load %nyx_string*, %nyx_string** %method.ptr
  %8643 = getelementptr [9 x i8], [9 x i8]* @.str1046, i32 0, i32 0
  %8644 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1046.c, i8* %8643)
  %8645 = call i1 @nyx_string_equals(%nyx_string* %8642, %nyx_string* %8644)
  br i1 %8645, label %then1885, label %else1886
then1885:
  %8646 = load %nyx_string*, %nyx_string** %method.ptr
  %8647 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %8648 = call { i64, i8* }* @ty_string()
  %8649 = getelementptr [7 x i8], [7 x i8]* @.str1047, i32 0, i32 0
  %8650 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1047.c, i8* %8649)
  %8651 = call i1 @check_single_arg_type(%nyx_string* %8646, { i64, i8* }* %8647, i64 0, { i64, i8* }* %8648, %nyx_string* %8650)
  ret i1 %8651
else1886:
  br label %merge1887
merge1887:
  %8652 = load %nyx_string*, %nyx_string** %method.ptr
  %8653 = getelementptr [12 x i8], [12 x i8]* @.str1048, i32 0, i32 0
  %8654 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1048.c, i8* %8653)
  %8655 = call i1 @nyx_string_equals(%nyx_string* %8652, %nyx_string* %8654)
  br i1 %8655, label %then1888, label %else1889
then1888:
  %8656 = load %nyx_string*, %nyx_string** %method.ptr
  %8657 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %8658 = call { i64, i8* }* @ty_string()
  %8659 = getelementptr [7 x i8], [7 x i8]* @.str1049, i32 0, i32 0
  %8660 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1049.c, i8* %8659)
  %8661 = call i1 @check_single_arg_type(%nyx_string* %8656, { i64, i8* }* %8657, i64 0, { i64, i8* }* %8658, %nyx_string* %8660)
  ret i1 %8661
else1889:
  br label %merge1890
merge1890:
  %8662 = load %nyx_string*, %nyx_string** %method.ptr
  %8663 = getelementptr [10 x i8], [10 x i8]* @.str1050, i32 0, i32 0
  %8664 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1050.c, i8* %8663)
  %8665 = call i1 @nyx_string_equals(%nyx_string* %8662, %nyx_string* %8664)
  br i1 %8665, label %then1891, label %else1892
then1891:
  %8666 = load %nyx_string*, %nyx_string** %method.ptr
  %8667 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %8668 = call { i64, i8* }* @ty_string()
  %8669 = getelementptr [7 x i8], [7 x i8]* @.str1051, i32 0, i32 0
  %8670 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1051.c, i8* %8669)
  %8671 = call i1 @check_single_arg_type(%nyx_string* %8666, { i64, i8* }* %8667, i64 0, { i64, i8* }* %8668, %nyx_string* %8670)
  ret i1 %8671
else1892:
  br label %merge1893
merge1893:
  %8672 = load %nyx_string*, %nyx_string** %method.ptr
  %8673 = getelementptr [8 x i8], [8 x i8]* @.str1052, i32 0, i32 0
  %8674 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1052.c, i8* %8673)
  %8675 = call i1 @nyx_string_equals(%nyx_string* %8672, %nyx_string* %8674)
  br i1 %8675, label %then1894, label %else1895
then1894:
  %8676 = load %nyx_string*, %nyx_string** %method.ptr
  %8677 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %8678 = call { i64, i8* }* @ty_string()
  %8679 = getelementptr [7 x i8], [7 x i8]* @.str1053, i32 0, i32 0
  %8680 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1053.c, i8* %8679)
  %8681 = call i1 @check_single_arg_type(%nyx_string* %8676, { i64, i8* }* %8677, i64 0, { i64, i8* }* %8678, %nyx_string* %8680)
  %8682 = xor i1 %8681, true
  br i1 %8682, label %then1897, label %else1898
then1897:
  ret i1 0
else1898:
  br label %merge1899
merge1899:
  %8683 = load %nyx_string*, %nyx_string** %method.ptr
  %8684 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %8685 = call { i64, i8* }* @ty_int()
  %8686 = getelementptr [4 x i8], [4 x i8]* @.str1054, i32 0, i32 0
  %8687 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1054.c, i8* %8686)
  %8688 = call i1 @check_single_arg_type(%nyx_string* %8683, { i64, i8* }* %8684, i64 1, { i64, i8* }* %8685, %nyx_string* %8687)
  ret i1 %8688
else1895:
  br label %merge1896
merge1896:
  %8689 = load %nyx_string*, %nyx_string** %method.ptr
  %8690 = getelementptr [6 x i8], [6 x i8]* @.str1055, i32 0, i32 0
  %8691 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1055.c, i8* %8690)
  %8692 = call i1 @nyx_string_equals(%nyx_string* %8689, %nyx_string* %8691)
  br i1 %8692, label %then1900, label %else1901
then1900:
  %8693 = load %nyx_string*, %nyx_string** %method.ptr
  %8694 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %8695 = call { i64, i8* }* @ty_string()
  %8696 = getelementptr [7 x i8], [7 x i8]* @.str1056, i32 0, i32 0
  %8697 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1056.c, i8* %8696)
  %8698 = call i1 @check_single_arg_type(%nyx_string* %8693, { i64, i8* }* %8694, i64 0, { i64, i8* }* %8695, %nyx_string* %8697)
  ret i1 %8698
else1901:
  br label %merge1902
merge1902:
  %8699 = load %nyx_string*, %nyx_string** %method.ptr
  %8700 = getelementptr [7 x i8], [7 x i8]* @.str1057, i32 0, i32 0
  %8701 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1057.c, i8* %8700)
  %8702 = call i1 @nyx_string_equals(%nyx_string* %8699, %nyx_string* %8701)
  br i1 %8702, label %then1903, label %else1904
then1903:
  %8703 = load %nyx_string*, %nyx_string** %method.ptr
  %8704 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %8705 = call { i64, i8* }* @ty_int()
  %8706 = getelementptr [4 x i8], [4 x i8]* @.str1058, i32 0, i32 0
  %8707 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1058.c, i8* %8706)
  %8708 = call i1 @check_single_arg_type(%nyx_string* %8703, { i64, i8* }* %8704, i64 0, { i64, i8* }* %8705, %nyx_string* %8707)
  ret i1 %8708
else1904:
  br label %merge1905
merge1905:
  %8709 = load %nyx_string*, %nyx_string** %method.ptr
  %8710 = getelementptr [7 x i8], [7 x i8]* @.str1059, i32 0, i32 0
  %8711 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1059.c, i8* %8710)
  %8712 = call i1 @nyx_string_equals(%nyx_string* %8709, %nyx_string* %8711)
  br i1 %8712, label %then1906, label %else1907
then1906:
  %8713 = load %nyx_string*, %nyx_string** %method.ptr
  %8714 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %8715 = call { i64, i8* }* @ty_int()
  %8716 = getelementptr [4 x i8], [4 x i8]* @.str1060, i32 0, i32 0
  %8717 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1060.c, i8* %8716)
  %8718 = call i1 @check_single_arg_type(%nyx_string* %8713, { i64, i8* }* %8714, i64 0, { i64, i8* }* %8715, %nyx_string* %8717)
  ret i1 %8718
else1907:
  br label %merge1908
merge1908:
  %8719 = load %nyx_string*, %nyx_string** %method.ptr
  %8720 = getelementptr [10 x i8], [10 x i8]* @.str1061, i32 0, i32 0
  %8721 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1061.c, i8* %8720)
  %8722 = call i1 @nyx_string_equals(%nyx_string* %8719, %nyx_string* %8721)
  br i1 %8722, label %then1909, label %else1910
then1909:
  %8723 = load %nyx_string*, %nyx_string** %method.ptr
  %8724 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %8725 = call { i64, i8* }* @ty_int()
  %8726 = getelementptr [4 x i8], [4 x i8]* @.str1062, i32 0, i32 0
  %8727 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1062.c, i8* %8726)
  %8728 = call i1 @check_single_arg_type(%nyx_string* %8723, { i64, i8* }* %8724, i64 0, { i64, i8* }* %8725, %nyx_string* %8727)
  %8729 = xor i1 %8728, true
  br i1 %8729, label %then1912, label %else1913
then1912:
  ret i1 0
else1913:
  br label %merge1914
merge1914:
  %8730 = load %nyx_string*, %nyx_string** %method.ptr
  %8731 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %8732 = call { i64, i8* }* @ty_int()
  %8733 = getelementptr [4 x i8], [4 x i8]* @.str1063, i32 0, i32 0
  %8734 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1063.c, i8* %8733)
  %8735 = call i1 @check_single_arg_type(%nyx_string* %8730, { i64, i8* }* %8731, i64 1, { i64, i8* }* %8732, %nyx_string* %8734)
  ret i1 %8735
else1910:
  br label %merge1911
merge1911:
  %8736 = load %nyx_string*, %nyx_string** %method.ptr
  %8737 = getelementptr [8 x i8], [8 x i8]* @.str1064, i32 0, i32 0
  %8738 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1064.c, i8* %8737)
  %8739 = call i1 @nyx_string_equals(%nyx_string* %8736, %nyx_string* %8738)
  br i1 %8739, label %then1915, label %else1916
then1915:
  %8740 = load %nyx_string*, %nyx_string** %method.ptr
  %8741 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %8742 = call { i64, i8* }* @ty_string()
  %8743 = getelementptr [7 x i8], [7 x i8]* @.str1065, i32 0, i32 0
  %8744 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1065.c, i8* %8743)
  %8745 = call i1 @check_single_arg_type(%nyx_string* %8740, { i64, i8* }* %8741, i64 0, { i64, i8* }* %8742, %nyx_string* %8744)
  %8746 = xor i1 %8745, true
  br i1 %8746, label %then1918, label %else1919
then1918:
  ret i1 0
else1919:
  br label %merge1920
merge1920:
  %8747 = load %nyx_string*, %nyx_string** %method.ptr
  %8748 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %8749 = call { i64, i8* }* @ty_string()
  %8750 = getelementptr [7 x i8], [7 x i8]* @.str1066, i32 0, i32 0
  %8751 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1066.c, i8* %8750)
  %8752 = call i1 @check_single_arg_type(%nyx_string* %8747, { i64, i8* }* %8748, i64 1, { i64, i8* }* %8749, %nyx_string* %8751)
  ret i1 %8752
else1916:
  br label %merge1917
merge1917:
  br label %merge1878
else1877:
  br label %merge1878
merge1878:
  %8753 = load %nyx_string*, %nyx_string** %8617
  %8754 = getelementptr [8 x i8], [8 x i8]* @.str1067, i32 0, i32 0
  %8755 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1067.c, i8* %8754)
  %8756 = call i1 @nyx_string_equals(%nyx_string* %8753, %nyx_string* %8755)
  br i1 %8756, label %then1921, label %else1922
then1921:
  %8757 = load { i64, i8* }*, { i64, i8* }** %recv_ty.ptr
  %8758 = call i64 @nyx_array_get({ i64, i8* }* %8757, i64 1)
  %8759 = inttoptr i64 %8758 to { i64, i8* }*
  %8760 = alloca { i64, i8* }*
  store { i64, i8* }* %8759, { i64, i8* }** %8760
  %8761 = load { i64, i8* }*, { i64, i8* }** %8760
  %8762 = call i1 @ty_is_unknown({ i64, i8* }* %8761)
  br i1 %8762, label %then1924, label %else1925
then1924:
  ret i1 1
else1925:
  br label %merge1926
merge1926:
  %8763 = load { i64, i8* }*, { i64, i8* }** %8760
  %8764 = call %nyx_string* @ty_to_str({ i64, i8* }* %8763)
  %8765 = alloca %nyx_string*
  store %nyx_string* %8764, %nyx_string** %8765
  %8766 = load %nyx_string*, %nyx_string** %method.ptr
  %8767 = getelementptr [5 x i8], [5 x i8]* @.str1068, i32 0, i32 0
  %8768 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1068.c, i8* %8767)
  %8769 = call i1 @nyx_string_equals(%nyx_string* %8766, %nyx_string* %8768)
  br i1 %8769, label %then1927, label %else1928
then1927:
  %8770 = load %nyx_string*, %nyx_string** %method.ptr
  %8771 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %8772 = load { i64, i8* }*, { i64, i8* }** %8760
  %8773 = load %nyx_string*, %nyx_string** %8765
  %8774 = call i1 @check_single_arg_type(%nyx_string* %8770, { i64, i8* }* %8771, i64 0, { i64, i8* }* %8772, %nyx_string* %8773)
  ret i1 %8774
else1928:
  br label %merge1929
merge1929:
  %8775 = load %nyx_string*, %nyx_string** %method.ptr
  %8776 = getelementptr [9 x i8], [9 x i8]* @.str1069, i32 0, i32 0
  %8777 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1069.c, i8* %8776)
  %8778 = call i1 @nyx_string_equals(%nyx_string* %8775, %nyx_string* %8777)
  br i1 %8778, label %then1930, label %else1931
then1930:
  %8779 = load %nyx_string*, %nyx_string** %method.ptr
  %8780 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %8781 = load { i64, i8* }*, { i64, i8* }** %8760
  %8782 = load %nyx_string*, %nyx_string** %8765
  %8783 = call i1 @check_single_arg_type(%nyx_string* %8779, { i64, i8* }* %8780, i64 0, { i64, i8* }* %8781, %nyx_string* %8782)
  ret i1 %8783
else1931:
  br label %merge1932
merge1932:
  %8784 = load %nyx_string*, %nyx_string** %method.ptr
  %8785 = getelementptr [8 x i8], [8 x i8]* @.str1070, i32 0, i32 0
  %8786 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1070.c, i8* %8785)
  %8787 = call i1 @nyx_string_equals(%nyx_string* %8784, %nyx_string* %8786)
  br i1 %8787, label %then1933, label %else1934
then1933:
  %8788 = load %nyx_string*, %nyx_string** %method.ptr
  %8789 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %8790 = load { i64, i8* }*, { i64, i8* }** %8760
  %8791 = load %nyx_string*, %nyx_string** %8765
  %8792 = call i1 @check_single_arg_type(%nyx_string* %8788, { i64, i8* }* %8789, i64 0, { i64, i8* }* %8790, %nyx_string* %8791)
  ret i1 %8792
else1934:
  br label %merge1935
merge1935:
  %8793 = load %nyx_string*, %nyx_string** %method.ptr
  %8794 = getelementptr [7 x i8], [7 x i8]* @.str1071, i32 0, i32 0
  %8795 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1071.c, i8* %8794)
  %8796 = call i1 @nyx_string_equals(%nyx_string* %8793, %nyx_string* %8795)
  br i1 %8796, label %then1936, label %else1937
then1936:
  %8797 = load %nyx_string*, %nyx_string** %method.ptr
  %8798 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %8799 = call { i64, i8* }* @ty_int()
  %8800 = getelementptr [4 x i8], [4 x i8]* @.str1072, i32 0, i32 0
  %8801 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1072.c, i8* %8800)
  %8802 = call i1 @check_single_arg_type(%nyx_string* %8797, { i64, i8* }* %8798, i64 0, { i64, i8* }* %8799, %nyx_string* %8801)
  %8803 = xor i1 %8802, true
  br i1 %8803, label %then1939, label %else1940
then1939:
  ret i1 0
else1940:
  br label %merge1941
merge1941:
  %8804 = load %nyx_string*, %nyx_string** %method.ptr
  %8805 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %8806 = load { i64, i8* }*, { i64, i8* }** %8760
  %8807 = load %nyx_string*, %nyx_string** %8765
  %8808 = call i1 @check_single_arg_type(%nyx_string* %8804, { i64, i8* }* %8805, i64 1, { i64, i8* }* %8806, %nyx_string* %8807)
  ret i1 %8808
else1937:
  br label %merge1938
merge1938:
  %8809 = load %nyx_string*, %nyx_string** %method.ptr
  %8810 = getelementptr [7 x i8], [7 x i8]* @.str1073, i32 0, i32 0
  %8811 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1073.c, i8* %8810)
  %8812 = call i1 @nyx_string_equals(%nyx_string* %8809, %nyx_string* %8811)
  br i1 %8812, label %then1942, label %else1943
then1942:
  %8813 = load %nyx_string*, %nyx_string** %method.ptr
  %8814 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %8815 = call { i64, i8* }* @ty_int()
  %8816 = getelementptr [4 x i8], [4 x i8]* @.str1074, i32 0, i32 0
  %8817 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1074.c, i8* %8816)
  %8818 = call i1 @check_single_arg_type(%nyx_string* %8813, { i64, i8* }* %8814, i64 0, { i64, i8* }* %8815, %nyx_string* %8817)
  ret i1 %8818
else1943:
  br label %merge1944
merge1944:
  %8819 = load %nyx_string*, %nyx_string** %method.ptr
  %8820 = getelementptr [6 x i8], [6 x i8]* @.str1075, i32 0, i32 0
  %8821 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1075.c, i8* %8820)
  %8822 = call i1 @nyx_string_equals(%nyx_string* %8819, %nyx_string* %8821)
  br i1 %8822, label %then1945, label %else1946
then1945:
  %8823 = load %nyx_string*, %nyx_string** %method.ptr
  %8824 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %8825 = call { i64, i8* }* @ty_int()
  %8826 = getelementptr [4 x i8], [4 x i8]* @.str1076, i32 0, i32 0
  %8827 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1076.c, i8* %8826)
  %8828 = call i1 @check_single_arg_type(%nyx_string* %8823, { i64, i8* }* %8824, i64 0, { i64, i8* }* %8825, %nyx_string* %8827)
  %8829 = xor i1 %8828, true
  br i1 %8829, label %then1948, label %else1949
then1948:
  ret i1 0
else1949:
  br label %merge1950
merge1950:
  %8830 = load %nyx_string*, %nyx_string** %method.ptr
  %8831 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %8832 = call { i64, i8* }* @ty_int()
  %8833 = getelementptr [4 x i8], [4 x i8]* @.str1077, i32 0, i32 0
  %8834 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1077.c, i8* %8833)
  %8835 = call i1 @check_single_arg_type(%nyx_string* %8830, { i64, i8* }* %8831, i64 1, { i64, i8* }* %8832, %nyx_string* %8834)
  ret i1 %8835
else1946:
  br label %merge1947
merge1947:
  %8836 = load %nyx_string*, %nyx_string** %method.ptr
  %8837 = getelementptr [5 x i8], [5 x i8]* @.str1078, i32 0, i32 0
  %8838 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1078.c, i8* %8837)
  %8839 = call i1 @nyx_string_equals(%nyx_string* %8836, %nyx_string* %8838)
  br i1 %8839, label %then1951, label %else1952
then1951:
  %8840 = load %nyx_string*, %nyx_string** %method.ptr
  %8841 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %8842 = call { i64, i8* }* @ty_string()
  %8843 = getelementptr [7 x i8], [7 x i8]* @.str1079, i32 0, i32 0
  %8844 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1079.c, i8* %8843)
  %8845 = call i1 @check_single_arg_type(%nyx_string* %8840, { i64, i8* }* %8841, i64 0, { i64, i8* }* %8842, %nyx_string* %8844)
  ret i1 %8845
else1952:
  br label %merge1953
merge1953:
  br label %merge1923
else1922:
  br label %merge1923
merge1923:
  %8846 = load %nyx_string*, %nyx_string** %8617
  %8847 = getelementptr [6 x i8], [6 x i8]* @.str1080, i32 0, i32 0
  %8848 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1080.c, i8* %8847)
  %8849 = call i1 @nyx_string_equals(%nyx_string* %8846, %nyx_string* %8848)
  br i1 %8849, label %then1954, label %else1955
then1954:
  %8850 = load { i64, i8* }*, { i64, i8* }** %recv_ty.ptr
  %8851 = call i64 @nyx_array_get({ i64, i8* }* %8850, i64 1)
  %8852 = inttoptr i64 %8851 to { i64, i8* }*
  %8853 = alloca { i64, i8* }*
  store { i64, i8* }* %8852, { i64, i8* }** %8853
  %8854 = load { i64, i8* }*, { i64, i8* }** %recv_ty.ptr
  %8855 = call i64 @nyx_array_get({ i64, i8* }* %8854, i64 2)
  %8856 = inttoptr i64 %8855 to { i64, i8* }*
  %8857 = alloca { i64, i8* }*
  store { i64, i8* }* %8856, { i64, i8* }** %8857
  %8858 = load { i64, i8* }*, { i64, i8* }** %8853
  %8859 = call i1 @ty_is_unknown({ i64, i8* }* %8858)
  %8860 = xor i1 %8859, true
  br i1 %8860, label %then1957, label %else1958
then1957:
  %8861 = load { i64, i8* }*, { i64, i8* }** %8853
  %8862 = call %nyx_string* @ty_to_str({ i64, i8* }* %8861)
  %8863 = alloca %nyx_string*
  store %nyx_string* %8862, %nyx_string** %8863
  %8864 = load %nyx_string*, %nyx_string** %method.ptr
  %8865 = getelementptr [4 x i8], [4 x i8]* @.str1081, i32 0, i32 0
  %8866 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1081.c, i8* %8865)
  %8867 = call i1 @nyx_string_equals(%nyx_string* %8864, %nyx_string* %8866)
  br i1 %8867, label %then1960, label %else1961
then1960:
  %8868 = load %nyx_string*, %nyx_string** %method.ptr
  %8869 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %8870 = load { i64, i8* }*, { i64, i8* }** %8853
  %8871 = load %nyx_string*, %nyx_string** %8863
  %8872 = call i1 @check_single_arg_type(%nyx_string* %8868, { i64, i8* }* %8869, i64 0, { i64, i8* }* %8870, %nyx_string* %8871)
  ret i1 %8872
else1961:
  br label %merge1962
merge1962:
  %8873 = load %nyx_string*, %nyx_string** %method.ptr
  %8874 = getelementptr [4 x i8], [4 x i8]* @.str1082, i32 0, i32 0
  %8875 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1082.c, i8* %8874)
  %8876 = call i1 @nyx_string_equals(%nyx_string* %8873, %nyx_string* %8875)
  br i1 %8876, label %then1963, label %else1964
then1963:
  %8877 = load %nyx_string*, %nyx_string** %method.ptr
  %8878 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %8879 = load { i64, i8* }*, { i64, i8* }** %8853
  %8880 = load %nyx_string*, %nyx_string** %8863
  %8881 = call i1 @check_single_arg_type(%nyx_string* %8877, { i64, i8* }* %8878, i64 0, { i64, i8* }* %8879, %nyx_string* %8880)
  ret i1 %8881
else1964:
  br label %merge1965
merge1965:
  %8882 = load %nyx_string*, %nyx_string** %method.ptr
  %8883 = getelementptr [7 x i8], [7 x i8]* @.str1083, i32 0, i32 0
  %8884 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1083.c, i8* %8883)
  %8885 = call i1 @nyx_string_equals(%nyx_string* %8882, %nyx_string* %8884)
  br i1 %8885, label %then1966, label %else1967
then1966:
  %8886 = load %nyx_string*, %nyx_string** %method.ptr
  %8887 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %8888 = load { i64, i8* }*, { i64, i8* }** %8853
  %8889 = load %nyx_string*, %nyx_string** %8863
  %8890 = call i1 @check_single_arg_type(%nyx_string* %8886, { i64, i8* }* %8887, i64 0, { i64, i8* }* %8888, %nyx_string* %8889)
  ret i1 %8890
else1967:
  br label %merge1968
merge1968:
  %8891 = load %nyx_string*, %nyx_string** %method.ptr
  %8892 = getelementptr [4 x i8], [4 x i8]* @.str1084, i32 0, i32 0
  %8893 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1084.c, i8* %8892)
  %8894 = call i1 @nyx_string_equals(%nyx_string* %8891, %nyx_string* %8893)
  br i1 %8894, label %then1969, label %else1970
then1969:
  %8895 = load %nyx_string*, %nyx_string** %method.ptr
  %8896 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %8897 = load { i64, i8* }*, { i64, i8* }** %8853
  %8898 = load %nyx_string*, %nyx_string** %8863
  %8899 = call i1 @check_single_arg_type(%nyx_string* %8895, { i64, i8* }* %8896, i64 0, { i64, i8* }* %8897, %nyx_string* %8898)
  %8900 = xor i1 %8899, true
  br i1 %8900, label %then1972, label %else1973
then1972:
  ret i1 0
else1973:
  br label %merge1974
merge1974:
  %8901 = load { i64, i8* }*, { i64, i8* }** %8857
  %8902 = call i1 @ty_is_unknown({ i64, i8* }* %8901)
  %8903 = xor i1 %8902, true
  br i1 %8903, label %then1975, label %else1976
then1975:
  %8904 = load { i64, i8* }*, { i64, i8* }** %8857
  %8905 = call %nyx_string* @ty_to_str({ i64, i8* }* %8904)
  %8906 = alloca %nyx_string*
  store %nyx_string* %8905, %nyx_string** %8906
  %8907 = load %nyx_string*, %nyx_string** %method.ptr
  %8908 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %8909 = load { i64, i8* }*, { i64, i8* }** %8857
  %8910 = load %nyx_string*, %nyx_string** %8906
  %8911 = call i1 @check_single_arg_type(%nyx_string* %8907, { i64, i8* }* %8908, i64 1, { i64, i8* }* %8909, %nyx_string* %8910)
  ret i1 %8911
else1976:
  br label %merge1977
merge1977:
  br label %merge1971
else1970:
  br label %merge1971
merge1971:
  br label %merge1959
else1958:
  br label %merge1959
merge1959:
  br label %merge1956
else1955:
  br label %merge1956
merge1956:
  %8912 = load %nyx_string*, %nyx_string** %8617
  %8913 = getelementptr [9 x i8], [9 x i8]* @.str1085, i32 0, i32 0
  %8914 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1085.c, i8* %8913)
  %8915 = call i1 @nyx_string_equals(%nyx_string* %8912, %nyx_string* %8914)
  br i1 %8915, label %then1978, label %else1979
then1978:
  %8916 = load { i64, i8* }*, { i64, i8* }** %recv_ty.ptr
  %8917 = call i64 @nyx_array_get({ i64, i8* }* %8916, i64 1)
  %8918 = inttoptr i64 %8917 to { i64, i8* }*
  %8919 = alloca { i64, i8* }*
  store { i64, i8* }* %8918, { i64, i8* }** %8919
  %8920 = load { i64, i8* }*, { i64, i8* }** %8919
  %8921 = call i1 @ty_is_unknown({ i64, i8* }* %8920)
  %8922 = xor i1 %8921, true
  br i1 %8922, label %then1981, label %else1982
then1981:
  %8923 = load { i64, i8* }*, { i64, i8* }** %8919
  %8924 = call %nyx_string* @ty_to_str({ i64, i8* }* %8923)
  %8925 = alloca %nyx_string*
  store %nyx_string* %8924, %nyx_string** %8925
  %8926 = load %nyx_string*, %nyx_string** %method.ptr
  %8927 = getelementptr [10 x i8], [10 x i8]* @.str1086, i32 0, i32 0
  %8928 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1086.c, i8* %8927)
  %8929 = call i1 @nyx_string_equals(%nyx_string* %8926, %nyx_string* %8928)
  br i1 %8929, label %then1984, label %else1985
then1984:
  %8930 = load %nyx_string*, %nyx_string** %method.ptr
  %8931 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %8932 = load { i64, i8* }*, { i64, i8* }** %8919
  %8933 = load %nyx_string*, %nyx_string** %8925
  %8934 = call i1 @check_single_arg_type(%nyx_string* %8930, { i64, i8* }* %8931, i64 0, { i64, i8* }* %8932, %nyx_string* %8933)
  ret i1 %8934
else1985:
  br label %merge1986
merge1986:
  br label %merge1983
else1982:
  br label %merge1983
merge1983:
  br label %merge1980
else1979:
  br label %merge1980
merge1980:
  %8935 = load %nyx_string*, %nyx_string** %8617
  %8936 = getelementptr [9 x i8], [9 x i8]* @.str1087, i32 0, i32 0
  %8937 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1087.c, i8* %8936)
  %8938 = call i1 @nyx_string_equals(%nyx_string* %8935, %nyx_string* %8937)
  br i1 %8938, label %then1987, label %else1988
then1987:
  %8939 = load { i64, i8* }*, { i64, i8* }** %recv_ty.ptr
  %8940 = call i64 @nyx_array_get({ i64, i8* }* %8939, i64 1)
  %8941 = inttoptr i64 %8940 to { i64, i8* }*
  %8942 = alloca { i64, i8* }*
  store { i64, i8* }* %8941, { i64, i8* }** %8942
  %8943 = load { i64, i8* }*, { i64, i8* }** %8942
  %8944 = call i1 @ty_is_unknown({ i64, i8* }* %8943)
  %8945 = xor i1 %8944, true
  br i1 %8945, label %then1990, label %else1991
then1990:
  %8946 = load { i64, i8* }*, { i64, i8* }** %8942
  %8947 = call %nyx_string* @ty_to_str({ i64, i8* }* %8946)
  %8948 = alloca %nyx_string*
  store %nyx_string* %8947, %nyx_string** %8948
  %8949 = load %nyx_string*, %nyx_string** %method.ptr
  %8950 = getelementptr [10 x i8], [10 x i8]* @.str1088, i32 0, i32 0
  %8951 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1088.c, i8* %8950)
  %8952 = call i1 @nyx_string_equals(%nyx_string* %8949, %nyx_string* %8951)
  br i1 %8952, label %then1993, label %else1994
then1993:
  %8953 = load %nyx_string*, %nyx_string** %method.ptr
  %8954 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %8955 = load { i64, i8* }*, { i64, i8* }** %8942
  %8956 = load %nyx_string*, %nyx_string** %8948
  %8957 = call i1 @check_single_arg_type(%nyx_string* %8953, { i64, i8* }* %8954, i64 0, { i64, i8* }* %8955, %nyx_string* %8956)
  ret i1 %8957
else1994:
  br label %merge1995
merge1995:
  br label %merge1992
else1991:
  br label %merge1992
merge1992:
  br label %merge1989
else1988:
  br label %merge1989
merge1989:
  ret i1 1
}

define internal i1 @check_single_arg_type(
%nyx_string* %method.param, { i64, i8* }* %args.param, i64 %idx.param, { i64, i8* }* %expected.param, %nyx_string* %expected_name.param) {
  %method.ptr = alloca %nyx_string*
  store %nyx_string* %method.param, %nyx_string** %method.ptr
  %args.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %args.param, { i64, i8* }** %args.ptr
  %idx.ptr = alloca i64
  store i64 %idx.param, i64* %idx.ptr
  %expected.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %expected.param, { i64, i8* }** %expected.ptr
  %expected_name.ptr = alloca %nyx_string*
  store %nyx_string* %expected_name.param, %nyx_string** %expected_name.ptr
  %8958 = load i64, i64* %idx.ptr
  %8959 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %8960 = call i64 @nyx_array_length({ i64, i8* }* %8959)
  %8961 = icmp sge i64 %8958, %8960
  br i1 %8961, label %then1996, label %else1997
then1996:
  ret i1 1
else1997:
  br label %merge1998
merge1998:
  %8962 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %8963 = load i64, i64* %idx.ptr
  %8964 = call i64 @nyx_array_get({ i64, i8* }* %8962, i64 %8963)
  %8965 = inttoptr i64 %8964 to { i64, i8* }*
  %8966 = call i64 @nyx_array_get({ i64, i8* }* %8965, i64 0)
  %8967 = call i64 @nyx_array_get({ i64, i8* }* %8965, i64 1)
  %8968 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %8965, i64 2)
  %8969 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %8965, i64 3)
  %8970 = inttoptr i64 %8966 to %nyx_string*
  %8971 = inttoptr i64 %8967 to { i64, i8* }*
  %8972 = alloca %ASTNode
  %8973 = getelementptr inbounds %ASTNode, %ASTNode* %8972, i32 0, i32 0
  store %nyx_string* %8970, %nyx_string** %8973
  %8974 = getelementptr inbounds %ASTNode, %ASTNode* %8972, i32 0, i32 1
  store { i64, i8* }* %8971, { i64, i8* }** %8974
  %8975 = getelementptr inbounds %ASTNode, %ASTNode* %8972, i32 0, i32 2
  store i64 %8968, i64* %8975
  %8976 = getelementptr inbounds %ASTNode, %ASTNode* %8972, i32 0, i32 3
  store i64 %8969, i64* %8976
  %8977 = load %ASTNode, %ASTNode* %8972
  %8978 = alloca %ASTNode
  store %ASTNode %8977, %ASTNode* %8978
  %8979 = load %ASTNode, %ASTNode* %8978
  %8980 = call { i64, i8* }* @ty_of_expr(%ASTNode %8979)
  %8981 = alloca { i64, i8* }*
  store { i64, i8* }* %8980, { i64, i8* }** %8981
  %8982 = load { i64, i8* }*, { i64, i8* }** %8981
  %8983 = call i1 @ty_is_unknown({ i64, i8* }* %8982)
  br i1 %8983, label %then1999, label %else2000
then1999:
  ret i1 1
else2000:
  br label %merge2001
merge2001:
  %8984 = load { i64, i8* }*, { i64, i8* }** %expected.ptr
  %8985 = load { i64, i8* }*, { i64, i8* }** %8981
  %8986 = call i1 @ty_eq({ i64, i8* }* %8984, { i64, i8* }* %8985)
  br i1 %8986, label %then2002, label %else2003
then2002:
  ret i1 1
else2003:
  br label %merge2004
merge2004:
  %8987 = getelementptr [8 x i8], [8 x i8]* @.str1089, i32 0, i32 0
  %8988 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1089.c, i8* %8987)
  %8989 = getelementptr [11 x i8], [11 x i8]* @.str1090, i32 0, i32 0
  %8990 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1090.c, i8* %8989)
  %8991 = load i64, i64* %idx.ptr
  %8992 = add i64 %8991, 1
  %8993 = call %nyx_string* @nyx_string_from_int(i64 %8992)
  %8994 = call %nyx_string* @nyx_string_concat(%nyx_string* %8990, %nyx_string* %8993)
  %8995 = getelementptr [6 x i8], [6 x i8]* @.str1091, i32 0, i32 0
  %8996 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1091.c, i8* %8995)
  %8997 = call %nyx_string* @nyx_string_concat(%nyx_string* %8994, %nyx_string* %8996)
  %8998 = load %nyx_string*, %nyx_string** %method.ptr
  %8999 = call %nyx_string* @nyx_string_concat(%nyx_string* %8997, %nyx_string* %8998)
  %9000 = getelementptr [16 x i8], [16 x i8]* @.str1092, i32 0, i32 0
  %9001 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1092.c, i8* %9000)
  %9002 = call %nyx_string* @nyx_string_concat(%nyx_string* %8999, %nyx_string* %9001)
  %9003 = load %nyx_string*, %nyx_string** %expected_name.ptr
  %9004 = call %nyx_string* @nyx_string_concat(%nyx_string* %9002, %nyx_string* %9003)
  %9005 = getelementptr [13 x i8], [13 x i8]* @.str1093, i32 0, i32 0
  %9006 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1093.c, i8* %9005)
  %9007 = call %nyx_string* @nyx_string_concat(%nyx_string* %9004, %nyx_string* %9006)
  %9008 = load { i64, i8* }*, { i64, i8* }** %8981
  %9009 = call %nyx_string* @ty_to_str({ i64, i8* }* %9008)
  %9010 = call %nyx_string* @nyx_string_concat(%nyx_string* %9007, %nyx_string* %9009)
  %9011 = getelementptr [10 x i8], [10 x i8]* @.str1094, i32 0, i32 0
  %9012 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1094.c, i8* %9011)
  %9013 = load i64, i64* %idx.ptr
  %9014 = add i64 %9013, 1
  %9015 = call %nyx_string* @nyx_string_from_int(i64 %9014)
  %9016 = call %nyx_string* @nyx_string_concat(%nyx_string* %9012, %nyx_string* %9015)
  %9017 = getelementptr [6 x i8], [6 x i8]* @.str1095, i32 0, i32 0
  %9018 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1095.c, i8* %9017)
  %9019 = call %nyx_string* @nyx_string_concat(%nyx_string* %9016, %nyx_string* %9018)
  %9020 = load %nyx_string*, %nyx_string** %method.ptr
  %9021 = call %nyx_string* @nyx_string_concat(%nyx_string* %9019, %nyx_string* %9020)
  %9022 = getelementptr [13 x i8], [13 x i8]* @.str1096, i32 0, i32 0
  %9023 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1096.c, i8* %9022)
  %9024 = call %nyx_string* @nyx_string_concat(%nyx_string* %9021, %nyx_string* %9023)
  %9025 = load %nyx_string*, %nyx_string** %expected_name.ptr
  %9026 = call %nyx_string* @nyx_string_concat(%nyx_string* %9024, %nyx_string* %9025)
  %9027 = getelementptr [7 x i8], [7 x i8]* @.str1097, i32 0, i32 0
  %9028 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1097.c, i8* %9027)
  %9029 = call %nyx_string* @nyx_string_concat(%nyx_string* %9026, %nyx_string* %9028)
  %9030 = load { i64, i8* }*, { i64, i8* }** %8981
  %9031 = call %nyx_string* @ty_to_str({ i64, i8* }* %9030)
  %9032 = call %nyx_string* @nyx_string_concat(%nyx_string* %9029, %nyx_string* %9031)
  %9033 = call %nyx_string* @msg(%nyx_string* %9010, %nyx_string* %9032)
  %9034 = getelementptr [1 x i8], [1 x i8]* @.str1098, i32 0, i32 0
  %9035 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1098.c, i8* %9034)
  %9036 = call i64 @sem_diag(%nyx_string* %8988, %nyx_string* %9033, %nyx_string* %9035)
  ret i1 0
}

define internal i1 @check_impl_method_args(
%nyx_string* %type_name.param, %nyx_string* %method.param, { i64, i8* }* %args.param) {
  %type_name.ptr = alloca %nyx_string*
  store %nyx_string* %type_name.param, %nyx_string** %type_name.ptr
  %method.ptr = alloca %nyx_string*
  store %nyx_string* %method.param, %nyx_string** %method.ptr
  %args.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %args.param, { i64, i8* }** %args.ptr
  %9037 = load %nyx_string*, %nyx_string** %type_name.ptr
  %9038 = load %nyx_string*, %nyx_string** %method.ptr
  %9039 = call { i64, i8* }* @lookup_impl_method(%nyx_string* %9037, %nyx_string* %9038)
  %9040 = alloca { i64, i8* }*
  store { i64, i8* }* %9039, { i64, i8* }** %9040
  %9041 = load { i64, i8* }*, { i64, i8* }** %9040
  %9042 = call i64 @nyx_array_length({ i64, i8* }* %9041)
  %9043 = icmp ne i64 %9042, 3
  br i1 %9043, label %then2005, label %else2006
then2005:
  ret i1 1
else2006:
  br label %merge2007
merge2007:
  %9044 = load { i64, i8* }*, { i64, i8* }** %9040
  %9045 = call i64 @nyx_array_get({ i64, i8* }* %9044, i64 0)
  %9046 = inttoptr i64 %9045 to { i64, i8* }*
  %9047 = alloca { i64, i8* }*
  store { i64, i8* }* %9046, { i64, i8* }** %9047
  %9048 = load { i64, i8* }*, { i64, i8* }** %9040
  %9049 = call i64 @nyx_array_get({ i64, i8* }* %9048, i64 2)
  %9050 = inttoptr i64 %9049 to { i64, i8* }*
  %9051 = alloca { i64, i8* }*
  store { i64, i8* }* %9050, { i64, i8* }** %9051
  %9052 = load { i64, i8* }*, { i64, i8* }** %9051
  %9053 = call i64 @nyx_array_length({ i64, i8* }* %9052)
  %9054 = icmp sgt i64 %9053, 0
  br i1 %9054, label %then2008, label %else2009
then2008:
  %9055 = call { i64, i8* }* @nyx_array_new_ptr()
  %9056 = alloca { i64, i8* }*
  store { i64, i8* }* %9055, { i64, i8* }** %9056
  %9057 = call { i64, i8* }* @nyx_array_new_ptr()
  %9058 = alloca { i64, i8* }*
  store { i64, i8* }* %9057, { i64, i8* }** %9058
  %9059 = alloca i64
  store i64 0, i64* %9059
  %9060 = getelementptr [8 x i8], [8 x i8]* @.str1099, i32 0, i32 0
  %9061 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1099.c, i8* %9060)
  %9062 = alloca %nyx_string*
  store %nyx_string* %9061, %nyx_string** %9062
  %9063 = getelementptr [11 x i8], [11 x i8]* @.str1100, i32 0, i32 0
  %9064 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1100.c, i8* %9063)
  %9065 = alloca %nyx_string*
  store %nyx_string* %9064, %nyx_string** %9065
  %9066 = getelementptr [6 x i8], [6 x i8]* @.str1101, i32 0, i32 0
  %9067 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1101.c, i8* %9066)
  %9068 = alloca %nyx_string*
  store %nyx_string* %9067, %nyx_string** %9068
  %9069 = getelementptr [2 x i8], [2 x i8]* @.str1102, i32 0, i32 0
  %9070 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1102.c, i8* %9069)
  %9071 = alloca %nyx_string*
  store %nyx_string* %9070, %nyx_string** %9071
  %9072 = getelementptr [16 x i8], [16 x i8]* @.str1103, i32 0, i32 0
  %9073 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1103.c, i8* %9072)
  %9074 = alloca %nyx_string*
  store %nyx_string* %9073, %nyx_string** %9074
  %9075 = getelementptr [13 x i8], [13 x i8]* @.str1104, i32 0, i32 0
  %9076 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1104.c, i8* %9075)
  %9077 = alloca %nyx_string*
  store %nyx_string* %9076, %nyx_string** %9077
  %9078 = getelementptr [10 x i8], [10 x i8]* @.str1105, i32 0, i32 0
  %9079 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1105.c, i8* %9078)
  %9080 = alloca %nyx_string*
  store %nyx_string* %9079, %nyx_string** %9080
  %9081 = getelementptr [6 x i8], [6 x i8]* @.str1106, i32 0, i32 0
  %9082 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1106.c, i8* %9081)
  %9083 = alloca %nyx_string*
  store %nyx_string* %9082, %nyx_string** %9083
  %9084 = getelementptr [13 x i8], [13 x i8]* @.str1107, i32 0, i32 0
  %9085 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1107.c, i8* %9084)
  %9086 = alloca %nyx_string*
  store %nyx_string* %9085, %nyx_string** %9086
  %9087 = getelementptr [7 x i8], [7 x i8]* @.str1108, i32 0, i32 0
  %9088 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1108.c, i8* %9087)
  %9089 = alloca %nyx_string*
  store %nyx_string* %9088, %nyx_string** %9089
  %9090 = getelementptr [1 x i8], [1 x i8]* @.str1109, i32 0, i32 0
  %9091 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1109.c, i8* %9090)
  %9092 = alloca %nyx_string*
  store %nyx_string* %9091, %nyx_string** %9092
  br label %while_cond2011
while_cond2011:
  %9093 = load i64, i64* %9059
  %9094 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %9095 = call i64 @nyx_array_length({ i64, i8* }* %9094)
  %9096 = icmp slt i64 %9093, %9095
  br i1 %9096, label %while_body2012, label %while_end2013
while_body2012:
  %9097 = load i64, i64* %9059
  %9098 = load { i64, i8* }*, { i64, i8* }** %9047
  %9099 = call i64 @nyx_array_length({ i64, i8* }* %9098)
  %9100 = icmp slt i64 %9097, %9099
  br i1 %9100, label %then2014, label %else2015
then2014:
  %9101 = load { i64, i8* }*, { i64, i8* }** %9047
  %9102 = load i64, i64* %9059
  %9103 = call i64 @nyx_array_get({ i64, i8* }* %9101, i64 %9102)
  %9104 = inttoptr i64 %9103 to { i64, i8* }*
  %9105 = alloca { i64, i8* }*
  store { i64, i8* }* %9104, { i64, i8* }** %9105
  %9106 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %9107 = load i64, i64* %9059
  %9108 = call i64 @nyx_array_get({ i64, i8* }* %9106, i64 %9107)
  %9109 = inttoptr i64 %9108 to { i64, i8* }*
  %9110 = call i64 @nyx_array_get({ i64, i8* }* %9109, i64 0)
  %9111 = call i64 @nyx_array_get({ i64, i8* }* %9109, i64 1)
  %9112 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %9109, i64 2)
  %9113 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %9109, i64 3)
  %9114 = inttoptr i64 %9110 to %nyx_string*
  %9115 = inttoptr i64 %9111 to { i64, i8* }*
  %9116 = alloca %ASTNode
  %9117 = getelementptr inbounds %ASTNode, %ASTNode* %9116, i32 0, i32 0
  store %nyx_string* %9114, %nyx_string** %9117
  %9118 = getelementptr inbounds %ASTNode, %ASTNode* %9116, i32 0, i32 1
  store { i64, i8* }* %9115, { i64, i8* }** %9118
  %9119 = getelementptr inbounds %ASTNode, %ASTNode* %9116, i32 0, i32 2
  store i64 %9112, i64* %9119
  %9120 = getelementptr inbounds %ASTNode, %ASTNode* %9116, i32 0, i32 3
  store i64 %9113, i64* %9120
  %9121 = load %ASTNode, %ASTNode* %9116
  %9122 = alloca %ASTNode
  store %ASTNode %9121, %ASTNode* %9122
  %9123 = load %ASTNode, %ASTNode* %9122
  %9124 = call { i64, i8* }* @ty_of_expr(%ASTNode %9123)
  %9125 = alloca { i64, i8* }*
  store { i64, i8* }* %9124, { i64, i8* }** %9125
  %9126 = load { i64, i8* }*, { i64, i8* }** %9105
  %9127 = call i1 @ty_is_unknown({ i64, i8* }* %9126)
  %9128 = xor i1 %9127, true
  br i1 %9128, label %then2017, label %else2018
then2017:
  %9129 = load { i64, i8* }*, { i64, i8* }** %9125
  %9130 = call i1 @ty_is_unknown({ i64, i8* }* %9129)
  %9131 = xor i1 %9130, true
  br i1 %9131, label %then2020, label %else2021
then2020:
  %9132 = load { i64, i8* }*, { i64, i8* }** %9105
  %9133 = load { i64, i8* }*, { i64, i8* }** %9125
  %9134 = load { i64, i8* }*, { i64, i8* }** %9051
  %9135 = load { i64, i8* }*, { i64, i8* }** %9056
  %9136 = load { i64, i8* }*, { i64, i8* }** %9058
  %9137 = call i1 @unify({ i64, i8* }* %9132, { i64, i8* }* %9133, { i64, i8* }* %9134, { i64, i8* }* %9135, { i64, i8* }* %9136)
  %9138 = xor i1 %9137, true
  br i1 %9138, label %then2023, label %else2024
then2023:
  %9139 = load { i64, i8* }*, { i64, i8* }** %9105
  %9140 = load { i64, i8* }*, { i64, i8* }** %9056
  %9141 = load { i64, i8* }*, { i64, i8* }** %9058
  %9142 = call { i64, i8* }* @subst_apply({ i64, i8* }* %9139, { i64, i8* }* %9140, { i64, i8* }* %9141)
  %9143 = alloca { i64, i8* }*
  store { i64, i8* }* %9142, { i64, i8* }** %9143
  %9144 = load %nyx_string*, %nyx_string** %9062
  %9145 = load %nyx_string*, %nyx_string** %9065
  %9146 = load i64, i64* %9059
  %9147 = add i64 %9146, 1
  %9148 = call %nyx_string* @nyx_string_from_int(i64 %9147)
  %9149 = call %nyx_string* @nyx_string_concat(%nyx_string* %9145, %nyx_string* %9148)
  %9150 = load %nyx_string*, %nyx_string** %9068
  %9151 = call %nyx_string* @nyx_string_concat(%nyx_string* %9149, %nyx_string* %9150)
  %9152 = load %nyx_string*, %nyx_string** %type_name.ptr
  %9153 = call %nyx_string* @nyx_string_concat(%nyx_string* %9151, %nyx_string* %9152)
  %9154 = load %nyx_string*, %nyx_string** %9071
  %9155 = call %nyx_string* @nyx_string_concat(%nyx_string* %9153, %nyx_string* %9154)
  %9156 = load %nyx_string*, %nyx_string** %method.ptr
  %9157 = call %nyx_string* @nyx_string_concat(%nyx_string* %9155, %nyx_string* %9156)
  %9158 = load %nyx_string*, %nyx_string** %9074
  %9159 = call %nyx_string* @nyx_string_concat(%nyx_string* %9157, %nyx_string* %9158)
  %9160 = load { i64, i8* }*, { i64, i8* }** %9143
  %9161 = call %nyx_string* @ty_to_str({ i64, i8* }* %9160)
  %9162 = call %nyx_string* @nyx_string_concat(%nyx_string* %9159, %nyx_string* %9161)
  %9163 = load %nyx_string*, %nyx_string** %9077
  %9164 = call %nyx_string* @nyx_string_concat(%nyx_string* %9162, %nyx_string* %9163)
  %9165 = load { i64, i8* }*, { i64, i8* }** %9125
  %9166 = call %nyx_string* @ty_to_str({ i64, i8* }* %9165)
  %9167 = call %nyx_string* @nyx_string_concat(%nyx_string* %9164, %nyx_string* %9166)
  %9168 = load %nyx_string*, %nyx_string** %9080
  %9169 = load i64, i64* %9059
  %9170 = add i64 %9169, 1
  %9171 = call %nyx_string* @nyx_string_from_int(i64 %9170)
  %9172 = call %nyx_string* @nyx_string_concat(%nyx_string* %9168, %nyx_string* %9171)
  %9173 = load %nyx_string*, %nyx_string** %9083
  %9174 = call %nyx_string* @nyx_string_concat(%nyx_string* %9172, %nyx_string* %9173)
  %9175 = load %nyx_string*, %nyx_string** %type_name.ptr
  %9176 = call %nyx_string* @nyx_string_concat(%nyx_string* %9174, %nyx_string* %9175)
  %9177 = load %nyx_string*, %nyx_string** %9071
  %9178 = call %nyx_string* @nyx_string_concat(%nyx_string* %9176, %nyx_string* %9177)
  %9179 = load %nyx_string*, %nyx_string** %method.ptr
  %9180 = call %nyx_string* @nyx_string_concat(%nyx_string* %9178, %nyx_string* %9179)
  %9181 = load %nyx_string*, %nyx_string** %9086
  %9182 = call %nyx_string* @nyx_string_concat(%nyx_string* %9180, %nyx_string* %9181)
  %9183 = load { i64, i8* }*, { i64, i8* }** %9143
  %9184 = call %nyx_string* @ty_to_str({ i64, i8* }* %9183)
  %9185 = call %nyx_string* @nyx_string_concat(%nyx_string* %9182, %nyx_string* %9184)
  %9186 = load %nyx_string*, %nyx_string** %9089
  %9187 = call %nyx_string* @nyx_string_concat(%nyx_string* %9185, %nyx_string* %9186)
  %9188 = load { i64, i8* }*, { i64, i8* }** %9125
  %9189 = call %nyx_string* @ty_to_str({ i64, i8* }* %9188)
  %9190 = call %nyx_string* @nyx_string_concat(%nyx_string* %9187, %nyx_string* %9189)
  %9191 = call %nyx_string* @msg(%nyx_string* %9167, %nyx_string* %9190)
  %9192 = load %nyx_string*, %nyx_string** %9092
  %9193 = call i64 @sem_diag(%nyx_string* %9144, %nyx_string* %9191, %nyx_string* %9192)
  ret i1 0
else2024:
  br label %merge2025
merge2025:
  br label %merge2022
else2021:
  br label %merge2022
merge2022:
  br label %merge2019
else2018:
  br label %merge2019
merge2019:
  br label %merge2016
else2015:
  br label %merge2016
merge2016:
  %9194 = load i64, i64* %9059
  %9195 = add i64 %9194, 1
  store i64 %9195, i64* %9059
  br label %while_cond2011
while_end2013:
  %9196 = load %nyx_string*, %nyx_string** %type_name.ptr
  %9197 = load %nyx_string*, %nyx_string** %method.ptr
  %9198 = call { i64, i8* }* @lookup_impl_method_bounds(%nyx_string* %9196, %nyx_string* %9197)
  %9199 = alloca { i64, i8* }*
  store { i64, i8* }* %9198, { i64, i8* }** %9199
  %9200 = alloca i64
  store i64 0, i64* %9200
  %9201 = getelementptr [9 x i8], [9 x i8]* @.str1110, i32 0, i32 0
  %9202 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1110.c, i8* %9201)
  %9203 = alloca %nyx_string*
  store %nyx_string* %9202, %nyx_string** %9203
  %9204 = getelementptr [7 x i8], [7 x i8]* @.str1111, i32 0, i32 0
  %9205 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1111.c, i8* %9204)
  %9206 = alloca %nyx_string*
  store %nyx_string* %9205, %nyx_string** %9206
  %9207 = getelementptr [8 x i8], [8 x i8]* @.str1112, i32 0, i32 0
  %9208 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1112.c, i8* %9207)
  %9209 = alloca %nyx_string*
  store %nyx_string* %9208, %nyx_string** %9209
  %9210 = getelementptr [2 x i8], [2 x i8]* @.str1113, i32 0, i32 0
  %9211 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1113.c, i8* %9210)
  %9212 = alloca %nyx_string*
  store %nyx_string* %9211, %nyx_string** %9212
  %9213 = getelementptr [26 x i8], [26 x i8]* @.str1114, i32 0, i32 0
  %9214 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1114.c, i8* %9213)
  %9215 = alloca %nyx_string*
  store %nyx_string* %9214, %nyx_string** %9215
  %9216 = getelementptr [40 x i8], [40 x i8]* @.str1115, i32 0, i32 0
  %9217 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1115.c, i8* %9216)
  %9218 = alloca %nyx_string*
  store %nyx_string* %9217, %nyx_string** %9218
  %9219 = getelementptr [7 x i8], [7 x i8]* @.str1116, i32 0, i32 0
  %9220 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1116.c, i8* %9219)
  %9221 = alloca %nyx_string*
  store %nyx_string* %9220, %nyx_string** %9221
  %9222 = getelementptr [2 x i8], [2 x i8]* @.str1117, i32 0, i32 0
  %9223 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1117.c, i8* %9222)
  %9224 = alloca %nyx_string*
  store %nyx_string* %9223, %nyx_string** %9224
  %9225 = getelementptr [27 x i8], [27 x i8]* @.str1118, i32 0, i32 0
  %9226 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1118.c, i8* %9225)
  %9227 = alloca %nyx_string*
  store %nyx_string* %9226, %nyx_string** %9227
  %9228 = getelementptr [31 x i8], [31 x i8]* @.str1119, i32 0, i32 0
  %9229 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1119.c, i8* %9228)
  %9230 = alloca %nyx_string*
  store %nyx_string* %9229, %nyx_string** %9230
  %9231 = getelementptr [7 x i8], [7 x i8]* @.str1120, i32 0, i32 0
  %9232 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1120.c, i8* %9231)
  %9233 = alloca %nyx_string*
  store %nyx_string* %9232, %nyx_string** %9233
  %9234 = getelementptr [1 x i8], [1 x i8]* @.str1121, i32 0, i32 0
  %9235 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1121.c, i8* %9234)
  %9236 = alloca %nyx_string*
  store %nyx_string* %9235, %nyx_string** %9236
  br label %while_cond2026
while_cond2026:
  %9237 = load i64, i64* %9200
  %9238 = load { i64, i8* }*, { i64, i8* }** %9056
  %9239 = call i64 @nyx_array_length({ i64, i8* }* %9238)
  %9240 = icmp slt i64 %9237, %9239
  br i1 %9240, label %while_body2027, label %while_end2028
while_body2027:
  %9241 = load { i64, i8* }*, { i64, i8* }** %9056
  %9242 = load i64, i64* %9200
  %9243 = call i64 @nyx_array_get({ i64, i8* }* %9241, i64 %9242)
  %9244 = inttoptr i64 %9243 to %nyx_string*
  %9245 = alloca %nyx_string*
  store %nyx_string* %9244, %nyx_string** %9245
  %9246 = load { i64, i8* }*, { i64, i8* }** %9058
  %9247 = load i64, i64* %9200
  %9248 = call i64 @nyx_array_get({ i64, i8* }* %9246, i64 %9247)
  %9249 = inttoptr i64 %9248 to { i64, i8* }*
  %9250 = alloca { i64, i8* }*
  store { i64, i8* }* %9249, { i64, i8* }** %9250
  %9251 = load { i64, i8* }*, { i64, i8* }** %9250
  %9252 = call %nyx_string* @ty_kind({ i64, i8* }* %9251)
  %9253 = alloca %nyx_string*
  store %nyx_string* %9252, %nyx_string** %9253
  %9254 = alloca i1
  store i1 true, i1* %9254
  %9255 = load %nyx_string*, %nyx_string** %9253
  %9256 = load %nyx_string*, %nyx_string** %9203
  %9257 = call i1 @nyx_string_equals(%nyx_string* %9255, %nyx_string* %9256)
  br i1 %9257, label %sc_or_end2030, label %sc_or_rhs2029
sc_or_rhs2029:
  %9258 = load %nyx_string*, %nyx_string** %9253
  %9259 = load %nyx_string*, %nyx_string** %9206
  %9260 = call i1 @nyx_string_equals(%nyx_string* %9258, %nyx_string* %9259)
  store i1 %9260, i1* %9254
  br label %sc_or_end2030
sc_or_end2030:
  %9261 = load i1, i1* %9254
  br i1 %9261, label %then2031, label %else2032
then2031:
  %9262 = load { i64, i8* }*, { i64, i8* }** %9250
  %9263 = call i64 @nyx_array_get({ i64, i8* }* %9262, i64 1)
  %9264 = inttoptr i64 %9263 to %nyx_string*
  %9265 = alloca %nyx_string*
  store %nyx_string* %9264, %nyx_string** %9265
  %9266 = alloca i64
  store i64 0, i64* %9266
  br label %while_cond2034
while_cond2034:
  %9267 = load i64, i64* %9266
  %9268 = load { i64, i8* }*, { i64, i8* }** %9051
  %9269 = call i64 @nyx_array_length({ i64, i8* }* %9268)
  %9270 = icmp slt i64 %9267, %9269
  br i1 %9270, label %while_body2035, label %while_end2036
while_body2035:
  %9271 = load { i64, i8* }*, { i64, i8* }** %9051
  %9272 = load i64, i64* %9266
  %9273 = call i64 @nyx_array_get({ i64, i8* }* %9271, i64 %9272)
  %9274 = inttoptr i64 %9273 to %nyx_string*
  %9275 = alloca %nyx_string*
  store %nyx_string* %9274, %nyx_string** %9275
  %9276 = load %nyx_string*, %nyx_string** %9275
  %9277 = load %nyx_string*, %nyx_string** %9245
  %9278 = call i1 @nyx_string_equals(%nyx_string* %9276, %nyx_string* %9277)
  br i1 %9278, label %then2037, label %else2038
then2037:
  %9279 = load i64, i64* %9266
  %9280 = load { i64, i8* }*, { i64, i8* }** %9199
  %9281 = call i64 @nyx_array_length({ i64, i8* }* %9280)
  %9282 = icmp slt i64 %9279, %9281
  br i1 %9282, label %then2040, label %else2041
then2040:
  %9283 = load { i64, i8* }*, { i64, i8* }** %9199
  %9284 = load i64, i64* %9266
  %9285 = call i64 @nyx_array_get({ i64, i8* }* %9283, i64 %9284)
  %9286 = inttoptr i64 %9285 to { i64, i8* }*
  %9287 = alloca { i64, i8* }*
  store { i64, i8* }* %9286, { i64, i8* }** %9287
  %9288 = alloca i64
  store i64 0, i64* %9288
  br label %while_cond2043
while_cond2043:
  %9289 = load i64, i64* %9288
  %9290 = load { i64, i8* }*, { i64, i8* }** %9287
  %9291 = call i64 @nyx_array_length({ i64, i8* }* %9290)
  %9292 = icmp slt i64 %9289, %9291
  br i1 %9292, label %while_body2044, label %while_end2045
while_body2044:
  %9293 = load { i64, i8* }*, { i64, i8* }** %9287
  %9294 = load i64, i64* %9288
  %9295 = call i64 @nyx_array_get({ i64, i8* }* %9293, i64 %9294)
  %9296 = inttoptr i64 %9295 to %nyx_string*
  %9297 = alloca %nyx_string*
  store %nyx_string* %9296, %nyx_string** %9297
  %9298 = load %nyx_string*, %nyx_string** %9265
  %9299 = load %nyx_string*, %nyx_string** %9297
  %9300 = call i1 @type_implements_trait(%nyx_string* %9298, %nyx_string* %9299)
  %9301 = xor i1 %9300, true
  br i1 %9301, label %then2046, label %else2047
then2046:
  %9302 = load %nyx_string*, %nyx_string** %9265
  %9303 = call i1 @type_has_any_local_impl(%nyx_string* %9302)
  br i1 %9303, label %then2049, label %else2050
then2049:
  %9304 = load %nyx_string*, %nyx_string** %9209
  %9305 = load %nyx_string*, %nyx_string** %9212
  %9306 = load %nyx_string*, %nyx_string** %9265
  %9307 = call %nyx_string* @nyx_string_concat(%nyx_string* %9305, %nyx_string* %9306)
  %9308 = load %nyx_string*, %nyx_string** %9215
  %9309 = call %nyx_string* @nyx_string_concat(%nyx_string* %9307, %nyx_string* %9308)
  %9310 = load %nyx_string*, %nyx_string** %9297
  %9311 = call %nyx_string* @nyx_string_concat(%nyx_string* %9309, %nyx_string* %9310)
  %9312 = load %nyx_string*, %nyx_string** %9218
  %9313 = call %nyx_string* @nyx_string_concat(%nyx_string* %9311, %nyx_string* %9312)
  %9314 = load %nyx_string*, %nyx_string** %9245
  %9315 = call %nyx_string* @nyx_string_concat(%nyx_string* %9313, %nyx_string* %9314)
  %9316 = load %nyx_string*, %nyx_string** %9221
  %9317 = call %nyx_string* @nyx_string_concat(%nyx_string* %9315, %nyx_string* %9316)
  %9318 = load %nyx_string*, %nyx_string** %type_name.ptr
  %9319 = call %nyx_string* @nyx_string_concat(%nyx_string* %9317, %nyx_string* %9318)
  %9320 = load %nyx_string*, %nyx_string** %9224
  %9321 = call %nyx_string* @nyx_string_concat(%nyx_string* %9319, %nyx_string* %9320)
  %9322 = load %nyx_string*, %nyx_string** %method.ptr
  %9323 = call %nyx_string* @nyx_string_concat(%nyx_string* %9321, %nyx_string* %9322)
  %9324 = load %nyx_string*, %nyx_string** %9212
  %9325 = call %nyx_string* @nyx_string_concat(%nyx_string* %9323, %nyx_string* %9324)
  %9326 = load %nyx_string*, %nyx_string** %9212
  %9327 = load %nyx_string*, %nyx_string** %9265
  %9328 = call %nyx_string* @nyx_string_concat(%nyx_string* %9326, %nyx_string* %9327)
  %9329 = load %nyx_string*, %nyx_string** %9227
  %9330 = call %nyx_string* @nyx_string_concat(%nyx_string* %9328, %nyx_string* %9329)
  %9331 = load %nyx_string*, %nyx_string** %9297
  %9332 = call %nyx_string* @nyx_string_concat(%nyx_string* %9330, %nyx_string* %9331)
  %9333 = load %nyx_string*, %nyx_string** %9230
  %9334 = call %nyx_string* @nyx_string_concat(%nyx_string* %9332, %nyx_string* %9333)
  %9335 = load %nyx_string*, %nyx_string** %9245
  %9336 = call %nyx_string* @nyx_string_concat(%nyx_string* %9334, %nyx_string* %9335)
  %9337 = load %nyx_string*, %nyx_string** %9233
  %9338 = call %nyx_string* @nyx_string_concat(%nyx_string* %9336, %nyx_string* %9337)
  %9339 = load %nyx_string*, %nyx_string** %type_name.ptr
  %9340 = call %nyx_string* @nyx_string_concat(%nyx_string* %9338, %nyx_string* %9339)
  %9341 = load %nyx_string*, %nyx_string** %9224
  %9342 = call %nyx_string* @nyx_string_concat(%nyx_string* %9340, %nyx_string* %9341)
  %9343 = load %nyx_string*, %nyx_string** %method.ptr
  %9344 = call %nyx_string* @nyx_string_concat(%nyx_string* %9342, %nyx_string* %9343)
  %9345 = load %nyx_string*, %nyx_string** %9212
  %9346 = call %nyx_string* @nyx_string_concat(%nyx_string* %9344, %nyx_string* %9345)
  %9347 = call %nyx_string* @msg(%nyx_string* %9325, %nyx_string* %9346)
  %9348 = load %nyx_string*, %nyx_string** %9236
  %9349 = call i64 @sem_diag(%nyx_string* %9304, %nyx_string* %9347, %nyx_string* %9348)
  ret i1 0
else2050:
  br label %merge2051
merge2051:
  br label %merge2048
else2047:
  br label %merge2048
merge2048:
  %9350 = load i64, i64* %9288
  %9351 = add i64 %9350, 1
  store i64 %9351, i64* %9288
  br label %while_cond2043
while_end2045:
  br label %merge2042
else2041:
  br label %merge2042
merge2042:
  br label %merge2039
else2038:
  br label %merge2039
merge2039:
  %9352 = load i64, i64* %9266
  %9353 = add i64 %9352, 1
  store i64 %9353, i64* %9266
  br label %while_cond2034
while_end2036:
  br label %merge2033
else2032:
  br label %merge2033
merge2033:
  %9354 = load i64, i64* %9200
  %9355 = add i64 %9354, 1
  store i64 %9355, i64* %9200
  br label %while_cond2026
while_end2028:
  ret i1 1
else2009:
  br label %merge2010
merge2010:
  %9356 = alloca i64
  store i64 0, i64* %9356
  %9357 = getelementptr [10 x i8], [10 x i8]* @.str1122, i32 0, i32 0
  %9358 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1122.c, i8* %9357)
  %9359 = alloca %nyx_string*
  store %nyx_string* %9358, %nyx_string** %9359
  %9360 = getelementptr [8 x i8], [8 x i8]* @.str1123, i32 0, i32 0
  %9361 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1123.c, i8* %9360)
  %9362 = alloca %nyx_string*
  store %nyx_string* %9361, %nyx_string** %9362
  %9363 = getelementptr [11 x i8], [11 x i8]* @.str1124, i32 0, i32 0
  %9364 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1124.c, i8* %9363)
  %9365 = alloca %nyx_string*
  store %nyx_string* %9364, %nyx_string** %9365
  %9366 = getelementptr [6 x i8], [6 x i8]* @.str1125, i32 0, i32 0
  %9367 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1125.c, i8* %9366)
  %9368 = alloca %nyx_string*
  store %nyx_string* %9367, %nyx_string** %9368
  %9369 = getelementptr [2 x i8], [2 x i8]* @.str1126, i32 0, i32 0
  %9370 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1126.c, i8* %9369)
  %9371 = alloca %nyx_string*
  store %nyx_string* %9370, %nyx_string** %9371
  %9372 = getelementptr [16 x i8], [16 x i8]* @.str1127, i32 0, i32 0
  %9373 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1127.c, i8* %9372)
  %9374 = alloca %nyx_string*
  store %nyx_string* %9373, %nyx_string** %9374
  %9375 = getelementptr [13 x i8], [13 x i8]* @.str1128, i32 0, i32 0
  %9376 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1128.c, i8* %9375)
  %9377 = alloca %nyx_string*
  store %nyx_string* %9376, %nyx_string** %9377
  %9378 = getelementptr [10 x i8], [10 x i8]* @.str1129, i32 0, i32 0
  %9379 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1129.c, i8* %9378)
  %9380 = alloca %nyx_string*
  store %nyx_string* %9379, %nyx_string** %9380
  %9381 = getelementptr [6 x i8], [6 x i8]* @.str1130, i32 0, i32 0
  %9382 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1130.c, i8* %9381)
  %9383 = alloca %nyx_string*
  store %nyx_string* %9382, %nyx_string** %9383
  %9384 = getelementptr [13 x i8], [13 x i8]* @.str1131, i32 0, i32 0
  %9385 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1131.c, i8* %9384)
  %9386 = alloca %nyx_string*
  store %nyx_string* %9385, %nyx_string** %9386
  %9387 = getelementptr [7 x i8], [7 x i8]* @.str1132, i32 0, i32 0
  %9388 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1132.c, i8* %9387)
  %9389 = alloca %nyx_string*
  store %nyx_string* %9388, %nyx_string** %9389
  %9390 = getelementptr [1 x i8], [1 x i8]* @.str1133, i32 0, i32 0
  %9391 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1133.c, i8* %9390)
  %9392 = alloca %nyx_string*
  store %nyx_string* %9391, %nyx_string** %9392
  br label %while_cond2052
while_cond2052:
  %9393 = load i64, i64* %9356
  %9394 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %9395 = call i64 @nyx_array_length({ i64, i8* }* %9394)
  %9396 = icmp slt i64 %9393, %9395
  br i1 %9396, label %while_body2053, label %while_end2054
while_body2053:
  %9397 = load i64, i64* %9356
  %9398 = load { i64, i8* }*, { i64, i8* }** %9047
  %9399 = call i64 @nyx_array_length({ i64, i8* }* %9398)
  %9400 = icmp slt i64 %9397, %9399
  br i1 %9400, label %then2055, label %else2056
then2055:
  %9401 = load { i64, i8* }*, { i64, i8* }** %9047
  %9402 = load i64, i64* %9356
  %9403 = call i64 @nyx_array_get({ i64, i8* }* %9401, i64 %9402)
  %9404 = inttoptr i64 %9403 to { i64, i8* }*
  %9405 = alloca { i64, i8* }*
  store { i64, i8* }* %9404, { i64, i8* }** %9405
  %9406 = load { i64, i8* }*, { i64, i8* }** %9405
  %9407 = call %nyx_string* @ty_kind({ i64, i8* }* %9406)
  %9408 = alloca %nyx_string*
  store %nyx_string* %9407, %nyx_string** %9408
  %9409 = load { i64, i8* }*, { i64, i8* }** %9405
  %9410 = call i1 @ty_is_unknown({ i64, i8* }* %9409)
  %9411 = xor i1 %9410, true
  br i1 %9411, label %then2058, label %else2059
then2058:
  %9412 = load %nyx_string*, %nyx_string** %9408
  %9413 = load %nyx_string*, %nyx_string** %9359
  %9414 = call i1 @nyx_string_equals(%nyx_string* %9412, %nyx_string* %9413)
  %9415 = xor i1 %9414, true
  br i1 %9415, label %then2061, label %else2062
then2061:
  %9416 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %9417 = load i64, i64* %9356
  %9418 = call i64 @nyx_array_get({ i64, i8* }* %9416, i64 %9417)
  %9419 = inttoptr i64 %9418 to { i64, i8* }*
  %9420 = call i64 @nyx_array_get({ i64, i8* }* %9419, i64 0)
  %9421 = call i64 @nyx_array_get({ i64, i8* }* %9419, i64 1)
  %9422 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %9419, i64 2)
  %9423 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %9419, i64 3)
  %9424 = inttoptr i64 %9420 to %nyx_string*
  %9425 = inttoptr i64 %9421 to { i64, i8* }*
  %9426 = alloca %ASTNode
  %9427 = getelementptr inbounds %ASTNode, %ASTNode* %9426, i32 0, i32 0
  store %nyx_string* %9424, %nyx_string** %9427
  %9428 = getelementptr inbounds %ASTNode, %ASTNode* %9426, i32 0, i32 1
  store { i64, i8* }* %9425, { i64, i8* }** %9428
  %9429 = getelementptr inbounds %ASTNode, %ASTNode* %9426, i32 0, i32 2
  store i64 %9422, i64* %9429
  %9430 = getelementptr inbounds %ASTNode, %ASTNode* %9426, i32 0, i32 3
  store i64 %9423, i64* %9430
  %9431 = load %ASTNode, %ASTNode* %9426
  %9432 = alloca %ASTNode
  store %ASTNode %9431, %ASTNode* %9432
  %9433 = load %ASTNode, %ASTNode* %9432
  %9434 = call { i64, i8* }* @ty_of_expr(%ASTNode %9433)
  %9435 = alloca { i64, i8* }*
  store { i64, i8* }* %9434, { i64, i8* }** %9435
  %9436 = load { i64, i8* }*, { i64, i8* }** %9435
  %9437 = call i1 @ty_is_unknown({ i64, i8* }* %9436)
  %9438 = xor i1 %9437, true
  br i1 %9438, label %then2064, label %else2065
then2064:
  %9439 = load { i64, i8* }*, { i64, i8* }** %9405
  %9440 = load { i64, i8* }*, { i64, i8* }** %9435
  %9441 = call i1 @ty_eq({ i64, i8* }* %9439, { i64, i8* }* %9440)
  %9442 = xor i1 %9441, true
  br i1 %9442, label %then2067, label %else2068
then2067:
  %9443 = load %nyx_string*, %nyx_string** %9362
  %9444 = load %nyx_string*, %nyx_string** %9365
  %9445 = load i64, i64* %9356
  %9446 = add i64 %9445, 1
  %9447 = call %nyx_string* @nyx_string_from_int(i64 %9446)
  %9448 = call %nyx_string* @nyx_string_concat(%nyx_string* %9444, %nyx_string* %9447)
  %9449 = load %nyx_string*, %nyx_string** %9368
  %9450 = call %nyx_string* @nyx_string_concat(%nyx_string* %9448, %nyx_string* %9449)
  %9451 = load %nyx_string*, %nyx_string** %type_name.ptr
  %9452 = call %nyx_string* @nyx_string_concat(%nyx_string* %9450, %nyx_string* %9451)
  %9453 = load %nyx_string*, %nyx_string** %9371
  %9454 = call %nyx_string* @nyx_string_concat(%nyx_string* %9452, %nyx_string* %9453)
  %9455 = load %nyx_string*, %nyx_string** %method.ptr
  %9456 = call %nyx_string* @nyx_string_concat(%nyx_string* %9454, %nyx_string* %9455)
  %9457 = load %nyx_string*, %nyx_string** %9374
  %9458 = call %nyx_string* @nyx_string_concat(%nyx_string* %9456, %nyx_string* %9457)
  %9459 = load { i64, i8* }*, { i64, i8* }** %9405
  %9460 = call %nyx_string* @ty_to_str({ i64, i8* }* %9459)
  %9461 = call %nyx_string* @nyx_string_concat(%nyx_string* %9458, %nyx_string* %9460)
  %9462 = load %nyx_string*, %nyx_string** %9377
  %9463 = call %nyx_string* @nyx_string_concat(%nyx_string* %9461, %nyx_string* %9462)
  %9464 = load { i64, i8* }*, { i64, i8* }** %9435
  %9465 = call %nyx_string* @ty_to_str({ i64, i8* }* %9464)
  %9466 = call %nyx_string* @nyx_string_concat(%nyx_string* %9463, %nyx_string* %9465)
  %9467 = load %nyx_string*, %nyx_string** %9380
  %9468 = load i64, i64* %9356
  %9469 = add i64 %9468, 1
  %9470 = call %nyx_string* @nyx_string_from_int(i64 %9469)
  %9471 = call %nyx_string* @nyx_string_concat(%nyx_string* %9467, %nyx_string* %9470)
  %9472 = load %nyx_string*, %nyx_string** %9383
  %9473 = call %nyx_string* @nyx_string_concat(%nyx_string* %9471, %nyx_string* %9472)
  %9474 = load %nyx_string*, %nyx_string** %type_name.ptr
  %9475 = call %nyx_string* @nyx_string_concat(%nyx_string* %9473, %nyx_string* %9474)
  %9476 = load %nyx_string*, %nyx_string** %9371
  %9477 = call %nyx_string* @nyx_string_concat(%nyx_string* %9475, %nyx_string* %9476)
  %9478 = load %nyx_string*, %nyx_string** %method.ptr
  %9479 = call %nyx_string* @nyx_string_concat(%nyx_string* %9477, %nyx_string* %9478)
  %9480 = load %nyx_string*, %nyx_string** %9386
  %9481 = call %nyx_string* @nyx_string_concat(%nyx_string* %9479, %nyx_string* %9480)
  %9482 = load { i64, i8* }*, { i64, i8* }** %9405
  %9483 = call %nyx_string* @ty_to_str({ i64, i8* }* %9482)
  %9484 = call %nyx_string* @nyx_string_concat(%nyx_string* %9481, %nyx_string* %9483)
  %9485 = load %nyx_string*, %nyx_string** %9389
  %9486 = call %nyx_string* @nyx_string_concat(%nyx_string* %9484, %nyx_string* %9485)
  %9487 = load { i64, i8* }*, { i64, i8* }** %9435
  %9488 = call %nyx_string* @ty_to_str({ i64, i8* }* %9487)
  %9489 = call %nyx_string* @nyx_string_concat(%nyx_string* %9486, %nyx_string* %9488)
  %9490 = call %nyx_string* @msg(%nyx_string* %9466, %nyx_string* %9489)
  %9491 = load %nyx_string*, %nyx_string** %9392
  %9492 = call i64 @sem_diag(%nyx_string* %9443, %nyx_string* %9490, %nyx_string* %9491)
  ret i1 0
else2068:
  br label %merge2069
merge2069:
  br label %merge2066
else2065:
  br label %merge2066
merge2066:
  br label %merge2063
else2062:
  br label %merge2063
merge2063:
  br label %merge2060
else2059:
  br label %merge2060
merge2060:
  br label %merge2057
else2056:
  br label %merge2057
merge2057:
  %9493 = load i64, i64* %9356
  %9494 = add i64 %9493, 1
  store i64 %9494, i64* %9356
  br label %while_cond2052
while_end2054:
  ret i1 1
}

define internal i1 @validate_field_access(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %9495 = load %ASTNode, %ASTNode* %node.ptr
  %9496 = call %ASTNode @get_node_at(%ASTNode %9495, i64 0)
  %9497 = alloca %ASTNode
  store %ASTNode %9496, %ASTNode* %9497
  %9498 = load %ASTNode, %ASTNode* %9497
  %9499 = call i1 @validate_node(%ASTNode %9498)
  ret i1 %9499
}

define internal i1 @validate_field_assign(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %9500 = load %ASTNode, %ASTNode* %node.ptr
  %9501 = call %ASTNode @get_node_at(%ASTNode %9500, i64 0)
  %9502 = alloca %ASTNode
  store %ASTNode %9501, %ASTNode* %9502
  %9503 = load %ASTNode, %ASTNode* %node.ptr
  %9504 = call %ASTNode @get_node_at(%ASTNode %9503, i64 2)
  %9505 = alloca %ASTNode
  store %ASTNode %9504, %ASTNode* %9505
  %9506 = load %ASTNode, %ASTNode* %9502
  %9507 = call i1 @validate_node(%ASTNode %9506)
  %9508 = xor i1 %9507, true
  br i1 %9508, label %then2070, label %else2071
then2070:
  ret i1 0
else2071:
  br label %merge2072
merge2072:
  %9509 = load %ASTNode, %ASTNode* %9505
  %9510 = call i1 @validate_node(%ASTNode %9509)
  ret i1 %9510
}

define internal { i64, i8* }* @lookup_struct_fields(
%nyx_string* %struct_name.param) {
  %struct_name.ptr = alloca %nyx_string*
  store %nyx_string* %struct_name.param, %nyx_string** %struct_name.ptr
  %9511 = alloca i64
  store i64 0, i64* %9511
  br label %while_cond2073
while_cond2073:
  %9512 = load i64, i64* %9511
  %9513 = load i64, i64* @g_struct_reg_count
  %9514 = icmp slt i64 %9512, %9513
  br i1 %9514, label %while_body2074, label %while_end2075
while_body2074:
  %9515 = load { i64, i8* }*, { i64, i8* }** @g_struct_reg_names
  %9516 = load i64, i64* %9511
  %9517 = call i64 @nyx_array_get({ i64, i8* }* %9515, i64 %9516)
  %9518 = inttoptr i64 %9517 to %nyx_string*
  %9519 = alloca %nyx_string*
  store %nyx_string* %9518, %nyx_string** %9519
  %9520 = load %nyx_string*, %nyx_string** %9519
  %9521 = load %nyx_string*, %nyx_string** %struct_name.ptr
  %9522 = call i1 @nyx_string_equals(%nyx_string* %9520, %nyx_string* %9521)
  br i1 %9522, label %then2076, label %else2077
then2076:
  %9523 = load { i64, i8* }*, { i64, i8* }** @g_struct_reg_fields
  %9524 = load i64, i64* %9511
  %9525 = call i64 @nyx_array_get({ i64, i8* }* %9523, i64 %9524)
  %9526 = inttoptr i64 %9525 to { i64, i8* }*
  %9527 = alloca { i64, i8* }*
  store { i64, i8* }* %9526, { i64, i8* }** %9527
  %9528 = load { i64, i8* }*, { i64, i8* }** %9527
  ret { i64, i8* }* %9528
else2077:
  br label %merge2078
merge2078:
  %9529 = load i64, i64* %9511
  %9530 = add i64 %9529, 1
  store i64 %9530, i64* %9511
  br label %while_cond2073
while_end2075:
  %9531 = call { i64, i8* }* @nyx_array_new_ptr()
  ret { i64, i8* }* %9531
}

define internal i1 @is_struct_registered(
%nyx_string* %struct_name.param) {
  %struct_name.ptr = alloca %nyx_string*
  store %nyx_string* %struct_name.param, %nyx_string** %struct_name.ptr
  %9532 = alloca i64
  store i64 0, i64* %9532
  br label %while_cond2079
while_cond2079:
  %9533 = load i64, i64* %9532
  %9534 = load i64, i64* @g_struct_reg_count
  %9535 = icmp slt i64 %9533, %9534
  br i1 %9535, label %while_body2080, label %while_end2081
while_body2080:
  %9536 = load { i64, i8* }*, { i64, i8* }** @g_struct_reg_names
  %9537 = load i64, i64* %9532
  %9538 = call i64 @nyx_array_get({ i64, i8* }* %9536, i64 %9537)
  %9539 = inttoptr i64 %9538 to %nyx_string*
  %9540 = alloca %nyx_string*
  store %nyx_string* %9539, %nyx_string** %9540
  %9541 = load %nyx_string*, %nyx_string** %9540
  %9542 = load %nyx_string*, %nyx_string** %struct_name.ptr
  %9543 = call i1 @nyx_string_equals(%nyx_string* %9541, %nyx_string* %9542)
  br i1 %9543, label %then2082, label %else2083
then2082:
  ret i1 1
else2083:
  br label %merge2084
merge2084:
  %9544 = load i64, i64* %9532
  %9545 = add i64 %9544, 1
  store i64 %9545, i64* %9532
  br label %while_cond2079
while_end2081:
  ret i1 0
}

define internal { i64, i8* }* @lookup_struct_field_type(
%nyx_string* %struct_name.param, %nyx_string* %field_name.param) {
  %struct_name.ptr = alloca %nyx_string*
  store %nyx_string* %struct_name.param, %nyx_string** %struct_name.ptr
  %field_name.ptr = alloca %nyx_string*
  store %nyx_string* %field_name.param, %nyx_string** %field_name.ptr
  %9546 = alloca i64
  store i64 0, i64* %9546
  br label %while_cond2085
while_cond2085:
  %9547 = load i64, i64* %9546
  %9548 = load i64, i64* @g_struct_reg_count
  %9549 = icmp slt i64 %9547, %9548
  br i1 %9549, label %while_body2086, label %while_end2087
while_body2086:
  %9550 = load { i64, i8* }*, { i64, i8* }** @g_struct_reg_names
  %9551 = load i64, i64* %9546
  %9552 = call i64 @nyx_array_get({ i64, i8* }* %9550, i64 %9551)
  %9553 = inttoptr i64 %9552 to %nyx_string*
  %9554 = alloca %nyx_string*
  store %nyx_string* %9553, %nyx_string** %9554
  %9555 = load %nyx_string*, %nyx_string** %9554
  %9556 = load %nyx_string*, %nyx_string** %struct_name.ptr
  %9557 = call i1 @nyx_string_equals(%nyx_string* %9555, %nyx_string* %9556)
  br i1 %9557, label %then2088, label %else2089
then2088:
  %9558 = load { i64, i8* }*, { i64, i8* }** @g_struct_reg_fields
  %9559 = load i64, i64* %9546
  %9560 = call i64 @nyx_array_get({ i64, i8* }* %9558, i64 %9559)
  %9561 = inttoptr i64 %9560 to { i64, i8* }*
  %9562 = alloca { i64, i8* }*
  store { i64, i8* }* %9561, { i64, i8* }** %9562
  %9563 = load { i64, i8* }*, { i64, i8* }** @g_struct_reg_field_types
  %9564 = load i64, i64* %9546
  %9565 = call i64 @nyx_array_get({ i64, i8* }* %9563, i64 %9564)
  %9566 = inttoptr i64 %9565 to { i64, i8* }*
  %9567 = alloca { i64, i8* }*
  store { i64, i8* }* %9566, { i64, i8* }** %9567
  %9568 = alloca i64
  store i64 0, i64* %9568
  br label %while_cond2091
while_cond2091:
  %9569 = load i64, i64* %9568
  %9570 = load { i64, i8* }*, { i64, i8* }** %9562
  %9571 = call i64 @nyx_array_length({ i64, i8* }* %9570)
  %9572 = icmp slt i64 %9569, %9571
  br i1 %9572, label %while_body2092, label %while_end2093
while_body2092:
  %9573 = load { i64, i8* }*, { i64, i8* }** %9562
  %9574 = load i64, i64* %9568
  %9575 = call i64 @nyx_array_get({ i64, i8* }* %9573, i64 %9574)
  %9576 = inttoptr i64 %9575 to %nyx_string*
  %9577 = alloca %nyx_string*
  store %nyx_string* %9576, %nyx_string** %9577
  %9578 = load %nyx_string*, %nyx_string** %9577
  %9579 = load %nyx_string*, %nyx_string** %field_name.ptr
  %9580 = call i1 @nyx_string_equals(%nyx_string* %9578, %nyx_string* %9579)
  br i1 %9580, label %then2094, label %else2095
then2094:
  %9581 = load i64, i64* %9568
  %9582 = load { i64, i8* }*, { i64, i8* }** %9567
  %9583 = call i64 @nyx_array_length({ i64, i8* }* %9582)
  %9584 = icmp slt i64 %9581, %9583
  br i1 %9584, label %then2097, label %else2098
then2097:
  %9585 = load { i64, i8* }*, { i64, i8* }** %9567
  %9586 = load i64, i64* %9568
  %9587 = call i64 @nyx_array_get({ i64, i8* }* %9585, i64 %9586)
  %9588 = inttoptr i64 %9587 to { i64, i8* }*
  %9589 = alloca { i64, i8* }*
  store { i64, i8* }* %9588, { i64, i8* }** %9589
  %9590 = load { i64, i8* }*, { i64, i8* }** %9589
  ret { i64, i8* }* %9590
else2098:
  br label %merge2099
merge2099:
  %9591 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %9591
else2095:
  br label %merge2096
merge2096:
  %9592 = load i64, i64* %9568
  %9593 = add i64 %9592, 1
  store i64 %9593, i64* %9568
  br label %while_cond2091
while_end2093:
  %9594 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %9594
else2089:
  br label %merge2090
merge2090:
  %9595 = load i64, i64* %9546
  %9596 = add i64 %9595, 1
  store i64 %9596, i64* %9546
  br label %while_cond2085
while_end2087:
  %9597 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %9597
}

define internal i1 @validate_struct_init(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %9598 = load %ASTNode, %ASTNode* %node.ptr
  %9599 = call %nyx_string* @get_string_at(%ASTNode %9598, i64 0)
  %9600 = alloca %nyx_string*
  store %nyx_string* %9599, %nyx_string** %9600
  %9601 = load %ASTNode, %ASTNode* %node.ptr
  %9602 = call { i64, i8* }* @get_array_at(%ASTNode %9601, i64 1)
  %9603 = alloca { i64, i8* }*
  store { i64, i8* }* %9602, { i64, i8* }** %9603
  %9604 = load %nyx_string*, %nyx_string** %9600
  %9605 = call i1 @is_struct_registered(%nyx_string* %9604)
  %9606 = alloca i1
  store i1 %9605, i1* %9606
  %9607 = alloca i64
  store i64 0, i64* %9607
  %9608 = getelementptr [8 x i8], [8 x i8]* @.str1134, i32 0, i32 0
  %9609 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1134.c, i8* %9608)
  %9610 = alloca %nyx_string*
  store %nyx_string* %9609, %nyx_string** %9610
  %9611 = getelementptr [8 x i8], [8 x i8]* @.str1135, i32 0, i32 0
  %9612 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1135.c, i8* %9611)
  %9613 = alloca %nyx_string*
  store %nyx_string* %9612, %nyx_string** %9613
  %9614 = getelementptr [24 x i8], [24 x i8]* @.str1136, i32 0, i32 0
  %9615 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1136.c, i8* %9614)
  %9616 = alloca %nyx_string*
  store %nyx_string* %9615, %nyx_string** %9616
  %9617 = getelementptr [2 x i8], [2 x i8]* @.str1137, i32 0, i32 0
  %9618 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1137.c, i8* %9617)
  %9619 = alloca %nyx_string*
  store %nyx_string* %9618, %nyx_string** %9619
  %9620 = getelementptr [8 x i8], [8 x i8]* @.str1138, i32 0, i32 0
  %9621 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1138.c, i8* %9620)
  %9622 = alloca %nyx_string*
  store %nyx_string* %9621, %nyx_string** %9622
  %9623 = getelementptr [29 x i8], [29 x i8]* @.str1139, i32 0, i32 0
  %9624 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1139.c, i8* %9623)
  %9625 = alloca %nyx_string*
  store %nyx_string* %9624, %nyx_string** %9625
  %9626 = getelementptr [8 x i8], [8 x i8]* @.str1140, i32 0, i32 0
  %9627 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1140.c, i8* %9626)
  %9628 = alloca %nyx_string*
  store %nyx_string* %9627, %nyx_string** %9628
  %9629 = getelementptr [29 x i8], [29 x i8]* @.str1141, i32 0, i32 0
  %9630 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1141.c, i8* %9629)
  %9631 = alloca %nyx_string*
  store %nyx_string* %9630, %nyx_string** %9631
  %9632 = getelementptr [2 x i8], [2 x i8]* @.str1142, i32 0, i32 0
  %9633 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1142.c, i8* %9632)
  %9634 = alloca %nyx_string*
  store %nyx_string* %9633, %nyx_string** %9634
  %9635 = getelementptr [16 x i8], [16 x i8]* @.str1143, i32 0, i32 0
  %9636 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1143.c, i8* %9635)
  %9637 = alloca %nyx_string*
  store %nyx_string* %9636, %nyx_string** %9637
  %9638 = getelementptr [13 x i8], [13 x i8]* @.str1144, i32 0, i32 0
  %9639 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1144.c, i8* %9638)
  %9640 = alloca %nyx_string*
  store %nyx_string* %9639, %nyx_string** %9640
  %9641 = getelementptr [25 x i8], [25 x i8]* @.str1145, i32 0, i32 0
  %9642 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1145.c, i8* %9641)
  %9643 = alloca %nyx_string*
  store %nyx_string* %9642, %nyx_string** %9643
  %9644 = getelementptr [13 x i8], [13 x i8]* @.str1146, i32 0, i32 0
  %9645 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1146.c, i8* %9644)
  %9646 = alloca %nyx_string*
  store %nyx_string* %9645, %nyx_string** %9646
  %9647 = getelementptr [7 x i8], [7 x i8]* @.str1147, i32 0, i32 0
  %9648 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1147.c, i8* %9647)
  %9649 = alloca %nyx_string*
  store %nyx_string* %9648, %nyx_string** %9649
  %9650 = getelementptr [1 x i8], [1 x i8]* @.str1148, i32 0, i32 0
  %9651 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1148.c, i8* %9650)
  %9652 = alloca %nyx_string*
  store %nyx_string* %9651, %nyx_string** %9652
  br label %while_cond2100
while_cond2100:
  %9653 = load i64, i64* %9607
  %9654 = load { i64, i8* }*, { i64, i8* }** %9603
  %9655 = call i64 @nyx_array_length({ i64, i8* }* %9654)
  %9656 = icmp slt i64 %9653, %9655
  br i1 %9656, label %while_body2101, label %while_end2102
while_body2101:
  %9657 = load { i64, i8* }*, { i64, i8* }** %9603
  %9658 = load i64, i64* %9607
  %9659 = call i64 @nyx_array_get({ i64, i8* }* %9657, i64 %9658)
  %9660 = inttoptr i64 %9659 to { i64, i8* }*
  %9661 = alloca { i64, i8* }*
  store { i64, i8* }* %9660, { i64, i8* }** %9661
  %9662 = load { i64, i8* }*, { i64, i8* }** %9661
  %9663 = call i64 @nyx_array_get({ i64, i8* }* %9662, i64 0)
  %9664 = inttoptr i64 %9663 to %nyx_string*
  %9665 = alloca %nyx_string*
  store %nyx_string* %9664, %nyx_string** %9665
  %9666 = load { i64, i8* }*, { i64, i8* }** %9661
  %9667 = call i64 @nyx_array_get({ i64, i8* }* %9666, i64 1)
  %9668 = inttoptr i64 %9667 to { i64, i8* }*
  %9669 = call i64 @nyx_array_get({ i64, i8* }* %9668, i64 0)
  %9670 = call i64 @nyx_array_get({ i64, i8* }* %9668, i64 1)
  %9671 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %9668, i64 2)
  %9672 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %9668, i64 3)
  %9673 = inttoptr i64 %9669 to %nyx_string*
  %9674 = inttoptr i64 %9670 to { i64, i8* }*
  %9675 = alloca %ASTNode
  %9676 = getelementptr inbounds %ASTNode, %ASTNode* %9675, i32 0, i32 0
  store %nyx_string* %9673, %nyx_string** %9676
  %9677 = getelementptr inbounds %ASTNode, %ASTNode* %9675, i32 0, i32 1
  store { i64, i8* }* %9674, { i64, i8* }** %9677
  %9678 = getelementptr inbounds %ASTNode, %ASTNode* %9675, i32 0, i32 2
  store i64 %9671, i64* %9678
  %9679 = getelementptr inbounds %ASTNode, %ASTNode* %9675, i32 0, i32 3
  store i64 %9672, i64* %9679
  %9680 = load %ASTNode, %ASTNode* %9675
  %9681 = alloca %ASTNode
  store %ASTNode %9680, %ASTNode* %9681
  %9682 = load i1, i1* %9606
  br i1 %9682, label %then2103, label %else2104
then2103:
  %9683 = load %nyx_string*, %nyx_string** %9600
  %9684 = call { i64, i8* }* @lookup_struct_fields(%nyx_string* %9683)
  %9685 = alloca { i64, i8* }*
  store { i64, i8* }* %9684, { i64, i8* }** %9685
  %9686 = load { i64, i8* }*, { i64, i8* }** %9685
  %9687 = call i64 @nyx_array_length({ i64, i8* }* %9686)
  %9688 = icmp sgt i64 %9687, 0
  br i1 %9688, label %then2106, label %else2107
then2106:
  %9689 = alloca i64
  store i64 0, i64* %9689
  %9690 = sub i64 0, 1
  %9691 = alloca i64
  store i64 %9690, i64* %9691
  %9692 = alloca i64
  store i64 0, i64* %9692
  br label %while_cond2109
while_cond2109:
  %9693 = load i64, i64* %9692
  %9694 = load { i64, i8* }*, { i64, i8* }** %9685
  %9695 = call i64 @nyx_array_length({ i64, i8* }* %9694)
  %9696 = icmp slt i64 %9693, %9695
  br i1 %9696, label %while_body2110, label %while_end2111
while_body2110:
  %9697 = load { i64, i8* }*, { i64, i8* }** %9685
  %9698 = load i64, i64* %9692
  %9699 = call i64 @nyx_array_get({ i64, i8* }* %9697, i64 %9698)
  %9700 = inttoptr i64 %9699 to %nyx_string*
  %9701 = alloca %nyx_string*
  store %nyx_string* %9700, %nyx_string** %9701
  %9702 = load %nyx_string*, %nyx_string** %9701
  %9703 = load %nyx_string*, %nyx_string** %9665
  %9704 = call i1 @nyx_string_equals(%nyx_string* %9702, %nyx_string* %9703)
  br i1 %9704, label %then2112, label %else2113
then2112:
  store i64 1, i64* %9689
  %9705 = load i64, i64* %9692
  store i64 %9705, i64* %9691
  br label %merge2114
else2113:
  br label %merge2114
merge2114:
  %9706 = load i64, i64* %9692
  %9707 = add i64 %9706, 1
  store i64 %9707, i64* %9692
  br label %while_cond2109
while_end2111:
  %9708 = load i64, i64* %9689
  %9709 = icmp eq i64 %9708, 0
  br i1 %9709, label %then2115, label %else2116
then2115:
  %9710 = load %nyx_string*, %nyx_string** %9665
  %9711 = load { i64, i8* }*, { i64, i8* }** %9685
  %9712 = call %nyx_string* @suggest_similar_name(%nyx_string* %9710, { i64, i8* }* %9711)
  %9713 = alloca %nyx_string*
  store %nyx_string* %9712, %nyx_string** %9713
  %9714 = load %nyx_string*, %nyx_string** %9713
  %9715 = call %nyx_string* @suggest_phrase(%nyx_string* %9714)
  %9716 = alloca %nyx_string*
  store %nyx_string* %9715, %nyx_string** %9716
  %9717 = load %nyx_string*, %nyx_string** %9610
  %9718 = load %nyx_string*, %nyx_string** %9613
  %9719 = load %nyx_string*, %nyx_string** %9665
  %9720 = call %nyx_string* @nyx_string_concat(%nyx_string* %9718, %nyx_string* %9719)
  %9721 = load %nyx_string*, %nyx_string** %9616
  %9722 = call %nyx_string* @nyx_string_concat(%nyx_string* %9720, %nyx_string* %9721)
  %9723 = load %nyx_string*, %nyx_string** %9600
  %9724 = call %nyx_string* @nyx_string_concat(%nyx_string* %9722, %nyx_string* %9723)
  %9725 = load %nyx_string*, %nyx_string** %9619
  %9726 = call %nyx_string* @nyx_string_concat(%nyx_string* %9724, %nyx_string* %9725)
  %9727 = load %nyx_string*, %nyx_string** %9716
  %9728 = call %nyx_string* @nyx_string_concat(%nyx_string* %9726, %nyx_string* %9727)
  %9729 = load %nyx_string*, %nyx_string** %9622
  %9730 = load %nyx_string*, %nyx_string** %9665
  %9731 = call %nyx_string* @nyx_string_concat(%nyx_string* %9729, %nyx_string* %9730)
  %9732 = load %nyx_string*, %nyx_string** %9625
  %9733 = call %nyx_string* @nyx_string_concat(%nyx_string* %9731, %nyx_string* %9732)
  %9734 = load %nyx_string*, %nyx_string** %9600
  %9735 = call %nyx_string* @nyx_string_concat(%nyx_string* %9733, %nyx_string* %9734)
  %9736 = load %nyx_string*, %nyx_string** %9619
  %9737 = call %nyx_string* @nyx_string_concat(%nyx_string* %9735, %nyx_string* %9736)
  %9738 = load %nyx_string*, %nyx_string** %9716
  %9739 = call %nyx_string* @nyx_string_concat(%nyx_string* %9737, %nyx_string* %9738)
  %9740 = call %nyx_string* @msg(%nyx_string* %9728, %nyx_string* %9739)
  %9741 = load %nyx_string*, %nyx_string** %9713
  %9742 = call i64 @sem_diag(%nyx_string* %9717, %nyx_string* %9740, %nyx_string* %9741)
  br label %merge2117
else2116:
  %9743 = load %nyx_string*, %nyx_string** %9600
  %9744 = load %nyx_string*, %nyx_string** %9665
  %9745 = call { i64, i8* }* @lookup_struct_field_type(%nyx_string* %9743, %nyx_string* %9744)
  %9746 = alloca { i64, i8* }*
  store { i64, i8* }* %9745, { i64, i8* }** %9746
  %9747 = load { i64, i8* }*, { i64, i8* }** %9746
  %9748 = call i1 @ty_is_unknown({ i64, i8* }* %9747)
  %9749 = xor i1 %9748, true
  br i1 %9749, label %then2118, label %else2119
then2118:
  %9750 = load %ASTNode, %ASTNode* %9681
  %9751 = call { i64, i8* }* @ty_of_expr(%ASTNode %9750)
  %9752 = alloca { i64, i8* }*
  store { i64, i8* }* %9751, { i64, i8* }** %9752
  %9753 = load { i64, i8* }*, { i64, i8* }** %9752
  %9754 = call i1 @ty_is_unknown({ i64, i8* }* %9753)
  %9755 = xor i1 %9754, true
  br i1 %9755, label %then2121, label %else2122
then2121:
  %9756 = load { i64, i8* }*, { i64, i8* }** %9746
  %9757 = load { i64, i8* }*, { i64, i8* }** %9752
  %9758 = call i1 @ty_eq({ i64, i8* }* %9756, { i64, i8* }* %9757)
  %9759 = xor i1 %9758, true
  br i1 %9759, label %then2124, label %else2125
then2124:
  %9760 = load %nyx_string*, %nyx_string** %9628
  %9761 = load %nyx_string*, %nyx_string** %9631
  %9762 = load %nyx_string*, %nyx_string** %9600
  %9763 = call %nyx_string* @nyx_string_concat(%nyx_string* %9761, %nyx_string* %9762)
  %9764 = load %nyx_string*, %nyx_string** %9634
  %9765 = call %nyx_string* @nyx_string_concat(%nyx_string* %9763, %nyx_string* %9764)
  %9766 = load %nyx_string*, %nyx_string** %9665
  %9767 = call %nyx_string* @nyx_string_concat(%nyx_string* %9765, %nyx_string* %9766)
  %9768 = load %nyx_string*, %nyx_string** %9637
  %9769 = call %nyx_string* @nyx_string_concat(%nyx_string* %9767, %nyx_string* %9768)
  %9770 = load { i64, i8* }*, { i64, i8* }** %9746
  %9771 = call %nyx_string* @ty_to_str({ i64, i8* }* %9770)
  %9772 = call %nyx_string* @nyx_string_concat(%nyx_string* %9769, %nyx_string* %9771)
  %9773 = load %nyx_string*, %nyx_string** %9640
  %9774 = call %nyx_string* @nyx_string_concat(%nyx_string* %9772, %nyx_string* %9773)
  %9775 = load { i64, i8* }*, { i64, i8* }** %9752
  %9776 = call %nyx_string* @ty_to_str({ i64, i8* }* %9775)
  %9777 = call %nyx_string* @nyx_string_concat(%nyx_string* %9774, %nyx_string* %9776)
  %9778 = load %nyx_string*, %nyx_string** %9643
  %9779 = load %nyx_string*, %nyx_string** %9600
  %9780 = call %nyx_string* @nyx_string_concat(%nyx_string* %9778, %nyx_string* %9779)
  %9781 = load %nyx_string*, %nyx_string** %9634
  %9782 = call %nyx_string* @nyx_string_concat(%nyx_string* %9780, %nyx_string* %9781)
  %9783 = load %nyx_string*, %nyx_string** %9665
  %9784 = call %nyx_string* @nyx_string_concat(%nyx_string* %9782, %nyx_string* %9783)
  %9785 = load %nyx_string*, %nyx_string** %9646
  %9786 = call %nyx_string* @nyx_string_concat(%nyx_string* %9784, %nyx_string* %9785)
  %9787 = load { i64, i8* }*, { i64, i8* }** %9746
  %9788 = call %nyx_string* @ty_to_str({ i64, i8* }* %9787)
  %9789 = call %nyx_string* @nyx_string_concat(%nyx_string* %9786, %nyx_string* %9788)
  %9790 = load %nyx_string*, %nyx_string** %9649
  %9791 = call %nyx_string* @nyx_string_concat(%nyx_string* %9789, %nyx_string* %9790)
  %9792 = load { i64, i8* }*, { i64, i8* }** %9752
  %9793 = call %nyx_string* @ty_to_str({ i64, i8* }* %9792)
  %9794 = call %nyx_string* @nyx_string_concat(%nyx_string* %9791, %nyx_string* %9793)
  %9795 = call %nyx_string* @msg(%nyx_string* %9777, %nyx_string* %9794)
  %9796 = load %nyx_string*, %nyx_string** %9652
  %9797 = call i64 @sem_diag(%nyx_string* %9760, %nyx_string* %9795, %nyx_string* %9796)
  br label %merge2126
else2125:
  br label %merge2126
merge2126:
  br label %merge2123
else2122:
  br label %merge2123
merge2123:
  br label %merge2120
else2119:
  br label %merge2120
merge2120:
  br label %merge2117
merge2117:
  br label %merge2108
else2107:
  br label %merge2108
merge2108:
  br label %merge2105
else2104:
  br label %merge2105
merge2105:
  %9798 = load %ASTNode, %ASTNode* %9681
  %9799 = call i1 @validate_node(%ASTNode %9798)
  %9800 = xor i1 %9799, true
  br i1 %9800, label %then2127, label %else2128
then2127:
  ret i1 0
else2128:
  br label %merge2129
merge2129:
  %9801 = load i64, i64* %9607
  %9802 = add i64 %9801, 1
  store i64 %9802, i64* %9607
  br label %while_cond2100
while_end2102:
  ret i1 1
}

define internal i1 @validate_match(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %9803 = load %ASTNode, %ASTNode* %node.ptr
  %9804 = call %ASTNode @get_node_at(%ASTNode %9803, i64 0)
  %9805 = alloca %ASTNode
  store %ASTNode %9804, %ASTNode* %9805
  %9806 = load %ASTNode, %ASTNode* %node.ptr
  %9807 = call { i64, i8* }* @get_array_at(%ASTNode %9806, i64 1)
  %9808 = alloca { i64, i8* }*
  store { i64, i8* }* %9807, { i64, i8* }** %9808
  %9809 = load %ASTNode, %ASTNode* %9805
  %9810 = call i1 @validate_node(%ASTNode %9809)
  %9811 = xor i1 %9810, true
  br i1 %9811, label %then2130, label %else2131
then2130:
  ret i1 0
else2131:
  br label %merge2132
merge2132:
  %9812 = alloca i64
  store i64 0, i64* %9812
  br label %while_cond2133
while_cond2133:
  %9813 = load i64, i64* %9812
  %9814 = load { i64, i8* }*, { i64, i8* }** %9808
  %9815 = call i64 @nyx_array_length({ i64, i8* }* %9814)
  %9816 = icmp slt i64 %9813, %9815
  br i1 %9816, label %while_body2134, label %while_end2135
while_body2134:
  %9817 = load { i64, i8* }*, { i64, i8* }** %9808
  %9818 = load i64, i64* %9812
  %9819 = call i64 @nyx_array_get({ i64, i8* }* %9817, i64 %9818)
  %9820 = inttoptr i64 %9819 to { i64, i8* }*
  %9821 = call i64 @nyx_array_get({ i64, i8* }* %9820, i64 0)
  %9822 = call i64 @nyx_array_get({ i64, i8* }* %9820, i64 1)
  %9823 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %9820, i64 2)
  %9824 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %9820, i64 3)
  %9825 = inttoptr i64 %9821 to %nyx_string*
  %9826 = inttoptr i64 %9822 to { i64, i8* }*
  %9827 = alloca %ASTNode
  %9828 = getelementptr inbounds %ASTNode, %ASTNode* %9827, i32 0, i32 0
  store %nyx_string* %9825, %nyx_string** %9828
  %9829 = getelementptr inbounds %ASTNode, %ASTNode* %9827, i32 0, i32 1
  store { i64, i8* }* %9826, { i64, i8* }** %9829
  %9830 = getelementptr inbounds %ASTNode, %ASTNode* %9827, i32 0, i32 2
  store i64 %9823, i64* %9830
  %9831 = getelementptr inbounds %ASTNode, %ASTNode* %9827, i32 0, i32 3
  store i64 %9824, i64* %9831
  %9832 = load %ASTNode, %ASTNode* %9827
  %9833 = alloca %ASTNode
  store %ASTNode %9832, %ASTNode* %9833
  %9834 = load %ASTNode, %ASTNode* %9833
  %9835 = call i1 @validate_node(%ASTNode %9834)
  %9836 = xor i1 %9835, true
  br i1 %9836, label %then2136, label %else2137
then2136:
  ret i1 0
else2137:
  br label %merge2138
merge2138:
  %9837 = load i64, i64* %9812
  %9838 = add i64 %9837, 1
  store i64 %9838, i64* %9812
  br label %while_cond2133
while_end2135:
  %9839 = alloca i1
  store i1 0, i1* %9839
  %9840 = getelementptr [1 x i8], [1 x i8]* @.str1149, i32 0, i32 0
  %9841 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1149.c, i8* %9840)
  %9842 = alloca %nyx_string*
  store %nyx_string* %9841, %nyx_string** %9842
  %9843 = call { i64, i8* }* @nyx_array_new_ptr()
  %9844 = alloca { i64, i8* }*
  store { i64, i8* }* %9843, { i64, i8* }** %9844
  store i64 0, i64* %9812
  %9845 = getelementptr [9 x i8], [9 x i8]* @.str1150, i32 0, i32 0
  %9846 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1150.c, i8* %9845)
  %9847 = alloca %nyx_string*
  store %nyx_string* %9846, %nyx_string** %9847
  %9848 = getelementptr [19 x i8], [19 x i8]* @.str1151, i32 0, i32 0
  %9849 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1151.c, i8* %9848)
  %9850 = alloca %nyx_string*
  store %nyx_string* %9849, %nyx_string** %9850
  %9851 = getelementptr [15 x i8], [15 x i8]* @.str1152, i32 0, i32 0
  %9852 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1152.c, i8* %9851)
  %9853 = alloca %nyx_string*
  store %nyx_string* %9852, %nyx_string** %9853
  %9854 = getelementptr [21 x i8], [21 x i8]* @.str1153, i32 0, i32 0
  %9855 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1153.c, i8* %9854)
  %9856 = alloca %nyx_string*
  store %nyx_string* %9855, %nyx_string** %9856
  %9857 = getelementptr [14 x i8], [14 x i8]* @.str1154, i32 0, i32 0
  %9858 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1154.c, i8* %9857)
  %9859 = alloca %nyx_string*
  store %nyx_string* %9858, %nyx_string** %9859
  %9860 = getelementptr [1 x i8], [1 x i8]* @.str1155, i32 0, i32 0
  %9861 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1155.c, i8* %9860)
  %9862 = alloca %nyx_string*
  store %nyx_string* %9861, %nyx_string** %9862
  %9863 = getelementptr [6 x i8], [6 x i8]* @.str1156, i32 0, i32 0
  %9864 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1156.c, i8* %9863)
  %9865 = alloca %nyx_string*
  store %nyx_string* %9864, %nyx_string** %9865
  %9866 = getelementptr [11 x i8], [11 x i8]* @.str1157, i32 0, i32 0
  %9867 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1157.c, i8* %9866)
  %9868 = alloca %nyx_string*
  store %nyx_string* %9867, %nyx_string** %9868
  br label %while_cond2139
while_cond2139:
  %9869 = load i64, i64* %9812
  %9870 = load { i64, i8* }*, { i64, i8* }** %9808
  %9871 = call i64 @nyx_array_length({ i64, i8* }* %9870)
  %9872 = icmp slt i64 %9869, %9871
  br i1 %9872, label %while_body2140, label %while_end2141
while_body2140:
  %9873 = load { i64, i8* }*, { i64, i8* }** %9808
  %9874 = load i64, i64* %9812
  %9875 = call i64 @nyx_array_get({ i64, i8* }* %9873, i64 %9874)
  %9876 = inttoptr i64 %9875 to { i64, i8* }*
  %9877 = call i64 @nyx_array_get({ i64, i8* }* %9876, i64 0)
  %9878 = call i64 @nyx_array_get({ i64, i8* }* %9876, i64 1)
  %9879 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %9876, i64 2)
  %9880 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %9876, i64 3)
  %9881 = inttoptr i64 %9877 to %nyx_string*
  %9882 = inttoptr i64 %9878 to { i64, i8* }*
  %9883 = alloca %ASTNode
  %9884 = getelementptr inbounds %ASTNode, %ASTNode* %9883, i32 0, i32 0
  store %nyx_string* %9881, %nyx_string** %9884
  %9885 = getelementptr inbounds %ASTNode, %ASTNode* %9883, i32 0, i32 1
  store { i64, i8* }* %9882, { i64, i8* }** %9885
  %9886 = getelementptr inbounds %ASTNode, %ASTNode* %9883, i32 0, i32 2
  store i64 %9879, i64* %9886
  %9887 = getelementptr inbounds %ASTNode, %ASTNode* %9883, i32 0, i32 3
  store i64 %9880, i64* %9887
  %9888 = load %ASTNode, %ASTNode* %9883
  %9889 = alloca %ASTNode
  store %ASTNode %9888, %ASTNode* %9889
  %9890 = load %ASTNode, %ASTNode* %9889
  %9891 = call %ASTNode @get_node_at(%ASTNode %9890, i64 0)
  %9892 = alloca %ASTNode
  store %ASTNode %9891, %ASTNode* %9892
  %9893 = alloca i1
  store i1 true, i1* %9893
  %9894 = alloca i1
  store i1 true, i1* %9894
  %9895 = alloca i1
  store i1 true, i1* %9895
  %9896 = getelementptr %ASTNode, %ASTNode* %9892, i32 0, i32 0
  %9897 = load %nyx_string*, %nyx_string** %9896
  %9898 = load %nyx_string*, %nyx_string** %9847
  %9899 = call i1 @nyx_string_equals(%nyx_string* %9897, %nyx_string* %9898)
  br i1 %9899, label %sc_or_end2143, label %sc_or_rhs2142
sc_or_rhs2142:
  %9900 = getelementptr %ASTNode, %ASTNode* %9892, i32 0, i32 0
  %9901 = load %nyx_string*, %nyx_string** %9900
  %9902 = load %nyx_string*, %nyx_string** %9850
  %9903 = call i1 @nyx_string_equals(%nyx_string* %9901, %nyx_string* %9902)
  store i1 %9903, i1* %9895
  br label %sc_or_end2143
sc_or_end2143:
  %9904 = load i1, i1* %9895
  br i1 %9904, label %sc_or_end2145, label %sc_or_rhs2144
sc_or_rhs2144:
  %9905 = getelementptr %ASTNode, %ASTNode* %9892, i32 0, i32 0
  %9906 = load %nyx_string*, %nyx_string** %9905
  %9907 = load %nyx_string*, %nyx_string** %9853
  %9908 = call i1 @nyx_string_equals(%nyx_string* %9906, %nyx_string* %9907)
  store i1 %9908, i1* %9894
  br label %sc_or_end2145
sc_or_end2145:
  %9909 = load i1, i1* %9894
  br i1 %9909, label %sc_or_end2147, label %sc_or_rhs2146
sc_or_rhs2146:
  %9910 = getelementptr %ASTNode, %ASTNode* %9892, i32 0, i32 0
  %9911 = load %nyx_string*, %nyx_string** %9910
  %9912 = load %nyx_string*, %nyx_string** %9856
  %9913 = call i1 @nyx_string_equals(%nyx_string* %9911, %nyx_string* %9912)
  store i1 %9913, i1* %9893
  br label %sc_or_end2147
sc_or_end2147:
  %9914 = load i1, i1* %9893
  br i1 %9914, label %then2148, label %else2149
then2148:
  store i1 1, i1* %9839
  br label %merge2150
else2149:
  br label %merge2150
merge2150:
  %9915 = getelementptr %ASTNode, %ASTNode* %9892, i32 0, i32 0
  %9916 = load %nyx_string*, %nyx_string** %9915
  %9917 = load %nyx_string*, %nyx_string** %9859
  %9918 = call i1 @nyx_string_equals(%nyx_string* %9916, %nyx_string* %9917)
  br i1 %9918, label %then2151, label %else2152
then2151:
  %9919 = load %ASTNode, %ASTNode* %9892
  %9920 = call %nyx_string* @get_string_at(%ASTNode %9919, i64 0)
  %9921 = alloca %nyx_string*
  store %nyx_string* %9920, %nyx_string** %9921
  %9922 = load %ASTNode, %ASTNode* %9892
  %9923 = call %nyx_string* @get_string_at(%ASTNode %9922, i64 1)
  %9924 = alloca %nyx_string*
  store %nyx_string* %9923, %nyx_string** %9924
  %9925 = load %nyx_string*, %nyx_string** %9842
  %9926 = load %nyx_string*, %nyx_string** %9862
  %9927 = call i1 @nyx_string_equals(%nyx_string* %9925, %nyx_string* %9926)
  br i1 %9927, label %then2154, label %else2155
then2154:
  %9928 = load %nyx_string*, %nyx_string** %9921
  store %nyx_string* %9928, %nyx_string** %9842
  br label %merge2156
else2155:
  br label %merge2156
merge2156:
  %9929 = alloca i1
  store i1 0, i1* %9929
  %9930 = getelementptr %ASTNode, %ASTNode* %9889, i32 0, i32 1
  %9931 = load { i64, i8* }*, { i64, i8* }** %9930
  %9932 = alloca { i64, i8* }*
  store { i64, i8* }* %9931, { i64, i8* }** %9932
  %9933 = load { i64, i8* }*, { i64, i8* }** %9932
  %9934 = call i64 @nyx_array_length({ i64, i8* }* %9933)
  %9935 = icmp sgt i64 %9934, 2
  br i1 %9935, label %then2157, label %else2158
then2157:
  %9936 = load { i64, i8* }*, { i64, i8* }** %9932
  %9937 = call i64 @nyx_array_get({ i64, i8* }* %9936, i64 2)
  %9938 = inttoptr i64 %9937 to { i64, i8* }*
  %9939 = call i64 @nyx_array_get({ i64, i8* }* %9938, i64 0)
  %9940 = call i64 @nyx_array_get({ i64, i8* }* %9938, i64 1)
  %9941 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %9938, i64 2)
  %9942 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %9938, i64 3)
  %9943 = inttoptr i64 %9939 to %nyx_string*
  %9944 = inttoptr i64 %9940 to { i64, i8* }*
  %9945 = alloca %ASTNode
  %9946 = getelementptr inbounds %ASTNode, %ASTNode* %9945, i32 0, i32 0
  store %nyx_string* %9943, %nyx_string** %9946
  %9947 = getelementptr inbounds %ASTNode, %ASTNode* %9945, i32 0, i32 1
  store { i64, i8* }* %9944, { i64, i8* }** %9947
  %9948 = getelementptr inbounds %ASTNode, %ASTNode* %9945, i32 0, i32 2
  store i64 %9941, i64* %9948
  %9949 = getelementptr inbounds %ASTNode, %ASTNode* %9945, i32 0, i32 3
  store i64 %9942, i64* %9949
  %9950 = load %ASTNode, %ASTNode* %9945
  %9951 = alloca %ASTNode
  store %ASTNode %9950, %ASTNode* %9951
  %9952 = getelementptr %ASTNode, %ASTNode* %9951, i32 0, i32 0
  %9953 = load %nyx_string*, %nyx_string** %9952
  %9954 = load %nyx_string*, %nyx_string** %9865
  %9955 = call i1 @nyx_string_equals(%nyx_string* %9953, %nyx_string* %9954)
  %9956 = xor i1 %9955, true
  br i1 %9956, label %then2160, label %else2161
then2160:
  store i1 1, i1* %9929
  br label %merge2162
else2161:
  br label %merge2162
merge2162:
  br label %merge2159
else2158:
  br label %merge2159
merge2159:
  %9957 = load i1, i1* %9929
  %9958 = xor i1 %9957, true
  br i1 %9958, label %then2163, label %else2164
then2163:
  %9959 = load { i64, i8* }*, { i64, i8* }** %9844
  %9960 = load %nyx_string*, %nyx_string** %9924
  %9961 = ptrtoint %nyx_string* %9960 to i64
  call void @nyx_array_push({ i64, i8* }* %9959, i64 %9961)
  br label %merge2165
else2164:
  br label %merge2165
merge2165:
  br label %merge2153
else2152:
  br label %merge2153
merge2153:
  %9962 = getelementptr %ASTNode, %ASTNode* %9892, i32 0, i32 0
  %9963 = load %nyx_string*, %nyx_string** %9962
  %9964 = load %nyx_string*, %nyx_string** %9868
  %9965 = call i1 @nyx_string_equals(%nyx_string* %9963, %nyx_string* %9964)
  br i1 %9965, label %then2166, label %else2167
then2166:
  %9966 = alloca i1
  store i1 0, i1* %9966
  %9967 = getelementptr %ASTNode, %ASTNode* %9889, i32 0, i32 1
  %9968 = load { i64, i8* }*, { i64, i8* }** %9967
  %9969 = alloca { i64, i8* }*
  store { i64, i8* }* %9968, { i64, i8* }** %9969
  %9970 = load { i64, i8* }*, { i64, i8* }** %9969
  %9971 = call i64 @nyx_array_length({ i64, i8* }* %9970)
  %9972 = icmp sgt i64 %9971, 2
  br i1 %9972, label %then2169, label %else2170
then2169:
  %9973 = load { i64, i8* }*, { i64, i8* }** %9969
  %9974 = call i64 @nyx_array_get({ i64, i8* }* %9973, i64 2)
  %9975 = inttoptr i64 %9974 to { i64, i8* }*
  %9976 = call i64 @nyx_array_get({ i64, i8* }* %9975, i64 0)
  %9977 = call i64 @nyx_array_get({ i64, i8* }* %9975, i64 1)
  %9978 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %9975, i64 2)
  %9979 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %9975, i64 3)
  %9980 = inttoptr i64 %9976 to %nyx_string*
  %9981 = inttoptr i64 %9977 to { i64, i8* }*
  %9982 = alloca %ASTNode
  %9983 = getelementptr inbounds %ASTNode, %ASTNode* %9982, i32 0, i32 0
  store %nyx_string* %9980, %nyx_string** %9983
  %9984 = getelementptr inbounds %ASTNode, %ASTNode* %9982, i32 0, i32 1
  store { i64, i8* }* %9981, { i64, i8* }** %9984
  %9985 = getelementptr inbounds %ASTNode, %ASTNode* %9982, i32 0, i32 2
  store i64 %9978, i64* %9985
  %9986 = getelementptr inbounds %ASTNode, %ASTNode* %9982, i32 0, i32 3
  store i64 %9979, i64* %9986
  %9987 = load %ASTNode, %ASTNode* %9982
  %9988 = alloca %ASTNode
  store %ASTNode %9987, %ASTNode* %9988
  %9989 = getelementptr %ASTNode, %ASTNode* %9988, i32 0, i32 0
  %9990 = load %nyx_string*, %nyx_string** %9989
  %9991 = load %nyx_string*, %nyx_string** %9865
  %9992 = call i1 @nyx_string_equals(%nyx_string* %9990, %nyx_string* %9991)
  %9993 = xor i1 %9992, true
  br i1 %9993, label %then2172, label %else2173
then2172:
  store i1 1, i1* %9966
  br label %merge2174
else2173:
  br label %merge2174
merge2174:
  br label %merge2171
else2170:
  br label %merge2171
merge2171:
  %9994 = load i1, i1* %9966
  %9995 = xor i1 %9994, true
  br i1 %9995, label %then2175, label %else2176
then2175:
  %9996 = getelementptr %ASTNode, %ASTNode* %9892, i32 0, i32 1
  %9997 = load { i64, i8* }*, { i64, i8* }** %9996
  %9998 = alloca { i64, i8* }*
  store { i64, i8* }* %9997, { i64, i8* }** %9998
  %9999 = alloca i64
  store i64 0, i64* %9999
  br label %while_cond2178
while_cond2178:
  %10000 = load i64, i64* %9999
  %10001 = load { i64, i8* }*, { i64, i8* }** %9998
  %10002 = call i64 @nyx_array_length({ i64, i8* }* %10001)
  %10003 = icmp slt i64 %10000, %10002
  br i1 %10003, label %while_body2179, label %while_end2180
while_body2179:
  %10004 = load { i64, i8* }*, { i64, i8* }** %9998
  %10005 = load i64, i64* %9999
  %10006 = call i64 @nyx_array_get({ i64, i8* }* %10004, i64 %10005)
  %10007 = inttoptr i64 %10006 to { i64, i8* }*
  %10008 = call i64 @nyx_array_get({ i64, i8* }* %10007, i64 0)
  %10009 = call i64 @nyx_array_get({ i64, i8* }* %10007, i64 1)
  %10010 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %10007, i64 2)
  %10011 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %10007, i64 3)
  %10012 = inttoptr i64 %10008 to %nyx_string*
  %10013 = inttoptr i64 %10009 to { i64, i8* }*
  %10014 = alloca %ASTNode
  %10015 = getelementptr inbounds %ASTNode, %ASTNode* %10014, i32 0, i32 0
  store %nyx_string* %10012, %nyx_string** %10015
  %10016 = getelementptr inbounds %ASTNode, %ASTNode* %10014, i32 0, i32 1
  store { i64, i8* }* %10013, { i64, i8* }** %10016
  %10017 = getelementptr inbounds %ASTNode, %ASTNode* %10014, i32 0, i32 2
  store i64 %10010, i64* %10017
  %10018 = getelementptr inbounds %ASTNode, %ASTNode* %10014, i32 0, i32 3
  store i64 %10011, i64* %10018
  %10019 = load %ASTNode, %ASTNode* %10014
  %10020 = alloca %ASTNode
  store %ASTNode %10019, %ASTNode* %10020
  %10021 = getelementptr %ASTNode, %ASTNode* %10020, i32 0, i32 0
  %10022 = load %nyx_string*, %nyx_string** %10021
  %10023 = load %nyx_string*, %nyx_string** %9859
  %10024 = call i1 @nyx_string_equals(%nyx_string* %10022, %nyx_string* %10023)
  br i1 %10024, label %then2181, label %else2182
then2181:
  %10025 = load %ASTNode, %ASTNode* %10020
  %10026 = call %nyx_string* @get_string_at(%ASTNode %10025, i64 0)
  %10027 = alloca %nyx_string*
  store %nyx_string* %10026, %nyx_string** %10027
  %10028 = load %ASTNode, %ASTNode* %10020
  %10029 = call %nyx_string* @get_string_at(%ASTNode %10028, i64 1)
  %10030 = alloca %nyx_string*
  store %nyx_string* %10029, %nyx_string** %10030
  %10031 = load %nyx_string*, %nyx_string** %9842
  %10032 = load %nyx_string*, %nyx_string** %9862
  %10033 = call i1 @nyx_string_equals(%nyx_string* %10031, %nyx_string* %10032)
  br i1 %10033, label %then2184, label %else2185
then2184:
  %10034 = load %nyx_string*, %nyx_string** %10027
  store %nyx_string* %10034, %nyx_string** %9842
  br label %merge2186
else2185:
  br label %merge2186
merge2186:
  %10035 = load { i64, i8* }*, { i64, i8* }** %9844
  %10036 = load %nyx_string*, %nyx_string** %10030
  %10037 = ptrtoint %nyx_string* %10036 to i64
  call void @nyx_array_push({ i64, i8* }* %10035, i64 %10037)
  br label %merge2183
else2182:
  br label %merge2183
merge2183:
  %10038 = load i64, i64* %9999
  %10039 = add i64 %10038, 1
  store i64 %10039, i64* %9999
  br label %while_cond2178
while_end2180:
  br label %merge2177
else2176:
  br label %merge2177
merge2177:
  br label %merge2168
else2167:
  br label %merge2168
merge2168:
  %10040 = load i64, i64* %9812
  %10041 = add i64 %10040, 1
  store i64 %10041, i64* %9812
  br label %while_cond2139
while_end2141:
  %10042 = load i1, i1* %9839
  br i1 %10042, label %then2187, label %else2188
then2187:
  ret i1 1
else2188:
  br label %merge2189
merge2189:
  %10043 = load %nyx_string*, %nyx_string** %9842
  %10044 = getelementptr [1 x i8], [1 x i8]* @.str1158, i32 0, i32 0
  %10045 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1158.c, i8* %10044)
  %10046 = call i1 @nyx_string_equals(%nyx_string* %10043, %nyx_string* %10045)
  br i1 %10046, label %then2190, label %else2191
then2190:
  ret i1 1
else2191:
  br label %merge2192
merge2192:
  %10047 = sub i64 0, 1
  %10048 = alloca i64
  store i64 %10047, i64* %10048
  store i64 0, i64* %9812
  br label %while_cond2193
while_cond2193:
  %10049 = load i64, i64* %9812
  %10050 = load i64, i64* @g_enum_reg_count
  %10051 = icmp slt i64 %10049, %10050
  br i1 %10051, label %while_body2194, label %while_end2195
while_body2194:
  %10052 = load { i64, i8* }*, { i64, i8* }** @g_enum_reg_names
  %10053 = load i64, i64* %9812
  %10054 = call i64 @nyx_array_get({ i64, i8* }* %10052, i64 %10053)
  %10055 = inttoptr i64 %10054 to %nyx_string*
  %10056 = alloca %nyx_string*
  store %nyx_string* %10055, %nyx_string** %10056
  %10057 = load %nyx_string*, %nyx_string** %10056
  %10058 = load %nyx_string*, %nyx_string** %9842
  %10059 = call i1 @nyx_string_equals(%nyx_string* %10057, %nyx_string* %10058)
  br i1 %10059, label %then2196, label %else2197
then2196:
  %10060 = load i64, i64* %9812
  store i64 %10060, i64* %10048
  br label %merge2198
else2197:
  br label %merge2198
merge2198:
  %10061 = load i64, i64* %9812
  %10062 = add i64 %10061, 1
  store i64 %10062, i64* %9812
  br label %while_cond2193
while_end2195:
  %10063 = load i64, i64* %10048
  %10064 = sub i64 0, 1
  %10065 = icmp eq i64 %10063, %10064
  br i1 %10065, label %then2199, label %else2200
then2199:
  ret i1 1
else2200:
  br label %merge2201
merge2201:
  %10066 = load { i64, i8* }*, { i64, i8* }** @g_enum_reg_variants
  %10067 = load i64, i64* %10048
  %10068 = call i64 @nyx_array_get({ i64, i8* }* %10066, i64 %10067)
  %10069 = inttoptr i64 %10068 to { i64, i8* }*
  %10070 = alloca { i64, i8* }*
  store { i64, i8* }* %10069, { i64, i8* }** %10070
  %10071 = call { i64, i8* }* @nyx_array_new_ptr()
  %10072 = alloca { i64, i8* }*
  store { i64, i8* }* %10071, { i64, i8* }** %10072
  store i64 0, i64* %9812
  br label %while_cond2202
while_cond2202:
  %10073 = load i64, i64* %9812
  %10074 = load { i64, i8* }*, { i64, i8* }** %10070
  %10075 = call i64 @nyx_array_length({ i64, i8* }* %10074)
  %10076 = icmp slt i64 %10073, %10075
  br i1 %10076, label %while_body2203, label %while_end2204
while_body2203:
  %10077 = load { i64, i8* }*, { i64, i8* }** %10070
  %10078 = load i64, i64* %9812
  %10079 = call i64 @nyx_array_get({ i64, i8* }* %10077, i64 %10078)
  %10080 = inttoptr i64 %10079 to %nyx_string*
  %10081 = alloca %nyx_string*
  store %nyx_string* %10080, %nyx_string** %10081
  %10082 = alloca i1
  store i1 0, i1* %10082
  %10083 = alloca i64
  store i64 0, i64* %10083
  br label %while_cond2205
while_cond2205:
  %10084 = load i64, i64* %10083
  %10085 = load { i64, i8* }*, { i64, i8* }** %9844
  %10086 = call i64 @nyx_array_length({ i64, i8* }* %10085)
  %10087 = icmp slt i64 %10084, %10086
  br i1 %10087, label %while_body2206, label %while_end2207
while_body2206:
  %10088 = load { i64, i8* }*, { i64, i8* }** %9844
  %10089 = load i64, i64* %10083
  %10090 = call i64 @nyx_array_get({ i64, i8* }* %10088, i64 %10089)
  %10091 = inttoptr i64 %10090 to %nyx_string*
  %10092 = alloca %nyx_string*
  store %nyx_string* %10091, %nyx_string** %10092
  %10093 = load %nyx_string*, %nyx_string** %10092
  %10094 = load %nyx_string*, %nyx_string** %10081
  %10095 = call i1 @nyx_string_equals(%nyx_string* %10093, %nyx_string* %10094)
  br i1 %10095, label %then2208, label %else2209
then2208:
  store i1 1, i1* %10082
  br label %merge2210
else2209:
  br label %merge2210
merge2210:
  %10096 = load i64, i64* %10083
  %10097 = add i64 %10096, 1
  store i64 %10097, i64* %10083
  br label %while_cond2205
while_end2207:
  %10098 = load i1, i1* %10082
  %10099 = xor i1 %10098, true
  br i1 %10099, label %then2211, label %else2212
then2211:
  %10100 = load { i64, i8* }*, { i64, i8* }** %10072
  %10101 = load %nyx_string*, %nyx_string** %10081
  %10102 = ptrtoint %nyx_string* %10101 to i64
  call void @nyx_array_push({ i64, i8* }* %10100, i64 %10102)
  br label %merge2213
else2212:
  br label %merge2213
merge2213:
  %10103 = load i64, i64* %9812
  %10104 = add i64 %10103, 1
  store i64 %10104, i64* %9812
  br label %while_cond2202
while_end2204:
  %10105 = load { i64, i8* }*, { i64, i8* }** %10072
  %10106 = call i64 @nyx_array_length({ i64, i8* }* %10105)
  %10107 = icmp sgt i64 %10106, 0
  br i1 %10107, label %then2214, label %else2215
then2214:
  %10108 = getelementptr [28 x i8], [28 x i8]* @.str1159, i32 0, i32 0
  %10109 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1159.c, i8* %10108)
  %10110 = load %nyx_string*, %nyx_string** %9842
  %10111 = call %nyx_string* @nyx_string_concat(%nyx_string* %10109, %nyx_string* %10110)
  %10112 = getelementptr [4 x i8], [4 x i8]* @.str1160, i32 0, i32 0
  %10113 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1160.c, i8* %10112)
  %10114 = call %nyx_string* @nyx_string_concat(%nyx_string* %10111, %nyx_string* %10113)
  %10115 = getelementptr [26 x i8], [26 x i8]* @.str1161, i32 0, i32 0
  %10116 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1161.c, i8* %10115)
  %10117 = load %nyx_string*, %nyx_string** %9842
  %10118 = call %nyx_string* @nyx_string_concat(%nyx_string* %10116, %nyx_string* %10117)
  %10119 = getelementptr [4 x i8], [4 x i8]* @.str1162, i32 0, i32 0
  %10120 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1162.c, i8* %10119)
  %10121 = call %nyx_string* @nyx_string_concat(%nyx_string* %10118, %nyx_string* %10120)
  %10122 = call %nyx_string* @msg(%nyx_string* %10114, %nyx_string* %10121)
  %10123 = alloca %nyx_string*
  store %nyx_string* %10122, %nyx_string** %10123
  %10124 = load { i64, i8* }*, { i64, i8* }** %10072
  %10125 = call i64 @nyx_array_length({ i64, i8* }* %10124)
  %10126 = icmp eq i64 %10125, 1
  br i1 %10126, label %then2217, label %else2218
then2217:
  %10127 = load %nyx_string*, %nyx_string** %10123
  %10128 = getelementptr [6 x i8], [6 x i8]* @.str1163, i32 0, i32 0
  %10129 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1163.c, i8* %10128)
  %10130 = getelementptr [8 x i8], [8 x i8]* @.str1164, i32 0, i32 0
  %10131 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1164.c, i8* %10130)
  %10132 = call %nyx_string* @msg(%nyx_string* %10129, %nyx_string* %10131)
  %10133 = call %nyx_string* @nyx_string_concat(%nyx_string* %10127, %nyx_string* %10132)
  store %nyx_string* %10133, %nyx_string** %10123
  br label %merge2219
else2218:
  %10134 = load %nyx_string*, %nyx_string** %10123
  %10135 = getelementptr [7 x i8], [7 x i8]* @.str1165, i32 0, i32 0
  %10136 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1165.c, i8* %10135)
  %10137 = getelementptr [8 x i8], [8 x i8]* @.str1166, i32 0, i32 0
  %10138 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1166.c, i8* %10137)
  %10139 = call %nyx_string* @msg(%nyx_string* %10136, %nyx_string* %10138)
  %10140 = call %nyx_string* @nyx_string_concat(%nyx_string* %10134, %nyx_string* %10139)
  store %nyx_string* %10140, %nyx_string** %10123
  br label %merge2219
merge2219:
  store i64 0, i64* %9812
  %10141 = getelementptr [2 x i8], [2 x i8]* @.str1167, i32 0, i32 0
  %10142 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1167.c, i8* %10141)
  %10143 = alloca %nyx_string*
  store %nyx_string* %10142, %nyx_string** %10143
  %10144 = getelementptr [2 x i8], [2 x i8]* @.str1168, i32 0, i32 0
  %10145 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1168.c, i8* %10144)
  %10146 = alloca %nyx_string*
  store %nyx_string* %10145, %nyx_string** %10146
  %10147 = getelementptr [2 x i8], [2 x i8]* @.str1169, i32 0, i32 0
  %10148 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1169.c, i8* %10147)
  %10149 = alloca %nyx_string*
  store %nyx_string* %10148, %nyx_string** %10149
  br label %while_cond2220
while_cond2220:
  %10150 = load i64, i64* %9812
  %10151 = load { i64, i8* }*, { i64, i8* }** %10072
  %10152 = call i64 @nyx_array_length({ i64, i8* }* %10151)
  %10153 = icmp slt i64 %10150, %10152
  br i1 %10153, label %while_body2221, label %while_end2222
while_body2221:
  %10154 = load { i64, i8* }*, { i64, i8* }** %10072
  %10155 = load i64, i64* %9812
  %10156 = call i64 @nyx_array_get({ i64, i8* }* %10154, i64 %10155)
  %10157 = inttoptr i64 %10156 to %nyx_string*
  %10158 = alloca %nyx_string*
  store %nyx_string* %10157, %nyx_string** %10158
  %10159 = load i64, i64* %9812
  %10160 = icmp sgt i64 %10159, 0
  br i1 %10160, label %then2223, label %else2224
then2223:
  %10161 = load %nyx_string*, %nyx_string** %10123
  %10162 = load %nyx_string*, %nyx_string** %10143
  %10163 = call %nyx_string* @nyx_string_concat(%nyx_string* %10161, %nyx_string* %10162)
  store %nyx_string* %10163, %nyx_string** %10123
  br label %merge2225
else2224:
  br label %merge2225
merge2225:
  %10164 = load %nyx_string*, %nyx_string** %10123
  %10165 = load %nyx_string*, %nyx_string** %10146
  %10166 = call %nyx_string* @nyx_string_concat(%nyx_string* %10164, %nyx_string* %10165)
  %10167 = load %nyx_string*, %nyx_string** %9842
  %10168 = call %nyx_string* @nyx_string_concat(%nyx_string* %10166, %nyx_string* %10167)
  %10169 = load %nyx_string*, %nyx_string** %10149
  %10170 = call %nyx_string* @nyx_string_concat(%nyx_string* %10168, %nyx_string* %10169)
  %10171 = load %nyx_string*, %nyx_string** %10158
  %10172 = call %nyx_string* @nyx_string_concat(%nyx_string* %10170, %nyx_string* %10171)
  store %nyx_string* %10172, %nyx_string** %10123
  %10173 = load i64, i64* %9812
  %10174 = add i64 %10173, 1
  store i64 %10174, i64* %9812
  br label %while_cond2220
while_end2222:
  %10175 = getelementptr [8 x i8], [8 x i8]* @.str1170, i32 0, i32 0
  %10176 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1170.c, i8* %10175)
  %10177 = load %nyx_string*, %nyx_string** %10123
  %10178 = getelementptr [1 x i8], [1 x i8]* @.str1171, i32 0, i32 0
  %10179 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1171.c, i8* %10178)
  %10180 = call i64 @sem_diag(%nyx_string* %10176, %nyx_string* %10177, %nyx_string* %10179)
  ret i1 0
else2215:
  br label %merge2216
merge2216:
  ret i1 1
}

define internal i1 @validate_match_arm(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %10181 = load %ASTNode, %ASTNode* %node.ptr
  %10182 = call %ASTNode @get_node_at(%ASTNode %10181, i64 0)
  %10183 = alloca %ASTNode
  store %ASTNode %10182, %ASTNode* %10183
  %10184 = load %ASTNode, %ASTNode* %node.ptr
  %10185 = call %ASTNode @get_node_at(%ASTNode %10184, i64 1)
  %10186 = alloca %ASTNode
  store %ASTNode %10185, %ASTNode* %10186
  %10187 = call i64 @scope_push()
  %10188 = getelementptr %ASTNode, %ASTNode* %10183, i32 0, i32 0
  %10189 = load %nyx_string*, %nyx_string** %10188
  %10190 = getelementptr [14 x i8], [14 x i8]* @.str1172, i32 0, i32 0
  %10191 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1172.c, i8* %10190)
  %10192 = call i1 @nyx_string_equals(%nyx_string* %10189, %nyx_string* %10191)
  br i1 %10192, label %then2226, label %else2227
then2226:
  %10193 = load %ASTNode, %ASTNode* %10183
  %10194 = call { i64, i8* }* @get_array_at(%ASTNode %10193, i64 2)
  %10195 = alloca { i64, i8* }*
  store { i64, i8* }* %10194, { i64, i8* }** %10195
  %10196 = alloca i64
  store i64 0, i64* %10196
  %10197 = getelementptr [4 x i8], [4 x i8]* @.str1173, i32 0, i32 0
  %10198 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1173.c, i8* %10197)
  %10199 = alloca %nyx_string*
  store %nyx_string* %10198, %nyx_string** %10199
  br label %while_cond2229
while_cond2229:
  %10200 = load i64, i64* %10196
  %10201 = load { i64, i8* }*, { i64, i8* }** %10195
  %10202 = call i64 @nyx_array_length({ i64, i8* }* %10201)
  %10203 = icmp slt i64 %10200, %10202
  br i1 %10203, label %while_body2230, label %while_end2231
while_body2230:
  %10204 = load { i64, i8* }*, { i64, i8* }** %10195
  %10205 = load i64, i64* %10196
  %10206 = call i64 @nyx_array_get({ i64, i8* }* %10204, i64 %10205)
  %10207 = inttoptr i64 %10206 to %nyx_string*
  %10208 = alloca %nyx_string*
  store %nyx_string* %10207, %nyx_string** %10208
  %10209 = load %nyx_string*, %nyx_string** %10208
  %10210 = load %nyx_string*, %nyx_string** %10199
  %10211 = call i64 @scope_declare(%nyx_string* %10209, %nyx_string* %10210)
  %10212 = load i64, i64* %10196
  %10213 = add i64 %10212, 1
  store i64 %10213, i64* %10196
  br label %while_cond2229
while_end2231:
  br label %merge2228
else2227:
  br label %merge2228
merge2228:
  %10214 = getelementptr %ASTNode, %ASTNode* %10183, i32 0, i32 0
  %10215 = load %nyx_string*, %nyx_string** %10214
  %10216 = getelementptr [19 x i8], [19 x i8]* @.str1174, i32 0, i32 0
  %10217 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1174.c, i8* %10216)
  %10218 = call i1 @nyx_string_equals(%nyx_string* %10215, %nyx_string* %10217)
  br i1 %10218, label %then2232, label %else2233
then2232:
  %10219 = load %ASTNode, %ASTNode* %10183
  %10220 = call %nyx_string* @get_string_at(%ASTNode %10219, i64 0)
  %10221 = alloca %nyx_string*
  store %nyx_string* %10220, %nyx_string** %10221
  %10222 = load %nyx_string*, %nyx_string** %10221
  %10223 = getelementptr [4 x i8], [4 x i8]* @.str1175, i32 0, i32 0
  %10224 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1175.c, i8* %10223)
  %10225 = call i64 @scope_declare(%nyx_string* %10222, %nyx_string* %10224)
  br label %merge2234
else2233:
  br label %merge2234
merge2234:
  %10226 = getelementptr %ASTNode, %ASTNode* %10183, i32 0, i32 0
  %10227 = load %nyx_string*, %nyx_string** %10226
  %10228 = getelementptr [15 x i8], [15 x i8]* @.str1176, i32 0, i32 0
  %10229 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1176.c, i8* %10228)
  %10230 = call i1 @nyx_string_equals(%nyx_string* %10227, %nyx_string* %10229)
  br i1 %10230, label %then2235, label %else2236
then2235:
  %10231 = load %ASTNode, %ASTNode* %10183
  %10232 = call { i64, i8* }* @get_array_at(%ASTNode %10231, i64 1)
  %10233 = alloca { i64, i8* }*
  store { i64, i8* }* %10232, { i64, i8* }** %10233
  %10234 = alloca i64
  store i64 0, i64* %10234
  %10235 = getelementptr [4 x i8], [4 x i8]* @.str1177, i32 0, i32 0
  %10236 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1177.c, i8* %10235)
  %10237 = alloca %nyx_string*
  store %nyx_string* %10236, %nyx_string** %10237
  br label %while_cond2238
while_cond2238:
  %10238 = load i64, i64* %10234
  %10239 = load { i64, i8* }*, { i64, i8* }** %10233
  %10240 = call i64 @nyx_array_length({ i64, i8* }* %10239)
  %10241 = icmp slt i64 %10238, %10240
  br i1 %10241, label %while_body2239, label %while_end2240
while_body2239:
  %10242 = load { i64, i8* }*, { i64, i8* }** %10233
  %10243 = load i64, i64* %10234
  %10244 = call i64 @nyx_array_get({ i64, i8* }* %10242, i64 %10243)
  %10245 = inttoptr i64 %10244 to { i64, i8* }*
  %10246 = alloca { i64, i8* }*
  store { i64, i8* }* %10245, { i64, i8* }** %10246
  %10247 = load { i64, i8* }*, { i64, i8* }** %10246
  %10248 = call i64 @nyx_array_get({ i64, i8* }* %10247, i64 1)
  %10249 = inttoptr i64 %10248 to %nyx_string*
  %10250 = alloca %nyx_string*
  store %nyx_string* %10249, %nyx_string** %10250
  %10251 = load %nyx_string*, %nyx_string** %10250
  %10252 = load %nyx_string*, %nyx_string** %10237
  %10253 = call i64 @scope_declare(%nyx_string* %10251, %nyx_string* %10252)
  %10254 = load i64, i64* %10234
  %10255 = add i64 %10254, 1
  store i64 %10255, i64* %10234
  br label %while_cond2238
while_end2240:
  br label %merge2237
else2236:
  br label %merge2237
merge2237:
  %10256 = getelementptr %ASTNode, %ASTNode* %10183, i32 0, i32 0
  %10257 = load %nyx_string*, %nyx_string** %10256
  %10258 = getelementptr [21 x i8], [21 x i8]* @.str1178, i32 0, i32 0
  %10259 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1178.c, i8* %10258)
  %10260 = call i1 @nyx_string_equals(%nyx_string* %10257, %nyx_string* %10259)
  br i1 %10260, label %then2241, label %else2242
then2241:
  %10261 = load %ASTNode, %ASTNode* %10183
  %10262 = call { i64, i8* }* @get_array_at(%ASTNode %10261, i64 2)
  %10263 = alloca { i64, i8* }*
  store { i64, i8* }* %10262, { i64, i8* }** %10263
  %10264 = alloca i64
  store i64 0, i64* %10264
  %10265 = getelementptr [19 x i8], [19 x i8]* @.str1179, i32 0, i32 0
  %10266 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1179.c, i8* %10265)
  %10267 = alloca %nyx_string*
  store %nyx_string* %10266, %nyx_string** %10267
  %10268 = getelementptr [4 x i8], [4 x i8]* @.str1180, i32 0, i32 0
  %10269 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1180.c, i8* %10268)
  %10270 = alloca %nyx_string*
  store %nyx_string* %10269, %nyx_string** %10270
  %10271 = getelementptr [14 x i8], [14 x i8]* @.str1181, i32 0, i32 0
  %10272 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1181.c, i8* %10271)
  %10273 = alloca %nyx_string*
  store %nyx_string* %10272, %nyx_string** %10273
  br label %while_cond2244
while_cond2244:
  %10274 = load i64, i64* %10264
  %10275 = load { i64, i8* }*, { i64, i8* }** %10263
  %10276 = call i64 @nyx_array_length({ i64, i8* }* %10275)
  %10277 = icmp slt i64 %10274, %10276
  br i1 %10277, label %while_body2245, label %while_end2246
while_body2245:
  %10278 = load { i64, i8* }*, { i64, i8* }** %10263
  %10279 = load i64, i64* %10264
  %10280 = call i64 @nyx_array_get({ i64, i8* }* %10278, i64 %10279)
  %10281 = inttoptr i64 %10280 to { i64, i8* }*
  %10282 = call i64 @nyx_array_get({ i64, i8* }* %10281, i64 0)
  %10283 = call i64 @nyx_array_get({ i64, i8* }* %10281, i64 1)
  %10284 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %10281, i64 2)
  %10285 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %10281, i64 3)
  %10286 = inttoptr i64 %10282 to %nyx_string*
  %10287 = inttoptr i64 %10283 to { i64, i8* }*
  %10288 = alloca %ASTNode
  %10289 = getelementptr inbounds %ASTNode, %ASTNode* %10288, i32 0, i32 0
  store %nyx_string* %10286, %nyx_string** %10289
  %10290 = getelementptr inbounds %ASTNode, %ASTNode* %10288, i32 0, i32 1
  store { i64, i8* }* %10287, { i64, i8* }** %10290
  %10291 = getelementptr inbounds %ASTNode, %ASTNode* %10288, i32 0, i32 2
  store i64 %10284, i64* %10291
  %10292 = getelementptr inbounds %ASTNode, %ASTNode* %10288, i32 0, i32 3
  store i64 %10285, i64* %10292
  %10293 = load %ASTNode, %ASTNode* %10288
  %10294 = alloca %ASTNode
  store %ASTNode %10293, %ASTNode* %10294
  %10295 = getelementptr %ASTNode, %ASTNode* %10294, i32 0, i32 0
  %10296 = load %nyx_string*, %nyx_string** %10295
  %10297 = load %nyx_string*, %nyx_string** %10267
  %10298 = call i1 @nyx_string_equals(%nyx_string* %10296, %nyx_string* %10297)
  br i1 %10298, label %then2247, label %else2248
then2247:
  %10299 = load %ASTNode, %ASTNode* %10294
  %10300 = call %nyx_string* @get_string_at(%ASTNode %10299, i64 0)
  %10301 = alloca %nyx_string*
  store %nyx_string* %10300, %nyx_string** %10301
  %10302 = load %nyx_string*, %nyx_string** %10301
  %10303 = load %nyx_string*, %nyx_string** %10270
  %10304 = call i64 @scope_declare(%nyx_string* %10302, %nyx_string* %10303)
  br label %merge2249
else2248:
  br label %merge2249
merge2249:
  %10305 = getelementptr %ASTNode, %ASTNode* %10294, i32 0, i32 0
  %10306 = load %nyx_string*, %nyx_string** %10305
  %10307 = load %nyx_string*, %nyx_string** %10273
  %10308 = call i1 @nyx_string_equals(%nyx_string* %10306, %nyx_string* %10307)
  br i1 %10308, label %then2250, label %else2251
then2250:
  %10309 = load %ASTNode, %ASTNode* %10294
  %10310 = call { i64, i8* }* @get_array_at(%ASTNode %10309, i64 2)
  %10311 = alloca { i64, i8* }*
  store { i64, i8* }* %10310, { i64, i8* }** %10311
  %10312 = alloca i64
  store i64 0, i64* %10312
  br label %while_cond2253
while_cond2253:
  %10313 = load i64, i64* %10312
  %10314 = load { i64, i8* }*, { i64, i8* }** %10311
  %10315 = call i64 @nyx_array_length({ i64, i8* }* %10314)
  %10316 = icmp slt i64 %10313, %10315
  br i1 %10316, label %while_body2254, label %while_end2255
while_body2254:
  %10317 = load { i64, i8* }*, { i64, i8* }** %10311
  %10318 = load i64, i64* %10312
  %10319 = call i64 @nyx_array_get({ i64, i8* }* %10317, i64 %10318)
  %10320 = inttoptr i64 %10319 to %nyx_string*
  %10321 = alloca %nyx_string*
  store %nyx_string* %10320, %nyx_string** %10321
  %10322 = load %nyx_string*, %nyx_string** %10321
  %10323 = load %nyx_string*, %nyx_string** %10270
  %10324 = call i64 @scope_declare(%nyx_string* %10322, %nyx_string* %10323)
  %10325 = load i64, i64* %10312
  %10326 = add i64 %10325, 1
  store i64 %10326, i64* %10312
  br label %while_cond2253
while_end2255:
  br label %merge2252
else2251:
  br label %merge2252
merge2252:
  %10327 = load i64, i64* %10264
  %10328 = add i64 %10327, 1
  store i64 %10328, i64* %10264
  br label %while_cond2244
while_end2246:
  br label %merge2243
else2242:
  br label %merge2243
merge2243:
  %10329 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %10330 = load { i64, i8* }*, { i64, i8* }** %10329
  %10331 = alloca { i64, i8* }*
  store { i64, i8* }* %10330, { i64, i8* }** %10331
  %10332 = load { i64, i8* }*, { i64, i8* }** %10331
  %10333 = call i64 @nyx_array_length({ i64, i8* }* %10332)
  %10334 = icmp sgt i64 %10333, 2
  br i1 %10334, label %then2256, label %else2257
then2256:
  %10335 = load { i64, i8* }*, { i64, i8* }** %10331
  %10336 = call i64 @nyx_array_get({ i64, i8* }* %10335, i64 2)
  %10337 = inttoptr i64 %10336 to { i64, i8* }*
  %10338 = call i64 @nyx_array_get({ i64, i8* }* %10337, i64 0)
  %10339 = call i64 @nyx_array_get({ i64, i8* }* %10337, i64 1)
  %10340 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %10337, i64 2)
  %10341 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %10337, i64 3)
  %10342 = inttoptr i64 %10338 to %nyx_string*
  %10343 = inttoptr i64 %10339 to { i64, i8* }*
  %10344 = alloca %ASTNode
  %10345 = getelementptr inbounds %ASTNode, %ASTNode* %10344, i32 0, i32 0
  store %nyx_string* %10342, %nyx_string** %10345
  %10346 = getelementptr inbounds %ASTNode, %ASTNode* %10344, i32 0, i32 1
  store { i64, i8* }* %10343, { i64, i8* }** %10346
  %10347 = getelementptr inbounds %ASTNode, %ASTNode* %10344, i32 0, i32 2
  store i64 %10340, i64* %10347
  %10348 = getelementptr inbounds %ASTNode, %ASTNode* %10344, i32 0, i32 3
  store i64 %10341, i64* %10348
  %10349 = load %ASTNode, %ASTNode* %10344
  %10350 = alloca %ASTNode
  store %ASTNode %10349, %ASTNode* %10350
  %10351 = getelementptr %ASTNode, %ASTNode* %10350, i32 0, i32 0
  %10352 = load %nyx_string*, %nyx_string** %10351
  %10353 = getelementptr [6 x i8], [6 x i8]* @.str1182, i32 0, i32 0
  %10354 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1182.c, i8* %10353)
  %10355 = call i1 @nyx_string_equals(%nyx_string* %10352, %nyx_string* %10354)
  %10356 = xor i1 %10355, true
  br i1 %10356, label %then2259, label %else2260
then2259:
  %10357 = load %ASTNode, %ASTNode* %10350
  %10358 = call i1 @validate_node(%ASTNode %10357)
  %10359 = xor i1 %10358, true
  br i1 %10359, label %then2262, label %else2263
then2262:
  %10360 = call i64 @scope_pop()
  ret i1 0
else2263:
  br label %merge2264
merge2264:
  br label %merge2261
else2260:
  br label %merge2261
merge2261:
  br label %merge2258
else2257:
  br label %merge2258
merge2258:
  %10361 = load %ASTNode, %ASTNode* %10186
  %10362 = call i1 @validate_node(%ASTNode %10361)
  %10363 = alloca i1
  store i1 %10362, i1* %10363
  %10364 = call i64 @scope_pop()
  %10365 = load i1, i1* %10363
  ret i1 %10365
}

define internal i1 @validate_impl(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %10366 = load %ASTNode, %ASTNode* %node.ptr
  %10367 = call { i64, i8* }* @get_array_at(%ASTNode %10366, i64 1)
  %10368 = alloca { i64, i8* }*
  store { i64, i8* }* %10367, { i64, i8* }** %10368
  %10369 = alloca i64
  store i64 0, i64* %10369
  br label %while_cond2265
while_cond2265:
  %10370 = load i64, i64* %10369
  %10371 = load { i64, i8* }*, { i64, i8* }** %10368
  %10372 = call i64 @nyx_array_length({ i64, i8* }* %10371)
  %10373 = icmp slt i64 %10370, %10372
  br i1 %10373, label %while_body2266, label %while_end2267
while_body2266:
  %10374 = load { i64, i8* }*, { i64, i8* }** %10368
  %10375 = load i64, i64* %10369
  %10376 = call i64 @nyx_array_get({ i64, i8* }* %10374, i64 %10375)
  %10377 = inttoptr i64 %10376 to { i64, i8* }*
  %10378 = call i64 @nyx_array_get({ i64, i8* }* %10377, i64 0)
  %10379 = call i64 @nyx_array_get({ i64, i8* }* %10377, i64 1)
  %10380 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %10377, i64 2)
  %10381 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %10377, i64 3)
  %10382 = inttoptr i64 %10378 to %nyx_string*
  %10383 = inttoptr i64 %10379 to { i64, i8* }*
  %10384 = alloca %ASTNode
  %10385 = getelementptr inbounds %ASTNode, %ASTNode* %10384, i32 0, i32 0
  store %nyx_string* %10382, %nyx_string** %10385
  %10386 = getelementptr inbounds %ASTNode, %ASTNode* %10384, i32 0, i32 1
  store { i64, i8* }* %10383, { i64, i8* }** %10386
  %10387 = getelementptr inbounds %ASTNode, %ASTNode* %10384, i32 0, i32 2
  store i64 %10380, i64* %10387
  %10388 = getelementptr inbounds %ASTNode, %ASTNode* %10384, i32 0, i32 3
  store i64 %10381, i64* %10388
  %10389 = load %ASTNode, %ASTNode* %10384
  %10390 = alloca %ASTNode
  store %ASTNode %10389, %ASTNode* %10390
  %10391 = load %ASTNode, %ASTNode* %10390
  %10392 = call i1 @validate_node(%ASTNode %10391)
  %10393 = xor i1 %10392, true
  br i1 %10393, label %then2268, label %else2269
then2268:
  ret i1 0
else2269:
  br label %merge2270
merge2270:
  %10394 = load i64, i64* %10369
  %10395 = add i64 %10394, 1
  store i64 %10395, i64* %10369
  br label %while_cond2265
while_end2267:
  ret i1 1
}

define internal i1 @validate_impl_trait(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %10396 = load %ASTNode, %ASTNode* %node.ptr
  %10397 = call { i64, i8* }* @get_array_at(%ASTNode %10396, i64 2)
  %10398 = alloca { i64, i8* }*
  store { i64, i8* }* %10397, { i64, i8* }** %10398
  %10399 = alloca i64
  store i64 0, i64* %10399
  br label %while_cond2271
while_cond2271:
  %10400 = load i64, i64* %10399
  %10401 = load { i64, i8* }*, { i64, i8* }** %10398
  %10402 = call i64 @nyx_array_length({ i64, i8* }* %10401)
  %10403 = icmp slt i64 %10400, %10402
  br i1 %10403, label %while_body2272, label %while_end2273
while_body2272:
  %10404 = load { i64, i8* }*, { i64, i8* }** %10398
  %10405 = load i64, i64* %10399
  %10406 = call i64 @nyx_array_get({ i64, i8* }* %10404, i64 %10405)
  %10407 = inttoptr i64 %10406 to { i64, i8* }*
  %10408 = call i64 @nyx_array_get({ i64, i8* }* %10407, i64 0)
  %10409 = call i64 @nyx_array_get({ i64, i8* }* %10407, i64 1)
  %10410 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %10407, i64 2)
  %10411 = call i64 @nyx_array_get_or_zero({ i64, i8* }* %10407, i64 3)
  %10412 = inttoptr i64 %10408 to %nyx_string*
  %10413 = inttoptr i64 %10409 to { i64, i8* }*
  %10414 = alloca %ASTNode
  %10415 = getelementptr inbounds %ASTNode, %ASTNode* %10414, i32 0, i32 0
  store %nyx_string* %10412, %nyx_string** %10415
  %10416 = getelementptr inbounds %ASTNode, %ASTNode* %10414, i32 0, i32 1
  store { i64, i8* }* %10413, { i64, i8* }** %10416
  %10417 = getelementptr inbounds %ASTNode, %ASTNode* %10414, i32 0, i32 2
  store i64 %10410, i64* %10417
  %10418 = getelementptr inbounds %ASTNode, %ASTNode* %10414, i32 0, i32 3
  store i64 %10411, i64* %10418
  %10419 = load %ASTNode, %ASTNode* %10414
  %10420 = alloca %ASTNode
  store %ASTNode %10419, %ASTNode* %10420
  %10421 = load %ASTNode, %ASTNode* %10420
  %10422 = call i1 @validate_node(%ASTNode %10421)
  %10423 = xor i1 %10422, true
  br i1 %10423, label %then2274, label %else2275
then2274:
  ret i1 0
else2275:
  br label %merge2276
merge2276:
  %10424 = load i64, i64* %10399
  %10425 = add i64 %10424, 1
  store i64 %10425, i64* %10399
  br label %while_cond2271
while_end2273:
  ret i1 1
}

define internal i1 @validate_export(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %10426 = load %ASTNode, %ASTNode* %node.ptr
  %10427 = call %ASTNode @get_node_at(%ASTNode %10426, i64 0)
  %10428 = alloca %ASTNode
  store %ASTNode %10427, %ASTNode* %10428
  %10429 = load %ASTNode, %ASTNode* %10428
  %10430 = call i1 @validate_node(%ASTNode %10429)
  ret i1 %10430
}

define internal i1 @validate_range(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %10431 = load %ASTNode, %ASTNode* %node.ptr
  %10432 = call %ASTNode @get_node_at(%ASTNode %10431, i64 0)
  %10433 = alloca %ASTNode
  store %ASTNode %10432, %ASTNode* %10433
  %10434 = load %ASTNode, %ASTNode* %node.ptr
  %10435 = call %ASTNode @get_node_at(%ASTNode %10434, i64 1)
  %10436 = alloca %ASTNode
  store %ASTNode %10435, %ASTNode* %10436
  %10437 = load %ASTNode, %ASTNode* %10433
  %10438 = call i1 @validate_node(%ASTNode %10437)
  %10439 = xor i1 %10438, true
  br i1 %10439, label %then2277, label %else2278
then2277:
  ret i1 0
else2278:
  br label %merge2279
merge2279:
  %10440 = load %ASTNode, %ASTNode* %10436
  %10441 = call i1 @validate_node(%ASTNode %10440)
  ret i1 %10441
}

define internal i1 @validate_node(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %10442 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 0
  %10443 = load %nyx_string*, %nyx_string** %10442
  %10444 = alloca %nyx_string*
  store %nyx_string* %10443, %nyx_string** %10444
  %10445 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %10446 = load i64, i64* %10445
  %10447 = icmp sgt i64 %10446, 0
  br i1 %10447, label %then2280, label %else2281
then2280:
  %10448 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 2
  %10449 = load i64, i64* %10448
  store i64 %10449, i64* @g_cur_line
  %10450 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 3
  %10451 = load i64, i64* %10450
  store i64 %10451, i64* @g_cur_col
  br label %merge2282
else2281:
  br label %merge2282
merge2282:
  %10452 = load %nyx_string*, %nyx_string** %10444
  %10453 = getelementptr [7 x i8], [7 x i8]* @.str1183, i32 0, i32 0
  %10454 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1183.c, i8* %10453)
  %10455 = call i1 @nyx_string_equals(%nyx_string* %10452, %nyx_string* %10454)
  br i1 %10455, label %then2283, label %else2284
then2283:
  ret i1 1
else2284:
  br label %merge2285
merge2285:
  %10456 = load %nyx_string*, %nyx_string** %10444
  %10457 = getelementptr [10 x i8], [10 x i8]* @.str1184, i32 0, i32 0
  %10458 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1184.c, i8* %10457)
  %10459 = call i1 @nyx_string_equals(%nyx_string* %10456, %nyx_string* %10458)
  br i1 %10459, label %then2286, label %else2287
then2286:
  ret i1 1
else2287:
  br label %merge2288
merge2288:
  %10460 = load %nyx_string*, %nyx_string** %10444
  %10461 = getelementptr [7 x i8], [7 x i8]* @.str1185, i32 0, i32 0
  %10462 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1185.c, i8* %10461)
  %10463 = call i1 @nyx_string_equals(%nyx_string* %10460, %nyx_string* %10462)
  br i1 %10463, label %then2289, label %else2290
then2289:
  ret i1 1
else2290:
  br label %merge2291
merge2291:
  %10464 = load %nyx_string*, %nyx_string** %10444
  %10465 = getelementptr [5 x i8], [5 x i8]* @.str1186, i32 0, i32 0
  %10466 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1186.c, i8* %10465)
  %10467 = call i1 @nyx_string_equals(%nyx_string* %10464, %nyx_string* %10466)
  br i1 %10467, label %then2292, label %else2293
then2292:
  ret i1 1
else2293:
  br label %merge2294
merge2294:
  %10468 = load %nyx_string*, %nyx_string** %10444
  %10469 = getelementptr [5 x i8], [5 x i8]* @.str1187, i32 0, i32 0
  %10470 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1187.c, i8* %10469)
  %10471 = call i1 @nyx_string_equals(%nyx_string* %10468, %nyx_string* %10470)
  br i1 %10471, label %then2295, label %else2296
then2295:
  ret i1 1
else2296:
  br label %merge2297
merge2297:
  %10472 = load %nyx_string*, %nyx_string** %10444
  %10473 = getelementptr [11 x i8], [11 x i8]* @.str1188, i32 0, i32 0
  %10474 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1188.c, i8* %10473)
  %10475 = call i1 @nyx_string_equals(%nyx_string* %10472, %nyx_string* %10474)
  br i1 %10475, label %then2298, label %else2299
then2298:
  %10476 = load %ASTNode, %ASTNode* %node.ptr
  %10477 = call i1 @validate_identifier(%ASTNode %10476)
  ret i1 %10477
else2299:
  br label %merge2300
merge2300:
  %10478 = load %nyx_string*, %nyx_string** %10444
  %10479 = getelementptr [6 x i8], [6 x i8]* @.str1189, i32 0, i32 0
  %10480 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1189.c, i8* %10479)
  %10481 = call i1 @nyx_string_equals(%nyx_string* %10478, %nyx_string* %10480)
  br i1 %10481, label %then2301, label %else2302
then2301:
  ret i1 1
else2302:
  br label %merge2303
merge2303:
  %10482 = load %nyx_string*, %nyx_string** %10444
  %10483 = getelementptr [6 x i8], [6 x i8]* @.str1190, i32 0, i32 0
  %10484 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1190.c, i8* %10483)
  %10485 = call i1 @nyx_string_equals(%nyx_string* %10482, %nyx_string* %10484)
  br i1 %10485, label %then2304, label %else2305
then2304:
  ret i1 1
else2305:
  br label %merge2306
merge2306:
  %10486 = load %nyx_string*, %nyx_string** %10444
  %10487 = getelementptr [9 x i8], [9 x i8]* @.str1191, i32 0, i32 0
  %10488 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1191.c, i8* %10487)
  %10489 = call i1 @nyx_string_equals(%nyx_string* %10486, %nyx_string* %10488)
  br i1 %10489, label %then2307, label %else2308
then2307:
  ret i1 1
else2308:
  br label %merge2309
merge2309:
  %10490 = load %nyx_string*, %nyx_string** %10444
  %10491 = getelementptr [6 x i8], [6 x i8]* @.str1192, i32 0, i32 0
  %10492 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1192.c, i8* %10491)
  %10493 = call i1 @nyx_string_equals(%nyx_string* %10490, %nyx_string* %10492)
  br i1 %10493, label %then2310, label %else2311
then2310:
  %10494 = load %ASTNode, %ASTNode* %node.ptr
  %10495 = call i1 @validate_block(%ASTNode %10494)
  ret i1 %10495
else2311:
  br label %merge2312
merge2312:
  %10496 = load %nyx_string*, %nyx_string** %10444
  %10497 = getelementptr [3 x i8], [3 x i8]* @.str1193, i32 0, i32 0
  %10498 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1193.c, i8* %10497)
  %10499 = call i1 @nyx_string_equals(%nyx_string* %10496, %nyx_string* %10498)
  br i1 %10499, label %then2313, label %else2314
then2313:
  %10500 = load %ASTNode, %ASTNode* %node.ptr
  %10501 = call i1 @validate_if(%ASTNode %10500)
  ret i1 %10501
else2314:
  br label %merge2315
merge2315:
  %10502 = load %nyx_string*, %nyx_string** %10444
  %10503 = getelementptr [6 x i8], [6 x i8]* @.str1194, i32 0, i32 0
  %10504 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1194.c, i8* %10503)
  %10505 = call i1 @nyx_string_equals(%nyx_string* %10502, %nyx_string* %10504)
  br i1 %10505, label %then2316, label %else2317
then2316:
  %10506 = load %ASTNode, %ASTNode* %node.ptr
  %10507 = call i1 @validate_while(%ASTNode %10506)
  ret i1 %10507
else2317:
  br label %merge2318
merge2318:
  %10508 = load %nyx_string*, %nyx_string** %10444
  %10509 = getelementptr [4 x i8], [4 x i8]* @.str1195, i32 0, i32 0
  %10510 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1195.c, i8* %10509)
  %10511 = call i1 @nyx_string_equals(%nyx_string* %10508, %nyx_string* %10510)
  br i1 %10511, label %then2319, label %else2320
then2319:
  %10512 = load %ASTNode, %ASTNode* %node.ptr
  %10513 = call i1 @validate_for(%ASTNode %10512)
  ret i1 %10513
else2320:
  br label %merge2321
merge2321:
  %10514 = load %nyx_string*, %nyx_string** %10444
  %10515 = getelementptr [7 x i8], [7 x i8]* @.str1196, i32 0, i32 0
  %10516 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1196.c, i8* %10515)
  %10517 = call i1 @nyx_string_equals(%nyx_string* %10514, %nyx_string* %10516)
  br i1 %10517, label %then2322, label %else2323
then2322:
  %10518 = load %ASTNode, %ASTNode* %node.ptr
  %10519 = call i1 @validate_return(%ASTNode %10518)
  ret i1 %10519
else2323:
  br label %merge2324
merge2324:
  %10520 = load %nyx_string*, %nyx_string** %10444
  %10521 = getelementptr [6 x i8], [6 x i8]* @.str1197, i32 0, i32 0
  %10522 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1197.c, i8* %10521)
  %10523 = call i1 @nyx_string_equals(%nyx_string* %10520, %nyx_string* %10522)
  br i1 %10523, label %then2325, label %else2326
then2325:
  %10524 = load %ASTNode, %ASTNode* %node.ptr
  %10525 = call i1 @validate_break(%ASTNode %10524)
  ret i1 %10525
else2326:
  br label %merge2327
merge2327:
  %10526 = load %nyx_string*, %nyx_string** %10444
  %10527 = getelementptr [9 x i8], [9 x i8]* @.str1198, i32 0, i32 0
  %10528 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1198.c, i8* %10527)
  %10529 = call i1 @nyx_string_equals(%nyx_string* %10526, %nyx_string* %10528)
  br i1 %10529, label %then2328, label %else2329
then2328:
  %10530 = load %ASTNode, %ASTNode* %node.ptr
  %10531 = call i1 @validate_continue(%ASTNode %10530)
  ret i1 %10531
else2329:
  br label %merge2330
merge2330:
  %10532 = load %nyx_string*, %nyx_string** %10444
  %10533 = getelementptr [4 x i8], [4 x i8]* @.str1199, i32 0, i32 0
  %10534 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1199.c, i8* %10533)
  %10535 = call i1 @nyx_string_equals(%nyx_string* %10532, %nyx_string* %10534)
  br i1 %10535, label %then2331, label %else2332
then2331:
  %10536 = load %ASTNode, %ASTNode* %node.ptr
  %10537 = call i1 @validate_let(%ASTNode %10536)
  ret i1 %10537
else2332:
  br label %merge2333
merge2333:
  %10538 = load %nyx_string*, %nyx_string** %10444
  %10539 = getelementptr [6 x i8], [6 x i8]* @.str1200, i32 0, i32 0
  %10540 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1200.c, i8* %10539)
  %10541 = call i1 @nyx_string_equals(%nyx_string* %10538, %nyx_string* %10540)
  br i1 %10541, label %then2334, label %else2335
then2334:
  %10542 = load %ASTNode, %ASTNode* %node.ptr
  %10543 = call i1 @validate_const(%ASTNode %10542)
  ret i1 %10543
else2335:
  br label %merge2336
merge2336:
  %10544 = load %nyx_string*, %nyx_string** %10444
  %10545 = getelementptr [9 x i8], [9 x i8]* @.str1201, i32 0, i32 0
  %10546 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1201.c, i8* %10545)
  %10547 = call i1 @nyx_string_equals(%nyx_string* %10544, %nyx_string* %10546)
  br i1 %10547, label %then2337, label %else2338
then2337:
  %10548 = load %ASTNode, %ASTNode* %node.ptr
  %10549 = call i1 @validate_function(%ASTNode %10548)
  ret i1 %10549
else2338:
  br label %merge2339
merge2339:
  %10550 = load %nyx_string*, %nyx_string** %10444
  %10551 = getelementptr [9 x i8], [9 x i8]* @.str1202, i32 0, i32 0
  %10552 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1202.c, i8* %10551)
  %10553 = call i1 @nyx_string_equals(%nyx_string* %10550, %nyx_string* %10552)
  br i1 %10553, label %then2340, label %else2341
then2340:
  %10554 = load %ASTNode, %ASTNode* %node.ptr
  %10555 = call i1 @validate_function(%ASTNode %10554)
  ret i1 %10555
else2341:
  br label %merge2342
merge2342:
  %10556 = load %nyx_string*, %nyx_string** %10444
  %10557 = getelementptr [11 x i8], [11 x i8]* @.str1203, i32 0, i32 0
  %10558 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1203.c, i8* %10557)
  %10559 = call i1 @nyx_string_equals(%nyx_string* %10556, %nyx_string* %10558)
  br i1 %10559, label %then2343, label %else2344
then2343:
  ret i1 1
else2344:
  br label %merge2345
merge2345:
  %10560 = load %nyx_string*, %nyx_string** %10444
  %10561 = getelementptr [7 x i8], [7 x i8]* @.str1204, i32 0, i32 0
  %10562 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1204.c, i8* %10561)
  %10563 = call i1 @nyx_string_equals(%nyx_string* %10560, %nyx_string* %10562)
  br i1 %10563, label %then2346, label %else2347
then2346:
  ret i1 1
else2347:
  br label %merge2348
merge2348:
  %10564 = load %nyx_string*, %nyx_string** %10444
  %10565 = getelementptr [9 x i8], [9 x i8]* @.str1205, i32 0, i32 0
  %10566 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1205.c, i8* %10565)
  %10567 = call i1 @nyx_string_equals(%nyx_string* %10564, %nyx_string* %10566)
  br i1 %10567, label %then2349, label %else2350
then2349:
  ret i1 1
else2350:
  br label %merge2351
merge2351:
  %10568 = load %nyx_string*, %nyx_string** %10444
  %10569 = getelementptr [5 x i8], [5 x i8]* @.str1206, i32 0, i32 0
  %10570 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1206.c, i8* %10569)
  %10571 = call i1 @nyx_string_equals(%nyx_string* %10568, %nyx_string* %10570)
  br i1 %10571, label %then2352, label %else2353
then2352:
  %10572 = load %ASTNode, %ASTNode* %node.ptr
  %10573 = call i1 @validate_impl(%ASTNode %10572)
  ret i1 %10573
else2353:
  br label %merge2354
merge2354:
  %10574 = load %nyx_string*, %nyx_string** %10444
  %10575 = getelementptr [10 x i8], [10 x i8]* @.str1207, i32 0, i32 0
  %10576 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1207.c, i8* %10575)
  %10577 = call i1 @nyx_string_equals(%nyx_string* %10574, %nyx_string* %10576)
  br i1 %10577, label %then2355, label %else2356
then2355:
  ret i1 1
else2356:
  br label %merge2357
merge2357:
  %10578 = load %nyx_string*, %nyx_string** %10444
  %10579 = getelementptr [11 x i8], [11 x i8]* @.str1208, i32 0, i32 0
  %10580 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1208.c, i8* %10579)
  %10581 = call i1 @nyx_string_equals(%nyx_string* %10578, %nyx_string* %10580)
  br i1 %10581, label %then2358, label %else2359
then2358:
  %10582 = load %ASTNode, %ASTNode* %node.ptr
  %10583 = call i1 @validate_impl_trait(%ASTNode %10582)
  ret i1 %10583
else2359:
  br label %merge2360
merge2360:
  %10584 = load %nyx_string*, %nyx_string** %10444
  %10585 = getelementptr [7 x i8], [7 x i8]* @.str1209, i32 0, i32 0
  %10586 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1209.c, i8* %10585)
  %10587 = call i1 @nyx_string_equals(%nyx_string* %10584, %nyx_string* %10586)
  br i1 %10587, label %then2361, label %else2362
then2361:
  %10588 = load %ASTNode, %ASTNode* %node.ptr
  %10589 = call i1 @validate_export(%ASTNode %10588)
  ret i1 %10589
else2362:
  br label %merge2363
merge2363:
  %10590 = load %nyx_string*, %nyx_string** %10444
  %10591 = getelementptr [7 x i8], [7 x i8]* @.str1210, i32 0, i32 0
  %10592 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1210.c, i8* %10591)
  %10593 = call i1 @nyx_string_equals(%nyx_string* %10590, %nyx_string* %10592)
  br i1 %10593, label %then2364, label %else2365
then2364:
  ret i1 1
else2365:
  br label %merge2366
merge2366:
  %10594 = load %nyx_string*, %nyx_string** %10444
  %10595 = getelementptr [14 x i8], [14 x i8]* @.str1211, i32 0, i32 0
  %10596 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1211.c, i8* %10595)
  %10597 = call i1 @nyx_string_equals(%nyx_string* %10594, %nyx_string* %10596)
  br i1 %10597, label %then2367, label %else2368
then2367:
  ret i1 1
else2368:
  br label %merge2369
merge2369:
  %10598 = load %nyx_string*, %nyx_string** %10444
  %10599 = getelementptr [12 x i8], [12 x i8]* @.str1212, i32 0, i32 0
  %10600 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1212.c, i8* %10599)
  %10601 = call i1 @nyx_string_equals(%nyx_string* %10598, %nyx_string* %10600)
  br i1 %10601, label %then2370, label %else2371
then2370:
  ret i1 1
else2371:
  br label %merge2372
merge2372:
  %10602 = load %nyx_string*, %nyx_string** %10444
  %10603 = getelementptr [11 x i8], [11 x i8]* @.str1213, i32 0, i32 0
  %10604 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1213.c, i8* %10603)
  %10605 = call i1 @nyx_string_equals(%nyx_string* %10602, %nyx_string* %10604)
  br i1 %10605, label %then2373, label %else2374
then2373:
  ret i1 1
else2374:
  br label %merge2375
merge2375:
  %10606 = load %nyx_string*, %nyx_string** %10444
  %10607 = getelementptr [10 x i8], [10 x i8]* @.str1214, i32 0, i32 0
  %10608 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1214.c, i8* %10607)
  %10609 = call i1 @nyx_string_equals(%nyx_string* %10606, %nyx_string* %10608)
  br i1 %10609, label %then2376, label %else2377
then2376:
  ret i1 1
else2377:
  br label %merge2378
merge2378:
  %10610 = load %nyx_string*, %nyx_string** %10444
  %10611 = getelementptr [6 x i8], [6 x i8]* @.str1215, i32 0, i32 0
  %10612 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1215.c, i8* %10611)
  %10613 = call i1 @nyx_string_equals(%nyx_string* %10610, %nyx_string* %10612)
  br i1 %10613, label %then2379, label %else2380
then2379:
  %10614 = load %ASTNode, %ASTNode* %node.ptr
  %10615 = call i1 @validate_binop(%ASTNode %10614)
  ret i1 %10615
else2380:
  br label %merge2381
merge2381:
  %10616 = load %nyx_string*, %nyx_string** %10444
  %10617 = getelementptr [5 x i8], [5 x i8]* @.str1216, i32 0, i32 0
  %10618 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1216.c, i8* %10617)
  %10619 = call i1 @nyx_string_equals(%nyx_string* %10616, %nyx_string* %10618)
  br i1 %10619, label %then2382, label %else2383
then2382:
  %10620 = load %ASTNode, %ASTNode* %node.ptr
  %10621 = call i1 @validate_unop(%ASTNode %10620)
  ret i1 %10621
else2383:
  br label %merge2384
merge2384:
  %10622 = load %nyx_string*, %nyx_string** %10444
  %10623 = getelementptr [5 x i8], [5 x i8]* @.str1217, i32 0, i32 0
  %10624 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1217.c, i8* %10623)
  %10625 = call i1 @nyx_string_equals(%nyx_string* %10622, %nyx_string* %10624)
  br i1 %10625, label %then2385, label %else2386
then2385:
  %10626 = load %ASTNode, %ASTNode* %node.ptr
  %10627 = call i1 @validate_call(%ASTNode %10626)
  ret i1 %10627
else2386:
  br label %merge2387
merge2387:
  %10628 = load %nyx_string*, %nyx_string** %10444
  %10629 = getelementptr [6 x i8], [6 x i8]* @.str1218, i32 0, i32 0
  %10630 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1218.c, i8* %10629)
  %10631 = call i1 @nyx_string_equals(%nyx_string* %10628, %nyx_string* %10630)
  br i1 %10631, label %then2388, label %else2389
then2388:
  %10632 = load %ASTNode, %ASTNode* %node.ptr
  %10633 = call i1 @validate_array(%ASTNode %10632)
  ret i1 %10633
else2389:
  br label %merge2390
merge2390:
  %10634 = load %nyx_string*, %nyx_string** %10444
  %10635 = getelementptr [12 x i8], [12 x i8]* @.str1219, i32 0, i32 0
  %10636 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1219.c, i8* %10635)
  %10637 = call i1 @nyx_string_equals(%nyx_string* %10634, %nyx_string* %10636)
  br i1 %10637, label %then2391, label %else2392
then2391:
  %10638 = load %ASTNode, %ASTNode* %node.ptr
  %10639 = call i1 @validate_map_literal(%ASTNode %10638)
  ret i1 %10639
else2392:
  br label %merge2393
merge2393:
  %10640 = load %nyx_string*, %nyx_string** %10444
  %10641 = getelementptr [6 x i8], [6 x i8]* @.str1220, i32 0, i32 0
  %10642 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1220.c, i8* %10641)
  %10643 = call i1 @nyx_string_equals(%nyx_string* %10640, %nyx_string* %10642)
  br i1 %10643, label %then2394, label %else2395
then2394:
  %10644 = load %ASTNode, %ASTNode* %node.ptr
  %10645 = call i1 @validate_index(%ASTNode %10644)
  ret i1 %10645
else2395:
  br label %merge2396
merge2396:
  %10646 = load %nyx_string*, %nyx_string** %10444
  %10647 = getelementptr [6 x i8], [6 x i8]* @.str1221, i32 0, i32 0
  %10648 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1221.c, i8* %10647)
  %10649 = call i1 @nyx_string_equals(%nyx_string* %10646, %nyx_string* %10648)
  br i1 %10649, label %then2397, label %else2398
then2397:
  %10650 = load %ASTNode, %ASTNode* %node.ptr
  %10651 = call i1 @validate_range(%ASTNode %10650)
  ret i1 %10651
else2398:
  br label %merge2399
merge2399:
  %10652 = load %nyx_string*, %nyx_string** %10444
  %10653 = getelementptr [7 x i8], [7 x i8]* @.str1222, i32 0, i32 0
  %10654 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1222.c, i8* %10653)
  %10655 = call i1 @nyx_string_equals(%nyx_string* %10652, %nyx_string* %10654)
  br i1 %10655, label %then2400, label %else2401
then2400:
  %10656 = load %ASTNode, %ASTNode* %node.ptr
  %10657 = call i1 @validate_assign(%ASTNode %10656)
  ret i1 %10657
else2401:
  br label %merge2402
merge2402:
  %10658 = load %nyx_string*, %nyx_string** %10444
  %10659 = getelementptr [16 x i8], [16 x i8]* @.str1223, i32 0, i32 0
  %10660 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1223.c, i8* %10659)
  %10661 = call i1 @nyx_string_equals(%nyx_string* %10658, %nyx_string* %10660)
  br i1 %10661, label %then2403, label %else2404
then2403:
  %10662 = load %ASTNode, %ASTNode* %node.ptr
  %10663 = call i1 @validate_assign(%ASTNode %10662)
  ret i1 %10663
else2404:
  br label %merge2405
merge2405:
  %10664 = load %nyx_string*, %nyx_string** %10444
  %10665 = getelementptr [13 x i8], [13 x i8]* @.str1224, i32 0, i32 0
  %10666 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1224.c, i8* %10665)
  %10667 = call i1 @nyx_string_equals(%nyx_string* %10664, %nyx_string* %10666)
  br i1 %10667, label %then2406, label %else2407
then2406:
  %10668 = load %ASTNode, %ASTNode* %node.ptr
  %10669 = call i1 @validate_index_assign(%ASTNode %10668)
  ret i1 %10669
else2407:
  br label %merge2408
merge2408:
  %10670 = load %nyx_string*, %nyx_string** %10444
  %10671 = getelementptr [13 x i8], [13 x i8]* @.str1225, i32 0, i32 0
  %10672 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1225.c, i8* %10671)
  %10673 = call i1 @nyx_string_equals(%nyx_string* %10670, %nyx_string* %10672)
  br i1 %10673, label %then2409, label %else2410
then2409:
  %10674 = load %ASTNode, %ASTNode* %node.ptr
  %10675 = call i1 @validate_field_assign(%ASTNode %10674)
  ret i1 %10675
else2410:
  br label %merge2411
merge2411:
  %10676 = load %nyx_string*, %nyx_string** %10444
  %10677 = getelementptr [12 x i8], [12 x i8]* @.str1226, i32 0, i32 0
  %10678 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1226.c, i8* %10677)
  %10679 = call i1 @nyx_string_equals(%nyx_string* %10676, %nyx_string* %10678)
  br i1 %10679, label %then2412, label %else2413
then2412:
  %10680 = load %ASTNode, %ASTNode* %node.ptr
  %10681 = call i1 @validate_struct_init(%ASTNode %10680)
  ret i1 %10681
else2413:
  br label %merge2414
merge2414:
  %10682 = load %nyx_string*, %nyx_string** %10444
  %10683 = getelementptr [13 x i8], [13 x i8]* @.str1227, i32 0, i32 0
  %10684 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1227.c, i8* %10683)
  %10685 = call i1 @nyx_string_equals(%nyx_string* %10682, %nyx_string* %10684)
  br i1 %10685, label %then2415, label %else2416
then2415:
  %10686 = load %ASTNode, %ASTNode* %node.ptr
  %10687 = call i1 @validate_field_access(%ASTNode %10686)
  ret i1 %10687
else2416:
  br label %merge2417
merge2417:
  %10688 = load %nyx_string*, %nyx_string** %10444
  %10689 = getelementptr [12 x i8], [12 x i8]* @.str1228, i32 0, i32 0
  %10690 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1228.c, i8* %10689)
  %10691 = call i1 @nyx_string_equals(%nyx_string* %10688, %nyx_string* %10690)
  br i1 %10691, label %then2418, label %else2419
then2418:
  %10692 = load %ASTNode, %ASTNode* %node.ptr
  %10693 = call i1 @validate_method_call(%ASTNode %10692)
  ret i1 %10693
else2419:
  br label %merge2420
merge2420:
  %10694 = load %nyx_string*, %nyx_string** %10444
  %10695 = getelementptr [6 x i8], [6 x i8]* @.str1229, i32 0, i32 0
  %10696 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1229.c, i8* %10695)
  %10697 = call i1 @nyx_string_equals(%nyx_string* %10694, %nyx_string* %10696)
  br i1 %10697, label %then2421, label %else2422
then2421:
  %10698 = load %ASTNode, %ASTNode* %node.ptr
  %10699 = call i1 @validate_match(%ASTNode %10698)
  ret i1 %10699
else2422:
  br label %merge2423
merge2423:
  %10700 = load %nyx_string*, %nyx_string** %10444
  %10701 = getelementptr [10 x i8], [10 x i8]* @.str1230, i32 0, i32 0
  %10702 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1230.c, i8* %10701)
  %10703 = call i1 @nyx_string_equals(%nyx_string* %10700, %nyx_string* %10702)
  br i1 %10703, label %then2424, label %else2425
then2424:
  %10704 = load %ASTNode, %ASTNode* %node.ptr
  %10705 = call i1 @validate_match_arm(%ASTNode %10704)
  ret i1 %10705
else2425:
  br label %merge2426
merge2426:
  %10706 = load %nyx_string*, %nyx_string** %10444
  %10707 = getelementptr [14 x i8], [14 x i8]* @.str1231, i32 0, i32 0
  %10708 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1231.c, i8* %10707)
  %10709 = call i1 @nyx_string_equals(%nyx_string* %10706, %nyx_string* %10708)
  br i1 %10709, label %then2427, label %else2428
then2427:
  ret i1 1
else2428:
  br label %merge2429
merge2429:
  %10710 = load %nyx_string*, %nyx_string** %10444
  %10711 = getelementptr [13 x i8], [13 x i8]* @.str1232, i32 0, i32 0
  %10712 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1232.c, i8* %10711)
  %10713 = call i1 @nyx_string_equals(%nyx_string* %10710, %nyx_string* %10712)
  br i1 %10713, label %then2430, label %else2431
then2430:
  ret i1 1
else2431:
  br label %merge2432
merge2432:
  %10714 = load %nyx_string*, %nyx_string** %10444
  %10715 = getelementptr [7 x i8], [7 x i8]* @.str1233, i32 0, i32 0
  %10716 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1233.c, i8* %10715)
  %10717 = call i1 @nyx_string_equals(%nyx_string* %10714, %nyx_string* %10716)
  br i1 %10717, label %then2433, label %else2434
then2433:
  %10718 = load %ASTNode, %ASTNode* %node.ptr
  %10719 = call %ASTNode @get_node_at(%ASTNode %10718, i64 0)
  %10720 = alloca %ASTNode
  store %ASTNode %10719, %ASTNode* %10720
  %10721 = load %ASTNode, %ASTNode* %10720
  %10722 = call i1 @validate_node(%ASTNode %10721)
  ret i1 %10722
else2434:
  br label %merge2435
merge2435:
  %10723 = load %nyx_string*, %nyx_string** %10444
  %10724 = getelementptr [5 x i8], [5 x i8]* @.str1234, i32 0, i32 0
  %10725 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1234.c, i8* %10724)
  %10726 = call i1 @nyx_string_equals(%nyx_string* %10723, %nyx_string* %10725)
  br i1 %10726, label %then2436, label %else2437
then2436:
  %10727 = load %ASTNode, %ASTNode* %node.ptr
  %10728 = call %ASTNode @get_node_at(%ASTNode %10727, i64 0)
  %10729 = alloca %ASTNode
  store %ASTNode %10728, %ASTNode* %10729
  %10730 = load %ASTNode, %ASTNode* %10729
  %10731 = call i1 @validate_node(%ASTNode %10730)
  ret i1 %10731
else2437:
  br label %merge2438
merge2438:
  %10732 = load %nyx_string*, %nyx_string** %10444
  %10733 = getelementptr [7 x i8], [7 x i8]* @.str1235, i32 0, i32 0
  %10734 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1235.c, i8* %10733)
  %10735 = call i1 @nyx_string_equals(%nyx_string* %10732, %nyx_string* %10734)
  br i1 %10735, label %then2439, label %else2440
then2439:
  ret i1 1
else2440:
  br label %merge2441
merge2441:
  %10736 = load %nyx_string*, %nyx_string** %10444
  %10737 = getelementptr [8 x i8], [8 x i8]* @.str1236, i32 0, i32 0
  %10738 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1236.c, i8* %10737)
  %10739 = call i1 @nyx_string_equals(%nyx_string* %10736, %nyx_string* %10738)
  br i1 %10739, label %then2442, label %else2443
then2442:
  ret i1 1
else2443:
  br label %merge2444
merge2444:
  %10740 = load %nyx_string*, %nyx_string** %10444
  %10741 = getelementptr [13 x i8], [13 x i8]* @.str1237, i32 0, i32 0
  %10742 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1237.c, i8* %10741)
  %10743 = call i1 @nyx_string_equals(%nyx_string* %10740, %nyx_string* %10742)
  br i1 %10743, label %then2445, label %else2446
then2445:
  %10744 = load %ASTNode, %ASTNode* %node.ptr
  %10745 = call %ASTNode @get_node_at(%ASTNode %10744, i64 0)
  %10746 = alloca %ASTNode
  store %ASTNode %10745, %ASTNode* %10746
  %10747 = load %ASTNode, %ASTNode* %10746
  %10748 = call i1 @validate_node(%ASTNode %10747)
  ret i1 %10748
else2446:
  br label %merge2447
merge2447:
  %10749 = load %nyx_string*, %nyx_string** %10444
  %10750 = getelementptr [8 x i8], [8 x i8]* @.str1238, i32 0, i32 0
  %10751 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1238.c, i8* %10750)
  %10752 = call i1 @nyx_string_equals(%nyx_string* %10749, %nyx_string* %10751)
  br i1 %10752, label %then2448, label %else2449
then2448:
  %10753 = load %ASTNode, %ASTNode* %node.ptr
  %10754 = call %ASTNode @get_node_at(%ASTNode %10753, i64 0)
  %10755 = alloca %ASTNode
  store %ASTNode %10754, %ASTNode* %10755
  %10756 = load %ASTNode, %ASTNode* %10755
  %10757 = call i1 @validate_node(%ASTNode %10756)
  ret i1 %10757
else2449:
  br label %merge2450
merge2450:
  %10758 = load %nyx_string*, %nyx_string** %10444
  %10759 = getelementptr [12 x i8], [12 x i8]* @.str1239, i32 0, i32 0
  %10760 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1239.c, i8* %10759)
  %10761 = call i1 @nyx_string_equals(%nyx_string* %10758, %nyx_string* %10760)
  br i1 %10761, label %then2451, label %else2452
then2451:
  %10762 = load %ASTNode, %ASTNode* %node.ptr
  %10763 = call %ASTNode @get_node_at(%ASTNode %10762, i64 0)
  %10764 = alloca %ASTNode
  store %ASTNode %10763, %ASTNode* %10764
  %10765 = load %ASTNode, %ASTNode* %10764
  %10766 = call i1 @validate_node(%ASTNode %10765)
  ret i1 %10766
else2452:
  br label %merge2453
merge2453:
  %10767 = load %nyx_string*, %nyx_string** %10444
  %10768 = getelementptr [6 x i8], [6 x i8]* @.str1240, i32 0, i32 0
  %10769 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1240.c, i8* %10768)
  %10770 = call i1 @nyx_string_equals(%nyx_string* %10767, %nyx_string* %10769)
  br i1 %10770, label %then2454, label %else2455
then2454:
  %10771 = load %ASTNode, %ASTNode* %node.ptr
  %10772 = call %ASTNode @get_node_at(%ASTNode %10771, i64 0)
  %10773 = alloca %ASTNode
  store %ASTNode %10772, %ASTNode* %10773
  %10774 = load %ASTNode, %ASTNode* %10773
  %10775 = call i1 @validate_node(%ASTNode %10774)
  ret i1 %10775
else2455:
  br label %merge2456
merge2456:
  %10776 = load %nyx_string*, %nyx_string** %10444
  %10777 = getelementptr [13 x i8], [13 x i8]* @.str1241, i32 0, i32 0
  %10778 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1241.c, i8* %10777)
  %10779 = call i1 @nyx_string_equals(%nyx_string* %10776, %nyx_string* %10778)
  br i1 %10779, label %then2457, label %else2458
then2457:
  %10780 = load %ASTNode, %ASTNode* %node.ptr
  %10781 = call %ASTNode @get_node_at(%ASTNode %10780, i64 0)
  %10782 = alloca %ASTNode
  store %ASTNode %10781, %ASTNode* %10782
  %10783 = load %ASTNode, %ASTNode* %node.ptr
  %10784 = call %ASTNode @get_node_at(%ASTNode %10783, i64 1)
  %10785 = alloca %ASTNode
  store %ASTNode %10784, %ASTNode* %10785
  %10786 = load %ASTNode, %ASTNode* %10782
  %10787 = call i1 @validate_node(%ASTNode %10786)
  %10788 = xor i1 %10787, true
  br i1 %10788, label %then2460, label %else2461
then2460:
  ret i1 0
else2461:
  br label %merge2462
merge2462:
  %10789 = load %ASTNode, %ASTNode* %10785
  %10790 = call i1 @validate_node(%ASTNode %10789)
  ret i1 %10790
else2458:
  br label %merge2459
merge2459:
  %10791 = load %nyx_string*, %nyx_string** %10444
  %10792 = getelementptr [11 x i8], [11 x i8]* @.str1242, i32 0, i32 0
  %10793 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1242.c, i8* %10792)
  %10794 = call i1 @nyx_string_equals(%nyx_string* %10791, %nyx_string* %10793)
  br i1 %10794, label %then2463, label %else2464
then2463:
  %10795 = load %ASTNode, %ASTNode* %node.ptr
  %10796 = call %nyx_string* @get_string_at(%ASTNode %10795, i64 0)
  %10797 = alloca %nyx_string*
  store %nyx_string* %10796, %nyx_string** %10797
  %10798 = load %nyx_string*, %nyx_string** %10797
  %10799 = getelementptr [4 x i8], [4 x i8]* @.str1243, i32 0, i32 0
  %10800 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1243.c, i8* %10799)
  %10801 = call i64 @scope_declare(%nyx_string* %10798, %nyx_string* %10800)
  ret i1 1
else2464:
  br label %merge2465
merge2465:
  %10802 = load %nyx_string*, %nyx_string** %10444
  %10803 = getelementptr [6 x i8], [6 x i8]* @.str1244, i32 0, i32 0
  %10804 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1244.c, i8* %10803)
  %10805 = call i1 @nyx_string_equals(%nyx_string* %10802, %nyx_string* %10804)
  br i1 %10805, label %then2466, label %else2467
then2466:
  %10806 = load %ASTNode, %ASTNode* %node.ptr
  %10807 = call %ASTNode @get_node_at(%ASTNode %10806, i64 0)
  %10808 = alloca %ASTNode
  store %ASTNode %10807, %ASTNode* %10808
  %10809 = load %ASTNode, %ASTNode* %10808
  %10810 = call i1 @validate_node(%ASTNode %10809)
  ret i1 %10810
else2467:
  br label %merge2468
merge2468:
  %10811 = load %nyx_string*, %nyx_string** %10444
  %10812 = getelementptr [10 x i8], [10 x i8]* @.str1245, i32 0, i32 0
  %10813 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1245.c, i8* %10812)
  %10814 = call i1 @nyx_string_equals(%nyx_string* %10811, %nyx_string* %10813)
  br i1 %10814, label %then2469, label %else2470
then2469:
  %10815 = load %ASTNode, %ASTNode* %node.ptr
  %10816 = call %ASTNode @get_node_at(%ASTNode %10815, i64 0)
  %10817 = alloca %ASTNode
  store %ASTNode %10816, %ASTNode* %10817
  %10818 = load %ASTNode, %ASTNode* %node.ptr
  %10819 = call %nyx_string* @get_string_at(%ASTNode %10818, i64 1)
  %10820 = alloca %nyx_string*
  store %nyx_string* %10819, %nyx_string** %10820
  %10821 = load %ASTNode, %ASTNode* %node.ptr
  %10822 = call %ASTNode @get_node_at(%ASTNode %10821, i64 2)
  %10823 = alloca %ASTNode
  store %ASTNode %10822, %ASTNode* %10823
  %10824 = load %ASTNode, %ASTNode* %10817
  %10825 = call i1 @validate_node(%ASTNode %10824)
  %10826 = alloca i1
  store i1 %10825, i1* %10826
  %10827 = load i1, i1* %10826
  %10828 = icmp eq i1 %10827, 0
  br i1 %10828, label %then2472, label %else2473
then2472:
  ret i1 0
else2473:
  br label %merge2474
merge2474:
  %10829 = call i64 @scope_push()
  %10830 = load %nyx_string*, %nyx_string** %10820
  %10831 = getelementptr [4 x i8], [4 x i8]* @.str1246, i32 0, i32 0
  %10832 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1246.c, i8* %10831)
  %10833 = call i64 @scope_declare(%nyx_string* %10830, %nyx_string* %10832)
  %10834 = load %ASTNode, %ASTNode* %10823
  %10835 = call i1 @validate_node(%ASTNode %10834)
  %10836 = alloca i1
  store i1 %10835, i1* %10836
  %10837 = call i64 @scope_pop()
  %10838 = load i1, i1* %10836
  ret i1 %10838
else2470:
  br label %merge2471
merge2471:
  %10839 = load %nyx_string*, %nyx_string** %10444
  %10840 = getelementptr [6 x i8], [6 x i8]* @.str1247, i32 0, i32 0
  %10841 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1247.c, i8* %10840)
  %10842 = call i1 @nyx_string_equals(%nyx_string* %10839, %nyx_string* %10841)
  br i1 %10842, label %then2475, label %else2476
then2475:
  %10843 = load %ASTNode, %ASTNode* %node.ptr
  %10844 = call %ASTNode @get_node_at(%ASTNode %10843, i64 0)
  %10845 = alloca %ASTNode
  store %ASTNode %10844, %ASTNode* %10845
  %10846 = load %ASTNode, %ASTNode* %10845
  %10847 = call i1 @validate_node(%ASTNode %10846)
  ret i1 %10847
else2476:
  br label %merge2477
merge2477:
  %10848 = load %nyx_string*, %nyx_string** %10444
  %10849 = getelementptr [11 x i8], [11 x i8]* @.str1248, i32 0, i32 0
  %10850 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1248.c, i8* %10849)
  %10851 = call i1 @nyx_string_equals(%nyx_string* %10848, %nyx_string* %10850)
  br i1 %10851, label %then2478, label %else2479
then2478:
  ret i1 1
else2479:
  br label %merge2480
merge2480:
  %10852 = load %nyx_string*, %nyx_string** %10444
  %10853 = getelementptr [15 x i8], [15 x i8]* @.str1249, i32 0, i32 0
  %10854 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1249.c, i8* %10853)
  %10855 = call i1 @nyx_string_equals(%nyx_string* %10852, %nyx_string* %10854)
  br i1 %10855, label %then2481, label %else2482
then2481:
  ret i1 1
else2482:
  br label %merge2483
merge2483:
  %10856 = load %nyx_string*, %nyx_string** %10444
  %10857 = getelementptr [13 x i8], [13 x i8]* @.str1250, i32 0, i32 0
  %10858 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1250.c, i8* %10857)
  %10859 = call i1 @nyx_string_equals(%nyx_string* %10856, %nyx_string* %10858)
  br i1 %10859, label %then2484, label %else2485
then2484:
  ret i1 1
else2485:
  br label %merge2486
merge2486:
  %10860 = load %nyx_string*, %nyx_string** %10444
  %10861 = getelementptr [10 x i8], [10 x i8]* @.str1251, i32 0, i32 0
  %10862 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1251.c, i8* %10861)
  %10863 = call i1 @nyx_string_equals(%nyx_string* %10860, %nyx_string* %10862)
  br i1 %10863, label %then2487, label %else2488
then2487:
  ret i1 1
else2488:
  br label %merge2489
merge2489:
  %10864 = load %nyx_string*, %nyx_string** %10444
  %10865 = getelementptr [12 x i8], [12 x i8]* @.str1252, i32 0, i32 0
  %10866 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1252.c, i8* %10865)
  %10867 = call i1 @nyx_string_equals(%nyx_string* %10864, %nyx_string* %10866)
  br i1 %10867, label %then2490, label %else2491
then2490:
  ret i1 1
else2491:
  br label %merge2492
merge2492:
  %10868 = load %nyx_string*, %nyx_string** %10444
  %10869 = getelementptr [22 x i8], [22 x i8]* @.str1253, i32 0, i32 0
  %10870 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1253.c, i8* %10869)
  %10871 = call i1 @nyx_string_equals(%nyx_string* %10868, %nyx_string* %10870)
  br i1 %10871, label %then2493, label %else2494
then2493:
  %10872 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %10873 = load { i64, i8* }*, { i64, i8* }** %10872
  %10874 = call i64 @nyx_array_get({ i64, i8* }* %10873, i64 0)
  %10875 = inttoptr i64 %10874 to { i64, i8* }*
  %10876 = alloca { i64, i8* }*
  store { i64, i8* }* %10875, { i64, i8* }** %10876
  %10877 = load %ASTNode, %ASTNode* %node.ptr
  %10878 = call %ASTNode @get_node_at(%ASTNode %10877, i64 2)
  %10879 = alloca %ASTNode
  store %ASTNode %10878, %ASTNode* %10879
  %10880 = load %ASTNode, %ASTNode* %10879
  %10881 = call i1 @validate_node(%ASTNode %10880)
  %10882 = xor i1 %10881, true
  br i1 %10882, label %then2496, label %else2497
then2496:
  ret i1 0
else2497:
  br label %merge2498
merge2498:
  %10883 = alloca i64
  store i64 0, i64* %10883
  %10884 = getelementptr [4 x i8], [4 x i8]* @.str1254, i32 0, i32 0
  %10885 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1254.c, i8* %10884)
  %10886 = alloca %nyx_string*
  store %nyx_string* %10885, %nyx_string** %10886
  br label %while_cond2499
while_cond2499:
  %10887 = load i64, i64* %10883
  %10888 = load { i64, i8* }*, { i64, i8* }** %10876
  %10889 = call i64 @nyx_array_length({ i64, i8* }* %10888)
  %10890 = icmp slt i64 %10887, %10889
  br i1 %10890, label %while_body2500, label %while_end2501
while_body2500:
  %10891 = load { i64, i8* }*, { i64, i8* }** %10876
  %10892 = load i64, i64* %10883
  %10893 = call i64 @nyx_array_get({ i64, i8* }* %10891, i64 %10892)
  %10894 = inttoptr i64 %10893 to %nyx_string*
  %10895 = alloca %nyx_string*
  store %nyx_string* %10894, %nyx_string** %10895
  %10896 = load %nyx_string*, %nyx_string** %10895
  %10897 = load %nyx_string*, %nyx_string** %10886
  %10898 = call i64 @scope_declare(%nyx_string* %10896, %nyx_string* %10897)
  %10899 = load i64, i64* %10883
  %10900 = add i64 %10899, 1
  store i64 %10900, i64* %10883
  br label %while_cond2499
while_end2501:
  ret i1 1
else2494:
  br label %merge2495
merge2495:
  %10901 = load %nyx_string*, %nyx_string** %10444
  %10902 = getelementptr [10 x i8], [10 x i8]* @.str1255, i32 0, i32 0
  %10903 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1255.c, i8* %10902)
  %10904 = call i1 @nyx_string_equals(%nyx_string* %10901, %nyx_string* %10903)
  br i1 %10904, label %then2502, label %else2503
then2502:
  %10905 = call i64 @scope_push()
  %10906 = load %ASTNode, %ASTNode* %node.ptr
  %10907 = call %ASTNode @get_node_at(%ASTNode %10906, i64 1)
  %10908 = alloca %ASTNode
  store %ASTNode %10907, %ASTNode* %10908
  %10909 = load %ASTNode, %ASTNode* %10908
  %10910 = call i1 @validate_node(%ASTNode %10909)
  %10911 = alloca i1
  store i1 %10910, i1* %10911
  %10912 = call i64 @scope_pop()
  %10913 = load i1, i1* %10911
  ret i1 %10913
else2503:
  br label %merge2504
merge2504:
  %10914 = load %nyx_string*, %nyx_string** %10444
  %10915 = getelementptr [7 x i8], [7 x i8]* @.str1256, i32 0, i32 0
  %10916 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1256.c, i8* %10915)
  %10917 = call i1 @nyx_string_equals(%nyx_string* %10914, %nyx_string* %10916)
  br i1 %10917, label %then2505, label %else2506
then2505:
  %10918 = load %ASTNode, %ASTNode* %node.ptr
  %10919 = call %ASTNode @get_node_at(%ASTNode %10918, i64 0)
  %10920 = alloca %ASTNode
  store %ASTNode %10919, %ASTNode* %10920
  %10921 = load %ASTNode, %ASTNode* %10920
  %10922 = call i1 @validate_node(%ASTNode %10921)
  ret i1 %10922
else2506:
  br label %merge2507
merge2507:
  ret i1 1
}

define { i64, i8* }* @get_errors(
) {
  %10923 = load { i64, i8* }*, { i64, i8* }** @g_errors
  ret { i64, i8* }* %10923
}

define { i64, i8* }* @get_sym_names(
) {
  %10924 = load { i64, i8* }*, { i64, i8* }** @g_sym_names
  ret { i64, i8* }* %10924
}

define { i64, i8* }* @get_sym_kinds(
) {
  %10925 = load { i64, i8* }*, { i64, i8* }** @g_sym_kinds
  ret { i64, i8* }* %10925
}

define i64 @get_sym_count(
) {
  %10926 = load i64, i64* @g_sym_count
  ret i64 %10926
}

define i1 @analyze(
%ASTNode %ast.param) {
  %ast.ptr = alloca %ASTNode
  store %ASTNode %ast.param, %ASTNode* %ast.ptr
  %10927 = call i64 @init_lang()
  %10928 = getelementptr [12 x i8], [12 x i8]* @.str1257, i32 0, i32 0
  %10929 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1257.c, i8* %10928)
  %10930 = call i8* @nyx_string_to_cstr(%nyx_string* %10929)
  %10931 = call %nyx_string* @nyx_getenv(i8* %10930)
  %10932 = alloca %nyx_string*
  store %nyx_string* %10931, %nyx_string** %10932
  %10933 = load %nyx_string*, %nyx_string** %10932
  %10934 = getelementptr [2 x i8], [2 x i8]* @.str1258, i32 0, i32 0
  %10935 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1258.c, i8* %10934)
  %10936 = call i1 @nyx_string_equals(%nyx_string* %10933, %nyx_string* %10935)
  br i1 %10936, label %then2508, label %else2509
then2508:
  %10937 = getelementptr [7 x i8], [7 x i8]* @.str1259, i32 0, i32 0
  %10938 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1259.c, i8* %10937)
  %10939 = getelementptr [30 x i8], [30 x i8]* @.str1260, i32 0, i32 0
  %10940 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1260.c, i8* %10939)
  %10941 = getelementptr [26 x i8], [26 x i8]* @.str1261, i32 0, i32 0
  %10942 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1261.c, i8* %10941)
  %10943 = call %nyx_string* @msg(%nyx_string* %10940, %nyx_string* %10942)
  %10944 = call %nyx_string* @nyx_string_concat(%nyx_string* %10938, %nyx_string* %10943)
  %10945 = call i8* @nyx_string_to_cstr(%nyx_string* %10944)
  call void @nyx_print_string(i8* %10945)
  br label %merge2510
else2509:
  br label %merge2510
merge2510:
  store i64 0, i64* @g_sym_count
  store i64 0, i64* @g_marks_count
  store i64 0, i64* @g_in_function
  store i64 0, i64* @g_in_loop
  store i64 0, i64* @g_enum_reg_count
  store i64 0, i64* @g_cur_line
  store i64 0, i64* @g_cur_col
  %10946 = call i64 @register_builtins()
  %10947 = load %ASTNode, %ASTNode* %ast.ptr
  %10948 = call i1 @validate_node(%ASTNode %10947)
  %10949 = alloca i1
  store i1 %10948, i1* %10949
  %10950 = alloca i1
  store i1 true, i1* %10950
  %10951 = load i1, i1* %10949
  %10952 = xor i1 %10951, true
  br i1 %10952, label %sc_or_end2512, label %sc_or_rhs2511
sc_or_rhs2511:
  %10953 = load { i64, i8* }*, { i64, i8* }** @g_errors
  %10954 = call i64 @nyx_array_length({ i64, i8* }* %10953)
  %10955 = icmp sgt i64 %10954, 0
  store i1 %10955, i1* %10950
  br label %sc_or_end2512
sc_or_end2512:
  %10956 = load i1, i1* %10950
  br i1 %10956, label %then2513, label %else2514
then2513:
  %10957 = getelementptr [9 x i8], [9 x i8]* @.str1262, i32 0, i32 0
  %10958 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1262.c, i8* %10957)
  %10959 = call i8* @nyx_string_to_cstr(%nyx_string* %10958)
  %10960 = call %nyx_string* @nyx_getenv(i8* %10959)
  %10961 = alloca %nyx_string*
  store %nyx_string* %10960, %nyx_string** %10961
  %10962 = alloca i64
  store i64 0, i64* %10962
  br label %while_cond2516
while_cond2516:
  %10963 = load i64, i64* %10962
  %10964 = load { i64, i8* }*, { i64, i8* }** @g_errors
  %10965 = call i64 @nyx_array_length({ i64, i8* }* %10964)
  %10966 = icmp slt i64 %10963, %10965
  br i1 %10966, label %while_body2517, label %while_end2518
while_body2517:
  %10967 = load %nyx_string*, %nyx_string** %10961
  %10968 = getelementptr [5 x i8], [5 x i8]* @.str1263, i32 0, i32 0
  %10969 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1263.c, i8* %10968)
  %10970 = call i1 @nyx_string_equals(%nyx_string* %10967, %nyx_string* %10969)
  br i1 %10970, label %then2519, label %else2520
then2519:
  %10971 = load i64, i64* %10962
  %10972 = call %nyx_string* @diag_to_json(i64 %10971)
  %10973 = call i8* @nyx_string_to_cstr(%nyx_string* %10972)
  call void @nyx_print_string(i8* %10973)
  br label %merge2521
else2520:
  %10974 = load { i64, i8* }*, { i64, i8* }** @g_errors
  %10975 = load i64, i64* %10962
  %10976 = call i64 @nyx_array_get({ i64, i8* }* %10974, i64 %10975)
  %10977 = inttoptr i64 %10976 to %nyx_string*
  %10978 = alloca %nyx_string*
  store %nyx_string* %10977, %nyx_string** %10978
  %10979 = getelementptr [7 x i8], [7 x i8]* @.str1264, i32 0, i32 0
  %10980 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1264.c, i8* %10979)
  %10981 = load %nyx_string*, %nyx_string** %10978
  %10982 = call %nyx_string* @nyx_string_concat(%nyx_string* %10980, %nyx_string* %10981)
  %10983 = call i8* @nyx_string_to_cstr(%nyx_string* %10982)
  call void @nyx_print_string(i8* %10983)
  br label %merge2521
merge2521:
  %10984 = load i64, i64* %10962
  %10985 = add i64 %10984, 1
  store i64 %10985, i64* %10962
  br label %while_cond2516
while_end2518:
  ret i1 0
else2514:
  br label %merge2515
merge2515:
  %10986 = load %nyx_string*, %nyx_string** %10932
  %10987 = getelementptr [2 x i8], [2 x i8]* @.str1265, i32 0, i32 0
  %10988 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1265.c, i8* %10987)
  %10989 = call i1 @nyx_string_equals(%nyx_string* %10986, %nyx_string* %10988)
  br i1 %10989, label %then2522, label %else2523
then2522:
  %10990 = getelementptr [7 x i8], [7 x i8]* @.str1266, i32 0, i32 0
  %10991 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1266.c, i8* %10990)
  %10992 = getelementptr [25 x i8], [25 x i8]* @.str1267, i32 0, i32 0
  %10993 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1267.c, i8* %10992)
  %10994 = getelementptr [22 x i8], [22 x i8]* @.str1268, i32 0, i32 0
  %10995 = call %nyx_string* @nyx_intern_cstr(%nyx_string** @.str1268.c, i8* %10994)
  %10996 = call %nyx_string* @msg(%nyx_string* %10993, %nyx_string* %10995)
  %10997 = call %nyx_string* @nyx_string_concat(%nyx_string* %10991, %nyx_string* %10996)
  %10998 = call i8* @nyx_string_to_cstr(%nyx_string* %10997)
  call void @nyx_print_string(i8* %10998)
  br label %merge2524
else2523:
  br label %merge2524
merge2524:
  ret i1 1
}

; Inicialización de variables globales (llamada automática vía ctor)
define void @__nyx_init_globals() {
entry:
  %10999 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %10999, { i64, i8* }** @g_errors
  %11000 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %11000, { i64, i8* }** @g_diag_codes
  %11001 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %11001, { i64, i8* }** @g_diag_msgs
  %11002 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %11002, { i64, i8* }** @g_diag_fns
  %11003 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %11003, { i64, i8* }** @g_diag_hints
  %11004 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %11004, { i64, i8* }** @g_diag_lines
  %11005 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %11005, { i64, i8* }** @g_diag_cols
  %11006 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %11006, { i64, i8* }** @g_sym_names
  %11007 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %11007, { i64, i8* }** @g_sym_kinds
  %11008 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %11008, { i64, i8* }** @g_sym_arities
  %11009 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %11009, { i64, i8* }** @g_scope_marks
  %11010 = getelementptr [1 x i8], [1 x i8]* @.str.init.0, i32 0, i32 0
  %11011 = call %nyx_string* @nyx_string_from_cstr(i8* %11010)
  store %nyx_string* %11011, %nyx_string** @g_current_fn
  %11012 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %11012, { i64, i8* }** @g_enum_reg_names
  %11013 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %11013, { i64, i8* }** @g_enum_reg_variants
  %11014 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %11014, { i64, i8* }** @g_enum_reg_variant_payloads
  %11015 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %11015, { i64, i8* }** @g_struct_reg_names
  %11016 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %11016, { i64, i8* }** @g_struct_reg_fields
  %11017 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %11017, { i64, i8* }** @g_struct_reg_field_types
  %11018 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %11018, { i64, i8* }** @g_var_types
  %11019 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %11019, { i64, i8* }** @g_fn_sig_names
  %11020 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %11020, { i64, i8* }** @g_fn_sig_params
  %11021 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %11021, { i64, i8* }** @g_fn_sig_returns
  %11022 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %11022, { i64, i8* }** @g_fn_sig_type_params
  %11023 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %11023, { i64, i8* }** @g_fn_sig_type_bounds
  %11024 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %11024, { i64, i8* }** @g_current_fn_ret_type
  %11025 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %11025, { i64, i8* }** @g_alias_names
  %11026 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %11026, { i64, i8* }** @g_alias_targets
  %11027 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %11027, { i64, i8* }** @g_impl_method_types
  %11028 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %11028, { i64, i8* }** @g_impl_method_names
  %11029 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %11029, { i64, i8* }** @g_impl_method_params
  %11030 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %11030, { i64, i8* }** @g_impl_method_returns
  %11031 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %11031, { i64, i8* }** @g_impl_method_type_params
  %11032 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %11032, { i64, i8* }** @g_impl_method_type_bounds
  %11033 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %11033, { i64, i8* }** @g_trait_impl_types
  %11034 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %11034, { i64, i8* }** @g_trait_impl_traits
  %11035 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %11035, { i64, i8* }** @g_known_methods
  %11036 = getelementptr [1 x i8], [1 x i8]* @.str.init.1, i32 0, i32 0
  %11037 = call %nyx_string* @nyx_string_from_cstr(i8* %11036)
  store %nyx_string* %11037, %nyx_string** @g_lang
  ret void
}

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__nyx_init_globals, i8* null }]

attributes #0 = { returns_twice }

