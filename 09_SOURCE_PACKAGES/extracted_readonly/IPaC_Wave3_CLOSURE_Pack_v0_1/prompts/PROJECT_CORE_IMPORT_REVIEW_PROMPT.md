# PROJECT CORE IMPORT REVIEW PROMPT
# Промпт проверки импорта ядра проекта

Проверь, что импортированные материалы восстановили ядро IPaC без дрейфа.

## Проверь

1. Есть ли Root Need.
2. Есть ли Concept Core.
3. Есть ли Architecture Invariants.
4. Есть ли Normalized Hypothesis Registry.
5. Есть ли Research Map.
6. Есть ли Open Questions / Validation Gaps.
7. Есть ли Lessons Learned / Project Rules.
8. Есть ли Parking Lot.
9. Не протащены ли execution items в архитектурное ядро.
10. Не начался ли преждевременный MVP / MVI.

## Вердикт

Выдай один из статусов:

- BOOT_OK
- BOOT_PARTIAL
- BOOT_DRIFT_DETECTED
- BOOT_FAIL

Если BOOT_PARTIAL или BOOT_DRIFT_DETECTED, укажи corrective actions.
