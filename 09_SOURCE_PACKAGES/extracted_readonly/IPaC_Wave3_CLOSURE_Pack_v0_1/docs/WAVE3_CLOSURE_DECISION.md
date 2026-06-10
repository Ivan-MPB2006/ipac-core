# Wave 3 Closure Decision

## Координата

Recovery Program  
→ Wave 3 — Validation / MVP Candidate Recovery  
→ Closure Decision

## Решение

Wave 3 закрывается в статусе:

**closed-as-candidate-recovery**

Перевод:

**закрыта как восстановление карты кандидатов проверки**.

## Что засчитано

Засчитано:

- восстановлены MVP / MVI кандидаты;
- восстановлены validation targets;
- восстановлены возможные field evidence targets;
- выявлены риски false validation;
- выделены parked / premature candidates;
- получена shortlist-карта для будущего review.

## Что НЕ засчитано

Не засчитывается как актуальное направление сейчас:

- выбор первого MVP / MVI;
- запуск MVI;
- тестовый дизайн;
- controlled run;
- clean-room boot test;
- execution plan;
- Codex / MCP / RAG / Neo4j integration.

## Почему

Потому что мы начали уходить в глубину MVI раньше, чем ядро IPaC восстановлено в новом Project.

Это нарушает текущую дисциплину:

1. сначала восстановить ядро;
2. затем стабилизировать Project context;
3. затем вернуться к candidates review;
4. только потом проектировать первый MVI-тест.

## Статус Phase 7R / 7S / 7T

- Phase 7R — полезный черновик дисциплины выбора; статус: deferred-draft.
- Phase 7S — преждевременный test design; статус: parked.
- Phase 7T — преждевременный internal run; статус: parked / not current.
