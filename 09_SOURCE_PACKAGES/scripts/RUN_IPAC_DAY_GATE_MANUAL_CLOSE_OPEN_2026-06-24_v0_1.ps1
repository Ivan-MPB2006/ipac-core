# =============================================================================
# IPaC DAY GATE MANUAL CLOSE / OPEN SCRIPT
# (ручной скрипт закрытия / открытия дневного шлюза IPaC)
# Status (статус): candidate (кандидат), not_canon (не канон)
# =============================================================================

param(
    [Parameter(Mandatory=$true)]
    [string]$VaultRoot,

    [string]$PrevDate = "2026-06-23",
    [string]$TodayDate = "2026-06-24",
    [string]$TodayWeekday = "Ср",
    [string]$OpenTime = "13:37",
    [string]$ThreadStartAnchor = "2026-06-24-IPaC_COS_SVC_LV01"
)

$ErrorActionPreference = "Stop"
$SessionDir = Join-Path $VaultRoot "08_TRACE_AND_DECISIONS\session_notes"

$CloseoutFile = Join-Path $SessionDir "DAY_CLOSEOUT_${PrevDate}_v0_1.md"
$DayGateFile = Join-Path $SessionDir "DAY_GATE_${TodayDate}_v0_1.md"
$DailyRegisterFile = Join-Path $SessionDir "DAILY_REGISTER_${TodayDate}_v0_1.md"

New-Item -ItemType Directory -Force $SessionDir | Out-Null

Write-Host ""
Write-Host "=== PRE-CHECK: Git status (статус Git) before Day Gate (дневной шлюз) ==="
git -C $VaultRoot status --short

$CloseoutText = @"
# DAY CLOSEOUT — $PrevDate
## Закрытие рабочего дня

````yaml
artifact_id: DAY-CLOSEOUT-$PrevDate-v0.1
artifact_type: day_closeout
status: candidate
canon_status: not_canon
closed_by: manual_supervisor_runbook
next_day: $TodayDate
````

# Meaning (смысл)

Рабочий день $PrevDate закрывается как смысловая смена.
Его результаты не теряются, но не смешиваются неявно с новым рабочим днём.

# Closure Rule (правило закрытия)

````text
Previous Day (предыдущий день) is closed.
Carry-over (переносимые хвосты) must be explicit.
No silent context bleed (без скрытого перетекания контекста).
No premature canonization (без преждевременной канонизации).
No Git commit (Git-проводка) without Human Approval (человеческое одобрение).
````

# Status (статус)

````text
DAY_${PrevDate}_CLOSED_AS_WORKING_SEGMENT
````
"@

if (-not (Test-Path $CloseoutFile)) {
    Set-Content -Path $CloseoutFile -Value $CloseoutText -Encoding UTF8
    Write-Host "CREATED: $CloseoutFile"
} else {
    Write-Host "EXISTS:  $CloseoutFile"
}

$DayGateText = @"
# IPaC DAY GATE — $TodayDate
## Дневной шлюз IPaC

````yaml
artifact_id: IPAC-DAY-GATE-$TodayDate-v0.1
artifact_type: day_gate
status: candidate
canon_status: not_canon
date: $TodayDate
weekday: $TodayWeekday
time_opened: "$OpenTime"
working_day_id: IPAC-WD-$TodayDate
opened_by: manual_supervisor_runbook
thread_start_anchor: $ThreadStartAnchor
````

# Day Gate Formula (формула дневного шлюза)

````text
Новый рабочий день открыт не с нуля,
а через сохранённый Thread Start Anchor (якорь начала треда).
Предыдущий день отделён.
Когнитивная высота сохранена.
Новый сегмент треда открыт.
````

# Operating Mode (операционный режим)

````text
Factography first (сначала фактография).
Candidate before canon (сначала кандидат, потом канон).
Human approval before Git commit (человеческое одобрение перед Git-проводкой).
No premature canonization (без преждевременной канонизации).
````

# Status (статус)

````text
DAY_${TodayDate}_OPENED
````
"@

if (-not (Test-Path $DayGateFile)) {
    Set-Content -Path $DayGateFile -Value $DayGateText -Encoding UTF8
    Write-Host "CREATED: $DayGateFile"
} else {
    Write-Host "EXISTS:  $DayGateFile"
}

$DailyRegisterHeader = @"
# DAILY REGISTER / SHIP LOG — $TodayDate
## Дневной реестр / Бортовой журнал

````yaml
artifact_id: DAILY-REGISTER-$TodayDate-v0.1
artifact_type: daily_register_ship_log
status: active
canon_status: not_canon
date: $TodayDate
weekday: $TodayWeekday
opened_at: "$OpenTime"
opened_by: manual_supervisor_runbook
day_gate: DAY_GATE_${TodayDate}_v0_1.md
thread_start_anchor: $ThreadStartAnchor
````

# 0. Day Gate (дневной шлюз)

````text
IPaC DAY GATE (дневной шлюз IPaC) открыт.
Предыдущий рабочий день отделён.
Новый рабочий день активен.
````
"@

if (-not (Test-Path $DailyRegisterFile)) {
    Set-Content -Path $DailyRegisterFile -Value $DailyRegisterHeader -Encoding UTF8
    Write-Host "CREATED: $DailyRegisterFile"
} else {
    Write-Host "EXISTS:  $DailyRegisterFile"
}

$OpenEventMarker = "EVENT_ID: DAY-GATE-OPEN-${TodayDate}-$($OpenTime.Replace(':',''))"

if (-not (Select-String -Path $DailyRegisterFile -Pattern $OpenEventMarker -Quiet)) {
    Add-Content -Path $DailyRegisterFile -Encoding UTF8 -Value @"

---

## $OpenTime — Day Gate Opened (дневной шлюз открыт)

````text
EVENT_ID: DAY-GATE-OPEN-${TodayDate}-$($OpenTime.Replace(':',''))
EVENT_TYPE:
  day_gate_event (событие дневного шлюза)
  thread_lifecycle_event (событие жизненного цикла треда)
  save_transfer_restore_event (событие Сохранения — Передачи — Восстановления)
  supervisor_continuity_event (событие непрерывности супервизора)

FACTOGRAPHY:
  Тред на начало дня зафиксирован в файле:
  $ThreadStartAnchor

STATUS:
  human_reported_fact
  candidate_for_trace
  not_canon
````
"@
    Write-Host "APPENDED: Day Gate opening event to Daily Register"
} else {
    Write-Host "SKIPPED: Day Gate opening event already exists"
}

Write-Host ""
Write-Host "=== SEARCH: Thread Start Anchor (якорь начала треда) ==="
Get-ChildItem -Path $VaultRoot -Recurse -File -Filter "*$ThreadStartAnchor*" -ErrorAction SilentlyContinue | Select-Object FullName

Write-Host ""
Write-Host "=== POST-CHECK: Git status (статус Git) for Day Gate files ==="
git -C $VaultRoot status --short -- `
  "08_TRACE_AND_DECISIONS/session_notes/DAY_CLOSEOUT_${PrevDate}_v0_1.md" `
  "08_TRACE_AND_DECISIONS/session_notes/DAY_GATE_${TodayDate}_v0_1.md" `
  "08_TRACE_AND_DECISIONS/session_notes/DAILY_REGISTER_${TodayDate}_v0_1.md"

Write-Host ""
Write-Host "DAY GATE MANUAL RUNBOOK COMPLETE"
Write-Host "Git commit (Git-проводка) NOT performed."
Write-Host "Human Approval (человеческое одобрение) required before git add / commit."
