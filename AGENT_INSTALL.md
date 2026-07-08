# Install With An Agent

[English](AGENT_INSTALL.md) | [简体中文](AGENT_INSTALL.zh-CN.md)

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

