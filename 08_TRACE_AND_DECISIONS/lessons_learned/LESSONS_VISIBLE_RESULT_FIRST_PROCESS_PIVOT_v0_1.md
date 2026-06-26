# LESSONS — Visible Result First / Feasibility / Expediency / Supervisor Redesign v0.1
## Опыт 2026-06-21: как надо было делать

```yaml
artifact_id: LESSONS-2026-06-21-VISIBLE-RESULT-FIRST-SUPERVISOR-REDESIGN-v0.1
artifact_type: lessons_learned / process_experience / trainee_onboarding_source
status: candidate
canon_status: not_canon
date: 2026-06-21
source_event: emergency_human_inspection_and_process_pivot
include_in: DAILY_REGISTER_2026-06-21
```

# 1. Главный урок

```text
Нельзя сначала доводить до идеала элементы процесса.
Сначала нужен видимый комплексный результат.
Потом — доказательство принципиальной реализуемости.
Потом — доказательство принципиальной целесообразности.
Только после этих двух апрувов — улучшение и полировка.
```

# 2. Что пошло не так

Процесс начал превращаться в micro-waterfall:

```text
charter → outline → QA → fix → gate → review → decision → ещё один gate
```

Для проверки Supervisor это было полезно.  
Для получения результата — опасно.

Появился риск:

```text
идеально вылизывать детали,
не доказав, что комплекс вообще работает.
```

Метафора:

```text
нельзя выверять заклёпки на сегменте моста,
если не доказано, что мост строится через ту реку.
```

# 3. Что спасло процесс

Внеплановая Human Inspection резко изменила критерий:

```text
не “насколько аккуратно идём по процессу”,
а “есть ли предъявляемый отчуждаемый комплексный результат”.
```

После этого появился правильный поворот:

```text
Visible Complex Result
→ Feasibility Gate
→ Expediency Gate
→ MVP Task Pack
→ Codex Review
→ polish only after approval
```

# 4. Как надо было делать с самого начала

Правильная программа:

```text
1. Быстро собрать видимый review draft.
2. Поставить явный статус: candidate / not_canon / not_decided.
3. Сразу сделать карту системных элементов.
4. Сразу сформировать Codex Review Pack.
5. Дать Codex роль технического оппонента.
6. Проверить реализуемость и целесообразность.
7. Только после этого запускать углубление архитектуры.
```

# 5. Что должен делать Supervisor

Supervisor не должен быть бюрократом gate-ов.

Supervisor должен быть:

```text
production dispatcher / диспетчер производства результата.
```

Его вопросы:

```text
1. Где видимый результат?
2. Что доказывает реализуемость?
3. Что доказывает целесообразность?
4. Что можно отдать Codex на ревью?
5. Что является лишней полировкой?
6. Какой следующий минимальный комплексный пакет?
```

# 6. Что должен делать Operating Chat

Operating Chat должен:

```text
1. Быстро превращать решения в файлы.
2. Давать PowerShell placement scripts.
3. Снимать контрольки.
4. Не растягивать процесс.
5. Не писать полную архитектуру вместо MVP.
6. Не бояться крупноблочного черновика.
```

# 7. Что должен делать Codex

Codex должен:

```text
1. Проверить принципиальную реализуемость.
2. Проверить принципиальную целесообразность.
3. Найти минимальный путь к MVP.
4. Предложить MVP Task Pack.
5. Не делать commit.
6. Не канонизировать.
7. Не подменять Human Architect.
```

# 8. Что должен усвоить стажёр

```text
Стажёр должен понимать:
лучший процесс — не самый подробный,
а тот, который быстрее даёт проверяемый комплексный результат.
```

Core rule:

```text
Result before polish.
Feasibility before architecture depth.
Expediency before automation.
Human Approval before canon.
Codex review before MVP build.
```

# 9. Итоговый статус

```text
LESSON_VISIBLE_RESULT_FIRST_RECORDED
LESSON_MICRO_WATERFALL_RISK_RECORDED
LESSON_SUPERVISOR_AS_PRODUCTION_DISPATCHER_RECORDED
LESSON_TRAINEE_ONBOARDING_READY
```
