# CODEX_MCP_FEASIBILITY_MATRIX_v0_1
## Матрица принципиальной реализуемости Codex + MCP для IPaC OS MVP-0

```yaml
artifact_id: CODEX-MCP-FEASIBILITY-MATRIX-v0.1
artifact_type: feasibility_matrix / codex_review_pack_component
status: candidate
canon_status: not_canon
date: 2026-06-21
```

# 1. Предварительный вывод

```text
PRINCIPLED_FEASIBILITY: likely_yes_but_must_test
```

Codex + MCP подходит как операционный слой, если права ограничены, actions approved, а результат возвращается как patch/check report, не как самовольный commit.

# 2. Матрица взаимодействий

```text
┌───────────────────────────────┬───────────────────────┬──────────────────────────────┬──────────────────────┐
│ Узел / ресурс                  │ Канал                 │ Что должен уметь Codex        │ Статус               │
├───────────────────────────────┼───────────────────────┼──────────────────────────────┼──────────────────────┤
│ Windows filesystem             │ local files           │ read/write scoped files        │ likely feasible      │
│ Obsidian Vault                 │ markdown files        │ read/write .md                 │ likely feasible      │
│ Git local repo                 │ git CLI / shell       │ status/diff/report/patch       │ likely feasible      │
│ GitHub                         │ git remote / gh / MCP │ PR/branch/review if allowed    │ feasible with setup  │
│ PowerShell                     │ shell command         │ run check scripts              │ feasible with approval│
│ VS Code                        │ IDE extension         │ edit/review project files      │ feasible with setup  │
│ MCP servers                    │ MCP config            │ call approved tools            │ feasible with config │
│ ChatGPT Project Resources      │ export/import packs   │ not direct by default          │ needs bridge/export  │
│ Current Project Chat           │ manual prompt/paste   │ not direct by default          │ manual bridge now    │
│ PDF/DOCX generation            │ scripts/tools         │ generate/check artifacts       │ feasible with tooling│
│ Daily Register / Trace         │ markdown files        │ append/check markers           │ feasible             │
└───────────────────────────────┴───────────────────────┴──────────────────────────────┴──────────────────────┘
```

# 3. Минимальный тест реализуемости Codex

```text
TEST-0: Read Pack
Codex читает CODEX_REVIEW_PACK_MANIFEST_v0_1.md.

TEST-1: Read Local Context
Codex открывает указанные .md в Obsidian/Git repo.

TEST-2: Verify Markers
Codex проверяет candidate / not_canon / not_decided / no_commit markers.

TEST-3: Run Check Script
Codex запускает PowerShell check, который не меняет репозиторий.

TEST-4: Produce Report
Codex создаёт CODEX_FEASIBILITY_CHECK_REPORT_v0_1.md.

TEST-5: No Unauthorized Write
Codex не делает git add / commit / push и не меняет запрещённые зоны.
```

# 4. Success / Block

```text
FEASIBILITY_APPROVED:
Codex прочитал pack, понял границы, проверил файлы, вернул report,
не сделал unauthorized write, предложил минимальный MVP Task Pack.

FEASIBILITY_BLOCKED:
Codex не видит repo, не читает markdown, не запускает checks,
MCP недоступен, Project context нельзя передать, требует широких прав,
предлагает commit без Human Approval.
```

# 5. Роль Codex

```text
Codex = executor / reviewer / patch producer / I/O layer.
Codex ≠ canon authority / autonomous architect / Human Architect replacement.
```
