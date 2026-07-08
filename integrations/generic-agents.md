# Generic Agent Integration

Use the package in three levels, depending on what the agent supports.

## Level 1: Native Skill Folders

If the agent supports skill directories, copy:

```text
skill/
```

to:

```text
<agent-skills-dir>/obsidian-wiki-system
```

Then prompt:

```text
Use $obsidian-wiki-system to initialize a new Obsidian knowledge wiki vault at <target folder>, using <vault name> as the vault name.
```

## Level 2: Instruction-Only Agents

If the agent supports custom instructions but not skill folders, provide these files:

- `skill/SKILL.md`
- `skill/references/structure.md`
- `skill/assets/vault-template-zh/` or `skill/assets/vault-template-en/`

Prompt:

```text
Follow SKILL.md. Use references/structure.md as the directory specification. Copy assets/vault-template-zh for Chinese users or assets/vault-template-en for English users into the target vault, replace {{date}} and {{vault_name}}, and preserve existing user notes.
```

## Level 3: No Agent Skill Support

Run the vault initializer directly:

```powershell
.\scripts\init-vault.ps1 -TargetPath "C:\path\MyWiki" -VaultName "My Wiki" -Language en
```

```bash
./scripts/init-vault.sh ~/MyWiki "My Wiki" en
```

Then ask any agent to read:

- `AGENTS.md`
- `首页.md`
- `wiki/index.md`
- `ops/workflows.md`
- `ops/prompts/`
