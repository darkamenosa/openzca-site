# openzca-site

Simple static landing page for openzca.

## Local preview

Open `index.html` directly in browser.

## Deploy

This repo deploys to GitHub Pages via `.github/workflows/pages.yml`.

## Domain setup

- Primary: `openzca.com` (set as GitHub Pages custom domain)
- Secondary: `openzca.dev`
  - Recommended: 301 redirect to `https://openzca.com`

## Install endpoints

You can host installer scripts from this repo:

- `install.sh`
- `install.ps1`

If `get.openzca.dev` points to this site:

- `curl -fsSL https://get.openzca.dev/install.sh | bash`
- `irm https://get.openzca.dev/install.ps1 | iex`

## SEO

- `robots.txt`
- `sitemap.xml`
- canonical + Open Graph meta tags in `index.html`
