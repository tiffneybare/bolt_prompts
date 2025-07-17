### 📊 Tracking & Analytics Setup

All navigation and user-triggered actions must fire **persistent tracking events** via GTM.

Examples:

```
const handleScrollClick = () => {
  window.dataLayer = window.dataLayer || [];
  window.dataLayer.push({
    event: 'scroll_section_click',
    section: 'about',
  });
  document.getElementById('about')?.scrollIntoView({ behavior: 'smooth' });
};

```

Requirements:

- Use `window.dataLayer.push()` for:
    - Navigation
    - Button clicks
    - Form submissions
- Include GTM script in `index.html` or `Document.tsx`
- Label events clearly with semantic naming

### Required Utility

```
export const trackEvent = ({ event, section, action, label }) => {
  window.dataLayer = window.dataLayer || [];
  window.dataLayer.push({ event, section, action, label });
};
```
