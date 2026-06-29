# RULE_GATEWAY_L1_GIT_COMMITTED_WORKING_TOOL_v0_1
## Правило: Шлюз L1 + Git-проводка = рабочий инструмент

```yaml
artifact_id: RULE-GATEWAY-L1-GIT-COMMITTED-WORKING-TOOL-v0.1
artifact_type: project_rule_candidate
regulation_level: general_regulatory
status: Gateway_L1_Candidate
operational_status_after_git: L1 Git-Committed Working Tool
canon_status: not_canon
temporary_stable_status: not_assigned
created_at: 2026-06-29 19:03:01 Europe/Kiev
language: ru
term_policy: English term must include Russian translation in parentheses
scope: gateway discipline / rule promotion / Git fixation / working memory hygiene
human_decision: approved_for_L1_git_working_tool
```

---

## 1. Назначение

Это правило фиксирует общий регламент продвижения рабочих правил IPaC через Semantic Osmotic Gateway (смысловой осмотический шлюз), Git (Гит) и последующее использование как рабочего инструмента без преждевременной канонизации.

Правило создано для того, чтобы Supervisor (супервизор) не держал готовые рабочие правила в голове человека и не превращал review (рассмотрение) в бюрократическую петлю.

---

## 2. Главная формула

```text
Gateway L1 Candidate
(кандидат Шлюза L1)
+
Git commit
(Git-проводка)
=
L1 Git-Committed Working Tool
(рабочий инструмент Шлюза L1, проведённый через Git)
```

Git commit (Git-проводка) не делает правило canon (каноном).  
Git commit (Git-проводка) делает правило операционно применимым, отслеживаемым, откатываемым и снимает его с активной рабочей памяти человека.

---

## 3. Статусы

### 3.1. До Git-проводки

```yaml
status: Gateway_L1_Candidate
meaning: правило прошло первичную смысловую проверку, но ещё не зафиксировано в фиксирующей памяти
```

### 3.2. После Git-проводки

```yaml
status: L1 Git-Committed Working Tool
meaning: правило можно применять как рабочий инструмент текущего операционного процесса
```

### 3.3. Чего статус не означает

```yaml
not_implied:
  - canon
  - Temporary Stable
  - ADMITTED
  - final truth
  - irreversible doctrine
```

---

## 4. Лестница продвижения

```text
raw idea (сырая идея)
→ Gateway L1 Candidate (кандидат Шлюза L1)
→ L1 Git-Committed Working Tool (рабочий инструмент L1, проведённый через Git)
→ L2 Review Candidate (кандидат на рассмотрение L2)
→ L3 / ADMITTED / Temporary Stable / canon only by separate human decision
```

---

## 5. Условие проведения правила

Правило можно проводить как L1 Git-Committed Working Tool (рабочий инструмент L1, проведённый через Git), если выполнено:

```yaml
promotion_condition:
  meaning_is_clear: true
  blocking_content_objections: false
  status_declared: true
  path_declared: true
  human_approval_for_git: true
  no_canon_claim: true
```

---

## 6. Обязанность Supervisor (супервизора)

Supervisor (супервизор) обязан:

1. отличать рабочую фиксацию от канонизации;
2. не тормозить готовое правило бесконечными проверками;
3. проводить готовый рабочий инструмент через Git (Гит), если человек дал решение;
4. не использовать `git add .` без объявленного transaction scope (объёма транзакции);
5. после проводки убрать правило из активной памяти человека;
6. возвращаться к правилу только по trigger (триггеру): сбой, противоречие, улучшение, L2 review (рассмотрение L2), human decision (человеческое решение).

---

## 7. Закрывающая формула

```text
Смысл проверен.
Статус указан.
Человек разрешил проведение.
Файл размещён.
Git-проводка выполнена.
Хвост закрыт.
Правило работает.
```

---

## 8. Canon guard (предохранитель канона)

Это правило не является canon (каноном).  
Это правило является рабочим инструментом Шлюза L1 после Git-проводки.

Повышение до Temporary Stable (временно зафиксированного стабильняка), ADMITTED (допущенного) или canon (канона) требует отдельного review (рассмотрения), decision (решения), human approval (человеческого одобрения) и отдельной Git-проводки.
