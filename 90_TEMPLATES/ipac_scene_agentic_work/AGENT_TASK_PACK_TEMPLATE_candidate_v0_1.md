# Agent Task Pack Template v0.1
## Шаблон агентного пакета задач

```yaml
artifact_id: AGENT-TASK-PACK-TEMPLATE-2026-06-24-v0.1
artifact_type: template_candidate / agent_task_pack
status: candidate
canon_status: not_canon
project: IPaC_NIR_SEMANTIC_OS
created: 2026-06-24
```

---

# Agent Task Pack (агентный пакет задач)

```yaml
task_pack_id:
task_pack_title:
status: candidate
canon_status: not_canon

target_environment:
  - Codex (Кодекс)
  - Claude (Клод)
  - Antigravity (АнтиГравити)
  - other:

scene_id:
parent_scene:
human_owner:
supervisor_owner:

objective:
  ru:

inputs:
  required_context_pages:
    - 
  source_artifacts:
    - 
  scripts:
    - 

agent_roles:
  architect_agent:
  implementation_agent:
  qa_agent:
  documentation_agent:

steps:
  - step_id:
    actor:
    action:
    expected_output:
    verification:

constraints:
  no_git_commit_without_human_approval: true
  no_canonization: true
  preserve_candidate_status: true
  report_uncertainty: true

outputs:
  artifacts:
    - 
  logs:
    - 
  qa_reports:
    - 

return_protocol:
  return_log_to_supervisor: true
  return_diff_summary: true
  return_open_debts: true
  require_human_review: true
```
