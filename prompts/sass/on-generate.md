# ⚙️ Bolt on-generate Hook

This file customizes what Bolt does immediately after a new project is generated.

---

## Goals

- Automatically import latest prompts from `bolt-prompts` repo
- Ensure `.env`, SEO, and tracking boilerplate are added
- Apply common base dependencies and file cleanup

---

## Tasks to Run

1. **Check for `BOLT_PROMPT_REPO_URL`**:
   - Clone or pull the prompt repo
   - Import selected preset (e.g., `sass` or `website`)

2. **Install Dependencies**:
   - Common: `tailwindcss`, `clsx`, `@headlessui/react`, etc.
   - SaaS only: `@stripe/stripe-js`, `zustand`, `chart.js`, etc.

3. **Inject Boilerplate**:
   - `.env.example` with placeholder keys
   - `src/lib/seo.ts` with shared defaults
   - `src/lib/gtm.ts` or tracking helpers

4. **Clean Up Defaults**:
   - Remove `app/page.tsx` and replace with a landing stub
   - Move boilerplate pages to `src/marketing/`

---

## Optional Enhancements

- Ask the user which features to include
- Automatically run `prettier` and `eslint --fix`
- Setup Git hooks using Husky or simple scripts

---

## Notes

- This script is not run during `bolt dev`, only on initial generate
- You can trigger manually with: `bolt run on-generate`
- Safe to make this interactive (e.g., prompt for project name or modules)

---

## Example Code Stub

```ts
// .bolt/on-generate.ts
import { importPrompts } from './lib/prompts'
import { scaffoldSEO } from './lib/seo'
import { setupTracking } from './lib/tracking'

await importPrompts('sass')
await scaffoldSEO()
await setupTracking()
