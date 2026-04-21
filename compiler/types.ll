source_filename = "script.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [6 x i8] c"TyInt\00"
@.str1 = private unnamed_addr constant [8 x i8] c"TyFloat\00"
@.str2 = private unnamed_addr constant [7 x i8] c"TyBool\00"
@.str3 = private unnamed_addr constant [9 x i8] c"TyString\00"
@.str4 = private unnamed_addr constant [7 x i8] c"TyChar\00"
@.str5 = private unnamed_addr constant [7 x i8] c"TyUnit\00"
@.str6 = private unnamed_addr constant [10 x i8] c"TyUnknown\00"
@.str7 = private unnamed_addr constant [8 x i8] c"TyArray\00"
@.str8 = private unnamed_addr constant [9 x i8] c"TyOption\00"
@.str9 = private unnamed_addr constant [9 x i8] c"TyResult\00"
@.str10 = private unnamed_addr constant [6 x i8] c"TyMap\00"
@.str11 = private unnamed_addr constant [6 x i8] c"TyPtr\00"
@.str12 = private unnamed_addr constant [6 x i8] c"TyRef\00"
@.str13 = private unnamed_addr constant [9 x i8] c"TyRefMut\00"
@.str14 = private unnamed_addr constant [5 x i8] c"TyFn\00"
@.str15 = private unnamed_addr constant [6 x i8] c"TyDyn\00"
@.str16 = private unnamed_addr constant [9 x i8] c"TyStruct\00"
@.str17 = private unnamed_addr constant [7 x i8] c"TyEnum\00"
@.str18 = private unnamed_addr constant [10 x i8] c"TyGeneric\00"
@.str19 = private unnamed_addr constant [8 x i8] c"TySized\00"
@.str20 = private unnamed_addr constant [10 x i8] c"TyUnknown\00"
@.str21 = private unnamed_addr constant [10 x i8] c"TyUnknown\00"
@.str22 = private unnamed_addr constant [3 x i8] c"i8\00"
@.str23 = private unnamed_addr constant [4 x i8] c"i16\00"
@.str24 = private unnamed_addr constant [4 x i8] c"i32\00"
@.str25 = private unnamed_addr constant [4 x i8] c"i64\00"
@.str26 = private unnamed_addr constant [3 x i8] c"u8\00"
@.str27 = private unnamed_addr constant [4 x i8] c"u16\00"
@.str28 = private unnamed_addr constant [4 x i8] c"u32\00"
@.str29 = private unnamed_addr constant [4 x i8] c"u64\00"
@.str30 = private unnamed_addr constant [4 x i8] c"f32\00"
@.str31 = private unnamed_addr constant [6 x i8] c"usize\00"
@.str32 = private unnamed_addr constant [10 x i8] c"TyUnknown\00"
@.str33 = private unnamed_addr constant [10 x i8] c"TyUnknown\00"
@.str34 = private unnamed_addr constant [6 x i8] c"TyDyn\00"
@.str35 = private unnamed_addr constant [6 x i8] c"TyDyn\00"
@.str36 = private unnamed_addr constant [10 x i8] c"TyGeneric\00"
@.str37 = private unnamed_addr constant [10 x i8] c"TyGeneric\00"
@.str38 = private unnamed_addr constant [6 x i8] c"TyInt\00"
@.str39 = private unnamed_addr constant [8 x i8] c"TySized\00"
@.str40 = private unnamed_addr constant [4 x i8] c"f32\00"
@.str41 = private unnamed_addr constant [6 x i8] c"TyInt\00"
@.str42 = private unnamed_addr constant [8 x i8] c"TySized\00"
@.str43 = private unnamed_addr constant [4 x i8] c"f32\00"
@.str44 = private unnamed_addr constant [8 x i8] c"TyFloat\00"
@.str45 = private unnamed_addr constant [8 x i8] c"TySized\00"
@.str46 = private unnamed_addr constant [4 x i8] c"f32\00"
@.str47 = private unnamed_addr constant [8 x i8] c"TyFloat\00"
@.str48 = private unnamed_addr constant [8 x i8] c"TySized\00"
@.str49 = private unnamed_addr constant [4 x i8] c"f32\00"
@.str50 = private unnamed_addr constant [6 x i8] c"TyInt\00"
@.str51 = private unnamed_addr constant [7 x i8] c"TyChar\00"
@.str52 = private unnamed_addr constant [7 x i8] c"TyChar\00"
@.str53 = private unnamed_addr constant [6 x i8] c"TyInt\00"
@.str54 = private unnamed_addr constant [6 x i8] c"TyInt\00"
@.str55 = private unnamed_addr constant [8 x i8] c"TyFloat\00"
@.str56 = private unnamed_addr constant [7 x i8] c"TyBool\00"
@.str57 = private unnamed_addr constant [9 x i8] c"TyString\00"
@.str58 = private unnamed_addr constant [7 x i8] c"TyChar\00"
@.str59 = private unnamed_addr constant [7 x i8] c"TyUnit\00"
@.str60 = private unnamed_addr constant [8 x i8] c"TyArray\00"
@.str61 = private unnamed_addr constant [9 x i8] c"TyOption\00"
@.str62 = private unnamed_addr constant [6 x i8] c"TyPtr\00"
@.str63 = private unnamed_addr constant [6 x i8] c"TyRef\00"
@.str64 = private unnamed_addr constant [9 x i8] c"TyRefMut\00"
@.str65 = private unnamed_addr constant [9 x i8] c"TyResult\00"
@.str66 = private unnamed_addr constant [6 x i8] c"TyMap\00"
@.str67 = private unnamed_addr constant [5 x i8] c"TyFn\00"
@.str68 = private unnamed_addr constant [9 x i8] c"TyStruct\00"
@.str69 = private unnamed_addr constant [7 x i8] c"TyEnum\00"
@.str70 = private unnamed_addr constant [6 x i8] c"TyDyn\00"
@.str71 = private unnamed_addr constant [10 x i8] c"TyGeneric\00"
@.str72 = private unnamed_addr constant [8 x i8] c"TySized\00"
@.str73 = private unnamed_addr constant [6 x i8] c"TyInt\00"
@.str74 = private unnamed_addr constant [4 x i8] c"int\00"
@.str75 = private unnamed_addr constant [8 x i8] c"TyFloat\00"
@.str76 = private unnamed_addr constant [6 x i8] c"float\00"
@.str77 = private unnamed_addr constant [7 x i8] c"TyBool\00"
@.str78 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str79 = private unnamed_addr constant [9 x i8] c"TyString\00"
@.str80 = private unnamed_addr constant [7 x i8] c"String\00"
@.str81 = private unnamed_addr constant [7 x i8] c"TyChar\00"
@.str82 = private unnamed_addr constant [5 x i8] c"char\00"
@.str83 = private unnamed_addr constant [7 x i8] c"TyUnit\00"
@.str84 = private unnamed_addr constant [3 x i8] c"()\00"
@.str85 = private unnamed_addr constant [10 x i8] c"TyUnknown\00"
@.str86 = private unnamed_addr constant [2 x i8] c"?\00"
@.str87 = private unnamed_addr constant [8 x i8] c"TyArray\00"
@.str88 = private unnamed_addr constant [7 x i8] c"Array<\00"
@.str89 = private unnamed_addr constant [2 x i8] c">\00"
@.str90 = private unnamed_addr constant [9 x i8] c"TyOption\00"
@.str91 = private unnamed_addr constant [8 x i8] c"Option<\00"
@.str92 = private unnamed_addr constant [2 x i8] c">\00"
@.str93 = private unnamed_addr constant [9 x i8] c"TyResult\00"
@.str94 = private unnamed_addr constant [8 x i8] c"Result<\00"
@.str95 = private unnamed_addr constant [2 x i8] c",\00"
@.str96 = private unnamed_addr constant [2 x i8] c">\00"
@.str97 = private unnamed_addr constant [6 x i8] c"TyMap\00"
@.str98 = private unnamed_addr constant [5 x i8] c"Map<\00"
@.str99 = private unnamed_addr constant [2 x i8] c",\00"
@.str100 = private unnamed_addr constant [2 x i8] c">\00"
@.str101 = private unnamed_addr constant [6 x i8] c"TyPtr\00"
@.str102 = private unnamed_addr constant [2 x i8] c"*\00"
@.str103 = private unnamed_addr constant [6 x i8] c"TyRef\00"
@.str104 = private unnamed_addr constant [2 x i8] c"&\00"
@.str105 = private unnamed_addr constant [9 x i8] c"TyRefMut\00"
@.str106 = private unnamed_addr constant [6 x i8] c"&mut \00"
@.str107 = private unnamed_addr constant [5 x i8] c"TyFn\00"
@.str108 = private unnamed_addr constant [4 x i8] c"Fn(\00"
@.str109 = private unnamed_addr constant [2 x i8] c",\00"
@.str110 = private unnamed_addr constant [4 x i8] c")->\00"
@.str111 = private unnamed_addr constant [6 x i8] c"TyDyn\00"
@.str112 = private unnamed_addr constant [5 x i8] c"dyn \00"
@.str113 = private unnamed_addr constant [9 x i8] c"TyStruct\00"
@.str114 = private unnamed_addr constant [7 x i8] c"TyEnum\00"
@.str115 = private unnamed_addr constant [2 x i8] c"<\00"
@.str116 = private unnamed_addr constant [2 x i8] c",\00"
@.str117 = private unnamed_addr constant [2 x i8] c">\00"
@.str118 = private unnamed_addr constant [10 x i8] c"TyGeneric\00"
@.str119 = private unnamed_addr constant [8 x i8] c"TySized\00"
@.str120 = private unnamed_addr constant [2 x i8] c"?\00"
@.str121 = private unnamed_addr constant [1 x i8] c"\00"
@.str122 = private unnamed_addr constant [4 x i8] c"int\00"
@.str123 = private unnamed_addr constant [6 x i8] c"float\00"
@.str124 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str125 = private unnamed_addr constant [7 x i8] c"String\00"
@.str126 = private unnamed_addr constant [5 x i8] c"char\00"
@.str127 = private unnamed_addr constant [5 x i8] c"void\00"
@.str128 = private unnamed_addr constant [3 x i8] c"()\00"
@.str129 = private unnamed_addr constant [5 x i8] c"Self\00"
@.str130 = private unnamed_addr constant [2 x i8] c"*\00"
@.str131 = private unnamed_addr constant [6 x i8] c"&mut \00"
@.str132 = private unnamed_addr constant [2 x i8] c"&\00"
@.str133 = private unnamed_addr constant [5 x i8] c"dyn \00"
@.str134 = private unnamed_addr constant [4 x i8] c"Fn(\00"
@.str135 = private unnamed_addr constant [1 x i8] c"\00"
@.str136 = private unnamed_addr constant [3 x i8] c"->\00"
@.str137 = private unnamed_addr constant [2 x i8] c">\00"
@.str138 = private unnamed_addr constant [2 x i8] c"<\00"
@.str139 = private unnamed_addr constant [6 x i8] c"Array\00"
@.str140 = private unnamed_addr constant [7 x i8] c"Option\00"
@.str141 = private unnamed_addr constant [7 x i8] c"Result\00"
@.str142 = private unnamed_addr constant [4 x i8] c"Map\00"
@.str143 = private unnamed_addr constant [6 x i8] c"Array\00"
@.str144 = private unnamed_addr constant [7 x i8] c"Option\00"
@.str145 = private unnamed_addr constant [7 x i8] c"Result\00"
@.str146 = private unnamed_addr constant [4 x i8] c"Map\00"
@.str147 = private unnamed_addr constant [7 x i8] c"number\00"
@.str148 = private unnamed_addr constant [2 x i8] c".\00"
@.str149 = private unnamed_addr constant [7 x i8] c"string\00"
@.str150 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str151 = private unnamed_addr constant [5 x i8] c"char\00"
@.str152 = private unnamed_addr constant [6 x i8] c"array\00"
@.str153 = private unnamed_addr constant [6 x i8] c"TyInt\00"
@.str154 = private unnamed_addr constant [8 x i8] c"TySized\00"
@.str155 = private unnamed_addr constant [4 x i8] c"f32\00"
@.str156 = private unnamed_addr constant [8 x i8] c"TyFloat\00"
@.str157 = private unnamed_addr constant [8 x i8] c"TySized\00"
@.str158 = private unnamed_addr constant [4 x i8] c"f32\00"
@.str159 = private unnamed_addr constant [6 x i8] c"TyInt\00"
@.str160 = private unnamed_addr constant [1 x i8] c"\00"
@.str161 = private unnamed_addr constant [7 x i8] c"TyUnit\00"
@.str162 = private unnamed_addr constant [1 x i8] c"\00"
@.str163 = private unnamed_addr constant [10 x i8] c"TyUnknown\00"
@.str164 = private unnamed_addr constant [1 x i8] c"\00"
@.str165 = private unnamed_addr constant [8 x i8] c"AND_AND\00"
@.str166 = private unnamed_addr constant [6 x i8] c"OR_OR\00"
@.str167 = private unnamed_addr constant [4 x i8] c"AND\00"
@.str168 = private unnamed_addr constant [3 x i8] c"OR\00"
@.str169 = private unnamed_addr constant [7 x i8] c"TyBool\00"
@.str170 = private unnamed_addr constant [7 x i8] c"TyBool\00"
@.str171 = private unnamed_addr constant [12 x i8] c"EQUAL_EQUAL\00"
@.str172 = private unnamed_addr constant [10 x i8] c"NOT_EQUAL\00"
@.str173 = private unnamed_addr constant [5 x i8] c"LESS\00"
@.str174 = private unnamed_addr constant [8 x i8] c"GREATER\00"
@.str175 = private unnamed_addr constant [11 x i8] c"LESS_EQUAL\00"
@.str176 = private unnamed_addr constant [14 x i8] c"GREATER_EQUAL\00"
@.str177 = private unnamed_addr constant [5 x i8] c"PIPE\00"
@.str178 = private unnamed_addr constant [4 x i8] c"AMP\00"
@.str179 = private unnamed_addr constant [6 x i8] c"CARET\00"
@.str180 = private unnamed_addr constant [11 x i8] c"SHIFT_LEFT\00"
@.str181 = private unnamed_addr constant [12 x i8] c"SHIFT_RIGHT\00"
@.str182 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str183 = private unnamed_addr constant [9 x i8] c"TyString\00"
@.str184 = private unnamed_addr constant [9 x i8] c"TyString\00"
@.str185 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str186 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str187 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str188 = private unnamed_addr constant [6 x i8] c"SLASH\00"
@.str189 = private unnamed_addr constant [8 x i8] c"PERCENT\00"
@.str190 = private unnamed_addr constant [6 x i8] c"POWER\00"
@.str191 = private unnamed_addr constant [10 x i8] c"TyGeneric\00"
@.str192 = private unnamed_addr constant [8 x i8] c"TyArray\00"
@.str193 = private unnamed_addr constant [9 x i8] c"TyOption\00"
@.str194 = private unnamed_addr constant [6 x i8] c"TyPtr\00"
@.str195 = private unnamed_addr constant [6 x i8] c"TyRef\00"
@.str196 = private unnamed_addr constant [9 x i8] c"TyRefMut\00"
@.str197 = private unnamed_addr constant [9 x i8] c"TyResult\00"
@.str198 = private unnamed_addr constant [6 x i8] c"TyMap\00"
@.str199 = private unnamed_addr constant [5 x i8] c"TyFn\00"
@.str200 = private unnamed_addr constant [9 x i8] c"TyStruct\00"
@.str201 = private unnamed_addr constant [7 x i8] c"TyEnum\00"
@.str202 = private unnamed_addr constant [10 x i8] c"TyUnknown\00"
@.str203 = private unnamed_addr constant [10 x i8] c"TyUnknown\00"
@.str204 = private unnamed_addr constant [6 x i8] c"TyDyn\00"
@.str205 = private unnamed_addr constant [6 x i8] c"TyDyn\00"
@.str206 = private unnamed_addr constant [10 x i8] c"TyGeneric\00"
@.str207 = private unnamed_addr constant [10 x i8] c"TyGeneric\00"
@.str208 = private unnamed_addr constant [8 x i8] c"TyArray\00"
@.str209 = private unnamed_addr constant [9 x i8] c"TyOption\00"
@.str210 = private unnamed_addr constant [6 x i8] c"TyPtr\00"
@.str211 = private unnamed_addr constant [6 x i8] c"TyRef\00"
@.str212 = private unnamed_addr constant [9 x i8] c"TyRefMut\00"
@.str213 = private unnamed_addr constant [9 x i8] c"TyResult\00"
@.str214 = private unnamed_addr constant [6 x i8] c"TyMap\00"
@.str215 = private unnamed_addr constant [5 x i8] c"TyFn\00"
@.str216 = private unnamed_addr constant [9 x i8] c"TyStruct\00"
@.str217 = private unnamed_addr constant [7 x i8] c"TyEnum\00"
@.str218 = private unnamed_addr constant [4 x i8] c"int\00"
@.str219 = private unnamed_addr constant [6 x i8] c"float\00"
@.str220 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str221 = private unnamed_addr constant [7 x i8] c"String\00"
@.str222 = private unnamed_addr constant [5 x i8] c"char\00"
@.str223 = private unnamed_addr constant [5 x i8] c"void\00"
@.str224 = private unnamed_addr constant [3 x i8] c"i8\00"
@.str225 = private unnamed_addr constant [4 x i8] c"i16\00"
@.str226 = private unnamed_addr constant [4 x i8] c"i32\00"
@.str227 = private unnamed_addr constant [4 x i8] c"i64\00"
@.str228 = private unnamed_addr constant [3 x i8] c"u8\00"
@.str229 = private unnamed_addr constant [4 x i8] c"u16\00"
@.str230 = private unnamed_addr constant [4 x i8] c"u32\00"
@.str231 = private unnamed_addr constant [4 x i8] c"u64\00"
@.str232 = private unnamed_addr constant [4 x i8] c"f32\00"
@.str233 = private unnamed_addr constant [6 x i8] c"usize\00"
@.str234 = private unnamed_addr constant [6 x i8] c"Array\00"
@.str235 = private unnamed_addr constant [7 x i8] c"Option\00"
@.str236 = private unnamed_addr constant [7 x i8] c"Result\00"
@.str237 = private unnamed_addr constant [4 x i8] c"Map\00"
@.str238 = private unnamed_addr constant [14 x i8] c"StringBuilder\00"
@.str239 = private unnamed_addr constant [9 x i8] c"Iterator\00"
@.str240 = private unnamed_addr constant [8 x i8] c"Channel\00"
@.str241 = private unnamed_addr constant [5 x i8] c"File\00"
@__nyx_test_failed = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: script.nx

%nyx_string = type { i64, i64, i8* }
%ASTNode = type { %nyx_string*, { i64, i8* }* }
declare %nyx_string* @nyx_string_from_cstr(i8*)
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
declare %nyx_string* @nyx_tcp_read_exact(i64, i64)
declare %nyx_string* @nyx_tcp_read_line(i64)
declare i64 @nyx_tcp_write(i64, %nyx_string*)
declare void @nyx_tcp_close(i64)
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
declare i8* @nyx_channel_new(i64)
declare void @nyx_channel_send(i8*, i64)
declare i64 @nyx_channel_recv(i8*)
declare i64 @nyx_channel_try_recv(i8*)
declare void @nyx_channel_destroy(i8*)
declare void @nyx_yield()
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
declare i64 @nyx_tls_write(i64, %nyx_string*)
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
declare { i64, i8* }* @nyx_string_split(%nyx_string*, %nyx_string*)
declare %nyx_string* @nyx_read_line()
declare void @nyx_raw_mode_enter()
declare void @nyx_raw_mode_exit()
declare i64 @nyx_read_byte()
declare i64 @nyx_term_cols()
declare i64 @nyx_term_rows()
declare void @nyx_print_no_newline(%nyx_string*)
declare i64 @nyx_string_to_int(%nyx_string*)
declare double @nyx_string_to_float(%nyx_string*)
declare %nyx_string* @nyx_string_trim(%nyx_string*)
declare %nyx_string* @nyx_string_to_upper(%nyx_string*)
declare %nyx_string* @nyx_string_to_lower(%nyx_string*)
declare %nyx_string* @nyx_string_replace(%nyx_string*, %nyx_string*, %nyx_string*)
declare %nyx_string* @nyx_string_repeat(%nyx_string*, i64)
declare i1 @nyx_string_starts_with(%nyx_string*, %nyx_string*)
declare i1 @nyx_string_ends_with(%nyx_string*, %nyx_string*)
declare i64 @nyx_string_index_of(%nyx_string*, %nyx_string*)
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
  %3 = call %nyx_string* @nyx_string_from_cstr(i8* %2)
  %4 = ptrtoint %nyx_string* %3 to i64
  call void @nyx_array_push({ i64, i8* }* %1, i64 %4)
  ret { i64, i8* }* %1
}

define { i64, i8* }* @ty_float(
) {
  %5 = call { i64, i8* }* @nyx_array_new_ptr()
  %6 = getelementptr [8 x i8], [8 x i8]* @.str1, i32 0, i32 0
  %7 = call %nyx_string* @nyx_string_from_cstr(i8* %6)
  %8 = ptrtoint %nyx_string* %7 to i64
  call void @nyx_array_push({ i64, i8* }* %5, i64 %8)
  ret { i64, i8* }* %5
}

define { i64, i8* }* @ty_bool(
) {
  %9 = call { i64, i8* }* @nyx_array_new_ptr()
  %10 = getelementptr [7 x i8], [7 x i8]* @.str2, i32 0, i32 0
  %11 = call %nyx_string* @nyx_string_from_cstr(i8* %10)
  %12 = ptrtoint %nyx_string* %11 to i64
  call void @nyx_array_push({ i64, i8* }* %9, i64 %12)
  ret { i64, i8* }* %9
}

define { i64, i8* }* @ty_string(
) {
  %13 = call { i64, i8* }* @nyx_array_new_ptr()
  %14 = getelementptr [9 x i8], [9 x i8]* @.str3, i32 0, i32 0
  %15 = call %nyx_string* @nyx_string_from_cstr(i8* %14)
  %16 = ptrtoint %nyx_string* %15 to i64
  call void @nyx_array_push({ i64, i8* }* %13, i64 %16)
  ret { i64, i8* }* %13
}

define { i64, i8* }* @ty_char(
) {
  %17 = call { i64, i8* }* @nyx_array_new_ptr()
  %18 = getelementptr [7 x i8], [7 x i8]* @.str4, i32 0, i32 0
  %19 = call %nyx_string* @nyx_string_from_cstr(i8* %18)
  %20 = ptrtoint %nyx_string* %19 to i64
  call void @nyx_array_push({ i64, i8* }* %17, i64 %20)
  ret { i64, i8* }* %17
}

define { i64, i8* }* @ty_unit(
) {
  %21 = call { i64, i8* }* @nyx_array_new_ptr()
  %22 = getelementptr [7 x i8], [7 x i8]* @.str5, i32 0, i32 0
  %23 = call %nyx_string* @nyx_string_from_cstr(i8* %22)
  %24 = ptrtoint %nyx_string* %23 to i64
  call void @nyx_array_push({ i64, i8* }* %21, i64 %24)
  ret { i64, i8* }* %21
}

define { i64, i8* }* @ty_unknown(
) {
  %25 = call { i64, i8* }* @nyx_array_new_ptr()
  %26 = getelementptr [10 x i8], [10 x i8]* @.str6, i32 0, i32 0
  %27 = call %nyx_string* @nyx_string_from_cstr(i8* %26)
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
  %31 = call %nyx_string* @nyx_string_from_cstr(i8* %30)
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
  %37 = call %nyx_string* @nyx_string_from_cstr(i8* %36)
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
  %43 = call %nyx_string* @nyx_string_from_cstr(i8* %42)
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
  %51 = call %nyx_string* @nyx_string_from_cstr(i8* %50)
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
  %59 = call %nyx_string* @nyx_string_from_cstr(i8* %58)
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
  %65 = call %nyx_string* @nyx_string_from_cstr(i8* %64)
  %66 = ptrtoint %nyx_string* %65 to i64
  call void @nyx_array_push({ i64, i8* }* %63, i64 %66)
  %67 = load { i64, i8* }*, { i64, i8* }** %inner.ptr
  %68 = bitcast { i64, i8* }* %67 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %63, i8* %68)
  ret { i64, i8* }* %63
}

define { i64, i8* }* @ty_ref_mut(
{ i64, i8* }* %inner.param) {
  %inner.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %inner.param, { i64, i8* }** %inner.ptr
  %69 = call { i64, i8* }* @nyx_array_new_ptr()
  %70 = getelementptr [9 x i8], [9 x i8]* @.str13, i32 0, i32 0
  %71 = call %nyx_string* @nyx_string_from_cstr(i8* %70)
  %72 = ptrtoint %nyx_string* %71 to i64
  call void @nyx_array_push({ i64, i8* }* %69, i64 %72)
  %73 = load { i64, i8* }*, { i64, i8* }** %inner.ptr
  %74 = bitcast { i64, i8* }* %73 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %69, i8* %74)
  ret { i64, i8* }* %69
}

define { i64, i8* }* @ty_fn(
{ i64, i8* }* %params.param, { i64, i8* }* %ret.param) {
  %params.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %params.param, { i64, i8* }** %params.ptr
  %ret.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ret.param, { i64, i8* }** %ret.ptr
  %75 = call { i64, i8* }* @nyx_array_new_ptr()
  %76 = getelementptr [5 x i8], [5 x i8]* @.str14, i32 0, i32 0
  %77 = call %nyx_string* @nyx_string_from_cstr(i8* %76)
  %78 = ptrtoint %nyx_string* %77 to i64
  call void @nyx_array_push({ i64, i8* }* %75, i64 %78)
  %79 = load { i64, i8* }*, { i64, i8* }** %params.ptr
  %80 = bitcast { i64, i8* }* %79 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %75, i8* %80)
  %81 = load { i64, i8* }*, { i64, i8* }** %ret.ptr
  %82 = bitcast { i64, i8* }* %81 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %75, i8* %82)
  ret { i64, i8* }* %75
}

define { i64, i8* }* @ty_dyn(
%nyx_string* %trait_name.param) {
  %trait_name.ptr = alloca %nyx_string*
  store %nyx_string* %trait_name.param, %nyx_string** %trait_name.ptr
  %83 = call { i64, i8* }* @nyx_array_new_ptr()
  %84 = getelementptr [6 x i8], [6 x i8]* @.str15, i32 0, i32 0
  %85 = call %nyx_string* @nyx_string_from_cstr(i8* %84)
  %86 = ptrtoint %nyx_string* %85 to i64
  call void @nyx_array_push({ i64, i8* }* %83, i64 %86)
  %87 = load %nyx_string*, %nyx_string** %trait_name.ptr
  %88 = ptrtoint %nyx_string* %87 to i64
  call void @nyx_array_push({ i64, i8* }* %83, i64 %88)
  ret { i64, i8* }* %83
}

define { i64, i8* }* @ty_struct_ty(
%nyx_string* %name.param, { i64, i8* }* %args.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %args.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %args.param, { i64, i8* }** %args.ptr
  %89 = call { i64, i8* }* @nyx_array_new_ptr()
  %90 = getelementptr [9 x i8], [9 x i8]* @.str16, i32 0, i32 0
  %91 = call %nyx_string* @nyx_string_from_cstr(i8* %90)
  %92 = ptrtoint %nyx_string* %91 to i64
  call void @nyx_array_push({ i64, i8* }* %89, i64 %92)
  %93 = load %nyx_string*, %nyx_string** %name.ptr
  %94 = ptrtoint %nyx_string* %93 to i64
  call void @nyx_array_push({ i64, i8* }* %89, i64 %94)
  %95 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %96 = bitcast { i64, i8* }* %95 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %89, i8* %96)
  ret { i64, i8* }* %89
}

define { i64, i8* }* @ty_enum_ty(
%nyx_string* %name.param, { i64, i8* }* %args.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %args.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %args.param, { i64, i8* }** %args.ptr
  %97 = call { i64, i8* }* @nyx_array_new_ptr()
  %98 = getelementptr [7 x i8], [7 x i8]* @.str17, i32 0, i32 0
  %99 = call %nyx_string* @nyx_string_from_cstr(i8* %98)
  %100 = ptrtoint %nyx_string* %99 to i64
  call void @nyx_array_push({ i64, i8* }* %97, i64 %100)
  %101 = load %nyx_string*, %nyx_string** %name.ptr
  %102 = ptrtoint %nyx_string* %101 to i64
  call void @nyx_array_push({ i64, i8* }* %97, i64 %102)
  %103 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %104 = bitcast { i64, i8* }* %103 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %97, i8* %104)
  ret { i64, i8* }* %97
}

define { i64, i8* }* @ty_generic(
%nyx_string* %param_name.param) {
  %param_name.ptr = alloca %nyx_string*
  store %nyx_string* %param_name.param, %nyx_string** %param_name.ptr
  %105 = call { i64, i8* }* @nyx_array_new_ptr()
  %106 = getelementptr [10 x i8], [10 x i8]* @.str18, i32 0, i32 0
  %107 = call %nyx_string* @nyx_string_from_cstr(i8* %106)
  %108 = ptrtoint %nyx_string* %107 to i64
  call void @nyx_array_push({ i64, i8* }* %105, i64 %108)
  %109 = load %nyx_string*, %nyx_string** %param_name.ptr
  %110 = ptrtoint %nyx_string* %109 to i64
  call void @nyx_array_push({ i64, i8* }* %105, i64 %110)
  ret { i64, i8* }* %105
}

define { i64, i8* }* @ty_sized(
%nyx_string* %name.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %111 = call { i64, i8* }* @nyx_array_new_ptr()
  %112 = getelementptr [8 x i8], [8 x i8]* @.str19, i32 0, i32 0
  %113 = call %nyx_string* @nyx_string_from_cstr(i8* %112)
  %114 = ptrtoint %nyx_string* %113 to i64
  call void @nyx_array_push({ i64, i8* }* %111, i64 %114)
  %115 = load %nyx_string*, %nyx_string** %name.ptr
  %116 = ptrtoint %nyx_string* %115 to i64
  call void @nyx_array_push({ i64, i8* }* %111, i64 %116)
  ret { i64, i8* }* %111
}

define %nyx_string* @ty_kind(
{ i64, i8* }* %t.param) {
  %t.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %t.param, { i64, i8* }** %t.ptr
  %117 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %118 = call i64 @nyx_array_length({ i64, i8* }* %117)
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %then0, label %else1
then0:
  %120 = getelementptr [10 x i8], [10 x i8]* @.str20, i32 0, i32 0
  %121 = call %nyx_string* @nyx_string_from_cstr(i8* %120)
  ret %nyx_string* %121
else1:
  br label %merge2
merge2:
  %122 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %123 = call i64 @nyx_array_get({ i64, i8* }* %122, i64 0)
  %124 = inttoptr i64 %123 to %nyx_string*
  %125 = alloca %nyx_string*
  store %nyx_string* %124, %nyx_string** %125
  %126 = load %nyx_string*, %nyx_string** %125
  ret %nyx_string* %126
}

define i1 @ty_is_unknown(
{ i64, i8* }* %t.param) {
  %t.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %t.param, { i64, i8* }** %t.ptr
  %127 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %128 = call %nyx_string* @ty_kind({ i64, i8* }* %127)
  %129 = getelementptr [10 x i8], [10 x i8]* @.str21, i32 0, i32 0
  %130 = call %nyx_string* @nyx_string_from_cstr(i8* %129)
  %131 = call i8* @nyx_string_to_cstr(%nyx_string* %128)
  %132 = call i8* @nyx_string_to_cstr(%nyx_string* %130)
  %133 = call i32 @strcmp(i8* %131, i8* %132)
  %134 = icmp eq i32 %133, 0
  ret i1 %134
}

define internal i1 @is_sized_name(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %135 = load %nyx_string*, %nyx_string** %s.ptr
  %136 = getelementptr [3 x i8], [3 x i8]* @.str22, i32 0, i32 0
  %137 = call %nyx_string* @nyx_string_from_cstr(i8* %136)
  %138 = call i8* @nyx_string_to_cstr(%nyx_string* %135)
  %139 = call i8* @nyx_string_to_cstr(%nyx_string* %137)
  %140 = call i32 @strcmp(i8* %138, i8* %139)
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %then3, label %else4
then3:
  ret i1 1
else4:
  br label %merge5
merge5:
  %142 = load %nyx_string*, %nyx_string** %s.ptr
  %143 = getelementptr [4 x i8], [4 x i8]* @.str23, i32 0, i32 0
  %144 = call %nyx_string* @nyx_string_from_cstr(i8* %143)
  %145 = call i8* @nyx_string_to_cstr(%nyx_string* %142)
  %146 = call i8* @nyx_string_to_cstr(%nyx_string* %144)
  %147 = call i32 @strcmp(i8* %145, i8* %146)
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %then6, label %else7
then6:
  ret i1 1
else7:
  br label %merge8
merge8:
  %149 = load %nyx_string*, %nyx_string** %s.ptr
  %150 = getelementptr [4 x i8], [4 x i8]* @.str24, i32 0, i32 0
  %151 = call %nyx_string* @nyx_string_from_cstr(i8* %150)
  %152 = call i8* @nyx_string_to_cstr(%nyx_string* %149)
  %153 = call i8* @nyx_string_to_cstr(%nyx_string* %151)
  %154 = call i32 @strcmp(i8* %152, i8* %153)
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %then9, label %else10
then9:
  ret i1 1
else10:
  br label %merge11
merge11:
  %156 = load %nyx_string*, %nyx_string** %s.ptr
  %157 = getelementptr [4 x i8], [4 x i8]* @.str25, i32 0, i32 0
  %158 = call %nyx_string* @nyx_string_from_cstr(i8* %157)
  %159 = call i8* @nyx_string_to_cstr(%nyx_string* %156)
  %160 = call i8* @nyx_string_to_cstr(%nyx_string* %158)
  %161 = call i32 @strcmp(i8* %159, i8* %160)
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %then12, label %else13
then12:
  ret i1 1
else13:
  br label %merge14
merge14:
  %163 = load %nyx_string*, %nyx_string** %s.ptr
  %164 = getelementptr [3 x i8], [3 x i8]* @.str26, i32 0, i32 0
  %165 = call %nyx_string* @nyx_string_from_cstr(i8* %164)
  %166 = call i8* @nyx_string_to_cstr(%nyx_string* %163)
  %167 = call i8* @nyx_string_to_cstr(%nyx_string* %165)
  %168 = call i32 @strcmp(i8* %166, i8* %167)
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %then15, label %else16
then15:
  ret i1 1
else16:
  br label %merge17
merge17:
  %170 = load %nyx_string*, %nyx_string** %s.ptr
  %171 = getelementptr [4 x i8], [4 x i8]* @.str27, i32 0, i32 0
  %172 = call %nyx_string* @nyx_string_from_cstr(i8* %171)
  %173 = call i8* @nyx_string_to_cstr(%nyx_string* %170)
  %174 = call i8* @nyx_string_to_cstr(%nyx_string* %172)
  %175 = call i32 @strcmp(i8* %173, i8* %174)
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %then18, label %else19
then18:
  ret i1 1
else19:
  br label %merge20
merge20:
  %177 = load %nyx_string*, %nyx_string** %s.ptr
  %178 = getelementptr [4 x i8], [4 x i8]* @.str28, i32 0, i32 0
  %179 = call %nyx_string* @nyx_string_from_cstr(i8* %178)
  %180 = call i8* @nyx_string_to_cstr(%nyx_string* %177)
  %181 = call i8* @nyx_string_to_cstr(%nyx_string* %179)
  %182 = call i32 @strcmp(i8* %180, i8* %181)
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %then21, label %else22
then21:
  ret i1 1
else22:
  br label %merge23
merge23:
  %184 = load %nyx_string*, %nyx_string** %s.ptr
  %185 = getelementptr [4 x i8], [4 x i8]* @.str29, i32 0, i32 0
  %186 = call %nyx_string* @nyx_string_from_cstr(i8* %185)
  %187 = call i8* @nyx_string_to_cstr(%nyx_string* %184)
  %188 = call i8* @nyx_string_to_cstr(%nyx_string* %186)
  %189 = call i32 @strcmp(i8* %187, i8* %188)
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %then24, label %else25
then24:
  ret i1 1
else25:
  br label %merge26
merge26:
  %191 = load %nyx_string*, %nyx_string** %s.ptr
  %192 = getelementptr [4 x i8], [4 x i8]* @.str30, i32 0, i32 0
  %193 = call %nyx_string* @nyx_string_from_cstr(i8* %192)
  %194 = call i8* @nyx_string_to_cstr(%nyx_string* %191)
  %195 = call i8* @nyx_string_to_cstr(%nyx_string* %193)
  %196 = call i32 @strcmp(i8* %194, i8* %195)
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %then27, label %else28
then27:
  ret i1 1
else28:
  br label %merge29
merge29:
  %198 = load %nyx_string*, %nyx_string** %s.ptr
  %199 = getelementptr [6 x i8], [6 x i8]* @.str31, i32 0, i32 0
  %200 = call %nyx_string* @nyx_string_from_cstr(i8* %199)
  %201 = call i8* @nyx_string_to_cstr(%nyx_string* %198)
  %202 = call i8* @nyx_string_to_cstr(%nyx_string* %200)
  %203 = call i32 @strcmp(i8* %201, i8* %202)
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %then30, label %else31
then30:
  ret i1 1
else31:
  br label %merge32
merge32:
  ret i1 0
}

define i1 @ty_eq(
{ i64, i8* }* %a.param, { i64, i8* }* %b.param) {
  %a.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %a.param, { i64, i8* }** %a.ptr
  %b.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %b.param, { i64, i8* }** %b.ptr
  %205 = load { i64, i8* }*, { i64, i8* }** %a.ptr
  %206 = call %nyx_string* @ty_kind({ i64, i8* }* %205)
  %207 = alloca %nyx_string*
  store %nyx_string* %206, %nyx_string** %207
  %208 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %209 = call %nyx_string* @ty_kind({ i64, i8* }* %208)
  %210 = alloca %nyx_string*
  store %nyx_string* %209, %nyx_string** %210
  %211 = load %nyx_string*, %nyx_string** %207
  %212 = getelementptr [10 x i8], [10 x i8]* @.str32, i32 0, i32 0
  %213 = call %nyx_string* @nyx_string_from_cstr(i8* %212)
  %214 = call i8* @nyx_string_to_cstr(%nyx_string* %211)
  %215 = call i8* @nyx_string_to_cstr(%nyx_string* %213)
  %216 = call i32 @strcmp(i8* %214, i8* %215)
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %then33, label %else34
then33:
  ret i1 1
else34:
  br label %merge35
merge35:
  %218 = load %nyx_string*, %nyx_string** %210
  %219 = getelementptr [10 x i8], [10 x i8]* @.str33, i32 0, i32 0
  %220 = call %nyx_string* @nyx_string_from_cstr(i8* %219)
  %221 = call i8* @nyx_string_to_cstr(%nyx_string* %218)
  %222 = call i8* @nyx_string_to_cstr(%nyx_string* %220)
  %223 = call i32 @strcmp(i8* %221, i8* %222)
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %then36, label %else37
then36:
  ret i1 1
else37:
  br label %merge38
merge38:
  %225 = load %nyx_string*, %nyx_string** %207
  %226 = getelementptr [6 x i8], [6 x i8]* @.str34, i32 0, i32 0
  %227 = call %nyx_string* @nyx_string_from_cstr(i8* %226)
  %228 = call i8* @nyx_string_to_cstr(%nyx_string* %225)
  %229 = call i8* @nyx_string_to_cstr(%nyx_string* %227)
  %230 = call i32 @strcmp(i8* %228, i8* %229)
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %then39, label %else40
then39:
  ret i1 1
else40:
  br label %merge41
merge41:
  %232 = load %nyx_string*, %nyx_string** %210
  %233 = getelementptr [6 x i8], [6 x i8]* @.str35, i32 0, i32 0
  %234 = call %nyx_string* @nyx_string_from_cstr(i8* %233)
  %235 = call i8* @nyx_string_to_cstr(%nyx_string* %232)
  %236 = call i8* @nyx_string_to_cstr(%nyx_string* %234)
  %237 = call i32 @strcmp(i8* %235, i8* %236)
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %then42, label %else43
then42:
  ret i1 1
else43:
  br label %merge44
merge44:
  %239 = load %nyx_string*, %nyx_string** %207
  %240 = getelementptr [10 x i8], [10 x i8]* @.str36, i32 0, i32 0
  %241 = call %nyx_string* @nyx_string_from_cstr(i8* %240)
  %242 = call i8* @nyx_string_to_cstr(%nyx_string* %239)
  %243 = call i8* @nyx_string_to_cstr(%nyx_string* %241)
  %244 = call i32 @strcmp(i8* %242, i8* %243)
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %then45, label %else46
then45:
  ret i1 1
else46:
  br label %merge47
merge47:
  %246 = load %nyx_string*, %nyx_string** %210
  %247 = getelementptr [10 x i8], [10 x i8]* @.str37, i32 0, i32 0
  %248 = call %nyx_string* @nyx_string_from_cstr(i8* %247)
  %249 = call i8* @nyx_string_to_cstr(%nyx_string* %246)
  %250 = call i8* @nyx_string_to_cstr(%nyx_string* %248)
  %251 = call i32 @strcmp(i8* %249, i8* %250)
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %then48, label %else49
then48:
  ret i1 1
else49:
  br label %merge50
merge50:
  %253 = alloca i1
  store i1 false, i1* %253
  %254 = load %nyx_string*, %nyx_string** %207
  %255 = getelementptr [6 x i8], [6 x i8]* @.str38, i32 0, i32 0
  %256 = call %nyx_string* @nyx_string_from_cstr(i8* %255)
  %257 = call i8* @nyx_string_to_cstr(%nyx_string* %254)
  %258 = call i8* @nyx_string_to_cstr(%nyx_string* %256)
  %259 = call i32 @strcmp(i8* %257, i8* %258)
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %sc_and_rhs51, label %sc_and_end52
sc_and_rhs51:
  %261 = load %nyx_string*, %nyx_string** %210
  %262 = getelementptr [8 x i8], [8 x i8]* @.str39, i32 0, i32 0
  %263 = call %nyx_string* @nyx_string_from_cstr(i8* %262)
  %264 = call i8* @nyx_string_to_cstr(%nyx_string* %261)
  %265 = call i8* @nyx_string_to_cstr(%nyx_string* %263)
  %266 = call i32 @strcmp(i8* %264, i8* %265)
  %267 = icmp eq i32 %266, 0
  store i1 %267, i1* %253
  br label %sc_and_end52
sc_and_end52:
  %268 = load i1, i1* %253
  br i1 %268, label %then53, label %else54
then53:
  %269 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %270 = call i64 @nyx_array_get({ i64, i8* }* %269, i64 1)
  %271 = inttoptr i64 %270 to %nyx_string*
  %272 = alloca %nyx_string*
  store %nyx_string* %271, %nyx_string** %272
  %273 = load %nyx_string*, %nyx_string** %272
  %274 = call i1 @is_sized_name(%nyx_string* %273)
  br i1 %274, label %then56, label %else57
then56:
  %275 = load %nyx_string*, %nyx_string** %272
  %276 = getelementptr [4 x i8], [4 x i8]* @.str40, i32 0, i32 0
  %277 = call %nyx_string* @nyx_string_from_cstr(i8* %276)
  %278 = call i8* @nyx_string_to_cstr(%nyx_string* %275)
  %279 = call i8* @nyx_string_to_cstr(%nyx_string* %277)
  %280 = call i32 @strcmp(i8* %278, i8* %279)
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %then59, label %else60
then59:
  ret i1 1
else60:
  br label %merge61
merge61:
  br label %merge58
else57:
  br label %merge58
merge58:
  ret i1 0
else54:
  br label %merge55
merge55:
  %282 = alloca i1
  store i1 false, i1* %282
  %283 = load %nyx_string*, %nyx_string** %210
  %284 = getelementptr [6 x i8], [6 x i8]* @.str41, i32 0, i32 0
  %285 = call %nyx_string* @nyx_string_from_cstr(i8* %284)
  %286 = call i8* @nyx_string_to_cstr(%nyx_string* %283)
  %287 = call i8* @nyx_string_to_cstr(%nyx_string* %285)
  %288 = call i32 @strcmp(i8* %286, i8* %287)
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %sc_and_rhs62, label %sc_and_end63
sc_and_rhs62:
  %290 = load %nyx_string*, %nyx_string** %207
  %291 = getelementptr [8 x i8], [8 x i8]* @.str42, i32 0, i32 0
  %292 = call %nyx_string* @nyx_string_from_cstr(i8* %291)
  %293 = call i8* @nyx_string_to_cstr(%nyx_string* %290)
  %294 = call i8* @nyx_string_to_cstr(%nyx_string* %292)
  %295 = call i32 @strcmp(i8* %293, i8* %294)
  %296 = icmp eq i32 %295, 0
  store i1 %296, i1* %282
  br label %sc_and_end63
sc_and_end63:
  %297 = load i1, i1* %282
  br i1 %297, label %then64, label %else65
then64:
  %298 = load { i64, i8* }*, { i64, i8* }** %a.ptr
  %299 = call i64 @nyx_array_get({ i64, i8* }* %298, i64 1)
  %300 = inttoptr i64 %299 to %nyx_string*
  %301 = alloca %nyx_string*
  store %nyx_string* %300, %nyx_string** %301
  %302 = load %nyx_string*, %nyx_string** %301
  %303 = call i1 @is_sized_name(%nyx_string* %302)
  br i1 %303, label %then67, label %else68
then67:
  %304 = load %nyx_string*, %nyx_string** %301
  %305 = getelementptr [4 x i8], [4 x i8]* @.str43, i32 0, i32 0
  %306 = call %nyx_string* @nyx_string_from_cstr(i8* %305)
  %307 = call i8* @nyx_string_to_cstr(%nyx_string* %304)
  %308 = call i8* @nyx_string_to_cstr(%nyx_string* %306)
  %309 = call i32 @strcmp(i8* %307, i8* %308)
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %then70, label %else71
then70:
  ret i1 1
else71:
  br label %merge72
merge72:
  br label %merge69
else68:
  br label %merge69
merge69:
  ret i1 0
else65:
  br label %merge66
merge66:
  %311 = alloca i1
  store i1 false, i1* %311
  %312 = load %nyx_string*, %nyx_string** %207
  %313 = getelementptr [8 x i8], [8 x i8]* @.str44, i32 0, i32 0
  %314 = call %nyx_string* @nyx_string_from_cstr(i8* %313)
  %315 = call i8* @nyx_string_to_cstr(%nyx_string* %312)
  %316 = call i8* @nyx_string_to_cstr(%nyx_string* %314)
  %317 = call i32 @strcmp(i8* %315, i8* %316)
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %sc_and_rhs73, label %sc_and_end74
sc_and_rhs73:
  %319 = load %nyx_string*, %nyx_string** %210
  %320 = getelementptr [8 x i8], [8 x i8]* @.str45, i32 0, i32 0
  %321 = call %nyx_string* @nyx_string_from_cstr(i8* %320)
  %322 = call i8* @nyx_string_to_cstr(%nyx_string* %319)
  %323 = call i8* @nyx_string_to_cstr(%nyx_string* %321)
  %324 = call i32 @strcmp(i8* %322, i8* %323)
  %325 = icmp eq i32 %324, 0
  store i1 %325, i1* %311
  br label %sc_and_end74
sc_and_end74:
  %326 = load i1, i1* %311
  br i1 %326, label %then75, label %else76
then75:
  %327 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %328 = call i64 @nyx_array_get({ i64, i8* }* %327, i64 1)
  %329 = inttoptr i64 %328 to %nyx_string*
  %330 = alloca %nyx_string*
  store %nyx_string* %329, %nyx_string** %330
  %331 = load %nyx_string*, %nyx_string** %330
  %332 = getelementptr [4 x i8], [4 x i8]* @.str46, i32 0, i32 0
  %333 = call %nyx_string* @nyx_string_from_cstr(i8* %332)
  %334 = call i8* @nyx_string_to_cstr(%nyx_string* %331)
  %335 = call i8* @nyx_string_to_cstr(%nyx_string* %333)
  %336 = call i32 @strcmp(i8* %334, i8* %335)
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %then78, label %else79
then78:
  ret i1 1
else79:
  br label %merge80
merge80:
  ret i1 0
else76:
  br label %merge77
merge77:
  %338 = alloca i1
  store i1 false, i1* %338
  %339 = load %nyx_string*, %nyx_string** %210
  %340 = getelementptr [8 x i8], [8 x i8]* @.str47, i32 0, i32 0
  %341 = call %nyx_string* @nyx_string_from_cstr(i8* %340)
  %342 = call i8* @nyx_string_to_cstr(%nyx_string* %339)
  %343 = call i8* @nyx_string_to_cstr(%nyx_string* %341)
  %344 = call i32 @strcmp(i8* %342, i8* %343)
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %sc_and_rhs81, label %sc_and_end82
sc_and_rhs81:
  %346 = load %nyx_string*, %nyx_string** %207
  %347 = getelementptr [8 x i8], [8 x i8]* @.str48, i32 0, i32 0
  %348 = call %nyx_string* @nyx_string_from_cstr(i8* %347)
  %349 = call i8* @nyx_string_to_cstr(%nyx_string* %346)
  %350 = call i8* @nyx_string_to_cstr(%nyx_string* %348)
  %351 = call i32 @strcmp(i8* %349, i8* %350)
  %352 = icmp eq i32 %351, 0
  store i1 %352, i1* %338
  br label %sc_and_end82
sc_and_end82:
  %353 = load i1, i1* %338
  br i1 %353, label %then83, label %else84
then83:
  %354 = load { i64, i8* }*, { i64, i8* }** %a.ptr
  %355 = call i64 @nyx_array_get({ i64, i8* }* %354, i64 1)
  %356 = inttoptr i64 %355 to %nyx_string*
  %357 = alloca %nyx_string*
  store %nyx_string* %356, %nyx_string** %357
  %358 = load %nyx_string*, %nyx_string** %357
  %359 = getelementptr [4 x i8], [4 x i8]* @.str49, i32 0, i32 0
  %360 = call %nyx_string* @nyx_string_from_cstr(i8* %359)
  %361 = call i8* @nyx_string_to_cstr(%nyx_string* %358)
  %362 = call i8* @nyx_string_to_cstr(%nyx_string* %360)
  %363 = call i32 @strcmp(i8* %361, i8* %362)
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %then86, label %else87
then86:
  ret i1 1
else87:
  br label %merge88
merge88:
  ret i1 0
else84:
  br label %merge85
merge85:
  %365 = alloca i1
  store i1 false, i1* %365
  %366 = load %nyx_string*, %nyx_string** %207
  %367 = getelementptr [6 x i8], [6 x i8]* @.str50, i32 0, i32 0
  %368 = call %nyx_string* @nyx_string_from_cstr(i8* %367)
  %369 = call i8* @nyx_string_to_cstr(%nyx_string* %366)
  %370 = call i8* @nyx_string_to_cstr(%nyx_string* %368)
  %371 = call i32 @strcmp(i8* %369, i8* %370)
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %sc_and_rhs89, label %sc_and_end90
sc_and_rhs89:
  %373 = load %nyx_string*, %nyx_string** %210
  %374 = getelementptr [7 x i8], [7 x i8]* @.str51, i32 0, i32 0
  %375 = call %nyx_string* @nyx_string_from_cstr(i8* %374)
  %376 = call i8* @nyx_string_to_cstr(%nyx_string* %373)
  %377 = call i8* @nyx_string_to_cstr(%nyx_string* %375)
  %378 = call i32 @strcmp(i8* %376, i8* %377)
  %379 = icmp eq i32 %378, 0
  store i1 %379, i1* %365
  br label %sc_and_end90
sc_and_end90:
  %380 = load i1, i1* %365
  br i1 %380, label %then91, label %else92
then91:
  ret i1 1
else92:
  br label %merge93
merge93:
  %381 = alloca i1
  store i1 false, i1* %381
  %382 = load %nyx_string*, %nyx_string** %207
  %383 = getelementptr [7 x i8], [7 x i8]* @.str52, i32 0, i32 0
  %384 = call %nyx_string* @nyx_string_from_cstr(i8* %383)
  %385 = call i8* @nyx_string_to_cstr(%nyx_string* %382)
  %386 = call i8* @nyx_string_to_cstr(%nyx_string* %384)
  %387 = call i32 @strcmp(i8* %385, i8* %386)
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %sc_and_rhs94, label %sc_and_end95
sc_and_rhs94:
  %389 = load %nyx_string*, %nyx_string** %210
  %390 = getelementptr [6 x i8], [6 x i8]* @.str53, i32 0, i32 0
  %391 = call %nyx_string* @nyx_string_from_cstr(i8* %390)
  %392 = call i8* @nyx_string_to_cstr(%nyx_string* %389)
  %393 = call i8* @nyx_string_to_cstr(%nyx_string* %391)
  %394 = call i32 @strcmp(i8* %392, i8* %393)
  %395 = icmp eq i32 %394, 0
  store i1 %395, i1* %381
  br label %sc_and_end95
sc_and_end95:
  %396 = load i1, i1* %381
  br i1 %396, label %then96, label %else97
then96:
  ret i1 1
else97:
  br label %merge98
merge98:
  %397 = load %nyx_string*, %nyx_string** %207
  %398 = load %nyx_string*, %nyx_string** %210
  %399 = call i8* @nyx_string_to_cstr(%nyx_string* %397)
  %400 = call i8* @nyx_string_to_cstr(%nyx_string* %398)
  %401 = call i32 @strcmp(i8* %399, i8* %400)
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %then99, label %else100
then99:
  ret i1 0
else100:
  br label %merge101
merge101:
  %403 = load %nyx_string*, %nyx_string** %207
  %404 = getelementptr [6 x i8], [6 x i8]* @.str54, i32 0, i32 0
  %405 = call %nyx_string* @nyx_string_from_cstr(i8* %404)
  %406 = call i8* @nyx_string_to_cstr(%nyx_string* %403)
  %407 = call i8* @nyx_string_to_cstr(%nyx_string* %405)
  %408 = call i32 @strcmp(i8* %406, i8* %407)
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %then102, label %else103
then102:
  ret i1 1
else103:
  br label %merge104
merge104:
  %410 = load %nyx_string*, %nyx_string** %207
  %411 = getelementptr [8 x i8], [8 x i8]* @.str55, i32 0, i32 0
  %412 = call %nyx_string* @nyx_string_from_cstr(i8* %411)
  %413 = call i8* @nyx_string_to_cstr(%nyx_string* %410)
  %414 = call i8* @nyx_string_to_cstr(%nyx_string* %412)
  %415 = call i32 @strcmp(i8* %413, i8* %414)
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %then105, label %else106
then105:
  ret i1 1
else106:
  br label %merge107
merge107:
  %417 = load %nyx_string*, %nyx_string** %207
  %418 = getelementptr [7 x i8], [7 x i8]* @.str56, i32 0, i32 0
  %419 = call %nyx_string* @nyx_string_from_cstr(i8* %418)
  %420 = call i8* @nyx_string_to_cstr(%nyx_string* %417)
  %421 = call i8* @nyx_string_to_cstr(%nyx_string* %419)
  %422 = call i32 @strcmp(i8* %420, i8* %421)
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %then108, label %else109
then108:
  ret i1 1
else109:
  br label %merge110
merge110:
  %424 = load %nyx_string*, %nyx_string** %207
  %425 = getelementptr [9 x i8], [9 x i8]* @.str57, i32 0, i32 0
  %426 = call %nyx_string* @nyx_string_from_cstr(i8* %425)
  %427 = call i8* @nyx_string_to_cstr(%nyx_string* %424)
  %428 = call i8* @nyx_string_to_cstr(%nyx_string* %426)
  %429 = call i32 @strcmp(i8* %427, i8* %428)
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %then111, label %else112
then111:
  ret i1 1
else112:
  br label %merge113
merge113:
  %431 = load %nyx_string*, %nyx_string** %207
  %432 = getelementptr [7 x i8], [7 x i8]* @.str58, i32 0, i32 0
  %433 = call %nyx_string* @nyx_string_from_cstr(i8* %432)
  %434 = call i8* @nyx_string_to_cstr(%nyx_string* %431)
  %435 = call i8* @nyx_string_to_cstr(%nyx_string* %433)
  %436 = call i32 @strcmp(i8* %434, i8* %435)
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %then114, label %else115
then114:
  ret i1 1
else115:
  br label %merge116
merge116:
  %438 = load %nyx_string*, %nyx_string** %207
  %439 = getelementptr [7 x i8], [7 x i8]* @.str59, i32 0, i32 0
  %440 = call %nyx_string* @nyx_string_from_cstr(i8* %439)
  %441 = call i8* @nyx_string_to_cstr(%nyx_string* %438)
  %442 = call i8* @nyx_string_to_cstr(%nyx_string* %440)
  %443 = call i32 @strcmp(i8* %441, i8* %442)
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %then117, label %else118
then117:
  ret i1 1
else118:
  br label %merge119
merge119:
  %445 = alloca i1
  store i1 true, i1* %445
  %446 = alloca i1
  store i1 true, i1* %446
  %447 = alloca i1
  store i1 true, i1* %447
  %448 = alloca i1
  store i1 true, i1* %448
  %449 = load %nyx_string*, %nyx_string** %207
  %450 = getelementptr [8 x i8], [8 x i8]* @.str60, i32 0, i32 0
  %451 = call %nyx_string* @nyx_string_from_cstr(i8* %450)
  %452 = call i8* @nyx_string_to_cstr(%nyx_string* %449)
  %453 = call i8* @nyx_string_to_cstr(%nyx_string* %451)
  %454 = call i32 @strcmp(i8* %452, i8* %453)
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %sc_or_end121, label %sc_or_rhs120
sc_or_rhs120:
  %456 = load %nyx_string*, %nyx_string** %207
  %457 = getelementptr [9 x i8], [9 x i8]* @.str61, i32 0, i32 0
  %458 = call %nyx_string* @nyx_string_from_cstr(i8* %457)
  %459 = call i8* @nyx_string_to_cstr(%nyx_string* %456)
  %460 = call i8* @nyx_string_to_cstr(%nyx_string* %458)
  %461 = call i32 @strcmp(i8* %459, i8* %460)
  %462 = icmp eq i32 %461, 0
  store i1 %462, i1* %448
  br label %sc_or_end121
sc_or_end121:
  %463 = load i1, i1* %448
  br i1 %463, label %sc_or_end123, label %sc_or_rhs122
sc_or_rhs122:
  %464 = load %nyx_string*, %nyx_string** %207
  %465 = getelementptr [6 x i8], [6 x i8]* @.str62, i32 0, i32 0
  %466 = call %nyx_string* @nyx_string_from_cstr(i8* %465)
  %467 = call i8* @nyx_string_to_cstr(%nyx_string* %464)
  %468 = call i8* @nyx_string_to_cstr(%nyx_string* %466)
  %469 = call i32 @strcmp(i8* %467, i8* %468)
  %470 = icmp eq i32 %469, 0
  store i1 %470, i1* %447
  br label %sc_or_end123
sc_or_end123:
  %471 = load i1, i1* %447
  br i1 %471, label %sc_or_end125, label %sc_or_rhs124
sc_or_rhs124:
  %472 = load %nyx_string*, %nyx_string** %207
  %473 = getelementptr [6 x i8], [6 x i8]* @.str63, i32 0, i32 0
  %474 = call %nyx_string* @nyx_string_from_cstr(i8* %473)
  %475 = call i8* @nyx_string_to_cstr(%nyx_string* %472)
  %476 = call i8* @nyx_string_to_cstr(%nyx_string* %474)
  %477 = call i32 @strcmp(i8* %475, i8* %476)
  %478 = icmp eq i32 %477, 0
  store i1 %478, i1* %446
  br label %sc_or_end125
sc_or_end125:
  %479 = load i1, i1* %446
  br i1 %479, label %sc_or_end127, label %sc_or_rhs126
sc_or_rhs126:
  %480 = load %nyx_string*, %nyx_string** %207
  %481 = getelementptr [9 x i8], [9 x i8]* @.str64, i32 0, i32 0
  %482 = call %nyx_string* @nyx_string_from_cstr(i8* %481)
  %483 = call i8* @nyx_string_to_cstr(%nyx_string* %480)
  %484 = call i8* @nyx_string_to_cstr(%nyx_string* %482)
  %485 = call i32 @strcmp(i8* %483, i8* %484)
  %486 = icmp eq i32 %485, 0
  store i1 %486, i1* %445
  br label %sc_or_end127
sc_or_end127:
  %487 = load i1, i1* %445
  br i1 %487, label %then128, label %else129
then128:
  %488 = load { i64, i8* }*, { i64, i8* }** %a.ptr
  %489 = call i64 @nyx_array_get({ i64, i8* }* %488, i64 1)
  %490 = inttoptr i64 %489 to { i64, i8* }*
  %491 = alloca { i64, i8* }*
  store { i64, i8* }* %490, { i64, i8* }** %491
  %492 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %493 = call i64 @nyx_array_get({ i64, i8* }* %492, i64 1)
  %494 = inttoptr i64 %493 to { i64, i8* }*
  %495 = alloca { i64, i8* }*
  store { i64, i8* }* %494, { i64, i8* }** %495
  %496 = load { i64, i8* }*, { i64, i8* }** %491
  %497 = load { i64, i8* }*, { i64, i8* }** %495
  %498 = call i1 @ty_eq({ i64, i8* }* %496, { i64, i8* }* %497)
  ret i1 %498
else129:
  br label %merge130
merge130:
  %499 = alloca i1
  store i1 true, i1* %499
  %500 = load %nyx_string*, %nyx_string** %207
  %501 = getelementptr [9 x i8], [9 x i8]* @.str65, i32 0, i32 0
  %502 = call %nyx_string* @nyx_string_from_cstr(i8* %501)
  %503 = call i8* @nyx_string_to_cstr(%nyx_string* %500)
  %504 = call i8* @nyx_string_to_cstr(%nyx_string* %502)
  %505 = call i32 @strcmp(i8* %503, i8* %504)
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %sc_or_end132, label %sc_or_rhs131
sc_or_rhs131:
  %507 = load %nyx_string*, %nyx_string** %207
  %508 = getelementptr [6 x i8], [6 x i8]* @.str66, i32 0, i32 0
  %509 = call %nyx_string* @nyx_string_from_cstr(i8* %508)
  %510 = call i8* @nyx_string_to_cstr(%nyx_string* %507)
  %511 = call i8* @nyx_string_to_cstr(%nyx_string* %509)
  %512 = call i32 @strcmp(i8* %510, i8* %511)
  %513 = icmp eq i32 %512, 0
  store i1 %513, i1* %499
  br label %sc_or_end132
sc_or_end132:
  %514 = load i1, i1* %499
  br i1 %514, label %then133, label %else134
then133:
  %515 = load { i64, i8* }*, { i64, i8* }** %a.ptr
  %516 = call i64 @nyx_array_get({ i64, i8* }* %515, i64 1)
  %517 = inttoptr i64 %516 to { i64, i8* }*
  %518 = alloca { i64, i8* }*
  store { i64, i8* }* %517, { i64, i8* }** %518
  %519 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %520 = call i64 @nyx_array_get({ i64, i8* }* %519, i64 1)
  %521 = inttoptr i64 %520 to { i64, i8* }*
  %522 = alloca { i64, i8* }*
  store { i64, i8* }* %521, { i64, i8* }** %522
  %523 = load { i64, i8* }*, { i64, i8* }** %a.ptr
  %524 = call i64 @nyx_array_get({ i64, i8* }* %523, i64 2)
  %525 = inttoptr i64 %524 to { i64, i8* }*
  %526 = alloca { i64, i8* }*
  store { i64, i8* }* %525, { i64, i8* }** %526
  %527 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %528 = call i64 @nyx_array_get({ i64, i8* }* %527, i64 2)
  %529 = inttoptr i64 %528 to { i64, i8* }*
  %530 = alloca { i64, i8* }*
  store { i64, i8* }* %529, { i64, i8* }** %530
  %531 = load { i64, i8* }*, { i64, i8* }** %518
  %532 = load { i64, i8* }*, { i64, i8* }** %522
  %533 = call i1 @ty_eq({ i64, i8* }* %531, { i64, i8* }* %532)
  %534 = xor i1 %533, true
  br i1 %534, label %then136, label %else137
then136:
  ret i1 0
else137:
  br label %merge138
merge138:
  %535 = load { i64, i8* }*, { i64, i8* }** %526
  %536 = load { i64, i8* }*, { i64, i8* }** %530
  %537 = call i1 @ty_eq({ i64, i8* }* %535, { i64, i8* }* %536)
  ret i1 %537
else134:
  br label %merge135
merge135:
  %538 = load %nyx_string*, %nyx_string** %207
  %539 = getelementptr [5 x i8], [5 x i8]* @.str67, i32 0, i32 0
  %540 = call %nyx_string* @nyx_string_from_cstr(i8* %539)
  %541 = call i8* @nyx_string_to_cstr(%nyx_string* %538)
  %542 = call i8* @nyx_string_to_cstr(%nyx_string* %540)
  %543 = call i32 @strcmp(i8* %541, i8* %542)
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %then139, label %else140
then139:
  %545 = load { i64, i8* }*, { i64, i8* }** %a.ptr
  %546 = call i64 @nyx_array_get({ i64, i8* }* %545, i64 1)
  %547 = inttoptr i64 %546 to { i64, i8* }*
  %548 = alloca { i64, i8* }*
  store { i64, i8* }* %547, { i64, i8* }** %548
  %549 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %550 = call i64 @nyx_array_get({ i64, i8* }* %549, i64 1)
  %551 = inttoptr i64 %550 to { i64, i8* }*
  %552 = alloca { i64, i8* }*
  store { i64, i8* }* %551, { i64, i8* }** %552
  %553 = load { i64, i8* }*, { i64, i8* }** %548
  %554 = call i64 @nyx_array_length({ i64, i8* }* %553)
  %555 = load { i64, i8* }*, { i64, i8* }** %552
  %556 = call i64 @nyx_array_length({ i64, i8* }* %555)
  %557 = icmp ne i64 %554, %556
  br i1 %557, label %then142, label %else143
then142:
  ret i1 0
else143:
  br label %merge144
merge144:
  %558 = alloca i64
  store i64 0, i64* %558
  br label %while_cond145
while_cond145:
  %559 = load i64, i64* %558
  %560 = load { i64, i8* }*, { i64, i8* }** %548
  %561 = call i64 @nyx_array_length({ i64, i8* }* %560)
  %562 = icmp slt i64 %559, %561
  br i1 %562, label %while_body146, label %while_end147
while_body146:
  %563 = load { i64, i8* }*, { i64, i8* }** %548
  %564 = load i64, i64* %558
  %565 = call i64 @nyx_array_get({ i64, i8* }* %563, i64 %564)
  %566 = inttoptr i64 %565 to { i64, i8* }*
  %567 = alloca { i64, i8* }*
  store { i64, i8* }* %566, { i64, i8* }** %567
  %568 = load { i64, i8* }*, { i64, i8* }** %552
  %569 = load i64, i64* %558
  %570 = call i64 @nyx_array_get({ i64, i8* }* %568, i64 %569)
  %571 = inttoptr i64 %570 to { i64, i8* }*
  %572 = alloca { i64, i8* }*
  store { i64, i8* }* %571, { i64, i8* }** %572
  %573 = load { i64, i8* }*, { i64, i8* }** %567
  %574 = load { i64, i8* }*, { i64, i8* }** %572
  %575 = call i1 @ty_eq({ i64, i8* }* %573, { i64, i8* }* %574)
  %576 = xor i1 %575, true
  br i1 %576, label %then148, label %else149
then148:
  ret i1 0
else149:
  br label %merge150
merge150:
  %577 = load i64, i64* %558
  %578 = add i64 %577, 1
  store i64 %578, i64* %558
  br label %while_cond145
while_end147:
  %579 = load { i64, i8* }*, { i64, i8* }** %a.ptr
  %580 = call i64 @nyx_array_get({ i64, i8* }* %579, i64 2)
  %581 = inttoptr i64 %580 to { i64, i8* }*
  %582 = alloca { i64, i8* }*
  store { i64, i8* }* %581, { i64, i8* }** %582
  %583 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %584 = call i64 @nyx_array_get({ i64, i8* }* %583, i64 2)
  %585 = inttoptr i64 %584 to { i64, i8* }*
  %586 = alloca { i64, i8* }*
  store { i64, i8* }* %585, { i64, i8* }** %586
  %587 = load { i64, i8* }*, { i64, i8* }** %582
  %588 = load { i64, i8* }*, { i64, i8* }** %586
  %589 = call i1 @ty_eq({ i64, i8* }* %587, { i64, i8* }* %588)
  ret i1 %589
else140:
  br label %merge141
merge141:
  %590 = alloca i1
  store i1 true, i1* %590
  %591 = load %nyx_string*, %nyx_string** %207
  %592 = getelementptr [9 x i8], [9 x i8]* @.str68, i32 0, i32 0
  %593 = call %nyx_string* @nyx_string_from_cstr(i8* %592)
  %594 = call i8* @nyx_string_to_cstr(%nyx_string* %591)
  %595 = call i8* @nyx_string_to_cstr(%nyx_string* %593)
  %596 = call i32 @strcmp(i8* %594, i8* %595)
  %597 = icmp eq i32 %596, 0
  br i1 %597, label %sc_or_end152, label %sc_or_rhs151
sc_or_rhs151:
  %598 = load %nyx_string*, %nyx_string** %207
  %599 = getelementptr [7 x i8], [7 x i8]* @.str69, i32 0, i32 0
  %600 = call %nyx_string* @nyx_string_from_cstr(i8* %599)
  %601 = call i8* @nyx_string_to_cstr(%nyx_string* %598)
  %602 = call i8* @nyx_string_to_cstr(%nyx_string* %600)
  %603 = call i32 @strcmp(i8* %601, i8* %602)
  %604 = icmp eq i32 %603, 0
  store i1 %604, i1* %590
  br label %sc_or_end152
sc_or_end152:
  %605 = load i1, i1* %590
  br i1 %605, label %then153, label %else154
then153:
  %606 = load { i64, i8* }*, { i64, i8* }** %a.ptr
  %607 = call i64 @nyx_array_get({ i64, i8* }* %606, i64 1)
  %608 = inttoptr i64 %607 to %nyx_string*
  %609 = alloca %nyx_string*
  store %nyx_string* %608, %nyx_string** %609
  %610 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %611 = call i64 @nyx_array_get({ i64, i8* }* %610, i64 1)
  %612 = inttoptr i64 %611 to %nyx_string*
  %613 = alloca %nyx_string*
  store %nyx_string* %612, %nyx_string** %613
  %614 = load %nyx_string*, %nyx_string** %609
  %615 = load %nyx_string*, %nyx_string** %613
  %616 = call i8* @nyx_string_to_cstr(%nyx_string* %614)
  %617 = call i8* @nyx_string_to_cstr(%nyx_string* %615)
  %618 = call i32 @strcmp(i8* %616, i8* %617)
  %619 = icmp ne i32 %618, 0
  br i1 %619, label %then156, label %else157
then156:
  ret i1 0
else157:
  br label %merge158
merge158:
  %620 = load { i64, i8* }*, { i64, i8* }** %a.ptr
  %621 = call i64 @nyx_array_get({ i64, i8* }* %620, i64 2)
  %622 = inttoptr i64 %621 to { i64, i8* }*
  %623 = alloca { i64, i8* }*
  store { i64, i8* }* %622, { i64, i8* }** %623
  %624 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %625 = call i64 @nyx_array_get({ i64, i8* }* %624, i64 2)
  %626 = inttoptr i64 %625 to { i64, i8* }*
  %627 = alloca { i64, i8* }*
  store { i64, i8* }* %626, { i64, i8* }** %627
  %628 = load { i64, i8* }*, { i64, i8* }** %623
  %629 = call i64 @nyx_array_length({ i64, i8* }* %628)
  %630 = icmp eq i64 %629, 0
  br i1 %630, label %then159, label %else160
then159:
  ret i1 1
else160:
  br label %merge161
merge161:
  %631 = load { i64, i8* }*, { i64, i8* }** %627
  %632 = call i64 @nyx_array_length({ i64, i8* }* %631)
  %633 = icmp eq i64 %632, 0
  br i1 %633, label %then162, label %else163
then162:
  ret i1 1
else163:
  br label %merge164
merge164:
  %634 = load { i64, i8* }*, { i64, i8* }** %623
  %635 = call i64 @nyx_array_length({ i64, i8* }* %634)
  %636 = load { i64, i8* }*, { i64, i8* }** %627
  %637 = call i64 @nyx_array_length({ i64, i8* }* %636)
  %638 = icmp ne i64 %635, %637
  br i1 %638, label %then165, label %else166
then165:
  ret i1 0
else166:
  br label %merge167
merge167:
  %639 = alloca i64
  store i64 0, i64* %639
  br label %while_cond168
while_cond168:
  %640 = load i64, i64* %639
  %641 = load { i64, i8* }*, { i64, i8* }** %623
  %642 = call i64 @nyx_array_length({ i64, i8* }* %641)
  %643 = icmp slt i64 %640, %642
  br i1 %643, label %while_body169, label %while_end170
while_body169:
  %644 = load { i64, i8* }*, { i64, i8* }** %623
  %645 = load i64, i64* %639
  %646 = call i64 @nyx_array_get({ i64, i8* }* %644, i64 %645)
  %647 = inttoptr i64 %646 to { i64, i8* }*
  %648 = alloca { i64, i8* }*
  store { i64, i8* }* %647, { i64, i8* }** %648
  %649 = load { i64, i8* }*, { i64, i8* }** %627
  %650 = load i64, i64* %639
  %651 = call i64 @nyx_array_get({ i64, i8* }* %649, i64 %650)
  %652 = inttoptr i64 %651 to { i64, i8* }*
  %653 = alloca { i64, i8* }*
  store { i64, i8* }* %652, { i64, i8* }** %653
  %654 = load { i64, i8* }*, { i64, i8* }** %648
  %655 = load { i64, i8* }*, { i64, i8* }** %653
  %656 = call i1 @ty_eq({ i64, i8* }* %654, { i64, i8* }* %655)
  %657 = xor i1 %656, true
  br i1 %657, label %then171, label %else172
then171:
  ret i1 0
else172:
  br label %merge173
merge173:
  %658 = load i64, i64* %639
  %659 = add i64 %658, 1
  store i64 %659, i64* %639
  br label %while_cond168
while_end170:
  ret i1 1
else154:
  br label %merge155
merge155:
  %660 = alloca i1
  store i1 true, i1* %660
  %661 = alloca i1
  store i1 true, i1* %661
  %662 = load %nyx_string*, %nyx_string** %207
  %663 = getelementptr [6 x i8], [6 x i8]* @.str70, i32 0, i32 0
  %664 = call %nyx_string* @nyx_string_from_cstr(i8* %663)
  %665 = call i8* @nyx_string_to_cstr(%nyx_string* %662)
  %666 = call i8* @nyx_string_to_cstr(%nyx_string* %664)
  %667 = call i32 @strcmp(i8* %665, i8* %666)
  %668 = icmp eq i32 %667, 0
  br i1 %668, label %sc_or_end175, label %sc_or_rhs174
sc_or_rhs174:
  %669 = load %nyx_string*, %nyx_string** %207
  %670 = getelementptr [10 x i8], [10 x i8]* @.str71, i32 0, i32 0
  %671 = call %nyx_string* @nyx_string_from_cstr(i8* %670)
  %672 = call i8* @nyx_string_to_cstr(%nyx_string* %669)
  %673 = call i8* @nyx_string_to_cstr(%nyx_string* %671)
  %674 = call i32 @strcmp(i8* %672, i8* %673)
  %675 = icmp eq i32 %674, 0
  store i1 %675, i1* %661
  br label %sc_or_end175
sc_or_end175:
  %676 = load i1, i1* %661
  br i1 %676, label %sc_or_end177, label %sc_or_rhs176
sc_or_rhs176:
  %677 = load %nyx_string*, %nyx_string** %207
  %678 = getelementptr [8 x i8], [8 x i8]* @.str72, i32 0, i32 0
  %679 = call %nyx_string* @nyx_string_from_cstr(i8* %678)
  %680 = call i8* @nyx_string_to_cstr(%nyx_string* %677)
  %681 = call i8* @nyx_string_to_cstr(%nyx_string* %679)
  %682 = call i32 @strcmp(i8* %680, i8* %681)
  %683 = icmp eq i32 %682, 0
  store i1 %683, i1* %660
  br label %sc_or_end177
sc_or_end177:
  %684 = load i1, i1* %660
  br i1 %684, label %then178, label %else179
then178:
  %685 = load { i64, i8* }*, { i64, i8* }** %a.ptr
  %686 = call i64 @nyx_array_get({ i64, i8* }* %685, i64 1)
  %687 = inttoptr i64 %686 to %nyx_string*
  %688 = alloca %nyx_string*
  store %nyx_string* %687, %nyx_string** %688
  %689 = load { i64, i8* }*, { i64, i8* }** %b.ptr
  %690 = call i64 @nyx_array_get({ i64, i8* }* %689, i64 1)
  %691 = inttoptr i64 %690 to %nyx_string*
  %692 = alloca %nyx_string*
  store %nyx_string* %691, %nyx_string** %692
  %693 = load %nyx_string*, %nyx_string** %688
  %694 = load %nyx_string*, %nyx_string** %692
  %695 = call i8* @nyx_string_to_cstr(%nyx_string* %693)
  %696 = call i8* @nyx_string_to_cstr(%nyx_string* %694)
  %697 = call i32 @strcmp(i8* %695, i8* %696)
  %698 = icmp eq i32 %697, 0
  ret i1 %698
else179:
  br label %merge180
merge180:
  ret i1 0
}

define %nyx_string* @ty_to_str(
{ i64, i8* }* %t.param) {
  %t.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %t.param, { i64, i8* }** %t.ptr
  %699 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %700 = call %nyx_string* @ty_kind({ i64, i8* }* %699)
  %701 = alloca %nyx_string*
  store %nyx_string* %700, %nyx_string** %701
  %702 = load %nyx_string*, %nyx_string** %701
  %703 = getelementptr [6 x i8], [6 x i8]* @.str73, i32 0, i32 0
  %704 = call %nyx_string* @nyx_string_from_cstr(i8* %703)
  %705 = call i8* @nyx_string_to_cstr(%nyx_string* %702)
  %706 = call i8* @nyx_string_to_cstr(%nyx_string* %704)
  %707 = call i32 @strcmp(i8* %705, i8* %706)
  %708 = icmp eq i32 %707, 0
  br i1 %708, label %then181, label %else182
then181:
  %709 = getelementptr [4 x i8], [4 x i8]* @.str74, i32 0, i32 0
  %710 = call %nyx_string* @nyx_string_from_cstr(i8* %709)
  ret %nyx_string* %710
else182:
  br label %merge183
merge183:
  %711 = load %nyx_string*, %nyx_string** %701
  %712 = getelementptr [8 x i8], [8 x i8]* @.str75, i32 0, i32 0
  %713 = call %nyx_string* @nyx_string_from_cstr(i8* %712)
  %714 = call i8* @nyx_string_to_cstr(%nyx_string* %711)
  %715 = call i8* @nyx_string_to_cstr(%nyx_string* %713)
  %716 = call i32 @strcmp(i8* %714, i8* %715)
  %717 = icmp eq i32 %716, 0
  br i1 %717, label %then184, label %else185
then184:
  %718 = getelementptr [6 x i8], [6 x i8]* @.str76, i32 0, i32 0
  %719 = call %nyx_string* @nyx_string_from_cstr(i8* %718)
  ret %nyx_string* %719
else185:
  br label %merge186
merge186:
  %720 = load %nyx_string*, %nyx_string** %701
  %721 = getelementptr [7 x i8], [7 x i8]* @.str77, i32 0, i32 0
  %722 = call %nyx_string* @nyx_string_from_cstr(i8* %721)
  %723 = call i8* @nyx_string_to_cstr(%nyx_string* %720)
  %724 = call i8* @nyx_string_to_cstr(%nyx_string* %722)
  %725 = call i32 @strcmp(i8* %723, i8* %724)
  %726 = icmp eq i32 %725, 0
  br i1 %726, label %then187, label %else188
then187:
  %727 = getelementptr [5 x i8], [5 x i8]* @.str78, i32 0, i32 0
  %728 = call %nyx_string* @nyx_string_from_cstr(i8* %727)
  ret %nyx_string* %728
else188:
  br label %merge189
merge189:
  %729 = load %nyx_string*, %nyx_string** %701
  %730 = getelementptr [9 x i8], [9 x i8]* @.str79, i32 0, i32 0
  %731 = call %nyx_string* @nyx_string_from_cstr(i8* %730)
  %732 = call i8* @nyx_string_to_cstr(%nyx_string* %729)
  %733 = call i8* @nyx_string_to_cstr(%nyx_string* %731)
  %734 = call i32 @strcmp(i8* %732, i8* %733)
  %735 = icmp eq i32 %734, 0
  br i1 %735, label %then190, label %else191
then190:
  %736 = getelementptr [7 x i8], [7 x i8]* @.str80, i32 0, i32 0
  %737 = call %nyx_string* @nyx_string_from_cstr(i8* %736)
  ret %nyx_string* %737
else191:
  br label %merge192
merge192:
  %738 = load %nyx_string*, %nyx_string** %701
  %739 = getelementptr [7 x i8], [7 x i8]* @.str81, i32 0, i32 0
  %740 = call %nyx_string* @nyx_string_from_cstr(i8* %739)
  %741 = call i8* @nyx_string_to_cstr(%nyx_string* %738)
  %742 = call i8* @nyx_string_to_cstr(%nyx_string* %740)
  %743 = call i32 @strcmp(i8* %741, i8* %742)
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %then193, label %else194
then193:
  %745 = getelementptr [5 x i8], [5 x i8]* @.str82, i32 0, i32 0
  %746 = call %nyx_string* @nyx_string_from_cstr(i8* %745)
  ret %nyx_string* %746
else194:
  br label %merge195
merge195:
  %747 = load %nyx_string*, %nyx_string** %701
  %748 = getelementptr [7 x i8], [7 x i8]* @.str83, i32 0, i32 0
  %749 = call %nyx_string* @nyx_string_from_cstr(i8* %748)
  %750 = call i8* @nyx_string_to_cstr(%nyx_string* %747)
  %751 = call i8* @nyx_string_to_cstr(%nyx_string* %749)
  %752 = call i32 @strcmp(i8* %750, i8* %751)
  %753 = icmp eq i32 %752, 0
  br i1 %753, label %then196, label %else197
then196:
  %754 = getelementptr [3 x i8], [3 x i8]* @.str84, i32 0, i32 0
  %755 = call %nyx_string* @nyx_string_from_cstr(i8* %754)
  ret %nyx_string* %755
else197:
  br label %merge198
merge198:
  %756 = load %nyx_string*, %nyx_string** %701
  %757 = getelementptr [10 x i8], [10 x i8]* @.str85, i32 0, i32 0
  %758 = call %nyx_string* @nyx_string_from_cstr(i8* %757)
  %759 = call i8* @nyx_string_to_cstr(%nyx_string* %756)
  %760 = call i8* @nyx_string_to_cstr(%nyx_string* %758)
  %761 = call i32 @strcmp(i8* %759, i8* %760)
  %762 = icmp eq i32 %761, 0
  br i1 %762, label %then199, label %else200
then199:
  %763 = getelementptr [2 x i8], [2 x i8]* @.str86, i32 0, i32 0
  %764 = call %nyx_string* @nyx_string_from_cstr(i8* %763)
  ret %nyx_string* %764
else200:
  br label %merge201
merge201:
  %765 = load %nyx_string*, %nyx_string** %701
  %766 = getelementptr [8 x i8], [8 x i8]* @.str87, i32 0, i32 0
  %767 = call %nyx_string* @nyx_string_from_cstr(i8* %766)
  %768 = call i8* @nyx_string_to_cstr(%nyx_string* %765)
  %769 = call i8* @nyx_string_to_cstr(%nyx_string* %767)
  %770 = call i32 @strcmp(i8* %768, i8* %769)
  %771 = icmp eq i32 %770, 0
  br i1 %771, label %then202, label %else203
then202:
  %772 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %773 = call i64 @nyx_array_get({ i64, i8* }* %772, i64 1)
  %774 = inttoptr i64 %773 to { i64, i8* }*
  %775 = alloca { i64, i8* }*
  store { i64, i8* }* %774, { i64, i8* }** %775
  %776 = getelementptr [7 x i8], [7 x i8]* @.str88, i32 0, i32 0
  %777 = call %nyx_string* @nyx_string_from_cstr(i8* %776)
  %778 = load { i64, i8* }*, { i64, i8* }** %775
  %779 = call %nyx_string* @ty_to_str({ i64, i8* }* %778)
  %780 = call %nyx_string* @nyx_string_concat(%nyx_string* %777, %nyx_string* %779)
  %781 = getelementptr [2 x i8], [2 x i8]* @.str89, i32 0, i32 0
  %782 = call %nyx_string* @nyx_string_from_cstr(i8* %781)
  %783 = call %nyx_string* @nyx_string_concat(%nyx_string* %780, %nyx_string* %782)
  ret %nyx_string* %783
else203:
  br label %merge204
merge204:
  %784 = load %nyx_string*, %nyx_string** %701
  %785 = getelementptr [9 x i8], [9 x i8]* @.str90, i32 0, i32 0
  %786 = call %nyx_string* @nyx_string_from_cstr(i8* %785)
  %787 = call i8* @nyx_string_to_cstr(%nyx_string* %784)
  %788 = call i8* @nyx_string_to_cstr(%nyx_string* %786)
  %789 = call i32 @strcmp(i8* %787, i8* %788)
  %790 = icmp eq i32 %789, 0
  br i1 %790, label %then205, label %else206
then205:
  %791 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %792 = call i64 @nyx_array_get({ i64, i8* }* %791, i64 1)
  %793 = inttoptr i64 %792 to { i64, i8* }*
  %794 = alloca { i64, i8* }*
  store { i64, i8* }* %793, { i64, i8* }** %794
  %795 = getelementptr [8 x i8], [8 x i8]* @.str91, i32 0, i32 0
  %796 = call %nyx_string* @nyx_string_from_cstr(i8* %795)
  %797 = load { i64, i8* }*, { i64, i8* }** %794
  %798 = call %nyx_string* @ty_to_str({ i64, i8* }* %797)
  %799 = call %nyx_string* @nyx_string_concat(%nyx_string* %796, %nyx_string* %798)
  %800 = getelementptr [2 x i8], [2 x i8]* @.str92, i32 0, i32 0
  %801 = call %nyx_string* @nyx_string_from_cstr(i8* %800)
  %802 = call %nyx_string* @nyx_string_concat(%nyx_string* %799, %nyx_string* %801)
  ret %nyx_string* %802
else206:
  br label %merge207
merge207:
  %803 = load %nyx_string*, %nyx_string** %701
  %804 = getelementptr [9 x i8], [9 x i8]* @.str93, i32 0, i32 0
  %805 = call %nyx_string* @nyx_string_from_cstr(i8* %804)
  %806 = call i8* @nyx_string_to_cstr(%nyx_string* %803)
  %807 = call i8* @nyx_string_to_cstr(%nyx_string* %805)
  %808 = call i32 @strcmp(i8* %806, i8* %807)
  %809 = icmp eq i32 %808, 0
  br i1 %809, label %then208, label %else209
then208:
  %810 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %811 = call i64 @nyx_array_get({ i64, i8* }* %810, i64 1)
  %812 = inttoptr i64 %811 to { i64, i8* }*
  %813 = alloca { i64, i8* }*
  store { i64, i8* }* %812, { i64, i8* }** %813
  %814 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %815 = call i64 @nyx_array_get({ i64, i8* }* %814, i64 2)
  %816 = inttoptr i64 %815 to { i64, i8* }*
  %817 = alloca { i64, i8* }*
  store { i64, i8* }* %816, { i64, i8* }** %817
  %818 = getelementptr [8 x i8], [8 x i8]* @.str94, i32 0, i32 0
  %819 = call %nyx_string* @nyx_string_from_cstr(i8* %818)
  %820 = load { i64, i8* }*, { i64, i8* }** %813
  %821 = call %nyx_string* @ty_to_str({ i64, i8* }* %820)
  %822 = call %nyx_string* @nyx_string_concat(%nyx_string* %819, %nyx_string* %821)
  %823 = getelementptr [2 x i8], [2 x i8]* @.str95, i32 0, i32 0
  %824 = call %nyx_string* @nyx_string_from_cstr(i8* %823)
  %825 = call %nyx_string* @nyx_string_concat(%nyx_string* %822, %nyx_string* %824)
  %826 = load { i64, i8* }*, { i64, i8* }** %817
  %827 = call %nyx_string* @ty_to_str({ i64, i8* }* %826)
  %828 = call %nyx_string* @nyx_string_concat(%nyx_string* %825, %nyx_string* %827)
  %829 = getelementptr [2 x i8], [2 x i8]* @.str96, i32 0, i32 0
  %830 = call %nyx_string* @nyx_string_from_cstr(i8* %829)
  %831 = call %nyx_string* @nyx_string_concat(%nyx_string* %828, %nyx_string* %830)
  ret %nyx_string* %831
else209:
  br label %merge210
merge210:
  %832 = load %nyx_string*, %nyx_string** %701
  %833 = getelementptr [6 x i8], [6 x i8]* @.str97, i32 0, i32 0
  %834 = call %nyx_string* @nyx_string_from_cstr(i8* %833)
  %835 = call i8* @nyx_string_to_cstr(%nyx_string* %832)
  %836 = call i8* @nyx_string_to_cstr(%nyx_string* %834)
  %837 = call i32 @strcmp(i8* %835, i8* %836)
  %838 = icmp eq i32 %837, 0
  br i1 %838, label %then211, label %else212
then211:
  %839 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %840 = call i64 @nyx_array_get({ i64, i8* }* %839, i64 1)
  %841 = inttoptr i64 %840 to { i64, i8* }*
  %842 = alloca { i64, i8* }*
  store { i64, i8* }* %841, { i64, i8* }** %842
  %843 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %844 = call i64 @nyx_array_get({ i64, i8* }* %843, i64 2)
  %845 = inttoptr i64 %844 to { i64, i8* }*
  %846 = alloca { i64, i8* }*
  store { i64, i8* }* %845, { i64, i8* }** %846
  %847 = getelementptr [5 x i8], [5 x i8]* @.str98, i32 0, i32 0
  %848 = call %nyx_string* @nyx_string_from_cstr(i8* %847)
  %849 = load { i64, i8* }*, { i64, i8* }** %842
  %850 = call %nyx_string* @ty_to_str({ i64, i8* }* %849)
  %851 = call %nyx_string* @nyx_string_concat(%nyx_string* %848, %nyx_string* %850)
  %852 = getelementptr [2 x i8], [2 x i8]* @.str99, i32 0, i32 0
  %853 = call %nyx_string* @nyx_string_from_cstr(i8* %852)
  %854 = call %nyx_string* @nyx_string_concat(%nyx_string* %851, %nyx_string* %853)
  %855 = load { i64, i8* }*, { i64, i8* }** %846
  %856 = call %nyx_string* @ty_to_str({ i64, i8* }* %855)
  %857 = call %nyx_string* @nyx_string_concat(%nyx_string* %854, %nyx_string* %856)
  %858 = getelementptr [2 x i8], [2 x i8]* @.str100, i32 0, i32 0
  %859 = call %nyx_string* @nyx_string_from_cstr(i8* %858)
  %860 = call %nyx_string* @nyx_string_concat(%nyx_string* %857, %nyx_string* %859)
  ret %nyx_string* %860
else212:
  br label %merge213
merge213:
  %861 = load %nyx_string*, %nyx_string** %701
  %862 = getelementptr [6 x i8], [6 x i8]* @.str101, i32 0, i32 0
  %863 = call %nyx_string* @nyx_string_from_cstr(i8* %862)
  %864 = call i8* @nyx_string_to_cstr(%nyx_string* %861)
  %865 = call i8* @nyx_string_to_cstr(%nyx_string* %863)
  %866 = call i32 @strcmp(i8* %864, i8* %865)
  %867 = icmp eq i32 %866, 0
  br i1 %867, label %then214, label %else215
then214:
  %868 = getelementptr [2 x i8], [2 x i8]* @.str102, i32 0, i32 0
  %869 = call %nyx_string* @nyx_string_from_cstr(i8* %868)
  %870 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %871 = call i64 @nyx_array_get({ i64, i8* }* %870, i64 1)
  %872 = call %nyx_string* @ty_to_str(i64 %871)
  %873 = call %nyx_string* @nyx_string_concat(%nyx_string* %869, %nyx_string* %872)
  ret %nyx_string* %873
else215:
  br label %merge216
merge216:
  %874 = load %nyx_string*, %nyx_string** %701
  %875 = getelementptr [6 x i8], [6 x i8]* @.str103, i32 0, i32 0
  %876 = call %nyx_string* @nyx_string_from_cstr(i8* %875)
  %877 = call i8* @nyx_string_to_cstr(%nyx_string* %874)
  %878 = call i8* @nyx_string_to_cstr(%nyx_string* %876)
  %879 = call i32 @strcmp(i8* %877, i8* %878)
  %880 = icmp eq i32 %879, 0
  br i1 %880, label %then217, label %else218
then217:
  %881 = getelementptr [2 x i8], [2 x i8]* @.str104, i32 0, i32 0
  %882 = call %nyx_string* @nyx_string_from_cstr(i8* %881)
  %883 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %884 = call i64 @nyx_array_get({ i64, i8* }* %883, i64 1)
  %885 = call %nyx_string* @ty_to_str(i64 %884)
  %886 = call %nyx_string* @nyx_string_concat(%nyx_string* %882, %nyx_string* %885)
  ret %nyx_string* %886
else218:
  br label %merge219
merge219:
  %887 = load %nyx_string*, %nyx_string** %701
  %888 = getelementptr [9 x i8], [9 x i8]* @.str105, i32 0, i32 0
  %889 = call %nyx_string* @nyx_string_from_cstr(i8* %888)
  %890 = call i8* @nyx_string_to_cstr(%nyx_string* %887)
  %891 = call i8* @nyx_string_to_cstr(%nyx_string* %889)
  %892 = call i32 @strcmp(i8* %890, i8* %891)
  %893 = icmp eq i32 %892, 0
  br i1 %893, label %then220, label %else221
then220:
  %894 = getelementptr [6 x i8], [6 x i8]* @.str106, i32 0, i32 0
  %895 = call %nyx_string* @nyx_string_from_cstr(i8* %894)
  %896 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %897 = call i64 @nyx_array_get({ i64, i8* }* %896, i64 1)
  %898 = call %nyx_string* @ty_to_str(i64 %897)
  %899 = call %nyx_string* @nyx_string_concat(%nyx_string* %895, %nyx_string* %898)
  ret %nyx_string* %899
else221:
  br label %merge222
merge222:
  %900 = load %nyx_string*, %nyx_string** %701
  %901 = getelementptr [5 x i8], [5 x i8]* @.str107, i32 0, i32 0
  %902 = call %nyx_string* @nyx_string_from_cstr(i8* %901)
  %903 = call i8* @nyx_string_to_cstr(%nyx_string* %900)
  %904 = call i8* @nyx_string_to_cstr(%nyx_string* %902)
  %905 = call i32 @strcmp(i8* %903, i8* %904)
  %906 = icmp eq i32 %905, 0
  br i1 %906, label %then223, label %else224
then223:
  %907 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %908 = call i64 @nyx_array_get({ i64, i8* }* %907, i64 1)
  %909 = inttoptr i64 %908 to { i64, i8* }*
  %910 = alloca { i64, i8* }*
  store { i64, i8* }* %909, { i64, i8* }** %910
  %911 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %912 = call i64 @nyx_array_get({ i64, i8* }* %911, i64 2)
  %913 = inttoptr i64 %912 to { i64, i8* }*
  %914 = alloca { i64, i8* }*
  store { i64, i8* }* %913, { i64, i8* }** %914
  %915 = getelementptr [4 x i8], [4 x i8]* @.str108, i32 0, i32 0
  %916 = call %nyx_string* @nyx_string_from_cstr(i8* %915)
  %917 = alloca %nyx_string*
  store %nyx_string* %916, %nyx_string** %917
  %918 = alloca i64
  store i64 0, i64* %918
  br label %while_cond226
while_cond226:
  %919 = load i64, i64* %918
  %920 = load { i64, i8* }*, { i64, i8* }** %910
  %921 = call i64 @nyx_array_length({ i64, i8* }* %920)
  %922 = icmp slt i64 %919, %921
  br i1 %922, label %while_body227, label %while_end228
while_body227:
  %923 = load i64, i64* %918
  %924 = icmp sgt i64 %923, 0
  br i1 %924, label %then229, label %else230
then229:
  %925 = load %nyx_string*, %nyx_string** %917
  %926 = getelementptr [2 x i8], [2 x i8]* @.str109, i32 0, i32 0
  %927 = call %nyx_string* @nyx_string_from_cstr(i8* %926)
  %928 = call %nyx_string* @nyx_string_concat(%nyx_string* %925, %nyx_string* %927)
  store %nyx_string* %928, %nyx_string** %917
  br label %merge231
else230:
  br label %merge231
merge231:
  %929 = load { i64, i8* }*, { i64, i8* }** %910
  %930 = load i64, i64* %918
  %931 = call i64 @nyx_array_get({ i64, i8* }* %929, i64 %930)
  %932 = inttoptr i64 %931 to { i64, i8* }*
  %933 = alloca { i64, i8* }*
  store { i64, i8* }* %932, { i64, i8* }** %933
  %934 = load %nyx_string*, %nyx_string** %917
  %935 = load { i64, i8* }*, { i64, i8* }** %933
  %936 = call %nyx_string* @ty_to_str({ i64, i8* }* %935)
  %937 = call %nyx_string* @nyx_string_concat(%nyx_string* %934, %nyx_string* %936)
  store %nyx_string* %937, %nyx_string** %917
  %938 = load i64, i64* %918
  %939 = add i64 %938, 1
  store i64 %939, i64* %918
  br label %while_cond226
while_end228:
  %940 = load %nyx_string*, %nyx_string** %917
  %941 = getelementptr [4 x i8], [4 x i8]* @.str110, i32 0, i32 0
  %942 = call %nyx_string* @nyx_string_from_cstr(i8* %941)
  %943 = call %nyx_string* @nyx_string_concat(%nyx_string* %940, %nyx_string* %942)
  %944 = load { i64, i8* }*, { i64, i8* }** %914
  %945 = call %nyx_string* @ty_to_str({ i64, i8* }* %944)
  %946 = call %nyx_string* @nyx_string_concat(%nyx_string* %943, %nyx_string* %945)
  store %nyx_string* %946, %nyx_string** %917
  %947 = load %nyx_string*, %nyx_string** %917
  ret %nyx_string* %947
else224:
  br label %merge225
merge225:
  %948 = load %nyx_string*, %nyx_string** %701
  %949 = getelementptr [6 x i8], [6 x i8]* @.str111, i32 0, i32 0
  %950 = call %nyx_string* @nyx_string_from_cstr(i8* %949)
  %951 = call i8* @nyx_string_to_cstr(%nyx_string* %948)
  %952 = call i8* @nyx_string_to_cstr(%nyx_string* %950)
  %953 = call i32 @strcmp(i8* %951, i8* %952)
  %954 = icmp eq i32 %953, 0
  br i1 %954, label %then232, label %else233
then232:
  %955 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %956 = call i64 @nyx_array_get({ i64, i8* }* %955, i64 1)
  %957 = inttoptr i64 %956 to %nyx_string*
  %958 = alloca %nyx_string*
  store %nyx_string* %957, %nyx_string** %958
  %959 = getelementptr [5 x i8], [5 x i8]* @.str112, i32 0, i32 0
  %960 = call %nyx_string* @nyx_string_from_cstr(i8* %959)
  %961 = load %nyx_string*, %nyx_string** %958
  %962 = call %nyx_string* @nyx_string_concat(%nyx_string* %960, %nyx_string* %961)
  ret %nyx_string* %962
else233:
  br label %merge234
merge234:
  %963 = alloca i1
  store i1 true, i1* %963
  %964 = load %nyx_string*, %nyx_string** %701
  %965 = getelementptr [9 x i8], [9 x i8]* @.str113, i32 0, i32 0
  %966 = call %nyx_string* @nyx_string_from_cstr(i8* %965)
  %967 = call i8* @nyx_string_to_cstr(%nyx_string* %964)
  %968 = call i8* @nyx_string_to_cstr(%nyx_string* %966)
  %969 = call i32 @strcmp(i8* %967, i8* %968)
  %970 = icmp eq i32 %969, 0
  br i1 %970, label %sc_or_end236, label %sc_or_rhs235
sc_or_rhs235:
  %971 = load %nyx_string*, %nyx_string** %701
  %972 = getelementptr [7 x i8], [7 x i8]* @.str114, i32 0, i32 0
  %973 = call %nyx_string* @nyx_string_from_cstr(i8* %972)
  %974 = call i8* @nyx_string_to_cstr(%nyx_string* %971)
  %975 = call i8* @nyx_string_to_cstr(%nyx_string* %973)
  %976 = call i32 @strcmp(i8* %974, i8* %975)
  %977 = icmp eq i32 %976, 0
  store i1 %977, i1* %963
  br label %sc_or_end236
sc_or_end236:
  %978 = load i1, i1* %963
  br i1 %978, label %then237, label %else238
then237:
  %979 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %980 = call i64 @nyx_array_get({ i64, i8* }* %979, i64 1)
  %981 = inttoptr i64 %980 to %nyx_string*
  %982 = alloca %nyx_string*
  store %nyx_string* %981, %nyx_string** %982
  %983 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %984 = call i64 @nyx_array_get({ i64, i8* }* %983, i64 2)
  %985 = inttoptr i64 %984 to { i64, i8* }*
  %986 = alloca { i64, i8* }*
  store { i64, i8* }* %985, { i64, i8* }** %986
  %987 = load { i64, i8* }*, { i64, i8* }** %986
  %988 = call i64 @nyx_array_length({ i64, i8* }* %987)
  %989 = icmp eq i64 %988, 0
  br i1 %989, label %then240, label %else241
then240:
  %990 = load %nyx_string*, %nyx_string** %982
  ret %nyx_string* %990
else241:
  br label %merge242
merge242:
  %991 = load %nyx_string*, %nyx_string** %982
  %992 = getelementptr [2 x i8], [2 x i8]* @.str115, i32 0, i32 0
  %993 = call %nyx_string* @nyx_string_from_cstr(i8* %992)
  %994 = call %nyx_string* @nyx_string_concat(%nyx_string* %991, %nyx_string* %993)
  %995 = alloca %nyx_string*
  store %nyx_string* %994, %nyx_string** %995
  %996 = alloca i64
  store i64 0, i64* %996
  br label %while_cond243
while_cond243:
  %997 = load i64, i64* %996
  %998 = load { i64, i8* }*, { i64, i8* }** %986
  %999 = call i64 @nyx_array_length({ i64, i8* }* %998)
  %1000 = icmp slt i64 %997, %999
  br i1 %1000, label %while_body244, label %while_end245
while_body244:
  %1001 = load i64, i64* %996
  %1002 = icmp sgt i64 %1001, 0
  br i1 %1002, label %then246, label %else247
then246:
  %1003 = load %nyx_string*, %nyx_string** %995
  %1004 = getelementptr [2 x i8], [2 x i8]* @.str116, i32 0, i32 0
  %1005 = call %nyx_string* @nyx_string_from_cstr(i8* %1004)
  %1006 = call %nyx_string* @nyx_string_concat(%nyx_string* %1003, %nyx_string* %1005)
  store %nyx_string* %1006, %nyx_string** %995
  br label %merge248
else247:
  br label %merge248
merge248:
  %1007 = load { i64, i8* }*, { i64, i8* }** %986
  %1008 = load i64, i64* %996
  %1009 = call i64 @nyx_array_get({ i64, i8* }* %1007, i64 %1008)
  %1010 = inttoptr i64 %1009 to { i64, i8* }*
  %1011 = alloca { i64, i8* }*
  store { i64, i8* }* %1010, { i64, i8* }** %1011
  %1012 = load %nyx_string*, %nyx_string** %995
  %1013 = load { i64, i8* }*, { i64, i8* }** %1011
  %1014 = call %nyx_string* @ty_to_str({ i64, i8* }* %1013)
  %1015 = call %nyx_string* @nyx_string_concat(%nyx_string* %1012, %nyx_string* %1014)
  store %nyx_string* %1015, %nyx_string** %995
  %1016 = load i64, i64* %996
  %1017 = add i64 %1016, 1
  store i64 %1017, i64* %996
  br label %while_cond243
while_end245:
  %1018 = load %nyx_string*, %nyx_string** %995
  %1019 = getelementptr [2 x i8], [2 x i8]* @.str117, i32 0, i32 0
  %1020 = call %nyx_string* @nyx_string_from_cstr(i8* %1019)
  %1021 = call %nyx_string* @nyx_string_concat(%nyx_string* %1018, %nyx_string* %1020)
  store %nyx_string* %1021, %nyx_string** %995
  %1022 = load %nyx_string*, %nyx_string** %995
  ret %nyx_string* %1022
else238:
  br label %merge239
merge239:
  %1023 = load %nyx_string*, %nyx_string** %701
  %1024 = getelementptr [10 x i8], [10 x i8]* @.str118, i32 0, i32 0
  %1025 = call %nyx_string* @nyx_string_from_cstr(i8* %1024)
  %1026 = call i8* @nyx_string_to_cstr(%nyx_string* %1023)
  %1027 = call i8* @nyx_string_to_cstr(%nyx_string* %1025)
  %1028 = call i32 @strcmp(i8* %1026, i8* %1027)
  %1029 = icmp eq i32 %1028, 0
  br i1 %1029, label %then249, label %else250
then249:
  %1030 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1031 = call i64 @nyx_array_get({ i64, i8* }* %1030, i64 1)
  %1032 = inttoptr i64 %1031 to %nyx_string*
  %1033 = alloca %nyx_string*
  store %nyx_string* %1032, %nyx_string** %1033
  %1034 = load %nyx_string*, %nyx_string** %1033
  ret %nyx_string* %1034
else250:
  br label %merge251
merge251:
  %1035 = load %nyx_string*, %nyx_string** %701
  %1036 = getelementptr [8 x i8], [8 x i8]* @.str119, i32 0, i32 0
  %1037 = call %nyx_string* @nyx_string_from_cstr(i8* %1036)
  %1038 = call i8* @nyx_string_to_cstr(%nyx_string* %1035)
  %1039 = call i8* @nyx_string_to_cstr(%nyx_string* %1037)
  %1040 = call i32 @strcmp(i8* %1038, i8* %1039)
  %1041 = icmp eq i32 %1040, 0
  br i1 %1041, label %then252, label %else253
then252:
  %1042 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1043 = call i64 @nyx_array_get({ i64, i8* }* %1042, i64 1)
  %1044 = inttoptr i64 %1043 to %nyx_string*
  %1045 = alloca %nyx_string*
  store %nyx_string* %1044, %nyx_string** %1045
  %1046 = load %nyx_string*, %nyx_string** %1045
  ret %nyx_string* %1046
else253:
  br label %merge254
merge254:
  %1047 = getelementptr [2 x i8], [2 x i8]* @.str120, i32 0, i32 0
  %1048 = call %nyx_string* @nyx_string_from_cstr(i8* %1047)
  ret %nyx_string* %1048
}

define internal { i64, i8* }* @split_at_depth0(
%nyx_string* %s.param, i64 %sep_char.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %sep_char.ptr = alloca i64
  store i64 %sep_char.param, i64* %sep_char.ptr
  %1049 = call { i64, i8* }* @nyx_array_new_ptr()
  %1050 = alloca { i64, i8* }*
  store { i64, i8* }* %1049, { i64, i8* }** %1050
  %1051 = alloca i64
  store i64 0, i64* %1051
  %1052 = alloca i64
  store i64 0, i64* %1052
  %1053 = load %nyx_string*, %nyx_string** %s.ptr
  %1054 = call i64 @nyx_string_length_utf8(%nyx_string* %1053)
  %1055 = alloca i64
  store i64 %1054, i64* %1055
  %1056 = alloca i64
  store i64 0, i64* %1056
  br label %while_cond255
while_cond255:
  %1057 = load i64, i64* %1056
  %1058 = load i64, i64* %1055
  %1059 = icmp slt i64 %1057, %1058
  br i1 %1059, label %while_body256, label %while_end257
while_body256:
  %1060 = load %nyx_string*, %nyx_string** %s.ptr
  %1061 = load i64, i64* %1056
  %1062 = call i8 @nyx_string_char_at(%nyx_string* %1060, i64 %1061)
  %1063 = zext i8 %1062 to i64
  %1064 = alloca i64
  store i64 %1063, i64* %1064
  %1065 = load i64, i64* %1064
  %1066 = icmp eq i64 %1065, 60
  br i1 %1066, label %then258, label %else259
then258:
  %1067 = load i64, i64* %1051
  %1068 = add i64 %1067, 1
  store i64 %1068, i64* %1051
  br label %merge260
else259:
  %1069 = load i64, i64* %1064
  %1070 = icmp eq i64 %1069, 62
  br i1 %1070, label %then261, label %else262
then261:
  %1071 = load i64, i64* %1051
  %1072 = sub i64 %1071, 1
  store i64 %1072, i64* %1051
  br label %merge263
else262:
  %1073 = load i64, i64* %1064
  %1074 = icmp eq i64 %1073, 40
  br i1 %1074, label %then264, label %else265
then264:
  %1075 = load i64, i64* %1051
  %1076 = add i64 %1075, 1
  store i64 %1076, i64* %1051
  br label %merge266
else265:
  %1077 = load i64, i64* %1064
  %1078 = icmp eq i64 %1077, 41
  br i1 %1078, label %then267, label %else268
then267:
  %1079 = load i64, i64* %1051
  %1080 = sub i64 %1079, 1
  store i64 %1080, i64* %1051
  br label %merge269
else268:
  %1081 = load i64, i64* %1064
  %1082 = load i64, i64* %sep_char.ptr
  %1083 = icmp eq i64 %1081, %1082
  br i1 %1083, label %then270, label %else271
then270:
  %1084 = load i64, i64* %1051
  %1085 = icmp eq i64 %1084, 0
  br i1 %1085, label %then273, label %else274
then273:
  %1086 = load %nyx_string*, %nyx_string** %s.ptr
  %1087 = load i64, i64* %1052
  %1088 = load i64, i64* %1056
  %1089 = call %nyx_string* @nyx_string_substring(%nyx_string* %1086, i64 %1087, i64 %1088)
  %1090 = alloca %nyx_string*
  store %nyx_string* %1089, %nyx_string** %1090
  %1091 = load { i64, i8* }*, { i64, i8* }** %1050
  %1092 = load %nyx_string*, %nyx_string** %1090
  %1093 = call %nyx_string* @nyx_string_trim(%nyx_string* %1092)
  %1094 = ptrtoint %nyx_string* %1093 to i64
  call void @nyx_array_push({ i64, i8* }* %1091, i64 %1094)
  %1095 = load i64, i64* %1056
  %1096 = add i64 %1095, 1
  store i64 %1096, i64* %1052
  br label %merge275
else274:
  br label %merge275
merge275:
  br label %merge272
else271:
  br label %merge272
merge272:
  br label %merge269
merge269:
  br label %merge266
merge266:
  br label %merge263
merge263:
  br label %merge260
merge260:
  %1097 = load i64, i64* %1056
  %1098 = add i64 %1097, 1
  store i64 %1098, i64* %1056
  br label %while_cond255
while_end257:
  %1099 = load i64, i64* %1052
  %1100 = load i64, i64* %1055
  %1101 = icmp sle i64 %1099, %1100
  br i1 %1101, label %then276, label %else277
then276:
  %1102 = load %nyx_string*, %nyx_string** %s.ptr
  %1103 = load i64, i64* %1052
  %1104 = load i64, i64* %1055
  %1105 = call %nyx_string* @nyx_string_substring(%nyx_string* %1102, i64 %1103, i64 %1104)
  %1106 = alloca %nyx_string*
  store %nyx_string* %1105, %nyx_string** %1106
  %1107 = load { i64, i8* }*, { i64, i8* }** %1050
  %1108 = load %nyx_string*, %nyx_string** %1106
  %1109 = call %nyx_string* @nyx_string_trim(%nyx_string* %1108)
  %1110 = ptrtoint %nyx_string* %1109 to i64
  call void @nyx_array_push({ i64, i8* }* %1107, i64 %1110)
  br label %merge278
else277:
  br label %merge278
merge278:
  %1111 = load { i64, i8* }*, { i64, i8* }** %1050
  ret { i64, i8* }* %1111
}

define { i64, i8* }* @ty_parse(
%nyx_string* %ann.param) {
  %ann.ptr = alloca %nyx_string*
  store %nyx_string* %ann.param, %nyx_string** %ann.ptr
  %1112 = load %nyx_string*, %nyx_string** %ann.ptr
  %1113 = call %nyx_string* @nyx_string_trim(%nyx_string* %1112)
  %1114 = alloca %nyx_string*
  store %nyx_string* %1113, %nyx_string** %1114
  %1115 = load %nyx_string*, %nyx_string** %1114
  %1116 = getelementptr [1 x i8], [1 x i8]* @.str121, i32 0, i32 0
  %1117 = call %nyx_string* @nyx_string_from_cstr(i8* %1116)
  %1118 = call i8* @nyx_string_to_cstr(%nyx_string* %1115)
  %1119 = call i8* @nyx_string_to_cstr(%nyx_string* %1117)
  %1120 = call i32 @strcmp(i8* %1118, i8* %1119)
  %1121 = icmp eq i32 %1120, 0
  br i1 %1121, label %then279, label %else280
then279:
  %1122 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1122
else280:
  br label %merge281
merge281:
  %1123 = load %nyx_string*, %nyx_string** %1114
  %1124 = getelementptr [4 x i8], [4 x i8]* @.str122, i32 0, i32 0
  %1125 = call %nyx_string* @nyx_string_from_cstr(i8* %1124)
  %1126 = call i8* @nyx_string_to_cstr(%nyx_string* %1123)
  %1127 = call i8* @nyx_string_to_cstr(%nyx_string* %1125)
  %1128 = call i32 @strcmp(i8* %1126, i8* %1127)
  %1129 = icmp eq i32 %1128, 0
  br i1 %1129, label %then282, label %else283
then282:
  %1130 = call { i64, i8* }* @ty_int()
  ret { i64, i8* }* %1130
else283:
  br label %merge284
merge284:
  %1131 = load %nyx_string*, %nyx_string** %1114
  %1132 = getelementptr [6 x i8], [6 x i8]* @.str123, i32 0, i32 0
  %1133 = call %nyx_string* @nyx_string_from_cstr(i8* %1132)
  %1134 = call i8* @nyx_string_to_cstr(%nyx_string* %1131)
  %1135 = call i8* @nyx_string_to_cstr(%nyx_string* %1133)
  %1136 = call i32 @strcmp(i8* %1134, i8* %1135)
  %1137 = icmp eq i32 %1136, 0
  br i1 %1137, label %then285, label %else286
then285:
  %1138 = call { i64, i8* }* @ty_float()
  ret { i64, i8* }* %1138
else286:
  br label %merge287
merge287:
  %1139 = load %nyx_string*, %nyx_string** %1114
  %1140 = getelementptr [5 x i8], [5 x i8]* @.str124, i32 0, i32 0
  %1141 = call %nyx_string* @nyx_string_from_cstr(i8* %1140)
  %1142 = call i8* @nyx_string_to_cstr(%nyx_string* %1139)
  %1143 = call i8* @nyx_string_to_cstr(%nyx_string* %1141)
  %1144 = call i32 @strcmp(i8* %1142, i8* %1143)
  %1145 = icmp eq i32 %1144, 0
  br i1 %1145, label %then288, label %else289
then288:
  %1146 = call { i64, i8* }* @ty_bool()
  ret { i64, i8* }* %1146
else289:
  br label %merge290
merge290:
  %1147 = load %nyx_string*, %nyx_string** %1114
  %1148 = getelementptr [7 x i8], [7 x i8]* @.str125, i32 0, i32 0
  %1149 = call %nyx_string* @nyx_string_from_cstr(i8* %1148)
  %1150 = call i8* @nyx_string_to_cstr(%nyx_string* %1147)
  %1151 = call i8* @nyx_string_to_cstr(%nyx_string* %1149)
  %1152 = call i32 @strcmp(i8* %1150, i8* %1151)
  %1153 = icmp eq i32 %1152, 0
  br i1 %1153, label %then291, label %else292
then291:
  %1154 = call { i64, i8* }* @ty_string()
  ret { i64, i8* }* %1154
else292:
  br label %merge293
merge293:
  %1155 = load %nyx_string*, %nyx_string** %1114
  %1156 = getelementptr [5 x i8], [5 x i8]* @.str126, i32 0, i32 0
  %1157 = call %nyx_string* @nyx_string_from_cstr(i8* %1156)
  %1158 = call i8* @nyx_string_to_cstr(%nyx_string* %1155)
  %1159 = call i8* @nyx_string_to_cstr(%nyx_string* %1157)
  %1160 = call i32 @strcmp(i8* %1158, i8* %1159)
  %1161 = icmp eq i32 %1160, 0
  br i1 %1161, label %then294, label %else295
then294:
  %1162 = call { i64, i8* }* @ty_char()
  ret { i64, i8* }* %1162
else295:
  br label %merge296
merge296:
  %1163 = load %nyx_string*, %nyx_string** %1114
  %1164 = getelementptr [5 x i8], [5 x i8]* @.str127, i32 0, i32 0
  %1165 = call %nyx_string* @nyx_string_from_cstr(i8* %1164)
  %1166 = call i8* @nyx_string_to_cstr(%nyx_string* %1163)
  %1167 = call i8* @nyx_string_to_cstr(%nyx_string* %1165)
  %1168 = call i32 @strcmp(i8* %1166, i8* %1167)
  %1169 = icmp eq i32 %1168, 0
  br i1 %1169, label %then297, label %else298
then297:
  %1170 = call { i64, i8* }* @ty_unit()
  ret { i64, i8* }* %1170
else298:
  br label %merge299
merge299:
  %1171 = load %nyx_string*, %nyx_string** %1114
  %1172 = getelementptr [3 x i8], [3 x i8]* @.str128, i32 0, i32 0
  %1173 = call %nyx_string* @nyx_string_from_cstr(i8* %1172)
  %1174 = call i8* @nyx_string_to_cstr(%nyx_string* %1171)
  %1175 = call i8* @nyx_string_to_cstr(%nyx_string* %1173)
  %1176 = call i32 @strcmp(i8* %1174, i8* %1175)
  %1177 = icmp eq i32 %1176, 0
  br i1 %1177, label %then300, label %else301
then300:
  %1178 = call { i64, i8* }* @ty_unit()
  ret { i64, i8* }* %1178
else301:
  br label %merge302
merge302:
  %1179 = load %nyx_string*, %nyx_string** %1114
  %1180 = getelementptr [5 x i8], [5 x i8]* @.str129, i32 0, i32 0
  %1181 = call %nyx_string* @nyx_string_from_cstr(i8* %1180)
  %1182 = call i8* @nyx_string_to_cstr(%nyx_string* %1179)
  %1183 = call i8* @nyx_string_to_cstr(%nyx_string* %1181)
  %1184 = call i32 @strcmp(i8* %1182, i8* %1183)
  %1185 = icmp eq i32 %1184, 0
  br i1 %1185, label %then303, label %else304
then303:
  %1186 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1186
else304:
  br label %merge305
merge305:
  %1187 = load %nyx_string*, %nyx_string** %1114
  %1188 = call i1 @is_sized_name(%nyx_string* %1187)
  br i1 %1188, label %then306, label %else307
then306:
  %1189 = load %nyx_string*, %nyx_string** %1114
  %1190 = call { i64, i8* }* @ty_sized(%nyx_string* %1189)
  ret { i64, i8* }* %1190
else307:
  br label %merge308
merge308:
  %1191 = load %nyx_string*, %nyx_string** %1114
  %1192 = getelementptr [2 x i8], [2 x i8]* @.str130, i32 0, i32 0
  %1193 = call %nyx_string* @nyx_string_from_cstr(i8* %1192)
  %1194 = call i1 @nyx_string_starts_with(%nyx_string* %1191, %nyx_string* %1193)
  br i1 %1194, label %then309, label %else310
then309:
  %1195 = load %nyx_string*, %nyx_string** %1114
  %1196 = load %nyx_string*, %nyx_string** %1114
  %1197 = call i64 @nyx_string_length_utf8(%nyx_string* %1196)
  %1198 = call %nyx_string* @nyx_string_substring(%nyx_string* %1195, i64 1, i64 %1197)
  %1199 = alloca %nyx_string*
  store %nyx_string* %1198, %nyx_string** %1199
  %1200 = load %nyx_string*, %nyx_string** %1199
  %1201 = call { i64, i8* }* @ty_parse(%nyx_string* %1200)
  %1202 = alloca { i64, i8* }*
  store { i64, i8* }* %1201, { i64, i8* }** %1202
  %1203 = load { i64, i8* }*, { i64, i8* }** %1202
  %1204 = call { i64, i8* }* @ty_ptr({ i64, i8* }* %1203)
  ret { i64, i8* }* %1204
else310:
  br label %merge311
merge311:
  %1205 = load %nyx_string*, %nyx_string** %1114
  %1206 = getelementptr [6 x i8], [6 x i8]* @.str131, i32 0, i32 0
  %1207 = call %nyx_string* @nyx_string_from_cstr(i8* %1206)
  %1208 = call i1 @nyx_string_starts_with(%nyx_string* %1205, %nyx_string* %1207)
  br i1 %1208, label %then312, label %else313
then312:
  %1209 = load %nyx_string*, %nyx_string** %1114
  %1210 = load %nyx_string*, %nyx_string** %1114
  %1211 = call i64 @nyx_string_length_utf8(%nyx_string* %1210)
  %1212 = call %nyx_string* @nyx_string_substring(%nyx_string* %1209, i64 5, i64 %1211)
  %1213 = alloca %nyx_string*
  store %nyx_string* %1212, %nyx_string** %1213
  %1214 = load %nyx_string*, %nyx_string** %1213
  %1215 = call { i64, i8* }* @ty_parse(%nyx_string* %1214)
  %1216 = alloca { i64, i8* }*
  store { i64, i8* }* %1215, { i64, i8* }** %1216
  %1217 = load { i64, i8* }*, { i64, i8* }** %1216
  %1218 = call { i64, i8* }* @ty_ref_mut({ i64, i8* }* %1217)
  ret { i64, i8* }* %1218
else313:
  br label %merge314
merge314:
  %1219 = load %nyx_string*, %nyx_string** %1114
  %1220 = getelementptr [2 x i8], [2 x i8]* @.str132, i32 0, i32 0
  %1221 = call %nyx_string* @nyx_string_from_cstr(i8* %1220)
  %1222 = call i1 @nyx_string_starts_with(%nyx_string* %1219, %nyx_string* %1221)
  br i1 %1222, label %then315, label %else316
then315:
  %1223 = load %nyx_string*, %nyx_string** %1114
  %1224 = load %nyx_string*, %nyx_string** %1114
  %1225 = call i64 @nyx_string_length_utf8(%nyx_string* %1224)
  %1226 = call %nyx_string* @nyx_string_substring(%nyx_string* %1223, i64 1, i64 %1225)
  %1227 = alloca %nyx_string*
  store %nyx_string* %1226, %nyx_string** %1227
  %1228 = load %nyx_string*, %nyx_string** %1227
  %1229 = call { i64, i8* }* @ty_parse(%nyx_string* %1228)
  %1230 = alloca { i64, i8* }*
  store { i64, i8* }* %1229, { i64, i8* }** %1230
  %1231 = load { i64, i8* }*, { i64, i8* }** %1230
  %1232 = call { i64, i8* }* @ty_ref({ i64, i8* }* %1231)
  ret { i64, i8* }* %1232
else316:
  br label %merge317
merge317:
  %1233 = load %nyx_string*, %nyx_string** %1114
  %1234 = getelementptr [5 x i8], [5 x i8]* @.str133, i32 0, i32 0
  %1235 = call %nyx_string* @nyx_string_from_cstr(i8* %1234)
  %1236 = call i1 @nyx_string_starts_with(%nyx_string* %1233, %nyx_string* %1235)
  br i1 %1236, label %then318, label %else319
then318:
  %1237 = load %nyx_string*, %nyx_string** %1114
  %1238 = load %nyx_string*, %nyx_string** %1114
  %1239 = call i64 @nyx_string_length_utf8(%nyx_string* %1238)
  %1240 = call %nyx_string* @nyx_string_substring(%nyx_string* %1237, i64 4, i64 %1239)
  %1241 = alloca %nyx_string*
  store %nyx_string* %1240, %nyx_string** %1241
  %1242 = load %nyx_string*, %nyx_string** %1241
  %1243 = call %nyx_string* @nyx_string_trim(%nyx_string* %1242)
  %1244 = call { i64, i8* }* @ty_dyn(%nyx_string* %1243)
  ret { i64, i8* }* %1244
else319:
  br label %merge320
merge320:
  %1245 = load %nyx_string*, %nyx_string** %1114
  %1246 = getelementptr [4 x i8], [4 x i8]* @.str134, i32 0, i32 0
  %1247 = call %nyx_string* @nyx_string_from_cstr(i8* %1246)
  %1248 = call i1 @nyx_string_starts_with(%nyx_string* %1245, %nyx_string* %1247)
  br i1 %1248, label %then321, label %else322
then321:
  %1249 = load %nyx_string*, %nyx_string** %1114
  %1250 = call i64 @nyx_string_length_utf8(%nyx_string* %1249)
  %1251 = alloca i64
  store i64 %1250, i64* %1251
  %1252 = alloca i64
  store i64 0, i64* %1252
  %1253 = sub i64 0, 1
  %1254 = alloca i64
  store i64 %1253, i64* %1254
  %1255 = alloca i64
  store i64 0, i64* %1255
  br label %while_cond324
while_cond324:
  %1256 = load i64, i64* %1255
  %1257 = load i64, i64* %1251
  %1258 = icmp slt i64 %1256, %1257
  br i1 %1258, label %while_body325, label %while_end326
while_body325:
  %1259 = load %nyx_string*, %nyx_string** %1114
  %1260 = load i64, i64* %1255
  %1261 = call i8 @nyx_string_char_at(%nyx_string* %1259, i64 %1260)
  %1262 = zext i8 %1261 to i64
  %1263 = alloca i64
  store i64 %1262, i64* %1263
  %1264 = load i64, i64* %1263
  %1265 = icmp eq i64 %1264, 40
  br i1 %1265, label %then327, label %else328
then327:
  %1266 = load i64, i64* %1252
  %1267 = add i64 %1266, 1
  store i64 %1267, i64* %1252
  br label %merge329
else328:
  %1268 = load i64, i64* %1263
  %1269 = icmp eq i64 %1268, 41
  br i1 %1269, label %then330, label %else331
then330:
  %1270 = load i64, i64* %1252
  %1271 = sub i64 %1270, 1
  store i64 %1271, i64* %1252
  %1272 = load i64, i64* %1252
  %1273 = icmp eq i64 %1272, 0
  br i1 %1273, label %then333, label %else334
then333:
  %1274 = load i64, i64* %1255
  store i64 %1274, i64* %1254
  %1275 = load i64, i64* %1251
  store i64 %1275, i64* %1255
  br label %merge335
else334:
  br label %merge335
merge335:
  br label %merge332
else331:
  br label %merge332
merge332:
  br label %merge329
merge329:
  %1276 = load i64, i64* %1255
  %1277 = add i64 %1276, 1
  store i64 %1277, i64* %1255
  br label %while_cond324
while_end326:
  %1278 = load i64, i64* %1254
  %1279 = icmp slt i64 %1278, 0
  br i1 %1279, label %then336, label %else337
then336:
  %1280 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1280
else337:
  br label %merge338
merge338:
  %1281 = load %nyx_string*, %nyx_string** %1114
  %1282 = load i64, i64* %1254
  %1283 = call %nyx_string* @nyx_string_substring(%nyx_string* %1281, i64 3, i64 %1282)
  %1284 = alloca %nyx_string*
  store %nyx_string* %1283, %nyx_string** %1284
  %1285 = call { i64, i8* }* @nyx_array_new_ptr()
  %1286 = alloca { i64, i8* }*
  store { i64, i8* }* %1285, { i64, i8* }** %1286
  %1287 = load %nyx_string*, %nyx_string** %1284
  %1288 = call %nyx_string* @nyx_string_trim(%nyx_string* %1287)
  %1289 = getelementptr [1 x i8], [1 x i8]* @.str135, i32 0, i32 0
  %1290 = call %nyx_string* @nyx_string_from_cstr(i8* %1289)
  %1291 = call i8* @nyx_string_to_cstr(%nyx_string* %1288)
  %1292 = call i8* @nyx_string_to_cstr(%nyx_string* %1290)
  %1293 = call i32 @strcmp(i8* %1291, i8* %1292)
  %1294 = icmp ne i32 %1293, 0
  br i1 %1294, label %then339, label %else340
then339:
  %1295 = load %nyx_string*, %nyx_string** %1284
  %1296 = call { i64, i8* }* @split_at_depth0(%nyx_string* %1295, i64 44)
  store { i64, i8* }* %1296, { i64, i8* }** %1286
  br label %merge341
else340:
  br label %merge341
merge341:
  %1297 = call { i64, i8* }* @nyx_array_new_ptr()
  %1298 = alloca { i64, i8* }*
  store { i64, i8* }* %1297, { i64, i8* }** %1298
  %1299 = alloca i64
  store i64 0, i64* %1299
  br label %while_cond342
while_cond342:
  %1300 = load i64, i64* %1299
  %1301 = load { i64, i8* }*, { i64, i8* }** %1286
  %1302 = call i64 @nyx_array_length({ i64, i8* }* %1301)
  %1303 = icmp slt i64 %1300, %1302
  br i1 %1303, label %while_body343, label %while_end344
while_body343:
  %1304 = load { i64, i8* }*, { i64, i8* }** %1286
  %1305 = load i64, i64* %1299
  %1306 = call i64 @nyx_array_get({ i64, i8* }* %1304, i64 %1305)
  %1307 = inttoptr i64 %1306 to %nyx_string*
  %1308 = alloca %nyx_string*
  store %nyx_string* %1307, %nyx_string** %1308
  %1309 = load %nyx_string*, %nyx_string** %1308
  %1310 = call { i64, i8* }* @ty_parse(%nyx_string* %1309)
  %1311 = alloca { i64, i8* }*
  store { i64, i8* }* %1310, { i64, i8* }** %1311
  %1312 = load { i64, i8* }*, { i64, i8* }** %1298
  %1313 = load { i64, i8* }*, { i64, i8* }** %1311
  %1314 = ptrtoint { i64, i8* }* %1313 to i64
  call void @nyx_array_push({ i64, i8* }* %1312, i64 %1314)
  %1315 = load i64, i64* %1299
  %1316 = add i64 %1315, 1
  store i64 %1316, i64* %1299
  br label %while_cond342
while_end344:
  %1317 = call { i64, i8* }* @ty_unit()
  %1318 = alloca { i64, i8* }*
  store { i64, i8* }* %1317, { i64, i8* }** %1318
  %1319 = load i64, i64* %1254
  %1320 = add i64 %1319, 1
  %1321 = load i64, i64* %1251
  %1322 = icmp slt i64 %1320, %1321
  br i1 %1322, label %then345, label %else346
then345:
  %1323 = load %nyx_string*, %nyx_string** %1114
  %1324 = load i64, i64* %1254
  %1325 = add i64 %1324, 1
  %1326 = load i64, i64* %1251
  %1327 = call %nyx_string* @nyx_string_substring(%nyx_string* %1323, i64 %1325, i64 %1326)
  %1328 = call %nyx_string* @nyx_string_trim(%nyx_string* %1327)
  %1329 = alloca %nyx_string*
  store %nyx_string* %1328, %nyx_string** %1329
  %1330 = load %nyx_string*, %nyx_string** %1329
  %1331 = getelementptr [3 x i8], [3 x i8]* @.str136, i32 0, i32 0
  %1332 = call %nyx_string* @nyx_string_from_cstr(i8* %1331)
  %1333 = call i1 @nyx_string_starts_with(%nyx_string* %1330, %nyx_string* %1332)
  br i1 %1333, label %then348, label %else349
then348:
  %1334 = load %nyx_string*, %nyx_string** %1329
  %1335 = load %nyx_string*, %nyx_string** %1329
  %1336 = call i64 @nyx_string_length_utf8(%nyx_string* %1335)
  %1337 = call %nyx_string* @nyx_string_substring(%nyx_string* %1334, i64 2, i64 %1336)
  %1338 = alloca %nyx_string*
  store %nyx_string* %1337, %nyx_string** %1338
  %1339 = load %nyx_string*, %nyx_string** %1338
  %1340 = call { i64, i8* }* @ty_parse(%nyx_string* %1339)
  store { i64, i8* }* %1340, { i64, i8* }** %1318
  br label %merge350
else349:
  br label %merge350
merge350:
  br label %merge347
else346:
  br label %merge347
merge347:
  %1341 = load { i64, i8* }*, { i64, i8* }** %1298
  %1342 = load { i64, i8* }*, { i64, i8* }** %1318
  %1343 = call { i64, i8* }* @ty_fn({ i64, i8* }* %1341, { i64, i8* }* %1342)
  ret { i64, i8* }* %1343
else322:
  br label %merge323
merge323:
  %1344 = load %nyx_string*, %nyx_string** %1114
  %1345 = getelementptr [2 x i8], [2 x i8]* @.str137, i32 0, i32 0
  %1346 = call %nyx_string* @nyx_string_from_cstr(i8* %1345)
  %1347 = call i1 @nyx_string_ends_with(%nyx_string* %1344, %nyx_string* %1346)
  br i1 %1347, label %then351, label %else352
then351:
  %1348 = load %nyx_string*, %nyx_string** %1114
  %1349 = getelementptr [2 x i8], [2 x i8]* @.str138, i32 0, i32 0
  %1350 = call %nyx_string* @nyx_string_from_cstr(i8* %1349)
  %1351 = call i64 @nyx_string_index_of(%nyx_string* %1348, %nyx_string* %1350)
  %1352 = alloca i64
  store i64 %1351, i64* %1352
  %1353 = load i64, i64* %1352
  %1354 = icmp sgt i64 %1353, 0
  br i1 %1354, label %then354, label %else355
then354:
  %1355 = load %nyx_string*, %nyx_string** %1114
  %1356 = load i64, i64* %1352
  %1357 = call %nyx_string* @nyx_string_substring(%nyx_string* %1355, i64 0, i64 %1356)
  %1358 = call %nyx_string* @nyx_string_trim(%nyx_string* %1357)
  %1359 = alloca %nyx_string*
  store %nyx_string* %1358, %nyx_string** %1359
  %1360 = load %nyx_string*, %nyx_string** %1114
  %1361 = load i64, i64* %1352
  %1362 = add i64 %1361, 1
  %1363 = load %nyx_string*, %nyx_string** %1114
  %1364 = call i64 @nyx_string_length_utf8(%nyx_string* %1363)
  %1365 = sub i64 %1364, 1
  %1366 = call %nyx_string* @nyx_string_substring(%nyx_string* %1360, i64 %1362, i64 %1365)
  %1367 = alloca %nyx_string*
  store %nyx_string* %1366, %nyx_string** %1367
  %1368 = load %nyx_string*, %nyx_string** %1367
  %1369 = call { i64, i8* }* @split_at_depth0(%nyx_string* %1368, i64 44)
  %1370 = alloca { i64, i8* }*
  store { i64, i8* }* %1369, { i64, i8* }** %1370
  %1371 = call { i64, i8* }* @nyx_array_new_ptr()
  %1372 = alloca { i64, i8* }*
  store { i64, i8* }* %1371, { i64, i8* }** %1372
  %1373 = alloca i64
  store i64 0, i64* %1373
  br label %while_cond357
while_cond357:
  %1374 = load i64, i64* %1373
  %1375 = load { i64, i8* }*, { i64, i8* }** %1370
  %1376 = call i64 @nyx_array_length({ i64, i8* }* %1375)
  %1377 = icmp slt i64 %1374, %1376
  br i1 %1377, label %while_body358, label %while_end359
while_body358:
  %1378 = load { i64, i8* }*, { i64, i8* }** %1370
  %1379 = load i64, i64* %1373
  %1380 = call i64 @nyx_array_get({ i64, i8* }* %1378, i64 %1379)
  %1381 = inttoptr i64 %1380 to %nyx_string*
  %1382 = alloca %nyx_string*
  store %nyx_string* %1381, %nyx_string** %1382
  %1383 = load %nyx_string*, %nyx_string** %1382
  %1384 = call { i64, i8* }* @ty_parse(%nyx_string* %1383)
  %1385 = alloca { i64, i8* }*
  store { i64, i8* }* %1384, { i64, i8* }** %1385
  %1386 = load { i64, i8* }*, { i64, i8* }** %1372
  %1387 = load { i64, i8* }*, { i64, i8* }** %1385
  %1388 = ptrtoint { i64, i8* }* %1387 to i64
  call void @nyx_array_push({ i64, i8* }* %1386, i64 %1388)
  %1389 = load i64, i64* %1373
  %1390 = add i64 %1389, 1
  store i64 %1390, i64* %1373
  br label %while_cond357
while_end359:
  %1391 = load %nyx_string*, %nyx_string** %1359
  %1392 = getelementptr [6 x i8], [6 x i8]* @.str139, i32 0, i32 0
  %1393 = call %nyx_string* @nyx_string_from_cstr(i8* %1392)
  %1394 = call i8* @nyx_string_to_cstr(%nyx_string* %1391)
  %1395 = call i8* @nyx_string_to_cstr(%nyx_string* %1393)
  %1396 = call i32 @strcmp(i8* %1394, i8* %1395)
  %1397 = icmp eq i32 %1396, 0
  br i1 %1397, label %then360, label %else361
then360:
  %1398 = load { i64, i8* }*, { i64, i8* }** %1372
  %1399 = call i64 @nyx_array_length({ i64, i8* }* %1398)
  %1400 = icmp eq i64 %1399, 1
  br i1 %1400, label %then363, label %else364
then363:
  %1401 = load { i64, i8* }*, { i64, i8* }** %1372
  %1402 = call i64 @nyx_array_get({ i64, i8* }* %1401, i64 0)
  %1403 = call { i64, i8* }* @ty_array(i64 %1402)
  ret { i64, i8* }* %1403
else364:
  br label %merge365
merge365:
  br label %merge362
else361:
  br label %merge362
merge362:
  %1404 = load %nyx_string*, %nyx_string** %1359
  %1405 = getelementptr [7 x i8], [7 x i8]* @.str140, i32 0, i32 0
  %1406 = call %nyx_string* @nyx_string_from_cstr(i8* %1405)
  %1407 = call i8* @nyx_string_to_cstr(%nyx_string* %1404)
  %1408 = call i8* @nyx_string_to_cstr(%nyx_string* %1406)
  %1409 = call i32 @strcmp(i8* %1407, i8* %1408)
  %1410 = icmp eq i32 %1409, 0
  br i1 %1410, label %then366, label %else367
then366:
  %1411 = load { i64, i8* }*, { i64, i8* }** %1372
  %1412 = call i64 @nyx_array_length({ i64, i8* }* %1411)
  %1413 = icmp eq i64 %1412, 1
  br i1 %1413, label %then369, label %else370
then369:
  %1414 = load { i64, i8* }*, { i64, i8* }** %1372
  %1415 = call i64 @nyx_array_get({ i64, i8* }* %1414, i64 0)
  %1416 = call { i64, i8* }* @ty_option(i64 %1415)
  ret { i64, i8* }* %1416
else370:
  br label %merge371
merge371:
  br label %merge368
else367:
  br label %merge368
merge368:
  %1417 = load %nyx_string*, %nyx_string** %1359
  %1418 = getelementptr [7 x i8], [7 x i8]* @.str141, i32 0, i32 0
  %1419 = call %nyx_string* @nyx_string_from_cstr(i8* %1418)
  %1420 = call i8* @nyx_string_to_cstr(%nyx_string* %1417)
  %1421 = call i8* @nyx_string_to_cstr(%nyx_string* %1419)
  %1422 = call i32 @strcmp(i8* %1420, i8* %1421)
  %1423 = icmp eq i32 %1422, 0
  br i1 %1423, label %then372, label %else373
then372:
  %1424 = load { i64, i8* }*, { i64, i8* }** %1372
  %1425 = call i64 @nyx_array_length({ i64, i8* }* %1424)
  %1426 = icmp eq i64 %1425, 2
  br i1 %1426, label %then375, label %else376
then375:
  %1427 = load { i64, i8* }*, { i64, i8* }** %1372
  %1428 = call i64 @nyx_array_get({ i64, i8* }* %1427, i64 0)
  %1429 = load { i64, i8* }*, { i64, i8* }** %1372
  %1430 = call i64 @nyx_array_get({ i64, i8* }* %1429, i64 1)
  %1431 = call { i64, i8* }* @ty_result(i64 %1428, i64 %1430)
  ret { i64, i8* }* %1431
else376:
  br label %merge377
merge377:
  br label %merge374
else373:
  br label %merge374
merge374:
  %1432 = load %nyx_string*, %nyx_string** %1359
  %1433 = getelementptr [4 x i8], [4 x i8]* @.str142, i32 0, i32 0
  %1434 = call %nyx_string* @nyx_string_from_cstr(i8* %1433)
  %1435 = call i8* @nyx_string_to_cstr(%nyx_string* %1432)
  %1436 = call i8* @nyx_string_to_cstr(%nyx_string* %1434)
  %1437 = call i32 @strcmp(i8* %1435, i8* %1436)
  %1438 = icmp eq i32 %1437, 0
  br i1 %1438, label %then378, label %else379
then378:
  %1439 = load { i64, i8* }*, { i64, i8* }** %1372
  %1440 = call i64 @nyx_array_length({ i64, i8* }* %1439)
  %1441 = icmp eq i64 %1440, 2
  br i1 %1441, label %then381, label %else382
then381:
  %1442 = load { i64, i8* }*, { i64, i8* }** %1372
  %1443 = call i64 @nyx_array_get({ i64, i8* }* %1442, i64 0)
  %1444 = load { i64, i8* }*, { i64, i8* }** %1372
  %1445 = call i64 @nyx_array_get({ i64, i8* }* %1444, i64 1)
  %1446 = call { i64, i8* }* @ty_map(i64 %1443, i64 %1445)
  ret { i64, i8* }* %1446
else382:
  br label %merge383
merge383:
  %1447 = load { i64, i8* }*, { i64, i8* }** %1372
  %1448 = call i64 @nyx_array_length({ i64, i8* }* %1447)
  %1449 = icmp eq i64 %1448, 1
  br i1 %1449, label %then384, label %else385
then384:
  %1450 = call { i64, i8* }* @ty_string()
  %1451 = load { i64, i8* }*, { i64, i8* }** %1372
  %1452 = call i64 @nyx_array_get({ i64, i8* }* %1451, i64 0)
  %1453 = call { i64, i8* }* @ty_map({ i64, i8* }* %1450, i64 %1452)
  ret { i64, i8* }* %1453
else385:
  br label %merge386
merge386:
  br label %merge380
else379:
  br label %merge380
merge380:
  %1454 = load %nyx_string*, %nyx_string** %1359
  %1455 = load { i64, i8* }*, { i64, i8* }** %1372
  %1456 = call { i64, i8* }* @ty_struct_ty(%nyx_string* %1454, { i64, i8* }* %1455)
  ret { i64, i8* }* %1456
else355:
  br label %merge356
merge356:
  br label %merge353
else352:
  br label %merge353
merge353:
  %1457 = load %nyx_string*, %nyx_string** %1114
  %1458 = getelementptr [6 x i8], [6 x i8]* @.str143, i32 0, i32 0
  %1459 = call %nyx_string* @nyx_string_from_cstr(i8* %1458)
  %1460 = call i8* @nyx_string_to_cstr(%nyx_string* %1457)
  %1461 = call i8* @nyx_string_to_cstr(%nyx_string* %1459)
  %1462 = call i32 @strcmp(i8* %1460, i8* %1461)
  %1463 = icmp eq i32 %1462, 0
  br i1 %1463, label %then387, label %else388
then387:
  %1464 = call { i64, i8* }* @ty_unknown()
  %1465 = call { i64, i8* }* @ty_array({ i64, i8* }* %1464)
  ret { i64, i8* }* %1465
else388:
  br label %merge389
merge389:
  %1466 = load %nyx_string*, %nyx_string** %1114
  %1467 = getelementptr [7 x i8], [7 x i8]* @.str144, i32 0, i32 0
  %1468 = call %nyx_string* @nyx_string_from_cstr(i8* %1467)
  %1469 = call i8* @nyx_string_to_cstr(%nyx_string* %1466)
  %1470 = call i8* @nyx_string_to_cstr(%nyx_string* %1468)
  %1471 = call i32 @strcmp(i8* %1469, i8* %1470)
  %1472 = icmp eq i32 %1471, 0
  br i1 %1472, label %then390, label %else391
then390:
  %1473 = call { i64, i8* }* @ty_unknown()
  %1474 = call { i64, i8* }* @ty_option({ i64, i8* }* %1473)
  ret { i64, i8* }* %1474
else391:
  br label %merge392
merge392:
  %1475 = load %nyx_string*, %nyx_string** %1114
  %1476 = getelementptr [7 x i8], [7 x i8]* @.str145, i32 0, i32 0
  %1477 = call %nyx_string* @nyx_string_from_cstr(i8* %1476)
  %1478 = call i8* @nyx_string_to_cstr(%nyx_string* %1475)
  %1479 = call i8* @nyx_string_to_cstr(%nyx_string* %1477)
  %1480 = call i32 @strcmp(i8* %1478, i8* %1479)
  %1481 = icmp eq i32 %1480, 0
  br i1 %1481, label %then393, label %else394
then393:
  %1482 = call { i64, i8* }* @ty_unknown()
  %1483 = call { i64, i8* }* @ty_unknown()
  %1484 = call { i64, i8* }* @ty_result({ i64, i8* }* %1482, { i64, i8* }* %1483)
  ret { i64, i8* }* %1484
else394:
  br label %merge395
merge395:
  %1485 = load %nyx_string*, %nyx_string** %1114
  %1486 = getelementptr [4 x i8], [4 x i8]* @.str146, i32 0, i32 0
  %1487 = call %nyx_string* @nyx_string_from_cstr(i8* %1486)
  %1488 = call i8* @nyx_string_to_cstr(%nyx_string* %1485)
  %1489 = call i8* @nyx_string_to_cstr(%nyx_string* %1487)
  %1490 = call i32 @strcmp(i8* %1488, i8* %1489)
  %1491 = icmp eq i32 %1490, 0
  br i1 %1491, label %then396, label %else397
then396:
  %1492 = call { i64, i8* }* @ty_unknown()
  %1493 = call { i64, i8* }* @ty_unknown()
  %1494 = call { i64, i8* }* @ty_map({ i64, i8* }* %1492, { i64, i8* }* %1493)
  ret { i64, i8* }* %1494
else397:
  br label %merge398
merge398:
  %1495 = load %nyx_string*, %nyx_string** %1114
  %1496 = call i64 @nyx_string_length_utf8(%nyx_string* %1495)
  %1497 = icmp sle i64 %1496, 2
  br i1 %1497, label %then399, label %else400
then399:
  %1498 = load %nyx_string*, %nyx_string** %1114
  %1499 = call i8 @nyx_string_char_at(%nyx_string* %1498, i64 0)
  %1500 = zext i8 %1499 to i64
  %1501 = alloca i64
  store i64 %1500, i64* %1501
  %1502 = alloca i1
  store i1 false, i1* %1502
  %1503 = load i64, i64* %1501
  %1504 = icmp sge i64 %1503, 65
  br i1 %1504, label %sc_and_rhs402, label %sc_and_end403
sc_and_rhs402:
  %1505 = load i64, i64* %1501
  %1506 = icmp sle i64 %1505, 90
  store i1 %1506, i1* %1502
  br label %sc_and_end403
sc_and_end403:
  %1507 = load i1, i1* %1502
  br i1 %1507, label %then404, label %else405
then404:
  %1508 = load %nyx_string*, %nyx_string** %1114
  %1509 = call { i64, i8* }* @ty_generic(%nyx_string* %1508)
  ret { i64, i8* }* %1509
else405:
  br label %merge406
merge406:
  br label %merge401
else400:
  br label %merge401
merge401:
  %1510 = load %nyx_string*, %nyx_string** %1114
  %1511 = call { i64, i8* }* @nyx_array_new_ptr()
  %1512 = call { i64, i8* }* @ty_struct_ty(%nyx_string* %1510, { i64, i8* }* %1511)
  ret { i64, i8* }* %1512
}

define { i64, i8* }* @ty_of_literal(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %1513 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 0
  %1514 = load %nyx_string*, %nyx_string** %1513
  %1515 = alloca %nyx_string*
  store %nyx_string* %1514, %nyx_string** %1515
  %1516 = load %nyx_string*, %nyx_string** %1515
  %1517 = getelementptr [7 x i8], [7 x i8]* @.str147, i32 0, i32 0
  %1518 = call %nyx_string* @nyx_string_from_cstr(i8* %1517)
  %1519 = call i8* @nyx_string_to_cstr(%nyx_string* %1516)
  %1520 = call i8* @nyx_string_to_cstr(%nyx_string* %1518)
  %1521 = call i32 @strcmp(i8* %1519, i8* %1520)
  %1522 = icmp eq i32 %1521, 0
  br i1 %1522, label %then407, label %else408
then407:
  %1523 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %1524 = load { i64, i8* }*, { i64, i8* }** %1523
  %1525 = alloca { i64, i8* }*
  store { i64, i8* }* %1524, { i64, i8* }** %1525
  %1526 = load { i64, i8* }*, { i64, i8* }** %1525
  %1527 = call i64 @nyx_array_length({ i64, i8* }* %1526)
  %1528 = icmp sgt i64 %1527, 0
  br i1 %1528, label %then410, label %else411
then410:
  %1529 = load { i64, i8* }*, { i64, i8* }** %1525
  %1530 = call i64 @nyx_array_get({ i64, i8* }* %1529, i64 0)
  %1531 = inttoptr i64 %1530 to %nyx_string*
  %1532 = alloca %nyx_string*
  store %nyx_string* %1531, %nyx_string** %1532
  %1533 = load %nyx_string*, %nyx_string** %1532
  %1534 = getelementptr [2 x i8], [2 x i8]* @.str148, i32 0, i32 0
  %1535 = call %nyx_string* @nyx_string_from_cstr(i8* %1534)
  %1536 = call i64 @nyx_string_index_of(%nyx_string* %1533, %nyx_string* %1535)
  %1537 = icmp sge i64 %1536, 0
  br i1 %1537, label %then413, label %else414
then413:
  %1538 = call { i64, i8* }* @ty_float()
  ret { i64, i8* }* %1538
else414:
  br label %merge415
merge415:
  br label %merge412
else411:
  br label %merge412
merge412:
  %1539 = call { i64, i8* }* @ty_int()
  ret { i64, i8* }* %1539
else408:
  br label %merge409
merge409:
  %1540 = load %nyx_string*, %nyx_string** %1515
  %1541 = getelementptr [7 x i8], [7 x i8]* @.str149, i32 0, i32 0
  %1542 = call %nyx_string* @nyx_string_from_cstr(i8* %1541)
  %1543 = call i8* @nyx_string_to_cstr(%nyx_string* %1540)
  %1544 = call i8* @nyx_string_to_cstr(%nyx_string* %1542)
  %1545 = call i32 @strcmp(i8* %1543, i8* %1544)
  %1546 = icmp eq i32 %1545, 0
  br i1 %1546, label %then416, label %else417
then416:
  %1547 = call { i64, i8* }* @ty_string()
  ret { i64, i8* }* %1547
else417:
  br label %merge418
merge418:
  %1548 = load %nyx_string*, %nyx_string** %1515
  %1549 = getelementptr [5 x i8], [5 x i8]* @.str150, i32 0, i32 0
  %1550 = call %nyx_string* @nyx_string_from_cstr(i8* %1549)
  %1551 = call i8* @nyx_string_to_cstr(%nyx_string* %1548)
  %1552 = call i8* @nyx_string_to_cstr(%nyx_string* %1550)
  %1553 = call i32 @strcmp(i8* %1551, i8* %1552)
  %1554 = icmp eq i32 %1553, 0
  br i1 %1554, label %then419, label %else420
then419:
  %1555 = call { i64, i8* }* @ty_bool()
  ret { i64, i8* }* %1555
else420:
  br label %merge421
merge421:
  %1556 = load %nyx_string*, %nyx_string** %1515
  %1557 = getelementptr [5 x i8], [5 x i8]* @.str151, i32 0, i32 0
  %1558 = call %nyx_string* @nyx_string_from_cstr(i8* %1557)
  %1559 = call i8* @nyx_string_to_cstr(%nyx_string* %1556)
  %1560 = call i8* @nyx_string_to_cstr(%nyx_string* %1558)
  %1561 = call i32 @strcmp(i8* %1559, i8* %1560)
  %1562 = icmp eq i32 %1561, 0
  br i1 %1562, label %then422, label %else423
then422:
  %1563 = call { i64, i8* }* @ty_char()
  ret { i64, i8* }* %1563
else423:
  br label %merge424
merge424:
  %1564 = load %nyx_string*, %nyx_string** %1515
  %1565 = getelementptr [6 x i8], [6 x i8]* @.str152, i32 0, i32 0
  %1566 = call %nyx_string* @nyx_string_from_cstr(i8* %1565)
  %1567 = call i8* @nyx_string_to_cstr(%nyx_string* %1564)
  %1568 = call i8* @nyx_string_to_cstr(%nyx_string* %1566)
  %1569 = call i32 @strcmp(i8* %1567, i8* %1568)
  %1570 = icmp eq i32 %1569, 0
  br i1 %1570, label %then425, label %else426
then425:
  %1571 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %1572 = load { i64, i8* }*, { i64, i8* }** %1571
  %1573 = alloca { i64, i8* }*
  store { i64, i8* }* %1572, { i64, i8* }** %1573
  %1574 = load { i64, i8* }*, { i64, i8* }** %1573
  %1575 = call i64 @nyx_array_length({ i64, i8* }* %1574)
  %1576 = icmp sgt i64 %1575, 0
  br i1 %1576, label %then428, label %else429
then428:
  %1577 = load { i64, i8* }*, { i64, i8* }** %1573
  %1578 = call i64 @nyx_array_get({ i64, i8* }* %1577, i64 0)
  %1579 = inttoptr i64 %1578 to { i64, i8* }*
  %1580 = alloca { i64, i8* }*
  store { i64, i8* }* %1579, { i64, i8* }** %1580
  %1581 = load { i64, i8* }*, { i64, i8* }** %1580
  %1582 = call i64 @nyx_array_length({ i64, i8* }* %1581)
  %1583 = icmp sgt i64 %1582, 0
  br i1 %1583, label %then431, label %else432
then431:
  %1584 = load { i64, i8* }*, { i64, i8* }** %1580
  %1585 = call i64 @nyx_array_get({ i64, i8* }* %1584, i64 0)
  %1586 = inttoptr i64 %1585 to { i64, i8* }*
  %1587 = call i64 @nyx_array_get({ i64, i8* }* %1586, i64 0)
  %1588 = call i64 @nyx_array_get({ i64, i8* }* %1586, i64 1)
  %1589 = inttoptr i64 %1587 to %nyx_string*
  %1590 = inttoptr i64 %1588 to { i64, i8* }*
  %1591 = alloca %ASTNode
  %1592 = getelementptr inbounds %ASTNode, %ASTNode* %1591, i32 0, i32 0
  store %nyx_string* %1589, %nyx_string** %1592
  %1593 = getelementptr inbounds %ASTNode, %ASTNode* %1591, i32 0, i32 1
  store { i64, i8* }* %1590, { i64, i8* }** %1593
  %1594 = load %ASTNode, %ASTNode* %1591
  %1595 = alloca %ASTNode
  store %ASTNode %1594, %ASTNode* %1595
  %1596 = load %ASTNode, %ASTNode* %1595
  %1597 = call { i64, i8* }* @ty_of_literal(%ASTNode %1596)
  %1598 = alloca { i64, i8* }*
  store { i64, i8* }* %1597, { i64, i8* }** %1598
  %1599 = load { i64, i8* }*, { i64, i8* }** %1598
  %1600 = call i1 @ty_is_unknown({ i64, i8* }* %1599)
  %1601 = xor i1 %1600, true
  br i1 %1601, label %then434, label %else435
then434:
  %1602 = load { i64, i8* }*, { i64, i8* }** %1598
  %1603 = call { i64, i8* }* @ty_array({ i64, i8* }* %1602)
  ret { i64, i8* }* %1603
else435:
  br label %merge436
merge436:
  br label %merge433
else432:
  br label %merge433
merge433:
  br label %merge430
else429:
  br label %merge430
merge430:
  %1604 = call { i64, i8* }* @ty_unknown()
  %1605 = call { i64, i8* }* @ty_array({ i64, i8* }* %1604)
  ret { i64, i8* }* %1605
else426:
  br label %merge427
merge427:
  %1606 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1606
}

define i1 @is_integer_like(
{ i64, i8* }* %t.param) {
  %t.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %t.param, { i64, i8* }** %t.ptr
  %1607 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1608 = call %nyx_string* @ty_kind({ i64, i8* }* %1607)
  %1609 = alloca %nyx_string*
  store %nyx_string* %1608, %nyx_string** %1609
  %1610 = load %nyx_string*, %nyx_string** %1609
  %1611 = getelementptr [6 x i8], [6 x i8]* @.str153, i32 0, i32 0
  %1612 = call %nyx_string* @nyx_string_from_cstr(i8* %1611)
  %1613 = call i8* @nyx_string_to_cstr(%nyx_string* %1610)
  %1614 = call i8* @nyx_string_to_cstr(%nyx_string* %1612)
  %1615 = call i32 @strcmp(i8* %1613, i8* %1614)
  %1616 = icmp eq i32 %1615, 0
  br i1 %1616, label %then437, label %else438
then437:
  ret i1 1
else438:
  br label %merge439
merge439:
  %1617 = load %nyx_string*, %nyx_string** %1609
  %1618 = getelementptr [8 x i8], [8 x i8]* @.str154, i32 0, i32 0
  %1619 = call %nyx_string* @nyx_string_from_cstr(i8* %1618)
  %1620 = call i8* @nyx_string_to_cstr(%nyx_string* %1617)
  %1621 = call i8* @nyx_string_to_cstr(%nyx_string* %1619)
  %1622 = call i32 @strcmp(i8* %1620, i8* %1621)
  %1623 = icmp eq i32 %1622, 0
  br i1 %1623, label %then440, label %else441
then440:
  %1624 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1625 = call i64 @nyx_array_get({ i64, i8* }* %1624, i64 1)
  %1626 = inttoptr i64 %1625 to %nyx_string*
  %1627 = alloca %nyx_string*
  store %nyx_string* %1626, %nyx_string** %1627
  %1628 = load %nyx_string*, %nyx_string** %1627
  %1629 = getelementptr [4 x i8], [4 x i8]* @.str155, i32 0, i32 0
  %1630 = call %nyx_string* @nyx_string_from_cstr(i8* %1629)
  %1631 = call i8* @nyx_string_to_cstr(%nyx_string* %1628)
  %1632 = call i8* @nyx_string_to_cstr(%nyx_string* %1630)
  %1633 = call i32 @strcmp(i8* %1631, i8* %1632)
  %1634 = icmp eq i32 %1633, 0
  br i1 %1634, label %then443, label %else444
then443:
  ret i1 0
else444:
  br label %merge445
merge445:
  ret i1 1
else441:
  br label %merge442
merge442:
  ret i1 0
}

define i1 @is_float_like(
{ i64, i8* }* %t.param) {
  %t.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %t.param, { i64, i8* }** %t.ptr
  %1635 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1636 = call %nyx_string* @ty_kind({ i64, i8* }* %1635)
  %1637 = alloca %nyx_string*
  store %nyx_string* %1636, %nyx_string** %1637
  %1638 = load %nyx_string*, %nyx_string** %1637
  %1639 = getelementptr [8 x i8], [8 x i8]* @.str156, i32 0, i32 0
  %1640 = call %nyx_string* @nyx_string_from_cstr(i8* %1639)
  %1641 = call i8* @nyx_string_to_cstr(%nyx_string* %1638)
  %1642 = call i8* @nyx_string_to_cstr(%nyx_string* %1640)
  %1643 = call i32 @strcmp(i8* %1641, i8* %1642)
  %1644 = icmp eq i32 %1643, 0
  br i1 %1644, label %then446, label %else447
then446:
  ret i1 1
else447:
  br label %merge448
merge448:
  %1645 = load %nyx_string*, %nyx_string** %1637
  %1646 = getelementptr [8 x i8], [8 x i8]* @.str157, i32 0, i32 0
  %1647 = call %nyx_string* @nyx_string_from_cstr(i8* %1646)
  %1648 = call i8* @nyx_string_to_cstr(%nyx_string* %1645)
  %1649 = call i8* @nyx_string_to_cstr(%nyx_string* %1647)
  %1650 = call i32 @strcmp(i8* %1648, i8* %1649)
  %1651 = icmp eq i32 %1650, 0
  br i1 %1651, label %then449, label %else450
then449:
  %1652 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1653 = call i64 @nyx_array_get({ i64, i8* }* %1652, i64 1)
  %1654 = inttoptr i64 %1653 to %nyx_string*
  %1655 = alloca %nyx_string*
  store %nyx_string* %1654, %nyx_string** %1655
  %1656 = load %nyx_string*, %nyx_string** %1655
  %1657 = getelementptr [4 x i8], [4 x i8]* @.str158, i32 0, i32 0
  %1658 = call %nyx_string* @nyx_string_from_cstr(i8* %1657)
  %1659 = call i8* @nyx_string_to_cstr(%nyx_string* %1656)
  %1660 = call i8* @nyx_string_to_cstr(%nyx_string* %1658)
  %1661 = call i32 @strcmp(i8* %1659, i8* %1660)
  %1662 = icmp eq i32 %1661, 0
  br i1 %1662, label %then452, label %else453
then452:
  ret i1 1
else453:
  br label %merge454
merge454:
  br label %merge451
else450:
  br label %merge451
merge451:
  ret i1 0
}

define i1 @is_numeric_ty(
{ i64, i8* }* %t.param) {
  %t.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %t.param, { i64, i8* }** %t.ptr
  %1663 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1664 = call i1 @is_integer_like({ i64, i8* }* %1663)
  br i1 %1664, label %then455, label %else456
then455:
  ret i1 1
else456:
  br label %merge457
merge457:
  %1665 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1666 = call i1 @is_float_like({ i64, i8* }* %1665)
  br i1 %1666, label %then458, label %else459
then458:
  ret i1 1
else459:
  br label %merge460
merge460:
  ret i1 0
}

define %nyx_string* @ty_to_type_ann(
{ i64, i8* }* %t.param) {
  %t.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %t.param, { i64, i8* }** %t.ptr
  %1667 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1668 = call %nyx_string* @ty_kind({ i64, i8* }* %1667)
  %1669 = alloca %nyx_string*
  store %nyx_string* %1668, %nyx_string** %1669
  %1670 = load %nyx_string*, %nyx_string** %1669
  %1671 = getelementptr [6 x i8], [6 x i8]* @.str159, i32 0, i32 0
  %1672 = call %nyx_string* @nyx_string_from_cstr(i8* %1671)
  %1673 = call i8* @nyx_string_to_cstr(%nyx_string* %1670)
  %1674 = call i8* @nyx_string_to_cstr(%nyx_string* %1672)
  %1675 = call i32 @strcmp(i8* %1673, i8* %1674)
  %1676 = icmp eq i32 %1675, 0
  br i1 %1676, label %then461, label %else462
then461:
  %1677 = getelementptr [1 x i8], [1 x i8]* @.str160, i32 0, i32 0
  %1678 = call %nyx_string* @nyx_string_from_cstr(i8* %1677)
  ret %nyx_string* %1678
else462:
  br label %merge463
merge463:
  %1679 = load %nyx_string*, %nyx_string** %1669
  %1680 = getelementptr [7 x i8], [7 x i8]* @.str161, i32 0, i32 0
  %1681 = call %nyx_string* @nyx_string_from_cstr(i8* %1680)
  %1682 = call i8* @nyx_string_to_cstr(%nyx_string* %1679)
  %1683 = call i8* @nyx_string_to_cstr(%nyx_string* %1681)
  %1684 = call i32 @strcmp(i8* %1682, i8* %1683)
  %1685 = icmp eq i32 %1684, 0
  br i1 %1685, label %then464, label %else465
then464:
  %1686 = getelementptr [1 x i8], [1 x i8]* @.str162, i32 0, i32 0
  %1687 = call %nyx_string* @nyx_string_from_cstr(i8* %1686)
  ret %nyx_string* %1687
else465:
  br label %merge466
merge466:
  %1688 = load %nyx_string*, %nyx_string** %1669
  %1689 = getelementptr [10 x i8], [10 x i8]* @.str163, i32 0, i32 0
  %1690 = call %nyx_string* @nyx_string_from_cstr(i8* %1689)
  %1691 = call i8* @nyx_string_to_cstr(%nyx_string* %1688)
  %1692 = call i8* @nyx_string_to_cstr(%nyx_string* %1690)
  %1693 = call i32 @strcmp(i8* %1691, i8* %1692)
  %1694 = icmp eq i32 %1693, 0
  br i1 %1694, label %then467, label %else468
then467:
  %1695 = getelementptr [1 x i8], [1 x i8]* @.str164, i32 0, i32 0
  %1696 = call %nyx_string* @nyx_string_from_cstr(i8* %1695)
  ret %nyx_string* %1696
else468:
  br label %merge469
merge469:
  %1697 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1698 = call %nyx_string* @ty_to_str({ i64, i8* }* %1697)
  ret %nyx_string* %1698
}

define { i64, i8* }* @ty_of_binop(
%nyx_string* %op.param, { i64, i8* }* %lhs.param, { i64, i8* }* %rhs.param) {
  %op.ptr = alloca %nyx_string*
  store %nyx_string* %op.param, %nyx_string** %op.ptr
  %lhs.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %lhs.param, { i64, i8* }** %lhs.ptr
  %rhs.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %rhs.param, { i64, i8* }** %rhs.ptr
  %1699 = load { i64, i8* }*, { i64, i8* }** %lhs.ptr
  %1700 = call i1 @ty_is_unknown({ i64, i8* }* %1699)
  br i1 %1700, label %then470, label %else471
then470:
  %1701 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1701
else471:
  br label %merge472
merge472:
  %1702 = load { i64, i8* }*, { i64, i8* }** %rhs.ptr
  %1703 = call i1 @ty_is_unknown({ i64, i8* }* %1702)
  br i1 %1703, label %then473, label %else474
then473:
  %1704 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1704
else474:
  br label %merge475
merge475:
  %1705 = alloca i1
  store i1 true, i1* %1705
  %1706 = alloca i1
  store i1 true, i1* %1706
  %1707 = alloca i1
  store i1 true, i1* %1707
  %1708 = load %nyx_string*, %nyx_string** %op.ptr
  %1709 = getelementptr [8 x i8], [8 x i8]* @.str165, i32 0, i32 0
  %1710 = call %nyx_string* @nyx_string_from_cstr(i8* %1709)
  %1711 = call i8* @nyx_string_to_cstr(%nyx_string* %1708)
  %1712 = call i8* @nyx_string_to_cstr(%nyx_string* %1710)
  %1713 = call i32 @strcmp(i8* %1711, i8* %1712)
  %1714 = icmp eq i32 %1713, 0
  br i1 %1714, label %sc_or_end477, label %sc_or_rhs476
sc_or_rhs476:
  %1715 = load %nyx_string*, %nyx_string** %op.ptr
  %1716 = getelementptr [6 x i8], [6 x i8]* @.str166, i32 0, i32 0
  %1717 = call %nyx_string* @nyx_string_from_cstr(i8* %1716)
  %1718 = call i8* @nyx_string_to_cstr(%nyx_string* %1715)
  %1719 = call i8* @nyx_string_to_cstr(%nyx_string* %1717)
  %1720 = call i32 @strcmp(i8* %1718, i8* %1719)
  %1721 = icmp eq i32 %1720, 0
  store i1 %1721, i1* %1707
  br label %sc_or_end477
sc_or_end477:
  %1722 = load i1, i1* %1707
  br i1 %1722, label %sc_or_end479, label %sc_or_rhs478
sc_or_rhs478:
  %1723 = load %nyx_string*, %nyx_string** %op.ptr
  %1724 = getelementptr [4 x i8], [4 x i8]* @.str167, i32 0, i32 0
  %1725 = call %nyx_string* @nyx_string_from_cstr(i8* %1724)
  %1726 = call i8* @nyx_string_to_cstr(%nyx_string* %1723)
  %1727 = call i8* @nyx_string_to_cstr(%nyx_string* %1725)
  %1728 = call i32 @strcmp(i8* %1726, i8* %1727)
  %1729 = icmp eq i32 %1728, 0
  store i1 %1729, i1* %1706
  br label %sc_or_end479
sc_or_end479:
  %1730 = load i1, i1* %1706
  br i1 %1730, label %sc_or_end481, label %sc_or_rhs480
sc_or_rhs480:
  %1731 = load %nyx_string*, %nyx_string** %op.ptr
  %1732 = getelementptr [3 x i8], [3 x i8]* @.str168, i32 0, i32 0
  %1733 = call %nyx_string* @nyx_string_from_cstr(i8* %1732)
  %1734 = call i8* @nyx_string_to_cstr(%nyx_string* %1731)
  %1735 = call i8* @nyx_string_to_cstr(%nyx_string* %1733)
  %1736 = call i32 @strcmp(i8* %1734, i8* %1735)
  %1737 = icmp eq i32 %1736, 0
  store i1 %1737, i1* %1705
  br label %sc_or_end481
sc_or_end481:
  %1738 = load i1, i1* %1705
  br i1 %1738, label %then482, label %else483
then482:
  %1739 = load { i64, i8* }*, { i64, i8* }** %lhs.ptr
  %1740 = call %nyx_string* @ty_kind({ i64, i8* }* %1739)
  %1741 = alloca %nyx_string*
  store %nyx_string* %1740, %nyx_string** %1741
  %1742 = load { i64, i8* }*, { i64, i8* }** %rhs.ptr
  %1743 = call %nyx_string* @ty_kind({ i64, i8* }* %1742)
  %1744 = alloca %nyx_string*
  store %nyx_string* %1743, %nyx_string** %1744
  %1745 = load %nyx_string*, %nyx_string** %1741
  %1746 = getelementptr [7 x i8], [7 x i8]* @.str169, i32 0, i32 0
  %1747 = call %nyx_string* @nyx_string_from_cstr(i8* %1746)
  %1748 = call i8* @nyx_string_to_cstr(%nyx_string* %1745)
  %1749 = call i8* @nyx_string_to_cstr(%nyx_string* %1747)
  %1750 = call i32 @strcmp(i8* %1748, i8* %1749)
  %1751 = icmp eq i32 %1750, 0
  br i1 %1751, label %then485, label %else486
then485:
  %1752 = load %nyx_string*, %nyx_string** %1744
  %1753 = getelementptr [7 x i8], [7 x i8]* @.str170, i32 0, i32 0
  %1754 = call %nyx_string* @nyx_string_from_cstr(i8* %1753)
  %1755 = call i8* @nyx_string_to_cstr(%nyx_string* %1752)
  %1756 = call i8* @nyx_string_to_cstr(%nyx_string* %1754)
  %1757 = call i32 @strcmp(i8* %1755, i8* %1756)
  %1758 = icmp eq i32 %1757, 0
  br i1 %1758, label %then488, label %else489
then488:
  %1759 = call { i64, i8* }* @ty_bool()
  ret { i64, i8* }* %1759
else489:
  br label %merge490
merge490:
  br label %merge487
else486:
  br label %merge487
merge487:
  %1760 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1760
else483:
  br label %merge484
merge484:
  %1761 = alloca i1
  store i1 true, i1* %1761
  %1762 = alloca i1
  store i1 true, i1* %1762
  %1763 = alloca i1
  store i1 true, i1* %1763
  %1764 = alloca i1
  store i1 true, i1* %1764
  %1765 = alloca i1
  store i1 true, i1* %1765
  %1766 = load %nyx_string*, %nyx_string** %op.ptr
  %1767 = getelementptr [12 x i8], [12 x i8]* @.str171, i32 0, i32 0
  %1768 = call %nyx_string* @nyx_string_from_cstr(i8* %1767)
  %1769 = call i8* @nyx_string_to_cstr(%nyx_string* %1766)
  %1770 = call i8* @nyx_string_to_cstr(%nyx_string* %1768)
  %1771 = call i32 @strcmp(i8* %1769, i8* %1770)
  %1772 = icmp eq i32 %1771, 0
  br i1 %1772, label %sc_or_end492, label %sc_or_rhs491
sc_or_rhs491:
  %1773 = load %nyx_string*, %nyx_string** %op.ptr
  %1774 = getelementptr [10 x i8], [10 x i8]* @.str172, i32 0, i32 0
  %1775 = call %nyx_string* @nyx_string_from_cstr(i8* %1774)
  %1776 = call i8* @nyx_string_to_cstr(%nyx_string* %1773)
  %1777 = call i8* @nyx_string_to_cstr(%nyx_string* %1775)
  %1778 = call i32 @strcmp(i8* %1776, i8* %1777)
  %1779 = icmp eq i32 %1778, 0
  store i1 %1779, i1* %1765
  br label %sc_or_end492
sc_or_end492:
  %1780 = load i1, i1* %1765
  br i1 %1780, label %sc_or_end494, label %sc_or_rhs493
sc_or_rhs493:
  %1781 = load %nyx_string*, %nyx_string** %op.ptr
  %1782 = getelementptr [5 x i8], [5 x i8]* @.str173, i32 0, i32 0
  %1783 = call %nyx_string* @nyx_string_from_cstr(i8* %1782)
  %1784 = call i8* @nyx_string_to_cstr(%nyx_string* %1781)
  %1785 = call i8* @nyx_string_to_cstr(%nyx_string* %1783)
  %1786 = call i32 @strcmp(i8* %1784, i8* %1785)
  %1787 = icmp eq i32 %1786, 0
  store i1 %1787, i1* %1764
  br label %sc_or_end494
sc_or_end494:
  %1788 = load i1, i1* %1764
  br i1 %1788, label %sc_or_end496, label %sc_or_rhs495
sc_or_rhs495:
  %1789 = load %nyx_string*, %nyx_string** %op.ptr
  %1790 = getelementptr [8 x i8], [8 x i8]* @.str174, i32 0, i32 0
  %1791 = call %nyx_string* @nyx_string_from_cstr(i8* %1790)
  %1792 = call i8* @nyx_string_to_cstr(%nyx_string* %1789)
  %1793 = call i8* @nyx_string_to_cstr(%nyx_string* %1791)
  %1794 = call i32 @strcmp(i8* %1792, i8* %1793)
  %1795 = icmp eq i32 %1794, 0
  store i1 %1795, i1* %1763
  br label %sc_or_end496
sc_or_end496:
  %1796 = load i1, i1* %1763
  br i1 %1796, label %sc_or_end498, label %sc_or_rhs497
sc_or_rhs497:
  %1797 = load %nyx_string*, %nyx_string** %op.ptr
  %1798 = getelementptr [11 x i8], [11 x i8]* @.str175, i32 0, i32 0
  %1799 = call %nyx_string* @nyx_string_from_cstr(i8* %1798)
  %1800 = call i8* @nyx_string_to_cstr(%nyx_string* %1797)
  %1801 = call i8* @nyx_string_to_cstr(%nyx_string* %1799)
  %1802 = call i32 @strcmp(i8* %1800, i8* %1801)
  %1803 = icmp eq i32 %1802, 0
  store i1 %1803, i1* %1762
  br label %sc_or_end498
sc_or_end498:
  %1804 = load i1, i1* %1762
  br i1 %1804, label %sc_or_end500, label %sc_or_rhs499
sc_or_rhs499:
  %1805 = load %nyx_string*, %nyx_string** %op.ptr
  %1806 = getelementptr [14 x i8], [14 x i8]* @.str176, i32 0, i32 0
  %1807 = call %nyx_string* @nyx_string_from_cstr(i8* %1806)
  %1808 = call i8* @nyx_string_to_cstr(%nyx_string* %1805)
  %1809 = call i8* @nyx_string_to_cstr(%nyx_string* %1807)
  %1810 = call i32 @strcmp(i8* %1808, i8* %1809)
  %1811 = icmp eq i32 %1810, 0
  store i1 %1811, i1* %1761
  br label %sc_or_end500
sc_or_end500:
  %1812 = load i1, i1* %1761
  br i1 %1812, label %then501, label %else502
then501:
  %1813 = call { i64, i8* }* @ty_bool()
  ret { i64, i8* }* %1813
else502:
  br label %merge503
merge503:
  %1814 = alloca i1
  store i1 true, i1* %1814
  %1815 = alloca i1
  store i1 true, i1* %1815
  %1816 = alloca i1
  store i1 true, i1* %1816
  %1817 = alloca i1
  store i1 true, i1* %1817
  %1818 = load %nyx_string*, %nyx_string** %op.ptr
  %1819 = getelementptr [5 x i8], [5 x i8]* @.str177, i32 0, i32 0
  %1820 = call %nyx_string* @nyx_string_from_cstr(i8* %1819)
  %1821 = call i8* @nyx_string_to_cstr(%nyx_string* %1818)
  %1822 = call i8* @nyx_string_to_cstr(%nyx_string* %1820)
  %1823 = call i32 @strcmp(i8* %1821, i8* %1822)
  %1824 = icmp eq i32 %1823, 0
  br i1 %1824, label %sc_or_end505, label %sc_or_rhs504
sc_or_rhs504:
  %1825 = load %nyx_string*, %nyx_string** %op.ptr
  %1826 = getelementptr [4 x i8], [4 x i8]* @.str178, i32 0, i32 0
  %1827 = call %nyx_string* @nyx_string_from_cstr(i8* %1826)
  %1828 = call i8* @nyx_string_to_cstr(%nyx_string* %1825)
  %1829 = call i8* @nyx_string_to_cstr(%nyx_string* %1827)
  %1830 = call i32 @strcmp(i8* %1828, i8* %1829)
  %1831 = icmp eq i32 %1830, 0
  store i1 %1831, i1* %1817
  br label %sc_or_end505
sc_or_end505:
  %1832 = load i1, i1* %1817
  br i1 %1832, label %sc_or_end507, label %sc_or_rhs506
sc_or_rhs506:
  %1833 = load %nyx_string*, %nyx_string** %op.ptr
  %1834 = getelementptr [6 x i8], [6 x i8]* @.str179, i32 0, i32 0
  %1835 = call %nyx_string* @nyx_string_from_cstr(i8* %1834)
  %1836 = call i8* @nyx_string_to_cstr(%nyx_string* %1833)
  %1837 = call i8* @nyx_string_to_cstr(%nyx_string* %1835)
  %1838 = call i32 @strcmp(i8* %1836, i8* %1837)
  %1839 = icmp eq i32 %1838, 0
  store i1 %1839, i1* %1816
  br label %sc_or_end507
sc_or_end507:
  %1840 = load i1, i1* %1816
  br i1 %1840, label %sc_or_end509, label %sc_or_rhs508
sc_or_rhs508:
  %1841 = load %nyx_string*, %nyx_string** %op.ptr
  %1842 = getelementptr [11 x i8], [11 x i8]* @.str180, i32 0, i32 0
  %1843 = call %nyx_string* @nyx_string_from_cstr(i8* %1842)
  %1844 = call i8* @nyx_string_to_cstr(%nyx_string* %1841)
  %1845 = call i8* @nyx_string_to_cstr(%nyx_string* %1843)
  %1846 = call i32 @strcmp(i8* %1844, i8* %1845)
  %1847 = icmp eq i32 %1846, 0
  store i1 %1847, i1* %1815
  br label %sc_or_end509
sc_or_end509:
  %1848 = load i1, i1* %1815
  br i1 %1848, label %sc_or_end511, label %sc_or_rhs510
sc_or_rhs510:
  %1849 = load %nyx_string*, %nyx_string** %op.ptr
  %1850 = getelementptr [12 x i8], [12 x i8]* @.str181, i32 0, i32 0
  %1851 = call %nyx_string* @nyx_string_from_cstr(i8* %1850)
  %1852 = call i8* @nyx_string_to_cstr(%nyx_string* %1849)
  %1853 = call i8* @nyx_string_to_cstr(%nyx_string* %1851)
  %1854 = call i32 @strcmp(i8* %1852, i8* %1853)
  %1855 = icmp eq i32 %1854, 0
  store i1 %1855, i1* %1814
  br label %sc_or_end511
sc_or_end511:
  %1856 = load i1, i1* %1814
  br i1 %1856, label %then512, label %else513
then512:
  %1857 = load { i64, i8* }*, { i64, i8* }** %lhs.ptr
  %1858 = call i1 @is_integer_like({ i64, i8* }* %1857)
  br i1 %1858, label %then515, label %else516
then515:
  %1859 = load { i64, i8* }*, { i64, i8* }** %rhs.ptr
  %1860 = call i1 @is_integer_like({ i64, i8* }* %1859)
  br i1 %1860, label %then518, label %else519
then518:
  %1861 = call { i64, i8* }* @ty_int()
  ret { i64, i8* }* %1861
else519:
  br label %merge520
merge520:
  br label %merge517
else516:
  br label %merge517
merge517:
  %1862 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1862
else513:
  br label %merge514
merge514:
  %1863 = load %nyx_string*, %nyx_string** %op.ptr
  %1864 = getelementptr [5 x i8], [5 x i8]* @.str182, i32 0, i32 0
  %1865 = call %nyx_string* @nyx_string_from_cstr(i8* %1864)
  %1866 = call i8* @nyx_string_to_cstr(%nyx_string* %1863)
  %1867 = call i8* @nyx_string_to_cstr(%nyx_string* %1865)
  %1868 = call i32 @strcmp(i8* %1866, i8* %1867)
  %1869 = icmp eq i32 %1868, 0
  br i1 %1869, label %then521, label %else522
then521:
  %1870 = load { i64, i8* }*, { i64, i8* }** %lhs.ptr
  %1871 = call %nyx_string* @ty_kind({ i64, i8* }* %1870)
  %1872 = alloca %nyx_string*
  store %nyx_string* %1871, %nyx_string** %1872
  %1873 = load { i64, i8* }*, { i64, i8* }** %rhs.ptr
  %1874 = call %nyx_string* @ty_kind({ i64, i8* }* %1873)
  %1875 = alloca %nyx_string*
  store %nyx_string* %1874, %nyx_string** %1875
  %1876 = load %nyx_string*, %nyx_string** %1872
  %1877 = getelementptr [9 x i8], [9 x i8]* @.str183, i32 0, i32 0
  %1878 = call %nyx_string* @nyx_string_from_cstr(i8* %1877)
  %1879 = call i8* @nyx_string_to_cstr(%nyx_string* %1876)
  %1880 = call i8* @nyx_string_to_cstr(%nyx_string* %1878)
  %1881 = call i32 @strcmp(i8* %1879, i8* %1880)
  %1882 = icmp eq i32 %1881, 0
  br i1 %1882, label %then524, label %else525
then524:
  %1883 = call { i64, i8* }* @ty_string()
  ret { i64, i8* }* %1883
else525:
  br label %merge526
merge526:
  %1884 = load %nyx_string*, %nyx_string** %1875
  %1885 = getelementptr [9 x i8], [9 x i8]* @.str184, i32 0, i32 0
  %1886 = call %nyx_string* @nyx_string_from_cstr(i8* %1885)
  %1887 = call i8* @nyx_string_to_cstr(%nyx_string* %1884)
  %1888 = call i8* @nyx_string_to_cstr(%nyx_string* %1886)
  %1889 = call i32 @strcmp(i8* %1887, i8* %1888)
  %1890 = icmp eq i32 %1889, 0
  br i1 %1890, label %then527, label %else528
then527:
  %1891 = call { i64, i8* }* @ty_string()
  ret { i64, i8* }* %1891
else528:
  br label %merge529
merge529:
  br label %merge523
else522:
  br label %merge523
merge523:
  %1892 = alloca i1
  store i1 true, i1* %1892
  %1893 = alloca i1
  store i1 true, i1* %1893
  %1894 = alloca i1
  store i1 true, i1* %1894
  %1895 = alloca i1
  store i1 true, i1* %1895
  %1896 = alloca i1
  store i1 true, i1* %1896
  %1897 = load %nyx_string*, %nyx_string** %op.ptr
  %1898 = getelementptr [5 x i8], [5 x i8]* @.str185, i32 0, i32 0
  %1899 = call %nyx_string* @nyx_string_from_cstr(i8* %1898)
  %1900 = call i8* @nyx_string_to_cstr(%nyx_string* %1897)
  %1901 = call i8* @nyx_string_to_cstr(%nyx_string* %1899)
  %1902 = call i32 @strcmp(i8* %1900, i8* %1901)
  %1903 = icmp eq i32 %1902, 0
  br i1 %1903, label %sc_or_end531, label %sc_or_rhs530
sc_or_rhs530:
  %1904 = load %nyx_string*, %nyx_string** %op.ptr
  %1905 = getelementptr [6 x i8], [6 x i8]* @.str186, i32 0, i32 0
  %1906 = call %nyx_string* @nyx_string_from_cstr(i8* %1905)
  %1907 = call i8* @nyx_string_to_cstr(%nyx_string* %1904)
  %1908 = call i8* @nyx_string_to_cstr(%nyx_string* %1906)
  %1909 = call i32 @strcmp(i8* %1907, i8* %1908)
  %1910 = icmp eq i32 %1909, 0
  store i1 %1910, i1* %1896
  br label %sc_or_end531
sc_or_end531:
  %1911 = load i1, i1* %1896
  br i1 %1911, label %sc_or_end533, label %sc_or_rhs532
sc_or_rhs532:
  %1912 = load %nyx_string*, %nyx_string** %op.ptr
  %1913 = getelementptr [5 x i8], [5 x i8]* @.str187, i32 0, i32 0
  %1914 = call %nyx_string* @nyx_string_from_cstr(i8* %1913)
  %1915 = call i8* @nyx_string_to_cstr(%nyx_string* %1912)
  %1916 = call i8* @nyx_string_to_cstr(%nyx_string* %1914)
  %1917 = call i32 @strcmp(i8* %1915, i8* %1916)
  %1918 = icmp eq i32 %1917, 0
  store i1 %1918, i1* %1895
  br label %sc_or_end533
sc_or_end533:
  %1919 = load i1, i1* %1895
  br i1 %1919, label %sc_or_end535, label %sc_or_rhs534
sc_or_rhs534:
  %1920 = load %nyx_string*, %nyx_string** %op.ptr
  %1921 = getelementptr [6 x i8], [6 x i8]* @.str188, i32 0, i32 0
  %1922 = call %nyx_string* @nyx_string_from_cstr(i8* %1921)
  %1923 = call i8* @nyx_string_to_cstr(%nyx_string* %1920)
  %1924 = call i8* @nyx_string_to_cstr(%nyx_string* %1922)
  %1925 = call i32 @strcmp(i8* %1923, i8* %1924)
  %1926 = icmp eq i32 %1925, 0
  store i1 %1926, i1* %1894
  br label %sc_or_end535
sc_or_end535:
  %1927 = load i1, i1* %1894
  br i1 %1927, label %sc_or_end537, label %sc_or_rhs536
sc_or_rhs536:
  %1928 = load %nyx_string*, %nyx_string** %op.ptr
  %1929 = getelementptr [8 x i8], [8 x i8]* @.str189, i32 0, i32 0
  %1930 = call %nyx_string* @nyx_string_from_cstr(i8* %1929)
  %1931 = call i8* @nyx_string_to_cstr(%nyx_string* %1928)
  %1932 = call i8* @nyx_string_to_cstr(%nyx_string* %1930)
  %1933 = call i32 @strcmp(i8* %1931, i8* %1932)
  %1934 = icmp eq i32 %1933, 0
  store i1 %1934, i1* %1893
  br label %sc_or_end537
sc_or_end537:
  %1935 = load i1, i1* %1893
  br i1 %1935, label %sc_or_end539, label %sc_or_rhs538
sc_or_rhs538:
  %1936 = load %nyx_string*, %nyx_string** %op.ptr
  %1937 = getelementptr [6 x i8], [6 x i8]* @.str190, i32 0, i32 0
  %1938 = call %nyx_string* @nyx_string_from_cstr(i8* %1937)
  %1939 = call i8* @nyx_string_to_cstr(%nyx_string* %1936)
  %1940 = call i8* @nyx_string_to_cstr(%nyx_string* %1938)
  %1941 = call i32 @strcmp(i8* %1939, i8* %1940)
  %1942 = icmp eq i32 %1941, 0
  store i1 %1942, i1* %1892
  br label %sc_or_end539
sc_or_end539:
  %1943 = load i1, i1* %1892
  br i1 %1943, label %then540, label %else541
then540:
  %1944 = load { i64, i8* }*, { i64, i8* }** %lhs.ptr
  %1945 = call i1 @is_numeric_ty({ i64, i8* }* %1944)
  br i1 %1945, label %then543, label %else544
then543:
  %1946 = load { i64, i8* }*, { i64, i8* }** %rhs.ptr
  %1947 = call i1 @is_numeric_ty({ i64, i8* }* %1946)
  br i1 %1947, label %then546, label %else547
then546:
  %1948 = load { i64, i8* }*, { i64, i8* }** %lhs.ptr
  %1949 = call i1 @is_float_like({ i64, i8* }* %1948)
  br i1 %1949, label %then549, label %else550
then549:
  %1950 = call { i64, i8* }* @ty_float()
  ret { i64, i8* }* %1950
else550:
  br label %merge551
merge551:
  %1951 = load { i64, i8* }*, { i64, i8* }** %rhs.ptr
  %1952 = call i1 @is_float_like({ i64, i8* }* %1951)
  br i1 %1952, label %then552, label %else553
then552:
  %1953 = call { i64, i8* }* @ty_float()
  ret { i64, i8* }* %1953
else553:
  br label %merge554
merge554:
  %1954 = call { i64, i8* }* @ty_int()
  ret { i64, i8* }* %1954
else547:
  br label %merge548
merge548:
  br label %merge545
else544:
  br label %merge545
merge545:
  %1955 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1955
else541:
  br label %merge542
merge542:
  %1956 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1956
}

define internal i1 @is_in_param_names(
%nyx_string* %name.param, { i64, i8* }* %names.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %names.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %names.param, { i64, i8* }** %names.ptr
  %1957 = alloca i64
  store i64 0, i64* %1957
  br label %while_cond555
while_cond555:
  %1958 = load i64, i64* %1957
  %1959 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %1960 = call i64 @nyx_array_length({ i64, i8* }* %1959)
  %1961 = icmp slt i64 %1958, %1960
  br i1 %1961, label %while_body556, label %while_end557
while_body556:
  %1962 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %1963 = load i64, i64* %1957
  %1964 = call i64 @nyx_array_get({ i64, i8* }* %1962, i64 %1963)
  %1965 = inttoptr i64 %1964 to %nyx_string*
  %1966 = alloca %nyx_string*
  store %nyx_string* %1965, %nyx_string** %1966
  %1967 = load %nyx_string*, %nyx_string** %1966
  %1968 = load %nyx_string*, %nyx_string** %name.ptr
  %1969 = call i8* @nyx_string_to_cstr(%nyx_string* %1967)
  %1970 = call i8* @nyx_string_to_cstr(%nyx_string* %1968)
  %1971 = call i32 @strcmp(i8* %1969, i8* %1970)
  %1972 = icmp eq i32 %1971, 0
  br i1 %1972, label %then558, label %else559
then558:
  ret i1 1
else559:
  br label %merge560
merge560:
  %1973 = load i64, i64* %1957
  %1974 = add i64 %1973, 1
  store i64 %1974, i64* %1957
  br label %while_cond555
while_end557:
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
  %1975 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1976 = call %nyx_string* @ty_kind({ i64, i8* }* %1975)
  %1977 = alloca %nyx_string*
  store %nyx_string* %1976, %nyx_string** %1977
  %1978 = load %nyx_string*, %nyx_string** %1977
  %1979 = getelementptr [10 x i8], [10 x i8]* @.str191, i32 0, i32 0
  %1980 = call %nyx_string* @nyx_string_from_cstr(i8* %1979)
  %1981 = call i8* @nyx_string_to_cstr(%nyx_string* %1978)
  %1982 = call i8* @nyx_string_to_cstr(%nyx_string* %1980)
  %1983 = call i32 @strcmp(i8* %1981, i8* %1982)
  %1984 = icmp eq i32 %1983, 0
  br i1 %1984, label %then561, label %else562
then561:
  %1985 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1986 = call i64 @nyx_array_get({ i64, i8* }* %1985, i64 1)
  %1987 = inttoptr i64 %1986 to %nyx_string*
  %1988 = alloca %nyx_string*
  store %nyx_string* %1987, %nyx_string** %1988
  %1989 = alloca i64
  store i64 0, i64* %1989
  br label %while_cond564
while_cond564:
  %1990 = load i64, i64* %1989
  %1991 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %1992 = call i64 @nyx_array_length({ i64, i8* }* %1991)
  %1993 = icmp slt i64 %1990, %1992
  br i1 %1993, label %while_body565, label %while_end566
while_body565:
  %1994 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %1995 = load i64, i64* %1989
  %1996 = call i64 @nyx_array_get({ i64, i8* }* %1994, i64 %1995)
  %1997 = inttoptr i64 %1996 to %nyx_string*
  %1998 = alloca %nyx_string*
  store %nyx_string* %1997, %nyx_string** %1998
  %1999 = load %nyx_string*, %nyx_string** %1998
  %2000 = load %nyx_string*, %nyx_string** %1988
  %2001 = call i8* @nyx_string_to_cstr(%nyx_string* %1999)
  %2002 = call i8* @nyx_string_to_cstr(%nyx_string* %2000)
  %2003 = call i32 @strcmp(i8* %2001, i8* %2002)
  %2004 = icmp eq i32 %2003, 0
  br i1 %2004, label %then567, label %else568
then567:
  %2005 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %2006 = load i64, i64* %1989
  %2007 = call i64 @nyx_array_get({ i64, i8* }* %2005, i64 %2006)
  %2008 = inttoptr i64 %2007 to { i64, i8* }*
  %2009 = alloca { i64, i8* }*
  store { i64, i8* }* %2008, { i64, i8* }** %2009
  %2010 = load { i64, i8* }*, { i64, i8* }** %2009
  ret { i64, i8* }* %2010
else568:
  br label %merge569
merge569:
  %2011 = load i64, i64* %1989
  %2012 = add i64 %2011, 1
  store i64 %2012, i64* %1989
  br label %while_cond564
while_end566:
  %2013 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  ret { i64, i8* }* %2013
else562:
  br label %merge563
merge563:
  %2014 = load %nyx_string*, %nyx_string** %1977
  %2015 = getelementptr [8 x i8], [8 x i8]* @.str192, i32 0, i32 0
  %2016 = call %nyx_string* @nyx_string_from_cstr(i8* %2015)
  %2017 = call i8* @nyx_string_to_cstr(%nyx_string* %2014)
  %2018 = call i8* @nyx_string_to_cstr(%nyx_string* %2016)
  %2019 = call i32 @strcmp(i8* %2017, i8* %2018)
  %2020 = icmp eq i32 %2019, 0
  br i1 %2020, label %then570, label %else571
then570:
  %2021 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %2022 = call i64 @nyx_array_get({ i64, i8* }* %2021, i64 1)
  %2023 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %2024 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %2025 = call { i64, i8* }* @subst_apply(i64 %2022, { i64, i8* }* %2023, { i64, i8* }* %2024)
  %2026 = call { i64, i8* }* @ty_array({ i64, i8* }* %2025)
  ret { i64, i8* }* %2026
else571:
  br label %merge572
merge572:
  %2027 = load %nyx_string*, %nyx_string** %1977
  %2028 = getelementptr [9 x i8], [9 x i8]* @.str193, i32 0, i32 0
  %2029 = call %nyx_string* @nyx_string_from_cstr(i8* %2028)
  %2030 = call i8* @nyx_string_to_cstr(%nyx_string* %2027)
  %2031 = call i8* @nyx_string_to_cstr(%nyx_string* %2029)
  %2032 = call i32 @strcmp(i8* %2030, i8* %2031)
  %2033 = icmp eq i32 %2032, 0
  br i1 %2033, label %then573, label %else574
then573:
  %2034 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %2035 = call i64 @nyx_array_get({ i64, i8* }* %2034, i64 1)
  %2036 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %2037 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %2038 = call { i64, i8* }* @subst_apply(i64 %2035, { i64, i8* }* %2036, { i64, i8* }* %2037)
  %2039 = call { i64, i8* }* @ty_option({ i64, i8* }* %2038)
  ret { i64, i8* }* %2039
else574:
  br label %merge575
merge575:
  %2040 = load %nyx_string*, %nyx_string** %1977
  %2041 = getelementptr [6 x i8], [6 x i8]* @.str194, i32 0, i32 0
  %2042 = call %nyx_string* @nyx_string_from_cstr(i8* %2041)
  %2043 = call i8* @nyx_string_to_cstr(%nyx_string* %2040)
  %2044 = call i8* @nyx_string_to_cstr(%nyx_string* %2042)
  %2045 = call i32 @strcmp(i8* %2043, i8* %2044)
  %2046 = icmp eq i32 %2045, 0
  br i1 %2046, label %then576, label %else577
then576:
  %2047 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %2048 = call i64 @nyx_array_get({ i64, i8* }* %2047, i64 1)
  %2049 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %2050 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %2051 = call { i64, i8* }* @subst_apply(i64 %2048, { i64, i8* }* %2049, { i64, i8* }* %2050)
  %2052 = call { i64, i8* }* @ty_ptr({ i64, i8* }* %2051)
  ret { i64, i8* }* %2052
else577:
  br label %merge578
merge578:
  %2053 = load %nyx_string*, %nyx_string** %1977
  %2054 = getelementptr [6 x i8], [6 x i8]* @.str195, i32 0, i32 0
  %2055 = call %nyx_string* @nyx_string_from_cstr(i8* %2054)
  %2056 = call i8* @nyx_string_to_cstr(%nyx_string* %2053)
  %2057 = call i8* @nyx_string_to_cstr(%nyx_string* %2055)
  %2058 = call i32 @strcmp(i8* %2056, i8* %2057)
  %2059 = icmp eq i32 %2058, 0
  br i1 %2059, label %then579, label %else580
then579:
  %2060 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %2061 = call i64 @nyx_array_get({ i64, i8* }* %2060, i64 1)
  %2062 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %2063 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %2064 = call { i64, i8* }* @subst_apply(i64 %2061, { i64, i8* }* %2062, { i64, i8* }* %2063)
  %2065 = call { i64, i8* }* @ty_ref({ i64, i8* }* %2064)
  ret { i64, i8* }* %2065
else580:
  br label %merge581
merge581:
  %2066 = load %nyx_string*, %nyx_string** %1977
  %2067 = getelementptr [9 x i8], [9 x i8]* @.str196, i32 0, i32 0
  %2068 = call %nyx_string* @nyx_string_from_cstr(i8* %2067)
  %2069 = call i8* @nyx_string_to_cstr(%nyx_string* %2066)
  %2070 = call i8* @nyx_string_to_cstr(%nyx_string* %2068)
  %2071 = call i32 @strcmp(i8* %2069, i8* %2070)
  %2072 = icmp eq i32 %2071, 0
  br i1 %2072, label %then582, label %else583
then582:
  %2073 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %2074 = call i64 @nyx_array_get({ i64, i8* }* %2073, i64 1)
  %2075 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %2076 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %2077 = call { i64, i8* }* @subst_apply(i64 %2074, { i64, i8* }* %2075, { i64, i8* }* %2076)
  %2078 = call { i64, i8* }* @ty_ref_mut({ i64, i8* }* %2077)
  ret { i64, i8* }* %2078
else583:
  br label %merge584
merge584:
  %2079 = load %nyx_string*, %nyx_string** %1977
  %2080 = getelementptr [9 x i8], [9 x i8]* @.str197, i32 0, i32 0
  %2081 = call %nyx_string* @nyx_string_from_cstr(i8* %2080)
  %2082 = call i8* @nyx_string_to_cstr(%nyx_string* %2079)
  %2083 = call i8* @nyx_string_to_cstr(%nyx_string* %2081)
  %2084 = call i32 @strcmp(i8* %2082, i8* %2083)
  %2085 = icmp eq i32 %2084, 0
  br i1 %2085, label %then585, label %else586
then585:
  %2086 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %2087 = call i64 @nyx_array_get({ i64, i8* }* %2086, i64 1)
  %2088 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %2089 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %2090 = call { i64, i8* }* @subst_apply(i64 %2087, { i64, i8* }* %2088, { i64, i8* }* %2089)
  %2091 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %2092 = call i64 @nyx_array_get({ i64, i8* }* %2091, i64 2)
  %2093 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %2094 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %2095 = call { i64, i8* }* @subst_apply(i64 %2092, { i64, i8* }* %2093, { i64, i8* }* %2094)
  %2096 = call { i64, i8* }* @ty_result({ i64, i8* }* %2090, { i64, i8* }* %2095)
  ret { i64, i8* }* %2096
else586:
  br label %merge587
merge587:
  %2097 = load %nyx_string*, %nyx_string** %1977
  %2098 = getelementptr [6 x i8], [6 x i8]* @.str198, i32 0, i32 0
  %2099 = call %nyx_string* @nyx_string_from_cstr(i8* %2098)
  %2100 = call i8* @nyx_string_to_cstr(%nyx_string* %2097)
  %2101 = call i8* @nyx_string_to_cstr(%nyx_string* %2099)
  %2102 = call i32 @strcmp(i8* %2100, i8* %2101)
  %2103 = icmp eq i32 %2102, 0
  br i1 %2103, label %then588, label %else589
then588:
  %2104 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %2105 = call i64 @nyx_array_get({ i64, i8* }* %2104, i64 1)
  %2106 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %2107 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %2108 = call { i64, i8* }* @subst_apply(i64 %2105, { i64, i8* }* %2106, { i64, i8* }* %2107)
  %2109 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %2110 = call i64 @nyx_array_get({ i64, i8* }* %2109, i64 2)
  %2111 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %2112 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %2113 = call { i64, i8* }* @subst_apply(i64 %2110, { i64, i8* }* %2111, { i64, i8* }* %2112)
  %2114 = call { i64, i8* }* @ty_map({ i64, i8* }* %2108, { i64, i8* }* %2113)
  ret { i64, i8* }* %2114
else589:
  br label %merge590
merge590:
  %2115 = load %nyx_string*, %nyx_string** %1977
  %2116 = getelementptr [5 x i8], [5 x i8]* @.str199, i32 0, i32 0
  %2117 = call %nyx_string* @nyx_string_from_cstr(i8* %2116)
  %2118 = call i8* @nyx_string_to_cstr(%nyx_string* %2115)
  %2119 = call i8* @nyx_string_to_cstr(%nyx_string* %2117)
  %2120 = call i32 @strcmp(i8* %2118, i8* %2119)
  %2121 = icmp eq i32 %2120, 0
  br i1 %2121, label %then591, label %else592
then591:
  %2122 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %2123 = call i64 @nyx_array_get({ i64, i8* }* %2122, i64 1)
  %2124 = inttoptr i64 %2123 to { i64, i8* }*
  %2125 = alloca { i64, i8* }*
  store { i64, i8* }* %2124, { i64, i8* }** %2125
  %2126 = call { i64, i8* }* @nyx_array_new_ptr()
  %2127 = alloca { i64, i8* }*
  store { i64, i8* }* %2126, { i64, i8* }** %2127
  %2128 = alloca i64
  store i64 0, i64* %2128
  br label %while_cond594
while_cond594:
  %2129 = load i64, i64* %2128
  %2130 = load { i64, i8* }*, { i64, i8* }** %2125
  %2131 = call i64 @nyx_array_length({ i64, i8* }* %2130)
  %2132 = icmp slt i64 %2129, %2131
  br i1 %2132, label %while_body595, label %while_end596
while_body595:
  %2133 = load { i64, i8* }*, { i64, i8* }** %2125
  %2134 = load i64, i64* %2128
  %2135 = call i64 @nyx_array_get({ i64, i8* }* %2133, i64 %2134)
  %2136 = inttoptr i64 %2135 to { i64, i8* }*
  %2137 = alloca { i64, i8* }*
  store { i64, i8* }* %2136, { i64, i8* }** %2137
  %2138 = load { i64, i8* }*, { i64, i8* }** %2127
  %2139 = load { i64, i8* }*, { i64, i8* }** %2137
  %2140 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %2141 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %2142 = call { i64, i8* }* @subst_apply({ i64, i8* }* %2139, { i64, i8* }* %2140, { i64, i8* }* %2141)
  %2143 = ptrtoint { i64, i8* }* %2142 to i64
  call void @nyx_array_push({ i64, i8* }* %2138, i64 %2143)
  %2144 = load i64, i64* %2128
  %2145 = add i64 %2144, 1
  store i64 %2145, i64* %2128
  br label %while_cond594
while_end596:
  %2146 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %2147 = call i64 @nyx_array_get({ i64, i8* }* %2146, i64 2)
  %2148 = inttoptr i64 %2147 to { i64, i8* }*
  %2149 = alloca { i64, i8* }*
  store { i64, i8* }* %2148, { i64, i8* }** %2149
  %2150 = load { i64, i8* }*, { i64, i8* }** %2127
  %2151 = load { i64, i8* }*, { i64, i8* }** %2149
  %2152 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %2153 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %2154 = call { i64, i8* }* @subst_apply({ i64, i8* }* %2151, { i64, i8* }* %2152, { i64, i8* }* %2153)
  %2155 = call { i64, i8* }* @ty_fn({ i64, i8* }* %2150, { i64, i8* }* %2154)
  ret { i64, i8* }* %2155
else592:
  br label %merge593
merge593:
  %2156 = load %nyx_string*, %nyx_string** %1977
  %2157 = getelementptr [9 x i8], [9 x i8]* @.str200, i32 0, i32 0
  %2158 = call %nyx_string* @nyx_string_from_cstr(i8* %2157)
  %2159 = call i8* @nyx_string_to_cstr(%nyx_string* %2156)
  %2160 = call i8* @nyx_string_to_cstr(%nyx_string* %2158)
  %2161 = call i32 @strcmp(i8* %2159, i8* %2160)
  %2162 = icmp eq i32 %2161, 0
  br i1 %2162, label %then597, label %else598
then597:
  %2163 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %2164 = call i64 @nyx_array_get({ i64, i8* }* %2163, i64 1)
  %2165 = inttoptr i64 %2164 to %nyx_string*
  %2166 = alloca %nyx_string*
  store %nyx_string* %2165, %nyx_string** %2166
  %2167 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %2168 = call i64 @nyx_array_get({ i64, i8* }* %2167, i64 2)
  %2169 = inttoptr i64 %2168 to { i64, i8* }*
  %2170 = alloca { i64, i8* }*
  store { i64, i8* }* %2169, { i64, i8* }** %2170
  %2171 = call { i64, i8* }* @nyx_array_new_ptr()
  %2172 = alloca { i64, i8* }*
  store { i64, i8* }* %2171, { i64, i8* }** %2172
  %2173 = alloca i64
  store i64 0, i64* %2173
  br label %while_cond600
while_cond600:
  %2174 = load i64, i64* %2173
  %2175 = load { i64, i8* }*, { i64, i8* }** %2170
  %2176 = call i64 @nyx_array_length({ i64, i8* }* %2175)
  %2177 = icmp slt i64 %2174, %2176
  br i1 %2177, label %while_body601, label %while_end602
while_body601:
  %2178 = load { i64, i8* }*, { i64, i8* }** %2170
  %2179 = load i64, i64* %2173
  %2180 = call i64 @nyx_array_get({ i64, i8* }* %2178, i64 %2179)
  %2181 = inttoptr i64 %2180 to { i64, i8* }*
  %2182 = alloca { i64, i8* }*
  store { i64, i8* }* %2181, { i64, i8* }** %2182
  %2183 = load { i64, i8* }*, { i64, i8* }** %2172
  %2184 = load { i64, i8* }*, { i64, i8* }** %2182
  %2185 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %2186 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %2187 = call { i64, i8* }* @subst_apply({ i64, i8* }* %2184, { i64, i8* }* %2185, { i64, i8* }* %2186)
  %2188 = ptrtoint { i64, i8* }* %2187 to i64
  call void @nyx_array_push({ i64, i8* }* %2183, i64 %2188)
  %2189 = load i64, i64* %2173
  %2190 = add i64 %2189, 1
  store i64 %2190, i64* %2173
  br label %while_cond600
while_end602:
  %2191 = load %nyx_string*, %nyx_string** %2166
  %2192 = load { i64, i8* }*, { i64, i8* }** %2172
  %2193 = call { i64, i8* }* @ty_struct_ty(%nyx_string* %2191, { i64, i8* }* %2192)
  ret { i64, i8* }* %2193
else598:
  br label %merge599
merge599:
  %2194 = load %nyx_string*, %nyx_string** %1977
  %2195 = getelementptr [7 x i8], [7 x i8]* @.str201, i32 0, i32 0
  %2196 = call %nyx_string* @nyx_string_from_cstr(i8* %2195)
  %2197 = call i8* @nyx_string_to_cstr(%nyx_string* %2194)
  %2198 = call i8* @nyx_string_to_cstr(%nyx_string* %2196)
  %2199 = call i32 @strcmp(i8* %2197, i8* %2198)
  %2200 = icmp eq i32 %2199, 0
  br i1 %2200, label %then603, label %else604
then603:
  %2201 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %2202 = call i64 @nyx_array_get({ i64, i8* }* %2201, i64 1)
  %2203 = inttoptr i64 %2202 to %nyx_string*
  %2204 = alloca %nyx_string*
  store %nyx_string* %2203, %nyx_string** %2204
  %2205 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %2206 = call i64 @nyx_array_get({ i64, i8* }* %2205, i64 2)
  %2207 = inttoptr i64 %2206 to { i64, i8* }*
  %2208 = alloca { i64, i8* }*
  store { i64, i8* }* %2207, { i64, i8* }** %2208
  %2209 = call { i64, i8* }* @nyx_array_new_ptr()
  %2210 = alloca { i64, i8* }*
  store { i64, i8* }* %2209, { i64, i8* }** %2210
  %2211 = alloca i64
  store i64 0, i64* %2211
  br label %while_cond606
while_cond606:
  %2212 = load i64, i64* %2211
  %2213 = load { i64, i8* }*, { i64, i8* }** %2208
  %2214 = call i64 @nyx_array_length({ i64, i8* }* %2213)
  %2215 = icmp slt i64 %2212, %2214
  br i1 %2215, label %while_body607, label %while_end608
while_body607:
  %2216 = load { i64, i8* }*, { i64, i8* }** %2208
  %2217 = load i64, i64* %2211
  %2218 = call i64 @nyx_array_get({ i64, i8* }* %2216, i64 %2217)
  %2219 = inttoptr i64 %2218 to { i64, i8* }*
  %2220 = alloca { i64, i8* }*
  store { i64, i8* }* %2219, { i64, i8* }** %2220
  %2221 = load { i64, i8* }*, { i64, i8* }** %2210
  %2222 = load { i64, i8* }*, { i64, i8* }** %2220
  %2223 = load { i64, i8* }*, { i64, i8* }** %names.ptr
  %2224 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %2225 = call { i64, i8* }* @subst_apply({ i64, i8* }* %2222, { i64, i8* }* %2223, { i64, i8* }* %2224)
  %2226 = ptrtoint { i64, i8* }* %2225 to i64
  call void @nyx_array_push({ i64, i8* }* %2221, i64 %2226)
  %2227 = load i64, i64* %2211
  %2228 = add i64 %2227, 1
  store i64 %2228, i64* %2211
  br label %while_cond606
while_end608:
  %2229 = load %nyx_string*, %nyx_string** %2204
  %2230 = load { i64, i8* }*, { i64, i8* }** %2210
  %2231 = call { i64, i8* }* @ty_enum_ty(%nyx_string* %2229, { i64, i8* }* %2230)
  ret { i64, i8* }* %2231
else604:
  br label %merge605
merge605:
  %2232 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  ret { i64, i8* }* %2232
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
  %2233 = load { i64, i8* }*, { i64, i8* }** %param_ty.ptr
  %2234 = call %nyx_string* @ty_kind({ i64, i8* }* %2233)
  %2235 = alloca %nyx_string*
  store %nyx_string* %2234, %nyx_string** %2235
  %2236 = load { i64, i8* }*, { i64, i8* }** %arg_ty.ptr
  %2237 = call %nyx_string* @ty_kind({ i64, i8* }* %2236)
  %2238 = alloca %nyx_string*
  store %nyx_string* %2237, %nyx_string** %2238
  %2239 = load %nyx_string*, %nyx_string** %2238
  %2240 = getelementptr [10 x i8], [10 x i8]* @.str202, i32 0, i32 0
  %2241 = call %nyx_string* @nyx_string_from_cstr(i8* %2240)
  %2242 = call i8* @nyx_string_to_cstr(%nyx_string* %2239)
  %2243 = call i8* @nyx_string_to_cstr(%nyx_string* %2241)
  %2244 = call i32 @strcmp(i8* %2242, i8* %2243)
  %2245 = icmp eq i32 %2244, 0
  br i1 %2245, label %then609, label %else610
then609:
  ret i1 1
else610:
  br label %merge611
merge611:
  %2246 = load %nyx_string*, %nyx_string** %2235
  %2247 = getelementptr [10 x i8], [10 x i8]* @.str203, i32 0, i32 0
  %2248 = call %nyx_string* @nyx_string_from_cstr(i8* %2247)
  %2249 = call i8* @nyx_string_to_cstr(%nyx_string* %2246)
  %2250 = call i8* @nyx_string_to_cstr(%nyx_string* %2248)
  %2251 = call i32 @strcmp(i8* %2249, i8* %2250)
  %2252 = icmp eq i32 %2251, 0
  br i1 %2252, label %then612, label %else613
then612:
  ret i1 1
else613:
  br label %merge614
merge614:
  %2253 = load %nyx_string*, %nyx_string** %2238
  %2254 = getelementptr [6 x i8], [6 x i8]* @.str204, i32 0, i32 0
  %2255 = call %nyx_string* @nyx_string_from_cstr(i8* %2254)
  %2256 = call i8* @nyx_string_to_cstr(%nyx_string* %2253)
  %2257 = call i8* @nyx_string_to_cstr(%nyx_string* %2255)
  %2258 = call i32 @strcmp(i8* %2256, i8* %2257)
  %2259 = icmp eq i32 %2258, 0
  br i1 %2259, label %then615, label %else616
then615:
  ret i1 1
else616:
  br label %merge617
merge617:
  %2260 = load %nyx_string*, %nyx_string** %2235
  %2261 = getelementptr [6 x i8], [6 x i8]* @.str205, i32 0, i32 0
  %2262 = call %nyx_string* @nyx_string_from_cstr(i8* %2261)
  %2263 = call i8* @nyx_string_to_cstr(%nyx_string* %2260)
  %2264 = call i8* @nyx_string_to_cstr(%nyx_string* %2262)
  %2265 = call i32 @strcmp(i8* %2263, i8* %2264)
  %2266 = icmp eq i32 %2265, 0
  br i1 %2266, label %then618, label %else619
then618:
  ret i1 1
else619:
  br label %merge620
merge620:
  %2267 = load %nyx_string*, %nyx_string** %2235
  %2268 = getelementptr [10 x i8], [10 x i8]* @.str206, i32 0, i32 0
  %2269 = call %nyx_string* @nyx_string_from_cstr(i8* %2268)
  %2270 = call i8* @nyx_string_to_cstr(%nyx_string* %2267)
  %2271 = call i8* @nyx_string_to_cstr(%nyx_string* %2269)
  %2272 = call i32 @strcmp(i8* %2270, i8* %2271)
  %2273 = icmp eq i32 %2272, 0
  br i1 %2273, label %then621, label %else622
then621:
  %2274 = load { i64, i8* }*, { i64, i8* }** %param_ty.ptr
  %2275 = call i64 @nyx_array_get({ i64, i8* }* %2274, i64 1)
  %2276 = inttoptr i64 %2275 to %nyx_string*
  %2277 = alloca %nyx_string*
  store %nyx_string* %2276, %nyx_string** %2277
  %2278 = load %nyx_string*, %nyx_string** %2277
  %2279 = load { i64, i8* }*, { i64, i8* }** %type_param_names.ptr
  %2280 = call i1 @is_in_param_names(%nyx_string* %2278, { i64, i8* }* %2279)
  br i1 %2280, label %then624, label %else625
then624:
  %2281 = alloca i64
  store i64 0, i64* %2281
  br label %while_cond627
while_cond627:
  %2282 = load i64, i64* %2281
  %2283 = load { i64, i8* }*, { i64, i8* }** %names_out.ptr
  %2284 = call i64 @nyx_array_length({ i64, i8* }* %2283)
  %2285 = icmp slt i64 %2282, %2284
  br i1 %2285, label %while_body628, label %while_end629
while_body628:
  %2286 = load { i64, i8* }*, { i64, i8* }** %names_out.ptr
  %2287 = load i64, i64* %2281
  %2288 = call i64 @nyx_array_get({ i64, i8* }* %2286, i64 %2287)
  %2289 = inttoptr i64 %2288 to %nyx_string*
  %2290 = alloca %nyx_string*
  store %nyx_string* %2289, %nyx_string** %2290
  %2291 = load %nyx_string*, %nyx_string** %2290
  %2292 = load %nyx_string*, %nyx_string** %2277
  %2293 = call i8* @nyx_string_to_cstr(%nyx_string* %2291)
  %2294 = call i8* @nyx_string_to_cstr(%nyx_string* %2292)
  %2295 = call i32 @strcmp(i8* %2293, i8* %2294)
  %2296 = icmp eq i32 %2295, 0
  br i1 %2296, label %then630, label %else631
then630:
  %2297 = load { i64, i8* }*, { i64, i8* }** %types_out.ptr
  %2298 = load i64, i64* %2281
  %2299 = call i64 @nyx_array_get({ i64, i8* }* %2297, i64 %2298)
  %2300 = inttoptr i64 %2299 to { i64, i8* }*
  %2301 = alloca { i64, i8* }*
  store { i64, i8* }* %2300, { i64, i8* }** %2301
  %2302 = load { i64, i8* }*, { i64, i8* }** %2301
  %2303 = load { i64, i8* }*, { i64, i8* }** %arg_ty.ptr
  %2304 = call i1 @ty_eq({ i64, i8* }* %2302, { i64, i8* }* %2303)
  ret i1 %2304
else631:
  br label %merge632
merge632:
  %2305 = load i64, i64* %2281
  %2306 = add i64 %2305, 1
  store i64 %2306, i64* %2281
  br label %while_cond627
while_end629:
  %2307 = load { i64, i8* }*, { i64, i8* }** %names_out.ptr
  %2308 = load %nyx_string*, %nyx_string** %2277
  %2309 = ptrtoint %nyx_string* %2308 to i64
  call void @nyx_array_push({ i64, i8* }* %2307, i64 %2309)
  %2310 = load { i64, i8* }*, { i64, i8* }** %types_out.ptr
  %2311 = load { i64, i8* }*, { i64, i8* }** %arg_ty.ptr
  %2312 = ptrtoint { i64, i8* }* %2311 to i64
  call void @nyx_array_push({ i64, i8* }* %2310, i64 %2312)
  ret i1 1
else625:
  br label %merge626
merge626:
  ret i1 1
else622:
  br label %merge623
merge623:
  %2313 = load %nyx_string*, %nyx_string** %2238
  %2314 = getelementptr [10 x i8], [10 x i8]* @.str207, i32 0, i32 0
  %2315 = call %nyx_string* @nyx_string_from_cstr(i8* %2314)
  %2316 = call i8* @nyx_string_to_cstr(%nyx_string* %2313)
  %2317 = call i8* @nyx_string_to_cstr(%nyx_string* %2315)
  %2318 = call i32 @strcmp(i8* %2316, i8* %2317)
  %2319 = icmp eq i32 %2318, 0
  br i1 %2319, label %then633, label %else634
then633:
  ret i1 1
else634:
  br label %merge635
merge635:
  %2320 = load %nyx_string*, %nyx_string** %2235
  %2321 = load %nyx_string*, %nyx_string** %2238
  %2322 = call i8* @nyx_string_to_cstr(%nyx_string* %2320)
  %2323 = call i8* @nyx_string_to_cstr(%nyx_string* %2321)
  %2324 = call i32 @strcmp(i8* %2322, i8* %2323)
  %2325 = icmp eq i32 %2324, 0
  br i1 %2325, label %then636, label %else637
then636:
  %2326 = alloca i1
  store i1 true, i1* %2326
  %2327 = alloca i1
  store i1 true, i1* %2327
  %2328 = alloca i1
  store i1 true, i1* %2328
  %2329 = alloca i1
  store i1 true, i1* %2329
  %2330 = load %nyx_string*, %nyx_string** %2235
  %2331 = getelementptr [8 x i8], [8 x i8]* @.str208, i32 0, i32 0
  %2332 = call %nyx_string* @nyx_string_from_cstr(i8* %2331)
  %2333 = call i8* @nyx_string_to_cstr(%nyx_string* %2330)
  %2334 = call i8* @nyx_string_to_cstr(%nyx_string* %2332)
  %2335 = call i32 @strcmp(i8* %2333, i8* %2334)
  %2336 = icmp eq i32 %2335, 0
  br i1 %2336, label %sc_or_end640, label %sc_or_rhs639
sc_or_rhs639:
  %2337 = load %nyx_string*, %nyx_string** %2235
  %2338 = getelementptr [9 x i8], [9 x i8]* @.str209, i32 0, i32 0
  %2339 = call %nyx_string* @nyx_string_from_cstr(i8* %2338)
  %2340 = call i8* @nyx_string_to_cstr(%nyx_string* %2337)
  %2341 = call i8* @nyx_string_to_cstr(%nyx_string* %2339)
  %2342 = call i32 @strcmp(i8* %2340, i8* %2341)
  %2343 = icmp eq i32 %2342, 0
  store i1 %2343, i1* %2329
  br label %sc_or_end640
sc_or_end640:
  %2344 = load i1, i1* %2329
  br i1 %2344, label %sc_or_end642, label %sc_or_rhs641
sc_or_rhs641:
  %2345 = load %nyx_string*, %nyx_string** %2235
  %2346 = getelementptr [6 x i8], [6 x i8]* @.str210, i32 0, i32 0
  %2347 = call %nyx_string* @nyx_string_from_cstr(i8* %2346)
  %2348 = call i8* @nyx_string_to_cstr(%nyx_string* %2345)
  %2349 = call i8* @nyx_string_to_cstr(%nyx_string* %2347)
  %2350 = call i32 @strcmp(i8* %2348, i8* %2349)
  %2351 = icmp eq i32 %2350, 0
  store i1 %2351, i1* %2328
  br label %sc_or_end642
sc_or_end642:
  %2352 = load i1, i1* %2328
  br i1 %2352, label %sc_or_end644, label %sc_or_rhs643
sc_or_rhs643:
  %2353 = load %nyx_string*, %nyx_string** %2235
  %2354 = getelementptr [6 x i8], [6 x i8]* @.str211, i32 0, i32 0
  %2355 = call %nyx_string* @nyx_string_from_cstr(i8* %2354)
  %2356 = call i8* @nyx_string_to_cstr(%nyx_string* %2353)
  %2357 = call i8* @nyx_string_to_cstr(%nyx_string* %2355)
  %2358 = call i32 @strcmp(i8* %2356, i8* %2357)
  %2359 = icmp eq i32 %2358, 0
  store i1 %2359, i1* %2327
  br label %sc_or_end644
sc_or_end644:
  %2360 = load i1, i1* %2327
  br i1 %2360, label %sc_or_end646, label %sc_or_rhs645
sc_or_rhs645:
  %2361 = load %nyx_string*, %nyx_string** %2235
  %2362 = getelementptr [9 x i8], [9 x i8]* @.str212, i32 0, i32 0
  %2363 = call %nyx_string* @nyx_string_from_cstr(i8* %2362)
  %2364 = call i8* @nyx_string_to_cstr(%nyx_string* %2361)
  %2365 = call i8* @nyx_string_to_cstr(%nyx_string* %2363)
  %2366 = call i32 @strcmp(i8* %2364, i8* %2365)
  %2367 = icmp eq i32 %2366, 0
  store i1 %2367, i1* %2326
  br label %sc_or_end646
sc_or_end646:
  %2368 = load i1, i1* %2326
  br i1 %2368, label %then647, label %else648
then647:
  %2369 = load { i64, i8* }*, { i64, i8* }** %param_ty.ptr
  %2370 = call i64 @nyx_array_get({ i64, i8* }* %2369, i64 1)
  %2371 = inttoptr i64 %2370 to { i64, i8* }*
  %2372 = alloca { i64, i8* }*
  store { i64, i8* }* %2371, { i64, i8* }** %2372
  %2373 = load { i64, i8* }*, { i64, i8* }** %arg_ty.ptr
  %2374 = call i64 @nyx_array_get({ i64, i8* }* %2373, i64 1)
  %2375 = inttoptr i64 %2374 to { i64, i8* }*
  %2376 = alloca { i64, i8* }*
  store { i64, i8* }* %2375, { i64, i8* }** %2376
  %2377 = load { i64, i8* }*, { i64, i8* }** %2372
  %2378 = load { i64, i8* }*, { i64, i8* }** %2376
  %2379 = load { i64, i8* }*, { i64, i8* }** %type_param_names.ptr
  %2380 = load { i64, i8* }*, { i64, i8* }** %names_out.ptr
  %2381 = load { i64, i8* }*, { i64, i8* }** %types_out.ptr
  %2382 = call i1 @unify({ i64, i8* }* %2377, { i64, i8* }* %2378, { i64, i8* }* %2379, { i64, i8* }* %2380, { i64, i8* }* %2381)
  ret i1 %2382
else648:
  br label %merge649
merge649:
  %2383 = alloca i1
  store i1 true, i1* %2383
  %2384 = load %nyx_string*, %nyx_string** %2235
  %2385 = getelementptr [9 x i8], [9 x i8]* @.str213, i32 0, i32 0
  %2386 = call %nyx_string* @nyx_string_from_cstr(i8* %2385)
  %2387 = call i8* @nyx_string_to_cstr(%nyx_string* %2384)
  %2388 = call i8* @nyx_string_to_cstr(%nyx_string* %2386)
  %2389 = call i32 @strcmp(i8* %2387, i8* %2388)
  %2390 = icmp eq i32 %2389, 0
  br i1 %2390, label %sc_or_end651, label %sc_or_rhs650
sc_or_rhs650:
  %2391 = load %nyx_string*, %nyx_string** %2235
  %2392 = getelementptr [6 x i8], [6 x i8]* @.str214, i32 0, i32 0
  %2393 = call %nyx_string* @nyx_string_from_cstr(i8* %2392)
  %2394 = call i8* @nyx_string_to_cstr(%nyx_string* %2391)
  %2395 = call i8* @nyx_string_to_cstr(%nyx_string* %2393)
  %2396 = call i32 @strcmp(i8* %2394, i8* %2395)
  %2397 = icmp eq i32 %2396, 0
  store i1 %2397, i1* %2383
  br label %sc_or_end651
sc_or_end651:
  %2398 = load i1, i1* %2383
  br i1 %2398, label %then652, label %else653
then652:
  %2399 = load { i64, i8* }*, { i64, i8* }** %param_ty.ptr
  %2400 = call i64 @nyx_array_get({ i64, i8* }* %2399, i64 1)
  %2401 = inttoptr i64 %2400 to { i64, i8* }*
  %2402 = alloca { i64, i8* }*
  store { i64, i8* }* %2401, { i64, i8* }** %2402
  %2403 = load { i64, i8* }*, { i64, i8* }** %arg_ty.ptr
  %2404 = call i64 @nyx_array_get({ i64, i8* }* %2403, i64 1)
  %2405 = inttoptr i64 %2404 to { i64, i8* }*
  %2406 = alloca { i64, i8* }*
  store { i64, i8* }* %2405, { i64, i8* }** %2406
  %2407 = load { i64, i8* }*, { i64, i8* }** %2402
  %2408 = load { i64, i8* }*, { i64, i8* }** %2406
  %2409 = load { i64, i8* }*, { i64, i8* }** %type_param_names.ptr
  %2410 = load { i64, i8* }*, { i64, i8* }** %names_out.ptr
  %2411 = load { i64, i8* }*, { i64, i8* }** %types_out.ptr
  %2412 = call i1 @unify({ i64, i8* }* %2407, { i64, i8* }* %2408, { i64, i8* }* %2409, { i64, i8* }* %2410, { i64, i8* }* %2411)
  %2413 = xor i1 %2412, true
  br i1 %2413, label %then655, label %else656
then655:
  ret i1 0
else656:
  br label %merge657
merge657:
  %2414 = load { i64, i8* }*, { i64, i8* }** %param_ty.ptr
  %2415 = call i64 @nyx_array_get({ i64, i8* }* %2414, i64 2)
  %2416 = inttoptr i64 %2415 to { i64, i8* }*
  %2417 = alloca { i64, i8* }*
  store { i64, i8* }* %2416, { i64, i8* }** %2417
  %2418 = load { i64, i8* }*, { i64, i8* }** %arg_ty.ptr
  %2419 = call i64 @nyx_array_get({ i64, i8* }* %2418, i64 2)
  %2420 = inttoptr i64 %2419 to { i64, i8* }*
  %2421 = alloca { i64, i8* }*
  store { i64, i8* }* %2420, { i64, i8* }** %2421
  %2422 = load { i64, i8* }*, { i64, i8* }** %2417
  %2423 = load { i64, i8* }*, { i64, i8* }** %2421
  %2424 = load { i64, i8* }*, { i64, i8* }** %type_param_names.ptr
  %2425 = load { i64, i8* }*, { i64, i8* }** %names_out.ptr
  %2426 = load { i64, i8* }*, { i64, i8* }** %types_out.ptr
  %2427 = call i1 @unify({ i64, i8* }* %2422, { i64, i8* }* %2423, { i64, i8* }* %2424, { i64, i8* }* %2425, { i64, i8* }* %2426)
  ret i1 %2427
else653:
  br label %merge654
merge654:
  %2428 = load %nyx_string*, %nyx_string** %2235
  %2429 = getelementptr [5 x i8], [5 x i8]* @.str215, i32 0, i32 0
  %2430 = call %nyx_string* @nyx_string_from_cstr(i8* %2429)
  %2431 = call i8* @nyx_string_to_cstr(%nyx_string* %2428)
  %2432 = call i8* @nyx_string_to_cstr(%nyx_string* %2430)
  %2433 = call i32 @strcmp(i8* %2431, i8* %2432)
  %2434 = icmp eq i32 %2433, 0
  br i1 %2434, label %then658, label %else659
then658:
  %2435 = load { i64, i8* }*, { i64, i8* }** %param_ty.ptr
  %2436 = call i64 @nyx_array_get({ i64, i8* }* %2435, i64 1)
  %2437 = inttoptr i64 %2436 to { i64, i8* }*
  %2438 = alloca { i64, i8* }*
  store { i64, i8* }* %2437, { i64, i8* }** %2438
  %2439 = load { i64, i8* }*, { i64, i8* }** %arg_ty.ptr
  %2440 = call i64 @nyx_array_get({ i64, i8* }* %2439, i64 1)
  %2441 = inttoptr i64 %2440 to { i64, i8* }*
  %2442 = alloca { i64, i8* }*
  store { i64, i8* }* %2441, { i64, i8* }** %2442
  %2443 = load { i64, i8* }*, { i64, i8* }** %2438
  %2444 = call i64 @nyx_array_length({ i64, i8* }* %2443)
  %2445 = load { i64, i8* }*, { i64, i8* }** %2442
  %2446 = call i64 @nyx_array_length({ i64, i8* }* %2445)
  %2447 = icmp ne i64 %2444, %2446
  br i1 %2447, label %then661, label %else662
then661:
  ret i1 0
else662:
  br label %merge663
merge663:
  %2448 = alloca i64
  store i64 0, i64* %2448
  br label %while_cond664
while_cond664:
  %2449 = load i64, i64* %2448
  %2450 = load { i64, i8* }*, { i64, i8* }** %2438
  %2451 = call i64 @nyx_array_length({ i64, i8* }* %2450)
  %2452 = icmp slt i64 %2449, %2451
  br i1 %2452, label %while_body665, label %while_end666
while_body665:
  %2453 = load { i64, i8* }*, { i64, i8* }** %2438
  %2454 = load i64, i64* %2448
  %2455 = call i64 @nyx_array_get({ i64, i8* }* %2453, i64 %2454)
  %2456 = inttoptr i64 %2455 to { i64, i8* }*
  %2457 = alloca { i64, i8* }*
  store { i64, i8* }* %2456, { i64, i8* }** %2457
  %2458 = load { i64, i8* }*, { i64, i8* }** %2442
  %2459 = load i64, i64* %2448
  %2460 = call i64 @nyx_array_get({ i64, i8* }* %2458, i64 %2459)
  %2461 = inttoptr i64 %2460 to { i64, i8* }*
  %2462 = alloca { i64, i8* }*
  store { i64, i8* }* %2461, { i64, i8* }** %2462
  %2463 = load { i64, i8* }*, { i64, i8* }** %2457
  %2464 = load { i64, i8* }*, { i64, i8* }** %2462
  %2465 = load { i64, i8* }*, { i64, i8* }** %type_param_names.ptr
  %2466 = load { i64, i8* }*, { i64, i8* }** %names_out.ptr
  %2467 = load { i64, i8* }*, { i64, i8* }** %types_out.ptr
  %2468 = call i1 @unify({ i64, i8* }* %2463, { i64, i8* }* %2464, { i64, i8* }* %2465, { i64, i8* }* %2466, { i64, i8* }* %2467)
  %2469 = xor i1 %2468, true
  br i1 %2469, label %then667, label %else668
then667:
  ret i1 0
else668:
  br label %merge669
merge669:
  %2470 = load i64, i64* %2448
  %2471 = add i64 %2470, 1
  store i64 %2471, i64* %2448
  br label %while_cond664
while_end666:
  %2472 = load { i64, i8* }*, { i64, i8* }** %param_ty.ptr
  %2473 = call i64 @nyx_array_get({ i64, i8* }* %2472, i64 2)
  %2474 = inttoptr i64 %2473 to { i64, i8* }*
  %2475 = alloca { i64, i8* }*
  store { i64, i8* }* %2474, { i64, i8* }** %2475
  %2476 = load { i64, i8* }*, { i64, i8* }** %arg_ty.ptr
  %2477 = call i64 @nyx_array_get({ i64, i8* }* %2476, i64 2)
  %2478 = inttoptr i64 %2477 to { i64, i8* }*
  %2479 = alloca { i64, i8* }*
  store { i64, i8* }* %2478, { i64, i8* }** %2479
  %2480 = load { i64, i8* }*, { i64, i8* }** %2475
  %2481 = load { i64, i8* }*, { i64, i8* }** %2479
  %2482 = load { i64, i8* }*, { i64, i8* }** %type_param_names.ptr
  %2483 = load { i64, i8* }*, { i64, i8* }** %names_out.ptr
  %2484 = load { i64, i8* }*, { i64, i8* }** %types_out.ptr
  %2485 = call i1 @unify({ i64, i8* }* %2480, { i64, i8* }* %2481, { i64, i8* }* %2482, { i64, i8* }* %2483, { i64, i8* }* %2484)
  ret i1 %2485
else659:
  br label %merge660
merge660:
  %2486 = alloca i1
  store i1 true, i1* %2486
  %2487 = load %nyx_string*, %nyx_string** %2235
  %2488 = getelementptr [9 x i8], [9 x i8]* @.str216, i32 0, i32 0
  %2489 = call %nyx_string* @nyx_string_from_cstr(i8* %2488)
  %2490 = call i8* @nyx_string_to_cstr(%nyx_string* %2487)
  %2491 = call i8* @nyx_string_to_cstr(%nyx_string* %2489)
  %2492 = call i32 @strcmp(i8* %2490, i8* %2491)
  %2493 = icmp eq i32 %2492, 0
  br i1 %2493, label %sc_or_end671, label %sc_or_rhs670
sc_or_rhs670:
  %2494 = load %nyx_string*, %nyx_string** %2235
  %2495 = getelementptr [7 x i8], [7 x i8]* @.str217, i32 0, i32 0
  %2496 = call %nyx_string* @nyx_string_from_cstr(i8* %2495)
  %2497 = call i8* @nyx_string_to_cstr(%nyx_string* %2494)
  %2498 = call i8* @nyx_string_to_cstr(%nyx_string* %2496)
  %2499 = call i32 @strcmp(i8* %2497, i8* %2498)
  %2500 = icmp eq i32 %2499, 0
  store i1 %2500, i1* %2486
  br label %sc_or_end671
sc_or_end671:
  %2501 = load i1, i1* %2486
  br i1 %2501, label %then672, label %else673
then672:
  %2502 = load { i64, i8* }*, { i64, i8* }** %param_ty.ptr
  %2503 = call i64 @nyx_array_get({ i64, i8* }* %2502, i64 1)
  %2504 = inttoptr i64 %2503 to %nyx_string*
  %2505 = alloca %nyx_string*
  store %nyx_string* %2504, %nyx_string** %2505
  %2506 = load { i64, i8* }*, { i64, i8* }** %arg_ty.ptr
  %2507 = call i64 @nyx_array_get({ i64, i8* }* %2506, i64 1)
  %2508 = inttoptr i64 %2507 to %nyx_string*
  %2509 = alloca %nyx_string*
  store %nyx_string* %2508, %nyx_string** %2509
  %2510 = load %nyx_string*, %nyx_string** %2505
  %2511 = load %nyx_string*, %nyx_string** %2509
  %2512 = call i8* @nyx_string_to_cstr(%nyx_string* %2510)
  %2513 = call i8* @nyx_string_to_cstr(%nyx_string* %2511)
  %2514 = call i32 @strcmp(i8* %2512, i8* %2513)
  %2515 = icmp ne i32 %2514, 0
  br i1 %2515, label %then675, label %else676
then675:
  ret i1 0
else676:
  br label %merge677
merge677:
  %2516 = load { i64, i8* }*, { i64, i8* }** %param_ty.ptr
  %2517 = call i64 @nyx_array_get({ i64, i8* }* %2516, i64 2)
  %2518 = inttoptr i64 %2517 to { i64, i8* }*
  %2519 = alloca { i64, i8* }*
  store { i64, i8* }* %2518, { i64, i8* }** %2519
  %2520 = load { i64, i8* }*, { i64, i8* }** %arg_ty.ptr
  %2521 = call i64 @nyx_array_get({ i64, i8* }* %2520, i64 2)
  %2522 = inttoptr i64 %2521 to { i64, i8* }*
  %2523 = alloca { i64, i8* }*
  store { i64, i8* }* %2522, { i64, i8* }** %2523
  %2524 = load { i64, i8* }*, { i64, i8* }** %2519
  %2525 = call i64 @nyx_array_length({ i64, i8* }* %2524)
  %2526 = icmp eq i64 %2525, 0
  br i1 %2526, label %then678, label %else679
then678:
  ret i1 1
else679:
  br label %merge680
merge680:
  %2527 = load { i64, i8* }*, { i64, i8* }** %2523
  %2528 = call i64 @nyx_array_length({ i64, i8* }* %2527)
  %2529 = icmp eq i64 %2528, 0
  br i1 %2529, label %then681, label %else682
then681:
  ret i1 1
else682:
  br label %merge683
merge683:
  %2530 = load { i64, i8* }*, { i64, i8* }** %2519
  %2531 = call i64 @nyx_array_length({ i64, i8* }* %2530)
  %2532 = load { i64, i8* }*, { i64, i8* }** %2523
  %2533 = call i64 @nyx_array_length({ i64, i8* }* %2532)
  %2534 = icmp ne i64 %2531, %2533
  br i1 %2534, label %then684, label %else685
then684:
  ret i1 0
else685:
  br label %merge686
merge686:
  %2535 = alloca i64
  store i64 0, i64* %2535
  br label %while_cond687
while_cond687:
  %2536 = load i64, i64* %2535
  %2537 = load { i64, i8* }*, { i64, i8* }** %2519
  %2538 = call i64 @nyx_array_length({ i64, i8* }* %2537)
  %2539 = icmp slt i64 %2536, %2538
  br i1 %2539, label %while_body688, label %while_end689
while_body688:
  %2540 = load { i64, i8* }*, { i64, i8* }** %2519
  %2541 = load i64, i64* %2535
  %2542 = call i64 @nyx_array_get({ i64, i8* }* %2540, i64 %2541)
  %2543 = inttoptr i64 %2542 to { i64, i8* }*
  %2544 = alloca { i64, i8* }*
  store { i64, i8* }* %2543, { i64, i8* }** %2544
  %2545 = load { i64, i8* }*, { i64, i8* }** %2523
  %2546 = load i64, i64* %2535
  %2547 = call i64 @nyx_array_get({ i64, i8* }* %2545, i64 %2546)
  %2548 = inttoptr i64 %2547 to { i64, i8* }*
  %2549 = alloca { i64, i8* }*
  store { i64, i8* }* %2548, { i64, i8* }** %2549
  %2550 = load { i64, i8* }*, { i64, i8* }** %2544
  %2551 = load { i64, i8* }*, { i64, i8* }** %2549
  %2552 = load { i64, i8* }*, { i64, i8* }** %type_param_names.ptr
  %2553 = load { i64, i8* }*, { i64, i8* }** %names_out.ptr
  %2554 = load { i64, i8* }*, { i64, i8* }** %types_out.ptr
  %2555 = call i1 @unify({ i64, i8* }* %2550, { i64, i8* }* %2551, { i64, i8* }* %2552, { i64, i8* }* %2553, { i64, i8* }* %2554)
  %2556 = xor i1 %2555, true
  br i1 %2556, label %then690, label %else691
then690:
  ret i1 0
else691:
  br label %merge692
merge692:
  %2557 = load i64, i64* %2535
  %2558 = add i64 %2557, 1
  store i64 %2558, i64* %2535
  br label %while_cond687
while_end689:
  ret i1 1
else673:
  br label %merge674
merge674:
  br label %merge638
else637:
  br label %merge638
merge638:
  %2559 = load { i64, i8* }*, { i64, i8* }** %param_ty.ptr
  %2560 = load { i64, i8* }*, { i64, i8* }** %arg_ty.ptr
  %2561 = call i1 @ty_eq({ i64, i8* }* %2559, { i64, i8* }* %2560)
  ret i1 %2561
}

define { i64, i8* }* @known_primitive_names(
) {
  %2562 = call { i64, i8* }* @nyx_array_new_ptr()
  %2563 = getelementptr [4 x i8], [4 x i8]* @.str218, i32 0, i32 0
  %2564 = call %nyx_string* @nyx_string_from_cstr(i8* %2563)
  %2565 = ptrtoint %nyx_string* %2564 to i64
  call void @nyx_array_push({ i64, i8* }* %2562, i64 %2565)
  %2566 = getelementptr [6 x i8], [6 x i8]* @.str219, i32 0, i32 0
  %2567 = call %nyx_string* @nyx_string_from_cstr(i8* %2566)
  %2568 = ptrtoint %nyx_string* %2567 to i64
  call void @nyx_array_push({ i64, i8* }* %2562, i64 %2568)
  %2569 = getelementptr [5 x i8], [5 x i8]* @.str220, i32 0, i32 0
  %2570 = call %nyx_string* @nyx_string_from_cstr(i8* %2569)
  %2571 = ptrtoint %nyx_string* %2570 to i64
  call void @nyx_array_push({ i64, i8* }* %2562, i64 %2571)
  %2572 = getelementptr [7 x i8], [7 x i8]* @.str221, i32 0, i32 0
  %2573 = call %nyx_string* @nyx_string_from_cstr(i8* %2572)
  %2574 = ptrtoint %nyx_string* %2573 to i64
  call void @nyx_array_push({ i64, i8* }* %2562, i64 %2574)
  %2575 = getelementptr [5 x i8], [5 x i8]* @.str222, i32 0, i32 0
  %2576 = call %nyx_string* @nyx_string_from_cstr(i8* %2575)
  %2577 = ptrtoint %nyx_string* %2576 to i64
  call void @nyx_array_push({ i64, i8* }* %2562, i64 %2577)
  %2578 = getelementptr [5 x i8], [5 x i8]* @.str223, i32 0, i32 0
  %2579 = call %nyx_string* @nyx_string_from_cstr(i8* %2578)
  %2580 = ptrtoint %nyx_string* %2579 to i64
  call void @nyx_array_push({ i64, i8* }* %2562, i64 %2580)
  %2581 = getelementptr [3 x i8], [3 x i8]* @.str224, i32 0, i32 0
  %2582 = call %nyx_string* @nyx_string_from_cstr(i8* %2581)
  %2583 = ptrtoint %nyx_string* %2582 to i64
  call void @nyx_array_push({ i64, i8* }* %2562, i64 %2583)
  %2584 = getelementptr [4 x i8], [4 x i8]* @.str225, i32 0, i32 0
  %2585 = call %nyx_string* @nyx_string_from_cstr(i8* %2584)
  %2586 = ptrtoint %nyx_string* %2585 to i64
  call void @nyx_array_push({ i64, i8* }* %2562, i64 %2586)
  %2587 = getelementptr [4 x i8], [4 x i8]* @.str226, i32 0, i32 0
  %2588 = call %nyx_string* @nyx_string_from_cstr(i8* %2587)
  %2589 = ptrtoint %nyx_string* %2588 to i64
  call void @nyx_array_push({ i64, i8* }* %2562, i64 %2589)
  %2590 = getelementptr [4 x i8], [4 x i8]* @.str227, i32 0, i32 0
  %2591 = call %nyx_string* @nyx_string_from_cstr(i8* %2590)
  %2592 = ptrtoint %nyx_string* %2591 to i64
  call void @nyx_array_push({ i64, i8* }* %2562, i64 %2592)
  %2593 = getelementptr [3 x i8], [3 x i8]* @.str228, i32 0, i32 0
  %2594 = call %nyx_string* @nyx_string_from_cstr(i8* %2593)
  %2595 = ptrtoint %nyx_string* %2594 to i64
  call void @nyx_array_push({ i64, i8* }* %2562, i64 %2595)
  %2596 = getelementptr [4 x i8], [4 x i8]* @.str229, i32 0, i32 0
  %2597 = call %nyx_string* @nyx_string_from_cstr(i8* %2596)
  %2598 = ptrtoint %nyx_string* %2597 to i64
  call void @nyx_array_push({ i64, i8* }* %2562, i64 %2598)
  %2599 = getelementptr [4 x i8], [4 x i8]* @.str230, i32 0, i32 0
  %2600 = call %nyx_string* @nyx_string_from_cstr(i8* %2599)
  %2601 = ptrtoint %nyx_string* %2600 to i64
  call void @nyx_array_push({ i64, i8* }* %2562, i64 %2601)
  %2602 = getelementptr [4 x i8], [4 x i8]* @.str231, i32 0, i32 0
  %2603 = call %nyx_string* @nyx_string_from_cstr(i8* %2602)
  %2604 = ptrtoint %nyx_string* %2603 to i64
  call void @nyx_array_push({ i64, i8* }* %2562, i64 %2604)
  %2605 = getelementptr [4 x i8], [4 x i8]* @.str232, i32 0, i32 0
  %2606 = call %nyx_string* @nyx_string_from_cstr(i8* %2605)
  %2607 = ptrtoint %nyx_string* %2606 to i64
  call void @nyx_array_push({ i64, i8* }* %2562, i64 %2607)
  %2608 = getelementptr [6 x i8], [6 x i8]* @.str233, i32 0, i32 0
  %2609 = call %nyx_string* @nyx_string_from_cstr(i8* %2608)
  %2610 = ptrtoint %nyx_string* %2609 to i64
  call void @nyx_array_push({ i64, i8* }* %2562, i64 %2610)
  %2611 = getelementptr [6 x i8], [6 x i8]* @.str234, i32 0, i32 0
  %2612 = call %nyx_string* @nyx_string_from_cstr(i8* %2611)
  %2613 = ptrtoint %nyx_string* %2612 to i64
  call void @nyx_array_push({ i64, i8* }* %2562, i64 %2613)
  %2614 = getelementptr [7 x i8], [7 x i8]* @.str235, i32 0, i32 0
  %2615 = call %nyx_string* @nyx_string_from_cstr(i8* %2614)
  %2616 = ptrtoint %nyx_string* %2615 to i64
  call void @nyx_array_push({ i64, i8* }* %2562, i64 %2616)
  %2617 = getelementptr [7 x i8], [7 x i8]* @.str236, i32 0, i32 0
  %2618 = call %nyx_string* @nyx_string_from_cstr(i8* %2617)
  %2619 = ptrtoint %nyx_string* %2618 to i64
  call void @nyx_array_push({ i64, i8* }* %2562, i64 %2619)
  %2620 = getelementptr [4 x i8], [4 x i8]* @.str237, i32 0, i32 0
  %2621 = call %nyx_string* @nyx_string_from_cstr(i8* %2620)
  %2622 = ptrtoint %nyx_string* %2621 to i64
  call void @nyx_array_push({ i64, i8* }* %2562, i64 %2622)
  %2623 = getelementptr [14 x i8], [14 x i8]* @.str238, i32 0, i32 0
  %2624 = call %nyx_string* @nyx_string_from_cstr(i8* %2623)
  %2625 = ptrtoint %nyx_string* %2624 to i64
  call void @nyx_array_push({ i64, i8* }* %2562, i64 %2625)
  %2626 = getelementptr [9 x i8], [9 x i8]* @.str239, i32 0, i32 0
  %2627 = call %nyx_string* @nyx_string_from_cstr(i8* %2626)
  %2628 = ptrtoint %nyx_string* %2627 to i64
  call void @nyx_array_push({ i64, i8* }* %2562, i64 %2628)
  %2629 = getelementptr [8 x i8], [8 x i8]* @.str240, i32 0, i32 0
  %2630 = call %nyx_string* @nyx_string_from_cstr(i8* %2629)
  %2631 = ptrtoint %nyx_string* %2630 to i64
  call void @nyx_array_push({ i64, i8* }* %2562, i64 %2631)
  %2632 = getelementptr [5 x i8], [5 x i8]* @.str241, i32 0, i32 0
  %2633 = call %nyx_string* @nyx_string_from_cstr(i8* %2632)
  %2634 = ptrtoint %nyx_string* %2633 to i64
  call void @nyx_array_push({ i64, i8* }* %2562, i64 %2634)
  ret { i64, i8* }* %2562
}


attributes #0 = { returns_twice }

