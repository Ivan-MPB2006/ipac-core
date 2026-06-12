# Prepare_DR001_DeepResearch_InputPack_v3.ps1
# Run from the root of the IPaC Obsidian Vault.
# Robust version: copies files into flat upload folders to avoid nested-path copy issues.

$ErrorActionPreference = "Stop"

Write-Host ""
Write-Host "=== IPaC DR-001 Deep Research Input Pack Builder v3 ===" -ForegroundColor Cyan
Write-Host ""

$VaultRoot = (Get-Location).Path
Write-Host "Vault root:" -ForegroundColor Yellow
Write-Host "  $VaultRoot"
Write-Host ""

$ExpectedDirs = @(
    "00_START_HERE",
    "01_CANON",
    "03_RESEARCH_MAP",
    "06_PROJECT_RULES",
    "08_TRACE_AND_DECISIONS",
    "99_ATTACHMENTS_AND_EXPORTS"
)

$SanityProblems = @()
foreach ($dir in $ExpectedDirs) {
    $p = Join-Path $VaultRoot $dir
    if (-not (Test-Path $p)) {
        $SanityProblems += $dir
    }
}

if ($SanityProblems.Count -gt 0) {
    Write-Host "WARNING: This folder does not look like the expected IPaC Obsidian Vault root." -ForegroundColor Red
    Write-Host "Missing directories:" -ForegroundColor Red
    foreach ($x in $SanityProblems) { Write-Host "  - $x" -ForegroundColor Red }
    Write-Host ""
    $answer = Read-Host "Continue anyway? Type YES to continue"
    if ($answer -ne "YES") {
        Write-Host "Stopped." -ForegroundColor Red
        exit 1
    }
}

$Timestamp = Get-Date -Format "yyyyMMdd_HHmmss"
$ExportRoot = Join-Path $VaultRoot "99_ATTACHMENTS_AND_EXPORTS"
if (-not (Test-Path $ExportRoot)) {
    New-Item -ItemType Directory -Path $ExportRoot | Out-Null
}

$PackName = "DR-001_DEEP_RESEARCH_INPUT_PACK_$Timestamp"
$OutDir = Join-Path $ExportRoot $PackName
$ContextDir = Join-Path $OutDir "01_CONTEXT_FILES_ATTACH_THESE"
$PromptDir = Join-Path $OutDir "02_PROMPT_TO_PASTE"
$ManifestDir = Join-Path $OutDir "00_MANIFEST"

New-Item -ItemType Directory -Path $OutDir -Force | Out-Null
New-Item -ItemType Directory -Path $ContextDir -Force | Out-Null
New-Item -ItemType Directory -Path $PromptDir -Force | Out-Null
New-Item -ItemType Directory -Path $ManifestDir -Force | Out-Null

$RequiredFiles = @(
    @{ Role = "Core canon / Constitution"; Path = "01_CANON/00_CORE_CANON/00_IPaC_CONSTITUTION_v0_1.md"; Target = "REQ_01_00_IPaC_CONSTITUTION_v0_1.md" },
    @{ Role = "Lifecycle map"; Path = "01_CANON/00_CORE_CANON/01_LIFECYCLE_MAP_LIVING_MEANING_TO_UPDATED_CANON_v0_1.md"; Target = "REQ_02_01_LIFECYCLE_MAP_LIVING_MEANING_TO_UPDATED_CANON_v0_1.md" },
    @{ Role = "Research backlog"; Path = "03_RESEARCH_MAP/WAVE4_RESEARCH_BACKLOG_PLACEHOLDERS_v0_1.md"; Target = "REQ_03_WAVE4_RESEARCH_BACKLOG_PLACEHOLDERS_v0_1.md" },
    @{ Role = "Critical questions register"; Path = "03_RESEARCH_MAP/IPAC_CRITICAL_QUESTIONS_REGISTER_v0_1.md"; Target = "REQ_04_IPAC_CRITICAL_QUESTIONS_REGISTER_v0_1.md" }
)

$OptionalFiles = @(
    @{ Role = "Safe project rules"; Path = "06_PROJECT_RULES/WAVE4_SAFE_PROJECT_RULES_v0_1.md"; Target = "OPT_01_WAVE4_SAFE_PROJECT_RULES_v0_1.md" },
    @{ Role = "Multi-layer knowledge representation rule"; Path = "06_PROJECT_RULES/MULTI_LAYER_KNOWLEDGE_REPRESENTATION_v0_1.md"; Target = "OPT_02_MULTI_LAYER_KNOWLEDGE_REPRESENTATION_v0_1.md" },
    @{ Role = "Wave 4 closure decision"; Path = "08_TRACE_AND_DECISIONS/decisions/DECISION_WAVE4_SELECTIVE_IMPORT_CLOSURE_v0_1.md"; Target = "OPT_03_DECISION_WAVE4_SELECTIVE_IMPORT_CLOSURE_v0_1.md" },
    @{ Role = "DR-001 research design"; Path = "03_RESEARCH_MAP/deep_research_design/DR-001_Research_Design_IPaC_vs_Knowledge_Engineering_v0_1.md"; Target = "OPT_04_DR-001_Research_Design_IPaC_vs_Knowledge_Engineering_v0_1.md" },
    @{ Role = "DR-001 design status"; Path = "08_TRACE_AND_DECISIONS/reviews/DR-001_DESIGN_STATUS_v0_1.md"; Target = "OPT_05_DR-001_DESIGN_STATUS_v0_1.md" }
)

$PromptSource = "03_RESEARCH_MAP/deep_research_prompts/DR-001_FINAL_DEEP_RESEARCH_PROMPT_v0_1.md"
$PromptTargetName = "DR-001_PROMPT_TO_PASTE.md"

$Copied = @()
$MissingRequired = @()
$MissingOptional = @()

function Copy-IpacFlatFile {
    param(
        [Parameter(Mandatory=$true)][string]$RelativePath,
        [Parameter(Mandatory=$true)][string]$Role,
        [Parameter(Mandatory=$true)][string]$TargetName,
        [Parameter(Mandatory=$true)][string]$TargetDir,
        [Parameter(Mandatory=$true)][bool]$Required
    )

    $src = Join-Path $VaultRoot $RelativePath
    $dest = Join-Path $TargetDir $TargetName

    if (Test-Path $src) {
        Copy-Item -LiteralPath $src -Destination $dest -Force

        $script:Copied += [PSCustomObject]@{
            Role = $Role
            Required = $Required
            Source = $RelativePath
            CopiedAs = $TargetName
        }

        Write-Host "COPIED:" -ForegroundColor Green -NoNewline
        Write-Host " $RelativePath -> $TargetName"
    }
    else {
        $missing = [PSCustomObject]@{
            Role = $Role
            Required = $Required
            MissingPath = $RelativePath
        }

        if ($Required) {
            $script:MissingRequired += $missing
            Write-Host "MISSING REQUIRED:" -ForegroundColor Red -NoNewline
            Write-Host " $RelativePath"
        }
        else {
            $script:MissingOptional += $missing
            Write-Host "Missing optional:" -ForegroundColor Yellow -NoNewline
            Write-Host " $RelativePath"
        }
    }
}

Write-Host "Copying required context files..." -ForegroundColor Cyan
foreach ($item in $RequiredFiles) {
    Copy-IpacFlatFile -RelativePath $item.Path -Role $item.Role -TargetName $item.Target -TargetDir $ContextDir -Required $true
}

Write-Host ""
Write-Host "Copying optional discipline/design files..." -ForegroundColor Cyan
foreach ($item in $OptionalFiles) {
    Copy-IpacFlatFile -RelativePath $item.Path -Role $item.Role -TargetName $item.Target -TargetDir $ContextDir -Required $false
}

Write-Host ""
Write-Host "Preparing prompt..." -ForegroundColor Cyan

$promptFullPath = Join-Path $VaultRoot $PromptSource
$PromptTarget = Join-Path $PromptDir $PromptTargetName

if (Test-Path $promptFullPath) {
    Copy-Item -LiteralPath $promptFullPath -Destination $PromptTarget -Force
    Write-Host "COPIED PROMPT:" -ForegroundColor Green -NoNewline
    Write-Host " $PromptSource -> $PromptTargetName"
}
else {
    Write-Host "MISSING PROMPT FILE:" -ForegroundColor Yellow -NoNewline
    Write-Host " $PromptSource"
    Write-Host "Creating fallback prompt." -ForegroundColor Yellow

    $fallbackPromptLines = @(
        "# DR-001 — IPaC vs Knowledge Engineering",
        "",
        "Run a critical Deep Research investigation.",
        "",
        "Use the attached IPaC files as project context, but do not treat them as validated truth.",
        "",
        "Goal:",
        "Critically compare IPaC with Knowledge Engineering. Determine where IPaC overlaps with Knowledge Engineering, where it extends it, where it risks renaming existing practices, and what claims should be weakened or strengthened.",
        "",
        "This is not a confirmation task. It is a critical boundary investigation.",
        "",
        "Required output:",
        "DR-001 — IPaC vs Knowledge Engineering Report v0.1",
        "",
        "Include:",
        "1. What Knowledge Engineering means historically and today.",
        "2. Core concepts and practices of Knowledge Engineering.",
        "3. Relationship to expert systems, knowledge acquisition, knowledge representation, ontology engineering, knowledge management, and decision support.",
        "4. Overlap between IPaC and Knowledge Engineering.",
        "5. Differences between IPaC and Knowledge Engineering.",
        "6. What IPaC must not claim.",
        "7. What IPaC may legitimately claim.",
        "8. Boundary map table.",
        "9. Source limitations table.",
        "10. Claims to weaken.",
        "11. Claims to strengthen.",
        "12. New research gaps.",
        "13. Questions requiring field validation.",
        "14. Suggested canon impact, but do not update canon.",
        "15. Final verdict.",
        "",
        "Final verdict must be one of:",
        "- IPAC_IS_RENAMED_KNOWLEDGE_ENGINEERING",
        "- IPAC_IS_EXTENSION_OF_KNOWLEDGE_ENGINEERING",
        "- IPAC_IS_APPLICATION_LAYER_OVER_KNOWLEDGE_ENGINEERING",
        "- IPAC_IS_OPERATING_LAYER_FOR_LIVING_KNOWLEDGE_WITH_KE_OVERLAP",
        "- INSUFFICIENT_EVIDENCE",
        "",
        "Critical rules:",
        "- Do not try to prove IPaC right.",
        "- Do not treat research support as field validation.",
        "- Do not update canon.",
        "- Separate evidence, analogy, inspiration, and speculation.",
        "- Cite sources.",
        "- Explicitly state source limitations."
    )

    Set-Content -Path $PromptTarget -Value $fallbackPromptLines -Encoding UTF8
}

$InstructionFile = Join-Path $OutDir "READ_ME_FOR_DEEP_RESEARCH_UPLOAD.md"
$instructionLines = @(
    "# DR-001 Deep Research Upload Instructions",
    "",
    "## 1. Paste into Deep Research",
    "",
    "Open and paste the full text of:",
    "",
    "02_PROMPT_TO_PASTE/DR-001_PROMPT_TO_PASTE.md",
    "",
    "The prompt is the active command.",
    "",
    "## 2. Attach to Deep Research",
    "",
    "Attach the .md files from:",
    "",
    "01_CONTEXT_FILES_ATTACH_THESE/",
    "",
    "The files are flattened and prefixed as REQ_ or OPT_.",
    "Attach all REQ_ files. OPT_ files are useful but optional.",
    "",
    "## 3. Do not attach",
    "",
    "Do not attach old chats, full Vault, full Wave 4 ZIP, Codex/MCP materials, MVI materials, public channel materials, or speculative metaphor archives.",
    "",
    "## 4. Expected output",
    "",
    "Save the final report later as:",
    "",
    "03_RESEARCH_MAP/deep_research/DR-001_IPaC_vs_Knowledge_Engineering_REPORT_v0_1.md",
    "",
    "## 5. After Deep Research",
    "",
    "Do not update canon directly.",
    "Next steps: save report, commit, create Research Review, create Decision Record, then discuss possible canon update."
)

Set-Content -Path $InstructionFile -Value $instructionLines -Encoding UTF8

$ManifestPath = Join-Path $ManifestDir "DR-001_INPUT_PACK_MANIFEST.md"
$manifestLines = New-Object System.Collections.Generic.List[string]

$manifestLines.Add("# DR-001 Deep Research Input Pack Manifest")
$manifestLines.Add("")
$manifestLines.Add("Generated: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')")
$manifestLines.Add("Vault root: $VaultRoot")
$manifestLines.Add("Pack folder: $OutDir")
$manifestLines.Add("")
$manifestLines.Add("## Copied files")
$manifestLines.Add("")

if ($Copied.Count -eq 0) {
    $manifestLines.Add("No files copied.")
}
else {
    foreach ($x in $Copied) {
        if ($x.Required) { $req = "required" } else { $req = "optional" }
        $manifestLines.Add("- [$req] $($x.Source) -> $($x.CopiedAs) — $($x.Role)")
    }
}

$manifestLines.Add("")
$manifestLines.Add("## Prompt")
$manifestLines.Add("")
$manifestLines.Add("- 02_PROMPT_TO_PASTE/DR-001_PROMPT_TO_PASTE.md")
$manifestLines.Add("")
$manifestLines.Add("## Missing required files")
$manifestLines.Add("")

if ($MissingRequired.Count -eq 0) {
    $manifestLines.Add("None.")
}
else {
    foreach ($x in $MissingRequired) {
        $manifestLines.Add("- $($x.MissingPath) — $($x.Role)")
    }
}

$manifestLines.Add("")
$manifestLines.Add("## Missing optional files")
$manifestLines.Add("")

if ($MissingOptional.Count -eq 0) {
    $manifestLines.Add("None.")
}
else {
    foreach ($x in $MissingOptional) {
        $manifestLines.Add("- $($x.MissingPath) — $($x.Role)")
    }
}

$manifestLines.Add("")
$manifestLines.Add("## Status")
$manifestLines.Add("")

if ($MissingRequired.Count -eq 0) {
    $manifestLines.Add("DR001_INPUT_PACK_READY")
}
else {
    $manifestLines.Add("DR001_INPUT_PACK_PARTIAL_REQUIRED_FILES_MISSING")
}

Set-Content -Path $ManifestPath -Value $manifestLines -Encoding UTF8

$ZipPath = Join-Path $ExportRoot "$PackName.zip"
if (Test-Path $ZipPath) {
    Remove-Item $ZipPath -Force
}

Compress-Archive -Path (Join-Path $OutDir "*") -DestinationPath $ZipPath -Force

Write-Host ""
Write-Host "=== RESULT ===" -ForegroundColor Cyan
Write-Host "Pack folder:" -ForegroundColor Yellow
Write-Host "  $OutDir"
Write-Host ""
Write-Host "ZIP pack:" -ForegroundColor Yellow
Write-Host "  $ZipPath"
Write-Host ""

if ($MissingRequired.Count -eq 0) {
    Write-Host "STATUS: DR001_INPUT_PACK_READY" -ForegroundColor Green
}
else {
    Write-Host "STATUS: DR001_INPUT_PACK_PARTIAL_REQUIRED_FILES_MISSING" -ForegroundColor Red
    Write-Host "Missing required files:" -ForegroundColor Red
    foreach ($x in $MissingRequired) {
        Write-Host "  - $($x.MissingPath)" -ForegroundColor Red
    }
}

Write-Host ""
Write-Host "NEXT:" -ForegroundColor Cyan
Write-Host "1. Open: $PromptTarget"
Write-Host "2. Paste its content into Deep Research."
Write-Host "3. Attach .md files from: $ContextDir"
Write-Host "4. ZIP is available as backup, but individual .md files are preferred."
Write-Host ""
Write-Host "Opening pack folder..." -ForegroundColor Cyan

explorer.exe $OutDir
