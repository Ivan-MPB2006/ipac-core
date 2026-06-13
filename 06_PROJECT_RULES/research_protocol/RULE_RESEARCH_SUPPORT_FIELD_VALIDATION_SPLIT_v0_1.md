# RULE — Research Support / Field Validation Split v0.1  
## Правило: разделение research support и field validation

```yaml
artifact_id: RULE-IPAC-RESEARCH-SUPPORT-FIELD-VALIDATION-SPLIT-001
artifact_type: project_rule
status: accepted_project_rule_candidate
version: 0.1
layer: project_rules / research_protocol
scope: validation discipline / research reports / canon protection
date: 2026-06-13
canon_update_authorized: false
field_validated: process_rule
```

---

# 1. Rule Statement

```text
Research support не равен field validation.
```

Исследование может уточнить границы, источники, формулировки и риски, но не доказывает практическую ценность IPaC.

---

# 2. Mandatory Split

Каждый research report и review должен разделять:

| Category | Meaning |
|---|---|
| Research-supported | поддержано источниками / сравнением |
| Hypothesis | разумная, но не подтверждённая гипотеза |
| Speculation | сильная идея без достаточной поддержки |
| Needs field validation | требует практической проверки |
| Not supported | не подтверждено |
| Canon candidate | можно рассмотреть после review / decision |
| Canon update authorized | только после отдельного decision |

---

# 3. Required Output Section

Каждый research report должен содержать:

```text
## Field Validation Questions
```

Каждый review должен содержать:

```text
## Research Support vs Field Validation Split
```

---

# 4. Typical Field Validation Questions

```text
1. Понимает ли внешний пользователь IPaC без автора?
2. Снижает ли IPaC complexity на практике?
3. Уменьшает ли IPaC drift между чатами / агентами?
4. Работает ли feedback → review → decision → rebuild под нагрузкой?
5. Не превращается ли IPaC в бюрократию?
6. Полезен ли IPaC для decision-preparation / ЛПР?
7. Улучшается ли reuse knowledge artifacts?
```

---

# 5. Canon Protection

Запрещено:

```text
Deep Research report → direct canon update
```

Разрешено:

```text
Deep Research report
→ Research Review
→ Decision Record
→ Controlled Canon Update Proposal
→ Canon update
```

---

# 6. Example from DR-002

Research-supported:

```text
Context Engineering currently appears to be an emerging AI-era practice cluster.
```

Hypothesis:

```text
IPaC may be broader than Context Engineering at the knowledge-lifecycle level.
```

Field validation required:

```text
Does IPaC actually improve long-term knowledge retention, feedback absorption and reuse in real workflows?
```

---

# 7. Placement

```text
06_PROJECT_RULES/research_protocol/RULE_RESEARCH_SUPPORT_FIELD_VALIDATION_SPLIT_v0_1.md
```

---

# 8. Status

```text
RULE_READY_FOR_LONG_TERM_USE
APPLIES_TO_ALL_RESEARCH_REPORTS_AND_REVIEWS
```
