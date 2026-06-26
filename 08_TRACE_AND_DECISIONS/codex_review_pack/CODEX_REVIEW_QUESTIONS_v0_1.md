# CODEX_REVIEW_QUESTIONS_v0_1
## Вопросы к Codex для проверки MVP-0

```yaml
artifact_id: CODEX-REVIEW-QUESTIONS-v0.1
artifact_type: review_questions
status: candidate
canon_status: not_canon
date: 2026-06-21
```

# A. Принципиальная реализуемость

1. Можешь ли ты прочитать этот пакет без дополнительных объяснений?
2. Можешь ли ты открыть указанные markdown-файлы локального Vault/repo?
3. Можешь ли ты проверить markers: candidate / not_canon / not_decided / NO_COMMIT?
4. Можешь ли ты запустить PowerShell check script без изменения repo?
5. Можешь ли ты вернуть check report, а не выполнять commit?
6. Можешь ли ты подготовить patch proposal только в разрешённых файлах?
7. Какие MCP servers нужны минимально: filesystem, git/github, shell, docs?
8. Где самый вероятный технический блокер?

# B. Принципиальная целесообразность

9. Снижает ли такой MVP ручную нагрузку на Human Architect?
10. Ускоряет ли он получение видимого результата?
11. Снижает ли риск потери контекста между тредами, файлами, Obsidian и Git?
12. Даёт ли он отчуждаемый комплексный результат?
13. Какие части процесса лишние для MVP-0?
14. Какие 3 действия надо автоматизировать первыми?

# C. Требуемый ответ Codex

```text
1. Feasibility verdict: APPROVED / BLOCKED / PARTIAL.
2. Expediency verdict: APPROVED / BLOCKED / PARTIAL.
3. Minimal implementation path.
4. Required MCP/tool setup.
5. Risks.
6. MVP Task Pack proposal.
```
