# PHASE 8 — LESSONS LEARNED ARTIFACT
# Извлечённые уроки

**Проект:** IPaC / Information Production as Code  
**Контур:** Phase 8 / Lessons Learned / Process Intelligence / Recovery Discipline  
**Роли:** Knowledge Recovery Analyst; Process Failure Analyst; AI-Native Systems Engineering Consultant  
**Версия:** v0.1  
**Статус:** accepted-candidate  
**Дата:** 2026-06-08  

---

## 0. Назначение

Этот артефакт извлекает process intelligence из старой работы. Он не развивает IPaC, не предлагает новую архитектуру, не делает MVP и не формирует execution plan. Его задача — показать, как процесс развивался, где возникали сбои, context drift, level mixing, false coherence и какие правила нужно перенести в новый Project.

## ACCEPTED / WORKING CONTEXT

```text
PHASE 1 — NEED ARTIFACT: accepted-candidate
PHASE 4 — ARCHITECTURE INVARIANTS: accepted-candidate
PHASE 3 — HYPOTHESIS REGISTRY: accepted-candidate
PHASE 3R — HYPOTHESIS REGISTRY NORMALIZATION: accepted-candidate / implied working context
validated = internal/artifact-supported validation only
validated ≠ field validated
execution-гипотезы отделяются от архитектурных гипотез
previous Phase 4 Execution Artifact = parked execution signal, not architecture canon
```

## SECTION 1 — PROCESS LESSONS

### LL-IPAC-001 — High creative resonance works only when followed by artifact fixation

**Описание:** The old work was strongest when live conceptual breakthroughs were immediately converted into explicit artifacts, registers, prompts, diagrams or status records.

**Проявление в старой работе:** Concepts such as AI Mentor Layer, Execution Pivot, Knowledge Clump and Architecture Invariants became usable only after being fixed as portable blocks or ZIP packages.

**Риск для нового Project:** Strong insights remain trapped in chat flow and are later confused with memory, decisions or canon.

**Правило предотвращения:** If a breakthrough changes project state, create or update a named artifact with ID, status, scope and next route.

### LL-IPAC-002 — Long chat becomes unstable as source-of-truth

**Описание:** A long chat can support exploration, but becomes unreliable as source-of-truth once many decisions, versions and corrections accumulate.

**Проявление в старой работе:** The same Phase 4 label was first used for execution and later corrected to Architecture Invariants; this required explicit recovery and reclassification.

**Риск для нового Project:** New Project inherits naming conflicts, obsolete artifacts and false continuity.

**Правило предотвращения:** After each major turn, update artifact status and maintain supersedes/reclassifies notes.

### LL-IPAC-003 — Stopped thinking / interrupted generation must trigger restart discipline

**Описание:** When generation stops or is interrupted, the next turn must resume from the exact requested artifact rather than reframe the task.

**Проявление в старой работе:** The user had to prompt 'двигай вперед' and 'работай' after stopped thinking events.

**Риск для нового Project:** The model may abandon the requested artifact and drift into explanation or meta-commentary.

**Правило предотвращения:** On interruption, restate artifact target and continue producing the required package.

### LL-IPAC-004 — Strong synthesis can create false coherence

**Описание:** The model can produce a coherent-looking structure that sounds right while mixing levels or over-promoting untested ideas.

**Проявление в старой работе:** The initial Phase 4 Execution Artifact was coherent and useful, but mismatched the later required Phase 4 Architecture Invariants layer.

**Риск для нового Project:** A polished artifact may be accepted as the right layer simply because it is internally coherent.

**Правило предотвращения:** Before accepting an artifact, check phase, layer, scope and prohibited content against the prompt.

### LL-IPAC-005 — Context drift appears when artifact numbering becomes a substitute for layer definition

**Описание:** Document numbers and phase labels can drift unless their layer meaning is explicitly fixed.

**Проявление в старой работе:** Phase 3 existed as simple registry, then extended registry, and Phase 4 shifted from execution to architecture invariants.

**Риск для нового Project:** The project accumulates artifacts with the same labels but different meanings.

**Правило предотвращения:** Every phase artifact must include artifact_type, scope, exclusions, supersedes/reclassifies and accepted context.

### LL-IPAC-006 — User corrections are high-value process signals

**Описание:** When the user corrects the layer, scope or category, that correction must be treated as process evidence, not just a local edit.

**Проявление в старой работе:** The correction that Phase 4 must be Architecture Invariants revealed a systemic need to separate architecture from execution.

**Риск для нового Project:** The same error repeats in later phases.

**Правило предотвращения:** Promote major corrections into Lessons Learned, normalization notes or project rules.

### LL-IPAC-007 — Semantic dilution appears when terms become too generative

**Описание:** Powerful terms can spread across layers and become diluted if not tied to explicit roles and statuses.

**Проявление в старой работе:** Terms such as operating system, mentor, amplifier, living system and icebreaker were productive but needed later normalization.

**Риск для нового Project:** Concepts become emotionally strong but operationally vague.

**Правило предотвращения:** For every powerful term, define whether it is concept, invariant, hypothesis, metaphor, execution candidate or parked source.

### LL-IPAC-008 — Artifact packages improved portability

**Описание:** ZIP packages with README, MANIFEST, status and registers reduced hidden context debt and enabled portation.

**Проявление в старой работе:** Need, Concept, Hypothesis Registry, Architecture Invariants and Mentor Layer were all made portable.

**Риск для нового Project:** New Project cannot reconstruct current status or artifact relationships.

**Правило предотвращения:** Every accepted artifact package must include README, MANIFEST, status JSON and machine-readable register if applicable.

### LL-IPAC-009 — The process needs phase discipline before content production

**Описание:** The model must verify what phase and layer the user is asking for before producing large content.

**Проявление в старой работе:** Phase 4 was initially interpreted as execution because earlier context was execution-heavy; later the user specified Architecture Invariants.

**Риск для нового Project:** A large artifact may be well-written but wrong for the requested phase.

**Правило предотвращения:** Before generating a phase artifact, lock: phase name, artifact type, exclusions and allowed source scope.

## SECTION 2 — LEVEL MIXING LESSONS

| Case | Mixed Levels | Why It Was Dangerous | Prevention Rule |
|---|---|---|---|

| Phase 4 initially treated as Execution | Architecture / Execution / MVP | Execution artifact was useful but wrong for Architecture Invariants. | If element involves launch/channel/dashboard, mark execution candidate. |

| Publication channels became central | Architecture / Communication / Marketing / Execution | Channels could distort core architecture. | Architecture may contain Projection/Feedback, not named channels. |

| Hypotheses sounded like decisions | Hypothesis / Decision / Canon | Untested assumptions could become canon. | Every hypothesis needs status/evidence/assumptions/risks. |

| Need risked being overwritten by solution | Need / Concept / Architecture | Solution architecture could justify itself instead of answering need. | Map new artifacts back to Phase 1 Need. |

| Strong synthesis gave closure feeling | Concept / Validation / Canon | Internal coherence could be mistaken for proof. | Always state validation type. |


## SECTION 3 — VALIDATION LESSONS

```text
internal-dialogue validation = coherence inside the conversation
artifact-supported validation = stabilized across accepted artifacts
field-tested validation = tested through real external action/use
externally-validated = confirmed by external sources, users, reviewers, market, or field evidence
```

**Critical lesson:** `validated ≠ field validated`.

Rules:

```text
1. Do not treat repeated chat agreement as proof.
2. Do not treat elegant formulation as evidence.
3. Do not treat absence of objections as truth.
4. Every validation label must specify validation type.
5. Field validation requires external or use-environment evidence.
```

## SECTION 4 — ARCHITECTURE LESSONS

### A. Architecture lessons to keep

```text
The stable architecture is the living knowledge circuit.
Core entities: Human Subject, AI Mentor, Knowledge Clump, Artifact, Canon, Trace, Feedback, Projection.
Architecture must preserve feedback/review/trace discipline.
Architecture must preserve Human-AI role separation.
Architecture must remain independent of specific publication channels.
```

### B. Architecture traps to avoid

```text
architecture as delay;
channel-driven architecture;
numbered-protocol fetish;
premature canonization;
turning execution candidates into architecture.
```

### C. Architecture / Execution boundary rules

```text
Architecture = stable boundaries, entities, relations, flows, governance, lifecycle invariants.
Execution = channels, launch plans, dashboards, runbooks, MVP/MVI mechanics, tactical sequences.
If unsure, mark as execution candidate until reviewed.
```

## SECTION 5 — KNOWLEDGE MANAGEMENT LESSONS

Rules:

```text
Create new document only when a stable artifact boundary exists.
Update existing document when the change belongs to the same layer.
Do not create a document when a register row or recovery note is enough.
Park valuable wrong-layer material as parked-source.
Chat is workspace, not source-of-truth.
Obsidian/Git/Project should hold accepted artifacts, status, registers, maps, trace and handoff notes.
Recovery notes should hold interruptions, partial outputs, discarded routes and parked signals.
```

## SECTION 6 — AI COLLABORATION LESSONS

AI did well:

```text
synthesis;
artifactization;
register creation;
Mermaid schemes;
packaging;
naming;
process recovery;
structuring vague impulses.
```

AI failure modes:

```text
yes-man amplification;
confident wrong-layer artifact;
premature structuring;
illusion of completion;
insufficient uncertainty marking.
```

Future AI rules:

```text
AI must check layer before large synthesis.
AI must stop when levels mix.
AI must mark uncertainty and validation type.
AI must demand an artifact when a decision changes project state.
AI must not promote execution to architecture.
```

## SECTION 7 — EXECUTION LESSONS

Execution signals found but not promoted to architecture:

| Element | Classification | Lesson |
|---|---|---|
| LinkedIn | execution candidate | Possible first professional channel, not architecture. |
| Telegram | execution candidate | Lab pulse candidate, not architecture. |
| Pinterest | execution candidate | Visual memory candidate, not architecture. |
| YouTube | execution candidate | Trust/explainer candidate, not architecture. |
| site anchor | execution candidate | Public anchor candidate, not architecture. |
| dashboard | execution candidate / governance mechanism candidate | Useful control surface, not architecture core. |
| feedback route | architecture invariant + mechanism candidate | Invariant is feedback→review→canon/trace; concrete package is mechanism. |
| 89 Feedback Package | validation mechanism candidate | Preserves evidence, but specific document is implementation. |
| 90 / 71 Review | validation mechanism candidate | Review invariant is stable; numbering is implementation. |
| 72 Decision | governance mechanism candidate | Decision layer is stable; specific artifact may vary. |
| 73 Trace | architecture invariant / mechanism candidate | Trace is invariant; specific ledger implementation may vary. |

## SECTION 8 — ANTI-PATTERNS

### AP-IPAC-001 — Endless Chat as Memory

**Описание:** Treating a long chat as the durable source-of-truth.

**Как проявлялся:** Critical decisions and corrections lived in the thread until exported.

**Риск:** Hidden context debt and failed portation.

**Как предотвращать:** Externalize accepted knowledge into artifacts, registers and status files.

### AP-IPAC-002 — Beautiful Synthesis as Validation

**Описание:** Confusing a coherent synthesis with evidence.

**Как проявлялся:** Powerful formulas felt true before field testing.

**Риск:** False validation.

**Как предотвращать:** Always mark validation type and uncertainty.

### AP-IPAC-003 — Architecture as Delay

**Описание:** Continuing to architect instead of testing assumptions.

**Как проявлялся:** Rapid production of high-level documents before field evidence.

**Риск:** No contact with reality.

**Как предотвращать:** Further architecture requires explicit gap justification.

### AP-IPAC-004 — Execution as Escape

**Описание:** Jumping into channels or launch mechanics to avoid unresolved conceptual ambiguity.

**Как проявлялся:** Detailed channel packs appeared before all phase boundaries were normalized.

**Риск:** Premature solution lock-in.

**Как предотвращать:** Tag execution elements as candidates until validated.

### AP-IPAC-005 — Document Proliferation

**Описание:** Creating new documents faster than they can be governed.

**Как проявлялся:** Many valuable ZIPs required later normalization.

**Риск:** Conflicting artifacts and cognitive overload.

**Как предотвращать:** Choose update/register/park before creating new document.

### AP-IPAC-006 — Premature Canonization

**Описание:** Turning attractive ideas into canon before evidence.

**Как проявлялся:** Speculative metaphors needed later classification.

**Риск:** Canon contamination.

**Как предотвращать:** Canon update requires review and status decision.

### AP-IPAC-007 — Channel-Driven Thinking

**Описание:** Letting publication channels shape core architecture.

**Как проявлялся:** LinkedIn/site/Telegram/Pinterest/YouTube became highly detailed before being reclassified.

**Риск:** Tactical architecture.

**Как предотвращать:** Keep channels as execution candidates; abstract only projection/use/feedback.

### AP-IPAC-008 — Model Confidence Drift

**Описание:** Model sounds confident while layer alignment drifts.

**Как проявлялся:** Execution artifact was produced confidently under Phase 4 before correction.

**Риск:** Wrong artifact accepted due to fluency.

**Как предотвращать:** Require scope check and uncertainty marking.

### AP-IPAC-009 — Hidden Context Debt

**Описание:** Assuming future agents will infer context not explicitly packaged.

**Как проявлялся:** Need for boot packs, mentor prompt and handoff emerged during portation.

**Риск:** New Project starts from zero or misreads state.

**Как предотвращать:** Maintain boot sources and status summaries.

## SECTION 9 — RULES FOR NEW PROJECT

### A. Mandatory Rules


- **MR-IPAC-001:** Every artifact must state phase, artifact_type, scope, exclusions and validation type.

- **MR-IPAC-002:** Validated means internal/artifact-supported unless field-tested or externally-validated is explicitly stated.

- **MR-IPAC-003:** Execution candidates must not be placed in architecture core.

- **MR-IPAC-004:** Accepted knowledge must be externalized from chat into artifact/register/status.

- **MR-IPAC-005:** Hypothesis status must not be upgraded without evidence.


### B. Warning Rules


- **WR-IPAC-001:** If a beautiful formula appears, mark it as formula/candidate until validated.

- **WR-IPAC-002:** If channels dominate discussion, check for channel-driven thinking.

- **WR-IPAC-003:** If new documents multiply, check for document proliferation.

- **WR-IPAC-004:** If the model sounds very confident, verify phase and layer alignment.


### C. Stop Rules


- **SR-IPAC-001:** If Need, Concept, Architecture and Execution appear in one artifact request, stop and split layers.

- **SR-IPAC-002:** If an execution plan is requested inside architecture extraction, stop and reclassify.

- **SR-IPAC-003:** If raw feedback is being treated as conclusion, stop and route to review.


### D. Review Rules


- **RR-IPAC-001:** Every major correction must become a lesson, rule or normalization note.

- **RR-IPAC-002:** Every speculative concept must be reviewed before canonization.

- **RR-IPAC-003:** Every parked source must be periodically reviewed or discarded.


### E. Artifact Rules


- **AR-IPAC-001:** Create a new document only when it closes a real gap or establishes an accepted artifact boundary.

- **AR-IPAC-002:** Update an existing artifact when the change belongs to the same layer and scope.

- **AR-IPAC-003:** Do not create a document when a register row, status update or recovery note is enough.

- **AR-IPAC-004:** Park valuable wrong-layer material instead of deleting or canonizing it.


## SECTION 10 — LESSONS LEARNED REGISTER

The CSV-ready register is stored in `registers/PHASE8_LESSONS_LEARNED_REGISTER.csv`.

## SECTION 11 — FINAL SUMMARY

1. **Главный урок старой работы:** сильное мышление должно немедленно превращаться в управляемые артефакты, иначе чат создаёт hidden context debt.
2. **Главная причина деградации процесса:** смешение уровней и принятие красивой внутренней связности за подтверждение.
3. **Главное правило для нового Project:** сначала определить слой работы, validation type и artifact boundary; потом генерировать.
4. **Что нужно запретить:** превращать execution candidates, каналы, красивые формулы и внутреннее согласие в архитектурный canon.
5. **Что нужно обязательно сохранить:** living knowledge circuit, Human-AI role separation, bootability, trace, hypothesis discipline and architecture/execution boundary.
6. **Какие риски остались:** document proliferation, model confidence drift, hidden context debt, premature canonization, architecture as delay.
7. **Следующий шаг после Phase 8:** импортировать обязательные rules в новый Project Instructions / Project Rules и использовать session review template после каждого крупного шага.
