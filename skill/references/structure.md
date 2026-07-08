# Obsidian Wiki System Structure

## Core Loop

```text
raw/inbox -> wiki/sources -> wiki/concepts/questions/projects/syntheses -> wiki/index + wiki/log
```

## Directories

| Path | Purpose |
| --- | --- |
| `raw/` | Original materials and unprocessed captures |
| `raw/inbox/` | Temporary intake for links, transcripts, clippings, thoughts |
| `raw/assets/` | PDFs, images, screenshots, audio, binary assets |
| `wiki/` | Processed, linked, reusable knowledge |
| `wiki/sources/` | One page per source: article, video, book, conversation, repo |
| `wiki/concepts/` | Reusable concepts, models, definitions |
| `wiki/domains/` | Topic maps and navigation pages |
| `wiki/projects/` | Active projects, workflows, learning tracks |
| `wiki/questions/` | Open and closed questions |
| `wiki/syntheses/` | Cross-source synthesis and current conclusions |
| `templates/` | Obsidian note templates |
| `ops/` | Workflows, schema, prompts, maintenance rules |
| `daily/` | Daily notes |

## Page Types

Use frontmatter on every wiki page:

```yaml
---
type: source
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

## Replication Checklist

1. Choose language using `references/language.md`.
2. Copy `assets/vault-template-zh/` for Chinese or `assets/vault-template-en/` for English into an empty or existing Obsidian folder.
3. Replace placeholders `{{date}}` and `{{vault_name}}`.
4. Preserve existing `.obsidian/` settings unless the user wants the template settings.
5. Open the localized entry page: `首页.md` for Chinese or `Home.md` for English.
6. Put first unprocessed material into `raw/inbox/`.
7. Use `ops/prompts/ingest-source.md` to create the first `wiki/sources/` page.
8. Update `wiki/index.md` and `wiki/log.md`.
