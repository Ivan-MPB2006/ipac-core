# DR-002 Boundary Sprint Selection v0.1

```yaml
artifact_id: DR-002-BOUNDARY-SPRINT-SELECTION-001
artifact_type: research_sprint_selection_review
status: DR002_SELECTION_WITH_NOTES
version: 0.1
layer: trace_and_decisions / research_map
scope: IPaC boundary research sprint selection after DR-001
date: 2026-06-12
canon_update_authorized: false
field_validated: false
deep_research_launched: false
mvi_authorized: false
codex_authorized: false
execution_authorized: false
```

---

## 1. Selection Purpose

This document selects the next IPaC boundary research sprint after DR-001.

DR-001 closed the first critical boundary cycle around IPaC and Knowledge Engineering.

The purpose of DR-002 is not to confirm IPaC, but to strengthen the project’s ability to answer an external critic:

```text
Why is IPaC not equal to a neighboring discipline?
Where does it overlap?
What does it inherit?
Where is IPaC’s own zone?
What still requires field validation?
```

This selection does not launch Deep Research by itself.

---

## 2. Current Context

Accepted working decision after DR-001:

```text
IPAC_IS_OPERATING_LAYER_FOR_LIVING_KNOWLEDGE_WITH_KE_OVERLAP
```

Meaning:

```text
IPaC is not a simple renaming of Knowledge Engineering,
but it has strong inheritance and overlap with Knowledge Engineering
and neighboring disciplines.
```

Working positioning after DR-001:

```text
IPaC minimum — framework.
IPaC maximum — Engineering of Information Production.
Research task — determine which level of claim survives the neighborhood map.
```

---

## 3. Candidate Sprint Evaluation

| Sprint | Boundary risk | Strategic value | Dependency | Urgency | Recommendation |
|---|---|---|---|---|---|
| **IPaC vs Context Engineering** | **Very high** — IPaC may be reduced to prompt / context-window / RAG / memory workflow | **Very high** — tests the AI-native boundary and separates context supply from knowledge lifecycle | Low: DR-001 is closed; Context Engineering is already identified as the next critical question | **Immediate** | **SELECT as DR-002** |
| IPaC vs Docs-as-Code / DocOps | High — Obsidian + Git may be mistaken for documentation workflow | High — protects against tool/documentation reduction | Better after Context Engineering, to preserve the AI-native distinction | High | DR-003 / close follow-up |
| IPaC vs Software Engineering / Software Production | Medium-high — “as code” and OS analogy may create authority borrowing | High — tests the production/engineering analogy | Better after Context Engineering and DocOps boundary | Medium-high | DR-004 |
| IPaC and Cognitive Systems Engineering | Medium-high — IPaC may be reduced to cognitive load / human factors / cockpit design | High — relevant to Living Meaning, cognition, and human-AI work | Better after AI/context and artifact/document boundaries | Medium | DR-005 candidate |
| IPaC and Decision Support / ЛПР | Medium — IPaC may be reduced to decision-support artifact production | Medium-high — important for later real-world use | Requires clearer user / field validation framing | Medium | Later DR |
| IPaC vs Knowledge Management | High — IPaC may be reduced to KM / organizational memory / knowledge base | High — fundamental neighbor after KE | Strong, but less urgent than Context Engineering after DR-001 | Medium-high | Later DR |
| IPaC vs Provenance / PROV-O / Semantic Drift | High — trace / decision / controlled rebuild overlap with provenance and drift governance | High — strengthens trace and drift language | Better after Docs-as-Code / Git boundary, or as a focused semantic-drift sprint | Medium | Later DR |
| IPaC vs Information Architecture / Content Strategy | Medium — IPaC may be reduced to content modeling and IA | Medium-high — relevant to information blocks and communication artifacts | Depends on DocOps and KM boundary results | Low-medium | Later DR |

---

## 4. Selected Sprint

```text
DR-002 — IPaC vs Context Engineering
```

### Selection Rationale

DR-002 should examine the boundary between IPaC and Context Engineering because this is the most urgent post-DR-001 external critique risk.

Context Engineering is close enough to IPaC to create serious confusion, especially in LLM-era vocabulary:

```text
prompt
context
memory
RAG
tool use
agent orchestration
context window
context pack
```

The critical distinction to test:

```text
Context Engineering manages what the model should see and use.

IPaC manages the broader lifecycle of living knowledge:
how meaning appears, becomes a knowledge clump,
is turned into an artifact,
enters or does not enter canon,
gets traced,
receives feedback / evidence,
goes through review,
becomes a decision,
and is rebuilt into updated canon.
```

The current IPaC hypothesis is promising, but not proven.

---

## 5. DR-002 Goal

Investigate whether IPaC is:

```text
1. merely Context Engineering under another name;
2. Context Engineering plus governance;
3. a broader operating framework that uses Context Engineering as a subsystem;
4. an unresolved mixed concept requiring claim reduction.
```

The sprint must produce a boundary map, not a promotional defense.

---

## 6. Recommended Input Files

| File | Role |
|---|---|
| `REQ_09_DECISION_DR001_IPAC_KE_BOUNDARY_v0_1.md` | Accepted DR-001 boundary decision |
| `REQ_07_DR-001_COMPARATIVE_RESEARCH_REVIEW_v0_1.md` | Comparative review and caution discipline |
| `REQ_03_IPAC_CRITICAL_QUESTIONS_REGISTER_v0_1.md` | Critical questions register; includes DR-002 questions |
| `REQ_04_WAVE4_RESEARCH_BACKLOG_PLACEHOLDERS_v0_1.md` | Research backlog placeholder for Context Engineering |
| `REQ_08_DECISION_IPAC_POSITIONING_MIN_MAX_STRATEGY_v0_1.md` | Min/max positioning strategy |
| `REQ_02_01_LIFECYCLE_MAP_LIVING_MEANING_TO_UPDATED_CANON_v0_1.md` | IPaC lifecycle map |
| `REQ_11_MULTI_LAYER_KNOWLEDGE_REPRESENTATION_v0_1.md` | Machine / human / Obsidian knowledge representation layers |
| `REQ_10_WAVE4_SAFE_PROJECT_RULES_v0_1.md` | Guardrails: no canon update, no execution drift |
| `00_IPaC_CONSTITUTION_v0_1.md` | High-level operating frame and meaning bottleneck thesis |

---

## 7. Research Questions

| ID | Research Question |
|---|---|
| DR002-Q1 | What is currently meant by Context Engineering in LLM systems? |
| DR002-Q2 | How does Context Engineering differ from prompt engineering, RAG, memory, tool use, agent orchestration, and context-window management? |
| DR002-Q3 | Is IPaC’s Context Pack workflow a subset of Context Engineering? |
| DR002-Q4 | Which IPaC elements are fully covered by Context Engineering? |
| DR002-Q5 | Which IPaC elements are not covered by Context Engineering: artifact, canon, trace, review, decision, controlled rebuild? |
| DR002-Q6 | Can IPaC treat Context Engineering as a subsystem rather than its parent discipline? |
| DR002-Q7 | Where is the boundary between “model-visible context” and “durable knowledge lifecycle”? |
| DR002-Q8 | Which IPaC claims must be weakened after comparison with Context Engineering? |
| DR002-Q9 | Which IPaC claims may be cautiously strengthened? |
| DR002-Q10 | What remains dependent on field validation after DR-002? |

---

## 8. Expected Output

Recommended output artifacts:

```text
03_RESEARCH_MAP/deep_research/DR-002_IPaC_vs_Context_Engineering_REPORT_v0_1.md
08_TRACE_AND_DECISIONS/reviews/DR-002_RESEARCH_REVIEW_IPaC_vs_Context_Engineering_v0_1.md
08_TRACE_AND_DECISIONS/decisions/DECISION_DR002_IPAC_CONTEXT_ENGINEERING_BOUNDARY_v0_1.md
```

Recommended verdict patterns:

```text
IPAC_IS_NOT_CONTEXT_ENGINEERING_BUT_USES_CONTEXT_ENGINEERING_AS_SUBSYSTEM
```

or

```text
IPAC_IS_CONTEXT_ENGINEERING_PLUS_GOVERNANCE
```

or

```text
IPAC_CONTEXT_ENGINEERING_BOUNDARY_UNRESOLVED
```

---

## 9. Guardrails

DR-002 must not:

- prove IPaC by assumption;
- update canon directly;
- declare IPaC a new engineering discipline as fact;
- treat Context Engineering as an enemy discipline;
- reduce IPaC to prompt engineering, RAG, memory, or context packs;
- launch MVI / MVP / Codex / MCP / RAG / Neo4j;
- treat research support as field validation;
- treat a polished synthesis as evidence;
- move execution candidates into architecture core.

DR-002 must:

- separate evidence, analogy, inspiration, and speculation;
- identify inherited practices honestly;
- name overlaps without panic;
- identify IPaC’s own candidate zone;
- preserve open questions;
- end with review and decision before any canon impact.

---

## 10. Recommended Sequence After Selection

```text
DR-002 — IPaC vs Context Engineering
→ DR-003 — IPaC vs Docs-as-Code / DocOps
→ DR-004 — IPaC vs Software Engineering / Software Production
→ DR-005 — split decision: Cognitive Systems Engineering or Provenance / Semantic Drift
```

---

## 11. Final Verdict

```text
Selected sprint:
DR-002 — IPaC vs Context Engineering
```

```text
Selection status:
DR002_SELECTION_WITH_NOTES
```

Reason:

```text
Context Engineering is the most urgent post-DR-001 boundary because it tests the AI-native claim of IPaC and protects the project from reduction to prompt/context workflow.
```
