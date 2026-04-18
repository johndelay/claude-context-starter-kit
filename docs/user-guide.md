# User Guide — A Week in the Life

*For people who completed Quick Start and want to understand how the system works day to day.*

---

## Day 1: The First Session

You've filled in your `CLAUDE.md`. Not everything — maybe just About Me, one or two projects, and a couple of communication preferences. That's enough.

Open a new Cowork session. Before you type a single word about what you need, ask this:

> *"What do you know about me and what I'm working on?"*

Claude tells you your name, your role, your current projects. It knows you're in Boston and that you prefer the bottom line before the reasoning. It knows you have a vendor review due next month and that the ops onboarding playbook is waiting on feedback from Dana.

You didn't say any of that just now. Claude read it from your `CLAUDE.md` before you said a word.

That moment — Claude knowing you before you spoke — is the whole idea. Everything else in this guide is building on that foundation. The context file is your AI's briefing document. The more you put in, the more it can do without you re-explaining.

If the answer comes back generic — no name, no projects, just a polite hello — something in the setup needs attention. See `SETUP_GUIDE.md` for a quick health check you can run.

---

## Starting a Project

A few days in, a new piece of work lands. A vendor comes up for annual review. A new hire starts in two weeks. A report is due to the board by end of quarter.

You could create a folder, copy a template, fill in the blanks. Or you can just say:

> *"New project."*

If you've activated the skills (Step 4 of Quick Start), Claude starts a conversation instead of asking for a folder name. It asks what the project is actually about. What does done look like? Who's involved? When does it need to be done? Are there dependencies you're already worried about?

It's a two-minute conversation. At the end of it, Claude creates the project folder, drops in a context file with everything you just said, and adds a pointer to your workspace `CLAUDE.md` so it knows to load the project details whenever this project comes up.

The pointer looks like this in your workspace file:

```
### Project: Apex Vendor Review
**Status**: Active
**Goal**: Complete annual risk assessment and deliver sign-off recommendation by May 15.
**Context**: Read `projects/apex-vendor-review/CLAUDE.md` for full project context.
**Next Step**: Consolidate questionnaire responses into the draft risk summary.
```

That `Context:` line is not decorative. It's a live instruction. The next time you mention the Apex review — in any session, days or weeks from now — Claude reads that file automatically. You don't re-explain the deadline, the stakeholders, or where you left off. It already knows.

---

## Ending a Session

You've done real work. Drafted a summary, made some decisions, sorted out a blocker. The session is winding down.

Type one word: **save.**

Claude runs through the save workflow without you micromanaging it. It creates a session summary file in your project folder — a plain-language record of what was discussed, what was decided, and what to do next. It updates the NEXT ACTION line at the top of your `CLAUDE.md` to reflect exactly where you are. It logs the session in the project changelog. Then it reads back what it wrote to confirm each write actually succeeded. Not "I saved it" — it shows you what changed.

Last thing it produces: the handoff script. It looks something like this:

> Before doing anything else, read this file:
> `projects/apex-vendor-review/SESSION_2026-04-22.md`
>
> Scroll to **"When Resuming This Session"** near the bottom and follow those instructions. Then confirm in one sentence what the current state of the project is and what you're about to tackle. Wait for my go-ahead before starting any work.

Copy that. Keep it somewhere easy — a note, a draft, anywhere you'll find it tomorrow.

The SESSION file is the vault. The handoff script is the key.

---

## Day 2: Picking Up Where You Left Off

New session. Blank slate — Claude has no memory of yesterday.

Paste the handoff script.

Claude reads the SESSION file, locates the "When Resuming" section, and tells you in one sentence what the current state is and what it's about to tackle. Then it stops and waits.

You say go.

It's already in motion. The project context is loaded, the decisions from yesterday are in play, the next step is clear. You didn't re-explain anything. You didn't say "so last time we were working on..." Claude picked up from a file you left for it, written by the version of itself from yesterday.

This is what makes the system useful across time, not just within a single session. The context doesn't live in the conversation — it lives in files. Files that survive a session ending, a compact, or a week off.

---

## Three Weeks Later: The Compact

You're in a long session. You've been at it for an hour — research, drafting, a few decisions, some back-and-forth on wording. The session is live and productive.

Then something feels slightly off. Claude asks you about something you already addressed. Or it offers to do something you finished twenty minutes ago. It's subtle, but you notice.

That's a compact. When a conversation gets long enough, Claude compresses its memory of earlier exchanges into a summary. The work continues, but Claude is now operating from an approximation. Decisions can blur. Completed work can get re-opened.

Stop. Don't just correct Claude and keep going. Say:

> *"I think we just compacted. Catch me up."*

The compact recovery protocol runs. Claude reads your workspace `CLAUDE.md`, finds the most recent SESSION file for this project, and presents a current-state brief: here's what I understand about where we are, here's what I think the next step is. It waits for your confirmation before doing anything.

You confirm — or correct anything that's off — and then the session continues, now anchored to your actual current state rather than a compressed approximation.

Two things make this recovery fast. First, the skill gives Claude a structured protocol to follow instead of improvising. Second, and more important: your SESSION file reflects the most recent save. The more recently you saved, the less ground there is to re-verify. A session file from this morning makes recovery take thirty seconds. A session file from last week means more to confirm.

This is why the guide says save early, not just at the end. The SESSION file isn't just a record for next time — it's your insurance for right now.

---

## Month One: The System Paying Off

You're four weeks in. The vendor review is done. The onboarding playbook shipped. A new project is starting.

Open a session and mention that you need to draft a status update for your manager. Claude already knows that she wants risk items at the top and prefers bullets over prose. You didn't say that just now. You added it to Lessons Learned three weeks ago, after a session where the first draft landed wrong and you figured out why.

That's the entry that made the difference:

> *2026-03-12: Always give Claude the audience before asking it to draft something. "Write this for Sarah — she wants risk items up front and prefers bullets" gets a usable first draft. "Write an update on the vendor review" gets something generic I have to rewrite.*

At the time, it felt like a small thing to note. Four weeks later, Claude is applying it without being asked. The lesson is in the file. The file travels with you across every session.

This is how the system compounds. The first week, it saves you from re-explaining your role. The second week, it saves you from reconstructing a project's history. By month one, it knows how you think — because you told it, one lesson at a time, and it kept what you said.

The Lessons Learned section starts empty. It fills slowly. By the time it has ten entries, Claude is dramatically better at your specific work than it was on day one. Not because the AI changed — because your context file got richer.

---

## What This Looks Like Over Time

| When | What you have | What Claude can do |
|---|---|---|
| Day 1 | Workspace `CLAUDE.md` filled in | Knows who you are, doesn't ask you to re-explain |
| Week 1 | One project folder set up | Loads project context automatically when you mention it |
| Month 1 | Multiple projects + Lessons Learned | Applies your working style without prompting |
| Month 3 | Full history + SESSION records | Picks up from anywhere; compact recovery is fast and accurate |

The investment is front-loaded. The payoff runs indefinitely.

---

## The Short Version

Start every session by giving Claude something to read. End every session by saying "save." When something surprises you — in either direction — add it to Lessons Learned. When things feel off mid-session, say "catch me up" and let the recovery protocol do its job.

That's the whole system. Everything else in the kit — the templates, the skills, the two-level context model, the save workflow — is in service of those four habits.

---

*Part of the [Claude Context Starter Kit](https://github.com/johndelay/claude-context-starter-kit). See `README.md` for the full kit overview and `SETUP_GUIDE.md` to verify your workspace is configured correctly.*
