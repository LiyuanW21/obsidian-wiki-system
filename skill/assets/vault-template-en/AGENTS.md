# AGENTS.md

This vault is a personal wiki knowledge iteration system for daily learning. Write in the user's preferred language unless they ask otherwise.

## Core Layers

- `raw/`: Original material. Store links, PDFs, screenshots, transcripts, clippings, and quick notes here without rewriting source facts.
- `wiki/`: Processed knowledge. Store digested, linked, rewritten notes here.
- `templates/`: Obsidian note templates.
- `ops/`: Operating layer. Store workflows, schema, prompts, and maintenance rules.

## Working Principles

- Read `Home.md`, `wiki/index.md`, and `ops/workflows.md` before editing the vault.
- Preserve the `raw -> wiki -> index/log` iteration loop.
- Do not promote unsupported excerpts into facts. Mark important uncertain claims as `to verify`.
- New `wiki/` pages must include YAML frontmatter and should use `[[wikilinks]]`.
- Prefer short, stable filenames in lowercase English with hyphens; put display titles in frontmatter.
- Update `wiki/log.md` after meaningful structural changes, merges, renames, or index updates.

## Wiki Frontmatter

Use this for new `wiki/` pages:

```yaml
---
type: concept
title: ""
status: seed
created: YYYY-MM-DD
updated: YYYY-MM-DD
tags: []
source: []
---
```

Valid `type`: `source`, `concept`, `domain`, `project`, `question`, `synthesis`, `daily`, `index`, `log`.

Valid `status`: `seed`, `growing`, `stable`, `archive`.

## Common Maintenance Actions

- Ingest material: put the original in `raw/inbox/`, then use `ops/prompts/ingest-source.md` to create a `wiki/sources/` page and related concept pages.
- Query knowledge: start from `wiki/index.md`, follow wikilinks, and list gaps when evidence is missing.
- Weekly review: update `wiki/syntheses/weekly-review.md`, merge duplicate notes, and clean isolated pages.
- Health check: use `ops/prompts/lint-wiki.md` to check missing frontmatter, isolated pages, stale questions, and unsupported claims.

