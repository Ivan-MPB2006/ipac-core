# IPaC Semantic OS — Conceptual Architecture Candidate v0.1
## IPaC смысловая ОС — концептуальный архитектурный кандидат

```yaml
artifact_id: IPAC-SEMANTIC-OS-CONCEPTUAL-ARCHITECTURE-CANDIDATE-v0.1
artifact_type: conceptual_architecture_candidate
status: candidate
canon_status: not_canon
decision_status: not_decided
target_path: 03_RESEARCH_MAP/IPAC_SEMANTIC_OS_CONCEPTUAL_ARCHITECTURE_CANDIDATE_v0_1.md
project: IPaC_NIR_SEMANTIC_OS
project_kind: NIR / научно-исследовательская работа
language_config: ru
machine_terms_policy: English term must include Russian translation in parentheses
created_from:
  - Sprint 00 — Boot Reconciliation (сверка загрузки)
  - Sprint 01 — Charter (устав)
  - Sprint 01A — Path QA (проверка пути)
  - Sprint 01B — Skeleton only (только скелет)
  - Sprint 01C — First Fill Pass (первый проход заполнения)
  - Sprint 01C-FIX — Targeted QA fixes (точечные QA-правки)
source_status:
  resource_superpack: boot_image
  live_state_snapshot: snapshot_only
  boot_validation_tests: validation_protocol
git_status_claim: not_asserted
human_approval_required_before_git_action: true
canonization_allowed: false
fill_pass: first_limited_fill
fix_pass: sprint_01c_fix
filled_sections:
  - Purpose / назначение
  - Status / статус
  - Source Basis / опора на источники
  - Factography / фактография
  - Interpretation / интерпретация
forbidden_fill_scope:
  - Architecture Candidate Overview / обзор архитектурного кандидата
  - Meaning as Operational Object / смысл как операционный объект
  - Meaning Logic Layer / слой смысло-логики
  - Hybrid Processor Node / гибридный процессорный узел
  - Dual Memory Architecture / двойная архитектура памяти
  - Supervisor / супервизор
  - Interrupt System / система прерываний
  - Save–Transfer–Restore Area / Область Сохранения — Передачи — Восстановления
  - External Resource Management / управление внешними ресурсами
  - Semantic I/O Layer / смысловой слой ввода-вывода
```

---

# 0. Guardrails / ограничители

Этот файл является conceptual architecture candidate (концептуальным архитектурным кандидатом), а не canon (каноном).

IPaC OS (IPaC смысловая ОС) удерживается как Architecture Candidate (архитектурный кандидат), не canon (канон).

Куб №1 удерживается как Architecture Candidate (архитектурный кандидат), не canon (канон).

Live Git status (живой статус Git) не утверждается.

Git commit (Git-проводка) не предлагается.

Все сильные формулы должны оставаться candidate (кандидатами) до review (рассмотрения), decision (решения) и отдельного Human Approval (человеческого одобрения).

Sprint 01C (спринт 01C) заполняет только разделы 1–5. Архитектурные разделы 6–15 намеренно остаются placeholders (местами будущего заполнения).

---

# 1. Purpose / назначение

Этот artifact (артефакт) предназначен для подготовки первого conceptual architecture candidate (концептуального архитектурного кандидата) IPaC OS (IPaC смысловой ОС).

Его назначение — зафиксировать рабочую рамку, в которой IPaC OS (IPaC смысловая ОС) рассматривается как candidate (кандидат) на операционную систему управления смыслами, но не как canon (канон), не как принятое architecture decision (архитектурное решение) и не как завершённая архитектура.

В этом файле IPaC OS (IPaC смысловая ОС) должна рассматриваться как исследовательский architecture candidate (архитектурный кандидат), пригодный для дальнейших этапов:

```text
candidate (кандидат)
→ review (рассмотрение)
→ refinement (уточнение)
→ decision candidate (кандидат на решение)
→ human decision (человеческое решение)
→ possible canonization (возможная канонизация)
```

Candidate formula (кандидатная формула):

```text
IPaC OS (IPaC смысловая ОС) может быть рассмотрена как операционная система
вычисления, операций, сохранения, маршрутизации, передачи,
восстановления и развития смыслов.
```

Статус этой формулы: interpretation / candidate (интерпретация / кандидат), не canon (канон).

---

# 2. Status / статус

Текущий статус файла:

```yaml
artifact_type: conceptual_architecture_candidate
status: candidate
canon_status: not_canon
decision_status: not_decided
```

Текущий статус IPaC OS (IPaC смысловой ОС) в рамках этого файла:

```text
IPaC OS (IPaC смысловая ОС) = Architecture Candidate (архитектурный кандидат).
IPaC OS (IPaC смысловая ОС) ≠ canon (канон).
IPaC OS (IPaC смысловая ОС) ≠ final architecture (финальная архитектура).
IPaC OS (IPaC смысловая ОС) ≠ approved decision (утверждённое решение).
```

Текущий статус Куба №1:

```text
Куб №1 = High-Potential Conceptual Cluster (смысловой сгусток высокого потенциала).
Куб №1 = Architecture Candidate (архитектурный кандидат).
Куб №1 ≠ canon (канон).
Куб №1 ≠ completed architecture (завершённая архитектура).
```

Текущий статус этого first fill pass (первого прохода заполнения):

```text
first_limited_fill (первый ограниченный проход заполнения)
без заполнения архитектурных разделов
без canonization (канонизации)
без Git commit (Git-проводки)
без утверждения live Git status (живого статуса Git)
```

---

# 3. Source Basis / опора на источники

Этот artifact (артефакт) опирается на несколько source layers (источниковых слоёв).

Каждый source layer (источниковый слой) имеет ограниченный статус использования: он может быть factography (фактографией), interpretation basis (основанием интерпретации), validation protocol (проверочным протоколом) или operational provenance (операционным происхождением), но не превращает IPaC OS (IPaC смысловую ОС) в canon (канон).

## 3.1 Source Layer Map / карта источниковых слоёв

| Source layer (источниковый слой) | Что берётся | Статус использования | Граница |
|---|---|---|---|
| Resource Superpack (ресурсный суперпакет) | Исходная рамка НИР, статус IPaC OS (IPaC смысловой ОС) как Architecture Candidate (архитектурный кандидат), состав Куба №1, ключевые candidate elements (элементы-кандидаты) | source basis (опора на источники) | Не является canon proof (доказательством канона) |
| Live State Snapshot (снимок живого состояния) | Последняя известная структура Vault (хранилища), snapshot-time Git state (состояние Git на момент снимка), top-level tree (верхнее дерево), untracked files (неотслеживаемые файлы) на момент snapshot (снимка) | factography (фактография) snapshot-time (на момент снимка) | Не является live Git status (живым статусом Git) |
| Boot Validation Tests (проверочные тесты загрузки) | Критерии проверки Supervisor (супервизора): различение factography (фактографии), interpretation (интерпретации), decision (решения), canon (канона); запрет hallucinating live state (выдумывания живого состояния) | validation protocol (проверочный протокол) | Не добавляет архитектурного содержания |
| Sprint 00 — Boot Reconciliation (сверка загрузки) | Подтверждение согласования Resource Superpack, Live State Snapshot, Boot Validation Tests | operational provenance (операционное происхождение) | Не является canon decision (каноническим решением) |
| Sprint 01 — Charter (устав) | Objective (цель), scope (границы), expected artifact (ожидаемый артефакт), forbidden moves (запрещённые действия) | planning provenance (плановое происхождение) | Не является полным architecture artifact (архитектурным артефактом) |
| Sprint 01A — Path QA (проверка пути) | Проверка несогласованности `01_CANON_AND_POSITIONING/...` и выбор `03_RESEARCH_MAP/...` как более безопасного candidate path (пути кандидата) | operational record (операционная запись) | Выбор пути не является canonization (канонизацией) |
| Sprint 01B — Skeleton only (только скелет) | Metadata (метаданные), guardrails (ограничители), placeholders (места будущего заполнения), структура разделов | draft provenance (происхождение черновика) | Архитектурное содержание не заполнено |
| Sprint 01C — First Fill Pass (первый проход заполнения) | Ограниченное заполнение только разделов Purpose, Status, Source Basis, Factography, Interpretation | limited fill provenance (происхождение ограниченного заполнения) | Разделы 6–15 не заполняются |
| Sprint 01C-QA — QA of First Fill Pass (контроль качества первого прохода) | Выявление замечаний: Source Basis требует provenance, Path QA должен быть operational record, перед commit нужен live/control check | qa provenance (происхождение QA) | Не даёт approval на Git commit |
| Sprint 01C-FIX — targeted QA fixes (точечные QA-правки) | Точечное усиление Source Basis, маркировка Path QA как operational record, добавление Local Placement Control и QA status block | fix provenance (происхождение правок) | Не заполняет разделы 6–15 |

## 3.2 What is taken from Resource Superpack / что берётся из ресурсного суперпакета

Из Resource Superpack (ресурсного суперпакета) берётся только исходная candidate frame (кандидатная рамка):

```text
IPaC OS (IPaC смысловая ОС) рассматривается как Architecture Candidate
(архитектурный кандидат), not canon (не канон).
```

Также берётся перечень candidate elements (элементов-кандидатов), подлежащих будущей разработке:

- Meaning Logic Layer (слой смысло-логики);
- Hybrid Processor Node (гибридный процессорный узел);
- Dual Memory Architecture (двойная архитектура памяти);
- Supervisor (супервизор);
- Interrupt System (система прерываний);
- Register Save Block (блок сохранения регистров);
- Save–Transfer–Restore Area (Область Сохранения — Передачи — Восстановления);
- External Resource Management (управление внешними ресурсами);
- Semantic I/O Layer (смысловой слой ввода-вывода).

Boundary (граница):

```text
Наличие этих элементов в Resource Superpack не делает их canon (каноном).
В данном файле они удерживаются как candidate elements (элементы-кандидаты).
```

## 3.3 What is taken from Live State Snapshot / что берётся из снимка живого состояния

Из Live State Snapshot (снимка живого состояния) берётся только snapshot-time factography (фактография на момент снимка):

- известная на момент snapshot (снимка) структура Vault (хранилища);
- наличие `03_RESEARCH_MAP` в top-level tree (верхнем дереве);
- известный на момент snapshot (снимка) Git state (состояние Git);
- перечень untracked files (неотслеживаемых файлов) на момент snapshot (снимка);
- отсутствие подтверждения live Git status (живого статуса Git) после snapshot (снимка).

Boundary (граница):

```text
Live State Snapshot (снимок живого состояния) не является live state (живым состоянием).
Этот файл не утверждает live Git status (живой статус Git).
```

## 3.4 What is taken from Boot Validation Tests / что берётся из проверочных тестов загрузки

Из Boot Validation Tests (проверочных тестов загрузки) берётся validation discipline (дисциплина проверки):

- различать factography (фактографию), interpretation (интерпретацию), decision (решение), canon (канон);
- не считать Architecture Candidate (архитектурный кандидат) canon (каноном);
- не выдумывать live Git status (живой статус Git);
- не смешивать Daily Register / Ship Log, Daily Trace, Project Trace, canon, rules, research, tools.

Boundary (граница):

```text
Boot Validation Tests задают контрольную рамку,
но не добавляют canon content (каноническое содержание).
```

## 3.5 What is taken from Sprint chain / что берётся из цепочки спринтов

Из Sprint 00 берётся подтверждение boot reconciliation (сверки загрузки) и рабочий режим Project Supervisor.

Из Sprint 01 берётся charter (устав) будущего conceptual architecture candidate (концептуального архитектурного кандидата).

Из Sprint 01A берётся Path QA (проверка пути): `01_CANON_AND_POSITIONING/...` не подтверждён snapshot-visible structure (структурой, видимой в снимке), поэтому выбран `03_RESEARCH_MAP/...`.

Из Sprint 01B берётся skeleton (скелет), metadata (метаданные), guardrails (ограничители), placeholders (места будущего заполнения).

Из Sprint 01C берётся first_limited_fill (первый ограниченный проход заполнения), только разделы 1–5.

Из Sprint 01C-QA берутся QA findings (замечания контроля качества): Source Basis требует provenance (происхождения), Path QA должен быть operational record (операционная запись), commit approval (одобрение Git-проводки) пока не выдан.

Из Sprint 01C-FIX берутся targeted QA fixes (точечные QA-правки): усиление Source Basis, маркировка Path QA как operational record, добавление Local Placement Control и QA status block.

## 3.6 Interpretation Boundary / граница интерпретации

Следующие положения являются interpretation (интерпретацией), а не factography (фактографией):

- IPaC OS (IPaC смысловая ОС) может рассматриваться как операционная система управления смыслами.
- Событие 17.06.2026 может рассматриваться как phase shift (фазовый сдвиг).
- Куб №1 может рассматриваться как High-Potential Conceptual Cluster (смысловой сгусток высокого потенциала).
- Размещение в `03_RESEARCH_MAP` снижает риск premature canonization (преждевременной канонизации).

Boundary (граница):

```text
Interpretation (интерпретация) не равна decision (решению).
Interpretation (интерпретация) не равна canon (канону).
```

# 4. Factography / фактография

В этом разделе фиксируется только factography (фактография): то, что было явно загружено, заявлено, указано в snapshot (снимке) или зафиксировано как статус.

## 4.1 Загруженные ресурсы

В Project (проекте) используются следующие загруженные ресурсы:

1. IPaC NIR Semantic OS Resource Superpack (ресурсный суперпакет).
2. IPaC Project Live State Snapshot (снимок живого состояния).
3. IPaC Project Supervisor Boot Validation Tests (проверочные тесты загрузки супервизора).

Фактографический статус: загруженные resource layers (ресурсные слои) для boot / reconciliation (загрузки / сверки).

## 4.2 Статус Resource Superpack / ресурсного суперпакета

В Resource Superpack (ресурсном суперпакете) IPaC OS (IPaC смысловая ОС) задана как Architecture Candidate (архитектурный кандидат), а не canon (канон).

Фактографически зафиксированы следующие рабочие элементы:

- IPaC OS (IPaC смысловая ОС);
- Meaning Logic Layer (слой смысло-логики);
- Hybrid Processor Node (гибридный процессорный узел);
- Dual Memory Architecture (двойная архитектура памяти);
- Supervisor (супервизор);
- Interrupt System (система прерываний);
- Register Save Block (блок сохранения регистров);
- Save–Transfer–Restore Area (Область Сохранения — Передачи — Восстановления);
- External Resource Management (управление внешними ресурсами);
- Semantic I/O Layer (смысловой слой ввода-вывода).

Фактографическое ограничение: наличие этих элементов в Resource Superpack (ресурсном суперпакете) не делает их canon (каноном).

## 4.3 Статус Live State Snapshot / снимка живого состояния

Live State Snapshot (снимок живого состояния) фиксирует состояние Obsidian (Obsidian-хранилища) + Git (системы контроля версий Git) на момент snapshot (снимка).

Фактографически известно по snapshot (снимку):

- working_directory указан в snapshot (снимке);
- current branch (текущая ветка) на момент snapshot (снимка): main;
- remote origin (удалённый origin) указан в snapshot (снимке);
- untracked files (неотслеживаемые файлы) на момент snapshot (снимка) были перечислены;
- top-level Vault tree (верхнее дерево Vault / хранилища) было перечислено.

Фактографическое ограничение:

```text
Я не утверждаю live Git status (живой статус Git).
Я не утверждаю текущее состояние после snapshot (снимка).
```

## 4.4 Path QA / проверка пути as operational record / как операционная запись

В Sprint 01A — Path QA (спринте 01A — проверке пути) был проверен proposed path (предложенный путь):

```text
01_CANON_AND_POSITIONING/IPAC_SEMANTIC_OS_CONCEPTUAL_ARCHITECTURE_CANDIDATE_v0_1.md
```

По Live State Snapshot (снимку живого состояния) этот top-level path (верхний путь) не был подтверждён как существующая директория Vault (хранилища).

В Sprint 01A (спринте 01A) был выбран более безопасный working target path (рабочий целевой путь):

```text
03_RESEARCH_MAP/IPAC_SEMANTIC_OS_CONCEPTUAL_ARCHITECTURE_CANDIDATE_v0_1.md
```

Статус этой записи:

```text
operational record (операционная запись) из Sprint 01A — Path QA (проверки пути);
не внешний факт Vault (хранилища) сам по себе;
не canonization (канонизация);
не architecture decision (архитектурное решение);
не утверждение live Git status (живого статуса Git).
```

Rationale (обоснование):

```text
03_RESEARCH_MAP был видим в snapshot-time top-level tree (верхнем дереве на момент снимка).
Размещение candidate artifact (артефакта-кандидата) в research zone (исследовательской зоне)
снижает риск premature canonization (преждевременной канонизации).
```

## 4.5 Текущий статус заполнения

Текущий first fill pass (первый проход заполнения) заполняет только разделы:

- Purpose (назначение);
- Status (статус);
- Source Basis (опора на источники);
- Factography (фактография);
- Interpretation (интерпретация).

Следующие разделы намеренно не заполняются в этом проходе:

- Architecture Candidate Overview (обзор архитектурного кандидата);
- Meaning as Operational Object (смысл как операционный объект);
- Meaning Logic Layer (слой смысло-логики);
- Hybrid Processor Node (гибридный процессорный узел);
- Dual Memory Architecture (двойная архитектура памяти);
- Supervisor (супервизор);
- Interrupt System (система прерываний);
- Save–Transfer–Restore Area (Область Сохранения — Передачи — Восстановления);
- External Resource Management (управление внешними ресурсами);
- Semantic I/O Layer (смысловой слой ввода-вывода).


## 4.6 Local Placement Control / локальная контролька размещения

Дополнительная фактография из локальной контрольки размещения:

```yaml
target_file_exists: true
target_path: 03_RESEARCH_MAP/IPAC_SEMANTIC_OS_CONCEPTUAL_ARCHITECTURE_CANDIDATE_v0_1.md
target_length_bytes: 34094
git_status_at_control_check:
  file_status: untracked
  path: 03_RESEARCH_MAP/IPAC_SEMANTIC_OS_CONCEPTUAL_ARCHITECTURE_CANDIDATE_v0_1.md
markers_confirmed:
  canon_status: not_canon
  git_status_claim: not_asserted
  fill_pass: first_limited_fill
  sprint_marker: SPRINT_01C_FIRST_FILL_READY
```

Boundary (граница):

```text
Эта запись фиксирует только состояние на момент локальной контрольки.
Она не утверждает live Git status (живой статус Git) после момента контрольки.
Она не предлагает Git commit (Git-проводку).
Она не меняет статус candidate (кандидат), not_canon (не канон), not_decided (решение не принято).
```

---

# 5. Interpretation / интерпретация

Этот раздел содержит interpretation (интерпретацию), а не factography (фактографию), decision (решение) или canon (канон).

## 5.1 IPaC OS / IPaC смысловая ОС как кандидатная рамка

Interpretation / candidate (интерпретация / кандидат):

```text
IPaC OS (IPaC смысловая ОС) может рассматриваться как Architecture Candidate
(архитектурный кандидат) для операционной системы управления смыслами.
```

Эта формула не является canon (каноном). Она используется как исследовательская рамка для дальнейшей НИР.

## 5.2 Смысловой объект работы

Interpretation / candidate (интерпретация / кандидат):

```text
Ключевой объект IPaC OS (IPaC смысловой ОС) — Meaning (смысл),
а не только word (слово), phrase (фраза), text (текст),
document (документ) или data (данные).
```

Эта формула требует дальнейшей разработки в разделе Meaning as Operational Object (смысл как операционный объект), но этот раздел в Sprint 01C (спринте 01C) не заполняется.

## 5.3 Куб №1 как смысловой сгусток

Interpretation / candidate (интерпретация / кандидат):

```text
Куб №1 может рассматриваться как High-Potential Conceptual Cluster
(смысловой сгусток высокого потенциала), из которого может быть развёрнут
conceptual architecture candidate (концептуальный архитектурный кандидат).
```

Эта формула не означает canonization (канонизацию) Куба №1.

## 5.4 Фазовый переход 17.06.2026

Interpretation (интерпретация):

```text
Событие 17.06.2026 может рассматриваться как phase shift (фазовый сдвиг)
в понимании IPaC: от дисциплины информационного производства
к кандидатной рамке смысловой операционной системы.
```

Ограничение: это interpretation (интерпретация), а не decision (решение) и не canon (канон).

## 5.5 Размещение в 03_RESEARCH_MAP

Interpretation / operational choice (интерпретация / операционный выбор):

```text
Размещение файла в 03_RESEARCH_MAP снижает риск premature canonization
(преждевременной канонизации), потому что помещает artifact (артефакт)
в исследовательскую, а не каноническую зону Vault (хранилища).
```

Ограничение: это не утверждение live Vault state (живого состояния хранилища), а решение, принятое на основе последнего известного Live State Snapshot (снимка живого состояния).

## 5.6 Граница текущего прохода

Interpretation (интерпретация):

```text
Sprint 01C (спринт 01C) должен укрепить дисциплину статусов,
а не ускорить архитектурную канонизацию.
```

Поэтому текущий проход намеренно не заполняет архитектурные разделы.

---

# 6. Architecture Candidate Overview / обзор архитектурного кандидата

Placeholder (место будущего заполнения).

Позднее кратко описать IPaC OS (IPaC смысловую ОС) как candidate architecture (архитектуру-кандидат):

- объект операций;
- вычислительная среда;
- основные слои;
- память;
- supervisor model (модель супервизора);
- interrupt model (модель прерываний);
- external resource model (модель внешних ресурсов).

Guardrail (ограничитель): не писать как утверждённую архитектуру. Писать как conceptual candidate (концептуальный кандидат).

---

# 7. Meaning as Operational Object / смысл как операционный объект

Placeholder (место будущего заполнения).

Позднее раскрыть:

- Meaning (смысл) не равен word (слову), phrase (фразе), text (тексту) или number (числу);
- Meaning (смысл) может иметь real component (реальную составляющую);
- Meaning (смысл) может иметь imaginary / emergent component (мнимую / эмержентную составляющую);
- Meaning (смысл) может быть объектом операций: фиксации, маршрутизации, проверки, восстановления, развития.

---

# 8. Meaning Logic Layer / слой смысло-логики

Placeholder (место будущего заполнения).

Позднее описать Meaning Logic Layer (слой смысло-логики):

- его отличие от Data Logic (логики данных);
- его отличие от Business Logic (бизнес-логики);
- какие события он обрабатывает;
- какие смысловые переходы он должен фиксировать;
- как он связан с Daily Trace (Дневной трассой) и Project Trace (трассой проекта).

---

# 9. Hybrid Processor Node / гибридный процессорный узел

Placeholder (место будущего заполнения).

Позднее описать Hybrid Processor Node (гибридный процессорный узел):

- Human Intelligence + Silicon Intelligence (человеческий интеллект + кремниевый интеллект);
- почему это не простая схема “человек — машина”;
- какие функции удерживает человеческий интеллект;
- какие функции усиливает кремниевый интеллект;
- как возникает совместное смысловое вычисление.

---

# 10. Dual Memory Architecture / двойная архитектура памяти

Placeholder (место будущего заполнения).

Позднее описать Dual Memory Architecture (двойную архитектуру памяти):

- Git (система контроля версий Git) как фиксирующе-храповиковая память;
- Obsidian (Obsidian-хранилище) как ассоциативно-семантическая память;
- почему одного Git (Git) недостаточно;
- почему одного Obsidian (Obsidian) недостаточно;
- как связка Git + Obsidian (Git + Obsidian) поддерживает Meaning Lifecycle (жизненный цикл смысла).

---

# 11. Supervisor / супервизор

Placeholder (место будущего заполнения).

Позднее описать Supervisor (супервизор):

- Central Project (Центральный Project) как Supervisor (супервизор);
- удержание карты НИР;
- контроль Project Federation (федерации проектов);
- приём Daily Delta (суточной дельты);
- контроль Project Trace (трассы проекта);
- разделение НИР, НИОКР, MVP (минимально жизнеспособного продукта) и Codex/MCP (Кодекс / MCP) контуров.

---

# 12. Interrupt System / система прерываний

Placeholder (место будущего заполнения).

Позднее описать Interrupt System (систему прерываний):

- безопасное переключение между тредами;
- безопасное переключение между Project (проектами);
- сохранение состояния перед переключением;
- восстановление состояния после переключения;
- связь с Register Save Block (блоком сохранения регистров);
- связь с Save–Transfer–Restore Area (Областью Сохранения — Передачи — Восстановления).

---

# 13. Save–Transfer–Restore Area / Область Сохранения — Передачи — Восстановления

Placeholder (место будущего заполнения).

Позднее описать:

- отличие Registers (регистров) от Save–Transfer–Restore Area (Области Сохранения — Передачи — Восстановления);
- что должно сохраняться;
- что должно передаваться;
- что должно восстанавливаться;
- как это поддерживает ротацию чатов;
- как это поддерживает Project Federation (федерацию проектов).

---

# 14. External Resource Management / управление внешними ресурсами

Placeholder (место будущего заполнения).

Позднее описать External Resource Management (управление внешними ресурсами):

- роль Codex + MCP (Кодекс + MCP);
- почему Codex + MCP (Кодекс + MCP) не являются главным интеллектом;
- почему Codex + MCP (Кодекс + MCP) не являются памятью;
- какие внешние ресурсы обслуживаются;
- как результаты внешних действий возвращаются в IPaC OS (IPaC смысловую ОС).

---

# 15. Semantic I/O Layer / смысловой слой ввода-вывода

Placeholder (место будущего заполнения).

Позднее описать Semantic I/O Layer (смысловой слой ввода-вывода):

- какие входы принимает IPaC OS (IPaC смысловая ОС);
- какие выходы она производит;
- как события превращаются в artifacts (артефакты);
- как artifacts (артефакты) переходят в review (рассмотрение);
- как review (рассмотрение) может привести к decision (решению).

---

# 16. Open Questions / открытые вопросы

Placeholder (место будущего заполнения).

Список вопросов для разработки:

1. Что является минимальной операцией над Meaning (смыслом)?
2. Как отличить Meaning Logic (смысло-логику) от Business Logic (бизнес-логики)?
3. Какие события должны вызывать Interrupt System (систему прерываний)?
4. Какой минимальный состав Save–Transfer–Restore Area (Области Сохранения — Передачи — Восстановления)?
5. Какой критерий готовности нужен для перехода от candidate (кандидата) к review (рассмотрению)?
6. Какие элементы Куба №1 являются ядром, а какие — расширяемыми гипотезами?

---

# 17. Acceptance Criteria / критерии приёмки

Placeholder (место будущего заполнения).

Файл может быть принят как candidate artifact (артефакт-кандидат), если:

- явно указан статус candidate (кандидат);
- явно указан canon_status: not_canon (не канон);
- IPaC OS (IPaC смысловая ОС) не объявлена canon (каноном);
- Куб №1 не объявлен canon (каноном);
- factography (фактография), interpretation (интерпретация), decision (решение), canon (канон) разделены;
- все English terms (английские термины) имеют русский перевод в скобках;
- все сильные формулы имеют provenance (происхождение) или помечены как hypothesis (гипотеза);
- отсутствует утверждение live Git status (живого статуса Git).

---

# 18. Forbidden Moves / запрещённые действия

1. Не объявлять IPaC OS (IPaC смысловую ОС) canon (каноном).
2. Не объявлять Куб №1 canon (каноном).
3. Не писать архитектуру как окончательно принятую.
4. Не смешивать factography (фактографию), interpretation (интерпретацию), decision (решение), canon (канон).
5. Не утверждать live Git status (живой статус Git).
6. Не предлагать Git commit (Git-проводку).
7. Не добавлять thread_exports (экспорты тредов) без QA (контроля качества).
8. Не редуцировать IPaC (IPaC) к prompt engineering (промпт-инжинирингу), RAG (генерации с поисковым дополнением), wiki (вики), Obsidian vault (хранилищу Obsidian), software engineering (инженерии ПО) или AI toolchain (цепочке AI-инструментов).

---

# 19. Promotion Path / путь продвижения

Placeholder (место будущего заполнения).

```text
candidate (кандидат)
→ review (рассмотрение)
→ refinement (уточнение)
→ decision candidate (кандидат на решение)
→ human decision (человеческое решение)
→ possible canonization (возможная канонизация)
```

Boundary (граница):

- Этот файл находится только на стадии candidate (кандидат).
- Переход к canon (канону) запрещён без отдельного human decision (человеческого решения).
- Git action (Git-действие) находится вне границ этого first fill pass (первого прохода заполнения).

---

# 20. Next Action / следующий шаг

Следующий шаг: провести QA (проверку качества) заполненных разделов 1–5 перед любым расширением scope (границ).

После QA возможен отдельный Sprint 01D (спринт 01D) для first fill pass (первого прохода заполнения) раздела 6 — Architecture Candidate Overview (обзор архитектурного кандидата), но только после Human Approval (человеческого одобрения).

---

# 21. Change Log / журнал изменений

```text
v0.1 — skeleton only (только скелет);
архитектурное содержание не заполнено;
canonization (канонизация) запрещена.

v0.1-first-fill — first limited fill (первый ограниченный проход заполнения);
заполнены только разделы 1–5;
архитектурные разделы 6–15 не заполнены;
live Git status не утверждался;
Git action не предлагался.
```

---

# 22. Project Supervisor State / состояние супервизора проекта

```yaml
active_focus: Sprint 01C (спринт 01C) — first fill pass только для разделов 1–5
current_artifact: ограниченное заполнение 03_RESEARCH_MAP/IPAC_SEMANTIC_OS_CONCEPTUAL_ARCHITECTURE_CANDIDATE_v0_1.md
open_debts:
  - дальнейшее заполнение архитектурных разделов только после отдельного разрешения
  - QA (контроль качества) provenance (происхождения)
  - сохранение границы candidate (кандидат) / canon (канон)
next_recommended_action: провести QA заполненных разделов перед любым расширением scope
risk_of_premature_canonization: низкий в рамках этого прохода
```

```text
SPRINT_01C_FIRST_FILL_READY
```

---

# 23. Sprint 01C-FIX QA Status / статус QA-правок Sprint 01C-FIX

```yaml
sprint: SPRINT_01C_FIX
fix_type: targeted_qa_fixes_only
target_file: 03_RESEARCH_MAP/IPAC_SEMANTIC_OS_CONCEPTUAL_ARCHITECTURE_CANDIDATE_v0_1.md
changed_sections:
  - Source Basis / опора на источники
  - Factography / фактография
  - QA status block / блок статуса QA
unchanged_statuses:
  artifact_type: conceptual_architecture_candidate
  status: candidate
  canon_status: not_canon
  decision_status: not_decided
architecture_sections_6_15_filled: false
ipac_os_canonized: false
cube_1_canonized: false
git_commit_proposed: false
live_git_status_asserted_after_control_check: false
human_approval_required_before_git_action: true
status: SPRINT_01C_FIX_READY
```

```text
SPRINT_01C_FIX_READY
```
