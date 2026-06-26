# Routing Map — Failure Mode Register STCR
## Карта размещения реестра режимов отказа STCR

```yaml
artifact_id: ROUTING-MAP-FAILURE-MODE-REGISTER-STCR-2026-06-24-v0.1
artifact_type: routing_map
status: candidate
canon_status: not_canon
created: 2026-06-24
```

---

# Primary placement (основное размещение)

```text
11_COS_ARCHITECTURE_PROJECT_DECISIONS/04_PROCESS_DECISIONS/
  FAILURE_MODE_REGISTER_SEMANTIC_THREAD_COMPACTION_REHYDRATION_candidate_v0_1.md
  APPENDIX_A_FAILURE_MODE_RESPONSE_PLAYBOOK_STCR_candidate_v0_1.md
  SEMANTIC_THREAD_COMPACTION_REHYDRATION_FAILURE_MODES_v0_1.mmd
```

---

# Review placement (размещение рассмотрения)

```text
08_TRACE_AND_DECISIONS/reviews/
  QA_FAILURE_MODE_REGISTER_STCR_2026-06-24_v0_1.md
```

---

# Resource package placement (размещение ресурсного пакета)

```text
09_SOURCE_PACKAGES/stcr_failure_mode_register/
  README_FAILURE_MODE_REGISTER_STCR_PACKAGE_v0_1.md
  RESOURCE_ENTRY_FAILURE_MODE_REGISTER_STCR_2026-06-24_v0_1.md
  ROUTING_MAP_FAILURE_MODE_REGISTER_STCR_2026-06-24_v0_1.md
  FAILURE_MODE_REGISTER_STCR_ALL_IN_ONE_2026-06-24_v0_1.md
  MANIFEST_FAILURE_MODE_REGISTER_STCR_PACKAGE_2026-06-24_v0_1.md
  SHA256SUMS_STCR_FMR_v0_1.txt
```

---

# Script placement (размещение скрипта)

```text
09_SOURCE_PACKAGES/scripts/
  PLACE_STCR_FAILURE_MODE_REGISTER_TO_VAULT_v0_1.ps1
```

---

# Git Policy (политика Git)

```text
No git add . (никакого широкого Git-добавления).
Targeted Git add (точечное Git-добавление) только после Human Approval (человеческого одобрения).
Git commit (Git-проводка) не разрешена этим пакетом.
```
