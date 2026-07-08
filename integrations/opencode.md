# OpenCode Integration

OpenCode supports skills as folders that contain `SKILL.md`.

Official docs: <https://opencode.ai/docs/skills/>

## Install Globally

```powershell
.\scripts\install.ps1 -Agent opencode
```

If Windows blocks local PowerShell scripts:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\install.ps1 -Agent opencode
```

```bash
./scripts/install.sh opencode
```

Default destination:

```text
~/.config/opencode/skills/obsidian-wiki-system
```

If `~/.opencode/skills/` already exists, the installer prefers that legacy path to avoid splitting your OpenCode skills across two locations.

## Install Project-Locally

```powershell
.\scripts\install.ps1 -Agent opencode -Scope project -ProjectPath "C:\path\project"
```

```bash
./scripts/install.sh opencode project /path/project
```

Project destination:

```text
<project>/.opencode/skills/obsidian-wiki-system
```

## Use

```text
Use $obsidian-wiki-system to initialize a new Obsidian knowledge wiki vault at <target folder>, using <vault name> as the vault name.
```

## If You Already Use oh-my-openagent

Keep `oh-my-openagent` as the main OpenCode operating layer. Install this package only as a skill folder:

```text
.opencode/skills/obsidian-wiki-system
```

Do not overwrite existing hooks, commands, tools, or shared instructions. This package only needs filesystem access to copy the vault template and then follow the generated wiki workflow files.
