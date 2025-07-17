#!/bin/bash

set -e

# 🧾 Config
BOLT_PROMPTS_REPO="https://github.com/your-username/bolt_prompts.git"
PROMPT_DIR="bolt_prompts"
APP_TYPE=${1:-"saas"}  # default to 'saas' if not specified

echo "📦 Starting Bolt scaffold setup..."

# 🛠 Clone or update the prompt repo
if [ ! -d "$PROMPT_DIR" ]; then
  echo "🔄 Cloning prompt repo..."
  git clone $BOLT_PROMPTS_REPO
else
  echo "🔄 Updating prompt repo..."
  cd "$PROMPT_DIR"
  git pull
  cd ..
fi

# 📁 Run builder
echo "⚙️  Building prompt for app type: $APP_TYPE"
cd "$PROMPT_DIR"
node build.js "$APP_TYPE"
cd ..

# 📤 Copy result to project root
echo "📥 Copying generated prompt..."
cp "$PROMPT_DIR/prompt.md" ./prompt.md

# 🔗 Link on-generate if needed
if [ ! -d ".bolt" ]; then
  mkdir .bolt
fi

cp "$PROMPT_DIR/.bolt/on-generate.md" .bolt/on-generate.md

echo "✅ Bolt scaffold complete! Your new prompt.md is ready to go."
