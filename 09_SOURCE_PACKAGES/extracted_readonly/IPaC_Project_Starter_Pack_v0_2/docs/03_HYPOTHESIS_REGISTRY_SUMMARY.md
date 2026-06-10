# 03 — Hypothesis Registry Summary

## Статус

Основной рабочий реестр гипотез — Phase 3R.

```text
Phase 3 v0.2 = source base
Phase 3R = normalized working registry
Phase 3 v0.1 = parked-source / delta-source
```

## Ключевая нормализация

```text
validated ≠ field validated
```

То есть `validated` означает только внутреннюю или артефактную подтверждённость, если явно не указано `field-tested` или `externally-validated`.

На момент Starter Pack v0.1:

```text
field_validation_status = not_field_tested
```

для всех основных гипотез.

## Сводка

| Показатель | Значение |
|---|---:|
| Основных гипотез | 33 |
| Field-validated гипотез | 0 |
| Execution-гипотез в парковке | см. PHASE3R_EXECUTION_HYPOTHESES_PARKED.csv в исходном пакете |
| Дельта-кандидатов из v0.1 | 4 |

## Категории гипотез

- `core`: 5
- `research`: 6
- `architecture`: 9
- `execution`: 9
- `dangerous_assumption`: 4

## Нормализованные статусы

- `partially_supported_inside_recovery_context`: 11
- `validated_inside_recovery_context`: 14
- `unresolved`: 4
- `speculative_unvalidated`: 4


## Четыре дельта-кандидата из v0.1

1. `3 ± 2 active items protects execution from overload.`
2. `New documents should only be created if they close an execution gap.`
3. `Public communication should be resonance infrastructure, not ordinary marketing.`
4. `The first execution cycle should produce field evidence, not polished outputs.`

## Правило использования

Гипотезы нельзя превращать в решения без:

- validation type;
- evidence scope;
- falsification route;
- risk note;
- review / decision trace.

## Source register

Полный реестр: `registers/HYPOTHESIS_REGISTER_NORMALIZED.csv`.
