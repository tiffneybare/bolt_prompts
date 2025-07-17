import fs from 'fs';
import path from 'path';

const PROMPT_ROOT = './prompts';
const OUTPUT_FILE = './prompt.md';
const preamble = fs.readFileSync(path.join(sharedDir, 'preamble.md'), 'utf-8');
promptContent += preamble + '\n\n';

const getAllPromptFiles = (dirPath) => {
  const entries = fs.readdirSync(dirPath, { withFileTypes: true });
  return entries.flatMap((entry) => {
    const fullPath = path.join(dirPath, entry.name);
    return entry.isDirectory() ? getAllPromptFiles(fullPath) : [fullPath];
  }).filter(file => file.endsWith('.md'));
};

const buildPrompt = () => {
  const promptFiles = getAllPromptFiles(PROMPT_ROOT);
  let combinedPrompt = '# 🚀 Bolt Prompt\n\n';

  promptFiles.forEach(file => {
    const content = fs.readFileSync(file, 'utf-8');
    const relativePath = path.relative(PROMPT_ROOT, file);
    combinedPrompt += `---\n\n## 🧩 ${relativePath}\n\n`;
    combinedPrompt += content.trim() + '\n\n';
  });

  fs.writeFileSync(OUTPUT_FILE, combinedPrompt, 'utf-8');
  console.log(`✅ Built prompt.md with ${promptFiles.length} sections.`);
};

buildPrompt();
