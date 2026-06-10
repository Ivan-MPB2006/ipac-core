# 3. Схема загрузки ресурсов

## Принцип

Загружаем не всё подряд, а только собранные пакеты верхнего уровня.

Цель:
новый Project должен стартовать из curated context
(отобранного контекста),
а не из старого длинного чата.

## Минимальная загрузка

Загрузить в Project resources / files:

1. `IPaC_Project_Starter_Pack_v0_2.zip`
2. `IPaC_Knowledge_Recovery_Pack_v0_1.zip`
3. `IPaC_Wave3_CLOSURE_Pack_v0_1.zip`
4. `00_PROJECT_INITIALIZATION.md`

## Рекомендуемый порядок загрузки

### Шаг 1

Загрузить:

`00_PROJECT_INITIALIZATION.md`

Зачем:
задаёт координаты и режим.

### Шаг 2

Загрузить:

`IPaC_Project_Starter_Pack_v0_2.zip`

Зачем:
главный source-of-truth нового Project.

### Шаг 3

Загрузить:

`IPaC_Knowledge_Recovery_Pack_v0_1.zip`

Зачем:
поддержка содержательного слоя: Concept, Research, Open Questions.

### Шаг 4

Загрузить:

`IPaC_Wave3_CLOSURE_Pack_v0_1.zip`

Зачем:
фиксирует, что Wave 3 закрыта как Candidate Recovery, а MVI-тестирование припарковано.

## Что НЕ загружать на старте

Не загружать:

- все старые Phase ZIP по отдельности;
- старые чаты целиком;
- Phase 7S / 7T как активные инструкции;
- execution artifacts как основной контекст;
- канальные материалы LinkedIn / Telegram / YouTube;
- Codex / MCP / RAG / Neo4j материалы как текущую задачу.

## Если Project плохо читает ZIP

Тогда распаковать ZIP и загрузить только верхние файлы:

Из `IPaC_Project_Starter_Pack_v0_2`:

- `START_HERE.md`
- `MANIFEST.md`
- `docs/00_PROJECT_STARTER_OVERVIEW.md`
- `docs/01_ROOT_NEED.md`
- `docs/07_CONCEPT_CORE_AND_GLOSSARY.md`
- `docs/08_RESEARCH_MAP_AND_GAPS.md`
- `docs/09_OPEN_QUESTIONS_AND_VALIDATION_GAPS.md`
- `docs/10_WAVE2_CLOSURE_AND_NEXT_COORDINATES.md`
- `docs/12_NEXT_PHASE_COORDINATES.md`
- `registers/PROJECT_RULES_REGISTER.csv`
- `registers/PARKED_ITEMS_REGISTER.csv`

Из `IPaC_Knowledge_Recovery_Pack_v0_1`:

- `START_HERE.md`
- `docs/00_KNOWLEDGE_RECOVERY_OVERVIEW.md`
- `docs/01_CONCEPT_CORE_SUMMARY.md`
- `docs/02_RESEARCH_MAP_SUMMARY.md`
- `docs/03_OPEN_QUESTIONS_AND_UNCERTAINTY_MAP.md`
- `docs/05_WAVE2_CLOSURE_DECISION.md`

Из `IPaC_Wave3_CLOSURE_Pack_v0_1`:

- `START_HERE.md`
- `docs/WAVE3_CLOSURE_DECISION.md`
- `docs/WAVE3_ACCEPTED_AND_PARKED.md`
- `docs/NEXT_COORDINATES_PROJECT_RESTORATION.md`
- `docs/ACTIVE_GUARDRAILS_AFTER_WAVE3.md`
