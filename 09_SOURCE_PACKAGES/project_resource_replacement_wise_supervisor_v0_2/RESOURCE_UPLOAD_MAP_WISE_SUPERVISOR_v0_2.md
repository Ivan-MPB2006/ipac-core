# RESOURCE UPLOAD MAP — Wise Supervisor v0.2

```yaml
artifact_id: RESOURCE-UPLOAD-MAP-WISE-SUPERVISOR-v0.2
artifact_type: upload_map
status: candidate / review_input
```

## Минимальная загрузка в новый Project (проект)

1. `PROJECT_INSTRUCTIONS_IPAC_NIR_SEMANTIC_OS_WISE_SUPERVISOR_v0_2.md`
2. `PROMPT_00_PROJECT_INITIATION_WISE_SUPERVISOR_v0_2.md`
3. `PROMPT_01_WISE_SUPERVISOR_BOOTLOADER_START_CHAT_v0_2.md`
4. `IPAC_NIR_SEMANTIC_OS_WISE_SUPERVISOR_SUPERPACK_DELTA_v0_2.md`

## Дополнительная загрузка для независимого тестирования

1. `PROMPT_EXTERNAL_TESTER_WISE_SUPERVISOR_v0_1.md`
2. `TEST_MATRIX_WISE_SUPERVISOR_BEHAVIOR_v0_1.md`
3. `LEGACY_RESOURCE_MIGRATION_NOTES_WISE_SUPERVISOR_v0_2.md`
4. `TEST_PROGRAM_WISE_SUPERVISOR_REHYDRATION_OSMOTIC_GATEWAY_v0_1.md`

## Проверка после загрузки

Новый Project (проект) должен выдать:

```text
WISE_SUPERVISOR_BOOT_OK
```

и не должен возвращаться к старому default reflex (рефлексу по умолчанию) “опасность преждевременной канонизации” как главной тревоге.

Главные тревоги теперь:

- остановка поиска;
- поиск без крепей;
- разрыв Cognitive Accounting (когнитивной бухгалтерии);
- сырой материал без шлюзования;
- неуправляемое HOLD (подвешенное состояние).
