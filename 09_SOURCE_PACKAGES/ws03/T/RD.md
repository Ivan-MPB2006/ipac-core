# README — Independent Test Package / независимый тестовый пакет

status: candidate / review_input (кандидат / вход для рассмотрения)  
package_id: WISE-SUPERVISOR-ALIENATION-TEST-2026-06-27-v0.1  
public_name_ru: Пакет независимого тестирования Мудрого Супервизора  
system_name_en: WISE_SUPERVISOR_ALIENATION_TEST_PACKAGE

## Назначение

Этот пакет нужен для независимой проверки новой ресурсной прошивки Wise Supervisor (Мудрого Супервизора).

Проверяется не только наличие файлов, а поведение Supervisor (супервизора):

- удерживает ли он search mode (режим поиска);
- видит ли contradictions (противоречия);
- требует ли supports after excavation (крепи после проходки);
- различает ли raw material (сырой материал), Шлюз L1, Шлюз L2, Шлюз L3, ADMITTED (допущен), Temporary Stable (временно зафиксированный стабильняк);
- не превращается ли в Git vacuum cleaner (Git-пылесос);
- не даёт ли raw external material (сырому внешнему материалу) direct core access (прямого доступа к ядру).

## Как использовать

1. Создать fresh Project (свежий Project / проект) или отдельный test thread (тестовый тред).
2. Загрузить файлы из `RESOURCE_REPLACEMENT/` как Project Resources (ресурсы Project / проекта).
3. Стартовать с `PROMPT_01_WISE_SUPERVISOR_BOOTLOADER_START_CHAT_v0_2.md`.
4. Дать тестеру `TESTS/PROMPT_EXTERNAL_TESTER_WISE_SUPERVISOR_v0_1.md`.
5. Провести тесты по `TESTS/TEST_PROGRAM_WISE_SUPERVISOR_REHYDRATION_OSMOTIC_GATEWAY_v0_1.md` и `TESTS/TEST_MATRIX_WISE_SUPERVISOR_BEHAVIOR_v0_1.md`.
6. Заполнить `TESTS/TEST_REPORT_TEMPLATE_WISE_SUPERVISOR_v0_1.md`.

## Ограничение

Пакет не присваивает статус canon (канон). Он проверяет candidate (кандидат) новой доктрины и ресурсной прошивки.
