# 🚀 Getting Started with Bolt Prompts

This guide helps you set up and use this Bolt Prompts repo in any new project.

---

## 🧰 Requirements

- Node.js v16+ (for `build.js`)
- Git installed
- Access to [Bolt](https://bolt.build) (obviously 😉)

---

## 📦 Folder Structure

bolt_prompts/
├── prompts/
│ ├── shared/ # Reusable prompt modules
│ ├── saas/ # Prompts for SaaS application shells
│ └── website/ # Prompts for marketing/public sites
├── build.js # Combines prompts into final prompt.md
└── .bolt/
├── on-generate.md
└── setup.md # (this file)

---

## 🛠️ Usage Instructions

1. **Clone the Repo** into your Bolt project directory or anywhere locally:

   ```bash
   git clone https://github.com/your-username/bolt_prompts.git
   cd bolt_prompts

Install Node Modules (if needed)

If you plan to customize or expand the build script:

npm install
Run the Build Script

This will generate a single prompt.md file based on the selected app type:

node build.js
Copy the Resulting prompt.md to your Bolt project folder.
