# Claude Context Starter Kit

**Give your AI a brain before you give it a task.**

---

## The Problem

Every time you open Claude, it starts with a blank slate. No memory of who you are, what you're working on, what you've already told it, or how you like to communicate. You re-explain. It guesses. You correct it. Repeat.

That's not the AI failing — that's just how it works. But you don't have to accept it.

## The Fix

A small, plain-text file called `CLAUDE.md` lives in your workspace folder. Every time you open Cowork, Claude reads it automatically. It learns who you are, what matters, and where things stand — before you say a word.

That's the whole idea. One file. Permanent context. No re-explaining.

---

## How It Works

**There are two levels of context:**

| Level | File | What it contains |
|---|---|---|
| **Workspace** | `CLAUDE.md` (root) | Who you are, your preferences, all active projects |
| **Project** | `projects/[name]/CLAUDE.md` | Everything specific to one project |

**The workspace file is your permanent brain.** It persists across every session and every project. Start here.

**Project files are loaded on demand.** Your workspace `CLAUDE.md` includes a pointer for each project — when you bring up that project, Claude reads the project file automatically. You never lose context mid-project.

---

## Quick Start (5 minutes)

> **Not a developer?** Click the green **Code** button at the top of this page, then click **Download ZIP**. Unzip the file — you'll find everything you need inside.

> **Not sure where to start?** Ask Claude: *"Can you walk me through setting up this workspace?"* and it will guide you step by step.

### Step 1 — Get the workspace template

Copy `CLAUDE.md` from this repo into the folder you use with Cowork. Open it and fill in the sections that matter most right now:

- **About Me** — your role, what you work on, how you communicate
- **Current Projects** — your top 3 active projects (with the `Context:` pointer for each)
- **Communication Preferences** — how you like Claude to respond

Don't try to fill in everything. A half-complete file beats a blank file every time.

### Step 2 — Select your folder in Cowork

Open the Claude desktop app, open Cowork, and select the folder where you just saved `CLAUDE.md`. Cowork will read it on every new session automatically.

### Step 3 — Test it

Start a new session. Ask Claude: *"What do you know about me and what I'm working on?"*

If it can tell you — you're set. That's the baseline. Now you can work without re-explaining from scratch.

### Step 4 — Activate the skills (optional but recommended)

Copy the `skills/` folder from this repo into your workspace folder alongside `CLAUDE.md`. Then add Standing Instructions #12 and #13 from `skills/README.md` to your workspace `CLAUDE.md`.

Once activated, you can say **"new project"** to get a guided project setup, and **"catch me up"** to recover cleanly after a context compact.

---

## Going Deeper — Project Folders & Skills

For any project you work on repeatedly, create a project folder:

```
your-workspace/
├── CLAUDE.md               ← Your permanent workspace brain
├── SAVE_WORKFLOW.md        ← How to save context between sessions
├── projects/
│   └── [project-name]/
│       ├── CLAUDE.md       ← All context for this project
│       ├── CHANGELOG.md    ← Project history
│       └── documents/      ← Files Claude produces for this project
├── scratch/                ← One-off tasks (no setup needed)
└── z-archive/              ← Completed projects (move, don't delete)
```

Pick a template from the `templates/` folder that matches your work, rename it `CLAUDE.md`, drop it in your project folder, and fill it in. Then add the pointer to your workspace `CLAUDE.md`:

```markdown
### Project: [Your Project Name]
**Status**: Active
**Goal**: [One sentence]
**Context**: Read `projects/[project-name]/CLAUDE.md` for full project context.
**Next Step**: [What's next]
```

That's it. Claude will load the project context whenever you mention it.

### Using the skills

The `skills/` folder includes two conversational workflows built into Claude:

- **New-project wizard**: Say "new project" and Claude walks you through
  setting up a project folder conversationally — no manual file creation.
- **Compact recovery**: Say "catch me up" after a long session and Claude
  reads your context files to confirm current state before continuing.

See `skills/README.md` for setup instructions.

---

## What's Inside

| File / Folder | What it is |
|---|---|
| `docs/user-guide.md` | Narrative walkthrough — what week one actually looks like, end to end |
| `CLAUDE.md` | Master workspace template — your permanent AI brain |
| `CLAUDE-example.md` | Fully filled-in example — see what a working file looks like |
| `SAVE_WORKFLOW.md` | Step-by-step guide for saving context between sessions |
| `COWORK_SETUP.md` | Installation and setup guide — install the app, select your folder, connect your tools |
| `SETUP_GUIDE.md` | First-time setup checklist and workspace health check — verify your configuration is complete |
| `templates/writing-communication.md` | For emails, reports, recurring communications |
| `templates/project-tracking.md` | For managing tasks, decisions, and blockers across a project |
| `templates/research-summarization.md` | For research projects, source tracking, and findings |
| `skills/` | Behavioral scripts for Claude — copy to your workspace to activate |
| `projects/` | One subfolder per active project |
| `scratch/` | One-off tasks — no setup, no SESSION files needed |
| `z-archive/` | Completed projects — move here, never delete |

---

## Works With

**Designed for Cowork** (Claude desktop app). Cowork reads your selected folder automatically — this kit is built around that behavior.

Also works with Claude.ai by pasting your `CLAUDE.md` content at the start of a conversation, and with Claude Code for developers who prefer the terminal.

---

## The Growth Pattern

| When | What you have | What Claude can do |
|---|---|---|
| Day 1 | Workspace `CLAUDE.md` filled in | Knows who you are, doesn't make you re-explain |
| Week 1 | One project folder set up | Remembers full project context across sessions |
| Month 1 | Multiple projects + CHANGELOG entries | Tracks history, picks up where you left off |
| Month 3 | Lessons Learned section populated | Gets better at your work as you use it |

---

## Philosophy

- **Context is infrastructure.** The five minutes you spend on a `CLAUDE.md` saves you hundreds of re-explanations.
- **Plain text lasts.** No app, no account, no sync required. These are just files.
- **Start minimal.** A partial file beats a blank file. Fill in what you know, ignore the rest.
- **Projects stay separate.** Don't mix everything into one giant file. Workspace for the permanent stuff, project folders for the specifics.
- **Save your work.** Claude's memory resets every session. The `SAVE_WORKFLOW.md` shows you how to end each session so the next one starts strong.

---

## Contributing

Found something that works even better? Open a PR. This kit is built from real usage patterns with real non-technical users in a Cowork environment. Practical improvements are welcome.

---

*Built for business users who want Claude to actually know them — no terminal required.*
