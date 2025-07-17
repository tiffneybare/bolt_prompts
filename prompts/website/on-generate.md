### 🔁 On Generate: Auto-QA Checklist

After Bolt generates a page, feature, or layout, it must:

1. ✅ Add GTM tracking to all interactive elements
2. ✅ Inject structured data in the `<head>` based on content
3. ✅ Ensure title + meta description exist
4. ✅ Lazy-load all new routes
5. ✅ Run route chunk size analysis
6. ✅ Confirm no placeholder text remains
7. ✅ Re-analyze affected Lighthouse metrics
8. ✅ Re-check all imports for cross-route contamination

> These steps act as a QA pass and should be done immediately after generation.
>
