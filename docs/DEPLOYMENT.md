# Nyx — Guía de Deployment en AWS

> Documento interno. Describe cómo instalar, desplegar y mantener nyxlang.com
> en AWS ARM64 con los productos de Nyx.

---

## Arquitectura

```
Internet (HTTPS :443)
    │
    ▼
nyx-proxy (bin/nyx-proxy)
    │ TLS termination (Let's Encrypt)
    │ Path routing
    │
    ├── / ────────────→ nyx-serve (bin/nyx-serve :3000)
    │                    Landing page + docs + static files
    │
    ├── /playground ──→ nyx-playground (bin/nyx-playground :8081)
    │                    Editor web + compilación
    │
    └── nyx-kv (bin/nyx-kv :6380) — interno, cache + datos
```

## Servidor

```
Instancia:  AWS t4g.micro (ARM64 Graviton, 1GB RAM)
OS:         Debian 12+ (Bookworm/Trixie)
Dominio:    nyxlang.com
IP:         Elastic IP fija
TLS:        Let's Encrypt (auto-renovación con certbot)
```

---

## Setup inicial (una sola vez)

```bash
# 1. Conectar al servidor
ssh -i tu-key.pem admin@TU_ELASTIC_IP

# 2. Ejecutar setup automático
# (instala dependencias, clona repo, compila, configura servicios)
bash scripts/setup-aws.sh
```

El script `setup-aws.sh` hace todo:
- Instala clang, libgc, libssl, zlib, git, make, certbot
- Clona el repo privado
- Compila el bootstrap (ARM64 nativo)
- Compila los 3 productos + playground
- Configura servicios systemd
- Obtiene certificado Let's Encrypt

---

## Actualización (cada deploy)

Desde **tu máquina local** (WSL2):

```bash
# 1. Push cambios
cd ~/NyxLang
git add -A && git commit -m "descripción" && git push origin main
```

En **AWS**:

```bash
# 2. Actualizar y redesplegar
cd ~/nyx
git pull origin main
bash scripts/deploy.sh
```

`deploy.sh` hace:
- Recompila los 4 binarios a `bin/`
- Copia config de producción
- Reinicia los servicios systemd

---

## Estructura en el servidor

```
~/nyx/
├── bin/                    ← binarios compilados
│   ├── nyx-kv              ← 132KB
│   ├── nyx-serve           ← 150KB
│   ├── nyx-proxy           ← 151KB
│   └── nyx-playground      ← ~150KB
├── products/
│   ├── kv/
│   ├── serve/
│   └── proxy/
│       └── proxy.toml      ← config de producción
├── website/static/          ← landing page HTML/CSS
├── deploy/                  ← systemd services
├── nyx_bootstrap            ← el compilador
└── ... (código fuente)
```

---

## Comandos útiles

```bash
# Estado de los servicios
sudo systemctl status nyx-kv nyx-serve nyx-proxy

# Ver logs en tiempo real
sudo journalctl -u nyx-proxy -f
sudo journalctl -u nyx-serve -f
sudo journalctl -u nyx-kv -f

# Reiniciar un servicio
sudo systemctl restart nyx-proxy

# Reiniciar todos
sudo systemctl restart nyx-kv nyx-serve nyx-proxy

# Compilar un producto manualmente
cd ~/nyx
cp products/kv/main.nx script.nx
NYX_SKIP_SEMANTIC=1 ./nyx_bootstrap
clang -O2 script.ll runtime/*.c -lgc -lpthread -ldl -lm -lssl -lcrypto -lz -o bin/nyx-kv
```

---

## Certificado TLS

```bash
# Verificar expiración
sudo certbot certificates

# Renovar manualmente (normalmente auto-renueva)
sudo systemctl stop nyx-proxy
sudo certbot renew
sudo systemctl start nyx-proxy

# Los certs están en:
#   /etc/letsencrypt/live/nyxlang.com/fullchain.pem
#   /etc/letsencrypt/live/nyxlang.com/privkey.pem
```

---

## Sincronizar repo público

Desde **tu máquina local**:

```bash
cd ~/NyxLang
bash sync_to_public.sh
cd ~/nyx-public
git push --force origin main
```

---

## Troubleshooting

**"Connection refused" en puerto 443:**
```bash
sudo ss -tlnp | grep 443
# Si no aparece → nyx-proxy no está corriendo
sudo systemctl status nyx-proxy
sudo journalctl -u nyx-proxy --no-pager | tail -20
```

**Certificado expirado:**
```bash
sudo systemctl stop nyx-proxy
sudo certbot renew
sudo systemctl start nyx-proxy
```

**Tests fallan después de update:**
```bash
cd ~/nyx
make test 2>&1 | grep "Fallidos"
# test-123-full-asm SIEMPRE falla en ARM64 (inline asm x86) — es esperado
```

**Binario crashea:**
```bash
# Compilar con debug
clang -O0 -g script.ll runtime/*.c -lgc -lpthread -ldl -lm -lssl -lcrypto -lz -o bin/nyx-proxy-debug
sudo ./bin/nyx-proxy-debug
# Si segfaults, usar gdb:
sudo gdb ./bin/nyx-proxy-debug
```
