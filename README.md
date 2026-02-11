# openzca-site

Simple static landing page for openzca.

## Local preview

Open `index.html` directly in browser.

## Deploy

This repo deploys to GitHub Pages via `.github/workflows/pages.yml`.

## Domain setup

- Primary: `openzca.com` (set as GitHub Pages custom domain)
- Secondary: `openzca.dev`
  - Option A: redirect to `https://openzca.com`
  - Option B: map DNS to the same Pages target, but keep canonical on `openzca.com`

## SEO

- `robots.txt`
- `sitemap.xml`
- canonical + Open Graph meta tags in `index.html`
