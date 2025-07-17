### 🧬 Feature Flags and Experiments

Setup a feature flag system from the jump to support growth experiments and staged rollouts.

---

### Basic Implementation (Stubbed)

- Feature toggle context provider
- `useFeatureFlag('beta_dashboard')` hook
- Local flag config (`featureFlags.ts`)
- Add GTM event: `feature_flag_enabled`

---

### Optional Integration

Prompt to add:

- Unleash
- Flagsmith
- LaunchDarkly

Use fallback logic to default to OFF when API fails.

---

### Folder Suggestion

```
src/
├── context/
│   └── FeatureFlagProvider.tsx
├── hooks/
│   └── useFeatureFlag.ts
├── config/
│   └── featureFlags.ts

```
