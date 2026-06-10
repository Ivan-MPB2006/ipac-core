# IPaC Obsidian Vault Structure v0.1

## 1. Vault Purpose

Obsidian Vault нужен как artifact-first knowledge base для IPaC Core Restoration Lab: хранить принятое boot-level ядро, source-of-truth пакеты, регистры, след решений, parking lot и будущие материалы импорта без превращения хранилища в execution/MVP/Codex-пространство.

## 2. Folder Structure

See: `00_START_HERE/03_VAULT_MAP.md`

## 3. File Naming Rules

Use names that show knowledge status, not only topic.

Recommended patterns:

```text
YYYY-MM-DD__TYPE__Topic.md
DOMAIN__Topic__v0_1.md
REGISTER_NAME.csv
```

Allowed status markers:

```text
ACCEPTED
ACCEPTED_WITH_NOTES
DRAFT
CANDIDATE
DEFERRED
PARKED
SUPERSEDED
UNREVIEWED
```

Avoid:

```text
FINAL
TRUE_VERSION
LATEST
REAL_FINAL
COMPLETE
```

## 4. What Goes Where

| Knowledge type | Placement |
|---|---|
| Core Canon v0.1 | `01_CANON/00_CORE_CANON/` |
| Root Need | `01_CANON/01_ROOT_NEED/` |
| Concept Core | `01_CANON/02_CONCEPT_CORE/` |
| Architecture Invariants | `01_CANON/03_ARCHITECTURE_INVARIANTS/` |
| Hypothesis Registry | `02_REGISTERS/01_HYPOTHESES/` |
| Research Map | `03_RESEARCH_MAP/` |
| Open Questions | `04_OPEN_QUESTIONS_AND_VALIDATION/` + `02_REGISTERS/03_OPEN_QUESTIONS/` |
| Validation Gaps | `04_OPEN_QUESTIONS_AND_VALIDATION/` + `02_REGISTERS/04_VALIDATION_GAPS/` |
| Lessons Learned | `05_LESSONS_LEARNED/` + `02_REGISTERS/07_LESSONS/` |
| Project Rules | `06_PROJECT_RULES/` + `02_REGISTERS/08_PROJECT_RULES/` |
| Parking Lot | `07_PARKING_LOT/` |
| Trace / Decision history | `08_TRACE_AND_DECISIONS/` |
| Source Packages | `09_SOURCE_PACKAGES/` |
| Future Wave 4 materials | `10_WAVE4_IMPORT_STAGING/` |

## 5. Core Canon Placement

Core Canon v0.1 lives in:

`01_CANON/00_CORE_CANON/IPaC_Core_Canon_v0_1.md`

It is active boot-level canon, not final canon.

## 6. Registers Placement

Registers live under `02_REGISTERS/` by domain. Narrative summaries may live elsewhere, but CSV register source files stay centralized.

## 7. Parking Lot Placement

Parking Lot lives in `07_PARKING_LOT/`. Parked does not mean rejected. Parked also does not mean active canon.

## 8. Trace / Decision Placement

Trace and decisions live in `08_TRACE_AND_DECISIONS/`. Canon says what is accepted; trace says why, when, and under what boundaries.

## 9. Source Packages Placement

Raw ZIPs live in `09_SOURCE_PACKAGES/raw_zips/`. Extracted readonly copies live in `09_SOURCE_PACKAGES/extracted_readonly/`.

## 10. What Must Not Be Stored as Canon

- old chats
- raw transcripts
- unreviewed Wave 4 materials
- MVP / MVI execution plans
- Codex implementation notes
- MCP / RAG / Neo4j design
- dashboard plans
- public-channel execution materials
- research support as validation proof
- polished synthesis without evidence
- candidate lists as architecture core

## 11. Minimal Manual Import Plan

1. Open this root folder as an Obsidian Vault.
2. Start with `00_START_HERE/00_PROJECT_INITIALIZATION.md`.
3. Review `00_START_HERE/03_VAULT_MAP.md`.
4. Confirm or paste exact accepted Core Canon text into `01_CANON/00_CORE_CANON/IPaC_Core_Canon_v0_1.md` if needed.
5. Use `02_REGISTERS/00_REGISTER_INDEX.md` to review registers.
6. Preserve `07_PARKING_LOT/` separately from canon.
7. Use `08_TRACE_AND_DECISIONS/` for every future accepted change.
8. Put future Wave 4 materials only into `10_WAVE4_IMPORT_STAGING/01_UNREVIEWED_INBOX/` until reviewed.

## 12. Next Step Toward Git

Next step is policy, not implementation:

`06_PROJECT_RULES/GIT_BOUNDARY_POLICY_v0_1.md`

Do not initialize Git until the boundary policy is reviewed.
