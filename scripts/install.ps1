param(
    [ValidateSet('codex', 'opencode', 'agents', 'claude')]
    [string]$Agent = 'codex',

    [ValidateSet('global', 'project')]
    [string]$Scope = 'global',

    [string]$ProjectPath = (Get-Location).Path,

    [string]$CustomSkillsDir,

    [switch]$Force
)

$ErrorActionPreference = 'Stop'

$skillName = 'obsidian-wiki-system'
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$repoRoot = Split-Path -Parent $scriptDir
$sourceDir = Join-Path $repoRoot 'skill'

if (-not (Test-Path -LiteralPath $sourceDir)) {
    throw "Missing skill directory: $sourceDir"
}

$homeDir = [Environment]::GetFolderPath('UserProfile')

if ($CustomSkillsDir) {
    $skillsDir = $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath($CustomSkillsDir)
}
elseif ($Scope -eq 'project') {
    $projectRoot = $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath($ProjectPath)
    switch ($Agent) {
        'codex' { $skillsDir = Join-Path $projectRoot '.codex\skills' }
        'opencode' { $skillsDir = Join-Path $projectRoot '.opencode\skills' }
        'agents' { $skillsDir = Join-Path $projectRoot '.agents\skills' }
        'claude' { $skillsDir = Join-Path $projectRoot '.claude\skills' }
    }
}
else {
    switch ($Agent) {
        'codex' {
            if ($env:CODEX_HOME) {
                $skillsDir = Join-Path $env:CODEX_HOME 'skills'
            }
            else {
                $skillsDir = Join-Path $homeDir '.codex\skills'
            }
        }
        'opencode' {
            $legacyOpenCodeSkills = Join-Path $homeDir '.opencode\skills'
            if (Test-Path -LiteralPath $legacyOpenCodeSkills) {
                $skillsDir = $legacyOpenCodeSkills
            }
            else {
                $skillsDir = Join-Path $homeDir '.config\opencode\skills'
            }
        }
        'agents' { $skillsDir = Join-Path $homeDir '.agents\skills' }
        'claude' { $skillsDir = Join-Path $homeDir '.claude\skills' }
    }
}

$destinationDir = Join-Path $skillsDir $skillName

if (Test-Path -LiteralPath $destinationDir) {
    if (-not $Force) {
        throw "Destination already exists: $destinationDir. Re-run with -Force to replace it."
    }
    Remove-Item -LiteralPath $destinationDir -Recurse -Force
}

New-Item -ItemType Directory -Path $destinationDir -Force | Out-Null
Get-ChildItem -LiteralPath $sourceDir -Force | Copy-Item -Destination $destinationDir -Recurse -Force

Write-Host "Installed $skillName for $Agent at:"
Write-Host $destinationDir
