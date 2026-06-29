---
artifact_id: IPAC-SEMANTIC-MESSAGE-BUS-AND-WORLD-PICTURE-SYNC-RULE-v0.1
artifact_name: IPAC_SEMANTIC_MESSAGE_BUS_AND_WORLD_PICTURE_SYNC_RULE_v0_1
artifact_type: project_rule
status: Gateway_L1_Candidate
target_status_after_git_commit: L1 Git-Committed Working Tool
canon_status: not_canon
temporary_stable_status: not_assigned
created_at: 2026-06-29 20:57:59
language: ru
term_policy: English term must include Russian translation in parentheses
scope:
  - Semantic Message Bus (смысловая шина сообщений)
  - World Picture Synchronization (синхронизация картины мира)
  - Project Federation (федерация проектов)
  - Codex / MCP transport (транспорт через Codex / MCP)
  - Federal Center Arbitration (арбитраж федерального центра)
activation_condition: becomes working tool after targeted Git commit
---

# IPAC_SEMANTIC_MESSAGE_BUS_AND_WORLD_PICTURE_SYNC_RULE_v0_1

## Правило смысловой шины сообщений и синхронизации картины мира

```yaml
RULE_STATUS:
  gateway_status: Gateway_L1_Candidate
  target_status_after_git_commit: L1 Git-Committed Working Tool
  canon_status: not_canon
  temporary_stable_status: not_assigned
  operational_intent: apply_after_git_commit
```

---

## 0. Назначение

Это правило вводит рабочий слой обмена сообщениями между интеллектуальными узлами IPaC OS (смысловой операционной системы).

IPaC OS создаётся не только как система памяти, но и как система согласованного обмена изменениями картины мира между:

- текущим Supervisor (супервизором);
- тестовым Wise Supervisor (Мудрым Супервизором);
- Project Centers of Competence (проектными центрами компетенции);
- Codex / MCP contour (контуром Codex / MCP);
- локальными Obsidian vaults (хранилищами Obsidian);
- общим associative-semantic field (ассоциативно-семантическим полем);
- Git (Гитом) как fixing-ratchet memory (фиксирующе-храповиковой памятью).

---

## 1. Core principle (главный принцип)

```text
Memory stores state.
Message transfers change.
Federal synchronization preserves coherence.
```

Перевод:

```text
Память хранит состояние.
Сообщение переносит изменение.
Федеративная синхронизация сохраняет согласованность.
```

Git commit (Git-проводка) фиксирует изменение, но сам по себе не обновляет память других Project (проектов), чатов, Supervisor (супервизоров) и интеллектуальных узлов.

Поэтому всякая значимая Git-проводка, меняющая правила, рабочие инструменты, процесс, синхронизацию, Codex / MCP contour (контур Codex / MCP), Project Resources (ресурсы проекта) или картину мира, должна порождать Sync Message (синхросообщение) или World Picture Delta (дельту картины мира).

---

## 2. Почему это необходимо

IPaC находится в режиме Search Design (поискового проектирования).

Одновременно создаются:

1. IPaC OS (смысловая операционная система);
2. process kernel (ядро процесса) под эту систему;
3. культура hybrid intellectual interaction (гибридного интеллектуального взаимодействия);
4. способ достижения resonance mode (резонансного режима) между Human Intelligence (человеческим интеллектом) и Silicon Intelligence (кремниевым интеллектом);
5. federation workflow (федеративный рабочий процесс) Project Centers of Competence (проектных центров компетенции).

Гипотеза разработки:

```text
Если вывести взаимодействие Human Intelligence + Silicon Intelligence
(человеческого интеллекта + кремниевого интеллекта)
на resonance mode (резонансный режим),
то продуктивность интеллектуального труда может вырасти не на проценты,
а в разы.
```

Для такого режима нельзя держать изменения в голове человека. Нельзя надеяться, что другой интеллектуальный узел сам узнает новое правило.

---

## 3. Федеративная модель

IPaC Federation (федерация IPaC) состоит из множества локальных узлов, каждый из которых имеет право на local autonomy (местную автономию):

- локальный Vault (хранилище);
- локальные рабочие правила;
- локальные L1 experiments (эксперименты уровня L1);
- локальные task packs (пакеты задач);
- локальные chats (чаты);
- локальные Codex / MCP actions (действия Codex / MCP).

Но в федеративной системе есть вопросы, которые затрагивают не один узел, а многие. Такие вопросы относятся к Federal Level (федеральному уровню).

---

## 4. Local autonomy (местная автономия)

Локальный Project Center of Competence (проектный центр компетенции) имеет право:

- создавать локальные L1 Candidate (кандидаты Шлюза L1);
- проводить локальные Git-Committed Working Tool (рабочие инструменты, проведённые через Git);
- вести свой Vault (хранилище);
- формировать локальные task packs (пакеты задач);
- использовать локальные interpretation notes (интерпретационные заметки);
- выполнять локальные Codex / MCP jobs (задания Codex / MCP);
- экспериментировать с workflow (рабочим процессом), если он не ломает федеральный слой.

---

## 5. Federal Center (федеральный центр)

Federal Center (федеральный центр) нужен не для подавления местной свободы, а для согласования вопросов, затрагивающих многих.

К федеральному уровню относятся:

- schema (схема) Sync Message (синхросообщения);
- schema (схема) World Picture Delta (дельты картины мира);
- общая status ladder (статусная лестница): raw / L1 / Working Tool / L2 / L3 / ADMITTED / Temporary Stable / canon;
- shared term policy (общая политика терминов);
- общие правила Git provenance (Git-происхождения);
- общие Project Resource Refresh (обновления ресурсов проекта);
- межузловые arbitration decisions (арбитражные решения);
- правила compatibility (совместимости) между Project (проектами);
- правила Codex Closeout Report (закрывающего отчёта Codex);
- форматы Rehydration Brief (брифа повторного развёртывания);
- правила Semantic Message Bus (смысловой шины сообщений).

Формула:

```text
Local freedom where local consequences.
Federal arbitration where shared consequences.
```

Перевод:

```text
Местная свобода там, где последствия местные.
Федеральный арбитраж там, где последствия общие.
```

---

## 6. Subsidiarity principle (принцип субсидиарности)

Решение должно приниматься на минимальном уровне, который способен корректно его удержать.

```yaml
decision_routing:
  local_only:
    route: local_node
    examples:
      - local note
      - local task pack
      - local experiment
      - local context page

  affects_multiple_nodes:
    route: federal_center
    examples:
      - shared message schema
      - shared rule status
      - synchronization protocol
      - Project Resource refresh policy
      - Codex / MCP closeout protocol

  affects_core_identity:
    route: human_decision_boundary
    examples:
      - canon
      - Temporary Stable
      - ADMITTED
      - change of IPaC OS core framing
```

---

## 7. Semantic Message Bus (смысловая шина сообщений)

Semantic Message Bus (смысловая шина сообщений) — это не один физический инструмент, а протокол смыслового обмена.

Transport (транспорт) может быть разным:

- chat message (сообщение чата);
- Markdown file (Markdown-файл);
- Project Resource (ресурс проекта);
- Obsidian note (заметка Obsidian);
- Git commit (Git-проводка);
- Codex / MCP transport (транспорт Codex / MCP);
- Claude MCP (Claude Model Context Protocol / протокол модельного контекста Claude);
- Rehydration Brief (бриф повторного развёртывания).

Но смысловой контракт сообщения должен быть единым.

---

## 8. Message types (типы сообщений)

### 8.1. Sync Message (синхросообщение)

Короткое операционное сообщение о том, что узел должен узнать и начать применять.

### 8.2. World Picture Delta (дельта картины мира)

Структурированный пакет изменений картины мира от одного anchor (якоря) к другому.

### 8.3. Codex Closeout Report (закрывающий отчёт Codex)

Отчёт исполнительного контура Codex (Кодекс) о том, что было сделано в repo (репозитории), какие файлы изменены, какие проводки созданы и какая синхронизация нужна.

### 8.4. Rehydration Brief (бриф повторного развёртывания)

Краткий пакет для восстановления текущей операционной сцены в новом чате, Project (проекте), агенте или центре компетенции.

### 8.5. Federal Arbitration Notice (уведомление федерального арбитража)

Сообщение о решении Federal Center (федерального центра), если локальные решения конфликтуют или затрагивают общую совместимость.

---

## 9. Mandatory Sync Message schema (обязательная схема синхросообщения)

```yaml
IPAC_SYNC_MESSAGE:
  message_id: "IPAC-SYNC-YYYYMMDD-HHMMSS-..."
  message_type: "Sync Message / синхросообщение"
  status: "operational_update"
  canon_status: "not_canon"
  temporary_stable_status: "not_assigned"

  time_anchor:
    generated_at_local: "YYYY-MM-DD HH:MM:SS"
    timezone: "Europe/Kiev"
    source: "sender_runtime_or_closeout_report"

  source_node:
    id: "..."
    role: "..."

  target_nodes:
    - id: "..."
      role: "..."

  git_anchor:
    before: "..."
    after: "..."

  changed_artifacts:
    - path: "..."
      commit: "..."
      status_after_commit: "L1 Git-Committed Working Tool"

  operational_obligations:
    - "..."

  status_guard:
    canon_status: "not_canon"
    temporary_stable_status: "not_assigned"
    no_live_git_claim_without_output: true

  required_target_action:
    - ingest
    - acknowledge
    - apply

  expected_ack:
    one_of:
      - SYNC_ACCEPTED
      - SYNC_HOLD
      - SYNC_REJECTED
      - NEEDS_CONTEXT
```

---

## 10. Mandatory World Picture Delta schema (обязательная схема дельты картины мира)

```yaml
WORLD_PICTURE_DELTA:
  delta_id: "WORLD-PICTURE-DELTA-YYYYMMDD-HHMMSS"
  status: "candidate / sync_input"
  canon_status: "not_canon"

  time_anchor:
    generated_at_local: "YYYY-MM-DD HH:MM:SS"
    timezone: "Europe/Kiev"

  from_anchor:
    git_commit: "..."
    snapshot: "..."
    project_resource_version: "..."

  to_anchor:
    git_commit: "..."
    snapshot: "..."
    project_resource_version: "..."

  new_rules:
    - path: "..."
      commit: "..."
      new_status: "L1 Git-Committed Working Tool"

  changed_working_tools:
    - "..."

  changes_to_process:
    - "..."

  changes_to_world_picture:
    - "..."

  who_must_be_synced:
    - current_supervisor
    - test_wise_supervisor
    - codex_contour
    - project_center_of_competence

  required_followup_messages:
    - Sync Message
    - Project Resource Refresh
    - Codex Closeout Report

  risks_if_not_synced:
    - divergent_world_pictures
    - stale_supervisor_behavior
    - duplicated_work
    - broken_resonance_mode
```

---

## 11. Codex Closeout Report schema (схема закрывающего отчёта Codex)

Каждая работа Codex (Кодекса), которая меняет repo (репозиторий), должна возвращать:

```yaml
CODEX_CLOSEOUT_REPORT:
  report_id: "CODEX-CLOSEOUT-YYYYMMDD-HHMMSS"
  time_anchor:
    generated_at_local: "YYYY-MM-DD HH:MM:SS"
    timezone: "Europe/Kiev"

  repo:
    root: "..."
    branch: "..."
    remote: "..."

  git:
    head_before: "..."
    head_after: "..."
    commits:
      - hash: "..."
        message: "..."
        files: []

  files_created: []
  files_modified: []
  files_deleted: []
  push_status: "pushed / not_pushed / failed"

  new_rules_or_obligations: []
  new_working_tools: []
  resource_updates_needed: []
  supervisor_sync_required: true
  next_required_human_action: "..."
```

---

## 12. Acknowledgement protocol (протокол подтверждения)

Получатель Sync Message (синхросообщения) обязан ответить одним из статусов:

```yaml
SYNC_ACK:
  status:
    one_of:
      - SYNC_ACCEPTED
      - SYNC_HOLD
      - SYNC_REJECTED
      - NEEDS_CONTEXT
  understood_new_obligations: true/false
  will_apply_from_now: true/false
  missing_context: []
  local_conflicts: []
```

---

## 13. Conflict routing (маршрутизация конфликтов)

Если локальный узел не согласен с федеральным сообщением, он не обязан молча подчиняться, но обязан явно оформить конфликт.

```yaml
CONFLICT_ROUTING:
  local_conflict:
    status: SYNC_HOLD
    route: Federal Center
    required_fields:
      - conflicting_rule
      - local_reason
      - affected_nodes
      - proposed_resolution

  federal_decision:
    possible_outcomes:
      - accept_local_exception
      - modify_federal_rule
      - keep_federal_rule
      - split_rule_by_scope
      - escalate_to_human_decision_boundary
```

---

## 14. L1 Working Tool and speed of Search Design (рабочий инструмент L1 и скорость поискового проектирования)

В режиме Search Design (поискового проектирования) нельзя ждать L2/L3 для каждого процессного инструмента.

Поэтому действует правило:

```text
Gateway L1 Candidate + Git commit = L1 Git-Committed Working Tool.
```

Перевод:

```text
Кандидат Шлюза L1 + Git-проводка = рабочий инструмент Шлюза L1, проведённый через Git.
```

Это позволяет сохранять скорость resonance mode (резонансного режима), но не превращает рабочий инструмент в canon (канон).

---

## 15. What must not happen (что нельзя допускать)

Нельзя:

- считать Git commit (Git-проводку) автоматической синхронизацией всех Supervisor (супервизоров);
- считать локальную картину мира федеральной без Sync Message (синхросообщения);
- держать новые правила только в голове человека;
- заставлять человека помнить, кому что надо передать;
- превращать Project Resources (ресурсы проекта) в устаревший boot image (загрузочный образ);
- запускать тестового Wise Supervisor (Мудрого Супервизора) на старой картине мира, если появились новые рабочие правила;
- путать local autonomy (местную автономию) с несогласованностью;
- путать Federal Center (федеральный центр) с бюрократическим тормозом.

---

## 16. Minimal operational workflow (минимальный операционный процесс)

```text
Rule / artifact / process change created
→ Gateway L1 Candidate
→ targeted Git commit
→ L1 Git-Committed Working Tool
→ World Picture Delta if cross-node impact
→ Sync Message to affected nodes
→ target acknowledgement
→ observe in work
→ optional L2 review later
```

Перевод:

```text
Правило / артефакт / процессное изменение создано
→ кандидат Шлюза L1
→ точечная Git-проводка
→ рабочий инструмент Шлюза L1, проведённый через Git
→ дельта картины мира, если затронуто несколько узлов
→ синхросообщение затронутым узлам
→ подтверждение получателя
→ наблюдение в работе
→ возможное рассмотрение L2 позже
```

---

## 17. Current first use case (первое текущее применение)

После Git-проводок:

```yaml
committed_rules:
  - commit: 49c4e89
    message: "rules: add gateway l1 working tool regulation"
    file: "06_PROJECT_RULES/RULE_GATEWAY_L1_GIT_COMMITTED_WORKING_TOOL_v0_1.md"

  - commit: 82a7781
    message: "rules: add supervisor state temporal anchor"
    file: "06_PROJECT_RULES/RULE_TEMPORAL_ANCHOR_IN_SUPERVISOR_STATE_v0_1.md"
```

необходимо передать Test Wise Supervisor (тестовому Мудрому Супервизору) World Picture Delta (дельту картины мира) или Sync Message (синхросообщение), иначе он останется на старой картине мира.

---

## 18. Status guard (статусный предохранитель)

```yaml
status_guard:
  this_rule_initial_status: Gateway_L1_Candidate
  target_status_after_git_commit: L1 Git-Committed Working Tool
  canon_status: not_canon
  temporary_stable_status: not_assigned
  admitted_status: not_assigned

  human_decision_required_for:
    - ADMITTED
    - Temporary Stable
    - canon
    - federal_core_identity_change

  forbidden:
    - automatic canonization
    - silent cross-node drift
    - stale Project Resources without refresh notice
    - hidden Codex changes without closeout report
```

---

## 19. Verdict (вердикт)

```text
READY_FOR_L1_GIT_COMMIT
```

После целевой Git-проводки это правило становится:

```text
L1 Git-Committed Working Tool
(рабочий инструмент Шлюза L1, проведённый через Git)
```

но не становится canon (каноном), Temporary Stable (временно зафиксированным стабильняком) или ADMITTED (допущенным).
