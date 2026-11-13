# Agent HQ by mttsus - Windows quick launcher.
# Runs using built-in Windows PowerShell; no Python dependency.
# Does not elevate privileges, silently install packages, or grant agent approvals.
$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location -LiteralPath $root

function Hold-And-Exit([int]$Code) {
  Write-Host ""
  Read-Host 'Press Enter to close this window' | Out-Null
  exit $Code
}

Write-Host ''
Write-Host '========================================' -ForegroundColor Cyan
Write-Host '  Agent HQ by mttsus | Windows setup' -ForegroundColor Cyan
Write-Host '========================================' -ForegroundColor Cyan
Write-Host ''

$workspace = Join-Path $root 'workspace'
$prompt = Join-Path $root 'prompts\AGENT_HQ_MASTER_PROMPT.md'
$branding = Join-Path $root 'prompts\BRANDING_ADDENDUM.md'
if (-not (Test-Path -LiteralPath $prompt) -or -not (Test-Path -LiteralPath $branding)) {
  Write-Host 'ERROR: Required prompt files are missing. Extract the complete ZIP, not individual files.' -ForegroundColor Red
  Hold-And-Exit 1
}

New-Item -ItemType Directory -Path $workspace -Force | Out-Null
foreach ($source in @($prompt, $branding)) {
  $target = Join-Path $workspace (Split-Path -Leaf $source)
  if (-not (Test-Path -LiteralPath $target)) {
    Copy-Item -LiteralPath $source -Destination $target
  } elseif ((Get-FileHash -LiteralPath $source -Algorithm SHA256).Hash -ne (Get-FileHash -LiteralPath $target -Algorithm SHA256).Hash) {
    Write-Host "Preserving your customized $target (different from starter)." -ForegroundColor Yellow
  }
}
$guideSource = Join-Path $root 'prompts\WORKSPACE_AGENTS.md'
$guideTarget = Join-Path $workspace 'AGENTS.md'
if ((Test-Path -LiteralPath $guideSource) -and -not (Test-Path -LiteralPath $guideTarget)) {
  Copy-Item -LiteralPath $guideSource -Destination $guideTarget
}
Write-Host "Workspace ready: $workspace" -ForegroundColor Green

$codex = Get-Command codex -ErrorAction SilentlyContinue
if (-not $codex) {
  Write-Host ''
  Write-Host 'Codex CLI is not installed or is not on PATH.' -ForegroundColor Yellow
  $npm = Get-Command npm.cmd -ErrorAction SilentlyContinue
  if ($npm) {
    Write-Host 'Node.js/npm detected.'
    $answer = Read-Host 'Install official @openai/codex globally with npm? (y/N)'
    if ($answer -match '^[Yy]$') {
      Write-Host 'Installing Codex via npm. This requires network access.'
      & $npm.Source install -g '@openai/codex'
      if ($LASTEXITCODE -ne 0) {
        Write-Host 'Codex installation failed. See official installation instructions.' -ForegroundColor Red
        Write-Host 'https://github.com/openai/codex#quickstart'
        Hold-And-Exit 2
      }
      $codex = Get-Command codex -ErrorAction SilentlyContinue
      if (-not $codex) {
        $npmPrefix = (& $npm.Source prefix -g 2>$null | Select-Object -First 1).Trim()
        $candidate = Join-Path $npmPrefix 'codex.cmd'
        if (Test-Path -LiteralPath $candidate) { $codex = Get-Item -LiteralPath $candidate }
      }
    }
  }
  if (-not $codex) {
    Write-Host ''
    Write-Host 'Install Codex from the official OpenAI instructions, then run this file again:' -ForegroundColor Yellow
    Write-Host 'https://github.com/openai/codex#quickstart'
    Hold-And-Exit 2
  }
}

Write-Host ''
Write-Host 'Next: Codex will inspect your permitted environment and build Agent HQ.'
Write-Host 'It may require sign-in, dependency installation, permissions, and substantial compute/time.'
Write-Host 'No generated app or working integration is guaranteed until verified.'
Write-Host 'Read every Codex approval request before accepting it.' -ForegroundColor Yellow
Write-Host ''
$answer = Read-Host 'Launch Codex in the isolated workspace now? (Y/n)'
if ($answer -match '^[Nn]$') { Hold-And-Exit 0 }
$instruction = 'Implement Agent HQ in this workspace. Read AGENT_HQ_MASTER_PROMPT.md and BRANDING_ADDENDUM.md completely before starting. Follow AGENTS.md. Audit local capabilities, make a concise plan, implement and verify only what is authorized, explain blockers honestly, and launch the app if possible.'
Set-Location -LiteralPath $workspace
try {
  & $codex.Source $instruction
  $exitCode = $LASTEXITCODE
  if ($null -eq $exitCode) { $exitCode = 0 }
  Write-Host "Codex finished (exit code $exitCode). Generated files are in $workspace"
  Hold-And-Exit $exitCode
} catch {
  Write-Host "Unable to launch Codex: $_" -ForegroundColor Red
  Hold-And-Exit 1
}
