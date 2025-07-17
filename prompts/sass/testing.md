### 🧪 Testing Strategy (Minimum Viable + Extendable)

---

### Core Tools

- Unit tests → `vitest` or `jest`
- E2E tests → `playwright` or `cypress`
- Linting → `eslint`, `prettier`
- Type checking → `tsc --noEmit`

---

### Folder Setup

```
tests/
├── unit/
│   └── utils.test.ts
├── e2e/
│   └── dashboard.spec.ts

```

---

### Best Practices

- Test all core utils and hooks
- Create test IDs for key components
- Run lint + type check in CI/CD
