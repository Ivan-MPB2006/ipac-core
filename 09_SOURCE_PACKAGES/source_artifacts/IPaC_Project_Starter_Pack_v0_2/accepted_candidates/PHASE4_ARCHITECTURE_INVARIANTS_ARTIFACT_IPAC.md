# PHASE 4 — ARCHITECTURE INVARIANTS ARTIFACT
# Архитектурные инварианты

**Проект:** IPaC / Information Production as Code  
**Контур:** Phase 4 / Architecture Invariants / Stable System Core  
**Тип документа:** отчуждаемый информационный артефакт / реестр архитектурных инвариантов  
**Версия:** v0.1  
**Статус:** accepted-candidate  
**Дата:** 2026-06-08  

---

## 0. Назначение документа

Этот документ исправляет прежнее понимание Phase 4 как execution-фазы. В текущей версии Phase 4 фиксирует только **устойчивые архитектурные инварианты IPaC**.

Документ не проектирует систему заново, не формирует execution plan, не формирует MVP и не обсуждает каналы публикации как ядро архитектуры.

Задача документа — отделить:

```text
устойчивое архитектурное ядро
от временных execution-решений, каналов, запусков, dashboard-ов и операционных планов.
```

## 1. Критические правила извлечения

```text
не добавлять новых идей;
не улучшать архитектуру;
не проектировать систему заново;
не переходить к исполнению;
отделять устойчивые инварианты от временных решений;
если элемент относится к execution, помечать его как execution candidate, но не включать в архитектурное ядро.
```

## 2. Сводка

**Всего инвариантов:** 35

### По категориям

| Категория | Количество |
|---|---:|
| Core system boundaries | 4 |
| Core entities | 8 |
| Stable relationships | 4 |
| Information flows | 4 |
| Governance principles | 4 |
| Knowledge lifecycle invariants | 3 |
| Human-AI role separation | 2 |
| What must not be broken | 3 |
| What is explicitly NOT architecture | 3 |

### По уровню уверенности

| Confidence level | Количество |
|---|---:|
| high | 32 |
| medium-high | 3 |

---

## 3. Реестр архитектурных инвариантов

### AINV-IPAC-001 — IPaC boundary: information production, not generic document management

**Категория:** Core system boundaries  
**Confidence level:** `high`

**Описание:**  
IPaC is bounded around production, preservation, validation, circulation and evolution of living knowledge. It is not document workflow, content publishing or task management.

**Evidence / основания:**  
Need/Concept artifacts repeatedly distinguish living knowledge circulation from document workflow.

**What must not be broken:**  
Do not reduce IPaC to document management, content operations, marketing workflow or task tracking.

---

### AINV-IPAC-002 — Living knowledge boundary

**Категория:** Core system boundaries  
**Confidence level:** `high`

**Описание:**  
The core object is living knowledge: knowledge with context, use, feedback, review, canon update potential and trace.

**Evidence / основания:**  
Knowledge Clump and Living Knowledge repeatedly serve as core concepts.

**What must not be broken:**  
Do not treat files as the primary object and knowledge as a byproduct.

---

### AINV-IPAC-003 — Architecture vs execution boundary

**Категория:** Core system boundaries  
**Confidence level:** `high`

**Описание:**  
Stable internal invariants must be separated from temporary execution choices.

**Evidence / основания:**  
User explicitly corrected Phase 4: architecture invariants, not execution plans, MVPs or publication mechanics.

**What must not be broken:**  
Do not canonize execution mechanisms as architectural core.

**Execution candidate note:**  
Specific channels, dashboards, publication waves and launch plans are execution candidates.

---

### AINV-IPAC-004 — Human-AI collaboration boundary

**Категория:** Core system boundaries  
**Confidence level:** `high`

**Описание:**  
AI is included as methodological guide and continuity layer; the human remains the subject carrying intent, authorship and final judgement.

**Evidence / основания:**  
AI Mentor Layer established this boundary.

**What must not be broken:**  
Do not transfer authorship or final strategic judgement from human to AI.

---

### AINV-IPAC-005 — Human Subject

**Категория:** Core entities  
**Confidence level:** `high`

**Описание:**  
Human Subject carries living intention, intuition, direction, judgement, authorship and the final 'то / не то' evaluation.

**Evidence / основания:**  
Intersubjectivity and AI Mentor Layer repeatedly define this role.

**What must not be broken:**  
Do not remove human subjecthood from meaning and strategic decisions.

---

### AINV-IPAC-006 — AI Mentor / Methodological Guide

**Категория:** Core entities  
**Confidence level:** `high`

**Описание:**  
AI Mentor holds frameworks, formal schemes, boot/handoff/recovery discipline and helps convert living intent into structured artifacts.

**Evidence / основания:**  
AI Mentor Layer pack and mentor discussion.

**What must not be broken:**  
Do not let AI Mentor become guru, commander or author-substitute.

---

### AINV-IPAC-007 — Knowledge Clump / Знаниевый Сгусток

**Категория:** Core entities  
**Confidence level:** `high`

**Описание:**  
Central knowledge formation: artifacts plus context, history, decisions, links, use, feedback, implicit meaning and emergent potential.

**Evidence / основания:**  
Defined and reused as the core object of IPaC.

**What must not be broken:**  
Do not flatten Knowledge Clump into a folder, summary, archive or single document.

---

### AINV-IPAC-008 — Knowledge Artifact

**Категория:** Core entities  
**Confidence level:** `high`

**Описание:**  
Explicit projections of the Knowledge Clump: documents, prompts, schemas, registers, status files, maps, diagrams and packages.

**Evidence / основания:**  
Every phase produces portable artifacts with README/MANIFEST/status/registers/maps.

**What must not be broken:**  
Do not confuse artifact with the whole Knowledge Clump.

---

### AINV-IPAC-009 — Canon

**Категория:** Core entities  
**Confidence level:** `high`

**Описание:**  
Current accepted state of definitions, formulas, decisions, routes, boundaries and stable project knowledge.

**Evidence / основания:**  
Canon appears as memory spine for continuity, boot, updates and trace.

**What must not be broken:**  
Do not update canon directly from raw feedback or temporary excitement.

---

### AINV-IPAC-010 — Trace

**Категория:** Core entities  
**Confidence level:** `high`

**Описание:**  
Preserved history of how knowledge, decisions, artifacts and status changes emerged, changed and were used.

**Evidence / основания:**  
Decision records, status files, Git/Obsidian trace and learning patches.

**What must not be broken:**  
Do not lose decision history, source context or reasons for change.

---

### AINV-IPAC-011 — Feedback / Evidence

**Категория:** Core entities  
**Confidence level:** `high`

**Описание:**  
Feedback is raw evidence from use or environment. It is not a conclusion or immediate command to change canon.

**Evidence / основания:**  
Feedback as Evidence and 'Raw first, interpret later'.

**What must not be broken:**  
Do not treat likes, silence, comments or reactions as conclusions without review.

---

### AINV-IPAC-012 — Projection

**Категория:** Core entities  
**Confidence level:** `medium-high`

**Описание:**  
Outward or inward expression of a Knowledge Clump into a specific form, audience, context or use. Channels are carriers; projection is the invariant.

**Evidence / основания:**  
Repeated distinction between core clump and channel outputs/artifacts.

**What must not be broken:**  
Do not make any one projection equal to the core concept.

**Execution candidate note:**  
Specific external channels are execution candidates.

---

### AINV-IPAC-013 — Human Subject ↔ AI Mentor

**Категория:** Stable relationships  
**Confidence level:** `high`

**Описание:**  
Intersubjective collaboration: human gives intent and judgement; AI gives structure, frameworks, trace discipline and artifact generation.

**Evidence / основания:**  
Intersubjectivity and mentor discussions stabilize this relation.

**What must not be broken:**  
Do not collapse into command-response or autonomous AI control.

---

### AINV-IPAC-014 — Knowledge Clump → Artifact

**Категория:** Stable relationships  
**Confidence level:** `high`

**Описание:**  
Artifacts are projections, carriers and operational surfaces of the Knowledge Clump, not substitutes for it.

**Evidence / основания:**  
Thread exports, phase artifacts, prompt packs and diagrams serve as projections.

**What must not be broken:**  
Do not let artifact production replace knowledge continuity.

---

### AINV-IPAC-015 — Feedback → Review → Canon

**Категория:** Stable relationships  
**Confidence level:** `high`

**Описание:**  
Feedback must be preserved, reviewed and only then potentially routed into canon or next projection decisions.

**Evidence / основания:**  
Established as raw feedback → evidence/noise separation → review → decision → trace.

**What must not be broken:**  
Do not update canon from unreviewed feedback.

**Execution candidate note:**  
Specific numbered protocols are execution/governance implementations.

---

### AINV-IPAC-016 — Canon ↔ Trace

**Категория:** Stable relationships  
**Confidence level:** `high`

**Описание:**  
Canon holds current accepted state; trace records how that state came to be and changes.

**Evidence / основания:**  
Decision records, status files, Git/Obsidian trace and learning patches.

**What must not be broken:**  
Do not separate accepted knowledge from its change history.

---

### AINV-IPAC-017 — Living impulse to structured artifact flow

**Категория:** Information flows  
**Confidence level:** `high`

**Описание:**  
A recurring flow turns living impulse into formula, structure, artifact, status and next route.

**Evidence / основания:**  
Repeated pattern: impulse → formula → block → package → status.

**What must not be broken:**  
Do not skip formulation and status fixation.

---

### AINV-IPAC-018 — Artifact to bootable context flow

**Категория:** Information flows  
**Confidence level:** `high`

**Описание:**  
Artifacts must be packaged so another Project, plan or agent can recover context: README, MANIFEST, status, registers and primary docs.

**Evidence / основания:**  
Every major package used this structure; bootability became stable.

**What must not be broken:**  
Do not create non-portable artifacts without orientation/status layers.

---

### AINV-IPAC-019 — Feedback to learning flow

**Категория:** Information flows  
**Confidence level:** `high`

**Описание:**  
Raw feedback flows into evidence preservation, classification, review, decision candidates and trace before becoming learning.

**Evidence / основания:**  
Feedback discipline repeatedly fixed this flow.

**What must not be broken:**  
Do not transform reaction directly into learning.

---

### AINV-IPAC-020 — Handoff flow between environments

**Категория:** Information flows  
**Confidence level:** `high`

**Описание:**  
Moving between chats, Projects, plans or agents requires current status, decisions, open loops, one next action, not-doing and needed files.

**Evidence / основания:**  
Handoff Protocol and Mentor Layer established continuity invariant.

**What must not be broken:**  
Do not start new environments without handoff/boot recovery.

---

### AINV-IPAC-021 — No canon update without review

**Категория:** Governance principles  
**Confidence level:** `high`

**Описание:**  
Canon must not be changed directly from raw reaction, speculation or temporary execution signals.

**Evidence / основания:**  
Repeated across Feedback as Evidence and review protocols.

**What must not be broken:**  
Never let raw feedback become immediate canon.

---

### AINV-IPAC-022 — Maturity separation

**Категория:** Governance principles  
**Confidence level:** `high`

**Описание:**  
Concepts must be classified by maturity and not prematurely promoted into architecture.

**Evidence / основания:**  
Phase 2 maturity classification and Phase 3 hypothesis statuses.

**What must not be broken:**  
Do not treat powerful metaphors as validated architecture.

---

### AINV-IPAC-023 — Architecture / execution separation

**Категория:** Governance principles  
**Confidence level:** `high`

**Описание:**  
Stable architecture must be separated from execution candidates such as channels, launch plans, dashboards and specific tooling choices.

**Evidence / основания:**  
User explicitly corrected Phase 4 to architecture invariants only.

**What must not be broken:**  
Do not smuggle execution planning into architecture artifacts.

**Execution candidate note:**  
Execution candidates can be tracked separately.

---

### AINV-IPAC-024 — Evidence-based hypothesis promotion

**Категория:** Governance principles  
**Confidence level:** `high`

**Описание:**  
Hypotheses move toward validated status only when evidence is captured and routed through review and trace.

**Evidence / основания:**  
Phase 3 rule: no status upgrade without evidence.

**What must not be broken:**  
Do not promote unresolved/speculative ideas based on attractiveness alone.

---

### AINV-IPAC-025 — Knowledge lifecycle invariant

**Категория:** Knowledge lifecycle invariants  
**Confidence level:** `high`

**Описание:**  
Stable lifecycle: impulse → formulation → structuring → artifact → canon/trace → projection/use → feedback/evidence → review → decision → updated canon/trace.

**Evidence / основания:**  
Lifecycle appears in diagrams, Need/Concept artifacts and living knowledge discussions.

**What must not be broken:**  
Do not remove feedback, review or trace from the lifecycle.

---

### AINV-IPAC-026 — Portability invariant

**Категория:** Knowledge lifecycle invariants  
**Confidence level:** `high`

**Описание:**  
Knowledge must be portable across contexts without losing status, origin, structure or next route.

**Evidence / основания:**  
ZIP packages, boot protocols and portation work.

**What must not be broken:**  
Do not create artifacts understandable only inside one chat context.

---

### AINV-IPAC-027 — Rebuild invariant

**Категория:** Knowledge lifecycle invariants  
**Confidence level:** `medium-high`

**Описание:**  
Living knowledge must be able to rebuild itself based on reviewed evidence and trace while preserving continuity.

**Evidence / основания:**  
Controlled rebuild, learning patches, canon updates and trace repeatedly appear.

**What must not be broken:**  
Do not rebuild without trace or continuity.

---

### AINV-IPAC-028 — Human owns intent and strategic judgement

**Категория:** Human-AI role separation  
**Confidence level:** `high`

**Описание:**  
Human owns living intention, authorship, strategic choice, acceptance/rejection and judgement of whether the result is 'то / не то'.

**Evidence / основания:**  
Consistent across intersubjectivity and AI Mentor Layer.

**What must not be broken:**  
Do not make AI owner of intention.

---

### AINV-IPAC-029 — AI owns methodological support, not authorship

**Категория:** Human-AI role separation  
**Confidence level:** `high`

**Описание:**  
AI provides methods, structure, frameworks, comparison, risk detection, formatting, status discipline and operational packaging.

**Evidence / основания:**  
AI Mentor defined as methodological guide and continuity layer.

**What must not be broken:**  
Do not present AI guidance as final authority or project authorship.

---

### AINV-IPAC-030 — Do not break living meaning into dead documentation

**Категория:** What must not be broken  
**Confidence level:** `high`

**Описание:**  
Formalization must preserve living core, context, trace and capacity for further development.

**Evidence / основания:**  
Central tension: formalize without killing living meaning.

**What must not be broken:**  
Do not over-bureaucratize into lifeless templates.

---

### AINV-IPAC-031 — Do not break bootability

**Категория:** What must not be broken  
**Confidence level:** `high`

**Описание:**  
Any project state must remain recoverable in a new context through instructions, sources, status and handoff.

**Evidence / основания:**  
Portation phase and Mentor Layer make bootability central.

**What must not be broken:**  
Do not leave important state only in implicit conversation memory.

---

### AINV-IPAC-032 — Do not break architecture/execution distinction

**Категория:** What must not be broken  
**Confidence level:** `high`

**Описание:**  
Temporary implementation choices must not be mistaken for stable architecture.

**Evidence / основания:**  
User’s correction to Phase 4 directly requires this distinction.

**What must not be broken:**  
Do not include MVP/channel/publication mechanics in architectural core.

**Execution candidate note:**  
Track them as execution candidates.

---

### AINV-IPAC-033 — Specific publication channels are not architecture

**Категория:** What is explicitly NOT architecture  
**Confidence level:** `high`

**Описание:**  
Named publication channels and channel sequences are execution candidates, not architecture invariants. The invariant is projection/use/feedback.

**Evidence / основания:**  
User explicitly instructed not to discuss publication channels unless invariant.

**What must not be broken:**  
Do not make any specific channel part of core architecture.

**Execution candidate note:**  
Channels remain execution candidates.

---

### AINV-IPAC-034 — Dashboards, launch runbooks and MVP plans are not architecture

**Категория:** What is explicitly NOT architecture  
**Confidence level:** `high`

**Описание:**  
Dashboards, launch runbooks and MVP/MVI plans support execution, but are not core architecture unless abstracted into governance/feedback-flow invariants.

**Evidence / основания:**  
User explicitly requested no execution plan, MVP or publication mechanics.

**What must not be broken:**  
Do not include operational dashboards or launch sequences as architecture.

**Execution candidate note:**  
They remain execution/governance candidates.

---

### AINV-IPAC-035 — Specific numbered protocols are implementation forms, not the invariant itself

**Категория:** What is explicitly NOT architecture  
**Confidence level:** `medium-high`

**Описание:**  
Numbered protocols and document IDs are useful forms, but the invariant is the role: review, decision, trace, boot, handoff, recovery.

**Evidence / основания:**  
Many numbered artifacts were created; user asks to extract stable invariants rather than execution artifacts.

**What must not be broken:**  
Do not confuse artifact numbering with architecture.

**Execution candidate note:**  
Specific IDs are execution/canon references, not architecture by themselves.

---

## 4. Core system boundaries

```text
IPaC работает с производством и оборотом живого знания, а не с обычным документооборотом.
Первичный объект — Knowledge Clump / living knowledge, а не файл или публикация.
Архитектура отделена от execution-кандидатов.
ИИ является методологическим проводником, но не субъектом авторства.
Canon и Trace являются обязательными слоями памяти и изменения.
Feedback является evidence, но не непосредственным решением.
```

## 5. Core entities

```text
Human Subject
AI Mentor / Methodological Guide
Knowledge Clump
Knowledge Artifact
Canon
Trace
Feedback / Evidence
Projection
External / Use Environment
```

## 6. Stable relationships

```text
Human Subject ↔ AI Mentor
Knowledge Clump → Artifacts
Raw Feedback → Review → Canon
Canon ↔ Trace
Knowledge Clump → Projection → Environment → Feedback
Artifact → Bootable Context
```

## 7. Information flows

```text
Living impulse → Formula → Structure → Artifact → Canon / Trace
Knowledge Artifact → Bootable Context → New Project / Agent
Projection / Use → Raw Feedback → Evidence Preservation → Review → Decision Candidate → Trace
Handoff → Context Recovery → Current Status → One Next Action
```

## 8. Governance principles

```text
No canon update without review.
No hypothesis status upgrade without evidence.
Separate mature, preliminary and speculative concepts.
Separate architecture from execution.
Preserve human authorship and strategic judgement.
Preserve trace for all meaningful state changes.
```

## 9. Knowledge lifecycle invariants

```text
impulse
→ formulation
→ structuring
→ artifact
→ canon / trace
→ projection / use
→ feedback / evidence
→ review
→ decision
→ updated canon / trace
```

## 10. Human-AI role separation

```text
Human: intent, authorship, judgement, acceptance, strategic choice.
AI: methodology, structure, frameworks, risk detection, packaging, continuity support.
Shared field: intersubjective collaboration.
Boundary: AI does not replace the subject.
```

## 11. What must not be broken

```text
living meaning;
human subjecthood;
Knowledge Clump integrity;
canon / trace connection;
feedback review discipline;
bootability;
handoff continuity;
distinction between architecture and execution;
distinction between mature / preliminary / speculative concepts.
```

## 12. What is explicitly NOT architecture

```text
specific publication channels;
specific launch sequences;
MVP / MVI execution plans;
operational dashboards;
daily runbooks;
content calendars;
visual/social media tactics;
specific document numbers when detached from their stable function.
```

These items may remain useful as execution candidates, but they are not the architectural core.

## 13. Status

```yaml
artifact_id: PHASE4-ARCHITECTURE-INVARIANTS-IPAC-001
artifact_type: architecture_invariants_artifact
version: v0.1
status: accepted-candidate
phase: Phase 4
project: IPaC / Information Production as Code
previous_artifacts:
  - PHASE1-NEED-ARTIFACT-IPAC-001
  - PHASE2-CONCEPT-ARTIFACT-IPAC-001
  - PHASE3-HYPOTHESIS-REGISTRY-IPAC-001
supersedes:
  - previous Phase 4 Execution Artifact as Phase 4 naming
note: execution material remains valuable but should be reclassified outside architecture invariants
```

## 14. Главная формула

```text
Архитектура IPaC — это не набор каналов, запусков или документов.
Архитектура IPaC — это устойчивый контур живого знания:
субъект, ИИ-наставник, Знаниевый Сгусток, артефакты, канон, trace, feedback, review и пересборка.
```
