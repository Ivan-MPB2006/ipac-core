# PHASE 3R — HYPOTHESIS REGISTRY NORMALIZATION
# Нормализация реестра гипотез

**Проект:** IPaC / Information Production as Code  
**Артефакт:** Phase 3R / Hypothesis Registry Review & Normalization  
**Версия:** v0.1  
**Дата:** 2026-06-08  
**Статус:** accepted-candidate  

---

## 0. Назначение

Phase 3R нормализует два пакета Phase 3:

- `IPaC_Phase3_HYPOTHESIS_REGISTRY_EXTENDED_Pack_v0_2` — принят как основной рабочий реестр.
- `IPaC_Phase3_HYPOTHESIS_REGISTRY_Pack_v0_1` — сохранён как широкий первичный захват и источник дельты.

Главная задача нормализации — не расширять концепт, а защитить новый Project от ложной уверенности, смешения ID, преждевременного execution и переноса старого контекста как канона.

---

## 1. Итоговый вердикт

```text
Phase 3 v0.2 = основа нормализованного реестра.
Phase 3 v0.1 = parked-source / delta-source.
```

Исправлены четыре методологические проблемы:

1. `validated` больше не читается как внешняя проверка.
2. `Phase 2` не считается принятой в новой линии.
3. Execution-гипотезы вынесены из архитектурного ядра.
4. v0.1 и v0.2 не объединяются по ID, потому что после первых гипотез ID-семантика расходится.

---

## 2. Ключевая поправка: validated ≠ field validated

В исходных пакетах статус `validated` означает в основном:

```text
validated inside recovery context
(подтверждено внутри восстановительного контекста)
```

А не:

```text
field validated
(проверено во внешней среде)
```

Поэтому в нормализованный CSV добавлены поля:

- `normalized_status`
- `evidence_scope`
- `field_validation_status`

На текущей стадии все гипотезы имеют:

```text
field_validation_status = not_field_tested
```

Это принципиально важно: мы не превращаем красивую внутреннюю согласованность в доказательство.

---

## 3. Сводка нормализованного реестра

| Показатель | Значение |
|---|---:|
| Основных гипотез из v0.2 | 33 |
| Гипотез со статусом `validated` в исходном смысле | 14 |
| Гипотез с полевой проверкой | 0 |
| Execution-гипотез, вынесенных в парковку | 9 |
| Risk/dangerous-flagged гипотез | 15 |
| Дельта-кандидатов из v0.1 | 4 |

---

## 4. Нормализационные действия

Используются действия:

- `accepted_core_candidate` — можно использовать в ядре нового Project как рабочую гипотезу.
- `accepted_candidate_with_risk_flag` — можно использовать, но только с явной пометкой риска.
- `park_for_mvp_execution` — не включать в архитектурное ядро; вернуть на стадии MVP/MVI.
- `process_guardrail` — сохранить как правило процесса.
- `quarantine_for_review` — не переносить в канон без отдельного review.

Сводка находится в:

```text
registers/PHASE3R_NORMALIZATION_ACTION_SUMMARY.csv
```

---

## 5. Важное предупреждение по ID

Нельзя автоматически сливать v0.1 и v0.2 по `HYP-IPAC-0xx`.

Например, один и тот же ID в разных пакетах может обозначать разные гипотезы. Поэтому v0.1 используется через семантическую дельта-карту:

```text
registers/PHASE3R_DELTA_FROM_V01.csv
```

---

## 6. Что добавлено из v0.1 как дельта

Сохранены четыре полезных элемента, которых нет в v0.2 как отдельных гипотез:

1. `PHASE3R-DELTA-001` — 3 ± 2 active items protects execution from overload.
2. `PHASE3R-DELTA-002` — New documents should only be created if they close an execution gap.
3. `PHASE3R-DELTA-003` — Public communication should be resonance infrastructure, not ordinary marketing.
4. `PHASE3R-DELTA-004` — The first execution cycle should produce field evidence, not polished outputs.

Статус этих элементов: `delta-candidate / not core canon`.

---

## 7. Execution-гипотезы

Execution-гипотезы не удалены, но вынесены в парковку:

```text
registers/PHASE3R_EXECUTION_HYPOTHESES_PARKED.csv
```

Они вернутся позже на стадии MVP/MVI, Codex/VS Code, Obsidian/Canvas, Git/GitHub, MCP и внешнего feedback-контура.

---

## 8. Dangerous / risk-flagged зона

В отдельный реестр вынесены все гипотезы с `dangerous = yes`, а также категория `Dangerous assumptions`:

```text
registers/PHASE3R_DANGEROUS_AND_RISK_FLAGGED.csv
```

Важно: `HYP-IPAC-027 — Execution expansion can postpone action` трактуется не как опасная фантазия, а как **process guardrail** — защитное правило процесса.

---

## 9. Исправление связей с фазами

В новой линии официально приняты:

```text
PHASE 1 — NEED ARTIFACT
PHASE 4 — ARCHITECTURE INVARIANTS
PHASE 3R — HYPOTHESIS NORMALIZATION
```

`PHASE 2 — CONCEPT ARTIFACT` пока не считается принятой. Все ссылки на Phase 2 должны быть помечены как `referenced_old_context_artifact`, а не как `accepted previous artifact`.

---

## 10. Следующий шаг

После Phase 3R можно идти к:

```text
PHASE 8 — LESSONS LEARNED
```

Цель Phase 8 — извлечь не новые идеи, а причины предыдущей деградации процесса: context drift, premature execution, document proliferation, false validation, architecture-as-delay и смешение уровней.
