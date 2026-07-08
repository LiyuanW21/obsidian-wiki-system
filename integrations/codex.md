# Codex Integration

## Install

Install globally:

```powershell
.\scripts\install.ps1 -Agent codex
```

If Windows blocks local PowerShell scripts:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\install.ps1 -Agent codex
```

```bash
./scripts/install.sh codex
```

Default destination:

```text
~/.codex/skills/obsidian-wiki-system
```

If `CODEX_HOME` is set, the installer uses:

```text
$CODEX_HOME/skills/obsidian-wiki-system
```

## Use

```text
Use $obsidian-wiki-system to initialize a new Obsidian knowledge wiki vault at <target folder>, using <vault name> as the vault name.
```

## Update An Existing Install

```powershell
.\scripts\install.ps1 -Agent codex -Force
```

```bash
FORCE=1 ./scripts/install.sh codex
```
