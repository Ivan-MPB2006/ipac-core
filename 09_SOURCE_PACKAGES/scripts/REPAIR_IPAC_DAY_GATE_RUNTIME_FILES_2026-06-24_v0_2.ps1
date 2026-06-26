# =============================================================================
# IPaC DAY GATE RUNTIME FILES REPAIR SCRIPT v0.2
# (исправительный скрипт файлов исполнения дневного шлюза)
# Status (статус): candidate (кандидат), not_canon (не канон)
# Purpose (назначение): fix Markdown fences (Markdown-ограждения кода)
# and normalize Day Gate text files to UTF-8 with BOM for Windows PowerShell logs.
# =============================================================================

param(
    [Parameter(Mandatory = $true)]
    [string]$VaultRoot,

    [string]$PrevDate = "2026-06-23",
    [string]$TodayDate = "2026-06-24",

    [switch]$DryRun,
    [switch]$NoBackup
)

$ErrorActionPreference = "Stop"

$Utf8Bom = New-Object System.Text.UTF8Encoding($true)
$Timestamp = Get-Date -Format "yyyyMMdd_HHmmss"

function Get-VaultPath {
    param([string]$RelativePath)
    return Join-Path $VaultRoot ($RelativePath -replace '/', '\')
}

function Read-Utf8Text {
    param([string]$Path)
    return [System.IO.File]::ReadAllText($Path, [System.Text.Encoding]::UTF8)
}

function Write-Utf8BomText {
    param([string]$Path, [string]$Text)
    [System.IO.File]::WriteAllText($Path, $Text, $Utf8Bom)
}

$RuntimeRelPaths = @(
    "08_TRACE_AND_DECISIONS/session_notes/DAY_CLOSEOUT_${PrevDate}_v0_1.md",
    "08_TRACE_AND_DECISIONS/session_notes/DAY_GATE_${TodayDate}_v0_1.md",
    "08_TRACE_AND_DECISIONS/session_notes/DAILY_REGISTER_${TodayDate}_v0_1.md"
)

$ProcessStackRelPaths = @(
    "11_COS_ARCHITECTURE_PROJECT_DECISIONS/04_PROCESS_DECISIONS/IPAC_DAY_GATE_MANUAL_RUNBOOK_candidate_v0_2.md",
    "11_COS_ARCHITECTURE_PROJECT_DECISIONS/04_PROCESS_DECISIONS/APPENDIX_A_PROCESS_RULE_DAY_GATE_CLOSE_OPEN_FIRST_candidate_v0_1.md",
    "11_COS_ARCHITECTURE_PROJECT_DECISIONS/04_PROCESS_DECISIONS/DAY_GATE_CLOSE_OPEN_PROCESS_DESCRIPTION_2026-06-24_v0_1.md",
    "11_COS_ARCHITECTURE_PROJECT_DECISIONS/04_PROCESS_DECISIONS/DAY_GATE_CLOSE_OPEN_PROCESS_v0_1.mmd",
    "08_TRACE_AND_DECISIONS/reviews/QA_DAY_GATE_PROCESS_APPENDIX_CHECK_2026-06-24_v0_1.md",
    "09_SOURCE_PACKAGES/project_resource_entries/IPAC_DAY_GATE_PROCESS_APPENDIX_RESOURCE_ENTRY_2026-06-24_v0_1.md"
)

Write-Host "=== IPaC DAY GATE CORRECTION PASS v0.2 ==="
Write-Host "VaultRoot: $VaultRoot"
Write-Host "DryRun:    $DryRun"
Write-Host "NoBackup:  $NoBackup"
Write-Host ""

Write-Host "=== 1. Repair runtime Markdown fences (исправление Markdown-ограждений) ==="
foreach ($rel in $RuntimeRelPaths) {
    $path = Get-VaultPath $rel
    if (-not (Test-Path $path)) {
        Write-Host "MISS: $rel"
        continue
    }

    $text = Read-Utf8Text $path

    # PowerShell v0.1 generated double backticks in Markdown fences.
    # Fix exactly these broken fence lines:
    #   ``yaml  -> ```yaml
    #   ``text  -> ```text
    #   ``      -> ```
    $fixed = $text -replace '(?m)^``(yaml|text)$', '```$1'
    $fixed = $fixed -replace '(?m)^``$', '```'

    $changed = ($fixed -ne $text)
    if ($changed) {
        Write-Host "FIX:  $rel"
    } else {
        Write-Host "OK:   $rel"
    }

    if (-not $DryRun) {
        if ($changed -and -not $NoBackup) {
            Copy-Item -Force $path "$path.bak_$Timestamp"
        }
        Write-Utf8BomText $path $fixed
    }
}

Write-Host ""
Write-Host "=== 2. Normalize process stack files to UTF-8 BOM (нормализация кодировки) ==="
foreach ($rel in $ProcessStackRelPaths) {
    $path = Get-VaultPath $rel
    if (-not (Test-Path $path)) {
        Write-Host "MISS: $rel"
        continue
    }

    $text = Read-Utf8Text $path
    Write-Host "NORMALIZE: $rel"

    if (-not $DryRun) {
        if (-not $NoBackup) {
            Copy-Item -Force $path "$path.bak_$Timestamp"
        }
        Write-Utf8BomText $path $text
    }
}

Write-Host ""
Write-Host "=== 3. Post-check Git status (статус Git после исправления) ==="
$AllRelPaths = $RuntimeRelPaths + $ProcessStackRelPaths
$GitArgs = @("-C", $VaultRoot, "status", "--short", "--") + $AllRelPaths
& git @GitArgs

Write-Host ""
Write-Host "CORRECTION PASS COMPLETE"
Write-Host "Git commit (Git-проводка) NOT performed."
