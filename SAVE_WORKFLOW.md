# The Save Workflow — Teaching AI to Update Your Context

This is the secret sauce. Without it, your context files are static — you wrote them once and they never improve. With it, every session automatically captures what you learned, what changed, and what to remember.

---

## What This Does

At the end of each work session, you say "save" (or whatever trigger word you choose). The AI then:

1. Reviews what was accomplished in the session
2. Updates your CLAUDE.md with new information (projects, decisions, lessons)
3. Adds a changelog entry so you have a history
4. Updates any project-specific files that changed
5. Gives you a summary of what was saved

The next session starts with all of that knowledge baked in.

---

## How to Set It Up

Add this section to the bottom of your CLAUDE.md file:

```markdown
## Save Workflow

When I say "save", perform these steps:

### 1. Update CLAUDE.md (this file)
- Update the "Last Updated" date
- Add or modify current projects if anything changed
- Add new contacts or tools if mentioned
- Add any lessons learned to the "Lessons Learned" section

### 2. Update Project Files
- If we worked on a specific project, update that project's documentation
- Add decisions made, status changes, or new information

### 3. Add Changelog Entry
- Add a dated entry to CHANGELOG.md describing what was accomplished
- Include specific details (not just "worked on project X")

### 4. Summary
Tell me:
- What files were updated
- What key information was captured
- Anything I should follow up on
```

---

## Why This Matters

Without the save workflow:
- You finish a session → context disappears → next session starts from your original file
- Lessons learned? Gone. New decisions? Gone. Updated project status? Gone.

With the save workflow:
- You finish a session → context is captured in files → next session starts where you left off
- Every session builds on the last. Knowledge compounds.

**The math**: If each save captures 5 useful details, and you do 4 sessions per week, after one month your context files contain 80+ details that would have been lost. After three months: 240+ details. That's the difference between an AI that knows your world and one that's perpetually a stranger.

---

## Tips

- **Make it a habit** — Say "save" at the end of every session, even short ones
- **Review the updates** — Glance at what the AI captured. Correct anything wrong.
- **Don't over-save** — You don't need to capture everything. Focus on decisions, status changes, and lessons learned. Facts you can look up later don't need to be in the file.
- **The most valuable saves are mistakes** — "Never do X because Y happened" is worth more than any project status update
