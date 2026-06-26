# RULE — Feasibility and Expediency Before Polish v0.1
## Правило: сначала реализуемость, затем целесообразность, потом полировка

```yaml
artifact_id: RULE-FEASIBILITY-EXPEDIENCY-BEFORE-POLISH-v0.1
artifact_type: process_rule / mvp_gate / anti_waterfall_guardrail
status: candidate
canon_status: not_canon
date: 2026-06-21
project: IPaC
include_in: DAILY_REGISTER_2026-06-21
```

# 1. Формула правила

```text
Сначала доказать принципиальную реализуемость.
Потом доказать принципиальную целесообразность.
Только после этих двух апрувов — улучшать и полировать.
```

# 2. Причина

Внеплановая Human Inspection показала риск процесса старого типа:

```text
много локальной аккуратности;
много микрополировки;
много gate-ов;
нет предъявляемого комплексного результата.
```

Заказчику и внешнему оппоненту нужен отчуждаемый комплексный результат, а не корзина деталей.

# 3. Feasibility Gate / ворота принципиальной реализуемости

Нужно доказать:

```text
это в принципе можно собрать;
есть рабочий путь к MVP;
есть минимальный исполнительный контур;
есть проверяемый результат;
Codex может понять и оценить пакет.
```

Статус до прохождения:

```text
FEASIBILITY_NOT_PROVED
```

Статус после прохождения:

```text
FEASIBILITY_APPROVED
```

# 4. Expediency Gate / ворота принципиальной целесообразности

Нужно доказать:

```text
это стоит делать;
это решает реальную боль;
это даёт пользователю ценность;
это снижает сложность;
это ускоряет смысловое производство;
это не является автоматизацией ради автоматизации.
```

Статус до прохождения:

```text
EXPEDIENCY_NOT_PROVED
```

Статус после прохождения:

```text
EXPEDIENCY_APPROVED
```

# 5. Запрет до двух апрувов

До `FEASIBILITY_APPROVED` и `EXPEDIENCY_APPROVED` запрещено:

```text
полировать микромодули;
плодить протоколы ради протоколов;
писать полную архитектуру;
заполнять весь комплект документации;
канонизировать IPaC OS;
запускать сложный Codex-контур без Task Pack;
улучшать сегмент моста, если не доказано, что мост на той реке.
```

# 6. Новый режим

```text
Visible Complex Result
→ Feasibility Test
→ Expediency Test
→ MVP Task Pack
→ Codex Review
→ Improve / Polish only after approval
```

# 7. Правило для Supervisor

Supervisor должен проверять:

```text
1. Есть ли видимый комплексный результат?
2. Доказана ли принципиальная реализуемость?
3. Доказана ли принципиальная целесообразность?
4. Не началась ли преждевременная полировка?
5. Не уходит ли процесс в водопад?
```

Если нет видимого результата:

```text
VISIBLE_RESULT_FIRST
```

Если нет реализуемости:

```text
FEASIBILITY_GATE_REQUIRED
```

Если нет целесообразности:

```text
EXPEDIENCY_GATE_REQUIRED
```

# 8. Status

```text
RULE_CANDIDATE_CREATED
PROCESS_PIVOT_TO_VISIBLE_COMPLEX_RESULT
FEASIBILITY_BEFORE_POLISH
EXPEDIENCY_BEFORE_POLISH
CODEX_REVIEW_PACK_REQUIRED
```
