# REGULATION — Thread Export → Git Diff → Daily Factography v0.1
## Регламент: сохранение тредов в Git, выделение дельты дня и работа с фактографией дня

```yaml
artifact_id: REGULATION-THREAD-EXPORT-GIT-DIFF-DAILY-FACTOGRAPHY-2026-06-20-v0.1
artifact_type: regulation / technical_process / daily_factography_pipeline
status: ready_for_obsidian_review
date: 2026-06-20
canonization_status: process_candidate
related_diagram: THREAD_EXPORT_GIT_DIFF_DAILY_FACTOGRAPHY_PROCESS_v0_1.mmd
related_rule: ZERO_LAYER_RECURSIVE_CONTEXT_REENTRY_RULE_v0_1.md
language_config: ru
machine_terms_policy: English term must include Russian translation in parentheses
include_in: DAILY_REGISTER_2026-06-20
```

---

# 0. Назначение

Этот регламент описывает регулярный процесс:

```text
тред → экспорт → Git → diff → фактография дня → разметка → Daily Trace → повторное использование.
```

Цель:

```text
получить фактографию дня как первичный источник,
на который можно ссылаться, который можно размечать,
сравнивать, добывать и возвращать в работу.
```

Главная формула:

```text
Тред больше не исчезает в небытие.

Он отчуждается,
попадает в Git,
получает историю изменений,
а последний день выделяется через diff
как фактография дня.
```

---

# 1. Базовый принцип

```text
Если тред сохраняется только как огромный PDF,
он является архивом.

Если тред сохраняется в Git как текстовый источник,
он становится версионированной первичкой.

Если между версиями треда считается diff,
появляется фактография дня.
```

---

# 2. Роли объектов

## 2.1 Thread Export / экспорт треда

```text
сырой или почти сырой слепок треда:
MD / TXT / HTML / PDF + assets.
```

## 2.2 Source Container / контейнер первоисточника

```text
папка, где лежит сам экспорт,
manifest,
source notes,
assets,
checks.
```

## 2.3 Git

```text
регистратор версий и diff-механизм.
```

## 2.4 Git diff

```text
механизм выделения нового смыслового слоя
между предыдущим и текущим состоянием.
```

## 2.5 Daily Factography / фактография дня

```text
выделенная дельта последнего дня:
что реально появилось в первичном потоке.
```

## 2.6 Daily Register / Бортовой журнал

```text
операционный журнал событий дня.
```

## 2.7 Daily Trace / Дневная трасса

```text
смысловое закрытие дня:
что произошло, что значило, что принято, что переносится.
```

---

# 3. Рекомендуемая структура хранения

## 3.1 Staging для свежих экспортов

```text
08_TRACE_AND_DECISIONS/thread_exports/_STAGING/
```

Пример:

```text
08_TRACE_AND_DECISIONS/thread_exports/_STAGING/
└── THREAD_EXPORT_2026-06-20_IPaC_WORKING_THREAD_v0_1/
    ├── MANIFEST.md
    ├── SOURCE_NOTES.md
    ├── THREAD_EXPORT_2026-06-20_IPaC_WORKING_THREAD_v0_1.md
    ├── THREAD_EXPORT_2026-06-20_IPaC_WORKING_THREAD_v0_1.pdf
    ├── images/
    └── checks/
```

## 3.2 После QA / принятия

```text
09_SOURCE_PACKAGES/ZERO_LAYER/
```

Пример:

```text
09_SOURCE_PACKAGES/ZERO_LAYER/
└── 2026-06-20__THREAD_EXPORT__IPAC_WORKING_THREAD_v0_1/
```

## 3.3 Реестры

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

# 4. Утренний процесс

## 4.1 Start Check

Утром снять состояние Git:

```text
IPaC_YYYY-MM-DD_START_CHECK_HHMM.txt
```

Минимум:

```text
git status --short
git log --oneline --decorate -8
latest commit stat
open tails
today focus
```

## 4.2 Daily Register

Создать или открыть:

```text
08_TRACE_AND_DECISIONS/session_notes/DAILY_REGISTER_YYYY-MM-DD_v0_1.md
```

Записать старт дня:

```text
day_start;
текущее состояние;
фокус дня;
открытые хвосты;
что нельзя трогать без QA.
```

## 4.3 Baseline

Зафиксировать, от какого состояния начинается день:

```text
HEAD commit;
активная ветка;
статус origin/main;
открытые untracked tails;
последний Daily Trace.
```

---

# 5. Дневной процесс

В течение дня не надо сохранять всё вручную каждую минуту.

Фиксировать надо:

```text
1. точки перегиба;
2. принятые решения;
3. новые правила;
4. новые архитектурные кандидаты;
5. события повторного входа контекста;
6. создание source container;
7. важные Git-проводки;
8. ошибки / recovery / stash;
9. новые НКУ.
```

Каждое значимое событие попадает в Daily Register.

---

# 6. Вечерний процесс: экспорт треда

## 6.1 Экспорт

Сделать экспорт треда текущего дня / текущего состояния:

```text
MD — предпочтительно для Git и diff;
PDF — удобно для человека и отчуждения;
HTML — если нужен DOM / структура;
assets — если есть изображения.
```

Приоритет:

```text
MD / TXT для машинной работы.
PDF для человеческого архива.
HTML для структурного восстановления.
```

## 6.2 Создать Source Container

Папка:

```text
08_TRACE_AND_DECISIONS/thread_exports/_STAGING/
THREAD_EXPORT_YYYY-MM-DD_IPaC_WORKING_THREAD_v0_1/
```

Внутри:

```text
MANIFEST.md
SOURCE_NOTES.md
THREAD_EXPORT_YYYY-MM-DD_IPaC_WORKING_THREAD_v0_1.md
THREAD_EXPORT_YYYY-MM-DD_IPaC_WORKING_THREAD_v0_1.pdf
images/
checks/
```

---

# 7. MANIFEST для тред-экспорта

Минимальный MANIFEST:

```text
source_id:
date:
export_date:
source_type:
primary_file:
derived_files:
assets:
size:
encoding:
status:
qa_status:
known_issues:
use_cases:
do_not_use_for:
related_daily_register:
related_daily_trace:
```

---

# 8. QA перед Git

Проверить:

```text
1. файл открывается;
2. кириллица читается;
3. структура не разрушена;
4. изображения / assets учтены;
5. есть MANIFEST;
6. есть SOURCE_NOTES;
7. понятен источник;
8. понятна дата;
9. понятен статус:
   staged / qa_pending / accepted / rejected.
```

До QA не коммитить крупные source containers.

---

# 9. Git-регистрация экспорта

## 9.1 Staging commit

Если принято решение зафиксировать экспорт в Git:

```powershell
git add .\08_TRACE_AND_DECISIONS\thread_exports\_STAGING\THREAD_EXPORT_YYYY-MM-DD_IPaC_WORKING_THREAD_v0_1\MANIFEST.md
git add .\08_TRACE_AND_DECISIONS\thread_exports\_STAGING\THREAD_EXPORT_YYYY-MM-DD_IPaC_WORKING_THREAD_v0_1\SOURCE_NOTES.md
git add .\08_TRACE_AND_DECISIONS\thread_exports\_STAGING\THREAD_EXPORT_YYYY-MM-DD_IPaC_WORKING_THREAD_v0_1\THREAD_EXPORT_YYYY-MM-DD_IPaC_WORKING_THREAD_v0_1.md

git commit -m "source: stage thread export YYYY-MM-DD"
git push
```

## 9.2 Большие файлы

PDF / images:

```text
не добавлять автоматически;
решение отдельно;
если добавлять — после проверки размера и политики Git / Git LFS.
```

---

# 10. Выделение дельты дня через Git diff

## 10.1 Идея

Если есть предыдущий экспорт и текущий экспорт, можно получить:

```text
Daily Thread Delta
(дельта треда дня)
```

Это и есть:

```text
фактография дня на уровне первичного источника.
```

## 10.2 Базовая команда

```powershell
git diff <previous_commit> <current_commit> -- path/to/thread_export.md > DAILY_FACTOGRAPHY_DIFF_YYYY-MM-DD.patch
```

## 10.3 Упрощённый вариант

Если один и тот же файл обновляется каждый день:

```powershell
git diff HEAD~1 HEAD -- .\path\to\THREAD_EXPORT_CURRENT.md > "$env:USERPROFILE\Downloads\DAILY_FACTOGRAPHY_DIFF_YYYY-MM-DD.patch"
```

## 10.4 Более устойчивый вариант

Хранить ежедневные экспорты отдельными файлами:

```text
THREAD_EXPORT_2026-06-19_IPaC_WORKING_THREAD.md
THREAD_EXPORT_2026-06-20_IPaC_WORKING_THREAD.md
```

И сравнивать их внешним diff-инструментом или скриптом, создающим:

```text
DAILY_FACTOGRAPHY_2026-06-20_FROM_THREAD_DIFF.md
```

---

# 11. Daily Factography File

Рекомендуемый файл:

```text
08_TRACE_AND_DECISIONS/daily_factography/
DAILY_FACTOGRAPHY_YYYY-MM-DD_FROM_THREAD_DIFF_v0_1.md
```

Содержит:

```text
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

# 12. Разметка фактографии дня

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

# 13. Использование

## 13.1 Для восстановления потока развития

```text
13.06 → 14.06 → 15.06 → 16.06
```

Каждый день можно восстановить не по памяти, а по первичной фактографии:

```text
экспорт дня;
diff;
разметка;
Daily Factography;
Daily Trace reconstruction.
```

## 13.2 Для Project

В Project загружается не весь 1500-страничный массив, а:

```text
связанный extract pack;
daily factography;
live state snapshot;
relevant rules;
bootloader prompt.
```

## 13.3 Для ассоциативной памяти

Будущий режим:

```text
смысловой запрос
→ поиск по source containers / registers / MOC
→ релевантная первичка
→ актуализация
→ повторный вход контекста
→ новый проход работы.
```

---

# 14. Что коммитить, а что нет

## Коммитить

```text
MANIFEST.md
SOURCE_NOTES.md
MD / TXT primary exports после QA;
daily factography files;
routing maps;
register entries;
Daily Trace;
правила;
архитектурные кандидаты.
```

## Не коммитить без отдельного решения

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

---

# 15. Минимальный ежедневный цикл v0.1

```text
Утро:
1. Start Check.
2. Daily Register start.
3. Уточнение фокуса.

День:
4. Работа.
5. Фиксация ключевых событий.

Вечер:
6. Export thread.
7. Source Container.
8. QA.
9. Git commit первички / или оставить в staging.
10. Git diff / daily factography.
11. Daily Register closeout.
12. Daily Trace.
13. Commit-check.
```

---

# 16. Будущий уровень автоматизации

## v0.1 — ручной

```text
человек экспортирует;
человек делает выкопировки;
ассистент помогает актуализировать;
Git фиксирует.
```

## v0.2 — полуавтоматический

```text
скрипты создают контейнер;
скрипты делают check;
скрипты готовят diff;
человек утверждает.
```

## v1.0 — ассоциативная память

```text
система сама находит релевантный контекст
по смысловому запросу,
показывает provenance,
предлагает extract pack,
человек утверждает,
Project получает контекст.
```

---

# 17. Главная формула

```text
Thread export in Git
(экспорт треда в Git)

+
Git diff
(разность состояний)

=
Daily Factography
(фактография дня)
```

А дальше:

```text
Daily Factography
→ разметка
→ Daily Trace
→ Registers
→ Associative Memory
→ повторный вход контекста.
```

---

# 18. Status

```text
REGULATION_CREATED
THREAD_EXPORT_TO_GIT_PROCESS_DEFINED
DAILY_DIFF_FACTOGRAPHY_DEFINED
SOURCE_CONTAINER_QA_DEFINED
GIT_REGISTRATION_DEFINED
ASSOCIATIVE_MEMORY_TARGET_CONFIRMED
```
