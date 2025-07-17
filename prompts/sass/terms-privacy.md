# 📜 Terms of Service & Privacy Policy

Every SaaS needs clear legal documents. Generate boilerplate **Terms of Service** and **Privacy Policy** pages that are editable and linkable from the footer.

---

## ✅ Goals

- Include legally safe language tailored to SaaS
- Clarify data usage, rights, responsibilities
- Easily editable by non-technical users
- Include placeholders for company name, contact, etc.

---

## 📄 Pages to Generate

- `/terms` → Terms of Service
- `/privacy` → Privacy Policy

Both should:
- Be accessible from the footer
- Use markdown or CMS-friendly content
- Include last updated timestamp

---

## 🔐 Required Clauses

**Terms of Service**
- User responsibilities
- Payment terms (if applicable)
- Cancellation/refund policy
- Limitation of liability
- Governing law

**Privacy Policy**
- Data collected (e.g. emails, IPs, usage)
- Cookie usage (if any)
- 3rd-party services used (analytics, email, etc.)
- Contact for deletion requests

---

## 🧩 Config/Customization

```ts
LEGAL_CONFIG = {
  companyName: 'Your Company Name',
  supportEmail: 'support@yourdomain.com',
  lastUpdated: '2025-07-17'
}

✨ Pro Tips
Link privacy in user signup flow if collecting PII

Add GDPR & CCPA sections if relevant

Include cookie banner if tracking analytics or marketing pixels
