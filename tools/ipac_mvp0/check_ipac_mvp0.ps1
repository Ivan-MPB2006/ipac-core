param(
    [string]$VaultRoot = (Get-Location).Path,
    [string]$PackDir = "",
    [string]$ContractPath = "",
    [string]$OutputDir = "",
    [switch]$NoGitStatus
)

$ErrorActionPreference = "Stop"
$checkerVersion = "v0.2"

if ([string]::IsNullOrWhiteSpace($PackDir)) { $PackDir = Join-Path $VaultRoot "08_TRACE_AND_DECISIONS\codex_review_pack" }
if ([string]::IsNullOrWhiteSpace($ContractPath)) { $ContractPath = Join-Path $PackDir "IPAC_MVP0_MACHINE_CONTRACT_v0_1.json" }
if ([string]::IsNullOrWhiteSpace($OutputDir)) { $OutputDir = Join-Path $PackDir "check_results" }

New-Item -ItemType Directory -Path $OutputDir -Force | Out-Null

$checks = @()
function Add-Check([string]$Name, [string]$Status, [string]$Detail) {
    $script:checks += [PSCustomObject]@{ name=$Name; status=$Status; detail=$Detail }
}

$contract = $null
$contractId = "unknown"

if (Test-Path $PackDir) { Add-Check "review_pack_dir" "PASS" $PackDir } else { Add-Check "review_pack_dir" "BLOCKED" "Missing: $PackDir" }

if (Test-Path $ContractPath) {
    Add-Check "machine_contract" "PASS" $ContractPath
    try {
        $contract = Get-Content $ContractPath -Encoding UTF8 -Raw | ConvertFrom-Json
        if ($contract.PSObject.Properties.Name -contains "artifact_id") { $contractId = [string]$contract.artifact_id }
    } catch {
        Add-Check "machine_contract_parse" "BLOCKED" $_.Exception.Message
    }
} else {
    Add-Check "machine_contract" "BLOCKED" "Missing: $ContractPath"
}

$requiredFiles = @()
if ($contract -and ($contract.PSObject.Properties.Name -contains "required_files")) {
    $requiredFiles = @($contract.required_files | ForEach-Object { [string]$_ })
}
if ($requiredFiles.Count -eq 0) {
    $requiredFiles = @(
        "CODEX_REVIEW_PACK_MANIFEST_v0_1.md",
        "IPAC_OS_MVP0_DEMONSTRATION_SCENARIO_v0_1.md",
        "CODEX_REVIEW_QUESTIONS_v0_1.md",
        "CODEX_BOUNDARY_CONDITIONS_v0_1.md",
        "VISIBLE_RESULT_INDEX_v0_1.md",
        "SYSTEM_INTERACTION_MAP_ASCII_v0_1.md",
        "CODEX_MCP_FEASIBILITY_MATRIX_v0_1.md",
        "CODEX_REVIEW_PROMPT_v0_1.txt"
    )
}

$markerMap = @{}
if ($contract -and ($contract.PSObject.Properties.Name -contains "required_markers")) {
    foreach ($prop in $contract.required_markers.PSObject.Properties) { $markerMap[$prop.Name] = [string]$prop.Value }
}
if (-not $markerMap.ContainsKey("status")) { $markerMap["status"] = "candidate" }
if (-not $markerMap.ContainsKey("canon_status")) { $markerMap["canon_status"] = "not_canon" }

foreach ($fileName in $requiredFiles) {
    $p = Join-Path $PackDir $fileName
    if (Test-Path $p) {
        Add-Check "review_pack_file::$fileName" "PASS" $p
        if ($fileName.EndsWith(".md")) {
            $content = Get-Content $p -Encoding UTF8 -Raw
            foreach ($key in $markerMap.Keys) {
                $value = [regex]::Escape($markerMap[$key])
                $pattern = "(?m)^\s*$([regex]::Escape($key))\s*:\s*$value\b"
                if ($content -match $pattern) {
                    Add-Check ("marker::" + $key + "::" + $fileName) "PASS" ($key + ": " + $markerMap[$key] + " present")
                } else {
                    Add-Check ("marker::" + $key + "::" + $fileName) "PAGE_FAULT" ($key + ": " + $markerMap[$key] + " missing")
                }
            }
        }
    } else {
        Add-Check "review_pack_file::$fileName" "PAGE_FAULT" "Missing: $p"
    }
}

$visibleFiles = @()
if ($contract -and ($contract.PSObject.Properties.Name -contains "visible_result_files")) {
    $visibleFiles = @($contract.visible_result_files | ForEach-Object { [string]$_ })
}
if ($visibleFiles.Count -eq 0) {
    $visibleFiles = @(
        "IPAC_SEMANTIC_OS_VISIBLE_RESULT_REVIEW_DRAFT_v0_1.pdf",
        "IPAC_SEMANTIC_OS_VISIBLE_RESULT_REVIEW_DRAFT_v0_1.md",
        "IPAC_SEMANTIC_OS_VISIBLE_RESULT_REVIEW_DRAFT_v0_1.docx"
    )
}

$visibleDir = Join-Path $PackDir "visible_result"
foreach ($fileName in $visibleFiles) {
    $p = Join-Path $visibleDir $fileName
    if (Test-Path $p) { Add-Check "visible_result::$fileName" "PASS" $p } else { Add-Check "visible_result::$fileName" "PAGE_FAULT" "Missing: $p" }
}

$gitStatusShort = ""
if (-not $NoGitStatus) {
    try {
        $gitOutput = git -C $VaultRoot status --short 2>&1
        $gitStatusShort = ($gitOutput | Out-String)
        if ($LASTEXITCODE -eq 0) { Add-Check "git_status_read" "PASS" "git status captured" } else { Add-Check "git_status_read" "BLOCKED" $gitStatusShort }
    } catch {
        Add-Check "git_status_read" "BLOCKED" $_.Exception.Message
    }
} else {
    Add-Check "git_status_read" "PASS" "Skipped by -NoGitStatus"
}

$passCount = @($checks | Where-Object { $_.status -eq "PASS" }).Count
$pageFaultCount = @($checks | Where-Object { $_.status -eq "PAGE_FAULT" }).Count
$blockedCount = @($checks | Where-Object { $_.status -eq "BLOCKED" }).Count

$status = "PASS"
if ($blockedCount -gt 0) { $status = "BLOCKED" } elseif ($pageFaultCount -gt 0) { $status = "PAGE_FAULT" }

$result = [PSCustomObject]@{
    artifact_id = "IPAC_MVP0_CHECK_RESULT"
    checker_version = $checkerVersion
    contract_artifact_id = $contractId
    date = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    vault_root = $VaultRoot
    pack_dir = $PackDir
    output_dir = $OutputDir
    status = $status
    pass_count = $passCount
    page_fault_count = $pageFaultCount
    blocked_count = $blockedCount
    checks = $checks
    page_faults = @($checks | Where-Object { $_.status -eq "PAGE_FAULT" })
    blocked = @($checks | Where-Object { $_.status -eq "BLOCKED" })
    git_status_short = $gitStatusShort
}

$jsonPath = Join-Path $OutputDir "IPAC_MVP0_CHECK_RESULT.json"
$mdPath = Join-Path $OutputDir "IPAC_MVP0_CHECK_RESULT.md"

$result | ConvertTo-Json -Depth 10 | Set-Content $jsonPath -Encoding UTF8

$md = @()
$md += "# IPAC_MVP0_CHECK_RESULT"
$md += ""
$md += "Generated: $($result.date)"
$md += "Status: $status"
$md += "checker_version: $checkerVersion"
$md += "contract_artifact_id: $contractId"
$md += "pass_count: $passCount"
$md += "page_fault_count: $pageFaultCount"
$md += "blocked_count: $blockedCount"
$md += ""
$md += "## Checks"
foreach ($c in $checks) { $md += "- $($c.status) — $($c.name): $($c.detail)" }
$md += ""
$md += "## Git status --short"
$md += '```text'
$md += $gitStatusShort
$md += '```'
$md | Set-Content $mdPath -Encoding UTF8

Write-Host "MVP-0 check complete: $status"
Write-Host $jsonPath
Write-Host $mdPath

if ($status -eq "PASS") { exit 0 }
if ($status -eq "PAGE_FAULT") { exit 2 }
exit 3

