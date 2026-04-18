---
name: compact-recovery
description: State-recovery skill for after a context compact. Use when the user
  suspects conversation history was compressed — they may say "I think we just
  compacted," "catch me up," or "confirm where we are." Reads context files,
  synthesizes current state, and presents a summary for user confirmation before
  any work continues.
---

## Trigger

Activate this skill when the user says any of the following (or close variations):

- "I think we just compacted"
- "catch me up"
- "can you catch up on where we are?"
- "confirm current state"
- "what were we working on?"
- "I think something got compressed"
- "did we just compact?"

Do not auto-trigger. This skill is user-invoked only. If the user is simply
asking for a status update mid-conversation without concern about compaction,
respond conversationally rather than invoking the full recovery protocol.

---

## Behavior

### Step 1 — Acknowledge and set expectations

Say something like:

> "On it. Let me read your context files and build a picture of where we are.
> I'll show you what I find before we do anything else."

Do not guess at current state from your compact summary. Go read the files.

### Step 2 — Read the workspace CLAUDE.md

Use `mcp__filesystem__` tools only. Do not use the built-in Read tool — it
uses sandbox paths and cannot access the user's filesystem.

Read the workspace `CLAUDE.md` at the root of the user's selected Cowork
folder. Extract:

- **NEXT ACTION** field — the single most reliable indicator of current task
- **Current Projects** section — identifies active project(s) and context file paths
- **Standing Instructions** — behavioral rules in effect for this workspace

If the workspace `CLAUDE.md` does not exist or cannot be found, say so and
ask the user where their workspace folder is before continuing.

### Step 3 — Find and read the active project's SESSION file

From the Current Projects section, identify the active project folder
(e.g., `projects/crm-vendor-evaluation/`).

Find the most recent `SESSION_*.md` file in that folder. If multiple SESSION
files exist, use the one with the most recent date in the filename.

Read the full SESSION file. Pay particular attention to:

- **NEXT ACTION** field at the top
- **When Resuming This Session** section — written specifically for situations
  like this
- The most recent continuation section — the most current record of what
  was completed and what comes next

### Step 4 — Read the project CLAUDE.md (if it exists)

Read `projects/[project-name]/CLAUDE.md`. Extract current goal, status, and
any task-level context.

If it doesn't exist, note it but continue — the SESSION file is the primary
source.

### Step 5 — Synthesize and present the current-state brief

Present your findings in this format:

> "Here's what I understand about where we are:
>
> **Project**: [project name]
> **What's been completed**: [2–4 bullet points from the SESSION file]
> **What's in progress / was interrupted**: [if anything was mid-flight]
> **NEXT ACTION** (from your context files): [exact NEXT ACTION text, verbatim]
>
> Does this match your understanding? If anything's off — something missing,
> something wrong — tell me before we continue."

Quote the NEXT ACTION verbatim. Don't paraphrase in a way that could
introduce errors.

### Step 6 — Hard stop for confirmation

After presenting the brief, **stop completely**. Do not:

- Begin the next task
- Suggest what to do next
- Ask "shall I proceed?" and then proceed anyway

Wait for the user to explicitly confirm — "yes, that's right" or "here's
what's actually happening." Treat any correction as ground truth. Restate
your updated understanding and confirm once more before beginning any work.

**This confirmation gate is non-negotiable.** The entire value of this skill
depends on it. A compact summary is an approximation. The user is the only
reliable source of truth about whether that approximation is accurate.

---

## Setup & Discovery

This section tells Claude what to say when a user asks how to use or
discover this skill.

### What to add to the workspace `CLAUDE.md`

When helping a user set up the kit, or when they ask how to recover after a
compact, tell them to add this to the **Standing Instructions** section of
their workspace `CLAUDE.md`:

    ### 13. Compact Recovery
    If I say "I think we just compacted," "catch me up," or "confirm current
    state," use the compact-recovery skill. Read my workspace CLAUDE.md and
    the most recent SESSION file for the active project. Show me a
    current-state brief and wait for my confirmation before doing anything.

Note: not strictly required — trigger phrases are sufficient. But adding it
makes the behavior explicit and ensures it survives across sessions.

### What the README references

The README's "Going Deeper" section should include:

> "If Claude seems to have lost context mid-session, say 'catch me up' and
> it will read your files and confirm what it knows before continuing."

### What SAVE_WORKFLOW references

The "What To Do After a Compact" section should say:

> "Say: 'I think we just compacted. Please invoke the compact recovery skill
> before we go any further.' Claude will read your context files and confirm
> current state before doing anything."

### Edge cases

**No SESSION file found**: Tell the user. Ask if there's a session file
elsewhere, or if the project is new. Fall back to the workspace `CLAUDE.md`
alone and note the limitation.

**Multiple active projects**: Ask which project was active when the compact
happened before reading SESSION files.

**NEXT ACTION appears stale**: Surface it verbatim anyway, and note: "This
NEXT ACTION may be stale. The SESSION file suggests we were actually working
on [X]. Does that sound right?"

**User says the brief is wrong**: Do not argue. Accept the correction,
restate your updated understanding, and confirm once more before proceeding.

**No workspace CLAUDE.md**: Say so and offer to help them set it up, or ask
where their context files are.
