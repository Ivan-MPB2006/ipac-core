# MANIFEST — Failure Mode Register STCR Package v0.1
## Манифест пакета реестра режимов отказа STCR

```yaml
package_name: IPAC_FAILURE_MODE_REGISTER_STCR_PACKAGE_2026-06-24_v0_1
package_type: failure_mode_register_package
status: candidate
canon_status: not_canon
created: 2026-06-24
short_code: STCR_FMR
git_commit_authorized: false
human_approval_required_for_git_commit: true
```

# Состав

```text
README_FAILURE_MODE_REGISTER_STCR_PACKAGE_v0_1.md
FAILURE_MODE_REGISTER_SEMANTIC_THREAD_COMPACTION_REHYDRATION_candidate_v0_1.md
APPENDIX_A_FAILURE_MODE_RESPONSE_PLAYBOOK_STCR_candidate_v0_1.md
SEMANTIC_THREAD_COMPACTION_REHYDRATION_FAILURE_MODES_v0_1.mmd
QA_FAILURE_MODE_REGISTER_STCR_2026-06-24_v0_1.md
ROUTING_MAP_FAILURE_MODE_REGISTER_STCR_2026-06-24_v0_1.md
RESOURCE_ENTRY_FAILURE_MODE_REGISTER_STCR_2026-06-24_v0_1.md
FAILURE_MODE_REGISTER_STCR_ALL_IN_ONE_2026-06-24_v0_1.md
PLACE_STCR_FAILURE_MODE_REGISTER_TO_VAULT_v0_1.ps1
SHA256SUMS_STCR_FMR_v0_1.txt
```

# Placement (размещение)

```text
11_COS_ARCHITECTURE_PROJECT_DECISIONS/04_PROCESS_DECISIONS/
08_TRACE_AND_DECISIONS/reviews/
09_SOURCE_PACKAGES/stcr_failure_mode_register/
09_SOURCE_PACKAGES/scripts/
```

# Git Policy (политика Git)

```text
No automatic Git commit (без автоматической Git-проводки).
Targeted Git add (точечное Git-добавление) только после Human Approval (человеческого одобрения).
```
