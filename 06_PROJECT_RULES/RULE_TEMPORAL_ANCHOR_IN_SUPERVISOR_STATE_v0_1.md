# RULE_TEMPORAL_ANCHOR_IN_SUPERVISOR_STATE_v0_1
## Правило временного якоря в PROJECT_SUPERVISOR_STATE

```yaml
artifact_id: RULE-TEMPORAL-ANCHOR-IN-SUPERVISOR-STATE-v0.1
artifact_type: project_rule_candidate
regulation_level: supervisor_state_operational
status: Gateway_L1_Candidate
operational_status_after_git: L1 Git-Committed Working Tool
canon_status: not_canon
temporary_stable_status: not_assigned
created_at: 2026-06-29 19:03:01 Europe/Kiev
language: ru
term_policy: English term must include Russian translation in parentheses
scope: temporal axis / supervisor state / working memory hygiene
parent_rule: RULE_GATEWAY_L1_GIT_COMMITTED_WORKING_TOOL_v0_1
human_decision: approved_for_L1_git_working_tool
```

---

## 1. Назначение

Это правило вводит обязательный time_anchor (временной якорь) в каждый `PROJECT_SUPERVISOR_STATE` (состояние супервизора), чтобы формировать Temporal Axis (временную ось) проекта и не заставлять человека помнить, когда был последний смысловой шаг.

---

## 2. Главная формула

```text
Каждый PROJECT_SUPERVISOR_STATE
(состояние супервизора)
должен иметь time_anchor
(временной якорь).
```

---

## 3. Что фиксируется

Supervisor (супервизор) фиксирует не скрытую platform timestamp (платформенную метку времени), а honest generated_at_local (честное локальное время генерации ответа), доступное в момент ответа.

Различение:

```text
generated_at_local (локальное время генерации ответа)
≠
platform_message_timestamp (платформенная метка времени сообщения)
```

Если platform_message_timestamp (платформенная метка времени сообщения) не видна, это указывается явно.

---

## 4. Обязательный YAML-шаблон

```yaml
PROJECT_SUPERVISOR_STATE:
  time_anchor:
    generated_at_local: "YYYY-MM-DD HH:MM:SS"
    timezone: "Europe/Kiev"
    source: assistant_runtime / user_info_runtime
    platform_message_timestamp_visible: false
    previous_known_anchor: null
    elapsed_since_previous_known_anchor: null

  active_focus:
    ...

  current_artifact:
    ...

  open_debts:
    active: []
    parked: []

  next_recommended_action:
    ...

  risk_of_premature_canonization:
    ...

  main_risk_now:
    ...
```

---

## 5. Зачем это нужно

`time_anchor` (временной якорь) нужен, чтобы:

1. строить Temporal Axis (временную ось) проекта;
2. видеть, сколько времени висит активный хвост;
3. отличать свежую операционную сцену от вчерашней;
4. решать, нужна ли rehydration (повторное развёртывание контекста);
5. снижать cognitive load (когнитивную нагрузку) человека;
6. предотвращать удержание лишнего в human working memory (рабочей памяти человека).

---

## 6. Применение

Начиная с момента Git-проводки этого правила, Supervisor (супервизор) должен добавлять `time_anchor` (временной якорь) в каждый финальный `PROJECT_SUPERVISOR_STATE` (состояние супервизора), где такой блок используется.

---

## 7. Status guard (статусный предохранитель)

Это правило после Git-проводки получает статус:

```yaml
status: L1 Git-Committed Working Tool
canon_status: not_canon
temporary_stable_status: not_assigned
```

Это рабочий инструмент, а не canon (канон), не Temporary Stable (временно зафиксированный стабильняк), не ADMITTED (допущено).

---

## 8. Наблюдение

После внедрения правило наблюдается в работе. Триггеры пересмотра:

```yaml
review_triggers:
  - time_anchor_is_missing
  - wrong_time_claim
  - user_detects_confusion_about_elapsed_time
  - supervisor_keeps_old_tail_in_active_focus
  - timezone_mismatch
  - excessive_status_block_noise
```
