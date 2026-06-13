# RULE — Source Quality Gate v0.1  
## Правило: качество источников ограничивает силу вывода

```yaml
artifact_id: RULE-IPAC-SOURCE-QUALITY-GATE-001
artifact_type: project_rule
status: accepted_project_rule_candidate
version: 0.1
layer: project_rules / research_protocol
scope: source quality / research reliability / claim strength
date: 2026-06-13
canon_update_authorized: false
field_validated: process_rule
```

---

# 1. Rule Statement

```text
Сила исследовательского вывода не может превышать качество источников.
```

Если источники слабые, выводы должны быть слабыми, осторожными и явно ограниченными.

---

# 2. Source Classes

Каждый research report должен классифицировать источники.

| Source Class | Typical Strength | Notes |
|---|---|---|
| Primary source | high | первичные статьи, стандарты, официальные документы |
| Standard / specification | high | W3C, ISO, RFC, official protocol specs |
| Academic survey | high-medium | useful for field map |
| Peer-reviewed paper | medium-high | depends on venue and age |
| Book / textbook | medium-high | useful for mature disciplines |
| Vendor documentation | medium | strong for product practice, weak for discipline status |
| Practitioner blog | medium-low | useful for discourse, weak for mature claims |
| Social post / quote | low | useful for term popularization, not evidence of discipline |
| Marketing page | low | weak source, must be marked |
| arXiv preprint | variable | useful but not settled evidence |

---

# 3. Required Output Section

Каждый report должен содержать:

```text
## Source Quality Assessment
```

Таблица:

| Source | Source Class | What It Supports | What It Does Not Support | Claim Strength Allowed |
|---|---|---|---|---|

---

# 4. Claim Strength Levels

| Level | Meaning |
|---|---|
| Strong evidence | можно делать устойчивый research-supported claim |
| Moderate evidence | можно делать осторожный claim |
| Weak evidence | только hypothesis / possible interpretation |
| Anecdotal signal | нельзя использовать как основание для decision |
| Marketing signal | только как evidence of discourse / positioning |

---

# 5. Example from DR-002

Context Engineering как named field опирается в основном на:

```text
practitioner blogs;
vendor documentation;
arXiv preprints;
early benchmarks.
```

Поэтому сильный вывод:

```text
Context Engineering is a mature engineering discipline
```

не разрешён.

Более корректный вывод:

```text
Context Engineering currently appears to be an emerging AI-era practice cluster.
```

---

# 6. Anti-pattern

```text
Красивый отчёт + слабые источники = сильный вывод.
```

Запрещено.

---

# 7. Placement

```text
06_PROJECT_RULES/research_protocol/RULE_SOURCE_QUALITY_GATE_v0_1.md
```

---

# 8. Status

```text
RULE_READY_FOR_LONG_TERM_USE
APPLIES_TO_ALL_RESEARCH_REPORTS
```
