# Claude Context Starter Kit

**Give your AI a brain before you give it a task.**

This is a collection of ready-to-use context files that make Claude (or any AI assistant) dramatically more useful. Instead of starting every conversation from scratch, you load these files and the AI begins with expert-level knowledge of your role, your projects, and your workflows.

No coding required. No special tools. Just text files.

---

## What This Solves

Every time you open Claude, ChatGPT, or Gemini, the AI has no idea who you are. You explain your role. Your projects. Your tools. Your preferences. Then you close the session, and tomorrow it's forgotten everything.

These files fix that. Load them into your AI project folder, and every session starts with context instead of amnesia.

---

## Quick Start (5 Minutes)

1. **Pick a template** from the `templates/` folder that matches your role
2. **Copy it** to a new folder on your computer (e.g., `~/my-ai-context/`)
3. **Customize it** — replace the `[bracketed placeholders]` with your actual information
4. **Load it into Claude Desktop** — drag the folder into a Claude Project
5. **Ask a question** about your work — notice the difference

That's it. Your AI now knows your world.

---

## What's Inside

### `/templates/` — Role-Based Starter Files
| Template | Who It's For |
|----------|-------------|
| `security-leader.md` | Security leaders, InfoSec managers, compliance officers |
| `tech-leader.md` | Technical leaders, engineering VPs, architects |
| `project-manager.md` | PMs, program managers, anyone tracking multiple workstreams |
| `executive.md` | C-suite, directors, non-technical leaders |
| `homelab.md` | Self-hosters, homelabbers, infrastructure enthusiasts |

Each template is a starting point. They're deliberately short (~50-80 lines). You'll grow them over time as you discover what context matters most for your work.

### `/security-program/` — Security Program Starter Pack
A complete Claude Desktop project folder for security professionals. Includes vulnerability management workflows, compliance checklists, incident response playbooks, and policy templates — all structured as AI-readable context files.

Drop this entire folder into a Claude Desktop project and immediately have an AI-assisted security program.

### `SAVE_WORKFLOW.md` — The Secret Sauce
Instructions that teach Claude how to update your context files at the end of each session. This is what makes context *compound* — every session ends smarter than it started, and the next session inherits that knowledge.

---

## How This Works (The 30-Second Explanation)

AI assistants have a "context window" — everything the AI can see during a conversation. When you load files into a project, those files become part of the context window. The AI reads them before you type anything.

A CLAUDE.md file is just a text file that describes your world. The AI treats it as background knowledge. Instead of "I'm a generic assistant," it thinks "I'm helping a security leader who manages vulnerability remediation with a 30-day SLA using Jira for ticketing and Snyk for scanning."

That shift — from generic to specific — is the entire difference between AI as a toy and AI as a tool.

---

## The Growth Pattern

Your context files will grow. That's the point.

| Timeline | What Gets Added |
|----------|----------------|
| Day 1 | Your role, team, 3 active projects |
| Week 1 | Your tools, preferences, key contacts |
| Month 1 | Workflows, checklists, lessons learned |
| Month 3 | Complete project portfolio, institutional knowledge, encoded judgment |

The author of this kit started with 20 lines. Four months later: 610 lines covering 15 projects, vulnerability management workflows, compliance references, team routing guides, and every mistake worth remembering. The compound effect is real.

---

## Works With

- **Claude Desktop** (recommended) — Drag folder into a Project
- **Claude Code** (CLI) — Files are read automatically from project directory
- **Claude.ai** (web) — Upload files at the start of a conversation
- **ChatGPT** — Upload files or paste content into Custom Instructions
- **Gemini** — Upload files at conversation start
- **Any AI assistant** — The pattern is universal; only the loading mechanism differs

---

## Philosophy

- **Start small** — A 10-line file is infinitely better than no file
- **Grow by frustration** — When you think "I already told you this," add it to the file
- **Encode judgment, not just facts** — Your lessons learned are more valuable than your org chart
- **Update, don't rewrite** — Add to the file at the end of each session (see SAVE_WORKFLOW.md)
- **Share the pattern** — A team with shared context files works consistently, not just faster

---

## Contributing

This kit was built by a security professional who used AI to manage vulnerability remediation, compliance audits, infrastructure security, and a homelab with 14 servers.

Suggestions, improvements, and new templates welcome.

---

## License

MIT. Use it. Customize it. Share it. Build on it.
