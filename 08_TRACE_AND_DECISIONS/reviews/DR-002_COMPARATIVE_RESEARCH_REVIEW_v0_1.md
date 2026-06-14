# DR-002 Comparative Research Review v0.1  
## OpenAI DR-002 + Gemini DR-002 по границе IPaC / Context Engineering

```yaml
artifact_id: DR-002-COMPARATIVE-RESEARCH-REVIEW-001
artifact_type: comparative_research_review
status: ready_for_decision
version: 0.1
layer: trace_and_decisions / reviews
scope: DR-002 / IPaC vs Context Engineering / comparative review / secondary research integration
date: 2026-06-13
canon_update_authorized: false
field_validated: false
source_reports:
  - 03_RESEARCH_MAP/deep_research/DR-002_IPaC_vs_Context_Engineering_REPORT_v0_1.md
  - 03_RESEARCH_MAP/deep_research/DR-002_GEMINI_IPaC_vs_Context_Engineering_REPORT_v0_1.md
prior_review:
  - 08_TRACE_AND_DECISIONS/reviews/DR-002_RESEARCH_REVIEW_v0_1.md
next_artifact_recommended:
  - 08_TRACE_AND_DECISIONS/decisions/DECISION_DR002_IPAC_CONTEXT_ENGINEERING_BOUNDARY_v0_1.md
```

---

# 1. Review Purpose

Этот comparative review сопоставляет два независимых DR-002 исследования:

```text
1. OpenAI DR-002 — IPaC vs Context Engineering
2. Gemini DR-002 — Анализ IPaC и Context Engineering
```

Цель:

```text
не переписать уже проведённый DR-002 Research Review,
а усилить его вторым источником,
уточнить границу,
зафиксировать новые исторические и стратегические добавления,
и подготовить более зрелый Decision Record.
```

---

# 2. Current Status

```text
OpenAI DR-002 Report: committed
Gemini DR-002 Report: committed
DR-002 Research Review: committed
Comparative Review: current artifact
Canon: locked
Field validation: not available
```

---

# 3. High-Level Convergence

Оба отчёта сходятся в главном:

```text
IPaC не сводится к Context Engineering целиком.
```

Но оба также показывают:

```text
часть IPaC, связанная с context packs,
model-visible state,
memory,
tools,
agent context,
RAG,
MCP,
machine operational layer,
сильно пересекается с Context Engineering.
```

Итоговое convergence verdict:

```text
IPAC_EXTENDS_CONTEXT_ENGINEERING_WITH_STRONG_MODEL_FACING_OVERLAP
```

Более безопасная формулировка:

```text
IPaC не редуцируется к Context Engineering,
но включает слой, который должен быть честно переописан
как model-facing / agent-facing Context Engineering layer.
```

---

# 4. Difference Between the Two Reports

| Dimension | OpenAI DR-002 | Gemini DR-002 | Comparative Interpretation |
|---|---|---|---|
| Tone | Осторожный, source-quality aware | Более широкий, историко-теоретический | Оба нужны: OpenAI держит guardrails, Gemini расширяет генезис |
| CE status | Emerging AI-era practice cluster | Двойственный статус: AI-era field + глубокая 1990s подложка | Итог: named field молод, problem field стар |
| Historical depth | Хорошая карта pre-LLM roots | Сильнее развёрнуты Weiser / Schilit / Dey / Abowd / context-aware computing | Gemini усиливает historical genesis |
| Conceptual metaphor | Context now vs knowledge lifecycle over time | RAM vs ROM, entropy reduction, three-layer artifact | Gemini даёт мощные метафоры, но требуют guardrails |
| Verdict | IPAC_EXTENDS_CONTEXT_ENGINEERING | IPaC belongs to broader Engineering of Information Production contour | Принимаем осторожную версию: research-supported positioning, not field validation |
| Risk | Может недооценить глубину CE roots | Может overclaim CE maturity and IPaC maximum | Comparative review должен сбалансировать |

---

# 5. Key Correction After Gemini

До Gemini корректная формула была:

```text
Context Engineering — emerging AI-era practice cluster.
```

После Gemini её нужно уточнить:

```text
Context Engineering как современный named field — emerging AI-era practice cluster.

Но задачи Context Engineering имеют глубокую историческую подложку:
context-aware computing,
HCI,
situated cognition,
human factors,
knowledge engineering,
information retrieval,
agent memory,
RAG,
prompt engineering.
```

Это важное уточнение.

Нельзя говорить грубо:

```text
Context Engineering — просто хайп.
```

Корректнее:

```text
Context Engineering — молодая AI-era упаковка старой и серьёзной проблемы:
как обеспечить субъекту / системе релевантный контекст
для понимания, действия и решения.
```

---

# 6. Strongest New Contributions from Gemini

## 6.1 Historical Roots from the 1990s

Gemini усилил historical-genesis слой:

```text
Mark Weiser / ubiquitous computing
→ Bill Schilit / context-aware systems
→ Dey / Abowd context definitions
→ HCI / context-aware computing
→ LLM-era Context Engineering
```

Это даёт IPaC право на собственное перепрочтение тех же корней:

```text
Мы можем опираться на основы context-aware computing 1990-х
с таким же правом, как современные Context Engineering практики.
```

## 6.2 Entropy Reduction Frame

Gemini предложил полезную формулу:

```text
Context Engineering преобразует высокоэнтропийные человеческие намерения
и сигналы среды
в низкоэнтропийные, машиночитаемые репрезентации.
```

Эта рамка полезна для IPaC, но её нужно использовать как analytical frame, not final proof.

## 6.3 RAM / ROM Distinction

Gemini дал сильную демаркацию:

```text
Context = RAM:
оперативная, динамическая, task-time память модели / агента.

Knowledge / IPaC artifact = ROM:
устойчивая, версионируемая, исторически прослеживаемая память проекта.
```

Safe interpretation:

```text
CE работает с эфемерным operational payload.

IPaC работает с устойчивым knowledge artifact и его жизненным циклом.
```

## 6.4 Three-Layer Artifact

Gemini усилил multi-layer artifact framing:

```text
1. Machine Operational Layer
2. Human Cognitive Layer
3. Obsidian Relational Layer
```

Важное следствие:

```text
Именно Machine Operational Layer IPaC интерфейсирует с Context Engineering.

Human Cognitive Layer и Obsidian Relational Layer выводят IPaC за пределы чистой CE.
```

---

# 7. Where Gemini Overclaims

Gemini-отчёт содержит сильные формулировки, которые нужно смягчить.

## 7.1 “CE academic status is finally закреплён”

Формулировка слишком сильная.

Safer wording:

```text
Современная Context Engineering демонстрирует признаки быстрой академической формализации,
но пока не имеет статуса зрелой инженерной дисциплины.
```

Reason:

```text
arXiv surveys and taxonomies are important signals,
but not equivalent to long-standing standards, professional institutions,
validation culture and stable boundaries.
```

## 7.2 “IPaC objectively belongs to Engineering of Information Production”

Слишком сильная формулировка.

Safer wording:

```text
IPaC may be interpreted as a candidate framework
and research program toward Engineering of Information Production.
```

## 7.3 “CE is научно-инженерная дисциплина”

Надо ограничить:

```text
CE has historical foundations and emerging formalization,
but as named field remains young and partly practice-driven.
```

---

# 8. Where OpenAI Report Was Stronger

OpenAI DR-002 был сильнее в caution discipline:

```text
research support ≠ field validation;
direct canon update not authorized;
named field sources are young;
Context Engineering is emerging practice cluster;
IPaC verdict must be limited.
```

Эти guardrails сохраняем.

---

# 9. Where Gemini Was Stronger

Gemini был сильнее в:

```text
историческом генезисе;
context-aware computing roots;
RAM / ROM метафоре;
онтологической демаркации context vs knowledge;
машинный операционный слой IPaC как CE-interface;
human cognitive and Obsidian relational layers как выход за CE.
```

Эти элементы нужно включить в DR-002 Decision Record как research-supported interpretation with limitations.

---

# 10. Revised Boundary Formula

После двух отчётов лучшая формула:

```text
CE делает контекст пригодным для машины сейчас.

IPaC делает знание удерживаемым
для человека, машины и проекта во времени.
```

Развёрнутая формула:

```text
Context Engineering отвечает за модельно-видимый / агентно-видимый слой:
что система должна увидеть, получить, вызвать и использовать сейчас.

IPaC отвечает за более широкий knowledge-lifecycle contour:
как смысл становится артефактом,
как артефакт входит в канон,
как фиксируется trace,
как feedback становится evidence,
как review и decision меняют canon через controlled rebuild.
```

---

# 11. Comparative Reduction Test

## 11.1 What is reducible to Context Engineering

Следующие элементы IPaC частично редуцируемы к CE:

```text
Context Pack
Prompt Pack
Machine Operational Layer
Agent-facing metadata
MCP / tool interface
RAG input
Memory / session state
Context compaction
Model-visible task framing
```

## 11.2 What is not reducible without loss

Не редуцируется без потери:

```text
Living Meaning
Knowledge Clump
Knowledge Artifact as durable object
Canon
Trace
Review
Decision
Controlled Rebuild
Updated Canon
Claims Ledger
Field Validation Split
Human Cognitive Layer
Obsidian Relational Layer
Strategic internal/external positioning
```

---

# 12. Comparative Neighbor Strategy

Context Engineering should be treated as:

```text
friendly AI-native neighboring practice cluster
with serious historical roots
and strong technical relevance.
```

Strategy:

```text
1. Не спорить за название.
2. Не обесценивать.
3. Наследовать всё полезное.
4. Встраивать как model-facing / agent-facing слой.
5. Не позволять редуцировать IPaC к CE.
6. Развивать собственную прикладную систему и framework.
```

---

# 13. What IPaC Can Inherit from CE

| Area | Inheritance |
|---|---|
| Context-aware computing | понимание context as situation |
| HCI / situated action | действие зависит от контекста, environment and artifacts |
| CE 2.0 | context as entropy reduction / machine-readable representation |
| RAG | external knowledge injection |
| MCP | interface layer for tools and data |
| Memory | session / project continuity patterns |
| Context compaction | relevance, minimal sufficiency |
| Observability / evals | проверка поведения агента |
| Security | prompt injection, tool poisoning, trust boundary |

---

# 14. What IPaC Should Avoid

| Risk | Avoidance |
|---|---|
| Context bloat | context must be relevant, not maximal |
| Memory as governance | memory does not replace review / decision |
| Tool protocol as discipline | MCP is infrastructure, not full methodology |
| CE overclaiming | do not copy “engineering” label inflation |
| IPaC overclaiming | do not declare Engineering of Information Production proven |
| Human displacement | machine operational layer must not own intent |
| Raw feedback as evidence | feedback must pass evidence discipline |
| Canon auto-update by agent | forbidden without review / decision |

---

# 15. Research Support vs Field Validation

## Research-supported after two reports

```text
Context Engineering as named field is young and AI-era.

The underlying context-management problem is historically deep.

IPaC’s machine operational layer overlaps strongly with CE.

IPaC is not fully reducible to CE if its knowledge lifecycle definition is accepted.

CE is useful as a technical / model-facing layer inside IPaC.
```

## Hypothesis

```text
IPaC may be a candidate framework toward Engineering of Information Production.

IPaC may be stronger than CE at knowledge lifecycle, governance and reality-feedback coupling.

IPaC may treat software engineering as a special case of information-product engineering.
```

## Field validation required

```text
Does IPaC actually improve retention, reuse, traceability, feedback absorption and controlled rebuild in real workflows?

Can external users operate IPaC without the author?

Does IPaC reduce drift in human-AI projects?

Can IPaC become a working SaaS / framework?
```

---

# 16. Implication for DR-002 Decision Record

Decision Record should now include:

```text
1. Accept final verdict:
   IPAC_EXTENDS_CONTEXT_ENGINEERING

2. Add nuance:
   Context Engineering as named field is young,
   but its problem roots are historically deep.

3. Treat CE as:
   friendly AI-native model-facing / agent-facing layer.

4. Treat IPaC as:
   broader knowledge-lifecycle contour hypothesis.

5. Preserve guardrail:
   not a field-validated new discipline.

6. Add inheritance:
   IPaC should inherit CE’s context assembly, MCP/tool interface,
   memory, RAG, observability, security and context compaction practices.

7. Add caution:
   Gemini’s stronger claims about CE maturity and IPaC maximum must be softened.
```

---

# 17. Updated Final Comparative Verdict

```text
DR002_COMPARATIVE_VERDICT:
IPAC_EXTENDS_CONTEXT_ENGINEERING_WITH_STRONG_CONTEXT_LAYER_OVERLAP
```

Human-readable:

```text
IPaC extends Context Engineering only if understood as a broader knowledge-lifecycle contour.

But the model-facing / agent-facing part of IPaC should be explicitly treated as Context Engineering-compatible and partly inherited from CE.
```

---

# 18. Next Actions

1. Commit this comparative review.
2. Create `DECISION_DR002_IPAC_CONTEXT_ENGINEERING_BOUNDARY_v0_1.md`.
3. In the decision, explicitly cite both DR-002 reports.
4. Do not update canon directly.
5. Consider starting a Claims Ledger after decision.

---

# 19. Status

```text
DR002_COMPARATIVE_RESEARCH_REVIEW_READY_FOR_DECISION
CANON_LOCKED
FIELD_VALIDATION_REQUIRED_LATER
NEXT: DECISION_DR002_IPAC_CONTEXT_ENGINEERING_BOUNDARY
```
