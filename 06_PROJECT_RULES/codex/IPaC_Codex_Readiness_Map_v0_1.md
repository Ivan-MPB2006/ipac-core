# IPaC Codex Readiness Map v0.1

```yaml
artifact_id: IPAC-CODEX-READINESS-MAP-001
artifact_type: readiness_map
status: readiness_map_ready
version: 0.1
layer: action_layer_preparation / codex_backlog
scope: future Project + Codex handoff discipline
codex_activation_authorized: false
execution_authorized: false
canon_update_authorized: false
mvi_authorized: false
field_validated: false
```

---

## 0. Status

Этот документ готовит карту будущей связки:

```text
ChatGPT Project
→ reasoning / review / decision / task pack approval

Codex
→ bounded file / Git / script action layer after approval
```

Документ НЕ запускает Codex.

Документ НЕ является:

- Codex task pack;
- execution plan;
- implementation plan;
- MCP / RAG / Neo4j design;
- MVI / MVP activation;
- разрешением на автоматические canon updates.

Документ является:

- readiness map;
- boundary discipline;
- будущим форматом handoff;
- защитой от tool capture и execution drift.

Короткая формула:

```text
Project думает и решает.
Codex действует только по утверждённому task pack.
Git показывает след.
Review решает, что стало знанием.
```

---

## 1. What Project Should Think

Project остаётся главным мыслительным и смысловым центром IPaC.

### 1.1. Decisions Reserved for Project

| Decision Area | Project Responsibility | Codex Role |
|---|---|---|
| Core Need | удерживать, уточнять, защищать от drift | не интерпретирует самостоятельно |
| Concept Core | различать смысл, термины, границы | не переписывает без утверждённого текста |
| Architecture Invariants | проверять, не попало ли execution в architecture core | не продвигает execution items в architecture |
| Hypothesis / Validation | отличать hypothesis, research support, evidence, field validation | не объявляет validation |
| Research Interpretation | решать, что research меняет в boundary map | не обновляет canon из отчёта напрямую |
| Canon Update | запускать review → decision → trace | не меняет canon без decision |
| Parking Lot | решать, что остаётся parked / deferred / archive | не активирует parked items |
| Task Pack Approval | утверждать цель, входы, выходы, команды, rollback | выполняет только утверждённый scope |
| Commit Meaning | определять semantic boundary commit-а | готовит / выполняет commit только по approval |
| Rollback Decision | решать, что считать ошибкой смысла | выполняет технический rollback по инструкции |

### 1.2. Reasoning Reserved for Project

Project должен сохранять за собой:

- интерпретацию пользовательского намерения;
- выбор слоя артефакта: Need / Concept / Architecture / Hypothesis / Research / Validation / MVP / Execution / Trace / Parking;
- решение, является ли изменение semantic, housekeeping, research, trace, rules, parking или generated export;
- проверку, не создаёт ли действие execution drift;
- проверку, не превращается ли toolchain в architecture core;
- определение, можно ли использовать скрипт;
- формулировку commit message;
- решение, что делать с unexpected diff;
- разрешение ambiguous cases;
- финальный semantic acceptance review.

### 1.3. Project Review Questions Before Any Codex Task

Перед передачей задачи Codex Project должен ответить:

```text
1. Какова цель действия?
2. Какой слой знания затрагивается?
3. Есть ли approved source-of-truth?
4. Какие файлы являются входами?
5. Какие файлы разрешено изменить?
6. Какие команды разрешены?
7. Какие действия запрещены?
8. Как проверяется результат?
9. Какой diff ожидается?
10. Какой rollback допустим?
11. Нужен ли commit?
12. Какой commit message разрешён?
```

Если хотя бы один ответ неясен, task pack не готов.

---

## 2. What Codex May Do Later

Codex может стать деятельным слоем только после explicit task pack approval.

### 2.1. File Actions

| Action | Allowed Only If | Verification |
|---|---|---|
| create files | path, content source, status, layer approved | file exists, content matches task pack |
| update files | exact file list approved | diff reviewed |
| move files | source and target paths approved | old path removed, new path exists |
| rename files | naming rule approved | links / references checked |
| copy files | source and destination approved | checksum / size / presence checked |
| generate manifests | manifest schema approved | manifest lists expected files |
| generate inventories | inventory scope approved | no semantic interpretation added |
| build ZIP/input packs | script or file list approved | archive exists, contents inspected |
| update templates | template scope approved | template diff reviewed |

### 2.2. Script Actions

Codex may later run approved scripts, for example:

```text
OPT_01_TOOL_Prepare_DR001_DeepResearch_InputPack_v0_1.ps1
OPT_02_TOOL_Prepare_DR001P_Perplexity_InputPack_v0_1.ps1
```

Allowed script use pattern:

```text
Probe
→ run approved script
→ inspect generated folder
→ inspect manifest
→ inspect git status
→ inspect diff / generated export noise
→ report result
→ commit only if separately approved
```

Scripts are not autonomous agents.

A script may:

- collect required / optional files;
- create flat upload folders;
- create prompt files;
- create manifests;
- create ZIP packages;
- prepare input packs;
- report missing files.

A script may not:

- update canon;
- decide research conclusions;
- commit without approval;
- silently overwrite accepted artifacts;
- treat missing required files as acceptable without reporting;
- turn generated exports into research artifacts automatically.

### 2.3. Git Actions

Codex may later run:

```powershell
git status
git diff --stat
git diff
git add <approved-path>
git commit -m "<approved-message>"
git push
git restore -- <approved-path>
```

Only under task pack control.

Preferred Git sequence:

```text
git status
git diff --stat
git diff
perform approved action
git status
git diff --stat
git diff
git add approved files only
git status
git commit -m approved message
git push
git status
```

### 2.4. Pack / Manifest Actions

Codex may later prepare:

- Deep Research input packs;
- Perplexity triangulation packs;
- review input packs;
- source package manifests;
- file inventories;
- checksum lists;
- missing input reports;
- generated export summaries.

These outputs remain operational artifacts unless Project promotes them through review.

### 2.5. Commit Preparation

Codex may prepare commits in separated groups:

| Commit Type | Example |
|---|---|
| `docs(rules)` | add or update project rules |
| `docs(canon)` | add canon note only after decision |
| `docs(trace)` | add trace or decision record |
| `docs(research)` | add research artifact / backlog |
| `docs(parking)` | add parked item summary |
| `chore(inventory)` | update file inventory |
| `chore(exports)` | handle generated export housekeeping |

Codex must keep semantic commits separate from housekeeping commits.

---

## 3. What Codex Must Not Do

### 3.1. Absolute Prohibitions

Codex must not:

```text
update canon without review → decision → trace
infer user intent
run uncontrolled execution
overwrite artifacts without diff
bypass Git status / diff
mix housekeeping and semantic commits
activate parked items
start MVP / MVI
start Deep Research
start public-channel execution
activate MCP / RAG / Neo4j
turn tooling into architecture core
treat research support as field validation
treat feedback as evidence without review
```

### 3.2. No Canon Mutation

Codex must not modify:

```text
01_CANON
Core Canon
Constitution
Lifecycle canon note
Architecture Invariants
accepted decision records
```

unless task pack includes:

```text
canon-impact review reference
accepted decision record
exact target files
exact approved wording
rollback plan
commit message
```

### 3.3. No Semantic Inference

Codex must not decide:

- what user “really meant”;
- whether a research finding is true;
- whether a concept should be accepted;
- whether a parked item is now active;
- whether a candidate becomes canon;
- whether a public claim is safe;
- whether validation has happened.

Codex can report discrepancies.

Project decides.

### 3.4. No Silent Overwrite

Codex must never replace a file without:

```text
pre-change git status
pre-change diff
declared target file
backup / rollback plan
post-change diff
Project-readable summary
```

### 3.5. No Activation Language

Codex commit messages must avoid:

```text
implement
launch
deploy
execute
activate
productionize
start MVI
start MVP
enable Codex
enable MCP
```

unless Project explicitly authorizes such activation in a separate accepted decision.

Preferred safe verbs:

```text
add
record
preserve
prepare
stage
review
classify
document
archive
park
update inventory
```

---

## 4. Required Task Pack Format

Every future Codex task must be expressed as a bounded task pack.

### 4.1. Minimal YAML Header

```yaml
task_pack_id: IPAC-CODEX-TASK-000
title: ""
status: draft | approved | executed | rejected | superseded
version: 0.1
requested_by: human_project_owner
approved_by: human_project_owner
date: YYYY-MM-DD
scope: ""
layer: rules | canon | trace | research | parking | source_package | export | housekeeping
codex_authorized: true
canon_update_authorized: false
mvi_authorized: false
execution_authorized: false
rollback_required: true
```

### 4.2. Required Sections

```markdown
# Codex Task Pack — <Title> v0.1

## 1. Objective
One precise objective.

## 2. Background / Reason
Why this task exists.
What decision or review authorized it.

## 3. Input Files
| Path | Role | Required? | Notes |
|---|---|---:|---|

## 4. Output Files
| Path | Action | Status After Task | Notes |
|---|---|---|---|

## 5. Allowed Commands
Exact command whitelist.

## 6. Forbidden Actions
Explicit prohibitions.

## 7. Execution Steps
Numbered operational steps.

## 8. Verification Steps
How Codex must prove the result.

## 9. Expected Git Diff
What files should appear as changed / new / deleted.

## 10. Commit Plan
Commit grouping and approved commit message.

## 11. Rollback Plan
How to restore prior state if verification fails.

## 12. Stop Conditions
When Codex must stop and return to Project.

## 13. Final Report Format
What Codex must report back.
```

### 4.3. Allowed Commands Section Template

```powershell
git status
git diff --stat
git diff
powershell -ExecutionPolicy Bypass -File .\<approved-script>.ps1
Get-ChildItem <approved-path>
Test-Path <approved-path>
Copy-Item <approved-source> <approved-target>
New-Item -ItemType Directory <approved-path>
Set-Content <approved-path>
Compress-Archive <approved-path> <approved-zip>
git add <approved-paths>
git commit -m "<approved-message>"
git push
git restore -- <approved-path>
```

No command is allowed merely because it is convenient.

### 4.4. Forbidden Actions Section Template

```text
Do not modify canon unless canon_update_authorized: true.
Do not modify files outside output list.
Do not run unlisted scripts.
Do not delete files unless deletion is explicitly listed.
Do not commit generated exports as research artifacts.
Do not combine semantic and housekeeping changes.
Do not use activation language in commit messages.
Do not push if git status contains unexpected modified files.
Do not resolve ambiguity by guessing.
```

### 4.5. Verification Steps Template

```powershell
git status
git diff --stat
git diff
Test-Path <expected-output>
Get-ChildItem <expected-folder>
```

Semantic verification must be reported in human-readable form:

```text
Expected files created:
Unexpected files changed:
Missing files:
Generated exports:
Suggested commit:
Rollback available:
Open questions:
```

### 4.6. Commit Plan Template

```text
Commit 1:
type: docs(rules) | docs(trace) | docs(research) | docs(parking) | chore(...)
files:
  - path/to/file.md
message: "<approved commit message>"
reason: "<why these files belong together>"

Commit 2:
...
```

Rule:

```text
One semantic unit = one commit.
Generated noise ≠ semantic artifact.
```

### 4.7. Rollback Plan Template

For uncommitted changes:

```powershell
git restore -- <file>
```

For newly created uncommitted files:

```powershell
Remove-Item <file-or-folder> -Recurse -Force
```

For committed changes:

```text
Do not force-push.
Do not reset shared history without explicit human instruction.
Prepare a revert proposal.
Project decides whether to run git revert.
```

---

## 5. Readiness Gaps

### 5.1. Codex Boundary Review Missing

A dedicated Codex Boundary Review should exist before real activation.

Suggested future artifact:

```text
08_TRACE_AND_DECISIONS/reviews/CODEX_BOUNDARY_REVIEW_v0_1.md
```

Purpose:

```text
Define when Codex may act,
what counts as safe action,
what requires Project review,
and what remains parked.
```

### 5.2. Task Pack Template Not Yet Canonized

This document proposes a task pack format, but the template itself should be saved later as a reusable artifact.

Suggested future path:

```text
06_PROJECT_RULES/templates/CODEX_TASK_PACK_TEMPLATE_v0_1.md
```

Status before review:

```text
candidate_template
not canon
```

### 5.3. Script Registry Needed

Existing tool scripts should be registered in an approved script registry.

Suggested future path:

```text
02_REGISTERS/09_TOOLS/APPROVED_SCRIPT_REGISTER.csv
```

Minimum fields:

```text
script_id
path
purpose
allowed_inputs
expected_outputs
risk
approved_for_codex
requires_human_review
last_reviewed
```

### 5.4. Generated Export Policy Needs Hardening

Generated folders such as input packs and ZIP exports need a clear `.gitignore` / commit policy.

Required decision:

```text
Which generated exports are ignored?
Which manifests are committed?
Which ZIPs are stored?
Which exports remain local-only?
```

### 5.5. Git Commit Policy for Codex Needed

A Codex-specific Git policy should define:

- branch use;
- commit grouping;
- push authorization;
- revert procedure;
- handling of unexpected modified files;
- distinction between semantic and housekeeping commits.

Suggested future path:

```text
06_PROJECT_RULES/CODEX_GIT_OPERATION_POLICY_v0_1.md
```

### 5.6. Dry-Run Task Needed Before Real Use

Before Codex modifies meaningful artifacts, run a harmless dry task.

Candidate dry-run:

```text
Create a temporary manifest in a sandbox/export folder,
verify it,
delete it,
confirm git status clean.
```

This validates the action loop without touching canon, research, or decisions.

### 5.7. Acceptance Criteria Vocabulary Needed

Future task packs need standard acceptance levels:

```text
PASS
PASS_WITH_NOTES
FAIL_DIFF_UNEXPECTED
FAIL_MISSING_INPUT
FAIL_SCOPE_VIOLATION
FAIL_CANON_RISK
FAIL_ROLLBACK_REQUIRED
```

### 5.8. Human Review Gate Needed

Every Codex report should end with:

```text
READY_FOR_PROJECT_REVIEW
NOT_READY_UNEXPECTED_DIFF
NOT_READY_MISSING_INPUTS
NOT_READY_SCOPE_AMBIGUITY
```

Project then decides next action.

---

## 6. Recommended First Safe Codex Task Later

Not to execute now.

Recommended first real task after boundary approval:

```text
Create Codex Task Pack Template v0.1
```

Why this first:

- it is meta-process, not canon mutation;
- it strengthens safety;
- it does not activate MVP / MVI;
- it does not require MCP / RAG / Neo4j;
- it can be verified by file presence and diff;
- it teaches the Project + Codex handoff loop.

Expected output:

```text
06_PROJECT_RULES/templates/CODEX_TASK_PACK_TEMPLATE_v0_1.md
```

Commit message:

```text
rules: add Codex task pack template
```

Guardrail:

```text
Do not run Codex from this document.
First create and approve a separate task pack.
```

---

## 7. Final Verdict

```text
CODEX_READINESS_MAP_READY
```

Meaning:

```text
The readiness map is ready.
The action-layer boundary is defined.
Codex remains not activated.
Actual Codex execution requires a separately approved task pack.
```

Operational status:

| Area | Status |
|---|---|
| Project as thinker | ready |
| Codex as future action layer | bounded, not active |
| Task pack format | proposed |
| Actual Codex activation | not authorized |
| Canon update via Codex | blocked unless decision exists |
| Script execution via Codex | future only, task-pack gated |
| Git operations via Codex | future only, status/diff/rollback gated |
| MVP / MVI | not authorized |
| MCP / RAG / Neo4j | parked |
| Public channels | parked |

Final formula:

```text
Codex can become IPaC’s hands only after Project has decided what the hands are allowed to touch.
```
