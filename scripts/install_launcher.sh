#!/usr/bin/env bash
set -euo pipefail

mkdir -p "$HOME/AI/bin"
cp ./scripts/launcher/ai "$HOME/AI/bin/ai"
chmod +x "$HOME/AI/bin/ai"

if ! grep -q 'export PATH="$HOME/AI/bin:$PATH"' "$HOME/.zshrc"; then
  cat >> "$HOME/.zshrc" <<'ZSHRC'

# AI Launcher
export PATH="$HOME/AI/bin:$PATH"
ZSHRC
fi

echo "AI Launcher installed."
echo "Run: source ~/.zshrc && ai"
