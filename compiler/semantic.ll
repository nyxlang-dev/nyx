source_filename = "script.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [9 x i8] c"NYX_LANG\00"
@.str1 = private unnamed_addr constant [3 x i8] c"es\00"
@.str2 = private unnamed_addr constant [1 x i8] c"\00"
@.str3 = private unnamed_addr constant [8 x i8] c"error: \00"
@.str4 = private unnamed_addr constant [9 x i8] c"error en\00"
@.str5 = private unnamed_addr constant [9 x i8] c"error in\00"
@.str6 = private unnamed_addr constant [3 x i8] c" '\00"
@.str7 = private unnamed_addr constant [4 x i8] c"': \00"
@.str8 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str9 = private unnamed_addr constant [5 x i8] c"call\00"
@.str10 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str11 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str12 = private unnamed_addr constant [12 x i8] c"method_call\00"
@.str13 = private unnamed_addr constant [7 x i8] c"length\00"
@.str14 = private unnamed_addr constant [12 x i8] c"byte_length\00"
@.str15 = private unnamed_addr constant [5 x i8] c"size\00"
@.str16 = private unnamed_addr constant [6 x i8] c"count\00"
@.str17 = private unnamed_addr constant [8 x i8] c"indexOf\00"
@.str18 = private unnamed_addr constant [7 x i8] c"charAt\00"
@.str19 = private unnamed_addr constant [8 x i8] c"is_some\00"
@.str20 = private unnamed_addr constant [8 x i8] c"is_none\00"
@.str21 = private unnamed_addr constant [6 x i8] c"is_ok\00"
@.str22 = private unnamed_addr constant [7 x i8] c"is_err\00"
@.str23 = private unnamed_addr constant [9 x i8] c"contains\00"
@.str24 = private unnamed_addr constant [4 x i8] c"has\00"
@.str25 = private unnamed_addr constant [11 x i8] c"startsWith\00"
@.str26 = private unnamed_addr constant [9 x i8] c"endsWith\00"
@.str27 = private unnamed_addr constant [12 x i8] c"starts_with\00"
@.str28 = private unnamed_addr constant [10 x i8] c"ends_with\00"
@.str29 = private unnamed_addr constant [4 x i8] c"any\00"
@.str30 = private unnamed_addr constant [4 x i8] c"all\00"
@.str31 = private unnamed_addr constant [8 x i8] c"toUpper\00"
@.str32 = private unnamed_addr constant [8 x i8] c"toLower\00"
@.str33 = private unnamed_addr constant [9 x i8] c"to_upper\00"
@.str34 = private unnamed_addr constant [9 x i8] c"to_lower\00"
@.str35 = private unnamed_addr constant [5 x i8] c"trim\00"
@.str36 = private unnamed_addr constant [10 x i8] c"substring\00"
@.str37 = private unnamed_addr constant [8 x i8] c"replace\00"
@.str38 = private unnamed_addr constant [7 x i8] c"repeat\00"
@.str39 = private unnamed_addr constant [10 x i8] c"to_string\00"
@.str40 = private unnamed_addr constant [5 x i8] c"join\00"
@.str41 = private unnamed_addr constant [10 x i8] c"debug_str\00"
@.str42 = private unnamed_addr constant [9 x i8] c"TyStruct\00"
@.str43 = private unnamed_addr constant [7 x i8] c"TyEnum\00"
@.str44 = private unnamed_addr constant [5 x i8] c"unop\00"
@.str45 = private unnamed_addr constant [4 x i8] c"NOT\00"
@.str46 = private unnamed_addr constant [6 x i8] c"TILDE\00"
@.str47 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str48 = private unnamed_addr constant [12 x i8] c"struct_init\00"
@.str49 = private unnamed_addr constant [13 x i8] c"field_access\00"
@.str50 = private unnamed_addr constant [9 x i8] c"TyStruct\00"
@.str51 = private unnamed_addr constant [6 x i8] c"index\00"
@.str52 = private unnamed_addr constant [8 x i8] c"TyArray\00"
@.str53 = private unnamed_addr constant [6 x i8] c"TyMap\00"
@.str54 = private unnamed_addr constant [9 x i8] c"TyString\00"
@.str55 = private unnamed_addr constant [1 x i8] c"\00"
@.str56 = private unnamed_addr constant [9 x i8] c"TyStruct\00"
@.str57 = private unnamed_addr constant [19 x i8] c"tipo desconocido '\00"
@.str58 = private unnamed_addr constant [2 x i8] c"'\00"
@.str59 = private unnamed_addr constant [15 x i8] c"unknown type '\00"
@.str60 = private unnamed_addr constant [2 x i8] c"'\00"
@.str61 = private unnamed_addr constant [2 x i8] c":\00"
@.str62 = private unnamed_addr constant [2 x i8] c"+\00"
@.str63 = private unnamed_addr constant [9 x i8] c"TyStruct\00"
@.str64 = private unnamed_addr constant [9 x i8] c"TyStruct\00"
@.str65 = private unnamed_addr constant [8 x i8] c"TyArray\00"
@.str66 = private unnamed_addr constant [8 x i8] c"TyArray\00"
@.str67 = private unnamed_addr constant [9 x i8] c"TyOption\00"
@.str68 = private unnamed_addr constant [9 x i8] c"TyOption\00"
@.str69 = private unnamed_addr constant [6 x i8] c"TyPtr\00"
@.str70 = private unnamed_addr constant [6 x i8] c"TyPtr\00"
@.str71 = private unnamed_addr constant [6 x i8] c"TyRef\00"
@.str72 = private unnamed_addr constant [6 x i8] c"TyRef\00"
@.str73 = private unnamed_addr constant [9 x i8] c"TyRefMut\00"
@.str74 = private unnamed_addr constant [9 x i8] c"TyRefMut\00"
@.str75 = private unnamed_addr constant [9 x i8] c"TyResult\00"
@.str76 = private unnamed_addr constant [9 x i8] c"TyResult\00"
@.str77 = private unnamed_addr constant [6 x i8] c"TyMap\00"
@.str78 = private unnamed_addr constant [6 x i8] c"TyMap\00"
@.str79 = private unnamed_addr constant [5 x i8] c"TyFn\00"
@.str80 = private unnamed_addr constant [5 x i8] c"TyFn\00"
@.str81 = private unnamed_addr constant [2 x i8] c"<\00"
@.str82 = private unnamed_addr constant [6 x i8] c"TyDyn\00"
@.str83 = private unnamed_addr constant [9 x i8] c"TyStruct\00"
@.str84 = private unnamed_addr constant [7 x i8] c"TyEnum\00"
@.str85 = private unnamed_addr constant [2 x i8] c"'\00"
@.str86 = private unnamed_addr constant [22 x i8] c"' no implementa 'dyn \00"
@.str87 = private unnamed_addr constant [17 x i8] c"' requerido en '\00"
@.str88 = private unnamed_addr constant [2 x i8] c"'\00"
@.str89 = private unnamed_addr constant [2 x i8] c"'\00"
@.str90 = private unnamed_addr constant [27 x i8] c"' does not implement 'dyn \00"
@.str91 = private unnamed_addr constant [16 x i8] c"' required by '\00"
@.str92 = private unnamed_addr constant [2 x i8] c"'\00"
@.str93 = private unnamed_addr constant [5 x i8] c"self\00"
@.str94 = private unnamed_addr constant [6 x i8] c"&self\00"
@.str95 = private unnamed_addr constant [10 x i8] c"&mut self\00"
@.str96 = private unnamed_addr constant [1 x i8] c"\00"
@.str97 = private unnamed_addr constant [4 x i8] c"...\00"
@.str98 = private unnamed_addr constant [1 x i8] c"\00"
@.str99 = private unnamed_addr constant [4 x i8] c"...\00"
@.str100 = private unnamed_addr constant [1 x i8] c"\00"
@.str101 = private unnamed_addr constant [6 x i8] c"print\00"
@.str102 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str103 = private unnamed_addr constant [14 x i8] c"int_to_string\00"
@.str104 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str105 = private unnamed_addr constant [16 x i8] c"float_to_string\00"
@.str106 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str107 = private unnamed_addr constant [15 x i8] c"char_to_string\00"
@.str108 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str109 = private unnamed_addr constant [13 x i8] c"int_to_float\00"
@.str110 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str111 = private unnamed_addr constant [13 x i8] c"float_to_int\00"
@.str112 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str113 = private unnamed_addr constant [10 x i8] c"read_file\00"
@.str114 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str115 = private unnamed_addr constant [11 x i8] c"write_file\00"
@.str116 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str117 = private unnamed_addr constant [12 x i8] c"file_exists\00"
@.str118 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str119 = private unnamed_addr constant [10 x i8] c"file_open\00"
@.str120 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str121 = private unnamed_addr constant [11 x i8] c"file_close\00"
@.str122 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str123 = private unnamed_addr constant [15 x i8] c"file_read_line\00"
@.str124 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str125 = private unnamed_addr constant [16 x i8] c"file_read_bytes\00"
@.str126 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str127 = private unnamed_addr constant [18 x i8] c"file_write_string\00"
@.str128 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str129 = private unnamed_addr constant [17 x i8] c"file_write_bytes\00"
@.str130 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str131 = private unnamed_addr constant [10 x i8] c"file_seek\00"
@.str132 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str133 = private unnamed_addr constant [10 x i8] c"file_tell\00"
@.str134 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str135 = private unnamed_addr constant [11 x i8] c"file_flush\00"
@.str136 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str137 = private unnamed_addr constant [6 x i8] c"mkdir\00"
@.str138 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str139 = private unnamed_addr constant [8 x i8] c"readdir\00"
@.str140 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str141 = private unnamed_addr constant [12 x i8] c"remove_file\00"
@.str142 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str143 = private unnamed_addr constant [12 x i8] c"rename_file\00"
@.str144 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str145 = private unnamed_addr constant [12 x i8] c"crc32_bytes\00"
@.str146 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str147 = private unnamed_addr constant [18 x i8] c"string_from_bytes\00"
@.str148 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str149 = private unnamed_addr constant [23 x i8] c"setup_shutdown_handler\00"
@.str150 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str151 = private unnamed_addr constant [11 x i8] c"tcp_listen\00"
@.str152 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str153 = private unnamed_addr constant [11 x i8] c"tcp_accept\00"
@.str154 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str155 = private unnamed_addr constant [12 x i8] c"tcp_connect\00"
@.str156 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str157 = private unnamed_addr constant [9 x i8] c"tcp_read\00"
@.str158 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str159 = private unnamed_addr constant [15 x i8] c"tcp_read_exact\00"
@.str160 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str161 = private unnamed_addr constant [14 x i8] c"tcp_read_line\00"
@.str162 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str163 = private unnamed_addr constant [10 x i8] c"tcp_write\00"
@.str164 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str165 = private unnamed_addr constant [10 x i8] c"tcp_close\00"
@.str166 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str167 = private unnamed_addr constant [24 x i8] c"http_parse_request_fast\00"
@.str168 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str169 = private unnamed_addr constant [9 x i8] c"udp_bind\00"
@.str170 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str171 = private unnamed_addr constant [11 x i8] c"udp_sendto\00"
@.str172 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str173 = private unnamed_addr constant [13 x i8] c"udp_recvfrom\00"
@.str174 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str175 = private unnamed_addr constant [8 x i8] c"resolve\00"
@.str176 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str177 = private unnamed_addr constant [16 x i8] c"resp_write_bulk\00"
@.str178 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str179 = private unnamed_addr constant [23 x i8] c"resp_read_command_fast\00"
@.str180 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str181 = private unnamed_addr constant [12 x i8] c"getpeername\00"
@.str182 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str183 = private unnamed_addr constant [13 x i8] c"thread_spawn\00"
@.str184 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str185 = private unnamed_addr constant [12 x i8] c"thread_join\00"
@.str186 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str187 = private unnamed_addr constant [11 x i8] c"spawn_task\00"
@.str188 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str189 = private unnamed_addr constant [11 x i8] c"task_await\00"
@.str190 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str191 = private unnamed_addr constant [12 x i8] c"task_cancel\00"
@.str192 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str193 = private unnamed_addr constant [10 x i8] c"task_race\00"
@.str194 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str195 = private unnamed_addr constant [10 x i8] c"mutex_new\00"
@.str196 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str197 = private unnamed_addr constant [11 x i8] c"mutex_lock\00"
@.str198 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str199 = private unnamed_addr constant [13 x i8] c"mutex_unlock\00"
@.str200 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str201 = private unnamed_addr constant [14 x i8] c"mutex_destroy\00"
@.str202 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str203 = private unnamed_addr constant [12 x i8] c"channel_new\00"
@.str204 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str205 = private unnamed_addr constant [13 x i8] c"channel_send\00"
@.str206 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str207 = private unnamed_addr constant [13 x i8] c"channel_recv\00"
@.str208 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str209 = private unnamed_addr constant [16 x i8] c"channel_destroy\00"
@.str210 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str211 = private unnamed_addr constant [5 x i8] c"exec\00"
@.str212 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str213 = private unnamed_addr constant [7 x i8] c"getenv\00"
@.str214 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str215 = private unnamed_addr constant [15 x i8] c"getenv_default\00"
@.str216 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str217 = private unnamed_addr constant [7 x i8] c"setenv\00"
@.str218 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str219 = private unnamed_addr constant [5 x i8] c"exit\00"
@.str220 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str221 = private unnamed_addr constant [9 x i8] c"get_args\00"
@.str222 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str223 = private unnamed_addr constant [5 x i8] c"fork\00"
@.str224 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str225 = private unnamed_addr constant [7 x i8] c"execvp\00"
@.str226 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str227 = private unnamed_addr constant [8 x i8] c"waitpid\00"
@.str228 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str229 = private unnamed_addr constant [5 x i8] c"dup2\00"
@.str230 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str231 = private unnamed_addr constant [6 x i8] c"chdir\00"
@.str232 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str233 = private unnamed_addr constant [7 x i8] c"getcwd\00"
@.str234 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str235 = private unnamed_addr constant [5 x i8] c"stat\00"
@.str236 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str237 = private unnamed_addr constant [7 x i8] c"isatty\00"
@.str238 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str239 = private unnamed_addr constant [9 x i8] c"close_fd\00"
@.str240 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str241 = private unnamed_addr constant [9 x i8] c"pipe_new\00"
@.str242 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str243 = private unnamed_addr constant [7 x i8] c"getpid\00"
@.str244 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str245 = private unnamed_addr constant [13 x i8] c"kill_process\00"
@.str246 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str247 = private unnamed_addr constant [8 x i8] c"open_fd\00"
@.str248 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str249 = private unnamed_addr constant [6 x i8] c"sleep\00"
@.str250 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str251 = private unnamed_addr constant [5 x i8] c"time\00"
@.str252 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str253 = private unnamed_addr constant [8 x i8] c"time_ms\00"
@.str254 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str255 = private unnamed_addr constant [8 x i8] c"time_us\00"
@.str256 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str257 = private unnamed_addr constant [9 x i8] c"math_log\00"
@.str258 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str259 = private unnamed_addr constant [10 x i8] c"math_log2\00"
@.str260 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str261 = private unnamed_addr constant [11 x i8] c"math_log10\00"
@.str262 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str263 = private unnamed_addr constant [9 x i8] c"math_exp\00"
@.str264 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str265 = private unnamed_addr constant [9 x i8] c"math_sin\00"
@.str266 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str267 = private unnamed_addr constant [9 x i8] c"math_cos\00"
@.str268 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str269 = private unnamed_addr constant [9 x i8] c"math_tan\00"
@.str270 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str271 = private unnamed_addr constant [10 x i8] c"math_asin\00"
@.str272 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str273 = private unnamed_addr constant [10 x i8] c"math_acos\00"
@.str274 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str275 = private unnamed_addr constant [10 x i8] c"math_atan\00"
@.str276 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str277 = private unnamed_addr constant [11 x i8] c"math_atan2\00"
@.str278 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str279 = private unnamed_addr constant [10 x i8] c"math_sqrt\00"
@.str280 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str281 = private unnamed_addr constant [10 x i8] c"math_ceil\00"
@.str282 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str283 = private unnamed_addr constant [11 x i8] c"math_floor\00"
@.str284 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str285 = private unnamed_addr constant [11 x i8] c"math_round\00"
@.str286 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str287 = private unnamed_addr constant [10 x i8] c"math_fabs\00"
@.str288 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str289 = private unnamed_addr constant [10 x i8] c"math_fmod\00"
@.str290 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str291 = private unnamed_addr constant [14 x i8] c"signal_handle\00"
@.str292 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str293 = private unnamed_addr constant [13 x i8] c"signal_reset\00"
@.str294 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str295 = private unnamed_addr constant [14 x i8] c"signal_ignore\00"
@.str296 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str297 = private unnamed_addr constant [12 x i8] c"regex_match\00"
@.str298 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str299 = private unnamed_addr constant [15 x i8] c"regex_is_match\00"
@.str300 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str301 = private unnamed_addr constant [14 x i8] c"regex_replace\00"
@.str302 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str303 = private unnamed_addr constant [18 x i8] c"regex_replace_all\00"
@.str304 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str305 = private unnamed_addr constant [13 x i8] c"datetime_now\00"
@.str306 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str307 = private unnamed_addr constant [16 x i8] c"datetime_format\00"
@.str308 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str309 = private unnamed_addr constant [11 x i8] c"time_epoch\00"
@.str310 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str311 = private unnamed_addr constant [20 x i8] c"datetime_from_epoch\00"
@.str312 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str313 = private unnamed_addr constant [15 x i8] c"datetime_parse\00"
@.str314 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str315 = private unnamed_addr constant [14 x i8] c"datetime_year\00"
@.str316 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str317 = private unnamed_addr constant [15 x i8] c"datetime_month\00"
@.str318 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str319 = private unnamed_addr constant [13 x i8] c"datetime_day\00"
@.str320 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str321 = private unnamed_addr constant [14 x i8] c"datetime_hour\00"
@.str322 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str323 = private unnamed_addr constant [16 x i8] c"datetime_minute\00"
@.str324 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str325 = private unnamed_addr constant [16 x i8] c"datetime_second\00"
@.str326 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str327 = private unnamed_addr constant [17 x i8] c"datetime_weekday\00"
@.str328 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str329 = private unnamed_addr constant [7 x i8] c"sha256\00"
@.str330 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str331 = private unnamed_addr constant [4 x i8] c"md5\00"
@.str332 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str333 = private unnamed_addr constant [12 x i8] c"hmac_sha256\00"
@.str334 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str335 = private unnamed_addr constant [10 x i8] c"https_get\00"
@.str336 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str337 = private unnamed_addr constant [11 x i8] c"https_post\00"
@.str338 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str339 = private unnamed_addr constant [12 x i8] c"tls_connect\00"
@.str340 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str341 = private unnamed_addr constant [9 x i8] c"tls_read\00"
@.str342 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str343 = private unnamed_addr constant [10 x i8] c"tls_write\00"
@.str344 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str345 = private unnamed_addr constant [10 x i8] c"tls_close\00"
@.str346 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str347 = private unnamed_addr constant [16 x i8] c"tls_server_init\00"
@.str348 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str349 = private unnamed_addr constant [20 x i8] c"tls_server_add_cert\00"
@.str350 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str351 = private unnamed_addr constant [11 x i8] c"tls_accept\00"
@.str352 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str353 = private unnamed_addr constant [14 x i8] c"tls_read_line\00"
@.str354 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str355 = private unnamed_addr constant [15 x i8] c"tls_write_conn\00"
@.str356 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str357 = private unnamed_addr constant [15 x i8] c"tls_close_conn\00"
@.str358 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str359 = private unnamed_addr constant [10 x i8] c"read_line\00"
@.str360 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str361 = private unnamed_addr constant [17 x i8] c"print_no_newline\00"
@.str362 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str363 = private unnamed_addr constant [14 x i8] c"string_to_int\00"
@.str364 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str365 = private unnamed_addr constant [16 x i8] c"string_to_float\00"
@.str366 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str367 = private unnamed_addr constant [16 x i8] c"str_byte_length\00"
@.str368 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str369 = private unnamed_addr constant [5 x i8] c"free\00"
@.str370 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str371 = private unnamed_addr constant [6 x i8] c"alloc\00"
@.str372 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str373 = private unnamed_addr constant [6 x i8] c"panic\00"
@.str374 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str375 = private unnamed_addr constant [4 x i8] c"run\00"
@.str376 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str377 = private unnamed_addr constant [7 x i8] c"format\00"
@.str378 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str379 = private unnamed_addr constant [14 x i8] c"volatile_load\00"
@.str380 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str381 = private unnamed_addr constant [15 x i8] c"volatile_store\00"
@.str382 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str383 = private unnamed_addr constant [11 x i8] c"atomic_add\00"
@.str384 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str385 = private unnamed_addr constant [11 x i8] c"atomic_sub\00"
@.str386 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str387 = private unnamed_addr constant [11 x i8] c"atomic_cas\00"
@.str388 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str389 = private unnamed_addr constant [15 x i8] c"raw_mode_enter\00"
@.str390 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str391 = private unnamed_addr constant [14 x i8] c"raw_mode_exit\00"
@.str392 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str393 = private unnamed_addr constant [10 x i8] c"read_byte\00"
@.str394 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str395 = private unnamed_addr constant [10 x i8] c"term_cols\00"
@.str396 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str397 = private unnamed_addr constant [10 x i8] c"term_rows\00"
@.str398 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str399 = private unnamed_addr constant [4 x i8] c"chr\00"
@.str400 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str401 = private unnamed_addr constant [4 x i8] c"Map\00"
@.str402 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str403 = private unnamed_addr constant [14 x i8] c"StringBuilder\00"
@.str404 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str405 = private unnamed_addr constant [11 x i8] c"type_alias\00"
@.str406 = private unnamed_addr constant [9 x i8] c"function\00"
@.str407 = private unnamed_addr constant [4 x i8] c"...\00"
@.str408 = private unnamed_addr constant [3 x i8] c"fn\00"
@.str409 = private unnamed_addr constant [1 x i8] c"\00"
@.str410 = private unnamed_addr constant [5 x i8] c"void\00"
@.str411 = private unnamed_addr constant [9 x i8] c"async_fn\00"
@.str412 = private unnamed_addr constant [3 x i8] c"fn\00"
@.str413 = private unnamed_addr constant [1 x i8] c"\00"
@.str414 = private unnamed_addr constant [5 x i8] c"void\00"
@.str415 = private unnamed_addr constant [7 x i8] c"struct\00"
@.str416 = private unnamed_addr constant [7 x i8] c"struct\00"
@.str417 = private unnamed_addr constant [8 x i8] c"derive(\00"
@.str418 = private unnamed_addr constant [8 x i8] c"Default\00"
@.str419 = private unnamed_addr constant [9 x i8] c"_default\00"
@.str420 = private unnamed_addr constant [3 x i8] c"fn\00"
@.str421 = private unnamed_addr constant [6 x i8] c"Clone\00"
@.str422 = private unnamed_addr constant [7 x i8] c"_clone\00"
@.str423 = private unnamed_addr constant [3 x i8] c"fn\00"
@.str424 = private unnamed_addr constant [10 x i8] c"PartialEq\00"
@.str425 = private unnamed_addr constant [4 x i8] c"_eq\00"
@.str426 = private unnamed_addr constant [3 x i8] c"fn\00"
@.str427 = private unnamed_addr constant [6 x i8] c"Debug\00"
@.str428 = private unnamed_addr constant [11 x i8] c"_debug_str\00"
@.str429 = private unnamed_addr constant [3 x i8] c"fn\00"
@.str430 = private unnamed_addr constant [8 x i8] c"Display\00"
@.str431 = private unnamed_addr constant [11 x i8] c"_to_string\00"
@.str432 = private unnamed_addr constant [3 x i8] c"fn\00"
@.str433 = private unnamed_addr constant [9 x i8] c"enum_def\00"
@.str434 = private unnamed_addr constant [5 x i8] c"enum\00"
@.str435 = private unnamed_addr constant [7 x i8] c"export\00"
@.str436 = private unnamed_addr constant [9 x i8] c"function\00"
@.str437 = private unnamed_addr constant [4 x i8] c"...\00"
@.str438 = private unnamed_addr constant [3 x i8] c"fn\00"
@.str439 = private unnamed_addr constant [1 x i8] c"\00"
@.str440 = private unnamed_addr constant [5 x i8] c"void\00"
@.str441 = private unnamed_addr constant [7 x i8] c"struct\00"
@.str442 = private unnamed_addr constant [7 x i8] c"struct\00"
@.str443 = private unnamed_addr constant [8 x i8] c"derive(\00"
@.str444 = private unnamed_addr constant [8 x i8] c"Default\00"
@.str445 = private unnamed_addr constant [9 x i8] c"_default\00"
@.str446 = private unnamed_addr constant [3 x i8] c"fn\00"
@.str447 = private unnamed_addr constant [6 x i8] c"Clone\00"
@.str448 = private unnamed_addr constant [7 x i8] c"_clone\00"
@.str449 = private unnamed_addr constant [3 x i8] c"fn\00"
@.str450 = private unnamed_addr constant [10 x i8] c"PartialEq\00"
@.str451 = private unnamed_addr constant [4 x i8] c"_eq\00"
@.str452 = private unnamed_addr constant [3 x i8] c"fn\00"
@.str453 = private unnamed_addr constant [6 x i8] c"Debug\00"
@.str454 = private unnamed_addr constant [11 x i8] c"_debug_str\00"
@.str455 = private unnamed_addr constant [3 x i8] c"fn\00"
@.str456 = private unnamed_addr constant [8 x i8] c"Display\00"
@.str457 = private unnamed_addr constant [11 x i8] c"_to_string\00"
@.str458 = private unnamed_addr constant [3 x i8] c"fn\00"
@.str459 = private unnamed_addr constant [9 x i8] c"enum_def\00"
@.str460 = private unnamed_addr constant [5 x i8] c"enum\00"
@.str461 = private unnamed_addr constant [7 x i8] c"import\00"
@.str462 = private unnamed_addr constant [7 x i8] c"import\00"
@.str463 = private unnamed_addr constant [10 x i8] c"extern_fn\00"
@.str464 = private unnamed_addr constant [3 x i8] c"fn\00"
@.str465 = private unnamed_addr constant [12 x i8] c"module_decl\00"
@.str466 = private unnamed_addr constant [7 x i8] c"module\00"
@.str467 = private unnamed_addr constant [14 x i8] c"import_module\00"
@.str468 = private unnamed_addr constant [1 x i8] c"\00"
@.str469 = private unnamed_addr constant [7 x i8] c"module\00"
@.str470 = private unnamed_addr constant [5 x i8] c"impl\00"
@.str471 = private unnamed_addr constant [2 x i8] c"_\00"
@.str472 = private unnamed_addr constant [3 x i8] c"fn\00"
@.str473 = private unnamed_addr constant [1 x i8] c"\00"
@.str474 = private unnamed_addr constant [5 x i8] c"void\00"
@.str475 = private unnamed_addr constant [10 x i8] c"trait_def\00"
@.str476 = private unnamed_addr constant [6 x i8] c"trait\00"
@.str477 = private unnamed_addr constant [15 x i8] c"__assoc_type__\00"
@.str478 = private unnamed_addr constant [11 x i8] c"impl_trait\00"
@.str479 = private unnamed_addr constant [2 x i8] c"_\00"
@.str480 = private unnamed_addr constant [3 x i8] c"fn\00"
@.str481 = private unnamed_addr constant [1 x i8] c"\00"
@.str482 = private unnamed_addr constant [5 x i8] c"void\00"
@.str483 = private unnamed_addr constant [1 x i8] c"\00"
@.str484 = private unnamed_addr constant [2 x i8] c"'\00"
@.str485 = private unnamed_addr constant [3 x i8] c"' \00"
@.str486 = private unnamed_addr constant [13 x i8] c"no declarado\00"
@.str487 = private unnamed_addr constant [13 x i8] c"not declared\00"
@.str488 = private unnamed_addr constant [8 x i8] c"AND_AND\00"
@.str489 = private unnamed_addr constant [6 x i8] c"OR_OR\00"
@.str490 = private unnamed_addr constant [4 x i8] c"AND\00"
@.str491 = private unnamed_addr constant [3 x i8] c"OR\00"
@.str492 = private unnamed_addr constant [7 x i8] c"TyBool\00"
@.str493 = private unnamed_addr constant [24 x i8] c"operando izquierdo de '\00"
@.str494 = private unnamed_addr constant [28 x i8] c"' debe ser bool, se obtuvo \00"
@.str495 = private unnamed_addr constant [18 x i8] c"left operand of '\00"
@.str496 = private unnamed_addr constant [21 x i8] c"' must be bool, got \00"
@.str497 = private unnamed_addr constant [7 x i8] c"TyBool\00"
@.str498 = private unnamed_addr constant [22 x i8] c"operando derecho de '\00"
@.str499 = private unnamed_addr constant [28 x i8] c"' debe ser bool, se obtuvo \00"
@.str500 = private unnamed_addr constant [19 x i8] c"right operand of '\00"
@.str501 = private unnamed_addr constant [21 x i8] c"' must be bool, got \00"
@.str502 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str503 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str504 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str505 = private unnamed_addr constant [6 x i8] c"SLASH\00"
@.str506 = private unnamed_addr constant [8 x i8] c"PERCENT\00"
@.str507 = private unnamed_addr constant [1 x i8] c"\00"
@.str508 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str509 = private unnamed_addr constant [4 x i8] c"Add\00"
@.str510 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str511 = private unnamed_addr constant [4 x i8] c"Sub\00"
@.str512 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str513 = private unnamed_addr constant [4 x i8] c"Mul\00"
@.str514 = private unnamed_addr constant [6 x i8] c"SLASH\00"
@.str515 = private unnamed_addr constant [4 x i8] c"Div\00"
@.str516 = private unnamed_addr constant [8 x i8] c"PERCENT\00"
@.str517 = private unnamed_addr constant [4 x i8] c"Rem\00"
@.str518 = private unnamed_addr constant [9 x i8] c"TyStruct\00"
@.str519 = private unnamed_addr constant [7 x i8] c"TyEnum\00"
@.str520 = private unnamed_addr constant [27 x i8] c"el operando izquierdo de '\00"
@.str521 = private unnamed_addr constant [21 x i8] c"' debe implementar '\00"
@.str522 = private unnamed_addr constant [10 x i8] c"', pero '\00"
@.str523 = private unnamed_addr constant [13 x i8] c"' no lo hace\00"
@.str524 = private unnamed_addr constant [18 x i8] c"left operand of '\00"
@.str525 = private unnamed_addr constant [19 x i8] c"' must implement '\00"
@.str526 = private unnamed_addr constant [9 x i8] c"', but '\00"
@.str527 = private unnamed_addr constant [11 x i8] c"' does not\00"
@.str528 = private unnamed_addr constant [9 x i8] c"TyStruct\00"
@.str529 = private unnamed_addr constant [7 x i8] c"TyEnum\00"
@.str530 = private unnamed_addr constant [25 x i8] c"el operando derecho de '\00"
@.str531 = private unnamed_addr constant [21 x i8] c"' debe implementar '\00"
@.str532 = private unnamed_addr constant [10 x i8] c"', pero '\00"
@.str533 = private unnamed_addr constant [13 x i8] c"' no lo hace\00"
@.str534 = private unnamed_addr constant [19 x i8] c"right operand of '\00"
@.str535 = private unnamed_addr constant [19 x i8] c"' must implement '\00"
@.str536 = private unnamed_addr constant [9 x i8] c"', but '\00"
@.str537 = private unnamed_addr constant [11 x i8] c"' does not\00"
@.str538 = private unnamed_addr constant [5 x i8] c"PIPE\00"
@.str539 = private unnamed_addr constant [4 x i8] c"AMP\00"
@.str540 = private unnamed_addr constant [6 x i8] c"CARET\00"
@.str541 = private unnamed_addr constant [11 x i8] c"SHIFT_LEFT\00"
@.str542 = private unnamed_addr constant [12 x i8] c"SHIFT_RIGHT\00"
@.str543 = private unnamed_addr constant [24 x i8] c"operando izquierdo de '\00"
@.str544 = private unnamed_addr constant [30 x i8] c"' debe ser entero, se obtuvo \00"
@.str545 = private unnamed_addr constant [18 x i8] c"left operand of '\00"
@.str546 = private unnamed_addr constant [27 x i8] c"' must be an integer, got \00"
@.str547 = private unnamed_addr constant [22 x i8] c"operando derecho de '\00"
@.str548 = private unnamed_addr constant [30 x i8] c"' debe ser entero, se obtuvo \00"
@.str549 = private unnamed_addr constant [19 x i8] c"right operand of '\00"
@.str550 = private unnamed_addr constant [27 x i8] c"' must be an integer, got \00"
@.str551 = private unnamed_addr constant [8 x i8] c"AND_AND\00"
@.str552 = private unnamed_addr constant [3 x i8] c"&&\00"
@.str553 = private unnamed_addr constant [6 x i8] c"OR_OR\00"
@.str554 = private unnamed_addr constant [3 x i8] c"||\00"
@.str555 = private unnamed_addr constant [4 x i8] c"AND\00"
@.str556 = private unnamed_addr constant [4 x i8] c"and\00"
@.str557 = private unnamed_addr constant [3 x i8] c"OR\00"
@.str558 = private unnamed_addr constant [3 x i8] c"or\00"
@.str559 = private unnamed_addr constant [5 x i8] c"PIPE\00"
@.str560 = private unnamed_addr constant [2 x i8] c"|\00"
@.str561 = private unnamed_addr constant [4 x i8] c"AMP\00"
@.str562 = private unnamed_addr constant [2 x i8] c"&\00"
@.str563 = private unnamed_addr constant [6 x i8] c"CARET\00"
@.str564 = private unnamed_addr constant [2 x i8] c"^\00"
@.str565 = private unnamed_addr constant [11 x i8] c"SHIFT_LEFT\00"
@.str566 = private unnamed_addr constant [3 x i8] c"<<\00"
@.str567 = private unnamed_addr constant [12 x i8] c"SHIFT_RIGHT\00"
@.str568 = private unnamed_addr constant [3 x i8] c">>\00"
@.str569 = private unnamed_addr constant [4 x i8] c"NOT\00"
@.str570 = private unnamed_addr constant [2 x i8] c"!\00"
@.str571 = private unnamed_addr constant [6 x i8] c"TILDE\00"
@.str572 = private unnamed_addr constant [2 x i8] c"~\00"
@.str573 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str574 = private unnamed_addr constant [2 x i8] c"-\00"
@.str575 = private unnamed_addr constant [5 x i8] c"PLUS\00"
@.str576 = private unnamed_addr constant [2 x i8] c"+\00"
@.str577 = private unnamed_addr constant [5 x i8] c"STAR\00"
@.str578 = private unnamed_addr constant [2 x i8] c"*\00"
@.str579 = private unnamed_addr constant [6 x i8] c"SLASH\00"
@.str580 = private unnamed_addr constant [2 x i8] c"/\00"
@.str581 = private unnamed_addr constant [8 x i8] c"PERCENT\00"
@.str582 = private unnamed_addr constant [2 x i8] c"%\00"
@.str583 = private unnamed_addr constant [6 x i8] c"POWER\00"
@.str584 = private unnamed_addr constant [3 x i8] c"**\00"
@.str585 = private unnamed_addr constant [9 x i8] c"TyStruct\00"
@.str586 = private unnamed_addr constant [7 x i8] c"TyEnum\00"
@.str587 = private unnamed_addr constant [1 x i8] c"\00"
@.str588 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str589 = private unnamed_addr constant [4 x i8] c"Neg\00"
@.str590 = private unnamed_addr constant [4 x i8] c"NOT\00"
@.str591 = private unnamed_addr constant [4 x i8] c"Not\00"
@.str592 = private unnamed_addr constant [6 x i8] c"TILDE\00"
@.str593 = private unnamed_addr constant [7 x i8] c"BitNot\00"
@.str594 = private unnamed_addr constant [1 x i8] c"\00"
@.str595 = private unnamed_addr constant [17 x i8] c"el operando de '\00"
@.str596 = private unnamed_addr constant [21 x i8] c"' debe implementar '\00"
@.str597 = private unnamed_addr constant [10 x i8] c"', pero '\00"
@.str598 = private unnamed_addr constant [13 x i8] c"' no lo hace\00"
@.str599 = private unnamed_addr constant [13 x i8] c"operand of '\00"
@.str600 = private unnamed_addr constant [19 x i8] c"' must implement '\00"
@.str601 = private unnamed_addr constant [9 x i8] c"', but '\00"
@.str602 = private unnamed_addr constant [11 x i8] c"' does not\00"
@.str603 = private unnamed_addr constant [4 x i8] c"NOT\00"
@.str604 = private unnamed_addr constant [7 x i8] c"TyBool\00"
@.str605 = private unnamed_addr constant [42 x i8] c"operando de '!' debe ser bool, se obtuvo \00"
@.str606 = private unnamed_addr constant [34 x i8] c"operand of '!' must be bool, got \00"
@.str607 = private unnamed_addr constant [6 x i8] c"TILDE\00"
@.str608 = private unnamed_addr constant [44 x i8] c"operando de '~' debe ser entero, se obtuvo \00"
@.str609 = private unnamed_addr constant [40 x i8] c"operand of '~' must be an integer, got \00"
@.str610 = private unnamed_addr constant [6 x i8] c"MINUS\00"
@.str611 = private unnamed_addr constant [55 x i8] c"operando de '-' (unario) debe ser numerico, se obtuvo \00"
@.str612 = private unnamed_addr constant [43 x i8] c"operand of unary '-' must be numeric, got \00"
@.str613 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str614 = private unnamed_addr constant [4 x i8] c"let\00"
@.str615 = private unnamed_addr constant [4 x i8] c"var\00"
@.str616 = private unnamed_addr constant [6 x i8] c"param\00"
@.str617 = private unnamed_addr constant [8 x i8] c"for_var\00"
@.str618 = private unnamed_addr constant [5 x i8] c"TyFn\00"
@.str619 = private unnamed_addr constant [10 x i8] c"TyGeneric\00"
@.str620 = private unnamed_addr constant [6 x i8] c"TyPtr\00"
@.str621 = private unnamed_addr constant [9 x i8] c"TyStruct\00"
@.str622 = private unnamed_addr constant [3 x i8] c"Fn\00"
@.str623 = private unnamed_addr constant [2 x i8] c"'\00"
@.str624 = private unnamed_addr constant [29 x i8] c"' no es una función (tipo: \00"
@.str625 = private unnamed_addr constant [2 x i8] c")\00"
@.str626 = private unnamed_addr constant [2 x i8] c"'\00"
@.str627 = private unnamed_addr constant [26 x i8] c"' is not callable (type: \00"
@.str628 = private unnamed_addr constant [2 x i8] c")\00"
@.str629 = private unnamed_addr constant [2 x i8] c"'\00"
@.str630 = private unnamed_addr constant [3 x i8] c"' \00"
@.str631 = private unnamed_addr constant [8 x i8] c"espera \00"
@.str632 = private unnamed_addr constant [23 x i8] c" argumentos, recibió \00"
@.str633 = private unnamed_addr constant [9 x i8] c"expects \00"
@.str634 = private unnamed_addr constant [17 x i8] c" arguments, got \00"
@.str635 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str636 = private unnamed_addr constant [11 x i8] c"argumento \00"
@.str637 = private unnamed_addr constant [6 x i8] c" de '\00"
@.str638 = private unnamed_addr constant [16 x i8] c"': se esperaba \00"
@.str639 = private unnamed_addr constant [13 x i8] c", se obtuvo \00"
@.str640 = private unnamed_addr constant [10 x i8] c"argument \00"
@.str641 = private unnamed_addr constant [6 x i8] c" of '\00"
@.str642 = private unnamed_addr constant [13 x i8] c"': expected \00"
@.str643 = private unnamed_addr constant [7 x i8] c", got \00"
@.str644 = private unnamed_addr constant [6 x i8] c"(arg \00"
@.str645 = private unnamed_addr constant [2 x i8] c")\00"
@.str646 = private unnamed_addr constant [1 x i8] c"\00"
@.str647 = private unnamed_addr constant [23 x i8] c"tipo incompatible en '\00"
@.str648 = private unnamed_addr constant [16 x i8] c"': se esperaba \00"
@.str649 = private unnamed_addr constant [13 x i8] c", se obtuvo \00"
@.str650 = private unnamed_addr constant [19 x i8] c"type mismatch in '\00"
@.str651 = private unnamed_addr constant [13 x i8] c"': expected \00"
@.str652 = private unnamed_addr constant [7 x i8] c", got \00"
@.str653 = private unnamed_addr constant [4 x i8] c"var\00"
@.str654 = private unnamed_addr constant [4 x i8] c"let\00"
@.str655 = private unnamed_addr constant [2 x i8] c"'\00"
@.str656 = private unnamed_addr constant [3 x i8] c"' \00"
@.str657 = private unnamed_addr constant [27 x i8] c"ya declarada en este scope\00"
@.str658 = private unnamed_addr constant [31 x i8] c"already declared in this scope\00"
@.str659 = private unnamed_addr constant [6 x i8] c"const\00"
@.str660 = private unnamed_addr constant [1 x i8] c"\00"
@.str661 = private unnamed_addr constant [9 x i8] c"variable\00"
@.str662 = private unnamed_addr constant [9 x i8] c"variable\00"
@.str663 = private unnamed_addr constant [3 x i8] c" '\00"
@.str664 = private unnamed_addr constant [3 x i8] c"' \00"
@.str665 = private unnamed_addr constant [13 x i8] c"no declarada\00"
@.str666 = private unnamed_addr constant [13 x i8] c"not declared\00"
@.str667 = private unnamed_addr constant [4 x i8] c"let\00"
@.str668 = private unnamed_addr constant [2 x i8] c"'\00"
@.str669 = private unnamed_addr constant [3 x i8] c"' \00"
@.str670 = private unnamed_addr constant [33 x i8] c"es inmutable (declarada con let)\00"
@.str671 = private unnamed_addr constant [33 x i8] c"is immutable (declared with let)\00"
@.str672 = private unnamed_addr constant [6 x i8] c"const\00"
@.str673 = private unnamed_addr constant [2 x i8] c"'\00"
@.str674 = private unnamed_addr constant [3 x i8] c"' \00"
@.str675 = private unnamed_addr constant [35 x i8] c"es constante (declarada con const)\00"
@.str676 = private unnamed_addr constant [34 x i8] c"is constant (declared with const)\00"
@.str677 = private unnamed_addr constant [6 x i8] c"block\00"
@.str678 = private unnamed_addr constant [7 x i8] c"return\00"
@.str679 = private unnamed_addr constant [3 x i8] c"if\00"
@.str680 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str681 = private unnamed_addr constant [6 x i8] c"match\00"
@.str682 = private unnamed_addr constant [7 x i8] c"return\00"
@.str683 = private unnamed_addr constant [9 x i8] c"function\00"
@.str684 = private unnamed_addr constant [9 x i8] c"async_fn\00"
@.str685 = private unnamed_addr constant [7 x i8] c"return\00"
@.str686 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str687 = private unnamed_addr constant [6 x i8] c"block\00"
@.str688 = private unnamed_addr constant [3 x i8] c"if\00"
@.str689 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str690 = private unnamed_addr constant [6 x i8] c"while\00"
@.str691 = private unnamed_addr constant [4 x i8] c"for\00"
@.str692 = private unnamed_addr constant [6 x i8] c"match\00"
@.str693 = private unnamed_addr constant [10 x i8] c"match_arm\00"
@.str694 = private unnamed_addr constant [10 x i8] c"try_catch\00"
@.str695 = private unnamed_addr constant [13 x i8] c"unsafe_block\00"
@.str696 = private unnamed_addr constant [6 x i8] c"defer\00"
@.str697 = private unnamed_addr constant [10 x i8] c"test_decl\00"
@.str698 = private unnamed_addr constant [44 x i8] c"no se puede inferir el tipo de retorno de '\00"
@.str699 = private unnamed_addr constant [26 x i8] c"': retornos en conflicto \00"
@.str700 = private unnamed_addr constant [4 x i8] c" y \00"
@.str701 = private unnamed_addr constant [30 x i8] c"cannot infer return type of '\00"
@.str702 = private unnamed_addr constant [24 x i8] c"': conflicting returns \00"
@.str703 = private unnamed_addr constant [6 x i8] c" and \00"
@.str704 = private unnamed_addr constant [1 x i8] c"\00"
@.str705 = private unnamed_addr constant [5 x i8] c"void\00"
@.str706 = private unnamed_addr constant [6 x i8] c"param\00"
@.str707 = private unnamed_addr constant [1 x i8] c"\00"
@.str708 = private unnamed_addr constant [4 x i8] c"...\00"
@.str709 = private unnamed_addr constant [1 x i8] c"\00"
@.str710 = private unnamed_addr constant [5 x i8] c"void\00"
@.str711 = private unnamed_addr constant [11 x i8] c"función '\00"
@.str712 = private unnamed_addr constant [20 x i8] c"' declara retorno '\00"
@.str713 = private unnamed_addr constant [46 x i8] c"' pero no todos los caminos retornan un valor\00"
@.str714 = private unnamed_addr constant [11 x i8] c"function '\00"
@.str715 = private unnamed_addr constant [25 x i8] c"' declares return type '\00"
@.str716 = private unnamed_addr constant [35 x i8] c"' but not all paths return a value\00"
@.str717 = private unnamed_addr constant [1 x i8] c"\00"
@.str718 = private unnamed_addr constant [1 x i8] c"\00"
@.str719 = private unnamed_addr constant [11 x i8] c"función '\00"
@.str720 = private unnamed_addr constant [20 x i8] c"' infiere retorno '\00"
@.str721 = private unnamed_addr constant [46 x i8] c"' pero no todos los caminos retornan un valor\00"
@.str722 = private unnamed_addr constant [11 x i8] c"function '\00"
@.str723 = private unnamed_addr constant [23 x i8] c"' infers return type '\00"
@.str724 = private unnamed_addr constant [35 x i8] c"' but not all paths return a value\00"
@.str725 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str726 = private unnamed_addr constant [8 x i8] c"for_var\00"
@.str727 = private unnamed_addr constant [8 x i8] c"TyArray\00"
@.str728 = private unnamed_addr constant [6 x i8] c"TyMap\00"
@.str729 = private unnamed_addr constant [9 x i8] c"TyString\00"
@.str730 = private unnamed_addr constant [27 x i8] c"'return' fuera de función\00"
@.str731 = private unnamed_addr constant [29 x i8] c"'return' outside of function\00"
@.str732 = private unnamed_addr constant [34 x i8] c"tipo de retorno incompatible en '\00"
@.str733 = private unnamed_addr constant [16 x i8] c"': se esperaba \00"
@.str734 = private unnamed_addr constant [13 x i8] c", se obtuvo \00"
@.str735 = private unnamed_addr constant [26 x i8] c"return type mismatch in '\00"
@.str736 = private unnamed_addr constant [13 x i8] c"': expected \00"
@.str737 = private unnamed_addr constant [7 x i8] c", got \00"
@.str738 = private unnamed_addr constant [9 x i8] c"(return)\00"
@.str739 = private unnamed_addr constant [22 x i8] c"'break' fuera de loop\00"
@.str740 = private unnamed_addr constant [24 x i8] c"'break' outside of loop\00"
@.str741 = private unnamed_addr constant [25 x i8] c"'continue' fuera de loop\00"
@.str742 = private unnamed_addr constant [27 x i8] c"'continue' outside of loop\00"
@.str743 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str744 = private unnamed_addr constant [5 x i8] c"std/\00"
@.str745 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str746 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str747 = private unnamed_addr constant [5 x i8] c"pub \00"
@.str748 = private unnamed_addr constant [8 x i8] c"struct \00"
@.str749 = private unnamed_addr constant [1 x i8] c"\00"
@.str750 = private unnamed_addr constant [3 x i8] c"//\00"
@.str751 = private unnamed_addr constant [2 x i8] c":\00"
@.str752 = private unnamed_addr constant [1 x i8] c"\00"
@.str753 = private unnamed_addr constant [3 x i8] c"//\00"
@.str754 = private unnamed_addr constant [6 x i8] c"enum \00"
@.str755 = private unnamed_addr constant [1 x i8] c"\00"
@.str756 = private unnamed_addr constant [3 x i8] c"//\00"
@.str757 = private unnamed_addr constant [1 x i8] c"\00"
@.str758 = private unnamed_addr constant [6 x i8] c"impl \00"
@.str759 = private unnamed_addr constant [6 x i8] c" for \00"
@.str760 = private unnamed_addr constant [1 x i8] c"\00"
@.str761 = private unnamed_addr constant [1 x i8] c"\00"
@.str762 = private unnamed_addr constant [6 x i8] c"type \00"
@.str763 = private unnamed_addr constant [1 x i8] c"\00"
@.str764 = private unnamed_addr constant [2 x i8] c"=\00"
@.str765 = private unnamed_addr constant [3 x i8] c"//\00"
@.str766 = private unnamed_addr constant [1 x i8] c"\00"
@.str767 = private unnamed_addr constant [7 x i8] c"length\00"
@.str768 = private unnamed_addr constant [5 x i8] c"push\00"
@.str769 = private unnamed_addr constant [4 x i8] c"pop\00"
@.str770 = private unnamed_addr constant [8 x i8] c"unshift\00"
@.str771 = private unnamed_addr constant [6 x i8] c"shift\00"
@.str772 = private unnamed_addr constant [7 x i8] c"insert\00"
@.str773 = private unnamed_addr constant [7 x i8] c"remove\00"
@.str774 = private unnamed_addr constant [6 x i8] c"slice\00"
@.str775 = private unnamed_addr constant [8 x i8] c"reverse\00"
@.str776 = private unnamed_addr constant [8 x i8] c"indexOf\00"
@.str777 = private unnamed_addr constant [5 x i8] c"join\00"
@.str778 = private unnamed_addr constant [5 x i8] c"iter\00"
@.str779 = private unnamed_addr constant [12 x i8] c"byte_length\00"
@.str780 = private unnamed_addr constant [9 x i8] c"contains\00"
@.str781 = private unnamed_addr constant [6 x i8] c"split\00"
@.str782 = private unnamed_addr constant [7 x i8] c"charAt\00"
@.str783 = private unnamed_addr constant [10 x i8] c"substring\00"
@.str784 = private unnamed_addr constant [5 x i8] c"trim\00"
@.str785 = private unnamed_addr constant [8 x i8] c"toUpper\00"
@.str786 = private unnamed_addr constant [8 x i8] c"toLower\00"
@.str787 = private unnamed_addr constant [9 x i8] c"to_upper\00"
@.str788 = private unnamed_addr constant [9 x i8] c"to_lower\00"
@.str789 = private unnamed_addr constant [8 x i8] c"replace\00"
@.str790 = private unnamed_addr constant [7 x i8] c"repeat\00"
@.str791 = private unnamed_addr constant [11 x i8] c"startsWith\00"
@.str792 = private unnamed_addr constant [9 x i8] c"endsWith\00"
@.str793 = private unnamed_addr constant [12 x i8] c"starts_with\00"
@.str794 = private unnamed_addr constant [10 x i8] c"ends_with\00"
@.str795 = private unnamed_addr constant [4 x i8] c"get\00"
@.str796 = private unnamed_addr constant [4 x i8] c"put\00"
@.str797 = private unnamed_addr constant [4 x i8] c"has\00"
@.str798 = private unnamed_addr constant [5 x i8] c"keys\00"
@.str799 = private unnamed_addr constant [7 x i8] c"values\00"
@.str800 = private unnamed_addr constant [5 x i8] c"size\00"
@.str801 = private unnamed_addr constant [6 x i8] c"clear\00"
@.str802 = private unnamed_addr constant [8 x i8] c"entries\00"
@.str803 = private unnamed_addr constant [7 x i8] c"delete\00"
@.str804 = private unnamed_addr constant [7 x i8] c"append\00"
@.str805 = private unnamed_addr constant [11 x i8] c"append_int\00"
@.str806 = private unnamed_addr constant [10 x i8] c"to_string\00"
@.str807 = private unnamed_addr constant [5 x i8] c"next\00"
@.str808 = private unnamed_addr constant [4 x i8] c"map\00"
@.str809 = private unnamed_addr constant [7 x i8] c"filter\00"
@.str810 = private unnamed_addr constant [5 x i8] c"take\00"
@.str811 = private unnamed_addr constant [5 x i8] c"skip\00"
@.str812 = private unnamed_addr constant [10 x i8] c"enumerate\00"
@.str813 = private unnamed_addr constant [6 x i8] c"chain\00"
@.str814 = private unnamed_addr constant [8 x i8] c"collect\00"
@.str815 = private unnamed_addr constant [5 x i8] c"fold\00"
@.str816 = private unnamed_addr constant [4 x i8] c"sum\00"
@.str817 = private unnamed_addr constant [6 x i8] c"count\00"
@.str818 = private unnamed_addr constant [4 x i8] c"any\00"
@.str819 = private unnamed_addr constant [4 x i8] c"all\00"
@.str820 = private unnamed_addr constant [6 x i8] c"is_ok\00"
@.str821 = private unnamed_addr constant [8 x i8] c"is_some\00"
@.str822 = private unnamed_addr constant [7 x i8] c"is_err\00"
@.str823 = private unnamed_addr constant [8 x i8] c"is_none\00"
@.str824 = private unnamed_addr constant [7 x i8] c"unwrap\00"
@.str825 = private unnamed_addr constant [10 x i8] c"unwrap_or\00"
@.str826 = private unnamed_addr constant [11 x i8] c"unwrap_err\00"
@.str827 = private unnamed_addr constant [8 x i8] c"map_err\00"
@.str828 = private unnamed_addr constant [9 x i8] c"and_then\00"
@.str829 = private unnamed_addr constant [6 x i8] c"clone\00"
@.str830 = private unnamed_addr constant [3 x i8] c"eq\00"
@.str831 = private unnamed_addr constant [10 x i8] c"debug_str\00"
@.str832 = private unnamed_addr constant [2 x i8] c"_\00"
@.str833 = private unnamed_addr constant [1 x i8] c"\00"
@.str834 = private unnamed_addr constant [1 x i8] c"\00"
@.str835 = private unnamed_addr constant [1 x i8] c"\00"
@.str836 = private unnamed_addr constant [1 x i8] c"\00"
@.str837 = private unnamed_addr constant [21 x i8] c" (¿quisiste decir '\00"
@.str838 = private unnamed_addr constant [4 x i8] c"'?)\00"
@.str839 = private unnamed_addr constant [17 x i8] c" (did you mean '\00"
@.str840 = private unnamed_addr constant [4 x i8] c"'?)\00"
@.str841 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str842 = private unnamed_addr constant [4 x i8] c"var\00"
@.str843 = private unnamed_addr constant [4 x i8] c"let\00"
@.str844 = private unnamed_addr constant [6 x i8] c"param\00"
@.str845 = private unnamed_addr constant [8 x i8] c"for_var\00"
@.str846 = private unnamed_addr constant [10 x i8] c"método '\00"
@.str847 = private unnamed_addr constant [26 x i8] c"' no reconocido (¿typo?)\00"
@.str848 = private unnamed_addr constant [9 x i8] c"method '\00"
@.str849 = private unnamed_addr constant [25 x i8] c"' not recognized (typo?)\00"
@.str850 = private unnamed_addr constant [9 x i8] c"TyStruct\00"
@.str851 = private unnamed_addr constant [7 x i8] c"TyEnum\00"
@.str852 = private unnamed_addr constant [9 x i8] c"TyString\00"
@.str853 = private unnamed_addr constant [9 x i8] c"contains\00"
@.str854 = private unnamed_addr constant [7 x i8] c"String\00"
@.str855 = private unnamed_addr constant [11 x i8] c"startsWith\00"
@.str856 = private unnamed_addr constant [7 x i8] c"String\00"
@.str857 = private unnamed_addr constant [9 x i8] c"endsWith\00"
@.str858 = private unnamed_addr constant [7 x i8] c"String\00"
@.str859 = private unnamed_addr constant [12 x i8] c"starts_with\00"
@.str860 = private unnamed_addr constant [7 x i8] c"String\00"
@.str861 = private unnamed_addr constant [10 x i8] c"ends_with\00"
@.str862 = private unnamed_addr constant [7 x i8] c"String\00"
@.str863 = private unnamed_addr constant [8 x i8] c"indexOf\00"
@.str864 = private unnamed_addr constant [7 x i8] c"String\00"
@.str865 = private unnamed_addr constant [6 x i8] c"split\00"
@.str866 = private unnamed_addr constant [7 x i8] c"String\00"
@.str867 = private unnamed_addr constant [7 x i8] c"repeat\00"
@.str868 = private unnamed_addr constant [4 x i8] c"int\00"
@.str869 = private unnamed_addr constant [7 x i8] c"charAt\00"
@.str870 = private unnamed_addr constant [4 x i8] c"int\00"
@.str871 = private unnamed_addr constant [10 x i8] c"substring\00"
@.str872 = private unnamed_addr constant [4 x i8] c"int\00"
@.str873 = private unnamed_addr constant [4 x i8] c"int\00"
@.str874 = private unnamed_addr constant [8 x i8] c"replace\00"
@.str875 = private unnamed_addr constant [7 x i8] c"String\00"
@.str876 = private unnamed_addr constant [7 x i8] c"String\00"
@.str877 = private unnamed_addr constant [8 x i8] c"TyArray\00"
@.str878 = private unnamed_addr constant [5 x i8] c"push\00"
@.str879 = private unnamed_addr constant [9 x i8] c"contains\00"
@.str880 = private unnamed_addr constant [8 x i8] c"indexOf\00"
@.str881 = private unnamed_addr constant [7 x i8] c"insert\00"
@.str882 = private unnamed_addr constant [4 x i8] c"int\00"
@.str883 = private unnamed_addr constant [7 x i8] c"remove\00"
@.str884 = private unnamed_addr constant [4 x i8] c"int\00"
@.str885 = private unnamed_addr constant [6 x i8] c"slice\00"
@.str886 = private unnamed_addr constant [4 x i8] c"int\00"
@.str887 = private unnamed_addr constant [4 x i8] c"int\00"
@.str888 = private unnamed_addr constant [5 x i8] c"join\00"
@.str889 = private unnamed_addr constant [7 x i8] c"String\00"
@.str890 = private unnamed_addr constant [6 x i8] c"TyMap\00"
@.str891 = private unnamed_addr constant [4 x i8] c"get\00"
@.str892 = private unnamed_addr constant [4 x i8] c"has\00"
@.str893 = private unnamed_addr constant [7 x i8] c"delete\00"
@.str894 = private unnamed_addr constant [4 x i8] c"put\00"
@.str895 = private unnamed_addr constant [9 x i8] c"TyOption\00"
@.str896 = private unnamed_addr constant [10 x i8] c"unwrap_or\00"
@.str897 = private unnamed_addr constant [9 x i8] c"TyResult\00"
@.str898 = private unnamed_addr constant [10 x i8] c"unwrap_or\00"
@.str899 = private unnamed_addr constant [11 x i8] c"argumento \00"
@.str900 = private unnamed_addr constant [6 x i8] c" de '\00"
@.str901 = private unnamed_addr constant [16 x i8] c"': se esperaba \00"
@.str902 = private unnamed_addr constant [13 x i8] c", se obtuvo \00"
@.str903 = private unnamed_addr constant [10 x i8] c"argument \00"
@.str904 = private unnamed_addr constant [6 x i8] c" of '\00"
@.str905 = private unnamed_addr constant [13 x i8] c"': expected \00"
@.str906 = private unnamed_addr constant [7 x i8] c", got \00"
@.str907 = private unnamed_addr constant [11 x i8] c"argumento \00"
@.str908 = private unnamed_addr constant [6 x i8] c" de '\00"
@.str909 = private unnamed_addr constant [2 x i8] c".\00"
@.str910 = private unnamed_addr constant [16 x i8] c"': se esperaba \00"
@.str911 = private unnamed_addr constant [13 x i8] c", se obtuvo \00"
@.str912 = private unnamed_addr constant [10 x i8] c"argument \00"
@.str913 = private unnamed_addr constant [6 x i8] c" of '\00"
@.str914 = private unnamed_addr constant [2 x i8] c".\00"
@.str915 = private unnamed_addr constant [13 x i8] c"': expected \00"
@.str916 = private unnamed_addr constant [7 x i8] c", got \00"
@.str917 = private unnamed_addr constant [10 x i8] c"TyGeneric\00"
@.str918 = private unnamed_addr constant [11 x i8] c"argumento \00"
@.str919 = private unnamed_addr constant [6 x i8] c" de '\00"
@.str920 = private unnamed_addr constant [2 x i8] c".\00"
@.str921 = private unnamed_addr constant [16 x i8] c"': se esperaba \00"
@.str922 = private unnamed_addr constant [13 x i8] c", se obtuvo \00"
@.str923 = private unnamed_addr constant [10 x i8] c"argument \00"
@.str924 = private unnamed_addr constant [6 x i8] c" of '\00"
@.str925 = private unnamed_addr constant [2 x i8] c".\00"
@.str926 = private unnamed_addr constant [13 x i8] c"': expected \00"
@.str927 = private unnamed_addr constant [7 x i8] c", got \00"
@.str928 = private unnamed_addr constant [8 x i8] c"campo '\00"
@.str929 = private unnamed_addr constant [24 x i8] c"' no existe en struct '\00"
@.str930 = private unnamed_addr constant [2 x i8] c"'\00"
@.str931 = private unnamed_addr constant [8 x i8] c"field '\00"
@.str932 = private unnamed_addr constant [29 x i8] c"' does not exist in struct '\00"
@.str933 = private unnamed_addr constant [2 x i8] c"'\00"
@.str934 = private unnamed_addr constant [29 x i8] c"tipo incompatible en campo '\00"
@.str935 = private unnamed_addr constant [2 x i8] c".\00"
@.str936 = private unnamed_addr constant [16 x i8] c"': se esperaba \00"
@.str937 = private unnamed_addr constant [13 x i8] c", se obtuvo \00"
@.str938 = private unnamed_addr constant [25 x i8] c"type mismatch in field '\00"
@.str939 = private unnamed_addr constant [2 x i8] c".\00"
@.str940 = private unnamed_addr constant [13 x i8] c"': expected \00"
@.str941 = private unnamed_addr constant [7 x i8] c", got \00"
@.str942 = private unnamed_addr constant [1 x i8] c"\00"
@.str943 = private unnamed_addr constant [9 x i8] c"wildcard\00"
@.str944 = private unnamed_addr constant [19 x i8] c"identifier_pattern\00"
@.str945 = private unnamed_addr constant [15 x i8] c"struct_pattern\00"
@.str946 = private unnamed_addr constant [21 x i8] c"nested_match_pattern\00"
@.str947 = private unnamed_addr constant [14 x i8] c"match_pattern\00"
@.str948 = private unnamed_addr constant [1 x i8] c"\00"
@.str949 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str950 = private unnamed_addr constant [11 x i8] c"or_pattern\00"
@.str951 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str952 = private unnamed_addr constant [14 x i8] c"match_pattern\00"
@.str953 = private unnamed_addr constant [1 x i8] c"\00"
@.str954 = private unnamed_addr constant [1 x i8] c"\00"
@.str955 = private unnamed_addr constant [28 x i8] c"match no exhaustivo sobre '\00"
@.str956 = private unnamed_addr constant [4 x i8] c"': \00"
@.str957 = private unnamed_addr constant [26 x i8] c"non-exhaustive match on '\00"
@.str958 = private unnamed_addr constant [4 x i8] c"': \00"
@.str959 = private unnamed_addr constant [6 x i8] c"falta\00"
@.str960 = private unnamed_addr constant [8 x i8] c"missing\00"
@.str961 = private unnamed_addr constant [7 x i8] c"faltan\00"
@.str962 = private unnamed_addr constant [8 x i8] c"missing\00"
@.str963 = private unnamed_addr constant [2 x i8] c",\00"
@.str964 = private unnamed_addr constant [2 x i8] c" \00"
@.str965 = private unnamed_addr constant [2 x i8] c".\00"
@.str966 = private unnamed_addr constant [14 x i8] c"match_pattern\00"
@.str967 = private unnamed_addr constant [4 x i8] c"let\00"
@.str968 = private unnamed_addr constant [19 x i8] c"identifier_pattern\00"
@.str969 = private unnamed_addr constant [4 x i8] c"let\00"
@.str970 = private unnamed_addr constant [15 x i8] c"struct_pattern\00"
@.str971 = private unnamed_addr constant [4 x i8] c"let\00"
@.str972 = private unnamed_addr constant [21 x i8] c"nested_match_pattern\00"
@.str973 = private unnamed_addr constant [19 x i8] c"identifier_pattern\00"
@.str974 = private unnamed_addr constant [4 x i8] c"let\00"
@.str975 = private unnamed_addr constant [14 x i8] c"match_pattern\00"
@.str976 = private unnamed_addr constant [4 x i8] c"let\00"
@.str977 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str978 = private unnamed_addr constant [7 x i8] c"number\00"
@.str979 = private unnamed_addr constant [10 x i8] c"float_lit\00"
@.str980 = private unnamed_addr constant [7 x i8] c"string\00"
@.str981 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str982 = private unnamed_addr constant [5 x i8] c"char\00"
@.str983 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str984 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str985 = private unnamed_addr constant [6 x i8] c"error\00"
@.str986 = private unnamed_addr constant [9 x i8] c"wildcard\00"
@.str987 = private unnamed_addr constant [6 x i8] c"block\00"
@.str988 = private unnamed_addr constant [3 x i8] c"if\00"
@.str989 = private unnamed_addr constant [6 x i8] c"while\00"
@.str990 = private unnamed_addr constant [4 x i8] c"for\00"
@.str991 = private unnamed_addr constant [7 x i8] c"return\00"
@.str992 = private unnamed_addr constant [6 x i8] c"break\00"
@.str993 = private unnamed_addr constant [9 x i8] c"continue\00"
@.str994 = private unnamed_addr constant [4 x i8] c"let\00"
@.str995 = private unnamed_addr constant [6 x i8] c"const\00"
@.str996 = private unnamed_addr constant [9 x i8] c"function\00"
@.str997 = private unnamed_addr constant [9 x i8] c"async_fn\00"
@.str998 = private unnamed_addr constant [11 x i8] c"await_expr\00"
@.str999 = private unnamed_addr constant [7 x i8] c"struct\00"
@.str1000 = private unnamed_addr constant [9 x i8] c"enum_def\00"
@.str1001 = private unnamed_addr constant [5 x i8] c"impl\00"
@.str1002 = private unnamed_addr constant [10 x i8] c"trait_def\00"
@.str1003 = private unnamed_addr constant [11 x i8] c"impl_trait\00"
@.str1004 = private unnamed_addr constant [7 x i8] c"export\00"
@.str1005 = private unnamed_addr constant [7 x i8] c"import\00"
@.str1006 = private unnamed_addr constant [14 x i8] c"import_module\00"
@.str1007 = private unnamed_addr constant [12 x i8] c"module_decl\00"
@.str1008 = private unnamed_addr constant [11 x i8] c"type_alias\00"
@.str1009 = private unnamed_addr constant [10 x i8] c"extern_fn\00"
@.str1010 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str1011 = private unnamed_addr constant [5 x i8] c"unop\00"
@.str1012 = private unnamed_addr constant [5 x i8] c"call\00"
@.str1013 = private unnamed_addr constant [6 x i8] c"array\00"
@.str1014 = private unnamed_addr constant [6 x i8] c"index\00"
@.str1015 = private unnamed_addr constant [6 x i8] c"range\00"
@.str1016 = private unnamed_addr constant [7 x i8] c"assign\00"
@.str1017 = private unnamed_addr constant [16 x i8] c"compound_assign\00"
@.str1018 = private unnamed_addr constant [13 x i8] c"index_assign\00"
@.str1019 = private unnamed_addr constant [13 x i8] c"field_assign\00"
@.str1020 = private unnamed_addr constant [12 x i8] c"struct_init\00"
@.str1021 = private unnamed_addr constant [13 x i8] c"field_access\00"
@.str1022 = private unnamed_addr constant [12 x i8] c"method_call\00"
@.str1023 = private unnamed_addr constant [6 x i8] c"match\00"
@.str1024 = private unnamed_addr constant [10 x i8] c"match_arm\00"
@.str1025 = private unnamed_addr constant [14 x i8] c"match_pattern\00"
@.str1026 = private unnamed_addr constant [13 x i8] c"enum_variant\00"
@.str1027 = private unnamed_addr constant [7 x i8] c"try_op\00"
@.str1028 = private unnamed_addr constant [5 x i8] c"cast\00"
@.str1029 = private unnamed_addr constant [7 x i8] c"sizeof\00"
@.str1030 = private unnamed_addr constant [8 x i8] c"alignof\00"
@.str1031 = private unnamed_addr constant [13 x i8] c"unsafe_block\00"
@.str1032 = private unnamed_addr constant [8 x i8] c"addr_of\00"
@.str1033 = private unnamed_addr constant [6 x i8] c"deref\00"
@.str1034 = private unnamed_addr constant [13 x i8] c"deref_assign\00"
@.str1035 = private unnamed_addr constant [11 x i8] c"static_var\00"
@.str1036 = private unnamed_addr constant [4 x i8] c"var\00"
@.str1037 = private unnamed_addr constant [6 x i8] c"defer\00"
@.str1038 = private unnamed_addr constant [10 x i8] c"try_catch\00"
@.str1039 = private unnamed_addr constant [4 x i8] c"var\00"
@.str1040 = private unnamed_addr constant [6 x i8] c"throw\00"
@.str1041 = private unnamed_addr constant [11 x i8] c"inline_asm\00"
@.str1042 = private unnamed_addr constant [15 x i8] c"inline_asm_gcc\00"
@.str1043 = private unnamed_addr constant [13 x i8] c"generic_call\00"
@.str1044 = private unnamed_addr constant [10 x i8] c"tuple_lit\00"
@.str1045 = private unnamed_addr constant [12 x i8] c"tuple_index\00"
@.str1046 = private unnamed_addr constant [22 x i8] c"let_destructure_tuple\00"
@.str1047 = private unnamed_addr constant [4 x i8] c"let\00"
@.str1048 = private unnamed_addr constant [10 x i8] c"test_decl\00"
@.str1049 = private unnamed_addr constant [7 x i8] c"assert\00"
@.str1050 = private unnamed_addr constant [12 x i8] c"NYX_VERBOSE\00"
@.str1051 = private unnamed_addr constant [2 x i8] c"1\00"
@.str1052 = private unnamed_addr constant [7 x i8] c"  → \00"
@.str1053 = private unnamed_addr constant [30 x i8] c"Análisis semántico iniciado\00"
@.str1054 = private unnamed_addr constant [26 x i8] c"Semantic analysis started\00"
@.str1055 = private unnamed_addr constant [7 x i8] c"  ✗ \00"
@.str1056 = private unnamed_addr constant [2 x i8] c"1\00"
@.str1057 = private unnamed_addr constant [7 x i8] c"  → \00"
@.str1058 = private unnamed_addr constant [25 x i8] c"Análisis completado: OK\00"
@.str1059 = private unnamed_addr constant [22 x i8] c"Analysis complete: OK\00"
@__nyx_test_failed = external global i64
@.str.init.6 = private unnamed_addr constant [1 x i8] c"\00"
@.str.init.29 = private unnamed_addr constant [1 x i8] c"\00"
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

@g_errors = global { i64, i8* }* null
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
declare { i64, i8* }* @subst_apply(...)
declare i1 @unify(...)

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
  %4 = call %nyx_string* @nyx_string_from_cstr(i8* %3)
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
  %10 = call %nyx_string* @nyx_string_from_cstr(i8* %9)
  %11 = call i8* @nyx_string_to_cstr(%nyx_string* %8)
  %12 = call i8* @nyx_string_to_cstr(%nyx_string* %10)
  %13 = call i32 @strcmp(i8* %11, i8* %12)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %then3, label %else4
then3:
  %15 = load %nyx_string*, %nyx_string** %es.ptr
  ret %nyx_string* %15
else4:
  br label %merge5
merge5:
  %16 = load %nyx_string*, %nyx_string** %en.ptr
  ret %nyx_string* %16
}

define internal i64 @sem_error(
%nyx_string* %err_msg.param) {
  %err_msg.ptr = alloca %nyx_string*
  store %nyx_string* %err_msg.param, %nyx_string** %err_msg.ptr
  %17 = load %nyx_string*, %nyx_string** @g_current_fn
  %18 = getelementptr [1 x i8], [1 x i8]* @.str2, i32 0, i32 0
  %19 = call %nyx_string* @nyx_string_from_cstr(i8* %18)
  %20 = call i8* @nyx_string_to_cstr(%nyx_string* %17)
  %21 = call i8* @nyx_string_to_cstr(%nyx_string* %19)
  %22 = call i32 @strcmp(i8* %20, i8* %21)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %then6, label %else7
then6:
  %24 = load { i64, i8* }*, { i64, i8* }** @g_errors
  %25 = getelementptr [8 x i8], [8 x i8]* @.str3, i32 0, i32 0
  %26 = call %nyx_string* @nyx_string_from_cstr(i8* %25)
  %27 = load %nyx_string*, %nyx_string** %err_msg.ptr
  %28 = call %nyx_string* @nyx_string_concat(%nyx_string* %26, %nyx_string* %27)
  %29 = ptrtoint %nyx_string* %28 to i64
  call void @nyx_array_push({ i64, i8* }* %24, i64 %29)
  br label %merge8
else7:
  %30 = load { i64, i8* }*, { i64, i8* }** @g_errors
  %31 = getelementptr [9 x i8], [9 x i8]* @.str4, i32 0, i32 0
  %32 = call %nyx_string* @nyx_string_from_cstr(i8* %31)
  %33 = getelementptr [9 x i8], [9 x i8]* @.str5, i32 0, i32 0
  %34 = call %nyx_string* @nyx_string_from_cstr(i8* %33)
  %35 = call %nyx_string* @msg(%nyx_string* %32, %nyx_string* %34)
  %36 = getelementptr [3 x i8], [3 x i8]* @.str6, i32 0, i32 0
  %37 = call %nyx_string* @nyx_string_from_cstr(i8* %36)
  %38 = call %nyx_string* @nyx_string_concat(%nyx_string* %35, %nyx_string* %37)
  %39 = load %nyx_string*, %nyx_string** @g_current_fn
  %40 = call %nyx_string* @nyx_string_concat(%nyx_string* %38, %nyx_string* %39)
  %41 = getelementptr [4 x i8], [4 x i8]* @.str7, i32 0, i32 0
  %42 = call %nyx_string* @nyx_string_from_cstr(i8* %41)
  %43 = call %nyx_string* @nyx_string_concat(%nyx_string* %40, %nyx_string* %42)
  %44 = load %nyx_string*, %nyx_string** %err_msg.ptr
  %45 = call %nyx_string* @nyx_string_concat(%nyx_string* %43, %nyx_string* %44)
  %46 = ptrtoint %nyx_string* %45 to i64
  call void @nyx_array_push({ i64, i8* }* %30, i64 %46)
  br label %merge8
merge8:
  ret i64 0
}

define internal %ASTNode @get_node_at(
%ASTNode %node.param, i64 %index.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %index.ptr = alloca i64
  store i64 %index.param, i64* %index.ptr
  %47 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %48 = load { i64, i8* }*, { i64, i8* }** %47
  %49 = alloca { i64, i8* }*
  store { i64, i8* }* %48, { i64, i8* }** %49
  %50 = load { i64, i8* }*, { i64, i8* }** %49
  %51 = load i64, i64* %index.ptr
  %52 = call i64 @nyx_array_get({ i64, i8* }* %50, i64 %51)
  %53 = inttoptr i64 %52 to { i64, i8* }*
  %54 = call i64 @nyx_array_get({ i64, i8* }* %53, i64 0)
  %55 = call i64 @nyx_array_get({ i64, i8* }* %53, i64 1)
  %56 = inttoptr i64 %54 to %nyx_string*
  %57 = inttoptr i64 %55 to { i64, i8* }*
  %58 = alloca %ASTNode
  %59 = getelementptr inbounds %ASTNode, %ASTNode* %58, i32 0, i32 0
  store %nyx_string* %56, %nyx_string** %59
  %60 = getelementptr inbounds %ASTNode, %ASTNode* %58, i32 0, i32 1
  store { i64, i8* }* %57, { i64, i8* }** %60
  %61 = load %ASTNode, %ASTNode* %58
  %62 = alloca %ASTNode
  store %ASTNode %61, %ASTNode* %62
  %63 = load %ASTNode, %ASTNode* %62
  ret %ASTNode %63
}

define internal %nyx_string* @get_string_at(
%ASTNode %node.param, i64 %index.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %index.ptr = alloca i64
  store i64 %index.param, i64* %index.ptr
  %64 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %65 = load { i64, i8* }*, { i64, i8* }** %64
  %66 = alloca { i64, i8* }*
  store { i64, i8* }* %65, { i64, i8* }** %66
  %67 = load { i64, i8* }*, { i64, i8* }** %66
  %68 = load i64, i64* %index.ptr
  %69 = call i64 @nyx_array_get({ i64, i8* }* %67, i64 %68)
  %70 = inttoptr i64 %69 to %nyx_string*
  %71 = alloca %nyx_string*
  store %nyx_string* %70, %nyx_string** %71
  %72 = load %nyx_string*, %nyx_string** %71
  ret %nyx_string* %72
}

define internal { i64, i8* }* @get_array_at(
%ASTNode %node.param, i64 %index.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %index.ptr = alloca i64
  store i64 %index.param, i64* %index.ptr
  %73 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %74 = load { i64, i8* }*, { i64, i8* }** %73
  %75 = alloca { i64, i8* }*
  store { i64, i8* }* %74, { i64, i8* }** %75
  %76 = load { i64, i8* }*, { i64, i8* }** %75
  %77 = load i64, i64* %index.ptr
  %78 = call i64 @nyx_array_get({ i64, i8* }* %76, i64 %77)
  %79 = inttoptr i64 %78 to { i64, i8* }*
  %80 = alloca { i64, i8* }*
  store { i64, i8* }* %79, { i64, i8* }** %80
  %81 = load { i64, i8* }*, { i64, i8* }** %80
  ret { i64, i8* }* %81
}

define internal i1 @get_bool_at(
%ASTNode %node.param, i64 %index.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %index.ptr = alloca i64
  store i64 %index.param, i64* %index.ptr
  %82 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %83 = load { i64, i8* }*, { i64, i8* }** %82
  %84 = alloca { i64, i8* }*
  store { i64, i8* }* %83, { i64, i8* }** %84
  %85 = load { i64, i8* }*, { i64, i8* }** %84
  %86 = load i64, i64* %index.ptr
  %87 = call i64 @nyx_array_get({ i64, i8* }* %85, i64 %86)
  %88 = trunc i64 %87 to i1
  %89 = alloca i1
  store i1 %88, i1* %89
  %90 = load i1, i1* %89
  ret i1 %90
}

define internal i64 @scope_push(
) {
  %91 = load i64, i64* @g_marks_count
  %92 = load { i64, i8* }*, { i64, i8* }** @g_scope_marks
  %93 = call i64 @nyx_array_length({ i64, i8* }* %92)
  %94 = icmp slt i64 %91, %93
  br i1 %94, label %then9, label %else10
then9:
  %95 = load { i64, i8* }*, { i64, i8* }** @g_scope_marks
  %96 = load i64, i64* @g_marks_count
  %97 = load i64, i64* @g_sym_count
  call void @nyx_array_set({ i64, i8* }* %95, i64 %96, i64 %97)
  br label %merge11
else10:
  %98 = load { i64, i8* }*, { i64, i8* }** @g_scope_marks
  %99 = load i64, i64* @g_sym_count
  call void @nyx_array_push({ i64, i8* }* %98, i64 %99)
  br label %merge11
merge11:
  %100 = load i64, i64* @g_marks_count
  %101 = add i64 %100, 1
  store i64 %101, i64* @g_marks_count
  ret i64 0
}

define internal i64 @scope_pop(
) {
  %102 = load i64, i64* @g_marks_count
  %103 = sub i64 %102, 1
  store i64 %103, i64* @g_marks_count
  %104 = load { i64, i8* }*, { i64, i8* }** @g_scope_marks
  %105 = load i64, i64* @g_marks_count
  %106 = call i64 @nyx_array_get({ i64, i8* }* %104, i64 %105)
  %107 = alloca i64
  store i64 %106, i64* %107
  %108 = load i64, i64* %107
  store i64 %108, i64* @g_sym_count
  ret i64 0
}

define internal i64 @scope_current_start(
) {
  %109 = load i64, i64* @g_marks_count
  %110 = icmp sgt i64 %109, 0
  br i1 %110, label %then12, label %else13
then12:
  %111 = load i64, i64* @g_marks_count
  %112 = sub i64 %111, 1
  %113 = alloca i64
  store i64 %112, i64* %113
  %114 = load { i64, i8* }*, { i64, i8* }** @g_scope_marks
  %115 = load i64, i64* %113
  %116 = call i64 @nyx_array_get({ i64, i8* }* %114, i64 %115)
  %117 = alloca i64
  store i64 %116, i64* %117
  %118 = load i64, i64* %117
  ret i64 %118
else13:
  br label %merge14
merge14:
  ret i64 0
}

define internal i1 @scope_has_in_current(
%nyx_string* %name.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %119 = call i64 @scope_current_start()
  %120 = alloca i64
  store i64 %119, i64* %120
  %121 = load i64, i64* %120
  %122 = alloca i64
  store i64 %121, i64* %122
  br label %while_cond15
while_cond15:
  %123 = load i64, i64* %122
  %124 = load i64, i64* @g_sym_count
  %125 = icmp slt i64 %123, %124
  br i1 %125, label %while_body16, label %while_end17
while_body16:
  %126 = load { i64, i8* }*, { i64, i8* }** @g_sym_names
  %127 = load i64, i64* %122
  %128 = call i64 @nyx_array_get({ i64, i8* }* %126, i64 %127)
  %129 = inttoptr i64 %128 to %nyx_string*
  %130 = alloca %nyx_string*
  store %nyx_string* %129, %nyx_string** %130
  %131 = load %nyx_string*, %nyx_string** %130
  %132 = load %nyx_string*, %nyx_string** %name.ptr
  %133 = call i8* @nyx_string_to_cstr(%nyx_string* %131)
  %134 = call i8* @nyx_string_to_cstr(%nyx_string* %132)
  %135 = call i32 @strcmp(i8* %133, i8* %134)
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %then18, label %else19
then18:
  ret i1 1
else19:
  br label %merge20
merge20:
  %137 = load i64, i64* %122
  %138 = add i64 %137, 1
  store i64 %138, i64* %122
  br label %while_cond15
while_end17:
  ret i1 0
}

define internal i64 @scope_declare(
%nyx_string* %name.param, %nyx_string* %kind.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %kind.ptr = alloca %nyx_string*
  store %nyx_string* %kind.param, %nyx_string** %kind.ptr
  %139 = load i64, i64* @g_sym_count
  %140 = load { i64, i8* }*, { i64, i8* }** @g_sym_names
  %141 = call i64 @nyx_array_length({ i64, i8* }* %140)
  %142 = icmp slt i64 %139, %141
  br i1 %142, label %then21, label %else22
then21:
  %143 = load { i64, i8* }*, { i64, i8* }** @g_sym_names
  %144 = load i64, i64* @g_sym_count
  %145 = load %nyx_string*, %nyx_string** %name.ptr
  %146 = ptrtoint %nyx_string* %145 to i64
  call void @nyx_array_set({ i64, i8* }* %143, i64 %144, i64 %146)
  %147 = load { i64, i8* }*, { i64, i8* }** @g_sym_kinds
  %148 = load i64, i64* @g_sym_count
  %149 = load %nyx_string*, %nyx_string** %kind.ptr
  %150 = ptrtoint %nyx_string* %149 to i64
  call void @nyx_array_set({ i64, i8* }* %147, i64 %148, i64 %150)
  %151 = load { i64, i8* }*, { i64, i8* }** @g_sym_arities
  %152 = load i64, i64* @g_sym_count
  %153 = sub i64 0, 1
  call void @nyx_array_set({ i64, i8* }* %151, i64 %152, i64 %153)
  %154 = load { i64, i8* }*, { i64, i8* }** @g_var_types
  %155 = load i64, i64* @g_sym_count
  %156 = call { i64, i8* }* @ty_unknown()
  %157 = ptrtoint { i64, i8* }* %156 to i64
  call void @nyx_array_set({ i64, i8* }* %154, i64 %155, i64 %157)
  br label %merge23
else22:
  %158 = load { i64, i8* }*, { i64, i8* }** @g_sym_names
  %159 = load %nyx_string*, %nyx_string** %name.ptr
  %160 = ptrtoint %nyx_string* %159 to i64
  call void @nyx_array_push({ i64, i8* }* %158, i64 %160)
  %161 = load { i64, i8* }*, { i64, i8* }** @g_sym_kinds
  %162 = load %nyx_string*, %nyx_string** %kind.ptr
  %163 = ptrtoint %nyx_string* %162 to i64
  call void @nyx_array_push({ i64, i8* }* %161, i64 %163)
  %164 = load { i64, i8* }*, { i64, i8* }** @g_sym_arities
  %165 = sub i64 0, 1
  call void @nyx_array_push({ i64, i8* }* %164, i64 %165)
  %166 = load { i64, i8* }*, { i64, i8* }** @g_var_types
  %167 = call { i64, i8* }* @ty_unknown()
  %168 = ptrtoint { i64, i8* }* %167 to i64
  call void @nyx_array_push({ i64, i8* }* %166, i64 %168)
  br label %merge23
merge23:
  %169 = load i64, i64* @g_sym_count
  %170 = add i64 %169, 1
  store i64 %170, i64* @g_sym_count
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
  %171 = load i64, i64* @g_sym_count
  %172 = load { i64, i8* }*, { i64, i8* }** @g_sym_names
  %173 = call i64 @nyx_array_length({ i64, i8* }* %172)
  %174 = icmp slt i64 %171, %173
  br i1 %174, label %then24, label %else25
then24:
  %175 = load { i64, i8* }*, { i64, i8* }** @g_sym_names
  %176 = load i64, i64* @g_sym_count
  %177 = load %nyx_string*, %nyx_string** %name.ptr
  %178 = ptrtoint %nyx_string* %177 to i64
  call void @nyx_array_set({ i64, i8* }* %175, i64 %176, i64 %178)
  %179 = load { i64, i8* }*, { i64, i8* }** @g_sym_kinds
  %180 = load i64, i64* @g_sym_count
  %181 = load %nyx_string*, %nyx_string** %kind.ptr
  %182 = ptrtoint %nyx_string* %181 to i64
  call void @nyx_array_set({ i64, i8* }* %179, i64 %180, i64 %182)
  %183 = load { i64, i8* }*, { i64, i8* }** @g_sym_arities
  %184 = load i64, i64* @g_sym_count
  %185 = load i64, i64* %arity.ptr
  call void @nyx_array_set({ i64, i8* }* %183, i64 %184, i64 %185)
  %186 = load { i64, i8* }*, { i64, i8* }** @g_var_types
  %187 = load i64, i64* @g_sym_count
  %188 = call { i64, i8* }* @ty_unknown()
  %189 = ptrtoint { i64, i8* }* %188 to i64
  call void @nyx_array_set({ i64, i8* }* %186, i64 %187, i64 %189)
  br label %merge26
else25:
  %190 = load { i64, i8* }*, { i64, i8* }** @g_sym_names
  %191 = load %nyx_string*, %nyx_string** %name.ptr
  %192 = ptrtoint %nyx_string* %191 to i64
  call void @nyx_array_push({ i64, i8* }* %190, i64 %192)
  %193 = load { i64, i8* }*, { i64, i8* }** @g_sym_kinds
  %194 = load %nyx_string*, %nyx_string** %kind.ptr
  %195 = ptrtoint %nyx_string* %194 to i64
  call void @nyx_array_push({ i64, i8* }* %193, i64 %195)
  %196 = load { i64, i8* }*, { i64, i8* }** @g_sym_arities
  %197 = load i64, i64* %arity.ptr
  call void @nyx_array_push({ i64, i8* }* %196, i64 %197)
  %198 = load { i64, i8* }*, { i64, i8* }** @g_var_types
  %199 = call { i64, i8* }* @ty_unknown()
  %200 = ptrtoint { i64, i8* }* %199 to i64
  call void @nyx_array_push({ i64, i8* }* %198, i64 %200)
  br label %merge26
merge26:
  %201 = load i64, i64* @g_sym_count
  %202 = add i64 %201, 1
  store i64 %202, i64* @g_sym_count
  ret i64 0
}

define internal i64 @set_last_var_type(
{ i64, i8* }* %t.param) {
  %t.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %t.param, { i64, i8* }** %t.ptr
  %203 = load i64, i64* @g_sym_count
  %204 = sub i64 %203, 1
  %205 = alloca i64
  store i64 %204, i64* %205
  %206 = load i64, i64* %205
  %207 = icmp sge i64 %206, 0
  br i1 %207, label %then27, label %else28
then27:
  %208 = load i64, i64* %205
  %209 = load { i64, i8* }*, { i64, i8* }** @g_var_types
  %210 = call i64 @nyx_array_length({ i64, i8* }* %209)
  %211 = icmp slt i64 %208, %210
  br i1 %211, label %then30, label %else31
then30:
  %212 = load { i64, i8* }*, { i64, i8* }** @g_var_types
  %213 = load i64, i64* %205
  %214 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %215 = ptrtoint { i64, i8* }* %214 to i64
  call void @nyx_array_set({ i64, i8* }* %212, i64 %213, i64 %215)
  br label %merge32
else31:
  br label %merge32
merge32:
  br label %merge29
else28:
  br label %merge29
merge29:
  ret i64 0
}

define internal { i64, i8* }* @lookup_var_type(
%nyx_string* %name.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %216 = load i64, i64* @g_sym_count
  %217 = sub i64 %216, 1
  %218 = alloca i64
  store i64 %217, i64* %218
  br label %while_cond33
while_cond33:
  %219 = load i64, i64* %218
  %220 = icmp sge i64 %219, 0
  br i1 %220, label %while_body34, label %while_end35
while_body34:
  %221 = load { i64, i8* }*, { i64, i8* }** @g_sym_names
  %222 = load i64, i64* %218
  %223 = call i64 @nyx_array_get({ i64, i8* }* %221, i64 %222)
  %224 = inttoptr i64 %223 to %nyx_string*
  %225 = alloca %nyx_string*
  store %nyx_string* %224, %nyx_string** %225
  %226 = load %nyx_string*, %nyx_string** %225
  %227 = load %nyx_string*, %nyx_string** %name.ptr
  %228 = call i8* @nyx_string_to_cstr(%nyx_string* %226)
  %229 = call i8* @nyx_string_to_cstr(%nyx_string* %227)
  %230 = call i32 @strcmp(i8* %228, i8* %229)
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %then36, label %else37
then36:
  %232 = load i64, i64* %218
  %233 = load { i64, i8* }*, { i64, i8* }** @g_var_types
  %234 = call i64 @nyx_array_length({ i64, i8* }* %233)
  %235 = icmp slt i64 %232, %234
  br i1 %235, label %then39, label %else40
then39:
  %236 = load { i64, i8* }*, { i64, i8* }** @g_var_types
  %237 = load i64, i64* %218
  %238 = call i64 @nyx_array_get({ i64, i8* }* %236, i64 %237)
  %239 = inttoptr i64 %238 to { i64, i8* }*
  %240 = alloca { i64, i8* }*
  store { i64, i8* }* %239, { i64, i8* }** %240
  %241 = load { i64, i8* }*, { i64, i8* }** %240
  ret { i64, i8* }* %241
else40:
  br label %merge41
merge41:
  %242 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %242
else37:
  br label %merge38
merge38:
  %243 = load i64, i64* %218
  %244 = sub i64 %243, 1
  store i64 %244, i64* %218
  br label %while_cond33
while_end35:
  %245 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %245
}

define internal { i64, i8* }* @ty_of_expr(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %246 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 0
  %247 = load %nyx_string*, %nyx_string** %246
  %248 = alloca %nyx_string*
  store %nyx_string* %247, %nyx_string** %248
  %249 = load %nyx_string*, %nyx_string** %248
  %250 = getelementptr [11 x i8], [11 x i8]* @.str8, i32 0, i32 0
  %251 = call %nyx_string* @nyx_string_from_cstr(i8* %250)
  %252 = call i8* @nyx_string_to_cstr(%nyx_string* %249)
  %253 = call i8* @nyx_string_to_cstr(%nyx_string* %251)
  %254 = call i32 @strcmp(i8* %252, i8* %253)
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %then42, label %else43
then42:
  %256 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %257 = load { i64, i8* }*, { i64, i8* }** %256
  %258 = alloca { i64, i8* }*
  store { i64, i8* }* %257, { i64, i8* }** %258
  %259 = load { i64, i8* }*, { i64, i8* }** %258
  %260 = call i64 @nyx_array_length({ i64, i8* }* %259)
  %261 = icmp sgt i64 %260, 0
  br i1 %261, label %then45, label %else46
then45:
  %262 = load { i64, i8* }*, { i64, i8* }** %258
  %263 = call i64 @nyx_array_get({ i64, i8* }* %262, i64 0)
  %264 = inttoptr i64 %263 to %nyx_string*
  %265 = alloca %nyx_string*
  store %nyx_string* %264, %nyx_string** %265
  %266 = load %nyx_string*, %nyx_string** %265
  %267 = call { i64, i8* }* @lookup_var_type(%nyx_string* %266)
  ret { i64, i8* }* %267
else46:
  br label %merge47
merge47:
  %268 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %268
else43:
  br label %merge44
merge44:
  %269 = load %nyx_string*, %nyx_string** %248
  %270 = getelementptr [5 x i8], [5 x i8]* @.str9, i32 0, i32 0
  %271 = call %nyx_string* @nyx_string_from_cstr(i8* %270)
  %272 = call i8* @nyx_string_to_cstr(%nyx_string* %269)
  %273 = call i8* @nyx_string_to_cstr(%nyx_string* %271)
  %274 = call i32 @strcmp(i8* %272, i8* %273)
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %then48, label %else49
then48:
  %276 = load %ASTNode, %ASTNode* %node.ptr
  %277 = call %ASTNode @get_node_at(%ASTNode %276, i64 0)
  %278 = alloca %ASTNode
  store %ASTNode %277, %ASTNode* %278
  %279 = getelementptr %ASTNode, %ASTNode* %278, i32 0, i32 0
  %280 = load %nyx_string*, %nyx_string** %279
  %281 = getelementptr [11 x i8], [11 x i8]* @.str10, i32 0, i32 0
  %282 = call %nyx_string* @nyx_string_from_cstr(i8* %281)
  %283 = call i8* @nyx_string_to_cstr(%nyx_string* %280)
  %284 = call i8* @nyx_string_to_cstr(%nyx_string* %282)
  %285 = call i32 @strcmp(i8* %283, i8* %284)
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %then51, label %else52
then51:
  %287 = load %ASTNode, %ASTNode* %278
  %288 = call %nyx_string* @get_string_at(%ASTNode %287, i64 0)
  %289 = alloca %nyx_string*
  store %nyx_string* %288, %nyx_string** %289
  %290 = load %nyx_string*, %nyx_string** %289
  %291 = call { i64, i8* }* @lookup_fn_sig(%nyx_string* %290)
  %292 = alloca { i64, i8* }*
  store { i64, i8* }* %291, { i64, i8* }** %292
  %293 = load { i64, i8* }*, { i64, i8* }** %292
  %294 = call i64 @nyx_array_length({ i64, i8* }* %293)
  %295 = icmp eq i64 %294, 3
  br i1 %295, label %then54, label %else55
then54:
  %296 = load { i64, i8* }*, { i64, i8* }** %292
  %297 = call i64 @nyx_array_get({ i64, i8* }* %296, i64 0)
  %298 = inttoptr i64 %297 to { i64, i8* }*
  %299 = alloca { i64, i8* }*
  store { i64, i8* }* %298, { i64, i8* }** %299
  %300 = load { i64, i8* }*, { i64, i8* }** %292
  %301 = call i64 @nyx_array_get({ i64, i8* }* %300, i64 1)
  %302 = inttoptr i64 %301 to { i64, i8* }*
  %303 = alloca { i64, i8* }*
  store { i64, i8* }* %302, { i64, i8* }** %303
  %304 = load { i64, i8* }*, { i64, i8* }** %292
  %305 = call i64 @nyx_array_get({ i64, i8* }* %304, i64 2)
  %306 = inttoptr i64 %305 to { i64, i8* }*
  %307 = alloca { i64, i8* }*
  store { i64, i8* }* %306, { i64, i8* }** %307
  %308 = load { i64, i8* }*, { i64, i8* }** %307
  %309 = call i64 @nyx_array_length({ i64, i8* }* %308)
  %310 = icmp sgt i64 %309, 0
  br i1 %310, label %then57, label %else58
then57:
  %311 = load %ASTNode, %ASTNode* %node.ptr
  %312 = call { i64, i8* }* @get_array_at(%ASTNode %311, i64 1)
  %313 = alloca { i64, i8* }*
  store { i64, i8* }* %312, { i64, i8* }** %313
  %314 = call { i64, i8* }* @nyx_array_new_ptr()
  %315 = alloca { i64, i8* }*
  store { i64, i8* }* %314, { i64, i8* }** %315
  %316 = call { i64, i8* }* @nyx_array_new_ptr()
  %317 = alloca { i64, i8* }*
  store { i64, i8* }* %316, { i64, i8* }** %317
  %318 = alloca i64
  store i64 0, i64* %318
  br label %while_cond60
while_cond60:
  %319 = load i64, i64* %318
  %320 = load { i64, i8* }*, { i64, i8* }** %313
  %321 = call i64 @nyx_array_length({ i64, i8* }* %320)
  %322 = icmp slt i64 %319, %321
  br i1 %322, label %while_body61, label %while_end62
while_body61:
  %323 = load i64, i64* %318
  %324 = load { i64, i8* }*, { i64, i8* }** %299
  %325 = call i64 @nyx_array_length({ i64, i8* }* %324)
  %326 = icmp slt i64 %323, %325
  br i1 %326, label %then63, label %else64
then63:
  %327 = load { i64, i8* }*, { i64, i8* }** %313
  %328 = load i64, i64* %318
  %329 = call i64 @nyx_array_get({ i64, i8* }* %327, i64 %328)
  %330 = inttoptr i64 %329 to { i64, i8* }*
  %331 = call i64 @nyx_array_get({ i64, i8* }* %330, i64 0)
  %332 = call i64 @nyx_array_get({ i64, i8* }* %330, i64 1)
  %333 = inttoptr i64 %331 to %nyx_string*
  %334 = inttoptr i64 %332 to { i64, i8* }*
  %335 = alloca %ASTNode
  %336 = getelementptr inbounds %ASTNode, %ASTNode* %335, i32 0, i32 0
  store %nyx_string* %333, %nyx_string** %336
  %337 = getelementptr inbounds %ASTNode, %ASTNode* %335, i32 0, i32 1
  store { i64, i8* }* %334, { i64, i8* }** %337
  %338 = load %ASTNode, %ASTNode* %335
  %339 = alloca %ASTNode
  store %ASTNode %338, %ASTNode* %339
  %340 = load { i64, i8* }*, { i64, i8* }** %299
  %341 = load i64, i64* %318
  %342 = call i64 @nyx_array_get({ i64, i8* }* %340, i64 %341)
  %343 = inttoptr i64 %342 to { i64, i8* }*
  %344 = alloca { i64, i8* }*
  store { i64, i8* }* %343, { i64, i8* }** %344
  %345 = load { i64, i8* }*, { i64, i8* }** %344
  %346 = call i1 @ty_is_unknown({ i64, i8* }* %345)
  %347 = xor i1 %346, true
  br i1 %347, label %then66, label %else67
then66:
  %348 = load %ASTNode, %ASTNode* %339
  %349 = call { i64, i8* }* @ty_of_expr(%ASTNode %348)
  %350 = alloca { i64, i8* }*
  store { i64, i8* }* %349, { i64, i8* }** %350
  %351 = load { i64, i8* }*, { i64, i8* }** %350
  %352 = call i1 @ty_is_unknown({ i64, i8* }* %351)
  %353 = xor i1 %352, true
  br i1 %353, label %then69, label %else70
then69:
  %354 = load { i64, i8* }*, { i64, i8* }** %344
  %355 = load { i64, i8* }*, { i64, i8* }** %350
  %356 = load { i64, i8* }*, { i64, i8* }** %307
  %357 = load { i64, i8* }*, { i64, i8* }** %315
  %358 = load { i64, i8* }*, { i64, i8* }** %317
  %359 = call i1 @unify({ i64, i8* }* %354, { i64, i8* }* %355, { i64, i8* }* %356, { i64, i8* }* %357, { i64, i8* }* %358)
  br label %merge71
else70:
  br label %merge71
merge71:
  br label %merge68
else67:
  br label %merge68
merge68:
  br label %merge65
else64:
  br label %merge65
merge65:
  %360 = load i64, i64* %318
  %361 = add i64 %360, 1
  store i64 %361, i64* %318
  br label %while_cond60
while_end62:
  %362 = load { i64, i8* }*, { i64, i8* }** %303
  %363 = load { i64, i8* }*, { i64, i8* }** %315
  %364 = load { i64, i8* }*, { i64, i8* }** %317
  %365 = call { i64, i8* }* @subst_apply({ i64, i8* }* %362, { i64, i8* }* %363, { i64, i8* }* %364)
  ret { i64, i8* }* %365
else58:
  br label %merge59
merge59:
  %366 = load { i64, i8* }*, { i64, i8* }** %303
  ret { i64, i8* }* %366
else55:
  br label %merge56
merge56:
  br label %merge53
else52:
  br label %merge53
merge53:
  %367 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %367
else49:
  br label %merge50
merge50:
  %368 = load %nyx_string*, %nyx_string** %248
  %369 = getelementptr [6 x i8], [6 x i8]* @.str11, i32 0, i32 0
  %370 = call %nyx_string* @nyx_string_from_cstr(i8* %369)
  %371 = call i8* @nyx_string_to_cstr(%nyx_string* %368)
  %372 = call i8* @nyx_string_to_cstr(%nyx_string* %370)
  %373 = call i32 @strcmp(i8* %371, i8* %372)
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %then72, label %else73
then72:
  %375 = load %ASTNode, %ASTNode* %node.ptr
  %376 = call %nyx_string* @get_string_at(%ASTNode %375, i64 0)
  %377 = alloca %nyx_string*
  store %nyx_string* %376, %nyx_string** %377
  %378 = load %ASTNode, %ASTNode* %node.ptr
  %379 = call %ASTNode @get_node_at(%ASTNode %378, i64 1)
  %380 = alloca %ASTNode
  store %ASTNode %379, %ASTNode* %380
  %381 = load %ASTNode, %ASTNode* %node.ptr
  %382 = call %ASTNode @get_node_at(%ASTNode %381, i64 2)
  %383 = alloca %ASTNode
  store %ASTNode %382, %ASTNode* %383
  %384 = load %ASTNode, %ASTNode* %380
  %385 = call { i64, i8* }* @ty_of_expr(%ASTNode %384)
  %386 = alloca { i64, i8* }*
  store { i64, i8* }* %385, { i64, i8* }** %386
  %387 = load %ASTNode, %ASTNode* %383
  %388 = call { i64, i8* }* @ty_of_expr(%ASTNode %387)
  %389 = alloca { i64, i8* }*
  store { i64, i8* }* %388, { i64, i8* }** %389
  %390 = load %nyx_string*, %nyx_string** %377
  %391 = load { i64, i8* }*, { i64, i8* }** %386
  %392 = load { i64, i8* }*, { i64, i8* }** %389
  %393 = call { i64, i8* }* @ty_of_binop(%nyx_string* %390, { i64, i8* }* %391, { i64, i8* }* %392)
  ret { i64, i8* }* %393
else73:
  br label %merge74
merge74:
  %394 = load %nyx_string*, %nyx_string** %248
  %395 = getelementptr [12 x i8], [12 x i8]* @.str12, i32 0, i32 0
  %396 = call %nyx_string* @nyx_string_from_cstr(i8* %395)
  %397 = call i8* @nyx_string_to_cstr(%nyx_string* %394)
  %398 = call i8* @nyx_string_to_cstr(%nyx_string* %396)
  %399 = call i32 @strcmp(i8* %397, i8* %398)
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %then75, label %else76
then75:
  %401 = load %ASTNode, %ASTNode* %node.ptr
  %402 = call %nyx_string* @get_string_at(%ASTNode %401, i64 1)
  %403 = alloca %nyx_string*
  store %nyx_string* %402, %nyx_string** %403
  %404 = load %nyx_string*, %nyx_string** %403
  %405 = getelementptr [7 x i8], [7 x i8]* @.str13, i32 0, i32 0
  %406 = call %nyx_string* @nyx_string_from_cstr(i8* %405)
  %407 = call i8* @nyx_string_to_cstr(%nyx_string* %404)
  %408 = call i8* @nyx_string_to_cstr(%nyx_string* %406)
  %409 = call i32 @strcmp(i8* %407, i8* %408)
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %then78, label %else79
then78:
  %411 = call { i64, i8* }* @ty_int()
  ret { i64, i8* }* %411
else79:
  br label %merge80
merge80:
  %412 = load %nyx_string*, %nyx_string** %403
  %413 = getelementptr [12 x i8], [12 x i8]* @.str14, i32 0, i32 0
  %414 = call %nyx_string* @nyx_string_from_cstr(i8* %413)
  %415 = call i8* @nyx_string_to_cstr(%nyx_string* %412)
  %416 = call i8* @nyx_string_to_cstr(%nyx_string* %414)
  %417 = call i32 @strcmp(i8* %415, i8* %416)
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %then81, label %else82
then81:
  %419 = call { i64, i8* }* @ty_int()
  ret { i64, i8* }* %419
else82:
  br label %merge83
merge83:
  %420 = load %nyx_string*, %nyx_string** %403
  %421 = getelementptr [5 x i8], [5 x i8]* @.str15, i32 0, i32 0
  %422 = call %nyx_string* @nyx_string_from_cstr(i8* %421)
  %423 = call i8* @nyx_string_to_cstr(%nyx_string* %420)
  %424 = call i8* @nyx_string_to_cstr(%nyx_string* %422)
  %425 = call i32 @strcmp(i8* %423, i8* %424)
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %then84, label %else85
then84:
  %427 = call { i64, i8* }* @ty_int()
  ret { i64, i8* }* %427
else85:
  br label %merge86
merge86:
  %428 = load %nyx_string*, %nyx_string** %403
  %429 = getelementptr [6 x i8], [6 x i8]* @.str16, i32 0, i32 0
  %430 = call %nyx_string* @nyx_string_from_cstr(i8* %429)
  %431 = call i8* @nyx_string_to_cstr(%nyx_string* %428)
  %432 = call i8* @nyx_string_to_cstr(%nyx_string* %430)
  %433 = call i32 @strcmp(i8* %431, i8* %432)
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %then87, label %else88
then87:
  %435 = call { i64, i8* }* @ty_int()
  ret { i64, i8* }* %435
else88:
  br label %merge89
merge89:
  %436 = load %nyx_string*, %nyx_string** %403
  %437 = getelementptr [8 x i8], [8 x i8]* @.str17, i32 0, i32 0
  %438 = call %nyx_string* @nyx_string_from_cstr(i8* %437)
  %439 = call i8* @nyx_string_to_cstr(%nyx_string* %436)
  %440 = call i8* @nyx_string_to_cstr(%nyx_string* %438)
  %441 = call i32 @strcmp(i8* %439, i8* %440)
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %then90, label %else91
then90:
  %443 = call { i64, i8* }* @ty_int()
  ret { i64, i8* }* %443
else91:
  br label %merge92
merge92:
  %444 = load %nyx_string*, %nyx_string** %403
  %445 = getelementptr [7 x i8], [7 x i8]* @.str18, i32 0, i32 0
  %446 = call %nyx_string* @nyx_string_from_cstr(i8* %445)
  %447 = call i8* @nyx_string_to_cstr(%nyx_string* %444)
  %448 = call i8* @nyx_string_to_cstr(%nyx_string* %446)
  %449 = call i32 @strcmp(i8* %447, i8* %448)
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %then93, label %else94
then93:
  %451 = call { i64, i8* }* @ty_int()
  ret { i64, i8* }* %451
else94:
  br label %merge95
merge95:
  %452 = load %nyx_string*, %nyx_string** %403
  %453 = getelementptr [8 x i8], [8 x i8]* @.str19, i32 0, i32 0
  %454 = call %nyx_string* @nyx_string_from_cstr(i8* %453)
  %455 = call i8* @nyx_string_to_cstr(%nyx_string* %452)
  %456 = call i8* @nyx_string_to_cstr(%nyx_string* %454)
  %457 = call i32 @strcmp(i8* %455, i8* %456)
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %then96, label %else97
then96:
  %459 = call { i64, i8* }* @ty_bool()
  ret { i64, i8* }* %459
else97:
  br label %merge98
merge98:
  %460 = load %nyx_string*, %nyx_string** %403
  %461 = getelementptr [8 x i8], [8 x i8]* @.str20, i32 0, i32 0
  %462 = call %nyx_string* @nyx_string_from_cstr(i8* %461)
  %463 = call i8* @nyx_string_to_cstr(%nyx_string* %460)
  %464 = call i8* @nyx_string_to_cstr(%nyx_string* %462)
  %465 = call i32 @strcmp(i8* %463, i8* %464)
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %then99, label %else100
then99:
  %467 = call { i64, i8* }* @ty_bool()
  ret { i64, i8* }* %467
else100:
  br label %merge101
merge101:
  %468 = load %nyx_string*, %nyx_string** %403
  %469 = getelementptr [6 x i8], [6 x i8]* @.str21, i32 0, i32 0
  %470 = call %nyx_string* @nyx_string_from_cstr(i8* %469)
  %471 = call i8* @nyx_string_to_cstr(%nyx_string* %468)
  %472 = call i8* @nyx_string_to_cstr(%nyx_string* %470)
  %473 = call i32 @strcmp(i8* %471, i8* %472)
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %then102, label %else103
then102:
  %475 = call { i64, i8* }* @ty_bool()
  ret { i64, i8* }* %475
else103:
  br label %merge104
merge104:
  %476 = load %nyx_string*, %nyx_string** %403
  %477 = getelementptr [7 x i8], [7 x i8]* @.str22, i32 0, i32 0
  %478 = call %nyx_string* @nyx_string_from_cstr(i8* %477)
  %479 = call i8* @nyx_string_to_cstr(%nyx_string* %476)
  %480 = call i8* @nyx_string_to_cstr(%nyx_string* %478)
  %481 = call i32 @strcmp(i8* %479, i8* %480)
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %then105, label %else106
then105:
  %483 = call { i64, i8* }* @ty_bool()
  ret { i64, i8* }* %483
else106:
  br label %merge107
merge107:
  %484 = load %nyx_string*, %nyx_string** %403
  %485 = getelementptr [9 x i8], [9 x i8]* @.str23, i32 0, i32 0
  %486 = call %nyx_string* @nyx_string_from_cstr(i8* %485)
  %487 = call i8* @nyx_string_to_cstr(%nyx_string* %484)
  %488 = call i8* @nyx_string_to_cstr(%nyx_string* %486)
  %489 = call i32 @strcmp(i8* %487, i8* %488)
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %then108, label %else109
then108:
  %491 = call { i64, i8* }* @ty_bool()
  ret { i64, i8* }* %491
else109:
  br label %merge110
merge110:
  %492 = load %nyx_string*, %nyx_string** %403
  %493 = getelementptr [4 x i8], [4 x i8]* @.str24, i32 0, i32 0
  %494 = call %nyx_string* @nyx_string_from_cstr(i8* %493)
  %495 = call i8* @nyx_string_to_cstr(%nyx_string* %492)
  %496 = call i8* @nyx_string_to_cstr(%nyx_string* %494)
  %497 = call i32 @strcmp(i8* %495, i8* %496)
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %then111, label %else112
then111:
  %499 = call { i64, i8* }* @ty_bool()
  ret { i64, i8* }* %499
else112:
  br label %merge113
merge113:
  %500 = load %nyx_string*, %nyx_string** %403
  %501 = getelementptr [11 x i8], [11 x i8]* @.str25, i32 0, i32 0
  %502 = call %nyx_string* @nyx_string_from_cstr(i8* %501)
  %503 = call i8* @nyx_string_to_cstr(%nyx_string* %500)
  %504 = call i8* @nyx_string_to_cstr(%nyx_string* %502)
  %505 = call i32 @strcmp(i8* %503, i8* %504)
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %then114, label %else115
then114:
  %507 = call { i64, i8* }* @ty_bool()
  ret { i64, i8* }* %507
else115:
  br label %merge116
merge116:
  %508 = load %nyx_string*, %nyx_string** %403
  %509 = getelementptr [9 x i8], [9 x i8]* @.str26, i32 0, i32 0
  %510 = call %nyx_string* @nyx_string_from_cstr(i8* %509)
  %511 = call i8* @nyx_string_to_cstr(%nyx_string* %508)
  %512 = call i8* @nyx_string_to_cstr(%nyx_string* %510)
  %513 = call i32 @strcmp(i8* %511, i8* %512)
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %then117, label %else118
then117:
  %515 = call { i64, i8* }* @ty_bool()
  ret { i64, i8* }* %515
else118:
  br label %merge119
merge119:
  %516 = load %nyx_string*, %nyx_string** %403
  %517 = getelementptr [12 x i8], [12 x i8]* @.str27, i32 0, i32 0
  %518 = call %nyx_string* @nyx_string_from_cstr(i8* %517)
  %519 = call i8* @nyx_string_to_cstr(%nyx_string* %516)
  %520 = call i8* @nyx_string_to_cstr(%nyx_string* %518)
  %521 = call i32 @strcmp(i8* %519, i8* %520)
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %then120, label %else121
then120:
  %523 = call { i64, i8* }* @ty_bool()
  ret { i64, i8* }* %523
else121:
  br label %merge122
merge122:
  %524 = load %nyx_string*, %nyx_string** %403
  %525 = getelementptr [10 x i8], [10 x i8]* @.str28, i32 0, i32 0
  %526 = call %nyx_string* @nyx_string_from_cstr(i8* %525)
  %527 = call i8* @nyx_string_to_cstr(%nyx_string* %524)
  %528 = call i8* @nyx_string_to_cstr(%nyx_string* %526)
  %529 = call i32 @strcmp(i8* %527, i8* %528)
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %then123, label %else124
then123:
  %531 = call { i64, i8* }* @ty_bool()
  ret { i64, i8* }* %531
else124:
  br label %merge125
merge125:
  %532 = load %nyx_string*, %nyx_string** %403
  %533 = getelementptr [4 x i8], [4 x i8]* @.str29, i32 0, i32 0
  %534 = call %nyx_string* @nyx_string_from_cstr(i8* %533)
  %535 = call i8* @nyx_string_to_cstr(%nyx_string* %532)
  %536 = call i8* @nyx_string_to_cstr(%nyx_string* %534)
  %537 = call i32 @strcmp(i8* %535, i8* %536)
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %then126, label %else127
then126:
  %539 = call { i64, i8* }* @ty_bool()
  ret { i64, i8* }* %539
else127:
  br label %merge128
merge128:
  %540 = load %nyx_string*, %nyx_string** %403
  %541 = getelementptr [4 x i8], [4 x i8]* @.str30, i32 0, i32 0
  %542 = call %nyx_string* @nyx_string_from_cstr(i8* %541)
  %543 = call i8* @nyx_string_to_cstr(%nyx_string* %540)
  %544 = call i8* @nyx_string_to_cstr(%nyx_string* %542)
  %545 = call i32 @strcmp(i8* %543, i8* %544)
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %then129, label %else130
then129:
  %547 = call { i64, i8* }* @ty_bool()
  ret { i64, i8* }* %547
else130:
  br label %merge131
merge131:
  %548 = load %nyx_string*, %nyx_string** %403
  %549 = getelementptr [8 x i8], [8 x i8]* @.str31, i32 0, i32 0
  %550 = call %nyx_string* @nyx_string_from_cstr(i8* %549)
  %551 = call i8* @nyx_string_to_cstr(%nyx_string* %548)
  %552 = call i8* @nyx_string_to_cstr(%nyx_string* %550)
  %553 = call i32 @strcmp(i8* %551, i8* %552)
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %then132, label %else133
then132:
  %555 = call { i64, i8* }* @ty_string()
  ret { i64, i8* }* %555
else133:
  br label %merge134
merge134:
  %556 = load %nyx_string*, %nyx_string** %403
  %557 = getelementptr [8 x i8], [8 x i8]* @.str32, i32 0, i32 0
  %558 = call %nyx_string* @nyx_string_from_cstr(i8* %557)
  %559 = call i8* @nyx_string_to_cstr(%nyx_string* %556)
  %560 = call i8* @nyx_string_to_cstr(%nyx_string* %558)
  %561 = call i32 @strcmp(i8* %559, i8* %560)
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %then135, label %else136
then135:
  %563 = call { i64, i8* }* @ty_string()
  ret { i64, i8* }* %563
else136:
  br label %merge137
merge137:
  %564 = load %nyx_string*, %nyx_string** %403
  %565 = getelementptr [9 x i8], [9 x i8]* @.str33, i32 0, i32 0
  %566 = call %nyx_string* @nyx_string_from_cstr(i8* %565)
  %567 = call i8* @nyx_string_to_cstr(%nyx_string* %564)
  %568 = call i8* @nyx_string_to_cstr(%nyx_string* %566)
  %569 = call i32 @strcmp(i8* %567, i8* %568)
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %then138, label %else139
then138:
  %571 = call { i64, i8* }* @ty_string()
  ret { i64, i8* }* %571
else139:
  br label %merge140
merge140:
  %572 = load %nyx_string*, %nyx_string** %403
  %573 = getelementptr [9 x i8], [9 x i8]* @.str34, i32 0, i32 0
  %574 = call %nyx_string* @nyx_string_from_cstr(i8* %573)
  %575 = call i8* @nyx_string_to_cstr(%nyx_string* %572)
  %576 = call i8* @nyx_string_to_cstr(%nyx_string* %574)
  %577 = call i32 @strcmp(i8* %575, i8* %576)
  %578 = icmp eq i32 %577, 0
  br i1 %578, label %then141, label %else142
then141:
  %579 = call { i64, i8* }* @ty_string()
  ret { i64, i8* }* %579
else142:
  br label %merge143
merge143:
  %580 = load %nyx_string*, %nyx_string** %403
  %581 = getelementptr [5 x i8], [5 x i8]* @.str35, i32 0, i32 0
  %582 = call %nyx_string* @nyx_string_from_cstr(i8* %581)
  %583 = call i8* @nyx_string_to_cstr(%nyx_string* %580)
  %584 = call i8* @nyx_string_to_cstr(%nyx_string* %582)
  %585 = call i32 @strcmp(i8* %583, i8* %584)
  %586 = icmp eq i32 %585, 0
  br i1 %586, label %then144, label %else145
then144:
  %587 = call { i64, i8* }* @ty_string()
  ret { i64, i8* }* %587
else145:
  br label %merge146
merge146:
  %588 = load %nyx_string*, %nyx_string** %403
  %589 = getelementptr [10 x i8], [10 x i8]* @.str36, i32 0, i32 0
  %590 = call %nyx_string* @nyx_string_from_cstr(i8* %589)
  %591 = call i8* @nyx_string_to_cstr(%nyx_string* %588)
  %592 = call i8* @nyx_string_to_cstr(%nyx_string* %590)
  %593 = call i32 @strcmp(i8* %591, i8* %592)
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %then147, label %else148
then147:
  %595 = call { i64, i8* }* @ty_string()
  ret { i64, i8* }* %595
else148:
  br label %merge149
merge149:
  %596 = load %nyx_string*, %nyx_string** %403
  %597 = getelementptr [8 x i8], [8 x i8]* @.str37, i32 0, i32 0
  %598 = call %nyx_string* @nyx_string_from_cstr(i8* %597)
  %599 = call i8* @nyx_string_to_cstr(%nyx_string* %596)
  %600 = call i8* @nyx_string_to_cstr(%nyx_string* %598)
  %601 = call i32 @strcmp(i8* %599, i8* %600)
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %then150, label %else151
then150:
  %603 = call { i64, i8* }* @ty_string()
  ret { i64, i8* }* %603
else151:
  br label %merge152
merge152:
  %604 = load %nyx_string*, %nyx_string** %403
  %605 = getelementptr [7 x i8], [7 x i8]* @.str38, i32 0, i32 0
  %606 = call %nyx_string* @nyx_string_from_cstr(i8* %605)
  %607 = call i8* @nyx_string_to_cstr(%nyx_string* %604)
  %608 = call i8* @nyx_string_to_cstr(%nyx_string* %606)
  %609 = call i32 @strcmp(i8* %607, i8* %608)
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %then153, label %else154
then153:
  %611 = call { i64, i8* }* @ty_string()
  ret { i64, i8* }* %611
else154:
  br label %merge155
merge155:
  %612 = load %nyx_string*, %nyx_string** %403
  %613 = getelementptr [10 x i8], [10 x i8]* @.str39, i32 0, i32 0
  %614 = call %nyx_string* @nyx_string_from_cstr(i8* %613)
  %615 = call i8* @nyx_string_to_cstr(%nyx_string* %612)
  %616 = call i8* @nyx_string_to_cstr(%nyx_string* %614)
  %617 = call i32 @strcmp(i8* %615, i8* %616)
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %then156, label %else157
then156:
  %619 = call { i64, i8* }* @ty_string()
  ret { i64, i8* }* %619
else157:
  br label %merge158
merge158:
  %620 = load %nyx_string*, %nyx_string** %403
  %621 = getelementptr [5 x i8], [5 x i8]* @.str40, i32 0, i32 0
  %622 = call %nyx_string* @nyx_string_from_cstr(i8* %621)
  %623 = call i8* @nyx_string_to_cstr(%nyx_string* %620)
  %624 = call i8* @nyx_string_to_cstr(%nyx_string* %622)
  %625 = call i32 @strcmp(i8* %623, i8* %624)
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %then159, label %else160
then159:
  %627 = call { i64, i8* }* @ty_string()
  ret { i64, i8* }* %627
else160:
  br label %merge161
merge161:
  %628 = load %nyx_string*, %nyx_string** %403
  %629 = getelementptr [10 x i8], [10 x i8]* @.str41, i32 0, i32 0
  %630 = call %nyx_string* @nyx_string_from_cstr(i8* %629)
  %631 = call i8* @nyx_string_to_cstr(%nyx_string* %628)
  %632 = call i8* @nyx_string_to_cstr(%nyx_string* %630)
  %633 = call i32 @strcmp(i8* %631, i8* %632)
  %634 = icmp eq i32 %633, 0
  br i1 %634, label %then162, label %else163
then162:
  %635 = call { i64, i8* }* @ty_string()
  ret { i64, i8* }* %635
else163:
  br label %merge164
merge164:
  %636 = load %ASTNode, %ASTNode* %node.ptr
  %637 = call %ASTNode @get_node_at(%ASTNode %636, i64 0)
  %638 = alloca %ASTNode
  store %ASTNode %637, %ASTNode* %638
  %639 = load %ASTNode, %ASTNode* %638
  %640 = call { i64, i8* }* @ty_of_expr(%ASTNode %639)
  %641 = alloca { i64, i8* }*
  store { i64, i8* }* %640, { i64, i8* }** %641
  %642 = load { i64, i8* }*, { i64, i8* }** %641
  %643 = call i1 @ty_is_unknown({ i64, i8* }* %642)
  %644 = xor i1 %643, true
  br i1 %644, label %then165, label %else166
then165:
  %645 = load { i64, i8* }*, { i64, i8* }** %641
  %646 = call %nyx_string* @ty_kind({ i64, i8* }* %645)
  %647 = alloca %nyx_string*
  store %nyx_string* %646, %nyx_string** %647
  %648 = load %nyx_string*, %nyx_string** %647
  %649 = getelementptr [9 x i8], [9 x i8]* @.str42, i32 0, i32 0
  %650 = call %nyx_string* @nyx_string_from_cstr(i8* %649)
  %651 = call i8* @nyx_string_to_cstr(%nyx_string* %648)
  %652 = call i8* @nyx_string_to_cstr(%nyx_string* %650)
  %653 = call i32 @strcmp(i8* %651, i8* %652)
  %654 = icmp eq i32 %653, 0
  br i1 %654, label %then168, label %else169
then168:
  %655 = load { i64, i8* }*, { i64, i8* }** %641
  %656 = call i64 @nyx_array_get({ i64, i8* }* %655, i64 1)
  %657 = inttoptr i64 %656 to %nyx_string*
  %658 = alloca %nyx_string*
  store %nyx_string* %657, %nyx_string** %658
  %659 = load %nyx_string*, %nyx_string** %658
  %660 = load %nyx_string*, %nyx_string** %403
  %661 = call { i64, i8* }* @lookup_impl_method(%nyx_string* %659, %nyx_string* %660)
  %662 = alloca { i64, i8* }*
  store { i64, i8* }* %661, { i64, i8* }** %662
  %663 = load { i64, i8* }*, { i64, i8* }** %662
  %664 = call i64 @nyx_array_length({ i64, i8* }* %663)
  %665 = icmp eq i64 %664, 3
  br i1 %665, label %then171, label %else172
then171:
  %666 = load { i64, i8* }*, { i64, i8* }** %662
  %667 = call i64 @nyx_array_get({ i64, i8* }* %666, i64 0)
  %668 = inttoptr i64 %667 to { i64, i8* }*
  %669 = alloca { i64, i8* }*
  store { i64, i8* }* %668, { i64, i8* }** %669
  %670 = load { i64, i8* }*, { i64, i8* }** %662
  %671 = call i64 @nyx_array_get({ i64, i8* }* %670, i64 1)
  %672 = inttoptr i64 %671 to { i64, i8* }*
  %673 = alloca { i64, i8* }*
  store { i64, i8* }* %672, { i64, i8* }** %673
  %674 = load { i64, i8* }*, { i64, i8* }** %662
  %675 = call i64 @nyx_array_get({ i64, i8* }* %674, i64 2)
  %676 = inttoptr i64 %675 to { i64, i8* }*
  %677 = alloca { i64, i8* }*
  store { i64, i8* }* %676, { i64, i8* }** %677
  %678 = load { i64, i8* }*, { i64, i8* }** %677
  %679 = call i64 @nyx_array_length({ i64, i8* }* %678)
  %680 = icmp sgt i64 %679, 0
  br i1 %680, label %then174, label %else175
then174:
  %681 = load %ASTNode, %ASTNode* %node.ptr
  %682 = call { i64, i8* }* @get_array_at(%ASTNode %681, i64 1)
  %683 = alloca { i64, i8* }*
  store { i64, i8* }* %682, { i64, i8* }** %683
  %684 = call { i64, i8* }* @nyx_array_new_ptr()
  %685 = alloca { i64, i8* }*
  store { i64, i8* }* %684, { i64, i8* }** %685
  %686 = call { i64, i8* }* @nyx_array_new_ptr()
  %687 = alloca { i64, i8* }*
  store { i64, i8* }* %686, { i64, i8* }** %687
  %688 = alloca i64
  store i64 0, i64* %688
  br label %while_cond177
while_cond177:
  %689 = load i64, i64* %688
  %690 = load { i64, i8* }*, { i64, i8* }** %683
  %691 = call i64 @nyx_array_length({ i64, i8* }* %690)
  %692 = icmp slt i64 %689, %691
  br i1 %692, label %while_body178, label %while_end179
while_body178:
  %693 = load i64, i64* %688
  %694 = load { i64, i8* }*, { i64, i8* }** %669
  %695 = call i64 @nyx_array_length({ i64, i8* }* %694)
  %696 = icmp slt i64 %693, %695
  br i1 %696, label %then180, label %else181
then180:
  %697 = load { i64, i8* }*, { i64, i8* }** %669
  %698 = load i64, i64* %688
  %699 = call i64 @nyx_array_get({ i64, i8* }* %697, i64 %698)
  %700 = inttoptr i64 %699 to { i64, i8* }*
  %701 = alloca { i64, i8* }*
  store { i64, i8* }* %700, { i64, i8* }** %701
  %702 = load { i64, i8* }*, { i64, i8* }** %701
  %703 = call i1 @ty_is_unknown({ i64, i8* }* %702)
  %704 = xor i1 %703, true
  br i1 %704, label %then183, label %else184
then183:
  %705 = load { i64, i8* }*, { i64, i8* }** %683
  %706 = load i64, i64* %688
  %707 = call i64 @nyx_array_get({ i64, i8* }* %705, i64 %706)
  %708 = inttoptr i64 %707 to { i64, i8* }*
  %709 = call i64 @nyx_array_get({ i64, i8* }* %708, i64 0)
  %710 = call i64 @nyx_array_get({ i64, i8* }* %708, i64 1)
  %711 = inttoptr i64 %709 to %nyx_string*
  %712 = inttoptr i64 %710 to { i64, i8* }*
  %713 = alloca %ASTNode
  %714 = getelementptr inbounds %ASTNode, %ASTNode* %713, i32 0, i32 0
  store %nyx_string* %711, %nyx_string** %714
  %715 = getelementptr inbounds %ASTNode, %ASTNode* %713, i32 0, i32 1
  store { i64, i8* }* %712, { i64, i8* }** %715
  %716 = load %ASTNode, %ASTNode* %713
  %717 = alloca %ASTNode
  store %ASTNode %716, %ASTNode* %717
  %718 = load %ASTNode, %ASTNode* %717
  %719 = call { i64, i8* }* @ty_of_expr(%ASTNode %718)
  %720 = alloca { i64, i8* }*
  store { i64, i8* }* %719, { i64, i8* }** %720
  %721 = load { i64, i8* }*, { i64, i8* }** %720
  %722 = call i1 @ty_is_unknown({ i64, i8* }* %721)
  %723 = xor i1 %722, true
  br i1 %723, label %then186, label %else187
then186:
  %724 = load { i64, i8* }*, { i64, i8* }** %701
  %725 = load { i64, i8* }*, { i64, i8* }** %720
  %726 = load { i64, i8* }*, { i64, i8* }** %677
  %727 = load { i64, i8* }*, { i64, i8* }** %685
  %728 = load { i64, i8* }*, { i64, i8* }** %687
  %729 = call i1 @unify({ i64, i8* }* %724, { i64, i8* }* %725, { i64, i8* }* %726, { i64, i8* }* %727, { i64, i8* }* %728)
  br label %merge188
else187:
  br label %merge188
merge188:
  br label %merge185
else184:
  br label %merge185
merge185:
  br label %merge182
else181:
  br label %merge182
merge182:
  %730 = load i64, i64* %688
  %731 = add i64 %730, 1
  store i64 %731, i64* %688
  br label %while_cond177
while_end179:
  %732 = load { i64, i8* }*, { i64, i8* }** %673
  %733 = load { i64, i8* }*, { i64, i8* }** %685
  %734 = load { i64, i8* }*, { i64, i8* }** %687
  %735 = call { i64, i8* }* @subst_apply({ i64, i8* }* %732, { i64, i8* }* %733, { i64, i8* }* %734)
  ret { i64, i8* }* %735
else175:
  br label %merge176
merge176:
  %736 = load { i64, i8* }*, { i64, i8* }** %673
  ret { i64, i8* }* %736
else172:
  br label %merge173
merge173:
  br label %merge170
else169:
  br label %merge170
merge170:
  %737 = load %nyx_string*, %nyx_string** %647
  %738 = getelementptr [7 x i8], [7 x i8]* @.str43, i32 0, i32 0
  %739 = call %nyx_string* @nyx_string_from_cstr(i8* %738)
  %740 = call i8* @nyx_string_to_cstr(%nyx_string* %737)
  %741 = call i8* @nyx_string_to_cstr(%nyx_string* %739)
  %742 = call i32 @strcmp(i8* %740, i8* %741)
  %743 = icmp eq i32 %742, 0
  br i1 %743, label %then189, label %else190
then189:
  %744 = load { i64, i8* }*, { i64, i8* }** %641
  %745 = call i64 @nyx_array_get({ i64, i8* }* %744, i64 1)
  %746 = inttoptr i64 %745 to %nyx_string*
  %747 = alloca %nyx_string*
  store %nyx_string* %746, %nyx_string** %747
  %748 = load %nyx_string*, %nyx_string** %747
  %749 = load %nyx_string*, %nyx_string** %403
  %750 = call { i64, i8* }* @lookup_impl_method(%nyx_string* %748, %nyx_string* %749)
  %751 = alloca { i64, i8* }*
  store { i64, i8* }* %750, { i64, i8* }** %751
  %752 = load { i64, i8* }*, { i64, i8* }** %751
  %753 = call i64 @nyx_array_length({ i64, i8* }* %752)
  %754 = icmp eq i64 %753, 3
  br i1 %754, label %then192, label %else193
then192:
  %755 = load { i64, i8* }*, { i64, i8* }** %751
  %756 = call i64 @nyx_array_get({ i64, i8* }* %755, i64 0)
  %757 = inttoptr i64 %756 to { i64, i8* }*
  %758 = alloca { i64, i8* }*
  store { i64, i8* }* %757, { i64, i8* }** %758
  %759 = load { i64, i8* }*, { i64, i8* }** %751
  %760 = call i64 @nyx_array_get({ i64, i8* }* %759, i64 1)
  %761 = inttoptr i64 %760 to { i64, i8* }*
  %762 = alloca { i64, i8* }*
  store { i64, i8* }* %761, { i64, i8* }** %762
  %763 = load { i64, i8* }*, { i64, i8* }** %751
  %764 = call i64 @nyx_array_get({ i64, i8* }* %763, i64 2)
  %765 = inttoptr i64 %764 to { i64, i8* }*
  %766 = alloca { i64, i8* }*
  store { i64, i8* }* %765, { i64, i8* }** %766
  %767 = load { i64, i8* }*, { i64, i8* }** %766
  %768 = call i64 @nyx_array_length({ i64, i8* }* %767)
  %769 = icmp sgt i64 %768, 0
  br i1 %769, label %then195, label %else196
then195:
  %770 = load %ASTNode, %ASTNode* %node.ptr
  %771 = call { i64, i8* }* @get_array_at(%ASTNode %770, i64 1)
  %772 = alloca { i64, i8* }*
  store { i64, i8* }* %771, { i64, i8* }** %772
  %773 = call { i64, i8* }* @nyx_array_new_ptr()
  %774 = alloca { i64, i8* }*
  store { i64, i8* }* %773, { i64, i8* }** %774
  %775 = call { i64, i8* }* @nyx_array_new_ptr()
  %776 = alloca { i64, i8* }*
  store { i64, i8* }* %775, { i64, i8* }** %776
  %777 = alloca i64
  store i64 0, i64* %777
  br label %while_cond198
while_cond198:
  %778 = load i64, i64* %777
  %779 = load { i64, i8* }*, { i64, i8* }** %772
  %780 = call i64 @nyx_array_length({ i64, i8* }* %779)
  %781 = icmp slt i64 %778, %780
  br i1 %781, label %while_body199, label %while_end200
while_body199:
  %782 = load i64, i64* %777
  %783 = load { i64, i8* }*, { i64, i8* }** %758
  %784 = call i64 @nyx_array_length({ i64, i8* }* %783)
  %785 = icmp slt i64 %782, %784
  br i1 %785, label %then201, label %else202
then201:
  %786 = load { i64, i8* }*, { i64, i8* }** %758
  %787 = load i64, i64* %777
  %788 = call i64 @nyx_array_get({ i64, i8* }* %786, i64 %787)
  %789 = inttoptr i64 %788 to { i64, i8* }*
  %790 = alloca { i64, i8* }*
  store { i64, i8* }* %789, { i64, i8* }** %790
  %791 = load { i64, i8* }*, { i64, i8* }** %790
  %792 = call i1 @ty_is_unknown({ i64, i8* }* %791)
  %793 = xor i1 %792, true
  br i1 %793, label %then204, label %else205
then204:
  %794 = load { i64, i8* }*, { i64, i8* }** %772
  %795 = load i64, i64* %777
  %796 = call i64 @nyx_array_get({ i64, i8* }* %794, i64 %795)
  %797 = inttoptr i64 %796 to { i64, i8* }*
  %798 = call i64 @nyx_array_get({ i64, i8* }* %797, i64 0)
  %799 = call i64 @nyx_array_get({ i64, i8* }* %797, i64 1)
  %800 = inttoptr i64 %798 to %nyx_string*
  %801 = inttoptr i64 %799 to { i64, i8* }*
  %802 = alloca %ASTNode
  %803 = getelementptr inbounds %ASTNode, %ASTNode* %802, i32 0, i32 0
  store %nyx_string* %800, %nyx_string** %803
  %804 = getelementptr inbounds %ASTNode, %ASTNode* %802, i32 0, i32 1
  store { i64, i8* }* %801, { i64, i8* }** %804
  %805 = load %ASTNode, %ASTNode* %802
  %806 = alloca %ASTNode
  store %ASTNode %805, %ASTNode* %806
  %807 = load %ASTNode, %ASTNode* %806
  %808 = call { i64, i8* }* @ty_of_expr(%ASTNode %807)
  %809 = alloca { i64, i8* }*
  store { i64, i8* }* %808, { i64, i8* }** %809
  %810 = load { i64, i8* }*, { i64, i8* }** %809
  %811 = call i1 @ty_is_unknown({ i64, i8* }* %810)
  %812 = xor i1 %811, true
  br i1 %812, label %then207, label %else208
then207:
  %813 = load { i64, i8* }*, { i64, i8* }** %790
  %814 = load { i64, i8* }*, { i64, i8* }** %809
  %815 = load { i64, i8* }*, { i64, i8* }** %766
  %816 = load { i64, i8* }*, { i64, i8* }** %774
  %817 = load { i64, i8* }*, { i64, i8* }** %776
  %818 = call i1 @unify({ i64, i8* }* %813, { i64, i8* }* %814, { i64, i8* }* %815, { i64, i8* }* %816, { i64, i8* }* %817)
  br label %merge209
else208:
  br label %merge209
merge209:
  br label %merge206
else205:
  br label %merge206
merge206:
  br label %merge203
else202:
  br label %merge203
merge203:
  %819 = load i64, i64* %777
  %820 = add i64 %819, 1
  store i64 %820, i64* %777
  br label %while_cond198
while_end200:
  %821 = load { i64, i8* }*, { i64, i8* }** %762
  %822 = load { i64, i8* }*, { i64, i8* }** %774
  %823 = load { i64, i8* }*, { i64, i8* }** %776
  %824 = call { i64, i8* }* @subst_apply({ i64, i8* }* %821, { i64, i8* }* %822, { i64, i8* }* %823)
  ret { i64, i8* }* %824
else196:
  br label %merge197
merge197:
  %825 = load { i64, i8* }*, { i64, i8* }** %762
  ret { i64, i8* }* %825
else193:
  br label %merge194
merge194:
  br label %merge191
else190:
  br label %merge191
merge191:
  br label %merge167
else166:
  br label %merge167
merge167:
  %826 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %826
else76:
  br label %merge77
merge77:
  %827 = load %nyx_string*, %nyx_string** %248
  %828 = getelementptr [5 x i8], [5 x i8]* @.str44, i32 0, i32 0
  %829 = call %nyx_string* @nyx_string_from_cstr(i8* %828)
  %830 = call i8* @nyx_string_to_cstr(%nyx_string* %827)
  %831 = call i8* @nyx_string_to_cstr(%nyx_string* %829)
  %832 = call i32 @strcmp(i8* %830, i8* %831)
  %833 = icmp eq i32 %832, 0
  br i1 %833, label %then210, label %else211
then210:
  %834 = load %ASTNode, %ASTNode* %node.ptr
  %835 = call %nyx_string* @get_string_at(%ASTNode %834, i64 0)
  %836 = alloca %nyx_string*
  store %nyx_string* %835, %nyx_string** %836
  %837 = load %ASTNode, %ASTNode* %node.ptr
  %838 = call %ASTNode @get_node_at(%ASTNode %837, i64 1)
  %839 = alloca %ASTNode
  store %ASTNode %838, %ASTNode* %839
  %840 = load %ASTNode, %ASTNode* %839
  %841 = call { i64, i8* }* @ty_of_expr(%ASTNode %840)
  %842 = alloca { i64, i8* }*
  store { i64, i8* }* %841, { i64, i8* }** %842
  %843 = load %nyx_string*, %nyx_string** %836
  %844 = getelementptr [4 x i8], [4 x i8]* @.str45, i32 0, i32 0
  %845 = call %nyx_string* @nyx_string_from_cstr(i8* %844)
  %846 = call i8* @nyx_string_to_cstr(%nyx_string* %843)
  %847 = call i8* @nyx_string_to_cstr(%nyx_string* %845)
  %848 = call i32 @strcmp(i8* %846, i8* %847)
  %849 = icmp eq i32 %848, 0
  br i1 %849, label %then213, label %else214
then213:
  %850 = call { i64, i8* }* @ty_bool()
  ret { i64, i8* }* %850
else214:
  br label %merge215
merge215:
  %851 = load %nyx_string*, %nyx_string** %836
  %852 = getelementptr [6 x i8], [6 x i8]* @.str46, i32 0, i32 0
  %853 = call %nyx_string* @nyx_string_from_cstr(i8* %852)
  %854 = call i8* @nyx_string_to_cstr(%nyx_string* %851)
  %855 = call i8* @nyx_string_to_cstr(%nyx_string* %853)
  %856 = call i32 @strcmp(i8* %854, i8* %855)
  %857 = icmp eq i32 %856, 0
  br i1 %857, label %then216, label %else217
then216:
  %858 = call { i64, i8* }* @ty_int()
  ret { i64, i8* }* %858
else217:
  br label %merge218
merge218:
  %859 = load %nyx_string*, %nyx_string** %836
  %860 = getelementptr [6 x i8], [6 x i8]* @.str47, i32 0, i32 0
  %861 = call %nyx_string* @nyx_string_from_cstr(i8* %860)
  %862 = call i8* @nyx_string_to_cstr(%nyx_string* %859)
  %863 = call i8* @nyx_string_to_cstr(%nyx_string* %861)
  %864 = call i32 @strcmp(i8* %862, i8* %863)
  %865 = icmp eq i32 %864, 0
  br i1 %865, label %then219, label %else220
then219:
  %866 = load { i64, i8* }*, { i64, i8* }** %842
  %867 = call i1 @ty_is_unknown({ i64, i8* }* %866)
  br i1 %867, label %then222, label %else223
then222:
  %868 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %868
else223:
  br label %merge224
merge224:
  %869 = load { i64, i8* }*, { i64, i8* }** %842
  %870 = call i1 @is_numeric_ty({ i64, i8* }* %869)
  br i1 %870, label %then225, label %else226
then225:
  %871 = load { i64, i8* }*, { i64, i8* }** %842
  ret { i64, i8* }* %871
else226:
  br label %merge227
merge227:
  %872 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %872
else220:
  br label %merge221
merge221:
  %873 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %873
else211:
  br label %merge212
merge212:
  %874 = load %nyx_string*, %nyx_string** %248
  %875 = getelementptr [12 x i8], [12 x i8]* @.str48, i32 0, i32 0
  %876 = call %nyx_string* @nyx_string_from_cstr(i8* %875)
  %877 = call i8* @nyx_string_to_cstr(%nyx_string* %874)
  %878 = call i8* @nyx_string_to_cstr(%nyx_string* %876)
  %879 = call i32 @strcmp(i8* %877, i8* %878)
  %880 = icmp eq i32 %879, 0
  br i1 %880, label %then228, label %else229
then228:
  %881 = load %ASTNode, %ASTNode* %node.ptr
  %882 = call %nyx_string* @get_string_at(%ASTNode %881, i64 0)
  %883 = alloca %nyx_string*
  store %nyx_string* %882, %nyx_string** %883
  %884 = load %nyx_string*, %nyx_string** %883
  %885 = call { i64, i8* }* @nyx_array_new_ptr()
  %886 = call { i64, i8* }* @ty_struct_ty(%nyx_string* %884, { i64, i8* }* %885)
  ret { i64, i8* }* %886
else229:
  br label %merge230
merge230:
  %887 = load %nyx_string*, %nyx_string** %248
  %888 = getelementptr [13 x i8], [13 x i8]* @.str49, i32 0, i32 0
  %889 = call %nyx_string* @nyx_string_from_cstr(i8* %888)
  %890 = call i8* @nyx_string_to_cstr(%nyx_string* %887)
  %891 = call i8* @nyx_string_to_cstr(%nyx_string* %889)
  %892 = call i32 @strcmp(i8* %890, i8* %891)
  %893 = icmp eq i32 %892, 0
  br i1 %893, label %then231, label %else232
then231:
  %894 = load %ASTNode, %ASTNode* %node.ptr
  %895 = call %ASTNode @get_node_at(%ASTNode %894, i64 0)
  %896 = alloca %ASTNode
  store %ASTNode %895, %ASTNode* %896
  %897 = load %ASTNode, %ASTNode* %node.ptr
  %898 = call %nyx_string* @get_string_at(%ASTNode %897, i64 1)
  %899 = alloca %nyx_string*
  store %nyx_string* %898, %nyx_string** %899
  %900 = load %ASTNode, %ASTNode* %896
  %901 = call { i64, i8* }* @ty_of_expr(%ASTNode %900)
  %902 = alloca { i64, i8* }*
  store { i64, i8* }* %901, { i64, i8* }** %902
  %903 = load { i64, i8* }*, { i64, i8* }** %902
  %904 = call %nyx_string* @ty_kind({ i64, i8* }* %903)
  %905 = getelementptr [9 x i8], [9 x i8]* @.str50, i32 0, i32 0
  %906 = call %nyx_string* @nyx_string_from_cstr(i8* %905)
  %907 = call i8* @nyx_string_to_cstr(%nyx_string* %904)
  %908 = call i8* @nyx_string_to_cstr(%nyx_string* %906)
  %909 = call i32 @strcmp(i8* %907, i8* %908)
  %910 = icmp eq i32 %909, 0
  br i1 %910, label %then234, label %else235
then234:
  %911 = load { i64, i8* }*, { i64, i8* }** %902
  %912 = call i64 @nyx_array_get({ i64, i8* }* %911, i64 1)
  %913 = inttoptr i64 %912 to %nyx_string*
  %914 = alloca %nyx_string*
  store %nyx_string* %913, %nyx_string** %914
  %915 = load %nyx_string*, %nyx_string** %914
  %916 = load %nyx_string*, %nyx_string** %899
  %917 = call { i64, i8* }* @lookup_struct_field_type(%nyx_string* %915, %nyx_string* %916)
  ret { i64, i8* }* %917
else235:
  br label %merge236
merge236:
  %918 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %918
else232:
  br label %merge233
merge233:
  %919 = load %nyx_string*, %nyx_string** %248
  %920 = getelementptr [6 x i8], [6 x i8]* @.str51, i32 0, i32 0
  %921 = call %nyx_string* @nyx_string_from_cstr(i8* %920)
  %922 = call i8* @nyx_string_to_cstr(%nyx_string* %919)
  %923 = call i8* @nyx_string_to_cstr(%nyx_string* %921)
  %924 = call i32 @strcmp(i8* %922, i8* %923)
  %925 = icmp eq i32 %924, 0
  br i1 %925, label %then237, label %else238
then237:
  %926 = load %ASTNode, %ASTNode* %node.ptr
  %927 = call %ASTNode @get_node_at(%ASTNode %926, i64 0)
  %928 = alloca %ASTNode
  store %ASTNode %927, %ASTNode* %928
  %929 = load %ASTNode, %ASTNode* %928
  %930 = call { i64, i8* }* @ty_of_expr(%ASTNode %929)
  %931 = alloca { i64, i8* }*
  store { i64, i8* }* %930, { i64, i8* }** %931
  %932 = load { i64, i8* }*, { i64, i8* }** %931
  %933 = call %nyx_string* @ty_kind({ i64, i8* }* %932)
  %934 = alloca %nyx_string*
  store %nyx_string* %933, %nyx_string** %934
  %935 = load %nyx_string*, %nyx_string** %934
  %936 = getelementptr [8 x i8], [8 x i8]* @.str52, i32 0, i32 0
  %937 = call %nyx_string* @nyx_string_from_cstr(i8* %936)
  %938 = call i8* @nyx_string_to_cstr(%nyx_string* %935)
  %939 = call i8* @nyx_string_to_cstr(%nyx_string* %937)
  %940 = call i32 @strcmp(i8* %938, i8* %939)
  %941 = icmp eq i32 %940, 0
  br i1 %941, label %then240, label %else241
then240:
  %942 = load { i64, i8* }*, { i64, i8* }** %931
  %943 = call i64 @nyx_array_get({ i64, i8* }* %942, i64 1)
  %944 = inttoptr i64 %943 to { i64, i8* }*
  ret { i64, i8* }* %944
else241:
  br label %merge242
merge242:
  %945 = load %nyx_string*, %nyx_string** %934
  %946 = getelementptr [6 x i8], [6 x i8]* @.str53, i32 0, i32 0
  %947 = call %nyx_string* @nyx_string_from_cstr(i8* %946)
  %948 = call i8* @nyx_string_to_cstr(%nyx_string* %945)
  %949 = call i8* @nyx_string_to_cstr(%nyx_string* %947)
  %950 = call i32 @strcmp(i8* %948, i8* %949)
  %951 = icmp eq i32 %950, 0
  br i1 %951, label %then243, label %else244
then243:
  %952 = load { i64, i8* }*, { i64, i8* }** %931
  %953 = call i64 @nyx_array_get({ i64, i8* }* %952, i64 2)
  %954 = inttoptr i64 %953 to { i64, i8* }*
  ret { i64, i8* }* %954
else244:
  br label %merge245
merge245:
  %955 = load %nyx_string*, %nyx_string** %934
  %956 = getelementptr [9 x i8], [9 x i8]* @.str54, i32 0, i32 0
  %957 = call %nyx_string* @nyx_string_from_cstr(i8* %956)
  %958 = call i8* @nyx_string_to_cstr(%nyx_string* %955)
  %959 = call i8* @nyx_string_to_cstr(%nyx_string* %957)
  %960 = call i32 @strcmp(i8* %958, i8* %959)
  %961 = icmp eq i32 %960, 0
  br i1 %961, label %then246, label %else247
then246:
  %962 = call { i64, i8* }* @ty_char()
  ret { i64, i8* }* %962
else247:
  br label %merge248
merge248:
  %963 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %963
else238:
  br label %merge239
merge239:
  %964 = load %ASTNode, %ASTNode* %node.ptr
  %965 = call { i64, i8* }* @ty_of_literal(%ASTNode %964)
  ret { i64, i8* }* %965
}

define internal i1 @is_known_type_name(
%nyx_string* %name.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %966 = call { i64, i8* }* @known_primitive_names()
  %967 = alloca { i64, i8* }*
  store { i64, i8* }* %966, { i64, i8* }** %967
  %968 = alloca i64
  store i64 0, i64* %968
  br label %while_cond249
while_cond249:
  %969 = load i64, i64* %968
  %970 = load { i64, i8* }*, { i64, i8* }** %967
  %971 = call i64 @nyx_array_length({ i64, i8* }* %970)
  %972 = icmp slt i64 %969, %971
  br i1 %972, label %while_body250, label %while_end251
while_body250:
  %973 = load { i64, i8* }*, { i64, i8* }** %967
  %974 = load i64, i64* %968
  %975 = call i64 @nyx_array_get({ i64, i8* }* %973, i64 %974)
  %976 = inttoptr i64 %975 to %nyx_string*
  %977 = alloca %nyx_string*
  store %nyx_string* %976, %nyx_string** %977
  %978 = load %nyx_string*, %nyx_string** %977
  %979 = load %nyx_string*, %nyx_string** %name.ptr
  %980 = call i8* @nyx_string_to_cstr(%nyx_string* %978)
  %981 = call i8* @nyx_string_to_cstr(%nyx_string* %979)
  %982 = call i32 @strcmp(i8* %980, i8* %981)
  %983 = icmp eq i32 %982, 0
  br i1 %983, label %then252, label %else253
then252:
  ret i1 1
else253:
  br label %merge254
merge254:
  %984 = load i64, i64* %968
  %985 = add i64 %984, 1
  store i64 %985, i64* %968
  br label %while_cond249
while_end251:
  store i64 0, i64* %968
  br label %while_cond255
while_cond255:
  %986 = load i64, i64* %968
  %987 = load i64, i64* @g_struct_reg_count
  %988 = icmp slt i64 %986, %987
  br i1 %988, label %while_body256, label %while_end257
while_body256:
  %989 = load { i64, i8* }*, { i64, i8* }** @g_struct_reg_names
  %990 = load i64, i64* %968
  %991 = call i64 @nyx_array_get({ i64, i8* }* %989, i64 %990)
  %992 = inttoptr i64 %991 to %nyx_string*
  %993 = alloca %nyx_string*
  store %nyx_string* %992, %nyx_string** %993
  %994 = load %nyx_string*, %nyx_string** %993
  %995 = load %nyx_string*, %nyx_string** %name.ptr
  %996 = call i8* @nyx_string_to_cstr(%nyx_string* %994)
  %997 = call i8* @nyx_string_to_cstr(%nyx_string* %995)
  %998 = call i32 @strcmp(i8* %996, i8* %997)
  %999 = icmp eq i32 %998, 0
  br i1 %999, label %then258, label %else259
then258:
  ret i1 1
else259:
  br label %merge260
merge260:
  %1000 = load i64, i64* %968
  %1001 = add i64 %1000, 1
  store i64 %1001, i64* %968
  br label %while_cond255
while_end257:
  store i64 0, i64* %968
  br label %while_cond261
while_cond261:
  %1002 = load i64, i64* %968
  %1003 = load i64, i64* @g_enum_reg_count
  %1004 = icmp slt i64 %1002, %1003
  br i1 %1004, label %while_body262, label %while_end263
while_body262:
  %1005 = load { i64, i8* }*, { i64, i8* }** @g_enum_reg_names
  %1006 = load i64, i64* %968
  %1007 = call i64 @nyx_array_get({ i64, i8* }* %1005, i64 %1006)
  %1008 = inttoptr i64 %1007 to %nyx_string*
  %1009 = alloca %nyx_string*
  store %nyx_string* %1008, %nyx_string** %1009
  %1010 = load %nyx_string*, %nyx_string** %1009
  %1011 = load %nyx_string*, %nyx_string** %name.ptr
  %1012 = call i8* @nyx_string_to_cstr(%nyx_string* %1010)
  %1013 = call i8* @nyx_string_to_cstr(%nyx_string* %1011)
  %1014 = call i32 @strcmp(i8* %1012, i8* %1013)
  %1015 = icmp eq i32 %1014, 0
  br i1 %1015, label %then264, label %else265
then264:
  ret i1 1
else265:
  br label %merge266
merge266:
  %1016 = load i64, i64* %968
  %1017 = add i64 %1016, 1
  store i64 %1017, i64* %968
  br label %while_cond261
while_end263:
  store i64 0, i64* %968
  br label %while_cond267
while_cond267:
  %1018 = load i64, i64* %968
  %1019 = load i64, i64* @g_alias_count
  %1020 = icmp slt i64 %1018, %1019
  br i1 %1020, label %while_body268, label %while_end269
while_body268:
  %1021 = load { i64, i8* }*, { i64, i8* }** @g_alias_names
  %1022 = load i64, i64* %968
  %1023 = call i64 @nyx_array_get({ i64, i8* }* %1021, i64 %1022)
  %1024 = inttoptr i64 %1023 to %nyx_string*
  %1025 = alloca %nyx_string*
  store %nyx_string* %1024, %nyx_string** %1025
  %1026 = load %nyx_string*, %nyx_string** %1025
  %1027 = load %nyx_string*, %nyx_string** %name.ptr
  %1028 = call i8* @nyx_string_to_cstr(%nyx_string* %1026)
  %1029 = call i8* @nyx_string_to_cstr(%nyx_string* %1027)
  %1030 = call i32 @strcmp(i8* %1028, i8* %1029)
  %1031 = icmp eq i32 %1030, 0
  br i1 %1031, label %then270, label %else271
then270:
  ret i1 1
else271:
  br label %merge272
merge272:
  %1032 = load i64, i64* %968
  %1033 = add i64 %1032, 1
  store i64 %1033, i64* %968
  br label %while_cond267
while_end269:
  ret i1 0
}

define internal { i64, i8* }* @known_type_names(
) {
  %1034 = call { i64, i8* }* @known_primitive_names()
  %1035 = alloca { i64, i8* }*
  store { i64, i8* }* %1034, { i64, i8* }** %1035
  %1036 = alloca i64
  store i64 0, i64* %1036
  br label %while_cond273
while_cond273:
  %1037 = load i64, i64* %1036
  %1038 = load i64, i64* @g_struct_reg_count
  %1039 = icmp slt i64 %1037, %1038
  br i1 %1039, label %while_body274, label %while_end275
while_body274:
  %1040 = load { i64, i8* }*, { i64, i8* }** @g_struct_reg_names
  %1041 = load i64, i64* %1036
  %1042 = call i64 @nyx_array_get({ i64, i8* }* %1040, i64 %1041)
  %1043 = inttoptr i64 %1042 to %nyx_string*
  %1044 = alloca %nyx_string*
  store %nyx_string* %1043, %nyx_string** %1044
  %1045 = load { i64, i8* }*, { i64, i8* }** %1035
  %1046 = load %nyx_string*, %nyx_string** %1044
  %1047 = ptrtoint %nyx_string* %1046 to i64
  call void @nyx_array_push({ i64, i8* }* %1045, i64 %1047)
  %1048 = load i64, i64* %1036
  %1049 = add i64 %1048, 1
  store i64 %1049, i64* %1036
  br label %while_cond273
while_end275:
  store i64 0, i64* %1036
  br label %while_cond276
while_cond276:
  %1050 = load i64, i64* %1036
  %1051 = load i64, i64* @g_enum_reg_count
  %1052 = icmp slt i64 %1050, %1051
  br i1 %1052, label %while_body277, label %while_end278
while_body277:
  %1053 = load { i64, i8* }*, { i64, i8* }** @g_enum_reg_names
  %1054 = load i64, i64* %1036
  %1055 = call i64 @nyx_array_get({ i64, i8* }* %1053, i64 %1054)
  %1056 = inttoptr i64 %1055 to %nyx_string*
  %1057 = alloca %nyx_string*
  store %nyx_string* %1056, %nyx_string** %1057
  %1058 = load { i64, i8* }*, { i64, i8* }** %1035
  %1059 = load %nyx_string*, %nyx_string** %1057
  %1060 = ptrtoint %nyx_string* %1059 to i64
  call void @nyx_array_push({ i64, i8* }* %1058, i64 %1060)
  %1061 = load i64, i64* %1036
  %1062 = add i64 %1061, 1
  store i64 %1062, i64* %1036
  br label %while_cond276
while_end278:
  store i64 0, i64* %1036
  br label %while_cond279
while_cond279:
  %1063 = load i64, i64* %1036
  %1064 = load i64, i64* @g_alias_count
  %1065 = icmp slt i64 %1063, %1064
  br i1 %1065, label %while_body280, label %while_end281
while_body280:
  %1066 = load { i64, i8* }*, { i64, i8* }** @g_alias_names
  %1067 = load i64, i64* %1036
  %1068 = call i64 @nyx_array_get({ i64, i8* }* %1066, i64 %1067)
  %1069 = inttoptr i64 %1068 to %nyx_string*
  %1070 = alloca %nyx_string*
  store %nyx_string* %1069, %nyx_string** %1070
  %1071 = load { i64, i8* }*, { i64, i8* }** %1035
  %1072 = load %nyx_string*, %nyx_string** %1070
  %1073 = ptrtoint %nyx_string* %1072 to i64
  call void @nyx_array_push({ i64, i8* }* %1071, i64 %1073)
  %1074 = load i64, i64* %1036
  %1075 = add i64 %1074, 1
  store i64 %1075, i64* %1036
  br label %while_cond279
while_end281:
  %1076 = load { i64, i8* }*, { i64, i8* }** %1035
  ret { i64, i8* }* %1076
}

define internal { i64, i8* }* @validate_type_ann(
%nyx_string* %ann.param) {
  %ann.ptr = alloca %nyx_string*
  store %nyx_string* %ann.param, %nyx_string** %ann.ptr
  %1077 = load %nyx_string*, %nyx_string** %ann.ptr
  %1078 = getelementptr [1 x i8], [1 x i8]* @.str55, i32 0, i32 0
  %1079 = call %nyx_string* @nyx_string_from_cstr(i8* %1078)
  %1080 = call i8* @nyx_string_to_cstr(%nyx_string* %1077)
  %1081 = call i8* @nyx_string_to_cstr(%nyx_string* %1079)
  %1082 = call i32 @strcmp(i8* %1080, i8* %1081)
  %1083 = icmp eq i32 %1082, 0
  br i1 %1083, label %then282, label %else283
then282:
  %1084 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1084
else283:
  br label %merge284
merge284:
  %1085 = load %nyx_string*, %nyx_string** %ann.ptr
  %1086 = call i64 @nyx_string_length_utf8(%nyx_string* %1085)
  %1087 = icmp sgt i64 %1086, 0
  br i1 %1087, label %then285, label %else286
then285:
  %1088 = load %nyx_string*, %nyx_string** %ann.ptr
  %1089 = call i8 @nyx_string_char_at(%nyx_string* %1088, i64 0)
  %1090 = zext i8 %1089 to i64
  %1091 = alloca i64
  store i64 %1090, i64* %1091
  %1092 = load i64, i64* %1091
  %1093 = icmp eq i64 %1092, 40
  br i1 %1093, label %then288, label %else289
then288:
  %1094 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1094
else289:
  br label %merge290
merge290:
  %1095 = load i64, i64* %1091
  %1096 = icmp eq i64 %1095, 91
  br i1 %1096, label %then291, label %else292
then291:
  %1097 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1097
else292:
  br label %merge293
merge293:
  br label %merge287
else286:
  br label %merge287
merge287:
  %1098 = load %nyx_string*, %nyx_string** %ann.ptr
  %1099 = call { i64, i8* }* @ty_parse(%nyx_string* %1098)
  %1100 = alloca { i64, i8* }*
  store { i64, i8* }* %1099, { i64, i8* }** %1100
  %1101 = load { i64, i8* }*, { i64, i8* }** %1100
  %1102 = call %nyx_string* @ty_kind({ i64, i8* }* %1101)
  %1103 = alloca %nyx_string*
  store %nyx_string* %1102, %nyx_string** %1103
  %1104 = load %nyx_string*, %nyx_string** %1103
  %1105 = getelementptr [9 x i8], [9 x i8]* @.str56, i32 0, i32 0
  %1106 = call %nyx_string* @nyx_string_from_cstr(i8* %1105)
  %1107 = call i8* @nyx_string_to_cstr(%nyx_string* %1104)
  %1108 = call i8* @nyx_string_to_cstr(%nyx_string* %1106)
  %1109 = call i32 @strcmp(i8* %1107, i8* %1108)
  %1110 = icmp eq i32 %1109, 0
  br i1 %1110, label %then294, label %else295
then294:
  %1111 = load { i64, i8* }*, { i64, i8* }** %1100
  %1112 = call i64 @nyx_array_get({ i64, i8* }* %1111, i64 1)
  %1113 = inttoptr i64 %1112 to %nyx_string*
  %1114 = alloca %nyx_string*
  store %nyx_string* %1113, %nyx_string** %1114
  %1115 = load { i64, i8* }*, { i64, i8* }** %1100
  %1116 = call i64 @nyx_array_get({ i64, i8* }* %1115, i64 2)
  %1117 = inttoptr i64 %1116 to { i64, i8* }*
  %1118 = alloca { i64, i8* }*
  store { i64, i8* }* %1117, { i64, i8* }** %1118
  %1119 = load { i64, i8* }*, { i64, i8* }** %1118
  %1120 = call i64 @nyx_array_length({ i64, i8* }* %1119)
  %1121 = icmp eq i64 %1120, 0
  br i1 %1121, label %then297, label %else298
then297:
  %1122 = load %nyx_string*, %nyx_string** %1114
  %1123 = call i1 @is_known_type_name(%nyx_string* %1122)
  %1124 = xor i1 %1123, true
  br i1 %1124, label %then300, label %else301
then300:
  %1125 = load i1, i1* @g_has_imports
  br i1 %1125, label %then303, label %else304
then303:
  %1126 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1126
else304:
  br label %merge305
merge305:
  %1127 = load %nyx_string*, %nyx_string** %1114
  %1128 = call { i64, i8* }* @known_type_names()
  %1129 = call %nyx_string* @suggest_similar(%nyx_string* %1127, { i64, i8* }* %1128)
  %1130 = alloca %nyx_string*
  store %nyx_string* %1129, %nyx_string** %1130
  %1131 = getelementptr [19 x i8], [19 x i8]* @.str57, i32 0, i32 0
  %1132 = call %nyx_string* @nyx_string_from_cstr(i8* %1131)
  %1133 = load %nyx_string*, %nyx_string** %1114
  %1134 = call %nyx_string* @nyx_string_concat(%nyx_string* %1132, %nyx_string* %1133)
  %1135 = getelementptr [2 x i8], [2 x i8]* @.str58, i32 0, i32 0
  %1136 = call %nyx_string* @nyx_string_from_cstr(i8* %1135)
  %1137 = call %nyx_string* @nyx_string_concat(%nyx_string* %1134, %nyx_string* %1136)
  %1138 = getelementptr [15 x i8], [15 x i8]* @.str59, i32 0, i32 0
  %1139 = call %nyx_string* @nyx_string_from_cstr(i8* %1138)
  %1140 = load %nyx_string*, %nyx_string** %1114
  %1141 = call %nyx_string* @nyx_string_concat(%nyx_string* %1139, %nyx_string* %1140)
  %1142 = getelementptr [2 x i8], [2 x i8]* @.str60, i32 0, i32 0
  %1143 = call %nyx_string* @nyx_string_from_cstr(i8* %1142)
  %1144 = call %nyx_string* @nyx_string_concat(%nyx_string* %1141, %nyx_string* %1143)
  %1145 = call %nyx_string* @msg(%nyx_string* %1137, %nyx_string* %1144)
  %1146 = load %nyx_string*, %nyx_string** %1130
  %1147 = call %nyx_string* @nyx_string_concat(%nyx_string* %1145, %nyx_string* %1146)
  %1148 = call i64 @sem_error(%nyx_string* %1147)
  %1149 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %1149
else301:
  br label %merge302
merge302:
  br label %merge299
else298:
  br label %merge299
merge299:
  br label %merge296
else295:
  br label %merge296
merge296:
  %1150 = load { i64, i8* }*, { i64, i8* }** %1100
  %1151 = call { i64, i8* }* @resolve_type({ i64, i8* }* %1150)
  ret { i64, i8* }* %1151
}

define internal i64 @register_fn_sig(
%nyx_string* %name.param, { i64, i8* }* %params.param, { i64, i8* }* %ret.param, { i64, i8* }* %type_params.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %params.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %params.param, { i64, i8* }** %params.ptr
  %ret.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ret.param, { i64, i8* }** %ret.ptr
  %type_params.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %type_params.param, { i64, i8* }** %type_params.ptr
  %1152 = load { i64, i8* }*, { i64, i8* }** @g_fn_sig_names
  %1153 = load %nyx_string*, %nyx_string** %name.ptr
  %1154 = ptrtoint %nyx_string* %1153 to i64
  call void @nyx_array_push({ i64, i8* }* %1152, i64 %1154)
  %1155 = load { i64, i8* }*, { i64, i8* }** @g_fn_sig_params
  %1156 = load { i64, i8* }*, { i64, i8* }** %params.ptr
  %1157 = ptrtoint { i64, i8* }* %1156 to i64
  call void @nyx_array_push({ i64, i8* }* %1155, i64 %1157)
  %1158 = load { i64, i8* }*, { i64, i8* }** @g_fn_sig_returns
  %1159 = load { i64, i8* }*, { i64, i8* }** %ret.ptr
  %1160 = ptrtoint { i64, i8* }* %1159 to i64
  call void @nyx_array_push({ i64, i8* }* %1158, i64 %1160)
  %1161 = load { i64, i8* }*, { i64, i8* }** @g_fn_sig_type_params
  %1162 = load { i64, i8* }*, { i64, i8* }** %type_params.ptr
  %1163 = ptrtoint { i64, i8* }* %1162 to i64
  call void @nyx_array_push({ i64, i8* }* %1161, i64 %1163)
  %1164 = load i64, i64* @g_fn_sig_count
  %1165 = add i64 %1164, 1
  store i64 %1165, i64* @g_fn_sig_count
  ret i64 0
}

define internal { i64, i8* }* @lookup_fn_sig(
%nyx_string* %name.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %1166 = alloca i64
  store i64 0, i64* %1166
  br label %while_cond306
while_cond306:
  %1167 = load i64, i64* %1166
  %1168 = load i64, i64* @g_fn_sig_count
  %1169 = icmp slt i64 %1167, %1168
  br i1 %1169, label %while_body307, label %while_end308
while_body307:
  %1170 = load { i64, i8* }*, { i64, i8* }** @g_fn_sig_names
  %1171 = load i64, i64* %1166
  %1172 = call i64 @nyx_array_get({ i64, i8* }* %1170, i64 %1171)
  %1173 = inttoptr i64 %1172 to %nyx_string*
  %1174 = alloca %nyx_string*
  store %nyx_string* %1173, %nyx_string** %1174
  %1175 = load %nyx_string*, %nyx_string** %1174
  %1176 = load %nyx_string*, %nyx_string** %name.ptr
  %1177 = call i8* @nyx_string_to_cstr(%nyx_string* %1175)
  %1178 = call i8* @nyx_string_to_cstr(%nyx_string* %1176)
  %1179 = call i32 @strcmp(i8* %1177, i8* %1178)
  %1180 = icmp eq i32 %1179, 0
  br i1 %1180, label %then309, label %else310
then309:
  %1181 = load { i64, i8* }*, { i64, i8* }** @g_fn_sig_params
  %1182 = load i64, i64* %1166
  %1183 = call i64 @nyx_array_get({ i64, i8* }* %1181, i64 %1182)
  %1184 = inttoptr i64 %1183 to { i64, i8* }*
  %1185 = alloca { i64, i8* }*
  store { i64, i8* }* %1184, { i64, i8* }** %1185
  %1186 = load { i64, i8* }*, { i64, i8* }** @g_fn_sig_returns
  %1187 = load i64, i64* %1166
  %1188 = call i64 @nyx_array_get({ i64, i8* }* %1186, i64 %1187)
  %1189 = inttoptr i64 %1188 to { i64, i8* }*
  %1190 = alloca { i64, i8* }*
  store { i64, i8* }* %1189, { i64, i8* }** %1190
  %1191 = load { i64, i8* }*, { i64, i8* }** @g_fn_sig_type_params
  %1192 = load i64, i64* %1166
  %1193 = call i64 @nyx_array_get({ i64, i8* }* %1191, i64 %1192)
  %1194 = inttoptr i64 %1193 to { i64, i8* }*
  %1195 = alloca { i64, i8* }*
  store { i64, i8* }* %1194, { i64, i8* }** %1195
  %1196 = call { i64, i8* }* @nyx_array_new_ptr()
  %1197 = load { i64, i8* }*, { i64, i8* }** %1185
  %1198 = bitcast { i64, i8* }* %1197 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1196, i8* %1198)
  %1199 = load { i64, i8* }*, { i64, i8* }** %1190
  %1200 = bitcast { i64, i8* }* %1199 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1196, i8* %1200)
  %1201 = load { i64, i8* }*, { i64, i8* }** %1195
  %1202 = bitcast { i64, i8* }* %1201 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1196, i8* %1202)
  ret { i64, i8* }* %1196
else310:
  br label %merge311
merge311:
  %1203 = load i64, i64* %1166
  %1204 = add i64 %1203, 1
  store i64 %1204, i64* %1166
  br label %while_cond306
while_end308:
  %1205 = call { i64, i8* }* @nyx_array_new_ptr()
  ret { i64, i8* }* %1205
}

define internal { i64, i8* }* @extract_type_param_names(
{ i64, i8* }* %raw.param) {
  %raw.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %raw.param, { i64, i8* }** %raw.ptr
  %1206 = call { i64, i8* }* @nyx_array_new_ptr()
  %1207 = alloca { i64, i8* }*
  store { i64, i8* }* %1206, { i64, i8* }** %1207
  %1208 = alloca i64
  store i64 0, i64* %1208
  br label %while_cond312
while_cond312:
  %1209 = load i64, i64* %1208
  %1210 = load { i64, i8* }*, { i64, i8* }** %raw.ptr
  %1211 = call i64 @nyx_array_length({ i64, i8* }* %1210)
  %1212 = icmp slt i64 %1209, %1211
  br i1 %1212, label %while_body313, label %while_end314
while_body313:
  %1213 = load { i64, i8* }*, { i64, i8* }** %raw.ptr
  %1214 = load i64, i64* %1208
  %1215 = call i64 @nyx_array_get({ i64, i8* }* %1213, i64 %1214)
  %1216 = inttoptr i64 %1215 to %nyx_string*
  %1217 = alloca %nyx_string*
  store %nyx_string* %1216, %nyx_string** %1217
  %1218 = load %nyx_string*, %nyx_string** %1217
  %1219 = call %nyx_string* @nyx_string_trim(%nyx_string* %1218)
  %1220 = alloca %nyx_string*
  store %nyx_string* %1219, %nyx_string** %1220
  %1221 = load %nyx_string*, %nyx_string** %1220
  %1222 = call i64 @nyx_string_length_utf8(%nyx_string* %1221)
  %1223 = icmp sgt i64 %1222, 0
  br i1 %1223, label %then315, label %else316
then315:
  %1224 = load %nyx_string*, %nyx_string** %1220
  %1225 = call i8 @nyx_string_char_at(%nyx_string* %1224, i64 0)
  %1226 = zext i8 %1225 to i64
  %1227 = alloca i64
  store i64 %1226, i64* %1227
  %1228 = load i64, i64* %1227
  %1229 = icmp ne i64 %1228, 39
  br i1 %1229, label %then318, label %else319
then318:
  %1230 = load %nyx_string*, %nyx_string** %1220
  %1231 = alloca %nyx_string*
  store %nyx_string* %1230, %nyx_string** %1231
  %1232 = load %nyx_string*, %nyx_string** %1231
  %1233 = getelementptr [2 x i8], [2 x i8]* @.str61, i32 0, i32 0
  %1234 = call %nyx_string* @nyx_string_from_cstr(i8* %1233)
  %1235 = call i64 @nyx_string_index_of(%nyx_string* %1232, %nyx_string* %1234)
  %1236 = alloca i64
  store i64 %1235, i64* %1236
  %1237 = load i64, i64* %1236
  %1238 = icmp sgt i64 %1237, 0
  br i1 %1238, label %then321, label %else322
then321:
  %1239 = load %nyx_string*, %nyx_string** %1231
  %1240 = load i64, i64* %1236
  %1241 = call %nyx_string* @nyx_string_substring(%nyx_string* %1239, i64 0, i64 %1240)
  %1242 = call %nyx_string* @nyx_string_trim(%nyx_string* %1241)
  store %nyx_string* %1242, %nyx_string** %1231
  br label %merge323
else322:
  br label %merge323
merge323:
  %1243 = load %nyx_string*, %nyx_string** %1231
  %1244 = getelementptr [2 x i8], [2 x i8]* @.str62, i32 0, i32 0
  %1245 = call %nyx_string* @nyx_string_from_cstr(i8* %1244)
  %1246 = call i64 @nyx_string_index_of(%nyx_string* %1243, %nyx_string* %1245)
  %1247 = alloca i64
  store i64 %1246, i64* %1247
  %1248 = load i64, i64* %1247
  %1249 = icmp sgt i64 %1248, 0
  br i1 %1249, label %then324, label %else325
then324:
  %1250 = load %nyx_string*, %nyx_string** %1231
  %1251 = load i64, i64* %1247
  %1252 = call %nyx_string* @nyx_string_substring(%nyx_string* %1250, i64 0, i64 %1251)
  %1253 = call %nyx_string* @nyx_string_trim(%nyx_string* %1252)
  store %nyx_string* %1253, %nyx_string** %1231
  br label %merge326
else325:
  br label %merge326
merge326:
  %1254 = load %nyx_string*, %nyx_string** %1231
  %1255 = call i64 @nyx_string_length_utf8(%nyx_string* %1254)
  %1256 = icmp sgt i64 %1255, 0
  br i1 %1256, label %then327, label %else328
then327:
  %1257 = load { i64, i8* }*, { i64, i8* }** %1207
  %1258 = load %nyx_string*, %nyx_string** %1231
  %1259 = ptrtoint %nyx_string* %1258 to i64
  call void @nyx_array_push({ i64, i8* }* %1257, i64 %1259)
  br label %merge329
else328:
  br label %merge329
merge329:
  br label %merge320
else319:
  br label %merge320
merge320:
  br label %merge317
else316:
  br label %merge317
merge317:
  %1260 = load i64, i64* %1208
  %1261 = add i64 %1260, 1
  store i64 %1261, i64* %1208
  br label %while_cond312
while_end314:
  %1262 = load { i64, i8* }*, { i64, i8* }** %1207
  ret { i64, i8* }* %1262
}

define internal i64 @register_type_alias(
%nyx_string* %name.param, { i64, i8* }* %target.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %target.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %target.param, { i64, i8* }** %target.ptr
  %1263 = load { i64, i8* }*, { i64, i8* }** @g_alias_names
  %1264 = load %nyx_string*, %nyx_string** %name.ptr
  %1265 = ptrtoint %nyx_string* %1264 to i64
  call void @nyx_array_push({ i64, i8* }* %1263, i64 %1265)
  %1266 = load { i64, i8* }*, { i64, i8* }** @g_alias_targets
  %1267 = load { i64, i8* }*, { i64, i8* }** %target.ptr
  %1268 = ptrtoint { i64, i8* }* %1267 to i64
  call void @nyx_array_push({ i64, i8* }* %1266, i64 %1268)
  %1269 = load i64, i64* @g_alias_count
  %1270 = add i64 %1269, 1
  store i64 %1270, i64* @g_alias_count
  ret i64 0
}

define internal { i64, i8* }* @lookup_type_alias(
%nyx_string* %name.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %1271 = alloca i64
  store i64 0, i64* %1271
  br label %while_cond330
while_cond330:
  %1272 = load i64, i64* %1271
  %1273 = load i64, i64* @g_alias_count
  %1274 = icmp slt i64 %1272, %1273
  br i1 %1274, label %while_body331, label %while_end332
while_body331:
  %1275 = load { i64, i8* }*, { i64, i8* }** @g_alias_names
  %1276 = load i64, i64* %1271
  %1277 = call i64 @nyx_array_get({ i64, i8* }* %1275, i64 %1276)
  %1278 = inttoptr i64 %1277 to %nyx_string*
  %1279 = alloca %nyx_string*
  store %nyx_string* %1278, %nyx_string** %1279
  %1280 = load %nyx_string*, %nyx_string** %1279
  %1281 = load %nyx_string*, %nyx_string** %name.ptr
  %1282 = call i8* @nyx_string_to_cstr(%nyx_string* %1280)
  %1283 = call i8* @nyx_string_to_cstr(%nyx_string* %1281)
  %1284 = call i32 @strcmp(i8* %1282, i8* %1283)
  %1285 = icmp eq i32 %1284, 0
  br i1 %1285, label %then333, label %else334
then333:
  %1286 = load { i64, i8* }*, { i64, i8* }** @g_alias_targets
  %1287 = load i64, i64* %1271
  %1288 = call i64 @nyx_array_get({ i64, i8* }* %1286, i64 %1287)
  %1289 = inttoptr i64 %1288 to { i64, i8* }*
  %1290 = alloca { i64, i8* }*
  store { i64, i8* }* %1289, { i64, i8* }** %1290
  %1291 = load { i64, i8* }*, { i64, i8* }** %1290
  ret { i64, i8* }* %1291
else334:
  br label %merge335
merge335:
  %1292 = load i64, i64* %1271
  %1293 = add i64 %1292, 1
  store i64 %1293, i64* %1271
  br label %while_cond330
while_end332:
  %1294 = call { i64, i8* }* @nyx_array_new_ptr()
  ret { i64, i8* }* %1294
}

define internal i1 @is_type_alias(
%nyx_string* %name.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %1295 = alloca i64
  store i64 0, i64* %1295
  br label %while_cond336
while_cond336:
  %1296 = load i64, i64* %1295
  %1297 = load i64, i64* @g_alias_count
  %1298 = icmp slt i64 %1296, %1297
  br i1 %1298, label %while_body337, label %while_end338
while_body337:
  %1299 = load { i64, i8* }*, { i64, i8* }** @g_alias_names
  %1300 = load i64, i64* %1295
  %1301 = call i64 @nyx_array_get({ i64, i8* }* %1299, i64 %1300)
  %1302 = inttoptr i64 %1301 to %nyx_string*
  %1303 = alloca %nyx_string*
  store %nyx_string* %1302, %nyx_string** %1303
  %1304 = load %nyx_string*, %nyx_string** %1303
  %1305 = load %nyx_string*, %nyx_string** %name.ptr
  %1306 = call i8* @nyx_string_to_cstr(%nyx_string* %1304)
  %1307 = call i8* @nyx_string_to_cstr(%nyx_string* %1305)
  %1308 = call i32 @strcmp(i8* %1306, i8* %1307)
  %1309 = icmp eq i32 %1308, 0
  br i1 %1309, label %then339, label %else340
then339:
  ret i1 1
else340:
  br label %merge341
merge341:
  %1310 = load i64, i64* %1295
  %1311 = add i64 %1310, 1
  store i64 %1311, i64* %1295
  br label %while_cond336
while_end338:
  ret i1 0
}

define internal { i64, i8* }* @resolve_type(
{ i64, i8* }* %t.param) {
  %t.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %t.param, { i64, i8* }** %t.ptr
  %1312 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1313 = call %nyx_string* @ty_kind({ i64, i8* }* %1312)
  %1314 = alloca %nyx_string*
  store %nyx_string* %1313, %nyx_string** %1314
  %1315 = load %nyx_string*, %nyx_string** %1314
  %1316 = getelementptr [9 x i8], [9 x i8]* @.str63, i32 0, i32 0
  %1317 = call %nyx_string* @nyx_string_from_cstr(i8* %1316)
  %1318 = call i8* @nyx_string_to_cstr(%nyx_string* %1315)
  %1319 = call i8* @nyx_string_to_cstr(%nyx_string* %1317)
  %1320 = call i32 @strcmp(i8* %1318, i8* %1319)
  %1321 = icmp eq i32 %1320, 0
  br i1 %1321, label %then342, label %else343
then342:
  %1322 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1323 = call i64 @nyx_array_get({ i64, i8* }* %1322, i64 1)
  %1324 = inttoptr i64 %1323 to %nyx_string*
  %1325 = alloca %nyx_string*
  store %nyx_string* %1324, %nyx_string** %1325
  %1326 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1327 = call i64 @nyx_array_get({ i64, i8* }* %1326, i64 2)
  %1328 = inttoptr i64 %1327 to { i64, i8* }*
  %1329 = alloca { i64, i8* }*
  store { i64, i8* }* %1328, { i64, i8* }** %1329
  %1330 = load { i64, i8* }*, { i64, i8* }** %1329
  %1331 = call i64 @nyx_array_length({ i64, i8* }* %1330)
  %1332 = icmp eq i64 %1331, 0
  br i1 %1332, label %then345, label %else346
then345:
  %1333 = load %nyx_string*, %nyx_string** %1325
  %1334 = call { i64, i8* }* @lookup_type_alias(%nyx_string* %1333)
  %1335 = alloca { i64, i8* }*
  store { i64, i8* }* %1334, { i64, i8* }** %1335
  %1336 = load { i64, i8* }*, { i64, i8* }** %1335
  %1337 = call i64 @nyx_array_length({ i64, i8* }* %1336)
  %1338 = icmp sgt i64 %1337, 0
  br i1 %1338, label %then348, label %else349
then348:
  %1339 = load { i64, i8* }*, { i64, i8* }** %1335
  %1340 = call { i64, i8* }* @resolve_type({ i64, i8* }* %1339)
  ret { i64, i8* }* %1340
else349:
  br label %merge350
merge350:
  br label %merge347
else346:
  br label %merge347
merge347:
  %1341 = call { i64, i8* }* @nyx_array_new_ptr()
  %1342 = alloca { i64, i8* }*
  store { i64, i8* }* %1341, { i64, i8* }** %1342
  %1343 = alloca i64
  store i64 0, i64* %1343
  br label %while_cond351
while_cond351:
  %1344 = load i64, i64* %1343
  %1345 = load { i64, i8* }*, { i64, i8* }** %1329
  %1346 = call i64 @nyx_array_length({ i64, i8* }* %1345)
  %1347 = icmp slt i64 %1344, %1346
  br i1 %1347, label %while_body352, label %while_end353
while_body352:
  %1348 = load { i64, i8* }*, { i64, i8* }** %1329
  %1349 = load i64, i64* %1343
  %1350 = call i64 @nyx_array_get({ i64, i8* }* %1348, i64 %1349)
  %1351 = inttoptr i64 %1350 to { i64, i8* }*
  %1352 = alloca { i64, i8* }*
  store { i64, i8* }* %1351, { i64, i8* }** %1352
  %1353 = load { i64, i8* }*, { i64, i8* }** %1342
  %1354 = load { i64, i8* }*, { i64, i8* }** %1352
  %1355 = call { i64, i8* }* @resolve_type({ i64, i8* }* %1354)
  %1356 = ptrtoint { i64, i8* }* %1355 to i64
  call void @nyx_array_push({ i64, i8* }* %1353, i64 %1356)
  %1357 = load i64, i64* %1343
  %1358 = add i64 %1357, 1
  store i64 %1358, i64* %1343
  br label %while_cond351
while_end353:
  %1359 = call { i64, i8* }* @nyx_array_new_ptr()
  %1360 = getelementptr [9 x i8], [9 x i8]* @.str64, i32 0, i32 0
  %1361 = call %nyx_string* @nyx_string_from_cstr(i8* %1360)
  %1362 = ptrtoint %nyx_string* %1361 to i64
  call void @nyx_array_push({ i64, i8* }* %1359, i64 %1362)
  %1363 = load %nyx_string*, %nyx_string** %1325
  %1364 = ptrtoint %nyx_string* %1363 to i64
  call void @nyx_array_push({ i64, i8* }* %1359, i64 %1364)
  %1365 = load { i64, i8* }*, { i64, i8* }** %1342
  %1366 = bitcast { i64, i8* }* %1365 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1359, i8* %1366)
  ret { i64, i8* }* %1359
else343:
  br label %merge344
merge344:
  %1367 = load %nyx_string*, %nyx_string** %1314
  %1368 = getelementptr [8 x i8], [8 x i8]* @.str65, i32 0, i32 0
  %1369 = call %nyx_string* @nyx_string_from_cstr(i8* %1368)
  %1370 = call i8* @nyx_string_to_cstr(%nyx_string* %1367)
  %1371 = call i8* @nyx_string_to_cstr(%nyx_string* %1369)
  %1372 = call i32 @strcmp(i8* %1370, i8* %1371)
  %1373 = icmp eq i32 %1372, 0
  br i1 %1373, label %then354, label %else355
then354:
  %1374 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1375 = call i64 @nyx_array_get({ i64, i8* }* %1374, i64 1)
  %1376 = inttoptr i64 %1375 to { i64, i8* }*
  %1377 = alloca { i64, i8* }*
  store { i64, i8* }* %1376, { i64, i8* }** %1377
  %1378 = call { i64, i8* }* @nyx_array_new_ptr()
  %1379 = getelementptr [8 x i8], [8 x i8]* @.str66, i32 0, i32 0
  %1380 = call %nyx_string* @nyx_string_from_cstr(i8* %1379)
  %1381 = ptrtoint %nyx_string* %1380 to i64
  call void @nyx_array_push({ i64, i8* }* %1378, i64 %1381)
  %1382 = load { i64, i8* }*, { i64, i8* }** %1377
  %1383 = call { i64, i8* }* @resolve_type({ i64, i8* }* %1382)
  %1384 = bitcast { i64, i8* }* %1383 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1378, i8* %1384)
  ret { i64, i8* }* %1378
else355:
  br label %merge356
merge356:
  %1385 = load %nyx_string*, %nyx_string** %1314
  %1386 = getelementptr [9 x i8], [9 x i8]* @.str67, i32 0, i32 0
  %1387 = call %nyx_string* @nyx_string_from_cstr(i8* %1386)
  %1388 = call i8* @nyx_string_to_cstr(%nyx_string* %1385)
  %1389 = call i8* @nyx_string_to_cstr(%nyx_string* %1387)
  %1390 = call i32 @strcmp(i8* %1388, i8* %1389)
  %1391 = icmp eq i32 %1390, 0
  br i1 %1391, label %then357, label %else358
then357:
  %1392 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1393 = call i64 @nyx_array_get({ i64, i8* }* %1392, i64 1)
  %1394 = inttoptr i64 %1393 to { i64, i8* }*
  %1395 = alloca { i64, i8* }*
  store { i64, i8* }* %1394, { i64, i8* }** %1395
  %1396 = call { i64, i8* }* @nyx_array_new_ptr()
  %1397 = getelementptr [9 x i8], [9 x i8]* @.str68, i32 0, i32 0
  %1398 = call %nyx_string* @nyx_string_from_cstr(i8* %1397)
  %1399 = ptrtoint %nyx_string* %1398 to i64
  call void @nyx_array_push({ i64, i8* }* %1396, i64 %1399)
  %1400 = load { i64, i8* }*, { i64, i8* }** %1395
  %1401 = call { i64, i8* }* @resolve_type({ i64, i8* }* %1400)
  %1402 = bitcast { i64, i8* }* %1401 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1396, i8* %1402)
  ret { i64, i8* }* %1396
else358:
  br label %merge359
merge359:
  %1403 = load %nyx_string*, %nyx_string** %1314
  %1404 = getelementptr [6 x i8], [6 x i8]* @.str69, i32 0, i32 0
  %1405 = call %nyx_string* @nyx_string_from_cstr(i8* %1404)
  %1406 = call i8* @nyx_string_to_cstr(%nyx_string* %1403)
  %1407 = call i8* @nyx_string_to_cstr(%nyx_string* %1405)
  %1408 = call i32 @strcmp(i8* %1406, i8* %1407)
  %1409 = icmp eq i32 %1408, 0
  br i1 %1409, label %then360, label %else361
then360:
  %1410 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1411 = call i64 @nyx_array_get({ i64, i8* }* %1410, i64 1)
  %1412 = inttoptr i64 %1411 to { i64, i8* }*
  %1413 = alloca { i64, i8* }*
  store { i64, i8* }* %1412, { i64, i8* }** %1413
  %1414 = call { i64, i8* }* @nyx_array_new_ptr()
  %1415 = getelementptr [6 x i8], [6 x i8]* @.str70, i32 0, i32 0
  %1416 = call %nyx_string* @nyx_string_from_cstr(i8* %1415)
  %1417 = ptrtoint %nyx_string* %1416 to i64
  call void @nyx_array_push({ i64, i8* }* %1414, i64 %1417)
  %1418 = load { i64, i8* }*, { i64, i8* }** %1413
  %1419 = call { i64, i8* }* @resolve_type({ i64, i8* }* %1418)
  %1420 = bitcast { i64, i8* }* %1419 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1414, i8* %1420)
  ret { i64, i8* }* %1414
else361:
  br label %merge362
merge362:
  %1421 = load %nyx_string*, %nyx_string** %1314
  %1422 = getelementptr [6 x i8], [6 x i8]* @.str71, i32 0, i32 0
  %1423 = call %nyx_string* @nyx_string_from_cstr(i8* %1422)
  %1424 = call i8* @nyx_string_to_cstr(%nyx_string* %1421)
  %1425 = call i8* @nyx_string_to_cstr(%nyx_string* %1423)
  %1426 = call i32 @strcmp(i8* %1424, i8* %1425)
  %1427 = icmp eq i32 %1426, 0
  br i1 %1427, label %then363, label %else364
then363:
  %1428 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1429 = call i64 @nyx_array_get({ i64, i8* }* %1428, i64 1)
  %1430 = inttoptr i64 %1429 to { i64, i8* }*
  %1431 = alloca { i64, i8* }*
  store { i64, i8* }* %1430, { i64, i8* }** %1431
  %1432 = call { i64, i8* }* @nyx_array_new_ptr()
  %1433 = getelementptr [6 x i8], [6 x i8]* @.str72, i32 0, i32 0
  %1434 = call %nyx_string* @nyx_string_from_cstr(i8* %1433)
  %1435 = ptrtoint %nyx_string* %1434 to i64
  call void @nyx_array_push({ i64, i8* }* %1432, i64 %1435)
  %1436 = load { i64, i8* }*, { i64, i8* }** %1431
  %1437 = call { i64, i8* }* @resolve_type({ i64, i8* }* %1436)
  %1438 = bitcast { i64, i8* }* %1437 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1432, i8* %1438)
  ret { i64, i8* }* %1432
else364:
  br label %merge365
merge365:
  %1439 = load %nyx_string*, %nyx_string** %1314
  %1440 = getelementptr [9 x i8], [9 x i8]* @.str73, i32 0, i32 0
  %1441 = call %nyx_string* @nyx_string_from_cstr(i8* %1440)
  %1442 = call i8* @nyx_string_to_cstr(%nyx_string* %1439)
  %1443 = call i8* @nyx_string_to_cstr(%nyx_string* %1441)
  %1444 = call i32 @strcmp(i8* %1442, i8* %1443)
  %1445 = icmp eq i32 %1444, 0
  br i1 %1445, label %then366, label %else367
then366:
  %1446 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1447 = call i64 @nyx_array_get({ i64, i8* }* %1446, i64 1)
  %1448 = inttoptr i64 %1447 to { i64, i8* }*
  %1449 = alloca { i64, i8* }*
  store { i64, i8* }* %1448, { i64, i8* }** %1449
  %1450 = call { i64, i8* }* @nyx_array_new_ptr()
  %1451 = getelementptr [9 x i8], [9 x i8]* @.str74, i32 0, i32 0
  %1452 = call %nyx_string* @nyx_string_from_cstr(i8* %1451)
  %1453 = ptrtoint %nyx_string* %1452 to i64
  call void @nyx_array_push({ i64, i8* }* %1450, i64 %1453)
  %1454 = load { i64, i8* }*, { i64, i8* }** %1449
  %1455 = call { i64, i8* }* @resolve_type({ i64, i8* }* %1454)
  %1456 = bitcast { i64, i8* }* %1455 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1450, i8* %1456)
  ret { i64, i8* }* %1450
else367:
  br label %merge368
merge368:
  %1457 = load %nyx_string*, %nyx_string** %1314
  %1458 = getelementptr [9 x i8], [9 x i8]* @.str75, i32 0, i32 0
  %1459 = call %nyx_string* @nyx_string_from_cstr(i8* %1458)
  %1460 = call i8* @nyx_string_to_cstr(%nyx_string* %1457)
  %1461 = call i8* @nyx_string_to_cstr(%nyx_string* %1459)
  %1462 = call i32 @strcmp(i8* %1460, i8* %1461)
  %1463 = icmp eq i32 %1462, 0
  br i1 %1463, label %then369, label %else370
then369:
  %1464 = call { i64, i8* }* @nyx_array_new_ptr()
  %1465 = getelementptr [9 x i8], [9 x i8]* @.str76, i32 0, i32 0
  %1466 = call %nyx_string* @nyx_string_from_cstr(i8* %1465)
  %1467 = ptrtoint %nyx_string* %1466 to i64
  call void @nyx_array_push({ i64, i8* }* %1464, i64 %1467)
  %1468 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1469 = call i64 @nyx_array_get({ i64, i8* }* %1468, i64 1)
  %1470 = call { i64, i8* }* @resolve_type(i64 %1469)
  %1471 = bitcast { i64, i8* }* %1470 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1464, i8* %1471)
  %1472 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1473 = call i64 @nyx_array_get({ i64, i8* }* %1472, i64 2)
  %1474 = call { i64, i8* }* @resolve_type(i64 %1473)
  %1475 = bitcast { i64, i8* }* %1474 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1464, i8* %1475)
  ret { i64, i8* }* %1464
else370:
  br label %merge371
merge371:
  %1476 = load %nyx_string*, %nyx_string** %1314
  %1477 = getelementptr [6 x i8], [6 x i8]* @.str77, i32 0, i32 0
  %1478 = call %nyx_string* @nyx_string_from_cstr(i8* %1477)
  %1479 = call i8* @nyx_string_to_cstr(%nyx_string* %1476)
  %1480 = call i8* @nyx_string_to_cstr(%nyx_string* %1478)
  %1481 = call i32 @strcmp(i8* %1479, i8* %1480)
  %1482 = icmp eq i32 %1481, 0
  br i1 %1482, label %then372, label %else373
then372:
  %1483 = call { i64, i8* }* @nyx_array_new_ptr()
  %1484 = getelementptr [6 x i8], [6 x i8]* @.str78, i32 0, i32 0
  %1485 = call %nyx_string* @nyx_string_from_cstr(i8* %1484)
  %1486 = ptrtoint %nyx_string* %1485 to i64
  call void @nyx_array_push({ i64, i8* }* %1483, i64 %1486)
  %1487 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1488 = call i64 @nyx_array_get({ i64, i8* }* %1487, i64 1)
  %1489 = call { i64, i8* }* @resolve_type(i64 %1488)
  %1490 = bitcast { i64, i8* }* %1489 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1483, i8* %1490)
  %1491 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1492 = call i64 @nyx_array_get({ i64, i8* }* %1491, i64 2)
  %1493 = call { i64, i8* }* @resolve_type(i64 %1492)
  %1494 = bitcast { i64, i8* }* %1493 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1483, i8* %1494)
  ret { i64, i8* }* %1483
else373:
  br label %merge374
merge374:
  %1495 = load %nyx_string*, %nyx_string** %1314
  %1496 = getelementptr [5 x i8], [5 x i8]* @.str79, i32 0, i32 0
  %1497 = call %nyx_string* @nyx_string_from_cstr(i8* %1496)
  %1498 = call i8* @nyx_string_to_cstr(%nyx_string* %1495)
  %1499 = call i8* @nyx_string_to_cstr(%nyx_string* %1497)
  %1500 = call i32 @strcmp(i8* %1498, i8* %1499)
  %1501 = icmp eq i32 %1500, 0
  br i1 %1501, label %then375, label %else376
then375:
  %1502 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1503 = call i64 @nyx_array_get({ i64, i8* }* %1502, i64 1)
  %1504 = inttoptr i64 %1503 to { i64, i8* }*
  %1505 = alloca { i64, i8* }*
  store { i64, i8* }* %1504, { i64, i8* }** %1505
  %1506 = call { i64, i8* }* @nyx_array_new_ptr()
  %1507 = alloca { i64, i8* }*
  store { i64, i8* }* %1506, { i64, i8* }** %1507
  %1508 = alloca i64
  store i64 0, i64* %1508
  br label %while_cond378
while_cond378:
  %1509 = load i64, i64* %1508
  %1510 = load { i64, i8* }*, { i64, i8* }** %1505
  %1511 = call i64 @nyx_array_length({ i64, i8* }* %1510)
  %1512 = icmp slt i64 %1509, %1511
  br i1 %1512, label %while_body379, label %while_end380
while_body379:
  %1513 = load { i64, i8* }*, { i64, i8* }** %1505
  %1514 = load i64, i64* %1508
  %1515 = call i64 @nyx_array_get({ i64, i8* }* %1513, i64 %1514)
  %1516 = inttoptr i64 %1515 to { i64, i8* }*
  %1517 = alloca { i64, i8* }*
  store { i64, i8* }* %1516, { i64, i8* }** %1517
  %1518 = load { i64, i8* }*, { i64, i8* }** %1507
  %1519 = load { i64, i8* }*, { i64, i8* }** %1517
  %1520 = call { i64, i8* }* @resolve_type({ i64, i8* }* %1519)
  %1521 = ptrtoint { i64, i8* }* %1520 to i64
  call void @nyx_array_push({ i64, i8* }* %1518, i64 %1521)
  %1522 = load i64, i64* %1508
  %1523 = add i64 %1522, 1
  store i64 %1523, i64* %1508
  br label %while_cond378
while_end380:
  %1524 = call { i64, i8* }* @nyx_array_new_ptr()
  %1525 = getelementptr [5 x i8], [5 x i8]* @.str80, i32 0, i32 0
  %1526 = call %nyx_string* @nyx_string_from_cstr(i8* %1525)
  %1527 = ptrtoint %nyx_string* %1526 to i64
  call void @nyx_array_push({ i64, i8* }* %1524, i64 %1527)
  %1528 = load { i64, i8* }*, { i64, i8* }** %1507
  %1529 = bitcast { i64, i8* }* %1528 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1524, i8* %1529)
  %1530 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  %1531 = call i64 @nyx_array_get({ i64, i8* }* %1530, i64 2)
  %1532 = call { i64, i8* }* @resolve_type(i64 %1531)
  %1533 = bitcast { i64, i8* }* %1532 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1524, i8* %1533)
  ret { i64, i8* }* %1524
else376:
  br label %merge377
merge377:
  %1534 = load { i64, i8* }*, { i64, i8* }** %t.ptr
  ret { i64, i8* }* %1534
}

define internal i64 @register_impl_method(
%nyx_string* %type_name.param, %nyx_string* %method.param, { i64, i8* }* %params.param, { i64, i8* }* %ret.param, { i64, i8* }* %type_params.param) {
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
  %1535 = load { i64, i8* }*, { i64, i8* }** @g_impl_method_types
  %1536 = load %nyx_string*, %nyx_string** %type_name.ptr
  %1537 = ptrtoint %nyx_string* %1536 to i64
  call void @nyx_array_push({ i64, i8* }* %1535, i64 %1537)
  %1538 = load { i64, i8* }*, { i64, i8* }** @g_impl_method_names
  %1539 = load %nyx_string*, %nyx_string** %method.ptr
  %1540 = ptrtoint %nyx_string* %1539 to i64
  call void @nyx_array_push({ i64, i8* }* %1538, i64 %1540)
  %1541 = load { i64, i8* }*, { i64, i8* }** @g_impl_method_params
  %1542 = load { i64, i8* }*, { i64, i8* }** %params.ptr
  %1543 = ptrtoint { i64, i8* }* %1542 to i64
  call void @nyx_array_push({ i64, i8* }* %1541, i64 %1543)
  %1544 = load { i64, i8* }*, { i64, i8* }** @g_impl_method_returns
  %1545 = load { i64, i8* }*, { i64, i8* }** %ret.ptr
  %1546 = ptrtoint { i64, i8* }* %1545 to i64
  call void @nyx_array_push({ i64, i8* }* %1544, i64 %1546)
  %1547 = load { i64, i8* }*, { i64, i8* }** @g_impl_method_type_params
  %1548 = load { i64, i8* }*, { i64, i8* }** %type_params.ptr
  %1549 = ptrtoint { i64, i8* }* %1548 to i64
  call void @nyx_array_push({ i64, i8* }* %1547, i64 %1549)
  %1550 = load i64, i64* @g_impl_method_count
  %1551 = add i64 %1550, 1
  store i64 %1551, i64* @g_impl_method_count
  ret i64 0
}

define internal { i64, i8* }* @lookup_impl_method(
%nyx_string* %type_name.param, %nyx_string* %method.param) {
  %type_name.ptr = alloca %nyx_string*
  store %nyx_string* %type_name.param, %nyx_string** %type_name.ptr
  %method.ptr = alloca %nyx_string*
  store %nyx_string* %method.param, %nyx_string** %method.ptr
  %1552 = alloca i64
  store i64 0, i64* %1552
  br label %while_cond381
while_cond381:
  %1553 = load i64, i64* %1552
  %1554 = load i64, i64* @g_impl_method_count
  %1555 = icmp slt i64 %1553, %1554
  br i1 %1555, label %while_body382, label %while_end383
while_body382:
  %1556 = load { i64, i8* }*, { i64, i8* }** @g_impl_method_types
  %1557 = load i64, i64* %1552
  %1558 = call i64 @nyx_array_get({ i64, i8* }* %1556, i64 %1557)
  %1559 = inttoptr i64 %1558 to %nyx_string*
  %1560 = alloca %nyx_string*
  store %nyx_string* %1559, %nyx_string** %1560
  %1561 = load %nyx_string*, %nyx_string** %1560
  %1562 = load %nyx_string*, %nyx_string** %type_name.ptr
  %1563 = call i8* @nyx_string_to_cstr(%nyx_string* %1561)
  %1564 = call i8* @nyx_string_to_cstr(%nyx_string* %1562)
  %1565 = call i32 @strcmp(i8* %1563, i8* %1564)
  %1566 = icmp eq i32 %1565, 0
  br i1 %1566, label %then384, label %else385
then384:
  %1567 = load { i64, i8* }*, { i64, i8* }** @g_impl_method_names
  %1568 = load i64, i64* %1552
  %1569 = call i64 @nyx_array_get({ i64, i8* }* %1567, i64 %1568)
  %1570 = inttoptr i64 %1569 to %nyx_string*
  %1571 = alloca %nyx_string*
  store %nyx_string* %1570, %nyx_string** %1571
  %1572 = load %nyx_string*, %nyx_string** %1571
  %1573 = load %nyx_string*, %nyx_string** %method.ptr
  %1574 = call i8* @nyx_string_to_cstr(%nyx_string* %1572)
  %1575 = call i8* @nyx_string_to_cstr(%nyx_string* %1573)
  %1576 = call i32 @strcmp(i8* %1574, i8* %1575)
  %1577 = icmp eq i32 %1576, 0
  br i1 %1577, label %then387, label %else388
then387:
  %1578 = load { i64, i8* }*, { i64, i8* }** @g_impl_method_params
  %1579 = load i64, i64* %1552
  %1580 = call i64 @nyx_array_get({ i64, i8* }* %1578, i64 %1579)
  %1581 = inttoptr i64 %1580 to { i64, i8* }*
  %1582 = alloca { i64, i8* }*
  store { i64, i8* }* %1581, { i64, i8* }** %1582
  %1583 = load { i64, i8* }*, { i64, i8* }** @g_impl_method_returns
  %1584 = load i64, i64* %1552
  %1585 = call i64 @nyx_array_get({ i64, i8* }* %1583, i64 %1584)
  %1586 = inttoptr i64 %1585 to { i64, i8* }*
  %1587 = alloca { i64, i8* }*
  store { i64, i8* }* %1586, { i64, i8* }** %1587
  %1588 = load { i64, i8* }*, { i64, i8* }** @g_impl_method_type_params
  %1589 = load i64, i64* %1552
  %1590 = call i64 @nyx_array_get({ i64, i8* }* %1588, i64 %1589)
  %1591 = inttoptr i64 %1590 to { i64, i8* }*
  %1592 = alloca { i64, i8* }*
  store { i64, i8* }* %1591, { i64, i8* }** %1592
  %1593 = call { i64, i8* }* @nyx_array_new_ptr()
  %1594 = load { i64, i8* }*, { i64, i8* }** %1582
  %1595 = bitcast { i64, i8* }* %1594 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1593, i8* %1595)
  %1596 = load { i64, i8* }*, { i64, i8* }** %1587
  %1597 = bitcast { i64, i8* }* %1596 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1593, i8* %1597)
  %1598 = load { i64, i8* }*, { i64, i8* }** %1592
  %1599 = bitcast { i64, i8* }* %1598 to i8*
  call void @nyx_array_push_ptr({ i64, i8* }* %1593, i8* %1599)
  ret { i64, i8* }* %1593
else388:
  br label %merge389
merge389:
  br label %merge386
else385:
  br label %merge386
merge386:
  %1600 = load i64, i64* %1552
  %1601 = add i64 %1600, 1
  store i64 %1601, i64* %1552
  br label %while_cond381
while_end383:
  %1602 = call { i64, i8* }* @nyx_array_new_ptr()
  ret { i64, i8* }* %1602
}

define internal %nyx_string* @strip_generic_args(
%nyx_string* %name.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %1603 = load %nyx_string*, %nyx_string** %name.ptr
  %1604 = getelementptr [2 x i8], [2 x i8]* @.str81, i32 0, i32 0
  %1605 = call %nyx_string* @nyx_string_from_cstr(i8* %1604)
  %1606 = call i64 @nyx_string_index_of(%nyx_string* %1603, %nyx_string* %1605)
  %1607 = alloca i64
  store i64 %1606, i64* %1607
  %1608 = load i64, i64* %1607
  %1609 = icmp sgt i64 %1608, 0
  br i1 %1609, label %then390, label %else391
then390:
  %1610 = load %nyx_string*, %nyx_string** %name.ptr
  %1611 = load i64, i64* %1607
  %1612 = call %nyx_string* @nyx_string_substring(%nyx_string* %1610, i64 0, i64 %1611)
  %1613 = call %nyx_string* @nyx_string_trim(%nyx_string* %1612)
  ret %nyx_string* %1613
else391:
  br label %merge392
merge392:
  %1614 = load %nyx_string*, %nyx_string** %name.ptr
  ret %nyx_string* %1614
}

define internal i1 @type_implements_trait(
%nyx_string* %type_name.param, %nyx_string* %trait_name.param) {
  %type_name.ptr = alloca %nyx_string*
  store %nyx_string* %type_name.param, %nyx_string** %type_name.ptr
  %trait_name.ptr = alloca %nyx_string*
  store %nyx_string* %trait_name.param, %nyx_string** %trait_name.ptr
  %1615 = alloca i64
  store i64 0, i64* %1615
  br label %while_cond393
while_cond393:
  %1616 = load i64, i64* %1615
  %1617 = load i64, i64* @g_trait_impl_count
  %1618 = icmp slt i64 %1616, %1617
  br i1 %1618, label %while_body394, label %while_end395
while_body394:
  %1619 = load { i64, i8* }*, { i64, i8* }** @g_trait_impl_types
  %1620 = load i64, i64* %1615
  %1621 = call i64 @nyx_array_get({ i64, i8* }* %1619, i64 %1620)
  %1622 = inttoptr i64 %1621 to %nyx_string*
  %1623 = alloca %nyx_string*
  store %nyx_string* %1622, %nyx_string** %1623
  %1624 = load %nyx_string*, %nyx_string** %1623
  %1625 = load %nyx_string*, %nyx_string** %type_name.ptr
  %1626 = call i8* @nyx_string_to_cstr(%nyx_string* %1624)
  %1627 = call i8* @nyx_string_to_cstr(%nyx_string* %1625)
  %1628 = call i32 @strcmp(i8* %1626, i8* %1627)
  %1629 = icmp eq i32 %1628, 0
  br i1 %1629, label %then396, label %else397
then396:
  %1630 = load { i64, i8* }*, { i64, i8* }** @g_trait_impl_traits
  %1631 = load i64, i64* %1615
  %1632 = call i64 @nyx_array_get({ i64, i8* }* %1630, i64 %1631)
  %1633 = inttoptr i64 %1632 to %nyx_string*
  %1634 = alloca %nyx_string*
  store %nyx_string* %1633, %nyx_string** %1634
  %1635 = load %nyx_string*, %nyx_string** %1634
  %1636 = load %nyx_string*, %nyx_string** %trait_name.ptr
  %1637 = call i8* @nyx_string_to_cstr(%nyx_string* %1635)
  %1638 = call i8* @nyx_string_to_cstr(%nyx_string* %1636)
  %1639 = call i32 @strcmp(i8* %1637, i8* %1638)
  %1640 = icmp eq i32 %1639, 0
  br i1 %1640, label %then399, label %else400
then399:
  ret i1 1
else400:
  br label %merge401
merge401:
  br label %merge398
else397:
  br label %merge398
merge398:
  %1641 = load i64, i64* %1615
  %1642 = add i64 %1641, 1
  store i64 %1642, i64* %1615
  br label %while_cond393
while_end395:
  ret i1 0
}

define internal i1 @ty_check_dyn_compat(
{ i64, i8* }* %declared.param, { i64, i8* }* %actual.param, %nyx_string* %context_name.param) {
  %declared.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %declared.param, { i64, i8* }** %declared.ptr
  %actual.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %actual.param, { i64, i8* }** %actual.ptr
  %context_name.ptr = alloca %nyx_string*
  store %nyx_string* %context_name.param, %nyx_string** %context_name.ptr
  %1643 = load { i64, i8* }*, { i64, i8* }** %declared.ptr
  %1644 = call %nyx_string* @ty_kind({ i64, i8* }* %1643)
  %1645 = alloca %nyx_string*
  store %nyx_string* %1644, %nyx_string** %1645
  %1646 = load %nyx_string*, %nyx_string** %1645
  %1647 = getelementptr [6 x i8], [6 x i8]* @.str82, i32 0, i32 0
  %1648 = call %nyx_string* @nyx_string_from_cstr(i8* %1647)
  %1649 = call i8* @nyx_string_to_cstr(%nyx_string* %1646)
  %1650 = call i8* @nyx_string_to_cstr(%nyx_string* %1648)
  %1651 = call i32 @strcmp(i8* %1649, i8* %1650)
  %1652 = icmp ne i32 %1651, 0
  br i1 %1652, label %then402, label %else403
then402:
  ret i1 1
else403:
  br label %merge404
merge404:
  %1653 = load { i64, i8* }*, { i64, i8* }** %actual.ptr
  %1654 = call i1 @ty_is_unknown({ i64, i8* }* %1653)
  br i1 %1654, label %then405, label %else406
then405:
  ret i1 1
else406:
  br label %merge407
merge407:
  %1655 = load { i64, i8* }*, { i64, i8* }** %actual.ptr
  %1656 = call %nyx_string* @ty_kind({ i64, i8* }* %1655)
  %1657 = alloca %nyx_string*
  store %nyx_string* %1656, %nyx_string** %1657
  %1658 = load %nyx_string*, %nyx_string** %1657
  %1659 = getelementptr [9 x i8], [9 x i8]* @.str83, i32 0, i32 0
  %1660 = call %nyx_string* @nyx_string_from_cstr(i8* %1659)
  %1661 = call i8* @nyx_string_to_cstr(%nyx_string* %1658)
  %1662 = call i8* @nyx_string_to_cstr(%nyx_string* %1660)
  %1663 = call i32 @strcmp(i8* %1661, i8* %1662)
  %1664 = icmp ne i32 %1663, 0
  br i1 %1664, label %then408, label %else409
then408:
  %1665 = load %nyx_string*, %nyx_string** %1657
  %1666 = getelementptr [7 x i8], [7 x i8]* @.str84, i32 0, i32 0
  %1667 = call %nyx_string* @nyx_string_from_cstr(i8* %1666)
  %1668 = call i8* @nyx_string_to_cstr(%nyx_string* %1665)
  %1669 = call i8* @nyx_string_to_cstr(%nyx_string* %1667)
  %1670 = call i32 @strcmp(i8* %1668, i8* %1669)
  %1671 = icmp ne i32 %1670, 0
  br i1 %1671, label %then411, label %else412
then411:
  ret i1 1
else412:
  br label %merge413
merge413:
  br label %merge410
else409:
  br label %merge410
merge410:
  %1672 = load { i64, i8* }*, { i64, i8* }** %declared.ptr
  %1673 = call i64 @nyx_array_get({ i64, i8* }* %1672, i64 1)
  %1674 = inttoptr i64 %1673 to %nyx_string*
  %1675 = alloca %nyx_string*
  store %nyx_string* %1674, %nyx_string** %1675
  %1676 = load { i64, i8* }*, { i64, i8* }** %actual.ptr
  %1677 = call i64 @nyx_array_get({ i64, i8* }* %1676, i64 1)
  %1678 = inttoptr i64 %1677 to %nyx_string*
  %1679 = alloca %nyx_string*
  store %nyx_string* %1678, %nyx_string** %1679
  %1680 = load %nyx_string*, %nyx_string** %1679
  %1681 = load %nyx_string*, %nyx_string** %1675
  %1682 = call i1 @type_implements_trait(%nyx_string* %1680, %nyx_string* %1681)
  br i1 %1682, label %then414, label %else415
then414:
  ret i1 1
else415:
  br label %merge416
merge416:
  %1683 = load %nyx_string*, %nyx_string** %1679
  %1684 = call i1 @type_has_any_local_impl(%nyx_string* %1683)
  br i1 %1684, label %then417, label %else418
then417:
  %1685 = getelementptr [2 x i8], [2 x i8]* @.str85, i32 0, i32 0
  %1686 = call %nyx_string* @nyx_string_from_cstr(i8* %1685)
  %1687 = load %nyx_string*, %nyx_string** %1679
  %1688 = call %nyx_string* @nyx_string_concat(%nyx_string* %1686, %nyx_string* %1687)
  %1689 = getelementptr [22 x i8], [22 x i8]* @.str86, i32 0, i32 0
  %1690 = call %nyx_string* @nyx_string_from_cstr(i8* %1689)
  %1691 = call %nyx_string* @nyx_string_concat(%nyx_string* %1688, %nyx_string* %1690)
  %1692 = load %nyx_string*, %nyx_string** %1675
  %1693 = call %nyx_string* @nyx_string_concat(%nyx_string* %1691, %nyx_string* %1692)
  %1694 = getelementptr [17 x i8], [17 x i8]* @.str87, i32 0, i32 0
  %1695 = call %nyx_string* @nyx_string_from_cstr(i8* %1694)
  %1696 = call %nyx_string* @nyx_string_concat(%nyx_string* %1693, %nyx_string* %1695)
  %1697 = load %nyx_string*, %nyx_string** %context_name.ptr
  %1698 = call %nyx_string* @nyx_string_concat(%nyx_string* %1696, %nyx_string* %1697)
  %1699 = getelementptr [2 x i8], [2 x i8]* @.str88, i32 0, i32 0
  %1700 = call %nyx_string* @nyx_string_from_cstr(i8* %1699)
  %1701 = call %nyx_string* @nyx_string_concat(%nyx_string* %1698, %nyx_string* %1700)
  %1702 = getelementptr [2 x i8], [2 x i8]* @.str89, i32 0, i32 0
  %1703 = call %nyx_string* @nyx_string_from_cstr(i8* %1702)
  %1704 = load %nyx_string*, %nyx_string** %1679
  %1705 = call %nyx_string* @nyx_string_concat(%nyx_string* %1703, %nyx_string* %1704)
  %1706 = getelementptr [27 x i8], [27 x i8]* @.str90, i32 0, i32 0
  %1707 = call %nyx_string* @nyx_string_from_cstr(i8* %1706)
  %1708 = call %nyx_string* @nyx_string_concat(%nyx_string* %1705, %nyx_string* %1707)
  %1709 = load %nyx_string*, %nyx_string** %1675
  %1710 = call %nyx_string* @nyx_string_concat(%nyx_string* %1708, %nyx_string* %1709)
  %1711 = getelementptr [16 x i8], [16 x i8]* @.str91, i32 0, i32 0
  %1712 = call %nyx_string* @nyx_string_from_cstr(i8* %1711)
  %1713 = call %nyx_string* @nyx_string_concat(%nyx_string* %1710, %nyx_string* %1712)
  %1714 = load %nyx_string*, %nyx_string** %context_name.ptr
  %1715 = call %nyx_string* @nyx_string_concat(%nyx_string* %1713, %nyx_string* %1714)
  %1716 = getelementptr [2 x i8], [2 x i8]* @.str92, i32 0, i32 0
  %1717 = call %nyx_string* @nyx_string_from_cstr(i8* %1716)
  %1718 = call %nyx_string* @nyx_string_concat(%nyx_string* %1715, %nyx_string* %1717)
  %1719 = call %nyx_string* @msg(%nyx_string* %1701, %nyx_string* %1718)
  %1720 = call i64 @sem_error(%nyx_string* %1719)
  ret i1 0
else418:
  br label %merge419
merge419:
  ret i1 1
}

define internal i1 @type_has_any_local_impl(
%nyx_string* %type_name.param) {
  %type_name.ptr = alloca %nyx_string*
  store %nyx_string* %type_name.param, %nyx_string** %type_name.ptr
  %1721 = alloca i64
  store i64 0, i64* %1721
  br label %while_cond420
while_cond420:
  %1722 = load i64, i64* %1721
  %1723 = load i64, i64* @g_trait_impl_count
  %1724 = icmp slt i64 %1722, %1723
  br i1 %1724, label %while_body421, label %while_end422
while_body421:
  %1725 = load { i64, i8* }*, { i64, i8* }** @g_trait_impl_types
  %1726 = load i64, i64* %1721
  %1727 = call i64 @nyx_array_get({ i64, i8* }* %1725, i64 %1726)
  %1728 = inttoptr i64 %1727 to %nyx_string*
  %1729 = alloca %nyx_string*
  store %nyx_string* %1728, %nyx_string** %1729
  %1730 = load %nyx_string*, %nyx_string** %1729
  %1731 = load %nyx_string*, %nyx_string** %type_name.ptr
  %1732 = call i8* @nyx_string_to_cstr(%nyx_string* %1730)
  %1733 = call i8* @nyx_string_to_cstr(%nyx_string* %1731)
  %1734 = call i32 @strcmp(i8* %1732, i8* %1733)
  %1735 = icmp eq i32 %1734, 0
  br i1 %1735, label %then423, label %else424
then423:
  ret i1 1
else424:
  br label %merge425
merge425:
  %1736 = load i64, i64* %1721
  %1737 = add i64 %1736, 1
  store i64 %1737, i64* %1721
  br label %while_cond420
while_end422:
  ret i1 0
}

define internal { i64, i8* }* @impl_params_to_types(
{ i64, i8* }* %params.param) {
  %params.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %params.param, { i64, i8* }** %params.ptr
  %1738 = alloca i64
  store i64 0, i64* %1738
  %1739 = load { i64, i8* }*, { i64, i8* }** %params.ptr
  %1740 = call i64 @nyx_array_length({ i64, i8* }* %1739)
  %1741 = icmp sgt i64 %1740, 0
  br i1 %1741, label %then426, label %else427
then426:
  %1742 = load { i64, i8* }*, { i64, i8* }** %params.ptr
  %1743 = call i64 @nyx_array_get({ i64, i8* }* %1742, i64 0)
  %1744 = inttoptr i64 %1743 to { i64, i8* }*
  %1745 = alloca { i64, i8* }*
  store { i64, i8* }* %1744, { i64, i8* }** %1745
  %1746 = load { i64, i8* }*, { i64, i8* }** %1745
  %1747 = call i64 @nyx_array_get({ i64, i8* }* %1746, i64 0)
  %1748 = inttoptr i64 %1747 to %nyx_string*
  %1749 = alloca %nyx_string*
  store %nyx_string* %1748, %nyx_string** %1749
  %1750 = load %nyx_string*, %nyx_string** %1749
  %1751 = getelementptr [5 x i8], [5 x i8]* @.str93, i32 0, i32 0
  %1752 = call %nyx_string* @nyx_string_from_cstr(i8* %1751)
  %1753 = call i8* @nyx_string_to_cstr(%nyx_string* %1750)
  %1754 = call i8* @nyx_string_to_cstr(%nyx_string* %1752)
  %1755 = call i32 @strcmp(i8* %1753, i8* %1754)
  %1756 = icmp eq i32 %1755, 0
  br i1 %1756, label %then429, label %else430
then429:
  store i64 1, i64* %1738
  br label %merge431
else430:
  br label %merge431
merge431:
  %1757 = load %nyx_string*, %nyx_string** %1749
  %1758 = getelementptr [6 x i8], [6 x i8]* @.str94, i32 0, i32 0
  %1759 = call %nyx_string* @nyx_string_from_cstr(i8* %1758)
  %1760 = call i8* @nyx_string_to_cstr(%nyx_string* %1757)
  %1761 = call i8* @nyx_string_to_cstr(%nyx_string* %1759)
  %1762 = call i32 @strcmp(i8* %1760, i8* %1761)
  %1763 = icmp eq i32 %1762, 0
  br i1 %1763, label %then432, label %else433
then432:
  store i64 1, i64* %1738
  br label %merge434
else433:
  br label %merge434
merge434:
  %1764 = load %nyx_string*, %nyx_string** %1749
  %1765 = getelementptr [10 x i8], [10 x i8]* @.str95, i32 0, i32 0
  %1766 = call %nyx_string* @nyx_string_from_cstr(i8* %1765)
  %1767 = call i8* @nyx_string_to_cstr(%nyx_string* %1764)
  %1768 = call i8* @nyx_string_to_cstr(%nyx_string* %1766)
  %1769 = call i32 @strcmp(i8* %1767, i8* %1768)
  %1770 = icmp eq i32 %1769, 0
  br i1 %1770, label %then435, label %else436
then435:
  store i64 1, i64* %1738
  br label %merge437
else436:
  br label %merge437
merge437:
  br label %merge428
else427:
  br label %merge428
merge428:
  %1771 = call { i64, i8* }* @nyx_array_new_ptr()
  %1772 = alloca { i64, i8* }*
  store { i64, i8* }* %1771, { i64, i8* }** %1772
  %1773 = load i64, i64* %1738
  %1774 = alloca i64
  store i64 %1773, i64* %1774
  br label %while_cond438
while_cond438:
  %1775 = load i64, i64* %1774
  %1776 = load { i64, i8* }*, { i64, i8* }** %params.ptr
  %1777 = call i64 @nyx_array_length({ i64, i8* }* %1776)
  %1778 = icmp slt i64 %1775, %1777
  br i1 %1778, label %while_body439, label %while_end440
while_body439:
  %1779 = load { i64, i8* }*, { i64, i8* }** %params.ptr
  %1780 = load i64, i64* %1774
  %1781 = call i64 @nyx_array_get({ i64, i8* }* %1779, i64 %1780)
  %1782 = inttoptr i64 %1781 to { i64, i8* }*
  %1783 = alloca { i64, i8* }*
  store { i64, i8* }* %1782, { i64, i8* }** %1783
  %1784 = load { i64, i8* }*, { i64, i8* }** %1783
  %1785 = call i64 @nyx_array_get({ i64, i8* }* %1784, i64 1)
  %1786 = inttoptr i64 %1785 to %nyx_string*
  %1787 = alloca %nyx_string*
  store %nyx_string* %1786, %nyx_string** %1787
  %1788 = call { i64, i8* }* @ty_unknown()
  %1789 = alloca { i64, i8* }*
  store { i64, i8* }* %1788, { i64, i8* }** %1789
  %1790 = load %nyx_string*, %nyx_string** %1787
  %1791 = getelementptr [1 x i8], [1 x i8]* @.str96, i32 0, i32 0
  %1792 = call %nyx_string* @nyx_string_from_cstr(i8* %1791)
  %1793 = call i8* @nyx_string_to_cstr(%nyx_string* %1790)
  %1794 = call i8* @nyx_string_to_cstr(%nyx_string* %1792)
  %1795 = call i32 @strcmp(i8* %1793, i8* %1794)
  %1796 = icmp ne i32 %1795, 0
  br i1 %1796, label %then441, label %else442
then441:
  %1797 = alloca i1
  store i1 0, i1* %1797
  %1798 = load %nyx_string*, %nyx_string** %1787
  %1799 = call i64 @nyx_string_length_utf8(%nyx_string* %1798)
  %1800 = icmp sge i64 %1799, 3
  br i1 %1800, label %then444, label %else445
then444:
  %1801 = load %nyx_string*, %nyx_string** %1787
  %1802 = call %nyx_string* @nyx_string_substring(%nyx_string* %1801, i64 0, i64 3)
  %1803 = getelementptr [4 x i8], [4 x i8]* @.str97, i32 0, i32 0
  %1804 = call %nyx_string* @nyx_string_from_cstr(i8* %1803)
  %1805 = call i8* @nyx_string_to_cstr(%nyx_string* %1802)
  %1806 = call i8* @nyx_string_to_cstr(%nyx_string* %1804)
  %1807 = call i32 @strcmp(i8* %1805, i8* %1806)
  %1808 = icmp eq i32 %1807, 0
  br i1 %1808, label %then447, label %else448
then447:
  store i1 1, i1* %1797
  br label %merge449
else448:
  br label %merge449
merge449:
  br label %merge446
else445:
  br label %merge446
merge446:
  %1809 = load i1, i1* %1797
  %1810 = xor i1 %1809, true
  br i1 %1810, label %then450, label %else451
then450:
  %1811 = load %nyx_string*, %nyx_string** %1787
  %1812 = call { i64, i8* }* @ty_parse(%nyx_string* %1811)
  %1813 = call { i64, i8* }* @resolve_type({ i64, i8* }* %1812)
  store { i64, i8* }* %1813, { i64, i8* }** %1789
  br label %merge452
else451:
  br label %merge452
merge452:
  br label %merge443
else442:
  br label %merge443
merge443:
  %1814 = load { i64, i8* }*, { i64, i8* }** %1772
  %1815 = load { i64, i8* }*, { i64, i8* }** %1789
  %1816 = ptrtoint { i64, i8* }* %1815 to i64
  call void @nyx_array_push({ i64, i8* }* %1814, i64 %1816)
  %1817 = load i64, i64* %1774
  %1818 = add i64 %1817, 1
  store i64 %1818, i64* %1774
  br label %while_cond438
while_end440:
  %1819 = load { i64, i8* }*, { i64, i8* }** %1772
  ret { i64, i8* }* %1819
}

define internal { i64, i8* }* @params_to_types(
{ i64, i8* }* %params.param) {
  %params.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %params.param, { i64, i8* }** %params.ptr
  %1820 = call { i64, i8* }* @nyx_array_new_ptr()
  %1821 = alloca { i64, i8* }*
  store { i64, i8* }* %1820, { i64, i8* }** %1821
  %1822 = alloca i64
  store i64 0, i64* %1822
  br label %while_cond453
while_cond453:
  %1823 = load i64, i64* %1822
  %1824 = load { i64, i8* }*, { i64, i8* }** %params.ptr
  %1825 = call i64 @nyx_array_length({ i64, i8* }* %1824)
  %1826 = icmp slt i64 %1823, %1825
  br i1 %1826, label %while_body454, label %while_end455
while_body454:
  %1827 = load { i64, i8* }*, { i64, i8* }** %params.ptr
  %1828 = load i64, i64* %1822
  %1829 = call i64 @nyx_array_get({ i64, i8* }* %1827, i64 %1828)
  %1830 = inttoptr i64 %1829 to { i64, i8* }*
  %1831 = alloca { i64, i8* }*
  store { i64, i8* }* %1830, { i64, i8* }** %1831
  %1832 = load { i64, i8* }*, { i64, i8* }** %1831
  %1833 = call i64 @nyx_array_get({ i64, i8* }* %1832, i64 1)
  %1834 = inttoptr i64 %1833 to %nyx_string*
  %1835 = alloca %nyx_string*
  store %nyx_string* %1834, %nyx_string** %1835
  %1836 = call { i64, i8* }* @ty_unknown()
  %1837 = alloca { i64, i8* }*
  store { i64, i8* }* %1836, { i64, i8* }** %1837
  %1838 = load %nyx_string*, %nyx_string** %1835
  %1839 = getelementptr [1 x i8], [1 x i8]* @.str98, i32 0, i32 0
  %1840 = call %nyx_string* @nyx_string_from_cstr(i8* %1839)
  %1841 = call i8* @nyx_string_to_cstr(%nyx_string* %1838)
  %1842 = call i8* @nyx_string_to_cstr(%nyx_string* %1840)
  %1843 = call i32 @strcmp(i8* %1841, i8* %1842)
  %1844 = icmp ne i32 %1843, 0
  br i1 %1844, label %then456, label %else457
then456:
  %1845 = alloca i1
  store i1 0, i1* %1845
  %1846 = load %nyx_string*, %nyx_string** %1835
  %1847 = call i64 @nyx_string_length_utf8(%nyx_string* %1846)
  %1848 = icmp sge i64 %1847, 3
  br i1 %1848, label %then459, label %else460
then459:
  %1849 = load %nyx_string*, %nyx_string** %1835
  %1850 = call %nyx_string* @nyx_string_substring(%nyx_string* %1849, i64 0, i64 3)
  %1851 = getelementptr [4 x i8], [4 x i8]* @.str99, i32 0, i32 0
  %1852 = call %nyx_string* @nyx_string_from_cstr(i8* %1851)
  %1853 = call i8* @nyx_string_to_cstr(%nyx_string* %1850)
  %1854 = call i8* @nyx_string_to_cstr(%nyx_string* %1852)
  %1855 = call i32 @strcmp(i8* %1853, i8* %1854)
  %1856 = icmp eq i32 %1855, 0
  br i1 %1856, label %then462, label %else463
then462:
  store i1 1, i1* %1845
  br label %merge464
else463:
  br label %merge464
merge464:
  br label %merge461
else460:
  br label %merge461
merge461:
  %1857 = load i1, i1* %1845
  %1858 = xor i1 %1857, true
  br i1 %1858, label %then465, label %else466
then465:
  %1859 = load %nyx_string*, %nyx_string** %1835
  %1860 = call { i64, i8* }* @ty_parse(%nyx_string* %1859)
  %1861 = call { i64, i8* }* @resolve_type({ i64, i8* }* %1860)
  store { i64, i8* }* %1861, { i64, i8* }** %1837
  br label %merge467
else466:
  br label %merge467
merge467:
  br label %merge458
else457:
  br label %merge458
merge458:
  %1862 = load { i64, i8* }*, { i64, i8* }** %1821
  %1863 = load { i64, i8* }*, { i64, i8* }** %1837
  %1864 = ptrtoint { i64, i8* }* %1863 to i64
  call void @nyx_array_push({ i64, i8* }* %1862, i64 %1864)
  %1865 = load i64, i64* %1822
  %1866 = add i64 %1865, 1
  store i64 %1866, i64* %1822
  br label %while_cond453
while_end455:
  %1867 = load { i64, i8* }*, { i64, i8* }** %1821
  ret { i64, i8* }* %1867
}

define internal %nyx_string* @scope_lookup(
%nyx_string* %name.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %1868 = load i64, i64* @g_sym_count
  %1869 = sub i64 %1868, 1
  %1870 = alloca i64
  store i64 %1869, i64* %1870
  br label %while_cond468
while_cond468:
  %1871 = load i64, i64* %1870
  %1872 = icmp sge i64 %1871, 0
  br i1 %1872, label %while_body469, label %while_end470
while_body469:
  %1873 = load { i64, i8* }*, { i64, i8* }** @g_sym_names
  %1874 = load i64, i64* %1870
  %1875 = call i64 @nyx_array_get({ i64, i8* }* %1873, i64 %1874)
  %1876 = inttoptr i64 %1875 to %nyx_string*
  %1877 = alloca %nyx_string*
  store %nyx_string* %1876, %nyx_string** %1877
  %1878 = load %nyx_string*, %nyx_string** %1877
  %1879 = load %nyx_string*, %nyx_string** %name.ptr
  %1880 = call i8* @nyx_string_to_cstr(%nyx_string* %1878)
  %1881 = call i8* @nyx_string_to_cstr(%nyx_string* %1879)
  %1882 = call i32 @strcmp(i8* %1880, i8* %1881)
  %1883 = icmp eq i32 %1882, 0
  br i1 %1883, label %then471, label %else472
then471:
  %1884 = load { i64, i8* }*, { i64, i8* }** @g_sym_kinds
  %1885 = load i64, i64* %1870
  %1886 = call i64 @nyx_array_get({ i64, i8* }* %1884, i64 %1885)
  %1887 = inttoptr i64 %1886 to %nyx_string*
  %1888 = alloca %nyx_string*
  store %nyx_string* %1887, %nyx_string** %1888
  %1889 = load %nyx_string*, %nyx_string** %1888
  ret %nyx_string* %1889
else472:
  br label %merge473
merge473:
  %1890 = load i64, i64* %1870
  %1891 = sub i64 %1890, 1
  store i64 %1891, i64* %1870
  br label %while_cond468
while_end470:
  %1892 = getelementptr [1 x i8], [1 x i8]* @.str100, i32 0, i32 0
  %1893 = call %nyx_string* @nyx_string_from_cstr(i8* %1892)
  ret %nyx_string* %1893
}

define internal i64 @scope_get_arity(
%nyx_string* %name.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %1894 = load i64, i64* @g_sym_count
  %1895 = sub i64 %1894, 1
  %1896 = alloca i64
  store i64 %1895, i64* %1896
  br label %while_cond474
while_cond474:
  %1897 = load i64, i64* %1896
  %1898 = icmp sge i64 %1897, 0
  br i1 %1898, label %while_body475, label %while_end476
while_body475:
  %1899 = load { i64, i8* }*, { i64, i8* }** @g_sym_names
  %1900 = load i64, i64* %1896
  %1901 = call i64 @nyx_array_get({ i64, i8* }* %1899, i64 %1900)
  %1902 = inttoptr i64 %1901 to %nyx_string*
  %1903 = alloca %nyx_string*
  store %nyx_string* %1902, %nyx_string** %1903
  %1904 = load %nyx_string*, %nyx_string** %1903
  %1905 = load %nyx_string*, %nyx_string** %name.ptr
  %1906 = call i8* @nyx_string_to_cstr(%nyx_string* %1904)
  %1907 = call i8* @nyx_string_to_cstr(%nyx_string* %1905)
  %1908 = call i32 @strcmp(i8* %1906, i8* %1907)
  %1909 = icmp eq i32 %1908, 0
  br i1 %1909, label %then477, label %else478
then477:
  %1910 = load { i64, i8* }*, { i64, i8* }** @g_sym_arities
  %1911 = load i64, i64* %1896
  %1912 = call i64 @nyx_array_get({ i64, i8* }* %1910, i64 %1911)
  %1913 = alloca i64
  store i64 %1912, i64* %1913
  %1914 = load i64, i64* %1913
  ret i64 %1914
else478:
  br label %merge479
merge479:
  %1915 = load i64, i64* %1896
  %1916 = sub i64 %1915, 1
  store i64 %1916, i64* %1896
  br label %while_cond474
while_end476:
  %1917 = sub i64 0, 1
  ret i64 %1917
}

define internal i64 @register_builtins(
) {
  %1918 = getelementptr [6 x i8], [6 x i8]* @.str101, i32 0, i32 0
  %1919 = call %nyx_string* @nyx_string_from_cstr(i8* %1918)
  %1920 = getelementptr [8 x i8], [8 x i8]* @.str102, i32 0, i32 0
  %1921 = call %nyx_string* @nyx_string_from_cstr(i8* %1920)
  %1922 = call i64 @scope_declare_fn(%nyx_string* %1919, %nyx_string* %1921, i64 1)
  %1923 = getelementptr [14 x i8], [14 x i8]* @.str103, i32 0, i32 0
  %1924 = call %nyx_string* @nyx_string_from_cstr(i8* %1923)
  %1925 = getelementptr [8 x i8], [8 x i8]* @.str104, i32 0, i32 0
  %1926 = call %nyx_string* @nyx_string_from_cstr(i8* %1925)
  %1927 = call i64 @scope_declare_fn(%nyx_string* %1924, %nyx_string* %1926, i64 1)
  %1928 = getelementptr [16 x i8], [16 x i8]* @.str105, i32 0, i32 0
  %1929 = call %nyx_string* @nyx_string_from_cstr(i8* %1928)
  %1930 = getelementptr [8 x i8], [8 x i8]* @.str106, i32 0, i32 0
  %1931 = call %nyx_string* @nyx_string_from_cstr(i8* %1930)
  %1932 = call i64 @scope_declare_fn(%nyx_string* %1929, %nyx_string* %1931, i64 1)
  %1933 = getelementptr [15 x i8], [15 x i8]* @.str107, i32 0, i32 0
  %1934 = call %nyx_string* @nyx_string_from_cstr(i8* %1933)
  %1935 = getelementptr [8 x i8], [8 x i8]* @.str108, i32 0, i32 0
  %1936 = call %nyx_string* @nyx_string_from_cstr(i8* %1935)
  %1937 = call i64 @scope_declare_fn(%nyx_string* %1934, %nyx_string* %1936, i64 1)
  %1938 = getelementptr [13 x i8], [13 x i8]* @.str109, i32 0, i32 0
  %1939 = call %nyx_string* @nyx_string_from_cstr(i8* %1938)
  %1940 = getelementptr [8 x i8], [8 x i8]* @.str110, i32 0, i32 0
  %1941 = call %nyx_string* @nyx_string_from_cstr(i8* %1940)
  %1942 = call i64 @scope_declare_fn(%nyx_string* %1939, %nyx_string* %1941, i64 1)
  %1943 = getelementptr [13 x i8], [13 x i8]* @.str111, i32 0, i32 0
  %1944 = call %nyx_string* @nyx_string_from_cstr(i8* %1943)
  %1945 = getelementptr [8 x i8], [8 x i8]* @.str112, i32 0, i32 0
  %1946 = call %nyx_string* @nyx_string_from_cstr(i8* %1945)
  %1947 = call i64 @scope_declare_fn(%nyx_string* %1944, %nyx_string* %1946, i64 1)
  %1948 = getelementptr [10 x i8], [10 x i8]* @.str113, i32 0, i32 0
  %1949 = call %nyx_string* @nyx_string_from_cstr(i8* %1948)
  %1950 = getelementptr [8 x i8], [8 x i8]* @.str114, i32 0, i32 0
  %1951 = call %nyx_string* @nyx_string_from_cstr(i8* %1950)
  %1952 = call i64 @scope_declare_fn(%nyx_string* %1949, %nyx_string* %1951, i64 1)
  %1953 = getelementptr [11 x i8], [11 x i8]* @.str115, i32 0, i32 0
  %1954 = call %nyx_string* @nyx_string_from_cstr(i8* %1953)
  %1955 = getelementptr [8 x i8], [8 x i8]* @.str116, i32 0, i32 0
  %1956 = call %nyx_string* @nyx_string_from_cstr(i8* %1955)
  %1957 = call i64 @scope_declare_fn(%nyx_string* %1954, %nyx_string* %1956, i64 2)
  %1958 = getelementptr [12 x i8], [12 x i8]* @.str117, i32 0, i32 0
  %1959 = call %nyx_string* @nyx_string_from_cstr(i8* %1958)
  %1960 = getelementptr [8 x i8], [8 x i8]* @.str118, i32 0, i32 0
  %1961 = call %nyx_string* @nyx_string_from_cstr(i8* %1960)
  %1962 = call i64 @scope_declare_fn(%nyx_string* %1959, %nyx_string* %1961, i64 1)
  %1963 = getelementptr [10 x i8], [10 x i8]* @.str119, i32 0, i32 0
  %1964 = call %nyx_string* @nyx_string_from_cstr(i8* %1963)
  %1965 = getelementptr [8 x i8], [8 x i8]* @.str120, i32 0, i32 0
  %1966 = call %nyx_string* @nyx_string_from_cstr(i8* %1965)
  %1967 = call i64 @scope_declare_fn(%nyx_string* %1964, %nyx_string* %1966, i64 2)
  %1968 = getelementptr [11 x i8], [11 x i8]* @.str121, i32 0, i32 0
  %1969 = call %nyx_string* @nyx_string_from_cstr(i8* %1968)
  %1970 = getelementptr [8 x i8], [8 x i8]* @.str122, i32 0, i32 0
  %1971 = call %nyx_string* @nyx_string_from_cstr(i8* %1970)
  %1972 = call i64 @scope_declare_fn(%nyx_string* %1969, %nyx_string* %1971, i64 1)
  %1973 = getelementptr [15 x i8], [15 x i8]* @.str123, i32 0, i32 0
  %1974 = call %nyx_string* @nyx_string_from_cstr(i8* %1973)
  %1975 = getelementptr [8 x i8], [8 x i8]* @.str124, i32 0, i32 0
  %1976 = call %nyx_string* @nyx_string_from_cstr(i8* %1975)
  %1977 = call i64 @scope_declare_fn(%nyx_string* %1974, %nyx_string* %1976, i64 1)
  %1978 = getelementptr [16 x i8], [16 x i8]* @.str125, i32 0, i32 0
  %1979 = call %nyx_string* @nyx_string_from_cstr(i8* %1978)
  %1980 = getelementptr [8 x i8], [8 x i8]* @.str126, i32 0, i32 0
  %1981 = call %nyx_string* @nyx_string_from_cstr(i8* %1980)
  %1982 = call i64 @scope_declare_fn(%nyx_string* %1979, %nyx_string* %1981, i64 2)
  %1983 = getelementptr [18 x i8], [18 x i8]* @.str127, i32 0, i32 0
  %1984 = call %nyx_string* @nyx_string_from_cstr(i8* %1983)
  %1985 = getelementptr [8 x i8], [8 x i8]* @.str128, i32 0, i32 0
  %1986 = call %nyx_string* @nyx_string_from_cstr(i8* %1985)
  %1987 = call i64 @scope_declare_fn(%nyx_string* %1984, %nyx_string* %1986, i64 2)
  %1988 = getelementptr [17 x i8], [17 x i8]* @.str129, i32 0, i32 0
  %1989 = call %nyx_string* @nyx_string_from_cstr(i8* %1988)
  %1990 = getelementptr [8 x i8], [8 x i8]* @.str130, i32 0, i32 0
  %1991 = call %nyx_string* @nyx_string_from_cstr(i8* %1990)
  %1992 = call i64 @scope_declare_fn(%nyx_string* %1989, %nyx_string* %1991, i64 2)
  %1993 = getelementptr [10 x i8], [10 x i8]* @.str131, i32 0, i32 0
  %1994 = call %nyx_string* @nyx_string_from_cstr(i8* %1993)
  %1995 = getelementptr [8 x i8], [8 x i8]* @.str132, i32 0, i32 0
  %1996 = call %nyx_string* @nyx_string_from_cstr(i8* %1995)
  %1997 = call i64 @scope_declare_fn(%nyx_string* %1994, %nyx_string* %1996, i64 3)
  %1998 = getelementptr [10 x i8], [10 x i8]* @.str133, i32 0, i32 0
  %1999 = call %nyx_string* @nyx_string_from_cstr(i8* %1998)
  %2000 = getelementptr [8 x i8], [8 x i8]* @.str134, i32 0, i32 0
  %2001 = call %nyx_string* @nyx_string_from_cstr(i8* %2000)
  %2002 = call i64 @scope_declare_fn(%nyx_string* %1999, %nyx_string* %2001, i64 1)
  %2003 = getelementptr [11 x i8], [11 x i8]* @.str135, i32 0, i32 0
  %2004 = call %nyx_string* @nyx_string_from_cstr(i8* %2003)
  %2005 = getelementptr [8 x i8], [8 x i8]* @.str136, i32 0, i32 0
  %2006 = call %nyx_string* @nyx_string_from_cstr(i8* %2005)
  %2007 = call i64 @scope_declare_fn(%nyx_string* %2004, %nyx_string* %2006, i64 1)
  %2008 = getelementptr [6 x i8], [6 x i8]* @.str137, i32 0, i32 0
  %2009 = call %nyx_string* @nyx_string_from_cstr(i8* %2008)
  %2010 = getelementptr [8 x i8], [8 x i8]* @.str138, i32 0, i32 0
  %2011 = call %nyx_string* @nyx_string_from_cstr(i8* %2010)
  %2012 = call i64 @scope_declare_fn(%nyx_string* %2009, %nyx_string* %2011, i64 1)
  %2013 = getelementptr [8 x i8], [8 x i8]* @.str139, i32 0, i32 0
  %2014 = call %nyx_string* @nyx_string_from_cstr(i8* %2013)
  %2015 = getelementptr [8 x i8], [8 x i8]* @.str140, i32 0, i32 0
  %2016 = call %nyx_string* @nyx_string_from_cstr(i8* %2015)
  %2017 = call i64 @scope_declare_fn(%nyx_string* %2014, %nyx_string* %2016, i64 1)
  %2018 = getelementptr [12 x i8], [12 x i8]* @.str141, i32 0, i32 0
  %2019 = call %nyx_string* @nyx_string_from_cstr(i8* %2018)
  %2020 = getelementptr [8 x i8], [8 x i8]* @.str142, i32 0, i32 0
  %2021 = call %nyx_string* @nyx_string_from_cstr(i8* %2020)
  %2022 = call i64 @scope_declare_fn(%nyx_string* %2019, %nyx_string* %2021, i64 1)
  %2023 = getelementptr [12 x i8], [12 x i8]* @.str143, i32 0, i32 0
  %2024 = call %nyx_string* @nyx_string_from_cstr(i8* %2023)
  %2025 = getelementptr [8 x i8], [8 x i8]* @.str144, i32 0, i32 0
  %2026 = call %nyx_string* @nyx_string_from_cstr(i8* %2025)
  %2027 = call i64 @scope_declare_fn(%nyx_string* %2024, %nyx_string* %2026, i64 2)
  %2028 = getelementptr [12 x i8], [12 x i8]* @.str145, i32 0, i32 0
  %2029 = call %nyx_string* @nyx_string_from_cstr(i8* %2028)
  %2030 = getelementptr [8 x i8], [8 x i8]* @.str146, i32 0, i32 0
  %2031 = call %nyx_string* @nyx_string_from_cstr(i8* %2030)
  %2032 = call i64 @scope_declare_fn(%nyx_string* %2029, %nyx_string* %2031, i64 1)
  %2033 = getelementptr [18 x i8], [18 x i8]* @.str147, i32 0, i32 0
  %2034 = call %nyx_string* @nyx_string_from_cstr(i8* %2033)
  %2035 = getelementptr [8 x i8], [8 x i8]* @.str148, i32 0, i32 0
  %2036 = call %nyx_string* @nyx_string_from_cstr(i8* %2035)
  %2037 = call i64 @scope_declare_fn(%nyx_string* %2034, %nyx_string* %2036, i64 3)
  %2038 = getelementptr [23 x i8], [23 x i8]* @.str149, i32 0, i32 0
  %2039 = call %nyx_string* @nyx_string_from_cstr(i8* %2038)
  %2040 = getelementptr [8 x i8], [8 x i8]* @.str150, i32 0, i32 0
  %2041 = call %nyx_string* @nyx_string_from_cstr(i8* %2040)
  %2042 = call i64 @scope_declare_fn(%nyx_string* %2039, %nyx_string* %2041, i64 1)
  %2043 = getelementptr [11 x i8], [11 x i8]* @.str151, i32 0, i32 0
  %2044 = call %nyx_string* @nyx_string_from_cstr(i8* %2043)
  %2045 = getelementptr [8 x i8], [8 x i8]* @.str152, i32 0, i32 0
  %2046 = call %nyx_string* @nyx_string_from_cstr(i8* %2045)
  %2047 = call i64 @scope_declare_fn(%nyx_string* %2044, %nyx_string* %2046, i64 2)
  %2048 = getelementptr [11 x i8], [11 x i8]* @.str153, i32 0, i32 0
  %2049 = call %nyx_string* @nyx_string_from_cstr(i8* %2048)
  %2050 = getelementptr [8 x i8], [8 x i8]* @.str154, i32 0, i32 0
  %2051 = call %nyx_string* @nyx_string_from_cstr(i8* %2050)
  %2052 = call i64 @scope_declare_fn(%nyx_string* %2049, %nyx_string* %2051, i64 1)
  %2053 = getelementptr [12 x i8], [12 x i8]* @.str155, i32 0, i32 0
  %2054 = call %nyx_string* @nyx_string_from_cstr(i8* %2053)
  %2055 = getelementptr [8 x i8], [8 x i8]* @.str156, i32 0, i32 0
  %2056 = call %nyx_string* @nyx_string_from_cstr(i8* %2055)
  %2057 = call i64 @scope_declare_fn(%nyx_string* %2054, %nyx_string* %2056, i64 2)
  %2058 = getelementptr [9 x i8], [9 x i8]* @.str157, i32 0, i32 0
  %2059 = call %nyx_string* @nyx_string_from_cstr(i8* %2058)
  %2060 = getelementptr [8 x i8], [8 x i8]* @.str158, i32 0, i32 0
  %2061 = call %nyx_string* @nyx_string_from_cstr(i8* %2060)
  %2062 = call i64 @scope_declare_fn(%nyx_string* %2059, %nyx_string* %2061, i64 2)
  %2063 = getelementptr [15 x i8], [15 x i8]* @.str159, i32 0, i32 0
  %2064 = call %nyx_string* @nyx_string_from_cstr(i8* %2063)
  %2065 = getelementptr [8 x i8], [8 x i8]* @.str160, i32 0, i32 0
  %2066 = call %nyx_string* @nyx_string_from_cstr(i8* %2065)
  %2067 = call i64 @scope_declare_fn(%nyx_string* %2064, %nyx_string* %2066, i64 2)
  %2068 = getelementptr [14 x i8], [14 x i8]* @.str161, i32 0, i32 0
  %2069 = call %nyx_string* @nyx_string_from_cstr(i8* %2068)
  %2070 = getelementptr [8 x i8], [8 x i8]* @.str162, i32 0, i32 0
  %2071 = call %nyx_string* @nyx_string_from_cstr(i8* %2070)
  %2072 = call i64 @scope_declare_fn(%nyx_string* %2069, %nyx_string* %2071, i64 1)
  %2073 = getelementptr [10 x i8], [10 x i8]* @.str163, i32 0, i32 0
  %2074 = call %nyx_string* @nyx_string_from_cstr(i8* %2073)
  %2075 = getelementptr [8 x i8], [8 x i8]* @.str164, i32 0, i32 0
  %2076 = call %nyx_string* @nyx_string_from_cstr(i8* %2075)
  %2077 = call i64 @scope_declare_fn(%nyx_string* %2074, %nyx_string* %2076, i64 2)
  %2078 = getelementptr [10 x i8], [10 x i8]* @.str165, i32 0, i32 0
  %2079 = call %nyx_string* @nyx_string_from_cstr(i8* %2078)
  %2080 = getelementptr [8 x i8], [8 x i8]* @.str166, i32 0, i32 0
  %2081 = call %nyx_string* @nyx_string_from_cstr(i8* %2080)
  %2082 = call i64 @scope_declare_fn(%nyx_string* %2079, %nyx_string* %2081, i64 1)
  %2083 = getelementptr [24 x i8], [24 x i8]* @.str167, i32 0, i32 0
  %2084 = call %nyx_string* @nyx_string_from_cstr(i8* %2083)
  %2085 = getelementptr [8 x i8], [8 x i8]* @.str168, i32 0, i32 0
  %2086 = call %nyx_string* @nyx_string_from_cstr(i8* %2085)
  %2087 = call i64 @scope_declare_fn(%nyx_string* %2084, %nyx_string* %2086, i64 1)
  %2088 = getelementptr [9 x i8], [9 x i8]* @.str169, i32 0, i32 0
  %2089 = call %nyx_string* @nyx_string_from_cstr(i8* %2088)
  %2090 = getelementptr [8 x i8], [8 x i8]* @.str170, i32 0, i32 0
  %2091 = call %nyx_string* @nyx_string_from_cstr(i8* %2090)
  %2092 = call i64 @scope_declare_fn(%nyx_string* %2089, %nyx_string* %2091, i64 2)
  %2093 = getelementptr [11 x i8], [11 x i8]* @.str171, i32 0, i32 0
  %2094 = call %nyx_string* @nyx_string_from_cstr(i8* %2093)
  %2095 = getelementptr [8 x i8], [8 x i8]* @.str172, i32 0, i32 0
  %2096 = call %nyx_string* @nyx_string_from_cstr(i8* %2095)
  %2097 = call i64 @scope_declare_fn(%nyx_string* %2094, %nyx_string* %2096, i64 4)
  %2098 = getelementptr [13 x i8], [13 x i8]* @.str173, i32 0, i32 0
  %2099 = call %nyx_string* @nyx_string_from_cstr(i8* %2098)
  %2100 = getelementptr [8 x i8], [8 x i8]* @.str174, i32 0, i32 0
  %2101 = call %nyx_string* @nyx_string_from_cstr(i8* %2100)
  %2102 = call i64 @scope_declare_fn(%nyx_string* %2099, %nyx_string* %2101, i64 2)
  %2103 = getelementptr [8 x i8], [8 x i8]* @.str175, i32 0, i32 0
  %2104 = call %nyx_string* @nyx_string_from_cstr(i8* %2103)
  %2105 = getelementptr [8 x i8], [8 x i8]* @.str176, i32 0, i32 0
  %2106 = call %nyx_string* @nyx_string_from_cstr(i8* %2105)
  %2107 = call i64 @scope_declare_fn(%nyx_string* %2104, %nyx_string* %2106, i64 1)
  %2108 = getelementptr [16 x i8], [16 x i8]* @.str177, i32 0, i32 0
  %2109 = call %nyx_string* @nyx_string_from_cstr(i8* %2108)
  %2110 = getelementptr [8 x i8], [8 x i8]* @.str178, i32 0, i32 0
  %2111 = call %nyx_string* @nyx_string_from_cstr(i8* %2110)
  %2112 = call i64 @scope_declare_fn(%nyx_string* %2109, %nyx_string* %2111, i64 2)
  %2113 = getelementptr [23 x i8], [23 x i8]* @.str179, i32 0, i32 0
  %2114 = call %nyx_string* @nyx_string_from_cstr(i8* %2113)
  %2115 = getelementptr [8 x i8], [8 x i8]* @.str180, i32 0, i32 0
  %2116 = call %nyx_string* @nyx_string_from_cstr(i8* %2115)
  %2117 = call i64 @scope_declare_fn(%nyx_string* %2114, %nyx_string* %2116, i64 1)
  %2118 = getelementptr [12 x i8], [12 x i8]* @.str181, i32 0, i32 0
  %2119 = call %nyx_string* @nyx_string_from_cstr(i8* %2118)
  %2120 = getelementptr [8 x i8], [8 x i8]* @.str182, i32 0, i32 0
  %2121 = call %nyx_string* @nyx_string_from_cstr(i8* %2120)
  %2122 = call i64 @scope_declare_fn(%nyx_string* %2119, %nyx_string* %2121, i64 1)
  %2123 = getelementptr [13 x i8], [13 x i8]* @.str183, i32 0, i32 0
  %2124 = call %nyx_string* @nyx_string_from_cstr(i8* %2123)
  %2125 = getelementptr [8 x i8], [8 x i8]* @.str184, i32 0, i32 0
  %2126 = call %nyx_string* @nyx_string_from_cstr(i8* %2125)
  %2127 = call i64 @scope_declare_fn(%nyx_string* %2124, %nyx_string* %2126, i64 1)
  %2128 = getelementptr [12 x i8], [12 x i8]* @.str185, i32 0, i32 0
  %2129 = call %nyx_string* @nyx_string_from_cstr(i8* %2128)
  %2130 = getelementptr [8 x i8], [8 x i8]* @.str186, i32 0, i32 0
  %2131 = call %nyx_string* @nyx_string_from_cstr(i8* %2130)
  %2132 = call i64 @scope_declare_fn(%nyx_string* %2129, %nyx_string* %2131, i64 1)
  %2133 = getelementptr [11 x i8], [11 x i8]* @.str187, i32 0, i32 0
  %2134 = call %nyx_string* @nyx_string_from_cstr(i8* %2133)
  %2135 = getelementptr [8 x i8], [8 x i8]* @.str188, i32 0, i32 0
  %2136 = call %nyx_string* @nyx_string_from_cstr(i8* %2135)
  %2137 = call i64 @scope_declare_fn(%nyx_string* %2134, %nyx_string* %2136, i64 1)
  %2138 = getelementptr [11 x i8], [11 x i8]* @.str189, i32 0, i32 0
  %2139 = call %nyx_string* @nyx_string_from_cstr(i8* %2138)
  %2140 = getelementptr [8 x i8], [8 x i8]* @.str190, i32 0, i32 0
  %2141 = call %nyx_string* @nyx_string_from_cstr(i8* %2140)
  %2142 = call i64 @scope_declare_fn(%nyx_string* %2139, %nyx_string* %2141, i64 1)
  %2143 = getelementptr [12 x i8], [12 x i8]* @.str191, i32 0, i32 0
  %2144 = call %nyx_string* @nyx_string_from_cstr(i8* %2143)
  %2145 = getelementptr [8 x i8], [8 x i8]* @.str192, i32 0, i32 0
  %2146 = call %nyx_string* @nyx_string_from_cstr(i8* %2145)
  %2147 = call i64 @scope_declare_fn(%nyx_string* %2144, %nyx_string* %2146, i64 1)
  %2148 = getelementptr [10 x i8], [10 x i8]* @.str193, i32 0, i32 0
  %2149 = call %nyx_string* @nyx_string_from_cstr(i8* %2148)
  %2150 = getelementptr [8 x i8], [8 x i8]* @.str194, i32 0, i32 0
  %2151 = call %nyx_string* @nyx_string_from_cstr(i8* %2150)
  %2152 = call i64 @scope_declare_fn(%nyx_string* %2149, %nyx_string* %2151, i64 2)
  %2153 = getelementptr [10 x i8], [10 x i8]* @.str195, i32 0, i32 0
  %2154 = call %nyx_string* @nyx_string_from_cstr(i8* %2153)
  %2155 = getelementptr [8 x i8], [8 x i8]* @.str196, i32 0, i32 0
  %2156 = call %nyx_string* @nyx_string_from_cstr(i8* %2155)
  %2157 = call i64 @scope_declare_fn(%nyx_string* %2154, %nyx_string* %2156, i64 0)
  %2158 = getelementptr [11 x i8], [11 x i8]* @.str197, i32 0, i32 0
  %2159 = call %nyx_string* @nyx_string_from_cstr(i8* %2158)
  %2160 = getelementptr [8 x i8], [8 x i8]* @.str198, i32 0, i32 0
  %2161 = call %nyx_string* @nyx_string_from_cstr(i8* %2160)
  %2162 = call i64 @scope_declare_fn(%nyx_string* %2159, %nyx_string* %2161, i64 1)
  %2163 = getelementptr [13 x i8], [13 x i8]* @.str199, i32 0, i32 0
  %2164 = call %nyx_string* @nyx_string_from_cstr(i8* %2163)
  %2165 = getelementptr [8 x i8], [8 x i8]* @.str200, i32 0, i32 0
  %2166 = call %nyx_string* @nyx_string_from_cstr(i8* %2165)
  %2167 = call i64 @scope_declare_fn(%nyx_string* %2164, %nyx_string* %2166, i64 1)
  %2168 = getelementptr [14 x i8], [14 x i8]* @.str201, i32 0, i32 0
  %2169 = call %nyx_string* @nyx_string_from_cstr(i8* %2168)
  %2170 = getelementptr [8 x i8], [8 x i8]* @.str202, i32 0, i32 0
  %2171 = call %nyx_string* @nyx_string_from_cstr(i8* %2170)
  %2172 = call i64 @scope_declare_fn(%nyx_string* %2169, %nyx_string* %2171, i64 1)
  %2173 = getelementptr [12 x i8], [12 x i8]* @.str203, i32 0, i32 0
  %2174 = call %nyx_string* @nyx_string_from_cstr(i8* %2173)
  %2175 = getelementptr [8 x i8], [8 x i8]* @.str204, i32 0, i32 0
  %2176 = call %nyx_string* @nyx_string_from_cstr(i8* %2175)
  %2177 = call i64 @scope_declare_fn(%nyx_string* %2174, %nyx_string* %2176, i64 1)
  %2178 = getelementptr [13 x i8], [13 x i8]* @.str205, i32 0, i32 0
  %2179 = call %nyx_string* @nyx_string_from_cstr(i8* %2178)
  %2180 = getelementptr [8 x i8], [8 x i8]* @.str206, i32 0, i32 0
  %2181 = call %nyx_string* @nyx_string_from_cstr(i8* %2180)
  %2182 = call i64 @scope_declare_fn(%nyx_string* %2179, %nyx_string* %2181, i64 2)
  %2183 = getelementptr [13 x i8], [13 x i8]* @.str207, i32 0, i32 0
  %2184 = call %nyx_string* @nyx_string_from_cstr(i8* %2183)
  %2185 = getelementptr [8 x i8], [8 x i8]* @.str208, i32 0, i32 0
  %2186 = call %nyx_string* @nyx_string_from_cstr(i8* %2185)
  %2187 = call i64 @scope_declare_fn(%nyx_string* %2184, %nyx_string* %2186, i64 1)
  %2188 = getelementptr [16 x i8], [16 x i8]* @.str209, i32 0, i32 0
  %2189 = call %nyx_string* @nyx_string_from_cstr(i8* %2188)
  %2190 = getelementptr [8 x i8], [8 x i8]* @.str210, i32 0, i32 0
  %2191 = call %nyx_string* @nyx_string_from_cstr(i8* %2190)
  %2192 = call i64 @scope_declare_fn(%nyx_string* %2189, %nyx_string* %2191, i64 1)
  %2193 = getelementptr [5 x i8], [5 x i8]* @.str211, i32 0, i32 0
  %2194 = call %nyx_string* @nyx_string_from_cstr(i8* %2193)
  %2195 = getelementptr [8 x i8], [8 x i8]* @.str212, i32 0, i32 0
  %2196 = call %nyx_string* @nyx_string_from_cstr(i8* %2195)
  %2197 = call i64 @scope_declare_fn(%nyx_string* %2194, %nyx_string* %2196, i64 1)
  %2198 = getelementptr [7 x i8], [7 x i8]* @.str213, i32 0, i32 0
  %2199 = call %nyx_string* @nyx_string_from_cstr(i8* %2198)
  %2200 = getelementptr [8 x i8], [8 x i8]* @.str214, i32 0, i32 0
  %2201 = call %nyx_string* @nyx_string_from_cstr(i8* %2200)
  %2202 = call i64 @scope_declare_fn(%nyx_string* %2199, %nyx_string* %2201, i64 1)
  %2203 = getelementptr [15 x i8], [15 x i8]* @.str215, i32 0, i32 0
  %2204 = call %nyx_string* @nyx_string_from_cstr(i8* %2203)
  %2205 = getelementptr [8 x i8], [8 x i8]* @.str216, i32 0, i32 0
  %2206 = call %nyx_string* @nyx_string_from_cstr(i8* %2205)
  %2207 = call i64 @scope_declare_fn(%nyx_string* %2204, %nyx_string* %2206, i64 2)
  %2208 = getelementptr [7 x i8], [7 x i8]* @.str217, i32 0, i32 0
  %2209 = call %nyx_string* @nyx_string_from_cstr(i8* %2208)
  %2210 = getelementptr [8 x i8], [8 x i8]* @.str218, i32 0, i32 0
  %2211 = call %nyx_string* @nyx_string_from_cstr(i8* %2210)
  %2212 = call i64 @scope_declare_fn(%nyx_string* %2209, %nyx_string* %2211, i64 2)
  %2213 = getelementptr [5 x i8], [5 x i8]* @.str219, i32 0, i32 0
  %2214 = call %nyx_string* @nyx_string_from_cstr(i8* %2213)
  %2215 = getelementptr [8 x i8], [8 x i8]* @.str220, i32 0, i32 0
  %2216 = call %nyx_string* @nyx_string_from_cstr(i8* %2215)
  %2217 = call i64 @scope_declare_fn(%nyx_string* %2214, %nyx_string* %2216, i64 1)
  %2218 = getelementptr [9 x i8], [9 x i8]* @.str221, i32 0, i32 0
  %2219 = call %nyx_string* @nyx_string_from_cstr(i8* %2218)
  %2220 = getelementptr [8 x i8], [8 x i8]* @.str222, i32 0, i32 0
  %2221 = call %nyx_string* @nyx_string_from_cstr(i8* %2220)
  %2222 = call i64 @scope_declare_fn(%nyx_string* %2219, %nyx_string* %2221, i64 0)
  %2223 = getelementptr [5 x i8], [5 x i8]* @.str223, i32 0, i32 0
  %2224 = call %nyx_string* @nyx_string_from_cstr(i8* %2223)
  %2225 = getelementptr [8 x i8], [8 x i8]* @.str224, i32 0, i32 0
  %2226 = call %nyx_string* @nyx_string_from_cstr(i8* %2225)
  %2227 = call i64 @scope_declare_fn(%nyx_string* %2224, %nyx_string* %2226, i64 0)
  %2228 = getelementptr [7 x i8], [7 x i8]* @.str225, i32 0, i32 0
  %2229 = call %nyx_string* @nyx_string_from_cstr(i8* %2228)
  %2230 = getelementptr [8 x i8], [8 x i8]* @.str226, i32 0, i32 0
  %2231 = call %nyx_string* @nyx_string_from_cstr(i8* %2230)
  %2232 = call i64 @scope_declare_fn(%nyx_string* %2229, %nyx_string* %2231, i64 2)
  %2233 = getelementptr [8 x i8], [8 x i8]* @.str227, i32 0, i32 0
  %2234 = call %nyx_string* @nyx_string_from_cstr(i8* %2233)
  %2235 = getelementptr [8 x i8], [8 x i8]* @.str228, i32 0, i32 0
  %2236 = call %nyx_string* @nyx_string_from_cstr(i8* %2235)
  %2237 = call i64 @scope_declare_fn(%nyx_string* %2234, %nyx_string* %2236, i64 2)
  %2238 = getelementptr [5 x i8], [5 x i8]* @.str229, i32 0, i32 0
  %2239 = call %nyx_string* @nyx_string_from_cstr(i8* %2238)
  %2240 = getelementptr [8 x i8], [8 x i8]* @.str230, i32 0, i32 0
  %2241 = call %nyx_string* @nyx_string_from_cstr(i8* %2240)
  %2242 = call i64 @scope_declare_fn(%nyx_string* %2239, %nyx_string* %2241, i64 2)
  %2243 = getelementptr [6 x i8], [6 x i8]* @.str231, i32 0, i32 0
  %2244 = call %nyx_string* @nyx_string_from_cstr(i8* %2243)
  %2245 = getelementptr [8 x i8], [8 x i8]* @.str232, i32 0, i32 0
  %2246 = call %nyx_string* @nyx_string_from_cstr(i8* %2245)
  %2247 = call i64 @scope_declare_fn(%nyx_string* %2244, %nyx_string* %2246, i64 1)
  %2248 = getelementptr [7 x i8], [7 x i8]* @.str233, i32 0, i32 0
  %2249 = call %nyx_string* @nyx_string_from_cstr(i8* %2248)
  %2250 = getelementptr [8 x i8], [8 x i8]* @.str234, i32 0, i32 0
  %2251 = call %nyx_string* @nyx_string_from_cstr(i8* %2250)
  %2252 = call i64 @scope_declare_fn(%nyx_string* %2249, %nyx_string* %2251, i64 0)
  %2253 = getelementptr [5 x i8], [5 x i8]* @.str235, i32 0, i32 0
  %2254 = call %nyx_string* @nyx_string_from_cstr(i8* %2253)
  %2255 = getelementptr [8 x i8], [8 x i8]* @.str236, i32 0, i32 0
  %2256 = call %nyx_string* @nyx_string_from_cstr(i8* %2255)
  %2257 = call i64 @scope_declare_fn(%nyx_string* %2254, %nyx_string* %2256, i64 1)
  %2258 = getelementptr [7 x i8], [7 x i8]* @.str237, i32 0, i32 0
  %2259 = call %nyx_string* @nyx_string_from_cstr(i8* %2258)
  %2260 = getelementptr [8 x i8], [8 x i8]* @.str238, i32 0, i32 0
  %2261 = call %nyx_string* @nyx_string_from_cstr(i8* %2260)
  %2262 = call i64 @scope_declare_fn(%nyx_string* %2259, %nyx_string* %2261, i64 1)
  %2263 = getelementptr [9 x i8], [9 x i8]* @.str239, i32 0, i32 0
  %2264 = call %nyx_string* @nyx_string_from_cstr(i8* %2263)
  %2265 = getelementptr [8 x i8], [8 x i8]* @.str240, i32 0, i32 0
  %2266 = call %nyx_string* @nyx_string_from_cstr(i8* %2265)
  %2267 = call i64 @scope_declare_fn(%nyx_string* %2264, %nyx_string* %2266, i64 1)
  %2268 = getelementptr [9 x i8], [9 x i8]* @.str241, i32 0, i32 0
  %2269 = call %nyx_string* @nyx_string_from_cstr(i8* %2268)
  %2270 = getelementptr [8 x i8], [8 x i8]* @.str242, i32 0, i32 0
  %2271 = call %nyx_string* @nyx_string_from_cstr(i8* %2270)
  %2272 = call i64 @scope_declare_fn(%nyx_string* %2269, %nyx_string* %2271, i64 0)
  %2273 = getelementptr [7 x i8], [7 x i8]* @.str243, i32 0, i32 0
  %2274 = call %nyx_string* @nyx_string_from_cstr(i8* %2273)
  %2275 = getelementptr [8 x i8], [8 x i8]* @.str244, i32 0, i32 0
  %2276 = call %nyx_string* @nyx_string_from_cstr(i8* %2275)
  %2277 = call i64 @scope_declare_fn(%nyx_string* %2274, %nyx_string* %2276, i64 0)
  %2278 = getelementptr [13 x i8], [13 x i8]* @.str245, i32 0, i32 0
  %2279 = call %nyx_string* @nyx_string_from_cstr(i8* %2278)
  %2280 = getelementptr [8 x i8], [8 x i8]* @.str246, i32 0, i32 0
  %2281 = call %nyx_string* @nyx_string_from_cstr(i8* %2280)
  %2282 = call i64 @scope_declare_fn(%nyx_string* %2279, %nyx_string* %2281, i64 2)
  %2283 = getelementptr [8 x i8], [8 x i8]* @.str247, i32 0, i32 0
  %2284 = call %nyx_string* @nyx_string_from_cstr(i8* %2283)
  %2285 = getelementptr [8 x i8], [8 x i8]* @.str248, i32 0, i32 0
  %2286 = call %nyx_string* @nyx_string_from_cstr(i8* %2285)
  %2287 = call i64 @scope_declare_fn(%nyx_string* %2284, %nyx_string* %2286, i64 2)
  %2288 = getelementptr [6 x i8], [6 x i8]* @.str249, i32 0, i32 0
  %2289 = call %nyx_string* @nyx_string_from_cstr(i8* %2288)
  %2290 = getelementptr [8 x i8], [8 x i8]* @.str250, i32 0, i32 0
  %2291 = call %nyx_string* @nyx_string_from_cstr(i8* %2290)
  %2292 = call i64 @scope_declare_fn(%nyx_string* %2289, %nyx_string* %2291, i64 1)
  %2293 = getelementptr [5 x i8], [5 x i8]* @.str251, i32 0, i32 0
  %2294 = call %nyx_string* @nyx_string_from_cstr(i8* %2293)
  %2295 = getelementptr [8 x i8], [8 x i8]* @.str252, i32 0, i32 0
  %2296 = call %nyx_string* @nyx_string_from_cstr(i8* %2295)
  %2297 = call i64 @scope_declare_fn(%nyx_string* %2294, %nyx_string* %2296, i64 0)
  %2298 = getelementptr [8 x i8], [8 x i8]* @.str253, i32 0, i32 0
  %2299 = call %nyx_string* @nyx_string_from_cstr(i8* %2298)
  %2300 = getelementptr [8 x i8], [8 x i8]* @.str254, i32 0, i32 0
  %2301 = call %nyx_string* @nyx_string_from_cstr(i8* %2300)
  %2302 = call i64 @scope_declare_fn(%nyx_string* %2299, %nyx_string* %2301, i64 0)
  %2303 = getelementptr [8 x i8], [8 x i8]* @.str255, i32 0, i32 0
  %2304 = call %nyx_string* @nyx_string_from_cstr(i8* %2303)
  %2305 = getelementptr [8 x i8], [8 x i8]* @.str256, i32 0, i32 0
  %2306 = call %nyx_string* @nyx_string_from_cstr(i8* %2305)
  %2307 = call i64 @scope_declare_fn(%nyx_string* %2304, %nyx_string* %2306, i64 0)
  %2308 = getelementptr [9 x i8], [9 x i8]* @.str257, i32 0, i32 0
  %2309 = call %nyx_string* @nyx_string_from_cstr(i8* %2308)
  %2310 = getelementptr [8 x i8], [8 x i8]* @.str258, i32 0, i32 0
  %2311 = call %nyx_string* @nyx_string_from_cstr(i8* %2310)
  %2312 = call i64 @scope_declare_fn(%nyx_string* %2309, %nyx_string* %2311, i64 1)
  %2313 = getelementptr [10 x i8], [10 x i8]* @.str259, i32 0, i32 0
  %2314 = call %nyx_string* @nyx_string_from_cstr(i8* %2313)
  %2315 = getelementptr [8 x i8], [8 x i8]* @.str260, i32 0, i32 0
  %2316 = call %nyx_string* @nyx_string_from_cstr(i8* %2315)
  %2317 = call i64 @scope_declare_fn(%nyx_string* %2314, %nyx_string* %2316, i64 1)
  %2318 = getelementptr [11 x i8], [11 x i8]* @.str261, i32 0, i32 0
  %2319 = call %nyx_string* @nyx_string_from_cstr(i8* %2318)
  %2320 = getelementptr [8 x i8], [8 x i8]* @.str262, i32 0, i32 0
  %2321 = call %nyx_string* @nyx_string_from_cstr(i8* %2320)
  %2322 = call i64 @scope_declare_fn(%nyx_string* %2319, %nyx_string* %2321, i64 1)
  %2323 = getelementptr [9 x i8], [9 x i8]* @.str263, i32 0, i32 0
  %2324 = call %nyx_string* @nyx_string_from_cstr(i8* %2323)
  %2325 = getelementptr [8 x i8], [8 x i8]* @.str264, i32 0, i32 0
  %2326 = call %nyx_string* @nyx_string_from_cstr(i8* %2325)
  %2327 = call i64 @scope_declare_fn(%nyx_string* %2324, %nyx_string* %2326, i64 1)
  %2328 = getelementptr [9 x i8], [9 x i8]* @.str265, i32 0, i32 0
  %2329 = call %nyx_string* @nyx_string_from_cstr(i8* %2328)
  %2330 = getelementptr [8 x i8], [8 x i8]* @.str266, i32 0, i32 0
  %2331 = call %nyx_string* @nyx_string_from_cstr(i8* %2330)
  %2332 = call i64 @scope_declare_fn(%nyx_string* %2329, %nyx_string* %2331, i64 1)
  %2333 = getelementptr [9 x i8], [9 x i8]* @.str267, i32 0, i32 0
  %2334 = call %nyx_string* @nyx_string_from_cstr(i8* %2333)
  %2335 = getelementptr [8 x i8], [8 x i8]* @.str268, i32 0, i32 0
  %2336 = call %nyx_string* @nyx_string_from_cstr(i8* %2335)
  %2337 = call i64 @scope_declare_fn(%nyx_string* %2334, %nyx_string* %2336, i64 1)
  %2338 = getelementptr [9 x i8], [9 x i8]* @.str269, i32 0, i32 0
  %2339 = call %nyx_string* @nyx_string_from_cstr(i8* %2338)
  %2340 = getelementptr [8 x i8], [8 x i8]* @.str270, i32 0, i32 0
  %2341 = call %nyx_string* @nyx_string_from_cstr(i8* %2340)
  %2342 = call i64 @scope_declare_fn(%nyx_string* %2339, %nyx_string* %2341, i64 1)
  %2343 = getelementptr [10 x i8], [10 x i8]* @.str271, i32 0, i32 0
  %2344 = call %nyx_string* @nyx_string_from_cstr(i8* %2343)
  %2345 = getelementptr [8 x i8], [8 x i8]* @.str272, i32 0, i32 0
  %2346 = call %nyx_string* @nyx_string_from_cstr(i8* %2345)
  %2347 = call i64 @scope_declare_fn(%nyx_string* %2344, %nyx_string* %2346, i64 1)
  %2348 = getelementptr [10 x i8], [10 x i8]* @.str273, i32 0, i32 0
  %2349 = call %nyx_string* @nyx_string_from_cstr(i8* %2348)
  %2350 = getelementptr [8 x i8], [8 x i8]* @.str274, i32 0, i32 0
  %2351 = call %nyx_string* @nyx_string_from_cstr(i8* %2350)
  %2352 = call i64 @scope_declare_fn(%nyx_string* %2349, %nyx_string* %2351, i64 1)
  %2353 = getelementptr [10 x i8], [10 x i8]* @.str275, i32 0, i32 0
  %2354 = call %nyx_string* @nyx_string_from_cstr(i8* %2353)
  %2355 = getelementptr [8 x i8], [8 x i8]* @.str276, i32 0, i32 0
  %2356 = call %nyx_string* @nyx_string_from_cstr(i8* %2355)
  %2357 = call i64 @scope_declare_fn(%nyx_string* %2354, %nyx_string* %2356, i64 1)
  %2358 = getelementptr [11 x i8], [11 x i8]* @.str277, i32 0, i32 0
  %2359 = call %nyx_string* @nyx_string_from_cstr(i8* %2358)
  %2360 = getelementptr [8 x i8], [8 x i8]* @.str278, i32 0, i32 0
  %2361 = call %nyx_string* @nyx_string_from_cstr(i8* %2360)
  %2362 = call i64 @scope_declare_fn(%nyx_string* %2359, %nyx_string* %2361, i64 2)
  %2363 = getelementptr [10 x i8], [10 x i8]* @.str279, i32 0, i32 0
  %2364 = call %nyx_string* @nyx_string_from_cstr(i8* %2363)
  %2365 = getelementptr [8 x i8], [8 x i8]* @.str280, i32 0, i32 0
  %2366 = call %nyx_string* @nyx_string_from_cstr(i8* %2365)
  %2367 = call i64 @scope_declare_fn(%nyx_string* %2364, %nyx_string* %2366, i64 1)
  %2368 = getelementptr [10 x i8], [10 x i8]* @.str281, i32 0, i32 0
  %2369 = call %nyx_string* @nyx_string_from_cstr(i8* %2368)
  %2370 = getelementptr [8 x i8], [8 x i8]* @.str282, i32 0, i32 0
  %2371 = call %nyx_string* @nyx_string_from_cstr(i8* %2370)
  %2372 = call i64 @scope_declare_fn(%nyx_string* %2369, %nyx_string* %2371, i64 1)
  %2373 = getelementptr [11 x i8], [11 x i8]* @.str283, i32 0, i32 0
  %2374 = call %nyx_string* @nyx_string_from_cstr(i8* %2373)
  %2375 = getelementptr [8 x i8], [8 x i8]* @.str284, i32 0, i32 0
  %2376 = call %nyx_string* @nyx_string_from_cstr(i8* %2375)
  %2377 = call i64 @scope_declare_fn(%nyx_string* %2374, %nyx_string* %2376, i64 1)
  %2378 = getelementptr [11 x i8], [11 x i8]* @.str285, i32 0, i32 0
  %2379 = call %nyx_string* @nyx_string_from_cstr(i8* %2378)
  %2380 = getelementptr [8 x i8], [8 x i8]* @.str286, i32 0, i32 0
  %2381 = call %nyx_string* @nyx_string_from_cstr(i8* %2380)
  %2382 = call i64 @scope_declare_fn(%nyx_string* %2379, %nyx_string* %2381, i64 1)
  %2383 = getelementptr [10 x i8], [10 x i8]* @.str287, i32 0, i32 0
  %2384 = call %nyx_string* @nyx_string_from_cstr(i8* %2383)
  %2385 = getelementptr [8 x i8], [8 x i8]* @.str288, i32 0, i32 0
  %2386 = call %nyx_string* @nyx_string_from_cstr(i8* %2385)
  %2387 = call i64 @scope_declare_fn(%nyx_string* %2384, %nyx_string* %2386, i64 1)
  %2388 = getelementptr [10 x i8], [10 x i8]* @.str289, i32 0, i32 0
  %2389 = call %nyx_string* @nyx_string_from_cstr(i8* %2388)
  %2390 = getelementptr [8 x i8], [8 x i8]* @.str290, i32 0, i32 0
  %2391 = call %nyx_string* @nyx_string_from_cstr(i8* %2390)
  %2392 = call i64 @scope_declare_fn(%nyx_string* %2389, %nyx_string* %2391, i64 2)
  %2393 = getelementptr [14 x i8], [14 x i8]* @.str291, i32 0, i32 0
  %2394 = call %nyx_string* @nyx_string_from_cstr(i8* %2393)
  %2395 = getelementptr [8 x i8], [8 x i8]* @.str292, i32 0, i32 0
  %2396 = call %nyx_string* @nyx_string_from_cstr(i8* %2395)
  %2397 = call i64 @scope_declare_fn(%nyx_string* %2394, %nyx_string* %2396, i64 2)
  %2398 = getelementptr [13 x i8], [13 x i8]* @.str293, i32 0, i32 0
  %2399 = call %nyx_string* @nyx_string_from_cstr(i8* %2398)
  %2400 = getelementptr [8 x i8], [8 x i8]* @.str294, i32 0, i32 0
  %2401 = call %nyx_string* @nyx_string_from_cstr(i8* %2400)
  %2402 = call i64 @scope_declare_fn(%nyx_string* %2399, %nyx_string* %2401, i64 1)
  %2403 = getelementptr [14 x i8], [14 x i8]* @.str295, i32 0, i32 0
  %2404 = call %nyx_string* @nyx_string_from_cstr(i8* %2403)
  %2405 = getelementptr [8 x i8], [8 x i8]* @.str296, i32 0, i32 0
  %2406 = call %nyx_string* @nyx_string_from_cstr(i8* %2405)
  %2407 = call i64 @scope_declare_fn(%nyx_string* %2404, %nyx_string* %2406, i64 1)
  %2408 = getelementptr [12 x i8], [12 x i8]* @.str297, i32 0, i32 0
  %2409 = call %nyx_string* @nyx_string_from_cstr(i8* %2408)
  %2410 = getelementptr [8 x i8], [8 x i8]* @.str298, i32 0, i32 0
  %2411 = call %nyx_string* @nyx_string_from_cstr(i8* %2410)
  %2412 = call i64 @scope_declare_fn(%nyx_string* %2409, %nyx_string* %2411, i64 2)
  %2413 = getelementptr [15 x i8], [15 x i8]* @.str299, i32 0, i32 0
  %2414 = call %nyx_string* @nyx_string_from_cstr(i8* %2413)
  %2415 = getelementptr [8 x i8], [8 x i8]* @.str300, i32 0, i32 0
  %2416 = call %nyx_string* @nyx_string_from_cstr(i8* %2415)
  %2417 = call i64 @scope_declare_fn(%nyx_string* %2414, %nyx_string* %2416, i64 2)
  %2418 = getelementptr [14 x i8], [14 x i8]* @.str301, i32 0, i32 0
  %2419 = call %nyx_string* @nyx_string_from_cstr(i8* %2418)
  %2420 = getelementptr [8 x i8], [8 x i8]* @.str302, i32 0, i32 0
  %2421 = call %nyx_string* @nyx_string_from_cstr(i8* %2420)
  %2422 = call i64 @scope_declare_fn(%nyx_string* %2419, %nyx_string* %2421, i64 3)
  %2423 = getelementptr [18 x i8], [18 x i8]* @.str303, i32 0, i32 0
  %2424 = call %nyx_string* @nyx_string_from_cstr(i8* %2423)
  %2425 = getelementptr [8 x i8], [8 x i8]* @.str304, i32 0, i32 0
  %2426 = call %nyx_string* @nyx_string_from_cstr(i8* %2425)
  %2427 = call i64 @scope_declare_fn(%nyx_string* %2424, %nyx_string* %2426, i64 3)
  %2428 = getelementptr [13 x i8], [13 x i8]* @.str305, i32 0, i32 0
  %2429 = call %nyx_string* @nyx_string_from_cstr(i8* %2428)
  %2430 = getelementptr [8 x i8], [8 x i8]* @.str306, i32 0, i32 0
  %2431 = call %nyx_string* @nyx_string_from_cstr(i8* %2430)
  %2432 = call i64 @scope_declare_fn(%nyx_string* %2429, %nyx_string* %2431, i64 0)
  %2433 = getelementptr [16 x i8], [16 x i8]* @.str307, i32 0, i32 0
  %2434 = call %nyx_string* @nyx_string_from_cstr(i8* %2433)
  %2435 = getelementptr [8 x i8], [8 x i8]* @.str308, i32 0, i32 0
  %2436 = call %nyx_string* @nyx_string_from_cstr(i8* %2435)
  %2437 = call i64 @scope_declare_fn(%nyx_string* %2434, %nyx_string* %2436, i64 1)
  %2438 = getelementptr [11 x i8], [11 x i8]* @.str309, i32 0, i32 0
  %2439 = call %nyx_string* @nyx_string_from_cstr(i8* %2438)
  %2440 = getelementptr [8 x i8], [8 x i8]* @.str310, i32 0, i32 0
  %2441 = call %nyx_string* @nyx_string_from_cstr(i8* %2440)
  %2442 = call i64 @scope_declare_fn(%nyx_string* %2439, %nyx_string* %2441, i64 0)
  %2443 = getelementptr [20 x i8], [20 x i8]* @.str311, i32 0, i32 0
  %2444 = call %nyx_string* @nyx_string_from_cstr(i8* %2443)
  %2445 = getelementptr [8 x i8], [8 x i8]* @.str312, i32 0, i32 0
  %2446 = call %nyx_string* @nyx_string_from_cstr(i8* %2445)
  %2447 = call i64 @scope_declare_fn(%nyx_string* %2444, %nyx_string* %2446, i64 1)
  %2448 = getelementptr [15 x i8], [15 x i8]* @.str313, i32 0, i32 0
  %2449 = call %nyx_string* @nyx_string_from_cstr(i8* %2448)
  %2450 = getelementptr [8 x i8], [8 x i8]* @.str314, i32 0, i32 0
  %2451 = call %nyx_string* @nyx_string_from_cstr(i8* %2450)
  %2452 = call i64 @scope_declare_fn(%nyx_string* %2449, %nyx_string* %2451, i64 2)
  %2453 = getelementptr [14 x i8], [14 x i8]* @.str315, i32 0, i32 0
  %2454 = call %nyx_string* @nyx_string_from_cstr(i8* %2453)
  %2455 = getelementptr [8 x i8], [8 x i8]* @.str316, i32 0, i32 0
  %2456 = call %nyx_string* @nyx_string_from_cstr(i8* %2455)
  %2457 = call i64 @scope_declare_fn(%nyx_string* %2454, %nyx_string* %2456, i64 1)
  %2458 = getelementptr [15 x i8], [15 x i8]* @.str317, i32 0, i32 0
  %2459 = call %nyx_string* @nyx_string_from_cstr(i8* %2458)
  %2460 = getelementptr [8 x i8], [8 x i8]* @.str318, i32 0, i32 0
  %2461 = call %nyx_string* @nyx_string_from_cstr(i8* %2460)
  %2462 = call i64 @scope_declare_fn(%nyx_string* %2459, %nyx_string* %2461, i64 1)
  %2463 = getelementptr [13 x i8], [13 x i8]* @.str319, i32 0, i32 0
  %2464 = call %nyx_string* @nyx_string_from_cstr(i8* %2463)
  %2465 = getelementptr [8 x i8], [8 x i8]* @.str320, i32 0, i32 0
  %2466 = call %nyx_string* @nyx_string_from_cstr(i8* %2465)
  %2467 = call i64 @scope_declare_fn(%nyx_string* %2464, %nyx_string* %2466, i64 1)
  %2468 = getelementptr [14 x i8], [14 x i8]* @.str321, i32 0, i32 0
  %2469 = call %nyx_string* @nyx_string_from_cstr(i8* %2468)
  %2470 = getelementptr [8 x i8], [8 x i8]* @.str322, i32 0, i32 0
  %2471 = call %nyx_string* @nyx_string_from_cstr(i8* %2470)
  %2472 = call i64 @scope_declare_fn(%nyx_string* %2469, %nyx_string* %2471, i64 1)
  %2473 = getelementptr [16 x i8], [16 x i8]* @.str323, i32 0, i32 0
  %2474 = call %nyx_string* @nyx_string_from_cstr(i8* %2473)
  %2475 = getelementptr [8 x i8], [8 x i8]* @.str324, i32 0, i32 0
  %2476 = call %nyx_string* @nyx_string_from_cstr(i8* %2475)
  %2477 = call i64 @scope_declare_fn(%nyx_string* %2474, %nyx_string* %2476, i64 1)
  %2478 = getelementptr [16 x i8], [16 x i8]* @.str325, i32 0, i32 0
  %2479 = call %nyx_string* @nyx_string_from_cstr(i8* %2478)
  %2480 = getelementptr [8 x i8], [8 x i8]* @.str326, i32 0, i32 0
  %2481 = call %nyx_string* @nyx_string_from_cstr(i8* %2480)
  %2482 = call i64 @scope_declare_fn(%nyx_string* %2479, %nyx_string* %2481, i64 1)
  %2483 = getelementptr [17 x i8], [17 x i8]* @.str327, i32 0, i32 0
  %2484 = call %nyx_string* @nyx_string_from_cstr(i8* %2483)
  %2485 = getelementptr [8 x i8], [8 x i8]* @.str328, i32 0, i32 0
  %2486 = call %nyx_string* @nyx_string_from_cstr(i8* %2485)
  %2487 = call i64 @scope_declare_fn(%nyx_string* %2484, %nyx_string* %2486, i64 1)
  %2488 = getelementptr [7 x i8], [7 x i8]* @.str329, i32 0, i32 0
  %2489 = call %nyx_string* @nyx_string_from_cstr(i8* %2488)
  %2490 = getelementptr [8 x i8], [8 x i8]* @.str330, i32 0, i32 0
  %2491 = call %nyx_string* @nyx_string_from_cstr(i8* %2490)
  %2492 = call i64 @scope_declare_fn(%nyx_string* %2489, %nyx_string* %2491, i64 1)
  %2493 = getelementptr [4 x i8], [4 x i8]* @.str331, i32 0, i32 0
  %2494 = call %nyx_string* @nyx_string_from_cstr(i8* %2493)
  %2495 = getelementptr [8 x i8], [8 x i8]* @.str332, i32 0, i32 0
  %2496 = call %nyx_string* @nyx_string_from_cstr(i8* %2495)
  %2497 = call i64 @scope_declare_fn(%nyx_string* %2494, %nyx_string* %2496, i64 1)
  %2498 = getelementptr [12 x i8], [12 x i8]* @.str333, i32 0, i32 0
  %2499 = call %nyx_string* @nyx_string_from_cstr(i8* %2498)
  %2500 = getelementptr [8 x i8], [8 x i8]* @.str334, i32 0, i32 0
  %2501 = call %nyx_string* @nyx_string_from_cstr(i8* %2500)
  %2502 = call i64 @scope_declare_fn(%nyx_string* %2499, %nyx_string* %2501, i64 2)
  %2503 = getelementptr [10 x i8], [10 x i8]* @.str335, i32 0, i32 0
  %2504 = call %nyx_string* @nyx_string_from_cstr(i8* %2503)
  %2505 = getelementptr [8 x i8], [8 x i8]* @.str336, i32 0, i32 0
  %2506 = call %nyx_string* @nyx_string_from_cstr(i8* %2505)
  %2507 = call i64 @scope_declare_fn(%nyx_string* %2504, %nyx_string* %2506, i64 1)
  %2508 = getelementptr [11 x i8], [11 x i8]* @.str337, i32 0, i32 0
  %2509 = call %nyx_string* @nyx_string_from_cstr(i8* %2508)
  %2510 = getelementptr [8 x i8], [8 x i8]* @.str338, i32 0, i32 0
  %2511 = call %nyx_string* @nyx_string_from_cstr(i8* %2510)
  %2512 = call i64 @scope_declare_fn(%nyx_string* %2509, %nyx_string* %2511, i64 3)
  %2513 = getelementptr [12 x i8], [12 x i8]* @.str339, i32 0, i32 0
  %2514 = call %nyx_string* @nyx_string_from_cstr(i8* %2513)
  %2515 = getelementptr [8 x i8], [8 x i8]* @.str340, i32 0, i32 0
  %2516 = call %nyx_string* @nyx_string_from_cstr(i8* %2515)
  %2517 = call i64 @scope_declare_fn(%nyx_string* %2514, %nyx_string* %2516, i64 2)
  %2518 = getelementptr [9 x i8], [9 x i8]* @.str341, i32 0, i32 0
  %2519 = call %nyx_string* @nyx_string_from_cstr(i8* %2518)
  %2520 = getelementptr [8 x i8], [8 x i8]* @.str342, i32 0, i32 0
  %2521 = call %nyx_string* @nyx_string_from_cstr(i8* %2520)
  %2522 = call i64 @scope_declare_fn(%nyx_string* %2519, %nyx_string* %2521, i64 2)
  %2523 = getelementptr [10 x i8], [10 x i8]* @.str343, i32 0, i32 0
  %2524 = call %nyx_string* @nyx_string_from_cstr(i8* %2523)
  %2525 = getelementptr [8 x i8], [8 x i8]* @.str344, i32 0, i32 0
  %2526 = call %nyx_string* @nyx_string_from_cstr(i8* %2525)
  %2527 = call i64 @scope_declare_fn(%nyx_string* %2524, %nyx_string* %2526, i64 2)
  %2528 = getelementptr [10 x i8], [10 x i8]* @.str345, i32 0, i32 0
  %2529 = call %nyx_string* @nyx_string_from_cstr(i8* %2528)
  %2530 = getelementptr [8 x i8], [8 x i8]* @.str346, i32 0, i32 0
  %2531 = call %nyx_string* @nyx_string_from_cstr(i8* %2530)
  %2532 = call i64 @scope_declare_fn(%nyx_string* %2529, %nyx_string* %2531, i64 1)
  %2533 = getelementptr [16 x i8], [16 x i8]* @.str347, i32 0, i32 0
  %2534 = call %nyx_string* @nyx_string_from_cstr(i8* %2533)
  %2535 = getelementptr [8 x i8], [8 x i8]* @.str348, i32 0, i32 0
  %2536 = call %nyx_string* @nyx_string_from_cstr(i8* %2535)
  %2537 = call i64 @scope_declare_fn(%nyx_string* %2534, %nyx_string* %2536, i64 2)
  %2538 = getelementptr [20 x i8], [20 x i8]* @.str349, i32 0, i32 0
  %2539 = call %nyx_string* @nyx_string_from_cstr(i8* %2538)
  %2540 = getelementptr [8 x i8], [8 x i8]* @.str350, i32 0, i32 0
  %2541 = call %nyx_string* @nyx_string_from_cstr(i8* %2540)
  %2542 = call i64 @scope_declare_fn(%nyx_string* %2539, %nyx_string* %2541, i64 3)
  %2543 = getelementptr [11 x i8], [11 x i8]* @.str351, i32 0, i32 0
  %2544 = call %nyx_string* @nyx_string_from_cstr(i8* %2543)
  %2545 = getelementptr [8 x i8], [8 x i8]* @.str352, i32 0, i32 0
  %2546 = call %nyx_string* @nyx_string_from_cstr(i8* %2545)
  %2547 = call i64 @scope_declare_fn(%nyx_string* %2544, %nyx_string* %2546, i64 1)
  %2548 = getelementptr [14 x i8], [14 x i8]* @.str353, i32 0, i32 0
  %2549 = call %nyx_string* @nyx_string_from_cstr(i8* %2548)
  %2550 = getelementptr [8 x i8], [8 x i8]* @.str354, i32 0, i32 0
  %2551 = call %nyx_string* @nyx_string_from_cstr(i8* %2550)
  %2552 = call i64 @scope_declare_fn(%nyx_string* %2549, %nyx_string* %2551, i64 1)
  %2553 = getelementptr [15 x i8], [15 x i8]* @.str355, i32 0, i32 0
  %2554 = call %nyx_string* @nyx_string_from_cstr(i8* %2553)
  %2555 = getelementptr [8 x i8], [8 x i8]* @.str356, i32 0, i32 0
  %2556 = call %nyx_string* @nyx_string_from_cstr(i8* %2555)
  %2557 = call i64 @scope_declare_fn(%nyx_string* %2554, %nyx_string* %2556, i64 2)
  %2558 = getelementptr [15 x i8], [15 x i8]* @.str357, i32 0, i32 0
  %2559 = call %nyx_string* @nyx_string_from_cstr(i8* %2558)
  %2560 = getelementptr [8 x i8], [8 x i8]* @.str358, i32 0, i32 0
  %2561 = call %nyx_string* @nyx_string_from_cstr(i8* %2560)
  %2562 = call i64 @scope_declare_fn(%nyx_string* %2559, %nyx_string* %2561, i64 1)
  %2563 = getelementptr [10 x i8], [10 x i8]* @.str359, i32 0, i32 0
  %2564 = call %nyx_string* @nyx_string_from_cstr(i8* %2563)
  %2565 = getelementptr [8 x i8], [8 x i8]* @.str360, i32 0, i32 0
  %2566 = call %nyx_string* @nyx_string_from_cstr(i8* %2565)
  %2567 = call i64 @scope_declare_fn(%nyx_string* %2564, %nyx_string* %2566, i64 0)
  %2568 = getelementptr [17 x i8], [17 x i8]* @.str361, i32 0, i32 0
  %2569 = call %nyx_string* @nyx_string_from_cstr(i8* %2568)
  %2570 = getelementptr [8 x i8], [8 x i8]* @.str362, i32 0, i32 0
  %2571 = call %nyx_string* @nyx_string_from_cstr(i8* %2570)
  %2572 = call i64 @scope_declare_fn(%nyx_string* %2569, %nyx_string* %2571, i64 1)
  %2573 = getelementptr [14 x i8], [14 x i8]* @.str363, i32 0, i32 0
  %2574 = call %nyx_string* @nyx_string_from_cstr(i8* %2573)
  %2575 = getelementptr [8 x i8], [8 x i8]* @.str364, i32 0, i32 0
  %2576 = call %nyx_string* @nyx_string_from_cstr(i8* %2575)
  %2577 = call i64 @scope_declare_fn(%nyx_string* %2574, %nyx_string* %2576, i64 1)
  %2578 = getelementptr [16 x i8], [16 x i8]* @.str365, i32 0, i32 0
  %2579 = call %nyx_string* @nyx_string_from_cstr(i8* %2578)
  %2580 = getelementptr [8 x i8], [8 x i8]* @.str366, i32 0, i32 0
  %2581 = call %nyx_string* @nyx_string_from_cstr(i8* %2580)
  %2582 = call i64 @scope_declare_fn(%nyx_string* %2579, %nyx_string* %2581, i64 1)
  %2583 = getelementptr [16 x i8], [16 x i8]* @.str367, i32 0, i32 0
  %2584 = call %nyx_string* @nyx_string_from_cstr(i8* %2583)
  %2585 = getelementptr [8 x i8], [8 x i8]* @.str368, i32 0, i32 0
  %2586 = call %nyx_string* @nyx_string_from_cstr(i8* %2585)
  %2587 = call i64 @scope_declare_fn(%nyx_string* %2584, %nyx_string* %2586, i64 1)
  %2588 = getelementptr [5 x i8], [5 x i8]* @.str369, i32 0, i32 0
  %2589 = call %nyx_string* @nyx_string_from_cstr(i8* %2588)
  %2590 = getelementptr [8 x i8], [8 x i8]* @.str370, i32 0, i32 0
  %2591 = call %nyx_string* @nyx_string_from_cstr(i8* %2590)
  %2592 = call i64 @scope_declare_fn(%nyx_string* %2589, %nyx_string* %2591, i64 1)
  %2593 = getelementptr [6 x i8], [6 x i8]* @.str371, i32 0, i32 0
  %2594 = call %nyx_string* @nyx_string_from_cstr(i8* %2593)
  %2595 = getelementptr [8 x i8], [8 x i8]* @.str372, i32 0, i32 0
  %2596 = call %nyx_string* @nyx_string_from_cstr(i8* %2595)
  %2597 = call i64 @scope_declare_fn(%nyx_string* %2594, %nyx_string* %2596, i64 1)
  %2598 = getelementptr [6 x i8], [6 x i8]* @.str373, i32 0, i32 0
  %2599 = call %nyx_string* @nyx_string_from_cstr(i8* %2598)
  %2600 = getelementptr [8 x i8], [8 x i8]* @.str374, i32 0, i32 0
  %2601 = call %nyx_string* @nyx_string_from_cstr(i8* %2600)
  %2602 = call i64 @scope_declare_fn(%nyx_string* %2599, %nyx_string* %2601, i64 1)
  %2603 = getelementptr [4 x i8], [4 x i8]* @.str375, i32 0, i32 0
  %2604 = call %nyx_string* @nyx_string_from_cstr(i8* %2603)
  %2605 = getelementptr [8 x i8], [8 x i8]* @.str376, i32 0, i32 0
  %2606 = call %nyx_string* @nyx_string_from_cstr(i8* %2605)
  %2607 = call i64 @scope_declare_fn(%nyx_string* %2604, %nyx_string* %2606, i64 1)
  %2608 = getelementptr [7 x i8], [7 x i8]* @.str377, i32 0, i32 0
  %2609 = call %nyx_string* @nyx_string_from_cstr(i8* %2608)
  %2610 = getelementptr [8 x i8], [8 x i8]* @.str378, i32 0, i32 0
  %2611 = call %nyx_string* @nyx_string_from_cstr(i8* %2610)
  %2612 = sub i64 0, 1
  %2613 = call i64 @scope_declare_fn(%nyx_string* %2609, %nyx_string* %2611, i64 %2612)
  %2614 = getelementptr [14 x i8], [14 x i8]* @.str379, i32 0, i32 0
  %2615 = call %nyx_string* @nyx_string_from_cstr(i8* %2614)
  %2616 = getelementptr [8 x i8], [8 x i8]* @.str380, i32 0, i32 0
  %2617 = call %nyx_string* @nyx_string_from_cstr(i8* %2616)
  %2618 = call i64 @scope_declare_fn(%nyx_string* %2615, %nyx_string* %2617, i64 1)
  %2619 = getelementptr [15 x i8], [15 x i8]* @.str381, i32 0, i32 0
  %2620 = call %nyx_string* @nyx_string_from_cstr(i8* %2619)
  %2621 = getelementptr [8 x i8], [8 x i8]* @.str382, i32 0, i32 0
  %2622 = call %nyx_string* @nyx_string_from_cstr(i8* %2621)
  %2623 = call i64 @scope_declare_fn(%nyx_string* %2620, %nyx_string* %2622, i64 2)
  %2624 = getelementptr [11 x i8], [11 x i8]* @.str383, i32 0, i32 0
  %2625 = call %nyx_string* @nyx_string_from_cstr(i8* %2624)
  %2626 = getelementptr [8 x i8], [8 x i8]* @.str384, i32 0, i32 0
  %2627 = call %nyx_string* @nyx_string_from_cstr(i8* %2626)
  %2628 = call i64 @scope_declare_fn(%nyx_string* %2625, %nyx_string* %2627, i64 2)
  %2629 = getelementptr [11 x i8], [11 x i8]* @.str385, i32 0, i32 0
  %2630 = call %nyx_string* @nyx_string_from_cstr(i8* %2629)
  %2631 = getelementptr [8 x i8], [8 x i8]* @.str386, i32 0, i32 0
  %2632 = call %nyx_string* @nyx_string_from_cstr(i8* %2631)
  %2633 = call i64 @scope_declare_fn(%nyx_string* %2630, %nyx_string* %2632, i64 2)
  %2634 = getelementptr [11 x i8], [11 x i8]* @.str387, i32 0, i32 0
  %2635 = call %nyx_string* @nyx_string_from_cstr(i8* %2634)
  %2636 = getelementptr [8 x i8], [8 x i8]* @.str388, i32 0, i32 0
  %2637 = call %nyx_string* @nyx_string_from_cstr(i8* %2636)
  %2638 = call i64 @scope_declare_fn(%nyx_string* %2635, %nyx_string* %2637, i64 3)
  %2639 = getelementptr [15 x i8], [15 x i8]* @.str389, i32 0, i32 0
  %2640 = call %nyx_string* @nyx_string_from_cstr(i8* %2639)
  %2641 = getelementptr [8 x i8], [8 x i8]* @.str390, i32 0, i32 0
  %2642 = call %nyx_string* @nyx_string_from_cstr(i8* %2641)
  %2643 = call i64 @scope_declare_fn(%nyx_string* %2640, %nyx_string* %2642, i64 0)
  %2644 = getelementptr [14 x i8], [14 x i8]* @.str391, i32 0, i32 0
  %2645 = call %nyx_string* @nyx_string_from_cstr(i8* %2644)
  %2646 = getelementptr [8 x i8], [8 x i8]* @.str392, i32 0, i32 0
  %2647 = call %nyx_string* @nyx_string_from_cstr(i8* %2646)
  %2648 = call i64 @scope_declare_fn(%nyx_string* %2645, %nyx_string* %2647, i64 0)
  %2649 = getelementptr [10 x i8], [10 x i8]* @.str393, i32 0, i32 0
  %2650 = call %nyx_string* @nyx_string_from_cstr(i8* %2649)
  %2651 = getelementptr [8 x i8], [8 x i8]* @.str394, i32 0, i32 0
  %2652 = call %nyx_string* @nyx_string_from_cstr(i8* %2651)
  %2653 = call i64 @scope_declare_fn(%nyx_string* %2650, %nyx_string* %2652, i64 0)
  %2654 = getelementptr [10 x i8], [10 x i8]* @.str395, i32 0, i32 0
  %2655 = call %nyx_string* @nyx_string_from_cstr(i8* %2654)
  %2656 = getelementptr [8 x i8], [8 x i8]* @.str396, i32 0, i32 0
  %2657 = call %nyx_string* @nyx_string_from_cstr(i8* %2656)
  %2658 = call i64 @scope_declare_fn(%nyx_string* %2655, %nyx_string* %2657, i64 0)
  %2659 = getelementptr [10 x i8], [10 x i8]* @.str397, i32 0, i32 0
  %2660 = call %nyx_string* @nyx_string_from_cstr(i8* %2659)
  %2661 = getelementptr [8 x i8], [8 x i8]* @.str398, i32 0, i32 0
  %2662 = call %nyx_string* @nyx_string_from_cstr(i8* %2661)
  %2663 = call i64 @scope_declare_fn(%nyx_string* %2660, %nyx_string* %2662, i64 0)
  %2664 = getelementptr [4 x i8], [4 x i8]* @.str399, i32 0, i32 0
  %2665 = call %nyx_string* @nyx_string_from_cstr(i8* %2664)
  %2666 = getelementptr [8 x i8], [8 x i8]* @.str400, i32 0, i32 0
  %2667 = call %nyx_string* @nyx_string_from_cstr(i8* %2666)
  %2668 = call i64 @scope_declare_fn(%nyx_string* %2665, %nyx_string* %2667, i64 1)
  %2669 = getelementptr [4 x i8], [4 x i8]* @.str401, i32 0, i32 0
  %2670 = call %nyx_string* @nyx_string_from_cstr(i8* %2669)
  %2671 = getelementptr [8 x i8], [8 x i8]* @.str402, i32 0, i32 0
  %2672 = call %nyx_string* @nyx_string_from_cstr(i8* %2671)
  %2673 = call i64 @scope_declare(%nyx_string* %2670, %nyx_string* %2672)
  %2674 = getelementptr [14 x i8], [14 x i8]* @.str403, i32 0, i32 0
  %2675 = call %nyx_string* @nyx_string_from_cstr(i8* %2674)
  %2676 = getelementptr [8 x i8], [8 x i8]* @.str404, i32 0, i32 0
  %2677 = call %nyx_string* @nyx_string_from_cstr(i8* %2676)
  %2678 = call i64 @scope_declare(%nyx_string* %2675, %nyx_string* %2677)
  ret i64 0
}

define internal i64 @register_declarations(
{ i64, i8* }* %stmts.param) {
  %stmts.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %stmts.param, { i64, i8* }** %stmts.ptr
  %2679 = alloca i64
  store i64 0, i64* %2679
  br label %while_cond480
while_cond480:
  %2680 = load i64, i64* %2679
  %2681 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %2682 = call i64 @nyx_array_length({ i64, i8* }* %2681)
  %2683 = icmp slt i64 %2680, %2682
  br i1 %2683, label %while_body481, label %while_end482
while_body481:
  %2684 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %2685 = load i64, i64* %2679
  %2686 = call i64 @nyx_array_get({ i64, i8* }* %2684, i64 %2685)
  %2687 = inttoptr i64 %2686 to { i64, i8* }*
  %2688 = call i64 @nyx_array_get({ i64, i8* }* %2687, i64 0)
  %2689 = call i64 @nyx_array_get({ i64, i8* }* %2687, i64 1)
  %2690 = inttoptr i64 %2688 to %nyx_string*
  %2691 = inttoptr i64 %2689 to { i64, i8* }*
  %2692 = alloca %ASTNode
  %2693 = getelementptr inbounds %ASTNode, %ASTNode* %2692, i32 0, i32 0
  store %nyx_string* %2690, %nyx_string** %2693
  %2694 = getelementptr inbounds %ASTNode, %ASTNode* %2692, i32 0, i32 1
  store { i64, i8* }* %2691, { i64, i8* }** %2694
  %2695 = load %ASTNode, %ASTNode* %2692
  %2696 = alloca %ASTNode
  store %ASTNode %2695, %ASTNode* %2696
  %2697 = getelementptr %ASTNode, %ASTNode* %2696, i32 0, i32 0
  %2698 = load %nyx_string*, %nyx_string** %2697
  %2699 = getelementptr [11 x i8], [11 x i8]* @.str405, i32 0, i32 0
  %2700 = call %nyx_string* @nyx_string_from_cstr(i8* %2699)
  %2701 = call i8* @nyx_string_to_cstr(%nyx_string* %2698)
  %2702 = call i8* @nyx_string_to_cstr(%nyx_string* %2700)
  %2703 = call i32 @strcmp(i8* %2701, i8* %2702)
  %2704 = icmp eq i32 %2703, 0
  br i1 %2704, label %then483, label %else484
then483:
  %2705 = load %ASTNode, %ASTNode* %2696
  %2706 = call %nyx_string* @get_string_at(%ASTNode %2705, i64 0)
  %2707 = alloca %nyx_string*
  store %nyx_string* %2706, %nyx_string** %2707
  %2708 = load %ASTNode, %ASTNode* %2696
  %2709 = call %nyx_string* @get_string_at(%ASTNode %2708, i64 1)
  %2710 = alloca %nyx_string*
  store %nyx_string* %2709, %nyx_string** %2710
  %2711 = load %nyx_string*, %nyx_string** %2707
  %2712 = call i1 @is_type_alias(%nyx_string* %2711)
  %2713 = xor i1 %2712, true
  br i1 %2713, label %then486, label %else487
then486:
  %2714 = load %nyx_string*, %nyx_string** %2710
  %2715 = call { i64, i8* }* @ty_parse(%nyx_string* %2714)
  %2716 = alloca { i64, i8* }*
  store { i64, i8* }* %2715, { i64, i8* }** %2716
  %2717 = load %nyx_string*, %nyx_string** %2707
  %2718 = load { i64, i8* }*, { i64, i8* }** %2716
  %2719 = call i64 @register_type_alias(%nyx_string* %2717, { i64, i8* }* %2718)
  br label %merge488
else487:
  br label %merge488
merge488:
  br label %merge485
else484:
  br label %merge485
merge485:
  %2720 = load i64, i64* %2679
  %2721 = add i64 %2720, 1
  store i64 %2721, i64* %2679
  br label %while_cond480
while_end482:
  %2722 = alloca i64
  store i64 0, i64* %2722
  br label %while_cond489
while_cond489:
  %2723 = load i64, i64* %2722
  %2724 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %2725 = call i64 @nyx_array_length({ i64, i8* }* %2724)
  %2726 = icmp slt i64 %2723, %2725
  br i1 %2726, label %while_body490, label %while_end491
while_body490:
  %2727 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %2728 = load i64, i64* %2722
  %2729 = call i64 @nyx_array_get({ i64, i8* }* %2727, i64 %2728)
  %2730 = inttoptr i64 %2729 to { i64, i8* }*
  %2731 = call i64 @nyx_array_get({ i64, i8* }* %2730, i64 0)
  %2732 = call i64 @nyx_array_get({ i64, i8* }* %2730, i64 1)
  %2733 = inttoptr i64 %2731 to %nyx_string*
  %2734 = inttoptr i64 %2732 to { i64, i8* }*
  %2735 = alloca %ASTNode
  %2736 = getelementptr inbounds %ASTNode, %ASTNode* %2735, i32 0, i32 0
  store %nyx_string* %2733, %nyx_string** %2736
  %2737 = getelementptr inbounds %ASTNode, %ASTNode* %2735, i32 0, i32 1
  store { i64, i8* }* %2734, { i64, i8* }** %2737
  %2738 = load %ASTNode, %ASTNode* %2735
  %2739 = alloca %ASTNode
  store %ASTNode %2738, %ASTNode* %2739
  %2740 = getelementptr %ASTNode, %ASTNode* %2739, i32 0, i32 0
  %2741 = load %nyx_string*, %nyx_string** %2740
  %2742 = alloca %nyx_string*
  store %nyx_string* %2741, %nyx_string** %2742
  %2743 = load %nyx_string*, %nyx_string** %2742
  %2744 = getelementptr [9 x i8], [9 x i8]* @.str406, i32 0, i32 0
  %2745 = call %nyx_string* @nyx_string_from_cstr(i8* %2744)
  %2746 = call i8* @nyx_string_to_cstr(%nyx_string* %2743)
  %2747 = call i8* @nyx_string_to_cstr(%nyx_string* %2745)
  %2748 = call i32 @strcmp(i8* %2746, i8* %2747)
  %2749 = icmp eq i32 %2748, 0
  br i1 %2749, label %then492, label %else493
then492:
  %2750 = load %ASTNode, %ASTNode* %2739
  %2751 = call %nyx_string* @get_string_at(%ASTNode %2750, i64 0)
  %2752 = alloca %nyx_string*
  store %nyx_string* %2751, %nyx_string** %2752
  %2753 = load %ASTNode, %ASTNode* %2739
  %2754 = call { i64, i8* }* @get_array_at(%ASTNode %2753, i64 1)
  %2755 = alloca { i64, i8* }*
  store { i64, i8* }* %2754, { i64, i8* }** %2755
  %2756 = load { i64, i8* }*, { i64, i8* }** %2755
  %2757 = call i64 @nyx_array_length({ i64, i8* }* %2756)
  %2758 = alloca i64
  store i64 %2757, i64* %2758
  %2759 = alloca i64
  store i64 0, i64* %2759
  %2760 = alloca i1
  store i1 0, i1* %2760
  br label %while_cond495
while_cond495:
  %2761 = load i64, i64* %2759
  %2762 = load { i64, i8* }*, { i64, i8* }** %2755
  %2763 = call i64 @nyx_array_length({ i64, i8* }* %2762)
  %2764 = icmp slt i64 %2761, %2763
  br i1 %2764, label %while_body496, label %while_end497
while_body496:
  %2765 = load { i64, i8* }*, { i64, i8* }** %2755
  %2766 = load i64, i64* %2759
  %2767 = call i64 @nyx_array_get({ i64, i8* }* %2765, i64 %2766)
  %2768 = inttoptr i64 %2767 to { i64, i8* }*
  %2769 = alloca { i64, i8* }*
  store { i64, i8* }* %2768, { i64, i8* }** %2769
  %2770 = load { i64, i8* }*, { i64, i8* }** %2769
  %2771 = call i64 @nyx_array_get({ i64, i8* }* %2770, i64 1)
  %2772 = inttoptr i64 %2771 to %nyx_string*
  %2773 = alloca %nyx_string*
  store %nyx_string* %2772, %nyx_string** %2773
  %2774 = load %nyx_string*, %nyx_string** %2773
  %2775 = call i64 @nyx_string_length_utf8(%nyx_string* %2774)
  %2776 = icmp sge i64 %2775, 3
  br i1 %2776, label %then498, label %else499
then498:
  %2777 = load %nyx_string*, %nyx_string** %2773
  %2778 = call %nyx_string* @nyx_string_substring(%nyx_string* %2777, i64 0, i64 3)
  %2779 = getelementptr [4 x i8], [4 x i8]* @.str407, i32 0, i32 0
  %2780 = call %nyx_string* @nyx_string_from_cstr(i8* %2779)
  %2781 = call i8* @nyx_string_to_cstr(%nyx_string* %2778)
  %2782 = call i8* @nyx_string_to_cstr(%nyx_string* %2780)
  %2783 = call i32 @strcmp(i8* %2781, i8* %2782)
  %2784 = icmp eq i32 %2783, 0
  br i1 %2784, label %then501, label %else502
then501:
  %2785 = sub i64 0, 1
  store i64 %2785, i64* %2758
  br label %merge503
else502:
  br label %merge503
merge503:
  br label %merge500
else499:
  br label %merge500
merge500:
  %2786 = load { i64, i8* }*, { i64, i8* }** %2769
  %2787 = call i64 @nyx_array_length({ i64, i8* }* %2786)
  %2788 = icmp sgt i64 %2787, 2
  br i1 %2788, label %then504, label %else505
then504:
  %2789 = sub i64 0, 1
  store i64 %2789, i64* %2758
  store i1 1, i1* %2760
  br label %merge506
else505:
  br label %merge506
merge506:
  %2790 = load i64, i64* %2759
  %2791 = add i64 %2790, 1
  store i64 %2791, i64* %2759
  br label %while_cond495
while_end497:
  %2792 = load %nyx_string*, %nyx_string** %2752
  %2793 = getelementptr [3 x i8], [3 x i8]* @.str408, i32 0, i32 0
  %2794 = call %nyx_string* @nyx_string_from_cstr(i8* %2793)
  %2795 = load i64, i64* %2758
  %2796 = call i64 @scope_declare_fn(%nyx_string* %2792, %nyx_string* %2794, i64 %2795)
  %2797 = load i1, i1* %2760
  %2798 = xor i1 %2797, true
  br i1 %2798, label %then507, label %else508
then507:
  %2799 = load %ASTNode, %ASTNode* %2739
  %2800 = call %nyx_string* @get_string_at(%ASTNode %2799, i64 2)
  %2801 = alloca %nyx_string*
  store %nyx_string* %2800, %nyx_string** %2801
  %2802 = call { i64, i8* }* @ty_unknown()
  %2803 = alloca { i64, i8* }*
  store { i64, i8* }* %2802, { i64, i8* }** %2803
  %2804 = load %nyx_string*, %nyx_string** %2801
  %2805 = getelementptr [1 x i8], [1 x i8]* @.str409, i32 0, i32 0
  %2806 = call %nyx_string* @nyx_string_from_cstr(i8* %2805)
  %2807 = call i8* @nyx_string_to_cstr(%nyx_string* %2804)
  %2808 = call i8* @nyx_string_to_cstr(%nyx_string* %2806)
  %2809 = call i32 @strcmp(i8* %2807, i8* %2808)
  %2810 = icmp ne i32 %2809, 0
  br i1 %2810, label %then510, label %else511
then510:
  %2811 = load %nyx_string*, %nyx_string** %2801
  %2812 = getelementptr [5 x i8], [5 x i8]* @.str410, i32 0, i32 0
  %2813 = call %nyx_string* @nyx_string_from_cstr(i8* %2812)
  %2814 = call i8* @nyx_string_to_cstr(%nyx_string* %2811)
  %2815 = call i8* @nyx_string_to_cstr(%nyx_string* %2813)
  %2816 = call i32 @strcmp(i8* %2814, i8* %2815)
  %2817 = icmp ne i32 %2816, 0
  br i1 %2817, label %then513, label %else514
then513:
  %2818 = load %nyx_string*, %nyx_string** %2801
  %2819 = call { i64, i8* }* @ty_parse(%nyx_string* %2818)
  %2820 = call { i64, i8* }* @resolve_type({ i64, i8* }* %2819)
  store { i64, i8* }* %2820, { i64, i8* }** %2803
  br label %merge515
else514:
  br label %merge515
merge515:
  br label %merge512
else511:
  br label %merge512
merge512:
  %2821 = call { i64, i8* }* @nyx_array_new_ptr()
  %2822 = alloca { i64, i8* }*
  store { i64, i8* }* %2821, { i64, i8* }** %2822
  %2823 = getelementptr %ASTNode, %ASTNode* %2739, i32 0, i32 1
  %2824 = load { i64, i8* }*, { i64, i8* }** %2823
  %2825 = alloca { i64, i8* }*
  store { i64, i8* }* %2824, { i64, i8* }** %2825
  %2826 = load { i64, i8* }*, { i64, i8* }** %2825
  %2827 = call i64 @nyx_array_length({ i64, i8* }* %2826)
  %2828 = icmp sgt i64 %2827, 4
  br i1 %2828, label %then516, label %else517
then516:
  %2829 = load { i64, i8* }*, { i64, i8* }** %2825
  %2830 = call i64 @nyx_array_get({ i64, i8* }* %2829, i64 4)
  %2831 = inttoptr i64 %2830 to { i64, i8* }*
  %2832 = alloca { i64, i8* }*
  store { i64, i8* }* %2831, { i64, i8* }** %2832
  %2833 = load { i64, i8* }*, { i64, i8* }** %2832
  %2834 = call { i64, i8* }* @extract_type_param_names({ i64, i8* }* %2833)
  store { i64, i8* }* %2834, { i64, i8* }** %2822
  br label %merge518
else517:
  br label %merge518
merge518:
  %2835 = load %nyx_string*, %nyx_string** %2752
  %2836 = load { i64, i8* }*, { i64, i8* }** %2755
  %2837 = call { i64, i8* }* @params_to_types({ i64, i8* }* %2836)
  %2838 = load { i64, i8* }*, { i64, i8* }** %2803
  %2839 = load { i64, i8* }*, { i64, i8* }** %2822
  %2840 = call i64 @register_fn_sig(%nyx_string* %2835, { i64, i8* }* %2837, { i64, i8* }* %2838, { i64, i8* }* %2839)
  br label %merge509
else508:
  br label %merge509
merge509:
  br label %merge494
else493:
  br label %merge494
merge494:
  %2841 = load %nyx_string*, %nyx_string** %2742
  %2842 = getelementptr [9 x i8], [9 x i8]* @.str411, i32 0, i32 0
  %2843 = call %nyx_string* @nyx_string_from_cstr(i8* %2842)
  %2844 = call i8* @nyx_string_to_cstr(%nyx_string* %2841)
  %2845 = call i8* @nyx_string_to_cstr(%nyx_string* %2843)
  %2846 = call i32 @strcmp(i8* %2844, i8* %2845)
  %2847 = icmp eq i32 %2846, 0
  br i1 %2847, label %then519, label %else520
then519:
  %2848 = load %ASTNode, %ASTNode* %2739
  %2849 = call %nyx_string* @get_string_at(%ASTNode %2848, i64 0)
  %2850 = alloca %nyx_string*
  store %nyx_string* %2849, %nyx_string** %2850
  %2851 = load %ASTNode, %ASTNode* %2739
  %2852 = call { i64, i8* }* @get_array_at(%ASTNode %2851, i64 1)
  %2853 = alloca { i64, i8* }*
  store { i64, i8* }* %2852, { i64, i8* }** %2853
  %2854 = load %nyx_string*, %nyx_string** %2850
  %2855 = getelementptr [3 x i8], [3 x i8]* @.str412, i32 0, i32 0
  %2856 = call %nyx_string* @nyx_string_from_cstr(i8* %2855)
  %2857 = load { i64, i8* }*, { i64, i8* }** %2853
  %2858 = call i64 @nyx_array_length({ i64, i8* }* %2857)
  %2859 = call i64 @scope_declare_fn(%nyx_string* %2854, %nyx_string* %2856, i64 %2858)
  %2860 = load %ASTNode, %ASTNode* %2739
  %2861 = call %nyx_string* @get_string_at(%ASTNode %2860, i64 2)
  %2862 = alloca %nyx_string*
  store %nyx_string* %2861, %nyx_string** %2862
  %2863 = call { i64, i8* }* @ty_unknown()
  %2864 = alloca { i64, i8* }*
  store { i64, i8* }* %2863, { i64, i8* }** %2864
  %2865 = load %nyx_string*, %nyx_string** %2862
  %2866 = getelementptr [1 x i8], [1 x i8]* @.str413, i32 0, i32 0
  %2867 = call %nyx_string* @nyx_string_from_cstr(i8* %2866)
  %2868 = call i8* @nyx_string_to_cstr(%nyx_string* %2865)
  %2869 = call i8* @nyx_string_to_cstr(%nyx_string* %2867)
  %2870 = call i32 @strcmp(i8* %2868, i8* %2869)
  %2871 = icmp ne i32 %2870, 0
  br i1 %2871, label %then522, label %else523
then522:
  %2872 = load %nyx_string*, %nyx_string** %2862
  %2873 = getelementptr [5 x i8], [5 x i8]* @.str414, i32 0, i32 0
  %2874 = call %nyx_string* @nyx_string_from_cstr(i8* %2873)
  %2875 = call i8* @nyx_string_to_cstr(%nyx_string* %2872)
  %2876 = call i8* @nyx_string_to_cstr(%nyx_string* %2874)
  %2877 = call i32 @strcmp(i8* %2875, i8* %2876)
  %2878 = icmp ne i32 %2877, 0
  br i1 %2878, label %then525, label %else526
then525:
  %2879 = load %nyx_string*, %nyx_string** %2862
  %2880 = call { i64, i8* }* @ty_parse(%nyx_string* %2879)
  %2881 = call { i64, i8* }* @resolve_type({ i64, i8* }* %2880)
  store { i64, i8* }* %2881, { i64, i8* }** %2864
  br label %merge527
else526:
  br label %merge527
merge527:
  br label %merge524
else523:
  br label %merge524
merge524:
  %2882 = call { i64, i8* }* @nyx_array_new_ptr()
  %2883 = alloca { i64, i8* }*
  store { i64, i8* }* %2882, { i64, i8* }** %2883
  %2884 = getelementptr %ASTNode, %ASTNode* %2739, i32 0, i32 1
  %2885 = load { i64, i8* }*, { i64, i8* }** %2884
  %2886 = alloca { i64, i8* }*
  store { i64, i8* }* %2885, { i64, i8* }** %2886
  %2887 = load { i64, i8* }*, { i64, i8* }** %2886
  %2888 = call i64 @nyx_array_length({ i64, i8* }* %2887)
  %2889 = icmp sgt i64 %2888, 4
  br i1 %2889, label %then528, label %else529
then528:
  %2890 = load { i64, i8* }*, { i64, i8* }** %2886
  %2891 = call i64 @nyx_array_get({ i64, i8* }* %2890, i64 4)
  %2892 = inttoptr i64 %2891 to { i64, i8* }*
  %2893 = alloca { i64, i8* }*
  store { i64, i8* }* %2892, { i64, i8* }** %2893
  %2894 = load { i64, i8* }*, { i64, i8* }** %2893
  %2895 = call { i64, i8* }* @extract_type_param_names({ i64, i8* }* %2894)
  store { i64, i8* }* %2895, { i64, i8* }** %2883
  br label %merge530
else529:
  br label %merge530
merge530:
  %2896 = load %nyx_string*, %nyx_string** %2850
  %2897 = load { i64, i8* }*, { i64, i8* }** %2853
  %2898 = call { i64, i8* }* @params_to_types({ i64, i8* }* %2897)
  %2899 = load { i64, i8* }*, { i64, i8* }** %2864
  %2900 = load { i64, i8* }*, { i64, i8* }** %2883
  %2901 = call i64 @register_fn_sig(%nyx_string* %2896, { i64, i8* }* %2898, { i64, i8* }* %2899, { i64, i8* }* %2900)
  br label %merge521
else520:
  br label %merge521
merge521:
  %2902 = load %nyx_string*, %nyx_string** %2742
  %2903 = getelementptr [7 x i8], [7 x i8]* @.str415, i32 0, i32 0
  %2904 = call %nyx_string* @nyx_string_from_cstr(i8* %2903)
  %2905 = call i8* @nyx_string_to_cstr(%nyx_string* %2902)
  %2906 = call i8* @nyx_string_to_cstr(%nyx_string* %2904)
  %2907 = call i32 @strcmp(i8* %2905, i8* %2906)
  %2908 = icmp eq i32 %2907, 0
  br i1 %2908, label %then531, label %else532
then531:
  %2909 = load %ASTNode, %ASTNode* %2739
  %2910 = call %nyx_string* @get_string_at(%ASTNode %2909, i64 0)
  %2911 = alloca %nyx_string*
  store %nyx_string* %2910, %nyx_string** %2911
  %2912 = load %nyx_string*, %nyx_string** %2911
  %2913 = getelementptr [7 x i8], [7 x i8]* @.str416, i32 0, i32 0
  %2914 = call %nyx_string* @nyx_string_from_cstr(i8* %2913)
  %2915 = call i64 @scope_declare(%nyx_string* %2912, %nyx_string* %2914)
  %2916 = load %ASTNode, %ASTNode* %2739
  %2917 = call { i64, i8* }* @get_array_at(%ASTNode %2916, i64 1)
  %2918 = alloca { i64, i8* }*
  store { i64, i8* }* %2917, { i64, i8* }** %2918
  %2919 = call { i64, i8* }* @nyx_array_new_ptr()
  %2920 = alloca { i64, i8* }*
  store { i64, i8* }* %2919, { i64, i8* }** %2920
  %2921 = call { i64, i8* }* @nyx_array_new_ptr()
  %2922 = alloca { i64, i8* }*
  store { i64, i8* }* %2921, { i64, i8* }** %2922
  %2923 = alloca i64
  store i64 0, i64* %2923
  br label %while_cond534
while_cond534:
  %2924 = load i64, i64* %2923
  %2925 = load { i64, i8* }*, { i64, i8* }** %2918
  %2926 = call i64 @nyx_array_length({ i64, i8* }* %2925)
  %2927 = icmp slt i64 %2924, %2926
  br i1 %2927, label %while_body535, label %while_end536
while_body535:
  %2928 = load { i64, i8* }*, { i64, i8* }** %2918
  %2929 = load i64, i64* %2923
  %2930 = call i64 @nyx_array_get({ i64, i8* }* %2928, i64 %2929)
  %2931 = inttoptr i64 %2930 to { i64, i8* }*
  %2932 = alloca { i64, i8* }*
  store { i64, i8* }* %2931, { i64, i8* }** %2932
  %2933 = load { i64, i8* }*, { i64, i8* }** %2932
  %2934 = call i64 @nyx_array_get({ i64, i8* }* %2933, i64 0)
  %2935 = inttoptr i64 %2934 to %nyx_string*
  %2936 = alloca %nyx_string*
  store %nyx_string* %2935, %nyx_string** %2936
  %2937 = load { i64, i8* }*, { i64, i8* }** %2920
  %2938 = load %nyx_string*, %nyx_string** %2936
  %2939 = ptrtoint %nyx_string* %2938 to i64
  call void @nyx_array_push({ i64, i8* }* %2937, i64 %2939)
  %2940 = load { i64, i8* }*, { i64, i8* }** %2932
  %2941 = call i64 @nyx_array_get({ i64, i8* }* %2940, i64 1)
  %2942 = inttoptr i64 %2941 to %nyx_string*
  %2943 = alloca %nyx_string*
  store %nyx_string* %2942, %nyx_string** %2943
  %2944 = load %nyx_string*, %nyx_string** %2943
  %2945 = call { i64, i8* }* @ty_parse(%nyx_string* %2944)
  %2946 = call { i64, i8* }* @resolve_type({ i64, i8* }* %2945)
  %2947 = alloca { i64, i8* }*
  store { i64, i8* }* %2946, { i64, i8* }** %2947
  %2948 = load { i64, i8* }*, { i64, i8* }** %2922
  %2949 = load { i64, i8* }*, { i64, i8* }** %2947
  %2950 = ptrtoint { i64, i8* }* %2949 to i64
  call void @nyx_array_push({ i64, i8* }* %2948, i64 %2950)
  %2951 = load i64, i64* %2923
  %2952 = add i64 %2951, 1
  store i64 %2952, i64* %2923
  br label %while_cond534
while_end536:
  %2953 = load { i64, i8* }*, { i64, i8* }** @g_struct_reg_names
  %2954 = load %nyx_string*, %nyx_string** %2911
  %2955 = ptrtoint %nyx_string* %2954 to i64
  call void @nyx_array_push({ i64, i8* }* %2953, i64 %2955)
  %2956 = load { i64, i8* }*, { i64, i8* }** @g_struct_reg_fields
  %2957 = load { i64, i8* }*, { i64, i8* }** %2920
  %2958 = ptrtoint { i64, i8* }* %2957 to i64
  call void @nyx_array_push({ i64, i8* }* %2956, i64 %2958)
  %2959 = load { i64, i8* }*, { i64, i8* }** @g_struct_reg_field_types
  %2960 = load { i64, i8* }*, { i64, i8* }** %2922
  %2961 = ptrtoint { i64, i8* }* %2960 to i64
  call void @nyx_array_push({ i64, i8* }* %2959, i64 %2961)
  %2962 = load i64, i64* @g_struct_reg_count
  %2963 = add i64 %2962, 1
  store i64 %2963, i64* @g_struct_reg_count
  %2964 = getelementptr %ASTNode, %ASTNode* %2739, i32 0, i32 1
  %2965 = load { i64, i8* }*, { i64, i8* }** %2964
  %2966 = alloca { i64, i8* }*
  store { i64, i8* }* %2965, { i64, i8* }** %2966
  %2967 = load { i64, i8* }*, { i64, i8* }** %2966
  %2968 = call i64 @nyx_array_length({ i64, i8* }* %2967)
  %2969 = icmp sgt i64 %2968, 3
  br i1 %2969, label %then537, label %else538
then537:
  %2970 = load { i64, i8* }*, { i64, i8* }** %2966
  %2971 = call i64 @nyx_array_get({ i64, i8* }* %2970, i64 3)
  %2972 = inttoptr i64 %2971 to %nyx_string*
  %2973 = alloca %nyx_string*
  store %nyx_string* %2972, %nyx_string** %2973
  %2974 = load %nyx_string*, %nyx_string** %2973
  %2975 = call i64 @nyx_string_length_utf8(%nyx_string* %2974)
  %2976 = icmp sgt i64 %2975, 7
  br i1 %2976, label %then540, label %else541
then540:
  %2977 = load %nyx_string*, %nyx_string** %2973
  %2978 = call %nyx_string* @nyx_string_substring(%nyx_string* %2977, i64 0, i64 7)
  %2979 = getelementptr [8 x i8], [8 x i8]* @.str417, i32 0, i32 0
  %2980 = call %nyx_string* @nyx_string_from_cstr(i8* %2979)
  %2981 = call i8* @nyx_string_to_cstr(%nyx_string* %2978)
  %2982 = call i8* @nyx_string_to_cstr(%nyx_string* %2980)
  %2983 = call i32 @strcmp(i8* %2981, i8* %2982)
  %2984 = icmp eq i32 %2983, 0
  br i1 %2984, label %then543, label %else544
then543:
  %2985 = load %nyx_string*, %nyx_string** %2973
  %2986 = load %nyx_string*, %nyx_string** %2973
  %2987 = call i64 @nyx_string_length_utf8(%nyx_string* %2986)
  %2988 = sub i64 %2987, 1
  %2989 = call %nyx_string* @nyx_string_substring(%nyx_string* %2985, i64 7, i64 %2988)
  %2990 = alloca %nyx_string*
  store %nyx_string* %2989, %nyx_string** %2990
  %2991 = load %nyx_string*, %nyx_string** %2990
  %2992 = getelementptr [8 x i8], [8 x i8]* @.str418, i32 0, i32 0
  %2993 = call %nyx_string* @nyx_string_from_cstr(i8* %2992)
  %2994 = call i64 @nyx_string_index_of(%nyx_string* %2991, %nyx_string* %2993)
  %2995 = icmp sge i64 %2994, 0
  br i1 %2995, label %then546, label %else547
then546:
  %2996 = load %nyx_string*, %nyx_string** %2911
  %2997 = getelementptr [9 x i8], [9 x i8]* @.str419, i32 0, i32 0
  %2998 = call %nyx_string* @nyx_string_from_cstr(i8* %2997)
  %2999 = call %nyx_string* @nyx_string_concat(%nyx_string* %2996, %nyx_string* %2998)
  %3000 = getelementptr [3 x i8], [3 x i8]* @.str420, i32 0, i32 0
  %3001 = call %nyx_string* @nyx_string_from_cstr(i8* %3000)
  %3002 = call i64 @scope_declare_fn(%nyx_string* %2999, %nyx_string* %3001, i64 0)
  br label %merge548
else547:
  br label %merge548
merge548:
  %3003 = load %nyx_string*, %nyx_string** %2990
  %3004 = getelementptr [6 x i8], [6 x i8]* @.str421, i32 0, i32 0
  %3005 = call %nyx_string* @nyx_string_from_cstr(i8* %3004)
  %3006 = call i64 @nyx_string_index_of(%nyx_string* %3003, %nyx_string* %3005)
  %3007 = icmp sge i64 %3006, 0
  br i1 %3007, label %then549, label %else550
then549:
  %3008 = load %nyx_string*, %nyx_string** %2911
  %3009 = getelementptr [7 x i8], [7 x i8]* @.str422, i32 0, i32 0
  %3010 = call %nyx_string* @nyx_string_from_cstr(i8* %3009)
  %3011 = call %nyx_string* @nyx_string_concat(%nyx_string* %3008, %nyx_string* %3010)
  %3012 = getelementptr [3 x i8], [3 x i8]* @.str423, i32 0, i32 0
  %3013 = call %nyx_string* @nyx_string_from_cstr(i8* %3012)
  %3014 = call i64 @scope_declare_fn(%nyx_string* %3011, %nyx_string* %3013, i64 1)
  br label %merge551
else550:
  br label %merge551
merge551:
  %3015 = load %nyx_string*, %nyx_string** %2990
  %3016 = getelementptr [10 x i8], [10 x i8]* @.str424, i32 0, i32 0
  %3017 = call %nyx_string* @nyx_string_from_cstr(i8* %3016)
  %3018 = call i64 @nyx_string_index_of(%nyx_string* %3015, %nyx_string* %3017)
  %3019 = icmp sge i64 %3018, 0
  br i1 %3019, label %then552, label %else553
then552:
  %3020 = load %nyx_string*, %nyx_string** %2911
  %3021 = getelementptr [4 x i8], [4 x i8]* @.str425, i32 0, i32 0
  %3022 = call %nyx_string* @nyx_string_from_cstr(i8* %3021)
  %3023 = call %nyx_string* @nyx_string_concat(%nyx_string* %3020, %nyx_string* %3022)
  %3024 = getelementptr [3 x i8], [3 x i8]* @.str426, i32 0, i32 0
  %3025 = call %nyx_string* @nyx_string_from_cstr(i8* %3024)
  %3026 = call i64 @scope_declare_fn(%nyx_string* %3023, %nyx_string* %3025, i64 2)
  br label %merge554
else553:
  br label %merge554
merge554:
  %3027 = load %nyx_string*, %nyx_string** %2990
  %3028 = getelementptr [6 x i8], [6 x i8]* @.str427, i32 0, i32 0
  %3029 = call %nyx_string* @nyx_string_from_cstr(i8* %3028)
  %3030 = call i64 @nyx_string_index_of(%nyx_string* %3027, %nyx_string* %3029)
  %3031 = icmp sge i64 %3030, 0
  br i1 %3031, label %then555, label %else556
then555:
  %3032 = load %nyx_string*, %nyx_string** %2911
  %3033 = getelementptr [11 x i8], [11 x i8]* @.str428, i32 0, i32 0
  %3034 = call %nyx_string* @nyx_string_from_cstr(i8* %3033)
  %3035 = call %nyx_string* @nyx_string_concat(%nyx_string* %3032, %nyx_string* %3034)
  %3036 = getelementptr [3 x i8], [3 x i8]* @.str429, i32 0, i32 0
  %3037 = call %nyx_string* @nyx_string_from_cstr(i8* %3036)
  %3038 = call i64 @scope_declare_fn(%nyx_string* %3035, %nyx_string* %3037, i64 1)
  br label %merge557
else556:
  br label %merge557
merge557:
  %3039 = load %nyx_string*, %nyx_string** %2990
  %3040 = getelementptr [8 x i8], [8 x i8]* @.str430, i32 0, i32 0
  %3041 = call %nyx_string* @nyx_string_from_cstr(i8* %3040)
  %3042 = call i64 @nyx_string_index_of(%nyx_string* %3039, %nyx_string* %3041)
  %3043 = icmp sge i64 %3042, 0
  br i1 %3043, label %then558, label %else559
then558:
  %3044 = load %nyx_string*, %nyx_string** %2911
  %3045 = getelementptr [11 x i8], [11 x i8]* @.str431, i32 0, i32 0
  %3046 = call %nyx_string* @nyx_string_from_cstr(i8* %3045)
  %3047 = call %nyx_string* @nyx_string_concat(%nyx_string* %3044, %nyx_string* %3046)
  %3048 = getelementptr [3 x i8], [3 x i8]* @.str432, i32 0, i32 0
  %3049 = call %nyx_string* @nyx_string_from_cstr(i8* %3048)
  %3050 = call i64 @scope_declare_fn(%nyx_string* %3047, %nyx_string* %3049, i64 1)
  br label %merge560
else559:
  br label %merge560
merge560:
  br label %merge545
else544:
  br label %merge545
merge545:
  br label %merge542
else541:
  br label %merge542
merge542:
  br label %merge539
else538:
  br label %merge539
merge539:
  br label %merge533
else532:
  br label %merge533
merge533:
  %3051 = load %nyx_string*, %nyx_string** %2742
  %3052 = getelementptr [9 x i8], [9 x i8]* @.str433, i32 0, i32 0
  %3053 = call %nyx_string* @nyx_string_from_cstr(i8* %3052)
  %3054 = call i8* @nyx_string_to_cstr(%nyx_string* %3051)
  %3055 = call i8* @nyx_string_to_cstr(%nyx_string* %3053)
  %3056 = call i32 @strcmp(i8* %3054, i8* %3055)
  %3057 = icmp eq i32 %3056, 0
  br i1 %3057, label %then561, label %else562
then561:
  %3058 = load %ASTNode, %ASTNode* %2739
  %3059 = call %nyx_string* @get_string_at(%ASTNode %3058, i64 0)
  %3060 = alloca %nyx_string*
  store %nyx_string* %3059, %nyx_string** %3060
  %3061 = load %nyx_string*, %nyx_string** %3060
  %3062 = getelementptr [5 x i8], [5 x i8]* @.str434, i32 0, i32 0
  %3063 = call %nyx_string* @nyx_string_from_cstr(i8* %3062)
  %3064 = call i64 @scope_declare(%nyx_string* %3061, %nyx_string* %3063)
  %3065 = load %ASTNode, %ASTNode* %2739
  %3066 = call { i64, i8* }* @get_array_at(%ASTNode %3065, i64 1)
  %3067 = alloca { i64, i8* }*
  store { i64, i8* }* %3066, { i64, i8* }** %3067
  %3068 = call { i64, i8* }* @nyx_array_new_ptr()
  %3069 = alloca { i64, i8* }*
  store { i64, i8* }* %3068, { i64, i8* }** %3069
  %3070 = alloca i64
  store i64 0, i64* %3070
  br label %while_cond564
while_cond564:
  %3071 = load i64, i64* %3070
  %3072 = load { i64, i8* }*, { i64, i8* }** %3067
  %3073 = call i64 @nyx_array_length({ i64, i8* }* %3072)
  %3074 = icmp slt i64 %3071, %3073
  br i1 %3074, label %while_body565, label %while_end566
while_body565:
  %3075 = load { i64, i8* }*, { i64, i8* }** %3067
  %3076 = load i64, i64* %3070
  %3077 = call i64 @nyx_array_get({ i64, i8* }* %3075, i64 %3076)
  %3078 = inttoptr i64 %3077 to { i64, i8* }*
  %3079 = alloca { i64, i8* }*
  store { i64, i8* }* %3078, { i64, i8* }** %3079
  %3080 = load { i64, i8* }*, { i64, i8* }** %3079
  %3081 = call i64 @nyx_array_get({ i64, i8* }* %3080, i64 0)
  %3082 = inttoptr i64 %3081 to %nyx_string*
  %3083 = alloca %nyx_string*
  store %nyx_string* %3082, %nyx_string** %3083
  %3084 = load { i64, i8* }*, { i64, i8* }** %3069
  %3085 = load %nyx_string*, %nyx_string** %3083
  %3086 = ptrtoint %nyx_string* %3085 to i64
  call void @nyx_array_push({ i64, i8* }* %3084, i64 %3086)
  %3087 = load i64, i64* %3070
  %3088 = add i64 %3087, 1
  store i64 %3088, i64* %3070
  br label %while_cond564
while_end566:
  %3089 = load i64, i64* @g_enum_reg_count
  %3090 = load { i64, i8* }*, { i64, i8* }** @g_enum_reg_names
  %3091 = call i64 @nyx_array_length({ i64, i8* }* %3090)
  %3092 = icmp slt i64 %3089, %3091
  br i1 %3092, label %then567, label %else568
then567:
  %3093 = load { i64, i8* }*, { i64, i8* }** @g_enum_reg_names
  %3094 = load i64, i64* @g_enum_reg_count
  %3095 = load %nyx_string*, %nyx_string** %3060
  %3096 = ptrtoint %nyx_string* %3095 to i64
  call void @nyx_array_set({ i64, i8* }* %3093, i64 %3094, i64 %3096)
  %3097 = load { i64, i8* }*, { i64, i8* }** @g_enum_reg_variants
  %3098 = load i64, i64* @g_enum_reg_count
  %3099 = load { i64, i8* }*, { i64, i8* }** %3069
  %3100 = ptrtoint { i64, i8* }* %3099 to i64
  call void @nyx_array_set({ i64, i8* }* %3097, i64 %3098, i64 %3100)
  br label %merge569
else568:
  %3101 = load { i64, i8* }*, { i64, i8* }** @g_enum_reg_names
  %3102 = load %nyx_string*, %nyx_string** %3060
  %3103 = ptrtoint %nyx_string* %3102 to i64
  call void @nyx_array_push({ i64, i8* }* %3101, i64 %3103)
  %3104 = load { i64, i8* }*, { i64, i8* }** @g_enum_reg_variants
  %3105 = load { i64, i8* }*, { i64, i8* }** %3069
  %3106 = ptrtoint { i64, i8* }* %3105 to i64
  call void @nyx_array_push({ i64, i8* }* %3104, i64 %3106)
  br label %merge569
merge569:
  %3107 = load i64, i64* @g_enum_reg_count
  %3108 = add i64 %3107, 1
  store i64 %3108, i64* @g_enum_reg_count
  br label %merge563
else562:
  br label %merge563
merge563:
  %3109 = load %nyx_string*, %nyx_string** %2742
  %3110 = getelementptr [7 x i8], [7 x i8]* @.str435, i32 0, i32 0
  %3111 = call %nyx_string* @nyx_string_from_cstr(i8* %3110)
  %3112 = call i8* @nyx_string_to_cstr(%nyx_string* %3109)
  %3113 = call i8* @nyx_string_to_cstr(%nyx_string* %3111)
  %3114 = call i32 @strcmp(i8* %3112, i8* %3113)
  %3115 = icmp eq i32 %3114, 0
  br i1 %3115, label %then570, label %else571
then570:
  %3116 = load %ASTNode, %ASTNode* %2739
  %3117 = call %ASTNode @get_node_at(%ASTNode %3116, i64 0)
  %3118 = alloca %ASTNode
  store %ASTNode %3117, %ASTNode* %3118
  %3119 = getelementptr %ASTNode, %ASTNode* %3118, i32 0, i32 0
  %3120 = load %nyx_string*, %nyx_string** %3119
  %3121 = alloca %nyx_string*
  store %nyx_string* %3120, %nyx_string** %3121
  %3122 = load %nyx_string*, %nyx_string** %3121
  %3123 = getelementptr [9 x i8], [9 x i8]* @.str436, i32 0, i32 0
  %3124 = call %nyx_string* @nyx_string_from_cstr(i8* %3123)
  %3125 = call i8* @nyx_string_to_cstr(%nyx_string* %3122)
  %3126 = call i8* @nyx_string_to_cstr(%nyx_string* %3124)
  %3127 = call i32 @strcmp(i8* %3125, i8* %3126)
  %3128 = icmp eq i32 %3127, 0
  br i1 %3128, label %then573, label %else574
then573:
  %3129 = load %ASTNode, %ASTNode* %3118
  %3130 = call %nyx_string* @get_string_at(%ASTNode %3129, i64 0)
  %3131 = alloca %nyx_string*
  store %nyx_string* %3130, %nyx_string** %3131
  %3132 = load %ASTNode, %ASTNode* %3118
  %3133 = call { i64, i8* }* @get_array_at(%ASTNode %3132, i64 1)
  %3134 = alloca { i64, i8* }*
  store { i64, i8* }* %3133, { i64, i8* }** %3134
  %3135 = load { i64, i8* }*, { i64, i8* }** %3134
  %3136 = call i64 @nyx_array_length({ i64, i8* }* %3135)
  %3137 = alloca i64
  store i64 %3136, i64* %3137
  %3138 = alloca i64
  store i64 0, i64* %3138
  %3139 = alloca i1
  store i1 0, i1* %3139
  br label %while_cond576
while_cond576:
  %3140 = load i64, i64* %3138
  %3141 = load { i64, i8* }*, { i64, i8* }** %3134
  %3142 = call i64 @nyx_array_length({ i64, i8* }* %3141)
  %3143 = icmp slt i64 %3140, %3142
  br i1 %3143, label %while_body577, label %while_end578
while_body577:
  %3144 = load { i64, i8* }*, { i64, i8* }** %3134
  %3145 = load i64, i64* %3138
  %3146 = call i64 @nyx_array_get({ i64, i8* }* %3144, i64 %3145)
  %3147 = inttoptr i64 %3146 to { i64, i8* }*
  %3148 = alloca { i64, i8* }*
  store { i64, i8* }* %3147, { i64, i8* }** %3148
  %3149 = load { i64, i8* }*, { i64, i8* }** %3148
  %3150 = call i64 @nyx_array_get({ i64, i8* }* %3149, i64 1)
  %3151 = inttoptr i64 %3150 to %nyx_string*
  %3152 = alloca %nyx_string*
  store %nyx_string* %3151, %nyx_string** %3152
  %3153 = load %nyx_string*, %nyx_string** %3152
  %3154 = call i64 @nyx_string_length_utf8(%nyx_string* %3153)
  %3155 = icmp sge i64 %3154, 3
  br i1 %3155, label %then579, label %else580
then579:
  %3156 = load %nyx_string*, %nyx_string** %3152
  %3157 = call %nyx_string* @nyx_string_substring(%nyx_string* %3156, i64 0, i64 3)
  %3158 = getelementptr [4 x i8], [4 x i8]* @.str437, i32 0, i32 0
  %3159 = call %nyx_string* @nyx_string_from_cstr(i8* %3158)
  %3160 = call i8* @nyx_string_to_cstr(%nyx_string* %3157)
  %3161 = call i8* @nyx_string_to_cstr(%nyx_string* %3159)
  %3162 = call i32 @strcmp(i8* %3160, i8* %3161)
  %3163 = icmp eq i32 %3162, 0
  br i1 %3163, label %then582, label %else583
then582:
  %3164 = sub i64 0, 1
  store i64 %3164, i64* %3137
  br label %merge584
else583:
  br label %merge584
merge584:
  br label %merge581
else580:
  br label %merge581
merge581:
  %3165 = load { i64, i8* }*, { i64, i8* }** %3148
  %3166 = call i64 @nyx_array_length({ i64, i8* }* %3165)
  %3167 = icmp sgt i64 %3166, 2
  br i1 %3167, label %then585, label %else586
then585:
  %3168 = sub i64 0, 1
  store i64 %3168, i64* %3137
  store i1 1, i1* %3139
  br label %merge587
else586:
  br label %merge587
merge587:
  %3169 = load i64, i64* %3138
  %3170 = add i64 %3169, 1
  store i64 %3170, i64* %3138
  br label %while_cond576
while_end578:
  %3171 = load %nyx_string*, %nyx_string** %3131
  %3172 = getelementptr [3 x i8], [3 x i8]* @.str438, i32 0, i32 0
  %3173 = call %nyx_string* @nyx_string_from_cstr(i8* %3172)
  %3174 = load i64, i64* %3137
  %3175 = call i64 @scope_declare_fn(%nyx_string* %3171, %nyx_string* %3173, i64 %3174)
  %3176 = load i1, i1* %3139
  %3177 = xor i1 %3176, true
  br i1 %3177, label %then588, label %else589
then588:
  %3178 = load %ASTNode, %ASTNode* %3118
  %3179 = call %nyx_string* @get_string_at(%ASTNode %3178, i64 2)
  %3180 = alloca %nyx_string*
  store %nyx_string* %3179, %nyx_string** %3180
  %3181 = call { i64, i8* }* @ty_unknown()
  %3182 = alloca { i64, i8* }*
  store { i64, i8* }* %3181, { i64, i8* }** %3182
  %3183 = load %nyx_string*, %nyx_string** %3180
  %3184 = getelementptr [1 x i8], [1 x i8]* @.str439, i32 0, i32 0
  %3185 = call %nyx_string* @nyx_string_from_cstr(i8* %3184)
  %3186 = call i8* @nyx_string_to_cstr(%nyx_string* %3183)
  %3187 = call i8* @nyx_string_to_cstr(%nyx_string* %3185)
  %3188 = call i32 @strcmp(i8* %3186, i8* %3187)
  %3189 = icmp ne i32 %3188, 0
  br i1 %3189, label %then591, label %else592
then591:
  %3190 = load %nyx_string*, %nyx_string** %3180
  %3191 = getelementptr [5 x i8], [5 x i8]* @.str440, i32 0, i32 0
  %3192 = call %nyx_string* @nyx_string_from_cstr(i8* %3191)
  %3193 = call i8* @nyx_string_to_cstr(%nyx_string* %3190)
  %3194 = call i8* @nyx_string_to_cstr(%nyx_string* %3192)
  %3195 = call i32 @strcmp(i8* %3193, i8* %3194)
  %3196 = icmp ne i32 %3195, 0
  br i1 %3196, label %then594, label %else595
then594:
  %3197 = load %nyx_string*, %nyx_string** %3180
  %3198 = call { i64, i8* }* @ty_parse(%nyx_string* %3197)
  %3199 = call { i64, i8* }* @resolve_type({ i64, i8* }* %3198)
  store { i64, i8* }* %3199, { i64, i8* }** %3182
  br label %merge596
else595:
  br label %merge596
merge596:
  br label %merge593
else592:
  br label %merge593
merge593:
  %3200 = call { i64, i8* }* @nyx_array_new_ptr()
  %3201 = alloca { i64, i8* }*
  store { i64, i8* }* %3200, { i64, i8* }** %3201
  %3202 = getelementptr %ASTNode, %ASTNode* %3118, i32 0, i32 1
  %3203 = load { i64, i8* }*, { i64, i8* }** %3202
  %3204 = alloca { i64, i8* }*
  store { i64, i8* }* %3203, { i64, i8* }** %3204
  %3205 = load { i64, i8* }*, { i64, i8* }** %3204
  %3206 = call i64 @nyx_array_length({ i64, i8* }* %3205)
  %3207 = icmp sgt i64 %3206, 4
  br i1 %3207, label %then597, label %else598
then597:
  %3208 = load { i64, i8* }*, { i64, i8* }** %3204
  %3209 = call i64 @nyx_array_get({ i64, i8* }* %3208, i64 4)
  %3210 = inttoptr i64 %3209 to { i64, i8* }*
  %3211 = alloca { i64, i8* }*
  store { i64, i8* }* %3210, { i64, i8* }** %3211
  %3212 = load { i64, i8* }*, { i64, i8* }** %3211
  %3213 = call { i64, i8* }* @extract_type_param_names({ i64, i8* }* %3212)
  store { i64, i8* }* %3213, { i64, i8* }** %3201
  br label %merge599
else598:
  br label %merge599
merge599:
  %3214 = load %nyx_string*, %nyx_string** %3131
  %3215 = load { i64, i8* }*, { i64, i8* }** %3134
  %3216 = call { i64, i8* }* @params_to_types({ i64, i8* }* %3215)
  %3217 = load { i64, i8* }*, { i64, i8* }** %3182
  %3218 = load { i64, i8* }*, { i64, i8* }** %3201
  %3219 = call i64 @register_fn_sig(%nyx_string* %3214, { i64, i8* }* %3216, { i64, i8* }* %3217, { i64, i8* }* %3218)
  br label %merge590
else589:
  br label %merge590
merge590:
  br label %merge575
else574:
  br label %merge575
merge575:
  %3220 = load %nyx_string*, %nyx_string** %3121
  %3221 = getelementptr [7 x i8], [7 x i8]* @.str441, i32 0, i32 0
  %3222 = call %nyx_string* @nyx_string_from_cstr(i8* %3221)
  %3223 = call i8* @nyx_string_to_cstr(%nyx_string* %3220)
  %3224 = call i8* @nyx_string_to_cstr(%nyx_string* %3222)
  %3225 = call i32 @strcmp(i8* %3223, i8* %3224)
  %3226 = icmp eq i32 %3225, 0
  br i1 %3226, label %then600, label %else601
then600:
  %3227 = load %ASTNode, %ASTNode* %3118
  %3228 = call %nyx_string* @get_string_at(%ASTNode %3227, i64 0)
  %3229 = alloca %nyx_string*
  store %nyx_string* %3228, %nyx_string** %3229
  %3230 = load %nyx_string*, %nyx_string** %3229
  %3231 = getelementptr [7 x i8], [7 x i8]* @.str442, i32 0, i32 0
  %3232 = call %nyx_string* @nyx_string_from_cstr(i8* %3231)
  %3233 = call i64 @scope_declare(%nyx_string* %3230, %nyx_string* %3232)
  %3234 = getelementptr %ASTNode, %ASTNode* %3118, i32 0, i32 1
  %3235 = load { i64, i8* }*, { i64, i8* }** %3234
  %3236 = alloca { i64, i8* }*
  store { i64, i8* }* %3235, { i64, i8* }** %3236
  %3237 = load { i64, i8* }*, { i64, i8* }** %3236
  %3238 = call i64 @nyx_array_length({ i64, i8* }* %3237)
  %3239 = icmp sgt i64 %3238, 3
  br i1 %3239, label %then603, label %else604
then603:
  %3240 = load { i64, i8* }*, { i64, i8* }** %3236
  %3241 = call i64 @nyx_array_get({ i64, i8* }* %3240, i64 3)
  %3242 = inttoptr i64 %3241 to %nyx_string*
  %3243 = alloca %nyx_string*
  store %nyx_string* %3242, %nyx_string** %3243
  %3244 = load %nyx_string*, %nyx_string** %3243
  %3245 = call i64 @nyx_string_length_utf8(%nyx_string* %3244)
  %3246 = icmp sgt i64 %3245, 7
  br i1 %3246, label %then606, label %else607
then606:
  %3247 = load %nyx_string*, %nyx_string** %3243
  %3248 = call %nyx_string* @nyx_string_substring(%nyx_string* %3247, i64 0, i64 7)
  %3249 = getelementptr [8 x i8], [8 x i8]* @.str443, i32 0, i32 0
  %3250 = call %nyx_string* @nyx_string_from_cstr(i8* %3249)
  %3251 = call i8* @nyx_string_to_cstr(%nyx_string* %3248)
  %3252 = call i8* @nyx_string_to_cstr(%nyx_string* %3250)
  %3253 = call i32 @strcmp(i8* %3251, i8* %3252)
  %3254 = icmp eq i32 %3253, 0
  br i1 %3254, label %then609, label %else610
then609:
  %3255 = load %nyx_string*, %nyx_string** %3243
  %3256 = load %nyx_string*, %nyx_string** %3243
  %3257 = call i64 @nyx_string_length_utf8(%nyx_string* %3256)
  %3258 = sub i64 %3257, 1
  %3259 = call %nyx_string* @nyx_string_substring(%nyx_string* %3255, i64 7, i64 %3258)
  %3260 = alloca %nyx_string*
  store %nyx_string* %3259, %nyx_string** %3260
  %3261 = load %nyx_string*, %nyx_string** %3260
  %3262 = getelementptr [8 x i8], [8 x i8]* @.str444, i32 0, i32 0
  %3263 = call %nyx_string* @nyx_string_from_cstr(i8* %3262)
  %3264 = call i64 @nyx_string_index_of(%nyx_string* %3261, %nyx_string* %3263)
  %3265 = icmp sge i64 %3264, 0
  br i1 %3265, label %then612, label %else613
then612:
  %3266 = load %nyx_string*, %nyx_string** %3229
  %3267 = getelementptr [9 x i8], [9 x i8]* @.str445, i32 0, i32 0
  %3268 = call %nyx_string* @nyx_string_from_cstr(i8* %3267)
  %3269 = call %nyx_string* @nyx_string_concat(%nyx_string* %3266, %nyx_string* %3268)
  %3270 = getelementptr [3 x i8], [3 x i8]* @.str446, i32 0, i32 0
  %3271 = call %nyx_string* @nyx_string_from_cstr(i8* %3270)
  %3272 = call i64 @scope_declare_fn(%nyx_string* %3269, %nyx_string* %3271, i64 0)
  br label %merge614
else613:
  br label %merge614
merge614:
  %3273 = load %nyx_string*, %nyx_string** %3260
  %3274 = getelementptr [6 x i8], [6 x i8]* @.str447, i32 0, i32 0
  %3275 = call %nyx_string* @nyx_string_from_cstr(i8* %3274)
  %3276 = call i64 @nyx_string_index_of(%nyx_string* %3273, %nyx_string* %3275)
  %3277 = icmp sge i64 %3276, 0
  br i1 %3277, label %then615, label %else616
then615:
  %3278 = load %nyx_string*, %nyx_string** %3229
  %3279 = getelementptr [7 x i8], [7 x i8]* @.str448, i32 0, i32 0
  %3280 = call %nyx_string* @nyx_string_from_cstr(i8* %3279)
  %3281 = call %nyx_string* @nyx_string_concat(%nyx_string* %3278, %nyx_string* %3280)
  %3282 = getelementptr [3 x i8], [3 x i8]* @.str449, i32 0, i32 0
  %3283 = call %nyx_string* @nyx_string_from_cstr(i8* %3282)
  %3284 = call i64 @scope_declare_fn(%nyx_string* %3281, %nyx_string* %3283, i64 1)
  br label %merge617
else616:
  br label %merge617
merge617:
  %3285 = load %nyx_string*, %nyx_string** %3260
  %3286 = getelementptr [10 x i8], [10 x i8]* @.str450, i32 0, i32 0
  %3287 = call %nyx_string* @nyx_string_from_cstr(i8* %3286)
  %3288 = call i64 @nyx_string_index_of(%nyx_string* %3285, %nyx_string* %3287)
  %3289 = icmp sge i64 %3288, 0
  br i1 %3289, label %then618, label %else619
then618:
  %3290 = load %nyx_string*, %nyx_string** %3229
  %3291 = getelementptr [4 x i8], [4 x i8]* @.str451, i32 0, i32 0
  %3292 = call %nyx_string* @nyx_string_from_cstr(i8* %3291)
  %3293 = call %nyx_string* @nyx_string_concat(%nyx_string* %3290, %nyx_string* %3292)
  %3294 = getelementptr [3 x i8], [3 x i8]* @.str452, i32 0, i32 0
  %3295 = call %nyx_string* @nyx_string_from_cstr(i8* %3294)
  %3296 = call i64 @scope_declare_fn(%nyx_string* %3293, %nyx_string* %3295, i64 2)
  br label %merge620
else619:
  br label %merge620
merge620:
  %3297 = load %nyx_string*, %nyx_string** %3260
  %3298 = getelementptr [6 x i8], [6 x i8]* @.str453, i32 0, i32 0
  %3299 = call %nyx_string* @nyx_string_from_cstr(i8* %3298)
  %3300 = call i64 @nyx_string_index_of(%nyx_string* %3297, %nyx_string* %3299)
  %3301 = icmp sge i64 %3300, 0
  br i1 %3301, label %then621, label %else622
then621:
  %3302 = load %nyx_string*, %nyx_string** %3229
  %3303 = getelementptr [11 x i8], [11 x i8]* @.str454, i32 0, i32 0
  %3304 = call %nyx_string* @nyx_string_from_cstr(i8* %3303)
  %3305 = call %nyx_string* @nyx_string_concat(%nyx_string* %3302, %nyx_string* %3304)
  %3306 = getelementptr [3 x i8], [3 x i8]* @.str455, i32 0, i32 0
  %3307 = call %nyx_string* @nyx_string_from_cstr(i8* %3306)
  %3308 = call i64 @scope_declare_fn(%nyx_string* %3305, %nyx_string* %3307, i64 1)
  br label %merge623
else622:
  br label %merge623
merge623:
  %3309 = load %nyx_string*, %nyx_string** %3260
  %3310 = getelementptr [8 x i8], [8 x i8]* @.str456, i32 0, i32 0
  %3311 = call %nyx_string* @nyx_string_from_cstr(i8* %3310)
  %3312 = call i64 @nyx_string_index_of(%nyx_string* %3309, %nyx_string* %3311)
  %3313 = icmp sge i64 %3312, 0
  br i1 %3313, label %then624, label %else625
then624:
  %3314 = load %nyx_string*, %nyx_string** %3229
  %3315 = getelementptr [11 x i8], [11 x i8]* @.str457, i32 0, i32 0
  %3316 = call %nyx_string* @nyx_string_from_cstr(i8* %3315)
  %3317 = call %nyx_string* @nyx_string_concat(%nyx_string* %3314, %nyx_string* %3316)
  %3318 = getelementptr [3 x i8], [3 x i8]* @.str458, i32 0, i32 0
  %3319 = call %nyx_string* @nyx_string_from_cstr(i8* %3318)
  %3320 = call i64 @scope_declare_fn(%nyx_string* %3317, %nyx_string* %3319, i64 1)
  br label %merge626
else625:
  br label %merge626
merge626:
  br label %merge611
else610:
  br label %merge611
merge611:
  br label %merge608
else607:
  br label %merge608
merge608:
  br label %merge605
else604:
  br label %merge605
merge605:
  br label %merge602
else601:
  br label %merge602
merge602:
  %3321 = load %nyx_string*, %nyx_string** %3121
  %3322 = getelementptr [9 x i8], [9 x i8]* @.str459, i32 0, i32 0
  %3323 = call %nyx_string* @nyx_string_from_cstr(i8* %3322)
  %3324 = call i8* @nyx_string_to_cstr(%nyx_string* %3321)
  %3325 = call i8* @nyx_string_to_cstr(%nyx_string* %3323)
  %3326 = call i32 @strcmp(i8* %3324, i8* %3325)
  %3327 = icmp eq i32 %3326, 0
  br i1 %3327, label %then627, label %else628
then627:
  %3328 = load %ASTNode, %ASTNode* %3118
  %3329 = call %nyx_string* @get_string_at(%ASTNode %3328, i64 0)
  %3330 = alloca %nyx_string*
  store %nyx_string* %3329, %nyx_string** %3330
  %3331 = load %nyx_string*, %nyx_string** %3330
  %3332 = getelementptr [5 x i8], [5 x i8]* @.str460, i32 0, i32 0
  %3333 = call %nyx_string* @nyx_string_from_cstr(i8* %3332)
  %3334 = call i64 @scope_declare(%nyx_string* %3331, %nyx_string* %3333)
  %3335 = load %ASTNode, %ASTNode* %3118
  %3336 = call { i64, i8* }* @get_array_at(%ASTNode %3335, i64 1)
  %3337 = alloca { i64, i8* }*
  store { i64, i8* }* %3336, { i64, i8* }** %3337
  %3338 = call { i64, i8* }* @nyx_array_new_ptr()
  %3339 = alloca { i64, i8* }*
  store { i64, i8* }* %3338, { i64, i8* }** %3339
  %3340 = alloca i64
  store i64 0, i64* %3340
  br label %while_cond630
while_cond630:
  %3341 = load i64, i64* %3340
  %3342 = load { i64, i8* }*, { i64, i8* }** %3337
  %3343 = call i64 @nyx_array_length({ i64, i8* }* %3342)
  %3344 = icmp slt i64 %3341, %3343
  br i1 %3344, label %while_body631, label %while_end632
while_body631:
  %3345 = load { i64, i8* }*, { i64, i8* }** %3337
  %3346 = load i64, i64* %3340
  %3347 = call i64 @nyx_array_get({ i64, i8* }* %3345, i64 %3346)
  %3348 = inttoptr i64 %3347 to { i64, i8* }*
  %3349 = alloca { i64, i8* }*
  store { i64, i8* }* %3348, { i64, i8* }** %3349
  %3350 = load { i64, i8* }*, { i64, i8* }** %3349
  %3351 = call i64 @nyx_array_get({ i64, i8* }* %3350, i64 0)
  %3352 = inttoptr i64 %3351 to %nyx_string*
  %3353 = alloca %nyx_string*
  store %nyx_string* %3352, %nyx_string** %3353
  %3354 = load { i64, i8* }*, { i64, i8* }** %3339
  %3355 = load %nyx_string*, %nyx_string** %3353
  %3356 = ptrtoint %nyx_string* %3355 to i64
  call void @nyx_array_push({ i64, i8* }* %3354, i64 %3356)
  %3357 = load i64, i64* %3340
  %3358 = add i64 %3357, 1
  store i64 %3358, i64* %3340
  br label %while_cond630
while_end632:
  %3359 = load i64, i64* @g_enum_reg_count
  %3360 = load { i64, i8* }*, { i64, i8* }** @g_enum_reg_names
  %3361 = call i64 @nyx_array_length({ i64, i8* }* %3360)
  %3362 = icmp slt i64 %3359, %3361
  br i1 %3362, label %then633, label %else634
then633:
  %3363 = load { i64, i8* }*, { i64, i8* }** @g_enum_reg_names
  %3364 = load i64, i64* @g_enum_reg_count
  %3365 = load %nyx_string*, %nyx_string** %3330
  %3366 = ptrtoint %nyx_string* %3365 to i64
  call void @nyx_array_set({ i64, i8* }* %3363, i64 %3364, i64 %3366)
  %3367 = load { i64, i8* }*, { i64, i8* }** @g_enum_reg_variants
  %3368 = load i64, i64* @g_enum_reg_count
  %3369 = load { i64, i8* }*, { i64, i8* }** %3339
  %3370 = ptrtoint { i64, i8* }* %3369 to i64
  call void @nyx_array_set({ i64, i8* }* %3367, i64 %3368, i64 %3370)
  br label %merge635
else634:
  %3371 = load { i64, i8* }*, { i64, i8* }** @g_enum_reg_names
  %3372 = load %nyx_string*, %nyx_string** %3330
  %3373 = ptrtoint %nyx_string* %3372 to i64
  call void @nyx_array_push({ i64, i8* }* %3371, i64 %3373)
  %3374 = load { i64, i8* }*, { i64, i8* }** @g_enum_reg_variants
  %3375 = load { i64, i8* }*, { i64, i8* }** %3339
  %3376 = ptrtoint { i64, i8* }* %3375 to i64
  call void @nyx_array_push({ i64, i8* }* %3374, i64 %3376)
  br label %merge635
merge635:
  %3377 = load i64, i64* @g_enum_reg_count
  %3378 = add i64 %3377, 1
  store i64 %3378, i64* @g_enum_reg_count
  br label %merge629
else628:
  br label %merge629
merge629:
  br label %merge572
else571:
  br label %merge572
merge572:
  %3379 = load %nyx_string*, %nyx_string** %2742
  %3380 = getelementptr [7 x i8], [7 x i8]* @.str461, i32 0, i32 0
  %3381 = call %nyx_string* @nyx_string_from_cstr(i8* %3380)
  %3382 = call i8* @nyx_string_to_cstr(%nyx_string* %3379)
  %3383 = call i8* @nyx_string_to_cstr(%nyx_string* %3381)
  %3384 = call i32 @strcmp(i8* %3382, i8* %3383)
  %3385 = icmp eq i32 %3384, 0
  br i1 %3385, label %then636, label %else637
then636:
  store i1 1, i1* @g_has_imports
  %3386 = load %ASTNode, %ASTNode* %2739
  %3387 = call { i64, i8* }* @get_array_at(%ASTNode %3386, i64 0)
  %3388 = alloca { i64, i8* }*
  store { i64, i8* }* %3387, { i64, i8* }** %3388
  %3389 = alloca i64
  store i64 0, i64* %3389
  br label %while_cond639
while_cond639:
  %3390 = load i64, i64* %3389
  %3391 = load { i64, i8* }*, { i64, i8* }** %3388
  %3392 = call i64 @nyx_array_length({ i64, i8* }* %3391)
  %3393 = icmp slt i64 %3390, %3392
  br i1 %3393, label %while_body640, label %while_end641
while_body640:
  %3394 = load { i64, i8* }*, { i64, i8* }** %3388
  %3395 = load i64, i64* %3389
  %3396 = call i64 @nyx_array_get({ i64, i8* }* %3394, i64 %3395)
  %3397 = inttoptr i64 %3396 to %nyx_string*
  %3398 = alloca %nyx_string*
  store %nyx_string* %3397, %nyx_string** %3398
  %3399 = load %nyx_string*, %nyx_string** %3398
  %3400 = getelementptr [7 x i8], [7 x i8]* @.str462, i32 0, i32 0
  %3401 = call %nyx_string* @nyx_string_from_cstr(i8* %3400)
  %3402 = call i64 @scope_declare(%nyx_string* %3399, %nyx_string* %3401)
  %3403 = load i64, i64* %3389
  %3404 = add i64 %3403, 1
  store i64 %3404, i64* %3389
  br label %while_cond639
while_end641:
  br label %merge638
else637:
  br label %merge638
merge638:
  %3405 = load %nyx_string*, %nyx_string** %2742
  %3406 = getelementptr [10 x i8], [10 x i8]* @.str463, i32 0, i32 0
  %3407 = call %nyx_string* @nyx_string_from_cstr(i8* %3406)
  %3408 = call i8* @nyx_string_to_cstr(%nyx_string* %3405)
  %3409 = call i8* @nyx_string_to_cstr(%nyx_string* %3407)
  %3410 = call i32 @strcmp(i8* %3408, i8* %3409)
  %3411 = icmp eq i32 %3410, 0
  br i1 %3411, label %then642, label %else643
then642:
  %3412 = load %ASTNode, %ASTNode* %2739
  %3413 = call %nyx_string* @get_string_at(%ASTNode %3412, i64 0)
  %3414 = alloca %nyx_string*
  store %nyx_string* %3413, %nyx_string** %3414
  %3415 = load %ASTNode, %ASTNode* %2739
  %3416 = call { i64, i8* }* @get_array_at(%ASTNode %3415, i64 1)
  %3417 = alloca { i64, i8* }*
  store { i64, i8* }* %3416, { i64, i8* }** %3417
  %3418 = load %nyx_string*, %nyx_string** %3414
  %3419 = getelementptr [3 x i8], [3 x i8]* @.str464, i32 0, i32 0
  %3420 = call %nyx_string* @nyx_string_from_cstr(i8* %3419)
  %3421 = load { i64, i8* }*, { i64, i8* }** %3417
  %3422 = call i64 @nyx_array_length({ i64, i8* }* %3421)
  %3423 = call i64 @scope_declare_fn(%nyx_string* %3418, %nyx_string* %3420, i64 %3422)
  br label %merge644
else643:
  br label %merge644
merge644:
  %3424 = load %nyx_string*, %nyx_string** %2742
  %3425 = getelementptr [12 x i8], [12 x i8]* @.str465, i32 0, i32 0
  %3426 = call %nyx_string* @nyx_string_from_cstr(i8* %3425)
  %3427 = call i8* @nyx_string_to_cstr(%nyx_string* %3424)
  %3428 = call i8* @nyx_string_to_cstr(%nyx_string* %3426)
  %3429 = call i32 @strcmp(i8* %3427, i8* %3428)
  %3430 = icmp eq i32 %3429, 0
  br i1 %3430, label %then645, label %else646
then645:
  %3431 = load %ASTNode, %ASTNode* %2739
  %3432 = call %nyx_string* @get_string_at(%ASTNode %3431, i64 0)
  %3433 = alloca %nyx_string*
  store %nyx_string* %3432, %nyx_string** %3433
  %3434 = load %nyx_string*, %nyx_string** %3433
  %3435 = getelementptr [7 x i8], [7 x i8]* @.str466, i32 0, i32 0
  %3436 = call %nyx_string* @nyx_string_from_cstr(i8* %3435)
  %3437 = call i64 @scope_declare(%nyx_string* %3434, %nyx_string* %3436)
  br label %merge647
else646:
  br label %merge647
merge647:
  %3438 = load %nyx_string*, %nyx_string** %2742
  %3439 = getelementptr [14 x i8], [14 x i8]* @.str467, i32 0, i32 0
  %3440 = call %nyx_string* @nyx_string_from_cstr(i8* %3439)
  %3441 = call i8* @nyx_string_to_cstr(%nyx_string* %3438)
  %3442 = call i8* @nyx_string_to_cstr(%nyx_string* %3440)
  %3443 = call i32 @strcmp(i8* %3441, i8* %3442)
  %3444 = icmp eq i32 %3443, 0
  br i1 %3444, label %then648, label %else649
then648:
  store i1 1, i1* @g_has_imports
  %3445 = load %ASTNode, %ASTNode* %2739
  %3446 = call %nyx_string* @get_string_at(%ASTNode %3445, i64 0)
  %3447 = alloca %nyx_string*
  store %nyx_string* %3446, %nyx_string** %3447
  %3448 = load %ASTNode, %ASTNode* %2739
  %3449 = call %nyx_string* @get_string_at(%ASTNode %3448, i64 1)
  %3450 = alloca %nyx_string*
  store %nyx_string* %3449, %nyx_string** %3450
  %3451 = load %nyx_string*, %nyx_string** %3450
  %3452 = getelementptr [1 x i8], [1 x i8]* @.str468, i32 0, i32 0
  %3453 = call %nyx_string* @nyx_string_from_cstr(i8* %3452)
  %3454 = call i8* @nyx_string_to_cstr(%nyx_string* %3451)
  %3455 = call i8* @nyx_string_to_cstr(%nyx_string* %3453)
  %3456 = call i32 @strcmp(i8* %3454, i8* %3455)
  %3457 = icmp ne i32 %3456, 0
  br i1 %3457, label %then651, label %else652
then651:
  %3458 = load %nyx_string*, %nyx_string** %3450
  %3459 = getelementptr [7 x i8], [7 x i8]* @.str469, i32 0, i32 0
  %3460 = call %nyx_string* @nyx_string_from_cstr(i8* %3459)
  %3461 = call i64 @scope_declare(%nyx_string* %3458, %nyx_string* %3460)
  br label %merge653
else652:
  br label %merge653
merge653:
  %3462 = load %nyx_string*, %nyx_string** %3447
  %3463 = call i64 @scan_module_types(%nyx_string* %3462)
  br label %merge650
else649:
  br label %merge650
merge650:
  %3464 = load %nyx_string*, %nyx_string** %2742
  %3465 = getelementptr [5 x i8], [5 x i8]* @.str470, i32 0, i32 0
  %3466 = call %nyx_string* @nyx_string_from_cstr(i8* %3465)
  %3467 = call i8* @nyx_string_to_cstr(%nyx_string* %3464)
  %3468 = call i8* @nyx_string_to_cstr(%nyx_string* %3466)
  %3469 = call i32 @strcmp(i8* %3467, i8* %3468)
  %3470 = icmp eq i32 %3469, 0
  br i1 %3470, label %then654, label %else655
then654:
  %3471 = load %ASTNode, %ASTNode* %2739
  %3472 = call %nyx_string* @get_string_at(%ASTNode %3471, i64 0)
  %3473 = call %nyx_string* @strip_generic_args(%nyx_string* %3472)
  %3474 = alloca %nyx_string*
  store %nyx_string* %3473, %nyx_string** %3474
  %3475 = load %ASTNode, %ASTNode* %2739
  %3476 = call { i64, i8* }* @get_array_at(%ASTNode %3475, i64 1)
  %3477 = alloca { i64, i8* }*
  store { i64, i8* }* %3476, { i64, i8* }** %3477
  %3478 = alloca i64
  store i64 0, i64* %3478
  br label %while_cond657
while_cond657:
  %3479 = load i64, i64* %3478
  %3480 = load { i64, i8* }*, { i64, i8* }** %3477
  %3481 = call i64 @nyx_array_length({ i64, i8* }* %3480)
  %3482 = icmp slt i64 %3479, %3481
  br i1 %3482, label %while_body658, label %while_end659
while_body658:
  %3483 = load { i64, i8* }*, { i64, i8* }** %3477
  %3484 = load i64, i64* %3478
  %3485 = call i64 @nyx_array_get({ i64, i8* }* %3483, i64 %3484)
  %3486 = inttoptr i64 %3485 to { i64, i8* }*
  %3487 = call i64 @nyx_array_get({ i64, i8* }* %3486, i64 0)
  %3488 = call i64 @nyx_array_get({ i64, i8* }* %3486, i64 1)
  %3489 = inttoptr i64 %3487 to %nyx_string*
  %3490 = inttoptr i64 %3488 to { i64, i8* }*
  %3491 = alloca %ASTNode
  %3492 = getelementptr inbounds %ASTNode, %ASTNode* %3491, i32 0, i32 0
  store %nyx_string* %3489, %nyx_string** %3492
  %3493 = getelementptr inbounds %ASTNode, %ASTNode* %3491, i32 0, i32 1
  store { i64, i8* }* %3490, { i64, i8* }** %3493
  %3494 = load %ASTNode, %ASTNode* %3491
  %3495 = alloca %ASTNode
  store %ASTNode %3494, %ASTNode* %3495
  %3496 = load %ASTNode, %ASTNode* %3495
  %3497 = call %nyx_string* @get_string_at(%ASTNode %3496, i64 0)
  %3498 = alloca %nyx_string*
  store %nyx_string* %3497, %nyx_string** %3498
  %3499 = load %ASTNode, %ASTNode* %3495
  %3500 = call { i64, i8* }* @get_array_at(%ASTNode %3499, i64 1)
  %3501 = alloca { i64, i8* }*
  store { i64, i8* }* %3500, { i64, i8* }** %3501
  %3502 = load %nyx_string*, %nyx_string** %3474
  %3503 = getelementptr [2 x i8], [2 x i8]* @.str471, i32 0, i32 0
  %3504 = call %nyx_string* @nyx_string_from_cstr(i8* %3503)
  %3505 = call %nyx_string* @nyx_string_concat(%nyx_string* %3502, %nyx_string* %3504)
  %3506 = load %nyx_string*, %nyx_string** %3498
  %3507 = call %nyx_string* @nyx_string_concat(%nyx_string* %3505, %nyx_string* %3506)
  %3508 = alloca %nyx_string*
  store %nyx_string* %3507, %nyx_string** %3508
  %3509 = load %nyx_string*, %nyx_string** %3508
  %3510 = getelementptr [3 x i8], [3 x i8]* @.str472, i32 0, i32 0
  %3511 = call %nyx_string* @nyx_string_from_cstr(i8* %3510)
  %3512 = load { i64, i8* }*, { i64, i8* }** %3501
  %3513 = call i64 @nyx_array_length({ i64, i8* }* %3512)
  %3514 = call i64 @scope_declare_fn(%nyx_string* %3509, %nyx_string* %3511, i64 %3513)
  %3515 = alloca i1
  store i1 0, i1* %3515
  %3516 = alloca i64
  store i64 0, i64* %3516
  br label %while_cond660
while_cond660:
  %3517 = load i64, i64* %3516
  %3518 = load { i64, i8* }*, { i64, i8* }** %3501
  %3519 = call i64 @nyx_array_length({ i64, i8* }* %3518)
  %3520 = icmp slt i64 %3517, %3519
  br i1 %3520, label %while_body661, label %while_end662
while_body661:
  %3521 = load { i64, i8* }*, { i64, i8* }** %3501
  %3522 = load i64, i64* %3516
  %3523 = call i64 @nyx_array_get({ i64, i8* }* %3521, i64 %3522)
  %3524 = inttoptr i64 %3523 to { i64, i8* }*
  %3525 = alloca { i64, i8* }*
  store { i64, i8* }* %3524, { i64, i8* }** %3525
  %3526 = load { i64, i8* }*, { i64, i8* }** %3525
  %3527 = call i64 @nyx_array_length({ i64, i8* }* %3526)
  %3528 = icmp sgt i64 %3527, 2
  br i1 %3528, label %then663, label %else664
then663:
  store i1 1, i1* %3515
  br label %merge665
else664:
  br label %merge665
merge665:
  %3529 = load i64, i64* %3516
  %3530 = add i64 %3529, 1
  store i64 %3530, i64* %3516
  br label %while_cond660
while_end662:
  %3531 = load i1, i1* %3515
  %3532 = xor i1 %3531, true
  br i1 %3532, label %then666, label %else667
then666:
  %3533 = load %ASTNode, %ASTNode* %3495
  %3534 = call %nyx_string* @get_string_at(%ASTNode %3533, i64 2)
  %3535 = alloca %nyx_string*
  store %nyx_string* %3534, %nyx_string** %3535
  %3536 = call { i64, i8* }* @ty_unknown()
  %3537 = alloca { i64, i8* }*
  store { i64, i8* }* %3536, { i64, i8* }** %3537
  %3538 = load %nyx_string*, %nyx_string** %3535
  %3539 = getelementptr [1 x i8], [1 x i8]* @.str473, i32 0, i32 0
  %3540 = call %nyx_string* @nyx_string_from_cstr(i8* %3539)
  %3541 = call i8* @nyx_string_to_cstr(%nyx_string* %3538)
  %3542 = call i8* @nyx_string_to_cstr(%nyx_string* %3540)
  %3543 = call i32 @strcmp(i8* %3541, i8* %3542)
  %3544 = icmp ne i32 %3543, 0
  br i1 %3544, label %then669, label %else670
then669:
  %3545 = load %nyx_string*, %nyx_string** %3535
  %3546 = getelementptr [5 x i8], [5 x i8]* @.str474, i32 0, i32 0
  %3547 = call %nyx_string* @nyx_string_from_cstr(i8* %3546)
  %3548 = call i8* @nyx_string_to_cstr(%nyx_string* %3545)
  %3549 = call i8* @nyx_string_to_cstr(%nyx_string* %3547)
  %3550 = call i32 @strcmp(i8* %3548, i8* %3549)
  %3551 = icmp ne i32 %3550, 0
  br i1 %3551, label %then672, label %else673
then672:
  %3552 = load %nyx_string*, %nyx_string** %3535
  %3553 = call { i64, i8* }* @ty_parse(%nyx_string* %3552)
  %3554 = call { i64, i8* }* @resolve_type({ i64, i8* }* %3553)
  store { i64, i8* }* %3554, { i64, i8* }** %3537
  br label %merge674
else673:
  br label %merge674
merge674:
  br label %merge671
else670:
  br label %merge671
merge671:
  %3555 = call { i64, i8* }* @nyx_array_new_ptr()
  %3556 = alloca { i64, i8* }*
  store { i64, i8* }* %3555, { i64, i8* }** %3556
  %3557 = getelementptr %ASTNode, %ASTNode* %3495, i32 0, i32 1
  %3558 = load { i64, i8* }*, { i64, i8* }** %3557
  %3559 = alloca { i64, i8* }*
  store { i64, i8* }* %3558, { i64, i8* }** %3559
  %3560 = load { i64, i8* }*, { i64, i8* }** %3559
  %3561 = call i64 @nyx_array_length({ i64, i8* }* %3560)
  %3562 = icmp sgt i64 %3561, 4
  br i1 %3562, label %then675, label %else676
then675:
  %3563 = load { i64, i8* }*, { i64, i8* }** %3559
  %3564 = call i64 @nyx_array_get({ i64, i8* }* %3563, i64 4)
  %3565 = inttoptr i64 %3564 to { i64, i8* }*
  %3566 = alloca { i64, i8* }*
  store { i64, i8* }* %3565, { i64, i8* }** %3566
  %3567 = load { i64, i8* }*, { i64, i8* }** %3566
  %3568 = call { i64, i8* }* @extract_type_param_names({ i64, i8* }* %3567)
  store { i64, i8* }* %3568, { i64, i8* }** %3556
  br label %merge677
else676:
  br label %merge677
merge677:
  %3569 = load %nyx_string*, %nyx_string** %3474
  %3570 = load %nyx_string*, %nyx_string** %3498
  %3571 = load { i64, i8* }*, { i64, i8* }** %3501
  %3572 = call { i64, i8* }* @impl_params_to_types({ i64, i8* }* %3571)
  %3573 = load { i64, i8* }*, { i64, i8* }** %3537
  %3574 = load { i64, i8* }*, { i64, i8* }** %3556
  %3575 = call i64 @register_impl_method(%nyx_string* %3569, %nyx_string* %3570, { i64, i8* }* %3572, { i64, i8* }* %3573, { i64, i8* }* %3574)
  br label %merge668
else667:
  br label %merge668
merge668:
  %3576 = load i64, i64* %3478
  %3577 = add i64 %3576, 1
  store i64 %3577, i64* %3478
  br label %while_cond657
while_end659:
  br label %merge656
else655:
  br label %merge656
merge656:
  %3578 = load %nyx_string*, %nyx_string** %2742
  %3579 = getelementptr [10 x i8], [10 x i8]* @.str475, i32 0, i32 0
  %3580 = call %nyx_string* @nyx_string_from_cstr(i8* %3579)
  %3581 = call i8* @nyx_string_to_cstr(%nyx_string* %3578)
  %3582 = call i8* @nyx_string_to_cstr(%nyx_string* %3580)
  %3583 = call i32 @strcmp(i8* %3581, i8* %3582)
  %3584 = icmp eq i32 %3583, 0
  br i1 %3584, label %then678, label %else679
then678:
  %3585 = load %ASTNode, %ASTNode* %2739
  %3586 = call %nyx_string* @get_string_at(%ASTNode %3585, i64 0)
  %3587 = alloca %nyx_string*
  store %nyx_string* %3586, %nyx_string** %3587
  %3588 = load %nyx_string*, %nyx_string** %3587
  %3589 = getelementptr [6 x i8], [6 x i8]* @.str476, i32 0, i32 0
  %3590 = call %nyx_string* @nyx_string_from_cstr(i8* %3589)
  %3591 = call i64 @scope_declare(%nyx_string* %3588, %nyx_string* %3590)
  %3592 = getelementptr %ASTNode, %ASTNode* %2739, i32 0, i32 1
  %3593 = load { i64, i8* }*, { i64, i8* }** %3592
  %3594 = alloca { i64, i8* }*
  store { i64, i8* }* %3593, { i64, i8* }** %3594
  %3595 = load { i64, i8* }*, { i64, i8* }** %3594
  %3596 = call i64 @nyx_array_length({ i64, i8* }* %3595)
  %3597 = icmp sgt i64 %3596, 2
  br i1 %3597, label %then681, label %else682
then681:
  %3598 = load { i64, i8* }*, { i64, i8* }** %3594
  %3599 = call i64 @nyx_array_get({ i64, i8* }* %3598, i64 2)
  %3600 = inttoptr i64 %3599 to { i64, i8* }*
  %3601 = alloca { i64, i8* }*
  store { i64, i8* }* %3600, { i64, i8* }** %3601
  %3602 = call i64 @init_known_methods()
  %3603 = alloca i64
  store i64 0, i64* %3603
  br label %while_cond684
while_cond684:
  %3604 = load i64, i64* %3603
  %3605 = load { i64, i8* }*, { i64, i8* }** %3601
  %3606 = call i64 @nyx_array_length({ i64, i8* }* %3605)
  %3607 = icmp slt i64 %3604, %3606
  br i1 %3607, label %while_body685, label %while_end686
while_body685:
  %3608 = load { i64, i8* }*, { i64, i8* }** %3601
  %3609 = load i64, i64* %3603
  %3610 = call i64 @nyx_array_get({ i64, i8* }* %3608, i64 %3609)
  %3611 = inttoptr i64 %3610 to { i64, i8* }*
  %3612 = alloca { i64, i8* }*
  store { i64, i8* }* %3611, { i64, i8* }** %3612
  %3613 = load { i64, i8* }*, { i64, i8* }** %3612
  %3614 = call i64 @nyx_array_get({ i64, i8* }* %3613, i64 0)
  %3615 = inttoptr i64 %3614 to %nyx_string*
  %3616 = alloca %nyx_string*
  store %nyx_string* %3615, %nyx_string** %3616
  %3617 = load %nyx_string*, %nyx_string** %3616
  %3618 = getelementptr [15 x i8], [15 x i8]* @.str477, i32 0, i32 0
  %3619 = call %nyx_string* @nyx_string_from_cstr(i8* %3618)
  %3620 = call i8* @nyx_string_to_cstr(%nyx_string* %3617)
  %3621 = call i8* @nyx_string_to_cstr(%nyx_string* %3619)
  %3622 = call i32 @strcmp(i8* %3620, i8* %3621)
  %3623 = icmp ne i32 %3622, 0
  br i1 %3623, label %then687, label %else688
then687:
  %3624 = load %nyx_string*, %nyx_string** %3616
  %3625 = call i1 @is_known_method(%nyx_string* %3624)
  %3626 = xor i1 %3625, true
  br i1 %3626, label %then690, label %else691
then690:
  %3627 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %3628 = load %nyx_string*, %nyx_string** %3616
  %3629 = ptrtoint %nyx_string* %3628 to i64
  call void @nyx_array_push({ i64, i8* }* %3627, i64 %3629)
  br label %merge692
else691:
  br label %merge692
merge692:
  br label %merge689
else688:
  br label %merge689
merge689:
  %3630 = load i64, i64* %3603
  %3631 = add i64 %3630, 1
  store i64 %3631, i64* %3603
  br label %while_cond684
while_end686:
  br label %merge683
else682:
  br label %merge683
merge683:
  br label %merge680
else679:
  br label %merge680
merge680:
  %3632 = load %nyx_string*, %nyx_string** %2742
  %3633 = getelementptr [11 x i8], [11 x i8]* @.str478, i32 0, i32 0
  %3634 = call %nyx_string* @nyx_string_from_cstr(i8* %3633)
  %3635 = call i8* @nyx_string_to_cstr(%nyx_string* %3632)
  %3636 = call i8* @nyx_string_to_cstr(%nyx_string* %3634)
  %3637 = call i32 @strcmp(i8* %3635, i8* %3636)
  %3638 = icmp eq i32 %3637, 0
  br i1 %3638, label %then693, label %else694
then693:
  %3639 = load %ASTNode, %ASTNode* %2739
  %3640 = call %nyx_string* @get_string_at(%ASTNode %3639, i64 0)
  %3641 = call %nyx_string* @strip_generic_args(%nyx_string* %3640)
  %3642 = alloca %nyx_string*
  store %nyx_string* %3641, %nyx_string** %3642
  %3643 = load %ASTNode, %ASTNode* %2739
  %3644 = call %nyx_string* @get_string_at(%ASTNode %3643, i64 1)
  %3645 = call %nyx_string* @strip_generic_args(%nyx_string* %3644)
  %3646 = alloca %nyx_string*
  store %nyx_string* %3645, %nyx_string** %3646
  %3647 = load %ASTNode, %ASTNode* %2739
  %3648 = call { i64, i8* }* @get_array_at(%ASTNode %3647, i64 2)
  %3649 = alloca { i64, i8* }*
  store { i64, i8* }* %3648, { i64, i8* }** %3649
  %3650 = load %nyx_string*, %nyx_string** %3646
  %3651 = load %nyx_string*, %nyx_string** %3642
  %3652 = call i1 @type_implements_trait(%nyx_string* %3650, %nyx_string* %3651)
  %3653 = xor i1 %3652, true
  br i1 %3653, label %then696, label %else697
then696:
  %3654 = load { i64, i8* }*, { i64, i8* }** @g_trait_impl_types
  %3655 = load %nyx_string*, %nyx_string** %3646
  %3656 = ptrtoint %nyx_string* %3655 to i64
  call void @nyx_array_push({ i64, i8* }* %3654, i64 %3656)
  %3657 = load { i64, i8* }*, { i64, i8* }** @g_trait_impl_traits
  %3658 = load %nyx_string*, %nyx_string** %3642
  %3659 = ptrtoint %nyx_string* %3658 to i64
  call void @nyx_array_push({ i64, i8* }* %3657, i64 %3659)
  %3660 = load i64, i64* @g_trait_impl_count
  %3661 = add i64 %3660, 1
  store i64 %3661, i64* @g_trait_impl_count
  br label %merge698
else697:
  br label %merge698
merge698:
  %3662 = alloca i64
  store i64 0, i64* %3662
  br label %while_cond699
while_cond699:
  %3663 = load i64, i64* %3662
  %3664 = load { i64, i8* }*, { i64, i8* }** %3649
  %3665 = call i64 @nyx_array_length({ i64, i8* }* %3664)
  %3666 = icmp slt i64 %3663, %3665
  br i1 %3666, label %while_body700, label %while_end701
while_body700:
  %3667 = load { i64, i8* }*, { i64, i8* }** %3649
  %3668 = load i64, i64* %3662
  %3669 = call i64 @nyx_array_get({ i64, i8* }* %3667, i64 %3668)
  %3670 = inttoptr i64 %3669 to { i64, i8* }*
  %3671 = call i64 @nyx_array_get({ i64, i8* }* %3670, i64 0)
  %3672 = call i64 @nyx_array_get({ i64, i8* }* %3670, i64 1)
  %3673 = inttoptr i64 %3671 to %nyx_string*
  %3674 = inttoptr i64 %3672 to { i64, i8* }*
  %3675 = alloca %ASTNode
  %3676 = getelementptr inbounds %ASTNode, %ASTNode* %3675, i32 0, i32 0
  store %nyx_string* %3673, %nyx_string** %3676
  %3677 = getelementptr inbounds %ASTNode, %ASTNode* %3675, i32 0, i32 1
  store { i64, i8* }* %3674, { i64, i8* }** %3677
  %3678 = load %ASTNode, %ASTNode* %3675
  %3679 = alloca %ASTNode
  store %ASTNode %3678, %ASTNode* %3679
  %3680 = load %ASTNode, %ASTNode* %3679
  %3681 = call %nyx_string* @get_string_at(%ASTNode %3680, i64 0)
  %3682 = alloca %nyx_string*
  store %nyx_string* %3681, %nyx_string** %3682
  %3683 = load %ASTNode, %ASTNode* %3679
  %3684 = call { i64, i8* }* @get_array_at(%ASTNode %3683, i64 1)
  %3685 = alloca { i64, i8* }*
  store { i64, i8* }* %3684, { i64, i8* }** %3685
  %3686 = load %nyx_string*, %nyx_string** %3646
  %3687 = getelementptr [2 x i8], [2 x i8]* @.str479, i32 0, i32 0
  %3688 = call %nyx_string* @nyx_string_from_cstr(i8* %3687)
  %3689 = call %nyx_string* @nyx_string_concat(%nyx_string* %3686, %nyx_string* %3688)
  %3690 = load %nyx_string*, %nyx_string** %3682
  %3691 = call %nyx_string* @nyx_string_concat(%nyx_string* %3689, %nyx_string* %3690)
  %3692 = alloca %nyx_string*
  store %nyx_string* %3691, %nyx_string** %3692
  %3693 = load %nyx_string*, %nyx_string** %3692
  %3694 = getelementptr [3 x i8], [3 x i8]* @.str480, i32 0, i32 0
  %3695 = call %nyx_string* @nyx_string_from_cstr(i8* %3694)
  %3696 = load { i64, i8* }*, { i64, i8* }** %3685
  %3697 = call i64 @nyx_array_length({ i64, i8* }* %3696)
  %3698 = call i64 @scope_declare_fn(%nyx_string* %3693, %nyx_string* %3695, i64 %3697)
  %3699 = alloca i1
  store i1 0, i1* %3699
  %3700 = alloca i64
  store i64 0, i64* %3700
  br label %while_cond702
while_cond702:
  %3701 = load i64, i64* %3700
  %3702 = load { i64, i8* }*, { i64, i8* }** %3685
  %3703 = call i64 @nyx_array_length({ i64, i8* }* %3702)
  %3704 = icmp slt i64 %3701, %3703
  br i1 %3704, label %while_body703, label %while_end704
while_body703:
  %3705 = load { i64, i8* }*, { i64, i8* }** %3685
  %3706 = load i64, i64* %3700
  %3707 = call i64 @nyx_array_get({ i64, i8* }* %3705, i64 %3706)
  %3708 = inttoptr i64 %3707 to { i64, i8* }*
  %3709 = alloca { i64, i8* }*
  store { i64, i8* }* %3708, { i64, i8* }** %3709
  %3710 = load { i64, i8* }*, { i64, i8* }** %3709
  %3711 = call i64 @nyx_array_length({ i64, i8* }* %3710)
  %3712 = icmp sgt i64 %3711, 2
  br i1 %3712, label %then705, label %else706
then705:
  store i1 1, i1* %3699
  br label %merge707
else706:
  br label %merge707
merge707:
  %3713 = load i64, i64* %3700
  %3714 = add i64 %3713, 1
  store i64 %3714, i64* %3700
  br label %while_cond702
while_end704:
  %3715 = load i1, i1* %3699
  %3716 = xor i1 %3715, true
  br i1 %3716, label %then708, label %else709
then708:
  %3717 = load %ASTNode, %ASTNode* %3679
  %3718 = call %nyx_string* @get_string_at(%ASTNode %3717, i64 2)
  %3719 = alloca %nyx_string*
  store %nyx_string* %3718, %nyx_string** %3719
  %3720 = call { i64, i8* }* @ty_unknown()
  %3721 = alloca { i64, i8* }*
  store { i64, i8* }* %3720, { i64, i8* }** %3721
  %3722 = load %nyx_string*, %nyx_string** %3719
  %3723 = getelementptr [1 x i8], [1 x i8]* @.str481, i32 0, i32 0
  %3724 = call %nyx_string* @nyx_string_from_cstr(i8* %3723)
  %3725 = call i8* @nyx_string_to_cstr(%nyx_string* %3722)
  %3726 = call i8* @nyx_string_to_cstr(%nyx_string* %3724)
  %3727 = call i32 @strcmp(i8* %3725, i8* %3726)
  %3728 = icmp ne i32 %3727, 0
  br i1 %3728, label %then711, label %else712
then711:
  %3729 = load %nyx_string*, %nyx_string** %3719
  %3730 = getelementptr [5 x i8], [5 x i8]* @.str482, i32 0, i32 0
  %3731 = call %nyx_string* @nyx_string_from_cstr(i8* %3730)
  %3732 = call i8* @nyx_string_to_cstr(%nyx_string* %3729)
  %3733 = call i8* @nyx_string_to_cstr(%nyx_string* %3731)
  %3734 = call i32 @strcmp(i8* %3732, i8* %3733)
  %3735 = icmp ne i32 %3734, 0
  br i1 %3735, label %then714, label %else715
then714:
  %3736 = load %nyx_string*, %nyx_string** %3719
  %3737 = call { i64, i8* }* @ty_parse(%nyx_string* %3736)
  %3738 = call { i64, i8* }* @resolve_type({ i64, i8* }* %3737)
  store { i64, i8* }* %3738, { i64, i8* }** %3721
  br label %merge716
else715:
  br label %merge716
merge716:
  br label %merge713
else712:
  br label %merge713
merge713:
  %3739 = call { i64, i8* }* @nyx_array_new_ptr()
  %3740 = alloca { i64, i8* }*
  store { i64, i8* }* %3739, { i64, i8* }** %3740
  %3741 = getelementptr %ASTNode, %ASTNode* %3679, i32 0, i32 1
  %3742 = load { i64, i8* }*, { i64, i8* }** %3741
  %3743 = alloca { i64, i8* }*
  store { i64, i8* }* %3742, { i64, i8* }** %3743
  %3744 = load { i64, i8* }*, { i64, i8* }** %3743
  %3745 = call i64 @nyx_array_length({ i64, i8* }* %3744)
  %3746 = icmp sgt i64 %3745, 4
  br i1 %3746, label %then717, label %else718
then717:
  %3747 = load { i64, i8* }*, { i64, i8* }** %3743
  %3748 = call i64 @nyx_array_get({ i64, i8* }* %3747, i64 4)
  %3749 = inttoptr i64 %3748 to { i64, i8* }*
  %3750 = alloca { i64, i8* }*
  store { i64, i8* }* %3749, { i64, i8* }** %3750
  %3751 = load { i64, i8* }*, { i64, i8* }** %3750
  %3752 = call { i64, i8* }* @extract_type_param_names({ i64, i8* }* %3751)
  store { i64, i8* }* %3752, { i64, i8* }** %3740
  br label %merge719
else718:
  br label %merge719
merge719:
  %3753 = load %nyx_string*, %nyx_string** %3646
  %3754 = load %nyx_string*, %nyx_string** %3682
  %3755 = load { i64, i8* }*, { i64, i8* }** %3685
  %3756 = call { i64, i8* }* @impl_params_to_types({ i64, i8* }* %3755)
  %3757 = load { i64, i8* }*, { i64, i8* }** %3721
  %3758 = load { i64, i8* }*, { i64, i8* }** %3740
  %3759 = call i64 @register_impl_method(%nyx_string* %3753, %nyx_string* %3754, { i64, i8* }* %3756, { i64, i8* }* %3757, { i64, i8* }* %3758)
  br label %merge710
else709:
  br label %merge710
merge710:
  %3760 = load i64, i64* %3662
  %3761 = add i64 %3760, 1
  store i64 %3761, i64* %3662
  br label %while_cond699
while_end701:
  br label %merge695
else694:
  br label %merge695
merge695:
  %3762 = load i64, i64* %2722
  %3763 = add i64 %3762, 1
  store i64 %3763, i64* %2722
  br label %while_cond489
while_end491:
  ret i64 0
}

define internal i1 @validate_block(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %3764 = load %ASTNode, %ASTNode* %node.ptr
  %3765 = call { i64, i8* }* @get_array_at(%ASTNode %3764, i64 0)
  %3766 = alloca { i64, i8* }*
  store { i64, i8* }* %3765, { i64, i8* }** %3766
  %3767 = load { i64, i8* }*, { i64, i8* }** %3766
  %3768 = call i64 @register_declarations({ i64, i8* }* %3767)
  %3769 = alloca i64
  store i64 0, i64* %3769
  br label %while_cond720
while_cond720:
  %3770 = load i64, i64* %3769
  %3771 = load { i64, i8* }*, { i64, i8* }** %3766
  %3772 = call i64 @nyx_array_length({ i64, i8* }* %3771)
  %3773 = icmp slt i64 %3770, %3772
  br i1 %3773, label %while_body721, label %while_end722
while_body721:
  %3774 = load { i64, i8* }*, { i64, i8* }** %3766
  %3775 = load i64, i64* %3769
  %3776 = call i64 @nyx_array_get({ i64, i8* }* %3774, i64 %3775)
  %3777 = inttoptr i64 %3776 to { i64, i8* }*
  %3778 = call i64 @nyx_array_get({ i64, i8* }* %3777, i64 0)
  %3779 = call i64 @nyx_array_get({ i64, i8* }* %3777, i64 1)
  %3780 = inttoptr i64 %3778 to %nyx_string*
  %3781 = inttoptr i64 %3779 to { i64, i8* }*
  %3782 = alloca %ASTNode
  %3783 = getelementptr inbounds %ASTNode, %ASTNode* %3782, i32 0, i32 0
  store %nyx_string* %3780, %nyx_string** %3783
  %3784 = getelementptr inbounds %ASTNode, %ASTNode* %3782, i32 0, i32 1
  store { i64, i8* }* %3781, { i64, i8* }** %3784
  %3785 = load %ASTNode, %ASTNode* %3782
  %3786 = alloca %ASTNode
  store %ASTNode %3785, %ASTNode* %3786
  %3787 = load %ASTNode, %ASTNode* %3786
  %3788 = call i1 @validate_node(%ASTNode %3787)
  %3789 = xor i1 %3788, true
  br i1 %3789, label %then723, label %else724
then723:
  ret i1 0
else724:
  br label %merge725
merge725:
  %3790 = load i64, i64* %3769
  %3791 = add i64 %3790, 1
  store i64 %3791, i64* %3769
  br label %while_cond720
while_end722:
  ret i1 1
}

define internal i1 @validate_identifier(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %3792 = load %ASTNode, %ASTNode* %node.ptr
  %3793 = call %nyx_string* @get_string_at(%ASTNode %3792, i64 0)
  %3794 = alloca %nyx_string*
  store %nyx_string* %3793, %nyx_string** %3794
  %3795 = load %nyx_string*, %nyx_string** %3794
  %3796 = call %nyx_string* @scope_lookup(%nyx_string* %3795)
  %3797 = alloca %nyx_string*
  store %nyx_string* %3796, %nyx_string** %3797
  %3798 = load %nyx_string*, %nyx_string** %3797
  %3799 = getelementptr [1 x i8], [1 x i8]* @.str483, i32 0, i32 0
  %3800 = call %nyx_string* @nyx_string_from_cstr(i8* %3799)
  %3801 = call i8* @nyx_string_to_cstr(%nyx_string* %3798)
  %3802 = call i8* @nyx_string_to_cstr(%nyx_string* %3800)
  %3803 = call i32 @strcmp(i8* %3801, i8* %3802)
  %3804 = icmp eq i32 %3803, 0
  br i1 %3804, label %then726, label %else727
then726:
  %3805 = call { i64, i8* }* @nyx_array_new_ptr()
  %3806 = alloca { i64, i8* }*
  store { i64, i8* }* %3805, { i64, i8* }** %3806
  %3807 = alloca i64
  store i64 0, i64* %3807
  br label %while_cond729
while_cond729:
  %3808 = load i64, i64* %3807
  %3809 = load i64, i64* @g_sym_count
  %3810 = icmp slt i64 %3808, %3809
  br i1 %3810, label %while_body730, label %while_end731
while_body730:
  %3811 = load { i64, i8* }*, { i64, i8* }** @g_sym_names
  %3812 = load i64, i64* %3807
  %3813 = call i64 @nyx_array_get({ i64, i8* }* %3811, i64 %3812)
  %3814 = inttoptr i64 %3813 to %nyx_string*
  %3815 = alloca %nyx_string*
  store %nyx_string* %3814, %nyx_string** %3815
  %3816 = load { i64, i8* }*, { i64, i8* }** %3806
  %3817 = load %nyx_string*, %nyx_string** %3815
  %3818 = ptrtoint %nyx_string* %3817 to i64
  call void @nyx_array_push({ i64, i8* }* %3816, i64 %3818)
  %3819 = load i64, i64* %3807
  %3820 = add i64 %3819, 1
  store i64 %3820, i64* %3807
  br label %while_cond729
while_end731:
  %3821 = load %nyx_string*, %nyx_string** %3794
  %3822 = load { i64, i8* }*, { i64, i8* }** %3806
  %3823 = call %nyx_string* @suggest_similar(%nyx_string* %3821, { i64, i8* }* %3822)
  %3824 = alloca %nyx_string*
  store %nyx_string* %3823, %nyx_string** %3824
  %3825 = getelementptr [2 x i8], [2 x i8]* @.str484, i32 0, i32 0
  %3826 = call %nyx_string* @nyx_string_from_cstr(i8* %3825)
  %3827 = load %nyx_string*, %nyx_string** %3794
  %3828 = call %nyx_string* @nyx_string_concat(%nyx_string* %3826, %nyx_string* %3827)
  %3829 = getelementptr [3 x i8], [3 x i8]* @.str485, i32 0, i32 0
  %3830 = call %nyx_string* @nyx_string_from_cstr(i8* %3829)
  %3831 = call %nyx_string* @nyx_string_concat(%nyx_string* %3828, %nyx_string* %3830)
  %3832 = getelementptr [13 x i8], [13 x i8]* @.str486, i32 0, i32 0
  %3833 = call %nyx_string* @nyx_string_from_cstr(i8* %3832)
  %3834 = getelementptr [13 x i8], [13 x i8]* @.str487, i32 0, i32 0
  %3835 = call %nyx_string* @nyx_string_from_cstr(i8* %3834)
  %3836 = call %nyx_string* @msg(%nyx_string* %3833, %nyx_string* %3835)
  %3837 = call %nyx_string* @nyx_string_concat(%nyx_string* %3831, %nyx_string* %3836)
  %3838 = load %nyx_string*, %nyx_string** %3824
  %3839 = call %nyx_string* @nyx_string_concat(%nyx_string* %3837, %nyx_string* %3838)
  %3840 = call i64 @sem_error(%nyx_string* %3839)
  ret i1 0
else727:
  br label %merge728
merge728:
  ret i1 1
}

define internal i1 @validate_binop(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %3841 = load %ASTNode, %ASTNode* %node.ptr
  %3842 = call %nyx_string* @get_string_at(%ASTNode %3841, i64 0)
  %3843 = alloca %nyx_string*
  store %nyx_string* %3842, %nyx_string** %3843
  %3844 = load %ASTNode, %ASTNode* %node.ptr
  %3845 = call %ASTNode @get_node_at(%ASTNode %3844, i64 1)
  %3846 = alloca %ASTNode
  store %ASTNode %3845, %ASTNode* %3846
  %3847 = load %ASTNode, %ASTNode* %node.ptr
  %3848 = call %ASTNode @get_node_at(%ASTNode %3847, i64 2)
  %3849 = alloca %ASTNode
  store %ASTNode %3848, %ASTNode* %3849
  %3850 = load %ASTNode, %ASTNode* %3846
  %3851 = call i1 @validate_node(%ASTNode %3850)
  %3852 = xor i1 %3851, true
  br i1 %3852, label %then732, label %else733
then732:
  ret i1 0
else733:
  br label %merge734
merge734:
  %3853 = load %ASTNode, %ASTNode* %3849
  %3854 = call i1 @validate_node(%ASTNode %3853)
  %3855 = xor i1 %3854, true
  br i1 %3855, label %then735, label %else736
then735:
  ret i1 0
else736:
  br label %merge737
merge737:
  %3856 = load %ASTNode, %ASTNode* %3846
  %3857 = call { i64, i8* }* @ty_of_expr(%ASTNode %3856)
  %3858 = alloca { i64, i8* }*
  store { i64, i8* }* %3857, { i64, i8* }** %3858
  %3859 = load %ASTNode, %ASTNode* %3849
  %3860 = call { i64, i8* }* @ty_of_expr(%ASTNode %3859)
  %3861 = alloca { i64, i8* }*
  store { i64, i8* }* %3860, { i64, i8* }** %3861
  %3862 = alloca i1
  store i1 true, i1* %3862
  %3863 = alloca i1
  store i1 true, i1* %3863
  %3864 = alloca i1
  store i1 true, i1* %3864
  %3865 = load %nyx_string*, %nyx_string** %3843
  %3866 = getelementptr [8 x i8], [8 x i8]* @.str488, i32 0, i32 0
  %3867 = call %nyx_string* @nyx_string_from_cstr(i8* %3866)
  %3868 = call i8* @nyx_string_to_cstr(%nyx_string* %3865)
  %3869 = call i8* @nyx_string_to_cstr(%nyx_string* %3867)
  %3870 = call i32 @strcmp(i8* %3868, i8* %3869)
  %3871 = icmp eq i32 %3870, 0
  br i1 %3871, label %sc_or_end739, label %sc_or_rhs738
sc_or_rhs738:
  %3872 = load %nyx_string*, %nyx_string** %3843
  %3873 = getelementptr [6 x i8], [6 x i8]* @.str489, i32 0, i32 0
  %3874 = call %nyx_string* @nyx_string_from_cstr(i8* %3873)
  %3875 = call i8* @nyx_string_to_cstr(%nyx_string* %3872)
  %3876 = call i8* @nyx_string_to_cstr(%nyx_string* %3874)
  %3877 = call i32 @strcmp(i8* %3875, i8* %3876)
  %3878 = icmp eq i32 %3877, 0
  store i1 %3878, i1* %3864
  br label %sc_or_end739
sc_or_end739:
  %3879 = load i1, i1* %3864
  br i1 %3879, label %sc_or_end741, label %sc_or_rhs740
sc_or_rhs740:
  %3880 = load %nyx_string*, %nyx_string** %3843
  %3881 = getelementptr [4 x i8], [4 x i8]* @.str490, i32 0, i32 0
  %3882 = call %nyx_string* @nyx_string_from_cstr(i8* %3881)
  %3883 = call i8* @nyx_string_to_cstr(%nyx_string* %3880)
  %3884 = call i8* @nyx_string_to_cstr(%nyx_string* %3882)
  %3885 = call i32 @strcmp(i8* %3883, i8* %3884)
  %3886 = icmp eq i32 %3885, 0
  store i1 %3886, i1* %3863
  br label %sc_or_end741
sc_or_end741:
  %3887 = load i1, i1* %3863
  br i1 %3887, label %sc_or_end743, label %sc_or_rhs742
sc_or_rhs742:
  %3888 = load %nyx_string*, %nyx_string** %3843
  %3889 = getelementptr [3 x i8], [3 x i8]* @.str491, i32 0, i32 0
  %3890 = call %nyx_string* @nyx_string_from_cstr(i8* %3889)
  %3891 = call i8* @nyx_string_to_cstr(%nyx_string* %3888)
  %3892 = call i8* @nyx_string_to_cstr(%nyx_string* %3890)
  %3893 = call i32 @strcmp(i8* %3891, i8* %3892)
  %3894 = icmp eq i32 %3893, 0
  store i1 %3894, i1* %3862
  br label %sc_or_end743
sc_or_end743:
  %3895 = load i1, i1* %3862
  br i1 %3895, label %then744, label %else745
then744:
  %3896 = load { i64, i8* }*, { i64, i8* }** %3858
  %3897 = call i1 @ty_is_unknown({ i64, i8* }* %3896)
  %3898 = xor i1 %3897, true
  br i1 %3898, label %then747, label %else748
then747:
  %3899 = load { i64, i8* }*, { i64, i8* }** %3858
  %3900 = call %nyx_string* @ty_kind({ i64, i8* }* %3899)
  %3901 = alloca %nyx_string*
  store %nyx_string* %3900, %nyx_string** %3901
  %3902 = load %nyx_string*, %nyx_string** %3901
  %3903 = getelementptr [7 x i8], [7 x i8]* @.str492, i32 0, i32 0
  %3904 = call %nyx_string* @nyx_string_from_cstr(i8* %3903)
  %3905 = call i8* @nyx_string_to_cstr(%nyx_string* %3902)
  %3906 = call i8* @nyx_string_to_cstr(%nyx_string* %3904)
  %3907 = call i32 @strcmp(i8* %3905, i8* %3906)
  %3908 = icmp ne i32 %3907, 0
  br i1 %3908, label %then750, label %else751
then750:
  %3909 = getelementptr [24 x i8], [24 x i8]* @.str493, i32 0, i32 0
  %3910 = call %nyx_string* @nyx_string_from_cstr(i8* %3909)
  %3911 = load %nyx_string*, %nyx_string** %3843
  %3912 = call %nyx_string* @op_symbol(%nyx_string* %3911)
  %3913 = call %nyx_string* @nyx_string_concat(%nyx_string* %3910, %nyx_string* %3912)
  %3914 = getelementptr [28 x i8], [28 x i8]* @.str494, i32 0, i32 0
  %3915 = call %nyx_string* @nyx_string_from_cstr(i8* %3914)
  %3916 = call %nyx_string* @nyx_string_concat(%nyx_string* %3913, %nyx_string* %3915)
  %3917 = load { i64, i8* }*, { i64, i8* }** %3858
  %3918 = call %nyx_string* @ty_to_str({ i64, i8* }* %3917)
  %3919 = call %nyx_string* @nyx_string_concat(%nyx_string* %3916, %nyx_string* %3918)
  %3920 = getelementptr [18 x i8], [18 x i8]* @.str495, i32 0, i32 0
  %3921 = call %nyx_string* @nyx_string_from_cstr(i8* %3920)
  %3922 = load %nyx_string*, %nyx_string** %3843
  %3923 = call %nyx_string* @op_symbol(%nyx_string* %3922)
  %3924 = call %nyx_string* @nyx_string_concat(%nyx_string* %3921, %nyx_string* %3923)
  %3925 = getelementptr [21 x i8], [21 x i8]* @.str496, i32 0, i32 0
  %3926 = call %nyx_string* @nyx_string_from_cstr(i8* %3925)
  %3927 = call %nyx_string* @nyx_string_concat(%nyx_string* %3924, %nyx_string* %3926)
  %3928 = load { i64, i8* }*, { i64, i8* }** %3858
  %3929 = call %nyx_string* @ty_to_str({ i64, i8* }* %3928)
  %3930 = call %nyx_string* @nyx_string_concat(%nyx_string* %3927, %nyx_string* %3929)
  %3931 = call %nyx_string* @msg(%nyx_string* %3919, %nyx_string* %3930)
  %3932 = call i64 @sem_error(%nyx_string* %3931)
  ret i1 0
else751:
  br label %merge752
merge752:
  br label %merge749
else748:
  br label %merge749
merge749:
  %3933 = load { i64, i8* }*, { i64, i8* }** %3861
  %3934 = call i1 @ty_is_unknown({ i64, i8* }* %3933)
  %3935 = xor i1 %3934, true
  br i1 %3935, label %then753, label %else754
then753:
  %3936 = load { i64, i8* }*, { i64, i8* }** %3861
  %3937 = call %nyx_string* @ty_kind({ i64, i8* }* %3936)
  %3938 = alloca %nyx_string*
  store %nyx_string* %3937, %nyx_string** %3938
  %3939 = load %nyx_string*, %nyx_string** %3938
  %3940 = getelementptr [7 x i8], [7 x i8]* @.str497, i32 0, i32 0
  %3941 = call %nyx_string* @nyx_string_from_cstr(i8* %3940)
  %3942 = call i8* @nyx_string_to_cstr(%nyx_string* %3939)
  %3943 = call i8* @nyx_string_to_cstr(%nyx_string* %3941)
  %3944 = call i32 @strcmp(i8* %3942, i8* %3943)
  %3945 = icmp ne i32 %3944, 0
  br i1 %3945, label %then756, label %else757
then756:
  %3946 = getelementptr [22 x i8], [22 x i8]* @.str498, i32 0, i32 0
  %3947 = call %nyx_string* @nyx_string_from_cstr(i8* %3946)
  %3948 = load %nyx_string*, %nyx_string** %3843
  %3949 = call %nyx_string* @op_symbol(%nyx_string* %3948)
  %3950 = call %nyx_string* @nyx_string_concat(%nyx_string* %3947, %nyx_string* %3949)
  %3951 = getelementptr [28 x i8], [28 x i8]* @.str499, i32 0, i32 0
  %3952 = call %nyx_string* @nyx_string_from_cstr(i8* %3951)
  %3953 = call %nyx_string* @nyx_string_concat(%nyx_string* %3950, %nyx_string* %3952)
  %3954 = load { i64, i8* }*, { i64, i8* }** %3861
  %3955 = call %nyx_string* @ty_to_str({ i64, i8* }* %3954)
  %3956 = call %nyx_string* @nyx_string_concat(%nyx_string* %3953, %nyx_string* %3955)
  %3957 = getelementptr [19 x i8], [19 x i8]* @.str500, i32 0, i32 0
  %3958 = call %nyx_string* @nyx_string_from_cstr(i8* %3957)
  %3959 = load %nyx_string*, %nyx_string** %3843
  %3960 = call %nyx_string* @op_symbol(%nyx_string* %3959)
  %3961 = call %nyx_string* @nyx_string_concat(%nyx_string* %3958, %nyx_string* %3960)
  %3962 = getelementptr [21 x i8], [21 x i8]* @.str501, i32 0, i32 0
  %3963 = call %nyx_string* @nyx_string_from_cstr(i8* %3962)
  %3964 = call %nyx_string* @nyx_string_concat(%nyx_string* %3961, %nyx_string* %3963)
  %3965 = load { i64, i8* }*, { i64, i8* }** %3861
  %3966 = call %nyx_string* @ty_to_str({ i64, i8* }* %3965)
  %3967 = call %nyx_string* @nyx_string_concat(%nyx_string* %3964, %nyx_string* %3966)
  %3968 = call %nyx_string* @msg(%nyx_string* %3956, %nyx_string* %3967)
  %3969 = call i64 @sem_error(%nyx_string* %3968)
  ret i1 0
else757:
  br label %merge758
merge758:
  br label %merge755
else754:
  br label %merge755
merge755:
  br label %merge746
else745:
  br label %merge746
merge746:
  %3970 = alloca i1
  store i1 true, i1* %3970
  %3971 = alloca i1
  store i1 true, i1* %3971
  %3972 = alloca i1
  store i1 true, i1* %3972
  %3973 = alloca i1
  store i1 true, i1* %3973
  %3974 = load %nyx_string*, %nyx_string** %3843
  %3975 = getelementptr [5 x i8], [5 x i8]* @.str502, i32 0, i32 0
  %3976 = call %nyx_string* @nyx_string_from_cstr(i8* %3975)
  %3977 = call i8* @nyx_string_to_cstr(%nyx_string* %3974)
  %3978 = call i8* @nyx_string_to_cstr(%nyx_string* %3976)
  %3979 = call i32 @strcmp(i8* %3977, i8* %3978)
  %3980 = icmp eq i32 %3979, 0
  br i1 %3980, label %sc_or_end760, label %sc_or_rhs759
sc_or_rhs759:
  %3981 = load %nyx_string*, %nyx_string** %3843
  %3982 = getelementptr [6 x i8], [6 x i8]* @.str503, i32 0, i32 0
  %3983 = call %nyx_string* @nyx_string_from_cstr(i8* %3982)
  %3984 = call i8* @nyx_string_to_cstr(%nyx_string* %3981)
  %3985 = call i8* @nyx_string_to_cstr(%nyx_string* %3983)
  %3986 = call i32 @strcmp(i8* %3984, i8* %3985)
  %3987 = icmp eq i32 %3986, 0
  store i1 %3987, i1* %3973
  br label %sc_or_end760
sc_or_end760:
  %3988 = load i1, i1* %3973
  br i1 %3988, label %sc_or_end762, label %sc_or_rhs761
sc_or_rhs761:
  %3989 = load %nyx_string*, %nyx_string** %3843
  %3990 = getelementptr [5 x i8], [5 x i8]* @.str504, i32 0, i32 0
  %3991 = call %nyx_string* @nyx_string_from_cstr(i8* %3990)
  %3992 = call i8* @nyx_string_to_cstr(%nyx_string* %3989)
  %3993 = call i8* @nyx_string_to_cstr(%nyx_string* %3991)
  %3994 = call i32 @strcmp(i8* %3992, i8* %3993)
  %3995 = icmp eq i32 %3994, 0
  store i1 %3995, i1* %3972
  br label %sc_or_end762
sc_or_end762:
  %3996 = load i1, i1* %3972
  br i1 %3996, label %sc_or_end764, label %sc_or_rhs763
sc_or_rhs763:
  %3997 = load %nyx_string*, %nyx_string** %3843
  %3998 = getelementptr [6 x i8], [6 x i8]* @.str505, i32 0, i32 0
  %3999 = call %nyx_string* @nyx_string_from_cstr(i8* %3998)
  %4000 = call i8* @nyx_string_to_cstr(%nyx_string* %3997)
  %4001 = call i8* @nyx_string_to_cstr(%nyx_string* %3999)
  %4002 = call i32 @strcmp(i8* %4000, i8* %4001)
  %4003 = icmp eq i32 %4002, 0
  store i1 %4003, i1* %3971
  br label %sc_or_end764
sc_or_end764:
  %4004 = load i1, i1* %3971
  br i1 %4004, label %sc_or_end766, label %sc_or_rhs765
sc_or_rhs765:
  %4005 = load %nyx_string*, %nyx_string** %3843
  %4006 = getelementptr [8 x i8], [8 x i8]* @.str506, i32 0, i32 0
  %4007 = call %nyx_string* @nyx_string_from_cstr(i8* %4006)
  %4008 = call i8* @nyx_string_to_cstr(%nyx_string* %4005)
  %4009 = call i8* @nyx_string_to_cstr(%nyx_string* %4007)
  %4010 = call i32 @strcmp(i8* %4008, i8* %4009)
  %4011 = icmp eq i32 %4010, 0
  store i1 %4011, i1* %3970
  br label %sc_or_end766
sc_or_end766:
  %4012 = load i1, i1* %3970
  br i1 %4012, label %then767, label %else768
then767:
  %4013 = getelementptr [1 x i8], [1 x i8]* @.str507, i32 0, i32 0
  %4014 = call %nyx_string* @nyx_string_from_cstr(i8* %4013)
  %4015 = alloca %nyx_string*
  store %nyx_string* %4014, %nyx_string** %4015
  %4016 = load %nyx_string*, %nyx_string** %3843
  %4017 = getelementptr [5 x i8], [5 x i8]* @.str508, i32 0, i32 0
  %4018 = call %nyx_string* @nyx_string_from_cstr(i8* %4017)
  %4019 = call i8* @nyx_string_to_cstr(%nyx_string* %4016)
  %4020 = call i8* @nyx_string_to_cstr(%nyx_string* %4018)
  %4021 = call i32 @strcmp(i8* %4019, i8* %4020)
  %4022 = icmp eq i32 %4021, 0
  br i1 %4022, label %then770, label %else771
then770:
  %4023 = getelementptr [4 x i8], [4 x i8]* @.str509, i32 0, i32 0
  %4024 = call %nyx_string* @nyx_string_from_cstr(i8* %4023)
  store %nyx_string* %4024, %nyx_string** %4015
  br label %merge772
else771:
  br label %merge772
merge772:
  %4025 = load %nyx_string*, %nyx_string** %3843
  %4026 = getelementptr [6 x i8], [6 x i8]* @.str510, i32 0, i32 0
  %4027 = call %nyx_string* @nyx_string_from_cstr(i8* %4026)
  %4028 = call i8* @nyx_string_to_cstr(%nyx_string* %4025)
  %4029 = call i8* @nyx_string_to_cstr(%nyx_string* %4027)
  %4030 = call i32 @strcmp(i8* %4028, i8* %4029)
  %4031 = icmp eq i32 %4030, 0
  br i1 %4031, label %then773, label %else774
then773:
  %4032 = getelementptr [4 x i8], [4 x i8]* @.str511, i32 0, i32 0
  %4033 = call %nyx_string* @nyx_string_from_cstr(i8* %4032)
  store %nyx_string* %4033, %nyx_string** %4015
  br label %merge775
else774:
  br label %merge775
merge775:
  %4034 = load %nyx_string*, %nyx_string** %3843
  %4035 = getelementptr [5 x i8], [5 x i8]* @.str512, i32 0, i32 0
  %4036 = call %nyx_string* @nyx_string_from_cstr(i8* %4035)
  %4037 = call i8* @nyx_string_to_cstr(%nyx_string* %4034)
  %4038 = call i8* @nyx_string_to_cstr(%nyx_string* %4036)
  %4039 = call i32 @strcmp(i8* %4037, i8* %4038)
  %4040 = icmp eq i32 %4039, 0
  br i1 %4040, label %then776, label %else777
then776:
  %4041 = getelementptr [4 x i8], [4 x i8]* @.str513, i32 0, i32 0
  %4042 = call %nyx_string* @nyx_string_from_cstr(i8* %4041)
  store %nyx_string* %4042, %nyx_string** %4015
  br label %merge778
else777:
  br label %merge778
merge778:
  %4043 = load %nyx_string*, %nyx_string** %3843
  %4044 = getelementptr [6 x i8], [6 x i8]* @.str514, i32 0, i32 0
  %4045 = call %nyx_string* @nyx_string_from_cstr(i8* %4044)
  %4046 = call i8* @nyx_string_to_cstr(%nyx_string* %4043)
  %4047 = call i8* @nyx_string_to_cstr(%nyx_string* %4045)
  %4048 = call i32 @strcmp(i8* %4046, i8* %4047)
  %4049 = icmp eq i32 %4048, 0
  br i1 %4049, label %then779, label %else780
then779:
  %4050 = getelementptr [4 x i8], [4 x i8]* @.str515, i32 0, i32 0
  %4051 = call %nyx_string* @nyx_string_from_cstr(i8* %4050)
  store %nyx_string* %4051, %nyx_string** %4015
  br label %merge781
else780:
  br label %merge781
merge781:
  %4052 = load %nyx_string*, %nyx_string** %3843
  %4053 = getelementptr [8 x i8], [8 x i8]* @.str516, i32 0, i32 0
  %4054 = call %nyx_string* @nyx_string_from_cstr(i8* %4053)
  %4055 = call i8* @nyx_string_to_cstr(%nyx_string* %4052)
  %4056 = call i8* @nyx_string_to_cstr(%nyx_string* %4054)
  %4057 = call i32 @strcmp(i8* %4055, i8* %4056)
  %4058 = icmp eq i32 %4057, 0
  br i1 %4058, label %then782, label %else783
then782:
  %4059 = getelementptr [4 x i8], [4 x i8]* @.str517, i32 0, i32 0
  %4060 = call %nyx_string* @nyx_string_from_cstr(i8* %4059)
  store %nyx_string* %4060, %nyx_string** %4015
  br label %merge784
else783:
  br label %merge784
merge784:
  %4061 = load { i64, i8* }*, { i64, i8* }** %3858
  %4062 = call i1 @ty_is_unknown({ i64, i8* }* %4061)
  %4063 = xor i1 %4062, true
  br i1 %4063, label %then785, label %else786
then785:
  %4064 = load { i64, i8* }*, { i64, i8* }** %3858
  %4065 = call %nyx_string* @ty_kind({ i64, i8* }* %4064)
  %4066 = alloca %nyx_string*
  store %nyx_string* %4065, %nyx_string** %4066
  %4067 = alloca i1
  store i1 true, i1* %4067
  %4068 = load %nyx_string*, %nyx_string** %4066
  %4069 = getelementptr [9 x i8], [9 x i8]* @.str518, i32 0, i32 0
  %4070 = call %nyx_string* @nyx_string_from_cstr(i8* %4069)
  %4071 = call i8* @nyx_string_to_cstr(%nyx_string* %4068)
  %4072 = call i8* @nyx_string_to_cstr(%nyx_string* %4070)
  %4073 = call i32 @strcmp(i8* %4071, i8* %4072)
  %4074 = icmp eq i32 %4073, 0
  br i1 %4074, label %sc_or_end789, label %sc_or_rhs788
sc_or_rhs788:
  %4075 = load %nyx_string*, %nyx_string** %4066
  %4076 = getelementptr [7 x i8], [7 x i8]* @.str519, i32 0, i32 0
  %4077 = call %nyx_string* @nyx_string_from_cstr(i8* %4076)
  %4078 = call i8* @nyx_string_to_cstr(%nyx_string* %4075)
  %4079 = call i8* @nyx_string_to_cstr(%nyx_string* %4077)
  %4080 = call i32 @strcmp(i8* %4078, i8* %4079)
  %4081 = icmp eq i32 %4080, 0
  store i1 %4081, i1* %4067
  br label %sc_or_end789
sc_or_end789:
  %4082 = load i1, i1* %4067
  br i1 %4082, label %then790, label %else791
then790:
  %4083 = load { i64, i8* }*, { i64, i8* }** %3858
  %4084 = call i64 @nyx_array_get({ i64, i8* }* %4083, i64 1)
  %4085 = inttoptr i64 %4084 to %nyx_string*
  %4086 = alloca %nyx_string*
  store %nyx_string* %4085, %nyx_string** %4086
  %4087 = load %nyx_string*, %nyx_string** %4086
  %4088 = load %nyx_string*, %nyx_string** %4015
  %4089 = call i1 @type_implements_trait(%nyx_string* %4087, %nyx_string* %4088)
  %4090 = xor i1 %4089, true
  br i1 %4090, label %then793, label %else794
then793:
  %4091 = load %nyx_string*, %nyx_string** %4086
  %4092 = call i1 @type_has_any_local_impl(%nyx_string* %4091)
  br i1 %4092, label %then796, label %else797
then796:
  %4093 = getelementptr [27 x i8], [27 x i8]* @.str520, i32 0, i32 0
  %4094 = call %nyx_string* @nyx_string_from_cstr(i8* %4093)
  %4095 = load %nyx_string*, %nyx_string** %3843
  %4096 = call %nyx_string* @op_symbol(%nyx_string* %4095)
  %4097 = call %nyx_string* @nyx_string_concat(%nyx_string* %4094, %nyx_string* %4096)
  %4098 = getelementptr [21 x i8], [21 x i8]* @.str521, i32 0, i32 0
  %4099 = call %nyx_string* @nyx_string_from_cstr(i8* %4098)
  %4100 = call %nyx_string* @nyx_string_concat(%nyx_string* %4097, %nyx_string* %4099)
  %4101 = load %nyx_string*, %nyx_string** %4015
  %4102 = call %nyx_string* @nyx_string_concat(%nyx_string* %4100, %nyx_string* %4101)
  %4103 = getelementptr [10 x i8], [10 x i8]* @.str522, i32 0, i32 0
  %4104 = call %nyx_string* @nyx_string_from_cstr(i8* %4103)
  %4105 = call %nyx_string* @nyx_string_concat(%nyx_string* %4102, %nyx_string* %4104)
  %4106 = load %nyx_string*, %nyx_string** %4086
  %4107 = call %nyx_string* @nyx_string_concat(%nyx_string* %4105, %nyx_string* %4106)
  %4108 = getelementptr [13 x i8], [13 x i8]* @.str523, i32 0, i32 0
  %4109 = call %nyx_string* @nyx_string_from_cstr(i8* %4108)
  %4110 = call %nyx_string* @nyx_string_concat(%nyx_string* %4107, %nyx_string* %4109)
  %4111 = getelementptr [18 x i8], [18 x i8]* @.str524, i32 0, i32 0
  %4112 = call %nyx_string* @nyx_string_from_cstr(i8* %4111)
  %4113 = load %nyx_string*, %nyx_string** %3843
  %4114 = call %nyx_string* @op_symbol(%nyx_string* %4113)
  %4115 = call %nyx_string* @nyx_string_concat(%nyx_string* %4112, %nyx_string* %4114)
  %4116 = getelementptr [19 x i8], [19 x i8]* @.str525, i32 0, i32 0
  %4117 = call %nyx_string* @nyx_string_from_cstr(i8* %4116)
  %4118 = call %nyx_string* @nyx_string_concat(%nyx_string* %4115, %nyx_string* %4117)
  %4119 = load %nyx_string*, %nyx_string** %4015
  %4120 = call %nyx_string* @nyx_string_concat(%nyx_string* %4118, %nyx_string* %4119)
  %4121 = getelementptr [9 x i8], [9 x i8]* @.str526, i32 0, i32 0
  %4122 = call %nyx_string* @nyx_string_from_cstr(i8* %4121)
  %4123 = call %nyx_string* @nyx_string_concat(%nyx_string* %4120, %nyx_string* %4122)
  %4124 = load %nyx_string*, %nyx_string** %4086
  %4125 = call %nyx_string* @nyx_string_concat(%nyx_string* %4123, %nyx_string* %4124)
  %4126 = getelementptr [11 x i8], [11 x i8]* @.str527, i32 0, i32 0
  %4127 = call %nyx_string* @nyx_string_from_cstr(i8* %4126)
  %4128 = call %nyx_string* @nyx_string_concat(%nyx_string* %4125, %nyx_string* %4127)
  %4129 = call %nyx_string* @msg(%nyx_string* %4110, %nyx_string* %4128)
  %4130 = call i64 @sem_error(%nyx_string* %4129)
  ret i1 0
else797:
  br label %merge798
merge798:
  br label %merge795
else794:
  br label %merge795
merge795:
  br label %merge792
else791:
  br label %merge792
merge792:
  br label %merge787
else786:
  br label %merge787
merge787:
  %4131 = load { i64, i8* }*, { i64, i8* }** %3861
  %4132 = call i1 @ty_is_unknown({ i64, i8* }* %4131)
  %4133 = xor i1 %4132, true
  br i1 %4133, label %then799, label %else800
then799:
  %4134 = load { i64, i8* }*, { i64, i8* }** %3861
  %4135 = call %nyx_string* @ty_kind({ i64, i8* }* %4134)
  %4136 = alloca %nyx_string*
  store %nyx_string* %4135, %nyx_string** %4136
  %4137 = alloca i1
  store i1 true, i1* %4137
  %4138 = load %nyx_string*, %nyx_string** %4136
  %4139 = getelementptr [9 x i8], [9 x i8]* @.str528, i32 0, i32 0
  %4140 = call %nyx_string* @nyx_string_from_cstr(i8* %4139)
  %4141 = call i8* @nyx_string_to_cstr(%nyx_string* %4138)
  %4142 = call i8* @nyx_string_to_cstr(%nyx_string* %4140)
  %4143 = call i32 @strcmp(i8* %4141, i8* %4142)
  %4144 = icmp eq i32 %4143, 0
  br i1 %4144, label %sc_or_end803, label %sc_or_rhs802
sc_or_rhs802:
  %4145 = load %nyx_string*, %nyx_string** %4136
  %4146 = getelementptr [7 x i8], [7 x i8]* @.str529, i32 0, i32 0
  %4147 = call %nyx_string* @nyx_string_from_cstr(i8* %4146)
  %4148 = call i8* @nyx_string_to_cstr(%nyx_string* %4145)
  %4149 = call i8* @nyx_string_to_cstr(%nyx_string* %4147)
  %4150 = call i32 @strcmp(i8* %4148, i8* %4149)
  %4151 = icmp eq i32 %4150, 0
  store i1 %4151, i1* %4137
  br label %sc_or_end803
sc_or_end803:
  %4152 = load i1, i1* %4137
  br i1 %4152, label %then804, label %else805
then804:
  %4153 = load { i64, i8* }*, { i64, i8* }** %3861
  %4154 = call i64 @nyx_array_get({ i64, i8* }* %4153, i64 1)
  %4155 = inttoptr i64 %4154 to %nyx_string*
  %4156 = alloca %nyx_string*
  store %nyx_string* %4155, %nyx_string** %4156
  %4157 = load %nyx_string*, %nyx_string** %4156
  %4158 = load %nyx_string*, %nyx_string** %4015
  %4159 = call i1 @type_implements_trait(%nyx_string* %4157, %nyx_string* %4158)
  %4160 = xor i1 %4159, true
  br i1 %4160, label %then807, label %else808
then807:
  %4161 = load %nyx_string*, %nyx_string** %4156
  %4162 = call i1 @type_has_any_local_impl(%nyx_string* %4161)
  br i1 %4162, label %then810, label %else811
then810:
  %4163 = getelementptr [25 x i8], [25 x i8]* @.str530, i32 0, i32 0
  %4164 = call %nyx_string* @nyx_string_from_cstr(i8* %4163)
  %4165 = load %nyx_string*, %nyx_string** %3843
  %4166 = call %nyx_string* @op_symbol(%nyx_string* %4165)
  %4167 = call %nyx_string* @nyx_string_concat(%nyx_string* %4164, %nyx_string* %4166)
  %4168 = getelementptr [21 x i8], [21 x i8]* @.str531, i32 0, i32 0
  %4169 = call %nyx_string* @nyx_string_from_cstr(i8* %4168)
  %4170 = call %nyx_string* @nyx_string_concat(%nyx_string* %4167, %nyx_string* %4169)
  %4171 = load %nyx_string*, %nyx_string** %4015
  %4172 = call %nyx_string* @nyx_string_concat(%nyx_string* %4170, %nyx_string* %4171)
  %4173 = getelementptr [10 x i8], [10 x i8]* @.str532, i32 0, i32 0
  %4174 = call %nyx_string* @nyx_string_from_cstr(i8* %4173)
  %4175 = call %nyx_string* @nyx_string_concat(%nyx_string* %4172, %nyx_string* %4174)
  %4176 = load %nyx_string*, %nyx_string** %4156
  %4177 = call %nyx_string* @nyx_string_concat(%nyx_string* %4175, %nyx_string* %4176)
  %4178 = getelementptr [13 x i8], [13 x i8]* @.str533, i32 0, i32 0
  %4179 = call %nyx_string* @nyx_string_from_cstr(i8* %4178)
  %4180 = call %nyx_string* @nyx_string_concat(%nyx_string* %4177, %nyx_string* %4179)
  %4181 = getelementptr [19 x i8], [19 x i8]* @.str534, i32 0, i32 0
  %4182 = call %nyx_string* @nyx_string_from_cstr(i8* %4181)
  %4183 = load %nyx_string*, %nyx_string** %3843
  %4184 = call %nyx_string* @op_symbol(%nyx_string* %4183)
  %4185 = call %nyx_string* @nyx_string_concat(%nyx_string* %4182, %nyx_string* %4184)
  %4186 = getelementptr [19 x i8], [19 x i8]* @.str535, i32 0, i32 0
  %4187 = call %nyx_string* @nyx_string_from_cstr(i8* %4186)
  %4188 = call %nyx_string* @nyx_string_concat(%nyx_string* %4185, %nyx_string* %4187)
  %4189 = load %nyx_string*, %nyx_string** %4015
  %4190 = call %nyx_string* @nyx_string_concat(%nyx_string* %4188, %nyx_string* %4189)
  %4191 = getelementptr [9 x i8], [9 x i8]* @.str536, i32 0, i32 0
  %4192 = call %nyx_string* @nyx_string_from_cstr(i8* %4191)
  %4193 = call %nyx_string* @nyx_string_concat(%nyx_string* %4190, %nyx_string* %4192)
  %4194 = load %nyx_string*, %nyx_string** %4156
  %4195 = call %nyx_string* @nyx_string_concat(%nyx_string* %4193, %nyx_string* %4194)
  %4196 = getelementptr [11 x i8], [11 x i8]* @.str537, i32 0, i32 0
  %4197 = call %nyx_string* @nyx_string_from_cstr(i8* %4196)
  %4198 = call %nyx_string* @nyx_string_concat(%nyx_string* %4195, %nyx_string* %4197)
  %4199 = call %nyx_string* @msg(%nyx_string* %4180, %nyx_string* %4198)
  %4200 = call i64 @sem_error(%nyx_string* %4199)
  ret i1 0
else811:
  br label %merge812
merge812:
  br label %merge809
else808:
  br label %merge809
merge809:
  br label %merge806
else805:
  br label %merge806
merge806:
  br label %merge801
else800:
  br label %merge801
merge801:
  br label %merge769
else768:
  br label %merge769
merge769:
  %4201 = alloca i1
  store i1 true, i1* %4201
  %4202 = alloca i1
  store i1 true, i1* %4202
  %4203 = alloca i1
  store i1 true, i1* %4203
  %4204 = alloca i1
  store i1 true, i1* %4204
  %4205 = load %nyx_string*, %nyx_string** %3843
  %4206 = getelementptr [5 x i8], [5 x i8]* @.str538, i32 0, i32 0
  %4207 = call %nyx_string* @nyx_string_from_cstr(i8* %4206)
  %4208 = call i8* @nyx_string_to_cstr(%nyx_string* %4205)
  %4209 = call i8* @nyx_string_to_cstr(%nyx_string* %4207)
  %4210 = call i32 @strcmp(i8* %4208, i8* %4209)
  %4211 = icmp eq i32 %4210, 0
  br i1 %4211, label %sc_or_end814, label %sc_or_rhs813
sc_or_rhs813:
  %4212 = load %nyx_string*, %nyx_string** %3843
  %4213 = getelementptr [4 x i8], [4 x i8]* @.str539, i32 0, i32 0
  %4214 = call %nyx_string* @nyx_string_from_cstr(i8* %4213)
  %4215 = call i8* @nyx_string_to_cstr(%nyx_string* %4212)
  %4216 = call i8* @nyx_string_to_cstr(%nyx_string* %4214)
  %4217 = call i32 @strcmp(i8* %4215, i8* %4216)
  %4218 = icmp eq i32 %4217, 0
  store i1 %4218, i1* %4204
  br label %sc_or_end814
sc_or_end814:
  %4219 = load i1, i1* %4204
  br i1 %4219, label %sc_or_end816, label %sc_or_rhs815
sc_or_rhs815:
  %4220 = load %nyx_string*, %nyx_string** %3843
  %4221 = getelementptr [6 x i8], [6 x i8]* @.str540, i32 0, i32 0
  %4222 = call %nyx_string* @nyx_string_from_cstr(i8* %4221)
  %4223 = call i8* @nyx_string_to_cstr(%nyx_string* %4220)
  %4224 = call i8* @nyx_string_to_cstr(%nyx_string* %4222)
  %4225 = call i32 @strcmp(i8* %4223, i8* %4224)
  %4226 = icmp eq i32 %4225, 0
  store i1 %4226, i1* %4203
  br label %sc_or_end816
sc_or_end816:
  %4227 = load i1, i1* %4203
  br i1 %4227, label %sc_or_end818, label %sc_or_rhs817
sc_or_rhs817:
  %4228 = load %nyx_string*, %nyx_string** %3843
  %4229 = getelementptr [11 x i8], [11 x i8]* @.str541, i32 0, i32 0
  %4230 = call %nyx_string* @nyx_string_from_cstr(i8* %4229)
  %4231 = call i8* @nyx_string_to_cstr(%nyx_string* %4228)
  %4232 = call i8* @nyx_string_to_cstr(%nyx_string* %4230)
  %4233 = call i32 @strcmp(i8* %4231, i8* %4232)
  %4234 = icmp eq i32 %4233, 0
  store i1 %4234, i1* %4202
  br label %sc_or_end818
sc_or_end818:
  %4235 = load i1, i1* %4202
  br i1 %4235, label %sc_or_end820, label %sc_or_rhs819
sc_or_rhs819:
  %4236 = load %nyx_string*, %nyx_string** %3843
  %4237 = getelementptr [12 x i8], [12 x i8]* @.str542, i32 0, i32 0
  %4238 = call %nyx_string* @nyx_string_from_cstr(i8* %4237)
  %4239 = call i8* @nyx_string_to_cstr(%nyx_string* %4236)
  %4240 = call i8* @nyx_string_to_cstr(%nyx_string* %4238)
  %4241 = call i32 @strcmp(i8* %4239, i8* %4240)
  %4242 = icmp eq i32 %4241, 0
  store i1 %4242, i1* %4201
  br label %sc_or_end820
sc_or_end820:
  %4243 = load i1, i1* %4201
  br i1 %4243, label %then821, label %else822
then821:
  %4244 = load { i64, i8* }*, { i64, i8* }** %3858
  %4245 = call i1 @ty_is_unknown({ i64, i8* }* %4244)
  %4246 = xor i1 %4245, true
  br i1 %4246, label %then824, label %else825
then824:
  %4247 = load { i64, i8* }*, { i64, i8* }** %3858
  %4248 = call i1 @is_integer_like({ i64, i8* }* %4247)
  %4249 = xor i1 %4248, true
  br i1 %4249, label %then827, label %else828
then827:
  %4250 = getelementptr [24 x i8], [24 x i8]* @.str543, i32 0, i32 0
  %4251 = call %nyx_string* @nyx_string_from_cstr(i8* %4250)
  %4252 = load %nyx_string*, %nyx_string** %3843
  %4253 = call %nyx_string* @op_symbol(%nyx_string* %4252)
  %4254 = call %nyx_string* @nyx_string_concat(%nyx_string* %4251, %nyx_string* %4253)
  %4255 = getelementptr [30 x i8], [30 x i8]* @.str544, i32 0, i32 0
  %4256 = call %nyx_string* @nyx_string_from_cstr(i8* %4255)
  %4257 = call %nyx_string* @nyx_string_concat(%nyx_string* %4254, %nyx_string* %4256)
  %4258 = load { i64, i8* }*, { i64, i8* }** %3858
  %4259 = call %nyx_string* @ty_to_str({ i64, i8* }* %4258)
  %4260 = call %nyx_string* @nyx_string_concat(%nyx_string* %4257, %nyx_string* %4259)
  %4261 = getelementptr [18 x i8], [18 x i8]* @.str545, i32 0, i32 0
  %4262 = call %nyx_string* @nyx_string_from_cstr(i8* %4261)
  %4263 = load %nyx_string*, %nyx_string** %3843
  %4264 = call %nyx_string* @op_symbol(%nyx_string* %4263)
  %4265 = call %nyx_string* @nyx_string_concat(%nyx_string* %4262, %nyx_string* %4264)
  %4266 = getelementptr [27 x i8], [27 x i8]* @.str546, i32 0, i32 0
  %4267 = call %nyx_string* @nyx_string_from_cstr(i8* %4266)
  %4268 = call %nyx_string* @nyx_string_concat(%nyx_string* %4265, %nyx_string* %4267)
  %4269 = load { i64, i8* }*, { i64, i8* }** %3858
  %4270 = call %nyx_string* @ty_to_str({ i64, i8* }* %4269)
  %4271 = call %nyx_string* @nyx_string_concat(%nyx_string* %4268, %nyx_string* %4270)
  %4272 = call %nyx_string* @msg(%nyx_string* %4260, %nyx_string* %4271)
  %4273 = call i64 @sem_error(%nyx_string* %4272)
  ret i1 0
else828:
  br label %merge829
merge829:
  br label %merge826
else825:
  br label %merge826
merge826:
  %4274 = load { i64, i8* }*, { i64, i8* }** %3861
  %4275 = call i1 @ty_is_unknown({ i64, i8* }* %4274)
  %4276 = xor i1 %4275, true
  br i1 %4276, label %then830, label %else831
then830:
  %4277 = load { i64, i8* }*, { i64, i8* }** %3861
  %4278 = call i1 @is_integer_like({ i64, i8* }* %4277)
  %4279 = xor i1 %4278, true
  br i1 %4279, label %then833, label %else834
then833:
  %4280 = getelementptr [22 x i8], [22 x i8]* @.str547, i32 0, i32 0
  %4281 = call %nyx_string* @nyx_string_from_cstr(i8* %4280)
  %4282 = load %nyx_string*, %nyx_string** %3843
  %4283 = call %nyx_string* @op_symbol(%nyx_string* %4282)
  %4284 = call %nyx_string* @nyx_string_concat(%nyx_string* %4281, %nyx_string* %4283)
  %4285 = getelementptr [30 x i8], [30 x i8]* @.str548, i32 0, i32 0
  %4286 = call %nyx_string* @nyx_string_from_cstr(i8* %4285)
  %4287 = call %nyx_string* @nyx_string_concat(%nyx_string* %4284, %nyx_string* %4286)
  %4288 = load { i64, i8* }*, { i64, i8* }** %3861
  %4289 = call %nyx_string* @ty_to_str({ i64, i8* }* %4288)
  %4290 = call %nyx_string* @nyx_string_concat(%nyx_string* %4287, %nyx_string* %4289)
  %4291 = getelementptr [19 x i8], [19 x i8]* @.str549, i32 0, i32 0
  %4292 = call %nyx_string* @nyx_string_from_cstr(i8* %4291)
  %4293 = load %nyx_string*, %nyx_string** %3843
  %4294 = call %nyx_string* @op_symbol(%nyx_string* %4293)
  %4295 = call %nyx_string* @nyx_string_concat(%nyx_string* %4292, %nyx_string* %4294)
  %4296 = getelementptr [27 x i8], [27 x i8]* @.str550, i32 0, i32 0
  %4297 = call %nyx_string* @nyx_string_from_cstr(i8* %4296)
  %4298 = call %nyx_string* @nyx_string_concat(%nyx_string* %4295, %nyx_string* %4297)
  %4299 = load { i64, i8* }*, { i64, i8* }** %3861
  %4300 = call %nyx_string* @ty_to_str({ i64, i8* }* %4299)
  %4301 = call %nyx_string* @nyx_string_concat(%nyx_string* %4298, %nyx_string* %4300)
  %4302 = call %nyx_string* @msg(%nyx_string* %4290, %nyx_string* %4301)
  %4303 = call i64 @sem_error(%nyx_string* %4302)
  ret i1 0
else834:
  br label %merge835
merge835:
  br label %merge832
else831:
  br label %merge832
merge832:
  br label %merge823
else822:
  br label %merge823
merge823:
  ret i1 1
}

define internal %nyx_string* @op_symbol(
%nyx_string* %op.param) {
  %op.ptr = alloca %nyx_string*
  store %nyx_string* %op.param, %nyx_string** %op.ptr
  %4304 = load %nyx_string*, %nyx_string** %op.ptr
  %4305 = getelementptr [8 x i8], [8 x i8]* @.str551, i32 0, i32 0
  %4306 = call %nyx_string* @nyx_string_from_cstr(i8* %4305)
  %4307 = call i8* @nyx_string_to_cstr(%nyx_string* %4304)
  %4308 = call i8* @nyx_string_to_cstr(%nyx_string* %4306)
  %4309 = call i32 @strcmp(i8* %4307, i8* %4308)
  %4310 = icmp eq i32 %4309, 0
  br i1 %4310, label %then836, label %else837
then836:
  %4311 = getelementptr [3 x i8], [3 x i8]* @.str552, i32 0, i32 0
  %4312 = call %nyx_string* @nyx_string_from_cstr(i8* %4311)
  ret %nyx_string* %4312
else837:
  br label %merge838
merge838:
  %4313 = load %nyx_string*, %nyx_string** %op.ptr
  %4314 = getelementptr [6 x i8], [6 x i8]* @.str553, i32 0, i32 0
  %4315 = call %nyx_string* @nyx_string_from_cstr(i8* %4314)
  %4316 = call i8* @nyx_string_to_cstr(%nyx_string* %4313)
  %4317 = call i8* @nyx_string_to_cstr(%nyx_string* %4315)
  %4318 = call i32 @strcmp(i8* %4316, i8* %4317)
  %4319 = icmp eq i32 %4318, 0
  br i1 %4319, label %then839, label %else840
then839:
  %4320 = getelementptr [3 x i8], [3 x i8]* @.str554, i32 0, i32 0
  %4321 = call %nyx_string* @nyx_string_from_cstr(i8* %4320)
  ret %nyx_string* %4321
else840:
  br label %merge841
merge841:
  %4322 = load %nyx_string*, %nyx_string** %op.ptr
  %4323 = getelementptr [4 x i8], [4 x i8]* @.str555, i32 0, i32 0
  %4324 = call %nyx_string* @nyx_string_from_cstr(i8* %4323)
  %4325 = call i8* @nyx_string_to_cstr(%nyx_string* %4322)
  %4326 = call i8* @nyx_string_to_cstr(%nyx_string* %4324)
  %4327 = call i32 @strcmp(i8* %4325, i8* %4326)
  %4328 = icmp eq i32 %4327, 0
  br i1 %4328, label %then842, label %else843
then842:
  %4329 = getelementptr [4 x i8], [4 x i8]* @.str556, i32 0, i32 0
  %4330 = call %nyx_string* @nyx_string_from_cstr(i8* %4329)
  ret %nyx_string* %4330
else843:
  br label %merge844
merge844:
  %4331 = load %nyx_string*, %nyx_string** %op.ptr
  %4332 = getelementptr [3 x i8], [3 x i8]* @.str557, i32 0, i32 0
  %4333 = call %nyx_string* @nyx_string_from_cstr(i8* %4332)
  %4334 = call i8* @nyx_string_to_cstr(%nyx_string* %4331)
  %4335 = call i8* @nyx_string_to_cstr(%nyx_string* %4333)
  %4336 = call i32 @strcmp(i8* %4334, i8* %4335)
  %4337 = icmp eq i32 %4336, 0
  br i1 %4337, label %then845, label %else846
then845:
  %4338 = getelementptr [3 x i8], [3 x i8]* @.str558, i32 0, i32 0
  %4339 = call %nyx_string* @nyx_string_from_cstr(i8* %4338)
  ret %nyx_string* %4339
else846:
  br label %merge847
merge847:
  %4340 = load %nyx_string*, %nyx_string** %op.ptr
  %4341 = getelementptr [5 x i8], [5 x i8]* @.str559, i32 0, i32 0
  %4342 = call %nyx_string* @nyx_string_from_cstr(i8* %4341)
  %4343 = call i8* @nyx_string_to_cstr(%nyx_string* %4340)
  %4344 = call i8* @nyx_string_to_cstr(%nyx_string* %4342)
  %4345 = call i32 @strcmp(i8* %4343, i8* %4344)
  %4346 = icmp eq i32 %4345, 0
  br i1 %4346, label %then848, label %else849
then848:
  %4347 = getelementptr [2 x i8], [2 x i8]* @.str560, i32 0, i32 0
  %4348 = call %nyx_string* @nyx_string_from_cstr(i8* %4347)
  ret %nyx_string* %4348
else849:
  br label %merge850
merge850:
  %4349 = load %nyx_string*, %nyx_string** %op.ptr
  %4350 = getelementptr [4 x i8], [4 x i8]* @.str561, i32 0, i32 0
  %4351 = call %nyx_string* @nyx_string_from_cstr(i8* %4350)
  %4352 = call i8* @nyx_string_to_cstr(%nyx_string* %4349)
  %4353 = call i8* @nyx_string_to_cstr(%nyx_string* %4351)
  %4354 = call i32 @strcmp(i8* %4352, i8* %4353)
  %4355 = icmp eq i32 %4354, 0
  br i1 %4355, label %then851, label %else852
then851:
  %4356 = getelementptr [2 x i8], [2 x i8]* @.str562, i32 0, i32 0
  %4357 = call %nyx_string* @nyx_string_from_cstr(i8* %4356)
  ret %nyx_string* %4357
else852:
  br label %merge853
merge853:
  %4358 = load %nyx_string*, %nyx_string** %op.ptr
  %4359 = getelementptr [6 x i8], [6 x i8]* @.str563, i32 0, i32 0
  %4360 = call %nyx_string* @nyx_string_from_cstr(i8* %4359)
  %4361 = call i8* @nyx_string_to_cstr(%nyx_string* %4358)
  %4362 = call i8* @nyx_string_to_cstr(%nyx_string* %4360)
  %4363 = call i32 @strcmp(i8* %4361, i8* %4362)
  %4364 = icmp eq i32 %4363, 0
  br i1 %4364, label %then854, label %else855
then854:
  %4365 = getelementptr [2 x i8], [2 x i8]* @.str564, i32 0, i32 0
  %4366 = call %nyx_string* @nyx_string_from_cstr(i8* %4365)
  ret %nyx_string* %4366
else855:
  br label %merge856
merge856:
  %4367 = load %nyx_string*, %nyx_string** %op.ptr
  %4368 = getelementptr [11 x i8], [11 x i8]* @.str565, i32 0, i32 0
  %4369 = call %nyx_string* @nyx_string_from_cstr(i8* %4368)
  %4370 = call i8* @nyx_string_to_cstr(%nyx_string* %4367)
  %4371 = call i8* @nyx_string_to_cstr(%nyx_string* %4369)
  %4372 = call i32 @strcmp(i8* %4370, i8* %4371)
  %4373 = icmp eq i32 %4372, 0
  br i1 %4373, label %then857, label %else858
then857:
  %4374 = getelementptr [3 x i8], [3 x i8]* @.str566, i32 0, i32 0
  %4375 = call %nyx_string* @nyx_string_from_cstr(i8* %4374)
  ret %nyx_string* %4375
else858:
  br label %merge859
merge859:
  %4376 = load %nyx_string*, %nyx_string** %op.ptr
  %4377 = getelementptr [12 x i8], [12 x i8]* @.str567, i32 0, i32 0
  %4378 = call %nyx_string* @nyx_string_from_cstr(i8* %4377)
  %4379 = call i8* @nyx_string_to_cstr(%nyx_string* %4376)
  %4380 = call i8* @nyx_string_to_cstr(%nyx_string* %4378)
  %4381 = call i32 @strcmp(i8* %4379, i8* %4380)
  %4382 = icmp eq i32 %4381, 0
  br i1 %4382, label %then860, label %else861
then860:
  %4383 = getelementptr [3 x i8], [3 x i8]* @.str568, i32 0, i32 0
  %4384 = call %nyx_string* @nyx_string_from_cstr(i8* %4383)
  ret %nyx_string* %4384
else861:
  br label %merge862
merge862:
  %4385 = load %nyx_string*, %nyx_string** %op.ptr
  %4386 = getelementptr [4 x i8], [4 x i8]* @.str569, i32 0, i32 0
  %4387 = call %nyx_string* @nyx_string_from_cstr(i8* %4386)
  %4388 = call i8* @nyx_string_to_cstr(%nyx_string* %4385)
  %4389 = call i8* @nyx_string_to_cstr(%nyx_string* %4387)
  %4390 = call i32 @strcmp(i8* %4388, i8* %4389)
  %4391 = icmp eq i32 %4390, 0
  br i1 %4391, label %then863, label %else864
then863:
  %4392 = getelementptr [2 x i8], [2 x i8]* @.str570, i32 0, i32 0
  %4393 = call %nyx_string* @nyx_string_from_cstr(i8* %4392)
  ret %nyx_string* %4393
else864:
  br label %merge865
merge865:
  %4394 = load %nyx_string*, %nyx_string** %op.ptr
  %4395 = getelementptr [6 x i8], [6 x i8]* @.str571, i32 0, i32 0
  %4396 = call %nyx_string* @nyx_string_from_cstr(i8* %4395)
  %4397 = call i8* @nyx_string_to_cstr(%nyx_string* %4394)
  %4398 = call i8* @nyx_string_to_cstr(%nyx_string* %4396)
  %4399 = call i32 @strcmp(i8* %4397, i8* %4398)
  %4400 = icmp eq i32 %4399, 0
  br i1 %4400, label %then866, label %else867
then866:
  %4401 = getelementptr [2 x i8], [2 x i8]* @.str572, i32 0, i32 0
  %4402 = call %nyx_string* @nyx_string_from_cstr(i8* %4401)
  ret %nyx_string* %4402
else867:
  br label %merge868
merge868:
  %4403 = load %nyx_string*, %nyx_string** %op.ptr
  %4404 = getelementptr [6 x i8], [6 x i8]* @.str573, i32 0, i32 0
  %4405 = call %nyx_string* @nyx_string_from_cstr(i8* %4404)
  %4406 = call i8* @nyx_string_to_cstr(%nyx_string* %4403)
  %4407 = call i8* @nyx_string_to_cstr(%nyx_string* %4405)
  %4408 = call i32 @strcmp(i8* %4406, i8* %4407)
  %4409 = icmp eq i32 %4408, 0
  br i1 %4409, label %then869, label %else870
then869:
  %4410 = getelementptr [2 x i8], [2 x i8]* @.str574, i32 0, i32 0
  %4411 = call %nyx_string* @nyx_string_from_cstr(i8* %4410)
  ret %nyx_string* %4411
else870:
  br label %merge871
merge871:
  %4412 = load %nyx_string*, %nyx_string** %op.ptr
  %4413 = getelementptr [5 x i8], [5 x i8]* @.str575, i32 0, i32 0
  %4414 = call %nyx_string* @nyx_string_from_cstr(i8* %4413)
  %4415 = call i8* @nyx_string_to_cstr(%nyx_string* %4412)
  %4416 = call i8* @nyx_string_to_cstr(%nyx_string* %4414)
  %4417 = call i32 @strcmp(i8* %4415, i8* %4416)
  %4418 = icmp eq i32 %4417, 0
  br i1 %4418, label %then872, label %else873
then872:
  %4419 = getelementptr [2 x i8], [2 x i8]* @.str576, i32 0, i32 0
  %4420 = call %nyx_string* @nyx_string_from_cstr(i8* %4419)
  ret %nyx_string* %4420
else873:
  br label %merge874
merge874:
  %4421 = load %nyx_string*, %nyx_string** %op.ptr
  %4422 = getelementptr [5 x i8], [5 x i8]* @.str577, i32 0, i32 0
  %4423 = call %nyx_string* @nyx_string_from_cstr(i8* %4422)
  %4424 = call i8* @nyx_string_to_cstr(%nyx_string* %4421)
  %4425 = call i8* @nyx_string_to_cstr(%nyx_string* %4423)
  %4426 = call i32 @strcmp(i8* %4424, i8* %4425)
  %4427 = icmp eq i32 %4426, 0
  br i1 %4427, label %then875, label %else876
then875:
  %4428 = getelementptr [2 x i8], [2 x i8]* @.str578, i32 0, i32 0
  %4429 = call %nyx_string* @nyx_string_from_cstr(i8* %4428)
  ret %nyx_string* %4429
else876:
  br label %merge877
merge877:
  %4430 = load %nyx_string*, %nyx_string** %op.ptr
  %4431 = getelementptr [6 x i8], [6 x i8]* @.str579, i32 0, i32 0
  %4432 = call %nyx_string* @nyx_string_from_cstr(i8* %4431)
  %4433 = call i8* @nyx_string_to_cstr(%nyx_string* %4430)
  %4434 = call i8* @nyx_string_to_cstr(%nyx_string* %4432)
  %4435 = call i32 @strcmp(i8* %4433, i8* %4434)
  %4436 = icmp eq i32 %4435, 0
  br i1 %4436, label %then878, label %else879
then878:
  %4437 = getelementptr [2 x i8], [2 x i8]* @.str580, i32 0, i32 0
  %4438 = call %nyx_string* @nyx_string_from_cstr(i8* %4437)
  ret %nyx_string* %4438
else879:
  br label %merge880
merge880:
  %4439 = load %nyx_string*, %nyx_string** %op.ptr
  %4440 = getelementptr [8 x i8], [8 x i8]* @.str581, i32 0, i32 0
  %4441 = call %nyx_string* @nyx_string_from_cstr(i8* %4440)
  %4442 = call i8* @nyx_string_to_cstr(%nyx_string* %4439)
  %4443 = call i8* @nyx_string_to_cstr(%nyx_string* %4441)
  %4444 = call i32 @strcmp(i8* %4442, i8* %4443)
  %4445 = icmp eq i32 %4444, 0
  br i1 %4445, label %then881, label %else882
then881:
  %4446 = getelementptr [2 x i8], [2 x i8]* @.str582, i32 0, i32 0
  %4447 = call %nyx_string* @nyx_string_from_cstr(i8* %4446)
  ret %nyx_string* %4447
else882:
  br label %merge883
merge883:
  %4448 = load %nyx_string*, %nyx_string** %op.ptr
  %4449 = getelementptr [6 x i8], [6 x i8]* @.str583, i32 0, i32 0
  %4450 = call %nyx_string* @nyx_string_from_cstr(i8* %4449)
  %4451 = call i8* @nyx_string_to_cstr(%nyx_string* %4448)
  %4452 = call i8* @nyx_string_to_cstr(%nyx_string* %4450)
  %4453 = call i32 @strcmp(i8* %4451, i8* %4452)
  %4454 = icmp eq i32 %4453, 0
  br i1 %4454, label %then884, label %else885
then884:
  %4455 = getelementptr [3 x i8], [3 x i8]* @.str584, i32 0, i32 0
  %4456 = call %nyx_string* @nyx_string_from_cstr(i8* %4455)
  ret %nyx_string* %4456
else885:
  br label %merge886
merge886:
  %4457 = load %nyx_string*, %nyx_string** %op.ptr
  ret %nyx_string* %4457
}

define internal i1 @validate_unop(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %4458 = load %ASTNode, %ASTNode* %node.ptr
  %4459 = call %nyx_string* @get_string_at(%ASTNode %4458, i64 0)
  %4460 = alloca %nyx_string*
  store %nyx_string* %4459, %nyx_string** %4460
  %4461 = load %ASTNode, %ASTNode* %node.ptr
  %4462 = call %ASTNode @get_node_at(%ASTNode %4461, i64 1)
  %4463 = alloca %ASTNode
  store %ASTNode %4462, %ASTNode* %4463
  %4464 = load %ASTNode, %ASTNode* %4463
  %4465 = call i1 @validate_node(%ASTNode %4464)
  %4466 = xor i1 %4465, true
  br i1 %4466, label %then887, label %else888
then887:
  ret i1 0
else888:
  br label %merge889
merge889:
  %4467 = load %ASTNode, %ASTNode* %4463
  %4468 = call { i64, i8* }* @ty_of_expr(%ASTNode %4467)
  %4469 = alloca { i64, i8* }*
  store { i64, i8* }* %4468, { i64, i8* }** %4469
  %4470 = load { i64, i8* }*, { i64, i8* }** %4469
  %4471 = call i1 @ty_is_unknown({ i64, i8* }* %4470)
  br i1 %4471, label %then890, label %else891
then890:
  ret i1 1
else891:
  br label %merge892
merge892:
  %4472 = load { i64, i8* }*, { i64, i8* }** %4469
  %4473 = call %nyx_string* @ty_kind({ i64, i8* }* %4472)
  %4474 = alloca %nyx_string*
  store %nyx_string* %4473, %nyx_string** %4474
  %4475 = alloca i1
  store i1 true, i1* %4475
  %4476 = load %nyx_string*, %nyx_string** %4474
  %4477 = getelementptr [9 x i8], [9 x i8]* @.str585, i32 0, i32 0
  %4478 = call %nyx_string* @nyx_string_from_cstr(i8* %4477)
  %4479 = call i8* @nyx_string_to_cstr(%nyx_string* %4476)
  %4480 = call i8* @nyx_string_to_cstr(%nyx_string* %4478)
  %4481 = call i32 @strcmp(i8* %4479, i8* %4480)
  %4482 = icmp eq i32 %4481, 0
  br i1 %4482, label %sc_or_end894, label %sc_or_rhs893
sc_or_rhs893:
  %4483 = load %nyx_string*, %nyx_string** %4474
  %4484 = getelementptr [7 x i8], [7 x i8]* @.str586, i32 0, i32 0
  %4485 = call %nyx_string* @nyx_string_from_cstr(i8* %4484)
  %4486 = call i8* @nyx_string_to_cstr(%nyx_string* %4483)
  %4487 = call i8* @nyx_string_to_cstr(%nyx_string* %4485)
  %4488 = call i32 @strcmp(i8* %4486, i8* %4487)
  %4489 = icmp eq i32 %4488, 0
  store i1 %4489, i1* %4475
  br label %sc_or_end894
sc_or_end894:
  %4490 = load i1, i1* %4475
  br i1 %4490, label %then895, label %else896
then895:
  %4491 = load { i64, i8* }*, { i64, i8* }** %4469
  %4492 = call i64 @nyx_array_get({ i64, i8* }* %4491, i64 1)
  %4493 = inttoptr i64 %4492 to %nyx_string*
  %4494 = alloca %nyx_string*
  store %nyx_string* %4493, %nyx_string** %4494
  %4495 = getelementptr [1 x i8], [1 x i8]* @.str587, i32 0, i32 0
  %4496 = call %nyx_string* @nyx_string_from_cstr(i8* %4495)
  %4497 = alloca %nyx_string*
  store %nyx_string* %4496, %nyx_string** %4497
  %4498 = load %nyx_string*, %nyx_string** %4460
  %4499 = getelementptr [6 x i8], [6 x i8]* @.str588, i32 0, i32 0
  %4500 = call %nyx_string* @nyx_string_from_cstr(i8* %4499)
  %4501 = call i8* @nyx_string_to_cstr(%nyx_string* %4498)
  %4502 = call i8* @nyx_string_to_cstr(%nyx_string* %4500)
  %4503 = call i32 @strcmp(i8* %4501, i8* %4502)
  %4504 = icmp eq i32 %4503, 0
  br i1 %4504, label %then898, label %else899
then898:
  %4505 = getelementptr [4 x i8], [4 x i8]* @.str589, i32 0, i32 0
  %4506 = call %nyx_string* @nyx_string_from_cstr(i8* %4505)
  store %nyx_string* %4506, %nyx_string** %4497
  br label %merge900
else899:
  br label %merge900
merge900:
  %4507 = load %nyx_string*, %nyx_string** %4460
  %4508 = getelementptr [4 x i8], [4 x i8]* @.str590, i32 0, i32 0
  %4509 = call %nyx_string* @nyx_string_from_cstr(i8* %4508)
  %4510 = call i8* @nyx_string_to_cstr(%nyx_string* %4507)
  %4511 = call i8* @nyx_string_to_cstr(%nyx_string* %4509)
  %4512 = call i32 @strcmp(i8* %4510, i8* %4511)
  %4513 = icmp eq i32 %4512, 0
  br i1 %4513, label %then901, label %else902
then901:
  %4514 = getelementptr [4 x i8], [4 x i8]* @.str591, i32 0, i32 0
  %4515 = call %nyx_string* @nyx_string_from_cstr(i8* %4514)
  store %nyx_string* %4515, %nyx_string** %4497
  br label %merge903
else902:
  br label %merge903
merge903:
  %4516 = load %nyx_string*, %nyx_string** %4460
  %4517 = getelementptr [6 x i8], [6 x i8]* @.str592, i32 0, i32 0
  %4518 = call %nyx_string* @nyx_string_from_cstr(i8* %4517)
  %4519 = call i8* @nyx_string_to_cstr(%nyx_string* %4516)
  %4520 = call i8* @nyx_string_to_cstr(%nyx_string* %4518)
  %4521 = call i32 @strcmp(i8* %4519, i8* %4520)
  %4522 = icmp eq i32 %4521, 0
  br i1 %4522, label %then904, label %else905
then904:
  %4523 = getelementptr [7 x i8], [7 x i8]* @.str593, i32 0, i32 0
  %4524 = call %nyx_string* @nyx_string_from_cstr(i8* %4523)
  store %nyx_string* %4524, %nyx_string** %4497
  br label %merge906
else905:
  br label %merge906
merge906:
  %4525 = load %nyx_string*, %nyx_string** %4497
  %4526 = getelementptr [1 x i8], [1 x i8]* @.str594, i32 0, i32 0
  %4527 = call %nyx_string* @nyx_string_from_cstr(i8* %4526)
  %4528 = call i8* @nyx_string_to_cstr(%nyx_string* %4525)
  %4529 = call i8* @nyx_string_to_cstr(%nyx_string* %4527)
  %4530 = call i32 @strcmp(i8* %4528, i8* %4529)
  %4531 = icmp ne i32 %4530, 0
  br i1 %4531, label %then907, label %else908
then907:
  %4532 = load %nyx_string*, %nyx_string** %4494
  %4533 = load %nyx_string*, %nyx_string** %4497
  %4534 = call i1 @type_implements_trait(%nyx_string* %4532, %nyx_string* %4533)
  br i1 %4534, label %then910, label %else911
then910:
  ret i1 1
else911:
  br label %merge912
merge912:
  %4535 = load %nyx_string*, %nyx_string** %4494
  %4536 = call i1 @type_has_any_local_impl(%nyx_string* %4535)
  br i1 %4536, label %then913, label %else914
then913:
  %4537 = getelementptr [17 x i8], [17 x i8]* @.str595, i32 0, i32 0
  %4538 = call %nyx_string* @nyx_string_from_cstr(i8* %4537)
  %4539 = load %nyx_string*, %nyx_string** %4460
  %4540 = call %nyx_string* @op_symbol(%nyx_string* %4539)
  %4541 = call %nyx_string* @nyx_string_concat(%nyx_string* %4538, %nyx_string* %4540)
  %4542 = getelementptr [21 x i8], [21 x i8]* @.str596, i32 0, i32 0
  %4543 = call %nyx_string* @nyx_string_from_cstr(i8* %4542)
  %4544 = call %nyx_string* @nyx_string_concat(%nyx_string* %4541, %nyx_string* %4543)
  %4545 = load %nyx_string*, %nyx_string** %4497
  %4546 = call %nyx_string* @nyx_string_concat(%nyx_string* %4544, %nyx_string* %4545)
  %4547 = getelementptr [10 x i8], [10 x i8]* @.str597, i32 0, i32 0
  %4548 = call %nyx_string* @nyx_string_from_cstr(i8* %4547)
  %4549 = call %nyx_string* @nyx_string_concat(%nyx_string* %4546, %nyx_string* %4548)
  %4550 = load %nyx_string*, %nyx_string** %4494
  %4551 = call %nyx_string* @nyx_string_concat(%nyx_string* %4549, %nyx_string* %4550)
  %4552 = getelementptr [13 x i8], [13 x i8]* @.str598, i32 0, i32 0
  %4553 = call %nyx_string* @nyx_string_from_cstr(i8* %4552)
  %4554 = call %nyx_string* @nyx_string_concat(%nyx_string* %4551, %nyx_string* %4553)
  %4555 = getelementptr [13 x i8], [13 x i8]* @.str599, i32 0, i32 0
  %4556 = call %nyx_string* @nyx_string_from_cstr(i8* %4555)
  %4557 = load %nyx_string*, %nyx_string** %4460
  %4558 = call %nyx_string* @op_symbol(%nyx_string* %4557)
  %4559 = call %nyx_string* @nyx_string_concat(%nyx_string* %4556, %nyx_string* %4558)
  %4560 = getelementptr [19 x i8], [19 x i8]* @.str600, i32 0, i32 0
  %4561 = call %nyx_string* @nyx_string_from_cstr(i8* %4560)
  %4562 = call %nyx_string* @nyx_string_concat(%nyx_string* %4559, %nyx_string* %4561)
  %4563 = load %nyx_string*, %nyx_string** %4497
  %4564 = call %nyx_string* @nyx_string_concat(%nyx_string* %4562, %nyx_string* %4563)
  %4565 = getelementptr [9 x i8], [9 x i8]* @.str601, i32 0, i32 0
  %4566 = call %nyx_string* @nyx_string_from_cstr(i8* %4565)
  %4567 = call %nyx_string* @nyx_string_concat(%nyx_string* %4564, %nyx_string* %4566)
  %4568 = load %nyx_string*, %nyx_string** %4494
  %4569 = call %nyx_string* @nyx_string_concat(%nyx_string* %4567, %nyx_string* %4568)
  %4570 = getelementptr [11 x i8], [11 x i8]* @.str602, i32 0, i32 0
  %4571 = call %nyx_string* @nyx_string_from_cstr(i8* %4570)
  %4572 = call %nyx_string* @nyx_string_concat(%nyx_string* %4569, %nyx_string* %4571)
  %4573 = call %nyx_string* @msg(%nyx_string* %4554, %nyx_string* %4572)
  %4574 = call i64 @sem_error(%nyx_string* %4573)
  ret i1 0
else914:
  br label %merge915
merge915:
  br label %merge909
else908:
  br label %merge909
merge909:
  ret i1 1
else896:
  br label %merge897
merge897:
  %4575 = load %nyx_string*, %nyx_string** %4460
  %4576 = getelementptr [4 x i8], [4 x i8]* @.str603, i32 0, i32 0
  %4577 = call %nyx_string* @nyx_string_from_cstr(i8* %4576)
  %4578 = call i8* @nyx_string_to_cstr(%nyx_string* %4575)
  %4579 = call i8* @nyx_string_to_cstr(%nyx_string* %4577)
  %4580 = call i32 @strcmp(i8* %4578, i8* %4579)
  %4581 = icmp eq i32 %4580, 0
  br i1 %4581, label %then916, label %else917
then916:
  %4582 = load { i64, i8* }*, { i64, i8* }** %4469
  %4583 = call %nyx_string* @ty_kind({ i64, i8* }* %4582)
  %4584 = alloca %nyx_string*
  store %nyx_string* %4583, %nyx_string** %4584
  %4585 = load %nyx_string*, %nyx_string** %4584
  %4586 = getelementptr [7 x i8], [7 x i8]* @.str604, i32 0, i32 0
  %4587 = call %nyx_string* @nyx_string_from_cstr(i8* %4586)
  %4588 = call i8* @nyx_string_to_cstr(%nyx_string* %4585)
  %4589 = call i8* @nyx_string_to_cstr(%nyx_string* %4587)
  %4590 = call i32 @strcmp(i8* %4588, i8* %4589)
  %4591 = icmp ne i32 %4590, 0
  br i1 %4591, label %then919, label %else920
then919:
  %4592 = getelementptr [42 x i8], [42 x i8]* @.str605, i32 0, i32 0
  %4593 = call %nyx_string* @nyx_string_from_cstr(i8* %4592)
  %4594 = load { i64, i8* }*, { i64, i8* }** %4469
  %4595 = call %nyx_string* @ty_to_str({ i64, i8* }* %4594)
  %4596 = call %nyx_string* @nyx_string_concat(%nyx_string* %4593, %nyx_string* %4595)
  %4597 = getelementptr [34 x i8], [34 x i8]* @.str606, i32 0, i32 0
  %4598 = call %nyx_string* @nyx_string_from_cstr(i8* %4597)
  %4599 = load { i64, i8* }*, { i64, i8* }** %4469
  %4600 = call %nyx_string* @ty_to_str({ i64, i8* }* %4599)
  %4601 = call %nyx_string* @nyx_string_concat(%nyx_string* %4598, %nyx_string* %4600)
  %4602 = call %nyx_string* @msg(%nyx_string* %4596, %nyx_string* %4601)
  %4603 = call i64 @sem_error(%nyx_string* %4602)
  ret i1 0
else920:
  br label %merge921
merge921:
  br label %merge918
else917:
  br label %merge918
merge918:
  %4604 = load %nyx_string*, %nyx_string** %4460
  %4605 = getelementptr [6 x i8], [6 x i8]* @.str607, i32 0, i32 0
  %4606 = call %nyx_string* @nyx_string_from_cstr(i8* %4605)
  %4607 = call i8* @nyx_string_to_cstr(%nyx_string* %4604)
  %4608 = call i8* @nyx_string_to_cstr(%nyx_string* %4606)
  %4609 = call i32 @strcmp(i8* %4607, i8* %4608)
  %4610 = icmp eq i32 %4609, 0
  br i1 %4610, label %then922, label %else923
then922:
  %4611 = load { i64, i8* }*, { i64, i8* }** %4469
  %4612 = call i1 @is_integer_like({ i64, i8* }* %4611)
  %4613 = xor i1 %4612, true
  br i1 %4613, label %then925, label %else926
then925:
  %4614 = getelementptr [44 x i8], [44 x i8]* @.str608, i32 0, i32 0
  %4615 = call %nyx_string* @nyx_string_from_cstr(i8* %4614)
  %4616 = load { i64, i8* }*, { i64, i8* }** %4469
  %4617 = call %nyx_string* @ty_to_str({ i64, i8* }* %4616)
  %4618 = call %nyx_string* @nyx_string_concat(%nyx_string* %4615, %nyx_string* %4617)
  %4619 = getelementptr [40 x i8], [40 x i8]* @.str609, i32 0, i32 0
  %4620 = call %nyx_string* @nyx_string_from_cstr(i8* %4619)
  %4621 = load { i64, i8* }*, { i64, i8* }** %4469
  %4622 = call %nyx_string* @ty_to_str({ i64, i8* }* %4621)
  %4623 = call %nyx_string* @nyx_string_concat(%nyx_string* %4620, %nyx_string* %4622)
  %4624 = call %nyx_string* @msg(%nyx_string* %4618, %nyx_string* %4623)
  %4625 = call i64 @sem_error(%nyx_string* %4624)
  ret i1 0
else926:
  br label %merge927
merge927:
  br label %merge924
else923:
  br label %merge924
merge924:
  %4626 = load %nyx_string*, %nyx_string** %4460
  %4627 = getelementptr [6 x i8], [6 x i8]* @.str610, i32 0, i32 0
  %4628 = call %nyx_string* @nyx_string_from_cstr(i8* %4627)
  %4629 = call i8* @nyx_string_to_cstr(%nyx_string* %4626)
  %4630 = call i8* @nyx_string_to_cstr(%nyx_string* %4628)
  %4631 = call i32 @strcmp(i8* %4629, i8* %4630)
  %4632 = icmp eq i32 %4631, 0
  br i1 %4632, label %then928, label %else929
then928:
  %4633 = load { i64, i8* }*, { i64, i8* }** %4469
  %4634 = call i1 @is_numeric_ty({ i64, i8* }* %4633)
  %4635 = xor i1 %4634, true
  br i1 %4635, label %then931, label %else932
then931:
  %4636 = getelementptr [55 x i8], [55 x i8]* @.str611, i32 0, i32 0
  %4637 = call %nyx_string* @nyx_string_from_cstr(i8* %4636)
  %4638 = load { i64, i8* }*, { i64, i8* }** %4469
  %4639 = call %nyx_string* @ty_to_str({ i64, i8* }* %4638)
  %4640 = call %nyx_string* @nyx_string_concat(%nyx_string* %4637, %nyx_string* %4639)
  %4641 = getelementptr [43 x i8], [43 x i8]* @.str612, i32 0, i32 0
  %4642 = call %nyx_string* @nyx_string_from_cstr(i8* %4641)
  %4643 = load { i64, i8* }*, { i64, i8* }** %4469
  %4644 = call %nyx_string* @ty_to_str({ i64, i8* }* %4643)
  %4645 = call %nyx_string* @nyx_string_concat(%nyx_string* %4642, %nyx_string* %4644)
  %4646 = call %nyx_string* @msg(%nyx_string* %4640, %nyx_string* %4645)
  %4647 = call i64 @sem_error(%nyx_string* %4646)
  ret i1 0
else932:
  br label %merge933
merge933:
  br label %merge930
else929:
  br label %merge930
merge930:
  ret i1 1
}

define internal i1 @validate_call(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %4648 = load %ASTNode, %ASTNode* %node.ptr
  %4649 = call %ASTNode @get_node_at(%ASTNode %4648, i64 0)
  %4650 = alloca %ASTNode
  store %ASTNode %4649, %ASTNode* %4650
  %4651 = load %ASTNode, %ASTNode* %node.ptr
  %4652 = call { i64, i8* }* @get_array_at(%ASTNode %4651, i64 1)
  %4653 = alloca { i64, i8* }*
  store { i64, i8* }* %4652, { i64, i8* }** %4653
  %4654 = load %ASTNode, %ASTNode* %4650
  %4655 = call i1 @validate_node(%ASTNode %4654)
  %4656 = xor i1 %4655, true
  br i1 %4656, label %then934, label %else935
then934:
  ret i1 0
else935:
  br label %merge936
merge936:
  %4657 = getelementptr %ASTNode, %ASTNode* %4650, i32 0, i32 0
  %4658 = load %nyx_string*, %nyx_string** %4657
  %4659 = getelementptr [11 x i8], [11 x i8]* @.str613, i32 0, i32 0
  %4660 = call %nyx_string* @nyx_string_from_cstr(i8* %4659)
  %4661 = call i8* @nyx_string_to_cstr(%nyx_string* %4658)
  %4662 = call i8* @nyx_string_to_cstr(%nyx_string* %4660)
  %4663 = call i32 @strcmp(i8* %4661, i8* %4662)
  %4664 = icmp eq i32 %4663, 0
  br i1 %4664, label %then937, label %else938
then937:
  %4665 = load %ASTNode, %ASTNode* %4650
  %4666 = call %nyx_string* @get_string_at(%ASTNode %4665, i64 0)
  %4667 = alloca %nyx_string*
  store %nyx_string* %4666, %nyx_string** %4667
  %4668 = load %nyx_string*, %nyx_string** %4667
  %4669 = call %nyx_string* @scope_lookup(%nyx_string* %4668)
  %4670 = alloca %nyx_string*
  store %nyx_string* %4669, %nyx_string** %4670
  %4671 = alloca i1
  store i1 true, i1* %4671
  %4672 = alloca i1
  store i1 true, i1* %4672
  %4673 = alloca i1
  store i1 true, i1* %4673
  %4674 = load %nyx_string*, %nyx_string** %4670
  %4675 = getelementptr [4 x i8], [4 x i8]* @.str614, i32 0, i32 0
  %4676 = call %nyx_string* @nyx_string_from_cstr(i8* %4675)
  %4677 = call i8* @nyx_string_to_cstr(%nyx_string* %4674)
  %4678 = call i8* @nyx_string_to_cstr(%nyx_string* %4676)
  %4679 = call i32 @strcmp(i8* %4677, i8* %4678)
  %4680 = icmp eq i32 %4679, 0
  br i1 %4680, label %sc_or_end941, label %sc_or_rhs940
sc_or_rhs940:
  %4681 = load %nyx_string*, %nyx_string** %4670
  %4682 = getelementptr [4 x i8], [4 x i8]* @.str615, i32 0, i32 0
  %4683 = call %nyx_string* @nyx_string_from_cstr(i8* %4682)
  %4684 = call i8* @nyx_string_to_cstr(%nyx_string* %4681)
  %4685 = call i8* @nyx_string_to_cstr(%nyx_string* %4683)
  %4686 = call i32 @strcmp(i8* %4684, i8* %4685)
  %4687 = icmp eq i32 %4686, 0
  store i1 %4687, i1* %4673
  br label %sc_or_end941
sc_or_end941:
  %4688 = load i1, i1* %4673
  br i1 %4688, label %sc_or_end943, label %sc_or_rhs942
sc_or_rhs942:
  %4689 = load %nyx_string*, %nyx_string** %4670
  %4690 = getelementptr [6 x i8], [6 x i8]* @.str616, i32 0, i32 0
  %4691 = call %nyx_string* @nyx_string_from_cstr(i8* %4690)
  %4692 = call i8* @nyx_string_to_cstr(%nyx_string* %4689)
  %4693 = call i8* @nyx_string_to_cstr(%nyx_string* %4691)
  %4694 = call i32 @strcmp(i8* %4692, i8* %4693)
  %4695 = icmp eq i32 %4694, 0
  store i1 %4695, i1* %4672
  br label %sc_or_end943
sc_or_end943:
  %4696 = load i1, i1* %4672
  br i1 %4696, label %sc_or_end945, label %sc_or_rhs944
sc_or_rhs944:
  %4697 = load %nyx_string*, %nyx_string** %4670
  %4698 = getelementptr [8 x i8], [8 x i8]* @.str617, i32 0, i32 0
  %4699 = call %nyx_string* @nyx_string_from_cstr(i8* %4698)
  %4700 = call i8* @nyx_string_to_cstr(%nyx_string* %4697)
  %4701 = call i8* @nyx_string_to_cstr(%nyx_string* %4699)
  %4702 = call i32 @strcmp(i8* %4700, i8* %4701)
  %4703 = icmp eq i32 %4702, 0
  store i1 %4703, i1* %4671
  br label %sc_or_end945
sc_or_end945:
  %4704 = load i1, i1* %4671
  br i1 %4704, label %then946, label %else947
then946:
  %4705 = load %nyx_string*, %nyx_string** %4667
  %4706 = call { i64, i8* }* @lookup_var_type(%nyx_string* %4705)
  %4707 = alloca { i64, i8* }*
  store { i64, i8* }* %4706, { i64, i8* }** %4707
  %4708 = load { i64, i8* }*, { i64, i8* }** %4707
  %4709 = call i1 @ty_is_unknown({ i64, i8* }* %4708)
  %4710 = xor i1 %4709, true
  br i1 %4710, label %then949, label %else950
then949:
  %4711 = load { i64, i8* }*, { i64, i8* }** %4707
  %4712 = call %nyx_string* @ty_kind({ i64, i8* }* %4711)
  %4713 = alloca %nyx_string*
  store %nyx_string* %4712, %nyx_string** %4713
  %4714 = alloca i1
  store i1 0, i1* %4714
  %4715 = load %nyx_string*, %nyx_string** %4713
  %4716 = getelementptr [5 x i8], [5 x i8]* @.str618, i32 0, i32 0
  %4717 = call %nyx_string* @nyx_string_from_cstr(i8* %4716)
  %4718 = call i8* @nyx_string_to_cstr(%nyx_string* %4715)
  %4719 = call i8* @nyx_string_to_cstr(%nyx_string* %4717)
  %4720 = call i32 @strcmp(i8* %4718, i8* %4719)
  %4721 = icmp eq i32 %4720, 0
  br i1 %4721, label %then952, label %else953
then952:
  store i1 1, i1* %4714
  br label %merge954
else953:
  br label %merge954
merge954:
  %4722 = load %nyx_string*, %nyx_string** %4713
  %4723 = getelementptr [10 x i8], [10 x i8]* @.str619, i32 0, i32 0
  %4724 = call %nyx_string* @nyx_string_from_cstr(i8* %4723)
  %4725 = call i8* @nyx_string_to_cstr(%nyx_string* %4722)
  %4726 = call i8* @nyx_string_to_cstr(%nyx_string* %4724)
  %4727 = call i32 @strcmp(i8* %4725, i8* %4726)
  %4728 = icmp eq i32 %4727, 0
  br i1 %4728, label %then955, label %else956
then955:
  store i1 1, i1* %4714
  br label %merge957
else956:
  br label %merge957
merge957:
  %4729 = load %nyx_string*, %nyx_string** %4713
  %4730 = getelementptr [6 x i8], [6 x i8]* @.str620, i32 0, i32 0
  %4731 = call %nyx_string* @nyx_string_from_cstr(i8* %4730)
  %4732 = call i8* @nyx_string_to_cstr(%nyx_string* %4729)
  %4733 = call i8* @nyx_string_to_cstr(%nyx_string* %4731)
  %4734 = call i32 @strcmp(i8* %4732, i8* %4733)
  %4735 = icmp eq i32 %4734, 0
  br i1 %4735, label %then958, label %else959
then958:
  store i1 1, i1* %4714
  br label %merge960
else959:
  br label %merge960
merge960:
  %4736 = load %nyx_string*, %nyx_string** %4713
  %4737 = getelementptr [9 x i8], [9 x i8]* @.str621, i32 0, i32 0
  %4738 = call %nyx_string* @nyx_string_from_cstr(i8* %4737)
  %4739 = call i8* @nyx_string_to_cstr(%nyx_string* %4736)
  %4740 = call i8* @nyx_string_to_cstr(%nyx_string* %4738)
  %4741 = call i32 @strcmp(i8* %4739, i8* %4740)
  %4742 = icmp eq i32 %4741, 0
  br i1 %4742, label %then961, label %else962
then961:
  %4743 = load { i64, i8* }*, { i64, i8* }** %4707
  %4744 = call i64 @nyx_array_get({ i64, i8* }* %4743, i64 1)
  %4745 = inttoptr i64 %4744 to %nyx_string*
  %4746 = alloca %nyx_string*
  store %nyx_string* %4745, %nyx_string** %4746
  %4747 = load %nyx_string*, %nyx_string** %4746
  %4748 = getelementptr [3 x i8], [3 x i8]* @.str622, i32 0, i32 0
  %4749 = call %nyx_string* @nyx_string_from_cstr(i8* %4748)
  %4750 = call i8* @nyx_string_to_cstr(%nyx_string* %4747)
  %4751 = call i8* @nyx_string_to_cstr(%nyx_string* %4749)
  %4752 = call i32 @strcmp(i8* %4750, i8* %4751)
  %4753 = icmp eq i32 %4752, 0
  br i1 %4753, label %then964, label %else965
then964:
  store i1 1, i1* %4714
  br label %merge966
else965:
  br label %merge966
merge966:
  br label %merge963
else962:
  br label %merge963
merge963:
  %4754 = load i1, i1* %4714
  %4755 = xor i1 %4754, true
  br i1 %4755, label %then967, label %else968
then967:
  %4756 = getelementptr [2 x i8], [2 x i8]* @.str623, i32 0, i32 0
  %4757 = call %nyx_string* @nyx_string_from_cstr(i8* %4756)
  %4758 = load %nyx_string*, %nyx_string** %4667
  %4759 = call %nyx_string* @nyx_string_concat(%nyx_string* %4757, %nyx_string* %4758)
  %4760 = getelementptr [29 x i8], [29 x i8]* @.str624, i32 0, i32 0
  %4761 = call %nyx_string* @nyx_string_from_cstr(i8* %4760)
  %4762 = call %nyx_string* @nyx_string_concat(%nyx_string* %4759, %nyx_string* %4761)
  %4763 = load { i64, i8* }*, { i64, i8* }** %4707
  %4764 = call %nyx_string* @ty_to_str({ i64, i8* }* %4763)
  %4765 = call %nyx_string* @nyx_string_concat(%nyx_string* %4762, %nyx_string* %4764)
  %4766 = getelementptr [2 x i8], [2 x i8]* @.str625, i32 0, i32 0
  %4767 = call %nyx_string* @nyx_string_from_cstr(i8* %4766)
  %4768 = call %nyx_string* @nyx_string_concat(%nyx_string* %4765, %nyx_string* %4767)
  %4769 = getelementptr [2 x i8], [2 x i8]* @.str626, i32 0, i32 0
  %4770 = call %nyx_string* @nyx_string_from_cstr(i8* %4769)
  %4771 = load %nyx_string*, %nyx_string** %4667
  %4772 = call %nyx_string* @nyx_string_concat(%nyx_string* %4770, %nyx_string* %4771)
  %4773 = getelementptr [26 x i8], [26 x i8]* @.str627, i32 0, i32 0
  %4774 = call %nyx_string* @nyx_string_from_cstr(i8* %4773)
  %4775 = call %nyx_string* @nyx_string_concat(%nyx_string* %4772, %nyx_string* %4774)
  %4776 = load { i64, i8* }*, { i64, i8* }** %4707
  %4777 = call %nyx_string* @ty_to_str({ i64, i8* }* %4776)
  %4778 = call %nyx_string* @nyx_string_concat(%nyx_string* %4775, %nyx_string* %4777)
  %4779 = getelementptr [2 x i8], [2 x i8]* @.str628, i32 0, i32 0
  %4780 = call %nyx_string* @nyx_string_from_cstr(i8* %4779)
  %4781 = call %nyx_string* @nyx_string_concat(%nyx_string* %4778, %nyx_string* %4780)
  %4782 = call %nyx_string* @msg(%nyx_string* %4768, %nyx_string* %4781)
  %4783 = call i64 @sem_error(%nyx_string* %4782)
  ret i1 0
else968:
  br label %merge969
merge969:
  br label %merge951
else950:
  br label %merge951
merge951:
  br label %merge948
else947:
  br label %merge948
merge948:
  %4784 = load %nyx_string*, %nyx_string** %4667
  %4785 = call i64 @scope_get_arity(%nyx_string* %4784)
  %4786 = alloca i64
  store i64 %4785, i64* %4786
  %4787 = load i64, i64* %4786
  %4788 = icmp sge i64 %4787, 0
  br i1 %4788, label %then970, label %else971
then970:
  %4789 = load { i64, i8* }*, { i64, i8* }** %4653
  %4790 = call i64 @nyx_array_length({ i64, i8* }* %4789)
  %4791 = alloca i64
  store i64 %4790, i64* %4791
  %4792 = load i64, i64* %4791
  %4793 = load i64, i64* %4786
  %4794 = icmp ne i64 %4792, %4793
  br i1 %4794, label %then973, label %else974
then973:
  %4795 = getelementptr [2 x i8], [2 x i8]* @.str629, i32 0, i32 0
  %4796 = call %nyx_string* @nyx_string_from_cstr(i8* %4795)
  %4797 = load %nyx_string*, %nyx_string** %4667
  %4798 = call %nyx_string* @nyx_string_concat(%nyx_string* %4796, %nyx_string* %4797)
  %4799 = getelementptr [3 x i8], [3 x i8]* @.str630, i32 0, i32 0
  %4800 = call %nyx_string* @nyx_string_from_cstr(i8* %4799)
  %4801 = call %nyx_string* @nyx_string_concat(%nyx_string* %4798, %nyx_string* %4800)
  %4802 = getelementptr [8 x i8], [8 x i8]* @.str631, i32 0, i32 0
  %4803 = call %nyx_string* @nyx_string_from_cstr(i8* %4802)
  %4804 = load i64, i64* %4786
  %4805 = call %nyx_string* @nyx_string_from_int(i64 %4804)
  %4806 = call %nyx_string* @nyx_string_concat(%nyx_string* %4803, %nyx_string* %4805)
  %4807 = getelementptr [23 x i8], [23 x i8]* @.str632, i32 0, i32 0
  %4808 = call %nyx_string* @nyx_string_from_cstr(i8* %4807)
  %4809 = call %nyx_string* @nyx_string_concat(%nyx_string* %4806, %nyx_string* %4808)
  %4810 = load i64, i64* %4791
  %4811 = call %nyx_string* @nyx_string_from_int(i64 %4810)
  %4812 = call %nyx_string* @nyx_string_concat(%nyx_string* %4809, %nyx_string* %4811)
  %4813 = getelementptr [9 x i8], [9 x i8]* @.str633, i32 0, i32 0
  %4814 = call %nyx_string* @nyx_string_from_cstr(i8* %4813)
  %4815 = load i64, i64* %4786
  %4816 = call %nyx_string* @nyx_string_from_int(i64 %4815)
  %4817 = call %nyx_string* @nyx_string_concat(%nyx_string* %4814, %nyx_string* %4816)
  %4818 = getelementptr [17 x i8], [17 x i8]* @.str634, i32 0, i32 0
  %4819 = call %nyx_string* @nyx_string_from_cstr(i8* %4818)
  %4820 = call %nyx_string* @nyx_string_concat(%nyx_string* %4817, %nyx_string* %4819)
  %4821 = load i64, i64* %4791
  %4822 = call %nyx_string* @nyx_string_from_int(i64 %4821)
  %4823 = call %nyx_string* @nyx_string_concat(%nyx_string* %4820, %nyx_string* %4822)
  %4824 = call %nyx_string* @msg(%nyx_string* %4812, %nyx_string* %4823)
  %4825 = call %nyx_string* @nyx_string_concat(%nyx_string* %4801, %nyx_string* %4824)
  %4826 = call i64 @sem_error(%nyx_string* %4825)
  ret i1 0
else974:
  br label %merge975
merge975:
  br label %merge972
else971:
  br label %merge972
merge972:
  br label %merge939
else938:
  br label %merge939
merge939:
  %4827 = alloca i64
  store i64 0, i64* %4827
  br label %while_cond976
while_cond976:
  %4828 = load i64, i64* %4827
  %4829 = load { i64, i8* }*, { i64, i8* }** %4653
  %4830 = call i64 @nyx_array_length({ i64, i8* }* %4829)
  %4831 = icmp slt i64 %4828, %4830
  br i1 %4831, label %while_body977, label %while_end978
while_body977:
  %4832 = load { i64, i8* }*, { i64, i8* }** %4653
  %4833 = load i64, i64* %4827
  %4834 = call i64 @nyx_array_get({ i64, i8* }* %4832, i64 %4833)
  %4835 = inttoptr i64 %4834 to { i64, i8* }*
  %4836 = call i64 @nyx_array_get({ i64, i8* }* %4835, i64 0)
  %4837 = call i64 @nyx_array_get({ i64, i8* }* %4835, i64 1)
  %4838 = inttoptr i64 %4836 to %nyx_string*
  %4839 = inttoptr i64 %4837 to { i64, i8* }*
  %4840 = alloca %ASTNode
  %4841 = getelementptr inbounds %ASTNode, %ASTNode* %4840, i32 0, i32 0
  store %nyx_string* %4838, %nyx_string** %4841
  %4842 = getelementptr inbounds %ASTNode, %ASTNode* %4840, i32 0, i32 1
  store { i64, i8* }* %4839, { i64, i8* }** %4842
  %4843 = load %ASTNode, %ASTNode* %4840
  %4844 = alloca %ASTNode
  store %ASTNode %4843, %ASTNode* %4844
  %4845 = load %ASTNode, %ASTNode* %4844
  %4846 = call i1 @validate_node(%ASTNode %4845)
  %4847 = xor i1 %4846, true
  br i1 %4847, label %then979, label %else980
then979:
  ret i1 0
else980:
  br label %merge981
merge981:
  %4848 = load i64, i64* %4827
  %4849 = add i64 %4848, 1
  store i64 %4849, i64* %4827
  br label %while_cond976
while_end978:
  %4850 = getelementptr %ASTNode, %ASTNode* %4650, i32 0, i32 0
  %4851 = load %nyx_string*, %nyx_string** %4850
  %4852 = getelementptr [11 x i8], [11 x i8]* @.str635, i32 0, i32 0
  %4853 = call %nyx_string* @nyx_string_from_cstr(i8* %4852)
  %4854 = call i8* @nyx_string_to_cstr(%nyx_string* %4851)
  %4855 = call i8* @nyx_string_to_cstr(%nyx_string* %4853)
  %4856 = call i32 @strcmp(i8* %4854, i8* %4855)
  %4857 = icmp eq i32 %4856, 0
  br i1 %4857, label %then982, label %else983
then982:
  %4858 = load %ASTNode, %ASTNode* %4650
  %4859 = call %nyx_string* @get_string_at(%ASTNode %4858, i64 0)
  %4860 = alloca %nyx_string*
  store %nyx_string* %4859, %nyx_string** %4860
  %4861 = load %nyx_string*, %nyx_string** %4860
  %4862 = call { i64, i8* }* @lookup_fn_sig(%nyx_string* %4861)
  %4863 = alloca { i64, i8* }*
  store { i64, i8* }* %4862, { i64, i8* }** %4863
  %4864 = load { i64, i8* }*, { i64, i8* }** %4863
  %4865 = call i64 @nyx_array_length({ i64, i8* }* %4864)
  %4866 = icmp eq i64 %4865, 3
  br i1 %4866, label %then985, label %else986
then985:
  %4867 = load { i64, i8* }*, { i64, i8* }** %4863
  %4868 = call i64 @nyx_array_get({ i64, i8* }* %4867, i64 0)
  %4869 = inttoptr i64 %4868 to { i64, i8* }*
  %4870 = alloca { i64, i8* }*
  store { i64, i8* }* %4869, { i64, i8* }** %4870
  %4871 = load { i64, i8* }*, { i64, i8* }** %4863
  %4872 = call i64 @nyx_array_get({ i64, i8* }* %4871, i64 2)
  %4873 = inttoptr i64 %4872 to { i64, i8* }*
  %4874 = alloca { i64, i8* }*
  store { i64, i8* }* %4873, { i64, i8* }** %4874
  %4875 = load { i64, i8* }*, { i64, i8* }** %4874
  %4876 = call i64 @nyx_array_length({ i64, i8* }* %4875)
  %4877 = icmp sgt i64 %4876, 0
  %4878 = alloca i1
  store i1 %4877, i1* %4878
  %4879 = call { i64, i8* }* @nyx_array_new_ptr()
  %4880 = alloca { i64, i8* }*
  store { i64, i8* }* %4879, { i64, i8* }** %4880
  %4881 = call { i64, i8* }* @nyx_array_new_ptr()
  %4882 = alloca { i64, i8* }*
  store { i64, i8* }* %4881, { i64, i8* }** %4882
  %4883 = alloca i64
  store i64 0, i64* %4883
  br label %while_cond988
while_cond988:
  %4884 = load i64, i64* %4883
  %4885 = load { i64, i8* }*, { i64, i8* }** %4653
  %4886 = call i64 @nyx_array_length({ i64, i8* }* %4885)
  %4887 = icmp slt i64 %4884, %4886
  br i1 %4887, label %while_body989, label %while_end990
while_body989:
  %4888 = load i64, i64* %4883
  %4889 = load { i64, i8* }*, { i64, i8* }** %4870
  %4890 = call i64 @nyx_array_length({ i64, i8* }* %4889)
  %4891 = icmp slt i64 %4888, %4890
  br i1 %4891, label %then991, label %else992
then991:
  %4892 = load { i64, i8* }*, { i64, i8* }** %4653
  %4893 = load i64, i64* %4883
  %4894 = call i64 @nyx_array_get({ i64, i8* }* %4892, i64 %4893)
  %4895 = inttoptr i64 %4894 to { i64, i8* }*
  %4896 = call i64 @nyx_array_get({ i64, i8* }* %4895, i64 0)
  %4897 = call i64 @nyx_array_get({ i64, i8* }* %4895, i64 1)
  %4898 = inttoptr i64 %4896 to %nyx_string*
  %4899 = inttoptr i64 %4897 to { i64, i8* }*
  %4900 = alloca %ASTNode
  %4901 = getelementptr inbounds %ASTNode, %ASTNode* %4900, i32 0, i32 0
  store %nyx_string* %4898, %nyx_string** %4901
  %4902 = getelementptr inbounds %ASTNode, %ASTNode* %4900, i32 0, i32 1
  store { i64, i8* }* %4899, { i64, i8* }** %4902
  %4903 = load %ASTNode, %ASTNode* %4900
  %4904 = alloca %ASTNode
  store %ASTNode %4903, %ASTNode* %4904
  %4905 = load { i64, i8* }*, { i64, i8* }** %4870
  %4906 = load i64, i64* %4883
  %4907 = call i64 @nyx_array_get({ i64, i8* }* %4905, i64 %4906)
  %4908 = inttoptr i64 %4907 to { i64, i8* }*
  %4909 = alloca { i64, i8* }*
  store { i64, i8* }* %4908, { i64, i8* }** %4909
  %4910 = load { i64, i8* }*, { i64, i8* }** %4909
  %4911 = call i1 @ty_is_unknown({ i64, i8* }* %4910)
  %4912 = xor i1 %4911, true
  br i1 %4912, label %then994, label %else995
then994:
  %4913 = load %ASTNode, %ASTNode* %4904
  %4914 = call { i64, i8* }* @ty_of_expr(%ASTNode %4913)
  %4915 = alloca { i64, i8* }*
  store { i64, i8* }* %4914, { i64, i8* }** %4915
  %4916 = load { i64, i8* }*, { i64, i8* }** %4915
  %4917 = call i1 @ty_is_unknown({ i64, i8* }* %4916)
  %4918 = xor i1 %4917, true
  br i1 %4918, label %then997, label %else998
then997:
  %4919 = alloca i1
  store i1 1, i1* %4919
  %4920 = load i1, i1* %4878
  br i1 %4920, label %then1000, label %else1001
then1000:
  %4921 = load { i64, i8* }*, { i64, i8* }** %4909
  %4922 = load { i64, i8* }*, { i64, i8* }** %4915
  %4923 = load { i64, i8* }*, { i64, i8* }** %4874
  %4924 = load { i64, i8* }*, { i64, i8* }** %4880
  %4925 = load { i64, i8* }*, { i64, i8* }** %4882
  %4926 = call i1 @unify({ i64, i8* }* %4921, { i64, i8* }* %4922, { i64, i8* }* %4923, { i64, i8* }* %4924, { i64, i8* }* %4925)
  store i1 %4926, i1* %4919
  br label %merge1002
else1001:
  %4927 = load { i64, i8* }*, { i64, i8* }** %4909
  %4928 = load { i64, i8* }*, { i64, i8* }** %4915
  %4929 = call i1 @ty_eq({ i64, i8* }* %4927, { i64, i8* }* %4928)
  store i1 %4929, i1* %4919
  br label %merge1002
merge1002:
  %4930 = load i1, i1* %4919
  %4931 = xor i1 %4930, true
  br i1 %4931, label %then1003, label %else1004
then1003:
  %4932 = load { i64, i8* }*, { i64, i8* }** %4909
  %4933 = alloca { i64, i8* }*
  store { i64, i8* }* %4932, { i64, i8* }** %4933
  %4934 = load i1, i1* %4878
  br i1 %4934, label %then1006, label %else1007
then1006:
  %4935 = load { i64, i8* }*, { i64, i8* }** %4909
  %4936 = load { i64, i8* }*, { i64, i8* }** %4880
  %4937 = load { i64, i8* }*, { i64, i8* }** %4882
  %4938 = call { i64, i8* }* @subst_apply({ i64, i8* }* %4935, { i64, i8* }* %4936, { i64, i8* }* %4937)
  store { i64, i8* }* %4938, { i64, i8* }** %4933
  br label %merge1008
else1007:
  br label %merge1008
merge1008:
  %4939 = getelementptr [11 x i8], [11 x i8]* @.str636, i32 0, i32 0
  %4940 = call %nyx_string* @nyx_string_from_cstr(i8* %4939)
  %4941 = load i64, i64* %4883
  %4942 = add i64 %4941, 1
  %4943 = call %nyx_string* @nyx_string_from_int(i64 %4942)
  %4944 = call %nyx_string* @nyx_string_concat(%nyx_string* %4940, %nyx_string* %4943)
  %4945 = getelementptr [6 x i8], [6 x i8]* @.str637, i32 0, i32 0
  %4946 = call %nyx_string* @nyx_string_from_cstr(i8* %4945)
  %4947 = call %nyx_string* @nyx_string_concat(%nyx_string* %4944, %nyx_string* %4946)
  %4948 = load %nyx_string*, %nyx_string** %4860
  %4949 = call %nyx_string* @nyx_string_concat(%nyx_string* %4947, %nyx_string* %4948)
  %4950 = getelementptr [16 x i8], [16 x i8]* @.str638, i32 0, i32 0
  %4951 = call %nyx_string* @nyx_string_from_cstr(i8* %4950)
  %4952 = call %nyx_string* @nyx_string_concat(%nyx_string* %4949, %nyx_string* %4951)
  %4953 = load { i64, i8* }*, { i64, i8* }** %4933
  %4954 = call %nyx_string* @ty_to_str({ i64, i8* }* %4953)
  %4955 = call %nyx_string* @nyx_string_concat(%nyx_string* %4952, %nyx_string* %4954)
  %4956 = getelementptr [13 x i8], [13 x i8]* @.str639, i32 0, i32 0
  %4957 = call %nyx_string* @nyx_string_from_cstr(i8* %4956)
  %4958 = call %nyx_string* @nyx_string_concat(%nyx_string* %4955, %nyx_string* %4957)
  %4959 = load { i64, i8* }*, { i64, i8* }** %4915
  %4960 = call %nyx_string* @ty_to_str({ i64, i8* }* %4959)
  %4961 = call %nyx_string* @nyx_string_concat(%nyx_string* %4958, %nyx_string* %4960)
  %4962 = getelementptr [10 x i8], [10 x i8]* @.str640, i32 0, i32 0
  %4963 = call %nyx_string* @nyx_string_from_cstr(i8* %4962)
  %4964 = load i64, i64* %4883
  %4965 = add i64 %4964, 1
  %4966 = call %nyx_string* @nyx_string_from_int(i64 %4965)
  %4967 = call %nyx_string* @nyx_string_concat(%nyx_string* %4963, %nyx_string* %4966)
  %4968 = getelementptr [6 x i8], [6 x i8]* @.str641, i32 0, i32 0
  %4969 = call %nyx_string* @nyx_string_from_cstr(i8* %4968)
  %4970 = call %nyx_string* @nyx_string_concat(%nyx_string* %4967, %nyx_string* %4969)
  %4971 = load %nyx_string*, %nyx_string** %4860
  %4972 = call %nyx_string* @nyx_string_concat(%nyx_string* %4970, %nyx_string* %4971)
  %4973 = getelementptr [13 x i8], [13 x i8]* @.str642, i32 0, i32 0
  %4974 = call %nyx_string* @nyx_string_from_cstr(i8* %4973)
  %4975 = call %nyx_string* @nyx_string_concat(%nyx_string* %4972, %nyx_string* %4974)
  %4976 = load { i64, i8* }*, { i64, i8* }** %4933
  %4977 = call %nyx_string* @ty_to_str({ i64, i8* }* %4976)
  %4978 = call %nyx_string* @nyx_string_concat(%nyx_string* %4975, %nyx_string* %4977)
  %4979 = getelementptr [7 x i8], [7 x i8]* @.str643, i32 0, i32 0
  %4980 = call %nyx_string* @nyx_string_from_cstr(i8* %4979)
  %4981 = call %nyx_string* @nyx_string_concat(%nyx_string* %4978, %nyx_string* %4980)
  %4982 = load { i64, i8* }*, { i64, i8* }** %4915
  %4983 = call %nyx_string* @ty_to_str({ i64, i8* }* %4982)
  %4984 = call %nyx_string* @nyx_string_concat(%nyx_string* %4981, %nyx_string* %4983)
  %4985 = call %nyx_string* @msg(%nyx_string* %4961, %nyx_string* %4984)
  %4986 = call i64 @sem_error(%nyx_string* %4985)
  ret i1 0
else1004:
  br label %merge1005
merge1005:
  %4987 = load %nyx_string*, %nyx_string** %4860
  %4988 = getelementptr [6 x i8], [6 x i8]* @.str644, i32 0, i32 0
  %4989 = call %nyx_string* @nyx_string_from_cstr(i8* %4988)
  %4990 = call %nyx_string* @nyx_string_concat(%nyx_string* %4987, %nyx_string* %4989)
  %4991 = load i64, i64* %4883
  %4992 = add i64 %4991, 1
  %4993 = call %nyx_string* @nyx_string_from_int(i64 %4992)
  %4994 = call %nyx_string* @nyx_string_concat(%nyx_string* %4990, %nyx_string* %4993)
  %4995 = getelementptr [2 x i8], [2 x i8]* @.str645, i32 0, i32 0
  %4996 = call %nyx_string* @nyx_string_from_cstr(i8* %4995)
  %4997 = call %nyx_string* @nyx_string_concat(%nyx_string* %4994, %nyx_string* %4996)
  %4998 = alloca %nyx_string*
  store %nyx_string* %4997, %nyx_string** %4998
  %4999 = load { i64, i8* }*, { i64, i8* }** %4909
  %5000 = load { i64, i8* }*, { i64, i8* }** %4915
  %5001 = load %nyx_string*, %nyx_string** %4998
  %5002 = call i1 @ty_check_dyn_compat({ i64, i8* }* %4999, { i64, i8* }* %5000, %nyx_string* %5001)
  %5003 = xor i1 %5002, true
  br i1 %5003, label %then1009, label %else1010
then1009:
  ret i1 0
else1010:
  br label %merge1011
merge1011:
  br label %merge999
else998:
  br label %merge999
merge999:
  br label %merge996
else995:
  br label %merge996
merge996:
  br label %merge993
else992:
  br label %merge993
merge993:
  %5004 = load i64, i64* %4883
  %5005 = add i64 %5004, 1
  store i64 %5005, i64* %4883
  br label %while_cond988
while_end990:
  br label %merge987
else986:
  br label %merge987
merge987:
  br label %merge984
else983:
  br label %merge984
merge984:
  ret i1 1
}

define internal i1 @validate_let(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %5006 = load %ASTNode, %ASTNode* %node.ptr
  %5007 = call %ASTNode @get_node_at(%ASTNode %5006, i64 0)
  %5008 = alloca %ASTNode
  store %ASTNode %5007, %ASTNode* %5008
  %5009 = getelementptr %ASTNode, %ASTNode* %5008, i32 0, i32 0
  %5010 = load %nyx_string*, %nyx_string** %5009
  %5011 = alloca %nyx_string*
  store %nyx_string* %5010, %nyx_string** %5011
  %5012 = load %ASTNode, %ASTNode* %node.ptr
  %5013 = call %ASTNode @get_node_at(%ASTNode %5012, i64 2)
  %5014 = alloca %ASTNode
  store %ASTNode %5013, %ASTNode* %5014
  %5015 = load %ASTNode, %ASTNode* %5014
  %5016 = call i1 @validate_node(%ASTNode %5015)
  %5017 = xor i1 %5016, true
  br i1 %5017, label %then1012, label %else1013
then1012:
  ret i1 0
else1013:
  br label %merge1014
merge1014:
  %5018 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %5019 = load { i64, i8* }*, { i64, i8* }** %5018
  %5020 = alloca { i64, i8* }*
  store { i64, i8* }* %5019, { i64, i8* }** %5020
  %5021 = call { i64, i8* }* @ty_unknown()
  %5022 = alloca { i64, i8* }*
  store { i64, i8* }* %5021, { i64, i8* }** %5022
  %5023 = load { i64, i8* }*, { i64, i8* }** %5020
  %5024 = call i64 @nyx_array_length({ i64, i8* }* %5023)
  %5025 = icmp sgt i64 %5024, 3
  br i1 %5025, label %then1015, label %else1016
then1015:
  %5026 = load { i64, i8* }*, { i64, i8* }** %5020
  %5027 = call i64 @nyx_array_get({ i64, i8* }* %5026, i64 3)
  %5028 = inttoptr i64 %5027 to %nyx_string*
  %5029 = alloca %nyx_string*
  store %nyx_string* %5028, %nyx_string** %5029
  %5030 = load %nyx_string*, %nyx_string** %5029
  %5031 = getelementptr [1 x i8], [1 x i8]* @.str646, i32 0, i32 0
  %5032 = call %nyx_string* @nyx_string_from_cstr(i8* %5031)
  %5033 = call i8* @nyx_string_to_cstr(%nyx_string* %5030)
  %5034 = call i8* @nyx_string_to_cstr(%nyx_string* %5032)
  %5035 = call i32 @strcmp(i8* %5033, i8* %5034)
  %5036 = icmp ne i32 %5035, 0
  br i1 %5036, label %then1018, label %else1019
then1018:
  %5037 = load %nyx_string*, %nyx_string** %5029
  %5038 = call { i64, i8* }* @validate_type_ann(%nyx_string* %5037)
  store { i64, i8* }* %5038, { i64, i8* }** %5022
  %5039 = load { i64, i8* }*, { i64, i8* }** %5022
  %5040 = call i1 @ty_is_unknown({ i64, i8* }* %5039)
  %5041 = xor i1 %5040, true
  br i1 %5041, label %then1021, label %else1022
then1021:
  %5042 = load %ASTNode, %ASTNode* %5014
  %5043 = call { i64, i8* }* @ty_of_expr(%ASTNode %5042)
  %5044 = alloca { i64, i8* }*
  store { i64, i8* }* %5043, { i64, i8* }** %5044
  %5045 = load { i64, i8* }*, { i64, i8* }** %5044
  %5046 = call i1 @ty_is_unknown({ i64, i8* }* %5045)
  %5047 = xor i1 %5046, true
  br i1 %5047, label %then1024, label %else1025
then1024:
  %5048 = load { i64, i8* }*, { i64, i8* }** %5022
  %5049 = load { i64, i8* }*, { i64, i8* }** %5044
  %5050 = call i1 @ty_eq({ i64, i8* }* %5048, { i64, i8* }* %5049)
  %5051 = xor i1 %5050, true
  br i1 %5051, label %then1027, label %else1028
then1027:
  %5052 = getelementptr [23 x i8], [23 x i8]* @.str647, i32 0, i32 0
  %5053 = call %nyx_string* @nyx_string_from_cstr(i8* %5052)
  %5054 = load %nyx_string*, %nyx_string** %5011
  %5055 = call %nyx_string* @nyx_string_concat(%nyx_string* %5053, %nyx_string* %5054)
  %5056 = getelementptr [16 x i8], [16 x i8]* @.str648, i32 0, i32 0
  %5057 = call %nyx_string* @nyx_string_from_cstr(i8* %5056)
  %5058 = call %nyx_string* @nyx_string_concat(%nyx_string* %5055, %nyx_string* %5057)
  %5059 = load { i64, i8* }*, { i64, i8* }** %5022
  %5060 = call %nyx_string* @ty_to_str({ i64, i8* }* %5059)
  %5061 = call %nyx_string* @nyx_string_concat(%nyx_string* %5058, %nyx_string* %5060)
  %5062 = getelementptr [13 x i8], [13 x i8]* @.str649, i32 0, i32 0
  %5063 = call %nyx_string* @nyx_string_from_cstr(i8* %5062)
  %5064 = call %nyx_string* @nyx_string_concat(%nyx_string* %5061, %nyx_string* %5063)
  %5065 = load { i64, i8* }*, { i64, i8* }** %5044
  %5066 = call %nyx_string* @ty_to_str({ i64, i8* }* %5065)
  %5067 = call %nyx_string* @nyx_string_concat(%nyx_string* %5064, %nyx_string* %5066)
  %5068 = getelementptr [19 x i8], [19 x i8]* @.str650, i32 0, i32 0
  %5069 = call %nyx_string* @nyx_string_from_cstr(i8* %5068)
  %5070 = load %nyx_string*, %nyx_string** %5011
  %5071 = call %nyx_string* @nyx_string_concat(%nyx_string* %5069, %nyx_string* %5070)
  %5072 = getelementptr [13 x i8], [13 x i8]* @.str651, i32 0, i32 0
  %5073 = call %nyx_string* @nyx_string_from_cstr(i8* %5072)
  %5074 = call %nyx_string* @nyx_string_concat(%nyx_string* %5071, %nyx_string* %5073)
  %5075 = load { i64, i8* }*, { i64, i8* }** %5022
  %5076 = call %nyx_string* @ty_to_str({ i64, i8* }* %5075)
  %5077 = call %nyx_string* @nyx_string_concat(%nyx_string* %5074, %nyx_string* %5076)
  %5078 = getelementptr [7 x i8], [7 x i8]* @.str652, i32 0, i32 0
  %5079 = call %nyx_string* @nyx_string_from_cstr(i8* %5078)
  %5080 = call %nyx_string* @nyx_string_concat(%nyx_string* %5077, %nyx_string* %5079)
  %5081 = load { i64, i8* }*, { i64, i8* }** %5044
  %5082 = call %nyx_string* @ty_to_str({ i64, i8* }* %5081)
  %5083 = call %nyx_string* @nyx_string_concat(%nyx_string* %5080, %nyx_string* %5082)
  %5084 = call %nyx_string* @msg(%nyx_string* %5067, %nyx_string* %5083)
  %5085 = call i64 @sem_error(%nyx_string* %5084)
  ret i1 0
else1028:
  br label %merge1029
merge1029:
  %5086 = load { i64, i8* }*, { i64, i8* }** %5022
  %5087 = load { i64, i8* }*, { i64, i8* }** %5044
  %5088 = load %nyx_string*, %nyx_string** %5011
  %5089 = call i1 @ty_check_dyn_compat({ i64, i8* }* %5086, { i64, i8* }* %5087, %nyx_string* %5088)
  %5090 = xor i1 %5089, true
  br i1 %5090, label %then1030, label %else1031
then1030:
  ret i1 0
else1031:
  br label %merge1032
merge1032:
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
else1016:
  br label %merge1017
merge1017:
  %5091 = load %ASTNode, %ASTNode* %node.ptr
  %5092 = call i1 @get_bool_at(%ASTNode %5091, i64 1)
  %5093 = alloca i1
  store i1 %5092, i1* %5093
  %5094 = load i1, i1* %5093
  br i1 %5094, label %then1033, label %else1034
then1033:
  %5095 = load %nyx_string*, %nyx_string** %5011
  %5096 = getelementptr [4 x i8], [4 x i8]* @.str653, i32 0, i32 0
  %5097 = call %nyx_string* @nyx_string_from_cstr(i8* %5096)
  %5098 = call i64 @scope_declare(%nyx_string* %5095, %nyx_string* %5097)
  br label %merge1035
else1034:
  %5099 = load %nyx_string*, %nyx_string** %5011
  %5100 = getelementptr [4 x i8], [4 x i8]* @.str654, i32 0, i32 0
  %5101 = call %nyx_string* @nyx_string_from_cstr(i8* %5100)
  %5102 = call i64 @scope_declare(%nyx_string* %5099, %nyx_string* %5101)
  br label %merge1035
merge1035:
  %5103 = load { i64, i8* }*, { i64, i8* }** %5022
  %5104 = call i1 @ty_is_unknown({ i64, i8* }* %5103)
  %5105 = xor i1 %5104, true
  br i1 %5105, label %then1036, label %else1037
then1036:
  %5106 = load { i64, i8* }*, { i64, i8* }** %5022
  %5107 = call i64 @set_last_var_type({ i64, i8* }* %5106)
  br label %merge1038
else1037:
  %5108 = load %ASTNode, %ASTNode* %5014
  %5109 = call { i64, i8* }* @ty_of_expr(%ASTNode %5108)
  %5110 = alloca { i64, i8* }*
  store { i64, i8* }* %5109, { i64, i8* }** %5110
  %5111 = load { i64, i8* }*, { i64, i8* }** %5110
  %5112 = call i64 @set_last_var_type({ i64, i8* }* %5111)
  br label %merge1038
merge1038:
  ret i1 1
}

define internal i1 @validate_const(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %5113 = load %ASTNode, %ASTNode* %node.ptr
  %5114 = call %nyx_string* @get_string_at(%ASTNode %5113, i64 0)
  %5115 = alloca %nyx_string*
  store %nyx_string* %5114, %nyx_string** %5115
  %5116 = load %nyx_string*, %nyx_string** %5115
  %5117 = call i1 @scope_has_in_current(%nyx_string* %5116)
  br i1 %5117, label %then1039, label %else1040
then1039:
  %5118 = getelementptr [2 x i8], [2 x i8]* @.str655, i32 0, i32 0
  %5119 = call %nyx_string* @nyx_string_from_cstr(i8* %5118)
  %5120 = load %nyx_string*, %nyx_string** %5115
  %5121 = call %nyx_string* @nyx_string_concat(%nyx_string* %5119, %nyx_string* %5120)
  %5122 = getelementptr [3 x i8], [3 x i8]* @.str656, i32 0, i32 0
  %5123 = call %nyx_string* @nyx_string_from_cstr(i8* %5122)
  %5124 = call %nyx_string* @nyx_string_concat(%nyx_string* %5121, %nyx_string* %5123)
  %5125 = getelementptr [27 x i8], [27 x i8]* @.str657, i32 0, i32 0
  %5126 = call %nyx_string* @nyx_string_from_cstr(i8* %5125)
  %5127 = getelementptr [31 x i8], [31 x i8]* @.str658, i32 0, i32 0
  %5128 = call %nyx_string* @nyx_string_from_cstr(i8* %5127)
  %5129 = call %nyx_string* @msg(%nyx_string* %5126, %nyx_string* %5128)
  %5130 = call %nyx_string* @nyx_string_concat(%nyx_string* %5124, %nyx_string* %5129)
  %5131 = call i64 @sem_error(%nyx_string* %5130)
  ret i1 0
else1040:
  br label %merge1041
merge1041:
  %5132 = load %ASTNode, %ASTNode* %node.ptr
  %5133 = call %ASTNode @get_node_at(%ASTNode %5132, i64 1)
  %5134 = alloca %ASTNode
  store %ASTNode %5133, %ASTNode* %5134
  %5135 = load %ASTNode, %ASTNode* %5134
  %5136 = call i1 @validate_node(%ASTNode %5135)
  %5137 = xor i1 %5136, true
  br i1 %5137, label %then1042, label %else1043
then1042:
  ret i1 0
else1043:
  br label %merge1044
merge1044:
  %5138 = load %nyx_string*, %nyx_string** %5115
  %5139 = getelementptr [6 x i8], [6 x i8]* @.str659, i32 0, i32 0
  %5140 = call %nyx_string* @nyx_string_from_cstr(i8* %5139)
  %5141 = call i64 @scope_declare(%nyx_string* %5138, %nyx_string* %5140)
  ret i1 1
}

define internal i1 @validate_assign(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %5142 = load %ASTNode, %ASTNode* %node.ptr
  %5143 = call %ASTNode @get_node_at(%ASTNode %5142, i64 0)
  %5144 = alloca %ASTNode
  store %ASTNode %5143, %ASTNode* %5144
  %5145 = getelementptr %ASTNode, %ASTNode* %5144, i32 0, i32 0
  %5146 = load %nyx_string*, %nyx_string** %5145
  %5147 = alloca %nyx_string*
  store %nyx_string* %5146, %nyx_string** %5147
  %5148 = load %nyx_string*, %nyx_string** %5147
  %5149 = call %nyx_string* @scope_lookup(%nyx_string* %5148)
  %5150 = alloca %nyx_string*
  store %nyx_string* %5149, %nyx_string** %5150
  %5151 = load %nyx_string*, %nyx_string** %5150
  %5152 = getelementptr [1 x i8], [1 x i8]* @.str660, i32 0, i32 0
  %5153 = call %nyx_string* @nyx_string_from_cstr(i8* %5152)
  %5154 = call i8* @nyx_string_to_cstr(%nyx_string* %5151)
  %5155 = call i8* @nyx_string_to_cstr(%nyx_string* %5153)
  %5156 = call i32 @strcmp(i8* %5154, i8* %5155)
  %5157 = icmp eq i32 %5156, 0
  br i1 %5157, label %then1045, label %else1046
then1045:
  %5158 = getelementptr [9 x i8], [9 x i8]* @.str661, i32 0, i32 0
  %5159 = call %nyx_string* @nyx_string_from_cstr(i8* %5158)
  %5160 = getelementptr [9 x i8], [9 x i8]* @.str662, i32 0, i32 0
  %5161 = call %nyx_string* @nyx_string_from_cstr(i8* %5160)
  %5162 = call %nyx_string* @msg(%nyx_string* %5159, %nyx_string* %5161)
  %5163 = getelementptr [3 x i8], [3 x i8]* @.str663, i32 0, i32 0
  %5164 = call %nyx_string* @nyx_string_from_cstr(i8* %5163)
  %5165 = call %nyx_string* @nyx_string_concat(%nyx_string* %5162, %nyx_string* %5164)
  %5166 = load %nyx_string*, %nyx_string** %5147
  %5167 = call %nyx_string* @nyx_string_concat(%nyx_string* %5165, %nyx_string* %5166)
  %5168 = getelementptr [3 x i8], [3 x i8]* @.str664, i32 0, i32 0
  %5169 = call %nyx_string* @nyx_string_from_cstr(i8* %5168)
  %5170 = call %nyx_string* @nyx_string_concat(%nyx_string* %5167, %nyx_string* %5169)
  %5171 = getelementptr [13 x i8], [13 x i8]* @.str665, i32 0, i32 0
  %5172 = call %nyx_string* @nyx_string_from_cstr(i8* %5171)
  %5173 = getelementptr [13 x i8], [13 x i8]* @.str666, i32 0, i32 0
  %5174 = call %nyx_string* @nyx_string_from_cstr(i8* %5173)
  %5175 = call %nyx_string* @msg(%nyx_string* %5172, %nyx_string* %5174)
  %5176 = call %nyx_string* @nyx_string_concat(%nyx_string* %5170, %nyx_string* %5175)
  %5177 = call i64 @sem_error(%nyx_string* %5176)
  ret i1 0
else1046:
  br label %merge1047
merge1047:
  %5178 = load %nyx_string*, %nyx_string** %5150
  %5179 = getelementptr [4 x i8], [4 x i8]* @.str667, i32 0, i32 0
  %5180 = call %nyx_string* @nyx_string_from_cstr(i8* %5179)
  %5181 = call i8* @nyx_string_to_cstr(%nyx_string* %5178)
  %5182 = call i8* @nyx_string_to_cstr(%nyx_string* %5180)
  %5183 = call i32 @strcmp(i8* %5181, i8* %5182)
  %5184 = icmp eq i32 %5183, 0
  br i1 %5184, label %then1048, label %else1049
then1048:
  %5185 = getelementptr [2 x i8], [2 x i8]* @.str668, i32 0, i32 0
  %5186 = call %nyx_string* @nyx_string_from_cstr(i8* %5185)
  %5187 = load %nyx_string*, %nyx_string** %5147
  %5188 = call %nyx_string* @nyx_string_concat(%nyx_string* %5186, %nyx_string* %5187)
  %5189 = getelementptr [3 x i8], [3 x i8]* @.str669, i32 0, i32 0
  %5190 = call %nyx_string* @nyx_string_from_cstr(i8* %5189)
  %5191 = call %nyx_string* @nyx_string_concat(%nyx_string* %5188, %nyx_string* %5190)
  %5192 = getelementptr [33 x i8], [33 x i8]* @.str670, i32 0, i32 0
  %5193 = call %nyx_string* @nyx_string_from_cstr(i8* %5192)
  %5194 = getelementptr [33 x i8], [33 x i8]* @.str671, i32 0, i32 0
  %5195 = call %nyx_string* @nyx_string_from_cstr(i8* %5194)
  %5196 = call %nyx_string* @msg(%nyx_string* %5193, %nyx_string* %5195)
  %5197 = call %nyx_string* @nyx_string_concat(%nyx_string* %5191, %nyx_string* %5196)
  %5198 = call i64 @sem_error(%nyx_string* %5197)
  ret i1 0
else1049:
  br label %merge1050
merge1050:
  %5199 = load %nyx_string*, %nyx_string** %5150
  %5200 = getelementptr [6 x i8], [6 x i8]* @.str672, i32 0, i32 0
  %5201 = call %nyx_string* @nyx_string_from_cstr(i8* %5200)
  %5202 = call i8* @nyx_string_to_cstr(%nyx_string* %5199)
  %5203 = call i8* @nyx_string_to_cstr(%nyx_string* %5201)
  %5204 = call i32 @strcmp(i8* %5202, i8* %5203)
  %5205 = icmp eq i32 %5204, 0
  br i1 %5205, label %then1051, label %else1052
then1051:
  %5206 = getelementptr [2 x i8], [2 x i8]* @.str673, i32 0, i32 0
  %5207 = call %nyx_string* @nyx_string_from_cstr(i8* %5206)
  %5208 = load %nyx_string*, %nyx_string** %5147
  %5209 = call %nyx_string* @nyx_string_concat(%nyx_string* %5207, %nyx_string* %5208)
  %5210 = getelementptr [3 x i8], [3 x i8]* @.str674, i32 0, i32 0
  %5211 = call %nyx_string* @nyx_string_from_cstr(i8* %5210)
  %5212 = call %nyx_string* @nyx_string_concat(%nyx_string* %5209, %nyx_string* %5211)
  %5213 = getelementptr [35 x i8], [35 x i8]* @.str675, i32 0, i32 0
  %5214 = call %nyx_string* @nyx_string_from_cstr(i8* %5213)
  %5215 = getelementptr [34 x i8], [34 x i8]* @.str676, i32 0, i32 0
  %5216 = call %nyx_string* @nyx_string_from_cstr(i8* %5215)
  %5217 = call %nyx_string* @msg(%nyx_string* %5214, %nyx_string* %5216)
  %5218 = call %nyx_string* @nyx_string_concat(%nyx_string* %5212, %nyx_string* %5217)
  %5219 = call i64 @sem_error(%nyx_string* %5218)
  ret i1 0
else1052:
  br label %merge1053
merge1053:
  %5220 = load %ASTNode, %ASTNode* %node.ptr
  %5221 = call %ASTNode @get_node_at(%ASTNode %5220, i64 1)
  %5222 = alloca %ASTNode
  store %ASTNode %5221, %ASTNode* %5222
  %5223 = load %ASTNode, %ASTNode* %5222
  %5224 = call i1 @validate_node(%ASTNode %5223)
  ret i1 %5224
}

define internal i1 @block_ends_with_return(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %5225 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 0
  %5226 = load %nyx_string*, %nyx_string** %5225
  %5227 = getelementptr [6 x i8], [6 x i8]* @.str677, i32 0, i32 0
  %5228 = call %nyx_string* @nyx_string_from_cstr(i8* %5227)
  %5229 = call i8* @nyx_string_to_cstr(%nyx_string* %5226)
  %5230 = call i8* @nyx_string_to_cstr(%nyx_string* %5228)
  %5231 = call i32 @strcmp(i8* %5229, i8* %5230)
  %5232 = icmp ne i32 %5231, 0
  br i1 %5232, label %then1054, label %else1055
then1054:
  ret i1 0
else1055:
  br label %merge1056
merge1056:
  %5233 = load %ASTNode, %ASTNode* %node.ptr
  %5234 = call { i64, i8* }* @get_array_at(%ASTNode %5233, i64 0)
  %5235 = alloca { i64, i8* }*
  store { i64, i8* }* %5234, { i64, i8* }** %5235
  %5236 = load { i64, i8* }*, { i64, i8* }** %5235
  %5237 = call i64 @nyx_array_length({ i64, i8* }* %5236)
  %5238 = icmp eq i64 %5237, 0
  br i1 %5238, label %then1057, label %else1058
then1057:
  ret i1 0
else1058:
  br label %merge1059
merge1059:
  %5239 = load { i64, i8* }*, { i64, i8* }** %5235
  %5240 = load { i64, i8* }*, { i64, i8* }** %5235
  %5241 = call i64 @nyx_array_length({ i64, i8* }* %5240)
  %5242 = sub i64 %5241, 1
  %5243 = call i64 @nyx_array_get({ i64, i8* }* %5239, i64 %5242)
  %5244 = inttoptr i64 %5243 to { i64, i8* }*
  %5245 = call i64 @nyx_array_get({ i64, i8* }* %5244, i64 0)
  %5246 = call i64 @nyx_array_get({ i64, i8* }* %5244, i64 1)
  %5247 = inttoptr i64 %5245 to %nyx_string*
  %5248 = inttoptr i64 %5246 to { i64, i8* }*
  %5249 = alloca %ASTNode
  %5250 = getelementptr inbounds %ASTNode, %ASTNode* %5249, i32 0, i32 0
  store %nyx_string* %5247, %nyx_string** %5250
  %5251 = getelementptr inbounds %ASTNode, %ASTNode* %5249, i32 0, i32 1
  store { i64, i8* }* %5248, { i64, i8* }** %5251
  %5252 = load %ASTNode, %ASTNode* %5249
  %5253 = alloca %ASTNode
  store %ASTNode %5252, %ASTNode* %5253
  %5254 = getelementptr %ASTNode, %ASTNode* %5253, i32 0, i32 0
  %5255 = load %nyx_string*, %nyx_string** %5254
  %5256 = getelementptr [7 x i8], [7 x i8]* @.str678, i32 0, i32 0
  %5257 = call %nyx_string* @nyx_string_from_cstr(i8* %5256)
  %5258 = call i8* @nyx_string_to_cstr(%nyx_string* %5255)
  %5259 = call i8* @nyx_string_to_cstr(%nyx_string* %5257)
  %5260 = call i32 @strcmp(i8* %5258, i8* %5259)
  %5261 = icmp eq i32 %5260, 0
  br i1 %5261, label %then1060, label %else1061
then1060:
  ret i1 1
else1061:
  br label %merge1062
merge1062:
  %5262 = getelementptr %ASTNode, %ASTNode* %5253, i32 0, i32 0
  %5263 = load %nyx_string*, %nyx_string** %5262
  %5264 = getelementptr [3 x i8], [3 x i8]* @.str679, i32 0, i32 0
  %5265 = call %nyx_string* @nyx_string_from_cstr(i8* %5264)
  %5266 = call i8* @nyx_string_to_cstr(%nyx_string* %5263)
  %5267 = call i8* @nyx_string_to_cstr(%nyx_string* %5265)
  %5268 = call i32 @strcmp(i8* %5266, i8* %5267)
  %5269 = icmp eq i32 %5268, 0
  br i1 %5269, label %then1063, label %else1064
then1063:
  %5270 = load %ASTNode, %ASTNode* %5253
  %5271 = call %ASTNode @get_node_at(%ASTNode %5270, i64 1)
  %5272 = alloca %ASTNode
  store %ASTNode %5271, %ASTNode* %5272
  %5273 = load %ASTNode, %ASTNode* %5253
  %5274 = call %ASTNode @get_node_at(%ASTNode %5273, i64 2)
  %5275 = alloca %ASTNode
  store %ASTNode %5274, %ASTNode* %5275
  %5276 = getelementptr %ASTNode, %ASTNode* %5275, i32 0, i32 0
  %5277 = load %nyx_string*, %nyx_string** %5276
  %5278 = getelementptr [6 x i8], [6 x i8]* @.str680, i32 0, i32 0
  %5279 = call %nyx_string* @nyx_string_from_cstr(i8* %5278)
  %5280 = call i8* @nyx_string_to_cstr(%nyx_string* %5277)
  %5281 = call i8* @nyx_string_to_cstr(%nyx_string* %5279)
  %5282 = call i32 @strcmp(i8* %5280, i8* %5281)
  %5283 = icmp eq i32 %5282, 0
  br i1 %5283, label %then1066, label %else1067
then1066:
  ret i1 0
else1067:
  br label %merge1068
merge1068:
  %5284 = alloca i1
  store i1 false, i1* %5284
  %5285 = load %ASTNode, %ASTNode* %5272
  %5286 = call i1 @block_ends_with_return(%ASTNode %5285)
  br i1 %5286, label %sc_and_rhs1069, label %sc_and_end1070
sc_and_rhs1069:
  %5287 = load %ASTNode, %ASTNode* %5275
  %5288 = call i1 @block_ends_with_return(%ASTNode %5287)
  store i1 %5288, i1* %5284
  br label %sc_and_end1070
sc_and_end1070:
  %5289 = load i1, i1* %5284
  ret i1 %5289
else1064:
  br label %merge1065
merge1065:
  %5290 = getelementptr %ASTNode, %ASTNode* %5253, i32 0, i32 0
  %5291 = load %nyx_string*, %nyx_string** %5290
  %5292 = getelementptr [6 x i8], [6 x i8]* @.str681, i32 0, i32 0
  %5293 = call %nyx_string* @nyx_string_from_cstr(i8* %5292)
  %5294 = call i8* @nyx_string_to_cstr(%nyx_string* %5291)
  %5295 = call i8* @nyx_string_to_cstr(%nyx_string* %5293)
  %5296 = call i32 @strcmp(i8* %5294, i8* %5295)
  %5297 = icmp eq i32 %5296, 0
  br i1 %5297, label %then1071, label %else1072
then1071:
  %5298 = load %ASTNode, %ASTNode* %5253
  %5299 = call { i64, i8* }* @get_array_at(%ASTNode %5298, i64 1)
  %5300 = alloca { i64, i8* }*
  store { i64, i8* }* %5299, { i64, i8* }** %5300
  %5301 = load { i64, i8* }*, { i64, i8* }** %5300
  %5302 = call i64 @nyx_array_length({ i64, i8* }* %5301)
  %5303 = icmp eq i64 %5302, 0
  br i1 %5303, label %then1074, label %else1075
then1074:
  ret i1 0
else1075:
  br label %merge1076
merge1076:
  %5304 = alloca i1
  store i1 1, i1* %5304
  %5305 = alloca i64
  store i64 0, i64* %5305
  br label %while_cond1077
while_cond1077:
  %5306 = load i64, i64* %5305
  %5307 = load { i64, i8* }*, { i64, i8* }** %5300
  %5308 = call i64 @nyx_array_length({ i64, i8* }* %5307)
  %5309 = icmp slt i64 %5306, %5308
  br i1 %5309, label %while_body1078, label %while_end1079
while_body1078:
  %5310 = load { i64, i8* }*, { i64, i8* }** %5300
  %5311 = load i64, i64* %5305
  %5312 = call i64 @nyx_array_get({ i64, i8* }* %5310, i64 %5311)
  %5313 = inttoptr i64 %5312 to { i64, i8* }*
  %5314 = call i64 @nyx_array_get({ i64, i8* }* %5313, i64 0)
  %5315 = call i64 @nyx_array_get({ i64, i8* }* %5313, i64 1)
  %5316 = inttoptr i64 %5314 to %nyx_string*
  %5317 = inttoptr i64 %5315 to { i64, i8* }*
  %5318 = alloca %ASTNode
  %5319 = getelementptr inbounds %ASTNode, %ASTNode* %5318, i32 0, i32 0
  store %nyx_string* %5316, %nyx_string** %5319
  %5320 = getelementptr inbounds %ASTNode, %ASTNode* %5318, i32 0, i32 1
  store { i64, i8* }* %5317, { i64, i8* }** %5320
  %5321 = load %ASTNode, %ASTNode* %5318
  %5322 = alloca %ASTNode
  store %ASTNode %5321, %ASTNode* %5322
  %5323 = load %ASTNode, %ASTNode* %5322
  %5324 = call %ASTNode @get_node_at(%ASTNode %5323, i64 1)
  %5325 = alloca %ASTNode
  store %ASTNode %5324, %ASTNode* %5325
  %5326 = load %ASTNode, %ASTNode* %5325
  %5327 = call i1 @block_ends_with_return(%ASTNode %5326)
  %5328 = xor i1 %5327, true
  br i1 %5328, label %then1080, label %else1081
then1080:
  %5329 = getelementptr %ASTNode, %ASTNode* %5325, i32 0, i32 0
  %5330 = load %nyx_string*, %nyx_string** %5329
  %5331 = getelementptr [7 x i8], [7 x i8]* @.str682, i32 0, i32 0
  %5332 = call %nyx_string* @nyx_string_from_cstr(i8* %5331)
  %5333 = call i8* @nyx_string_to_cstr(%nyx_string* %5330)
  %5334 = call i8* @nyx_string_to_cstr(%nyx_string* %5332)
  %5335 = call i32 @strcmp(i8* %5333, i8* %5334)
  %5336 = icmp ne i32 %5335, 0
  br i1 %5336, label %then1083, label %else1084
then1083:
  store i1 0, i1* %5304
  br label %merge1085
else1084:
  br label %merge1085
merge1085:
  br label %merge1082
else1081:
  br label %merge1082
merge1082:
  %5337 = load i64, i64* %5305
  %5338 = add i64 %5337, 1
  store i64 %5338, i64* %5305
  br label %while_cond1077
while_end1079:
  %5339 = load i1, i1* %5304
  ret i1 %5339
else1072:
  br label %merge1073
merge1073:
  ret i1 0
}

define internal i64 @collect_return_types(
%ASTNode %node.param, { i64, i8* }* %out.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %out.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %out.param, { i64, i8* }** %out.ptr
  %5340 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 0
  %5341 = load %nyx_string*, %nyx_string** %5340
  %5342 = alloca %nyx_string*
  store %nyx_string* %5341, %nyx_string** %5342
  %5343 = load %nyx_string*, %nyx_string** %5342
  %5344 = getelementptr [9 x i8], [9 x i8]* @.str683, i32 0, i32 0
  %5345 = call %nyx_string* @nyx_string_from_cstr(i8* %5344)
  %5346 = call i8* @nyx_string_to_cstr(%nyx_string* %5343)
  %5347 = call i8* @nyx_string_to_cstr(%nyx_string* %5345)
  %5348 = call i32 @strcmp(i8* %5346, i8* %5347)
  %5349 = icmp eq i32 %5348, 0
  br i1 %5349, label %then1086, label %else1087
then1086:
  ret i64 0
else1087:
  br label %merge1088
merge1088:
  %5350 = load %nyx_string*, %nyx_string** %5342
  %5351 = getelementptr [9 x i8], [9 x i8]* @.str684, i32 0, i32 0
  %5352 = call %nyx_string* @nyx_string_from_cstr(i8* %5351)
  %5353 = call i8* @nyx_string_to_cstr(%nyx_string* %5350)
  %5354 = call i8* @nyx_string_to_cstr(%nyx_string* %5352)
  %5355 = call i32 @strcmp(i8* %5353, i8* %5354)
  %5356 = icmp eq i32 %5355, 0
  br i1 %5356, label %then1089, label %else1090
then1089:
  ret i64 0
else1090:
  br label %merge1091
merge1091:
  %5357 = load %nyx_string*, %nyx_string** %5342
  %5358 = getelementptr [7 x i8], [7 x i8]* @.str685, i32 0, i32 0
  %5359 = call %nyx_string* @nyx_string_from_cstr(i8* %5358)
  %5360 = call i8* @nyx_string_to_cstr(%nyx_string* %5357)
  %5361 = call i8* @nyx_string_to_cstr(%nyx_string* %5359)
  %5362 = call i32 @strcmp(i8* %5360, i8* %5361)
  %5363 = icmp eq i32 %5362, 0
  br i1 %5363, label %then1092, label %else1093
then1092:
  %5364 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %5365 = load { i64, i8* }*, { i64, i8* }** %5364
  %5366 = alloca { i64, i8* }*
  store { i64, i8* }* %5365, { i64, i8* }** %5366
  %5367 = load { i64, i8* }*, { i64, i8* }** %5366
  %5368 = call i64 @nyx_array_length({ i64, i8* }* %5367)
  %5369 = icmp sgt i64 %5368, 0
  br i1 %5369, label %then1095, label %else1096
then1095:
  %5370 = load { i64, i8* }*, { i64, i8* }** %5366
  %5371 = call i64 @nyx_array_get({ i64, i8* }* %5370, i64 0)
  %5372 = inttoptr i64 %5371 to { i64, i8* }*
  %5373 = call i64 @nyx_array_get({ i64, i8* }* %5372, i64 0)
  %5374 = call i64 @nyx_array_get({ i64, i8* }* %5372, i64 1)
  %5375 = inttoptr i64 %5373 to %nyx_string*
  %5376 = inttoptr i64 %5374 to { i64, i8* }*
  %5377 = alloca %ASTNode
  %5378 = getelementptr inbounds %ASTNode, %ASTNode* %5377, i32 0, i32 0
  store %nyx_string* %5375, %nyx_string** %5378
  %5379 = getelementptr inbounds %ASTNode, %ASTNode* %5377, i32 0, i32 1
  store { i64, i8* }* %5376, { i64, i8* }** %5379
  %5380 = load %ASTNode, %ASTNode* %5377
  %5381 = alloca %ASTNode
  store %ASTNode %5380, %ASTNode* %5381
  %5382 = getelementptr %ASTNode, %ASTNode* %5381, i32 0, i32 0
  %5383 = load %nyx_string*, %nyx_string** %5382
  %5384 = getelementptr [6 x i8], [6 x i8]* @.str686, i32 0, i32 0
  %5385 = call %nyx_string* @nyx_string_from_cstr(i8* %5384)
  %5386 = call i8* @nyx_string_to_cstr(%nyx_string* %5383)
  %5387 = call i8* @nyx_string_to_cstr(%nyx_string* %5385)
  %5388 = call i32 @strcmp(i8* %5386, i8* %5387)
  %5389 = icmp eq i32 %5388, 0
  br i1 %5389, label %then1098, label %else1099
then1098:
  %5390 = load { i64, i8* }*, { i64, i8* }** %out.ptr
  %5391 = call { i64, i8* }* @ty_unit()
  %5392 = ptrtoint { i64, i8* }* %5391 to i64
  call void @nyx_array_push({ i64, i8* }* %5390, i64 %5392)
  br label %merge1100
else1099:
  %5393 = load { i64, i8* }*, { i64, i8* }** %out.ptr
  %5394 = load %ASTNode, %ASTNode* %5381
  %5395 = call { i64, i8* }* @ty_of_expr(%ASTNode %5394)
  %5396 = ptrtoint { i64, i8* }* %5395 to i64
  call void @nyx_array_push({ i64, i8* }* %5393, i64 %5396)
  br label %merge1100
merge1100:
  br label %merge1097
else1096:
  %5397 = load { i64, i8* }*, { i64, i8* }** %out.ptr
  %5398 = call { i64, i8* }* @ty_unit()
  %5399 = ptrtoint { i64, i8* }* %5398 to i64
  call void @nyx_array_push({ i64, i8* }* %5397, i64 %5399)
  br label %merge1097
merge1097:
  ret i64 0
else1093:
  br label %merge1094
merge1094:
  %5400 = load %nyx_string*, %nyx_string** %5342
  %5401 = getelementptr [6 x i8], [6 x i8]* @.str687, i32 0, i32 0
  %5402 = call %nyx_string* @nyx_string_from_cstr(i8* %5401)
  %5403 = call i8* @nyx_string_to_cstr(%nyx_string* %5400)
  %5404 = call i8* @nyx_string_to_cstr(%nyx_string* %5402)
  %5405 = call i32 @strcmp(i8* %5403, i8* %5404)
  %5406 = icmp eq i32 %5405, 0
  br i1 %5406, label %then1101, label %else1102
then1101:
  %5407 = load %ASTNode, %ASTNode* %node.ptr
  %5408 = call { i64, i8* }* @get_array_at(%ASTNode %5407, i64 0)
  %5409 = alloca { i64, i8* }*
  store { i64, i8* }* %5408, { i64, i8* }** %5409
  %5410 = alloca i64
  store i64 0, i64* %5410
  br label %while_cond1104
while_cond1104:
  %5411 = load i64, i64* %5410
  %5412 = load { i64, i8* }*, { i64, i8* }** %5409
  %5413 = call i64 @nyx_array_length({ i64, i8* }* %5412)
  %5414 = icmp slt i64 %5411, %5413
  br i1 %5414, label %while_body1105, label %while_end1106
while_body1105:
  %5415 = load { i64, i8* }*, { i64, i8* }** %5409
  %5416 = load i64, i64* %5410
  %5417 = call i64 @nyx_array_get({ i64, i8* }* %5415, i64 %5416)
  %5418 = inttoptr i64 %5417 to { i64, i8* }*
  %5419 = call i64 @nyx_array_get({ i64, i8* }* %5418, i64 0)
  %5420 = call i64 @nyx_array_get({ i64, i8* }* %5418, i64 1)
  %5421 = inttoptr i64 %5419 to %nyx_string*
  %5422 = inttoptr i64 %5420 to { i64, i8* }*
  %5423 = alloca %ASTNode
  %5424 = getelementptr inbounds %ASTNode, %ASTNode* %5423, i32 0, i32 0
  store %nyx_string* %5421, %nyx_string** %5424
  %5425 = getelementptr inbounds %ASTNode, %ASTNode* %5423, i32 0, i32 1
  store { i64, i8* }* %5422, { i64, i8* }** %5425
  %5426 = load %ASTNode, %ASTNode* %5423
  %5427 = alloca %ASTNode
  store %ASTNode %5426, %ASTNode* %5427
  %5428 = load %ASTNode, %ASTNode* %5427
  %5429 = load { i64, i8* }*, { i64, i8* }** %out.ptr
  %5430 = call i64 @collect_return_types(%ASTNode %5428, { i64, i8* }* %5429)
  %5431 = load i64, i64* %5410
  %5432 = add i64 %5431, 1
  store i64 %5432, i64* %5410
  br label %while_cond1104
while_end1106:
  ret i64 0
else1102:
  br label %merge1103
merge1103:
  %5433 = load %nyx_string*, %nyx_string** %5342
  %5434 = getelementptr [3 x i8], [3 x i8]* @.str688, i32 0, i32 0
  %5435 = call %nyx_string* @nyx_string_from_cstr(i8* %5434)
  %5436 = call i8* @nyx_string_to_cstr(%nyx_string* %5433)
  %5437 = call i8* @nyx_string_to_cstr(%nyx_string* %5435)
  %5438 = call i32 @strcmp(i8* %5436, i8* %5437)
  %5439 = icmp eq i32 %5438, 0
  br i1 %5439, label %then1107, label %else1108
then1107:
  %5440 = load %ASTNode, %ASTNode* %node.ptr
  %5441 = call %ASTNode @get_node_at(%ASTNode %5440, i64 1)
  %5442 = alloca %ASTNode
  store %ASTNode %5441, %ASTNode* %5442
  %5443 = load %ASTNode, %ASTNode* %node.ptr
  %5444 = call %ASTNode @get_node_at(%ASTNode %5443, i64 2)
  %5445 = alloca %ASTNode
  store %ASTNode %5444, %ASTNode* %5445
  %5446 = load %ASTNode, %ASTNode* %5442
  %5447 = load { i64, i8* }*, { i64, i8* }** %out.ptr
  %5448 = call i64 @collect_return_types(%ASTNode %5446, { i64, i8* }* %5447)
  %5449 = getelementptr %ASTNode, %ASTNode* %5445, i32 0, i32 0
  %5450 = load %nyx_string*, %nyx_string** %5449
  %5451 = getelementptr [6 x i8], [6 x i8]* @.str689, i32 0, i32 0
  %5452 = call %nyx_string* @nyx_string_from_cstr(i8* %5451)
  %5453 = call i8* @nyx_string_to_cstr(%nyx_string* %5450)
  %5454 = call i8* @nyx_string_to_cstr(%nyx_string* %5452)
  %5455 = call i32 @strcmp(i8* %5453, i8* %5454)
  %5456 = icmp ne i32 %5455, 0
  br i1 %5456, label %then1110, label %else1111
then1110:
  %5457 = load %ASTNode, %ASTNode* %5445
  %5458 = load { i64, i8* }*, { i64, i8* }** %out.ptr
  %5459 = call i64 @collect_return_types(%ASTNode %5457, { i64, i8* }* %5458)
  br label %merge1112
else1111:
  br label %merge1112
merge1112:
  ret i64 0
else1108:
  br label %merge1109
merge1109:
  %5460 = load %nyx_string*, %nyx_string** %5342
  %5461 = getelementptr [6 x i8], [6 x i8]* @.str690, i32 0, i32 0
  %5462 = call %nyx_string* @nyx_string_from_cstr(i8* %5461)
  %5463 = call i8* @nyx_string_to_cstr(%nyx_string* %5460)
  %5464 = call i8* @nyx_string_to_cstr(%nyx_string* %5462)
  %5465 = call i32 @strcmp(i8* %5463, i8* %5464)
  %5466 = icmp eq i32 %5465, 0
  br i1 %5466, label %then1113, label %else1114
then1113:
  %5467 = load %ASTNode, %ASTNode* %node.ptr
  %5468 = call %ASTNode @get_node_at(%ASTNode %5467, i64 1)
  %5469 = alloca %ASTNode
  store %ASTNode %5468, %ASTNode* %5469
  %5470 = load %ASTNode, %ASTNode* %5469
  %5471 = load { i64, i8* }*, { i64, i8* }** %out.ptr
  %5472 = call i64 @collect_return_types(%ASTNode %5470, { i64, i8* }* %5471)
  ret i64 0
else1114:
  br label %merge1115
merge1115:
  %5473 = load %nyx_string*, %nyx_string** %5342
  %5474 = getelementptr [4 x i8], [4 x i8]* @.str691, i32 0, i32 0
  %5475 = call %nyx_string* @nyx_string_from_cstr(i8* %5474)
  %5476 = call i8* @nyx_string_to_cstr(%nyx_string* %5473)
  %5477 = call i8* @nyx_string_to_cstr(%nyx_string* %5475)
  %5478 = call i32 @strcmp(i8* %5476, i8* %5477)
  %5479 = icmp eq i32 %5478, 0
  br i1 %5479, label %then1116, label %else1117
then1116:
  %5480 = load %ASTNode, %ASTNode* %node.ptr
  %5481 = call %ASTNode @get_node_at(%ASTNode %5480, i64 2)
  %5482 = alloca %ASTNode
  store %ASTNode %5481, %ASTNode* %5482
  %5483 = load %ASTNode, %ASTNode* %5482
  %5484 = load { i64, i8* }*, { i64, i8* }** %out.ptr
  %5485 = call i64 @collect_return_types(%ASTNode %5483, { i64, i8* }* %5484)
  ret i64 0
else1117:
  br label %merge1118
merge1118:
  %5486 = load %nyx_string*, %nyx_string** %5342
  %5487 = getelementptr [6 x i8], [6 x i8]* @.str692, i32 0, i32 0
  %5488 = call %nyx_string* @nyx_string_from_cstr(i8* %5487)
  %5489 = call i8* @nyx_string_to_cstr(%nyx_string* %5486)
  %5490 = call i8* @nyx_string_to_cstr(%nyx_string* %5488)
  %5491 = call i32 @strcmp(i8* %5489, i8* %5490)
  %5492 = icmp eq i32 %5491, 0
  br i1 %5492, label %then1119, label %else1120
then1119:
  %5493 = load %ASTNode, %ASTNode* %node.ptr
  %5494 = call { i64, i8* }* @get_array_at(%ASTNode %5493, i64 1)
  %5495 = alloca { i64, i8* }*
  store { i64, i8* }* %5494, { i64, i8* }** %5495
  %5496 = alloca i64
  store i64 0, i64* %5496
  br label %while_cond1122
while_cond1122:
  %5497 = load i64, i64* %5496
  %5498 = load { i64, i8* }*, { i64, i8* }** %5495
  %5499 = call i64 @nyx_array_length({ i64, i8* }* %5498)
  %5500 = icmp slt i64 %5497, %5499
  br i1 %5500, label %while_body1123, label %while_end1124
while_body1123:
  %5501 = load { i64, i8* }*, { i64, i8* }** %5495
  %5502 = load i64, i64* %5496
  %5503 = call i64 @nyx_array_get({ i64, i8* }* %5501, i64 %5502)
  %5504 = inttoptr i64 %5503 to { i64, i8* }*
  %5505 = call i64 @nyx_array_get({ i64, i8* }* %5504, i64 0)
  %5506 = call i64 @nyx_array_get({ i64, i8* }* %5504, i64 1)
  %5507 = inttoptr i64 %5505 to %nyx_string*
  %5508 = inttoptr i64 %5506 to { i64, i8* }*
  %5509 = alloca %ASTNode
  %5510 = getelementptr inbounds %ASTNode, %ASTNode* %5509, i32 0, i32 0
  store %nyx_string* %5507, %nyx_string** %5510
  %5511 = getelementptr inbounds %ASTNode, %ASTNode* %5509, i32 0, i32 1
  store { i64, i8* }* %5508, { i64, i8* }** %5511
  %5512 = load %ASTNode, %ASTNode* %5509
  %5513 = alloca %ASTNode
  store %ASTNode %5512, %ASTNode* %5513
  %5514 = load %ASTNode, %ASTNode* %5513
  %5515 = load { i64, i8* }*, { i64, i8* }** %out.ptr
  %5516 = call i64 @collect_return_types(%ASTNode %5514, { i64, i8* }* %5515)
  %5517 = load i64, i64* %5496
  %5518 = add i64 %5517, 1
  store i64 %5518, i64* %5496
  br label %while_cond1122
while_end1124:
  ret i64 0
else1120:
  br label %merge1121
merge1121:
  %5519 = load %nyx_string*, %nyx_string** %5342
  %5520 = getelementptr [10 x i8], [10 x i8]* @.str693, i32 0, i32 0
  %5521 = call %nyx_string* @nyx_string_from_cstr(i8* %5520)
  %5522 = call i8* @nyx_string_to_cstr(%nyx_string* %5519)
  %5523 = call i8* @nyx_string_to_cstr(%nyx_string* %5521)
  %5524 = call i32 @strcmp(i8* %5522, i8* %5523)
  %5525 = icmp eq i32 %5524, 0
  br i1 %5525, label %then1125, label %else1126
then1125:
  %5526 = load %ASTNode, %ASTNode* %node.ptr
  %5527 = call %ASTNode @get_node_at(%ASTNode %5526, i64 1)
  %5528 = alloca %ASTNode
  store %ASTNode %5527, %ASTNode* %5528
  %5529 = load %ASTNode, %ASTNode* %5528
  %5530 = load { i64, i8* }*, { i64, i8* }** %out.ptr
  %5531 = call i64 @collect_return_types(%ASTNode %5529, { i64, i8* }* %5530)
  ret i64 0
else1126:
  br label %merge1127
merge1127:
  %5532 = load %nyx_string*, %nyx_string** %5342
  %5533 = getelementptr [10 x i8], [10 x i8]* @.str694, i32 0, i32 0
  %5534 = call %nyx_string* @nyx_string_from_cstr(i8* %5533)
  %5535 = call i8* @nyx_string_to_cstr(%nyx_string* %5532)
  %5536 = call i8* @nyx_string_to_cstr(%nyx_string* %5534)
  %5537 = call i32 @strcmp(i8* %5535, i8* %5536)
  %5538 = icmp eq i32 %5537, 0
  br i1 %5538, label %then1128, label %else1129
then1128:
  %5539 = load %ASTNode, %ASTNode* %node.ptr
  %5540 = call %ASTNode @get_node_at(%ASTNode %5539, i64 0)
  %5541 = alloca %ASTNode
  store %ASTNode %5540, %ASTNode* %5541
  %5542 = load %ASTNode, %ASTNode* %node.ptr
  %5543 = call %ASTNode @get_node_at(%ASTNode %5542, i64 2)
  %5544 = alloca %ASTNode
  store %ASTNode %5543, %ASTNode* %5544
  %5545 = load %ASTNode, %ASTNode* %5541
  %5546 = load { i64, i8* }*, { i64, i8* }** %out.ptr
  %5547 = call i64 @collect_return_types(%ASTNode %5545, { i64, i8* }* %5546)
  %5548 = load %ASTNode, %ASTNode* %5544
  %5549 = load { i64, i8* }*, { i64, i8* }** %out.ptr
  %5550 = call i64 @collect_return_types(%ASTNode %5548, { i64, i8* }* %5549)
  ret i64 0
else1129:
  br label %merge1130
merge1130:
  %5551 = load %nyx_string*, %nyx_string** %5342
  %5552 = getelementptr [13 x i8], [13 x i8]* @.str695, i32 0, i32 0
  %5553 = call %nyx_string* @nyx_string_from_cstr(i8* %5552)
  %5554 = call i8* @nyx_string_to_cstr(%nyx_string* %5551)
  %5555 = call i8* @nyx_string_to_cstr(%nyx_string* %5553)
  %5556 = call i32 @strcmp(i8* %5554, i8* %5555)
  %5557 = icmp eq i32 %5556, 0
  br i1 %5557, label %then1131, label %else1132
then1131:
  %5558 = load %ASTNode, %ASTNode* %node.ptr
  %5559 = call %ASTNode @get_node_at(%ASTNode %5558, i64 0)
  %5560 = alloca %ASTNode
  store %ASTNode %5559, %ASTNode* %5560
  %5561 = load %ASTNode, %ASTNode* %5560
  %5562 = load { i64, i8* }*, { i64, i8* }** %out.ptr
  %5563 = call i64 @collect_return_types(%ASTNode %5561, { i64, i8* }* %5562)
  ret i64 0
else1132:
  br label %merge1133
merge1133:
  %5564 = load %nyx_string*, %nyx_string** %5342
  %5565 = getelementptr [6 x i8], [6 x i8]* @.str696, i32 0, i32 0
  %5566 = call %nyx_string* @nyx_string_from_cstr(i8* %5565)
  %5567 = call i8* @nyx_string_to_cstr(%nyx_string* %5564)
  %5568 = call i8* @nyx_string_to_cstr(%nyx_string* %5566)
  %5569 = call i32 @strcmp(i8* %5567, i8* %5568)
  %5570 = icmp eq i32 %5569, 0
  br i1 %5570, label %then1134, label %else1135
then1134:
  %5571 = load %ASTNode, %ASTNode* %node.ptr
  %5572 = call %ASTNode @get_node_at(%ASTNode %5571, i64 0)
  %5573 = alloca %ASTNode
  store %ASTNode %5572, %ASTNode* %5573
  %5574 = load %ASTNode, %ASTNode* %5573
  %5575 = load { i64, i8* }*, { i64, i8* }** %out.ptr
  %5576 = call i64 @collect_return_types(%ASTNode %5574, { i64, i8* }* %5575)
  ret i64 0
else1135:
  br label %merge1136
merge1136:
  %5577 = load %nyx_string*, %nyx_string** %5342
  %5578 = getelementptr [10 x i8], [10 x i8]* @.str697, i32 0, i32 0
  %5579 = call %nyx_string* @nyx_string_from_cstr(i8* %5578)
  %5580 = call i8* @nyx_string_to_cstr(%nyx_string* %5577)
  %5581 = call i8* @nyx_string_to_cstr(%nyx_string* %5579)
  %5582 = call i32 @strcmp(i8* %5580, i8* %5581)
  %5583 = icmp eq i32 %5582, 0
  br i1 %5583, label %then1137, label %else1138
then1137:
  %5584 = load %ASTNode, %ASTNode* %node.ptr
  %5585 = call %ASTNode @get_node_at(%ASTNode %5584, i64 1)
  %5586 = alloca %ASTNode
  store %ASTNode %5585, %ASTNode* %5586
  %5587 = load %ASTNode, %ASTNode* %5586
  %5588 = load { i64, i8* }*, { i64, i8* }** %out.ptr
  %5589 = call i64 @collect_return_types(%ASTNode %5587, { i64, i8* }* %5588)
  ret i64 0
else1138:
  br label %merge1139
merge1139:
  ret i64 0
}

define internal { i64, i8* }* @infer_fn_return_type(
{ i64, i8* }* %types.param, %nyx_string* %fn_name.param) {
  %types.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %types.param, { i64, i8* }** %types.ptr
  %fn_name.ptr = alloca %nyx_string*
  store %nyx_string* %fn_name.param, %nyx_string** %fn_name.ptr
  %5590 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %5591 = call i64 @nyx_array_length({ i64, i8* }* %5590)
  %5592 = icmp eq i64 %5591, 0
  br i1 %5592, label %then1140, label %else1141
then1140:
  %5593 = call { i64, i8* }* @ty_unit()
  ret { i64, i8* }* %5593
else1141:
  br label %merge1142
merge1142:
  %5594 = call { i64, i8* }* @ty_unknown()
  %5595 = alloca { i64, i8* }*
  store { i64, i8* }* %5594, { i64, i8* }** %5595
  %5596 = alloca i1
  store i1 0, i1* %5596
  %5597 = alloca i64
  store i64 0, i64* %5597
  br label %while_cond1143
while_cond1143:
  %5598 = load i64, i64* %5597
  %5599 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %5600 = call i64 @nyx_array_length({ i64, i8* }* %5599)
  %5601 = icmp slt i64 %5598, %5600
  br i1 %5601, label %while_body1144, label %while_end1145
while_body1144:
  %5602 = load { i64, i8* }*, { i64, i8* }** %types.ptr
  %5603 = load i64, i64* %5597
  %5604 = call i64 @nyx_array_get({ i64, i8* }* %5602, i64 %5603)
  %5605 = inttoptr i64 %5604 to { i64, i8* }*
  %5606 = alloca { i64, i8* }*
  store { i64, i8* }* %5605, { i64, i8* }** %5606
  %5607 = load { i64, i8* }*, { i64, i8* }** %5606
  %5608 = call i1 @ty_is_unknown({ i64, i8* }* %5607)
  %5609 = xor i1 %5608, true
  br i1 %5609, label %then1146, label %else1147
then1146:
  %5610 = load i1, i1* %5596
  %5611 = xor i1 %5610, true
  br i1 %5611, label %then1149, label %else1150
then1149:
  %5612 = load { i64, i8* }*, { i64, i8* }** %5606
  store { i64, i8* }* %5612, { i64, i8* }** %5595
  store i1 1, i1* %5596
  br label %merge1151
else1150:
  %5613 = load { i64, i8* }*, { i64, i8* }** %5595
  %5614 = load { i64, i8* }*, { i64, i8* }** %5606
  %5615 = call i1 @ty_eq({ i64, i8* }* %5613, { i64, i8* }* %5614)
  %5616 = xor i1 %5615, true
  br i1 %5616, label %then1152, label %else1153
then1152:
  %5617 = getelementptr [44 x i8], [44 x i8]* @.str698, i32 0, i32 0
  %5618 = call %nyx_string* @nyx_string_from_cstr(i8* %5617)
  %5619 = load %nyx_string*, %nyx_string** %fn_name.ptr
  %5620 = call %nyx_string* @nyx_string_concat(%nyx_string* %5618, %nyx_string* %5619)
  %5621 = getelementptr [26 x i8], [26 x i8]* @.str699, i32 0, i32 0
  %5622 = call %nyx_string* @nyx_string_from_cstr(i8* %5621)
  %5623 = call %nyx_string* @nyx_string_concat(%nyx_string* %5620, %nyx_string* %5622)
  %5624 = load { i64, i8* }*, { i64, i8* }** %5595
  %5625 = call %nyx_string* @ty_to_str({ i64, i8* }* %5624)
  %5626 = call %nyx_string* @nyx_string_concat(%nyx_string* %5623, %nyx_string* %5625)
  %5627 = getelementptr [4 x i8], [4 x i8]* @.str700, i32 0, i32 0
  %5628 = call %nyx_string* @nyx_string_from_cstr(i8* %5627)
  %5629 = call %nyx_string* @nyx_string_concat(%nyx_string* %5626, %nyx_string* %5628)
  %5630 = load { i64, i8* }*, { i64, i8* }** %5606
  %5631 = call %nyx_string* @ty_to_str({ i64, i8* }* %5630)
  %5632 = call %nyx_string* @nyx_string_concat(%nyx_string* %5629, %nyx_string* %5631)
  %5633 = getelementptr [30 x i8], [30 x i8]* @.str701, i32 0, i32 0
  %5634 = call %nyx_string* @nyx_string_from_cstr(i8* %5633)
  %5635 = load %nyx_string*, %nyx_string** %fn_name.ptr
  %5636 = call %nyx_string* @nyx_string_concat(%nyx_string* %5634, %nyx_string* %5635)
  %5637 = getelementptr [24 x i8], [24 x i8]* @.str702, i32 0, i32 0
  %5638 = call %nyx_string* @nyx_string_from_cstr(i8* %5637)
  %5639 = call %nyx_string* @nyx_string_concat(%nyx_string* %5636, %nyx_string* %5638)
  %5640 = load { i64, i8* }*, { i64, i8* }** %5595
  %5641 = call %nyx_string* @ty_to_str({ i64, i8* }* %5640)
  %5642 = call %nyx_string* @nyx_string_concat(%nyx_string* %5639, %nyx_string* %5641)
  %5643 = getelementptr [6 x i8], [6 x i8]* @.str703, i32 0, i32 0
  %5644 = call %nyx_string* @nyx_string_from_cstr(i8* %5643)
  %5645 = call %nyx_string* @nyx_string_concat(%nyx_string* %5642, %nyx_string* %5644)
  %5646 = load { i64, i8* }*, { i64, i8* }** %5606
  %5647 = call %nyx_string* @ty_to_str({ i64, i8* }* %5646)
  %5648 = call %nyx_string* @nyx_string_concat(%nyx_string* %5645, %nyx_string* %5647)
  %5649 = call %nyx_string* @msg(%nyx_string* %5632, %nyx_string* %5648)
  %5650 = call i64 @sem_error(%nyx_string* %5649)
  %5651 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %5651
else1153:
  br label %merge1154
merge1154:
  br label %merge1151
merge1151:
  br label %merge1148
else1147:
  br label %merge1148
merge1148:
  %5652 = load i64, i64* %5597
  %5653 = add i64 %5652, 1
  store i64 %5653, i64* %5597
  br label %while_cond1143
while_end1145:
  %5654 = load i1, i1* %5596
  br i1 %5654, label %then1155, label %else1156
then1155:
  %5655 = load { i64, i8* }*, { i64, i8* }** %5595
  ret { i64, i8* }* %5655
else1156:
  br label %merge1157
merge1157:
  %5656 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %5656
}

define internal i64 @update_fn_sig_return_by_name(
%nyx_string* %name.param, { i64, i8* }* %ret.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %ret.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %ret.param, { i64, i8* }** %ret.ptr
  %5657 = alloca i64
  store i64 0, i64* %5657
  br label %while_cond1158
while_cond1158:
  %5658 = load i64, i64* %5657
  %5659 = load i64, i64* @g_fn_sig_count
  %5660 = icmp slt i64 %5658, %5659
  br i1 %5660, label %while_body1159, label %while_end1160
while_body1159:
  %5661 = load { i64, i8* }*, { i64, i8* }** @g_fn_sig_names
  %5662 = load i64, i64* %5657
  %5663 = call i64 @nyx_array_get({ i64, i8* }* %5661, i64 %5662)
  %5664 = inttoptr i64 %5663 to %nyx_string*
  %5665 = alloca %nyx_string*
  store %nyx_string* %5664, %nyx_string** %5665
  %5666 = load %nyx_string*, %nyx_string** %5665
  %5667 = load %nyx_string*, %nyx_string** %name.ptr
  %5668 = call i8* @nyx_string_to_cstr(%nyx_string* %5666)
  %5669 = call i8* @nyx_string_to_cstr(%nyx_string* %5667)
  %5670 = call i32 @strcmp(i8* %5668, i8* %5669)
  %5671 = icmp eq i32 %5670, 0
  br i1 %5671, label %then1161, label %else1162
then1161:
  %5672 = load { i64, i8* }*, { i64, i8* }** @g_fn_sig_returns
  %5673 = load i64, i64* %5657
  %5674 = call i64 @nyx_array_get({ i64, i8* }* %5672, i64 %5673)
  %5675 = inttoptr i64 %5674 to { i64, i8* }*
  %5676 = alloca { i64, i8* }*
  store { i64, i8* }* %5675, { i64, i8* }** %5676
  %5677 = load { i64, i8* }*, { i64, i8* }** %5676
  %5678 = call i1 @ty_is_unknown({ i64, i8* }* %5677)
  br i1 %5678, label %then1164, label %else1165
then1164:
  %5679 = load { i64, i8* }*, { i64, i8* }** @g_fn_sig_returns
  %5680 = load i64, i64* %5657
  %5681 = load { i64, i8* }*, { i64, i8* }** %ret.ptr
  %5682 = ptrtoint { i64, i8* }* %5681 to i64
  call void @nyx_array_set({ i64, i8* }* %5679, i64 %5680, i64 %5682)
  ret i64 0
else1165:
  br label %merge1166
merge1166:
  br label %merge1163
else1162:
  br label %merge1163
merge1163:
  %5683 = load i64, i64* %5657
  %5684 = add i64 %5683, 1
  store i64 %5684, i64* %5657
  br label %while_cond1158
while_end1160:
  ret i64 0
}

define internal i1 @validate_function(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %5685 = load %ASTNode, %ASTNode* %node.ptr
  %5686 = call %nyx_string* @get_string_at(%ASTNode %5685, i64 0)
  %5687 = alloca %nyx_string*
  store %nyx_string* %5686, %nyx_string** %5687
  %5688 = load %ASTNode, %ASTNode* %node.ptr
  %5689 = call { i64, i8* }* @get_array_at(%ASTNode %5688, i64 1)
  %5690 = alloca { i64, i8* }*
  store { i64, i8* }* %5689, { i64, i8* }** %5690
  %5691 = load %ASTNode, %ASTNode* %node.ptr
  %5692 = call %nyx_string* @get_string_at(%ASTNode %5691, i64 2)
  %5693 = alloca %nyx_string*
  store %nyx_string* %5692, %nyx_string** %5693
  %5694 = load %ASTNode, %ASTNode* %node.ptr
  %5695 = call %ASTNode @get_node_at(%ASTNode %5694, i64 3)
  %5696 = alloca %ASTNode
  store %ASTNode %5695, %ASTNode* %5696
  %5697 = load i64, i64* @g_in_function
  %5698 = alloca i64
  store i64 %5697, i64* %5698
  %5699 = load i64, i64* @g_in_loop
  %5700 = alloca i64
  store i64 %5699, i64* %5700
  %5701 = load %nyx_string*, %nyx_string** @g_current_fn
  %5702 = alloca %nyx_string*
  store %nyx_string* %5701, %nyx_string** %5702
  %5703 = load { i64, i8* }*, { i64, i8* }** @g_current_fn_ret_type
  %5704 = alloca { i64, i8* }*
  store { i64, i8* }* %5703, { i64, i8* }** %5704
  store i64 1, i64* @g_in_function
  store i64 0, i64* @g_in_loop
  %5705 = load %nyx_string*, %nyx_string** %5687
  store %nyx_string* %5705, %nyx_string** @g_current_fn
  %5706 = call { i64, i8* }* @ty_unknown()
  %5707 = alloca { i64, i8* }*
  store { i64, i8* }* %5706, { i64, i8* }** %5707
  %5708 = load %nyx_string*, %nyx_string** %5693
  %5709 = getelementptr [1 x i8], [1 x i8]* @.str704, i32 0, i32 0
  %5710 = call %nyx_string* @nyx_string_from_cstr(i8* %5709)
  %5711 = call i8* @nyx_string_to_cstr(%nyx_string* %5708)
  %5712 = call i8* @nyx_string_to_cstr(%nyx_string* %5710)
  %5713 = call i32 @strcmp(i8* %5711, i8* %5712)
  %5714 = icmp ne i32 %5713, 0
  br i1 %5714, label %then1167, label %else1168
then1167:
  %5715 = load %nyx_string*, %nyx_string** %5693
  %5716 = getelementptr [5 x i8], [5 x i8]* @.str705, i32 0, i32 0
  %5717 = call %nyx_string* @nyx_string_from_cstr(i8* %5716)
  %5718 = call i8* @nyx_string_to_cstr(%nyx_string* %5715)
  %5719 = call i8* @nyx_string_to_cstr(%nyx_string* %5717)
  %5720 = call i32 @strcmp(i8* %5718, i8* %5719)
  %5721 = icmp ne i32 %5720, 0
  br i1 %5721, label %then1170, label %else1171
then1170:
  %5722 = load %nyx_string*, %nyx_string** %5693
  %5723 = call { i64, i8* }* @validate_type_ann(%nyx_string* %5722)
  store { i64, i8* }* %5723, { i64, i8* }** %5707
  br label %merge1172
else1171:
  br label %merge1172
merge1172:
  br label %merge1169
else1168:
  br label %merge1169
merge1169:
  %5724 = load { i64, i8* }*, { i64, i8* }** %5707
  store { i64, i8* }* %5724, { i64, i8* }** @g_current_fn_ret_type
  %5725 = call i64 @scope_push()
  %5726 = alloca i64
  store i64 0, i64* %5726
  br label %while_cond1173
while_cond1173:
  %5727 = load i64, i64* %5726
  %5728 = load { i64, i8* }*, { i64, i8* }** %5690
  %5729 = call i64 @nyx_array_length({ i64, i8* }* %5728)
  %5730 = icmp slt i64 %5727, %5729
  br i1 %5730, label %while_body1174, label %while_end1175
while_body1174:
  %5731 = load { i64, i8* }*, { i64, i8* }** %5690
  %5732 = load i64, i64* %5726
  %5733 = call i64 @nyx_array_get({ i64, i8* }* %5731, i64 %5732)
  %5734 = inttoptr i64 %5733 to { i64, i8* }*
  %5735 = alloca { i64, i8* }*
  store { i64, i8* }* %5734, { i64, i8* }** %5735
  %5736 = load { i64, i8* }*, { i64, i8* }** %5735
  %5737 = call i64 @nyx_array_get({ i64, i8* }* %5736, i64 0)
  %5738 = inttoptr i64 %5737 to %nyx_string*
  %5739 = alloca %nyx_string*
  store %nyx_string* %5738, %nyx_string** %5739
  %5740 = load %nyx_string*, %nyx_string** %5739
  %5741 = getelementptr [6 x i8], [6 x i8]* @.str706, i32 0, i32 0
  %5742 = call %nyx_string* @nyx_string_from_cstr(i8* %5741)
  %5743 = call i64 @scope_declare(%nyx_string* %5740, %nyx_string* %5742)
  %5744 = load { i64, i8* }*, { i64, i8* }** %5735
  %5745 = call i64 @nyx_array_get({ i64, i8* }* %5744, i64 1)
  %5746 = inttoptr i64 %5745 to %nyx_string*
  %5747 = alloca %nyx_string*
  store %nyx_string* %5746, %nyx_string** %5747
  %5748 = load %nyx_string*, %nyx_string** %5747
  %5749 = getelementptr [1 x i8], [1 x i8]* @.str707, i32 0, i32 0
  %5750 = call %nyx_string* @nyx_string_from_cstr(i8* %5749)
  %5751 = call i8* @nyx_string_to_cstr(%nyx_string* %5748)
  %5752 = call i8* @nyx_string_to_cstr(%nyx_string* %5750)
  %5753 = call i32 @strcmp(i8* %5751, i8* %5752)
  %5754 = icmp ne i32 %5753, 0
  br i1 %5754, label %then1176, label %else1177
then1176:
  %5755 = alloca i1
  store i1 0, i1* %5755
  %5756 = load %nyx_string*, %nyx_string** %5747
  %5757 = call i64 @nyx_string_length_utf8(%nyx_string* %5756)
  %5758 = icmp sge i64 %5757, 3
  br i1 %5758, label %then1179, label %else1180
then1179:
  %5759 = load %nyx_string*, %nyx_string** %5747
  %5760 = call %nyx_string* @nyx_string_substring(%nyx_string* %5759, i64 0, i64 3)
  %5761 = getelementptr [4 x i8], [4 x i8]* @.str708, i32 0, i32 0
  %5762 = call %nyx_string* @nyx_string_from_cstr(i8* %5761)
  %5763 = call i8* @nyx_string_to_cstr(%nyx_string* %5760)
  %5764 = call i8* @nyx_string_to_cstr(%nyx_string* %5762)
  %5765 = call i32 @strcmp(i8* %5763, i8* %5764)
  %5766 = icmp eq i32 %5765, 0
  br i1 %5766, label %then1182, label %else1183
then1182:
  store i1 1, i1* %5755
  br label %merge1184
else1183:
  br label %merge1184
merge1184:
  br label %merge1181
else1180:
  br label %merge1181
merge1181:
  %5767 = load i1, i1* %5755
  %5768 = xor i1 %5767, true
  br i1 %5768, label %then1185, label %else1186
then1185:
  %5769 = load %nyx_string*, %nyx_string** %5747
  %5770 = call { i64, i8* }* @validate_type_ann(%nyx_string* %5769)
  %5771 = alloca { i64, i8* }*
  store { i64, i8* }* %5770, { i64, i8* }** %5771
  %5772 = load { i64, i8* }*, { i64, i8* }** %5771
  %5773 = call i64 @set_last_var_type({ i64, i8* }* %5772)
  br label %merge1187
else1186:
  br label %merge1187
merge1187:
  br label %merge1178
else1177:
  br label %merge1178
merge1178:
  %5774 = load i64, i64* %5726
  %5775 = add i64 %5774, 1
  store i64 %5775, i64* %5726
  br label %while_cond1173
while_end1175:
  %5776 = load %ASTNode, %ASTNode* %5696
  %5777 = call i1 @validate_node(%ASTNode %5776)
  %5778 = alloca i1
  store i1 %5777, i1* %5778
  %5779 = call i64 @scope_pop()
  %5780 = alloca i1
  store i1 false, i1* %5780
  %5781 = alloca i1
  store i1 false, i1* %5781
  %5782 = load i1, i1* %5778
  br i1 %5782, label %sc_and_rhs1188, label %sc_and_end1189
sc_and_rhs1188:
  %5783 = load %nyx_string*, %nyx_string** %5693
  %5784 = getelementptr [1 x i8], [1 x i8]* @.str709, i32 0, i32 0
  %5785 = call %nyx_string* @nyx_string_from_cstr(i8* %5784)
  %5786 = call i8* @nyx_string_to_cstr(%nyx_string* %5783)
  %5787 = call i8* @nyx_string_to_cstr(%nyx_string* %5785)
  %5788 = call i32 @strcmp(i8* %5786, i8* %5787)
  %5789 = icmp ne i32 %5788, 0
  store i1 %5789, i1* %5781
  br label %sc_and_end1189
sc_and_end1189:
  %5790 = load i1, i1* %5781
  br i1 %5790, label %sc_and_rhs1190, label %sc_and_end1191
sc_and_rhs1190:
  %5791 = load %nyx_string*, %nyx_string** %5693
  %5792 = getelementptr [5 x i8], [5 x i8]* @.str710, i32 0, i32 0
  %5793 = call %nyx_string* @nyx_string_from_cstr(i8* %5792)
  %5794 = call i8* @nyx_string_to_cstr(%nyx_string* %5791)
  %5795 = call i8* @nyx_string_to_cstr(%nyx_string* %5793)
  %5796 = call i32 @strcmp(i8* %5794, i8* %5795)
  %5797 = icmp ne i32 %5796, 0
  store i1 %5797, i1* %5780
  br label %sc_and_end1191
sc_and_end1191:
  %5798 = load i1, i1* %5780
  br i1 %5798, label %then1192, label %else1193
then1192:
  %5799 = load %ASTNode, %ASTNode* %5696
  %5800 = call i1 @block_ends_with_return(%ASTNode %5799)
  %5801 = xor i1 %5800, true
  br i1 %5801, label %then1195, label %else1196
then1195:
  %5802 = getelementptr [11 x i8], [11 x i8]* @.str711, i32 0, i32 0
  %5803 = call %nyx_string* @nyx_string_from_cstr(i8* %5802)
  %5804 = load %nyx_string*, %nyx_string** %5687
  %5805 = call %nyx_string* @nyx_string_concat(%nyx_string* %5803, %nyx_string* %5804)
  %5806 = getelementptr [20 x i8], [20 x i8]* @.str712, i32 0, i32 0
  %5807 = call %nyx_string* @nyx_string_from_cstr(i8* %5806)
  %5808 = call %nyx_string* @nyx_string_concat(%nyx_string* %5805, %nyx_string* %5807)
  %5809 = load %nyx_string*, %nyx_string** %5693
  %5810 = call %nyx_string* @nyx_string_concat(%nyx_string* %5808, %nyx_string* %5809)
  %5811 = getelementptr [46 x i8], [46 x i8]* @.str713, i32 0, i32 0
  %5812 = call %nyx_string* @nyx_string_from_cstr(i8* %5811)
  %5813 = call %nyx_string* @nyx_string_concat(%nyx_string* %5810, %nyx_string* %5812)
  %5814 = getelementptr [11 x i8], [11 x i8]* @.str714, i32 0, i32 0
  %5815 = call %nyx_string* @nyx_string_from_cstr(i8* %5814)
  %5816 = load %nyx_string*, %nyx_string** %5687
  %5817 = call %nyx_string* @nyx_string_concat(%nyx_string* %5815, %nyx_string* %5816)
  %5818 = getelementptr [25 x i8], [25 x i8]* @.str715, i32 0, i32 0
  %5819 = call %nyx_string* @nyx_string_from_cstr(i8* %5818)
  %5820 = call %nyx_string* @nyx_string_concat(%nyx_string* %5817, %nyx_string* %5819)
  %5821 = load %nyx_string*, %nyx_string** %5693
  %5822 = call %nyx_string* @nyx_string_concat(%nyx_string* %5820, %nyx_string* %5821)
  %5823 = getelementptr [35 x i8], [35 x i8]* @.str716, i32 0, i32 0
  %5824 = call %nyx_string* @nyx_string_from_cstr(i8* %5823)
  %5825 = call %nyx_string* @nyx_string_concat(%nyx_string* %5822, %nyx_string* %5824)
  %5826 = call %nyx_string* @msg(%nyx_string* %5813, %nyx_string* %5825)
  %5827 = call i64 @sem_error(%nyx_string* %5826)
  store i1 0, i1* %5778
  br label %merge1197
else1196:
  br label %merge1197
merge1197:
  br label %merge1194
else1193:
  br label %merge1194
merge1194:
  %5828 = load i1, i1* %5778
  br i1 %5828, label %then1198, label %else1199
then1198:
  %5829 = load %nyx_string*, %nyx_string** %5693
  %5830 = getelementptr [1 x i8], [1 x i8]* @.str717, i32 0, i32 0
  %5831 = call %nyx_string* @nyx_string_from_cstr(i8* %5830)
  %5832 = call i8* @nyx_string_to_cstr(%nyx_string* %5829)
  %5833 = call i8* @nyx_string_to_cstr(%nyx_string* %5831)
  %5834 = call i32 @strcmp(i8* %5832, i8* %5833)
  %5835 = icmp eq i32 %5834, 0
  br i1 %5835, label %then1201, label %else1202
then1201:
  %5836 = call { i64, i8* }* @nyx_array_new_ptr()
  %5837 = alloca { i64, i8* }*
  store { i64, i8* }* %5836, { i64, i8* }** %5837
  %5838 = load %ASTNode, %ASTNode* %5696
  %5839 = load { i64, i8* }*, { i64, i8* }** %5837
  %5840 = call i64 @collect_return_types(%ASTNode %5838, { i64, i8* }* %5839)
  %5841 = load { i64, i8* }*, { i64, i8* }** %5837
  %5842 = load %nyx_string*, %nyx_string** %5687
  %5843 = call { i64, i8* }* @infer_fn_return_type({ i64, i8* }* %5841, %nyx_string* %5842)
  %5844 = alloca { i64, i8* }*
  store { i64, i8* }* %5843, { i64, i8* }** %5844
  %5845 = load { i64, i8* }*, { i64, i8* }** %5844
  %5846 = call i1 @ty_is_unknown({ i64, i8* }* %5845)
  %5847 = xor i1 %5846, true
  br i1 %5847, label %then1204, label %else1205
then1204:
  %5848 = load %nyx_string*, %nyx_string** %5687
  %5849 = load { i64, i8* }*, { i64, i8* }** %5844
  %5850 = call i64 @update_fn_sig_return_by_name(%nyx_string* %5848, { i64, i8* }* %5849)
  %5851 = load { i64, i8* }*, { i64, i8* }** %5844
  %5852 = call %nyx_string* @ty_to_type_ann({ i64, i8* }* %5851)
  %5853 = alloca %nyx_string*
  store %nyx_string* %5852, %nyx_string** %5853
  %5854 = load %nyx_string*, %nyx_string** %5853
  %5855 = getelementptr [1 x i8], [1 x i8]* @.str718, i32 0, i32 0
  %5856 = call %nyx_string* @nyx_string_from_cstr(i8* %5855)
  %5857 = call i8* @nyx_string_to_cstr(%nyx_string* %5854)
  %5858 = call i8* @nyx_string_to_cstr(%nyx_string* %5856)
  %5859 = call i32 @strcmp(i8* %5857, i8* %5858)
  %5860 = icmp ne i32 %5859, 0
  br i1 %5860, label %then1207, label %else1208
then1207:
  %5861 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %5862 = load { i64, i8* }*, { i64, i8* }** %5861
  %5863 = alloca { i64, i8* }*
  store { i64, i8* }* %5862, { i64, i8* }** %5863
  %5864 = load { i64, i8* }*, { i64, i8* }** %5863
  %5865 = load %nyx_string*, %nyx_string** %5853
  %5866 = ptrtoint %nyx_string* %5865 to i64
  call void @nyx_array_set({ i64, i8* }* %5864, i64 2, i64 %5866)
  br label %merge1209
else1208:
  br label %merge1209
merge1209:
  %5867 = load { i64, i8* }*, { i64, i8* }** %5844
  %5868 = call { i64, i8* }* @ty_unit()
  %5869 = call i1 @ty_eq({ i64, i8* }* %5867, { i64, i8* }* %5868)
  %5870 = xor i1 %5869, true
  br i1 %5870, label %then1210, label %else1211
then1210:
  %5871 = load %ASTNode, %ASTNode* %5696
  %5872 = call i1 @block_ends_with_return(%ASTNode %5871)
  %5873 = xor i1 %5872, true
  br i1 %5873, label %then1213, label %else1214
then1213:
  %5874 = getelementptr [11 x i8], [11 x i8]* @.str719, i32 0, i32 0
  %5875 = call %nyx_string* @nyx_string_from_cstr(i8* %5874)
  %5876 = load %nyx_string*, %nyx_string** %5687
  %5877 = call %nyx_string* @nyx_string_concat(%nyx_string* %5875, %nyx_string* %5876)
  %5878 = getelementptr [20 x i8], [20 x i8]* @.str720, i32 0, i32 0
  %5879 = call %nyx_string* @nyx_string_from_cstr(i8* %5878)
  %5880 = call %nyx_string* @nyx_string_concat(%nyx_string* %5877, %nyx_string* %5879)
  %5881 = load { i64, i8* }*, { i64, i8* }** %5844
  %5882 = call %nyx_string* @ty_to_str({ i64, i8* }* %5881)
  %5883 = call %nyx_string* @nyx_string_concat(%nyx_string* %5880, %nyx_string* %5882)
  %5884 = getelementptr [46 x i8], [46 x i8]* @.str721, i32 0, i32 0
  %5885 = call %nyx_string* @nyx_string_from_cstr(i8* %5884)
  %5886 = call %nyx_string* @nyx_string_concat(%nyx_string* %5883, %nyx_string* %5885)
  %5887 = getelementptr [11 x i8], [11 x i8]* @.str722, i32 0, i32 0
  %5888 = call %nyx_string* @nyx_string_from_cstr(i8* %5887)
  %5889 = load %nyx_string*, %nyx_string** %5687
  %5890 = call %nyx_string* @nyx_string_concat(%nyx_string* %5888, %nyx_string* %5889)
  %5891 = getelementptr [23 x i8], [23 x i8]* @.str723, i32 0, i32 0
  %5892 = call %nyx_string* @nyx_string_from_cstr(i8* %5891)
  %5893 = call %nyx_string* @nyx_string_concat(%nyx_string* %5890, %nyx_string* %5892)
  %5894 = load { i64, i8* }*, { i64, i8* }** %5844
  %5895 = call %nyx_string* @ty_to_str({ i64, i8* }* %5894)
  %5896 = call %nyx_string* @nyx_string_concat(%nyx_string* %5893, %nyx_string* %5895)
  %5897 = getelementptr [35 x i8], [35 x i8]* @.str724, i32 0, i32 0
  %5898 = call %nyx_string* @nyx_string_from_cstr(i8* %5897)
  %5899 = call %nyx_string* @nyx_string_concat(%nyx_string* %5896, %nyx_string* %5898)
  %5900 = call %nyx_string* @msg(%nyx_string* %5886, %nyx_string* %5899)
  %5901 = call i64 @sem_error(%nyx_string* %5900)
  store i1 0, i1* %5778
  br label %merge1215
else1214:
  br label %merge1215
merge1215:
  br label %merge1212
else1211:
  br label %merge1212
merge1212:
  br label %merge1206
else1205:
  br label %merge1206
merge1206:
  br label %merge1203
else1202:
  br label %merge1203
merge1203:
  br label %merge1200
else1199:
  br label %merge1200
merge1200:
  %5902 = load i64, i64* %5698
  store i64 %5902, i64* @g_in_function
  %5903 = load i64, i64* %5700
  store i64 %5903, i64* @g_in_loop
  %5904 = load %nyx_string*, %nyx_string** %5702
  store %nyx_string* %5904, %nyx_string** @g_current_fn
  %5905 = load { i64, i8* }*, { i64, i8* }** %5704
  store { i64, i8* }* %5905, { i64, i8* }** @g_current_fn_ret_type
  %5906 = load i1, i1* %5778
  ret i1 %5906
}

define internal i1 @validate_if(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %5907 = load %ASTNode, %ASTNode* %node.ptr
  %5908 = call %ASTNode @get_node_at(%ASTNode %5907, i64 0)
  %5909 = alloca %ASTNode
  store %ASTNode %5908, %ASTNode* %5909
  %5910 = load %ASTNode, %ASTNode* %node.ptr
  %5911 = call %ASTNode @get_node_at(%ASTNode %5910, i64 1)
  %5912 = alloca %ASTNode
  store %ASTNode %5911, %ASTNode* %5912
  %5913 = load %ASTNode, %ASTNode* %node.ptr
  %5914 = call %ASTNode @get_node_at(%ASTNode %5913, i64 2)
  %5915 = alloca %ASTNode
  store %ASTNode %5914, %ASTNode* %5915
  %5916 = load %ASTNode, %ASTNode* %5909
  %5917 = call i1 @validate_node(%ASTNode %5916)
  %5918 = xor i1 %5917, true
  br i1 %5918, label %then1216, label %else1217
then1216:
  ret i1 0
else1217:
  br label %merge1218
merge1218:
  %5919 = call i64 @scope_push()
  %5920 = load %ASTNode, %ASTNode* %5912
  %5921 = call i1 @validate_node(%ASTNode %5920)
  %5922 = xor i1 %5921, true
  br i1 %5922, label %then1219, label %else1220
then1219:
  %5923 = call i64 @scope_pop()
  ret i1 0
else1220:
  br label %merge1221
merge1221:
  %5924 = call i64 @scope_pop()
  %5925 = getelementptr %ASTNode, %ASTNode* %5915, i32 0, i32 0
  %5926 = load %nyx_string*, %nyx_string** %5925
  %5927 = getelementptr [6 x i8], [6 x i8]* @.str725, i32 0, i32 0
  %5928 = call %nyx_string* @nyx_string_from_cstr(i8* %5927)
  %5929 = call i8* @nyx_string_to_cstr(%nyx_string* %5926)
  %5930 = call i8* @nyx_string_to_cstr(%nyx_string* %5928)
  %5931 = call i32 @strcmp(i8* %5929, i8* %5930)
  %5932 = icmp ne i32 %5931, 0
  br i1 %5932, label %then1222, label %else1223
then1222:
  %5933 = call i64 @scope_push()
  %5934 = load %ASTNode, %ASTNode* %5915
  %5935 = call i1 @validate_node(%ASTNode %5934)
  %5936 = xor i1 %5935, true
  br i1 %5936, label %then1225, label %else1226
then1225:
  %5937 = call i64 @scope_pop()
  ret i1 0
else1226:
  br label %merge1227
merge1227:
  %5938 = call i64 @scope_pop()
  br label %merge1224
else1223:
  br label %merge1224
merge1224:
  ret i1 1
}

define internal i1 @validate_while(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %5939 = load %ASTNode, %ASTNode* %node.ptr
  %5940 = call %ASTNode @get_node_at(%ASTNode %5939, i64 0)
  %5941 = alloca %ASTNode
  store %ASTNode %5940, %ASTNode* %5941
  %5942 = load %ASTNode, %ASTNode* %node.ptr
  %5943 = call %ASTNode @get_node_at(%ASTNode %5942, i64 1)
  %5944 = alloca %ASTNode
  store %ASTNode %5943, %ASTNode* %5944
  %5945 = load %ASTNode, %ASTNode* %5941
  %5946 = call i1 @validate_node(%ASTNode %5945)
  %5947 = xor i1 %5946, true
  br i1 %5947, label %then1228, label %else1229
then1228:
  ret i1 0
else1229:
  br label %merge1230
merge1230:
  %5948 = load i64, i64* @g_in_loop
  %5949 = alloca i64
  store i64 %5948, i64* %5949
  store i64 1, i64* @g_in_loop
  %5950 = call i64 @scope_push()
  %5951 = load %ASTNode, %ASTNode* %5944
  %5952 = call i1 @validate_node(%ASTNode %5951)
  %5953 = alloca i1
  store i1 %5952, i1* %5953
  %5954 = call i64 @scope_pop()
  %5955 = load i64, i64* %5949
  store i64 %5955, i64* @g_in_loop
  %5956 = load i1, i1* %5953
  ret i1 %5956
}

define internal i1 @validate_for(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %5957 = load %ASTNode, %ASTNode* %node.ptr
  %5958 = call %nyx_string* @get_string_at(%ASTNode %5957, i64 0)
  %5959 = alloca %nyx_string*
  store %nyx_string* %5958, %nyx_string** %5959
  %5960 = load %ASTNode, %ASTNode* %node.ptr
  %5961 = call %ASTNode @get_node_at(%ASTNode %5960, i64 1)
  %5962 = alloca %ASTNode
  store %ASTNode %5961, %ASTNode* %5962
  %5963 = load %ASTNode, %ASTNode* %node.ptr
  %5964 = call %ASTNode @get_node_at(%ASTNode %5963, i64 2)
  %5965 = alloca %ASTNode
  store %ASTNode %5964, %ASTNode* %5965
  %5966 = load %ASTNode, %ASTNode* %5962
  %5967 = call i1 @validate_node(%ASTNode %5966)
  %5968 = xor i1 %5967, true
  br i1 %5968, label %then1231, label %else1232
then1231:
  ret i1 0
else1232:
  br label %merge1233
merge1233:
  %5969 = load i64, i64* @g_in_loop
  %5970 = alloca i64
  store i64 %5969, i64* %5970
  store i64 1, i64* @g_in_loop
  %5971 = call i64 @scope_push()
  %5972 = load %nyx_string*, %nyx_string** %5959
  %5973 = getelementptr [8 x i8], [8 x i8]* @.str726, i32 0, i32 0
  %5974 = call %nyx_string* @nyx_string_from_cstr(i8* %5973)
  %5975 = call i64 @scope_declare(%nyx_string* %5972, %nyx_string* %5974)
  %5976 = load %ASTNode, %ASTNode* %5962
  %5977 = call { i64, i8* }* @ty_of_expr(%ASTNode %5976)
  %5978 = alloca { i64, i8* }*
  store { i64, i8* }* %5977, { i64, i8* }** %5978
  %5979 = load { i64, i8* }*, { i64, i8* }** %5978
  %5980 = call %nyx_string* @ty_kind({ i64, i8* }* %5979)
  %5981 = alloca %nyx_string*
  store %nyx_string* %5980, %nyx_string** %5981
  %5982 = load %nyx_string*, %nyx_string** %5981
  %5983 = getelementptr [8 x i8], [8 x i8]* @.str727, i32 0, i32 0
  %5984 = call %nyx_string* @nyx_string_from_cstr(i8* %5983)
  %5985 = call i8* @nyx_string_to_cstr(%nyx_string* %5982)
  %5986 = call i8* @nyx_string_to_cstr(%nyx_string* %5984)
  %5987 = call i32 @strcmp(i8* %5985, i8* %5986)
  %5988 = icmp eq i32 %5987, 0
  br i1 %5988, label %then1234, label %else1235
then1234:
  %5989 = load { i64, i8* }*, { i64, i8* }** %5978
  %5990 = call i64 @nyx_array_get({ i64, i8* }* %5989, i64 1)
  %5991 = inttoptr i64 %5990 to { i64, i8* }*
  %5992 = alloca { i64, i8* }*
  store { i64, i8* }* %5991, { i64, i8* }** %5992
  %5993 = load { i64, i8* }*, { i64, i8* }** %5992
  %5994 = call i64 @set_last_var_type({ i64, i8* }* %5993)
  br label %merge1236
else1235:
  br label %merge1236
merge1236:
  %5995 = load %nyx_string*, %nyx_string** %5981
  %5996 = getelementptr [6 x i8], [6 x i8]* @.str728, i32 0, i32 0
  %5997 = call %nyx_string* @nyx_string_from_cstr(i8* %5996)
  %5998 = call i8* @nyx_string_to_cstr(%nyx_string* %5995)
  %5999 = call i8* @nyx_string_to_cstr(%nyx_string* %5997)
  %6000 = call i32 @strcmp(i8* %5998, i8* %5999)
  %6001 = icmp eq i32 %6000, 0
  br i1 %6001, label %then1237, label %else1238
then1237:
  %6002 = load { i64, i8* }*, { i64, i8* }** %5978
  %6003 = call i64 @nyx_array_get({ i64, i8* }* %6002, i64 1)
  %6004 = inttoptr i64 %6003 to { i64, i8* }*
  %6005 = alloca { i64, i8* }*
  store { i64, i8* }* %6004, { i64, i8* }** %6005
  %6006 = load { i64, i8* }*, { i64, i8* }** %6005
  %6007 = call i64 @set_last_var_type({ i64, i8* }* %6006)
  br label %merge1239
else1238:
  br label %merge1239
merge1239:
  %6008 = load %nyx_string*, %nyx_string** %5981
  %6009 = getelementptr [9 x i8], [9 x i8]* @.str729, i32 0, i32 0
  %6010 = call %nyx_string* @nyx_string_from_cstr(i8* %6009)
  %6011 = call i8* @nyx_string_to_cstr(%nyx_string* %6008)
  %6012 = call i8* @nyx_string_to_cstr(%nyx_string* %6010)
  %6013 = call i32 @strcmp(i8* %6011, i8* %6012)
  %6014 = icmp eq i32 %6013, 0
  br i1 %6014, label %then1240, label %else1241
then1240:
  %6015 = call { i64, i8* }* @ty_char()
  %6016 = call i64 @set_last_var_type({ i64, i8* }* %6015)
  br label %merge1242
else1241:
  br label %merge1242
merge1242:
  %6017 = load %ASTNode, %ASTNode* %5965
  %6018 = call i1 @validate_node(%ASTNode %6017)
  %6019 = alloca i1
  store i1 %6018, i1* %6019
  %6020 = call i64 @scope_pop()
  %6021 = load i64, i64* %5970
  store i64 %6021, i64* @g_in_loop
  %6022 = load i1, i1* %6019
  ret i1 %6022
}

define internal i1 @validate_return(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %6023 = load i64, i64* @g_in_function
  %6024 = icmp eq i64 %6023, 0
  br i1 %6024, label %then1243, label %else1244
then1243:
  %6025 = getelementptr [27 x i8], [27 x i8]* @.str730, i32 0, i32 0
  %6026 = call %nyx_string* @nyx_string_from_cstr(i8* %6025)
  %6027 = getelementptr [29 x i8], [29 x i8]* @.str731, i32 0, i32 0
  %6028 = call %nyx_string* @nyx_string_from_cstr(i8* %6027)
  %6029 = call %nyx_string* @msg(%nyx_string* %6026, %nyx_string* %6028)
  %6030 = call i64 @sem_error(%nyx_string* %6029)
  ret i1 0
else1244:
  br label %merge1245
merge1245:
  %6031 = load %ASTNode, %ASTNode* %node.ptr
  %6032 = call %ASTNode @get_node_at(%ASTNode %6031, i64 0)
  %6033 = alloca %ASTNode
  store %ASTNode %6032, %ASTNode* %6033
  %6034 = load %ASTNode, %ASTNode* %6033
  %6035 = call i1 @validate_node(%ASTNode %6034)
  %6036 = xor i1 %6035, true
  br i1 %6036, label %then1246, label %else1247
then1246:
  ret i1 0
else1247:
  br label %merge1248
merge1248:
  %6037 = load { i64, i8* }*, { i64, i8* }** @g_current_fn_ret_type
  %6038 = call i1 @ty_is_unknown({ i64, i8* }* %6037)
  %6039 = xor i1 %6038, true
  br i1 %6039, label %then1249, label %else1250
then1249:
  %6040 = load %ASTNode, %ASTNode* %6033
  %6041 = call { i64, i8* }* @ty_of_expr(%ASTNode %6040)
  %6042 = alloca { i64, i8* }*
  store { i64, i8* }* %6041, { i64, i8* }** %6042
  %6043 = load { i64, i8* }*, { i64, i8* }** %6042
  %6044 = call i1 @ty_is_unknown({ i64, i8* }* %6043)
  %6045 = xor i1 %6044, true
  br i1 %6045, label %then1252, label %else1253
then1252:
  %6046 = load { i64, i8* }*, { i64, i8* }** @g_current_fn_ret_type
  %6047 = load { i64, i8* }*, { i64, i8* }** %6042
  %6048 = call i1 @ty_eq({ i64, i8* }* %6046, { i64, i8* }* %6047)
  %6049 = xor i1 %6048, true
  br i1 %6049, label %then1255, label %else1256
then1255:
  %6050 = getelementptr [34 x i8], [34 x i8]* @.str732, i32 0, i32 0
  %6051 = call %nyx_string* @nyx_string_from_cstr(i8* %6050)
  %6052 = load %nyx_string*, %nyx_string** @g_current_fn
  %6053 = call %nyx_string* @nyx_string_concat(%nyx_string* %6051, %nyx_string* %6052)
  %6054 = getelementptr [16 x i8], [16 x i8]* @.str733, i32 0, i32 0
  %6055 = call %nyx_string* @nyx_string_from_cstr(i8* %6054)
  %6056 = call %nyx_string* @nyx_string_concat(%nyx_string* %6053, %nyx_string* %6055)
  %6057 = load { i64, i8* }*, { i64, i8* }** @g_current_fn_ret_type
  %6058 = call %nyx_string* @ty_to_str({ i64, i8* }* %6057)
  %6059 = call %nyx_string* @nyx_string_concat(%nyx_string* %6056, %nyx_string* %6058)
  %6060 = getelementptr [13 x i8], [13 x i8]* @.str734, i32 0, i32 0
  %6061 = call %nyx_string* @nyx_string_from_cstr(i8* %6060)
  %6062 = call %nyx_string* @nyx_string_concat(%nyx_string* %6059, %nyx_string* %6061)
  %6063 = load { i64, i8* }*, { i64, i8* }** %6042
  %6064 = call %nyx_string* @ty_to_str({ i64, i8* }* %6063)
  %6065 = call %nyx_string* @nyx_string_concat(%nyx_string* %6062, %nyx_string* %6064)
  %6066 = getelementptr [26 x i8], [26 x i8]* @.str735, i32 0, i32 0
  %6067 = call %nyx_string* @nyx_string_from_cstr(i8* %6066)
  %6068 = load %nyx_string*, %nyx_string** @g_current_fn
  %6069 = call %nyx_string* @nyx_string_concat(%nyx_string* %6067, %nyx_string* %6068)
  %6070 = getelementptr [13 x i8], [13 x i8]* @.str736, i32 0, i32 0
  %6071 = call %nyx_string* @nyx_string_from_cstr(i8* %6070)
  %6072 = call %nyx_string* @nyx_string_concat(%nyx_string* %6069, %nyx_string* %6071)
  %6073 = load { i64, i8* }*, { i64, i8* }** @g_current_fn_ret_type
  %6074 = call %nyx_string* @ty_to_str({ i64, i8* }* %6073)
  %6075 = call %nyx_string* @nyx_string_concat(%nyx_string* %6072, %nyx_string* %6074)
  %6076 = getelementptr [7 x i8], [7 x i8]* @.str737, i32 0, i32 0
  %6077 = call %nyx_string* @nyx_string_from_cstr(i8* %6076)
  %6078 = call %nyx_string* @nyx_string_concat(%nyx_string* %6075, %nyx_string* %6077)
  %6079 = load { i64, i8* }*, { i64, i8* }** %6042
  %6080 = call %nyx_string* @ty_to_str({ i64, i8* }* %6079)
  %6081 = call %nyx_string* @nyx_string_concat(%nyx_string* %6078, %nyx_string* %6080)
  %6082 = call %nyx_string* @msg(%nyx_string* %6065, %nyx_string* %6081)
  %6083 = call i64 @sem_error(%nyx_string* %6082)
  ret i1 0
else1256:
  br label %merge1257
merge1257:
  %6084 = load { i64, i8* }*, { i64, i8* }** @g_current_fn_ret_type
  %6085 = load { i64, i8* }*, { i64, i8* }** %6042
  %6086 = load %nyx_string*, %nyx_string** @g_current_fn
  %6087 = getelementptr [9 x i8], [9 x i8]* @.str738, i32 0, i32 0
  %6088 = call %nyx_string* @nyx_string_from_cstr(i8* %6087)
  %6089 = call %nyx_string* @nyx_string_concat(%nyx_string* %6086, %nyx_string* %6088)
  %6090 = call i1 @ty_check_dyn_compat({ i64, i8* }* %6084, { i64, i8* }* %6085, %nyx_string* %6089)
  %6091 = xor i1 %6090, true
  br i1 %6091, label %then1258, label %else1259
then1258:
  ret i1 0
else1259:
  br label %merge1260
merge1260:
  br label %merge1254
else1253:
  br label %merge1254
merge1254:
  br label %merge1251
else1250:
  br label %merge1251
merge1251:
  ret i1 1
}

define internal i1 @validate_break(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %6092 = load i64, i64* @g_in_loop
  %6093 = icmp eq i64 %6092, 0
  br i1 %6093, label %then1261, label %else1262
then1261:
  %6094 = getelementptr [22 x i8], [22 x i8]* @.str739, i32 0, i32 0
  %6095 = call %nyx_string* @nyx_string_from_cstr(i8* %6094)
  %6096 = getelementptr [24 x i8], [24 x i8]* @.str740, i32 0, i32 0
  %6097 = call %nyx_string* @nyx_string_from_cstr(i8* %6096)
  %6098 = call %nyx_string* @msg(%nyx_string* %6095, %nyx_string* %6097)
  %6099 = call i64 @sem_error(%nyx_string* %6098)
  ret i1 0
else1262:
  br label %merge1263
merge1263:
  ret i1 1
}

define internal i1 @validate_continue(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %6100 = load i64, i64* @g_in_loop
  %6101 = icmp eq i64 %6100, 0
  br i1 %6101, label %then1264, label %else1265
then1264:
  %6102 = getelementptr [25 x i8], [25 x i8]* @.str741, i32 0, i32 0
  %6103 = call %nyx_string* @nyx_string_from_cstr(i8* %6102)
  %6104 = getelementptr [27 x i8], [27 x i8]* @.str742, i32 0, i32 0
  %6105 = call %nyx_string* @nyx_string_from_cstr(i8* %6104)
  %6106 = call %nyx_string* @msg(%nyx_string* %6103, %nyx_string* %6105)
  %6107 = call i64 @sem_error(%nyx_string* %6106)
  ret i1 0
else1265:
  br label %merge1266
merge1266:
  ret i1 1
}

define internal i1 @validate_array(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %6108 = load %ASTNode, %ASTNode* %node.ptr
  %6109 = call { i64, i8* }* @get_array_at(%ASTNode %6108, i64 0)
  %6110 = alloca { i64, i8* }*
  store { i64, i8* }* %6109, { i64, i8* }** %6110
  %6111 = alloca i64
  store i64 0, i64* %6111
  br label %while_cond1267
while_cond1267:
  %6112 = load i64, i64* %6111
  %6113 = load { i64, i8* }*, { i64, i8* }** %6110
  %6114 = call i64 @nyx_array_length({ i64, i8* }* %6113)
  %6115 = icmp slt i64 %6112, %6114
  br i1 %6115, label %while_body1268, label %while_end1269
while_body1268:
  %6116 = load { i64, i8* }*, { i64, i8* }** %6110
  %6117 = load i64, i64* %6111
  %6118 = call i64 @nyx_array_get({ i64, i8* }* %6116, i64 %6117)
  %6119 = inttoptr i64 %6118 to { i64, i8* }*
  %6120 = call i64 @nyx_array_get({ i64, i8* }* %6119, i64 0)
  %6121 = call i64 @nyx_array_get({ i64, i8* }* %6119, i64 1)
  %6122 = inttoptr i64 %6120 to %nyx_string*
  %6123 = inttoptr i64 %6121 to { i64, i8* }*
  %6124 = alloca %ASTNode
  %6125 = getelementptr inbounds %ASTNode, %ASTNode* %6124, i32 0, i32 0
  store %nyx_string* %6122, %nyx_string** %6125
  %6126 = getelementptr inbounds %ASTNode, %ASTNode* %6124, i32 0, i32 1
  store { i64, i8* }* %6123, { i64, i8* }** %6126
  %6127 = load %ASTNode, %ASTNode* %6124
  %6128 = alloca %ASTNode
  store %ASTNode %6127, %ASTNode* %6128
  %6129 = load %ASTNode, %ASTNode* %6128
  %6130 = call i1 @validate_node(%ASTNode %6129)
  %6131 = xor i1 %6130, true
  br i1 %6131, label %then1270, label %else1271
then1270:
  ret i1 0
else1271:
  br label %merge1272
merge1272:
  %6132 = load i64, i64* %6111
  %6133 = add i64 %6132, 1
  store i64 %6133, i64* %6111
  br label %while_cond1267
while_end1269:
  ret i1 1
}

define internal i1 @validate_index(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %6134 = load %ASTNode, %ASTNode* %node.ptr
  %6135 = call %ASTNode @get_node_at(%ASTNode %6134, i64 0)
  %6136 = alloca %ASTNode
  store %ASTNode %6135, %ASTNode* %6136
  %6137 = load %ASTNode, %ASTNode* %node.ptr
  %6138 = call %ASTNode @get_node_at(%ASTNode %6137, i64 1)
  %6139 = alloca %ASTNode
  store %ASTNode %6138, %ASTNode* %6139
  %6140 = load %ASTNode, %ASTNode* %6136
  %6141 = call i1 @validate_node(%ASTNode %6140)
  %6142 = xor i1 %6141, true
  br i1 %6142, label %then1273, label %else1274
then1273:
  ret i1 0
else1274:
  br label %merge1275
merge1275:
  %6143 = load %ASTNode, %ASTNode* %6139
  %6144 = call i1 @validate_node(%ASTNode %6143)
  ret i1 %6144
}

define internal i1 @validate_index_assign(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %6145 = load %ASTNode, %ASTNode* %node.ptr
  %6146 = call %ASTNode @get_node_at(%ASTNode %6145, i64 0)
  %6147 = alloca %ASTNode
  store %ASTNode %6146, %ASTNode* %6147
  %6148 = load %ASTNode, %ASTNode* %node.ptr
  %6149 = call %ASTNode @get_node_at(%ASTNode %6148, i64 1)
  %6150 = alloca %ASTNode
  store %ASTNode %6149, %ASTNode* %6150
  %6151 = load %ASTNode, %ASTNode* %node.ptr
  %6152 = call %ASTNode @get_node_at(%ASTNode %6151, i64 2)
  %6153 = alloca %ASTNode
  store %ASTNode %6152, %ASTNode* %6153
  %6154 = load %ASTNode, %ASTNode* %6147
  %6155 = call i1 @validate_node(%ASTNode %6154)
  %6156 = xor i1 %6155, true
  br i1 %6156, label %then1276, label %else1277
then1276:
  ret i1 0
else1277:
  br label %merge1278
merge1278:
  %6157 = load %ASTNode, %ASTNode* %6150
  %6158 = call i1 @validate_node(%ASTNode %6157)
  %6159 = xor i1 %6158, true
  br i1 %6159, label %then1279, label %else1280
then1279:
  ret i1 0
else1280:
  br label %merge1281
merge1281:
  %6160 = load %ASTNode, %ASTNode* %6153
  %6161 = call i1 @validate_node(%ASTNode %6160)
  ret i1 %6161
}

define internal i64 @scan_module_types(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %6162 = load %nyx_string*, %nyx_string** %path.ptr
  %6163 = getelementptr [4 x i8], [4 x i8]* @.str743, i32 0, i32 0
  %6164 = call %nyx_string* @nyx_string_from_cstr(i8* %6163)
  %6165 = call %nyx_string* @nyx_string_concat(%nyx_string* %6162, %nyx_string* %6164)
  %6166 = alloca %nyx_string*
  store %nyx_string* %6165, %nyx_string** %6166
  %6167 = load %nyx_string*, %nyx_string** %6166
  %6168 = call i8* @nyx_string_to_cstr(%nyx_string* %6167)
  %6169 = call i1 @nyx_file_exists(i8* %6168)
  %6170 = xor i1 %6169, true
  br i1 %6170, label %then1282, label %else1283
then1282:
  %6171 = getelementptr [5 x i8], [5 x i8]* @.str744, i32 0, i32 0
  %6172 = call %nyx_string* @nyx_string_from_cstr(i8* %6171)
  %6173 = load %nyx_string*, %nyx_string** %path.ptr
  %6174 = call %nyx_string* @nyx_string_concat(%nyx_string* %6172, %nyx_string* %6173)
  %6175 = getelementptr [4 x i8], [4 x i8]* @.str745, i32 0, i32 0
  %6176 = call %nyx_string* @nyx_string_from_cstr(i8* %6175)
  %6177 = call %nyx_string* @nyx_string_concat(%nyx_string* %6174, %nyx_string* %6176)
  %6178 = alloca %nyx_string*
  store %nyx_string* %6177, %nyx_string** %6178
  %6179 = load %nyx_string*, %nyx_string** %6178
  %6180 = call i8* @nyx_string_to_cstr(%nyx_string* %6179)
  %6181 = call i1 @nyx_file_exists(i8* %6180)
  %6182 = xor i1 %6181, true
  br i1 %6182, label %then1285, label %else1286
then1285:
  ret i64 0
else1286:
  br label %merge1287
merge1287:
  %6183 = load %nyx_string*, %nyx_string** %6178
  store %nyx_string* %6183, %nyx_string** %6166
  br label %merge1284
else1283:
  br label %merge1284
merge1284:
  %6184 = load %nyx_string*, %nyx_string** %6166
  %6185 = call i8* @nyx_string_to_cstr(%nyx_string* %6184)
  %6186 = call %nyx_string* @nyx_read_file(i8* %6185)
  %6187 = alloca %nyx_string*
  store %nyx_string* %6186, %nyx_string** %6187
  %6188 = load %nyx_string*, %nyx_string** %6187
  %6189 = getelementptr [2 x i8], [2 x i8]* @.str746, i32 0, i32 0
  %6190 = call %nyx_string* @nyx_string_from_cstr(i8* %6189)
  %6191 = call { i64, i8* }* @nyx_string_split(%nyx_string* %6188, %nyx_string* %6190)
  %6192 = alloca { i64, i8* }*
  store { i64, i8* }* %6191, { i64, i8* }** %6192
  %6193 = alloca i64
  store i64 0, i64* %6193
  br label %while_cond1288
while_cond1288:
  %6194 = load i64, i64* %6193
  %6195 = load { i64, i8* }*, { i64, i8* }** %6192
  %6196 = call i64 @nyx_array_length({ i64, i8* }* %6195)
  %6197 = icmp slt i64 %6194, %6196
  br i1 %6197, label %while_body1289, label %while_end1290
while_body1289:
  %6198 = load { i64, i8* }*, { i64, i8* }** %6192
  %6199 = load i64, i64* %6193
  %6200 = call i64 @nyx_array_get({ i64, i8* }* %6198, i64 %6199)
  %6201 = inttoptr i64 %6200 to %nyx_string*
  %6202 = alloca %nyx_string*
  store %nyx_string* %6201, %nyx_string** %6202
  %6203 = load %nyx_string*, %nyx_string** %6202
  %6204 = call %nyx_string* @nyx_string_trim(%nyx_string* %6203)
  %6205 = alloca %nyx_string*
  store %nyx_string* %6204, %nyx_string** %6205
  %6206 = load %nyx_string*, %nyx_string** %6205
  %6207 = call i64 @nyx_string_length_utf8(%nyx_string* %6206)
  %6208 = icmp sge i64 %6207, 4
  br i1 %6208, label %then1291, label %else1292
then1291:
  %6209 = load %nyx_string*, %nyx_string** %6205
  %6210 = call %nyx_string* @nyx_string_substring(%nyx_string* %6209, i64 0, i64 4)
  %6211 = getelementptr [5 x i8], [5 x i8]* @.str747, i32 0, i32 0
  %6212 = call %nyx_string* @nyx_string_from_cstr(i8* %6211)
  %6213 = call i8* @nyx_string_to_cstr(%nyx_string* %6210)
  %6214 = call i8* @nyx_string_to_cstr(%nyx_string* %6212)
  %6215 = call i32 @strcmp(i8* %6213, i8* %6214)
  %6216 = icmp eq i32 %6215, 0
  br i1 %6216, label %then1294, label %else1295
then1294:
  %6217 = load %nyx_string*, %nyx_string** %6205
  %6218 = load %nyx_string*, %nyx_string** %6205
  %6219 = call i64 @nyx_string_length_utf8(%nyx_string* %6218)
  %6220 = call %nyx_string* @nyx_string_substring(%nyx_string* %6217, i64 4, i64 %6219)
  %6221 = call %nyx_string* @nyx_string_trim(%nyx_string* %6220)
  store %nyx_string* %6221, %nyx_string** %6205
  br label %merge1296
else1295:
  br label %merge1296
merge1296:
  br label %merge1293
else1292:
  br label %merge1293
merge1293:
  %6222 = load %nyx_string*, %nyx_string** %6205
  %6223 = call i64 @nyx_string_length_utf8(%nyx_string* %6222)
  %6224 = icmp sge i64 %6223, 8
  br i1 %6224, label %then1297, label %else1298
then1297:
  %6225 = load %nyx_string*, %nyx_string** %6205
  %6226 = call %nyx_string* @nyx_string_substring(%nyx_string* %6225, i64 0, i64 7)
  %6227 = getelementptr [8 x i8], [8 x i8]* @.str748, i32 0, i32 0
  %6228 = call %nyx_string* @nyx_string_from_cstr(i8* %6227)
  %6229 = call i8* @nyx_string_to_cstr(%nyx_string* %6226)
  %6230 = call i8* @nyx_string_to_cstr(%nyx_string* %6228)
  %6231 = call i32 @strcmp(i8* %6229, i8* %6230)
  %6232 = icmp eq i32 %6231, 0
  br i1 %6232, label %then1300, label %else1301
then1300:
  %6233 = load %nyx_string*, %nyx_string** %6205
  %6234 = load %nyx_string*, %nyx_string** %6205
  %6235 = call i64 @nyx_string_length_utf8(%nyx_string* %6234)
  %6236 = call %nyx_string* @nyx_string_substring(%nyx_string* %6233, i64 7, i64 %6235)
  %6237 = call %nyx_string* @nyx_string_trim(%nyx_string* %6236)
  %6238 = alloca %nyx_string*
  store %nyx_string* %6237, %nyx_string** %6238
  %6239 = load %nyx_string*, %nyx_string** %6238
  %6240 = call %nyx_string* @scan_extract_name(%nyx_string* %6239)
  %6241 = alloca %nyx_string*
  store %nyx_string* %6240, %nyx_string** %6241
  %6242 = load %nyx_string*, %nyx_string** %6241
  %6243 = getelementptr [1 x i8], [1 x i8]* @.str749, i32 0, i32 0
  %6244 = call %nyx_string* @nyx_string_from_cstr(i8* %6243)
  %6245 = call i8* @nyx_string_to_cstr(%nyx_string* %6242)
  %6246 = call i8* @nyx_string_to_cstr(%nyx_string* %6244)
  %6247 = call i32 @strcmp(i8* %6245, i8* %6246)
  %6248 = icmp ne i32 %6247, 0
  br i1 %6248, label %then1303, label %else1304
then1303:
  %6249 = load %nyx_string*, %nyx_string** %6241
  %6250 = call i1 @is_known_type_name(%nyx_string* %6249)
  %6251 = xor i1 %6250, true
  br i1 %6251, label %then1306, label %else1307
then1306:
  %6252 = call { i64, i8* }* @nyx_array_new_ptr()
  %6253 = alloca { i64, i8* }*
  store { i64, i8* }* %6252, { i64, i8* }** %6253
  %6254 = call { i64, i8* }* @nyx_array_new_ptr()
  %6255 = alloca { i64, i8* }*
  store { i64, i8* }* %6254, { i64, i8* }** %6255
  %6256 = load i64, i64* %6193
  %6257 = add i64 %6256, 1
  %6258 = alloca i64
  store i64 %6257, i64* %6258
  br label %while_cond1309
while_cond1309:
  %6259 = load i64, i64* %6258
  %6260 = load { i64, i8* }*, { i64, i8* }** %6192
  %6261 = call i64 @nyx_array_length({ i64, i8* }* %6260)
  %6262 = icmp slt i64 %6259, %6261
  br i1 %6262, label %while_body1310, label %while_end1311
while_body1310:
  %6263 = load { i64, i8* }*, { i64, i8* }** %6192
  %6264 = load i64, i64* %6258
  %6265 = call i64 @nyx_array_get({ i64, i8* }* %6263, i64 %6264)
  %6266 = inttoptr i64 %6265 to %nyx_string*
  %6267 = alloca %nyx_string*
  store %nyx_string* %6266, %nyx_string** %6267
  %6268 = load %nyx_string*, %nyx_string** %6267
  %6269 = call %nyx_string* @nyx_string_trim(%nyx_string* %6268)
  %6270 = alloca %nyx_string*
  store %nyx_string* %6269, %nyx_string** %6270
  %6271 = load %nyx_string*, %nyx_string** %6270
  %6272 = call i64 @nyx_string_length_utf8(%nyx_string* %6271)
  %6273 = icmp sgt i64 %6272, 0
  br i1 %6273, label %then1312, label %else1313
then1312:
  %6274 = load %nyx_string*, %nyx_string** %6270
  %6275 = call i8 @nyx_string_char_at(%nyx_string* %6274, i64 0)
  %6276 = zext i8 %6275 to i64
  %6277 = alloca i64
  store i64 %6276, i64* %6277
  %6278 = load i64, i64* %6277
  %6279 = icmp eq i64 %6278, 125
  br i1 %6279, label %then1315, label %else1316
then1315:
  %6280 = load { i64, i8* }*, { i64, i8* }** %6192
  %6281 = call i64 @nyx_array_length({ i64, i8* }* %6280)
  store i64 %6281, i64* %6258
  br label %merge1317
else1316:
  %6282 = alloca i1
  store i1 0, i1* %6282
  %6283 = load %nyx_string*, %nyx_string** %6270
  %6284 = call i64 @nyx_string_length_utf8(%nyx_string* %6283)
  %6285 = icmp sge i64 %6284, 2
  br i1 %6285, label %then1318, label %else1319
then1318:
  %6286 = load %nyx_string*, %nyx_string** %6270
  %6287 = call %nyx_string* @nyx_string_substring(%nyx_string* %6286, i64 0, i64 2)
  %6288 = getelementptr [3 x i8], [3 x i8]* @.str750, i32 0, i32 0
  %6289 = call %nyx_string* @nyx_string_from_cstr(i8* %6288)
  %6290 = call i8* @nyx_string_to_cstr(%nyx_string* %6287)
  %6291 = call i8* @nyx_string_to_cstr(%nyx_string* %6289)
  %6292 = call i32 @strcmp(i8* %6290, i8* %6291)
  %6293 = icmp eq i32 %6292, 0
  br i1 %6293, label %then1321, label %else1322
then1321:
  store i1 1, i1* %6282
  br label %merge1323
else1322:
  br label %merge1323
merge1323:
  br label %merge1320
else1319:
  br label %merge1320
merge1320:
  %6294 = load i1, i1* %6282
  %6295 = xor i1 %6294, true
  br i1 %6295, label %then1324, label %else1325
then1324:
  %6296 = load %nyx_string*, %nyx_string** %6270
  %6297 = getelementptr [2 x i8], [2 x i8]* @.str751, i32 0, i32 0
  %6298 = call %nyx_string* @nyx_string_from_cstr(i8* %6297)
  %6299 = call i64 @nyx_string_index_of(%nyx_string* %6296, %nyx_string* %6298)
  %6300 = alloca i64
  store i64 %6299, i64* %6300
  %6301 = load i64, i64* %6300
  %6302 = icmp sgt i64 %6301, 0
  br i1 %6302, label %then1327, label %else1328
then1327:
  %6303 = load %nyx_string*, %nyx_string** %6270
  %6304 = load i64, i64* %6300
  %6305 = call %nyx_string* @nyx_string_substring(%nyx_string* %6303, i64 0, i64 %6304)
  %6306 = call %nyx_string* @nyx_string_trim(%nyx_string* %6305)
  %6307 = alloca %nyx_string*
  store %nyx_string* %6306, %nyx_string** %6307
  %6308 = load %nyx_string*, %nyx_string** %6307
  %6309 = call %nyx_string* @scan_extract_name(%nyx_string* %6308)
  %6310 = alloca %nyx_string*
  store %nyx_string* %6309, %nyx_string** %6310
  %6311 = load %nyx_string*, %nyx_string** %6310
  %6312 = getelementptr [1 x i8], [1 x i8]* @.str752, i32 0, i32 0
  %6313 = call %nyx_string* @nyx_string_from_cstr(i8* %6312)
  %6314 = call i8* @nyx_string_to_cstr(%nyx_string* %6311)
  %6315 = call i8* @nyx_string_to_cstr(%nyx_string* %6313)
  %6316 = call i32 @strcmp(i8* %6314, i8* %6315)
  %6317 = icmp ne i32 %6316, 0
  br i1 %6317, label %then1330, label %else1331
then1330:
  %6318 = load { i64, i8* }*, { i64, i8* }** %6253
  %6319 = load %nyx_string*, %nyx_string** %6310
  %6320 = ptrtoint %nyx_string* %6319 to i64
  call void @nyx_array_push({ i64, i8* }* %6318, i64 %6320)
  %6321 = load %nyx_string*, %nyx_string** %6270
  %6322 = load i64, i64* %6300
  %6323 = add i64 %6322, 1
  %6324 = load %nyx_string*, %nyx_string** %6270
  %6325 = call i64 @nyx_string_length_utf8(%nyx_string* %6324)
  %6326 = call %nyx_string* @nyx_string_substring(%nyx_string* %6321, i64 %6323, i64 %6325)
  %6327 = call %nyx_string* @nyx_string_trim(%nyx_string* %6326)
  %6328 = alloca %nyx_string*
  store %nyx_string* %6327, %nyx_string** %6328
  %6329 = load %nyx_string*, %nyx_string** %6328
  %6330 = getelementptr [3 x i8], [3 x i8]* @.str753, i32 0, i32 0
  %6331 = call %nyx_string* @nyx_string_from_cstr(i8* %6330)
  %6332 = call i64 @nyx_string_index_of(%nyx_string* %6329, %nyx_string* %6331)
  %6333 = alloca i64
  store i64 %6332, i64* %6333
  %6334 = load i64, i64* %6333
  %6335 = icmp sge i64 %6334, 0
  br i1 %6335, label %then1333, label %else1334
then1333:
  %6336 = load %nyx_string*, %nyx_string** %6328
  %6337 = load i64, i64* %6333
  %6338 = call %nyx_string* @nyx_string_substring(%nyx_string* %6336, i64 0, i64 %6337)
  %6339 = call %nyx_string* @nyx_string_trim(%nyx_string* %6338)
  store %nyx_string* %6339, %nyx_string** %6328
  br label %merge1335
else1334:
  br label %merge1335
merge1335:
  %6340 = load %nyx_string*, %nyx_string** %6328
  %6341 = call i64 @nyx_string_length_utf8(%nyx_string* %6340)
  %6342 = icmp sgt i64 %6341, 0
  br i1 %6342, label %then1336, label %else1337
then1336:
  %6343 = load %nyx_string*, %nyx_string** %6328
  %6344 = load %nyx_string*, %nyx_string** %6328
  %6345 = call i64 @nyx_string_length_utf8(%nyx_string* %6344)
  %6346 = sub i64 %6345, 1
  %6347 = call i8 @nyx_string_char_at(%nyx_string* %6343, i64 %6346)
  %6348 = zext i8 %6347 to i64
  %6349 = alloca i64
  store i64 %6348, i64* %6349
  %6350 = load i64, i64* %6349
  %6351 = icmp eq i64 %6350, 44
  br i1 %6351, label %then1339, label %else1340
then1339:
  %6352 = load %nyx_string*, %nyx_string** %6328
  %6353 = load %nyx_string*, %nyx_string** %6328
  %6354 = call i64 @nyx_string_length_utf8(%nyx_string* %6353)
  %6355 = sub i64 %6354, 1
  %6356 = call %nyx_string* @nyx_string_substring(%nyx_string* %6352, i64 0, i64 %6355)
  %6357 = call %nyx_string* @nyx_string_trim(%nyx_string* %6356)
  store %nyx_string* %6357, %nyx_string** %6328
  br label %merge1341
else1340:
  br label %merge1341
merge1341:
  br label %merge1338
else1337:
  br label %merge1338
merge1338:
  %6358 = load %nyx_string*, %nyx_string** %6328
  %6359 = call i64 @nyx_string_length_utf8(%nyx_string* %6358)
  %6360 = icmp sgt i64 %6359, 0
  br i1 %6360, label %then1342, label %else1343
then1342:
  %6361 = load { i64, i8* }*, { i64, i8* }** %6255
  %6362 = load %nyx_string*, %nyx_string** %6328
  %6363 = call { i64, i8* }* @ty_parse(%nyx_string* %6362)
  %6364 = call { i64, i8* }* @resolve_type({ i64, i8* }* %6363)
  %6365 = ptrtoint { i64, i8* }* %6364 to i64
  call void @nyx_array_push({ i64, i8* }* %6361, i64 %6365)
  br label %merge1344
else1343:
  %6366 = load { i64, i8* }*, { i64, i8* }** %6255
  %6367 = call { i64, i8* }* @ty_unknown()
  %6368 = ptrtoint { i64, i8* }* %6367 to i64
  call void @nyx_array_push({ i64, i8* }* %6366, i64 %6368)
  br label %merge1344
merge1344:
  br label %merge1332
else1331:
  br label %merge1332
merge1332:
  br label %merge1329
else1328:
  br label %merge1329
merge1329:
  br label %merge1326
else1325:
  br label %merge1326
merge1326:
  %6369 = load i64, i64* %6258
  %6370 = add i64 %6369, 1
  store i64 %6370, i64* %6258
  br label %merge1317
merge1317:
  br label %merge1314
else1313:
  %6371 = load i64, i64* %6258
  %6372 = add i64 %6371, 1
  store i64 %6372, i64* %6258
  br label %merge1314
merge1314:
  br label %while_cond1309
while_end1311:
  %6373 = load { i64, i8* }*, { i64, i8* }** @g_struct_reg_names
  %6374 = load %nyx_string*, %nyx_string** %6241
  %6375 = ptrtoint %nyx_string* %6374 to i64
  call void @nyx_array_push({ i64, i8* }* %6373, i64 %6375)
  %6376 = load { i64, i8* }*, { i64, i8* }** @g_struct_reg_fields
  %6377 = load { i64, i8* }*, { i64, i8* }** %6253
  %6378 = ptrtoint { i64, i8* }* %6377 to i64
  call void @nyx_array_push({ i64, i8* }* %6376, i64 %6378)
  %6379 = load { i64, i8* }*, { i64, i8* }** @g_struct_reg_field_types
  %6380 = load { i64, i8* }*, { i64, i8* }** %6255
  %6381 = ptrtoint { i64, i8* }* %6380 to i64
  call void @nyx_array_push({ i64, i8* }* %6379, i64 %6381)
  %6382 = load i64, i64* @g_struct_reg_count
  %6383 = add i64 %6382, 1
  store i64 %6383, i64* @g_struct_reg_count
  br label %merge1308
else1307:
  br label %merge1308
merge1308:
  br label %merge1305
else1304:
  br label %merge1305
merge1305:
  br label %merge1302
else1301:
  br label %merge1302
merge1302:
  br label %merge1299
else1298:
  br label %merge1299
merge1299:
  %6384 = load %nyx_string*, %nyx_string** %6205
  %6385 = call i64 @nyx_string_length_utf8(%nyx_string* %6384)
  %6386 = icmp sge i64 %6385, 6
  br i1 %6386, label %then1345, label %else1346
then1345:
  %6387 = load %nyx_string*, %nyx_string** %6205
  %6388 = call %nyx_string* @nyx_string_substring(%nyx_string* %6387, i64 0, i64 5)
  %6389 = getelementptr [6 x i8], [6 x i8]* @.str754, i32 0, i32 0
  %6390 = call %nyx_string* @nyx_string_from_cstr(i8* %6389)
  %6391 = call i8* @nyx_string_to_cstr(%nyx_string* %6388)
  %6392 = call i8* @nyx_string_to_cstr(%nyx_string* %6390)
  %6393 = call i32 @strcmp(i8* %6391, i8* %6392)
  %6394 = icmp eq i32 %6393, 0
  br i1 %6394, label %then1348, label %else1349
then1348:
  %6395 = load %nyx_string*, %nyx_string** %6205
  %6396 = load %nyx_string*, %nyx_string** %6205
  %6397 = call i64 @nyx_string_length_utf8(%nyx_string* %6396)
  %6398 = call %nyx_string* @nyx_string_substring(%nyx_string* %6395, i64 5, i64 %6397)
  %6399 = call %nyx_string* @nyx_string_trim(%nyx_string* %6398)
  %6400 = alloca %nyx_string*
  store %nyx_string* %6399, %nyx_string** %6400
  %6401 = load %nyx_string*, %nyx_string** %6400
  %6402 = call %nyx_string* @scan_extract_name(%nyx_string* %6401)
  %6403 = alloca %nyx_string*
  store %nyx_string* %6402, %nyx_string** %6403
  %6404 = load %nyx_string*, %nyx_string** %6403
  %6405 = getelementptr [1 x i8], [1 x i8]* @.str755, i32 0, i32 0
  %6406 = call %nyx_string* @nyx_string_from_cstr(i8* %6405)
  %6407 = call i8* @nyx_string_to_cstr(%nyx_string* %6404)
  %6408 = call i8* @nyx_string_to_cstr(%nyx_string* %6406)
  %6409 = call i32 @strcmp(i8* %6407, i8* %6408)
  %6410 = icmp ne i32 %6409, 0
  br i1 %6410, label %then1351, label %else1352
then1351:
  %6411 = load %nyx_string*, %nyx_string** %6403
  %6412 = call i1 @is_known_type_name(%nyx_string* %6411)
  %6413 = xor i1 %6412, true
  br i1 %6413, label %then1354, label %else1355
then1354:
  %6414 = call { i64, i8* }* @nyx_array_new_ptr()
  %6415 = alloca { i64, i8* }*
  store { i64, i8* }* %6414, { i64, i8* }** %6415
  %6416 = load i64, i64* %6193
  %6417 = add i64 %6416, 1
  %6418 = alloca i64
  store i64 %6417, i64* %6418
  br label %while_cond1357
while_cond1357:
  %6419 = load i64, i64* %6418
  %6420 = load { i64, i8* }*, { i64, i8* }** %6192
  %6421 = call i64 @nyx_array_length({ i64, i8* }* %6420)
  %6422 = icmp slt i64 %6419, %6421
  br i1 %6422, label %while_body1358, label %while_end1359
while_body1358:
  %6423 = load { i64, i8* }*, { i64, i8* }** %6192
  %6424 = load i64, i64* %6418
  %6425 = call i64 @nyx_array_get({ i64, i8* }* %6423, i64 %6424)
  %6426 = inttoptr i64 %6425 to %nyx_string*
  %6427 = alloca %nyx_string*
  store %nyx_string* %6426, %nyx_string** %6427
  %6428 = load %nyx_string*, %nyx_string** %6427
  %6429 = call %nyx_string* @nyx_string_trim(%nyx_string* %6428)
  %6430 = alloca %nyx_string*
  store %nyx_string* %6429, %nyx_string** %6430
  %6431 = load %nyx_string*, %nyx_string** %6430
  %6432 = call i64 @nyx_string_length_utf8(%nyx_string* %6431)
  %6433 = icmp sgt i64 %6432, 0
  br i1 %6433, label %then1360, label %else1361
then1360:
  %6434 = load %nyx_string*, %nyx_string** %6430
  %6435 = call i8 @nyx_string_char_at(%nyx_string* %6434, i64 0)
  %6436 = zext i8 %6435 to i64
  %6437 = alloca i64
  store i64 %6436, i64* %6437
  %6438 = load i64, i64* %6437
  %6439 = icmp eq i64 %6438, 125
  br i1 %6439, label %then1363, label %else1364
then1363:
  %6440 = load { i64, i8* }*, { i64, i8* }** %6192
  %6441 = call i64 @nyx_array_length({ i64, i8* }* %6440)
  store i64 %6441, i64* %6418
  br label %merge1365
else1364:
  %6442 = alloca i1
  store i1 0, i1* %6442
  %6443 = load %nyx_string*, %nyx_string** %6430
  %6444 = call i64 @nyx_string_length_utf8(%nyx_string* %6443)
  %6445 = icmp sge i64 %6444, 2
  br i1 %6445, label %then1366, label %else1367
then1366:
  %6446 = load %nyx_string*, %nyx_string** %6430
  %6447 = call %nyx_string* @nyx_string_substring(%nyx_string* %6446, i64 0, i64 2)
  %6448 = getelementptr [3 x i8], [3 x i8]* @.str756, i32 0, i32 0
  %6449 = call %nyx_string* @nyx_string_from_cstr(i8* %6448)
  %6450 = call i8* @nyx_string_to_cstr(%nyx_string* %6447)
  %6451 = call i8* @nyx_string_to_cstr(%nyx_string* %6449)
  %6452 = call i32 @strcmp(i8* %6450, i8* %6451)
  %6453 = icmp eq i32 %6452, 0
  br i1 %6453, label %then1369, label %else1370
then1369:
  store i1 1, i1* %6442
  br label %merge1371
else1370:
  br label %merge1371
merge1371:
  br label %merge1368
else1367:
  br label %merge1368
merge1368:
  %6454 = load i1, i1* %6442
  %6455 = xor i1 %6454, true
  br i1 %6455, label %then1372, label %else1373
then1372:
  %6456 = load %nyx_string*, %nyx_string** %6430
  %6457 = call %nyx_string* @scan_extract_name(%nyx_string* %6456)
  %6458 = alloca %nyx_string*
  store %nyx_string* %6457, %nyx_string** %6458
  %6459 = load %nyx_string*, %nyx_string** %6458
  %6460 = getelementptr [1 x i8], [1 x i8]* @.str757, i32 0, i32 0
  %6461 = call %nyx_string* @nyx_string_from_cstr(i8* %6460)
  %6462 = call i8* @nyx_string_to_cstr(%nyx_string* %6459)
  %6463 = call i8* @nyx_string_to_cstr(%nyx_string* %6461)
  %6464 = call i32 @strcmp(i8* %6462, i8* %6463)
  %6465 = icmp ne i32 %6464, 0
  br i1 %6465, label %then1375, label %else1376
then1375:
  %6466 = load { i64, i8* }*, { i64, i8* }** %6415
  %6467 = load %nyx_string*, %nyx_string** %6458
  %6468 = ptrtoint %nyx_string* %6467 to i64
  call void @nyx_array_push({ i64, i8* }* %6466, i64 %6468)
  br label %merge1377
else1376:
  br label %merge1377
merge1377:
  br label %merge1374
else1373:
  br label %merge1374
merge1374:
  %6469 = load i64, i64* %6418
  %6470 = add i64 %6469, 1
  store i64 %6470, i64* %6418
  br label %merge1365
merge1365:
  br label %merge1362
else1361:
  %6471 = load i64, i64* %6418
  %6472 = add i64 %6471, 1
  store i64 %6472, i64* %6418
  br label %merge1362
merge1362:
  br label %while_cond1357
while_end1359:
  %6473 = load { i64, i8* }*, { i64, i8* }** @g_enum_reg_names
  %6474 = load %nyx_string*, %nyx_string** %6403
  %6475 = ptrtoint %nyx_string* %6474 to i64
  call void @nyx_array_push({ i64, i8* }* %6473, i64 %6475)
  %6476 = load { i64, i8* }*, { i64, i8* }** @g_enum_reg_variants
  %6477 = load { i64, i8* }*, { i64, i8* }** %6415
  %6478 = ptrtoint { i64, i8* }* %6477 to i64
  call void @nyx_array_push({ i64, i8* }* %6476, i64 %6478)
  %6479 = load i64, i64* @g_enum_reg_count
  %6480 = add i64 %6479, 1
  store i64 %6480, i64* @g_enum_reg_count
  br label %merge1356
else1355:
  br label %merge1356
merge1356:
  br label %merge1353
else1352:
  br label %merge1353
merge1353:
  br label %merge1350
else1349:
  br label %merge1350
merge1350:
  br label %merge1347
else1346:
  br label %merge1347
merge1347:
  %6481 = load %nyx_string*, %nyx_string** %6205
  %6482 = call i64 @nyx_string_length_utf8(%nyx_string* %6481)
  %6483 = icmp sge i64 %6482, 10
  br i1 %6483, label %then1378, label %else1379
then1378:
  %6484 = load %nyx_string*, %nyx_string** %6205
  %6485 = call %nyx_string* @nyx_string_substring(%nyx_string* %6484, i64 0, i64 5)
  %6486 = getelementptr [6 x i8], [6 x i8]* @.str758, i32 0, i32 0
  %6487 = call %nyx_string* @nyx_string_from_cstr(i8* %6486)
  %6488 = call i8* @nyx_string_to_cstr(%nyx_string* %6485)
  %6489 = call i8* @nyx_string_to_cstr(%nyx_string* %6487)
  %6490 = call i32 @strcmp(i8* %6488, i8* %6489)
  %6491 = icmp eq i32 %6490, 0
  br i1 %6491, label %then1381, label %else1382
then1381:
  %6492 = load %nyx_string*, %nyx_string** %6205
  %6493 = load %nyx_string*, %nyx_string** %6205
  %6494 = call i64 @nyx_string_length_utf8(%nyx_string* %6493)
  %6495 = call %nyx_string* @nyx_string_substring(%nyx_string* %6492, i64 5, i64 %6494)
  %6496 = call %nyx_string* @nyx_string_trim(%nyx_string* %6495)
  %6497 = alloca %nyx_string*
  store %nyx_string* %6496, %nyx_string** %6497
  %6498 = load %nyx_string*, %nyx_string** %6497
  %6499 = getelementptr [6 x i8], [6 x i8]* @.str759, i32 0, i32 0
  %6500 = call %nyx_string* @nyx_string_from_cstr(i8* %6499)
  %6501 = call i64 @nyx_string_index_of(%nyx_string* %6498, %nyx_string* %6500)
  %6502 = alloca i64
  store i64 %6501, i64* %6502
  %6503 = load i64, i64* %6502
  %6504 = icmp sgt i64 %6503, 0
  br i1 %6504, label %then1384, label %else1385
then1384:
  %6505 = load %nyx_string*, %nyx_string** %6497
  %6506 = load i64, i64* %6502
  %6507 = call %nyx_string* @nyx_string_substring(%nyx_string* %6505, i64 0, i64 %6506)
  %6508 = call %nyx_string* @nyx_string_trim(%nyx_string* %6507)
  %6509 = alloca %nyx_string*
  store %nyx_string* %6508, %nyx_string** %6509
  %6510 = load %nyx_string*, %nyx_string** %6509
  %6511 = call %nyx_string* @scan_extract_name(%nyx_string* %6510)
  %6512 = alloca %nyx_string*
  store %nyx_string* %6511, %nyx_string** %6512
  %6513 = load %nyx_string*, %nyx_string** %6497
  %6514 = load i64, i64* %6502
  %6515 = add i64 %6514, 5
  %6516 = load %nyx_string*, %nyx_string** %6497
  %6517 = call i64 @nyx_string_length_utf8(%nyx_string* %6516)
  %6518 = call %nyx_string* @nyx_string_substring(%nyx_string* %6513, i64 %6515, i64 %6517)
  %6519 = call %nyx_string* @nyx_string_trim(%nyx_string* %6518)
  %6520 = alloca %nyx_string*
  store %nyx_string* %6519, %nyx_string** %6520
  %6521 = load %nyx_string*, %nyx_string** %6520
  %6522 = call %nyx_string* @scan_extract_name(%nyx_string* %6521)
  %6523 = alloca %nyx_string*
  store %nyx_string* %6522, %nyx_string** %6523
  %6524 = load %nyx_string*, %nyx_string** %6512
  %6525 = getelementptr [1 x i8], [1 x i8]* @.str760, i32 0, i32 0
  %6526 = call %nyx_string* @nyx_string_from_cstr(i8* %6525)
  %6527 = call i8* @nyx_string_to_cstr(%nyx_string* %6524)
  %6528 = call i8* @nyx_string_to_cstr(%nyx_string* %6526)
  %6529 = call i32 @strcmp(i8* %6527, i8* %6528)
  %6530 = icmp ne i32 %6529, 0
  br i1 %6530, label %then1387, label %else1388
then1387:
  %6531 = load %nyx_string*, %nyx_string** %6523
  %6532 = getelementptr [1 x i8], [1 x i8]* @.str761, i32 0, i32 0
  %6533 = call %nyx_string* @nyx_string_from_cstr(i8* %6532)
  %6534 = call i8* @nyx_string_to_cstr(%nyx_string* %6531)
  %6535 = call i8* @nyx_string_to_cstr(%nyx_string* %6533)
  %6536 = call i32 @strcmp(i8* %6534, i8* %6535)
  %6537 = icmp ne i32 %6536, 0
  br i1 %6537, label %then1390, label %else1391
then1390:
  %6538 = load %nyx_string*, %nyx_string** %6523
  %6539 = load %nyx_string*, %nyx_string** %6512
  %6540 = call i1 @type_implements_trait(%nyx_string* %6538, %nyx_string* %6539)
  %6541 = xor i1 %6540, true
  br i1 %6541, label %then1393, label %else1394
then1393:
  %6542 = load { i64, i8* }*, { i64, i8* }** @g_trait_impl_types
  %6543 = load %nyx_string*, %nyx_string** %6523
  %6544 = ptrtoint %nyx_string* %6543 to i64
  call void @nyx_array_push({ i64, i8* }* %6542, i64 %6544)
  %6545 = load { i64, i8* }*, { i64, i8* }** @g_trait_impl_traits
  %6546 = load %nyx_string*, %nyx_string** %6512
  %6547 = ptrtoint %nyx_string* %6546 to i64
  call void @nyx_array_push({ i64, i8* }* %6545, i64 %6547)
  %6548 = load i64, i64* @g_trait_impl_count
  %6549 = add i64 %6548, 1
  store i64 %6549, i64* @g_trait_impl_count
  br label %merge1395
else1394:
  br label %merge1395
merge1395:
  br label %merge1392
else1391:
  br label %merge1392
merge1392:
  br label %merge1389
else1388:
  br label %merge1389
merge1389:
  br label %merge1386
else1385:
  br label %merge1386
merge1386:
  br label %merge1383
else1382:
  br label %merge1383
merge1383:
  br label %merge1380
else1379:
  br label %merge1380
merge1380:
  %6550 = load %nyx_string*, %nyx_string** %6205
  %6551 = call i64 @nyx_string_length_utf8(%nyx_string* %6550)
  %6552 = icmp sge i64 %6551, 6
  br i1 %6552, label %then1396, label %else1397
then1396:
  %6553 = load %nyx_string*, %nyx_string** %6205
  %6554 = call %nyx_string* @nyx_string_substring(%nyx_string* %6553, i64 0, i64 5)
  %6555 = getelementptr [6 x i8], [6 x i8]* @.str762, i32 0, i32 0
  %6556 = call %nyx_string* @nyx_string_from_cstr(i8* %6555)
  %6557 = call i8* @nyx_string_to_cstr(%nyx_string* %6554)
  %6558 = call i8* @nyx_string_to_cstr(%nyx_string* %6556)
  %6559 = call i32 @strcmp(i8* %6557, i8* %6558)
  %6560 = icmp eq i32 %6559, 0
  br i1 %6560, label %then1399, label %else1400
then1399:
  %6561 = load %nyx_string*, %nyx_string** %6205
  %6562 = load %nyx_string*, %nyx_string** %6205
  %6563 = call i64 @nyx_string_length_utf8(%nyx_string* %6562)
  %6564 = call %nyx_string* @nyx_string_substring(%nyx_string* %6561, i64 5, i64 %6563)
  %6565 = call %nyx_string* @nyx_string_trim(%nyx_string* %6564)
  %6566 = alloca %nyx_string*
  store %nyx_string* %6565, %nyx_string** %6566
  %6567 = load %nyx_string*, %nyx_string** %6566
  %6568 = call %nyx_string* @scan_extract_name(%nyx_string* %6567)
  %6569 = alloca %nyx_string*
  store %nyx_string* %6568, %nyx_string** %6569
  %6570 = load %nyx_string*, %nyx_string** %6569
  %6571 = getelementptr [1 x i8], [1 x i8]* @.str763, i32 0, i32 0
  %6572 = call %nyx_string* @nyx_string_from_cstr(i8* %6571)
  %6573 = call i8* @nyx_string_to_cstr(%nyx_string* %6570)
  %6574 = call i8* @nyx_string_to_cstr(%nyx_string* %6572)
  %6575 = call i32 @strcmp(i8* %6573, i8* %6574)
  %6576 = icmp ne i32 %6575, 0
  br i1 %6576, label %then1402, label %else1403
then1402:
  %6577 = load %nyx_string*, %nyx_string** %6569
  %6578 = call i1 @is_known_type_name(%nyx_string* %6577)
  %6579 = xor i1 %6578, true
  br i1 %6579, label %then1405, label %else1406
then1405:
  %6580 = call { i64, i8* }* @ty_unknown()
  %6581 = alloca { i64, i8* }*
  store { i64, i8* }* %6580, { i64, i8* }** %6581
  %6582 = load %nyx_string*, %nyx_string** %6566
  %6583 = getelementptr [2 x i8], [2 x i8]* @.str764, i32 0, i32 0
  %6584 = call %nyx_string* @nyx_string_from_cstr(i8* %6583)
  %6585 = call i64 @nyx_string_index_of(%nyx_string* %6582, %nyx_string* %6584)
  %6586 = alloca i64
  store i64 %6585, i64* %6586
  %6587 = load i64, i64* %6586
  %6588 = icmp sgt i64 %6587, 0
  br i1 %6588, label %then1408, label %else1409
then1408:
  %6589 = load %nyx_string*, %nyx_string** %6566
  %6590 = load i64, i64* %6586
  %6591 = add i64 %6590, 1
  %6592 = load %nyx_string*, %nyx_string** %6566
  %6593 = call i64 @nyx_string_length_utf8(%nyx_string* %6592)
  %6594 = call %nyx_string* @nyx_string_substring(%nyx_string* %6589, i64 %6591, i64 %6593)
  %6595 = call %nyx_string* @nyx_string_trim(%nyx_string* %6594)
  %6596 = alloca %nyx_string*
  store %nyx_string* %6595, %nyx_string** %6596
  %6597 = load %nyx_string*, %nyx_string** %6596
  %6598 = getelementptr [3 x i8], [3 x i8]* @.str765, i32 0, i32 0
  %6599 = call %nyx_string* @nyx_string_from_cstr(i8* %6598)
  %6600 = call i64 @nyx_string_index_of(%nyx_string* %6597, %nyx_string* %6599)
  %6601 = alloca i64
  store i64 %6600, i64* %6601
  %6602 = load i64, i64* %6601
  %6603 = icmp sge i64 %6602, 0
  br i1 %6603, label %then1411, label %else1412
then1411:
  %6604 = load %nyx_string*, %nyx_string** %6596
  %6605 = load i64, i64* %6601
  %6606 = call %nyx_string* @nyx_string_substring(%nyx_string* %6604, i64 0, i64 %6605)
  %6607 = call %nyx_string* @nyx_string_trim(%nyx_string* %6606)
  store %nyx_string* %6607, %nyx_string** %6596
  br label %merge1413
else1412:
  br label %merge1413
merge1413:
  %6608 = load %nyx_string*, %nyx_string** %6596
  %6609 = call i64 @nyx_string_length_utf8(%nyx_string* %6608)
  %6610 = icmp sgt i64 %6609, 0
  br i1 %6610, label %then1414, label %else1415
then1414:
  %6611 = load %nyx_string*, %nyx_string** %6596
  %6612 = call { i64, i8* }* @ty_parse(%nyx_string* %6611)
  %6613 = call { i64, i8* }* @resolve_type({ i64, i8* }* %6612)
  store { i64, i8* }* %6613, { i64, i8* }** %6581
  br label %merge1416
else1415:
  br label %merge1416
merge1416:
  br label %merge1410
else1409:
  br label %merge1410
merge1410:
  %6614 = load { i64, i8* }*, { i64, i8* }** @g_alias_names
  %6615 = load %nyx_string*, %nyx_string** %6569
  %6616 = ptrtoint %nyx_string* %6615 to i64
  call void @nyx_array_push({ i64, i8* }* %6614, i64 %6616)
  %6617 = load { i64, i8* }*, { i64, i8* }** @g_alias_targets
  %6618 = load { i64, i8* }*, { i64, i8* }** %6581
  %6619 = ptrtoint { i64, i8* }* %6618 to i64
  call void @nyx_array_push({ i64, i8* }* %6617, i64 %6619)
  %6620 = load i64, i64* @g_alias_count
  %6621 = add i64 %6620, 1
  store i64 %6621, i64* @g_alias_count
  br label %merge1407
else1406:
  br label %merge1407
merge1407:
  br label %merge1404
else1403:
  br label %merge1404
merge1404:
  br label %merge1401
else1400:
  br label %merge1401
merge1401:
  br label %merge1398
else1397:
  br label %merge1398
merge1398:
  %6622 = load i64, i64* %6193
  %6623 = add i64 %6622, 1
  store i64 %6623, i64* %6193
  br label %while_cond1288
while_end1290:
  ret i64 0
}

define internal %nyx_string* @scan_extract_name(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %6624 = alloca i64
  store i64 0, i64* %6624
  br label %while_cond1417
while_cond1417:
  %6625 = load i64, i64* %6624
  %6626 = load %nyx_string*, %nyx_string** %s.ptr
  %6627 = call i64 @nyx_string_length_utf8(%nyx_string* %6626)
  %6628 = icmp slt i64 %6625, %6627
  br i1 %6628, label %while_body1418, label %while_end1419
while_body1418:
  %6629 = load %nyx_string*, %nyx_string** %s.ptr
  %6630 = load i64, i64* %6624
  %6631 = call i8 @nyx_string_char_at(%nyx_string* %6629, i64 %6630)
  %6632 = zext i8 %6631 to i64
  %6633 = alloca i64
  store i64 %6632, i64* %6633
  %6634 = alloca i1
  store i1 0, i1* %6634
  %6635 = load i64, i64* %6633
  %6636 = icmp sge i64 %6635, 65
  br i1 %6636, label %then1420, label %else1421
then1420:
  %6637 = load i64, i64* %6633
  %6638 = icmp sle i64 %6637, 90
  br i1 %6638, label %then1423, label %else1424
then1423:
  store i1 1, i1* %6634
  br label %merge1425
else1424:
  br label %merge1425
merge1425:
  br label %merge1422
else1421:
  br label %merge1422
merge1422:
  %6639 = load i64, i64* %6633
  %6640 = icmp sge i64 %6639, 97
  br i1 %6640, label %then1426, label %else1427
then1426:
  %6641 = load i64, i64* %6633
  %6642 = icmp sle i64 %6641, 122
  br i1 %6642, label %then1429, label %else1430
then1429:
  store i1 1, i1* %6634
  br label %merge1431
else1430:
  br label %merge1431
merge1431:
  br label %merge1428
else1427:
  br label %merge1428
merge1428:
  %6643 = alloca i1
  store i1 0, i1* %6643
  %6644 = load i64, i64* %6633
  %6645 = icmp sge i64 %6644, 48
  br i1 %6645, label %then1432, label %else1433
then1432:
  %6646 = load i64, i64* %6633
  %6647 = icmp sle i64 %6646, 57
  br i1 %6647, label %then1435, label %else1436
then1435:
  store i1 1, i1* %6643
  br label %merge1437
else1436:
  br label %merge1437
merge1437:
  br label %merge1434
else1433:
  br label %merge1434
merge1434:
  %6648 = load i64, i64* %6633
  %6649 = icmp eq i64 %6648, 95
  %6650 = alloca i1
  store i1 %6649, i1* %6650
  %6651 = load i64, i64* %6624
  %6652 = icmp eq i64 %6651, 0
  br i1 %6652, label %then1438, label %else1439
then1438:
  %6653 = load i1, i1* %6634
  %6654 = xor i1 %6653, true
  br i1 %6654, label %then1441, label %else1442
then1441:
  %6655 = load i1, i1* %6650
  %6656 = xor i1 %6655, true
  br i1 %6656, label %then1444, label %else1445
then1444:
  %6657 = getelementptr [1 x i8], [1 x i8]* @.str766, i32 0, i32 0
  %6658 = call %nyx_string* @nyx_string_from_cstr(i8* %6657)
  ret %nyx_string* %6658
else1445:
  br label %merge1446
merge1446:
  br label %merge1443
else1442:
  br label %merge1443
merge1443:
  br label %merge1440
else1439:
  %6659 = load i1, i1* %6634
  %6660 = xor i1 %6659, true
  br i1 %6660, label %then1447, label %else1448
then1447:
  %6661 = load i1, i1* %6643
  %6662 = xor i1 %6661, true
  br i1 %6662, label %then1450, label %else1451
then1450:
  %6663 = load i1, i1* %6650
  %6664 = xor i1 %6663, true
  br i1 %6664, label %then1453, label %else1454
then1453:
  %6665 = load %nyx_string*, %nyx_string** %s.ptr
  %6666 = load i64, i64* %6624
  %6667 = call %nyx_string* @nyx_string_substring(%nyx_string* %6665, i64 0, i64 %6666)
  ret %nyx_string* %6667
else1454:
  br label %merge1455
merge1455:
  br label %merge1452
else1451:
  br label %merge1452
merge1452:
  br label %merge1449
else1448:
  br label %merge1449
merge1449:
  br label %merge1440
merge1440:
  %6668 = load i64, i64* %6624
  %6669 = add i64 %6668, 1
  store i64 %6669, i64* %6624
  br label %while_cond1417
while_end1419:
  %6670 = load %nyx_string*, %nyx_string** %s.ptr
  ret %nyx_string* %6670
}

define internal i64 @init_known_methods(
) {
  %6671 = load i64, i64* @g_known_methods_ready
  %6672 = icmp eq i64 %6671, 1
  br i1 %6672, label %then1456, label %else1457
then1456:
  ret i64 0
else1457:
  br label %merge1458
merge1458:
  %6673 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6674 = getelementptr [7 x i8], [7 x i8]* @.str767, i32 0, i32 0
  %6675 = call %nyx_string* @nyx_string_from_cstr(i8* %6674)
  %6676 = ptrtoint %nyx_string* %6675 to i64
  call void @nyx_array_push({ i64, i8* }* %6673, i64 %6676)
  %6677 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6678 = getelementptr [5 x i8], [5 x i8]* @.str768, i32 0, i32 0
  %6679 = call %nyx_string* @nyx_string_from_cstr(i8* %6678)
  %6680 = ptrtoint %nyx_string* %6679 to i64
  call void @nyx_array_push({ i64, i8* }* %6677, i64 %6680)
  %6681 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6682 = getelementptr [4 x i8], [4 x i8]* @.str769, i32 0, i32 0
  %6683 = call %nyx_string* @nyx_string_from_cstr(i8* %6682)
  %6684 = ptrtoint %nyx_string* %6683 to i64
  call void @nyx_array_push({ i64, i8* }* %6681, i64 %6684)
  %6685 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6686 = getelementptr [8 x i8], [8 x i8]* @.str770, i32 0, i32 0
  %6687 = call %nyx_string* @nyx_string_from_cstr(i8* %6686)
  %6688 = ptrtoint %nyx_string* %6687 to i64
  call void @nyx_array_push({ i64, i8* }* %6685, i64 %6688)
  %6689 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6690 = getelementptr [6 x i8], [6 x i8]* @.str771, i32 0, i32 0
  %6691 = call %nyx_string* @nyx_string_from_cstr(i8* %6690)
  %6692 = ptrtoint %nyx_string* %6691 to i64
  call void @nyx_array_push({ i64, i8* }* %6689, i64 %6692)
  %6693 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6694 = getelementptr [7 x i8], [7 x i8]* @.str772, i32 0, i32 0
  %6695 = call %nyx_string* @nyx_string_from_cstr(i8* %6694)
  %6696 = ptrtoint %nyx_string* %6695 to i64
  call void @nyx_array_push({ i64, i8* }* %6693, i64 %6696)
  %6697 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6698 = getelementptr [7 x i8], [7 x i8]* @.str773, i32 0, i32 0
  %6699 = call %nyx_string* @nyx_string_from_cstr(i8* %6698)
  %6700 = ptrtoint %nyx_string* %6699 to i64
  call void @nyx_array_push({ i64, i8* }* %6697, i64 %6700)
  %6701 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6702 = getelementptr [6 x i8], [6 x i8]* @.str774, i32 0, i32 0
  %6703 = call %nyx_string* @nyx_string_from_cstr(i8* %6702)
  %6704 = ptrtoint %nyx_string* %6703 to i64
  call void @nyx_array_push({ i64, i8* }* %6701, i64 %6704)
  %6705 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6706 = getelementptr [8 x i8], [8 x i8]* @.str775, i32 0, i32 0
  %6707 = call %nyx_string* @nyx_string_from_cstr(i8* %6706)
  %6708 = ptrtoint %nyx_string* %6707 to i64
  call void @nyx_array_push({ i64, i8* }* %6705, i64 %6708)
  %6709 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6710 = getelementptr [8 x i8], [8 x i8]* @.str776, i32 0, i32 0
  %6711 = call %nyx_string* @nyx_string_from_cstr(i8* %6710)
  %6712 = ptrtoint %nyx_string* %6711 to i64
  call void @nyx_array_push({ i64, i8* }* %6709, i64 %6712)
  %6713 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6714 = getelementptr [5 x i8], [5 x i8]* @.str777, i32 0, i32 0
  %6715 = call %nyx_string* @nyx_string_from_cstr(i8* %6714)
  %6716 = ptrtoint %nyx_string* %6715 to i64
  call void @nyx_array_push({ i64, i8* }* %6713, i64 %6716)
  %6717 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6718 = getelementptr [5 x i8], [5 x i8]* @.str778, i32 0, i32 0
  %6719 = call %nyx_string* @nyx_string_from_cstr(i8* %6718)
  %6720 = ptrtoint %nyx_string* %6719 to i64
  call void @nyx_array_push({ i64, i8* }* %6717, i64 %6720)
  %6721 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6722 = getelementptr [12 x i8], [12 x i8]* @.str779, i32 0, i32 0
  %6723 = call %nyx_string* @nyx_string_from_cstr(i8* %6722)
  %6724 = ptrtoint %nyx_string* %6723 to i64
  call void @nyx_array_push({ i64, i8* }* %6721, i64 %6724)
  %6725 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6726 = getelementptr [9 x i8], [9 x i8]* @.str780, i32 0, i32 0
  %6727 = call %nyx_string* @nyx_string_from_cstr(i8* %6726)
  %6728 = ptrtoint %nyx_string* %6727 to i64
  call void @nyx_array_push({ i64, i8* }* %6725, i64 %6728)
  %6729 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6730 = getelementptr [6 x i8], [6 x i8]* @.str781, i32 0, i32 0
  %6731 = call %nyx_string* @nyx_string_from_cstr(i8* %6730)
  %6732 = ptrtoint %nyx_string* %6731 to i64
  call void @nyx_array_push({ i64, i8* }* %6729, i64 %6732)
  %6733 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6734 = getelementptr [7 x i8], [7 x i8]* @.str782, i32 0, i32 0
  %6735 = call %nyx_string* @nyx_string_from_cstr(i8* %6734)
  %6736 = ptrtoint %nyx_string* %6735 to i64
  call void @nyx_array_push({ i64, i8* }* %6733, i64 %6736)
  %6737 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6738 = getelementptr [10 x i8], [10 x i8]* @.str783, i32 0, i32 0
  %6739 = call %nyx_string* @nyx_string_from_cstr(i8* %6738)
  %6740 = ptrtoint %nyx_string* %6739 to i64
  call void @nyx_array_push({ i64, i8* }* %6737, i64 %6740)
  %6741 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6742 = getelementptr [5 x i8], [5 x i8]* @.str784, i32 0, i32 0
  %6743 = call %nyx_string* @nyx_string_from_cstr(i8* %6742)
  %6744 = ptrtoint %nyx_string* %6743 to i64
  call void @nyx_array_push({ i64, i8* }* %6741, i64 %6744)
  %6745 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6746 = getelementptr [8 x i8], [8 x i8]* @.str785, i32 0, i32 0
  %6747 = call %nyx_string* @nyx_string_from_cstr(i8* %6746)
  %6748 = ptrtoint %nyx_string* %6747 to i64
  call void @nyx_array_push({ i64, i8* }* %6745, i64 %6748)
  %6749 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6750 = getelementptr [8 x i8], [8 x i8]* @.str786, i32 0, i32 0
  %6751 = call %nyx_string* @nyx_string_from_cstr(i8* %6750)
  %6752 = ptrtoint %nyx_string* %6751 to i64
  call void @nyx_array_push({ i64, i8* }* %6749, i64 %6752)
  %6753 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6754 = getelementptr [9 x i8], [9 x i8]* @.str787, i32 0, i32 0
  %6755 = call %nyx_string* @nyx_string_from_cstr(i8* %6754)
  %6756 = ptrtoint %nyx_string* %6755 to i64
  call void @nyx_array_push({ i64, i8* }* %6753, i64 %6756)
  %6757 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6758 = getelementptr [9 x i8], [9 x i8]* @.str788, i32 0, i32 0
  %6759 = call %nyx_string* @nyx_string_from_cstr(i8* %6758)
  %6760 = ptrtoint %nyx_string* %6759 to i64
  call void @nyx_array_push({ i64, i8* }* %6757, i64 %6760)
  %6761 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6762 = getelementptr [8 x i8], [8 x i8]* @.str789, i32 0, i32 0
  %6763 = call %nyx_string* @nyx_string_from_cstr(i8* %6762)
  %6764 = ptrtoint %nyx_string* %6763 to i64
  call void @nyx_array_push({ i64, i8* }* %6761, i64 %6764)
  %6765 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6766 = getelementptr [7 x i8], [7 x i8]* @.str790, i32 0, i32 0
  %6767 = call %nyx_string* @nyx_string_from_cstr(i8* %6766)
  %6768 = ptrtoint %nyx_string* %6767 to i64
  call void @nyx_array_push({ i64, i8* }* %6765, i64 %6768)
  %6769 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6770 = getelementptr [11 x i8], [11 x i8]* @.str791, i32 0, i32 0
  %6771 = call %nyx_string* @nyx_string_from_cstr(i8* %6770)
  %6772 = ptrtoint %nyx_string* %6771 to i64
  call void @nyx_array_push({ i64, i8* }* %6769, i64 %6772)
  %6773 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6774 = getelementptr [9 x i8], [9 x i8]* @.str792, i32 0, i32 0
  %6775 = call %nyx_string* @nyx_string_from_cstr(i8* %6774)
  %6776 = ptrtoint %nyx_string* %6775 to i64
  call void @nyx_array_push({ i64, i8* }* %6773, i64 %6776)
  %6777 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6778 = getelementptr [12 x i8], [12 x i8]* @.str793, i32 0, i32 0
  %6779 = call %nyx_string* @nyx_string_from_cstr(i8* %6778)
  %6780 = ptrtoint %nyx_string* %6779 to i64
  call void @nyx_array_push({ i64, i8* }* %6777, i64 %6780)
  %6781 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6782 = getelementptr [10 x i8], [10 x i8]* @.str794, i32 0, i32 0
  %6783 = call %nyx_string* @nyx_string_from_cstr(i8* %6782)
  %6784 = ptrtoint %nyx_string* %6783 to i64
  call void @nyx_array_push({ i64, i8* }* %6781, i64 %6784)
  %6785 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6786 = getelementptr [4 x i8], [4 x i8]* @.str795, i32 0, i32 0
  %6787 = call %nyx_string* @nyx_string_from_cstr(i8* %6786)
  %6788 = ptrtoint %nyx_string* %6787 to i64
  call void @nyx_array_push({ i64, i8* }* %6785, i64 %6788)
  %6789 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6790 = getelementptr [4 x i8], [4 x i8]* @.str796, i32 0, i32 0
  %6791 = call %nyx_string* @nyx_string_from_cstr(i8* %6790)
  %6792 = ptrtoint %nyx_string* %6791 to i64
  call void @nyx_array_push({ i64, i8* }* %6789, i64 %6792)
  %6793 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6794 = getelementptr [4 x i8], [4 x i8]* @.str797, i32 0, i32 0
  %6795 = call %nyx_string* @nyx_string_from_cstr(i8* %6794)
  %6796 = ptrtoint %nyx_string* %6795 to i64
  call void @nyx_array_push({ i64, i8* }* %6793, i64 %6796)
  %6797 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6798 = getelementptr [5 x i8], [5 x i8]* @.str798, i32 0, i32 0
  %6799 = call %nyx_string* @nyx_string_from_cstr(i8* %6798)
  %6800 = ptrtoint %nyx_string* %6799 to i64
  call void @nyx_array_push({ i64, i8* }* %6797, i64 %6800)
  %6801 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6802 = getelementptr [7 x i8], [7 x i8]* @.str799, i32 0, i32 0
  %6803 = call %nyx_string* @nyx_string_from_cstr(i8* %6802)
  %6804 = ptrtoint %nyx_string* %6803 to i64
  call void @nyx_array_push({ i64, i8* }* %6801, i64 %6804)
  %6805 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6806 = getelementptr [5 x i8], [5 x i8]* @.str800, i32 0, i32 0
  %6807 = call %nyx_string* @nyx_string_from_cstr(i8* %6806)
  %6808 = ptrtoint %nyx_string* %6807 to i64
  call void @nyx_array_push({ i64, i8* }* %6805, i64 %6808)
  %6809 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6810 = getelementptr [6 x i8], [6 x i8]* @.str801, i32 0, i32 0
  %6811 = call %nyx_string* @nyx_string_from_cstr(i8* %6810)
  %6812 = ptrtoint %nyx_string* %6811 to i64
  call void @nyx_array_push({ i64, i8* }* %6809, i64 %6812)
  %6813 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6814 = getelementptr [8 x i8], [8 x i8]* @.str802, i32 0, i32 0
  %6815 = call %nyx_string* @nyx_string_from_cstr(i8* %6814)
  %6816 = ptrtoint %nyx_string* %6815 to i64
  call void @nyx_array_push({ i64, i8* }* %6813, i64 %6816)
  %6817 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6818 = getelementptr [7 x i8], [7 x i8]* @.str803, i32 0, i32 0
  %6819 = call %nyx_string* @nyx_string_from_cstr(i8* %6818)
  %6820 = ptrtoint %nyx_string* %6819 to i64
  call void @nyx_array_push({ i64, i8* }* %6817, i64 %6820)
  %6821 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6822 = getelementptr [7 x i8], [7 x i8]* @.str804, i32 0, i32 0
  %6823 = call %nyx_string* @nyx_string_from_cstr(i8* %6822)
  %6824 = ptrtoint %nyx_string* %6823 to i64
  call void @nyx_array_push({ i64, i8* }* %6821, i64 %6824)
  %6825 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6826 = getelementptr [11 x i8], [11 x i8]* @.str805, i32 0, i32 0
  %6827 = call %nyx_string* @nyx_string_from_cstr(i8* %6826)
  %6828 = ptrtoint %nyx_string* %6827 to i64
  call void @nyx_array_push({ i64, i8* }* %6825, i64 %6828)
  %6829 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6830 = getelementptr [10 x i8], [10 x i8]* @.str806, i32 0, i32 0
  %6831 = call %nyx_string* @nyx_string_from_cstr(i8* %6830)
  %6832 = ptrtoint %nyx_string* %6831 to i64
  call void @nyx_array_push({ i64, i8* }* %6829, i64 %6832)
  %6833 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6834 = getelementptr [5 x i8], [5 x i8]* @.str807, i32 0, i32 0
  %6835 = call %nyx_string* @nyx_string_from_cstr(i8* %6834)
  %6836 = ptrtoint %nyx_string* %6835 to i64
  call void @nyx_array_push({ i64, i8* }* %6833, i64 %6836)
  %6837 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6838 = getelementptr [4 x i8], [4 x i8]* @.str808, i32 0, i32 0
  %6839 = call %nyx_string* @nyx_string_from_cstr(i8* %6838)
  %6840 = ptrtoint %nyx_string* %6839 to i64
  call void @nyx_array_push({ i64, i8* }* %6837, i64 %6840)
  %6841 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6842 = getelementptr [7 x i8], [7 x i8]* @.str809, i32 0, i32 0
  %6843 = call %nyx_string* @nyx_string_from_cstr(i8* %6842)
  %6844 = ptrtoint %nyx_string* %6843 to i64
  call void @nyx_array_push({ i64, i8* }* %6841, i64 %6844)
  %6845 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6846 = getelementptr [5 x i8], [5 x i8]* @.str810, i32 0, i32 0
  %6847 = call %nyx_string* @nyx_string_from_cstr(i8* %6846)
  %6848 = ptrtoint %nyx_string* %6847 to i64
  call void @nyx_array_push({ i64, i8* }* %6845, i64 %6848)
  %6849 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6850 = getelementptr [5 x i8], [5 x i8]* @.str811, i32 0, i32 0
  %6851 = call %nyx_string* @nyx_string_from_cstr(i8* %6850)
  %6852 = ptrtoint %nyx_string* %6851 to i64
  call void @nyx_array_push({ i64, i8* }* %6849, i64 %6852)
  %6853 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6854 = getelementptr [10 x i8], [10 x i8]* @.str812, i32 0, i32 0
  %6855 = call %nyx_string* @nyx_string_from_cstr(i8* %6854)
  %6856 = ptrtoint %nyx_string* %6855 to i64
  call void @nyx_array_push({ i64, i8* }* %6853, i64 %6856)
  %6857 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6858 = getelementptr [6 x i8], [6 x i8]* @.str813, i32 0, i32 0
  %6859 = call %nyx_string* @nyx_string_from_cstr(i8* %6858)
  %6860 = ptrtoint %nyx_string* %6859 to i64
  call void @nyx_array_push({ i64, i8* }* %6857, i64 %6860)
  %6861 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6862 = getelementptr [8 x i8], [8 x i8]* @.str814, i32 0, i32 0
  %6863 = call %nyx_string* @nyx_string_from_cstr(i8* %6862)
  %6864 = ptrtoint %nyx_string* %6863 to i64
  call void @nyx_array_push({ i64, i8* }* %6861, i64 %6864)
  %6865 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6866 = getelementptr [5 x i8], [5 x i8]* @.str815, i32 0, i32 0
  %6867 = call %nyx_string* @nyx_string_from_cstr(i8* %6866)
  %6868 = ptrtoint %nyx_string* %6867 to i64
  call void @nyx_array_push({ i64, i8* }* %6865, i64 %6868)
  %6869 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6870 = getelementptr [4 x i8], [4 x i8]* @.str816, i32 0, i32 0
  %6871 = call %nyx_string* @nyx_string_from_cstr(i8* %6870)
  %6872 = ptrtoint %nyx_string* %6871 to i64
  call void @nyx_array_push({ i64, i8* }* %6869, i64 %6872)
  %6873 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6874 = getelementptr [6 x i8], [6 x i8]* @.str817, i32 0, i32 0
  %6875 = call %nyx_string* @nyx_string_from_cstr(i8* %6874)
  %6876 = ptrtoint %nyx_string* %6875 to i64
  call void @nyx_array_push({ i64, i8* }* %6873, i64 %6876)
  %6877 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6878 = getelementptr [4 x i8], [4 x i8]* @.str818, i32 0, i32 0
  %6879 = call %nyx_string* @nyx_string_from_cstr(i8* %6878)
  %6880 = ptrtoint %nyx_string* %6879 to i64
  call void @nyx_array_push({ i64, i8* }* %6877, i64 %6880)
  %6881 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6882 = getelementptr [4 x i8], [4 x i8]* @.str819, i32 0, i32 0
  %6883 = call %nyx_string* @nyx_string_from_cstr(i8* %6882)
  %6884 = ptrtoint %nyx_string* %6883 to i64
  call void @nyx_array_push({ i64, i8* }* %6881, i64 %6884)
  %6885 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6886 = getelementptr [6 x i8], [6 x i8]* @.str820, i32 0, i32 0
  %6887 = call %nyx_string* @nyx_string_from_cstr(i8* %6886)
  %6888 = ptrtoint %nyx_string* %6887 to i64
  call void @nyx_array_push({ i64, i8* }* %6885, i64 %6888)
  %6889 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6890 = getelementptr [8 x i8], [8 x i8]* @.str821, i32 0, i32 0
  %6891 = call %nyx_string* @nyx_string_from_cstr(i8* %6890)
  %6892 = ptrtoint %nyx_string* %6891 to i64
  call void @nyx_array_push({ i64, i8* }* %6889, i64 %6892)
  %6893 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6894 = getelementptr [7 x i8], [7 x i8]* @.str822, i32 0, i32 0
  %6895 = call %nyx_string* @nyx_string_from_cstr(i8* %6894)
  %6896 = ptrtoint %nyx_string* %6895 to i64
  call void @nyx_array_push({ i64, i8* }* %6893, i64 %6896)
  %6897 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6898 = getelementptr [8 x i8], [8 x i8]* @.str823, i32 0, i32 0
  %6899 = call %nyx_string* @nyx_string_from_cstr(i8* %6898)
  %6900 = ptrtoint %nyx_string* %6899 to i64
  call void @nyx_array_push({ i64, i8* }* %6897, i64 %6900)
  %6901 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6902 = getelementptr [7 x i8], [7 x i8]* @.str824, i32 0, i32 0
  %6903 = call %nyx_string* @nyx_string_from_cstr(i8* %6902)
  %6904 = ptrtoint %nyx_string* %6903 to i64
  call void @nyx_array_push({ i64, i8* }* %6901, i64 %6904)
  %6905 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6906 = getelementptr [10 x i8], [10 x i8]* @.str825, i32 0, i32 0
  %6907 = call %nyx_string* @nyx_string_from_cstr(i8* %6906)
  %6908 = ptrtoint %nyx_string* %6907 to i64
  call void @nyx_array_push({ i64, i8* }* %6905, i64 %6908)
  %6909 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6910 = getelementptr [11 x i8], [11 x i8]* @.str826, i32 0, i32 0
  %6911 = call %nyx_string* @nyx_string_from_cstr(i8* %6910)
  %6912 = ptrtoint %nyx_string* %6911 to i64
  call void @nyx_array_push({ i64, i8* }* %6909, i64 %6912)
  %6913 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6914 = getelementptr [8 x i8], [8 x i8]* @.str827, i32 0, i32 0
  %6915 = call %nyx_string* @nyx_string_from_cstr(i8* %6914)
  %6916 = ptrtoint %nyx_string* %6915 to i64
  call void @nyx_array_push({ i64, i8* }* %6913, i64 %6916)
  %6917 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6918 = getelementptr [9 x i8], [9 x i8]* @.str828, i32 0, i32 0
  %6919 = call %nyx_string* @nyx_string_from_cstr(i8* %6918)
  %6920 = ptrtoint %nyx_string* %6919 to i64
  call void @nyx_array_push({ i64, i8* }* %6917, i64 %6920)
  %6921 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6922 = getelementptr [6 x i8], [6 x i8]* @.str829, i32 0, i32 0
  %6923 = call %nyx_string* @nyx_string_from_cstr(i8* %6922)
  %6924 = ptrtoint %nyx_string* %6923 to i64
  call void @nyx_array_push({ i64, i8* }* %6921, i64 %6924)
  %6925 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6926 = getelementptr [3 x i8], [3 x i8]* @.str830, i32 0, i32 0
  %6927 = call %nyx_string* @nyx_string_from_cstr(i8* %6926)
  %6928 = ptrtoint %nyx_string* %6927 to i64
  call void @nyx_array_push({ i64, i8* }* %6925, i64 %6928)
  %6929 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6930 = getelementptr [10 x i8], [10 x i8]* @.str831, i32 0, i32 0
  %6931 = call %nyx_string* @nyx_string_from_cstr(i8* %6930)
  %6932 = ptrtoint %nyx_string* %6931 to i64
  call void @nyx_array_push({ i64, i8* }* %6929, i64 %6932)
  store i64 1, i64* @g_known_methods_ready
  ret i64 0
}

define internal i1 @is_known_method(
%nyx_string* %name.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %6933 = alloca i64
  store i64 0, i64* %6933
  br label %while_cond1459
while_cond1459:
  %6934 = load i64, i64* %6933
  %6935 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6936 = call i64 @nyx_array_length({ i64, i8* }* %6935)
  %6937 = icmp slt i64 %6934, %6936
  br i1 %6937, label %while_body1460, label %while_end1461
while_body1460:
  %6938 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %6939 = load i64, i64* %6933
  %6940 = call i64 @nyx_array_get({ i64, i8* }* %6938, i64 %6939)
  %6941 = inttoptr i64 %6940 to %nyx_string*
  %6942 = alloca %nyx_string*
  store %nyx_string* %6941, %nyx_string** %6942
  %6943 = load %nyx_string*, %nyx_string** %6942
  %6944 = load %nyx_string*, %nyx_string** %name.ptr
  %6945 = call i8* @nyx_string_to_cstr(%nyx_string* %6943)
  %6946 = call i8* @nyx_string_to_cstr(%nyx_string* %6944)
  %6947 = call i32 @strcmp(i8* %6945, i8* %6946)
  %6948 = icmp eq i32 %6947, 0
  br i1 %6948, label %then1462, label %else1463
then1462:
  ret i1 1
else1463:
  br label %merge1464
merge1464:
  %6949 = load i64, i64* %6933
  %6950 = add i64 %6949, 1
  store i64 %6950, i64* %6933
  br label %while_cond1459
while_end1461:
  ret i1 0
}

define internal i1 @is_impl_method(
%nyx_string* %name.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %6951 = load i64, i64* @g_sym_count
  %6952 = sub i64 %6951, 1
  %6953 = alloca i64
  store i64 %6952, i64* %6953
  br label %while_cond1465
while_cond1465:
  %6954 = load i64, i64* %6953
  %6955 = icmp sge i64 %6954, 0
  br i1 %6955, label %while_body1466, label %while_end1467
while_body1466:
  %6956 = load { i64, i8* }*, { i64, i8* }** @g_sym_names
  %6957 = load i64, i64* %6953
  %6958 = call i64 @nyx_array_get({ i64, i8* }* %6956, i64 %6957)
  %6959 = inttoptr i64 %6958 to %nyx_string*
  %6960 = alloca %nyx_string*
  store %nyx_string* %6959, %nyx_string** %6960
  %6961 = getelementptr [2 x i8], [2 x i8]* @.str832, i32 0, i32 0
  %6962 = call %nyx_string* @nyx_string_from_cstr(i8* %6961)
  %6963 = load %nyx_string*, %nyx_string** %name.ptr
  %6964 = call %nyx_string* @nyx_string_concat(%nyx_string* %6962, %nyx_string* %6963)
  %6965 = alloca %nyx_string*
  store %nyx_string* %6964, %nyx_string** %6965
  %6966 = load %nyx_string*, %nyx_string** %6965
  %6967 = call i64 @nyx_string_length_utf8(%nyx_string* %6966)
  %6968 = alloca i64
  store i64 %6967, i64* %6968
  %6969 = load %nyx_string*, %nyx_string** %6960
  %6970 = call i64 @nyx_string_length_utf8(%nyx_string* %6969)
  %6971 = load i64, i64* %6968
  %6972 = icmp sgt i64 %6970, %6971
  br i1 %6972, label %then1468, label %else1469
then1468:
  %6973 = load %nyx_string*, %nyx_string** %6960
  %6974 = load %nyx_string*, %nyx_string** %6960
  %6975 = call i64 @nyx_string_length_utf8(%nyx_string* %6974)
  %6976 = load i64, i64* %6968
  %6977 = sub i64 %6975, %6976
  %6978 = load %nyx_string*, %nyx_string** %6960
  %6979 = call i64 @nyx_string_length_utf8(%nyx_string* %6978)
  %6980 = call %nyx_string* @nyx_string_substring(%nyx_string* %6973, i64 %6977, i64 %6979)
  %6981 = load %nyx_string*, %nyx_string** %6965
  %6982 = call i8* @nyx_string_to_cstr(%nyx_string* %6980)
  %6983 = call i8* @nyx_string_to_cstr(%nyx_string* %6981)
  %6984 = call i32 @strcmp(i8* %6982, i8* %6983)
  %6985 = icmp eq i32 %6984, 0
  br i1 %6985, label %then1471, label %else1472
then1471:
  ret i1 1
else1472:
  br label %merge1473
merge1473:
  br label %merge1470
else1469:
  br label %merge1470
merge1470:
  %6986 = load i64, i64* %6953
  %6987 = sub i64 %6986, 1
  store i64 %6987, i64* %6953
  br label %while_cond1465
while_end1467:
  ret i1 0
}

define internal %nyx_string* @suggest_similar(
%nyx_string* %target.param, { i64, i8* }* %candidates.param) {
  %target.ptr = alloca %nyx_string*
  store %nyx_string* %target.param, %nyx_string** %target.ptr
  %candidates.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %candidates.param, { i64, i8* }** %candidates.ptr
  %6988 = load %nyx_string*, %nyx_string** %target.ptr
  %6989 = call i64 @nyx_string_length_utf8(%nyx_string* %6988)
  %6990 = alloca i64
  store i64 %6989, i64* %6990
  %6991 = load i64, i64* %6990
  %6992 = icmp eq i64 %6991, 0
  br i1 %6992, label %then1474, label %else1475
then1474:
  %6993 = getelementptr [1 x i8], [1 x i8]* @.str833, i32 0, i32 0
  %6994 = call %nyx_string* @nyx_string_from_cstr(i8* %6993)
  ret %nyx_string* %6994
else1475:
  br label %merge1476
merge1476:
  %6995 = getelementptr [1 x i8], [1 x i8]* @.str834, i32 0, i32 0
  %6996 = call %nyx_string* @nyx_string_from_cstr(i8* %6995)
  %6997 = alloca %nyx_string*
  store %nyx_string* %6996, %nyx_string** %6997
  %6998 = alloca i64
  store i64 999, i64* %6998
  %6999 = alloca i64
  store i64 0, i64* %6999
  br label %while_cond1477
while_cond1477:
  %7000 = load i64, i64* %6999
  %7001 = load { i64, i8* }*, { i64, i8* }** %candidates.ptr
  %7002 = call i64 @nyx_array_length({ i64, i8* }* %7001)
  %7003 = icmp slt i64 %7000, %7002
  br i1 %7003, label %while_body1478, label %while_end1479
while_body1478:
  %7004 = load { i64, i8* }*, { i64, i8* }** %candidates.ptr
  %7005 = load i64, i64* %6999
  %7006 = call i64 @nyx_array_get({ i64, i8* }* %7004, i64 %7005)
  %7007 = inttoptr i64 %7006 to %nyx_string*
  %7008 = alloca %nyx_string*
  store %nyx_string* %7007, %nyx_string** %7008
  %7009 = load %nyx_string*, %nyx_string** %7008
  %7010 = call i64 @nyx_string_length_utf8(%nyx_string* %7009)
  %7011 = alloca i64
  store i64 %7010, i64* %7011
  %7012 = call { i64, i8* }* @nyx_array_new_ptr()
  %7013 = alloca { i64, i8* }*
  store { i64, i8* }* %7012, { i64, i8* }** %7013
  %7014 = alloca i64
  store i64 0, i64* %7014
  br label %while_cond1480
while_cond1480:
  %7015 = load i64, i64* %7014
  %7016 = load i64, i64* %7011
  %7017 = icmp sle i64 %7015, %7016
  br i1 %7017, label %while_body1481, label %while_end1482
while_body1481:
  %7018 = load { i64, i8* }*, { i64, i8* }** %7013
  %7019 = load i64, i64* %7014
  call void @nyx_array_push({ i64, i8* }* %7018, i64 %7019)
  %7020 = load i64, i64* %7014
  %7021 = add i64 %7020, 1
  store i64 %7021, i64* %7014
  br label %while_cond1480
while_end1482:
  %7022 = alloca i64
  store i64 1, i64* %7022
  br label %while_cond1483
while_cond1483:
  %7023 = load i64, i64* %7022
  %7024 = load i64, i64* %6990
  %7025 = icmp sle i64 %7023, %7024
  br i1 %7025, label %while_body1484, label %while_end1485
while_body1484:
  %7026 = call { i64, i8* }* @nyx_array_new_ptr()
  %7027 = alloca { i64, i8* }*
  store { i64, i8* }* %7026, { i64, i8* }** %7027
  %7028 = load { i64, i8* }*, { i64, i8* }** %7027
  %7029 = load i64, i64* %7022
  call void @nyx_array_push({ i64, i8* }* %7028, i64 %7029)
  %7030 = load %nyx_string*, %nyx_string** %target.ptr
  %7031 = load i64, i64* %7022
  %7032 = sub i64 %7031, 1
  %7033 = call i8 @nyx_string_char_at(%nyx_string* %7030, i64 %7032)
  %7034 = zext i8 %7033 to i64
  %7035 = alloca i64
  store i64 %7034, i64* %7035
  store i64 1, i64* %7014
  br label %while_cond1486
while_cond1486:
  %7036 = load i64, i64* %7014
  %7037 = load i64, i64* %7011
  %7038 = icmp sle i64 %7036, %7037
  br i1 %7038, label %while_body1487, label %while_end1488
while_body1487:
  %7039 = load %nyx_string*, %nyx_string** %7008
  %7040 = load i64, i64* %7014
  %7041 = sub i64 %7040, 1
  %7042 = call i8 @nyx_string_char_at(%nyx_string* %7039, i64 %7041)
  %7043 = zext i8 %7042 to i64
  %7044 = alloca i64
  store i64 %7043, i64* %7044
  %7045 = alloca i64
  store i64 1, i64* %7045
  %7046 = load i64, i64* %7035
  %7047 = load i64, i64* %7044
  %7048 = icmp eq i64 %7046, %7047
  br i1 %7048, label %then1489, label %else1490
then1489:
  store i64 0, i64* %7045
  br label %merge1491
else1490:
  br label %merge1491
merge1491:
  %7049 = load { i64, i8* }*, { i64, i8* }** %7027
  %7050 = load i64, i64* %7014
  %7051 = sub i64 %7050, 1
  %7052 = call i64 @nyx_array_get({ i64, i8* }* %7049, i64 %7051)
  %7053 = add i64 %7052, 1
  %7054 = alloca i64
  store i64 %7053, i64* %7054
  %7055 = load { i64, i8* }*, { i64, i8* }** %7013
  %7056 = load i64, i64* %7014
  %7057 = call i64 @nyx_array_get({ i64, i8* }* %7055, i64 %7056)
  %7058 = add i64 %7057, 1
  %7059 = alloca i64
  store i64 %7058, i64* %7059
  %7060 = load { i64, i8* }*, { i64, i8* }** %7013
  %7061 = load i64, i64* %7014
  %7062 = sub i64 %7061, 1
  %7063 = call i64 @nyx_array_get({ i64, i8* }* %7060, i64 %7062)
  %7064 = load i64, i64* %7045
  %7065 = add i64 %7063, %7064
  %7066 = alloca i64
  store i64 %7065, i64* %7066
  %7067 = load i64, i64* %7054
  %7068 = alloca i64
  store i64 %7067, i64* %7068
  %7069 = load i64, i64* %7059
  %7070 = load i64, i64* %7068
  %7071 = icmp slt i64 %7069, %7070
  br i1 %7071, label %then1492, label %else1493
then1492:
  %7072 = load i64, i64* %7059
  store i64 %7072, i64* %7068
  br label %merge1494
else1493:
  br label %merge1494
merge1494:
  %7073 = load i64, i64* %7066
  %7074 = load i64, i64* %7068
  %7075 = icmp slt i64 %7073, %7074
  br i1 %7075, label %then1495, label %else1496
then1495:
  %7076 = load i64, i64* %7066
  store i64 %7076, i64* %7068
  br label %merge1497
else1496:
  br label %merge1497
merge1497:
  %7077 = load { i64, i8* }*, { i64, i8* }** %7027
  %7078 = load i64, i64* %7068
  call void @nyx_array_push({ i64, i8* }* %7077, i64 %7078)
  %7079 = load i64, i64* %7014
  %7080 = add i64 %7079, 1
  store i64 %7080, i64* %7014
  br label %while_cond1486
while_end1488:
  %7081 = load { i64, i8* }*, { i64, i8* }** %7027
  store { i64, i8* }* %7081, { i64, i8* }** %7013
  %7082 = load i64, i64* %7022
  %7083 = add i64 %7082, 1
  store i64 %7083, i64* %7022
  br label %while_cond1483
while_end1485:
  %7084 = load { i64, i8* }*, { i64, i8* }** %7013
  %7085 = load i64, i64* %7011
  %7086 = call i64 @nyx_array_get({ i64, i8* }* %7084, i64 %7085)
  %7087 = alloca i64
  store i64 %7086, i64* %7087
  %7088 = alloca i64
  store i64 3, i64* %7088
  %7089 = load i64, i64* %6990
  %7090 = sdiv i64 %7089, 2
  %7091 = alloca i64
  store i64 %7090, i64* %7091
  %7092 = load i64, i64* %7091
  %7093 = load i64, i64* %7088
  %7094 = icmp slt i64 %7092, %7093
  br i1 %7094, label %then1498, label %else1499
then1498:
  %7095 = load i64, i64* %7091
  store i64 %7095, i64* %7088
  br label %merge1500
else1499:
  br label %merge1500
merge1500:
  %7096 = load i64, i64* %7088
  %7097 = icmp slt i64 %7096, 1
  br i1 %7097, label %then1501, label %else1502
then1501:
  store i64 1, i64* %7088
  br label %merge1503
else1502:
  br label %merge1503
merge1503:
  %7098 = load i64, i64* %7087
  %7099 = load i64, i64* %7088
  %7100 = icmp sle i64 %7098, %7099
  br i1 %7100, label %then1504, label %else1505
then1504:
  %7101 = load i64, i64* %7087
  %7102 = load i64, i64* %6998
  %7103 = icmp slt i64 %7101, %7102
  br i1 %7103, label %then1507, label %else1508
then1507:
  %7104 = load i64, i64* %7087
  store i64 %7104, i64* %6998
  %7105 = load %nyx_string*, %nyx_string** %7008
  store %nyx_string* %7105, %nyx_string** %6997
  br label %merge1509
else1508:
  br label %merge1509
merge1509:
  br label %merge1506
else1505:
  br label %merge1506
merge1506:
  %7106 = load i64, i64* %6999
  %7107 = add i64 %7106, 1
  store i64 %7107, i64* %6999
  br label %while_cond1477
while_end1479:
  %7108 = load %nyx_string*, %nyx_string** %6997
  %7109 = getelementptr [1 x i8], [1 x i8]* @.str835, i32 0, i32 0
  %7110 = call %nyx_string* @nyx_string_from_cstr(i8* %7109)
  %7111 = call i8* @nyx_string_to_cstr(%nyx_string* %7108)
  %7112 = call i8* @nyx_string_to_cstr(%nyx_string* %7110)
  %7113 = call i32 @strcmp(i8* %7111, i8* %7112)
  %7114 = icmp eq i32 %7113, 0
  br i1 %7114, label %then1510, label %else1511
then1510:
  %7115 = getelementptr [1 x i8], [1 x i8]* @.str836, i32 0, i32 0
  %7116 = call %nyx_string* @nyx_string_from_cstr(i8* %7115)
  ret %nyx_string* %7116
else1511:
  br label %merge1512
merge1512:
  %7117 = getelementptr [21 x i8], [21 x i8]* @.str837, i32 0, i32 0
  %7118 = call %nyx_string* @nyx_string_from_cstr(i8* %7117)
  %7119 = load %nyx_string*, %nyx_string** %6997
  %7120 = call %nyx_string* @nyx_string_concat(%nyx_string* %7118, %nyx_string* %7119)
  %7121 = getelementptr [4 x i8], [4 x i8]* @.str838, i32 0, i32 0
  %7122 = call %nyx_string* @nyx_string_from_cstr(i8* %7121)
  %7123 = call %nyx_string* @nyx_string_concat(%nyx_string* %7120, %nyx_string* %7122)
  %7124 = getelementptr [17 x i8], [17 x i8]* @.str839, i32 0, i32 0
  %7125 = call %nyx_string* @nyx_string_from_cstr(i8* %7124)
  %7126 = load %nyx_string*, %nyx_string** %6997
  %7127 = call %nyx_string* @nyx_string_concat(%nyx_string* %7125, %nyx_string* %7126)
  %7128 = getelementptr [4 x i8], [4 x i8]* @.str840, i32 0, i32 0
  %7129 = call %nyx_string* @nyx_string_from_cstr(i8* %7128)
  %7130 = call %nyx_string* @nyx_string_concat(%nyx_string* %7127, %nyx_string* %7129)
  %7131 = call %nyx_string* @msg(%nyx_string* %7123, %nyx_string* %7130)
  ret %nyx_string* %7131
}

define internal i1 @validate_method_call(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %7132 = call i64 @init_known_methods()
  %7133 = load %ASTNode, %ASTNode* %node.ptr
  %7134 = call %ASTNode @get_node_at(%ASTNode %7133, i64 0)
  %7135 = alloca %ASTNode
  store %ASTNode %7134, %ASTNode* %7135
  %7136 = load %ASTNode, %ASTNode* %node.ptr
  %7137 = call %nyx_string* @get_string_at(%ASTNode %7136, i64 1)
  %7138 = alloca %nyx_string*
  store %nyx_string* %7137, %nyx_string** %7138
  %7139 = load %ASTNode, %ASTNode* %node.ptr
  %7140 = call { i64, i8* }* @get_array_at(%ASTNode %7139, i64 2)
  %7141 = alloca { i64, i8* }*
  store { i64, i8* }* %7140, { i64, i8* }** %7141
  %7142 = load %ASTNode, %ASTNode* %7135
  %7143 = call i1 @validate_node(%ASTNode %7142)
  %7144 = xor i1 %7143, true
  br i1 %7144, label %then1513, label %else1514
then1513:
  ret i1 0
else1514:
  br label %merge1515
merge1515:
  %7145 = alloca i64
  store i64 0, i64* %7145
  br label %while_cond1516
while_cond1516:
  %7146 = load i64, i64* %7145
  %7147 = load { i64, i8* }*, { i64, i8* }** %7141
  %7148 = call i64 @nyx_array_length({ i64, i8* }* %7147)
  %7149 = icmp slt i64 %7146, %7148
  br i1 %7149, label %while_body1517, label %while_end1518
while_body1517:
  %7150 = load { i64, i8* }*, { i64, i8* }** %7141
  %7151 = load i64, i64* %7145
  %7152 = call i64 @nyx_array_get({ i64, i8* }* %7150, i64 %7151)
  %7153 = inttoptr i64 %7152 to { i64, i8* }*
  %7154 = call i64 @nyx_array_get({ i64, i8* }* %7153, i64 0)
  %7155 = call i64 @nyx_array_get({ i64, i8* }* %7153, i64 1)
  %7156 = inttoptr i64 %7154 to %nyx_string*
  %7157 = inttoptr i64 %7155 to { i64, i8* }*
  %7158 = alloca %ASTNode
  %7159 = getelementptr inbounds %ASTNode, %ASTNode* %7158, i32 0, i32 0
  store %nyx_string* %7156, %nyx_string** %7159
  %7160 = getelementptr inbounds %ASTNode, %ASTNode* %7158, i32 0, i32 1
  store { i64, i8* }* %7157, { i64, i8* }** %7160
  %7161 = load %ASTNode, %ASTNode* %7158
  %7162 = alloca %ASTNode
  store %ASTNode %7161, %ASTNode* %7162
  %7163 = load %ASTNode, %ASTNode* %7162
  %7164 = call i1 @validate_node(%ASTNode %7163)
  %7165 = xor i1 %7164, true
  br i1 %7165, label %then1519, label %else1520
then1519:
  ret i1 0
else1520:
  br label %merge1521
merge1521:
  %7166 = load i64, i64* %7145
  %7167 = add i64 %7166, 1
  store i64 %7167, i64* %7145
  br label %while_cond1516
while_end1518:
  %7168 = getelementptr %ASTNode, %ASTNode* %7135, i32 0, i32 0
  %7169 = load %nyx_string*, %nyx_string** %7168
  %7170 = getelementptr [11 x i8], [11 x i8]* @.str841, i32 0, i32 0
  %7171 = call %nyx_string* @nyx_string_from_cstr(i8* %7170)
  %7172 = call i8* @nyx_string_to_cstr(%nyx_string* %7169)
  %7173 = call i8* @nyx_string_to_cstr(%nyx_string* %7171)
  %7174 = call i32 @strcmp(i8* %7172, i8* %7173)
  %7175 = icmp eq i32 %7174, 0
  br i1 %7175, label %then1522, label %else1523
then1522:
  %7176 = load %ASTNode, %ASTNode* %7135
  %7177 = call %nyx_string* @get_string_at(%ASTNode %7176, i64 0)
  %7178 = alloca %nyx_string*
  store %nyx_string* %7177, %nyx_string** %7178
  %7179 = load %nyx_string*, %nyx_string** %7178
  %7180 = call %nyx_string* @scope_lookup(%nyx_string* %7179)
  %7181 = alloca %nyx_string*
  store %nyx_string* %7180, %nyx_string** %7181
  %7182 = alloca i1
  store i1 true, i1* %7182
  %7183 = alloca i1
  store i1 true, i1* %7183
  %7184 = alloca i1
  store i1 true, i1* %7184
  %7185 = load %nyx_string*, %nyx_string** %7181
  %7186 = getelementptr [4 x i8], [4 x i8]* @.str842, i32 0, i32 0
  %7187 = call %nyx_string* @nyx_string_from_cstr(i8* %7186)
  %7188 = call i8* @nyx_string_to_cstr(%nyx_string* %7185)
  %7189 = call i8* @nyx_string_to_cstr(%nyx_string* %7187)
  %7190 = call i32 @strcmp(i8* %7188, i8* %7189)
  %7191 = icmp eq i32 %7190, 0
  br i1 %7191, label %sc_or_end1526, label %sc_or_rhs1525
sc_or_rhs1525:
  %7192 = load %nyx_string*, %nyx_string** %7181
  %7193 = getelementptr [4 x i8], [4 x i8]* @.str843, i32 0, i32 0
  %7194 = call %nyx_string* @nyx_string_from_cstr(i8* %7193)
  %7195 = call i8* @nyx_string_to_cstr(%nyx_string* %7192)
  %7196 = call i8* @nyx_string_to_cstr(%nyx_string* %7194)
  %7197 = call i32 @strcmp(i8* %7195, i8* %7196)
  %7198 = icmp eq i32 %7197, 0
  store i1 %7198, i1* %7184
  br label %sc_or_end1526
sc_or_end1526:
  %7199 = load i1, i1* %7184
  br i1 %7199, label %sc_or_end1528, label %sc_or_rhs1527
sc_or_rhs1527:
  %7200 = load %nyx_string*, %nyx_string** %7181
  %7201 = getelementptr [6 x i8], [6 x i8]* @.str844, i32 0, i32 0
  %7202 = call %nyx_string* @nyx_string_from_cstr(i8* %7201)
  %7203 = call i8* @nyx_string_to_cstr(%nyx_string* %7200)
  %7204 = call i8* @nyx_string_to_cstr(%nyx_string* %7202)
  %7205 = call i32 @strcmp(i8* %7203, i8* %7204)
  %7206 = icmp eq i32 %7205, 0
  store i1 %7206, i1* %7183
  br label %sc_or_end1528
sc_or_end1528:
  %7207 = load i1, i1* %7183
  br i1 %7207, label %sc_or_end1530, label %sc_or_rhs1529
sc_or_rhs1529:
  %7208 = load %nyx_string*, %nyx_string** %7181
  %7209 = getelementptr [8 x i8], [8 x i8]* @.str845, i32 0, i32 0
  %7210 = call %nyx_string* @nyx_string_from_cstr(i8* %7209)
  %7211 = call i8* @nyx_string_to_cstr(%nyx_string* %7208)
  %7212 = call i8* @nyx_string_to_cstr(%nyx_string* %7210)
  %7213 = call i32 @strcmp(i8* %7211, i8* %7212)
  %7214 = icmp eq i32 %7213, 0
  store i1 %7214, i1* %7182
  br label %sc_or_end1530
sc_or_end1530:
  %7215 = load i1, i1* %7182
  br i1 %7215, label %then1531, label %else1532
then1531:
  %7216 = alloca i1
  store i1 false, i1* %7216
  %7217 = load %nyx_string*, %nyx_string** %7138
  %7218 = call i1 @is_known_method(%nyx_string* %7217)
  %7219 = xor i1 %7218, true
  br i1 %7219, label %sc_and_rhs1534, label %sc_and_end1535
sc_and_rhs1534:
  %7220 = load %nyx_string*, %nyx_string** %7138
  %7221 = call i1 @is_impl_method(%nyx_string* %7220)
  %7222 = xor i1 %7221, true
  store i1 %7222, i1* %7216
  br label %sc_and_end1535
sc_and_end1535:
  %7223 = load i1, i1* %7216
  br i1 %7223, label %then1536, label %else1537
then1536:
  %7224 = load %nyx_string*, %nyx_string** %7138
  %7225 = load { i64, i8* }*, { i64, i8* }** @g_known_methods
  %7226 = call %nyx_string* @suggest_similar(%nyx_string* %7224, { i64, i8* }* %7225)
  %7227 = alloca %nyx_string*
  store %nyx_string* %7226, %nyx_string** %7227
  %7228 = getelementptr [10 x i8], [10 x i8]* @.str846, i32 0, i32 0
  %7229 = call %nyx_string* @nyx_string_from_cstr(i8* %7228)
  %7230 = load %nyx_string*, %nyx_string** %7138
  %7231 = call %nyx_string* @nyx_string_concat(%nyx_string* %7229, %nyx_string* %7230)
  %7232 = getelementptr [26 x i8], [26 x i8]* @.str847, i32 0, i32 0
  %7233 = call %nyx_string* @nyx_string_from_cstr(i8* %7232)
  %7234 = call %nyx_string* @nyx_string_concat(%nyx_string* %7231, %nyx_string* %7233)
  %7235 = getelementptr [9 x i8], [9 x i8]* @.str848, i32 0, i32 0
  %7236 = call %nyx_string* @nyx_string_from_cstr(i8* %7235)
  %7237 = load %nyx_string*, %nyx_string** %7138
  %7238 = call %nyx_string* @nyx_string_concat(%nyx_string* %7236, %nyx_string* %7237)
  %7239 = getelementptr [25 x i8], [25 x i8]* @.str849, i32 0, i32 0
  %7240 = call %nyx_string* @nyx_string_from_cstr(i8* %7239)
  %7241 = call %nyx_string* @nyx_string_concat(%nyx_string* %7238, %nyx_string* %7240)
  %7242 = call %nyx_string* @msg(%nyx_string* %7234, %nyx_string* %7241)
  %7243 = load %nyx_string*, %nyx_string** %7227
  %7244 = call %nyx_string* @nyx_string_concat(%nyx_string* %7242, %nyx_string* %7243)
  %7245 = call i64 @sem_error(%nyx_string* %7244)
  ret i1 0
else1537:
  br label %merge1538
merge1538:
  br label %merge1533
else1532:
  br label %merge1533
merge1533:
  br label %merge1524
else1523:
  br label %merge1524
merge1524:
  %7246 = load %ASTNode, %ASTNode* %7135
  %7247 = call { i64, i8* }* @ty_of_expr(%ASTNode %7246)
  %7248 = alloca { i64, i8* }*
  store { i64, i8* }* %7247, { i64, i8* }** %7248
  %7249 = load { i64, i8* }*, { i64, i8* }** %7248
  %7250 = call i1 @ty_is_unknown({ i64, i8* }* %7249)
  %7251 = xor i1 %7250, true
  br i1 %7251, label %then1539, label %else1540
then1539:
  %7252 = load { i64, i8* }*, { i64, i8* }** %7248
  %7253 = call %nyx_string* @ty_kind({ i64, i8* }* %7252)
  %7254 = alloca %nyx_string*
  store %nyx_string* %7253, %nyx_string** %7254
  %7255 = load %nyx_string*, %nyx_string** %7254
  %7256 = getelementptr [9 x i8], [9 x i8]* @.str850, i32 0, i32 0
  %7257 = call %nyx_string* @nyx_string_from_cstr(i8* %7256)
  %7258 = call i8* @nyx_string_to_cstr(%nyx_string* %7255)
  %7259 = call i8* @nyx_string_to_cstr(%nyx_string* %7257)
  %7260 = call i32 @strcmp(i8* %7258, i8* %7259)
  %7261 = icmp eq i32 %7260, 0
  br i1 %7261, label %then1542, label %else1543
then1542:
  %7262 = load { i64, i8* }*, { i64, i8* }** %7248
  %7263 = call i64 @nyx_array_get({ i64, i8* }* %7262, i64 1)
  %7264 = inttoptr i64 %7263 to %nyx_string*
  %7265 = alloca %nyx_string*
  store %nyx_string* %7264, %nyx_string** %7265
  %7266 = load %nyx_string*, %nyx_string** %7265
  %7267 = load %nyx_string*, %nyx_string** %7138
  %7268 = load { i64, i8* }*, { i64, i8* }** %7141
  %7269 = call i1 @check_impl_method_args(%nyx_string* %7266, %nyx_string* %7267, { i64, i8* }* %7268)
  %7270 = xor i1 %7269, true
  br i1 %7270, label %then1545, label %else1546
then1545:
  ret i1 0
else1546:
  br label %merge1547
merge1547:
  br label %merge1544
else1543:
  br label %merge1544
merge1544:
  %7271 = load %nyx_string*, %nyx_string** %7254
  %7272 = getelementptr [7 x i8], [7 x i8]* @.str851, i32 0, i32 0
  %7273 = call %nyx_string* @nyx_string_from_cstr(i8* %7272)
  %7274 = call i8* @nyx_string_to_cstr(%nyx_string* %7271)
  %7275 = call i8* @nyx_string_to_cstr(%nyx_string* %7273)
  %7276 = call i32 @strcmp(i8* %7274, i8* %7275)
  %7277 = icmp eq i32 %7276, 0
  br i1 %7277, label %then1548, label %else1549
then1548:
  %7278 = load { i64, i8* }*, { i64, i8* }** %7248
  %7279 = call i64 @nyx_array_get({ i64, i8* }* %7278, i64 1)
  %7280 = inttoptr i64 %7279 to %nyx_string*
  %7281 = alloca %nyx_string*
  store %nyx_string* %7280, %nyx_string** %7281
  %7282 = load %nyx_string*, %nyx_string** %7281
  %7283 = load %nyx_string*, %nyx_string** %7138
  %7284 = load { i64, i8* }*, { i64, i8* }** %7141
  %7285 = call i1 @check_impl_method_args(%nyx_string* %7282, %nyx_string* %7283, { i64, i8* }* %7284)
  %7286 = xor i1 %7285, true
  br i1 %7286, label %then1551, label %else1552
then1551:
  ret i1 0
else1552:
  br label %merge1553
merge1553:
  br label %merge1550
else1549:
  br label %merge1550
merge1550:
  %7287 = load { i64, i8* }*, { i64, i8* }** %7248
  %7288 = load %nyx_string*, %nyx_string** %7138
  %7289 = load { i64, i8* }*, { i64, i8* }** %7141
  %7290 = call i1 @check_builtin_method_args({ i64, i8* }* %7287, %nyx_string* %7288, { i64, i8* }* %7289)
  %7291 = xor i1 %7290, true
  br i1 %7291, label %then1554, label %else1555
then1554:
  ret i1 0
else1555:
  br label %merge1556
merge1556:
  br label %merge1541
else1540:
  br label %merge1541
merge1541:
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
  %7292 = load { i64, i8* }*, { i64, i8* }** %recv_ty.ptr
  %7293 = call %nyx_string* @ty_kind({ i64, i8* }* %7292)
  %7294 = alloca %nyx_string*
  store %nyx_string* %7293, %nyx_string** %7294
  %7295 = load %nyx_string*, %nyx_string** %7294
  %7296 = getelementptr [9 x i8], [9 x i8]* @.str852, i32 0, i32 0
  %7297 = call %nyx_string* @nyx_string_from_cstr(i8* %7296)
  %7298 = call i8* @nyx_string_to_cstr(%nyx_string* %7295)
  %7299 = call i8* @nyx_string_to_cstr(%nyx_string* %7297)
  %7300 = call i32 @strcmp(i8* %7298, i8* %7299)
  %7301 = icmp eq i32 %7300, 0
  br i1 %7301, label %then1557, label %else1558
then1557:
  %7302 = load %nyx_string*, %nyx_string** %method.ptr
  %7303 = getelementptr [9 x i8], [9 x i8]* @.str853, i32 0, i32 0
  %7304 = call %nyx_string* @nyx_string_from_cstr(i8* %7303)
  %7305 = call i8* @nyx_string_to_cstr(%nyx_string* %7302)
  %7306 = call i8* @nyx_string_to_cstr(%nyx_string* %7304)
  %7307 = call i32 @strcmp(i8* %7305, i8* %7306)
  %7308 = icmp eq i32 %7307, 0
  br i1 %7308, label %then1560, label %else1561
then1560:
  %7309 = load %nyx_string*, %nyx_string** %method.ptr
  %7310 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %7311 = call { i64, i8* }* @ty_string()
  %7312 = getelementptr [7 x i8], [7 x i8]* @.str854, i32 0, i32 0
  %7313 = call %nyx_string* @nyx_string_from_cstr(i8* %7312)
  %7314 = call i1 @check_single_arg_type(%nyx_string* %7309, { i64, i8* }* %7310, i64 0, { i64, i8* }* %7311, %nyx_string* %7313)
  ret i1 %7314
else1561:
  br label %merge1562
merge1562:
  %7315 = load %nyx_string*, %nyx_string** %method.ptr
  %7316 = getelementptr [11 x i8], [11 x i8]* @.str855, i32 0, i32 0
  %7317 = call %nyx_string* @nyx_string_from_cstr(i8* %7316)
  %7318 = call i8* @nyx_string_to_cstr(%nyx_string* %7315)
  %7319 = call i8* @nyx_string_to_cstr(%nyx_string* %7317)
  %7320 = call i32 @strcmp(i8* %7318, i8* %7319)
  %7321 = icmp eq i32 %7320, 0
  br i1 %7321, label %then1563, label %else1564
then1563:
  %7322 = load %nyx_string*, %nyx_string** %method.ptr
  %7323 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %7324 = call { i64, i8* }* @ty_string()
  %7325 = getelementptr [7 x i8], [7 x i8]* @.str856, i32 0, i32 0
  %7326 = call %nyx_string* @nyx_string_from_cstr(i8* %7325)
  %7327 = call i1 @check_single_arg_type(%nyx_string* %7322, { i64, i8* }* %7323, i64 0, { i64, i8* }* %7324, %nyx_string* %7326)
  ret i1 %7327
else1564:
  br label %merge1565
merge1565:
  %7328 = load %nyx_string*, %nyx_string** %method.ptr
  %7329 = getelementptr [9 x i8], [9 x i8]* @.str857, i32 0, i32 0
  %7330 = call %nyx_string* @nyx_string_from_cstr(i8* %7329)
  %7331 = call i8* @nyx_string_to_cstr(%nyx_string* %7328)
  %7332 = call i8* @nyx_string_to_cstr(%nyx_string* %7330)
  %7333 = call i32 @strcmp(i8* %7331, i8* %7332)
  %7334 = icmp eq i32 %7333, 0
  br i1 %7334, label %then1566, label %else1567
then1566:
  %7335 = load %nyx_string*, %nyx_string** %method.ptr
  %7336 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %7337 = call { i64, i8* }* @ty_string()
  %7338 = getelementptr [7 x i8], [7 x i8]* @.str858, i32 0, i32 0
  %7339 = call %nyx_string* @nyx_string_from_cstr(i8* %7338)
  %7340 = call i1 @check_single_arg_type(%nyx_string* %7335, { i64, i8* }* %7336, i64 0, { i64, i8* }* %7337, %nyx_string* %7339)
  ret i1 %7340
else1567:
  br label %merge1568
merge1568:
  %7341 = load %nyx_string*, %nyx_string** %method.ptr
  %7342 = getelementptr [12 x i8], [12 x i8]* @.str859, i32 0, i32 0
  %7343 = call %nyx_string* @nyx_string_from_cstr(i8* %7342)
  %7344 = call i8* @nyx_string_to_cstr(%nyx_string* %7341)
  %7345 = call i8* @nyx_string_to_cstr(%nyx_string* %7343)
  %7346 = call i32 @strcmp(i8* %7344, i8* %7345)
  %7347 = icmp eq i32 %7346, 0
  br i1 %7347, label %then1569, label %else1570
then1569:
  %7348 = load %nyx_string*, %nyx_string** %method.ptr
  %7349 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %7350 = call { i64, i8* }* @ty_string()
  %7351 = getelementptr [7 x i8], [7 x i8]* @.str860, i32 0, i32 0
  %7352 = call %nyx_string* @nyx_string_from_cstr(i8* %7351)
  %7353 = call i1 @check_single_arg_type(%nyx_string* %7348, { i64, i8* }* %7349, i64 0, { i64, i8* }* %7350, %nyx_string* %7352)
  ret i1 %7353
else1570:
  br label %merge1571
merge1571:
  %7354 = load %nyx_string*, %nyx_string** %method.ptr
  %7355 = getelementptr [10 x i8], [10 x i8]* @.str861, i32 0, i32 0
  %7356 = call %nyx_string* @nyx_string_from_cstr(i8* %7355)
  %7357 = call i8* @nyx_string_to_cstr(%nyx_string* %7354)
  %7358 = call i8* @nyx_string_to_cstr(%nyx_string* %7356)
  %7359 = call i32 @strcmp(i8* %7357, i8* %7358)
  %7360 = icmp eq i32 %7359, 0
  br i1 %7360, label %then1572, label %else1573
then1572:
  %7361 = load %nyx_string*, %nyx_string** %method.ptr
  %7362 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %7363 = call { i64, i8* }* @ty_string()
  %7364 = getelementptr [7 x i8], [7 x i8]* @.str862, i32 0, i32 0
  %7365 = call %nyx_string* @nyx_string_from_cstr(i8* %7364)
  %7366 = call i1 @check_single_arg_type(%nyx_string* %7361, { i64, i8* }* %7362, i64 0, { i64, i8* }* %7363, %nyx_string* %7365)
  ret i1 %7366
else1573:
  br label %merge1574
merge1574:
  %7367 = load %nyx_string*, %nyx_string** %method.ptr
  %7368 = getelementptr [8 x i8], [8 x i8]* @.str863, i32 0, i32 0
  %7369 = call %nyx_string* @nyx_string_from_cstr(i8* %7368)
  %7370 = call i8* @nyx_string_to_cstr(%nyx_string* %7367)
  %7371 = call i8* @nyx_string_to_cstr(%nyx_string* %7369)
  %7372 = call i32 @strcmp(i8* %7370, i8* %7371)
  %7373 = icmp eq i32 %7372, 0
  br i1 %7373, label %then1575, label %else1576
then1575:
  %7374 = load %nyx_string*, %nyx_string** %method.ptr
  %7375 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %7376 = call { i64, i8* }* @ty_string()
  %7377 = getelementptr [7 x i8], [7 x i8]* @.str864, i32 0, i32 0
  %7378 = call %nyx_string* @nyx_string_from_cstr(i8* %7377)
  %7379 = call i1 @check_single_arg_type(%nyx_string* %7374, { i64, i8* }* %7375, i64 0, { i64, i8* }* %7376, %nyx_string* %7378)
  ret i1 %7379
else1576:
  br label %merge1577
merge1577:
  %7380 = load %nyx_string*, %nyx_string** %method.ptr
  %7381 = getelementptr [6 x i8], [6 x i8]* @.str865, i32 0, i32 0
  %7382 = call %nyx_string* @nyx_string_from_cstr(i8* %7381)
  %7383 = call i8* @nyx_string_to_cstr(%nyx_string* %7380)
  %7384 = call i8* @nyx_string_to_cstr(%nyx_string* %7382)
  %7385 = call i32 @strcmp(i8* %7383, i8* %7384)
  %7386 = icmp eq i32 %7385, 0
  br i1 %7386, label %then1578, label %else1579
then1578:
  %7387 = load %nyx_string*, %nyx_string** %method.ptr
  %7388 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %7389 = call { i64, i8* }* @ty_string()
  %7390 = getelementptr [7 x i8], [7 x i8]* @.str866, i32 0, i32 0
  %7391 = call %nyx_string* @nyx_string_from_cstr(i8* %7390)
  %7392 = call i1 @check_single_arg_type(%nyx_string* %7387, { i64, i8* }* %7388, i64 0, { i64, i8* }* %7389, %nyx_string* %7391)
  ret i1 %7392
else1579:
  br label %merge1580
merge1580:
  %7393 = load %nyx_string*, %nyx_string** %method.ptr
  %7394 = getelementptr [7 x i8], [7 x i8]* @.str867, i32 0, i32 0
  %7395 = call %nyx_string* @nyx_string_from_cstr(i8* %7394)
  %7396 = call i8* @nyx_string_to_cstr(%nyx_string* %7393)
  %7397 = call i8* @nyx_string_to_cstr(%nyx_string* %7395)
  %7398 = call i32 @strcmp(i8* %7396, i8* %7397)
  %7399 = icmp eq i32 %7398, 0
  br i1 %7399, label %then1581, label %else1582
then1581:
  %7400 = load %nyx_string*, %nyx_string** %method.ptr
  %7401 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %7402 = call { i64, i8* }* @ty_int()
  %7403 = getelementptr [4 x i8], [4 x i8]* @.str868, i32 0, i32 0
  %7404 = call %nyx_string* @nyx_string_from_cstr(i8* %7403)
  %7405 = call i1 @check_single_arg_type(%nyx_string* %7400, { i64, i8* }* %7401, i64 0, { i64, i8* }* %7402, %nyx_string* %7404)
  ret i1 %7405
else1582:
  br label %merge1583
merge1583:
  %7406 = load %nyx_string*, %nyx_string** %method.ptr
  %7407 = getelementptr [7 x i8], [7 x i8]* @.str869, i32 0, i32 0
  %7408 = call %nyx_string* @nyx_string_from_cstr(i8* %7407)
  %7409 = call i8* @nyx_string_to_cstr(%nyx_string* %7406)
  %7410 = call i8* @nyx_string_to_cstr(%nyx_string* %7408)
  %7411 = call i32 @strcmp(i8* %7409, i8* %7410)
  %7412 = icmp eq i32 %7411, 0
  br i1 %7412, label %then1584, label %else1585
then1584:
  %7413 = load %nyx_string*, %nyx_string** %method.ptr
  %7414 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %7415 = call { i64, i8* }* @ty_int()
  %7416 = getelementptr [4 x i8], [4 x i8]* @.str870, i32 0, i32 0
  %7417 = call %nyx_string* @nyx_string_from_cstr(i8* %7416)
  %7418 = call i1 @check_single_arg_type(%nyx_string* %7413, { i64, i8* }* %7414, i64 0, { i64, i8* }* %7415, %nyx_string* %7417)
  ret i1 %7418
else1585:
  br label %merge1586
merge1586:
  %7419 = load %nyx_string*, %nyx_string** %method.ptr
  %7420 = getelementptr [10 x i8], [10 x i8]* @.str871, i32 0, i32 0
  %7421 = call %nyx_string* @nyx_string_from_cstr(i8* %7420)
  %7422 = call i8* @nyx_string_to_cstr(%nyx_string* %7419)
  %7423 = call i8* @nyx_string_to_cstr(%nyx_string* %7421)
  %7424 = call i32 @strcmp(i8* %7422, i8* %7423)
  %7425 = icmp eq i32 %7424, 0
  br i1 %7425, label %then1587, label %else1588
then1587:
  %7426 = load %nyx_string*, %nyx_string** %method.ptr
  %7427 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %7428 = call { i64, i8* }* @ty_int()
  %7429 = getelementptr [4 x i8], [4 x i8]* @.str872, i32 0, i32 0
  %7430 = call %nyx_string* @nyx_string_from_cstr(i8* %7429)
  %7431 = call i1 @check_single_arg_type(%nyx_string* %7426, { i64, i8* }* %7427, i64 0, { i64, i8* }* %7428, %nyx_string* %7430)
  %7432 = xor i1 %7431, true
  br i1 %7432, label %then1590, label %else1591
then1590:
  ret i1 0
else1591:
  br label %merge1592
merge1592:
  %7433 = load %nyx_string*, %nyx_string** %method.ptr
  %7434 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %7435 = call { i64, i8* }* @ty_int()
  %7436 = getelementptr [4 x i8], [4 x i8]* @.str873, i32 0, i32 0
  %7437 = call %nyx_string* @nyx_string_from_cstr(i8* %7436)
  %7438 = call i1 @check_single_arg_type(%nyx_string* %7433, { i64, i8* }* %7434, i64 1, { i64, i8* }* %7435, %nyx_string* %7437)
  ret i1 %7438
else1588:
  br label %merge1589
merge1589:
  %7439 = load %nyx_string*, %nyx_string** %method.ptr
  %7440 = getelementptr [8 x i8], [8 x i8]* @.str874, i32 0, i32 0
  %7441 = call %nyx_string* @nyx_string_from_cstr(i8* %7440)
  %7442 = call i8* @nyx_string_to_cstr(%nyx_string* %7439)
  %7443 = call i8* @nyx_string_to_cstr(%nyx_string* %7441)
  %7444 = call i32 @strcmp(i8* %7442, i8* %7443)
  %7445 = icmp eq i32 %7444, 0
  br i1 %7445, label %then1593, label %else1594
then1593:
  %7446 = load %nyx_string*, %nyx_string** %method.ptr
  %7447 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %7448 = call { i64, i8* }* @ty_string()
  %7449 = getelementptr [7 x i8], [7 x i8]* @.str875, i32 0, i32 0
  %7450 = call %nyx_string* @nyx_string_from_cstr(i8* %7449)
  %7451 = call i1 @check_single_arg_type(%nyx_string* %7446, { i64, i8* }* %7447, i64 0, { i64, i8* }* %7448, %nyx_string* %7450)
  %7452 = xor i1 %7451, true
  br i1 %7452, label %then1596, label %else1597
then1596:
  ret i1 0
else1597:
  br label %merge1598
merge1598:
  %7453 = load %nyx_string*, %nyx_string** %method.ptr
  %7454 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %7455 = call { i64, i8* }* @ty_string()
  %7456 = getelementptr [7 x i8], [7 x i8]* @.str876, i32 0, i32 0
  %7457 = call %nyx_string* @nyx_string_from_cstr(i8* %7456)
  %7458 = call i1 @check_single_arg_type(%nyx_string* %7453, { i64, i8* }* %7454, i64 1, { i64, i8* }* %7455, %nyx_string* %7457)
  ret i1 %7458
else1594:
  br label %merge1595
merge1595:
  br label %merge1559
else1558:
  br label %merge1559
merge1559:
  %7459 = load %nyx_string*, %nyx_string** %7294
  %7460 = getelementptr [8 x i8], [8 x i8]* @.str877, i32 0, i32 0
  %7461 = call %nyx_string* @nyx_string_from_cstr(i8* %7460)
  %7462 = call i8* @nyx_string_to_cstr(%nyx_string* %7459)
  %7463 = call i8* @nyx_string_to_cstr(%nyx_string* %7461)
  %7464 = call i32 @strcmp(i8* %7462, i8* %7463)
  %7465 = icmp eq i32 %7464, 0
  br i1 %7465, label %then1599, label %else1600
then1599:
  %7466 = load { i64, i8* }*, { i64, i8* }** %recv_ty.ptr
  %7467 = call i64 @nyx_array_get({ i64, i8* }* %7466, i64 1)
  %7468 = inttoptr i64 %7467 to { i64, i8* }*
  %7469 = alloca { i64, i8* }*
  store { i64, i8* }* %7468, { i64, i8* }** %7469
  %7470 = load { i64, i8* }*, { i64, i8* }** %7469
  %7471 = call i1 @ty_is_unknown({ i64, i8* }* %7470)
  br i1 %7471, label %then1602, label %else1603
then1602:
  ret i1 1
else1603:
  br label %merge1604
merge1604:
  %7472 = load { i64, i8* }*, { i64, i8* }** %7469
  %7473 = call %nyx_string* @ty_to_str({ i64, i8* }* %7472)
  %7474 = alloca %nyx_string*
  store %nyx_string* %7473, %nyx_string** %7474
  %7475 = load %nyx_string*, %nyx_string** %method.ptr
  %7476 = getelementptr [5 x i8], [5 x i8]* @.str878, i32 0, i32 0
  %7477 = call %nyx_string* @nyx_string_from_cstr(i8* %7476)
  %7478 = call i8* @nyx_string_to_cstr(%nyx_string* %7475)
  %7479 = call i8* @nyx_string_to_cstr(%nyx_string* %7477)
  %7480 = call i32 @strcmp(i8* %7478, i8* %7479)
  %7481 = icmp eq i32 %7480, 0
  br i1 %7481, label %then1605, label %else1606
then1605:
  %7482 = load %nyx_string*, %nyx_string** %method.ptr
  %7483 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %7484 = load { i64, i8* }*, { i64, i8* }** %7469
  %7485 = load %nyx_string*, %nyx_string** %7474
  %7486 = call i1 @check_single_arg_type(%nyx_string* %7482, { i64, i8* }* %7483, i64 0, { i64, i8* }* %7484, %nyx_string* %7485)
  ret i1 %7486
else1606:
  br label %merge1607
merge1607:
  %7487 = load %nyx_string*, %nyx_string** %method.ptr
  %7488 = getelementptr [9 x i8], [9 x i8]* @.str879, i32 0, i32 0
  %7489 = call %nyx_string* @nyx_string_from_cstr(i8* %7488)
  %7490 = call i8* @nyx_string_to_cstr(%nyx_string* %7487)
  %7491 = call i8* @nyx_string_to_cstr(%nyx_string* %7489)
  %7492 = call i32 @strcmp(i8* %7490, i8* %7491)
  %7493 = icmp eq i32 %7492, 0
  br i1 %7493, label %then1608, label %else1609
then1608:
  %7494 = load %nyx_string*, %nyx_string** %method.ptr
  %7495 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %7496 = load { i64, i8* }*, { i64, i8* }** %7469
  %7497 = load %nyx_string*, %nyx_string** %7474
  %7498 = call i1 @check_single_arg_type(%nyx_string* %7494, { i64, i8* }* %7495, i64 0, { i64, i8* }* %7496, %nyx_string* %7497)
  ret i1 %7498
else1609:
  br label %merge1610
merge1610:
  %7499 = load %nyx_string*, %nyx_string** %method.ptr
  %7500 = getelementptr [8 x i8], [8 x i8]* @.str880, i32 0, i32 0
  %7501 = call %nyx_string* @nyx_string_from_cstr(i8* %7500)
  %7502 = call i8* @nyx_string_to_cstr(%nyx_string* %7499)
  %7503 = call i8* @nyx_string_to_cstr(%nyx_string* %7501)
  %7504 = call i32 @strcmp(i8* %7502, i8* %7503)
  %7505 = icmp eq i32 %7504, 0
  br i1 %7505, label %then1611, label %else1612
then1611:
  %7506 = load %nyx_string*, %nyx_string** %method.ptr
  %7507 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %7508 = load { i64, i8* }*, { i64, i8* }** %7469
  %7509 = load %nyx_string*, %nyx_string** %7474
  %7510 = call i1 @check_single_arg_type(%nyx_string* %7506, { i64, i8* }* %7507, i64 0, { i64, i8* }* %7508, %nyx_string* %7509)
  ret i1 %7510
else1612:
  br label %merge1613
merge1613:
  %7511 = load %nyx_string*, %nyx_string** %method.ptr
  %7512 = getelementptr [7 x i8], [7 x i8]* @.str881, i32 0, i32 0
  %7513 = call %nyx_string* @nyx_string_from_cstr(i8* %7512)
  %7514 = call i8* @nyx_string_to_cstr(%nyx_string* %7511)
  %7515 = call i8* @nyx_string_to_cstr(%nyx_string* %7513)
  %7516 = call i32 @strcmp(i8* %7514, i8* %7515)
  %7517 = icmp eq i32 %7516, 0
  br i1 %7517, label %then1614, label %else1615
then1614:
  %7518 = load %nyx_string*, %nyx_string** %method.ptr
  %7519 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %7520 = call { i64, i8* }* @ty_int()
  %7521 = getelementptr [4 x i8], [4 x i8]* @.str882, i32 0, i32 0
  %7522 = call %nyx_string* @nyx_string_from_cstr(i8* %7521)
  %7523 = call i1 @check_single_arg_type(%nyx_string* %7518, { i64, i8* }* %7519, i64 0, { i64, i8* }* %7520, %nyx_string* %7522)
  %7524 = xor i1 %7523, true
  br i1 %7524, label %then1617, label %else1618
then1617:
  ret i1 0
else1618:
  br label %merge1619
merge1619:
  %7525 = load %nyx_string*, %nyx_string** %method.ptr
  %7526 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %7527 = load { i64, i8* }*, { i64, i8* }** %7469
  %7528 = load %nyx_string*, %nyx_string** %7474
  %7529 = call i1 @check_single_arg_type(%nyx_string* %7525, { i64, i8* }* %7526, i64 1, { i64, i8* }* %7527, %nyx_string* %7528)
  ret i1 %7529
else1615:
  br label %merge1616
merge1616:
  %7530 = load %nyx_string*, %nyx_string** %method.ptr
  %7531 = getelementptr [7 x i8], [7 x i8]* @.str883, i32 0, i32 0
  %7532 = call %nyx_string* @nyx_string_from_cstr(i8* %7531)
  %7533 = call i8* @nyx_string_to_cstr(%nyx_string* %7530)
  %7534 = call i8* @nyx_string_to_cstr(%nyx_string* %7532)
  %7535 = call i32 @strcmp(i8* %7533, i8* %7534)
  %7536 = icmp eq i32 %7535, 0
  br i1 %7536, label %then1620, label %else1621
then1620:
  %7537 = load %nyx_string*, %nyx_string** %method.ptr
  %7538 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %7539 = call { i64, i8* }* @ty_int()
  %7540 = getelementptr [4 x i8], [4 x i8]* @.str884, i32 0, i32 0
  %7541 = call %nyx_string* @nyx_string_from_cstr(i8* %7540)
  %7542 = call i1 @check_single_arg_type(%nyx_string* %7537, { i64, i8* }* %7538, i64 0, { i64, i8* }* %7539, %nyx_string* %7541)
  ret i1 %7542
else1621:
  br label %merge1622
merge1622:
  %7543 = load %nyx_string*, %nyx_string** %method.ptr
  %7544 = getelementptr [6 x i8], [6 x i8]* @.str885, i32 0, i32 0
  %7545 = call %nyx_string* @nyx_string_from_cstr(i8* %7544)
  %7546 = call i8* @nyx_string_to_cstr(%nyx_string* %7543)
  %7547 = call i8* @nyx_string_to_cstr(%nyx_string* %7545)
  %7548 = call i32 @strcmp(i8* %7546, i8* %7547)
  %7549 = icmp eq i32 %7548, 0
  br i1 %7549, label %then1623, label %else1624
then1623:
  %7550 = load %nyx_string*, %nyx_string** %method.ptr
  %7551 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %7552 = call { i64, i8* }* @ty_int()
  %7553 = getelementptr [4 x i8], [4 x i8]* @.str886, i32 0, i32 0
  %7554 = call %nyx_string* @nyx_string_from_cstr(i8* %7553)
  %7555 = call i1 @check_single_arg_type(%nyx_string* %7550, { i64, i8* }* %7551, i64 0, { i64, i8* }* %7552, %nyx_string* %7554)
  %7556 = xor i1 %7555, true
  br i1 %7556, label %then1626, label %else1627
then1626:
  ret i1 0
else1627:
  br label %merge1628
merge1628:
  %7557 = load %nyx_string*, %nyx_string** %method.ptr
  %7558 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %7559 = call { i64, i8* }* @ty_int()
  %7560 = getelementptr [4 x i8], [4 x i8]* @.str887, i32 0, i32 0
  %7561 = call %nyx_string* @nyx_string_from_cstr(i8* %7560)
  %7562 = call i1 @check_single_arg_type(%nyx_string* %7557, { i64, i8* }* %7558, i64 1, { i64, i8* }* %7559, %nyx_string* %7561)
  ret i1 %7562
else1624:
  br label %merge1625
merge1625:
  %7563 = load %nyx_string*, %nyx_string** %method.ptr
  %7564 = getelementptr [5 x i8], [5 x i8]* @.str888, i32 0, i32 0
  %7565 = call %nyx_string* @nyx_string_from_cstr(i8* %7564)
  %7566 = call i8* @nyx_string_to_cstr(%nyx_string* %7563)
  %7567 = call i8* @nyx_string_to_cstr(%nyx_string* %7565)
  %7568 = call i32 @strcmp(i8* %7566, i8* %7567)
  %7569 = icmp eq i32 %7568, 0
  br i1 %7569, label %then1629, label %else1630
then1629:
  %7570 = load %nyx_string*, %nyx_string** %method.ptr
  %7571 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %7572 = call { i64, i8* }* @ty_string()
  %7573 = getelementptr [7 x i8], [7 x i8]* @.str889, i32 0, i32 0
  %7574 = call %nyx_string* @nyx_string_from_cstr(i8* %7573)
  %7575 = call i1 @check_single_arg_type(%nyx_string* %7570, { i64, i8* }* %7571, i64 0, { i64, i8* }* %7572, %nyx_string* %7574)
  ret i1 %7575
else1630:
  br label %merge1631
merge1631:
  br label %merge1601
else1600:
  br label %merge1601
merge1601:
  %7576 = load %nyx_string*, %nyx_string** %7294
  %7577 = getelementptr [6 x i8], [6 x i8]* @.str890, i32 0, i32 0
  %7578 = call %nyx_string* @nyx_string_from_cstr(i8* %7577)
  %7579 = call i8* @nyx_string_to_cstr(%nyx_string* %7576)
  %7580 = call i8* @nyx_string_to_cstr(%nyx_string* %7578)
  %7581 = call i32 @strcmp(i8* %7579, i8* %7580)
  %7582 = icmp eq i32 %7581, 0
  br i1 %7582, label %then1632, label %else1633
then1632:
  %7583 = load { i64, i8* }*, { i64, i8* }** %recv_ty.ptr
  %7584 = call i64 @nyx_array_get({ i64, i8* }* %7583, i64 1)
  %7585 = inttoptr i64 %7584 to { i64, i8* }*
  %7586 = alloca { i64, i8* }*
  store { i64, i8* }* %7585, { i64, i8* }** %7586
  %7587 = load { i64, i8* }*, { i64, i8* }** %recv_ty.ptr
  %7588 = call i64 @nyx_array_get({ i64, i8* }* %7587, i64 2)
  %7589 = inttoptr i64 %7588 to { i64, i8* }*
  %7590 = alloca { i64, i8* }*
  store { i64, i8* }* %7589, { i64, i8* }** %7590
  %7591 = load { i64, i8* }*, { i64, i8* }** %7586
  %7592 = call i1 @ty_is_unknown({ i64, i8* }* %7591)
  %7593 = xor i1 %7592, true
  br i1 %7593, label %then1635, label %else1636
then1635:
  %7594 = load { i64, i8* }*, { i64, i8* }** %7586
  %7595 = call %nyx_string* @ty_to_str({ i64, i8* }* %7594)
  %7596 = alloca %nyx_string*
  store %nyx_string* %7595, %nyx_string** %7596
  %7597 = load %nyx_string*, %nyx_string** %method.ptr
  %7598 = getelementptr [4 x i8], [4 x i8]* @.str891, i32 0, i32 0
  %7599 = call %nyx_string* @nyx_string_from_cstr(i8* %7598)
  %7600 = call i8* @nyx_string_to_cstr(%nyx_string* %7597)
  %7601 = call i8* @nyx_string_to_cstr(%nyx_string* %7599)
  %7602 = call i32 @strcmp(i8* %7600, i8* %7601)
  %7603 = icmp eq i32 %7602, 0
  br i1 %7603, label %then1638, label %else1639
then1638:
  %7604 = load %nyx_string*, %nyx_string** %method.ptr
  %7605 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %7606 = load { i64, i8* }*, { i64, i8* }** %7586
  %7607 = load %nyx_string*, %nyx_string** %7596
  %7608 = call i1 @check_single_arg_type(%nyx_string* %7604, { i64, i8* }* %7605, i64 0, { i64, i8* }* %7606, %nyx_string* %7607)
  ret i1 %7608
else1639:
  br label %merge1640
merge1640:
  %7609 = load %nyx_string*, %nyx_string** %method.ptr
  %7610 = getelementptr [4 x i8], [4 x i8]* @.str892, i32 0, i32 0
  %7611 = call %nyx_string* @nyx_string_from_cstr(i8* %7610)
  %7612 = call i8* @nyx_string_to_cstr(%nyx_string* %7609)
  %7613 = call i8* @nyx_string_to_cstr(%nyx_string* %7611)
  %7614 = call i32 @strcmp(i8* %7612, i8* %7613)
  %7615 = icmp eq i32 %7614, 0
  br i1 %7615, label %then1641, label %else1642
then1641:
  %7616 = load %nyx_string*, %nyx_string** %method.ptr
  %7617 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %7618 = load { i64, i8* }*, { i64, i8* }** %7586
  %7619 = load %nyx_string*, %nyx_string** %7596
  %7620 = call i1 @check_single_arg_type(%nyx_string* %7616, { i64, i8* }* %7617, i64 0, { i64, i8* }* %7618, %nyx_string* %7619)
  ret i1 %7620
else1642:
  br label %merge1643
merge1643:
  %7621 = load %nyx_string*, %nyx_string** %method.ptr
  %7622 = getelementptr [7 x i8], [7 x i8]* @.str893, i32 0, i32 0
  %7623 = call %nyx_string* @nyx_string_from_cstr(i8* %7622)
  %7624 = call i8* @nyx_string_to_cstr(%nyx_string* %7621)
  %7625 = call i8* @nyx_string_to_cstr(%nyx_string* %7623)
  %7626 = call i32 @strcmp(i8* %7624, i8* %7625)
  %7627 = icmp eq i32 %7626, 0
  br i1 %7627, label %then1644, label %else1645
then1644:
  %7628 = load %nyx_string*, %nyx_string** %method.ptr
  %7629 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %7630 = load { i64, i8* }*, { i64, i8* }** %7586
  %7631 = load %nyx_string*, %nyx_string** %7596
  %7632 = call i1 @check_single_arg_type(%nyx_string* %7628, { i64, i8* }* %7629, i64 0, { i64, i8* }* %7630, %nyx_string* %7631)
  ret i1 %7632
else1645:
  br label %merge1646
merge1646:
  %7633 = load %nyx_string*, %nyx_string** %method.ptr
  %7634 = getelementptr [4 x i8], [4 x i8]* @.str894, i32 0, i32 0
  %7635 = call %nyx_string* @nyx_string_from_cstr(i8* %7634)
  %7636 = call i8* @nyx_string_to_cstr(%nyx_string* %7633)
  %7637 = call i8* @nyx_string_to_cstr(%nyx_string* %7635)
  %7638 = call i32 @strcmp(i8* %7636, i8* %7637)
  %7639 = icmp eq i32 %7638, 0
  br i1 %7639, label %then1647, label %else1648
then1647:
  %7640 = load %nyx_string*, %nyx_string** %method.ptr
  %7641 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %7642 = load { i64, i8* }*, { i64, i8* }** %7586
  %7643 = load %nyx_string*, %nyx_string** %7596
  %7644 = call i1 @check_single_arg_type(%nyx_string* %7640, { i64, i8* }* %7641, i64 0, { i64, i8* }* %7642, %nyx_string* %7643)
  %7645 = xor i1 %7644, true
  br i1 %7645, label %then1650, label %else1651
then1650:
  ret i1 0
else1651:
  br label %merge1652
merge1652:
  %7646 = load { i64, i8* }*, { i64, i8* }** %7590
  %7647 = call i1 @ty_is_unknown({ i64, i8* }* %7646)
  %7648 = xor i1 %7647, true
  br i1 %7648, label %then1653, label %else1654
then1653:
  %7649 = load { i64, i8* }*, { i64, i8* }** %7590
  %7650 = call %nyx_string* @ty_to_str({ i64, i8* }* %7649)
  %7651 = alloca %nyx_string*
  store %nyx_string* %7650, %nyx_string** %7651
  %7652 = load %nyx_string*, %nyx_string** %method.ptr
  %7653 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %7654 = load { i64, i8* }*, { i64, i8* }** %7590
  %7655 = load %nyx_string*, %nyx_string** %7651
  %7656 = call i1 @check_single_arg_type(%nyx_string* %7652, { i64, i8* }* %7653, i64 1, { i64, i8* }* %7654, %nyx_string* %7655)
  ret i1 %7656
else1654:
  br label %merge1655
merge1655:
  br label %merge1649
else1648:
  br label %merge1649
merge1649:
  br label %merge1637
else1636:
  br label %merge1637
merge1637:
  br label %merge1634
else1633:
  br label %merge1634
merge1634:
  %7657 = load %nyx_string*, %nyx_string** %7294
  %7658 = getelementptr [9 x i8], [9 x i8]* @.str895, i32 0, i32 0
  %7659 = call %nyx_string* @nyx_string_from_cstr(i8* %7658)
  %7660 = call i8* @nyx_string_to_cstr(%nyx_string* %7657)
  %7661 = call i8* @nyx_string_to_cstr(%nyx_string* %7659)
  %7662 = call i32 @strcmp(i8* %7660, i8* %7661)
  %7663 = icmp eq i32 %7662, 0
  br i1 %7663, label %then1656, label %else1657
then1656:
  %7664 = load { i64, i8* }*, { i64, i8* }** %recv_ty.ptr
  %7665 = call i64 @nyx_array_get({ i64, i8* }* %7664, i64 1)
  %7666 = inttoptr i64 %7665 to { i64, i8* }*
  %7667 = alloca { i64, i8* }*
  store { i64, i8* }* %7666, { i64, i8* }** %7667
  %7668 = load { i64, i8* }*, { i64, i8* }** %7667
  %7669 = call i1 @ty_is_unknown({ i64, i8* }* %7668)
  %7670 = xor i1 %7669, true
  br i1 %7670, label %then1659, label %else1660
then1659:
  %7671 = load { i64, i8* }*, { i64, i8* }** %7667
  %7672 = call %nyx_string* @ty_to_str({ i64, i8* }* %7671)
  %7673 = alloca %nyx_string*
  store %nyx_string* %7672, %nyx_string** %7673
  %7674 = load %nyx_string*, %nyx_string** %method.ptr
  %7675 = getelementptr [10 x i8], [10 x i8]* @.str896, i32 0, i32 0
  %7676 = call %nyx_string* @nyx_string_from_cstr(i8* %7675)
  %7677 = call i8* @nyx_string_to_cstr(%nyx_string* %7674)
  %7678 = call i8* @nyx_string_to_cstr(%nyx_string* %7676)
  %7679 = call i32 @strcmp(i8* %7677, i8* %7678)
  %7680 = icmp eq i32 %7679, 0
  br i1 %7680, label %then1662, label %else1663
then1662:
  %7681 = load %nyx_string*, %nyx_string** %method.ptr
  %7682 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %7683 = load { i64, i8* }*, { i64, i8* }** %7667
  %7684 = load %nyx_string*, %nyx_string** %7673
  %7685 = call i1 @check_single_arg_type(%nyx_string* %7681, { i64, i8* }* %7682, i64 0, { i64, i8* }* %7683, %nyx_string* %7684)
  ret i1 %7685
else1663:
  br label %merge1664
merge1664:
  br label %merge1661
else1660:
  br label %merge1661
merge1661:
  br label %merge1658
else1657:
  br label %merge1658
merge1658:
  %7686 = load %nyx_string*, %nyx_string** %7294
  %7687 = getelementptr [9 x i8], [9 x i8]* @.str897, i32 0, i32 0
  %7688 = call %nyx_string* @nyx_string_from_cstr(i8* %7687)
  %7689 = call i8* @nyx_string_to_cstr(%nyx_string* %7686)
  %7690 = call i8* @nyx_string_to_cstr(%nyx_string* %7688)
  %7691 = call i32 @strcmp(i8* %7689, i8* %7690)
  %7692 = icmp eq i32 %7691, 0
  br i1 %7692, label %then1665, label %else1666
then1665:
  %7693 = load { i64, i8* }*, { i64, i8* }** %recv_ty.ptr
  %7694 = call i64 @nyx_array_get({ i64, i8* }* %7693, i64 1)
  %7695 = inttoptr i64 %7694 to { i64, i8* }*
  %7696 = alloca { i64, i8* }*
  store { i64, i8* }* %7695, { i64, i8* }** %7696
  %7697 = load { i64, i8* }*, { i64, i8* }** %7696
  %7698 = call i1 @ty_is_unknown({ i64, i8* }* %7697)
  %7699 = xor i1 %7698, true
  br i1 %7699, label %then1668, label %else1669
then1668:
  %7700 = load { i64, i8* }*, { i64, i8* }** %7696
  %7701 = call %nyx_string* @ty_to_str({ i64, i8* }* %7700)
  %7702 = alloca %nyx_string*
  store %nyx_string* %7701, %nyx_string** %7702
  %7703 = load %nyx_string*, %nyx_string** %method.ptr
  %7704 = getelementptr [10 x i8], [10 x i8]* @.str898, i32 0, i32 0
  %7705 = call %nyx_string* @nyx_string_from_cstr(i8* %7704)
  %7706 = call i8* @nyx_string_to_cstr(%nyx_string* %7703)
  %7707 = call i8* @nyx_string_to_cstr(%nyx_string* %7705)
  %7708 = call i32 @strcmp(i8* %7706, i8* %7707)
  %7709 = icmp eq i32 %7708, 0
  br i1 %7709, label %then1671, label %else1672
then1671:
  %7710 = load %nyx_string*, %nyx_string** %method.ptr
  %7711 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %7712 = load { i64, i8* }*, { i64, i8* }** %7696
  %7713 = load %nyx_string*, %nyx_string** %7702
  %7714 = call i1 @check_single_arg_type(%nyx_string* %7710, { i64, i8* }* %7711, i64 0, { i64, i8* }* %7712, %nyx_string* %7713)
  ret i1 %7714
else1672:
  br label %merge1673
merge1673:
  br label %merge1670
else1669:
  br label %merge1670
merge1670:
  br label %merge1667
else1666:
  br label %merge1667
merge1667:
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
  %7715 = load i64, i64* %idx.ptr
  %7716 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %7717 = call i64 @nyx_array_length({ i64, i8* }* %7716)
  %7718 = icmp sge i64 %7715, %7717
  br i1 %7718, label %then1674, label %else1675
then1674:
  ret i1 1
else1675:
  br label %merge1676
merge1676:
  %7719 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %7720 = load i64, i64* %idx.ptr
  %7721 = call i64 @nyx_array_get({ i64, i8* }* %7719, i64 %7720)
  %7722 = inttoptr i64 %7721 to { i64, i8* }*
  %7723 = call i64 @nyx_array_get({ i64, i8* }* %7722, i64 0)
  %7724 = call i64 @nyx_array_get({ i64, i8* }* %7722, i64 1)
  %7725 = inttoptr i64 %7723 to %nyx_string*
  %7726 = inttoptr i64 %7724 to { i64, i8* }*
  %7727 = alloca %ASTNode
  %7728 = getelementptr inbounds %ASTNode, %ASTNode* %7727, i32 0, i32 0
  store %nyx_string* %7725, %nyx_string** %7728
  %7729 = getelementptr inbounds %ASTNode, %ASTNode* %7727, i32 0, i32 1
  store { i64, i8* }* %7726, { i64, i8* }** %7729
  %7730 = load %ASTNode, %ASTNode* %7727
  %7731 = alloca %ASTNode
  store %ASTNode %7730, %ASTNode* %7731
  %7732 = load %ASTNode, %ASTNode* %7731
  %7733 = call { i64, i8* }* @ty_of_expr(%ASTNode %7732)
  %7734 = alloca { i64, i8* }*
  store { i64, i8* }* %7733, { i64, i8* }** %7734
  %7735 = load { i64, i8* }*, { i64, i8* }** %7734
  %7736 = call i1 @ty_is_unknown({ i64, i8* }* %7735)
  br i1 %7736, label %then1677, label %else1678
then1677:
  ret i1 1
else1678:
  br label %merge1679
merge1679:
  %7737 = load { i64, i8* }*, { i64, i8* }** %expected.ptr
  %7738 = load { i64, i8* }*, { i64, i8* }** %7734
  %7739 = call i1 @ty_eq({ i64, i8* }* %7737, { i64, i8* }* %7738)
  br i1 %7739, label %then1680, label %else1681
then1680:
  ret i1 1
else1681:
  br label %merge1682
merge1682:
  %7740 = getelementptr [11 x i8], [11 x i8]* @.str899, i32 0, i32 0
  %7741 = call %nyx_string* @nyx_string_from_cstr(i8* %7740)
  %7742 = load i64, i64* %idx.ptr
  %7743 = add i64 %7742, 1
  %7744 = call %nyx_string* @nyx_string_from_int(i64 %7743)
  %7745 = call %nyx_string* @nyx_string_concat(%nyx_string* %7741, %nyx_string* %7744)
  %7746 = getelementptr [6 x i8], [6 x i8]* @.str900, i32 0, i32 0
  %7747 = call %nyx_string* @nyx_string_from_cstr(i8* %7746)
  %7748 = call %nyx_string* @nyx_string_concat(%nyx_string* %7745, %nyx_string* %7747)
  %7749 = load %nyx_string*, %nyx_string** %method.ptr
  %7750 = call %nyx_string* @nyx_string_concat(%nyx_string* %7748, %nyx_string* %7749)
  %7751 = getelementptr [16 x i8], [16 x i8]* @.str901, i32 0, i32 0
  %7752 = call %nyx_string* @nyx_string_from_cstr(i8* %7751)
  %7753 = call %nyx_string* @nyx_string_concat(%nyx_string* %7750, %nyx_string* %7752)
  %7754 = load %nyx_string*, %nyx_string** %expected_name.ptr
  %7755 = call %nyx_string* @nyx_string_concat(%nyx_string* %7753, %nyx_string* %7754)
  %7756 = getelementptr [13 x i8], [13 x i8]* @.str902, i32 0, i32 0
  %7757 = call %nyx_string* @nyx_string_from_cstr(i8* %7756)
  %7758 = call %nyx_string* @nyx_string_concat(%nyx_string* %7755, %nyx_string* %7757)
  %7759 = load { i64, i8* }*, { i64, i8* }** %7734
  %7760 = call %nyx_string* @ty_to_str({ i64, i8* }* %7759)
  %7761 = call %nyx_string* @nyx_string_concat(%nyx_string* %7758, %nyx_string* %7760)
  %7762 = getelementptr [10 x i8], [10 x i8]* @.str903, i32 0, i32 0
  %7763 = call %nyx_string* @nyx_string_from_cstr(i8* %7762)
  %7764 = load i64, i64* %idx.ptr
  %7765 = add i64 %7764, 1
  %7766 = call %nyx_string* @nyx_string_from_int(i64 %7765)
  %7767 = call %nyx_string* @nyx_string_concat(%nyx_string* %7763, %nyx_string* %7766)
  %7768 = getelementptr [6 x i8], [6 x i8]* @.str904, i32 0, i32 0
  %7769 = call %nyx_string* @nyx_string_from_cstr(i8* %7768)
  %7770 = call %nyx_string* @nyx_string_concat(%nyx_string* %7767, %nyx_string* %7769)
  %7771 = load %nyx_string*, %nyx_string** %method.ptr
  %7772 = call %nyx_string* @nyx_string_concat(%nyx_string* %7770, %nyx_string* %7771)
  %7773 = getelementptr [13 x i8], [13 x i8]* @.str905, i32 0, i32 0
  %7774 = call %nyx_string* @nyx_string_from_cstr(i8* %7773)
  %7775 = call %nyx_string* @nyx_string_concat(%nyx_string* %7772, %nyx_string* %7774)
  %7776 = load %nyx_string*, %nyx_string** %expected_name.ptr
  %7777 = call %nyx_string* @nyx_string_concat(%nyx_string* %7775, %nyx_string* %7776)
  %7778 = getelementptr [7 x i8], [7 x i8]* @.str906, i32 0, i32 0
  %7779 = call %nyx_string* @nyx_string_from_cstr(i8* %7778)
  %7780 = call %nyx_string* @nyx_string_concat(%nyx_string* %7777, %nyx_string* %7779)
  %7781 = load { i64, i8* }*, { i64, i8* }** %7734
  %7782 = call %nyx_string* @ty_to_str({ i64, i8* }* %7781)
  %7783 = call %nyx_string* @nyx_string_concat(%nyx_string* %7780, %nyx_string* %7782)
  %7784 = call %nyx_string* @msg(%nyx_string* %7761, %nyx_string* %7783)
  %7785 = call i64 @sem_error(%nyx_string* %7784)
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
  %7786 = load %nyx_string*, %nyx_string** %type_name.ptr
  %7787 = load %nyx_string*, %nyx_string** %method.ptr
  %7788 = call { i64, i8* }* @lookup_impl_method(%nyx_string* %7786, %nyx_string* %7787)
  %7789 = alloca { i64, i8* }*
  store { i64, i8* }* %7788, { i64, i8* }** %7789
  %7790 = load { i64, i8* }*, { i64, i8* }** %7789
  %7791 = call i64 @nyx_array_length({ i64, i8* }* %7790)
  %7792 = icmp ne i64 %7791, 3
  br i1 %7792, label %then1683, label %else1684
then1683:
  ret i1 1
else1684:
  br label %merge1685
merge1685:
  %7793 = load { i64, i8* }*, { i64, i8* }** %7789
  %7794 = call i64 @nyx_array_get({ i64, i8* }* %7793, i64 0)
  %7795 = inttoptr i64 %7794 to { i64, i8* }*
  %7796 = alloca { i64, i8* }*
  store { i64, i8* }* %7795, { i64, i8* }** %7796
  %7797 = load { i64, i8* }*, { i64, i8* }** %7789
  %7798 = call i64 @nyx_array_get({ i64, i8* }* %7797, i64 2)
  %7799 = inttoptr i64 %7798 to { i64, i8* }*
  %7800 = alloca { i64, i8* }*
  store { i64, i8* }* %7799, { i64, i8* }** %7800
  %7801 = load { i64, i8* }*, { i64, i8* }** %7800
  %7802 = call i64 @nyx_array_length({ i64, i8* }* %7801)
  %7803 = icmp sgt i64 %7802, 0
  br i1 %7803, label %then1686, label %else1687
then1686:
  %7804 = call { i64, i8* }* @nyx_array_new_ptr()
  %7805 = alloca { i64, i8* }*
  store { i64, i8* }* %7804, { i64, i8* }** %7805
  %7806 = call { i64, i8* }* @nyx_array_new_ptr()
  %7807 = alloca { i64, i8* }*
  store { i64, i8* }* %7806, { i64, i8* }** %7807
  %7808 = alloca i64
  store i64 0, i64* %7808
  br label %while_cond1689
while_cond1689:
  %7809 = load i64, i64* %7808
  %7810 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %7811 = call i64 @nyx_array_length({ i64, i8* }* %7810)
  %7812 = icmp slt i64 %7809, %7811
  br i1 %7812, label %while_body1690, label %while_end1691
while_body1690:
  %7813 = load i64, i64* %7808
  %7814 = load { i64, i8* }*, { i64, i8* }** %7796
  %7815 = call i64 @nyx_array_length({ i64, i8* }* %7814)
  %7816 = icmp slt i64 %7813, %7815
  br i1 %7816, label %then1692, label %else1693
then1692:
  %7817 = load { i64, i8* }*, { i64, i8* }** %7796
  %7818 = load i64, i64* %7808
  %7819 = call i64 @nyx_array_get({ i64, i8* }* %7817, i64 %7818)
  %7820 = inttoptr i64 %7819 to { i64, i8* }*
  %7821 = alloca { i64, i8* }*
  store { i64, i8* }* %7820, { i64, i8* }** %7821
  %7822 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %7823 = load i64, i64* %7808
  %7824 = call i64 @nyx_array_get({ i64, i8* }* %7822, i64 %7823)
  %7825 = inttoptr i64 %7824 to { i64, i8* }*
  %7826 = call i64 @nyx_array_get({ i64, i8* }* %7825, i64 0)
  %7827 = call i64 @nyx_array_get({ i64, i8* }* %7825, i64 1)
  %7828 = inttoptr i64 %7826 to %nyx_string*
  %7829 = inttoptr i64 %7827 to { i64, i8* }*
  %7830 = alloca %ASTNode
  %7831 = getelementptr inbounds %ASTNode, %ASTNode* %7830, i32 0, i32 0
  store %nyx_string* %7828, %nyx_string** %7831
  %7832 = getelementptr inbounds %ASTNode, %ASTNode* %7830, i32 0, i32 1
  store { i64, i8* }* %7829, { i64, i8* }** %7832
  %7833 = load %ASTNode, %ASTNode* %7830
  %7834 = alloca %ASTNode
  store %ASTNode %7833, %ASTNode* %7834
  %7835 = load %ASTNode, %ASTNode* %7834
  %7836 = call { i64, i8* }* @ty_of_expr(%ASTNode %7835)
  %7837 = alloca { i64, i8* }*
  store { i64, i8* }* %7836, { i64, i8* }** %7837
  %7838 = load { i64, i8* }*, { i64, i8* }** %7821
  %7839 = call i1 @ty_is_unknown({ i64, i8* }* %7838)
  %7840 = xor i1 %7839, true
  br i1 %7840, label %then1695, label %else1696
then1695:
  %7841 = load { i64, i8* }*, { i64, i8* }** %7837
  %7842 = call i1 @ty_is_unknown({ i64, i8* }* %7841)
  %7843 = xor i1 %7842, true
  br i1 %7843, label %then1698, label %else1699
then1698:
  %7844 = load { i64, i8* }*, { i64, i8* }** %7821
  %7845 = load { i64, i8* }*, { i64, i8* }** %7837
  %7846 = load { i64, i8* }*, { i64, i8* }** %7800
  %7847 = load { i64, i8* }*, { i64, i8* }** %7805
  %7848 = load { i64, i8* }*, { i64, i8* }** %7807
  %7849 = call i1 @unify({ i64, i8* }* %7844, { i64, i8* }* %7845, { i64, i8* }* %7846, { i64, i8* }* %7847, { i64, i8* }* %7848)
  %7850 = xor i1 %7849, true
  br i1 %7850, label %then1701, label %else1702
then1701:
  %7851 = load { i64, i8* }*, { i64, i8* }** %7821
  %7852 = load { i64, i8* }*, { i64, i8* }** %7805
  %7853 = load { i64, i8* }*, { i64, i8* }** %7807
  %7854 = call { i64, i8* }* @subst_apply({ i64, i8* }* %7851, { i64, i8* }* %7852, { i64, i8* }* %7853)
  %7855 = alloca { i64, i8* }*
  store { i64, i8* }* %7854, { i64, i8* }** %7855
  %7856 = getelementptr [11 x i8], [11 x i8]* @.str907, i32 0, i32 0
  %7857 = call %nyx_string* @nyx_string_from_cstr(i8* %7856)
  %7858 = load i64, i64* %7808
  %7859 = add i64 %7858, 1
  %7860 = call %nyx_string* @nyx_string_from_int(i64 %7859)
  %7861 = call %nyx_string* @nyx_string_concat(%nyx_string* %7857, %nyx_string* %7860)
  %7862 = getelementptr [6 x i8], [6 x i8]* @.str908, i32 0, i32 0
  %7863 = call %nyx_string* @nyx_string_from_cstr(i8* %7862)
  %7864 = call %nyx_string* @nyx_string_concat(%nyx_string* %7861, %nyx_string* %7863)
  %7865 = load %nyx_string*, %nyx_string** %type_name.ptr
  %7866 = call %nyx_string* @nyx_string_concat(%nyx_string* %7864, %nyx_string* %7865)
  %7867 = getelementptr [2 x i8], [2 x i8]* @.str909, i32 0, i32 0
  %7868 = call %nyx_string* @nyx_string_from_cstr(i8* %7867)
  %7869 = call %nyx_string* @nyx_string_concat(%nyx_string* %7866, %nyx_string* %7868)
  %7870 = load %nyx_string*, %nyx_string** %method.ptr
  %7871 = call %nyx_string* @nyx_string_concat(%nyx_string* %7869, %nyx_string* %7870)
  %7872 = getelementptr [16 x i8], [16 x i8]* @.str910, i32 0, i32 0
  %7873 = call %nyx_string* @nyx_string_from_cstr(i8* %7872)
  %7874 = call %nyx_string* @nyx_string_concat(%nyx_string* %7871, %nyx_string* %7873)
  %7875 = load { i64, i8* }*, { i64, i8* }** %7855
  %7876 = call %nyx_string* @ty_to_str({ i64, i8* }* %7875)
  %7877 = call %nyx_string* @nyx_string_concat(%nyx_string* %7874, %nyx_string* %7876)
  %7878 = getelementptr [13 x i8], [13 x i8]* @.str911, i32 0, i32 0
  %7879 = call %nyx_string* @nyx_string_from_cstr(i8* %7878)
  %7880 = call %nyx_string* @nyx_string_concat(%nyx_string* %7877, %nyx_string* %7879)
  %7881 = load { i64, i8* }*, { i64, i8* }** %7837
  %7882 = call %nyx_string* @ty_to_str({ i64, i8* }* %7881)
  %7883 = call %nyx_string* @nyx_string_concat(%nyx_string* %7880, %nyx_string* %7882)
  %7884 = getelementptr [10 x i8], [10 x i8]* @.str912, i32 0, i32 0
  %7885 = call %nyx_string* @nyx_string_from_cstr(i8* %7884)
  %7886 = load i64, i64* %7808
  %7887 = add i64 %7886, 1
  %7888 = call %nyx_string* @nyx_string_from_int(i64 %7887)
  %7889 = call %nyx_string* @nyx_string_concat(%nyx_string* %7885, %nyx_string* %7888)
  %7890 = getelementptr [6 x i8], [6 x i8]* @.str913, i32 0, i32 0
  %7891 = call %nyx_string* @nyx_string_from_cstr(i8* %7890)
  %7892 = call %nyx_string* @nyx_string_concat(%nyx_string* %7889, %nyx_string* %7891)
  %7893 = load %nyx_string*, %nyx_string** %type_name.ptr
  %7894 = call %nyx_string* @nyx_string_concat(%nyx_string* %7892, %nyx_string* %7893)
  %7895 = getelementptr [2 x i8], [2 x i8]* @.str914, i32 0, i32 0
  %7896 = call %nyx_string* @nyx_string_from_cstr(i8* %7895)
  %7897 = call %nyx_string* @nyx_string_concat(%nyx_string* %7894, %nyx_string* %7896)
  %7898 = load %nyx_string*, %nyx_string** %method.ptr
  %7899 = call %nyx_string* @nyx_string_concat(%nyx_string* %7897, %nyx_string* %7898)
  %7900 = getelementptr [13 x i8], [13 x i8]* @.str915, i32 0, i32 0
  %7901 = call %nyx_string* @nyx_string_from_cstr(i8* %7900)
  %7902 = call %nyx_string* @nyx_string_concat(%nyx_string* %7899, %nyx_string* %7901)
  %7903 = load { i64, i8* }*, { i64, i8* }** %7855
  %7904 = call %nyx_string* @ty_to_str({ i64, i8* }* %7903)
  %7905 = call %nyx_string* @nyx_string_concat(%nyx_string* %7902, %nyx_string* %7904)
  %7906 = getelementptr [7 x i8], [7 x i8]* @.str916, i32 0, i32 0
  %7907 = call %nyx_string* @nyx_string_from_cstr(i8* %7906)
  %7908 = call %nyx_string* @nyx_string_concat(%nyx_string* %7905, %nyx_string* %7907)
  %7909 = load { i64, i8* }*, { i64, i8* }** %7837
  %7910 = call %nyx_string* @ty_to_str({ i64, i8* }* %7909)
  %7911 = call %nyx_string* @nyx_string_concat(%nyx_string* %7908, %nyx_string* %7910)
  %7912 = call %nyx_string* @msg(%nyx_string* %7883, %nyx_string* %7911)
  %7913 = call i64 @sem_error(%nyx_string* %7912)
  ret i1 0
else1702:
  br label %merge1703
merge1703:
  br label %merge1700
else1699:
  br label %merge1700
merge1700:
  br label %merge1697
else1696:
  br label %merge1697
merge1697:
  br label %merge1694
else1693:
  br label %merge1694
merge1694:
  %7914 = load i64, i64* %7808
  %7915 = add i64 %7914, 1
  store i64 %7915, i64* %7808
  br label %while_cond1689
while_end1691:
  ret i1 1
else1687:
  br label %merge1688
merge1688:
  %7916 = alloca i64
  store i64 0, i64* %7916
  br label %while_cond1704
while_cond1704:
  %7917 = load i64, i64* %7916
  %7918 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %7919 = call i64 @nyx_array_length({ i64, i8* }* %7918)
  %7920 = icmp slt i64 %7917, %7919
  br i1 %7920, label %while_body1705, label %while_end1706
while_body1705:
  %7921 = load i64, i64* %7916
  %7922 = load { i64, i8* }*, { i64, i8* }** %7796
  %7923 = call i64 @nyx_array_length({ i64, i8* }* %7922)
  %7924 = icmp slt i64 %7921, %7923
  br i1 %7924, label %then1707, label %else1708
then1707:
  %7925 = load { i64, i8* }*, { i64, i8* }** %7796
  %7926 = load i64, i64* %7916
  %7927 = call i64 @nyx_array_get({ i64, i8* }* %7925, i64 %7926)
  %7928 = inttoptr i64 %7927 to { i64, i8* }*
  %7929 = alloca { i64, i8* }*
  store { i64, i8* }* %7928, { i64, i8* }** %7929
  %7930 = load { i64, i8* }*, { i64, i8* }** %7929
  %7931 = call %nyx_string* @ty_kind({ i64, i8* }* %7930)
  %7932 = alloca %nyx_string*
  store %nyx_string* %7931, %nyx_string** %7932
  %7933 = load { i64, i8* }*, { i64, i8* }** %7929
  %7934 = call i1 @ty_is_unknown({ i64, i8* }* %7933)
  %7935 = xor i1 %7934, true
  br i1 %7935, label %then1710, label %else1711
then1710:
  %7936 = load %nyx_string*, %nyx_string** %7932
  %7937 = getelementptr [10 x i8], [10 x i8]* @.str917, i32 0, i32 0
  %7938 = call %nyx_string* @nyx_string_from_cstr(i8* %7937)
  %7939 = call i8* @nyx_string_to_cstr(%nyx_string* %7936)
  %7940 = call i8* @nyx_string_to_cstr(%nyx_string* %7938)
  %7941 = call i32 @strcmp(i8* %7939, i8* %7940)
  %7942 = icmp ne i32 %7941, 0
  br i1 %7942, label %then1713, label %else1714
then1713:
  %7943 = load { i64, i8* }*, { i64, i8* }** %args.ptr
  %7944 = load i64, i64* %7916
  %7945 = call i64 @nyx_array_get({ i64, i8* }* %7943, i64 %7944)
  %7946 = inttoptr i64 %7945 to { i64, i8* }*
  %7947 = call i64 @nyx_array_get({ i64, i8* }* %7946, i64 0)
  %7948 = call i64 @nyx_array_get({ i64, i8* }* %7946, i64 1)
  %7949 = inttoptr i64 %7947 to %nyx_string*
  %7950 = inttoptr i64 %7948 to { i64, i8* }*
  %7951 = alloca %ASTNode
  %7952 = getelementptr inbounds %ASTNode, %ASTNode* %7951, i32 0, i32 0
  store %nyx_string* %7949, %nyx_string** %7952
  %7953 = getelementptr inbounds %ASTNode, %ASTNode* %7951, i32 0, i32 1
  store { i64, i8* }* %7950, { i64, i8* }** %7953
  %7954 = load %ASTNode, %ASTNode* %7951
  %7955 = alloca %ASTNode
  store %ASTNode %7954, %ASTNode* %7955
  %7956 = load %ASTNode, %ASTNode* %7955
  %7957 = call { i64, i8* }* @ty_of_expr(%ASTNode %7956)
  %7958 = alloca { i64, i8* }*
  store { i64, i8* }* %7957, { i64, i8* }** %7958
  %7959 = load { i64, i8* }*, { i64, i8* }** %7958
  %7960 = call i1 @ty_is_unknown({ i64, i8* }* %7959)
  %7961 = xor i1 %7960, true
  br i1 %7961, label %then1716, label %else1717
then1716:
  %7962 = load { i64, i8* }*, { i64, i8* }** %7929
  %7963 = load { i64, i8* }*, { i64, i8* }** %7958
  %7964 = call i1 @ty_eq({ i64, i8* }* %7962, { i64, i8* }* %7963)
  %7965 = xor i1 %7964, true
  br i1 %7965, label %then1719, label %else1720
then1719:
  %7966 = getelementptr [11 x i8], [11 x i8]* @.str918, i32 0, i32 0
  %7967 = call %nyx_string* @nyx_string_from_cstr(i8* %7966)
  %7968 = load i64, i64* %7916
  %7969 = add i64 %7968, 1
  %7970 = call %nyx_string* @nyx_string_from_int(i64 %7969)
  %7971 = call %nyx_string* @nyx_string_concat(%nyx_string* %7967, %nyx_string* %7970)
  %7972 = getelementptr [6 x i8], [6 x i8]* @.str919, i32 0, i32 0
  %7973 = call %nyx_string* @nyx_string_from_cstr(i8* %7972)
  %7974 = call %nyx_string* @nyx_string_concat(%nyx_string* %7971, %nyx_string* %7973)
  %7975 = load %nyx_string*, %nyx_string** %type_name.ptr
  %7976 = call %nyx_string* @nyx_string_concat(%nyx_string* %7974, %nyx_string* %7975)
  %7977 = getelementptr [2 x i8], [2 x i8]* @.str920, i32 0, i32 0
  %7978 = call %nyx_string* @nyx_string_from_cstr(i8* %7977)
  %7979 = call %nyx_string* @nyx_string_concat(%nyx_string* %7976, %nyx_string* %7978)
  %7980 = load %nyx_string*, %nyx_string** %method.ptr
  %7981 = call %nyx_string* @nyx_string_concat(%nyx_string* %7979, %nyx_string* %7980)
  %7982 = getelementptr [16 x i8], [16 x i8]* @.str921, i32 0, i32 0
  %7983 = call %nyx_string* @nyx_string_from_cstr(i8* %7982)
  %7984 = call %nyx_string* @nyx_string_concat(%nyx_string* %7981, %nyx_string* %7983)
  %7985 = load { i64, i8* }*, { i64, i8* }** %7929
  %7986 = call %nyx_string* @ty_to_str({ i64, i8* }* %7985)
  %7987 = call %nyx_string* @nyx_string_concat(%nyx_string* %7984, %nyx_string* %7986)
  %7988 = getelementptr [13 x i8], [13 x i8]* @.str922, i32 0, i32 0
  %7989 = call %nyx_string* @nyx_string_from_cstr(i8* %7988)
  %7990 = call %nyx_string* @nyx_string_concat(%nyx_string* %7987, %nyx_string* %7989)
  %7991 = load { i64, i8* }*, { i64, i8* }** %7958
  %7992 = call %nyx_string* @ty_to_str({ i64, i8* }* %7991)
  %7993 = call %nyx_string* @nyx_string_concat(%nyx_string* %7990, %nyx_string* %7992)
  %7994 = getelementptr [10 x i8], [10 x i8]* @.str923, i32 0, i32 0
  %7995 = call %nyx_string* @nyx_string_from_cstr(i8* %7994)
  %7996 = load i64, i64* %7916
  %7997 = add i64 %7996, 1
  %7998 = call %nyx_string* @nyx_string_from_int(i64 %7997)
  %7999 = call %nyx_string* @nyx_string_concat(%nyx_string* %7995, %nyx_string* %7998)
  %8000 = getelementptr [6 x i8], [6 x i8]* @.str924, i32 0, i32 0
  %8001 = call %nyx_string* @nyx_string_from_cstr(i8* %8000)
  %8002 = call %nyx_string* @nyx_string_concat(%nyx_string* %7999, %nyx_string* %8001)
  %8003 = load %nyx_string*, %nyx_string** %type_name.ptr
  %8004 = call %nyx_string* @nyx_string_concat(%nyx_string* %8002, %nyx_string* %8003)
  %8005 = getelementptr [2 x i8], [2 x i8]* @.str925, i32 0, i32 0
  %8006 = call %nyx_string* @nyx_string_from_cstr(i8* %8005)
  %8007 = call %nyx_string* @nyx_string_concat(%nyx_string* %8004, %nyx_string* %8006)
  %8008 = load %nyx_string*, %nyx_string** %method.ptr
  %8009 = call %nyx_string* @nyx_string_concat(%nyx_string* %8007, %nyx_string* %8008)
  %8010 = getelementptr [13 x i8], [13 x i8]* @.str926, i32 0, i32 0
  %8011 = call %nyx_string* @nyx_string_from_cstr(i8* %8010)
  %8012 = call %nyx_string* @nyx_string_concat(%nyx_string* %8009, %nyx_string* %8011)
  %8013 = load { i64, i8* }*, { i64, i8* }** %7929
  %8014 = call %nyx_string* @ty_to_str({ i64, i8* }* %8013)
  %8015 = call %nyx_string* @nyx_string_concat(%nyx_string* %8012, %nyx_string* %8014)
  %8016 = getelementptr [7 x i8], [7 x i8]* @.str927, i32 0, i32 0
  %8017 = call %nyx_string* @nyx_string_from_cstr(i8* %8016)
  %8018 = call %nyx_string* @nyx_string_concat(%nyx_string* %8015, %nyx_string* %8017)
  %8019 = load { i64, i8* }*, { i64, i8* }** %7958
  %8020 = call %nyx_string* @ty_to_str({ i64, i8* }* %8019)
  %8021 = call %nyx_string* @nyx_string_concat(%nyx_string* %8018, %nyx_string* %8020)
  %8022 = call %nyx_string* @msg(%nyx_string* %7993, %nyx_string* %8021)
  %8023 = call i64 @sem_error(%nyx_string* %8022)
  ret i1 0
else1720:
  br label %merge1721
merge1721:
  br label %merge1718
else1717:
  br label %merge1718
merge1718:
  br label %merge1715
else1714:
  br label %merge1715
merge1715:
  br label %merge1712
else1711:
  br label %merge1712
merge1712:
  br label %merge1709
else1708:
  br label %merge1709
merge1709:
  %8024 = load i64, i64* %7916
  %8025 = add i64 %8024, 1
  store i64 %8025, i64* %7916
  br label %while_cond1704
while_end1706:
  ret i1 1
}

define internal i1 @validate_field_access(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %8026 = load %ASTNode, %ASTNode* %node.ptr
  %8027 = call %ASTNode @get_node_at(%ASTNode %8026, i64 0)
  %8028 = alloca %ASTNode
  store %ASTNode %8027, %ASTNode* %8028
  %8029 = load %ASTNode, %ASTNode* %8028
  %8030 = call i1 @validate_node(%ASTNode %8029)
  ret i1 %8030
}

define internal i1 @validate_field_assign(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %8031 = load %ASTNode, %ASTNode* %node.ptr
  %8032 = call %ASTNode @get_node_at(%ASTNode %8031, i64 0)
  %8033 = alloca %ASTNode
  store %ASTNode %8032, %ASTNode* %8033
  %8034 = load %ASTNode, %ASTNode* %node.ptr
  %8035 = call %ASTNode @get_node_at(%ASTNode %8034, i64 2)
  %8036 = alloca %ASTNode
  store %ASTNode %8035, %ASTNode* %8036
  %8037 = load %ASTNode, %ASTNode* %8033
  %8038 = call i1 @validate_node(%ASTNode %8037)
  %8039 = xor i1 %8038, true
  br i1 %8039, label %then1722, label %else1723
then1722:
  ret i1 0
else1723:
  br label %merge1724
merge1724:
  %8040 = load %ASTNode, %ASTNode* %8036
  %8041 = call i1 @validate_node(%ASTNode %8040)
  ret i1 %8041
}

define internal { i64, i8* }* @lookup_struct_fields(
%nyx_string* %struct_name.param) {
  %struct_name.ptr = alloca %nyx_string*
  store %nyx_string* %struct_name.param, %nyx_string** %struct_name.ptr
  %8042 = alloca i64
  store i64 0, i64* %8042
  br label %while_cond1725
while_cond1725:
  %8043 = load i64, i64* %8042
  %8044 = load i64, i64* @g_struct_reg_count
  %8045 = icmp slt i64 %8043, %8044
  br i1 %8045, label %while_body1726, label %while_end1727
while_body1726:
  %8046 = load { i64, i8* }*, { i64, i8* }** @g_struct_reg_names
  %8047 = load i64, i64* %8042
  %8048 = call i64 @nyx_array_get({ i64, i8* }* %8046, i64 %8047)
  %8049 = inttoptr i64 %8048 to %nyx_string*
  %8050 = alloca %nyx_string*
  store %nyx_string* %8049, %nyx_string** %8050
  %8051 = load %nyx_string*, %nyx_string** %8050
  %8052 = load %nyx_string*, %nyx_string** %struct_name.ptr
  %8053 = call i8* @nyx_string_to_cstr(%nyx_string* %8051)
  %8054 = call i8* @nyx_string_to_cstr(%nyx_string* %8052)
  %8055 = call i32 @strcmp(i8* %8053, i8* %8054)
  %8056 = icmp eq i32 %8055, 0
  br i1 %8056, label %then1728, label %else1729
then1728:
  %8057 = load { i64, i8* }*, { i64, i8* }** @g_struct_reg_fields
  %8058 = load i64, i64* %8042
  %8059 = call i64 @nyx_array_get({ i64, i8* }* %8057, i64 %8058)
  %8060 = inttoptr i64 %8059 to { i64, i8* }*
  %8061 = alloca { i64, i8* }*
  store { i64, i8* }* %8060, { i64, i8* }** %8061
  %8062 = load { i64, i8* }*, { i64, i8* }** %8061
  ret { i64, i8* }* %8062
else1729:
  br label %merge1730
merge1730:
  %8063 = load i64, i64* %8042
  %8064 = add i64 %8063, 1
  store i64 %8064, i64* %8042
  br label %while_cond1725
while_end1727:
  %8065 = call { i64, i8* }* @nyx_array_new_ptr()
  ret { i64, i8* }* %8065
}

define internal i1 @is_struct_registered(
%nyx_string* %struct_name.param) {
  %struct_name.ptr = alloca %nyx_string*
  store %nyx_string* %struct_name.param, %nyx_string** %struct_name.ptr
  %8066 = alloca i64
  store i64 0, i64* %8066
  br label %while_cond1731
while_cond1731:
  %8067 = load i64, i64* %8066
  %8068 = load i64, i64* @g_struct_reg_count
  %8069 = icmp slt i64 %8067, %8068
  br i1 %8069, label %while_body1732, label %while_end1733
while_body1732:
  %8070 = load { i64, i8* }*, { i64, i8* }** @g_struct_reg_names
  %8071 = load i64, i64* %8066
  %8072 = call i64 @nyx_array_get({ i64, i8* }* %8070, i64 %8071)
  %8073 = inttoptr i64 %8072 to %nyx_string*
  %8074 = alloca %nyx_string*
  store %nyx_string* %8073, %nyx_string** %8074
  %8075 = load %nyx_string*, %nyx_string** %8074
  %8076 = load %nyx_string*, %nyx_string** %struct_name.ptr
  %8077 = call i8* @nyx_string_to_cstr(%nyx_string* %8075)
  %8078 = call i8* @nyx_string_to_cstr(%nyx_string* %8076)
  %8079 = call i32 @strcmp(i8* %8077, i8* %8078)
  %8080 = icmp eq i32 %8079, 0
  br i1 %8080, label %then1734, label %else1735
then1734:
  ret i1 1
else1735:
  br label %merge1736
merge1736:
  %8081 = load i64, i64* %8066
  %8082 = add i64 %8081, 1
  store i64 %8082, i64* %8066
  br label %while_cond1731
while_end1733:
  ret i1 0
}

define internal { i64, i8* }* @lookup_struct_field_type(
%nyx_string* %struct_name.param, %nyx_string* %field_name.param) {
  %struct_name.ptr = alloca %nyx_string*
  store %nyx_string* %struct_name.param, %nyx_string** %struct_name.ptr
  %field_name.ptr = alloca %nyx_string*
  store %nyx_string* %field_name.param, %nyx_string** %field_name.ptr
  %8083 = alloca i64
  store i64 0, i64* %8083
  br label %while_cond1737
while_cond1737:
  %8084 = load i64, i64* %8083
  %8085 = load i64, i64* @g_struct_reg_count
  %8086 = icmp slt i64 %8084, %8085
  br i1 %8086, label %while_body1738, label %while_end1739
while_body1738:
  %8087 = load { i64, i8* }*, { i64, i8* }** @g_struct_reg_names
  %8088 = load i64, i64* %8083
  %8089 = call i64 @nyx_array_get({ i64, i8* }* %8087, i64 %8088)
  %8090 = inttoptr i64 %8089 to %nyx_string*
  %8091 = alloca %nyx_string*
  store %nyx_string* %8090, %nyx_string** %8091
  %8092 = load %nyx_string*, %nyx_string** %8091
  %8093 = load %nyx_string*, %nyx_string** %struct_name.ptr
  %8094 = call i8* @nyx_string_to_cstr(%nyx_string* %8092)
  %8095 = call i8* @nyx_string_to_cstr(%nyx_string* %8093)
  %8096 = call i32 @strcmp(i8* %8094, i8* %8095)
  %8097 = icmp eq i32 %8096, 0
  br i1 %8097, label %then1740, label %else1741
then1740:
  %8098 = load { i64, i8* }*, { i64, i8* }** @g_struct_reg_fields
  %8099 = load i64, i64* %8083
  %8100 = call i64 @nyx_array_get({ i64, i8* }* %8098, i64 %8099)
  %8101 = inttoptr i64 %8100 to { i64, i8* }*
  %8102 = alloca { i64, i8* }*
  store { i64, i8* }* %8101, { i64, i8* }** %8102
  %8103 = load { i64, i8* }*, { i64, i8* }** @g_struct_reg_field_types
  %8104 = load i64, i64* %8083
  %8105 = call i64 @nyx_array_get({ i64, i8* }* %8103, i64 %8104)
  %8106 = inttoptr i64 %8105 to { i64, i8* }*
  %8107 = alloca { i64, i8* }*
  store { i64, i8* }* %8106, { i64, i8* }** %8107
  %8108 = alloca i64
  store i64 0, i64* %8108
  br label %while_cond1743
while_cond1743:
  %8109 = load i64, i64* %8108
  %8110 = load { i64, i8* }*, { i64, i8* }** %8102
  %8111 = call i64 @nyx_array_length({ i64, i8* }* %8110)
  %8112 = icmp slt i64 %8109, %8111
  br i1 %8112, label %while_body1744, label %while_end1745
while_body1744:
  %8113 = load { i64, i8* }*, { i64, i8* }** %8102
  %8114 = load i64, i64* %8108
  %8115 = call i64 @nyx_array_get({ i64, i8* }* %8113, i64 %8114)
  %8116 = inttoptr i64 %8115 to %nyx_string*
  %8117 = alloca %nyx_string*
  store %nyx_string* %8116, %nyx_string** %8117
  %8118 = load %nyx_string*, %nyx_string** %8117
  %8119 = load %nyx_string*, %nyx_string** %field_name.ptr
  %8120 = call i8* @nyx_string_to_cstr(%nyx_string* %8118)
  %8121 = call i8* @nyx_string_to_cstr(%nyx_string* %8119)
  %8122 = call i32 @strcmp(i8* %8120, i8* %8121)
  %8123 = icmp eq i32 %8122, 0
  br i1 %8123, label %then1746, label %else1747
then1746:
  %8124 = load i64, i64* %8108
  %8125 = load { i64, i8* }*, { i64, i8* }** %8107
  %8126 = call i64 @nyx_array_length({ i64, i8* }* %8125)
  %8127 = icmp slt i64 %8124, %8126
  br i1 %8127, label %then1749, label %else1750
then1749:
  %8128 = load { i64, i8* }*, { i64, i8* }** %8107
  %8129 = load i64, i64* %8108
  %8130 = call i64 @nyx_array_get({ i64, i8* }* %8128, i64 %8129)
  %8131 = inttoptr i64 %8130 to { i64, i8* }*
  %8132 = alloca { i64, i8* }*
  store { i64, i8* }* %8131, { i64, i8* }** %8132
  %8133 = load { i64, i8* }*, { i64, i8* }** %8132
  ret { i64, i8* }* %8133
else1750:
  br label %merge1751
merge1751:
  %8134 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %8134
else1747:
  br label %merge1748
merge1748:
  %8135 = load i64, i64* %8108
  %8136 = add i64 %8135, 1
  store i64 %8136, i64* %8108
  br label %while_cond1743
while_end1745:
  %8137 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %8137
else1741:
  br label %merge1742
merge1742:
  %8138 = load i64, i64* %8083
  %8139 = add i64 %8138, 1
  store i64 %8139, i64* %8083
  br label %while_cond1737
while_end1739:
  %8140 = call { i64, i8* }* @ty_unknown()
  ret { i64, i8* }* %8140
}

define internal i1 @validate_struct_init(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %8141 = load %ASTNode, %ASTNode* %node.ptr
  %8142 = call %nyx_string* @get_string_at(%ASTNode %8141, i64 0)
  %8143 = alloca %nyx_string*
  store %nyx_string* %8142, %nyx_string** %8143
  %8144 = load %ASTNode, %ASTNode* %node.ptr
  %8145 = call { i64, i8* }* @get_array_at(%ASTNode %8144, i64 1)
  %8146 = alloca { i64, i8* }*
  store { i64, i8* }* %8145, { i64, i8* }** %8146
  %8147 = load %nyx_string*, %nyx_string** %8143
  %8148 = call i1 @is_struct_registered(%nyx_string* %8147)
  %8149 = alloca i1
  store i1 %8148, i1* %8149
  %8150 = alloca i64
  store i64 0, i64* %8150
  br label %while_cond1752
while_cond1752:
  %8151 = load i64, i64* %8150
  %8152 = load { i64, i8* }*, { i64, i8* }** %8146
  %8153 = call i64 @nyx_array_length({ i64, i8* }* %8152)
  %8154 = icmp slt i64 %8151, %8153
  br i1 %8154, label %while_body1753, label %while_end1754
while_body1753:
  %8155 = load { i64, i8* }*, { i64, i8* }** %8146
  %8156 = load i64, i64* %8150
  %8157 = call i64 @nyx_array_get({ i64, i8* }* %8155, i64 %8156)
  %8158 = inttoptr i64 %8157 to { i64, i8* }*
  %8159 = alloca { i64, i8* }*
  store { i64, i8* }* %8158, { i64, i8* }** %8159
  %8160 = load { i64, i8* }*, { i64, i8* }** %8159
  %8161 = call i64 @nyx_array_get({ i64, i8* }* %8160, i64 0)
  %8162 = inttoptr i64 %8161 to %nyx_string*
  %8163 = alloca %nyx_string*
  store %nyx_string* %8162, %nyx_string** %8163
  %8164 = load { i64, i8* }*, { i64, i8* }** %8159
  %8165 = call i64 @nyx_array_get({ i64, i8* }* %8164, i64 1)
  %8166 = inttoptr i64 %8165 to { i64, i8* }*
  %8167 = call i64 @nyx_array_get({ i64, i8* }* %8166, i64 0)
  %8168 = call i64 @nyx_array_get({ i64, i8* }* %8166, i64 1)
  %8169 = inttoptr i64 %8167 to %nyx_string*
  %8170 = inttoptr i64 %8168 to { i64, i8* }*
  %8171 = alloca %ASTNode
  %8172 = getelementptr inbounds %ASTNode, %ASTNode* %8171, i32 0, i32 0
  store %nyx_string* %8169, %nyx_string** %8172
  %8173 = getelementptr inbounds %ASTNode, %ASTNode* %8171, i32 0, i32 1
  store { i64, i8* }* %8170, { i64, i8* }** %8173
  %8174 = load %ASTNode, %ASTNode* %8171
  %8175 = alloca %ASTNode
  store %ASTNode %8174, %ASTNode* %8175
  %8176 = load i1, i1* %8149
  br i1 %8176, label %then1755, label %else1756
then1755:
  %8177 = load %nyx_string*, %nyx_string** %8143
  %8178 = call { i64, i8* }* @lookup_struct_fields(%nyx_string* %8177)
  %8179 = alloca { i64, i8* }*
  store { i64, i8* }* %8178, { i64, i8* }** %8179
  %8180 = load { i64, i8* }*, { i64, i8* }** %8179
  %8181 = call i64 @nyx_array_length({ i64, i8* }* %8180)
  %8182 = icmp sgt i64 %8181, 0
  br i1 %8182, label %then1758, label %else1759
then1758:
  %8183 = alloca i64
  store i64 0, i64* %8183
  %8184 = sub i64 0, 1
  %8185 = alloca i64
  store i64 %8184, i64* %8185
  %8186 = alloca i64
  store i64 0, i64* %8186
  br label %while_cond1761
while_cond1761:
  %8187 = load i64, i64* %8186
  %8188 = load { i64, i8* }*, { i64, i8* }** %8179
  %8189 = call i64 @nyx_array_length({ i64, i8* }* %8188)
  %8190 = icmp slt i64 %8187, %8189
  br i1 %8190, label %while_body1762, label %while_end1763
while_body1762:
  %8191 = load { i64, i8* }*, { i64, i8* }** %8179
  %8192 = load i64, i64* %8186
  %8193 = call i64 @nyx_array_get({ i64, i8* }* %8191, i64 %8192)
  %8194 = inttoptr i64 %8193 to %nyx_string*
  %8195 = alloca %nyx_string*
  store %nyx_string* %8194, %nyx_string** %8195
  %8196 = load %nyx_string*, %nyx_string** %8195
  %8197 = load %nyx_string*, %nyx_string** %8163
  %8198 = call i8* @nyx_string_to_cstr(%nyx_string* %8196)
  %8199 = call i8* @nyx_string_to_cstr(%nyx_string* %8197)
  %8200 = call i32 @strcmp(i8* %8198, i8* %8199)
  %8201 = icmp eq i32 %8200, 0
  br i1 %8201, label %then1764, label %else1765
then1764:
  store i64 1, i64* %8183
  %8202 = load i64, i64* %8186
  store i64 %8202, i64* %8185
  br label %merge1766
else1765:
  br label %merge1766
merge1766:
  %8203 = load i64, i64* %8186
  %8204 = add i64 %8203, 1
  store i64 %8204, i64* %8186
  br label %while_cond1761
while_end1763:
  %8205 = load i64, i64* %8183
  %8206 = icmp eq i64 %8205, 0
  br i1 %8206, label %then1767, label %else1768
then1767:
  %8207 = load %nyx_string*, %nyx_string** %8163
  %8208 = load { i64, i8* }*, { i64, i8* }** %8179
  %8209 = call %nyx_string* @suggest_similar(%nyx_string* %8207, { i64, i8* }* %8208)
  %8210 = alloca %nyx_string*
  store %nyx_string* %8209, %nyx_string** %8210
  %8211 = getelementptr [8 x i8], [8 x i8]* @.str928, i32 0, i32 0
  %8212 = call %nyx_string* @nyx_string_from_cstr(i8* %8211)
  %8213 = load %nyx_string*, %nyx_string** %8163
  %8214 = call %nyx_string* @nyx_string_concat(%nyx_string* %8212, %nyx_string* %8213)
  %8215 = getelementptr [24 x i8], [24 x i8]* @.str929, i32 0, i32 0
  %8216 = call %nyx_string* @nyx_string_from_cstr(i8* %8215)
  %8217 = call %nyx_string* @nyx_string_concat(%nyx_string* %8214, %nyx_string* %8216)
  %8218 = load %nyx_string*, %nyx_string** %8143
  %8219 = call %nyx_string* @nyx_string_concat(%nyx_string* %8217, %nyx_string* %8218)
  %8220 = getelementptr [2 x i8], [2 x i8]* @.str930, i32 0, i32 0
  %8221 = call %nyx_string* @nyx_string_from_cstr(i8* %8220)
  %8222 = call %nyx_string* @nyx_string_concat(%nyx_string* %8219, %nyx_string* %8221)
  %8223 = load %nyx_string*, %nyx_string** %8210
  %8224 = call %nyx_string* @nyx_string_concat(%nyx_string* %8222, %nyx_string* %8223)
  %8225 = getelementptr [8 x i8], [8 x i8]* @.str931, i32 0, i32 0
  %8226 = call %nyx_string* @nyx_string_from_cstr(i8* %8225)
  %8227 = load %nyx_string*, %nyx_string** %8163
  %8228 = call %nyx_string* @nyx_string_concat(%nyx_string* %8226, %nyx_string* %8227)
  %8229 = getelementptr [29 x i8], [29 x i8]* @.str932, i32 0, i32 0
  %8230 = call %nyx_string* @nyx_string_from_cstr(i8* %8229)
  %8231 = call %nyx_string* @nyx_string_concat(%nyx_string* %8228, %nyx_string* %8230)
  %8232 = load %nyx_string*, %nyx_string** %8143
  %8233 = call %nyx_string* @nyx_string_concat(%nyx_string* %8231, %nyx_string* %8232)
  %8234 = getelementptr [2 x i8], [2 x i8]* @.str933, i32 0, i32 0
  %8235 = call %nyx_string* @nyx_string_from_cstr(i8* %8234)
  %8236 = call %nyx_string* @nyx_string_concat(%nyx_string* %8233, %nyx_string* %8235)
  %8237 = load %nyx_string*, %nyx_string** %8210
  %8238 = call %nyx_string* @nyx_string_concat(%nyx_string* %8236, %nyx_string* %8237)
  %8239 = call %nyx_string* @msg(%nyx_string* %8224, %nyx_string* %8238)
  %8240 = call i64 @sem_error(%nyx_string* %8239)
  br label %merge1769
else1768:
  %8241 = load %nyx_string*, %nyx_string** %8143
  %8242 = load %nyx_string*, %nyx_string** %8163
  %8243 = call { i64, i8* }* @lookup_struct_field_type(%nyx_string* %8241, %nyx_string* %8242)
  %8244 = alloca { i64, i8* }*
  store { i64, i8* }* %8243, { i64, i8* }** %8244
  %8245 = load { i64, i8* }*, { i64, i8* }** %8244
  %8246 = call i1 @ty_is_unknown({ i64, i8* }* %8245)
  %8247 = xor i1 %8246, true
  br i1 %8247, label %then1770, label %else1771
then1770:
  %8248 = load %ASTNode, %ASTNode* %8175
  %8249 = call { i64, i8* }* @ty_of_expr(%ASTNode %8248)
  %8250 = alloca { i64, i8* }*
  store { i64, i8* }* %8249, { i64, i8* }** %8250
  %8251 = load { i64, i8* }*, { i64, i8* }** %8250
  %8252 = call i1 @ty_is_unknown({ i64, i8* }* %8251)
  %8253 = xor i1 %8252, true
  br i1 %8253, label %then1773, label %else1774
then1773:
  %8254 = load { i64, i8* }*, { i64, i8* }** %8244
  %8255 = load { i64, i8* }*, { i64, i8* }** %8250
  %8256 = call i1 @ty_eq({ i64, i8* }* %8254, { i64, i8* }* %8255)
  %8257 = xor i1 %8256, true
  br i1 %8257, label %then1776, label %else1777
then1776:
  %8258 = getelementptr [29 x i8], [29 x i8]* @.str934, i32 0, i32 0
  %8259 = call %nyx_string* @nyx_string_from_cstr(i8* %8258)
  %8260 = load %nyx_string*, %nyx_string** %8143
  %8261 = call %nyx_string* @nyx_string_concat(%nyx_string* %8259, %nyx_string* %8260)
  %8262 = getelementptr [2 x i8], [2 x i8]* @.str935, i32 0, i32 0
  %8263 = call %nyx_string* @nyx_string_from_cstr(i8* %8262)
  %8264 = call %nyx_string* @nyx_string_concat(%nyx_string* %8261, %nyx_string* %8263)
  %8265 = load %nyx_string*, %nyx_string** %8163
  %8266 = call %nyx_string* @nyx_string_concat(%nyx_string* %8264, %nyx_string* %8265)
  %8267 = getelementptr [16 x i8], [16 x i8]* @.str936, i32 0, i32 0
  %8268 = call %nyx_string* @nyx_string_from_cstr(i8* %8267)
  %8269 = call %nyx_string* @nyx_string_concat(%nyx_string* %8266, %nyx_string* %8268)
  %8270 = load { i64, i8* }*, { i64, i8* }** %8244
  %8271 = call %nyx_string* @ty_to_str({ i64, i8* }* %8270)
  %8272 = call %nyx_string* @nyx_string_concat(%nyx_string* %8269, %nyx_string* %8271)
  %8273 = getelementptr [13 x i8], [13 x i8]* @.str937, i32 0, i32 0
  %8274 = call %nyx_string* @nyx_string_from_cstr(i8* %8273)
  %8275 = call %nyx_string* @nyx_string_concat(%nyx_string* %8272, %nyx_string* %8274)
  %8276 = load { i64, i8* }*, { i64, i8* }** %8250
  %8277 = call %nyx_string* @ty_to_str({ i64, i8* }* %8276)
  %8278 = call %nyx_string* @nyx_string_concat(%nyx_string* %8275, %nyx_string* %8277)
  %8279 = getelementptr [25 x i8], [25 x i8]* @.str938, i32 0, i32 0
  %8280 = call %nyx_string* @nyx_string_from_cstr(i8* %8279)
  %8281 = load %nyx_string*, %nyx_string** %8143
  %8282 = call %nyx_string* @nyx_string_concat(%nyx_string* %8280, %nyx_string* %8281)
  %8283 = getelementptr [2 x i8], [2 x i8]* @.str939, i32 0, i32 0
  %8284 = call %nyx_string* @nyx_string_from_cstr(i8* %8283)
  %8285 = call %nyx_string* @nyx_string_concat(%nyx_string* %8282, %nyx_string* %8284)
  %8286 = load %nyx_string*, %nyx_string** %8163
  %8287 = call %nyx_string* @nyx_string_concat(%nyx_string* %8285, %nyx_string* %8286)
  %8288 = getelementptr [13 x i8], [13 x i8]* @.str940, i32 0, i32 0
  %8289 = call %nyx_string* @nyx_string_from_cstr(i8* %8288)
  %8290 = call %nyx_string* @nyx_string_concat(%nyx_string* %8287, %nyx_string* %8289)
  %8291 = load { i64, i8* }*, { i64, i8* }** %8244
  %8292 = call %nyx_string* @ty_to_str({ i64, i8* }* %8291)
  %8293 = call %nyx_string* @nyx_string_concat(%nyx_string* %8290, %nyx_string* %8292)
  %8294 = getelementptr [7 x i8], [7 x i8]* @.str941, i32 0, i32 0
  %8295 = call %nyx_string* @nyx_string_from_cstr(i8* %8294)
  %8296 = call %nyx_string* @nyx_string_concat(%nyx_string* %8293, %nyx_string* %8295)
  %8297 = load { i64, i8* }*, { i64, i8* }** %8250
  %8298 = call %nyx_string* @ty_to_str({ i64, i8* }* %8297)
  %8299 = call %nyx_string* @nyx_string_concat(%nyx_string* %8296, %nyx_string* %8298)
  %8300 = call %nyx_string* @msg(%nyx_string* %8278, %nyx_string* %8299)
  %8301 = call i64 @sem_error(%nyx_string* %8300)
  br label %merge1778
else1777:
  br label %merge1778
merge1778:
  br label %merge1775
else1774:
  br label %merge1775
merge1775:
  br label %merge1772
else1771:
  br label %merge1772
merge1772:
  br label %merge1769
merge1769:
  br label %merge1760
else1759:
  br label %merge1760
merge1760:
  br label %merge1757
else1756:
  br label %merge1757
merge1757:
  %8302 = load %ASTNode, %ASTNode* %8175
  %8303 = call i1 @validate_node(%ASTNode %8302)
  %8304 = xor i1 %8303, true
  br i1 %8304, label %then1779, label %else1780
then1779:
  ret i1 0
else1780:
  br label %merge1781
merge1781:
  %8305 = load i64, i64* %8150
  %8306 = add i64 %8305, 1
  store i64 %8306, i64* %8150
  br label %while_cond1752
while_end1754:
  ret i1 1
}

define internal i1 @validate_match(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %8307 = load %ASTNode, %ASTNode* %node.ptr
  %8308 = call %ASTNode @get_node_at(%ASTNode %8307, i64 0)
  %8309 = alloca %ASTNode
  store %ASTNode %8308, %ASTNode* %8309
  %8310 = load %ASTNode, %ASTNode* %node.ptr
  %8311 = call { i64, i8* }* @get_array_at(%ASTNode %8310, i64 1)
  %8312 = alloca { i64, i8* }*
  store { i64, i8* }* %8311, { i64, i8* }** %8312
  %8313 = load %ASTNode, %ASTNode* %8309
  %8314 = call i1 @validate_node(%ASTNode %8313)
  %8315 = xor i1 %8314, true
  br i1 %8315, label %then1782, label %else1783
then1782:
  ret i1 0
else1783:
  br label %merge1784
merge1784:
  %8316 = alloca i64
  store i64 0, i64* %8316
  br label %while_cond1785
while_cond1785:
  %8317 = load i64, i64* %8316
  %8318 = load { i64, i8* }*, { i64, i8* }** %8312
  %8319 = call i64 @nyx_array_length({ i64, i8* }* %8318)
  %8320 = icmp slt i64 %8317, %8319
  br i1 %8320, label %while_body1786, label %while_end1787
while_body1786:
  %8321 = load { i64, i8* }*, { i64, i8* }** %8312
  %8322 = load i64, i64* %8316
  %8323 = call i64 @nyx_array_get({ i64, i8* }* %8321, i64 %8322)
  %8324 = inttoptr i64 %8323 to { i64, i8* }*
  %8325 = call i64 @nyx_array_get({ i64, i8* }* %8324, i64 0)
  %8326 = call i64 @nyx_array_get({ i64, i8* }* %8324, i64 1)
  %8327 = inttoptr i64 %8325 to %nyx_string*
  %8328 = inttoptr i64 %8326 to { i64, i8* }*
  %8329 = alloca %ASTNode
  %8330 = getelementptr inbounds %ASTNode, %ASTNode* %8329, i32 0, i32 0
  store %nyx_string* %8327, %nyx_string** %8330
  %8331 = getelementptr inbounds %ASTNode, %ASTNode* %8329, i32 0, i32 1
  store { i64, i8* }* %8328, { i64, i8* }** %8331
  %8332 = load %ASTNode, %ASTNode* %8329
  %8333 = alloca %ASTNode
  store %ASTNode %8332, %ASTNode* %8333
  %8334 = load %ASTNode, %ASTNode* %8333
  %8335 = call i1 @validate_node(%ASTNode %8334)
  %8336 = xor i1 %8335, true
  br i1 %8336, label %then1788, label %else1789
then1788:
  ret i1 0
else1789:
  br label %merge1790
merge1790:
  %8337 = load i64, i64* %8316
  %8338 = add i64 %8337, 1
  store i64 %8338, i64* %8316
  br label %while_cond1785
while_end1787:
  %8339 = alloca i1
  store i1 0, i1* %8339
  %8340 = getelementptr [1 x i8], [1 x i8]* @.str942, i32 0, i32 0
  %8341 = call %nyx_string* @nyx_string_from_cstr(i8* %8340)
  %8342 = alloca %nyx_string*
  store %nyx_string* %8341, %nyx_string** %8342
  %8343 = call { i64, i8* }* @nyx_array_new_ptr()
  %8344 = alloca { i64, i8* }*
  store { i64, i8* }* %8343, { i64, i8* }** %8344
  store i64 0, i64* %8316
  br label %while_cond1791
while_cond1791:
  %8345 = load i64, i64* %8316
  %8346 = load { i64, i8* }*, { i64, i8* }** %8312
  %8347 = call i64 @nyx_array_length({ i64, i8* }* %8346)
  %8348 = icmp slt i64 %8345, %8347
  br i1 %8348, label %while_body1792, label %while_end1793
while_body1792:
  %8349 = load { i64, i8* }*, { i64, i8* }** %8312
  %8350 = load i64, i64* %8316
  %8351 = call i64 @nyx_array_get({ i64, i8* }* %8349, i64 %8350)
  %8352 = inttoptr i64 %8351 to { i64, i8* }*
  %8353 = call i64 @nyx_array_get({ i64, i8* }* %8352, i64 0)
  %8354 = call i64 @nyx_array_get({ i64, i8* }* %8352, i64 1)
  %8355 = inttoptr i64 %8353 to %nyx_string*
  %8356 = inttoptr i64 %8354 to { i64, i8* }*
  %8357 = alloca %ASTNode
  %8358 = getelementptr inbounds %ASTNode, %ASTNode* %8357, i32 0, i32 0
  store %nyx_string* %8355, %nyx_string** %8358
  %8359 = getelementptr inbounds %ASTNode, %ASTNode* %8357, i32 0, i32 1
  store { i64, i8* }* %8356, { i64, i8* }** %8359
  %8360 = load %ASTNode, %ASTNode* %8357
  %8361 = alloca %ASTNode
  store %ASTNode %8360, %ASTNode* %8361
  %8362 = load %ASTNode, %ASTNode* %8361
  %8363 = call %ASTNode @get_node_at(%ASTNode %8362, i64 0)
  %8364 = alloca %ASTNode
  store %ASTNode %8363, %ASTNode* %8364
  %8365 = alloca i1
  store i1 true, i1* %8365
  %8366 = alloca i1
  store i1 true, i1* %8366
  %8367 = alloca i1
  store i1 true, i1* %8367
  %8368 = getelementptr %ASTNode, %ASTNode* %8364, i32 0, i32 0
  %8369 = load %nyx_string*, %nyx_string** %8368
  %8370 = getelementptr [9 x i8], [9 x i8]* @.str943, i32 0, i32 0
  %8371 = call %nyx_string* @nyx_string_from_cstr(i8* %8370)
  %8372 = call i8* @nyx_string_to_cstr(%nyx_string* %8369)
  %8373 = call i8* @nyx_string_to_cstr(%nyx_string* %8371)
  %8374 = call i32 @strcmp(i8* %8372, i8* %8373)
  %8375 = icmp eq i32 %8374, 0
  br i1 %8375, label %sc_or_end1795, label %sc_or_rhs1794
sc_or_rhs1794:
  %8376 = getelementptr %ASTNode, %ASTNode* %8364, i32 0, i32 0
  %8377 = load %nyx_string*, %nyx_string** %8376
  %8378 = getelementptr [19 x i8], [19 x i8]* @.str944, i32 0, i32 0
  %8379 = call %nyx_string* @nyx_string_from_cstr(i8* %8378)
  %8380 = call i8* @nyx_string_to_cstr(%nyx_string* %8377)
  %8381 = call i8* @nyx_string_to_cstr(%nyx_string* %8379)
  %8382 = call i32 @strcmp(i8* %8380, i8* %8381)
  %8383 = icmp eq i32 %8382, 0
  store i1 %8383, i1* %8367
  br label %sc_or_end1795
sc_or_end1795:
  %8384 = load i1, i1* %8367
  br i1 %8384, label %sc_or_end1797, label %sc_or_rhs1796
sc_or_rhs1796:
  %8385 = getelementptr %ASTNode, %ASTNode* %8364, i32 0, i32 0
  %8386 = load %nyx_string*, %nyx_string** %8385
  %8387 = getelementptr [15 x i8], [15 x i8]* @.str945, i32 0, i32 0
  %8388 = call %nyx_string* @nyx_string_from_cstr(i8* %8387)
  %8389 = call i8* @nyx_string_to_cstr(%nyx_string* %8386)
  %8390 = call i8* @nyx_string_to_cstr(%nyx_string* %8388)
  %8391 = call i32 @strcmp(i8* %8389, i8* %8390)
  %8392 = icmp eq i32 %8391, 0
  store i1 %8392, i1* %8366
  br label %sc_or_end1797
sc_or_end1797:
  %8393 = load i1, i1* %8366
  br i1 %8393, label %sc_or_end1799, label %sc_or_rhs1798
sc_or_rhs1798:
  %8394 = getelementptr %ASTNode, %ASTNode* %8364, i32 0, i32 0
  %8395 = load %nyx_string*, %nyx_string** %8394
  %8396 = getelementptr [21 x i8], [21 x i8]* @.str946, i32 0, i32 0
  %8397 = call %nyx_string* @nyx_string_from_cstr(i8* %8396)
  %8398 = call i8* @nyx_string_to_cstr(%nyx_string* %8395)
  %8399 = call i8* @nyx_string_to_cstr(%nyx_string* %8397)
  %8400 = call i32 @strcmp(i8* %8398, i8* %8399)
  %8401 = icmp eq i32 %8400, 0
  store i1 %8401, i1* %8365
  br label %sc_or_end1799
sc_or_end1799:
  %8402 = load i1, i1* %8365
  br i1 %8402, label %then1800, label %else1801
then1800:
  store i1 1, i1* %8339
  br label %merge1802
else1801:
  br label %merge1802
merge1802:
  %8403 = getelementptr %ASTNode, %ASTNode* %8364, i32 0, i32 0
  %8404 = load %nyx_string*, %nyx_string** %8403
  %8405 = getelementptr [14 x i8], [14 x i8]* @.str947, i32 0, i32 0
  %8406 = call %nyx_string* @nyx_string_from_cstr(i8* %8405)
  %8407 = call i8* @nyx_string_to_cstr(%nyx_string* %8404)
  %8408 = call i8* @nyx_string_to_cstr(%nyx_string* %8406)
  %8409 = call i32 @strcmp(i8* %8407, i8* %8408)
  %8410 = icmp eq i32 %8409, 0
  br i1 %8410, label %then1803, label %else1804
then1803:
  %8411 = load %ASTNode, %ASTNode* %8364
  %8412 = call %nyx_string* @get_string_at(%ASTNode %8411, i64 0)
  %8413 = alloca %nyx_string*
  store %nyx_string* %8412, %nyx_string** %8413
  %8414 = load %ASTNode, %ASTNode* %8364
  %8415 = call %nyx_string* @get_string_at(%ASTNode %8414, i64 1)
  %8416 = alloca %nyx_string*
  store %nyx_string* %8415, %nyx_string** %8416
  %8417 = load %nyx_string*, %nyx_string** %8342
  %8418 = getelementptr [1 x i8], [1 x i8]* @.str948, i32 0, i32 0
  %8419 = call %nyx_string* @nyx_string_from_cstr(i8* %8418)
  %8420 = call i8* @nyx_string_to_cstr(%nyx_string* %8417)
  %8421 = call i8* @nyx_string_to_cstr(%nyx_string* %8419)
  %8422 = call i32 @strcmp(i8* %8420, i8* %8421)
  %8423 = icmp eq i32 %8422, 0
  br i1 %8423, label %then1806, label %else1807
then1806:
  %8424 = load %nyx_string*, %nyx_string** %8413
  store %nyx_string* %8424, %nyx_string** %8342
  br label %merge1808
else1807:
  br label %merge1808
merge1808:
  %8425 = alloca i1
  store i1 0, i1* %8425
  %8426 = getelementptr %ASTNode, %ASTNode* %8361, i32 0, i32 1
  %8427 = load { i64, i8* }*, { i64, i8* }** %8426
  %8428 = alloca { i64, i8* }*
  store { i64, i8* }* %8427, { i64, i8* }** %8428
  %8429 = load { i64, i8* }*, { i64, i8* }** %8428
  %8430 = call i64 @nyx_array_length({ i64, i8* }* %8429)
  %8431 = icmp sgt i64 %8430, 2
  br i1 %8431, label %then1809, label %else1810
then1809:
  %8432 = load { i64, i8* }*, { i64, i8* }** %8428
  %8433 = call i64 @nyx_array_get({ i64, i8* }* %8432, i64 2)
  %8434 = inttoptr i64 %8433 to { i64, i8* }*
  %8435 = call i64 @nyx_array_get({ i64, i8* }* %8434, i64 0)
  %8436 = call i64 @nyx_array_get({ i64, i8* }* %8434, i64 1)
  %8437 = inttoptr i64 %8435 to %nyx_string*
  %8438 = inttoptr i64 %8436 to { i64, i8* }*
  %8439 = alloca %ASTNode
  %8440 = getelementptr inbounds %ASTNode, %ASTNode* %8439, i32 0, i32 0
  store %nyx_string* %8437, %nyx_string** %8440
  %8441 = getelementptr inbounds %ASTNode, %ASTNode* %8439, i32 0, i32 1
  store { i64, i8* }* %8438, { i64, i8* }** %8441
  %8442 = load %ASTNode, %ASTNode* %8439
  %8443 = alloca %ASTNode
  store %ASTNode %8442, %ASTNode* %8443
  %8444 = getelementptr %ASTNode, %ASTNode* %8443, i32 0, i32 0
  %8445 = load %nyx_string*, %nyx_string** %8444
  %8446 = getelementptr [6 x i8], [6 x i8]* @.str949, i32 0, i32 0
  %8447 = call %nyx_string* @nyx_string_from_cstr(i8* %8446)
  %8448 = call i8* @nyx_string_to_cstr(%nyx_string* %8445)
  %8449 = call i8* @nyx_string_to_cstr(%nyx_string* %8447)
  %8450 = call i32 @strcmp(i8* %8448, i8* %8449)
  %8451 = icmp ne i32 %8450, 0
  br i1 %8451, label %then1812, label %else1813
then1812:
  store i1 1, i1* %8425
  br label %merge1814
else1813:
  br label %merge1814
merge1814:
  br label %merge1811
else1810:
  br label %merge1811
merge1811:
  %8452 = load i1, i1* %8425
  %8453 = xor i1 %8452, true
  br i1 %8453, label %then1815, label %else1816
then1815:
  %8454 = load { i64, i8* }*, { i64, i8* }** %8344
  %8455 = load %nyx_string*, %nyx_string** %8416
  %8456 = ptrtoint %nyx_string* %8455 to i64
  call void @nyx_array_push({ i64, i8* }* %8454, i64 %8456)
  br label %merge1817
else1816:
  br label %merge1817
merge1817:
  br label %merge1805
else1804:
  br label %merge1805
merge1805:
  %8457 = getelementptr %ASTNode, %ASTNode* %8364, i32 0, i32 0
  %8458 = load %nyx_string*, %nyx_string** %8457
  %8459 = getelementptr [11 x i8], [11 x i8]* @.str950, i32 0, i32 0
  %8460 = call %nyx_string* @nyx_string_from_cstr(i8* %8459)
  %8461 = call i8* @nyx_string_to_cstr(%nyx_string* %8458)
  %8462 = call i8* @nyx_string_to_cstr(%nyx_string* %8460)
  %8463 = call i32 @strcmp(i8* %8461, i8* %8462)
  %8464 = icmp eq i32 %8463, 0
  br i1 %8464, label %then1818, label %else1819
then1818:
  %8465 = alloca i1
  store i1 0, i1* %8465
  %8466 = getelementptr %ASTNode, %ASTNode* %8361, i32 0, i32 1
  %8467 = load { i64, i8* }*, { i64, i8* }** %8466
  %8468 = alloca { i64, i8* }*
  store { i64, i8* }* %8467, { i64, i8* }** %8468
  %8469 = load { i64, i8* }*, { i64, i8* }** %8468
  %8470 = call i64 @nyx_array_length({ i64, i8* }* %8469)
  %8471 = icmp sgt i64 %8470, 2
  br i1 %8471, label %then1821, label %else1822
then1821:
  %8472 = load { i64, i8* }*, { i64, i8* }** %8468
  %8473 = call i64 @nyx_array_get({ i64, i8* }* %8472, i64 2)
  %8474 = inttoptr i64 %8473 to { i64, i8* }*
  %8475 = call i64 @nyx_array_get({ i64, i8* }* %8474, i64 0)
  %8476 = call i64 @nyx_array_get({ i64, i8* }* %8474, i64 1)
  %8477 = inttoptr i64 %8475 to %nyx_string*
  %8478 = inttoptr i64 %8476 to { i64, i8* }*
  %8479 = alloca %ASTNode
  %8480 = getelementptr inbounds %ASTNode, %ASTNode* %8479, i32 0, i32 0
  store %nyx_string* %8477, %nyx_string** %8480
  %8481 = getelementptr inbounds %ASTNode, %ASTNode* %8479, i32 0, i32 1
  store { i64, i8* }* %8478, { i64, i8* }** %8481
  %8482 = load %ASTNode, %ASTNode* %8479
  %8483 = alloca %ASTNode
  store %ASTNode %8482, %ASTNode* %8483
  %8484 = getelementptr %ASTNode, %ASTNode* %8483, i32 0, i32 0
  %8485 = load %nyx_string*, %nyx_string** %8484
  %8486 = getelementptr [6 x i8], [6 x i8]* @.str951, i32 0, i32 0
  %8487 = call %nyx_string* @nyx_string_from_cstr(i8* %8486)
  %8488 = call i8* @nyx_string_to_cstr(%nyx_string* %8485)
  %8489 = call i8* @nyx_string_to_cstr(%nyx_string* %8487)
  %8490 = call i32 @strcmp(i8* %8488, i8* %8489)
  %8491 = icmp ne i32 %8490, 0
  br i1 %8491, label %then1824, label %else1825
then1824:
  store i1 1, i1* %8465
  br label %merge1826
else1825:
  br label %merge1826
merge1826:
  br label %merge1823
else1822:
  br label %merge1823
merge1823:
  %8492 = load i1, i1* %8465
  %8493 = xor i1 %8492, true
  br i1 %8493, label %then1827, label %else1828
then1827:
  %8494 = getelementptr %ASTNode, %ASTNode* %8364, i32 0, i32 1
  %8495 = load { i64, i8* }*, { i64, i8* }** %8494
  %8496 = alloca { i64, i8* }*
  store { i64, i8* }* %8495, { i64, i8* }** %8496
  %8497 = alloca i64
  store i64 0, i64* %8497
  br label %while_cond1830
while_cond1830:
  %8498 = load i64, i64* %8497
  %8499 = load { i64, i8* }*, { i64, i8* }** %8496
  %8500 = call i64 @nyx_array_length({ i64, i8* }* %8499)
  %8501 = icmp slt i64 %8498, %8500
  br i1 %8501, label %while_body1831, label %while_end1832
while_body1831:
  %8502 = load { i64, i8* }*, { i64, i8* }** %8496
  %8503 = load i64, i64* %8497
  %8504 = call i64 @nyx_array_get({ i64, i8* }* %8502, i64 %8503)
  %8505 = inttoptr i64 %8504 to { i64, i8* }*
  %8506 = call i64 @nyx_array_get({ i64, i8* }* %8505, i64 0)
  %8507 = call i64 @nyx_array_get({ i64, i8* }* %8505, i64 1)
  %8508 = inttoptr i64 %8506 to %nyx_string*
  %8509 = inttoptr i64 %8507 to { i64, i8* }*
  %8510 = alloca %ASTNode
  %8511 = getelementptr inbounds %ASTNode, %ASTNode* %8510, i32 0, i32 0
  store %nyx_string* %8508, %nyx_string** %8511
  %8512 = getelementptr inbounds %ASTNode, %ASTNode* %8510, i32 0, i32 1
  store { i64, i8* }* %8509, { i64, i8* }** %8512
  %8513 = load %ASTNode, %ASTNode* %8510
  %8514 = alloca %ASTNode
  store %ASTNode %8513, %ASTNode* %8514
  %8515 = getelementptr %ASTNode, %ASTNode* %8514, i32 0, i32 0
  %8516 = load %nyx_string*, %nyx_string** %8515
  %8517 = getelementptr [14 x i8], [14 x i8]* @.str952, i32 0, i32 0
  %8518 = call %nyx_string* @nyx_string_from_cstr(i8* %8517)
  %8519 = call i8* @nyx_string_to_cstr(%nyx_string* %8516)
  %8520 = call i8* @nyx_string_to_cstr(%nyx_string* %8518)
  %8521 = call i32 @strcmp(i8* %8519, i8* %8520)
  %8522 = icmp eq i32 %8521, 0
  br i1 %8522, label %then1833, label %else1834
then1833:
  %8523 = load %ASTNode, %ASTNode* %8514
  %8524 = call %nyx_string* @get_string_at(%ASTNode %8523, i64 0)
  %8525 = alloca %nyx_string*
  store %nyx_string* %8524, %nyx_string** %8525
  %8526 = load %ASTNode, %ASTNode* %8514
  %8527 = call %nyx_string* @get_string_at(%ASTNode %8526, i64 1)
  %8528 = alloca %nyx_string*
  store %nyx_string* %8527, %nyx_string** %8528
  %8529 = load %nyx_string*, %nyx_string** %8342
  %8530 = getelementptr [1 x i8], [1 x i8]* @.str953, i32 0, i32 0
  %8531 = call %nyx_string* @nyx_string_from_cstr(i8* %8530)
  %8532 = call i8* @nyx_string_to_cstr(%nyx_string* %8529)
  %8533 = call i8* @nyx_string_to_cstr(%nyx_string* %8531)
  %8534 = call i32 @strcmp(i8* %8532, i8* %8533)
  %8535 = icmp eq i32 %8534, 0
  br i1 %8535, label %then1836, label %else1837
then1836:
  %8536 = load %nyx_string*, %nyx_string** %8525
  store %nyx_string* %8536, %nyx_string** %8342
  br label %merge1838
else1837:
  br label %merge1838
merge1838:
  %8537 = load { i64, i8* }*, { i64, i8* }** %8344
  %8538 = load %nyx_string*, %nyx_string** %8528
  %8539 = ptrtoint %nyx_string* %8538 to i64
  call void @nyx_array_push({ i64, i8* }* %8537, i64 %8539)
  br label %merge1835
else1834:
  br label %merge1835
merge1835:
  %8540 = load i64, i64* %8497
  %8541 = add i64 %8540, 1
  store i64 %8541, i64* %8497
  br label %while_cond1830
while_end1832:
  br label %merge1829
else1828:
  br label %merge1829
merge1829:
  br label %merge1820
else1819:
  br label %merge1820
merge1820:
  %8542 = load i64, i64* %8316
  %8543 = add i64 %8542, 1
  store i64 %8543, i64* %8316
  br label %while_cond1791
while_end1793:
  %8544 = load i1, i1* %8339
  br i1 %8544, label %then1839, label %else1840
then1839:
  ret i1 1
else1840:
  br label %merge1841
merge1841:
  %8545 = load %nyx_string*, %nyx_string** %8342
  %8546 = getelementptr [1 x i8], [1 x i8]* @.str954, i32 0, i32 0
  %8547 = call %nyx_string* @nyx_string_from_cstr(i8* %8546)
  %8548 = call i8* @nyx_string_to_cstr(%nyx_string* %8545)
  %8549 = call i8* @nyx_string_to_cstr(%nyx_string* %8547)
  %8550 = call i32 @strcmp(i8* %8548, i8* %8549)
  %8551 = icmp eq i32 %8550, 0
  br i1 %8551, label %then1842, label %else1843
then1842:
  ret i1 1
else1843:
  br label %merge1844
merge1844:
  %8552 = sub i64 0, 1
  %8553 = alloca i64
  store i64 %8552, i64* %8553
  store i64 0, i64* %8316
  br label %while_cond1845
while_cond1845:
  %8554 = load i64, i64* %8316
  %8555 = load i64, i64* @g_enum_reg_count
  %8556 = icmp slt i64 %8554, %8555
  br i1 %8556, label %while_body1846, label %while_end1847
while_body1846:
  %8557 = load { i64, i8* }*, { i64, i8* }** @g_enum_reg_names
  %8558 = load i64, i64* %8316
  %8559 = call i64 @nyx_array_get({ i64, i8* }* %8557, i64 %8558)
  %8560 = inttoptr i64 %8559 to %nyx_string*
  %8561 = alloca %nyx_string*
  store %nyx_string* %8560, %nyx_string** %8561
  %8562 = load %nyx_string*, %nyx_string** %8561
  %8563 = load %nyx_string*, %nyx_string** %8342
  %8564 = call i8* @nyx_string_to_cstr(%nyx_string* %8562)
  %8565 = call i8* @nyx_string_to_cstr(%nyx_string* %8563)
  %8566 = call i32 @strcmp(i8* %8564, i8* %8565)
  %8567 = icmp eq i32 %8566, 0
  br i1 %8567, label %then1848, label %else1849
then1848:
  %8568 = load i64, i64* %8316
  store i64 %8568, i64* %8553
  br label %merge1850
else1849:
  br label %merge1850
merge1850:
  %8569 = load i64, i64* %8316
  %8570 = add i64 %8569, 1
  store i64 %8570, i64* %8316
  br label %while_cond1845
while_end1847:
  %8571 = load i64, i64* %8553
  %8572 = sub i64 0, 1
  %8573 = icmp eq i64 %8571, %8572
  br i1 %8573, label %then1851, label %else1852
then1851:
  ret i1 1
else1852:
  br label %merge1853
merge1853:
  %8574 = load { i64, i8* }*, { i64, i8* }** @g_enum_reg_variants
  %8575 = load i64, i64* %8553
  %8576 = call i64 @nyx_array_get({ i64, i8* }* %8574, i64 %8575)
  %8577 = inttoptr i64 %8576 to { i64, i8* }*
  %8578 = alloca { i64, i8* }*
  store { i64, i8* }* %8577, { i64, i8* }** %8578
  %8579 = call { i64, i8* }* @nyx_array_new_ptr()
  %8580 = alloca { i64, i8* }*
  store { i64, i8* }* %8579, { i64, i8* }** %8580
  store i64 0, i64* %8316
  br label %while_cond1854
while_cond1854:
  %8581 = load i64, i64* %8316
  %8582 = load { i64, i8* }*, { i64, i8* }** %8578
  %8583 = call i64 @nyx_array_length({ i64, i8* }* %8582)
  %8584 = icmp slt i64 %8581, %8583
  br i1 %8584, label %while_body1855, label %while_end1856
while_body1855:
  %8585 = load { i64, i8* }*, { i64, i8* }** %8578
  %8586 = load i64, i64* %8316
  %8587 = call i64 @nyx_array_get({ i64, i8* }* %8585, i64 %8586)
  %8588 = inttoptr i64 %8587 to %nyx_string*
  %8589 = alloca %nyx_string*
  store %nyx_string* %8588, %nyx_string** %8589
  %8590 = alloca i1
  store i1 0, i1* %8590
  %8591 = alloca i64
  store i64 0, i64* %8591
  br label %while_cond1857
while_cond1857:
  %8592 = load i64, i64* %8591
  %8593 = load { i64, i8* }*, { i64, i8* }** %8344
  %8594 = call i64 @nyx_array_length({ i64, i8* }* %8593)
  %8595 = icmp slt i64 %8592, %8594
  br i1 %8595, label %while_body1858, label %while_end1859
while_body1858:
  %8596 = load { i64, i8* }*, { i64, i8* }** %8344
  %8597 = load i64, i64* %8591
  %8598 = call i64 @nyx_array_get({ i64, i8* }* %8596, i64 %8597)
  %8599 = inttoptr i64 %8598 to %nyx_string*
  %8600 = alloca %nyx_string*
  store %nyx_string* %8599, %nyx_string** %8600
  %8601 = load %nyx_string*, %nyx_string** %8600
  %8602 = load %nyx_string*, %nyx_string** %8589
  %8603 = call i8* @nyx_string_to_cstr(%nyx_string* %8601)
  %8604 = call i8* @nyx_string_to_cstr(%nyx_string* %8602)
  %8605 = call i32 @strcmp(i8* %8603, i8* %8604)
  %8606 = icmp eq i32 %8605, 0
  br i1 %8606, label %then1860, label %else1861
then1860:
  store i1 1, i1* %8590
  br label %merge1862
else1861:
  br label %merge1862
merge1862:
  %8607 = load i64, i64* %8591
  %8608 = add i64 %8607, 1
  store i64 %8608, i64* %8591
  br label %while_cond1857
while_end1859:
  %8609 = load i1, i1* %8590
  %8610 = xor i1 %8609, true
  br i1 %8610, label %then1863, label %else1864
then1863:
  %8611 = load { i64, i8* }*, { i64, i8* }** %8580
  %8612 = load %nyx_string*, %nyx_string** %8589
  %8613 = ptrtoint %nyx_string* %8612 to i64
  call void @nyx_array_push({ i64, i8* }* %8611, i64 %8613)
  br label %merge1865
else1864:
  br label %merge1865
merge1865:
  %8614 = load i64, i64* %8316
  %8615 = add i64 %8614, 1
  store i64 %8615, i64* %8316
  br label %while_cond1854
while_end1856:
  %8616 = load { i64, i8* }*, { i64, i8* }** %8580
  %8617 = call i64 @nyx_array_length({ i64, i8* }* %8616)
  %8618 = icmp sgt i64 %8617, 0
  br i1 %8618, label %then1866, label %else1867
then1866:
  %8619 = getelementptr [28 x i8], [28 x i8]* @.str955, i32 0, i32 0
  %8620 = call %nyx_string* @nyx_string_from_cstr(i8* %8619)
  %8621 = load %nyx_string*, %nyx_string** %8342
  %8622 = call %nyx_string* @nyx_string_concat(%nyx_string* %8620, %nyx_string* %8621)
  %8623 = getelementptr [4 x i8], [4 x i8]* @.str956, i32 0, i32 0
  %8624 = call %nyx_string* @nyx_string_from_cstr(i8* %8623)
  %8625 = call %nyx_string* @nyx_string_concat(%nyx_string* %8622, %nyx_string* %8624)
  %8626 = getelementptr [26 x i8], [26 x i8]* @.str957, i32 0, i32 0
  %8627 = call %nyx_string* @nyx_string_from_cstr(i8* %8626)
  %8628 = load %nyx_string*, %nyx_string** %8342
  %8629 = call %nyx_string* @nyx_string_concat(%nyx_string* %8627, %nyx_string* %8628)
  %8630 = getelementptr [4 x i8], [4 x i8]* @.str958, i32 0, i32 0
  %8631 = call %nyx_string* @nyx_string_from_cstr(i8* %8630)
  %8632 = call %nyx_string* @nyx_string_concat(%nyx_string* %8629, %nyx_string* %8631)
  %8633 = call %nyx_string* @msg(%nyx_string* %8625, %nyx_string* %8632)
  %8634 = alloca %nyx_string*
  store %nyx_string* %8633, %nyx_string** %8634
  %8635 = load { i64, i8* }*, { i64, i8* }** %8580
  %8636 = call i64 @nyx_array_length({ i64, i8* }* %8635)
  %8637 = icmp eq i64 %8636, 1
  br i1 %8637, label %then1869, label %else1870
then1869:
  %8638 = load %nyx_string*, %nyx_string** %8634
  %8639 = getelementptr [6 x i8], [6 x i8]* @.str959, i32 0, i32 0
  %8640 = call %nyx_string* @nyx_string_from_cstr(i8* %8639)
  %8641 = getelementptr [8 x i8], [8 x i8]* @.str960, i32 0, i32 0
  %8642 = call %nyx_string* @nyx_string_from_cstr(i8* %8641)
  %8643 = call %nyx_string* @msg(%nyx_string* %8640, %nyx_string* %8642)
  %8644 = call %nyx_string* @nyx_string_concat(%nyx_string* %8638, %nyx_string* %8643)
  store %nyx_string* %8644, %nyx_string** %8634
  br label %merge1871
else1870:
  %8645 = load %nyx_string*, %nyx_string** %8634
  %8646 = getelementptr [7 x i8], [7 x i8]* @.str961, i32 0, i32 0
  %8647 = call %nyx_string* @nyx_string_from_cstr(i8* %8646)
  %8648 = getelementptr [8 x i8], [8 x i8]* @.str962, i32 0, i32 0
  %8649 = call %nyx_string* @nyx_string_from_cstr(i8* %8648)
  %8650 = call %nyx_string* @msg(%nyx_string* %8647, %nyx_string* %8649)
  %8651 = call %nyx_string* @nyx_string_concat(%nyx_string* %8645, %nyx_string* %8650)
  store %nyx_string* %8651, %nyx_string** %8634
  br label %merge1871
merge1871:
  store i64 0, i64* %8316
  br label %while_cond1872
while_cond1872:
  %8652 = load i64, i64* %8316
  %8653 = load { i64, i8* }*, { i64, i8* }** %8580
  %8654 = call i64 @nyx_array_length({ i64, i8* }* %8653)
  %8655 = icmp slt i64 %8652, %8654
  br i1 %8655, label %while_body1873, label %while_end1874
while_body1873:
  %8656 = load { i64, i8* }*, { i64, i8* }** %8580
  %8657 = load i64, i64* %8316
  %8658 = call i64 @nyx_array_get({ i64, i8* }* %8656, i64 %8657)
  %8659 = inttoptr i64 %8658 to %nyx_string*
  %8660 = alloca %nyx_string*
  store %nyx_string* %8659, %nyx_string** %8660
  %8661 = load i64, i64* %8316
  %8662 = icmp sgt i64 %8661, 0
  br i1 %8662, label %then1875, label %else1876
then1875:
  %8663 = load %nyx_string*, %nyx_string** %8634
  %8664 = getelementptr [2 x i8], [2 x i8]* @.str963, i32 0, i32 0
  %8665 = call %nyx_string* @nyx_string_from_cstr(i8* %8664)
  %8666 = call %nyx_string* @nyx_string_concat(%nyx_string* %8663, %nyx_string* %8665)
  store %nyx_string* %8666, %nyx_string** %8634
  br label %merge1877
else1876:
  br label %merge1877
merge1877:
  %8667 = load %nyx_string*, %nyx_string** %8634
  %8668 = getelementptr [2 x i8], [2 x i8]* @.str964, i32 0, i32 0
  %8669 = call %nyx_string* @nyx_string_from_cstr(i8* %8668)
  %8670 = call %nyx_string* @nyx_string_concat(%nyx_string* %8667, %nyx_string* %8669)
  %8671 = load %nyx_string*, %nyx_string** %8342
  %8672 = call %nyx_string* @nyx_string_concat(%nyx_string* %8670, %nyx_string* %8671)
  %8673 = getelementptr [2 x i8], [2 x i8]* @.str965, i32 0, i32 0
  %8674 = call %nyx_string* @nyx_string_from_cstr(i8* %8673)
  %8675 = call %nyx_string* @nyx_string_concat(%nyx_string* %8672, %nyx_string* %8674)
  %8676 = load %nyx_string*, %nyx_string** %8660
  %8677 = call %nyx_string* @nyx_string_concat(%nyx_string* %8675, %nyx_string* %8676)
  store %nyx_string* %8677, %nyx_string** %8634
  %8678 = load i64, i64* %8316
  %8679 = add i64 %8678, 1
  store i64 %8679, i64* %8316
  br label %while_cond1872
while_end1874:
  %8680 = load %nyx_string*, %nyx_string** %8634
  %8681 = call i64 @sem_error(%nyx_string* %8680)
  ret i1 0
else1867:
  br label %merge1868
merge1868:
  ret i1 1
}

define internal i1 @validate_match_arm(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %8682 = load %ASTNode, %ASTNode* %node.ptr
  %8683 = call %ASTNode @get_node_at(%ASTNode %8682, i64 0)
  %8684 = alloca %ASTNode
  store %ASTNode %8683, %ASTNode* %8684
  %8685 = load %ASTNode, %ASTNode* %node.ptr
  %8686 = call %ASTNode @get_node_at(%ASTNode %8685, i64 1)
  %8687 = alloca %ASTNode
  store %ASTNode %8686, %ASTNode* %8687
  %8688 = call i64 @scope_push()
  %8689 = getelementptr %ASTNode, %ASTNode* %8684, i32 0, i32 0
  %8690 = load %nyx_string*, %nyx_string** %8689
  %8691 = getelementptr [14 x i8], [14 x i8]* @.str966, i32 0, i32 0
  %8692 = call %nyx_string* @nyx_string_from_cstr(i8* %8691)
  %8693 = call i8* @nyx_string_to_cstr(%nyx_string* %8690)
  %8694 = call i8* @nyx_string_to_cstr(%nyx_string* %8692)
  %8695 = call i32 @strcmp(i8* %8693, i8* %8694)
  %8696 = icmp eq i32 %8695, 0
  br i1 %8696, label %then1878, label %else1879
then1878:
  %8697 = load %ASTNode, %ASTNode* %8684
  %8698 = call { i64, i8* }* @get_array_at(%ASTNode %8697, i64 2)
  %8699 = alloca { i64, i8* }*
  store { i64, i8* }* %8698, { i64, i8* }** %8699
  %8700 = alloca i64
  store i64 0, i64* %8700
  br label %while_cond1881
while_cond1881:
  %8701 = load i64, i64* %8700
  %8702 = load { i64, i8* }*, { i64, i8* }** %8699
  %8703 = call i64 @nyx_array_length({ i64, i8* }* %8702)
  %8704 = icmp slt i64 %8701, %8703
  br i1 %8704, label %while_body1882, label %while_end1883
while_body1882:
  %8705 = load { i64, i8* }*, { i64, i8* }** %8699
  %8706 = load i64, i64* %8700
  %8707 = call i64 @nyx_array_get({ i64, i8* }* %8705, i64 %8706)
  %8708 = inttoptr i64 %8707 to %nyx_string*
  %8709 = alloca %nyx_string*
  store %nyx_string* %8708, %nyx_string** %8709
  %8710 = load %nyx_string*, %nyx_string** %8709
  %8711 = getelementptr [4 x i8], [4 x i8]* @.str967, i32 0, i32 0
  %8712 = call %nyx_string* @nyx_string_from_cstr(i8* %8711)
  %8713 = call i64 @scope_declare(%nyx_string* %8710, %nyx_string* %8712)
  %8714 = load i64, i64* %8700
  %8715 = add i64 %8714, 1
  store i64 %8715, i64* %8700
  br label %while_cond1881
while_end1883:
  br label %merge1880
else1879:
  br label %merge1880
merge1880:
  %8716 = getelementptr %ASTNode, %ASTNode* %8684, i32 0, i32 0
  %8717 = load %nyx_string*, %nyx_string** %8716
  %8718 = getelementptr [19 x i8], [19 x i8]* @.str968, i32 0, i32 0
  %8719 = call %nyx_string* @nyx_string_from_cstr(i8* %8718)
  %8720 = call i8* @nyx_string_to_cstr(%nyx_string* %8717)
  %8721 = call i8* @nyx_string_to_cstr(%nyx_string* %8719)
  %8722 = call i32 @strcmp(i8* %8720, i8* %8721)
  %8723 = icmp eq i32 %8722, 0
  br i1 %8723, label %then1884, label %else1885
then1884:
  %8724 = load %ASTNode, %ASTNode* %8684
  %8725 = call %nyx_string* @get_string_at(%ASTNode %8724, i64 0)
  %8726 = alloca %nyx_string*
  store %nyx_string* %8725, %nyx_string** %8726
  %8727 = load %nyx_string*, %nyx_string** %8726
  %8728 = getelementptr [4 x i8], [4 x i8]* @.str969, i32 0, i32 0
  %8729 = call %nyx_string* @nyx_string_from_cstr(i8* %8728)
  %8730 = call i64 @scope_declare(%nyx_string* %8727, %nyx_string* %8729)
  br label %merge1886
else1885:
  br label %merge1886
merge1886:
  %8731 = getelementptr %ASTNode, %ASTNode* %8684, i32 0, i32 0
  %8732 = load %nyx_string*, %nyx_string** %8731
  %8733 = getelementptr [15 x i8], [15 x i8]* @.str970, i32 0, i32 0
  %8734 = call %nyx_string* @nyx_string_from_cstr(i8* %8733)
  %8735 = call i8* @nyx_string_to_cstr(%nyx_string* %8732)
  %8736 = call i8* @nyx_string_to_cstr(%nyx_string* %8734)
  %8737 = call i32 @strcmp(i8* %8735, i8* %8736)
  %8738 = icmp eq i32 %8737, 0
  br i1 %8738, label %then1887, label %else1888
then1887:
  %8739 = load %ASTNode, %ASTNode* %8684
  %8740 = call { i64, i8* }* @get_array_at(%ASTNode %8739, i64 1)
  %8741 = alloca { i64, i8* }*
  store { i64, i8* }* %8740, { i64, i8* }** %8741
  %8742 = alloca i64
  store i64 0, i64* %8742
  br label %while_cond1890
while_cond1890:
  %8743 = load i64, i64* %8742
  %8744 = load { i64, i8* }*, { i64, i8* }** %8741
  %8745 = call i64 @nyx_array_length({ i64, i8* }* %8744)
  %8746 = icmp slt i64 %8743, %8745
  br i1 %8746, label %while_body1891, label %while_end1892
while_body1891:
  %8747 = load { i64, i8* }*, { i64, i8* }** %8741
  %8748 = load i64, i64* %8742
  %8749 = call i64 @nyx_array_get({ i64, i8* }* %8747, i64 %8748)
  %8750 = inttoptr i64 %8749 to { i64, i8* }*
  %8751 = alloca { i64, i8* }*
  store { i64, i8* }* %8750, { i64, i8* }** %8751
  %8752 = load { i64, i8* }*, { i64, i8* }** %8751
  %8753 = call i64 @nyx_array_get({ i64, i8* }* %8752, i64 1)
  %8754 = inttoptr i64 %8753 to %nyx_string*
  %8755 = alloca %nyx_string*
  store %nyx_string* %8754, %nyx_string** %8755
  %8756 = load %nyx_string*, %nyx_string** %8755
  %8757 = getelementptr [4 x i8], [4 x i8]* @.str971, i32 0, i32 0
  %8758 = call %nyx_string* @nyx_string_from_cstr(i8* %8757)
  %8759 = call i64 @scope_declare(%nyx_string* %8756, %nyx_string* %8758)
  %8760 = load i64, i64* %8742
  %8761 = add i64 %8760, 1
  store i64 %8761, i64* %8742
  br label %while_cond1890
while_end1892:
  br label %merge1889
else1888:
  br label %merge1889
merge1889:
  %8762 = getelementptr %ASTNode, %ASTNode* %8684, i32 0, i32 0
  %8763 = load %nyx_string*, %nyx_string** %8762
  %8764 = getelementptr [21 x i8], [21 x i8]* @.str972, i32 0, i32 0
  %8765 = call %nyx_string* @nyx_string_from_cstr(i8* %8764)
  %8766 = call i8* @nyx_string_to_cstr(%nyx_string* %8763)
  %8767 = call i8* @nyx_string_to_cstr(%nyx_string* %8765)
  %8768 = call i32 @strcmp(i8* %8766, i8* %8767)
  %8769 = icmp eq i32 %8768, 0
  br i1 %8769, label %then1893, label %else1894
then1893:
  %8770 = load %ASTNode, %ASTNode* %8684
  %8771 = call { i64, i8* }* @get_array_at(%ASTNode %8770, i64 2)
  %8772 = alloca { i64, i8* }*
  store { i64, i8* }* %8771, { i64, i8* }** %8772
  %8773 = alloca i64
  store i64 0, i64* %8773
  br label %while_cond1896
while_cond1896:
  %8774 = load i64, i64* %8773
  %8775 = load { i64, i8* }*, { i64, i8* }** %8772
  %8776 = call i64 @nyx_array_length({ i64, i8* }* %8775)
  %8777 = icmp slt i64 %8774, %8776
  br i1 %8777, label %while_body1897, label %while_end1898
while_body1897:
  %8778 = load { i64, i8* }*, { i64, i8* }** %8772
  %8779 = load i64, i64* %8773
  %8780 = call i64 @nyx_array_get({ i64, i8* }* %8778, i64 %8779)
  %8781 = inttoptr i64 %8780 to { i64, i8* }*
  %8782 = call i64 @nyx_array_get({ i64, i8* }* %8781, i64 0)
  %8783 = call i64 @nyx_array_get({ i64, i8* }* %8781, i64 1)
  %8784 = inttoptr i64 %8782 to %nyx_string*
  %8785 = inttoptr i64 %8783 to { i64, i8* }*
  %8786 = alloca %ASTNode
  %8787 = getelementptr inbounds %ASTNode, %ASTNode* %8786, i32 0, i32 0
  store %nyx_string* %8784, %nyx_string** %8787
  %8788 = getelementptr inbounds %ASTNode, %ASTNode* %8786, i32 0, i32 1
  store { i64, i8* }* %8785, { i64, i8* }** %8788
  %8789 = load %ASTNode, %ASTNode* %8786
  %8790 = alloca %ASTNode
  store %ASTNode %8789, %ASTNode* %8790
  %8791 = getelementptr %ASTNode, %ASTNode* %8790, i32 0, i32 0
  %8792 = load %nyx_string*, %nyx_string** %8791
  %8793 = getelementptr [19 x i8], [19 x i8]* @.str973, i32 0, i32 0
  %8794 = call %nyx_string* @nyx_string_from_cstr(i8* %8793)
  %8795 = call i8* @nyx_string_to_cstr(%nyx_string* %8792)
  %8796 = call i8* @nyx_string_to_cstr(%nyx_string* %8794)
  %8797 = call i32 @strcmp(i8* %8795, i8* %8796)
  %8798 = icmp eq i32 %8797, 0
  br i1 %8798, label %then1899, label %else1900
then1899:
  %8799 = load %ASTNode, %ASTNode* %8790
  %8800 = call %nyx_string* @get_string_at(%ASTNode %8799, i64 0)
  %8801 = alloca %nyx_string*
  store %nyx_string* %8800, %nyx_string** %8801
  %8802 = load %nyx_string*, %nyx_string** %8801
  %8803 = getelementptr [4 x i8], [4 x i8]* @.str974, i32 0, i32 0
  %8804 = call %nyx_string* @nyx_string_from_cstr(i8* %8803)
  %8805 = call i64 @scope_declare(%nyx_string* %8802, %nyx_string* %8804)
  br label %merge1901
else1900:
  br label %merge1901
merge1901:
  %8806 = getelementptr %ASTNode, %ASTNode* %8790, i32 0, i32 0
  %8807 = load %nyx_string*, %nyx_string** %8806
  %8808 = getelementptr [14 x i8], [14 x i8]* @.str975, i32 0, i32 0
  %8809 = call %nyx_string* @nyx_string_from_cstr(i8* %8808)
  %8810 = call i8* @nyx_string_to_cstr(%nyx_string* %8807)
  %8811 = call i8* @nyx_string_to_cstr(%nyx_string* %8809)
  %8812 = call i32 @strcmp(i8* %8810, i8* %8811)
  %8813 = icmp eq i32 %8812, 0
  br i1 %8813, label %then1902, label %else1903
then1902:
  %8814 = load %ASTNode, %ASTNode* %8790
  %8815 = call { i64, i8* }* @get_array_at(%ASTNode %8814, i64 2)
  %8816 = alloca { i64, i8* }*
  store { i64, i8* }* %8815, { i64, i8* }** %8816
  %8817 = alloca i64
  store i64 0, i64* %8817
  br label %while_cond1905
while_cond1905:
  %8818 = load i64, i64* %8817
  %8819 = load { i64, i8* }*, { i64, i8* }** %8816
  %8820 = call i64 @nyx_array_length({ i64, i8* }* %8819)
  %8821 = icmp slt i64 %8818, %8820
  br i1 %8821, label %while_body1906, label %while_end1907
while_body1906:
  %8822 = load { i64, i8* }*, { i64, i8* }** %8816
  %8823 = load i64, i64* %8817
  %8824 = call i64 @nyx_array_get({ i64, i8* }* %8822, i64 %8823)
  %8825 = inttoptr i64 %8824 to %nyx_string*
  %8826 = alloca %nyx_string*
  store %nyx_string* %8825, %nyx_string** %8826
  %8827 = load %nyx_string*, %nyx_string** %8826
  %8828 = getelementptr [4 x i8], [4 x i8]* @.str976, i32 0, i32 0
  %8829 = call %nyx_string* @nyx_string_from_cstr(i8* %8828)
  %8830 = call i64 @scope_declare(%nyx_string* %8827, %nyx_string* %8829)
  %8831 = load i64, i64* %8817
  %8832 = add i64 %8831, 1
  store i64 %8832, i64* %8817
  br label %while_cond1905
while_end1907:
  br label %merge1904
else1903:
  br label %merge1904
merge1904:
  %8833 = load i64, i64* %8773
  %8834 = add i64 %8833, 1
  store i64 %8834, i64* %8773
  br label %while_cond1896
while_end1898:
  br label %merge1895
else1894:
  br label %merge1895
merge1895:
  %8835 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %8836 = load { i64, i8* }*, { i64, i8* }** %8835
  %8837 = alloca { i64, i8* }*
  store { i64, i8* }* %8836, { i64, i8* }** %8837
  %8838 = load { i64, i8* }*, { i64, i8* }** %8837
  %8839 = call i64 @nyx_array_length({ i64, i8* }* %8838)
  %8840 = icmp sgt i64 %8839, 2
  br i1 %8840, label %then1908, label %else1909
then1908:
  %8841 = load { i64, i8* }*, { i64, i8* }** %8837
  %8842 = call i64 @nyx_array_get({ i64, i8* }* %8841, i64 2)
  %8843 = inttoptr i64 %8842 to { i64, i8* }*
  %8844 = call i64 @nyx_array_get({ i64, i8* }* %8843, i64 0)
  %8845 = call i64 @nyx_array_get({ i64, i8* }* %8843, i64 1)
  %8846 = inttoptr i64 %8844 to %nyx_string*
  %8847 = inttoptr i64 %8845 to { i64, i8* }*
  %8848 = alloca %ASTNode
  %8849 = getelementptr inbounds %ASTNode, %ASTNode* %8848, i32 0, i32 0
  store %nyx_string* %8846, %nyx_string** %8849
  %8850 = getelementptr inbounds %ASTNode, %ASTNode* %8848, i32 0, i32 1
  store { i64, i8* }* %8847, { i64, i8* }** %8850
  %8851 = load %ASTNode, %ASTNode* %8848
  %8852 = alloca %ASTNode
  store %ASTNode %8851, %ASTNode* %8852
  %8853 = getelementptr %ASTNode, %ASTNode* %8852, i32 0, i32 0
  %8854 = load %nyx_string*, %nyx_string** %8853
  %8855 = getelementptr [6 x i8], [6 x i8]* @.str977, i32 0, i32 0
  %8856 = call %nyx_string* @nyx_string_from_cstr(i8* %8855)
  %8857 = call i8* @nyx_string_to_cstr(%nyx_string* %8854)
  %8858 = call i8* @nyx_string_to_cstr(%nyx_string* %8856)
  %8859 = call i32 @strcmp(i8* %8857, i8* %8858)
  %8860 = icmp ne i32 %8859, 0
  br i1 %8860, label %then1911, label %else1912
then1911:
  %8861 = load %ASTNode, %ASTNode* %8852
  %8862 = call i1 @validate_node(%ASTNode %8861)
  %8863 = xor i1 %8862, true
  br i1 %8863, label %then1914, label %else1915
then1914:
  %8864 = call i64 @scope_pop()
  ret i1 0
else1915:
  br label %merge1916
merge1916:
  br label %merge1913
else1912:
  br label %merge1913
merge1913:
  br label %merge1910
else1909:
  br label %merge1910
merge1910:
  %8865 = load %ASTNode, %ASTNode* %8687
  %8866 = call i1 @validate_node(%ASTNode %8865)
  %8867 = alloca i1
  store i1 %8866, i1* %8867
  %8868 = call i64 @scope_pop()
  %8869 = load i1, i1* %8867
  ret i1 %8869
}

define internal i1 @validate_impl(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %8870 = load %ASTNode, %ASTNode* %node.ptr
  %8871 = call { i64, i8* }* @get_array_at(%ASTNode %8870, i64 1)
  %8872 = alloca { i64, i8* }*
  store { i64, i8* }* %8871, { i64, i8* }** %8872
  %8873 = alloca i64
  store i64 0, i64* %8873
  br label %while_cond1917
while_cond1917:
  %8874 = load i64, i64* %8873
  %8875 = load { i64, i8* }*, { i64, i8* }** %8872
  %8876 = call i64 @nyx_array_length({ i64, i8* }* %8875)
  %8877 = icmp slt i64 %8874, %8876
  br i1 %8877, label %while_body1918, label %while_end1919
while_body1918:
  %8878 = load { i64, i8* }*, { i64, i8* }** %8872
  %8879 = load i64, i64* %8873
  %8880 = call i64 @nyx_array_get({ i64, i8* }* %8878, i64 %8879)
  %8881 = inttoptr i64 %8880 to { i64, i8* }*
  %8882 = call i64 @nyx_array_get({ i64, i8* }* %8881, i64 0)
  %8883 = call i64 @nyx_array_get({ i64, i8* }* %8881, i64 1)
  %8884 = inttoptr i64 %8882 to %nyx_string*
  %8885 = inttoptr i64 %8883 to { i64, i8* }*
  %8886 = alloca %ASTNode
  %8887 = getelementptr inbounds %ASTNode, %ASTNode* %8886, i32 0, i32 0
  store %nyx_string* %8884, %nyx_string** %8887
  %8888 = getelementptr inbounds %ASTNode, %ASTNode* %8886, i32 0, i32 1
  store { i64, i8* }* %8885, { i64, i8* }** %8888
  %8889 = load %ASTNode, %ASTNode* %8886
  %8890 = alloca %ASTNode
  store %ASTNode %8889, %ASTNode* %8890
  %8891 = load %ASTNode, %ASTNode* %8890
  %8892 = call i1 @validate_node(%ASTNode %8891)
  %8893 = xor i1 %8892, true
  br i1 %8893, label %then1920, label %else1921
then1920:
  ret i1 0
else1921:
  br label %merge1922
merge1922:
  %8894 = load i64, i64* %8873
  %8895 = add i64 %8894, 1
  store i64 %8895, i64* %8873
  br label %while_cond1917
while_end1919:
  ret i1 1
}

define internal i1 @validate_impl_trait(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %8896 = load %ASTNode, %ASTNode* %node.ptr
  %8897 = call { i64, i8* }* @get_array_at(%ASTNode %8896, i64 2)
  %8898 = alloca { i64, i8* }*
  store { i64, i8* }* %8897, { i64, i8* }** %8898
  %8899 = alloca i64
  store i64 0, i64* %8899
  br label %while_cond1923
while_cond1923:
  %8900 = load i64, i64* %8899
  %8901 = load { i64, i8* }*, { i64, i8* }** %8898
  %8902 = call i64 @nyx_array_length({ i64, i8* }* %8901)
  %8903 = icmp slt i64 %8900, %8902
  br i1 %8903, label %while_body1924, label %while_end1925
while_body1924:
  %8904 = load { i64, i8* }*, { i64, i8* }** %8898
  %8905 = load i64, i64* %8899
  %8906 = call i64 @nyx_array_get({ i64, i8* }* %8904, i64 %8905)
  %8907 = inttoptr i64 %8906 to { i64, i8* }*
  %8908 = call i64 @nyx_array_get({ i64, i8* }* %8907, i64 0)
  %8909 = call i64 @nyx_array_get({ i64, i8* }* %8907, i64 1)
  %8910 = inttoptr i64 %8908 to %nyx_string*
  %8911 = inttoptr i64 %8909 to { i64, i8* }*
  %8912 = alloca %ASTNode
  %8913 = getelementptr inbounds %ASTNode, %ASTNode* %8912, i32 0, i32 0
  store %nyx_string* %8910, %nyx_string** %8913
  %8914 = getelementptr inbounds %ASTNode, %ASTNode* %8912, i32 0, i32 1
  store { i64, i8* }* %8911, { i64, i8* }** %8914
  %8915 = load %ASTNode, %ASTNode* %8912
  %8916 = alloca %ASTNode
  store %ASTNode %8915, %ASTNode* %8916
  %8917 = load %ASTNode, %ASTNode* %8916
  %8918 = call i1 @validate_node(%ASTNode %8917)
  %8919 = xor i1 %8918, true
  br i1 %8919, label %then1926, label %else1927
then1926:
  ret i1 0
else1927:
  br label %merge1928
merge1928:
  %8920 = load i64, i64* %8899
  %8921 = add i64 %8920, 1
  store i64 %8921, i64* %8899
  br label %while_cond1923
while_end1925:
  ret i1 1
}

define internal i1 @validate_export(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %8922 = load %ASTNode, %ASTNode* %node.ptr
  %8923 = call %ASTNode @get_node_at(%ASTNode %8922, i64 0)
  %8924 = alloca %ASTNode
  store %ASTNode %8923, %ASTNode* %8924
  %8925 = load %ASTNode, %ASTNode* %8924
  %8926 = call i1 @validate_node(%ASTNode %8925)
  ret i1 %8926
}

define internal i1 @validate_range(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %8927 = load %ASTNode, %ASTNode* %node.ptr
  %8928 = call %ASTNode @get_node_at(%ASTNode %8927, i64 0)
  %8929 = alloca %ASTNode
  store %ASTNode %8928, %ASTNode* %8929
  %8930 = load %ASTNode, %ASTNode* %node.ptr
  %8931 = call %ASTNode @get_node_at(%ASTNode %8930, i64 1)
  %8932 = alloca %ASTNode
  store %ASTNode %8931, %ASTNode* %8932
  %8933 = load %ASTNode, %ASTNode* %8929
  %8934 = call i1 @validate_node(%ASTNode %8933)
  %8935 = xor i1 %8934, true
  br i1 %8935, label %then1929, label %else1930
then1929:
  ret i1 0
else1930:
  br label %merge1931
merge1931:
  %8936 = load %ASTNode, %ASTNode* %8932
  %8937 = call i1 @validate_node(%ASTNode %8936)
  ret i1 %8937
}

define internal i1 @validate_node(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %8938 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 0
  %8939 = load %nyx_string*, %nyx_string** %8938
  %8940 = alloca %nyx_string*
  store %nyx_string* %8939, %nyx_string** %8940
  %8941 = load %nyx_string*, %nyx_string** %8940
  %8942 = getelementptr [7 x i8], [7 x i8]* @.str978, i32 0, i32 0
  %8943 = call %nyx_string* @nyx_string_from_cstr(i8* %8942)
  %8944 = call i8* @nyx_string_to_cstr(%nyx_string* %8941)
  %8945 = call i8* @nyx_string_to_cstr(%nyx_string* %8943)
  %8946 = call i32 @strcmp(i8* %8944, i8* %8945)
  %8947 = icmp eq i32 %8946, 0
  br i1 %8947, label %then1932, label %else1933
then1932:
  ret i1 1
else1933:
  br label %merge1934
merge1934:
  %8948 = load %nyx_string*, %nyx_string** %8940
  %8949 = getelementptr [10 x i8], [10 x i8]* @.str979, i32 0, i32 0
  %8950 = call %nyx_string* @nyx_string_from_cstr(i8* %8949)
  %8951 = call i8* @nyx_string_to_cstr(%nyx_string* %8948)
  %8952 = call i8* @nyx_string_to_cstr(%nyx_string* %8950)
  %8953 = call i32 @strcmp(i8* %8951, i8* %8952)
  %8954 = icmp eq i32 %8953, 0
  br i1 %8954, label %then1935, label %else1936
then1935:
  ret i1 1
else1936:
  br label %merge1937
merge1937:
  %8955 = load %nyx_string*, %nyx_string** %8940
  %8956 = getelementptr [7 x i8], [7 x i8]* @.str980, i32 0, i32 0
  %8957 = call %nyx_string* @nyx_string_from_cstr(i8* %8956)
  %8958 = call i8* @nyx_string_to_cstr(%nyx_string* %8955)
  %8959 = call i8* @nyx_string_to_cstr(%nyx_string* %8957)
  %8960 = call i32 @strcmp(i8* %8958, i8* %8959)
  %8961 = icmp eq i32 %8960, 0
  br i1 %8961, label %then1938, label %else1939
then1938:
  ret i1 1
else1939:
  br label %merge1940
merge1940:
  %8962 = load %nyx_string*, %nyx_string** %8940
  %8963 = getelementptr [5 x i8], [5 x i8]* @.str981, i32 0, i32 0
  %8964 = call %nyx_string* @nyx_string_from_cstr(i8* %8963)
  %8965 = call i8* @nyx_string_to_cstr(%nyx_string* %8962)
  %8966 = call i8* @nyx_string_to_cstr(%nyx_string* %8964)
  %8967 = call i32 @strcmp(i8* %8965, i8* %8966)
  %8968 = icmp eq i32 %8967, 0
  br i1 %8968, label %then1941, label %else1942
then1941:
  ret i1 1
else1942:
  br label %merge1943
merge1943:
  %8969 = load %nyx_string*, %nyx_string** %8940
  %8970 = getelementptr [5 x i8], [5 x i8]* @.str982, i32 0, i32 0
  %8971 = call %nyx_string* @nyx_string_from_cstr(i8* %8970)
  %8972 = call i8* @nyx_string_to_cstr(%nyx_string* %8969)
  %8973 = call i8* @nyx_string_to_cstr(%nyx_string* %8971)
  %8974 = call i32 @strcmp(i8* %8972, i8* %8973)
  %8975 = icmp eq i32 %8974, 0
  br i1 %8975, label %then1944, label %else1945
then1944:
  ret i1 1
else1945:
  br label %merge1946
merge1946:
  %8976 = load %nyx_string*, %nyx_string** %8940
  %8977 = getelementptr [11 x i8], [11 x i8]* @.str983, i32 0, i32 0
  %8978 = call %nyx_string* @nyx_string_from_cstr(i8* %8977)
  %8979 = call i8* @nyx_string_to_cstr(%nyx_string* %8976)
  %8980 = call i8* @nyx_string_to_cstr(%nyx_string* %8978)
  %8981 = call i32 @strcmp(i8* %8979, i8* %8980)
  %8982 = icmp eq i32 %8981, 0
  br i1 %8982, label %then1947, label %else1948
then1947:
  %8983 = load %ASTNode, %ASTNode* %node.ptr
  %8984 = call i1 @validate_identifier(%ASTNode %8983)
  ret i1 %8984
else1948:
  br label %merge1949
merge1949:
  %8985 = load %nyx_string*, %nyx_string** %8940
  %8986 = getelementptr [6 x i8], [6 x i8]* @.str984, i32 0, i32 0
  %8987 = call %nyx_string* @nyx_string_from_cstr(i8* %8986)
  %8988 = call i8* @nyx_string_to_cstr(%nyx_string* %8985)
  %8989 = call i8* @nyx_string_to_cstr(%nyx_string* %8987)
  %8990 = call i32 @strcmp(i8* %8988, i8* %8989)
  %8991 = icmp eq i32 %8990, 0
  br i1 %8991, label %then1950, label %else1951
then1950:
  ret i1 1
else1951:
  br label %merge1952
merge1952:
  %8992 = load %nyx_string*, %nyx_string** %8940
  %8993 = getelementptr [6 x i8], [6 x i8]* @.str985, i32 0, i32 0
  %8994 = call %nyx_string* @nyx_string_from_cstr(i8* %8993)
  %8995 = call i8* @nyx_string_to_cstr(%nyx_string* %8992)
  %8996 = call i8* @nyx_string_to_cstr(%nyx_string* %8994)
  %8997 = call i32 @strcmp(i8* %8995, i8* %8996)
  %8998 = icmp eq i32 %8997, 0
  br i1 %8998, label %then1953, label %else1954
then1953:
  ret i1 1
else1954:
  br label %merge1955
merge1955:
  %8999 = load %nyx_string*, %nyx_string** %8940
  %9000 = getelementptr [9 x i8], [9 x i8]* @.str986, i32 0, i32 0
  %9001 = call %nyx_string* @nyx_string_from_cstr(i8* %9000)
  %9002 = call i8* @nyx_string_to_cstr(%nyx_string* %8999)
  %9003 = call i8* @nyx_string_to_cstr(%nyx_string* %9001)
  %9004 = call i32 @strcmp(i8* %9002, i8* %9003)
  %9005 = icmp eq i32 %9004, 0
  br i1 %9005, label %then1956, label %else1957
then1956:
  ret i1 1
else1957:
  br label %merge1958
merge1958:
  %9006 = load %nyx_string*, %nyx_string** %8940
  %9007 = getelementptr [6 x i8], [6 x i8]* @.str987, i32 0, i32 0
  %9008 = call %nyx_string* @nyx_string_from_cstr(i8* %9007)
  %9009 = call i8* @nyx_string_to_cstr(%nyx_string* %9006)
  %9010 = call i8* @nyx_string_to_cstr(%nyx_string* %9008)
  %9011 = call i32 @strcmp(i8* %9009, i8* %9010)
  %9012 = icmp eq i32 %9011, 0
  br i1 %9012, label %then1959, label %else1960
then1959:
  %9013 = load %ASTNode, %ASTNode* %node.ptr
  %9014 = call i1 @validate_block(%ASTNode %9013)
  ret i1 %9014
else1960:
  br label %merge1961
merge1961:
  %9015 = load %nyx_string*, %nyx_string** %8940
  %9016 = getelementptr [3 x i8], [3 x i8]* @.str988, i32 0, i32 0
  %9017 = call %nyx_string* @nyx_string_from_cstr(i8* %9016)
  %9018 = call i8* @nyx_string_to_cstr(%nyx_string* %9015)
  %9019 = call i8* @nyx_string_to_cstr(%nyx_string* %9017)
  %9020 = call i32 @strcmp(i8* %9018, i8* %9019)
  %9021 = icmp eq i32 %9020, 0
  br i1 %9021, label %then1962, label %else1963
then1962:
  %9022 = load %ASTNode, %ASTNode* %node.ptr
  %9023 = call i1 @validate_if(%ASTNode %9022)
  ret i1 %9023
else1963:
  br label %merge1964
merge1964:
  %9024 = load %nyx_string*, %nyx_string** %8940
  %9025 = getelementptr [6 x i8], [6 x i8]* @.str989, i32 0, i32 0
  %9026 = call %nyx_string* @nyx_string_from_cstr(i8* %9025)
  %9027 = call i8* @nyx_string_to_cstr(%nyx_string* %9024)
  %9028 = call i8* @nyx_string_to_cstr(%nyx_string* %9026)
  %9029 = call i32 @strcmp(i8* %9027, i8* %9028)
  %9030 = icmp eq i32 %9029, 0
  br i1 %9030, label %then1965, label %else1966
then1965:
  %9031 = load %ASTNode, %ASTNode* %node.ptr
  %9032 = call i1 @validate_while(%ASTNode %9031)
  ret i1 %9032
else1966:
  br label %merge1967
merge1967:
  %9033 = load %nyx_string*, %nyx_string** %8940
  %9034 = getelementptr [4 x i8], [4 x i8]* @.str990, i32 0, i32 0
  %9035 = call %nyx_string* @nyx_string_from_cstr(i8* %9034)
  %9036 = call i8* @nyx_string_to_cstr(%nyx_string* %9033)
  %9037 = call i8* @nyx_string_to_cstr(%nyx_string* %9035)
  %9038 = call i32 @strcmp(i8* %9036, i8* %9037)
  %9039 = icmp eq i32 %9038, 0
  br i1 %9039, label %then1968, label %else1969
then1968:
  %9040 = load %ASTNode, %ASTNode* %node.ptr
  %9041 = call i1 @validate_for(%ASTNode %9040)
  ret i1 %9041
else1969:
  br label %merge1970
merge1970:
  %9042 = load %nyx_string*, %nyx_string** %8940
  %9043 = getelementptr [7 x i8], [7 x i8]* @.str991, i32 0, i32 0
  %9044 = call %nyx_string* @nyx_string_from_cstr(i8* %9043)
  %9045 = call i8* @nyx_string_to_cstr(%nyx_string* %9042)
  %9046 = call i8* @nyx_string_to_cstr(%nyx_string* %9044)
  %9047 = call i32 @strcmp(i8* %9045, i8* %9046)
  %9048 = icmp eq i32 %9047, 0
  br i1 %9048, label %then1971, label %else1972
then1971:
  %9049 = load %ASTNode, %ASTNode* %node.ptr
  %9050 = call i1 @validate_return(%ASTNode %9049)
  ret i1 %9050
else1972:
  br label %merge1973
merge1973:
  %9051 = load %nyx_string*, %nyx_string** %8940
  %9052 = getelementptr [6 x i8], [6 x i8]* @.str992, i32 0, i32 0
  %9053 = call %nyx_string* @nyx_string_from_cstr(i8* %9052)
  %9054 = call i8* @nyx_string_to_cstr(%nyx_string* %9051)
  %9055 = call i8* @nyx_string_to_cstr(%nyx_string* %9053)
  %9056 = call i32 @strcmp(i8* %9054, i8* %9055)
  %9057 = icmp eq i32 %9056, 0
  br i1 %9057, label %then1974, label %else1975
then1974:
  %9058 = load %ASTNode, %ASTNode* %node.ptr
  %9059 = call i1 @validate_break(%ASTNode %9058)
  ret i1 %9059
else1975:
  br label %merge1976
merge1976:
  %9060 = load %nyx_string*, %nyx_string** %8940
  %9061 = getelementptr [9 x i8], [9 x i8]* @.str993, i32 0, i32 0
  %9062 = call %nyx_string* @nyx_string_from_cstr(i8* %9061)
  %9063 = call i8* @nyx_string_to_cstr(%nyx_string* %9060)
  %9064 = call i8* @nyx_string_to_cstr(%nyx_string* %9062)
  %9065 = call i32 @strcmp(i8* %9063, i8* %9064)
  %9066 = icmp eq i32 %9065, 0
  br i1 %9066, label %then1977, label %else1978
then1977:
  %9067 = load %ASTNode, %ASTNode* %node.ptr
  %9068 = call i1 @validate_continue(%ASTNode %9067)
  ret i1 %9068
else1978:
  br label %merge1979
merge1979:
  %9069 = load %nyx_string*, %nyx_string** %8940
  %9070 = getelementptr [4 x i8], [4 x i8]* @.str994, i32 0, i32 0
  %9071 = call %nyx_string* @nyx_string_from_cstr(i8* %9070)
  %9072 = call i8* @nyx_string_to_cstr(%nyx_string* %9069)
  %9073 = call i8* @nyx_string_to_cstr(%nyx_string* %9071)
  %9074 = call i32 @strcmp(i8* %9072, i8* %9073)
  %9075 = icmp eq i32 %9074, 0
  br i1 %9075, label %then1980, label %else1981
then1980:
  %9076 = load %ASTNode, %ASTNode* %node.ptr
  %9077 = call i1 @validate_let(%ASTNode %9076)
  ret i1 %9077
else1981:
  br label %merge1982
merge1982:
  %9078 = load %nyx_string*, %nyx_string** %8940
  %9079 = getelementptr [6 x i8], [6 x i8]* @.str995, i32 0, i32 0
  %9080 = call %nyx_string* @nyx_string_from_cstr(i8* %9079)
  %9081 = call i8* @nyx_string_to_cstr(%nyx_string* %9078)
  %9082 = call i8* @nyx_string_to_cstr(%nyx_string* %9080)
  %9083 = call i32 @strcmp(i8* %9081, i8* %9082)
  %9084 = icmp eq i32 %9083, 0
  br i1 %9084, label %then1983, label %else1984
then1983:
  %9085 = load %ASTNode, %ASTNode* %node.ptr
  %9086 = call i1 @validate_const(%ASTNode %9085)
  ret i1 %9086
else1984:
  br label %merge1985
merge1985:
  %9087 = load %nyx_string*, %nyx_string** %8940
  %9088 = getelementptr [9 x i8], [9 x i8]* @.str996, i32 0, i32 0
  %9089 = call %nyx_string* @nyx_string_from_cstr(i8* %9088)
  %9090 = call i8* @nyx_string_to_cstr(%nyx_string* %9087)
  %9091 = call i8* @nyx_string_to_cstr(%nyx_string* %9089)
  %9092 = call i32 @strcmp(i8* %9090, i8* %9091)
  %9093 = icmp eq i32 %9092, 0
  br i1 %9093, label %then1986, label %else1987
then1986:
  %9094 = load %ASTNode, %ASTNode* %node.ptr
  %9095 = call i1 @validate_function(%ASTNode %9094)
  ret i1 %9095
else1987:
  br label %merge1988
merge1988:
  %9096 = load %nyx_string*, %nyx_string** %8940
  %9097 = getelementptr [9 x i8], [9 x i8]* @.str997, i32 0, i32 0
  %9098 = call %nyx_string* @nyx_string_from_cstr(i8* %9097)
  %9099 = call i8* @nyx_string_to_cstr(%nyx_string* %9096)
  %9100 = call i8* @nyx_string_to_cstr(%nyx_string* %9098)
  %9101 = call i32 @strcmp(i8* %9099, i8* %9100)
  %9102 = icmp eq i32 %9101, 0
  br i1 %9102, label %then1989, label %else1990
then1989:
  %9103 = load %ASTNode, %ASTNode* %node.ptr
  %9104 = call i1 @validate_function(%ASTNode %9103)
  ret i1 %9104
else1990:
  br label %merge1991
merge1991:
  %9105 = load %nyx_string*, %nyx_string** %8940
  %9106 = getelementptr [11 x i8], [11 x i8]* @.str998, i32 0, i32 0
  %9107 = call %nyx_string* @nyx_string_from_cstr(i8* %9106)
  %9108 = call i8* @nyx_string_to_cstr(%nyx_string* %9105)
  %9109 = call i8* @nyx_string_to_cstr(%nyx_string* %9107)
  %9110 = call i32 @strcmp(i8* %9108, i8* %9109)
  %9111 = icmp eq i32 %9110, 0
  br i1 %9111, label %then1992, label %else1993
then1992:
  ret i1 1
else1993:
  br label %merge1994
merge1994:
  %9112 = load %nyx_string*, %nyx_string** %8940
  %9113 = getelementptr [7 x i8], [7 x i8]* @.str999, i32 0, i32 0
  %9114 = call %nyx_string* @nyx_string_from_cstr(i8* %9113)
  %9115 = call i8* @nyx_string_to_cstr(%nyx_string* %9112)
  %9116 = call i8* @nyx_string_to_cstr(%nyx_string* %9114)
  %9117 = call i32 @strcmp(i8* %9115, i8* %9116)
  %9118 = icmp eq i32 %9117, 0
  br i1 %9118, label %then1995, label %else1996
then1995:
  ret i1 1
else1996:
  br label %merge1997
merge1997:
  %9119 = load %nyx_string*, %nyx_string** %8940
  %9120 = getelementptr [9 x i8], [9 x i8]* @.str1000, i32 0, i32 0
  %9121 = call %nyx_string* @nyx_string_from_cstr(i8* %9120)
  %9122 = call i8* @nyx_string_to_cstr(%nyx_string* %9119)
  %9123 = call i8* @nyx_string_to_cstr(%nyx_string* %9121)
  %9124 = call i32 @strcmp(i8* %9122, i8* %9123)
  %9125 = icmp eq i32 %9124, 0
  br i1 %9125, label %then1998, label %else1999
then1998:
  ret i1 1
else1999:
  br label %merge2000
merge2000:
  %9126 = load %nyx_string*, %nyx_string** %8940
  %9127 = getelementptr [5 x i8], [5 x i8]* @.str1001, i32 0, i32 0
  %9128 = call %nyx_string* @nyx_string_from_cstr(i8* %9127)
  %9129 = call i8* @nyx_string_to_cstr(%nyx_string* %9126)
  %9130 = call i8* @nyx_string_to_cstr(%nyx_string* %9128)
  %9131 = call i32 @strcmp(i8* %9129, i8* %9130)
  %9132 = icmp eq i32 %9131, 0
  br i1 %9132, label %then2001, label %else2002
then2001:
  %9133 = load %ASTNode, %ASTNode* %node.ptr
  %9134 = call i1 @validate_impl(%ASTNode %9133)
  ret i1 %9134
else2002:
  br label %merge2003
merge2003:
  %9135 = load %nyx_string*, %nyx_string** %8940
  %9136 = getelementptr [10 x i8], [10 x i8]* @.str1002, i32 0, i32 0
  %9137 = call %nyx_string* @nyx_string_from_cstr(i8* %9136)
  %9138 = call i8* @nyx_string_to_cstr(%nyx_string* %9135)
  %9139 = call i8* @nyx_string_to_cstr(%nyx_string* %9137)
  %9140 = call i32 @strcmp(i8* %9138, i8* %9139)
  %9141 = icmp eq i32 %9140, 0
  br i1 %9141, label %then2004, label %else2005
then2004:
  ret i1 1
else2005:
  br label %merge2006
merge2006:
  %9142 = load %nyx_string*, %nyx_string** %8940
  %9143 = getelementptr [11 x i8], [11 x i8]* @.str1003, i32 0, i32 0
  %9144 = call %nyx_string* @nyx_string_from_cstr(i8* %9143)
  %9145 = call i8* @nyx_string_to_cstr(%nyx_string* %9142)
  %9146 = call i8* @nyx_string_to_cstr(%nyx_string* %9144)
  %9147 = call i32 @strcmp(i8* %9145, i8* %9146)
  %9148 = icmp eq i32 %9147, 0
  br i1 %9148, label %then2007, label %else2008
then2007:
  %9149 = load %ASTNode, %ASTNode* %node.ptr
  %9150 = call i1 @validate_impl_trait(%ASTNode %9149)
  ret i1 %9150
else2008:
  br label %merge2009
merge2009:
  %9151 = load %nyx_string*, %nyx_string** %8940
  %9152 = getelementptr [7 x i8], [7 x i8]* @.str1004, i32 0, i32 0
  %9153 = call %nyx_string* @nyx_string_from_cstr(i8* %9152)
  %9154 = call i8* @nyx_string_to_cstr(%nyx_string* %9151)
  %9155 = call i8* @nyx_string_to_cstr(%nyx_string* %9153)
  %9156 = call i32 @strcmp(i8* %9154, i8* %9155)
  %9157 = icmp eq i32 %9156, 0
  br i1 %9157, label %then2010, label %else2011
then2010:
  %9158 = load %ASTNode, %ASTNode* %node.ptr
  %9159 = call i1 @validate_export(%ASTNode %9158)
  ret i1 %9159
else2011:
  br label %merge2012
merge2012:
  %9160 = load %nyx_string*, %nyx_string** %8940
  %9161 = getelementptr [7 x i8], [7 x i8]* @.str1005, i32 0, i32 0
  %9162 = call %nyx_string* @nyx_string_from_cstr(i8* %9161)
  %9163 = call i8* @nyx_string_to_cstr(%nyx_string* %9160)
  %9164 = call i8* @nyx_string_to_cstr(%nyx_string* %9162)
  %9165 = call i32 @strcmp(i8* %9163, i8* %9164)
  %9166 = icmp eq i32 %9165, 0
  br i1 %9166, label %then2013, label %else2014
then2013:
  ret i1 1
else2014:
  br label %merge2015
merge2015:
  %9167 = load %nyx_string*, %nyx_string** %8940
  %9168 = getelementptr [14 x i8], [14 x i8]* @.str1006, i32 0, i32 0
  %9169 = call %nyx_string* @nyx_string_from_cstr(i8* %9168)
  %9170 = call i8* @nyx_string_to_cstr(%nyx_string* %9167)
  %9171 = call i8* @nyx_string_to_cstr(%nyx_string* %9169)
  %9172 = call i32 @strcmp(i8* %9170, i8* %9171)
  %9173 = icmp eq i32 %9172, 0
  br i1 %9173, label %then2016, label %else2017
then2016:
  ret i1 1
else2017:
  br label %merge2018
merge2018:
  %9174 = load %nyx_string*, %nyx_string** %8940
  %9175 = getelementptr [12 x i8], [12 x i8]* @.str1007, i32 0, i32 0
  %9176 = call %nyx_string* @nyx_string_from_cstr(i8* %9175)
  %9177 = call i8* @nyx_string_to_cstr(%nyx_string* %9174)
  %9178 = call i8* @nyx_string_to_cstr(%nyx_string* %9176)
  %9179 = call i32 @strcmp(i8* %9177, i8* %9178)
  %9180 = icmp eq i32 %9179, 0
  br i1 %9180, label %then2019, label %else2020
then2019:
  ret i1 1
else2020:
  br label %merge2021
merge2021:
  %9181 = load %nyx_string*, %nyx_string** %8940
  %9182 = getelementptr [11 x i8], [11 x i8]* @.str1008, i32 0, i32 0
  %9183 = call %nyx_string* @nyx_string_from_cstr(i8* %9182)
  %9184 = call i8* @nyx_string_to_cstr(%nyx_string* %9181)
  %9185 = call i8* @nyx_string_to_cstr(%nyx_string* %9183)
  %9186 = call i32 @strcmp(i8* %9184, i8* %9185)
  %9187 = icmp eq i32 %9186, 0
  br i1 %9187, label %then2022, label %else2023
then2022:
  ret i1 1
else2023:
  br label %merge2024
merge2024:
  %9188 = load %nyx_string*, %nyx_string** %8940
  %9189 = getelementptr [10 x i8], [10 x i8]* @.str1009, i32 0, i32 0
  %9190 = call %nyx_string* @nyx_string_from_cstr(i8* %9189)
  %9191 = call i8* @nyx_string_to_cstr(%nyx_string* %9188)
  %9192 = call i8* @nyx_string_to_cstr(%nyx_string* %9190)
  %9193 = call i32 @strcmp(i8* %9191, i8* %9192)
  %9194 = icmp eq i32 %9193, 0
  br i1 %9194, label %then2025, label %else2026
then2025:
  ret i1 1
else2026:
  br label %merge2027
merge2027:
  %9195 = load %nyx_string*, %nyx_string** %8940
  %9196 = getelementptr [6 x i8], [6 x i8]* @.str1010, i32 0, i32 0
  %9197 = call %nyx_string* @nyx_string_from_cstr(i8* %9196)
  %9198 = call i8* @nyx_string_to_cstr(%nyx_string* %9195)
  %9199 = call i8* @nyx_string_to_cstr(%nyx_string* %9197)
  %9200 = call i32 @strcmp(i8* %9198, i8* %9199)
  %9201 = icmp eq i32 %9200, 0
  br i1 %9201, label %then2028, label %else2029
then2028:
  %9202 = load %ASTNode, %ASTNode* %node.ptr
  %9203 = call i1 @validate_binop(%ASTNode %9202)
  ret i1 %9203
else2029:
  br label %merge2030
merge2030:
  %9204 = load %nyx_string*, %nyx_string** %8940
  %9205 = getelementptr [5 x i8], [5 x i8]* @.str1011, i32 0, i32 0
  %9206 = call %nyx_string* @nyx_string_from_cstr(i8* %9205)
  %9207 = call i8* @nyx_string_to_cstr(%nyx_string* %9204)
  %9208 = call i8* @nyx_string_to_cstr(%nyx_string* %9206)
  %9209 = call i32 @strcmp(i8* %9207, i8* %9208)
  %9210 = icmp eq i32 %9209, 0
  br i1 %9210, label %then2031, label %else2032
then2031:
  %9211 = load %ASTNode, %ASTNode* %node.ptr
  %9212 = call i1 @validate_unop(%ASTNode %9211)
  ret i1 %9212
else2032:
  br label %merge2033
merge2033:
  %9213 = load %nyx_string*, %nyx_string** %8940
  %9214 = getelementptr [5 x i8], [5 x i8]* @.str1012, i32 0, i32 0
  %9215 = call %nyx_string* @nyx_string_from_cstr(i8* %9214)
  %9216 = call i8* @nyx_string_to_cstr(%nyx_string* %9213)
  %9217 = call i8* @nyx_string_to_cstr(%nyx_string* %9215)
  %9218 = call i32 @strcmp(i8* %9216, i8* %9217)
  %9219 = icmp eq i32 %9218, 0
  br i1 %9219, label %then2034, label %else2035
then2034:
  %9220 = load %ASTNode, %ASTNode* %node.ptr
  %9221 = call i1 @validate_call(%ASTNode %9220)
  ret i1 %9221
else2035:
  br label %merge2036
merge2036:
  %9222 = load %nyx_string*, %nyx_string** %8940
  %9223 = getelementptr [6 x i8], [6 x i8]* @.str1013, i32 0, i32 0
  %9224 = call %nyx_string* @nyx_string_from_cstr(i8* %9223)
  %9225 = call i8* @nyx_string_to_cstr(%nyx_string* %9222)
  %9226 = call i8* @nyx_string_to_cstr(%nyx_string* %9224)
  %9227 = call i32 @strcmp(i8* %9225, i8* %9226)
  %9228 = icmp eq i32 %9227, 0
  br i1 %9228, label %then2037, label %else2038
then2037:
  %9229 = load %ASTNode, %ASTNode* %node.ptr
  %9230 = call i1 @validate_array(%ASTNode %9229)
  ret i1 %9230
else2038:
  br label %merge2039
merge2039:
  %9231 = load %nyx_string*, %nyx_string** %8940
  %9232 = getelementptr [6 x i8], [6 x i8]* @.str1014, i32 0, i32 0
  %9233 = call %nyx_string* @nyx_string_from_cstr(i8* %9232)
  %9234 = call i8* @nyx_string_to_cstr(%nyx_string* %9231)
  %9235 = call i8* @nyx_string_to_cstr(%nyx_string* %9233)
  %9236 = call i32 @strcmp(i8* %9234, i8* %9235)
  %9237 = icmp eq i32 %9236, 0
  br i1 %9237, label %then2040, label %else2041
then2040:
  %9238 = load %ASTNode, %ASTNode* %node.ptr
  %9239 = call i1 @validate_index(%ASTNode %9238)
  ret i1 %9239
else2041:
  br label %merge2042
merge2042:
  %9240 = load %nyx_string*, %nyx_string** %8940
  %9241 = getelementptr [6 x i8], [6 x i8]* @.str1015, i32 0, i32 0
  %9242 = call %nyx_string* @nyx_string_from_cstr(i8* %9241)
  %9243 = call i8* @nyx_string_to_cstr(%nyx_string* %9240)
  %9244 = call i8* @nyx_string_to_cstr(%nyx_string* %9242)
  %9245 = call i32 @strcmp(i8* %9243, i8* %9244)
  %9246 = icmp eq i32 %9245, 0
  br i1 %9246, label %then2043, label %else2044
then2043:
  %9247 = load %ASTNode, %ASTNode* %node.ptr
  %9248 = call i1 @validate_range(%ASTNode %9247)
  ret i1 %9248
else2044:
  br label %merge2045
merge2045:
  %9249 = load %nyx_string*, %nyx_string** %8940
  %9250 = getelementptr [7 x i8], [7 x i8]* @.str1016, i32 0, i32 0
  %9251 = call %nyx_string* @nyx_string_from_cstr(i8* %9250)
  %9252 = call i8* @nyx_string_to_cstr(%nyx_string* %9249)
  %9253 = call i8* @nyx_string_to_cstr(%nyx_string* %9251)
  %9254 = call i32 @strcmp(i8* %9252, i8* %9253)
  %9255 = icmp eq i32 %9254, 0
  br i1 %9255, label %then2046, label %else2047
then2046:
  %9256 = load %ASTNode, %ASTNode* %node.ptr
  %9257 = call i1 @validate_assign(%ASTNode %9256)
  ret i1 %9257
else2047:
  br label %merge2048
merge2048:
  %9258 = load %nyx_string*, %nyx_string** %8940
  %9259 = getelementptr [16 x i8], [16 x i8]* @.str1017, i32 0, i32 0
  %9260 = call %nyx_string* @nyx_string_from_cstr(i8* %9259)
  %9261 = call i8* @nyx_string_to_cstr(%nyx_string* %9258)
  %9262 = call i8* @nyx_string_to_cstr(%nyx_string* %9260)
  %9263 = call i32 @strcmp(i8* %9261, i8* %9262)
  %9264 = icmp eq i32 %9263, 0
  br i1 %9264, label %then2049, label %else2050
then2049:
  %9265 = load %ASTNode, %ASTNode* %node.ptr
  %9266 = call i1 @validate_assign(%ASTNode %9265)
  ret i1 %9266
else2050:
  br label %merge2051
merge2051:
  %9267 = load %nyx_string*, %nyx_string** %8940
  %9268 = getelementptr [13 x i8], [13 x i8]* @.str1018, i32 0, i32 0
  %9269 = call %nyx_string* @nyx_string_from_cstr(i8* %9268)
  %9270 = call i8* @nyx_string_to_cstr(%nyx_string* %9267)
  %9271 = call i8* @nyx_string_to_cstr(%nyx_string* %9269)
  %9272 = call i32 @strcmp(i8* %9270, i8* %9271)
  %9273 = icmp eq i32 %9272, 0
  br i1 %9273, label %then2052, label %else2053
then2052:
  %9274 = load %ASTNode, %ASTNode* %node.ptr
  %9275 = call i1 @validate_index_assign(%ASTNode %9274)
  ret i1 %9275
else2053:
  br label %merge2054
merge2054:
  %9276 = load %nyx_string*, %nyx_string** %8940
  %9277 = getelementptr [13 x i8], [13 x i8]* @.str1019, i32 0, i32 0
  %9278 = call %nyx_string* @nyx_string_from_cstr(i8* %9277)
  %9279 = call i8* @nyx_string_to_cstr(%nyx_string* %9276)
  %9280 = call i8* @nyx_string_to_cstr(%nyx_string* %9278)
  %9281 = call i32 @strcmp(i8* %9279, i8* %9280)
  %9282 = icmp eq i32 %9281, 0
  br i1 %9282, label %then2055, label %else2056
then2055:
  %9283 = load %ASTNode, %ASTNode* %node.ptr
  %9284 = call i1 @validate_field_assign(%ASTNode %9283)
  ret i1 %9284
else2056:
  br label %merge2057
merge2057:
  %9285 = load %nyx_string*, %nyx_string** %8940
  %9286 = getelementptr [12 x i8], [12 x i8]* @.str1020, i32 0, i32 0
  %9287 = call %nyx_string* @nyx_string_from_cstr(i8* %9286)
  %9288 = call i8* @nyx_string_to_cstr(%nyx_string* %9285)
  %9289 = call i8* @nyx_string_to_cstr(%nyx_string* %9287)
  %9290 = call i32 @strcmp(i8* %9288, i8* %9289)
  %9291 = icmp eq i32 %9290, 0
  br i1 %9291, label %then2058, label %else2059
then2058:
  %9292 = load %ASTNode, %ASTNode* %node.ptr
  %9293 = call i1 @validate_struct_init(%ASTNode %9292)
  ret i1 %9293
else2059:
  br label %merge2060
merge2060:
  %9294 = load %nyx_string*, %nyx_string** %8940
  %9295 = getelementptr [13 x i8], [13 x i8]* @.str1021, i32 0, i32 0
  %9296 = call %nyx_string* @nyx_string_from_cstr(i8* %9295)
  %9297 = call i8* @nyx_string_to_cstr(%nyx_string* %9294)
  %9298 = call i8* @nyx_string_to_cstr(%nyx_string* %9296)
  %9299 = call i32 @strcmp(i8* %9297, i8* %9298)
  %9300 = icmp eq i32 %9299, 0
  br i1 %9300, label %then2061, label %else2062
then2061:
  %9301 = load %ASTNode, %ASTNode* %node.ptr
  %9302 = call i1 @validate_field_access(%ASTNode %9301)
  ret i1 %9302
else2062:
  br label %merge2063
merge2063:
  %9303 = load %nyx_string*, %nyx_string** %8940
  %9304 = getelementptr [12 x i8], [12 x i8]* @.str1022, i32 0, i32 0
  %9305 = call %nyx_string* @nyx_string_from_cstr(i8* %9304)
  %9306 = call i8* @nyx_string_to_cstr(%nyx_string* %9303)
  %9307 = call i8* @nyx_string_to_cstr(%nyx_string* %9305)
  %9308 = call i32 @strcmp(i8* %9306, i8* %9307)
  %9309 = icmp eq i32 %9308, 0
  br i1 %9309, label %then2064, label %else2065
then2064:
  %9310 = load %ASTNode, %ASTNode* %node.ptr
  %9311 = call i1 @validate_method_call(%ASTNode %9310)
  ret i1 %9311
else2065:
  br label %merge2066
merge2066:
  %9312 = load %nyx_string*, %nyx_string** %8940
  %9313 = getelementptr [6 x i8], [6 x i8]* @.str1023, i32 0, i32 0
  %9314 = call %nyx_string* @nyx_string_from_cstr(i8* %9313)
  %9315 = call i8* @nyx_string_to_cstr(%nyx_string* %9312)
  %9316 = call i8* @nyx_string_to_cstr(%nyx_string* %9314)
  %9317 = call i32 @strcmp(i8* %9315, i8* %9316)
  %9318 = icmp eq i32 %9317, 0
  br i1 %9318, label %then2067, label %else2068
then2067:
  %9319 = load %ASTNode, %ASTNode* %node.ptr
  %9320 = call i1 @validate_match(%ASTNode %9319)
  ret i1 %9320
else2068:
  br label %merge2069
merge2069:
  %9321 = load %nyx_string*, %nyx_string** %8940
  %9322 = getelementptr [10 x i8], [10 x i8]* @.str1024, i32 0, i32 0
  %9323 = call %nyx_string* @nyx_string_from_cstr(i8* %9322)
  %9324 = call i8* @nyx_string_to_cstr(%nyx_string* %9321)
  %9325 = call i8* @nyx_string_to_cstr(%nyx_string* %9323)
  %9326 = call i32 @strcmp(i8* %9324, i8* %9325)
  %9327 = icmp eq i32 %9326, 0
  br i1 %9327, label %then2070, label %else2071
then2070:
  %9328 = load %ASTNode, %ASTNode* %node.ptr
  %9329 = call i1 @validate_match_arm(%ASTNode %9328)
  ret i1 %9329
else2071:
  br label %merge2072
merge2072:
  %9330 = load %nyx_string*, %nyx_string** %8940
  %9331 = getelementptr [14 x i8], [14 x i8]* @.str1025, i32 0, i32 0
  %9332 = call %nyx_string* @nyx_string_from_cstr(i8* %9331)
  %9333 = call i8* @nyx_string_to_cstr(%nyx_string* %9330)
  %9334 = call i8* @nyx_string_to_cstr(%nyx_string* %9332)
  %9335 = call i32 @strcmp(i8* %9333, i8* %9334)
  %9336 = icmp eq i32 %9335, 0
  br i1 %9336, label %then2073, label %else2074
then2073:
  ret i1 1
else2074:
  br label %merge2075
merge2075:
  %9337 = load %nyx_string*, %nyx_string** %8940
  %9338 = getelementptr [13 x i8], [13 x i8]* @.str1026, i32 0, i32 0
  %9339 = call %nyx_string* @nyx_string_from_cstr(i8* %9338)
  %9340 = call i8* @nyx_string_to_cstr(%nyx_string* %9337)
  %9341 = call i8* @nyx_string_to_cstr(%nyx_string* %9339)
  %9342 = call i32 @strcmp(i8* %9340, i8* %9341)
  %9343 = icmp eq i32 %9342, 0
  br i1 %9343, label %then2076, label %else2077
then2076:
  ret i1 1
else2077:
  br label %merge2078
merge2078:
  %9344 = load %nyx_string*, %nyx_string** %8940
  %9345 = getelementptr [7 x i8], [7 x i8]* @.str1027, i32 0, i32 0
  %9346 = call %nyx_string* @nyx_string_from_cstr(i8* %9345)
  %9347 = call i8* @nyx_string_to_cstr(%nyx_string* %9344)
  %9348 = call i8* @nyx_string_to_cstr(%nyx_string* %9346)
  %9349 = call i32 @strcmp(i8* %9347, i8* %9348)
  %9350 = icmp eq i32 %9349, 0
  br i1 %9350, label %then2079, label %else2080
then2079:
  %9351 = load %ASTNode, %ASTNode* %node.ptr
  %9352 = call %ASTNode @get_node_at(%ASTNode %9351, i64 0)
  %9353 = alloca %ASTNode
  store %ASTNode %9352, %ASTNode* %9353
  %9354 = load %ASTNode, %ASTNode* %9353
  %9355 = call i1 @validate_node(%ASTNode %9354)
  ret i1 %9355
else2080:
  br label %merge2081
merge2081:
  %9356 = load %nyx_string*, %nyx_string** %8940
  %9357 = getelementptr [5 x i8], [5 x i8]* @.str1028, i32 0, i32 0
  %9358 = call %nyx_string* @nyx_string_from_cstr(i8* %9357)
  %9359 = call i8* @nyx_string_to_cstr(%nyx_string* %9356)
  %9360 = call i8* @nyx_string_to_cstr(%nyx_string* %9358)
  %9361 = call i32 @strcmp(i8* %9359, i8* %9360)
  %9362 = icmp eq i32 %9361, 0
  br i1 %9362, label %then2082, label %else2083
then2082:
  %9363 = load %ASTNode, %ASTNode* %node.ptr
  %9364 = call %ASTNode @get_node_at(%ASTNode %9363, i64 0)
  %9365 = alloca %ASTNode
  store %ASTNode %9364, %ASTNode* %9365
  %9366 = load %ASTNode, %ASTNode* %9365
  %9367 = call i1 @validate_node(%ASTNode %9366)
  ret i1 %9367
else2083:
  br label %merge2084
merge2084:
  %9368 = load %nyx_string*, %nyx_string** %8940
  %9369 = getelementptr [7 x i8], [7 x i8]* @.str1029, i32 0, i32 0
  %9370 = call %nyx_string* @nyx_string_from_cstr(i8* %9369)
  %9371 = call i8* @nyx_string_to_cstr(%nyx_string* %9368)
  %9372 = call i8* @nyx_string_to_cstr(%nyx_string* %9370)
  %9373 = call i32 @strcmp(i8* %9371, i8* %9372)
  %9374 = icmp eq i32 %9373, 0
  br i1 %9374, label %then2085, label %else2086
then2085:
  ret i1 1
else2086:
  br label %merge2087
merge2087:
  %9375 = load %nyx_string*, %nyx_string** %8940
  %9376 = getelementptr [8 x i8], [8 x i8]* @.str1030, i32 0, i32 0
  %9377 = call %nyx_string* @nyx_string_from_cstr(i8* %9376)
  %9378 = call i8* @nyx_string_to_cstr(%nyx_string* %9375)
  %9379 = call i8* @nyx_string_to_cstr(%nyx_string* %9377)
  %9380 = call i32 @strcmp(i8* %9378, i8* %9379)
  %9381 = icmp eq i32 %9380, 0
  br i1 %9381, label %then2088, label %else2089
then2088:
  ret i1 1
else2089:
  br label %merge2090
merge2090:
  %9382 = load %nyx_string*, %nyx_string** %8940
  %9383 = getelementptr [13 x i8], [13 x i8]* @.str1031, i32 0, i32 0
  %9384 = call %nyx_string* @nyx_string_from_cstr(i8* %9383)
  %9385 = call i8* @nyx_string_to_cstr(%nyx_string* %9382)
  %9386 = call i8* @nyx_string_to_cstr(%nyx_string* %9384)
  %9387 = call i32 @strcmp(i8* %9385, i8* %9386)
  %9388 = icmp eq i32 %9387, 0
  br i1 %9388, label %then2091, label %else2092
then2091:
  %9389 = load %ASTNode, %ASTNode* %node.ptr
  %9390 = call %ASTNode @get_node_at(%ASTNode %9389, i64 0)
  %9391 = alloca %ASTNode
  store %ASTNode %9390, %ASTNode* %9391
  %9392 = load %ASTNode, %ASTNode* %9391
  %9393 = call i1 @validate_node(%ASTNode %9392)
  ret i1 %9393
else2092:
  br label %merge2093
merge2093:
  %9394 = load %nyx_string*, %nyx_string** %8940
  %9395 = getelementptr [8 x i8], [8 x i8]* @.str1032, i32 0, i32 0
  %9396 = call %nyx_string* @nyx_string_from_cstr(i8* %9395)
  %9397 = call i8* @nyx_string_to_cstr(%nyx_string* %9394)
  %9398 = call i8* @nyx_string_to_cstr(%nyx_string* %9396)
  %9399 = call i32 @strcmp(i8* %9397, i8* %9398)
  %9400 = icmp eq i32 %9399, 0
  br i1 %9400, label %then2094, label %else2095
then2094:
  %9401 = load %ASTNode, %ASTNode* %node.ptr
  %9402 = call %ASTNode @get_node_at(%ASTNode %9401, i64 0)
  %9403 = alloca %ASTNode
  store %ASTNode %9402, %ASTNode* %9403
  %9404 = load %ASTNode, %ASTNode* %9403
  %9405 = call i1 @validate_node(%ASTNode %9404)
  ret i1 %9405
else2095:
  br label %merge2096
merge2096:
  %9406 = load %nyx_string*, %nyx_string** %8940
  %9407 = getelementptr [6 x i8], [6 x i8]* @.str1033, i32 0, i32 0
  %9408 = call %nyx_string* @nyx_string_from_cstr(i8* %9407)
  %9409 = call i8* @nyx_string_to_cstr(%nyx_string* %9406)
  %9410 = call i8* @nyx_string_to_cstr(%nyx_string* %9408)
  %9411 = call i32 @strcmp(i8* %9409, i8* %9410)
  %9412 = icmp eq i32 %9411, 0
  br i1 %9412, label %then2097, label %else2098
then2097:
  %9413 = load %ASTNode, %ASTNode* %node.ptr
  %9414 = call %ASTNode @get_node_at(%ASTNode %9413, i64 0)
  %9415 = alloca %ASTNode
  store %ASTNode %9414, %ASTNode* %9415
  %9416 = load %ASTNode, %ASTNode* %9415
  %9417 = call i1 @validate_node(%ASTNode %9416)
  ret i1 %9417
else2098:
  br label %merge2099
merge2099:
  %9418 = load %nyx_string*, %nyx_string** %8940
  %9419 = getelementptr [13 x i8], [13 x i8]* @.str1034, i32 0, i32 0
  %9420 = call %nyx_string* @nyx_string_from_cstr(i8* %9419)
  %9421 = call i8* @nyx_string_to_cstr(%nyx_string* %9418)
  %9422 = call i8* @nyx_string_to_cstr(%nyx_string* %9420)
  %9423 = call i32 @strcmp(i8* %9421, i8* %9422)
  %9424 = icmp eq i32 %9423, 0
  br i1 %9424, label %then2100, label %else2101
then2100:
  %9425 = load %ASTNode, %ASTNode* %node.ptr
  %9426 = call %ASTNode @get_node_at(%ASTNode %9425, i64 0)
  %9427 = alloca %ASTNode
  store %ASTNode %9426, %ASTNode* %9427
  %9428 = load %ASTNode, %ASTNode* %node.ptr
  %9429 = call %ASTNode @get_node_at(%ASTNode %9428, i64 1)
  %9430 = alloca %ASTNode
  store %ASTNode %9429, %ASTNode* %9430
  %9431 = load %ASTNode, %ASTNode* %9427
  %9432 = call i1 @validate_node(%ASTNode %9431)
  %9433 = xor i1 %9432, true
  br i1 %9433, label %then2103, label %else2104
then2103:
  ret i1 0
else2104:
  br label %merge2105
merge2105:
  %9434 = load %ASTNode, %ASTNode* %9430
  %9435 = call i1 @validate_node(%ASTNode %9434)
  ret i1 %9435
else2101:
  br label %merge2102
merge2102:
  %9436 = load %nyx_string*, %nyx_string** %8940
  %9437 = getelementptr [11 x i8], [11 x i8]* @.str1035, i32 0, i32 0
  %9438 = call %nyx_string* @nyx_string_from_cstr(i8* %9437)
  %9439 = call i8* @nyx_string_to_cstr(%nyx_string* %9436)
  %9440 = call i8* @nyx_string_to_cstr(%nyx_string* %9438)
  %9441 = call i32 @strcmp(i8* %9439, i8* %9440)
  %9442 = icmp eq i32 %9441, 0
  br i1 %9442, label %then2106, label %else2107
then2106:
  %9443 = load %ASTNode, %ASTNode* %node.ptr
  %9444 = call %nyx_string* @get_string_at(%ASTNode %9443, i64 0)
  %9445 = alloca %nyx_string*
  store %nyx_string* %9444, %nyx_string** %9445
  %9446 = load %nyx_string*, %nyx_string** %9445
  %9447 = getelementptr [4 x i8], [4 x i8]* @.str1036, i32 0, i32 0
  %9448 = call %nyx_string* @nyx_string_from_cstr(i8* %9447)
  %9449 = call i64 @scope_declare(%nyx_string* %9446, %nyx_string* %9448)
  ret i1 1
else2107:
  br label %merge2108
merge2108:
  %9450 = load %nyx_string*, %nyx_string** %8940
  %9451 = getelementptr [6 x i8], [6 x i8]* @.str1037, i32 0, i32 0
  %9452 = call %nyx_string* @nyx_string_from_cstr(i8* %9451)
  %9453 = call i8* @nyx_string_to_cstr(%nyx_string* %9450)
  %9454 = call i8* @nyx_string_to_cstr(%nyx_string* %9452)
  %9455 = call i32 @strcmp(i8* %9453, i8* %9454)
  %9456 = icmp eq i32 %9455, 0
  br i1 %9456, label %then2109, label %else2110
then2109:
  %9457 = load %ASTNode, %ASTNode* %node.ptr
  %9458 = call %ASTNode @get_node_at(%ASTNode %9457, i64 0)
  %9459 = alloca %ASTNode
  store %ASTNode %9458, %ASTNode* %9459
  %9460 = load %ASTNode, %ASTNode* %9459
  %9461 = call i1 @validate_node(%ASTNode %9460)
  ret i1 %9461
else2110:
  br label %merge2111
merge2111:
  %9462 = load %nyx_string*, %nyx_string** %8940
  %9463 = getelementptr [10 x i8], [10 x i8]* @.str1038, i32 0, i32 0
  %9464 = call %nyx_string* @nyx_string_from_cstr(i8* %9463)
  %9465 = call i8* @nyx_string_to_cstr(%nyx_string* %9462)
  %9466 = call i8* @nyx_string_to_cstr(%nyx_string* %9464)
  %9467 = call i32 @strcmp(i8* %9465, i8* %9466)
  %9468 = icmp eq i32 %9467, 0
  br i1 %9468, label %then2112, label %else2113
then2112:
  %9469 = load %ASTNode, %ASTNode* %node.ptr
  %9470 = call %ASTNode @get_node_at(%ASTNode %9469, i64 0)
  %9471 = alloca %ASTNode
  store %ASTNode %9470, %ASTNode* %9471
  %9472 = load %ASTNode, %ASTNode* %node.ptr
  %9473 = call %nyx_string* @get_string_at(%ASTNode %9472, i64 1)
  %9474 = alloca %nyx_string*
  store %nyx_string* %9473, %nyx_string** %9474
  %9475 = load %ASTNode, %ASTNode* %node.ptr
  %9476 = call %ASTNode @get_node_at(%ASTNode %9475, i64 2)
  %9477 = alloca %ASTNode
  store %ASTNode %9476, %ASTNode* %9477
  %9478 = load %ASTNode, %ASTNode* %9471
  %9479 = call i1 @validate_node(%ASTNode %9478)
  %9480 = alloca i1
  store i1 %9479, i1* %9480
  %9481 = load i1, i1* %9480
  %9482 = icmp eq i1 %9481, 0
  br i1 %9482, label %then2115, label %else2116
then2115:
  ret i1 0
else2116:
  br label %merge2117
merge2117:
  %9483 = call i64 @scope_push()
  %9484 = load %nyx_string*, %nyx_string** %9474
  %9485 = getelementptr [4 x i8], [4 x i8]* @.str1039, i32 0, i32 0
  %9486 = call %nyx_string* @nyx_string_from_cstr(i8* %9485)
  %9487 = call i64 @scope_declare(%nyx_string* %9484, %nyx_string* %9486)
  %9488 = load %ASTNode, %ASTNode* %9477
  %9489 = call i1 @validate_node(%ASTNode %9488)
  %9490 = alloca i1
  store i1 %9489, i1* %9490
  %9491 = call i64 @scope_pop()
  %9492 = load i1, i1* %9490
  ret i1 %9492
else2113:
  br label %merge2114
merge2114:
  %9493 = load %nyx_string*, %nyx_string** %8940
  %9494 = getelementptr [6 x i8], [6 x i8]* @.str1040, i32 0, i32 0
  %9495 = call %nyx_string* @nyx_string_from_cstr(i8* %9494)
  %9496 = call i8* @nyx_string_to_cstr(%nyx_string* %9493)
  %9497 = call i8* @nyx_string_to_cstr(%nyx_string* %9495)
  %9498 = call i32 @strcmp(i8* %9496, i8* %9497)
  %9499 = icmp eq i32 %9498, 0
  br i1 %9499, label %then2118, label %else2119
then2118:
  %9500 = load %ASTNode, %ASTNode* %node.ptr
  %9501 = call %ASTNode @get_node_at(%ASTNode %9500, i64 0)
  %9502 = alloca %ASTNode
  store %ASTNode %9501, %ASTNode* %9502
  %9503 = load %ASTNode, %ASTNode* %9502
  %9504 = call i1 @validate_node(%ASTNode %9503)
  ret i1 %9504
else2119:
  br label %merge2120
merge2120:
  %9505 = load %nyx_string*, %nyx_string** %8940
  %9506 = getelementptr [11 x i8], [11 x i8]* @.str1041, i32 0, i32 0
  %9507 = call %nyx_string* @nyx_string_from_cstr(i8* %9506)
  %9508 = call i8* @nyx_string_to_cstr(%nyx_string* %9505)
  %9509 = call i8* @nyx_string_to_cstr(%nyx_string* %9507)
  %9510 = call i32 @strcmp(i8* %9508, i8* %9509)
  %9511 = icmp eq i32 %9510, 0
  br i1 %9511, label %then2121, label %else2122
then2121:
  ret i1 1
else2122:
  br label %merge2123
merge2123:
  %9512 = load %nyx_string*, %nyx_string** %8940
  %9513 = getelementptr [15 x i8], [15 x i8]* @.str1042, i32 0, i32 0
  %9514 = call %nyx_string* @nyx_string_from_cstr(i8* %9513)
  %9515 = call i8* @nyx_string_to_cstr(%nyx_string* %9512)
  %9516 = call i8* @nyx_string_to_cstr(%nyx_string* %9514)
  %9517 = call i32 @strcmp(i8* %9515, i8* %9516)
  %9518 = icmp eq i32 %9517, 0
  br i1 %9518, label %then2124, label %else2125
then2124:
  ret i1 1
else2125:
  br label %merge2126
merge2126:
  %9519 = load %nyx_string*, %nyx_string** %8940
  %9520 = getelementptr [13 x i8], [13 x i8]* @.str1043, i32 0, i32 0
  %9521 = call %nyx_string* @nyx_string_from_cstr(i8* %9520)
  %9522 = call i8* @nyx_string_to_cstr(%nyx_string* %9519)
  %9523 = call i8* @nyx_string_to_cstr(%nyx_string* %9521)
  %9524 = call i32 @strcmp(i8* %9522, i8* %9523)
  %9525 = icmp eq i32 %9524, 0
  br i1 %9525, label %then2127, label %else2128
then2127:
  ret i1 1
else2128:
  br label %merge2129
merge2129:
  %9526 = load %nyx_string*, %nyx_string** %8940
  %9527 = getelementptr [10 x i8], [10 x i8]* @.str1044, i32 0, i32 0
  %9528 = call %nyx_string* @nyx_string_from_cstr(i8* %9527)
  %9529 = call i8* @nyx_string_to_cstr(%nyx_string* %9526)
  %9530 = call i8* @nyx_string_to_cstr(%nyx_string* %9528)
  %9531 = call i32 @strcmp(i8* %9529, i8* %9530)
  %9532 = icmp eq i32 %9531, 0
  br i1 %9532, label %then2130, label %else2131
then2130:
  ret i1 1
else2131:
  br label %merge2132
merge2132:
  %9533 = load %nyx_string*, %nyx_string** %8940
  %9534 = getelementptr [12 x i8], [12 x i8]* @.str1045, i32 0, i32 0
  %9535 = call %nyx_string* @nyx_string_from_cstr(i8* %9534)
  %9536 = call i8* @nyx_string_to_cstr(%nyx_string* %9533)
  %9537 = call i8* @nyx_string_to_cstr(%nyx_string* %9535)
  %9538 = call i32 @strcmp(i8* %9536, i8* %9537)
  %9539 = icmp eq i32 %9538, 0
  br i1 %9539, label %then2133, label %else2134
then2133:
  ret i1 1
else2134:
  br label %merge2135
merge2135:
  %9540 = load %nyx_string*, %nyx_string** %8940
  %9541 = getelementptr [22 x i8], [22 x i8]* @.str1046, i32 0, i32 0
  %9542 = call %nyx_string* @nyx_string_from_cstr(i8* %9541)
  %9543 = call i8* @nyx_string_to_cstr(%nyx_string* %9540)
  %9544 = call i8* @nyx_string_to_cstr(%nyx_string* %9542)
  %9545 = call i32 @strcmp(i8* %9543, i8* %9544)
  %9546 = icmp eq i32 %9545, 0
  br i1 %9546, label %then2136, label %else2137
then2136:
  %9547 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %9548 = load { i64, i8* }*, { i64, i8* }** %9547
  %9549 = call i64 @nyx_array_get({ i64, i8* }* %9548, i64 0)
  %9550 = inttoptr i64 %9549 to { i64, i8* }*
  %9551 = alloca { i64, i8* }*
  store { i64, i8* }* %9550, { i64, i8* }** %9551
  %9552 = load %ASTNode, %ASTNode* %node.ptr
  %9553 = call %ASTNode @get_node_at(%ASTNode %9552, i64 2)
  %9554 = alloca %ASTNode
  store %ASTNode %9553, %ASTNode* %9554
  %9555 = load %ASTNode, %ASTNode* %9554
  %9556 = call i1 @validate_node(%ASTNode %9555)
  %9557 = xor i1 %9556, true
  br i1 %9557, label %then2139, label %else2140
then2139:
  ret i1 0
else2140:
  br label %merge2141
merge2141:
  %9558 = alloca i64
  store i64 0, i64* %9558
  br label %while_cond2142
while_cond2142:
  %9559 = load i64, i64* %9558
  %9560 = load { i64, i8* }*, { i64, i8* }** %9551
  %9561 = call i64 @nyx_array_length({ i64, i8* }* %9560)
  %9562 = icmp slt i64 %9559, %9561
  br i1 %9562, label %while_body2143, label %while_end2144
while_body2143:
  %9563 = load { i64, i8* }*, { i64, i8* }** %9551
  %9564 = load i64, i64* %9558
  %9565 = call i64 @nyx_array_get({ i64, i8* }* %9563, i64 %9564)
  %9566 = inttoptr i64 %9565 to %nyx_string*
  %9567 = alloca %nyx_string*
  store %nyx_string* %9566, %nyx_string** %9567
  %9568 = load %nyx_string*, %nyx_string** %9567
  %9569 = getelementptr [4 x i8], [4 x i8]* @.str1047, i32 0, i32 0
  %9570 = call %nyx_string* @nyx_string_from_cstr(i8* %9569)
  %9571 = call i64 @scope_declare(%nyx_string* %9568, %nyx_string* %9570)
  %9572 = load i64, i64* %9558
  %9573 = add i64 %9572, 1
  store i64 %9573, i64* %9558
  br label %while_cond2142
while_end2144:
  ret i1 1
else2137:
  br label %merge2138
merge2138:
  %9574 = load %nyx_string*, %nyx_string** %8940
  %9575 = getelementptr [10 x i8], [10 x i8]* @.str1048, i32 0, i32 0
  %9576 = call %nyx_string* @nyx_string_from_cstr(i8* %9575)
  %9577 = call i8* @nyx_string_to_cstr(%nyx_string* %9574)
  %9578 = call i8* @nyx_string_to_cstr(%nyx_string* %9576)
  %9579 = call i32 @strcmp(i8* %9577, i8* %9578)
  %9580 = icmp eq i32 %9579, 0
  br i1 %9580, label %then2145, label %else2146
then2145:
  %9581 = call i64 @scope_push()
  %9582 = load %ASTNode, %ASTNode* %node.ptr
  %9583 = call %ASTNode @get_node_at(%ASTNode %9582, i64 1)
  %9584 = alloca %ASTNode
  store %ASTNode %9583, %ASTNode* %9584
  %9585 = load %ASTNode, %ASTNode* %9584
  %9586 = call i1 @validate_node(%ASTNode %9585)
  %9587 = alloca i1
  store i1 %9586, i1* %9587
  %9588 = call i64 @scope_pop()
  %9589 = load i1, i1* %9587
  ret i1 %9589
else2146:
  br label %merge2147
merge2147:
  %9590 = load %nyx_string*, %nyx_string** %8940
  %9591 = getelementptr [7 x i8], [7 x i8]* @.str1049, i32 0, i32 0
  %9592 = call %nyx_string* @nyx_string_from_cstr(i8* %9591)
  %9593 = call i8* @nyx_string_to_cstr(%nyx_string* %9590)
  %9594 = call i8* @nyx_string_to_cstr(%nyx_string* %9592)
  %9595 = call i32 @strcmp(i8* %9593, i8* %9594)
  %9596 = icmp eq i32 %9595, 0
  br i1 %9596, label %then2148, label %else2149
then2148:
  ret i1 1
else2149:
  br label %merge2150
merge2150:
  ret i1 1
}

define { i64, i8* }* @get_errors(
) {
  %9597 = load { i64, i8* }*, { i64, i8* }** @g_errors
  ret { i64, i8* }* %9597
}

define { i64, i8* }* @get_sym_names(
) {
  %9598 = load { i64, i8* }*, { i64, i8* }** @g_sym_names
  ret { i64, i8* }* %9598
}

define { i64, i8* }* @get_sym_kinds(
) {
  %9599 = load { i64, i8* }*, { i64, i8* }** @g_sym_kinds
  ret { i64, i8* }* %9599
}

define i64 @get_sym_count(
) {
  %9600 = load i64, i64* @g_sym_count
  ret i64 %9600
}

define i1 @analyze(
%ASTNode %ast.param) {
  %ast.ptr = alloca %ASTNode
  store %ASTNode %ast.param, %ASTNode* %ast.ptr
  %9601 = call i64 @init_lang()
  %9602 = getelementptr [12 x i8], [12 x i8]* @.str1050, i32 0, i32 0
  %9603 = call %nyx_string* @nyx_string_from_cstr(i8* %9602)
  %9604 = call i8* @nyx_string_to_cstr(%nyx_string* %9603)
  %9605 = call %nyx_string* @nyx_getenv(i8* %9604)
  %9606 = alloca %nyx_string*
  store %nyx_string* %9605, %nyx_string** %9606
  %9607 = load %nyx_string*, %nyx_string** %9606
  %9608 = getelementptr [2 x i8], [2 x i8]* @.str1051, i32 0, i32 0
  %9609 = call %nyx_string* @nyx_string_from_cstr(i8* %9608)
  %9610 = call i8* @nyx_string_to_cstr(%nyx_string* %9607)
  %9611 = call i8* @nyx_string_to_cstr(%nyx_string* %9609)
  %9612 = call i32 @strcmp(i8* %9610, i8* %9611)
  %9613 = icmp eq i32 %9612, 0
  br i1 %9613, label %then2151, label %else2152
then2151:
  %9614 = getelementptr [7 x i8], [7 x i8]* @.str1052, i32 0, i32 0
  %9615 = call %nyx_string* @nyx_string_from_cstr(i8* %9614)
  %9616 = getelementptr [30 x i8], [30 x i8]* @.str1053, i32 0, i32 0
  %9617 = call %nyx_string* @nyx_string_from_cstr(i8* %9616)
  %9618 = getelementptr [26 x i8], [26 x i8]* @.str1054, i32 0, i32 0
  %9619 = call %nyx_string* @nyx_string_from_cstr(i8* %9618)
  %9620 = call %nyx_string* @msg(%nyx_string* %9617, %nyx_string* %9619)
  %9621 = call %nyx_string* @nyx_string_concat(%nyx_string* %9615, %nyx_string* %9620)
  %9622 = call i8* @nyx_string_to_cstr(%nyx_string* %9621)
  call void @nyx_print_string(i8* %9622)
  br label %merge2153
else2152:
  br label %merge2153
merge2153:
  store i64 0, i64* @g_sym_count
  store i64 0, i64* @g_marks_count
  store i64 0, i64* @g_in_function
  store i64 0, i64* @g_in_loop
  store i64 0, i64* @g_enum_reg_count
  %9623 = call i64 @register_builtins()
  %9624 = load %ASTNode, %ASTNode* %ast.ptr
  %9625 = call i1 @validate_node(%ASTNode %9624)
  %9626 = alloca i1
  store i1 %9625, i1* %9626
  %9627 = alloca i1
  store i1 true, i1* %9627
  %9628 = load i1, i1* %9626
  %9629 = xor i1 %9628, true
  br i1 %9629, label %sc_or_end2155, label %sc_or_rhs2154
sc_or_rhs2154:
  %9630 = load { i64, i8* }*, { i64, i8* }** @g_errors
  %9631 = call i64 @nyx_array_length({ i64, i8* }* %9630)
  %9632 = icmp sgt i64 %9631, 0
  store i1 %9632, i1* %9627
  br label %sc_or_end2155
sc_or_end2155:
  %9633 = load i1, i1* %9627
  br i1 %9633, label %then2156, label %else2157
then2156:
  %9634 = alloca i64
  store i64 0, i64* %9634
  br label %while_cond2159
while_cond2159:
  %9635 = load i64, i64* %9634
  %9636 = load { i64, i8* }*, { i64, i8* }** @g_errors
  %9637 = call i64 @nyx_array_length({ i64, i8* }* %9636)
  %9638 = icmp slt i64 %9635, %9637
  br i1 %9638, label %while_body2160, label %while_end2161
while_body2160:
  %9639 = load { i64, i8* }*, { i64, i8* }** @g_errors
  %9640 = load i64, i64* %9634
  %9641 = call i64 @nyx_array_get({ i64, i8* }* %9639, i64 %9640)
  %9642 = inttoptr i64 %9641 to %nyx_string*
  %9643 = alloca %nyx_string*
  store %nyx_string* %9642, %nyx_string** %9643
  %9644 = getelementptr [7 x i8], [7 x i8]* @.str1055, i32 0, i32 0
  %9645 = call %nyx_string* @nyx_string_from_cstr(i8* %9644)
  %9646 = load %nyx_string*, %nyx_string** %9643
  %9647 = call %nyx_string* @nyx_string_concat(%nyx_string* %9645, %nyx_string* %9646)
  %9648 = call i8* @nyx_string_to_cstr(%nyx_string* %9647)
  call void @nyx_print_string(i8* %9648)
  %9649 = load i64, i64* %9634
  %9650 = add i64 %9649, 1
  store i64 %9650, i64* %9634
  br label %while_cond2159
while_end2161:
  ret i1 0
else2157:
  br label %merge2158
merge2158:
  %9651 = load %nyx_string*, %nyx_string** %9606
  %9652 = getelementptr [2 x i8], [2 x i8]* @.str1056, i32 0, i32 0
  %9653 = call %nyx_string* @nyx_string_from_cstr(i8* %9652)
  %9654 = call i8* @nyx_string_to_cstr(%nyx_string* %9651)
  %9655 = call i8* @nyx_string_to_cstr(%nyx_string* %9653)
  %9656 = call i32 @strcmp(i8* %9654, i8* %9655)
  %9657 = icmp eq i32 %9656, 0
  br i1 %9657, label %then2162, label %else2163
then2162:
  %9658 = getelementptr [7 x i8], [7 x i8]* @.str1057, i32 0, i32 0
  %9659 = call %nyx_string* @nyx_string_from_cstr(i8* %9658)
  %9660 = getelementptr [25 x i8], [25 x i8]* @.str1058, i32 0, i32 0
  %9661 = call %nyx_string* @nyx_string_from_cstr(i8* %9660)
  %9662 = getelementptr [22 x i8], [22 x i8]* @.str1059, i32 0, i32 0
  %9663 = call %nyx_string* @nyx_string_from_cstr(i8* %9662)
  %9664 = call %nyx_string* @msg(%nyx_string* %9661, %nyx_string* %9663)
  %9665 = call %nyx_string* @nyx_string_concat(%nyx_string* %9659, %nyx_string* %9664)
  %9666 = call i8* @nyx_string_to_cstr(%nyx_string* %9665)
  call void @nyx_print_string(i8* %9666)
  br label %merge2164
else2163:
  br label %merge2164
merge2164:
  ret i1 1
}

; Inicialización de variables globales (llamada automática vía ctor)
define void @__nyx_init_globals() {
entry:
  %1 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %1, { i64, i8* }** @g_errors
  %2 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %2, { i64, i8* }** @g_sym_names
  %3 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %3, { i64, i8* }** @g_sym_kinds
  %4 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %4, { i64, i8* }** @g_sym_arities
  %5 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %5, { i64, i8* }** @g_scope_marks
  %6 = getelementptr [1 x i8], [1 x i8]* @.str.init.6, i32 0, i32 0
  %7 = call %nyx_string* @nyx_string_from_cstr(i8* %6)
  store %nyx_string* %7, %nyx_string** @g_current_fn
  %8 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %8, { i64, i8* }** @g_enum_reg_names
  %9 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %9, { i64, i8* }** @g_enum_reg_variants
  %10 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %10, { i64, i8* }** @g_struct_reg_names
  %11 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %11, { i64, i8* }** @g_struct_reg_fields
  %12 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %12, { i64, i8* }** @g_struct_reg_field_types
  %13 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %13, { i64, i8* }** @g_var_types
  %14 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %14, { i64, i8* }** @g_fn_sig_names
  %15 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %15, { i64, i8* }** @g_fn_sig_params
  %16 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %16, { i64, i8* }** @g_fn_sig_returns
  %17 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %17, { i64, i8* }** @g_fn_sig_type_params
  %18 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %18, { i64, i8* }** @g_current_fn_ret_type
  %19 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %19, { i64, i8* }** @g_alias_names
  %20 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %20, { i64, i8* }** @g_alias_targets
  %21 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %21, { i64, i8* }** @g_impl_method_types
  %22 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %22, { i64, i8* }** @g_impl_method_names
  %23 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %23, { i64, i8* }** @g_impl_method_params
  %24 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %24, { i64, i8* }** @g_impl_method_returns
  %25 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %25, { i64, i8* }** @g_impl_method_type_params
  %26 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %26, { i64, i8* }** @g_trait_impl_types
  %27 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %27, { i64, i8* }** @g_trait_impl_traits
  %28 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %28, { i64, i8* }** @g_known_methods
  %29 = getelementptr [1 x i8], [1 x i8]* @.str.init.29, i32 0, i32 0
  %30 = call %nyx_string* @nyx_string_from_cstr(i8* %29)
  store %nyx_string* %30, %nyx_string** @g_lang
  ret void
}

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__nyx_init_globals, i8* null }]

attributes #0 = { returns_twice }

