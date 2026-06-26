# ПОЛОЖЕНИЕ — Decision as Context Latch + Node Cluster Accounting First v0.2
## Положение о Decision (решении) как Context Latch (контекстной защёлке) и первичной учётной записи узлового сгустка

```yaml
artifact_id: IPAC-COS-PROCESS-REGULATION-DECISION-AS-CONTEXT-LATCH-NODE-CLUSTER-ACCOUNTING-FIRST-v0.2
artifact_type: internal_operating_regulation / process_rule_document / registry_recovery_discipline
status: candidate
canon_status: not_canon
document_status: document_candidate
decision_status: not_decided
publisher: Office of the Chief Architect of Semantic OS
publisher_ru: Офис Главного Архитектора смысловой операционной системы
primary_required_placement: 11_COS_ARCHITECTURE_PROJECT_DECISIONS/04_PROCESS_DECISIONS/
recommended_filename: PROCESS_REGULATION_DECISION_AS_CONTEXT_LATCH_AND_NODE_CLUSTER_ACCOUNTING_FIRST_v0_2.md
derivative_rule_zone: 06_PROJECT_RULES
derivative_notice_zone: 08_TRACE_AND_DECISIONS/project_notices
git_actions_authorized: false
codex_actions_authorized: false
human_approval_required: true
```

---

## 0. Статус документа

Это Положение является Document (документом), а не простым Notice (уведомлением) и не кратким Rule stub (заглушкой правила).

Оно подлежит обязательному размещению в:

```text
11_COS_ARCHITECTURE_PROJECT_DECISIONS/04_PROCESS_DECISIONS/
```

Причина размещения в `11_COS_ARCHITECTURE_PROJECT_DECISIONS`:

```text
это верхний документ о порядке проведения узлового смыслового сгустка
через архитектурный реестр решений COS.
```

Статус:

```text
candidate (кандидат)
not_canon (не канон)
human_approval_required (требуется человеческое одобрение)
git_actions_authorized: false (Git-действия не разрешены)
```

---

## 1. Human Approval Mark / отметка человеческого одобрения

```yaml
human_approval:
  status: pending
  approver_role: Human Architect
  approver_name:
  approval_date:
  approval_scope:
    - approved_as_working_process_regulation_candidate
    - approved_for_use_in_node_cluster_accounting
    - approved_for_future_QA_and_enrichment_pass
  approval_comment:
  canonization_decision: not_given
  git_commit_approval: not_given
```

Human Approval (человеческое одобрение) на этом документе означает разрешение использовать Положение как working process regulation (рабочее процессное положение).

Это не означает автоматическую canonization (канонизацию).

Отдельно требуются:

```text
Human Approval (человеческое одобрение) на Git commit (Git-проводку);
Human Decision (человеческое решение) на canon (канон), если оно когда-либо потребуется.
```

---

## 2. Главная формула положения

```text
Сначала узел восстановления.
Потом спектральное разнесение.
Потом правило и уведомление.
```

Операционная формула:

```text
11 first.
Then 06 and 08.

Сначала 11.
Потом 06 и 08.
```

Расширенный маршрут:

```text
Верхняя учётная запись
→ фактография
→ ссылки восстановления
→ связи с Daily Register (Дневным реестром)
→ связи с Daily Trace (Дневной трассой)
→ связи с фактографической подложкой
→ только потом производные отметки в 06 и 08.
```

---

## 3. Why This Regulation Exists / почему это положение существует

Узловой смысловой сгусток часто содержит несколько гармоник:

```text
decision_candidate (кандидат решения);
rule_candidate (кандидат правила);
trace_notice (уведомление трассы);
factography_anchor (фактографический якорь);
context_latch (контекстная защёлка);
obsidian_graph_node (узел графа Obsidian);
daily_trace_point (точка дневной трассы);
future_codex_task (будущая задача Codex).
```

Если сразу разнести сгусток по `06_PROJECT_RULES` и `08_TRACE_AND_DECISIONS/project_notices`, можно потерять целое.

Поэтому сначала создаётся верхняя учётная запись в `11_COS_ARCHITECTURE_PROJECT_DECISIONS`.

Именно по этой записи будет осуществляться восстановление смысла.

---

## 4. Decision (решение) как Context Latch (контекстная защёлка)

Decision (решение) — это не то, что мы записали.

Decision (решение) — это то, что система теперь обязана помнить, пока действует.

Decision (решение) в IPaC OS (IPaC смысловой ОС) — это semantic state transition (смысловой переход состояния), который превращает событие в обязанность памяти, память — в рабочий контекст, контекст — в действие, а действие — в трассируемый след.

Decision (решение) работает как Context Latch (контекстная защёлка), если оно указывает:

```text
что активировать;
когда активировать;
почему сейчас;
сколько удерживать;
когда отпустить;
какие страницы контекста подкачать;
какой шум не тащить;
где первичка;
какие Rule (правила) связаны;
какие actions (действия) следуют.
```

Формула:

```text
No Context Latch — no recovery-grade Decision.
Нет контекстной защёлки — нет решения уровня восстановления.
```

---

## 5. Node Cluster Accounting First / сначала учёт узлового сгустка

Каждый узловой смысловой сгусток, влияющий на архитектуру COS, процесс разработки, контекст, память, роли, правила или восстановление смысла, должен сначала получать верхнюю учётную запись.

Не начинать с Rule (правила) в `06_PROJECT_RULES`.

Не начинать с Notice (уведомления) в `08_TRACE_AND_DECISIONS/project_notices`.

Сначала:

```text
верхняя учётная запись в 11
→ фактография
→ ссылки восстановления
→ спектральное разнесение
→ производные отметки в 06 и 08
```

Верхняя учётная запись — это recovery node (узел восстановления), который сохраняет узловой сгусток целиком до разнесения по производным артефактам.

Она должна отвечать:

```text
что произошло;
почему это узловой сгусток;
какой смысл нельзя потерять;
какая точка перегиба;
какая резонансная точка;
какие производные элементы могут появиться;
что пока нельзя разносить преждевременно;
какие факты лежат в подложке;
по каким ссылкам восстановить смысл.
```

---

## 6. Required Route / обязательный маршрут проведения

### Step 1 — Upper Accounting Record / верхняя учётная запись

Создать верхнюю запись в:

```text
11_COS_ARCHITECTURE_PROJECT_DECISIONS
```

Рекомендуемый тип:

```text
node_cluster_accounting_record
```

### Step 2 — Factographic Substrate / фактографическая подложка

Указать:

```text
primary source (первоисточник);
thread fragment (фрагмент треда);
daily register entry (запись Дневного реестра);
QA report (отчёт контроля качества);
generated artifact (созданный артефакт);
source file (исходный файл);
human mark (отметка человека);
date (дата);
status (статус);
known limitations (известные ограничения).
```

### Step 3 — Recovery Links / ссылки восстановления

Добавить связи:

```text
Daily Register (Дневной реестр);
Daily Trace (Дневная трасса);
QA report (отчёт QA);
Primary Source (первоисточник);
related rules (связанные правила);
related decisions (связанные решения);
related notices (связанные уведомления);
related Obsidian concepts (связанные концепты Obsidian);
related Context Working Set (рабочий набор контекста).
```

### Step 4 — Spectral Routing / спектральное разнесение

Определить производные гармоники:

```text
Rule (правило) → 06_PROJECT_RULES;
Notice (уведомление) → 08_TRACE_AND_DECISIONS/project_notices;
Decision Record (запись решения) → 11_COS_ARCHITECTURE_PROJECT_DECISIONS;
Template (шаблон) → standards / templates;
QA Report (отчёт QA) → QA / reports;
Source Package (пакет источника) → source packages.
```

### Step 5 — Derivative Marks / производные отметки

Только после верхней учётной записи и фактографической подложки:

```text
06_PROJECT_RULES
= производное правило, если из сгустка выделен повторяемый принцип.

08_TRACE_AND_DECISIONS/project_notices
= короткое уведомление, что сгусток / правило / решение зафиксировано.
```

---

## 7. Mandatory Placement / обязательное размещение

Это Положение должно быть размещено как Document (документ) в папке:

```text
11_COS_ARCHITECTURE_PROJECT_DECISIONS/04_PROCESS_DECISIONS/
```

Рекомендуемое имя файла:

```text
PROCESS_REGULATION_DECISION_AS_CONTEXT_LATCH_AND_NODE_CLUSTER_ACCOUNTING_FIRST_v0_2.md
```

После Human Approval (человеческого одобрения) возможна отметка / зеркало в:

```text
11_COS_ARCHITECTURE_PROJECT_DECISIONS/02_HUMAN_APPROVED/
```

Основное тело документа остаётся в `04_PROCESS_DECISIONS`, если не принято отдельное Human Decision (человеческое решение) о переносе.

---

## 8. Derivative Rule and Notice / производные правило и уведомление

### Derivative Rule (производное правило)

В `06_PROJECT_RULES` может быть создан краткий производный Rule (правило):

```text
NODE_CLUSTER_ACCOUNTING_FIRST_RULE_candidate_v0_1.md
```

Он не заменяет Положение.

### Derivative Notice (производное уведомление)

В `08_TRACE_AND_DECISIONS/project_notices` может быть создано краткое Notice (уведомление):

```text
NOTICE_2026-06-23_NODE_CLUSTER_ACCOUNTING_FIRST_v0_1.md
```

Оно не заменяет Положение.

---

## 9. Context Latch / контекстная защёлка для этого Положения

```yaml
context_latch:
  what_to_activate:
    - node cluster must be recorded as a whole before routing
    - recovery happens through the upper accounting record
    - 06 and 08 are derivative marks, not the primary memory node
    - Decision Record must include Context Latch for recovery-grade decisions
  when_to_activate:
    - when a dense discussion produces a rule, decision, notice or regulation
    - when a concept contains several harmonics
    - when future recovery depends on preserving the whole semantic cluster
    - when creating or reviewing Project Decision records
  why_now:
    - QA showed that existing decision records are structurally present but too weak for context recovery
    - Human Architect required a stronger accounting-first order
    - Office of the Chief Architect COS needs one unified route for node clusters
  hold_until:
    - upper accounting record is created
    - factographic substrate is attached
    - recovery links are placed
    - derivative 06 and 08 marks are created
    - QA confirms recovery-grade completeness
  release_condition:
    - node cluster is fully routed
    - stronger reviewed regulation replaces this one
    - Human Decision moves the process to another standard
  required_context_pages:
    - this regulation document
    - Decision as Context Latch regulation v0.1
    - QA Decision as Context Latch Practice Check
    - Project Decisions Registry QA Report
    - Daily Register 2026-06-23
    - relevant primary chat fragment
  forbidden_context_noise:
    - full raw thread unless explicitly required
    - isolated notice without source
    - isolated rule without provenance
    - premature canonization language
    - Git commit recommendation without Human Approval
```

---

## 10. QA Subject / предмет QA

Предмет QA (контроля качества):

```text
Проверить, что узловой смысловой сгусток проведён в правильном порядке:
сначала верхняя учётная запись в 11,
затем фактография и ссылки восстановления,
и только потом производные отметки в 06 и 08.
```

QA Checks (проверки QA):

```text
1. Есть верхняя учётная запись в 11.
2. Есть фактографическая подложка.
3. Есть Human Mark (отметка человека).
4. Есть Context Latch (контекстная защёлка).
5. Есть связь с Daily Register (Дневным реестром).
6. Есть связь с Daily Trace (Дневной трассой).
7. Есть связь с Primary Source (первоисточником).
8. Есть Obsidian Graph Layer (слой графа Obsidian).
9. Есть производные отметки 06 и 08 только после верхней записи.
10. Статус остаётся candidate (кандидат), not_canon (не канон).
```

---

## 11. Obsidian Graph Layer / слой графа Obsidian

### Source Links / связи источника

```text
[[IPAC_COS_DECISION_AS_CONTEXT_LATCH_REGULATION_candidate_v0_1]]
[[QA_DECISION_AS_CONTEXT_LATCH_PRACTICE_CHECK_2026-06-23_v0_1]]
[[Daily Register 2026-06-23]]
```

### Process Links / процессные связи

```text
[[Node Cluster Accounting First]]
[[Decision as Context Latch]]
[[Semantic Quantization]]
[[Spectral Routing]]
[[Recovery-grade Decision Record]]
```

### Rule Links / связи правил

```text
[[INFLECTION_POINT_PROTOCOL_RULE_v0_1]]
[[MULTILAYER_VECTOR_NAVIGATION_RULE_v0_1]]
[[SHIP_LOG_REGISTER_PROVENANCE_RULE_v0_1]]
[[FACTOGRAPHY_INTERPRETATION_AND_REVISABLE_KNOWLEDGE_RULE_v0_1]]
```

### Registry Links / связи реестра

```text
[[11_COS_ARCHITECTURE_PROJECT_DECISIONS]]
[[06_PROJECT_RULES]]
[[08_TRACE_AND_DECISIONS/project_notices]]
```

### Tags / теги

```text
#ipac/cos
#process-regulation
#node-cluster
#context-latch
#semantic-quantization
#recovery-grade
#obsidian-graph
#project-decisions
#not-canon
```

---

## 12. Forbidden Actions / запрещённые действия

Запрещено:

```text
сразу создавать Rule (правило) без верхней записи учёта;
сразу создавать Notice (уведомление) без фактографической подложки;
разрывать узловой сгусток на части до понимания его гармоник;
считать короткое уведомление полноценным восстановительным слоем;
считать правило источником факта;
терять связь с Daily Register (Дневным реестром);
терять связь с Daily Trace (Дневной трассой);
делать Git commit (Git-проводку) без Human Approval (человеческого одобрения);
называть это canon (каноном) без отдельного Human Decision (человеческого решения).
```

---

## 13. Status / статус

```text
PROCESS_REGULATION_CREATED
STATUS_CANDIDATE
CANON_STATUS_NOT_CANON
MANDATORY_PLACEMENT_11_DEFINED
HUMAN_APPROVAL_REQUIRED
DERIVATIVE_06_AND_08_AFTER_11_ONLY
GIT_ACTIONS_NOT_AUTHORIZED
```
