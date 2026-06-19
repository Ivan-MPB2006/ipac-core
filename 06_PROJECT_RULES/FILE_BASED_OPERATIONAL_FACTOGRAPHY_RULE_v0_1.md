# RULE — File-Based Operational Factography and Screenshot Exception v0.1
## Правило: проводим через файлы, а не через скрины

```yaml
artifact_id: RULE-FILE-BASED-OPERATIONAL-FACTOGRAPHY-v0.1
artifact_type: project_rule
status: candidate_for_git_commit
version: 0.1
created: 2026-06-19
language_config: ru
machine_terms_policy: English term must include Russian translation in parentheses
scope:
  - Git diagnostics
  - Obsidian / Vault state
  - Daily Register / Daily Trace
  - commit checks
  - Project Live State Snapshot
  - Codex / MCP future execution contour
canonization_status: rule_candidate
```

---

# 1. Назначение правила

Это правило фиксирует переход от скриншотов к текстовой операционной фактографии.

Главная формула:

```text
Скриншот показывает видимость.
Файл фиксирует состояние.

Скриншот удобен для человека.
Текстовый файл пригоден для Project, Git, Obsidian, поиска, анализа и восстановления.
```

С этого момента для Git, Obsidian, Daily Register, Daily Trace, Project Supervisor и Codex/MCP-подготовки приоритетом становится **file-based factography** (фактография через файлы).

---

# 2. Причина введения

В ходе работы 19.06.2026 подтверждено, что текстовый commit check report даёт существенно более надёжную фактографию, чем скриншот терминала.

Пример:

```text
IPaC_2026-06-19_OPERATIONAL_FRAME_COMMIT_CHECK_2026-06-19_1257.txt
```

Этот файл содержит:

```text
git root;
current branch;
remote status;
git status short / full;
recent commits;
latest commit stat;
latest commit name-status;
latest commit metadata;
untracked files;
expected files check;
tail sections of Daily Register, routing map and operational frame.
```

Такой файл можно:

```text
прикрепить в чат;
загрузить в Project;
положить в Obsidian;
провести через Git;
искать по нему;
цитировать;
использовать для восстановления;
использовать как Live State Snapshot fragment
(фрагмент снимка живого состояния).
```

Скриншот так не работает.

---

# 3. Основное правило

## 3.1 По умолчанию — текстовый файл

Все операции проверки состояния должны завершаться созданием одного текстового файла:

```text
*_CHECK.txt
*_REPORT.txt
*_SNAPSHOT.md
*_CLOSEOUT.txt
*_DIAGNOSTIC.txt
```

Принцип:

```text
Всё в одном файле — где возможно.
Если нужны assets (изображения), рядом должен быть MANIFEST.
```

## 3.2 Скриншот — только исключение

Скриншот допускается только как:

```text
экстренная визуальная подсказка;
проверка UI;
показ ошибки, которую трудно снять текстом;
демонстрация внешнего вида Obsidian / браузера / интерфейса.
```

Скриншот не должен быть основным источником истины для:

```text
git status;
git log;
git show;
списков файлов;
содержимого Daily Register;
содержимого Daily Trace;
структуры Vault;
проверки Project boot;
commit closeout;
diagnostic reports.
```

---

# 4. Иерархия доверия источников

## 4.1 Высокий уровень доверия

```text
Git commit
Git status / log / show в текстовом файле
Obsidian Markdown-файлы
Daily Register / Daily Trace
Live State Snapshot
Text diagnostic report
```

## 4.2 Средний уровень доверия

```text
скопированный вручную текст из терминала;
текстовые вставки из чата;
ручная сводка человека.
```

## 4.3 Низкий уровень доверия

```text
скриншоты терминала;
скриншоты UI;
устные воспоминания;
пересказ без файла.
```

Скриншот может помогать понять ситуацию, но не должен заменять машинно-читаемую фактографию.

---

# 5. Типовые файловые отчёты

## 5.1 Commit Check Report

Назначение:

```text
подтвердить Git-проводку и рабочее состояние после commit / push.
```

Содержит:

```text
git status --short
git status
git log --oneline --decorate -N
git show --stat HEAD
git show --name-status HEAD
git show --no-patch --format=fuller HEAD
untracked files
проверка ожидаемых файлов
хвосты ключевых файлов
```

## 5.2 Live State Snapshot

Назначение:

```text
дать Project текущее состояние Obsidian + Git.
```

Содержит:

```text
структуру Vault;
Git-состояние;
ключевые правила;
Daily Register / Daily Trace;
открытые хвосты;
состояние thread_exports;
инструкцию восстановления супервизора.
```

## 5.3 Daily Closeout Report

Назначение:

```text
закрыть день и подготовить Daily Trace.
```

Содержит:

```text
материальный баланс;
когнитивный баланс;
Git-проводки;
открытые хвосты;
что включить в Daily Trace;
что не трогать.
```

---

# 6. Стандартные имена файлов

```text
IPaC_YYYY-MM-DD_START_CHECK.txt

IPaC_YYYY-MM-DD_COMMIT_CHECK.txt

IPaC_YYYY-MM-DD_CLOSEOUT_COMMIT_CHECK.txt

IPaC_PROJECT_LIVE_STATE_SNAPSHOT_YYYY-MM-DD_HHMM.md

IPaC_YYYY-MM-DD_OPERATIONAL_FRAME_COMMIT_CHECK_HHMM.txt

IPaC_YYYY-MM-DD_DAILY_TRACE_INPUT_REPORT.txt
```

Примеры:

```text
IPaC_2026-06-19_START_CHECK.txt

IPaC_2026-06-19_OPERATIONAL_FRAME_COMMIT_CHECK_2026-06-19_1257.txt
```

---

# 7. Минимальный шаблон PowerShell для commit check

```powershell
$stamp = Get-Date -Format "yyyy-MM-dd_HHmm"
$out = "$env:USERPROFILE\Downloads\IPaC_COMMIT_CHECK_$stamp.txt"

@"
# IPaC Commit Check

Generated: $(Get-Date -Format "yyyy-MM-dd HH:mm:ss")
Working directory: $(Get-Location)

## git status --short
$(git status --short | Out-String)

## git status
$(git status | Out-String)

## git log --oneline --decorate -10
$(git log --oneline --decorate -10 | Out-String)

## git show --stat HEAD
$(git show --stat --oneline --decorate HEAD | Out-String)

## git show --name-status HEAD
$(git show --name-status --oneline --decorate HEAD | Out-String)

## untracked files
$(git ls-files --others --exclude-standard | Out-String)
"@ | Set-Content -Path $out -Encoding UTF8

explorer /select,$out
```

---

# 8. Правило для Project и Live State

Project нельзя кормить скриншотами как основным состоянием.

Для Project нужно передавать:

```text
Resource Pack
(пакет ресурсов)

+
Live State Snapshot
(снимок живого состояния)

+
Commit Check / Diagnostic Report
(проверочный / диагностический отчёт)
```

Формула:

```text
Project без файла состояния — супервизор без приборной панели.

Project со snapshot-файлом — супервизор с картой текущего состояния.
```

---

# 9. Правило для Codex / MCP будущего контура

Codex / MCP должен работать с файлами, а не со скриншотами.

Исполнительный контур должен получать:

```text
команды;
пути;
файлы;
диагностические отчёты;
структурированные snapshot;
Git-output;
manifest;
routing map.
```

Скриншот не является надёжным API.

Формула:

```text
Для человека скриншот — визуальный сигнал.
Для системы файл — операционный объект.
```

---

# 10. Daily Register event pattern

Если возникла ситуация, где раньше использовался скриншот, надо записывать в Daily Register:

```text
- [ ] YYYY-MM-DD HH:mm — Выполнена операция через file-based factography
      Type: operational_factography / file_based_report / screenshot_replacement
      Event Characteristic:
        - operational_learning_event
        - process_rule_event
        - anti_entropy_event
      Status: captured
      Source file: <имя файла>
      Include in: DAILY_TRACE_YYYY-MM-DD
```

---

# 11. Routing / Разнесение

## Daily Register

Фиксировать как процессное событие.

## Daily Trace

Включать в Daily Trace 2026-06-19 как операционный урок дня.

## Project Rules

Кандидат на правило:

```text
06_PROJECT_RULES/FILE_BASED_OPERATIONAL_FACTOGRAPHY_RULE_v0_1.md
```

## Codex / MCP Backlog

Кандидат на автоматизацию:

```text
генератор commit check report;
генератор live state snapshot;
генератор closeout report;
проверка encoding;
проверка структуры отчёта.
```

## Ontology Notes

Понятия:

```text
file-based factography
(фактография через файлы)

screenshot exception
(исключение для скриншотов)

machine-readable operational state
(машинно-читаемое операционное состояние)

commit check report
(отчёт проверки коммита)

live state snapshot
(снимок живого состояния)
```

---

# 12. Критерии качества отчёта

Хороший файл фактографии должен:

```text
1. иметь дату и время создания;
2. указывать рабочую директорию;
3. содержать команды / результаты;
4. быть машинно-читаемым;
5. быть пригодным для загрузки в Project;
6. быть пригодным для Obsidian;
7. быть пригодным для Git;
8. содержать достаточно контекста для восстановления;
9. не требовать скриншота для понимания;
10. явно показывать unresolved tails (нерешённые хвосты).
```

---

# 13. Final formula

```text
Скриншот — вспомогательное свидетельство.
Файл — операционная фактография.

Скриншот показывает, что человек видел.
Файл показывает, с чем система может работать.

Для IPaC OS проводим через файлы.
Скрины — только как исключение.
```

---

# 14. Status

```text
RULE_CANDIDATE_CREATED
FILE_BASED_FACTOGRAPHY_ESTABLISHED
SCREENSHOT_EXCEPTION_DEFINED
PROJECT_SUPERVISOR_INPUT_IMPROVED
CODEX_MCP_READY_PATTERN_DETECTED
```
