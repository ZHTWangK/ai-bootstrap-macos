# AI Bootstrap for macOS

## Project Purpose

This repository restores and maintains my personal AI workstation on macOS.

The goal is to make the environment reproducible, version-controlled, and easy to extend.

## Operating Principles

- Prefer mature tools over custom implementations.
- Keep scripts idempotent where possible.
- Do not store secrets in this repository.
- Use Homebrew for system packages.
- Use npm for AI CLI tools.
- Use doctor scripts to verify the workstation state.
- Keep changes small and committed frequently.

## Current Toolchain

- Homebrew
- GitHub CLI
- Node.js and npm
- VSCode
- Docker Desktop
- Codex CLI
- Gemini CLI
- Claude Code
- SynapAI API
- ripgrep
- fzf
- uv
- jq
- yq
- tmux

## Next Planned Areas

- Provider configuration
- LiteLLM gateway
- MCP server configuration
- Project templates
- AI workflow launcher

## Workflows

Reusable workflows are stored in the workflows/ directory.

Before starting a task, choose the closest workflow:

- coding.md for implementation
- review.md for code review
- research.md for technical research
- writing.md for documents
- project-start.md for new projects
