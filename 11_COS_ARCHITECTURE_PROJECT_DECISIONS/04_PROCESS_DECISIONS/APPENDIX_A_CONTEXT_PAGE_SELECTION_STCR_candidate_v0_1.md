# Appendix A — Context Page Selection Algorithm
## Приложение A — алгоритм выбора страниц контекста

```yaml
artifact_id: APPENDIX-A-CONTEXT-PAGE-SELECTION-STCR-2026-06-24-v0.1
artifact_type: appendix_candidate / selection_algorithm
status: candidate
canon_status: not_canon
created: 2026-06-24
```

---

# 1. Назначение

Appendix A (Приложение A) задаёт практический алгоритм выбора Context Pages (страниц контекста) для Thread (треда), Scene (сцены), Rehydration Brief (брифа повторного развёртывания) или Agent Task Pack (агентного пакета задач).

---

# 2. Input (вход)

```yaml
current_scene:
  goal:
  active_focus:
  roles:
  expected_output:
  verification:
  forbidden_noise:

candidate_pages:
  - page_id:
    title:
    page_type:
    status:
    provenance:
    relevance:
    resonance:
    risk:
    freshness:
    weight:
```

---

# 3. Scoring Model (модель оценки)

Каждая page (страница) получает оценку:

```text
Relevance Score (оценка релевантности): 0–3
Resonance Score (оценка резонанса): 0–3
Structural Reinforcement Score (оценка структурного усиления): 0–3
Risk Penalty (штраф риска): 0–3
Staleness Penalty (штраф устаревания): 0–3
Weight Penalty (штраф веса): 0–2
```

Рабочая формула-кандидат:

```text
Paging Priority (приоритет подкачки)
=
Relevance (релевантность)
+ Resonance (резонанс)
+ Structural Reinforcement (структурное усиление)
- Risk (риск)
- Staleness (устаревание)
- Weight (вес)
```

Статус формулы: candidate heuristic (эвристика-кандидат), not canon (не канон).

---

# 4. Selection Steps (шаги выбора)

```text
1. Remove invalidated pages (удалить из отбора инвалидированные страницы).
2. Remove forbidden pages (удалить из отбора запрещённые страницы).
3. Mark stale pages (пометить устаревшие страницы).
4. Score remaining pages (оценить оставшиеся страницы).
5. Select mandatory status pages (выбрать обязательные статусные страницы).
6. Select minimum rehydration set (выбрать минимальный набор повторного развёртывания).
7. Add high resonance pages (добавить высокорезонансные страницы).
8. Check context budget (проверить бюджет контекста).
9. Move overflow to optional pages (перенести избыток в дополнительные страницы).
10. Produce Context Bundle (сформировать контекстный пакет).
```

---

# 5. Output (выход)

```yaml
context_bundle_id:
status: candidate
canon_status: not_canon
for_scene:
required_pages:
  - page_id:
    reason:
    restores:
optional_pages:
  - page_id:
    reason:
    use_if:
forbidden_pages:
  - page_id:
    reason:
page_fault_watch:
  - missing_signal:
    recovery_action:
qa_check:
  status_guard: true
  provenance_present: true
  no_invalidated_pages: true
  human_review_required: true
```

---

# 6. Supervisor Decision Points (точки решения супервизора)

Supervisor (супервизор) обязан остановить подкачку, если:

```text
- required pages (обязательные страницы) больше 9 без причины;
- forbidden pages (запрещённые страницы) не указаны;
- нет provenance (происхождения);
- есть conflict pair (конфликтная пара);
- page priority (приоритет страницы) высокий только за счёт relevance (релевантности),
  но без resonance (резонанса);
- Context Bundle (контекстный пакет) может вызвать Overpaging (избыточную подкачку).
```
