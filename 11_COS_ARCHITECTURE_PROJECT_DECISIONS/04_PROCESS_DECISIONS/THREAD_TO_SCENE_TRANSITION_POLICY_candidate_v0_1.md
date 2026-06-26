# Thread-to-Scene Transition Policy v0.1
## Политика перехода от треда к сценам

```yaml
artifact_id: THREAD-TO-SCENE-TRANSITION-POLICY-2026-06-24-v0.1
artifact_type: process_policy_candidate
status: candidate
canon_status: not_canon
parent_artifact: STRATEGIC_REFRAME_THREAD_TO_SCENE_AGENTIC_WORK_candidate_v0_1.md
project: IPaC_NIR_SEMANTIC_OS
created: 2026-06-24
```

---

# 1. Назначение

Thread-to-Scene Transition Policy (политика перехода от треда к сценам) определяет, как из Browser Thread (браузерного треда) выделять Scene Candidate (кандидаты сцен), Context Page (страницы контекста), Task Pack (пакеты задач) и Agent Brief (брифы агентов), не теряя Mainline (магистральную линию).

---

# 2. Основной принцип

```text
Thread (тред) рождает смысл.
Scene (сцена) исполняет смысл.

Thread (тред) растёт линейно.
Scene (сцена) проектируется, исполняется, проверяется и закрывается.
```

---

# 3. Routing Decision (решение маршрутизации)

Каждый значимый фрагмент Thread (треда) должен быть классифицирован:

```text
1. Mainline (магистраль)
   Продолжаем целевую тему.

2. Branch (ветка)
   Называем, паркуем, возвращаемся к Mainline (магистрали).

3. Scene Candidate (кандидат сцены)
   Оформляем как будущую Scene (сцену).

4. Context Page (страница контекста)
   Отчуждаем как memory page (страницу памяти) для подкачки.

5. Task Pack (пакет задач)
   Готовим для Codex (Кодекса), Claude (Клода), Antigravity (АнтиГравити)
   или другого agentic executor (агентного исполнителя).

6. Agent Brief (бриф агента)
   Описываем роль, входы, выходы, ограничения и критерии проверки.
```

---

# 4. Запреты

```text
- не разворачивать каждую интересную ветку сразу;
- не смешивать Branch (ветку) и Mainline (магистраль);
- не считать Browser Thread (браузерный тред) конечной средой;
- не выполнять Git commit (Git-проводку) без Human Approval (человеческого одобрения);
- не объявлять Scene Candidate (кандидат сцены) готовой Scene (сценой) без QA (контроля качества).
```

---

# 5. Completion Criteria (критерии завершения)

Переход от Thread (треда) к Scene (сцене) считается оформленным, если:

```text
[PASS] Scene Candidate (кандидат сцены) имеет цель;
[PASS] определены роли;
[PASS] определены input context pages (входные страницы контекста);
[PASS] указан forbidden noise (запрещённый шум);
[PASS] указан ожидаемый output (выход);
[PASS] указан verification method (метод проверки);
[PASS] не нарушен статус candidate (кандидат), not_canon (не канон).
```
