# Install With An Agent

You do not need to run scripts manually. Copy one of the prompts below into your agent.

## Codex

```text
Please install https://github.com/LiyuanW21/obsidian-wiki-system as a Codex skill.

Use the repository's `skill/` subfolder as the skill folder, and install it as `obsidian-wiki-system` under my Codex skills directory, usually `~/.codex/skills/obsidian-wiki-system` or `$CODEX_HOME/skills/obsidian-wiki-system`.

After installing, verify that `SKILL.md`, `references/`, and `assets/` exist. Do not overwrite unrelated existing skills.
```

Then initialize a new vault:

```text
Use $obsidian-wiki-system to initialize a new Obsidian knowledge wiki vault at <target folder>, using <vault name> as the vault name. Match my preferred language automatically.
```

## OpenCode

```text
Please install https://github.com/LiyuanW21/obsidian-wiki-system as an OpenCode skill.

Use the repository's `skill/` subfolder as the skill folder, and install it as `obsidian-wiki-system` under my OpenCode skills directory. Prefer my existing OpenCode skills path if it exists, such as `~/.opencode/skills/obsidian-wiki-system`; otherwise use `~/.config/opencode/skills/obsidian-wiki-system`.

Only install the skill folder. Do not overwrite my existing hooks, commands, tools, or global instructions.

After installing, verify that `SKILL.md`, `references/`, and `assets/` exist.
```

Then initialize a new vault:

```text
Use $obsidian-wiki-system to initialize a new Obsidian knowledge wiki vault at <target folder>, using <vault name> as the vault name. Match my preferred language automatically.
```

## Any Other Agent

```text
Please use https://github.com/LiyuanW21/obsidian-wiki-system to set up an Obsidian wiki system for me.

If you support skills, install the repository's `skill/` subfolder as a skill named `obsidian-wiki-system`.

If you do not support skills, use `skill/SKILL.md`, `skill/references/structure.md`, `skill/references/language.md`, and the appropriate template under `skill/assets/` to initialize the target vault.

Use the English template for English users, the Chinese template for Chinese users, and preserve any existing notes in the target folder.
```

## Chinese Prompts

### Codex

```text
请把 https://github.com/LiyuanW21/obsidian-wiki-system 安装成 Codex skill。

注意：真正的 skill 在仓库的 `skill/` 子文件夹里。请把这个子文件夹安装为 `obsidian-wiki-system`，位置通常是 `~/.codex/skills/obsidian-wiki-system` 或 `$CODEX_HOME/skills/obsidian-wiki-system`。

安装后请检查 `SKILL.md`、`references/`、`assets/` 是否存在。不要覆盖其它无关 skill。
```

初始化新 vault：

```text
请使用 $obsidian-wiki-system 在 <目标文件夹路径> 初始化一个新的 Obsidian wiki 知识迭代系统，vault 名称使用 <名称>，语言自动跟随我的使用习惯。
```

### OpenCode

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

