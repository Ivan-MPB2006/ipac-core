# Prepare_DR001P_Perplexity_InputPack_v0_1.ps1
# Run from the root of the IPaC Obsidian Vault.
# Purpose:
# Build a clean triangulation input pack for Perplexity based on the current DR-001 state.
# It creates a prompt, copies selected files into a flat upload folder, creates a manifest and ZIP.
# It does NOT modify canon and does NOT run Git commands.

$ErrorActionPreference = "Stop"

Write-Host ""
Write-Host "=== IPaC DR-001P Perplexity Input Pack Builder v0.1 ===" -ForegroundColor Cyan
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

$PackName = "DR-001P_PERPLEXITY_INPUT_PACK_$Timestamp"
$OutDir = Join-Path $ExportRoot $PackName
$PromptDir = Join-Path $OutDir "00_PROMPT_TO_PASTE"
$AttachDir = Join-Path $OutDir "01_ATTACH_THESE"
$ManifestDir = Join-Path $OutDir "00_MANIFEST"

New-Item -ItemType Directory -Path $OutDir -Force | Out-Null
New-Item -ItemType Directory -Path $PromptDir -Force | Out-Null
New-Item -ItemType Directory -Path $AttachDir -Force | Out-Null
New-Item -ItemType Directory -Path $ManifestDir -Force | Out-Null

$RequiredFiles = @(
    @{ Role = "IPaC Constitution / baseline hypothesis"; Path = "01_CANON/00_CORE_CANON/00_IPaC_CONSTITUTION_v0_1.md"; Target = "REQ_01_00_IPaC_CONSTITUTION_v0_1.md" },
    @{ Role = "Critical questions register"; Path = "03_RESEARCH_MAP/IPAC_CRITICAL_QUESTIONS_REGISTER_v0_1.md"; Target = "REQ_02_IPAC_CRITICAL_QUESTIONS_REGISTER_v0_1.md" },
    @{ Role = "OpenAI DR-001 report"; Path = "03_RESEARCH_MAP/deep_research/DR-001_IPaC_vs_Knowledge_Engineering_REPORT_v0_1.md"; Target = "REQ_03_DR-001_OpenAI_IPaC_vs_KE_REPORT_v0_1.md" },
    @{ Role = "Gemini DR-001 report"; Path = "03_RESEARCH_MAP/deep_research/DR-001_GEMINI_IPaC_vs_Knowledge_Engineering_REPORT_v0_1.md"; Target = "REQ_04_DR-001_GEMINI_IPaC_vs_KE_REPORT_v0_1.md" }
)

$OptionalFiles = @(
    @{ Role = "Lifecycle map"; Path = "01_CANON/00_CORE_CANON/01_LIFECYCLE_MAP_LIVING_MEANING_TO_UPDATED_CANON_v0_1.md"; Target = "OPT_01_LIFECYCLE_MAP_LIVING_MEANING_TO_UPDATED_CANON_v0_1.md" },
    @{ Role = "Multi-layer knowledge representation"; Path = "06_PROJECT_RULES/MULTI_LAYER_KNOWLEDGE_REPRESENTATION_v0_1.md"; Target = "OPT_02_MULTI_LAYER_KNOWLEDGE_REPRESENTATION_v0_1.md" },
    @{ Role = "Safe project rules"; Path = "06_PROJECT_RULES/WAVE4_SAFE_PROJECT_RULES_v0_1.md"; Target = "OPT_03_WAVE4_SAFE_PROJECT_RULES_v0_1.md" },
    @{ Role = "Min/max positioning strategy decision"; Path = "08_TRACE_AND_DECISIONS/decisions/DECISION_IPAC_POSITIONING_MIN_MAX_STRATEGY_v0_1.md"; Target = "OPT_04_DECISION_IPAC_POSITIONING_MIN_MAX_STRATEGY_v0_1.md" },
    @{ Role = "Life / Baseline drift inspection rule"; Path = "06_PROJECT_RULES/RULE_LIFE_BASELINE_DRIFT_INSPECTION_v0_1.md"; Target = "OPT_05_RULE_LIFE_BASELINE_DRIFT_INSPECTION_v0_1.md" },
    @{ Role = "Ontology note: discipline as production quality"; Path = "03_RESEARCH_MAP/ontology_notes/ONTOLOGY_IPAC_DISCIPLINE_AS_PRODUCTION_QUALITY_v0_1.md"; Target = "OPT_06_ONTOLOGY_IPAC_DISCIPLINE_AS_PRODUCTION_QUALITY_v0_1.md" },
    @{ Role = "Ontology note: AI creativity and complexity relocation"; Path = "03_RESEARCH_MAP/ontology_notes/ONTOLOGY_AI_CREATIVITY_COMPLEXITY_RELOCATION_v0_1.md"; Target = "OPT_07_ONTOLOGY_AI_CREATIVITY_COMPLEXITY_RELOCATION_v0_1.md" },
    @{ Role = "Research backlog"; Path = "03_RESEARCH_MAP/WAVE4_RESEARCH_BACKLOG_PLACEHOLDERS_v0_1.md"; Target = "OPT_08_WAVE4_RESEARCH_BACKLOG_PLACEHOLDERS_v0_1.md" },
    @{ Role = "Wave 4 closure decision"; Path = "08_TRACE_AND_DECISIONS/decisions/DECISION_WAVE4_SELECTIVE_IMPORT_CLOSURE_v0_1.md"; Target = "OPT_09_DECISION_WAVE4_SELECTIVE_IMPORT_CLOSURE_v0_1.md" }
)

$Copied = @()
$MissingRequired = @()
$MissingOptional = @()

function Copy-IpacFlatFile {
    param(
        [Parameter(Mandatory=$true)][string]$RelativePath,
        [Parameter(Mandatory=$true)][string]$Role,
        [Parameter(Mandatory=$true)][string]$TargetName,
        [Parameter(Mandatory=$true)][bool]$Required
    )

    $src = Join-Path $VaultRoot $RelativePath
    $dest = Join-Path $AttachDir $TargetName

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

Write-Host "Copying required triangulation files..." -ForegroundColor Cyan
foreach ($item in $RequiredFiles) {
    Copy-IpacFlatFile -RelativePath $item.Path -Role $item.Role -TargetName $item.Target -Required $true
}

Write-Host ""
Write-Host "Copying optional context files..." -ForegroundColor Cyan
foreach ($item in $OptionalFiles) {
    Copy-IpacFlatFile -RelativePath $item.Path -Role $item.Role -TargetName $item.Target -Required $false
}

Write-Host ""
Write-Host "Creating Perplexity prompt..." -ForegroundColor Cyan

$PromptTarget = Join-Path $PromptDir "DR-001P_PERPLEXITY_PROMPT_TO_PASTE.md"

$promptLines = @(
"# DR-001P — Perplexity Source Triangulation",
"## IPaC vs Knowledge Engineering / Missing Sources and Counterclaims Scan",
"",
"You are not writing a promotional report.",
"",
"You are acting as a source triangulation and adversarial literature discovery assistant.",
"",
"## Context",
"",
"IPaC — Information Production as Code / Информационное производство как код — is an internal project hypothesis about an operating layer for living knowledge. It uses Markdown, YAML metadata, Obsidian, Git, review / decision / trace discipline, and human-AI collaboration to manage the lifecycle of knowledge artifacts.",
"",
"Two prior research reports have already been produced:",
"",
"1. OpenAI Deep Research: DR-001_IPaC_vs_Knowledge_Engineering_REPORT_v0_1.md",
"2. Gemini Deep Research: DR-001_GEMINI_IPaC_vs_Knowledge_Engineering_REPORT_v0_1.md",
"",
"Both reports converged on the provisional verdict:",
"",
"IPAC_IS_OPERATING_LAYER_FOR_LIVING_KNOWLEDGE_WITH_KE_OVERLAP",
"",
"This means IPaC does not appear to be merely renamed Knowledge Engineering, but it has substantial overlap and inheritance from Knowledge Engineering, Knowledge Management, ontology engineering, knowledge graph engineering, provenance engineering, docs-as-code, decision-support traditions, cognitive systems engineering, and human-AI workflow design.",
"",
"## Important framing",
"",
"Do not confirm IPaC.",
"Do not write an essay that praises IPaC.",
"Do not treat IPaC internal documents as validated truth.",
"Your task is to find what may have been missed.",
"Build a neighborhood map, not a defensive fence.",
"",
"## Research Goal",
"",
"Identify missing sources, neighboring disciplines, established frameworks, terminology conflicts, source weaknesses, and counterarguments that could weaken, refine, or reframe IPaC’s current positioning.",
"",
"You are especially looking for missing foundational sources, weak or secondary sources in prior reports, nearby fields not yet considered, existing frameworks that may already cover IPaC claims, counterarguments against IPaC novelty, more careful formulations of IPaC positioning, and research gaps requiring later field validation.",
"",
"## Focus Areas",
"",
"Investigate the neighborhood of IPaC across Knowledge Engineering, Knowledge Acquisition, CommonKADS, METHONTOLOGY, Ontology Engineering, Knowledge Graph Engineering, Provenance Engineering / PROV-O, Knowledge Management, Docs-as-Code, DocOps, Architecture Decision Records / ADR, Configuration Management, Semantic Drift / Ontology Evolution, Cognitive Systems Engineering, Human-in-the-loop AI, Context Engineering, AI-native SDLC, Research as Code / Science as Code / Data as Code, Decision Support Systems, and Information Architecture / Content Strategy if relevant.",
"",
"## Required Output",
"",
"# DR-001P — Perplexity Source Triangulation Report v0.1",
"",
"## 1. Executive Summary",
"State whether the prior provisional verdict is supported, weakened, or needs reframing.",
"",
"## 2. Most Important Missing Sources",
"Table: Source | Field | Why it matters for IPaC | Supports | Challenges | Priority",
"",
"## 3. Neighboring Frameworks Not Yet Fully Considered",
"Table: Framework / Discipline | Relationship to IPaC | Risk of overlap | Difference | Notes",
"",
"## 4. Strongest Counterarguments Against IPaC Novelty",
"List the strongest arguments an external expert could make against IPaC’s novelty.",
"",
"## 5. Strongest Defensible Positioning for IPaC",
"Suggest the most careful positioning that does not overclaim novelty.",
"",
"Use the min/max distinction:",
"Minimum defensible claim: IPaC is a human-AI framework for disciplined production and maintenance of knowledge artifacts.",
"Maximum research hypothesis: IPaC may be an entry point into Engineering of Information Production — a broader discipline for producing, governing, validating and reusing information blocks across human, AI, communication, research and decision-making contexts.",
"",
"## 6. Terms That Need Boundary Clarification",
"Analyze: living knowledge, living meaning, knowledge clump, knowledge artifact, canon, trace, review / decision / controlled rebuild, operating layer, multi-layer knowledge representation, human-AI knowledge workflow, engineering of information production.",
"",
"For each term specify: IPaC term | Existing neighboring term | Risk | Safer formulation",
"",
"## 7. What Prior Reports May Have Overstated",
"Identify where the OpenAI and Gemini reports might have overclaimed, oversimplified, or relied on weak sources.",
"",
"## 8. What Prior Reports May Have Understated",
"Identify where prior reports may have missed real novelty or practical value.",
"",
"Pay attention to scope / охват, generalized information blocks beyond technical documentation, decision-preparation and decision-support use cases, AI-driven shift of creativity and complexity, Git as Life / Baseline drift inspection, and information production as engineering, not merely as code.",
"",
"## 9. Source Quality Assessment",
"Table: Source or source class | Strength | Weakness | Use in IPaC positioning",
"",
"## 10. Suggested Next Research Sprints",
"Recommend the next 3–5 research sprints after DR-001.",
"",
"## 11. Final Triangulation Verdict",
"Choose one: PRIOR_VERDICT_CONFIRMED, PRIOR_VERDICT_CONFIRMED_WITH_MAJOR_ADDITIONS, PRIOR_VERDICT_TOO_STRONG, PRIOR_VERDICT_TOO_WEAK, INSUFFICIENT_SOURCE_COVERAGE.",
"",
"Explain the verdict.",
"",
"## Critical Rules",
"",
"- Do not treat IPaC internal documents as validated truth.",
"- Do not write a marketing text.",
"- Prefer primary, academic, standards, and reputable technical sources.",
"- Distinguish evidence, analogy, inspiration, speculation, and field validation.",
"- Include links and source names.",
"- Highlight weak sources.",
"- Highlight missing source categories.",
"- Build a neighborhood map, not a defensive fence.",
"- Do not update IPaC canon.",
"- Do not declare field validation."
)

Set-Content -Path $PromptTarget -Value $promptLines -Encoding UTF8

$ReadmePath = Join-Path $OutDir "READ_ME_FOR_PERPLEXITY_UPLOAD.md"
$readmeLines = @(
"# DR-001P Perplexity Upload Instructions",
"",
"## 1. Paste this prompt",
"",
"Open and paste the full text of:",
"",
"00_PROMPT_TO_PASTE/DR-001P_PERPLEXITY_PROMPT_TO_PASTE.md",
"",
"## 2. Attach files",
"",
"Attach files from:",
"",
"01_ATTACH_THESE/",
"",
"Minimum: attach all REQ_ files.",
"If Perplexity allows more uploads, attach OPT_ files too.",
"",
"Priority order:",
"1. REQ_01 Constitution",
"2. REQ_02 Critical Questions Register",
"3. REQ_03 OpenAI DR-001 report",
"4. REQ_04 Gemini DR-001 report",
"5. OPT_04 Min/max positioning decision",
"6. OPT_05 Life/Baseline drift rule",
"7. OPT_06 and OPT_07 ontology notes",
"8. OPT_01 Lifecycle map",
"9. OPT_02 Multi-layer representation",
"10. OPT_03 Safe rules",
"",
"## 3. Expected output",
"",
"Save the result later as:",
"",
"03_RESEARCH_MAP/deep_research/DR-001P_PERPLEXITY_SOURCE_TRIANGULATION_v0_1.md",
"",
"## 4. Do not update canon directly",
"",
"Perplexity output is research support only. Canon changes require triangulated review and decision record."
)

Set-Content -Path $ReadmePath -Value $readmeLines -Encoding UTF8

$ManifestPath = Join-Path $ManifestDir "DR-001P_PERPLEXITY_INPUT_PACK_MANIFEST.md"
$manifestLines = New-Object System.Collections.Generic.List[string]

$manifestLines.Add("# DR-001P Perplexity Input Pack Manifest")
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
    $manifestLines.Add("DR001P_PERPLEXITY_INPUT_PACK_READY")
}
else {
    $manifestLines.Add("DR001P_PERPLEXITY_INPUT_PACK_PARTIAL_REQUIRED_FILES_MISSING")
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
    Write-Host "STATUS: DR001P_PERPLEXITY_INPUT_PACK_READY" -ForegroundColor Green
}
else {
    Write-Host "STATUS: DR001P_PERPLEXITY_INPUT_PACK_PARTIAL_REQUIRED_FILES_MISSING" -ForegroundColor Red
}

Write-Host ""
Write-Host "NEXT:" -ForegroundColor Cyan
Write-Host "1. Open: $PromptTarget"
Write-Host "2. Paste its content into Perplexity."
Write-Host "3. Attach .md files from: $AttachDir"
Write-Host "4. Minimum: attach all REQ_ files. If possible, attach OPT_ files too."
Write-Host ""
Write-Host "Opening pack folder..." -ForegroundColor Cyan

explorer.exe $OutDir
