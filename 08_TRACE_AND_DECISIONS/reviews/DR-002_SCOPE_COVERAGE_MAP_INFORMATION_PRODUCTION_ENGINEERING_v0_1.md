# DR-002 Addendum — Scope / Coverage Map: Software Engineering, Context Engineering, IPaC v0.1  
## Пристройка к DR-002: карта охвата инженерных областей

```yaml
artifact_id: DR-002-ADDENDUM-SCOPE-COVERAGE-MAP-001
artifact_type: research_review_addendum
status: candidate_for_dr002_review
version: 0.1
layer: trace_and_decisions / reviews
scope: scope comparison / software engineering / context engineering / information production engineering / IPaC positioning
date: 2026-06-13
canon_update_authorized: false
field_validated: false
source_report:
  - 03_RESEARCH_MAP/deep_research/DR-002_IPaC_vs_Context_Engineering_REPORT_v0_1.md
related_artifacts:
  - DR-002_STRATEGIC_INTERPRETATION_AI_ENGINEERING_RESET_v0_1.md
  - DECISION_DR001_IPAC_KE_BOUNDARY_v0_1.md
  - DECISION_IPAC_POSITIONING_MIN_MAX_STRATEGY_v0_1.md
  - IPAC_BOUNDARY_RESEARCH_PROTOCOL_v0_1.md
```

---

# 1. Purpose

Этот документ фиксирует различие в **охвате предмета инженерии** между:

```text
Software Engineering
Context Engineering
IPaC / Engineering of Information Production
```

Главная задача — не объявить IPaC доказанной новой инженерной дисциплиной, а зафиксировать исследовательскую карту масштаба:

```text
какой объект создаётся;
какой продукт получается;
какой контур поддерживается;
какой уровень охвата имеет область.
```

---

# 2. Core Scope Formula

```text
Software Engineering:
охват — создание, сопровождение и развитие программного кода
и исполняемых программных систем.

Context Engineering:
охват — создание / сборка / управление отдельным фрагментом
информационного объекта, максимально релевантного текущим целевым
потребностям модели, агента, человека или задачи.

IPaC / Engineering of Information Production:
охват — создание, проверка, развитие, удержание и переиспользование
информационных продуктов различного назначения,
включая программный код как один из частных случаев.
```

---

# 3. Working Interpretation

## 3.1 Software Engineering

Software Engineering работает преимущественно с особым классом информационного продукта:

```text
исполняемый программный артефакт
```

Его центральные признаки:

- код исполняется машиной;
- есть build / test / deploy / runtime;
- есть defects, regressions, requirements, architecture;
- качество проверяется через тестирование, эксплуатацию, performance, reliability, maintainability.

Software Engineering не равен всей инженерии информационного производства, потому что он работает с частным классом информационных артефактов — программными.

---

## 3.2 Context Engineering

Context Engineering работает с другим объектом:

```text
контекстный информационный фрагмент,
который должен быть релевантен текущей задаче,
модели, агенту или моменту действия.
```

Его типовые элементы:

- prompt;
- system instructions;
- retrieved documents;
- memory;
- agent state;
- tool context;
- context window;
- RAG payload;
- examples;
- schemas;
- current task situation.

DR-002 показал, что Context Engineering сегодня лучше трактовать как emerging AI-era practice cluster, а не зрелую дисциплину. Его сильная зона — управление тем, что модель / агент должен увидеть сейчас.

---

## 3.3 IPaC / Engineering of Information Production

IPaC работает с более широким объектом:

```text
информационный продукт / смыслонесущий артефакт,
который может быть создан для разных типов деятельности:
исследования,
коммуникации,
обучения,
управления,
принятия решений,
проектирования,
документации,
программирования,
аналитики,
экспертной работы,
AI-контекста.
```

В максимальной исследовательской гипотезе IPaC может быть входом в:

```text
Engineering of Information Production
Инженерию информационного производства
```

Где программный код — не внешний аналог, а один из частных информационных продуктов.

---

# 4. Scope Comparison Table

| Area | Central Object | Product Type | Main Lifecycle | Verification Mode | Scope |
|---|---|---|---|---|---|
| Software Engineering | Code / software system | Executable artifact | requirements → design → code → test → deploy → maintain | tests, runtime, reliability, user value | narrow but mature: software systems |
| Context Engineering | Context payload / model-visible state | Task-relevant context fragment | assemble → inject → use → observe → adjust | model behavior, evals, task success | narrow / emerging: context for AI interaction |
| IPaC | Information product / knowledge artifact / living knowledge contour | Multi-purpose information artifact | sense → artifact → canon → trace → feedback → review → decision → rebuild → reuse | evidence, review, decision, field validation, reuse | broad: information products across activity domains |

---

# 5. Key Difference: Fragment vs Product vs Lifecycle

```text
Context Engineering часто работает с фрагментом:
что нужно подать в контекст сейчас.

Software Engineering работает с исполняемым продуктом:
кодом и программной системой.

IPaC работает с жизненным циклом информационных продуктов:
как знание возникает, оформляется, проверяется, получает обратную связь,
развивается, пересобирается и переиспользуется.
```

---

# 6. Information Product Classes in IPaC Scope

IPaC потенциально охватывает следующие классы информационных продуктов:

| Class | Example | Notes |
|---|---|---|
| Research artifacts | Deep Research report, review, decision | evidence / source / boundary discipline |
| Canon artifacts | constitution, core canon, lifecycle map | controlled baseline |
| Context artifacts | input packs, prompt packs, context packs | overlaps with Context Engineering |
| Decision artifacts | decision brief, situation map, alternatives, risks | overlaps with Decision Support |
| Documentation artifacts | README, technical docs, process docs | overlaps with Docs-as-Code / DocOps |
| Software artifacts | scripts, code, Codex task packs | overlaps with Software Engineering |
| Communication artifacts | article, post, explanatory note, public channel unit | overlaps with content strategy |
| Ontology / knowledge artifacts | ontology notes, claims ledger, concept maps | overlaps with KE / ontology engineering |
| Trace artifacts | decision records, review status, Git commits | overlaps with provenance / configuration management |

---

# 7. Important Boundary Claim

```text
IPaC не должен утверждать, что Software Engineering или Context Engineering
не нужны.

IPaC должен показать, что они могут быть частными слоями
более широкой инженерии информационного производства.
```

Иначе:

```text
Software Engineering — зрелый слой работы с исполняемым кодом.

Context Engineering — emerging слой работы с model-facing context.

IPaC — кандидатный контур работы с информационными продуктами
и жизненным циклом знания в целом.
```

---

# 8. What This Changes for Future Research

Эта карта охвата усиливает будущие sprints:

## 8.1 DR-003 — Docs-as-Code / DocOps

Проверить:

```text
DocOps работает с технической документацией.

IPaC работает с информационными продуктами шире технической документации.
```

## 8.2 DR-004 — Software Engineering

Проверить:

```text
Software Engineering работает с исполняемым кодом.

IPaC может рассматривать код как частный случай информационного продукта,
но должен не присваивать себе зрелость Software Engineering без доказательств.
```

## 8.3 DR-005 — Cognitive Systems Engineering

Проверить:

```text
Кто обеспечивает релевантность контекста для человека / AI / системы?
Как cognitive engineering соотносится с context engineering и IPaC?
```

## 8.4 DR-006 — Decision Support

Проверить:

```text
Как информационные продукты готовятся для ЛПР:
альтернативы, риски, последствия, ситуация, evidence.
```

---

# 9. Claims to Weaken

| Claim | Why Weaken | Safer Wording |
|---|---|---|
| IPaC already is Engineering of Information Production | No field validation yet. | IPaC is a candidate framework and research program toward Engineering of Information Production. |
| Context Engineering is irrelevant | CE covers real model-facing context work. | CE is a valuable narrow AI-era layer that IPaC can inherit. |
| Software Engineering is just part of IPaC | Software Engineering is a mature discipline; IPaC has not proven a superset discipline. | Software artifacts may be one class of information products within the maximum IPaC hypothesis. |
| IPaC can claim all information production | Too broad without validation. | IPaC investigates controlled production of information artifacts in human-AI workflows. |

---

# 10. Claims to Strengthen

| Claim | Why Strengthen | Safe Wording |
|---|---|---|
| IPaC has broader scope than Context Engineering | CE focuses on model-facing context; IPaC includes artifact/canon/trace/review/rebuild. | IPaC appears broader than CE at knowledge lifecycle level. |
| IPaC has broader scope than Docs-as-Code | Docs-as-Code focuses on docs; IPaC addresses multiple information product classes. | IPaC may generalize docs-as-code discipline to broader information artifacts. |
| IPaC may relate to Software Engineering as a broader information-production frame | Code is an information artifact with execution semantics. | In the maximum hypothesis, software engineering is a mature special case within information production. |

---

# 11. Key Strategic Message

```text
Не надо ждать нового кризиса AI-внедрения.

AI нельзя просто прикручивать к старым процессам.

Необходимо проектировать новый контур информационного производства,
в котором AI является не внешней добавкой,
а частью human-AI engineering system.
```

---

# 12. Candidate Core Formula

```text
Software Engineering создаёт исполняемый информационный продукт.

Context Engineering создаёт релевантный контекстный фрагмент
для текущего действия модели / агента / человека.

IPaC / Engineering of Information Production создаёт,
проверяет, развивает и переиспользует информационные продукты
различного назначения,
включая программный код как частный случай.
```

---

# 13. Guardrail

Эта карта охвата не является доказательством новой дисциплины.

Она фиксирует:

```text
minimum:
IPaC как framework для human-AI knowledge artifacts;

maximum:
IPaC как исследовательская заявка на Engineering of Information Production.
```

Field validation remains required.

---

# 14. Recommended Placement

```text
08_TRACE_AND_DECISIONS/reviews/DR-002_SCOPE_COVERAGE_MAP_INFORMATION_PRODUCTION_ENGINEERING_v0_1.md
```

---

# 15. Commit Recommendation

```powershell
git add .\08_TRACE_AND_DECISIONS\reviews\DR-002_SCOPE_COVERAGE_MAP_INFORMATION_PRODUCTION_ENGINEERING_v0_1.md
git commit -m "review: add DR-002 scope coverage map"
git push
git status
```

---

# 16. Status

```text
DR002_SCOPE_COVERAGE_MAP_READY_FOR_REVIEW
CANON_LOCKED
FIELD_VALIDATION_REQUIRED_LATER
```
