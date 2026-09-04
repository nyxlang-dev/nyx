# Nyx — Deployment Guide (AWS)

> Internal document. Describes how to deploy and maintain nyxlang.com
> on AWS ARM64. Desde los splits del monorepo (2026, serie COMPLETA con
> el #7), TODOS los consumers de producción viven en repos propios —
> este doc cubre lo que queda EN el monorepo (solo el playground) y
> apunta al resto.

---

## Architecture

```
Internet (HTTPS :443)
    │
    ▼
nyx-gateway (~/nyx/web/gateway/gateway, consumes nyx-proxy lib) ← ~/nyx/web/gateway
    │ TLS termination (Let's Encrypt, SNI multi-domain)
    │ Virtual host routing + path prefix routing
    │
    ├── nyxlang.com ──────→ nyx-landing-main (:3001)   ← ~/nyx-sites
    │   └── /playground ──→ nyx-playground (:8081)     ← monorepo
    ├── nyxkv.com ────────→ nyx-kv-web (:3002)         ← ~/nyx/products/kv
    ├── serve.nyxlang.com → nyx-serve-web (:3003)      ← ~/nyx-sites
    ├── proxy.nyxlang.com → nyx-proxy-web (:3005)      ← ~/nyx-sites
    ├── dashboard.nyxkv.com → (:3007)                  ← ~/nyx/products/kv
    └── venezuelainfo.org → (:3010)                    ← /home/admin/venezuelainfo.org

Internal services (not public):
    nyx-kv (:6380) — KV store RESP2/TLS (← ~/nyx/products/kv)
```

## Server

```
Instance:   AWS t4g.micro (ARM64 Graviton, 1GB RAM)
OS:         Debian 12+ (Bookworm/Trixie)
Domains:    nyxlang.com, nyxkv.com, serve.nyxlang.com, proxy.nyxlang.com,
            dashboard.nyxkv.com, venezuelainfo.org
TLS:        Let's Encrypt (auto-renewal with certbot)
```

---

## Qué se deploya desde dónde (post-splits)

| Componente | Repo | Deploy |
|---|---|---|
| nyx-gateway (:443/:80) | `~/nyx/web/gateway` (privado, split #7) | `make -C ~/nyx/web/gateway deploy` |
| nyx-playground (:8081) | monorepo `playground/` | `bash scripts/deploy.sh` |
| 3 landings (:3001/:3003/:3005) | `~/nyx-sites` (público) | `make -C ~/nyx-sites deploy` |
| nyx-kv + nyxkv.com + dashboard | `~/nyx/products/kv` (privado) | ver su CLAUDE.md |
| venezuelainfo.org (:3010) | `/home/admin/venezuelainfo.org` | proyecto aparte — NO tocar |

Units systemd: `deploy/` del monorepo solo conserva `nyx-playground.service`
y backup; la unit del gateway vive en `~/nyx/web/gateway/deploy/`; las de los
sites en `~/nyx-sites/deploy/`; las de kv en su stack.

---

## Deployment del monorepo (each update)

```bash
# On AWS:
cd ~/NyxLang
git pull origin main
bash scripts/deploy.sh
```

`deploy.sh` does:
1. Compiles bootstrap
2. Compiles playground to `bin/nyx-playground`
3. Installs/restarts systemd unit `nyx-playground`

El gateway se deploya desde su repo: `make -C ~/nyx/web/gateway deploy`
(vendor de nyx-proxy desde `~/nyx-proxy-stack` + build + smoke HTTP
efímero ANTES del restart + verificación por dominio después).

**Note:** If new runtime .c files are added, update RUNTIME_SRCS in deploy.sh.

**GOTCHA restart del gateway**: tras reiniciar un upstream, el gateway
sirve 502 durante algunos requests (pool keep-alive con sockets stale que
se drenan de a uno). Retry-on-stale: roadmap nyx-proxy v0.4.

Claude Code no tiene acceso SSH al servidor — el deploy y el chequeo de
salud de abajo los ejecuta el usuario manualmente.

## Post-deploy health check

Tras un deploy (propio o de gateway/sites/kv), verificar de punta a punta:

```bash
# Servicios systemd activos
for svc in nyx-gateway nyx-playground nyx-landing-main nyx-serve-web \
           nyx-proxy-web nyx-kv nyx-kv-web nyx-dashboard-nyxkv nyx-backup.timer \
           nyx-friction-drain.timer; do
  echo "$svc: $(systemctl is-active $svc 2>/dev/null)"
done

# Smoke HTTPS por dominio (SNI en :443) — 2xx/3xx esperado (dashboard → 302)
for h in nyxlang.com nyxkv.com serve.nyxlang.com proxy.nyxlang.com \
         dashboard.nyxkv.com venezuelainfo.org; do
  echo "$h → $(curl -sk -o /dev/null -w '%{http_code}' --resolve "$h:443:127.0.0.1" "https://$h/")"
done
redis-cli -p 6380 PING   # KV RESP2 (~/nyx/products/kv)
```

Criterio: todos `active`; todos 2xx/3xx; `PING` → `PONG`. Si algo falla, ver
Troubleshooting abajo.

---

## Server directory structure (monorepo)

```
~/NyxLang/
├── bin/nyx-playground          ← compiled playground
├── deploy/                     ← systemd units (playground, backup)
├── nyx_bootstrap               ← the compiler
└── ... (source code)

~/nyx/web/gateway/              ← HTTPS gateway (repo propio, split #7)
├── gateway                     ← compiled binary (systemd WorkingDirectory acá)
├── proxy.toml                  ← production routing config (versioned)
└── packages/nyx-proxy/         ← lib vendorizada COMMITEADA (make vendor)
```

---

## Useful commands

```bash
# Service status
sudo systemctl status nyx-gateway nyx-playground

# Live logs del gateway
sudo journalctl -u nyx-gateway -f

# Restart del servicio del monorepo
sudo systemctl restart nyx-playground

# Gateway: desde su repo
make -C ~/nyx/web/gateway status    # is-active
make -C ~/nyx/web/gateway deploy    # vendor + build + smoke + restart + verify

# Sites: desde su repo
make -C ~/nyx-sites status      # is-active de las 3 units
make -C ~/nyx-sites deploy      # build + smoke + restart verificado
```

---

## TLS Certificate

```bash
# Check expiration
sudo certbot certificates

# Manual renewal (normally auto-renews); el gateway NO recarga certs solo:
sudo certbot renew
sudo systemctl restart nyx-gateway

# Certs at:
#   /etc/letsencrypt/live/nyxlang.com/fullchain.pem
#   /etc/letsencrypt/live/nyxlang.com/privkey.pem
```

---

## Sync to public repos

```bash
scripts/sync_to_public.sh all    # solo core (todos los productos extraídos)
# serve/kv/edit/shell/queue/db/proxy: sync propio en cada ~/nyx-*-stack
# ~/nyx-sites ES público directamente (nyxlang-dev/nyx-sites) — sin sync
# ~/nyx/web/gateway es PRIVADO (config de producción) — sin sync
```

---

## Troubleshooting

**"Connection refused" on port 443:**
```bash
sudo ss -tlnp | grep 443
sudo systemctl status nyx-gateway
sudo journalctl -u nyx-gateway --no-pager | tail -20
```

**502 en un dominio con la unit activa:** upstream recién reiniciado —
pool stale del gateway (ver GOTCHA arriba); insistir con algunos requests
o verificar el upstream directo con `curl 127.0.0.1:<port>/`.

**Tests on ARM64:**
```bash
make test
# test-123-full-asm is auto-skipped on ARM64 (x86_64 inline asm)
# Conteos canónicos: docs/TESTS.md
```
