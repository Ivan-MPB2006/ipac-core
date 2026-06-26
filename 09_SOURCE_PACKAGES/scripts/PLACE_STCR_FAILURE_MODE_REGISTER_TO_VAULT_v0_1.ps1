param(
    [Parameter(Mandatory = $true)]
    [string]$VaultRoot,
    [switch]$DryRun,
    [switch]$StageGitAdd
)

$ErrorActionPreference = "Stop"
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path

$processDir = Join-Path $VaultRoot "11_COS_ARCHITECTURE_PROJECT_DECISIONS\04_PROCESS_DECISIONS"
$reviewsDir = Join-Path $VaultRoot "08_TRACE_AND_DECISIONS\reviews"
$resourceDir = Join-Path $VaultRoot "09_SOURCE_PACKAGES\stcr_failure_mode_register"
$scriptsDir = Join-Path $VaultRoot "09_SOURCE_PACKAGES\scripts"

$copyMap = @(
    @{ src = "FAILURE_MODE_REGISTER_SEMANTIC_THREAD_COMPACTION_REHYDRATION_candidate_v0_1.md"; dst = Join-Path $processDir "FAILURE_MODE_REGISTER_SEMANTIC_THREAD_COMPACTION_REHYDRATION_candidate_v0_1.md" },
    @{ src = "APPENDIX_A_FAILURE_MODE_RESPONSE_PLAYBOOK_STCR_candidate_v0_1.md"; dst = Join-Path $processDir "APPENDIX_A_FAILURE_MODE_RESPONSE_PLAYBOOK_STCR_candidate_v0_1.md" },
    @{ src = "SEMANTIC_THREAD_COMPACTION_REHYDRATION_FAILURE_MODES_v0_1.mmd"; dst = Join-Path $processDir "SEMANTIC_THREAD_COMPACTION_REHYDRATION_FAILURE_MODES_v0_1.mmd" },
    @{ src = "QA_FAILURE_MODE_REGISTER_STCR_2026-06-24_v0_1.md"; dst = Join-Path $reviewsDir "QA_FAILURE_MODE_REGISTER_STCR_2026-06-24_v0_1.md" },
    @{ src = "README_FAILURE_MODE_REGISTER_STCR_PACKAGE_v0_1.md"; dst = Join-Path $resourceDir "README_FAILURE_MODE_REGISTER_STCR_PACKAGE_v0_1.md" },
    @{ src = "RESOURCE_ENTRY_FAILURE_MODE_REGISTER_STCR_2026-06-24_v0_1.md"; dst = Join-Path $resourceDir "RESOURCE_ENTRY_FAILURE_MODE_REGISTER_STCR_2026-06-24_v0_1.md" },
    @{ src = "ROUTING_MAP_FAILURE_MODE_REGISTER_STCR_2026-06-24_v0_1.md"; dst = Join-Path $resourceDir "ROUTING_MAP_FAILURE_MODE_REGISTER_STCR_2026-06-24_v0_1.md" },
    @{ src = "FAILURE_MODE_REGISTER_STCR_ALL_IN_ONE_2026-06-24_v0_1.md"; dst = Join-Path $resourceDir "FAILURE_MODE_REGISTER_STCR_ALL_IN_ONE_2026-06-24_v0_1.md" },
    @{ src = "MANIFEST_FAILURE_MODE_REGISTER_STCR_PACKAGE_2026-06-24_v0_1.md"; dst = Join-Path $resourceDir "MANIFEST_FAILURE_MODE_REGISTER_STCR_PACKAGE_2026-06-24_v0_1.md" },
    @{ src = "SHA256SUMS_STCR_FMR_v0_1.txt"; dst = Join-Path $resourceDir "SHA256SUMS_STCR_FMR_v0_1.txt" },
    @{ src = "PLACE_STCR_FAILURE_MODE_REGISTER_TO_VAULT_v0_1.ps1"; dst = Join-Path $scriptsDir "PLACE_STCR_FAILURE_MODE_REGISTER_TO_VAULT_v0_1.ps1" }
)

$dirs = @($processDir, $reviewsDir, $resourceDir, $scriptsDir)

foreach ($dir in $dirs) {
    if ($DryRun) { Write-Host "DRYRUN mkdir: $dir" }
    else { New-Item -ItemType Directory -Force $dir | Out-Null }
}

foreach ($item in $copyMap) {
    $srcPath = Join-Path $ScriptDir $item.src
    if (-not (Test-Path $srcPath)) { throw "Source file not found: $srcPath" }
    if ($DryRun) { Write-Host "DRYRUN copy: $srcPath -> $($item.dst)" }
    else {
        Copy-Item -Force $srcPath $item.dst
        Write-Host "COPIED: $srcPath -> $($item.dst)"
    }
}

$gitPaths = @(
    "11_COS_ARCHITECTURE_PROJECT_DECISIONS/04_PROCESS_DECISIONS/FAILURE_MODE_REGISTER_SEMANTIC_THREAD_COMPACTION_REHYDRATION_candidate_v0_1.md",
    "11_COS_ARCHITECTURE_PROJECT_DECISIONS/04_PROCESS_DECISIONS/APPENDIX_A_FAILURE_MODE_RESPONSE_PLAYBOOK_STCR_candidate_v0_1.md",
    "11_COS_ARCHITECTURE_PROJECT_DECISIONS/04_PROCESS_DECISIONS/SEMANTIC_THREAD_COMPACTION_REHYDRATION_FAILURE_MODES_v0_1.mmd",
    "08_TRACE_AND_DECISIONS/reviews/QA_FAILURE_MODE_REGISTER_STCR_2026-06-24_v0_1.md",
    "09_SOURCE_PACKAGES/stcr_failure_mode_register/",
    "09_SOURCE_PACKAGES/scripts/PLACE_STCR_FAILURE_MODE_REGISTER_TO_VAULT_v0_1.ps1"
)

if ($StageGitAdd) {
    git -C $VaultRoot add -- $gitPaths
    Write-Host "GIT ADD done for STCR Failure Mode Register files."
}

Write-Host ""
Write-Host "=== GIT STATUS (STCR Failure Mode Register files) ==="
git -C $VaultRoot status --short -- $gitPaths

Write-Host ""
Write-Host "Placement complete. Git commit NOT performed."
