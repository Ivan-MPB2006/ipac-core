# TECH PROCESS — Zero Layer Source Capture, Git Diff, Daily Factography, and Re-Entry v0.2
## Техпроцесс: нулевой слой, Git-diff, фактография дня и повторный вход контекста

```yaml
artifact_id: TECH-PROCESS-ZERO-LAYER-SOURCE-CAPTURE-GIT-DIFF-REENTRY-2026-06-20-v0.2
artifact_type: technical_process / zero_layer_pipeline / source_to_reentry_process
status: ready_for_obsidian_review
version: 0.2
date: 2026-06-20
supersedes: ZERO_LAYER_SOURCE_CAPTURE_AND_REENTRY_TECH_PROCESS_v0_1.md
canonization_status: process_candidate
language_config: ru
machine_terms_policy: English term must include Russian translation in parentheses
related_rule: ZERO_LAYER_RECURSIVE_CONTEXT_REENTRY_RULE_v0_1.md
related_regulation: THREAD_EXPORT_GIT_DIFF_DAILY_FACTOGRAPHY_REGULATION_v0_1.md
related_diagram: THREAD_EXPORT_GIT_DIFF_DAILY_FACTOGRAPHY_PROCESS_v0_1.mmd
include_in: DAILY_REGISTER_2026-06-20
```

---

# 0. Что изменилось в v0.2

Версия v0.1 описывала общий контур нулевого слоя:

```text
отчуждение → source container → QA → Git → выкопировка → повторный вход.
```

Но в ней недостаточно явно был выделен важнейший механизм:

```text
Git diff
(разность версий)

как способ получить
Daily Factography
(фактографию дня).
```

Версия v0.2 исправляет это: Git diff становится не частной технической возможностью, а отдельным обязательным слоем техпроцесса.

---

# 1. Назначение

Этот техпроцесс описывает, как IPaC работает с нулевым слоем:

```text
отчуждать первичный источник;
куда его класть;
как фиксировать;
как регистрировать в Git;
как выделять дневную дельту через Git diff;
как превращать дельту в фактографию дня;
как хранить;
как делать ассоциативный доступ;
как возвращать нужный контекст в новый проход работы.
```

Главная формула:

```text
Нулевой слой — не архив.
Нулевой слой — рабочее месторождение первичной смысловой породы.

Git diff по нулевому слою
даёт фактографию дня.
```

---

# 2. Общая схема процесса v0.2

```text
1. Capture / Отчуждение
   Снять первичный источник из треда / Obsidian / PDF / MD / HTML.

2. Source Container / Контейнер первоисточника
   Упаковать источник в папку с MANIFEST, SOURCE_NOTES, assets, checks.

3. Staging / Временная зона
   Положить в staging до проверки.

4. QA / Проверка пригодности
   Проверить читаемость, полноту, структуру, assets, кодировку.

5. Git Registration / Git-регистрация
   Провести source container или его текстовую часть через Git.

6. Version Line / Версионная линия
   Накопить ряд версий / дневных экспортов.

7. Git Diff / Дельта
   Сравнить предыдущий и текущий срез.

8. Daily Factography / Фактография дня
   Получить материал “что реально добавилось / изменилось за день”.

9. Markup / Разметка
   Разметить дельту на события, решения, правила, НКУ, артефакты.

10. Register / Реестры
    Разнести результат в Daily Register, Daily Trace, правила, реестры.

11. Re-Entry / Повторный вход
    Возвратить релевантный контекст в новый рабочий проход.

12. New Artifact / Новый артефакт
    Создать правило, кандидат, Project-инструкцию, prompt, report.

13. New Save Area Checkpoint / Новая точка сохранения
    Зафиксировать результат в Git и check-report.
```

---

# 3. Где хранить

## 3.1 Staging для свежих экспортов

```text
08_TRACE_AND_DECISIONS/thread_exports/_STAGING/
```

Назначение:

```text
принять сырой экспорт;
не смешивать его с каноном;
не коммитить без QA;
проверить структуру и пригодность.
```

## 3.2 Source Packages / контейнеры первоисточников

После проверки и принятия:

```text
09_SOURCE_PACKAGES/ZERO_LAYER/
```

Рекомендуемая структура:

```text
09_SOURCE_PACKAGES/ZERO_LAYER/
└── 2026-06-20__THREAD_EXPORT__IPAC_WORKING_THREAD_v0_1/
    ├── MANIFEST.md
    ├── SOURCE_NOTES.md
    ├── THREAD_EXPORT_2026-06-20_IPaC_WORKING_THREAD_v0_1.md
    ├── THREAD_EXPORT_2026-06-20_IPaC_WORKING_THREAD_v0_1.pdf
    ├── images/
    └── checks/
```

## 3.3 Daily Factography

Новый слой хранения:

```text
08_TRACE_AND_DECISIONS/daily_factography/
```

Файлы:

```text
DAILY_FACTOGRAPHY_2026-06-20_FROM_THREAD_DIFF_v0_1.md
DAILY_FACTOGRAPHY_2026-06-20_FROM_THREAD_DIFF_v0_1.patch
DAILY_FACTOGRAPHY_2026-06-20_REVIEW_v0_1.md
```

## 3.4 Registers / реестры

```text
02_REGISTERS/ZERO_LAYER/
```

Будущие реестры:

```text
ZERO_LAYER_SOURCE_CONTAINER_REGISTER_v0_1.md
CONTEXT_REENTRY_REGISTER_v0_1.md
PRIMARY_SOURCE_EVIDENCE_REGISTER_v0_1.md
DEVELOPMENT_FLOW_RECONSTRUCTION_REGISTER_v0_1.md
DAILY_FACTOGRAPHY_DIFF_REGISTER_v0_1.md
```

---

# 4. Source Container: что входит

Каждый Source Container (контейнер первоисточника) должен иметь:

```text
MANIFEST.md
SOURCE_NOTES.md
исходный MD / TXT / PDF / HTML
assets / images если есть
CHECK_REPORT.txt если проводилась проверка
```

MANIFEST должен фиксировать:

```text
source_id;
дата исходного фрагмента;
дата экспорта;
тип источника;
размер;
состав файлов;
статус QA;
что является первичным текстом;
что является производным;
какие assets приложены;
какие известны проблемы;
куда можно использовать.
```

---

# 5. Git-регистрация: что именно проводить

## 5.1 Всегда хорошо проводить

```text
MANIFEST.md
SOURCE_NOTES.md
MD / TXT primary export после QA;
Daily Factography;
routing maps;
register entries;
Daily Trace;
rules;
architecture candidates.
```

## 5.2 Не проводить без отдельного решения

```text
огромные PDF;
массовые images;
непроверенный _STAGING;
сырой мусор;
дубли;
файлы с проблемной кодировкой;
14.06 carry-over без решения;
thread_exports без QA.
```

## 5.3 Коммиты

Для source container:

```text
source: stage zero layer source container YYYY-MM-DD
```

Для принятого контейнера:

```text
source: accept zero layer source container YYYY-MM-DD
```

Для дневной фактографии:

```text
trace: add daily factography YYYY-MM-DD from thread diff
```

Для правил:

```text
rules: add zero layer source capture and diff process
```

---

# 6. Git diff как отдельная технологическая операция

## 6.1 Смысл

```text
Git diff
(разность версий)

позволяет выделить не весь тред,
а только новое / изменённое содержание
между предыдущим и текущим состоянием.
```

Это даёт:

```text
Daily Factography
(фактографию дня)

=
первичный материал дня,
а не пересказ и не summary.
```

## 6.2 Два режима diff

### Режим A — один обновляемый файл

Если один и тот же файл треда обновляется каждый день:

```powershell
git diff HEAD~1 HEAD -- .\path\to\THREAD_EXPORT_CURRENT.md > DAILY_FACTOGRAPHY_DIFF_YYYY-MM-DD.patch
```

Плюс Review-файл:

```text
DAILY_FACTOGRAPHY_YYYY-MM-DD_FROM_THREAD_DIFF_REVIEW_v0_1.md
```

### Режим B — отдельный файл на каждый день

Если каждый день создаётся новый экспорт:

```text
THREAD_EXPORT_2026-06-19_IPaC_WORKING_THREAD.md
THREAD_EXPORT_2026-06-20_IPaC_WORKING_THREAD.md
```

Тогда diff строится внешним скриптом или сравнением двух файлов:

```text
previous export → current export → daily delta
```

Результат:

```text
DAILY_FACTOGRAPHY_2026-06-20_FROM_THREAD_DIFF_v0_1.md
```

## 6.3 Что важно

Diff не равен Daily Trace.

```text
Diff = что появилось.
Daily Trace = что это значило.
```

---

# 7. Daily Factography File

Рекомендуемый файл:

```text
08_TRACE_AND_DECISIONS/daily_factography/
DAILY_FACTOGRAPHY_YYYY-MM-DD_FROM_THREAD_DIFF_v0_1.md
```

Структура:

```yaml
source_previous:
source_current:
diff_method:
generated:
events_detected:
decisions_detected:
new_terms_detected:
candidate_rules_detected:
architecture_candidates_detected:
project_actions_detected:
open_tails_detected:
manual_review_status:
```

---

# 8. Разметка фактографии дня

Фактография дня размечается на:

```text
операционные события;
решения;
архитектурные кандидаты;
правила;
реестровые записи;
НКУ;
ошибки / recovery;
Project-actions;
Codex/MCP backlog;
source-container updates.
```

После разметки результаты идут в:

```text
Daily Register;
Daily Trace;
Project Rules;
Approach Candidates;
Registers;
Research Backlog;
Project boot inputs.
```

---

# 9. Ассоциативный доступ к нулевому слою

Конечная цель:

```text
нулевой слой становится важнейшим ресурсом
ассоциативной памяти,
которая по смысловому запросу
подаёт необходимый контекст.
```

До этого нужно пройти этапы:

```text
v0.1 — ручной поиск и выкопировка;
v0.2 — Git diff и Daily Factography;
v0.3 — реестры и MOC;
v1.0 — смысловой запрос → релевантная первичка → повторный вход.
```

---

# 10. Минимальный ежедневный цикл v0.2

```text
Утро:
1. Start Check.
2. Daily Register start.
3. Baseline: HEAD / status / open tails.

День:
4. Работа.
5. Фиксация ключевых событий.

Вечер:
6. Export thread.
7. Source Container.
8. QA.
9. Git registration.
10. Git diff / Daily Factography.
11. Разметка фактографии.
12. Daily Register closeout.
13. Daily Trace.
14. Commit-check.
```

---

# 11. Почему v0.2 заменяет v0.1

```text
ZERO_LAYER_SOURCE_CAPTURE_AND_REENTRY_TECH_PROCESS_v0_1.md
= общий техпроцесс без явно встроенного Git diff как обязательного слоя.

ZERO_LAYER_SOURCE_CAPTURE_GIT_DIFF_AND_REENTRY_TECH_PROCESS_v0_2.md
= общий техпроцесс с Git diff и Daily Factography как центральным механизмом.
```

То есть v0.2 заменяет v0.1 как общий техпроцесс.

Но специализированный регламент остаётся подчинённым документом:

```text
THREAD_EXPORT_GIT_DIFF_DAILY_FACTOGRAPHY_REGULATION_v0_1.md
= частная регулярная инструкция именно для тредов.
```

---

# 12. Финальная формула

```text
Отчуждение треда — это создание нулевого слоя.

Git-регистрация делает нулевой слой версионируемым.

Git diff превращает версионируемый нулевой слой
в фактографию дня.

Фактография дня становится первичным материалом
для Daily Trace, реестров, Project и повторного входа контекста.
```

---

# 13. Status

```text
TECH_PROCESS_UPDATED
GIT_DIFF_LAYER_ADDED
DAILY_FACTOGRAPHY_LAYER_DEFINED
ZERO_LAYER_VERSIONING_CLARIFIED
THREAD_REGULATION_LINKED_AS_CHILD_PROCESS
ASSOCIATIVE_MEMORY_TARGET_CONFIRMED
```
