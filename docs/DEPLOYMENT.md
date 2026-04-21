# Nyx — Deployment Guide (AWS)

> Internal document. Describes how to deploy and maintain nyxlang.com
> on AWS ARM64 with Nyx products.

---

## Architecture

```
Internet (HTTPS :443)
    │
    ▼
nyx-gateway (services/gateway/gateway, consumes nyx-proxy lib)
    │ TLS termination (Let's Encrypt, SNI multi-domain)
    │ Virtual host routing + path prefix routing
    │
    ├── nyxlang.com ──────→ nyx-landing-main (:3001)
    │   └── /playground ──→ nyx-playground (:8081)
    │
    ├── nyxkv.com ────────→ nyx-kv-web (:3002)
    │
    ├── serve.nyxlang.com → nyx-serve-web (:3003)
    │
    └── proxy.nyxlang.com → nyx-proxy-web (:3005)

Internal services (not public):
    nyx-kv     (:6380) — KV store (active)
    [nyx-queue (:6381) — retired in v0.13]
    [nyx-db    (:6382) — retired in v0.13]
    [nyx-http2 (:3004) — retired in v0.13]
```

## Server

```
Instance:   AWS t4g.micro (ARM64 Graviton, 1GB RAM)
OS:         Debian 12+ (Bookworm/Trixie)
Domains:    nyxlang.com, nyxkv.com, serve.nyxlang.com, proxy.nyxlang.com
IP:         52.207.231.44 (Elastic IP)
TLS:        Let's Encrypt (auto-renewal with certbot)
```

---

## Systemd Services (7 active + 1 cron)

| Service | Binary | Port | Description |
|---------|--------|------|-------------|
| nyx-gateway | services/gateway/gateway | :443, :80 | HTTPS reverse proxy, SNI multi-domain (consumes nyx-proxy lib) |
| nyx-landing-main | sites/nyxlang.com/nyxlang-com | :3001 | nyxlang.com landing + Book (default upstream) |
| nyx-kv-web | sites/nyxkv.com/nyxkv-com | :3002 | nyxkv.com landing + learn |
| nyx-serve-web | sites/serve.nyxlang.com/serve-nyxlang-com | :3003 | serve.nyxlang.com landing |
| nyx-proxy-web | sites/proxy.nyxlang.com/proxy-nyxlang-com | :3005 | proxy.nyxlang.com landing |
| nyx-kv | services/nyxkv/nyxkv --public | :6380 | Redis-compatible KV store (consumes nyx-kv lib) |
| nyx-playground | bin/nyx-playground | :8081 | Web playground routed under /playground |
| nyx-backup | scripts/backup.sh | cron | Daily .ndb backup |

Since v0.13, `nyx-proxy`, `nyx-serve` and `nyx-kv` are libraries
(`products/proxy`, `products/serve`, `products/kv`) consumed via the
package manager — there are no daemons for them anymore. The production
consumers are:

- `services/gateway/` (consumes nyx-proxy) → HTTPS terminator on :443
- `services/nyxkv/` (consumes nyx-kv) → free-tier RESP2 on :6380
- `sites/*.com/` (4 projects, consume nyx-serve) → landing pages on
  :3001 / :3002 / :3003 / :3005

**Retired in v0.13**: `nyx-queue` (`:6381`), `nyx-db` (`:6382`) and
`nyx-http2` (`:3004`) were daemons running on `0.0.0.0` without TLS,
without a public domain, and without any real consumer. They were
stopped, disabled, and removed from `deploy/`. The underlying products
(`products/queue`, `products/db`, `products/http2`) remain as libraries
in the monorepo and are still buildable via `make -C products/<p>
build` for development and for `scripts/testing/run_product_tests.sh`.
To host any of them again, create a `services/nyx<name>/` project
mirroring the `services/nyxkv/` pattern.

---

## Deployment (each update)

```bash
# On AWS:
cd ~/NyxLang
git pull origin main
bash scripts/deploy.sh
```

`deploy.sh` does:
1. Compiles bootstrap + package manager
2. Compiles 4 landing sites via `nyx build` from `sites/*/` (each consumes
   `products/serve` as a PM library — `deploy.sh` pre-populates
   `sites/*/packages/nyx-serve/` before the build)
3. Compiles 2 services via `nyx build` from `services/*/`:
   - `services/gateway/` consumes `products/proxy` (HTTPS gateway)
   - `services/nyxkv/` consumes `products/kv` (RESP2 daemon)
4. Compiles playground to `bin/`
5. Installs/restarts 7 active systemd services (does NOT start retired daemons: nyx-queue, nyx-http2, nyx-db)

**Note:** If new runtime .c files are added, update RUNTIME_SRCS in deploy.sh.

---

## Server directory structure

```
~/NyxLang/
├── bin/                        ← compiled product binaries
│   └── nyx-playground
├── services/
│   ├── gateway/gateway         ← compiled HTTPS gateway (consumes nyx-proxy)
│   ├── gateway/proxy.toml      ← production routing config (versioned)
│   └── nyxkv/nyxkv             ← compiled RESP2 KV daemon (consumes nyx-kv)
├── sites/                      ← compiled landing page binaries
│   ├── nyxlang.com/nyxlang-com
│   ├── nyxkv.com/nyxkv-com
│   ├── serve.nyxlang.com/serve-nyxlang-com
│   └── proxy.nyxlang.com/proxy-nyxlang-com
├── deploy/                     ← systemd unit files
├── nyx_bootstrap               ← the compiler
└── ... (source code)
```

---

## Useful commands

```bash
# Service status
sudo systemctl status nyx-gateway nyx-kv nyx-landing-main

# Live logs
sudo journalctl -u nyx-gateway -f

# Restart all active services (v0.13+: nyx-queue, nyx-http2, nyx-db retired)
for svc in nyx-gateway nyx-landing-main nyx-kv-web nyx-serve-web nyx-proxy-web nyx-kv nyx-playground; do
    sudo systemctl restart $svc
done

# Compile a service manually (v0.13+)
cd ~/NyxLang/services/nyxkv
NYX_HOME=/home/admin/NyxLang /home/admin/NyxLang/nyx_build build
# Produces ./nyxkv ready to run with --public / --tls / --port flags

# Or compile the standalone smoke test of a library
cd ~/NyxLang/products/kv
make build
# Produces ./nyx-kv (plain RESP2, no rate limit)
```

---

## TLS Certificate

```bash
# Check expiration
sudo certbot certificates

# Manual renewal (normally auto-renews)
sudo systemctl stop nyx-proxy
sudo certbot renew
sudo systemctl start nyx-proxy

# Certs at:
#   /etc/letsencrypt/live/nyxlang.com/fullchain.pem
#   /etc/letsencrypt/live/nyxlang.com/privkey.pem
```

---

## Sync to public repos

```bash
scripts/sync_to_public.sh all    # sync core + 8 products
scripts/sync_to_public.sh kv     # sync just nyx-kv
```

---

## Troubleshooting

**"Connection refused" on port 443:**
```bash
sudo ss -tlnp | grep 443
sudo systemctl status nyx-proxy
sudo journalctl -u nyx-proxy --no-pager | tail -20
```

**proxy.toml overwritten by git pull:**
```bash
# deploy.sh handles this automatically, but if needed:
cp deploy/proxy.production.toml products/proxy/proxy.toml
```

**Tests on ARM64:**
```bash
make test
# test-123-full-asm is auto-skipped on ARM64 (x86_64 inline asm)
# Expected: 204/204 on ARM64, 205/205 on x86_64
```
