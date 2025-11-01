#!/bin/bash
# 🚀 Auto-setup script for MkDocs Material Docker site (Cyberdyne Docs)

DOCS_DIR="/opt/docs"

echo "=== Creating folder structure under $DOCS_DIR ==="
mkdir -p $DOCS_DIR/docs/{setup,usage,assets/images}

echo "=== Creating mkdocs.yml ==="
cat > $DOCS_DIR/mkdocs.yml << 'EOF'
site_name: Cyberdyne Docs
site_description: Documentation for Cyberdyne Systems
site_url: https://docs.pabxyz.com
repo_url: https://github.com/cyberdyne/docs
edit_uri: edit/main/docs/

theme:
  name: material
  language: en
  features:
    - navigation.tabs
    - navigation.expand
    - content.code.copy
    - search.suggest
    - search.highlight
    - content.action.edit
  palette:
    primary: indigo
    accent: deep purple
  logo: assets/images/logo.png
  favicon: assets/images/logo.png

nav:
  - Home: index.md
  - About: about.md
  - Setup:
      - Installation: setup/install.md
      - Configuration: setup/configuration.md
  - Usage:
      - Overview: usage/overview.md
      - FAQ: usage/faq.md

markdown_extensions:
  - admonition
  - codehilite
  - toc:
      permalink: true
  - pymdownx.details
  - pymdownx.superfences
  - pymdownx.tabbed
  - pymdownx.tasklist
  - pymdownx.emoji
  - pymdownx.magiclink
  - def_list

plugins:
  - search
  - tags

extra:
  social:
    - icon: fontawesome/brands/github
      link: https://github.com/cyberdyne
    - icon: fontawesome/brands/discord
      link: https://discord.gg/yourinvite
EOF

echo "=== Creating markdown files ==="
cat > $DOCS_DIR/docs/index.md << 'EOF'
# 👋 Welcome to Cyberdyne Docs

Welcome to the official documentation site for **Cyberdyne Systems**.  
Here you’ll find guides, setup instructions, and FAQs to help you get started.

> 💡 **Tip:** Use the search bar at the top to quickly find what you need.

---

## 🚀 Quick Start

1. Read through the [Installation Guide](setup/install.md)
2. Configure your environment using [Configuration](setup/configuration.md)
3. Learn common operations in [Usage Overview](usage/overview.md)

---

## 📚 Sections
- 🧰 **Setup:** Installing and configuring your system.
- ⚙️ **Usage:** Day-to-day operations and troubleshooting.
- 💬 **FAQ:** Common questions answered.
EOF

cat > $DOCS_DIR/docs/about.md << 'EOF'
# 🏢 About Cyberdyne

Cyberdyne Systems is dedicated to creating innovative technology and automation tools  
that simplify digital media and system management.

We believe in:
- Transparency
- Automation
- Community collaboration

---

**Maintainers:**
- John Connor  
- Sarah Reese
EOF

cat > $DOCS_DIR/docs/setup/install.md << 'EOF'
# ⚙️ Installation

## Docker Compose (Recommended)

Run the following inside your project directory:

```bash
docker compose up -d
