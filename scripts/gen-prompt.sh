#!/bin/bash

set -e

TYPE="$1"
DEST="${2:-.bolt/prompt.md}"

if [ -z "$TYPE" ]; then
  echo "❌ You must specify a project type (e.g., saas or website)."
  exit 1
fi

echo "🛠️ Generating prompt for '$TYPE'..."

mkdir -p "$(dirname "$DEST")"
echo "" > "$DEST"

# Add shared prompts
for file in prompts/shared/*.md; do
  echo "🔗 Adding shared: $(basename "$file")"
  echo -e "\n\n" >> "$DEST"
  cat "$file" >> "$DEST"
done

# Add type-specific prompts
for file in prompts/$TYPE/*.md; do
  echo "🔗 Adding $TYPE: $(basename "$file")"
  echo -e "\n\n" >> "$DEST"
  cat "$file" >> "$DEST"
done

echo -e "\n✅ Prompt file generated at $DEST"
