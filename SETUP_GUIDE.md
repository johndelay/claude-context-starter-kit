# Workspace Setup Guide

This file serves two purposes: a plain-language checklist you can follow to verify your workspace is configured correctly, and an AI-readable diagnostic that Claude can use to walk you through setup or identify what's missing.

**This guide covers workspace configuration and verification.** For app installation, connecting tools, and selecting your workspace folder, see `COWORK_SETUP.md`.

---

## Section 1 — First-Time Setup Checklist

Work through these in order. Each step depends on the one before it.

- [ ] **App installed and Cowork open.** The Claude Desktop app is installed and you've clicked into the Cowork tab. *(If you haven't done this yet, start with `COWORK_SETUP.md`.)*

- [ ] **Workspace folder selected.** You've selected your workspace folder inside Cowork — the folder where your `CLAUDE.md` lives. Claude reads everything inside this folder at the start of every session.

- [ ] **`CLAUDE.md` is in the workspace folder.** You've copied `CLAUDE.md` from this kit into your workspace folder. It's sitting alongside `SAVE_WORKFLOW.md` and `COWORK_SETUP.md`, not buried inside a subfolder.

- [ ] **`CLAUDE.md` is filled in.** The About Me, Current Projects, and Communication Preferences sections have your real information — not `[bracket placeholders]`. A half-filled file is fine. An all-brackets file gives Claude nothing to work with.

- [ ] **`skills/` folder is in the workspace folder.** You've copied the entire `skills/` folder from this kit into your workspace folder, alongside `CLAUDE.md`. This is what makes the new-project wizard and compact recovery work. *(See `skills/README.md` for what's inside.)*

- [ ] **Standing Instruction #12 is present.** Your `CLAUDE.md` includes the New Project Setup rule (SI #12) in the Standing Instructions section. This tells Claude to run the wizard when you say "new project." *(The text is in `skills/README.md` if you need to add it.)*

- [ ] **Standing Instruction #13 is present.** Your `CLAUDE.md` includes the Compact Recovery rule (SI #13) in the Standing Instructions section. This tells Claude to run the recovery protocol when you say "catch me up." *(The text is in `skills/README.md` if you need to add it.)*

- [ ] **Test prompt run.** You've opened a new session and asked Claude: *"What do you know about me and what I'm working on?"* — and Claude gave you a real answer with your name, role, and at least one current project. If it could, you're set.

---

## Section 2 — Workspace Health Check

Once your workspace is configured, you can ask Claude to audit it for you. Paste the prompt below into a new Cowork session. Claude will read your `CLAUDE.md`, check for the skills folder and Standing Instructions, look for project context files, and tell you what's working and what needs attention.

You don't need to explain anything first — just paste and send.

> **Health check prompt (copy and paste this verbatim):**
>
> *"Please run a workspace health check. Read my CLAUDE.md and tell me: (1) Is it filled in with my real information, or does it still have placeholder brackets? (2) Are the skills folder and Standing Instructions #12 and #13 present? (3) Do my project pointers have matching project context files? Tell me what's working and what needs attention."*

**What Claude will check:**

1. Whether `CLAUDE.md` has real content in About Me, Current Projects, and Communication Preferences — or whether key sections still have `[bracket placeholders]`
2. Whether the `skills/` folder is present in the workspace, and whether SI #12 and SI #13 appear in the Standing Instructions section of `CLAUDE.md`
3. For each project listed in Current Projects, whether there's a matching project context file at the path the `Context:` pointer specifies

**What to do with the results:** Claude will tell you what's working and flag anything that needs attention. For each gap, it will tell you how to fix it. You can address items one at a time and re-run the health check prompt to confirm.

---

## Section 3 — Troubleshooting

### Claude doesn't know me

**Symptom**: You ask Claude what it knows about you and it responds generically — no name, no role, no project awareness.

**Most likely causes**:
- `CLAUDE.md` still has `[bracket placeholders]` instead of your real information
- You selected the wrong folder in Cowork — the folder you selected doesn't actually contain your `CLAUDE.md`
- `CLAUDE.md` was saved in the wrong location (inside a subfolder instead of the workspace root)

**Fix**: Open your `CLAUDE.md` and check that About Me has your real name and role. Then verify that the file is in the top level of the folder you selected in Cowork — not one level down. Once you've confirmed both, start a new session and run the health check prompt from Section 2.

---

### Skills aren't working

**Symptom**: You said "new project" or "catch me up" and Claude improvised a response instead of following the structured wizard or recovery protocol. No error — just a quieter, less guided experience than expected.

**Most likely causes**:
- The `skills/` folder was never copied into your workspace folder (it's still sitting in the downloaded kit, not in the folder Cowork reads)
- Standing Instructions #12 and/or #13 are missing from your `CLAUDE.md` — Claude doesn't know to look for the skill files

**Fix**:
1. Copy the `skills/` folder from this kit into your workspace folder, alongside `CLAUDE.md`
2. Open your `CLAUDE.md` and check the Standing Instructions section — SI #12 and SI #13 should both be there. If they're missing, copy the text from `skills/README.md` and add them after SI #11
3. Run the health check prompt from Section 2 to confirm Claude can now find both skill files

---

### A connector is grayed out

**Symptom**: You go to Settings → Connectors and the connector you want (Google, Microsoft 365, Slack) appears grayed out or unclickable.

**Most likely causes**:
- Your organization's Cowork admin hasn't enabled that connector in Organization settings (Team and Enterprise plans)
- For Microsoft 365 specifically: a Microsoft Global Administrator needs to complete a one-time consent before anyone at your organization can connect

**Fix**: See the connector setup section in `COWORK_SETUP.md` — it covers the admin consent requirement for Microsoft 365 and the org-level settings for Team and Enterprise plans in detail.

---

## Section 4 — What Good Looks Like

A fully working setup has a specific feel from the moment you open a session. Claude greets you knowing your name and role — not because you told it just now, but because it read your `CLAUDE.md` before you said a word. When you mention a project by name, Claude loads the project context file automatically and picks up where you left off, without you re-explaining the background. When you say "new project," it starts a structured conversation — asking about goals, stakeholders, and timeline — before creating any files. When you say "catch me up," it reads your session records and presents a current-state brief for your confirmation before doing anything. At the end of a session, saying "save" triggers a clean handoff: a SESSION file is written, NEXT ACTION is updated, and Claude reads back what it wrote to confirm the save succeeded. That's the target state — every piece of the kit working together so that Claude knows you, remembers your work, and picks up cleanly every time.

---

*Part of the [Claude Context Starter Kit](https://github.com/johndelay/claude-context-starter-kit). See `README.md` for the full kit overview and `COWORK_SETUP.md` for installation.*
