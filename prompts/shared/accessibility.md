# ♿ Accessibility (a11y) Best Practices

Ensure the entire application meets WCAG 2.1 AA compliance and is usable by all users, regardless of ability.

---

## ✅ Goals

- Meet WCAG 2.1 AA standards
- Ensure keyboard navigation is functional across all components
- Provide screen reader support for dynamic content
- Use semantic HTML and accessible components

---

## 🔧 Features to Include

- Use `aria-*` attributes where needed (e.g., live regions, roles, labels)
- Set up focus traps for modals
- Auto-focus on error messages or important feedback
- Label all form inputs with accessible names
- Descriptive alt text for all images

---

## 🧪 Testing Tools

- axe-core (CI/CLI or browser extension)
- Lighthouse
- VoiceOver / NVDA / JAWS screen reader tests
- Keyboard-only QA flow

---

## 🛠️ Implementation Prompts

**Components:**
- Update all modals, dialogs, toasts, and dropdowns to support a11y attributes
- Add keyboard navigation logic for menus, sidebars, and forms

**Pages:**
- Add skip-nav link
- Ensure heading hierarchy is logical and not skipped
- Ensure sufficient color contrast across themes

---

## ✨ Bonus

- Add accessibility audit to CI/CD using `axe-core`
- Notify developers on regressions with GitHub Actions or Slack integration

---

"Accessibility is not a feature, it's a requirement."
