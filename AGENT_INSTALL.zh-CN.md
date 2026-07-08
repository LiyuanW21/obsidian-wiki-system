# 通过 Agent 安装

[English](AGENT_INSTALL.md) | [简体中文](AGENT_INSTALL.zh-CN.md)

你不需要手动运行脚本。把下面的提示词复制给你的 agent 即可。

## Codex

```text
请把 https://github.com/LiyuanW21/obsidian-wiki-system 安装成 Codex skill。

注意：真正的 skill 在仓库的 `skill/` 子文件夹里。请把这个子文件夹安装为 `obsidian-wiki-system`，位置通常是 `~/.codex/skills/obsidian-wiki-system` 或 `$CODEX_HOME/skills/obsidian-wiki-system`。

安装后请检查 `SKILL.md`、`references/`、`assets/` 是否存在。不要覆盖其它无关 skill。
```

初始化新 vault：

```text
请使用 $obsidian-wiki-system 在 <目标文件夹路径> 初始化一个新的 Obsidian wiki 知识迭代系统，vault 名称使用 <名称>，语言自动跟随我的使用习惯。
```

## OpenCode

```text
请把 https://github.com/LiyuanW21/obsidian-wiki-system 安装成 OpenCode skill。

注意：真正的 skill 在仓库的 `skill/` 子文件夹里。请把这个子文件夹安装为 `obsidian-wiki-system`。如果我已有 OpenCode skills 目录，优先使用现有路径，例如 `~/.opencode/skills/obsidian-wiki-system`；否则使用 `~/.config/opencode/skills/obsidian-wiki-system`。

只安装 skill 文件夹，不要覆盖我现有的 hooks、commands、tools 或全局 instructions。

安装后请检查 `SKILL.md`、`references/`、`assets/` 是否存在。
```

初始化新 vault：

```text
请使用 $obsidian-wiki-system 在 <目标文件夹路径> 初始化一个新的 Obsidian wiki 知识迭代系统，vault 名称使用 <名称>，语言自动跟随我的使用习惯。
```

## 其它 Agent

```text
请使用 https://github.com/LiyuanW21/obsidian-wiki-system 帮我搭建一个 Obsidian wiki 知识迭代系统。

如果你支持 skills，请把仓库中的 `skill/` 子文件夹安装成名为 `obsidian-wiki-system` 的 skill。

如果你不支持 skills，请读取 `skill/SKILL.md`、`skill/references/structure.md`、`skill/references/language.md`，并使用 `skill/assets/` 下合适语言的模板来初始化目标 vault。

英文用户使用英文模板，中文用户使用中文模板，并保留目标文件夹中已有的笔记。
```

