# CORRECTION REPORT — Day Gate Runtime Formatting v0.1
## Отчёт исправительного прохода по runtime formatting (форматированию файлов исполнения)

```yaml
artifact_id: CORRECTION-REPORT-DAY-GATE-RUNTIME-FORMATTING-2026-06-24-v0.1
artifact_type: correction_report
status: candidate
canon_status: not_canon
source_issue: Markdown fences generated as double backticks in runtime files
correction_scope:
  - DAY_CLOSEOUT_2026-06-23_v0_1.md
  - DAY_GATE_2026-06-24_v0_1.md
  - DAILY_REGISTER_2026-06-24_v0_1.md
  - process stack UTF-8 BOM normalization
```

---

# 1. Problem (проблема)

Day Gate Run Script v0.1 (исполняемый скрипт дневного шлюза v0.1) сформировал runtime files (файлы исполнения), в которых Markdown fences (Markdown-ограждения кода) отображались как double backticks (двойные обратные кавычки):

```text
``yaml
``text
``
```

Это снижает качество отображения в Obsidian (Obsidian) и не должно попадать в Git commit (Git-проводку) без исправления.

---

# 2. Cause (причина)

Вероятная причина: PowerShell backtick (обратная кавычка PowerShell) был интерпретирован как escape character (экранирующий символ) внутри expandable here-string (расширяемой многострочной строки).

---

# 3. Correction (исправление)

Создано два механизма:

```text
1. REPAIR_IPAC_DAY_GATE_RUNTIME_FILES_2026-06-24_v0_2.ps1
   исправляет уже созданные runtime files (файлы исполнения).

2. RUN_IPAC_DAY_GATE_MANUAL_CLOSE_OPEN_2026-06-24_v0_2.ps1
   исправляет генерацию будущих файлов через template replacement
   (замену шаблонных токенов), сохраняя triple backticks
   (тройные обратные кавычки).
```

---

# 4. Verification (проверка)

Создан:

```text
VERIFY_IPAC_DAY_GATE_RUNTIME_FORMAT_2026-06-24_v0_1.ps1
```

Он проверяет:

```text
- наличие runtime files (файлов исполнения);
- количество broken double-backtick fences (сломанных двойных ограждений);
- количество нормальных triple-backtick fences (тройных ограждений);
- признаки mojibake (битой кириллицы) при UTF-8 чтении;
- наличие Mermaid flowchart (Mermaid-схемы);
- targeted Git status (точечный статус Git).
```

---

# 5. Status (статус)

```text
CORRECTION_STATUS:
  ready_to_apply

GIT_COMMIT_AUTHORIZED:
  false

HUMAN_APPROVAL_REQUIRED:
  true
```
