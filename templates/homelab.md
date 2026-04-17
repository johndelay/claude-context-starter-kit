# CLAUDE.md — Homelab / Self-Hosted Infrastructure Template

**Last Updated**: [Date]

---

## My Setup

**Network**: [e.g., 192.168.1.0/24, UniFi gear, VLAN for IoT]
**Internal domain**: [e.g., home.lab, mylab.internal]

### Servers

| Hostname | IP | Role | Key Services |
|----------|-----|------|-------------|
| [e.g., docker-01] | [IP] | [e.g., App containers] | [e.g., n8n, homepage, media] |
| [e.g., monitor-01] | [IP] | [e.g., Monitoring stack] | [e.g., Grafana, Prometheus, Loki] |
| [e.g., nas-01] | [IP] | [e.g., Storage/NAS] | [e.g., SMB shares, backups] |

### Key Services

| Service | Host | Port | Access |
|---------|------|------|--------|
| [e.g., n8n] | [hostname] | [port] | [e.g., https://n8n.mylab.internal] |
| [e.g., Grafana] | [hostname] | [port] | [e.g., Local + Cloudflare Tunnel] |
| [e.g., AdGuard Home] | [hostname] | [port] | [e.g., Primary DNS for network] |

---

## Docker Services

Convention: `/opt/<service-name>/docker-compose.yml`

| Service | Location | Compose File | Status |
|---------|----------|-------------|--------|
| [e.g., n8n] | `/opt/n8n/` | `docker-compose.yml` | Running |
| [e.g., grafana] | `/opt/grafana/` | `docker-compose.yml` | Running |

---

## Backup Strategy

| What | Method | Schedule | Destination |
|------|--------|----------|-------------|
| [e.g., Docker volumes] | [e.g., n8n workflow] | [e.g., Daily 2:30 AM] | [e.g., NAS + offsite] |
| [e.g., Databases] | [e.g., pg_dump script] | [e.g., Nightly] | [e.g., /opt/backups/] |
| [e.g., VMs] | [e.g., Proxmox snapshots] | [e.g., Weekly] | [e.g., PBS server] |

---

## Current Projects

1. **[Project]** — [Status]
2. **[Project]** — [Status]

---

## Common Tasks

### Add a new Docker service
```bash
sudo mkdir -p /opt/<service-name>
cd /opt/<service-name>
# Create docker-compose.yml
docker compose up -d
```

### Check service health
```bash
docker compose -f /opt/<service>/docker-compose.yml ps
docker compose -f /opt/<service>/docker-compose.yml logs --tail 50
```

---

## Gotchas & Lessons

- [e.g., Port 37777 used by sketchy plugin — always check what's binding to ports on your network]
- [e.g., SyncThing conflict files (*.sync-conflict*) happen when editing same file from 2 machines]
- [e.g., Keepalived VRRP traffic is unencrypted by default — VLAN or WireGuard it]

---

## Save Workflow

When I say "save":
1. Update server table, service list, and project status
2. Add any new gotchas or lessons learned
3. Tell me what changed
