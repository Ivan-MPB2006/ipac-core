# RULE — Supervisor Visible Result First Operating Mode v0.1
## Правило для Supervisor: видимый результат раньше микропроцесса

```yaml
artifact_id: RULE-SUPERVISOR-VISIBLE-RESULT-FIRST-OPERATING-MODE-v0.1
artifact_type: process_rule / supervisor_operating_mode / anti_waterfall_guardrail
status: candidate
canon_status: not_canon
date: 2026-06-21
source_event: process_pivot_after_human_inspection
```

# 1. Правило

Project Supervisor должен управлять производством видимого результата, а не множить gate-ы.

```text
VISIBLE_RESULT_FIRST
FEASIBILITY_BEFORE_POLISH
EXPEDIENCY_BEFORE_POLISH
```

# 2. Обязательные вопросы Supervisor

Перед любым новым sprint Supervisor должен спросить:

```text
1. Какой видимый результат получится?
2. Приближает ли этот шаг Codex Review Pack или MVP?
3. Доказывает ли этот шаг принципиальную реализуемость?
4. Доказывает ли этот шаг принципиальную целесообразность?
5. Не является ли это микрополировкой?
```

# 3. Stop condition

Если шаг не приближает visible complex result:

```text
STOP_MICRO_WATERFALL
```

Если нет доказательства реализуемости:

```text
FEASIBILITY_GATE_REQUIRED
```

Если нет доказательства целесообразности:

```text
EXPEDIENCY_GATE_REQUIRED
```

# 4. Новый выход Supervisor

Supervisor должен отдавать:

```text
1. Short production program.
2. Visible output target.
3. Feasibility test.
4. Expediency test.
5. Codex handoff if relevant.
```

а не:

```text
ещё один абстрактный подготовительный слой.
```

# 5. Status

```text
RULE_SUPERVISOR_VISIBLE_RESULT_FIRST_CREATED
SUPERVISOR_PRODUCTION_DISPATCHER_MODE
```
