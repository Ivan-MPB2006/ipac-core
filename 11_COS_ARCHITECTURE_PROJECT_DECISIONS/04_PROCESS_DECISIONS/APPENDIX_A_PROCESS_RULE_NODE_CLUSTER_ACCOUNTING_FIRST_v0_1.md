# APPENDIX A — PROCESS RULE — Node Cluster Accounting First v0.1
## Приложение A — Процессное правило: сначала учёт узлового сгустка v0.1

```yaml
artifact_id: RULE-COS-NODE-CLUSTER-ACCOUNTING-FIRST-v0.1
artifact_type: appendix / project_rule_candidate / process_rule / registry_recovery_discipline
status: candidate
canon_status: not_canon
parent_document: PROCESS_REGULATION_DECISION_AS_CONTEXT_LATCH_AND_NODE_CLUSTER_ACCOUNTING_FIRST_v0_2.md
publisher: Office of the Chief Architect of Semantic OS
publisher_ru: Офис Главного Архитектора смысловой операционной системы
primary_required_placement: 11_COS_ARCHITECTURE_PROJECT_DECISIONS/04_PROCESS_DECISIONS/
derivative_rule_zone: 06_PROJECT_RULES
derivative_notice_zone: 08_TRACE_AND_DECISIONS/project_notices
human_approval_required: true
git_actions_authorized: false
```

---

## 0. Status / статус

Это Appendix (приложение) к Положению:

```text
PROCESS_REGULATION_DECISION_AS_CONTEXT_LATCH_AND_NODE_CLUSTER_ACCOUNTING_FIRST_v0_2.md
```

Appendix (приложение) фиксирует самостоятельное process rule (процессное правило), которое должно быть приложено к Положению и размещено рядом с ним в папке:

```text
11_COS_ARCHITECTURE_PROJECT_DECISIONS/04_PROCESS_DECISIONS/
```

Это не canon (канон).  
Это candidate (кандидат) для Human Review (человеческого рассмотрения) и последующего Human Approval (человеческого одобрения).

---

## 1. Rule Statement / формулировка правила

Каждый узловой смысловой сгусток, влияющий на архитектуру COS, процесс разработки, контекст, память, роли, правила или восстановление смысла, должен сначала получать верхнюю учётную запись.

Не начинать с Rule (правила) в:

```text
06_PROJECT_RULES
```

Не начинать с Notice (уведомления) в:

```text
08_TRACE_AND_DECISIONS/project_notices
```

Сначала:

```text
верхняя учётная запись
→ фактография
→ ссылки восстановления
→ связи с отчётом дня
→ связи с фактографической подложкой
→ спектральное разнесение
→ только потом производные отметки в 06 и 08
```

---

## 2. Human Formula / человеческая формула

```text
Сначала — узел памяти.
Потом — правило.
Потом — оповещение.
```

Если начать с Notice (уведомления) или Rule (правила), смысл может выглядеть оформленным, но не будет восстановимым.

Короткая формула:

```text
11 first.
Then 06 and 08.

Сначала 11.
Потом 06 и 08.
```

---

## 3. Why This Rule Exists / почему правило существует

Узловой сгусток часто содержит сразу несколько гармоник:

```text
decision_candidate (кандидат решения);
rule_candidate (кандидат правила);
trace_notice (уведомление трассы);
factography_anchor (фактографический якорь);
context_latch (контекстная защёлка);
obsidian_graph_node (узел графа Obsidian);
daily_trace_point (точка Дневной трассы);
future_codex_task (будущая задача Codex).
```

Если сразу разнести его по папкам `06` и `08`, можно потерять целое.

Поэтому сначала создаётся верхняя запись учёта, где сгусток удерживается как целое.

Именно по этой записи будет осуществляться восстановление смысла.

---

## 4. Required Order / обязательный порядок

### Step 1 — Upper Accounting Record / верхняя учётная запись

Создать верхнюю запись в зоне учёта архитектурных проектных решений COS:

```text
11_COS_ARCHITECTURE_PROJECT_DECISIONS
```

Тип записи:

```text
node_cluster_accounting_record
```

Эта запись должна содержать:

```text
что произошло;
почему это узловой сгусток;
какой смысл нельзя потерять;
какая Inflection Point (точка перегиба);
какая Resonance Point (резонансная точка);
какие производные элементы могут появиться;
что пока не разносить преждевременно.
```

### Step 2 — Factographic Substrate / фактографическая подложка

Внутри верхней записи или рядом с ней должны быть указаны:

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

Factography (фактография) отвечает:

```text
что реально было.
```

### Step 3 — Recovery Links / ссылки восстановления

Добавить связи, через которые потом восстанавливается смысл:

```text
Daily Register (Дневной реестр);
Daily Trace (Дневная трасса);
QA report (отчёт контроля качества);
Primary Source (первоисточник);
related rules (связанные правила);
related decisions (связанные решения);
related notices (связанные уведомления);
related Obsidian concepts (связанные концепты Obsidian);
related Context Working Set (рабочий набор контекста).
```

### Step 4 — Spectral Routing / спектральное разнесение

После верхней записи определить, какие производные элементы реально нужны:

```text
Rule (правило) → 06_PROJECT_RULES
Notice (уведомление) → 08_TRACE_AND_DECISIONS/project_notices
Decision Record (запись решения) → 11_COS_ARCHITECTURE_PROJECT_DECISIONS
Template (шаблон) → standards / templates
QA Report (отчёт контроля качества) → QA / reports
```

### Step 5 — Marks in 06 and 08 / отметки в 06 и 08

Только после верхней записи и фактографической подложки:

```text
06_PROJECT_RULES
= производное Rule (правило), если из сгустка выделен повторяемый принцип.

08_TRACE_AND_DECISIONS/project_notices
= короткое Notice (уведомление), что такой сгусток / правило / решение зафиксировано.
```

---

## 5. Forbidden Actions / запрещённые действия

Запрещено:

```text
сразу создавать Rule (правило) без верхней записи учёта;
сразу создавать Notice (уведомление) без фактографической подложки;
разрывать узловой сгусток на части до понимания его гармоник;
считать короткое Notice (уведомление) полноценным восстановительным слоем;
считать Rule (правило) источником факта;
терять связь с Daily Register (Дневным реестром);
терять связь с Daily Trace (Дневной трассой);
делать Git commit (Git-проводку) без Human Approval (человеческого одобрения).
```

---

## 6. Context Latch / контекстная защёлка

```yaml
context_latch:
  what_to_activate:
    - node cluster must be recorded as a whole before routing
    - recovery happens through the upper accounting record
    - 06 and 08 are derivative marks, not the primary memory node
  when_to_activate:
    - when a new rule, decision or notice emerges from a dense discussion
    - when a concept contains several harmonics
    - when future recovery depends on preserving the whole semantic cluster
  hold_until:
    - upper accounting record is created
    - factographic substrate is attached
    - recovery links are placed
    - 06 and 08 derivative marks are created
  release_condition:
    - node cluster is fully routed
    - QA confirms recovery-grade completeness
  forbidden_context_noise:
    - raw full thread unless needed
    - isolated notice without source
    - isolated rule without provenance
```

---

## 7. QA Subject / предмет QA

Проверить, что узловой сгусток проведён в правильном порядке:

```text
1. Есть верхняя учётная запись.
2. Есть factography (фактография).
3. Есть ссылки восстановления.
4. Есть связь с Daily Register (Дневным реестром).
5. Есть связь с Daily Trace (Дневной трассой).
6. Есть связь с primary source (первоисточником).
7. Только после этого созданы отметки в 06 и 08.
8. Статус остаётся candidate / not_canon (кандидат / не канон).
```

---

## 8. Obsidian Graph Layer / слой графа Obsidian

### Parent Document / родительский документ

```text
[[PROCESS_REGULATION_DECISION_AS_CONTEXT_LATCH_AND_NODE_CLUSTER_ACCOUNTING_FIRST_v0_2]]
```

### Related Concepts / связанные концепты

```text
[[Node Cluster]]
[[Context Latch]]
[[Spectral Routing]]
[[Recovery-grade Decision Record]]
[[Daily Register]]
[[Daily Trace]]
[[Factographic Substrate]]
[[Obsidian Graph]]
```

### Related Zones / связанные зоны

```text
[[11_COS_ARCHITECTURE_PROJECT_DECISIONS]]
[[06_PROJECT_RULES]]
[[08_TRACE_AND_DECISIONS/project_notices]]
```

### Tags / теги

```text
#ipac/cos
#process-rule
#node-cluster
#context-latch
#spectral-routing
#recovery-grade
#not-canon
```

---

## 9. Status / статус

```text
APPENDIX_A_CREATED
NODE_CLUSTER_ACCOUNTING_FIRST_RULE_CREATED
STATUS_CANDIDATE
CANON_STATUS_NOT_CANON
HUMAN_APPROVAL_REQUIRED
GIT_ACTIONS_NOT_AUTHORIZED
```
