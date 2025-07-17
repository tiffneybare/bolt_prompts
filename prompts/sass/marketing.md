# 📣 Public-Facing Marketing Pages

Create engaging public pages for site visitors to explore your SaaS offering, including homepage, pricing, about, and contact.

---

## Core Pages

| Page         | Route        | Purpose                                      |
|--------------|--------------|----------------------------------------------|
| Homepage     | `/`          | Introduction to product and benefits         |
| Pricing      | `/pricing`   | Plan comparison table and CTA to upgrade     |
| About        | `/about`     | Company values, team, and mission            |
| Contact      | `/contact`   | Lead capture form                            |
| Terms        | `/terms`     | Legal terms and conditions                   |
| Privacy      | `/privacy`   | Privacy policy                               |
| FAQ          | `/faq`       | faq page                                     |

---

## Features

- Responsive hero sections with strong CTAs
- Modular content blocks (text, icons, testimonials)
- Pricing tables with toggle (monthly/annual)
- Simple form to contact the team
- Sticky header nav and footer
- Scroll animations (optional)

---

## Tracking Integration

- Add GTM tracking for all CTAs
- Use dataLayer events for:
  - Clicks on nav items
  - Scroll-based CTA triggers
  - Form submissions

```js
window.dataLayer = window.dataLayer || [];
window.dataLayer.push({
  event: 'cta_click',
  label: 'pricing_hero_button'
});

SEO Considerations
Meta tags per page

JSON-LD schema per page type:

WebSite for homepage

Product for pricing

Organization for about

Friendly and shareable OG tags

Sitemap and robots.txt stubbed

Dev Notes
All public routes live under src/marketing

Each page should include its own <SEO /> component

Use markdown for content blocks when possible
