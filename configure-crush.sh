#!/usr/bin/env bash
# Install Crush config from this repo. Idempotent. Safe to re-run on any machine.
# Links ~/.config/crush/crushrc -> <repo>/crushrc so one source of truth.
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE="$REPO_DIR/crushrc"
CONFIG_DIR="${CRUSH_CONFIG_DIR:-$HOME/.config/crush}"
DEST="$CONFIG_DIR/crushrc"

if [[ ! -f "$SOURCE" ]]; then
  echo "error: $SOURCE not found" >&2
  exit 1
fi

mkdir -p "$CONFIG_DIR"

# Remove existing file/symlink (never touch $SOURCE, which is inside this repo).
if [[ -e "$DEST" || -L "$DEST" ]]; then
  if [[ -L "$DEST" && "$(readlink "$DEST")" == "$SOURCE" ]]; then
    echo "crushrc already linked to $SOURCE"
    exit 0
  fi
  echo "backing up existing $DEST -> $DEST.bak.$(date +%s)"
  mv "$DEST" "$DEST.bak.$(date +%s)"
fi

ln -s "$SOURCE" "$DEST"
echo "linked $DEST -> $SOURCE"
