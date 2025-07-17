### 📬 Transactional Email Setup

Scaffold email triggers and template structure.

---

### Email Events (Stub Functions)

- Welcome email
- Password reset
- Email verification
- Subscription change
- Payment receipt
- Contact form / support request reply

---

### Prompt Developer to Choose:

- SendGrid
- Resend
- Postmark
- Or DIY SMTP

Include in `.env.example`:

```
EMAIL_API_KEY=
EMAIL_FROM_ADDRESS=

```

---

### Template Strategy

- Use Markdown or JSX/React Email
- Include preview route `/email-preview/:templateName` in dev
- Always test with dummy data
