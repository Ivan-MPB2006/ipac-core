# Resource Entry — Failure Mode Register STCR
## Ресурсная запись реестра режимов отказа STCR

```yaml
resource_object_name: IPAC_FAILURE_MODE_REGISTER_STCR_PACKAGE_2026-06-24_v0_1
status: candidate
canon_status: not_canon
resource_type: failure_mode_register_package
project: IPaC_NIR_SEMANTIC_OS
created: 2026-06-24
main_file: FAILURE_MODE_REGISTER_SEMANTIC_THREAD_COMPACTION_REHYDRATION_candidate_v0_1.md
all_in_one_file: FAILURE_MODE_REGISTER_STCR_ALL_IN_ONE_2026-06-24_v0_1.md
git_commit_authorized: false
human_approval_required_for_git_commit: true
```

---

# Назначение

Resource Entry (ресурсная запись) описывает Failure Mode Register (реестр режимов отказа) для подсистемы Semantic Thread Compaction and Rehydration (смысловой свёртки треда и повторного развёртывания).

---

# Использовать когда

```text
- появляется риск Summary Drift (дрейфа в краткий пересказ);
- смешиваются статусы candidate (кандидат), decision (решение), canon (канон);
- Thread (тред) резко тормозится после накопления;
- Context Paging (контекстная подкачка) подкачивает слишком много или слишком мало;
- Rehydration (повторное развёртывание) не восстанавливает рабочую способность;
- боковая Branch (ветка) захватывает Mainline (магистраль).
```
