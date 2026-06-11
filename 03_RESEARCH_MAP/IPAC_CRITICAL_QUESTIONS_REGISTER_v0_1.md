# IPaC Critical Questions Register v0.1  
## Реестр критических вопросов IPaC v0.1

```yaml
artifact_id: IPAC-CRITICAL-QUESTIONS-REGISTER-001
artifact_type: critical_questions_register
status: active_research_preparation_candidate
version: 0.1
layer: research_map
scope: external critique preparation / Deep Research targeting / canon honesty
source: IPaC working session — transition from Wave 4 to Deep Research
field_validated: false
deep_research_launched: false
execution_authorized: false
mvi_authorized: false
codex_authorized: false
```

---

# 0. Статус документа

Этот документ фиксирует критические вопросы, которые IPaC должен задать сам себе до внешнего позиционирования, Deep Research и дальнейшего усиления канона.

Документ НЕ является:

- ответом на вопросы;
- исследовательским отчётом;
- доказательством IPaC;
- обновлением канона;
- планом MVP / MVI;
- execution plan.

Документ является:

- входным фильтром для Deep Research;
- подготовкой к внешней критике;
- защитой от ложной новизны;
- защитой от красивой, но непроверенной концептуальной связности;
- инструментом честного research framing.

Главная формула:

```text
Если мы сами не зададим эти вопросы,
их зададут нам другие —
и, возможно, на гораздо более жёсткой рамке.
```

---

# 1. Назначение

IPaC уже имеет:

- Core Canon;
- Constitution;
- Lifecycle Map;
- Obsidian Vault;
- Git / GitHub trace;
- Wave 4 selective import;
- Research Backlog placeholders.

Следующий этап — Deep Research.

Но Deep Research не должен запускаться как любопытство или поиск красивых ссылок.

Он должен отвечать на критические вопросы, от которых зависит честность IPaC.

Правило:

```text
Deep Research закрывает не любопытство,
а критические вопросы,
от которых зависит устойчивость канона.
```

---

# 2. Группы критических вопросов

Критические вопросы делятся на три группы:

```text
A. Вопросы, которые нужно ответить до публичного позиционирования.
B. Вопросы, которые должны направлять Deep Research.
C. Вопросы, которые требуют field validation / практической проверки.
```

Не все вопросы должны решаться сейчас.  
Но все они должны быть видимы.

---

# 3. A — Questions Before Public Positioning  
## Вопросы до публичного позиционирования

Эти вопросы опасно оставлять без ответа, если IPaC будет представлен внешней аудитории.

| ID | Critical Question | Why It Matters | Risk if Ignored | Next Action |
|---|---|---|---|---|
| CQ-A-001 | Чем IPaC отличается от Knowledge Engineering? | Главный риск ложной новизны | IPaC могут воспринять как переименование старой дисциплины | DR-001 |
| CQ-A-002 | Чем IPaC отличается от Knowledge Management? | Нужно отделить живой контур знания от корпоративного управления знаниями | IPaC сведут к KM / базе документов | Later DR |
| CQ-A-003 | Чем IPaC отличается от Context Engineering? | Важно отделить управление контекстом модели от жизненного цикла знания | IPaC сведут к prompt/context workflow | DR-002 |
| CQ-A-004 | Чем IPaC отличается от Docs as Code? | Obsidian + Git могут быть восприняты как обычная документация в Git | Система будет редуцирована до documentation workflow | DR-003 / review |
| CQ-A-005 | Чем IPaC отличается от Obsidian + Git workflow? | Нужно показать, что инструменты не равны методу | Tool capture / обесценивание концепта | Internal review |
| CQ-A-006 | Что в IPaC действительно новое из-за LLM / Codex / MCP? | Нужно честно определить AI-native часть | Риск сказать “новое”, где новое только инструментальное | Deep Research / review |
| CQ-A-007 | Кто является главным пользователем IPaC? | Без пользователя нет проверки ценности | Проект останется внутренней методологией | Field validation later |
| CQ-A-008 | Как объяснить IPaC без перегруза терминологией? | Сложный язык может закрыть путь к внешнему пониманию | Внешняя аудитория не поймёт ценность | Communication review later |
| CQ-A-009 | Какие claims IPaC уже можно делать, а какие нельзя? | Нужно не переобещать | Потеря доверия / false validation | Source limitations review |
| CQ-A-010 | Где граница между концептом, архитектурой и execution? | Критично для всех внешних обсуждений | Смешение уровней разрушит доверие | Project rules / review |

---

# 4. B — Questions for Deep Research  
## Вопросы для Deep Research

Эти вопросы должны направлять research sprints.

## DR-001 — IPaC vs Knowledge Engineering

| ID | Critical Question |
|---|---|
| CQ-B-001 | Что исторически называлось Knowledge Engineering? |
| CQ-B-002 | Какие задачи Knowledge Engineering решала в экспертных системах? |
| CQ-B-003 | Как Knowledge Engineering связана с knowledge representation, ontology engineering, expert systems, knowledge management и decision support? |
| CQ-B-004 | Какие элементы IPaC уже полностью покрыты Knowledge Engineering? |
| CQ-B-005 | Какие элементы IPaC выходят за пределы классической Knowledge Engineering? |
| CQ-B-006 | Является ли living meaning → artifact → canon → trace → feedback → controlled rebuild новым объектом или вариантом известных практик? |
| CQ-B-007 | Какие термины IPaC конфликтуют с устоявшимися терминами Knowledge Engineering? |
| CQ-B-008 | Как корректно позиционировать IPaC: continuation, extension, application layer, operating layer? |

## DR-002 — IPaC vs Context Engineering

| ID | Critical Question |
|---|---|
| CQ-B-009 | Что сейчас называется Context Engineering в LLM-системах? |
| CQ-B-010 | Чем Context Engineering отличается от prompt engineering, RAG, memory и tool use? |
| CQ-B-011 | Является ли Context Pack в IPaC частным случаем Context Engineering? |
| CQ-B-012 | Что Context Engineering не решает в жизненном цикле знания? |
| CQ-B-013 | Можно ли считать IPaC надстройкой над Context Engineering? |
| CQ-B-014 | Где заканчивается “что видит модель” и начинается “как живёт знание”? |

## DR-003 — IPaC and Cognitive Engineering / Cognitive Systems Engineering

| ID | Critical Question |
|---|---|
| CQ-B-015 | Как Cognitive Engineering снижает cognitive load в сложных системах? |
| CQ-B-016 | Что такое situation awareness и как это связано с Obsidian как cockpit? |
| CQ-B-017 | Как проектируют human-in-the-loop systems? |
| CQ-B-018 | Как предотвращают automation bias и overtrust? |
| CQ-B-019 | Как IPaC должен проектировать интерфейс человек–AI для работы со смыслом? |
| CQ-B-020 | Какие элементы IPaC являются cognitive engineering, а какие выходят за её пределы? |

## DR-004 — OS / Software Engineering Analogy

| ID | Critical Question |
|---|---|
| CQ-B-021 | Какие проблемы решала теория операционных систем? |
| CQ-B-022 | Как ОС снижали сложность вычислительной среды? |
| CQ-B-023 | Что такое system generation и чем полезна аналогия с OS/360? |
| CQ-B-024 | Какие элементы OS-аналогии переносимы в IPaC? |
| CQ-B-025 | Какие элементы OS-аналогии опасно переносить? |
| CQ-B-026 | Где граница между метафорой и архитектурной моделью? |

---

# 5. C — Questions Requiring Field Validation  
## Вопросы, требующие полевой проверки

Эти вопросы нельзя закрыть Deep Research alone.  
Они требуют наблюдения, теста, внешней реакции или практического применения.

| ID | Critical Question | Why Deep Research Is Not Enough | Future Validation Type |
|---|---|---|---|
| CQ-C-001 | Отвечает ли IPaC на реальную внешнюю потребность? | Источники не докажут user need | field interview / reviewer feedback |
| CQ-C-002 | Может ли внешний человек понять IPaC без автора? | Нужна проверка восприятия | external reviewer loop |
| CQ-C-003 | Снижает ли IPaC complexity на практике? | Требуется before/after comparison | MVI / workflow test |
| CQ-C-004 | Помогает ли Obsidian cockpit реально удерживать объёмную картину? | Нужен опыт использования | usability observation |
| CQ-C-005 | Снижает ли Context Pack drift между чатами / агентами? | Нужен clean-room test | bootability test |
| CQ-C-006 | Работает ли feedback → review → decision → rebuild? | Нужен реальный feedback cycle | controlled feedback test |
| CQ-C-007 | Может ли Codex/MCP снять деятельностные барьеры? | Нужна реальная automation task | bounded Codex task later |
| CQ-C-008 | Не превращается ли IPaC в бюрократию? | Нужен реальный workflow pressure | process friction review |
| CQ-C-009 | Создаёт ли IPaC скорость и лёгкость потока? | Нужен опыт полного цикла | full-loop MVI later |
| CQ-C-010 | Какие элементы IPaC ценны без AI? | Нужен сравнительный режим | human-only / AI-assisted comparison |

---

# 6. Questions That Must Not Be Answered Prematurely

Следующие вопросы нельзя закрывать красивой формулировкой:

```text
IPaC уже доказан?
IPaC уникален?
IPaC снижает сложность?
IPaC готов к public positioning?
IPaC готов к MVI?
IPaC готов к Codex/MCP?
IPaC готов к мультиагентам?
```

Правило:

```text
Если вопрос требует field validation,
нельзя закрывать его research support или внутренней связностью.
```

---

# 7. Minimum Research Discipline

Каждый Deep Research Sprint должен отвечать:

```text
1. На какой критический вопрос он отвечает?
2. Какие источники использованы?
3. Что источник подтверждает?
4. Чего источник НЕ подтверждает?
5. Какие claims надо ослабить?
6. Какие claims можно усилить?
7. Какие gaps остались?
8. Требуется ли field validation?
9. Нужно ли обновлять canon?
10. Если да — через какой review / decision / trace?
```

---

# 8. Recommended First Sprint

Первый recommended sprint:

```text
DR-001 — IPaC vs Knowledge Engineering
```

Причина:

```text
Это главный риск ложной новизны.
Если IPaC просто переименовывает Knowledge Engineering,
это нужно увидеть сразу.
Если IPaC отличается,
это нужно доказательно и осторожно сформулировать.
```

---

# 9. Placement

Рекомендуемое место хранения:

```text
03_RESEARCH_MAP/IPAC_CRITICAL_QUESTIONS_REGISTER_v0_1.md
```

Связанные документы:

```text
03_RESEARCH_MAP/WAVE4_RESEARCH_BACKLOG_PLACEHOLDERS_v0_1.md
01_CANON/00_CORE_CANON/00_IPaC_CONSTITUTION_v0_1.md
01_CANON/00_CORE_CANON/01_LIFECYCLE_MAP_LIVING_MEANING_TO_UPDATED_CANON_v0_1.md
06_PROJECT_RULES/WAVE4_SAFE_PROJECT_RULES_v0_1.md
07_PARKING_LOT/WAVE4_BACKLOG_AND_PARKING_SUMMARY_v0_1.md
08_TRACE_AND_DECISIONS/decisions/DECISION_WAVE4_SELECTIVE_IMPORT_CLOSURE_v0_1.md
```

---

# 10. Git Commit Recommendation

Рекомендуемый commit:

```text
research: add IPaC critical questions register
```

---

# 11. Status

```text
status: active_research_preparation_candidate
deep_research_launched: false
execution_authorized: false
mvi_authorized: false
codex_authorized: false
field_validated: false
```

---

# 12. Короткая формула

```text
Критические вопросы — это не угроза IPaC.
Это механизм защиты IPaC от самообмана.
```
