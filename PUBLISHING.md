# Publishing To GitHub

Publish this directory as its own repository:

```text
ops/reusable/obsidian-wiki-system
```

Do not publish the parent Obsidian vault unless you intentionally want your private notes online.

## Recommended Repo

```text
obsidian-wiki-system
```

## Manual Git Upload

Create an empty GitHub repository first, then run from this package directory:

```bash
git init
git add .
git commit -m "Initial Obsidian wiki system skill"
git branch -M main
git remote add origin https://github.com/<owner>/obsidian-wiki-system.git
git push -u origin main
```

## GitHub CLI Upload

If `gh` is installed and authenticated:

```bash
gh repo create <owner>/obsidian-wiki-system --public --source=. --remote=origin --push
```

## Before Publishing Publicly

- Choose a license if you want others to reuse the package formally.
- Review `skill/assets/vault-template-zh/` and `skill/assets/vault-template-en/` for personal information.
- Keep `README.md` as the public entry point.
