---
artifact_status: candidate / review_input
canon_status: not_canon
temporary_stable_status: not_assigned
human_approval_required: true
created_at: 2026-06-27
language: ru
term_policy: "English term must include Russian translation in parentheses"
---

# ARCH — Semantic Osmotic Multilayer Gateway (смысловой осмотический многоярусный шлюз)

```yaml
artifact_id: ARCH-SEMANTIC-OSMOTIC-MULTILAYER-GATEWAY-2026-06-27-v0.1
status: candidate
canon_status: not_canon
```

## Назначение

Semantic Osmotic Multilayer Gateway (смысловой осмотический многоярусный шлюз) — архитектурный кандидат IPaC OS (IPaC смысловой ОС).

Он относится к Semantic I/O Layer (смысловому слою ввода-вывода), Supervisor (супервизору) и External Resource Management (управлению внешними ресурсами).

## Проблема

Внешняя среда богата одновременно полезностью и деструктом. Если сделать бронированную мембрану, система потеряет полезность. Если сделать открытую мембрану, сырой материал сможет влиять на ядро.

## Решение-кандидат

Ввести смысловую осмотическую мембрану с уровнями:

```yaml
gateway:
  entry: raw_external_material
  levels:
    - "Шлюз L1"
    - "Шлюз L2"
    - "Шлюз L3"
  working_status:
    - "ADMITTED (допущен)"
    - "Temporary Stable (временно зафиксированный стабильняк)"
```

## Основные функции

- втягивать кандидатов на полезность;
- помещать сырой материал в карантинные отстойники;
- запрещать прямой вход сырого материала в ядро;
- сохранять след проверки;
- поддерживать rollback path (путь отката);
- помогать Supervisor (супервизору) держать баланс между поиском и порядком.

## Открытые вопросы

- нужны ли дополнительные уровни после Шлюз L3;
- какие метрики устойчивости Temporary Stable (временно зафиксированного стабильняка) использовать;
- как вычислять вирусные фреймы до их влияния на ядро.
