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
$resourceDir = Join-Path $VaultRoot "09_SOURCE_PACKAGES\stcr_context_paging_policy"
$scriptsDir = Join-Path $VaultRoot "09_SOURCE_PACKAGES\scripts"

$copyMap = @(
    @{ src = "CONTEXT_PAGING_POLICY_STCR_candidate_v0_1.md"; dst = Join-Path $processDir "CONTEXT_PAGING_POLICY_STCR_candidate_v0_1.md" },
    @{ src = "APPENDIX_A_CONTEXT_PAGE_SELECTION_STCR_candidate_v0_1.md"; dst = Join-Path $processDir "APPENDIX_A_CONTEXT_PAGE_SELECTION_STCR_candidate_v0_1.md" },
    @{ src = "STCR_CONTEXT_PAGING_POLICY_v0_1.mmd"; dst = Join-Path $processDir "STCR_CONTEXT_PAGING_POLICY_v0_1.mmd" },
    @{ src = "QA_CONTEXT_PAGING_POLICY_STCR_2026-06-24_v0_1.md"; dst = Join-Path $reviewsDir "QA_CONTEXT_PAGING_POLICY_STCR_2026-06-24_v0_1.md" },
    @{ src = "README_CONTEXT_PAGING_POLICY_STCR_PACKAGE_v0_1.md"; dst = Join-Path $resourceDir "README_CONTEXT_PAGING_POLICY_STCR_PACKAGE_v0_1.md" },
    @{ src = "RESOURCE_ENTRY_CONTEXT_PAGING_POLICY_STCR_2026-06-24_v0_1.md"; dst = Join-Path $resourceDir "RESOURCE_ENTRY_CONTEXT_PAGING_POLICY_STCR_2026-06-24_v0_1.md" },
    @{ src = "ROUTING_MAP_CONTEXT_PAGING_POLICY_STCR_2026-06-24_v0_1.md"; dst = Join-Path $resourceDir "ROUTING_MAP_CONTEXT_PAGING_POLICY_STCR_2026-06-24_v0_1.md" },
    @{ src = "CONTEXT_PAGING_POLICY_STCR_ALL_IN_ONE_2026-06-24_v0_1.md"; dst = Join-Path $resourceDir "CONTEXT_PAGING_POLICY_STCR_ALL_IN_ONE_2026-06-24_v0_1.md" },
    @{ src = "MANIFEST_CONTEXT_PAGING_POLICY_STCR_PACKAGE_2026-06-24_v0_1.md"; dst = Join-Path $resourceDir "MANIFEST_CONTEXT_PAGING_POLICY_STCR_PACKAGE_2026-06-24_v0_1.md" },
    @{ src = "SHA256SUMS_STCR_CPP_v0_1.txt"; dst = Join-Path $resourceDir "SHA256SUMS_STCR_CPP_v0_1.txt" },
    @{ src = "PLACE_STCR_CONTEXT_PAGING_POLICY_TO_VAULT_v0_1.ps1"; dst = Join-Path $scriptsDir "PLACE_STCR_CONTEXT_PAGING_POLICY_TO_VAULT_v0_1.ps1" }
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
    "11_COS_ARCHITECTURE_PROJECT_DECISIONS/04_PROCESS_DECISIONS/CONTEXT_PAGING_POLICY_STCR_candidate_v0_1.md",
    "11_COS_ARCHITECTURE_PROJECT_DECISIONS/04_PROCESS_DECISIONS/APPENDIX_A_CONTEXT_PAGE_SELECTION_STCR_candidate_v0_1.md",
    "11_COS_ARCHITECTURE_PROJECT_DECISIONS/04_PROCESS_DECISIONS/STCR_CONTEXT_PAGING_POLICY_v0_1.mmd",
    "08_TRACE_AND_DECISIONS/reviews/QA_CONTEXT_PAGING_POLICY_STCR_2026-06-24_v0_1.md",
    "09_SOURCE_PACKAGES/stcr_context_paging_policy/",
    "09_SOURCE_PACKAGES/scripts/PLACE_STCR_CONTEXT_PAGING_POLICY_TO_VAULT_v0_1.ps1"
)

if ($StageGitAdd) {
    git -C $VaultRoot add -- $gitPaths
    Write-Host "GIT ADD done for STCR Context Paging Policy files."
}

Write-Host ""
Write-Host "=== GIT STATUS (STCR Context Paging Policy files) ==="
git -C $VaultRoot status --short -- $gitPaths

Write-Host ""
Write-Host "Placement complete. Git commit NOT performed."
