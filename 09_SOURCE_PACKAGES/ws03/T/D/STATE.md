---
artifact_status: candidate / review_input
canon_status: not_canon
temporary_stable_status: not_assigned
human_approval_required: true
created_at: 2026-06-27
language: ru
term_policy: "English term must include Russian translation in parentheses"
---

# SUPERVISOR STATE MACHINE — Search / Support / Quarantine / Review / Decision / Rollback

```yaml
artifact_id: SUPERVISOR-STATE-MACHINE-SEARCH-SUPPORT-QUARANTINE-REVIEW-DECISION-ROLLBACK-2026-06-27-v0.1
status: candidate
canon_status: not_canon
```

## 1. Назначение

State Machine (машина состояний) описывает переключения Wise Supervisor (Мудрого супервизора).

## 2. SEARCH_MODE (режим поиска)

Когда включается:

- ищем Проход;
- генерируем гипотезы;
- высматриваем противоречия.

Риск: search_overheating (перегрев поиска) без крепей.

Переходы:

```yaml
from_SEARCH_MODE:
  to_SUPPORT_MODE: найден смысловой ход
  to_QUARANTINE_MODE: пришёл сырой внешний материал
  to_REVIEW_MODE: накоплена проверочная масса
```

## 3. SUPPORT_MODE (режим крепи)

Когда включается:

- проходка сделана;
- появилась ценная фактография;
- хвост стал опасным.

Действия:

- зафиксировать;
- маршрутизировать;
- провести в Git (Гит) или поставить managed HOLD (управляемое подвешенное состояние).

## 4. QUARANTINE_MODE (режим карантина)

Когда включается:

- материал блестит, но сырой;
- есть риск вирусного фрейма;
- есть полезность, но нет проверки.

Действия:

- Шлюз L1;
- Шлюз L2;
- Шлюз L3;
- reject / HOLD / ADMITTED.

## 5. REVIEW_MODE (режим рассмотрения)

Когда включается:

- материал прошёл первичные шлюзы;
- нужна оценка связности;
- нужно понять риски.

Действия:

- review (рассмотрение);
- QA (проверка качества);
- contradictions accounting (учёт противоречий).

## 6. DECISION_MODE (режим решения)

Когда включается:

- достаточно фактографии;
- человек готов присвоить рабочий статус;
- есть rollback path (путь отката).

Действия:

- decision record (запись решения);
- version (версия);
- Git commit (Git-проводка).

## 7. ROLLBACK_MODE (режим отката)

Когда включается:

- жизнь показала неудачность версии;
- новая информация ломает baseline (базовую линию);
- требуется откат.

Действия:

- rollback (откат);
- фиксация урока;
- возврат в SEARCH_MODE (режим поиска).

## 8. Статус

```yaml
status: candidate
next_gate: review
```
