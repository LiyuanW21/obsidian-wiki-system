#!/usr/bin/env bash
set -euo pipefail

if [[ $# -lt 1 ]]; then
  echo "Usage: ./scripts/init-vault.sh <target-path> [vault-name] [auto|zh|en]" >&2
  exit 1
fi

target_path="$1"
vault_name="${2:-$(basename "$target_path")}"
language="${3:-${LANGUAGE:-auto}}"

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
repo_root="$(cd "$script_dir/.." && pwd)"

if [[ "$language" == "auto" ]]; then
  locale_value="${LC_ALL:-${LC_MESSAGES:-${LANG:-}}}"
  case "${locale_value,,}" in
    zh*) language="zh" ;;
    *) language="en" ;;
  esac
fi

case "$language" in
  zh)
    template_root="$repo_root/skill/assets/vault-template"
    entry_page="首页.md"
    ;;
  en)
    template_root="$repo_root/skill/assets/vault-template-en"
    entry_page="Home.md"
    ;;
  *)
    echo "Unsupported language: $language. Use auto, zh, or en." >&2
    exit 1
    ;;
esac

if [[ ! -d "$template_root" ]]; then
  echo "Missing vault template: $template_root" >&2
  exit 1
fi

date_value="$(date +%F)"
escaped_name="$(printf '%s' "$vault_name" | sed 's/[\/&]/\\&/g')"

mkdir -p "$target_path"

while IFS= read -r -d '' dir; do
  rel="${dir#"$template_root"/}"
  [[ "$rel" == "$dir" ]] && continue
  mkdir -p "$target_path/$rel"
done < <(find "$template_root" -type d -print0)

while IFS= read -r -d '' file; do
  rel="${file#"$template_root"/}"
  dest="$target_path/$rel"

  if [[ -e "$dest" && "${FORCE:-0}" != "1" ]]; then
    echo "Skipped existing file: $rel"
    continue
  fi

  mkdir -p "$(dirname "$dest")"
  sed -e "s/{{date}}/$date_value/g" -e "s/{{vault_name}}/$escaped_name/g" "$file" > "$dest"
done < <(find "$template_root" -type f -print0)

echo "Initialized Obsidian wiki vault:"
echo "$target_path"
echo "Language: $language"
echo "Start from: $entry_page"
