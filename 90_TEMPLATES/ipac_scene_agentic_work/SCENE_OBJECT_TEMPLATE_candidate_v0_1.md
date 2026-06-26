# Scene Object Template v0.1
## Шаблон объекта сцены

```yaml
artifact_id: SCENE-OBJECT-TEMPLATE-2026-06-24-v0.1
artifact_type: template_candidate / scene_spec
status: candidate
canon_status: not_canon
project: IPaC_NIR_SEMANTIC_OS
created: 2026-06-24
```

---

# Scene Object (объект сцены)

```yaml
scene_id:
scene_title:
scene_status: candidate
canon_status: not_canon

strategic_parent:
mainline_theme:

scene_goal:
  ru:

roles:
  human_architect:
  supervisor:
  agent_1:
  agent_2:
  reviewer:

input_context_pages:
  required:
  optional:
  forbidden_noise:

source_artifacts:
  - 

expected_outputs:
  - artifact:
    format:
    target_register:

execution_protocol:
  steps:
    - 

verification:
  acceptance_criteria:
    - 
  required_log:
  qa_owner:

routing:
  daily_register:
  project_trace:
  resource_pack:
  decision_register:
  rules:
  parking_lot:

git_policy:
  git_add_authorized: false
  git_commit_authorized: false
  human_approval_required: true

open_debts:
  - 
```

---

# Примечание

Scene (сцена) не является Thread (тредом). Scene (сцена) — это ограниченный фрагмент agentic interaction (агентного взаимодействия) с целью, ролями, контекстом, ожидаемым результатом и проверкой.
