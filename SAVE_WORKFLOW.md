# The Save Workflow — Teaching AI to Update Your Context

This is the secret sauce. Without it, your context files are static — you wrote them once and they never improve. With it, every session automatically captures what you learned, what changed, and what to remember. Every session builds on the last. Knowledge compounds.

---

## The Core Idea

At the end of each work session, say **"save"**. Claude then:

1. Creates a session summary file (the durable record)
2. Updates your CLAUDE.md with new info and a resume marker
3. Adds a dated changelog entry
4. Updates any project-specific files that changed
5. **Verifies every write actually succeeded** before declaring done
6. Generates a handoff script — a ready-to-paste message for starting the next session that routes straight to the right SESSION file

The next session starts with all of that knowledge baked in — even if the conversation was compacted or closed.

---

## Why Verification Matters

A silent write failure looks identical to a successful save. Claude says "updated!" — but the file wasn't changed. You won't know until the next session starts without that context.

**The fix:** Claude must confirm every file write by reading back what it just wrote or reviewing the diff. "I updated X" is not acceptable. "I updated X — here's what changed" is.

---

## Your Workspace Structure

Before the save workflow can run reliably, your files need a home. This is the recommended structure:

    my-ai-workspace/
      CLAUDE.md                  <- The brain. Keep it short — link to projects, don't embed them.
      SAVE_WORKFLOW.md           <- These instructions
      CHANGELOG.md               <- Cross-project history: decisions, pivots, milestones

      projects/
        project-name/
          CLAUDE.md              <- What this project is about, decisions made, current status
          CHANGELOG.md           <- Project-specific log (keeps the root CHANGELOG clean)
          SESSION_YYYY-MM-DD.md  <- Session records — the most recent one is your recovery point
          documents/             <- Docs, drafts, and research Claude produces

      scratch/                   <- One-off tasks that don't need a project folder
      z-archive/                 <- Completed projects. Move here instead of deleting.

**Two CHANGELOG files — why:** The root `CHANGELOG.md` captures things that matter beyond any single project: strategic decisions, pivots, cross-project learnings. Each project's `CHANGELOG.md` captures the granular history of that project — details that would bury the signal in the root log.

**The `scratch/` folder:** Not everything needs a project folder. Quick drafts, one-off summaries, emails Claude helped write — those go in `scratch/`. No SESSION file needed for work you won't need to resume.

**The `z-archive/` pattern:** When a project wraps up, move its folder to `z-archive/`. Don't delete — projects have a way of becoming relevant again. Moving keeps your active `projects/` folder scannable at a glance.

---

## How to Set It Up

Add this section to the bottom of your CLAUDE.md file:

```markdown
## Save Workflow

When I say "save", perform these steps in order. Do not skip the verification step.

### Step 1 — Create a Session Summary File
Create a file named `SESSION_YYYY-MM-DD.md` in `projects/[project-name]/` for the project you worked on. For quick work in the `scratch/` folder, skip the SESSION file — those are one-off tasks, not resumable context.

Include:
- What we worked on and what was decided
- Key information gathered (people, facts, context)
- Any lessons learned or mistakes to avoid
- **NEXT ACTION:** one sentence — exactly what to do when this resumes
- **When Resuming This Session** — a section at the bottom that tells a future Claude exactly what to read and do to resume this project. ⚠️ This section must be rewritten from scratch every save — see Step 2.

This file is the most durable record. It survives compaction. Write it first.

### Step 2 — Update CLAUDE.md (this file)
- Update the "Last Updated" date at the top
- Update the NEXT ACTION field (see below) with one sentence
- Add or update current projects if anything changed
- Add new contacts, tools, or decisions if mentioned
- Add lessons learned
- **Rewrite the "When Resuming This Session" section** of the SESSION file to reflect the CURRENT next task. Overwrite it completely — do not append. Old resumption instructions are wrong the moment the task changes. It should answer: given what was just completed, what does a fresh Claude need to read and do to start the next task?

### Step 3 — Add a Changelog Entry
Two CHANGELOG files exist — choose the right one:
- **Project CHANGELOG** (`projects/[project-name]/CHANGELOG.md`): project-specific details, file changes, decisions within this project. Use this by default.
- **Root CHANGELOG** (`CHANGELOG.md`): cross-project significance — strategic decisions, pivots, milestones, anything that matters outside this project.

Be specific — "worked on project X" is not useful. Include file paths for anything created or modified.

### Step 4 — Update Project-Specific Files
If we worked on a specific project:
- Update that project's `CLAUDE.md` with decisions made, status changes, new information
- Save any documents, drafts, or research Claude produced in `projects/[project-name]/documents/`
- For scratch work, save Claude-produced files in `scratch/`

### Step 5 — VERIFY (do not skip)
For each file updated, confirm the write succeeded by:
- Reading back the key section that changed, OR
- Showing the diff of what changed

Then provide a save summary:
- ✅ or ❌ status for each file attempted
- What key information was captured
- The NEXT ACTION for this project
- Anything that needs follow-up

If any write failed, say so explicitly and attempt it again using a different method.

### Step 6 — Generate the Handoff Script
Output a ready-to-paste message for the user to send at the start of the next session:

---
Before doing anything else, read this file:
`projects/[project-name]/SESSION_YYYY-MM-DD.md`

Scroll to **"When Resuming This Session"** near the bottom and follow those instructions. Then confirm in one sentence what the current state of the project is and what you're about to tackle. Wait for my go-ahead before starting any work.
---

The SESSION file is the vault. The handoff script is the key. Output it directly in chat so the user can copy it immediately.
```

---

## The NEXT ACTION Field

Add this near the top of your CLAUDE.md, right after "Last Updated":

```markdown
**NEXT ACTION**: [One sentence — what to do when this session resumes]
```

Update it every save. When a conversation gets compacted or you come back after a break, this field tells you — and Claude — exactly where to pick up. No re-reading the whole file. No "where were we?"

Example entries:
- `Draft the standing instructions section of the v2 CLAUDE.md template`
- `Review the three vendor quotes and write a comparison summary for Dan`
- `Follow up with Asia on ENG-9024 status before the May 6 deadline`

---

## Save Early, Not Just at the End

Context fills up before sessions end. Compaction happens on the AI's schedule, not yours.

**Save before:**
- Starting complex multi-step work
- Making consequential decisions
- Going into a long research stretch
- Any time the conversation feels "heavy" with context

A mid-session save costs 2 minutes. Reconstructing lost context costs 20.

---

## What To Do After a Compact

**A compact happens when the conversation gets long enough that Claude compresses its memory of earlier exchanges into a summary.** You may not be notified. Claude continues — but it's now working from an approximation, not the full conversation.

**How to recognize it**: The conversation history looks shorter than expected. Claude seems unaware of something you discussed earlier. Claude starts doing something you already finished or decided against.

**What to do immediately**: Stop Claude before it continues. Say:

> "I think we just compacted. Please invoke the compact recovery skill before we go any further."

Without the compact recovery skill:

> "Please stop. Read my CLAUDE.md and the most recent SESSION file for this project, then tell me what you understand about our current state. Wait for my confirmation before doing anything."

**Why this matters**: A compact summary is an approximation. Decisions and completed work can be misrepresented. Sixty seconds to confirm state is always worth it.

**The best prevention**: Save before your conversation gets long. A current SESSION file is what Claude reads after a compact — the more recent it is, the faster recovery goes.

---

## What Gets Captured

**Always capture:**
- Decisions made (and the reasoning behind them)
- Status changes on active projects
- New people, tools, or information introduced
- Lessons learned — especially mistakes and what caused them
- The next action

**Don't over-save:**
- Facts you can easily look up again
- Exploratory thinking that didn't lead anywhere
- Drafts that were rejected

**The most valuable saves are mistakes.** "Never do X because Y happened" is worth more than any project status update.

---

## Why This Matters

Without the save workflow:
- Session ends → context disappears → next session starts from your original file
- Lessons learned? Gone. Decisions? Gone. Updated project status? Gone.

With the save workflow:
- Session ends → context captured in files → next session starts where you left off
- **The compaction problem goes away.** When the AI's memory resets, your files don't.

**The math**: 5 useful details per save × 4 sessions per week × 12 weeks = 240 details that would have been lost. That's the difference between an AI that knows your world and one that's perpetually a stranger.

---

## Troubleshooting

**"Claude said it saved but the file didn't change."**
This is a tool mismatch problem. In some environments, Claude has access to multiple file-writing tools that work differently. If a write fails silently, ask Claude to try again and confirm the result by reading the file back. If it keeps failing, ask Claude which tool it's using and whether it has filesystem access to that path.

**"The session summary file is getting huge."**
That's fine — these files are meant to be complete records, not summaries of summaries. If your CLAUDE.md is getting huge, that's the problem to fix. See the Topic Router pattern below.

**"I forgot to say save."**
You'll lose that session's context. Start the next session by asking Claude: "Can you read the last session summary and tell me where we left off?" If there's no session summary, reconstruct from memory together and save immediately.

---

## The Topic Router Pattern (for large projects)

If your CLAUDE.md grows past ~150 lines, it becomes hard to maintain and Claude starts missing things buried at the bottom. The fix: keep CLAUDE.md short and use it as a routing table to detailed files.

```markdown
## Project Index
- People & Contacts → /Admin/PEOPLE.md
- Active Projects → /Projects/ACTIVE.md
- Lessons Learned → /Admin/LESSONS.md
- Tech Stack → /Admin/TECH_STACK.md
```

This keeps the primary file lean and lets detailed context live in purpose-built documents. Claude reads the router first, then fetches the relevant file for the current task.
