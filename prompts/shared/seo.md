Set up dynamic SEO for all public pages and enable structured data for better search engine visibility.

---

### Meta Handling

- Add `<Head>` components with:
    - Title
    - Description
    - `og:` tags
    - `twitter:` tags
- Default fallback config in `seo.config.ts`
- Support per-page overrides

---

### JSON-LD Structured Data

Add `script[type="application/ld+json"]` blocks for:

- Homepage → `WebSite`
- Pricing → `Product`
- FAQ → `FAQPage`
- Contact → `Organization`
- Blog (if exists) → `Article`

Use `generateSchemaForPage(page)` helper function.

---

### Additional Enhancements

- Add `robots.txt`, `sitemap.xml`, and dynamic Open Graph image meta
- Preload above-the-fold fonts and images
- Prompt developer for page intent if schema is unclear

If additional clarification is needed about the product, service, or layout, ask questions before generating SEO metadata.
