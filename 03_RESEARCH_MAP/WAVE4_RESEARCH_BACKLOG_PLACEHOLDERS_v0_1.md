# Wave 4 Research Backlog Placeholders v0.1  
## Исследовательские заделы Wave 4 v0.1

```yaml
artifact_id: WAVE4-RESEARCH-BACKLOG-PLACEHOLDERS-001
artifact_type: research_backlog
status: active_research_backlog_candidate
version: 0.1
source: WAVE4_ADVANCED_DELTA_IMPORT_REVIEW_v0_1
source_path: 08_TRACE_AND_DECISIONS/reviews/WAVE4_ADVANCED_DELTA_IMPORT_REVIEW_v0_1.md
layer: research_backlog
items_count: 3
field_validated: false
deep_research_authorized: false
execution_authorized: false
mvi_authorized: false
codex_authorized: false
```

---

# 0. Статус документа

Этот документ фиксирует три исследовательских направления из Wave 4, которые нельзя импортировать как утверждения без Deep Research.

Документ НЕ запускает Deep Research.

Он только создаёт research backlog placeholders — исследовательские заделы, к которым можно вернуться в управляемом порядке.

Не авторизовано:

- Deep Research launch;
- MVP;
- MVI;
- Codex;
- MCP;
- RAG / Neo4j;
- execution plan;
- public positioning.

---

# 1. Назначение

Wave 4 выявила три research-dependent items:

```text
W4-ASSET-024 — Knowledge Engineering boundary research
W4-ASSET-025 — Context Engineering boundary research
W4-ASSET-026 — Software Engineering analogy lineage
```

Эти элементы важны для укрепления IPaC, но опасны при преждевременном использовании.

Главное правило:

```text
Research backlog item может быть сохранён как вопрос.
Но он не может использоваться как доказательство, claim или canon до Deep Research и review.
```

---

# 2. Research Backlog Summary

| ID | Research Item | Current Status | Why Important | Risk if Misused |
|---|---|---|---|---|
| DR-BACKLOG-W4-001 | IPaC vs Knowledge Engineering | needs_deep_research | Нужно понять, не переименовывает ли IPaC уже существующую дисциплину | terminology confusion / false novelty |
| DR-BACKLOG-W4-002 | IPaC vs Context Engineering | needs_deep_research | Нужно определить границу между IPaC и управлением контекстом LLM-систем | fashion-term capture / boundary confusion |
| DR-BACKLOG-W4-003 | Software Engineering / OS Analogy Lineage | needs_deep_research | Нужно проверить аналогию IPaC с software engineering, OS theory и системной генерацией | authority borrowing / historical overreach |

---

# 3. DR-BACKLOG-W4-001 — IPaC vs Knowledge Engineering

## Research Question

```text
Чем IPaC отличается от Knowledge Engineering,
и где проходит граница между ними?
```

## Why It Matters

Если IPaC просто переименовывает Knowledge Engineering, это нужно увидеть сразу.

Если IPaC выходит за пределы Knowledge Engineering, нужно чётко описать:

- в чём именно отличие;
- какие элементы унаследованы;
- какие элементы новые;
- где начинается смысловая / операционная специфика IPaC.

## Initial Hypothesis

```text
IPaC связан с Knowledge Engineering,
но отличается тем, что работает не только с формализацией знаний,
а с полным циклом живого смысла:
искра → сгусток → артефакт → канон → trace → feedback → review → rebuild.
```

Статус гипотезы:

```text
speculative / research_required
```

## Research Risks

- terminology confusion;
- false novelty;
- authority borrowing;
- old field relabeled as new;
- underestimating existing knowledge engineering traditions.

## What Deep Research Must Clarify

- историческое определение Knowledge Engineering;
- современные практики Knowledge Engineering;
- связь Knowledge Engineering с expert systems;
- связь с ontology engineering;
- связь с knowledge management;
- границу между knowledge representation и living meaning lifecycle;
- какие элементы IPaC уже покрыты существующим полем;
- какие элементы требуют новой рамки.

## Output Expected Later

После Deep Research должен появиться:

```text
DR-001_IPaC_vs_Knowledge_Engineering_Report.md
```

и review-документ:

```text
DR-001_RESEARCH_REVIEW_IPaC_vs_Knowledge_Engineering.md
```

---

# 4. DR-BACKLOG-W4-002 — IPaC vs Context Engineering

## Research Question

```text
Чем IPaC отличается от Context Engineering,
и где они пересекаются?
```

## Why It Matters

Context Engineering стал важным направлением в LLM-системах.

Но IPaC не должен быть сведен только к управлению prompt/context windows.

Нужно понять:

- является ли IPaC расширением context engineering;
- использует ли IPaC context engineering как один из слоёв;
- где заканчивается управление контекстом и начинается жизненный цикл знания;
- какую роль играют artifacts, canon, trace, review и controlled rebuild.

## Initial Hypothesis

```text
Context Engineering управляет тем, что модель должна видеть и учитывать.
IPaC управляет более широким циклом:
как смысл рождается, оформляется, проверяется, хранится, передаётся и пересобирается.
```

Статус гипотезы:

```text
partially_supported / research_required
```

## Research Risks

- fashion-term capture;
- boundary confusion;
- reducing IPaC to prompt engineering;
- confusing context supply with knowledge lifecycle;
- assuming current LLM terminology covers the whole problem.

## What Deep Research Must Clarify

- definitions of Context Engineering;
- relation to prompt engineering;
- relation to retrieval / RAG;
- relation to agent memory;
- relation to context packs;
- relation to source-of-truth;
- what context engineering does not solve;
- whether IPaC can treat context engineering as a subsystem.

## Output Expected Later

После Deep Research должен появиться:

```text
DR-002_IPaC_vs_Context_Engineering_Report.md
```

и review-документ:

```text
DR-002_RESEARCH_REVIEW_IPaC_vs_Context_Engineering.md
```

---

# 5. DR-BACKLOG-W4-003 — Software Engineering / OS Analogy Lineage

## Research Question

```text
Можно ли использовать теорию операционных систем,
software engineering и system generation как метамодель
для проектирования IPaC?
```

## Why It Matters

В IPaC возникла сильная аналогия:

```text
OS снижает сложность работы с вычислениями.
IPaC должен снижать сложность работы с живым знанием и смыслом.
```

Эта аналогия мощная, но опасна без проверки.

Нужно исследовать:

- историю operating systems;
- system generation;
- OS/360 as analogy;
- software engineering as discipline of complexity reduction;
- Docs as Code;
- Architecture Decision Records;
- DevOps / Git as trace;
- agentic software engineering;
- limits of analogy.

## Initial Hypothesis

```text
Теория ОС и software engineering могут дать IPaC язык управления сложностью,
но предмет сложности другой:
не вычислительная среда, а знаниевая / смысловая среда.
```

Статус гипотезы:

```text
conceptual_foundation_candidate / research_required
```

## Research Risks

- historical romanticism;
- authority borrowing;
- analogy overreach;
- false equivalence between computational and meaning environments;
- treating metaphor as proof.

## What Deep Research Must Clarify

- what core problems OS theory solved;
- how operating systems reduced complexity;
- what system generation meant historically;
- what parts of OS theory transfer to knowledge/sense environments;
- what parts do not transfer;
- how software engineering manages complexity;
- how Docs as Code and ADR relate to IPaC;
- whether “operating system for living knowledge” is a useful research metaphor or a dangerous overclaim.

## Output Expected Later

После Deep Research должен появиться:

```text
DR-003_OS_Software_Engineering_Analogy_Report.md
```

и review-документ:

```text
DR-003_RESEARCH_REVIEW_OS_Analogy.md
```

---

# 6. Research Backlog Rules

## RULE-RB-001 — Backlog is not research completion

```text
Research backlog item не является исследовательским выводом.
```

## RULE-RB-002 — No claims before sources

```text
Нельзя использовать backlog item как внешний claim до Deep Research и review.
```

## RULE-RB-003 — No canon update from raw report

```text
Deep Research report не обновляет canon напрямую.
Сначала Research Review → Decision → Trace.
```

## RULE-RB-004 — Preserve limitations

```text
Каждый research result должен фиксировать source limitations.
```

## RULE-RB-005 — Keep analogy bounded

```text
Аналогия помогает думать, но не доказывает.
```

---

# 7. Priority Order

Рекомендуемый порядок будущих Deep Research Sprint:

| Priority | Sprint | Reason |
|---:|---|---|
| 1 | DR-001 — IPaC vs Knowledge Engineering | Самый важный риск ложной новизны |
| 2 | DR-002 — IPaC vs Context Engineering | Важнейшая граница с актуальной LLM-практикой |
| 3 | DR-003 — OS / Software Engineering Analogy | Сильная метамодель, но требует ограничения |

---

# 8. Placement

Рекомендуемое место хранения:

```text
03_RESEARCH_MAP/WAVE4_RESEARCH_BACKLOG_PLACEHOLDERS_v0_1.md
```

Связанные документы:

```text
01_CANON/00_CORE_CANON/00_IPaC_CONSTITUTION_v0_1.md
01_CANON/00_CORE_CANON/01_LIFECYCLE_MAP_LIVING_MEANING_TO_UPDATED_CANON_v0_1.md
06_PROJECT_RULES/WAVE4_SAFE_PROJECT_RULES_v0_1.md
07_PARKING_LOT/WAVE4_BACKLOG_AND_PARKING_SUMMARY_v0_1.md
08_TRACE_AND_DECISIONS/reviews/WAVE4_ADVANCED_DELTA_IMPORT_REVIEW_v0_1.md
```

---

# 9. Git Commit Recommendation

Рекомендуемый commit:

```text
research: add Wave 4 research backlog placeholders
```

---

# 10. Status

```text
status: active_research_backlog_candidate
deep_research_authorized: false
execution_authorized: false
mvi_authorized: false
codex_authorized: false
field_validated: false
```

---

# 11. Короткая формула

```text
Research backlog сохраняет сильные исследовательские вопросы,
но не превращает их в утверждения до Deep Research и review.
```
