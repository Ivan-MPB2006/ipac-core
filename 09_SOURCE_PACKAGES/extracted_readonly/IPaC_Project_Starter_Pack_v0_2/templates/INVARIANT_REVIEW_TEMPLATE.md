# PHASE4_INVARIANT_REVIEW_TEMPLATE.md

# Architecture Invariant Review Template

```yaml
invariant_id:
current_confidence:
proposed_confidence:
review_reason:
evidence_added:
execution_candidate_risk:
decision:
trace_required:
```

## Questions

```text
Is this invariant stable across contexts?
Is it architecture or execution?
Does it preserve living knowledge?
Does it preserve human-AI role separation?
Does it preserve canon / trace / feedback discipline?
What would break if this invariant were removed?
```

## Rule

```text
Do not promote execution candidates into architecture without evidence.
```
