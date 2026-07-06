#!/usr/bin/env bash

echo "== AI Workstation Doctor =="

check_cmd() {
  if command -v "$1" >/dev/null 2>&1; then
    echo "$1: OK"
  else
    echo "$1: Missing"
  fi
}

check_cmd brew
check_cmd git
check_cmd gh
check_cmd node
check_cmd npm
check_cmd codex
check_cmd gemini
check_cmd claude
check_cmd code
check_cmd docker
check_cmd jq
check_cmd rg
check_cmd fzf
check_cmd uv

echo ""
echo "== Environment Keys =="
if [ -n "${SYNAPAI_API_KEY:-}" ]; then
  echo "SYNAPAI_API_KEY: OK"
else
  echo "SYNAPAI_API_KEY: Missing"
fi
