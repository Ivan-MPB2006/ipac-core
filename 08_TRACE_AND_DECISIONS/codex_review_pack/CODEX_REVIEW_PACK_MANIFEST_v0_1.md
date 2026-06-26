# CODEX_REVIEW_PACK_MANIFEST_v0_1
## IPaC OS MVP-0 — пакет для ревью Codex

```yaml
artifact_id: CODEX-REVIEW-PACK-MANIFEST-v0.1
artifact_type: codex_review_pack_manifest
status: candidate
canon_status: not_canon
date: 2026-06-21
purpose: prove_principled_feasibility_and_expediency
deadline_mode: true
```

# 1. Цель пакета

Пакет нужен для разговора с Codex как с внешним техническим оппонентом.

Цель:

```text
1. Доказать принципиальную реализуемость MVP-0.
2. Доказать принципиальную целесообразность MVP-0.
3. Получить от Codex техническую оценку: может ли он быть bounded I/O layer.
4. Получить минимальный MVP Task Pack, если реализуемость подтверждается.
```

# 2. Главная проверка

```text
Может ли Codex + MCP работать как ограниченный операционный слой:

Obsidian/Git → Context Working Set → Project Supervisor
→ Visible Artifact → QA → Codex Review → MVP Task Pack

без самовольной канонизации, commit, push и расширения scope?
```

# 3. Состав пакета

```text
01. CODEX_REVIEW_PACK_MANIFEST_v0_1.md
02. IPAC_OS_MVP0_DEMONSTRATION_SCENARIO_v0_1.md
03. CODEX_REVIEW_QUESTIONS_v0_1.md
04. CODEX_BOUNDARY_CONDITIONS_v0_1.md
05. VISIBLE_RESULT_INDEX_v0_1.md
06. SYSTEM_INTERACTION_MAP_ASCII_v0_1.md
07. CODEX_MCP_FEASIBILITY_MATRIX_v0_1.md
08. CODEX_REVIEW_PROMPT_v0_1.txt
```

# 4. Ожидаемый результат от Codex

```text
CODEX_FEASIBILITY_CHECK_REPORT_v0_1.md
CODEX_EXPEDIENCY_REVIEW_v0_1.md
CODEX_MVP0_TASK_PACK_PROPOSAL_v0_1.md
```

# 5. Запрет

```text
Codex не делает git add / commit / push.
Codex не канонизирует IPaC OS.
Codex не переписывает архитектурное ядро.
Codex не трогает Project Resources.
Codex возвращает review/report/patch proposal.
```
