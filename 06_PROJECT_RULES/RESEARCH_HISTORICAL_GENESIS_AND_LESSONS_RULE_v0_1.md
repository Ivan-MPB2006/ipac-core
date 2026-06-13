# RULE — Historical Genesis and Lessons in Research Assignments v0.1  
## Правило: исторический генезис, текущее состояние, достижения и уроки в каждом исследовательском задании

```yaml
artifact_id: RULE-IPAC-RESEARCH-HISTORICAL-GENESIS-AND-LESSONS-001
artifact_type: project_rule
status: accepted_project_rule_candidate
version: 0.1
layer: project_rules
scope: research assignments / Deep Research prompts / boundary research / historical analysis / lessons learned
date: 2026-06-13
canon_update_authorized: false
field_validated: process_rule
origin:
  - DR-001_GEMINI_IPaC_vs_Knowledge_Engineering_REPORT_v0_1.md
  - DR-002_RESEARCH_DESIGN_IPaC_vs_CONTEXT_ENGINEERING_v0_1.md
  - DR-002_DISCIPLINE_STATUS_AND_NEIGHBORHOOD_MAP_ADDENDUM_v0_1.md
related_rules:
  - RESEARCH_DISCIPLINE_STATUS_AND_NEIGHBORHOOD_MAP_RULE_v0_1.md
```

---

# 1. Rule Statement

Каждое серьёзное исследовательское задание IPaC должно включать обязательный историко-генетический блок:

```text
Откуда пошло?
Почему возникло?
Как развивалось?
Куда пришло?
В каком состоянии находится сегодня?
Что полезного можно наследовать?
Каких ошибок нужно избежать?
```

Короткая формула:

```text
Нельзя исследовать область только в её сегодняшнем виде.
Нужно исследовать её генезис, траекторию и уроки.
```

---

# 2. Why This Rule Exists

DR-001 показал, что область нельзя понимать по современному названию или текущей модной формулировке.

На примере Knowledge Engineering стало видно:

```text
если смотреть только на сегодняшние термины,
можно пропустить десятилетия становления:
expert systems,
knowledge acquisition bottleneck,
CommonKADS,
ontology engineering,
METHONTOLOGY,
provenance,
semantic drift,
knowledge graphs,
LLM / neuro-symbolic transition.
```

Такой исторический проход позволяет увидеть:

- настоящие корни области;
- её реальные достижения;
- её ограничения;
- её ошибки;
- её незакрытые проблемы;
- то, что IPaC может наследовать;
- то, чего IPaC должен избежать.

---

# 3. Mandatory Historical-Genesis Block

Каждый research prompt должен содержать блок:

```text
Historical Genesis Requirement

Do not start from current buzzwords or recent blog posts.
Trace the historical development of the target field.

Investigate:
1. origins;
2. early problem field;
3. first practical systems / products;
4. key people and schools;
5. major methodological shifts;
6. central achievements;
7. failures and bottlenecks;
8. current state;
9. useful inheritance for IPaC;
10. mistakes IPaC should avoid.
```

Русская версия:

```text
Не начинать с текущих buzzwords и свежих блогов.
Отследить историческое становление области:
откуда пошло,
какую проблему решало,
кто двигал,
какие продукты создало,
где сломалось,
чему можно научиться,
чего нельзя повторять.
```

---

# 4. Required Historical Questions

Каждый research sprint должен ответить минимум на следующие вопросы.

## 4.1 Origins

```text
1. Когда и почему возникла область?
2. Какая практическая или теоретическая боль её породила?
3. Как она называлась до появления современного термина?
4. Какие более старые дисциплины стояли под ней?
```

## 4.2 Early Formation

```text
1. Какие первые системы / практики / продукты стали центрами становления?
2. Какие задачи они решали?
3. Какие ограничения быстро проявились?
4. Какие early failure modes были зафиксированы?
```

## 4.3 Key People and Centers

```text
1. Кто были основные деятели / “маховики” развития?
2. Какие исследовательские группы, школы, лаборатории, компании или сообщества играли центральную роль?
3. Какие книги, статьи, стандарты или продукты стали опорными?
```

## 4.4 Methodological Evolution

```text
1. Как менялись методы области?
2. Какие сдвиги парадигмы произошли?
3. Какие старые подходы были отвергнуты или ограничены?
4. Какие практики выжили и почему?
```

## 4.5 Current State

```text
1. В каком состоянии область находится сегодня?
2. Есть ли зрелая дисциплина, practice cluster, role label, toolchain или marketing term?
3. Есть ли стандарты, validation culture, lifecycle, professional role?
4. Какие unresolved problems остаются?
```

## 4.6 Achievements

```text
1. Какие центровые продукты и достижения область создала?
2. Что реально работает?
3. Какие практики доказали полезность?
4. Какие достижения стоит наследовать IPaC?
```

## 4.7 Mistakes and Negative Lessons

```text
1. Где область переобещала?
2. Где не справилась с масштабированием?
3. Где возникли bottlenecks?
4. Какие ошибки стали системными?
5. Что IPaC не должен повторять?
```

## 4.8 Boundary and IPaC Lessons

```text
1. В чём пересечение с IPaC?
2. В чём отличие?
3. Что IPaC может наследовать?
4. Чему IPaC должен научиться?
5. Где IPaC должен поставить guardrail?
6. Какие claims IPaC нужно ослабить?
7. Какие claims IPaC можно усилить?
```

---

# 5. Required Output Sections

Каждый research report должен содержать разделы:

```text
## Historical Genesis
## Key People, Schools and Centers
## Foundational Products and Achievements
## Methodological Evolution
## Current State of the Field
## Useful Inheritance for IPaC
## Negative Lessons / What IPaC Should Not Repeat
## Boundary with IPaC
```

Если research report не содержит этих разделов, он считается incomplete for boundary decision.

---

# 6. Best-Practice Pattern from DR-001 Gemini Report

DR-001 Gemini report показал хороший шаблон историко-генетического исследования.

Он не ограничился текущим состоянием Knowledge Engineering, а развернул историческую траекторию:

```text
expert systems
→ DENDRAL
→ knowledge acquisition bottleneck
→ heuristic classification
→ modeling view
→ CommonKADS
→ ontology engineering
→ METHONTOLOGY
→ provenance / PROV-O
→ semantic drift
→ neuro-symbolic AI and LLM integration
```

Этот паттерн полезен как best practice:

```text
1. показать истоки;
2. показать ранние системы;
3. показать bottleneck;
4. показать методологический сдвиг;
5. показать зрелые frameworks;
6. показать стандарты;
7. показать современные AI-era трансформации;
8. показать, что IPaC может наследовать;
9. показать, чего IPaC должен избежать.
```

---

# 7. Historical Research vs Name Research

Важно различать:

```text
исследование происхождения термина
```

и

```text
исследование происхождения задачи.
```

Термин может быть новым.  
Задача может быть старой.

Пример:

```text
Context Engineering как термин может быть свежим.
Но задачи управления контекстом могут иметь корни в HCI,
cognitive engineering, context-aware computing,
knowledge engineering, information retrieval,
decision support and situated cognition.
```

Правило:

```text
Исследовать нужно не только термин,
а исторический генезис задачи, боли и практики.
```

---

# 8. Positive Inheritance Requirement

Каждый research sprint должен явно указать:

```text
Что IPaC может наследовать?
```

Категории полезного наследования:

| Category | Meaning |
|---|---|
| Concepts | Понятия, которые можно использовать аккуратно |
| Methods | Методики и процедуры |
| Validation | Способы проверки качества |
| Failure handling | Известные способы борьбы с ошибками |
| Lifecycle patterns | Жизненные циклы объектов |
| Governance practices | Review, approval, trace, maintenance |
| Tooling ideas | Инструменты и workflow |
| Terminology | Устойчивые термины, которые лучше не переизобретать |

---

# 9. Negative Lessons Requirement

Каждый research sprint должен явно указать:

```text
Чего IPaC не должен повторять?
```

Категории отрицательных уроков:

| Category | Meaning |
|---|---|
| Overclaiming | Область обещала больше, чем могла дать |
| Bottleneck | Возникло системное узкое место |
| Tool capture | Инструмент стал подменять цель |
| Formalism trap | Формальная структура стала важнее смысла |
| Maintenance failure | Система не выдержала сопровождения |
| Scaling failure | Подход не масштабировался |
| Human factor failure | Недооценили человека, нагрузку, усталость, bias |
| Validation gap | Не было достаточной проверки в реальности |
| Terminology inflation | Термины росли быстрее практики |
| Institutional drift | Организации приняли форму без содержания |

---

# 10. “What to Take / What to Avoid” Table

Каждый report должен включать таблицу:

| Area | What to Inherit | What to Avoid | Relevance for IPaC |
|---|---|---|---|

Пример:

| Area | What to Inherit | What to Avoid | Relevance for IPaC |
|---|---|---|---|
| Knowledge Engineering | structured methods, knowledge acquisition awareness, ontology discipline | knowledge acquisition bottleneck, over-formalization | IPaC must capture living meaning without losing structure |
| Provenance Engineering | trace, origin, agent/action/entity thinking | assuming trace alone equals validation | IPaC trace must support review and decision |
| Context Engineering | context packaging, model-facing context discipline | reducing knowledge lifecycle to model input | IPaC needs context, but is broader than context delivery |

---

# 11. Relationship to Discipline Status Rule

Это правило дополняет:

```text
RESEARCH_DISCIPLINE_STATUS_AND_NEIGHBORHOOD_MAP_RULE_v0_1.md
```

Связь:

```text
Discipline Status Rule отвечает:
кто сосед и на каких правах он соседствует с IPaC?

Historical Genesis Rule отвечает:
откуда сосед возник, как развивался,
что создал, где ошибся,
чему IPaC должен научиться.
```

Оба правила обязательны для boundary research.

---

# 12. Mandatory Prompt Insert

Каждый Deep Research prompt должен включать следующий блок:

```text
Historical Genesis and Lessons Requirement

Do not analyze the target field only through its current name or current hype.
Trace the historical genealogy of the problem, practices and terminology.

Identify:
- origins;
- early systems or products;
- key people, schools and centers;
- major methodological shifts;
- central achievements;
- bottlenecks and failures;
- current state;
- what IPaC can inherit;
- what IPaC must avoid;
- what remains unresolved.

Distinguish:
- origin of the term;
- origin of the problem;
- origin of the practice;
- current branding of the field.
```

---

# 13. Research Review Gate

При review каждого research report проверить:

```text
1. Есть ли исторический генезис?
2. Не ограничился ли report свежими блогами?
3. Выделены ли ключевые деятели, школы, продукты?
4. Показаны ли достижения?
5. Показаны ли bottlenecks и failures?
6. Есть ли раздел “what IPaC should inherit”?
7. Есть ли раздел “what IPaC should avoid”?
8. Различены ли term origin и problem origin?
9. Есть ли current state assessment?
10. Можно ли на основе report делать boundary decision?
```

Если нет:

```text
REPORT_REQUIRES_HISTORICAL_GENESIS_SUPPLEMENT
```

---

# 14. Placement

Рекомендуемое место:

```text
06_PROJECT_RULES/RESEARCH_HISTORICAL_GENESIS_AND_LESSONS_RULE_v0_1.md
```

---

# 15. Git Commit Recommendation

```powershell
git add .\06_PROJECT_RULES\RESEARCH_HISTORICAL_GENESIS_AND_LESSONS_RULE_v0_1.md
git commit -m "rules: add historical genesis requirement for research"
git push
git status
```

---

# 16. Status

```text
RULE_READY_FOR_LONG_TERM_USE
APPLIES_TO_ALL_RESEARCH_SPRINTS
CANON_LOCKED
```
