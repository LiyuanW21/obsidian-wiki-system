# Obsidian Wiki System

[English](README.md) | [简体中文](README.zh-CN.md)

一个可移植的 Obsidian wiki 系统，适用于 Codex、OpenCode，以及任何能读取“skill-like 文件夹”（instructions、references、assets）的 agent。

## 用自然语言安装

大多数用户不需要手动运行脚本。把下面的话复制给你的 agent 即可。

复制给 Codex：

```text
请把 https://github.com/LiyuanW21/obsidian-wiki-system 安装成 Codex skill。

注意：真正的 skill 在仓库的 `skill/` 子文件夹里。请把这个子文件夹安装为 `obsidian-wiki-system`，位置通常是 `~/.codex/skills/obsidian-wiki-system` 或 `$CODEX_HOME/skills/obsidian-wiki-system`。

安装后请检查 `SKILL.md`、`references/`、`assets/` 是否存在。不要覆盖其它无关 skill。
```

复制给 OpenCode：

```text
请把 https://github.com/LiyuanW21/obsidian-wiki-system 安装成 OpenCode skill。

注意：真正的 skill 在仓库的 `skill/` 子文件夹里。请把这个子文件夹安装为 `obsidian-wiki-system`。如果我已有 OpenCode skills 目录，优先使用现有路径，例如 `~/.opencode/skills/obsidian-wiki-system`；否则使用 `~/.config/opencode/skills/obsidian-wiki-system`。

只安装 skill 文件夹，不要覆盖我现有的 hooks、commands、tools 或全局 instructions。

安装后请检查 `SKILL.md`、`references/`、`assets/` 是否存在。
```

安装后初始化一个新的 Obsidian vault：

```text
请使用 $obsidian-wiki-system 在 <目标文件夹路径> 初始化一个新的 Obsidian wiki 知识迭代系统，vault 名称使用 <名称>，语言自动跟随我的使用习惯。
```

更多可复制提示词见 [`AGENT_INSTALL.zh-CN.md`](AGENT_INSTALL.zh-CN.md)。

## 项目描述

Obsidian Wiki System 帮助 AI agent 搭建并维护个人知识库：从原始资料开始，逐步整理为链接化的 wiki 笔记、可复用概念、开放问题、项目笔记和阶段性综合。它包含中英文 Obsidian vault 模板、agent skill 指令，以及适用于 Codex、OpenCode 和任何能读取 skill-style instructions、references、assets 的 agent 的安装/初始化脚本。

## 思想来源

核心思想受 Andrej Karpathy 的 [`llm-wiki`](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f) gist 启发。Karpathy 描述了如何用 LLM 帮助维护个人 wiki 式知识库；本项目把这种思路封装成可复用的 Obsidian vault 模板和跨 agent skill。

系统工作流：

```text
raw/inbox -> wiki/sources -> wiki/concepts/questions/projects/syntheses -> wiki/index + wiki/log
```

## 包含内容

- `skill/`：可被 Codex、OpenCode，以及任何能读取 skill-like instructions、references、assets 的 agent 使用的 skill 文件夹。
- `skill/assets/vault-template/`：中文 Obsidian vault 模板。
- `skill/assets/vault-template-en/`：英文 Obsidian vault 模板。
- `skill/references/structure.md`：目录结构和复刻清单。
- `skill/references/language.md`：语言自适应规则。
- `scripts/init-vault.*`：不依赖 agent，直接初始化 vault。
- `scripts/install.*`：把 skill 安装到 Codex、OpenCode 或通用 agent 目录。
- `integrations/`：不同 agent 的安装说明。

## 语言行为

- 用 agent 安装时：跟随用户提问语言或已有 vault 的主要语言。
- 用脚本初始化时：`auto` 跟随系统语言，也可以用 `en` 或 `zh` 强制指定。
- 英文用户会得到 `Home.md` 和英文工作流文件。
- 中文用户会得到 `首页.md` 和中文工作流文件。

## 手动脚本初始化

PowerShell：

```powershell
.\scripts\init-vault.ps1 -TargetPath "C:\path\MyWiki" -VaultName "My Wiki" -Language auto
```

Bash：

```bash
./scripts/init-vault.sh ~/MyWiki "My Wiki" auto
```

## 发布说明

如果你 fork 或改造这个项目，请保留对 Karpathy `llm-wiki` gist 的思想来源说明。
