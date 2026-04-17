# Incident Communication Templates

Ready-to-customize notification templates for security incidents.

---

## Internal Executive Notification (SEV-1/2)

```
Subject: [SEV-X] Security Incident — [Brief Description]

Team,

We are responding to a security incident classified as SEV-[X].

**What happened**: [1-2 sentences describing the incident]
**When detected**: [Date/time]
**Current status**: [Contained / Under investigation / Active]
**Impact**: [What systems/data are affected]
**Actions taken**: [What we've done so far]

**Next update**: [Time — e.g., "within 2 hours" or "by 5 PM today"]

I'm serving as incident commander. Please direct questions to me directly.

[Your name]
```

---

## Engineering Team Notification

```
Subject: Security Incident — Action Required from [Team Name]

[Team lead name],

We've identified a security incident that affects [system/service your team owns].

**What we need from your team**:
- [Specific action — e.g., "Review access logs for service X since [date]"]
- [Specific action — e.g., "Rotate API keys for [service]"]

**Timeline**: [e.g., "Please complete by end of day"]

**Context**: [Brief explanation of the incident, enough for them to act but not so much that it slows them down]

Please confirm receipt and expected completion time.

[Your name]
```

---

## Customer Notification (If Required)

```
Subject: Important Security Notice from [Company]

Dear [Customer],

We are writing to inform you of a security incident that may have
affected your data.

**What happened**: [Clear, non-technical description]
**What data was involved**: [Specific data types — e.g., email addresses, names]
**What data was NOT involved**: [e.g., passwords, payment information]
**What we've done**: [Remediation steps taken]
**What you should do**: [e.g., "No action required" or "We recommend changing your password"]

We take the security of your data seriously. If you have questions,
please contact [support email/phone].

[Your name / Company name]
```

---

## Post-Incident Summary (For Leadership)

```
Subject: Incident Report — [Brief Description] — [Date]

## Summary
[2-3 sentences: what happened, impact, resolution]

## Timeline
- [Time]: [Event]
- [Time]: [Event]
- [Time]: [Event — resolution]

## Impact
- **Systems affected**: [List]
- **Data affected**: [Type and scope, or "No data exposure confirmed"]
- **Duration**: [How long the incident lasted]
- **Users impacted**: [Number, or "None"]

## Root Cause
[What caused this to happen]

## Remediation
- [What was fixed]
- [What will be changed to prevent recurrence]

## Compliance Notifications
- [Required/Not required] — [Reason]
- [If required, status of notification]
```
