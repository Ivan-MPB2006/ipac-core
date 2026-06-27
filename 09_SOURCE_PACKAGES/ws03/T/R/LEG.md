---
artifact_status: candidate / review_input
canon_status: not_canon
temporary_stable_status: not_assigned
human_approval_required: true
created_at: 2026-06-27
language: ru
term_policy: "English term must include Russian translation in parentheses"
---

# Legacy Resource Migration Notes — Wise Supervisor v0.2 (заметки миграции старых ресурсов)

```yaml
artifact_id: LEGACY-RESOURCE-MIGRATION-NOTES-WISE-SUPERVISOR-v0.2
status: candidate
canon_status: not_canon
```

## Политика

Старая ресурсная прошивка Project (проекта) является historically valuable artifact (исторически ценным артефактом).

## Что делать

```yaml
legacy_policy:
  extract:
    - рабочий язык
    - правило English terms (английских терминов) с русским переводом
    - IPaC OS как Architecture Candidate (архитектурный кандидат)
    - Factography first (сначала фактография)
    - Human approval before Git commit (человеческое одобрение перед Git-проводкой)
    - Project Federation (федерация проектов)
  replace:
    - старый рефлекс страха premature canonization (преждевременной канонизации)
    - слабую модель Supervisor (супервизора) как только регламентатора
  archive:
    - исходный Superpack (суперпакет)
    - Prompt 00 (промпт 00)
    - Prompt 01 (промпт 01)
```

## При дефиците ресурсов

Старые ресурсы можно удалить из active Project Resources (активных ресурсов проекта), если полезные положения перенесены в новую прошивку.
