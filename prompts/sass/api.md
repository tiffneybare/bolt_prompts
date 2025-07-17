# 📡 API Setup

This prompt defines the structure and scaffolding for the backend API of the SaaS app, including REST and optional GraphQL endpoints.

---

## ✅ Goals

- Create a scalable and modular API structure.
- Support REST and optionally GraphQL.
- Ensure authentication is enforced on protected routes.
- Define routes for all major features (auth, billing, user profile, dashboard, etc).

---

## 📦 What to Generate

- Express.js (or chosen backend) route folders for: `auth`, `users`, `subscriptions`, `admin`, `webhooks`, etc.
- Example controller + route for each.
- Global error handling middleware.
- JWT verification middleware.
- Request validation for common routes.
- Optional: GraphQL server setup if `USE_GRAPHQL` is enabled.

---

## 🧱 Folder Structure

/api
/routes
auth.js
users.js
subscriptions.js
admin.js
webhooks.js
/controllers
authController.js
userController.js
subscriptionController.js
/middleware
authMiddleware.js
errorHandler.js
validate.js
/utils
logger.js
response.js
index.js


---

## ⚙️ Settings

- `USE_GRAPHQL`: boolean — Include Apollo Server if true.
- `ENABLE_RATE_LIMITING`: boolean — Add rate limiting middleware.

---

## ✨ Enhancements

- Use versioned API paths like `/api/v1`.
- Add Swagger/OpenAPI auto-documentation setup.
- Use TypeScript if project supports it.

---
