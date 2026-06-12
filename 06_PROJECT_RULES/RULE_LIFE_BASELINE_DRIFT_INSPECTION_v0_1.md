# RULE — Life / Baseline Drift Inspection v0.1  
## Правило контроля рассогласования «Жизнь / Эталон» в IPaC

```yaml
artifact_id: RULE-IPAC-LIFE-BASELINE-DRIFT-INSPECTION-001
artifact_type: project_rule
status: accepted_process_rule
version: 0.1
layer: project_rules
scope: Git hygiene / drift inspection / technical process / artifact safety
date: 2026-06-12
canon_update_authorized: false
field_validated: process_observed
```

---

# 1. Rule Statement

```text
Перед каждым смысловым commit,
после ручного редактирования файлов,
после импорта отчётов
и после работы скриптов
необходимо выполнить проверку рассогласования
между текущим состоянием рабочей папки и Git-эталоном.
```

Короткая формула:

```text
git diff = Жизнь − Эталон
```

---

# 2. Ontological Meaning

В IPaC Git используется не только как система контроля версий.

Git является прибором контроля информационного производства.

```text
Жизнь
= текущее состояние рабочей папки:
ручные правки, случайные изменения, импортированные файлы,
результаты скриптов, возможный дрейф.

Эталон
= последняя зафиксированная версия в Git:
принятый baseline, прошедший commit и push.
```

---

# 3. Core Commands

```text
git status  = показывает, есть ли рассогласование.
git diff    = показывает, в чём именно рассогласование.
git restore = возвращает случайное изменение к эталону.
git add     = готовит осознанное изменение к признанию.
git commit  = делает изменение новой эталонной точкой.
git push    = публикует эталон во внешний репозиторий.
```

---

# 4. Mandatory Inspection Pattern

Перед смысловым commit:

```powershell
git status
git diff --stat
git diff
```

Если изменения ожидаемые и осознанные:

```powershell
git add <target-file-or-folder>
git status
git commit -m "<commit message>"
git push
git status
```

Если изменения случайные:

```powershell
git restore -- <target-file>
git status
```

---

# 5. When This Rule Applies

Правило применяется обязательно:

1. После ручного открытия / редактирования файлов в Notepad, Obsidian, VS Code или другом редакторе.
2. После копирования отчётов Deep Research / Gemini / Perplexity в Vault.
3. После работы PowerShell-скриптов.
4. Перед любым смысловым commit.
5. Перед Perplexity / Deep Research input packaging.
6. Перед canon-impact review.
7. Если `git status` показывает неожиданный `modified`.

---

# 6. Decision Logic

## Case A — Only expected new file

Если `git status` показывает только ожидаемый новый файл:

```text
Untracked files:
  expected_file.md
```

Действие:

```powershell
git add expected_file.md
git commit -m "<meaningful message>"
git push
```

## Case B — Unexpected modified file

Если `git status` показывает неожиданный modified-файл:

```text
modified: existing_committed_file.md
```

Действие:

```powershell
git diff --stat -- existing_committed_file.md
git diff -- existing_committed_file.md
```

Если изменение случайное:

```powershell
git restore -- existing_committed_file.md
```

Если изменение осознанное:

```powershell
git add existing_committed_file.md
git commit -m "<explicit message>"
```

## Case C — Operational export noise

Если `git status` показывает generated exports:

```text
99_ATTACHMENTS_AND_EXPORTS/DR-...
```

Действие:

- не коммитить как research artifact;
- добавить generated pattern в `.gitignore`;
- housekeeping commit делать отдельно.

---

# 7. Anti-Regression Principle

```text
Нельзя коммитить смысловой артефакт,
если рядом есть необъяснённый modified-файл.
```

Сначала выяснить:

```text
это осознанное изменение
или случайный дрейф?
```

Только после этого:

```text
restore
или
add / commit.
```

---

# 8. IPaC Process Formula

```text
Probe → Act → Verify → Commit → Push → Verify
```

На русском:

```text
Проверил → сделал → проверил → зафиксировал → отправил → проверил
```

---

# 9. Production Meaning

```text
Git status говорит: загрязнён ли контур.
Git diff говорит: где жизнь разошлась с эталоном.
Git restore возвращает к эталону.
Git commit признаёт новое состояние эталоном.
Git push выносит эталон во внешний репозиторий.
```

---

# 10. Placement

Рекомендуемое место:

```text
06_PROJECT_RULES/RULE_LIFE_BASELINE_DRIFT_INSPECTION_v0_1.md
```

---

# 11. Commit Recommendation

```powershell
git add .\06_PROJECT_RULES\RULE_LIFE_BASELINE_DRIFT_INSPECTION_v0_1.md
git commit -m "rules: add life baseline drift inspection"
git push
git status
```

---

# 12. Status

```text
RULE_ACCEPTED_INTO_TECHNICAL_PROCESS
CANON_LOCKED
PROCESS_ACTIVE
```
