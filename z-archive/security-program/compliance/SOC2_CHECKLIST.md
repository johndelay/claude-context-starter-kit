# SOC 2 Compliance — Quick Reference & Evidence Tracker

This is a working checklist, not a comprehensive SOC 2 guide. Use it to track evidence readiness and identify gaps before auditor requests.

---

## Trust Service Criteria — Key Controls

### CC6: Logical and Physical Access

| Control | Status | Evidence Location | Last Verified |
|---------|--------|------------------|---------------|
| MFA enforced for all users | [Yes/No/Partial] | [e.g., IdP config screenshot] | [Date] |
| SSO configured for key applications | [Yes/No/Partial] | [e.g., App list with SSO status] | |
| Access reviews performed quarterly | [Yes/No] | [e.g., Review spreadsheet] | |
| Terminated user access revoked within [X] hours | [Yes/No] | [e.g., Offboarding checklist] | |
| Privileged access limited and reviewed | [Yes/No] | [e.g., Admin user list] | |

### CC7: System Operations / Security Monitoring

| Control | Status | Evidence Location | Last Verified |
|---------|--------|------------------|---------------|
| Vulnerability scanning active | [Yes/No] | [e.g., Scanner dashboard] | |
| Vulnerabilities remediated within SLA | [Yes/No] | [e.g., Jira query results] | |
| Security alerts monitored and triaged | [Yes/No] | [e.g., SIEM dashboard, alert tuning log] | |
| Incident response plan documented and tested | [Yes/No] | [e.g., IR playbook location] | |

### CC8: Change Management

| Control | Status | Evidence Location | Last Verified |
|---------|--------|------------------|---------------|
| All changes go through PR review | [Yes/No] | [e.g., Branch protection rules] | |
| CI/CD pipeline includes automated testing | [Yes/No] | [e.g., Pipeline config] | |
| Production deployments are logged | [Yes/No] | [e.g., Deployment log/tool] | |

### CC9: Risk Management

| Control | Status | Evidence Location | Last Verified |
|---------|--------|------------------|---------------|
| Risk assessment performed annually | [Yes/No] | [e.g., Risk register location] | |
| Third-party vendor risk assessed | [Yes/No] | [e.g., Vendor review spreadsheet] | |

---

## Audit Prep Rhythm

| Timeframe | Action |
|-----------|--------|
| Ongoing | Maintain evidence as controls operate (don't scramble before audit) |
| Quarterly | Access reviews, vendor reviews, risk register update |
| 30 days before audit | Pre-audit evidence review — fill gaps in table above |
| 1 week before | Auditor readiness meeting — review open items |

---

## Common Auditor Requests

Be ready to produce:
- [ ] List of all users with access to production systems
- [ ] Evidence of MFA enforcement
- [ ] Vulnerability scan results and remediation timelines
- [ ] Incident response plan and evidence of testing
- [ ] Change management evidence (PRs, approvals, deployments)
- [ ] Access review records
- [ ] Encryption policy (at rest and in transit)
- [ ] Backup and recovery testing evidence
