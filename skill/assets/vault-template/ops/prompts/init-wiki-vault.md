# Prompt: Init Wiki Vault

请使用 `$obsidian-wiki-system` 在指定文件夹初始化一个新的 Obsidian wiki 知识迭代系统。

输入：

```text
目标文件夹：
Vault 名称：
是否保留已有文件：
```

执行要求：

1. 先检查目标文件夹，不要覆盖已有用户内容。
2. 复制 `obsidian-wiki-system` skill 的 `assets/vault-template/`。
3. 将 `{{date}}` 替换为当前日期。
4. 将 `{{vault_name}}` 替换为 Vault 名称。
5. 如果 `.obsidian/` 已存在，只合并 Daily Notes 和 Templates 配置，不覆盖其它设置。
6. 完成后告诉用户从 `首页.md` 开始。

一句话版本：

```text
请使用 $obsidian-wiki-system 在 <目标文件夹路径> 初始化一个新的 Obsidian wiki 知识迭代系统，vault 名称使用 <名称>。
```

