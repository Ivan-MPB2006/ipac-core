# PHASE 6 — OPEN QUESTIONS ARTIFACT
# ФАЗА 6 — АРТЕФАКТ ОТКРЫТЫХ ВОПРОСОВ

**Проект:** IPaC / Information Production as Code  
**Роли анализа:** Knowledge Recovery Analyst; Uncertainty Cartographer; Research Discipline Consultant; Concept Risk Auditor  
**Контур:** Phase 6 / Old Chat Recovery / Uncertainty Map / Open Questions  
**Тип документа:** переносимый инженерный артефакт открытых вопросов  
**Версия:** v0.1  
**Статус:** candidate  
**Source mode:** old_chat_recovery  
**No new web research:** true  
**Field validation claimed:** false  

---

## 0. Purpose

Этот документ не продолжает IPaC, не улучшает концепт, не проектирует архитектуру, не делает MVP и не закрывает вопросы преждевременно.

Главная задача Phase 6 — построить Uncertainty Map: карту неопределённости, которая защищает IPaC от false maturity, premature canonization и speculative certainty.

## Core principle

```text
Open questions are not weakness.
They are protection against false maturity and the basis for the next research / validation cycle.
```

## Accepted context

```text
PHASE 1 — NEED ARTIFACT: accepted-candidate
PHASE 4 — ARCHITECTURE INVARIANTS: accepted-candidate
PHASE 3R — HYPOTHESIS REGISTRY NORMALIZATION: accepted-candidate
PHASE 8 — LESSONS LEARNED: accepted-candidate
PHASE 2 — CONCEPT ARTIFACT: accepted-candidate
PHASE 5 — RESEARCH FINDINGS: candidate / recovered research map
IPaC Project Starter Pack v0.1: accepted context
```

## SECTION 1 — OPEN QUESTIONS MAP

**Total open questions:** 22

### By category

| Category | Count |
|---|---:|
| need | 1 |
| concept | 2 |
| architecture | 1 |
| governance | 3 |
| methodology | 2 |
| tool_infrastructure | 3 |
| research | 2 |
| communication_field | 2 |
| terminology | 2 |
| validation | 3 |
| execution | 1 |

### By next action type

| Next action type | Count |
|---|---:|
| needs_field_evidence | 3 |
| needs_hypothesis_test | 4 |
| needs_expert_review | 2 |
| needs_prototype_mvp | 3 |
| needs_methodology_review | 2 |
| needs_research | 3 |
| park_for_later | 3 |
| needs_terminology_clarification | 1 |
| needs_architecture_review | 1 |

### By priority

| Priority | Count |
|---|---:|
| critical | 9 |
| high | 10 |
| medium | 3 |

---

### OQ-IPAC-001 — Does IPaC answer a real external need, or primarily an internal intellectual/systemic pain?

**Category:** `need`  
**Related phase:** Phase 1; Phase 5  
**Related concept:** Living Meaning; Field Evidence  
**Related hypothesis:** HYP-IPAC-001; HYP-IPAC-002  
**Related research gap:** RG-IPAC-011; RG-IPAC-012  
**Priority:** `critical`  
**Next action:** `needs_field_evidence`

**Why it matters:** If the need is not externally recognizable, IPaC may remain internally coherent but externally weak.

**Risk if ignored:** False maturity; solution self-justification; weak adoption.

---

### OQ-IPAC-002 — Can living meaning be translated into manageable artifacts without killing its living core?

**Category:** `concept`  
**Related phase:** Phase 1; Phase 2; Phase 4  
**Related concept:** Living Meaning; Knowledge Artifact; Knowledge Clump  
**Related hypothesis:** HYP-IPAC-003; HYP-IPAC-004  
**Related research gap:**   
**Priority:** `critical`  
**Next action:** `needs_hypothesis_test`

**Why it matters:** This is the central transformation claim of IPaC.

**Risk if ignored:** Artifacts become dead documentation; the core need is betrayed.

---

### OQ-IPAC-003 — What minimal structure is required for a Knowledge Clump to remain alive and portable?

**Category:** `concept`  
**Related phase:** Phase 2; Phase 4  
**Related concept:** Knowledge Clump; Context Pack; Trace  
**Related hypothesis:** HYP-IPAC-003; HYP-IPAC-019  
**Related research gap:** RG-IPAC-012  
**Priority:** `high`  
**Next action:** `needs_expert_review`

**Why it matters:** Too little structure loses context; too much structure creates bureaucracy.

**Risk if ignored:** Either context collapse or document proliferation.

---

### OQ-IPAC-004 — Is the Canon / Trace / Review / Decision / Controlled Rebuild circuit actually workable in practice?

**Category:** `architecture`  
**Related phase:** Phase 4  
**Related concept:** Canon; Trace; Review; Decision; Controlled Rebuild  
**Related hypothesis:** HYP-IPAC-004; HYP-IPAC-013  
**Related research gap:**   
**Priority:** `critical`  
**Next action:** `needs_prototype_mvp`

**Why it matters:** This is the stable living knowledge circuit claimed by the architecture invariants.

**Risk if ignored:** The architecture remains internally coherent but operationally untested.

---

### OQ-IPAC-005 — How to prevent Review / Decision / Trace discipline from becoming bureaucracy?

**Category:** `governance`  
**Related phase:** Phase 4; Phase 8  
**Related concept:** Review; Decision; Trace  
**Related hypothesis:** HYP-IPAC-013  
**Related research gap:**   
**Priority:** `high`  
**Next action:** `needs_methodology_review`

**Why it matters:** The same discipline that prevents false canonization may slow or deaden the system.

**Risk if ignored:** Process overload; living knowledge becomes dead procedure.

---

### OQ-IPAC-006 — Can Human + AI collaboration reliably hold complexity better than an ordinary long chat?

**Category:** `methodology`  
**Related phase:** Phase 2; Phase 3R; Phase 8  
**Related concept:** Human Subject; AI Mentor; Intersubjectivity  
**Related hypothesis:** HYP-IPAC-008; HYP-IPAC-009  
**Related research gap:**   
**Priority:** `high`  
**Next action:** `needs_hypothesis_test`

**Why it matters:** IPaC relies on AI as methodological support without transferring subjecthood.

**Risk if ignored:** AI over-synthesis, yes-man drift, false coherence.

---

### OQ-IPAC-007 — Can the AI Mentor Layer transfer the working mode to a new Project or agent?

**Category:** `methodology`  
**Related phase:** Phase 2; Phase 3R; Phase 8  
**Related concept:** AI Mentor; Context Pack; Source-of-truth  
**Related hypothesis:** HYP-IPAC-007; HYP-IPAC-008  
**Related research gap:**   
**Priority:** `critical`  
**Next action:** `needs_hypothesis_test`

**Why it matters:** Portation depends on transferring not only files but working discipline.

**Risk if ignored:** New Project starts from zero or becomes generic.

---

### OQ-IPAC-008 — Can Obsidian / Git / Project serve as stable memory without creating tool capture?

**Category:** `tool_infrastructure`  
**Related phase:** Phase 5; Phase 8  
**Related concept:** Source-of-truth; Trace; Context Pack  
**Related hypothesis:** HYP-IPAC-019; HYP-IPAC-021; HYP-IPAC-022  
**Related research gap:** RG-IPAC-008  
**Priority:** `high`  
**Next action:** `needs_prototype_mvp`

**Why it matters:** The tools may support the system, but must not become the concept.

**Risk if ignored:** Tool-driven conclusions; Obsidian/Git mistaken for IPaC.

---

### OQ-IPAC-009 — What is the boundary between IPaC and Knowledge Engineering?

**Category:** `research`  
**Related phase:** Phase 5  
**Related concept:** Knowledge Artifact; Canon; Knowledge Clump  
**Related hypothesis:** HYP-IPAC-002  
**Related research gap:** RG-IPAC-003  
**Priority:** `critical`  
**Next action:** `needs_research`

**Why it matters:** Without boundary work, IPaC may duplicate existing fields under new wording.

**Risk if ignored:** False novelty; weak positioning; conceptual inflation.

---

### OQ-IPAC-010 — What is the boundary between IPaC and Context Engineering?

**Category:** `research`  
**Related phase:** Phase 5  
**Related concept:** Context Pack; AI Mentor; Source-of-truth  
**Related hypothesis:** HYP-IPAC-007; HYP-IPAC-026  
**Related research gap:** RG-IPAC-006  
**Priority:** `high`  
**Next action:** `needs_research`

**Why it matters:** Context Engineering may overlap with IPaC boot/context-pack logic.

**Risk if ignored:** Terminology fog; duplicated field claims.

---

### OQ-IPAC-011 — Does the phrase Meaning Bottleneck travel outside the internal project context?

**Category:** `communication_field`  
**Related phase:** Phase 2; Phase 3R; Phase 5  
**Related concept:** Meaning Bottleneck; Field Evidence  
**Related hypothesis:** HYP-IPAC-001; HYP-IPAC-017  
**Related research gap:** RG-IPAC-011  
**Priority:** `critical`  
**Next action:** `needs_field_evidence`

**Why it matters:** It was selected as a key conceptual entry point but has no field evidence.

**Risk if ignored:** Beautiful formulation treated as validation.

---

### OQ-IPAC-012 — Does the term Knowledge Clump make sense to external reviewers?

**Category:** `terminology`  
**Related phase:** Phase 2; Phase 5  
**Related concept:** Knowledge Clump  
**Related hypothesis:** HYP-IPAC-003  
**Related research gap:** RG-IPAC-012  
**Priority:** `high`  
**Next action:** `needs_expert_review`

**Why it matters:** The term is central internally but may not be portable externally.

**Risk if ignored:** Terminology fog; weak communication; concept rejection due to naming.

---

### OQ-IPAC-013 — How to distinguish research support from validation in daily project work?

**Category:** `validation`  
**Related phase:** Phase 5; Phase 8  
**Related concept:** Evidence; Field Evidence; Review  
**Related hypothesis:** HYP-IPAC-025  
**Related research gap:**   
**Priority:** `critical`  
**Next action:** `needs_methodology_review`

**Why it matters:** Phase 5 explicitly states research support is not validation.

**Risk if ignored:** False maturity and premature canonization.

---

### OQ-IPAC-014 — What field evidence would be sufficient to upgrade core hypotheses?

**Category:** `validation`  
**Related phase:** Phase 3R; Phase 5  
**Related concept:** Field Evidence; Evidence  
**Related hypothesis:** multiple  
**Related research gap:** RG-IPAC-011; RG-IPAC-012  
**Priority:** `critical`  
**Next action:** `needs_hypothesis_test`

**Why it matters:** The project needs clear validation thresholds before public or architectural claims.

**Risk if ignored:** Hypothesis status drift and overclaiming.

---

### OQ-IPAC-015 — Can field feedback be turned into controlled rebuild rather than chaos?

**Category:** `validation`  
**Related phase:** Phase 4; Phase 5  
**Related concept:** Feedback; Review; Controlled Rebuild  
**Related hypothesis:** HYP-IPAC-004; HYP-IPAC-013  
**Related research gap:**   
**Priority:** `high`  
**Next action:** `needs_prototype_mvp`

**Why it matters:** The living knowledge cycle depends on feedback improving the system without destabilizing canon.

**Risk if ignored:** Feedback panic, opportunistic rewriting, canon instability.

---

### OQ-IPAC-016 — Which parts of the former execution work are parked signals and which are reusable mechanisms?

**Category:** `execution`  
**Related phase:** Phase 4; Phase 8  
**Related concept:** Projection; Feedback; Review  
**Related hypothesis:** HYP-IPAC-014; HYP-IPAC-015  
**Related research gap:**   
**Priority:** `medium`  
**Next action:** `park_for_later`

**Why it matters:** Earlier execution artifacts are valuable but not architecture.

**Risk if ignored:** Execution candidates re-enter architecture core.

---

### OQ-IPAC-017 — When should Codex / execution agents be connected without damaging concept boundaries?

**Category:** `tool_infrastructure`  
**Related phase:** Phase 3R; Phase 5  
**Related concept:** AI Mentor; Knowledge Artifact  
**Related hypothesis:** HYP-IPAC-023  
**Related research gap:**   
**Priority:** `medium`  
**Next action:** `park_for_later`

**Why it matters:** Codex may support implementation but can also cause execution pull.

**Risk if ignored:** Technical implementation starts before conceptual and validation discipline is stable.

---

### OQ-IPAC-018 — Does IPaC require RAG / Knowledge Graph / Neo4j, or are these only possible tools?

**Category:** `tool_infrastructure`  
**Related phase:** Phase 5  
**Related concept:** Trace; Source-of-truth; Context Pack  
**Related hypothesis:** HYP-IPAC-024  
**Related research gap:** RG-IPAC-007  
**Priority:** `medium`  
**Next action:** `needs_research`

**Why it matters:** Avoid tool capture and premature technical architecture.

**Risk if ignored:** Technical stack becomes concept substitute.

---

### OQ-IPAC-019 — Which terms are working terms and which are public terms?

**Category:** `terminology`  
**Related phase:** Phase 2; Phase 6  
**Related concept:** Living Meaning; Knowledge Clump; Canon; Resonance; Intersubjectivity  
**Related hypothesis:** HYP-IPAC-017  
**Related research gap:** RG-IPAC-012  
**Priority:** `high`  
**Next action:** `needs_terminology_clarification`

**Why it matters:** Internal terms may be powerful but externally unclear.

**Risk if ignored:** Terminology fog, rejection, or pseudo-philosophical impression.

---

### OQ-IPAC-020 — What should be parked until after Wave 2 closure?

**Category:** `governance`  
**Related phase:** Phase 8  
**Related concept:** Source-of-truth; Context Pack  
**Related hypothesis:**   
**Related research gap:**   
**Priority:** `high`  
**Next action:** `park_for_later`

**Why it matters:** Not all important questions should be solved now.

**Risk if ignored:** Research-as-delay and execution pull.

---

### OQ-IPAC-021 — Can IPaC be explained without excessive simplification?

**Category:** `communication_field`  
**Related phase:** Phase 2; Phase 5  
**Related concept:** Projection; Living Meaning; Knowledge Clump  
**Related hypothesis:** HYP-IPAC-017; HYP-IPAC-032  
**Related research gap:** RG-IPAC-011; RG-IPAC-012  
**Priority:** `high`  
**Next action:** `needs_field_evidence`

**Why it matters:** Public understanding may require simplification, but simplification may distort the concept.

**Risk if ignored:** Either opacity or flattening into marketing/content workflow.

---

### OQ-IPAC-022 — What is the next correct phase after Phase 6?

**Category:** `governance`  
**Related phase:** Phase 6  
**Related concept:** Context Pack; Source-of-truth  
**Related hypothesis:**   
**Related research gap:**   
**Priority:** `critical`  
**Next action:** `needs_architecture_review`

**Why it matters:** The prompt specifies Wave 2 Closure / Knowledge Recovery Pack Assembly.

**Risk if ignored:** The project may keep producing isolated phase artifacts instead of packaging recovery state.

---

## SECTION 2 — UNRESOLVED CONTRADICTIONS

Contradictions are not forced to zero. They are preserved as design/research tensions.

### CONTR-IPAC-001 — Living Meaning vs Formalization

**Side A:** Living meaning must remain alive.

**Side B:** Formalization is required for portability and execution.

**Manifestation:** Repeated tension between artifacts and dead documentation.

**Why dangerous:** Either chaos or lifeless documentation.

**Current status:** `partially_clarified`

**Resolution needed:** Need operational minimal artifact structure.

### CONTR-IPAC-002 — Conceptual Depth vs Execution Simplicity

**Side A:** IPaC has deep conceptual architecture.

**Side B:** First execution/communication must be simple enough to test.

**Manifestation:** Execution artifacts became detailed before being reclassified.

**Why dangerous:** Overcomplexity blocks field contact; oversimplification distorts concept.

**Current status:** `unresolved`

**Resolution needed:** Field-facing simplification test later.

### CONTR-IPAC-003 — Research Discipline vs Action

**Side A:** Research prevents false maturity.

**Side B:** Too much research delays field evidence.

**Manifestation:** Phase 5 and Phase 8 both warn against research-as-delay.

**Why dangerous:** Project becomes self-referential.

**Current status:** `partially_clarified`

**Resolution needed:** Wave 2 closure then controlled next action.

### CONTR-IPAC-004 — Architecture Discipline vs Architecture-as-Delay

**Side A:** Architecture invariants protect system boundaries.

**Side B:** Further architecture can postpone reality contact.

**Manifestation:** Earlier Phase 4 execution/architecture confusion.

**Why dangerous:** Endless meta-architecture.

**Current status:** `partially_clarified`

**Resolution needed:** Further architecture needs gap justification.

### CONTR-IPAC-005 — Human Subject vs AI Structuring

**Side A:** Human owns intent and final judgement.

**Side B:** AI structures, packages and synthesizes strongly.

**Manifestation:** AI over-synthesis and yes-man drift were identified.

**Why dangerous:** Authorship drift and false coherence.

**Current status:** `partially_clarified`

**Resolution needed:** Strong role boundary and review rules.

### CONTR-IPAC-006 — Canon Stability vs Controlled Rebuild

**Side A:** Canon must remain stable enough to guide work.

**Side B:** Living knowledge must rebuild based on evidence.

**Manifestation:** Core lifecycle includes controlled rebuild.

**Why dangerous:** Premature rewrite or frozen canon.

**Current status:** `unresolved`

**Resolution needed:** Define rebuild thresholds and trace rules.

### CONTR-IPAC-007 — Knowledge Artifact vs Dead Documentation

**Side A:** Artifacts make knowledge portable.

**Side B:** Artifacts can become dead documentation if over-bureaucratized.

**Manifestation:** Repeated lesson: formalize without killing meaning.

**Why dangerous:** Loss of living core.

**Current status:** `partially_clarified`

**Resolution needed:** Minimal structure and review discipline.

### CONTR-IPAC-008 — Field Evidence vs Internal Coherence

**Side A:** Internal coherence enabled strong artifacts.

**Side B:** Field evidence is absent for key claims.

**Manifestation:** Phase 5 says no field validation claimed.

**Why dangerous:** False maturity.

**Current status:** `needs_field_validation`

**Resolution needed:** Field or expert validation later.

### CONTR-IPAC-009 — Tool Support vs Tool Capture

**Side A:** Tools support trace and portability.

**Side B:** Tools can take over concept identity.

**Manifestation:** Obsidian/Git/RAG/MCP/Codex risks named.

**Why dangerous:** IPaC becomes toolchain story.

**Current status:** `needs_research`

**Resolution needed:** Tool boundary and practical validation.

### CONTR-IPAC-010 — Resonance Communication vs Marketing

**Side A:** External communication should preserve resonance.

**Side B:** Public communication may become ordinary marketing or content factory.

**Manifestation:** Channels were parked as execution candidates.

**Why dangerous:** Flattening and channel-driven thinking.

**Current status:** `parked`

**Resolution needed:** Return only after concept/validation boundaries.

## SECTION 3 — UNVALIDATED ASSUMPTIONS

Full assumptions register is stored in `registers/PHASE6_ASSUMPTIONS_REGISTER.csv`.

Highest-risk assumptions:

```text
ASM-IPAC-001 — IPaC answers a real external need.
ASM-IPAC-002 — Living meaning can become artifacts without losing essence.
ASM-IPAC-003 — Canon/Trace/Review/Decision/Rebuild circuit is workable.
ASM-IPAC-008 — External environment can understand IPaC without excessive simplification.
ASM-IPAC-009 — IPaC does not duplicate existing disciplines under new words.
```

## SECTION 4 — VALIDATION GAPS

Validation gaps are stored in `registers/PHASE6_VALIDATION_GAPS_REGISTER.csv`.

Core warning:

```text
Internal coherence and artifact support are not field validation.
Research support is not external validation.
```

## SECTION 5 — RESEARCH GAPS CONSOLIDATION

Phase 5 gaps are consolidated into the open questions and registers. Priority gaps:

```text
Knowledge Engineering boundary
Context Engineering depth
RAG / Knowledge Graph / Neo4j fit
Obsidian/Git as memory/runtime
Meaning Bottleneck field evidence
Knowledge Clump external terminology validation
```

## SECTION 6 — TERMINOLOGY RISKS

Terminology risks are stored in `registers/PHASE6_TERMINOLOGY_RISKS_REGISTER.csv`.

Most sensitive terms:

```text
Living Meaning
Knowledge Clump
Intersubjectivity
Resonance
Projection
Canon
Controlled Rebuild
```

## SECTION 7 — PARKED QUESTIONS

Parked questions are stored in `registers/PHASE6_PARKED_QUESTIONS_REGISTER.csv`.

Do not solve now:

```text
technical architecture
Codex integration
MCP / agent orchestration
RAG / Neo4j implementation
public channels
dashboard
LinkedIn / Telegram / Pinterest / YouTube
business model
enterprise adoption
full MVP scope
```

## SECTION 8 — QUESTIONS BY NEXT ACTION TYPE

Next actions are stored in `registers/PHASE6_NEXT_ACTIONS_REGISTER.csv`.

## SECTION 9 — OPEN QUESTIONS REGISTER

CSV-ready table: `registers/PHASE6_OPEN_QUESTIONS_REGISTER.csv`.

## SECTION 10 — CONTRADICTIONS REGISTER

CSV-ready table: `registers/PHASE6_CONTRADICTIONS_REGISTER.csv`.

## SECTION 11 — ASSUMPTIONS REGISTER

CSV-ready table: `registers/PHASE6_ASSUMPTIONS_REGISTER.csv`.

## SECTION 12 — FINAL SUMMARY

1. **Главный открытый вопрос IPaC:** отвечает ли IPaC на реальную внешнюю потребность, а не только на внутреннюю интеллектуально-системную боль?
2. **Самое опасное нерешённое противоречие:** Field Evidence vs Internal Coherence — внутренне система сильна, но ключевые claims пока не field-tested.
3. **Самое рискованное непроверенное предположение:** что внешний человек поймёт IPaC / Meaning Bottleneck / Knowledge Clump без чрезмерного упрощения.
4. **Самый важный research gap:** граница с Knowledge Engineering и Context Engineering.
5. **Самый важный validation gap:** отсутствие field evidence для Meaning Bottleneck и внешней проверки языка Knowledge Clump.
6. **Какие вопросы нельзя решать сейчас:** technical architecture, Codex, MCP, RAG/Neo4j, public channels, dashboard, business model, enterprise adoption, full MVP scope.
7. **Следующий шаг после Phase 6:** WAVE 2 CLOSURE / KNOWLEDGE RECOVERY PACK ASSEMBLY.