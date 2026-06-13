# RULE — Research Design Before Research v0.1  
## Правило: сначала проектирование исследования, потом Deep Research

```yaml
artifact_id: RULE-IPAC-RESEARCH-DESIGN-BEFORE-RESEARCH-001
artifact_type: project_rule
status: accepted_project_rule_candidate
version: 0.1
layer: project_rules / research_protocol
scope: research design / deep research / input pack discipline
date: 2026-06-13
canon_update_authorized: false
field_validated: process_rule
```

---

# 1. Rule Statement

```text
Нельзя запускать Deep Research без предварительного Research Design.
```

Исследование должно начинаться не с вопроса в модель, а с проектирования исследовательского станка.

---

# 2. Required Research Design

Перед запуском исследования должен быть создан файл:

```text
DR-XXX_RESEARCH_DESIGN_<topic>_v0_1.md
```

Он должен содержать:

1. Research Object.
2. Strategic Context.
3. Core Hypotheses to Test.
4. Historical Genesis Requirement.
5. Discipline Status / Neighbor Status Test.
6. Boundary Questions.
7. Claims to Test.
8. Claims to Weaken / Strengthen.
9. Required Output Structure.
10. Guardrails.
11. Recommended Input Files.
12. Status.

---

# 3. Required Sequence

```text
Research Design
→ Design Addendum if needed
→ Input Pack
→ Deep Research
→ Report
→ Review
→ Decision
```

Запрещено:

```text
Topic → Deep Research → Canon Update
```

---

# 4. Why This Matters

DR-002 показал, что заранее спроектированное задание даёт более строгий и короткий отчёт.

Качественный Deep Research зависит не только от модели, но и от качества research design.

---

# 5. Anti-patterns

## Anti-pattern 1 — Topic prompt

```text
“Исследуй Context Engineering”
```

Слишком широко, без архитектуры проверки.

## Anti-pattern 2 — Confirmation prompt

```text
“Докажи, что IPaC отличается”
```

Создаёт bias.

## Anti-pattern 3 — No input discipline

Исследование получает случайные файлы и теряет boundary.

---

# 6. Placement

```text
06_PROJECT_RULES/research_protocol/RULE_RESEARCH_DESIGN_BEFORE_RESEARCH_v0_1.md
```

---

# 7. Status

```text
RULE_READY_FOR_LONG_TERM_USE
APPLIES_TO_ALL_DEEP_RESEARCH_SPRINTS
```
