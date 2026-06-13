# RULE — Discipline Status and Neighborhood Map for Boundary Research v0.1  
## Правило: статус сопредельной области и карта соседства для boundary research

```yaml
artifact_id: RULE-IPAC-DISCIPLINE-STATUS-NEIGHBORHOOD-MAP-001
artifact_type: project_rule
status: accepted_project_rule_candidate
version: 0.1
layer: project_rules
scope: boundary research / discipline status / neighborhood map / research cycle governance
date: 2026-06-13
canon_update_authorized: false
field_validated: process_rule
origin:
  - DR-002_DISCIPLINE_STATUS_AND_NEIGHBORHOOD_MAP_ADDENDUM_v0_1.md
  - DR-002_RESEARCH_DESIGN_IPaC_vs_CONTEXT_ENGINEERING_v0_1.md
```

---

# 1. Rule Statement

Перед каждым boundary research sprint необходимо определить не только границу IPaC с соседней областью, но и статус самой соседней области.

Короткая формула:

```text
Сначала определить, кто сосед.
Потом определять границу.
```

Расширенная формула:

```text
Нельзя сравнивать IPaC с областью,
пока не выяснено,
является ли эта область зрелой дисциплиной,
практическим кластером,
toolchain pattern,
ролью,
маркетинговым термином
или метафорой.
```

---

# 2. Why This Rule Exists

В ходе подготовки DR-002 возникла методологическая проблема:

```text
Context Engineering может называться engineering,
но это ещё не доказывает, что за ним стоит инженерная дисциплина.
```

Следовательно, IPaC не должен автоматически принимать статус соседней области на веру.

Пример:

```text
Knowledge Engineering
= зрелая историческая область с методами, объектами и литературой.

Context Engineering
= возможно emerging AI-era practice cluster,
а не самостоятельная дисциплина.
```

Правило вводится для всех будущих исследовательских циклов, чтобы не сравнивать IPaC с “названиями”, не проверив, что за ними стоит.

---

# 3. Mandatory Application

Правило применяется ко всем boundary research sprints:

```text
DR-002 — IPaC vs Context Engineering
DR-003 — IPaC vs Docs-as-Code / DocOps
DR-004 — IPaC vs Software Engineering / Software Production
DR-005 — IPaC and Cognitive Systems Engineering
DR-006 — IPaC and Decision Support / ЛПР
DR-007 — IPaC vs Knowledge Management
DR-008 — IPaC vs Provenance / PROV-O / Semantic Drift
DR-009 — IPaC vs Information Architecture / Content Strategy
```

Каждый такой sprint должен содержать:

1. Discipline Status Test.
2. Neighborhood Jurisdiction Map.
3. Boundary / Overlap / Difference Map.
4. Claims to Weaken.
5. Claims to Strengthen.
6. Field Validation Gaps.

---

# 4. Discipline Maturity Test

Для каждой сопредельной области необходимо проверить следующие критерии.

| Criterion | Research Question | Evidence to Look For |
|---|---|---|
| Object | Есть ли собственный объект инженерии? | Что именно проектируется, производится, поддерживается или проверяется |
| Problem Field | Какую устойчивую проблему область решает? | Повторяемая проблема, не сводимая к одному инструменту |
| Methodology | Есть ли устойчивые методы? | Frameworks, methods, patterns, procedures |
| Validation | Как проверяется качество результата? | Metrics, tests, review procedures, field validation |
| Lifecycle | Есть ли жизненный цикл объекта? | Create / maintain / update / retire / rebuild |
| Standards | Есть ли стандарты или best practices? | Standards, de facto practices, reference models |
| Professional Role | Есть ли признанная роль? | Job titles, communities, responsibilities |
| Institutional Base | Есть ли институциональная база? | Books, courses, papers, conferences, communities |
| Failure Modes | Понятно ли, как область ломается? | Known errors, anti-patterns, risks |
| Boundary Clarity | Понятно ли, где область заканчивается? | Distinction from neighboring fields |

---

# 5. Status Classes for Neighboring Areas

После Discipline Maturity Test область должна быть классифицирована.

| Status Class | Meaning | Examples / Notes |
|---|---|---|
| Foundational Discipline | Зрелая дисциплина с историей, объектом, методами и literature base | Knowledge Engineering, Software Engineering |
| Applied Practice Field | Прикладная область с устойчивыми практиками | Docs-as-Code, Knowledge Management |
| Standardized Technical Layer | Технический слой со стандартами / формальными моделями | PROV-O, Configuration Management |
| Emerging Practice Cluster | Новый набор практик вокруг новой технологической боли | possible status of Context Engineering |
| Toolchain Pattern | Инструментальная связка без самостоятельной дисциплины | RAG pipeline, Obsidian + Git workflow |
| Role Label | Название роли, дисциплина ещё не оформилась | Context Engineer, AI Workflow Engineer |
| Marketing Term | Термин продвигается быстрее, чем методология | risk in fast AI discourse |
| Metaphor / Positioning Term | Сильная метафора, не дисциплина | operating layer, living knowledge |
| Insufficient Evidence | Недостаточно источников для классификации | use when evidence is weak |

---

# 6. Neighborhood Jurisdiction Map

Для каждой соседней области нужно определить:

```text
На каких правах она соседствует с IPaC?
```

Типы сопредельности:

| Jurisdiction Type | Meaning |
|---|---|
| Foundational inheritance | IPaC наследует фундаментальные идеи |
| Methodological overlap | IPaC использует похожие методы |
| Toolchain overlap | IPaC использует похожие инструменты |
| Terminology conflict | Термины IPaC могут быть переименованием старых понятий |
| Functional subset | Соседняя область является частным слоем внутри IPaC |
| Superset risk | Соседняя область может оказаться шире IPaC в конкретном аспекте |
| Weak neighbor | Название есть, дисциплина ещё не сформировалась |
| Metaphoric neighbor | Соседство полезно как метафора, но не как evidence |
| Validation neighbor | Соседняя область даёт методы проверки / оценки |
| Implementation neighbor | Соседняя область важна для tooling / execution layer |

---

# 7. Required Questions in Every Boundary Sprint

Каждый boundary research sprint должен ответить на вопросы:

```text
1. Что это за соседняя область?
2. Каков её дисциплинарный статус?
3. Какова её история и генезис?
4. Что она уже умеет?
5. Где IPaC полностью пересекается с ней?
6. Какие термины IPaC рискуют быть переименованием старых понятий?
7. Что IPaC наследует от неё?
8. Что IPaC использует как метод / toolchain / analogy?
9. Что IPaC делает иначе?
10. Что у IPaC есть как сборка, а не как отдельный элемент?
11. Что у соседней области не является центральной целью?
12. Какие claims IPaC надо ослабить?
13. Какие claims IPaC можно усилить?
14. Что требует field validation?
15. Какой final boundary verdict допустим?
```

---

# 8. Mandatory Deep Research Prompt Block

Каждый будущий Deep Research prompt для boundary sprint должен содержать блок:

```text
Discipline Status and Neighborhood Map Requirement

Before comparing IPaC with the target neighboring field,
determine the status of that field itself.

Is it:
- a mature engineering discipline;
- an applied practice field;
- a standardized technical layer;
- an emerging practice cluster;
- a toolchain pattern;
- a role label;
- a marketing term;
- or a metaphor / positioning term?

Assess it using the Discipline Maturity Test:
object, problem field, methodology, validation, lifecycle, standards,
professional role, institutional base, failure modes and boundary clarity.

Do not assume that a field is an engineering discipline
merely because it uses the word “engineering”.
```

---

# 9. Mandatory Output Section

Каждый research report должен содержать раздел:

```text
## Discipline Status of the Neighboring Field
```

Обязательная таблица:

| Criterion | Evidence | Assessment | Confidence |
|---|---|---|---|

И итоговая классификация:

```text
FIELD_AS_FOUNDATIONAL_DISCIPLINE
FIELD_AS_APPLIED_PRACTICE_FIELD
FIELD_AS_STANDARDIZED_TECHNICAL_LAYER
FIELD_AS_EMERGING_PRACTICE_CLUSTER
FIELD_AS_TOOLCHAIN_PATTERN
FIELD_AS_ROLE_LABEL
FIELD_AS_MARKETING_TERM
FIELD_AS_METAPHOR
FIELD_STATUS_INSUFFICIENT_EVIDENCE
```

---

# 10. Anti-Patterns

## Anti-pattern 1 — Name acceptance

```text
Область называется engineering,
значит это инженерная дисциплина.
```

Почему опасно:

```text
можно принять role label или toolchain pattern за mature discipline.
```

## Anti-pattern 2 — Defensive boundary

```text
Соседняя область опасна,
поэтому надо доказать, что IPaC от неё полностью отличается.
```

Почему опасно:

```text
IPaC должен строить карту соседства, а не забор.
```

## Anti-pattern 3 — False novelty

```text
Если термин IPaC отличается, значит объект новый.
```

Почему опасно:

```text
термин может быть переименованием старого понятия.
```

## Anti-pattern 4 — Toolchain inflation

```text
Новая связка инструментов автоматически создаёт новую дисциплину.
```

Почему опасно:

```text
toolchain может быть полезной, но не иметь самостоятельной теории.
```

## Anti-pattern 5 — Overclaiming maximum hypothesis

```text
Максимальная гипотеза IPaC сразу объявляется доказанной областью.
```

Почему опасно:

```text
Research support ≠ field validation.
```

---

# 11. Relation to IPaC Min/Max Positioning

Это правило поддерживает стратегию:

```text
Не зажиматься во framework,
но и не объявлять новую инженерию раньше времени.
```

Оно помогает определить:

```text
какой уровень притязаний выдерживает карта соседства.
```

---

# 12. Process Integration

## 12.1 Before Research Design

Перед созданием research design:

```text
определить предполагаемые соседние области;
сформулировать discipline status questions;
добавить historical-genetic requirement.
```

## 12.2 During Research Design

В research design обязательно включить:

```text
Discipline Maturity Test;
Neighborhood Jurisdiction Map;
Reduction Test;
Claims to Weaken / Strengthen;
Field Validation Questions.
```

## 12.3 During Research Review

В research review проверить:

```text
ответил ли report на вопрос о статусе соседней области;
не принял ли report название за дисциплину;
различил ли report evidence / analogy / speculation;
показал ли report права сопредельности.
```

## 12.4 During Decision Record

В decision record зафиксировать:

```text
boundary verdict;
status of neighboring field;
IPaC inheritance;
IPaC overlap;
IPaC differentiating zone;
claims to weaken;
claims to strengthen;
next research gaps.
```

---

# 13. Placement

Рекомендуемое место:

```text
06_PROJECT_RULES/RESEARCH_DISCIPLINE_STATUS_AND_NEIGHBORHOOD_MAP_RULE_v0_1.md
```

---

# 14. Git Commit Recommendation

```powershell
git add .\06_PROJECT_RULES\RESEARCH_DISCIPLINE_STATUS_AND_NEIGHBORHOOD_MAP_RULE_v0_1.md
git commit -m "rules: add discipline status neighborhood map research rule"
git push
git status
```

---

# 15. Status

```text
RULE_READY_FOR_LONG_TERM_USE
CANON_LOCKED
APPLIES_TO_ALL_BOUNDARY_RESEARCH_SPRINTS
```
