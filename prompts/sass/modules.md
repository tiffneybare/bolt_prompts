# 🧩 Feature Modules for SaaS App

Set up all major app features as isolated modules under a `features/` folder. These should be lazy-loaded where possible and developed in a pluggable, modular style.

---

## Core Modules

| Module Name     | Folder             | Purpose                                        |
|-----------------|--------------------|------------------------------------------------|
| Auth            | `features/auth/`   | Handles login, registration, password reset   |
| Newsletter      | `features/newsletter/` | Signup forms, Mailchimp/ConvertKit integration |
| Analytics       | `features/analytics/` | Dashboard widgets, metrics API                |
| Billing         | `features/billing/` | Stripe billing integration                     |
| User Settings   | `features/settings/`| User profile & preferences                     |

---

## Module Structure

Each module should follow this pattern:

features/
auth/
components/
hooks/
pages/
services/
index.ts


---

## Best Practices

- Use local state + API abstraction (`services/*.ts`)
- Avoid cross-module imports — use props or global events
- Export a single `register()` function for dynamic loading
- Add route stubs in each module for Bolt to register dynamically

---

## Optional Stub Modules

- `features/teams` — Invite users, manage roles
- `features/support` — Helpdesk or contact widget
- `features/referrals` — Affiliate or referral program
- `features/feature-flags` — Admin-level UI control over app toggles

---

## Lazy Loading

```ts
const AuthPage = lazy(() => import('@/features/auth/pages/Login'))

Dev Notes
Add one module at a time, don’t scaffold all at once

Each module gets its own README stub

Modules may register backend routes if using Next.js API or Express
