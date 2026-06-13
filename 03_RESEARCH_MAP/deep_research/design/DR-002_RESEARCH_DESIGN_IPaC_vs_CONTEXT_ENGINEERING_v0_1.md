# DR-002 Research Design v0.1  
## IPaC vs Context Engineering  
### Историко-генетическое и boundary-исследование

```yaml
artifact_id: DR-002-RESEARCH-DESIGN-IPAC-VS-CONTEXT-ENGINEERING-001
artifact_type: research_design
status: ready_for_input_pack
version: 0.1
layer: research_map / deep_research_design
scope: IPaC vs Context Engineering / boundary research / historical roots / reduction test
date: 2026-06-13
canon_update_authorized: false
field_validated: false
depends_on:
  - DECISION_DR001_IPAC_KE_BOUNDARY_v0_1.md
  - DR-001_COMPARATIVE_RESEARCH_REVIEW_v0_1.md
  - DECISION_IPAC_POSITIONING_MIN_MAX_STRATEGY_v0_1.md
```

---

# 1. Research Object

DR-002 исследует границу между:

```text
IPaC — Information Production as Code
```

и

```text
Context Engineering
```

Главная задача — не подтвердить IPaC, а проверить:

```text
не сводится ли IPaC к Context Engineering;
где есть пересечения;
где есть наследование;
где находится собственная зона IPaC;
является ли Context Engineering самостоятельной дисциплиной
или частной AI-era практикой внутри более широких областей.
```

---

# 2. Strategic Context

После DR-001 принято решение:

```text
IPAC_IS_OPERATING_LAYER_FOR_LIVING_KNOWLEDGE_WITH_KE_OVERLAP
```

DR-001 показал, что IPaC не должен заявлять радикальную новизну без признания наследования от Knowledge Engineering и соседних дисциплин.

DR-002 продолжает этот же метод:

```text
не строить забор вокруг IPaC;
строить карту соседства.
```

---

# 3. Core Hypotheses to Test

## 3.1 Hypothesis A — Context Engineering as AI-era practice cluster

```text
Context Engineering может оказаться не самостоятельной зрелой дисциплиной,
а emerging AI-era practice cluster:
набором практик подготовки, управления и доставки контекста
для LLM, агентов и AI-систем.
```

Проверить:

- есть ли у Context Engineering самостоятельная история;
- есть ли устоявшиеся стандарты;
- есть ли признанная профессиональная роль;
- есть ли lifecycle;
- есть ли validation culture;
- есть ли собственные методы помимо prompt / RAG / memory / tool context;
- не является ли это новым названием для старых задач из HCI, cognitive engineering, context-aware computing, knowledge engineering, decision support.

## 3.2 Hypothesis B — Context Engineering as part of Cognitive Engineering

```text
Context Engineering может быть частным случаем более широкой деятельности
когнитивного инженера:
проектирования условий, в которых человек, AI и система
получают релевантный контекст для мышления, действия и решения.
```

## 3.3 Hypothesis C — IPaC beyond context delivery

```text
Context Engineering доставляет правильный контекст модели.

IPaC поддерживает жизненный цикл знания:
захват смысла,
структурирование,
удержание,
проверку,
обратную связь,
впитывание обратной связи,
связь с реальностью,
углубление,
расширение,
переиспользование
и controlled rebuild.
```

---

# 4. Historical-Genetic Research Requirement

DR-002 НЕ должен начинаться с современных блогов.

Требуется исследовать исторические корни задач, которые сегодня могут называться Context Engineering.

## 4.1 Mandatory historical lines

Исследовать минимум следующие линии:

1. **Context in philosophy / linguistics / pragmatics**
   - meaning depends on context;
   - interpretation / situated meaning;
   - speech acts, pragmatics, discourse context.

2. **Cognitive science and situated cognition**
   - cognition in context;
   - distributed cognition;
   - activity theory if relevant;
   - situated action.

3. **Human Factors / Cognitive Systems Engineering**
   - context for operator cognition;
   - situation awareness;
   - cockpit / control room / decision environment;
   - cognitive load.

4. **Context-aware computing**
   - ubiquitous computing;
   - systems adapting to user / task / environment context;
   - pre-LLM computational context management.

5. **Knowledge Engineering / Expert Systems**
   - task context;
   - domain context;
   - knowledge acquisition context;
   - inference context.

6. **Information Retrieval / RAG roots**
   - query context;
   - retrieval context;
   - document context;
   - relevance;
   - grounding.

7. **Prompt Engineering → Context Engineering**
   - prompt as instruction;
   - context window as operational substrate;
   - memory;
   - tools;
   - agent state;
   - model behavior shaping.

8. **Karpathy / AI-era popularization**
   - modern formulation and popular term usage;
   - but not as origin point;
   - distinguish term popularization from historical roots.

## 4.2 Key historical question

```text
Какие задачи существовали до термина Context Engineering,
и под какими именами они решались?
```

---

# 5. Boundary Questions

## 5.1 Definition questions

1. Что такое Context Engineering в современных источниках?
2. Какие определения конкурируют?
3. Это дисциплина, практика, role, workflow, pattern или marketing term?
4. Что является объектом Context Engineering:
   - prompt?
   - context window?
   - memory?
   - retrieval?
   - tool state?
   - agent environment?
   - human-AI interaction context?
   - task situation?

## 5.2 Discipline maturity questions

Есть ли у Context Engineering:

| Criterion | Evidence to look for |
|---|---|
| Stable object | что именно проектируется |
| Methodology | устойчивые методы |
| Standards | стандарты / best practices |
| Professional role | context engineer как профессия |
| Validation culture | как проверяют качество контекста |
| Lifecycle | как контекст создаётся, обновляется, устаревает |
| Tooling ecosystem | специализированные инструменты |
| Academic lineage | связь с более старыми областями |

## 5.3 Reduction questions

1. Если IPaC свести к Context Engineering, что будет потеряно?
2. Какие компоненты IPaC являются context engineering?
3. Какие компоненты IPaC не являются context engineering?
4. Где Context Engineering может объяснить IPaC лучше, чем сам IPaC?
5. Где Context Engineering слишком узок?

---

# 6. IPaC Claims to Test

## 6.1 Claims that may be weakened

| IPaC claim | Risk |
|---|---|
| IPaC has unique context management | Context Engineering may already cover this. |
| Machine operational layer is novel | It may be context packaging for LLMs. |
| Context packs are IPaC-specific | Could overlap with RAG / agent memory / prompt engineering. |
| Human-AI workflow around context is new | HCI / CSE / context-aware computing may already cover it. |

## 6.2 Claims that may be strengthened

| IPaC claim | Why it may survive |
|---|---|
| IPaC is broader than context delivery | IPaC includes canon, trace, review, decision, feedback, rebuild. |
| IPaC works with knowledge lifecycle | Context Engineering often focuses on model input / behavior shaping. |
| IPaC includes reality feedback | Context Engineering may not centrally address feedback from reality into knowledge evolution. |
| IPaC manages living knowledge | Context Engineering may manage context state, not knowledge life. |
| IPaC addresses human + machine + Obsidian readability | Context Engineering may focus more on model-side operations. |

---

# 7. Critical Distinction to Investigate

```text
Context Engineering:
как подготовить и доставить правильный контекст
модели / агенту / AI-системе.

IPaC:
как производить, удерживать, проверять, развивать
и переиспользовать знание,
включая обратную связь от реальности
и controlled rebuild канона.
```

Эта формула — hypothesis, not conclusion.

---

# 8. Feedback and Reality Coupling

DR-002 должен специально исследовать, входит ли в Context Engineering:

- получение обратной связи;
- интерпретация обратной связи;
- включение обратной связи в knowledge artifacts;
- связь с реальностью;
- коррекция знания;
- развитие знания вглубь;
- развитие знания вширь;
- controlled update of canon;
- governance of changed meaning.

IPaC hypothesis:

```text
IPaC — это не только удержание знания.
IPaC — это контур развития знания через обратную связь с реальностью.
```

---

# 9. Required Output for Deep Research

Deep Research должен сформировать:

# DR-002 — IPaC vs Context Engineering Report v0.1

## 1. Executive Summary

## 2. Historical Roots of Context Engineering

Разделить:
- pre-LLM roots;
- AI-era transition;
- modern popularization.

## 3. What Context Engineering Is Today

Определения, источники, competing framings.

## 4. Is Context Engineering a Discipline?

Таблица:

| Criterion | Evidence | Assessment |
|---|---|---|

## 5. Boundary Map: IPaC vs Context Engineering

Таблица:

| Area | Context Engineering | IPaC | Overlap | Difference |
|---|---|---|---|---|

## 6. Reduction Test

Что теряется, если IPaC свести к Context Engineering?

## 7. Context Engineering as Part of Cognitive Engineering

Проверить гипотезу:
Context Engineering может быть частным случаем более широкой cognitive engineering / human-AI systems activity.

## 8. Feedback / Reality Coupling

Есть ли у Context Engineering аналог IPaC feedback → review → decision → controlled rebuild?

## 9. Claims to Weaken

Какие claims IPaC надо ослабить.

## 10. Claims to Strengthen

Какие claims IPaC можно усилить.

## 11. Missing Sources and Research Gaps

Что не удалось подтвердить.

## 12. Final Verdict

Выбрать один:

- IPAC_REDUCES_TO_CONTEXT_ENGINEERING
- IPAC_PARTLY_OVERLAPS_WITH_CONTEXT_ENGINEERING
- IPAC_EXTENDS_CONTEXT_ENGINEERING
- CONTEXT_ENGINEERING_IS_SUBSET_OF_BROADER_IPAC_CONTOUR
- INSUFFICIENT_EVIDENCE

---

# 10. Guardrails

Deep Research должен соблюдать:

```text
Do not confirm IPaC.
Do not treat IPaC internal documents as validated truth.
Do not assume Context Engineering begins with recent AI blogs.
Distinguish historical roots from modern term popularization.
Distinguish discipline from practice cluster.
Distinguish context delivery from knowledge lifecycle.
Distinguish evidence, analogy, speculation and field validation.
Do not update canon.
Do not declare field validation.
Build a neighborhood map, not a defensive fence.
```

---

# 11. Recommended Input Files

## Required

```text
01_CANON/00_CORE_CANON/00_IPaC_CONSTITUTION_v0_1.md
01_CANON/00_CORE_CANON/01_LIFECYCLE_MAP_LIVING_MEANING_TO_UPDATED_CANON_v0_1.md
03_RESEARCH_MAP/IPAC_CRITICAL_QUESTIONS_REGISTER_v0_1.md
08_TRACE_AND_DECISIONS/decisions/DECISION_DR001_IPAC_KE_BOUNDARY_v0_1.md
08_TRACE_AND_DECISIONS/reviews/DR-001_COMPARATIVE_RESEARCH_REVIEW_v0_1.md
08_TRACE_AND_DECISIONS/reviews/DR-002_BOUNDARY_SPRINT_SELECTION_v0_1.md
03_RESEARCH_MAP/deep_research/input/DR-002_INPUT_FILES_RECOMMENDED_v0_1.md
```

## Optional

```text
06_PROJECT_RULES/MULTI_LAYER_KNOWLEDGE_REPRESENTATION_v0_1.md
06_PROJECT_RULES/WAVE4_SAFE_PROJECT_RULES_v0_1.md
06_PROJECT_RULES/RULE_LIFE_BASELINE_DRIFT_INSPECTION_v0_1.md
03_RESEARCH_MAP/ontology_notes/ONTOLOGY_IPAC_DISCIPLINE_AS_PRODUCTION_QUALITY_v0_1.md
03_RESEARCH_MAP/ontology_notes/ONTOLOGY_AI_CREATIVITY_COMPLEXITY_RELOCATION_v0_1.md
08_TRACE_AND_DECISIONS/decisions/DECISION_IPAC_POSITIONING_MIN_MAX_STRATEGY_v0_1.md
```

---

# 12. Status

```text
DR002_RESEARCH_DESIGN_READY
NEXT: build DR-002 input pack
CANON_LOCKED
FIELD_VALIDATION_REQUIRED_LATER
```
