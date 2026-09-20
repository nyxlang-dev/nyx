# CAPABILITIES — índice de la stdlib de Nyx

<!-- nyx-version: 0.32.4 -->
> Auto-generado por `nyx capabilities` desde la stdlib instalada — siempre en sync con tu versión.
> Es el índice de QUÉ EXISTE: antes de escribir una función, busca aquí si un módulo ya lo hace,
> impórtalo y úsalo. NO leas el fuente de `std/`. Ver `AGENTS.md` para cómo escribir Nyx.

## HTTP & Web

### `std/websocket`

`import "std/websocket"` — 9 funciones:

- `pub fn ws_accept_key(key: String) -> String`
- `pub fn ws_handshake_response(ws_key: String) -> String`
- `pub fn ws_extract_key(headers: String) -> String`
- `pub fn ws_frame(payload: String) -> String`
- `pub fn ws_parse(data: String) -> String`
- `pub fn ws_is_close(data: String) -> bool`
- `pub fn ws_close() -> String`
- `pub fn ws_is_upgrade(request: String) -> bool`
- `pub fn ws_frame_size(frame: String) -> int`

### `std/web`

`import "std/web"` — 41 funciones:

- `pub fn request_new() -> Request`
- `pub fn request_with(method: String, path: String) -> Request` — Request sintético con method y path — para tests de handlers y helpers. Los demás campos vienen frescos y utilizables (mismo contrato que request_new).
- `pub fn url_decode(s: String) -> String`
- `pub fn parse_query_string(path: String) -> Map`
- `pub fn parse_form_data(body: String, content_type: String) -> Map`
- `pub fn parse_cookies(headers_flat: Array) -> Map`
- `pub fn route_match(pattern: String, path: String) -> Map`
- `pub fn response_new(status: int, body: String) -> Response`
- `pub fn response_html(status: int, html: String) -> Response`
- `pub fn response_json(status: int, json: String) -> Response`
- `pub fn response_json_map(status: int, data: Map) -> Response`
- `pub fn req_json(req: Request) -> Map`
- `pub fn response_redirect(url: String) -> Response`
- `pub fn response_text(status: int, text: String) -> Response`
- `pub fn app_new() -> App`
- `pub fn app_route(app: App, method: String, pattern: String, handler: Fn)`
- `pub fn app_get(app: App, pattern: String, handler: Fn)`
- `pub fn app_post(app: App, pattern: String, handler: Fn)`
- `pub fn app_put(app: App, pattern: String, handler: Fn)`
- `pub fn app_delete(app: App, pattern: String, handler: Fn)`
- `pub fn app_before(app: App, hook: Fn)`
- `pub fn app_after(app: App, hook: Fn)`
- `pub fn app_use(app: App, mw: Fn)`
- `pub fn default_not_found(req: Request) -> Response`
- `pub fn default_error(req: Request, err: String) -> Response`
- `pub fn app_not_found(app: &mut App, handler: Fn)`
- `pub fn app_error(app: &mut App, handler: Fn)`
- `pub fn app_access_log(app: &mut App)`
- `pub fn router_new() -> Router`
- `pub fn router_route(router: Router, method: String, pattern: String, handler: Fn)`
- `pub fn router_get(router: Router, pattern: String, handler: Fn)`
- `pub fn router_post(router: Router, pattern: String, handler: Fn)`
- `pub fn router_put(router: Router, pattern: String, handler: Fn)`
- `pub fn router_delete(router: Router, pattern: String, handler: Fn)`
- `pub fn router_use(router: Router, mw: Fn)`
- `pub fn router_wrap(router: Router, mw: Fn)`
- `pub fn app_wrap(app: App, mw: Fn)`
- `pub fn app_mount(app: App, prefix: String, router: Router)`
- `pub fn mw_logging(req: Request) -> Response`
- `pub fn cors_configure(origin: String, methods: String, headers: String)`
- `pub fn mw_cors(req: Request) -> Response`

### `std/http`

`import "std/http"` — 27 funciones:

- `pub fn http_status_text(code: int) -> String`
- `pub fn http_response(status: int, body: String) -> String`
- `pub fn http_response_with_headers(status: int, headers_arr: Array, body: String) -> String`
- `pub fn http_json_response(status: int, data: Array) -> String`
- `pub fn http_parse_url(url: String) -> Array`
- `pub fn http_host_header(host: String, port: int, default_port: int) -> String`
- `pub fn http_build_request(method: String, host_header: String, path: String, headers: Array, body: String) -> String`
- `pub fn http_tls_inseguro(si: bool)`
- `pub fn http_tls_request(host: String, port: int, req: String) -> Array`
- `pub fn http_get(url: String) -> Array`
- `pub fn http_post(url: String, body: String) -> Array`
- `pub fn http_request(method: String, url: String, headers: Array, body: String) -> Array`
- `pub fn http_opts() -> HttpOpts`
- `pub fn try_http_request_opts(method: String, url: String, headers: Array, body: String, opts: HttpOpts) -> Result<Array, Error>`
- `pub fn try_http_get(url: String) -> Result<Array, Error>`
- `pub fn try_http_post(url: String, body: String) -> Result<Array, Error>`
- `pub fn try_http_request(method: String, url: String, headers: Array, body: String) -> Result<Array, Error>`
- `pub fn http_status(resp: Array) -> int`
- `pub fn http_body(resp: Array) -> String`
- `pub fn http_headers(resp: Array) -> Array`
- `pub fn http_find_header(headers: Array, name: String) -> String`
- `pub fn http_find_headers(headers: Array, name: String) -> Array`
- `pub fn http_parse_request(client_fd: int) -> Array`
- `pub fn http_cors_headers(origin: String) -> Array`
- `pub fn http_cors_response(origin: String) -> String`
- `pub fn http_serve(port: int, handler: Fn(Array) -> String) -> int`
- `pub fn http_serve_mt(port: int, num_workers: int, handler: Fn) -> int`

## Bases de datos & KV

### `std/kvclient`

`import "std/kvclient"` — 20 funciones:

- `pub fn kv_connect_auth(host: String, port: int, token: String) -> int`
- `pub fn kv_close(h: int)`
- `pub fn read_bulk(h: int, header: String) -> String`
- `pub fn kv_cmd(h: int, parts: Array) -> String`
- `pub fn kv_cmd_array(h: int, parts: Array) -> Array`
- `pub fn kv_set(h: int, key: String, value: String) -> bool`
- `pub fn kv_setex(h: int, key: String, ttl: int, value: String) -> bool`
- `pub fn kv_get(h: int, key: String) -> String`
- `pub fn kv_del(h: int, key: String) -> int`
- `pub fn kv_rpush(h: int, key: String, value: String) -> int`
- `pub fn kv_lrange(h: int, key: String, start: int, stop: int) -> Array`
- `pub fn kv_llen(h: int, key: String) -> int`
- `pub fn kv_sadd(h: int, key: String, member: String) -> int`
- `pub fn kv_smembers(h: int, key: String) -> Array`
- `pub fn kv_whoami(h: int) -> String`
- `pub fn kv_token_create(h: int, user_id: String, plan: String, ttl: int) -> String`
- `pub fn kv_exists(h: int, key: String) -> bool`
- `pub fn kv_srem(h: int, key: String, member: String) -> int`
- `pub fn kv_token_list(h: int) -> Array`
- `pub fn kv_token_revoke(h: int, token: String) -> bool`

### `std/sqlite`

`import "std/sqlite"` — 30 funciones:

- `pub fn sqlite_null() -> String` — Centinela de SQL NULL: el String de un byte 0x00 que devuelven las celdas nulas. Para PASAR un NULL como parámetro también.
- `pub fn sqlite_is_null(valor: String) -> bool` — true si la celda es SQL NULL. La ÚNICA forma correcta de preguntarlo: `v == ""` confunde un NULL con un texto vacío.
- `pub fn sqlite_open(path: String) -> *int` — Abre (o crea) el archivo. Devuelve el handle *int — capturable en closures sin drama (fn de std con retorno declarado).
- `pub fn sqlite_close(db: *int)`
- `pub fn sqlite_exec(db: *int, sql: String) -> bool` — DDL/DML sin resultado; true en éxito. Para SQL con valores usar sqlite_exec_params (params String).
- `pub fn sqlite_query(db: *int, sql: String) -> Array` — Array de filas; cada fila es Array y TODA celda es String, incluidas las columnas INTEGER: convertir con string_to_int(), o pedir la columna por la vía tipada sqlite_query_int/sqlite_query_one_int (int de 64 bits reales). Anotar la celda como `int` NO la convierte: lee los bits del String. Una celda SQL NULL vuelve como sqlite_null() — preguntar con sqlite_is_null(), nunca con `== ""`.
- `pub fn sqlite_query_named(db: *int, sql: String) -> Array` — Como sqlite_query pero ANTEPONE una fila de headers: N+1 elementos, la fila 0 son los nombres de columna. Mismas reglas de celda: String siempre, NULL vía sqlite_is_null().
- `pub fn sqlite_exec_int(db: *int, sql: String, val: int) -> bool`
- `pub fn sqlite_exec_str(db: *int, sql: String, val: String) -> bool`
- `pub fn sqlite_last_id(db: *int) -> int` — last_insert_rowid del handle.
- `pub fn sqlite_affected(db: *int) -> int`
- `pub fn sqlite_error(db: *int) -> String` — Mensaje del último error del handle (sqlite3_errmsg).
- `pub fn try_sqlite_open(path: String) -> Result<*int, Error>`
- `pub fn try_sqlite_exec(db: *int, sql: String) -> Result<int, Error>`
- `pub fn try_sqlite_query(db: *int, sql: String) -> Result<Array, Error>`
- `pub fn try_sqlite_query_named(db: *int, sql: String) -> Result<Array, Error>`
- `pub fn sqlite_begin(db: *int) -> bool`
- `pub fn sqlite_commit(db: *int) -> bool`
- `pub fn sqlite_rollback(db: *int) -> bool`
- `pub fn sqlite_query_int(db: *int, sql: String) -> Array` — Filas de int REALES de 64 bits (sqlite3_column_int64) — la vía tipada para columnas numéricas, sin string_to_int. Una columna no numérica da 0, y un NULL también: si hay que distinguirlos, leer esa columna con sqlite_query y sqlite_is_null().
- `pub fn sqlite_query_one_int(db: *int, sql: String) -> int` — Primera columna de la primera fila como int real de 64 bits; 0 si no hay filas (y 0 también si la celda es NULL — para distinguirlos, sqlite_query_one_str + sqlite_is_null()).
- `pub fn sqlite_query_one_str(db: *int, sql: String) -> String` — Primera columna de la primera fila como String; "" si no hay filas. Una celda SQL NULL vuelve como sqlite_null() — preguntar con sqlite_is_null().
- `pub fn sqlite_exec_params(db: *int, sql: String, params: Array) -> bool` — TODOS los params como String (binding textual), también los numéricos: ["7", "ana"] y no [7, "ana"]. Para pasar un SQL NULL, sqlite_null() en esa posición.
- `pub fn sqlite_query_params(db: *int, sql: String, params: Array) -> Array` — Query con params (todos String, binding textual; sqlite_null() para pasar un SQL NULL). Celdas del resultado: String, como sqlite_query — NULL vía sqlite_is_null().
- `pub fn sqlite_migrate_init(db: *int) -> bool`
- `pub fn sqlite_migrate_version(db: *int) -> int`
- `pub fn sqlite_migrate(db: *int, version: int, name: String, sql: String) -> bool`
- `pub fn sqlite_tables(db: *int) -> Array`
- `pub fn sqlite_table_exists(db: *int, name: String) -> bool`
- `pub fn sqlite_count(db: *int, table: String) -> int` — SELECT COUNT(*) de la tabla, como int real.

## Serialización & datos

### `std/json`

`import "std/json"` — 20 funciones:

- `pub fn json_null() -> Array`
- `pub fn json_bool(val: bool) -> Array`
- `pub fn json_number(val: int) -> Array`
- `pub fn json_float(val: float) -> Array`
- `pub fn json_string(val: String) -> Array`
- `pub fn json_array(items: Array) -> Array`
- `pub fn json_object(keys: Array, vals: Array) -> Array`
- `pub fn json_type(val: Array) -> String`
- `pub fn json_get(obj: Array, key: String) -> Array`
- `pub fn try_json_get(obj: Array, key: String) -> Result<Array, Error>`
- `pub fn json_as_string(val: Array) -> String`
- `pub fn json_as_int(val: Array) -> int`
- `pub fn json_as_float(val: Array) -> float`
- `pub fn json_array_get(arr: Array, i: int) -> Array`
- `pub fn try_json_array_get(arr: Array, i: int) -> Result<Array, Error>`
- `pub fn json_array_len(arr: Array) -> int`
- `pub fn json_escape(s: String) -> String`
- `pub fn json_stringify(val: Array) -> String`
- `pub fn json_parse(input: String) -> Array`
- `pub fn try_json_parse(input: String) -> Result<Array, Error>`

### `std/toml`

`import "std/toml"` — 6 funciones:

- `pub fn toml_parse(content: String) -> Map<String>`
- `pub fn toml_array_len(parsed: Map<String>, name: String) -> int`
- `pub fn toml_get(parsed: Map<String>, key: String, default_val: String) -> String`
- `pub fn toml_get_int(parsed: Map<String>, key: String, default_val: int) -> int`
- `pub fn toml_get_bool(parsed: Map<String>, key: String, default_val: bool) -> bool`
- `pub fn toml_has(parsed: Map<String>, key: String) -> bool`

### `std/csv`

`import "std/csv"` — 14 funciones:

- `pub fn parse(text: String) -> CsvDoc` — Parse CSV text into a CsvDoc (auto-detect headers: first row is headers).
- `pub fn parse_with_delimiter(text: String, delimiter: String, has_header: bool) -> CsvDoc` — Parse CSV text with custom delimiter and header setting.
- `pub fn get_all_rows(doc: CsvDoc) -> Array` — Get all rows (including header if present).
- `pub fn headers(doc: CsvDoc) -> Array` — Get header row (first row). Returns empty Array if no header.
- `pub fn data_rows(doc: CsvDoc) -> Array` — Get data rows (skip header if present).
- `pub fn get_row(doc: CsvDoc, idx: int) -> Array` — Get a specific row by index (0-based, counting from header if present).
- `pub fn get_field(row: Array, col: int) -> String` — Get a field value from a row by column index.
- `pub fn get_by_name(doc: CsvDoc, row: Array, col_name: String) -> String` — Get a field value from a data row by column name (using header).
- `pub fn row_count(doc: CsvDoc) -> int` — Get number of rows (including header if present).
- `pub fn col_count(doc: CsvDoc) -> int` — Get number of columns (from first row).
- `pub fn stringify(doc: CsvDoc) -> String` — Serialize a CsvDoc back to CSV text.
- `pub fn stringify_with_delimiter(doc: CsvDoc, delimiter: String) -> String` — Serialize with custom delimiter.
- `pub fn new_doc(header_names: Array) -> CsvDoc` — Create an empty CsvDoc with given headers.
- `pub fn add_row(doc: CsvDoc, row: Array)` — Add a row to an existing CsvDoc.

### `std/base64`

`import "std/base64"` — 4 funciones:

- `pub fn base64_encode(input: String) -> String`
- `pub fn base64_decode(input: String) -> String`
- `pub fn base64url_encode(input: String) -> String`
- `pub fn base64url_decode(input: String) -> String`

### `std/msgpack`

`import "std/msgpack"` — 14 funciones:

- `pub fn msgpack_nil() -> String`
- `pub fn msgpack_bool(v: bool) -> String`
- `pub fn msgpack_int(v: int) -> String`
- `pub fn msgpack_str(s: String) -> String`
- `pub fn msgpack_array(items: Array) -> String`
- `pub fn msgpack_type(data: String) -> String`
- `pub fn msgpack_unpack_int(data: String) -> int`
- `pub fn msgpack_unpack_str(data: String) -> String`
- `pub fn msgpack_unpack_bool(data: String) -> bool`
- `pub fn msgpack_packed_size(data: String) -> int`
- `pub fn msgpack_pack_byte(v: int) -> String`
- `pub fn msgpack_pack_uint16(v: int) -> String`
- `pub fn msgpack_size(data: String) -> int`
- `pub fn msgpack_is_nil(data: String) -> bool`

### `std/compress`

`import "std/compress"` — 10 funciones:

- `pub fn compress(data: String) -> String`
- `pub fn decompress(data: String, original_size: int) -> String`
- `pub fn compress_size(data: String) -> int`
- `pub fn inflate(data: String) -> String`
- `pub fn gunzip(data: String) -> String`
- `pub fn inflate_raw(data: String) -> String`
- `pub fn compression_ratio(original: String, compressed_size: int) -> int`
- `pub fn base64_encode(data: String) -> String`
- `pub fn base64_decode(encoded: String) -> String`
- `pub fn hex_to_b64(hex: String) -> String`

### Builtins globales (sin `import`)

- `resp_read_command_fast` (1 arg)
- `resp_write_bulk` (2 args)

## Archivos & I/O

### `std/io`

`import "std/io"` — 2 funciones:

- `pub fn println(s: String)`
- `pub fn read_stdin_all() -> String`

### `std/fs`

`import "std/fs"` — 2 funciones:

- `pub fn try_read_file(path: String) -> Result<String, Error>`
- `pub fn try_write_file(path: String, content: String) -> Result<int, Error>`

### `std/file`

`import "std/file"` — 2 funciones:

- `pub fn read_text(path: String) -> String`
- `pub fn write_text(path: String, content: String)`

### Builtins globales (sin `import`)

- `fdatasync` (1 arg)
- `file_close` (1 arg)
- `file_exists` (1 arg) — bool
- `file_flush` (1 arg)
- `file_open` (2 args)
- `file_read_bytes` (2 args)
- `file_read_line` (1 arg)
- `file_seek` (3 args)
- `file_tell` (1 arg)
- `file_write_bytes` (2 args)
- `file_write_string` (2 args)
- `fsync` (1 arg)
- `include_bytes` (1 arg) — String — embeds a BINARY file **at compile time**: the bytes travel inside the executable, so the program keeps working if it is copied alone (a font, an icon, a seed database, a template).
- `mkdir` (1 arg)
- `print` (1 arg) — to stdout
- `print_no_newline` (1 arg) — to stdout
- `read_file` (1 arg) — String — binary-safe on read (NUL bytes included, see `chr-zero-nul-byte` gotcha);
- `read_line` (0 args) — read a line from stdin.
- `readdir` (1 arg)
- `remove_file` (1 arg)
- `rename_file` (2 args)
- `stdin_eof` (0 args)
- `write_file` (2 args) — bool — binary-safe on write, NUL bytes included (fixed at the root 2026-09-15, see `chr-zero-nul-byte` gotcha);

## Red

### `std/http2`

`import "std/http2"` — 3 funciones:

- `pub fn h2_check_upgrade(request: String) -> bool`
- `pub fn h2_send_response(fd: int, stream_id: int, status: int, resp_headers: Array, body: String) -> int`
- `pub fn h2_serve(port: int, num_workers: int, cb: Fn) -> int`

### `std/net`

`import "std/net"` — 17 funciones:

- `pub fn try_tcp_connect(host: String, port: int) -> Result<int, Error>`
- `pub fn try_tcp_listen(host: String, port: int) -> Result<int, Error>`
- `pub fn try_udp_bind(host: String, port: int) -> Result<int, Error>`
- `pub fn try_tcp_accept(listen_fd: int) -> Result<int, Error>`
- `pub fn try_tcp_read(fd: int, max: int) -> Result<String, Error>`
- `pub fn try_tcp_write(fd: int, data: String) -> Result<int, Error>` — Sin timeout por default (como tcp_write): un peer stalled con ventana cero bloquea PARA SIEMPRE — en write-paths que no pueden colgarse (drains de shutdown, broadcasts) aplicar tcp_set_timeout(fd, s) primero.
- `pub fn try_udp_sendto(fd: int, data: String, host: String, port: int) -> Result<int, Error>`
- `pub fn try_udp_recvfrom(fd: int, max: int) -> Result<String, Error>`
- `pub fn try_resolve(host: String) -> Result<String, Error>`
- `pub fn try_tcp_read_line(fd: int) -> Result<String, Error>`
- `pub fn try_tcp_read_partial(fd: int, max: int) -> Result<String, Error>`
- `pub fn try_tcp_read_exact(fd: int, n: int) -> Result<String, Error>`
- `pub fn try_tcp_shutdown(fd: int, mode: int) -> Result<int, Error>` — La forma correcta de despertar un recv() bloqueado en OTRO thread — tcp_close NO lo despierta y el fd reciclado puede robarle bytes a una conexión nueva; patrón: el no-dueño hace shutdown, solo el reader dueño hace close.
- `pub fn try_tcp_set_timeout(fd: int, secs: int) -> Result<int, Error>`
- `pub fn try_getpeername(fd: int) -> Result<String, Error>`
- `pub fn try_local_port(fd: int) -> Result<int, Error>`
- `pub fn try_resolve_ptr(ip: String) -> Result<String, Error>`

### `std/url`

`import "std/url"` — 6 funciones:

- `pub fn url_encode(s: String) -> String`
- `pub fn url_decode(s: String) -> String`
- `pub fn build_query_string(keys: Array, values: Array) -> String`
- `pub fn html_escape(s: String) -> String`
- `pub fn html_unescape(s: String) -> String`
- `pub fn render_template(tmpl: String, data: Map<String>) -> String`

### Builtins globales (sin `import`)

- `getpeername` (1 arg)
- `http_parse_request_fast` (1 arg)
- `https_get` (1 arg) — simple GET, NO custom headers, returns the body as a `String`.
- `https_post` (3 args)
- `net_interfaces` (0 args) — interfaces IPv4 locales (v0.24.22): Array PLANO de tripletas String `[nombre, ip, máscara, ...]` (stride 3, loopback incluida)
- `resolve` (1 arg) — (IPv4 del hostname, "" si no resuelve)
- `resolve_ptr` (1 arg) — reverse DNS (v0.24.22): hostname de una IPv4, "" si no hay PTR o la IP es inválida
- `tcp_accept` (1 arg)
- `tcp_close` (1 arg)
- `tcp_connect` (2 args)
- `tcp_listen` (2 args)
- `tcp_read` (2 args)
- `tcp_read_exact` (2 args)
- `tcp_read_line` (1 arg)
- `tcp_read_partial` (2 args)
- `tcp_set_timeout` (2 args) — SO_RCVTIMEO/SO_SNDTIMEO en un socket cliente (0 = sin timeout).
- `tcp_shutdown` (2 args)
- `tcp_write` (2 args)
- `tls_accept` (1 arg)
- `tls_close` (1 arg)
- `tls_close_conn` (1 arg)
- `tls_connect` (2 args) — , `tls_read`, `tls_write`, `tls_close`
- `tls_read` (2 args)
- `tls_read_line` (1 arg)
- `tls_read_nonblock` (2 args)
- `tls_read_partial` (2 args)
- `tls_server_add_cert` (3 args)
- `tls_server_init` (2 args) — , `tls_server_add_cert`, `tls_accept`, `tls_read_line`, `tls_write_conn`, `tls_close_conn`
- `tls_wait_readable` (2 args)
- `tls_write` (2 args)
- `tls_write_conn` (2 args)
- `udp_bind` (2 args) — (fd, o -1;
- `udp_recvfrom` (2 args)
- `udp_sendto` (4 args)

## Concurrencia

### `std/sync`

`import "std/sync"` — 22 funciones:

- `pub fn wg_new() -> WaitGroup` — Create a new WaitGroup with count 0.
- `pub fn wg_add(wg: WaitGroup, delta: int)` — Add delta to WaitGroup counter. Call before spawning goroutines.
- `pub fn wg_done(wg: WaitGroup)` — Decrement WaitGroup counter by 1. Call when goroutine finishes.
- `pub fn wg_wait(wg: WaitGroup)` — Block until WaitGroup counter reaches 0.
- `pub fn wg_wait_timeout(wg: WaitGroup, timeout_ms: int) -> bool` — Like wg_wait but gives up after timeout_ms: true = counter reached 0 (quiesced), false = timeout with workers still pending. The shutdown/drain idiom: the deadline becomes a CEILING instead of a fixed sleep — exit as soon as workers finish, wait at most timeout_ms.
- `pub fn wg_count(wg: WaitGroup) -> int` — Get current WaitGroup count.
- `pub fn sem_new(initial: int) -> Semaphore` — Create a new Semaphore with initial count.
- `pub fn sem_acquire(sem: Semaphore)` — Acquire one permit (blocks until available).
- `pub fn sem_release(sem: Semaphore)` — Release one permit.
- `pub fn sem_try_acquire(sem: Semaphore) -> bool` — Try to acquire without blocking. Returns true if acquired.
- `pub fn sem_count(sem: Semaphore) -> int` — Get current semaphore count.
- `pub fn once_new() -> Once` — Create a new Once.
- `pub fn once_do(o: Once, f: Fn() -> int)` — Execute fn exactly once. Subsequent calls are no-ops.
- `pub fn once_done(o: Once) -> bool` — Check if once has been executed.
- `pub fn mutex_guard_new() -> MutexGuard` — Create a new MutexGuard.
- `pub fn lock(guard: MutexGuard)` — Lock the mutex.
- `pub fn unlock(guard: MutexGuard)` — Unlock the mutex.
- `pub fn counter_new(initial: int) -> AtomicCounter` — Create a new AtomicCounter with initial value.
- `pub fn counter_inc(c: AtomicCounter) -> int` — Atomically increment and return new value.
- `pub fn counter_dec(c: AtomicCounter) -> int` — Atomically decrement and return new value.
- `pub fn counter_get(c: AtomicCounter) -> int` — Get current value atomically.
- `pub fn counter_set(c: AtomicCounter, val: int)` — Set value atomically.

### Builtins globales (sin `import`)

- `__go_spawn` (1 arg)
- `atomic_add` (2 args)
- `atomic_cas` (3 args)
- `atomic_sub` (2 args)
- `channel_destroy` (1 arg)
- `channel_new` (1 arg) — Map (NOT int!)
- `channel_recv` (1 arg)
- `channel_send` (2 args)
- `condvar_broadcast` (1 arg)
- `condvar_new` (0 args) — Map (opaque handle), `condvar_wait(cv, m)` (hold m locked), `condvar_signal(cv)`, `condvar_broadcast(cv)`, `condvar_timedwait(cv, m, ms)` → 0 signaled / 1 timeout
- `condvar_signal` (1 arg)
- `condvar_timedwait` (3 args)
- `condvar_wait` (2 args)
- `go_sleep` (1 arg)
- `mutex_destroy` (1 arg)
- `mutex_lock` (1 arg)
- `mutex_new` (0 args) — Map (opaque handle, NOT int! — `let m: int = mutex_new()` is NYX1003 since v0.24.28;
- `mutex_unlock` (1 arg)
- `rwlock_destroy` (1 arg)
- `rwlock_new` (0 args) — Map (opaque handle), `rwlock_rdlock(l)` / `rwlock_wrlock(l)`, `rwlock_tryrdlock(l)` / `rwlock_trywrlock(l)` → 0 acquired / 1 busy, `rwlock_unlock(l)`, `rwlock_destroy(l)` — multi-reader/single-writer;
- `rwlock_rdlock` (1 arg)
- `rwlock_tryrdlock` (1 arg)
- `rwlock_trywrlock` (1 arg)
- `rwlock_unlock` (1 arg)
- `rwlock_wrlock` (1 arg)
- `spawn_task` (1 arg)
- `task_await` (1 arg)
- `task_cancel` (1 arg)
- `task_race` (2 args)
- `thread_join` (1 arg)
- `thread_spawn` (1 arg)

## Cripto & seguridad

### `std/random`

`import "std/random"` — 9 funciones:

- `pub fn random_seed(seed: int)`
- `pub fn random_int() -> int`
- `pub fn random_range(min: int, max: int) -> int`
- `pub fn random_float() -> float`
- `pub fn random_bool() -> bool`
- `pub fn random_bytes(n: int) -> String`
- `pub fn random_pick_index(arr: Array) -> int`
- `pub fn random_shuffle(arr: Array) -> Array`
- `pub fn random_sample_indices(n: int, k: int) -> Array`

### `std/uuid`

`import "std/uuid"` — 3 funciones:

- `pub fn uuid_v4() -> String`
- `pub fn uuid_is_valid(s: String) -> bool`
- `pub fn uuid_version(s: String) -> int`

### `std/tls`

`import "std/tls"` — 29 funciones:

- `pub fn tls_version(h: int) -> String`
- `pub fn tls_cipher(h: int) -> String`
- `pub fn tls_cipher_bits(h: int) -> int`
- `pub fn tls_verify_result(h: int) -> int`
- `pub fn tls_verify_error(code: int) -> String`
- `pub fn tls_peer_cert(h: int) -> Array`
- `pub fn tls_peer_chain(h: int) -> Array`
- `pub fn tls_peer_cert_pem(h: int) -> String`
- `pub fn cert_subject(cert: Array) -> String`
- `pub fn cert_issuer(cert: Array) -> String`
- `pub fn cert_not_before(cert: Array) -> int`
- `pub fn cert_not_after(cert: Array) -> int`
- `pub fn cert_serial(cert: Array) -> String`
- `pub fn cert_sig_alg(cert: Array) -> String`
- `pub fn cert_fingerprint_sha256(cert: Array) -> String`
- `pub fn cert_sans(cert: Array) -> String`
- `pub fn tls_set_ca_file(path: String) -> bool`
- `pub fn tls_connect_checked(host: String, port: int) -> int`
- `pub fn tls_connect_verified(host: String, port: int) -> int`
- `pub fn tls_connect_verified_system(host: String, port: int) -> int`
- `pub fn tls_upgrade_fd(fd: int, host: String) -> int`
- `pub fn tls_upgrade_fd_verified(fd: int, host: String) -> int`
- `pub fn tls_upgrade_fd_ca_only(fd: int, host: String) -> int`
- `pub fn cert_is_expired(cert: Array) -> bool`
- `pub fn cert_days_to_expiry(cert: Array) -> int`
- `pub fn cert_is_self_signed(cert: Array) -> bool`
- `pub fn tls_is_weak(h: int) -> bool`
- `pub fn try_tls_connect(host: String, port: int, verify_mode: int, connect_ms: int) -> Result<int, Error>`
- `pub fn try_tls_read(h: int, max_bytes: int, timeout_ms: int) -> Result<String, Error>`

### Builtins globales (sin `import`)

- `constant_time_eq` (2 args) — compara SIEMPRE todos los bytes.
- `crc32_bytes` (1 arg)
- `hmac_sha256` (2 args) — devuelven **hex**.
- `hmac_sha256_raw` (2 args) — los **32 bytes** del digest, sin formatear.
- `md5` (1 arg) — devuelven **hex**.
- `pbkdf2_hmac_sha256` (4 args) — PBKDF2-HMAC-SHA256 (RFC 2898), `dklen` bytes crudos.
- `sha256` (1 arg) — devuelven **hex**.
- `sha256_raw` (1 arg) — los **32 bytes** del digest, sin formatear.

## Tiempo

### `std/time`

`import "std/time"` — 27 funciones:

- `pub fn days_from_civil(y0: int, m: int, d: int) -> int`
- `pub fn time_breakdown(epoch: int) -> DateTime` — Descompone un instante en su vista UTC. Aritmética pura: cero FFI, cero `localtime()`, sin lock. Reemplaza las 7 llamadas por campo que costaba antes.
- `pub fn time_from_civil(y: int, mo: int, d: int, h: int, mi: int, s: int) -> int` — Instante UTC a partir de una fecha civil. Normaliza meses fuera de [1,12] (mes 13 = enero del año siguiente) y días fuera de rango, igual que `mktime`, pero sin depender del huso del proceso.
- `pub fn time_is_leap_year(y: int) -> bool` — true si `y` es bisiesto en el calendario gregoriano (regla 4 / 100 / 400).
- `pub fn time_days_in_month(y: int, m: int) -> int` — Días que tiene el mes `m` (1-12) del año `y`. 0 si el mes está fuera de rango.
- `pub fn time_add_seconds(epoch: int, n: int) -> int` — Suma (o resta, con `n` negativo) segundos.
- `pub fn time_add_days(epoch: int, n: int) -> int` — Suma (o resta) días. Un día son 86400 s EXACTOS porque el instante canónico es UTC — en hora local un día civil puede durar 23 o 25 h al cruzar un cambio de horario de verano, y esta cuenta sería falsa. Otra razón por la que el canónico es UTC y no local.
- `pub fn time_add_months(epoch: int, n: int) -> int` — Suma (o resta) meses de calendario, con SATURACIÓN DE FIN DE MES: 31-ene + 1 mes = 28-feb (29 en bisiesto), no el 3 de marzo.  Es la convención que usan los ERP para vencimientos y es la que esperan las personas, pero hay que saber lo que se compra: la operación NO es reversible (31-ene +1 mes -1 mes = 28-ene) ni asociativa. Ninguna convención logra las dos cosas —el problema es del calendario, no de la implementación—; ésta se eligió porque «vence el 31 y febrero no tiene 31» tiene una sola respuesta razonable en un vencimiento, y desbordar al mes siguiente no lo es.
- `pub fn time_add_years(epoch: int, n: int) -> int` — Suma (o resta) años, con la misma saturación: 29-feb + 1 año = 28-feb.
- `pub fn time_diff_seconds(a: int, b: int) -> int` — Diferencia `a - b` en segundos. Exacta, sin bordes.
- `pub fn time_diff_days(a: int, b: int) -> int` — Diferencia en DÍAS CIVILES UTC entre `a` y `b`: cuenta fronteras de medianoche cruzadas, no bloques de 86400 s. De 23:59 a 00:01 hay 1 día, no 0 — que es lo que quiere decir «cuántos días faltan para el vencimiento».
- `pub fn time_start_of_day(epoch: int) -> int` — Medianoche UTC del día en que cae `epoch`.
- `pub fn time_end_of_day(epoch: int) -> int` — Último segundo del día UTC (23:59:59) en que cae `epoch`.
- `pub fn time_start_of_month(epoch: int) -> int` — Medianoche UTC del día 1 del mes en que cae `epoch`.
- `pub fn time_end_of_month(epoch: int) -> int` — Último segundo del último día del mes en que cae `epoch`. El vencimiento «fin de mes» de un ERP.
- `pub fn pad2(n: int) -> String`
- `pub fn time_to_iso(epoch: int) -> String` — ISO 8601 en UTC, forma extendida: `2020-06-15T12:30:00Z`.
- `pub fn time_to_iso_offset(epoch: int, offset_s: int) -> String` — ISO 8601 con un offset explícito en segundos al este de UTC, forma EXTENDIDA: `2020-06-15T08:30:00-04:00`.  El offset se escribe `-04:00` y no `-0400` a propósito: la forma básica es la que emite `strftime("%z")` y es la que rechazan los parsers estrictos de JSON Schema (`format: date-time`, que exige RFC 3339). Que el formato de salida por omisión sea el que todo el mundo puede leer es la mitad del valor de tener este módulo.
- `pub fn try_time_to_iso_local(epoch: int) -> Result<String, Error>` — ISO 8601 en la hora local del proceso, con su offset real en ese instante. Err si la plataforma no sabe resolver la hora local — nunca cae a UTC en silencio.
- `pub fn time_to_http_date(epoch: int) -> String` — Fecha HTTP de RFC 7231: `Mon, 15 Jun 2020 12:30:00 GMT`. SIEMPRE GMT, como exige la norma, sin depender del huso de la máquina.
- `pub fn time_format_utc(epoch: int, fmt: String) -> String` — `strftime` sobre la descomposición UTC. Para formatos arbitrarios; para ISO 8601 usar `time_to_iso`, que no depende de libc.
- `pub fn try_time_parse_utc(texto: String, fmt: String) -> Result<int, Error>` — Parsea `texto` con un formato estilo `strptime` y lo interpreta como UTC. El resultado NO depende del `TZ` del proceso — a diferencia del builtin `datetime_parse`, que con `TZ=America/Caracas` da un epoch 4 h distinto del que da con `TZ=UTC` para el mismo texto.
- `pub fn try_time_parse_local(texto: String, fmt: String) -> Result<int, Error>` — Igual que `try_time_parse_utc` pero interpreta el texto en el huso LOCAL del proceso. Para cuando «las 9 de la mañana» significa las 9 de acá; el resultado depende del `TZ`, y ése es el punto.
- `pub fn try_time_from_iso(s: String) -> Result<int, Error>` — Parsea ISO 8601 / RFC 3339 y devuelve el instante. Acepta lo que las bases devuelven de verdad: `Z`, `+00:00`, `+0000`, el `+00` de PostgreSQL, separador `T` o espacio, y segundos fraccionarios (que trunca).  **EXIGE huso explícito.** Un texto sin offset (`"2020-06-15 12:30:00"`) da Err, no un instante: el texto no dice qué instante es, y suponer UTC sería inventar el dato. Si sabes que es UTC, dilo con `try_time_from_iso_assuming_utc` — el nombre deja la suposición escrita en el código que la hace, que es donde tiene que estar cuando alguien la audite.
- `pub fn try_time_from_iso_assuming_utc(s: String) -> Result<int, Error>` — Igual que `try_time_from_iso`, pero un texto SIN huso se interpreta como UTC. La suposición la hace quien llama, y el nombre la deja escrita. Para columnas `timestamp without time zone` que se sabe que se guardaron en UTC.
- `pub fn try_time_utc_offset(epoch: int) -> Result<int, Error>` — Segundos al este de UTC vigentes en ese instante (varía con el horario de verano). Err si la plataforma no lo resuelve — nunca devuelve 0, que sería afirmar «es UTC» sin saberlo.
- `pub fn try_time_breakdown_local(epoch: int) -> Result<DateTime, Error>` — Vista descompuesta en la hora LOCAL del proceso. Err si no se puede resolver el huso. Los campos son hora local; el instante sigue siendo el epoch que se pasó.

### Builtins globales (sin `import`)

- `datetime_day` (1 arg)
- `datetime_format` (1 arg)
- `datetime_format_epoch` (2 args)
- `datetime_from_epoch` (1 arg)
- `datetime_hour` (1 arg)
- `datetime_minute` (1 arg)
- `datetime_month` (1 arg)
- `datetime_now` (0 args)
- `datetime_parse` (2 args)
- `datetime_second` (1 arg)
- `datetime_weekday` (1 arg)
- `datetime_year` (1 arg)
- `monotonic_ms` (0 args) — MONOTONIC clock, counting from when the MACHINE booted.
- `monotonic_us` (0 args) — MONOTONIC clock, counting from when the MACHINE booted.
- `sleep` (1 arg)
- `time` (0 args) — `time_epoch()`, `time_ms()` → `monotonic_ms()`, `time_us()` → `monotonic_us()`.
- `time_epoch` (0 args) — WALL clock, seconds since the Unix epoch.
- `time_ms` (0 args)
- `time_us` (0 args)

## Strings & texto

### `std/regex`

`import "std/regex"` — 5 funciones:

- `pub fn regex_is_valid(pattern: String) -> bool` — Whether `pattern` COMPILES as a POSIX ERE (independent of what it matches). Use it to validate a pattern that comes from data before handing it to `regex_is_match`/`regex_replace`, which cannot tell an invalid pattern from one that simply does not match.
- `pub fn regex_match(text: String, pattern: String) -> String` — Return the first match of `pattern` in `text`, or "" if none.
- `pub fn regex_is_match(text: String, pattern: String) -> bool` — Whether `pattern` matches anywhere in `text`.
- `pub fn regex_replace(text: String, pattern: String, replacement: String) -> String` — Replace the first match of `pattern` in `text` with `replacement`.
- `pub fn regex_replace_all(text: String, pattern: String, replacement: String) -> String` — Replace all matches of `pattern` in `text` with `replacement`.

### Builtins globales (sin `import`)

- `char_to_string` (1 arg) — String
- `float_to_int` (1 arg)
- `float_to_string` (1 arg) — (y `print` de un `float`) emite los dígitos MÍNIMOS que releen al mismo double: `0.1 + 0.2` → `0.30000000000000004`, `123456789.0` → `123456789.0`;
- `int_to_float` (1 arg)
- `int_to_string` (1 arg) — String
- `regex_is_match` (2 args)
- `regex_match` (2 args)
- `regex_replace` (3 args)
- `regex_replace_all` (3 args)
- `str_byte_length` (1 arg) — byte length (for HTTP headers)
- `string_from_bytes` (3 args)
- `string_from_cstr` (1 arg)
- `string_to_float` (1 arg) — **abortan el proceso (exit 1)** si `s` es vacío o no numérico
- `string_to_float_or` (2 args) — variantes SEGURAS: devuelven `def` en vez de abortar (usar para datos de red/usuario no confiables)
- `string_to_int` (1 arg) — **abortan el proceso (exit 1)** si `s` es vacío o no numérico
- `string_to_int_or` (2 args) — variantes SEGURAS: devuelven `def` en vez de abortar (usar para datos de red/usuario no confiables)

## Matemática

### Builtins globales (sin `import`)

- `math_acos` (1 arg)
- `math_asin` (1 arg)
- `math_atan` (1 arg)
- `math_atan2` (2 args)
- `math_ceil` (1 arg)
- `math_cos` (1 arg)
- `math_exp` (1 arg)
- `math_fabs` (1 arg)
- `math_floor` (1 arg)
- `math_fmod` (2 args)
- `math_log` (1 arg)
- `math_log10` (1 arg)
- `math_log2` (1 arg)
- `math_round` (1 arg)
- `math_sin` (1 arg)
- `math_sqrt` (1 arg)
- `math_tan` (1 arg)

## Colecciones & estructuras

### `std/linkedlist`

`import "std/linkedlist"` — 27 funciones:

- `pub fn deque_new() -> Array`
- `pub fn deque_push_back(d: Array, val: String)`
- `pub fn deque_push_front(d: Array, val: String)`
- `pub fn deque_pop_back(d: Array) -> String`
- `pub fn dq_new() -> Array`
- `pub fn dq_push_back(storage: Array, val: String)`
- `pub fn dq_push_front(storage: Array, val: String)`
- `pub fn dq_pop_front(storage: Array) -> String`
- `pub fn dq_pop_back(storage: Array) -> String`
- `pub fn dq_peek_front(storage: Array) -> String`
- `pub fn dq_peek_back(storage: Array) -> String`
- `pub fn dq_size(storage: Array) -> int`
- `pub fn dq_is_empty(storage: Array) -> bool`
- `pub fn ll_new() -> Array`
- `pub fn ll_push_front(storage: Array, val: String)`
- `pub fn ll_push_back(storage: Array, val: String)`
- `pub fn ll_pop_front(storage: Array) -> String`
- `pub fn ll_peek_front(storage: Array) -> String`
- `pub fn ll_size(storage: Array) -> int`
- `pub fn ll_is_empty(storage: Array) -> bool`
- `pub fn ll_to_array(storage: Array) -> Array`
- `pub fn pq_new() -> Array`
- `pub fn pq_push(storage: Array, val: String, priority: int)`
- `pub fn pq_pop(storage: Array) -> String`
- `pub fn pq_peek(storage: Array) -> String`
- `pub fn pq_size(storage: Array) -> int`
- `pub fn pq_is_empty(storage: Array) -> bool`

### `std/matrix`

`import "std/matrix"` — 14 funciones:

- `pub fn mat_new(rows: int, cols: int) -> Array`
- `pub fn mat_identity(n: int) -> Array`
- `pub fn mat_get(mat: Array, r: int, c: int) -> int`
- `pub fn mat_set(mat: Array, r: int, c: int, val: int)`
- `pub fn mat_rows(mat: Array) -> int`
- `pub fn mat_cols(mat: Array) -> int`
- `pub fn mat_add(a: Array, b: Array) -> Array`
- `pub fn mat_sub(a: Array, b: Array) -> Array`
- `pub fn mat_mul(a: Array, b: Array) -> Array`
- `pub fn mat_scale(m: Array, scalar: int) -> Array`
- `pub fn mat_transpose(m: Array) -> Array`
- `pub fn mat_trace(m: Array) -> int`
- `pub fn mat_frobenius_sq(m: Array) -> int`
- `pub fn mat_print(m: Array)`

### `std/stack`

`import "std/stack"` — 1 funciones:

- `pub fn stack_new() -> Stack`

### `std/btreemap`

`import "std/btreemap"` — 13 funciones:

- `pub fn btree_new() -> Map`
- `pub fn btree_set(bt: Map<String>, key: String, val: String)`
- `pub fn btree_set_int(bt: Map<String>, key: String, val: int)`
- `pub fn btree_get(bt: Map<String>, key: String) -> String`
- `pub fn btree_get_int(bt: Map<String>, key: String) -> int`
- `pub fn btree_has(bt: Map<String>, key: String) -> bool`
- `pub fn btree_remove(bt: Map<String>, key: String)`
- `pub fn btree_keys_sorted(bt: Map<String>) -> Array`
- `pub fn btree_min_key(bt: Map<String>) -> String`
- `pub fn btree_max_key(bt: Map<String>) -> String`
- `pub fn btree_size(bt: Map<String>) -> int`
- `pub fn btree_entries(bt: Map<String>) -> Array`
- `pub fn btree_range(bt: Map<String>, lo: String, hi: String) -> Array`

### `std/graph`

`import "std/graph"` — 13 funciones:

- `pub fn graph_new(n: int) -> Array`
- `pub fn graph_node_count(g: Array) -> int`
- `pub fn graph_edge_count(g: Array) -> int`
- `pub fn graph_add_edge(g: Array, src: int, dst: int, weight: int)`
- `pub fn graph_add_undirected(g: Array, a: int, b: int, weight: int)`
- `pub fn graph_neighbors(g: Array, v: int) -> Array`
- `pub fn graph_has_edge(g: Array, src: int, dst: int) -> bool`
- `pub fn graph_bfs(g: Array, start: int) -> Array`
- `pub fn graph_bfs_path(g: Array, start: int, end_node: int) -> Array`
- `pub fn graph_dfs(g: Array, start: int) -> Array`
- `pub fn graph_has_cycle(g: Array) -> bool`
- `pub fn graph_dijkstra(g: Array, start: int) -> Array`
- `pub fn graph_dist(dijkstra_result: Array, end_node: int) -> int`

## Memoria

### `std/arena`

`import "std/arena"` — 8 funciones:

- `pub fn arena_align_up(n: int, align: int) -> int`
- `pub fn arena_new(capacity: int) -> Array`
- `pub fn arena_capacity(a: Array) -> int`
- `pub fn arena_used(a: Array) -> int`
- `pub fn arena_remaining(a: Array) -> int`
- `pub fn arena_alloc(a: Array, size: int, align: int) -> *u8`
- `pub fn arena_reset(a: Array)`
- `pub fn arena_free(a: Array)`

### Builtins globales (sin `import`)

- `alloc` (1 arg)
- `free` (1 arg)
- `volatile_load` (1 arg)
- `volatile_store` (2 args)

## Tooling & CLI

### `std/semver`

`import "std/semver"` — 6 funciones:

- `pub fn parse(s: String) -> Version` — Parse a semver string into a Version struct. Supports: "1.2.3", "1.2.3-alpha.1", "v1.2.3"
- `pub fn compare(a: String, b: String) -> int` — Compare two semver strings. Returns -1, 0, or 1.
- `pub fn compare_versions(a: Version, b: Version) -> int` — Compare two Version structs. Returns -1, 0, or 1.
- `pub fn satisfies(version: String, constraint: String) -> bool` — Check if version string satisfies a constraint. Supported constraints: "=1.0.0", ">=1.0.0", ">1.0.0", "<=1.0.0", "<1.0.0", "*", "^1.0.0", "~1.0.0"
- `pub fn to_string(v: Version) -> String` — Format a Version to string.
- `pub fn resolve(versions: Array, constraint: String) -> String` — Find the best matching version from a list given a constraint. Returns "" if no match. Versions should be sorted ascending.

### `std/log`

`import "std/log"` — 6 funciones:

- `pub fn log_set_level(level: int)`
- `pub fn log_get_level() -> int`
- `pub fn log_debug(msg: String)`
- `pub fn log_info(msg: String)`
- `pub fn log_warn(msg: String)`
- `pub fn log_error(msg: String)`

### `std/args`

`import "std/args"` — 9 funciones:

- `pub fn new_parser(name: String, description: String) -> ArgParser` — Create a new argument parser. name: program name shown in --help description: one-line description shown in --help
- `pub fn add_flag(parser: ArgParser, name: String, short: String, description: String, default_val: bool)` — Add a boolean flag (--flag / -f) with a default value of false.
- `pub fn add_option(parser: ArgParser, name: String, short: String, description: String, default_val: String)` — Add an option that takes a value (--option=VALUE / -o VALUE).
- `pub fn parse(parser: ArgParser, argv: Array) -> ParsedArgs` — Parse command-line arguments from get_args() result. Returns ParsedArgs with values, positional args, and any error.
- `pub fn get_flag(parsed: ParsedArgs, name: String) -> bool` — Get a boolean flag value. Returns false if not set.
- `pub fn get_option(parsed: ParsedArgs, name: String) -> String` — Get a string option value. Returns "" if not set.
- `pub fn get_positional(parsed: ParsedArgs) -> Array` — Get positional arguments (non-flag args).
- `pub fn has_error(parsed: ParsedArgs) -> bool` — Check if parsing had an error.
- `pub fn print_help(parser: ArgParser)` — Print usage/help text.

### Builtins globales (sin `import`)

- `chdir` (1 arg)
- `chr` (1 arg)
- `close_fd` (1 arg)
- `dup2` (2 args)
- `exec` (1 arg) — String — run shell command, capture its stdout (binary-safe, strips trailing `\n`s only).
- `exec_code` (1 arg) — int — run shell command, return its exit code (-1 on error/signal).
- `execvp` (2 args)
- `exit` (1 arg)
- `fork` (0 args)
- `get_args` (0 args) — Array — CLI args
- `getcwd` (0 args)
- `getenv` (1 arg) — String
- `getenv_default` (2 args) — String
- `getpid` (0 args)
- `isatty` (1 arg)
- `kill_process` (2 args)
- `open_fd` (2 args)
- `pipe_new` (0 args)
- `raw_mode_enter` (0 args)
- `raw_mode_exit` (0 args)
- `read_byte` (0 args) — from stdin in raw mode
- `read_byte_timeout` (1 arg) — poll()-based: byte, -1 EOF, -2 timeout/signal (EINTR);
- `setenv` (2 args)
- `signal_handle` (2 args)
- `signal_ignore` (1 arg)
- `signal_reset` (1 arg)
- `stat` (1 arg)
- `term_cols` (0 args)
- `term_flush` (0 args) — stdout without per-call flush (buffered frames).
- `term_rows` (0 args)
- `term_write` (1 arg) — stdout without per-call flush (buffered frames).
- `waitpid` (2 args)

## Otros

### `std/llm`

`import "std/llm"` — 4 funciones:

- `pub fn llm_load_ctx(path: String, n_ctx: int) -> LLM` — Carga un modelo GGUF con n_ctx explícito. Aborta con mensaje claro si falla.
- `pub fn llm_load(path: String) -> LLM` — Carga un modelo GGUF (n_ctx = 2048 por defecto).
- `pub fn llm_generate(l: &LLM, prompt: String, max_tokens: int) -> String` — Genera texto (greedy). Presta el handle — no lo consume.
- `pub fn llm_generate_stream(l: &LLM, prompt: String, max_tokens: int, cb: *i8) -> String` — Genera con STREAMING: cb = c_fn_ptr(mi_cb) donde `fn mi_cb(piece: *i8)` recibe cada token generado (convertir con string_from_cstr adentro). Devuelve además el texto completo.

### `std/template`

`import "std/template"` — 2 funciones:

- `pub fn tpl_partial(name: String, tmpl: String)`
- `pub fn tpl_render(tmpl: String, ctx: Map) -> String`

### `std/pool`

`import "std/pool"` — 18 funciones:

- `pub fn pool_new(max_size: int, timeout_ms: int) -> Array`
- `pub fn pool_capacity(pool: Array) -> int`
- `pub fn pool_available_count(pool: Array) -> int`
- `pub fn pool_in_use_count(pool: Array) -> int`
- `pub fn pool_created_count(pool: Array) -> int`
- `pub fn pool_total_active(pool: Array) -> int`
- `pub fn pool_acquire(pool: Array) -> int`
- `pub fn pool_acquire_wait(pool: Array) -> int`
- `pub fn pool_release(pool: Array, handle: int)`
- `pub fn pool_drain(pool: Array)`
- `pub fn pool_reset(pool: Array)`
- `pub fn stream_new() -> Array`
- `pub fn stream_push(s: Array, val: String)`
- `pub fn stream_close(s: Array)`
- `pub fn stream_poll(s: Array) -> String`
- `pub fn stream_is_done(s: Array) -> bool`
- `pub fn stream_pending(s: Array) -> int`
- `pub fn stream_collect(s: Array) -> Array`

### `std/vdom`

`import "std/vdom"` — 7 funciones:

- `pub fn text(s: String) -> VNode`
- `pub fn h(tag: String, attrs: Array, children: Array) -> VNode`
- `pub fn h_keyed(tag: String, key: String, attrs: Array, children: Array) -> VNode`
- `pub fn on(vnode: VNode, evento: String, handler: Fn) -> VNode`
- `pub fn patch_kind(p: Patch) -> String`
- `pub fn patch_path(p: Patch) -> Array`
- `pub fn vdiff(old: VNode, new: VNode) -> Array`

### `std/browser`

`import "std/browser"` — 17 funciones:

- `export fn browser_fetch(url: String, method: String, body: String, handler: String)`
- `export fn browser_interval(ms: int, handler: String) -> int`
- `export fn browser_timeout(ms: int, handler: String) -> int`
- `export fn browser_clear_timer(id: int)`
- `export fn browser_fetch_fn(url: String, method: String, body: String, handler: Fn)`
- `export fn browser_timeout_fn(ms: int, handler: Fn) -> int`
- `export fn browser_interval_fn(ms: int, handler: Fn) -> int`
- `export fn browser_geo(handler: String)`
- `export fn browser_geo_fn(handler: Fn)`
- `export fn browser_sse_fn(url: String, handler: Fn) -> int`
- `export fn browser_sse_close(id: int)`
- `export fn ls_get(key: String) -> String`
- `export fn ls_set(key: String, value: String)`
- `export fn tz_offset() -> int`
- `export fn match_media(query: String) -> int`
- `export fn browser_get_hash() -> String`
- `export fn browser_on_hashchange(f: Fn)`

### `std/array`

`import "std/array"` — 10 funciones:

- `pub fn array_sum(arr: Array) -> int`
- `pub fn array_min(arr: Array) -> int`
- `pub fn array_max(arr: Array) -> int`
- `pub fn array_reverse(arr: Array) -> Array`
- `pub fn array_contains_int(arr: Array, val: int) -> bool`
- `pub fn array_index_of(arr: Array, val: int) -> int`
- `pub fn sort_int(arr: Array) -> Array`
- `pub fn sort_by(arr: Array, cmp: Fn(int, int) -> int) -> Array`
- `pub fn str_compare(a: String, b: String) -> int`
- `pub fn sort_str(arr: Array) -> Array`

### `std/postgres`

`import "std/postgres"` — 40 funciones:

- `pub fn pg_be32(n: int) -> String`
- `pub fn pg_be16(n: int) -> String`
- `pub fn pg_read_be32(s: String, off: int) -> int`
- `pub fn pg_read_be16(s: String, off: int) -> int`
- `pub fn pg_cstr(s: String) -> String`
- `pub fn pg_msg(tipo: String, payload: String) -> String`
- `pub fn pg_scram_proof(password: String, salt_b64: String, iters: int, client_first_bare: String, server_first: String, client_final_bare: String) -> Array`
- `pub fn pg_scram_attr(msg: String, attr: String) -> String`
- `pub fn pg_conninfo_get(conninfo: String, clave: String, por_defecto: String) -> String`
- `pub fn pg_read_message(fd: int, tls: int) -> Result<Array, Error>`
- `pub fn pg_parse_error(payload: String) -> Error`
- `pub fn pg_sqlstate(e: Error) -> String`
- `pub fn try_pg_connect(conninfo: String) -> Result<PgConn, Error>`
- `pub fn try_pg_close(conn: PgConn) -> Result<int, Error>`
- `pub fn pg_null() -> String`
- `pub fn pg_is_null(valor: String) -> bool`
- `pub fn try_pg_exec(conn: PgConn, sql: String) -> Result<int, Error>`
- `pub fn try_pg_query(conn: PgConn, sql: String) -> Result<Array, Error>`
- `pub fn try_pg_query_cols(conn: PgConn, sql: String) -> Result<Array, Error>`
- `pub fn pg_col(columnas: Array, nombre: String) -> int`
- `pub fn pg_row_str(fila: Array, i: int) -> String`
- `pub fn pg_row_int(fila: Array, i: int) -> int`
- `pub fn pg_row_float(fila: Array, i: int) -> float`
- `pub fn pg_row_bool(fila: Array, i: int) -> bool`
- `pub fn pg_int(n: int) -> String`
- `pub fn pg_text(s: String) -> String`
- `pub fn pg_float(f: float) -> String`
- `pub fn pg_bool(b: bool) -> String`
- `pub fn try_pg_query_params(conn: PgConn, sql: String, params: Array) -> Result<Array, Error>`
- `pub fn try_pg_exec_params(conn: PgConn, sql: String, params: Array) -> Result<int, Error>`
- `pub fn try_pg_begin(conn: PgConn) -> Result<int, Error>`
- `pub fn try_pg_commit(conn: PgConn) -> Result<int, Error>`
- `pub fn try_pg_rollback(conn: PgConn) -> Result<int, Error>`
- `pub fn pg_migrate_init(conn: PgConn) -> bool`
- `pub fn pg_migrate_version(conn: PgConn) -> int`
- `pub fn pg_migrate(conn: PgConn, version: int, name: String, sql: String) -> bool`
- `pub fn pg_pool_new(conninfo: String, size: int) -> PgPool`
- `pub fn try_pg_pool_get(pool: PgPool) -> Result<PgConn, Error>`
- `pub fn pg_pool_put(pool: PgPool, conn: PgConn)`
- `pub fn pg_pool_close(pool: PgPool)`

### `std/multipart`

`import "std/multipart"` — 5 funciones:

- `pub fn multipart_parse(body: String, content_type: String) -> Array`
- `pub fn part_name(p: Array) -> String`
- `pub fn part_filename(p: Array) -> String`
- `pub fn part_ctype(p: Array) -> String`
- `pub fn part_value(p: Array) -> String`

### `std/proxy`

`import "std/proxy"` — 8 funciones:

- `pub fn proxy_new(port: int) -> ProxyConfig`
- `pub fn proxy_add_backend(config: ProxyConfig, host: String, port: int)`
- `pub fn select_backend(config: ProxyConfig) -> Backend`
- `pub fn proxy_check_health(config: ProxyConfig) -> Array`
- `pub fn proxy_set_unhealthy(config: ProxyConfig, idx: int)`
- `pub fn proxy_set_healthy(config: ProxyConfig, idx: int)`
- `pub fn parse_content_length(s: String) -> int`
- `pub fn proxy_start(config: ProxyConfig)`

### `std/events`

`import "std/events"` — 13 funciones:

- `pub fn event_bus_new() -> Array`
- `pub fn event_on(bus: Array, event: String, handler: Fn(String) -> bool) -> int`
- `pub fn event_emit(bus: Array, event: String, payload: String) -> int`
- `pub fn event_off(bus: Array, event: String)`
- `pub fn event_history(bus: Array) -> Array`
- `pub fn event_history_count(bus: Array) -> int`
- `pub fn event_was_emitted(bus: Array, event: String) -> bool`
- `pub fn observable_new(initial: int) -> Array`
- `pub fn observable_get(obs: Array) -> int`
- `pub fn observable_set(obs: Array, new_val: int)`
- `pub fn observable_watch(obs: Array, handler: Fn(int) -> bool)`
- `pub fn observable_history(obs: Array) -> Array`
- `pub fn observable_computed(source: Array, transform: Fn(int) -> int) -> int`

### `std/resp`

`import "std/resp"` — 11 funciones:

- `pub fn resp_parse_len(s: String) -> int`
- `pub fn resp_read_framed(handle: int, is_tls: bool) -> Array`
- `pub fn resp_read_command(fd: int) -> Array`
- `pub fn resp_simple_string(s: String) -> String`
- `pub fn resp_error(msg: String) -> String`
- `pub fn resp_integer(n: int) -> String`
- `pub fn resp_bulk_string(s: String) -> String`
- `pub fn resp_null_bulk() -> String`
- `pub fn resp_array_header(count: int) -> String`
- `pub fn resp_bulk_array(items: Array) -> String`
- `pub fn resp_mixed_array(items: Array, flags: Array) -> String`

### `std/statemachine`

`import "std/statemachine"` — 16 funciones:

- `pub fn fsm_new(initial_state: String) -> Array`
- `pub fn fsm_add_state(fsm: Array, state: String)`
- `pub fn fsm_add_transition(fsm: Array, from_state: String, event: String, to_state: String)`
- `pub fn fsm_state(fsm: Array) -> String`
- `pub fn fsm_send(fsm: Array, event: String) -> bool`
- `pub fn fsm_is(fsm: Array, state: String) -> bool`
- `pub fn fsm_can(fsm: Array, event: String) -> bool`
- `pub fn fsm_reset(fsm: Array, initial_state: String)`
- `pub fn fsm_states(fsm: Array) -> Array`
- `pub fn fsm_traced_new(initial_state: String) -> Array`
- `pub fn fsm_traced_add_transition(traced: Array, from_state: String, event: String, to_state: String)`
- `pub fn fsm_traced_send(traced: Array, event: String) -> bool`
- `pub fn fsm_traced_state(traced: Array) -> String`
- `pub fn fsm_traced_log(traced: Array) -> Array`
- `pub fn fsm_traced_is(traced: Array, state: String) -> bool`
- `pub fn traffic_light_fsm() -> Array`

### `std/webpush`

`import "std/webpush"` — 4 funciones:

- `pub fn vapid_jwt(priv: String, audience: String, subject: String, exp: int) -> String`
- `pub fn webpush_encrypt_with_keys(payload: String, client_p256dh: String, auth: String, salt: String, as_priv: String, as_pub: String) -> String`
- `pub fn webpush_encrypt(payload: String, client_p256dh: String, auth: String) -> String`
- `pub fn webpush_send(endpoint: String, jwt: String, vapid_pub: String, encrypted: String, ttl: int = 86400) -> Array`

### `std/session`

`import "std/session"` — 5 funciones:

- `pub fn session_configure(host: String, port: int, ttl: int)`
- `pub fn session_start(req: Request, resp: Response) -> String`
- `pub fn session_get(req: Request, key: String) -> String`
- `pub fn session_set(req: Request, key: String, value: String)`
- `pub fn session_destroy(req: Request, resp: Response)`

### `std/unicode`

`import "std/unicode"` — 5 funciones:

- `pub fn utf8_encode(codepoint: int) -> String`
- `pub fn wcwidth(codepoint: int) -> int`
- `pub fn display_width(s: String) -> int`
- `pub fn latin1_to_utf8(s: String) -> String`
- `pub fn windows1252_to_utf8(s: String) -> String`

### `std/proptest`

`import "std/proptest"` — 10 funciones:

- `pub fn gen_int(min: int, max: int) -> int`
- `pub fn gen_bool() -> bool`
- `pub fn gen_string(max_len: int) -> String`
- `pub fn gen_int_array(size: int, min: int, max: int) -> Array`
- `pub fn gen_float() -> float`
- `pub fn prop_int(property: Fn(int) -> bool, min: int, max: int, num_runs: int ) -> Array`
- `pub fn prop_int2(property: Fn(int, int) -> bool, min: int, max: int, num_runs: int ) -> Array`
- `pub fn prop_report(name: String, result: Array)`
- `pub fn prop_assert(name: String, result: Array) -> bool`
- `pub fn char_from_code(code: int) -> String`

### `std/math`

`import "std/math"` — 15 funciones:

- `pub fn abs(n: int) -> int`
- `pub fn min(a: int, b: int) -> int`
- `pub fn max(a: int, b: int) -> int`
- `pub fn clamp(n: int, lo: int, hi: int) -> int`
- `pub fn pow_int(base: int, exp: int) -> int`
- `pub fn gcd(a: int, b: int) -> int`
- `pub fn lcm(a: int, b: int) -> int`
- `pub fn is_even(n: int) -> bool`
- `pub fn is_odd(n: int) -> bool`
- `pub fn sqrt_int(n: int) -> int`
- `pub fn checked_add(a: int, b: int) -> Option<int>`
- `pub fn checked_sub(a: int, b: int) -> Option<int>`
- `pub fn checked_mul(a: int, b: int) -> Option<int>`
- `pub fn checked_div(a: int, b: int) -> Option<int>`
- `pub fn mul_div_round(a: int, b: int, c: int, mode: RoundMode) -> int`

### `std/map`

`import "std/map"` — 4 funciones:

- `pub fn map_new() -> Map`
- `pub fn map_put(m: Map, k: String, v: int)`
- `pub fn map_get_int(m: Map, k: String) -> int`
- `pub fn map_has(m: Map, k: String) -> bool`

### `std/collections`

`import "std/collections"` — 10 funciones:

- `pub fn set_new() -> Map`
- `pub fn set_add(s: Map, val: String)`
- `pub fn set_add_int(s: Map, val: int)`
- `pub fn set_has(s: Map, val: String) -> bool`
- `pub fn set_has_int(s: Map, val: int) -> bool`
- `pub fn set_remove(s: Map, val: String)`
- `pub fn set_size(s: Map) -> int`
- `pub fn set_to_array(s: Map) -> Array`
- `pub fn set_union(a: Map, b: Map) -> Map`
- `pub fn set_intersection(a: Map, b: Map) -> Map`

### `std/math_ext`

`import "std/math_ext"` — 19 funciones:

- `pub fn is_prime(n: int) -> bool`
- `pub fn primes_up_to(n: int) -> Array`
- `pub fn extended_gcd(a: int, b: int) -> Array`
- `pub fn pow_mod(base: int, exp: int, mod_n: int) -> int`
- `pub fn fibonacci(n: int) -> int`
- `pub fn binomial(n: int, k: int) -> int`
- `pub fn int_sum(arr: Array) -> int`
- `pub fn int_product(arr: Array) -> int`
- `pub fn int_min_arr(arr: Array) -> int`
- `pub fn int_max_arr(arr: Array) -> int`
- `pub fn stats_mean(arr: Array) -> float`
- `pub fn stats_median(arr: Array) -> float`
- `pub fn stats_variance(arr: Array) -> float`
- `pub fn stats_range(arr: Array) -> int`
- `pub fn dist_2d(x1: float, y1: float, x2: float, y2: float) -> float`
- `pub fn clamp_float(x: float, lo: float, hi: float) -> float`
- `pub fn lerp(a: float, b: float, t: float) -> float`
- `pub fn float_to_fixed(x: float, decimals: int) -> String`
- `pub fn try_mul_div_round(a: int, b: int, c: int, mode: RoundMode) -> Result<int, Error>`

### `std/component`

`import "std/component"` — 3 funciones:

- `pub fn component_new(state: Array, render: Fn(Array) -> VNode) -> Array`
- `pub fn mount(comp: Array, sel: String)`
- `pub fn update(comp: Array)`

### `std/owned`

`import "std/owned"` — 14 funciones:

- `pub fn box_new<T>(v: T) -> Box<T>`
- `pub fn box_get<T>(b: &Box<T>) -> T`
- `pub fn box_into<T>(b: Box<T>) -> T`
- `pub fn rc_new<T>(v: T) -> Rc<T>`
- `pub fn rc_clone<T>(r: &Rc<T>) -> Rc<T>`
- `pub fn rc_get<T>(r: &Rc<T>) -> T`
- `pub fn rc_count<T>(r: &Rc<T>) -> int`
- `pub fn move_new<T>(v: T) -> MoveOnly<T>`
- `pub fn move_consume<T>(m: MoveOnly<T>) -> T`
- `pub fn file_guard_open(path: String, mode: String) -> Array`
- `pub fn file_guard_write(g: Array, content: String)`
- `pub fn file_guard_read_line(g: Array) -> String`
- `pub fn file_guard_close(g: Array)`
- `pub fn file_guard_is_open(g: Array) -> bool`

### `std/webpushcrypto`

`import "std/webpushcrypto"` — 9 funciones:

- `pub fn csprng_bytes(n: int) -> String`
- `pub fn u8(n: int) -> String`
- `pub fn sha256_bytes(s: String) -> String`
- `pub fn ec_p256_keypair() -> String`
- `pub fn ecdh_p256(priv: String, peer_pub: String) -> String`
- `pub fn ecdsa_p256_sign(priv: String, hash: String) -> String`
- `pub fn ecdsa_p256_verify(pubkey: String, hash: String, sig: String) -> int`
- `pub fn hkdf_sha256(salt: String, ikm: String, info: String, len: int) -> String`
- `pub fn aes128gcm_encrypt(key: String, iv: String, pt: String, aad: String) -> String`

### `std/prelude`

`import "std/prelude"` — 37 funciones:

- `pub fn println(s: String)`
- `pub fn read_stdin_all() -> String`
- `pub fn abs(n: int) -> int`
- `pub fn min(a: int, b: int) -> int`
- `pub fn max(a: int, b: int) -> int`
- `pub fn clamp(n: int, lo: int, hi: int) -> int`
- `pub fn pow_int(base: int, exp: int) -> int`
- `pub fn gcd(a: int, b: int) -> int`
- `pub fn lcm(a: int, b: int) -> int`
- `pub fn is_even(n: int) -> bool`
- `pub fn is_odd(n: int) -> bool`
- `pub fn sqrt_int(n: int) -> int`
- `pub fn checked_add(a: int, b: int) -> Option<int>`
- `pub fn checked_sub(a: int, b: int) -> Option<int>`
- `pub fn checked_mul(a: int, b: int) -> Option<int>`
- `pub fn checked_div(a: int, b: int) -> Option<int>`
- `pub fn mul_div_round(a: int, b: int, c: int, mode: RoundMode) -> int`
- `pub fn array_sum(arr: Array) -> int`
- `pub fn array_min(arr: Array) -> int`
- `pub fn array_max(arr: Array) -> int`
- `pub fn array_reverse(arr: Array) -> Array`
- `pub fn array_contains_int(arr: Array, val: int) -> bool`
- `pub fn array_index_of(arr: Array, val: int) -> int`
- `pub fn sort_int(arr: Array) -> Array`
- `pub fn sort_by(arr: Array, cmp: Fn(int, int) -> int) -> Array`
- `pub fn str_compare(a: String, b: String) -> int`
- `pub fn sort_str(arr: Array) -> Array`
- `pub fn read_text(path: String) -> String`
- `pub fn write_text(path: String, content: String)`
- `pub fn map_new() -> Map`
- `pub fn map_put(m: Map, k: String, v: int)`
- `pub fn map_get_int(m: Map, k: String) -> int`
- `pub fn map_has(m: Map, k: String) -> bool`
- `pub fn err_new(code: int, kind: String, msg: String) -> Error`
- `pub fn errno_to_kind(code: int) -> String`
- `pub fn error_to_string(e: Error) -> String`
- `pub fn is_eof(e: Error) -> bool`

### `std/routematch`

`import "std/routematch"` — 2 funciones:

- `pub fn route_match(pattern: String, hash: String) -> Array`
- `pub fn route_resolve(routes_patterns: Array, hash: String, default_idx: int) -> Array`

### `std/error`

`import "std/error"` — 4 funciones:

- `pub fn err_new(code: int, kind: String, msg: String) -> Error`
- `pub fn errno_to_kind(code: int) -> String`
- `pub fn error_to_string(e: Error) -> String`
- `pub fn is_eof(e: Error) -> bool`

### `std/dom`

`import "std/dom"` — 35 funciones:

- `export fn dom_set_text(sel: String, text: String)`
- `export fn dom_set_html(sel: String, html: String)`
- `export fn dom_get_value(sel: String) -> String`
- `export fn dom_on(sel: String, event: String, handler: String)`
- `export fn console_log(msg: String)`
- `export fn dom_get_attr(sel: String, name: String) -> String`
- `export fn dom_set_attr(sel: String, name: String, value: String)`
- `export fn dom_remove_attr(sel: String, name: String)`
- `export fn dom_class_add(sel: String, cls: String)`
- `export fn dom_class_remove(sel: String, cls: String)`
- `export fn dom_class_toggle(sel: String, cls: String)`
- `export fn dom_set_value(sel: String, value: String)`
- `export fn dom_count(sel: String) -> int`
- `export fn dom_get_attr_all(sel: String, name: String) -> Array`
- `export fn ev_type() -> String`
- `export fn ev_key() -> String`
- `export fn ev_target_attr(name: String) -> String`
- `export fn ev_target_value() -> String`
- `export fn ev_client_x() -> int`
- `export fn ev_client_y() -> int`
- `export fn ev_prevent_default()`
- `export fn dom_on_fn(sel: String, event: String, handler: Fn)`
- `export fn dom_create(tag: String) -> int`
- `export fn dom_create_text(s: String) -> int`
- `export fn dom_append(parent: int, child: int)`
- `export fn dom_remove_at(parent: int, idx: int)`
- `export fn dom_replace(parent: int, new_h: int, old_h: int)`
- `export fn dom_insert_before(parent: int, new_h: int, ref_h: int)`
- `export fn dom_child_at(parent: int, idx: int) -> int`
- `export fn dom_set_text_h(h: int, s: String)`
- `export fn dom_set_attr_h(h: int, k: String, v: String)`
- `export fn dom_remove_attr_h(h: int, k: String)`
- `export fn dom_query_handle(sel: String) -> int`
- `export fn dom_on_h(h: int, evento: String, handler: Fn)`
- `export fn dom_child_count(h: int) -> int`

### `std/serve`

`import "std/serve"` — 27 funciones:

- `pub fn app_ws(pattern: String, handler: Fn(Array) -> int)`
- `pub fn serve_ws(handler: Fn(Array) -> int)`
- `pub fn serve_on_shutdown(handler: Fn)`
- `pub fn serve_app(app: App, port: int, workers: int) -> int`
- `pub fn serve_app_en(app: App, host: String, port: int, workers: int) -> int`
- `pub fn detect_mime_type(path: String) -> String`
- `pub fn try_serve_static(base_dir: String, url_path: String) -> Response`
- `pub fn serve_static(app: &mut App, base_dir: String)`
- `pub fn app_static(app: App, prefix: String, directory: String) -> int`
- `pub fn app_static_cached(app: App, prefix: String, directory: String, max_age: int) -> int`
- `pub fn compute_weak_etag(content: String) -> String`
- `pub fn apply_etag(resp: Response, if_none_match: String) -> Response`
- `pub fn try_serve_static_prefix(path: String) -> Response`
- `pub fn ws_init_registry() -> int`
- `pub fn ws_join(fd: int, room: String)`
- `pub fn ws_leave(fd: int)`
- `pub fn ws_broadcast(room: String, payload: String)`
- `pub fn ws_count() -> int`
- `pub fn ws_count_room(room: String) -> int`
- `pub fn ws_accept(fd: int, room: String, headers: Array) -> int`
- `pub fn ws_drain_close() -> int`
- `pub fn sse_frame(evento: String, datos: String) -> String`
- `pub fn sse_broadcast(room: String, evento: String, datos: String) -> int`
- `pub fn sse_count() -> int`
- `pub fn sse_count_room(room: String) -> int`
- `pub fn sse_open(req: Request, room: String) -> Response`
- `pub fn sse_drain_close() -> int`

### `std/router`

`import "std/router"` — 2 funciones:

- `pub fn router_new(patterns: Array, makes: Array, default_idx: int) -> Array`
- `pub fn router_start(r: Array, sel: String)`

### Builtins globales (sin `import`)

- `c_fn_ptr` (1 arg)
- `format` (-1 args)
- `map_scan` (2 args)
- `panic` (1 arg)
- `run` (1 arg)
- `setup_shutdown_handler` (1 arg)

