#!/usr/bin/env bash
set -euo pipefail

skill_name="obsidian-wiki-system"
agent="${1:-codex}"
scope="${2:-global}"
project_path="${3:-$PWD}"

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
repo_root="$(cd "$script_dir/.." && pwd)"
source_dir="$repo_root/skill"

if [[ ! -d "$source_dir" ]]; then
  echo "Missing skill directory: $source_dir" >&2
  exit 1
fi

if [[ -n "${CUSTOM_SKILLS_DIR:-}" ]]; then
  skills_dir="$CUSTOM_SKILLS_DIR"
elif [[ "$scope" == "project" ]]; then
  case "$agent" in
    codex) skills_dir="$project_path/.codex/skills" ;;
    opencode) skills_dir="$project_path/.opencode/skills" ;;
    agents) skills_dir="$project_path/.agents/skills" ;;
    claude) skills_dir="$project_path/.claude/skills" ;;
    *) echo "Unknown agent: $agent" >&2; exit 1 ;;
  esac
else
  case "$agent" in
    codex) skills_dir="${CODEX_HOME:-$HOME/.codex}/skills" ;;
    opencode)
      if [[ -d "$HOME/.opencode/skills" ]]; then
        skills_dir="$HOME/.opencode/skills"
      else
        skills_dir="$HOME/.config/opencode/skills"
      fi
      ;;
    agents) skills_dir="$HOME/.agents/skills" ;;
    claude) skills_dir="$HOME/.claude/skills" ;;
    *) echo "Unknown agent: $agent" >&2; exit 1 ;;
  esac
fi

destination_dir="$skills_dir/$skill_name"

if [[ -e "$destination_dir" ]]; then
  if [[ "${FORCE:-0}" != "1" ]]; then
    echo "Destination already exists: $destination_dir. Re-run with FORCE=1 to replace it." >&2
    exit 1
  fi
  rm -rf "$destination_dir"
fi

mkdir -p "$destination_dir"
(cd "$source_dir" && tar cf - .) | (cd "$destination_dir" && tar xf -)

echo "Installed $skill_name for $agent at:"
echo "$destination_dir"
