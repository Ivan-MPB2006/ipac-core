# Resource Entry — IPaC Day Gate Manual Runbook
## Запись для файла ресурсов Project (проекта)

```yaml
resource_object_name: IPAC_DAY_GATE_MANUAL_RUNBOOK_candidate_v0_1
resource_file_name: IPAC_DAY_GATE_MANUAL_RUNBOOK_candidate_v0_1.md
resource_title: IPaC Day Gate Manual Runbook (ручной регламент дневного шлюза IPaC)
artifact_type: supervisor_runbook
status: candidate
canon_status: not_canon
created_date: 2026-06-24
project: IPaC_NIR_SEMANTIC_OS
working_context: IPaC COS Supervisor — Living Vector 01
thread_start_anchor: 2026-06-24-IPaC_COS_SVC_LV01
intended_use: manual day close/open process and future Codex template
```

# Purpose (назначение)

Этот resource entry (ресурсная запись) указывает, как хранить и подкачивать документ:

```text
IPAC_DAY_GATE_MANUAL_RUNBOOK_candidate_v0_1.md
```

Документ описывает Day Gate (дневной шлюз): ручной процесс закрытия предыдущего рабочего дня и открытия нового рабочего дня без потери когнитивной высоты.

# Load Policy (политика подкачки)

Подкачивать этот ресурс, когда пользователь говорит о:

```text
- закрытии рабочего дня;
- открытии рабочего дня;
- Day Gate (дневном шлюзе);
- Daily Register / Ship Log (Дневном реестре / Бортовом журнале);
- переносе между тредами;
- сохранении когнитивной высоты;
- будущем Codex (Кодексе) для шаблонного процесса.
```

# Status Discipline (дисциплина статуса)

```text
status: candidate (кандидат)
canon_status: not_canon (не канон)
Git commit (Git-проводка): только после Human Approval (человеческого одобрения)
```

# Recommended Vault Placement (рекомендуемое размещение в хранилище)

```text
11_COS_ARCHITECTURE_PROJECT_DECISIONS/04_PROCESS_DECISIONS/
IPAC_DAY_GATE_MANUAL_RUNBOOK_candidate_v0_1.md
```
