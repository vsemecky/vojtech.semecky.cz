# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Personal website for Vojtěch Semecký hosted at vojtech.semecky.cz. Czech language (`lang="cs"`).

## Architecture

- **index.html** - Single-page static website with embedded CSS (dark theme, centered layout)
- Bootstrap 5.0.0-beta2 (CDN) for layout
- Font Awesome Pro 5.10.0 (CDN) for social icons
- Google Tag Manager (`GTM-MZLF78FF`) for analytics
- Cookie consent bar via cookiebar library (Czech locale)

## Development

No build process. Edit `index.html` directly. Preview with `python -m http.server 8000`.
