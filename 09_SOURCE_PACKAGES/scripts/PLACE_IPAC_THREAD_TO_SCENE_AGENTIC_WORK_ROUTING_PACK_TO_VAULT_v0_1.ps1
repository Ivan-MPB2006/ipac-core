param(
    [Parameter(Mandatory = $true)]
    [string]$VaultRoot,
    [switch]$DryRun,
    [switch]$StageGitAdd
)

$ErrorActionPreference = "Stop"
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path

$processDir = Join-Path $VaultRoot "11_COS_ARCHITECTURE_PROJECT_DECISIONS\04_PROCESS_DECISIONS"
$noticesDir = Join-Path $VaultRoot "08_TRACE_AND_DECISIONS\project_notices"
$rulesDir = Join-Path $VaultRoot "06_PROJECT_RULES"
$templateDir = Join-Path $VaultRoot "90_TEMPLATES\ipac_scene_agentic_work"
$reviewsDir = Join-Path $VaultRoot "08_TRACE_AND_DECISIONS\reviews"
$resourceDir = Join-Path $VaultRoot "09_SOURCE_PACKAGES\thread_to_scene_agentic_work"
$scriptsDir = Join-Path $VaultRoot "09_SOURCE_PACKAGES\scripts"

$copyMap = @(
    @{ src = "STRATEGIC_REFRAME_THREAD_TO_SCENE_AGENTIC_WORK_candidate_v0_1.md"; dst = Join-Path $processDir "STRATEGIC_REFRAME_THREAD_TO_SCENE_AGENTIC_WORK_candidate_v0_1.md" },
    @{ src = "STRATEGIC_REFRAME_THREAD_TO_SCENE_AGENTIC_WORK_candidate_v0_1.md"; dst = Join-Path $noticesDir "STRATEGIC_REFRAME_THREAD_TO_SCENE_AGENTIC_WORK_candidate_v0_1.md" },
    @{ src = "THREAD_TO_SCENE_TRANSITION_POLICY_candidate_v0_1.md"; dst = Join-Path $processDir "THREAD_TO_SCENE_TRANSITION_POLICY_candidate_v0_1.md" },
    @{ src = "DIALOGUE_BRANCH_PARKING_RULE_candidate_v0_1.md"; dst = Join-Path $rulesDir "DIALOGUE_BRANCH_PARKING_RULE_candidate_v0_1.md" },
    @{ src = "SCENE_OBJECT_TEMPLATE_candidate_v0_1.md"; dst = Join-Path $templateDir "SCENE_OBJECT_TEMPLATE_candidate_v0_1.md" },
    @{ src = "CONTEXT_PAGE_TEMPLATE_candidate_v0_1.md"; dst = Join-Path $templateDir "CONTEXT_PAGE_TEMPLATE_candidate_v0_1.md" },
    @{ src = "AGENT_TASK_PACK_TEMPLATE_candidate_v0_1.md"; dst = Join-Path $templateDir "AGENT_TASK_PACK_TEMPLATE_candidate_v0_1.md" },
    @{ src = "QA_THREAD_TO_SCENE_AGENTIC_WORK_ROUTING_PACK_2026-06-24_v0_1.md"; dst = Join-Path $reviewsDir "QA_THREAD_TO_SCENE_AGENTIC_WORK_ROUTING_PACK_2026-06-24_v0_1.md" },
    @{ src = "README_IPAC_THREAD_TO_SCENE_AGENTIC_WORK_ROUTING_PACK_v0_1.md"; dst = Join-Path $resourceDir "README_IPAC_THREAD_TO_SCENE_AGENTIC_WORK_ROUTING_PACK_v0_1.md" },
    @{ src = "ROUTING_MAP_THREAD_TO_SCENE_AGENTIC_WORK_2026-06-24_v0_1.md"; dst = Join-Path $resourceDir "ROUTING_MAP_THREAD_TO_SCENE_AGENTIC_WORK_2026-06-24_v0_1.md" },
    @{ src = "IPAC_THREAD_TO_SCENE_AGENTIC_WORK_RESOURCE_ENTRY_2026-06-24_v0_1.md"; dst = Join-Path $resourceDir "IPAC_THREAD_TO_SCENE_AGENTIC_WORK_RESOURCE_ENTRY_2026-06-24_v0_1.md" },
    @{ src = "IPAC_THREAD_TO_SCENE_AGENTIC_WORK_ALL_IN_ONE_RESOURCE_2026-06-24_v0_1.md"; dst = Join-Path $resourceDir "IPAC_THREAD_TO_SCENE_AGENTIC_WORK_ALL_IN_ONE_RESOURCE_2026-06-24_v0_1.md" },
    @{ src = "MANIFEST_IPAC_THREAD_TO_SCENE_AGENTIC_WORK_ROUTING_PACK_2026-06-24_v0_1.md"; dst = Join-Path $resourceDir "MANIFEST_IPAC_THREAD_TO_SCENE_AGENTIC_WORK_ROUTING_PACK_2026-06-24_v0_1.md" },
    @{ src = "SHA256SUMS_IPAC_THREAD_TO_SCENE_AGENTIC_WORK_ROUTING_PACK_2026-06-24_v0_1.txt"; dst = Join-Path $resourceDir "SHA256SUMS_IPAC_THREAD_TO_SCENE_AGENTIC_WORK_ROUTING_PACK_2026-06-24_v0_1.txt" },
    @{ src = "PLACE_IPAC_THREAD_TO_SCENE_AGENTIC_WORK_ROUTING_PACK_TO_VAULT_v0_1.ps1"; dst = Join-Path $scriptsDir "PLACE_IPAC_THREAD_TO_SCENE_AGENTIC_WORK_ROUTING_PACK_TO_VAULT_v0_1.ps1" }
)

$dirs = @($processDir, $noticesDir, $rulesDir, $templateDir, $reviewsDir, $resourceDir, $scriptsDir)

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
    "11_COS_ARCHITECTURE_PROJECT_DECISIONS/04_PROCESS_DECISIONS/STRATEGIC_REFRAME_THREAD_TO_SCENE_AGENTIC_WORK_candidate_v0_1.md",
    "11_COS_ARCHITECTURE_PROJECT_DECISIONS/04_PROCESS_DECISIONS/THREAD_TO_SCENE_TRANSITION_POLICY_candidate_v0_1.md",
    "08_TRACE_AND_DECISIONS/project_notices/STRATEGIC_REFRAME_THREAD_TO_SCENE_AGENTIC_WORK_candidate_v0_1.md",
    "06_PROJECT_RULES/DIALOGUE_BRANCH_PARKING_RULE_candidate_v0_1.md",
    "90_TEMPLATES/ipac_scene_agentic_work/",
    "08_TRACE_AND_DECISIONS/reviews/QA_THREAD_TO_SCENE_AGENTIC_WORK_ROUTING_PACK_2026-06-24_v0_1.md",
    "09_SOURCE_PACKAGES/thread_to_scene_agentic_work/",
    "09_SOURCE_PACKAGES/scripts/PLACE_IPAC_THREAD_TO_SCENE_AGENTIC_WORK_ROUTING_PACK_TO_VAULT_v0_1.ps1"
)

if ($StageGitAdd) {
    git -C $VaultRoot add -- $gitPaths
    Write-Host "GIT ADD done for routing pack files."
}

Write-Host ""
Write-Host "=== GIT STATUS (routing pack files) ==="
git -C $VaultRoot status --short -- $gitPaths

Write-Host ""
Write-Host "Placement complete. Git commit NOT performed."
