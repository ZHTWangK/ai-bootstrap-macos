#!/usr/bin/env bash

echo "== AI Workstation Doctor =="

check_cmd() {
  if command -v "$1" >/dev/null 2>&1; then
    echo "$1: OK"
  else
    echo "$1: Missing"
  fi
}

check_file() {
  if [ -f "$1" ]; then
    echo "$1: OK"
  else
    echo "$1: Missing"
  fi
}

check_dir() {
  if [ -d "$1" ]; then
    echo "$1: OK"
  else
    echo "$1: Missing"
  fi
}

echo ""
echo "== Base Toolchain =="
check_cmd brew
check_cmd git
check_cmd gh
check_cmd node
check_cmd npm
check_cmd python
check_cmd uv
check_cmd jq
check_cmd yq
check_cmd rg
check_cmd fzf
check_cmd tmux

echo ""
echo "== Desktop Apps =="
check_cmd code
check_cmd docker

echo ""
echo "== AI CLI =="
check_cmd codex
check_cmd gemini
check_cmd claude

echo ""
echo "== Launcher =="
check_cmd ai
check_file "$HOME/AI/bin/ai"
check_file "./scripts/launcher/ai"

echo ""
echo "== Repository Config =="
check_file "./Brewfile"
check_file "./package.json"
check_file "./AGENTS.md"
check_file "./docs/ROADMAP.md"
check_dir "./configs/providers"
check_dir "./configs/mcp"

echo ""
echo "== Environment Keys =="
if [ -n "${SYNAPAI_API_KEY:-}" ]; then
  echo "SYNAPAI_API_KEY: OK"
else
  echo "SYNAPAI_API_KEY: Missing"
fi
