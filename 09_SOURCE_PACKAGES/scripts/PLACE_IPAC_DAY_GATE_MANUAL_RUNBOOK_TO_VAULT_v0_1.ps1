# =============================================================================
# PLACE IPaC DAY GATE MANUAL RUNBOOK TO VAULT
# (скрипт размещения ручного регламента дневного шлюза IPaC в хранилище)
# Status (статус): candidate (кандидат), not_canon (не канон)
# =============================================================================

param(
    [Parameter(Mandatory=$true)]
    [string]$VaultRoot,

    [switch]$DryRun,
    [switch]$StageGitAdd
)

$ErrorActionPreference = "Stop"
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path

$RunbookSource = Join-Path $ScriptDir "IPAC_DAY_GATE_MANUAL_RUNBOOK_candidate_v0_1.md"
$ResourceEntrySource = Join-Path $ScriptDir "IPAC_DAY_GATE_MANUAL_RUNBOOK_RESOURCE_ENTRY_2026-06-24_v0_1.md"
$RunScriptSource = Join-Path $ScriptDir "RUN_IPAC_DAY_GATE_MANUAL_CLOSE_OPEN_2026-06-24_v0_1.ps1"

$RunbookTargetDir = Join-Path $VaultRoot "11_COS_ARCHITECTURE_PROJECT_DECISIONS\04_PROCESS_DECISIONS"
$ResourceTargetDir = Join-Path $VaultRoot "09_SOURCE_PACKAGES\project_resource_entries"
$ScriptTargetDir = Join-Path $VaultRoot "09_SOURCE_PACKAGES\scripts"

$RunbookTarget = Join-Path $RunbookTargetDir "IPAC_DAY_GATE_MANUAL_RUNBOOK_candidate_v0_1.md"
$ResourceEntryTarget = Join-Path $ResourceTargetDir "IPAC_DAY_GATE_MANUAL_RUNBOOK_RESOURCE_ENTRY_2026-06-24_v0_1.md"
$RunScriptTarget = Join-Path $ScriptTargetDir "RUN_IPAC_DAY_GATE_MANUAL_CLOSE_OPEN_2026-06-24_v0_1.ps1"

$Required = @($RunbookSource, $ResourceEntrySource, $RunScriptSource)
foreach ($Path in $Required) {
    if (-not (Test-Path $Path)) {
        throw "Required package file not found (файл пакета не найден): $Path"
    }
}

Write-Host "PLACEMENT PLAN (план размещения):"
Write-Host "  $RunbookSource -> $RunbookTarget"
Write-Host "  $ResourceEntrySource -> $ResourceEntryTarget"
Write-Host "  $RunScriptSource -> $RunScriptTarget"

if ($DryRun) {
    Write-Host "DRY RUN (сухой прогон): no files copied (файлы не копировались)."
    exit 0
}

New-Item -ItemType Directory -Force $RunbookTargetDir | Out-Null
New-Item -ItemType Directory -Force $ResourceTargetDir | Out-Null
New-Item -ItemType Directory -Force $ScriptTargetDir | Out-Null

Copy-Item -Path $RunbookSource -Destination $RunbookTarget -Force
Copy-Item -Path $ResourceEntrySource -Destination $ResourceEntryTarget -Force
Copy-Item -Path $RunScriptSource -Destination $RunScriptTarget -Force

Write-Host ""
Write-Host "PLACEMENT_OK (размещение выполнено)"
Write-Host ""
Write-Host "SHA256 (контрольные суммы SHA256):"
Get-FileHash -Algorithm SHA256 $RunbookTarget, $ResourceEntryTarget, $RunScriptTarget | Format-Table -AutoSize

Write-Host ""
Write-Host "Git status (статус Git) for placed files:"
git -C $VaultRoot status --short -- `
  "11_COS_ARCHITECTURE_PROJECT_DECISIONS/04_PROCESS_DECISIONS/IPAC_DAY_GATE_MANUAL_RUNBOOK_candidate_v0_1.md" `
  "09_SOURCE_PACKAGES/project_resource_entries/IPAC_DAY_GATE_MANUAL_RUNBOOK_RESOURCE_ENTRY_2026-06-24_v0_1.md" `
  "09_SOURCE_PACKAGES/scripts/RUN_IPAC_DAY_GATE_MANUAL_CLOSE_OPEN_2026-06-24_v0_1.ps1"

if ($StageGitAdd) {
    Write-Host ""
    Write-Host "StageGitAdd requested (запрошено Git-добавление)."
    Write-Host "No Git commit (Git-проводка) will be performed."
    git -C $VaultRoot add `
      "11_COS_ARCHITECTURE_PROJECT_DECISIONS/04_PROCESS_DECISIONS/IPAC_DAY_GATE_MANUAL_RUNBOOK_candidate_v0_1.md" `
      "09_SOURCE_PACKAGES/project_resource_entries/IPAC_DAY_GATE_MANUAL_RUNBOOK_RESOURCE_ENTRY_2026-06-24_v0_1.md" `
      "09_SOURCE_PACKAGES/scripts/RUN_IPAC_DAY_GATE_MANUAL_CLOSE_OPEN_2026-06-24_v0_1.ps1"
    git -C $VaultRoot status --short
}

Write-Host ""
Write-Host "Git commit (Git-проводка) NOT performed. Human Approval (человеческое одобрение) required."
