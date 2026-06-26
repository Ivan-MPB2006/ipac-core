# =============================================================================
# IPaC DAY GATE MANUAL CLOSE / OPEN SCRIPT v0.2
# (ручной скрипт закрытия / открытия дневного шлюза IPaC)
# Status (статус): candidate (кандидат), not_canon (не канон)
# Fix (исправление): uses template replacement to preserve Markdown triple backticks.
# =============================================================================

param(
    [Parameter(Mandatory = $true)]
    [string]$VaultRoot,

    [string]$PrevDate = "2026-06-23",
    [string]$TodayDate = "2026-06-24",
    [string]$TodayWeekday = "Ср",
    [string]$OpenTime = "13:37",
    [string]$ThreadStartAnchor = "2026-06-24-IPaC_COS_SVC_LV01"
)

$ErrorActionPreference = "Stop"
$Utf8Bom = New-Object System.Text.UTF8Encoding($true)
$SessionDir = Join-Path $VaultRoot "08_TRACE_AND_DECISIONS\session_notes"

$CloseoutFile = Join-Path $SessionDir "DAY_CLOSEOUT_${PrevDate}_v0_1.md"
$DayGateFile = Join-Path $SessionDir "DAY_GATE_${TodayDate}_v0_1.md"
$DailyRegisterFile = Join-Path $SessionDir "DAILY_REGISTER_${TodayDate}_v0_1.md"

function Write-Utf8BomText {
    param([string]$Path, [string]$Text)
    [System.IO.File]::WriteAllText($Path, $Text, $Utf8Bom)
}

function Expand-DayGateTemplate {
    param([string]$Template)
    $Out = $Template
    $Out = $Out.Replace('__PREV_DATE__', $PrevDate)
    $Out = $Out.Replace('__TODAY_DATE__', $TodayDate)
    $Out = $Out.Replace('__TODAY_WEEKDAY__', $TodayWeekday)
    $Out = $Out.Replace('__OPEN_TIME__', $OpenTime)
    $Out = $Out.Replace('__OPEN_TIME_COMPACT__', $OpenTime.Replace(':',''))
    $Out = $Out.Replace('__THREAD_START_ANCHOR__', $ThreadStartAnchor)
    return $Out
}

New-Item -ItemType Directory -Force $SessionDir | Out-Null

Write-Host ""
Write-Host "=== PRE-CHECK: Git status (статус Git) before Day Gate (дневной шлюз) ==="
git -C $VaultRoot status --short

$CloseoutTemplate = @'
# DAY CLOSEOUT — __PREV_DATE__
## Закрытие рабочего дня

```yaml
artifact_id: DAY-CLOSEOUT-__PREV_DATE__-v0.1
artifact_type: day_closeout
status: candidate
canon_status: not_canon
closed_by: manual_supervisor_runbook
next_day: __TODAY_DATE__
```

# Meaning (смысл)

Рабочий день __PREV_DATE__ закрывается как смысловая смена.
Его результаты не теряются, но не смешиваются неявно с новым рабочим днём.

# Closure Rule (правило закрытия)

```text
Previous Day (предыдущий день) is closed.
Carry-over (переносимые хвосты) must be explicit.
No silent context bleed (без скрытого перетекания контекста).
No premature canonization (без преждевременной канонизации).
No Git commit (Git-проводка) without Human Approval (человеческое одобрение).
```

# Status (статус)

```text
DAY___PREV_DATE___CLOSED_AS_WORKING_SEGMENT
```
'@

$DayGateTemplate = @'
# IPaC DAY GATE — __TODAY_DATE__
## Дневной шлюз IPaC

```yaml
artifact_id: IPAC-DAY-GATE-__TODAY_DATE__-v0.1
artifact_type: day_gate
status: candidate
canon_status: not_canon
date: __TODAY_DATE__
weekday: __TODAY_WEEKDAY__
time_opened: "__OPEN_TIME__"
working_day_id: IPAC-WD-__TODAY_DATE__
opened_by: manual_supervisor_runbook
thread_start_anchor: __THREAD_START_ANCHOR__
```

# Day Gate Formula (формула дневного шлюза)

```text
Новый рабочий день открыт не с нуля,
а через сохранённый Thread Start Anchor (якорь начала треда).
Предыдущий день отделён.
Когнитивная высота сохранена.
Новый сегмент треда открыт.
```

# Operating Mode (операционный режим)

```text
Factography first (сначала фактография).
Candidate before canon (сначала кандидат, потом канон).
Human approval before Git commit (человеческое одобрение перед Git-проводкой).
No premature canonization (без преждевременной канонизации).
```

# Status (статус)

```text
DAY___TODAY_DATE___OPENED
```
'@

$DailyRegisterTemplate = @'
# DAILY REGISTER / SHIP LOG — __TODAY_DATE__
## Дневной реестр / Бортовой журнал

```yaml
artifact_id: DAILY-REGISTER-__TODAY_DATE__-v0.1
artifact_type: daily_register_ship_log
status: active
canon_status: not_canon
date: __TODAY_DATE__
weekday: __TODAY_WEEKDAY__
opened_at: "__OPEN_TIME__"
opened_by: manual_supervisor_runbook
day_gate: DAY_GATE___TODAY_DATE___v0_1.md
thread_start_anchor: __THREAD_START_ANCHOR__
```

# 0. Day Gate (дневной шлюз)

```text
IPaC DAY GATE (дневной шлюз IPaC) открыт.
Предыдущий рабочий день отделён.
Новый рабочий день активен.
```
'@

$OpeningEventTemplate = @'

---

## __OPEN_TIME__ — Day Gate Opened (дневной шлюз открыт)

```text
EVENT_ID: DAY-GATE-OPEN-__TODAY_DATE__-__OPEN_TIME_COMPACT__
EVENT_TYPE:
  day_gate_event (событие дневного шлюза)
  thread_lifecycle_event (событие жизненного цикла треда)
  save_transfer_restore_event (событие Сохранения — Передачи — Восстановления)
  supervisor_continuity_event (событие непрерывности супервизора)

FACTOGRAPHY:
  Тред на начало дня зафиксирован в файле:
  __THREAD_START_ANCHOR__

STATUS:
  human_reported_fact
  candidate_for_trace
  not_canon
```
'@

$CloseoutText = Expand-DayGateTemplate $CloseoutTemplate
$DayGateText = Expand-DayGateTemplate $DayGateTemplate
$DailyRegisterHeader = Expand-DayGateTemplate $DailyRegisterTemplate
$OpeningEventText = Expand-DayGateTemplate $OpeningEventTemplate

if (-not (Test-Path $CloseoutFile)) {
    Write-Utf8BomText $CloseoutFile $CloseoutText
    Write-Host "CREATED: $CloseoutFile"
} else {
    Write-Host "EXISTS:  $CloseoutFile"
}

if (-not (Test-Path $DayGateFile)) {
    Write-Utf8BomText $DayGateFile $DayGateText
    Write-Host "CREATED: $DayGateFile"
} else {
    Write-Host "EXISTS:  $DayGateFile"
}

if (-not (Test-Path $DailyRegisterFile)) {
    Write-Utf8BomText $DailyRegisterFile $DailyRegisterHeader
    Write-Host "CREATED: $DailyRegisterFile"
} else {
    Write-Host "EXISTS:  $DailyRegisterFile"
}

$OpenEventMarker = "EVENT_ID: DAY-GATE-OPEN-${TodayDate}-$($OpenTime.Replace(':',''))"

if (-not (Select-String -Path $DailyRegisterFile -Pattern $OpenEventMarker -Quiet)) {
    Add-Content -Path $DailyRegisterFile -Encoding UTF8 -Value $OpeningEventText
    Write-Host "APPENDED: Day Gate opening event to Daily Register"
} else {
    Write-Host "SKIPPED: Day Gate opening event already exists"
}

Write-Host ""
Write-Host "=== SEARCH: Thread Start Anchor (якорь начала треда) ==="
Get-ChildItem -Path $VaultRoot -Recurse -File -Filter "*$ThreadStartAnchor*" -ErrorAction SilentlyContinue | Select-Object FullName

Write-Host ""
Write-Host "=== POST-CHECK: Git status (статус Git) for Day Gate files ==="
$RuntimeGitPaths = @(
  "08_TRACE_AND_DECISIONS/session_notes/DAY_CLOSEOUT_${PrevDate}_v0_1.md",
  "08_TRACE_AND_DECISIONS/session_notes/DAY_GATE_${TodayDate}_v0_1.md",
  "08_TRACE_AND_DECISIONS/session_notes/DAILY_REGISTER_${TodayDate}_v0_1.md"
)
$GitArgs = @("-C", $VaultRoot, "status", "--short", "--") + $RuntimeGitPaths
& git @GitArgs

Write-Host ""
Write-Host "DAY GATE MANUAL RUNBOOK v0.2 COMPLETE"
Write-Host "Git commit (Git-проводка) NOT performed."
Write-Host "Human Approval (человеческое одобрение) required before git add / commit."
