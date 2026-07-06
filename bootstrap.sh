#!/usr/bin/env bash
set -euo pipefail

echo "== AI Bootstrap for macOS =="

if ! command -v brew >/dev/null 2>&1; then
  echo "Homebrew not found. Please install Homebrew first."
  exit 1
fi

echo "== Installing Homebrew packages =="
brew bundle --file ./Brewfile

echo "== Installing AI CLI tools =="
npm install -g @openai/codex @google/gemini-cli @anthropic-ai/claude-code

echo "== Ensuring VSCode code command =="
if [ -d "/Applications/Visual Studio Code.app" ]; then
  sudo ln -sf "/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code" /usr/local/bin/code || true
fi

echo "== Done =="
echo "Run: npm run doctor"
