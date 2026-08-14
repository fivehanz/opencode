#!/usr/bin/env bash
# Session-start skill injection. Outputs a Claude Code SessionStart hook
# envelope ({ hookSpecificOutput: { hookEventName, additionalContext } })
# containing the full text of the skills AGENTS.md mandates loading at
# session start (using-superpowers, caveman). Wired into Claude Code via
# ~/.claude/settings.json.
#
# Note: the flat { "additionalContext": ... } form is silently dropped;
# hookEventName is required. Content must stay under the 10,000-char cap.
#
# Crush and OpenCode get the same content through their own native
# session-start mechanisms (crushrc global-context-path, opencode.jsonc
# instructions) — no hook needed there.
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

{
  printf '%s\n' "# Injected at session start: using-superpowers"
  cat "$REPO_DIR/skills/using-superpowers/SKILL.md"
  printf '\n%s\n' "# Injected at session start: caveman"
  cat "$REPO_DIR/skills/caveman/SKILL.md"
} | jq -Rs '{ hookSpecificOutput: { hookEventName: "SessionStart", additionalContext: . } }'
