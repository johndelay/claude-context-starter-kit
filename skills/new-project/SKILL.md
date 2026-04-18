---
name: new-project
description: Conversational wizard for creating a new project folder. Use when
  a user says they want to start a new project, set something up, or get
  organized on a new piece of work. Creates the project folder, the right
  context file (pre-filled), and adds the project pointer to the workspace
  CLAUDE.md.
---

## Trigger

Activate this skill when the user says any of the following (or close variations):

- "new project"
- "set up a project"
- "I want to start something"
- "I'm starting a [project / initiative / effort]"
- "help me get organized on [X]"
- "create a project folder"
- "can you set up a project for [X]"

Do not activate on vague requests like "let's work on something" that aren't
clearly about project setup.

---

## Behavior

### Step 1 — Open with one question

Say exactly this (or close to it):

> "Tell me about it — what are you working on?"

Do not open with a list of questions. Do not ask about template type, folder
name, or deadline up front. One question. Let the user tell you what's on
their mind.

### Step 2 — Listen and infer

From the user's response, extract:

**Project name**: Derive a short, clean folder name from what they describe.
Use lowercase with hyphens (e.g., `q3-board-report`, `vendor-evaluation`,
`onboarding-redesign`). Don't ask for a folder name — pick one and state it.
They can correct you.

**Template type**: Pick one of three based on signals in their description.

| Template | Use when they mention... |
|---|---|
| `writing-communication.md` | emails, proposals, reports, presentations, drafts, announcements, recurring communications, writing for an audience |
| `project-tracking.md` | tasks, deadlines, team coordination, blockers, milestones, status updates, managing work with other people, a project with a due date |
| `research-summarization.md` | comparing options, reading documents, finding information, making a decision, competitive research, summarizing, briefings |

If signals are mixed (e.g., "I'm researching vendors and will write a
recommendation"), pick the type that matches the *output* they're building
toward. A recommendation report = writing. A vendor selection decision =
research. When genuinely unclear, name both options and ask which fits — but
only if you truly cannot infer.

**Key people**: Note any names or roles mentioned. Don't ask — capture what
surfaces naturally.

**Goal / what done looks like**: Capture if stated. If not, ask in Step 3.

### Step 3 — Reflect back, then ask the one essential question

State your inferences explicitly before asking anything. This gives the user
a chance to correct you without feeling interrogated.

Example:

> "Got it. Sounds like you're putting together a vendor evaluation for a new
> CRM — I'd set this up as a research project. Folder name:
> `crm-vendor-evaluation`.
>
> One question before I build it: what does done look like? Is this a
> recommendation doc you'll present to someone, a decision you need to make
> by a deadline, or something else?"

If they already told you what done looks like, skip the question and go
straight to Step 4.

**Do not ask more than one follow-up question.** If a detail is missing (key
people, deadline), fill it with a placeholder and note it in the summary.
The user can fill it in later — get them set up fast, not perfectly.

### Step 4 — Confirmation gate

Before creating any files, show exactly what you're about to do.

> "Here's what I'll set up:
>
> ```
> projects/crm-vendor-evaluation/
>   CLAUDE.md       ← pre-filled with what you told me
>   CHANGELOG.md    ← starts empty, grows as you work
>   documents/      ← where I'll save files I produce for this project
> ```
>
> I'll also add a pointer to this project in your workspace `CLAUDE.md` so
> I load this context automatically when you mention it.
>
> Ready to go?"

**Do not create any files until the user confirms.** If they want to change
the folder name, template type, or anything else — update and re-show the
summary before proceeding.

### Step 5 — Create the files

Use `mcp__filesystem__` tools only. Do not use the built-in Write or Edit
tools — they use sandbox paths and cannot access the user's filesystem.

Create the following, in this order:

**1. `projects/[project-name]/CLAUDE.md`**

Copy the appropriate template from `templates/` and fill in what you know:

- Replace `[Project Name]` in the header with the actual project name
- Set `Last Updated` to today's date
- Set `Status` to `Active`
- Fill `Goal` with what done looks like (from the conversation)
- Fill `What This Project Is` with 2–3 sentences from the conversation
- Fill in any Key People that were mentioned
- Template-specific:
  - Writing: fill `Audience` if mentioned; leave the rest as placeholders
  - Tracking: fill `Deadline` if mentioned; add any tasks mentioned to Open Items
  - Research: fill `Question` with what they're trying to answer; fill
    `Deliverable` if clear
- Leave everything else as template placeholders. Do not invent details.

**2. `projects/[project-name]/CHANGELOG.md`**

```markdown
# [Project Name] — Changelog

## [Today's date]
- Project created via new-project wizard
```

**3. `projects/[project-name]/documents/README.md`**

```markdown
# Documents

Claude-produced files for this project live here — drafts, research,
summaries, exports.
```

**4. Workspace `CLAUDE.md` — Current Projects section**

Add the new project to the next available slot. If all three slots are
filled, add it as Project 4 and flag it to the user.

```markdown
### Project [N]: [Project Name]
**Status**: Active
**Goal**: [What done looks like — from the conversation]
**Context**: Read `projects/[project-name]/CLAUDE.md` for full project context.
**Next Step**: [First concrete action from the conversation, or "Fill in the
project CLAUDE.md with more detail"]
```

### Step 6 — Verify and summarize

After writing each file, read back a key section to confirm the write
succeeded. Do not declare success without verifying.

Then give a brief summary:

> "Done. Here's what was created:
>
> ✅ `projects/crm-vendor-evaluation/CLAUDE.md` — pre-filled with project
>    goal, research type, and a placeholder for key people
> ✅ `projects/crm-vendor-evaluation/CHANGELOG.md` — stub created
> ✅ `projects/crm-vendor-evaluation/documents/` — ready for files
> ✅ Workspace `CLAUDE.md` — pointer added to Current Projects
>
> Two things worth filling in when you have a minute:
> - **Key people**: Who else is involved or who will see the output?
> - **Sources**: Any documents or links I should read for this project?
>
> Ready to get started, or want to fill anything in first?"

---

## Setup & Discovery

This section tells Claude what to say when a user asks how to use or
discover this skill.

### What to add to the workspace `CLAUDE.md`

When helping a user set up the kit, or when they ask how to invoke this
skill, tell them to add the following to the **Standing Instructions**
section of their workspace `CLAUDE.md`:

```markdown
### 12. New Project Setup
When I say "new project," "set up a project," or "I want to start something
new," use the new-project skill to guide me through creating the project
folder. Don't just ask what to call it — have a conversation first.
```

Note: this instruction isn't strictly required — the trigger phrases are
sufficient for Claude to recognize the intent. But adding it makes the
behavior explicit and ensures it survives across sessions.

### What the README references

The README's "Going Deeper" section includes:

> "To skip the manual setup, say 'new project' and Claude will walk you
> through it conversationally."

### What SAVE_WORKFLOW references

The workspace structure section includes:

> "To create a new project folder, say 'new project' and Claude will set it
> up for you."

### Edge cases

**No `projects/` folder exists yet**: Create it first, then proceed. Note
it in the summary: "I created the `projects/` folder since it didn't exist."

**Current Projects is full (all 3 slots used)**: Add as Project 4 and note:
"You now have 4 projects listed. When one wraps up, move its folder to
`z-archive/` to keep this manageable."

**User gives very little information**: If their answer is still vague after
one follow-up, default to `project-tracking.md` (safest general-purpose
template), state the assumption, and proceed to the confirmation gate. Do
not loop on clarifying questions.

**Folder already exists**: Ask if they'd like to add a project context file
to it instead. Use the same template selection and fill-in logic, writing
to the existing folder path.
