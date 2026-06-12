# Prepare_Project_Resources_Sync_Pack_v0_1.ps1
# Run from the root of the IPaC Obsidian Vault.
#
# Purpose:
# Build a clean Project Resources sync pack after DR-001.
# The pack is intended to be uploaded to ChatGPT Project Resources "in one go".
#
# It copies only the current operational knowledge layer:
# - core canon
# - research backlog / critical questions
# - DR-001 reports
# - comparative review
# - decisions
# - project rules
# - ontology notes
# - tooling scripts
# - vault orientation files
# - prompts for new Project chats
#
# It does NOT modify canon.
# It does NOT run Git commands.
# It writes local ignore rules to .git/info/exclude so generated sync packs do not pollute git status.

$ErrorActionPreference = "Stop"

Write-Host ""
Write-Host "=== IPaC Project Resources Sync Pack Builder v0.1 ===" -ForegroundColor Cyan
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
        "# IPaC generated Project Resources sync packs",
        "99_ATTACHMENTS_AND_EXPORTS/PROJECT_RESOURCE_SYNC_PACK_*/",
        "99_ATTACHMENTS_AND_EXPORTS/PROJECT_RESOURCE_SYNC_PACK_*.zip"
    )

    foreach ($line in $excludeLines) {
        if ($line -eq "") {
            Add-Content -Path $GitInfoExclude -Value ""
        }
        elseif (-not (Select-String -Path $GitInfoExclude -SimpleMatch $line -Quiet)) {
            Add-Content -Path $GitInfoExclude -Value $line
        }
    }

    Write-Host "Local git exclude updated for generated Project sync packs." -ForegroundColor Green
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

$PackName = "PROJECT_RESOURCE_SYNC_PACK_$Timestamp"
$OutDir = Join-Path $ExportRoot $PackName
$ResourceDir = Join-Path $OutDir "01_UPLOAD_TO_PROJECT_RESOURCES"
$PromptDir = Join-Path $OutDir "02_PROMPTS_FOR_PROJECT_CHATS"
$ManifestDir = Join-Path $OutDir "00_MANIFEST"

New-Item -ItemType Directory -Path $OutDir -Force | Out-Null
New-Item -ItemType Directory -Path $ResourceDir -Force | Out-Null
New-Item -ItemType Directory -Path $PromptDir -Force | Out-Null
New-Item -ItemType Directory -Path $ManifestDir -Force | Out-Null

# --- 4. Files to copy ---
$Files = @(
    # Core canon
    @{ Required = $true;  Role = "Core Constitution"; Path = "01_CANON/00_CORE_CANON/00_IPaC_CONSTITUTION_v0_1.md"; Target = "REQ_01_00_IPaC_CONSTITUTION_v0_1.md" },
    @{ Required = $true;  Role = "Lifecycle Map"; Path = "01_CANON/00_CORE_CANON/01_LIFECYCLE_MAP_LIVING_MEANING_TO_UPDATED_CANON_v0_1.md"; Target = "REQ_02_01_LIFECYCLE_MAP_LIVING_MEANING_TO_UPDATED_CANON_v0_1.md" },

    # Research map
    @{ Required = $true;  Role = "Critical Questions Register"; Path = "03_RESEARCH_MAP/IPAC_CRITICAL_QUESTIONS_REGISTER_v0_1.md"; Target = "REQ_03_IPAC_CRITICAL_QUESTIONS_REGISTER_v0_1.md" },
    @{ Required = $true;  Role = "Research Backlog"; Path = "03_RESEARCH_MAP/WAVE4_RESEARCH_BACKLOG_PLACEHOLDERS_v0_1.md"; Target = "REQ_04_WAVE4_RESEARCH_BACKLOG_PLACEHOLDERS_v0_1.md" },

    # DR-001 reports
    @{ Required = $true;  Role = "OpenAI DR-001 Report"; Path = "03_RESEARCH_MAP/deep_research/DR-001_IPaC_vs_Knowledge_Engineering_REPORT_v0_1.md"; Target = "REQ_05_DR-001_OpenAI_IPaC_vs_KE_REPORT_v0_1.md" },
    @{ Required = $true;  Role = "Gemini DR-001 Report"; Path = "03_RESEARCH_MAP/deep_research/DR-001_GEMINI_IPaC_vs_Knowledge_Engineering_REPORT_v0_1.md"; Target = "REQ_06_DR-001_GEMINI_IPaC_vs_KE_REPORT_v0_1.md" },

    # Reviews and decisions
    @{ Required = $true;  Role = "DR-001 Comparative Review"; Path = "08_TRACE_AND_DECISIONS/reviews/DR-001_COMPARATIVE_RESEARCH_REVIEW_v0_1.md"; Target = "REQ_07_DR-001_COMPARATIVE_RESEARCH_REVIEW_v0_1.md" },
    @{ Required = $true;  Role = "Min/Max Positioning Strategy Decision"; Path = "08_TRACE_AND_DECISIONS/decisions/DECISION_IPAC_POSITIONING_MIN_MAX_STRATEGY_v0_1.md"; Target = "REQ_08_DECISION_IPAC_POSITIONING_MIN_MAX_STRATEGY_v0_1.md" },
    @{ Required = $true;  Role = "DR-001 IPaC / KE Boundary Decision"; Path = "08_TRACE_AND_DECISIONS/decisions/DECISION_DR001_IPAC_KE_BOUNDARY_v0_1.md"; Target = "REQ_09_DECISION_DR001_IPAC_KE_BOUNDARY_v0_1.md" },

    # Project rules
    @{ Required = $true;  Role = "Wave 4 Safe Project Rules"; Path = "06_PROJECT_RULES/WAVE4_SAFE_PROJECT_RULES_v0_1.md"; Target = "REQ_10_WAVE4_SAFE_PROJECT_RULES_v0_1.md" },
    @{ Required = $true;  Role = "Multi-layer Knowledge Representation Rule"; Path = "06_PROJECT_RULES/MULTI_LAYER_KNOWLEDGE_REPRESENTATION_v0_1.md"; Target = "REQ_11_MULTI_LAYER_KNOWLEDGE_REPRESENTATION_v0_1.md" },
    @{ Required = $true;  Role = "Life / Baseline Drift Inspection Rule"; Path = "06_PROJECT_RULES/RULE_LIFE_BASELINE_DRIFT_INSPECTION_v0_1.md"; Target = "REQ_12_RULE_LIFE_BASELINE_DRIFT_INSPECTION_v0_1.md" },

    # Ontology notes
    @{ Required = $true;  Role = "Ontology Note: Discipline as Production Quality"; Path = "03_RESEARCH_MAP/ontology_notes/ONTOLOGY_IPAC_DISCIPLINE_AS_PRODUCTION_QUALITY_v0_1.md"; Target = "REQ_13_ONTOLOGY_IPAC_DISCIPLINE_AS_PRODUCTION_QUALITY_v0_1.md" },
    @{ Required = $true;  Role = "Ontology Note: AI Creativity and Complexity Relocation"; Path = "03_RESEARCH_MAP/ontology_notes/ONTOLOGY_AI_CREATIVITY_COMPLEXITY_RELOCATION_v0_1.md"; Target = "REQ_14_ONTOLOGY_AI_CREATIVITY_COMPLEXITY_RELOCATION_v0_1.md" },

    # Tooling layer
    @{ Required = $false; Role = "DR-001 input pack builder tool"; Path = "00_START_HERE/tools/Prepare_DR001_DeepResearch_InputPack_v0_1.ps1"; Target = "OPT_01_TOOL_Prepare_DR001_DeepResearch_InputPack_v0_1.ps1" },
    @{ Required = $false; Role = "DR-001P Perplexity input pack builder tool"; Path = "00_START_HERE/tools/Prepare_DR001P_Perplexity_InputPack_v0_1.ps1"; Target = "OPT_02_TOOL_Prepare_DR001P_Perplexity_InputPack_v0_1.ps1" },

    # Vault orientation
    @{ Required = $false; Role = "Vault README"; Path = "README.md"; Target = "OPT_03_README.md" },
    @{ Required = $false; Role = "File Inventory"; Path = "FILE_INVENTORY.md"; Target = "OPT_04_FILE_INVENTORY.md" },
    @{ Required = $false; Role = "Vault Structure"; Path = "IPaC_Obsidian_Vault_Structure_v0_1.md"; Target = "OPT_05_IPaC_Obsidian_Vault_Structure_v0_1.md" },

    # Extra closure context
    @{ Required = $false; Role = "Wave 4 Selective Import Closure"; Path = "08_TRACE_AND_DECISIONS/decisions/DECISION_WAVE4_SELECTIVE_IMPORT_CLOSURE_v0_1.md"; Target = "OPT_06_DECISION_WAVE4_SELECTIVE_IMPORT_CLOSURE_v0_1.md" },
    @{ Required = $false; Role = "Wave 4 Advanced Delta Review"; Path = "08_TRACE_AND_DECISIONS/reviews/WAVE4_ADVANCED_DELTA_IMPORT_REVIEW_v0_1.md"; Target = "OPT_07_WAVE4_ADVANCED_DELTA_IMPORT_REVIEW_v0_1.md" }
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
    $dest = Join-Path $ResourceDir $TargetName

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

Write-Host "Copying Project Resource files..." -ForegroundColor Cyan
foreach ($item in $Files) {
    Copy-IpacFlatFile -RelativePath $item.Path -Role $item.Role -TargetName $item.Target -Required $item.Required
}

# --- 5. Create Project chat prompts ---
$Prompt09 = @(
"# CHAT 09_SYNC — Project State Reconciliation",
"",
"Ты выступаешь как Project State Reconciliation Auditor.",
"",
"Твоя задача — синхронизировать состояние Project с актуальным состоянием IPaC Vault / Git после закрытия DR-001.",
"",
"Используй загруженные Project Resources. Если какого-то файла не видно, явно укажи это в разделе Missing Inputs. Не выдумывай содержание невидимых файлов.",
"",
"## Контекст",
"",
"DR-001 завершён как исследовательский цикл по границе IPaC / Knowledge Engineering.",
"",
"В Git / Obsidian зафиксированы OpenAI DR-001 report, Gemini DR-001 report, comparative research review, min/max positioning decision, boundary decision IPaC / KE, ontology notes, project rules, Life / Baseline Drift Inspection rule, tooling scripts for input packs.",
"",
"## Главная задача",
"",
"Сформируй актуальную карту состояния IPaC Project после DR-001.",
"",
"## Обязательный результат",
"",
"# IPaC Project State Reconciliation Report v0.1",
"",
"## 1. Visible Resource Inventory",
"",
"Таблица: Resource File | Visible? | Role | Notes",
"",
"## 2. Current Accepted State",
"",
"Зафиксируй текущие статусы: DR-001 OpenAI report; DR-001 Gemini report; comparative review; boundary decision; min/max positioning decision; ontology notes; Life / Baseline Drift rule; Perplexity status; Canon status; field validation status.",
"",
"## 3. Main Working Verdict",
"",
"Объясни текущий verdict: IPAC_IS_OPERATING_LAYER_FOR_LIVING_KNOWLEDGE_WITH_KE_OVERLAP",
"",
"## 4. Min / Max Positioning",
"",
"Раздели: minimum defensible position; maximum research hypothesis; forbidden overclaims.",
"",
"## 5. Active Project Rules",
"",
"Выдели правила, которые теперь должны управлять работой Project: canon locked; research support ≠ field validation; Git as Life / Baseline drift inspection; no direct canon update without review / decision; no execution / Codex without task pack.",
"",
"## 6. What Project Must Remember",
"",
"Сформулируй 10–15 кратких operational memory statements for this Project.",
"",
"## 7. Missing Inputs",
"",
"Если чего-то не хватает, перечисли.",
"",
"## 8. Next Recommended Action",
"",
"Дай рекомендацию: какой следующий research sprint открывать и почему.",
"",
"## Final Status",
"",
"Выдай один из статусов: PROJECT_SYNC_OK; PROJECT_SYNC_OK_WITH_NOTES; PROJECT_SYNC_PARTIAL; PROJECT_SYNC_BLOCKED."
)

$Prompt10 = @(
"# CHAT 10_NEXT — DR-002 Boundary Sprint Selection",
"",
"Ты выступаешь как Research Sprint Selection Auditor.",
"",
"У нас закрыт DR-001 по границе IPaC / Knowledge Engineering.",
"",
"Твоя задача — выбрать следующий boundary sprint из списка:",
"",
"1. IPaC vs Context Engineering",
"2. IPaC vs Docs-as-Code / DocOps",
"3. IPaC vs Software Engineering / Software Production",
"4. IPaC and Cognitive Systems Engineering",
"5. IPaC and Decision Support / ЛПР",
"6. IPaC vs Knowledge Management",
"7. IPaC vs Provenance / PROV-O / Semantic Drift",
"8. IPaC vs Information Architecture / Content Strategy",
"",
"Для каждого варианта оцени:",
"",
"Table: Sprint | Boundary risk | Strategic value | Dependency | Urgency | Recommendation",
"",
"Главный критерий:",
"",
"Нам нужно не подтверждение IPaC, а способность аргументированно отвечать внешнему критику: почему IPaC не равен соседней области; где пересечение; где наследование; где собственная зона IPaC; что требует field validation.",
"",
"В конце выбери один следующий sprint и сформулируй: цель; входные файлы; исследовательские вопросы; expected output; guardrails.",
"",
"Статус в конце: DR002_SELECTED; DR002_SELECTION_WITH_NOTES; DR002_SELECTION_BLOCKED."
)

$Prompt11 = @(
"# CHAT 11_CODEX_PREP — Future Action Layer Readiness",
"",
"Ты выступаешь как Codex / Action Layer Readiness Auditor.",
"",
"Твоя задача — не запускать Codex, а подготовить карту будущей связки Project + Codex.",
"",
"Контекст:",
"",
"Project должен стать главным мыслителем IPaC.",
"Codex позже должен стать деятельным слоем: работать с файлами, Git, Vault, scripts, packs, controlled updates.",
"",
"Используй ресурсы Project, особенно tools scripts, Life / Baseline Drift rule, Safe Project Rules, Multi-layer Knowledge Representation, decisions and reviews.",
"",
"Сформируй:",
"",
"# IPaC Codex Readiness Map v0.1",
"",
"## 1. What Project Should Think",
"Какие решения и reasoning остаются за Project.",
"",
"## 2. What Codex May Do Later",
"Какие действия может выполнять Codex после task pack approval: create files; move files; run scripts; update Git; build input packs; generate manifests; check status; prepare commits.",
"",
"## 3. What Codex Must Not Do",
"Update canon without decision; infer user intent; run uncontrolled execution; overwrite artifacts without diff; bypass Git status / diff; mix housekeeping and semantic commits.",
"",
"## 4. Required Task Pack Format",
"Определи формат будущего task pack для Codex: objective; input files; output files; allowed commands; forbidden actions; verification steps; commit message; rollback plan.",
"",
"## 5. Readiness Gaps",
"Что надо подготовить до первой реальной связки с Codex.",
"",
"Final status: CODEX_READINESS_MAP_READY; CODEX_READINESS_PARTIAL; CODEX_READINESS_BLOCKED."
)

Set-Content -Path (Join-Path $PromptDir "09_SYNC_Project_State_Reconciliation_PROMPT.md") -Value $Prompt09 -Encoding UTF8
Set-Content -Path (Join-Path $PromptDir "10_NEXT_DR002_Boundary_Sprint_Selection_PROMPT.md") -Value $Prompt10 -Encoding UTF8
Set-Content -Path (Join-Path $PromptDir "11_CODEX_PREP_Future_Action_Layer_Readiness_PROMPT.md") -Value $Prompt11 -Encoding UTF8

# --- 6. Create README and manifest ---
$ReadmePath = Join-Path $OutDir "READ_ME_PROJECT_RESOURCE_SYNC.md"
$ReadmeLines = @(
"# IPaC Project Resource Sync Pack",
"",
"## Purpose",
"",
"This pack aligns ChatGPT Project Resources with the current Vault/Git state after DR-001.",
"",
"## What to upload to Project Resources",
"",
"Upload files from:",
"",
"01_UPLOAD_TO_PROJECT_RESOURCES/",
"",
"Minimum: upload all REQ_ files.",
"If allowed, upload OPT_ files too, especially tools and vault orientation files.",
"",
"## What prompts to run",
"",
"Use prompts from:",
"",
"02_PROMPTS_FOR_PROJECT_CHATS/",
"",
"Suggested chats:",
"",
"09_SYNC — Project State Reconciliation",
"10_NEXT — DR-002 Boundary Sprint Selection",
"11_CODEX_PREP — Future Action Layer Readiness",
"",
"Run 09_SYNC first.",
"",
"## Status discipline",
"",
"Vault / Git remains source-of-truth.",
"Project becomes main thinker after resource sync.",
"Codex later becomes action layer only through approved task packs.",
"Canon remains locked unless review / decision / controlled canon update authorizes a change."
)

Set-Content -Path $ReadmePath -Value $ReadmeLines -Encoding UTF8

$ManifestPath = Join-Path $ManifestDir "PROJECT_RESOURCE_SYNC_MANIFEST.md"
$ManifestLines = New-Object System.Collections.Generic.List[string]

$ManifestLines.Add("# Project Resource Sync Pack Manifest")
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
    $ManifestLines.Add("PROJECT_RESOURCE_SYNC_PACK_READY")
}
else {
    $ManifestLines.Add("PROJECT_RESOURCE_SYNC_PACK_PARTIAL_REQUIRED_FILES_MISSING")
}

Set-Content -Path $ManifestPath -Value $ManifestLines -Encoding UTF8

# --- 7. Create ZIP ---
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
    Write-Host "STATUS: PROJECT_RESOURCE_SYNC_PACK_READY" -ForegroundColor Green
}
else {
    Write-Host "STATUS: PROJECT_RESOURCE_SYNC_PACK_PARTIAL_REQUIRED_FILES_MISSING" -ForegroundColor Red
    Write-Host "Missing required files:" -ForegroundColor Red
    foreach ($x in $MissingRequired) {
        Write-Host "  - $($x.MissingPath)" -ForegroundColor Red
    }
}

Write-Host ""
Write-Host "NEXT:" -ForegroundColor Cyan
Write-Host "1. Upload Project Resource files from: $ResourceDir"
Write-Host "2. Run prompts from: $PromptDir"
Write-Host "3. Start with 09_SYNC."
Write-Host ""
Write-Host "Opening pack folder..." -ForegroundColor Cyan

explorer.exe $OutDir
