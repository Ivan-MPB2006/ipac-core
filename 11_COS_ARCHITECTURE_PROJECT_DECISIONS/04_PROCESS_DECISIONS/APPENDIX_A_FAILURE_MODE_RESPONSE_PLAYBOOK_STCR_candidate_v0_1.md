# Appendix A — Failure Mode Response Playbook
## Приложение A — сценарии реагирования на режимы отказа

```yaml
artifact_id: APPENDIX-A-FAILURE-MODE-RESPONSE-PLAYBOOK-STCR-2026-06-24-v0.1
artifact_type: appendix_candidate / response_playbook
status: candidate
canon_status: not_canon
created: 2026-06-24
```

---

# 1. Назначение

Playbook (сценарий реагирования) задаёт практические команды Supervisor (супервизора) при обнаружении failure mode (режима отказа).

---

# 2. Universal Response Loop (универсальный контур реагирования)

```text
1. Detect (обнаружить)
2. Name (назвать)
3. Classify (классифицировать)
4. Freeze risky action (заморозить рискованное действие)
5. Preserve evidence (сохранить свидетельства)
6. Correct or rollback (исправить или откатить)
7. Update register (обновить реестр)
8. Return to Mainline (вернуться к магистрали)
```

---

# 3. Emergency Commands (аварийные команды)

```text
STATUS_COLLAPSE_DETECTED:
  Stop promotion (остановить повышение статуса).
  Restore candidate (кандидат) / not_canon (не канон).
  Request Human Architect Review (рассмотрение человеческим архитектором).

THREAD_SPRAWL_SHOCK_DETECTED:
  Stop branch expansion (остановить разворачивание веток).
  Capture resonance points (зафиксировать резонансные точки).
  Prepare Scrum Boundary (подготовить границу скрама).
  Create Rehydration Brief (создать бриф повторного развёртывания).

BRANCH_HIJACK_DETECTED:
  Name Branch (назвать ветку).
  Park Branch (припарковать ветку).
  Return to Mainline (вернуться к магистрали).

FALSE_RESONANCE_DETECTED:
  Demote page from required to optional (понизить страницу из обязательной в дополнительную).
  Add forbidden noise marker (добавить маркер запрещённого шума).
  Re-run Context Paging Check (повторить проверку контекстной подкачки).

REHYDRATION_FAILURE_DETECTED:
  Stop continuation (остановить продолжение).
  Audit required pages (проверить обязательные страницы).
  Rebuild Rehydration Brief (пересобрать бриф повторного развёртывания).
```

---

# 4. Human Approval Boundaries (границы человеческого одобрения)

```text
Approval to place (одобрение размещения)
  не равно approval to Git add (одобрению Git-добавления).

Approval to Git add (одобрение Git-добавления)
  не равно approval to Git commit (одобрению Git-проводки).

Approval to use as candidate (одобрение использования как кандидата)
  не равно canonization (канонизации).

Canonization (канонизация)
  только отдельным Human Decision (человеческим решением).
```
