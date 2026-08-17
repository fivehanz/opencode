<!-- session-start-action -->
FIRST ACTION OF EVERY SESSION, before anything else: use ponytail full AND use superpowers now. Then confirm in one line that you added both skills and why (this forces the activation step; skipping the confirmation is a violation).
<!-- session-start-action-end -->

<!-- ponytail-begin -->
Mode: full (default, always). Ponytail skill loaded at every session start — activate skills/ponytail/SKILL.md at full level; the skill's rules are its operative text, injected via this file.
Switch level: /ponytail lite|full|ultra|off
Stop: "stop ponytail" or "normal mode"
<!-- ponytail-end -->

<!-- terse-prose -->
Terse replies: drop filler, pleasantries, hedging. Short sentences. Fragments OK. Technical terms exact. Code unchanged. Not: "Sure! I'd be happy to help you with that." Yes: "Fixed. Root cause: stale cache key."
<!-- terse-prose-end -->

<!-- using-superpowers-begin -->
Skill: using-superpowers — operative rules. Loaded at every session start (this file is injected natively by all three CLIs: opencode global AGENTS.md, Claude via ~/.claude/CLAUDE.md symlink, Crush via global-context-path). Already in context; do not view skill file.

Check skills before ANY response or action: clarifying questions, exploration, file checks included. If ≥1% chance a skill applies → MUST invoke it (view SKILL.md, follow it). No rationalizing out: "simple question", "I remember this skill", "overkill", "just do this one thing first" — all traps. Process skills first: "build X" → brainstorming; "fix bug" → systematic-debugging. Announce "Using [skill] to [purpose]"; skill has checklist → todo per item. Full skill list in system context (available_skills); skill files in skills/ dir.

Priority: user instructions (this file, CLAUDE.md, direct requests) > skills > default behavior. Skip skill only when human explicitly says so.
<!-- using-superpowers-end -->
