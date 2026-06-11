# Wave 4 Backlog and Parking Summary v0.1  
## Сводка backlog / parking по Wave 4 v0.1

```yaml
artifact_id: WAVE4-BACKLOG-PARKING-SUMMARY-001
artifact_type: parking_backlog_summary
status: active_parking_summary_candidate
version: 0.1
source: WAVE4_ADVANCED_DELTA_IMPORT_REVIEW_v0_1
source_path: 08_TRACE_AND_DECISIONS/reviews/WAVE4_ADVANCED_DELTA_IMPORT_REVIEW_v0_1.md
layer: parking_lot
field_validated: false
execution_authorized: false
mvi_authorized: false
codex_authorized: false
deep_research_authorized: false
```

---

# 0. Статус документа

Этот документ фиксирует элементы Wave 4, которые **не должны активироваться сейчас**, но должны быть сохранены как:

- review backlog;
- research backlog;
- MVI backlog;
- Codex backlog;
- execution backlog;
- tooling parking;
- public-field parking;
- speculative archive.

Документ НЕ запускает:

- MVP;
- MVI;
- Codex;
- MCP;
- RAG / Neo4j;
- Deep Research;
- public channels;
- dashboard;
- automation;
- execution plan.

Главный принцип:

```text
Сохранить ≠ активировать.
Backlog ≠ текущая работа.
Parking ≠ мусор.
Archive ≠ канон.
```

---

# 1. Назначение

Wave 4 выявила 41 advanced asset из старого чата.

Часть активов уже импортирована как safe rules и canon note.

Этот документ фиксирует оставшиеся группы:

```text
import_after_review
import_after_deep_research
park_for_later
archive_as_metaphor
```

Цель документа — сохранить ценные продвинутые наработки без преждевременного включения их в текущую работу.

---

# 2. Decision Summary

| Decision | Count | Meaning |
|---|---:|---|
| import_after_review | 7 | Ценные элементы, требующие отдельного review перед использованием |
| import_after_deep_research | 3 | Элементы, требующие Deep Research до любых claims |
| park_for_later | 12 | Ценные, но преждевременные элементы |
| archive_as_metaphor | 2 | Сильные метафоры, не предназначенные для активной повестки |
| reject_as_noise | 0 | Явного шума для удаления не обнаружено |

---

# 3. Imports Requiring Review  
## Элементы, требующие отдельного review

Эти элементы нельзя активировать сейчас.  
Они могут быть использованы только после отдельного bounded review.

| Asset | Name | Layer | Why Review Needed | Risk |
|---|---|---|---|---|
| W4-ASSET-010 | Codex methodical-agent guardrails | Codex Backlog | Требует review границ Codex | tool capture / execution drift |
| W4-ASSET-012 | Need → Artifact → Review cycle | MVI Backlog | Требует validation protocol review | false validation |
| W4-ASSET-014 | External reviewer feedback loop | MVI Backlog | Требует evidence-quality review | social desirability / false validation |
| W4-ASSET-017 | 71 / 72 / 73 Review–Decision–Trace route | Execution Backlog | Требует process minimalism review | bureaucracy / document proliferation |
| W4-ASSET-021 | Meaning Bottleneck small resonance test | MVI Backlog | Требует validation-design review | channel-driven thinking |
| W4-ASSET-023 | Feedback ledger / raw evidence register | Execution Backlog | Требует evidence schema review | overclassification |
| W4-ASSET-031 | Scrum / project discipline adaptation | Architecture Backlog | Требует governance review | borrowed-process overload |

Правило:

```text
Review-dependent items нельзя импортировать как active work.
Сначала review artifact → decision → trace.
```

---

# 4. Research-Dependent Items  
## Элементы, требующие Deep Research

Эти элементы нельзя использовать как утверждения или позиционирование IPaC без внешней исследовательской проверки.

| Asset | Name | Layer | Why Deep Research Needed | Risk |
|---|---|---|---|---|
| W4-ASSET-024 | Knowledge Engineering boundary research | Research Backlog | Нужно определить границу IPaC и Knowledge Engineering | terminology confusion |
| W4-ASSET-025 | Context Engineering boundary research | Research Backlog | Нужно определить границу IPaC и Context Engineering | fashion-term capture |
| W4-ASSET-026 | Software Engineering analogy lineage | Research Backlog | Нужно проверить аналогию с software engineering lineage | authority borrowing / historical overreach |

Правило:

```text
Research-dependent items можно хранить как вопросы.
Их нельзя использовать как доказанные основания.
```

---

# 5. Parked Items  
## Припаркованные элементы

Эти элементы ценны, но преждевременны.

| Asset | Name | Parking Reason | Return Condition |
|---|---|---|---|
| W4-ASSET-008 | Codex / VS Code as engineering execution layer | Риск premature implementation | После explicit Codex review и конкретной implementation need |
| W4-ASSET-009 | Obsidian + ChatGPT Project + Codex handoff | Риск toolchain drift | После toolchain boundary review |
| W4-ASSET-018 | 89 Feedback Package / 90 Review Protocol | Риск premature feedback machinery | После выбора validation mechanism |
| W4-ASSET-019 | External communication / resonance contour | Риск public-channel drift | После candidate review и communication boundary review |
| W4-ASSET-020 | LinkedIn / Site / Telegram / Pinterest / YouTube asset packs | Риск marketing-before-validation | После открытия public-channel strategy |
| W4-ASSET-022 | MVI release dashboard / day-by-day runbook | Риск execution planning | После выбора MVI и acceptance protocol |
| W4-ASSET-027 | Ted Nelson / Xanadu / hypertext lineage | Research lineage parked | Если lineage research станет active |
| W4-ASSET-033 | Champion / Challenger / Evaluator agent tuning lab | Слишком ранний multi-agent layer | После стабилизации AI role discipline |
| W4-ASSET-035 | MCP as future tool integration layer | Риск tool capture | После конкретной integration need |
| W4-ASSET-036 | RAG / Knowledge Graph / Neo4j support line | Риск architecture/tooling creep | После practical use case и research boundary |
| W4-ASSET-037 | n8n orchestration layer | Риск premature automation | После повторяемого manual workflow evidence |
| W4-ASSET-038 | IPaC book as public canon spine | Риск premature public canon | После накопления validation evidence |

Правило:

```text
Parked means preserved.
Parked does not mean selected.
Parked does not mean next.
Parked does not mean active.
Parked does not mean validated.
```

---

# 6. Speculative Archive  
## Спекулятивный архив

Эти элементы не должны оставаться в активной повестке.  
Их можно сохранить как метафоры / исторические следы.

| Asset | Name | Archive Reason | Risk |
|---|---|---|---|
| W4-ASSET-040 | Protein-silicon resonance | Сильная метафора, но не модель | metaphor mistaken for model |
| W4-ASSET-041 | Semantic superconductivity | Сильная метафора, но не архитектура | metaphor mistaken for architecture |

Правило:

```text
Preserve as metaphor.
Do not use as proof.
Do not use as architecture.
Do not use as research finding.
Do not use as public positioning without separate review.
```

---

# 7. Dangerous Activation Zones

Следующие зоны нельзя активировать без отдельного решения:

## 7.1 Codex / VS Code / MCP

Риск:

```text
tool capture
execution drift
premature implementation
```

Запрет:

```text
Codex / MCP не подключать без task pack,
acceptance criteria,
Git rollback,
и bounded execution scope.
```

## 7.2 Public Channels

Риск:

```text
channel-driven thinking
marketing-before-validation
false resonance
```

Запрет:

```text
LinkedIn / Telegram / YouTube / public site
не использовать как substitute for field validation.
```

## 7.3 Dashboard / Runbooks

Риск:

```text
execution simulation
document proliferation
architecture-as-delay
```

Запрет:

```text
Dashboard не создавать до выбора MVI и proof of need.
```

## 7.4 Agent Labs

Риск:

```text
multi-agent chaos
role confusion
automation before discipline
```

Запрет:

```text
Champion / Challenger / Evaluator labs
не открывать до стабилизации AI role boundaries.
```

---

# 8. Obsidian Placement Strategy

Пока не создавать отдельный файл под каждый parked asset.

На текущем этапе достаточно одного сводного файла:

```text
07_PARKING_LOT/WAVE4_BACKLOG_AND_PARKING_SUMMARY_v0_1.md
```

Позже, при необходимости, отдельные элементы могут быть вынесены в специальные файлы:

```text
07_PARKING_LOT/codex/
07_PARKING_LOT/tooling/
07_PARKING_LOT/public_field/
07_PARKING_LOT/automation/
07_PARKING_LOT/speculative_metaphors/
03_RESEARCH_MAP/backlog/
```

Но это делать только если появляется реальный workflow gap.

Правило:

```text
Не создавать 24 файла,
если один сводный документ закрывает текущую потребность.
```

---

# 9. Relationship to Existing Artifacts

Связанные документы:

```text
01_CANON/00_CORE_CANON/00_IPaC_CONSTITUTION_v0_1.md
01_CANON/00_CORE_CANON/01_LIFECYCLE_MAP_LIVING_MEANING_TO_UPDATED_CANON_v0_1.md
06_PROJECT_RULES/WAVE4_SAFE_PROJECT_RULES_v0_1.md
06_PROJECT_RULES/MULTI_LAYER_KNOWLEDGE_REPRESENTATION_v0_1.md
00_START_HERE/04_OBSIDIAN_GIT_STRUCTURAL_REFERENCES_v0_1.md
08_TRACE_AND_DECISIONS/reviews/WAVE4_ADVANCED_DELTA_IMPORT_REVIEW_v0_1.md
```

---

# 10. Next Possible Batches

Возможные будущие Batch-и:

```text
Batch 5 — Research Backlog Placeholders
Batch 6 — Parking Lot Expansion
Batch 7 — Speculative Metaphor Archive
Batch 8 — Codex Backlog Review
```

Но сейчас они не активируются.

---

# 11. Git Commit Recommendation

Рекомендуемый commit:

```text
parking: add Wave 4 backlog and parking summary
```

---

# 12. Status

```text
status: active_parking_summary_candidate
execution_authorized: false
mvi_authorized: false
codex_authorized: false
deep_research_authorized: false
field_validated: false
```

---

# 13. Короткая формула

```text
Wave 4 Backlog сохраняет энергию продвинутых наработок,
но не даёт им преждевременно стать текущей работой.
```
