# DR-002 Design Addendum — Discipline Status and Neighborhood Map v0.1  
## Пристройка к DR-002: статус дисциплины и карта сопредельности

```yaml
artifact_id: DR-002-DESIGN-ADDENDUM-DISCIPLINE-STATUS-NEIGHBORHOOD-MAP-001
artifact_type: research_design_addendum
status: accepted_addendum_candidate
version: 0.1
layer: research_map / deep_research_design
scope: DR-002 / Context Engineering / discipline status / neighborhood map / boundary method
date: 2026-06-13
parent_design: DR-002_RESEARCH_DESIGN_IPaC_vs_CONTEXT_ENGINEERING_v0_1.md
canon_update_authorized: false
field_validated: false
```

---

# 1. Purpose

Эта пристройка усиливает DR-002.

DR-002 не должен просто сравнивать IPaC с Context Engineering.

Сначала необходимо выяснить:

```text
Что такое Context Engineering по своему статусу?
```

То есть:

```text
Context Engineering — это дисциплина,
практический кластер,
роль,
toolchain pattern,
marketing term,
или временное имя для новой технологической боли?
```

---

# 2. Core Principle

```text
Не всякое “Engineering” является инженерной дисциплиной.
```

Иногда за словом “engineering” стоит зрелая дисциплина.  
Иногда — набор практик.  
Иногда — роль.  
Иногда — toolchain.  
Иногда — маркетинговое название.  
Иногда — временная упаковка боли, которую ещё не успели осмыслить.

Поэтому перед сравнением IPaC с соседней областью нужно понять:

```text
на чём стоит стул.
```

---

# 3. Key Research Question for DR-002

Главный усиленный вопрос:

```text
Context Engineering имеет под собой самостоятельную дисциплинарную основу
или это название практического кластера,
возникшего у LLM-практиков вокруг боли управления контекстом?
```

Вторая формулировка:

```text
У Context Engineering есть собственный фундамент,
или он стоит на чужих основаниях:
HCI, Cognitive Engineering, Knowledge Engineering,
Information Retrieval, RAG, Prompt Engineering, Agent Memory,
Context-aware Computing и Decision Support?
```

---

# 4. Discipline Maturity Test

Для Context Engineering необходимо применить тест зрелости дисциплины.

| Criterion | Research Question | Evidence to Look For |
|---|---|---|
| Object | Есть ли собственный объект инженерии? | Что именно проектируется: prompt, context window, memory, retrieval, agent state, task situation? |
| Problem Field | Какую устойчивую проблему область решает? | Повторяемая проблема, не сводимая к частной toolchain-боли |
| Methodology | Есть ли устойчивые методы? | Frameworks, repeatable methods, design patterns |
| Validation | Как проверяется качество результата? | Metrics, tests, evaluations, failure criteria |
| Lifecycle | Есть ли жизненный цикл объекта? | Create / update / decay / retire / rebuild context |
| Standards | Есть ли стандарты или best practices? | Standards, de facto practices, reference architectures |
| Professional Role | Есть ли признанная роль? | Context engineer as recognized role, job descriptions, communities |
| Institutional Base | Есть ли институции? | Books, courses, research communities, conferences |
| Failure Modes | Понятно ли, как область ломается? | Context drift, wrong retrieval, prompt brittleness, hallucination |
| Boundary Clarity | Понятно ли, где область заканчивается? | Boundaries with Prompt Engineering, RAG, Memory, HCI, KE |

---

# 5. Possible Status Classes

DR-002 должен классифицировать Context Engineering по одному или нескольким статусам.

| Status Class | Meaning | Possible Example |
|---|---|---|
| Foundational Discipline | Зрелая дисциплина с историей, методами и объектом | Software Engineering, Knowledge Engineering |
| Applied Practice Field | Прикладная область с устойчивыми практиками | Docs-as-Code, Knowledge Management |
| Standardized Technical Layer | Технический слой со стандартами | PROV-O, configuration management |
| Emerging Practice Cluster | Новый набор практик вокруг новой боли | Possible status of Context Engineering |
| Toolchain Pattern | Инструментальная связка без собственной дисциплины | RAG pipeline, Obsidian + Git workflow |
| Role Label | Название роли, дисциплина ещё не оформилась | Context Engineer, AI Workflow Engineer |
| Marketing Term | Термин продвигается быстрее, чем методология | possible risk |
| Metaphor / Positioning Term | Сильная метафора, не дисциплина | operating layer, living knowledge |

---

# 6. Jurisdiction Map

Нам нужна не плоская карта соседей, а карта юрисдикций.

Для каждой сопредельной области необходимо определить:

```text
На каких правах она соседствует с IPaC?
```

Типы прав:

```text
1. Foundational inheritance
   IPaC наследует фундаментальные идеи.

2. Methodological overlap
   IPaC использует похожие методы.

3. Toolchain overlap
   IPaC использует похожие инструменты.

4. Terminology conflict
   Термины IPaC могут быть переименованием старых понятий.

5. Functional subset
   Соседняя область является частным слоем внутри IPaC.

6. Superset risk
   Соседняя область может оказаться шире IPaC в конкретном аспекте.

7. Weak neighbor
   Название есть, дисциплина ещё не сформировалась.

8. Metaphoric neighbor
   Соседство полезно как метафора, но не как доказательство.
```

---

# 7. DR-002 Specific Application

## 7.1 If Context Engineering is a discipline

Если Context Engineering окажется зрелой дисциплиной, DR-002 должен ответить:

```text
какие части IPaC уже покрываются Context Engineering;
какие claims IPaC нужно ослабить;
какие методы Context Engineering нужно наследовать.
```

## 7.2 If Context Engineering is an emerging practice cluster

Если Context Engineering окажется emerging practice cluster, DR-002 должен ответить:

```text
какую боль он называет;
какие старые дисциплины стоят под ним;
какую функцию он может выполнять внутри IPaC;
какие overclaims нельзя принимать.
```

## 7.3 If Context Engineering is a toolchain pattern

Если Context Engineering окажется toolchain pattern, DR-002 должен ответить:

```text
какой tool stack он обслуживает;
как не спутать toolchain с дисциплиной;
почему IPaC не сводится к этой toolchain.
```

---

# 8. Key Distinction: Context vs Knowledge

DR-002 должен явно проверить различие:

```text
Контекст — это то, что нужно модели / агенту / человеку сейчас
для конкретного действия или интерпретации.

Знание — это то, что должно сохраняться, проверяться,
получать обратную связь, развиваться,
переиспользоваться и выдерживать время.
```

Возможная гипотеза:

```text
Context Engineering оптимизирует момент взаимодействия с моделью.

IPaC проектирует жизненный цикл знания во времени.
```

Эта формула является hypothesis, not conclusion.

---

# 9. Feedback / Reality Coupling Test

DR-002 должен проверить, включает ли Context Engineering следующие функции:

- получение обратной связи от реальности;
- интерпретацию обратной связи;
- включение обратной связи в knowledge artifacts;
- развитие знания вглубь;
- развитие знания вширь;
- review / decision / trace;
- controlled rebuild;
- обновление canon;
- переиспользование знания в новых ситуациях.

Кандидатная формула IPaC:

```text
IPaC — это контур развития знания через обратную связь с реальностью.
```

Если у Context Engineering нет такого цикла, это может быть важной границей.

---

# 10. Required Additions to DR-002 Deep Research Prompt

В DR-002 prompt необходимо добавить блок:

```text
Discipline Status and Neighborhood Map Requirement

Before comparing IPaC with Context Engineering, determine the status of Context Engineering itself.

Is it:
- a mature engineering discipline;
- an applied practice field;
- an emerging practice cluster;
- a toolchain pattern;
- a role label;
- a marketing term;
- or a metaphor?

Assess it using the Discipline Maturity Test:
object, problem field, methodology, validation, lifecycle, standards,
professional role, institutional base, failure modes, and boundary clarity.

Do not assume that Context Engineering is a mature discipline merely because it uses the word “Engineering”.
```

---

# 11. Required Additions to DR-002 Output

В отчёте DR-002 должен появиться отдельный раздел:

```text
## Discipline Status of Context Engineering
```

Обязательная таблица:

| Criterion | Evidence | Assessment | Confidence |
|---|---|---|---|

И итоговая классификация:

```text
CONTEXT_ENGINEERING_AS_DISCIPLINE
CONTEXT_ENGINEERING_AS_PRACTICE_CLUSTER
CONTEXT_ENGINEERING_AS_TOOLCHAIN_PATTERN
CONTEXT_ENGINEERING_AS_ROLE_LABEL
CONTEXT_ENGINEERING_AS_MARKETING_TERM
CONTEXT_ENGINEERING_STATUS_INSUFFICIENT_EVIDENCE
```

---

# 12. Generalized Research Method Seed

Эта пристройка фиксирует зародыш более общего обязательного подхода:

```text
Перед каждым boundary research sprint необходимо определить
не только границу IPaC с соседней областью,
но и статус самой соседней области.
```

Будущий обобщённый документ:

```text
06_PROJECT_RULES/RESEARCH_DISCIPLINE_STATUS_AND_NEIGHBORHOOD_MAP_RULE_v0_1.md
```

Рабочая формула:

```text
Сначала определить, кто сосед.
Потом определять границу.
```

---

# 13. Placement

Рекомендуемое место:

```text
03_RESEARCH_MAP/deep_research/design/DR-002_DISCIPLINE_STATUS_AND_NEIGHBORHOOD_MAP_ADDENDUM_v0_1.md
```

---

# 14. Commit Recommendation

```powershell
git add .\03_RESEARCH_MAP\deep_research\design\DR-002_DISCIPLINE_STATUS_AND_NEIGHBORHOOD_MAP_ADDENDUM_v0_1.md
git commit -m "research: add DR-002 discipline status addendum"
git push
git status
```

---

# 15. Status

```text
DR002_DESIGN_ADDENDUM_READY
NEXT: update / build DR-002 input pack
CANON_LOCKED
FIELD_VALIDATION_REQUIRED_LATER
```
