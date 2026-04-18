# Skills

These are behavioral scripts for Claude — step-by-step instructions for how
it should handle specific situations in your workspace.

## How to use them

Copy this entire `skills/` folder into your workspace folder (the same folder
where your `CLAUDE.md` lives). Once it's there, Claude can read the scripts
and follow them.

## What's included

- `new-project/SKILL.md` — Conversational wizard for setting up a new project
  folder. Say "new project" to activate.
- `compact-recovery/SKILL.md` — State-recovery protocol for after a context
  compact. Say "catch me up" or "I think we just compacted" to activate.

## Adding to your Standing Instructions (optional but recommended)

For reliable activation, add these two rules to the Standing Instructions
section of your workspace `CLAUDE.md`:

### 12. New Project Setup
When I say "new project," "set up a project," or "I want to start something
new," read `skills/new-project/SKILL.md` and follow the wizard. Don't just
ask what to call it — have a conversation first.

### 13. Compact Recovery
If I say "I think we just compacted," "catch me up," or "confirm current
state," read `skills/compact-recovery/SKILL.md` and run the recovery protocol.
Show me a current-state brief and wait for my confirmation before doing anything.
