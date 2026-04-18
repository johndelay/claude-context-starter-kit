# Security Program — AI-Assisted Management

**Last Updated**: [Date]

This folder is a complete Claude Desktop project for managing a security program. Load the entire folder into a Claude Project and your AI assistant will understand your security posture, workflows, compliance requirements, and team structure.

---

## My Security Program

**Company**: [Company name]
**Industry**: [e.g., SaaS, Healthcare, Financial Services, Education]
**Employees**: [Count]
**My role**: [e.g., Head of Security, Security Manager, Director of Information Security]
**I report to**: [Name, Title]

---

## Security Stack

| Category | Tool | Purpose |
|----------|------|---------|
| Vulnerability scanning | [e.g., Nessus, Snyk, or Dependabot] | [Scan frequency, what it covers] |
| SIEM / Monitoring | [e.g., Microsoft Sentinel, Splunk, or Elastic SIEM] | [What it monitors] |
| Endpoint protection | [e.g., CrowdStrike, Microsoft Defender, or SentinelOne] | [Coverage — managed/BYOD] |
| WAF | [e.g., AWS WAF, Cloudflare, or Akamai] | [What it protects] |
| Identity | [e.g., Okta, Azure AD, or Google Workspace] | [SSO, MFA status] |
| Password management | [e.g., Bitwarden, 1Password, or Dashlane] | [Adoption rate] |
| Ticketing | [e.g., Jira, Linear, or ServiceNow] | [Project/board for security tickets] |

---

## Compliance Frameworks

| Framework | Status | Audit Cycle | Auditor | Next Milestone |
|-----------|--------|-------------|---------|----------------|
| [e.g., SOC 2 Type 2] | [Active/Planning] | [Annual] | [Name] | [Next audit date] |
| [e.g., ISO 27001] | [Certified/In Progress] | | | |
| [e.g., HIPAA] | [Compliant] | | | |

---

## Team Routing

When a security issue needs action, route to:

| Type of Issue | Team / Person | Method |
|---------------|--------------|--------|
| [e.g., Python dependency vulnerability] | [Team name / Lead] | [e.g., Jira ticket in ENG project] |
| [e.g., Frontend/JavaScript vulnerability] | [Team name / Lead] | [Same] |
| [e.g., Infrastructure / cloud config] | [Team name / Lead] | [Same] |
| [e.g., Urgent / Critical severity] | [e.g., ONCALL rotation] | [e.g., PagerDuty] |

---

## Current Priorities

1. **[Priority]** — [Status, deadline, owner]
2. **[Priority]** — [Status, deadline, owner]
3. **[Priority]** — [Status, deadline, owner]

---

## What's In This Folder

| File | Purpose |
|------|---------|
| `vulnerability-mgmt/WORKFLOW.md` | Step-by-step vulnerability remediation process |
| `vulnerability-mgmt/TRIAGE_MATRIX.md` | How to assess and route vulnerabilities |
| `vulnerability-mgmt/TICKET_TEMPLATES.md` | Copy-paste templates for creating and closing tickets |
| `compliance/SOC2_CHECKLIST.md` | SOC 2 control mapping and evidence tracker |
| `compliance/AUDIT_PREP.md` | What to gather before auditor meetings |
| `incident-response/PLAYBOOK.md` | IR workflow with decision points |
| `incident-response/COMMS_TEMPLATES.md` | Notification templates for stakeholders |
| `policies/TEMPLATE.md` | Policy document skeleton |

---

## Lessons Learned

<!-- This section grows over time. It's the most valuable part of this file. -->

- [Add lessons as you learn them — each one prevents a future mistake]

---

## Save Workflow

When I say "save":
1. Update this file — date, priorities, stack changes, new lessons
2. Update any sub-documents we worked on
3. Add changelog entry with specific details
4. Tell me what was captured and what needs follow-up
