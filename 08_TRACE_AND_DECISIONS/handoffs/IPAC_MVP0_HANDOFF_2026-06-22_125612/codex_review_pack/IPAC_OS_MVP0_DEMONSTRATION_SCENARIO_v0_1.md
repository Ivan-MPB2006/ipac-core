# IPAC_OS_MVP0_DEMONSTRATION_SCENARIO_v0_1
## MVP-0 демонстрация принципиальной реализуемости

```yaml
artifact_id: IPAC-OS-MVP0-DEMONSTRATION-SCENARIO-v0.1
artifact_type: mvp0_demonstration_scenario
status: candidate
canon_status: not_canon
date: 2026-06-21
```

# 1. Что должно быть доказано

MVP-0 должен доказать не всю IPaC OS, а минимальный операционный контур:

```text
Context Working Set → Supervisor → Visible Artifact → QA → Codex Review
```

# 2. Вход

```text
1. Локальный Obsidian/Git vault.
2. Daily Register / Trace.
3. Visible Result Review Draft.
4. System Interaction Map.
5. Codex/MCP Feasibility Matrix.
6. Boundary Conditions.
```

# 3. Процесс

```text
1. Codex читает manifest.
2. Codex открывает указанные файлы.
3. Codex проверяет статусы: candidate / not_canon / not_decided.
4. Codex проверяет, есть ли полный видимый результат.
5. Codex оценивает, можно ли автоматизировать:
   - сбор Context Working Set;
   - проверку markers;
   - запуск PowerShell checks;
   - создание report;
   - подготовку patch proposal.
6. Codex формирует Feasibility Check Report.
7. Codex формирует MVP Task Pack Proposal.
```

# 4. Критерии успеха

```text
FEASIBILITY_APPROVED if:
- Codex видит/понимает структуру пакета;
- Codex может работать с локальными файлами;
- Codex может проверить markers;
- Codex может вернуть report;
- Codex может предложить минимальный task pack;
- Codex не требует самовольного commit;
- Codex не претендует на canon authority.
```

# 5. Критерии целесообразности

```text
EXPEDIENCY_APPROVED if:
- MVP снижает ручную сборку контекста;
- ускоряет получение видимого результата;
- улучшает трассируемость;
- снижает потерю смысла между тредами/файлами/Git/Obsidian;
- полезен даже в грубом виде.
```

# 6. Fail Fast

```text
Если Codex не может читать repo / markdown / run checks,
надо сразу фиксировать FEASIBILITY_BLOCKED и не полировать документы.
```
