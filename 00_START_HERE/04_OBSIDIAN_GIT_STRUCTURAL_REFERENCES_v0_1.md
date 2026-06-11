# Wave 4 — Obsidian / Git Structural References v0.1

```yaml
artifact_id: WAVE4-OBSIDIAN-GIT-STRUCTURE-001
artifact_type: structural_reference
status: active_structural_reference_candidate
version: 0.1
source: WAVE4_ADVANCED_DELTA_IMPORT_REVIEW_v0_1
source_assets:
  - W4-ASSET-001
  - W4-ASSET-002
  - W4-ASSET-003
  - W4-ASSET-006
layer: start_here / structural_orientation
field_validated: false
execution_authorized: false
mvi_authorized: false
codex_authorized: false
```

---

# 0. Статус документа

Этот документ фиксирует структурные ориентиры для связки:

```text
Obsidian
+ Git
+ GitHub
```

в контуре IPaC.

Он импортирует из Wave 4 только безопасный структурный слой:

- Obsidian как человеко-машинный фронт живого знания;
- Git / GitHub как слой следа, версий и отката;
- Vault / import map как карта загрузки source-of-truth;
- Obsidian Canvas как припаркованная визуальная возможность.

Этот документ НЕ запускает:

- MVP;
- MVI;
- Codex;
- MCP;
- RAG / Neo4j;
- dashboard;
- automation;
- public channels;
- execution plan.

---

# 1. Назначение

Назначение документа — зафиксировать, какую роль выполняют Obsidian и Git в первом рабочем контуре IPaC.

Главная формула:

```text
Obsidian = пространственная инженерная карта.
Git = след, версия, откат.
GitHub = внешний удалённый контур хранения и передачи.
```

Этот документ не является каноном смысла, но является структурным ориентиром для работы с каноном, регистрами, trace, parking lot и будущими import batches.

---

# 2. Obsidian as Human Knowledge Front

## W4-ASSET-001 — Obsidian as semantic-graphic human front

Obsidian в IPaC — это не просто note-taking tool.

Obsidian выполняет роль:

```text
человеко-машинного интерфейса
для пространственной работы с живым знанием.
```

Он нужен для:

- чтения;
- навигации;
- удержания объёмной картины;
- перехода между каноном, регистрами, research, open questions, trace и parking lot;
- работы с проектом не через линейную ленту чата, а через инженерное поле.

Ключевое различение:

```text
Chat = место высечения искры.
Obsidian = место удержания объёмной картины.
```

Правило:

```text
Сложная смысловая система не должна удерживаться только в чате.
Она должна иметь пространственную внешнюю форму.
```

---

# 3. Git / GitHub as Versioned Memory and Trace Layer

## W4-ASSET-002 — Git / GitHub as versioned memory and trace layer

Git в IPaC — это не только инструмент программистов.

Git выполняет роль:

```text
версии,
следа,
истории изменений,
отката,
дисциплины изменения знания.
```

Git нужен для:

- фиксации канона;
- фиксации изменений правил;
- фиксации trace / decision records;
- контроля изменений Obsidian Vault;
- rollback при ошибках;
- отделения текущего состояния от истории.

GitHub нужен как:

- remote backup;
- внешний репозиторий;
- контур передачи;
- будущая точка интеграции с Codex / agents / review workflows.

Рабочая формула:

```text
Obsidian показывает.
Git фиксирует.
GitHub удерживает внешний след.
```

Правило:

```text
Если изменение важно для IPaC, оно должно получить commit.
```

---

# 4. Vault / Import Map for Boot Sources

## W4-ASSET-003 — Vault/import map for boot sources

IPaC Vault должен сохранять различие между:

- каноном;
- регистрами;
- research;
- open questions;
- project rules;
- parking lot;
- trace;
- source packages;
- import staging.

Source packages не должны смешиваться с каноном.

Правильная логика:

```text
source package
↓
review
↓
import decision
↓
Obsidian placement
↓
Git commit
↓
trace
```

Правило:

```text
Файл не становится каноном только потому, что он загружен в Vault.
```

Для импортов использовать шлюз:

```text
import_now
import_after_review
import_after_deep_research
park_for_later
archive_as_metaphor
reject_as_noise
```

---

# 5. Obsidian Canvas as Parked Visual Surface

## W4-ASSET-006 — Obsidian Canvas for Knowledge Clump dynamics

Obsidian Canvas может стать визуальной поверхностью для работы со знаниевыми сгустками.

Потенциальные роли Canvas:

- показывать связи между артефактами;
- показывать переход от living meaning к canon;
- отображать research gaps;
- показывать parking lot;
- использоваться для “полёта над картой”.

Но сейчас Canvas остаётся:

```text
parked visual capability
```

То есть возможность ценная, но не активная задача.

Правило:

```text
Canvas можно использовать как визуальную поддержку,
но нельзя превращать его в центр архитектуры IPaC.
```

Не делать сейчас:

- full Canvas system;
- dashboard;
- visual control center;
- public visual product;
- автоматическую генерацию графов;
- Neo4j / RAG / graph DB.

---

# 6. Current Vault Role

Текущий Obsidian Vault выполняет роль:

```text
IPaC Core Knowledge Base
```

Он хранит:

- Core Canon;
- Constitution;
- Lifecycle Map;
- Project Rules;
- Research Map;
- Open Questions;
- Validation Gaps;
- Parking Lot;
- Trace and Decisions;
- Source Packages;
- Wave 4 Import Staging;
- Templates.

Vault — это не архив и не свалка.

Vault — это:

```text
пространственная инженерная среда IPaC.
```

---

# 7. Current Git Role

Текущий Git / GitHub repo выполняет роль:

```text
versioned source-of-truth trace layer
```

Каждый важный шаг должен проходить цикл:

```text
Obsidian change
↓
git status
↓
git add
↓
git commit
↓
git push
↓
working tree clean
```

Git commit должен отвечать на вопрос:

```text
Что изменилось в смысловой / структурной системе IPaC?
```

Примеры commit types:

```text
canon:
rules:
trace:
research:
question:
parking:
docs:
archive:
```

---

# 8. Что запрещено

Этот структурный документ не разрешает:

- запуск MVP;
- запуск MVI;
- подключение Codex;
- подключение MCP;
- проектирование RAG / Neo4j;
- создание dashboard;
- автоматизацию n8n;
- публичные каналы;
- импорт всех advanced assets разом.

Он фиксирует только роли Obsidian / Git / GitHub в текущем контуре.

---

# 9. Placement

Рекомендуемое место хранения:

```text
00_START_HERE/04_OBSIDIAN_GIT_STRUCTURAL_REFERENCES_v0_1.md
```

Почему здесь:

```text
00_START_HERE
= навигационный и ориентационный слой Vault
```

Это не Core Canon и не Decision Record.

Это структурный ориентир, который помогает понять, как пользоваться Vault и Git.

Связанные документы:

```text
01_CANON/00_CORE_CANON/00_IPaC_CONSTITUTION_v0_1.md
01_CANON/00_CORE_CANON/01_LIFECYCLE_MAP_LIVING_MEANING_TO_UPDATED_CANON_v0_1.md
06_PROJECT_RULES/WAVE4_SAFE_PROJECT_RULES_v0_1.md
08_TRACE_AND_DECISIONS/reviews/WAVE4_ADVANCED_DELTA_IMPORT_REVIEW_v0_1.md
```

---

# 10. Git Commit Recommendation

Рекомендуемый commit:

```text
docs(obsidian): add Wave 4 Obsidian and Git structural references
```

---

# 11. Status

```text
status: active_structural_reference_candidate
execution_authorized: false
mvi_authorized: false
codex_authorized: false
field_validated: false
```
