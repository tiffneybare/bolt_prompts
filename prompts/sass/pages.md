# 📄 Core Page Definitions for SaaS App

Define all primary pages for both public and authenticated users. Bolt will use this to scaffold files and routes.

---

## 🏠 Public Pages

| Page        | Route       | Purpose                          |
|-------------|-------------|----------------------------------|
| Home        | `/`         | Landing page                     |
| Pricing     | `/pricing`  | Plans and conversion CTAs        |
| About       | `/about`    | Company info and values          |
| Contact     | `/contact`  | Lead capture form                |
| Terms       | `/terms`    | Legal page                       |
| Privacy     | `/privacy`  | Compliance and data handling     |

---

## 🔐 Auth Pages

| Page        | Route       | Purpose                          |
|-------------|-------------|----------------------------------|
| Login       | `/login`    | Auth                             |
| Signup      | `/signup`   | Create account                   |
| Forgot PW   | `/forgot`   | Password recovery                |
| Reset PW    | `/reset`    | Password reset token             |

---

## 👤 App (Protected) Pages

| Page          | Route              | Purpose                                  |
|---------------|-------------------|------------------------------------------|
| Dashboard     | `/app/dashboard`  | User overview and app widgets            |
| Billing       | `/app/billing`    | Payment history and subscription mgmt    |
| Settings      | `/app/settings`   | User profile, preferences, security      |
| Analytics     | `/app/analytics`  | Metrics dashboard                        |

---

## 🧰 Page Structure

Each page should live in its folder:
src/
marketing/
home/
page.tsx
components/
app/
dashboard/
page.tsx
components/


Each `page.tsx` should:

- Include SEO metadata via `<SEO />` component
- Import tracking helpers for GA/GTM
- Be wrapped in layout if needed

---

## Dev Notes

- Use route groups for `/app/` vs public
- Each auth page uses a shared `AuthLayout`
- Contact form should POST to API route or webhook

