# RULE — Boundary Reduction Test v0.1  
## Правило: проверка сведения IPaC к соседней области

```yaml
artifact_id: RULE-IPAC-BOUNDARY-REDUCTION-TEST-001
artifact_type: project_rule
status: accepted_project_rule_candidate
version: 0.1
layer: project_rules / research_protocol
scope: boundary research / reduction test / IPaC differentiation
date: 2026-06-13
canon_update_authorized: false
field_validated: process_rule
```

---

# 1. Rule Statement

Каждый boundary research sprint должен выполнять Reduction Test:

```text
Если свести IPaC к соседней области, что сохранится и что потеряется?
```

---

# 2. Reduction Test Questions

Обязательные вопросы:

```text
1. Какие элементы IPaC полностью покрывает соседняя область?
2. Какие элементы IPaC частично покрывает соседняя область?
3. Какие элементы IPaC не покрывает соседняя область?
4. Что потеряется, если IPaC назвать только этой областью?
5. Что, наоборот, соседняя область объясняет лучше, чем текущая лексика IPaC?
6. Какие claims IPaC нужно ослабить?
7. Какие claims IPaC можно усилить?
```

---

# 3. Required Output Table

Каждый report должен содержать таблицу:

| IPaC Component | Covered by Neighbor? | What Is Lost If Reduced? | Boundary Note |
|---|---|---|---|

---

# 4. Example from DR-002

В DR-002 Context Engineering покрывает:

```text
context pack;
model-visible state;
memory;
RAG;
tool context;
agent state;
token budget.
```

Но при сведении IPaC к Context Engineering теряются или ослабляются:

```text
artifact / canon distinction;
trace;
review;
decision;
controlled rebuild;
feedback → evidence discipline;
long-term knowledge lifecycle.
```

---

# 5. Why This Matters

Reduction Test защищает от двух ошибок:

```text
1. false novelty:
   думать, что IPaC полностью уникален;

2. false reduction:
   думать, что IPaC полностью сводится к соседней области.
```

---

# 6. Placement

```text
06_PROJECT_RULES/research_protocol/RULE_BOUNDARY_REDUCTION_TEST_v0_1.md
```

---

# 7. Status

```text
RULE_READY_FOR_LONG_TERM_USE
APPLIES_TO_ALL_BOUNDARY_RESEARCH_SPRINTS
```
