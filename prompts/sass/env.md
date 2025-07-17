### 🛠️ Environment Variable Setup

Define critical variables and stub them into `.env.example`.

---

### Must-Haves

```
# Environment
NODE_ENV=production
APP_URL=https://yourapp.com

# API
API_URL=
PUBLIC_API_KEY=

# Auth
AUTH_SECRET=
NEXTAUTH_URL=

# Stripe
STRIPE_PUBLIC_KEY=
STRIPE_SECRET_KEY=

# Email
EMAIL_PROVIDER=
EMAIL_API_KEY=
EMAIL_FROM_ADDRESS=

# Analytics
GOOGLE_TAG_MANAGER_ID=
```

---

### Usage Notes

- Fail-safe fallback for all env vars
- Add `assertEnv()` utility for runtime checks
- Never expose secrets to client
