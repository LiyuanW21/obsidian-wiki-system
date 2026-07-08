# Prompt: Ingest Source

把 `raw/inbox/` 中的一个来源摄入到 wiki。

请按以下步骤执行：

1. 阅读指定来源，保留原始文件不改写。
2. 在 `wiki/sources/` 创建来源页，文件名使用 `YYYY-MM-DD-short-slug.md`。
3. 使用 `templates/source-note.md` 的结构。
4. 提取关键概念；如果已有概念页，更新并链接；如果没有，新建 `wiki/concepts/` 页面。
5. 提取开放问题，更新 `wiki/questions/open-questions.md` 或创建单独问题页。
6. 如果材料影响某个项目，更新 `wiki/projects/`。
7. 更新 `wiki/index.md` 和 `wiki/log.md`。

