param(
    [Parameter(Mandatory = $true)]
    [string]$TargetPath,

    [string]$VaultName,

    [ValidateSet('auto', 'zh', 'en')]
    [string]$Language = 'auto',

    [switch]$Force
)

$ErrorActionPreference = 'Stop'

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$repoRoot = Split-Path -Parent $scriptDir

if ($Language -eq 'auto') {
    $cultureName = [System.Globalization.CultureInfo]::CurrentUICulture.Name.ToLowerInvariant()
    if ($cultureName.StartsWith('zh')) {
        $Language = 'zh'
    }
    else {
        $Language = 'en'
    }
}

if ($Language -eq 'zh') {
    $templateRoot = Join-Path $repoRoot 'skill\assets\vault-template'
    $entryPage = '首页.md'
}
else {
    $templateRoot = Join-Path $repoRoot 'skill\assets\vault-template-en'
    $entryPage = 'Home.md'
}

if (-not (Test-Path -LiteralPath $templateRoot)) {
    throw "Missing vault template: $templateRoot"
}

$targetRoot = $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath($TargetPath)

if (-not $VaultName) {
    $VaultName = Split-Path -Leaf $targetRoot
}

$dateValue = Get-Date -Format 'yyyy-MM-dd'
$utf8NoBom = New-Object System.Text.UTF8Encoding($false)

New-Item -ItemType Directory -Path $targetRoot -Force | Out-Null

foreach ($item in Get-ChildItem -LiteralPath $templateRoot -Recurse -Force) {
    $relativePath = $item.FullName.Substring($templateRoot.Length).TrimStart([System.IO.Path]::DirectorySeparatorChar, [System.IO.Path]::AltDirectorySeparatorChar)
    $destinationPath = Join-Path $targetRoot $relativePath

    if ($item.PSIsContainer) {
        New-Item -ItemType Directory -Path $destinationPath -Force | Out-Null
        continue
    }

    if ((Test-Path -LiteralPath $destinationPath) -and (-not $Force)) {
        Write-Host "Skipped existing file: $relativePath"
        continue
    }

    $parentDir = Split-Path -Parent $destinationPath
    New-Item -ItemType Directory -Path $parentDir -Force | Out-Null

    $text = [System.IO.File]::ReadAllText($item.FullName, [System.Text.Encoding]::UTF8)
    $text = $text.Replace('{{date}}', $dateValue).Replace('{{vault_name}}', $VaultName)
    [System.IO.File]::WriteAllText($destinationPath, $text, $utf8NoBom)
}

Write-Host "Initialized Obsidian wiki vault:"
Write-Host $targetRoot
Write-Host "Language: $Language"
Write-Host "Start from: $entryPage"
