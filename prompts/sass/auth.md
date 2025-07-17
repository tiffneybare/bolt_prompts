# 🔐 Authentication & Access Control

Implement a secure, flexible authentication system that supports multiple login methods and enforces RBAC (Role-Based Access Control).

---

## Core Features

- Email/password login
- Social login (Google, GitHub, LinkedIn - stubbed)
- Magic link (optional toggle)
- Password reset flow
- 2FA (TOTP-based, stub with on/off setting)

---

## Pages

- `/login`: Email/password or social login
- `/signup`: Create account
- `/forgot-password`: Request password reset
- `/reset-password`: Complete reset via token
- `/2fa/setup`: Configure two-factor authentication (stub)

---

## Role-Based Access

- Roles: `admin`, `user`, `viewer`
- Middleware or hooks should check access rights before rendering protected routes
- Roles are managed via admin dashboard (`/admin/users`)

---

## Security Notes

- Passwords must be hashed (bcrypt or Argon2)
- Rate limit login attempts (server-side)
- Auth tokens should be stored securely and support refresh rotation

---

## Dev Notes

- Stub out social login flows with mock tokens
- Use a single source of truth for user session state (e.g., `useSession()` hook)
- Use cookies or localStorage depending on SSR/client-side context

---

## Future Considerations

- OAuth for enterprise
- SSO (stub endpoint)
- WebAuthn or biometric auth integration
