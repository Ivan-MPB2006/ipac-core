# DR-001 Comparative Research Review v0.1  
## Сравнительный обзор OpenAI DR-001 и Gemini DR-001 по границе IPaC / Knowledge Engineering

```yaml
artifact_id: DR-001-COMPARATIVE-RESEARCH-REVIEW-001
artifact_type: research_review
status: candidate_for_decision
version: 0.1
layer: trace_and_decisions / reviews
scope: IPaC vs Knowledge Engineering / comparative review / source triangulation without Perplexity
date: 2026-06-12
canon_update_authorized: false
field_validated: false
source_reports:
  - DR-001_IPaC_vs_Knowledge_Engineering_REPORT_v0_1.md
  - DR-001_GEMINI_IPaC_vs_Knowledge_Engineering_REPORT_v0_1.md
perplexity_status: deferred_by_cost_gate
```

---

# 1. Review Purpose

Цель этого review — сопоставить два независимых исследовательских отчёта по DR-001:

1. OpenAI Deep Research report.
2. Gemini Deep Research report.

Задача review — не обновить Canon, а подготовить основание для последующего decision record.

Главная установка:

```text
Не искать подтверждение IPaC.
Нащупывать границы и связи IPaC.
Строить карту соседства, а не забор.
```

---

# 2. Input Reports

## 2.1 OpenAI DR-001 Report

Файл:

```text
03_RESEARCH_MAP/deep_research/DR-001_IPaC_vs_Knowledge_Engineering_REPORT_v0_1.md
```

Основной характер:

```text
осторожный boundary report
```

Сильные стороны:

- хорошо разделяет evidence / analogy / inspiration / speculation;
- явно фиксирует source limitations;
- осторожно ослабляет claims;
- предлагает позиционировать IPaC как integrative operating discipline, а не новую representational formalism;
- удерживает запрет на превращение research support в field validation.

## 2.2 Gemini DR-001 Report

Файл:

```text
03_RESEARCH_MAP/deep_research/DR-001_GEMINI_IPaC_vs_Knowledge_Engineering_REPORT_v0_1.md
```

Основной характер:

```text
историко-дисциплинарное углубление
```

Сильные стороны:

- глубже раскрывает expert systems, DENDRAL, knowledge acquisition bottleneck;
- разворачивает CommonKADS;
- добавляет METHONTOLOGY и ontology engineering;
- вводит PROV-O / provenance engineering;
- добавляет semantic drift / ontology evolution;
- сильнее разворачивает cognitive chunking;
- связывает современные LLM / KG / neuro-symbolic AI с Knowledge Engineering.

---

# 3. Convergent Findings

Оба отчёта сходятся в ключевом verdict:

```text
IPAC_IS_OPERATING_LAYER_FOR_LIVING_KNOWLEDGE_WITH_KE_OVERLAP
```

Это означает:

```text
IPaC не выглядит как простое переименование Knowledge Engineering,
но имеет значительное наследование и пересечение с Knowledge Engineering
и соседними дисциплинами.
```

Ключевые общие выводы:

| Area | Shared Finding |
|---|---|
| False novelty risk | Высокий. IPaC нельзя подавать как радикально новую дисциплину без признания наследования. |
| Knowledge Engineering overlap | Существенный. Особенно через knowledge acquisition, knowledge representation, ontology / KG practices, lifecycle, validation, maintenance. |
| Strongest IPaC zone | Не отдельные термины, а сборка операционного контура human-AI knowledge work. |
| Canon status | Canon update не разрешён. Research support не равен validation. |
| Field validation | Требуется позже. Ни один отчёт не даёт полевой валидации. |

---

# 4. Divergent Emphases

| Dimension | OpenAI DR-001 | Gemini DR-001 | Review Interpretation |
|---|---|---|---|
| Tone | Осторожный, boundary-oriented | Более широкий, историко-методологический | Вместе дают хороший баланс. |
| Main contribution | Claims to weaken / strengthen; source limitations; boundary map | Историческая и дисциплинарная глубина KE | Gemini усиливает source field; OpenAI лучше удерживает caution. |
| KE framing | KE как широкое современное поле | KE как глубокая историческая линия от expert systems к LLM/KG | Gemini расширяет глубину, но иногда рискует overclaim. |
| Provenance | Trace как близкое к provenance / governance | IPaC review→decision→trace почти отражает PROV-O | Формулировку Gemini надо смягчить: IPaC provenance-like, но не PROV-O. |
| Semantic drift | Вопрос для future research | Сильная отдельная проблематика Markdown/Git drift vs ontology drift | Взять как важный research gap. |
| Role of LLM | AI-native operating layer hypothesis | LLM как методологический помощник / quasi-knowledge-engineer | Не говорить “LLM replaces knowledge engineer”; лучше “частично поддерживает функции”. |

---

# 5. Claims to Weaken

Следующие claims должны быть ослаблены до завершения field validation и дополнительных research sprints.

| Claim Type | Why Weaken | Safer Formulation |
|---|---|---|
| IPaC is a new discipline separate from Knowledge Engineering | KE overlap is large and historically deep. | IPaC is a human-AI operating framework with strong KE overlap. |
| IPaC invented multi-layer knowledge representation | CommonKADS and ontology engineering already provide layered representations. | IPaC adapts layered representation to local-first human-AI work. |
| Canon / trace / controlled rebuild are new concepts | Strong overlap with source-of-truth, provenance, maintenance, configuration management. | IPaC makes these practices explicit and mandatory in one workflow. |
| Living Meaning is already an engineering object | It remains an internal hypothesis, not field-validated. | Living Meaning is a candidate pre-formal layer requiring validation. |
| Research support validates IPaC | Research clarifies positioning, not utility. | Research support refines boundaries; validation requires field tests. |
| IPaC replaces Knowledge Engineering | It inherits heavily from KE. | IPaC integrates KE, KM, provenance and human-AI workflow practices. |

---

# 6. Claims to Strengthen

Следующие claims можно усиливать осторожно.

| Claim Type | Why Strengthen | Suggested Formulation |
|---|---|---|
| Integrative operating discipline | Both reports converge here. | IPaC is primarily an integrative operating discipline, not a new representation formalism. |
| Pre-formal sense capture | Living Meaning / Knowledge Clump are explicitly foregrounded. | IPaC foregrounds the transition from pre-formal meaning to managed artifacts. |
| Governance discipline | Review / decision / trace / controlled rebuild are operationally explicit. | IPaC makes provenance-like governance a first-class practice of knowledge work. |
| Human-AI workflow relevance | Modern KE is moving toward LLM / KG / neuro-symbolic workflows. | IPaC is an AI-native workflow hypothesis built on KE/KM/provenance inheritance. |
| Scope / охват | IPaC potentially extends beyond technical documentation. | IPaC may apply to generalized information blocks across research, communication and decision-support contexts. |

---

# 7. Overclaims / Risks Detected

## 7.1 Overclaim Risk in OpenAI Report

OpenAI report is mostly cautious, but its phrase “operating layer for living knowledge” still needs to remain marked as hypothesis until field validation.

Risk:

```text
metaphor becomes claim
```

Mitigation:

```text
Use “candidate operating layer” or “operating framework hypothesis” until validated.
```

## 7.2 Overclaim Risk in Gemini Report

Gemini gives strong formulations such as:

```text
IPaC achieves the same goal as PROV-O
```

or suggests that LLM may functionally replace the knowledge engineer.

These must be softened.

Safer formulations:

```text
IPaC implements a practical provenance-like contour,
but does not replace formal provenance standards such as PROV-O.
```

```text
LLM supports some methodological functions of knowledge engineering,
but does not replace the knowledge engineer or human subject of intent.
```

---

# 8. Understated Areas

The reports may still understate several IPaC-specific lines.

## 8.1 Scope / Охват

IPaC is not merely about technical documentation or knowledge bases.

Potential scope:

```text
blogosphere / media blocks
research reports
project canon
expert notes
decision-preparation briefs
decision-support artifacts
agent context packs
team knowledge handoff
```

This supports the maximum hypothesis:

```text
Engineering of Information Production
```

but does not yet prove it.

## 8.2 Creativity and Complexity Relocation

The reports do not fully address the emerging IPaC thesis:

```text
AI does not remove creativity.
It relocates creativity to meaning architecture, criteria, context, validation and decision.
```

This is a strong future research line.

## 8.3 Git as Life / Baseline Drift Inspection

The reports do not capture the process insight:

```text
git diff = Жизнь − Эталон
```

This is not merely version control. In IPaC it becomes a diagnostic instrument for drift between living process and accepted artifact baseline.

---

# 9. Missing Source / Research Areas

Perplexity triangulation was deferred by cost gate. Therefore this review identifies missing source areas manually.

| Research Area | Why It Matters | Recommended Sprint |
|---|---|---|
| Docs-as-Code / DocOps | IPaC risks being reduced to documentation workflow. | DR-002 / DocOps boundary |
| Context Engineering | IPaC context packs and LLM operational layers overlap strongly. | DR-002 |
| Software Engineering analogy | Needed to bound “as code” and avoid authority borrowing. | DR-003 |
| Cognitive Systems Engineering | Needed for human cockpit / cognitive load / situation awareness claims. | DR-004 |
| Provenance Engineering / PROV-O | Needed to clarify trace vs formal provenance. | DR-005 |
| Decision Support Systems | Needed for LPR / decision-preparation claims. | DR-006 |
| Information Architecture / Content Strategy | Needed for generalized information blocks beyond technical docs. | DR-007 |
| Semantic Drift in Markdown/Git | Needed for long-term IPaC artifact integrity. | Validation design / research |

---

# 10. Min/Max Positioning

## Minimum Defensible Position

```text
IPaC is a human-AI framework for disciplined production,
maintenance and review of knowledge artifacts.
```

This position is defensible now.

## Maximum Research Hypothesis

```text
IPaC may be an entry point into Engineering of Information Production:
a broader discipline for producing, governing, validating,
versioning and reusing information blocks across human,
AI, communication, research and decision-making contexts.
```

This is not yet proven.

## Current Strategy

```text
Do not confine IPaC to merely a framework.
Do not prematurely declare a new engineering discipline.
Use research to determine which level of claim the neighborhood map supports.
```

---

# 11. Decision Preparation

This review prepares a decision record, but does not make canon update.

Recommended decision record:

```text
08_TRACE_AND_DECISIONS/decisions/DECISION_DR001_IPAC_KE_BOUNDARY_v0_1.md
```

Likely decision:

```text
Accept DR-001 verdict:
IPAC_IS_OPERATING_LAYER_FOR_LIVING_KNOWLEDGE_WITH_KE_OVERLAP

Interpretation:
IPaC is not merely renamed Knowledge Engineering,
but must explicitly acknowledge strong inheritance from KE, KM,
ontology engineering, provenance and governance practices.

Canon impact:
prepare controlled canon update later,
not directly from research reports.
```

---

# 12. Recommended Next Actions

1. Commit this comparative review.
2. Create decision record for DR-001 boundary.
3. Keep Perplexity as deferred optional triangulation.
4. Start next research sprint selection:
   - Context Engineering boundary;
   - Docs-as-Code / DocOps boundary;
   - Software Engineering analogy;
   - Cognitive Systems Engineering.

---

# 13. Review Verdict

```text
DR001_COMPARATIVE_REVIEW_READY_FOR_DECISION
PERPLEXITY_DEFERRED_BY_COST_GATE
CANON_LOCKED
FIELD_VALIDATION_REQUIRED_LATER
```
