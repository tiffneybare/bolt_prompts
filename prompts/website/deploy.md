### 🚀 Build & Deployment

- Vite with esbuild
- Manual chunk splitting
- Disable source maps in prod
- Enable Brotli + Gzip
- CSP + HSTS security headers

### Required Scripts

```json
"scripts": {
  "dev": "vite",
  "build": "vite build",
  "preview": "vite preview",
  "analyze": "vite build --report",
  "lint": "eslint ./src --ext .ts,.tsx"
}

```
