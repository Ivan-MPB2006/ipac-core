# PIVOT NOTE — 2026-06-21
## From Vision Generation to Practical IPaC Development

```yaml
artifact_id: PIVOT-NOTE-2026-06-21-VIRTUAL-TO-REAL-v0.1
artifact_type: pivot_note
date: 2026-06-21
status: candidate_record
project: IPaC
subproject: IPaC_NIR_SEMANTIC_OS
canon_status: not_canon
include_in: DAILY_TRACE_2026-06-21
```

---

# Поворотный момент

```text
Мы выходим уже не на генерацию видений,
а на формирование практической разработки.

Это переход из виртуала в реал.
```

---

# 1. Что изменилось

До 20.06.2026 основной режим был:

```text
двухмашинный агрегат Human + ChatGPT
генерирует видения, смыслы, гипотезы, рамки и артефакты.
```

20.06.2026 был создан и проверен Project Supervisor:

```text
PROJECT_SUPERVISOR_BOOT_OK
SPRINT_00_BOOT_RECONCILIATION_OK
PRIMARY_SUPERVISOR_VALIDATION_PASSED
SUPERVISOR_REENTRY_RECOVERY_GREEN
```

21.06.2026 начинается новый режим:

```text
двухмашинный агрегат формулирует задачу;
Supervisor оценивает ресурсы и формирует запрос;
мы вручную обеспечиваем контекстную подкачку;
позже эту функцию берёт Codex + VS Code.
```

---

# 2. Новая формула работы

```text
Vision → Supervisor Task → Resource Demand → Context Working Set
→ Sprint Plan → Artifact → QA → Obsidian/Git → Operational Situation Pack
→ Project Supervisor
```

---

# 3. Критическая архитектурная поправка

Supervisor без подкачки Obsidian/Git не управляет реальной оперативной обстановкой.

```text
Supervisor context window ≠ memory.
Project files ≠ живой Vault.
Live State Snapshot ≠ live state.
```

Нужен слой виртуальной памяти Supervisor:

```text
Supervisor Virtual Memory Management
```

Его функции:

```text
1. Context Demand — запрос нужного контекста под Sprint.
2. Page Selection — выбор нужных страниц из Obsidian/Git.
3. Working Set Build — сборка рабочего набора.
4. Page Fault — фиксация нехватки контекста.
5. Eviction — выгрузка нерелевантных страниц.
6. Write-back — возврат результата в Obsidian/Git.
```

---

# 4. Роль Codex + VS Code

Codex + VS Code должны стать исполнительным I/O-слоем IPaC OS:

```text
читать Obsidian;
снимать git status;
строить context packs;
готовить task packs;
создавать файлы;
снимать check;
не коммитить без approval.
```

Пока этот контур не запущен, его функции вручную выполняют Human + ChatGPT Operating Partner.

---

# 5. Первый следующий шаг

Перед запуском Conceptual OS Architect нужно получить от Supervisor:

```text
ARCH_00_RESOURCE_DEMAND_READY
```

Supervisor должен выдать:

```text
какие страницы контекста нужны;
какие внешние знания нужны;
какой минимальный working set нужен;
какие page faults есть;
какой первый безопасный Sprint для Архитектора.
```

---

# 6. Статус

```text
PIVOT_RECORDED
VISION_GENERATION_TO_PRACTICAL_DEVELOPMENT
SUPERVISOR_RESOURCE_PLANNING_MODE
MANUAL_CONTEXT_PAGING_ACTIVE
CODEX_VSCODE_I_O_LAYER_PENDING
```
