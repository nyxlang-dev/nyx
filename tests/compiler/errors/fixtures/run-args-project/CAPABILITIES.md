# CAPABILITIES — índice de la stdlib de Nyx

<!-- nyx-version: 0.24.11 -->
> Auto-generado por `nyx capabilities` desde la stdlib instalada — siempre en sync con tu versión.
> Es el índice de QUÉ EXISTE: antes de escribir una función, buscá acá si un módulo ya lo hace,
> `import`alo y usalo. NO leas el fuente de `std/`. Ver `AGENTS.md` para cómo escribir Nyx.

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

`import "std/web"` — 24 funciones:

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
- `pub fn mw_logging(req: Request) -> Response`
- `pub fn cors_configure(origin: String, methods: String, headers: String)`
- `pub fn mw_cors(req: Request) -> Response`

### `std/http`

`import "std/http"` — 18 funciones:

- `pub fn http_status_text(code: int) -> String`
- `pub fn http_response(status: int, body: String) -> String`
- `pub fn http_response_with_headers(status: int, headers_arr: Array, body: String) -> String`
- `pub fn http_json_response(status: int, data: Array) -> String`
- `pub fn http_parse_url(url: String) -> Array`
- `pub fn http_get(url: String) -> Array`
- `pub fn http_post(url: String, body: String) -> Array`
- `pub fn http_request(method: String, url: String, headers: Array, body: String) -> Array`
- `pub fn http_status(resp: Array) -> int`
- `pub fn http_body(resp: Array) -> String`
- `pub fn http_headers(resp: Array) -> Array`
- `pub fn http_find_header(headers: Array, name: String) -> String`
- `pub fn http_find_headers(headers: Array, name: String) -> Array`
- `pub fn http_parse_request(client_fd: int) -> Array`
- `pub fn http_cors_headers(origin: String) -> Array`
- `pub fn http_cors_response(origin: String) -> String`
- `pub fn http_serve(port: int, handler: Fn) -> int`
- `pub fn http_serve_mt(port: int, num_workers: int, handler: Fn) -> int`

## Bases de datos & KV

### `std/kvclient`

`import "std/kvclient"` — 19 funciones:

- `pub fn kv_connect_auth(host: String, port: int, token: String) -> int`
- `pub fn kv_close(h: int)`
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

`import "std/sqlite"` — 24 funciones:

- `pub fn sqlite_open(path: String) -> *int`
- `pub fn sqlite_close(db: *int)`
- `pub fn sqlite_exec(db: *int, sql: String) -> bool`
- `pub fn sqlite_query(db: *int, sql: String) -> Array`
- `pub fn sqlite_query_named(db: *int, sql: String) -> Array`
- `pub fn sqlite_exec_int(db: *int, sql: String, val: int) -> bool`
- `pub fn sqlite_exec_str(db: *int, sql: String, val: String) -> bool`
- `pub fn sqlite_last_id(db: *int) -> int`
- `pub fn sqlite_affected(db: *int) -> int`
- `pub fn sqlite_error(db: *int) -> String`
- `pub fn sqlite_begin(db: *int) -> bool`
- `pub fn sqlite_commit(db: *int) -> bool`
- `pub fn sqlite_rollback(db: *int) -> bool`
- `pub fn sqlite_query_int(db: *int, sql: String) -> Array`
- `pub fn sqlite_query_one_int(db: *int, sql: String) -> int`
- `pub fn sqlite_query_one_str(db: *int, sql: String) -> String`
- `pub fn sqlite_exec_params(db: *int, sql: String, params: Array) -> bool`
- `pub fn sqlite_query_params(db: *int, sql: String, params: Array) -> Array`
- `pub fn sqlite_migrate_init(db: *int) -> bool`
- `pub fn sqlite_migrate_version(db: *int) -> int`
- `pub fn sqlite_migrate(db: *int, version: int, name: String, sql: String) -> bool`
- `pub fn sqlite_tables(db: *int) -> Array`
- `pub fn sqlite_table_exists(db: *int, name: String) -> bool`
- `pub fn sqlite_count(db: *int, table: String) -> int`

## Serialización & datos

### `std/json`

`import "std/json"` — 17 funciones:

- `pub fn json_null() -> Array`
- `pub fn json_bool(val: bool) -> Array`
- `pub fn json_number(val: int) -> Array`
- `pub fn json_float(val: float) -> Array`
- `pub fn json_string(val: String) -> Array`
- `pub fn json_array(items: Array) -> Array`
- `pub fn json_object(keys: Array, vals: Array) -> Array`
- `pub fn json_type(val: Array) -> String`
- `pub fn json_get(obj: Array, key: String) -> Array`
- `pub fn json_as_string(val: Array) -> String`
- `pub fn json_as_int(val: Array) -> int`
- `pub fn json_as_float(val: Array) -> float`
- `pub fn json_array_get(arr: Array, i: int) -> Array`
- `pub fn json_array_len(arr: Array) -> int`
- `pub fn json_escape(s: String) -> String`
- `pub fn json_stringify(val: Array) -> String`
- `pub fn json_parse(input: String) -> Array`

### `std/toml`

`import "std/toml"` — 5 funciones:

- `pub fn toml_parse(content: String) -> Map<String>`
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

## Archivos & I/O

### `std/io`

`import "std/io"` — 1 funciones:

- `pub fn println(s: String)`

### `std/file`

`import "std/file"` — 2 funciones:

- `pub fn read_text(path: String) -> String`
- `pub fn write_text(path: String, content: String)`

## Red

### `std/http2`

`import "std/http2"` — 3 funciones:

- `pub fn h2_check_upgrade(request: String) -> bool`
- `pub fn h2_send_response(fd: int, stream_id: int, status: int, resp_headers: Array, body: String) -> int`
- `pub fn h2_serve(port: int, num_workers: int, cb: Fn) -> int`

### `std/url`

`import "std/url"` — 6 funciones:

- `pub fn url_encode(s: String) -> String`
- `pub fn url_decode(s: String) -> String`
- `pub fn build_query_string(keys: Array, values: Array) -> String`
- `pub fn html_escape(s: String) -> String`
- `pub fn html_unescape(s: String) -> String`
- `pub fn render_template(tmpl: String, data: Map<String>) -> String`

## Concurrencia

### `std/sync`

`import "std/sync"` — 21 funciones:

- `pub fn wg_new() -> WaitGroup` — Create a new WaitGroup with count 0.
- `pub fn wg_add(wg: WaitGroup, delta: int)` — Add delta to WaitGroup counter. Call before spawning goroutines.
- `pub fn wg_done(wg: WaitGroup)` — Decrement WaitGroup counter by 1. Call when goroutine finishes.
- `pub fn wg_wait(wg: WaitGroup)` — Block until WaitGroup counter reaches 0.
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

`import "std/tls"` — 23 funciones:

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
- `pub fn cert_is_expired(cert: Array) -> bool`
- `pub fn cert_days_to_expiry(cert: Array) -> int`
- `pub fn cert_is_self_signed(cert: Array) -> bool`
- `pub fn tls_is_weak(h: int) -> bool`

## Strings & texto

### `std/regex`

`import "std/regex"` — 4 funciones:

- `pub fn regex_match(text: String, pattern: String) -> String` — Return the first match of `pattern` in `text`, or "" if none.
- `pub fn regex_is_match(text: String, pattern: String) -> bool` — Whether `pattern` matches anywhere in `text`.
- `pub fn regex_replace(text: String, pattern: String, replacement: String) -> String` — Replace the first match of `pattern` in `text` with `replacement`.
- `pub fn regex_replace_all(text: String, pattern: String, replacement: String) -> String` — Replace all matches of `pattern` in `text` with `replacement`.

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

## Otros

### `std/llm`

`import "std/llm"` — 4 funciones:

- `pub fn llm_load_ctx(path: String, n_ctx: int) -> LLM` — Carga un modelo GGUF con n_ctx explícito. Aborta con mensaje claro si falla.
- `pub fn llm_load(path: String) -> LLM` — Carga un modelo GGUF (n_ctx = 2048 por defecto).
- `pub fn llm_generate(l: &LLM, prompt: String, max_tokens: int) -> String` — Genera texto (greedy). Presta el handle — no lo consume.
- `pub fn llm_generate_stream(l: &LLM, prompt: String, max_tokens: int, cb: *i8) -> String` — Genera con STREAMING: cb = c_fn_ptr(mi_cb) donde `fn mi_cb(piece: *i8)` recibe cada token generado (convertir con string_from_cstr adentro). Devuelve además el texto completo.

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

`import "std/browser"` — 11 funciones:

- `export fn browser_fetch(url: String, method: String, body: String, handler: String)`
- `export fn browser_interval(ms: int, handler: String) -> int`
- `export fn browser_timeout(ms: int, handler: String) -> int`
- `export fn browser_clear_timer(id: int)`
- `export fn browser_geo(handler: String)`
- `export fn ls_get(key: String) -> String`
- `export fn ls_set(key: String, value: String)`
- `export fn tz_offset() -> int`
- `export fn match_media(query: String) -> int`
- `export fn browser_get_hash() -> String`
- `export fn browser_on_hashchange(f: Fn)`

### `std/array`

`import "std/array"` — 4 funciones:

- `pub fn sort_int(arr: Array) -> Array`
- `pub fn sort_by(arr: Array, cmp: Fn(int, int) -> int) -> Array`
- `pub fn str_compare(a: String, b: String) -> int`
- `pub fn sort_str(arr: Array) -> Array`

### `std/proxy`

`import "std/proxy"` — 6 funciones:

- `pub fn proxy_new(port: int) -> ProxyConfig`
- `pub fn proxy_add_backend(config: ProxyConfig, host: String, port: int)`
- `pub fn proxy_check_health(config: ProxyConfig) -> Array`
- `pub fn proxy_set_unhealthy(config: ProxyConfig, idx: int)`
- `pub fn proxy_set_healthy(config: ProxyConfig, idx: int)`
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

`import "std/resp"` — 2 funciones:

- `pub fn resp_parse_len(s: String) -> int`
- `pub fn resp_read_framed(handle: int, is_tls: bool) -> Array`

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

`import "std/math"` — 10 funciones:

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

`import "std/math_ext"` — 18 funciones:

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

`import "std/prelude"` — 27 funciones:

- `pub fn println(s: String)`
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

### `std/routematch`

`import "std/routematch"` — 2 funciones:

- `pub fn route_match(pattern: String, hash: String) -> Array`
- `pub fn route_resolve(routes_patterns: Array, hash: String, default_idx: int) -> Array`

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

### `std/router`

`import "std/router"` — 2 funciones:

- `pub fn router_new(patterns: Array, makes: Array, default_idx: int) -> Array`
- `pub fn router_start(r: Array, sel: String)`

