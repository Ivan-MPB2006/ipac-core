# CODEX_BOUNDARY_CONDITIONS_v0_1
## Границы Codex в IPaC OS MVP-0

```yaml
artifact_id: CODEX-BOUNDARY-CONDITIONS-v0.1
artifact_type: boundary_conditions
status: candidate
canon_status: not_canon
date: 2026-06-21
```

# 1. Разрешено

Codex может:

```text
1. Читать manifest и review pack.
2. Читать локальные markdown-файлы в разрешённой зоне.
3. Проверять markers и статусы.
4. Запускать read-only или safe check scripts.
5. Формировать check report.
6. Формировать patch proposal.
7. Предлагать MVP task split.
```

# 2. Запрещено

Codex не может:

```text
1. Делать git add / commit / push.
2. Канонизировать IPaC OS.
3. Канонизировать Куб №1.
4. Самостоятельно менять Project Instructions.
5. Самостоятельно менять Project Resources.
6. Переписывать architecture core.
7. Заполнять разделы 6–15 без отдельного Task Pack.
8. Утверждать live Git status без свежей контрольки.
9. Расширять scope.
10. Подменять Human Architect.
```

# 3. Required final status

Каждый ответ Codex должен заканчивать статусом:

```text
CODEX_REVIEW_READY
```

или:

```text
CODEX_REVIEW_BLOCKED
```

с перечнем блокеров.
