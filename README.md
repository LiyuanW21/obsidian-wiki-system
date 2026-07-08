# Obsidian Wiki System

A portable agent skill and vault template for building an iterative Obsidian knowledge wiki.

## Description

Obsidian Wiki System helps AI agents scaffold and maintain a personal knowledge base that evolves from raw captures into linked wiki notes, reusable concepts, open questions, project notes, and periodic syntheses. It includes bilingual Obsidian vault templates, agent skill instructions, and install/init scripts for Codex, OpenCode, and other skill-aware agents.

## Acknowledgements / Inspiration

The core idea is inspired by Andrej Karpathy's [`llm-wiki`](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f) gist, which describes using LLMs to help maintain a personal wiki-style knowledge base. This project packages that spirit into a reusable Obsidian vault template and portable agent skill.

It packages the workflow created in this vault into a reusable system:

```text
raw/inbox -> wiki/sources -> wiki/concepts/questions/projects/syntheses -> wiki/index + wiki/log
```

## What It Includes

- `skill/`: portable skill folder for Codex, OpenCode, and other skill-aware agents.
- `skill/assets/vault-template/`: Chinese starter Obsidian vault structure.
- `skill/assets/vault-template-en/`: English starter Obsidian vault structure.
- `skill/references/structure.md`: directory model and replication checklist.
- `scripts/init-vault.*`: initialize a vault without relying on an agent.
- `scripts/install.*`: copy the skill into Codex, OpenCode, or generic agent skill directories.
- `integrations/`: installation notes for each agent family.

## Quick Start

Initialize a new Obsidian vault directly:

```powershell
.\scripts\init-vault.ps1 -TargetPath "C:\path\MyWiki" -VaultName "My Wiki" -Language auto
```

If Windows blocks local PowerShell scripts, run:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\init-vault.ps1 -TargetPath "C:\path\MyWiki" -VaultName "My Wiki" -Language en
```

```bash
./scripts/init-vault.sh ~/MyWiki "My Wiki" auto
```

Then open the generated entry page in Obsidian: `Home.md` for English, `首页.md` for Chinese.

## Language Behavior

The skill is language-adaptive:

- Agent use: follows the user's request language or existing vault language.
- Script use: `auto` follows system locale; use `en` or `zh` to force a language.
- English users get `Home.md` and English workflow files.
- Chinese users get `首页.md` and Chinese workflow files.

## Install For Codex

```powershell
.\scripts\install.ps1 -Agent codex
```

If Windows blocks local PowerShell scripts, use `powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\install.ps1 -Agent codex`.

```bash
./scripts/install.sh codex
```

Use it with:

```text
Use $obsidian-wiki-system to initialize a new Obsidian knowledge wiki vault at <target folder>, using <vault name> as the vault name.
```

## Install For OpenCode

OpenCode supports reusable skills as folders that contain `SKILL.md`. Global skills live in `~/.config/opencode/skills/`; project skills live in `.opencode/skills/`. See the official docs: <https://opencode.ai/docs/skills/>.

The installer uses `~/.config/opencode/skills/` by default, but if it detects an existing legacy `~/.opencode/skills/` directory it installs there to match your current setup.

Global install:

```powershell
.\scripts\install.ps1 -Agent opencode
```

```bash
./scripts/install.sh opencode
```

Project-local install:

```powershell
.\scripts\install.ps1 -Agent opencode -Scope project -ProjectPath "C:\path\project"
```

```bash
./scripts/install.sh opencode project /path/project
```

Use it with:

```text
Use $obsidian-wiki-system to initialize a new Obsidian knowledge wiki vault at <target folder>, using <vault name> as the vault name.
```

## Generic Agent Use

If an agent supports skill folders, copy `skill/` into that agent's skill directory as `obsidian-wiki-system`.

If an agent only supports instruction files, provide:

1. `skill/SKILL.md`
2. `skill/references/structure.md`
3. access to `skill/assets/vault-template/`

If an agent has no skill mechanism, run `scripts/init-vault.*` and then ask the agent to follow the generated `AGENTS.md`, `ops/workflows.md`, and `ops/prompts/`.

## Publish Safely

Publish only this package folder, not your whole private Obsidian vault:

```text
ops/reusable/obsidian-wiki-system
```

Suggested GitHub repo name:

```text
obsidian-wiki-system
```

See `PUBLISHING.md` for exact upload commands.

Before making the repo public, choose a license if you want others to reuse it formally.
