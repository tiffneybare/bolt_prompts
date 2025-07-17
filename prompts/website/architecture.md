##

### 🔧 Architecture & Structure Rules

Defines project-wide architecture and modular design principles.

### File Structure

```
src/
├── components/
├── pages/
├── features/           # Only if needed
├── hooks/
├── utils/
└── types/

```

### Code-Splitting

- Use `React.lazy()` + `Suspense`
- Feature-level and route-level splitting
- Vendor chunking enforced

### Performance Goals

- Route bundle < 100KB
- Vendor chunk < 30KB
- Build time < 3s

### Component Rules

- Max 200 lines
- One purpose per file
- Shared logic only in `hooks/` or `utils/`
