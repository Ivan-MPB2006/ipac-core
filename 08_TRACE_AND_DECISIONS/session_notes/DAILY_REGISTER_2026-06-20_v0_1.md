# DAILY REGISTER — 2026-06-20

## Must Include in Daily Trace

- [ ] 2026-06-20 — Старт дня после закрытия 19.06 и восстановления Git-состояния.
      Type: day_start / git_recovery / architecture_candidate / solow_tunneling
      Status: active_day_started
      Context: 19.06 закрыт чисто; HEAD = b354a89. 20.06 проведены архитектурные кандидаты по Human-AI resonance и Solow tunneling; Git recovery выполнен, stash создан для локальных tracked-изменений.
      Include in: DAILY_TRACE_2026-06-20

---

## LOG-2026-06-20-QA-POWERSHELL-001 — QA-находка: выход из PowerShell here-string и контролька на каждом шагу

time: 2026-06-20 17:24
type: qa_finding / powershell_recovery / operator_instruction / file_based_factography
status: captured_for_daily_trace
include_in: DAILY_TRACE_2026-06-20

### Суть события

Зафиксирована операционная QA-находка:

- Ctrl+C в PowerShell на рабочей машине не всегда выводит из режима ожидания многострочного ввода.
- Если PowerShell показывает приглашение >>, он чаще всего не завис, а ждёт закрытия here-string.
- Для блока, начатого как @ + двойная кавычка, надёжный выход: двойная кавычка + собака на отдельной строке.
- Для блока, начатого как @ + одинарная кавычка, надёжный выход: одинарная кавычка + собака на отдельной строке.

### Операторская формула

Если PowerShell ушёл в >>:

1. Сначала закрыть открытый here-string.
2. Для двойного here-string ввести на отдельной строке: двойная кавычка + собака.
3. Для одинарного here-string ввести на отдельной строке: одинарная кавычка + собака.
4. После возврата к PS prompt сразу выполнить git status --short.

### Смысл

Это не мелкая техническая ошибка, а важная QA-находка операционного слоя IPaC.
PowerShell должен использоваться как исполнительный слой, а не как редактор больших смысловых документов.
Большие смысловые блоки должны идти через файлы: .ps1, .md, .mmd, .txt.

### Принцип

На каждом шагу — контролька.

Смысл → файл → выполнение → git status → check file → решение.

### Значение для IPaC

Находка усиливает file-based operational factography и подтверждает необходимость не вставлять большие смысловые блоки прямо в терминал.

Статус:
QA_FINDING_CAPTURED
OPERATOR_RECOVERY_PATTERN_IDENTIFIED
CONTROL_CHECK_EVERY_STEP_REINFORCED
