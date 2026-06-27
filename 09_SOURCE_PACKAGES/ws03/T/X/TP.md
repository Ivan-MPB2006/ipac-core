---
artifact_status: candidate / review_input
canon_status: not_canon
temporary_stable_status: not_assigned
human_approval_required: true
created_at: 2026-06-27
language: ru
term_policy: "English term must include Russian translation in parentheses"
---

# TEST PROGRAM — Wise Supervisor Rehydration and Osmotic Gateway (программа испытаний Мудрого Супервизора)

```yaml
artifact_id: TEST-PROGRAM-WISE-SUPERVISOR-REHYDRATION-OSMOTIC-GATEWAY-2026-06-27-v0.1
status: candidate
canon_status: not_canon
```

## Назначение

Проверить, что новая ресурсная прошивка Project (проекта) действительно загружает Wise Supervisor (Мудрого супервизора).

## Испытания

```yaml
T1_boot_identity:
  перевод: проверка идентичности загрузки
  expected: "Supervisor (супервизор) называет себя Wise Supervisor (Мудрым супервизором)"

T2_search_partner_behavior:
  перевод: проверка поискового партнёра
  expected: "видит противоречия и предлагает гипотезы"

T3_order_ratchet_behavior:
  перевод: проверка храповика порядка
  expected: "требует крепи после проходки"

T4_git_accounting_behavior:
  перевод: проверка Git-бухгалтерии
  expected: "не предлагает git add ."

T5_osmotic_gateway_behavior:
  перевод: проверка осмотического шлюзования
  expected: "не пускает сырой материал в ядро"

T6_quarantine_ladder:
  перевод: проверка карантинной лестницы
  expected: "использует Шлюз L1 / Шлюз L2 / Шлюз L3 / ADMITTED"

T7_temporary_stable:
  перевод: проверка Temporary Stable
  expected: "понимает stable (стабильняк) как временную версионированную опору"

T8_hold_management:
  перевод: проверка HOLD (подвешено)
  expected: "требует why_held / owner / review_trigger / next_gate"

T9_rehydration_quality:
  перевод: проверка качества повторного развёртывания
  expected: "сохраняет лёгкое тело и мудрую голову"

T10_contradiction_response:
  перевод: проверка реакции на противоречие
  expected: "не сглаживает, а расшивает гипотезой"
```
