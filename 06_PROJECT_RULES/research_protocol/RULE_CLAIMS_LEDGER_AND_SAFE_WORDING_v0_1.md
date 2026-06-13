# RULE — Claims Ledger and Safe Wording v0.1  
## Правило: реестр claims и безопасные формулировки

```yaml
artifact_id: RULE-IPAC-CLAIMS-LEDGER-SAFE-WORDING-001
artifact_type: project_rule
status: accepted_project_rule_candidate
version: 0.1
layer: project_rules / research_protocol
scope: claims management / safe wording / overclaim prevention
date: 2026-06-13
canon_update_authorized: false
field_validated: process_rule
```

---

# 1. Rule Statement

Каждый research sprint должен выявлять claims IPaC и присваивать им статус.

```text
Claim без статуса является риском overclaiming.
```

---

# 2. Claims Ledger Fields

Для каждого claim фиксировать:

| Field | Meaning |
|---|---|
| claim_id | уникальный ID |
| claim_text | исходная формулировка |
| status | unsupported / hypothesis / research-supported / field-validated |
| supporting_sources | источники поддержки |
| weakening_evidence | что ослабляет claim |
| safe_wording | разрешённая формулировка |
| forbidden_wording | запрещённая формулировка |
| validation_needed | что нужно для усиления claim |
| related_sprints | DR-001, DR-002, etc. |

---

# 3. Status Classes

```text
UNSUPPORTED
HYPOTHESIS
RESEARCH_SUPPORTED
RESEARCH_SUPPORTED_WITH_LIMITATIONS
FIELD_VALIDATION_REQUIRED
FIELD_VALIDATED
CANON_CANDIDATE
CANON_ACCEPTED
```

---

# 4. Mandatory Report Sections

Каждый research report или research review должен включать:

```text
## Claims to Weaken
## Claims to Strengthen
## Safe Wording
## Forbidden Wording
```

---

# 5. Example

Claim:

```text
IPaC extends Context Engineering.
```

Allowed status after DR-002:

```text
RESEARCH_SUPPORTED_WITH_LIMITATIONS
```

Safe wording:

```text
IPaC appears broader than Context Engineering at the knowledge-lifecycle level,
while its model-facing context layer strongly overlaps with Context Engineering.
```

Forbidden wording:

```text
IPaC has proven a new engineering discipline beyond Context Engineering.
```

---

# 6. Future Artifact

На следующем этапе создать:

```text
03_RESEARCH_MAP/CLAIMS_LEDGER_v0_1.md
```

Он должен агрегировать claims из DR-001, DR-002 и последующих sprint.

---

# 7. Placement

```text
06_PROJECT_RULES/research_protocol/RULE_CLAIMS_LEDGER_AND_SAFE_WORDING_v0_1.md
```

---

# 8. Status

```text
RULE_READY_FOR_LONG_TERM_USE
CLAIMS_LEDGER_REQUIRED_NEXT
```
