---
type: index
title: 工作流
status: stable
created: {{date}}
updated: {{date}}
tags: [workflow, ops]
source: []
---

# 工作流

## 1. Capture

把任何有价值但未整理的材料放入 `raw/inbox/`。

## 2. Ingest

每次只处理一个来源。使用 [[ops/prompts/ingest-source|摄入提示词]]：

1. 新建 `wiki/sources/YYYY-MM-DD-slug.md`。
2. 写摘要、关键论点、可行动启发、待验证问题。
3. 抽取或更新 `wiki/concepts/`、`wiki/questions/`、`wiki/projects/` 页面。
4. 更新 [[wiki/index]] 和 [[wiki/log]]。

## 3. Query

当你问一个问题时，先从 [[wiki/index]] 找相关领域、概念和来源。使用 [[ops/prompts/query-wiki|查询提示词]]。

## 4. Synthesize

当多个来源反复指向同一主题时，新建或更新 `wiki/syntheses/` 页面。

## 5. Lint

每周使用 [[ops/prompts/lint-wiki|健康检查提示词]] 做维护。

