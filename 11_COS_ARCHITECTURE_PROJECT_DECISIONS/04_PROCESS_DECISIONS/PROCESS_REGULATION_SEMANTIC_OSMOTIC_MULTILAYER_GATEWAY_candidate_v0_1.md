---
artifact_status: candidate / review_input
canon_status: not_canon
temporary_stable_status: not_assigned
human_approval_required: true
created_at: 2026-06-27
language: ru
term_policy: "English term must include Russian translation in parentheses"
---

# PROCESS REGULATION — Semantic Osmotic Multilayer Gateway (процессное положение смыслового осмотического многоярусного шлюза)

```yaml
artifact_id: PROCESS-REGULATION-SEMANTIC-OSMOTIC-MULTILAYER-GATEWAY-2026-06-27-v0.1
status: candidate
canon_status: not_canon
```

## 1. Назначение

Это process regulation (процессное положение) описывает прохождение нового смыслового материала через Semantic Osmotic Gateway (смысловой осмотический шлюз).

## 2. Входной объект

```yaml
input_object:
  name: raw_external_material
  перевод: сырой внешний материал
  examples:
    - новая идея
    - внешний сигнал
    - чужой фрейм
    - сильная метафора
    - кризисный инсайт
```

## 3. Запрещённый переход

```yaml
forbidden_transition:
  from: raw_external_material
  to: supervisor_control_code
  перевод_to: код управления Supervisor (супервизора)
  reason: semantic_privilege_escalation
  перевод_reason: смысловое повышение привилегий
```

## 4. Шлюз L1

Шлюз L1 выполняет первичную фиксацию.

```yaml
gate_L1:
  required:
    - source
    - raw_claim
    - why_it_shines
    - possible_utility
    - possible_destruct
  output:
    - reject
    - HOLD
    - gate_L2_candidate
```

## 5. Шлюз L2

Шлюз L2 проверяет совместимость с языком и онтологией системы.

```yaml
gate_L2:
  required:
    - compatibility_check
    - ontology_substitution_check
    - conflict_with_current_rules
    - cognitive_accounting_note
  output:
    - reject
    - HOLD
    - gate_L3_candidate
```

## 6. Шлюз L3

Шлюз L3 проводит испытание в контролируемой внутренней среде.

```yaml
gate_L3:
  required:
    - controlled_use_case
    - observed_tensions
    - rollback_path
    - usefulness_score
    - risk_score
  output:
    - reject
    - HOLD
    - ADMITTED
```

## 7. ADMITTED (допущен)

ADMITTED (допущен) означает: материал можно использовать во внутренней среде под наблюдением Supervisor (супервизора).

```yaml
ADMITTED:
  rights:
    - limited_internal_use
    - monitored_application
  not_allowed:
    - direct_core_control
    - unversioned_baseline
```

## 8. Temporary Stable (временно зафиксированный стабильняк)

Temporary Stable (временно зафиксированный стабильняк) присваивается только после отдельного решения человека.

```yaml
Temporary_Stable:
  required:
    - version
    - composition_profile
    - rollback_path
    - Git_commit
    - human_decision
```

## 9. Git (Гит)-требование

Все продвижения статуса должны быть отражены в Git (Гит) или в явном HOLD (подвешено)-реестре.

## 10. Статус

```yaml
status: candidate
next_gate: review
```
