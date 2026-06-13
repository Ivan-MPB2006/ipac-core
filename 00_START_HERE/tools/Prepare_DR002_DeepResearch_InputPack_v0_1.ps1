# Prepare_DR002_DeepResearch_InputPack_v0_1.ps1
# Run from the root of the IPaC Obsidian Vault.
#
# Purpose:
# Build a controlled DR-002 Deep Research input pack:
# IPaC vs Context Engineering.
#
# It includes:
# - DR-002 research design
# - DR-002 discipline status addendum
# - DR-002 selection / input recommendations
# - DR-001 boundary decision and comparative review
# - current research rules
# - IPaC core context
# - optional ontology and process notes
# - a final Deep Research prompt
#
# It does NOT modify canon.
# It does NOT run Git commands.
# It writes local ignore rules to .git/info/exclude so generated packs do not pollute git status.

$ErrorActionPreference = "Stop"

Write-Host ""
Write-Host "=== IPaC DR-002 Deep Research Input Pack Builder v0.1 ===" -ForegroundColor Cyan
Write-Host ""

$VaultRoot = (Get-Location).Path
Write-Host "Vault root:" -ForegroundColor Yellow
Write-Host "  $VaultRoot"
Write-Host ""

# --- 1. Vault sanity check ---
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

# --- 2. Local git ignore for generated packs ---
$GitInfoExclude = Join-Path $VaultRoot ".git\info\exclude"
if (Test-Path $GitInfoExclude) {
    $excludeLines = @(
        "",
        "# IPaC generated DR-002 Deep Research input packs",
        "99_ATTACHMENTS_AND_EXPORTS/DR-002_DEEP_RESEARCH_INPUT_PACK_*/",
        "99_ATTACHMENTS_AND_EXPORTS/DR-002_DEEP_RESEARCH_INPUT_PACK_*.zip"
    )

    foreach ($line in $excludeLines) {
        if ($line -eq "") {
            Add-Content -Path $GitInfoExclude -Value ""
        }
        elseif (-not (Select-String -Path $GitInfoExclude -SimpleMatch $line -Quiet)) {
            Add-Content -Path $GitInfoExclude -Value $line
        }
    }

    Write-Host "Local git exclude updated for DR-002 generated packs." -ForegroundColor Green
}
else {
    Write-Host "No .git/info/exclude found. Generated pack may appear in git status." -ForegroundColor Yellow
}

# --- 3. Output paths ---
$Timestamp = Get-Date -Format "yyyyMMdd_HHmmss"
$ExportRoot = Join-Path $VaultRoot "99_ATTACHMENTS_AND_EXPORTS"
if (-not (Test-Path $ExportRoot)) {
    New-Item -ItemType Directory -Path $ExportRoot | Out-Null
}

$PackName = "DR-002_DEEP_RESEARCH_INPUT_PACK_$Timestamp"
$OutDir = Join-Path $ExportRoot $PackName
$PromptDir = Join-Path $OutDir "00_PROMPT_TO_PASTE"
$AttachDir = Join-Path $OutDir "01_ATTACH_THESE"
$ManifestDir = Join-Path $OutDir "00_MANIFEST"

New-Item -ItemType Directory -Path $OutDir -Force | Out-Null
New-Item -ItemType Directory -Path $PromptDir -Force | Out-Null
New-Item -ItemType Directory -Path $AttachDir -Force | Out-Null
New-Item -ItemType Directory -Path $ManifestDir -Force | Out-Null

# --- 4. Files to copy ---
$RequiredFiles = @(
    @{ Role = "IPaC Constitution / core context"; Path = "01_CANON/00_CORE_CANON/00_IPaC_CONSTITUTION_v0_1.md"; Target = "REQ_01_00_IPaC_CONSTITUTION_v0_1.md" },
    @{ Role = "Lifecycle Map"; Path = "01_CANON/00_CORE_CANON/01_LIFECYCLE_MAP_LIVING_MEANING_TO_UPDATED_CANON_v0_1.md"; Target = "REQ_02_LIFECYCLE_MAP_LIVING_MEANING_TO_UPDATED_CANON_v0_1.md" },
    @{ Role = "Critical Questions Register"; Path = "03_RESEARCH_MAP/IPAC_CRITICAL_QUESTIONS_REGISTER_v0_1.md"; Target = "REQ_03_IPAC_CRITICAL_QUESTIONS_REGISTER_v0_1.md" },
    @{ Role = "DR-001 IPaC / KE boundary decision"; Path = "08_TRACE_AND_DECISIONS/decisions/DECISION_DR001_IPAC_KE_BOUNDARY_v0_1.md"; Target = "REQ_04_DECISION_DR001_IPAC_KE_BOUNDARY_v0_1.md" },
    @{ Role = "DR-001 Comparative Research Review"; Path = "08_TRACE_AND_DECISIONS/reviews/DR-001_COMPARATIVE_RESEARCH_REVIEW_v0_1.md"; Target = "REQ_05_DR-001_COMPARATIVE_RESEARCH_REVIEW_v0_1.md" },
    @{ Role = "DR-002 Boundary Sprint Selection"; Path = "08_TRACE_AND_DECISIONS/reviews/DR-002_BOUNDARY_SPRINT_SELECTION_v0_1.md"; Target = "REQ_06_DR-002_BOUNDARY_SPRINT_SELECTION_v0_1.md" },
    @{ Role = "DR-002 Input Files Recommended"; Path = "03_RESEARCH_MAP/deep_research/input/DR-002_INPUT_FILES_RECOMMENDED_v0_1.md"; Target = "REQ_07_DR-002_INPUT_FILES_RECOMMENDED_v0_1.md" },
    @{ Role = "DR-002 Research Design"; Path = "03_RESEARCH_MAP/deep_research/design/DR-002_RESEARCH_DESIGN_IPaC_vs_CONTEXT_ENGINEERING_v0_1.md"; Target = "REQ_08_DR-002_RESEARCH_DESIGN_IPaC_vs_CONTEXT_ENGINEERING_v0_1.md" },
    @{ Role = "DR-002 Discipline Status Addendum"; Path = "03_RESEARCH_MAP/deep_research/design/DR-002_DISCIPLINE_STATUS_AND_NEIGHBORHOOD_MAP_ADDENDUM_v0_1.md"; Target = "REQ_09_DR-002_DISCIPLINE_STATUS_AND_NEIGHBORHOOD_MAP_ADDENDUM_v0_1.md" },
    @{ Role = "Research Discipline Status Rule"; Path = "06_PROJECT_RULES/RESEARCH_DISCIPLINE_STATUS_AND_NEIGHBORHOOD_MAP_RULE_v0_1.md"; Target = "REQ_10_RESEARCH_DISCIPLINE_STATUS_AND_NEIGHBORHOOD_MAP_RULE_v0_1.md" },
    @{ Role = "Research Historical Genesis Rule"; Path = "06_PROJECT_RULES/RESEARCH_HISTORICAL_GENESIS_AND_LESSONS_RULE_v0_1.md"; Target = "REQ_11_RESEARCH_HISTORICAL_GENESIS_AND_LESSONS_RULE_v0_1.md" }
)

$OptionalFiles = @(
    @{ Role = "Min / Max Positioning Decision"; Path = "08_TRACE_AND_DECISIONS/decisions/DECISION_IPAC_POSITIONING_MIN_MAX_STRATEGY_v0_1.md"; Target = "OPT_01_DECISION_IPAC_POSITIONING_MIN_MAX_STRATEGY_v0_1.md" },
    @{ Role = "Multi-layer Knowledge Representation Rule"; Path = "06_PROJECT_RULES/MULTI_LAYER_KNOWLEDGE_REPRESENTATION_v0_1.md"; Target = "OPT_02_MULTI_LAYER_KNOWLEDGE_REPRESENTATION_v0_1.md" },
    @{ Role = "Wave 4 Safe Project Rules"; Path = "06_PROJECT_RULES/WAVE4_SAFE_PROJECT_RULES_v0_1.md"; Target = "OPT_03_WAVE4_SAFE_PROJECT_RULES_v0_1.md" },
    @{ Role = "Life / Baseline Drift Inspection Rule"; Path = "06_PROJECT_RULES/RULE_LIFE_BASELINE_DRIFT_INSPECTION_v0_1.md"; Target = "OPT_04_RULE_LIFE_BASELINE_DRIFT_INSPECTION_v0_1.md" },
    @{ Role = "Ontology note: IPaC discipline as production quality"; Path = "03_RESEARCH_MAP/ontology_notes/ONTOLOGY_IPAC_DISCIPLINE_AS_PRODUCTION_QUALITY_v0_1.md"; Target = "OPT_05_ONTOLOGY_IPAC_DISCIPLINE_AS_PRODUCTION_QUALITY_v0_1.md" },
    @{ Role = "Ontology note: AI creativity and complexity relocation"; Path = "03_RESEARCH_MAP/ontology_notes/ONTOLOGY_AI_CREATIVITY_COMPLEXITY_RELOCATION_v0_1.md"; Target = "OPT_06_ONTOLOGY_AI_CREATIVITY_COMPLEXITY_RELOCATION_v0_1.md" },
    @{ Role = "OpenAI DR-001 report"; Path = "03_RESEARCH_MAP/deep_research/DR-001_IPaC_vs_Knowledge_Engineering_REPORT_v0_1.md"; Target = "OPT_07_DR-001_OpenAI_IPaC_vs_KE_REPORT_v0_1.md" },
    @{ Role = "Gemini DR-001 report"; Path = "03_RESEARCH_MAP/deep_research/DR-001_GEMINI_IPaC_vs_Knowledge_Engineering_REPORT_v0_1.md"; Target = "OPT_08_DR-001_GEMINI_IPaC_vs_KE_REPORT_v0_1.md" }
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

Write-Host "Copying required DR-002 files..." -ForegroundColor Cyan
foreach ($item in $RequiredFiles) {
    Copy-IpacFlatFile -RelativePath $item.Path -Role $item.Role -TargetName $item.Target -Required $true
}

Write-Host ""
Write-Host "Copying optional context files..." -ForegroundColor Cyan
foreach ($item in $OptionalFiles) {
    Copy-IpacFlatFile -RelativePath $item.Path -Role $item.Role -TargetName $item.Target -Required $false
}

# --- 5. Create final prompt ---
$PromptTarget = Join-Path $PromptDir "DR-002_DEEP_RESEARCH_PROMPT_TO_PASTE.md"

$PromptLines = @(
"# DR-002 — IPaC vs Context Engineering",
"## Deep Research Prompt v0.1",
"",
"You are acting as a critical research analyst for boundary research.",
"",
"You are not writing a promotional report.",
"You are not confirming IPaC.",
"",
"Use the attached IPaC files as internal project context and working hypotheses, not as validated truth.",
"",
"# 1. Context",
"",
"IPaC — Information Production as Code / Информационное производство как код — is an internal project hypothesis about a human-AI operating contour for living knowledge and information production.",
"",
"After DR-001, IPaC’s current working verdict is: IPAC_IS_OPERATING_LAYER_FOR_LIVING_KNOWLEDGE_WITH_KE_OVERLAP.",
"",
"DR-002 examines the boundary between IPaC and Context Engineering.",
"",
"# 2. Main Research Goal",
"",
"Critically investigate whether IPaC reduces to Context Engineering, partly overlaps with it, extends it, or belongs to a broader knowledge / cognitive / information-production contour.",
"",
"# 3. Historical Genesis Requirement",
"",
"Do not analyze Context Engineering only through current AI blogs or recent hype.",
"Do not assume Context Engineering begins with any recent popular blog post.",
"Trace the historical genealogy of the problem, practices and terminology.",
"",
"Investigate roots in philosophy / linguistics / pragmatics; cognitive science; Human Factors / Cognitive Systems Engineering; context-aware computing; Knowledge Engineering / Expert Systems; Information Retrieval / RAG roots; Prompt Engineering and agent memory.",
"",
"Distinguish: origin of the term; origin of the problem; origin of the practice; current branding of the field.",
"",
"# 4. Discipline Status and Neighborhood Map Requirement",
"",
"Before comparing IPaC with Context Engineering, determine the status of Context Engineering itself.",
"",
"Is Context Engineering a mature engineering discipline, applied practice field, standardized technical layer, emerging practice cluster, toolchain pattern, role label, marketing term, or metaphor / positioning term?",
"",
"Assess it using: object, problem field, methodology, validation, lifecycle, standards, professional role, institutional base, failure modes and boundary clarity.",
"",
"Do not assume that a field is an engineering discipline merely because it uses the word engineering.",
"",
"# 5. Core Hypotheses to Test",
"",
"Hypothesis A: Context Engineering may be an emerging AI-era practice cluster around model-context management.",
"Hypothesis B: Context Engineering may be a subset of broader Cognitive Engineering / Human-AI Systems activity.",
"Hypothesis C: Context Engineering prepares and delivers context to models / agents / AI systems, while IPaC supports a broader knowledge lifecycle: sense capture, structuring, retention, verification, feedback, absorbing feedback, coupling with reality, deepening, widening, reuse and controlled rebuild.",
"",
"These are hypotheses, not conclusions. Test them critically.",
"",
"# 6. Key Distinction to Investigate",
"",
"Context = what a model / agent / human needs now for a specific interpretation or action.",
"Knowledge = what must be preserved, checked, updated, connected to reality, developed and reused over time.",
"",
"Possible hypothesis: Context Engineering optimizes the moment of interaction with a model. IPaC designs the lifecycle of knowledge over time. Test this.",
"",
"# 7. Feedback / Reality Coupling Test",
"",
"Investigate whether Context Engineering includes feedback from reality, interpretation of feedback, incorporation into knowledge artifacts, review / decision / trace, controlled rebuild, canon update, development of knowledge in depth and breadth, reuse in new situations, and governance of changed meaning.",
"",
"# 8. Required Report Structure",
"",
"Produce: DR-002 — IPaC vs Context Engineering Report v0.1",
"",
"Sections:",
"1. Executive Summary",
"2. Historical Genesis of Context Engineering",
"3. What Context Engineering Is Today",
"4. Discipline Status of Context Engineering",
"5. Key People, Schools, Products and Centers",
"6. Central Achievements",
"7. Bottlenecks, Failures and Negative Lessons",
"8. Boundary Map: IPaC vs Context Engineering",
"9. Reduction Test",
"10. Feedback / Reality Coupling",
"11. What IPaC Can Inherit",
"12. What IPaC Should Avoid",
"13. Claims to Weaken",
"14. Claims to Strengthen",
"15. Missing Sources and Research Gaps",
"16. Field Validation Questions",
"17. Suggested Canon Impact",
"18. Final Verdict",
"",
"Use tables where appropriate, especially for discipline status, boundary map, what to inherit and what to avoid.",
"",
"# 9. Final Verdict Options",
"",
"Choose one:",
"- IPAC_REDUCES_TO_CONTEXT_ENGINEERING",
"- IPAC_PARTLY_OVERLAPS_WITH_CONTEXT_ENGINEERING",
"- IPAC_EXTENDS_CONTEXT_ENGINEERING",
"- CONTEXT_ENGINEERING_IS_SUBSET_OF_BROADER_IPAC_CONTOUR",
"- INSUFFICIENT_EVIDENCE",
"",
"# 10. Critical Rules",
"",
"- Do not confirm IPaC.",
"- Do not treat IPaC internal documents as validated truth.",
"- Do not assume Context Engineering begins with recent AI blogs.",
"- Distinguish historical roots from modern term popularization.",
"- Distinguish discipline from practice cluster.",
"- Distinguish context delivery from knowledge lifecycle.",
"- Distinguish evidence, analogy, inspiration, speculation and field validation.",
"- Highlight weak sources.",
"- Cite sources.",
"- State source limitations.",
"- Do not update canon.",
"- Do not declare field validation.",
"- Build a neighborhood map, not a defensive fence."
)

Set-Content -Path $PromptTarget -Value $PromptLines -Encoding UTF8

# --- 6. README and manifest ---
$ReadmePath = Join-Path $OutDir "READ_ME_DR002_UPLOAD.md"
$ReadmeLines = @(
"# DR-002 Deep Research Upload Instructions",
"",
"## 1. Paste prompt",
"",
"Open and paste the full text of:",
"",
"00_PROMPT_TO_PASTE/DR-002_DEEP_RESEARCH_PROMPT_TO_PASTE.md",
"",
"## 2. Attach files",
"",
"Attach files from:",
"",
"01_ATTACH_THESE/",
"",
"Minimum: attach all REQ_ files.",
"If allowed, attach OPT_ files too.",
"",
"## 3. Expected output",
"",
"Save the final report later as:",
"",
"03_RESEARCH_MAP/deep_research/DR-002_IPaC_vs_Context_Engineering_REPORT_v0_1.md",
"",
"## 4. Discipline",
"",
"Do not update canon directly. DR-002 report is research support only. Review and decision must follow."
)

Set-Content -Path $ReadmePath -Value $ReadmeLines -Encoding UTF8

$ManifestPath = Join-Path $ManifestDir "DR-002_INPUT_PACK_MANIFEST.md"
$ManifestLines = New-Object System.Collections.Generic.List[string]
$ManifestLines.Add("# DR-002 Deep Research Input Pack Manifest")
$ManifestLines.Add("")
$ManifestLines.Add("Generated: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')")
$ManifestLines.Add("Vault root: $VaultRoot")
$ManifestLines.Add("Pack folder: $OutDir")
$ManifestLines.Add("")
$ManifestLines.Add("## Copied files")
$ManifestLines.Add("")

foreach ($x in $Copied) {
    if ($x.Required) { $req = "required" } else { $req = "optional" }
    $ManifestLines.Add("- [$req] $($x.Source) -> $($x.CopiedAs) — $($x.Role)")
}

$ManifestLines.Add("")
$ManifestLines.Add("## Missing required files")
$ManifestLines.Add("")
if ($MissingRequired.Count -eq 0) {
    $ManifestLines.Add("None.")
}
else {
    foreach ($x in $MissingRequired) {
        $ManifestLines.Add("- $($x.MissingPath) — $($x.Role)")
    }
}

$ManifestLines.Add("")
$ManifestLines.Add("## Missing optional files")
$ManifestLines.Add("")
if ($MissingOptional.Count -eq 0) {
    $ManifestLines.Add("None.")
}
else {
    foreach ($x in $MissingOptional) {
        $ManifestLines.Add("- $($x.MissingPath) — $($x.Role)")
    }
}

$ManifestLines.Add("")
$ManifestLines.Add("## Status")
$ManifestLines.Add("")
if ($MissingRequired.Count -eq 0) {
    $ManifestLines.Add("DR002_INPUT_PACK_READY")
}
else {
    $ManifestLines.Add("DR002_INPUT_PACK_PARTIAL_REQUIRED_FILES_MISSING")
}

Set-Content -Path $ManifestPath -Value $ManifestLines -Encoding UTF8

# --- 7. ZIP ---
$ZipPath = Join-Path $ExportRoot "$PackName.zip"
if (Test-Path $ZipPath) {
    Remove-Item $ZipPath -Force
}
Compress-Archive -Path (Join-Path $OutDir "*") -DestinationPath $ZipPath -Force

# --- 8. Final output ---
Write-Host ""
Write-Host "=== RESULT ===" -ForegroundColor Cyan
Write-Host "Pack folder:" -ForegroundColor Yellow
Write-Host "  $OutDir"
Write-Host ""
Write-Host "ZIP pack:" -ForegroundColor Yellow
Write-Host "  $ZipPath"
Write-Host ""

if ($MissingRequired.Count -eq 0) {
    Write-Host "STATUS: DR002_INPUT_PACK_READY" -ForegroundColor Green
}
else {
    Write-Host "STATUS: DR002_INPUT_PACK_PARTIAL_REQUIRED_FILES_MISSING" -ForegroundColor Red
    Write-Host "Missing required files:" -ForegroundColor Red
    foreach ($x in $MissingRequired) {
        Write-Host "  - $($x.MissingPath)" -ForegroundColor Red
    }
}

Write-Host ""
Write-Host "NEXT:" -ForegroundColor Cyan
Write-Host "1. Open: $PromptTarget"
Write-Host "2. Paste its content into Deep Research."
Write-Host "3. Attach .md files from: $AttachDir"
Write-Host "4. Minimum: attach all REQ_ files. If possible, attach OPT_ files too."
Write-Host ""
Write-Host "Opening pack folder..." -ForegroundColor Cyan

explorer.exe $OutDir
