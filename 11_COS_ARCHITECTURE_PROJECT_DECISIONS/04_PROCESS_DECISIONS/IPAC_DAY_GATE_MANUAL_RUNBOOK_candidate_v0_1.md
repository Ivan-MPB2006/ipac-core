# IPaC DAY GATE MANUAL RUNBOOK
## Ручной регламент закрытия / открытия рабочего дня

```yaml
artifact_id: IPAC-DAY-GATE-MANUAL-RUNBOOK-2026-06-24-v0.1
artifact_type: supervisor_runbook
status: candidate
canon_status: not_canon
resource_object_name: IPAC_DAY_GATE_MANUAL_RUNBOOK_candidate_v0_1
resource_file_name: IPAC_DAY_GATE_MANUAL_RUNBOOK_candidate_v0_1.md
created_date: 2026-06-24
created_time_reported: "13:37"
working_language: ru
term_policy: English term must include Russian translation in parentheses
supervisor_role: Project Supervisor (супервизор проекта)
project_frame: IPaC OS (IPaC смысловая ОС)
architecture_status: Architecture Candidate (архитектурный кандидат)
git_commit_authorized: false
human_approval_required_for_git_commit: true
source_thread_anchor: 2026-06-24-IPaC_COS_SVC_LV01
```

---

# 0. Статус документа

Этот документ имеет статус **candidate (кандидат)** и **not canon (не канон)**.

Он описывает ручной **Day Gate (дневной шлюз)** — шаблонный процесс закрытия предыдущего рабочего дня и открытия нового рабочего дня в контуре IPaC OS (IPaC смысловая ОС).

Документ предназначен для итерационного улучшения. Он не является окончательным Rule (правилом), не является canon (каноном), не разрешает Git commit (Git-проводку) и не заменяет Human Approval (человеческое одобрение).

---

# 1. Назначение

**Day Gate (дневной шлюз)** нужен для того, чтобы один рабочий день не перетекал в другой бесформенно.

Главная формула:

```text
Рабочий день не продолжается мутным хвостом.
Рабочий день закрывается, перевязывается и открывается заново
через явный смысловой шлюз.
```

Day Gate (дневной шлюз) переводит работу в управляемую форму:

```text
Close Previous Day (закрыть предыдущий день)
→ Save Carry-over (сохранить переносимые хвосты)
→ Open Current Day (открыть текущий день)
→ Create Daily Register / Ship Log (создать Дневной реестр / Бортовой журнал)
→ Continue Without Cognitive Loss (продолжить без потери когнитивной высоты)
```

---

# 2. Операционная модель

## 2.1 Day Gate (дневной шлюз)

Day Gate (дневной шлюз) — это не декоративный separator (разделитель), а операционный переход состояния.

Он выполняет четыре функции:

```text
1. отделяет предыдущую смысловую смену;
2. фиксирует переносимые хвосты;
3. открывает новый Daily Register / Ship Log (Дневной реестр / Бортовой журнал);
4. задаёт активный фокус нового рабочего дня.
```

## 2.2 Day Closeout (закрытие дня)

Day Closeout (закрытие дня) — это документ / запись, где предыдущий день закрывается как завершённый рабочий сегмент.

Минимально он фиксирует:

```text
- дату закрываемого дня;
- что закрывается;
- какие хвосты переносятся;
- какие статусы нельзя повышать;
- что не проведено через Git (Git);
- какие действия требуют Human Approval (человеческое одобрение).
```

## 2.3 Thread Start Anchor (якорь начала треда)

Thread Start Anchor (якорь начала треда) — это файл или запись, фиксирующая состояние треда на начало рабочего дня.

В текущем проходе:

```text
thread_start_anchor: 2026-06-24-IPaC_COS_SVC_LV01
source_status: human_reported_fact
file_contents_loaded: no
```

Важно: если содержимое anchor (якоря) не подкачано, Supervisor (супервизор) не должен делать вид, что прочитал его. Он фиксирует только факт сообщения пользователя.

---

# 3. Ручной процесс закрытия / открытия дня

## 3.1 Pre-check (предварительная проверка)

Перед изменением файлов:

```powershell
$VaultRoot = "C:\Users\Michael\Documents\50-00 IPaC\0. IPaC Project\IPaC_Obsidian_Vault_Str_v0_1_Pack"
git -C $VaultRoot status --short
```

Supervisor (супервизор) не имеет права выдумывать live Git status (живой статус Git). Статус должен быть получен командой или snapshot (снимком состояния).

## 3.2 Close Previous Day (закрытие предыдущего дня)

Создать файл:

```text
08_TRACE_AND_DECISIONS/session_notes/DAY_CLOSEOUT_YYYY-MM-DD_v0_1.md
```

Для текущего прохода:

```text
08_TRACE_AND_DECISIONS/session_notes/DAY_CLOSEOUT_2026-06-23_v0_1.md
```

## 3.3 Open Day Gate (открытие дневного шлюза)

Создать файл:

```text
08_TRACE_AND_DECISIONS/session_notes/DAY_GATE_YYYY-MM-DD_v0_1.md
```

Для текущего прохода:

```text
08_TRACE_AND_DECISIONS/session_notes/DAY_GATE_2026-06-24_v0_1.md
```

## 3.4 Create Daily Register / Ship Log (создание Дневного реестра / Бортового журнала)

Создать или дополнить файл:

```text
08_TRACE_AND_DECISIONS/session_notes/DAILY_REGISTER_YYYY-MM-DD_v0_1.md
```

Для текущего прохода:

```text
08_TRACE_AND_DECISIONS/session_notes/DAILY_REGISTER_2026-06-24_v0_1.md
```

## 3.5 Post-check (послеоперационная проверка)

Проверить только созданные / изменённые файлы:

```powershell
git -C $VaultRoot status --short -- `
  "08_TRACE_AND_DECISIONS/session_notes/DAY_CLOSEOUT_2026-06-23_v0_1.md" `
  "08_TRACE_AND_DECISIONS/session_notes/DAY_GATE_2026-06-24_v0_1.md" `
  "08_TRACE_AND_DECISIONS/session_notes/DAILY_REGISTER_2026-06-24_v0_1.md"
```

---

# 4. PowerShell script (PowerShell-скрипт)

Полный executable script (исполняемый скрипт) находится в этом alienation package (отчуждаемом пакете):

```text
RUN_IPAC_DAY_GATE_MANUAL_CLOSE_OPEN_2026-06-24_v0_1.ps1
```

Пример запуска:

```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass

.\RUN_IPAC_DAY_GATE_MANUAL_CLOSE_OPEN_2026-06-24_v0_1.ps1 `
  -VaultRoot "C:\Users\Michael\Documents\50-00 IPaC\0. IPaC Project\IPaC_Obsidian_Vault_Str_v0_1_Pack"
```

---

# 5. Optional Git Add (возможное Git-добавление)

Только после отдельного Human Approval (человеческого одобрения):

```powershell
git -C "C:\Users\Michael\Documents\50-00 IPaC\0. IPaC Project\IPaC_Obsidian_Vault_Str_v0_1_Pack" add `
  "08_TRACE_AND_DECISIONS/session_notes/DAY_CLOSEOUT_2026-06-23_v0_1.md" `
  "08_TRACE_AND_DECISIONS/session_notes/DAY_GATE_2026-06-24_v0_1.md" `
  "08_TRACE_AND_DECISIONS/session_notes/DAILY_REGISTER_2026-06-24_v0_1.md"
```

Рекомендуемое commit message (сообщение Git-проводки), если будет отдельное одобрение:

```text
trace: open working day 2026-06-24 with day gate
```

---

# 6. Future Codex Template (будущий шаблон Codex)

Когда Codex (Кодекс) / MCP (MCP) возьмёт эту операцию на себя, ручной процесс должен стать шаблонным вызовом:

```text
DayGate.ClosePreviousDay(
  previous_date = 2026-06-23,
  mode = closeout_candidate
)

DayGate.OpenCurrentDay(
  date = 2026-06-24,
  time = 13:37,
  thread_start_anchor = 2026-06-24-IPaC_COS_SVC_LV01,
  create_daily_register = true,
  git_commit = false
)
```

Запрет по умолчанию:

```text
git_commit = false
```

Разрешение Git commit (Git-проводки) возможно только после Human Approval (человеческое одобрение).

---

# 7. Resource File Entry (запись для файла ресурсов)

Имя, с которым этот документ должен храниться в Project Resources (ресурсах проекта):

```text
IPAC_DAY_GATE_MANUAL_RUNBOOK_candidate_v0_1.md
```

Resource object name (имя ресурсного объекта):

```text
IPAC_DAY_GATE_MANUAL_RUNBOOK_candidate_v0_1
```

Resource short title (короткое имя ресурса):

```text
IPaC Day Gate Manual Runbook
(ручной регламент дневного шлюза IPaC)
```

Recommended placement in Vault (рекомендуемое размещение в хранилище):

```text
11_COS_ARCHITECTURE_PROJECT_DECISIONS/04_PROCESS_DECISIONS/
IPAC_DAY_GATE_MANUAL_RUNBOOK_candidate_v0_1.md
```

---

# 8. QA Checklist (контрольный список качества)

Перед переводом выше candidate (кандидат):

```text
[ ] Проверено фактическое размещение файлов в Vault (хранилище).
[ ] Проверен live Git status (живой статус Git).
[ ] Проверено, что Day Closeout (закрытие дня) не смешивает факты и интерпретации.
[ ] Проверено, что Daily Register / Ship Log (Дневной реестр / Бортовой журнал) создан до трассировки.
[ ] Проверено, что Git commit (Git-проводка) не выполнена без Human Approval (человеческое одобрение).
[ ] Проверено, что Thread Start Anchor (якорь начала треда) существует или явно отмечен как human_reported_fact.
[ ] Определён route (маршрут) для будущего Rule (правила), если Day Gate (дневной шлюз) станет процессным правилом.
```

---

# 9. PROJECT_SUPERVISOR_STATE Template (шаблон состояния супервизора)

```text
PROJECT_SUPERVISOR_STATE
active_focus:
  ручное закрытие / открытие рабочего дня через Day Gate (дневной шлюз)

current_artifact:
  IPAC_DAY_GATE_MANUAL_RUNBOOK_candidate_v0_1.md

open_debts:
  - выполнить команды в Vault (хранилище)
  - проверить фактический Git status (статус Git)
  - решить, давать ли Human Approval (человеческое одобрение)
    на Git add / commit (Git-добавление / проводку)
  - позже оформить Day Gate Rule (правило дневного шлюза)

next_recommended_action:
  использовать runbook (регламент) как ручной шаблон,
  затем улучшать до Codex-ready process (процесса, готового для Codex)

risk_of_premature_canonization:
  low_to_medium
```

---

# 10. Change Policy (политика изменений)

Документ должен улучшаться итерационно:

```text
v0_1 — ручной кандидат;
v0_2 — после первого практического запуска;
v0_3 — после проверки edge cases (пограничных случаев);
v1_0 — только после Human Decision (человеческое решение) и QA Gate (ворота контроля качества).
```

До отдельного решения документ остаётся candidate (кандидат), not canon (не канон).
