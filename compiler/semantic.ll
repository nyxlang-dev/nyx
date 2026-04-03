source_filename = "script.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [1 x i8] c"\00"
@.str1 = private unnamed_addr constant [8 x i8] c"error: \00"
@.str2 = private unnamed_addr constant [11 x i8] c"error en '\00"
@.str3 = private unnamed_addr constant [4 x i8] c"': \00"
@.str4 = private unnamed_addr constant [1 x i8] c"\00"
@.str5 = private unnamed_addr constant [6 x i8] c"print\00"
@.str6 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str7 = private unnamed_addr constant [14 x i8] c"int_to_string\00"
@.str8 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str9 = private unnamed_addr constant [16 x i8] c"float_to_string\00"
@.str10 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str11 = private unnamed_addr constant [15 x i8] c"char_to_string\00"
@.str12 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str13 = private unnamed_addr constant [13 x i8] c"int_to_float\00"
@.str14 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str15 = private unnamed_addr constant [13 x i8] c"float_to_int\00"
@.str16 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str17 = private unnamed_addr constant [10 x i8] c"read_file\00"
@.str18 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str19 = private unnamed_addr constant [11 x i8] c"write_file\00"
@.str20 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str21 = private unnamed_addr constant [12 x i8] c"file_exists\00"
@.str22 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str23 = private unnamed_addr constant [10 x i8] c"file_open\00"
@.str24 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str25 = private unnamed_addr constant [11 x i8] c"file_close\00"
@.str26 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str27 = private unnamed_addr constant [15 x i8] c"file_read_line\00"
@.str28 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str29 = private unnamed_addr constant [16 x i8] c"file_read_bytes\00"
@.str30 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str31 = private unnamed_addr constant [18 x i8] c"file_write_string\00"
@.str32 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str33 = private unnamed_addr constant [17 x i8] c"file_write_bytes\00"
@.str34 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str35 = private unnamed_addr constant [10 x i8] c"file_seek\00"
@.str36 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str37 = private unnamed_addr constant [10 x i8] c"file_tell\00"
@.str38 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str39 = private unnamed_addr constant [11 x i8] c"file_flush\00"
@.str40 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str41 = private unnamed_addr constant [6 x i8] c"mkdir\00"
@.str42 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str43 = private unnamed_addr constant [8 x i8] c"readdir\00"
@.str44 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str45 = private unnamed_addr constant [12 x i8] c"remove_file\00"
@.str46 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str47 = private unnamed_addr constant [12 x i8] c"rename_file\00"
@.str48 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str49 = private unnamed_addr constant [12 x i8] c"crc32_bytes\00"
@.str50 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str51 = private unnamed_addr constant [18 x i8] c"string_from_bytes\00"
@.str52 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str53 = private unnamed_addr constant [23 x i8] c"setup_shutdown_handler\00"
@.str54 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str55 = private unnamed_addr constant [11 x i8] c"tcp_listen\00"
@.str56 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str57 = private unnamed_addr constant [11 x i8] c"tcp_accept\00"
@.str58 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str59 = private unnamed_addr constant [12 x i8] c"tcp_connect\00"
@.str60 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str61 = private unnamed_addr constant [9 x i8] c"tcp_read\00"
@.str62 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str63 = private unnamed_addr constant [15 x i8] c"tcp_read_exact\00"
@.str64 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str65 = private unnamed_addr constant [14 x i8] c"tcp_read_line\00"
@.str66 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str67 = private unnamed_addr constant [10 x i8] c"tcp_write\00"
@.str68 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str69 = private unnamed_addr constant [10 x i8] c"tcp_close\00"
@.str70 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str71 = private unnamed_addr constant [24 x i8] c"http_parse_request_fast\00"
@.str72 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str73 = private unnamed_addr constant [9 x i8] c"udp_bind\00"
@.str74 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str75 = private unnamed_addr constant [11 x i8] c"udp_sendto\00"
@.str76 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str77 = private unnamed_addr constant [13 x i8] c"udp_recvfrom\00"
@.str78 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str79 = private unnamed_addr constant [8 x i8] c"resolve\00"
@.str80 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str81 = private unnamed_addr constant [16 x i8] c"resp_write_bulk\00"
@.str82 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str83 = private unnamed_addr constant [23 x i8] c"resp_read_command_fast\00"
@.str84 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str85 = private unnamed_addr constant [12 x i8] c"getpeername\00"
@.str86 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str87 = private unnamed_addr constant [13 x i8] c"thread_spawn\00"
@.str88 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str89 = private unnamed_addr constant [12 x i8] c"thread_join\00"
@.str90 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str91 = private unnamed_addr constant [11 x i8] c"spawn_task\00"
@.str92 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str93 = private unnamed_addr constant [11 x i8] c"task_await\00"
@.str94 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str95 = private unnamed_addr constant [12 x i8] c"task_cancel\00"
@.str96 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str97 = private unnamed_addr constant [10 x i8] c"task_race\00"
@.str98 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str99 = private unnamed_addr constant [10 x i8] c"mutex_new\00"
@.str100 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str101 = private unnamed_addr constant [11 x i8] c"mutex_lock\00"
@.str102 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str103 = private unnamed_addr constant [13 x i8] c"mutex_unlock\00"
@.str104 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str105 = private unnamed_addr constant [14 x i8] c"mutex_destroy\00"
@.str106 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str107 = private unnamed_addr constant [12 x i8] c"channel_new\00"
@.str108 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str109 = private unnamed_addr constant [13 x i8] c"channel_send\00"
@.str110 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str111 = private unnamed_addr constant [13 x i8] c"channel_recv\00"
@.str112 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str113 = private unnamed_addr constant [16 x i8] c"channel_destroy\00"
@.str114 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str115 = private unnamed_addr constant [5 x i8] c"exec\00"
@.str116 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str117 = private unnamed_addr constant [7 x i8] c"getenv\00"
@.str118 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str119 = private unnamed_addr constant [15 x i8] c"getenv_default\00"
@.str120 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str121 = private unnamed_addr constant [7 x i8] c"setenv\00"
@.str122 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str123 = private unnamed_addr constant [5 x i8] c"exit\00"
@.str124 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str125 = private unnamed_addr constant [9 x i8] c"get_args\00"
@.str126 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str127 = private unnamed_addr constant [6 x i8] c"sleep\00"
@.str128 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str129 = private unnamed_addr constant [5 x i8] c"time\00"
@.str130 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str131 = private unnamed_addr constant [8 x i8] c"time_ms\00"
@.str132 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str133 = private unnamed_addr constant [8 x i8] c"time_us\00"
@.str134 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str135 = private unnamed_addr constant [9 x i8] c"math_log\00"
@.str136 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str137 = private unnamed_addr constant [10 x i8] c"math_log2\00"
@.str138 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str139 = private unnamed_addr constant [11 x i8] c"math_log10\00"
@.str140 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str141 = private unnamed_addr constant [9 x i8] c"math_exp\00"
@.str142 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str143 = private unnamed_addr constant [9 x i8] c"math_sin\00"
@.str144 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str145 = private unnamed_addr constant [9 x i8] c"math_cos\00"
@.str146 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str147 = private unnamed_addr constant [9 x i8] c"math_tan\00"
@.str148 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str149 = private unnamed_addr constant [10 x i8] c"math_asin\00"
@.str150 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str151 = private unnamed_addr constant [10 x i8] c"math_acos\00"
@.str152 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str153 = private unnamed_addr constant [10 x i8] c"math_atan\00"
@.str154 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str155 = private unnamed_addr constant [11 x i8] c"math_atan2\00"
@.str156 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str157 = private unnamed_addr constant [10 x i8] c"math_sqrt\00"
@.str158 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str159 = private unnamed_addr constant [10 x i8] c"math_ceil\00"
@.str160 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str161 = private unnamed_addr constant [11 x i8] c"math_floor\00"
@.str162 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str163 = private unnamed_addr constant [11 x i8] c"math_round\00"
@.str164 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str165 = private unnamed_addr constant [10 x i8] c"math_fabs\00"
@.str166 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str167 = private unnamed_addr constant [10 x i8] c"math_fmod\00"
@.str168 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str169 = private unnamed_addr constant [14 x i8] c"signal_handle\00"
@.str170 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str171 = private unnamed_addr constant [13 x i8] c"signal_reset\00"
@.str172 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str173 = private unnamed_addr constant [14 x i8] c"signal_ignore\00"
@.str174 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str175 = private unnamed_addr constant [12 x i8] c"regex_match\00"
@.str176 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str177 = private unnamed_addr constant [15 x i8] c"regex_is_match\00"
@.str178 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str179 = private unnamed_addr constant [14 x i8] c"regex_replace\00"
@.str180 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str181 = private unnamed_addr constant [18 x i8] c"regex_replace_all\00"
@.str182 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str183 = private unnamed_addr constant [13 x i8] c"datetime_now\00"
@.str184 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str185 = private unnamed_addr constant [16 x i8] c"datetime_format\00"
@.str186 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str187 = private unnamed_addr constant [11 x i8] c"time_epoch\00"
@.str188 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str189 = private unnamed_addr constant [20 x i8] c"datetime_from_epoch\00"
@.str190 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str191 = private unnamed_addr constant [15 x i8] c"datetime_parse\00"
@.str192 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str193 = private unnamed_addr constant [14 x i8] c"datetime_year\00"
@.str194 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str195 = private unnamed_addr constant [15 x i8] c"datetime_month\00"
@.str196 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str197 = private unnamed_addr constant [13 x i8] c"datetime_day\00"
@.str198 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str199 = private unnamed_addr constant [14 x i8] c"datetime_hour\00"
@.str200 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str201 = private unnamed_addr constant [16 x i8] c"datetime_minute\00"
@.str202 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str203 = private unnamed_addr constant [16 x i8] c"datetime_second\00"
@.str204 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str205 = private unnamed_addr constant [17 x i8] c"datetime_weekday\00"
@.str206 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str207 = private unnamed_addr constant [7 x i8] c"sha256\00"
@.str208 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str209 = private unnamed_addr constant [4 x i8] c"md5\00"
@.str210 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str211 = private unnamed_addr constant [12 x i8] c"hmac_sha256\00"
@.str212 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str213 = private unnamed_addr constant [10 x i8] c"https_get\00"
@.str214 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str215 = private unnamed_addr constant [11 x i8] c"https_post\00"
@.str216 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str217 = private unnamed_addr constant [12 x i8] c"tls_connect\00"
@.str218 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str219 = private unnamed_addr constant [9 x i8] c"tls_read\00"
@.str220 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str221 = private unnamed_addr constant [10 x i8] c"tls_write\00"
@.str222 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str223 = private unnamed_addr constant [10 x i8] c"tls_close\00"
@.str224 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str225 = private unnamed_addr constant [16 x i8] c"tls_server_init\00"
@.str226 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str227 = private unnamed_addr constant [20 x i8] c"tls_server_add_cert\00"
@.str228 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str229 = private unnamed_addr constant [11 x i8] c"tls_accept\00"
@.str230 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str231 = private unnamed_addr constant [14 x i8] c"tls_read_line\00"
@.str232 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str233 = private unnamed_addr constant [15 x i8] c"tls_write_conn\00"
@.str234 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str235 = private unnamed_addr constant [15 x i8] c"tls_close_conn\00"
@.str236 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str237 = private unnamed_addr constant [10 x i8] c"read_line\00"
@.str238 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str239 = private unnamed_addr constant [17 x i8] c"print_no_newline\00"
@.str240 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str241 = private unnamed_addr constant [14 x i8] c"string_to_int\00"
@.str242 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str243 = private unnamed_addr constant [16 x i8] c"string_to_float\00"
@.str244 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str245 = private unnamed_addr constant [16 x i8] c"str_byte_length\00"
@.str246 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str247 = private unnamed_addr constant [5 x i8] c"free\00"
@.str248 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str249 = private unnamed_addr constant [6 x i8] c"alloc\00"
@.str250 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str251 = private unnamed_addr constant [6 x i8] c"panic\00"
@.str252 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str253 = private unnamed_addr constant [4 x i8] c"run\00"
@.str254 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str255 = private unnamed_addr constant [7 x i8] c"format\00"
@.str256 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str257 = private unnamed_addr constant [14 x i8] c"volatile_load\00"
@.str258 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str259 = private unnamed_addr constant [15 x i8] c"volatile_store\00"
@.str260 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str261 = private unnamed_addr constant [11 x i8] c"atomic_add\00"
@.str262 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str263 = private unnamed_addr constant [11 x i8] c"atomic_sub\00"
@.str264 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str265 = private unnamed_addr constant [11 x i8] c"atomic_cas\00"
@.str266 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str267 = private unnamed_addr constant [4 x i8] c"Map\00"
@.str268 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str269 = private unnamed_addr constant [14 x i8] c"StringBuilder\00"
@.str270 = private unnamed_addr constant [8 x i8] c"builtin\00"
@.str271 = private unnamed_addr constant [9 x i8] c"function\00"
@.str272 = private unnamed_addr constant [4 x i8] c"...\00"
@.str273 = private unnamed_addr constant [3 x i8] c"fn\00"
@.str274 = private unnamed_addr constant [9 x i8] c"async_fn\00"
@.str275 = private unnamed_addr constant [3 x i8] c"fn\00"
@.str276 = private unnamed_addr constant [7 x i8] c"struct\00"
@.str277 = private unnamed_addr constant [7 x i8] c"struct\00"
@.str278 = private unnamed_addr constant [9 x i8] c"enum_def\00"
@.str279 = private unnamed_addr constant [5 x i8] c"enum\00"
@.str280 = private unnamed_addr constant [7 x i8] c"export\00"
@.str281 = private unnamed_addr constant [9 x i8] c"function\00"
@.str282 = private unnamed_addr constant [4 x i8] c"...\00"
@.str283 = private unnamed_addr constant [3 x i8] c"fn\00"
@.str284 = private unnamed_addr constant [7 x i8] c"struct\00"
@.str285 = private unnamed_addr constant [7 x i8] c"struct\00"
@.str286 = private unnamed_addr constant [9 x i8] c"enum_def\00"
@.str287 = private unnamed_addr constant [5 x i8] c"enum\00"
@.str288 = private unnamed_addr constant [7 x i8] c"import\00"
@.str289 = private unnamed_addr constant [7 x i8] c"import\00"
@.str290 = private unnamed_addr constant [10 x i8] c"extern_fn\00"
@.str291 = private unnamed_addr constant [3 x i8] c"fn\00"
@.str292 = private unnamed_addr constant [12 x i8] c"module_decl\00"
@.str293 = private unnamed_addr constant [7 x i8] c"module\00"
@.str294 = private unnamed_addr constant [14 x i8] c"import_module\00"
@.str295 = private unnamed_addr constant [1 x i8] c"\00"
@.str296 = private unnamed_addr constant [7 x i8] c"module\00"
@.str297 = private unnamed_addr constant [5 x i8] c"impl\00"
@.str298 = private unnamed_addr constant [2 x i8] c"_\00"
@.str299 = private unnamed_addr constant [3 x i8] c"fn\00"
@.str300 = private unnamed_addr constant [10 x i8] c"trait_def\00"
@.str301 = private unnamed_addr constant [6 x i8] c"trait\00"
@.str302 = private unnamed_addr constant [11 x i8] c"impl_trait\00"
@.str303 = private unnamed_addr constant [2 x i8] c"_\00"
@.str304 = private unnamed_addr constant [3 x i8] c"fn\00"
@.str305 = private unnamed_addr constant [1 x i8] c"\00"
@.str306 = private unnamed_addr constant [2 x i8] c"'\00"
@.str307 = private unnamed_addr constant [15 x i8] c"' no declarado\00"
@.str308 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str309 = private unnamed_addr constant [2 x i8] c"'\00"
@.str310 = private unnamed_addr constant [10 x i8] c"' espera \00"
@.str311 = private unnamed_addr constant [23 x i8] c" argumentos, recibió \00"
@.str312 = private unnamed_addr constant [4 x i8] c"var\00"
@.str313 = private unnamed_addr constant [4 x i8] c"let\00"
@.str314 = private unnamed_addr constant [2 x i8] c"'\00"
@.str315 = private unnamed_addr constant [29 x i8] c"' ya declarada en este scope\00"
@.str316 = private unnamed_addr constant [6 x i8] c"const\00"
@.str317 = private unnamed_addr constant [1 x i8] c"\00"
@.str318 = private unnamed_addr constant [11 x i8] c"variable '\00"
@.str319 = private unnamed_addr constant [15 x i8] c"' no declarada\00"
@.str320 = private unnamed_addr constant [4 x i8] c"let\00"
@.str321 = private unnamed_addr constant [2 x i8] c"'\00"
@.str322 = private unnamed_addr constant [35 x i8] c"' es inmutable (declarada con let)\00"
@.str323 = private unnamed_addr constant [6 x i8] c"const\00"
@.str324 = private unnamed_addr constant [2 x i8] c"'\00"
@.str325 = private unnamed_addr constant [37 x i8] c"' es constante (declarada con const)\00"
@.str326 = private unnamed_addr constant [6 x i8] c"param\00"
@.str327 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str328 = private unnamed_addr constant [8 x i8] c"for_var\00"
@.str329 = private unnamed_addr constant [27 x i8] c"'return' fuera de función\00"
@.str330 = private unnamed_addr constant [22 x i8] c"'break' fuera de loop\00"
@.str331 = private unnamed_addr constant [25 x i8] c"'continue' fuera de loop\00"
@.str332 = private unnamed_addr constant [1 x i8] c"\00"
@.str333 = private unnamed_addr constant [9 x i8] c"wildcard\00"
@.str334 = private unnamed_addr constant [19 x i8] c"identifier_pattern\00"
@.str335 = private unnamed_addr constant [15 x i8] c"struct_pattern\00"
@.str336 = private unnamed_addr constant [21 x i8] c"nested_match_pattern\00"
@.str337 = private unnamed_addr constant [14 x i8] c"match_pattern\00"
@.str338 = private unnamed_addr constant [1 x i8] c"\00"
@.str339 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str340 = private unnamed_addr constant [11 x i8] c"or_pattern\00"
@.str341 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str342 = private unnamed_addr constant [14 x i8] c"match_pattern\00"
@.str343 = private unnamed_addr constant [1 x i8] c"\00"
@.str344 = private unnamed_addr constant [1 x i8] c"\00"
@.str345 = private unnamed_addr constant [28 x i8] c"match no exhaustivo sobre '\00"
@.str346 = private unnamed_addr constant [9 x i8] c"': falta\00"
@.str347 = private unnamed_addr constant [2 x i8] c"n\00"
@.str348 = private unnamed_addr constant [2 x i8] c",\00"
@.str349 = private unnamed_addr constant [2 x i8] c" \00"
@.str350 = private unnamed_addr constant [2 x i8] c".\00"
@.str351 = private unnamed_addr constant [14 x i8] c"match_pattern\00"
@.str352 = private unnamed_addr constant [4 x i8] c"let\00"
@.str353 = private unnamed_addr constant [19 x i8] c"identifier_pattern\00"
@.str354 = private unnamed_addr constant [4 x i8] c"let\00"
@.str355 = private unnamed_addr constant [15 x i8] c"struct_pattern\00"
@.str356 = private unnamed_addr constant [4 x i8] c"let\00"
@.str357 = private unnamed_addr constant [21 x i8] c"nested_match_pattern\00"
@.str358 = private unnamed_addr constant [19 x i8] c"identifier_pattern\00"
@.str359 = private unnamed_addr constant [4 x i8] c"let\00"
@.str360 = private unnamed_addr constant [14 x i8] c"match_pattern\00"
@.str361 = private unnamed_addr constant [4 x i8] c"let\00"
@.str362 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str363 = private unnamed_addr constant [7 x i8] c"number\00"
@.str364 = private unnamed_addr constant [10 x i8] c"float_lit\00"
@.str365 = private unnamed_addr constant [7 x i8] c"string\00"
@.str366 = private unnamed_addr constant [5 x i8] c"bool\00"
@.str367 = private unnamed_addr constant [5 x i8] c"char\00"
@.str368 = private unnamed_addr constant [11 x i8] c"identifier\00"
@.str369 = private unnamed_addr constant [6 x i8] c"empty\00"
@.str370 = private unnamed_addr constant [6 x i8] c"error\00"
@.str371 = private unnamed_addr constant [9 x i8] c"wildcard\00"
@.str372 = private unnamed_addr constant [6 x i8] c"block\00"
@.str373 = private unnamed_addr constant [3 x i8] c"if\00"
@.str374 = private unnamed_addr constant [6 x i8] c"while\00"
@.str375 = private unnamed_addr constant [4 x i8] c"for\00"
@.str376 = private unnamed_addr constant [7 x i8] c"return\00"
@.str377 = private unnamed_addr constant [6 x i8] c"break\00"
@.str378 = private unnamed_addr constant [9 x i8] c"continue\00"
@.str379 = private unnamed_addr constant [4 x i8] c"let\00"
@.str380 = private unnamed_addr constant [6 x i8] c"const\00"
@.str381 = private unnamed_addr constant [9 x i8] c"function\00"
@.str382 = private unnamed_addr constant [9 x i8] c"async_fn\00"
@.str383 = private unnamed_addr constant [11 x i8] c"await_expr\00"
@.str384 = private unnamed_addr constant [7 x i8] c"struct\00"
@.str385 = private unnamed_addr constant [9 x i8] c"enum_def\00"
@.str386 = private unnamed_addr constant [5 x i8] c"impl\00"
@.str387 = private unnamed_addr constant [10 x i8] c"trait_def\00"
@.str388 = private unnamed_addr constant [11 x i8] c"impl_trait\00"
@.str389 = private unnamed_addr constant [7 x i8] c"export\00"
@.str390 = private unnamed_addr constant [7 x i8] c"import\00"
@.str391 = private unnamed_addr constant [14 x i8] c"import_module\00"
@.str392 = private unnamed_addr constant [12 x i8] c"module_decl\00"
@.str393 = private unnamed_addr constant [11 x i8] c"type_alias\00"
@.str394 = private unnamed_addr constant [10 x i8] c"extern_fn\00"
@.str395 = private unnamed_addr constant [6 x i8] c"binop\00"
@.str396 = private unnamed_addr constant [5 x i8] c"unop\00"
@.str397 = private unnamed_addr constant [5 x i8] c"call\00"
@.str398 = private unnamed_addr constant [6 x i8] c"array\00"
@.str399 = private unnamed_addr constant [6 x i8] c"index\00"
@.str400 = private unnamed_addr constant [6 x i8] c"range\00"
@.str401 = private unnamed_addr constant [7 x i8] c"assign\00"
@.str402 = private unnamed_addr constant [16 x i8] c"compound_assign\00"
@.str403 = private unnamed_addr constant [13 x i8] c"index_assign\00"
@.str404 = private unnamed_addr constant [13 x i8] c"field_assign\00"
@.str405 = private unnamed_addr constant [12 x i8] c"struct_init\00"
@.str406 = private unnamed_addr constant [13 x i8] c"field_access\00"
@.str407 = private unnamed_addr constant [12 x i8] c"method_call\00"
@.str408 = private unnamed_addr constant [6 x i8] c"match\00"
@.str409 = private unnamed_addr constant [10 x i8] c"match_arm\00"
@.str410 = private unnamed_addr constant [14 x i8] c"match_pattern\00"
@.str411 = private unnamed_addr constant [13 x i8] c"enum_variant\00"
@.str412 = private unnamed_addr constant [7 x i8] c"try_op\00"
@.str413 = private unnamed_addr constant [5 x i8] c"cast\00"
@.str414 = private unnamed_addr constant [7 x i8] c"sizeof\00"
@.str415 = private unnamed_addr constant [8 x i8] c"alignof\00"
@.str416 = private unnamed_addr constant [13 x i8] c"unsafe_block\00"
@.str417 = private unnamed_addr constant [8 x i8] c"addr_of\00"
@.str418 = private unnamed_addr constant [6 x i8] c"deref\00"
@.str419 = private unnamed_addr constant [13 x i8] c"deref_assign\00"
@.str420 = private unnamed_addr constant [11 x i8] c"static_var\00"
@.str421 = private unnamed_addr constant [4 x i8] c"var\00"
@.str422 = private unnamed_addr constant [6 x i8] c"defer\00"
@.str423 = private unnamed_addr constant [10 x i8] c"try_catch\00"
@.str424 = private unnamed_addr constant [4 x i8] c"var\00"
@.str425 = private unnamed_addr constant [6 x i8] c"throw\00"
@.str426 = private unnamed_addr constant [11 x i8] c"inline_asm\00"
@.str427 = private unnamed_addr constant [15 x i8] c"inline_asm_gcc\00"
@.str428 = private unnamed_addr constant [13 x i8] c"generic_call\00"
@.str429 = private unnamed_addr constant [10 x i8] c"tuple_lit\00"
@.str430 = private unnamed_addr constant [12 x i8] c"tuple_index\00"
@.str431 = private unnamed_addr constant [22 x i8] c"let_destructure_tuple\00"
@.str432 = private unnamed_addr constant [4 x i8] c"let\00"
@.str433 = private unnamed_addr constant [10 x i8] c"test_decl\00"
@.str434 = private unnamed_addr constant [7 x i8] c"assert\00"
@.str435 = private unnamed_addr constant [36 x i8] c"  → Análisis semántico iniciado\00"
@.str436 = private unnamed_addr constant [7 x i8] c"  ✗ \00"
@.str437 = private unnamed_addr constant [31 x i8] c"  → Análisis completado: OK\00"
@__nyx_test_failed = external global i64
@.str.init.6 = private unnamed_addr constant [1 x i8] c"\00"
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


define i64 @println(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %1 = load %nyx_string*, %nyx_string** %s.ptr
  %2 = call i8* @nyx_string_to_cstr(%nyx_string* %1)
  call void @nyx_print_string(i8* %2)
  ret i64 0
}

define i64 @abs(
i64 %n.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %3 = load i64, i64* %n.ptr
  %4 = icmp slt i64 %3, 0
  br i1 %4, label %then0, label %else1
then0:
  %5 = load i64, i64* %n.ptr
  %6 = sub i64 0, %5
  ret i64 %6
else1:
  br label %merge2
merge2:
  %7 = load i64, i64* %n.ptr
  ret i64 %7
}

define i64 @min(
i64 %a.param, i64 %b.param) {
  %a.ptr = alloca i64
  store i64 %a.param, i64* %a.ptr
  %b.ptr = alloca i64
  store i64 %b.param, i64* %b.ptr
  %8 = load i64, i64* %a.ptr
  %9 = load i64, i64* %b.ptr
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %then3, label %else4
then3:
  %11 = load i64, i64* %a.ptr
  ret i64 %11
else4:
  br label %merge5
merge5:
  %12 = load i64, i64* %b.ptr
  ret i64 %12
}

define i64 @max(
i64 %a.param, i64 %b.param) {
  %a.ptr = alloca i64
  store i64 %a.param, i64* %a.ptr
  %b.ptr = alloca i64
  store i64 %b.param, i64* %b.ptr
  %13 = load i64, i64* %a.ptr
  %14 = load i64, i64* %b.ptr
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %then6, label %else7
then6:
  %16 = load i64, i64* %a.ptr
  ret i64 %16
else7:
  br label %merge8
merge8:
  %17 = load i64, i64* %b.ptr
  ret i64 %17
}

define i64 @clamp(
i64 %n.param, i64 %lo.param, i64 %hi.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %lo.ptr = alloca i64
  store i64 %lo.param, i64* %lo.ptr
  %hi.ptr = alloca i64
  store i64 %hi.param, i64* %hi.ptr
  %18 = load i64, i64* %lo.ptr
  %19 = load i64, i64* %n.ptr
  %20 = load i64, i64* %hi.ptr
  %21 = call i64 @min(i64 %19, i64 %20)
  %22 = call i64 @max(i64 %18, i64 %21)
  ret i64 %22
}

define i64 @pow_int(
i64 %base.param, i64 %exp.param) {
  %base.ptr = alloca i64
  store i64 %base.param, i64* %base.ptr
  %exp.ptr = alloca i64
  store i64 %exp.param, i64* %exp.ptr
  %23 = alloca i64
  store i64 1, i64* %23
  %24 = alloca i64
  store i64 0, i64* %24
  br label %while_cond9
while_cond9:
  %25 = load i64, i64* %24
  %26 = load i64, i64* %exp.ptr
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %while_body10, label %while_end11
while_body10:
  %28 = load i64, i64* %23
  %29 = load i64, i64* %base.ptr
  %30 = mul i64 %28, %29
  store i64 %30, i64* %23
  %31 = load i64, i64* %24
  %32 = add i64 %31, 1
  store i64 %32, i64* %24
  br label %while_cond9
while_end11:
  %33 = load i64, i64* %23
  ret i64 %33
}

define i64 @gcd(
i64 %a.param, i64 %b.param) {
  %a.ptr = alloca i64
  store i64 %a.param, i64* %a.ptr
  %b.ptr = alloca i64
  store i64 %b.param, i64* %b.ptr
  %34 = load i64, i64* %a.ptr
  %35 = call i64 @abs(i64 %34)
  %36 = alloca i64
  store i64 %35, i64* %36
  %37 = load i64, i64* %b.ptr
  %38 = call i64 @abs(i64 %37)
  %39 = alloca i64
  store i64 %38, i64* %39
  br label %while_cond12
while_cond12:
  %40 = load i64, i64* %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %while_body13, label %while_end14
while_body13:
  %42 = load i64, i64* %39
  %43 = alloca i64
  store i64 %42, i64* %43
  %44 = load i64, i64* %36
  %45 = load i64, i64* %39
  %46 = srem i64 %44, %45
  store i64 %46, i64* %39
  %47 = load i64, i64* %43
  store i64 %47, i64* %36
  br label %while_cond12
while_end14:
  %48 = load i64, i64* %36
  ret i64 %48
}

define i64 @lcm(
i64 %a.param, i64 %b.param) {
  %a.ptr = alloca i64
  store i64 %a.param, i64* %a.ptr
  %b.ptr = alloca i64
  store i64 %b.param, i64* %b.ptr
  %49 = load i64, i64* %a.ptr
  %50 = icmp eq i64 %49, 0
  %51 = load i64, i64* %b.ptr
  %52 = icmp eq i64 %51, 0
  %53 = or i1 %50, %52
  br i1 %53, label %then15, label %else16
then15:
  ret i64 0
else16:
  br label %merge17
merge17:
  %54 = load i64, i64* %a.ptr
  %55 = load i64, i64* %b.ptr
  %56 = mul i64 %54, %55
  %57 = call i64 @abs(i64 %56)
  %58 = load i64, i64* %a.ptr
  %59 = load i64, i64* %b.ptr
  %60 = call i64 @gcd(i64 %58, i64 %59)
  %61 = sdiv i64 %57, %60
  ret i64 %61
}

define i1 @is_even(
i64 %n.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %62 = load i64, i64* %n.ptr
  %63 = srem i64 %62, 2
  %64 = icmp eq i64 %63, 0
  ret i1 %64
}

define i1 @is_odd(
i64 %n.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %65 = load i64, i64* %n.ptr
  %66 = srem i64 %65, 2
  %67 = icmp ne i64 %66, 0
  ret i1 %67
}

define i64 @sqrt_int(
i64 %n.param) {
  %n.ptr = alloca i64
  store i64 %n.param, i64* %n.ptr
  %68 = load i64, i64* %n.ptr
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %then18, label %else19
then18:
  %70 = sub i64 0, 1
  ret i64 %70
else19:
  br label %merge20
merge20:
  %71 = load i64, i64* %n.ptr
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %then21, label %else22
then21:
  ret i64 0
else22:
  br label %merge23
merge23:
  %73 = load i64, i64* %n.ptr
  %74 = alloca i64
  store i64 %73, i64* %74
  %75 = load i64, i64* %74
  %76 = add i64 %75, 1
  %77 = sdiv i64 %76, 2
  %78 = alloca i64
  store i64 %77, i64* %78
  br label %while_cond24
while_cond24:
  %79 = load i64, i64* %78
  %80 = load i64, i64* %74
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %while_body25, label %while_end26
while_body25:
  %82 = load i64, i64* %78
  store i64 %82, i64* %74
  %83 = load i64, i64* %74
  %84 = load i64, i64* %n.ptr
  %85 = load i64, i64* %74
  %86 = sdiv i64 %84, %85
  %87 = add i64 %83, %86
  %88 = sdiv i64 %87, 2
  store i64 %88, i64* %78
  br label %while_cond24
while_end26:
  %89 = load i64, i64* %74
  ret i64 %89
}

define i64 @array_sum(
{ i64, i8* }* %arr.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %90 = alloca i64
  store i64 0, i64* %90
  %91 = alloca i64
  store i64 0, i64* %91
  br label %while_cond27
while_cond27:
  %92 = load i64, i64* %91
  %93 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %94 = call i64 @nyx_array_length({ i64, i8* }* %93)
  %95 = icmp slt i64 %92, %94
  br i1 %95, label %while_body28, label %while_end29
while_body28:
  %96 = load i64, i64* %90
  %97 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %98 = load i64, i64* %91
  %99 = call i64 @nyx_array_get({ i64, i8* }* %97, i64 %98)
  %100 = add i64 %96, %99
  store i64 %100, i64* %90
  %101 = load i64, i64* %91
  %102 = add i64 %101, 1
  store i64 %102, i64* %91
  br label %while_cond27
while_end29:
  %103 = load i64, i64* %90
  ret i64 %103
}

define i64 @array_min(
{ i64, i8* }* %arr.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %104 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %105 = call i64 @nyx_array_get({ i64, i8* }* %104, i64 0)
  %106 = alloca i64
  store i64 %105, i64* %106
  %107 = alloca i64
  store i64 1, i64* %107
  br label %while_cond30
while_cond30:
  %108 = load i64, i64* %107
  %109 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %110 = call i64 @nyx_array_length({ i64, i8* }* %109)
  %111 = icmp slt i64 %108, %110
  br i1 %111, label %while_body31, label %while_end32
while_body31:
  %112 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %113 = load i64, i64* %107
  %114 = call i64 @nyx_array_get({ i64, i8* }* %112, i64 %113)
  %115 = load i64, i64* %106
  %116 = icmp slt i64 %114, %115
  br i1 %116, label %then33, label %else34
then33:
  %117 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %118 = load i64, i64* %107
  %119 = call i64 @nyx_array_get({ i64, i8* }* %117, i64 %118)
  store i64 %119, i64* %106
  br label %merge35
else34:
  br label %merge35
merge35:
  %120 = load i64, i64* %107
  %121 = add i64 %120, 1
  store i64 %121, i64* %107
  br label %while_cond30
while_end32:
  %122 = load i64, i64* %106
  ret i64 %122
}

define i64 @array_max(
{ i64, i8* }* %arr.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %123 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %124 = call i64 @nyx_array_get({ i64, i8* }* %123, i64 0)
  %125 = alloca i64
  store i64 %124, i64* %125
  %126 = alloca i64
  store i64 1, i64* %126
  br label %while_cond36
while_cond36:
  %127 = load i64, i64* %126
  %128 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %129 = call i64 @nyx_array_length({ i64, i8* }* %128)
  %130 = icmp slt i64 %127, %129
  br i1 %130, label %while_body37, label %while_end38
while_body37:
  %131 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %132 = load i64, i64* %126
  %133 = call i64 @nyx_array_get({ i64, i8* }* %131, i64 %132)
  %134 = load i64, i64* %125
  %135 = icmp sgt i64 %133, %134
  br i1 %135, label %then39, label %else40
then39:
  %136 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %137 = load i64, i64* %126
  %138 = call i64 @nyx_array_get({ i64, i8* }* %136, i64 %137)
  store i64 %138, i64* %125
  br label %merge41
else40:
  br label %merge41
merge41:
  %139 = load i64, i64* %126
  %140 = add i64 %139, 1
  store i64 %140, i64* %126
  br label %while_cond36
while_end38:
  %141 = load i64, i64* %125
  ret i64 %141
}

define { i64, i8* }* @array_reverse(
{ i64, i8* }* %arr.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %142 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %143 = call i64 @nyx_array_length({ i64, i8* }* %142)
  %144 = alloca i64
  store i64 %143, i64* %144
  %145 = alloca i64
  store i64 0, i64* %145
  br label %while_cond42
while_cond42:
  %146 = load i64, i64* %145
  %147 = load i64, i64* %144
  %148 = sdiv i64 %147, 2
  %149 = icmp slt i64 %146, %148
  br i1 %149, label %while_body43, label %while_end44
while_body43:
  %150 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %151 = load i64, i64* %145
  %152 = call i64 @nyx_array_get({ i64, i8* }* %150, i64 %151)
  %153 = alloca i64
  store i64 %152, i64* %153
  %154 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %155 = load i64, i64* %145
  %156 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %157 = load i64, i64* %144
  %158 = sub i64 %157, 1
  %159 = load i64, i64* %145
  %160 = sub i64 %158, %159
  %161 = call i64 @nyx_array_get({ i64, i8* }* %156, i64 %160)
  call void @nyx_array_set({ i64, i8* }* %154, i64 %155, i64 %161)
  %162 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %163 = load i64, i64* %144
  %164 = sub i64 %163, 1
  %165 = load i64, i64* %145
  %166 = sub i64 %164, %165
  %167 = load i64, i64* %153
  call void @nyx_array_set({ i64, i8* }* %162, i64 %166, i64 %167)
  %168 = load i64, i64* %145
  %169 = add i64 %168, 1
  store i64 %169, i64* %145
  br label %while_cond42
while_end44:
  %170 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  ret { i64, i8* }* %170
}

define i1 @array_contains_int(
{ i64, i8* }* %arr.param, i64 %val.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %val.ptr = alloca i64
  store i64 %val.param, i64* %val.ptr
  %171 = alloca i64
  store i64 0, i64* %171
  br label %while_cond45
while_cond45:
  %172 = load i64, i64* %171
  %173 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %174 = call i64 @nyx_array_length({ i64, i8* }* %173)
  %175 = icmp slt i64 %172, %174
  br i1 %175, label %while_body46, label %while_end47
while_body46:
  %176 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %177 = load i64, i64* %171
  %178 = call i64 @nyx_array_get({ i64, i8* }* %176, i64 %177)
  %179 = load i64, i64* %val.ptr
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %then48, label %else49
then48:
  ret i1 1
else49:
  br label %merge50
merge50:
  %181 = load i64, i64* %171
  %182 = add i64 %181, 1
  store i64 %182, i64* %171
  br label %while_cond45
while_end47:
  ret i1 0
}

define i64 @array_index_of(
{ i64, i8* }* %arr.param, i64 %val.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %val.ptr = alloca i64
  store i64 %val.param, i64* %val.ptr
  %183 = alloca i64
  store i64 0, i64* %183
  br label %while_cond51
while_cond51:
  %184 = load i64, i64* %183
  %185 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %186 = call i64 @nyx_array_length({ i64, i8* }* %185)
  %187 = icmp slt i64 %184, %186
  br i1 %187, label %while_body52, label %while_end53
while_body52:
  %188 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %189 = load i64, i64* %183
  %190 = call i64 @nyx_array_get({ i64, i8* }* %188, i64 %189)
  %191 = load i64, i64* %val.ptr
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %then54, label %else55
then54:
  %193 = load i64, i64* %183
  ret i64 %193
else55:
  br label %merge56
merge56:
  %194 = load i64, i64* %183
  %195 = add i64 %194, 1
  store i64 %195, i64* %183
  br label %while_cond51
while_end53:
  %196 = sub i64 0, 1
  ret i64 %196
}

define { i64, i8* }* @sort_int(
{ i64, i8* }* %arr.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %197 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %198 = call i64 @nyx_array_length({ i64, i8* }* %197)
  %199 = alloca i64
  store i64 %198, i64* %199
  %200 = alloca i1
  store i1 1, i1* %200
  br label %while_cond57
while_cond57:
  %201 = load i1, i1* %200
  %202 = icmp eq i1 %201, 1
  br i1 %202, label %while_body58, label %while_end59
while_body58:
  store i1 0, i1* %200
  %203 = alloca i64
  store i64 0, i64* %203
  br label %while_cond60
while_cond60:
  %204 = load i64, i64* %203
  %205 = load i64, i64* %199
  %206 = sub i64 %205, 1
  %207 = icmp slt i64 %204, %206
  br i1 %207, label %while_body61, label %while_end62
while_body61:
  %208 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %209 = load i64, i64* %203
  %210 = call i64 @nyx_array_get({ i64, i8* }* %208, i64 %209)
  %211 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %212 = load i64, i64* %203
  %213 = add i64 %212, 1
  %214 = call i64 @nyx_array_get({ i64, i8* }* %211, i64 %213)
  %215 = icmp sgt i64 %210, %214
  br i1 %215, label %then63, label %else64
then63:
  %216 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %217 = load i64, i64* %203
  %218 = call i64 @nyx_array_get({ i64, i8* }* %216, i64 %217)
  %219 = alloca i64
  store i64 %218, i64* %219
  %220 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %221 = load i64, i64* %203
  %222 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %223 = load i64, i64* %203
  %224 = add i64 %223, 1
  %225 = call i64 @nyx_array_get({ i64, i8* }* %222, i64 %224)
  call void @nyx_array_set({ i64, i8* }* %220, i64 %221, i64 %225)
  %226 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %227 = load i64, i64* %203
  %228 = add i64 %227, 1
  %229 = load i64, i64* %219
  call void @nyx_array_set({ i64, i8* }* %226, i64 %228, i64 %229)
  store i1 1, i1* %200
  br label %merge65
else64:
  br label %merge65
merge65:
  %230 = load i64, i64* %203
  %231 = add i64 %230, 1
  store i64 %231, i64* %203
  br label %while_cond60
while_end62:
  br label %while_cond57
while_end59:
  %232 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  ret { i64, i8* }* %232
}

define { i64, i8* }* @sort_by(
{ i64, i8* }* %arr.param, i8* %cmp.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %cmp.ptr = alloca i8*
  store i8* %cmp.param, i8** %cmp.ptr
  %233 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %234 = call i64 @nyx_array_length({ i64, i8* }* %233)
  %235 = alloca i64
  store i64 %234, i64* %235
  %236 = load i64, i64* %235
  %237 = icmp sle i64 %236, 1
  br i1 %237, label %then66, label %else67
then66:
  %238 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  ret { i64, i8* }* %238
else67:
  br label %merge68
merge68:
  %239 = alloca i64
  store i64 1, i64* %239
  br label %while_cond69
while_cond69:
  %240 = load i64, i64* %239
  %241 = load i64, i64* %235
  %242 = icmp slt i64 %240, %241
  br i1 %242, label %while_body70, label %while_end71
while_body70:
  %243 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %244 = load i64, i64* %239
  %245 = call i64 @nyx_array_get({ i64, i8* }* %243, i64 %244)
  %246 = alloca i64
  store i64 %245, i64* %246
  %247 = load i64, i64* %239
  %248 = sub i64 %247, 1
  %249 = alloca i64
  store i64 %248, i64* %249
  %250 = alloca i1
  store i1 0, i1* %250
  br label %while_cond72
while_cond72:
  %251 = load i64, i64* %249
  %252 = icmp sge i64 %251, 0
  %253 = load i1, i1* %250
  %254 = xor i1 %253, true
  %255 = and i1 %252, %254
  br i1 %255, label %while_body73, label %while_end74
while_body73:
  %256 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %257 = load i64, i64* %249
  %258 = call i64 @nyx_array_get({ i64, i8* }* %256, i64 %257)
  %259 = load i64, i64* %246
  %260 = load i8*, i8** %cmp.ptr
  %261 = bitcast i8* %260 to { i8*, i8* }*
  %262 = getelementptr { i8*, i8* }, { i8*, i8* }* %261, i32 0, i32 0
  %263 = load i8*, i8** %262
  %264 = getelementptr { i8*, i8* }, { i8*, i8* }* %261, i32 0, i32 1
  %265 = load i8*, i8** %264
  %266 = icmp ne i8* %265, null
  br i1 %266, label %cl_env75, label %cl_noenv76
cl_env75:
  %267 = bitcast i8* %263 to i64 (i8*, i64, i64)*
  %268 = call i64 %267(i8* %265, i64 %258, i64 %259)
  br label %cl_merge77
cl_noenv76:
  %269 = bitcast i8* %263 to i64 (i64, i64)*
  %270 = call i64 %269(i64 %258, i64 %259)
  br label %cl_merge77
cl_merge77:
  %271 = phi i64 [%268, %cl_env75], [%270, %cl_noenv76]
  %272 = alloca i64
  store i64 %271, i64* %272
  %273 = load i64, i64* %272
  %274 = icmp sgt i64 %273, 0
  br i1 %274, label %then78, label %else79
then78:
  %275 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %276 = load i64, i64* %249
  %277 = add i64 %276, 1
  %278 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %279 = load i64, i64* %249
  %280 = call i64 @nyx_array_get({ i64, i8* }* %278, i64 %279)
  call void @nyx_array_set({ i64, i8* }* %275, i64 %277, i64 %280)
  %281 = load i64, i64* %249
  %282 = sub i64 %281, 1
  store i64 %282, i64* %249
  br label %merge80
else79:
  store i1 1, i1* %250
  br label %merge80
merge80:
  br label %while_cond72
while_end74:
  %283 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %284 = load i64, i64* %249
  %285 = add i64 %284, 1
  %286 = load i64, i64* %246
  call void @nyx_array_set({ i64, i8* }* %283, i64 %285, i64 %286)
  %287 = load i64, i64* %239
  %288 = add i64 %287, 1
  store i64 %288, i64* %239
  br label %while_cond69
while_end71:
  %289 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  ret { i64, i8* }* %289
}

define i64 @str_compare(
%nyx_string* %a.param, %nyx_string* %b.param) {
  %a.ptr = alloca %nyx_string*
  store %nyx_string* %a.param, %nyx_string** %a.ptr
  %b.ptr = alloca %nyx_string*
  store %nyx_string* %b.param, %nyx_string** %b.ptr
  %290 = load %nyx_string*, %nyx_string** %a.ptr
  %291 = call i64 @nyx_string_length_utf8(%nyx_string* %290)
  %292 = alloca i64
  store i64 %291, i64* %292
  %293 = load %nyx_string*, %nyx_string** %b.ptr
  %294 = call i64 @nyx_string_length_utf8(%nyx_string* %293)
  %295 = alloca i64
  store i64 %294, i64* %295
  %296 = load i64, i64* %292
  %297 = alloca i64
  store i64 %296, i64* %297
  %298 = load i64, i64* %295
  %299 = load i64, i64* %297
  %300 = icmp slt i64 %298, %299
  br i1 %300, label %then81, label %else82
then81:
  %301 = load i64, i64* %295
  store i64 %301, i64* %297
  br label %merge83
else82:
  br label %merge83
merge83:
  %302 = alloca i64
  store i64 0, i64* %302
  br label %while_cond84
while_cond84:
  %303 = load i64, i64* %302
  %304 = load i64, i64* %297
  %305 = icmp slt i64 %303, %304
  br i1 %305, label %while_body85, label %while_end86
while_body85:
  %306 = load %nyx_string*, %nyx_string** %a.ptr
  %307 = load i64, i64* %302
  %308 = call i8 @nyx_string_char_at(%nyx_string* %306, i64 %307)
  %309 = zext i8 %308 to i64
  %310 = alloca i64
  store i64 %309, i64* %310
  %311 = load %nyx_string*, %nyx_string** %b.ptr
  %312 = load i64, i64* %302
  %313 = call i8 @nyx_string_char_at(%nyx_string* %311, i64 %312)
  %314 = zext i8 %313 to i64
  %315 = alloca i64
  store i64 %314, i64* %315
  %316 = load i64, i64* %310
  %317 = load i64, i64* %315
  %318 = icmp slt i64 %316, %317
  br i1 %318, label %then87, label %else88
then87:
  %319 = sub i64 0, 1
  ret i64 %319
else88:
  br label %merge89
merge89:
  %320 = load i64, i64* %310
  %321 = load i64, i64* %315
  %322 = icmp sgt i64 %320, %321
  br i1 %322, label %then90, label %else91
then90:
  ret i64 1
else91:
  br label %merge92
merge92:
  %323 = load i64, i64* %302
  %324 = add i64 %323, 1
  store i64 %324, i64* %302
  br label %while_cond84
while_end86:
  %325 = load i64, i64* %292
  %326 = load i64, i64* %295
  %327 = icmp slt i64 %325, %326
  br i1 %327, label %then93, label %else94
then93:
  %328 = sub i64 0, 1
  ret i64 %328
else94:
  br label %merge95
merge95:
  %329 = load i64, i64* %292
  %330 = load i64, i64* %295
  %331 = icmp sgt i64 %329, %330
  br i1 %331, label %then96, label %else97
then96:
  ret i64 1
else97:
  br label %merge98
merge98:
  ret i64 0
}

define { i64, i8* }* @sort_str(
{ i64, i8* }* %arr.param) {
  %arr.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %arr.param, { i64, i8* }** %arr.ptr
  %332 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %333 = call i64 @nyx_array_length({ i64, i8* }* %332)
  %334 = alloca i64
  store i64 %333, i64* %334
  %335 = load i64, i64* %334
  %336 = icmp sle i64 %335, 1
  br i1 %336, label %then99, label %else100
then99:
  %337 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  ret { i64, i8* }* %337
else100:
  br label %merge101
merge101:
  %338 = alloca i64
  store i64 1, i64* %338
  br label %while_cond102
while_cond102:
  %339 = load i64, i64* %338
  %340 = load i64, i64* %334
  %341 = icmp slt i64 %339, %340
  br i1 %341, label %while_body103, label %while_end104
while_body103:
  %342 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %343 = load i64, i64* %338
  %344 = call i64 @nyx_array_get({ i64, i8* }* %342, i64 %343)
  %345 = inttoptr i64 %344 to %nyx_string*
  %346 = alloca %nyx_string*
  store %nyx_string* %345, %nyx_string** %346
  %347 = load i64, i64* %338
  %348 = sub i64 %347, 1
  %349 = alloca i64
  store i64 %348, i64* %349
  %350 = alloca i1
  store i1 0, i1* %350
  br label %while_cond105
while_cond105:
  %351 = load i64, i64* %349
  %352 = icmp sge i64 %351, 0
  %353 = load i1, i1* %350
  %354 = xor i1 %353, true
  %355 = and i1 %352, %354
  br i1 %355, label %while_body106, label %while_end107
while_body106:
  %356 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %357 = load i64, i64* %349
  %358 = call i64 @nyx_array_get({ i64, i8* }* %356, i64 %357)
  %359 = inttoptr i64 %358 to %nyx_string*
  %360 = alloca %nyx_string*
  store %nyx_string* %359, %nyx_string** %360
  %361 = load %nyx_string*, %nyx_string** %360
  %362 = load %nyx_string*, %nyx_string** %346
  %363 = call i64 @str_compare(%nyx_string* %361, %nyx_string* %362)
  %364 = icmp sgt i64 %363, 0
  br i1 %364, label %then108, label %else109
then108:
  %365 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %366 = load i64, i64* %349
  %367 = add i64 %366, 1
  %368 = load %nyx_string*, %nyx_string** %360
  %369 = ptrtoint %nyx_string* %368 to i64
  call void @nyx_array_set({ i64, i8* }* %365, i64 %367, i64 %369)
  %370 = load i64, i64* %349
  %371 = sub i64 %370, 1
  store i64 %371, i64* %349
  br label %merge110
else109:
  store i1 1, i1* %350
  br label %merge110
merge110:
  br label %while_cond105
while_end107:
  %372 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  %373 = load i64, i64* %349
  %374 = add i64 %373, 1
  %375 = load %nyx_string*, %nyx_string** %346
  %376 = ptrtoint %nyx_string* %375 to i64
  call void @nyx_array_set({ i64, i8* }* %372, i64 %374, i64 %376)
  %377 = load i64, i64* %338
  %378 = add i64 %377, 1
  store i64 %378, i64* %338
  br label %while_cond102
while_end104:
  %379 = load { i64, i8* }*, { i64, i8* }** %arr.ptr
  ret { i64, i8* }* %379
}

define %nyx_string* @read_text(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %380 = load %nyx_string*, %nyx_string** %path.ptr
  %381 = call i8* @nyx_string_to_cstr(%nyx_string* %380)
  %382 = call %nyx_string* @nyx_read_file(i8* %381)
  ret %nyx_string* %382
}

define i64 @write_text(
%nyx_string* %path.param, %nyx_string* %content.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %content.ptr = alloca %nyx_string*
  store %nyx_string* %content.param, %nyx_string** %content.ptr
  %383 = load %nyx_string*, %nyx_string** %path.ptr
  %384 = load %nyx_string*, %nyx_string** %content.ptr
  %385 = call i8* @nyx_string_to_cstr(%nyx_string* %383)
  %386 = call i8* @nyx_string_to_cstr(%nyx_string* %384)
  %387 = call i1 @nyx_write_file(i8* %385, i8* %386)
  ret i64 0
}

define i8* @map_new(
) {
  %388 = call i8* @nyx_map_new(i32 0)
  ret i8* %388
}

define i64 @map_put(
i8* %m.param, %nyx_string* %k.param, i64 %v.param) {
  %m.ptr = alloca i8*
  store i8* %m.param, i8** %m.ptr
  %k.ptr = alloca %nyx_string*
  store %nyx_string* %k.param, %nyx_string** %k.ptr
  %v.ptr = alloca i64
  store i64 %v.param, i64* %v.ptr
  %389 = load i8*, i8** %m.ptr
  %390 = load %nyx_string*, %nyx_string** %k.ptr
  %391 = load i64, i64* %v.ptr
  %392 = call i8* @nyx_string_to_cstr(%nyx_string* %390)
  call void @nyx_map_insert_int(i8* %389, i8* %392, i64 %391)
  ret i64 0
}

define i64 @map_get_int(
i8* %m.param, %nyx_string* %k.param) {
  %m.ptr = alloca i8*
  store i8* %m.param, i8** %m.ptr
  %k.ptr = alloca %nyx_string*
  store %nyx_string* %k.param, %nyx_string** %k.ptr
  %393 = load i8*, i8** %m.ptr
  %394 = load %nyx_string*, %nyx_string** %k.ptr
  %395 = call i8* @nyx_string_to_cstr(%nyx_string* %394)
  %396 = call i64 @nyx_map_get_int(i8* %393, i8* %395)
  ret i64 %396
}

define i1 @map_has(
i8* %m.param, %nyx_string* %k.param) {
  %m.ptr = alloca i8*
  store i8* %m.param, i8** %m.ptr
  %k.ptr = alloca %nyx_string*
  store %nyx_string* %k.param, %nyx_string** %k.ptr
  %397 = load i8*, i8** %m.ptr
  %398 = load %nyx_string*, %nyx_string** %k.ptr
  %399 = call i8* @nyx_string_to_cstr(%nyx_string* %398)
  %400 = call i1 @nyx_map_contains_str(i8* %397, i8* %399)
  ret i1 %400
}

define i64 @map_size(
i8* %m.param) {
  %m.ptr = alloca i8*
  store i8* %m.param, i8** %m.ptr
  %401 = load i8*, i8** %m.ptr
  %402 = call i64 @nyx_array_length({ i64, i8* }* %401)
  ret i64 %402
}

define internal i64 @sem_error(
%nyx_string* %msg.param) {
  %msg.ptr = alloca %nyx_string*
  store %nyx_string* %msg.param, %nyx_string** %msg.ptr
  %403 = load %nyx_string*, %nyx_string** @g_current_fn
  %404 = getelementptr [1 x i8], [1 x i8]* @.str0, i32 0, i32 0
  %405 = call %nyx_string* @nyx_string_from_cstr(i8* %404)
  %406 = call i8* @nyx_string_to_cstr(%nyx_string* %403)
  %407 = call i8* @nyx_string_to_cstr(%nyx_string* %405)
  %408 = call i32 @strcmp(i8* %406, i8* %407)
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %then111, label %else112
then111:
  %410 = load { i64, i8* }*, { i64, i8* }** @g_errors
  %411 = getelementptr [8 x i8], [8 x i8]* @.str1, i32 0, i32 0
  %412 = call %nyx_string* @nyx_string_from_cstr(i8* %411)
  %413 = load %nyx_string*, %nyx_string** %msg.ptr
  %414 = call %nyx_string* @nyx_string_concat(%nyx_string* %412, %nyx_string* %413)
  %415 = ptrtoint %nyx_string* %414 to i64
  call void @nyx_array_push({ i64, i8* }* %410, i64 %415)
  br label %merge113
else112:
  %416 = load { i64, i8* }*, { i64, i8* }** @g_errors
  %417 = getelementptr [11 x i8], [11 x i8]* @.str2, i32 0, i32 0
  %418 = call %nyx_string* @nyx_string_from_cstr(i8* %417)
  %419 = load %nyx_string*, %nyx_string** @g_current_fn
  %420 = call %nyx_string* @nyx_string_concat(%nyx_string* %418, %nyx_string* %419)
  %421 = getelementptr [4 x i8], [4 x i8]* @.str3, i32 0, i32 0
  %422 = call %nyx_string* @nyx_string_from_cstr(i8* %421)
  %423 = call %nyx_string* @nyx_string_concat(%nyx_string* %420, %nyx_string* %422)
  %424 = load %nyx_string*, %nyx_string** %msg.ptr
  %425 = call %nyx_string* @nyx_string_concat(%nyx_string* %423, %nyx_string* %424)
  %426 = ptrtoint %nyx_string* %425 to i64
  call void @nyx_array_push({ i64, i8* }* %416, i64 %426)
  br label %merge113
merge113:
  ret i64 0
}

define internal %ASTNode @get_node_at(
%ASTNode %node.param, i64 %index.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %index.ptr = alloca i64
  store i64 %index.param, i64* %index.ptr
  %427 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %428 = load { i64, i8* }*, { i64, i8* }** %427
  %429 = alloca { i64, i8* }*
  store { i64, i8* }* %428, { i64, i8* }** %429
  %430 = load { i64, i8* }*, { i64, i8* }** %429
  %431 = load i64, i64* %index.ptr
  %432 = call i64 @nyx_array_get({ i64, i8* }* %430, i64 %431)
  %433 = inttoptr i64 %432 to { i64, i8* }*
  %434 = call i64 @nyx_array_get({ i64, i8* }* %433, i64 0)
  %435 = call i64 @nyx_array_get({ i64, i8* }* %433, i64 1)
  %436 = inttoptr i64 %434 to %nyx_string*
  %437 = inttoptr i64 %435 to { i64, i8* }*
  %438 = alloca %ASTNode
  %439 = getelementptr inbounds %ASTNode, %ASTNode* %438, i32 0, i32 0
  store %nyx_string* %436, %nyx_string** %439
  %440 = getelementptr inbounds %ASTNode, %ASTNode* %438, i32 0, i32 1
  store { i64, i8* }* %437, { i64, i8* }** %440
  %441 = load %ASTNode, %ASTNode* %438
  %442 = alloca %ASTNode
  store %ASTNode %441, %ASTNode* %442
  %443 = load %ASTNode, %ASTNode* %442
  ret %ASTNode %443
}

define internal %nyx_string* @get_string_at(
%ASTNode %node.param, i64 %index.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %index.ptr = alloca i64
  store i64 %index.param, i64* %index.ptr
  %444 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %445 = load { i64, i8* }*, { i64, i8* }** %444
  %446 = alloca { i64, i8* }*
  store { i64, i8* }* %445, { i64, i8* }** %446
  %447 = load { i64, i8* }*, { i64, i8* }** %446
  %448 = load i64, i64* %index.ptr
  %449 = call i64 @nyx_array_get({ i64, i8* }* %447, i64 %448)
  %450 = inttoptr i64 %449 to %nyx_string*
  %451 = alloca %nyx_string*
  store %nyx_string* %450, %nyx_string** %451
  %452 = load %nyx_string*, %nyx_string** %451
  ret %nyx_string* %452
}

define internal { i64, i8* }* @get_array_at(
%ASTNode %node.param, i64 %index.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %index.ptr = alloca i64
  store i64 %index.param, i64* %index.ptr
  %453 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %454 = load { i64, i8* }*, { i64, i8* }** %453
  %455 = alloca { i64, i8* }*
  store { i64, i8* }* %454, { i64, i8* }** %455
  %456 = load { i64, i8* }*, { i64, i8* }** %455
  %457 = load i64, i64* %index.ptr
  %458 = call i64 @nyx_array_get({ i64, i8* }* %456, i64 %457)
  %459 = inttoptr i64 %458 to { i64, i8* }*
  %460 = alloca { i64, i8* }*
  store { i64, i8* }* %459, { i64, i8* }** %460
  %461 = load { i64, i8* }*, { i64, i8* }** %460
  ret { i64, i8* }* %461
}

define internal i1 @get_bool_at(
%ASTNode %node.param, i64 %index.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %index.ptr = alloca i64
  store i64 %index.param, i64* %index.ptr
  %462 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %463 = load { i64, i8* }*, { i64, i8* }** %462
  %464 = alloca { i64, i8* }*
  store { i64, i8* }* %463, { i64, i8* }** %464
  %465 = load { i64, i8* }*, { i64, i8* }** %464
  %466 = load i64, i64* %index.ptr
  %467 = call i64 @nyx_array_get({ i64, i8* }* %465, i64 %466)
  %468 = trunc i64 %467 to i1
  %469 = alloca i1
  store i1 %468, i1* %469
  %470 = load i1, i1* %469
  ret i1 %470
}

define internal i64 @scope_push(
) {
  %471 = load i64, i64* @g_marks_count
  %472 = load { i64, i8* }*, { i64, i8* }** @g_scope_marks
  %473 = call i64 @nyx_array_length({ i64, i8* }* %472)
  %474 = icmp slt i64 %471, %473
  br i1 %474, label %then114, label %else115
then114:
  %475 = load { i64, i8* }*, { i64, i8* }** @g_scope_marks
  %476 = load i64, i64* @g_marks_count
  %477 = load i64, i64* @g_sym_count
  call void @nyx_array_set({ i64, i8* }* %475, i64 %476, i64 %477)
  br label %merge116
else115:
  %478 = load { i64, i8* }*, { i64, i8* }** @g_scope_marks
  %479 = load i64, i64* @g_sym_count
  call void @nyx_array_push({ i64, i8* }* %478, i64 %479)
  br label %merge116
merge116:
  %480 = load i64, i64* @g_marks_count
  %481 = add i64 %480, 1
  store i64 %481, i64* @g_marks_count
  ret i64 0
}

define internal i64 @scope_pop(
) {
  %482 = load i64, i64* @g_marks_count
  %483 = sub i64 %482, 1
  store i64 %483, i64* @g_marks_count
  %484 = load { i64, i8* }*, { i64, i8* }** @g_scope_marks
  %485 = load i64, i64* @g_marks_count
  %486 = call i64 @nyx_array_get({ i64, i8* }* %484, i64 %485)
  %487 = alloca i64
  store i64 %486, i64* %487
  %488 = load i64, i64* %487
  store i64 %488, i64* @g_sym_count
  ret i64 0
}

define internal i64 @scope_current_start(
) {
  %489 = load i64, i64* @g_marks_count
  %490 = icmp sgt i64 %489, 0
  br i1 %490, label %then117, label %else118
then117:
  %491 = load i64, i64* @g_marks_count
  %492 = sub i64 %491, 1
  %493 = alloca i64
  store i64 %492, i64* %493
  %494 = load { i64, i8* }*, { i64, i8* }** @g_scope_marks
  %495 = load i64, i64* %493
  %496 = call i64 @nyx_array_get({ i64, i8* }* %494, i64 %495)
  %497 = alloca i64
  store i64 %496, i64* %497
  %498 = load i64, i64* %497
  ret i64 %498
else118:
  br label %merge119
merge119:
  ret i64 0
}

define internal i1 @scope_has_in_current(
%nyx_string* %name.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %499 = call i64 @scope_current_start()
  %500 = alloca i64
  store i64 %499, i64* %500
  %501 = load i64, i64* %500
  %502 = alloca i64
  store i64 %501, i64* %502
  br label %while_cond120
while_cond120:
  %503 = load i64, i64* %502
  %504 = load i64, i64* @g_sym_count
  %505 = icmp slt i64 %503, %504
  br i1 %505, label %while_body121, label %while_end122
while_body121:
  %506 = load { i64, i8* }*, { i64, i8* }** @g_sym_names
  %507 = load i64, i64* %502
  %508 = call i64 @nyx_array_get({ i64, i8* }* %506, i64 %507)
  %509 = inttoptr i64 %508 to %nyx_string*
  %510 = alloca %nyx_string*
  store %nyx_string* %509, %nyx_string** %510
  %511 = load %nyx_string*, %nyx_string** %510
  %512 = load %nyx_string*, %nyx_string** %name.ptr
  %513 = call i8* @nyx_string_to_cstr(%nyx_string* %511)
  %514 = call i8* @nyx_string_to_cstr(%nyx_string* %512)
  %515 = call i32 @strcmp(i8* %513, i8* %514)
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %then123, label %else124
then123:
  ret i1 1
else124:
  br label %merge125
merge125:
  %517 = load i64, i64* %502
  %518 = add i64 %517, 1
  store i64 %518, i64* %502
  br label %while_cond120
while_end122:
  ret i1 0
}

define internal i64 @scope_declare(
%nyx_string* %name.param, %nyx_string* %kind.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %kind.ptr = alloca %nyx_string*
  store %nyx_string* %kind.param, %nyx_string** %kind.ptr
  %519 = load i64, i64* @g_sym_count
  %520 = load { i64, i8* }*, { i64, i8* }** @g_sym_names
  %521 = call i64 @nyx_array_length({ i64, i8* }* %520)
  %522 = icmp slt i64 %519, %521
  br i1 %522, label %then126, label %else127
then126:
  %523 = load { i64, i8* }*, { i64, i8* }** @g_sym_names
  %524 = load i64, i64* @g_sym_count
  %525 = load %nyx_string*, %nyx_string** %name.ptr
  %526 = ptrtoint %nyx_string* %525 to i64
  call void @nyx_array_set({ i64, i8* }* %523, i64 %524, i64 %526)
  %527 = load { i64, i8* }*, { i64, i8* }** @g_sym_kinds
  %528 = load i64, i64* @g_sym_count
  %529 = load %nyx_string*, %nyx_string** %kind.ptr
  %530 = ptrtoint %nyx_string* %529 to i64
  call void @nyx_array_set({ i64, i8* }* %527, i64 %528, i64 %530)
  %531 = load { i64, i8* }*, { i64, i8* }** @g_sym_arities
  %532 = load i64, i64* @g_sym_count
  %533 = sub i64 0, 1
  call void @nyx_array_set({ i64, i8* }* %531, i64 %532, i64 %533)
  br label %merge128
else127:
  %534 = load { i64, i8* }*, { i64, i8* }** @g_sym_names
  %535 = load %nyx_string*, %nyx_string** %name.ptr
  %536 = ptrtoint %nyx_string* %535 to i64
  call void @nyx_array_push({ i64, i8* }* %534, i64 %536)
  %537 = load { i64, i8* }*, { i64, i8* }** @g_sym_kinds
  %538 = load %nyx_string*, %nyx_string** %kind.ptr
  %539 = ptrtoint %nyx_string* %538 to i64
  call void @nyx_array_push({ i64, i8* }* %537, i64 %539)
  %540 = load { i64, i8* }*, { i64, i8* }** @g_sym_arities
  %541 = sub i64 0, 1
  call void @nyx_array_push({ i64, i8* }* %540, i64 %541)
  br label %merge128
merge128:
  %542 = load i64, i64* @g_sym_count
  %543 = add i64 %542, 1
  store i64 %543, i64* @g_sym_count
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
  %544 = load i64, i64* @g_sym_count
  %545 = load { i64, i8* }*, { i64, i8* }** @g_sym_names
  %546 = call i64 @nyx_array_length({ i64, i8* }* %545)
  %547 = icmp slt i64 %544, %546
  br i1 %547, label %then129, label %else130
then129:
  %548 = load { i64, i8* }*, { i64, i8* }** @g_sym_names
  %549 = load i64, i64* @g_sym_count
  %550 = load %nyx_string*, %nyx_string** %name.ptr
  %551 = ptrtoint %nyx_string* %550 to i64
  call void @nyx_array_set({ i64, i8* }* %548, i64 %549, i64 %551)
  %552 = load { i64, i8* }*, { i64, i8* }** @g_sym_kinds
  %553 = load i64, i64* @g_sym_count
  %554 = load %nyx_string*, %nyx_string** %kind.ptr
  %555 = ptrtoint %nyx_string* %554 to i64
  call void @nyx_array_set({ i64, i8* }* %552, i64 %553, i64 %555)
  %556 = load { i64, i8* }*, { i64, i8* }** @g_sym_arities
  %557 = load i64, i64* @g_sym_count
  %558 = load i64, i64* %arity.ptr
  call void @nyx_array_set({ i64, i8* }* %556, i64 %557, i64 %558)
  br label %merge131
else130:
  %559 = load { i64, i8* }*, { i64, i8* }** @g_sym_names
  %560 = load %nyx_string*, %nyx_string** %name.ptr
  %561 = ptrtoint %nyx_string* %560 to i64
  call void @nyx_array_push({ i64, i8* }* %559, i64 %561)
  %562 = load { i64, i8* }*, { i64, i8* }** @g_sym_kinds
  %563 = load %nyx_string*, %nyx_string** %kind.ptr
  %564 = ptrtoint %nyx_string* %563 to i64
  call void @nyx_array_push({ i64, i8* }* %562, i64 %564)
  %565 = load { i64, i8* }*, { i64, i8* }** @g_sym_arities
  %566 = load i64, i64* %arity.ptr
  call void @nyx_array_push({ i64, i8* }* %565, i64 %566)
  br label %merge131
merge131:
  %567 = load i64, i64* @g_sym_count
  %568 = add i64 %567, 1
  store i64 %568, i64* @g_sym_count
  ret i64 0
}

define internal %nyx_string* @scope_lookup(
%nyx_string* %name.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %569 = load i64, i64* @g_sym_count
  %570 = sub i64 %569, 1
  %571 = alloca i64
  store i64 %570, i64* %571
  br label %while_cond132
while_cond132:
  %572 = load i64, i64* %571
  %573 = icmp sge i64 %572, 0
  br i1 %573, label %while_body133, label %while_end134
while_body133:
  %574 = load { i64, i8* }*, { i64, i8* }** @g_sym_names
  %575 = load i64, i64* %571
  %576 = call i64 @nyx_array_get({ i64, i8* }* %574, i64 %575)
  %577 = inttoptr i64 %576 to %nyx_string*
  %578 = alloca %nyx_string*
  store %nyx_string* %577, %nyx_string** %578
  %579 = load %nyx_string*, %nyx_string** %578
  %580 = load %nyx_string*, %nyx_string** %name.ptr
  %581 = call i8* @nyx_string_to_cstr(%nyx_string* %579)
  %582 = call i8* @nyx_string_to_cstr(%nyx_string* %580)
  %583 = call i32 @strcmp(i8* %581, i8* %582)
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %then135, label %else136
then135:
  %585 = load { i64, i8* }*, { i64, i8* }** @g_sym_kinds
  %586 = load i64, i64* %571
  %587 = call i64 @nyx_array_get({ i64, i8* }* %585, i64 %586)
  %588 = inttoptr i64 %587 to %nyx_string*
  %589 = alloca %nyx_string*
  store %nyx_string* %588, %nyx_string** %589
  %590 = load %nyx_string*, %nyx_string** %589
  ret %nyx_string* %590
else136:
  br label %merge137
merge137:
  %591 = load i64, i64* %571
  %592 = sub i64 %591, 1
  store i64 %592, i64* %571
  br label %while_cond132
while_end134:
  %593 = getelementptr [1 x i8], [1 x i8]* @.str4, i32 0, i32 0
  %594 = call %nyx_string* @nyx_string_from_cstr(i8* %593)
  ret %nyx_string* %594
}

define internal i64 @scope_get_arity(
%nyx_string* %name.param) {
  %name.ptr = alloca %nyx_string*
  store %nyx_string* %name.param, %nyx_string** %name.ptr
  %595 = load i64, i64* @g_sym_count
  %596 = sub i64 %595, 1
  %597 = alloca i64
  store i64 %596, i64* %597
  br label %while_cond138
while_cond138:
  %598 = load i64, i64* %597
  %599 = icmp sge i64 %598, 0
  br i1 %599, label %while_body139, label %while_end140
while_body139:
  %600 = load { i64, i8* }*, { i64, i8* }** @g_sym_names
  %601 = load i64, i64* %597
  %602 = call i64 @nyx_array_get({ i64, i8* }* %600, i64 %601)
  %603 = inttoptr i64 %602 to %nyx_string*
  %604 = alloca %nyx_string*
  store %nyx_string* %603, %nyx_string** %604
  %605 = load %nyx_string*, %nyx_string** %604
  %606 = load %nyx_string*, %nyx_string** %name.ptr
  %607 = call i8* @nyx_string_to_cstr(%nyx_string* %605)
  %608 = call i8* @nyx_string_to_cstr(%nyx_string* %606)
  %609 = call i32 @strcmp(i8* %607, i8* %608)
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %then141, label %else142
then141:
  %611 = load { i64, i8* }*, { i64, i8* }** @g_sym_arities
  %612 = load i64, i64* %597
  %613 = call i64 @nyx_array_get({ i64, i8* }* %611, i64 %612)
  %614 = alloca i64
  store i64 %613, i64* %614
  %615 = load i64, i64* %614
  ret i64 %615
else142:
  br label %merge143
merge143:
  %616 = load i64, i64* %597
  %617 = sub i64 %616, 1
  store i64 %617, i64* %597
  br label %while_cond138
while_end140:
  %618 = sub i64 0, 1
  ret i64 %618
}

define internal i64 @register_builtins(
) {
  %619 = getelementptr [6 x i8], [6 x i8]* @.str5, i32 0, i32 0
  %620 = call %nyx_string* @nyx_string_from_cstr(i8* %619)
  %621 = getelementptr [8 x i8], [8 x i8]* @.str6, i32 0, i32 0
  %622 = call %nyx_string* @nyx_string_from_cstr(i8* %621)
  %623 = call i64 @scope_declare_fn(%nyx_string* %620, %nyx_string* %622, i64 1)
  %624 = getelementptr [14 x i8], [14 x i8]* @.str7, i32 0, i32 0
  %625 = call %nyx_string* @nyx_string_from_cstr(i8* %624)
  %626 = getelementptr [8 x i8], [8 x i8]* @.str8, i32 0, i32 0
  %627 = call %nyx_string* @nyx_string_from_cstr(i8* %626)
  %628 = call i64 @scope_declare_fn(%nyx_string* %625, %nyx_string* %627, i64 1)
  %629 = getelementptr [16 x i8], [16 x i8]* @.str9, i32 0, i32 0
  %630 = call %nyx_string* @nyx_string_from_cstr(i8* %629)
  %631 = getelementptr [8 x i8], [8 x i8]* @.str10, i32 0, i32 0
  %632 = call %nyx_string* @nyx_string_from_cstr(i8* %631)
  %633 = call i64 @scope_declare_fn(%nyx_string* %630, %nyx_string* %632, i64 1)
  %634 = getelementptr [15 x i8], [15 x i8]* @.str11, i32 0, i32 0
  %635 = call %nyx_string* @nyx_string_from_cstr(i8* %634)
  %636 = getelementptr [8 x i8], [8 x i8]* @.str12, i32 0, i32 0
  %637 = call %nyx_string* @nyx_string_from_cstr(i8* %636)
  %638 = call i64 @scope_declare_fn(%nyx_string* %635, %nyx_string* %637, i64 1)
  %639 = getelementptr [13 x i8], [13 x i8]* @.str13, i32 0, i32 0
  %640 = call %nyx_string* @nyx_string_from_cstr(i8* %639)
  %641 = getelementptr [8 x i8], [8 x i8]* @.str14, i32 0, i32 0
  %642 = call %nyx_string* @nyx_string_from_cstr(i8* %641)
  %643 = call i64 @scope_declare_fn(%nyx_string* %640, %nyx_string* %642, i64 1)
  %644 = getelementptr [13 x i8], [13 x i8]* @.str15, i32 0, i32 0
  %645 = call %nyx_string* @nyx_string_from_cstr(i8* %644)
  %646 = getelementptr [8 x i8], [8 x i8]* @.str16, i32 0, i32 0
  %647 = call %nyx_string* @nyx_string_from_cstr(i8* %646)
  %648 = call i64 @scope_declare_fn(%nyx_string* %645, %nyx_string* %647, i64 1)
  %649 = getelementptr [10 x i8], [10 x i8]* @.str17, i32 0, i32 0
  %650 = call %nyx_string* @nyx_string_from_cstr(i8* %649)
  %651 = getelementptr [8 x i8], [8 x i8]* @.str18, i32 0, i32 0
  %652 = call %nyx_string* @nyx_string_from_cstr(i8* %651)
  %653 = call i64 @scope_declare_fn(%nyx_string* %650, %nyx_string* %652, i64 1)
  %654 = getelementptr [11 x i8], [11 x i8]* @.str19, i32 0, i32 0
  %655 = call %nyx_string* @nyx_string_from_cstr(i8* %654)
  %656 = getelementptr [8 x i8], [8 x i8]* @.str20, i32 0, i32 0
  %657 = call %nyx_string* @nyx_string_from_cstr(i8* %656)
  %658 = call i64 @scope_declare_fn(%nyx_string* %655, %nyx_string* %657, i64 2)
  %659 = getelementptr [12 x i8], [12 x i8]* @.str21, i32 0, i32 0
  %660 = call %nyx_string* @nyx_string_from_cstr(i8* %659)
  %661 = getelementptr [8 x i8], [8 x i8]* @.str22, i32 0, i32 0
  %662 = call %nyx_string* @nyx_string_from_cstr(i8* %661)
  %663 = call i64 @scope_declare_fn(%nyx_string* %660, %nyx_string* %662, i64 1)
  %664 = getelementptr [10 x i8], [10 x i8]* @.str23, i32 0, i32 0
  %665 = call %nyx_string* @nyx_string_from_cstr(i8* %664)
  %666 = getelementptr [8 x i8], [8 x i8]* @.str24, i32 0, i32 0
  %667 = call %nyx_string* @nyx_string_from_cstr(i8* %666)
  %668 = call i64 @scope_declare_fn(%nyx_string* %665, %nyx_string* %667, i64 2)
  %669 = getelementptr [11 x i8], [11 x i8]* @.str25, i32 0, i32 0
  %670 = call %nyx_string* @nyx_string_from_cstr(i8* %669)
  %671 = getelementptr [8 x i8], [8 x i8]* @.str26, i32 0, i32 0
  %672 = call %nyx_string* @nyx_string_from_cstr(i8* %671)
  %673 = call i64 @scope_declare_fn(%nyx_string* %670, %nyx_string* %672, i64 1)
  %674 = getelementptr [15 x i8], [15 x i8]* @.str27, i32 0, i32 0
  %675 = call %nyx_string* @nyx_string_from_cstr(i8* %674)
  %676 = getelementptr [8 x i8], [8 x i8]* @.str28, i32 0, i32 0
  %677 = call %nyx_string* @nyx_string_from_cstr(i8* %676)
  %678 = call i64 @scope_declare_fn(%nyx_string* %675, %nyx_string* %677, i64 1)
  %679 = getelementptr [16 x i8], [16 x i8]* @.str29, i32 0, i32 0
  %680 = call %nyx_string* @nyx_string_from_cstr(i8* %679)
  %681 = getelementptr [8 x i8], [8 x i8]* @.str30, i32 0, i32 0
  %682 = call %nyx_string* @nyx_string_from_cstr(i8* %681)
  %683 = call i64 @scope_declare_fn(%nyx_string* %680, %nyx_string* %682, i64 2)
  %684 = getelementptr [18 x i8], [18 x i8]* @.str31, i32 0, i32 0
  %685 = call %nyx_string* @nyx_string_from_cstr(i8* %684)
  %686 = getelementptr [8 x i8], [8 x i8]* @.str32, i32 0, i32 0
  %687 = call %nyx_string* @nyx_string_from_cstr(i8* %686)
  %688 = call i64 @scope_declare_fn(%nyx_string* %685, %nyx_string* %687, i64 2)
  %689 = getelementptr [17 x i8], [17 x i8]* @.str33, i32 0, i32 0
  %690 = call %nyx_string* @nyx_string_from_cstr(i8* %689)
  %691 = getelementptr [8 x i8], [8 x i8]* @.str34, i32 0, i32 0
  %692 = call %nyx_string* @nyx_string_from_cstr(i8* %691)
  %693 = call i64 @scope_declare_fn(%nyx_string* %690, %nyx_string* %692, i64 2)
  %694 = getelementptr [10 x i8], [10 x i8]* @.str35, i32 0, i32 0
  %695 = call %nyx_string* @nyx_string_from_cstr(i8* %694)
  %696 = getelementptr [8 x i8], [8 x i8]* @.str36, i32 0, i32 0
  %697 = call %nyx_string* @nyx_string_from_cstr(i8* %696)
  %698 = call i64 @scope_declare_fn(%nyx_string* %695, %nyx_string* %697, i64 3)
  %699 = getelementptr [10 x i8], [10 x i8]* @.str37, i32 0, i32 0
  %700 = call %nyx_string* @nyx_string_from_cstr(i8* %699)
  %701 = getelementptr [8 x i8], [8 x i8]* @.str38, i32 0, i32 0
  %702 = call %nyx_string* @nyx_string_from_cstr(i8* %701)
  %703 = call i64 @scope_declare_fn(%nyx_string* %700, %nyx_string* %702, i64 1)
  %704 = getelementptr [11 x i8], [11 x i8]* @.str39, i32 0, i32 0
  %705 = call %nyx_string* @nyx_string_from_cstr(i8* %704)
  %706 = getelementptr [8 x i8], [8 x i8]* @.str40, i32 0, i32 0
  %707 = call %nyx_string* @nyx_string_from_cstr(i8* %706)
  %708 = call i64 @scope_declare_fn(%nyx_string* %705, %nyx_string* %707, i64 1)
  %709 = getelementptr [6 x i8], [6 x i8]* @.str41, i32 0, i32 0
  %710 = call %nyx_string* @nyx_string_from_cstr(i8* %709)
  %711 = getelementptr [8 x i8], [8 x i8]* @.str42, i32 0, i32 0
  %712 = call %nyx_string* @nyx_string_from_cstr(i8* %711)
  %713 = call i64 @scope_declare_fn(%nyx_string* %710, %nyx_string* %712, i64 1)
  %714 = getelementptr [8 x i8], [8 x i8]* @.str43, i32 0, i32 0
  %715 = call %nyx_string* @nyx_string_from_cstr(i8* %714)
  %716 = getelementptr [8 x i8], [8 x i8]* @.str44, i32 0, i32 0
  %717 = call %nyx_string* @nyx_string_from_cstr(i8* %716)
  %718 = call i64 @scope_declare_fn(%nyx_string* %715, %nyx_string* %717, i64 1)
  %719 = getelementptr [12 x i8], [12 x i8]* @.str45, i32 0, i32 0
  %720 = call %nyx_string* @nyx_string_from_cstr(i8* %719)
  %721 = getelementptr [8 x i8], [8 x i8]* @.str46, i32 0, i32 0
  %722 = call %nyx_string* @nyx_string_from_cstr(i8* %721)
  %723 = call i64 @scope_declare_fn(%nyx_string* %720, %nyx_string* %722, i64 1)
  %724 = getelementptr [12 x i8], [12 x i8]* @.str47, i32 0, i32 0
  %725 = call %nyx_string* @nyx_string_from_cstr(i8* %724)
  %726 = getelementptr [8 x i8], [8 x i8]* @.str48, i32 0, i32 0
  %727 = call %nyx_string* @nyx_string_from_cstr(i8* %726)
  %728 = call i64 @scope_declare_fn(%nyx_string* %725, %nyx_string* %727, i64 2)
  %729 = getelementptr [12 x i8], [12 x i8]* @.str49, i32 0, i32 0
  %730 = call %nyx_string* @nyx_string_from_cstr(i8* %729)
  %731 = getelementptr [8 x i8], [8 x i8]* @.str50, i32 0, i32 0
  %732 = call %nyx_string* @nyx_string_from_cstr(i8* %731)
  %733 = call i64 @scope_declare_fn(%nyx_string* %730, %nyx_string* %732, i64 1)
  %734 = getelementptr [18 x i8], [18 x i8]* @.str51, i32 0, i32 0
  %735 = call %nyx_string* @nyx_string_from_cstr(i8* %734)
  %736 = getelementptr [8 x i8], [8 x i8]* @.str52, i32 0, i32 0
  %737 = call %nyx_string* @nyx_string_from_cstr(i8* %736)
  %738 = call i64 @scope_declare_fn(%nyx_string* %735, %nyx_string* %737, i64 3)
  %739 = getelementptr [23 x i8], [23 x i8]* @.str53, i32 0, i32 0
  %740 = call %nyx_string* @nyx_string_from_cstr(i8* %739)
  %741 = getelementptr [8 x i8], [8 x i8]* @.str54, i32 0, i32 0
  %742 = call %nyx_string* @nyx_string_from_cstr(i8* %741)
  %743 = call i64 @scope_declare_fn(%nyx_string* %740, %nyx_string* %742, i64 1)
  %744 = getelementptr [11 x i8], [11 x i8]* @.str55, i32 0, i32 0
  %745 = call %nyx_string* @nyx_string_from_cstr(i8* %744)
  %746 = getelementptr [8 x i8], [8 x i8]* @.str56, i32 0, i32 0
  %747 = call %nyx_string* @nyx_string_from_cstr(i8* %746)
  %748 = call i64 @scope_declare_fn(%nyx_string* %745, %nyx_string* %747, i64 2)
  %749 = getelementptr [11 x i8], [11 x i8]* @.str57, i32 0, i32 0
  %750 = call %nyx_string* @nyx_string_from_cstr(i8* %749)
  %751 = getelementptr [8 x i8], [8 x i8]* @.str58, i32 0, i32 0
  %752 = call %nyx_string* @nyx_string_from_cstr(i8* %751)
  %753 = call i64 @scope_declare_fn(%nyx_string* %750, %nyx_string* %752, i64 1)
  %754 = getelementptr [12 x i8], [12 x i8]* @.str59, i32 0, i32 0
  %755 = call %nyx_string* @nyx_string_from_cstr(i8* %754)
  %756 = getelementptr [8 x i8], [8 x i8]* @.str60, i32 0, i32 0
  %757 = call %nyx_string* @nyx_string_from_cstr(i8* %756)
  %758 = call i64 @scope_declare_fn(%nyx_string* %755, %nyx_string* %757, i64 2)
  %759 = getelementptr [9 x i8], [9 x i8]* @.str61, i32 0, i32 0
  %760 = call %nyx_string* @nyx_string_from_cstr(i8* %759)
  %761 = getelementptr [8 x i8], [8 x i8]* @.str62, i32 0, i32 0
  %762 = call %nyx_string* @nyx_string_from_cstr(i8* %761)
  %763 = call i64 @scope_declare_fn(%nyx_string* %760, %nyx_string* %762, i64 2)
  %764 = getelementptr [15 x i8], [15 x i8]* @.str63, i32 0, i32 0
  %765 = call %nyx_string* @nyx_string_from_cstr(i8* %764)
  %766 = getelementptr [8 x i8], [8 x i8]* @.str64, i32 0, i32 0
  %767 = call %nyx_string* @nyx_string_from_cstr(i8* %766)
  %768 = call i64 @scope_declare_fn(%nyx_string* %765, %nyx_string* %767, i64 2)
  %769 = getelementptr [14 x i8], [14 x i8]* @.str65, i32 0, i32 0
  %770 = call %nyx_string* @nyx_string_from_cstr(i8* %769)
  %771 = getelementptr [8 x i8], [8 x i8]* @.str66, i32 0, i32 0
  %772 = call %nyx_string* @nyx_string_from_cstr(i8* %771)
  %773 = call i64 @scope_declare_fn(%nyx_string* %770, %nyx_string* %772, i64 1)
  %774 = getelementptr [10 x i8], [10 x i8]* @.str67, i32 0, i32 0
  %775 = call %nyx_string* @nyx_string_from_cstr(i8* %774)
  %776 = getelementptr [8 x i8], [8 x i8]* @.str68, i32 0, i32 0
  %777 = call %nyx_string* @nyx_string_from_cstr(i8* %776)
  %778 = call i64 @scope_declare_fn(%nyx_string* %775, %nyx_string* %777, i64 2)
  %779 = getelementptr [10 x i8], [10 x i8]* @.str69, i32 0, i32 0
  %780 = call %nyx_string* @nyx_string_from_cstr(i8* %779)
  %781 = getelementptr [8 x i8], [8 x i8]* @.str70, i32 0, i32 0
  %782 = call %nyx_string* @nyx_string_from_cstr(i8* %781)
  %783 = call i64 @scope_declare_fn(%nyx_string* %780, %nyx_string* %782, i64 1)
  %784 = getelementptr [24 x i8], [24 x i8]* @.str71, i32 0, i32 0
  %785 = call %nyx_string* @nyx_string_from_cstr(i8* %784)
  %786 = getelementptr [8 x i8], [8 x i8]* @.str72, i32 0, i32 0
  %787 = call %nyx_string* @nyx_string_from_cstr(i8* %786)
  %788 = call i64 @scope_declare_fn(%nyx_string* %785, %nyx_string* %787, i64 1)
  %789 = getelementptr [9 x i8], [9 x i8]* @.str73, i32 0, i32 0
  %790 = call %nyx_string* @nyx_string_from_cstr(i8* %789)
  %791 = getelementptr [8 x i8], [8 x i8]* @.str74, i32 0, i32 0
  %792 = call %nyx_string* @nyx_string_from_cstr(i8* %791)
  %793 = call i64 @scope_declare_fn(%nyx_string* %790, %nyx_string* %792, i64 2)
  %794 = getelementptr [11 x i8], [11 x i8]* @.str75, i32 0, i32 0
  %795 = call %nyx_string* @nyx_string_from_cstr(i8* %794)
  %796 = getelementptr [8 x i8], [8 x i8]* @.str76, i32 0, i32 0
  %797 = call %nyx_string* @nyx_string_from_cstr(i8* %796)
  %798 = call i64 @scope_declare_fn(%nyx_string* %795, %nyx_string* %797, i64 4)
  %799 = getelementptr [13 x i8], [13 x i8]* @.str77, i32 0, i32 0
  %800 = call %nyx_string* @nyx_string_from_cstr(i8* %799)
  %801 = getelementptr [8 x i8], [8 x i8]* @.str78, i32 0, i32 0
  %802 = call %nyx_string* @nyx_string_from_cstr(i8* %801)
  %803 = call i64 @scope_declare_fn(%nyx_string* %800, %nyx_string* %802, i64 2)
  %804 = getelementptr [8 x i8], [8 x i8]* @.str79, i32 0, i32 0
  %805 = call %nyx_string* @nyx_string_from_cstr(i8* %804)
  %806 = getelementptr [8 x i8], [8 x i8]* @.str80, i32 0, i32 0
  %807 = call %nyx_string* @nyx_string_from_cstr(i8* %806)
  %808 = call i64 @scope_declare_fn(%nyx_string* %805, %nyx_string* %807, i64 1)
  %809 = getelementptr [16 x i8], [16 x i8]* @.str81, i32 0, i32 0
  %810 = call %nyx_string* @nyx_string_from_cstr(i8* %809)
  %811 = getelementptr [8 x i8], [8 x i8]* @.str82, i32 0, i32 0
  %812 = call %nyx_string* @nyx_string_from_cstr(i8* %811)
  %813 = call i64 @scope_declare_fn(%nyx_string* %810, %nyx_string* %812, i64 2)
  %814 = getelementptr [23 x i8], [23 x i8]* @.str83, i32 0, i32 0
  %815 = call %nyx_string* @nyx_string_from_cstr(i8* %814)
  %816 = getelementptr [8 x i8], [8 x i8]* @.str84, i32 0, i32 0
  %817 = call %nyx_string* @nyx_string_from_cstr(i8* %816)
  %818 = call i64 @scope_declare_fn(%nyx_string* %815, %nyx_string* %817, i64 1)
  %819 = getelementptr [12 x i8], [12 x i8]* @.str85, i32 0, i32 0
  %820 = call %nyx_string* @nyx_string_from_cstr(i8* %819)
  %821 = getelementptr [8 x i8], [8 x i8]* @.str86, i32 0, i32 0
  %822 = call %nyx_string* @nyx_string_from_cstr(i8* %821)
  %823 = call i64 @scope_declare_fn(%nyx_string* %820, %nyx_string* %822, i64 1)
  %824 = getelementptr [13 x i8], [13 x i8]* @.str87, i32 0, i32 0
  %825 = call %nyx_string* @nyx_string_from_cstr(i8* %824)
  %826 = getelementptr [8 x i8], [8 x i8]* @.str88, i32 0, i32 0
  %827 = call %nyx_string* @nyx_string_from_cstr(i8* %826)
  %828 = call i64 @scope_declare_fn(%nyx_string* %825, %nyx_string* %827, i64 1)
  %829 = getelementptr [12 x i8], [12 x i8]* @.str89, i32 0, i32 0
  %830 = call %nyx_string* @nyx_string_from_cstr(i8* %829)
  %831 = getelementptr [8 x i8], [8 x i8]* @.str90, i32 0, i32 0
  %832 = call %nyx_string* @nyx_string_from_cstr(i8* %831)
  %833 = call i64 @scope_declare_fn(%nyx_string* %830, %nyx_string* %832, i64 1)
  %834 = getelementptr [11 x i8], [11 x i8]* @.str91, i32 0, i32 0
  %835 = call %nyx_string* @nyx_string_from_cstr(i8* %834)
  %836 = getelementptr [8 x i8], [8 x i8]* @.str92, i32 0, i32 0
  %837 = call %nyx_string* @nyx_string_from_cstr(i8* %836)
  %838 = call i64 @scope_declare_fn(%nyx_string* %835, %nyx_string* %837, i64 1)
  %839 = getelementptr [11 x i8], [11 x i8]* @.str93, i32 0, i32 0
  %840 = call %nyx_string* @nyx_string_from_cstr(i8* %839)
  %841 = getelementptr [8 x i8], [8 x i8]* @.str94, i32 0, i32 0
  %842 = call %nyx_string* @nyx_string_from_cstr(i8* %841)
  %843 = call i64 @scope_declare_fn(%nyx_string* %840, %nyx_string* %842, i64 1)
  %844 = getelementptr [12 x i8], [12 x i8]* @.str95, i32 0, i32 0
  %845 = call %nyx_string* @nyx_string_from_cstr(i8* %844)
  %846 = getelementptr [8 x i8], [8 x i8]* @.str96, i32 0, i32 0
  %847 = call %nyx_string* @nyx_string_from_cstr(i8* %846)
  %848 = call i64 @scope_declare_fn(%nyx_string* %845, %nyx_string* %847, i64 1)
  %849 = getelementptr [10 x i8], [10 x i8]* @.str97, i32 0, i32 0
  %850 = call %nyx_string* @nyx_string_from_cstr(i8* %849)
  %851 = getelementptr [8 x i8], [8 x i8]* @.str98, i32 0, i32 0
  %852 = call %nyx_string* @nyx_string_from_cstr(i8* %851)
  %853 = call i64 @scope_declare_fn(%nyx_string* %850, %nyx_string* %852, i64 2)
  %854 = getelementptr [10 x i8], [10 x i8]* @.str99, i32 0, i32 0
  %855 = call %nyx_string* @nyx_string_from_cstr(i8* %854)
  %856 = getelementptr [8 x i8], [8 x i8]* @.str100, i32 0, i32 0
  %857 = call %nyx_string* @nyx_string_from_cstr(i8* %856)
  %858 = call i64 @scope_declare_fn(%nyx_string* %855, %nyx_string* %857, i64 0)
  %859 = getelementptr [11 x i8], [11 x i8]* @.str101, i32 0, i32 0
  %860 = call %nyx_string* @nyx_string_from_cstr(i8* %859)
  %861 = getelementptr [8 x i8], [8 x i8]* @.str102, i32 0, i32 0
  %862 = call %nyx_string* @nyx_string_from_cstr(i8* %861)
  %863 = call i64 @scope_declare_fn(%nyx_string* %860, %nyx_string* %862, i64 1)
  %864 = getelementptr [13 x i8], [13 x i8]* @.str103, i32 0, i32 0
  %865 = call %nyx_string* @nyx_string_from_cstr(i8* %864)
  %866 = getelementptr [8 x i8], [8 x i8]* @.str104, i32 0, i32 0
  %867 = call %nyx_string* @nyx_string_from_cstr(i8* %866)
  %868 = call i64 @scope_declare_fn(%nyx_string* %865, %nyx_string* %867, i64 1)
  %869 = getelementptr [14 x i8], [14 x i8]* @.str105, i32 0, i32 0
  %870 = call %nyx_string* @nyx_string_from_cstr(i8* %869)
  %871 = getelementptr [8 x i8], [8 x i8]* @.str106, i32 0, i32 0
  %872 = call %nyx_string* @nyx_string_from_cstr(i8* %871)
  %873 = call i64 @scope_declare_fn(%nyx_string* %870, %nyx_string* %872, i64 1)
  %874 = getelementptr [12 x i8], [12 x i8]* @.str107, i32 0, i32 0
  %875 = call %nyx_string* @nyx_string_from_cstr(i8* %874)
  %876 = getelementptr [8 x i8], [8 x i8]* @.str108, i32 0, i32 0
  %877 = call %nyx_string* @nyx_string_from_cstr(i8* %876)
  %878 = call i64 @scope_declare_fn(%nyx_string* %875, %nyx_string* %877, i64 1)
  %879 = getelementptr [13 x i8], [13 x i8]* @.str109, i32 0, i32 0
  %880 = call %nyx_string* @nyx_string_from_cstr(i8* %879)
  %881 = getelementptr [8 x i8], [8 x i8]* @.str110, i32 0, i32 0
  %882 = call %nyx_string* @nyx_string_from_cstr(i8* %881)
  %883 = call i64 @scope_declare_fn(%nyx_string* %880, %nyx_string* %882, i64 2)
  %884 = getelementptr [13 x i8], [13 x i8]* @.str111, i32 0, i32 0
  %885 = call %nyx_string* @nyx_string_from_cstr(i8* %884)
  %886 = getelementptr [8 x i8], [8 x i8]* @.str112, i32 0, i32 0
  %887 = call %nyx_string* @nyx_string_from_cstr(i8* %886)
  %888 = call i64 @scope_declare_fn(%nyx_string* %885, %nyx_string* %887, i64 1)
  %889 = getelementptr [16 x i8], [16 x i8]* @.str113, i32 0, i32 0
  %890 = call %nyx_string* @nyx_string_from_cstr(i8* %889)
  %891 = getelementptr [8 x i8], [8 x i8]* @.str114, i32 0, i32 0
  %892 = call %nyx_string* @nyx_string_from_cstr(i8* %891)
  %893 = call i64 @scope_declare_fn(%nyx_string* %890, %nyx_string* %892, i64 1)
  %894 = getelementptr [5 x i8], [5 x i8]* @.str115, i32 0, i32 0
  %895 = call %nyx_string* @nyx_string_from_cstr(i8* %894)
  %896 = getelementptr [8 x i8], [8 x i8]* @.str116, i32 0, i32 0
  %897 = call %nyx_string* @nyx_string_from_cstr(i8* %896)
  %898 = call i64 @scope_declare_fn(%nyx_string* %895, %nyx_string* %897, i64 1)
  %899 = getelementptr [7 x i8], [7 x i8]* @.str117, i32 0, i32 0
  %900 = call %nyx_string* @nyx_string_from_cstr(i8* %899)
  %901 = getelementptr [8 x i8], [8 x i8]* @.str118, i32 0, i32 0
  %902 = call %nyx_string* @nyx_string_from_cstr(i8* %901)
  %903 = call i64 @scope_declare_fn(%nyx_string* %900, %nyx_string* %902, i64 1)
  %904 = getelementptr [15 x i8], [15 x i8]* @.str119, i32 0, i32 0
  %905 = call %nyx_string* @nyx_string_from_cstr(i8* %904)
  %906 = getelementptr [8 x i8], [8 x i8]* @.str120, i32 0, i32 0
  %907 = call %nyx_string* @nyx_string_from_cstr(i8* %906)
  %908 = call i64 @scope_declare_fn(%nyx_string* %905, %nyx_string* %907, i64 2)
  %909 = getelementptr [7 x i8], [7 x i8]* @.str121, i32 0, i32 0
  %910 = call %nyx_string* @nyx_string_from_cstr(i8* %909)
  %911 = getelementptr [8 x i8], [8 x i8]* @.str122, i32 0, i32 0
  %912 = call %nyx_string* @nyx_string_from_cstr(i8* %911)
  %913 = call i64 @scope_declare_fn(%nyx_string* %910, %nyx_string* %912, i64 2)
  %914 = getelementptr [5 x i8], [5 x i8]* @.str123, i32 0, i32 0
  %915 = call %nyx_string* @nyx_string_from_cstr(i8* %914)
  %916 = getelementptr [8 x i8], [8 x i8]* @.str124, i32 0, i32 0
  %917 = call %nyx_string* @nyx_string_from_cstr(i8* %916)
  %918 = call i64 @scope_declare_fn(%nyx_string* %915, %nyx_string* %917, i64 1)
  %919 = getelementptr [9 x i8], [9 x i8]* @.str125, i32 0, i32 0
  %920 = call %nyx_string* @nyx_string_from_cstr(i8* %919)
  %921 = getelementptr [8 x i8], [8 x i8]* @.str126, i32 0, i32 0
  %922 = call %nyx_string* @nyx_string_from_cstr(i8* %921)
  %923 = call i64 @scope_declare_fn(%nyx_string* %920, %nyx_string* %922, i64 0)
  %924 = getelementptr [6 x i8], [6 x i8]* @.str127, i32 0, i32 0
  %925 = call %nyx_string* @nyx_string_from_cstr(i8* %924)
  %926 = getelementptr [8 x i8], [8 x i8]* @.str128, i32 0, i32 0
  %927 = call %nyx_string* @nyx_string_from_cstr(i8* %926)
  %928 = call i64 @scope_declare_fn(%nyx_string* %925, %nyx_string* %927, i64 1)
  %929 = getelementptr [5 x i8], [5 x i8]* @.str129, i32 0, i32 0
  %930 = call %nyx_string* @nyx_string_from_cstr(i8* %929)
  %931 = getelementptr [8 x i8], [8 x i8]* @.str130, i32 0, i32 0
  %932 = call %nyx_string* @nyx_string_from_cstr(i8* %931)
  %933 = call i64 @scope_declare_fn(%nyx_string* %930, %nyx_string* %932, i64 0)
  %934 = getelementptr [8 x i8], [8 x i8]* @.str131, i32 0, i32 0
  %935 = call %nyx_string* @nyx_string_from_cstr(i8* %934)
  %936 = getelementptr [8 x i8], [8 x i8]* @.str132, i32 0, i32 0
  %937 = call %nyx_string* @nyx_string_from_cstr(i8* %936)
  %938 = call i64 @scope_declare_fn(%nyx_string* %935, %nyx_string* %937, i64 0)
  %939 = getelementptr [8 x i8], [8 x i8]* @.str133, i32 0, i32 0
  %940 = call %nyx_string* @nyx_string_from_cstr(i8* %939)
  %941 = getelementptr [8 x i8], [8 x i8]* @.str134, i32 0, i32 0
  %942 = call %nyx_string* @nyx_string_from_cstr(i8* %941)
  %943 = call i64 @scope_declare_fn(%nyx_string* %940, %nyx_string* %942, i64 0)
  %944 = getelementptr [9 x i8], [9 x i8]* @.str135, i32 0, i32 0
  %945 = call %nyx_string* @nyx_string_from_cstr(i8* %944)
  %946 = getelementptr [8 x i8], [8 x i8]* @.str136, i32 0, i32 0
  %947 = call %nyx_string* @nyx_string_from_cstr(i8* %946)
  %948 = call i64 @scope_declare_fn(%nyx_string* %945, %nyx_string* %947, i64 1)
  %949 = getelementptr [10 x i8], [10 x i8]* @.str137, i32 0, i32 0
  %950 = call %nyx_string* @nyx_string_from_cstr(i8* %949)
  %951 = getelementptr [8 x i8], [8 x i8]* @.str138, i32 0, i32 0
  %952 = call %nyx_string* @nyx_string_from_cstr(i8* %951)
  %953 = call i64 @scope_declare_fn(%nyx_string* %950, %nyx_string* %952, i64 1)
  %954 = getelementptr [11 x i8], [11 x i8]* @.str139, i32 0, i32 0
  %955 = call %nyx_string* @nyx_string_from_cstr(i8* %954)
  %956 = getelementptr [8 x i8], [8 x i8]* @.str140, i32 0, i32 0
  %957 = call %nyx_string* @nyx_string_from_cstr(i8* %956)
  %958 = call i64 @scope_declare_fn(%nyx_string* %955, %nyx_string* %957, i64 1)
  %959 = getelementptr [9 x i8], [9 x i8]* @.str141, i32 0, i32 0
  %960 = call %nyx_string* @nyx_string_from_cstr(i8* %959)
  %961 = getelementptr [8 x i8], [8 x i8]* @.str142, i32 0, i32 0
  %962 = call %nyx_string* @nyx_string_from_cstr(i8* %961)
  %963 = call i64 @scope_declare_fn(%nyx_string* %960, %nyx_string* %962, i64 1)
  %964 = getelementptr [9 x i8], [9 x i8]* @.str143, i32 0, i32 0
  %965 = call %nyx_string* @nyx_string_from_cstr(i8* %964)
  %966 = getelementptr [8 x i8], [8 x i8]* @.str144, i32 0, i32 0
  %967 = call %nyx_string* @nyx_string_from_cstr(i8* %966)
  %968 = call i64 @scope_declare_fn(%nyx_string* %965, %nyx_string* %967, i64 1)
  %969 = getelementptr [9 x i8], [9 x i8]* @.str145, i32 0, i32 0
  %970 = call %nyx_string* @nyx_string_from_cstr(i8* %969)
  %971 = getelementptr [8 x i8], [8 x i8]* @.str146, i32 0, i32 0
  %972 = call %nyx_string* @nyx_string_from_cstr(i8* %971)
  %973 = call i64 @scope_declare_fn(%nyx_string* %970, %nyx_string* %972, i64 1)
  %974 = getelementptr [9 x i8], [9 x i8]* @.str147, i32 0, i32 0
  %975 = call %nyx_string* @nyx_string_from_cstr(i8* %974)
  %976 = getelementptr [8 x i8], [8 x i8]* @.str148, i32 0, i32 0
  %977 = call %nyx_string* @nyx_string_from_cstr(i8* %976)
  %978 = call i64 @scope_declare_fn(%nyx_string* %975, %nyx_string* %977, i64 1)
  %979 = getelementptr [10 x i8], [10 x i8]* @.str149, i32 0, i32 0
  %980 = call %nyx_string* @nyx_string_from_cstr(i8* %979)
  %981 = getelementptr [8 x i8], [8 x i8]* @.str150, i32 0, i32 0
  %982 = call %nyx_string* @nyx_string_from_cstr(i8* %981)
  %983 = call i64 @scope_declare_fn(%nyx_string* %980, %nyx_string* %982, i64 1)
  %984 = getelementptr [10 x i8], [10 x i8]* @.str151, i32 0, i32 0
  %985 = call %nyx_string* @nyx_string_from_cstr(i8* %984)
  %986 = getelementptr [8 x i8], [8 x i8]* @.str152, i32 0, i32 0
  %987 = call %nyx_string* @nyx_string_from_cstr(i8* %986)
  %988 = call i64 @scope_declare_fn(%nyx_string* %985, %nyx_string* %987, i64 1)
  %989 = getelementptr [10 x i8], [10 x i8]* @.str153, i32 0, i32 0
  %990 = call %nyx_string* @nyx_string_from_cstr(i8* %989)
  %991 = getelementptr [8 x i8], [8 x i8]* @.str154, i32 0, i32 0
  %992 = call %nyx_string* @nyx_string_from_cstr(i8* %991)
  %993 = call i64 @scope_declare_fn(%nyx_string* %990, %nyx_string* %992, i64 1)
  %994 = getelementptr [11 x i8], [11 x i8]* @.str155, i32 0, i32 0
  %995 = call %nyx_string* @nyx_string_from_cstr(i8* %994)
  %996 = getelementptr [8 x i8], [8 x i8]* @.str156, i32 0, i32 0
  %997 = call %nyx_string* @nyx_string_from_cstr(i8* %996)
  %998 = call i64 @scope_declare_fn(%nyx_string* %995, %nyx_string* %997, i64 2)
  %999 = getelementptr [10 x i8], [10 x i8]* @.str157, i32 0, i32 0
  %1000 = call %nyx_string* @nyx_string_from_cstr(i8* %999)
  %1001 = getelementptr [8 x i8], [8 x i8]* @.str158, i32 0, i32 0
  %1002 = call %nyx_string* @nyx_string_from_cstr(i8* %1001)
  %1003 = call i64 @scope_declare_fn(%nyx_string* %1000, %nyx_string* %1002, i64 1)
  %1004 = getelementptr [10 x i8], [10 x i8]* @.str159, i32 0, i32 0
  %1005 = call %nyx_string* @nyx_string_from_cstr(i8* %1004)
  %1006 = getelementptr [8 x i8], [8 x i8]* @.str160, i32 0, i32 0
  %1007 = call %nyx_string* @nyx_string_from_cstr(i8* %1006)
  %1008 = call i64 @scope_declare_fn(%nyx_string* %1005, %nyx_string* %1007, i64 1)
  %1009 = getelementptr [11 x i8], [11 x i8]* @.str161, i32 0, i32 0
  %1010 = call %nyx_string* @nyx_string_from_cstr(i8* %1009)
  %1011 = getelementptr [8 x i8], [8 x i8]* @.str162, i32 0, i32 0
  %1012 = call %nyx_string* @nyx_string_from_cstr(i8* %1011)
  %1013 = call i64 @scope_declare_fn(%nyx_string* %1010, %nyx_string* %1012, i64 1)
  %1014 = getelementptr [11 x i8], [11 x i8]* @.str163, i32 0, i32 0
  %1015 = call %nyx_string* @nyx_string_from_cstr(i8* %1014)
  %1016 = getelementptr [8 x i8], [8 x i8]* @.str164, i32 0, i32 0
  %1017 = call %nyx_string* @nyx_string_from_cstr(i8* %1016)
  %1018 = call i64 @scope_declare_fn(%nyx_string* %1015, %nyx_string* %1017, i64 1)
  %1019 = getelementptr [10 x i8], [10 x i8]* @.str165, i32 0, i32 0
  %1020 = call %nyx_string* @nyx_string_from_cstr(i8* %1019)
  %1021 = getelementptr [8 x i8], [8 x i8]* @.str166, i32 0, i32 0
  %1022 = call %nyx_string* @nyx_string_from_cstr(i8* %1021)
  %1023 = call i64 @scope_declare_fn(%nyx_string* %1020, %nyx_string* %1022, i64 1)
  %1024 = getelementptr [10 x i8], [10 x i8]* @.str167, i32 0, i32 0
  %1025 = call %nyx_string* @nyx_string_from_cstr(i8* %1024)
  %1026 = getelementptr [8 x i8], [8 x i8]* @.str168, i32 0, i32 0
  %1027 = call %nyx_string* @nyx_string_from_cstr(i8* %1026)
  %1028 = call i64 @scope_declare_fn(%nyx_string* %1025, %nyx_string* %1027, i64 2)
  %1029 = getelementptr [14 x i8], [14 x i8]* @.str169, i32 0, i32 0
  %1030 = call %nyx_string* @nyx_string_from_cstr(i8* %1029)
  %1031 = getelementptr [8 x i8], [8 x i8]* @.str170, i32 0, i32 0
  %1032 = call %nyx_string* @nyx_string_from_cstr(i8* %1031)
  %1033 = call i64 @scope_declare_fn(%nyx_string* %1030, %nyx_string* %1032, i64 2)
  %1034 = getelementptr [13 x i8], [13 x i8]* @.str171, i32 0, i32 0
  %1035 = call %nyx_string* @nyx_string_from_cstr(i8* %1034)
  %1036 = getelementptr [8 x i8], [8 x i8]* @.str172, i32 0, i32 0
  %1037 = call %nyx_string* @nyx_string_from_cstr(i8* %1036)
  %1038 = call i64 @scope_declare_fn(%nyx_string* %1035, %nyx_string* %1037, i64 1)
  %1039 = getelementptr [14 x i8], [14 x i8]* @.str173, i32 0, i32 0
  %1040 = call %nyx_string* @nyx_string_from_cstr(i8* %1039)
  %1041 = getelementptr [8 x i8], [8 x i8]* @.str174, i32 0, i32 0
  %1042 = call %nyx_string* @nyx_string_from_cstr(i8* %1041)
  %1043 = call i64 @scope_declare_fn(%nyx_string* %1040, %nyx_string* %1042, i64 1)
  %1044 = getelementptr [12 x i8], [12 x i8]* @.str175, i32 0, i32 0
  %1045 = call %nyx_string* @nyx_string_from_cstr(i8* %1044)
  %1046 = getelementptr [8 x i8], [8 x i8]* @.str176, i32 0, i32 0
  %1047 = call %nyx_string* @nyx_string_from_cstr(i8* %1046)
  %1048 = call i64 @scope_declare_fn(%nyx_string* %1045, %nyx_string* %1047, i64 2)
  %1049 = getelementptr [15 x i8], [15 x i8]* @.str177, i32 0, i32 0
  %1050 = call %nyx_string* @nyx_string_from_cstr(i8* %1049)
  %1051 = getelementptr [8 x i8], [8 x i8]* @.str178, i32 0, i32 0
  %1052 = call %nyx_string* @nyx_string_from_cstr(i8* %1051)
  %1053 = call i64 @scope_declare_fn(%nyx_string* %1050, %nyx_string* %1052, i64 2)
  %1054 = getelementptr [14 x i8], [14 x i8]* @.str179, i32 0, i32 0
  %1055 = call %nyx_string* @nyx_string_from_cstr(i8* %1054)
  %1056 = getelementptr [8 x i8], [8 x i8]* @.str180, i32 0, i32 0
  %1057 = call %nyx_string* @nyx_string_from_cstr(i8* %1056)
  %1058 = call i64 @scope_declare_fn(%nyx_string* %1055, %nyx_string* %1057, i64 3)
  %1059 = getelementptr [18 x i8], [18 x i8]* @.str181, i32 0, i32 0
  %1060 = call %nyx_string* @nyx_string_from_cstr(i8* %1059)
  %1061 = getelementptr [8 x i8], [8 x i8]* @.str182, i32 0, i32 0
  %1062 = call %nyx_string* @nyx_string_from_cstr(i8* %1061)
  %1063 = call i64 @scope_declare_fn(%nyx_string* %1060, %nyx_string* %1062, i64 3)
  %1064 = getelementptr [13 x i8], [13 x i8]* @.str183, i32 0, i32 0
  %1065 = call %nyx_string* @nyx_string_from_cstr(i8* %1064)
  %1066 = getelementptr [8 x i8], [8 x i8]* @.str184, i32 0, i32 0
  %1067 = call %nyx_string* @nyx_string_from_cstr(i8* %1066)
  %1068 = call i64 @scope_declare_fn(%nyx_string* %1065, %nyx_string* %1067, i64 0)
  %1069 = getelementptr [16 x i8], [16 x i8]* @.str185, i32 0, i32 0
  %1070 = call %nyx_string* @nyx_string_from_cstr(i8* %1069)
  %1071 = getelementptr [8 x i8], [8 x i8]* @.str186, i32 0, i32 0
  %1072 = call %nyx_string* @nyx_string_from_cstr(i8* %1071)
  %1073 = call i64 @scope_declare_fn(%nyx_string* %1070, %nyx_string* %1072, i64 1)
  %1074 = getelementptr [11 x i8], [11 x i8]* @.str187, i32 0, i32 0
  %1075 = call %nyx_string* @nyx_string_from_cstr(i8* %1074)
  %1076 = getelementptr [8 x i8], [8 x i8]* @.str188, i32 0, i32 0
  %1077 = call %nyx_string* @nyx_string_from_cstr(i8* %1076)
  %1078 = call i64 @scope_declare_fn(%nyx_string* %1075, %nyx_string* %1077, i64 0)
  %1079 = getelementptr [20 x i8], [20 x i8]* @.str189, i32 0, i32 0
  %1080 = call %nyx_string* @nyx_string_from_cstr(i8* %1079)
  %1081 = getelementptr [8 x i8], [8 x i8]* @.str190, i32 0, i32 0
  %1082 = call %nyx_string* @nyx_string_from_cstr(i8* %1081)
  %1083 = call i64 @scope_declare_fn(%nyx_string* %1080, %nyx_string* %1082, i64 1)
  %1084 = getelementptr [15 x i8], [15 x i8]* @.str191, i32 0, i32 0
  %1085 = call %nyx_string* @nyx_string_from_cstr(i8* %1084)
  %1086 = getelementptr [8 x i8], [8 x i8]* @.str192, i32 0, i32 0
  %1087 = call %nyx_string* @nyx_string_from_cstr(i8* %1086)
  %1088 = call i64 @scope_declare_fn(%nyx_string* %1085, %nyx_string* %1087, i64 2)
  %1089 = getelementptr [14 x i8], [14 x i8]* @.str193, i32 0, i32 0
  %1090 = call %nyx_string* @nyx_string_from_cstr(i8* %1089)
  %1091 = getelementptr [8 x i8], [8 x i8]* @.str194, i32 0, i32 0
  %1092 = call %nyx_string* @nyx_string_from_cstr(i8* %1091)
  %1093 = call i64 @scope_declare_fn(%nyx_string* %1090, %nyx_string* %1092, i64 1)
  %1094 = getelementptr [15 x i8], [15 x i8]* @.str195, i32 0, i32 0
  %1095 = call %nyx_string* @nyx_string_from_cstr(i8* %1094)
  %1096 = getelementptr [8 x i8], [8 x i8]* @.str196, i32 0, i32 0
  %1097 = call %nyx_string* @nyx_string_from_cstr(i8* %1096)
  %1098 = call i64 @scope_declare_fn(%nyx_string* %1095, %nyx_string* %1097, i64 1)
  %1099 = getelementptr [13 x i8], [13 x i8]* @.str197, i32 0, i32 0
  %1100 = call %nyx_string* @nyx_string_from_cstr(i8* %1099)
  %1101 = getelementptr [8 x i8], [8 x i8]* @.str198, i32 0, i32 0
  %1102 = call %nyx_string* @nyx_string_from_cstr(i8* %1101)
  %1103 = call i64 @scope_declare_fn(%nyx_string* %1100, %nyx_string* %1102, i64 1)
  %1104 = getelementptr [14 x i8], [14 x i8]* @.str199, i32 0, i32 0
  %1105 = call %nyx_string* @nyx_string_from_cstr(i8* %1104)
  %1106 = getelementptr [8 x i8], [8 x i8]* @.str200, i32 0, i32 0
  %1107 = call %nyx_string* @nyx_string_from_cstr(i8* %1106)
  %1108 = call i64 @scope_declare_fn(%nyx_string* %1105, %nyx_string* %1107, i64 1)
  %1109 = getelementptr [16 x i8], [16 x i8]* @.str201, i32 0, i32 0
  %1110 = call %nyx_string* @nyx_string_from_cstr(i8* %1109)
  %1111 = getelementptr [8 x i8], [8 x i8]* @.str202, i32 0, i32 0
  %1112 = call %nyx_string* @nyx_string_from_cstr(i8* %1111)
  %1113 = call i64 @scope_declare_fn(%nyx_string* %1110, %nyx_string* %1112, i64 1)
  %1114 = getelementptr [16 x i8], [16 x i8]* @.str203, i32 0, i32 0
  %1115 = call %nyx_string* @nyx_string_from_cstr(i8* %1114)
  %1116 = getelementptr [8 x i8], [8 x i8]* @.str204, i32 0, i32 0
  %1117 = call %nyx_string* @nyx_string_from_cstr(i8* %1116)
  %1118 = call i64 @scope_declare_fn(%nyx_string* %1115, %nyx_string* %1117, i64 1)
  %1119 = getelementptr [17 x i8], [17 x i8]* @.str205, i32 0, i32 0
  %1120 = call %nyx_string* @nyx_string_from_cstr(i8* %1119)
  %1121 = getelementptr [8 x i8], [8 x i8]* @.str206, i32 0, i32 0
  %1122 = call %nyx_string* @nyx_string_from_cstr(i8* %1121)
  %1123 = call i64 @scope_declare_fn(%nyx_string* %1120, %nyx_string* %1122, i64 1)
  %1124 = getelementptr [7 x i8], [7 x i8]* @.str207, i32 0, i32 0
  %1125 = call %nyx_string* @nyx_string_from_cstr(i8* %1124)
  %1126 = getelementptr [8 x i8], [8 x i8]* @.str208, i32 0, i32 0
  %1127 = call %nyx_string* @nyx_string_from_cstr(i8* %1126)
  %1128 = call i64 @scope_declare_fn(%nyx_string* %1125, %nyx_string* %1127, i64 1)
  %1129 = getelementptr [4 x i8], [4 x i8]* @.str209, i32 0, i32 0
  %1130 = call %nyx_string* @nyx_string_from_cstr(i8* %1129)
  %1131 = getelementptr [8 x i8], [8 x i8]* @.str210, i32 0, i32 0
  %1132 = call %nyx_string* @nyx_string_from_cstr(i8* %1131)
  %1133 = call i64 @scope_declare_fn(%nyx_string* %1130, %nyx_string* %1132, i64 1)
  %1134 = getelementptr [12 x i8], [12 x i8]* @.str211, i32 0, i32 0
  %1135 = call %nyx_string* @nyx_string_from_cstr(i8* %1134)
  %1136 = getelementptr [8 x i8], [8 x i8]* @.str212, i32 0, i32 0
  %1137 = call %nyx_string* @nyx_string_from_cstr(i8* %1136)
  %1138 = call i64 @scope_declare_fn(%nyx_string* %1135, %nyx_string* %1137, i64 2)
  %1139 = getelementptr [10 x i8], [10 x i8]* @.str213, i32 0, i32 0
  %1140 = call %nyx_string* @nyx_string_from_cstr(i8* %1139)
  %1141 = getelementptr [8 x i8], [8 x i8]* @.str214, i32 0, i32 0
  %1142 = call %nyx_string* @nyx_string_from_cstr(i8* %1141)
  %1143 = call i64 @scope_declare_fn(%nyx_string* %1140, %nyx_string* %1142, i64 1)
  %1144 = getelementptr [11 x i8], [11 x i8]* @.str215, i32 0, i32 0
  %1145 = call %nyx_string* @nyx_string_from_cstr(i8* %1144)
  %1146 = getelementptr [8 x i8], [8 x i8]* @.str216, i32 0, i32 0
  %1147 = call %nyx_string* @nyx_string_from_cstr(i8* %1146)
  %1148 = call i64 @scope_declare_fn(%nyx_string* %1145, %nyx_string* %1147, i64 3)
  %1149 = getelementptr [12 x i8], [12 x i8]* @.str217, i32 0, i32 0
  %1150 = call %nyx_string* @nyx_string_from_cstr(i8* %1149)
  %1151 = getelementptr [8 x i8], [8 x i8]* @.str218, i32 0, i32 0
  %1152 = call %nyx_string* @nyx_string_from_cstr(i8* %1151)
  %1153 = call i64 @scope_declare_fn(%nyx_string* %1150, %nyx_string* %1152, i64 2)
  %1154 = getelementptr [9 x i8], [9 x i8]* @.str219, i32 0, i32 0
  %1155 = call %nyx_string* @nyx_string_from_cstr(i8* %1154)
  %1156 = getelementptr [8 x i8], [8 x i8]* @.str220, i32 0, i32 0
  %1157 = call %nyx_string* @nyx_string_from_cstr(i8* %1156)
  %1158 = call i64 @scope_declare_fn(%nyx_string* %1155, %nyx_string* %1157, i64 2)
  %1159 = getelementptr [10 x i8], [10 x i8]* @.str221, i32 0, i32 0
  %1160 = call %nyx_string* @nyx_string_from_cstr(i8* %1159)
  %1161 = getelementptr [8 x i8], [8 x i8]* @.str222, i32 0, i32 0
  %1162 = call %nyx_string* @nyx_string_from_cstr(i8* %1161)
  %1163 = call i64 @scope_declare_fn(%nyx_string* %1160, %nyx_string* %1162, i64 2)
  %1164 = getelementptr [10 x i8], [10 x i8]* @.str223, i32 0, i32 0
  %1165 = call %nyx_string* @nyx_string_from_cstr(i8* %1164)
  %1166 = getelementptr [8 x i8], [8 x i8]* @.str224, i32 0, i32 0
  %1167 = call %nyx_string* @nyx_string_from_cstr(i8* %1166)
  %1168 = call i64 @scope_declare_fn(%nyx_string* %1165, %nyx_string* %1167, i64 1)
  %1169 = getelementptr [16 x i8], [16 x i8]* @.str225, i32 0, i32 0
  %1170 = call %nyx_string* @nyx_string_from_cstr(i8* %1169)
  %1171 = getelementptr [8 x i8], [8 x i8]* @.str226, i32 0, i32 0
  %1172 = call %nyx_string* @nyx_string_from_cstr(i8* %1171)
  %1173 = call i64 @scope_declare_fn(%nyx_string* %1170, %nyx_string* %1172, i64 2)
  %1174 = getelementptr [20 x i8], [20 x i8]* @.str227, i32 0, i32 0
  %1175 = call %nyx_string* @nyx_string_from_cstr(i8* %1174)
  %1176 = getelementptr [8 x i8], [8 x i8]* @.str228, i32 0, i32 0
  %1177 = call %nyx_string* @nyx_string_from_cstr(i8* %1176)
  %1178 = call i64 @scope_declare_fn(%nyx_string* %1175, %nyx_string* %1177, i64 3)
  %1179 = getelementptr [11 x i8], [11 x i8]* @.str229, i32 0, i32 0
  %1180 = call %nyx_string* @nyx_string_from_cstr(i8* %1179)
  %1181 = getelementptr [8 x i8], [8 x i8]* @.str230, i32 0, i32 0
  %1182 = call %nyx_string* @nyx_string_from_cstr(i8* %1181)
  %1183 = call i64 @scope_declare_fn(%nyx_string* %1180, %nyx_string* %1182, i64 1)
  %1184 = getelementptr [14 x i8], [14 x i8]* @.str231, i32 0, i32 0
  %1185 = call %nyx_string* @nyx_string_from_cstr(i8* %1184)
  %1186 = getelementptr [8 x i8], [8 x i8]* @.str232, i32 0, i32 0
  %1187 = call %nyx_string* @nyx_string_from_cstr(i8* %1186)
  %1188 = call i64 @scope_declare_fn(%nyx_string* %1185, %nyx_string* %1187, i64 1)
  %1189 = getelementptr [15 x i8], [15 x i8]* @.str233, i32 0, i32 0
  %1190 = call %nyx_string* @nyx_string_from_cstr(i8* %1189)
  %1191 = getelementptr [8 x i8], [8 x i8]* @.str234, i32 0, i32 0
  %1192 = call %nyx_string* @nyx_string_from_cstr(i8* %1191)
  %1193 = call i64 @scope_declare_fn(%nyx_string* %1190, %nyx_string* %1192, i64 2)
  %1194 = getelementptr [15 x i8], [15 x i8]* @.str235, i32 0, i32 0
  %1195 = call %nyx_string* @nyx_string_from_cstr(i8* %1194)
  %1196 = getelementptr [8 x i8], [8 x i8]* @.str236, i32 0, i32 0
  %1197 = call %nyx_string* @nyx_string_from_cstr(i8* %1196)
  %1198 = call i64 @scope_declare_fn(%nyx_string* %1195, %nyx_string* %1197, i64 1)
  %1199 = getelementptr [10 x i8], [10 x i8]* @.str237, i32 0, i32 0
  %1200 = call %nyx_string* @nyx_string_from_cstr(i8* %1199)
  %1201 = getelementptr [8 x i8], [8 x i8]* @.str238, i32 0, i32 0
  %1202 = call %nyx_string* @nyx_string_from_cstr(i8* %1201)
  %1203 = call i64 @scope_declare_fn(%nyx_string* %1200, %nyx_string* %1202, i64 0)
  %1204 = getelementptr [17 x i8], [17 x i8]* @.str239, i32 0, i32 0
  %1205 = call %nyx_string* @nyx_string_from_cstr(i8* %1204)
  %1206 = getelementptr [8 x i8], [8 x i8]* @.str240, i32 0, i32 0
  %1207 = call %nyx_string* @nyx_string_from_cstr(i8* %1206)
  %1208 = call i64 @scope_declare_fn(%nyx_string* %1205, %nyx_string* %1207, i64 1)
  %1209 = getelementptr [14 x i8], [14 x i8]* @.str241, i32 0, i32 0
  %1210 = call %nyx_string* @nyx_string_from_cstr(i8* %1209)
  %1211 = getelementptr [8 x i8], [8 x i8]* @.str242, i32 0, i32 0
  %1212 = call %nyx_string* @nyx_string_from_cstr(i8* %1211)
  %1213 = call i64 @scope_declare_fn(%nyx_string* %1210, %nyx_string* %1212, i64 1)
  %1214 = getelementptr [16 x i8], [16 x i8]* @.str243, i32 0, i32 0
  %1215 = call %nyx_string* @nyx_string_from_cstr(i8* %1214)
  %1216 = getelementptr [8 x i8], [8 x i8]* @.str244, i32 0, i32 0
  %1217 = call %nyx_string* @nyx_string_from_cstr(i8* %1216)
  %1218 = call i64 @scope_declare_fn(%nyx_string* %1215, %nyx_string* %1217, i64 1)
  %1219 = getelementptr [16 x i8], [16 x i8]* @.str245, i32 0, i32 0
  %1220 = call %nyx_string* @nyx_string_from_cstr(i8* %1219)
  %1221 = getelementptr [8 x i8], [8 x i8]* @.str246, i32 0, i32 0
  %1222 = call %nyx_string* @nyx_string_from_cstr(i8* %1221)
  %1223 = call i64 @scope_declare_fn(%nyx_string* %1220, %nyx_string* %1222, i64 1)
  %1224 = getelementptr [5 x i8], [5 x i8]* @.str247, i32 0, i32 0
  %1225 = call %nyx_string* @nyx_string_from_cstr(i8* %1224)
  %1226 = getelementptr [8 x i8], [8 x i8]* @.str248, i32 0, i32 0
  %1227 = call %nyx_string* @nyx_string_from_cstr(i8* %1226)
  %1228 = call i64 @scope_declare_fn(%nyx_string* %1225, %nyx_string* %1227, i64 1)
  %1229 = getelementptr [6 x i8], [6 x i8]* @.str249, i32 0, i32 0
  %1230 = call %nyx_string* @nyx_string_from_cstr(i8* %1229)
  %1231 = getelementptr [8 x i8], [8 x i8]* @.str250, i32 0, i32 0
  %1232 = call %nyx_string* @nyx_string_from_cstr(i8* %1231)
  %1233 = call i64 @scope_declare_fn(%nyx_string* %1230, %nyx_string* %1232, i64 1)
  %1234 = getelementptr [6 x i8], [6 x i8]* @.str251, i32 0, i32 0
  %1235 = call %nyx_string* @nyx_string_from_cstr(i8* %1234)
  %1236 = getelementptr [8 x i8], [8 x i8]* @.str252, i32 0, i32 0
  %1237 = call %nyx_string* @nyx_string_from_cstr(i8* %1236)
  %1238 = call i64 @scope_declare_fn(%nyx_string* %1235, %nyx_string* %1237, i64 1)
  %1239 = getelementptr [4 x i8], [4 x i8]* @.str253, i32 0, i32 0
  %1240 = call %nyx_string* @nyx_string_from_cstr(i8* %1239)
  %1241 = getelementptr [8 x i8], [8 x i8]* @.str254, i32 0, i32 0
  %1242 = call %nyx_string* @nyx_string_from_cstr(i8* %1241)
  %1243 = call i64 @scope_declare_fn(%nyx_string* %1240, %nyx_string* %1242, i64 1)
  %1244 = getelementptr [7 x i8], [7 x i8]* @.str255, i32 0, i32 0
  %1245 = call %nyx_string* @nyx_string_from_cstr(i8* %1244)
  %1246 = getelementptr [8 x i8], [8 x i8]* @.str256, i32 0, i32 0
  %1247 = call %nyx_string* @nyx_string_from_cstr(i8* %1246)
  %1248 = sub i64 0, 1
  %1249 = call i64 @scope_declare_fn(%nyx_string* %1245, %nyx_string* %1247, i64 %1248)
  %1250 = getelementptr [14 x i8], [14 x i8]* @.str257, i32 0, i32 0
  %1251 = call %nyx_string* @nyx_string_from_cstr(i8* %1250)
  %1252 = getelementptr [8 x i8], [8 x i8]* @.str258, i32 0, i32 0
  %1253 = call %nyx_string* @nyx_string_from_cstr(i8* %1252)
  %1254 = call i64 @scope_declare_fn(%nyx_string* %1251, %nyx_string* %1253, i64 1)
  %1255 = getelementptr [15 x i8], [15 x i8]* @.str259, i32 0, i32 0
  %1256 = call %nyx_string* @nyx_string_from_cstr(i8* %1255)
  %1257 = getelementptr [8 x i8], [8 x i8]* @.str260, i32 0, i32 0
  %1258 = call %nyx_string* @nyx_string_from_cstr(i8* %1257)
  %1259 = call i64 @scope_declare_fn(%nyx_string* %1256, %nyx_string* %1258, i64 2)
  %1260 = getelementptr [11 x i8], [11 x i8]* @.str261, i32 0, i32 0
  %1261 = call %nyx_string* @nyx_string_from_cstr(i8* %1260)
  %1262 = getelementptr [8 x i8], [8 x i8]* @.str262, i32 0, i32 0
  %1263 = call %nyx_string* @nyx_string_from_cstr(i8* %1262)
  %1264 = call i64 @scope_declare_fn(%nyx_string* %1261, %nyx_string* %1263, i64 2)
  %1265 = getelementptr [11 x i8], [11 x i8]* @.str263, i32 0, i32 0
  %1266 = call %nyx_string* @nyx_string_from_cstr(i8* %1265)
  %1267 = getelementptr [8 x i8], [8 x i8]* @.str264, i32 0, i32 0
  %1268 = call %nyx_string* @nyx_string_from_cstr(i8* %1267)
  %1269 = call i64 @scope_declare_fn(%nyx_string* %1266, %nyx_string* %1268, i64 2)
  %1270 = getelementptr [11 x i8], [11 x i8]* @.str265, i32 0, i32 0
  %1271 = call %nyx_string* @nyx_string_from_cstr(i8* %1270)
  %1272 = getelementptr [8 x i8], [8 x i8]* @.str266, i32 0, i32 0
  %1273 = call %nyx_string* @nyx_string_from_cstr(i8* %1272)
  %1274 = call i64 @scope_declare_fn(%nyx_string* %1271, %nyx_string* %1273, i64 3)
  %1275 = getelementptr [4 x i8], [4 x i8]* @.str267, i32 0, i32 0
  %1276 = call %nyx_string* @nyx_string_from_cstr(i8* %1275)
  %1277 = getelementptr [8 x i8], [8 x i8]* @.str268, i32 0, i32 0
  %1278 = call %nyx_string* @nyx_string_from_cstr(i8* %1277)
  %1279 = call i64 @scope_declare(%nyx_string* %1276, %nyx_string* %1278)
  %1280 = getelementptr [14 x i8], [14 x i8]* @.str269, i32 0, i32 0
  %1281 = call %nyx_string* @nyx_string_from_cstr(i8* %1280)
  %1282 = getelementptr [8 x i8], [8 x i8]* @.str270, i32 0, i32 0
  %1283 = call %nyx_string* @nyx_string_from_cstr(i8* %1282)
  %1284 = call i64 @scope_declare(%nyx_string* %1281, %nyx_string* %1283)
  ret i64 0
}

define internal i64 @register_declarations(
{ i64, i8* }* %stmts.param) {
  %stmts.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %stmts.param, { i64, i8* }** %stmts.ptr
  %1285 = alloca i64
  store i64 0, i64* %1285
  br label %while_cond144
while_cond144:
  %1286 = load i64, i64* %1285
  %1287 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %1288 = call i64 @nyx_array_length({ i64, i8* }* %1287)
  %1289 = icmp slt i64 %1286, %1288
  br i1 %1289, label %while_body145, label %while_end146
while_body145:
  %1290 = load { i64, i8* }*, { i64, i8* }** %stmts.ptr
  %1291 = load i64, i64* %1285
  %1292 = call i64 @nyx_array_get({ i64, i8* }* %1290, i64 %1291)
  %1293 = inttoptr i64 %1292 to { i64, i8* }*
  %1294 = call i64 @nyx_array_get({ i64, i8* }* %1293, i64 0)
  %1295 = call i64 @nyx_array_get({ i64, i8* }* %1293, i64 1)
  %1296 = inttoptr i64 %1294 to %nyx_string*
  %1297 = inttoptr i64 %1295 to { i64, i8* }*
  %1298 = alloca %ASTNode
  %1299 = getelementptr inbounds %ASTNode, %ASTNode* %1298, i32 0, i32 0
  store %nyx_string* %1296, %nyx_string** %1299
  %1300 = getelementptr inbounds %ASTNode, %ASTNode* %1298, i32 0, i32 1
  store { i64, i8* }* %1297, { i64, i8* }** %1300
  %1301 = load %ASTNode, %ASTNode* %1298
  %1302 = alloca %ASTNode
  store %ASTNode %1301, %ASTNode* %1302
  %1303 = getelementptr %ASTNode, %ASTNode* %1302, i32 0, i32 0
  %1304 = load %nyx_string*, %nyx_string** %1303
  %1305 = alloca %nyx_string*
  store %nyx_string* %1304, %nyx_string** %1305
  %1306 = load %nyx_string*, %nyx_string** %1305
  %1307 = getelementptr [9 x i8], [9 x i8]* @.str271, i32 0, i32 0
  %1308 = call %nyx_string* @nyx_string_from_cstr(i8* %1307)
  %1309 = call i8* @nyx_string_to_cstr(%nyx_string* %1306)
  %1310 = call i8* @nyx_string_to_cstr(%nyx_string* %1308)
  %1311 = call i32 @strcmp(i8* %1309, i8* %1310)
  %1312 = icmp eq i32 %1311, 0
  br i1 %1312, label %then147, label %else148
then147:
  %1313 = load %ASTNode, %ASTNode* %1302
  %1314 = call %nyx_string* @get_string_at(%ASTNode %1313, i64 0)
  %1315 = alloca %nyx_string*
  store %nyx_string* %1314, %nyx_string** %1315
  %1316 = load %ASTNode, %ASTNode* %1302
  %1317 = call { i64, i8* }* @get_array_at(%ASTNode %1316, i64 1)
  %1318 = alloca { i64, i8* }*
  store { i64, i8* }* %1317, { i64, i8* }** %1318
  %1319 = load { i64, i8* }*, { i64, i8* }** %1318
  %1320 = call i64 @nyx_array_length({ i64, i8* }* %1319)
  %1321 = alloca i64
  store i64 %1320, i64* %1321
  %1322 = alloca i64
  store i64 0, i64* %1322
  br label %while_cond150
while_cond150:
  %1323 = load i64, i64* %1322
  %1324 = load { i64, i8* }*, { i64, i8* }** %1318
  %1325 = call i64 @nyx_array_length({ i64, i8* }* %1324)
  %1326 = icmp slt i64 %1323, %1325
  br i1 %1326, label %while_body151, label %while_end152
while_body151:
  %1327 = load { i64, i8* }*, { i64, i8* }** %1318
  %1328 = load i64, i64* %1322
  %1329 = call i64 @nyx_array_get({ i64, i8* }* %1327, i64 %1328)
  %1330 = inttoptr i64 %1329 to { i64, i8* }*
  %1331 = alloca { i64, i8* }*
  store { i64, i8* }* %1330, { i64, i8* }** %1331
  %1332 = load { i64, i8* }*, { i64, i8* }** %1331
  %1333 = call i64 @nyx_array_get({ i64, i8* }* %1332, i64 1)
  %1334 = inttoptr i64 %1333 to %nyx_string*
  %1335 = alloca %nyx_string*
  store %nyx_string* %1334, %nyx_string** %1335
  %1336 = load %nyx_string*, %nyx_string** %1335
  %1337 = call i64 @nyx_string_length_utf8(%nyx_string* %1336)
  %1338 = icmp sge i64 %1337, 3
  br i1 %1338, label %then153, label %else154
then153:
  %1339 = load %nyx_string*, %nyx_string** %1335
  %1340 = call %nyx_string* @nyx_string_substring(%nyx_string* %1339, i64 0, i64 3)
  %1341 = getelementptr [4 x i8], [4 x i8]* @.str272, i32 0, i32 0
  %1342 = call %nyx_string* @nyx_string_from_cstr(i8* %1341)
  %1343 = call i8* @nyx_string_to_cstr(%nyx_string* %1340)
  %1344 = call i8* @nyx_string_to_cstr(%nyx_string* %1342)
  %1345 = call i32 @strcmp(i8* %1343, i8* %1344)
  %1346 = icmp eq i32 %1345, 0
  br i1 %1346, label %then156, label %else157
then156:
  %1347 = sub i64 0, 1
  store i64 %1347, i64* %1321
  br label %merge158
else157:
  br label %merge158
merge158:
  br label %merge155
else154:
  br label %merge155
merge155:
  %1348 = load { i64, i8* }*, { i64, i8* }** %1331
  %1349 = call i64 @nyx_array_length({ i64, i8* }* %1348)
  %1350 = icmp sgt i64 %1349, 2
  br i1 %1350, label %then159, label %else160
then159:
  %1351 = sub i64 0, 1
  store i64 %1351, i64* %1321
  br label %merge161
else160:
  br label %merge161
merge161:
  %1352 = load i64, i64* %1322
  %1353 = add i64 %1352, 1
  store i64 %1353, i64* %1322
  br label %while_cond150
while_end152:
  %1354 = load %nyx_string*, %nyx_string** %1315
  %1355 = getelementptr [3 x i8], [3 x i8]* @.str273, i32 0, i32 0
  %1356 = call %nyx_string* @nyx_string_from_cstr(i8* %1355)
  %1357 = load i64, i64* %1321
  %1358 = call i64 @scope_declare_fn(%nyx_string* %1354, %nyx_string* %1356, i64 %1357)
  br label %merge149
else148:
  br label %merge149
merge149:
  %1359 = load %nyx_string*, %nyx_string** %1305
  %1360 = getelementptr [9 x i8], [9 x i8]* @.str274, i32 0, i32 0
  %1361 = call %nyx_string* @nyx_string_from_cstr(i8* %1360)
  %1362 = call i8* @nyx_string_to_cstr(%nyx_string* %1359)
  %1363 = call i8* @nyx_string_to_cstr(%nyx_string* %1361)
  %1364 = call i32 @strcmp(i8* %1362, i8* %1363)
  %1365 = icmp eq i32 %1364, 0
  br i1 %1365, label %then162, label %else163
then162:
  %1366 = load %ASTNode, %ASTNode* %1302
  %1367 = call %nyx_string* @get_string_at(%ASTNode %1366, i64 0)
  %1368 = alloca %nyx_string*
  store %nyx_string* %1367, %nyx_string** %1368
  %1369 = load %ASTNode, %ASTNode* %1302
  %1370 = call { i64, i8* }* @get_array_at(%ASTNode %1369, i64 1)
  %1371 = alloca { i64, i8* }*
  store { i64, i8* }* %1370, { i64, i8* }** %1371
  %1372 = load %nyx_string*, %nyx_string** %1368
  %1373 = getelementptr [3 x i8], [3 x i8]* @.str275, i32 0, i32 0
  %1374 = call %nyx_string* @nyx_string_from_cstr(i8* %1373)
  %1375 = load { i64, i8* }*, { i64, i8* }** %1371
  %1376 = call i64 @nyx_array_length({ i64, i8* }* %1375)
  %1377 = call i64 @scope_declare_fn(%nyx_string* %1372, %nyx_string* %1374, i64 %1376)
  br label %merge164
else163:
  br label %merge164
merge164:
  %1378 = load %nyx_string*, %nyx_string** %1305
  %1379 = getelementptr [7 x i8], [7 x i8]* @.str276, i32 0, i32 0
  %1380 = call %nyx_string* @nyx_string_from_cstr(i8* %1379)
  %1381 = call i8* @nyx_string_to_cstr(%nyx_string* %1378)
  %1382 = call i8* @nyx_string_to_cstr(%nyx_string* %1380)
  %1383 = call i32 @strcmp(i8* %1381, i8* %1382)
  %1384 = icmp eq i32 %1383, 0
  br i1 %1384, label %then165, label %else166
then165:
  %1385 = load %ASTNode, %ASTNode* %1302
  %1386 = call %nyx_string* @get_string_at(%ASTNode %1385, i64 0)
  %1387 = alloca %nyx_string*
  store %nyx_string* %1386, %nyx_string** %1387
  %1388 = load %nyx_string*, %nyx_string** %1387
  %1389 = getelementptr [7 x i8], [7 x i8]* @.str277, i32 0, i32 0
  %1390 = call %nyx_string* @nyx_string_from_cstr(i8* %1389)
  %1391 = call i64 @scope_declare(%nyx_string* %1388, %nyx_string* %1390)
  br label %merge167
else166:
  br label %merge167
merge167:
  %1392 = load %nyx_string*, %nyx_string** %1305
  %1393 = getelementptr [9 x i8], [9 x i8]* @.str278, i32 0, i32 0
  %1394 = call %nyx_string* @nyx_string_from_cstr(i8* %1393)
  %1395 = call i8* @nyx_string_to_cstr(%nyx_string* %1392)
  %1396 = call i8* @nyx_string_to_cstr(%nyx_string* %1394)
  %1397 = call i32 @strcmp(i8* %1395, i8* %1396)
  %1398 = icmp eq i32 %1397, 0
  br i1 %1398, label %then168, label %else169
then168:
  %1399 = load %ASTNode, %ASTNode* %1302
  %1400 = call %nyx_string* @get_string_at(%ASTNode %1399, i64 0)
  %1401 = alloca %nyx_string*
  store %nyx_string* %1400, %nyx_string** %1401
  %1402 = load %nyx_string*, %nyx_string** %1401
  %1403 = getelementptr [5 x i8], [5 x i8]* @.str279, i32 0, i32 0
  %1404 = call %nyx_string* @nyx_string_from_cstr(i8* %1403)
  %1405 = call i64 @scope_declare(%nyx_string* %1402, %nyx_string* %1404)
  %1406 = load %ASTNode, %ASTNode* %1302
  %1407 = call { i64, i8* }* @get_array_at(%ASTNode %1406, i64 1)
  %1408 = alloca { i64, i8* }*
  store { i64, i8* }* %1407, { i64, i8* }** %1408
  %1409 = call { i64, i8* }* @nyx_array_new_ptr()
  %1410 = alloca { i64, i8* }*
  store { i64, i8* }* %1409, { i64, i8* }** %1410
  %1411 = alloca i64
  store i64 0, i64* %1411
  br label %while_cond171
while_cond171:
  %1412 = load i64, i64* %1411
  %1413 = load { i64, i8* }*, { i64, i8* }** %1408
  %1414 = call i64 @nyx_array_length({ i64, i8* }* %1413)
  %1415 = icmp slt i64 %1412, %1414
  br i1 %1415, label %while_body172, label %while_end173
while_body172:
  %1416 = load { i64, i8* }*, { i64, i8* }** %1408
  %1417 = load i64, i64* %1411
  %1418 = call i64 @nyx_array_get({ i64, i8* }* %1416, i64 %1417)
  %1419 = inttoptr i64 %1418 to { i64, i8* }*
  %1420 = alloca { i64, i8* }*
  store { i64, i8* }* %1419, { i64, i8* }** %1420
  %1421 = load { i64, i8* }*, { i64, i8* }** %1420
  %1422 = call i64 @nyx_array_get({ i64, i8* }* %1421, i64 0)
  %1423 = inttoptr i64 %1422 to %nyx_string*
  %1424 = alloca %nyx_string*
  store %nyx_string* %1423, %nyx_string** %1424
  %1425 = load { i64, i8* }*, { i64, i8* }** %1410
  %1426 = load %nyx_string*, %nyx_string** %1424
  %1427 = ptrtoint %nyx_string* %1426 to i64
  call void @nyx_array_push({ i64, i8* }* %1425, i64 %1427)
  %1428 = load i64, i64* %1411
  %1429 = add i64 %1428, 1
  store i64 %1429, i64* %1411
  br label %while_cond171
while_end173:
  %1430 = load i64, i64* @g_enum_reg_count
  %1431 = load { i64, i8* }*, { i64, i8* }** @g_enum_reg_names
  %1432 = call i64 @nyx_array_length({ i64, i8* }* %1431)
  %1433 = icmp slt i64 %1430, %1432
  br i1 %1433, label %then174, label %else175
then174:
  %1434 = load { i64, i8* }*, { i64, i8* }** @g_enum_reg_names
  %1435 = load i64, i64* @g_enum_reg_count
  %1436 = load %nyx_string*, %nyx_string** %1401
  %1437 = ptrtoint %nyx_string* %1436 to i64
  call void @nyx_array_set({ i64, i8* }* %1434, i64 %1435, i64 %1437)
  %1438 = load { i64, i8* }*, { i64, i8* }** @g_enum_reg_variants
  %1439 = load i64, i64* @g_enum_reg_count
  %1440 = load { i64, i8* }*, { i64, i8* }** %1410
  %1441 = ptrtoint { i64, i8* }* %1440 to i64
  call void @nyx_array_set({ i64, i8* }* %1438, i64 %1439, i64 %1441)
  br label %merge176
else175:
  %1442 = load { i64, i8* }*, { i64, i8* }** @g_enum_reg_names
  %1443 = load %nyx_string*, %nyx_string** %1401
  %1444 = ptrtoint %nyx_string* %1443 to i64
  call void @nyx_array_push({ i64, i8* }* %1442, i64 %1444)
  %1445 = load { i64, i8* }*, { i64, i8* }** @g_enum_reg_variants
  %1446 = load { i64, i8* }*, { i64, i8* }** %1410
  %1447 = ptrtoint { i64, i8* }* %1446 to i64
  call void @nyx_array_push({ i64, i8* }* %1445, i64 %1447)
  br label %merge176
merge176:
  %1448 = load i64, i64* @g_enum_reg_count
  %1449 = add i64 %1448, 1
  store i64 %1449, i64* @g_enum_reg_count
  br label %merge170
else169:
  br label %merge170
merge170:
  %1450 = load %nyx_string*, %nyx_string** %1305
  %1451 = getelementptr [7 x i8], [7 x i8]* @.str280, i32 0, i32 0
  %1452 = call %nyx_string* @nyx_string_from_cstr(i8* %1451)
  %1453 = call i8* @nyx_string_to_cstr(%nyx_string* %1450)
  %1454 = call i8* @nyx_string_to_cstr(%nyx_string* %1452)
  %1455 = call i32 @strcmp(i8* %1453, i8* %1454)
  %1456 = icmp eq i32 %1455, 0
  br i1 %1456, label %then177, label %else178
then177:
  %1457 = load %ASTNode, %ASTNode* %1302
  %1458 = call %ASTNode @get_node_at(%ASTNode %1457, i64 0)
  %1459 = alloca %ASTNode
  store %ASTNode %1458, %ASTNode* %1459
  %1460 = getelementptr %ASTNode, %ASTNode* %1459, i32 0, i32 0
  %1461 = load %nyx_string*, %nyx_string** %1460
  %1462 = alloca %nyx_string*
  store %nyx_string* %1461, %nyx_string** %1462
  %1463 = load %nyx_string*, %nyx_string** %1462
  %1464 = getelementptr [9 x i8], [9 x i8]* @.str281, i32 0, i32 0
  %1465 = call %nyx_string* @nyx_string_from_cstr(i8* %1464)
  %1466 = call i8* @nyx_string_to_cstr(%nyx_string* %1463)
  %1467 = call i8* @nyx_string_to_cstr(%nyx_string* %1465)
  %1468 = call i32 @strcmp(i8* %1466, i8* %1467)
  %1469 = icmp eq i32 %1468, 0
  br i1 %1469, label %then180, label %else181
then180:
  %1470 = load %ASTNode, %ASTNode* %1459
  %1471 = call %nyx_string* @get_string_at(%ASTNode %1470, i64 0)
  %1472 = alloca %nyx_string*
  store %nyx_string* %1471, %nyx_string** %1472
  %1473 = load %ASTNode, %ASTNode* %1459
  %1474 = call { i64, i8* }* @get_array_at(%ASTNode %1473, i64 1)
  %1475 = alloca { i64, i8* }*
  store { i64, i8* }* %1474, { i64, i8* }** %1475
  %1476 = load { i64, i8* }*, { i64, i8* }** %1475
  %1477 = call i64 @nyx_array_length({ i64, i8* }* %1476)
  %1478 = alloca i64
  store i64 %1477, i64* %1478
  %1479 = alloca i64
  store i64 0, i64* %1479
  br label %while_cond183
while_cond183:
  %1480 = load i64, i64* %1479
  %1481 = load { i64, i8* }*, { i64, i8* }** %1475
  %1482 = call i64 @nyx_array_length({ i64, i8* }* %1481)
  %1483 = icmp slt i64 %1480, %1482
  br i1 %1483, label %while_body184, label %while_end185
while_body184:
  %1484 = load { i64, i8* }*, { i64, i8* }** %1475
  %1485 = load i64, i64* %1479
  %1486 = call i64 @nyx_array_get({ i64, i8* }* %1484, i64 %1485)
  %1487 = inttoptr i64 %1486 to { i64, i8* }*
  %1488 = alloca { i64, i8* }*
  store { i64, i8* }* %1487, { i64, i8* }** %1488
  %1489 = load { i64, i8* }*, { i64, i8* }** %1488
  %1490 = call i64 @nyx_array_get({ i64, i8* }* %1489, i64 1)
  %1491 = inttoptr i64 %1490 to %nyx_string*
  %1492 = alloca %nyx_string*
  store %nyx_string* %1491, %nyx_string** %1492
  %1493 = load %nyx_string*, %nyx_string** %1492
  %1494 = call i64 @nyx_string_length_utf8(%nyx_string* %1493)
  %1495 = icmp sge i64 %1494, 3
  br i1 %1495, label %then186, label %else187
then186:
  %1496 = load %nyx_string*, %nyx_string** %1492
  %1497 = call %nyx_string* @nyx_string_substring(%nyx_string* %1496, i64 0, i64 3)
  %1498 = getelementptr [4 x i8], [4 x i8]* @.str282, i32 0, i32 0
  %1499 = call %nyx_string* @nyx_string_from_cstr(i8* %1498)
  %1500 = call i8* @nyx_string_to_cstr(%nyx_string* %1497)
  %1501 = call i8* @nyx_string_to_cstr(%nyx_string* %1499)
  %1502 = call i32 @strcmp(i8* %1500, i8* %1501)
  %1503 = icmp eq i32 %1502, 0
  br i1 %1503, label %then189, label %else190
then189:
  %1504 = sub i64 0, 1
  store i64 %1504, i64* %1478
  br label %merge191
else190:
  br label %merge191
merge191:
  br label %merge188
else187:
  br label %merge188
merge188:
  %1505 = load i64, i64* %1479
  %1506 = add i64 %1505, 1
  store i64 %1506, i64* %1479
  br label %while_cond183
while_end185:
  %1507 = load %nyx_string*, %nyx_string** %1472
  %1508 = getelementptr [3 x i8], [3 x i8]* @.str283, i32 0, i32 0
  %1509 = call %nyx_string* @nyx_string_from_cstr(i8* %1508)
  %1510 = load i64, i64* %1478
  %1511 = call i64 @scope_declare_fn(%nyx_string* %1507, %nyx_string* %1509, i64 %1510)
  br label %merge182
else181:
  br label %merge182
merge182:
  %1512 = load %nyx_string*, %nyx_string** %1462
  %1513 = getelementptr [7 x i8], [7 x i8]* @.str284, i32 0, i32 0
  %1514 = call %nyx_string* @nyx_string_from_cstr(i8* %1513)
  %1515 = call i8* @nyx_string_to_cstr(%nyx_string* %1512)
  %1516 = call i8* @nyx_string_to_cstr(%nyx_string* %1514)
  %1517 = call i32 @strcmp(i8* %1515, i8* %1516)
  %1518 = icmp eq i32 %1517, 0
  br i1 %1518, label %then192, label %else193
then192:
  %1519 = load %ASTNode, %ASTNode* %1459
  %1520 = call %nyx_string* @get_string_at(%ASTNode %1519, i64 0)
  %1521 = alloca %nyx_string*
  store %nyx_string* %1520, %nyx_string** %1521
  %1522 = load %nyx_string*, %nyx_string** %1521
  %1523 = getelementptr [7 x i8], [7 x i8]* @.str285, i32 0, i32 0
  %1524 = call %nyx_string* @nyx_string_from_cstr(i8* %1523)
  %1525 = call i64 @scope_declare(%nyx_string* %1522, %nyx_string* %1524)
  br label %merge194
else193:
  br label %merge194
merge194:
  %1526 = load %nyx_string*, %nyx_string** %1462
  %1527 = getelementptr [9 x i8], [9 x i8]* @.str286, i32 0, i32 0
  %1528 = call %nyx_string* @nyx_string_from_cstr(i8* %1527)
  %1529 = call i8* @nyx_string_to_cstr(%nyx_string* %1526)
  %1530 = call i8* @nyx_string_to_cstr(%nyx_string* %1528)
  %1531 = call i32 @strcmp(i8* %1529, i8* %1530)
  %1532 = icmp eq i32 %1531, 0
  br i1 %1532, label %then195, label %else196
then195:
  %1533 = load %ASTNode, %ASTNode* %1459
  %1534 = call %nyx_string* @get_string_at(%ASTNode %1533, i64 0)
  %1535 = alloca %nyx_string*
  store %nyx_string* %1534, %nyx_string** %1535
  %1536 = load %nyx_string*, %nyx_string** %1535
  %1537 = getelementptr [5 x i8], [5 x i8]* @.str287, i32 0, i32 0
  %1538 = call %nyx_string* @nyx_string_from_cstr(i8* %1537)
  %1539 = call i64 @scope_declare(%nyx_string* %1536, %nyx_string* %1538)
  %1540 = load %ASTNode, %ASTNode* %1459
  %1541 = call { i64, i8* }* @get_array_at(%ASTNode %1540, i64 1)
  %1542 = alloca { i64, i8* }*
  store { i64, i8* }* %1541, { i64, i8* }** %1542
  %1543 = call { i64, i8* }* @nyx_array_new_ptr()
  %1544 = alloca { i64, i8* }*
  store { i64, i8* }* %1543, { i64, i8* }** %1544
  %1545 = alloca i64
  store i64 0, i64* %1545
  br label %while_cond198
while_cond198:
  %1546 = load i64, i64* %1545
  %1547 = load { i64, i8* }*, { i64, i8* }** %1542
  %1548 = call i64 @nyx_array_length({ i64, i8* }* %1547)
  %1549 = icmp slt i64 %1546, %1548
  br i1 %1549, label %while_body199, label %while_end200
while_body199:
  %1550 = load { i64, i8* }*, { i64, i8* }** %1542
  %1551 = load i64, i64* %1545
  %1552 = call i64 @nyx_array_get({ i64, i8* }* %1550, i64 %1551)
  %1553 = inttoptr i64 %1552 to { i64, i8* }*
  %1554 = alloca { i64, i8* }*
  store { i64, i8* }* %1553, { i64, i8* }** %1554
  %1555 = load { i64, i8* }*, { i64, i8* }** %1554
  %1556 = call i64 @nyx_array_get({ i64, i8* }* %1555, i64 0)
  %1557 = inttoptr i64 %1556 to %nyx_string*
  %1558 = alloca %nyx_string*
  store %nyx_string* %1557, %nyx_string** %1558
  %1559 = load { i64, i8* }*, { i64, i8* }** %1544
  %1560 = load %nyx_string*, %nyx_string** %1558
  %1561 = ptrtoint %nyx_string* %1560 to i64
  call void @nyx_array_push({ i64, i8* }* %1559, i64 %1561)
  %1562 = load i64, i64* %1545
  %1563 = add i64 %1562, 1
  store i64 %1563, i64* %1545
  br label %while_cond198
while_end200:
  %1564 = load i64, i64* @g_enum_reg_count
  %1565 = load { i64, i8* }*, { i64, i8* }** @g_enum_reg_names
  %1566 = call i64 @nyx_array_length({ i64, i8* }* %1565)
  %1567 = icmp slt i64 %1564, %1566
  br i1 %1567, label %then201, label %else202
then201:
  %1568 = load { i64, i8* }*, { i64, i8* }** @g_enum_reg_names
  %1569 = load i64, i64* @g_enum_reg_count
  %1570 = load %nyx_string*, %nyx_string** %1535
  %1571 = ptrtoint %nyx_string* %1570 to i64
  call void @nyx_array_set({ i64, i8* }* %1568, i64 %1569, i64 %1571)
  %1572 = load { i64, i8* }*, { i64, i8* }** @g_enum_reg_variants
  %1573 = load i64, i64* @g_enum_reg_count
  %1574 = load { i64, i8* }*, { i64, i8* }** %1544
  %1575 = ptrtoint { i64, i8* }* %1574 to i64
  call void @nyx_array_set({ i64, i8* }* %1572, i64 %1573, i64 %1575)
  br label %merge203
else202:
  %1576 = load { i64, i8* }*, { i64, i8* }** @g_enum_reg_names
  %1577 = load %nyx_string*, %nyx_string** %1535
  %1578 = ptrtoint %nyx_string* %1577 to i64
  call void @nyx_array_push({ i64, i8* }* %1576, i64 %1578)
  %1579 = load { i64, i8* }*, { i64, i8* }** @g_enum_reg_variants
  %1580 = load { i64, i8* }*, { i64, i8* }** %1544
  %1581 = ptrtoint { i64, i8* }* %1580 to i64
  call void @nyx_array_push({ i64, i8* }* %1579, i64 %1581)
  br label %merge203
merge203:
  %1582 = load i64, i64* @g_enum_reg_count
  %1583 = add i64 %1582, 1
  store i64 %1583, i64* @g_enum_reg_count
  br label %merge197
else196:
  br label %merge197
merge197:
  br label %merge179
else178:
  br label %merge179
merge179:
  %1584 = load %nyx_string*, %nyx_string** %1305
  %1585 = getelementptr [7 x i8], [7 x i8]* @.str288, i32 0, i32 0
  %1586 = call %nyx_string* @nyx_string_from_cstr(i8* %1585)
  %1587 = call i8* @nyx_string_to_cstr(%nyx_string* %1584)
  %1588 = call i8* @nyx_string_to_cstr(%nyx_string* %1586)
  %1589 = call i32 @strcmp(i8* %1587, i8* %1588)
  %1590 = icmp eq i32 %1589, 0
  br i1 %1590, label %then204, label %else205
then204:
  %1591 = load %ASTNode, %ASTNode* %1302
  %1592 = call { i64, i8* }* @get_array_at(%ASTNode %1591, i64 0)
  %1593 = alloca { i64, i8* }*
  store { i64, i8* }* %1592, { i64, i8* }** %1593
  %1594 = alloca i64
  store i64 0, i64* %1594
  br label %while_cond207
while_cond207:
  %1595 = load i64, i64* %1594
  %1596 = load { i64, i8* }*, { i64, i8* }** %1593
  %1597 = call i64 @nyx_array_length({ i64, i8* }* %1596)
  %1598 = icmp slt i64 %1595, %1597
  br i1 %1598, label %while_body208, label %while_end209
while_body208:
  %1599 = load { i64, i8* }*, { i64, i8* }** %1593
  %1600 = load i64, i64* %1594
  %1601 = call i64 @nyx_array_get({ i64, i8* }* %1599, i64 %1600)
  %1602 = inttoptr i64 %1601 to %nyx_string*
  %1603 = alloca %nyx_string*
  store %nyx_string* %1602, %nyx_string** %1603
  %1604 = load %nyx_string*, %nyx_string** %1603
  %1605 = getelementptr [7 x i8], [7 x i8]* @.str289, i32 0, i32 0
  %1606 = call %nyx_string* @nyx_string_from_cstr(i8* %1605)
  %1607 = call i64 @scope_declare(%nyx_string* %1604, %nyx_string* %1606)
  %1608 = load i64, i64* %1594
  %1609 = add i64 %1608, 1
  store i64 %1609, i64* %1594
  br label %while_cond207
while_end209:
  br label %merge206
else205:
  br label %merge206
merge206:
  %1610 = load %nyx_string*, %nyx_string** %1305
  %1611 = getelementptr [10 x i8], [10 x i8]* @.str290, i32 0, i32 0
  %1612 = call %nyx_string* @nyx_string_from_cstr(i8* %1611)
  %1613 = call i8* @nyx_string_to_cstr(%nyx_string* %1610)
  %1614 = call i8* @nyx_string_to_cstr(%nyx_string* %1612)
  %1615 = call i32 @strcmp(i8* %1613, i8* %1614)
  %1616 = icmp eq i32 %1615, 0
  br i1 %1616, label %then210, label %else211
then210:
  %1617 = load %ASTNode, %ASTNode* %1302
  %1618 = call %nyx_string* @get_string_at(%ASTNode %1617, i64 0)
  %1619 = alloca %nyx_string*
  store %nyx_string* %1618, %nyx_string** %1619
  %1620 = load %ASTNode, %ASTNode* %1302
  %1621 = call { i64, i8* }* @get_array_at(%ASTNode %1620, i64 1)
  %1622 = alloca { i64, i8* }*
  store { i64, i8* }* %1621, { i64, i8* }** %1622
  %1623 = load %nyx_string*, %nyx_string** %1619
  %1624 = getelementptr [3 x i8], [3 x i8]* @.str291, i32 0, i32 0
  %1625 = call %nyx_string* @nyx_string_from_cstr(i8* %1624)
  %1626 = load { i64, i8* }*, { i64, i8* }** %1622
  %1627 = call i64 @nyx_array_length({ i64, i8* }* %1626)
  %1628 = call i64 @scope_declare_fn(%nyx_string* %1623, %nyx_string* %1625, i64 %1627)
  br label %merge212
else211:
  br label %merge212
merge212:
  %1629 = load %nyx_string*, %nyx_string** %1305
  %1630 = getelementptr [12 x i8], [12 x i8]* @.str292, i32 0, i32 0
  %1631 = call %nyx_string* @nyx_string_from_cstr(i8* %1630)
  %1632 = call i8* @nyx_string_to_cstr(%nyx_string* %1629)
  %1633 = call i8* @nyx_string_to_cstr(%nyx_string* %1631)
  %1634 = call i32 @strcmp(i8* %1632, i8* %1633)
  %1635 = icmp eq i32 %1634, 0
  br i1 %1635, label %then213, label %else214
then213:
  %1636 = load %ASTNode, %ASTNode* %1302
  %1637 = call %nyx_string* @get_string_at(%ASTNode %1636, i64 0)
  %1638 = alloca %nyx_string*
  store %nyx_string* %1637, %nyx_string** %1638
  %1639 = load %nyx_string*, %nyx_string** %1638
  %1640 = getelementptr [7 x i8], [7 x i8]* @.str293, i32 0, i32 0
  %1641 = call %nyx_string* @nyx_string_from_cstr(i8* %1640)
  %1642 = call i64 @scope_declare(%nyx_string* %1639, %nyx_string* %1641)
  br label %merge215
else214:
  br label %merge215
merge215:
  %1643 = load %nyx_string*, %nyx_string** %1305
  %1644 = getelementptr [14 x i8], [14 x i8]* @.str294, i32 0, i32 0
  %1645 = call %nyx_string* @nyx_string_from_cstr(i8* %1644)
  %1646 = call i8* @nyx_string_to_cstr(%nyx_string* %1643)
  %1647 = call i8* @nyx_string_to_cstr(%nyx_string* %1645)
  %1648 = call i32 @strcmp(i8* %1646, i8* %1647)
  %1649 = icmp eq i32 %1648, 0
  br i1 %1649, label %then216, label %else217
then216:
  %1650 = load %ASTNode, %ASTNode* %1302
  %1651 = call %nyx_string* @get_string_at(%ASTNode %1650, i64 0)
  %1652 = alloca %nyx_string*
  store %nyx_string* %1651, %nyx_string** %1652
  %1653 = load %ASTNode, %ASTNode* %1302
  %1654 = call %nyx_string* @get_string_at(%ASTNode %1653, i64 1)
  %1655 = alloca %nyx_string*
  store %nyx_string* %1654, %nyx_string** %1655
  %1656 = load %nyx_string*, %nyx_string** %1655
  %1657 = getelementptr [1 x i8], [1 x i8]* @.str295, i32 0, i32 0
  %1658 = call %nyx_string* @nyx_string_from_cstr(i8* %1657)
  %1659 = call i8* @nyx_string_to_cstr(%nyx_string* %1656)
  %1660 = call i8* @nyx_string_to_cstr(%nyx_string* %1658)
  %1661 = call i32 @strcmp(i8* %1659, i8* %1660)
  %1662 = icmp ne i32 %1661, 0
  br i1 %1662, label %then219, label %else220
then219:
  %1663 = load %nyx_string*, %nyx_string** %1655
  %1664 = getelementptr [7 x i8], [7 x i8]* @.str296, i32 0, i32 0
  %1665 = call %nyx_string* @nyx_string_from_cstr(i8* %1664)
  %1666 = call i64 @scope_declare(%nyx_string* %1663, %nyx_string* %1665)
  br label %merge221
else220:
  br label %merge221
merge221:
  br label %merge218
else217:
  br label %merge218
merge218:
  %1667 = load %nyx_string*, %nyx_string** %1305
  %1668 = getelementptr [5 x i8], [5 x i8]* @.str297, i32 0, i32 0
  %1669 = call %nyx_string* @nyx_string_from_cstr(i8* %1668)
  %1670 = call i8* @nyx_string_to_cstr(%nyx_string* %1667)
  %1671 = call i8* @nyx_string_to_cstr(%nyx_string* %1669)
  %1672 = call i32 @strcmp(i8* %1670, i8* %1671)
  %1673 = icmp eq i32 %1672, 0
  br i1 %1673, label %then222, label %else223
then222:
  %1674 = load %ASTNode, %ASTNode* %1302
  %1675 = call %nyx_string* @get_string_at(%ASTNode %1674, i64 0)
  %1676 = alloca %nyx_string*
  store %nyx_string* %1675, %nyx_string** %1676
  %1677 = load %ASTNode, %ASTNode* %1302
  %1678 = call { i64, i8* }* @get_array_at(%ASTNode %1677, i64 1)
  %1679 = alloca { i64, i8* }*
  store { i64, i8* }* %1678, { i64, i8* }** %1679
  %1680 = alloca i64
  store i64 0, i64* %1680
  br label %while_cond225
while_cond225:
  %1681 = load i64, i64* %1680
  %1682 = load { i64, i8* }*, { i64, i8* }** %1679
  %1683 = call i64 @nyx_array_length({ i64, i8* }* %1682)
  %1684 = icmp slt i64 %1681, %1683
  br i1 %1684, label %while_body226, label %while_end227
while_body226:
  %1685 = load { i64, i8* }*, { i64, i8* }** %1679
  %1686 = load i64, i64* %1680
  %1687 = call i64 @nyx_array_get({ i64, i8* }* %1685, i64 %1686)
  %1688 = inttoptr i64 %1687 to { i64, i8* }*
  %1689 = call i64 @nyx_array_get({ i64, i8* }* %1688, i64 0)
  %1690 = call i64 @nyx_array_get({ i64, i8* }* %1688, i64 1)
  %1691 = inttoptr i64 %1689 to %nyx_string*
  %1692 = inttoptr i64 %1690 to { i64, i8* }*
  %1693 = alloca %ASTNode
  %1694 = getelementptr inbounds %ASTNode, %ASTNode* %1693, i32 0, i32 0
  store %nyx_string* %1691, %nyx_string** %1694
  %1695 = getelementptr inbounds %ASTNode, %ASTNode* %1693, i32 0, i32 1
  store { i64, i8* }* %1692, { i64, i8* }** %1695
  %1696 = load %ASTNode, %ASTNode* %1693
  %1697 = alloca %ASTNode
  store %ASTNode %1696, %ASTNode* %1697
  %1698 = load %ASTNode, %ASTNode* %1697
  %1699 = call %nyx_string* @get_string_at(%ASTNode %1698, i64 0)
  %1700 = alloca %nyx_string*
  store %nyx_string* %1699, %nyx_string** %1700
  %1701 = load %ASTNode, %ASTNode* %1697
  %1702 = call { i64, i8* }* @get_array_at(%ASTNode %1701, i64 1)
  %1703 = alloca { i64, i8* }*
  store { i64, i8* }* %1702, { i64, i8* }** %1703
  %1704 = load %nyx_string*, %nyx_string** %1676
  %1705 = getelementptr [2 x i8], [2 x i8]* @.str298, i32 0, i32 0
  %1706 = call %nyx_string* @nyx_string_from_cstr(i8* %1705)
  %1707 = call %nyx_string* @nyx_string_concat(%nyx_string* %1704, %nyx_string* %1706)
  %1708 = load %nyx_string*, %nyx_string** %1700
  %1709 = call %nyx_string* @nyx_string_concat(%nyx_string* %1707, %nyx_string* %1708)
  %1710 = alloca %nyx_string*
  store %nyx_string* %1709, %nyx_string** %1710
  %1711 = load %nyx_string*, %nyx_string** %1710
  %1712 = getelementptr [3 x i8], [3 x i8]* @.str299, i32 0, i32 0
  %1713 = call %nyx_string* @nyx_string_from_cstr(i8* %1712)
  %1714 = load { i64, i8* }*, { i64, i8* }** %1703
  %1715 = call i64 @nyx_array_length({ i64, i8* }* %1714)
  %1716 = call i64 @scope_declare_fn(%nyx_string* %1711, %nyx_string* %1713, i64 %1715)
  %1717 = load i64, i64* %1680
  %1718 = add i64 %1717, 1
  store i64 %1718, i64* %1680
  br label %while_cond225
while_end227:
  br label %merge224
else223:
  br label %merge224
merge224:
  %1719 = load %nyx_string*, %nyx_string** %1305
  %1720 = getelementptr [10 x i8], [10 x i8]* @.str300, i32 0, i32 0
  %1721 = call %nyx_string* @nyx_string_from_cstr(i8* %1720)
  %1722 = call i8* @nyx_string_to_cstr(%nyx_string* %1719)
  %1723 = call i8* @nyx_string_to_cstr(%nyx_string* %1721)
  %1724 = call i32 @strcmp(i8* %1722, i8* %1723)
  %1725 = icmp eq i32 %1724, 0
  br i1 %1725, label %then228, label %else229
then228:
  %1726 = load %ASTNode, %ASTNode* %1302
  %1727 = call %nyx_string* @get_string_at(%ASTNode %1726, i64 0)
  %1728 = alloca %nyx_string*
  store %nyx_string* %1727, %nyx_string** %1728
  %1729 = load %nyx_string*, %nyx_string** %1728
  %1730 = getelementptr [6 x i8], [6 x i8]* @.str301, i32 0, i32 0
  %1731 = call %nyx_string* @nyx_string_from_cstr(i8* %1730)
  %1732 = call i64 @scope_declare(%nyx_string* %1729, %nyx_string* %1731)
  br label %merge230
else229:
  br label %merge230
merge230:
  %1733 = load %nyx_string*, %nyx_string** %1305
  %1734 = getelementptr [11 x i8], [11 x i8]* @.str302, i32 0, i32 0
  %1735 = call %nyx_string* @nyx_string_from_cstr(i8* %1734)
  %1736 = call i8* @nyx_string_to_cstr(%nyx_string* %1733)
  %1737 = call i8* @nyx_string_to_cstr(%nyx_string* %1735)
  %1738 = call i32 @strcmp(i8* %1736, i8* %1737)
  %1739 = icmp eq i32 %1738, 0
  br i1 %1739, label %then231, label %else232
then231:
  %1740 = load %ASTNode, %ASTNode* %1302
  %1741 = call %nyx_string* @get_string_at(%ASTNode %1740, i64 1)
  %1742 = alloca %nyx_string*
  store %nyx_string* %1741, %nyx_string** %1742
  %1743 = load %ASTNode, %ASTNode* %1302
  %1744 = call { i64, i8* }* @get_array_at(%ASTNode %1743, i64 2)
  %1745 = alloca { i64, i8* }*
  store { i64, i8* }* %1744, { i64, i8* }** %1745
  %1746 = alloca i64
  store i64 0, i64* %1746
  br label %while_cond234
while_cond234:
  %1747 = load i64, i64* %1746
  %1748 = load { i64, i8* }*, { i64, i8* }** %1745
  %1749 = call i64 @nyx_array_length({ i64, i8* }* %1748)
  %1750 = icmp slt i64 %1747, %1749
  br i1 %1750, label %while_body235, label %while_end236
while_body235:
  %1751 = load { i64, i8* }*, { i64, i8* }** %1745
  %1752 = load i64, i64* %1746
  %1753 = call i64 @nyx_array_get({ i64, i8* }* %1751, i64 %1752)
  %1754 = inttoptr i64 %1753 to { i64, i8* }*
  %1755 = call i64 @nyx_array_get({ i64, i8* }* %1754, i64 0)
  %1756 = call i64 @nyx_array_get({ i64, i8* }* %1754, i64 1)
  %1757 = inttoptr i64 %1755 to %nyx_string*
  %1758 = inttoptr i64 %1756 to { i64, i8* }*
  %1759 = alloca %ASTNode
  %1760 = getelementptr inbounds %ASTNode, %ASTNode* %1759, i32 0, i32 0
  store %nyx_string* %1757, %nyx_string** %1760
  %1761 = getelementptr inbounds %ASTNode, %ASTNode* %1759, i32 0, i32 1
  store { i64, i8* }* %1758, { i64, i8* }** %1761
  %1762 = load %ASTNode, %ASTNode* %1759
  %1763 = alloca %ASTNode
  store %ASTNode %1762, %ASTNode* %1763
  %1764 = load %ASTNode, %ASTNode* %1763
  %1765 = call %nyx_string* @get_string_at(%ASTNode %1764, i64 0)
  %1766 = alloca %nyx_string*
  store %nyx_string* %1765, %nyx_string** %1766
  %1767 = load %ASTNode, %ASTNode* %1763
  %1768 = call { i64, i8* }* @get_array_at(%ASTNode %1767, i64 1)
  %1769 = alloca { i64, i8* }*
  store { i64, i8* }* %1768, { i64, i8* }** %1769
  %1770 = load %nyx_string*, %nyx_string** %1742
  %1771 = getelementptr [2 x i8], [2 x i8]* @.str303, i32 0, i32 0
  %1772 = call %nyx_string* @nyx_string_from_cstr(i8* %1771)
  %1773 = call %nyx_string* @nyx_string_concat(%nyx_string* %1770, %nyx_string* %1772)
  %1774 = load %nyx_string*, %nyx_string** %1766
  %1775 = call %nyx_string* @nyx_string_concat(%nyx_string* %1773, %nyx_string* %1774)
  %1776 = alloca %nyx_string*
  store %nyx_string* %1775, %nyx_string** %1776
  %1777 = load %nyx_string*, %nyx_string** %1776
  %1778 = getelementptr [3 x i8], [3 x i8]* @.str304, i32 0, i32 0
  %1779 = call %nyx_string* @nyx_string_from_cstr(i8* %1778)
  %1780 = load { i64, i8* }*, { i64, i8* }** %1769
  %1781 = call i64 @nyx_array_length({ i64, i8* }* %1780)
  %1782 = call i64 @scope_declare_fn(%nyx_string* %1777, %nyx_string* %1779, i64 %1781)
  %1783 = load i64, i64* %1746
  %1784 = add i64 %1783, 1
  store i64 %1784, i64* %1746
  br label %while_cond234
while_end236:
  br label %merge233
else232:
  br label %merge233
merge233:
  %1785 = load i64, i64* %1285
  %1786 = add i64 %1785, 1
  store i64 %1786, i64* %1285
  br label %while_cond144
while_end146:
  ret i64 0
}

define internal i1 @validate_block(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %1787 = load %ASTNode, %ASTNode* %node.ptr
  %1788 = call { i64, i8* }* @get_array_at(%ASTNode %1787, i64 0)
  %1789 = alloca { i64, i8* }*
  store { i64, i8* }* %1788, { i64, i8* }** %1789
  %1790 = load { i64, i8* }*, { i64, i8* }** %1789
  %1791 = call i64 @register_declarations({ i64, i8* }* %1790)
  %1792 = alloca i64
  store i64 0, i64* %1792
  br label %while_cond237
while_cond237:
  %1793 = load i64, i64* %1792
  %1794 = load { i64, i8* }*, { i64, i8* }** %1789
  %1795 = call i64 @nyx_array_length({ i64, i8* }* %1794)
  %1796 = icmp slt i64 %1793, %1795
  br i1 %1796, label %while_body238, label %while_end239
while_body238:
  %1797 = load { i64, i8* }*, { i64, i8* }** %1789
  %1798 = load i64, i64* %1792
  %1799 = call i64 @nyx_array_get({ i64, i8* }* %1797, i64 %1798)
  %1800 = inttoptr i64 %1799 to { i64, i8* }*
  %1801 = call i64 @nyx_array_get({ i64, i8* }* %1800, i64 0)
  %1802 = call i64 @nyx_array_get({ i64, i8* }* %1800, i64 1)
  %1803 = inttoptr i64 %1801 to %nyx_string*
  %1804 = inttoptr i64 %1802 to { i64, i8* }*
  %1805 = alloca %ASTNode
  %1806 = getelementptr inbounds %ASTNode, %ASTNode* %1805, i32 0, i32 0
  store %nyx_string* %1803, %nyx_string** %1806
  %1807 = getelementptr inbounds %ASTNode, %ASTNode* %1805, i32 0, i32 1
  store { i64, i8* }* %1804, { i64, i8* }** %1807
  %1808 = load %ASTNode, %ASTNode* %1805
  %1809 = alloca %ASTNode
  store %ASTNode %1808, %ASTNode* %1809
  %1810 = load %ASTNode, %ASTNode* %1809
  %1811 = call i1 @validate_node(%ASTNode %1810)
  %1812 = xor i1 %1811, true
  br i1 %1812, label %then240, label %else241
then240:
  ret i1 0
else241:
  br label %merge242
merge242:
  %1813 = load i64, i64* %1792
  %1814 = add i64 %1813, 1
  store i64 %1814, i64* %1792
  br label %while_cond237
while_end239:
  ret i1 1
}

define internal i1 @validate_identifier(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %1815 = load %ASTNode, %ASTNode* %node.ptr
  %1816 = call %nyx_string* @get_string_at(%ASTNode %1815, i64 0)
  %1817 = alloca %nyx_string*
  store %nyx_string* %1816, %nyx_string** %1817
  %1818 = load %nyx_string*, %nyx_string** %1817
  %1819 = call %nyx_string* @scope_lookup(%nyx_string* %1818)
  %1820 = alloca %nyx_string*
  store %nyx_string* %1819, %nyx_string** %1820
  %1821 = load %nyx_string*, %nyx_string** %1820
  %1822 = getelementptr [1 x i8], [1 x i8]* @.str305, i32 0, i32 0
  %1823 = call %nyx_string* @nyx_string_from_cstr(i8* %1822)
  %1824 = call i8* @nyx_string_to_cstr(%nyx_string* %1821)
  %1825 = call i8* @nyx_string_to_cstr(%nyx_string* %1823)
  %1826 = call i32 @strcmp(i8* %1824, i8* %1825)
  %1827 = icmp eq i32 %1826, 0
  br i1 %1827, label %then243, label %else244
then243:
  %1828 = getelementptr [2 x i8], [2 x i8]* @.str306, i32 0, i32 0
  %1829 = call %nyx_string* @nyx_string_from_cstr(i8* %1828)
  %1830 = load %nyx_string*, %nyx_string** %1817
  %1831 = call %nyx_string* @nyx_string_concat(%nyx_string* %1829, %nyx_string* %1830)
  %1832 = getelementptr [15 x i8], [15 x i8]* @.str307, i32 0, i32 0
  %1833 = call %nyx_string* @nyx_string_from_cstr(i8* %1832)
  %1834 = call %nyx_string* @nyx_string_concat(%nyx_string* %1831, %nyx_string* %1833)
  %1835 = call i64 @sem_error(%nyx_string* %1834)
  ret i1 0
else244:
  br label %merge245
merge245:
  ret i1 1
}

define internal i1 @validate_binop(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %1836 = load %ASTNode, %ASTNode* %node.ptr
  %1837 = call %ASTNode @get_node_at(%ASTNode %1836, i64 1)
  %1838 = alloca %ASTNode
  store %ASTNode %1837, %ASTNode* %1838
  %1839 = load %ASTNode, %ASTNode* %node.ptr
  %1840 = call %ASTNode @get_node_at(%ASTNode %1839, i64 2)
  %1841 = alloca %ASTNode
  store %ASTNode %1840, %ASTNode* %1841
  %1842 = load %ASTNode, %ASTNode* %1838
  %1843 = call i1 @validate_node(%ASTNode %1842)
  %1844 = xor i1 %1843, true
  br i1 %1844, label %then246, label %else247
then246:
  ret i1 0
else247:
  br label %merge248
merge248:
  %1845 = load %ASTNode, %ASTNode* %1841
  %1846 = call i1 @validate_node(%ASTNode %1845)
  ret i1 %1846
}

define internal i1 @validate_unop(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %1847 = load %ASTNode, %ASTNode* %node.ptr
  %1848 = call %ASTNode @get_node_at(%ASTNode %1847, i64 1)
  %1849 = alloca %ASTNode
  store %ASTNode %1848, %ASTNode* %1849
  %1850 = load %ASTNode, %ASTNode* %1849
  %1851 = call i1 @validate_node(%ASTNode %1850)
  ret i1 %1851
}

define internal i1 @validate_call(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %1852 = load %ASTNode, %ASTNode* %node.ptr
  %1853 = call %ASTNode @get_node_at(%ASTNode %1852, i64 0)
  %1854 = alloca %ASTNode
  store %ASTNode %1853, %ASTNode* %1854
  %1855 = load %ASTNode, %ASTNode* %node.ptr
  %1856 = call { i64, i8* }* @get_array_at(%ASTNode %1855, i64 1)
  %1857 = alloca { i64, i8* }*
  store { i64, i8* }* %1856, { i64, i8* }** %1857
  %1858 = load %ASTNode, %ASTNode* %1854
  %1859 = call i1 @validate_node(%ASTNode %1858)
  %1860 = xor i1 %1859, true
  br i1 %1860, label %then249, label %else250
then249:
  ret i1 0
else250:
  br label %merge251
merge251:
  %1861 = getelementptr %ASTNode, %ASTNode* %1854, i32 0, i32 0
  %1862 = load %nyx_string*, %nyx_string** %1861
  %1863 = getelementptr [11 x i8], [11 x i8]* @.str308, i32 0, i32 0
  %1864 = call %nyx_string* @nyx_string_from_cstr(i8* %1863)
  %1865 = call i8* @nyx_string_to_cstr(%nyx_string* %1862)
  %1866 = call i8* @nyx_string_to_cstr(%nyx_string* %1864)
  %1867 = call i32 @strcmp(i8* %1865, i8* %1866)
  %1868 = icmp eq i32 %1867, 0
  br i1 %1868, label %then252, label %else253
then252:
  %1869 = load %ASTNode, %ASTNode* %1854
  %1870 = call %nyx_string* @get_string_at(%ASTNode %1869, i64 0)
  %1871 = alloca %nyx_string*
  store %nyx_string* %1870, %nyx_string** %1871
  %1872 = load %nyx_string*, %nyx_string** %1871
  %1873 = call i64 @scope_get_arity(%nyx_string* %1872)
  %1874 = alloca i64
  store i64 %1873, i64* %1874
  %1875 = load i64, i64* %1874
  %1876 = icmp sge i64 %1875, 0
  br i1 %1876, label %then255, label %else256
then255:
  %1877 = load { i64, i8* }*, { i64, i8* }** %1857
  %1878 = call i64 @nyx_array_length({ i64, i8* }* %1877)
  %1879 = alloca i64
  store i64 %1878, i64* %1879
  %1880 = load i64, i64* %1879
  %1881 = load i64, i64* %1874
  %1882 = icmp ne i64 %1880, %1881
  br i1 %1882, label %then258, label %else259
then258:
  %1883 = getelementptr [2 x i8], [2 x i8]* @.str309, i32 0, i32 0
  %1884 = call %nyx_string* @nyx_string_from_cstr(i8* %1883)
  %1885 = load %nyx_string*, %nyx_string** %1871
  %1886 = call %nyx_string* @nyx_string_concat(%nyx_string* %1884, %nyx_string* %1885)
  %1887 = getelementptr [10 x i8], [10 x i8]* @.str310, i32 0, i32 0
  %1888 = call %nyx_string* @nyx_string_from_cstr(i8* %1887)
  %1889 = call %nyx_string* @nyx_string_concat(%nyx_string* %1886, %nyx_string* %1888)
  %1890 = load i64, i64* %1874
  %1891 = call %nyx_string* @nyx_string_from_int(i64 %1890)
  %1892 = call %nyx_string* @nyx_string_concat(%nyx_string* %1889, %nyx_string* %1891)
  %1893 = getelementptr [23 x i8], [23 x i8]* @.str311, i32 0, i32 0
  %1894 = call %nyx_string* @nyx_string_from_cstr(i8* %1893)
  %1895 = call %nyx_string* @nyx_string_concat(%nyx_string* %1892, %nyx_string* %1894)
  %1896 = load i64, i64* %1879
  %1897 = call %nyx_string* @nyx_string_from_int(i64 %1896)
  %1898 = call %nyx_string* @nyx_string_concat(%nyx_string* %1895, %nyx_string* %1897)
  %1899 = call i64 @sem_error(%nyx_string* %1898)
  ret i1 0
else259:
  br label %merge260
merge260:
  br label %merge257
else256:
  br label %merge257
merge257:
  br label %merge254
else253:
  br label %merge254
merge254:
  %1900 = alloca i64
  store i64 0, i64* %1900
  br label %while_cond261
while_cond261:
  %1901 = load i64, i64* %1900
  %1902 = load { i64, i8* }*, { i64, i8* }** %1857
  %1903 = call i64 @nyx_array_length({ i64, i8* }* %1902)
  %1904 = icmp slt i64 %1901, %1903
  br i1 %1904, label %while_body262, label %while_end263
while_body262:
  %1905 = load { i64, i8* }*, { i64, i8* }** %1857
  %1906 = load i64, i64* %1900
  %1907 = call i64 @nyx_array_get({ i64, i8* }* %1905, i64 %1906)
  %1908 = inttoptr i64 %1907 to { i64, i8* }*
  %1909 = call i64 @nyx_array_get({ i64, i8* }* %1908, i64 0)
  %1910 = call i64 @nyx_array_get({ i64, i8* }* %1908, i64 1)
  %1911 = inttoptr i64 %1909 to %nyx_string*
  %1912 = inttoptr i64 %1910 to { i64, i8* }*
  %1913 = alloca %ASTNode
  %1914 = getelementptr inbounds %ASTNode, %ASTNode* %1913, i32 0, i32 0
  store %nyx_string* %1911, %nyx_string** %1914
  %1915 = getelementptr inbounds %ASTNode, %ASTNode* %1913, i32 0, i32 1
  store { i64, i8* }* %1912, { i64, i8* }** %1915
  %1916 = load %ASTNode, %ASTNode* %1913
  %1917 = alloca %ASTNode
  store %ASTNode %1916, %ASTNode* %1917
  %1918 = load %ASTNode, %ASTNode* %1917
  %1919 = call i1 @validate_node(%ASTNode %1918)
  %1920 = xor i1 %1919, true
  br i1 %1920, label %then264, label %else265
then264:
  ret i1 0
else265:
  br label %merge266
merge266:
  %1921 = load i64, i64* %1900
  %1922 = add i64 %1921, 1
  store i64 %1922, i64* %1900
  br label %while_cond261
while_end263:
  ret i1 1
}

define internal i1 @validate_let(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %1923 = load %ASTNode, %ASTNode* %node.ptr
  %1924 = call %ASTNode @get_node_at(%ASTNode %1923, i64 0)
  %1925 = alloca %ASTNode
  store %ASTNode %1924, %ASTNode* %1925
  %1926 = getelementptr %ASTNode, %ASTNode* %1925, i32 0, i32 0
  %1927 = load %nyx_string*, %nyx_string** %1926
  %1928 = alloca %nyx_string*
  store %nyx_string* %1927, %nyx_string** %1928
  %1929 = load %ASTNode, %ASTNode* %node.ptr
  %1930 = call %ASTNode @get_node_at(%ASTNode %1929, i64 2)
  %1931 = alloca %ASTNode
  store %ASTNode %1930, %ASTNode* %1931
  %1932 = load %ASTNode, %ASTNode* %1931
  %1933 = call i1 @validate_node(%ASTNode %1932)
  %1934 = xor i1 %1933, true
  br i1 %1934, label %then267, label %else268
then267:
  ret i1 0
else268:
  br label %merge269
merge269:
  %1935 = load %ASTNode, %ASTNode* %node.ptr
  %1936 = call i1 @get_bool_at(%ASTNode %1935, i64 1)
  %1937 = alloca i1
  store i1 %1936, i1* %1937
  %1938 = load i1, i1* %1937
  br i1 %1938, label %then270, label %else271
then270:
  %1939 = load %nyx_string*, %nyx_string** %1928
  %1940 = getelementptr [4 x i8], [4 x i8]* @.str312, i32 0, i32 0
  %1941 = call %nyx_string* @nyx_string_from_cstr(i8* %1940)
  %1942 = call i64 @scope_declare(%nyx_string* %1939, %nyx_string* %1941)
  br label %merge272
else271:
  %1943 = load %nyx_string*, %nyx_string** %1928
  %1944 = getelementptr [4 x i8], [4 x i8]* @.str313, i32 0, i32 0
  %1945 = call %nyx_string* @nyx_string_from_cstr(i8* %1944)
  %1946 = call i64 @scope_declare(%nyx_string* %1943, %nyx_string* %1945)
  br label %merge272
merge272:
  ret i1 1
}

define internal i1 @validate_const(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %1947 = load %ASTNode, %ASTNode* %node.ptr
  %1948 = call %nyx_string* @get_string_at(%ASTNode %1947, i64 0)
  %1949 = alloca %nyx_string*
  store %nyx_string* %1948, %nyx_string** %1949
  %1950 = load %nyx_string*, %nyx_string** %1949
  %1951 = call i1 @scope_has_in_current(%nyx_string* %1950)
  br i1 %1951, label %then273, label %else274
then273:
  %1952 = getelementptr [2 x i8], [2 x i8]* @.str314, i32 0, i32 0
  %1953 = call %nyx_string* @nyx_string_from_cstr(i8* %1952)
  %1954 = load %nyx_string*, %nyx_string** %1949
  %1955 = call %nyx_string* @nyx_string_concat(%nyx_string* %1953, %nyx_string* %1954)
  %1956 = getelementptr [29 x i8], [29 x i8]* @.str315, i32 0, i32 0
  %1957 = call %nyx_string* @nyx_string_from_cstr(i8* %1956)
  %1958 = call %nyx_string* @nyx_string_concat(%nyx_string* %1955, %nyx_string* %1957)
  %1959 = call i64 @sem_error(%nyx_string* %1958)
  ret i1 0
else274:
  br label %merge275
merge275:
  %1960 = load %ASTNode, %ASTNode* %node.ptr
  %1961 = call %ASTNode @get_node_at(%ASTNode %1960, i64 1)
  %1962 = alloca %ASTNode
  store %ASTNode %1961, %ASTNode* %1962
  %1963 = load %ASTNode, %ASTNode* %1962
  %1964 = call i1 @validate_node(%ASTNode %1963)
  %1965 = xor i1 %1964, true
  br i1 %1965, label %then276, label %else277
then276:
  ret i1 0
else277:
  br label %merge278
merge278:
  %1966 = load %nyx_string*, %nyx_string** %1949
  %1967 = getelementptr [6 x i8], [6 x i8]* @.str316, i32 0, i32 0
  %1968 = call %nyx_string* @nyx_string_from_cstr(i8* %1967)
  %1969 = call i64 @scope_declare(%nyx_string* %1966, %nyx_string* %1968)
  ret i1 1
}

define internal i1 @validate_assign(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %1970 = load %ASTNode, %ASTNode* %node.ptr
  %1971 = call %ASTNode @get_node_at(%ASTNode %1970, i64 0)
  %1972 = alloca %ASTNode
  store %ASTNode %1971, %ASTNode* %1972
  %1973 = getelementptr %ASTNode, %ASTNode* %1972, i32 0, i32 0
  %1974 = load %nyx_string*, %nyx_string** %1973
  %1975 = alloca %nyx_string*
  store %nyx_string* %1974, %nyx_string** %1975
  %1976 = load %nyx_string*, %nyx_string** %1975
  %1977 = call %nyx_string* @scope_lookup(%nyx_string* %1976)
  %1978 = alloca %nyx_string*
  store %nyx_string* %1977, %nyx_string** %1978
  %1979 = load %nyx_string*, %nyx_string** %1978
  %1980 = getelementptr [1 x i8], [1 x i8]* @.str317, i32 0, i32 0
  %1981 = call %nyx_string* @nyx_string_from_cstr(i8* %1980)
  %1982 = call i8* @nyx_string_to_cstr(%nyx_string* %1979)
  %1983 = call i8* @nyx_string_to_cstr(%nyx_string* %1981)
  %1984 = call i32 @strcmp(i8* %1982, i8* %1983)
  %1985 = icmp eq i32 %1984, 0
  br i1 %1985, label %then279, label %else280
then279:
  %1986 = getelementptr [11 x i8], [11 x i8]* @.str318, i32 0, i32 0
  %1987 = call %nyx_string* @nyx_string_from_cstr(i8* %1986)
  %1988 = load %nyx_string*, %nyx_string** %1975
  %1989 = call %nyx_string* @nyx_string_concat(%nyx_string* %1987, %nyx_string* %1988)
  %1990 = getelementptr [15 x i8], [15 x i8]* @.str319, i32 0, i32 0
  %1991 = call %nyx_string* @nyx_string_from_cstr(i8* %1990)
  %1992 = call %nyx_string* @nyx_string_concat(%nyx_string* %1989, %nyx_string* %1991)
  %1993 = call i64 @sem_error(%nyx_string* %1992)
  ret i1 0
else280:
  br label %merge281
merge281:
  %1994 = load %nyx_string*, %nyx_string** %1978
  %1995 = getelementptr [4 x i8], [4 x i8]* @.str320, i32 0, i32 0
  %1996 = call %nyx_string* @nyx_string_from_cstr(i8* %1995)
  %1997 = call i8* @nyx_string_to_cstr(%nyx_string* %1994)
  %1998 = call i8* @nyx_string_to_cstr(%nyx_string* %1996)
  %1999 = call i32 @strcmp(i8* %1997, i8* %1998)
  %2000 = icmp eq i32 %1999, 0
  br i1 %2000, label %then282, label %else283
then282:
  %2001 = getelementptr [2 x i8], [2 x i8]* @.str321, i32 0, i32 0
  %2002 = call %nyx_string* @nyx_string_from_cstr(i8* %2001)
  %2003 = load %nyx_string*, %nyx_string** %1975
  %2004 = call %nyx_string* @nyx_string_concat(%nyx_string* %2002, %nyx_string* %2003)
  %2005 = getelementptr [35 x i8], [35 x i8]* @.str322, i32 0, i32 0
  %2006 = call %nyx_string* @nyx_string_from_cstr(i8* %2005)
  %2007 = call %nyx_string* @nyx_string_concat(%nyx_string* %2004, %nyx_string* %2006)
  %2008 = call i64 @sem_error(%nyx_string* %2007)
  ret i1 0
else283:
  br label %merge284
merge284:
  %2009 = load %nyx_string*, %nyx_string** %1978
  %2010 = getelementptr [6 x i8], [6 x i8]* @.str323, i32 0, i32 0
  %2011 = call %nyx_string* @nyx_string_from_cstr(i8* %2010)
  %2012 = call i8* @nyx_string_to_cstr(%nyx_string* %2009)
  %2013 = call i8* @nyx_string_to_cstr(%nyx_string* %2011)
  %2014 = call i32 @strcmp(i8* %2012, i8* %2013)
  %2015 = icmp eq i32 %2014, 0
  br i1 %2015, label %then285, label %else286
then285:
  %2016 = getelementptr [2 x i8], [2 x i8]* @.str324, i32 0, i32 0
  %2017 = call %nyx_string* @nyx_string_from_cstr(i8* %2016)
  %2018 = load %nyx_string*, %nyx_string** %1975
  %2019 = call %nyx_string* @nyx_string_concat(%nyx_string* %2017, %nyx_string* %2018)
  %2020 = getelementptr [37 x i8], [37 x i8]* @.str325, i32 0, i32 0
  %2021 = call %nyx_string* @nyx_string_from_cstr(i8* %2020)
  %2022 = call %nyx_string* @nyx_string_concat(%nyx_string* %2019, %nyx_string* %2021)
  %2023 = call i64 @sem_error(%nyx_string* %2022)
  ret i1 0
else286:
  br label %merge287
merge287:
  %2024 = load %ASTNode, %ASTNode* %node.ptr
  %2025 = call %ASTNode @get_node_at(%ASTNode %2024, i64 1)
  %2026 = alloca %ASTNode
  store %ASTNode %2025, %ASTNode* %2026
  %2027 = load %ASTNode, %ASTNode* %2026
  %2028 = call i1 @validate_node(%ASTNode %2027)
  ret i1 %2028
}

define internal i1 @validate_function(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %2029 = load %ASTNode, %ASTNode* %node.ptr
  %2030 = call %nyx_string* @get_string_at(%ASTNode %2029, i64 0)
  %2031 = alloca %nyx_string*
  store %nyx_string* %2030, %nyx_string** %2031
  %2032 = load %ASTNode, %ASTNode* %node.ptr
  %2033 = call { i64, i8* }* @get_array_at(%ASTNode %2032, i64 1)
  %2034 = alloca { i64, i8* }*
  store { i64, i8* }* %2033, { i64, i8* }** %2034
  %2035 = load %ASTNode, %ASTNode* %node.ptr
  %2036 = call %ASTNode @get_node_at(%ASTNode %2035, i64 3)
  %2037 = alloca %ASTNode
  store %ASTNode %2036, %ASTNode* %2037
  %2038 = load i64, i64* @g_in_function
  %2039 = alloca i64
  store i64 %2038, i64* %2039
  %2040 = load i64, i64* @g_in_loop
  %2041 = alloca i64
  store i64 %2040, i64* %2041
  %2042 = load %nyx_string*, %nyx_string** @g_current_fn
  %2043 = alloca %nyx_string*
  store %nyx_string* %2042, %nyx_string** %2043
  store i64 1, i64* @g_in_function
  store i64 0, i64* @g_in_loop
  %2044 = load %nyx_string*, %nyx_string** %2031
  store %nyx_string* %2044, %nyx_string** @g_current_fn
  %2045 = call i64 @scope_push()
  %2046 = alloca i64
  store i64 0, i64* %2046
  br label %while_cond288
while_cond288:
  %2047 = load i64, i64* %2046
  %2048 = load { i64, i8* }*, { i64, i8* }** %2034
  %2049 = call i64 @nyx_array_length({ i64, i8* }* %2048)
  %2050 = icmp slt i64 %2047, %2049
  br i1 %2050, label %while_body289, label %while_end290
while_body289:
  %2051 = load { i64, i8* }*, { i64, i8* }** %2034
  %2052 = load i64, i64* %2046
  %2053 = call i64 @nyx_array_get({ i64, i8* }* %2051, i64 %2052)
  %2054 = inttoptr i64 %2053 to { i64, i8* }*
  %2055 = alloca { i64, i8* }*
  store { i64, i8* }* %2054, { i64, i8* }** %2055
  %2056 = load { i64, i8* }*, { i64, i8* }** %2055
  %2057 = call i64 @nyx_array_get({ i64, i8* }* %2056, i64 0)
  %2058 = inttoptr i64 %2057 to %nyx_string*
  %2059 = alloca %nyx_string*
  store %nyx_string* %2058, %nyx_string** %2059
  %2060 = load %nyx_string*, %nyx_string** %2059
  %2061 = getelementptr [6 x i8], [6 x i8]* @.str326, i32 0, i32 0
  %2062 = call %nyx_string* @nyx_string_from_cstr(i8* %2061)
  %2063 = call i64 @scope_declare(%nyx_string* %2060, %nyx_string* %2062)
  %2064 = load i64, i64* %2046
  %2065 = add i64 %2064, 1
  store i64 %2065, i64* %2046
  br label %while_cond288
while_end290:
  %2066 = load %ASTNode, %ASTNode* %2037
  %2067 = call i1 @validate_node(%ASTNode %2066)
  %2068 = alloca i1
  store i1 %2067, i1* %2068
  %2069 = call i64 @scope_pop()
  %2070 = load i64, i64* %2039
  store i64 %2070, i64* @g_in_function
  %2071 = load i64, i64* %2041
  store i64 %2071, i64* @g_in_loop
  %2072 = load %nyx_string*, %nyx_string** %2043
  store %nyx_string* %2072, %nyx_string** @g_current_fn
  %2073 = load i1, i1* %2068
  ret i1 %2073
}

define internal i1 @validate_if(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %2074 = load %ASTNode, %ASTNode* %node.ptr
  %2075 = call %ASTNode @get_node_at(%ASTNode %2074, i64 0)
  %2076 = alloca %ASTNode
  store %ASTNode %2075, %ASTNode* %2076
  %2077 = load %ASTNode, %ASTNode* %node.ptr
  %2078 = call %ASTNode @get_node_at(%ASTNode %2077, i64 1)
  %2079 = alloca %ASTNode
  store %ASTNode %2078, %ASTNode* %2079
  %2080 = load %ASTNode, %ASTNode* %node.ptr
  %2081 = call %ASTNode @get_node_at(%ASTNode %2080, i64 2)
  %2082 = alloca %ASTNode
  store %ASTNode %2081, %ASTNode* %2082
  %2083 = load %ASTNode, %ASTNode* %2076
  %2084 = call i1 @validate_node(%ASTNode %2083)
  %2085 = xor i1 %2084, true
  br i1 %2085, label %then291, label %else292
then291:
  ret i1 0
else292:
  br label %merge293
merge293:
  %2086 = call i64 @scope_push()
  %2087 = load %ASTNode, %ASTNode* %2079
  %2088 = call i1 @validate_node(%ASTNode %2087)
  %2089 = xor i1 %2088, true
  br i1 %2089, label %then294, label %else295
then294:
  %2090 = call i64 @scope_pop()
  ret i1 0
else295:
  br label %merge296
merge296:
  %2091 = call i64 @scope_pop()
  %2092 = getelementptr %ASTNode, %ASTNode* %2082, i32 0, i32 0
  %2093 = load %nyx_string*, %nyx_string** %2092
  %2094 = getelementptr [6 x i8], [6 x i8]* @.str327, i32 0, i32 0
  %2095 = call %nyx_string* @nyx_string_from_cstr(i8* %2094)
  %2096 = call i8* @nyx_string_to_cstr(%nyx_string* %2093)
  %2097 = call i8* @nyx_string_to_cstr(%nyx_string* %2095)
  %2098 = call i32 @strcmp(i8* %2096, i8* %2097)
  %2099 = icmp ne i32 %2098, 0
  br i1 %2099, label %then297, label %else298
then297:
  %2100 = call i64 @scope_push()
  %2101 = load %ASTNode, %ASTNode* %2082
  %2102 = call i1 @validate_node(%ASTNode %2101)
  %2103 = xor i1 %2102, true
  br i1 %2103, label %then300, label %else301
then300:
  %2104 = call i64 @scope_pop()
  ret i1 0
else301:
  br label %merge302
merge302:
  %2105 = call i64 @scope_pop()
  br label %merge299
else298:
  br label %merge299
merge299:
  ret i1 1
}

define internal i1 @validate_while(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %2106 = load %ASTNode, %ASTNode* %node.ptr
  %2107 = call %ASTNode @get_node_at(%ASTNode %2106, i64 0)
  %2108 = alloca %ASTNode
  store %ASTNode %2107, %ASTNode* %2108
  %2109 = load %ASTNode, %ASTNode* %node.ptr
  %2110 = call %ASTNode @get_node_at(%ASTNode %2109, i64 1)
  %2111 = alloca %ASTNode
  store %ASTNode %2110, %ASTNode* %2111
  %2112 = load %ASTNode, %ASTNode* %2108
  %2113 = call i1 @validate_node(%ASTNode %2112)
  %2114 = xor i1 %2113, true
  br i1 %2114, label %then303, label %else304
then303:
  ret i1 0
else304:
  br label %merge305
merge305:
  %2115 = load i64, i64* @g_in_loop
  %2116 = alloca i64
  store i64 %2115, i64* %2116
  store i64 1, i64* @g_in_loop
  %2117 = call i64 @scope_push()
  %2118 = load %ASTNode, %ASTNode* %2111
  %2119 = call i1 @validate_node(%ASTNode %2118)
  %2120 = alloca i1
  store i1 %2119, i1* %2120
  %2121 = call i64 @scope_pop()
  %2122 = load i64, i64* %2116
  store i64 %2122, i64* @g_in_loop
  %2123 = load i1, i1* %2120
  ret i1 %2123
}

define internal i1 @validate_for(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %2124 = load %ASTNode, %ASTNode* %node.ptr
  %2125 = call %nyx_string* @get_string_at(%ASTNode %2124, i64 0)
  %2126 = alloca %nyx_string*
  store %nyx_string* %2125, %nyx_string** %2126
  %2127 = load %ASTNode, %ASTNode* %node.ptr
  %2128 = call %ASTNode @get_node_at(%ASTNode %2127, i64 1)
  %2129 = alloca %ASTNode
  store %ASTNode %2128, %ASTNode* %2129
  %2130 = load %ASTNode, %ASTNode* %node.ptr
  %2131 = call %ASTNode @get_node_at(%ASTNode %2130, i64 2)
  %2132 = alloca %ASTNode
  store %ASTNode %2131, %ASTNode* %2132
  %2133 = load %ASTNode, %ASTNode* %2129
  %2134 = call i1 @validate_node(%ASTNode %2133)
  %2135 = xor i1 %2134, true
  br i1 %2135, label %then306, label %else307
then306:
  ret i1 0
else307:
  br label %merge308
merge308:
  %2136 = load i64, i64* @g_in_loop
  %2137 = alloca i64
  store i64 %2136, i64* %2137
  store i64 1, i64* @g_in_loop
  %2138 = call i64 @scope_push()
  %2139 = load %nyx_string*, %nyx_string** %2126
  %2140 = getelementptr [8 x i8], [8 x i8]* @.str328, i32 0, i32 0
  %2141 = call %nyx_string* @nyx_string_from_cstr(i8* %2140)
  %2142 = call i64 @scope_declare(%nyx_string* %2139, %nyx_string* %2141)
  %2143 = load %ASTNode, %ASTNode* %2132
  %2144 = call i1 @validate_node(%ASTNode %2143)
  %2145 = alloca i1
  store i1 %2144, i1* %2145
  %2146 = call i64 @scope_pop()
  %2147 = load i64, i64* %2137
  store i64 %2147, i64* @g_in_loop
  %2148 = load i1, i1* %2145
  ret i1 %2148
}

define internal i1 @validate_return(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %2149 = load i64, i64* @g_in_function
  %2150 = icmp eq i64 %2149, 0
  br i1 %2150, label %then309, label %else310
then309:
  %2151 = getelementptr [27 x i8], [27 x i8]* @.str329, i32 0, i32 0
  %2152 = call %nyx_string* @nyx_string_from_cstr(i8* %2151)
  %2153 = call i64 @sem_error(%nyx_string* %2152)
  ret i1 0
else310:
  br label %merge311
merge311:
  %2154 = load %ASTNode, %ASTNode* %node.ptr
  %2155 = call %ASTNode @get_node_at(%ASTNode %2154, i64 0)
  %2156 = alloca %ASTNode
  store %ASTNode %2155, %ASTNode* %2156
  %2157 = load %ASTNode, %ASTNode* %2156
  %2158 = call i1 @validate_node(%ASTNode %2157)
  ret i1 %2158
}

define internal i1 @validate_break(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %2159 = load i64, i64* @g_in_loop
  %2160 = icmp eq i64 %2159, 0
  br i1 %2160, label %then312, label %else313
then312:
  %2161 = getelementptr [22 x i8], [22 x i8]* @.str330, i32 0, i32 0
  %2162 = call %nyx_string* @nyx_string_from_cstr(i8* %2161)
  %2163 = call i64 @sem_error(%nyx_string* %2162)
  ret i1 0
else313:
  br label %merge314
merge314:
  ret i1 1
}

define internal i1 @validate_continue(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %2164 = load i64, i64* @g_in_loop
  %2165 = icmp eq i64 %2164, 0
  br i1 %2165, label %then315, label %else316
then315:
  %2166 = getelementptr [25 x i8], [25 x i8]* @.str331, i32 0, i32 0
  %2167 = call %nyx_string* @nyx_string_from_cstr(i8* %2166)
  %2168 = call i64 @sem_error(%nyx_string* %2167)
  ret i1 0
else316:
  br label %merge317
merge317:
  ret i1 1
}

define internal i1 @validate_array(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %2169 = load %ASTNode, %ASTNode* %node.ptr
  %2170 = call { i64, i8* }* @get_array_at(%ASTNode %2169, i64 0)
  %2171 = alloca { i64, i8* }*
  store { i64, i8* }* %2170, { i64, i8* }** %2171
  %2172 = alloca i64
  store i64 0, i64* %2172
  br label %while_cond318
while_cond318:
  %2173 = load i64, i64* %2172
  %2174 = load { i64, i8* }*, { i64, i8* }** %2171
  %2175 = call i64 @nyx_array_length({ i64, i8* }* %2174)
  %2176 = icmp slt i64 %2173, %2175
  br i1 %2176, label %while_body319, label %while_end320
while_body319:
  %2177 = load { i64, i8* }*, { i64, i8* }** %2171
  %2178 = load i64, i64* %2172
  %2179 = call i64 @nyx_array_get({ i64, i8* }* %2177, i64 %2178)
  %2180 = inttoptr i64 %2179 to { i64, i8* }*
  %2181 = call i64 @nyx_array_get({ i64, i8* }* %2180, i64 0)
  %2182 = call i64 @nyx_array_get({ i64, i8* }* %2180, i64 1)
  %2183 = inttoptr i64 %2181 to %nyx_string*
  %2184 = inttoptr i64 %2182 to { i64, i8* }*
  %2185 = alloca %ASTNode
  %2186 = getelementptr inbounds %ASTNode, %ASTNode* %2185, i32 0, i32 0
  store %nyx_string* %2183, %nyx_string** %2186
  %2187 = getelementptr inbounds %ASTNode, %ASTNode* %2185, i32 0, i32 1
  store { i64, i8* }* %2184, { i64, i8* }** %2187
  %2188 = load %ASTNode, %ASTNode* %2185
  %2189 = alloca %ASTNode
  store %ASTNode %2188, %ASTNode* %2189
  %2190 = load %ASTNode, %ASTNode* %2189
  %2191 = call i1 @validate_node(%ASTNode %2190)
  %2192 = xor i1 %2191, true
  br i1 %2192, label %then321, label %else322
then321:
  ret i1 0
else322:
  br label %merge323
merge323:
  %2193 = load i64, i64* %2172
  %2194 = add i64 %2193, 1
  store i64 %2194, i64* %2172
  br label %while_cond318
while_end320:
  ret i1 1
}

define internal i1 @validate_index(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %2195 = load %ASTNode, %ASTNode* %node.ptr
  %2196 = call %ASTNode @get_node_at(%ASTNode %2195, i64 0)
  %2197 = alloca %ASTNode
  store %ASTNode %2196, %ASTNode* %2197
  %2198 = load %ASTNode, %ASTNode* %node.ptr
  %2199 = call %ASTNode @get_node_at(%ASTNode %2198, i64 1)
  %2200 = alloca %ASTNode
  store %ASTNode %2199, %ASTNode* %2200
  %2201 = load %ASTNode, %ASTNode* %2197
  %2202 = call i1 @validate_node(%ASTNode %2201)
  %2203 = xor i1 %2202, true
  br i1 %2203, label %then324, label %else325
then324:
  ret i1 0
else325:
  br label %merge326
merge326:
  %2204 = load %ASTNode, %ASTNode* %2200
  %2205 = call i1 @validate_node(%ASTNode %2204)
  ret i1 %2205
}

define internal i1 @validate_index_assign(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %2206 = load %ASTNode, %ASTNode* %node.ptr
  %2207 = call %ASTNode @get_node_at(%ASTNode %2206, i64 0)
  %2208 = alloca %ASTNode
  store %ASTNode %2207, %ASTNode* %2208
  %2209 = load %ASTNode, %ASTNode* %node.ptr
  %2210 = call %ASTNode @get_node_at(%ASTNode %2209, i64 1)
  %2211 = alloca %ASTNode
  store %ASTNode %2210, %ASTNode* %2211
  %2212 = load %ASTNode, %ASTNode* %node.ptr
  %2213 = call %ASTNode @get_node_at(%ASTNode %2212, i64 2)
  %2214 = alloca %ASTNode
  store %ASTNode %2213, %ASTNode* %2214
  %2215 = load %ASTNode, %ASTNode* %2208
  %2216 = call i1 @validate_node(%ASTNode %2215)
  %2217 = xor i1 %2216, true
  br i1 %2217, label %then327, label %else328
then327:
  ret i1 0
else328:
  br label %merge329
merge329:
  %2218 = load %ASTNode, %ASTNode* %2211
  %2219 = call i1 @validate_node(%ASTNode %2218)
  %2220 = xor i1 %2219, true
  br i1 %2220, label %then330, label %else331
then330:
  ret i1 0
else331:
  br label %merge332
merge332:
  %2221 = load %ASTNode, %ASTNode* %2214
  %2222 = call i1 @validate_node(%ASTNode %2221)
  ret i1 %2222
}

define internal i1 @validate_method_call(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %2223 = load %ASTNode, %ASTNode* %node.ptr
  %2224 = call %ASTNode @get_node_at(%ASTNode %2223, i64 0)
  %2225 = alloca %ASTNode
  store %ASTNode %2224, %ASTNode* %2225
  %2226 = load %ASTNode, %ASTNode* %node.ptr
  %2227 = call { i64, i8* }* @get_array_at(%ASTNode %2226, i64 2)
  %2228 = alloca { i64, i8* }*
  store { i64, i8* }* %2227, { i64, i8* }** %2228
  %2229 = load %ASTNode, %ASTNode* %2225
  %2230 = call i1 @validate_node(%ASTNode %2229)
  %2231 = xor i1 %2230, true
  br i1 %2231, label %then333, label %else334
then333:
  ret i1 0
else334:
  br label %merge335
merge335:
  %2232 = alloca i64
  store i64 0, i64* %2232
  br label %while_cond336
while_cond336:
  %2233 = load i64, i64* %2232
  %2234 = load { i64, i8* }*, { i64, i8* }** %2228
  %2235 = call i64 @nyx_array_length({ i64, i8* }* %2234)
  %2236 = icmp slt i64 %2233, %2235
  br i1 %2236, label %while_body337, label %while_end338
while_body337:
  %2237 = load { i64, i8* }*, { i64, i8* }** %2228
  %2238 = load i64, i64* %2232
  %2239 = call i64 @nyx_array_get({ i64, i8* }* %2237, i64 %2238)
  %2240 = inttoptr i64 %2239 to { i64, i8* }*
  %2241 = call i64 @nyx_array_get({ i64, i8* }* %2240, i64 0)
  %2242 = call i64 @nyx_array_get({ i64, i8* }* %2240, i64 1)
  %2243 = inttoptr i64 %2241 to %nyx_string*
  %2244 = inttoptr i64 %2242 to { i64, i8* }*
  %2245 = alloca %ASTNode
  %2246 = getelementptr inbounds %ASTNode, %ASTNode* %2245, i32 0, i32 0
  store %nyx_string* %2243, %nyx_string** %2246
  %2247 = getelementptr inbounds %ASTNode, %ASTNode* %2245, i32 0, i32 1
  store { i64, i8* }* %2244, { i64, i8* }** %2247
  %2248 = load %ASTNode, %ASTNode* %2245
  %2249 = alloca %ASTNode
  store %ASTNode %2248, %ASTNode* %2249
  %2250 = load %ASTNode, %ASTNode* %2249
  %2251 = call i1 @validate_node(%ASTNode %2250)
  %2252 = xor i1 %2251, true
  br i1 %2252, label %then339, label %else340
then339:
  ret i1 0
else340:
  br label %merge341
merge341:
  %2253 = load i64, i64* %2232
  %2254 = add i64 %2253, 1
  store i64 %2254, i64* %2232
  br label %while_cond336
while_end338:
  ret i1 1
}

define internal i1 @validate_field_access(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %2255 = load %ASTNode, %ASTNode* %node.ptr
  %2256 = call %ASTNode @get_node_at(%ASTNode %2255, i64 0)
  %2257 = alloca %ASTNode
  store %ASTNode %2256, %ASTNode* %2257
  %2258 = load %ASTNode, %ASTNode* %2257
  %2259 = call i1 @validate_node(%ASTNode %2258)
  ret i1 %2259
}

define internal i1 @validate_field_assign(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %2260 = load %ASTNode, %ASTNode* %node.ptr
  %2261 = call %ASTNode @get_node_at(%ASTNode %2260, i64 0)
  %2262 = alloca %ASTNode
  store %ASTNode %2261, %ASTNode* %2262
  %2263 = load %ASTNode, %ASTNode* %node.ptr
  %2264 = call %ASTNode @get_node_at(%ASTNode %2263, i64 2)
  %2265 = alloca %ASTNode
  store %ASTNode %2264, %ASTNode* %2265
  %2266 = load %ASTNode, %ASTNode* %2262
  %2267 = call i1 @validate_node(%ASTNode %2266)
  %2268 = xor i1 %2267, true
  br i1 %2268, label %then342, label %else343
then342:
  ret i1 0
else343:
  br label %merge344
merge344:
  %2269 = load %ASTNode, %ASTNode* %2265
  %2270 = call i1 @validate_node(%ASTNode %2269)
  ret i1 %2270
}

define internal i1 @validate_struct_init(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %2271 = load %ASTNode, %ASTNode* %node.ptr
  %2272 = call { i64, i8* }* @get_array_at(%ASTNode %2271, i64 1)
  %2273 = alloca { i64, i8* }*
  store { i64, i8* }* %2272, { i64, i8* }** %2273
  %2274 = alloca i64
  store i64 0, i64* %2274
  br label %while_cond345
while_cond345:
  %2275 = load i64, i64* %2274
  %2276 = load { i64, i8* }*, { i64, i8* }** %2273
  %2277 = call i64 @nyx_array_length({ i64, i8* }* %2276)
  %2278 = icmp slt i64 %2275, %2277
  br i1 %2278, label %while_body346, label %while_end347
while_body346:
  %2279 = load { i64, i8* }*, { i64, i8* }** %2273
  %2280 = load i64, i64* %2274
  %2281 = call i64 @nyx_array_get({ i64, i8* }* %2279, i64 %2280)
  %2282 = inttoptr i64 %2281 to { i64, i8* }*
  %2283 = alloca { i64, i8* }*
  store { i64, i8* }* %2282, { i64, i8* }** %2283
  %2284 = load { i64, i8* }*, { i64, i8* }** %2283
  %2285 = call i64 @nyx_array_get({ i64, i8* }* %2284, i64 1)
  %2286 = inttoptr i64 %2285 to { i64, i8* }*
  %2287 = call i64 @nyx_array_get({ i64, i8* }* %2286, i64 0)
  %2288 = call i64 @nyx_array_get({ i64, i8* }* %2286, i64 1)
  %2289 = inttoptr i64 %2287 to %nyx_string*
  %2290 = inttoptr i64 %2288 to { i64, i8* }*
  %2291 = alloca %ASTNode
  %2292 = getelementptr inbounds %ASTNode, %ASTNode* %2291, i32 0, i32 0
  store %nyx_string* %2289, %nyx_string** %2292
  %2293 = getelementptr inbounds %ASTNode, %ASTNode* %2291, i32 0, i32 1
  store { i64, i8* }* %2290, { i64, i8* }** %2293
  %2294 = load %ASTNode, %ASTNode* %2291
  %2295 = alloca %ASTNode
  store %ASTNode %2294, %ASTNode* %2295
  %2296 = load %ASTNode, %ASTNode* %2295
  %2297 = call i1 @validate_node(%ASTNode %2296)
  %2298 = xor i1 %2297, true
  br i1 %2298, label %then348, label %else349
then348:
  ret i1 0
else349:
  br label %merge350
merge350:
  %2299 = load i64, i64* %2274
  %2300 = add i64 %2299, 1
  store i64 %2300, i64* %2274
  br label %while_cond345
while_end347:
  ret i1 1
}

define internal i1 @validate_match(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %2301 = load %ASTNode, %ASTNode* %node.ptr
  %2302 = call %ASTNode @get_node_at(%ASTNode %2301, i64 0)
  %2303 = alloca %ASTNode
  store %ASTNode %2302, %ASTNode* %2303
  %2304 = load %ASTNode, %ASTNode* %node.ptr
  %2305 = call { i64, i8* }* @get_array_at(%ASTNode %2304, i64 1)
  %2306 = alloca { i64, i8* }*
  store { i64, i8* }* %2305, { i64, i8* }** %2306
  %2307 = load %ASTNode, %ASTNode* %2303
  %2308 = call i1 @validate_node(%ASTNode %2307)
  %2309 = xor i1 %2308, true
  br i1 %2309, label %then351, label %else352
then351:
  ret i1 0
else352:
  br label %merge353
merge353:
  %2310 = alloca i64
  store i64 0, i64* %2310
  br label %while_cond354
while_cond354:
  %2311 = load i64, i64* %2310
  %2312 = load { i64, i8* }*, { i64, i8* }** %2306
  %2313 = call i64 @nyx_array_length({ i64, i8* }* %2312)
  %2314 = icmp slt i64 %2311, %2313
  br i1 %2314, label %while_body355, label %while_end356
while_body355:
  %2315 = load { i64, i8* }*, { i64, i8* }** %2306
  %2316 = load i64, i64* %2310
  %2317 = call i64 @nyx_array_get({ i64, i8* }* %2315, i64 %2316)
  %2318 = inttoptr i64 %2317 to { i64, i8* }*
  %2319 = call i64 @nyx_array_get({ i64, i8* }* %2318, i64 0)
  %2320 = call i64 @nyx_array_get({ i64, i8* }* %2318, i64 1)
  %2321 = inttoptr i64 %2319 to %nyx_string*
  %2322 = inttoptr i64 %2320 to { i64, i8* }*
  %2323 = alloca %ASTNode
  %2324 = getelementptr inbounds %ASTNode, %ASTNode* %2323, i32 0, i32 0
  store %nyx_string* %2321, %nyx_string** %2324
  %2325 = getelementptr inbounds %ASTNode, %ASTNode* %2323, i32 0, i32 1
  store { i64, i8* }* %2322, { i64, i8* }** %2325
  %2326 = load %ASTNode, %ASTNode* %2323
  %2327 = alloca %ASTNode
  store %ASTNode %2326, %ASTNode* %2327
  %2328 = load %ASTNode, %ASTNode* %2327
  %2329 = call i1 @validate_node(%ASTNode %2328)
  %2330 = xor i1 %2329, true
  br i1 %2330, label %then357, label %else358
then357:
  ret i1 0
else358:
  br label %merge359
merge359:
  %2331 = load i64, i64* %2310
  %2332 = add i64 %2331, 1
  store i64 %2332, i64* %2310
  br label %while_cond354
while_end356:
  %2333 = alloca i1
  store i1 0, i1* %2333
  %2334 = getelementptr [1 x i8], [1 x i8]* @.str332, i32 0, i32 0
  %2335 = call %nyx_string* @nyx_string_from_cstr(i8* %2334)
  %2336 = alloca %nyx_string*
  store %nyx_string* %2335, %nyx_string** %2336
  %2337 = call { i64, i8* }* @nyx_array_new_ptr()
  %2338 = alloca { i64, i8* }*
  store { i64, i8* }* %2337, { i64, i8* }** %2338
  store i64 0, i64* %2310
  br label %while_cond360
while_cond360:
  %2339 = load i64, i64* %2310
  %2340 = load { i64, i8* }*, { i64, i8* }** %2306
  %2341 = call i64 @nyx_array_length({ i64, i8* }* %2340)
  %2342 = icmp slt i64 %2339, %2341
  br i1 %2342, label %while_body361, label %while_end362
while_body361:
  %2343 = load { i64, i8* }*, { i64, i8* }** %2306
  %2344 = load i64, i64* %2310
  %2345 = call i64 @nyx_array_get({ i64, i8* }* %2343, i64 %2344)
  %2346 = inttoptr i64 %2345 to { i64, i8* }*
  %2347 = call i64 @nyx_array_get({ i64, i8* }* %2346, i64 0)
  %2348 = call i64 @nyx_array_get({ i64, i8* }* %2346, i64 1)
  %2349 = inttoptr i64 %2347 to %nyx_string*
  %2350 = inttoptr i64 %2348 to { i64, i8* }*
  %2351 = alloca %ASTNode
  %2352 = getelementptr inbounds %ASTNode, %ASTNode* %2351, i32 0, i32 0
  store %nyx_string* %2349, %nyx_string** %2352
  %2353 = getelementptr inbounds %ASTNode, %ASTNode* %2351, i32 0, i32 1
  store { i64, i8* }* %2350, { i64, i8* }** %2353
  %2354 = load %ASTNode, %ASTNode* %2351
  %2355 = alloca %ASTNode
  store %ASTNode %2354, %ASTNode* %2355
  %2356 = load %ASTNode, %ASTNode* %2355
  %2357 = call %ASTNode @get_node_at(%ASTNode %2356, i64 0)
  %2358 = alloca %ASTNode
  store %ASTNode %2357, %ASTNode* %2358
  %2359 = getelementptr %ASTNode, %ASTNode* %2358, i32 0, i32 0
  %2360 = load %nyx_string*, %nyx_string** %2359
  %2361 = getelementptr [9 x i8], [9 x i8]* @.str333, i32 0, i32 0
  %2362 = call %nyx_string* @nyx_string_from_cstr(i8* %2361)
  %2363 = call i8* @nyx_string_to_cstr(%nyx_string* %2360)
  %2364 = call i8* @nyx_string_to_cstr(%nyx_string* %2362)
  %2365 = call i32 @strcmp(i8* %2363, i8* %2364)
  %2366 = icmp eq i32 %2365, 0
  %2367 = getelementptr %ASTNode, %ASTNode* %2358, i32 0, i32 0
  %2368 = load %nyx_string*, %nyx_string** %2367
  %2369 = getelementptr [19 x i8], [19 x i8]* @.str334, i32 0, i32 0
  %2370 = call %nyx_string* @nyx_string_from_cstr(i8* %2369)
  %2371 = call i8* @nyx_string_to_cstr(%nyx_string* %2368)
  %2372 = call i8* @nyx_string_to_cstr(%nyx_string* %2370)
  %2373 = call i32 @strcmp(i8* %2371, i8* %2372)
  %2374 = icmp eq i32 %2373, 0
  %2375 = or i1 %2366, %2374
  %2376 = getelementptr %ASTNode, %ASTNode* %2358, i32 0, i32 0
  %2377 = load %nyx_string*, %nyx_string** %2376
  %2378 = getelementptr [15 x i8], [15 x i8]* @.str335, i32 0, i32 0
  %2379 = call %nyx_string* @nyx_string_from_cstr(i8* %2378)
  %2380 = call i8* @nyx_string_to_cstr(%nyx_string* %2377)
  %2381 = call i8* @nyx_string_to_cstr(%nyx_string* %2379)
  %2382 = call i32 @strcmp(i8* %2380, i8* %2381)
  %2383 = icmp eq i32 %2382, 0
  %2384 = or i1 %2375, %2383
  %2385 = getelementptr %ASTNode, %ASTNode* %2358, i32 0, i32 0
  %2386 = load %nyx_string*, %nyx_string** %2385
  %2387 = getelementptr [21 x i8], [21 x i8]* @.str336, i32 0, i32 0
  %2388 = call %nyx_string* @nyx_string_from_cstr(i8* %2387)
  %2389 = call i8* @nyx_string_to_cstr(%nyx_string* %2386)
  %2390 = call i8* @nyx_string_to_cstr(%nyx_string* %2388)
  %2391 = call i32 @strcmp(i8* %2389, i8* %2390)
  %2392 = icmp eq i32 %2391, 0
  %2393 = or i1 %2384, %2392
  br i1 %2393, label %then363, label %else364
then363:
  store i1 1, i1* %2333
  br label %merge365
else364:
  br label %merge365
merge365:
  %2394 = getelementptr %ASTNode, %ASTNode* %2358, i32 0, i32 0
  %2395 = load %nyx_string*, %nyx_string** %2394
  %2396 = getelementptr [14 x i8], [14 x i8]* @.str337, i32 0, i32 0
  %2397 = call %nyx_string* @nyx_string_from_cstr(i8* %2396)
  %2398 = call i8* @nyx_string_to_cstr(%nyx_string* %2395)
  %2399 = call i8* @nyx_string_to_cstr(%nyx_string* %2397)
  %2400 = call i32 @strcmp(i8* %2398, i8* %2399)
  %2401 = icmp eq i32 %2400, 0
  br i1 %2401, label %then366, label %else367
then366:
  %2402 = load %ASTNode, %ASTNode* %2358
  %2403 = call %nyx_string* @get_string_at(%ASTNode %2402, i64 0)
  %2404 = alloca %nyx_string*
  store %nyx_string* %2403, %nyx_string** %2404
  %2405 = load %ASTNode, %ASTNode* %2358
  %2406 = call %nyx_string* @get_string_at(%ASTNode %2405, i64 1)
  %2407 = alloca %nyx_string*
  store %nyx_string* %2406, %nyx_string** %2407
  %2408 = load %nyx_string*, %nyx_string** %2336
  %2409 = getelementptr [1 x i8], [1 x i8]* @.str338, i32 0, i32 0
  %2410 = call %nyx_string* @nyx_string_from_cstr(i8* %2409)
  %2411 = call i8* @nyx_string_to_cstr(%nyx_string* %2408)
  %2412 = call i8* @nyx_string_to_cstr(%nyx_string* %2410)
  %2413 = call i32 @strcmp(i8* %2411, i8* %2412)
  %2414 = icmp eq i32 %2413, 0
  br i1 %2414, label %then369, label %else370
then369:
  %2415 = load %nyx_string*, %nyx_string** %2404
  store %nyx_string* %2415, %nyx_string** %2336
  br label %merge371
else370:
  br label %merge371
merge371:
  %2416 = alloca i1
  store i1 0, i1* %2416
  %2417 = getelementptr %ASTNode, %ASTNode* %2355, i32 0, i32 1
  %2418 = load { i64, i8* }*, { i64, i8* }** %2417
  %2419 = alloca { i64, i8* }*
  store { i64, i8* }* %2418, { i64, i8* }** %2419
  %2420 = load { i64, i8* }*, { i64, i8* }** %2419
  %2421 = call i64 @nyx_array_length({ i64, i8* }* %2420)
  %2422 = icmp sgt i64 %2421, 2
  br i1 %2422, label %then372, label %else373
then372:
  %2423 = load { i64, i8* }*, { i64, i8* }** %2419
  %2424 = call i64 @nyx_array_get({ i64, i8* }* %2423, i64 2)
  %2425 = inttoptr i64 %2424 to { i64, i8* }*
  %2426 = call i64 @nyx_array_get({ i64, i8* }* %2425, i64 0)
  %2427 = call i64 @nyx_array_get({ i64, i8* }* %2425, i64 1)
  %2428 = inttoptr i64 %2426 to %nyx_string*
  %2429 = inttoptr i64 %2427 to { i64, i8* }*
  %2430 = alloca %ASTNode
  %2431 = getelementptr inbounds %ASTNode, %ASTNode* %2430, i32 0, i32 0
  store %nyx_string* %2428, %nyx_string** %2431
  %2432 = getelementptr inbounds %ASTNode, %ASTNode* %2430, i32 0, i32 1
  store { i64, i8* }* %2429, { i64, i8* }** %2432
  %2433 = load %ASTNode, %ASTNode* %2430
  %2434 = alloca %ASTNode
  store %ASTNode %2433, %ASTNode* %2434
  %2435 = getelementptr %ASTNode, %ASTNode* %2434, i32 0, i32 0
  %2436 = load %nyx_string*, %nyx_string** %2435
  %2437 = getelementptr [6 x i8], [6 x i8]* @.str339, i32 0, i32 0
  %2438 = call %nyx_string* @nyx_string_from_cstr(i8* %2437)
  %2439 = call i8* @nyx_string_to_cstr(%nyx_string* %2436)
  %2440 = call i8* @nyx_string_to_cstr(%nyx_string* %2438)
  %2441 = call i32 @strcmp(i8* %2439, i8* %2440)
  %2442 = icmp ne i32 %2441, 0
  br i1 %2442, label %then375, label %else376
then375:
  store i1 1, i1* %2416
  br label %merge377
else376:
  br label %merge377
merge377:
  br label %merge374
else373:
  br label %merge374
merge374:
  %2443 = load i1, i1* %2416
  %2444 = xor i1 %2443, true
  br i1 %2444, label %then378, label %else379
then378:
  %2445 = load { i64, i8* }*, { i64, i8* }** %2338
  %2446 = load %nyx_string*, %nyx_string** %2407
  %2447 = ptrtoint %nyx_string* %2446 to i64
  call void @nyx_array_push({ i64, i8* }* %2445, i64 %2447)
  br label %merge380
else379:
  br label %merge380
merge380:
  br label %merge368
else367:
  br label %merge368
merge368:
  %2448 = getelementptr %ASTNode, %ASTNode* %2358, i32 0, i32 0
  %2449 = load %nyx_string*, %nyx_string** %2448
  %2450 = getelementptr [11 x i8], [11 x i8]* @.str340, i32 0, i32 0
  %2451 = call %nyx_string* @nyx_string_from_cstr(i8* %2450)
  %2452 = call i8* @nyx_string_to_cstr(%nyx_string* %2449)
  %2453 = call i8* @nyx_string_to_cstr(%nyx_string* %2451)
  %2454 = call i32 @strcmp(i8* %2452, i8* %2453)
  %2455 = icmp eq i32 %2454, 0
  br i1 %2455, label %then381, label %else382
then381:
  %2456 = alloca i1
  store i1 0, i1* %2456
  %2457 = getelementptr %ASTNode, %ASTNode* %2355, i32 0, i32 1
  %2458 = load { i64, i8* }*, { i64, i8* }** %2457
  %2459 = alloca { i64, i8* }*
  store { i64, i8* }* %2458, { i64, i8* }** %2459
  %2460 = load { i64, i8* }*, { i64, i8* }** %2459
  %2461 = call i64 @nyx_array_length({ i64, i8* }* %2460)
  %2462 = icmp sgt i64 %2461, 2
  br i1 %2462, label %then384, label %else385
then384:
  %2463 = load { i64, i8* }*, { i64, i8* }** %2459
  %2464 = call i64 @nyx_array_get({ i64, i8* }* %2463, i64 2)
  %2465 = inttoptr i64 %2464 to { i64, i8* }*
  %2466 = call i64 @nyx_array_get({ i64, i8* }* %2465, i64 0)
  %2467 = call i64 @nyx_array_get({ i64, i8* }* %2465, i64 1)
  %2468 = inttoptr i64 %2466 to %nyx_string*
  %2469 = inttoptr i64 %2467 to { i64, i8* }*
  %2470 = alloca %ASTNode
  %2471 = getelementptr inbounds %ASTNode, %ASTNode* %2470, i32 0, i32 0
  store %nyx_string* %2468, %nyx_string** %2471
  %2472 = getelementptr inbounds %ASTNode, %ASTNode* %2470, i32 0, i32 1
  store { i64, i8* }* %2469, { i64, i8* }** %2472
  %2473 = load %ASTNode, %ASTNode* %2470
  %2474 = alloca %ASTNode
  store %ASTNode %2473, %ASTNode* %2474
  %2475 = getelementptr %ASTNode, %ASTNode* %2474, i32 0, i32 0
  %2476 = load %nyx_string*, %nyx_string** %2475
  %2477 = getelementptr [6 x i8], [6 x i8]* @.str341, i32 0, i32 0
  %2478 = call %nyx_string* @nyx_string_from_cstr(i8* %2477)
  %2479 = call i8* @nyx_string_to_cstr(%nyx_string* %2476)
  %2480 = call i8* @nyx_string_to_cstr(%nyx_string* %2478)
  %2481 = call i32 @strcmp(i8* %2479, i8* %2480)
  %2482 = icmp ne i32 %2481, 0
  br i1 %2482, label %then387, label %else388
then387:
  store i1 1, i1* %2456
  br label %merge389
else388:
  br label %merge389
merge389:
  br label %merge386
else385:
  br label %merge386
merge386:
  %2483 = load i1, i1* %2456
  %2484 = xor i1 %2483, true
  br i1 %2484, label %then390, label %else391
then390:
  %2485 = getelementptr %ASTNode, %ASTNode* %2358, i32 0, i32 1
  %2486 = load { i64, i8* }*, { i64, i8* }** %2485
  %2487 = alloca { i64, i8* }*
  store { i64, i8* }* %2486, { i64, i8* }** %2487
  %2488 = alloca i64
  store i64 0, i64* %2488
  br label %while_cond393
while_cond393:
  %2489 = load i64, i64* %2488
  %2490 = load { i64, i8* }*, { i64, i8* }** %2487
  %2491 = call i64 @nyx_array_length({ i64, i8* }* %2490)
  %2492 = icmp slt i64 %2489, %2491
  br i1 %2492, label %while_body394, label %while_end395
while_body394:
  %2493 = load { i64, i8* }*, { i64, i8* }** %2487
  %2494 = load i64, i64* %2488
  %2495 = call i64 @nyx_array_get({ i64, i8* }* %2493, i64 %2494)
  %2496 = inttoptr i64 %2495 to { i64, i8* }*
  %2497 = call i64 @nyx_array_get({ i64, i8* }* %2496, i64 0)
  %2498 = call i64 @nyx_array_get({ i64, i8* }* %2496, i64 1)
  %2499 = inttoptr i64 %2497 to %nyx_string*
  %2500 = inttoptr i64 %2498 to { i64, i8* }*
  %2501 = alloca %ASTNode
  %2502 = getelementptr inbounds %ASTNode, %ASTNode* %2501, i32 0, i32 0
  store %nyx_string* %2499, %nyx_string** %2502
  %2503 = getelementptr inbounds %ASTNode, %ASTNode* %2501, i32 0, i32 1
  store { i64, i8* }* %2500, { i64, i8* }** %2503
  %2504 = load %ASTNode, %ASTNode* %2501
  %2505 = alloca %ASTNode
  store %ASTNode %2504, %ASTNode* %2505
  %2506 = getelementptr %ASTNode, %ASTNode* %2505, i32 0, i32 0
  %2507 = load %nyx_string*, %nyx_string** %2506
  %2508 = getelementptr [14 x i8], [14 x i8]* @.str342, i32 0, i32 0
  %2509 = call %nyx_string* @nyx_string_from_cstr(i8* %2508)
  %2510 = call i8* @nyx_string_to_cstr(%nyx_string* %2507)
  %2511 = call i8* @nyx_string_to_cstr(%nyx_string* %2509)
  %2512 = call i32 @strcmp(i8* %2510, i8* %2511)
  %2513 = icmp eq i32 %2512, 0
  br i1 %2513, label %then396, label %else397
then396:
  %2514 = load %ASTNode, %ASTNode* %2505
  %2515 = call %nyx_string* @get_string_at(%ASTNode %2514, i64 0)
  %2516 = alloca %nyx_string*
  store %nyx_string* %2515, %nyx_string** %2516
  %2517 = load %ASTNode, %ASTNode* %2505
  %2518 = call %nyx_string* @get_string_at(%ASTNode %2517, i64 1)
  %2519 = alloca %nyx_string*
  store %nyx_string* %2518, %nyx_string** %2519
  %2520 = load %nyx_string*, %nyx_string** %2336
  %2521 = getelementptr [1 x i8], [1 x i8]* @.str343, i32 0, i32 0
  %2522 = call %nyx_string* @nyx_string_from_cstr(i8* %2521)
  %2523 = call i8* @nyx_string_to_cstr(%nyx_string* %2520)
  %2524 = call i8* @nyx_string_to_cstr(%nyx_string* %2522)
  %2525 = call i32 @strcmp(i8* %2523, i8* %2524)
  %2526 = icmp eq i32 %2525, 0
  br i1 %2526, label %then399, label %else400
then399:
  %2527 = load %nyx_string*, %nyx_string** %2516
  store %nyx_string* %2527, %nyx_string** %2336
  br label %merge401
else400:
  br label %merge401
merge401:
  %2528 = load { i64, i8* }*, { i64, i8* }** %2338
  %2529 = load %nyx_string*, %nyx_string** %2519
  %2530 = ptrtoint %nyx_string* %2529 to i64
  call void @nyx_array_push({ i64, i8* }* %2528, i64 %2530)
  br label %merge398
else397:
  br label %merge398
merge398:
  %2531 = load i64, i64* %2488
  %2532 = add i64 %2531, 1
  store i64 %2532, i64* %2488
  br label %while_cond393
while_end395:
  br label %merge392
else391:
  br label %merge392
merge392:
  br label %merge383
else382:
  br label %merge383
merge383:
  %2533 = load i64, i64* %2310
  %2534 = add i64 %2533, 1
  store i64 %2534, i64* %2310
  br label %while_cond360
while_end362:
  %2535 = load i1, i1* %2333
  br i1 %2535, label %then402, label %else403
then402:
  ret i1 1
else403:
  br label %merge404
merge404:
  %2536 = load %nyx_string*, %nyx_string** %2336
  %2537 = getelementptr [1 x i8], [1 x i8]* @.str344, i32 0, i32 0
  %2538 = call %nyx_string* @nyx_string_from_cstr(i8* %2537)
  %2539 = call i8* @nyx_string_to_cstr(%nyx_string* %2536)
  %2540 = call i8* @nyx_string_to_cstr(%nyx_string* %2538)
  %2541 = call i32 @strcmp(i8* %2539, i8* %2540)
  %2542 = icmp eq i32 %2541, 0
  br i1 %2542, label %then405, label %else406
then405:
  ret i1 1
else406:
  br label %merge407
merge407:
  %2543 = sub i64 0, 1
  %2544 = alloca i64
  store i64 %2543, i64* %2544
  store i64 0, i64* %2310
  br label %while_cond408
while_cond408:
  %2545 = load i64, i64* %2310
  %2546 = load i64, i64* @g_enum_reg_count
  %2547 = icmp slt i64 %2545, %2546
  br i1 %2547, label %while_body409, label %while_end410
while_body409:
  %2548 = load { i64, i8* }*, { i64, i8* }** @g_enum_reg_names
  %2549 = load i64, i64* %2310
  %2550 = call i64 @nyx_array_get({ i64, i8* }* %2548, i64 %2549)
  %2551 = inttoptr i64 %2550 to %nyx_string*
  %2552 = alloca %nyx_string*
  store %nyx_string* %2551, %nyx_string** %2552
  %2553 = load %nyx_string*, %nyx_string** %2552
  %2554 = load %nyx_string*, %nyx_string** %2336
  %2555 = call i8* @nyx_string_to_cstr(%nyx_string* %2553)
  %2556 = call i8* @nyx_string_to_cstr(%nyx_string* %2554)
  %2557 = call i32 @strcmp(i8* %2555, i8* %2556)
  %2558 = icmp eq i32 %2557, 0
  br i1 %2558, label %then411, label %else412
then411:
  %2559 = load i64, i64* %2310
  store i64 %2559, i64* %2544
  br label %merge413
else412:
  br label %merge413
merge413:
  %2560 = load i64, i64* %2310
  %2561 = add i64 %2560, 1
  store i64 %2561, i64* %2310
  br label %while_cond408
while_end410:
  %2562 = load i64, i64* %2544
  %2563 = sub i64 0, 1
  %2564 = icmp eq i64 %2562, %2563
  br i1 %2564, label %then414, label %else415
then414:
  ret i1 1
else415:
  br label %merge416
merge416:
  %2565 = load { i64, i8* }*, { i64, i8* }** @g_enum_reg_variants
  %2566 = load i64, i64* %2544
  %2567 = call i64 @nyx_array_get({ i64, i8* }* %2565, i64 %2566)
  %2568 = inttoptr i64 %2567 to { i64, i8* }*
  %2569 = alloca { i64, i8* }*
  store { i64, i8* }* %2568, { i64, i8* }** %2569
  %2570 = call { i64, i8* }* @nyx_array_new_ptr()
  %2571 = alloca { i64, i8* }*
  store { i64, i8* }* %2570, { i64, i8* }** %2571
  store i64 0, i64* %2310
  br label %while_cond417
while_cond417:
  %2572 = load i64, i64* %2310
  %2573 = load { i64, i8* }*, { i64, i8* }** %2569
  %2574 = call i64 @nyx_array_length({ i64, i8* }* %2573)
  %2575 = icmp slt i64 %2572, %2574
  br i1 %2575, label %while_body418, label %while_end419
while_body418:
  %2576 = load { i64, i8* }*, { i64, i8* }** %2569
  %2577 = load i64, i64* %2310
  %2578 = call i64 @nyx_array_get({ i64, i8* }* %2576, i64 %2577)
  %2579 = inttoptr i64 %2578 to %nyx_string*
  %2580 = alloca %nyx_string*
  store %nyx_string* %2579, %nyx_string** %2580
  %2581 = alloca i1
  store i1 0, i1* %2581
  %2582 = alloca i64
  store i64 0, i64* %2582
  br label %while_cond420
while_cond420:
  %2583 = load i64, i64* %2582
  %2584 = load { i64, i8* }*, { i64, i8* }** %2338
  %2585 = call i64 @nyx_array_length({ i64, i8* }* %2584)
  %2586 = icmp slt i64 %2583, %2585
  br i1 %2586, label %while_body421, label %while_end422
while_body421:
  %2587 = load { i64, i8* }*, { i64, i8* }** %2338
  %2588 = load i64, i64* %2582
  %2589 = call i64 @nyx_array_get({ i64, i8* }* %2587, i64 %2588)
  %2590 = inttoptr i64 %2589 to %nyx_string*
  %2591 = alloca %nyx_string*
  store %nyx_string* %2590, %nyx_string** %2591
  %2592 = load %nyx_string*, %nyx_string** %2591
  %2593 = load %nyx_string*, %nyx_string** %2580
  %2594 = call i8* @nyx_string_to_cstr(%nyx_string* %2592)
  %2595 = call i8* @nyx_string_to_cstr(%nyx_string* %2593)
  %2596 = call i32 @strcmp(i8* %2594, i8* %2595)
  %2597 = icmp eq i32 %2596, 0
  br i1 %2597, label %then423, label %else424
then423:
  store i1 1, i1* %2581
  br label %merge425
else424:
  br label %merge425
merge425:
  %2598 = load i64, i64* %2582
  %2599 = add i64 %2598, 1
  store i64 %2599, i64* %2582
  br label %while_cond420
while_end422:
  %2600 = load i1, i1* %2581
  %2601 = xor i1 %2600, true
  br i1 %2601, label %then426, label %else427
then426:
  %2602 = load { i64, i8* }*, { i64, i8* }** %2571
  %2603 = load %nyx_string*, %nyx_string** %2580
  %2604 = ptrtoint %nyx_string* %2603 to i64
  call void @nyx_array_push({ i64, i8* }* %2602, i64 %2604)
  br label %merge428
else427:
  br label %merge428
merge428:
  %2605 = load i64, i64* %2310
  %2606 = add i64 %2605, 1
  store i64 %2606, i64* %2310
  br label %while_cond417
while_end419:
  %2607 = load { i64, i8* }*, { i64, i8* }** %2571
  %2608 = call i64 @nyx_array_length({ i64, i8* }* %2607)
  %2609 = icmp sgt i64 %2608, 0
  br i1 %2609, label %then429, label %else430
then429:
  %2610 = getelementptr [28 x i8], [28 x i8]* @.str345, i32 0, i32 0
  %2611 = call %nyx_string* @nyx_string_from_cstr(i8* %2610)
  %2612 = load %nyx_string*, %nyx_string** %2336
  %2613 = call %nyx_string* @nyx_string_concat(%nyx_string* %2611, %nyx_string* %2612)
  %2614 = getelementptr [9 x i8], [9 x i8]* @.str346, i32 0, i32 0
  %2615 = call %nyx_string* @nyx_string_from_cstr(i8* %2614)
  %2616 = call %nyx_string* @nyx_string_concat(%nyx_string* %2613, %nyx_string* %2615)
  %2617 = alloca %nyx_string*
  store %nyx_string* %2616, %nyx_string** %2617
  %2618 = load { i64, i8* }*, { i64, i8* }** %2571
  %2619 = call i64 @nyx_array_length({ i64, i8* }* %2618)
  %2620 = icmp sgt i64 %2619, 1
  br i1 %2620, label %then432, label %else433
then432:
  %2621 = load %nyx_string*, %nyx_string** %2617
  %2622 = getelementptr [2 x i8], [2 x i8]* @.str347, i32 0, i32 0
  %2623 = call %nyx_string* @nyx_string_from_cstr(i8* %2622)
  %2624 = call %nyx_string* @nyx_string_concat(%nyx_string* %2621, %nyx_string* %2623)
  store %nyx_string* %2624, %nyx_string** %2617
  br label %merge434
else433:
  br label %merge434
merge434:
  store i64 0, i64* %2310
  br label %while_cond435
while_cond435:
  %2625 = load i64, i64* %2310
  %2626 = load { i64, i8* }*, { i64, i8* }** %2571
  %2627 = call i64 @nyx_array_length({ i64, i8* }* %2626)
  %2628 = icmp slt i64 %2625, %2627
  br i1 %2628, label %while_body436, label %while_end437
while_body436:
  %2629 = load { i64, i8* }*, { i64, i8* }** %2571
  %2630 = load i64, i64* %2310
  %2631 = call i64 @nyx_array_get({ i64, i8* }* %2629, i64 %2630)
  %2632 = inttoptr i64 %2631 to %nyx_string*
  %2633 = alloca %nyx_string*
  store %nyx_string* %2632, %nyx_string** %2633
  %2634 = load i64, i64* %2310
  %2635 = icmp sgt i64 %2634, 0
  br i1 %2635, label %then438, label %else439
then438:
  %2636 = load %nyx_string*, %nyx_string** %2617
  %2637 = getelementptr [2 x i8], [2 x i8]* @.str348, i32 0, i32 0
  %2638 = call %nyx_string* @nyx_string_from_cstr(i8* %2637)
  %2639 = call %nyx_string* @nyx_string_concat(%nyx_string* %2636, %nyx_string* %2638)
  store %nyx_string* %2639, %nyx_string** %2617
  br label %merge440
else439:
  br label %merge440
merge440:
  %2640 = load %nyx_string*, %nyx_string** %2617
  %2641 = getelementptr [2 x i8], [2 x i8]* @.str349, i32 0, i32 0
  %2642 = call %nyx_string* @nyx_string_from_cstr(i8* %2641)
  %2643 = call %nyx_string* @nyx_string_concat(%nyx_string* %2640, %nyx_string* %2642)
  %2644 = load %nyx_string*, %nyx_string** %2336
  %2645 = call %nyx_string* @nyx_string_concat(%nyx_string* %2643, %nyx_string* %2644)
  %2646 = getelementptr [2 x i8], [2 x i8]* @.str350, i32 0, i32 0
  %2647 = call %nyx_string* @nyx_string_from_cstr(i8* %2646)
  %2648 = call %nyx_string* @nyx_string_concat(%nyx_string* %2645, %nyx_string* %2647)
  %2649 = load %nyx_string*, %nyx_string** %2633
  %2650 = call %nyx_string* @nyx_string_concat(%nyx_string* %2648, %nyx_string* %2649)
  store %nyx_string* %2650, %nyx_string** %2617
  %2651 = load i64, i64* %2310
  %2652 = add i64 %2651, 1
  store i64 %2652, i64* %2310
  br label %while_cond435
while_end437:
  %2653 = load %nyx_string*, %nyx_string** %2617
  %2654 = call i64 @sem_error(%nyx_string* %2653)
  ret i1 0
else430:
  br label %merge431
merge431:
  ret i1 1
}

define internal i1 @validate_match_arm(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %2655 = load %ASTNode, %ASTNode* %node.ptr
  %2656 = call %ASTNode @get_node_at(%ASTNode %2655, i64 0)
  %2657 = alloca %ASTNode
  store %ASTNode %2656, %ASTNode* %2657
  %2658 = load %ASTNode, %ASTNode* %node.ptr
  %2659 = call %ASTNode @get_node_at(%ASTNode %2658, i64 1)
  %2660 = alloca %ASTNode
  store %ASTNode %2659, %ASTNode* %2660
  %2661 = call i64 @scope_push()
  %2662 = getelementptr %ASTNode, %ASTNode* %2657, i32 0, i32 0
  %2663 = load %nyx_string*, %nyx_string** %2662
  %2664 = getelementptr [14 x i8], [14 x i8]* @.str351, i32 0, i32 0
  %2665 = call %nyx_string* @nyx_string_from_cstr(i8* %2664)
  %2666 = call i8* @nyx_string_to_cstr(%nyx_string* %2663)
  %2667 = call i8* @nyx_string_to_cstr(%nyx_string* %2665)
  %2668 = call i32 @strcmp(i8* %2666, i8* %2667)
  %2669 = icmp eq i32 %2668, 0
  br i1 %2669, label %then441, label %else442
then441:
  %2670 = load %ASTNode, %ASTNode* %2657
  %2671 = call { i64, i8* }* @get_array_at(%ASTNode %2670, i64 2)
  %2672 = alloca { i64, i8* }*
  store { i64, i8* }* %2671, { i64, i8* }** %2672
  %2673 = alloca i64
  store i64 0, i64* %2673
  br label %while_cond444
while_cond444:
  %2674 = load i64, i64* %2673
  %2675 = load { i64, i8* }*, { i64, i8* }** %2672
  %2676 = call i64 @nyx_array_length({ i64, i8* }* %2675)
  %2677 = icmp slt i64 %2674, %2676
  br i1 %2677, label %while_body445, label %while_end446
while_body445:
  %2678 = load { i64, i8* }*, { i64, i8* }** %2672
  %2679 = load i64, i64* %2673
  %2680 = call i64 @nyx_array_get({ i64, i8* }* %2678, i64 %2679)
  %2681 = inttoptr i64 %2680 to %nyx_string*
  %2682 = alloca %nyx_string*
  store %nyx_string* %2681, %nyx_string** %2682
  %2683 = load %nyx_string*, %nyx_string** %2682
  %2684 = getelementptr [4 x i8], [4 x i8]* @.str352, i32 0, i32 0
  %2685 = call %nyx_string* @nyx_string_from_cstr(i8* %2684)
  %2686 = call i64 @scope_declare(%nyx_string* %2683, %nyx_string* %2685)
  %2687 = load i64, i64* %2673
  %2688 = add i64 %2687, 1
  store i64 %2688, i64* %2673
  br label %while_cond444
while_end446:
  br label %merge443
else442:
  br label %merge443
merge443:
  %2689 = getelementptr %ASTNode, %ASTNode* %2657, i32 0, i32 0
  %2690 = load %nyx_string*, %nyx_string** %2689
  %2691 = getelementptr [19 x i8], [19 x i8]* @.str353, i32 0, i32 0
  %2692 = call %nyx_string* @nyx_string_from_cstr(i8* %2691)
  %2693 = call i8* @nyx_string_to_cstr(%nyx_string* %2690)
  %2694 = call i8* @nyx_string_to_cstr(%nyx_string* %2692)
  %2695 = call i32 @strcmp(i8* %2693, i8* %2694)
  %2696 = icmp eq i32 %2695, 0
  br i1 %2696, label %then447, label %else448
then447:
  %2697 = load %ASTNode, %ASTNode* %2657
  %2698 = call %nyx_string* @get_string_at(%ASTNode %2697, i64 0)
  %2699 = alloca %nyx_string*
  store %nyx_string* %2698, %nyx_string** %2699
  %2700 = load %nyx_string*, %nyx_string** %2699
  %2701 = getelementptr [4 x i8], [4 x i8]* @.str354, i32 0, i32 0
  %2702 = call %nyx_string* @nyx_string_from_cstr(i8* %2701)
  %2703 = call i64 @scope_declare(%nyx_string* %2700, %nyx_string* %2702)
  br label %merge449
else448:
  br label %merge449
merge449:
  %2704 = getelementptr %ASTNode, %ASTNode* %2657, i32 0, i32 0
  %2705 = load %nyx_string*, %nyx_string** %2704
  %2706 = getelementptr [15 x i8], [15 x i8]* @.str355, i32 0, i32 0
  %2707 = call %nyx_string* @nyx_string_from_cstr(i8* %2706)
  %2708 = call i8* @nyx_string_to_cstr(%nyx_string* %2705)
  %2709 = call i8* @nyx_string_to_cstr(%nyx_string* %2707)
  %2710 = call i32 @strcmp(i8* %2708, i8* %2709)
  %2711 = icmp eq i32 %2710, 0
  br i1 %2711, label %then450, label %else451
then450:
  %2712 = load %ASTNode, %ASTNode* %2657
  %2713 = call { i64, i8* }* @get_array_at(%ASTNode %2712, i64 1)
  %2714 = alloca { i64, i8* }*
  store { i64, i8* }* %2713, { i64, i8* }** %2714
  %2715 = alloca i64
  store i64 0, i64* %2715
  br label %while_cond453
while_cond453:
  %2716 = load i64, i64* %2715
  %2717 = load { i64, i8* }*, { i64, i8* }** %2714
  %2718 = call i64 @nyx_array_length({ i64, i8* }* %2717)
  %2719 = icmp slt i64 %2716, %2718
  br i1 %2719, label %while_body454, label %while_end455
while_body454:
  %2720 = load { i64, i8* }*, { i64, i8* }** %2714
  %2721 = load i64, i64* %2715
  %2722 = call i64 @nyx_array_get({ i64, i8* }* %2720, i64 %2721)
  %2723 = inttoptr i64 %2722 to { i64, i8* }*
  %2724 = alloca { i64, i8* }*
  store { i64, i8* }* %2723, { i64, i8* }** %2724
  %2725 = load { i64, i8* }*, { i64, i8* }** %2724
  %2726 = call i64 @nyx_array_get({ i64, i8* }* %2725, i64 1)
  %2727 = inttoptr i64 %2726 to %nyx_string*
  %2728 = alloca %nyx_string*
  store %nyx_string* %2727, %nyx_string** %2728
  %2729 = load %nyx_string*, %nyx_string** %2728
  %2730 = getelementptr [4 x i8], [4 x i8]* @.str356, i32 0, i32 0
  %2731 = call %nyx_string* @nyx_string_from_cstr(i8* %2730)
  %2732 = call i64 @scope_declare(%nyx_string* %2729, %nyx_string* %2731)
  %2733 = load i64, i64* %2715
  %2734 = add i64 %2733, 1
  store i64 %2734, i64* %2715
  br label %while_cond453
while_end455:
  br label %merge452
else451:
  br label %merge452
merge452:
  %2735 = getelementptr %ASTNode, %ASTNode* %2657, i32 0, i32 0
  %2736 = load %nyx_string*, %nyx_string** %2735
  %2737 = getelementptr [21 x i8], [21 x i8]* @.str357, i32 0, i32 0
  %2738 = call %nyx_string* @nyx_string_from_cstr(i8* %2737)
  %2739 = call i8* @nyx_string_to_cstr(%nyx_string* %2736)
  %2740 = call i8* @nyx_string_to_cstr(%nyx_string* %2738)
  %2741 = call i32 @strcmp(i8* %2739, i8* %2740)
  %2742 = icmp eq i32 %2741, 0
  br i1 %2742, label %then456, label %else457
then456:
  %2743 = load %ASTNode, %ASTNode* %2657
  %2744 = call { i64, i8* }* @get_array_at(%ASTNode %2743, i64 2)
  %2745 = alloca { i64, i8* }*
  store { i64, i8* }* %2744, { i64, i8* }** %2745
  %2746 = alloca i64
  store i64 0, i64* %2746
  br label %while_cond459
while_cond459:
  %2747 = load i64, i64* %2746
  %2748 = load { i64, i8* }*, { i64, i8* }** %2745
  %2749 = call i64 @nyx_array_length({ i64, i8* }* %2748)
  %2750 = icmp slt i64 %2747, %2749
  br i1 %2750, label %while_body460, label %while_end461
while_body460:
  %2751 = load { i64, i8* }*, { i64, i8* }** %2745
  %2752 = load i64, i64* %2746
  %2753 = call i64 @nyx_array_get({ i64, i8* }* %2751, i64 %2752)
  %2754 = inttoptr i64 %2753 to { i64, i8* }*
  %2755 = call i64 @nyx_array_get({ i64, i8* }* %2754, i64 0)
  %2756 = call i64 @nyx_array_get({ i64, i8* }* %2754, i64 1)
  %2757 = inttoptr i64 %2755 to %nyx_string*
  %2758 = inttoptr i64 %2756 to { i64, i8* }*
  %2759 = alloca %ASTNode
  %2760 = getelementptr inbounds %ASTNode, %ASTNode* %2759, i32 0, i32 0
  store %nyx_string* %2757, %nyx_string** %2760
  %2761 = getelementptr inbounds %ASTNode, %ASTNode* %2759, i32 0, i32 1
  store { i64, i8* }* %2758, { i64, i8* }** %2761
  %2762 = load %ASTNode, %ASTNode* %2759
  %2763 = alloca %ASTNode
  store %ASTNode %2762, %ASTNode* %2763
  %2764 = getelementptr %ASTNode, %ASTNode* %2763, i32 0, i32 0
  %2765 = load %nyx_string*, %nyx_string** %2764
  %2766 = getelementptr [19 x i8], [19 x i8]* @.str358, i32 0, i32 0
  %2767 = call %nyx_string* @nyx_string_from_cstr(i8* %2766)
  %2768 = call i8* @nyx_string_to_cstr(%nyx_string* %2765)
  %2769 = call i8* @nyx_string_to_cstr(%nyx_string* %2767)
  %2770 = call i32 @strcmp(i8* %2768, i8* %2769)
  %2771 = icmp eq i32 %2770, 0
  br i1 %2771, label %then462, label %else463
then462:
  %2772 = load %ASTNode, %ASTNode* %2763
  %2773 = call %nyx_string* @get_string_at(%ASTNode %2772, i64 0)
  %2774 = alloca %nyx_string*
  store %nyx_string* %2773, %nyx_string** %2774
  %2775 = load %nyx_string*, %nyx_string** %2774
  %2776 = getelementptr [4 x i8], [4 x i8]* @.str359, i32 0, i32 0
  %2777 = call %nyx_string* @nyx_string_from_cstr(i8* %2776)
  %2778 = call i64 @scope_declare(%nyx_string* %2775, %nyx_string* %2777)
  br label %merge464
else463:
  br label %merge464
merge464:
  %2779 = getelementptr %ASTNode, %ASTNode* %2763, i32 0, i32 0
  %2780 = load %nyx_string*, %nyx_string** %2779
  %2781 = getelementptr [14 x i8], [14 x i8]* @.str360, i32 0, i32 0
  %2782 = call %nyx_string* @nyx_string_from_cstr(i8* %2781)
  %2783 = call i8* @nyx_string_to_cstr(%nyx_string* %2780)
  %2784 = call i8* @nyx_string_to_cstr(%nyx_string* %2782)
  %2785 = call i32 @strcmp(i8* %2783, i8* %2784)
  %2786 = icmp eq i32 %2785, 0
  br i1 %2786, label %then465, label %else466
then465:
  %2787 = load %ASTNode, %ASTNode* %2763
  %2788 = call { i64, i8* }* @get_array_at(%ASTNode %2787, i64 2)
  %2789 = alloca { i64, i8* }*
  store { i64, i8* }* %2788, { i64, i8* }** %2789
  %2790 = alloca i64
  store i64 0, i64* %2790
  br label %while_cond468
while_cond468:
  %2791 = load i64, i64* %2790
  %2792 = load { i64, i8* }*, { i64, i8* }** %2789
  %2793 = call i64 @nyx_array_length({ i64, i8* }* %2792)
  %2794 = icmp slt i64 %2791, %2793
  br i1 %2794, label %while_body469, label %while_end470
while_body469:
  %2795 = load { i64, i8* }*, { i64, i8* }** %2789
  %2796 = load i64, i64* %2790
  %2797 = call i64 @nyx_array_get({ i64, i8* }* %2795, i64 %2796)
  %2798 = inttoptr i64 %2797 to %nyx_string*
  %2799 = alloca %nyx_string*
  store %nyx_string* %2798, %nyx_string** %2799
  %2800 = load %nyx_string*, %nyx_string** %2799
  %2801 = getelementptr [4 x i8], [4 x i8]* @.str361, i32 0, i32 0
  %2802 = call %nyx_string* @nyx_string_from_cstr(i8* %2801)
  %2803 = call i64 @scope_declare(%nyx_string* %2800, %nyx_string* %2802)
  %2804 = load i64, i64* %2790
  %2805 = add i64 %2804, 1
  store i64 %2805, i64* %2790
  br label %while_cond468
while_end470:
  br label %merge467
else466:
  br label %merge467
merge467:
  %2806 = load i64, i64* %2746
  %2807 = add i64 %2806, 1
  store i64 %2807, i64* %2746
  br label %while_cond459
while_end461:
  br label %merge458
else457:
  br label %merge458
merge458:
  %2808 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %2809 = load { i64, i8* }*, { i64, i8* }** %2808
  %2810 = alloca { i64, i8* }*
  store { i64, i8* }* %2809, { i64, i8* }** %2810
  %2811 = load { i64, i8* }*, { i64, i8* }** %2810
  %2812 = call i64 @nyx_array_length({ i64, i8* }* %2811)
  %2813 = icmp sgt i64 %2812, 2
  br i1 %2813, label %then471, label %else472
then471:
  %2814 = load { i64, i8* }*, { i64, i8* }** %2810
  %2815 = call i64 @nyx_array_get({ i64, i8* }* %2814, i64 2)
  %2816 = inttoptr i64 %2815 to { i64, i8* }*
  %2817 = call i64 @nyx_array_get({ i64, i8* }* %2816, i64 0)
  %2818 = call i64 @nyx_array_get({ i64, i8* }* %2816, i64 1)
  %2819 = inttoptr i64 %2817 to %nyx_string*
  %2820 = inttoptr i64 %2818 to { i64, i8* }*
  %2821 = alloca %ASTNode
  %2822 = getelementptr inbounds %ASTNode, %ASTNode* %2821, i32 0, i32 0
  store %nyx_string* %2819, %nyx_string** %2822
  %2823 = getelementptr inbounds %ASTNode, %ASTNode* %2821, i32 0, i32 1
  store { i64, i8* }* %2820, { i64, i8* }** %2823
  %2824 = load %ASTNode, %ASTNode* %2821
  %2825 = alloca %ASTNode
  store %ASTNode %2824, %ASTNode* %2825
  %2826 = getelementptr %ASTNode, %ASTNode* %2825, i32 0, i32 0
  %2827 = load %nyx_string*, %nyx_string** %2826
  %2828 = getelementptr [6 x i8], [6 x i8]* @.str362, i32 0, i32 0
  %2829 = call %nyx_string* @nyx_string_from_cstr(i8* %2828)
  %2830 = call i8* @nyx_string_to_cstr(%nyx_string* %2827)
  %2831 = call i8* @nyx_string_to_cstr(%nyx_string* %2829)
  %2832 = call i32 @strcmp(i8* %2830, i8* %2831)
  %2833 = icmp ne i32 %2832, 0
  br i1 %2833, label %then474, label %else475
then474:
  %2834 = load %ASTNode, %ASTNode* %2825
  %2835 = call i1 @validate_node(%ASTNode %2834)
  %2836 = xor i1 %2835, true
  br i1 %2836, label %then477, label %else478
then477:
  %2837 = call i64 @scope_pop()
  ret i1 0
else478:
  br label %merge479
merge479:
  br label %merge476
else475:
  br label %merge476
merge476:
  br label %merge473
else472:
  br label %merge473
merge473:
  %2838 = load %ASTNode, %ASTNode* %2660
  %2839 = call i1 @validate_node(%ASTNode %2838)
  %2840 = alloca i1
  store i1 %2839, i1* %2840
  %2841 = call i64 @scope_pop()
  %2842 = load i1, i1* %2840
  ret i1 %2842
}

define internal i1 @validate_impl(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %2843 = load %ASTNode, %ASTNode* %node.ptr
  %2844 = call { i64, i8* }* @get_array_at(%ASTNode %2843, i64 1)
  %2845 = alloca { i64, i8* }*
  store { i64, i8* }* %2844, { i64, i8* }** %2845
  %2846 = alloca i64
  store i64 0, i64* %2846
  br label %while_cond480
while_cond480:
  %2847 = load i64, i64* %2846
  %2848 = load { i64, i8* }*, { i64, i8* }** %2845
  %2849 = call i64 @nyx_array_length({ i64, i8* }* %2848)
  %2850 = icmp slt i64 %2847, %2849
  br i1 %2850, label %while_body481, label %while_end482
while_body481:
  %2851 = load { i64, i8* }*, { i64, i8* }** %2845
  %2852 = load i64, i64* %2846
  %2853 = call i64 @nyx_array_get({ i64, i8* }* %2851, i64 %2852)
  %2854 = inttoptr i64 %2853 to { i64, i8* }*
  %2855 = call i64 @nyx_array_get({ i64, i8* }* %2854, i64 0)
  %2856 = call i64 @nyx_array_get({ i64, i8* }* %2854, i64 1)
  %2857 = inttoptr i64 %2855 to %nyx_string*
  %2858 = inttoptr i64 %2856 to { i64, i8* }*
  %2859 = alloca %ASTNode
  %2860 = getelementptr inbounds %ASTNode, %ASTNode* %2859, i32 0, i32 0
  store %nyx_string* %2857, %nyx_string** %2860
  %2861 = getelementptr inbounds %ASTNode, %ASTNode* %2859, i32 0, i32 1
  store { i64, i8* }* %2858, { i64, i8* }** %2861
  %2862 = load %ASTNode, %ASTNode* %2859
  %2863 = alloca %ASTNode
  store %ASTNode %2862, %ASTNode* %2863
  %2864 = load %ASTNode, %ASTNode* %2863
  %2865 = call i1 @validate_node(%ASTNode %2864)
  %2866 = xor i1 %2865, true
  br i1 %2866, label %then483, label %else484
then483:
  ret i1 0
else484:
  br label %merge485
merge485:
  %2867 = load i64, i64* %2846
  %2868 = add i64 %2867, 1
  store i64 %2868, i64* %2846
  br label %while_cond480
while_end482:
  ret i1 1
}

define internal i1 @validate_impl_trait(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %2869 = load %ASTNode, %ASTNode* %node.ptr
  %2870 = call { i64, i8* }* @get_array_at(%ASTNode %2869, i64 2)
  %2871 = alloca { i64, i8* }*
  store { i64, i8* }* %2870, { i64, i8* }** %2871
  %2872 = alloca i64
  store i64 0, i64* %2872
  br label %while_cond486
while_cond486:
  %2873 = load i64, i64* %2872
  %2874 = load { i64, i8* }*, { i64, i8* }** %2871
  %2875 = call i64 @nyx_array_length({ i64, i8* }* %2874)
  %2876 = icmp slt i64 %2873, %2875
  br i1 %2876, label %while_body487, label %while_end488
while_body487:
  %2877 = load { i64, i8* }*, { i64, i8* }** %2871
  %2878 = load i64, i64* %2872
  %2879 = call i64 @nyx_array_get({ i64, i8* }* %2877, i64 %2878)
  %2880 = inttoptr i64 %2879 to { i64, i8* }*
  %2881 = call i64 @nyx_array_get({ i64, i8* }* %2880, i64 0)
  %2882 = call i64 @nyx_array_get({ i64, i8* }* %2880, i64 1)
  %2883 = inttoptr i64 %2881 to %nyx_string*
  %2884 = inttoptr i64 %2882 to { i64, i8* }*
  %2885 = alloca %ASTNode
  %2886 = getelementptr inbounds %ASTNode, %ASTNode* %2885, i32 0, i32 0
  store %nyx_string* %2883, %nyx_string** %2886
  %2887 = getelementptr inbounds %ASTNode, %ASTNode* %2885, i32 0, i32 1
  store { i64, i8* }* %2884, { i64, i8* }** %2887
  %2888 = load %ASTNode, %ASTNode* %2885
  %2889 = alloca %ASTNode
  store %ASTNode %2888, %ASTNode* %2889
  %2890 = load %ASTNode, %ASTNode* %2889
  %2891 = call i1 @validate_node(%ASTNode %2890)
  %2892 = xor i1 %2891, true
  br i1 %2892, label %then489, label %else490
then489:
  ret i1 0
else490:
  br label %merge491
merge491:
  %2893 = load i64, i64* %2872
  %2894 = add i64 %2893, 1
  store i64 %2894, i64* %2872
  br label %while_cond486
while_end488:
  ret i1 1
}

define internal i1 @validate_export(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %2895 = load %ASTNode, %ASTNode* %node.ptr
  %2896 = call %ASTNode @get_node_at(%ASTNode %2895, i64 0)
  %2897 = alloca %ASTNode
  store %ASTNode %2896, %ASTNode* %2897
  %2898 = load %ASTNode, %ASTNode* %2897
  %2899 = call i1 @validate_node(%ASTNode %2898)
  ret i1 %2899
}

define internal i1 @validate_range(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %2900 = load %ASTNode, %ASTNode* %node.ptr
  %2901 = call %ASTNode @get_node_at(%ASTNode %2900, i64 0)
  %2902 = alloca %ASTNode
  store %ASTNode %2901, %ASTNode* %2902
  %2903 = load %ASTNode, %ASTNode* %node.ptr
  %2904 = call %ASTNode @get_node_at(%ASTNode %2903, i64 1)
  %2905 = alloca %ASTNode
  store %ASTNode %2904, %ASTNode* %2905
  %2906 = load %ASTNode, %ASTNode* %2902
  %2907 = call i1 @validate_node(%ASTNode %2906)
  %2908 = xor i1 %2907, true
  br i1 %2908, label %then492, label %else493
then492:
  ret i1 0
else493:
  br label %merge494
merge494:
  %2909 = load %ASTNode, %ASTNode* %2905
  %2910 = call i1 @validate_node(%ASTNode %2909)
  ret i1 %2910
}

define internal i1 @validate_node(
%ASTNode %node.param) {
  %node.ptr = alloca %ASTNode
  store %ASTNode %node.param, %ASTNode* %node.ptr
  %2911 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 0
  %2912 = load %nyx_string*, %nyx_string** %2911
  %2913 = alloca %nyx_string*
  store %nyx_string* %2912, %nyx_string** %2913
  %2914 = load %nyx_string*, %nyx_string** %2913
  %2915 = getelementptr [7 x i8], [7 x i8]* @.str363, i32 0, i32 0
  %2916 = call %nyx_string* @nyx_string_from_cstr(i8* %2915)
  %2917 = call i8* @nyx_string_to_cstr(%nyx_string* %2914)
  %2918 = call i8* @nyx_string_to_cstr(%nyx_string* %2916)
  %2919 = call i32 @strcmp(i8* %2917, i8* %2918)
  %2920 = icmp eq i32 %2919, 0
  br i1 %2920, label %then495, label %else496
then495:
  ret i1 1
else496:
  br label %merge497
merge497:
  %2921 = load %nyx_string*, %nyx_string** %2913
  %2922 = getelementptr [10 x i8], [10 x i8]* @.str364, i32 0, i32 0
  %2923 = call %nyx_string* @nyx_string_from_cstr(i8* %2922)
  %2924 = call i8* @nyx_string_to_cstr(%nyx_string* %2921)
  %2925 = call i8* @nyx_string_to_cstr(%nyx_string* %2923)
  %2926 = call i32 @strcmp(i8* %2924, i8* %2925)
  %2927 = icmp eq i32 %2926, 0
  br i1 %2927, label %then498, label %else499
then498:
  ret i1 1
else499:
  br label %merge500
merge500:
  %2928 = load %nyx_string*, %nyx_string** %2913
  %2929 = getelementptr [7 x i8], [7 x i8]* @.str365, i32 0, i32 0
  %2930 = call %nyx_string* @nyx_string_from_cstr(i8* %2929)
  %2931 = call i8* @nyx_string_to_cstr(%nyx_string* %2928)
  %2932 = call i8* @nyx_string_to_cstr(%nyx_string* %2930)
  %2933 = call i32 @strcmp(i8* %2931, i8* %2932)
  %2934 = icmp eq i32 %2933, 0
  br i1 %2934, label %then501, label %else502
then501:
  ret i1 1
else502:
  br label %merge503
merge503:
  %2935 = load %nyx_string*, %nyx_string** %2913
  %2936 = getelementptr [5 x i8], [5 x i8]* @.str366, i32 0, i32 0
  %2937 = call %nyx_string* @nyx_string_from_cstr(i8* %2936)
  %2938 = call i8* @nyx_string_to_cstr(%nyx_string* %2935)
  %2939 = call i8* @nyx_string_to_cstr(%nyx_string* %2937)
  %2940 = call i32 @strcmp(i8* %2938, i8* %2939)
  %2941 = icmp eq i32 %2940, 0
  br i1 %2941, label %then504, label %else505
then504:
  ret i1 1
else505:
  br label %merge506
merge506:
  %2942 = load %nyx_string*, %nyx_string** %2913
  %2943 = getelementptr [5 x i8], [5 x i8]* @.str367, i32 0, i32 0
  %2944 = call %nyx_string* @nyx_string_from_cstr(i8* %2943)
  %2945 = call i8* @nyx_string_to_cstr(%nyx_string* %2942)
  %2946 = call i8* @nyx_string_to_cstr(%nyx_string* %2944)
  %2947 = call i32 @strcmp(i8* %2945, i8* %2946)
  %2948 = icmp eq i32 %2947, 0
  br i1 %2948, label %then507, label %else508
then507:
  ret i1 1
else508:
  br label %merge509
merge509:
  %2949 = load %nyx_string*, %nyx_string** %2913
  %2950 = getelementptr [11 x i8], [11 x i8]* @.str368, i32 0, i32 0
  %2951 = call %nyx_string* @nyx_string_from_cstr(i8* %2950)
  %2952 = call i8* @nyx_string_to_cstr(%nyx_string* %2949)
  %2953 = call i8* @nyx_string_to_cstr(%nyx_string* %2951)
  %2954 = call i32 @strcmp(i8* %2952, i8* %2953)
  %2955 = icmp eq i32 %2954, 0
  br i1 %2955, label %then510, label %else511
then510:
  %2956 = load %ASTNode, %ASTNode* %node.ptr
  %2957 = call i1 @validate_identifier(%ASTNode %2956)
  ret i1 %2957
else511:
  br label %merge512
merge512:
  %2958 = load %nyx_string*, %nyx_string** %2913
  %2959 = getelementptr [6 x i8], [6 x i8]* @.str369, i32 0, i32 0
  %2960 = call %nyx_string* @nyx_string_from_cstr(i8* %2959)
  %2961 = call i8* @nyx_string_to_cstr(%nyx_string* %2958)
  %2962 = call i8* @nyx_string_to_cstr(%nyx_string* %2960)
  %2963 = call i32 @strcmp(i8* %2961, i8* %2962)
  %2964 = icmp eq i32 %2963, 0
  br i1 %2964, label %then513, label %else514
then513:
  ret i1 1
else514:
  br label %merge515
merge515:
  %2965 = load %nyx_string*, %nyx_string** %2913
  %2966 = getelementptr [6 x i8], [6 x i8]* @.str370, i32 0, i32 0
  %2967 = call %nyx_string* @nyx_string_from_cstr(i8* %2966)
  %2968 = call i8* @nyx_string_to_cstr(%nyx_string* %2965)
  %2969 = call i8* @nyx_string_to_cstr(%nyx_string* %2967)
  %2970 = call i32 @strcmp(i8* %2968, i8* %2969)
  %2971 = icmp eq i32 %2970, 0
  br i1 %2971, label %then516, label %else517
then516:
  ret i1 1
else517:
  br label %merge518
merge518:
  %2972 = load %nyx_string*, %nyx_string** %2913
  %2973 = getelementptr [9 x i8], [9 x i8]* @.str371, i32 0, i32 0
  %2974 = call %nyx_string* @nyx_string_from_cstr(i8* %2973)
  %2975 = call i8* @nyx_string_to_cstr(%nyx_string* %2972)
  %2976 = call i8* @nyx_string_to_cstr(%nyx_string* %2974)
  %2977 = call i32 @strcmp(i8* %2975, i8* %2976)
  %2978 = icmp eq i32 %2977, 0
  br i1 %2978, label %then519, label %else520
then519:
  ret i1 1
else520:
  br label %merge521
merge521:
  %2979 = load %nyx_string*, %nyx_string** %2913
  %2980 = getelementptr [6 x i8], [6 x i8]* @.str372, i32 0, i32 0
  %2981 = call %nyx_string* @nyx_string_from_cstr(i8* %2980)
  %2982 = call i8* @nyx_string_to_cstr(%nyx_string* %2979)
  %2983 = call i8* @nyx_string_to_cstr(%nyx_string* %2981)
  %2984 = call i32 @strcmp(i8* %2982, i8* %2983)
  %2985 = icmp eq i32 %2984, 0
  br i1 %2985, label %then522, label %else523
then522:
  %2986 = load %ASTNode, %ASTNode* %node.ptr
  %2987 = call i1 @validate_block(%ASTNode %2986)
  ret i1 %2987
else523:
  br label %merge524
merge524:
  %2988 = load %nyx_string*, %nyx_string** %2913
  %2989 = getelementptr [3 x i8], [3 x i8]* @.str373, i32 0, i32 0
  %2990 = call %nyx_string* @nyx_string_from_cstr(i8* %2989)
  %2991 = call i8* @nyx_string_to_cstr(%nyx_string* %2988)
  %2992 = call i8* @nyx_string_to_cstr(%nyx_string* %2990)
  %2993 = call i32 @strcmp(i8* %2991, i8* %2992)
  %2994 = icmp eq i32 %2993, 0
  br i1 %2994, label %then525, label %else526
then525:
  %2995 = load %ASTNode, %ASTNode* %node.ptr
  %2996 = call i1 @validate_if(%ASTNode %2995)
  ret i1 %2996
else526:
  br label %merge527
merge527:
  %2997 = load %nyx_string*, %nyx_string** %2913
  %2998 = getelementptr [6 x i8], [6 x i8]* @.str374, i32 0, i32 0
  %2999 = call %nyx_string* @nyx_string_from_cstr(i8* %2998)
  %3000 = call i8* @nyx_string_to_cstr(%nyx_string* %2997)
  %3001 = call i8* @nyx_string_to_cstr(%nyx_string* %2999)
  %3002 = call i32 @strcmp(i8* %3000, i8* %3001)
  %3003 = icmp eq i32 %3002, 0
  br i1 %3003, label %then528, label %else529
then528:
  %3004 = load %ASTNode, %ASTNode* %node.ptr
  %3005 = call i1 @validate_while(%ASTNode %3004)
  ret i1 %3005
else529:
  br label %merge530
merge530:
  %3006 = load %nyx_string*, %nyx_string** %2913
  %3007 = getelementptr [4 x i8], [4 x i8]* @.str375, i32 0, i32 0
  %3008 = call %nyx_string* @nyx_string_from_cstr(i8* %3007)
  %3009 = call i8* @nyx_string_to_cstr(%nyx_string* %3006)
  %3010 = call i8* @nyx_string_to_cstr(%nyx_string* %3008)
  %3011 = call i32 @strcmp(i8* %3009, i8* %3010)
  %3012 = icmp eq i32 %3011, 0
  br i1 %3012, label %then531, label %else532
then531:
  %3013 = load %ASTNode, %ASTNode* %node.ptr
  %3014 = call i1 @validate_for(%ASTNode %3013)
  ret i1 %3014
else532:
  br label %merge533
merge533:
  %3015 = load %nyx_string*, %nyx_string** %2913
  %3016 = getelementptr [7 x i8], [7 x i8]* @.str376, i32 0, i32 0
  %3017 = call %nyx_string* @nyx_string_from_cstr(i8* %3016)
  %3018 = call i8* @nyx_string_to_cstr(%nyx_string* %3015)
  %3019 = call i8* @nyx_string_to_cstr(%nyx_string* %3017)
  %3020 = call i32 @strcmp(i8* %3018, i8* %3019)
  %3021 = icmp eq i32 %3020, 0
  br i1 %3021, label %then534, label %else535
then534:
  %3022 = load %ASTNode, %ASTNode* %node.ptr
  %3023 = call i1 @validate_return(%ASTNode %3022)
  ret i1 %3023
else535:
  br label %merge536
merge536:
  %3024 = load %nyx_string*, %nyx_string** %2913
  %3025 = getelementptr [6 x i8], [6 x i8]* @.str377, i32 0, i32 0
  %3026 = call %nyx_string* @nyx_string_from_cstr(i8* %3025)
  %3027 = call i8* @nyx_string_to_cstr(%nyx_string* %3024)
  %3028 = call i8* @nyx_string_to_cstr(%nyx_string* %3026)
  %3029 = call i32 @strcmp(i8* %3027, i8* %3028)
  %3030 = icmp eq i32 %3029, 0
  br i1 %3030, label %then537, label %else538
then537:
  %3031 = load %ASTNode, %ASTNode* %node.ptr
  %3032 = call i1 @validate_break(%ASTNode %3031)
  ret i1 %3032
else538:
  br label %merge539
merge539:
  %3033 = load %nyx_string*, %nyx_string** %2913
  %3034 = getelementptr [9 x i8], [9 x i8]* @.str378, i32 0, i32 0
  %3035 = call %nyx_string* @nyx_string_from_cstr(i8* %3034)
  %3036 = call i8* @nyx_string_to_cstr(%nyx_string* %3033)
  %3037 = call i8* @nyx_string_to_cstr(%nyx_string* %3035)
  %3038 = call i32 @strcmp(i8* %3036, i8* %3037)
  %3039 = icmp eq i32 %3038, 0
  br i1 %3039, label %then540, label %else541
then540:
  %3040 = load %ASTNode, %ASTNode* %node.ptr
  %3041 = call i1 @validate_continue(%ASTNode %3040)
  ret i1 %3041
else541:
  br label %merge542
merge542:
  %3042 = load %nyx_string*, %nyx_string** %2913
  %3043 = getelementptr [4 x i8], [4 x i8]* @.str379, i32 0, i32 0
  %3044 = call %nyx_string* @nyx_string_from_cstr(i8* %3043)
  %3045 = call i8* @nyx_string_to_cstr(%nyx_string* %3042)
  %3046 = call i8* @nyx_string_to_cstr(%nyx_string* %3044)
  %3047 = call i32 @strcmp(i8* %3045, i8* %3046)
  %3048 = icmp eq i32 %3047, 0
  br i1 %3048, label %then543, label %else544
then543:
  %3049 = load %ASTNode, %ASTNode* %node.ptr
  %3050 = call i1 @validate_let(%ASTNode %3049)
  ret i1 %3050
else544:
  br label %merge545
merge545:
  %3051 = load %nyx_string*, %nyx_string** %2913
  %3052 = getelementptr [6 x i8], [6 x i8]* @.str380, i32 0, i32 0
  %3053 = call %nyx_string* @nyx_string_from_cstr(i8* %3052)
  %3054 = call i8* @nyx_string_to_cstr(%nyx_string* %3051)
  %3055 = call i8* @nyx_string_to_cstr(%nyx_string* %3053)
  %3056 = call i32 @strcmp(i8* %3054, i8* %3055)
  %3057 = icmp eq i32 %3056, 0
  br i1 %3057, label %then546, label %else547
then546:
  %3058 = load %ASTNode, %ASTNode* %node.ptr
  %3059 = call i1 @validate_const(%ASTNode %3058)
  ret i1 %3059
else547:
  br label %merge548
merge548:
  %3060 = load %nyx_string*, %nyx_string** %2913
  %3061 = getelementptr [9 x i8], [9 x i8]* @.str381, i32 0, i32 0
  %3062 = call %nyx_string* @nyx_string_from_cstr(i8* %3061)
  %3063 = call i8* @nyx_string_to_cstr(%nyx_string* %3060)
  %3064 = call i8* @nyx_string_to_cstr(%nyx_string* %3062)
  %3065 = call i32 @strcmp(i8* %3063, i8* %3064)
  %3066 = icmp eq i32 %3065, 0
  br i1 %3066, label %then549, label %else550
then549:
  %3067 = load %ASTNode, %ASTNode* %node.ptr
  %3068 = call i1 @validate_function(%ASTNode %3067)
  ret i1 %3068
else550:
  br label %merge551
merge551:
  %3069 = load %nyx_string*, %nyx_string** %2913
  %3070 = getelementptr [9 x i8], [9 x i8]* @.str382, i32 0, i32 0
  %3071 = call %nyx_string* @nyx_string_from_cstr(i8* %3070)
  %3072 = call i8* @nyx_string_to_cstr(%nyx_string* %3069)
  %3073 = call i8* @nyx_string_to_cstr(%nyx_string* %3071)
  %3074 = call i32 @strcmp(i8* %3072, i8* %3073)
  %3075 = icmp eq i32 %3074, 0
  br i1 %3075, label %then552, label %else553
then552:
  %3076 = load %ASTNode, %ASTNode* %node.ptr
  %3077 = call i1 @validate_function(%ASTNode %3076)
  ret i1 %3077
else553:
  br label %merge554
merge554:
  %3078 = load %nyx_string*, %nyx_string** %2913
  %3079 = getelementptr [11 x i8], [11 x i8]* @.str383, i32 0, i32 0
  %3080 = call %nyx_string* @nyx_string_from_cstr(i8* %3079)
  %3081 = call i8* @nyx_string_to_cstr(%nyx_string* %3078)
  %3082 = call i8* @nyx_string_to_cstr(%nyx_string* %3080)
  %3083 = call i32 @strcmp(i8* %3081, i8* %3082)
  %3084 = icmp eq i32 %3083, 0
  br i1 %3084, label %then555, label %else556
then555:
  ret i1 1
else556:
  br label %merge557
merge557:
  %3085 = load %nyx_string*, %nyx_string** %2913
  %3086 = getelementptr [7 x i8], [7 x i8]* @.str384, i32 0, i32 0
  %3087 = call %nyx_string* @nyx_string_from_cstr(i8* %3086)
  %3088 = call i8* @nyx_string_to_cstr(%nyx_string* %3085)
  %3089 = call i8* @nyx_string_to_cstr(%nyx_string* %3087)
  %3090 = call i32 @strcmp(i8* %3088, i8* %3089)
  %3091 = icmp eq i32 %3090, 0
  br i1 %3091, label %then558, label %else559
then558:
  ret i1 1
else559:
  br label %merge560
merge560:
  %3092 = load %nyx_string*, %nyx_string** %2913
  %3093 = getelementptr [9 x i8], [9 x i8]* @.str385, i32 0, i32 0
  %3094 = call %nyx_string* @nyx_string_from_cstr(i8* %3093)
  %3095 = call i8* @nyx_string_to_cstr(%nyx_string* %3092)
  %3096 = call i8* @nyx_string_to_cstr(%nyx_string* %3094)
  %3097 = call i32 @strcmp(i8* %3095, i8* %3096)
  %3098 = icmp eq i32 %3097, 0
  br i1 %3098, label %then561, label %else562
then561:
  ret i1 1
else562:
  br label %merge563
merge563:
  %3099 = load %nyx_string*, %nyx_string** %2913
  %3100 = getelementptr [5 x i8], [5 x i8]* @.str386, i32 0, i32 0
  %3101 = call %nyx_string* @nyx_string_from_cstr(i8* %3100)
  %3102 = call i8* @nyx_string_to_cstr(%nyx_string* %3099)
  %3103 = call i8* @nyx_string_to_cstr(%nyx_string* %3101)
  %3104 = call i32 @strcmp(i8* %3102, i8* %3103)
  %3105 = icmp eq i32 %3104, 0
  br i1 %3105, label %then564, label %else565
then564:
  %3106 = load %ASTNode, %ASTNode* %node.ptr
  %3107 = call i1 @validate_impl(%ASTNode %3106)
  ret i1 %3107
else565:
  br label %merge566
merge566:
  %3108 = load %nyx_string*, %nyx_string** %2913
  %3109 = getelementptr [10 x i8], [10 x i8]* @.str387, i32 0, i32 0
  %3110 = call %nyx_string* @nyx_string_from_cstr(i8* %3109)
  %3111 = call i8* @nyx_string_to_cstr(%nyx_string* %3108)
  %3112 = call i8* @nyx_string_to_cstr(%nyx_string* %3110)
  %3113 = call i32 @strcmp(i8* %3111, i8* %3112)
  %3114 = icmp eq i32 %3113, 0
  br i1 %3114, label %then567, label %else568
then567:
  ret i1 1
else568:
  br label %merge569
merge569:
  %3115 = load %nyx_string*, %nyx_string** %2913
  %3116 = getelementptr [11 x i8], [11 x i8]* @.str388, i32 0, i32 0
  %3117 = call %nyx_string* @nyx_string_from_cstr(i8* %3116)
  %3118 = call i8* @nyx_string_to_cstr(%nyx_string* %3115)
  %3119 = call i8* @nyx_string_to_cstr(%nyx_string* %3117)
  %3120 = call i32 @strcmp(i8* %3118, i8* %3119)
  %3121 = icmp eq i32 %3120, 0
  br i1 %3121, label %then570, label %else571
then570:
  %3122 = load %ASTNode, %ASTNode* %node.ptr
  %3123 = call i1 @validate_impl_trait(%ASTNode %3122)
  ret i1 %3123
else571:
  br label %merge572
merge572:
  %3124 = load %nyx_string*, %nyx_string** %2913
  %3125 = getelementptr [7 x i8], [7 x i8]* @.str389, i32 0, i32 0
  %3126 = call %nyx_string* @nyx_string_from_cstr(i8* %3125)
  %3127 = call i8* @nyx_string_to_cstr(%nyx_string* %3124)
  %3128 = call i8* @nyx_string_to_cstr(%nyx_string* %3126)
  %3129 = call i32 @strcmp(i8* %3127, i8* %3128)
  %3130 = icmp eq i32 %3129, 0
  br i1 %3130, label %then573, label %else574
then573:
  %3131 = load %ASTNode, %ASTNode* %node.ptr
  %3132 = call i1 @validate_export(%ASTNode %3131)
  ret i1 %3132
else574:
  br label %merge575
merge575:
  %3133 = load %nyx_string*, %nyx_string** %2913
  %3134 = getelementptr [7 x i8], [7 x i8]* @.str390, i32 0, i32 0
  %3135 = call %nyx_string* @nyx_string_from_cstr(i8* %3134)
  %3136 = call i8* @nyx_string_to_cstr(%nyx_string* %3133)
  %3137 = call i8* @nyx_string_to_cstr(%nyx_string* %3135)
  %3138 = call i32 @strcmp(i8* %3136, i8* %3137)
  %3139 = icmp eq i32 %3138, 0
  br i1 %3139, label %then576, label %else577
then576:
  ret i1 1
else577:
  br label %merge578
merge578:
  %3140 = load %nyx_string*, %nyx_string** %2913
  %3141 = getelementptr [14 x i8], [14 x i8]* @.str391, i32 0, i32 0
  %3142 = call %nyx_string* @nyx_string_from_cstr(i8* %3141)
  %3143 = call i8* @nyx_string_to_cstr(%nyx_string* %3140)
  %3144 = call i8* @nyx_string_to_cstr(%nyx_string* %3142)
  %3145 = call i32 @strcmp(i8* %3143, i8* %3144)
  %3146 = icmp eq i32 %3145, 0
  br i1 %3146, label %then579, label %else580
then579:
  ret i1 1
else580:
  br label %merge581
merge581:
  %3147 = load %nyx_string*, %nyx_string** %2913
  %3148 = getelementptr [12 x i8], [12 x i8]* @.str392, i32 0, i32 0
  %3149 = call %nyx_string* @nyx_string_from_cstr(i8* %3148)
  %3150 = call i8* @nyx_string_to_cstr(%nyx_string* %3147)
  %3151 = call i8* @nyx_string_to_cstr(%nyx_string* %3149)
  %3152 = call i32 @strcmp(i8* %3150, i8* %3151)
  %3153 = icmp eq i32 %3152, 0
  br i1 %3153, label %then582, label %else583
then582:
  ret i1 1
else583:
  br label %merge584
merge584:
  %3154 = load %nyx_string*, %nyx_string** %2913
  %3155 = getelementptr [11 x i8], [11 x i8]* @.str393, i32 0, i32 0
  %3156 = call %nyx_string* @nyx_string_from_cstr(i8* %3155)
  %3157 = call i8* @nyx_string_to_cstr(%nyx_string* %3154)
  %3158 = call i8* @nyx_string_to_cstr(%nyx_string* %3156)
  %3159 = call i32 @strcmp(i8* %3157, i8* %3158)
  %3160 = icmp eq i32 %3159, 0
  br i1 %3160, label %then585, label %else586
then585:
  ret i1 1
else586:
  br label %merge587
merge587:
  %3161 = load %nyx_string*, %nyx_string** %2913
  %3162 = getelementptr [10 x i8], [10 x i8]* @.str394, i32 0, i32 0
  %3163 = call %nyx_string* @nyx_string_from_cstr(i8* %3162)
  %3164 = call i8* @nyx_string_to_cstr(%nyx_string* %3161)
  %3165 = call i8* @nyx_string_to_cstr(%nyx_string* %3163)
  %3166 = call i32 @strcmp(i8* %3164, i8* %3165)
  %3167 = icmp eq i32 %3166, 0
  br i1 %3167, label %then588, label %else589
then588:
  ret i1 1
else589:
  br label %merge590
merge590:
  %3168 = load %nyx_string*, %nyx_string** %2913
  %3169 = getelementptr [6 x i8], [6 x i8]* @.str395, i32 0, i32 0
  %3170 = call %nyx_string* @nyx_string_from_cstr(i8* %3169)
  %3171 = call i8* @nyx_string_to_cstr(%nyx_string* %3168)
  %3172 = call i8* @nyx_string_to_cstr(%nyx_string* %3170)
  %3173 = call i32 @strcmp(i8* %3171, i8* %3172)
  %3174 = icmp eq i32 %3173, 0
  br i1 %3174, label %then591, label %else592
then591:
  %3175 = load %ASTNode, %ASTNode* %node.ptr
  %3176 = call i1 @validate_binop(%ASTNode %3175)
  ret i1 %3176
else592:
  br label %merge593
merge593:
  %3177 = load %nyx_string*, %nyx_string** %2913
  %3178 = getelementptr [5 x i8], [5 x i8]* @.str396, i32 0, i32 0
  %3179 = call %nyx_string* @nyx_string_from_cstr(i8* %3178)
  %3180 = call i8* @nyx_string_to_cstr(%nyx_string* %3177)
  %3181 = call i8* @nyx_string_to_cstr(%nyx_string* %3179)
  %3182 = call i32 @strcmp(i8* %3180, i8* %3181)
  %3183 = icmp eq i32 %3182, 0
  br i1 %3183, label %then594, label %else595
then594:
  %3184 = load %ASTNode, %ASTNode* %node.ptr
  %3185 = call i1 @validate_unop(%ASTNode %3184)
  ret i1 %3185
else595:
  br label %merge596
merge596:
  %3186 = load %nyx_string*, %nyx_string** %2913
  %3187 = getelementptr [5 x i8], [5 x i8]* @.str397, i32 0, i32 0
  %3188 = call %nyx_string* @nyx_string_from_cstr(i8* %3187)
  %3189 = call i8* @nyx_string_to_cstr(%nyx_string* %3186)
  %3190 = call i8* @nyx_string_to_cstr(%nyx_string* %3188)
  %3191 = call i32 @strcmp(i8* %3189, i8* %3190)
  %3192 = icmp eq i32 %3191, 0
  br i1 %3192, label %then597, label %else598
then597:
  %3193 = load %ASTNode, %ASTNode* %node.ptr
  %3194 = call i1 @validate_call(%ASTNode %3193)
  ret i1 %3194
else598:
  br label %merge599
merge599:
  %3195 = load %nyx_string*, %nyx_string** %2913
  %3196 = getelementptr [6 x i8], [6 x i8]* @.str398, i32 0, i32 0
  %3197 = call %nyx_string* @nyx_string_from_cstr(i8* %3196)
  %3198 = call i8* @nyx_string_to_cstr(%nyx_string* %3195)
  %3199 = call i8* @nyx_string_to_cstr(%nyx_string* %3197)
  %3200 = call i32 @strcmp(i8* %3198, i8* %3199)
  %3201 = icmp eq i32 %3200, 0
  br i1 %3201, label %then600, label %else601
then600:
  %3202 = load %ASTNode, %ASTNode* %node.ptr
  %3203 = call i1 @validate_array(%ASTNode %3202)
  ret i1 %3203
else601:
  br label %merge602
merge602:
  %3204 = load %nyx_string*, %nyx_string** %2913
  %3205 = getelementptr [6 x i8], [6 x i8]* @.str399, i32 0, i32 0
  %3206 = call %nyx_string* @nyx_string_from_cstr(i8* %3205)
  %3207 = call i8* @nyx_string_to_cstr(%nyx_string* %3204)
  %3208 = call i8* @nyx_string_to_cstr(%nyx_string* %3206)
  %3209 = call i32 @strcmp(i8* %3207, i8* %3208)
  %3210 = icmp eq i32 %3209, 0
  br i1 %3210, label %then603, label %else604
then603:
  %3211 = load %ASTNode, %ASTNode* %node.ptr
  %3212 = call i1 @validate_index(%ASTNode %3211)
  ret i1 %3212
else604:
  br label %merge605
merge605:
  %3213 = load %nyx_string*, %nyx_string** %2913
  %3214 = getelementptr [6 x i8], [6 x i8]* @.str400, i32 0, i32 0
  %3215 = call %nyx_string* @nyx_string_from_cstr(i8* %3214)
  %3216 = call i8* @nyx_string_to_cstr(%nyx_string* %3213)
  %3217 = call i8* @nyx_string_to_cstr(%nyx_string* %3215)
  %3218 = call i32 @strcmp(i8* %3216, i8* %3217)
  %3219 = icmp eq i32 %3218, 0
  br i1 %3219, label %then606, label %else607
then606:
  %3220 = load %ASTNode, %ASTNode* %node.ptr
  %3221 = call i1 @validate_range(%ASTNode %3220)
  ret i1 %3221
else607:
  br label %merge608
merge608:
  %3222 = load %nyx_string*, %nyx_string** %2913
  %3223 = getelementptr [7 x i8], [7 x i8]* @.str401, i32 0, i32 0
  %3224 = call %nyx_string* @nyx_string_from_cstr(i8* %3223)
  %3225 = call i8* @nyx_string_to_cstr(%nyx_string* %3222)
  %3226 = call i8* @nyx_string_to_cstr(%nyx_string* %3224)
  %3227 = call i32 @strcmp(i8* %3225, i8* %3226)
  %3228 = icmp eq i32 %3227, 0
  br i1 %3228, label %then609, label %else610
then609:
  %3229 = load %ASTNode, %ASTNode* %node.ptr
  %3230 = call i1 @validate_assign(%ASTNode %3229)
  ret i1 %3230
else610:
  br label %merge611
merge611:
  %3231 = load %nyx_string*, %nyx_string** %2913
  %3232 = getelementptr [16 x i8], [16 x i8]* @.str402, i32 0, i32 0
  %3233 = call %nyx_string* @nyx_string_from_cstr(i8* %3232)
  %3234 = call i8* @nyx_string_to_cstr(%nyx_string* %3231)
  %3235 = call i8* @nyx_string_to_cstr(%nyx_string* %3233)
  %3236 = call i32 @strcmp(i8* %3234, i8* %3235)
  %3237 = icmp eq i32 %3236, 0
  br i1 %3237, label %then612, label %else613
then612:
  %3238 = load %ASTNode, %ASTNode* %node.ptr
  %3239 = call i1 @validate_assign(%ASTNode %3238)
  ret i1 %3239
else613:
  br label %merge614
merge614:
  %3240 = load %nyx_string*, %nyx_string** %2913
  %3241 = getelementptr [13 x i8], [13 x i8]* @.str403, i32 0, i32 0
  %3242 = call %nyx_string* @nyx_string_from_cstr(i8* %3241)
  %3243 = call i8* @nyx_string_to_cstr(%nyx_string* %3240)
  %3244 = call i8* @nyx_string_to_cstr(%nyx_string* %3242)
  %3245 = call i32 @strcmp(i8* %3243, i8* %3244)
  %3246 = icmp eq i32 %3245, 0
  br i1 %3246, label %then615, label %else616
then615:
  %3247 = load %ASTNode, %ASTNode* %node.ptr
  %3248 = call i1 @validate_index_assign(%ASTNode %3247)
  ret i1 %3248
else616:
  br label %merge617
merge617:
  %3249 = load %nyx_string*, %nyx_string** %2913
  %3250 = getelementptr [13 x i8], [13 x i8]* @.str404, i32 0, i32 0
  %3251 = call %nyx_string* @nyx_string_from_cstr(i8* %3250)
  %3252 = call i8* @nyx_string_to_cstr(%nyx_string* %3249)
  %3253 = call i8* @nyx_string_to_cstr(%nyx_string* %3251)
  %3254 = call i32 @strcmp(i8* %3252, i8* %3253)
  %3255 = icmp eq i32 %3254, 0
  br i1 %3255, label %then618, label %else619
then618:
  %3256 = load %ASTNode, %ASTNode* %node.ptr
  %3257 = call i1 @validate_field_assign(%ASTNode %3256)
  ret i1 %3257
else619:
  br label %merge620
merge620:
  %3258 = load %nyx_string*, %nyx_string** %2913
  %3259 = getelementptr [12 x i8], [12 x i8]* @.str405, i32 0, i32 0
  %3260 = call %nyx_string* @nyx_string_from_cstr(i8* %3259)
  %3261 = call i8* @nyx_string_to_cstr(%nyx_string* %3258)
  %3262 = call i8* @nyx_string_to_cstr(%nyx_string* %3260)
  %3263 = call i32 @strcmp(i8* %3261, i8* %3262)
  %3264 = icmp eq i32 %3263, 0
  br i1 %3264, label %then621, label %else622
then621:
  %3265 = load %ASTNode, %ASTNode* %node.ptr
  %3266 = call i1 @validate_struct_init(%ASTNode %3265)
  ret i1 %3266
else622:
  br label %merge623
merge623:
  %3267 = load %nyx_string*, %nyx_string** %2913
  %3268 = getelementptr [13 x i8], [13 x i8]* @.str406, i32 0, i32 0
  %3269 = call %nyx_string* @nyx_string_from_cstr(i8* %3268)
  %3270 = call i8* @nyx_string_to_cstr(%nyx_string* %3267)
  %3271 = call i8* @nyx_string_to_cstr(%nyx_string* %3269)
  %3272 = call i32 @strcmp(i8* %3270, i8* %3271)
  %3273 = icmp eq i32 %3272, 0
  br i1 %3273, label %then624, label %else625
then624:
  %3274 = load %ASTNode, %ASTNode* %node.ptr
  %3275 = call i1 @validate_field_access(%ASTNode %3274)
  ret i1 %3275
else625:
  br label %merge626
merge626:
  %3276 = load %nyx_string*, %nyx_string** %2913
  %3277 = getelementptr [12 x i8], [12 x i8]* @.str407, i32 0, i32 0
  %3278 = call %nyx_string* @nyx_string_from_cstr(i8* %3277)
  %3279 = call i8* @nyx_string_to_cstr(%nyx_string* %3276)
  %3280 = call i8* @nyx_string_to_cstr(%nyx_string* %3278)
  %3281 = call i32 @strcmp(i8* %3279, i8* %3280)
  %3282 = icmp eq i32 %3281, 0
  br i1 %3282, label %then627, label %else628
then627:
  %3283 = load %ASTNode, %ASTNode* %node.ptr
  %3284 = call i1 @validate_method_call(%ASTNode %3283)
  ret i1 %3284
else628:
  br label %merge629
merge629:
  %3285 = load %nyx_string*, %nyx_string** %2913
  %3286 = getelementptr [6 x i8], [6 x i8]* @.str408, i32 0, i32 0
  %3287 = call %nyx_string* @nyx_string_from_cstr(i8* %3286)
  %3288 = call i8* @nyx_string_to_cstr(%nyx_string* %3285)
  %3289 = call i8* @nyx_string_to_cstr(%nyx_string* %3287)
  %3290 = call i32 @strcmp(i8* %3288, i8* %3289)
  %3291 = icmp eq i32 %3290, 0
  br i1 %3291, label %then630, label %else631
then630:
  %3292 = load %ASTNode, %ASTNode* %node.ptr
  %3293 = call i1 @validate_match(%ASTNode %3292)
  ret i1 %3293
else631:
  br label %merge632
merge632:
  %3294 = load %nyx_string*, %nyx_string** %2913
  %3295 = getelementptr [10 x i8], [10 x i8]* @.str409, i32 0, i32 0
  %3296 = call %nyx_string* @nyx_string_from_cstr(i8* %3295)
  %3297 = call i8* @nyx_string_to_cstr(%nyx_string* %3294)
  %3298 = call i8* @nyx_string_to_cstr(%nyx_string* %3296)
  %3299 = call i32 @strcmp(i8* %3297, i8* %3298)
  %3300 = icmp eq i32 %3299, 0
  br i1 %3300, label %then633, label %else634
then633:
  %3301 = load %ASTNode, %ASTNode* %node.ptr
  %3302 = call i1 @validate_match_arm(%ASTNode %3301)
  ret i1 %3302
else634:
  br label %merge635
merge635:
  %3303 = load %nyx_string*, %nyx_string** %2913
  %3304 = getelementptr [14 x i8], [14 x i8]* @.str410, i32 0, i32 0
  %3305 = call %nyx_string* @nyx_string_from_cstr(i8* %3304)
  %3306 = call i8* @nyx_string_to_cstr(%nyx_string* %3303)
  %3307 = call i8* @nyx_string_to_cstr(%nyx_string* %3305)
  %3308 = call i32 @strcmp(i8* %3306, i8* %3307)
  %3309 = icmp eq i32 %3308, 0
  br i1 %3309, label %then636, label %else637
then636:
  ret i1 1
else637:
  br label %merge638
merge638:
  %3310 = load %nyx_string*, %nyx_string** %2913
  %3311 = getelementptr [13 x i8], [13 x i8]* @.str411, i32 0, i32 0
  %3312 = call %nyx_string* @nyx_string_from_cstr(i8* %3311)
  %3313 = call i8* @nyx_string_to_cstr(%nyx_string* %3310)
  %3314 = call i8* @nyx_string_to_cstr(%nyx_string* %3312)
  %3315 = call i32 @strcmp(i8* %3313, i8* %3314)
  %3316 = icmp eq i32 %3315, 0
  br i1 %3316, label %then639, label %else640
then639:
  ret i1 1
else640:
  br label %merge641
merge641:
  %3317 = load %nyx_string*, %nyx_string** %2913
  %3318 = getelementptr [7 x i8], [7 x i8]* @.str412, i32 0, i32 0
  %3319 = call %nyx_string* @nyx_string_from_cstr(i8* %3318)
  %3320 = call i8* @nyx_string_to_cstr(%nyx_string* %3317)
  %3321 = call i8* @nyx_string_to_cstr(%nyx_string* %3319)
  %3322 = call i32 @strcmp(i8* %3320, i8* %3321)
  %3323 = icmp eq i32 %3322, 0
  br i1 %3323, label %then642, label %else643
then642:
  %3324 = load %ASTNode, %ASTNode* %node.ptr
  %3325 = call %ASTNode @get_node_at(%ASTNode %3324, i64 0)
  %3326 = alloca %ASTNode
  store %ASTNode %3325, %ASTNode* %3326
  %3327 = load %ASTNode, %ASTNode* %3326
  %3328 = call i1 @validate_node(%ASTNode %3327)
  ret i1 %3328
else643:
  br label %merge644
merge644:
  %3329 = load %nyx_string*, %nyx_string** %2913
  %3330 = getelementptr [5 x i8], [5 x i8]* @.str413, i32 0, i32 0
  %3331 = call %nyx_string* @nyx_string_from_cstr(i8* %3330)
  %3332 = call i8* @nyx_string_to_cstr(%nyx_string* %3329)
  %3333 = call i8* @nyx_string_to_cstr(%nyx_string* %3331)
  %3334 = call i32 @strcmp(i8* %3332, i8* %3333)
  %3335 = icmp eq i32 %3334, 0
  br i1 %3335, label %then645, label %else646
then645:
  %3336 = load %ASTNode, %ASTNode* %node.ptr
  %3337 = call %ASTNode @get_node_at(%ASTNode %3336, i64 0)
  %3338 = alloca %ASTNode
  store %ASTNode %3337, %ASTNode* %3338
  %3339 = load %ASTNode, %ASTNode* %3338
  %3340 = call i1 @validate_node(%ASTNode %3339)
  ret i1 %3340
else646:
  br label %merge647
merge647:
  %3341 = load %nyx_string*, %nyx_string** %2913
  %3342 = getelementptr [7 x i8], [7 x i8]* @.str414, i32 0, i32 0
  %3343 = call %nyx_string* @nyx_string_from_cstr(i8* %3342)
  %3344 = call i8* @nyx_string_to_cstr(%nyx_string* %3341)
  %3345 = call i8* @nyx_string_to_cstr(%nyx_string* %3343)
  %3346 = call i32 @strcmp(i8* %3344, i8* %3345)
  %3347 = icmp eq i32 %3346, 0
  br i1 %3347, label %then648, label %else649
then648:
  ret i1 1
else649:
  br label %merge650
merge650:
  %3348 = load %nyx_string*, %nyx_string** %2913
  %3349 = getelementptr [8 x i8], [8 x i8]* @.str415, i32 0, i32 0
  %3350 = call %nyx_string* @nyx_string_from_cstr(i8* %3349)
  %3351 = call i8* @nyx_string_to_cstr(%nyx_string* %3348)
  %3352 = call i8* @nyx_string_to_cstr(%nyx_string* %3350)
  %3353 = call i32 @strcmp(i8* %3351, i8* %3352)
  %3354 = icmp eq i32 %3353, 0
  br i1 %3354, label %then651, label %else652
then651:
  ret i1 1
else652:
  br label %merge653
merge653:
  %3355 = load %nyx_string*, %nyx_string** %2913
  %3356 = getelementptr [13 x i8], [13 x i8]* @.str416, i32 0, i32 0
  %3357 = call %nyx_string* @nyx_string_from_cstr(i8* %3356)
  %3358 = call i8* @nyx_string_to_cstr(%nyx_string* %3355)
  %3359 = call i8* @nyx_string_to_cstr(%nyx_string* %3357)
  %3360 = call i32 @strcmp(i8* %3358, i8* %3359)
  %3361 = icmp eq i32 %3360, 0
  br i1 %3361, label %then654, label %else655
then654:
  %3362 = load %ASTNode, %ASTNode* %node.ptr
  %3363 = call %ASTNode @get_node_at(%ASTNode %3362, i64 0)
  %3364 = alloca %ASTNode
  store %ASTNode %3363, %ASTNode* %3364
  %3365 = load %ASTNode, %ASTNode* %3364
  %3366 = call i1 @validate_node(%ASTNode %3365)
  ret i1 %3366
else655:
  br label %merge656
merge656:
  %3367 = load %nyx_string*, %nyx_string** %2913
  %3368 = getelementptr [8 x i8], [8 x i8]* @.str417, i32 0, i32 0
  %3369 = call %nyx_string* @nyx_string_from_cstr(i8* %3368)
  %3370 = call i8* @nyx_string_to_cstr(%nyx_string* %3367)
  %3371 = call i8* @nyx_string_to_cstr(%nyx_string* %3369)
  %3372 = call i32 @strcmp(i8* %3370, i8* %3371)
  %3373 = icmp eq i32 %3372, 0
  br i1 %3373, label %then657, label %else658
then657:
  %3374 = load %ASTNode, %ASTNode* %node.ptr
  %3375 = call %ASTNode @get_node_at(%ASTNode %3374, i64 0)
  %3376 = alloca %ASTNode
  store %ASTNode %3375, %ASTNode* %3376
  %3377 = load %ASTNode, %ASTNode* %3376
  %3378 = call i1 @validate_node(%ASTNode %3377)
  ret i1 %3378
else658:
  br label %merge659
merge659:
  %3379 = load %nyx_string*, %nyx_string** %2913
  %3380 = getelementptr [6 x i8], [6 x i8]* @.str418, i32 0, i32 0
  %3381 = call %nyx_string* @nyx_string_from_cstr(i8* %3380)
  %3382 = call i8* @nyx_string_to_cstr(%nyx_string* %3379)
  %3383 = call i8* @nyx_string_to_cstr(%nyx_string* %3381)
  %3384 = call i32 @strcmp(i8* %3382, i8* %3383)
  %3385 = icmp eq i32 %3384, 0
  br i1 %3385, label %then660, label %else661
then660:
  %3386 = load %ASTNode, %ASTNode* %node.ptr
  %3387 = call %ASTNode @get_node_at(%ASTNode %3386, i64 0)
  %3388 = alloca %ASTNode
  store %ASTNode %3387, %ASTNode* %3388
  %3389 = load %ASTNode, %ASTNode* %3388
  %3390 = call i1 @validate_node(%ASTNode %3389)
  ret i1 %3390
else661:
  br label %merge662
merge662:
  %3391 = load %nyx_string*, %nyx_string** %2913
  %3392 = getelementptr [13 x i8], [13 x i8]* @.str419, i32 0, i32 0
  %3393 = call %nyx_string* @nyx_string_from_cstr(i8* %3392)
  %3394 = call i8* @nyx_string_to_cstr(%nyx_string* %3391)
  %3395 = call i8* @nyx_string_to_cstr(%nyx_string* %3393)
  %3396 = call i32 @strcmp(i8* %3394, i8* %3395)
  %3397 = icmp eq i32 %3396, 0
  br i1 %3397, label %then663, label %else664
then663:
  %3398 = load %ASTNode, %ASTNode* %node.ptr
  %3399 = call %ASTNode @get_node_at(%ASTNode %3398, i64 0)
  %3400 = alloca %ASTNode
  store %ASTNode %3399, %ASTNode* %3400
  %3401 = load %ASTNode, %ASTNode* %node.ptr
  %3402 = call %ASTNode @get_node_at(%ASTNode %3401, i64 1)
  %3403 = alloca %ASTNode
  store %ASTNode %3402, %ASTNode* %3403
  %3404 = load %ASTNode, %ASTNode* %3400
  %3405 = call i1 @validate_node(%ASTNode %3404)
  %3406 = xor i1 %3405, true
  br i1 %3406, label %then666, label %else667
then666:
  ret i1 0
else667:
  br label %merge668
merge668:
  %3407 = load %ASTNode, %ASTNode* %3403
  %3408 = call i1 @validate_node(%ASTNode %3407)
  ret i1 %3408
else664:
  br label %merge665
merge665:
  %3409 = load %nyx_string*, %nyx_string** %2913
  %3410 = getelementptr [11 x i8], [11 x i8]* @.str420, i32 0, i32 0
  %3411 = call %nyx_string* @nyx_string_from_cstr(i8* %3410)
  %3412 = call i8* @nyx_string_to_cstr(%nyx_string* %3409)
  %3413 = call i8* @nyx_string_to_cstr(%nyx_string* %3411)
  %3414 = call i32 @strcmp(i8* %3412, i8* %3413)
  %3415 = icmp eq i32 %3414, 0
  br i1 %3415, label %then669, label %else670
then669:
  %3416 = load %ASTNode, %ASTNode* %node.ptr
  %3417 = call %nyx_string* @get_string_at(%ASTNode %3416, i64 0)
  %3418 = alloca %nyx_string*
  store %nyx_string* %3417, %nyx_string** %3418
  %3419 = load %nyx_string*, %nyx_string** %3418
  %3420 = getelementptr [4 x i8], [4 x i8]* @.str421, i32 0, i32 0
  %3421 = call %nyx_string* @nyx_string_from_cstr(i8* %3420)
  %3422 = call i64 @scope_declare(%nyx_string* %3419, %nyx_string* %3421)
  ret i1 1
else670:
  br label %merge671
merge671:
  %3423 = load %nyx_string*, %nyx_string** %2913
  %3424 = getelementptr [6 x i8], [6 x i8]* @.str422, i32 0, i32 0
  %3425 = call %nyx_string* @nyx_string_from_cstr(i8* %3424)
  %3426 = call i8* @nyx_string_to_cstr(%nyx_string* %3423)
  %3427 = call i8* @nyx_string_to_cstr(%nyx_string* %3425)
  %3428 = call i32 @strcmp(i8* %3426, i8* %3427)
  %3429 = icmp eq i32 %3428, 0
  br i1 %3429, label %then672, label %else673
then672:
  %3430 = load %ASTNode, %ASTNode* %node.ptr
  %3431 = call %ASTNode @get_node_at(%ASTNode %3430, i64 0)
  %3432 = alloca %ASTNode
  store %ASTNode %3431, %ASTNode* %3432
  %3433 = load %ASTNode, %ASTNode* %3432
  %3434 = call i1 @validate_node(%ASTNode %3433)
  ret i1 %3434
else673:
  br label %merge674
merge674:
  %3435 = load %nyx_string*, %nyx_string** %2913
  %3436 = getelementptr [10 x i8], [10 x i8]* @.str423, i32 0, i32 0
  %3437 = call %nyx_string* @nyx_string_from_cstr(i8* %3436)
  %3438 = call i8* @nyx_string_to_cstr(%nyx_string* %3435)
  %3439 = call i8* @nyx_string_to_cstr(%nyx_string* %3437)
  %3440 = call i32 @strcmp(i8* %3438, i8* %3439)
  %3441 = icmp eq i32 %3440, 0
  br i1 %3441, label %then675, label %else676
then675:
  %3442 = load %ASTNode, %ASTNode* %node.ptr
  %3443 = call %ASTNode @get_node_at(%ASTNode %3442, i64 0)
  %3444 = alloca %ASTNode
  store %ASTNode %3443, %ASTNode* %3444
  %3445 = load %ASTNode, %ASTNode* %node.ptr
  %3446 = call %nyx_string* @get_string_at(%ASTNode %3445, i64 1)
  %3447 = alloca %nyx_string*
  store %nyx_string* %3446, %nyx_string** %3447
  %3448 = load %ASTNode, %ASTNode* %node.ptr
  %3449 = call %ASTNode @get_node_at(%ASTNode %3448, i64 2)
  %3450 = alloca %ASTNode
  store %ASTNode %3449, %ASTNode* %3450
  %3451 = load %ASTNode, %ASTNode* %3444
  %3452 = call i1 @validate_node(%ASTNode %3451)
  %3453 = alloca i1
  store i1 %3452, i1* %3453
  %3454 = load i1, i1* %3453
  %3455 = icmp eq i1 %3454, 0
  br i1 %3455, label %then678, label %else679
then678:
  ret i1 0
else679:
  br label %merge680
merge680:
  %3456 = call i64 @scope_push()
  %3457 = load %nyx_string*, %nyx_string** %3447
  %3458 = getelementptr [4 x i8], [4 x i8]* @.str424, i32 0, i32 0
  %3459 = call %nyx_string* @nyx_string_from_cstr(i8* %3458)
  %3460 = call i64 @scope_declare(%nyx_string* %3457, %nyx_string* %3459)
  %3461 = load %ASTNode, %ASTNode* %3450
  %3462 = call i1 @validate_node(%ASTNode %3461)
  %3463 = alloca i1
  store i1 %3462, i1* %3463
  %3464 = call i64 @scope_pop()
  %3465 = load i1, i1* %3463
  ret i1 %3465
else676:
  br label %merge677
merge677:
  %3466 = load %nyx_string*, %nyx_string** %2913
  %3467 = getelementptr [6 x i8], [6 x i8]* @.str425, i32 0, i32 0
  %3468 = call %nyx_string* @nyx_string_from_cstr(i8* %3467)
  %3469 = call i8* @nyx_string_to_cstr(%nyx_string* %3466)
  %3470 = call i8* @nyx_string_to_cstr(%nyx_string* %3468)
  %3471 = call i32 @strcmp(i8* %3469, i8* %3470)
  %3472 = icmp eq i32 %3471, 0
  br i1 %3472, label %then681, label %else682
then681:
  %3473 = load %ASTNode, %ASTNode* %node.ptr
  %3474 = call %ASTNode @get_node_at(%ASTNode %3473, i64 0)
  %3475 = alloca %ASTNode
  store %ASTNode %3474, %ASTNode* %3475
  %3476 = load %ASTNode, %ASTNode* %3475
  %3477 = call i1 @validate_node(%ASTNode %3476)
  ret i1 %3477
else682:
  br label %merge683
merge683:
  %3478 = load %nyx_string*, %nyx_string** %2913
  %3479 = getelementptr [11 x i8], [11 x i8]* @.str426, i32 0, i32 0
  %3480 = call %nyx_string* @nyx_string_from_cstr(i8* %3479)
  %3481 = call i8* @nyx_string_to_cstr(%nyx_string* %3478)
  %3482 = call i8* @nyx_string_to_cstr(%nyx_string* %3480)
  %3483 = call i32 @strcmp(i8* %3481, i8* %3482)
  %3484 = icmp eq i32 %3483, 0
  br i1 %3484, label %then684, label %else685
then684:
  ret i1 1
else685:
  br label %merge686
merge686:
  %3485 = load %nyx_string*, %nyx_string** %2913
  %3486 = getelementptr [15 x i8], [15 x i8]* @.str427, i32 0, i32 0
  %3487 = call %nyx_string* @nyx_string_from_cstr(i8* %3486)
  %3488 = call i8* @nyx_string_to_cstr(%nyx_string* %3485)
  %3489 = call i8* @nyx_string_to_cstr(%nyx_string* %3487)
  %3490 = call i32 @strcmp(i8* %3488, i8* %3489)
  %3491 = icmp eq i32 %3490, 0
  br i1 %3491, label %then687, label %else688
then687:
  ret i1 1
else688:
  br label %merge689
merge689:
  %3492 = load %nyx_string*, %nyx_string** %2913
  %3493 = getelementptr [13 x i8], [13 x i8]* @.str428, i32 0, i32 0
  %3494 = call %nyx_string* @nyx_string_from_cstr(i8* %3493)
  %3495 = call i8* @nyx_string_to_cstr(%nyx_string* %3492)
  %3496 = call i8* @nyx_string_to_cstr(%nyx_string* %3494)
  %3497 = call i32 @strcmp(i8* %3495, i8* %3496)
  %3498 = icmp eq i32 %3497, 0
  br i1 %3498, label %then690, label %else691
then690:
  ret i1 1
else691:
  br label %merge692
merge692:
  %3499 = load %nyx_string*, %nyx_string** %2913
  %3500 = getelementptr [10 x i8], [10 x i8]* @.str429, i32 0, i32 0
  %3501 = call %nyx_string* @nyx_string_from_cstr(i8* %3500)
  %3502 = call i8* @nyx_string_to_cstr(%nyx_string* %3499)
  %3503 = call i8* @nyx_string_to_cstr(%nyx_string* %3501)
  %3504 = call i32 @strcmp(i8* %3502, i8* %3503)
  %3505 = icmp eq i32 %3504, 0
  br i1 %3505, label %then693, label %else694
then693:
  ret i1 1
else694:
  br label %merge695
merge695:
  %3506 = load %nyx_string*, %nyx_string** %2913
  %3507 = getelementptr [12 x i8], [12 x i8]* @.str430, i32 0, i32 0
  %3508 = call %nyx_string* @nyx_string_from_cstr(i8* %3507)
  %3509 = call i8* @nyx_string_to_cstr(%nyx_string* %3506)
  %3510 = call i8* @nyx_string_to_cstr(%nyx_string* %3508)
  %3511 = call i32 @strcmp(i8* %3509, i8* %3510)
  %3512 = icmp eq i32 %3511, 0
  br i1 %3512, label %then696, label %else697
then696:
  ret i1 1
else697:
  br label %merge698
merge698:
  %3513 = load %nyx_string*, %nyx_string** %2913
  %3514 = getelementptr [22 x i8], [22 x i8]* @.str431, i32 0, i32 0
  %3515 = call %nyx_string* @nyx_string_from_cstr(i8* %3514)
  %3516 = call i8* @nyx_string_to_cstr(%nyx_string* %3513)
  %3517 = call i8* @nyx_string_to_cstr(%nyx_string* %3515)
  %3518 = call i32 @strcmp(i8* %3516, i8* %3517)
  %3519 = icmp eq i32 %3518, 0
  br i1 %3519, label %then699, label %else700
then699:
  %3520 = getelementptr %ASTNode, %ASTNode* %node.ptr, i32 0, i32 1
  %3521 = load { i64, i8* }*, { i64, i8* }** %3520
  %3522 = call i64 @nyx_array_get({ i64, i8* }* %3521, i64 0)
  %3523 = inttoptr i64 %3522 to { i64, i8* }*
  %3524 = alloca { i64, i8* }*
  store { i64, i8* }* %3523, { i64, i8* }** %3524
  %3525 = load %ASTNode, %ASTNode* %node.ptr
  %3526 = call %ASTNode @get_node_at(%ASTNode %3525, i64 2)
  %3527 = alloca %ASTNode
  store %ASTNode %3526, %ASTNode* %3527
  %3528 = load %ASTNode, %ASTNode* %3527
  %3529 = call i1 @validate_node(%ASTNode %3528)
  %3530 = xor i1 %3529, true
  br i1 %3530, label %then702, label %else703
then702:
  ret i1 0
else703:
  br label %merge704
merge704:
  %3531 = alloca i64
  store i64 0, i64* %3531
  br label %while_cond705
while_cond705:
  %3532 = load i64, i64* %3531
  %3533 = load { i64, i8* }*, { i64, i8* }** %3524
  %3534 = call i64 @nyx_array_length({ i64, i8* }* %3533)
  %3535 = icmp slt i64 %3532, %3534
  br i1 %3535, label %while_body706, label %while_end707
while_body706:
  %3536 = load { i64, i8* }*, { i64, i8* }** %3524
  %3537 = load i64, i64* %3531
  %3538 = call i64 @nyx_array_get({ i64, i8* }* %3536, i64 %3537)
  %3539 = inttoptr i64 %3538 to %nyx_string*
  %3540 = alloca %nyx_string*
  store %nyx_string* %3539, %nyx_string** %3540
  %3541 = load %nyx_string*, %nyx_string** %3540
  %3542 = getelementptr [4 x i8], [4 x i8]* @.str432, i32 0, i32 0
  %3543 = call %nyx_string* @nyx_string_from_cstr(i8* %3542)
  %3544 = call i64 @scope_declare(%nyx_string* %3541, %nyx_string* %3543)
  %3545 = load i64, i64* %3531
  %3546 = add i64 %3545, 1
  store i64 %3546, i64* %3531
  br label %while_cond705
while_end707:
  ret i1 1
else700:
  br label %merge701
merge701:
  %3547 = load %nyx_string*, %nyx_string** %2913
  %3548 = getelementptr [10 x i8], [10 x i8]* @.str433, i32 0, i32 0
  %3549 = call %nyx_string* @nyx_string_from_cstr(i8* %3548)
  %3550 = call i8* @nyx_string_to_cstr(%nyx_string* %3547)
  %3551 = call i8* @nyx_string_to_cstr(%nyx_string* %3549)
  %3552 = call i32 @strcmp(i8* %3550, i8* %3551)
  %3553 = icmp eq i32 %3552, 0
  br i1 %3553, label %then708, label %else709
then708:
  %3554 = call i64 @scope_push()
  %3555 = load %ASTNode, %ASTNode* %node.ptr
  %3556 = call %ASTNode @get_node_at(%ASTNode %3555, i64 1)
  %3557 = alloca %ASTNode
  store %ASTNode %3556, %ASTNode* %3557
  %3558 = load %ASTNode, %ASTNode* %3557
  %3559 = call i1 @validate_node(%ASTNode %3558)
  %3560 = alloca i1
  store i1 %3559, i1* %3560
  %3561 = call i64 @scope_pop()
  %3562 = load i1, i1* %3560
  ret i1 %3562
else709:
  br label %merge710
merge710:
  %3563 = load %nyx_string*, %nyx_string** %2913
  %3564 = getelementptr [7 x i8], [7 x i8]* @.str434, i32 0, i32 0
  %3565 = call %nyx_string* @nyx_string_from_cstr(i8* %3564)
  %3566 = call i8* @nyx_string_to_cstr(%nyx_string* %3563)
  %3567 = call i8* @nyx_string_to_cstr(%nyx_string* %3565)
  %3568 = call i32 @strcmp(i8* %3566, i8* %3567)
  %3569 = icmp eq i32 %3568, 0
  br i1 %3569, label %then711, label %else712
then711:
  ret i1 1
else712:
  br label %merge713
merge713:
  ret i1 1
}

define { i64, i8* }* @get_errors(
) {
  %3570 = load { i64, i8* }*, { i64, i8* }** @g_errors
  ret { i64, i8* }* %3570
}

define { i64, i8* }* @get_sym_names(
) {
  %3571 = load { i64, i8* }*, { i64, i8* }** @g_sym_names
  ret { i64, i8* }* %3571
}

define { i64, i8* }* @get_sym_kinds(
) {
  %3572 = load { i64, i8* }*, { i64, i8* }** @g_sym_kinds
  ret { i64, i8* }* %3572
}

define i64 @get_sym_count(
) {
  %3573 = load i64, i64* @g_sym_count
  ret i64 %3573
}

define i1 @analyze(
%ASTNode %ast.param) {
  %ast.ptr = alloca %ASTNode
  store %ASTNode %ast.param, %ASTNode* %ast.ptr
  %3574 = getelementptr [36 x i8], [36 x i8]* @.str435, i32 0, i32 0
  %3575 = call %nyx_string* @nyx_string_from_cstr(i8* %3574)
  %3576 = call i8* @nyx_string_to_cstr(%nyx_string* %3575)
  call void @nyx_print_string(i8* %3576)
  store i64 0, i64* @g_sym_count
  store i64 0, i64* @g_marks_count
  store i64 0, i64* @g_in_function
  store i64 0, i64* @g_in_loop
  store i64 0, i64* @g_enum_reg_count
  %3577 = call i64 @register_builtins()
  %3578 = load %ASTNode, %ASTNode* %ast.ptr
  %3579 = call i1 @validate_node(%ASTNode %3578)
  %3580 = alloca i1
  store i1 %3579, i1* %3580
  %3581 = load i1, i1* %3580
  %3582 = xor i1 %3581, true
  br i1 %3582, label %then714, label %else715
then714:
  %3583 = alloca i64
  store i64 0, i64* %3583
  br label %while_cond717
while_cond717:
  %3584 = load i64, i64* %3583
  %3585 = load { i64, i8* }*, { i64, i8* }** @g_errors
  %3586 = call i64 @nyx_array_length({ i64, i8* }* %3585)
  %3587 = icmp slt i64 %3584, %3586
  br i1 %3587, label %while_body718, label %while_end719
while_body718:
  %3588 = load { i64, i8* }*, { i64, i8* }** @g_errors
  %3589 = load i64, i64* %3583
  %3590 = call i64 @nyx_array_get({ i64, i8* }* %3588, i64 %3589)
  %3591 = inttoptr i64 %3590 to %nyx_string*
  %3592 = alloca %nyx_string*
  store %nyx_string* %3591, %nyx_string** %3592
  %3593 = getelementptr [7 x i8], [7 x i8]* @.str436, i32 0, i32 0
  %3594 = call %nyx_string* @nyx_string_from_cstr(i8* %3593)
  %3595 = load %nyx_string*, %nyx_string** %3592
  %3596 = call %nyx_string* @nyx_string_concat(%nyx_string* %3594, %nyx_string* %3595)
  %3597 = call i8* @nyx_string_to_cstr(%nyx_string* %3596)
  call void @nyx_print_string(i8* %3597)
  %3598 = load i64, i64* %3583
  %3599 = add i64 %3598, 1
  store i64 %3599, i64* %3583
  br label %while_cond717
while_end719:
  ret i1 0
else715:
  br label %merge716
merge716:
  %3600 = getelementptr [31 x i8], [31 x i8]* @.str437, i32 0, i32 0
  %3601 = call %nyx_string* @nyx_string_from_cstr(i8* %3600)
  %3602 = call i8* @nyx_string_to_cstr(%nyx_string* %3601)
  call void @nyx_print_string(i8* %3602)
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
  ret void
}

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__nyx_init_globals, i8* null }]

attributes #0 = { returns_twice }

