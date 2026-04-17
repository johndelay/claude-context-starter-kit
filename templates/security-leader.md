# CLAUDE.md — Security Leader Template

**Last Updated**: [Date]

---

## My Role

I'm the [Title — e.g., Head of Security / Security Manager / Director of InfoSec] at [Company].
I report to [Name], [Their Title — e.g., Director of Technology / VP of Technology / CEO].

**What I actually do day-to-day**:
- [e.g., Manage vulnerability remediation across engineering teams]
- [e.g., Maintain SOC 2 / ISO 27001 / HIPAA compliance]
- [e.g., Run security tooling — scanner, SIEM, endpoint protection]
- [e.g., Review and approve security-related pull requests]
- [e.g., Respond to security incidents and alerts]

---

## My Team & Key Contacts

| Person | Role | What I Work With Them On |
|--------|------|--------------------------|
| [Name] | [Title] | [e.g., My manager — approvals, budget, escalations] |
| [Name] | [Title] | [e.g., Infrastructure lead — cloud platform, Kubernetes, networking] |
| [Name] | [Title] | [e.g., Engineering team lead — vulnerability fix routing] |
| [Name] | [Title] | [e.g., Compliance analyst — audit prep, evidence collection] |

---

## Security Stack

| Tool | Purpose | Notes |
|------|---------|-------|
| [e.g., Qualys, Snyk, or Dependabot] | Vulnerability scanning | [e.g., Scans weekly, alerts on High+] |
| [e.g., Splunk, Elastic SIEM, or Microsoft Sentinel] | SIEM / log monitoring | [e.g., Monitors cloud + endpoints] |
| [e.g., CrowdStrike, Carbon Black, or Microsoft Defender] | Endpoint protection | [e.g., Deployed on all managed devices] |
| [e.g., AWS WAF, Cloudflare, or Imperva] | Web application firewall | [e.g., Protects production apps] |
| [e.g., 1Password, Bitwarden, or LastPass] | Password management | [e.g., Company-wide, tracking adoption] |
| [e.g., Jira, ServiceNow, or Linear] | Ticket tracking | [e.g., Security project for vuln tickets] |

---

## Current Projects

### Active
1. **[Project Name]** — [One sentence: what it is and current status]
2. **[Project Name]** — [One sentence]
3. **[Project Name]** — [One sentence]

### Recently Completed
- **[Project]** — [What was accomplished, when]

---

## Vulnerability Management

### SLA
- **Critical**: [e.g., 7 days]
- **High**: [e.g., 30 days]
- **Medium**: [e.g., 90 days]
- **Low**: [e.g., Next scheduled maintenance]

### Workflow
1. Receive alert from [scanner tool]
2. Assess severity and impact
3. Route to appropriate team: [e.g., Python → Team A, PHP → Team B, Frontend → Team C]
4. Create ticket in [ticketing system] with [label/tag]
5. Track remediation against SLA
6. Verify fix in production
7. Close ticket with evidence

### Escalation
- **Urgent issues**: [e.g., Use ONCALL rotation, not individual engineers]
- **Routine routing**: [e.g., Team leads for sprint planning]

---

## Compliance

| Framework | Status | Cycle | Auditor |
|-----------|--------|-------|---------|
| [e.g., SOC 2 Type 2] | [e.g., Active] | [e.g., Annual, Jan-Dec] | [e.g., Auditor name] |
| [e.g., ISO 27001] | [e.g., Planning] | | |
| [e.g., HIPAA] | [e.g., Compliant] | | |

---

## Lessons Learned

<!-- Add to this section over time. These are your encoded judgment — 
     the most valuable context you can give an AI. -->

- [e.g., Always check the production lock file before closing a vuln ticket — 
  a merged PR doesn't guarantee the vulnerable version is actually gone]
- [e.g., Route urgent issues through on-call rotations, not individual engineers — 
  it distributes load fairly and guarantees someone is available]
- [e.g., Low-effort fixes (simple version bumps) are faster to do yourself than 
  to queue for engineering — waiting costs more than the 10 minutes it takes]

---

## How I Work

- [e.g., I prefer direct, concise answers — no filler]
- [e.g., When reviewing vulnerabilities, always show me the CVE number and affected package version]
- [e.g., For compliance questions, reference the specific control number]
- [e.g., Don't assume I know developer tooling — explain git/CI concepts clearly]

---

## Save Workflow

When I say "save", perform these steps:

1. **Update this file** — Update "Last Updated" date, modify projects, add lessons learned
2. **Update project files** — If we worked on a specific project, update its docs
3. **Changelog entry** — Add dated entry to CHANGELOG.md with specifics
4. **Tell me** — What was updated, what was captured, what needs follow-up
