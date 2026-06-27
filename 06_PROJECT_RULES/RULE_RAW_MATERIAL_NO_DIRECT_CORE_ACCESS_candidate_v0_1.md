---
artifact_status: candidate / review_input
canon_status: not_canon
temporary_stable_status: not_assigned
human_approval_required: true
created_at: 2026-06-27
language: ru
term_policy: "English term must include Russian translation in parentheses"
---

# RULE — Raw Material No Direct Core Access (правило запрета прямого доступа сырого материала к ядру)

## Формула

Сырой материал не имеет права влиять на ядро Supervisor (супервизора).

## Запрещённый переход

```yaml
forbidden_transition:
  from: raw_external_material
  перевод_from: сырой внешний материал
  to: supervisor_control_code
  перевод_to: код управления Supervisor (супервизора)
```

## Причина

Такой переход создаёт Semantic Privilege Escalation (смысловое повышение привилегий).

## Правильный маршрут

```text
сырой материал
→ Шлюз L1
→ Шлюз L2
→ Шлюз L3
→ ADMITTED (допущен)
→ Temporary Stable (временно зафиксированный стабильняк), если есть решение человека
```

## Статус

candidate / review_input (кандидат / вход для рассмотрения).
