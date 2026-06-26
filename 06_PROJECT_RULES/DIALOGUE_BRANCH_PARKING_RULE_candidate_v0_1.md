# Dialogue Branch Parking Rule v0.1
## Правило парковки ветвей диалога

```yaml
artifact_id: DIALOGUE-BRANCH-PARKING-RULE-2026-06-24-v0.1
artifact_type: rule_candidate / dialogue_discipline
status: candidate
canon_status: not_canon
project: IPaC_NIR_SEMANTIC_OS
created: 2026-06-24
```

---

# 1. Главная формула

```text
Интересная ветка не должна теряться,
но и не должна уводить нас с целевой темы.

Мы её обозначаем,
даём ей имя,
фиксируем её потенциал,
кладём в Parking / Backlog (парковку / бэклог),
и возвращаемся к Mainline (магистральной линии).
```

---

# 2. Минимальный формат

```yaml
BRANCH_DETECTED:
  name:
  why_resonant:
  possible_value:
  risk_if_ignored:
  risk_if_followed_now:
  recommended_routing:
  return_to_mainline:
```

---

# 3. Рабочие команды

```text
ВЕТКА ОБНАРУЖЕНА:
  фиксируем, но не разворачиваем.

ПАРКУЕМ:
  уводим в Parking Lot (парковку).

НЕ ТЕРЯЕМ:
  добавляем в Open Debts (открытые долги).

ВОЗВРАЩАЕМСЯ В МАГИСТРАЛЬ:
  продолжаем целевую тему.

РАЗРЕШАЮ ОТКЛОНЕНИЕ:
  человек явно разрешает временно уйти в ветку.
```
