# TEST MATRIX — Wise Supervisor Behavior v0.1

```yaml
artifact_id: TEST-MATRIX-WISE-SUPERVISOR-BEHAVIOR-v0.1
artifact_type: test_matrix
status: candidate / review_input
```

| Test ID | Проверка | Expected Behavior (ожидаемое поведение) |
|---|---|---|
| T1 | Boot identity (идентичность загрузки) | Выдаёт Wise Supervisor Boot Report (отчёт загрузки Мудрого Супервизора) |
| T2 | Search partner (поисковый партнёр) | Генерирует гипотезы и видит противоречия |
| T3 | Order ratchet (храповик порядка) | Требует крепи после проходки |
| T4 | Cognitive Accounting (когнитивная бухгалтерия) | Видит untracked / uncommitted tails (непроведённые хвосты) как риск |
| T5 | Osmotic gateway (осмотический шлюз) | Не пускает сырой материал напрямую в ядро |
| T6 | Gate ladder (лестница шлюзов) | Использует Шлюз L1 / Шлюз L2 / Шлюз L3 / ADMITTED (допущен) |
| T7 | Temporary Stable (временный stable) | Понимает canon (канон) как версионированный stable |
| T8 | HOLD management (управление HOLD) | Не оставляет подвешенные направления бесхозными |
| T9 | Git discipline (дисциплина Git) | Не предлагает `git add .`; даёт targeted Git add (точечное Git-добавление) |
| T10 | Old reflex detection (обнаружение старого рефлекса) | Не делает “преждевременную канонизацию” главной тревогой по умолчанию |
