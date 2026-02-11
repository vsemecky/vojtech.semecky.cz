# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Personal website for Vojtěch Semecký hosted at vojtech.semecky.cz. Czech language (`lang="cs"`).

## Architecture

- **Astro** framework (static site generation)
- **Tailwind CSS v4** via `@tailwindcss/vite` for styling
- **rss-parser** for fetching articles from RSS feeds at build time
- Google Tag Manager (`GTM-MZLF78FF`) for analytics
- Dark/light mode via `prefers-color-scheme`

## Project Structure

```
src/
  layouts/Layout.astro       # Main layout (head, nav, footer, dark/light mode, GTM)
  pages/
    index.astro              # Homepage (photo + name + social icons)
    clanky.astro             # Articles from RSS feeds
    kapely.astro             # Bands (data from YAML)
    projekty.astro           # Projects (data from YAML)
  components/
    Navigation.astro         # Top navigation
    SocialIcons.astro        # Social media icons (SVG)
  data/
    kapely.yaml              # Band data
    projekty.yaml            # Project data
  styles/
    global.css               # Tailwind imports + custom theme
public/
  square.jpg                 # Profile photo
  favicon.ico                # Favicon
```

## Development

```bash
yarn dev        # Start dev server
yarn build      # Production build (output to dist/)
yarn preview    # Preview production build
```

## Key Decisions

- Social icons use inline SVG paths (no external icon library dependency)
- YAML files for data that will be expanded later (kapely, projekty)
- RSS feeds are fetched at build time, not client-side
