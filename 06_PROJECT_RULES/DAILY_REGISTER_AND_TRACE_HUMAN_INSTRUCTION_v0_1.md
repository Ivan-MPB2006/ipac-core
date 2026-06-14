# HUMAN INSTRUCTION — Daily Register and Daily Trace v0.1  
## Инструкция человеку: как накапливать важные события дня и не терять их в closeout

```yaml
artifact_id: HUMAN-INSTRUCTION-DAILY-REGISTER-AND-TRACE-001
artifact_type: human_instruction
status: active_process_instruction
version: 0.1
layer: project_rules / trace_and_decisions
scope: daily register / daily trace / project trace / closeout / human workflow
date: 2026-06-14
canon_update_authorized: false
field_validated: process_observed
related_artifacts:
  - 06_PROJECT_RULES/DOCUMENTATION_AND_FLOW_SYNC_TEMPORARY_REGULATION_v0_1.md
  - 06_PROJECT_RULES/RULE_LIFE_BASELINE_DRIFT_INSPECTION_v0_1.md
```

---

# 1. Назначение

Эта инструкция нужна, чтобы важные события дня не зависели от памяти модели, длины треда или человеческой усталости.

Главный принцип:

```text
Не вспоминать.
Регистрировать.
```

Модель может забыть.  
Человек может устать.  
Тред может перегрузиться.  
Project может отстать.

Поэтому всё важное должно попадать во внешний рабочий буфер дня — **Daily Register**.

---

# 2. Различие Daily Register и Daily Trace

## Daily Register

```text
Daily Register = рабочий буфер дня.
```

Назначение:

- накапливать пункты в течение дня;
- фиксировать важные события сразу;
- не позволять забыть, что должно попасть в итог;
- служить входом для daily closeout.

Daily Register — это не красивый отчёт.  
Это список того, что нельзя потерять.

## Daily Trace

```text
Daily Trace = связный итоговый отчёт дня.
```

Назначение:

- собрать события дня в понятную историю;
- зафиксировать результаты;
- показать переходы состояния;
- дать материал для Project Trace;
- стать частью долговременного следа IPaC.

Daily Trace собирается в конце дня на основе Daily Register.

---

# 3. Где хранить Daily Register

Файл дня создаётся в Obsidian Vault:

```text
08_TRACE_AND_DECISIONS/session_notes/DAILY_REGISTER_YYYY-MM-DD_v0_1.md
```

Пример:

```text
08_TRACE_AND_DECISIONS/session_notes/DAILY_REGISTER_2026-06-14_v0_1.md
```

Если папки нет, создать:

```powershell
New-Item -ItemType Directory -Force -Path .\08_TRACE_AND_DECISIONS\session_notes
```

---

# 4. Стартовый шаблон Daily Register

В начале дня создать файл и вставить шаблон:

```markdown
# DAILY REGISTER — YYYY-MM-DD  
## Реестр дня IPaC

```yaml
artifact_id: DAILY-REGISTER-YYYY-MM-DD
artifact_type: daily_register
status: active_day_buffer
date: YYYY-MM-DD
layer: trace_and_decisions / session_notes
purpose: накопление пунктов для daily closeout
source_of_truth: working_day_register
final_output_expected: DAILY_TRACE_YYYY-MM-DD_v0_1.md
git_commit_policy: commit_at_closeout_or_major_checkpoint
```

---

# 1. Must Include in Daily Trace

- [ ] 

---

# 2. Important Artifacts Created Today

| Time | Artifact | Path | Status | Include in Trace |
|---|---|---|---|---|

---

# 3. Important Decisions / Rules / Insights

| Time | Item | Type | Why Important | Include in Trace |
|---|---|---|---|---|

---

# 4. Technical / Git Events

| Time | Event | Result | Notes |
|---|---|---|---|

---

# 5. Open Debts / Carry Over

| Item | Type | Next Action |
|---|---|---|

---

# 6. Closeout Checklist

- [ ] Все важные артефакты дня внесены.
- [ ] Все Git-проводки проверены.
- [ ] Working tree clean или известны открытые хвосты.
- [ ] Daily Trace собран.
- [ ] Project Trace обновлён.
- [ ] Project Resources / Delta Pack обновлены при необходимости.
```

---

# 5. Как пользоваться в течение дня

Когда появляется важное событие, не полагаться на память.

Сказать в рабочем треде:

```text
В реестр дня:
<что произошло>
```

Ассистент должен выдать готовый блок для вставки в Daily Register.

Человек вставляет блок в раздел:

```text
# 1. Must Include in Daily Trace
```

или в соответствующую таблицу.

---

# 6. Что обязательно регистрировать

Регистрировать не всё подряд, а только то, что должно попасть в итог дня.

Обязательно регистрировать:

```text
1. Новые research reports.
2. Новые reviews.
3. Новые decisions.
4. Новые rules.
5. Новые ontology notes.
6. Новые strategic insights.
7. Новые tools / scripts.
8. Важные Git-события.
9. Технические долги.
10. Закрытие технических долгов.
11. Project sync / Delta pack события.
12. Смену направления исследования.
13. Формулы, которые могут стать каноническими.
14. Возникновение нового research sprint.
15. Важные ограничения / guardrails.
```

Не надо регистрировать:

```text
случайные мелкие команды;
черновые мысли без веса;
повтор уже зафиксированного;
временные ошибки PowerShell, если из них не возник урок;
операционный шум.
```

---

# 7. Короткие команды для общения с ассистентом

Чтобы не объяснять каждый раз, использовать короткие маркеры.

## В реестр дня

```text
В реестр дня:
<событие>
```

Назначение:

```text
получить блок для DAILY_REGISTER.
```

## В техдолг

```text
В техдолг:
<что осталось>
```

Назначение:

```text
получить блок для Open Debts / Carry Over.
```

## В трассу проекта

```text
В трассу проекта:
<важный переход>
```

Назначение:

```text
получить блок для Project Trace chat.
```

## В closeout

```text
В closeout:
<что обязательно включить>
```

Назначение:

```text
пометить пункт как обязательный для итогового отчёта дня.
```

## Собери Daily Trace

```text
Собери Daily Trace по реестру дня.
```

Назначение:

```text
в конце дня собрать связный итоговый отчёт.
```

---

# 8. Пример пункта Daily Register

Пример для важного регламентационного документа:

```markdown
- [ ] Создано и проведено через Git временное положение о документировании и синхронизации потоков IPaC.
      Artifact: 06_PROJECT_RULES/DOCUMENTATION_AND_FLOW_SYNC_TEMPORARY_REGULATION_v0_1.md
      Type: temporary_operational_regulation
      Status: committed_to_git
      Importance: первый регламентационный документ по синхронизации Git–Obsidian–Project–Daily Delta–future MCP/Codex.
      Include in: DAILY_TRACE_YYYY-MM-DD
```

---

# 9. Git-режим для Daily Register

Daily Register — рабочий буфер дня.

Есть два режима.

## 9.1 Обычный режим

В течение дня файл меняется.  
В конце дня коммитится вместе с Daily Trace:

```powershell
git add .\08_TRACE_AND_DECISIONS\session_notes\DAILY_REGISTER_YYYY-MM-DD_v0_1.md
git add .\08_TRACE_AND_DECISIONS\session_notes\DAILY_TRACE_YYYY-MM-DD_v0_1.md
git commit -m "trace: add daily register and trace for YYYY-MM-DD"
git push
git status
```

## 9.2 Тяжёлый день / промежуточный snapshot

Если день насыщенный и есть риск потери, сделать промежуточный commit:

```powershell
git add .\08_TRACE_AND_DECISIONS\session_notes\DAILY_REGISTER_YYYY-MM-DD_v0_1.md
git commit -m "trace: update daily register YYYY-MM-DD"
git push
git status
```

---

# 10. Closeout дня

В конце дня:

1. Открыть Daily Register.
2. Проверить все пункты.
3. Отметить выполненное.
4. Выделить открытые долги.
5. Сформировать Daily Trace.
6. Провести Daily Register и Daily Trace через Git.
7. Обновить Project Trace.
8. При необходимости собрать Project Delta Pack.

Команда ассистенту:

```text
Собери Daily Trace по реестру дня.
```

---

# 11. Связь с Project Trace

Daily Register живёт в Obsidian / Git как рабочий буфер.

Daily Trace после закрытия дня добавляется:

```text
1. в Obsidian / Git;
2. в Project Trace chat;
3. при необходимости в Daily Delta Pack.
```

Рабочая формула:

```text
Daily Register — накопление.
Daily Trace — итог.
Project Trace — лента развития проекта.
```

---

# 12. Главное правило

```text
Если событие важно — оно должно попасть в DAILY_REGISTER сразу.

Если оно не попало в DAILY_REGISTER —
не рассчитываем, что оно вспомнится вечером.
```

Короткая формула:

```text
Увидел важное
→ сказал “В реестр дня”
→ получил блок
→ вставил в DAILY_REGISTER.
```

---

# 13. Recommended placement

```text
06_PROJECT_RULES/DAILY_REGISTER_AND_TRACE_HUMAN_INSTRUCTION_v0_1.md
```

---

# 14. Commit recommendation

```powershell
git add .\06_PROJECT_RULES\DAILY_REGISTER_AND_TRACE_HUMAN_INSTRUCTION_v0_1.md
git commit -m "rules: add daily register and trace human instruction"
git push
git status
```

---

# 15. Status

```text
HUMAN_INSTRUCTION_READY_FOR_USE
APPLIES_TO_DAILY_CLOSEOUT
REVISION_RIGHT_RESERVED
CANON_LOCKED
```
