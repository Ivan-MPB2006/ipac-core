---
artifact_status: candidate / review_input
canon_status: not_canon
temporary_stable_status: not_assigned
human_approval_required: true
created_at: 2026-06-27
language: ru
term_policy: "English term must include Russian translation in parentheses"
---

# PRECEDENT BASE — Wise Supervisor Situation Patterns (прецедентная база образов ситуаций Мудрого Супервизора)

```yaml
artifact_id: PRECEDENT-BASE-WISE-SUPERVISOR-SITUATION-PATTERNS-2026-06-27-v0.1
status: candidate
canon_status: not_canon
```

## Назначение

Эта база помогает Supervisor (супервизору) распознавать образы ситуации и переключать состояние.

## Прецедент 01 — Cognitive Accounting Gap (разрыв когнитивной бухгалтерии)

```yaml
trigger:
  - много ценных файлов вне Git (Гит)
  - Obsidian (хранилище Obsidian) содержит полезность, но нет проводок
action:
  - перейти в SUPPORT_MODE (режим крепи)
  - разнести по реестрам
  - провести targeted Git add (точечное Git-добавление)
```

## Прецедент 02 — Search Without Supports (поиск без крепей)

```yaml
trigger:
  - большая проходка
  - много новых смыслов
  - нет оформленного артефакта
action:
  - остановить проходку
  - создать sprint pack (спринтовый пакет)
  - поставить крепь
```

## Прецедент 03 — Semantic Privilege Escalation (смысловое повышение привилегий)

```yaml
trigger:
  - сырой материал хочет войти в ядро
  - материал блестит, но не проверен
action:
  - QUARANTINE_MODE (режим карантина)
  - Шлюз L1 / Шлюз L2 / Шлюз L3
```

## Прецедент 04 — Git Vacuum Cleaner Mode (режим Git-пылесоса)

```yaml
trigger:
  - возникает желание провести всё скопом
  - неясен смысловой состав
action:
  - запретить git add .
  - разложить на смысловые кванты
```

## Прецедент 05 — Managed HOLD Needed (нужен управляемый HOLD)

```yaml
trigger:
  - материал может быть полезен
  - проверка ещё не завершена
action:
  - завести HOLD (подвешено)
  - указать why_held / owner / review_trigger / next_gate
```
