# Incident Response Playbook

A decision-tree workflow for security incidents. Not a policy document — a working guide for when things go wrong.

---

## Severity Classification

| Severity | Definition | Response Time | Example |
|----------|-----------|---------------|---------|
| **SEV-1** | Active breach, data exfiltration, or service compromise | Immediate | Unauthorized access to production DB, ransomware |
| **SEV-2** | Confirmed vulnerability being actively exploited, or credible threat | Within 1 hour | Exposed API with PII access, credential leak |
| **SEV-3** | Security event requiring investigation | Within 4 hours | Unusual login pattern, failed MFA bypass attempt |
| **SEV-4** | Low-risk security event, informational | Next business day | Port scan, phishing email (no click), policy question |

---

## Response Workflow

### Phase 1: Detect & Classify (First 15 minutes)

- [ ] What happened? (Alert source, initial indicators)
- [ ] When did it start? (Timeline)
- [ ] What systems are affected?
- [ ] Is it ongoing or historical?
- [ ] **Classify severity** using table above
- [ ] **If SEV-1 or SEV-2**: Immediately notify [incident commander / manager / ONCALL]

### Phase 2: Contain (First hour for SEV-1/2)

- [ ] Can we isolate the affected system without taking down production?
- [ ] Revoke compromised credentials (API keys, tokens, passwords)
- [ ] Block malicious IPs/domains at WAF/firewall if applicable
- [ ] Preserve logs and evidence (DO NOT delete or modify logs)
- [ ] Document every action taken with timestamps

### Phase 3: Investigate

- [ ] What was the attack vector? (How did they get in?)
- [ ] What data was accessed or exfiltrated?
- [ ] How long has the compromise been active?
- [ ] Are other systems affected?
- [ ] Who needs to be notified? (See COMMS_TEMPLATES.md)

### Phase 4: Remediate

- [ ] Fix the root cause (patch vulnerability, fix misconfiguration)
- [ ] Verify the fix
- [ ] Monitor for recurrence
- [ ] Restore from clean backup if needed

### Phase 5: Post-Incident

- [ ] Write incident report (timeline, root cause, impact, remediation)
- [ ] Conduct blameless post-mortem with involved teams
- [ ] Update detection rules to catch similar incidents faster
- [ ] Update this playbook with lessons learned
- [ ] File compliance notifications if required (breach notification laws)

---

## Communication Escalation

| Severity | Notify Immediately | Notify Within 4 Hours | Notify Within 24 Hours |
|----------|-------------------|----------------------|----------------------|
| SEV-1 | [Security Lead, Executive Team, CEO] | [Legal, affected customers if data breach] | [Board if material] |
| SEV-2 | [Security Lead, relevant VP] | [Engineering leadership if infrastructure affected] | [Leadership summary] |
| SEV-3 | [Security team] | [Relevant team lead] | [Weekly security report] |
| SEV-4 | [Security team log] | — | — |

See `COMMS_TEMPLATES.md` for notification drafts.
