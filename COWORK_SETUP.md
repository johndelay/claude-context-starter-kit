# Setting Up Claude Cowork

**This guide takes you from zero to a working Cowork setup — installed, pointed at your workspace folder, and connected to your tools.**

No terminal. No config files. No technical background required.

---

## Before You Start

Two things to check before you download anything:

**1. You need a paid Claude plan.**
Cowork is available on Pro, Max, Team, and Enterprise plans. It's not included with a free account. If you're not sure what plan you're on, log in at [claude.ai](https://claude.ai) and check your account settings.

**2. You need a Mac or Windows PC.**
Cowork runs inside the Claude Desktop app, which is available for:
- macOS (Intel and Apple Silicon)
- Windows (x64)

> **Windows arm64 users**: Native support is not yet available. Check [claude.com/download](https://claude.com/download) for the latest compatibility information.

Linux is not currently supported.

---

## Step 1 — Install the Claude Desktop App

### On Mac

1. Go to [claude.com/download](https://claude.com/download)
2. Click the Mac download button
3. Open the downloaded file and drag Claude to your Applications folder
4. Launch Claude from Applications

### On Windows

1. Go to [claude.com/download](https://claude.com/download)
2. Click the Windows download button
3. Run the installer and follow the prompts
4. Launch Claude from the Start menu

### Not sure if your computer is ready?

Anthropic provides a small readiness checker you can download from [claude.com/download](https://claude.com/download). Run it and it'll tell you: *"This computer is ready for Cowork."* Useful if you're setting this up for someone else or want to confirm before installing.

---

## Step 2 — Open Cowork

Once Claude Desktop is installed and open:

1. Look for the tab selector near the top of the window — it shows **Chat** and **Cowork**
2. Click **Cowork**

That's it. You're now in Cowork mode.

> **Keep the app open while Claude is working.** Cowork runs tasks in the background, but closing the app stops any active work mid-task.

---

## Step 3 — Select Your Workspace Folder

This is the most important step. When you select a folder, Claude reads everything inside it — including your `CLAUDE.md` context file. That's how Claude knows who you are, what you're working on, and how you like to communicate, right from the start of every session.

### What folder to select

Don't point Cowork at your entire Documents folder or Desktop — that's more access than Claude needs, and it's harder to keep organized.

Instead, create a dedicated workspace folder and select that. Something like:

```
~/Claude-Workspace/
```

or wherever you've set up the folder structure from this kit.

If you haven't set up your workspace folder yet, the **README** in this kit walks you through it in 5 minutes.

### How to select the folder

1. In the Cowork tab, look for the folder icon or "Select folder" option
2. Navigate to your workspace folder and select it
3. Claude will ask for permission to read (and optionally edit) files in that location — click Allow

Once selected, Claude will read your `CLAUDE.md` automatically at the start of every session.

---

## Step 4 — Test It

Open a new Cowork session and paste this:

> *"What do you know about me and what I'm working on?"*

If Claude can tell you — you're set. It's reading your context file and you're good to go.

**If Claude says it doesn't know much about you**, one of these is likely:
- You haven't filled in your `CLAUDE.md` yet — open it and add your name, role, and one current project
- You selected the wrong folder — make sure the folder you selected actually contains your `CLAUDE.md`
- You haven't created a `CLAUDE.md` yet — copy the template from this kit and drop it in your workspace folder

---

## Step 5 — Connect Your Tools (Optional but Recommended)

Connectors let Claude reach into the tools you already use — searching your email, reading documents from Drive, checking your calendar — without you having to paste everything into the conversation.

### How to add a connector

1. Click the **+** button in the chat interface and hover over **Connectors**, then select **Manage connectors**  
   — or —  
   Go to **Settings → Customize → Connectors**
2. Find the connector you want and click it
3. Click **Connect**
4. Follow the sign-in prompts to grant Claude access

That's the general flow. Specifics for each tool are below.

---

### Which connectors are right for you?

Not sure where to start? Connect based on what you do, not what's available. One well-chosen connector is worth more than four half-used ones.

| Use case | Connect first | Then add | Skip for now |
|---|---|---|---|
| **Writing & Communication** | Gmail or Outlook | Calendar, Google Drive / OneDrive | SharePoint, Slack |
| **Research & Summarization** | Google Drive or SharePoint | Gmail or Outlook, Slack | Calendar |
| **Project Tracking** | Slack | Gmail or Outlook, Google Drive / SharePoint | Calendar |

**Writing & Communication** — Email is the core. Connect Gmail or Outlook first and Claude can reference existing threads, avoid restating things you've already communicated, and draft replies with full context. Calendar is the second-best addition — meeting prep, agenda drafting, and follow-ups become much faster when Claude can see what's coming. Google Drive or OneDrive rounds it out if you work from shared documents, but it's the third priority, not the first.

**Research & Summarization** — Documents are the raw material. Connect Google Drive or SharePoint first — that's where your source material lives, and being able to reference docs without uploading them is the entire value of this use case. Email is a useful second: vendor threads, stakeholder feedback, and prior research often live in inboxes. Slack is helpful if team discussions are part of your research trail. Calendar is the lowest priority here.

**Project Tracking** — Slack is the highest-value connector for this use case, because that's where decisions actually get made and where project communication lives. Connect it first. Google Drive or SharePoint is a close second — project specs, meeting notes, and deliverables. Email covers the stakeholder communication trail. Calendar is useful but rarely the missing piece — most project context lives in conversations and documents, not the calendar itself.

> **Google or Microsoft?** Both ecosystems are fully supported. The setup steps below cover Google Workspace (Drive, Gmail, Calendar) and Microsoft 365 (Outlook, OneDrive, SharePoint) separately. Pick whichever your organization uses — or both, if you work across both.

---

### Google Workspace — Drive, Gmail, and Calendar

Connects Claude to your Google files, email, and calendar. Once connected, you can ask Claude to find documents, search your inbox, or check your schedule — all without leaving the conversation.

**Works on**: All paid plans (Pro, Max, Team, Enterprise)

**Setup**: Standard Google sign-in. Click Connect, sign in with your Google account, and approve the permissions.

**If you're on a Team or Enterprise plan**: Your organization's Owner needs to enable Google Workspace connectors in Organization settings before you can connect. If the connector appears grayed out, ask your Cowork admin.

**A few things to know:**
- Claude can draft emails but cannot send them — you still send from Gmail yourself
- Claude can't read images embedded in documents or emails
- Newly uploaded files may take a few hours to be searchable

---

### Microsoft 365 — Outlook, OneDrive, and SharePoint

Connects Claude to your Microsoft email, files, and internal sites. Once connected, Claude can search your Outlook inbox, read documents from OneDrive and SharePoint, and surface information from across your Microsoft environment.

**Works on**: All plans — but read the requirements below before you try to connect.

> ⚠️ **Two requirements that catch people off guard:**
>
> **1. You need a work account.** Personal Microsoft accounts (@outlook.com, @hotmail.com, @live.com) cannot connect. You need an account tied to a Microsoft 365 business subscription (typically your work email).
>
> **2. A Microsoft Global Administrator must consent first.** Before anyone at your organization can connect, a Microsoft Entra Global Administrator needs to complete a one-time authorization. If you're not sure who that is, it's usually your IT department. Ask them to connect to Microsoft 365 in Claude first — once they've done it, everyone else can connect normally.

**Setup (after admin consent):**
1. Go to Settings → Customize → Connectors
2. Find Microsoft 365 and click Connect
3. Sign in with your work Microsoft account

**A few things to know:**
- Claude has read-only access — it cannot create, edit, delete, or send anything in Microsoft 365
- Recently uploaded files may not be searchable immediately
- Claude can only access files and emails you already have permission to view

---

### Slack

Connects Claude to your Slack workspace so it can search messages and surface information from channels you have access to.

**Works on**: All paid plans

**Setup**: Standard Slack OAuth. Click Connect, sign in to your Slack workspace, and approve the permissions requested.

---

## Step 6 — What to Do Next

You're set up. Here's the natural next step depending on where you are:

**If you haven't filled in your CLAUDE.md yet** — open it now and fill in the About Me and Current Projects sections. Even a half-complete file makes a meaningful difference. The `CLAUDE.md` template in this kit has guidance in every section.

**If you want to set up a project folder** — the README walks through the full workspace structure. It takes about 10 minutes and is worth it for anything you work on more than once.

**If you want Claude to remember things across sessions** — read `SAVE_WORKFLOW.md`. It explains how to end a session so the next one picks up right where you left off.

---

## Troubleshooting

| Problem | Most likely cause | Fix |
|---|---|---|
| Claude doesn't know anything about me | `CLAUDE.md` is missing or empty | Copy the template from this kit, fill in the basics, save it in your workspace folder |
| Claude says it can't find my files | Wrong folder selected | Re-select your workspace folder in the Cowork tab — make sure it's the folder that actually contains your `CLAUDE.md` |
| Connector is grayed out | Team/Enterprise org setting | Ask your Cowork admin to enable the connector in Organization settings |
| Microsoft 365 won't connect | Personal account or no admin consent | Confirm you're using a work email; ask your IT admin to complete the one-time consent first |
| App says I need a paid plan | Free account | Upgrade to Pro, Max, Team, or Enterprise at [claude.ai/settings](https://claude.ai/settings) |
| Cowork stops mid-task | App was closed | Keep the Claude Desktop app open while tasks are running |

---

*Part of the [Claude Context Starter Kit](https://github.com/johndelay/claude-context-starter-kit) — built for business users who want Claude to actually know them.*
