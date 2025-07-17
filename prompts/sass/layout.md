### 🧱 App Shell & Layout Structure

Define global layout boundaries for the app and marketing site.

---

### Base Structure

```
src/
├── layout/
│   ├── AppLayout.tsx          # Main shell after login
│   ├── MarketingLayout.tsx    # Public site layout
│   ├── AdminLayout.tsx        # Admin routes
│   └── components/
│       ├── Header.tsx
│       ├── Footer.tsx
│       ├── Sidebar.tsx
│       └── NavLink.tsx

### Key Features

- Responsive nav and header
- Breadcrumbs with `react-router`
- Scroll restoration
- Route-based loading states
- Include GTM route event trigger in layout wrapper
