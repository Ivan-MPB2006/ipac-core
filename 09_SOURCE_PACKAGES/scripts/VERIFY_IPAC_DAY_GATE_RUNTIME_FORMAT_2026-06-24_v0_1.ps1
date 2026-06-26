# =============================================================================
# IPaC DAY GATE RUNTIME FORMAT VERIFICATION SCRIPT v0.1
# (скрипт проверки формата runtime-файлов дневного шлюза)
# =============================================================================

param(
    [Parameter(Mandatory = $true)]
    [string]$VaultRoot,

    [string]$PrevDate = "2026-06-23",
    [string]$TodayDate = "2026-06-24"
)

$ErrorActionPreference = "Stop"
$LogPath = Join-Path $env:USERPROFILE "Downloads\IPAC_DAY_GATE_CORRECTION_VERIFY_LOG_2026-06-24_$(Get-Date -Format 'yyyyMMdd_HHmmss').txt"

function Add-Log([string]$Text) {
    $Text | Add-Content -Path $LogPath -Encoding UTF8
}

function Read-Utf8Text([string]$Path) {
    return [System.IO.File]::ReadAllText($Path, [System.Text.Encoding]::UTF8)
}

$RuntimeRelPaths = @(
    "08_TRACE_AND_DECISIONS/session_notes/DAY_CLOSEOUT_${PrevDate}_v0_1.md",
    "08_TRACE_AND_DECISIONS/session_notes/DAY_GATE_${TodayDate}_v0_1.md",
    "08_TRACE_AND_DECISIONS/session_notes/DAILY_REGISTER_${TodayDate}_v0_1.md"
)

$ProcessRelPaths = @(
    "11_COS_ARCHITECTURE_PROJECT_DECISIONS/04_PROCESS_DECISIONS/IPAC_DAY_GATE_MANUAL_RUNBOOK_candidate_v0_2.md",
    "11_COS_ARCHITECTURE_PROJECT_DECISIONS/04_PROCESS_DECISIONS/APPENDIX_A_PROCESS_RULE_DAY_GATE_CLOSE_OPEN_FIRST_candidate_v0_1.md",
    "11_COS_ARCHITECTURE_PROJECT_DECISIONS/04_PROCESS_DECISIONS/DAY_GATE_CLOSE_OPEN_PROCESS_DESCRIPTION_2026-06-24_v0_1.md",
    "11_COS_ARCHITECTURE_PROJECT_DECISIONS/04_PROCESS_DECISIONS/DAY_GATE_CLOSE_OPEN_PROCESS_v0_1.mmd"
)

"=== IPaC DAY GATE CORRECTION VERIFY LOG ===" | Out-File $LogPath -Encoding UTF8
Add-Log "Generated: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
Add-Log "VaultRoot: $VaultRoot"
Add-Log ""

Add-Log "=== 1. Runtime file existence and Markdown fences ==="
foreach ($rel in $RuntimeRelPaths) {
    $path = Join-Path $VaultRoot ($rel -replace '/', '\')
    Add-Log "--- $rel ---"
    Add-Log "Exists: $(Test-Path $path)"
    if (Test-Path $path) {
        $text = Read-Utf8Text $path
        $bad = ([regex]::Matches($text, '(?m)^``(yaml|text)$|^``$')).Count
        $good = ([regex]::Matches($text, '(?m)^```(yaml|text)?$')).Count
        Add-Log "Bad double-backtick fences: $bad"
        Add-Log "Good triple-backtick fences: $good"
        Add-Log "Contains candidate: $($text.Contains('candidate'))"
        Add-Log "Contains not_canon: $($text.Contains('not_canon'))"
    }
    Add-Log ""
}

Add-Log "=== 2. Process stack UTF-8 and mojibake markers ==="
foreach ($rel in $ProcessRelPaths) {
    $path = Join-Path $VaultRoot ($rel -replace '/', '\')
    Add-Log "--- $rel ---"
    Add-Log "Exists: $(Test-Path $path)"
    if (Test-Path $path) {
        $text = Read-Utf8Text $path
        $moji = ($text -match 'Р[А-Яа-яЁё]|С[А-Яа-яЁё]|вЂ')
        Add-Log "Mojibake markers detected by UTF8 read: $moji"
        Add-Log "First line: $(($text -split "`r?`n")[0])"
    }
    Add-Log ""
}

Add-Log "=== 3. Mermaid quick check ==="
$MermaidPath = Join-Path $VaultRoot "11_COS_ARCHITECTURE_PROJECT_DECISIONS\04_PROCESS_DECISIONS\DAY_GATE_CLOSE_OPEN_PROCESS_v0_1.mmd"
Add-Log "Mermaid exists: $(Test-Path $MermaidPath)"
if (Test-Path $MermaidPath) {
    $mmd = Read-Utf8Text $MermaidPath
    Add-Log "Contains flowchart TD: $($mmd.Contains('flowchart TD'))"
    Add-Log "Contains Status Guard: $($mmd.Contains('Status Guard'))"
    Add-Log "Contains Git action approved: $($mmd.Contains('Git action approved'))"
}

Add-Log ""
Add-Log "=== 4. Git status target files ==="
$GitPaths = $RuntimeRelPaths + $ProcessRelPaths
$GitArgs = @("-C", $VaultRoot, "status", "--short", "--") + $GitPaths
(& git @GitArgs) | Add-Content -Path $LogPath -Encoding UTF8

Add-Log ""
Add-Log "=== END VERIFY LOG ==="

Write-Host "VERIFY LOG CREATED:"
Write-Host $LogPath
