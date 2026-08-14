#!/usr/bin/env bash
# Install Claude Code config from this repo. Idempotent. Safe to re-run on any machine.
# Mirrors configure-crush.sh: one source of truth in this repo, symlinked into place.
#
# Wires up:
#   ~/.claude/skills   -> skills/
#   ~/.claude/agents   -> agents/
#   ~/.claude/commands -> commands/
#   ~/.claude/CLAUDE.md -> AGENTS.md   (global caveman persona, applies to every project)
#   MCP servers (context7, playwright, svelte) registered at user scope via `claude mcp add`
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG_DIR="${CLAUDE_CONFIG_DIR:-$HOME/.claude}"
mkdir -p "$CONFIG_DIR"

link() {
  local source="$1" dest="$2"
  if [[ ! -e "$source" ]]; then
    echo "error: $source not found" >&2
    exit 1
  fi
  if [[ -e "$dest" || -L "$dest" ]]; then
    if [[ -L "$dest" && "$(readlink "$dest")" == "$source" ]]; then
      echo "already linked: $dest -> $source"
      return
    fi
    echo "backing up existing $dest -> $dest.bak.$(date +%s)"
    mv "$dest" "$dest.bak.$(date +%s)"
  fi
  ln -s "$source" "$dest"
  echo "linked $dest -> $source"
}

link "$REPO_DIR/skills" "$CONFIG_DIR/skills"
link "$REPO_DIR/agents" "$CONFIG_DIR/agents"
link "$REPO_DIR/commands" "$CONFIG_DIR/commands"
link "$REPO_DIR/AGENTS.md" "$CONFIG_DIR/CLAUDE.md"

# Session-start hook: injects using-superpowers + caveman SKILL.md text into
# every session. Merges into existing settings.json, preserving other keys.
install_session_hook() {
  local settings="$CONFIG_DIR/settings.json"
  local hook='{"hooks":{"SessionStart":[{"hooks":[{"type":"command","command":"'"$REPO_DIR"'/hooks/session-start-skills.sh"}]}]}}'
  if [[ ! -f "$settings" ]]; then
    echo "$hook" > "$settings"
    echo "created $settings with SessionStart hook"
    return
  fi
  if jq -e '.hooks.SessionStart' "$settings" >/dev/null 2>&1; then
    echo "SessionStart hook already present in $settings"
    return
  fi
  cp "$settings" "$settings.bak.$(date +%s)"
  # Deep-merge at .hooks level so existing hook events survive.
  jq --argjson h "$hook" '.hooks = ((.hooks // {}) + $h.hooks)' "$settings" > "$settings.tmp" && mv "$settings.tmp" "$settings"
  echo "added SessionStart hook to $settings (backup in $CONFIG_DIR)"
}
install_session_hook

if command -v claude >/dev/null 2>&1; then
  add_mcp_http() {
    local name="$1" url="$2"
    if claude mcp get "$name" >/dev/null 2>&1; then
      echo "mcp already registered: $name"
    else
      claude mcp add -s user --transport http "$name" "$url"
    fi
  }
  add_mcp_stdio() {
    local name="$1"; shift
    if claude mcp get "$name" >/dev/null 2>&1; then
      echo "mcp already registered: $name"
    else
      claude mcp add -s user "$name" -- "$@"
    fi
  }

  add_mcp_http context7 "https://mcp.context7.com/mcp"
  add_mcp_stdio playwright npx @playwright/mcp@latest
  add_mcp_stdio svelte npx -y @sveltejs/mcp
  add_mcp_http wix-mcp-remote "https://mcp.wix.com/mcp"
else
  echo "warning: claude CLI not found, skipping MCP registration" >&2
fi
