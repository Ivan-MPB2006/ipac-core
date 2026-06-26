# SYSTEM_INTERACTION_MAP_ASCII_v0_1
## Псевдографика взаимодействия IPaC OS MVP-0 / Codex Review

```yaml
artifact_id: SYSTEM-INTERACTION-MAP-ASCII-v0.1
artifact_type: pseudographics / system_interaction_map / codex_review_pack_component
status: candidate
canon_status: not_canon
date: 2026-06-21
```

# 1. Карта системных элементов

```text
                           ┌──────────────────────────────┐
                           │ HUMAN ARCHITECT               │
                           │ intention / decision / approve │
                           └──────────────┬───────────────┘
                                          │
                                          ▼
┌──────────────────────────────────────────────────────────────────────┐
│ CHATGPT PROJECT / PROJECT SUPERVISOR                                 │
│ планирует, ограничивает, проверяет, требует Context Working Set       │
└──────────────┬───────────────────────────────────────────────────────┘
               │ prompts / review / page faults
               ▼
┌──────────────────────────────────────────────────────────────────────┐
│ OPERATING CHAT / ТЕКУЩИЙ ОПЕРАЦИОННЫЙ ТРЕД                           │
│ Human + ChatGPT Operating Partner                                     │
│ собирает пакеты, пишет скрипты, принимает контрольки                  │
└──────────────┬───────────────────────────────────────────────────────┘
               │ files / task packs / prompts / checks
               ▼
┌──────────────────────────────────────────────────────────────────────┐
│ CODEX REVIEW / CODEX EXECUTION LAYER                                  │
│ Кодекс как ось вращения операционного слоя                            │
│ НЕ смысловое ядро, НЕ финальный архитектор, НЕ canon-authority         │
└─────┬───────────────┬────────────────┬──────────────────┬───────────┘
      │               │                │                  │
      ▼               ▼                ▼                  ▼
┌───────────┐   ┌─────────────┐   ┌─────────────┐   ┌────────────────┐
│ VS CODE   │   │ POWERSHELL  │   │ FILESYSTEM  │   │ MCP SERVERS     │
│ IDE layer │   │ scripts     │   │ Windows FS  │   │ approved tools  │
└─────┬─────┘   └──────┬──────┘   └──────┬──────┘   └────────┬───────┘
      │                │                 │                   │
      ▼                ▼                 ▼                   ▼
┌──────────────────────────────────────────────────────────────────────┐
│ LOCAL IPaC VAULT / REPO                                               │
│ Obsidian markdown + Git working tree                                  │
│ 03_RESEARCH_MAP / 06_PROJECT_RULES / 08_TRACE_AND_DECISIONS           │
└──────────────┬───────────────────────────────────────────────────────┘
               │ git status / diff / add only after approval
               ▼
┌──────────────────────────────────────────────────────────────────────┐
│ GIT / GITHUB                                                          │
│ Git = fixed memory; GitHub = remote exchange/collaboration point       │
└──────────────────────────────────────────────────────────────────────┘
```

# 2. Минимальный контур MVP-0

```text
[Obsidian/Git]
      │ Build Context Working Set
      ▼
[Context Working Set]
      │ sent to Project Supervisor
      ▼
[Project Supervisor]
      │ produces task / review / constraints
      ▼
[Operating Chat]
      │ produces files + scripts + checks
      ▼
[Codex Review Pack]
      │ read by Codex
      ▼
[Codex]
      │ verifies feasibility / creates check report / suggests MVP task split
      ▼
[Human Review]
```

# 3. Каналы

```text
PROJECT INSTRUCTIONS     = stable behavior only
PROJECT RESOURCES        = stable baseline resources after QA / approval
CURRENT PROJECT CHAT     = dynamic Context Working Sets and sprint prompts
OBSIDIAN/GIT ONLY        = files, traces, review packs, daily registers
```

# 4. Главный вопрос к Codex

```text
Can Codex + MCP operate this bounded layer:
read local repo, understand manifest, check markers, run checks,
produce patch/report, and avoid commit/canonization without Human Approval?
```
