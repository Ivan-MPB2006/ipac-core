---
artifact_status: candidate / review_input
canon_status: not_canon
temporary_stable_status: not_assigned
human_approval_required: true
created_at: 2026-06-27
language: ru
term_policy: "English term must include Russian translation in parentheses"
---

# RULE — Managed HOLD State (правило управляемого подвешенного состояния)

## Формула

HOLD (подвешено) допустим. Бесхозный HOLD (подвешено) недопустим.

## Обязательные поля HOLD (подвешено)

```yaml
HOLD:
  why_held: "почему подвешено"
  owner: "держатель смысла"
  review_trigger: "условие пересмотра"
  next_gate: "следующий шлюз"
  possible_routes:
    - commit
    - discard
    - merge
    - split
    - archive_factography
```

## Когда применять

- материал блестит, но не проверен;
- направление может оказаться порожняком;
- рано проводить в Git (Гит);
- нельзя бросать бесхозно.

## Статус

candidate / review_input (кандидат / вход для рассмотрения).
