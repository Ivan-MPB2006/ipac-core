# 04 — System Discipline and Project Rules

## Главный урок

```text
Сильное мышление должно немедленно превращаться в управляемые артефакты,
иначе чат создаёт hidden context debt.
```

## Основные правила

### MR-IPAC-001 — mandatory

Every artifact must state phase, artifact_type, scope, exclusions and validation type.

### MR-IPAC-002 — mandatory

Validated means internal/artifact-supported unless field-tested or externally-validated is explicitly stated.

### MR-IPAC-003 — mandatory

Execution candidates must not be placed in architecture core.

### MR-IPAC-004 — mandatory

Accepted knowledge must be externalized from chat into artifact/register/status.

### MR-IPAC-005 — mandatory

Hypothesis status must not be upgraded without evidence.

### WR-IPAC-001 — warning

If a beautiful formula appears, mark it as formula/candidate until validated.

### WR-IPAC-002 — warning

If channels dominate discussion, check for channel-driven thinking.

### WR-IPAC-003 — warning

If new documents multiply, check for document proliferation.

### WR-IPAC-004 — warning

If the model sounds very confident, verify phase and layer alignment.

### SR-IPAC-001 — stop

If Need, Concept, Architecture and Execution appear in one artifact request, stop and split layers.

### SR-IPAC-002 — stop

If an execution plan is requested inside architecture extraction, stop and reclassify.

### SR-IPAC-003 — stop

If raw feedback is being treated as conclusion, stop and route to review.

### RR-IPAC-001 — review

Every major correction must become a lesson, rule or normalization note.

### RR-IPAC-002 — review

Every speculative concept must be reviewed before canonization.

### RR-IPAC-003 — review

Every parked source must be periodically reviewed or discarded.

### AR-IPAC-001 — artifact

Create a new document only when it closes a real gap or establishes an accepted artifact boundary.

### AR-IPAC-002 — artifact

Update an existing artifact when the change belongs to the same layer and scope.

### AR-IPAC-003 — artifact

Do not create a document when a register row, status update or recovery note is enough.

### AR-IPAC-004 — artifact

Park valuable wrong-layer material instead of deleting or canonizing it.

## Анти-паттерны

### AP-IPAC-001 — Endless Chat as Memory

**Описание:** Treating a long chat as the durable source-of-truth.

**Риск:** Hidden context debt and failed portation.

**Профилактика:** Externalize accepted knowledge into artifacts, registers and status files.

### AP-IPAC-002 — Beautiful Synthesis as Validation

**Описание:** Confusing a coherent synthesis with evidence.

**Риск:** False validation.

**Профилактика:** Always mark validation type and uncertainty.

### AP-IPAC-003 — Architecture as Delay

**Описание:** Continuing to architect instead of testing assumptions.

**Риск:** No contact with reality.

**Профилактика:** Further architecture requires explicit gap justification.

### AP-IPAC-004 — Execution as Escape

**Описание:** Jumping into channels or launch mechanics to avoid unresolved conceptual ambiguity.

**Риск:** Premature solution lock-in.

**Профилактика:** Tag execution elements as candidates until validated.

### AP-IPAC-005 — Document Proliferation

**Описание:** Creating new documents faster than they can be governed.

**Риск:** Conflicting artifacts and cognitive overload.

**Профилактика:** Choose update/register/park before creating new document.

### AP-IPAC-006 — Premature Canonization

**Описание:** Turning attractive ideas into canon before evidence.

**Риск:** Canon contamination.

**Профилактика:** Canon update requires review and status decision.

### AP-IPAC-007 — Channel-Driven Thinking

**Описание:** Letting publication channels shape core architecture.

**Риск:** Tactical architecture.

**Профилактика:** Keep channels as execution candidates; abstract only projection/use/feedback.

### AP-IPAC-008 — Model Confidence Drift

**Описание:** Model sounds confident while layer alignment drifts.

**Риск:** Wrong artifact accepted due to fluency.

**Профилактика:** Require scope check and uncertainty marking.

### AP-IPAC-009 — Hidden Context Debt

**Описание:** Assuming future agents will infer context not explicitly packaged.

**Риск:** New Project starts from zero or misreads state.

**Профилактика:** Maintain boot sources and status summaries.

## Stop Rules — правила остановки

1. Если Need, Architecture и Execution смешались в одной сессии — остановить и разделить артефакты.
2. Если появляется красивый, но непроверенный вывод — пометить validation type и uncertainty.
3. Если execution-кандидат попадает в архитектурное ядро — остановить и припарковать.
4. Если появляется новый документ без стабильной границы артефакта — заменить на register row / recovery note.
5. Если модель уверенно продолжает без trace — потребовать статус, source и scope.

## Source registers

- `registers/PROJECT_RULES_REGISTER.csv`
- `registers/ANTIPATTERN_REGISTER.csv`
- `registers/LESSONS_LEARNED_REGISTER_NORMALIZED.csv`
