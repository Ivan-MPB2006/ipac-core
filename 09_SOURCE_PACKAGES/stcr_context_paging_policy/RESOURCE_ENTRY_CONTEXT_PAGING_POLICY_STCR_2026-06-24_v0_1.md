# Resource Entry — Context Paging Policy STCR
## Ресурсная запись политики контекстной подкачки STCR

```yaml
resource_object_name: IPAC_CONTEXT_PAGING_POLICY_STCR_PACKAGE_2026-06-24_v0_1
status: candidate
canon_status: not_canon
resource_type: context_paging_policy_package
project: IPaC_NIR_SEMANTIC_OS
created: 2026-06-24
main_file: CONTEXT_PAGING_POLICY_STCR_candidate_v0_1.md
all_in_one_file: CONTEXT_PAGING_POLICY_STCR_ALL_IN_ONE_2026-06-24_v0_1.md
short_code: STCR_CPP
git_commit_authorized: false
human_approval_required_for_git_commit: true
```

---

# Назначение

Resource Entry (ресурсная запись) описывает Context Paging Policy (политику контекстной подкачки) для подсистемы Semantic Thread Compaction and Rehydration (смысловой свёртки треда и повторного развёртывания).

---

# Использовать когда

```text
- нужно открыть новый Thread (тред) через Rehydration Brief (бриф повторного развёртывания);
- нужно собрать Scene (сцену);
- нужно подготовить Agent Task Pack (агентный пакет задач);
- есть риск Overpaging (избыточной подкачки);
- есть риск Underpaging (недоподкачки);
- нужно отличить resonance (резонанс) от relevance (релевантности).
```
