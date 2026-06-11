# Multi-layer Knowledge Representation v0.1  
## Многослойное представление знания v0.1

```yaml
artifact_id: IPAC-MULTI-LAYER-KNOWLEDGE-REPRESENTATION-001
artifact_type: project_rule
status: active_project_rule_candidate
version: 0.1
layer: project_rules
scope: artifact design / knowledge representation / Obsidian relationality
source: IPaC working session — Obsidian + Git + Wave 4 import discussion
field_validated: false
execution_authorized: false
mvi_authorized: false
codex_authorized: false
```

---

# 0. Статус документа

Этот документ фиксирует принцип **многослойного представления знания** в IPaC.

Он не является:

- технической архитектурой;
- MVP-планом;
- execution plan;
- исследовательским выводом;
- final canon.

Он является:

- правилом проектирования артефактов;
- принципом работы в Obsidian;
- правилом человеко-машинного представления знания;
- защитой от превращения знания в плоский текст;
- ориентиром для будущих агентов, Codex/MCP и Deep Research.

Рекомендуемое место хранения:

```text
06_PROJECT_RULES/MULTI_LAYER_KNOWLEDGE_REPRESENTATION_v0_1.md
```

---

# 1. Главный принцип

IPaC-артефакт должен быть полезен не только в момент создания, но и в будущих неожиданных связях.

Знание в Obsidian должно проектироваться не как изолированный документ, а как будущий узел смысловой сети.

Базовая формула:

```text
Сжатая операционная форма — для модели.
Развёрнутая когнитивная форма — для человека.
Связевая форма — для будущих смысловых отношений в Obsidian.
```

---

# 2. Три слоя представления знания

IPaC-артефакт должен существовать минимум в трёх представлениях:

```text
1. Machine Operational Layer
   машинный операционный слой

2. Human Cognitive Layer
   человеческий когнитивный слой

3. Obsidian Relational Layer
   связевой слой Obsidian
```

Эти слои не конкурируют.  
Они обслуживают разные режимы работы с одним и тем же знанием.

---

# 3. Machine Operational Layer  
## Машинный операционный слой

Этот слой нужен для:

- ChatGPT Project;
- будущих AI-агентов;
- Codex / MCP;
- Git;
- регистров;
- автоматизации;
- проверки статусов;
- восстановления контекста.

Он должен быть:

- коротким;
- структурированным;
- статусным;
- с ID;
- с путями;
- с явными решениями;
- с указанием слоя;
- с указанием source-of-truth;
- с указанием запретов и ограничений.

Примеры элементов машинного слоя:

```text
artifact_id
artifact_type
status
version
layer
source
source_path
path
decision
validation_status
field_validated
execution_authorized
next_action
```

Правило:

```text
Модель должна быстро понять, что это за артефакт,
где он лежит, какой у него статус и что с ним нельзя делать.
```

---

# 4. Human Cognitive Layer  
## Человеческий когнитивный слой

Этот слой нужен человеку.

Он должен давать:

- смысл;
- объяснение;
- контекст;
- логику;
- связи;
- ограничения;
- почему это важно;
- что это не означает;
- как этим пользоваться;
- как это встроено в общий контур IPaC.

Этот слой делает артефакт читаемым, понятным и пригодным для инженерного мышления.

Правило:

```text
Человек должен не только увидеть статус артефакта,
но и понять его смысл, место и последствия.
```

Если машинный слой отвечает на вопрос:

```text
Что это и каков его статус?
```

то человеческий слой отвечает на вопрос:

```text
Зачем это нужно и как этим мыслить?
```

---

# 5. Obsidian Relational Layer  
## Связевой слой Obsidian

Этот слой нужен для будущих связей.

В Obsidian документ не должен быть мёртвой страницей.  
Он должен быть потенциальным узлом смысловой сети.

Артефакт должен допускать будущие связи с:

- каноном;
- Конституцией;
- lifecycle map;
- проектными правилами;
- гипотезами;
- research gaps;
- open questions;
- validation gaps;
- decisions;
- trace;
- parking lot;
- future Deep Research results;
- future MVI / Codex / MCP tasks;
- будущими агентными workflow.

Главная формула:

```text
Документ в Obsidian — это не только текст.
Это будущий узел сети смыслов.
```

---

# 6. Почему двух слоёв недостаточно

Первоначальное различение было:

```text
сжатая информация — для модели;
развёрнутая информация — для человека.
```

Но Obsidian добавляет третий режим.

Информация в Obsidian может позднее:

- перевязываться;
- пересобираться;
- всплывать в новом контексте;
- связываться с неожиданными research findings;
- становиться частью новых знаниевых сгустков;
- входить в новые канонические пересборки;
- давать новые смысловые мосты.

Поэтому IPaC должен учитывать не только текущего читателя и текущую модель, но и будущую связность знания.

---

# 7. Три вопроса качества артефакта

Хороший IPaC-артефакт должен отвечать на три вопроса:

```text
1. Может ли модель быстро понять, что это?
2. Может ли человек глубоко понять, зачем это?
3. Может ли Obsidian позже связать это с неожиданным новым контекстом?
```

Если ответ “нет” хотя бы на один вопрос — артефакт требует доработки.

---

# 8. Практические правила

## RULE-MLKR-001 — Metadata first

В каждом важном документе должен быть верхний metadata-блок.

Назначение:

- помогает модели;
- помогает Git / trace;
- помогает будущим агентам;
- фиксирует статус.

---

## RULE-MLKR-002 — Human explanation required

Один metadata-блок недостаточен.

У важного артефакта должен быть развёрнутый человеческий слой:

- зачем документ нужен;
- что он означает;
- чего он не означает;
- как его использовать.

---

## RULE-MLKR-003 — Clear placement

Файл должен лежать в правильном слое Vault:

```text
01_CANON
06_PROJECT_RULES
08_TRACE_AND_DECISIONS
07_PARKING_LOT
03_RESEARCH_MAP
04_OPEN_QUESTIONS_AND_VALIDATION
10_WAVE4_IMPORT_STAGING
```

Путь файла является частью смысла.

---

## RULE-MLKR-004 — Semantic filename

Название файла должно быть смысловым.

Плохое имя:

```text
note1.md
new_doc.md
draft_final_2.md
```

Хорошее имя:

```text
MULTI_LAYER_KNOWLEDGE_REPRESENTATION_v0_1.md
WAVE4_SAFE_PROJECT_RULES_v0_1.md
00_IPaC_CONSTITUTION_v0_1.md
```

---

## RULE-MLKR-005 — Future linkability

Документ должен быть написан так, чтобы его можно было связать с будущими артефактами.

Желательные элементы:

- связанные документы;
- source;
- related concepts;
- related rules;
- related decisions;
- related open questions;
- related parking items.

---

## RULE-MLKR-006 — No artificial graph inflation

Не надо искусственно строить граф заранее.

Правило:

```text
Связи должны помогать смыслу,
а не создавать иллюзию сложности.
```

Obsidian-граф не должен становиться самоцелью.

---

## RULE-MLKR-007 — Parking is a valid state

Если связь важна, но ещё не ясна, материал можно поместить в parking или backlog.

Parking — не мусор и не провал.

Parking — это способ сохранить ценное без преждевременной канонизации.

---

# 9. Анти-паттерны

## Anti-pattern 1 — Beautiful flat text

Красивый текст без ID, статуса, слоя, источника и места в системе.

Риск:

```text
человек вдохновляется,
модель теряет операционный контекст,
Git не понимает смысл изменения,
Obsidian не может встроить документ в сеть.
```

---

## Anti-pattern 2 — Metadata without meaning

Сильная структура без человеческого объяснения.

Риск:

```text
машина понимает статус,
человек не понимает смысл.
```

---

## Anti-pattern 3 — Isolated document

Документ написан как автономный текст без связей с каноном, trace, rules, research или parking.

Риск:

```text
артефакт не участвует в живом знаниевом контуре.
```

---

## Anti-pattern 4 — Graph obsession

Создание связей ради красивого графа.

Риск:

```text
Obsidian превращается в визуальную игрушку,
а не в инженерную карту знания.
```

---

# 10. Связь с полным контуром IPaC

Этот принцип поддерживает полный контур:

```text
Chat
→ Project
→ Obsidian
→ Git
→ Deep Research
→ Codex / MCP
→ Communication
→ Feedback
→ Review
→ Decision
→ Controlled Rebuild
```

Роль многослойного представления:

```text
Chat создаёт смысловой импульс.
Project помогает структурировать.
Obsidian даёт пространственную форму.
Git фиксирует историю.
Модель получает сжатый операционный слой.
Человек получает развёрнутый когнитивный слой.
Будущая сеть получает связевой слой.
```

---

# 11. Связанные документы

Связанные документы:

```text
01_CANON/00_CORE_CANON/00_IPaC_CONSTITUTION_v0_1.md
01_CANON/00_CORE_CANON/01_LIFECYCLE_MAP_LIVING_MEANING_TO_UPDATED_CANON_v0_1.md
06_PROJECT_RULES/WAVE4_SAFE_PROJECT_RULES_v0_1.md
08_TRACE_AND_DECISIONS/reviews/WAVE4_ADVANCED_DELTA_IMPORT_REVIEW_v0_1.md
00_START_HERE/04_OBSIDIAN_GIT_STRUCTURAL_REFERENCES_v0_1.md
```

---

# 12. Git Commit Recommendation

Рекомендуемый commit:

```text
rules: add multi-layer knowledge representation principle
```

---

# 13. Status

```text
status: active_project_rule_candidate
field_validated: false
execution_authorized: false
mvi_authorized: false
codex_authorized: false
```

---

# 14. Короткая формула

```text
IPaC-артефакт должен быть:
понятен модели,
понятен человеку,
готов стать узлом будущей смысловой сети.
```
