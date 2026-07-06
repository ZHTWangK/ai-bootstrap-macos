#!/usr/bin/env bash
set -euo pipefail

PROJECT_NAME="${1:-}"

if [ -z "$PROJECT_NAME" ]; then
  echo "Usage: ./scripts/create_project.sh <project-name>"
  exit 1
fi

TARGET_DIR="$HOME/Workspace/$PROJECT_NAME"

if [ -d "$TARGET_DIR" ]; then
  echo "Project already exists: $TARGET_DIR"
  exit 1
fi

mkdir -p "$TARGET_DIR"
cp -R ./templates/project-basic/. "$TARGET_DIR/"

find "$TARGET_DIR" -type f -name "*.md" -print0 | xargs -0 sed -i '' "s/{{PROJECT_NAME}}/$PROJECT_NAME/g"

echo "Project created: $TARGET_DIR"
echo "Next:"
echo "  cd $TARGET_DIR"
echo "  code ."
